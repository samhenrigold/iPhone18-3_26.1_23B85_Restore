uint64_t sub_24DC53FD0(_DWORD *a1, unsigned int a2, void *a3)
{
  v53 = a3[2];
  v6 = *(v53 - 8);
  v52 = v6;
  v7 = *(v6 + 84);
  v8 = *(sub_24DCB55B4() - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  if (v10)
  {
    v11 = v10 - 1;
  }

  else
  {
    v11 = 0;
  }

  if (v7 <= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = v7;
  }

  v13 = a3[6];
  v14 = *(a3[5] - 8);
  v15 = v14;
  v16 = *(v14 + 84);
  v17 = *(v13 - 8);
  if (v12 <= v16)
  {
    v18 = *(v14 + 84);
  }

  else
  {
    v18 = v12;
  }

  v19 = *(v17 + 84);
  v20 = *(v6 + 64);
  v21 = *(v8 + 80);
  v22 = *(v8 + 64);
  v23 = *(v14 + 80);
  v24 = *(v14 + 64);
  v25 = *(v17 + 80);
  v26 = *(v17 + 64);
  if (v18 <= v19)
  {
    v27 = *(v17 + 84);
  }

  else
  {
    v27 = v18;
  }

  if (v27 <= 0x7FFFFFFF)
  {
    v28 = 0x7FFFFFFF;
  }

  else
  {
    v28 = v27;
  }

  if (v10)
  {
    v29 = v22;
  }

  else
  {
    v29 = v22 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v30 = v29 + 7;
  v31 = v23 + 8;
  v32 = v24 + v25;
  if (v28 < a2)
  {
    v33 = ((v26 + ((v32 + ((v31 + ((v30 + ((v21 + ((v20 + 7) & 0xFFFFFFFFFFFFFFF8) + 32) & ~v21)) & 0xFFFFFFFFFFFFFFF8)) & ~v23)) & ~v25) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    v34 = a2 - v28;
    v35 = v33 & 0xFFFFFFF8;
    if ((v33 & 0xFFFFFFF8) != 0)
    {
      v36 = 2;
    }

    else
    {
      v36 = v34 + 1;
    }

    if (v36 >= 0x10000)
    {
      v37 = 4;
    }

    else
    {
      v37 = 2;
    }

    if (v36 < 0x100)
    {
      v37 = 1;
    }

    if (v36 < 2)
    {
      v37 = 0;
    }

    if (v37 > 1)
    {
      if (v37 == 2)
      {
        v38 = *(a1 + v33);
        if (v38)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v38 = *(a1 + v33);
        if (v38)
        {
          goto LABEL_34;
        }
      }
    }

    else if (v37)
    {
      v38 = *(a1 + v33);
      if (v38)
      {
LABEL_34:
        v39 = v38 - 1;
        if (v35)
        {
          v39 = 0;
          v40 = *a1;
        }

        else
        {
          v40 = 0;
        }

        return v28 + (v40 | v39) + 1;
      }
    }
  }

  if (v7 == v28)
  {
    v41 = v53;
    v42 = *(v52 + 48);
    v43 = a1;
    v44 = v7;
LABEL_42:

    return v42(v43, v44, v41);
  }

  v46 = (a1 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  if ((v27 & 0x80000000) == 0)
  {
    v47 = *(v46 + 24);
    if (v47 >= 0xFFFFFFFF)
    {
      LODWORD(v47) = -1;
    }

    return (v47 + 1);
  }

  v48 = (v46 + v21 + 32) & ~v21;
  if (v11 == v28)
  {
    if (v10 >= 2)
    {
      v51 = (*(v9 + 48))(v48);
      if (v51 >= 2)
      {
        return v51 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v49 = (v31 + ((v30 + v48) & 0xFFFFFFFFFFFFFFF8)) & ~v23;
  if (v16 != v28)
  {
    v42 = *(*(v13 - 8) + 48);
    v43 = ((v32 + v49) & ~v25);
    v44 = v19;
    v41 = v13;
    goto LABEL_42;
  }

  v50 = *(v15 + 48);

  return v50(v49, v16);
}

void sub_24DC543A8(_DWORD *a1, uint64_t a2, unsigned int a3, void *a4)
{
  v8 = a4[2];
  v9 = *(v8 - 8);
  v47 = v9;
  v10 = *(v9 + 84);
  v11 = 0;
  v12 = *(sub_24DCB55B4() - 8);
  v13 = v12;
  v14 = *(v12 + 84);
  if (v14)
  {
    v15 = v14 - 1;
  }

  else
  {
    v15 = 0;
  }

  v16 = a4[5];
  v17 = *(v16 - 8);
  if (v10 <= v15)
  {
    v18 = v15;
  }

  else
  {
    v18 = v10;
  }

  v19 = *(a4[5] - 8);
  v20 = *(v17 + 84);
  if (v18 <= v20)
  {
    v21 = *(v17 + 84);
  }

  else
  {
    v21 = v18;
  }

  v22 = a4[6];
  v23 = *(v22 - 8);
  v24 = *(v23 + 84);
  v25 = *(v9 + 64);
  v26 = *(v12 + 80);
  v27 = *(v12 + 64);
  v28 = *(v17 + 80);
  v29 = *(v17 + 64);
  v30 = *(v23 + 80);
  if (v21 <= v24)
  {
    v31 = *(v23 + 84);
  }

  else
  {
    v31 = v21;
  }

  if (v31 <= 0x7FFFFFFF)
  {
    v32 = 0x7FFFFFFF;
  }

  else
  {
    v32 = v31;
  }

  if (v14)
  {
    v33 = v27;
  }

  else
  {
    v33 = v27 + 1;
  }

  v34 = v33 + 7;
  v35 = ((*(v23 + 64) + ((v29 + v30 + ((v28 + 8 + ((v34 + ((v26 + ((v25 + 7) & 0xFFFFFFFFFFFFFFF8) + 32) & ~v26)) & 0xFFFFFFFFFFFFFFF8)) & ~v28)) & ~v30) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v32 < a3)
  {
    v36 = a3 - v32;
    if (((*(v23 + 64) + ((v29 + v30 + ((v28 + 8 + ((v34 + ((v26 + ((v25 + 7) & 0xFFFFFFF8) + 32) & ~v26)) & 0xFFFFFFF8)) & ~v28)) & ~v30) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v37 = v36 + 1;
    }

    else
    {
      v37 = 2;
    }

    if (v37 >= 0x10000)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v37 < 0x100)
    {
      v11 = 1;
    }

    if (v37 < 2)
    {
      v11 = 0;
    }
  }

  if (a2 > v32)
  {
    if (((*(v23 + 64) + ((v29 + v30 + ((v28 + 8 + ((v34 + ((v26 + ((v25 + 7) & 0xFFFFFFF8) + 32) & ~v26)) & 0xFFFFFFF8)) & ~v28)) & ~v30) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v38 = a2 - v32;
    }

    else
    {
      v38 = 1;
    }

    if (((*(v23 + 64) + ((v29 + v30 + ((v28 + 8 + ((v34 + ((v26 + ((v25 + 7) & 0xFFFFFFF8) + 32) & ~v26)) & 0xFFFFFFF8)) & ~v28)) & ~v30) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v39 = ~v32 + a2;
      bzero(a1, v35);
      *a1 = v39;
    }

    if (v11 > 1)
    {
      if (v11 == 2)
      {
        *(a1 + v35) = v38;
      }

      else
      {
        *(a1 + v35) = v38;
      }
    }

    else if (v11)
    {
      *(a1 + v35) = v38;
    }

    return;
  }

  if (v11 > 1)
  {
    if (v11 != 2)
    {
      *(a1 + v35) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_48;
    }

    *(a1 + v35) = 0;
  }

  else if (v11)
  {
    *(a1 + v35) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_48;
  }

  if (!a2)
  {
    return;
  }

LABEL_48:
  if (v10 == v32)
  {
    v40 = *(v47 + 56);
    v41 = a1;
    v42 = a2;
    v43 = v10;
    v16 = v8;
    goto LABEL_50;
  }

  v44 = ((a1 + v25 + 7) & 0xFFFFFFFFFFFFFFF8);
  if ((v31 & 0x80000000) == 0)
  {
    if ((a2 & 0x80000000) != 0)
    {
      v44[2] = 0;
      v44[3] = 0;
      *v44 = a2 & 0x7FFFFFFF;
      v44[1] = 0;
    }

    else
    {
      v44[3] = (a2 - 1);
    }

    return;
  }

  v45 = (v44 + v26 + 32) & ~v26;
  if (v15 != v32)
  {
    v41 = ((v28 + 8 + ((v34 + v45) & 0xFFFFFFFFFFFFFFF8)) & ~v28);
    if (v20 != v32)
    {
      v40 = *(v23 + 56);
      v41 = ((v41 + v29 + v30) & ~v30);
      v42 = a2;
      v43 = v24;
      v16 = v22;

      goto LABEL_70;
    }

    v40 = *(v19 + 56);
    v42 = a2;
    v43 = v20;
LABEL_50:

LABEL_70:
    v40(v41, v42, v43, v16);
    return;
  }

  if (v14 >= 2)
  {
    v46 = *(v13 + 56);

    v46(v45, (a2 + 1));
  }
}

void sub_24DC547E8(uint64_t a1)
{
  if (!qword_27F19F018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19F020, &qword_24DCBCE70);
    v1 = sub_24DCB50A4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F19F018);
    }
  }
}

uint64_t sub_24DC548AC(_OWORD *a1)
{
  if (!MEMORY[0x277D85020])
  {
    return MEMORY[0x277D84F78] + 8;
  }

  v1 = a1[1];
  v4[0] = *a1;
  v4[1] = v1;
  v2 = a1[3];
  v4[2] = a1[2];
  v4[3] = v2;
  _s15HedgingExecutorV5StateVMa(255, v4);
  return sub_24DCB4C04();
}

uint64_t sub_24DC54910(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_24DC54960(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_24DC549B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_24DC549F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_24DC54A48(uint64_t a1, unsigned int a2)
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
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_24DC54A9C(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void sub_24DC54B00(uint64_t a1)
{
  sub_24DC54D54(319, &qword_27F19F028, type metadata accessor for CancellableTaskHandle);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_24DC54BA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F008, &qword_24DCB9C18);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 84));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_24DC54C90(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F008, &qword_24DCB9C18);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 84)) = a2 + 1;
  }

  return result;
}

void sub_24DC54D54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24DCB5414();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_24DC54DA8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  sub_24DCB5904();
  if (v1 <= 0x3F)
  {
    sub_24DC55134(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_24DC54E44(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (v3 <= 8)
  {
    v3 = 8;
  }

  v4 = 9;
  if (v3 + 1 > 9)
  {
    v4 = v3 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_27;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 253) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v9 < 2)
    {
LABEL_27:
      v11 = *(a1 + v4);
      if (v11 >= 3)
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
    goto LABEL_27;
  }

LABEL_16:
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

  return (v5 | v10) + 254;
}

void sub_24DC54F6C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  if (v5 + 1 > 9)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = 9;
  }

  v7 = v6 + 1;
  if (a3 < 0xFE)
  {
    v8 = 0;
  }

  else if (v7 <= 3)
  {
    v11 = ((a3 + ~(-1 << (8 * v7)) - 253) >> (8 * v7)) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFD)
  {
    v9 = a2 - 254;
    if (v7 >= 4)
    {
      bzero(a1, v6 + 1);
      *a1 = v9;
      v10 = 1;
      if (v8 > 1)
      {
        goto LABEL_42;
      }

      goto LABEL_39;
    }

    v10 = (v9 >> (8 * v7)) + 1;
    if (v6 != -1)
    {
      v13 = v9 & ~(-1 << (8 * v7));
      bzero(a1, v7);
      if (v7 != 3)
      {
        if (v7 == 2)
        {
          *a1 = v13;
          if (v8 > 1)
          {
LABEL_42:
            if (v8 == 2)
            {
              *&a1[v7] = v10;
            }

            else
            {
              *&a1[v7] = v10;
            }

            return;
          }
        }

        else
        {
          *a1 = v9;
          if (v8 > 1)
          {
            goto LABEL_42;
          }
        }

LABEL_39:
        if (v8)
        {
          a1[v7] = v10;
        }

        return;
      }

      *a1 = v13;
      a1[2] = BYTE2(v13);
    }

    if (v8 > 1)
    {
      goto LABEL_42;
    }

    goto LABEL_39;
  }

  if (v8 <= 1)
  {
    if (v8)
    {
      a1[v7] = 0;
      if (!a2)
      {
        return;
      }

LABEL_28:
      a1[v6] = -a2;
      return;
    }

LABEL_27:
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (v8 == 2)
  {
    *&a1[v7] = 0;
    goto LABEL_27;
  }

  *&a1[v7] = 0;
  if (a2)
  {
    goto LABEL_28;
  }
}

void sub_24DC55134(uint64_t a1)
{
  if (!qword_27F19F030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
    v1 = sub_24DCB5904();
    if (!v2)
    {
      atomic_store(v1, &qword_27F19F030);
    }
  }
}

uint64_t sub_24DC551AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  result = type metadata accessor for _HedgingAttemptTaskResult.AttemptResult(319, v4, v5, a4);
  if (v8 <= 0x3F)
  {
    result = type metadata accessor for _HedgingAttemptTaskResult.ScheduleEvent(319, v4, v5, v7);
    if (v9 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24DC55248(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (v3 <= 8)
  {
    v3 = 8;
  }

  if (v3 + 1 > 0x4A)
  {
    v4 = v3 + 1;
  }

  else
  {
    v4 = 74;
  }

  v5 = 1;
  if ((v4 + 1) > 1)
  {
    v5 = v4 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_30;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if ((v5 + 1) <= 3)
  {
    v10 = ((a2 + ~(-1 << v7) - 253) >> v7) + 1;
    if (HIWORD(v10))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_30;
      }

      goto LABEL_19;
    }

    if (v10 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_30;
      }

      goto LABEL_19;
    }

    if (v10 < 2)
    {
LABEL_30:
      v12 = *(a1 + v5);
      if (v12 >= 3)
      {
        return (v12 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_30;
  }

LABEL_19:
  v11 = (v8 - 1) << v7;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return (v6 | v11) + 254;
}

void sub_24DC55380(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  if (v5 + 1 > 0x4A)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = 74;
  }

  if ((v6 + 1) > 1)
  {
    v7 = v6 + 1;
  }

  else
  {
    v7 = 1;
  }

  v8 = v7 + 1;
  if (a3 < 0xFE)
  {
    v9 = 0;
  }

  else if (v8 <= 3)
  {
    v12 = ((a3 + ~(-1 << (8 * v8)) - 253) >> (8 * v8)) + 1;
    if (HIWORD(v12))
    {
      v9 = 4;
    }

    else
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
        v9 = v13;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 1;
  }

  if (a2 > 0xFD)
  {
    v10 = a2 - 254;
    if (v8 >= 4)
    {
      bzero(a1, v7 + 1);
      *a1 = v10;
      v11 = 1;
      if (v9 > 1)
      {
        goto LABEL_45;
      }

      goto LABEL_42;
    }

    v11 = (v10 >> (8 * v8)) + 1;
    if (v7 != -1)
    {
      v14 = v10 & ~(-1 << (8 * v8));
      bzero(a1, v8);
      if (v8 != 3)
      {
        if (v8 == 2)
        {
          *a1 = v14;
          if (v9 > 1)
          {
LABEL_45:
            if (v9 == 2)
            {
              *&a1[v8] = v11;
            }

            else
            {
              *&a1[v8] = v11;
            }

            return;
          }
        }

        else
        {
          *a1 = v10;
          if (v9 > 1)
          {
            goto LABEL_45;
          }
        }

LABEL_42:
        if (v9)
        {
          a1[v8] = v11;
        }

        return;
      }

      *a1 = v14;
      a1[2] = BYTE2(v14);
    }

    if (v9 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  if (v9 <= 1)
  {
    if (v9)
    {
      a1[v8] = 0;
      if (!a2)
      {
        return;
      }

LABEL_31:
      a1[v7] = -a2;
      return;
    }

LABEL_30:
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (v9 == 2)
  {
    *&a1[v8] = 0;
    goto LABEL_30;
  }

  *&a1[v8] = 0;
  if (a2)
  {
    goto LABEL_31;
  }
}

uint64_t sub_24DC55570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for StreamingClientResponse(255, *(a1 + 24), a3, a4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19F038, qword_24DCB9E60);
  result = swift_getTupleTypeMetadata2();
  if (v5 <= 0x3F)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
    result = sub_24DCB5904();
    if (v6 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24DC5564C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (v3 <= 8)
  {
    v3 = 8;
  }

  v4 = 74;
  if (v3 + 1 > 0x4A)
  {
    v4 = v3 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_27;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 253) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v9 < 2)
    {
LABEL_27:
      v11 = *(a1 + v4);
      if (v11 >= 3)
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
    goto LABEL_27;
  }

LABEL_16:
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

  return (v5 | v10) + 254;
}

void sub_24DC55774(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  if (v5 + 1 > 0x4A)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = 74;
  }

  v7 = v6 + 1;
  if (a3 < 0xFE)
  {
    v8 = 0;
  }

  else if (v7 <= 3)
  {
    v11 = ((a3 + ~(-1 << (8 * v7)) - 253) >> (8 * v7)) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFD)
  {
    v9 = a2 - 254;
    if (v7 >= 4)
    {
      bzero(a1, v6 + 1);
      *a1 = v9;
      v10 = 1;
      if (v8 > 1)
      {
        goto LABEL_42;
      }

      goto LABEL_39;
    }

    v10 = (v9 >> (8 * v7)) + 1;
    if (v6 != -1)
    {
      v13 = v9 & ~(-1 << (8 * v7));
      bzero(a1, v7);
      if (v7 != 3)
      {
        if (v7 == 2)
        {
          *a1 = v13;
          if (v8 > 1)
          {
LABEL_42:
            if (v8 == 2)
            {
              *&a1[v7] = v10;
            }

            else
            {
              *&a1[v7] = v10;
            }

            return;
          }
        }

        else
        {
          *a1 = v9;
          if (v8 > 1)
          {
            goto LABEL_42;
          }
        }

LABEL_39:
        if (v8)
        {
          a1[v7] = v10;
        }

        return;
      }

      *a1 = v13;
      a1[2] = BYTE2(v13);
    }

    if (v8 > 1)
    {
      goto LABEL_42;
    }

    goto LABEL_39;
  }

  if (v8 <= 1)
  {
    if (v8)
    {
      a1[v7] = 0;
      if (!a2)
      {
        return;
      }

LABEL_28:
      a1[v6] = -a2;
      return;
    }

LABEL_27:
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (v8 == 2)
  {
    *&a1[v7] = 0;
    goto LABEL_27;
  }

  *&a1[v7] = 0;
  if (a2)
  {
    goto LABEL_28;
  }
}

uint64_t sub_24DC5593C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24DC55984(uint64_t a1, uint64_t a2)
{
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  v8 = v2[6];
  v9 = v2[7];
  v10 = v2[8];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_24DC334F4;

  return sub_24DC4FD24(a1, a2, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_24DC55AA0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24DC55AE8(uint64_t a1)
{
  v4 = *(v1 + 104);
  v5 = *(v1 + 120);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24DC334F4;

  return sub_24DC50968(a1, v6, v7, v4, v8, v5);
}

uint64_t sub_24DC55BB4()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = *(v0 + 96);
  v16 = *(v0 + 32);
  v14 = v16;
  v17 = v1;
  v18 = v2;
  v19 = v3;
  v20 = *(v0 + 80);
  v21 = v4;
  v5 = _s15HedgingExecutorVMa(0, &v16);
  v15 = *(*(v5 - 1) + 80);
  v6 = (v15 + 128) & ~v15;
  v7 = *(*(v5 - 1) + 64);
  swift_unknownObjectRelease();

  v8 = v0 + v6;
  (*(*(v14 - 8) + 8))(v0 + v6);

  v9 = v5[22];
  v10 = sub_24DCB55B4();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v6 + v9, 1, v10))
  {
    (*(v11 + 8))(v8 + v9, v10);
  }

  (*(*(v2 - 8) + 8))(v8 + v5[24], v2);
  (*(*(v3 - 8) + 8))(v8 + v5[25], v3);

  v12 = v0 + ((((((v7 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);

  __swift_destroy_boxed_opaque_existential_1((v12 + 32));
  __swift_destroy_boxed_opaque_existential_1((v12 + 72));

  return swift_deallocObject();
}

uint64_t sub_24DC55E88(uint64_t a1)
{
  v3 = *(v1 + 64);
  v4 = *(v1 + 96);
  v5 = *(v1 + 48);
  v6 = *(v1 + 80);
  *(v2 + 16) = *(v1 + 32);
  *(v2 + 32) = v5;
  *(v2 + 48) = v3;
  *(v2 + 56) = v6;
  *(v2 + 72) = v4;
  v7 = *(_s15HedgingExecutorVMa(0, v2 + 16) - 8);
  v8 = (*(v7 + 80) + 128) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = *(v1 + 112);
  v16 = *(v1 + 104);
  v14 = *(v1 + 120);
  v12 = swift_task_alloc();
  *(v2 + 80) = v12;
  *v12 = v2;
  v12[1] = sub_24DC56054;

  return sub_24DC50DA8(a1, v10, v11, v16, v15, v14, v1 + v8, v1 + v9);
}

uint64_t sub_24DC56054()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24DC561A4(uint64_t a1, uint64_t a2)
{
  v5 = v2[5];
  v11 = v2[4];
  v12 = v2[3];
  v6 = v2[6];
  v7 = v2[7];
  v8 = v2[8];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_24DC2FD00;

  return sub_24DC510F8(a1, a2, v12, v11, v5, v6, v7, v8);
}

uint64_t sub_24DC562B4(uint64_t a1)
{
  v4 = v1[11];
  v5 = v1[12];
  v6 = v1[13];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24DC334F4;

  return sub_24DC52AB8(a1, v4, v5, v6);
}

uint64_t sub_24DC5637C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 80);
  v7 = *(v2 + 32);
  v10[0] = *(v2 + 16);
  v10[1] = v7;
  v11 = v5;
  v12 = *(v2 + 64);
  v13 = v6;
  result = _s15HedgingExecutorV5StateVMa(0, v10);
  v9 = *(a1 + 16);
  if ((v9 & 1) == 0)
  {
    *(a1 + 16) = 1;
  }

  *a2 = v9 ^ 1;
  return result;
}

uint64_t sub_24DC563F4(uint64_t a1)
{
  v4 = v1[11];
  v5 = v1[12];
  v6 = v1[13];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24DC2FD00;

  return sub_24DC52760(a1, v4, v5, v6);
}

uint64_t sub_24DC564BC()
{

  return swift_deallocObject();
}

uint64_t sub_24DC564F4(uint64_t a1)
{
  v4 = *(v1 + 24);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24DC334F4;

  return sub_24DC53800(a1, v4);
}

unint64_t sub_24DC565BC()
{
  result = qword_27F19F060;
  if (!qword_27F19F060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19F058, &qword_24DCB9F18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19F060);
  }

  return result;
}

uint64_t sub_24DC56620@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 80);
  v7 = *(v2 + 32);
  v12[0] = *(v2 + 16);
  v12[1] = v7;
  v13 = v5;
  v14 = *(v2 + 64);
  v15 = v6;
  result = _s15HedgingExecutorV5StateVMa(0, v12);
  if ((a1[2] & 1) == 0)
  {
    v10 = *a1;
    v9 = a1[1];
    if (*a1 >= v9)
    {
      v11 = v9 + 1;
      if (!__OFADD__(v9, 1))
      {
        a1[1] = v11;
        *a2 = v9;
        *(a2 + 8) = v10 >= v11;
        return result;
      }

      __break(1u);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24DC566C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v14 = *(v12 + 64);
  v15 = *(v12 + 96);
  v16 = *(v12 + 48);
  v17 = *(v12 + 80);
  *(v13 + 16) = *(v12 + 32);
  *(v13 + 32) = v16;
  *(v13 + 48) = v14;
  *(v13 + 56) = v17;
  *(v13 + 72) = v15;
  v18 = *(_s15HedgingExecutorVMa(0, v13 + 16) - 8);
  v19 = (*(v18 + 80) + 104) & ~*(v18 + 80);
  v20 = (*(v18 + 64) + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 31) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v12 + v20);
  v30 = *v22;
  v28 = v22[2];
  v29 = v22[1];
  v27 = *(v12 + v21);
  v25 = swift_task_alloc();
  *(v13 + 80) = v25;
  *v25 = v13;
  v25[1] = sub_24DC57B4C;

  return sub_24DC4E710(a1, v23, v24, v12 + v19, v30, v29, v28, v27, a9, a10, a11, a12);
}

uint64_t sub_24DC5691C(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[11];
  v6 = v1[12];
  v7 = v1[13];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_24DC334F4;

  return sub_24DC4F6B0(a1, v5, v6, v7, v8, v9, v4);
}

uint64_t sub_24DC569EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v14 = *(v12 + 64);
  v15 = *(v12 + 96);
  v16 = *(v12 + 48);
  v17 = *(v12 + 80);
  *(v13 + 16) = *(v12 + 32);
  *(v13 + 32) = v16;
  *(v13 + 48) = v14;
  *(v13 + 56) = v17;
  *(v13 + 72) = v15;
  v18 = *(_s15HedgingExecutorVMa(0, v13 + 16) - 8);
  v19 = (*(v18 + 80) + 104) & ~*(v18 + 80);
  v20 = (*(v18 + 64) + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 31) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v12 + v20);
  v30 = *v22;
  v28 = v22[2];
  v29 = v22[1];
  v27 = *(v12 + v21);
  v25 = swift_task_alloc();
  *(v13 + 80) = v25;
  *v25 = v13;
  v25[1] = sub_24DC57B4C;

  return sub_24DC4F19C(a1, v23, v24, v12 + v19, v30, v29, v28, v27, a9, a10, a11, a12);
}

uint64_t sub_24DC56BE8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 80);
  v7 = *(v2 + 32);
  v13[0] = *(v2 + 16);
  v13[1] = v7;
  v14 = v5;
  v15 = *(v2 + 64);
  v16 = v6;
  result = _s15HedgingExecutorV5StateVMa(0, v13);
  if ((a1[2] & 1) != 0 || (v10 = *a1, v9 = a1[1], *a1 < v9))
  {
    v9 = 0;
    v11 = 2;
LABEL_6:
    *a2 = v9;
    *(a2 + 8) = v11;
    return result;
  }

  v12 = v9 + 1;
  if (!__OFADD__(v9, 1))
  {
    a1[1] = v12;
    v11 = v10 >= v12;
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t objectdestroy_86Tm()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = *(v0 + 96);
  v16 = *(v0 + 32);
  v14 = v16;
  v17 = v1;
  v18 = v2;
  v19 = v3;
  v20 = *(v0 + 80);
  v21 = v4;
  v5 = _s15HedgingExecutorVMa(0, &v16);
  v6 = (*(*(v5 - 1) + 80) + 104) & ~*(*(v5 - 1) + 80);
  v15 = (((((*(*(v5 - 1) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  v7 = v0 + v6;
  (*(*(v14 - 8) + 8))(v7);

  v8 = v5[22];
  v9 = sub_24DCB55B4();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v7 + v8, 1, v9))
  {
    (*(v10 + 8))(v7 + v8, v9);
  }

  (*(*(v2 - 8) + 8))(v7 + v5[24], v2);
  (*(*(v3 - 8) + 8))(v7 + v5[25], v3);

  v12 = *(v0 + v15 + 112);
  if (v12 != 255)
  {
    v11 = (v0 + v15);
    sub_24DC566BC(v11[7], v11[8], v11[9], v11[10], v11[11], v11[12], v11[13], v12 & 1);
  }

  return swift_deallocObject();
}

uint64_t sub_24DC56F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v14 = *(v12 + 64);
  v15 = *(v12 + 96);
  v16 = *(v12 + 48);
  v17 = *(v12 + 80);
  *(v13 + 16) = *(v12 + 32);
  *(v13 + 32) = v16;
  *(v13 + 48) = v14;
  *(v13 + 56) = v17;
  *(v13 + 72) = v15;
  v18 = *(_s15HedgingExecutorVMa(0, v13 + 16) - 8);
  v19 = (*(v18 + 80) + 104) & ~*(v18 + 80);
  v20 = (*(v18 + 64) + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 31) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v12 + v20);
  v30 = *v22;
  v28 = v22[2];
  v29 = v22[1];
  v27 = *(v12 + v21);
  v25 = swift_task_alloc();
  *(v13 + 80) = v25;
  *v25 = v13;
  v25[1] = sub_24DC57B4C;

  return sub_24DC4F19C(a1, v23, v24, v12 + v19, v30, v29, v28, v27, a9, a10, a11, a12);
}

uint64_t sub_24DC57150()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24DC571A8(uint64_t a1)
{
  v4 = v1[13];
  v5 = v1[14];
  v6 = v1[15];
  v8 = v1[16];
  v7 = v1[17];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_24DC334F4;

  return sub_24DC4B89C(a1, v9, v10, v4, v5, v6, v8, v7);
}

uint64_t sub_24DC572B0()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = *(v0 + 96);
  v17 = *(v0 + 32);
  v15 = v17;
  v18 = v1;
  v19 = v2;
  v20 = v3;
  v21 = *(v0 + 80);
  v22 = v4;
  v5 = _s15HedgingExecutorVMa(0, &v17);
  v16 = *(*(v5 - 1) + 80);
  v6 = (v16 + 144) & ~v16;
  v7 = (((*(*(v5 - 1) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  v8 = v0 + v6;
  (*(*(v15 - 8) + 8))(v8);

  v9 = v5[22];
  v10 = sub_24DCB55B4();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v8 + v9, 1, v10))
  {
    (*(v11 + 8))(v8 + v9, v10);
  }

  (*(*(v2 - 8) + 8))(v8 + v5[24], v2);
  (*(*(v3 - 8) + 8))(v8 + v5[25], v3);

  v13 = *(v0 + v7 + 112);
  if (v13 != 255)
  {
    v12 = (v0 + v7);
    sub_24DC566BC(v12[7], v12[8], v12[9], v12[10], v12[11], v12[12], v12[13], v13 & 1);
  }

  return swift_deallocObject();
}

uint64_t sub_24DC57554(uint64_t a1)
{
  v3 = v1[5];
  v4 = v1[7];
  v18 = v1[6];
  v5 = v1[8];
  v6 = v1[10];
  v7 = v1[11];
  v8 = v1[12];
  v2[2] = v1[4];
  v2[3] = v3;
  v2[4] = v18;
  v2[5] = v4;
  v2[6] = v5;
  v2[7] = v6;
  v2[8] = v7;
  v2[9] = v8;
  _s15HedgingExecutorVMa(0, (v2 + 2));
  v16 = v1[16];
  v17 = v1[13];
  v15 = v1[17];
  v13 = swift_task_alloc();
  v2[10] = v13;
  *v13 = v2;
  v13[1] = sub_24DC57B4C;

  return sub_24DC4BF04(a1, v9, v10, v17, v11, v12, v16, v15);
}

void sub_24DC57738(uint64_t a1, char a2)
{
  if (a2)
  {
    JUMPOUT(0x2530363B0);
  }
}

uint64_t sub_24DC57744()
{
  v1 = sub_24DCB55B4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 104) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24DC57808(uint64_t a1)
{
  v4 = *(sub_24DCB55B4() - 8);
  v5 = (*(v4 + 80) + 104) & ~*(v4 + 80);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24DC334F4;

  return sub_24DC4AFE8(a1, v6, v7, v1 + v5);
}

uint64_t sub_24DC578F0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_24DC334F4;

  return sub_24DC4B2A8(v6, v5, a2);
}

uint64_t sub_24DC5798C()
{

  return swift_deallocObject();
}

uint64_t sub_24DC579CC(uint64_t a1)
{
  v4 = *(v1 + 24);
  v5 = *(v1 + 88);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24DC334F4;

  return sub_24DC4C314(a1, v5, v7, v8, v4);
}

uint64_t sub_24DC57A7C()
{
  v2 = v0[3];
  v3 = v0[12];
  v4 = v0[13];
  v5 = v0[15];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_24DC334F4;

  return sub_24DC4BBC4(v6, v7, v3, v4, v8, v5, v9, v2);
}

uint64_t sub_24DC57B60()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F068, &qword_24DCBA038);
  swift_allocObject();
  result = sub_24DCB59D4();
  qword_27F1A98B8 = result;
  return result;
}

uint64_t *sub_24DC57BBC()
{
  if (qword_27F1A3180 != -1)
  {
    swift_once();
  }

  return &qword_27F1A98B8;
}

uint64_t sub_24DC57C0C()
{
  if (qword_27F1A3180 != -1)
  {
    swift_once();
  }
}

uint64_t sub_24DC57C68()
{
  if (qword_27F1A3180 != -1)
  {
    swift_once();
  }

  return sub_24DCB59E4();
}

uint64_t ServerContext.RPCCancellationHandle.init()@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ServerCancellationManager();
  result = ServerCancellationManager.__allocating_init()();
  *a1 = result;
  return result;
}

uint64_t ServerContext.RPCCancellationHandle.cancelled.getter()
{
  v1 = sub_24DCB5114();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v2 = swift_task_alloc();
  v0[4] = v2;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_24DC57E24;

  return _s16GRPCCoreInternal25ServerCancellationManagerC26suspendUntilRPCIsCancelledyyYaScEYKF(v2);
}

uint64_t sub_24DC57E24()
{
  v2 = *v1;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24DC57F5C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_24DC57F5C()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  sub_24DC46150();
  swift_allocError();
  (*(v2 + 32))(v4, v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t _s16GRPCCoreInternal26withRPCCancellationHandler9operation11onCancelRPCxxyYaq_YKXE_yyYbctYaq_YKs5ErrorR_r0_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a7;
  v7[9] = v10;
  v7[6] = a4;
  v7[7] = a5;
  v7[4] = a2;
  v7[5] = a3;
  v7[3] = a1;
  v7[10] = *(a7 - 8);
  v7[11] = swift_task_alloc();
  v7[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24DC58100, 0, 0);
}

uint64_t sub_24DC58100()
{
  if (qword_27F1A3180 != -1)
  {
    swift_once();
  }

  sub_24DCB59E4();
  v1 = *(v0 + 16);
  *(v0 + 104) = v1;
  if (!v1)
  {
    goto LABEL_6;
  }

  *(v0 + 112) = ServerCancellationManager.addRPCCancelledHandler(_:)(*(v0 + 48), *(v0 + 56));
  if (v2)
  {

LABEL_6:
    v8 = (*(v0 + 32) + **(v0 + 32));
    v3 = swift_task_alloc();
    *(v0 + 128) = v3;
    *v3 = v0;
    v3[1] = sub_24DC58488;
    v4 = *(v0 + 88);
    goto LABEL_8;
  }

  v8 = (*(v0 + 32) + **(v0 + 32));
  v5 = swift_task_alloc();
  *(v0 + 120) = v5;
  *v5 = v0;
  v5[1] = sub_24DC582FC;
  v4 = *(v0 + 96);
LABEL_8:
  v6 = *(v0 + 24);

  return v8(v6, v4);
}

uint64_t sub_24DC582FC()
{

  if (v0)
  {
    v1 = sub_24DC58650;
  }

  else
  {
    v1 = sub_24DC5840C;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_24DC5840C()
{
  ServerCancellationManager.removeRPCCancelledHandler(withID:)(*(v0 + 112));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24DC58488()
{
  v2 = *v1;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24DC585CC, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_24DC585CC()
{
  (*(v0[10] + 32))(v0[9], v0[11], v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24DC58650()
{
  v1 = v0[14];
  (*(v0[10] + 32))(v0[9], v0[12], v0[8]);
  ServerCancellationManager.removeRPCCancelledHandler(withID:)(v1);

  v2 = v0[1];

  return v2();
}

uint64_t _s16GRPCCoreInternal38withServerContextRPCCancellationHandleyxxAA0dE0V0fG0VYaq_YKXEYaq_YKs5ErrorR_r0_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v7[4] = a2;
  v7[5] = a3;
  v7[3] = a1;
  v7[10] = *(a5 - 8);
  v7[11] = swift_task_alloc();
  v8 = sub_24DCB5904();
  v7[12] = v8;
  v7[13] = *(v8 - 8);
  v7[14] = swift_task_alloc();
  v7[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24DC5883C, 0, 0);
}

uint64_t sub_24DC5883C()
{
  type metadata accessor for ServerCancellationManager();
  v1 = ServerCancellationManager.__allocating_init()();
  *(v0 + 128) = v1;
  if (qword_27F1A3180 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 64);
  *(v0 + 16) = v1;
  v3 = swift_task_alloc();
  *(v0 + 136) = v3;
  v4 = *(v0 + 32);
  *(v3 + 16) = *(v0 + 48);
  *(v3 + 32) = v2;
  *(v3 + 40) = v4;
  *(v3 + 56) = v1;

  v5 = swift_task_alloc();
  *(v0 + 144) = v5;
  *v5 = v0;
  v5[1] = sub_24DC589BC;
  v6 = *(v0 + 120);

  return MEMORY[0x282200908](v6, v0 + 16, &unk_24DCB9FE0, v3, 0, 0, 0xD00000000000003ALL, 0x800000024DCC5730);
}

uint64_t sub_24DC589BC()
{
  *(*v1 + 152) = v0;

  if (v0)
  {

    JUMPOUT(0x2530363B0);
  }

  return MEMORY[0x2822009F8](sub_24DC58B08, 0, 0);
}

uint64_t sub_24DC58B08()
{
  v1 = v0[19];
  v2 = v0[12];
  v3 = v0[11];
  v4 = v0[3];
  (*(v0[13] + 16))(v0[14], v0[15], v2);
  sub_24DC2F270(v2, v3, v4);
  v5 = v0[13];
  v7 = v0[11];
  v6 = v0[12];
  if (v1)
  {
    v8 = v0[9];
    v9 = v0[10];
    v10 = v0[7];
    (*(v5 + 8))(v0[15], v6);

    (*(v9 + 32))(v8, v7, v10);
  }

  else
  {
    (*(v5 + 8))(v0[15], v6);
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_24DC58C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x2822009F8](sub_24DC58C90, 0, 0);
}

uint64_t sub_24DC58C90()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = *(v0 + 48);
  *(v3 + 32) = v1;
  *(v3 + 40) = v4;
  *(v3 + 56) = v2;
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  *v5 = v0;
  v5[1] = sub_24DC58D80;
  v6 = *(v0 + 56);
  v7 = *(v0 + 64);
  v8 = *(v0 + 48);
  v9 = *(v0 + 16);

  return sub_24DC8C5F4(v9, &unk_24DCBA030, v3, v8, v6, v7);
}

uint64_t sub_24DC58D80()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24DC58E94(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_24DC2FD00;

  return sub_24DC58C64(a1, v7, v9, v8, v4, v5, v6);
}

uint64_t sub_24DC58F68(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[3] = a6;
  v8[4] = a8;
  v8[5] = *(a6 - 8);
  v12 = swift_task_alloc();
  v8[6] = v12;
  v8[2] = a4;
  v15 = a2 + *a2;
  v13 = swift_task_alloc();
  v8[7] = v13;
  *v13 = v8;
  v13[1] = sub_24DC590E0;

  return (v15)(a1, v8 + 2, v12);
}

uint64_t sub_24DC590E0()
{
  v2 = *v1;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24DC59218, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_24DC59218()
{
  (*(v0[5] + 32))(v0[4], v0[6], v0[3]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24DC592A8(uint64_t a1, uint64_t a2)
{
  v6 = v2[3];
  v7 = v2[5];
  v8 = v2[6];
  v9 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_24DC334F4;

  return sub_24DC58F68(a1, v7, v8, v9, v10, v6, v11, a2);
}

uint64_t sub_24DC593AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v16[0] = a3;
  v16[1] = a4;
  v16[2] = a5;
  v16[3] = a6;
  v16[4] = a7;
  v16[5] = a8;
  v14 = type metadata accessor for SerializingRPCWriter(0, v16);
  (*(*(a5 - 8) + 32))(a9 + *(v14 + 68), a1, a5);
  return (*(*(a3 - 8) + 32))(a9, a2, a3);
}

uint64_t sub_24DC59490(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v5 = *(a2 + 24);
  v3[5] = v5;
  v3[6] = *(v5 - 8);
  v3[7] = swift_task_alloc();
  v6 = *(a2 + 16);
  v3[8] = v6;
  v3[9] = *(v6 - 8);
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24DC595AC, 0, 0);
}

uint64_t sub_24DC595AC()
{
  v1 = v0[5];
  v2 = v0[2];
  v3 = v0[3];
  (*(v0[9] + 16))(v0[10], v0[4], v0[8]);
  (*(v3[7] + 16))(v2, v1, v3[6], v3[4]);
  v4 = *(v0[3] + 40);
  v9 = (*(v4 + 16) + **(v4 + 16));
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_24DC59798;
  v7 = v0[7];
  v6 = v0[8];

  return v9(v7, v6, v4);
}

uint64_t sub_24DC59798()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  v6 = *(*v1 + 48);
  v7 = *(*v1 + 40);
  v8 = *v1;
  *(*v1 + 96) = v0;

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24DC599C4, 0, 0);
  }

  else
  {

    v9 = *(v8 + 8);

    return v9();
  }
}

uint64_t sub_24DC599C4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24DC59A34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[7] = a4;
  v5[8] = v4;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  return MEMORY[0x2822009F8](sub_24DC59A5C, 0, 0);
}

uint64_t sub_24DC59A5C()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = swift_task_alloc();
  v4 = v2[2];
  v14 = *(v0 + 56);
  *(v3 + 16) = v4;
  v5 = v2[3];
  *(v3 + 24) = v5;
  *(v3 + 32) = v2[4];
  *(v3 + 40) = v1;
  v6 = v2[5];
  *(v3 + 48) = v6;
  *(v3 + 56) = v2[6];
  *(v3 + 64) = v2[7];
  *(v3 + 72) = v14;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19ED58, &qword_24DCB79B0);
  v8 = sub_24DC59F28(sub_24DC59E64, v3, v1, v5, v7, v14, MEMORY[0x277D84950], v0 + 16);
  *(v0 + 72) = v8;
  v9 = v8;

  *(v0 + 24) = v9;
  v15 = (*(v6 + 24) + **(v6 + 24));
  v10 = swift_task_alloc();
  *(v0 + 80) = v10;
  v11 = sub_24DCB50A4();
  WitnessTable = swift_getWitnessTable();
  *v10 = v0;
  v10[1] = sub_24DC59CC4;

  return v15(v0 + 24, v11, WitnessTable, v4, v6);
}

uint64_t sub_24DC59CC4()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24DC59E00, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_24DC59E00()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24DC59E64(uint64_t a1, void *a2)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[6];
  v9 = v2[7];
  v10 = v2[8];
  v12[0] = v2[2];
  v12[1] = v6;
  v12[2] = v7;
  v12[3] = v8;
  v12[4] = v9;
  v12[5] = v10;
  type metadata accessor for SerializingRPCWriter(0, v12);
  result = (*(v10 + 16))(a1, v6, v9, v7, v10);
  if (v3)
  {
    *a2 = v3;
  }

  return result;
}

uint64_t sub_24DC59F28(void (*a1)(char *, char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45 = a8;
  v9 = v8;
  v60 = a2;
  v61 = a4;
  v59 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v54 = *(AssociatedTypeWitness - 8);
  v14 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v43 = &v42 - v15;
  v46 = a5;
  v44 = *(a5 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v56 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v57 = &v42 - v18;
  v19 = sub_24DCB5414();
  v47 = *(v19 - 8);
  v48 = v19;
  v20 = MEMORY[0x28223BE20](v19);
  v50 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v42 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v55 = *(a3 - 1);
  MEMORY[0x28223BE20](v27);
  v29 = &v42 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a6;
  v62 = swift_getAssociatedTypeWitness();
  v51 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v31 = &v42 - v30;
  v32 = sub_24DCB4F24();
  v63 = sub_24DCB5554();
  v58 = sub_24DCB5564();
  sub_24DCB5534();
  (*(v55 + 2))(v29, v52, a3);
  v61 = v31;
  v55 = a3;
  result = sub_24DCB4F04();
  if (v32 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v32)
  {
    v34 = (v54 + 48);
    v35 = (v54 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_24DCB5444();
      result = (*v34)(v24, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v59(v24, v57);
      if (v9)
      {
        (*(v51 + 8))(v61, v62);

        (*(v44 + 32))(v45, v57, v46);
        return (*v35)(v24, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v35)(v24, AssociatedTypeWitness);
      sub_24DCB5544();
      if (!--v32)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v36 = v50;
  sub_24DCB5444();
  v37 = v36;
  v38 = v54;
  v39 = *(v54 + 48);
  v57 = (v54 + 48);
  v55 = v39;
  if (v39(v36, 1, AssociatedTypeWitness) == 1)
  {
LABEL_13:
    (*(v51 + 8))(v61, v62);
    (*(v47 + 8))(v37, v48);
    return v63;
  }

  else
  {
    v54 = *(v38 + 32);
    v40 = (v38 + 8);
    v41 = v43;
    while (1)
    {
      (v54)(v41, v37, AssociatedTypeWitness);
      v59(v41, v56);
      if (v9)
      {
        break;
      }

      v9 = 0;
      (*v40)(v41, AssociatedTypeWitness);
      sub_24DCB5544();
      sub_24DCB5444();
      if (v55(v37, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_13;
      }
    }

    (*v40)(v41, AssociatedTypeWitness);
    (*(v51 + 8))(v61, v62);

    return (*(v44 + 32))(v45, v56, v46);
  }
}

uint64_t sub_24DC5A61C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24DC334F4;

  return sub_24DC59490(a1, a2);
}

uint64_t sub_24DC5A6C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_24DC2FD00;

  return sub_24DC59A34(a1, a4, a2, a3);
}

uint64_t sub_24DC5A77C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v28 = a6;
  v29 = a2;
  v31 = a8;
  v32 = a3;
  v30 = a1;
  v12 = *(a4 - 8);
  v13 = MEMORY[0x28223BE20](a1);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v13);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19F070, &qword_24DCBBC70);
  v33[0] = a4;
  v33[1] = v20;
  v33[2] = a5;
  v33[3] = a6;
  v33[4] = &protocol witness table for <A> [A];
  v33[5] = a7;
  v21 = a7;
  v22 = type metadata accessor for SerializingRPCWriter(0, v33);
  MEMORY[0x28223BE20](v22);
  v24 = &v27 - v23;
  (*(v17 + 16))(v19, v29, a5);
  (*(v12 + 16))(v15, v30, a4);
  sub_24DC593AC(v19, v15, a4, v20, a5, v28, &protocol witness table for <A> [A], v21, v24);
  WitnessTable = swift_getWitnessTable();
  return RPCWriter.init<A>(wrapping:)(v24, v22, WitnessTable, v31);
}

uint64_t sub_24DC5A9CC(uint64_t a1)
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

uint64_t sub_24DC5AA58(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 32);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v12 = a2 - v10;
  if (a2 <= v10)
  {
    goto LABEL_28;
  }

  v13 = (v11 & ~v9) + *(*(v6 - 8) + 64);
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v16 = ((v12 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v16))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 < 2)
    {
LABEL_27:
      if (v10)
      {
LABEL_28:
        if (v5 >= v8)
        {
          return (*(v4 + 48))();
        }

        else
        {
          return (*(v7 + 48))((a1 + v11) & ~v9, v8, v6);
        }
      }

      return 0;
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_27;
  }

LABEL_14:
  v17 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v17 = 0;
  }

  if (v13)
  {
    if (v13 <= 3)
    {
      v18 = v13;
    }

    else
    {
      v18 = 4;
    }

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        v19 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v19 = *a1;
      }
    }

    else if (v18 == 1)
    {
      v19 = *a1;
    }

    else
    {
      v19 = *a1;
    }
  }

  else
  {
    v19 = 0;
  }

  return v10 + (v19 | v17) + 1;
}

char *sub_24DC5AC34(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(a4 + 32);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v5 + 64);
  v11 = *(v8 + 80);
  if (v9 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v8 + 84);
  }

  v13 = ((v10 + v11) & ~v11) + *(*(v7 - 8) + 64);
  v14 = a3 >= v12;
  v15 = a3 - v12;
  if (v15 != 0 && v14)
  {
    if (v13 <= 3)
    {
      v20 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
      if (HIWORD(v20))
      {
        v16 = 4;
      }

      else
      {
        if (v20 < 0x100)
        {
          v21 = 1;
        }

        else
        {
          v21 = 2;
        }

        if (v20 >= 2)
        {
          v16 = v21;
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
  }

  else
  {
    v16 = 0;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v13 < 4)
    {
      v19 = (v17 >> (8 * v13)) + 1;
      if (v13)
      {
        v22 = v17 & ~(-1 << (8 * v13));
        v23 = result;
        bzero(result, v13);
        result = v23;
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *v23 = v22;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&result[v13] = v19;
              }

              else
              {
                *&result[v13] = v19;
              }

              return result;
            }
          }

          else
          {
            *v23 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *v23 = v22;
        v23[2] = BYTE2(v22);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v18 = result;
      bzero(result, v13);
      result = v18;
      *v18 = v17;
      v19 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      result[v13] = v19;
    }

    return result;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&result[v13] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_31;
    }

    *&result[v13] = 0;
  }

  else if (v16)
  {
    result[v13] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return result;
  }

LABEL_31:
  if (v6 >= v9)
  {
    v26 = *(v5 + 56);

    return v26();
  }

  else
  {
    v24 = *(v8 + 56);
    v25 = &result[v10 + v11] & ~v11;

    return v24(v25);
  }
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t RPCAsyncSequence.makeAsyncIterator()@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[3];
  v4 = __swift_project_boxed_opaque_existential_1(v1, v3);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v9 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  (*(v11 + 16))(&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v4, v3);
  v12 = sub_24DCB5254();
  MEMORY[0x28223BE20](v12);
  (*(v6 + 16))(&v16 - v9, &v16 - v9, AssociatedTypeWitness);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  a1[3] = AssociatedTypeWitness;
  a1[4] = AssociatedConformanceWitness;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  (*(v6 + 32))(boxed_opaque_existential_1, &v16 - v9, AssociatedTypeWitness);
  return (*(v6 + 8))(&v16 - v9, AssociatedTypeWitness);
}

uint64_t sub_24DC5B17C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4);
  v7 = *(*(a2 - 8) + 32);

  return v7(boxed_opaque_existential_1, a1, a2);
}

