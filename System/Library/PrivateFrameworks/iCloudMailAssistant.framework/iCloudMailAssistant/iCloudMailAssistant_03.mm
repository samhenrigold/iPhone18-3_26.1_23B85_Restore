unint64_t sub_2148E1808()
{
  result = qword_27CA1B480;
  if (!qword_27CA1B480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1B478, &qword_214995780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B480);
  }

  return result;
}

unint64_t sub_2148E1884()
{
  result = qword_27CA1B490;
  if (!qword_27CA1B490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1ABA0, &qword_214993E20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B490);
  }

  return result;
}

unint64_t sub_2148E1900()
{
  result = qword_27CA1B4A8;
  if (!qword_27CA1B4A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1B4A0, &unk_214995788);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B4A8);
  }

  return result;
}

unint64_t sub_2148E197C()
{
  result = qword_27CA1B4B8;
  if (!qword_27CA1B4B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1A378, &qword_214993B80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B4B8);
  }

  return result;
}

unint64_t sub_2148E19F8()
{
  result = qword_27CA1B4D8;
  if (!qword_27CA1B4D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1B4D0, &qword_214995798);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B4D8);
  }

  return result;
}

void sub_2148E1A74(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    v5 = type metadata accessor for URLParameter(0, a3, a4, a4);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_2148E1AC4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2148E1B0C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TapToRadarDraft.Classification(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TapToRadarDraft.Classification(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OBKLiftUIContentItem.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for OBKLiftUIContentItem.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TapToRadarDraft.AutoDiagnostics(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TapToRadarDraft.AutoDiagnostics(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2148E1F98(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2148E2018(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
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

  v9 = ((v6 + 16) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
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
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
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

void sub_2148E219C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v10 = ((v9 + 16) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
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
LABEL_46:
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
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
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
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 16] & ~v9;

    v19(v20);
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

unint64_t sub_2148E23EC()
{
  result = qword_27CA1B570;
  if (!qword_27CA1B570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B570);
  }

  return result;
}

unint64_t sub_2148E2444()
{
  result = qword_27CA1B578;
  if (!qword_27CA1B578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B578);
  }

  return result;
}

unint64_t sub_2148E249C()
{
  result = qword_27CA1B580;
  if (!qword_27CA1B580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B580);
  }

  return result;
}

unint64_t sub_2148E24F4()
{
  result = qword_27CA1B588;
  if (!qword_27CA1B588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B588);
  }

  return result;
}

unint64_t sub_2148E2570(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_21498FEC0();

    for (i = (a1 + 80); ; i += 7)
    {
      v7 = *(i - 5);
      v8 = *(i - 4);
      v9 = *(i - 3);
      v10 = *(i - 2);
      v11 = *(i - 1);
      v12 = *i;
      *&v20 = *(i - 6);
      *(&v20 + 1) = v7;
      *&v21 = v8;
      *(&v21 + 1) = v9;
      *&v22 = v10;
      *(&v22 + 1) = v11;

      sub_21489B6F8(v10, v11);

      result = sub_2149080EC(&v20);
      if (v14)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = (v5[6] + 48 * result);
      v16 = v21;
      *v15 = v20;
      v15[1] = v16;
      v15[2] = v22;
      *(v5[7] + 8 * result) = v12;
      v17 = v5[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v5[2] = v19;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_2148E26AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_2148E26F8(uint64_t a1, uint64_t *a2)
{
  v34 = a2;
  v29 = type metadata accessor for MATipDismissal(0);
  v4 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v6 = (&v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (!v7)
  {
    return v8;
  }

  v28 = v2;
  v35 = MEMORY[0x277D84F90];
  sub_2148A9C5C(0, v7, 0);
  v9 = 0;
  v8 = v35;
  v10 = *(v4 + 80);
  v31 = v7;
  v32 = (v10 + 32) & ~v10;
  v33 = a1 + v32;
  v11 = *(v4 + 72);
  v30 = v11;
  while (1)
  {
    sub_2148E5F5C(v33 + v11 * v9, v6, type metadata accessor for MATipDismissal);
    v12 = *v34;
    if (*(*v34 + 16))
    {
      break;
    }

LABEL_16:
    v35 = v8;
    v27 = *(v8 + 16);
    v26 = *(v8 + 24);
    if (v27 >= v26 >> 1)
    {
      sub_2148A9C5C((v26 > 1), v27 + 1, 1);
      v8 = v35;
    }

    ++v9;
    *(v8 + 16) = v27 + 1;
    sub_2148E6034(v6, v8 + v32 + v27 * v11, type metadata accessor for MATipDismissal);
    if (v9 == v7)
    {
      return v8;
    }
  }

  v14 = *v6;
  v13 = v6[1];
  sub_214990160();

  sub_21498F900();
  v15 = sub_214990190();
  v16 = -1 << *(v12 + 32);
  v17 = v15 & ~v16;
  if (((*(v12 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
  {
LABEL_12:

LABEL_15:
    v11 = v30;
    v7 = v31;
    goto LABEL_16;
  }

  v18 = ~v16;
  while (1)
  {
    v19 = (*(v12 + 48) + 16 * v17);
    v20 = *v19 == v14 && v19[1] == v13;
    if (v20 || (sub_214990080() & 1) != 0)
    {
      break;
    }

    v17 = (v17 + 1) & v18;
    if (((*(v12 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  v22 = *(v29 + 24);
  v23 = *(v6 + v22);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (!v24)
  {
    *(v6 + v22) = v25;
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_2148E299C()
{
  type metadata accessor for DataStoreActor();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_281194E50 = v0;
  return result;
}

uint64_t sub_2148E29D8()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2148E2A4C()
{
  if (qword_281191B88 != -1)
  {
    swift_once();
  }
}

uint64_t sub_2148E2AA8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DataStoreActor();

  return MEMORY[0x2822005F8](v3, a2);
}

uint64_t sub_2148E2AE0()
{
  v0 = sub_21498F760();
  __swift_allocate_value_buffer(v0, qword_281194E58);
  __swift_project_value_buffer(v0, qword_281194E58);
  return sub_21498F770();
}

uint64_t sub_2148E2B7C@<X0>(uint64_t *a1@<X0>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_2148E5E60(&qword_281191F48, 255, type metadata accessor for MailCleanupSchemaV1.DataModel, &unk_214995CA4);
  sub_21498E3D0();

  swift_getKeyPath();
  sub_2148E5E60(&qword_281191F50, 255, type metadata accessor for MailCleanupSchemaV1.DataModel, &unk_214995D60);
  sub_21498F6A0();

  *a3 = v5;
  a3[1] = v6;
  return result;
}

uint64_t sub_2148E2CAC(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  sub_2148E5E60(&qword_281191F48, 255, type metadata accessor for MailCleanupSchemaV1.DataModel, &unk_214995CA4);
  sub_21498E3C0();
}

uint64_t sub_2148E2D84(uint64_t a1)
{
  swift_getKeyPath();
  sub_2148E5E60(&qword_281191F48, 255, type metadata accessor for MailCleanupSchemaV1.DataModel, &unk_214995CA4);
  sub_21498E3D0();

  swift_getKeyPath();
  sub_2148E5E60(&qword_281191F50, 255, type metadata accessor for MailCleanupSchemaV1.DataModel, &unk_214995D60);
  sub_21498F6A0();

  return v1;
}

uint64_t sub_2148E2EA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  sub_2148E5E60(&qword_281191F50, 255, type metadata accessor for MailCleanupSchemaV1.DataModel, &unk_214995D60);
  sub_21498F6B0();
}

uint64_t sub_2148E2F5C()
{
  swift_getKeyPath();
  sub_2148E5E60(&qword_281191F48, 255, type metadata accessor for MailCleanupSchemaV1.DataModel, &unk_214995CA4);
  sub_21498E3D0();

  swift_getKeyPath();
  sub_2148E5E60(&qword_281191F50, 255, type metadata accessor for MailCleanupSchemaV1.DataModel, &unk_214995D60);
  sub_2148E5E60(&qword_281192040, 255, type metadata accessor for MailCleanupState, &protocol conformance descriptor for MailCleanupState);
  sub_21498F6A0();
}

uint64_t sub_2148E30A0(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for MailCleanupState(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2148E5F5C(a1, v6, type metadata accessor for MailCleanupState);
  v7 = *a2;
  v12 = v7;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  sub_2148E5E60(&qword_281191F48, 255, type metadata accessor for MailCleanupSchemaV1.DataModel, &unk_214995CA4);
  sub_21498E3C0();

  return sub_2148E5E04(v6);
}

uint64_t sub_2148E31E0()
{
  swift_getKeyPath();
  sub_2148E5E60(&qword_281191F48, 255, type metadata accessor for MailCleanupSchemaV1.DataModel, &unk_214995CA4);
  sub_21498E3D0();

  swift_getKeyPath();
  sub_2148E5E60(&qword_281191F50, 255, type metadata accessor for MailCleanupSchemaV1.DataModel, &unk_214995D60);
  sub_2148E5E60(&qword_281192040, 255, type metadata accessor for MailCleanupState, &protocol conformance descriptor for MailCleanupState);
  sub_21498F6A0();
}

uint64_t sub_2148E3324(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_2148E5E60(&qword_281191F50, 255, type metadata accessor for MailCleanupSchemaV1.DataModel, &unk_214995D60);
  sub_2148E5E60(&qword_281192048, 255, type metadata accessor for MailCleanupState, &protocol conformance descriptor for MailCleanupState);
  sub_21498F6B0();
}

uint64_t sub_2148E3404()
{
  v1 = v0;
  v28 = type metadata accessor for MailCleanupState(0);
  v2 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v26 = (&v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B5F8, &qword_214995ED0);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA1B600, &qword_214995ED8);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v27 = (&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v25 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v25 - v14;
  v16 = OBJC_IVAR____TtCO19iCloudMailAssistant19MailCleanupSchemaV19DataModel_persistedState;
  swift_beginAccess();
  sub_2148E5FC4(v1 + v16, v15);
  v29 = v1;
  swift_getKeyPath();
  sub_2148E5E60(&qword_281191F48, 255, type metadata accessor for MailCleanupSchemaV1.DataModel, &unk_214995CA4);
  sub_21498E3D0();

  swift_getKeyPath();
  sub_2148E5E60(&qword_281191F50, 255, type metadata accessor for MailCleanupSchemaV1.DataModel, &unk_214995D60);
  sub_2148E5E60(&qword_281192040, 255, type metadata accessor for MailCleanupState, &protocol conformance descriptor for MailCleanupState);
  sub_21498F6A0();

  v17 = v28;
  (*(v2 + 56))(v13, 0, 1, v28);
  v18 = *(v5 + 56);
  sub_2148E5FC4(v15, v7);
  sub_2148E5FC4(v13, &v7[v18]);
  v19 = *(v2 + 48);
  if (v19(v7, 1, v17) != 1)
  {
    v21 = v27;
    sub_2148E5FC4(v7, v27);
    if (v19(&v7[v18], 1, v17) != 1)
    {
      v22 = v26;
      sub_2148E6034(&v7[v18], v26, type metadata accessor for MailCleanupState);
      v23 = _s19iCloudMailAssistant0B12CleanupStateV2eeoiySbAC_ACtFZ_0(v21, v22);
      sub_2148E5E04(v22);
      sub_21489DFCC(v13, &unk_27CA1B600, &qword_214995ED8);
      sub_21489DFCC(v15, &unk_27CA1B600, &qword_214995ED8);
      sub_2148E5E04(v21);
      sub_21489DFCC(v7, &unk_27CA1B600, &qword_214995ED8);
      v20 = !v23;
      return v20 & 1;
    }

    sub_21489DFCC(v13, &unk_27CA1B600, &qword_214995ED8);
    sub_21489DFCC(v15, &unk_27CA1B600, &qword_214995ED8);
    sub_2148E5E04(v21);
    goto LABEL_6;
  }

  sub_21489DFCC(v13, &unk_27CA1B600, &qword_214995ED8);
  sub_21489DFCC(v15, &unk_27CA1B600, &qword_214995ED8);
  if (v19(&v7[v18], 1, v17) != 1)
  {
LABEL_6:
    sub_21489DFCC(v7, &qword_27CA1B5F8, &qword_214995ED0);
    v20 = 1;
    return v20 & 1;
  }

  sub_21489DFCC(v7, &unk_27CA1B600, &qword_214995ED8);
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_2148E38CC(uint64_t a1, uint64_t *a2)
{
  v16 = a2;
  v3 = type metadata accessor for MailCleanupState(0);
  v4 = v3 - 8;
  v5 = MEMORY[0x28223BE20](v3);
  v7 = (&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v9 = (&v15 - v8);
  v17 = a1;
  swift_getKeyPath();
  v15 = sub_2148E5E60(&qword_281191F48, 255, type metadata accessor for MailCleanupSchemaV1.DataModel, &unk_214995CA4);
  sub_21498E3D0();

  swift_getKeyPath();
  sub_2148E5E60(&qword_281191F50, 255, type metadata accessor for MailCleanupSchemaV1.DataModel, &unk_214995D60);
  sub_2148E5E60(&qword_281192040, 255, type metadata accessor for MailCleanupState, &protocol conformance descriptor for MailCleanupState);
  sub_21498F6A0();

  sub_2148E5F5C(v7, v9, type metadata accessor for MailCleanupState);
  v10 = *(v4 + 32);
  v11 = sub_2148E26F8(*(v9 + v10), v16);
  v16 = 0;

  *(v9 + v10) = v11;
  sub_2148E5E04(v7);
  v17 = a1;
  swift_getKeyPath();
  sub_21498E3D0();

  swift_getKeyPath();
  sub_21498F6A0();

  v12 = _s19iCloudMailAssistant0B12CleanupStateV2eeoiySbAC_ACtFZ_0(v7, v9);
  sub_2148E5E04(v7);
  if (!v12)
  {
    sub_2148E5F5C(v9, v7, type metadata accessor for MailCleanupState);
    v17 = a1;
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v15 - 2) = a1;
    *(&v15 - 1) = v7;
    sub_21498E3C0();

    sub_2148E5E04(v7);
    sub_2148E3F20();
  }

  return sub_2148E5E04(v9);
}

uint64_t sub_2148E3C1C(void (*a1)(uint64_t *), uint64_t a2)
{
  v3 = v2;
  v13 = a2;
  v14 = a1;
  v4 = type metadata accessor for MailCleanupState(0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v9 = (&v13 - v8);
  v15 = v2;
  swift_getKeyPath();
  sub_2148E5E60(&qword_281191F48, 255, type metadata accessor for MailCleanupSchemaV1.DataModel, &unk_214995CA4);
  sub_21498E3D0();

  swift_getKeyPath();
  sub_2148E5E60(&qword_281191F50, 255, type metadata accessor for MailCleanupSchemaV1.DataModel, &unk_214995D60);
  sub_2148E5E60(&qword_281192040, 255, type metadata accessor for MailCleanupState, &protocol conformance descriptor for MailCleanupState);
  sub_21498F6A0();

  v14(v7);
  sub_2148E5E04(v7);
  v15 = v2;
  swift_getKeyPath();
  sub_21498E3D0();

  swift_getKeyPath();
  sub_21498F6A0();

  v10 = _s19iCloudMailAssistant0B12CleanupStateV2eeoiySbAC_ACtFZ_0(v7, v9);
  sub_2148E5E04(v7);
  if (!v10)
  {
    sub_2148E5F5C(v9, v7, type metadata accessor for MailCleanupState);
    v15 = v3;
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v13 - 2) = v3;
    *(&v13 - 1) = v7;
    sub_21498E3C0();

    sub_2148E5E04(v7);
    sub_2148E3F20();
  }

  return sub_2148E5E04(v9);
}

uint64_t sub_2148E3F20()
{
  v1 = type metadata accessor for MailCleanupState(0);
  result = MEMORY[0x28223BE20](v1 - 8);
  v4 = v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 16) < 1)
  {
    if ((*(v0 + 25) & 1) == 0)
    {
      *(v0 + 25) = 1;
    }

    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v5[1] = v0;
      swift_getKeyPath();
      sub_2148E5E60(&qword_281191F48, 255, type metadata accessor for MailCleanupSchemaV1.DataModel, &unk_214995CA4);
      sub_21498E3D0();

      swift_getKeyPath();
      sub_2148E5E60(&qword_281191F50, 255, type metadata accessor for MailCleanupSchemaV1.DataModel, &unk_214995D60);
      sub_2148E5E60(&qword_281192040, 255, type metadata accessor for MailCleanupState, &protocol conformance descriptor for MailCleanupState);
      sub_21498F6A0();

      sub_21496C824(v4);
      swift_unknownObjectRelease();
      return sub_2148E5E04(v4);
    }
  }

  else
  {
    *(v0 + 24) = 1;
  }

  return result;
}

uint64_t sub_2148E4100()
{
  v1 = type metadata accessor for MailCleanupState(0);
  v2 = MEMORY[0x28223BE20](v1);
  v4 = (v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x28223BE20](v2);
  v7 = (v13 - v6);
  if ((*(v0 + 25) & 1) == 0)
  {
    v13[1] = v0;
    swift_getKeyPath();
    sub_2148E5E60(&qword_281191F48, 255, type metadata accessor for MailCleanupSchemaV1.DataModel, &unk_214995CA4);
    sub_21498E3D0();

    swift_getKeyPath();
    sub_2148E5E60(&qword_281191F50, 255, type metadata accessor for MailCleanupSchemaV1.DataModel, &unk_214995D60);
    sub_2148E5E60(&qword_281192040, 255, type metadata accessor for MailCleanupState, &protocol conformance descriptor for MailCleanupState);
    sub_21498F6A0();

    v8 = MEMORY[0x277D84F90];
    *v4 = MEMORY[0x277D84F90];
    v9 = v1[5];
    v10 = sub_21498E320();
    v11 = *(*(v10 - 8) + 56);
    v11(v4 + v9, 1, 1, v10);
    *(v4 + v1[6]) = v8;
    *(v4 + v1[7]) = 2;
    *(v4 + v1[8]) = 2;
    *(v4 + v1[9]) = 3;
    v11(v4 + v1[10], 1, 1, v10);
    *(v4 + v1[11]) = v8;
    *(v4 + v1[12]) = v8;
    v11(v4 + v1[13], 1, 1, v10);
    *(v4 + v1[14]) = v8;
    v12 = (v4 + v1[15]);
    *v12 = 0;
    v12[1] = 0;
    v11(v4 + v1[16], 1, 1, v10);
    LOBYTE(v10) = _s19iCloudMailAssistant0B12CleanupStateV2eeoiySbAC_ACtFZ_0(v7, v4);
    sub_2148E5E04(v4);
    result = sub_2148E5E04(v7);
    if ((v10 & 1) == 0)
    {
      return sub_2148E3F20();
    }
  }

  return result;
}

uint64_t sub_2148E43F0(__int128 *a1)
{
  v2 = v1;
  v24 = a1;
  v3 = type metadata accessor for MailCleanupState(0);
  v23 = *(v3 - 1);
  MEMORY[0x28223BE20](v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_21498E380();
  v6 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (v1 + OBJC_IVAR____TtCO19iCloudMailAssistant19MailCleanupSchemaV19DataModel___backingData);
  v10 = type metadata accessor for MailCleanupSchemaV1.DataModel(0);
  v9[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B5E8, &unk_214995EC0);
  v11 = sub_2148E5E60(&qword_281191F50, 255, type metadata accessor for MailCleanupSchemaV1.DataModel, &unk_214995D60);
  v25 = v10;
  v26 = v10;
  v27 = v11;
  v28 = v11;
  v9[4] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(v9);
  sub_21498F660();
  __swift_project_boxed_opaque_existential_1(v9, v9[3]);
  swift_getKeyPath();
  v25 = 0;
  v26 = 0xE000000000000000;
  sub_21498F5C0();

  sub_21498E370();
  v12 = sub_21498E360();
  v14 = v13;
  (*(v6 + 8))(v8, v22);
  __swift_project_boxed_opaque_existential_1(v9, v9[3]);
  swift_getKeyPath();
  v25 = v12;
  v26 = v14;
  sub_21498F5C0();

  v15 = MEMORY[0x277D84F90];
  *v5 = MEMORY[0x277D84F90];
  v16 = v3[5];
  v17 = sub_21498E320();
  v18 = *(*(v17 - 8) + 56);
  v18(&v5[v16], 1, 1, v17);
  *&v5[v3[6]] = v15;
  v5[v3[7]] = 2;
  v5[v3[8]] = 2;
  v5[v3[9]] = 3;
  v18(&v5[v3[10]], 1, 1, v17);
  *&v5[v3[11]] = v15;
  *&v5[v3[12]] = v15;
  v18(&v5[v3[13]], 1, 1, v17);
  *&v5[v3[14]] = v15;
  v19 = &v5[v3[15]];
  *v19 = 0;
  *(v19 + 1) = 0;
  v18(&v5[v3[16]], 1, 1, v17);
  __swift_project_boxed_opaque_existential_1(v9, v9[3]);
  swift_getKeyPath();
  sub_2148E5E60(&qword_281192048, 255, type metadata accessor for MailCleanupState, &protocol conformance descriptor for MailCleanupState);
  sub_21498F5C0();

  sub_2148E5E04(v5);
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 40) = 0;
  swift_unknownObjectWeakInit();
  (*(v23 + 56))(v2 + OBJC_IVAR____TtCO19iCloudMailAssistant19MailCleanupSchemaV19DataModel_persistedState, 1, 1, v3);
  sub_21498E3E0();
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1(v9);
  sub_2148970B8(v24, v9);
  swift_endAccess();
  return v2;
}

uint64_t sub_2148E48D4()
{
  sub_2148E609C(v0 + 32);
  sub_21489DFCC(v0 + OBJC_IVAR____TtCO19iCloudMailAssistant19MailCleanupSchemaV19DataModel_persistedState, &unk_27CA1B600, &qword_214995ED8);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtCO19iCloudMailAssistant19MailCleanupSchemaV19DataModel___backingData));
  v1 = OBJC_IVAR____TtCO19iCloudMailAssistant19MailCleanupSchemaV19DataModel___observationRegistrar;
  v2 = sub_21498E3F0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MailCleanupSchemaV1.DataModel(uint64_t a1)
{
  result = qword_281191F20;
  if (!qword_281191F20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2148E49FC(uint64_t a1)
{
  sub_2148E4B04(319);
  if (v1 <= 0x3F)
  {
    sub_21498E3F0();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_2148E4B04(uint64_t a1)
{
  if (!qword_281191FD0)
  {
    type metadata accessor for MailCleanupState(255);
    v1 = sub_21498FCF0();
    if (!v2)
    {
      atomic_store(v1, &qword_281191FD0);
    }
  }
}

uint64_t sub_2148E4B7C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B5F0, &qword_21499DEA0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_214991720;
  v1 = type metadata accessor for MailCleanupSchemaV1.DataModel(0);
  v2 = sub_2148E5E60(&qword_281191F50, 255, type metadata accessor for MailCleanupSchemaV1.DataModel, &unk_214995D60);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  return v0;
}

uint64_t sub_2148E4C14@<X0>(uint64_t a1@<X8>)
{
  if (qword_281191F70 != -1)
  {
    swift_once();
  }

  v2 = sub_21498F760();
  v3 = __swift_project_value_buffer(v2, qword_281194E58);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2148E4CBC(__int128 *a1)
{
  type metadata accessor for MailCleanupSchemaV1.DataModel(0);
  v2 = swift_allocObject();
  sub_2148E43F0(a1);
  return v2;
}

uint64_t sub_2148E4D00@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCO19iCloudMailAssistant19MailCleanupSchemaV19DataModel___backingData;
  swift_beginAccess();
  return sub_2148994D0(v1 + v3, a1);
}

uint64_t sub_2148E4D58(__int128 *a1)
{
  v3 = OBJC_IVAR____TtCO19iCloudMailAssistant19MailCleanupSchemaV19DataModel___backingData;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + v3));
  sub_2148970B8(a1, v1 + v3);
  return swift_endAccess();
}

void (*sub_2148E4DC0(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x90uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtCO19iCloudMailAssistant19MailCleanupSchemaV19DataModel___backingData;
  *(v3 + 128) = v1;
  *(v3 + 136) = v5;
  swift_beginAccess();
  sub_2148994D0(v1 + v5, v4);
  return sub_2148E4E58;
}

void sub_2148E4E58(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 128);
  v3 = *(*a1 + 136);
  if (a2)
  {
    sub_2148994D0(*a1, v2 + 40);
    swift_beginAccess();
    __swift_destroy_boxed_opaque_existential_1((v4 + v3));
    sub_2148970B8((v2 + 40), v4 + v3);
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    swift_beginAccess();
    __swift_destroy_boxed_opaque_existential_1((v4 + v3));
    sub_2148970B8(v2, v4 + v3);
    swift_endAccess();
  }

  free(v2);
}

uint64_t sub_2148E4F1C()
{
  sub_214990160();
  type metadata accessor for MailCleanupSchemaV1.DataModel(0);
  sub_2148E5E60(&qword_281191F50, 255, type metadata accessor for MailCleanupSchemaV1.DataModel, &unk_214995D60);
  sub_21498F690();
  return sub_214990190();
}

uint64_t sub_2148E5004(uint64_t a1, uint64_t a2)
{
  sub_214990160();
  swift_getWitnessTable();
  sub_21498F690();
  return sub_214990190();
}

uint64_t sub_2148E506C()
{
  type metadata accessor for MailCleanupSchemaV1.DataModel(0);
  sub_2148E5E60(&qword_281191F50, 255, type metadata accessor for MailCleanupSchemaV1.DataModel, &unk_214995D60);
  return sub_21498F680();
}

uint64_t sub_2148E50EC(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212CAA0](v4, v5, a3, WitnessTable);
}

uint64_t sub_2148E5368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v34 = a6;
  v35 = a5;
  v32 = a3;
  v33 = a4;
  v31 = a2;
  v30 = a1;
  v8 = type metadata accessor for MailCleanupState(0);
  v29 = *(v8 - 1);
  MEMORY[0x28223BE20](v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_21498E380();
  v11 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = (v6 + OBJC_IVAR____TtCO19iCloudMailAssistant19MailCleanupSchemaV19DataModel___backingData);
  v15 = type metadata accessor for MailCleanupSchemaV1.DataModel(0);
  v14[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B5E8, &unk_214995EC0);
  v28 = type metadata accessor for MailCleanupSchemaV1.DataModel;
  v16 = sub_2148E5E60(&qword_281191F50, 255, type metadata accessor for MailCleanupSchemaV1.DataModel, &unk_214995D60);
  v42 = v15;
  v43 = v15;
  v44 = v16;
  v45 = v16;
  v14[4] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(v14);
  sub_21498F660();
  __swift_project_boxed_opaque_existential_1(v14, v14[3]);
  swift_getKeyPath();
  v42 = 0;
  v43 = 0xE000000000000000;
  sub_21498F5C0();

  sub_21498E370();
  v17 = sub_21498E360();
  v19 = v18;
  (*(v11 + 8))(v13, v27);
  __swift_project_boxed_opaque_existential_1(v14, v14[3]);
  swift_getKeyPath();
  v42 = v17;
  v43 = v19;
  sub_21498F5C0();

  v20 = MEMORY[0x277D84F90];
  *v10 = MEMORY[0x277D84F90];
  v21 = v8[5];
  v22 = sub_21498E320();
  v23 = *(*(v22 - 8) + 56);
  v23(&v10[v21], 1, 1, v22);
  *&v10[v8[6]] = v20;
  v10[v8[7]] = 2;
  v10[v8[8]] = 2;
  v10[v8[9]] = 3;
  v23(&v10[v8[10]], 1, 1, v22);
  *&v10[v8[11]] = v20;
  *&v10[v8[12]] = v20;
  v23(&v10[v8[13]], 1, 1, v22);
  *&v10[v8[14]] = v20;
  v24 = &v10[v8[15]];
  *v24 = 0;
  *(v24 + 1) = 0;
  v23(&v10[v8[16]], 1, 1, v22);
  __swift_project_boxed_opaque_existential_1(v14, v14[3]);
  swift_getKeyPath();
  sub_2148E5E60(&qword_281192048, 255, type metadata accessor for MailCleanupState, &protocol conformance descriptor for MailCleanupState);
  sub_21498F5C0();

  sub_2148E5E04(v10);
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *(v7 + 40) = 0;
  swift_unknownObjectWeakInit();
  (*(v29 + 56))(v7 + OBJC_IVAR____TtCO19iCloudMailAssistant19MailCleanupSchemaV19DataModel_persistedState, 1, 1, v8);
  sub_21498E3E0();
  v42 = v7;
  swift_getKeyPath();
  v39 = v7;
  v40 = v30;
  v41 = v31;
  sub_2148E5E60(&qword_281191F48, 255, v28, &unk_214995CA4);
  sub_21498E3C0();

  v42 = v7;
  swift_getKeyPath();
  v36 = v7;
  v37 = v32;
  v38 = v33;
  sub_21498E3C0();

  *(v7 + 40) = v34;
  swift_unknownObjectWeakAssign();
  return v7;
}

uint64_t sub_2148E595C()
{
  v0 = sub_21498E380();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B5D8, &qword_214995E38);
  v19[1] = 2 * *(*(sub_21498F750() - 8) + 72);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_214992710;
  swift_getKeyPath();
  v5 = MEMORY[0x277D837D0];
  v25 = MEMORY[0x277D837D0];
  v23 = 0;
  v24 = 0xE000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B5E0, &qword_214995E68);
  sub_21498F790();
  *(swift_allocObject() + 16) = xmmword_214991720;
  sub_21498F780();
  v6 = sub_21498F7A0();
  swift_allocObject();
  v7 = sub_21498F7B0();
  *(&v21 + 1) = v6;
  v22 = sub_2148E5E60(&qword_281190D80, 255, MEMORY[0x277CDD5E8], MEMORY[0x277CDD5E0]);
  *&v20 = v7;
  sub_21498F740();
  swift_getKeyPath();
  sub_21498E370();
  v8 = sub_21498E360();
  v10 = v9;
  (*(v1 + 8))(v3, v0);
  v25 = v5;
  v23 = v8;
  v24 = v10;
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  sub_21498F740();
  swift_getKeyPath();
  v11 = type metadata accessor for MailCleanupState(0);
  v25 = v11;
  v12 = __swift_allocate_boxed_opaque_existential_1(&v23);
  v13 = MEMORY[0x277D84F90];
  *v12 = MEMORY[0x277D84F90];
  v14 = v11[5];
  v15 = sub_21498E320();
  v16 = *(*(v15 - 8) + 56);
  v16(v12 + v14, 1, 1, v15);
  *(v12 + v11[6]) = v13;
  *(v12 + v11[7]) = 2;
  *(v12 + v11[8]) = 2;
  *(v12 + v11[9]) = 3;
  v16(v12 + v11[10], 1, 1, v15);
  *(v12 + v11[11]) = v13;
  *(v12 + v11[12]) = v13;
  v16(v12 + v11[13], 1, 1, v15);
  *(v12 + v11[14]) = v13;
  v17 = (v12 + v11[15]);
  *v17 = 0;
  v17[1] = 0;
  v16(v12 + v11[16], 1, 1, v15);
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  sub_21498F740();
  return v4;
}

uint64_t sub_2148E5E04(uint64_t a1)
{
  v2 = type metadata accessor for MailCleanupState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2148E5E60(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_2148E5F5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2148E5FC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA1B600, &qword_214995ED8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2148E6034(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for BusinessLogoView(uint64_t a1)
{
  result = qword_27CA1B628;
  if (!qword_27CA1B628)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2148E6180(uint64_t a1)
{
  sub_2148E63B0();
  if (v1 <= 0x3F)
  {
    sub_2148E6460(319, &qword_27CA1B640, &qword_27CA1B610, &qword_214995EF0, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_2148E6408(319);
      if (v3 <= 0x3F)
      {
        sub_2148E6460(319, &qword_27CA1B650, &qword_27CA1A668, &qword_2149926D8, MEMORY[0x277D83940]);
        if (v4 <= 0x3F)
        {
          sub_21498E6A0();
          if (v5 <= 0x3F)
          {
            sub_2148B0744(319);
            if (v6 <= 0x3F)
            {
              sub_214899B90(319, &qword_27CA1B670, 0x277CF3618);
              if (v7 <= 0x3F)
              {
                sub_214899B90(319, &qword_27CA1B678, 0x277CBDAB8);
                if (v8 <= 0x3F)
                {
                  sub_214899B90(319, &qword_27CA1B680, 0x277CBEA78);
                  if (v9 <= 0x3F)
                  {
                    sub_214899B90(319, &qword_27CA1B688, 0x277CBDBD0);
                    if (v10 <= 0x3F)
                    {
                      sub_2148E6460(319, &qword_27CA1B690, &qword_27CA1B698, &qword_214995F40, MEMORY[0x277CE10B8]);
                      if (v11 <= 0x3F)
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
    }
  }
}

void sub_2148E63B0()
{
  if (!qword_27CA1B638)
  {
    v0 = sub_21498E770();
    if (!v1)
    {
      atomic_store(v0, &qword_27CA1B638);
    }
  }
}

void sub_2148E6408(uint64_t a1)
{
  if (!qword_27CA1B648)
  {
    sub_21498E7D0();
    v1 = sub_21498FA30();
    if (!v2)
    {
      atomic_store(v1, &qword_27CA1B648);
    }
  }
}

void sub_2148E6460(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_2148E64D0()
{
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

uint64_t sub_2148E65B0(uint64_t a1)
{
  sub_21498F900();
}

uint64_t sub_2148E667C(uint64_t a1)
{
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

unint64_t sub_2148E6758@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2148EAD68(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2148E6788(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0xE400000000000000;
  v6 = 1701667182;
  v7 = 0xEB00000000726564;
  v8 = 0x6C6F686563616C70;
  if (v2 != 3)
  {
    v8 = 0x646F4D6567616D69;
    v7 = 0xEE00737265696669;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6C69616D65;
    v3 = 0xE500000000000000;
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

uint64_t sub_2148E6824()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 1701667182;
  v4 = 0x6C6F686563616C70;
  if (v1 != 3)
  {
    v4 = 0x646F4D6567616D69;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6C69616D65;
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

unint64_t sub_2148E68BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2148EAD68(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2148E68E4(uint64_t a1)
{
  v2 = sub_2148EB2F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2148E6920(uint64_t a1)
{
  v2 = sub_2148EB2F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2148E695C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for BusinessLogoView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA1B618, qword_214995EF8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v23 - v8;
  if (*(v1 + *(v4 + 40)))
  {
    v23 = v5;
    v24 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    v25 = a1;

    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B610, &qword_214995EF0);
    sub_21498E750();

    v11 = v26;
    v12 = v27;
    sub_2148AA824(v1 + *(v4 + 24), v9, &unk_27CA1B618, qword_214995EF8);
    v13 = *(v10 - 8);
    if ((*(v13 + 48))(v9, 1, v10) == 1)
    {
      sub_21489DFCC(v9, &unk_27CA1B618, qword_214995EF8);
      v14 = 0;
      v15 = 0;
    }

    else
    {

      sub_21498E750();

      (*(v13 + 8))(v9, v10);
      v14 = v26;
      v15 = v27;
    }

    v16 = v25;
    sub_2148E6D1C(v2, v11, v12, v14, v15, v25);
    v17 = v24;
    sub_2148EA984(v2, v24);
    v18 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = v11;
    *(v19 + 24) = v12;
    sub_2148EA9E8(v17, v19 + v18);
    v20 = (v19 + ((v6 + v18 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v20 = v14;
    v20[1] = v15;
    v21 = (v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B6C8, &unk_214996078) + 36));
    sub_21498EC30();
    result = sub_21498FAC0();
    *v21 = &unk_214996070;
    v21[1] = v19;
  }

  else
  {
    sub_21498E8C0();
    sub_2148EB734(&qword_27CA1A858, MEMORY[0x277D23330], MEMORY[0x277D233A0]);
    result = sub_21498ED10();
    __break(1u);
  }

  return result;
}

uint64_t sub_2148E6D1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v54 = a5;
  v55 = a3;
  v51 = a4;
  v52 = a2;
  v57 = a6;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B700, &qword_2149960C0);
  MEMORY[0x28223BE20](v53);
  v8 = (&v46 - v7);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B708, &qword_2149960C8);
  MEMORY[0x28223BE20](v56);
  v10 = &v46 - v9;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B710, &qword_2149960D0);
  MEMORY[0x28223BE20](v58);
  v12 = &v46 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B718, &qword_2149960D8);
  MEMORY[0x28223BE20](v13);
  v15 = (&v46 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B720, &qword_2149960E0);
  MEMORY[0x28223BE20](v16);
  v18 = &v46 - v17;
  v19 = type metadata accessor for BusinessLogoView(0);
  v60 = *(a1 + v19[15]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B6D8, &qword_214996088);
  sub_21498F410();
  if (v59)
  {
    v20 = v59;
    sub_21498F3C0();
    v21 = sub_21498F3D0();

    *v15 = v21;
    swift_storeEnumTagMultiPayload();
    sub_2148EB234();

    sub_21498EE90();
    sub_2148AA824(v18, v12, &qword_27CA1B720, &qword_2149960E0);
    swift_storeEnumTagMultiPayload();
    sub_21498E6A0();
    sub_2148EB1A8();
    sub_2148EB734(&qword_27CA1AD60, MEMORY[0x277D231A8], MEMORY[0x277D231A0]);
    sub_21498EE90();

    v22 = v18;
    v23 = &qword_27CA1B720;
    v24 = &qword_2149960E0;
  }

  else
  {
    v48 = v13;
    v49 = v10;
    v50 = v16;
    v25 = v55;
    if (!v55)
    {
      v34 = v19[9];
      v35 = sub_21498E6A0();
      (*(*(v35 - 8) + 16))(v12, a1 + v34, v35);
      swift_storeEnumTagMultiPayload();
      sub_2148EB1A8();
      sub_2148EB734(&qword_27CA1AD60, MEMORY[0x277D231A8], MEMORY[0x277D231A0]);
      return sub_21498EE90();
    }

    v47 = v12;
    v26 = a1;
    if (v54)
    {
      v27 = v54;
      v46 = sub_214899B90(0, &qword_27CA1B6E0, 0x277CCACA8);

      v28 = sub_21498FCC0("%@ <%@>", 7, 2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A488, &qword_2149960A0);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_214991BE0;
      v30 = MEMORY[0x277D837D0];
      *(v29 + 56) = MEMORY[0x277D837D0];
      v31 = sub_2148A3FCC();
      v32 = v52;
      *(v29 + 32) = v51;
      *(v29 + 40) = v27;
      *(v29 + 96) = v30;
      *(v29 + 104) = v31;
      *(v29 + 64) = v31;
      *(v29 + 72) = v32;
      *(v29 + 80) = v25;

      v33 = sub_21498FCD0();
    }

    else
    {
      v33 = sub_21498F840();
    }

    v37 = v18;
    v38 = *(v26 + v19[13]);
    v55 = v33;
    v39 = [v38 objectForKey_];
    v40 = v15;
    if (v39)
    {
      v41 = v39;
      sub_21498F3C0();
      v42 = sub_21498F3D0();

      *v8 = v42;
      swift_storeEnumTagMultiPayload();
      sub_21498E6A0();
      sub_2148EB734(&qword_27CA1AD60, MEMORY[0x277D231A8], MEMORY[0x277D231A0]);

      v43 = v49;
      sub_21498EE90();
    }

    else
    {
      v44 = v19[9];
      v45 = sub_21498E6A0();
      (*(*(v45 - 8) + 16))(v8, v26 + v44, v45);
      swift_storeEnumTagMultiPayload();
      sub_2148EB734(&qword_27CA1AD60, MEMORY[0x277D231A8], MEMORY[0x277D231A0]);
      v43 = v49;
      sub_21498EE90();
    }

    sub_2148AA824(v43, v40, &qword_27CA1B708, &qword_2149960C8);
    swift_storeEnumTagMultiPayload();
    sub_2148EB234();
    sub_21498EE90();
    sub_2148AA824(v37, v47, &qword_27CA1B720, &qword_2149960E0);
    swift_storeEnumTagMultiPayload();
    sub_21498E6A0();
    sub_2148EB1A8();
    sub_2148EB734(&qword_27CA1AD60, MEMORY[0x277D231A8], MEMORY[0x277D231A0]);
    sub_21498EE90();

    sub_21489DFCC(v37, &qword_27CA1B720, &qword_2149960E0);
    v22 = v43;
    v23 = &qword_27CA1B708;
    v24 = &qword_2149960C8;
  }

  return sub_21489DFCC(v22, v23, v24);
}

uint64_t sub_2148E74E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  v6 = type metadata accessor for BusinessLogoView(0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v5[12] = *(v7 + 64);
  v5[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B6D0, &qword_2149916C0);
  v5[14] = swift_task_alloc();
  v5[15] = sub_21498FAB0();
  v5[16] = sub_21498FAA0();
  v9 = sub_21498FA50();

  return MEMORY[0x2822009F8](sub_2148E7628, v9, v8);
}

uint64_t sub_2148E7628()
{
  v1 = *(v0 + 48);

  if (v1)
  {
    v2 = *(v0 + 72);
    v3 = *(v0 + 48);
    if (v2)
    {
      v4 = *(v0 + 64);
      v5 = *(v0 + 40);
      sub_214899B90(0, &qword_27CA1B6E0, 0x277CCACA8);

      v6 = sub_21498FCC0("%@ <%@>", 7, 2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A488, &qword_2149960A0);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_214991BE0;
      v8 = MEMORY[0x277D837D0];
      *(v7 + 56) = MEMORY[0x277D837D0];
      v9 = sub_2148A3FCC();
      *(v7 + 32) = v4;
      *(v7 + 40) = v2;
      *(v7 + 96) = v8;
      *(v7 + 104) = v9;
      *(v7 + 64) = v9;
      *(v7 + 72) = v5;
      *(v7 + 80) = v3;

      v10 = sub_21498FCD0();
    }

    else
    {

      v10 = sub_21498F840();
    }

    v11 = *(v0 + 80);
    v12 = *(v0 + 56);
    v13 = [*(v12 + *(v11 + 52)) objectForKey_];
    *(v0 + 16) = *(v12 + *(v11 + 60));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B6D8, &qword_214996088);
    sub_21498F410();
    v14 = *(v0 + 32);
    if (v14)
    {

      v13 = v14;
    }

    else if (v13)
    {
    }

    else
    {
      v15 = *(v0 + 112);
      v17 = *(v0 + 96);
      v16 = *(v0 + 104);
      v18 = *(v0 + 88);
      v19 = *(v0 + 72);
      v32 = *(v0 + 64);
      v20 = *(v0 + 56);
      v31 = *(v0 + 40);
      v21 = sub_21498FAE0();
      (*(*(v21 - 8) + 56))(v15, 1, 1, v21);
      sub_2148EA984(v20, v16);

      v22 = sub_21498FAA0();
      v23 = (*(v18 + 80) + 32) & ~*(v18 + 80);
      v24 = (v17 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
      v25 = swift_allocObject();
      v26 = MEMORY[0x277D85700];
      *(v25 + 16) = v22;
      *(v25 + 24) = v26;
      sub_2148EA9E8(v16, v25 + v23);
      v27 = (v25 + v24);
      *v27 = v31;
      v27[1] = v3;
      v28 = (v25 + ((v24 + 23) & 0xFFFFFFFFFFFFFFF8));
      *v28 = v32;
      v28[1] = v19;
      sub_214926978(0, 0, v15, &unk_214996098, v25);

      v13 = v10;
    }
  }

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_2148E7944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  sub_21498FAB0();
  v8[7] = sub_21498FAA0();
  v10 = sub_21498FA50();

  return MEMORY[0x2822009F8](sub_2148E79E4, v10, v9);
}

uint64_t sub_2148E79E4()
{
  v1 = v0[6];
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[3];

  sub_2148E7A70(v4, v3, v2, v1);
  v5 = v0[1];

  return v5();
}

void sub_2148E7A70(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for BusinessLogoView(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a4;
  v29 = a3;
  if (a4)
  {
    sub_214899B90(0, &qword_27CA1B6E0, 0x277CCACA8);

    v26 = sub_21498FCC0("%@ <%@>", 7, 2);
    v27 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A488, &qword_2149960A0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_214991BE0;
    v15 = MEMORY[0x277D837D0];
    *(v14 + 56) = MEMORY[0x277D837D0];
    v16 = sub_2148A3FCC();
    *(v14 + 32) = a3;
    *(v14 + 40) = a4;
    *(v14 + 96) = v15;
    *(v14 + 104) = v16;
    *(v14 + 64) = v16;
    *(v14 + 72) = a1;
    *(v14 + 80) = a2;

    v17 = v26;
    v18 = sub_21498FCD0();

    v13 = v27;
  }

  else
  {
    v18 = sub_21498F840();
  }

  if (qword_27CA19FD8 != -1)
  {
    swift_once();
  }

  v19 = sub_21498E570();
  sub_2148EA984(v5, v13);
  v20 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v21 = (v12 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  sub_2148EA9E8(v13, v22 + v20);
  if (v19)
  {
    *(v22 + v21) = v18;
    v23 = v18;
    sub_2148E7E18(a1, a2, v29, v28, sub_2148EB040, v22);
  }

  else
  {
    v24 = (v22 + v21);
    *v24 = a1;
    v24[1] = a2;
    *(v22 + ((v21 + 23) & 0xFFFFFFFFFFFFFFF8)) = v18;

    v25 = v18;
    sub_2148EADB4(a1, a2, sub_2148EACBC, v22);
  }
}

void sub_2148E7D48(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for BusinessLogoView(0);
  v7 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B6D8, &qword_214996088);
  sub_21498F420();
  sub_21498F410();
  if (a1)
  {
    [*(a2 + *(v6 + 52)) setObject:a1 forKey:a3];
  }
}

void sub_2148E7E18(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v55 = a5;
  v56 = a6;
  v51 = a3;
  v57 = a2;
  v58 = sub_21498E690();
  v8 = *(v58 - 8);
  v9 = MEMORY[0x28223BE20](v58);
  v52 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v53 = &v48 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v48 = &v48 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v49 = &v48 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v50 = &v48 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v48 - v19;
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v21 = v58;
  v22 = __swift_project_value_buffer(v58, qword_281194E18);
  v23 = *(v8 + 16);
  v23(v20, v22, v21);
  v24 = sub_21498E670();
  v25 = sub_21498FBD0();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v54 = (v8 + 16);
    v27 = v26;
    *v26 = 0;
    _os_log_impl(&dword_21488E000, v24, v25, "Getting monogram...", v26, 2u);
    MEMORY[0x216059AC0](v27, -1, -1);
  }

  v54 = *(v8 + 8);
  v54(v20, v58);
  v28 = sub_2148E8850(a1, v57);
  v29 = v28;
  if (v28 >> 62)
  {
    if (sub_21498FE90())
    {
      goto LABEL_7;
    }

LABEL_15:
    v36 = v23;
    v37 = sub_2148E8C54(v51, a4, v29);

    if (!v37)
    {
      v42 = v48;
      v36(v48, v22, v58);
      v43 = sub_21498E670();
      v44 = sub_21498FBD0();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&dword_21488E000, v43, v44, "No contacts found", v45, 2u);
        MEMORY[0x216059AC0](v45, -1, -1);
      }

      v54(v42, v58);
      if (a4)
      {
        v46 = sub_21498F840();
      }

      else
      {
        v46 = 0;
      }

      v47 = sub_21498F840();
      v31 = [objc_opt_self() contactWithDisplayName:v46 emailOrPhoneNumber:v47];

      goto LABEL_13;
    }

    v38 = v49;
    v36(v49, v22, v58);
    v39 = sub_21498E670();
    v40 = sub_21498FBD0();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_21488E000, v39, v40, "Found a best match", v41, 2u);
      MEMORY[0x216059AC0](v41, -1, -1);
    }

    v54(v38, v58);
    sub_2148E8A2C(v37, v55, v56);

    return;
  }

  if (!*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_15;
  }

LABEL_7:
  if ((v29 & 0xC000000000000001) != 0)
  {
    v30 = MEMORY[0x216058EB0](0, v29);
    goto LABEL_10;
  }

  if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v30 = *(v29 + 32);
LABEL_10:
    v31 = v30;

    v32 = v50;
    v23(v50, v22, v58);
    v33 = sub_21498E670();
    v34 = sub_21498FBD0();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_21488E000, v33, v34, "Found a matching contact", v35, 2u);
      MEMORY[0x216059AC0](v35, -1, -1);
    }

    v54(v32, v58);
LABEL_13:
    sub_2148E8A2C(v31, v55, v56);

    return;
  }

  __break(1u);
}

void sub_2148E868C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    type metadata accessor for BusinessLogoView(0);
    v11 = a1;
    v8 = a1;
  }

  else
  {
    if (qword_27CA19FD8 != -1)
    {
      swift_once();
    }

    sub_21498E550();
    v9 = [objc_opt_self() mainScreen];
    [v9 scale];

    v10 = PKMapsIconForMerchantCategory();
    type metadata accessor for BusinessLogoView(0);
    v11 = v10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B6D8, &qword_214996088);
  sub_21498F420();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B6D8, &qword_214996088);
  sub_21498F410();
  if (v11)
  {
    [*(a2 + *(type metadata accessor for BusinessLogoView(0) + 52)) setObject:v11 forKey:a5];
  }
}

void *sub_2148E8850(uint64_t a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_self();
  v4 = sub_21498F840();
  v5 = [v3 predicateForContactsMatchingEmailAddress_];

  v6 = *(v2 + *(type metadata accessor for BusinessLogoView(0) + 48));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B6E8, &unk_2149960A8);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_214995EE0;
  *(v7 + 32) = [objc_opt_self() descriptorForRequiredKeys];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B6F8, &qword_2149960B8);
  v8 = sub_21498F9E0();

  v14[0] = 0;
  v9 = [v6 unifiedContactsMatchingPredicate:v5 keysToFetch:v8 error:v14];

  v10 = v14[0];
  if (v9)
  {
    sub_214899B90(0, &qword_27CA1B6F0, 0x277CBDA58);
    v3 = sub_21498F9F0();
    v11 = v10;
  }

  else
  {
    v12 = v14[0];
    sub_21498E100();

    swift_willThrow();
  }

  return v3;
}

void sub_2148E8A2C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_opt_self();
  v8 = [objc_opt_self() mainScreen];
  [v8 scale];
  v10 = v9;

  v11 = [v7 scopeWithPointSize:0 scale:0 strokeWidth:1 strokeColor:45.0 rightToLeft:45.0 style:{v10, 0.0}];
  v12 = *(v3 + *(type metadata accessor for BusinessLogoView(0) + 56));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B6E8, &unk_2149960A8);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_214995EE0;
  *(v13 + 32) = a1;
  sub_214899B90(0, &qword_27CA1B6F0, 0x277CBDA58);
  v14 = a1;
  v15 = sub_21498F9E0();

  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  v19[4] = sub_2148EB0DC;
  v19[5] = v16;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 1107296256;
  v19[2] = sub_2148E9B00;
  v19[3] = &block_descriptor_1;
  v17 = _Block_copy(v19);

  v18 = [v12 renderAvatarsForContacts:v15 scope:v11 imageHandler:v17];
  _Block_release(v17);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

id sub_2148E8C54(unint64_t a1, unint64_t a2, unint64_t a3)
{
  v5 = sub_21498E0E0();
  v6 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (a3 >> 62);
  if (a3 >> 62)
  {
    goto LABEL_66;
  }

  v11 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v11 <= 1)
  {
LABEL_68:
    if (!v11)
    {
      return 0;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      return MEMORY[0x216058EB0](0, a3);
    }

    if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return *(a3 + 32);
    }

LABEL_80:
    __break(1u);
    return result;
  }

  while (1)
  {
    v38 = v6;
    v39 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B6E8, &unk_2149960A8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_214995EE0;
    result = [objc_opt_self() descriptorForRequiredKeys];
    *(inited + 32) = result;
    v48 = a1;
    if ((inited & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x216058EB0](0, inited);
      goto LABEL_6;
    }

    if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

    v13 = result;
    swift_unknownObjectRetain();
LABEL_6:
    v49 = [v13 isEqual_];
    result = swift_unknownObjectRelease();
    if ((inited & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x216058EB0](0, inited);
    }

    else
    {
      if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_79;
      }

      v14 = *(inited + 32);
      swift_unknownObjectRetain();
    }

    v15 = [v14 isEqual_];
    swift_unknownObjectRelease();
    swift_setDeallocating();
    swift_arrayDestroy();
    v47 = v15;
    if (((v15 | v49) & 1) == 0)
    {
      goto LABEL_52;
    }

    v6 = objc_opt_self();

    v16 = sub_21498F840();

    v17 = [v6 componentsFromString_];

    sub_21498E0D0();
    v41 = sub_21498E0B0();
    v19 = v18;
    v40 = sub_21498E0C0();
    v46 = v19 == 0;
    v48 = v19;
    if (!(v19 | v20))
    {
      goto LABEL_51;
    }

    v21 = v20;
    if (v10)
    {
      v22 = sub_21498FE90();
      if (!v22)
      {
LABEL_50:

LABEL_51:
        v38[1](v9, v39);
        goto LABEL_52;
      }
    }

    else
    {
      v22 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v22)
      {
        goto LABEL_50;
      }
    }

    v35 = v10;
    v36 = v9;
    a1 = 0;
    v42 = 0;
    v43 = 0;
    v44 = v22;
    v45 = a3 & 0xC000000000000001;
    v37 = a3 & 0xFFFFFFFFFFFFFF8;
LABEL_17:
    if (v45)
    {
      result = MEMORY[0x216058EB0](a1, a3);
      goto LABEL_21;
    }

    if (a1 >= *(v37 + 16))
    {
      __break(1u);
      return MEMORY[0x216058EB0](0, a3);
    }

    result = *(a3 + 8 * a1 + 32);
LABEL_21:
    v10 = result;
    v9 = (a1 + 1);
    if (!__OFADD__(a1, 1))
    {
      break;
    }

    __break(1u);
LABEL_66:
    v33 = result;
    v34 = sub_21498FE90();
    result = v33;
    if (v34 < 2)
    {
      result = sub_21498FE90();
      v11 = result;
      goto LABEL_68;
    }
  }

  if (v49)
  {
    v23 = [result givenName];
    v6 = sub_21498F870();
    v25 = v24;

    if (!v47)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v6 = 0;
    v25 = 0;
    if (!v47)
    {
LABEL_24:
      v26 = 0;
      v27 = 0;
      v28 = v46;
      if (!v25)
      {
        goto LABEL_31;
      }

      goto LABEL_25;
    }
  }

  v29 = [v10 familyName];
  v26 = sub_21498F870();
  v27 = v30;

  v28 = v46;
  if (!v25)
  {
LABEL_31:
    if (!v27)
    {
      goto LABEL_41;
    }

    goto LABEL_32;
  }

LABEL_25:
  if (v48)
  {
    if (v6 == v41 && v25 == v48)
    {
      v28 = 1;
    }

    else
    {
      v28 = sub_214990080();
    }
  }

  else
  {
    v28 = 0;
  }

  if (!v27)
  {
LABEL_41:
    if (v21)
    {
LABEL_42:
      if ((v28 & 1) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_15;
    }

    if (v28)
    {
      goto LABEL_64;
    }

LABEL_48:

    v43 = v10;
    goto LABEL_16;
  }

LABEL_32:
  if (!v21)
  {

    goto LABEL_42;
  }

  if (v26 != v40 || v27 != v21)
  {
    v31 = sub_214990080();

    if ((v28 & 1) == 0)
    {
      if (v31)
      {
        goto LABEL_48;
      }

LABEL_43:

      goto LABEL_16;
    }

    if (v31)
    {
      goto LABEL_63;
    }

LABEL_15:

    v42 = v10;
LABEL_16:
    ++a1;
    if (v9 == v44)
    {
      while (1)
      {

        v38[1](v36, v39);
        v10 = v35;
        v32 = v42;
        if (v42)
        {
          break;
        }

        result = v43;
        if (v43)
        {
          return result;
        }

LABEL_52:
        if (v10)
        {
          result = sub_21498FE90();
          if (!result)
          {
            return result;
          }
        }

        else
        {
          result = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!result)
          {
            return result;
          }
        }

        if ((a3 & 0xC000000000000001) != 0)
        {
          return MEMORY[0x216058EB0](0, a3);
        }

        if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          return *(a3 + 32);
        }

        __break(1u);
      }

      return v32;
    }

    goto LABEL_17;
  }

  if ((v28 & 1) == 0)
  {
    goto LABEL_48;
  }

LABEL_63:

LABEL_64:

  v38[1](v36, v39);

  return v10;
}

void sub_2148E929C(void *a1, void *a2, void (*a3)(void), uint64_t a4, uint64_t a5)
{
  v10 = sub_21498E690();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v14 = a2;
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v15 = __swift_project_value_buffer(v10, qword_281194E18);
    (*(v11 + 16))(v13, v15, v10);
    v16 = a2;
    v17 = sub_21498E670();
    v18 = sub_21498FBB0();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v32[1] = a4;
      v20 = v19;
      v21 = swift_slowAlloc();
      v32[0] = a3;
      v22 = v21;
      aBlock[0] = v21;
      *v20 = 136315138;
      swift_getErrorValue();
      v23 = sub_214990100();
      v25 = sub_2149079F4(v23, v24, aBlock);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_21488E000, v17, v18, "Unable to get business logo metadata: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      v26 = v22;
      a3 = v32[0];
      MEMORY[0x216059AC0](v26, -1, -1);
      MEMORY[0x216059AC0](v20, -1, -1);
    }

    (*(v11 + 8))(v13, v10);
    a3(0);
  }

  else if (a1)
  {
    v27 = [a1 businessId];
    if (!v27)
    {
      sub_21498F870();
      v27 = sub_21498F840();
    }

    v28 = *(a5 + *(type metadata accessor for BusinessLogoView(0) + 44));
    v29 = [objc_allocWithZone(MEMORY[0x277CF3610]) initWithBusinessId_];

    v30 = swift_allocObject();
    *(v30 + 16) = a3;
    *(v30 + 24) = a4;
    aBlock[4] = sub_2148EB1A0;
    aBlock[5] = v30;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2148EB894;
    aBlock[3] = &block_descriptor_28;
    v31 = _Block_copy(aBlock);

    [v28 fetchBusinessLogoForBusinessIdentifier:v29 completion:v31];
    _Block_release(v31);
  }

  else
  {
    a3(0);
  }
}

uint64_t sub_2148E9640(uint64_t a1, void *a2, void (*a3)(id))
{
  v6 = sub_21498E690();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21498E1B0();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](a1);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v37 - v16;
  if (v15)
  {
    v38 = v9;
    v39 = v7;
    v37 = v6;
    v18 = a3;
    v19 = [v15 logoURL];
    sub_21498E160();

    (*(v11 + 32))(v17, v14, v10);
    sub_21498E180();
    v20 = objc_allocWithZone(MEMORY[0x277D755B8]);
    v21 = sub_21498F840();

    v22 = [v20 initWithContentsOfFile_];

    if (v22)
    {
      v23 = v22;
      v18(v22);

      return (*(v11 + 8))(v17, v10);
    }

    (*(v11 + 8))(v17, v10);
    a3 = v18;
    v6 = v37;
    v9 = v38;
    v7 = v39;
  }

  if (a2)
  {
    v25 = a2;
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v26 = __swift_project_value_buffer(v6, qword_281194E18);
    (*(v7 + 16))(v9, v26, v6);
    v27 = a2;
    v28 = sub_21498E670();
    v29 = sub_21498FBB0();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v39 = v7;
      v31 = v30;
      v32 = swift_slowAlloc();
      v38 = v9;
      v33 = v32;
      v40 = v32;
      *v31 = 136315138;
      swift_getErrorValue();
      v34 = sub_214990100();
      v36 = sub_2149079F4(v34, v35, &v40);

      *(v31 + 4) = v36;
      _os_log_impl(&dword_21488E000, v28, v29, "Unable to get business logo icon: %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x216059AC0](v33, -1, -1);
      MEMORY[0x216059AC0](v31, -1, -1);

      (*(v39 + 8))(v38, v6);
      return (a3)(0);
    }

    (*(v7 + 8))(v9, v6);
  }

  return (a3)(0);
}

void sub_2148E9A74(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void sub_2148E9B00(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_2148E9B68@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v65 = sub_21498E6A0();
  v64 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v63 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_21498E970();
  v62 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v72 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA1B618, qword_214995EF8);
  MEMORY[0x28223BE20](v5 - 8);
  v68 = (&v60 - v6);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B610, &qword_214995EF0);
  v70 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v71 = &v60 - v7;
  v67 = sub_21498E350();
  v74 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B740, &qword_2149960E8);
  v75 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v60 - v11;
  v13 = type metadata accessor for BusinessLogoView(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = (&v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  *(v16 + *(v14 + 28)) = MEMORY[0x277D84F90];
  v17 = (v16 + *(v14 + 40));
  sub_21498E8C0();
  sub_2148EB734(&qword_27CA1A858, MEMORY[0x277D23330], MEMORY[0x277D233A0]);
  v81 = sub_21498ED20();
  *v17 = v81;
  v17[1] = v18;
  v19 = v13[11];
  v79 = [objc_allocWithZone(MEMORY[0x277CF3618]) init];
  *(v16 + v19) = v79;
  v20 = v13[12];
  v80 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  *(v16 + v20) = v80;
  v21 = v13[13];
  v78 = [objc_allocWithZone(MEMORY[0x277CBEA78]) init];
  *(v16 + v21) = v78;
  v22 = v13[14];
  v23 = [objc_opt_self() defaultSettings];
  v24 = [objc_allocWithZone(MEMORY[0x277CBDBD0]) initWithSettings_];

  v77 = v24;
  *(v16 + v22) = v24;
  v25 = (v16 + v13[15]);
  v86 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B698, &qword_214995F40);
  sub_21498F400();
  v26 = *(&v84 + 1);
  v76 = v84;
  *v25 = v84;
  v25[1] = v26;
  v27 = a1[3];
  v83 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v27);
  sub_2148EB2F0();
  v28 = v82;
  sub_2149901B0();
  if (v28)
  {
    __swift_destroy_boxed_opaque_existential_1(v83);
  }

  else
  {
    v29 = v74;
    LOBYTE(v84) = 0;
    v30 = sub_21498FF20();
    v33 = v31;
    v82 = v10;
    if (!v31)
    {
      v34 = v9;
      sub_21498E340();
      v35 = sub_21498E330();
      v37 = v36;
      (*(v29 + 8))(v34, v67);
      v33 = v37;
      v30 = v35;
    }

    v38 = v73;
    v39 = v71;
    *v16 = v30;
    v16[1] = v33;
    v74 = v33;
    LOBYTE(v84) = 1;
    sub_2148EB344();
    v40 = v82;
    sub_21498FFA0();
    (*(v70 + 32))(v16 + v13[5], v39, v38);
    LOBYTE(v84) = 2;
    v41 = v68;
    v71 = 0;
    sub_21498FF40();
    sub_2148EB3A8(v41, v16 + v13[6]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B758, &qword_2149960F0);
    LOBYTE(v84) = 4;
    sub_2148EB418();
    sub_21498FF40();
    v42 = v40;
    v43 = MEMORY[0x277D84F90];
    if (v86)
    {
      v44 = *(v86 + 16);
      if (v44)
      {
        v61 = v12;
        v85 = MEMORY[0x277D84F90];
        v45 = v86;
        sub_2148A9CE0(0, v44, 0);
        v43 = v85;
        v46 = v62 + 16;
        v68 = *(v62 + 16);
        v47 = (*(v62 + 80) + 32) & ~*(v62 + 80);
        v60 = v45;
        v48 = v45 + v47;
        v67 = *(v62 + 72);
        v62 += 8;
        v49 = v72;
        do
        {
          v50 = v69;
          v51 = v46;
          v68(v49, v48, v69);
          sub_21498E960();
          v49 = v72;
          (*v62)(v72, v50);
          v85 = v43;
          v53 = *(v43 + 16);
          v52 = *(v43 + 24);
          v54 = v53 + 1;
          if (v53 >= v52 >> 1)
          {
            sub_2148A9CE0((v52 > 1), v53 + 1, 1);
            v54 = v53 + 1;
            v49 = v72;
            v43 = v85;
          }

          *(v43 + 16) = v54;
          sub_2148970B8(&v84, v43 + 40 * v53 + 32);
          v48 += v67;
          --v44;
          v46 = v51;
        }

        while (v44);

        v42 = v82;
        v12 = v61;
      }

      else
      {
      }
    }

    *(v16 + v13[8]) = v43;
    LOBYTE(v84) = 3;
    sub_2148EB734(&qword_27CA1B770, MEMORY[0x277D231A8], MEMORY[0x277D231B0]);
    v55 = v63;
    v56 = v65;
    sub_21498FFA0();
    v57 = v66;
    v58 = v42;
    v59 = v64;
    (*(v75 + 8))(v12, v58);
    (*(v59 + 32))(v16 + v13[9], v55, v56);
    sub_2148EA984(v16, v57);
    __swift_destroy_boxed_opaque_existential_1(v83);
    return sub_2148EB4CC(v16);
  }
}

uint64_t sub_2148EA604(uint64_t a1, uint64_t a2)
{
  v4 = sub_2148EB734(&qword_27CA1B6A0, type metadata accessor for BusinessLogoView, &unk_214996020);

  return MEMORY[0x282182170](a1, v4, a2);
}

uint64_t sub_2148EA688(uint64_t a1, uint64_t a2)
{
  v4 = sub_2148EB734(&qword_27CA1B6A8, type metadata accessor for BusinessLogoView, &unk_214995FD0);

  return MEMORY[0x282182168](a1, a2, v4);
}

uint64_t sub_2148EA704(uint64_t a1)
{
  v2 = sub_2148EB734(&qword_27CA1B6A8, type metadata accessor for BusinessLogoView, &unk_214995FD0);

  return MEMORY[0x2821822F0](a1, v2);
}

uint64_t sub_2148EA780(uint64_t a1, uint64_t a2)
{
  v4 = sub_2148EB734(&qword_27CA1B6C0, type metadata accessor for BusinessLogoView, &unk_214995F98);

  return MEMORY[0x282182160](a1, a2, v4);
}

uint64_t sub_2148EA83C(uint64_t a1, uint64_t a2)
{
  sub_2148EB734(&qword_27CA1B6A0, type metadata accessor for BusinessLogoView, &unk_214996020);
  sub_2148EB734(&qword_27CA1B6A8, type metadata accessor for BusinessLogoView, &unk_214995FD0);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2148EA984(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BusinessLogoView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2148EA9E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BusinessLogoView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2148EAA4C()
{
  v2 = *(type metadata accessor for BusinessLogoView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = (v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_214899138;

  return sub_2148E74E8(v4, v5, v0 + v3, v7, v8);
}

uint64_t sub_2148EAB68(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for BusinessLogoView(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = (v1 + v7);
  v12 = *v11;
  v13 = v11[1];
  v14 = *(v1 + v8);
  v15 = *(v1 + v8 + 8);
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_214899964;

  return sub_2148E7944(a1, v9, v10, v1 + v6, v12, v13, v14, v15);
}

void sub_2148EACBC(void *a1)
{
  v3 = *(type metadata accessor for BusinessLogoView(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v1 + v5);
  v8 = *(v1 + v6);
  v9 = *v7;
  v10 = v7[1];

  sub_2148E868C(a1, v1 + v4, v9, v10, v8);
}

unint64_t sub_2148EAD68(uint64_t a1, uint64_t a2)
{
  v2 = sub_21498FEF0();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

void sub_2148EADB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a3;
  v19 = a4;
  v4 = type metadata accessor for BusinessLogoView(0);
  v16 = *(v4 - 8);
  v5 = *(v16 + 64);
  MEMORY[0x28223BE20](v4);
  if (qword_27CA19FD8 != -1)
  {
    swift_once();
  }

  sub_21498E580();
  sub_21498E540();
  v6 = objc_allocWithZone(MEMORY[0x277CF35F0]);
  v7 = sub_21498F840();
  v8 = sub_21498F840();

  v9 = sub_21498F840();

  v10 = [v6 initWithEmail:v7 fullDomain:v8 topLevelDomain:v9];

  v11 = *(v17 + *(v4 + 44));
  sub_2148EA984(v17, &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v13 = swift_allocObject();
  v14 = v19;
  *(v13 + 16) = v18;
  *(v13 + 24) = v14;
  sub_2148EA9E8(&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  aBlock[4] = sub_2148EB11C;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2148EB894;
  aBlock[3] = &block_descriptor_22;
  v15 = _Block_copy(aBlock);

  [v11 fetchBusinessMetadataForEmailIdentifier:v10 completion:v15];
  _Block_release(v15);
}

void sub_2148EB040(void *a1)
{
  v3 = *(type metadata accessor for BusinessLogoView(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_2148E7D48(a1, v1 + v4, v5);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_2148EB11C(void *a1, void *a2)
{
  v5 = *(type metadata accessor for BusinessLogoView(0) - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  sub_2148E929C(a1, a2, v6, v7, v8);
}

unint64_t sub_2148EB1A8()
{
  result = qword_27CA1B728;
  if (!qword_27CA1B728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1B720, &qword_2149960E0);
    sub_2148EB234();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B728);
  }

  return result;
}

unint64_t sub_2148EB234()
{
  result = qword_27CA1B730;
  if (!qword_27CA1B730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1B708, &qword_2149960C8);
    sub_2148EB734(&qword_27CA1AD60, MEMORY[0x277D231A8], MEMORY[0x277D231A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B730);
  }

  return result;
}

unint64_t sub_2148EB2F0()
{
  result = qword_27CA1B748;
  if (!qword_27CA1B748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B748);
  }

  return result;
}

unint64_t sub_2148EB344()
{
  result = qword_27CA1B750;
  if (!qword_27CA1B750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1B610, &qword_214995EF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B750);
  }

  return result;
}

uint64_t sub_2148EB3A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA1B618, qword_214995EF8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2148EB418()
{
  result = qword_27CA1B760;
  if (!qword_27CA1B760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1B758, &qword_2149960F0);
    sub_2148EB734(&qword_27CA1B768, MEMORY[0x277D23390], MEMORY[0x277D23398]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B760);
  }

  return result;
}

uint64_t sub_2148EB4CC(uint64_t a1)
{
  v2 = type metadata accessor for BusinessLogoView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2148EB538()
{
  result = qword_27CA1B778;
  if (!qword_27CA1B778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1B6C8, &unk_214996078);
    sub_2148EB5F4();
    sub_2148EB734(&qword_27CA1B7A0, MEMORY[0x277CDD8B0], MEMORY[0x277CDD8A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B778);
  }

  return result;
}

unint64_t sub_2148EB5F4()
{
  result = qword_27CA1B780;
  if (!qword_27CA1B780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1B788, &qword_214996108);
    sub_2148EB678();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B780);
  }

  return result;
}

unint64_t sub_2148EB678()
{
  result = qword_27CA1B790;
  if (!qword_27CA1B790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1B798, &qword_214996110);
    sub_2148EB1A8();
    sub_2148EB734(&qword_27CA1AD60, MEMORY[0x277D231A8], MEMORY[0x277D231A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B790);
  }

  return result;
}

uint64_t sub_2148EB734(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2148EB780()
{
  result = qword_27CA1B7A8;
  if (!qword_27CA1B7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B7A8);
  }

  return result;
}

unint64_t sub_2148EB7D8()
{
  result = qword_27CA1B7B0;
  if (!qword_27CA1B7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B7B0);
  }

  return result;
}

unint64_t sub_2148EB830()
{
  result = qword_27CA1B7B8;
  if (!qword_27CA1B7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B7B8);
  }

  return result;
}

uint64_t type metadata accessor for GradientIconView(uint64_t a1)
{
  result = qword_27CA1B7C0;
  if (!qword_27CA1B7C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2148EB90C(uint64_t a1)
{
  sub_2148EBA9C(319, &qword_27CA1A828, MEMORY[0x277D23340], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_2148EBA38(319);
    if (v2 <= 0x3F)
    {
      sub_2148EBA9C(319, &qword_27CA1B648, MEMORY[0x277D232D0], MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        sub_2148B0744(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2148EBA38(uint64_t a1)
{
  if (!qword_27CA1B650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1A668, &qword_2149926D8);
    v1 = sub_21498FA30();
    if (!v2)
    {
      atomic_store(v1, &qword_27CA1B650);
    }
  }
}

void sub_2148EBA9C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_2148EBB00@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v39 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A800, &unk_214993100);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v37 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v34 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = v34 - v9;
  v11 = type metadata accessor for GradientIconView(0);
  sub_2148ED338(v2 + v11[7], v10);
  v12 = sub_21498E900();
  v38 = *(v12 - 8);
  v13 = *(v38 + 48);
  if (v13(v10, 1, v12) == 1)
  {
    sub_2148ED3A8(v10);
    sub_2148ED338(v2 + v11[5], v8);
    v14 = v13(v8, 1, v12);
    if (v14 == 1)
    {
      sub_2148ED3A8(v8);
      v25 = v39;
      goto LABEL_9;
    }

    v35 = v11;
    v15 = v11[10];
    v36 = v2;
    if (*(v2 + v15))
    {

      v34[0] = sub_21498E8F0();
      v34[1] = v26;

      v27 = *(v38 + 8);
      v27(v8, v12);
      v28 = v37;
      sub_2148ED338(v36 + v35[6], v37);
      v29 = v13(v28, 1, v12);
      if (v29 != 1)
      {

        sub_21498E8F0();

        v27(v28, v12);
        v30 = sub_21498F840();

        v31 = [objc_opt_self() bundleWithIdentifier_];

        sub_21498F3F0();
        v32 = sub_21498F3D0();

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B828, &qword_2149963D8);
        v33 = swift_allocObject();
        *(v33 + 16) = xmmword_214991BE0;
        *(v33 + 32) = sub_21498F280();
        *(v33 + 40) = sub_21498F2C0();
        MEMORY[0x216058560](v33);
        sub_21498F500();
        sub_21498F4F0();
        sub_21498EC50();
        *&v40 = v32;
        *(&v40 + 1) = v47;
        v41 = v48;
        v42 = v49;
        v43 = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B7F8, &qword_2149963C0);
        sub_2148ED410();
        sub_21498EE90();
        v16 = v50;
        v17 = v51;
        v18 = v52;
        v19 = v53;
        v25 = v39;
        goto LABEL_10;
      }

      sub_2148ED3A8(v28);
      v25 = v39;
LABEL_9:
      v42 = 0u;
      v41 = 0u;
      v40 = 0u;
      v43 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B7F8, &qword_2149963C0);
      sub_2148ED410();
      sub_21498EE90();
      v16 = v50;
      v17 = v51;
      v18 = v52;
      v19 = v53;
LABEL_10:
      v46 = v19;
      v45 = 1;
      v40 = v16;
      v41 = v17;
      v42 = v18;
      v43 = v19;
      v44 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B7F8, &qword_2149963C0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B818, &qword_2149963D0);
      sub_2148ED410();
      sub_2148ED500();
      result = sub_21498EE90();
      goto LABEL_11;
    }
  }

  else if (*(v2 + v11[10]))
  {

    sub_21498E8F0();

    (*(v38 + 8))(v10, v12);
    sub_21498F3E0();
    v22 = sub_21498F3D0();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B828, &qword_2149963D8);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_214991BE0;
    *(v23 + 32) = sub_21498F280();
    *(v23 + 40) = sub_21498F2C0();
    MEMORY[0x216058560](v23);
    sub_21498F500();
    sub_21498F4F0();
    sub_21498EC50();
    v46 = 0;
    *&v40 = v22;
    *(&v40 + 1) = v47;
    v41 = v48;
    v42 = v49;
    v44 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B7F8, &qword_2149963C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B818, &qword_2149963D0);
    sub_2148ED410();
    sub_2148ED500();
    result = sub_21498EE90();
    v25 = v39;
LABEL_11:
    v20 = v51;
    v21 = v52;
    *v25 = v50;
    *(v25 + 16) = v20;
    *(v25 + 32) = v21;
    *(v25 + 48) = v53;
    return result;
  }

  sub_21498E8C0();
  sub_2148ED650(&qword_27CA1A858, MEMORY[0x277D23330], MEMORY[0x277D233A0]);
  result = sub_21498ED10();
  __break(1u);
  return result;
}

uint64_t sub_2148EC300()
{
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

uint64_t sub_2148EC3E4(uint64_t a1)
{
  sub_21498F900();
}

uint64_t sub_2148EC4B4(uint64_t a1)
{
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

unint64_t sub_2148EC594@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2148ED8FC(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2148EC5C4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0xEE00737265696669;
  v6 = 0x646F4D6567616D69;
  v7 = 0xE400000000000000;
  v8 = 1701667182;
  if (v2 != 3)
  {
    v8 = 0xD000000000000010;
    v7 = 0x80000002149A0770;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x614E6D6574737973;
    v3 = 0xEA0000000000656DLL;
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

uint64_t sub_2148EC664()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x646F4D6567616D69;
  v4 = 1701667182;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x614E6D6574737973;
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

unint64_t sub_2148EC700@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2148ED8FC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2148EC728(uint64_t a1)
{
  v2 = sub_2148ED58C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2148EC764(uint64_t a1)
{
  v2 = sub_2148ED58C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2148EC7A0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v60 = sub_21498E970();
  v56 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v59 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A800, &unk_214993100);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v58 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v63 = &v53 - v8;
  MEMORY[0x28223BE20](v7);
  v64 = &v53 - v9;
  v10 = sub_21498E350();
  v61 = *(v10 - 8);
  v62 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B830, &unk_2149963E0);
  v65 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v53 - v14;
  v16 = type metadata accessor for GradientIconView(0);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = (&v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  *(v19 + *(v17 + 36)) = MEMORY[0x277D84F90];
  v20 = v19 + *(v17 + 40);
  sub_21498E8C0();
  sub_2148ED650(&qword_27CA1A858, MEMORY[0x277D23330], MEMORY[0x277D233A0]);
  v66 = sub_21498ED20();
  *v20 = v66;
  *(v20 + 1) = v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2148ED58C();
  v22 = v67;
  sub_2149901B0();
  if (v22)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v23 = v12;
  v55 = v19;
  v67 = v16;
  LOBYTE(v68) = 0;
  v24 = sub_21498FF20();
  v27 = v25;
  v54 = v13;
  if (!v25)
  {
    sub_21498E340();
    v28 = sub_21498E330();
    v27 = v29;
    (*(v61 + 8))(v23, v62);
    v24 = v28;
  }

  v30 = v64;
  v31 = v55;
  *v55 = v24;
  v31[1] = v27;
  v64 = v27;
  sub_21498E900();
  LOBYTE(v68) = 1;
  sub_2148ED650(&qword_27CA1A2C0, MEMORY[0x277D23340], MEMORY[0x277D23348]);
  v32 = v15;
  sub_21498FF40();
  v33 = v30;
  v34 = v67;
  sub_2148ED5E0(v33, v31 + *(v67 + 28));
  LOBYTE(v68) = 3;
  v35 = v63;
  v62 = 0;
  sub_21498FF40();
  sub_2148ED5E0(v35, v31 + *(v34 + 20));
  LOBYTE(v68) = 4;
  v36 = v58;
  sub_21498FF40();
  sub_2148ED5E0(v36, v31 + *(v34 + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B758, &qword_2149960F0);
  LOBYTE(v68) = 2;
  sub_2148EB418();
  sub_21498FF40();
  v37 = a1;
  v38 = v31;
  v63 = v32;
  v39 = v70;
  v40 = MEMORY[0x277D84F90];
  v41 = v65;
  if (v70)
  {
    v42 = *(v70 + 16);
    if (v42)
    {
      v69 = MEMORY[0x277D84F90];
      sub_2148A9CE0(0, v42, 0);
      v40 = v69;
      v66 = *(v56 + 16);
      v43 = *(v56 + 80);
      v62 = v39;
      v44 = v39 + ((v43 + 32) & ~v43);
      v64 = *(v56 + 72);
      v45 = (v56 + 8);
      v46 = v60;
      do
      {
        v47 = v59;
        v66(v59, v44, v46);
        sub_21498E960();
        v46 = v60;
        (*v45)(v47, v60);
        v69 = v40;
        v49 = *(v40 + 16);
        v48 = *(v40 + 24);
        v50 = v49 + 1;
        if (v49 >= v48 >> 1)
        {
          sub_2148A9CE0((v48 > 1), v49 + 1, 1);
          v50 = v49 + 1;
          v46 = v60;
          v40 = v69;
        }

        *(v40 + 16) = v50;
        sub_2148970B8(&v68, v40 + 40 * v49 + 32);
        v44 += v64;
        --v42;
      }

      while (v42);

      v37 = a1;
      v51 = v57;
      v52 = v67;
      v38 = v55;
      v41 = v65;
      goto LABEL_15;
    }
  }

  v52 = v67;
  v51 = v57;
LABEL_15:
  (*(v41 + 8))(v63, v54);
  *(v38 + *(v52 + 32)) = v40;
  sub_2148ED698(v38, v51);
  __swift_destroy_boxed_opaque_existential_1(v37);
  return sub_2148ED6FC(v38);
}

uint64_t sub_2148ECFB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2148ED650(&qword_27CA1B7D0, type metadata accessor for GradientIconView, &unk_214996378);

  return MEMORY[0x282182170](a1, v4, a2);
}

uint64_t sub_2148ED03C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2148ED650(&qword_27CA1B7D8, type metadata accessor for GradientIconView, &unk_214996328);

  return MEMORY[0x282182168](a1, a2, v4);
}

uint64_t sub_2148ED0B8(uint64_t a1)
{
  v2 = sub_2148ED650(&qword_27CA1B7D8, type metadata accessor for GradientIconView, &unk_214996328);

  return MEMORY[0x2821822F0](a1, v2);
}

uint64_t sub_2148ED134(uint64_t a1, uint64_t a2)
{
  v4 = sub_2148ED650(&qword_27CA1B7F0, type metadata accessor for GradientIconView, &unk_2149962F0);

  return MEMORY[0x282182160](a1, a2, v4);
}

uint64_t sub_2148ED1F0(uint64_t a1, uint64_t a2)
{
  sub_2148ED650(&qword_27CA1B7D0, type metadata accessor for GradientIconView, &unk_214996378);
  sub_2148ED650(&qword_27CA1B7D8, type metadata accessor for GradientIconView, &unk_214996328);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2148ED338(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A800, &unk_214993100);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2148ED3A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A800, &unk_214993100);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2148ED410()
{
  result = qword_27CA1B800;
  if (!qword_27CA1B800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1B7F8, &qword_2149963C0);
    sub_2148ED49C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B800);
  }

  return result;
}

unint64_t sub_2148ED49C()
{
  result = qword_27CA1B808;
  if (!qword_27CA1B808)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1B810, &qword_2149963C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B808);
  }

  return result;
}

unint64_t sub_2148ED500()
{
  result = qword_27CA1B820;
  if (!qword_27CA1B820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1B818, &qword_2149963D0);
    sub_2148ED410();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B820);
  }

  return result;
}

unint64_t sub_2148ED58C()
{
  result = qword_27CA1B838;
  if (!qword_27CA1B838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B838);
  }

  return result;
}

uint64_t sub_2148ED5E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A800, &unk_214993100);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2148ED650(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2148ED698(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GradientIconView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2148ED6FC(uint64_t a1)
{
  v2 = type metadata accessor for GradientIconView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2148ED768()
{
  result = qword_27CA1B840;
  if (!qword_27CA1B840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1B848, &qword_214996408);
    sub_2148ED410();
    sub_2148ED500();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B840);
  }

  return result;
}

unint64_t sub_2148ED7F8()
{
  result = qword_27CA1B850;
  if (!qword_27CA1B850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B850);
  }

  return result;
}

unint64_t sub_2148ED850()
{
  result = qword_27CA1B858;
  if (!qword_27CA1B858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B858);
  }

  return result;
}

unint64_t sub_2148ED8A8()
{
  result = qword_27CA1B860;
  if (!qword_27CA1B860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B860);
  }

  return result;
}

unint64_t sub_2148ED8FC(uint64_t a1, uint64_t a2)
{
  v2 = sub_21498FEF0();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2148ED948()
{
  sub_214990160();
  sub_21498F900();
  return sub_214990190();
}

uint64_t sub_2148ED9BC(uint64_t a1)
{
  sub_214990160();
  sub_21498F900();
  return sub_214990190();
}

uint64_t sub_2148EDA10@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_21498FEF0();

  *a2 = v3 != 0;
  return result;
}

unint64_t sub_2148EDB2C()
{
  result = qword_27CA1B868;
  if (!qword_27CA1B868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B868);
  }

  return result;
}