uint64_t sub_24DC5B208(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_24DC5B26C(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_24DC5B2AC(a1, v1);
}

uint64_t sub_24DC5B2AC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t _s16GRPCCoreInternal16RPCAsyncSequenceV13AsyncIteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[5] = v5;
  v6[6] = a5;
  v6[3] = a2;
  v6[4] = a3;
  v6[2] = a1;
  v8 = *(a4 + 24);
  v6[7] = v8;
  v6[8] = *(v8 - 8);
  v6[9] = swift_task_alloc();
  if (a2)
  {
    swift_getObjectType();
    v9 = sub_24DCB50D4();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v6[10] = v9;
  v6[11] = v11;

  return MEMORY[0x2822009F8](sub_24DC5B3C4, v9, v11);
}

uint64_t sub_24DC5B3C4()
{
  v1 = v0[5];
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v1, v2);
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_24DC5B488;
  v5 = v0[9];
  v6 = v0[3];
  v7 = v0[4];
  v8 = v0[2];

  return MEMORY[0x282200310](v8, v6, v7, v5, v2, v3);
}

uint64_t sub_24DC5B488()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = *(v2 + 80);
    v5 = *(v2 + 88);

    return MEMORY[0x2822009F8](sub_24DC5B5BC, v4, v5);
  }

  else
  {

    v6 = *(v3 + 8);

    return v6();
  }
}

uint64_t sub_24DC5B5BC()
{
  (*(v0[8] + 32))(v0[6], v0[9], v0[7]);

  v1 = v0[1];

  return v1();
}

uint64_t RPCAsyncSequence.AsyncIterator.next()(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  v5 = *(a2 + 24);
  v2[3] = v5;
  v2[4] = *(v5 - 8);
  v6 = swift_task_alloc();
  v2[5] = v6;
  v7 = swift_task_alloc();
  v2[6] = v7;
  *v7 = v2;
  v7[1] = sub_24DC3FB50;

  return _s16GRPCCoreInternal16RPCAsyncSequenceV13AsyncIteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(a1, 0, 0, a2, v6);
}

uint64_t sub_24DC5B750(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24DC2FD00;

  return RPCAsyncSequence.AsyncIterator.next()(a1, a2);
}

uint64_t sub_24DC5B7F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v10 = *(a5 + 24);
  v5[3] = v10;
  v5[4] = *(v10 - 8);
  v11 = swift_task_alloc();
  v5[5] = v11;
  v12 = swift_task_alloc();
  v5[6] = v12;
  *v12 = v5;
  v12[1] = sub_24DC3FF04;

  return _s16GRPCCoreInternal16RPCAsyncSequenceV13AsyncIteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(a1, a2, a3, a5, v11);
}

uint64_t sub_24DC5B938@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  RPCAsyncSequence.makeAsyncIterator()(a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t sub_24DC5B998(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_24DC5B9EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_24DC5BA2C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_24DC5BA78(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t RPCRequestPart<>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = (v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v10, v12, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v5 + 32))(v8, v10, v4);
    MEMORY[0x253035FF0](1);
    sub_24DCB4D34();
    return (*(v5 + 8))(v8, v4);
  }

  else
  {
    v14 = *v10;
    MEMORY[0x253035FF0](0);
    v15[1] = v14;
    sub_24DC4163C();
    sub_24DCB4D34();
  }
}

uint64_t static RPCRequestPart<>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29[1] = a5;
  v32 = a1;
  v33 = a2;
  v31 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v29[0] = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for RPCRequestPart(0, v7, v8, v8);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v29 - v14;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v30 = *(TupleTypeMetadata2 - 8);
  v17 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v19 = v29 - v18;
  v20 = *(v17 + 48);
  v21 = *(v10 + 16);
  v21(v29 - v18, v32, v9);
  v21(&v19[v20], v33, v9);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v21(v15, v19, v9);
    v27 = *v15;
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v34 = *&v19[v20];
      v35 = v27;
      sub_24DC303C8();
      v25 = sub_24DCB4DA4();

      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v21(v13, v19, v9);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v31 + 8))(v13, a3);