unint64_t sub_2148EDB80()
{
  result = qword_27CA1B870;
  if (!qword_27CA1B870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B870);
  }

  return result;
}

uint64_t sub_2148EDBD4(uint64_t a1, unint64_t a2)
{
  v49 = sub_21498E690();
  v46 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ABA0, &qword_214993E20);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v44 - v7;
  v9 = sub_21498E3B0();
  v50 = *(v9 - 8);
  v51 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21498E320();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v47 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v44 - v16;
  sub_21498E310();
  v18 = v11;
  sub_21498E3A0();
  _sSo14NSUserDefaultsC19iCloudMailAssistantE11mailCleanupAbCE0dg4UserB0CvgZ_0();
  v20 = v19;
  v48 = a1;
  v21 = a2;
  v22 = sub_21498F840();
  v23 = [v20 objectForKey_];

  if (v23)
  {
    sub_21498FD40();
    swift_unknownObjectRelease();
  }

  else
  {
    v52 = 0u;
    v53 = 0u;
  }

  v54[0] = v52;
  v54[1] = v53;
  v24 = v49;
  if (!*(&v53 + 1))
  {
    sub_21489DFCC(v54, &qword_27CA1B878, qword_214996678);
    (*(v13 + 56))(v8, 1, 1, v12);
    goto LABEL_12;
  }

  v25 = v5;
  v26 = swift_dynamicCast();
  (*(v13 + 56))(v8, v26 ^ 1u, 1, v12);
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
LABEL_12:
    sub_21489DFCC(v8, &qword_27CA1ABA0, &qword_214993E20);
LABEL_13:
    _sSo14NSUserDefaultsC19iCloudMailAssistantE11mailCleanupAbCE0dg4UserB0CvgZ_0();
    v39 = v38;
    v40 = sub_21498E2B0();
    v41 = sub_21498F840();
    [v39 setObject:v40 forKey:v41];

    (*(v50 + 8))(v18, v51);
    (*(v13 + 8))(v17, v12);
    return 1;
  }

  v27 = v47;
  (*(v13 + 32))(v47, v8, v12);
  if ((sub_21498E390() & 1) == 0)
  {
    (*(v13 + 8))(v27, v12);
    goto LABEL_13;
  }

  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v28 = __swift_project_value_buffer(v24, qword_281194E18);
  v29 = v46;
  (*(v46 + 16))(v25, v28, v24);

  v30 = sub_21498E670();
  v31 = sub_21498FB90();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v45 = v25;
    v33 = v32;
    v34 = swift_slowAlloc();
    v44 = v30;
    v35 = v34;
    *&v54[0] = v34;
    *v33 = 136315138;
    *(v33 + 4) = sub_2149079F4(v48, v21, v54);
    v36 = v31;
    v37 = v44;
    _os_log_impl(&dword_21488E000, v44, v36, "[shouldExecuteAction] Action already executed today for key: %s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x216059AC0](v35, -1, -1);
    MEMORY[0x216059AC0](v33, -1, -1);

    (*(v29 + 8))(v45, v24);
  }

  else
  {

    (*(v29 + 8))(v25, v24);
  }

  v43 = *(v13 + 8);
  v43(v47, v12);
  (*(v50 + 8))(v18, v51);
  v43(v17, v12);
  return 0;
}