LABEL_7:
    v25 = 0;
    v10 = v30;
    v9 = TupleTypeMetadata2;
    goto LABEL_9;
  }

  v22 = v31;
  v23 = &v19[v20];
  v24 = v29[0];
  (*(v31 + 32))(v29[0], v23, a3);
  v25 = sub_24DCB4DA4();
  v26 = *(v22 + 8);
  v26(v24, a3);
  v26(v13, a3);
LABEL_9:
  (*(v10 + 8))(v19, v9);
  return v25 & 1;
}

uint64_t RPCResponsePart<>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = (&v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v10, v12, a2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v5 + 32))(v8, v10, v4);
      MEMORY[0x253035FF0](1);
      sub_24DCB4D34();
      return (*(v5 + 8))(v8, v4);
    }

    else
    {
      v16 = *v10;
      v17 = v10[1];
      MEMORY[0x253035FF0](2);
      v19 = v16;
      sub_24DC5C31C();
      sub_24DCB4D34();
      v19 = v17;
      sub_24DC4163C();
      sub_24DCB4D34();
    }
  }

  else
  {
    v15 = *v10;
    MEMORY[0x253035FF0](0);
    v19 = v15;
    sub_24DC4163C();
    sub_24DCB4D34();
  }
}

unint64_t sub_24DC5C31C()
{
  result = qword_27F19F078;
  if (!qword_27F19F078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19F078);
  }

  return result;
}

uint64_t sub_24DC5C388(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t, uint64_t))
{
  sub_24DCB58A4();
  a3(v7, a1, a2);
  return sub_24DCB58F4();
}

uint64_t sub_24DC5C410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t))
{
  v6 = *(a3 - 8);
  sub_24DCB58A4();
  a4(v8, a2, v6);
  return sub_24DCB58F4();
}

uint64_t static RPCResponsePart<>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v43 = a1;
  v44 = a2;
  v6 = *(a3 - 8);
  v39 = a5;
  v40 = v6;
  MEMORY[0x28223BE20](a1);
  v38 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for RPCResponsePart(0, v8, v9, v9);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = (&v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v37 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = (&v37 - v18);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v42 = *(TupleTypeMetadata2 - 8);
  v21 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v23 = &v37 - v22;
  v24 = (&v37 + *(v21 + 48) - v22);
  v41 = v11;
  v25 = *(v11 + 16);
  v25(&v37 - v22, v43, v10);
  v25(v24, v44, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v25(v19, v23, v10);
    v32 = *v19;
    if (!swift_getEnumCaseMultiPayload())
    {
      v45 = *v24;
      v46 = v32;
      sub_24DC303C8();
      v29 = sub_24DCB4DA4();

      v31 = v41;
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v25(v17, v23, v10);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v27 = v40;
      v28 = v38;
      (*(v40 + 32))(v38, v24, a3);
      v29 = sub_24DCB4DA4();
      v30 = *(v27 + 8);
      v30(v28, a3);
      v30(v17, a3);
      v31 = v41;
      goto LABEL_15;
    }

    (*(v40 + 8))(v17, a3);
LABEL_14:
    v29 = 0;
    v31 = v42;
    v10 = TupleTypeMetadata2;
    goto LABEL_15;
  }

  v25(v14, v23, v10);
  v34 = *v14;
  v33 = v14[1];
  if (swift_getEnumCaseMultiPayload() != 2)
  {

LABEL_13:

    goto LABEL_14;
  }

  v35 = v24[1];
  v45 = *v24;
  v46 = v34;
  sub_24DC43BE8();
  if (sub_24DCB4DA4())
  {
    v45 = v35;
    v46 = v33;
    sub_24DC303C8();
    v29 = sub_24DCB4DA4();
  }

  else
  {

    v29 = 0;
  }

  v31 = v41;
LABEL_15:
  (*(v31 + 8))(v23, v10);
  return v29 & 1;
}

uint64_t sub_24DC5C9BC(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_24DC5CA2C(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_24DC5CD80();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_24DC5CAB0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 16;
  if (*(v3 + 64) > 0x10uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 253) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 3)
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
    goto LABEL_25;
  }

LABEL_14:
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

  return (v5 | v10) + 254;
}

void sub_24DC5CBC8(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 0x10)
  {
    v5 = 16;
  }

  v6 = v5 + 1;
  if (a3 < 0xFE)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 253) >> (8 * v6)) + 1;
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

  if (a2 > 0xFD)
  {
    v8 = a2 - 254;
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

void sub_24DC5CD80()
{
  if (!qword_27F19F080)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F19F080);
    }
  }
}

uint64_t sub_24DC5CDE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _BroadcastSequenceStorage(0, a3, a3, a4);
  swift_allocObject();
  sub_24DC5E43C(a2, v5, v6, v7);
}

uint64_t sub_24DC5CE48(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_24DC5E43C(a1, v3, v4, v5);
  return v2;
}

uint64_t sub_24DC5CE88(uint64_t a1)
{

  sub_24DC5CEB8();
  return a1;
}

uint64_t sub_24DC5CEB8()
{
  v1 = v0;
  v2 = *&v0->_os_unfair_lock_opaque;
  os_unfair_lock_lock(v0 + 4);
  v5 = type metadata accessor for _BroadcastSequenceStateMachine(0, *(v2 + 80), v3, v4);
  v9 = sub_24DC60F08(v5, v6, v7, v8);
  os_unfair_lock_unlock(v1 + 4);
  return v9;
}

uint64_t sub_24DC5CF44()
{
  v1 = v0;
  v2 = *&v0->_os_unfair_lock_opaque;
  os_unfair_lock_lock(v1 + 4);
  v5 = type metadata accessor for _BroadcastSequenceStateMachine(0, *(v2 + 80), v3, v4);
  LOBYTE(v2) = sub_24DC630D8(v5);
  os_unfair_lock_unlock(v1 + 4);
  return v2 & 1;
}

uint64_t sub_24DC5CFF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*&v4->_os_unfair_lock_opaque + 80);
  v6 = type metadata accessor for _BroadcastSequenceStateMachine.ConsumerContinuations(0, v5, a3, a4);
  v7 = *(v6 - 1);
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - v8;
  v12 = type metadata accessor for _BroadcastSequenceStateMachine.OnInvalidateAllSubscriptions(0, v5, v10, v11);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v25 - v17;
  os_unfair_lock_lock(v4 + 4);
  v21 = type metadata accessor for _BroadcastSequenceStateMachine(0, v5, v19, v20);
  sub_24DC6347C(v21, v18, v22, v23);
  os_unfair_lock_unlock(v4 + 4);
  (*(v13 + 16))(v16, v18, v12);
  if ((*(v7 + 48))(v16, 1, v6) != 1)
  {
    (*(v7 + 32))(v9, v16, v6);
    sub_24DC5EE70(v6);
    (*(v7 + 8))(v9, v6);
  }

  return (*(v13 + 8))(v18, v12);
}

uint64_t sub_24DC5D224@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_24DC5CE88(*v1);
  v5 = v4;

  *a1 = v3;
  a1[1] = v5;
  return result;
}

uint64_t sub_24DC5D270(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_24DC5D290, 0, 0);
}

uint64_t sub_24DC5D290()
{
  v1 = *(v0[3] + 8);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_24DC5D330;
  v3 = v0[2];

  return sub_24DC5D424(v3, v1);
}

uint64_t sub_24DC5D330()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24DC5D424(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  return MEMORY[0x2822009F8](sub_24DC5D470, 0, 0);
}

uint64_t sub_24DC5D470()
{
  v1 = v0[4];
  v2 = v0[3];
  v3 = swift_task_alloc();
  v0[6] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[7] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v0[8] = v5;
  v6 = sub_24DCB5414();
  *v5 = v0;
  v5[1] = sub_24DC5D590;
  v7 = v0[2];

  return MEMORY[0x282200830](v7, &unk_24DCBA448, v3, sub_24DC6E274, v4, 0, 0, v6);
}

uint64_t sub_24DC5D590()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24DC5D6D8, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_24DC5D6D8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24DC5D744(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24DC2FD00;

  return sub_24DC5D270(a1);
}

uint64_t sub_24DC5D7DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  v12 = swift_task_alloc();
  *(v6 + 32) = v12;
  *v12 = v6;
  v12[1] = sub_24DC5D8B0;

  return MEMORY[0x282200320](a1, a2, a3, a5, a6, v6 + 16);
}

uint64_t sub_24DC5D8B0()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    **(v2 + 24) = *(v2 + 16);
  }

  v4 = *(v3 + 8);

  return v4();
}

uint64_t sub_24DC5D9C0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24DC334F4;

  return sub_24DC5DA58(a1, v4, v5, v6);
}

uint64_t sub_24DC5DA58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[2] = a1;
  v5[3] = v4;
  v6 = *(*v4 + 80);
  v5[4] = v6;
  v7 = type metadata accessor for _BroadcastSequenceStateMachine.ConsumerContinuations(0, v6, a3, a4);
  v5[5] = v7;
  v5[6] = *(v7 - 8);
  v5[7] = swift_task_alloc();
  v10 = type metadata accessor for _BroadcastSequenceStateMachine.OnYield(0, v6, v8, v9);
  v5[8] = v10;
  v5[9] = *(v10 - 8);
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24DC5DBA0, 0, 0);
}

uint64_t sub_24DC5DBA0()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v6 = v0[3];
  v5 = v0[4];
  v7 = v0[2];
  os_unfair_lock_lock(v6 + 4);
  v10 = type metadata accessor for _BroadcastSequenceStateMachine(0, v5, v8, v9);
  sub_24DC5F340(v7, v10, v1, v11, v12);
  os_unfair_lock_unlock(v6 + 4);
  (*(v4 + 16))(v2, v1, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v25 = v0[9];
      sub_24DC6E294();
      swift_allocError();
      *v26 = 1;
      swift_willThrow();
      (*(v25 + 8))(v0[11], v0[8]);

      v24 = v0[1];
      goto LABEL_11;
    }

    v20 = v0[9];
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v14 = v0[3];
      v15 = *v0[10];
      v16 = swift_task_alloc();
      v0[12] = v16;
      *(v16 + 16) = v14;
      *(v16 + 24) = v15;
      v17 = swift_task_alloc();
      v0[13] = v17;
      *(v17 + 16) = v14;
      *(v17 + 24) = v15;
      v18 = swift_task_alloc();
      v0[14] = v18;
      *v18 = v0;
      v18[1] = sub_24DC5DE74;
      v19 = MEMORY[0x277D84F78] + 8;

      return MEMORY[0x282200830](v18, &unk_24DCBA468, v16, sub_24DC6E394, v17, 0, 0, v19);
    }

    v20 = v0[9];
    v22 = v0[6];
    v21 = v0[7];
    v23 = v0[5];
    (*(v22 + 32))(v21, v0[10], v23);
    sub_24DC5EE70(v23);
    (*(v22 + 8))(v21, v23);
  }

  (*(v20 + 8))(v0[11], v0[8]);

  v24 = v0[1];
LABEL_11:

  return v24();
}

uint64_t sub_24DC5DE74()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_24DC5E064;
  }

  else
  {
    v2 = sub_24DC5DFC8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24DC5DFC8()
{
  (*(v0[9] + 8))(v0[11], v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24DC5E064()
{
  (*(v0[9] + 8))(v0[11], v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24DC5E128(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v33 = a1;
  v6 = *(*&v4->_os_unfair_lock_opaque + 80);
  v7 = type metadata accessor for _BroadcastSequenceStateMachine.ConsumerContinuations(0, v6, a3, a4);
  v8 = *(v7 - 1);
  MEMORY[0x28223BE20](v7);
  v32 = &v32 - v9;
  v12 = type metadata accessor for _BroadcastSequenceStateMachine.OnFinish(0, v6, v10, v11);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v32 - v17;
  os_unfair_lock_lock(v4 + 4);
  v21 = type metadata accessor for _BroadcastSequenceStateMachine(0, v6, v19, v20);
  sub_24DC608E8(v33, a2 & 1, v21, v18, v22);
  os_unfair_lock_unlock(v4 + 4);
  (*(v13 + 16))(v16, v18, v12);
  type metadata accessor for _BroadcastSequenceStateMachine.ProducerContinuations(255, v6, v23, v24);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  if ((*(*(TupleTypeMetadata2 - 8) + 48))(v16, 1, TupleTypeMetadata2) != 1)
  {
    v26 = &v16[*(TupleTypeMetadata2 + 48)];
    v27 = *v26;
    v28 = *(v26 + 1);
    v29 = v26[16];
    v30 = v32;
    (*(v8 + 32))(v32, v16, v7);
    sub_24DC5EE70(v7);
    sub_24DC5F1B0(v27, v28, v29);

    sub_24DC57738(v28, v29);
    (*(v8 + 8))(v30, v7);
  }

  return (*(v13 + 8))(v18, v12);
}

uint64_t sub_24DC5E43C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*v4 + 80);
  v10[0] = a1;
  v11 = 0;
  *v12 = 0;
  memset(&v12[8], 0, 73);
  v6 = type metadata accessor for _BroadcastSequenceStateMachine(0, v5, a3, a4);
  (*(*(v6 - 8) + 32))(&v12[8], v10, v6);
  v7 = *&v12[48];
  *(v4 + 48) = *&v12[32];
  *(v4 + 64) = v7;
  *(v4 + 80) = *&v12[64];
  *(v4 + 96) = v12[80];
  v8 = *&v12[16];
  *(v4 + 16) = *v12;
  *(v4 + 32) = v8;
  return v4;
}

uint64_t sub_24DC5E500@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 72) = 0;
  return result;
}

os_unfair_lock_s *sub_24DC5E50C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = v4 + 6;
  v7 = *(*&v4->_os_unfair_lock_opaque + 80);
  v8 = type metadata accessor for _BroadcastSequenceStateMachine.ConsumerContinuations(0, v7, a3, a4);
  v9 = *(v8 - 1);
  MEMORY[0x28223BE20](v8);
  v35 = v34 - v10;
  v13 = type metadata accessor for _BroadcastSequenceStateMachine.OnDropResources(0, v7, v11, v12);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v34 - v18;
  os_unfair_lock_lock(v4 + 4);
  v36 = type metadata accessor for _BroadcastSequenceStateMachine(0, v7, v20, v21);
  sub_24DC5E7EC(v36, v19, v22, v23);
  os_unfair_lock_unlock(v4 + 4);
  (*(v14 + 16))(v17, v19, v13);
  type metadata accessor for _BroadcastSequenceStateMachine.ProducerContinuations(255, v7, v24, v25);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  if ((*(*(TupleTypeMetadata2 - 8) + 48))(v17, 1, TupleTypeMetadata2) != 1)
  {
    v27 = &v17[*(TupleTypeMetadata2 + 48)];
    v34[0] = v13;
    v34[1] = v6;
    v29 = *v27;
    v28 = *(v27 + 1);
    v30 = v27[16];
    v31 = v35;
    (*(v9 + 32))(v35, v17, v8);
    sub_24DC5EE70(v8);
    sub_24DC5F1B0(v29, v28, v30);

    v32 = v30;
    v13 = v34[0];
    sub_24DC57738(v28, v32);
    (*(v9 + 8))(v31, v8);
  }

  (*(v14 + 8))(v19, v13);
  sub_24DCB4C14();
  sub_24DCB5404();
  return v5;
}

uint64_t sub_24DC5E7EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  v7 = *v4;
  v8 = v4[1];
  v10 = v4[2];
  v9 = v4[3];
  v11 = *(v4 + 72);
  if (v11 > 1)
  {
    v31 = v4[4];
    v30 = v4[5];
    v32 = *(v4 + 48);
    if (v11 == 2)
    {
      v75 = *v4;
      v76 = *(v4 + 1);
      *(&v77 + 1) = v4[5];
      v78[0] = *(v4 + 48);
      *&v78[1] = *(v4 + 49);
      *&v78[16] = v4[8];
      v33 = *(v4 + 3);
      v81 = *(v4 + 2);
      *&v77 = v81;
      v82[0] = v33;
      *(v82 + 9) = *(v4 + 57);
      v34 = *(v4 + 1);
      v79 = *v4;
      v80 = v34;
      *&v89 = v7;
      *(&v89 + 1) = v8;
      *&v90 = v10;
      *(&v90 + 1) = v9;
      *&v91 = v31;
      *(&v91 + 1) = v30;
      v92[0] = v32;
      *&v92[1] = *(v4 + 49);
      *&v92[16] = v4[8];
      v92[24] = 2;
      v35 = type metadata accessor for _BroadcastSequenceStateMachine.State.Streaming(0, *(a1 + 16), a3, a4);
      v36 = *(v35 - 8);
      (*(v36 + 16))(&v93, &v89, v35);
      v73 = *(*(a1 - 8) + 8);
      v73(&v79, a1);
      v4[8] = 0;
      *(v4 + 2) = 0u;
      *(v4 + 3) = 0u;
      *v4 = 0u;
      *(v4 + 1) = 0u;
      *(v4 + 72) = 4;
      v37 = v4;
      sub_24DC6B268(1, v35, a2);
      sub_24DC6E294();
      v69 = swift_allocError();
      *v38 = 1;
      v87 = *&v78[16];
      v85 = v77;
      v86 = *v78;
      v83 = v75;
      v84 = v76;
      v39 = *(v36 + 8);

      v39(&v83, v35);
      v88 = 1;
      v40 = *(v4 + 3);
      v95 = *(v4 + 2);
      v96[0] = v40;
      *(v96 + 9) = *(v4 + 57);
      v41 = *(v4 + 1);
      v93 = *v4;
      v94 = v41;
      result = (v73)(&v93, a1);
      *v4 = v75;
      v4[2] = *v78;
      v4[3] = *&v78[8];
      v4[4] = *&v78[16];
      v4[5] = v69;
      *(v4 + 48) = 1;
    }

    else
    {
      if (v11 != 3)
      {
        result = sub_24DCB55E4();
        __break(1u);
        return result;
      }

      *&v79 = *v4;
      *(&v79 + 1) = v8;
      *&v80 = v10;
      *(&v80 + 1) = v9;
      *&v81 = v31;
      *(&v81 + 1) = v30;
      v57 = v32 & 1;
      LOBYTE(v82[0]) = v32 & 1;
      v58 = *(v4 + 3);
      v91 = *(v4 + 2);
      *v92 = v58;
      *&v92[9] = *(v4 + 57);
      v59 = *(v4 + 1);
      v89 = *v4;
      v90 = v59;

      sub_24DC6F0D0(v30, v57);
      v60 = *(*(a1 - 8) + 8);
      v60(&v89, a1);
      v4[8] = 0;
      *(v4 + 2) = 0u;
      *(v4 + 3) = 0u;
      *v4 = 0u;
      *(v4 + 1) = 0u;
      *(v4 + 72) = 4;
      v63 = type metadata accessor for _BroadcastSequenceStateMachine.State.Finished(0, *(a1 + 16), v61, v62);
      v37 = v4;
      sub_24DC6C74C(1, v63, a2);
      v64 = v81;
      v65 = v82[0];
      LOBYTE(v83) = v82[0];
      v66 = *(v4 + 3);
      v95 = *(v4 + 2);
      v96[0] = v66;
      *(v96 + 9) = *(v4 + 57);
      v67 = *(v4 + 1);
      v93 = *v4;
      v94 = v67;
      result = (v60)(&v93, a1);
      v68 = v80;
      *v4 = v79;
      *(v4 + 1) = v68;
      *(v4 + 2) = v64;
      *(v4 + 48) = v65;
    }

    *(v37 + 72) = 3;
    return result;
  }

  if (*(v4 + 72))
  {
    *&v83 = *v4;
    *(&v83 + 1) = v8;
    *&v84 = v10;
    *(&v84 + 1) = v9;
    v42 = *(v4 + 3);
    v91 = *(v4 + 2);
    *v92 = v42;
    *&v92[9] = *(v4 + 57);
    v43 = *(v4 + 1);
    v89 = *v4;
    v90 = v43;
    v44 = *(*(a1 - 8) + 8);

    v44(&v89, a1);
    v4[8] = 0;
    *(v4 + 2) = 0u;
    *(v4 + 3) = 0u;
    *v4 = 0u;
    *(v4 + 1) = 0u;
    *(v4 + 72) = 4;
    v45 = *(a1 + 16);
    v48 = type metadata accessor for _BroadcastSequenceStateMachine.State.Subscribed(0, v45, v46, v47);
    sub_24DC664F4(1, v48, a2);
    v49 = v83;
    v50 = v84;
    sub_24DC6E294();
    v51 = swift_allocError();
    *v52 = 1;
    sub_24DC6BA44(v49, *(&v49 + 1), v50, v51, 1, v45, &v79, v53);
    v71 = v80;
    v74 = v79;
    v54 = v81;
    LOBYTE(v45) = v82[0];
    v55 = *(v4 + 3);
    v95 = *(v4 + 2);
    v96[0] = v55;
    *(v96 + 9) = *(v4 + 57);
    v56 = *(v4 + 1);
    v93 = *v4;
    v94 = v56;
    result = (v44)(&v93, a1);
    *v4 = v74;
    *(v4 + 1) = v71;
    *(v4 + 2) = v54;
    *(v4 + 48) = v45;
  }

  else
  {
    v12 = *(v4 + 3);
    v91 = *(v4 + 2);
    *v92 = v12;
    *&v92[9] = *(v4 + 57);
    v13 = *(v4 + 1);
    v89 = *v4;
    v90 = v13;
    v14 = *(*(a1 - 8) + 8);
    v14(&v89, a1);
    v4[8] = 0;
    *(v4 + 2) = 0u;
    *(v4 + 3) = 0u;
    *v4 = 0u;
    *(v4 + 1) = 0u;
    *(v4 + 72) = 4;
    v15 = *(a1 + 16);
    type metadata accessor for _BroadcastSequenceStateMachine.ConsumerContinuations(255, v15, v16, v17);
    type metadata accessor for _BroadcastSequenceStateMachine.ProducerContinuations(255, v15, v18, v19);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    (*(*(TupleTypeMetadata2 - 8) + 56))(a2, 1, 1, TupleTypeMetadata2);
    sub_24DC6E294();
    v21 = swift_allocError();
    *v22 = 1;
    sub_24DC6F294(v21, 1, v15, &v79, v23);
    v24 = *(v4 + 2);
    v25 = *(v4 + 3);
    v26 = *v4;
    v94 = *(v4 + 1);
    v95 = v24;
    v96[0] = v25;
    *(v96 + 9) = *(v4 + 57);
    v70 = v80;
    v72 = v79;
    v27 = v81;
    v28 = v82[0];
    LOBYTE(v83) = v82[0];
    v93 = v26;
    result = (v14)(&v93, a1);
    *v4 = v72;
    *(v4 + 1) = v70;
    *(v4 + 2) = v27;
    *(v4 + 48) = v28;
  }

  *(v4 + 72) = 3;
  return result;
}

uint64_t sub_24DC5EE70(char *a1)
{
  v2 = v1;
  v3 = a1;
  v4 = *(a1 + 2);
  sub_24DCB5414();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v5 = sub_24DCB5104();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v9 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - v10;
  v13 = type metadata accessor for _BroadcastSequenceStateMachine._OneOrMany(0, v4, v5, v12);
  MEMORY[0x28223BE20](v13);
  v15 = (&v20 - v14);
  (*(v16 + 16))(&v20 - v14, v2, v13);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
LABEL_12:
    (*(v6 + 32))(v11, v15, v5);
    sub_24DC60100(v2 + *(v3 + 7), v5);
    return (*(v6 + 8))(v11, v5);
  }

  v11 = *v15;
  if (sub_24DCB5034())
  {
    v20 = v7;
    v15 = 0;
    v17 = *(v3 + 7);
    do
    {
      v18 = sub_24DCB5024();
      sub_24DCB4FB4();
      if (v18)
      {
        (*(v6 + 16))(v9, &v11[((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15], v5);
        v3 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_11;
        }
      }

      else
      {
        result = sub_24DCB54F4();
        if (v20 != 8)
        {
          __break(1u);
          return result;
        }

        v21 = result;
        (*(v6 + 16))(v9, &v21, v5);
        swift_unknownObjectRelease();
        v3 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
LABEL_11:
          __break(1u);
          goto LABEL_12;
        }
      }

      sub_24DC60100(v2 + v17, v5);
      (*(v6 + 8))(v9, v5);
      v15 = (v15 + 1);
    }

    while (v3 != sub_24DCB5034());
  }
}

uint64_t sub_24DC5F1B0(uint64_t a1, uint64_t a2, char a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F090, &qword_24DCBA478);
  v7 = *(v6 - 8);
  result = MEMORY[0x28223BE20](v6);
  v10 = v17 - v9;
  v11 = *(a1 + 16);
  if (v11)
  {
    v14 = *(v7 + 16);
    v12 = v7 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    v14(v10, v15, v6);
    while (1)
    {
      if (a3)
      {
        v17[1] = a2;
        MEMORY[0x2530363C0](a2);
        sub_24DCB50E4();
      }

      else
      {
        sub_24DCB50F4();
      }

      result = (*(v12 - 8))(v10, v6);
      v15 += v16;
      if (!--v11)
      {
        break;
      }

      v13(v10, v15, v6);
    }
  }

  return result;
}

uint64_t sub_24DC5F30C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_24DC5E50C(a1, a2, a3, a4);

  return MEMORY[0x2821FE8D8](v4, 97, 7);
}

uint64_t sub_24DC5F340@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v6 = v5;
  v8 = *v5;
  v10 = v6[1];
  v9 = v6[2];
  v11 = v6[3];
  v12 = *(v6 + 72);
  if (v12 > 1)
  {
    v66 = a3;
    v33 = v6[4];
    v32 = v6[5];
    v34 = *(v6 + 48);
    if (v12 == 2)
    {
      *&v77[1] = *(v6 + 49);
      v35 = *v6;
      v78[1] = *(v6 + 1);
      v36 = *(v6 + 3);
      v78[2] = *(v6 + 2);
      v79[0] = v36;
      *(v79 + 9) = *(v6 + 57);
      *&v74 = v8;
      *(&v74 + 1) = v10;
      *&v75 = v9;
      *(&v75 + 1) = v11;
      *&v76 = v33;
      *(&v76 + 1) = v32;
      v77[0] = v34;
      *&v77[16] = v6[8];
      v78[0] = v35;
      *&v80 = v8;
      *(&v80 + 1) = v10;
      *&v81 = v9;
      *(&v81 + 1) = v11;
      *&v82 = v33;
      *(&v82 + 1) = v32;
      v83[0] = v34;
      *&v83[1] = *(v6 + 49);
      *&v83[16] = v6[8];
      v83[24] = 2;
      v39 = type metadata accessor for _BroadcastSequenceStateMachine.State.Streaming(0, *(a2 + 16), a4, a5);
      (*(*(v39 - 8) + 16))(&v84, &v80, v39);
      v40 = *(*(a2 - 8) + 8);
      v40(v78, a2);
      v6[8] = 0;
      *(v6 + 2) = 0u;
      *(v6 + 3) = 0u;
      *v6 = 0u;
      *(v6 + 1) = 0u;
      *(v6 + 72) = 4;
      sub_24DC66BB8(a1, v39, v66, v41, v42);
      v43 = *(v6 + 3);
      v86 = *(v6 + 2);
      v87[0] = v43;
      *(v87 + 9) = *(v6 + 57);
      v44 = *(v6 + 1);
      v84 = *v6;
      v85 = v44;
      result = v40(&v84, a2);
      v45 = *v77;
      *(v6 + 2) = v76;
      *(v6 + 3) = v45;
      v6[8] = *&v77[16];
      v46 = v75;
      *v6 = v74;
      *(v6 + 1) = v46;
      *(v6 + 72) = 2;
    }

    else if (v12 == 3)
    {

      sub_24DC6F0D0(v32, v34 & 1);

      sub_24DC57738(v32, v34 & 1);
      type metadata accessor for _BroadcastSequenceStateMachine.OnYield(0, *(a2 + 16), v63, v64);

      return swift_storeEnumTagMultiPayload();
    }

    else
    {
      result = sub_24DCB55E4();
      __break(1u);
    }
  }

  else
  {
    v13 = *v6;
    v81 = *(v6 + 1);
    v14 = *(v6 + 3);
    v82 = *(v6 + 2);
    *v83 = v14;
    *&v83[9] = *(v6 + 57);
    v80 = v13;
    v15 = *(a2 - 8);
    if (v12)
    {
      v47 = *(v15 + 8);

      v47(&v80, a2);
      v6[8] = 0;
      *(v6 + 2) = 0u;
      *(v6 + 3) = 0u;
      *v6 = 0u;
      *(v6 + 1) = 0u;
      *(v6 + 72) = 4;
      v49 = a3;
      v50 = *(a2 + 16);
      v69 = sub_24DC66AB0(v50, v51, v52, v53);
      *&v70 = v11;
      *(&v70 + 1) = MEMORY[0x277D84F90];
      v71 = MEMORY[0x277D84F90];
      *&v72 = v8;
      *(&v72 + 1) = v10;
      v73 = v9;
      v56 = type metadata accessor for _BroadcastSequenceStateMachine.State.Streaming(0, v50, v54, v55);
      sub_24DC66BB8(a1, v56, v49, v57, v58);
      v59 = *(v6 + 3);
      v86 = *(v6 + 2);
      v87[0] = v59;
      *(v87 + 9) = *(v6 + 57);
      v60 = *(v6 + 1);
      v84 = *v6;
      v85 = v60;
      result = (v47)(&v84, a2);
      v61 = v72;
      *(v6 + 2) = v71;
      *(v6 + 3) = v61;
      v6[8] = v73;
      v31 = v69;
      v30 = v70;
    }

    else
    {
      v16 = *(v15 + 8);
      v16(&v80);
      v6[8] = 0;
      *(v6 + 2) = 0u;
      *(v6 + 3) = 0u;
      *v6 = 0u;
      *(v6 + 1) = 0u;
      *(v6 + 72) = 4;
      v18 = *(a2 + 16);
      sub_24DC66A1C(v8, v18, v67, v19, v20);
      v23 = type metadata accessor for _BroadcastSequenceStateMachine.State.Streaming(0, v18, v21, v22);
      sub_24DC66BB8(a1, v23, a3, v24, v25);
      v26 = *v6;
      v85 = *(v6 + 1);
      v27 = *(v6 + 3);
      v86 = *(v6 + 2);
      v87[0] = v27;
      *(v87 + 9) = *(v6 + 57);
      v84 = v26;
      result = (v16)(&v84, a2);
      v29 = v67[3];
      *(v6 + 2) = v67[2];
      *(v6 + 3) = v29;
      v6[8] = v68;
      v30 = v67[1];
      v31 = v67[0];
    }

    *v6 = v31;
    *(v6 + 1) = v30;
    *(v6 + 72) = 2;
  }

  return result;
}

uint64_t sub_24DC5F824(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_24DC5F848, 0, 0);
}

uint64_t sub_24DC5F848()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_24DC5F944;
  v5 = v0[2];
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v5, 0, 0, 0x3A5F28646C656979, 0xE900000000000029, sub_24DC726E8, v3, v6);
}

uint64_t sub_24DC5F944()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24DC5FA80, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_24DC5FA80()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24DC5FAE4(uint64_t a1, os_unfair_lock_s *a2, uint64_t a3)
{
  v31 = a3;
  v5 = *&a2->_os_unfair_lock_opaque;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F090, &qword_24DCBA478);
  v30 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v29 - v7;
  v9 = *(v5 + 80);
  v12 = type metadata accessor for _BroadcastSequenceStateMachine.OnWaitToProduceMore(0, v9, v10, v11);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v29 - v17;
  os_unfair_lock_lock(a2 + 4);
  v21 = type metadata accessor for _BroadcastSequenceStateMachine(0, v9, v19, v20);
  sub_24DC5FD9C(a1, v31, v21, v18, v22);
  os_unfair_lock_unlock(a2 + 4);
  (*(v13 + 16))(v16, v18, v12);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F098, &qword_24DCBA480);
  if ((*(*(v23 - 8) + 48))(v16, 1, v23) != 1)
  {
    v24 = &v16[*(v23 + 48)];
    v25 = *v24;
    v26 = v24[8];
    v27 = v30;
    (*(v30 + 32))(v8, v16, v6);
    if (v26)
    {
      v32 = v25;
      sub_24DCB50E4();
    }

    else
    {
      sub_24DCB50F4();
    }

    (*(v27 + 8))(v8, v6);
  }

  return (*(v13 + 8))(v18, v12);
}

uint64_t sub_24DC5FD9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v8 = *v5;
  v9 = v5[2];
  v11 = v5[4];
  v10 = v5[5];
  v12 = *(v5 + 48);
  v13 = *(v5 + 72);
  if (v13 <= 2)
  {
    if (v13 == 2)
    {
      v26 = *v5;
      v27 = *(v5 + 1);
      *(&v28 + 1) = v5[5];
      v29[0] = *(v5 + 48);
      *&v29[1] = *(v5 + 49);
      *&v29[16] = v5[8];
      v15 = *(v5 + 3);
      v31 = *(v5 + 2);
      *&v28 = v31;
      v32[0] = v15;
      *(v32 + 9) = *(v5 + 57);
      v30[0] = *v5;
      v30[1] = v27;
      v33[0] = v8;
      v33[1] = *(&v26 + 1);
      v33[2] = v9;
      v33[3] = *(&v27 + 1);
      v33[4] = v11;
      v33[5] = v10;
      v34 = v12;
      *v35 = *(v5 + 49);
      *&v35[15] = v5[8];
      v36 = 2;
      v16 = type metadata accessor for _BroadcastSequenceStateMachine.State.Streaming(0, *(a3 + 16), a3, a5);
      (*(*(v16 - 8) + 16))(v37, v33, v16);
      v17 = *(*(a3 - 8) + 8);
      v17(v30, a3);
      v5[8] = 0;
      *(v5 + 2) = 0u;
      *(v5 + 3) = 0u;
      *v5 = 0u;
      *(v5 + 1) = 0u;
      *(v5 + 72) = 4;
      sub_24DC6A274(a1, a2, v16, a4);
      v18 = *(v5 + 3);
      v37[2] = *(v5 + 2);
      v38[0] = v18;
      *(v38 + 9) = *(v5 + 57);
      v19 = *(v5 + 1);
      v37[0] = *v5;
      v37[1] = v19;
      result = (v17)(v37, a3);
      *(v5 + 2) = v28;
      *(v5 + 3) = *v29;
      v5[8] = *&v29[16];
      *v5 = v26;
      *(v5 + 1) = v27;
      *(v5 + 72) = 2;
      return result;
    }

    goto LABEL_8;
  }

  if (v13 != 3)
  {
LABEL_8:
    result = sub_24DCB55E4();
    __break(1u);
    return result;
  }

  sub_24DC6F0D0(v10, v12 & 1);

  sub_24DC57738(v10, v12 & 1);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F098, &qword_24DCBA480);
  v22 = a4 + *(v21 + 48);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F090, &qword_24DCBA478);
  (*(*(v23 - 8) + 16))(a4, a1, v23);
  *v22 = 0;
  *(v22 + 8) = 0;
  v24 = *(*(v21 - 8) + 56);

  return v24(a4, 0, 1, v21);
}

uint64_t sub_24DC60100(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 24);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v5);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24DCB5904();
  MEMORY[0x28223BE20](v13);
  v15 = &v18 - v14;
  (*(v16 + 16))(&v18 - v14, a1, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v15, v9);
    return sub_24DCB50E4();
  }

  else
  {
    (*(v4 + 32))(v7, v15, v3);
    return sub_24DCB50F4();
  }
}

uint64_t sub_24DC6033C(os_unfair_lock_s *a1, uint64_t a2)
{
  v4 = *&a1->_os_unfair_lock_opaque;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F090, &qword_24DCBA478);
  v29[0] = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = v29 - v6;
  v8 = *(v4 + 80);
  v11 = type metadata accessor for _BroadcastSequenceStateMachine.OnWaitToProduceMore(0, v8, v9, v10);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v29 - v16;
  os_unfair_lock_lock(a1 + 4);
  v20 = type metadata accessor for _BroadcastSequenceStateMachine(0, v8, v18, v19);
  sub_24DC605EC(a2, v20, v17, v21, v22);
  os_unfair_lock_unlock(a1 + 4);
  (*(v12 + 16))(v15, v17, v11);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F098, &qword_24DCBA480);
  if ((*(*(v23 - 8) + 48))(v15, 1, v23) != 1)
  {
    v24 = &v15[*(v23 + 48)];
    v25 = *v24;
    v26 = v24[8];
    v27 = v29[0];
    (*(v29[0] + 32))(v7, v15, v5);
    if (v26)
    {
      v29[1] = v25;
      sub_24DCB50E4();
    }

    else
    {
      sub_24DCB50F4();
    }

    (*(v27 + 8))(v7, v5);
  }

  return (*(v12 + 8))(v17, v11);
}

uint64_t sub_24DC605EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v7 = *v5;
  v8 = v5[2];
  v10 = v5[4];
  v9 = v5[5];
  v11 = *(v5 + 48);
  v12 = *(v5 + 72);
  if (v12 <= 2)
  {
    if (v12 == 2)
    {
      v23 = *v5;
      v24 = *(v5 + 1);
      *(&v25 + 1) = v5[5];
      v26[0] = *(v5 + 48);
      *&v26[1] = *(v5 + 49);
      *&v26[16] = v5[8];
      v14 = *(v5 + 3);
      v28 = *(v5 + 2);
      *&v25 = v28;
      v29[0] = v14;
      *(v29 + 9) = *(v5 + 57);
      v27[0] = *v5;
      v27[1] = v24;
      v30[0] = v7;
      v30[1] = *(&v23 + 1);
      v30[2] = v8;
      v30[3] = *(&v24 + 1);
      v30[4] = v10;
      v30[5] = v9;
      v31 = v11;
      *v32 = *(v5 + 49);
      *&v32[15] = v5[8];
      v33 = 2;
      v16 = type metadata accessor for _BroadcastSequenceStateMachine.State.Streaming(0, *(a2 + 16), a4, a5);
      (*(*(v16 - 8) + 16))(v34, v30, v16);
      v17 = *(*(a2 - 8) + 8);
      v17(v27, a2);
      v5[8] = 0;
      *(v5 + 2) = 0u;
      *(v5 + 3) = 0u;
      *v5 = 0u;
      *(v5 + 1) = 0u;
      *(v5 + 72) = 4;
      sub_24DC6A628(a1, a3);
      v18 = *(v5 + 3);
      v34[2] = *(v5 + 2);
      v35[0] = v18;
      *(v35 + 9) = *(v5 + 57);
      v19 = *(v5 + 1);
      v34[0] = *v5;
      v34[1] = v19;
      result = (v17)(v34, a2);
      *(v5 + 2) = v25;
      *(v5 + 3) = *v26;
      v5[8] = *&v26[16];
      *v5 = v23;
      *(v5 + 1) = v24;
      *(v5 + 72) = 2;
      return result;
    }

    goto LABEL_8;
  }

  if (v12 != 3)
  {
LABEL_8:
    result = sub_24DCB55E4();
    __break(1u);
    return result;
  }

  sub_24DC6F0D0(v9, v11 & 1);

  sub_24DC57738(v9, v11 & 1);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F098, &qword_24DCBA480);
  v22 = *(*(v21 - 8) + 56);

  return v22(a3, 1, 1, v21);
}

uint64_t sub_24DC608E8@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v10 = *v5;
  v11 = v5[1];
  v13 = v5[2];
  v12 = v5[3];
  v14 = *(v5 + 72);
  if (v14 <= 1)
  {
    if (!*(v5 + 72))
    {
      v15 = *(v5 + 3);
      v78 = *(v5 + 2);
      *v79 = v15;
      *&v79[9] = *(v5 + 57);
      v16 = *(v5 + 1);
      v76 = *v5;
      v77 = v16;
      v17 = *(*(a3 - 8) + 8);
      v17(&v76, a3);
      v5[8] = 0;
      *(v5 + 2) = 0u;
      *(v5 + 3) = 0u;
      *v5 = 0u;
      *(v5 + 1) = 0u;
      *(v5 + 72) = 4;
      sub_24DC6F0D0(a1, a2 & 1);
      v18 = *(a3 + 16);
      sub_24DC6F294(a1, a2 & 1, v18, &v72, v19);
      v20 = *(v5 + 2);
      v21 = *(v5 + 3);
      v22 = *v5;
      v87 = *(v5 + 1);
      v88 = v20;
      v89[0] = v21;
      *(v89 + 9) = *(v5 + 57);
      v63 = v73;
      v66 = v72;
      v23 = v74;
      v24 = v75[0];
      LOBYTE(v80) = v75[0];
      v86 = v22;
      v17(&v86, a3);
      *v5 = v66;
      *(v5 + 1) = v63;
      *(v5 + 2) = v23;
      *(v5 + 48) = v24;
      *(v5 + 72) = 3;
      type metadata accessor for _BroadcastSequenceStateMachine.ConsumerContinuations(255, v18, v25, v26);
      type metadata accessor for _BroadcastSequenceStateMachine.ProducerContinuations(255, v18, v27, v28);
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      return (*(*(TupleTypeMetadata2 - 8) + 56))(a4, 1, 1, TupleTypeMetadata2);
    }

    *&v80 = *v5;
    *(&v80 + 1) = v11;
    *&v81 = v13;
    *(&v81 + 1) = v12;
    v42 = *(v5 + 3);
    v78 = *(v5 + 2);
    *v79 = v42;
    *&v79[9] = *(v5 + 57);
    v43 = *(v5 + 1);
    v76 = *v5;
    v77 = v43;
    v44 = *(*(a3 - 8) + 8);

    v44(&v76, a3);
    v5[8] = 0;
    *(v5 + 2) = 0u;
    *(v5 + 3) = 0u;
    *v5 = 0u;
    *(v5 + 1) = 0u;
    *(v5 + 72) = 4;
    v45 = *(a3 + 16);
    v48 = type metadata accessor for _BroadcastSequenceStateMachine.State.Subscribed(0, v45, v46, v47);
    v39 = v5;
    sub_24DC63F14(a1, a2 & 1, v48, a4);
    v49 = v80;
    v50 = v81;
    sub_24DC6F0D0(a1, a2 & 1);
    sub_24DC6BA44(v49, *(&v49 + 1), v50, a1, a2 & 1, v45, &v72, v51);
    v65 = v73;
    v67 = v72;
    v52 = v74;
    v53 = v75[0];
    v54 = *(v5 + 3);
    v88 = *(v5 + 2);
    v89[0] = v54;
    *(v89 + 9) = *(v5 + 57);
    v55 = *(v5 + 1);
    v86 = *v5;
    v87 = v55;
    result = (v44)(&v86, a3);
    *v5 = v67;
    *(v5 + 1) = v65;
    *(v5 + 2) = v52;
    *(v5 + 48) = v53;
    goto LABEL_7;
  }

  v32 = v5[4];
  v31 = v5[5];
  v33 = *(v5 + 48);
  if (v14 == 2)
  {
    v68 = *v5;
    v69 = *(v5 + 1);
    *(&v70 + 1) = v5[5];
    v71[0] = *(v5 + 48);
    *&v71[1] = *(v5 + 49);
    *&v71[16] = v5[8];
    v34 = *(v5 + 3);
    v74 = *(v5 + 2);
    *&v70 = v74;
    v75[0] = v34;
    *(v75 + 9) = *(v5 + 57);
    v35 = *(v5 + 1);
    v72 = *v5;
    v73 = v35;
    *&v76 = v10;
    *(&v76 + 1) = v11;
    *&v77 = v13;
    *(&v77 + 1) = v12;
    *&v78 = v32;
    *(&v78 + 1) = v31;
    v79[0] = v33;
    *&v79[1] = *(v5 + 49);
    *&v79[16] = v5[8];
    v79[24] = 2;
    v36 = type metadata accessor for _BroadcastSequenceStateMachine.State.Streaming(0, *(a3 + 16), a3, a5);
    v37 = *(v36 - 8);
    (*(v37 + 16))(&v86, &v76, v36);
    v64 = *(*(a3 - 8) + 8);
    v64(&v72, a3);
    v5[8] = 0;
    *(v5 + 2) = 0u;
    *(v5 + 3) = 0u;
    *v5 = 0u;
    *(v5 + 1) = 0u;
    *(v5 + 72) = 4;
    v38 = a2 & 1;
    v39 = v5;
    sub_24DC6A9B4(a1, v38, v36, a4);
    v82 = v70;
    v83 = *v71;
    v84 = *&v71[16];
    v80 = v68;
    v81 = v69;

    sub_24DC6F0D0(a1, v38);
    (*(v37 + 8))(&v80, v36);
    v85 = v38;
    v40 = *(v5 + 3);
    v88 = *(v5 + 2);
    v89[0] = v40;
    *(v89 + 9) = *(v5 + 57);
    v41 = *(v5 + 1);
    v86 = *v5;
    v87 = v41;
    result = (v64)(&v86, a3);
    *v5 = v68;
    v5[2] = *v71;
    v5[3] = *&v71[8];
    v5[4] = *&v71[16];
    v5[5] = a1;
    *(v5 + 48) = v38;
LABEL_7:
    *(v39 + 72) = 3;
    return result;
  }

  if (v14 == 3)
  {

    sub_24DC6F0D0(v31, v33 & 1);

    sub_24DC57738(v31, v33 & 1);
    v56 = *(a3 + 16);
    type metadata accessor for _BroadcastSequenceStateMachine.ConsumerContinuations(255, v56, v57, v58);
    type metadata accessor for _BroadcastSequenceStateMachine.ProducerContinuations(255, v56, v59, v60);
    v61 = swift_getTupleTypeMetadata2();
    v62 = *(*(v61 - 8) + 56);

    return v62(a4, 1, 1, v61);
  }

  else
  {
    result = sub_24DCB55E4();
    __break(1u);
  }

  return result;
}

uint64_t sub_24DC60F08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *v4;
  v8 = v4[1];
  v9 = v4[2];
  v10 = v5[3];
  v11 = *(v5 + 72);
  if (v11 <= 1)
  {
    if (*(v5 + 72))
    {
      *&v75 = v7;
      *(&v75 + 1) = v8;
      *&v76 = v9;
      *(&v76 + 1) = v10;
      v42 = *(v5 + 3);
      v81 = *(v5 + 2);
      *v82 = v42;
      *&v82[9] = *(v5 + 57);
      v43 = *(v5 + 1);
      v79 = *v5;
      v80 = v43;
      v44 = *(*(a1 - 8) + 8);

      v44(&v79, a1);
      v5[8] = 0;
      *(v5 + 2) = 0u;
      *(v5 + 3) = 0u;
      *v5 = 0u;
      *(v5 + 1) = 0u;
      *(v5 + 72) = 4;
      v47 = type metadata accessor for _BroadcastSequenceStateMachine.State.Subscribed(0, *(a1 + 16), v45, v46);
      v50 = type metadata accessor for _BroadcastSequenceStateMachine.Subscriptions(0, *(v47 + 16), v48, v49);
      v25 = sub_24DC65FB4(v50);
      v27 = *(&v76 + 1);
      v51 = v76;
      v52 = *(v5 + 3);
      v86 = *(v5 + 2);
      v87[0] = v52;
      *(v87 + 9) = *(v5 + 57);
      v53 = *(v5 + 1);
      v84 = *v5;
      v85 = v53;
      v44(&v84, a1);
      *v5 = v75;
      v5[2] = v51;
    }

    else
    {
      v12 = *(v5 + 3);
      v81 = *(v5 + 2);
      *v82 = v12;
      *&v82[9] = *(v5 + 57);
      v13 = *(v5 + 1);
      v79 = *v5;
      v80 = v13;
      v14 = *(*(a1 - 8) + 8);
      v15 = v7;
      v14(&v79, a1);
      v5[8] = 0;
      *(v5 + 2) = 0u;
      *(v5 + 3) = 0u;
      *v5 = 0u;
      *(v5 + 1) = 0u;
      *(v5 + 72) = 4;
      v16 = *(a1 + 16);
      v75 = sub_24DC63E78(v15, v16, v17, v18);
      *&v76 = v19;
      *(&v76 + 1) = v20;
      v21 = type metadata accessor for _BroadcastSequenceStateMachine.State.Subscribed(0, v16, v19, v20);
      v24 = type metadata accessor for _BroadcastSequenceStateMachine.Subscriptions(0, *(v21 + 16), v22, v23);
      v25 = sub_24DC65FB4(v24);
      v27 = *(&v76 + 1);
      v26 = v76;
      v28 = *(v5 + 3);
      v86 = *(v5 + 2);
      v87[0] = v28;
      *(v87 + 9) = *(v5 + 57);
      v29 = *(v5 + 1);
      v84 = *v5;
      v85 = v29;
      v14(&v84, a1);
      *v5 = v75;
      v5[2] = v26;
    }

    v5[3] = v27;
    v54 = 1;
    goto LABEL_10;
  }

  v31 = v5[4];
  v30 = v5[5];
  v32 = *(v5 + 48);
  if (v11 == 2)
  {
    *&v71 = v7;
    *(&v71 + 1) = v8;
    *&v72 = v9;
    *(&v72 + 1) = v5[3];
    *(&v73 + 1) = v5[5];
    v74[0] = *(v5 + 48);
    *&v74[1] = *(v5 + 49);
    *&v74[16] = v5[8];
    v33 = *(v5 + 3);
    v77 = *(v5 + 2);
    *&v73 = v77;
    v78[0] = v33;
    *(v78 + 9) = *(v5 + 57);
    v34 = *(v5 + 1);
    v75 = *v5;
    v76 = v34;
    *&v79 = v7;
    *(&v79 + 1) = v8;
    *&v80 = v9;
    *(&v80 + 1) = v10;
    *&v81 = v31;
    *(&v81 + 1) = v30;
    v82[0] = v32;
    *&v82[1] = *(v5 + 49);
    *&v82[16] = v5[8];
    v82[24] = 2;
    v35 = type metadata accessor for _BroadcastSequenceStateMachine.State.Streaming(0, *(a1 + 16), a3, a4);
    (*(*(v35 - 8) + 16))(&v84, &v79, v35);
    v36 = *(*(a1 - 8) + 8);
    v36(&v75, a1);
    v5[8] = 0;
    *(v5 + 2) = 0u;
    *(v5 + 3) = 0u;
    *v5 = 0u;
    *(v5 + 1) = 0u;
    *(v5 + 72) = 4;
    v39 = type metadata accessor for _BroadcastSequenceStateMachine.Subscriptions(0, *(v35 + 16), v37, v38);
    v25 = sub_24DC65FB4(v39);
    v40 = *(v5 + 3);
    v86 = *(v5 + 2);
    v87[0] = v40;
    *(v87 + 9) = *(v5 + 57);
    v41 = *(v5 + 1);
    v84 = *v5;
    v85 = v41;
    v36(&v84, a1);
    *(v5 + 2) = v73;
    *(v5 + 3) = *v74;
    v5[8] = *&v74[16];
    *v5 = v71;
    *(v5 + 1) = v72;
    *(v5 + 72) = 2;
    return v25;
  }

  if (v11 == 3)
  {
    *&v75 = v7;
    *(&v75 + 1) = v8;
    *&v76 = v9;
    *(&v76 + 1) = v10;
    *&v77 = v31;
    *(&v77 + 1) = v30;
    v55 = v32 & 1;
    LOBYTE(v78[0]) = v32 & 1;
    v56 = *(v5 + 3);
    v81 = *(v5 + 2);
    *v82 = v56;
    *&v82[9] = *(v5 + 57);
    v57 = *(v5 + 1);
    v79 = *v5;
    v80 = v57;

    sub_24DC6F0D0(v30, v55);
    v58 = *(*(a1 - 8) + 8);
    v58(&v79, a1);
    v5[8] = 0;
    *(v5 + 2) = 0u;
    *(v5 + 3) = 0u;
    *v5 = 0u;
    *(v5 + 1) = 0u;
    *(v5 + 72) = 4;
    v61 = type metadata accessor for _BroadcastSequenceStateMachine.State.Finished(0, *(a1 + 16), v59, v60);
    v64 = type metadata accessor for _BroadcastSequenceStateMachine.Subscriptions(0, *(v61 + 16), v62, v63);
    v25 = sub_24DC65FB4(v64);
    v65 = v77;
    v66 = v78[0];
    v83 = v78[0];
    v67 = *(v5 + 3);
    v86 = *(v5 + 2);
    v87[0] = v67;
    *(v87 + 9) = *(v5 + 57);
    v68 = *(v5 + 1);
    v84 = *v5;
    v85 = v68;
    v58(&v84, a1);
    v69 = v76;
    *v5 = v75;
    *(v5 + 1) = v69;
    *(v5 + 2) = v65;
    *(v5 + 48) = v66;
    v54 = 3;
LABEL_10:
    *(v5 + 72) = v54;
    return v25;
  }

  result = sub_24DCB55E4();
  __break(1u);
  return result;
}

uint64_t sub_24DC6141C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = *(*a2 + 80);
  v3[6] = v4;
  v3[7] = sub_24DCB5414();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v5 = sub_24DCB5904();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v8 = type metadata accessor for _BroadcastSequenceStateMachine.OnNext.ReturnAndResumeProducers(0, v4, v6, v7);
  v3[11] = v8;
  v3[12] = *(v8 - 8);
  v3[13] = swift_task_alloc();
  v11 = type metadata accessor for _BroadcastSequenceStateMachine.OnNext(0, v4, v9, v10);
  v3[14] = v11;
  v3[15] = *(v11 - 8);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24DC615FC, 0, 0);
}