uint64_t sub_2148EE1D0()
{
  v0 = *MEMORY[0x277CB89C8];
  v1 = *MEMORY[0x277CB89C8];
  return v0;
}

uint64_t sub_2148EE218()
{
  v1 = sub_21498E690();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  PreferencesAPIRequest = type metadata accessor for GetPreferencesAPIRequest(0);
  v22.receiver = v0;
  v22.super_class = PreferencesAPIRequest;
  v6 = objc_msgSendSuper2(&v22, sel_urlString);
  v7 = sub_21498F870();
  v9 = v8;

  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {
    v11 = v7;
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v12 = __swift_project_value_buffer(v1, qword_281194E18);
    (*(v2 + 16))(v4, v12, v1);
    v13 = v0;
    v14 = sub_21498E670();
    v15 = sub_21498FBD0();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v21[0] = v17;
      *v16 = 136315394;
      *(v16 + 4) = sub_2149079F4(0xD000000000000026, 0x80000002149A1E00, v21);
      *(v16 + 12) = 2080;

      v18 = sub_2149079F4(v11, v9, v21);

      *(v16 + 14) = v18;
      _os_log_impl(&dword_21488E000, v14, v15, "Using fallback url for %s: %s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x216059AC0](v17, -1, -1);
      MEMORY[0x216059AC0](v16, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
    v21[0] = sub_21498BF80();
    v21[1] = v19;

    MEMORY[0x2160589C0](0xD00000000000002DLL, 0x80000002149A1E30);

    return v21[0];
  }

  return v7;
}

id sub_2148EE510(void *a1)
{
  v1 = a1;
  sub_2148EE218();

  v2 = sub_21498F840();

  return v2;
}

id sub_2148EE578()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GetPreferencesAPIRequest(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for GetPreferencesAPIRequest(uint64_t a1)
{
  result = qword_281191358;
  if (!qword_281191358)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_19iCloudMailAssistant16SharedPreferenceVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
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

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_2148EE67C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 49))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_2148EE6E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_2148EE754(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B888, &qword_214996788);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11[-v6 - 8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2148EF2D8();
  sub_2149901C0();
  v8 = *(v2 + 16);
  v12 = *v2;
  v13 = v8;
  v14 = *(v2 + 32);
  v15 = *(v2 + 48);
  sub_2148EF380(v2, v11);
  sub_2148EF3B8();
  sub_21498FFE0();
  sub_2148D98E8(v12, *(&v12 + 1), v13, *(&v13 + 1), v14);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_2148EE8EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000002149A1E60 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_214990080();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_2148EE980(uint64_t a1)
{
  v2 = sub_2148EF2D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2148EE9BC(uint64_t a1)
{
  v2 = sub_2148EF2D8();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_2148EE9F8@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_2148EF140(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    result = *&v7;
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return result;
}

uint64_t sub_2148EEA8C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B8A8, &qword_214996948);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2148EF998();
  sub_2149901C0();
  v12 = *v3;
  v13 = *(v3 + 2);
  v11 = 0;
  sub_2148EFA40();
  sub_21498FFE0();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v12 = *(v3 + 24);
  v13 = *(v3 + 5);
  v11 = 1;
  sub_21498FFE0();
  LOBYTE(v12) = 2;
  sub_21498FFD0();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_2148EEC6C(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B8C8, &qword_214996AE0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2148EFE34();
  sub_2149901C0();
  v11[15] = 0;
  sub_214990000();
  if (!v4)
  {
    v11[14] = 1;
    sub_214990020();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_2148EEE08()
{
  v1 = 0xD000000000000011;
  if (*v0 == 1)
  {
    v1 = 0xD00000000000001CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_2148EEE60@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2148EF5F4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2148EEE88(uint64_t a1)
{
  v2 = sub_2148EF998();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2148EEEC4(uint64_t a1)
{
  v2 = sub_2148EF998();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_2148EEF00@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_2148EF718(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    result = *&v7;
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return result;
}

uint64_t sub_2148EEF68()
{
  if (*v0)
  {
    return 0x6E6F6973726576;
  }

  else
  {
    return 0x737574617473;
  }
}

uint64_t sub_2148EEFA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x737574617473 && a2 == 0xE600000000000000;
  if (v6 || (sub_214990080() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_214990080();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2148EF078(uint64_t a1)
{
  v2 = sub_2148EFE34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2148EF0B4(uint64_t a1)
{
  v2 = sub_2148EFE34();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_2148EF0F0(uint64_t *a1@<X8>, void *a2@<X0>)
{
  v6 = sub_2148EFC58(a2);
  if (!v2)
  {
    *a1 = v4;
    a1[1] = v5;
    *(a1 + 2) = v6;
  }
}

uint64_t sub_2148EF140@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B880, &qword_214996780);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2148EF2D8();
  sub_2149901B0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_2148EF32C();
  sub_21498FF40();
  (*(v6 + 8))(v8, v5);
  v9 = v18;
  v10 = v19;
  v11 = v20;
  v14 = v17;
  v15 = v16;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v13 = v14;
  *a2 = v15;
  *(a2 + 16) = v13;
  *(a2 + 32) = v9;
  *(a2 + 40) = v10;
  *(a2 + 48) = v11;
  return result;
}

unint64_t sub_2148EF2D8()
{
  result = qword_2811911B0;
  if (!qword_2811911B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811911B0);
  }

  return result;
}

unint64_t sub_2148EF32C()
{
  result = qword_281191838;
  if (!qword_281191838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281191838);
  }

  return result;
}

unint64_t sub_2148EF3B8()
{
  result = qword_27CA1B890;
  if (!qword_27CA1B890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B890);
  }

  return result;
}

uint64_t sub_2148EF41C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 49))
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

uint64_t sub_2148EF478(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_2148EF4F0()
{
  result = qword_27CA1B898;
  if (!qword_27CA1B898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B898);
  }

  return result;
}

unint64_t sub_2148EF548()
{
  result = qword_2811911A0;
  if (!qword_2811911A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811911A0);
  }

  return result;
}

unint64_t sub_2148EF5A0()
{
  result = qword_2811911A8;
  if (!qword_2811911A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811911A8);
  }

  return result;
}

uint64_t sub_2148EF5F4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000015 && 0x80000002149A1E80 == a2;
  if (v3 || (sub_214990080() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000002149A1EA0 == a2 || (sub_214990080() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002149A1EC0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_214990080();

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

uint64_t sub_2148EF718@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B8A0, &qword_214996940);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2148EF998();
  sub_2149901B0();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v24 = 0;
    sub_2148EF9EC();
    sub_21498FF40();
    v9 = v22;
    v19 = v23;
    v20 = v21;
    v24 = 1;
    sub_21498FF40();
    v10 = v22;
    v17 = v23;
    v18 = v21;
    LOBYTE(v21) = 2;
    v11 = sub_21498FF30();
    (*(v6 + 8))(v8, v5);

    __swift_destroy_boxed_opaque_existential_1(a1);

    v13 = v19;
    *a2 = v20;
    *(a2 + 8) = v9;
    v14 = v17;
    v15 = v18;
    *(a2 + 16) = v13;
    *(a2 + 24) = v15;
    *(a2 + 32) = v10;
    *(a2 + 40) = v14;
    *(a2 + 48) = v11;
  }

  return result;
}

unint64_t sub_2148EF998()
{
  result = qword_281191850;
  if (!qword_281191850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281191850);
  }

  return result;
}

unint64_t sub_2148EF9EC()
{
  result = qword_281191B90;
  if (!qword_281191B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281191B90);
  }

  return result;
}

unint64_t sub_2148EFA40()
{
  result = qword_27CA1B8B0;
  if (!qword_27CA1B8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B8B0);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2148EFAB8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_2148EFB00(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2148EFB54()
{
  result = qword_27CA1B8B8;
  if (!qword_27CA1B8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B8B8);
  }

  return result;
}

unint64_t sub_2148EFBAC()
{
  result = qword_281191840;
  if (!qword_281191840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281191840);
  }

  return result;
}

unint64_t sub_2148EFC04()
{
  result = qword_281191848;
  if (!qword_281191848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281191848);
  }

  return result;
}

double sub_2148EFC58(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B8C0, &qword_214996AD8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2148EFE34();
  sub_2149901B0();
  if (!v1)
  {
    v12 = 0;
    sub_21498FF60();
    v11 = 1;
    sub_21498FF80();
    v2 = v9;
    (*(v5 + 8))(v7, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

unint64_t sub_2148EFE34()
{
  result = qword_281191BA8[0];
  if (!qword_281191BA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281191BA8);
  }

  return result;
}

unint64_t sub_2148EFE9C()
{
  result = qword_27CA1B8D0;
  if (!qword_27CA1B8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B8D0);
  }

  return result;
}

unint64_t sub_2148EFEF4()
{
  result = qword_281191B98;
  if (!qword_281191B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281191B98);
  }

  return result;
}

unint64_t sub_2148EFF4C()
{
  result = qword_281191BA0;
  if (!qword_281191BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281191BA0);
  }

  return result;
}

id sub_2148EFFA0()
{
  result = sub_2148EFFC0();
  qword_27CA31008 = result;
  return result;
}

id sub_2148EFFC0()
{
  v0 = [objc_allocWithZone(sub_21498E850()) init];
  type metadata accessor for DateText(0);
  sub_2148F0AC8(&qword_27CA1B8D8, type metadata accessor for DateText, &unk_214997D5C);
  v1 = v0;
  sub_21498E820();
  type metadata accessor for MALoadRemoteDataAction(0);
  sub_2148F0AC8(&qword_27CA1B8E0, type metadata accessor for MALoadRemoteDataAction, &unk_21499EF50);
  sub_21498E830();
  type metadata accessor for CustomRemoteContent(0);
  sub_2148F0AC8(&qword_27CA1A868, type metadata accessor for CustomRemoteContent, &unk_214993328);
  sub_21498E820();
  type metadata accessor for MANavigationLinkView(0);
  sub_2148F0AC8(&qword_27CA1B8E8, type metadata accessor for MANavigationLinkView, &unk_21499A1A0);
  sub_21498E820();
  sub_2148F0924();
  sub_21498E840();
  sub_2148F0978();
  sub_21498E840();
  type metadata accessor for DelayedSetAction(0);
  sub_2148F0AC8(&qword_27CA1B900, type metadata accessor for DelayedSetAction, &unk_21499DB30);
  sub_21498E830();
  type metadata accessor for MAHttpRequestAction(0);
  sub_2148F0AC8(&qword_27CA1B908, type metadata accessor for MAHttpRequestAction, &unk_21499B6D0);
  sub_21498E830();
  type metadata accessor for IntervalGuardAction(0);
  sub_2148F0AC8(&qword_27CA1A2A0, type metadata accessor for IntervalGuardAction, &unk_214991460);
  sub_21498E830();
  type metadata accessor for EmitNavigationEventAction(0);
  sub_2148F0AC8(&qword_27CA1B910, type metadata accessor for EmitNavigationEventAction, &unk_21499F928);
  sub_21498E830();
  type metadata accessor for MathSetAction(0);
  sub_2148F0AC8(&qword_27CA1B918, type metadata accessor for MathSetAction, &unk_21499C920);
  sub_21498E830();
  type metadata accessor for MACoreAnalyticsLogging(0);
  sub_2148F0AC8(&qword_27CA1B920, type metadata accessor for MACoreAnalyticsLogging, &unk_21499D248);
  sub_21498E830();
  type metadata accessor for MAInvalidateMailCleanupCacheAction();
  sub_2148F0AC8(&qword_27CA1B928, type metadata accessor for MAInvalidateMailCleanupCacheAction, &unk_21499A930);
  sub_21498E830();
  type metadata accessor for GradientIconView(0);
  sub_2148F0AC8(&qword_27CA1B7D0, type metadata accessor for GradientIconView, &unk_214996378);
  sub_21498E820();
  type metadata accessor for SendNotificationAction(0);
  sub_2148F0AC8(&qword_27CA1B930, type metadata accessor for SendNotificationAction, &unk_214998858);
  sub_21498E830();
  type metadata accessor for DeeplinkAction(0);
  sub_2148F0AC8(&qword_27CA1A3C0, type metadata accessor for DeeplinkAction, &unk_214991A08);
  sub_21498E830();
  sub_2148F09CC();
  sub_21498E840();
  type metadata accessor for AllowsHitTestingModifier(0);
  sub_2148F0AC8(&qword_27CA1B940, type metadata accessor for AllowsHitTestingModifier, &unk_21499FB44);
  sub_21498E840();
  type metadata accessor for BindableMANavigationLink(0);
  sub_2148F0AC8(&qword_27CA1B948, type metadata accessor for BindableMANavigationLink, &unk_21499A158);
  sub_21498E820();
  type metadata accessor for DelayedDisplay(0);
  sub_2148F0AC8(&qword_27CA1B950, type metadata accessor for DelayedDisplay, &unk_21499F598);
  sub_21498E840();
  sub_2148F0A20();
  sub_21498E820();
  sub_2148F0A74();
  sub_21498E820();
  type metadata accessor for OBKLiftUIView(0);
  sub_2148F0AC8(&qword_27CA1AC30, type metadata accessor for OBKLiftUIView, &unk_214993F90);
  sub_21498E820();
  type metadata accessor for MAUnsubscribeAction(0);
  sub_2148F0AC8(&qword_27CA1A5A8, type metadata accessor for MAUnsubscribeAction, &unk_214992468);
  sub_21498E830();
  type metadata accessor for BusinessLogoView(0);
  sub_2148F0AC8(&qword_27CA1B6A0, type metadata accessor for BusinessLogoView, &unk_214996020);
  sub_21498E820();
  sub_2148F0B10();
  sub_21498E820();

  return v1;
}

unint64_t sub_2148F0924()
{
  result = qword_27CA1B8F0;
  if (!qword_27CA1B8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B8F0);
  }

  return result;
}