uint64_t sub_24DC615FC()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[14];
  v4 = v0[15];
  v5 = v0[11];
  v6 = v0[12];
  v8 = v0[5];
  v7 = v0[6];
  v9 = v0[4];
  os_unfair_lock_lock(v9 + 4);
  v12 = type metadata accessor for _BroadcastSequenceStateMachine(0, v7, v10, v11);
  sub_24DC61B5C(v8, v12, v13, v14, v1);
  os_unfair_lock_unlock(v9 + 4);
  (*(v4 + 16))(v2, v1, v3);
  if ((*(v6 + 48))(v2, 1, v5) == 1)
  {
    v16 = v0[4];
    v15 = v0[5];
    v17 = swift_task_alloc();
    v0[18] = v17;
    *(v17 + 16) = v16;
    *(v17 + 24) = v15;
    v18 = swift_task_alloc();
    v0[19] = v18;
    *v18 = v0;
    v18[1] = sub_24DC618E0;
    v19 = v0[7];
    v20 = v0[3];

    return MEMORY[0x2822008A0](v20, 0, 0, 0xD00000000000001BLL, 0x800000024DCC57C0, sub_24DC726F0, v17, v19);
  }

  else
  {
    v21 = v0[13];
    v23 = v0[10];
    v22 = v0[11];
    v24 = v0[8];
    v25 = v0[9];
    v26 = v0[3];
    (*(v0[12] + 32))(v21, v0[16], v22);
    sub_24DC5F1B0(*(v21 + *(v22 + 28)), *(v21 + *(v22 + 28) + 8), *(v21 + *(v22 + 28) + 16));
    (*(v25 + 16))(v23, v21, v24);
    sub_24DC2F270(v24, (v0 + 2), v26);
    v28 = v0[12];
    v27 = v0[13];
    v29 = v0[11];
    (*(v0[15] + 8))(v0[17], v0[14]);
    (*(v28 + 8))(v27, v29);

    v30 = v0[1];

    return v30();
  }
}

uint64_t sub_24DC618E0()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_24DC61AB8;
  }

  else
  {
    v2 = sub_24DC61A14;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24DC61A14()
{
  (*(v0[15] + 8))(v0[17], v0[14]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24DC61AB8()
{
  (*(v0[15] + 8))(v0[17], v0[14]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24DC61B5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v9 = *v5;
  v10 = v5[1];
  v11 = v5[2];
  v12 = v6[3];
  v13 = *(v6 + 72);
  if (v13 <= 1)
  {
    if (v13 == 1)
    {
      *&v53 = v9;
      *(&v53 + 1) = v10;
      *&v54 = v11;
      *(&v54 + 1) = v12;
      v25 = *(v6 + 3);
      v59 = *(v6 + 2);
      *v60 = v25;
      *&v60[9] = *(v6 + 57);
      v26 = *(v6 + 1);
      v57 = *v6;
      v58 = v26;
      v27 = *(*(a2 - 8) + 8);

      v27(&v57, a2);
      v6[8] = 0;
      *(v6 + 2) = 0u;
      *(v6 + 3) = 0u;
      *v6 = 0u;
      *(v6 + 1) = 0u;
      *(v6 + 72) = 4;
      v31 = type metadata accessor for _BroadcastSequenceStateMachine.State.Subscribed(0, *(a2 + 16), v29, v30);
      sub_24DC64D70(a1, v31, a5);
      v32 = v54;
      v33 = *(v6 + 3);
      v64 = *(v6 + 2);
      v65[0] = v33;
      *(v65 + 9) = *(v6 + 57);
      v34 = *(v6 + 1);
      v62 = *v6;
      v63 = v34;
      result = (v27)(&v62, a2);
      *v6 = v53;
      *(v6 + 1) = v32;
      v35 = 1;
LABEL_8:
      *(v6 + 72) = v35;
      return result;
    }
  }

  else
  {
    v15 = v6[4];
    v14 = v6[5];
    v16 = *(v6 + 48);
    if (v13 == 2)
    {
      *&v49 = v9;
      *(&v49 + 1) = v10;
      *&v50 = v11;
      *(&v50 + 1) = v6[3];
      *(&v51 + 1) = v6[5];
      v52[0] = *(v6 + 48);
      *&v52[1] = *(v6 + 49);
      *&v52[16] = v6[8];
      v17 = *(v6 + 3);
      v55 = *(v6 + 2);
      *&v51 = v55;
      v56[0] = v17;
      *(v56 + 9) = *(v6 + 57);
      v18 = *(v6 + 1);
      v53 = *v6;
      v54 = v18;
      *&v57 = v9;
      *(&v57 + 1) = v10;
      *&v58 = v11;
      *(&v58 + 1) = v12;
      *&v59 = v15;
      *(&v59 + 1) = v14;
      v60[0] = v16;
      *&v60[1] = *(v6 + 49);
      *&v60[16] = v6[8];
      v60[24] = 2;
      v20 = type metadata accessor for _BroadcastSequenceStateMachine.State.Streaming(0, *(a2 + 16), a3, a4);
      (*(*(v20 - 8) + 16))(&v62, &v57, v20);
      v21 = *(*(a2 - 8) + 8);
      v21(&v53, a2);
      v6[8] = 0;
      *(v6 + 2) = 0u;
      *(v6 + 3) = 0u;
      *v6 = 0u;
      *(v6 + 1) = 0u;
      *(v6 + 72) = 4;
      sub_24DC68510(a1, v20, a5);
      v22 = *(v6 + 3);
      v64 = *(v6 + 2);
      v65[0] = v22;
      *(v65 + 9) = *(v6 + 57);
      v23 = *(v6 + 1);
      v62 = *v6;
      v63 = v23;
      result = (v21)(&v62, a2);
      *(v6 + 2) = v51;
      *(v6 + 3) = *v52;
      v6[8] = *&v52[16];
      *v6 = v49;
      *(v6 + 1) = v50;
      *(v6 + 72) = 2;
      return result;
    }

    if (v13 == 3)
    {
      *&v53 = v9;
      *(&v53 + 1) = v10;
      *&v54 = v11;
      *(&v54 + 1) = v12;
      *&v55 = v15;
      *(&v55 + 1) = v14;
      v37 = v16 & 1;
      LOBYTE(v56[0]) = v16 & 1;
      v38 = *(v6 + 3);
      v59 = *(v6 + 2);
      *v60 = v38;
      *&v60[9] = *(v6 + 57);
      v39 = *(v6 + 1);
      v57 = *v6;
      v58 = v39;

      sub_24DC6F0D0(v14, v37);
      v40 = *(*(a2 - 8) + 8);
      v40(&v57, a2);
      v6[8] = 0;
      *(v6 + 2) = 0u;
      *(v6 + 3) = 0u;
      *v6 = 0u;
      *(v6 + 1) = 0u;
      *(v6 + 72) = 4;
      v43 = type metadata accessor for _BroadcastSequenceStateMachine.State.Finished(0, *(a2 + 16), v41, v42);
      sub_24DC6BB70(a1, v43, a5);
      v44 = v55;
      v45 = v56[0];
      v61 = v56[0];
      v46 = *(v6 + 3);
      v64 = *(v6 + 2);
      v65[0] = v46;
      *(v65 + 9) = *(v6 + 57);
      v47 = *(v6 + 1);
      v62 = *v6;
      v63 = v47;
      result = (v40)(&v62, a2);
      v48 = v54;
      *v6 = v53;
      *(v6 + 1) = v48;
      *(v6 + 2) = v44;
      *(v6 + 48) = v45;
      v35 = 3;
      goto LABEL_8;
    }
  }

  result = sub_24DCB55E4();
  __break(1u);
  return result;
}

uint64_t sub_24DC61F98(uint64_t a1, os_unfair_lock_s *a2, uint64_t a3)
{
  v37 = a1;
  v38 = a3;
  v4 = *(*&a2->_os_unfair_lock_opaque + 80);
  sub_24DCB5414();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v5 = sub_24DCB5904();
  v40 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v36 = &v35 - v6;
  v7 = sub_24DCB5104();
  v39 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v35 - v8;
  v12 = type metadata accessor for _BroadcastSequenceStateMachine.OnSetContinuation(0, v4, v10, v11);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v35 - v17;
  os_unfair_lock_lock(a2 + 4);
  v21 = type metadata accessor for _BroadcastSequenceStateMachine(0, v4, v19, v20);
  sub_24DC62398(v37, v38, v21, v18, v22);
  os_unfair_lock_unlock(a2 + 4);
  (*(v13 + 16))(v16, v18, v12);
  type metadata accessor for _BroadcastSequenceStateMachine.ProducerContinuations(255, v4, v23, v24);
  sub_24DCB5414();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  if ((*(*(TupleTypeMetadata3 - 8) + 48))(v16, 1, TupleTypeMetadata3) != 1)
  {
    v37 = v5;
    v38 = v12;
    v26 = *(TupleTypeMetadata3 + 48);
    v27 = &v16[*(TupleTypeMetadata3 + 64)];
    v28 = *v27;
    v29 = *(v27 + 1);
    v30 = v27[16];
    (*(v39 + 32))(v9, v16, v7);
    v31 = &v16[v26];
    v33 = v36;
    v32 = v37;
    (*(v40 + 32))(v36, v31, v37);
    sub_24DC60100(v33, v7);
    if (v28)
    {

      sub_24DC6F0D0(v29, v30 & 1);
      sub_24DC5F1B0(v28, v29, v30 & 1);

      sub_24DC57738(v29, v30 & 1);
      sub_24DC726F8(v28, v29, v30);
    }

    (*(v40 + 8))(v33, v32);
    (*(v39 + 8))(v9, v7);
    v12 = v38;
  }

  return (*(v13 + 8))(v18, v12);
}

uint64_t sub_24DC62398@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  *&v50 = a1;
  v9 = v5[1];
  v67 = *v5;
  v68 = v9;
  v10 = v5[3];
  v69 = v5[2];
  *v70 = v10;
  v11 = *(v5 + 57);
  *&v70[9] = v11;
  if (HIBYTE(v11) <= 1u)
  {
    if (HIBYTE(v11) == 1)
    {
      v55 = v67;
      v56 = v68;
      v25 = v5[3];
      v61 = v5[2];
      v62[0] = v25;
      *(v62 + 9) = *(v5 + 57);
      v26 = v5[1];
      v59 = *v5;
      v60 = v26;
      v27 = *(*(a3 - 8) + 8);

      v27(&v59, a3);
      *(v5 + 8) = 0;
      v5[2] = 0u;
      v5[3] = 0u;
      *v5 = 0u;
      v5[1] = 0u;
      *(v5 + 72) = 4;
      v30 = type metadata accessor for _BroadcastSequenceStateMachine.State.Subscribed(0, *(a3 + 16), v28, v29);
      sub_24DC6586C(v50, a2, v30, a4, v31);
      v50 = v55;
      v32 = v56;
      v33 = v5[3];
      v65 = v5[2];
      v66[0] = v33;
      *(v66 + 9) = *(v5 + 57);
      v34 = v5[1];
      v63 = *v5;
      v64 = v34;
      result = (v27)(&v63, a3);
      *v5 = v55;
      v5[1] = v32;
      *(v5 + 72) = 1;
      return result;
    }
  }

  else
  {
    v12 = *(&v69 + 1);
    if (HIBYTE(v11) == 2)
    {
      *&v54[1] = *(v5 + 49);
      v13 = v5[1];
      v14 = v5[3];
      v57 = v5[2];
      v58[0] = v14;
      *(v58 + 9) = *(v5 + 57);
      v15 = v5[1];
      v55 = *v5;
      v56 = v15;
      v16 = v5[3];
      v61 = v57;
      v62[0] = v16;
      *(v62 + 9) = *(v5 + 57);
      v51 = v67;
      v52 = v68;
      v53 = v69;
      v54[0] = v70[0];
      *&v54[16] = *(v5 + 8);
      v59 = v55;
      v60 = v13;
      v17 = type metadata accessor for _BroadcastSequenceStateMachine.State.Streaming(0, *(a3 + 16), a3, a5);
      (*(*(v17 - 8) + 16))(&v63, &v59, v17);
      v18 = *(*(a3 - 8) + 8);
      v18(&v55, a3);
      *(v5 + 8) = 0;
      v5[2] = 0u;
      v5[3] = 0u;
      *v5 = 0u;
      v5[1] = 0u;
      *(v5 + 72) = 4;
      sub_24DC69A54(v50, a2, v17, a4, v19);
      v20 = v5[3];
      v65 = v5[2];
      v66[0] = v20;
      *(v66 + 9) = *(v5 + 57);
      v21 = v5[1];
      v63 = *v5;
      v64 = v21;
      result = (v18)(&v63, a3);
      v23 = *v54;
      v5[2] = v53;
      v5[3] = v23;
      *(v5 + 8) = *&v54[16];
      v24 = v52;
      *v5 = v51;
      v5[1] = v24;
      *(v5 + 72) = 2;
      return result;
    }

    v47 = v70[0];
    v48 = v69;
    v49 = v67;
    if (HIBYTE(v11) == 3)
    {
      v35 = *(a3 + 16);
      sub_24DCB5414();
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
      v36 = sub_24DCB5104();
      sub_24DCB5904();
      type metadata accessor for _BroadcastSequenceStateMachine.ProducerContinuations(255, v35, v37, v38);
      sub_24DCB5414();
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v46 = *(TupleTypeMetadata3 + 48);
      v40 = a4 + *(TupleTypeMetadata3 + 64);
      v41 = (*(*(v36 - 8) + 16))(a4, v50, v36);
      *&v50 = &v46;
      *&v59 = *(&v69 + 1);
      LOBYTE(v36) = v47 & 1;
      BYTE8(v59) = v47 & 1;
      MEMORY[0x28223BE20](v41);
      v44 = type metadata accessor for _BroadcastSequenceStateMachine.State(0, v35, v42, v43);
      (*(*(v44 - 8) + 16))(&v63, &v67, v44);
      sub_24DC6F0D0(v12, v36);
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F0A0, &qword_24DCBA488);
      sub_24DC64B5C(sub_24DC6F3B4, v45, a4 + v46);

      sub_24DC57738(v12, v36);
      sub_24DC57738(v12, v36);
      *v40 = 0;
      *(v40 + 8) = 0;
      *(v40 + 16) = 0;
      return (*(*(TupleTypeMetadata3 - 8) + 56))(a4, 0, 1, TupleTypeMetadata3);
    }
  }

  result = sub_24DCB55E4();
  __break(1u);
  return result;
}

uint64_t sub_24DC6291C(os_unfair_lock_s *a1, uint64_t a2)
{
  v33 = a2;
  v3 = *(*&a1->_os_unfair_lock_opaque + 80);
  sub_24DCB5414();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v4 = sub_24DCB5904();
  v32 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v31 = &v30 - v5;
  v6 = sub_24DCB5104();
  v30 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v30 - v7;
  v11 = type metadata accessor for _BroadcastSequenceStateMachine.OnCancelSubscription(0, v3, v9, v10);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v30 - v16;
  os_unfair_lock_lock(a1 + 4);
  v20 = type metadata accessor for _BroadcastSequenceStateMachine(0, v3, v18, v19);
  sub_24DC62C9C(v33, v20, v21, v22, v17);
  os_unfair_lock_unlock(a1 + 4);
  (*(v12 + 16))(v15, v17, v11);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  if ((*(*(TupleTypeMetadata2 - 8) + 48))(v15, 1, TupleTypeMetadata2) != 1)
  {
    v24 = *(TupleTypeMetadata2 + 48);
    v25 = v30;
    (*(v30 + 32))(v8, v15, v6);
    v26 = v32;
    v27 = &v15[v24];
    v28 = v31;
    (*(v32 + 32))(v31, v27, v4);
    sub_24DC60100(v28, v6);
    (*(v26 + 8))(v28, v4);
    (*(v25 + 8))(v8, v6);
  }

  return (*(v12 + 8))(v17, v11);
}

uint64_t sub_24DC62C9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v9 = *v5;
  v10 = v5[1];
  v11 = v5[2];
  v12 = v6[3];
  v13 = *(v6 + 72);
  if (v13 <= 1)
  {
    if (v13 == 1)
    {
      *&v53 = v9;
      *(&v53 + 1) = v10;
      *&v54 = v11;
      *(&v54 + 1) = v12;
      v25 = *(v6 + 3);
      v59 = *(v6 + 2);
      *v60 = v25;
      *&v60[9] = *(v6 + 57);
      v26 = *(v6 + 1);
      v57 = *v6;
      v58 = v26;
      v27 = *(*(a2 - 8) + 8);

      v27(&v57, a2);
      v6[8] = 0;
      *(v6 + 2) = 0u;
      *(v6 + 3) = 0u;
      *v6 = 0u;
      *(v6 + 1) = 0u;
      *(v6 + 72) = 4;
      v31 = type metadata accessor for _BroadcastSequenceStateMachine.State.Subscribed(0, *(a2 + 16), v29, v30);
      sub_24DC65220(a1, v31, a5);
      v32 = v54;
      v33 = *(v6 + 3);
      v64 = *(v6 + 2);
      v65[0] = v33;
      *(v65 + 9) = *(v6 + 57);
      v34 = *(v6 + 1);
      v62 = *v6;
      v63 = v34;
      result = (v27)(&v62, a2);
      *v6 = v53;
      *(v6 + 1) = v32;
      v35 = 1;
LABEL_8:
      *(v6 + 72) = v35;
      return result;
    }
  }

  else
  {
    v15 = v6[4];
    v14 = v6[5];
    v16 = *(v6 + 48);
    if (v13 == 2)
    {
      *&v49 = v9;
      *(&v49 + 1) = v10;
      *&v50 = v11;
      *(&v50 + 1) = v6[3];
      *(&v51 + 1) = v6[5];
      v52[0] = *(v6 + 48);
      *&v52[1] = *(v6 + 49);
      *&v52[16] = v6[8];
      v17 = *(v6 + 3);
      v55 = *(v6 + 2);
      *&v51 = v55;
      v56[0] = v17;
      *(v56 + 9) = *(v6 + 57);
      v18 = *(v6 + 1);
      v53 = *v6;
      v54 = v18;
      *&v57 = v9;
      *(&v57 + 1) = v10;
      *&v58 = v11;
      *(&v58 + 1) = v12;
      *&v59 = v15;
      *(&v59 + 1) = v14;
      v60[0] = v16;
      *&v60[1] = *(v6 + 49);
      *&v60[16] = v6[8];
      v60[24] = 2;
      v20 = type metadata accessor for _BroadcastSequenceStateMachine.State.Streaming(0, *(a2 + 16), a3, a4);
      (*(*(v20 - 8) + 16))(&v62, &v57, v20);
      v21 = *(*(a2 - 8) + 8);
      v21(&v53, a2);
      v6[8] = 0;
      *(v6 + 2) = 0u;
      *(v6 + 3) = 0u;
      *v6 = 0u;
      *(v6 + 1) = 0u;
      *(v6 + 72) = 4;
      sub_24DC69EB8(a1, v20, a5);
      v22 = *(v6 + 3);
      v64 = *(v6 + 2);
      v65[0] = v22;
      *(v65 + 9) = *(v6 + 57);
      v23 = *(v6 + 1);
      v62 = *v6;
      v63 = v23;
      result = (v21)(&v62, a2);
      *(v6 + 2) = v51;
      *(v6 + 3) = *v52;
      v6[8] = *&v52[16];
      *v6 = v49;
      *(v6 + 1) = v50;
      *(v6 + 72) = 2;
      return result;
    }

    if (v13 == 3)
    {
      *&v53 = v9;
      *(&v53 + 1) = v10;
      *&v54 = v11;
      *(&v54 + 1) = v12;
      *&v55 = v15;
      *(&v55 + 1) = v14;
      v37 = v16 & 1;
      LOBYTE(v56[0]) = v16 & 1;
      v38 = *(v6 + 3);
      v59 = *(v6 + 2);
      *v60 = v38;
      *&v60[9] = *(v6 + 57);
      v39 = *(v6 + 1);
      v57 = *v6;
      v58 = v39;

      sub_24DC6F0D0(v14, v37);
      v40 = *(*(a2 - 8) + 8);
      v40(&v57, a2);
      v6[8] = 0;
      *(v6 + 2) = 0u;
      *(v6 + 3) = 0u;
      *v6 = 0u;
      *(v6 + 1) = 0u;
      *(v6 + 72) = 4;
      v43 = type metadata accessor for _BroadcastSequenceStateMachine.State.Finished(0, *(a2 + 16), v41, v42);
      sub_24DC6CB60(a1, v43, a5);
      v44 = v55;
      v45 = v56[0];
      v61 = v56[0];
      v46 = *(v6 + 3);
      v64 = *(v6 + 2);
      v65[0] = v46;
      *(v65 + 9) = *(v6 + 57);
      v47 = *(v6 + 1);
      v62 = *v6;
      v63 = v47;
      result = (v40)(&v62, a2);
      v48 = v54;
      *v6 = v53;
      *(v6 + 1) = v48;
      *(v6 + 2) = v44;
      *(v6 + 48) = v45;
      v35 = 3;
      goto LABEL_8;
    }
  }

  result = sub_24DCB55E4();
  __break(1u);
  return result;
}

uint64_t sub_24DC630D8(uint64_t a1)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  v5 = *(v1 + 72);
  if (v5 <= 1)
  {
    if (*(v1 + 72))
    {
      v41 = *v1;
      v42 = v2;
      (*(*(a1 - 8) + 16))(v40, v1, a1);
      v7 = *(a1 + 16);
      v10 = type metadata accessor for _BroadcastSequenceStateMachine.Subscriptions(0, v7, v8, v9);
      (*(*(v10 - 8) + 8))(&v41, v10);
      v40[0] = v4;
      type metadata accessor for _BroadcastSequenceStateMachine.Subscriptions.ID(255, v7, v11, v12);
      v13 = sub_24DCB50A4();
      (*(*(v13 - 8) + 8))(v40, v13);
    }

    v14 = 1;
    return v14 & 1;
  }

  v16 = v1[3];
  v15 = v1[4];
  if (v5 == 2)
  {
    v47 = *(v1 + 48);
    *v48 = *(v1 + 49);
    *&v48[15] = v1[8];
    v17 = v1[5];
    v41 = v3;
    v42 = v2;
    v43 = v4;
    v44 = v16;
    v45 = v15;
    v46 = v17;
    v18 = *(a1 - 8);
    (*(v18 + 16))(v40, v1, a1);
    v22 = type metadata accessor for _BroadcastSequenceStateMachine.State.Streaming(0, *(a1 + 16), v20, v21);
    v14 = sub_24DC6B850(v22, v23);
    (*(v18 + 8))(v1, a1);
    return v14 & 1;
  }

  if (v5 == 3)
  {
    v49 = v1[5];
    v50 = *(v1 + 48);
    v41 = v3;
    v42 = v2;
    v43 = v4;
    v44 = v16;
    v45 = v15;
    v46 = v49;
    v47 = v50;
    (*(*(a1 - 8) + 16))(v40, v1, a1);
    v25 = *(a1 + 16);
    v28 = type metadata accessor for _BroadcastSequenceStateMachine.State.Finished(0, v25, v26, v27);
    v14 = sub_24DC6CAA8(v28, v29);
    v51[0] = v3;
    v51[1] = v2;
    v32 = type metadata accessor for _BroadcastSequenceStateMachine.Elements(0, v25, v30, v31);
    (*(*(v32 - 8) + 8))(v51, v32);
    v40[0] = v4;
    v40[1] = v16;
    v35 = type metadata accessor for _BroadcastSequenceStateMachine.Subscriptions(0, v25, v33, v34);
    (*(*(v35 - 8) + 8))(v40, v35);
    v52 = v15;
    type metadata accessor for _BroadcastSequenceStateMachine.Subscriptions.ID(255, v25, v36, v37);
    v38 = sub_24DCB50A4();
    (*(*(v38 - 8) + 8))(&v52, v38);
    v53 = v49;
    v54 = v50;
    sub_24DC3DFD4(&v53, &qword_27F19F0A0, &qword_24DCBA488);
    return v14 & 1;
  }

  result = sub_24DCB55E4();
  __break(1u);
  return result;
}

uint64_t sub_24DC6347C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  v7 = *v4;
  v8 = v4[1];
  v10 = v4[2];
  v9 = v4[3];
  v11 = *(v4 + 72);
  if (v11 > 1)
  {
    v16 = v4[4];
    v15 = v4[5];
    v17 = *(v4 + 48);
    if (v11 == 2)
    {
      v45 = *v4;
      v46 = *(v4 + 1);
      *(&v47 + 1) = v4[5];
      v48[0] = *(v4 + 48);
      *&v48[1] = *(v4 + 49);
      *&v48[16] = v4[8];
      v18 = *(v4 + 3);
      v51 = *(v4 + 2);
      *&v47 = v51;
      v52[0] = v18;
      *(v52 + 9) = *(v4 + 57);
      v19 = *(v4 + 1);
      v49 = *v4;
      v50 = v19;
      *&v53 = v7;
      *(&v53 + 1) = v8;
      *&v54 = v10;
      *(&v54 + 1) = v9;
      *&v55 = v16;
      *(&v55 + 1) = v15;
      v56[0] = v17;
      *&v56[1] = *(v4 + 49);
      *&v56[16] = v4[8];
      v56[24] = 2;
      v20 = type metadata accessor for _BroadcastSequenceStateMachine.State.Streaming(0, *(a1 + 16), a3, a4);
      (*(*(v20 - 8) + 16))(&v58, &v53, v20);
      v21 = *(*(a1 - 8) + 8);
      v21(&v49, a1);
      v4[8] = 0;
      *(v4 + 2) = 0u;
      *(v4 + 3) = 0u;
      *v4 = 0u;
      *(v4 + 1) = 0u;
      *(v4 + 72) = 4;
      sub_24DC6AF98(v20, a2);
      v22 = *(v4 + 3);
      v60 = *(v4 + 2);
      v61[0] = v22;
      *(v61 + 9) = *(v4 + 57);
      v23 = *(v4 + 1);
      v58 = *v4;
      v59 = v23;
      result = (v21)(&v58, a1);
      *(v4 + 2) = v47;
      *(v4 + 3) = *v48;
      v4[8] = *&v48[16];
      *v4 = v45;
      *(v4 + 1) = v46;
      *(v4 + 72) = 2;
    }

    else if (v11 == 3)
    {
      *&v49 = *v4;
      *(&v49 + 1) = v8;
      *&v50 = v10;
      *(&v50 + 1) = v9;
      *&v51 = v16;
      *(&v51 + 1) = v15;
      v33 = v17 & 1;
      LOBYTE(v52[0]) = v17 & 1;
      v34 = *(v4 + 3);
      v55 = *(v4 + 2);
      *v56 = v34;
      *&v56[9] = *(v4 + 57);
      v35 = *(v4 + 1);
      v53 = *v4;
      v54 = v35;

      sub_24DC6F0D0(v15, v33);
      v36 = *(*(a1 - 8) + 8);
      v36(&v53, a1);
      v4[8] = 0;
      *(v4 + 2) = 0u;
      *(v4 + 3) = 0u;
      *v4 = 0u;
      *(v4 + 1) = 0u;
      *(v4 + 72) = 4;
      v39 = type metadata accessor for _BroadcastSequenceStateMachine.State.Finished(0, *(a1 + 16), v37, v38);
      sub_24DC6C47C(v39, a2);
      v40 = v51;
      v41 = v52[0];
      v57 = v52[0];
      v42 = *(v4 + 3);
      v60 = *(v4 + 2);
      v61[0] = v42;
      *(v61 + 9) = *(v4 + 57);
      v43 = *(v4 + 1);
      v58 = *v4;
      v59 = v43;
      result = (v36)(&v58, a1);
      v44 = v50;
      *v4 = v49;
      *(v4 + 1) = v44;
      *(v4 + 2) = v40;
      *(v4 + 48) = v41;
      *(v4 + 72) = 3;
    }

    else
    {
      result = sub_24DCB55E4();
      __break(1u);
    }
  }

  else if (*(v4 + 72))
  {
    *&v49 = *v4;
    *(&v49 + 1) = v8;
    *&v50 = v10;
    *(&v50 + 1) = v9;
    v24 = *(v4 + 3);
    v55 = *(v4 + 2);
    *v56 = v24;
    *&v56[9] = *(v4 + 57);
    v25 = *(v4 + 1);
    v53 = *v4;
    v54 = v25;
    v26 = *(*(a1 - 8) + 8);

    v26(&v53, a1);
    v4[8] = 0;
    *(v4 + 2) = 0u;
    *(v4 + 3) = 0u;
    *v4 = 0u;
    *(v4 + 1) = 0u;
    *(v4 + 72) = 4;
    v29 = type metadata accessor for _BroadcastSequenceStateMachine.State.Subscribed(0, *(a1 + 16), v27, v28);
    sub_24DC66140(v29, a2);
    v30 = v50;
    v31 = *(v4 + 3);
    v60 = *(v4 + 2);
    v61[0] = v31;
    *(v61 + 9) = *(v4 + 57);
    v32 = *(v4 + 1);
    v58 = *v4;
    v59 = v32;
    result = (v26)(&v58, a1);
    *v4 = v49;
    *(v4 + 1) = v30;
    *(v4 + 72) = 1;
  }

  else
  {
    v12 = type metadata accessor for _BroadcastSequenceStateMachine.ConsumerContinuations(0, *(a1 + 16), a3, a4);
    v13 = *(*(v12 - 8) + 56);

    return v13(a2, 1, 1, v12);
  }

  return result;
}