unint64_t sub_2148F0978()
{
  result = qword_27CA1B8F8;
  if (!qword_27CA1B8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B8F8);
  }

  return result;
}

unint64_t sub_2148F09CC()
{
  result = qword_27CA1B938;
  if (!qword_27CA1B938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B938);
  }

  return result;
}

unint64_t sub_2148F0A20()
{
  result = qword_27CA1B958;
  if (!qword_27CA1B958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B958);
  }

  return result;
}

unint64_t sub_2148F0A74()
{
  result = qword_27CA1B960;
  if (!qword_27CA1B960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B960);
  }

  return result;
}

uint64_t sub_2148F0AC8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2148F0B10()
{
  result = qword_27CA1B968;
  if (!qword_27CA1B968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B968);
  }

  return result;
}

uint64_t sub_2148F0B64()
{
  v0 = *MEMORY[0x277CB89C8];
  v1 = *MEMORY[0x277CB89C8];
  return v0;
}

uint64_t sub_2148F0BAC()
{
  v1 = sub_21498E690();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for UpdateAutomationRecommendationAPIRequest(0);
  v22.receiver = v0;
  v22.super_class = updated;
  v6 = objc_msgSendSuper2(&v22, sel_urlString);
  v7 = sub_21498F870();
  v9 = v8;

  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {
    v11 = v7;
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v12 = __swift_project_value_buffer(v1, qword_281194E18);
    (*(v2 + 16))(v4, v12, v1);
    v13 = v0;
    v14 = sub_21498E670();
    v15 = sub_21498FBD0();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v21[0] = v17;
      *v16 = 136315394;
      *(v16 + 4) = sub_2149079F4(0xD00000000000003FLL, 0x80000002149A2150, v21);
      *(v16 + 12) = 2080;

      v18 = sub_2149079F4(v11, v9, v21);

      *(v16 + 14) = v18;
      _os_log_impl(&dword_21488E000, v14, v15, "Using fallback url for %s: %s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x216059AC0](v17, -1, -1);
      MEMORY[0x216059AC0](v16, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
    v21[0] = sub_21498DE14();
    v21[1] = v19;

    MEMORY[0x2160589C0](0xD00000000000002CLL, 0x80000002149A2190);

    return v21[0];
  }

  return v7;
}

uint64_t sub_2148F0F4C()
{
  if (*v0)
  {
    return 0x6F54737574617473;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_2148F0F98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000002149A1110 == a2 || (sub_214990080() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6F54737574617473 && a2 == 0xEE00657461647055)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_214990080();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_2148F1088(uint64_t a1)
{
  v2 = sub_2148F1B1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2148F10C4(uint64_t a1)
{
  v2 = sub_2148F1B1C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2148F119C()
{
  v0 = *MEMORY[0x277CB89C8];
  v1 = *MEMORY[0x277CB89C8];
  return v0;
}

uint64_t sub_2148F11E4()
{
  v1 = sub_21498E690();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for UpdateUnsubscribeRecommendationAPIRequest(0);
  v22.receiver = v0;
  v22.super_class = updated;
  v6 = objc_msgSendSuper2(&v22, sel_urlString);
  v7 = sub_21498F870();
  v9 = v8;

  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {
    v11 = v7;
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v12 = __swift_project_value_buffer(v1, qword_281194E18);
    (*(v2 + 16))(v4, v12, v1);
    v13 = v0;
    v14 = sub_21498E670();
    v15 = sub_21498FBD0();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v21[0] = v17;
      *v16 = 136315394;
      *(v16 + 4) = sub_2149079F4(0xD000000000000040, 0x80000002149A20D0, v21);
      *(v16 + 12) = 2080;

      v18 = sub_2149079F4(v11, v9, v21);

      *(v16 + 14) = v18;
      _os_log_impl(&dword_21488E000, v14, v15, "Using fallback url for %s: %s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x216059AC0](v17, -1, -1);
      MEMORY[0x216059AC0](v16, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
    v21[0] = sub_21498DE14();
    v21[1] = v19;

    MEMORY[0x2160589C0](0xD000000000000026, 0x80000002149A2120);

    return v21[0];
  }

  return v7;
}

id sub_2148F14EC(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_21498F840();

  return v5;
}

id sub_2148F1574(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_2148F164C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, uint64_t (*a8)(void), uint64_t a9)
{
  v20[2] = a3;
  v20[0] = a4;
  v20[1] = a5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v20 - v13;
  v15 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  (a8)(v15, v16, v17);
  sub_2149901C0();
  v22 = 0;
  v18 = v20[3];
  sub_214990000();
  if (!v18)
  {
    v21 = 1;
    sub_214990000();
  }

  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_2148F17DC()
{
  if (*v0)
  {
    return 0x6F54737574617473;
  }

  else
  {
    return 0x6D457265646E6573;
  }
}

uint64_t sub_2148F182C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6D457265646E6573 && a2 == 0xEB000000006C6961;
  if (v6 || (sub_214990080() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F54737574617473 && a2 == 0xEE00657461647055)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_214990080();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2148F1914(uint64_t a1)
{
  v2 = sub_2148F1B70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2148F1950(uint64_t a1)
{
  v2 = sub_2148F1B70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2148F19D0@<X0>(void *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t a5@<X6>, uint64_t *a6@<X8>)
{
  result = sub_2148F1BC4(a1, a2, a3, a4, a5);
  if (!v6)
  {
    *a6 = result;
    a6[1] = v9;
    a6[2] = v10;
    a6[3] = v11;
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2148F1A84(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_2148F1ACC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_2148F1B1C()
{
  result = qword_27CA1B998;
  if (!qword_27CA1B998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B998);
  }

  return result;
}

unint64_t sub_2148F1B70()
{
  result = qword_27CA1B9A8;
  if (!qword_27CA1B9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B9A8);
  }

  return result;
}

uint64_t sub_2148F1BC4(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v15 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  v11 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  a4();
  sub_2149901B0();
  if (!v5)
  {
    v12 = v15;
    v17 = 0;
    v11 = sub_21498FF60();
    v16 = 1;
    sub_21498FF60();
    (*(v12 + 8))(v10, v8);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v11;
}

unint64_t sub_2148F1DD8()
{
  result = qword_27CA1B9C0;
  if (!qword_27CA1B9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B9C0);
  }

  return result;
}

unint64_t sub_2148F1E30()
{
  result = qword_27CA1B9C8;
  if (!qword_27CA1B9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B9C8);
  }

  return result;
}

unint64_t sub_2148F1E88()
{
  result = qword_27CA1B9D0;
  if (!qword_27CA1B9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B9D0);
  }

  return result;
}

unint64_t sub_2148F1EE0()
{
  result = qword_27CA1B9D8;
  if (!qword_27CA1B9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B9D8);
  }

  return result;
}

unint64_t sub_2148F1F38()
{
  result = qword_27CA1B9E0;
  if (!qword_27CA1B9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B9E0);
  }

  return result;
}

unint64_t sub_2148F1F90()
{
  result = qword_27CA1B9E8;
  if (!qword_27CA1B9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B9E8);
  }

  return result;
}

uint64_t MATip.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MATip.tipId.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

void MATip.icon.getter(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  sub_2148F20B8(v2, v3, v4, v5);
}

void sub_2148F20B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

__n128 MATip.icon.setter(uint64_t a1)
{
  sub_2148AF724(v1[2], v1[3], v1[4], v1[5]);
  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 1) = *a1;
  *(v1 + 2) = v4;
  return result;
}

uint64_t MATip.title.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t MATip.title.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t MATip.message.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t MATip.message.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t MATip.submitButtonLabel.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t MATip.submitButtonLabel.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

uint64_t MATip.submitAction.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[7];
  v7[0] = v1[6];
  v7[1] = v2;
  v4 = v1[9];
  v8 = v1[8];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_2148F2328(v7, &v6);
}

uint64_t sub_2148F2328(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B9F0, &qword_2149970D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 MATip.submitAction.setter(uint64_t a1)
{
  v3 = v1[7];
  v8[0] = v1[6];
  v8[1] = v3;
  v4 = v1[9];
  v8[2] = v1[8];
  v8[3] = v4;
  sub_21489DFCC(v8, &qword_27CA1B9F0, &qword_2149970D0);
  v5 = *(a1 + 16);
  v1[6] = *a1;
  v1[7] = v5;
  result = *(a1 + 32);
  v7 = *(a1 + 48);
  v1[8] = result;
  v1[9] = v7;
  return result;
}

uint64_t MATip.cancelButtonLabel.getter()
{
  v1 = *(v0 + 160);

  return v1;
}

uint64_t MATip.cancelButtonLabel.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 160) = a1;
  *(v2 + 168) = a2;
  return result;
}

uint64_t MATip.cancelAction.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[12];
  v7[0] = v1[11];
  v7[1] = v2;
  v4 = v1[14];
  v8 = v1[13];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_2148F2328(v7, &v6);
}

__n128 MATip.cancelAction.setter(uint64_t a1)
{
  v3 = v1[12];
  v8[0] = v1[11];
  v8[1] = v3;
  v4 = v1[14];
  v8[2] = v1[13];
  v8[3] = v4;
  sub_21489DFCC(v8, &qword_27CA1B9F0, &qword_2149970D0);
  v5 = *(a1 + 16);
  v1[11] = *a1;
  v1[12] = v5;
  result = *(a1 + 32);
  v7 = *(a1 + 48);
  v1[13] = result;
  v1[14] = v7;
  return result;
}

uint64_t MATip.onAppearFeedbackAction.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[16];
  v7[0] = v1[15];
  v7[1] = v2;
  v4 = v1[18];
  v8 = v1[17];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_2148F2328(v7, &v6);
}

__n128 MATip.onAppearFeedbackAction.setter(uint64_t a1)
{
  v3 = v1[16];
  v8[0] = v1[15];
  v8[1] = v3;
  v4 = v1[18];
  v8[2] = v1[17];
  v8[3] = v4;
  sub_21489DFCC(v8, &qword_27CA1B9F0, &qword_2149970D0);
  v5 = *(a1 + 16);
  v1[15] = *a1;
  v1[16] = v5;
  result = *(a1 + 32);
  v7 = *(a1 + 48);
  v1[17] = result;
  v1[18] = v7;
  return result;
}

uint64_t MATip.onClickFeedbackAction.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[20];
  v7[0] = v1[19];
  v7[1] = v2;
  v4 = v1[22];
  v8 = v1[21];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_2148F2328(v7, &v6);
}

__n128 MATip.onClickFeedbackAction.setter(uint64_t a1)
{
  v3 = v1[20];
  v8[0] = v1[19];
  v8[1] = v3;
  v4 = v1[22];
  v8[2] = v1[21];
  v8[3] = v4;
  sub_21489DFCC(v8, &qword_27CA1B9F0, &qword_2149970D0);
  v5 = *(a1 + 16);
  v1[19] = *a1;
  v1[20] = v5;
  result = *(a1 + 32);
  v7 = *(a1 + 48);
  v1[21] = result;
  v1[22] = v7;
  return result;
}

uint64_t MATip.categories.setter(uint64_t a1)
{

  *(v1 + 368) = a1;
  return result;
}

unint64_t sub_2148F2764(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0xD000000000000015;
    v7 = 0x69726F6765746163;
    if (a1 != 10)
    {
      v7 = 0x6576697463417369;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0xD000000000000011;
    v9 = 0x63416C65636E6163;
    if (a1 != 7)
    {
      v9 = 0xD000000000000016;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 25705;
    v2 = 0x7470697263736564;
    v3 = 0xD000000000000011;
    if (a1 != 4)
    {
      v3 = 0x634174696D627573;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 1852793705;
    if (a1 != 1)
    {
      v4 = 0x656C746974;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_2148F28F4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_2148F2764(*a1);
  v5 = v4;
  if (v3 == sub_2148F2764(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_214990080();
  }

  return v8 & 1;
}

uint64_t sub_2148F297C()
{
  v1 = *v0;
  sub_214990160();
  sub_2148F2764(v1);
  sub_21498F900();

  return sub_214990190();
}

uint64_t sub_2148F29E0(uint64_t a1)
{
  sub_2148F2764(*v1);
  sub_21498F900();
}

uint64_t sub_2148F2A34(uint64_t a1)
{
  v2 = *v1;
  sub_214990160();
  sub_2148F2764(v2);
  sub_21498F900();

  return sub_214990190();
}

unint64_t sub_2148F2A94@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2148F75F0(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_2148F2AC4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_2148F2764(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_2148F2B0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2148F75F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2148F2B40(uint64_t a1)
{
  v2 = sub_2148F68E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2148F2B7C(uint64_t a1)
{
  v2 = sub_2148F68E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MATip.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[6];
  v4 = v0[7];
  v5 = *(v0 + 376);
  sub_21498FE00();

  strcpy(v9, "MATip(tipId: ");
  HIBYTE(v9[1]) = -18;
  MEMORY[0x2160589C0](v1, v2);
  MEMORY[0x2160589C0](0x7463417369202C22, 0xEE0022203A657669);
  if (v5)
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (v5)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x2160589C0](v6, v7);

  MEMORY[0x2160589C0](0x656C746974202C22, 0xEB0000000022203ALL);
  MEMORY[0x2160589C0](v3, v4);
  MEMORY[0x2160589C0](10530, 0xE200000000000000);
  return v9[0];
}

__n128 MATip.init(tipId:icon:title:message:submitButtonLabel:submitAction:cancelButtonLabel:cancelAction:onAppearFeedbackAction:onClickFeedbackAction:categories:isActive:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, _OWORD *a11, uint64_t a12, uint64_t a13, _OWORD *a14, _OWORD *a15, uint64_t a16, uint64_t a17, char a18)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  sub_2148AF724(0, 0, 0, 0);
  v23 = a3[1];
  *(a9 + 16) = *a3;
  *(a9 + 32) = v23;
  *(a9 + 48) = a4;
  *(a9 + 56) = a5;
  *(a9 + 64) = a6;
  *(a9 + 72) = a7;
  *(a9 + 80) = a8;
  *(a9 + 88) = a10;
  memset(v35, 0, sizeof(v35));
  sub_21489DFCC(v35, &qword_27CA1B9F0, &qword_2149970D0);
  v24 = a11[1];
  *(a9 + 96) = *a11;
  *(a9 + 112) = v24;
  v25 = a11[3];
  *(a9 + 128) = a11[2];
  *(a9 + 144) = v25;
  *(a9 + 160) = a12;
  *(a9 + 168) = a13;
  memset(v36, 0, sizeof(v36));
  sub_21489DFCC(v36, &qword_27CA1B9F0, &qword_2149970D0);
  v26 = a14[1];
  *(a9 + 176) = *a14;
  *(a9 + 192) = v26;
  v27 = a14[3];
  *(a9 + 208) = a14[2];
  *(a9 + 224) = v27;
  memset(v37, 0, sizeof(v37));
  sub_21489DFCC(v37, &qword_27CA1B9F0, &qword_2149970D0);
  v28 = a15[1];
  *(a9 + 240) = *a15;
  *(a9 + 256) = v28;
  v29 = a15[3];
  *(a9 + 272) = a15[2];
  *(a9 + 288) = v29;
  memset(v38, 0, 64);
  sub_21489DFCC(v38, &qword_27CA1B9F0, &qword_2149970D0);
  v30 = *(a16 + 16);
  *(a9 + 304) = *a16;
  *(a9 + 320) = v30;
  result = *(a16 + 32);
  v32 = *(a16 + 48);
  *(a9 + 336) = result;
  *(a9 + 352) = v32;
  *(a9 + 368) = a17;
  *(a9 + 376) = a18;
  return result;
}

uint64_t MATip.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B9F8, &unk_2149970D8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v25 - v5;
  v7 = *v1;
  v39 = *(v1 + 8);
  v40 = v7;
  v8 = *(v1 + 16);
  v37 = *(v1 + 24);
  v38 = v8;
  v9 = *(v1 + 32);
  v35 = *(v1 + 40);
  v36 = v9;
  v10 = *(v1 + 48);
  v33 = *(v1 + 56);
  v34 = v10;
  v11 = *(v1 + 72);
  v31 = *(v1 + 64);
  v32 = v11;
  v12 = *(v1 + 88);
  v29 = *(v1 + 80);
  v30 = v12;
  v13 = *(v1 + 112);
  v67 = *(v1 + 96);
  v68 = v13;
  v14 = *(v1 + 144);
  v69 = *(v1 + 128);
  v70 = v14;
  v15 = *(v1 + 168);
  v27 = *(v1 + 160);
  v28 = v15;
  v16 = *(v1 + 192);
  v71 = *(v1 + 176);
  v72 = v16;
  v17 = *(v1 + 224);
  v73 = *(v1 + 208);
  v74 = v17;
  v18 = *(v1 + 256);
  v75 = *(v1 + 240);
  v76 = v18;
  v19 = *(v1 + 288);
  v77 = *(v1 + 272);
  v78 = v19;
  v20 = *(v1 + 352);
  v81 = *(v1 + 336);
  v82 = v20;
  v21 = *(v1 + 320);
  v79 = *(v1 + 304);
  v80 = v21;
  v26 = *(v1 + 368);
  v25[1] = *(v1 + 376);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2148F68E8();
  sub_2149901C0();
  LOBYTE(v63) = 0;
  v22 = v83;
  sub_214990000();
  if (v22)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v83 = v4;
  *&v63 = v38;
  *(&v63 + 1) = v37;
  *&v64 = v36;
  *(&v64 + 1) = v35;
  LOBYTE(v61[0]) = 1;
  sub_2148F20B8(v38, v37, v36, v35);
  sub_2148F693C();
  sub_21498FFE0();
  sub_2148AF724(v63, *(&v63 + 1), v64, *(&v64 + 1));
  LOBYTE(v63) = 2;
  sub_214990000();
  LOBYTE(v63) = 3;
  sub_21498FFC0();
  LOBYTE(v63) = 4;
  sub_21498FFC0();
  v63 = v67;
  v64 = v68;
  v65 = v69;
  v66 = v70;
  v62 = 5;
  sub_2148F2328(&v67, v61);
  v24 = sub_2148F6990();
  sub_21498FFE0();
  v40 = v24;
  v61[0] = v63;
  v61[1] = v64;
  v61[2] = v65;
  v61[3] = v66;
  sub_21489DFCC(v61, &qword_27CA1B9F0, &qword_2149970D0);
  LOBYTE(v57) = 6;
  sub_21498FFC0();
  v57 = v71;
  v58 = v72;
  v59 = v73;
  v60 = v74;
  v56 = 7;
  sub_2148F2328(&v71, v55);
  sub_21498FFE0();
  v55[0] = v57;
  v55[1] = v58;
  v55[2] = v59;
  v55[3] = v60;
  sub_21489DFCC(v55, &qword_27CA1B9F0, &qword_2149970D0);
  v51 = v75;
  v52 = v76;
  v53 = v77;
  v54 = v78;
  v50 = 8;
  sub_2148F2328(&v75, v49);
  sub_21498FFE0();
  v49[0] = v51;
  v49[1] = v52;
  v49[2] = v53;
  v49[3] = v54;
  sub_21489DFCC(v49, &qword_27CA1B9F0, &qword_2149970D0);
  v45 = v79;
  v46 = v80;
  v47 = v81;
  v48 = v82;
  v44 = 9;
  sub_2148F2328(&v79, v43);
  sub_21498FFE0();
  v43[0] = v45;
  v43[1] = v46;
  v43[2] = v47;
  v43[3] = v48;
  sub_21489DFCC(v43, &qword_27CA1B9F0, &qword_2149970D0);
  v42 = v26;
  v41 = 10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A378, &qword_214993B80);
  sub_2148F6A8C(&qword_281190CF8, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
  sub_21498FFE0();
  LOBYTE(v42) = 11;
  sub_214990010();
  return (*(v83 + 8))(v6, v3);
}

uint64_t MATip.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1BA00, &qword_2149970E8);
  v5 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v7 = &v72 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2148F68E8();
  sub_2149901B0();
  if (v2)
  {
    v109 = v2;
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_2148AF724(0, 0, 0, 0);
    v93 = 0;
    v90 = 0;
    v91 = 0;
    v108 = 0uLL;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v107 = 0uLL;
    v106 = 0uLL;
    v105 = 0uLL;
    v103 = 0;
    v104 = 0;
    v18 = 0;
    v97 = 0;
    v98 = 0;
    v92 = 0uLL;
    v94 = 0uLL;
    v95 = 0uLL;
    v96 = 0uLL;
    v99 = 0;
    v100 = 0;
    v101 = 0;
    v102 = 0;
    v19 = 0;
LABEL_4:

    *&v167 = v17;
    *(&v167 + 1) = v16;
    *&v168 = v15;
    *(&v168 + 1) = v14;
    *&v169 = v13;
    *(&v169 + 1) = v90;
    v170 = v108;
    sub_21489DFCC(&v167, &qword_27CA1B9F0, &qword_2149970D0);

    v171 = v18;
    v172 = v104;
    v173 = v105;
    v174 = v106;
    v175 = v107;
    sub_21489DFCC(&v171, &qword_27CA1B9F0, &qword_2149970D0);
    *&v110[0] = v19;
    *(&v110[0] + 1) = v103;
    *&v110[1] = v102;
    *(&v110[1] + 1) = v101;
    *&v110[2] = v100;
    *(&v110[2] + 1) = v99;
    *&v110[3] = v98;
    *(&v110[3] + 1) = v97;
    sub_21489DFCC(v110, &qword_27CA1B9F0, &qword_2149970D0);
    v111 = v92;
    v112 = v94;
    v113 = v95;
    v114 = v96;
    sub_21489DFCC(&v111, &qword_27CA1B9F0, &qword_2149970D0);
  }

  v8 = v5;
  v9 = a2;
  LOBYTE(v111) = 0;
  v10 = v90;
  v11 = sub_21498FF60();
  v109 = 0;
  v21 = v11;
  v81 = v12;
  LOBYTE(v110[0]) = 1;
  sub_2148F69E4();
  v22 = v109;
  sub_21498FF40();
  v109 = v22;
  if (v22)
  {
    (*(v8 + 8))(v7, v10);
    v78 = 0;
    v79 = 0;
    v86 = 0;
    v87 = 0;
    v84 = 0;
    v85 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v83 = 0;
    v82 = 0uLL;
    v26 = 0;
    v27 = 0;
    v93 = 0;
    v80 = 0;
LABEL_12:
    __swift_destroy_boxed_opaque_existential_1(a1);
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v92 = 0uLL;
    v48 = 0;
    v49 = 0;
    v50 = 0;
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v91 = 0;
LABEL_13:
    *&v94 = v47;
    *(&v94 + 1) = v46;
    *&v95 = v45;
    *(&v95 + 1) = v44;
    *&v96 = v43;
    *(&v96 + 1) = v42;
    v97 = v49;
    v98 = v48;
    v99 = v41;
    v100 = v40;
    v101 = v39;
    v102 = v38;
    v103 = v37;
    v104 = v51;
    v88 = v36;
    v89 = v50;
    *&v105 = v52;
    *(&v105 + 1) = v53;
    *&v106 = v54;
    *(&v106 + 1) = v55;
    *&v107 = v56;
    *(&v107 + 1) = v57;
    *&v108 = v24;
    *(&v108 + 1) = v26;
    v90 = v23;

    sub_2148AF724(v82, *(&v82 + 1), v83, v25);
    if (v27)
    {
    }

    v15 = v86;
    v16 = v87;
    v13 = v84;
    v14 = v85;
    v19 = v88;
    v18 = v89;
    v17 = v78;
    goto LABEL_4;
  }

  v82 = v111;
  v77 = *(&v112 + 1);
  v83 = v112;
  sub_2148AF724(0, 0, 0, 0);
  LOBYTE(v111) = 2;
  v28 = v109;
  v29 = sub_21498FF60();
  if (v28)
  {
    v109 = v28;
    (*(v8 + 8))(v7, v10);
    v78 = 0;
    v79 = 0;
    v86 = 0;
    v87 = 0;
    v84 = 0;
    v85 = 0;
    v23 = 0;
    v24 = 0;
    v26 = 0;
    v27 = 0;
    v93 = 0;
    v80 = 0;
LABEL_11:
    v25 = v77;
    goto LABEL_12;
  }

  *&v76 = v29;
  *(&v76 + 1) = v30;
  LOBYTE(v111) = 3;
  v75 = sub_21498FF20();
  v80 = v31;
  LOBYTE(v111) = 4;
  v32 = sub_21498FF20();
  v109 = 0;
  v73 = v32;
  v74 = v21;
  v79 = v33;
  v180 = 5;
  v34 = sub_2148F6A38();
  v35 = v109;
  sub_21498FF40();
  v109 = v35;
  if (v35)
  {
    (*(v8 + 8))(v7, v10);
    v78 = 0;
    v86 = 0;
    v87 = 0;
    v84 = 0;
    v85 = 0;
    v23 = 0;
    v24 = 0;
    v26 = 0;
    v93 = 0;
    v27 = 1;
    goto LABEL_11;
  }

  *(&v96 + 1) = v34;
  v78 = v171;
  v86 = v173;
  v87 = v172;
  v85 = *(&v173 + 1);
  v23 = *(&v174 + 1);
  v58 = v174;
  v108 = v175;
  v167 = 0u;
  v168 = 0u;
  v169 = 0u;
  v170 = 0u;
  sub_21489DFCC(&v167, &qword_27CA1B9F0, &qword_2149970D0);
  LOBYTE(v111) = 6;
  v59 = v109;
  v60 = sub_21498FF20();
  v84 = v58;
  if (v59)
  {
    v109 = v59;
    (*(v8 + 8))(v7, v10);
    v93 = 0;
    v27 = 1;
    v26 = *(&v108 + 1);
    v24 = v108;
    goto LABEL_11;
  }

  v72 = v60;
  v93 = v61;
  v179 = 7;
  sub_21498FF40();
  v109 = 0;
  v89 = v162;
  v104 = v163;
  v105 = v164;
  v106 = v165;
  v107 = v166;
  memset(v161, 0, sizeof(v161));
  sub_21489DFCC(v161, &qword_27CA1B9F0, &qword_2149970D0);
  v178 = 8;
  v62 = v109;
  sub_21498FF40();
  v109 = v62;
  if (v62)
  {
    (*(v8 + 8))(v7, v10);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v92 = 0uLL;
    v48 = 0;
    v49 = 0;
    v91 = 0;
    v27 = 1;
    v26 = *(&v108 + 1);
    v24 = v108;
    v25 = v77;
    v57 = *(&v107 + 1);
    v56 = v107;
    v55 = *(&v106 + 1);
    v54 = v106;
    v53 = *(&v105 + 1);
    v52 = v105;
    v51 = v104;
    v50 = v89;
    goto LABEL_13;
  }

  v88 = v153;
  v102 = v155;
  v103 = v154;
  v100 = v157;
  v101 = v156;
  v98 = v159;
  v99 = v158;
  v97 = v160;
  memset(v152, 0, sizeof(v152));
  sub_21489DFCC(v152, &qword_27CA1B9F0, &qword_2149970D0);
  v177 = 9;
  v63 = v109;
  sub_21498FF40();
  v109 = v63;
  if (v63)
  {
    (*(v8 + 8))(v7, v90);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v92 = 0uLL;
    v91 = 0;
    v27 = 1;
    v26 = *(&v108 + 1);
    v24 = v108;
    v25 = v77;
    v57 = *(&v107 + 1);
    v56 = v107;
    v55 = *(&v106 + 1);
    v54 = v106;
    v53 = *(&v105 + 1);
    v52 = v105;
    v37 = v103;
    v51 = v104;
    v36 = v88;
    v50 = v89;
    v39 = v101;
    v38 = v102;
    v41 = v99;
    v40 = v100;
    v49 = v97;
    v48 = v98;
    goto LABEL_13;
  }

  v92 = v148;
  v94 = v149;
  v95 = v150;
  v96 = v151;
  memset(v147, 0, sizeof(v147));
  sub_21489DFCC(v147, &qword_27CA1B9F0, &qword_2149970D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A378, &qword_214993B80);
  LOBYTE(v110[0]) = 10;
  sub_2148F6A8C(&qword_281190CE8, MEMORY[0x277D83808], MEMORY[0x277D83978]);
  v64 = v109;
  sub_21498FF40();
  v109 = v64;
  if (v64)
  {
    (*(v8 + 8))(v7, v90);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v91 = 0;
    v27 = 1;
    v26 = *(&v108 + 1);
    v24 = v108;
    v25 = v77;
    v57 = *(&v107 + 1);
    v56 = v107;
    v55 = *(&v106 + 1);
    v54 = v106;
    v53 = *(&v105 + 1);
    v52 = v105;
    v37 = v103;
    v51 = v104;
    v36 = v88;
    v50 = v89;
    v39 = v101;
    v38 = v102;
    v41 = v99;
    v40 = v100;
    v49 = v97;
    v48 = v98;
    v42 = *(&v96 + 1);
    v43 = v96;
    v44 = *(&v95 + 1);
    v45 = v95;
    v46 = *(&v94 + 1);
    v47 = v94;
    goto LABEL_13;
  }

  v91 = v111;
  v176 = 11;
  v65 = sub_21498FF70();
  v109 = 0;
  v66 = v65;
  (*(v8 + 8))(v7, v90);
  LODWORD(v90) = v66 & 1;
  v67 = v80;
  v68 = v81;
  *&v110[0] = v74;
  *(&v110[0] + 1) = v81;
  v110[1] = v82;
  v69 = v78;
  *&v110[2] = v83;
  *(&v110[2] + 1) = v77;
  v110[3] = v76;
  *&v110[4] = v75;
  *(&v110[4] + 1) = v80;
  v70 = v79;
  *&v110[5] = v73;
  *(&v110[5] + 1) = v79;
  *&v110[6] = v78;
  *(&v110[6] + 1) = v87;
  *&v110[7] = v86;
  *(&v110[7] + 1) = v85;
  *&v110[8] = v84;
  *(&v110[8] + 1) = v23;
  v71 = v108;
  v110[9] = v108;
  *&v110[10] = v72;
  *(&v110[10] + 1) = v93;
  *&v110[11] = v89;
  *(&v110[11] + 1) = v104;
  v110[12] = v105;
  v110[13] = v106;
  v110[14] = v107;
  *&v110[15] = v88;
  *(&v110[15] + 1) = v103;
  *&v110[16] = v102;
  *(&v110[16] + 1) = v101;
  *&v110[17] = v100;
  *(&v110[17] + 1) = v99;
  *&v110[18] = v98;
  *(&v110[18] + 1) = v97;
  v110[19] = v92;
  v110[20] = v94;
  v110[21] = v95;
  v110[22] = v96;
  *&v110[23] = v91;
  BYTE8(v110[23]) = v90;
  memcpy(v9, v110, 0x179uLL);
  sub_2148D8FC8(v110, &v111);
  __swift_destroy_boxed_opaque_existential_1(a1);
  *&v111 = v74;
  *(&v111 + 1) = v68;
  v112 = v82;
  *&v113 = v83;
  *(&v113 + 1) = v77;
  v114 = v76;
  v115 = v75;
  v116 = v67;
  v117 = v73;
  v118 = v70;
  v119 = v69;
  v120 = v87;
  v121 = v86;
  v122 = v85;
  v123 = v84;
  v124 = v23;
  v125 = __PAIR128__(*(&v108 + 1), v71);
  v126 = v72;
  v127 = v93;
  v128 = v89;
  v129 = v104;
  v130 = v105;
  v131 = v106;
  v132 = v107;
  v133 = v88;
  v134 = v103;
  v135 = v102;
  v136 = v101;
  v137 = v100;
  v138 = v99;
  v139 = v98;
  v140 = v97;
  v141 = v92;
  v142 = v94;
  v143 = v95;
  v144 = v96;
  v145 = v91;
  v146 = v90;
  return sub_2148F6AF8(&v111);
}

uint64_t sub_2148F4230@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t MATipIcon.type.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MATipIcon.type.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t MATipIcon.value.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t MATipIcon.value.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t static MATipIcon.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_214990080(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_214990080();
    }
  }

  return result;
}

uint64_t sub_2148F4428()
{
  if (*v0)
  {
    return 0x65756C6176;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_2148F4458@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (sub_214990080() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_214990080();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2148F4530(uint64_t a1)
{
  v2 = sub_2148F6B28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2148F456C(uint64_t a1)
{
  v2 = sub_2148F6B28();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MATipIcon.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1BA08, &qword_2149970F0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v10[1] = *(v1 + 24);
  v10[2] = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2148F6B28();
  sub_2149901C0();
  v12 = 0;
  v8 = v10[3];
  sub_214990000();
  if (!v8)
  {
    v11 = 1;
    sub_214990000();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t MATipIcon.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1BA10, &qword_2149970F8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2148F6B28();
  sub_2149901B0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = 0;
  v9 = sub_21498FF60();
  v11 = v10;
  v17 = v9;
  v18 = 1;
  v12 = sub_21498FF60();
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  *a2 = v17;
  a2[1] = v11;
  a2[2] = v12;
  a2[3] = v14;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2148F496C(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_214990080(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_214990080();
    }
  }

  return result;
}

uint64_t MATipAction.actionType.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MATipAction.actionType.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t MATipAction.url.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t MATipAction.url.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t MATipAction.httpMethod.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t MATipAction.httpMethod.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t MATipAction.requestBody.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t MATipAction.requestBody.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t sub_2148F4C34()
{
  v1 = 0x79546E6F69746361;
  v2 = 0x6874654D70747468;
  if (*v0 != 2)
  {
    v2 = 0x4274736575716572;
  }

  if (*v0)
  {
    v1 = 7107189;
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

uint64_t sub_2148F4CB4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2148F763C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2148F4CDC(uint64_t a1)
{
  v2 = sub_2148F6B7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2148F4D18(uint64_t a1)
{
  v2 = sub_2148F6B7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MATipAction.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1BA18, &qword_214997100);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v12 - v5;
  v7 = v1[2];
  v12[5] = v1[3];
  v12[6] = v7;
  v8 = v1[4];
  v12[3] = v1[5];
  v12[4] = v8;
  v9 = v1[6];
  v12[1] = v1[7];
  v12[2] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2148F6B7C();
  sub_2149901C0();
  v16 = 0;
  v10 = v12[7];
  sub_214990000();
  if (v10)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v15 = 1;
  sub_21498FFC0();
  v14 = 2;
  sub_21498FFC0();
  v13 = 3;
  sub_21498FFC0();
  return (*(v4 + 8))(v6, v3);
}

uint64_t MATipAction.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1BA20, &qword_214997108);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2148F6B7C();
  sub_2149901B0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v32[0]) = 0;
  v9 = sub_21498FF60();
  v11 = v10;
  v28 = v9;
  LOBYTE(v32[0]) = 1;
  *&v27 = sub_21498FF20();
  *(&v27 + 1) = v12;
  LOBYTE(v32[0]) = 2;
  v13 = sub_21498FF20();
  v15 = v14;
  v26 = v13;
  v38 = 3;
  v16 = sub_21498FF20();
  v17 = v8;
  v19 = v18;
  (*(v6 + 8))(v17, v5);
  v20 = v28;
  *&v29[0] = v28;
  *(&v29[0] + 1) = v11;
  v21 = v27;
  v29[1] = v27;
  *&v30 = v26;
  *(&v30 + 1) = v15;
  *&v31 = v16;
  *(&v31 + 1) = v19;
  v22 = v27;
  *a2 = v29[0];
  a2[1] = v22;
  v23 = v31;
  a2[2] = v30;
  a2[3] = v23;
  sub_2148F6BD0(v29, v32);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v32[0] = v20;
  v32[1] = v11;
  v33 = __PAIR128__(*(&v27 + 1), v21);
  v34 = v26;
  v35 = v15;
  v36 = v16;
  v37 = v19;
  return sub_2148F6C08(v32);
}

uint64_t MATipDismissal.description.getter()
{
  sub_21498FE00();
  MEMORY[0x2160589C0](0x287373696D736944, 0xE900000000000022);
  MEMORY[0x2160589C0](*v0, v0[1]);
  MEMORY[0x2160589C0](0xD000000000000013, 0x80000002149A21C0);
  type metadata accessor for MATipDismissal(0);
  sub_21498E320();
  sub_2148F6CD8(&qword_27CA1BA28, MEMORY[0x277CC95B8]);
  v1 = sub_214990050();
  MEMORY[0x2160589C0](v1);

  MEMORY[0x2160589C0](0xD000000000000012, 0x80000002149A21E0);
  v2 = sub_214990050();
  MEMORY[0x2160589C0](v2);

  MEMORY[0x2160589C0](10530, 0xE200000000000000);
  return 0;
}

BOOL static MATipDismissal.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (sub_214990080()) && (v5 = type metadata accessor for MATipDismissal(0), (sub_21498E2F0()))
  {
    return *(a1 + *(v5 + 24)) == *(a2 + *(v5 + 24));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2148F5458()
{
  v1 = 0x6D73694465746164;
  if (*v0 != 1)
  {
    v1 = 0x65747441636E7973;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6449706974;
  }
}

uint64_t sub_2148F54C4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2148F77B4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2148F54EC(uint64_t a1)
{
  v2 = sub_2148F6C84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2148F5528(uint64_t a1)
{
  v2 = sub_2148F6C84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MATipDismissal.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1BA30, &qword_214997110);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2148F6C84();
  sub_2149901C0();
  v8[15] = 0;
  sub_214990000();
  if (!v1)
  {
    type metadata accessor for MATipDismissal(0);
    v8[14] = 1;
    sub_21498E320();
    sub_2148F6CD8(&qword_2811926F8, MEMORY[0x277CC9580]);
    sub_214990040();
    v8[13] = 2;
    sub_214990030();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t MATipDismissal.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v25 = sub_21498E320();
  v23 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1BA40, &qword_214997118);
  v24 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v7 = v19 - v6;
  v8 = type metadata accessor for MATipDismissal(0);
  MEMORY[0x28223BE20](v8);
  v10 = (v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2148F6C84();
  sub_2149901B0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = v8;
  v21 = a1;
  v12 = v24;
  v11 = v25;
  v29 = 0;
  *v10 = sub_21498FF60();
  v10[1] = v13;
  v19[2] = v13;
  v28 = 1;
  sub_2148F6CD8(&qword_2811926E0, MEMORY[0x277CC95A0]);
  sub_21498FFA0();
  (*(v23 + 32))(v10 + *(v20 + 20), v5, v11);
  v27 = 2;
  v19[1] = 0;
  v14 = sub_21498FF90();
  v15 = v21;
  v16 = v14;
  v17 = *(v20 + 24);
  (*(v12 + 8))(v7, v26);
  *(v10 + v17) = v16;
  sub_2148F6D1C(v10, v22);
  __swift_destroy_boxed_opaque_existential_1(v15);
  return sub_2148F6D80(v10);
}

uint64_t _s19iCloudMailAssistant11MATipActionV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a1[7];
  v8 = a2[2];
  v7 = a2[3];
  v10 = a2[4];
  v9 = a2[5];
  v11 = a2[7];
  v13 = a2[6];
  v14 = a1[6];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_214990080() & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (!v7 || (v2 != v8 || v4 != v7) && (sub_214990080() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if (v5)
  {
    if (!v9 || (v3 != v10 || v5 != v9) && (sub_214990080() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (v6)
  {
    if (v11 && (v14 == v13 && v6 == v11 || (sub_214990080() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v11)
  {
    return 1;
  }

  return 0;
}

uint64_t _s19iCloudMailAssistant5MATipV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v9 = a1[5];
  v81 = a1[7];
  v82 = a1[6];
  v74 = a1[8];
  v10 = a1[10];
  v78 = a1[9];
  v76 = a1[11];
  v11 = *(a1 + 7);
  v113[0] = *(a1 + 6);
  v113[1] = v11;
  v12 = *(a1 + 9);
  v113[2] = *(a1 + 8);
  v113[3] = v12;
  v68 = a1[20];
  v70 = a1[21];
  v71 = v10;
  v13 = *(a1 + 14);
  v116 = *(a1 + 13);
  v117 = v13;
  v14 = *(a1 + 12);
  v114 = *(a1 + 11);
  v115 = v14;
  v15 = *(a1 + 18);
  v120 = *(a1 + 17);
  v121 = v15;
  v16 = *(a1 + 16);
  v118 = *(a1 + 15);
  v119 = v16;
  v17 = *(a1 + 19);
  v18 = *(a1 + 20);
  v19 = *(a1 + 22);
  v124 = *(a1 + 21);
  v125 = v19;
  v122 = v17;
  v123 = v18;
  v66 = a1[46];
  v64 = *(a1 + 376);
  v20 = *a2;
  v21 = a2[1];
  v23 = a2[2];
  v22 = a2[3];
  v24 = a2[4];
  v25 = a2[5];
  v79 = a2[7];
  v80 = a2[6];
  v77 = a2[9];
  v72 = a2[10];
  v73 = a2[8];
  v75 = a2[11];
  v26 = *(a2 + 6);
  v27 = *(a2 + 7);
  v28 = *(a2 + 9);
  v126[2] = *(a2 + 8);
  v126[3] = v28;
  v126[0] = v26;
  v126[1] = v27;
  v29 = *(a2 + 11);
  v30 = *(a2 + 12);
  v31 = *(a2 + 14);
  v129 = *(a2 + 13);
  v130 = v31;
  v127 = v29;
  v128 = v30;
  v32 = *(a2 + 15);
  v33 = *(a2 + 16);
  v34 = *(a2 + 18);
  v133 = *(a2 + 17);
  v134 = v34;
  v131 = v32;
  v132 = v33;
  v35 = *(a2 + 19);
  v36 = *(a2 + 20);
  v37 = *(a2 + 22);
  v137 = *(a2 + 21);
  v138 = v37;
  v135 = v35;
  v136 = v36;
  v67 = a2[20];
  v69 = a2[21];
  v65 = a2[46];
  v63 = *(a2 + 376);
  if ((v4 != v20 || v5 != v21) && (sub_214990080() & 1) == 0)
  {
    return 0;
  }

  if (!v7)
  {
    sub_2148F20B8(v6, 0, v8, v9);
    if (!v22)
    {
      sub_2148F20B8(v23, 0, v24, v25);
      v7 = 0;
      goto LABEL_22;
    }

    sub_2148F20B8(v23, v22, v24, v25);
    goto LABEL_15;
  }

  if (!v22)
  {
    sub_2148F20B8(v6, v7, v8, v9);
    sub_2148F20B8(v23, 0, v24, v25);
    sub_2148F20B8(v6, v7, v8, v9);

LABEL_15:
    sub_2148AF724(v6, v7, v8, v9);
    v38 = v23;
    v39 = v22;
    v40 = v24;
    v41 = v25;
LABEL_16:
    sub_2148AF724(v38, v39, v40, v41);
    return 0;
  }

  if ((v6 != v23 || v7 != v22) && (sub_214990080() & 1) == 0)
  {
    sub_2148F20B8(v6, v7, v8, v9);
    sub_2148F20B8(v23, v22, v24, v25);
    sub_2148F20B8(v6, v7, v8, v9);
    sub_2148AF724(v23, v22, v24, v25);

    v38 = v6;
    v39 = v7;
    v40 = v8;
    v41 = v9;
    goto LABEL_16;
  }

  if (v8 == v24 && v9 == v25)
  {
    sub_2148F20B8(v6, v7, v8, v9);
    sub_2148F20B8(v23, v22, v8, v9);
    sub_2148F20B8(v6, v7, v8, v9);
    sub_2148AF724(v23, v22, v8, v9);

LABEL_22:
    sub_2148AF724(v6, v7, v8, v9);
    goto LABEL_23;
  }

  v62 = sub_214990080();
  sub_2148F20B8(v6, v7, v8, v9);
  sub_2148F20B8(v23, v22, v24, v25);
  sub_2148F20B8(v6, v7, v8, v9);
  sub_2148AF724(v23, v22, v24, v25);

  sub_2148AF724(v6, v7, v8, v9);
  if ((v62 & 1) == 0)
  {
    return 0;
  }

LABEL_23:
  if ((v82 != v80 || v81 != v79) && (sub_214990080() & 1) == 0)
  {
    return 0;
  }

  if (v78)
  {
    if (!v77 || (v74 != v73 || v78 != v77) && (sub_214990080() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v77)
  {
    return 0;
  }

  if (v76)
  {
    if (!v75 || (v71 != v72 || v76 != v75) && (sub_214990080() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v75)
  {
    return 0;
  }

  v43 = v113[0];
  v44 = v126[0];
  if (!*(&v113[0] + 1))
  {
    if (!*(&v126[0] + 1))
    {
      v105 = *&v113[0];
      v52 = *(a1 + 8);
      v106 = *(a1 + 7);
      v107 = v52;
      v108 = *(a1 + 9);
      sub_2148F2328(v113, &v101);
      sub_2148F2328(v126, &v101);
      sub_21489DFCC(&v105, &qword_27CA1B9F0, &qword_2149970D0);
      goto LABEL_51;
    }

    sub_2148F2328(v113, &v105);
    sub_2148F2328(v126, &v105);
LABEL_48:
    v105 = v43;
    v49 = *(a1 + 8);
    v106 = *(a1 + 7);
    v107 = v49;
    v108 = *(a1 + 9);
    v109 = v44;
    v50 = *(a2 + 8);
    v110 = *(a2 + 7);
    v111 = v50;
    v51 = *(a2 + 9);
LABEL_49:
    v112 = v51;
    sub_21489DFCC(&v105, &qword_27CA1BA78, qword_214997A60);
    return 0;
  }

  v105 = v113[0];
  v45 = *(a1 + 8);
  v106 = *(a1 + 7);
  v107 = v45;
  v108 = *(a1 + 9);
  v101 = v113[0];
  v102 = v106;
  v103 = v45;
  v104 = v108;
  if (!*(&v126[0] + 1))
  {
    v91 = v105;
    v92 = v106;
    v93 = v107;
    v94 = v108;
    sub_2148F2328(v113, &v87);
    sub_2148F2328(v126, &v87);
    sub_2148F2328(&v105, &v87);
    sub_2148F6C08(&v91);
    goto LABEL_48;
  }

  v46 = *(a2 + 8);
  v92 = *(a2 + 7);
  v93 = v46;
  v94 = *(a2 + 9);
  v91 = v126[0];
  v47 = _s19iCloudMailAssistant11MATipActionV2eeoiySbAC_ACtFZ_0(&v101, &v91);
  v83 = v91;
  v84 = v92;
  v85 = v93;
  v86 = v94;
  sub_2148F2328(v113, &v87);
  sub_2148F2328(v126, &v87);
  sub_2148F2328(&v105, &v87);
  sub_2148F6C08(&v83);
  v87 = v101;
  v88 = v102;
  v89 = v103;
  v90 = v104;
  sub_2148F6C08(&v87);
  v91 = v43;
  v48 = *(a1 + 8);
  v92 = *(a1 + 7);
  v93 = v48;
  v94 = *(a1 + 9);
  sub_21489DFCC(&v91, &qword_27CA1B9F0, &qword_2149970D0);
  if ((v47 & 1) == 0)
  {
    return 0;
  }

LABEL_51:
  if (v70)
  {
    if (!v69 || (v68 != v67 || v70 != v69) && (sub_214990080() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v69)
  {
    return 0;
  }

  v54 = *(&v114 + 1);
  v53 = v114;
  v98 = v115;
  v99 = v116;
  v100 = v117;
  v55 = *(&v127 + 1);
  v56 = v127;
  v95 = v128;
  v96 = v129;
  v97 = v130;
  if (*(&v114 + 1))
  {
    v105 = v114;
    v106 = v115;
    v107 = v116;
    v108 = v117;
    v101 = v114;
    v102 = v115;
    v103 = v116;
    v104 = v117;
    if (!*(&v127 + 1))
    {
      v91 = v105;
      v92 = v106;
      v93 = v107;
      v94 = v108;
      sub_2148F2328(&v114, &v87);
      v59 = &v127;
LABEL_82:
      sub_2148F2328(v59, &v87);
      sub_2148F2328(&v105, &v87);
      sub_2148F6C08(&v91);
      goto LABEL_83;
    }

    v92 = v128;
    v93 = v129;
    v94 = v130;
    v91 = v127;
    v57 = _s19iCloudMailAssistant11MATipActionV2eeoiySbAC_ACtFZ_0(&v101, &v91);
    v83 = v91;
    v84 = v92;
    v85 = v93;
    v86 = v94;
    sub_2148F2328(&v114, &v87);
    sub_2148F2328(&v127, &v87);
    sub_2148F2328(&v105, &v87);
    sub_2148F6C08(&v83);
    v87 = v101;
    v88 = v102;
    v89 = v103;
    v90 = v104;
    sub_2148F6C08(&v87);
    v91 = __PAIR128__(v54, v53);
    v92 = v98;
    v93 = v99;
    v94 = v100;
    sub_21489DFCC(&v91, &qword_27CA1B9F0, &qword_2149970D0);
    if ((v57 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(&v127 + 1))
    {
      sub_2148F2328(&v114, &v105);
      v58 = &v127;
      goto LABEL_80;
    }

    v105 = v114;
    v106 = v115;
    v107 = v116;
    v108 = v117;
    sub_2148F2328(&v114, &v101);
    sub_2148F2328(&v127, &v101);
    sub_21489DFCC(&v105, &qword_27CA1B9F0, &qword_2149970D0);
  }

  v54 = *(&v118 + 1);
  v53 = v118;
  v98 = v119;
  v99 = v120;
  v100 = v121;
  v55 = *(&v131 + 1);
  v56 = v131;
  v95 = v132;
  v96 = v133;
  v97 = v134;
  if (!*(&v118 + 1))
  {
    if (!*(&v131 + 1))
    {
      v105 = v118;
      v106 = v119;
      v107 = v120;
      v108 = v121;
      sub_2148F2328(&v118, &v101);
      sub_2148F2328(&v131, &v101);
      sub_21489DFCC(&v105, &qword_27CA1B9F0, &qword_2149970D0);
      goto LABEL_74;
    }

    sub_2148F2328(&v118, &v105);
    v58 = &v131;
LABEL_80:
    sub_2148F2328(v58, &v105);
LABEL_83:
    *&v105 = v53;
    *(&v105 + 1) = v54;
    v106 = v98;
    v107 = v99;
    v108 = v100;
    *&v109 = v56;
    *(&v109 + 1) = v55;
    v110 = v95;
    v111 = v96;
    v51 = v97;
    goto LABEL_49;
  }

  v105 = v118;
  v106 = v119;
  v107 = v120;
  v108 = v121;
  v101 = v118;
  v102 = v119;
  v103 = v120;
  v104 = v121;
  if (!*(&v131 + 1))
  {
    v91 = v105;
    v92 = v106;
    v93 = v107;
    v94 = v108;
    sub_2148F2328(&v118, &v87);
    v59 = &v131;
    goto LABEL_82;
  }

  v92 = v132;
  v93 = v133;
  v94 = v134;
  v91 = v131;
  v60 = _s19iCloudMailAssistant11MATipActionV2eeoiySbAC_ACtFZ_0(&v101, &v91);
  v83 = v91;
  v84 = v92;
  v85 = v93;
  v86 = v94;
  sub_2148F2328(&v118, &v87);
  sub_2148F2328(&v131, &v87);
  sub_2148F2328(&v105, &v87);
  sub_2148F6C08(&v83);
  v87 = v101;
  v88 = v102;
  v89 = v103;
  v90 = v104;
  sub_2148F6C08(&v87);
  v91 = __PAIR128__(v54, v53);
  v92 = v98;
  v93 = v99;
  v94 = v100;
  sub_21489DFCC(&v91, &qword_27CA1B9F0, &qword_2149970D0);
  if ((v60 & 1) == 0)
  {
    return 0;
  }

LABEL_74:
  v54 = *(&v122 + 1);
  v53 = v122;
  v98 = v123;
  v99 = v124;
  v100 = v125;
  v55 = *(&v135 + 1);
  v56 = v135;
  v95 = v136;
  v96 = v137;
  v97 = v138;
  if (*(&v122 + 1))
  {
    v105 = v122;
    v106 = v123;
    v107 = v124;
    v108 = v125;
    v101 = v122;
    v102 = v123;
    v103 = v124;
    v104 = v125;
    if (*(&v135 + 1))
    {
      v92 = v136;
      v93 = v137;
      v94 = v138;
      v91 = v135;
      v61 = _s19iCloudMailAssistant11MATipActionV2eeoiySbAC_ACtFZ_0(&v101, &v91);
      v83 = v91;
      v84 = v92;
      v85 = v93;
      v86 = v94;
      sub_2148F2328(&v122, &v87);
      sub_2148F2328(&v135, &v87);
      sub_2148F2328(&v105, &v87);
      sub_2148F6C08(&v83);
      v87 = v101;
      v88 = v102;
      v89 = v103;
      v90 = v104;
      sub_2148F6C08(&v87);
      v91 = __PAIR128__(v54, v53);
      v92 = v98;
      v93 = v99;
      v94 = v100;
      sub_21489DFCC(&v91, &qword_27CA1B9F0, &qword_2149970D0);
      if ((v61 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_85;
    }

    v91 = v105;
    v92 = v106;
    v93 = v107;
    v94 = v108;
    sub_2148F2328(&v122, &v87);
    v59 = &v135;
    goto LABEL_82;
  }

  if (*(&v135 + 1))
  {
    sub_2148F2328(&v122, &v105);
    v58 = &v135;
    goto LABEL_80;
  }

  v105 = v122;
  v106 = v123;
  v107 = v124;
  v108 = v125;
  sub_2148F2328(&v122, &v101);
  sub_2148F2328(&v135, &v101);
  sub_21489DFCC(&v105, &qword_27CA1B9F0, &qword_2149970D0);
LABEL_85:
  if (v66)
  {
    if (v65 && (sub_21497A734(v66, v65) & 1) != 0)
    {
      return v64 ^ v63 ^ 1u;
    }
  }

  else if (!v65)
  {
    return v64 ^ v63 ^ 1u;
  }

  return 0;
}

unint64_t sub_2148F68E8()
{
  result = qword_281190FD0;
  if (!qword_281190FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281190FD0);
  }

  return result;
}

unint64_t sub_2148F693C()
{
  result = qword_281190EF8;
  if (!qword_281190EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281190EF8);
  }

  return result;
}

unint64_t sub_2148F6990()
{
  result = qword_281191C78;
  if (!qword_281191C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281191C78);
  }

  return result;
}

unint64_t sub_2148F69E4()
{
  result = qword_281190EF0;
  if (!qword_281190EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281190EF0);
  }

  return result;
}

unint64_t sub_2148F6A38()
{
  result = qword_281191C70;
  if (!qword_281191C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281191C70);
  }

  return result;
}

uint64_t sub_2148F6A8C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1A378, &qword_214993B80);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2148F6B28()
{
  result = qword_281190F10[0];
  if (!qword_281190F10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281190F10);
  }

  return result;
}

unint64_t sub_2148F6B7C()
{
  result = qword_281191C90;
  if (!qword_281191C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281191C90);
  }

  return result;
}

uint64_t type metadata accessor for MATipDismissal(uint64_t a1)
{
  result = qword_281191AC8;
  if (!qword_281191AC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2148F6C84()
{
  result = qword_27CA1BA38;
  if (!qword_27CA1BA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BA38);
  }

  return result;
}

uint64_t sub_2148F6CD8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_21498E320();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2148F6D1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MATipDismissal(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2148F6D80(uint64_t a1)
{
  v2 = type metadata accessor for MATipDismissal(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2148F6DF0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 377))
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

uint64_t sub_2148F6E38(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
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
    *(result + 376) = 0;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 377) = 1;
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

    *(result + 377) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2148F6EFC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_2148F6F44(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2148F6FCC(uint64_t a1)
{
  result = sub_21498E320();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MATip.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MATip.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2148F71D4()
{
  result = qword_27CA1BA48;
  if (!qword_27CA1BA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BA48);
  }

  return result;
}

unint64_t sub_2148F722C()
{
  result = qword_27CA1BA50;
  if (!qword_27CA1BA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BA50);
  }

  return result;
}

unint64_t sub_2148F7284()
{
  result = qword_27CA1BA58;
  if (!qword_27CA1BA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BA58);
  }

  return result;
}

unint64_t sub_2148F72DC()
{
  result = qword_27CA1BA60;
  if (!qword_27CA1BA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BA60);
  }

  return result;
}

unint64_t sub_2148F7334()
{
  result = qword_27CA1BA68;
  if (!qword_27CA1BA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BA68);
  }

  return result;
}

unint64_t sub_2148F738C()
{
  result = qword_27CA1BA70;
  if (!qword_27CA1BA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BA70);
  }

  return result;
}

unint64_t sub_2148F73E4()
{
  result = qword_281191C80;
  if (!qword_281191C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281191C80);
  }

  return result;
}

unint64_t sub_2148F743C()
{
  result = qword_281191C88;
  if (!qword_281191C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281191C88);
  }

  return result;
}

unint64_t sub_2148F7494()
{
  result = qword_281190F00;
  if (!qword_281190F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281190F00);
  }

  return result;
}

unint64_t sub_2148F74EC()
{
  result = qword_281190F08;
  if (!qword_281190F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281190F08);
  }

  return result;
}

unint64_t sub_2148F7544()
{
  result = qword_281190FC0;
  if (!qword_281190FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281190FC0);
  }

  return result;
}

unint64_t sub_2148F759C()
{
  result = qword_281190FC8;
  if (!qword_281190FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281190FC8);
  }

  return result;
}

unint64_t sub_2148F75F0(uint64_t a1, uint64_t a2)
{
  v2 = sub_21498FEF0();

  if (v2 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2148F763C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x79546E6F69746361 && a2 == 0xEA00000000006570 || (sub_214990080() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (sub_214990080() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6874654D70747468 && a2 == 0xEA0000000000646FLL || (sub_214990080() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4274736575716572 && a2 == 0xEB0000000079646FLL)
  {

    return 3;
  }

  else
  {
    v5 = sub_214990080();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_2148F77B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449706974 && a2 == 0xE500000000000000;
  if (v4 || (sub_214990080() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D73694465746164 && a2 == 0xED00006465737369 || (sub_214990080() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65747441636E7973 && a2 == 0xEC0000007374706DLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_214990080();

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

uint64_t type metadata accessor for DateText(uint64_t a1)
{
  result = qword_27CA1BA80;
  if (!qword_27CA1BA80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2148F7954(uint64_t a1)
{
  sub_2148F7A38();
  if (v1 <= 0x3F)
  {
    sub_2148F7A90(319, &qword_27CA1BA98, &type metadata for DateText.DateFormat);
    if (v2 <= 0x3F)
    {
      sub_2148F7A90(319, &qword_27CA1BAA0, &type metadata for DateText.TimeFormat);
      if (v3 <= 0x3F)
      {
        sub_2148B0744(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2148F7A38()
{
  if (!qword_27CA1BA90)
  {
    v0 = sub_21498E770();
    if (!v1)
    {
      atomic_store(v0, &qword_27CA1BA90);
    }
  }
}

void sub_2148F7A90(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_21498FCF0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2148F7B08()
{
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

uint64_t sub_2148F7BCC(uint64_t a1)
{
  sub_21498F900();
}

uint64_t sub_2148F7C7C(uint64_t a1)
{
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

unint64_t sub_2148F7D3C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2148F987C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2148F7D6C(uint64_t *a1@<X8>)
{
  v2 = 0xE200000000000000;
  v3 = 25705;
  v4 = 0x6D726F4665746164;
  if (*v1 != 2)
  {
    v4 = 0x6D726F46656D6974;
  }

  if (*v1)
  {
    v3 = 0x6D617473656D6974;
    v2 = 0xE900000000000070;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = 0xEA00000000007461;
  }

  *a1 = v5;
  a1[1] = v2;
}

uint64_t sub_2148F7DEC()
{
  v1 = 25705;
  v2 = 0x6D726F4665746164;
  if (*v0 != 2)
  {
    v2 = 0x6D726F46656D6974;
  }

  if (*v0)
  {
    v1 = 0x6D617473656D6974;
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

unint64_t sub_2148F7E68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2148F987C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2148F7E90(uint64_t a1)
{
  v2 = sub_2148F965C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2148F7ECC(uint64_t a1)
{
  v2 = sub_2148F965C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2148F7F14()
{
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

uint64_t sub_2148F7FF8(uint64_t a1)
{
  sub_21498F900();
}

uint64_t sub_2148F80C8(uint64_t a1)
{
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

unint64_t sub_2148F81A8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2148F98C8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2148F81D8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x64657474696D6FLL;
  v5 = 0xEB00000000646574;
  v6 = 0x6169766572626261;
  v7 = 0xE400000000000000;
  v8 = 1735290732;
  if (v2 != 3)
  {
    v8 = 0x6574656C706D6F63;
    v7 = 0xE800000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x636972656D756ELL;
    v3 = 0xE700000000000000;
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

unint64_t sub_2148F832C()
{
  result = qword_27CA1BAA8;
  if (!qword_27CA1BAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BAA8);
  }

  return result;
}

uint64_t sub_2148F838C()
{
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

uint64_t sub_2148F8454(uint64_t a1)
{
  sub_21498F900();
}

uint64_t sub_2148F8508(uint64_t a1)
{
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

unint64_t sub_2148F85CC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2148F9914(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2148F85FC(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x64657474696D6FLL;
  v4 = 0x647261646E617473;
  if (*v1 != 2)
  {
    v4 = 0x6574656C706D6F63;
  }

  if (*v1)
  {
    v3 = 0x656E6574726F6873;
    v2 = 0xE900000000000064;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = 0xE800000000000000;
  }

  *a1 = v5;
  a1[1] = v2;
}