uint64_t sub_24DC638F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  sub_24DCB5414();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v5 = sub_24DCB5104();
  v7 = type metadata accessor for _BroadcastSequenceStateMachine._OneOrMany(0, v4, v5, v6);
  v8 = *(*(v7 - 8) + 16);

  return v8(a2, v2, v7);
}

uint64_t sub_24DC639AC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  sub_24DCB5414();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v5 = sub_24DCB5104();
  v7 = type metadata accessor for _BroadcastSequenceStateMachine._OneOrMany(0, v4, v5, v6);
  v8 = *(*(v7 - 8) + 40);

  return v8(v2, a1, v7);
}

uint64_t sub_24DC63A64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  sub_24DCB5414();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v5 = sub_24DCB5904();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_24DC63B0C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  sub_24DCB5414();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v5 = sub_24DCB5904();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_24DC63BD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_24DCB5414();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v8 = sub_24DCB5104();
  v10 = type metadata accessor for _BroadcastSequenceStateMachine._OneOrMany(0, a3, v8, v9);
  (*(*(v10 - 8) + 32))(a4, a1, v10);
  v13 = *(type metadata accessor for _BroadcastSequenceStateMachine.ConsumerContinuations(0, a3, v11, v12) + 28);
  v14 = sub_24DCB5904();
  v15 = *(*(v14 - 8) + 32);

  return v15(a4 + v13, a2, v14);
}

uint64_t sub_24DC63D0C(uint64_t a1)
{

  *v1 = a1;
  return result;
}

void sub_24DC63D70(uint64_t a1, char a2)
{
  sub_24DC57738(*(v2 + 8), *(v2 + 16));
  *(v2 + 8) = a1;
  *(v2 + 16) = a2 & 1;
}

uint64_t sub_24DC63DE4(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_24DC63E24(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_24DC63E78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _BroadcastSequenceStateMachine.Subscriptions._Subscriber(0, a2, a3, a4);
  v5 = sub_24DCB4FF4();
  type metadata accessor for _BroadcastSequenceStateMachine.Subscriptions.ID(0, a2, v6, v7);
  sub_24DCB4FF4();
  return v5;
}

uint64_t sub_24DC63F14@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v33 = a2;
  v32 = a1;
  v5 = *(a3 + 16);
  v6 = sub_24DCB5414();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v31[1] = v6;
  v7 = sub_24DCB5904();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v31 - v8;
  v10 = sub_24DCB5104();
  v12 = type metadata accessor for _BroadcastSequenceStateMachine._OneOrMany(0, v5, v10, v11);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = (v31 - v17);
  v21 = type metadata accessor for _BroadcastSequenceStateMachine.Subscriptions(0, v5, v19, v20);
  sub_24DC641FC(v21, v18);
  type metadata accessor for _BroadcastSequenceStateMachine.ConsumerContinuations(255, v5, v22, v23);
  type metadata accessor for _BroadcastSequenceStateMachine.ProducerContinuations(255, v5, v24, v25);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v27 = a4;
  v28 = a4 + *(TupleTypeMetadata2 + 48);
  (*(v13 + 16))(v16, v18, v12);
  v39 = v32;
  v40 = v33 & 1;
  v38 = v5;
  v34 = v5;
  v35 = sub_24DC6F44C;
  v36 = &v37;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F0A0, &qword_24DCBA488);
  sub_24DC64B5C(sub_24DC6F450, v29, v9);
  sub_24DC63BD8(v16, v9, v5, v27);
  (*(v13 + 8))(v18, v12);
  *v28 = MEMORY[0x277D84F90];
  *(v28 + 8) = 0;
  *(v28 + 16) = 0;
  return (*(*(TupleTypeMetadata2 - 8) + 56))(v27, 0, 1, TupleTypeMetadata2);
}

uint64_t sub_24DC641FC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v56 = a2;
  v3 = *(a1 + 16);
  sub_24DCB5414();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v4 = sub_24DCB5104();
  v58 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v64 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v63 = &v52 - v7;
  v72 = sub_24DCB5414();
  v57 = *(v72 - 8);
  v8 = MEMORY[0x28223BE20](v72);
  v66 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v52 - v10;
  v55 = type metadata accessor for _BroadcastSequenceStateMachine._OneOrMany(0, v3, v4, v12);
  v70 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v14 = (&v52 - v13);
  v17 = type metadata accessor for _BroadcastSequenceStateMachine.Subscriptions._Subscriber(0, v3, v15, v16);
  v73 = *(v17 - 8);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = (&v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = MEMORY[0x28223BE20](v18);
  v65 = &v52 - v22;
  v53 = v23;
  MEMORY[0x28223BE20](v21);
  v25 = &v52 - v24;
  v54 = v2;
  v26 = *v2;
  v29 = sub_24DC6DD9C(*v2, v27, v3, v28);
  v71 = v4;
  if (v29 == 1)
  {
    v69 = v14;
    v31 = v58;
    v77 = v26;
    MEMORY[0x28223BE20](1);
    *(&v52 - 2) = v32;
    sub_24DCB50A4();

    swift_getWitnessTable();
    sub_24DCB53A4();

    if ((v75 & 1) == 0)
    {
      sub_24DCB5064();
      (*(v57 + 16))(v11, &v25[*(v17 + 32)], v72);
      v33 = v71;
      result = (v31[6])(v11, 1, v71);
      v35 = v69;
      v34 = v70;
      if (result != 1)
      {
        (*(v73 + 8))(v25, v17);
        (v31[4])(v35, v11, v33);
        v36 = v55;
        swift_storeEnumTagMultiPayload();
        return (v34[4])(v56, v35, v36);
      }

      goto LABEL_27;
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    return result;
  }

  if (!v29)
  {
    *v56 = sub_24DCB4FF4();

    return swift_storeEnumTagMultiPayload();
  }

  v74 = sub_24DCB4C94();
  v62 = sub_24DCB50A4();
  sub_24DCB4FC4();
  type metadata accessor for _BroadcastSequenceStateMachine.Subscriptions.ID(0, v3, v37, v38);
  v77 = sub_24DCB4C94();
  v61 = sub_24DCB50A4();
  sub_24DCB4FC4();

  if (sub_24DCB5034())
  {
    v52 = v3;
    v39 = 0;
    v69 = (v73 + 32);
    v70 = (v73 + 16);
    v68 = (v57 + 16);
    v40 = v58;
    v67 = (v58 + 6);
    v60 = (v58 + 4);
    ++v58;
    v59 = (v40 + 2);
    v41 = (v73 + 8);
    v57 += 8;
    v42 = v65;
    v43 = v66;
    v44 = v71;
    while (1)
    {
      v47 = sub_24DCB5024();
      sub_24DCB4FB4();
      if (v47)
      {
        result = (*(v73 + 16))(v42, v26 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v39, v17);
      }

      else
      {
        result = sub_24DCB54F4();
        if (v53 != 8)
        {
          goto LABEL_25;
        }

        v76 = result;
        (*v70)(v42, &v76, v17);
        result = swift_unknownObjectRelease();
      }

      v48 = v72;
      v49 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        break;
      }

      (*v69)(v20, v42, v17);
      (*v68)(v43, v20 + *(v17 + 32), v48);
      if ((*v67)(v43, 1, v44) == 1)
      {
        (*v41)(v20, v17);
        (*v57)(v43, v48);
      }

      else
      {
        v45 = v63;
        (*v60)(v63, v43, v44);
        (*v59)(v64, v45, v44);
        v43 = v66;
        sub_24DCB5054();
        v76 = *v20;
        sub_24DCB5054();
        v46 = v45;
        v42 = v65;
        (*v58)(v46, v44);
        (*v41)(v20, v17);
      }

      ++v39;
      if (v49 == sub_24DCB5034())
      {

        v51 = v56;
        v3 = v52;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v51 = v56;
LABEL_22:
  MEMORY[0x28223BE20](v50);
  *(&v52 - 2) = v3;
  *(&v52 - 1) = &v77;
  sub_24DCB50A4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24DCB53E4();
  *v51 = v74;
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_24DC64B5C@<X0>(void (*a1)(char *)@<X0>, void *a2@<X2>, uint64_t a4@<X8>)
{
  v7 = a2[2];
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(*(a2[3] - 8) + 32))(a4, v13, a2[3]);
  }

  else
  {
    (*(v8 + 32))(v11, v13, v7);
    a1(v11);
    (*(v8 + 8))(v11, v7);
  }

  sub_24DCB5904();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_24DC64D70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = *(a2 + 16);
  sub_24DCB5414();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v8 = sub_24DCB5904();
  MEMORY[0x28223BE20](v8);
  v10 = (v21 - v9);
  v11 = *(v4 + 16);
  v21[0] = a1;
  v21[1] = v11;
  type metadata accessor for _BroadcastSequenceStateMachine.Subscriptions.ID(255, v7, v12, v13);
  sub_24DCB50A4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24DCB53C4();
  if (v22)
  {
    v16 = 1;
  }

  else
  {
    sub_24DCB5064();
    sub_24DC6E294();
    v17 = swift_allocError();
    *v18 = 0;
    *v10 = v17;
    swift_storeEnumTagMultiPayload();
    sub_24DC65144(v10, MEMORY[0x277D84F90], 0, 0, v7, a3);
    v16 = 0;
  }

  v19 = type metadata accessor for _BroadcastSequenceStateMachine.OnNext.ReturnAndResumeProducers(0, v7, v14, v15);
  return (*(*(v19 - 8) + 56))(a3, v16, 1, v19);
}

uint64_t sub_24DC64F78(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_24DC6E6D8(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 8 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 40), 8 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_24DC65000@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_24DC6E6EC(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F0A8, &qword_24DCBA490) - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    result = sub_24DC6F798(v11, a2);
    if (v10 > 0 || v11 >= v11 + v10 + v10 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_24DC65144@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_24DCB5414();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v12 = sub_24DCB5904();
  (*(*(v12 - 8) + 32))(a6, a1, v12);
  result = type metadata accessor for _BroadcastSequenceStateMachine.OnNext.ReturnAndResumeProducers(0, a5, v13, v14);
  v16 = a6 + *(result + 28);
  *v16 = a2;
  *(v16 + 8) = a3;
  *(v16 + 16) = a4 & 1;
  return result;
}

uint64_t sub_24DC65220@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a3;
  v4 = *(a2 + 16);
  v5 = sub_24DCB5414();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v29 = v5;
  v6 = sub_24DCB5104();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - v8;
  v10 = sub_24DCB5414();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v28 - v15;
  v19 = type metadata accessor for _BroadcastSequenceStateMachine.Subscriptions(0, v4, v17, v18);
  sub_24DC655E0(v16, a1, v19, v20);
  (*(v11 + 16))(v14, v16, v10);
  if ((*(v7 + 48))(v14, 1, v6) == 1)
  {
    v21 = *(v11 + 8);
    v21(v16, v10);
    v21(v14, v10);
    sub_24DCB5904();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    return (*(*(TupleTypeMetadata2 - 8) + 56))(v30, 1, 1, TupleTypeMetadata2);
  }

  else
  {
    (*(v7 + 32))(v9, v14, v6);
    v29 = sub_24DCB5904();
    v24 = swift_getTupleTypeMetadata2();
    v25 = *(v24 + 48);
    v26 = v30;
    (*(v7 + 16))(v30, v9, v6);
    sub_24DCB5114();
    sub_24DC46150();
    v27 = swift_allocError();
    sub_24DCB4CA4();
    (*(v7 + 8))(v9, v6);
    (*(v11 + 8))(v16, v10);
    *(v26 + v25) = v27;
    swift_storeEnumTagMultiPayload();
    return (*(*(v24 - 8) + 56))(v26, 0, 1, v24);
  }
}

uint64_t sub_24DC655E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v18 = a1;
  v7 = *(a3 + 16);
  v8 = type metadata accessor for _BroadcastSequenceStateMachine.Subscriptions._Subscriber(0, v7, a3, a4);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v17 - v10;
  v21 = *v5;
  v19 = v7;
  v20 = a2;
  sub_24DCB50A4();

  swift_getWitnessTable();
  sub_24DCB53A4();

  v12 = v22;
  if (v22)
  {
    sub_24DCB5414();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
    v13 = sub_24DCB5104();
    (*(*(v13 - 8) + 56))(v18, 1, 1, v13);
  }

  else
  {
    sub_24DCB50C4();
    v14 = *(v8 + 32);
    sub_24DCB5414();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
    sub_24DCB5104();
    v15 = sub_24DCB5414();
    (*(*(v15 - 8) + 32))(v18, &v11[v14], v15);
    sub_24DCB5064();
    (*(v9 + 8))(v11, v8);
  }

  return v12 ^ 1u;
}

uint64_t sub_24DC6586C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v9 = *(a3 + 16);
  v10 = type metadata accessor for _BroadcastSequenceStateMachine.OnNext.ReturnAndResumeProducers(0, v9, a3, a5);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v45 - v12;
  v16 = type metadata accessor for _BroadcastSequenceStateMachine.OnNext(0, v9, v14, v15);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v45 - v17;
  sub_24DC64D70(a2, a3, &v45 - v17);
  if ((*(v11 + 48))(v18, 1, v10) == 1)
  {
    v21 = type metadata accessor for _BroadcastSequenceStateMachine.Subscriptions(0, v9, v19, v20);
    v22 = sub_24DC65CCC(a1, a2, v21);
    sub_24DCB5414();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
    v23 = sub_24DCB5104();
    sub_24DCB5904();
    type metadata accessor for _BroadcastSequenceStateMachine.ProducerContinuations(255, v9, v24, v25);
    sub_24DCB5414();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v27 = TupleTypeMetadata3;
    if (v22)
    {
      v28 = *(*(TupleTypeMetadata3 - 8) + 56);
      v29 = a4;
      v30 = 1;
    }

    else
    {
      v42 = *(TupleTypeMetadata3 + 48);
      v43 = a4 + *(TupleTypeMetadata3 + 64);
      (*(*(v23 - 8) + 16))(a4, a1, v23);
      sub_24DCB5114();
      sub_24DC46150();
      v44 = swift_allocError();
      sub_24DCB4CA4();
      *(a4 + v42) = v44;
      swift_storeEnumTagMultiPayload();
      *v43 = 0;
      *(v43 + 8) = 0;
      *(v43 + 16) = 0;
      v28 = *(*(v27 - 8) + 56);
      v29 = a4;
      v30 = 0;
    }

    return v28(v29, v30, 1, v27);
  }

  else
  {
    (*(v11 + 32))(v13, v18, v10);
    sub_24DCB5414();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
    v31 = sub_24DCB5104();
    v32 = sub_24DCB5904();
    type metadata accessor for _BroadcastSequenceStateMachine.ProducerContinuations(255, v9, v33, v34);
    sub_24DCB5414();
    v35 = swift_getTupleTypeMetadata3();
    v36 = *(v35 + 48);
    v37 = a4 + *(v35 + 64);
    (*(*(v31 - 8) + 16))(a4, a1, v31);
    (*(*(v32 - 8) + 32))(a4 + v36, v13, v32);
    v38 = &v13[*(v10 + 28)];
    v39 = *v38;
    v40 = *(v38 + 1);
    LOBYTE(v38) = v38[16];
    *v37 = v39;
    *(v37 + 8) = v40;
    *(v37 + 16) = v38;
    return (*(*(v35 - 8) + 56))(a4, 0, 1, v35);
  }
}

uint64_t sub_24DC65CCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v21 = a1;
  v6 = *(a3 + 16);
  sub_24DCB5414();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v7 = sub_24DCB5104();
  v8 = sub_24DCB5414();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - v10;
  v24 = *v4;
  v22 = v6;
  v23 = a2;
  v14 = type metadata accessor for _BroadcastSequenceStateMachine.Subscriptions._Subscriber(255, v6, v12, v13);
  sub_24DCB50A4();

  swift_getWitnessTable();
  sub_24DCB53A4();

  v15 = v26;
  if ((v26 & 1) == 0)
  {
    v16 = v25;
    v17 = *(v7 - 8);
    (*(v17 + 16))(v11, v21, v7);
    (*(v17 + 56))(v11, 0, 1, v7);
    sub_24DCB4FE4();
    v18 = *v4;
    sub_24DC6E700(v16, v18, v14);
    (*(v9 + 40))(v18 + ((*(*(v14 - 8) + 80) + 32) & ~*(*(v14 - 8) + 80)) + *(*(v14 - 8) + 72) * v16 + *(v14 + 32), v11, v8);
  }

  return v15 ^ 1u;
}

uint64_t sub_24DC65F84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for _BroadcastSequenceStateMachine.Subscriptions(0, *(a1 + 16), a3, a4);

  return sub_24DC65FB4(v4);
}

uint64_t sub_24DC65FB4(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_24DCB5414();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v3 = sub_24DCB5104();
  v4 = sub_24DCB5414();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v9 = type metadata accessor for _BroadcastSequenceStateMachine.Subscriptions._Subscriber(0, v2, v7, v8);
  result = MEMORY[0x28223BE20](v9);
  v12 = &v14 - v11;
  v13 = *(v1 + 8);
  if (__OFADD__(v13, 1))
  {
    __break(1u);
  }

  else
  {
    *(v1 + 8) = v13 + 1;
    (*(*(v3 - 8) + 56))(v6, 1, 1, v3);
    sub_24DC6DA54(v13, 0, v6, v2, v12);
    sub_24DCB50A4();
    sub_24DCB5054();
    return v13;
  }

  return result;
}

uint64_t sub_24DC66140@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  sub_24DCB5414();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v4 = sub_24DCB5904();
  MEMORY[0x28223BE20](v4);
  v6 = (v30 - v5);
  v7 = sub_24DCB5104();
  v9 = type metadata accessor for _BroadcastSequenceStateMachine._OneOrMany(0, v3, v7, v8);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = (v30 - v14);
  v18 = type metadata accessor for _BroadcastSequenceStateMachine.Subscriptions(0, v3, v16, v17);
  sub_24DC641FC(v18, v15);
  (*(v10 + 16))(v13, v15, v9);
  sub_24DC6E294();
  v19 = swift_allocError();
  *v20 = 0;
  *v6 = v19;
  swift_storeEnumTagMultiPayload();
  sub_24DC63BD8(v13, v6, v3, a2);
  v30[1] = sub_24DC663FC(v18, v21, v22, v23);
  type metadata accessor for _BroadcastSequenceStateMachine.Subscriptions.ID(255, v3, v24, v25);
  sub_24DCB50A4();
  swift_getWitnessTable();
  sub_24DCB5044();
  (*(v10 + 8))(v15, v9);
  v28 = type metadata accessor for _BroadcastSequenceStateMachine.ConsumerContinuations(0, v3, v26, v27);
  return (*(*(v28 - 8) + 56))(a2, 0, 1, v28);
}

uint64_t sub_24DC663FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = *v4;
  v14 = *(a1 + 16);
  type metadata accessor for _BroadcastSequenceStateMachine.Subscriptions._Subscriber(255, v14, a3, a4);
  v5 = sub_24DCB50A4();
  v8 = type metadata accessor for _BroadcastSequenceStateMachine.Subscriptions.ID(0, v14, v6, v7);

  WitnessTable = swift_getWitnessTable();
  v11 = sub_24DC69634(sub_24DC72794, &v13, v5, v8, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v10);

  sub_24DCB5094();
  return v11;
}

uint64_t sub_24DC664F4@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v34 = a1;
  v35 = a3;
  v3 = *(a2 + 16);
  sub_24DCB5414();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v33 = sub_24DCB5904();
  MEMORY[0x28223BE20](v33);
  v5 = (&v32 - v4);
  v8 = type metadata accessor for _BroadcastSequenceStateMachine.ConsumerContinuations(0, v3, v6, v7);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v32 - v10;
  v12 = sub_24DCB5104();
  v14 = type metadata accessor for _BroadcastSequenceStateMachine._OneOrMany(0, v3, v12, v13);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = (&v32 - v19);
  v23 = type metadata accessor for _BroadcastSequenceStateMachine.Subscriptions(0, v3, v21, v22);
  sub_24DC641FC(v23, v20);
  (*(v15 + 16))(v18, v20, v14);
  sub_24DC6E294();
  v24 = swift_allocError();
  *v25 = v34 & 1;
  *v5 = v24;
  swift_storeEnumTagMultiPayload();
  sub_24DC63BD8(v18, v5, v3, v11);
  (*(v15 + 8))(v20, v14);
  type metadata accessor for _BroadcastSequenceStateMachine.ProducerContinuations(255, v3, v26, v27);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v29 = v35;
  v30 = v35 + *(TupleTypeMetadata2 + 48);
  (*(v9 + 32))(v35, v11, v8);
  *v30 = MEMORY[0x277D84F90];
  *(v30 + 8) = 0;
  *(v30 + 16) = 0;
  return (*(*(TupleTypeMetadata2 - 8) + 56))(v29, 0, 1, TupleTypeMetadata2);
}

uint64_t sub_24DC66850(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_24DC66898(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t sub_24DC668CC(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t sub_24DC66970(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t sub_24DC669D0(uint64_t a1)
{

  *(v1 + 64) = a1;
  return result;
}

uint64_t sub_24DC66A1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v8 = sub_24DC66AB0(a2, a2, a4, a5);
  type metadata accessor for _BroadcastSequenceStateMachine.Subscriptions._Subscriber(0, a2, v9, v10);
  v11 = sub_24DCB4FF4();
  type metadata accessor for _BroadcastSequenceStateMachine.Subscriptions.ID(0, a2, v12, v13);
  result = sub_24DCB4FF4();
  *a3 = v8;
  a3[1] = 0;
  v15 = MEMORY[0x277D84F90];
  a3[2] = a1;
  a3[3] = v15;
  a3[4] = v15;
  a3[5] = 0;
  a3[6] = v11;
  a3[7] = 0;
  a3[8] = result;
  return result;
}

uint64_t sub_24DC66AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for _BroadcastSequenceStateMachine.Elements._IdentifiableElement(0, a1, a3, a4);
  v9 = sub_24DCB4FF4();
  v5 = sub_24DCB50A4();
  WitnessTable = swift_getWitnessTable();
  v7 = sub_24DC6F10C(&v9, v4, v5, WitnessTable);

  return v7;
}

uint64_t sub_24DC66B54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  result = sub_24DC66AB0(a5, a2, a3, a4);
  *a6 = result;
  a6[1] = 0;
  v12 = MEMORY[0x277D84F90];
  a6[2] = a4;
  a6[3] = v12;
  a6[4] = v12;
  a6[5] = 0;
  a6[6] = a1;
  a6[7] = a2;
  a6[8] = a3;
  return result;
}

uint64_t sub_24DC66BB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v6 = v5;
  v99 = a3;
  v8 = *(a2 + 16);
  v9 = type metadata accessor for _BroadcastSequenceStateMachine.ConsumerContinuations(0, v8, a4, a5);
  v98 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v93 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v89 = &v88 - v12;
  sub_24DCB5414();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v13 = sub_24DCB5104();
  type metadata accessor for _BroadcastSequenceStateMachine._OneOrMany(255, v8, v13, v14);
  v15 = sub_24DCB5414();
  v94 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v88 - v16;
  v18 = sub_24DCB5414();
  v95 = *(v18 - 8);
  v96 = v18;
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v88 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v88 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v91 = &v88 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v90 = &v88 - v28;
  v92 = *(v8 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = &v88 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for _BroadcastSequenceStateMachine.Elements(0, v8, v31, v32);
  v97 = a1;
  sub_24DC673C0(a1, v33);
  v34 = *v6;
  if (sub_24DC6756C(*v6, v35, v8, v36) < v6[2] || (v40 = sub_24DC6D47C(v34, v37, v8, MEMORY[0x277CFB940], MEMORY[0x277D83CD0]), (v41 & 1) != 0))
  {
    v42 = type metadata accessor for _BroadcastSequenceStateMachine.Subscriptions(0, v8, v38, v39);
    v43 = sub_24DC67854(v42, v17);
    MEMORY[0x28223BE20](v43);
    v44 = v97;
    *(&v88 - 2) = v8;
    *(&v88 - 1) = v44;
    sub_24DC67F68(sub_24DC6F58C, (&v88 - 4), MEMORY[0x277D84A98], v9, v45, v24);
    (*(v94 + 8))(v17, v15);
    v46 = v95;
    v47 = v24;
    v48 = v96;
    (*(v95 + 32))(v21, v47, v96);
    v49 = v98;
    if ((*(v98 + 48))(v21, 1, v9) == 1)
    {
      (*(v46 + 8))(v21, v48);
LABEL_5:
      type metadata accessor for _BroadcastSequenceStateMachine.OnYield(0, v8, v50, v51);
      return swift_storeEnumTagMultiPayload();
    }

    v52 = *(v49 + 32);
    v53 = v93;
    v52(v93, v21, v9);
LABEL_7:
    v52(v99, v53, v9);
    type metadata accessor for _BroadcastSequenceStateMachine.OnYield(0, v8, v54, v55);
    return swift_storeEnumTagMultiPayload();
  }

  v57 = v6[6];
  v93 = (v6 + 6);
  v58 = sub_24DC67624(v40, v57, v38, v8);
  v88 = type metadata accessor for _BroadcastSequenceStateMachine.Subscriptions.ID(0, v8, v59, v60);
  v61 = sub_24DCB5034();
  if (v61)
  {
    v64 = v61;
    type metadata accessor for _BroadcastSequenceStateMachine.Subscriptions._Subscriber(0, v8, v62, v63);
    if (sub_24DCB5034() != v64)
    {
      sub_24DC67794(v33, v30, v65, v66);
      (*(v92 + 8))(v30, v8);
      v74 = type metadata accessor for _BroadcastSequenceStateMachine.Subscriptions(0, v8, v72, v73);
      sub_24DC68254(v58, v74, v75, v76);
      v100 = v58;
      sub_24DCB50A4();
      swift_getWitnessTable();
      sub_24DCB5044();
      goto LABEL_5;
    }

    v69 = v6[5];
    v70 = v69 + 1;
    if (!__OFADD__(v69, 1))
    {
      goto LABEL_16;
    }

    __break(1u);
  }

  result = sub_24DC6D664(v57, v71, v8, type metadata accessor for _BroadcastSequenceStateMachine.Subscriptions._Subscriber, MEMORY[0x277D83940], MEMORY[0x277D83988]);
  if ((result & 1) == 0)
  {
    sub_24DC67794(v33, v30, v67, v68);
    (*(v92 + 8))(v30, v8);
    v79 = type metadata accessor for _BroadcastSequenceStateMachine.Subscriptions(0, v8, v77, v78);
    v80 = sub_24DC67854(v79, v17);
    MEMORY[0x28223BE20](v80);
    v81 = v97;
    *(&v88 - 2) = v8;
    *(&v88 - 1) = v81;
    v82 = v90;
    sub_24DC67F68(sub_24DC72748, (&v88 - 4), MEMORY[0x277D84A98], v9, v83, v90);
    (*(v94 + 8))(v17, v15);
    v85 = v95;
    v84 = v96;
    v86 = v91;
    (*(v95 + 32))(v91, v82, v96);
    v87 = v98;
    if ((*(v98 + 48))(v86, 1, v9) == 1)
    {
      (*(v85 + 8))(v86, v84);
      goto LABEL_5;
    }

    v52 = *(v87 + 32);
    v53 = v89;
    v52(v89, v86, v9);
    goto LABEL_7;
  }

  v69 = v6[5];
  v70 = v69 + 1;
  if (!__OFADD__(v69, 1))
  {
LABEL_16:
    v6[5] = v70;
    *v99 = v69;
    type metadata accessor for _BroadcastSequenceStateMachine.OnYield(0, v8, v67, v68);

    return swift_storeEnumTagMultiPayload();
  }

  __break(1u);
  return result;
}

uint64_t sub_24DC673C0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for _BroadcastSequenceStateMachine.Elements._IdentifiableElement(0, v4, v8, v9);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v16 - v12;
  result = (*(v5 + 16))(v7, a1, v4);
  v15 = *(v2 + 8);
  if (__OFADD__(v15, 1))
  {
    __break(1u);
  }

  else
  {
    *(v2 + 8) = v15 + 1;
    (*(v5 + 32))(v13, v7, v4);
    *&v13[*(v10 + 28)] = v15;
    sub_24DCB4C74();
    sub_24DCB4C44();
    return (*(v11 + 8))(v13, v10);
  }

  return result;
}

uint64_t sub_24DC6756C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for _BroadcastSequenceStateMachine.Elements._IdentifiableElement(0, a3, a3, a4);
  sub_24DC6EDBC(sub_24DC6EDB0, 0, a1, MEMORY[0x277CFB918], v5, MEMORY[0x277D84A98], MEMORY[0x277D83B88], MEMORY[0x277D84AC0], v7);
  return v8;
}

uint64_t sub_24DC67624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a4;
  v15 = a1;
  type metadata accessor for _BroadcastSequenceStateMachine.Subscriptions._Subscriber(255, a4, a3, a4);
  v5 = sub_24DCB50A4();

  swift_getWitnessTable();
  v16 = sub_24DCB5524();
  v13[2] = a4;
  v8 = type metadata accessor for _BroadcastSequenceStateMachine.Subscriptions.ID(0, a4, v6, v7);
  WitnessTable = swift_getWitnessTable();
  v11 = sub_24DC69634(sub_24DC31B54, v13, v5, v8, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v10);

  return v11;
}

uint64_t sub_24DC67794@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  v5 = *(a1 + 16);
  v6 = type metadata accessor for _BroadcastSequenceStateMachine.Elements._IdentifiableElement(0, v5, a3, a4);
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - v7;
  sub_24DCB4C74();
  sub_24DCB4C24();
  return (*(*(v5 - 8) + 32))(a2, v8, v5);
}

void *sub_24DC67854@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = *(a1 + 16);
  sub_24DCB5414();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v5 = sub_24DCB5104();
  v61 = sub_24DCB5414();
  v6 = *(v61 - 8);
  v7 = MEMORY[0x28223BE20](v61);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v51 - v11;
  v13 = *(v5 - 8);
  v14 = MEMORY[0x28223BE20](v10);
  v60 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v59 = &v51 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v51 - v18;
  v62 = v2;
  v20 = *v2;
  v23 = sub_24DC6DD9C(*v2, v21, v4, v22);
  v63 = v5;
  if (v23 == 1)
  {
    v61 = v13;
    v67 = v20;
    MEMORY[0x28223BE20](1);
    *(&v51 - 2) = v4;
    v30 = type metadata accessor for _BroadcastSequenceStateMachine.Subscriptions._Subscriber(255, v4, v28, v29);
    sub_24DCB50A4();

    swift_getWitnessTable();
    sub_24DCB53A4();

    if ((v65 & 1) == 0)
    {
      v31 = v64;
      v32 = v62;
      sub_24DCB4FE4();
      sub_24DC6E700(v31, *v32, v30);
      sub_24DC6DB6C(v30, v12);
      v33 = v61;
      v34 = v63;
      result = (*(v61 + 48))(v12, 1, v63);
      if (result != 1)
      {
        v35 = *(v33 + 32);
        v35(v19, v12, v34);
        v35(a2, v19, v34);
        v37 = type metadata accessor for _BroadcastSequenceStateMachine._OneOrMany(0, v4, v34, v36);
        swift_storeEnumTagMultiPayload();
        return (*(*(v37 - 8) + 56))(a2, 0, 1, v37);
      }

      goto LABEL_22;
    }

LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    return result;
  }

  if (v23)
  {
    v52 = a2;
    v67 = sub_24DCB4C94();
    v58 = sub_24DCB50A4();
    sub_24DCB4FC4();
    v66 = v20;
    v51 = v4;
    v40 = type metadata accessor for _BroadcastSequenceStateMachine.Subscriptions._Subscriber(255, v4, v38, v39);
    v41 = sub_24DCB50A4();
    swift_getWitnessTable();
    result = sub_24DCB5354();
    v43 = v64;
    v44 = v65;
    if (v64 == v65)
    {
LABEL_10:
      v45 = v51;
      v46 = v52;
      *v52 = v67;
      v47 = type metadata accessor for _BroadcastSequenceStateMachine._OneOrMany(0, v45, v63, v42);
      swift_storeEnumTagMultiPayload();
      return (*(*(v47 - 8) + 56))(v46, 0, 1, v47);
    }

    if (v65 < v64)
    {
      __break(1u);
    }

    else if (v64 < v65)
    {
      v55 = (v13 + 16);
      v56 = (v13 + 32);
      v53 = (v6 + 8);
      v54 = (v13 + 8);
      v57 = v41;
      do
      {
        v49 = v62;
        sub_24DCB4FE4();
        sub_24DC6E700(v43, *v49, v40);
        sub_24DC6DB6C(v40, v9);
        v50 = v63;
        if ((*(v13 + 48))(v9, 1, v63) == 1)
        {
          (*v53)(v9, v61);
        }

        else
        {
          v48 = v59;
          (*v56)(v59, v9, v50);
          (*v55)(v60, v48, v50);
          sub_24DCB5054();
          (*v54)(v48, v50);
        }

        ++v43;
      }

      while (v44 != v43);
      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_21;
  }

  v25 = type metadata accessor for _BroadcastSequenceStateMachine._OneOrMany(0, v4, v5, v24);
  v26 = *(*(v25 - 8) + 56);

  return v26(a2, 1, 1, v25);
}

uint64_t sub_24DC67F68@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v25 = a5;
  v26 = a2;
  v28 = a4;
  v27 = a1;
  v24 = *(a3 - 8);
  v10 = MEMORY[0x28223BE20](a1);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 16);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v10);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v6);
  v22 = 1;
  if ((*(v15 + 48))(v20, 1, v14) != 1)
  {
    (*(v15 + 32))(v18, v20, v14);
    v27(v18, v12);
    (*(v15 + 8))(v18, v14);
    if (v7)
    {
      return (*(v24 + 32))(v25, v12, a3);
    }

    v22 = 0;
  }

  return (*(*(v28 - 8) + 56))(a6, v22, 1);
}

uint64_t sub_24DC68210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _BroadcastSequenceStateMachine.Subscriptions._Subscriber(0, a3, a3, a4);

  return sub_24DCB5034();
}

uint64_t sub_24DC68254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _BroadcastSequenceStateMachine.Subscriptions._Subscriber(255, *(a2 + 16), a3, a4);
  sub_24DCB50A4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_24DCB53E4();
}

uint64_t sub_24DC68308@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_24DCB5414();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v8 = sub_24DCB5904();
  MEMORY[0x28223BE20](v8);
  v10 = &v19 - v9;
  v11 = sub_24DCB5104();
  v13 = type metadata accessor for _BroadcastSequenceStateMachine._OneOrMany(0, a3, v11, v12);
  MEMORY[0x28223BE20](v13);
  v15 = &v19 - v14;
  (*(v16 + 16))(&v19 - v14, a1);
  v17 = *(a3 - 8);
  (*(v17 + 16))(v10, a2, a3);
  (*(v17 + 56))(v10, 0, 1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_24DC63BD8(v15, v10, a3, a4);
}

uint64_t sub_24DC68510@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v72 = a1;
  v69 = a3;
  v4 = *(a2 + 16);
  sub_24DCB5414();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v65 = sub_24DCB5904();
  MEMORY[0x28223BE20](v65);
  v66 = (&v62 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F0A8, &qword_24DCBA490);
  v63 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v74 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v73 = &v62 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F090, &qword_24DCBA478);
  v75 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v62 - v11;
  v15 = type metadata accessor for _BroadcastSequenceStateMachine.OnNext.ReturnAndResumeProducers(0, v4, v13, v14);
  v16 = *(v15 - 8);
  v70 = v15;
  v71 = v16;
  MEMORY[0x28223BE20](v15);
  v64 = &v62 - v17;
  v20 = type metadata accessor for _BroadcastSequenceStateMachine.OnNext(255, v4, v18, v19);
  v21 = sub_24DCB5414();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v62 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v62 - v26;
  v77 = v4;
  v78 = v3;
  v30 = type metadata accessor for _BroadcastSequenceStateMachine.Subscriptions(0, v4, v28, v29);
  sub_24DC69398(v72, sub_24DC6F720, v76, v30, v20, v27);
  v67 = v22;
  v68 = v21;
  (*(v22 + 16))(v25, v27, v21);
  v31 = (*(*(v20 - 8) + 48))(v25, 1, v20);
  if (v31 == 1)
  {
    v32 = v70;
    v33 = v71;
    v79 = *(v3 + 64);
    MEMORY[0x28223BE20](v31);
    v34 = v72;
    *(&v62 - 2) = v4;
    *(&v62 - 1) = v34;
    type metadata accessor for _BroadcastSequenceStateMachine.Subscriptions.ID(255, v4, v35, v36);
    sub_24DCB50A4();

    swift_getWitnessTable();
    sub_24DCB53A4();

    if (v81)
    {
      v37 = v66;
      (*(*(v4 - 8) + 56))(v66, 1, 1, v4);
    }

    else
    {
      sub_24DCB5064();
      sub_24DC6E294();
      v41 = swift_allocError();
      *v42 = 0;
      v37 = v66;
      *v66 = v41;
    }

    v43 = v69;
    swift_storeEnumTagMultiPayload();
    (*(v67 + 8))(v27, v68);
    sub_24DC65144(v37, MEMORY[0x277D84F90], 0, 0, v4, v43);
    return (*(v33 + 56))(v43, 0, 1, v32);
  }

  else
  {
    v39 = v70;
    v38 = v71;
    if ((*(v71 + 48))(v25, 1, v70) == 1)
    {
      (*(v67 + 8))(v27, v68);
      return (*(v38 + 56))(v69, 1, 1, v39);
    }

    else
    {
      (*(v38 + 32))(v64, v25, v39);
      v44 = v3;
      v45 = *(v3 + 24);
      v46 = *(v45 + 16);
      v47 = MEMORY[0x277D84F90];
      if (v46)
      {
        v66 = v27;
        v72 = v3;
        v80 = MEMORY[0x277D84F90];
        sub_24DC6EEC0(0, v46, 0);
        v48 = v80;
        v49 = *(v63 + 80);
        v65 = v45;
        v50 = v45 + ((v49 + 32) & ~v49);
        v51 = *(v63 + 72);
        v52 = (v75 + 32);
        do
        {
          v53 = v73;
          sub_24DC6F728(v50, v73);
          v54 = v74;
          sub_24DC6F798(v53, v74);
          v55 = *v52;
          (*v52)(v12, v54, v10);
          v80 = v48;
          v57 = *(v48 + 16);
          v56 = *(v48 + 24);
          if (v57 >= v56 >> 1)
          {
            sub_24DC6EEC0((v56 > 1), v57 + 1, 1);
            v48 = v80;
          }

          *(v48 + 16) = v57 + 1;
          v55((v48 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v57), v12, v10);
          v50 += v51;
          --v46;
        }

        while (v46);
        (*(v67 + 8))(v66, v68);
        v58 = v69;
        v39 = v70;
        v44 = v72;
        v47 = MEMORY[0x277D84F90];
      }

      else
      {
        (*(v67 + 8))(v27, v68);
        v48 = MEMORY[0x277D84F90];
        v58 = v69;
      }

      v59 = v64;
      v60 = &v64[*(v39 + 28)];

      sub_24DC57738(*(v60 + 1), v60[16]);
      *v60 = v48;
      *(v60 + 1) = 0;
      v60[16] = 0;

      *(v44 + 24) = v47;
      v61 = v71;
      (*(v71 + 16))(v58, v59, v39);
      (*(v61 + 56))(v58, 0, 1, v39);
      return (*(v61 + 8))(v59, v39);
    }
  }
}

uint64_t sub_24DC68D04(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  sub_24DCB5414();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v7 = sub_24DCB5904();
  v8 = MEMORY[0x28223BE20](v7);
  v10 = (&v34 - v9);
  v11 = *(a4 - 8);
  MEMORY[0x28223BE20](v8);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for _BroadcastSequenceStateMachine.Elements.ElementLookup(0, a4, v14, v15);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v34 - v17;
  v19 = *a2;
  v22 = type metadata accessor for _BroadcastSequenceStateMachine.Elements(0, a4, v20, v21);
  sub_24DC69024(v19, v22, v18, v23, v24);
  v25 = (*(v11 + 48))(v18, 2, a4);
  if (v25)
  {
    v28 = v25;
    if (v25 == 1)
    {
      v29 = 0;
LABEL_8:
      v33 = type metadata accessor for _BroadcastSequenceStateMachine.OnNext.ReturnAndResumeProducers(0, a4, v26, v27);
      (*(*(v33 - 8) + 56))(a1, v28, 1, v33);
      return v29;
    }

    sub_24DC6E294();
    v31 = swift_allocError();
    *v32 = 0;
    *v10 = v31;
    v29 = 1;
    swift_storeEnumTagMultiPayload();
LABEL_7:
    sub_24DC65144(v10, MEMORY[0x277D84F90], 0, 0, a4, a1);
    v28 = 0;
    goto LABEL_8;
  }

  result = (*(v11 + 32))(v13, v18, a4);
  if (!__OFADD__(*a2, 1))
  {
    ++*a2;
    (*(v11 + 16))(v10, v13, a4);
    (*(v11 + 56))(v10, 0, 1, a4);
    swift_storeEnumTagMultiPayload();
    (*(v11 + 8))(v13, a4);
    v29 = 0;
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_24DC69024@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v32 = a3;
  v7 = *(a2 + 16);
  v8 = type metadata accessor for _BroadcastSequenceStateMachine.Elements._IdentifiableElement(0, v7, a4, a5);
  MEMORY[0x28223BE20](v8);
  v10 = &v31 - v9;
  v13 = type metadata accessor for _BroadcastSequenceStateMachine.Elements.ElementLookup(0, v7, v11, v12);
  v31 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v31 - v14;
  v17 = *v5;
  v16 = v5[1];
  v19 = sub_24DC6D47C(*v5, v18, v7, MEMORY[0x277CFB940], MEMORY[0x277D83CD0]);
  if (v20 & 1) != 0 || (v23 = v19, v24 = sub_24DC6D47C(v17, v20, v7, MEMORY[0x277CFB928], MEMORY[0x277D835F0]), (v25))
  {
    type metadata accessor for _BroadcastSequenceStateMachine.Elements.ID(0, v7, v21, v22);
    v33 = v16;
    v34 = a1;
    swift_getWitnessTable();
    if (sub_24DCB4D84())
    {
      v26 = v32;
      v27 = 1;
    }

    else
    {
      v26 = v32;
      v27 = 2;
    }

    return (*(*(v7 - 8) + 56))(v26, v27, 2, v7);
  }

  else
  {
    if (v23 <= a1)
    {
      v29 = v24;
      type metadata accessor for _BroadcastSequenceStateMachine.Elements.ID(0, v7, v21, v22);
      v33 = v29;
      v34 = a1;
      swift_getWitnessTable();
      if (sub_24DCB4D74())
      {
        (*(*(v7 - 8) + 56))(v15, 1, 2, v7);
      }

      else
      {
        result = a1 - v23;
        if (__OFSUB__(a1, v23))
        {
          __break(1u);
          return result;
        }

        sub_24DCB4C84();
        v30 = *(v7 - 8);
        (*(v30 + 32))(v15, v10, v7);
        (*(v30 + 56))(v15, 0, 2, v7);
      }
    }

    else
    {
      (*(*(v7 - 8) + 56))(v15, 2, 2, v7);
    }

    return (*(v31 + 32))(v32, v15, v13);
  }
}

uint64_t sub_24DC69398@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(char *, unint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = v6;
  v24[1] = a3;
  v25 = a2;
  v26 = a6;
  v10 = *(a4 + 16);
  v11 = type metadata accessor for _BroadcastSequenceStateMachine.Subscriptions._Subscriber(0, v10, a3, a4);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v24[0] = v24 - v14;
  v15 = *(a5 - 8);
  MEMORY[0x28223BE20](v13);
  v17 = v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *v7;
  v27 = v10;
  v28 = a5;
  v29 = a1;
  sub_24DCB50A4();

  swift_getWitnessTable();
  sub_24DCB53A4();

  if (v32)
  {
    v18 = 1;
    v19 = v26;
  }

  else
  {
    v20 = v31;
    sub_24DCB4FE4();
    v21 = *v7;
    sub_24DC6E700(v20, *v7, v11);
    if (v25(v17, v21 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v20 + 8))
    {
      v22 = v24[0];
      sub_24DCB5064();
      (*(v12 + 8))(v22, v11);
    }

    v19 = v26;
    (*(v15 + 32))(v26, v17, a5);
    v18 = 0;
  }

  return (*(v15 + 56))(v19, v18, 1, a5);
}

uint64_t sub_24DC69634(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v27 - v13;
  MEMORY[0x28223BE20](v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - v17;
  v19 = sub_24DCB5374();
  if (!v19)
  {
    return sub_24DCB4FF4();
  }

  v41 = v19;
  v45 = sub_24DCB5554();
  v32 = sub_24DCB5564();
  sub_24DCB5534();
  result = sub_24DCB5364();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_24DCB53D4();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_24DCB5544();
      result = sub_24DCB5394();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_24DC69A54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v9 = *(a3 + 16);
  v10 = type metadata accessor for _BroadcastSequenceStateMachine.OnNext.ReturnAndResumeProducers(0, v9, a3, a5);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v45 - v12;
  v16 = type metadata accessor for _BroadcastSequenceStateMachine.OnNext(0, v9, v14, v15);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v45 - v17;
  sub_24DC68510(a2, a3, &v45 - v17);
  if ((*(v11 + 48))(v18, 1, v10) == 1)
  {
    v21 = type metadata accessor for _BroadcastSequenceStateMachine.Subscriptions(0, v9, v19, v20);
    v22 = sub_24DC65CCC(a1, a2, v21);
    sub_24DCB5414();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
    v23 = sub_24DCB5104();
    sub_24DCB5904();
    type metadata accessor for _BroadcastSequenceStateMachine.ProducerContinuations(255, v9, v24, v25);
    sub_24DCB5414();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v27 = TupleTypeMetadata3;
    if (v22)
    {
      v28 = *(*(TupleTypeMetadata3 - 8) + 56);
      v29 = a4;
      v30 = 1;
    }

    else
    {
      v42 = *(TupleTypeMetadata3 + 48);
      v43 = a4 + *(TupleTypeMetadata3 + 64);
      (*(*(v23 - 8) + 16))(a4, a1, v23);
      sub_24DCB5114();
      sub_24DC46150();
      v44 = swift_allocError();
      sub_24DCB4CA4();
      *(a4 + v42) = v44;
      swift_storeEnumTagMultiPayload();
      *v43 = 0;
      *(v43 + 8) = 0;
      *(v43 + 16) = 0;
      v28 = *(*(v27 - 8) + 56);
      v29 = a4;
      v30 = 0;
    }

    return v28(v29, v30, 1, v27);
  }

  else
  {
    (*(v11 + 32))(v13, v18, v10);
    sub_24DCB5414();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
    v31 = sub_24DCB5104();
    v32 = sub_24DCB5904();
    type metadata accessor for _BroadcastSequenceStateMachine.ProducerContinuations(255, v9, v33, v34);
    sub_24DCB5414();
    v35 = swift_getTupleTypeMetadata3();
    v36 = *(v35 + 48);
    v37 = a4 + *(v35 + 64);
    (*(*(v31 - 8) + 16))(a4, a1, v31);
    (*(*(v32 - 8) + 32))(a4 + v36, v13, v32);
    v38 = &v13[*(v10 + 28)];
    v39 = *v38;
    v40 = *(v38 + 1);
    LOBYTE(v38) = v38[16];
    *v37 = v39;
    *(v37 + 8) = v40;
    *(v37 + 16) = v38;
    return (*(*(v35 - 8) + 56))(a4, 0, 1, v35);
  }
}

uint64_t sub_24DC69EB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a1;
  v30 = a3;
  v3 = *(a2 + 16);
  v4 = sub_24DCB5414();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v29 = v4;
  v5 = sub_24DCB5104();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v27 - v7;
  v9 = sub_24DCB5414();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v27 - v14;
  v18 = type metadata accessor for _BroadcastSequenceStateMachine.Subscriptions(0, v3, v16, v17);
  sub_24DC655E0(v15, v28, v18, v19);
  (*(v10 + 16))(v13, v15, v9);
  if ((*(v6 + 48))(v13, 1, v5) == 1)
  {
    v20 = *(v10 + 8);
    v20(v15, v9);
    v20(v13, v9);
    sub_24DCB5904();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    return (*(*(TupleTypeMetadata2 - 8) + 56))(v30, 1, 1, TupleTypeMetadata2);
  }

  else
  {
    (*(v6 + 32))(v8, v13, v5);
    v29 = sub_24DCB5904();
    v23 = swift_getTupleTypeMetadata2();
    v24 = *(v23 + 48);
    v25 = v30;
    (*(v6 + 16))(v30, v8, v5);
    sub_24DCB5114();
    sub_24DC46150();
    v26 = swift_allocError();
    sub_24DCB4CA4();
    (*(v6 + 8))(v8, v5);
    (*(v10 + 8))(v15, v9);
    *(v25 + v24) = v26;
    swift_storeEnumTagMultiPayload();
    return (*(*(v23 - 8) + 56))(v25, 0, 1, v23);
  }
}

uint64_t sub_24DC6A274@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F0A8, &qword_24DCBA490);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v33 - v11;
  if (sub_24DC6756C(*v4, v13, *(a3 + 16), v14) < v4[2])
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F098, &qword_24DCBA480);
    v16 = a4 + *(v15 + 48);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F090, &qword_24DCBA478);
    (*(*(v17 - 8) + 16))(a4, a1, v17);
    *v16 = 0;
    *(v16 + 8) = 0;
LABEL_13:
    v32 = *(*(v15 - 8) + 56);

    return v32(a4, 0, 1, v15);
  }

  v18 = v4[4];
  v19 = *(v18 + 16);
  if (v19)
  {
    v20 = 0;
    v21 = v18 + 32;
    while (*(v21 + 8 * v20) != a2)
    {
      if (v19 == ++v20)
      {
        goto LABEL_7;
      }
    }

    sub_24DC64F78(v20);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F098, &qword_24DCBA480);
    v29 = a4 + *(v15 + 48);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F090, &qword_24DCBA478);
    (*(*(v30 - 8) + 16))(a4, a1, v30);
    sub_24DCB5114();
    sub_24DC46150();
    v31 = swift_allocError();
    sub_24DCB4CA4();
    *v29 = v31;
    *(v29 + 8) = 1;
    goto LABEL_13;
  }

LABEL_7:
  v22 = *(v9 + 48);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F090, &qword_24DCBA478);
  (*(*(v23 - 8) + 16))(v12, a1, v23);
  *&v12[v22] = a2;
  v24 = v4[3];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v24 = sub_24DC6E3E4(0, v24[2] + 1, 1, v24);
  }

  v26 = v24[2];
  v25 = v24[3];
  if (v26 >= v25 >> 1)
  {
    v24 = sub_24DC6E3E4((v25 > 1), v26 + 1, 1, v24);
  }

  v24[2] = v26 + 1;
  sub_24DC6F798(v12, v24 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v26);
  v4[3] = v24;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F098, &qword_24DCBA480);
  return (*(*(v27 - 8) + 56))(a4, 1, 1, v27);
}

uint64_t sub_24DC6A628@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v32 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F090, &qword_24DCBA478);
  v28 = *(v3 - 8);
  v29 = v3;
  MEMORY[0x28223BE20](v3);
  v27 = &v27 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F0A8, &qword_24DCBA490);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v27 - v7;
  v30 = v2;
  v11 = *(v2 + 24);
  v9 = v2 + 24;
  v10 = v11;
  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = 0;
    v14 = &qword_24DCBA490;
    while (v13 < *(v10 + 16))
    {
      sub_24DC6F728(v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v13, v8);
      v15 = *&v8[*(v5 + 48)];
      sub_24DC3DFD4(v8, &qword_27F19F0A8, &qword_24DCBA490);
      if (v15 == v32)
      {
        sub_24DC65000(v13, v8);
        v21 = v27;
        v20 = v28;
        v22 = v29;
        (*(v28 + 32))(v27, v8, v29);
        v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F098, &qword_24DCBA480);
        v24 = v31;
        v25 = v31 + *(v23 + 48);
        (*(v20 + 16))(v31, v21, v22);
        sub_24DCB5114();
        sub_24DC46150();
        v26 = swift_allocError();
        sub_24DCB4CA4();
        (*(v20 + 8))(v21, v22);
        *v25 = v26;
        *(v25 + 8) = 1;
        return (*(*(v23 - 8) + 56))(v24, 0, 1, v23);
      }

      if (v12 == ++v13)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
    goto LABEL_12;
  }

LABEL_6:
  v9 = v30;
  v14 = *(v30 + 32);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_12:
    v14 = sub_24DC6E5D4(0, *(v14 + 2) + 1, 1, v14);
  }

  v17 = *(v14 + 2);
  v16 = *(v14 + 3);
  if (v17 >= v16 >> 1)
  {
    v14 = sub_24DC6E5D4((v16 > 1), v17 + 1, 1, v14);
  }

  *(v14 + 2) = v17 + 1;
  *&v14[8 * v17 + 32] = v32;
  *(v9 + 32) = v14;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F098, &qword_24DCBA480);
  return (*(*(v18 - 8) + 56))(v31, 1, 1, v18);
}

uint64_t sub_24DC6A9B4@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v70 = a2;
  v69 = a1;
  v7 = *(a3 + 16);
  v8 = sub_24DCB5414();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v9 = sub_24DCB5904();
  MEMORY[0x28223BE20](v9 - 8);
  v71 = &v62 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F0A8, &qword_24DCBA490);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v65 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v78 = (&v62 - v15);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F090, &qword_24DCBA478);
  v16 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v18 = &v62 - v17;
  v72 = v8;
  v19 = sub_24DCB5104();
  v21 = type metadata accessor for _BroadcastSequenceStateMachine._OneOrMany(0, v7, v19, v20);
  v67 = *(v21 - 8);
  v68 = v21;
  v22 = MEMORY[0x28223BE20](v21);
  v75 = &v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = (&v62 - v24);
  v73 = v7;
  v28 = type metadata accessor for _BroadcastSequenceStateMachine.Subscriptions(0, v7, v26, v27);
  v66 = v25;
  sub_24DC641FC(v28, v25);
  v29 = *(v4 + 24);
  v30 = *(v29 + 16);
  v31 = MEMORY[0x277D84F90];
  v74 = a4;
  if (v30)
  {
    v63 = v5;
    v79 = MEMORY[0x277D84F90];
    sub_24DC6EEC0(0, v30, 0);
    v32 = v79;
    v33 = *(v12 + 80);
    v62 = v29;
    v34 = v29 + ((v33 + 32) & ~v33);
    v35 = *(v12 + 72);
    v36 = v16;
    v37 = (v16 + 32);
    v39 = v64;
    v38 = v65;
    v76 = v36;
    v77 = v35;
    do
    {
      v40 = v78;
      sub_24DC6F728(v34, v78);
      sub_24DC6F798(v40, v38);
      v41 = *v37;
      (*v37)(v18, v38, v39);
      v79 = v32;
      v42 = v37;
      v44 = *(v32 + 16);
      v43 = *(v32 + 24);
      if (v44 >= v43 >> 1)
      {
        sub_24DC6EEC0((v43 > 1), v44 + 1, 1);
        v38 = v65;
        v32 = v79;
      }

      *(v32 + 16) = v44 + 1;
      v41((v32 + ((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * v44), v18, v39);
      v34 += v77;
      --v30;
      v37 = v42;
    }

    while (v30);
    a4 = v74;
    v5 = v63;
    v31 = MEMORY[0x277D84F90];
  }

  else
  {
    v32 = MEMORY[0x277D84F90];
  }

  *(v5 + 24) = v31;
  v45 = v73;
  type metadata accessor for _BroadcastSequenceStateMachine.ConsumerContinuations(255, v73, v46, v47);
  type metadata accessor for _BroadcastSequenceStateMachine.ProducerContinuations(255, v45, v48, v49);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v51 = a4 + *(TupleTypeMetadata2 + 48);
  v52 = v66;
  v53 = v67;
  v54 = v68;
  v55 = (*(v67 + 16))(v75, v66, v68);
  v78 = &v62;
  v79 = v69;
  v80 = v70 & 1;
  v56 = MEMORY[0x28223BE20](v55);
  *(&v62 - 2) = v45;
  MEMORY[0x28223BE20](v56);
  *(&v62 - 4) = v45;
  *(&v62 - 3) = sub_24DC727D4;
  *(&v62 - 2) = v57;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F0A0, &qword_24DCBA488);
  v59 = v71;
  sub_24DC64B5C(sub_24DC72744, v58, v71);
  (*(v53 + 8))(v52, v54);
  v60 = v74;
  sub_24DC63BD8(v75, v59, v45, v74);
  *v51 = v32;
  *(v51 + 8) = 0;
  *(v51 + 16) = 0;
  return (*(*(TupleTypeMetadata2 - 8) + 56))(v60, 0, 1, TupleTypeMetadata2);
}

uint64_t sub_24DC6AF98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v2 = *(a1 + 16);
  sub_24DCB5414();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v30 = sub_24DCB5904();
  MEMORY[0x28223BE20](v30);
  v4 = (&v29 - v3);
  v5 = sub_24DCB5104();
  v7 = type metadata accessor for _BroadcastSequenceStateMachine._OneOrMany(0, v2, v5, v6);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = (&v29 - v12);
  v16 = type metadata accessor for _BroadcastSequenceStateMachine.Subscriptions(0, v2, v14, v15);
  sub_24DC641FC(v16, v13);
  (*(v8 + 16))(v11, v13, v7);
  sub_24DC6E294();
  v17 = swift_allocError();
  *v18 = 0;
  *v4 = v17;
  swift_storeEnumTagMultiPayload();
  v19 = v31;
  sub_24DC63BD8(v11, v4, v2, v31);
  v32 = sub_24DC663FC(v16, v20, v21, v22);
  type metadata accessor for _BroadcastSequenceStateMachine.Subscriptions.ID(255, v2, v23, v24);
  sub_24DCB50A4();
  swift_getWitnessTable();
  sub_24DCB5044();
  (*(v8 + 8))(v13, v7);
  v27 = type metadata accessor for _BroadcastSequenceStateMachine.ConsumerContinuations(0, v2, v25, v26);
  return (*(*(v27 - 8) + 56))(v19, 0, 1, v27);
}

uint64_t sub_24DC6B268@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  LODWORD(v72) = a1;
  v71 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F0A8, &qword_24DCBA490);
  v61 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v63 = v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v73 = v58 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F090, &qword_24DCBA478);
  v74 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v62 = v58 - v10;
  v11 = *(a2 + 16);
  sub_24DCB5414();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v68 = sub_24DCB5904();
  MEMORY[0x28223BE20](v68);
  v13 = (v58 - v12);
  v16 = type metadata accessor for _BroadcastSequenceStateMachine.ConsumerContinuations(0, v11, v14, v15);
  v69 = *(v16 - 8);
  v70 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = v58 - v17;
  v19 = sub_24DCB5104();
  v21 = type metadata accessor for _BroadcastSequenceStateMachine._OneOrMany(0, v11, v19, v20);
  v22 = *(v21 - 8);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = v58 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = (v58 - v26);
  v30 = type metadata accessor for _BroadcastSequenceStateMachine.Subscriptions(0, v11, v28, v29);
  sub_24DC641FC(v30, v27);
  v65 = v27;
  v66 = v22;
  v31 = *(v22 + 16);
  v67 = v21;
  v31(v25, v27, v21);
  v32 = sub_24DC6E294();
  v33 = swift_allocError();
  v64 = v72 & 1;
  *v34 = v72 & 1;
  *v13 = v33;
  swift_storeEnumTagMultiPayload();
  v68 = v18;
  sub_24DC63BD8(v25, v13, v11, v18);
  v35 = *(v3 + 24);
  v36 = *(v35 + 16);
  v37 = MEMORY[0x277D84F90];
  if (v36)
  {
    v58[1] = v32;
    v59 = v11;
    v60 = v3;
    v75 = MEMORY[0x277D84F90];
    sub_24DC6EEC0(0, v36, 0);
    v38 = v62;
    v39 = *(v61 + 80);
    v58[0] = v35;
    v40 = v35 + ((v39 + 32) & ~v39);
    v72 = *(v61 + 72);
    v41 = v75;
    v42 = (v74 + 32);
    v43 = v63;
    do
    {
      v44 = v73;
      sub_24DC6F728(v40, v73);
      sub_24DC6F798(v44, v43);
      v45 = *v42;
      (*v42)(v38, v43, v9);
      v75 = v41;
      v46 = v9;
      v48 = *(v41 + 16);
      v47 = *(v41 + 24);
      if (v48 >= v47 >> 1)
      {
        sub_24DC6EEC0((v47 > 1), v48 + 1, 1);
        v43 = v63;
        v41 = v75;
      }

      *(v41 + 16) = v48 + 1;
      v45((v41 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v48), v38, v46);
      v40 += v72;
      --v36;
      v9 = v46;
    }

    while (v36);
    v49 = v71;
    v11 = v59;
    v3 = v60;
    v37 = MEMORY[0x277D84F90];
  }

  else
  {
    v41 = MEMORY[0x277D84F90];
    v49 = v71;
  }

  v50 = swift_allocError();
  *v51 = v64;
  (*(v66 + 8))(v65, v67);

  *(v3 + 24) = v37;
  type metadata accessor for _BroadcastSequenceStateMachine.ProducerContinuations(255, v11, v52, v53);
  v54 = v70;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v56 = v49 + *(TupleTypeMetadata2 + 48);
  (*(v69 + 32))(v49, v68, v54);
  *v56 = v41;
  *(v56 + 8) = v50;
  *(v56 + 16) = 1;
  return (*(*(TupleTypeMetadata2 - 8) + 56))(v49, 0, 1, TupleTypeMetadata2);
}

uint64_t sub_24DC6B850(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if ((sub_24DC6D664(v2[6], a2, v3, type metadata accessor for _BroadcastSequenceStateMachine.Subscriptions._Subscriber, MEMORY[0x277D83940], MEMORY[0x277D83988]) & 1) != 0 && (sub_24DC6D47C(*v2, v4, v3, MEMORY[0x277CFB940], MEMORY[0x277D83CD0]), (v7 & 1) == 0))
  {
    type metadata accessor for _BroadcastSequenceStateMachine.Elements.ID(0, v3, v5, v6);
    swift_getWitnessTable();
    v8 = sub_24DCB5454();
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_24DC6B97C(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_24DC6B9B4()
{
  v1 = *(v0 + 40);
  sub_24DC6F0D0(v1, *(v0 + 48));
  return v1;
}

double sub_24DC6B9EC@<D0>(uint64_t a1@<X1>, char a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  sub_24DC6F294(a1, a2 & 1, a3, v7, a3);
  v5 = v7[1];
  *a4 = v7[0];
  *(a4 + 16) = v5;
  result = *&v8;
  *(a4 + 32) = v8;
  *(a4 + 48) = v9;
  return result;
}

uint64_t sub_24DC6BA44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, char a5@<W5>, uint64_t a6@<X6>, uint64_t a7@<X8>, uint64_t a8@<X3>)
{
  v14 = sub_24DC66AB0(a6, a2, a3, a8);

  type metadata accessor for _BroadcastSequenceStateMachine.Subscriptions.ID(0, a6, v15, v16);
  result = sub_24DCB4FF4();
  *a7 = v14;
  *(a7 + 8) = 0;
  *(a7 + 16) = a1;
  *(a7 + 24) = a2;
  *(a7 + 32) = result;
  *(a7 + 40) = a4;
  *(a7 + 48) = a5 & 1;
  return result;
}

double sub_24DC6BAD4@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_24DC6F324(a1, a2, a3 & 1, v13);
  v10 = type metadata accessor for _BroadcastSequenceStateMachine.State.Streaming(0, a4, v8, v9);
  (*(*(v10 - 8) + 8))(a1, v10);
  v11 = v13[1];
  *a5 = v13[0];
  *(a5 + 16) = v11;
  result = *&v14;
  *(a5 + 32) = v14;
  *(a5 + 48) = v15;
  return result;
}

uint64_t sub_24DC6BB70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 16);
  sub_24DCB5414();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v37 = sub_24DCB5904();
  MEMORY[0x28223BE20](v37);
  v38 = (&v35 - v7);
  v10 = type metadata accessor for _BroadcastSequenceStateMachine.OnNext(255, v6, v8, v9);
  v11 = sub_24DCB5414();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v35 - v16;
  v40 = v6;
  v41 = v3;
  v20 = type metadata accessor for _BroadcastSequenceStateMachine.Subscriptions(0, v6, v18, v19);
  sub_24DC69398(a1, sub_24DC6F84C, v39, v20, v10, v17);
  (*(v12 + 16))(v15, v17, v11);
  v21 = (*(*(v10 - 8) + 48))(v15, 1, v10);
  if (v21 == 1)
  {
    v35 = &v35;
    v36 = a3;
    v42 = *(v3 + 32);
    MEMORY[0x28223BE20](v21);
    type metadata accessor for _BroadcastSequenceStateMachine.Subscriptions.ID(255, v6, v24, v25);
    sub_24DCB50A4();

    swift_getWitnessTable();
    sub_24DCB53A4();

    if (v43)
    {
      v26 = v38;
      (*(*(v6 - 8) + 56))(v38, 1, 1, v6);
    }

    else
    {
      sub_24DCB5064();
      sub_24DC6E294();
      v31 = swift_allocError();
      *v32 = 0;
      v26 = v38;
      *v38 = v31;
    }

    swift_storeEnumTagMultiPayload();
    (*(v12 + 8))(v17, v11);
    a3 = v36;
    sub_24DC65144(v26, MEMORY[0x277D84F90], 0, 0, v6, v36);
    goto LABEL_8;
  }

  v27 = type metadata accessor for _BroadcastSequenceStateMachine.OnNext.ReturnAndResumeProducers(0, v6, v22, v23);
  v28 = *(v27 - 8);
  if ((*(v28 + 48))(v15, 1, v27) != 1)
  {
    (*(v12 + 8))(v17, v11);
    (*(v28 + 32))(a3, v15, v27);
LABEL_8:
    v33 = type metadata accessor for _BroadcastSequenceStateMachine.OnNext.ReturnAndResumeProducers(0, v6, v29, v30);
    return (*(*(v33 - 8) + 56))(a3, 0, 1, v33);
  }

  result = sub_24DCB55E4();
  __break(1u);
  return result;
}

uint64_t sub_24DC6C060(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v40 = a1;
  sub_24DCB5414();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v7 = sub_24DCB5904();
  v8 = MEMORY[0x28223BE20](v7);
  v10 = (&v39 - v9);
  v11 = *(a4 - 8);
  MEMORY[0x28223BE20](v8);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for _BroadcastSequenceStateMachine.Elements.ElementLookup(0, a4, v14, v15);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v39 - v17;
  v19 = *a2;
  v22 = type metadata accessor for _BroadcastSequenceStateMachine.Elements(0, a4, v20, v21);
  sub_24DC69024(v19, v22, v18, v23, v24);
  v25 = (*(v11 + 48))(v18, 2, a4);
  if (v25)
  {
    if (v25 == 1)
    {
      v27 = *(a3 + 48);
      v41 = *(a3 + 40);
      v26 = v41;
      v42 = v27;
      v28 = MEMORY[0x28223BE20](v25);
      *(&v39 - 2) = a4;
      MEMORY[0x28223BE20](v28);
      *(&v39 - 4) = a4;
      *(&v39 - 3) = sub_24DC727D4;
      *(&v39 - 2) = v29;
      sub_24DC6F0D0(v26, v27);
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F0A0, &qword_24DCBA488);
      sub_24DC64B5C(sub_24DC72744, v30, v10);
      sub_24DC57738(v26, v27);
      v31 = 1;
    }

    else
    {
      sub_24DC6E294();
      v33 = swift_allocError();
      *v34 = 0;
      *v10 = v33;
      v31 = 1;
      swift_storeEnumTagMultiPayload();
    }

    goto LABEL_7;
  }

  result = (*(v11 + 32))(v13, v18, a4);
  if (!__OFADD__(*a2, 1))
  {
    ++*a2;
    (*(v11 + 16))(v10, v13, a4);
    (*(v11 + 56))(v10, 0, 1, a4);
    swift_storeEnumTagMultiPayload();
    (*(v11 + 8))(v13, a4);
    v31 = 0;
LABEL_7:
    v35 = v40;
    sub_24DC65144(v10, MEMORY[0x277D84F90], 0, 0, a4, v40);
    v38 = type metadata accessor for _BroadcastSequenceStateMachine.OnNext.ReturnAndResumeProducers(0, a4, v36, v37);
    (*(*(v38 - 8) + 56))(v35, 0, 1, v38);
    return v31;
  }

  __break(1u);
  return result;
}

uint64_t sub_24DC6C47C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v2 = *(a1 + 16);
  sub_24DCB5414();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v30 = sub_24DCB5904();
  MEMORY[0x28223BE20](v30);
  v4 = (&v29 - v3);
  v5 = sub_24DCB5104();
  v7 = type metadata accessor for _BroadcastSequenceStateMachine._OneOrMany(0, v2, v5, v6);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = (&v29 - v12);
  v16 = type metadata accessor for _BroadcastSequenceStateMachine.Subscriptions(0, v2, v14, v15);
  sub_24DC641FC(v16, v13);
  (*(v8 + 16))(v11, v13, v7);
  sub_24DC6E294();
  v17 = swift_allocError();
  *v18 = 0;
  *v4 = v17;
  swift_storeEnumTagMultiPayload();
  v19 = v31;
  sub_24DC63BD8(v11, v4, v2, v31);
  v32 = sub_24DC663FC(v16, v20, v21, v22);
  type metadata accessor for _BroadcastSequenceStateMachine.Subscriptions.ID(255, v2, v23, v24);
  sub_24DCB50A4();
  swift_getWitnessTable();
  sub_24DCB5044();
  (*(v8 + 8))(v13, v7);
  v27 = type metadata accessor for _BroadcastSequenceStateMachine.ConsumerContinuations(0, v2, v25, v26);
  return (*(*(v27 - 8) + 56))(v19, 0, 1, v27);
}

uint64_t sub_24DC6C74C@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a3;
  v4 = *(a2 + 16);
  sub_24DCB5414();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v36 = sub_24DCB5904();
  MEMORY[0x28223BE20](v36);
  v6 = (&v36 - v5);
  v9 = type metadata accessor for _BroadcastSequenceStateMachine.ConsumerContinuations(0, v4, v7, v8);
  v10 = *(v9 - 8);
  v37 = v9;
  v38 = v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v36 - v11;
  v13 = sub_24DCB5104();
  v15 = type metadata accessor for _BroadcastSequenceStateMachine._OneOrMany(0, v4, v13, v14);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = (&v36 - v20);
  v24 = type metadata accessor for _BroadcastSequenceStateMachine.Subscriptions(0, v4, v22, v23);
  sub_24DC641FC(v24, v21);
  (*(v16 + 16))(v19, v21, v15);
  sub_24DC6E294();
  v25 = swift_allocError();
  a1 &= 1u;
  *v26 = a1;
  *v6 = v25;
  swift_storeEnumTagMultiPayload();
  sub_24DC63BD8(v19, v6, v4, v12);
  v27 = swift_allocError();
  *v28 = a1;
  (*(v16 + 8))(v21, v15);
  type metadata accessor for _BroadcastSequenceStateMachine.ProducerContinuations(255, v4, v29, v30);
  v31 = v37;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v33 = v39;
  v34 = v39 + *(TupleTypeMetadata2 + 48);
  (*(v38 + 32))(v39, v12, v31);
  *v34 = MEMORY[0x277D84F90];
  *(v34 + 8) = v27;
  *(v34 + 16) = 1;
  return (*(*(TupleTypeMetadata2 - 8) + 56))(v33, 0, 1, TupleTypeMetadata2);
}

uint64_t sub_24DC6CAA8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  sub_24DC6D47C(*v2, a2, v3, MEMORY[0x277CFB940], MEMORY[0x277D83CD0]);
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    type metadata accessor for _BroadcastSequenceStateMachine.Elements.ID(0, v3, v4, v5);
    swift_getWitnessTable();
    v7 = sub_24DCB5454();
  }

  return v7 & 1;
}

uint64_t sub_24DC6CB60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a1;
  v30 = a3;
  v3 = *(a2 + 16);
  v4 = sub_24DCB5414();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v29 = v4;
  v5 = sub_24DCB5104();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v27 - v7;
  v9 = sub_24DCB5414();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v27 - v14;
  v18 = type metadata accessor for _BroadcastSequenceStateMachine.Subscriptions(0, v3, v16, v17);
  sub_24DC655E0(v15, v28, v18, v19);
  (*(v10 + 16))(v13, v15, v9);
  if ((*(v6 + 48))(v13, 1, v5) == 1)
  {
    v20 = *(v10 + 8);
    v20(v15, v9);
    v20(v13, v9);
    sub_24DCB5904();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    return (*(*(TupleTypeMetadata2 - 8) + 56))(v30, 1, 1, TupleTypeMetadata2);
  }

  else
  {
    (*(v6 + 32))(v8, v13, v5);
    v29 = sub_24DCB5904();
    v23 = swift_getTupleTypeMetadata2();
    v24 = *(v23 + 48);
    v25 = v30;
    (*(v6 + 16))(v30, v8, v5);
    sub_24DCB5114();
    sub_24DC46150();
    v26 = swift_allocError();
    sub_24DCB4CA4();
    (*(v6 + 8))(v8, v5);
    (*(v10 + 8))(v15, v9);
    *(v25 + v24) = v26;
    swift_storeEnumTagMultiPayload();
    return (*(*(v23 - 8) + 56))(v25, 0, 1, v23);
  }
}

uint64_t sub_24DC6CF1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  v6 = type metadata accessor for _BroadcastSequenceStateMachine.State(0, *(a1 + 16), a3, a4);
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v4, v6);
}

__n128 sub_24DC6CF88(uint64_t a1, uint64_t a2)
{
  v4 = v2[3];
  v8[2] = v2[2];
  v9[0] = v4;
  *(v9 + 9) = *(v2 + 57);
  v5 = v2[1];
  v8[0] = *v2;
  v8[1] = v5;
  (*(*(a2 - 8) + 8))(v8);
  v6 = *(a1 + 48);
  v2[2] = *(a1 + 32);
  v2[3] = v6;
  *(v2 + 57) = *(a1 + 57);
  result = *(a1 + 16);
  *v2 = *a1;
  v2[1] = result;
  return result;
}

uint64_t sub_24DC6D00C@<X0>(uint64_t a2@<X8>)
{
  sub_24DCB5414();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v4 = sub_24DCB5904();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t sub_24DC6D0B0(uint64_t a1, uint64_t a2)
{
  sub_24DCB5414();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v4 = sub_24DCB5904();
  v5 = *(*(v4 - 8) + 40);

  return v5(v2, a1, v4);
}

uint64_t sub_24DC6D154(uint64_t a1)
{
  v2 = (v1 + *(a1 + 28));
  v3 = *v2;
  v4 = v2[1];
  v5 = *(v2 + 16);

  sub_24DC6F0D0(v4, v5);
  return v3;
}

void sub_24DC6D1A8(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v8 = v4 + *(a4 + 28);

  sub_24DC57738(*(v8 + 8), *(v8 + 16));
  *v8 = a1;
  *(v8 + 8) = a2;
  *(v8 + 16) = a3 & 1;
}

uint64_t sub_24DC6D200(uint64_t a1, uint64_t a2)
{
  v2 = __OFSUB__(a1, a2);
  result = a1 - a2;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24DC6D210(uint64_t a1, uint64_t a2)
{
  v2 = __OFADD__(a2, a1);
  result = a2 + a1;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24DC6D25C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_24DC6D200(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_24DC6D28C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_24DC6D210(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_24DC6D2DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_24DCB5454();
}

uint64_t sub_24DC6D398@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  result = type metadata accessor for _BroadcastSequenceStateMachine.Elements._IdentifiableElement(0, a3, v7, v8);
  *(a4 + *(result + 28)) = a2;
  return result;
}

uint64_t sub_24DC6D40C(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_24DC6D438()
{
  result = *(v0 + 8);
  if (__OFADD__(result, 1))
  {
    __break(1u);
  }

  else
  {
    *(v0 + 8) = result + 1;
  }

  return result;
}

uint64_t sub_24DC6D47C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  v7 = type metadata accessor for _BroadcastSequenceStateMachine.Elements._IdentifiableElement(255, a3, a3, a4);
  v8 = sub_24DCB5414();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v17 - v10;
  v17[1] = a1;
  v12 = sub_24DCB4C74();
  WitnessTable = swift_getWitnessTable();
  a5(v12, WitnessTable);
  v14 = *(v7 - 8);
  if ((*(v14 + 48))(v11, 1, v7) == 1)
  {
    (*(v9 + 8))(v11, v8);
    return 0;
  }

  else
  {
    v15 = *&v11[*(v7 + 28)];
    (*(v14 + 8))(v11, v7);
  }

  return v15;
}

uint64_t sub_24DC6D664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t), uint64_t (*a5)(void, uint64_t), uint64_t a6)
{
  v7 = a4(255, a3);
  a5(0, v7);
  swift_getWitnessTable();
  return sub_24DCB53B4() & 1;
}

void sub_24DC6D6E0()
{
  if (__OFADD__(*v0, 1))
  {
    __break(1u);
  }

  else
  {
    ++*v0;
  }
}

uint64_t sub_24DC6D6F8(uint64_t a1)
{
  v1 = __OFADD__(a1, 1);
  result = a1 + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24DC6D740(uint64_t a1)
{
  sub_24DCB58A4();
  MEMORY[0x253035FF0](a1);
  return sub_24DCB58F4();
}

uint64_t sub_24DC6D7C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, void))
{
  sub_24DCB58A4();
  a4(v7, *v4);
  return sub_24DCB58F4();
}

uint64_t sub_24DC6D828@<X0>(uint64_t a2@<X8>)
{
  sub_24DCB5414();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v3 = sub_24DCB5104();
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

uint64_t sub_24DC6D8C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  sub_24DCB5414();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  sub_24DCB5104();
  v5 = sub_24DCB5414();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_24DC6D97C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  sub_24DCB5414();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  sub_24DCB5104();
  v5 = sub_24DCB5414();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_24DC6DA54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v9 = *(type metadata accessor for _BroadcastSequenceStateMachine.Subscriptions._Subscriber(0, a4, a3, a4) + 32);
  sub_24DCB5414();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v10 = sub_24DCB5104();
  (*(*(v10 - 8) + 56))(&a5[v9], 1, 1, v10);
  *a5 = a1;
  *(a5 + 1) = a2;
  v11 = sub_24DCB5414();
  v12 = *(*(v11 - 8) + 40);

  return v12(&a5[v9], a3, v11);
}

uint64_t sub_24DC6DB6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24DCB5414();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v5 = sub_24DCB5104();
  v6 = sub_24DCB5414();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - v8;
  v10 = *(a1 + 32);
  (*(v7 + 16))(&v17 - v8, v2 + v10, v6);
  v11 = *(v5 - 8);
  if ((*(v11 + 48))(v9, 1, v5) == 1)
  {
    (*(v7 + 8))(v9, v6);
    return (*(v11 + 56))(a2, 1, 1, v5);
  }

  else
  {
    (*(v11 + 32))(a2, v9, v5);
    (*(v7 + 8))(v2 + v10, v6);
    v13 = *(v11 + 56);
    result = v13(v2 + v10, 1, 1, v5);
    v14 = *(v2 + 8);
    v15 = __OFADD__(v14, 1);
    v16 = v14 + 1;
    if (v15)
    {
      __break(1u);
    }

    else
    {
      *(v2 + 8) = v16;
      return v13(a2, 0, 1, v5);
    }
  }

  return result;
}