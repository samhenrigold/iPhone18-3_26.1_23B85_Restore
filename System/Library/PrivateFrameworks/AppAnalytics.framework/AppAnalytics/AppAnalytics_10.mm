uint64_t sub_1B6A6B264@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = a1;
  v18[0] = a4;
  v18[1] = a5;
  v18[2] = a6;
  v18[3] = a7;
  v18[4] = a8;
  v18[5] = a10;
  v18[6] = a11;
  v14 = type metadata accessor for CombineLatestStateMachine.State.Upstream(0, v18);
  v15 = *(v14 + 76);
  v16 = sub_1B6AB9B30();
  result = (*(*(v16 - 8) + 32))(&a9[v15], a2, v16);
  a9[*(v14 + 80)] = a3;
  return result;
}

uint64_t sub_1B6A6B31C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B6A6B3A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B6A6B3E8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFF);
  }

  v3 = (((*(a1 + 8) >> 49) >> 14) | (2 * ((*(a1 + 8) >> 49) & 0x3800 | ((*(a1 + 8) & 7) << 8) | HIBYTE(*a1) & 0xF0 | *a1 & 0xF))) ^ 0x7FFF;
  if (v3 >= 0x7FFE)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1B6A6B460(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFE)
  {
    *result = a2 - 0x7FFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3FFF | ((-a2 & 0x7FFF) << 14);
      *result = (v3 | (v3 << 56)) & 0xF00000000000000FLL;
      *(result + 8) = ((v3 >> 8) | (v3 << 49)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_1B6A6B4DC(void *result, uint64_t a2)
{
  v2 = result[1] & 0xFFFFFFFFFFFFFF8 | (a2 << 63);
  *result &= 0xFFFFFFFFFFFFFF0uLL;
  result[1] = v2;
  return result;
}

uint64_t sub_1B6A6B50C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B6A6B560(void *a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  sub_1B6AB9B30();
  swift_getTupleTypeMetadata3();
  sub_1B6AB9B30();
  sub_1B69AC828();
  v2 = sub_1B6ABA280();
  v4 = v3;
  sub_1B6AB9740();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  if (v6 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    if (v4 > 0x3F)
    {
      return v2;
    }

    else
    {
      swift_getTupleTypeLayout2();
      TupleTypeMetadata2 = 0;
      *(*(a1 - 1) + 84) = v8;
    }
  }

  return TupleTypeMetadata2;
}

uint64_t sub_1B6A6B734(unsigned __int16 *a1, int a2, void *a3)
{
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = *(v4 + 84);
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  if (*(v6 + 84) > v5)
  {
    v5 = *(v6 + 84);
  }

  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 80);
  v9 = *(v7 + 84);
  v10 = v9 - 1;
  if (!v9)
  {
    v10 = 0;
  }

  v11 = (v10 | v5) == 0;
  v12 = *(v7 + 64);
  if (!v9)
  {
    ++v11;
  }

  v13 = v11 + v12 + ((((*(v4 + 64) + *(v6 + 80)) & ~*(v6 + 80)) + *(v6 + 64) + v8) & ~v8);
  if (v13 <= 8)
  {
    v13 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if ((a2 & 0x80000000) == 0)
  {
    goto LABEL_11;
  }

  v16 = ((*(v6 + 80) | *(v4 + 80)) | v8) & 0xF8 | 7u;
  v17 = v13 + ((v16 + 8) & ~v16) + 1;
  v18 = 8 * v17;
  if (v17 > 3)
  {
    goto LABEL_16;
  }

  v20 = (a2 - 0x7FFFFFFF + ~(-1 << v18)) >> v18;
  if (v20 > 0xFFFE)
  {
    v19 = *(a1 + v17);
    if (!v19)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

  if (v20 <= 0xFE)
  {
    if (!v20)
    {
      goto LABEL_11;
    }

LABEL_16:
    v19 = *(a1 + v17);
    if (!*(a1 + v17))
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

  v19 = *(a1 + v17);
  if (!*(a1 + v17))
  {
LABEL_11:
    v14 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

LABEL_25:
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

  return (v17 | v21) ^ 0x80000000;
}

void sub_1B6A6BA24(_BYTE *a1, int a2, int a3, void *a4)
{
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = *(v4 + 84);
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  if (*(v6 + 84) > v5)
  {
    v5 = *(v6 + 84);
  }

  v7 = 0;
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = *(v8 + 80);
  v10 = *(v8 + 84);
  v11 = v10 - 1;
  if (!v10)
  {
    v11 = 0;
  }

  v12 = (v11 | v5) == 0;
  v13 = v10 == 0;
  v14 = (((*(v4 + 64) + *(v6 + 80)) & ~*(v6 + 80)) + *(v6 + 64) + *(v8 + 80)) & ~*(v8 + 80);
  v15 = *(v8 + 64);
  v16 = ((*(v6 + 80) | *(v4 + 80)) | v9) & 0xF8 | 7u;
  v17 = (v16 + 8) & ~v16;
  if (v13)
  {
    ++v12;
  }

  v18 = v12 + v15 + v14;
  if (v18 <= 8)
  {
    v18 = 8;
  }

  v19 = v18 + v17 + 1;
  if (a3 < 0)
  {
    if (v19 <= 3)
    {
      v21 = (a3 - 0x7FFFFFFF + ~(-1 << (8 * v19))) >> (8 * v19);
      if (v21 > 0xFFFE)
      {
        v7 = 4;
      }

      else
      {
        if (v21 < 0xFF)
        {
          v22 = 1;
        }

        else
        {
          v22 = 2;
        }

        if (v21)
        {
          v7 = v22;
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

    v20 = a2;
    if ((a2 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

LABEL_33:
    v23 = v20 & 0x7FFFFFFF;
    if (v19 >= 4)
    {
      bzero(a1, v19);
      *a1 = v23;
      v24 = 1;
      if (v7 > 1)
      {
        goto LABEL_46;
      }

      goto LABEL_43;
    }

    v24 = (v23 >> (8 * v19)) + 1;
    if (v19)
    {
      v25 = v20 & ~(-1 << (8 * v19));
      bzero(a1, v19);
      if (v19 != 3)
      {
        if (v19 == 2)
        {
          *a1 = v25;
          if (v7 > 1)
          {
LABEL_46:
            if (v7 == 2)
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
          *a1 = v20;
          if (v7 > 1)
          {
            goto LABEL_46;
          }
        }

LABEL_43:
        if (v7)
        {
          a1[v19] = v24;
        }

        return;
      }

      *a1 = v25;
      a1[2] = BYTE2(v25);
    }

    if (v7 > 1)
    {
      goto LABEL_46;
    }

    goto LABEL_43;
  }

  v20 = a2;
  if (a2 < 0)
  {
    goto LABEL_33;
  }

LABEL_11:
  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v19] = 0;
      if (!v20)
      {
        return;
      }

      goto LABEL_20;
    }

LABEL_19:
    if (!v20)
    {
      return;
    }

    goto LABEL_20;
  }

  if (v7 == 2)
  {
    *&a1[v19] = 0;
    goto LABEL_19;
  }

  *&a1[v19] = 0;
  if (v20)
  {
LABEL_20:
    *a1 = (v20 - 1);
  }
}

uint64_t sub_1B6A6BD94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B6A6BDDC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FFF && *(a1 + 32))
  {
    return (*a1 + 0x3FFF);
  }

  v3 = (((*(a1 + 16) >> 50) >> 13) | (2 * ((*(a1 + 16) >> 50) & 0x1C00 | ((*(a1 + 16) & 7) << 7) | (*a1 >> 57) & 0x78 | *a1 & 7))) ^ 0x3FFF;
  if (v3 >= 0x3FFE)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1B6A6BE58(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x3FFF;
    *(result + 8) = 0;
    if (a3 >= 0x3FFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x1FFF | ((-a2 & 0x3FFF) << 13);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = 0;
      *(result + 16) = ((v3 >> 7) | (v3 << 50)) & 0xF000000000000007;
      *(result + 24) = 0;
    }
  }

  return result;
}

void *sub_1B6A6BEDC(void *result, uint64_t a2)
{
  v2 = result[2] & 0xFFFFFFFFFFFFFF8 | (a2 << 63);
  *result &= 0xFFFFFFFFFFFFFF8uLL;
  result[2] = v2;
  return result;
}

void sub_1B6A6BF14(void *a1)
{
  sub_1B6AB9B30();
  swift_getTupleTypeMetadata3();
  if (v1 <= 0x3F)
  {
    sub_1B6A6C928();
    if (v2 <= 0x3F)
    {
      swift_getAssociatedTypeWitness();
      swift_getAssociatedTypeWitness();
      swift_getAssociatedTypeWitness();
      sub_1B6AB9B30();
      swift_getTupleTypeMetadata3();
      sub_1B6AB9B30();
      sub_1B69AC828();
      sub_1B6ABA280();
      sub_1B6AB9740();
      v4 = v3;
      swift_getTupleTypeMetadata2();
      if (v5 <= 0x3F && v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

uint64_t sub_1B6A6C0E0(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v3 = *(a3[4] - 8);
  v37 = (((*(*(a3[2] - 8) + 64) + *(*(a3[3] - 8) + 80)) & ~*(*(a3[3] - 8) + 80)) + *(*(a3[3] - 8) + 64) + *(v3 + 80)) & ~*(v3 + 80);
  v34 = *(v3 + 84);
  v36 = *(v3 + 64);
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v33 = *(v4 + 80);
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = *(v5 + 80);
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = v7;
  v9 = *(v4 + 84);
  if (*(v5 + 84) > v9)
  {
    v9 = *(v5 + 84);
  }

  v12 = v7 + 80;
  v10 = *(v7 + 80);
  v11 = *(v12 + 4);
  v13 = v11 - 1;
  if (!v11)
  {
    v13 = 0;
  }

  v14 = v11 == 0;
  v15 = *(v8 + 64);
  if (v14)
  {
    ++v15;
  }

  v16 = v10;
  v17 = ((v6 | v33) | v10) & 0xF8 | 7u;
  v18 = (v17 + 8) & ~v17;
  v19 = v13 | v9;
  v20 = v36;
  if (!v34)
  {
    v20 = v36 + 1;
  }

  v14 = v19 == 0;
  v21 = v20 + v37;
  if (v14)
  {
    ++v15;
  }

  v22 = v15 + ((*(v5 + 64) + v16 + ((*(v4 + 64) + v6) & ~v6)) & ~v16);
  if (v22 <= 8)
  {
    v22 = 8;
  }

  v23 = v22 + v18;
  if (v21 <= v23 + 1)
  {
    v21 = v23 + 1;
  }

  if (v21 <= 8)
  {
    v24 = 8;
  }

  else
  {
    v24 = v21;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_40;
  }

  v25 = v24 + 1;
  v26 = 8 * (v24 + 1);
  if ((v24 + 1) <= 3)
  {
    v29 = ((a2 + ~(-1 << v26) - 252) >> v26) + 1;
    if (HIWORD(v29))
    {
      v27 = *(a1 + v25);
      if (!v27)
      {
        goto LABEL_40;
      }

      goto LABEL_29;
    }

    if (v29 > 0xFF)
    {
      v27 = *(a1 + v25);
      if (!*(a1 + v25))
      {
        goto LABEL_40;
      }

      goto LABEL_29;
    }

    if (v29 < 2)
    {
LABEL_40:
      v31 = *(a1 + v24);
      if (v31 >= 4)
      {
        return (v31 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v27 = *(a1 + v25);
  if (!*(a1 + v25))
  {
    goto LABEL_40;
  }

LABEL_29:
  v30 = (v27 - 1) << v26;
  if (v25 > 3)
  {
    v30 = 0;
  }

  if (v25)
  {
    if (v25 > 3)
    {
      LODWORD(v25) = 4;
    }

    if (v25 > 2)
    {
      if (v25 == 3)
      {
        LODWORD(v25) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v25) = *a1;
      }
    }

    else if (v25 == 1)
    {
      LODWORD(v25) = *a1;
    }

    else
    {
      LODWORD(v25) = *a1;
    }
  }

  return (v25 | v30) + 253;
}

void sub_1B6A6C4C8(_BYTE *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v4 = *(a4[4] - 8);
  v36 = (((*(*(a4[2] - 8) + 64) + *(*(a4[3] - 8) + 80)) & ~*(*(a4[3] - 8) + 80)) + *(*(a4[3] - 8) + 64) + *(v4 + 80)) & ~*(v4 + 80);
  v33 = *(v4 + 84);
  v35 = *(v4 + 64);
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v32 = *(v5 + 80);
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = *(v6 + 80);
  v8 = 0;
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = v9;
  v11 = *(v5 + 84);
  if (*(v6 + 84) > v11)
  {
    v11 = *(v6 + 84);
  }

  v14 = v9 + 80;
  v12 = *(v9 + 80);
  v13 = *(v14 + 4);
  v15 = v13 - 1;
  if (!v13)
  {
    v15 = 0;
  }

  v16 = v13 == 0;
  v17 = *(v10 + 64);
  if (v16)
  {
    ++v17;
  }

  v18 = v12;
  v19 = ((v7 | v32) | v12) & 0xF8 | 7u;
  v20 = (v19 + 8) & ~v19;
  v21 = v15 | v11;
  v22 = v35;
  if (!v33)
  {
    v22 = v35 + 1;
  }

  v16 = v21 == 0;
  v23 = v22 + v36;
  if (v16)
  {
    ++v17;
  }

  v24 = v17 + ((*(v6 + 64) + v18 + ((*(v5 + 64) + v7) & ~v7)) & ~v18);
  if (v24 <= 8)
  {
    v24 = 8;
  }

  v25 = v24 + v20;
  if (v23 <= v25 + 1)
  {
    v23 = v25 + 1;
  }

  if (v23 <= 8)
  {
    v23 = 8;
  }

  v26 = v23 + 1;
  if (a3 >= 0xFD)
  {
    if (v26 <= 3)
    {
      v27 = ((a3 + ~(-1 << (8 * v26)) - 252) >> (8 * v26)) + 1;
      if (HIWORD(v27))
      {
        v8 = 4;
      }

      else
      {
        if (v27 < 0x100)
        {
          v28 = 1;
        }

        else
        {
          v28 = 2;
        }

        if (v27 >= 2)
        {
          v8 = v28;
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
  }

  if (a2 > 0xFC)
  {
    v29 = a2 - 253;
    if (v26 >= 4)
    {
      bzero(a1, v23 + 1);
      *a1 = v29;
      v30 = 1;
      if (v8 > 1)
      {
        goto LABEL_52;
      }

      goto LABEL_49;
    }

    v30 = (v29 >> (8 * v26)) + 1;
    if (v23 != -1)
    {
      v31 = v29 & ~(-1 << (8 * v26));
      bzero(a1, v26);
      if (v26 != 3)
      {
        if (v26 == 2)
        {
          *a1 = v31;
          if (v8 > 1)
          {
LABEL_52:
            if (v8 == 2)
            {
              *&a1[v26] = v30;
            }

            else
            {
              *&a1[v26] = v30;
            }

            return;
          }
        }

        else
        {
          *a1 = a2 + 3;
          if (v8 > 1)
          {
            goto LABEL_52;
          }
        }

LABEL_49:
        if (v8)
        {
          a1[v26] = v30;
        }

        return;
      }

      *a1 = v31;
      a1[2] = BYTE2(v31);
    }

    if (v8 > 1)
    {
      goto LABEL_52;
    }

    goto LABEL_49;
  }

  if (v8 <= 1)
  {
    if (v8)
    {
      a1[v26] = 0;
      if (!a2)
      {
        return;
      }

LABEL_39:
      a1[v23] = -a2;
      return;
    }

LABEL_38:
    if (!a2)
    {
      return;
    }

    goto LABEL_39;
  }

  if (v8 == 2)
  {
    *&a1[v26] = 0;
    goto LABEL_38;
  }

  *&a1[v26] = 0;
  if (a2)
  {
    goto LABEL_39;
  }
}

void sub_1B6A6C928()
{
  if (!qword_1EB95C160)
  {
    sub_1B6A6C98C(0, qword_1EB95C168, MEMORY[0x1E69E62F8]);
    if (!v1)
    {
      atomic_store(v0, &qword_1EB95C160);
    }
  }
}

void sub_1B6A6C98C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1B69E83F8(255);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1B6A6C9EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B6A6CA28(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 24))
  {
    return (*a1 + 127);
  }

  v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1B6A6CA84(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *(result + 8) = 0;
      *(result + 16) = 0;
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_1B6A6CC38()
{
  v2 = v0;
  v3 = type metadata accessor for Batch(0);
  v32 = *(v3 - 8);
  v4 = *(v32 + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v27 - v6;
  v8 = type metadata accessor for BatchRepair(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *__swift_project_boxed_opaque_existential_1((v0 + 32), *(v0 + 56));
  sub_1B6A5F260();
  if (!v1)
  {
    v28 = v4;
    v29 = 0;
    v14 = *(v13 + 16);
    if (v14)
    {
      v33 = v7;
      v34 = v8;
      v35 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
      v36 = v2;
      v37 = MEMORY[0x1E69E7CC0];
      v15 = v13;
      sub_1B69E4CAC(0, v14, 0);
      v12 = v37;
      v16 = *(v32 + 80);
      v27 = v15;
      v17 = v15 + ((v16 + 32) & ~v16);
      v31 = *(v32 + 72);
      v32 = v16;
      v30 = (v16 + 16) & ~v16;
      v18 = (v28 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
      do
      {
        v19 = v9;
        v20 = v33;
        sub_1B6A6DBDC(v17, v33);
        sub_1B6A6DBDC(v20, v11);
        v21 = v35;
        sub_1B69B5BF8(v20, v35, type metadata accessor for Batch);
        v22 = swift_allocObject();
        sub_1B69B5BF8(v21, v22 + v30, type metadata accessor for Batch);
        *(v22 + v18) = v36;
        v23 = &v11[*(v34 + 20)];
        *v23 = sub_1B6A6DC40;
        v23[1] = v22;
        v37 = v12;
        v24 = *(v12 + 16);
        v25 = *(v12 + 24);

        if (v24 >= v25 >> 1)
        {
          sub_1B69E4CAC((v25 > 1), v24 + 1, 1);
          v12 = v37;
        }

        *(v12 + 16) = v24 + 1;
        v9 = v19;
        sub_1B69B5BF8(v11, v12 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v24, type metadata accessor for BatchRepair);
        v17 += v31;
        --v14;
      }

      while (v14);
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }
  }

  return v12;
}

void sub_1B6A6CF6C(__int128 *a1)
{
  v2 = a1[1];
  v8[0] = *a1;
  v8[1] = v2;
  v9 = *(a1 + 32);
  os_unfair_lock_lock_with_options();
  swift_beginAccess();
  v3 = sub_1B69B3AA0(v8);
  v5 = v4;
  swift_endAccess();
  os_unfair_lock_unlock(*(v1[11] + 16));
  if (v5)
  {
    v6 = *__swift_project_boxed_opaque_existential_1(v1 + 4, v1[7]);
    v7 = OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_lock;
    os_unfair_lock_lock_with_options();
    sub_1B6A5DF98(v3, v5);

    os_unfair_lock_unlock(*(*(v6 + v7) + 16));
  }
}

uint64_t sub_1B6A6D058(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = *(a2 + 16);
    v20 = *(a2 + 24);
    result += 32;
    v17 = v4;
    do
    {
      v19 = result;
      sub_1B6982544(result, v22);
      if (qword_1EDBCCEE0 != -1)
      {
        swift_once();
      }

      v5 = qword_1EDBCCB28;
      sub_1B69990B4(0);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_1B6ABF500;
      *(v6 + 56) = MEMORY[0x1E69E6158];
      v7 = sub_1B698CEC0();
      *(v6 + 64) = v7;
      *(v6 + 32) = v4;
      *(v6 + 40) = v20;
      v8 = v23;
      v9 = v24;
      __swift_project_boxed_opaque_existential_1(v22, v23);
      v10 = *(v9 + 16);

      v11 = v10(v8, v9);
      *(v6 + 96) = MEMORY[0x1E69E6158];
      *(v6 + 104) = v7;
      *(v6 + 72) = v11;
      *(v6 + 80) = v12;
      v13 = sub_1B6AB9900();
      sub_1B6AB8F70("Repairing batch %{public}@ with a processed event of %{public}@", 63, 2, &dword_1B697C000, v5, v13, v6);

      sub_1B6982544(a3 + 32, v21);
      __swift_project_boxed_opaque_existential_1(v21, v21[3]);
      v14 = v23;
      v15 = v24;
      __swift_project_boxed_opaque_existential_1(v22, v23);
      v16 = (*(*(v15 + 8) + 8))(v14);
      v4 = v17;
      sub_1B6A5E87C(v16, v17, v20);

      __swift_destroy_boxed_opaque_existential_1(v21);
      __swift_destroy_boxed_opaque_existential_1(v22);
      result = v19 + 40;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1B6A6D368(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *v3;
  *(v4 + 88) = a1;
  *(v4 + 96) = a2;
  *(v4 + 104) = a3;

  return MEMORY[0x1EEE6DFA0](sub_1B6A6D46C, 0, 0);
}

uint64_t sub_1B6A6D46C()
{
  if (qword_1EDBCCEE0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v4 = *(v0 + 56);
  v3 = *(v0 + 64);
  v15 = *(v0 + 40);
  v5 = qword_1EDBCCB28;
  v6 = *(v0 + 104);
  sub_1B69990B4(0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1B6ABF500;
  v8 = MEMORY[0x1E69E6158];
  *(v7 + 56) = MEMORY[0x1E69E6158];
  v9 = sub_1B698CEC0();
  *(v7 + 64) = v9;
  *(v7 + 32) = v4;
  *(v7 + 40) = v3;

  v10 = sub_1B69F822C(v2, v1, v6);
  *(v7 + 96) = v8;
  *(v7 + 104) = v9;
  *(v7 + 72) = v10;
  *(v7 + 80) = v11;
  v12 = sub_1B6AB9900();
  sub_1B6AB8F70("Upload manager will finish uploaded batch, identifier=%{public}@, result=%{public}@", 83, 2, &dword_1B697C000, v5, v12, v7, 2, 4);

  __swift_project_boxed_opaque_existential_1((v15 + 32), *(v15 + 56));
  sub_1B6A5FA74(v4, v3, v2, v1, v6);
  sub_1B69F8F30(*(v0 + 88), *(v0 + 96), *(v0 + 104));
  dispatch_group_leave(*(v0 + 72));
  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1B6A6D7A8()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return swift_deallocClassInstance();
}

void sub_1B6A6D808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = sub_1B6AB9320();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = objc_opt_self();
  v8 = sub_1B6AB8C60();
  v34 = 0;
  v9 = [v7 JSONObjectWithData:v8 options:0 error:&v34];

  v10 = v34;
  if (v9)
  {
    sub_1B6AB9BC0();
    swift_unknownObjectRelease();
    __swift_project_boxed_opaque_existential_1(&v35, v37);
    v11 = sub_1B6ABA0E0();
    v34 = 0;
    v12 = [v7 dataWithJSONObject:v11 options:3 error:&v34];
    swift_unknownObjectRelease();
    v13 = v34;
    if (v12)
    {
      v14 = sub_1B6AB8C80();
      v16 = v15;

      sub_1B6AB9310();
      v17 = sub_1B6AB92F0();
      if (v18)
      {
        v19 = v17;
        v20 = v18;
        if (qword_1EDBCCEE0 != -1)
        {
          swift_once();
        }

        v21 = qword_1EDBCCB28;
        sub_1B69990B4(0);
        v22 = swift_allocObject();
        *(v22 + 16) = xmmword_1B6ABF500;
        v23 = MEMORY[0x1E69E6158];
        *(v22 + 56) = MEMORY[0x1E69E6158];
        v24 = sub_1B698CEC0();
        *(v22 + 32) = a3;
        *(v22 + 40) = a4;
        *(v22 + 96) = v23;
        *(v22 + 104) = v24;
        *(v22 + 64) = v24;
        *(v22 + 72) = v19;
        *(v22 + 80) = v20;

        v25 = sub_1B6AB9900();
        sub_1B6AB8F70("Upload manager will compress and then upload this data for batch %{public}@:\n%{public}@", 87, 2, &dword_1B697C000, v21, v25, v22);

        sub_1B6993C94(v14, v16);
        __swift_destroy_boxed_opaque_existential_1(&v35);
      }

      else
      {
        __break(1u);
      }

      return;
    }

    v28 = v13;
    v27 = sub_1B6AB8A70();

    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1(&v35);
  }

  else
  {
    v26 = v10;
    v27 = sub_1B6AB8A70();

    swift_willThrow();
  }

  if (qword_1EDBCCEE0 != -1)
  {
    swift_once();
  }

  v29 = qword_1EDBCCB28;
  v30 = sub_1B6AB98F0();
  sub_1B69990B4(0);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1B6ABD890;
  v35 = 0;
  v36 = 0xE000000000000000;
  v34 = v27;
  sub_1B697ED90(0, &qword_1EDBCBB00, MEMORY[0x1E69E7280]);
  sub_1B6AB9DF0();
  v32 = v35;
  v33 = v36;
  *(v31 + 56) = MEMORY[0x1E69E6158];
  *(v31 + 64) = sub_1B698CEC0();
  *(v31 + 32) = v32;
  *(v31 + 40) = v33;
  sub_1B6AB8F70("Upload manager failed to serialize/deserialize JSON data for debugging: %{public}@", 82, 2, &dword_1B697C000, v29, v30, v31);
}

uint64_t sub_1B6A6DBDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Batch(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B6A6DC40(uint64_t a1)
{
  v3 = *(type metadata accessor for Batch(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1B6A6D058(a1, v1 + v4, v5);
}

uint64_t TimestampGranularity.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x65736963657270;
  v3 = 1920298856;
  v4 = 0x6574756E696DLL;
  if (v1 != 3)
  {
    v4 = 0x72657474696ALL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 7954788;
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

unint64_t sub_1B6A6DD70()
{
  result = qword_1EB95C1F0;
  if (!qword_1EB95C1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C1F0);
  }

  return result;
}

uint64_t sub_1B6A6DDC4()
{
  sub_1B6ABA1F0();
  sub_1B6AB9380();

  return sub_1B6ABA230();
}

uint64_t sub_1B6A6DE90(uint64_t a1)
{
  sub_1B6AB9380();
}

uint64_t sub_1B6A6DF48()
{
  sub_1B6ABA1F0();
  sub_1B6AB9380();

  return sub_1B6ABA230();
}

void sub_1B6A6E01C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x65736963657270;
  v5 = 0xE400000000000000;
  v6 = 1920298856;
  v7 = 0x6574756E696DLL;
  if (v2 != 3)
  {
    v7 = 0x72657474696ALL;
  }

  if (v2 != 2)
  {
    v6 = v7;
    v5 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = 7954788;
    v3 = 0xE300000000000000;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

unint64_t sub_1B6A6E154()
{
  result = qword_1EB95C1F8;
  if (!qword_1EB95C1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C1F8);
  }

  return result;
}

id BridgedUserIDConfiguration.__allocating_init(rotationPeriod:storage:)(uint64_t a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR___AAUserIDConfiguration_configuration];
  sub_1B6982544(a2 + OBJC_IVAR___AAUserIDStorage_storage, &v5[OBJC_IVAR___AAUserIDConfiguration_configuration + 8]);
  *v6 = a1;
  v9.receiver = v5;
  v9.super_class = v2;
  v7 = objc_msgSendSuper2(&v9, sel_init);

  return v7;
}

id BridgedUserIDConfiguration.init(rotationPeriod:storage:)(uint64_t a1, void *a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR___AAUserIDConfiguration_configuration];
  sub_1B6982544(a2 + OBJC_IVAR___AAUserIDStorage_storage, &v2[OBJC_IVAR___AAUserIDConfiguration_configuration + 8]);
  *v6 = a1;
  v9.receiver = v2;
  v9.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v9, sel_init);

  return v7;
}

id BridgedUserIDConfiguration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BridgedUserIDConfiguration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t BridgedRotationModeType.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1B6A6E4E4()
{
  result = qword_1EB95C208;
  if (!qword_1EB95C208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C208);
  }

  return result;
}

void *sub_1B6A6E548()
{
  v1 = sub_1B6AB8E40();
  v45 = *(v1 - 8);
  v46 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v44 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1B6AB9160();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B6AB9150();
  v47 = *(v7 - 8);
  v48 = v7;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v42 - v11;
  v43 = v0;
  v13 = sub_1B6AB8DD0();
  v15 = sub_1B699F46C(v13, v14);
  v17 = v16;
  sub_1B6A6ECE4(&qword_1EB95C210, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
  sub_1B6AB9140();
  sub_1B6994494(v15, v17);
  sub_1B6A6EB04(v15, v17, v6);
  sub_1B6993C94(v15, v17);
  v18 = v47;
  v19 = v48;
  sub_1B6AB9130();
  sub_1B6993C94(v15, v17);
  (*(v4 + 8))(v6, v3);
  v20 = *(v18 + 16);
  v42 = v12;
  v20(v10, v12, v19);
  sub_1B6A6ECE4(&qword_1EB95C218, MEMORY[0x1E69663E0], MEMORY[0x1E69663F0]);
  sub_1B6AB9470();
  result = v49;
  v22 = v49[2];
  if (v22 != v50)
  {
    if (v22 <= v50)
    {
      __break(1u);
    }

    else
    {
      v24 = v22 - v50;
      if (v22 >= v50)
      {
        v25 = v22 - v50;
      }

      else
      {
        v25 = 0;
      }

      if (v25 > v22 + ~v50)
      {
        v26 = 0;
        v27 = v50 + 32;
        do
        {
          v26 = *(v49 + v27++) | (v26 << 8);
          --v24;
        }

        while (v24);

        v23 = v26 % 0x64 + 1;
        goto LABEL_11;
      }
    }

    __break(1u);
    return result;
  }

  v23 = 1;
LABEL_11:
  v29 = v44;
  v28 = v45;
  v30 = v46;
  if (qword_1EDBCAA78 != -1)
  {
    swift_once();
  }

  v31 = sub_1B6AB8F90();
  __swift_project_value_buffer(v31, qword_1EDBCFDA8);
  (*(v28 + 16))(v29, v43, v30);
  v32 = sub_1B6AB8F80();
  v33 = sub_1B6AB98D0();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = v29;
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v49 = v36;
    *v35 = 134218242;
    *(v35 + 4) = v23;
    *(v35 + 12) = 2080;
    sub_1B6A6ECE4(&unk_1EB95C220, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v37 = sub_1B6ABA080();
    v38 = v28;
    v40 = v39;
    (*(v38 + 8))(v34, v30);
    v41 = sub_1B698F63C(v37, v40, &v49);

    *(v35 + 14) = v41;
    _os_log_impl(&dword_1B697C000, v32, v33, "Sampling value: %ld for id: %s", v35, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v36);
    MEMORY[0x1B8C99550](v36, -1, -1);
    MEMORY[0x1B8C99550](v35, -1, -1);
  }

  else
  {

    (*(v28 + 8))(v29, v30);
  }

  (*(v18 + 8))(v42, v48);
  return v23;
}

uint64_t sub_1B6A6EAB0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    v2 = *(result + 7);
    v3 = *(result + 6) & 0xF | 0x50;
    v4 = *(result + 8) & 0x3F | 0x80;
    *a2 = *result;
    *(a2 + 4) = *(result + 4);
    *(a2 + 6) = v3;
    *(a2 + 7) = v2;
    *(a2 + 8) = v4;
    *(a2 + 9) = *(result + 9);
    *(a2 + 12) = *(result + 12);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B6A6EB04(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      sub_1B6AB9160();
      sub_1B6A6ECE4(&qword_1EB95C210, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
      return sub_1B6AB9120();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_1B6A6ED2C(v5, v6);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_1B6A6ED2C(v5, v6);
  }

  sub_1B6AB9160();
  sub_1B6A6ECE4(&qword_1EB95C210, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
  return sub_1B6AB9120();
}

uint64_t sub_1B6A6ECE4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B6A6ED2C(uint64_t a1, uint64_t a2)
{
  result = sub_1B6AB8900();
  if (!result || (result = sub_1B6AB8930(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_1B6AB8920();
      sub_1B6AB9160();
      sub_1B6A6ECE4(&qword_1EB95C210, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
      return sub_1B6AB9120();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B6A6EE0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1B6993390(0, &qword_1EDBCA4C0, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  sub_1B69D1264(a3, v22 - v9);
  v11 = sub_1B6AB9680();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1B69A716C(v10, &qword_1EDBCA4C0, MEMORY[0x1E69E85F0]);
  }

  else
  {
    sub_1B6AB9670();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1B6AB95E0();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1B6AB9350() + 32;

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

      sub_1B69A716C(a3, &qword_1EDBCA4C0, MEMORY[0x1E69E85F0]);

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

  sub_1B69A716C(a3, &qword_1EDBCA4C0, MEMORY[0x1E69E85F0]);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1B6A6F0DC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x617461646174656DLL && a2 == 0xE800000000000000;
  if (v4 || (sub_1B6ABA0F0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_1B6ABA0F0();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1B6A6F1E0(char a1)
{
  sub_1B6ABA1F0();
  MEMORY[0x1B8C98A40](a1 & 1);
  return sub_1B6ABA230();
}

uint64_t sub_1B6A6F228(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x73746E657665 && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1B6ABA0F0();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1B6A6F2DC()
{
  sub_1B6ABA1F0();
  sub_1B6A6F1B8(v2, *v0);
  return sub_1B6ABA230();
}

uint64_t sub_1B6A6F328@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B6A6F0DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B6A6F35C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B69F3778();
  *a1 = result;
  return result;
}

uint64_t sub_1B6A6F390(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1B6A6F3E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1B6A6F438@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B6A6F228(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1B6A6F470@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B69D1464();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1B6A6F4A8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1B6A6F4FC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1B6A6F584()
{
  sub_1B6ABA1F0();
  sub_1B6A6F1B8(v2, *v0);
  return sub_1B6ABA230();
}

uint64_t sub_1B6A6F5CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B6A6F0DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B6A6F5FC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1B6A6F650(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t static HeartbeatEventService.URLSessionIdentifier.getter()
{
  swift_beginAccess();
  v0 = qword_1EB95C230;

  return v0;
}

uint64_t static HeartbeatEventService.URLSessionIdentifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  qword_1EB95C230 = a1;
  off_1EB95C238 = a2;
}

uint64_t sub_1B6A6F7AC(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  qword_1EB95C230 = v2;
  off_1EB95C238 = v1;
}

uint64_t sub_1B6A6F810@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B6A6FBDC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B6A6F838(uint64_t a1)
{
  v2 = sub_1B69A8764();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B6A6F874(uint64_t a1)
{
  v2 = sub_1B69A8764();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B6A6F8E8()
{
  v1 = v0[27];
  v2 = v0[22];

  v3 = sub_1B6AB98E0();
  sub_1B69990B4(0);
  v4 = swift_allocObject();
  v0[13] = 0;
  *(v4 + 16) = xmmword_1B6ABD890;
  v0[14] = 0xE000000000000000;
  v0[17] = v1;
  sub_1B697ED90(0, &qword_1EDBCBB00, MEMORY[0x1E69E7280]);
  sub_1B6AB9DF0();
  v5 = v0[13];
  v6 = v0[14];
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = sub_1B698CEC0();
  *(v4 + 32) = v5;
  *(v4 + 40) = v6;
  sub_1B6AB8F70("HeartbeatEventService failed to sign data for upload; fallback to no signature, error=%{public}@", 96, 2, &dword_1B697C000, v2, v3, v4);

  sub_1B6AB9CA0();
  v0[15] = 0;
  v0[16] = 0xE000000000000000;
  MEMORY[0x1B8C97BE0](0x46676E696E676953, 0xEF3D6572756C6961);
  v0[18] = v1;
  sub_1B6AB9DF0();

  v7 = v0[15];
  v8 = v0[16];
  v9 = v0[1];

  return v9(v7, v8);
}

id _s12AppAnalytics14ViewingSessionCfD_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1B6A6FB88()
{
  result = qword_1EB95C2A0;
  if (!qword_1EB95C2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C2A0);
  }

  return result;
}

uint64_t sub_1B6A6FBDC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461446873756C66 && a2 == 0xE900000000000065;
  if (v4 || (sub_1B6ABA0F0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_1B6ABA0F0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B6ABA0F0();

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

uint64_t sub_1B6A6FD04(void *a1, void *a2)
{
  v125 = a2;
  v134 = *MEMORY[0x1E69E9840];
  v3 = sub_1B6AB8810();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v121 = &v115 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v123 = &v115 - v7;
  sub_1B6993390(0, &unk_1EDBC8828, MEMORY[0x1E6969C20]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v115 - v9;
  v11 = sub_1B6AB8F30();
  v126 = *(v11 - 8);
  v127 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v124 = &v115 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1B6AB8AB0();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v115 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_1B6AB8BB0();
  v130 = *(v128 - 8);
  v17 = MEMORY[0x1EEE9AC00](v128);
  v19 = &v115 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v129 = &v115 - v20;
  sub_1B6993390(0, &qword_1EDBC8840, MEMORY[0x1E6967EC8]);
  v22 = MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v115 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v115 - v25;
  v122 = a1;
  v27 = [a1 originalRequest];
  if (v27)
  {
    v28 = v27;
    sub_1B6AB87C0();

    (*(v4 + 56))(v24, 0, 1, v3);
  }

  else
  {
    (*(v4 + 56))(v24, 1, 1, v3);
  }

  sub_1B6A70D10(v24, v26);
  if ((*(v4 + 48))(v26, 1, v3) == 1)
  {
    sub_1B69A716C(v26, &qword_1EDBC8840, MEMORY[0x1E6967EC8]);
LABEL_10:
    if (qword_1EDBCCEE0 != -1)
    {
      swift_once();
    }

    v41 = qword_1EDBCCB28;
    v42 = sub_1B6AB98E0();
    return sub_1B6AB8F70("HeartbeatEventServiceURLSessionDelegate failed to get heartbeat data identifier", 79, 2, &dword_1B697C000, v41, v42, MEMORY[0x1E69E7CC0]);
  }

  v29 = sub_1B6AB87F0();
  v31 = v30;
  v32 = *(v4 + 8);
  v117 = v4 + 8;
  v116 = v32;
  v32(v26, v3);
  if (!v31)
  {
    goto LABEL_10;
  }

  sub_1B6AB8B50();
  v118 = v29;
  v119 = v31;
  v132 = v29;
  v133 = v31;
  (*(v14 + 104))(v16, *MEMORY[0x1E6968F68], v13);
  sub_1B69830D8();
  v33 = MEMORY[0x1E69E6158];
  sub_1B6AB8BA0();
  (*(v14 + 8))(v16, v13);
  v34 = v130 + 8;
  v120 = *(v130 + 8);
  v120(v19, v128);
  v35 = v125;
  if (!v125)
  {
    (*(v126 + 56))(v10, 1, 1, v127);
    sub_1B69A716C(v10, &unk_1EDBC8828, MEMORY[0x1E6969C20]);
    if (qword_1EDBCCEE0 != -1)
    {
      swift_once();
    }

    v44 = qword_1EDBCCB28;
    sub_1B69990B4(0);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_1B6ABD890;
    *(v45 + 56) = v33;
    *(v45 + 64) = sub_1B698CEC0();
    v46 = v119;
    *(v45 + 32) = v118;
    *(v45 + 40) = v46;
    v47 = sub_1B6AB9900();
    sub_1B6AB8F70("Heartbeat url session task %{public}@ completed", 47, 2, &dword_1B697C000, v44, v47, v45);

    v40 = v128;
    goto LABEL_27;
  }

  v132 = v125;
  v36 = v125;
  v130 = sub_1B697ED90(0, &qword_1EDBCBB00, MEMORY[0x1E69E7280]);
  v37 = v127;
  v38 = swift_dynamicCast();
  v39 = v126;
  (*(v126 + 56))(v10, v38 ^ 1u, 1, v37);
  if ((*(v39 + 48))(v10, 1, v37) == 1)
  {
    sub_1B69A716C(v10, &unk_1EDBC8828, MEMORY[0x1E6969C20]);
    v40 = v128;
    goto LABEL_24;
  }

  (*(v39 + 32))(v124, v10, v37);
  sub_1B69A84B0(&qword_1EB95C2A8, MEMORY[0x1E6969C20], MEMORY[0x1E6969C18]);
  v48 = sub_1B6AB8A50();
  v49 = sub_1B6AB92E0();
  if (!*(v48 + 16))
  {

    v40 = v128;
LABEL_23:
    (*(v39 + 8))(v124, v37);
    goto LABEL_24;
  }

  v51 = sub_1B6993940(v49, v50);
  v53 = v52;

  v40 = v128;
  if ((v53 & 1) == 0)
  {

    v37 = v127;
    goto LABEL_23;
  }

  sub_1B698FE74(*(v48 + 56) + 32 * v51, &v132);

  if ((swift_dynamicCast() & 1) != 0 && !v131)
  {
    v84 = [objc_opt_self() defaultManager];
    sub_1B6AB8B70();
    v85 = sub_1B6AB92B0();

    v86 = [v84 fileExistsAtPath_];

    if (v86)
    {
      v87 = [v122 originalRequest];
      if (!v87)
      {
        v111 = v118;
        if (qword_1EDBCCEE0 != -1)
        {
          swift_once();
        }

        v44 = qword_1EDBCCB28;
        v112 = sub_1B6AB98E0();
        sub_1B69990B4(0);
        v113 = swift_allocObject();
        *(v113 + 16) = xmmword_1B6ABD890;
        *(v113 + 56) = MEMORY[0x1E69E6158];
        *(v113 + 64) = sub_1B698CEC0();
        v114 = v119;
        *(v113 + 32) = v111;
        *(v113 + 40) = v114;
        sub_1B6AB8F70("Heartbeat url session task %{public}@ failed to upload because the application was force quit, but the task has no request, abandoning.", 135, 2, &dword_1B697C000, v44, v112, v113);

        (*(v39 + 8))(v124, v127);
        goto LABEL_27;
      }

      v88 = v121;
      v89 = v87;
      sub_1B6AB87C0();

      (*(v4 + 32))(v123, v88, v3);
      v90 = v118;
      if (qword_1EDBCCEE0 != -1)
      {
        swift_once();
      }

      v91 = qword_1EDBCCB28;
      sub_1B69990B4(0);
      v92 = swift_allocObject();
      *(v92 + 16) = xmmword_1B6ABD890;
      *(v92 + 56) = MEMORY[0x1E69E6158];
      *(v92 + 64) = sub_1B698CEC0();
      v93 = v119;
      *(v92 + 32) = v90;
      *(v92 + 40) = v93;
      v94 = sub_1B6AB9900();
      sub_1B6AB8F70("Heartbeat url session task %{public}@ failed to upload because the application was force quit, retrying...", 106, 2, &dword_1B697C000, v91, v94, v92);

      v95 = v129;
      if (qword_1EDBC8248 != -1)
      {
        swift_once();
      }

      v96 = qword_1EDBC8250;
      v97 = v123;
      v98 = sub_1B6AB87A0();
      v99 = sub_1B6AB8B20();
      v100 = [v96 uploadTaskWithRequest:v98 fromFile:v99];

      [v100 resume];
      v116(v97, v3);
      (*(v39 + 8))(v124, v127);
      v101 = v95;
    }

    else
    {
      if (qword_1EDBCCEE0 != -1)
      {
        swift_once();
      }

      v102 = qword_1EDBCCB28;
      v103 = sub_1B6AB98E0();
      sub_1B69990B4(0);
      v104 = swift_allocObject();
      *(v104 + 16) = xmmword_1B6ABF500;
      v105 = MEMORY[0x1E69E6158];
      *(v104 + 56) = MEMORY[0x1E69E6158];
      v106 = sub_1B698CEC0();
      *(v104 + 64) = v106;
      v107 = v119;
      *(v104 + 32) = v118;
      *(v104 + 40) = v107;
      v108 = v129;
      v109 = sub_1B6AB8B70();
      *(v104 + 96) = v105;
      *(v104 + 104) = v106;
      *(v104 + 72) = v109;
      *(v104 + 80) = v110;
      sub_1B6AB8F70("Heartbeat url session task %{public}@ failed to upload because the underlying data to upload is not present at %{public}@, abandoning.", 134, 2, &dword_1B697C000, v102, v103, v104);

      (*(v39 + 8))(v124, v127);
      v101 = v108;
    }

    return (v120)(v101, v40);
  }

  (*(v39 + 8))(v124, v127);
LABEL_24:
  v54 = v35;
  v55 = v35;
  if (qword_1EDBCCEE0 != -1)
  {
    swift_once();
  }

  v44 = qword_1EDBCCB28;
  v56 = sub_1B6AB98E0();
  sub_1B69990B4(0);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_1B6ABF500;
  v58 = MEMORY[0x1E69E6158];
  *(v57 + 56) = MEMORY[0x1E69E6158];
  v59 = sub_1B698CEC0();
  *(v57 + 64) = v59;
  v60 = v119;
  *(v57 + 32) = v118;
  *(v57 + 40) = v60;
  v132 = 0;
  v133 = 0xE000000000000000;
  v131 = v55;
  sub_1B6AB9DF0();
  v61 = v132;
  v62 = v133;
  *(v57 + 96) = v58;
  *(v57 + 104) = v59;
  *(v57 + 72) = v61;
  *(v57 + 80) = v62;
  sub_1B6AB8F70("Heartbeat url session task %{public}@ completed with error=%{public}@", 69, 2, &dword_1B697C000, v44, v56, v57);

LABEL_27:
  v130 = v34;
  if (qword_1EDBCCEE0 != -1)
  {
    swift_once();
  }

  sub_1B69990B4(0);
  v63 = swift_allocObject();
  *(v63 + 16) = xmmword_1B6ABD890;
  sub_1B69A84B0(&qword_1EDBC8838, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
  v64 = v129;
  v65 = sub_1B6ABA080();
  v67 = v66;
  v68 = v40;
  v69 = MEMORY[0x1E69E6158];
  *(v63 + 56) = MEMORY[0x1E69E6158];
  v70 = sub_1B698CEC0();
  *(v63 + 64) = v70;
  *(v63 + 32) = v65;
  *(v63 + 40) = v67;
  v71 = sub_1B6AB9900();
  sub_1B6AB8F70("Clearing heartbeat data at %{public}@", 37, 2, &dword_1B697C000, v44, v71, v63);

  v72 = v64;
  v73 = [objc_opt_self() defaultManager];
  v74 = sub_1B6AB8B20();
  v132 = 0;
  LODWORD(v67) = [v73 removeItemAtURL:v74 error:&v132];

  if (v67)
  {
    v75 = v132;
  }

  else
  {
    v76 = v132;
    v77 = sub_1B6AB8A70();

    swift_willThrow();
    v78 = sub_1B6AB98E0();
    v79 = swift_allocObject();
    *(v79 + 16) = xmmword_1B6ABF500;
    v80 = sub_1B6ABA080();
    *(v79 + 56) = v69;
    *(v79 + 64) = v70;
    *(v79 + 32) = v80;
    *(v79 + 40) = v81;
    v132 = 0;
    v133 = 0xE000000000000000;
    v131 = v77;
    sub_1B697ED90(0, &qword_1EDBCBB00, MEMORY[0x1E69E7280]);
    sub_1B6AB9DF0();
    v82 = v132;
    v83 = v133;
    *(v79 + 96) = v69;
    *(v79 + 104) = v70;
    *(v79 + 72) = v82;
    *(v79 + 80) = v83;
    sub_1B6AB8F70("Failed to clear heartbeat data at %{public}@. error=%{public}@", 62, 2, &dword_1B697C000, v44, v78, v79);
  }

  return (v120)(v72, v68);
}

uint64_t sub_1B6A70D10(uint64_t a1, uint64_t a2)
{
  sub_1B6993390(0, &qword_1EDBC8840, MEMORY[0x1E6967EC8]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B6A70D90(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
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

  v9 = ((v6 + 8) & ~v6) + *(*(*(a3 + 24) - 8) + 64);
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
        return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
      }

      v15 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
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

void sub_1B6A70F14(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 24) - 8);
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
  v10 = ((v9 + 8) & ~v9) + *(*(*(a4 + 24) - 8) + 64);
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
  if ((v7 & 0x80000000) != 0)
  {
    v20 = *(v6 + 56);
    v21 = &a1[v9 + 8] & ~v9;

    v20(v21);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *a1 = v19;
  }
}

uint64_t sub_1B6A711F4()
{
  *(v1 + 16) = *v0;
  type metadata accessor for AnalyticsActor();
  swift_initStaticObject();
  sub_1B69F18A0();
  v3 = sub_1B6AB95E0();

  return MEMORY[0x1EEE6DFA0](sub_1B6A71290, v3, v2);
}

uint64_t sub_1B6A71290()
{
  v1 = [*(v0 + 16) storefrontID];
  if (v1)
  {
    v2 = v1;
    v3 = sub_1B6AB92E0();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v6 = *(v0 + 8);

  return v6(v3, v5);
}

AppAnalytics::SummarizedEventTrackingKind_optional __swiftcall SummarizedEventTrackingKind.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B6AB9EF0();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t SummarizedEventTrackingKind.rawValue.getter()
{
  if (*v0)
  {
    return 0x7265746E756F63;
  }

  else
  {
    return 0x6E61656C6F6F62;
  }
}

uint64_t sub_1B6A713CC(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x7265746E756F63;
  }

  else
  {
    v2 = 0x6E61656C6F6F62;
  }

  if (*a2)
  {
    v3 = 0x7265746E756F63;
  }

  else
  {
    v3 = 0x6E61656C6F6F62;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1B6ABA0F0();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

unint64_t sub_1B6A71458()
{
  result = qword_1EB95C310;
  if (!qword_1EB95C310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C310);
  }

  return result;
}

uint64_t sub_1B6A714AC()
{
  sub_1B6ABA1F0();
  sub_1B6AB9380();

  return sub_1B6ABA230();
}

uint64_t sub_1B6A71524(uint64_t a1)
{
  sub_1B6AB9380();
}

uint64_t sub_1B6A71580()
{
  sub_1B6ABA1F0();
  sub_1B6AB9380();

  return sub_1B6ABA230();
}

uint64_t sub_1B6A715F4@<X0>(char *a2@<X8>)
{
  v3 = sub_1B6AB9EF0();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1B6A71654(uint64_t *a1@<X8>)
{
  v2 = 0x6E61656C6F6F62;
  if (*v1)
  {
    v2 = 0x7265746E756F63;
  }

  *a1 = v2;
  a1[1] = 0xE700000000000000;
}

unint64_t sub_1B6A7174C()
{
  result = qword_1EB95C318;
  if (!qword_1EB95C318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C318);
  }

  return result;
}

AppAnalytics::UserIDResetFlag __swiftcall UserIDResetFlag.init(suiteName:userDataIDsResetKey:)(Swift::String_optional suiteName, Swift::String userDataIDsResetKey)
{
  *v2 = suiteName;
  v2[1].value = userDataIDsResetKey;
  result.userDataIDsResetKey = userDataIDsResetKey;
  result.suiteName = suiteName;
  return result;
}

void sub_1B6A717AC()
{
  qword_1EB95C320 = 0;
  *algn_1EB95C328 = 0;
  qword_1EB95C330 = 0xD00000000000001CLL;
  qword_1EB95C338 = 0x80000001B6ACCC40;
}

double static UserIDResetFlag.default.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_1EB95A9C8 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = qword_1EB95C338;
  *a1 = qword_1EB95C320;
  *(a1 + 8) = *algn_1EB95C328;
  *(a1 + 24) = v1;

  return result;
}

uint64_t sub_1B6A71868(uint64_t a1, int a2)
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

uint64_t sub_1B6A718B0(uint64_t result, int a2, int a3)
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

uint64_t sub_1B6A71900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1B6A72468;

  return sub_1B6A719AC(a2, a3, a4);
}

uint64_t sub_1B6A719AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  sub_1B6A72358(0);
  v3[6] = swift_task_alloc();
  v4 = sub_1B6AB9A60();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B6A71A9C, 0, 0);
}

uint64_t sub_1B6A71A9C()
{

  sub_1B6AB9A50();
  v1 = sub_1B6A723B0();
  v2 = swift_task_alloc();
  v0[10] = v2;
  *v2 = v0;
  v2[1] = sub_1B6A71B5C;
  v3 = v0[6];
  v4 = v0[7];

  return MEMORY[0x1EEE6D8C8](v3, v4, v1);
}

uint64_t sub_1B6A71B5C()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1B6A72464;
  }

  else
  {
    v2 = sub_1B6A71C70;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B6A71C8C()
{
  v1 = *(v0 + 48);
  v2 = sub_1B6AB88D0();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    (*(v0 + 32))();
    sub_1B6A72408(v1);
    v5 = sub_1B6A723B0();
    v6 = swift_task_alloc();
    *(v0 + 80) = v6;
    *v6 = v0;
    v6[1] = sub_1B6A71B5C;
    v7 = *(v0 + 48);
    v8 = *(v0 + 56);

    return MEMORY[0x1EEE6D8C8](v7, v8, v5);
  }
}

uint64_t sub_1B6A71DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1B69F1038;

  return sub_1B6A71E98(a2, a3, a4);
}

uint64_t sub_1B6A71E98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  sub_1B6A72358(0);
  v3[6] = swift_task_alloc();
  v4 = sub_1B6AB9A60();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B6A71F88, 0, 0);
}

uint64_t sub_1B6A71F88()
{

  sub_1B6AB9A50();
  v1 = sub_1B6A723B0();
  v2 = swift_task_alloc();
  v0[10] = v2;
  *v2 = v0;
  v2[1] = sub_1B6A72048;
  v3 = v0[6];
  v4 = v0[7];

  return MEMORY[0x1EEE6D8C8](v3, v4, v1);
}

uint64_t sub_1B6A72048()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1B6A722D8;
  }

  else
  {
    v2 = sub_1B6A7215C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B6A72178()
{
  v1 = *(v0 + 48);
  v2 = sub_1B6AB88D0();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    (*(v0 + 32))();
    sub_1B6A72408(v1);
    v5 = sub_1B6A723B0();
    v6 = swift_task_alloc();
    *(v0 + 80) = v6;
    *v6 = v0;
    v6[1] = sub_1B6A72048;
    v7 = *(v0 + 48);
    v8 = *(v0 + 56);

    return MEMORY[0x1EEE6D8C8](v7, v8, v5);
  }
}

uint64_t sub_1B6A722D8()
{
  *(v0 + 16) = *(v0 + 88);
  sub_1B69AC828();
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

void sub_1B6A72358(uint64_t a1)
{
  if (!qword_1EB95C340)
  {
    sub_1B6AB88D0();
    v1 = sub_1B6AB9B30();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB95C340);
    }
  }
}

unint64_t sub_1B6A723B0()
{
  result = qword_1EB95C348;
  if (!qword_1EB95C348)
  {
    sub_1B6AB9A60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C348);
  }

  return result;
}

uint64_t sub_1B6A72408(uint64_t a1)
{
  sub_1B6A72358(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id static OS_os_log.analytics.getter()
{
  if (qword_1EDBCCEE0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDBCCB28;

  return v1;
}

id static OS_os_log.analytics(_:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1B6980780();

    return sub_1B6AB9B10();
  }

  else
  {
    if (qword_1EDBCCEE0 != -1)
    {
      swift_once();
    }

    v3 = qword_1EDBCCB28;

    return v3;
  }
}

uint64_t sub_1B6A725B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = [objc_opt_self() mainBundle];
  v6 = [v5 bundleIdentifier];

  if (v6)
  {
    sub_1B6AB92E0();
  }

  sub_1B6980780();
  result = sub_1B6AB9B10();
  *a4 = result;
  return result;
}

uint64_t Group.name.getter()
{
  v1 = *(v0 + OBJC_IVAR___AAGroup_name);

  return v1;
}

uint64_t Group.startDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___AAGroup_startDate;
  v4 = sub_1B6AB8DB0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id Group.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id Group.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Group(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for Group(uint64_t a1)
{
  result = qword_1EDBC8CE0;
  if (!qword_1EDBC8CE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B6A72A58(uint64_t a1)
{
  result = sub_1B6AB8DB0();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B6A72B3C(unsigned int *a1)
{
  v35 = a1;
  v37 = type metadata accessor for RotationMode(0);
  MEMORY[0x1EEE9AC00](v37);
  v2 = &v31 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1B6AB8DB0();
  v39 = *(v3 - 8);
  v40 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v38 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1B6AB8EE0();
  v32 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6A758A0(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B6AB8F20();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1B6AB8E50();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1B6AB8F00();
  v31 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 104))(v17, *MEMORY[0x1E6969868], v14);
  sub_1B6AB8E60();
  (*(v15 + 8))(v17, v14);
  sub_1B6AB8F10();
  result = (*(v11 + 48))(v9, 1, v10);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    sub_1B6AB8ED0();
    v21 = v34;
    v22 = v32;
    (*(v32 + 104))(v6, *v35, v34);
    sub_1B69E9DFC(v36, v2);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B698114C(0);
      v24 = *(v23 + 64);
      v26 = v38;
      v25 = v39;
      v27 = v40;
      (*(v39 + 32))(v38, &v2[*(v23 + 48)], v40);
      (*(v25 + 8))(&v2[v24], v27);
    }

    else
    {
      sub_1B698103C(0);
      v26 = v38;
      v25 = v39;
      v27 = v40;
      (*(v39 + 32))(v38, &v2[*(v28 + 48)], v40);
    }

    v29 = sub_1B6AB8E40();
    (*(*(v29 - 8) + 8))(v2, v29);
    v30 = sub_1B6AB8EF0();
    (*(v25 + 8))(v26, v27);
    (*(v22 + 8))(v6, v21);
    (*(v31 + 8))(v19, v33);
    return v30;
  }

  return result;
}

uint64_t sub_1B6A73084()
{
  if (*v0)
  {
    return 0x346E6F6973726576;
  }

  else
  {
    return 0x356E6F6973726576;
  }
}

uint64_t sub_1B6A730B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x356E6F6973726576 && a2 == 0xE800000000000000;
  if (v6 || (sub_1B6ABA0F0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x346E6F6973726576 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B6ABA0F0();

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

uint64_t sub_1B6A73194(uint64_t a1)
{
  v2 = sub_1B6A751B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B6A731D0(uint64_t a1)
{
  v2 = sub_1B6A751B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B6A7320C()
{
  v1 = 0x7461447472617473;
  if (*v0 != 1)
  {
    v1 = 0x61746F527473616CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_1B6A73268@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B6A75600(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B6A73290(uint64_t a1)
{
  v2 = sub_1B6A7510C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B6A732CC(uint64_t a1)
{
  v2 = sub_1B6A7510C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B6A73308()
{
  v1 = 0x63617073656D616ELL;
  v2 = 0x6F52646568636163;
  if (*v0 != 2)
  {
    v2 = 0x756F437465736572;
  }

  if (*v0)
  {
    v1 = 0x7461447472617473;
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

uint64_t sub_1B6A73394@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B6A7571C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B6A733C8(uint64_t a1)
{
  v2 = sub_1B6A75160();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B6A73404(uint64_t a1)
{
  v2 = sub_1B6A75160();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RotationMode.encode(to:)(void *a1)
{
  v2 = MEMORY[0x1E69E6F58];
  sub_1B6A75208(0, &qword_1EB95C360, sub_1B6A7510C, &type metadata for RotationMode.Version4CodingKeys, MEMORY[0x1E69E6F58]);
  v60 = v3;
  v50 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v59 = &v48 - v4;
  sub_1B6A75208(0, &qword_1EB95C370, sub_1B6A75160, &type metadata for RotationMode.Version5CodingKeys, v2);
  v62 = v5;
  v49 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v61 = &v48 - v6;
  v56 = sub_1B6AB8DB0();
  v64 = *(v56 - 8);
  v7 = MEMORY[0x1EEE9AC00](v56);
  v48 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v58 = &v48 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v51 = &v48 - v11;
  v12 = sub_1B6AB8E40();
  v63 = *(v12 - 8);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v53 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v48 - v15;
  v17 = type metadata accessor for RotationMode(0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6A75208(0, &qword_1EB95C380, sub_1B6A751B4, &type metadata for RotationMode.CodingKeys, v2);
  v57 = v20;
  v55 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v48 - v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6A751B4();
  sub_1B6ABA2D0();
  sub_1B69E9DFC(v52, v19);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B698114C(0);
    v24 = *(v23 + 48);
    v25 = *(v23 + 64);
    (*(v63 + 32))(v53, v19, v12);
    v26 = *(v64 + 32);
    v27 = v56;
    v26(v58, &v19[v24], v56);
    v28 = &v19[v25];
    v29 = v48;
    v26(v48, v28, v27);
    v73 = 1;
    sub_1B6A7510C();
    v30 = v57;
    sub_1B6AB9FD0();
    v72 = 0;
    sub_1B6A75270(&qword_1EB95C390, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
    v31 = v54;
    sub_1B6ABA040();
    v32 = v30;
    v33 = v63;
    v34 = v64;
    if (v31)
    {
      (*(v50 + 8))(v59, v60);
      v35 = *(v34 + 8);
      v35(v29, v27);
      v35(v58, v27);
      (*(v33 + 8))(v53, v12);
      return (*(v55 + 8))(v22, v32);
    }

    else
    {
      v71 = 1;
      sub_1B6A75270(&qword_1EDBCB5B0, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
      sub_1B6ABA040();
      v70 = 2;
      sub_1B6ABA040();
      (*(v50 + 8))(v59, v60);
      v46 = *(v34 + 8);
      v46(v29, v27);
      v46(v58, v27);
      (*(v33 + 8))(v53, v12);
      return (*(v55 + 8))(v22, v57);
    }
  }

  else
  {
    sub_1B698103C(0);
    v38 = v37[12];
    v39 = *&v19[v37[16]];
    v59 = *&v19[v37[20]];
    v60 = v39;
    v40 = v63;
    (*(v63 + 32))(v16, v19, v12);
    v41 = &v19[v38];
    v42 = v51;
    v43 = v56;
    (*(v64 + 32))(v51, v41, v56);
    v69 = 0;
    sub_1B6A75160();
    v44 = v57;
    sub_1B6AB9FD0();
    v68 = 0;
    sub_1B6A75270(&qword_1EB95C390, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
    v45 = v54;
    sub_1B6ABA040();
    if (v45)
    {
      (*(v49 + 8))(v61, v62);
      (*(v64 + 8))(v42, v43);
      (*(v40 + 8))(v16, v12);
      return (*(v55 + 8))(v22, v44);
    }

    else
    {
      v54 = v16;
      v58 = v22;
      v47 = v64;
      v67 = 1;
      sub_1B6A75270(&qword_1EDBCB5B0, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
      sub_1B6ABA040();
      v66 = 2;
      sub_1B6ABA030();
      v65 = 3;
      sub_1B6ABA030();
      (*(v49 + 8))(v61, v62);
      (*(v47 + 8))(v51, v56);
      (*(v40 + 8))(v54, v12);
      return (*(v55 + 8))(v58, v44);
    }
  }
}

uint64_t RotationMode.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v3 = MEMORY[0x1E69E6F48];
  sub_1B6A75208(0, &qword_1EB95C398, sub_1B6A7510C, &type metadata for RotationMode.Version4CodingKeys, MEMORY[0x1E69E6F48]);
  v54 = v4;
  v56 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v59 = &v52 - v5;
  sub_1B6A75208(0, &qword_1EB95C3A0, sub_1B6A75160, &type metadata for RotationMode.Version5CodingKeys, v3);
  v57 = v6;
  v55 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v58 = &v52 - v7;
  sub_1B6A75208(0, &qword_1EB95C3A8, sub_1B6A751B4, &type metadata for RotationMode.CodingKeys, v3);
  v9 = v8;
  v61 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v52 - v10;
  v12 = type metadata accessor for RotationMode(0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v52 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v52 - v19;
  v21 = a1[3];
  v63 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_1B6A751B4();
  v22 = v62;
  sub_1B6ABA2A0();
  if (!v22)
  {
    v53 = v20;
    v62 = v12;
    v23 = v59;
    v24 = v60;
    v25 = sub_1B6AB9FB0();
    v26 = (2 * *(v25 + 16)) | 1;
    v64 = v25;
    v65 = v25 + 32;
    v66 = 0;
    v67 = v26;
    v27 = sub_1B69F0F14();
    v28 = v11;
    if (v27 == 2 || v66 != v67 >> 1)
    {
      v32 = sub_1B6AB9D10();
      swift_allocError();
      v34 = v33;
      sub_1B69F1B9C(0);
      *v34 = v62;
      sub_1B6AB9F20();
      sub_1B6AB9CF0();
      (*(*(v32 - 8) + 104))(v34, *MEMORY[0x1E69E6AF8], v32);
      swift_willThrow();
      (*(v61 + 8))(v11, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v27)
      {
        v68 = 1;
        sub_1B6A7510C();
        v29 = v23;
        sub_1B6AB9F10();
        sub_1B6AB8E40();
        v68 = 0;
        sub_1B6A75270(&qword_1EB95C3B0, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
        v30 = v15;
        v31 = v54;
        sub_1B6AB9F90();
        sub_1B698114C(0);
        v57 = v38;
        v39 = *(v38 + 48);
        v40 = sub_1B6AB8DB0();
        v68 = 1;
        sub_1B6A75270(&qword_1EDBC8C70, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
        v55 = v39;
        v58 = v40;
        sub_1B6AB9F90();
        v41 = v56;
        v68 = 2;
        sub_1B6AB9F90();
        (*(v41 + 8))(v29, v31);
        (*(v61 + 8))(v28, v9);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v47 = v30;
        v24 = v60;
      }

      else
      {
        v68 = 0;
        sub_1B6A75160();
        v36 = v58;
        sub_1B6AB9F10();
        v37 = sub_1B6AB8E40();
        v68 = 0;
        sub_1B6A75270(&qword_1EB95C3B0, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
        v59 = v18;
        sub_1B6AB9F90();
        v54 = v37;
        v56 = v9;
        sub_1B698103C(0);
        v43 = v42;
        v44 = *(v42 + 48);
        sub_1B6AB8DB0();
        v68 = 1;
        sub_1B6A75270(&qword_1EDBC8C70, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
        v45 = v36;
        sub_1B6AB9F90();
        v46 = v55;
        v59 = v44;
        v68 = 2;
        v48 = v18;
        *&v18[*(v43 + 64)] = sub_1B6AB9F80();
        v68 = 3;
        v49 = sub_1B6AB9F80();
        v50 = *(v43 + 80);
        (*(v46 + 8))(v45, v57);
        (*(v61 + 8))(v11, v56);
        swift_unknownObjectRelease();
        *&v48[v50] = v49;
        swift_storeEnumTagMultiPayload();
        v47 = v48;
      }

      v51 = v53;
      sub_1B6A5B000(v47, v53);
      sub_1B6A5B000(v51, v24);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v63);
}

uint64_t _s12AppAnalytics12RotationModeO2eeoiySbAC_ACtFZ_0(uint64_t a1, char *a2)
{
  v90 = a2;
  v3 = sub_1B6AB8DB0();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v84 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v85 = &v80 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v87 = &v80 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v80 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v83 = &v80 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v86 = (&v80 - v16);
  v17 = sub_1B6AB8E40();
  v91 = *(v17 - 8);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v88 = &v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v82 = &v80 - v20;
  v21 = type metadata accessor for RotationMode(0);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v80 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v80 - v25;
  sub_1B6A758F8(0);
  v28 = MEMORY[0x1EEE9AC00](v27 - 8);
  v30 = &v80 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = &v30[*(v28 + 56)];
  sub_1B69E9DFC(a1, v30);
  sub_1B69E9DFC(v90, v31);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v86 = v4;
    v90 = v13;
    sub_1B69E9DFC(v30, v24);
    sub_1B698114C(0);
    v33 = *(v32 + 48);
    v34 = *(v32 + 64);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v35 = v17;
      v89 = v17;
      v36 = v91;
      (*(v91 + 32))(v88, v31, v35);
      v37 = v86;
      v38 = v86[4];
      v38(v90, &v24[v33], v3);
      v38(v87, &v24[v34], v3);
      v39 = (v31 + v33);
      v40 = v85;
      v38(v85, v39, v3);
      v41 = (v31 + v34);
      v42 = v84;
      v38(v84, v41, v3);
      v43 = v88;
      v44 = sub_1B6AB8DF0();
      v45 = *(v36 + 8);
      v46 = v24;
      v47 = v89;
      v45(v46, v89);
      if (v44)
      {
        if (sub_1B6AB8D70())
        {
          v48 = v87;
          v49 = sub_1B6AB8D70();
          v50 = v86[1];
          v50(v42, v3);
          v50(v40, v3);
          v50(v48, v3);
          v50(v90, v3);
          v45(v88, v89);
LABEL_19:
          v58 = type metadata accessor for RotationMode;
          goto LABEL_20;
        }

        v78 = v86[1];
        v78(v42, v3);
        v78(v40, v3);
        v78(v87, v3);
        v78(v90, v3);
        v74 = v43;
        v75 = v89;
      }

      else
      {
        v73 = v37[1];
        v73(v42, v3);
        v73(v40, v3);
        v73(v87, v3);
        v73(v90, v3);
        v74 = v43;
        v75 = v47;
      }

      v45(v74, v75);
      v49 = 0;
      goto LABEL_19;
    }

    v57 = v86[1];
    v57(&v24[v34], v3);
    v57(&v24[v33], v3);
    v26 = v24;
LABEL_9:
    (*(v91 + 8))(v26, v17);
    v49 = 0;
    v58 = sub_1B6A758F8;
LABEL_20:
    v77 = v58;
    goto LABEL_21;
  }

  v89 = v17;
  v90 = v3;
  sub_1B69E9DFC(v30, v26);
  sub_1B698103C(0);
  v52 = v51[12];
  v53 = v51[16];
  v54 = *&v26[v53];
  v55 = v51[20];
  v56 = *&v26[v55];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4[1](&v26[v52], v90);
    v17 = v89;
    goto LABEL_9;
  }

  v87 = v56;
  v88 = v30;
  v81 = *(v31 + v53);
  v84 = *(v31 + v55);
  v85 = v54;
  v59 = v91;
  v60 = v82;
  v61 = v89;
  (*(v91 + 32))(v82, v31, v89);
  v62 = v4;
  v63 = v4[4];
  v64 = v90;
  (v63)(v86, &v26[v52], v90);
  v65 = v31 + v52;
  v66 = v83;
  (v63)(v83, v65, v64);
  v67 = v60;
  v68 = sub_1B6AB8DF0();
  v69 = *(v59 + 8);
  v69(v26, v61);
  if (v68)
  {
    v70 = v86;
    v71 = sub_1B6AB8D70();
    v72 = v62[1];
    v72(v66, v64);
    v72(v70, v64);
    v69(v67, v61);
    if (v87 == v84)
    {
      v49 = v71 & (v85 == v81);
    }

    else
    {
      v49 = 0;
    }
  }

  else
  {
    v76 = v62[1];
    v76(v66, v64);
    v76(v86, v64);
    v69(v60, v61);
    v49 = 0;
  }

  v77 = type metadata accessor for RotationMode;
  v30 = v88;
LABEL_21:
  sub_1B6A7595C(v30, v77);
  return v49 & 1;
}

unint64_t sub_1B6A7510C()
{
  result = qword_1EB95C368;
  if (!qword_1EB95C368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C368);
  }

  return result;
}

unint64_t sub_1B6A75160()
{
  result = qword_1EB95C378;
  if (!qword_1EB95C378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C378);
  }

  return result;
}

unint64_t sub_1B6A751B4()
{
  result = qword_1EB95C388;
  if (!qword_1EB95C388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C388);
  }

  return result;
}

void sub_1B6A75208(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1B6A75270(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1B6A752EC()
{
  result = qword_1EB95C3B8;
  if (!qword_1EB95C3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C3B8);
  }

  return result;
}

unint64_t sub_1B6A75344()
{
  result = qword_1EB95C3C0;
  if (!qword_1EB95C3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C3C0);
  }

  return result;
}

unint64_t sub_1B6A7539C()
{
  result = qword_1EB95C3C8;
  if (!qword_1EB95C3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C3C8);
  }

  return result;
}

unint64_t sub_1B6A753F4()
{
  result = qword_1EB95C3D0;
  if (!qword_1EB95C3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C3D0);
  }

  return result;
}

unint64_t sub_1B6A7544C()
{
  result = qword_1EB95C3D8;
  if (!qword_1EB95C3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C3D8);
  }

  return result;
}

unint64_t sub_1B6A754A4()
{
  result = qword_1EB95C3E0;
  if (!qword_1EB95C3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C3E0);
  }

  return result;
}

unint64_t sub_1B6A754FC()
{
  result = qword_1EB95C3E8;
  if (!qword_1EB95C3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C3E8);
  }

  return result;
}

unint64_t sub_1B6A75554()
{
  result = qword_1EB95C3F0;
  if (!qword_1EB95C3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C3F0);
  }

  return result;
}

unint64_t sub_1B6A755AC()
{
  result = qword_1EB95C3F8;
  if (!qword_1EB95C3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C3F8);
  }

  return result;
}

uint64_t sub_1B6A75600(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1B6ABA0F0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7461447472617473 && a2 == 0xE900000000000065 || (sub_1B6ABA0F0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x61746F527473616CLL && a2 == 0xEC0000006E6F6974)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B6ABA0F0();

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

uint64_t sub_1B6A7571C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x63617073656D616ELL && a2 == 0xE900000000000065;
  if (v4 || (sub_1B6ABA0F0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7461447472617473 && a2 == 0xE900000000000065 || (sub_1B6ABA0F0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F52646568636163 && a2 == 0xEF736E6F69746174 || (sub_1B6ABA0F0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x756F437465736572 && a2 == 0xEA0000000000746ELL)
  {

    return 3;
  }

  else
  {
    v6 = sub_1B6ABA0F0();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

void sub_1B6A758A0(uint64_t a1)
{
  if (!qword_1EB95AF38)
  {
    sub_1B6AB8F20();
    v1 = sub_1B6AB9B30();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB95AF38);
    }
  }
}

void sub_1B6A758F8(uint64_t a1)
{
  if (!qword_1EB95C400)
  {
    type metadata accessor for RotationMode(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB95C400);
    }
  }
}

uint64_t sub_1B6A7595C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B6A759E4(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v27 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - v17;
  v19 = sub_1B6AB9800();
  if (!v19)
  {
    return sub_1B6AB9550();
  }

  v41 = v19;
  v45 = sub_1B6AB9DC0();
  v32 = sub_1B6AB9DD0();
  sub_1B6AB9D70();
  result = sub_1B6AB97F0();
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
      v22 = sub_1B6AB9840();
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
      sub_1B6AB9DB0();
      result = sub_1B6AB9810();
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

uint64_t sub_1B6A75E04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = sub_1B6AB8DB0();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v16[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16[8] = *v5;
  v17 = *(v5 + 8);
  sub_1B6AB8DA0();
  sub_1B6A75F24(a1, v14, a2, a3, a4, a5);
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_1B6A75F24@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v99 = a2;
  v102 = a6;
  v98 = sub_1B6AB8DB0();
  v11 = *(v98 - 8);
  v12 = MEMORY[0x1EEE9AC00](v98);
  v97 = &v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v106 = &v91 - v14;
  v114 = type metadata accessor for TimedData(0);
  MEMORY[0x1EEE9AC00](v114);
  v105 = &v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = a3;
  v18 = type metadata accessor for SnapshotLevel(255, *(a3 + 16), v16, v17);
  v104 = sub_1B6AB9B30();
  v19 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v111 = &v91 - v20;
  sub_1B6A77384(0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v112 = &v91 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for Tracker.Timer(0);
  v23 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v103 = &v91 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = *v6;
  v25 = *(v6 + 1);
  v26 = *(v6 + 2);
  v119 = v25;
  v109 = a4;
  v113 = type metadata accessor for SnapshotEvent.MissingData(0, a4, a5, v27);
  v28 = sub_1B6AB91D0();
  v141 = v28;
  v115 = v26;
  v29 = sub_1B69BB800(a1, a5);
  v30 = *(v29 + 2);
  if (!v30)
  {

    v32 = MEMORY[0x1E69E7CC0];
    return sub_1B69EDD14(v32, v28, v109, a5, v102);
  }

  v93 = v29;
  v94 = a5;
  v31 = (v29 + 32);
  v107 = (v23 + 56);
  v108 = v18 - 8;
  v95 = (v11 + 8);
  v96 = (v11 + 16);
  v92 = 0x80000001B6ACCCC0;
  v100 = (v19 + 8);
  v101 = (v23 + 48);
  v32 = MEMORY[0x1E69E7CC0];
  v118 = v18;
  v91 = v23;
  while (1)
  {
    v120 = v32;
    sub_1B69BE328(v31, v139);
    v33 = v139[0];
    v34 = v139[1];
    sub_1B6982544(&v140, v136);

    sub_1B69BE384(v139);
    v35 = v137;
    v36 = v138;
    __swift_project_boxed_opaque_existential_1(v136, v137);
    if ((*(v36 + 16))(v35, v36))
    {
      LOBYTE(v121) = v116;
      *(&v121 + 1) = v119;
      *&v122 = v115;
      v37 = v137;
      v38 = v138;
      __swift_project_boxed_opaque_existential_1(v136, v137);
      v39 = (*(v38 + 8))(v37, v38);
      sub_1B6A76A8C(v39, v40, &v128);

      if (*(&v128 + 1))
      {
        goto LABEL_21;
      }

      sub_1B6A773B8(&v128);
      v41 = v137;
      v42 = v138;
      __swift_project_boxed_opaque_existential_1(v136, v137);
      *&v128 = (*(v42 + 32))(v41, v42) | 0x8000000000000000;
      goto LABEL_28;
    }

    v43 = v137;
    v44 = v138;
    __swift_project_boxed_opaque_existential_1(v136, v137);
    if (((*(v44 + 24))(v43, v44) & 1) == 0)
    {
      break;
    }

LABEL_4:
    v32 = v120;
LABEL_5:
    __swift_destroy_boxed_opaque_existential_1(v136);
    v31 += 56;
    if (!--v30)
    {

      v28 = v141;
      a5 = v94;
      return sub_1B69EDD14(v32, v28, v109, a5, v102);
    }
  }

  v45 = v137;
  v46 = v138;
  __swift_project_boxed_opaque_existential_1(v136, v137);
  if (((*(v46 + 40))(v114, v114, v45, v46) & 1) == 0)
  {
    goto LABEL_20;
  }

  *&v128 = v119;
  sub_1B6AB95D0();
  swift_getWitnessTable();
  v47 = v111;
  sub_1B6AB9820();
  v48 = *(v18 - 8);
  if ((*(v48 + 48))(v47, 1, v18) == 1)
  {
    (*v100)(v47, v104);
    v49 = v112;
    (*v107)(v112, 1, 1, v110);
    goto LABEL_19;
  }

  v50 = *&v47[*(v18 + 32)];
  v51 = *(v48 + 8);

  v51(v47, v18);
  v52 = sub_1B698DB14(v109, v109);
  if (*(v50 + 16))
  {
    v54 = sub_1B6993940(v52, v53);
    v56 = v55;

    if (v56)
    {
      sub_1B6A775FC(*(v50 + 56) + *(v91 + 72) * v54, v112, type metadata accessor for Tracker.Timer);

      v57 = 0;
      goto LABEL_18;
    }
  }

  else
  {
  }

  v57 = 1;
LABEL_18:
  v49 = v112;
  v58 = v110;
  (*v107)(v112, v57, 1, v110);
  if ((*v101)(v49, 1, v58) == 1)
  {
LABEL_19:
    sub_1B6A774E0(v49, sub_1B6A77384);
LABEL_20:
    LOBYTE(v121) = v116;
    *(&v121 + 1) = v119;
    *&v122 = v115;
    v59 = v137;
    v60 = v138;
    __swift_project_boxed_opaque_existential_1(v136, v137);
    v61 = (*(v60 + 8))(v59, v60);
    sub_1B6A76A8C(v61, v62, &v128);

    if (*(&v128 + 1))
    {
LABEL_21:
      v132 = v129[1];
      v133 = v129[2];
      v134 = v129[3];
      v135 = v129[4];
      v130 = v128;
      v131 = v129[0];
      sub_1B6A0A6D0(&v130, v129);
      *&v128 = v33;
      *(&v128 + 1) = v34;
      sub_1B6A77430(&v128, &v121);
      v32 = v120;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = sub_1B69E49A0(0, *(v32 + 2) + 1, 1, v32);
      }

      v18 = v118;
      v64 = *(v32 + 2);
      v63 = *(v32 + 3);
      v65 = v64 + 1;
      if (v64 >= v63 >> 1)
      {
        v32 = sub_1B69E49A0((v63 > 1), v64 + 1, 1, v32);
      }

      sub_1B6A7748C(&v128);
      sub_1B69A6664(&v130);
LABEL_26:
      *(v32 + 2) = v65;
      v66 = &v32[112 * v64];
      v68 = v122;
      v67 = v123;
      *(v66 + 2) = v121;
      *(v66 + 3) = v68;
      *(v66 + 4) = v67;
      v69 = v127;
      v71 = v124;
      v70 = v125;
      *(v66 + 7) = v126;
      *(v66 + 8) = v69;
      *(v66 + 5) = v71;
      *(v66 + 6) = v70;
      goto LABEL_5;
    }

    sub_1B6A773B8(&v128);
    v72 = v137;
    v73 = v138;
    __swift_project_boxed_opaque_existential_1(v136, v137);
    *&v128 = (*(v73 + 32))(v72, v73);
LABEL_28:
    sub_1B6AB95D0();
    sub_1B6AB95A0();
    v18 = v118;
    goto LABEL_4;
  }

  v74 = v49;
  v75 = v103;
  sub_1B6A77540(v74, v103);
  v76 = *v96;
  v77 = v75;
  v78 = v98;
  (*v96)(v106, v77, v98);
  v79 = v97;
  v76(v97, v99, v78);
  v80 = v105;
  v76(v105, v106, v78);
  v76((v80 + *(v114 + 20)), v79, v78);
  v81 = v106;
  sub_1B6AB8D00();
  v83 = v82;
  v84 = *v95;
  (*v95)(v79, v78);
  result = v84(v81, v78);
  v86 = v83 * 1000.0;
  if (COERCE__INT64(fabs(v83 * 1000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    if (v86 <= -9.22337204e18)
    {
      goto LABEL_41;
    }

    if (v86 >= 9.22337204e18)
    {
      goto LABEL_42;
    }

    v87 = v114;
    v88 = v105;
    *&v105[*(v114 + 24)] = v86;
    *(&v132 + 1) = v87;
    *&v133 = sub_1B6A775A4();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v131);
    sub_1B6A775FC(v88, boxed_opaque_existential_1, type metadata accessor for TimedData);
    *&v130 = v33;
    *(&v130 + 1) = v34;
    *(&v133 + 1) = MEMORY[0x1E69E7CC0];
    LOWORD(v134) = 256;
    *(&v134 + 1) = 0xD000000000000057;
    *&v135 = v92;
    *(&v135 + 1) = 88;
    sub_1B6A0A6D0(&v130, v129);
    *&v128 = v33;
    *(&v128 + 1) = v34;
    sub_1B6A77430(&v128, &v121);

    v32 = v120;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = sub_1B69E49A0(0, *(v32 + 2) + 1, 1, v32);
    }

    v18 = v118;
    v64 = *(v32 + 2);
    v90 = *(v32 + 3);
    v65 = v64 + 1;
    if (v64 >= v90 >> 1)
    {
      v32 = sub_1B69E49A0((v90 > 1), v64 + 1, 1, v32);
    }

    sub_1B6A7748C(&v128);
    sub_1B69A6664(&v130);
    sub_1B6A774E0(v105, type metadata accessor for TimedData);
    sub_1B6A774E0(v103, type metadata accessor for Tracker.Timer);
    goto LABEL_26;
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_1B6A76A8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = *v3;
  v6 = *(v3 + 1);
  v90 = a2;
  v91 = a3;
  v89 = a1;
  if (v5)
  {
    *&v92[0] = v6;
    MEMORY[0x1EEE9AC00](a1);
    v88 = *(v7 + 16);
    type metadata accessor for SnapshotLevel(255, v88, v7, v8);
    v9 = sub_1B6AB95D0();
    sub_1B6A77698(0, &qword_1EB95C408, sub_1B69E8850, MEMORY[0x1E69E6720]);
    v11 = v10;

    WitnessTable = swift_getWitnessTable();
    v14 = sub_1B6A759E4(sub_1B6A77664, v87, v9, v11, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v13);

    result = v14;
    v16 = *(v14 + 16);
    if (v16)
    {
      v17 = 0;
      v18 = v14 + 32;
      v19 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        v20 = *(result + 16);
        if (v17 > v20)
        {
          v20 = v17;
        }

        while (1)
        {
          if (v17 == v20)
          {
            goto LABEL_95;
          }

          v22 = v18 + 32 * v17++;
          if (*(v22 + 8))
          {
            v23 = 0;
            v24 = 0;
            v25 = *(v22 + 16);
            v26 = v25 + 64;
            v27 = 1 << *(v25 + 32);
            while (1)
            {
              v28 = *(v26 + 8 * v24);
              if (v28)
              {
                break;
              }

              ++v24;
              v23 -= 64;
              if ((v27 + 63) >> 6 == v24)
              {
                goto LABEL_8;
              }
            }

            v21 = __clz(__rbit64(v28));
            if (v21 - v27 != v23)
            {
              break;
            }
          }

LABEL_8:
          if (v17 == v16)
          {
            goto LABEL_53;
          }
        }

        if (-v23 < 0 || (v21 - v23) >= v27)
        {
          goto LABEL_108;
        }

        if (((*(v26 + 8 * (v24 & 0x3FFFFFFFFFFFFFFLL)) >> v21) & 1) == 0)
        {
          goto LABEL_109;
        }

        v29 = result;
        v30 = *(*(v25 + 56) + 8 * (v21 - v23));

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_1B69E4844(0, v19[2] + 1, 1, v19);
        }

        result = v29;
        v32 = v19[2];
        v31 = v19[3];
        if (v32 >= v31 >> 1)
        {
          v19 = sub_1B69E4844((v31 > 1), v32 + 1, 1, v19);
          result = v29;
        }

        v19[2] = v32 + 1;
        v19[v32 + 4] = v30;
        if (v17 == v16)
        {
          goto LABEL_53;
        }
      }
    }

    v19 = MEMORY[0x1E69E7CC0];
LABEL_53:

    v61 = v19[2];
    if (v61)
    {
      v62 = 0;
      v63 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if (v62 >= v19[2])
        {
          goto LABEL_96;
        }

        v64 = v19[v62 + 4];
        v65 = *(v64 + 16);
        v66 = *(v63 + 16);
        v67 = v66 + v65;
        if (__OFADD__(v66, v65))
        {
          goto LABEL_97;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if (result && v67 <= *(v63 + 24) >> 1)
        {
          if (!*(v64 + 16))
          {
            goto LABEL_55;
          }
        }

        else
        {
          if (v66 <= v67)
          {
            v68 = v66 + v65;
          }

          else
          {
            v68 = v66;
          }

          result = sub_1B69E4488(result, v68, 1, v63);
          v63 = result;
          if (!*(v64 + 16))
          {
LABEL_55:

            if (v65)
            {
              goto LABEL_98;
            }

            goto LABEL_56;
          }
        }

        if ((*(v63 + 24) >> 1) - *(v63 + 16) < v65)
        {
          goto LABEL_102;
        }

        swift_arrayInitWithCopy();

        if (v65)
        {
          v69 = *(v63 + 16);
          v59 = __OFADD__(v69, v65);
          v70 = v69 + v65;
          if (v59)
          {
            goto LABEL_104;
          }

          *(v63 + 16) = v70;
        }

LABEL_56:
        if (v61 == ++v62)
        {
          goto LABEL_72;
        }
      }
    }

    v63 = MEMORY[0x1E69E7CC0];
LABEL_72:

    v71 = *(v63 + 16);
    v73 = v90;
    v72 = v91;
    v74 = v89;
    if (v71)
    {
      v75 = 0;
      v76 = v63 + 32;
      while (v75 < *(v63 + 16))
      {
        sub_1B6A0A6D0(v76, v92);
        v77 = *&v92[0] == v74 && *(&v92[0] + 1) == v73;
        if (v77 || (sub_1B6ABA0F0() & 1) != 0)
        {
          goto LABEL_93;
        }

        ++v75;
        result = sub_1B69A6664(v92);
        v76 += 96;
        if (v71 == v75)
        {
          goto LABEL_92;
        }
      }

      goto LABEL_106;
    }

LABEL_92:

    v72[4] = 0u;
    v72[5] = 0u;
    v72[2] = 0u;
    v72[3] = 0u;
    *v72 = 0u;
    v72[1] = 0u;
    return result;
  }

  *&v92[0] = v6;
  MEMORY[0x1EEE9AC00](a1);
  v88 = *(v33 + 16);
  type metadata accessor for SnapshotLevel(255, v88, v33, v34);
  v35 = sub_1B6AB95D0();
  sub_1B6A77698(0, qword_1EB95C410, sub_1B6A77784, MEMORY[0x1E69E6720]);
  v37 = v36;

  v38 = swift_getWitnessTable();
  v40 = sub_1B6A759E4(sub_1B6A77750, v87, v35, v37, MEMORY[0x1E69E73E0], v38, MEMORY[0x1E69E7410], v39);

  v41 = 0;
  v42 = *(v40 + 16);
  v43 = MEMORY[0x1E69E7CC0];
LABEL_25:
  v44 = 32 * v41 + 40;
  while (1)
  {
    if (v42 == v41)
    {

      v50 = v43[2];
      if (!v50)
      {
        v52 = MEMORY[0x1E69E7CC0];
LABEL_83:

        v78 = *(v52 + 16);
        v79 = v90;
        v72 = v91;
        v80 = v89;
        if (v78)
        {
          v81 = 0;
          v82 = v52 + 32;
          while (v81 < *(v52 + 16))
          {
            sub_1B6A0A6D0(v82, v92);
            v83 = *&v92[0] == v80 && *(&v92[0] + 1) == v79;
            if (v83 || (sub_1B6ABA0F0() & 1) != 0)
            {
LABEL_93:

              v84 = v92[3];
              v72[2] = v92[2];
              v72[3] = v84;
              v85 = v92[5];
              v72[4] = v92[4];
              v72[5] = v85;
              v86 = v92[1];
              *v72 = v92[0];
              v72[1] = v86;
              return result;
            }

            ++v81;
            result = sub_1B69A6664(v92);
            v82 += 96;
            if (v78 == v81)
            {
              goto LABEL_92;
            }
          }

          goto LABEL_107;
        }

        goto LABEL_92;
      }

      v51 = 0;
      v52 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if (v51 >= v43[2])
        {
          goto LABEL_99;
        }

        v53 = v43[v51 + 4];
        v54 = *(v53 + 16);
        v55 = *(v52 + 16);
        v56 = v55 + v54;
        if (__OFADD__(v55, v54))
        {
          goto LABEL_100;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if (result && v56 <= *(v52 + 24) >> 1)
        {
          if (!*(v53 + 16))
          {
            goto LABEL_36;
          }
        }

        else
        {
          if (v55 <= v56)
          {
            v57 = v55 + v54;
          }

          else
          {
            v57 = v55;
          }

          result = sub_1B69E4488(result, v57, 1, v52);
          v52 = result;
          if (!*(v53 + 16))
          {
LABEL_36:

            if (v54)
            {
              goto LABEL_101;
            }

            goto LABEL_37;
          }
        }

        if ((*(v52 + 24) >> 1) - *(v52 + 16) < v54)
        {
          goto LABEL_103;
        }

        swift_arrayInitWithCopy();

        if (v54)
        {
          v58 = *(v52 + 16);
          v59 = __OFADD__(v58, v54);
          v60 = v58 + v54;
          if (v59)
          {
            goto LABEL_105;
          }

          *(v52 + 16) = v60;
        }

LABEL_37:
        if (v50 == ++v51)
        {
          goto LABEL_83;
        }
      }
    }

    if (v41 >= *(v40 + 16))
    {
      break;
    }

    ++v41;
    v45 = v44 + 32;
    v46 = *(v40 + v44);
    v44 += 32;
    if (v46)
    {
      v47 = *(v40 + v45 - 24);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1B69E4844(0, v43[2] + 1, 1, v43);
        v43 = result;
      }

      v49 = v43[2];
      v48 = v43[3];
      if (v49 >= v48 >> 1)
      {
        result = sub_1B69E4844((v48 > 1), v49 + 1, 1, v43);
        v43 = result;
      }

      v43[2] = v49 + 1;
      v43[v49 + 4] = v47;
      goto LABEL_25;
    }
  }

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
LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
  return result;
}

double sub_1B6A7726C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X3>, _OWORD *a4@<X8>, uint64_t a5@<X2>)
{
  v8 = type metadata accessor for SnapshotLevel(0, a2, a5, a3);
  MEMORY[0x1EEE9AC00](v8);
  (*(v10 + 16))(&v12 - v9, a1, v8);
  a3(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t sub_1B6A773B8(uint64_t a1)
{
  sub_1B6A776FC(0, &qword_1EDBCB490, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B6A774E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B6A77540(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Tracker.Timer(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B6A775A4()
{
  result = qword_1EDBCB008;
  if (!qword_1EDBCB008)
  {
    type metadata accessor for TimedData(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBCB008);
  }

  return result;
}

uint64_t sub_1B6A775FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1B6A77698(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B6A776FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for AnyDataEventEntry);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1B6A77784(uint64_t a1)
{
  if (!qword_1EB95AE88)
  {
    sub_1B6A776FC(255, &qword_1EB95ADB8, MEMORY[0x1E69E62F8]);
    v5 = type metadata accessor for SnapshotLevel(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EB95AE88);
    }
  }
}

uint64_t sub_1B6A777F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B6A7785C@<X0>(uint64_t *a1@<X0>, char a2@<W1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a1;
  v7 = a1[1];
  if (v7 >= 3)
  {
    v8 = *a1;
  }

  else
  {
    v8 = 0;
  }

  if (v7 >= 3)
  {
    v9 = a1[1];
  }

  else
  {
    v9 = 0;
  }

  if (v7 >= 3)
  {
    v10 = 3;
  }

  else
  {
    v10 = a1[1];
  }

  v11 = type metadata accessor for BridgedIDSessionKind();
  v12 = objc_allocWithZone(v11);
  *&v12[OBJC_IVAR___AAIDSessionKind_kind] = v10;
  v13 = &v12[OBJC_IVAR___AAIDSessionKind_name];
  *v13 = v8;
  v13[1] = v9;
  sub_1B6992E2C(v6, v7);
  v21.receiver = v12;
  v21.super_class = v11;
  v14 = objc_msgSendSuper2(&v21, sel_init);
  v15 = [a3 legacyComponentsForKind:v14 isDiagnosticSubmissionAllowed:a2 & 1];

  if (v15)
  {
    v16 = a4;
    sub_1B6A47A08(v15 + OBJC_IVAR___AALegacyStoredUserIDComponents_legacyStoredUserIDComponents, a4);

    v17 = 0;
  }

  else
  {
    v17 = 1;
    v16 = a4;
  }

  v18 = type metadata accessor for LegacyStoredUserIDComponents(0);
  return (*(*(v18 - 8) + 56))(v16, v17, 1, v18);
}

void sub_1B6A779BC(uint64_t a1, uint64_t *a2, char a3, void *a4)
{
  v23 = a4;
  v7 = type metadata accessor for LegacyStoredUserIDComponents(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a2;
  v10 = a2[1];
  if (v10 >= 3)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v10 >= 3)
  {
    v13 = v10;
  }

  else
  {
    v13 = 0;
  }

  if (v10 >= 3)
  {
    v14 = 3;
  }

  else
  {
    v14 = v10;
  }

  v15 = type metadata accessor for BridgedIDSessionKind();
  v16 = objc_allocWithZone(v15);
  *&v16[OBJC_IVAR___AAIDSessionKind_kind] = v14;
  v17 = &v16[OBJC_IVAR___AAIDSessionKind_name];
  *v17 = v12;
  v17[1] = v13;
  sub_1B6992E2C(v11, v10);
  v25.receiver = v16;
  v25.super_class = v15;
  v18 = objc_msgSendSuper2(&v25, sel_init);
  sub_1B6A47A08(a1, v9);
  v19 = type metadata accessor for BridgedLegacyStoredUserIDComponents(0);
  v20 = objc_allocWithZone(v19);
  sub_1B6A47A08(v9, v20 + OBJC_IVAR___AALegacyStoredUserIDComponents_legacyStoredUserIDComponents);
  v24.receiver = v20;
  v24.super_class = v19;
  v21 = objc_msgSendSuper2(&v24, sel_init);
  sub_1B6A47A6C(v9);
  [v23 updateForKind:v18 legacyStoredUserIDComponents:v21 isDiagnosticSubmissionAllowed:a3 & 1];
}

uint64_t sub_1B6A77B8C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a2;
  v6 = sub_1B6AB8E40();
  v40 = *(v6 - 8);
  v7 = v40;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v35 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v42 = &v34 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v34 - v12;
  v14 = a1[1];
  v37 = *a1;
  v41 = v14;
  sub_1B6AB8E30();
  sub_1B698103C(0);
  v16 = v15[12];
  v17 = v15[16];
  v18 = v15[20];
  v19 = *(v7 + 16);
  v19(a3, v13, v6);
  v38 = sub_1B6AB8DB0();
  v20 = *(v38 - 8);
  (*(v20 + 16))(a3 + v16, a2, v38);
  *(a3 + v17) = 0;
  *(a3 + v18) = 0;
  type metadata accessor for RotationMode(0);
  swift_storeEnumTagMultiPayload();
  v21 = v42;
  v19(v42, v13, v6);
  v22 = type metadata accessor for UserIDComponents(0);
  v36 = v22[5];
  v23 = v35;
  v19(v35, v21, v6);
  v43 = 0;
  v44 = sub_1B6ABA080();
  v45 = v24;
  MEMORY[0x1B8C97BE0](59, 0xE100000000000000);
  v43 = 0;
  v25 = sub_1B6ABA080();
  MEMORY[0x1B8C97BE0](v25);

  MEMORY[0x1B8C97BE0](59, 0xE100000000000000);
  v26 = v37;
  v43 = v37;
  v27 = sub_1B6ABA080();
  MEMORY[0x1B8C97BE0](v27);

  v28 = sub_1B699F46C(v44, v45);
  sub_1B6A7C174(v23, v28, v29, a3 + v36);
  (*(v20 + 8))(v39, v38);
  v30 = *(v40 + 8);
  v30(v42, v6);
  result = (v30)(v13, v6);
  v32 = (a3 + v22[6]);
  v33 = v41;
  *v32 = v26;
  v32[1] = v33;
  *(a3 + v22[7]) = 1;
  return result;
}

uint64_t sub_1B6A77ED0(uint64_t a1, char *a2)
{
  if (_s12AppAnalytics12RotationModeO2eeoiySbAC_ACtFZ_0(a1, a2) & 1) != 0 && (v4 = type metadata accessor for UserIDComponents(0), (sub_1B6AB8DF0()) && ((v5 = *(v4 + 24), v7 = *(a1 + v5), v6 = *(a1 + v5 + 8), v8 = &a2[v5], v10 = *v8, v9 = *(v8 + 1), v7 == v10) ? (v11 = v6 == v9) : (v11 = 0), v11))
  {
    v12 = *(a1 + *(v4 + 28)) ^ a2[*(v4 + 28)] ^ 1;
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t EventProperty.hashValue.getter()
{
  v1 = *v0;
  sub_1B6ABA1F0();
  MEMORY[0x1B8C98A40](v1);
  return sub_1B6ABA230();
}

uint64_t sub_1B6A77FFC()
{
  sub_1B6ABA1F0();
  EventProperty.hash(into:)();
  return sub_1B6ABA230();
}

uint64_t sub_1B6A78108(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 == 2 && *(a1 + 16) != *(a1 + 24))
    {
      goto LABEL_7;
    }

    goto LABEL_9;
  }

  if (!v2)
  {
    if ((a2 & 0xFF000000000000) != 0)
    {
      goto LABEL_7;
    }

LABEL_9:
    v3 = 0;
    v4 = 1;
    return v3 | (v4 << 8);
  }

  if (a1 == a1 >> 32)
  {
    goto LABEL_9;
  }

LABEL_7:
  v3 = sub_1B6AB8C50();
  v4 = 0;
  return v3 | (v4 << 8);
}

BOOL sub_1B6A78190()
{
  v0 = sub_1B699E9F0(0xD00000000000003CLL, 0x80000001B6ACBF40, 512);
  if (v1 >> 60 == 15)
  {
    return 0;
  }

  v2 = v0;
  v3 = v1;
  v4 = sub_1B6A78108(v0, v1);
  sub_1B69AE288(v2, v3);
  return (v4 & 0x100) == 0 && v4 == 1;
}

uint64_t UploadDropboxFile.deinit()
{

  v1 = OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_url;
  v2 = sub_1B6AB8BB0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1B69AD890(v0 + OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_sessionStartDate, &qword_1EDBCCF40, MEMORY[0x1E6969530]);

  return v0;
}

uint64_t UploadDropboxFile.description.getter()
{
  sub_1B69867F8(0, &qword_1EDBCCF40, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v25 - v2;
  v4 = MEMORY[0x1E69E6158];
  sub_1B6999254(0, &qword_1EDBCBB08, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B6AC4E60;
  v6 = *(v0 + 24);
  *(v5 + 32) = *(v0 + 16);
  *(v5 + 40) = v6;

  *(v5 + 48) = sub_1B6AB8AC0();
  *(v5 + 56) = v7;
  v26 = *(v0 + OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_eventCount);
  v28 = sub_1B6ABA080();
  v29 = v8;
  MEMORY[0x1B8C97BE0](0x73746E65766520, 0xE700000000000000);
  v9 = v29;
  *(v5 + 64) = v28;
  *(v5 + 72) = v9;
  v26 = *(v0 + OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_byteSize);
  v28 = sub_1B6ABA080();
  v29 = v10;
  MEMORY[0x1B8C97BE0](0x736574796220, 0xE600000000000000);
  v11 = v29;
  *(v5 + 80) = v28;
  *(v5 + 88) = v11;
  v12 = *(v0 + OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_userAgent + 8);
  v28 = *(v0 + OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_userAgent);
  v29 = v12;
  v13 = MEMORY[0x1E69E6720];
  sub_1B6999254(0, &qword_1EDBCAA50, v4, MEMORY[0x1E69E6720]);

  *(v5 + 96) = sub_1B6AB9330();
  *(v5 + 104) = v14;
  v15 = *(v0 + OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_contentType + 8);
  v28 = *(v0 + OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_contentType);
  LOBYTE(v29) = v15;
  sub_1B6999254(0, &qword_1EDBCA460, &type metadata for ContentType, v13);
  *(v5 + 112) = sub_1B6AB9330();
  *(v5 + 120) = v16;
  v17 = *(v0 + OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_groupName + 8);
  v28 = *(v0 + OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_groupName);
  v29 = v17;

  *(v5 + 128) = sub_1B6AB9330();
  *(v5 + 136) = v18;
  v19 = OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_sessionStartDate;
  swift_beginAccess();
  sub_1B69B20C4(v0 + v19, v3);
  *(v5 + 144) = sub_1B6AB9330();
  *(v5 + 152) = v20;
  v21 = *(v0 + OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_sessionID + 8);
  v26 = *(v0 + OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_sessionID);
  v27 = v21;

  *(v5 + 160) = sub_1B6AB9330();
  *(v5 + 168) = v22;
  v26 = v5;
  sub_1B6999254(0, &qword_1EDBCAFF0, v4, MEMORY[0x1E69E62F8]);
  sub_1B699918C();
  v23 = sub_1B6AB9290();

  return v23;
}

void sub_1B6A78918(void *a1)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v21[0] = 0;
  v2 = [a1 synchronizeAndReturnError_];
  v3 = v21[0];
  if (v2 && (v21[0] = 0, v4 = v3, v5 = [a1 closeAndReturnError_], v3 = v21[0], v5))
  {

    v6 = v3;
  }

  else
  {
    v7 = v3;
    v8 = sub_1B6AB8A70();

    swift_willThrow();
    if (qword_1EDBCAA78 != -1)
    {
      swift_once();
    }

    v9 = sub_1B6AB8F90();
    __swift_project_value_buffer(v9, qword_1EDBCFDA8);

    v10 = v8;
    v11 = sub_1B6AB8F80();
    v12 = sub_1B6AB98E0();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v21[0] = v15;
      *v13 = 136315394;
      v16 = sub_1B6AB8B80();
      v18 = sub_1B698F63C(v16, v17, v21);

      *(v13 + 4) = v18;
      *(v13 + 12) = 2112;
      v19 = v8;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 14) = v20;
      *v14 = v20;
      _os_log_impl(&dword_1B697C000, v11, v12, "⚠️ Failed to sync & close file handle at %s: %@", v13, 0x16u);
      sub_1B6A7B1A4(v14, sub_1B69EC2D4);
      MEMORY[0x1B8C99550](v14, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x1B8C99550](v15, -1, -1);
      MEMORY[0x1B8C99550](v13, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_1B6A78C40(uint64_t a1, unint64_t a2)
{
  sub_1B6994494(a1, a2);
  sub_1B6A78CE8(a1, a2);
  v4 = sub_1B6AB9360();

  return v4;
}

uint64_t sub_1B6A78CAC@<X0>(uint64_t *a3@<X8>)
{
  result = sub_1B6AB9360();
  *a3 = result;
  a3[1] = v5;
  return result;
}

void *sub_1B6A78CE8(uint64_t a1, unint64_t a2)
{
  v4 = sub_1B6AB8CB0();
  v5 = *(v4 - 8);
  result = MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 != 2)
    {
LABEL_12:
      sub_1B6993C94(a1, a2);
      return MEMORY[0x1E69E7CC0];
    }

    v12 = *(a1 + 16);
    v11 = *(a1 + 24);
    v10 = v11 - v12;
    if (!__OFSUB__(v11, v12))
    {
      if (v10)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v9)
    {
      goto LABEL_10;
    }

    v10 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v13 = sub_1B699004C(v10, 0);
      v14 = sub_1B6AB8BF0();
      sub_1B6993C94(a1, a2);
      v15 = *(v5 + 8);
      v5 += 8;
      v15(v8, v4);
      result = v13;
      if (v14 == v10)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v16 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v10 = v16;
      if (!v16)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

void sub_1B6A78E64(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, double *a7)
{
  v103 = *a7;
  v98 = OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_lock;
  os_unfair_lock_lock_with_options();
  v9 = [objc_opt_self() defaultManager];
  sub_1B6AB8B80();
  v10 = sub_1B6AB92B0();

  [v9 createFileAtPath:v10 contents:0 attributes:0];

  v11 = sub_1B69992A4();
  v13 = v12;

  v96 = sub_1B699F46C(v11, v13);
  v97 = v14;
  sub_1B699FBE4(v96, v14, 0xD00000000000003ELL, 0x80000001B6ACD220);
  if (v7)
  {

    if (qword_1EDBCCEE0 != -1)
    {
      swift_once();
    }

    v15 = qword_1EDBCCB28;
    v94 = sub_1B6AB98E0();
    sub_1B6A7B0E8(0, &qword_1EDBCCC50, &qword_1EDBCBAF8, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1B6ABF500;
    v17 = sub_1B6AB8B80();
    v19 = v18;
    v20 = MEMORY[0x1E69E6158];
    *(v16 + 56) = MEMORY[0x1E69E6158];
    v21 = sub_1B698CEC0();
    *(v16 + 64) = v21;
    *(v16 + 32) = v17;
    *(v16 + 40) = v19;
    sub_1B697ED90(0, &qword_1EDBCBB00, MEMORY[0x1E69E7280]);
    sub_1B6AB9DF0();
    *(v16 + 96) = v20;
    *(v16 + 104) = v21;
    *(v16 + 72) = 0;
    *(v16 + 80) = 0xE000000000000000;
    v106 = v15;
    sub_1B6AB8F70("Upload dropbox failed to write batch.client-user-agent for file %{public}@, error=%{public}@", 92, 2, &dword_1B697C000, v15, v94, v16);
  }

  else
  {
    if (qword_1EDBCCEE0 != -1)
    {
      swift_once();
    }

    v22 = qword_1EDBCCB28;
    v23 = sub_1B6AB98D0();
    sub_1B6A7B0E8(0, &qword_1EDBCCC50, &qword_1EDBCBAF8, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1B6ABF500;
    v25 = MEMORY[0x1E69E6158];
    *(v24 + 56) = MEMORY[0x1E69E6158];
    v26 = sub_1B698CEC0();
    *(v24 + 32) = v11;
    *(v24 + 40) = v13;
    v28 = *(a1 + 16);
    v27 = *(a1 + 24);
    *(v24 + 96) = v25;
    *(v24 + 104) = v26;
    *(v24 + 64) = v26;
    *(v24 + 72) = v28;
    *(v24 + 80) = v27;

    v106 = v22;
    sub_1B6AB8F70("Upload dropbox set batch.client-user-agent attribute to %@ for identifier=%@", 76, 2, &dword_1B697C000, v22, v23, v24);
  }

  sub_1B699F418();
  v29 = sub_1B6AB9BB0();
  v93 = sub_1B699F46C(v29, v30);
  v95 = v31;
  sub_1B699FBE4(v93, v31, 0xD000000000000039, 0x80000001B6ACD0A0);
  if (qword_1EDBCCEE0 != -1)
  {
    swift_once();
  }

  v32 = sub_1B6AB98D0();
  sub_1B6A7B0E8(0, &qword_1EDBCCC50, &qword_1EDBCBAF8, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1B6ABF500;
  v34 = ContentType.description.getter(a4);
  v36 = v35;
  v37 = MEMORY[0x1E69E6158];
  *(v33 + 56) = MEMORY[0x1E69E6158];
  v38 = sub_1B698CEC0();
  *(v33 + 32) = v34;
  *(v33 + 40) = v36;
  v40 = *(a1 + 16);
  v39 = *(a1 + 24);
  *(v33 + 96) = v37;
  *(v33 + 104) = v38;
  *(v33 + 64) = v38;
  *(v33 + 72) = v40;
  *(v33 + 80) = v39;

  sub_1B6AB8F70("Upload dropbox set batch.content-type attribute to %@ for identifier=%@", 71, 2, &dword_1B697C000, v106, v32, v33);

  if (a6)
  {
    swift_bridgeObjectRetain_n();
    v41 = sub_1B699F46C(a5, a6);
    v43 = v42;
    sub_1B699FBE4(v41, v42, 0xD000000000000037, 0x80000001B6ACCFA0);
    if (qword_1EDBCCEE0 != -1)
    {
      swift_once();
    }

    v44 = sub_1B6AB98D0();
    sub_1B6A7B0E8(0, &qword_1EDBCCC50, &qword_1EDBCBAF8, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_1B6ABF500;
    v46 = MEMORY[0x1E69E6158];
    *(v45 + 56) = MEMORY[0x1E69E6158];
    v47 = sub_1B698CEC0();
    *(v45 + 32) = a5;
    *(v45 + 40) = a6;
    v49 = *(a1 + 16);
    v48 = *(a1 + 24);
    *(v45 + 96) = v46;
    *(v45 + 104) = v47;
    *(v45 + 64) = v47;
    *(v45 + 72) = v49;
    *(v45 + 80) = v48;

    sub_1B6AB8F70("Upload dropbox set batch.group-name attribute to %@ for identifier=%@", 69, 2, &dword_1B697C000, v106, v44, v45);
    sub_1B6993C94(v41, v43);
  }

  type metadata accessor for Session(0);
  sub_1B6AB8D60();
  v50 = sub_1B6AB97A0();
  v100 = sub_1B699F46C(v50, v51);
  v102 = v52;
  sub_1B699FBE4(v100, v52, 0xD00000000000003FLL, 0x80000001B6ACD3E0);
  if (qword_1EDBCCEE0 != -1)
  {
    swift_once();
  }

  v53 = sub_1B6AB98D0();
  sub_1B6A7B0E8(0, &qword_1EDBCCC50, &qword_1EDBCBAF8, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_1B6ABD890;
  v56 = *(a1 + 16);
  v55 = *(a1 + 24);
  *(v54 + 56) = MEMORY[0x1E69E6158];
  *(v54 + 64) = sub_1B698CEC0();
  *(v54 + 32) = v56;
  *(v54 + 40) = v55;

  sub_1B6AB8F70("Upload dropbox set batch.session-start-date attribute for identifier=%@", 71, 2, &dword_1B697C000, v106, v53, v54);

  v57 = *a2;
  v58 = a2[1];

  v90 = v57;
  v92 = sub_1B699F46C(v57, v58);
  v105 = v59;
  sub_1B699FBE4(v92, v59, 0xD00000000000003FLL, 0x80000001B6ACCEA0);
  if (qword_1EDBCCEE0 != -1)
  {
    swift_once();
  }

  v60 = sub_1B6AB98D0();
  sub_1B6A7B0E8(0, &qword_1EDBCCC50, &qword_1EDBCBAF8, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_1B6ABF500;
  v62 = MEMORY[0x1E69E6158];
  *(v61 + 56) = MEMORY[0x1E69E6158];
  v63 = sub_1B698CEC0();
  *(v61 + 32) = 0;
  *(v61 + 40) = v58;
  v64 = *(a1 + 16);
  v65 = *(a1 + 24);
  *(v61 + 96) = v62;
  *(v61 + 104) = v63;
  *(v61 + 64) = v63;
  *(v61 + 72) = v64;
  *(v61 + 80) = v65;

  sub_1B6AB8F70("Upload dropbox set batch.session-identifier attribute to %@ for identifier=%@", 77, 2, &dword_1B697C000, v106, v60, v61);

  if (v103 == 5)
  {
    sub_1B6993C94(v92, v105);
    sub_1B6993C94(v100, v102);
    sub_1B6993C94(v93, v95);
    v66 = v96;
    v67 = v97;
  }

  else
  {
    v68 = sub_1B6AB97A0();
    v70 = sub_1B699F46C(v68, v69);
    v72 = v71;
    sub_1B699FBE4(v70, v71, 0xD00000000000003DLL, 0x80000001B6ACD4E0);
    if (qword_1EDBCCEE0 != -1)
    {
      swift_once();
    }

    v73 = sub_1B6AB98D0();
    sub_1B6A7B0E8(0, &qword_1EDBCCC50, &qword_1EDBCBAF8, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v74 = swift_allocObject();
    *(v74 + 16) = xmmword_1B6ABF500;
    v75 = MEMORY[0x1E69E6158];
    *(v74 + 56) = MEMORY[0x1E69E6158];
    v76 = sub_1B698CEC0();
    *(v74 + 32) = v90;
    *(v74 + 40) = v58;
    v77 = *(a1 + 16);
    v78 = *(a1 + 24);
    *(v74 + 96) = v75;
    *(v74 + 104) = v76;
    *(v74 + 64) = v76;
    *(v74 + 72) = v77;
    *(v74 + 80) = v78;

    sub_1B6AB8F70("Upload dropbox set batch.timestamp-jitter attribute to %@ for identifier=%@", 75, 2, &dword_1B697C000, v106, v73, v74);

    sub_1B6993C94(v70, v72);
    if (v103 <= 1)
    {
      if (v103)
      {
        v79 = 0xE300000000000000;
        v80 = 7954788;
      }

      else
      {
        v79 = 0xE700000000000000;
        v80 = 0x65736963657270;
      }
    }

    else if (v103 == 2)
    {
      v79 = 0xE400000000000000;
      v80 = 1920298856;
    }

    else
    {
      v79 = 0xE600000000000000;
      if (v103 == 3)
      {
        v80 = 0x6574756E696DLL;
      }

      else
      {
        v80 = 0x72657474696ALL;
      }
    }

    v81 = sub_1B699F46C(v80, v79);
    v83 = v82;
    sub_1B699FBE4(v81, v82, 0xD000000000000042, 0x80000001B6ACD580);
    if (qword_1EDBCCEE0 != -1)
    {
      swift_once();
    }

    v84 = sub_1B6AB98D0();
    sub_1B6A7B0E8(0, &qword_1EDBCCC50, &qword_1EDBCBAF8, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v85 = swift_allocObject();
    *(v85 + 16) = xmmword_1B6ABF500;
    v86 = MEMORY[0x1E69E6158];
    *(v85 + 56) = MEMORY[0x1E69E6158];
    v87 = sub_1B698CEC0();
    *(v85 + 32) = v90;
    *(v85 + 40) = v58;
    v88 = *(a1 + 16);
    v89 = *(a1 + 24);
    *(v85 + 96) = v86;
    *(v85 + 104) = v87;
    *(v85 + 64) = v87;
    *(v85 + 72) = v88;
    *(v85 + 80) = v89;

    sub_1B6AB8F70("Upload dropbox set batch.timestamp-granularity attribute to %@ for identifier=%@", 80, 2, &dword_1B697C000, v106, v84, v85);
    sub_1B6993C94(v92, v105);
    sub_1B6993C94(v100, v102);
    sub_1B6993C94(v93, v95);
    sub_1B6993C94(v96, v97);

    v66 = v81;
    v67 = v83;
  }

  sub_1B6993C94(v66, v67);
  os_unfair_lock_unlock(*(*(a1 + v98) + 16));
}

void sub_1B6A7A248(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v43 = a2;
  v6 = sub_1B6AB8BB0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_lock;
  os_unfair_lock_lock_with_options();
  sub_1B6986438(0, &qword_1EDBCB648, 0x1E696AC00);
  (*(v7 + 16))(v9, a3 + OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_url, v6);
  v11 = a3;
  v12 = sub_1B69AF2E8(v9, &selRef_fileHandleForUpdatingURL_error_);
  if (v3)
  {
    v25 = *(a3 + v10);
LABEL_4:
    os_unfair_lock_unlock(*(v25 + 16));
    return;
  }

  v13 = v12;
  v14 = v10;
  v15 = v43;
  sub_1B6AB98A0();
  v16 = a1;
  v41 = a1;
  v42 = v15;
  v17 = v15;
  sub_1B6A7B204();
  sub_1B6AB9880();
  v18 = v16;
  v19 = sub_1B69D617C(&unk_1F2E73BE0);
  v20 = v11;
  v21 = v19;
  v22 = v20;
  v24 = v23;
  sub_1B699FBE4(v19, v23, 0xD00000000000003CLL, 0x80000001B6ACBF40);
  sub_1B6993C94(v21, v24);
  if (qword_1EDBCCEE0 != -1)
  {
    swift_once();
  }

  v40 = qword_1EDBCCB28;
  HIDWORD(v39) = sub_1B6AB98D0();
  sub_1B6A7B0E8(0, &qword_1EDBCCC50, &qword_1EDBCBAF8, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1B6ABD890;
  v27 = UploadDropboxFile.description.getter();
  v29 = v28;
  *(v26 + 56) = MEMORY[0x1E69E6158];
  *(v26 + 64) = sub_1B698CEC0();
  *(v26 + 32) = v27;
  *(v26 + 40) = v29;
  sub_1B6AB8F70("Upload dropbox set batch.file-written-to attribute on file: %{public}@", 70, 2, &dword_1B697C000, v40, HIDWORD(v39), v26);

  v30 = v17 >> 62;
  if ((v17 >> 62) > 1)
  {
    v31 = 0;
    if (v30 != 2)
    {
      goto LABEL_16;
    }

    v33 = *(v18 + 16);
    v32 = *(v18 + 24);
    v34 = __OFSUB__(v32, v33);
    v31 = v32 - v33;
    if (!v34)
    {
      goto LABEL_16;
    }

    __break(1u);
  }

  else if (!v30)
  {
    v31 = BYTE6(v17);
    goto LABEL_16;
  }

  LODWORD(v31) = HIDWORD(v18) - v18;
  if (__OFSUB__(HIDWORD(v18), v18))
  {
    goto LABEL_21;
  }

  v31 = v31;
LABEL_16:
  v35 = *(v22 + OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_byteSize);
  v34 = __OFADD__(v35, v31);
  v36 = v35 + v31;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v22 + OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_byteSize) = v36;
    v37 = *(v22 + OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_eventCount);
    v34 = __OFADD__(v37, 1);
    v38 = v37 + 1;
    if (!v34)
    {
      *(v22 + OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_eventCount) = v38;
      sub_1B6A78918(v13);

      v25 = *(v22 + v14);
      goto LABEL_4;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_1B6A7A620(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_lock;
  os_unfair_lock_lock_with_options();
  v7 = v3;
  v8 = v4;
  sub_1B699F100(a1, &v7);
  v6 = *(*(a1 + v5) + 16);

  os_unfair_lock_unlock(v6);
}

void sub_1B6A7A69C(uint64_t a1)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v2 = OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_lock;
  os_unfair_lock_lock_with_options();
  v3 = [objc_opt_self() defaultManager];
  v4 = sub_1B6AB8B20();
  v10[0] = 0;
  v5 = [v3 removeItemAtURL:v4 error:v10];

  if (v5)
  {
    v6 = *(*(a1 + v2) + 16);
    v7 = v10[0];
    v8 = v6;
  }

  else
  {
    v9 = v10[0];
    sub_1B6AB8A70();

    swift_willThrow();
    v8 = *(*(a1 + v2) + 16);
  }

  os_unfair_lock_unlock(v8);
}

id sub_1B6A7A7C8(uint64_t a1, char a2)
{
  v83 = *MEMORY[0x1E69E9840];
  v5 = sub_1B6AB8A10();
  *&v75 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v74 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B69867F8(0, &qword_1EDBCCC40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v59 - v8;
  v10 = sub_1B6AB8BB0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v77 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1B6AB8A90();
  v14 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = &off_1E7C63000;
  if ((a2 & 1) == 0)
  {
    goto LABEL_22;
  }

  v76 = v2;
  v72 = v15;
  v73 = v14;
  v69 = v5;
  v19 = [objc_opt_self() defaultManager];
  sub_1B69867F8(0, &qword_1EDBC96B8, type metadata accessor for URLResourceKey, MEMORY[0x1E69E6F90]);
  v21 = v20;
  v22 = swift_allocObject();
  v71 = xmmword_1B6ABD890;
  *(v22 + 16) = xmmword_1B6ABD890;
  v23 = *MEMORY[0x1E695DBB8];
  *(v22 + 32) = *MEMORY[0x1E695DBB8];
  v70 = v23;
  v24 = sub_1B6AB98B0();

  if (!v24)
  {
LABEL_21:
    v18 = &off_1E7C63000;
LABEL_22:
    v48 = [objc_opt_self() v18[163]];
    v49 = sub_1B6AB8B20();
    v81[0] = 0;
    v50 = [v48 removeItemAtURL:v49 error:v81];

    if (v50)
    {
      return v81[0];
    }

    v52 = v81[0];
    sub_1B6AB8A70();

    return swift_willThrow();
  }

  sub_1B6AB9870();
  sub_1B6AB8A80();
  if (!v82)
  {
    (*(v72 + 8))(v17, v73);

    goto LABEL_21;
  }

  v67 = v24;
  v64 = v21;
  v68 = a1;
  v25 = (v11 + 56);
  v66 = (v11 + 32);
  v65 = (v11 + 8);
  v63 = (v75 + 8);
  v75 = xmmword_1B6ABF500;
  v26 = 1;
  v27 = v77;
  do
  {
    v28 = swift_dynamicCast();
    v29 = *v25;
    if (v28)
    {
      v29(v9, 0, 1, v10);
      (*v66)(v27, v9, v10);
      if (v26)
      {
        inited = swift_initStackObject();
        *(inited + 16) = v71;
        v31 = v70;
        *(inited + 32) = v70;
        v32 = v31;
        v33 = sub_1B6AA04E4(inited);
        swift_setDeallocating();
        sub_1B6A7B1A4(inited + 32, type metadata accessor for URLResourceKey);
        v34 = v74;
        v62 = v33;
        v35 = v76;
        sub_1B6AB8AD0();
        v76 = v35;
        if (v35)
        {

          if (qword_1EDBCCEE0 != -1)
          {
            swift_once();
          }

          v62 = qword_1EDBCCB28;
          v61 = sub_1B6AB98E0();
          sub_1B6A7B0E8(0, &qword_1EDBCCC50, &qword_1EDBCBAF8, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
          v36 = swift_allocObject();
          *(v36 + 16) = v75;
          v37 = sub_1B6AB8AC0();
          v39 = v38;
          *(v36 + 56) = MEMORY[0x1E69E6158];
          v60 = sub_1B698CEC0();
          *(v36 + 64) = v60;
          *(v36 + 32) = v37;
          *(v36 + 40) = v39;
          v79 = 0;
          v80 = 0xE000000000000000;
          v40 = v76;
          v78 = v76;
          sub_1B697ED90(0, &qword_1EDBCBB00, MEMORY[0x1E69E7280]);
          sub_1B6AB9DF0();
          v41 = v79;
          v42 = v80;
          v43 = v60;
          *(v36 + 96) = MEMORY[0x1E69E6158];
          *(v36 + 104) = v43;
          *(v36 + 72) = v41;
          *(v36 + 80) = v42;
          sub_1B6AB8F70("Upload dropbox failed to read resource attributes for dropbox file, url=%@, error=%{public}@", 92, 2, &dword_1B697C000, v62, v61, v36);

          v27 = v77;
          (*v65)(v77, v10);
          v76 = 0;
          v26 = 1;
        }

        else
        {

          v44 = sub_1B6AB8A00();
          v45 = v34;
          v46 = v44;
          v47 = v44;
          (*v63)(v45, v69);
          v27 = v77;
          (*v65)(v77, v10);
          if (v47 == 2)
          {
            v26 = 1;
          }

          else
          {
            v26 = v46 ^ 1;
          }
        }
      }

      else
      {
        (*v65)(v27, v10);
        v26 = 0;
      }
    }

    else
    {
      v29(v9, 1, 1, v10);
      sub_1B69AD890(v9, &qword_1EDBCCC40, MEMORY[0x1E6968FB0]);
    }

    sub_1B6AB8A80();
  }

  while (v82);
  (*(v72 + 8))(v17, v73);

  v18 = &off_1E7C63000;
  if (v26)
  {
    goto LABEL_22;
  }

  if (qword_1EDBCCEE0 != -1)
  {
    swift_once();
  }

  v53 = qword_1EDBCCB28;
  sub_1B6A7B0E8(0, &qword_1EDBCCC50, &qword_1EDBCBAF8, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v54 = swift_allocObject();
  *(v54 + 16) = v71;
  v55 = sub_1B6AB8AC0();
  v57 = v56;
  *(v54 + 56) = MEMORY[0x1E69E6158];
  *(v54 + 64) = sub_1B698CEC0();
  *(v54 + 32) = v55;
  *(v54 + 40) = v57;
  v58 = sub_1B6AB9900();
  sub_1B6AB8F70("Upload dropbox skipping directory removal as directory is non-empty, url=%{public}@", 83, 2, &dword_1B697C000, v53, v58, v54);
}

void sub_1B6A7B0E8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1B697ED90(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1B6A7B150()
{
  result = qword_1EDBC8CF0;
  if (!qword_1EDBC8CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBC8CF0);
  }

  return result;
}

uint64_t sub_1B6A7B1A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1B6A7B204()
{
  result = qword_1EDBCAA28;
  if (!qword_1EDBCAA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBCAA28);
  }

  return result;
}

_BYTE *sub_1B6A7B258@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_1B6A7B2D8(uint64_t a1)
{
  sub_1B6A7B0E8(0, &qword_1EB95C4A0, &qword_1EB95C498, MEMORY[0x1E69E6EE0], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B6A7B374()
{
  result = qword_1EB95C4A8;
  if (!qword_1EB95C4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C4A8);
  }

  return result;
}

uint64_t SnapshotPolicy.hashValue.getter()
{
  v1 = *v0;
  sub_1B6ABA1F0();
  MEMORY[0x1B8C98A40](v1);
  return sub_1B6ABA230();
}

unint64_t sub_1B6A7B458()
{
  result = qword_1EB95C4B0;
  if (!qword_1EB95C4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C4B0);
  }

  return result;
}

uint64_t sub_1B6A7B4BC()
{
  v1 = *(v0 + OBJC_IVAR____TtC12AppAnalytics27SummaryEventDatabaseManager_lock);
  os_unfair_lock_lock(v1 + 4);
  sub_1B6A7C104(v2);
  os_unfair_lock_unlock(v1 + 4);
  return sub_1B6A7B6F8();
}

uint64_t sub_1B6A7B53C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 16);

  v9 = sub_1B6A2B9E8(a3);
  if (!*(v8 + 16))
  {

    goto LABEL_7;
  }

  v11 = sub_1B6993940(v9, v10);
  v13 = v12;

  if ((v13 & 1) == 0)
  {
LABEL_7:
    v24 = sub_1B6A2B9E8(a3);
    v26 = v25;
    v27 = sub_1B6A2B9E8(a3);
    v29 = v28;
    v30 = sub_1B6A2B9AC(a2, a3, a4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = v8;
    sub_1B69E79E4(v27, v29, 1, v30, v24, v26, isUniquelyReferenced_nonNull_native);
    goto LABEL_8;
  }

  v14 = (*(v8 + 56) + 32 * v11);
  v16 = *v14;
  v15 = v14[1];
  v17 = v14[2];
  v18 = v14[3];

  sub_1B6A2B970(a2, a3, a4);
  if ((v32 & 1) == 0)
  {

    goto LABEL_9;
  }

  result = sub_1B6A2B9E8(a3);
  if (!__OFADD__(v17, 1))
  {
    v21 = result;
    v22 = v20;
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v33 = v8;
    sub_1B69E79E4(v16, v15, v17 + 1, v18, v21, v22, v23);
LABEL_8:

    v8 = v33;
LABEL_9:
    *(a1 + 16) = v8;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B6A7B6F8()
{
  v1 = sub_1B6AB9030();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v33 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B6AB9090();
  v32 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v31 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B6AB8BB0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v27 - v11;
  v13 = type metadata accessor for SummaryEventDatabaseManager.StorageLocation(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B698BA64(v0 + OBJC_IVAR____TtC12AppAnalytics27SummaryEventDatabaseManager_storageLocation, v15, type metadata accessor for SummaryEventDatabaseManager.StorageLocation);
  result = (*(v7 + 48))(v15, 1, v6);
  if (result != 1)
  {
    v28 = v1;
    v29 = v2;
    v17 = *(v7 + 32);
    v17(v12, v15, v6);
    v30 = v4;
    v18 = *(v0 + OBJC_IVAR____TtC12AppAnalytics27SummaryEventDatabaseManager_lock);
    os_unfair_lock_lock(v18 + 4);
    v19 = *(v0 + 16);

    os_unfair_lock_unlock(v18 + 4);
    v27 = *(v0 + OBJC_IVAR____TtC12AppAnalytics27SummaryEventDatabaseManager_diskIOQueue);
    (*(v7 + 16))(v10, v12, v6);
    v20 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = v19;
    v17((v21 + v20), v10, v6);
    aBlock[4] = sub_1B6A7C02C;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B698E534;
    aBlock[3] = &block_descriptor_10;
    v22 = _Block_copy(aBlock);
    v23 = v31;
    sub_1B6AB9060();
    v34 = MEMORY[0x1E69E7CC0];
    sub_1B6985338(&qword_1EDBCCC70, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    v24 = MEMORY[0x1E69E7F60];
    sub_1B698685C(0, &qword_1EDBCBB90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1B698B2BC(&qword_1EDBCBB80, &qword_1EDBCBB90, v24);
    v25 = v33;
    v26 = v28;
    sub_1B6AB9BE0();
    MEMORY[0x1B8C981F0](0, v23, v25, v22);
    _Block_release(v22);
    (*(v29 + 8))(v25, v26);
    (*(v32 + 8))(v23, v30);
    (*(v7 + 8))(v12, v6);
  }

  return result;
}

uint64_t sub_1B6A7BC10(uint64_t a1, uint64_t a2)
{
  sub_1B6AB88A0();
  swift_allocObject();
  sub_1B6AB8890();
  sub_1B6A7C090();
  v2 = sub_1B6AB8870();
  v4 = v3;

  sub_1B6AB8C90();
  return sub_1B6993C94(v2, v4);
}

uint64_t sub_1B6A7BE30()
{

  sub_1B69E9EBC(v0 + OBJC_IVAR____TtC12AppAnalytics27SummaryEventDatabaseManager_lastFlush);

  sub_1B698BDD0(v0 + OBJC_IVAR____TtC12AppAnalytics27SummaryEventDatabaseManager_storageLocation, type metadata accessor for SummaryEventDatabaseManager.StorageLocation);

  return swift_deallocClassInstance();
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(0, a2, a3);
  v7 = (*(*(v6 - 8) + 48))(a1, a2, v6);
  if (v7 >= 2)
  {
    return v7 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  if (a2)
  {
    v7 = (a2 + 1);
  }

  else
  {
    v7 = 0;
  }

  v8 = a5(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, v7, a3, v8);
}

uint64_t sub_1B6A7C02C()
{
  v1 = *(sub_1B6AB8BB0() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1B6A7BC10(v2, v3);
}

unint64_t sub_1B6A7C090()
{
  result = qword_1EB95C4B8;
  if (!qword_1EB95C4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C4B8);
  }

  return result;
}

unint64_t sub_1B6A7C120()
{
  result = qword_1EB95C4C0;
  if (!qword_1EB95C4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C4C0);
  }

  return result;
}

uint64_t sub_1B6A7C174@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24[0] = a1;
  v24[1] = a4;
  v34 = *MEMORY[0x1E69E9840];
  v6 = sub_1B6AB9180();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B6AB91C0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6AB91B0();
  v25 = sub_1B6AB8E20();
  v26 = v14;
  v27 = v15;
  v28 = v16;
  v29 = v17;
  v30 = v18;
  v31 = v19;
  v32 = v20;
  v33 = v21;
  MEMORY[0x1B8C979D0](&v25, &v34);
  sub_1B6A86D54(a2, a3, v13);
  sub_1B6993C94(a2, a3);
  sub_1B6AB91A0();
  sub_1B6A873C0(0);
  sub_1B6AB9170();
  (*(v7 + 8))(v9, v6);
  sub_1B6AB8E10();
  v22 = sub_1B6AB8E40();
  (*(*(v22 - 8) + 8))(v24[0], v22);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_1B6A7C470(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_1B6984584(0, &qword_1EB95C4E0, MEMORY[0x1E69E6370], MEMORY[0x1E69E8660]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v21 - v11;
  sub_1B6A86CF0(0, &qword_1EDBCA4C0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v21 - v14;
  v16 = sub_1B6AB9680();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  (*(v10 + 16))(v12, a1, v9);
  v17 = (*(v10 + 80) + 56) & ~*(v10 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = 0;
  *(v18 + 3) = 0;
  *(v18 + 4) = a2;
  *(v18 + 5) = a3;
  *(v18 + 6) = a4;
  (*(v10 + 32))(&v18[v17], v12, v9);
  v19 = a2;

  sub_1B69EDFB0(0, 0, v15, &unk_1B6AC5240, v18);
  return sub_1B6AB96A0();
}

uint64_t sub_1B6A7C6CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[193] = a7;
  v7[187] = a6;
  v7[181] = a5;
  v7[175] = a4;
  sub_1B6984584(0, &qword_1EB95C4E0, MEMORY[0x1E69E6370], MEMORY[0x1E69E8660]);
  v7[194] = v8;
  v9 = *(v8 - 8);
  v7[195] = v9;
  v7[196] = *(v9 + 64);
  v7[197] = swift_task_alloc();
  v7[198] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B6A7C7D0, 0, 0);
}

uint64_t sub_1B6A7C7D0()
{
  v1 = *(v0 + 1400);
  v2 = sub_1B6AB92B0();
  v3 = [v1 objectForKey_];

  if (v3)
  {
    sub_1B6AB9BC0();
    swift_unknownObjectRelease();
    sub_1B69979CC((v0 + 1368), (v0 + 1336));
  }

  else
  {
    *(v0 + 1336) = 0u;
    *(v0 + 1352) = 0u;
  }

  v4 = *(v0 + 1584);
  v30 = *(v0 + 1576);
  v5 = *(v0 + 1560);
  v6 = *(v0 + 1552);
  v7 = *(v0 + 1544);
  v33 = *(v0 + 1448);
  v35 = *(v0 + 1496);
  v31 = *(v0 + 1400);
  sub_1B6984584(0, &qword_1EDBCBAF0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
  if (swift_dynamicCast())
  {
    v8 = *(v0 + 1640);
  }

  else
  {
    v8 = 2;
  }

  sub_1B6A87778(0);
  v9 = swift_allocObject();
  *(v0 + 1592) = v9;
  *(v9 + 20) = 0;
  *(v9 + 16) = v8;
  v10 = *(v5 + 16);
  v10(v4, v7, v6);
  v10(v30, v4, v6);
  v11 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v12 = swift_allocObject();
  *(v0 + 1600) = v12;
  *(v12 + 2) = v9;
  *(v12 + 3) = v31;
  *(v12 + 4) = v33;
  *(v12 + 5) = v35;
  (*(v5 + 32))(&v12[v11], v4, v6);
  *(swift_task_alloc() + 16) = v7;
  v13 = v31;
  v14 = (v9 + 20);

  os_unfair_lock_lock((v9 + 20));
  v36 = (v9 + 16);
  sub_1B6A87890((v9 + 16));
  v15 = *(v0 + 1576);
  v32 = *(v0 + 1448);
  v34 = *(v0 + 1496);
  v16 = *(v0 + 1400);
  os_unfair_lock_unlock((v9 + 20));

  v17 = objc_opt_self();
  v18 = [v17 defaultCenter];
  v19 = sub_1B6AB9A70();
  *(v0 + 1608) = v19;

  v20 = [v17 defaultCenter];
  v21 = sub_1B6AB92B0();
  v22 = sub_1B6AB9A70();
  *(v0 + 1616) = v22;

  v23 = swift_task_alloc();
  v23[2] = v16;
  v23[3] = v32;
  v23[4] = v34;
  v23[5] = v15;
  os_unfair_lock_lock(v14);
  sub_1B6A878AC(v36);
  v24 = *(v0 + 1576);
  v25 = *(v0 + 1560);
  v26 = *(v0 + 1552);
  os_unfair_lock_unlock(v14);

  (*(v25 + 8))(v24, v26);
  v27 = swift_task_alloc();
  *(v0 + 1624) = v27;
  v27[2] = v19;
  v27[3] = sub_1B6A87804;
  v27[4] = v12;
  swift_asyncLet_begin();
  v28 = swift_task_alloc();
  *(v0 + 1632) = v28;
  v28[2] = v22;
  v28[3] = sub_1B6A87804;
  v28[4] = v12;
  swift_asyncLet_begin();

  return MEMORY[0x1EEE6DEB8](v0 + 16);
}

uint64_t sub_1B6A7CCF4()
{

  return MEMORY[0x1EEE6DEB0](v0 + 16, v1, sub_1B6A7CD5C, v0 + 1504);
}

uint64_t sub_1B6A7CD78()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1B6A7CE30(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 5);
  sub_1B6A87F30(&a1[4]);
  os_unfair_lock_unlock(a1 + 5);
}

uint64_t sub_1B6A7CE88(_BYTE *a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v37 = a1;
  sub_1B6984584(0, &qword_1EB95C4F8, MEMORY[0x1E69E6370], MEMORY[0x1E69E8638]);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v35 - v13;
  v15 = sub_1B6AB92B0();
  v16 = [a2 objectForKey_];

  if (v16)
  {
    sub_1B6AB9BC0();
    swift_unknownObjectRelease();
    sub_1B69979CC(&v38, v39);
  }

  else
  {
    memset(v39, 0, sizeof(v39));
  }

  sub_1B6984584(0, &qword_1EDBCBAF0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
  result = swift_dynamicCast();
  if (result)
  {
    v36 = v12;
    v18 = v38;
    if (v38 != 2)
    {
      v19 = *v37;
      if (v19 == 2 || ((v38 ^ v19) & 1) != 0)
      {
        v35[1] = v5;
        if (qword_1EDBCAA78 != -1)
        {
          swift_once();
        }

        v20 = sub_1B6AB8F90();
        __swift_project_value_buffer(v20, qword_1EDBCFDA8);

        v21 = sub_1B6AB8F80();
        v22 = sub_1B6AB98D0();

        v40 = v22;
        v23 = v22;
        v24 = v21;
        if (os_log_type_enabled(v21, v23))
        {
          v25 = swift_slowAlloc();
          v35[0] = a5;
          v26 = v25;
          v27 = swift_slowAlloc();
          *&v39[0] = v27;
          *v26 = 136315650;
          *(v26 + 4) = sub_1B698F63C(a3, a4, v39);
          *(v26 + 12) = 2080;
          v41 = v19;
          sub_1B6984584(0, &qword_1EB95C4F0, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
          v28 = sub_1B6AB9330();
          v30 = sub_1B698F63C(v28, v29, v39);

          *(v26 + 14) = v30;
          *(v26 + 22) = 2080;
          v31 = v18 & 1;
          v41 = v18 & 1;
          v32 = sub_1B6AB9330();
          v34 = sub_1B698F63C(v32, v33, v39);

          *(v26 + 24) = v34;
          _os_log_impl(&dword_1B697C000, v24, v40, "Observed UserDefaults key '%s' changed from '%s' to '%s'", v26, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1B8C99550](v27, -1, -1);
          MEMORY[0x1B8C99550](v26, -1, -1);
        }

        else
        {

          v31 = v18 & 1;
        }

        *v37 = v18;
        LOBYTE(v39[0]) = v31;
        sub_1B6984584(0, &qword_1EB95C4E0, MEMORY[0x1E69E6370], MEMORY[0x1E69E8660]);
        sub_1B6AB96B0();
        return (*(v36 + 8))(v14, v11);
      }
    }
  }

  return result;
}

uint64_t sub_1B6A7D2A4(unsigned __int8 *a1)
{
  sub_1B6984584(0, &qword_1EB95C4F8, MEMORY[0x1E69E6370], MEMORY[0x1E69E8638]);
  v3 = v2;
  v4 = *(v2 - 8);
  result = MEMORY[0x1EEE9AC00](v2);
  v7 = &v9[-v6];
  v8 = *a1;
  if (v8 != 2)
  {
    v9[15] = v8 & 1;
    sub_1B6984584(0, &qword_1EB95C4E0, MEMORY[0x1E69E6370], MEMORY[0x1E69E8660]);
    sub_1B6AB96B0();
    return (*(v4 + 8))(v7, v3);
  }

  return result;
}

uint64_t *sub_1B6A7D3E8(_OWORD *a1, uint64_t a2, void *a3)
{
  v36 = a2;
  v37 = a3;
  v33 = *v3;
  *&v35 = type metadata accessor for Updater.Storage;
  sub_1B6A86CF0(0, qword_1EDBC8F00, sub_1B69827CC, type metadata accessor for Updater.Storage);
  v6 = v5 - 8;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v34 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v33 - v9;
  sub_1B69827CC(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6A86CF0(0, &qword_1EDBC8E60, sub_1B698148C, type metadata accessor for Updater);
  v14 = swift_allocObject();
  v15 = sub_1B69842A4(MEMORY[0x1E69E7CC0]);
  sub_1B6984500(0, &qword_1EDBC8DF8, &qword_1EDBC8EF8, sub_1B698148C);
  v16 = swift_allocObject();
  *(v16 + 32) = 0;
  *(v16 + 16) = 0;
  *(v16 + 24) = v15;
  *(v14 + 16) = v16;
  v3[2] = v14;
  sub_1B69845D4(0, &qword_1EDBC8E58, type metadata accessor for Updater);
  v17 = swift_allocObject();
  v18 = MEMORY[0x1E69E7CC0];
  v19 = sub_1B69846D4(MEMORY[0x1E69E7CC0]);
  sub_1B698491C(0);
  v20 = swift_allocObject();
  *(v20 + 40) = 0;
  *(v20 + 16) = 0;
  *(v20 + 24) = 0;
  *(v20 + 32) = v19;
  *(v17 + 16) = v20;
  v3[3] = v17;
  v21 = type metadata accessor for UserInformation(0);
  (*(*(v21 - 8) + 56))(v13, 1, 1, v21);
  sub_1B6A86CF0(0, qword_1EDBC8E68, sub_1B69827CC, type metadata accessor for Updater);
  v22 = swift_allocObject();
  sub_1B6984A54(v13, v10, sub_1B69827CC);
  *&v10[*(v6 + 36)] = sub_1B6984ABC(v18);
  sub_1B6984500(0, &qword_1EDBC8E00, qword_1EDBC8F00, sub_1B69827CC);
  v23 = swift_allocObject();
  *(v23 + ((*(*v23 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  v24 = v34;
  sub_1B6A87DA8(v10, v34);
  sub_1B6984D98(v13, sub_1B69827CC);
  sub_1B6983A08(v10, qword_1EDBC8F00, sub_1B69827CC, v35, sub_1B6A86CF0);
  sub_1B6A87E3C(v24, v23 + *(*v23 + *MEMORY[0x1E69E6B68] + 16));
  *(v22 + 16) = v23;
  v3[4] = v22;
  if (*a1)
  {
    v25 = a1[7];
    v40[1] = a1[6];
    v41 = v25;
    v42 = a1[8];
    v26 = a1[3];
    v38[2] = a1[2];
    *v39 = v26;
    v27 = a1[5];
    *&v39[16] = a1[4];
    v40[0] = v27;
    v28 = a1[1];
    v38[0] = *a1;
    v38[1] = v28;
    v3[6] = *&v38[0];
    sub_1B6982544(v38 + 8, (v3 + 7));
    v29 = v3 + OBJC_IVAR____TtC12AppAnalytics15UserDataManager_userIDResetFlag;
    *v29 = *v39;
    v35 = *&v39[8];
    *(v29 + 8) = *&v39[8];
    v30 = *(&v41 + 1);
    *(v29 + 3) = *&v39[24];
    v3[5] = v30;
    sub_1B6982544(v40, (v3 + 12));
    sub_1B6984E58(v36, v3 + OBJC_IVAR____TtC12AppAnalytics15UserDataManager_diagnosticsConsentProvider, type metadata accessor for DiagnosticsConsentProvider);
    *(v3 + OBJC_IVAR____TtC12AppAnalytics15UserDataManager_trackingConsent) = v37;
    v31 = v42;

    sub_1B698BF94(v31);
    sub_1B69EDAD0(v38);
    *(v3 + OBJC_IVAR____TtC12AppAnalytics15UserDataManager_now) = v31;
  }

  else
  {
    sub_1B6984D98(v36, type metadata accessor for DiagnosticsConsentProvider);

    sub_1B6983A08(a1, qword_1EDBC9028, &type metadata for UserDataConfiguration, MEMORY[0x1E69E6720], sub_1B6984584);

    swift_deallocPartialClassInstance();
    return 0;
  }

  return v3;
}

uint64_t sub_1B6A7D9D8()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  sub_1B6A87308(v0 + 96, &qword_1EB95AF70, qword_1EB95AF78, &protocol descriptor for StorefrontProviderType, sub_1B697ED90);
  sub_1B6984D98(v0 + OBJC_IVAR____TtC12AppAnalytics15UserDataManager_diagnosticsConsentProvider, type metadata accessor for DiagnosticsConsentProvider);

  sub_1B69A3100(*(v0 + OBJC_IVAR____TtC12AppAnalytics15UserDataManager_now), *(v0 + OBJC_IVAR____TtC12AppAnalytics15UserDataManager_now + 8));

  return v0;
}

uint64_t sub_1B6A7DABC()
{
  sub_1B6A7D9D8();

  return swift_deallocClassInstance();
}

void sub_1B6A7DB1C()
{
  if (qword_1EDBCAA70 != -1)
  {
    swift_once();
  }

  v0 = sub_1B6AB8F90();
  __swift_project_value_buffer(v0, qword_1EDBCFD80);
  v1 = sub_1B6AB8F80();
  v2 = sub_1B6AB98D0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1B697C000, v1, v2, "UserDataManager: appStart", v3, 2u);
    MEMORY[0x1B8C99550](v3, -1, -1);
  }

  sub_1B6A7DC10();

  sub_1B6A7E858();
}

uint64_t sub_1B6A7DC10()
{
  v1 = v0;
  sub_1B6A86CF0(0, &qword_1EDBCCF40, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v104 = &v91 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v91 - v5;
  v7 = sub_1B6AB8DB0();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v101 = &v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v91 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v103 = &v91 - v14;
  sub_1B69827CC(0);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v102 = &v91 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v91 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v91 - v21;
  v106 = v0[4];
  v23 = *(v106 + 16);
  v24 = *(*v23 + *MEMORY[0x1E69E6B68] + 16);
  v25 = (*(*v23 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v23 + v25));
  sub_1B6984A54(v23 + v24, v22, sub_1B69827CC);
  os_unfair_lock_unlock((v23 + v25));
  v26 = type metadata accessor for UserInformation(0);
  v105 = *(v26 - 8);
  LODWORD(v23) = (*(v105 + 48))(v22, 1, v26);
  result = sub_1B6984D98(v22, sub_1B69827CC);
  if (v23 == 1)
  {
    v94 = v20;
    v95 = v26;
    v96 = v13;
    v99 = v8;
    v100 = v7;
    v29 = v1[10];
    v28 = v1[11];
    __swift_project_boxed_opaque_existential_1(v1 + 7, v29);
    v30 = v1 + OBJC_IVAR____TtC12AppAnalytics15UserDataManager_diagnosticsConsentProvider;
    v31 = &v30[*(type metadata accessor for DiagnosticsConsentProvider(0) + 20)];
    v32 = *v31;
    v97 = *(v31 + 1);
    v98 = v32;
    v32(v107);
    v33 = v107[0];
    v34 = v1;
    v35 = *(v1 + OBJC_IVAR____TtC12AppAnalytics15UserDataManager_trackingConsent);
    v36 = OBJC_IVAR___AATrackingConsent_consented;
    v37 = *(v35 + OBJC_IVAR___AATrackingConsent_consented);
    os_unfair_lock_lock((v37 + 20));
    v38 = *(v37 + 16) == 0;
    os_unfair_lock_unlock((v37 + 20));
    v39 = (v33 & 1) == 0;
    v40 = v6;
    (*(v28 + 32))(v39, v38, v29, v28);
    v92 = v36;
    v93 = v35;
    v41 = v34;
    v42 = v98;
    v43 = v99;
    v44 = *(v99 + 48);
    v45 = v40;
    v46 = v40;
    v47 = v100;
    if (v44(v46, 1, v100) == 1)
    {
      v48 = sub_1B6983A08(v45, &qword_1EDBCCF40, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], sub_1B6A86CF0);
      v49 = *(v34 + OBJC_IVAR____TtC12AppAnalytics15UserDataManager_now);
      if (v49)
      {
        v50 = v104;
        v49(v48);
        (*(v43 + 56))(v50, 0, 1, v47);
        v51 = v47;
        v52 = v96;
        (*(v43 + 32))(v96, v50, v51);
      }

      else
      {
        v62 = v104;
        (*(v43 + 56))(v104, 1, 1, v47);
        v63 = v47;
        v52 = v96;
        sub_1B6AB8D90();
        if (v44(v62, 1, v63) != 1)
        {
          sub_1B6983A08(v62, &qword_1EDBCCF40, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], sub_1B6A86CF0);
        }
      }

      v64 = v41[10];
      v65 = v41[11];
      __swift_project_boxed_opaque_existential_1(v41 + 7, v64);
      v42(v107);
      v66 = v107[0];
      v67 = *(v93 + v92);
      os_unfair_lock_lock((v67 + 20));
      v68 = *(v67 + 16) == 0;
      os_unfair_lock_unlock((v67 + 20));
      (*(v65 + 16))(v52, (v66 & 1) == 0, v68, v64, v65);
      if (qword_1EDBCAA70 != -1)
      {
        swift_once();
      }

      v69 = sub_1B6AB8F90();
      __swift_project_value_buffer(v69, qword_1EDBCFD80);
      v70 = *(v43 + 16);
      v72 = v100;
      v71 = v101;
      v70(v101, v96, v100);
      v73 = sub_1B6AB8F80();
      v74 = sub_1B6AB98D0();
      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        v107[0] = v76;
        *v75 = 136315138;
        sub_1B6A8756C(&qword_1EDBCCC38, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
        v77 = sub_1B6ABA080();
        v78 = v71;
        v80 = v79;
        v104 = *(v99 + 8);
        (v104)(v78, v72);
        v81 = sub_1B698F63C(v77, v80, v107);

        *(v75 + 4) = v81;
        _os_log_impl(&dword_1B697C000, v73, v74, "Successfully stored first app launch date: %s.", v75, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v76);
        MEMORY[0x1B8C99550](v76, -1, -1);
        MEMORY[0x1B8C99550](v75, -1, -1);
      }

      else
      {

        v104 = *(v99 + 8);
        (v104)(v71, v72);
      }

      v82 = v95;
      v83 = v96;
      v84 = v102;
      v70(&v102[*(v95 + 20)], v96, v72);
      *v84 = 0;
      v85 = (*(v105 + 56))(v84, 0, 1, v82);
      v86 = *(v106 + 16);
      MEMORY[0x1EEE9AC00](v85);
      *(&v91 - 2) = v84;
      v87 = *(*v86 + *MEMORY[0x1E69E6B68] + 16);
      v88 = (*(*v86 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((v86 + v88));
      sub_1B6A8744C(v86 + v87, v107);
      os_unfair_lock_unlock((v86 + v88));
      v89 = v107[0];
      MEMORY[0x1EEE9AC00](v90);
      *(&v91 - 2) = v84;
      sub_1B6AB36A4(sub_1B6A87464, (&v91 - 4), v89);

      sub_1B6984D98(v84, sub_1B69827CC);
      return (v104)(v83, v72);
    }

    else
    {
      v53 = v103;
      (*(v43 + 32))(v103, v45, v47);
      v55 = v94;
      v54 = v95;
      (*(v43 + 16))(&v94[*(v95 + 20)], v53, v47);
      *v55 = 1;
      v56 = (*(v105 + 56))(v55, 0, 1, v54);
      v57 = *(v106 + 16);
      MEMORY[0x1EEE9AC00](v56);
      *(&v91 - 2) = v55;
      v58 = *(*v57 + *MEMORY[0x1E69E6B68] + 16);
      v59 = (*(*v57 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((v57 + v59));
      sub_1B6A87ED0(v57 + v58, v107);
      os_unfair_lock_unlock((v57 + v59));
      v60 = v107[0];
      MEMORY[0x1EEE9AC00](v61);
      *(&v91 - 2) = v55;
      sub_1B6AB36A4(sub_1B6A87F00, (&v91 - 4), v60);

      sub_1B6984D98(v55, sub_1B69827CC);
      return (*(v43 + 8))(v53, v47);
    }
  }

  return result;
}

void sub_1B6A7E858()
{
  v1 = v0;
  v2 = *(*(v0 + 16) + 16);
  os_unfair_lock_lock((v2 + 32));
  v3 = *(v2 + 16);

  os_unfair_lock_unlock((v2 + 32));
  if (v3)
  {
  }

  else
  {
    v4 = sub_1B69F791C(MEMORY[0x1E69E7CC0]);
    v5 = *(v1 + 48);
    v6 = *(v5 + 64);
    v30 = v4;
    v7 = 1 << *(v5 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & v6;
    v10 = (v7 + 63) >> 6;

    v11 = 0;
    if (v9)
    {
      while (1)
      {
        v12 = v11;
LABEL_13:
        v13 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
        v14 = v13 | (v12 << 6);
        v15 = (*(v5 + 48) + 16 * v14);
        v16 = *v15;
        v17 = v15[1];
        sub_1B69E12F0(*(v5 + 56) + 48 * v14, v29);
        v28[0] = v16;
        v28[1] = v17;
        sub_1B6992E2C(v16, v17);
        sub_1B6A84D24(v28, v29, v1, &v30);
        sub_1B6984D98(v28, sub_1B6A8726C);
        if (!v9)
        {
          goto LABEL_9;
        }
      }
    }

    while (1)
    {
LABEL_9:
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        return;
      }

      if (v12 >= v10)
      {
        break;
      }

      v9 = *(v5 + 64 + 8 * v12);
      ++v11;
      if (v9)
      {
        v11 = v12;
        goto LABEL_13;
      }
    }

    v18 = v1 + OBJC_IVAR____TtC12AppAnalytics15UserDataManager_userIDResetFlag;
    swift_beginAccess();
    if (!*(v18 + 8) || (v19 = objc_allocWithZone(MEMORY[0x1E695E000]), v20 = sub_1B6AB92B0(), v21 = [v19 initWithSuiteName_], v20, !v21))
    {
      v21 = [objc_opt_self() standardUserDefaults];
    }

    v22 = sub_1B6AB92B0();
    v23 = [v21 BOOLForKey_];
    swift_endAccess();

    if (v23)
    {
      swift_beginAccess();
      if (!*(v18 + 8) || (v24 = objc_allocWithZone(MEMORY[0x1E695E000]), v25 = sub_1B6AB92B0(), v26 = [v24 initWithSuiteName_], v25, !v26))
      {
        v26 = [objc_opt_self() standardUserDefaults];
      }

      v27 = sub_1B6AB92B0();
      [v26 setBool:0 forKey:v27];
      swift_endAccess();
    }

    sub_1B6A801E4(v30);
  }
}

uint64_t sub_1B6A7EB98()
{
  v1[17] = v0;
  sub_1B6A86CF0(0, &qword_1EB95C340, MEMORY[0x1E6968160], MEMORY[0x1E69E6720]);
  v1[18] = swift_task_alloc();
  sub_1B6A87AF0(0);
  v1[19] = v2;
  v1[20] = *(v2 - 8);
  v1[21] = swift_task_alloc();
  v3 = sub_1B6AB9970();
  v1[22] = v3;
  v1[23] = *(v3 - 8);
  v1[24] = swift_task_alloc();
  v4 = sub_1B6AB9A80();
  v1[25] = v4;
  v1[26] = *(v4 - 8);
  v1[27] = swift_task_alloc();
  sub_1B6A87BAC(0);
  v1[28] = v5;
  v1[29] = *(v5 - 8);
  v1[30] = swift_task_alloc();
  sub_1B6A87B10(0, &qword_1EB95C540, MEMORY[0x1E695BF40]);
  v1[31] = v6;
  v1[32] = *(v6 - 8);
  v1[33] = swift_task_alloc();
  type metadata accessor for AnalyticsActor();
  v1[34] = swift_initStaticObject();
  v1[35] = sub_1B6A8756C(&qword_1EDBC7F20, type metadata accessor for AnalyticsActor, &protocol conformance descriptor for AnalyticsActor);
  v8 = sub_1B6AB95E0();
  v1[36] = v8;
  v1[37] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1B6A7EEAC, v8, v7);
}

uint64_t sub_1B6A7EEAC()
{
  v1 = v0[17];
  v0[38] = *(v1 + 24);
  sub_1B6A87CE0(v1 + 96, (v0 + 2));
  v2 = v0[5];
  if (v2)
  {
    v3 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v22 = (*(v3 + 8) + **(v3 + 8));
    v4 = swift_task_alloc();
    v0[39] = v4;
    *v4 = v0;
    v4[1] = sub_1B6A7F310;

    return v22(v2, v3);
  }

  else
  {
    sub_1B6A87308((v0 + 2), &qword_1EB95AF70, qword_1EB95AF78, &protocol descriptor for StorefrontProviderType, sub_1B697ED90);
    sub_1B6A8027C(0, 0);

    v6 = [objc_opt_self() defaultCenter];
    v7 = sub_1B6AB92B0();
    sub_1B6AB9A90();

    sub_1B6AB9960();
    if (qword_1EDBCAA20 != -1)
    {
      swift_once();
    }

    v8 = v0[30];
    v21 = v0[29];
    v20 = v0[28];
    v10 = v0[26];
    v9 = v0[27];
    v12 = v0[24];
    v11 = v0[25];
    v13 = v0[23];
    v19 = v0[22];
    v0[14] = qword_1EDBCFDA0;
    sub_1B6986438(0, &qword_1EDBCA4B0, 0x1E69E9620);
    sub_1B6A8756C(&qword_1EB95C508, MEMORY[0x1E6969F20], MEMORY[0x1E6969F18]);
    sub_1B6A87C78();
    sub_1B6AB8FE0();
    (*(v13 + 8))(v12, v19);
    (*(v10 + 8))(v9, v11);
    v14 = sub_1B6A8756C(&qword_1EB95C538, sub_1B6A87BAC, MEMORY[0x1E695BE68]);
    MEMORY[0x1B8C97830](v20, v14);
    (*(v21 + 8))(v8, v20);
    sub_1B6AB8FD0();
    v15 = sub_1B6A8756C(&qword_1EB95C548, sub_1B6A87AF0, MEMORY[0x1E695BF38]);
    v16 = swift_task_alloc();
    v0[42] = v16;
    *v16 = v0;
    v16[1] = sub_1B6A7F74C;
    v17 = v0[18];
    v18 = v0[19];

    return MEMORY[0x1EEE6D8C8](v17, v18, v15);
  }
}

uint64_t sub_1B6A7F310(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 320) = a1;
  *(v4 + 328) = a2;

  v5 = *(v3 + 296);
  v6 = *(v3 + 288);

  return MEMORY[0x1EEE6DFA0](sub_1B6A7F438, v6, v5);
}

uint64_t sub_1B6A7F438()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  sub_1B6A8027C(v0[40], v0[41]);

  v1 = [objc_opt_self() defaultCenter];
  v2 = sub_1B6AB92B0();
  sub_1B6AB9A90();

  sub_1B6AB9960();
  if (qword_1EDBCAA20 != -1)
  {
    swift_once();
  }

  v3 = v0[30];
  v17 = v0[29];
  v16 = v0[28];
  v5 = v0[26];
  v4 = v0[27];
  v7 = v0[24];
  v6 = v0[25];
  v8 = v0[23];
  v15 = v0[22];
  v0[14] = qword_1EDBCFDA0;
  sub_1B6986438(0, &qword_1EDBCA4B0, 0x1E69E9620);
  sub_1B6A8756C(&qword_1EB95C508, MEMORY[0x1E6969F20], MEMORY[0x1E6969F18]);
  sub_1B6A87C78();
  sub_1B6AB8FE0();
  (*(v8 + 8))(v7, v15);
  (*(v5 + 8))(v4, v6);
  v9 = sub_1B6A8756C(&qword_1EB95C538, sub_1B6A87BAC, MEMORY[0x1E695BE68]);
  MEMORY[0x1B8C97830](v16, v9);
  (*(v17 + 8))(v3, v16);
  sub_1B6AB8FD0();
  v10 = sub_1B6A8756C(&qword_1EB95C548, sub_1B6A87AF0, MEMORY[0x1E695BF38]);
  v11 = swift_task_alloc();
  v0[42] = v11;
  *v11 = v0;
  v11[1] = sub_1B6A7F74C;
  v12 = v0[18];
  v13 = v0[19];

  return MEMORY[0x1EEE6D8C8](v12, v13, v10);
}

uint64_t sub_1B6A7F74C()
{
  v2 = *v1;
  *(v2 + 344) = v0;

  v3 = *(v2 + 272);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_1B6AB95E0();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_1B6A7FE10;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_1B6AB95E0();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_1B6A7F8E4;
  }

  return MEMORY[0x1EEE6DFA0](v7, v4, v6);
}

void sub_1B6A7F8FC()
{
  v1 = v0[18];
  v2 = sub_1B6AB88D0();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[32];
    v3 = v0[33];
    v5 = v0[31];
    (*(v0[20] + 8))(v0[21], v0[19]);
    (*(v4 + 8))(v3, v5);

    v6 = v0[1];

    v6();
  }

  else
  {
    if (qword_1EDBCAA70 != -1)
    {
      swift_once();
    }

    v7 = sub_1B6AB8F90();
    __swift_project_value_buffer(v7, qword_1EDBCFD80);
    v8 = sub_1B6AB8F80();
    v9 = sub_1B6AB98D0();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1B697C000, v8, v9, "Storefront changed, checking ID components...", v10, 2u);
      MEMORY[0x1B8C99550](v10, -1, -1);
    }

    v11 = v0[17];

    sub_1B6A87CE0(v11 + 96, (v0 + 7));
    v12 = v0[10];
    if (v12)
    {
      v13 = v0[11];
      __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
      v25 = (*(v13 + 8) + **(v13 + 8));
      v14 = swift_task_alloc();
      v0[44] = v14;
      *v14 = v0;
      v14[1] = sub_1B6A7FEA0;

      v25(v12, v13);
    }

    else
    {
      sub_1B6A87308((v0 + 7), &qword_1EB95AF70, qword_1EB95AF78, &protocol descriptor for StorefrontProviderType, sub_1B697ED90);
      v15 = v0[43];
      v16 = v0[38];
      v0[12] = 0;
      v0[13] = 0;
      v17 = *(v16 + 16);
      *(swift_task_alloc() + 16) = v0 + 12;
      os_unfair_lock_lock((v17 + 40));
      sub_1B6A87D70((v17 + 16), v0 + 16);
      if (v15)
      {

        os_unfair_lock_unlock((v17 + 40));
      }

      else
      {
        v18 = v0[18];
        os_unfair_lock_unlock((v17 + 40));
        v19 = v0[16];

        v20 = swift_task_alloc();
        *(v20 + 16) = v0 + 12;
        sub_1B6AB370C(sub_1B6A87D8C, v20, v19);

        sub_1B6983A08(v18, &qword_1EB95C340, MEMORY[0x1E6968160], MEMORY[0x1E69E6720], sub_1B6A86CF0);
        v21 = sub_1B6A8756C(&qword_1EB95C548, sub_1B6A87AF0, MEMORY[0x1E695BF38]);
        v22 = swift_task_alloc();
        v0[42] = v22;
        *v22 = v0;
        v22[1] = sub_1B6A7F74C;
        v23 = v0[18];
        v24 = v0[19];

        MEMORY[0x1EEE6D8C8](v23, v24, v21);
      }
    }
  }
}

uint64_t sub_1B6A7FE10()
{
  *(v0 + 120) = *(v0 + 344);
  sub_1B697ED90(0, &qword_1EDBCBB00, MEMORY[0x1E69E7280]);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_1B6A7FEA0(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 360) = a1;
  *(v4 + 368) = a2;

  v5 = *(v3 + 296);
  v6 = *(v3 + 288);

  return MEMORY[0x1EEE6DFA0](sub_1B6A7FFC8, v6, v5);
}

void sub_1B6A7FFC8()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v0[12] = v0[45];
  v1 = v0[43];
  v2 = v0[38];
  v0[13] = v0[46];
  v3 = *(v2 + 16);
  *(swift_task_alloc() + 16) = v0 + 12;
  os_unfair_lock_lock((v3 + 40));
  sub_1B6A87D70((v3 + 16), v0 + 16);
  if (v1)
  {

    os_unfair_lock_unlock((v3 + 40));
  }

  else
  {
    v4 = v0[18];
    os_unfair_lock_unlock((v3 + 40));
    v5 = v0[16];

    v6 = swift_task_alloc();
    *(v6 + 16) = v0 + 12;
    sub_1B6AB370C(sub_1B6A87D8C, v6, v5);

    sub_1B6983A08(v4, &qword_1EB95C340, MEMORY[0x1E6968160], MEMORY[0x1E69E6720], sub_1B6A86CF0);
    v7 = sub_1B6A8756C(&qword_1EB95C548, sub_1B6A87AF0, MEMORY[0x1E695BF38]);
    v8 = swift_task_alloc();
    v0[42] = v8;
    *v8 = v0;
    v8[1] = sub_1B6A7F74C;
    v9 = v0[18];
    v10 = v0[19];

    MEMORY[0x1EEE6D8C8](v9, v10, v7);
  }
}

uint64_t sub_1B6A801E4(uint64_t a1)
{
  v6 = a1;
  v2 = *(v1 + 16);
  v4[6] = &v6;
  os_unfair_lock_lock((v2 + 32));
  sub_1B6A872D0((v2 + 16), &v5);
  os_unfair_lock_unlock((v2 + 32));
  v4[2] = &v6;
  sub_1B6AB36D8(sub_1B6A872EC, v4, v5);
}

uint64_t sub_1B6A8027C(uint64_t a1, uint64_t a2)
{
  v7[0] = a1;
  v7[1] = a2;
  v3 = *(v2 + 16);
  v5[6] = v7;
  os_unfair_lock_lock((v3 + 40));
  sub_1B6A87EE8((v3 + 16), &v6);
  os_unfair_lock_unlock((v3 + 40));
  v5[2] = v7;
  sub_1B6AB370C(sub_1B6A87F18, v5, v6);
}

uint64_t sub_1B6A80314()
{
  v1[3] = v0;
  sub_1B6A86CF0(0, &qword_1EB95C340, MEMORY[0x1E6968160], MEMORY[0x1E69E6720]);
  v1[4] = swift_task_alloc();
  sub_1B6A87A34(0);
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v3 = sub_1B6AB9A80();
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();
  sub_1B6A87A54(0, &qword_1EB95C510, MEMORY[0x1E695BF40]);
  v1[11] = v4;
  v1[12] = *(v4 - 8);
  v1[13] = swift_task_alloc();
  type metadata accessor for AnalyticsActor();
  v1[14] = swift_initStaticObject();
  v1[15] = sub_1B6A8756C(&qword_1EDBC7F20, type metadata accessor for AnalyticsActor, &protocol conformance descriptor for AnalyticsActor);
  v6 = sub_1B6AB95E0();
  v1[16] = v6;
  v1[17] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1B6A80570, v6, v5);
}

uint64_t sub_1B6A80570()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = [objc_opt_self() defaultCenter];
  sub_1B6AB9A90();

  v5 = sub_1B6A8756C(&qword_1EB95C508, MEMORY[0x1E6969F20], MEMORY[0x1E6969F18]);
  MEMORY[0x1B8C97830](v2, v5);
  (*(v3 + 8))(v1, v2);
  sub_1B6AB8FD0();
  v6 = sub_1B6A8756C(&qword_1EB95C518, sub_1B6A87A34, MEMORY[0x1E695BF38]);
  v7 = swift_task_alloc();
  v0[18] = v7;
  *v7 = v0;
  v7[1] = sub_1B6A80720;
  v8 = v0[4];
  v9 = v0[5];

  return MEMORY[0x1EEE6D8C8](v8, v9, v6);
}

uint64_t sub_1B6A80720()
{
  v2 = *v1;
  *(v2 + 152) = v0;

  v3 = *(v2 + 112);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_1B6AB95E0();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_1B6A80B9C;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_1B6AB95E0();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_1B6A808B8;
  }

  return MEMORY[0x1EEE6DFA0](v7, v4, v6);
}

uint64_t sub_1B6A808D0()
{
  v1 = v0[4];
  v2 = sub_1B6AB88D0();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[12];
    v3 = v0[13];
    v5 = v0[11];
    (*(v0[6] + 8))(v0[7], v0[5]);
    (*(v4 + 8))(v3, v5);

    v6 = v0[1];

    return v6();
  }

  else
  {
    if (qword_1EDBCAA70 != -1)
    {
      swift_once();
    }

    v8 = sub_1B6AB8F90();
    __swift_project_value_buffer(v8, qword_1EDBCFD80);
    v9 = sub_1B6AB8F80();
    v10 = sub_1B6AB98D0();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1B697C000, v9, v10, "Significant time change, checking ID components...", v11, 2u);
      MEMORY[0x1B8C99550](v11, -1, -1);
    }

    v12 = v0[4];

    sub_1B6A80C2C();
    sub_1B6983A08(v12, &qword_1EB95C340, MEMORY[0x1E6968160], MEMORY[0x1E69E6720], sub_1B6A86CF0);
    v13 = sub_1B6A8756C(&qword_1EB95C518, sub_1B6A87A34, MEMORY[0x1E695BF38]);
    v14 = swift_task_alloc();
    v0[18] = v14;
    *v14 = v0;
    v14[1] = sub_1B6A80720;
    v15 = v0[4];
    v16 = v0[5];

    return MEMORY[0x1EEE6D8C8](v15, v16, v13);
  }
}

uint64_t sub_1B6A80B9C()
{
  *(v0 + 16) = *(v0 + 152);
  sub_1B697ED90(0, &qword_1EDBCBB00, MEMORY[0x1E69E7280]);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

void sub_1B6A80C2C()
{
  sub_1B6A875B4(0);
  v61 = v1;
  v2 = MEMORY[0x1EEE9AC00](v1);
  v58 = (&v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = MEMORY[0x1EEE9AC00](v2);
  v57 = (&v56 - v5);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v56 - v6);
  v60 = v0;
  v8 = *(v0 + 16);
  v9 = *(v8 + 16);
  os_unfair_lock_lock((v9 + 32));
  v10 = *(v9 + 16);

  os_unfair_lock_unlock((v9 + 32));
  if (v10)
  {
    v56 = v8;
    v62 = sub_1B69F791C(MEMORY[0x1E69E7CC0]);
    v11 = 1 << *(v10 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v10 + 64);
    v14 = (v11 + 63) >> 6;

    v15 = 0;
    if (v13)
    {
      while (1)
      {
        v16 = v15;
LABEL_10:
        v17 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
        v18 = v17 | (v16 << 6);
        v19 = *(v10 + 56);
        v20 = (*(v10 + 48) + 16 * v18);
        v21 = *v20;
        v22 = v20[1];
        v23 = v19 + *(*(type metadata accessor for UserIDComponents(0) - 8) + 72) * v18;
        v24 = *(v61 + 48);
        sub_1B6984A54(v23, v7 + v24, type metadata accessor for UserIDComponents);
        *v7 = v21;
        v7[1] = v22;
        sub_1B6992E2C(v21, v22);
        sub_1B6A83768(v7, v7 + v24, v60, &v62);
        sub_1B6984D98(v7, sub_1B6A875B4);
        if (!v13)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v16 >= v14)
      {
        break;
      }

      v13 = *(v10 + 64 + 8 * v16);
      ++v15;
      if (v13)
      {
        v15 = v16;
        goto LABEL_10;
      }
    }

    v25 = v62 + 64;
    v26 = 1 << *(v62 + 32);
    v27 = -1;
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    v28 = v27 & *(v62 + 64);
    v29 = (v26 + 63) >> 6;
    v59 = v62;

    v30 = 0;
    while (v28)
    {
      v31 = v30;
LABEL_21:
      v32 = __clz(__rbit64(v28));
      v28 &= v28 - 1;
      v33 = v32 | (v31 << 6);
      v34 = *(v59 + 56);
      v35 = (*(v59 + 48) + 16 * v33);
      v37 = *v35;
      v36 = v35[1];
      v38 = (type metadata accessor for UserIDComponents(0) - 8);
      v39 = v34 + *(*v38 + 72) * v33;
      v40 = v57;
      sub_1B6984A54(v39, v57 + *(v61 + 48), type metadata accessor for UserIDComponents);
      *v40 = v37;
      v40[1] = v36;
      v41 = v36;
      v42 = v58;
      sub_1B6984E58(v40, v58, sub_1B6A875B4);
      v44 = *v42;
      v43 = v42[1];
      sub_1B6992E2C(v37, v41);
      sub_1B69C2E8C(v44, v43);
      v45 = v42 + *(v61 + 48);
      LOBYTE(v43) = *(v45 + v38[9]);
      sub_1B6984D98(v45, type metadata accessor for UserIDComponents);
      if (v43)
      {

        v46 = v60 + OBJC_IVAR____TtC12AppAnalytics15UserDataManager_userIDResetFlag;
        swift_beginAccess();
        if (!*(v46 + 8) || (v47 = objc_allocWithZone(MEMORY[0x1E695E000]), v48 = sub_1B6AB92B0(), v49 = [v47 initWithSuiteName_], v48, !v49))
        {
          v49 = [objc_opt_self() standardUserDefaults];
        }

        v50 = sub_1B6AB92B0();
        v51 = [v49 BOOLForKey_];
        swift_endAccess();

        if (v51)
        {
          swift_beginAccess();
          if (!*(v46 + 8) || (v52 = objc_allocWithZone(MEMORY[0x1E695E000]), v53 = sub_1B6AB92B0(), v54 = [v52 initWithSuiteName_], v53, !v54))
          {
            v54 = [objc_opt_self() standardUserDefaults];
          }

          v55 = sub_1B6AB92B0();
          [v54 setBool:0 forKey:v55];
          swift_endAccess();
        }

        sub_1B6A801E4(v59);
LABEL_32:

        return;
      }
    }

    while (1)
    {
      v31 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v31 >= v29)
      {

        goto LABEL_32;
      }

      v28 = *(v25 + 8 * v31);
      ++v30;
      if (v28)
      {
        v30 = v31;
        goto LABEL_21;
      }
    }

LABEL_35:
    __break(1u);
  }
}

uint64_t sub_1B6A81174()
{
  v1[5] = v0;
  v2 = MEMORY[0x1E69E6370];
  sub_1B6984584(0, &qword_1EB95B1A8, MEMORY[0x1E69E6370], MEMORY[0x1E69E8688]);
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  sub_1B6984584(0, &qword_1EB95B1B0, v2, MEMORY[0x1E69E8658]);
  v1[9] = v4;
  v1[10] = *(v4 - 8);
  v1[11] = swift_task_alloc();
  sub_1B6984584(0, &qword_1EB95B1B8, v2, MEMORY[0x1E69E8698]);
  v1[12] = v5;
  v1[13] = *(v5 - 8);
  v1[14] = swift_task_alloc();
  type metadata accessor for AnalyticsActor();
  v1[15] = swift_initStaticObject();
  v1[16] = sub_1B6A8756C(&qword_1EDBC7F20, type metadata accessor for AnalyticsActor, &protocol conformance descriptor for AnalyticsActor);
  v7 = sub_1B6AB95E0();
  v1[17] = v7;
  v1[18] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1B6A813C0, v7, v6);
}

uint64_t sub_1B6A813C0()
{
  v1 = (v0[5] + OBJC_IVAR____TtC12AppAnalytics15UserDataManager_userIDResetFlag);
  swift_beginAccess();
  v18 = v1[2];
  v2 = v1[3];
  if (v1[1])
  {
    v3 = objc_allocWithZone(MEMORY[0x1E695E000]);

    v4 = sub_1B6AB92B0();
    v5 = [v3 initWithSuiteName_];

    if (v5)
    {
      v6 = v2;
      goto LABEL_7;
    }

    v8 = objc_opt_self();
  }

  else
  {
    v7 = objc_opt_self();

    v8 = v7;
  }

  v6 = v2;
  v5 = [v8 standardUserDefaults];
LABEL_7:
  v9 = v0[11];
  v11 = v0[9];
  v10 = v0[10];
  v12 = swift_task_alloc();
  v12[2] = v5;
  v12[3] = v18;
  v12[4] = v6;
  (*(v10 + 104))(v9, *MEMORY[0x1E69E8650], v11);
  sub_1B6AB9700();

  sub_1B6AB96E0();
  v13 = v0[15];
  v14 = v0[16];
  v15 = swift_task_alloc();
  v0[19] = v15;
  *v15 = v0;
  v15[1] = sub_1B6A81610;
  v16 = v0[6];

  return MEMORY[0x1EEE6D9C8](v0 + 20, v13, v14, v16);
}

uint64_t sub_1B6A81610()
{
  v1 = *v0;

  v2 = *(v1 + 144);
  v3 = *(v1 + 136);

  return MEMORY[0x1EEE6DFA0](sub_1B6A81730, v3, v2);
}

uint64_t sub_1B6A81730()
{
  v1 = *(v0 + 160);
  if (v1 == 2)
  {
    v3 = *(v0 + 104);
    v2 = *(v0 + 112);
    v4 = *(v0 + 96);
    (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));
    (*(v3 + 8))(v2, v4);

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    if (qword_1EDBCAA70 != -1)
    {
      swift_once();
    }

    v7 = sub_1B6AB8F90();
    __swift_project_value_buffer(v7, qword_1EDBCFD80);
    v8 = sub_1B6AB8F80();
    v9 = sub_1B6AB98D0();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 67109120;
      *(v10 + 4) = v1 & 1;
      _os_log_impl(&dword_1B697C000, v8, v9, "Reset flag changed: %{BOOL}d", v10, 8u);
      MEMORY[0x1B8C99550](v10, -1, -1);
    }

    sub_1B6A80C2C();
    v11 = *(v0 + 120);
    v12 = *(v0 + 128);
    v13 = swift_task_alloc();
    *(v0 + 152) = v13;
    *v13 = v0;
    v13[1] = sub_1B6A81610;
    v14 = *(v0 + 48);

    return MEMORY[0x1EEE6D9C8](v0 + 160, v11, v12, v14);
  }
}

uint64_t sub_1B6A81954@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  sub_1B6A86CF0(0, &qword_1EDBCAF50, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v25 - v3;
  v5 = type metadata accessor for UserIDComponents(0);
  v26 = *(v5 - 8);
  v27 = v5;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v25 - v9;
  v11 = sub_1B6AB8E40();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v1 + 16);
  v16 = *(v15 + 16);
  os_unfair_lock_lock((v16 + 32));
  v17 = *(v16 + 16);

  os_unfair_lock_unlock((v16 + 32));
  if (v17)
  {
    if (*(v17 + 16))
    {
      v18 = sub_1B69DA824(0, 0);
      if (v19)
      {
        sub_1B6984A54(*(v17 + 56) + *(v26 + 72) * v18, v10, type metadata accessor for UserIDComponents);

        (*(v12 + 16))(v14, &v10[*(v27 + 20)], v11);
        sub_1B6984D98(v10, type metadata accessor for UserIDComponents);
        return (*(v12 + 32))(v28, v14, v11);
      }
    }
  }

  sub_1B6A7DB1C();
  v21 = *(v15 + 16);
  os_unfair_lock_lock((v21 + 32));
  v22 = *(v21 + 16);

  os_unfair_lock_unlock((v21 + 32));
  if (v22)
  {
    if (*(v22 + 16))
    {
      v23 = sub_1B69DA824(0, 0);
      if (v24)
      {
        sub_1B6984A54(*(v22 + 56) + *(v26 + 72) * v23, v8, type metadata accessor for UserIDComponents);

        (*(v12 + 16))(v4, &v8[*(v27 + 20)], v11);
        sub_1B6984D98(v8, type metadata accessor for UserIDComponents);
        (*(v12 + 56))(v4, 0, 1, v11);
        return (*(v12 + 32))(v28, v4, v11);
      }
    }
  }

  (*(v12 + 56))(v4, 1, 1, v11);
  sub_1B6AB8E10();
  result = (*(v12 + 48))(v4, 1, v11);
  if (result != 1)
  {
    return sub_1B6983A08(v4, &qword_1EDBCAF50, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1B6A86CF0);
  }

  return result;
}

uint64_t sub_1B6A81DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v8 = sub_1B6AB8EE0();
  v7[9] = v8;
  v7[10] = *(v8 - 8);
  v7[11] = swift_task_alloc();
  sub_1B6A86CF0(0, &qword_1EB95AF38, MEMORY[0x1E6969BC0], MEMORY[0x1E69E6720]);
  v7[12] = swift_task_alloc();
  v7[13] = swift_task_alloc();
  v9 = sub_1B6AB8F20();
  v7[14] = v9;
  v7[15] = *(v9 - 8);
  v7[16] = swift_task_alloc();
  v7[17] = swift_task_alloc();
  v10 = sub_1B6AB8E50();
  v7[18] = v10;
  v7[19] = *(v10 - 8);
  v7[20] = swift_task_alloc();
  v11 = sub_1B6AB8F00();
  v7[21] = v11;
  v7[22] = *(v11 - 8);
  v7[23] = swift_task_alloc();
  v7[24] = swift_task_alloc();
  v7[25] = type metadata accessor for RotationMode(0);
  v7[26] = swift_task_alloc();
  v12 = sub_1B6AB8E40();
  v7[27] = v12;
  v7[28] = *(v12 - 8);
  v7[29] = swift_task_alloc();
  v13 = type metadata accessor for UserIDComponents(0);
  v7[30] = v13;
  v7[31] = *(v13 - 8);
  v7[32] = swift_task_alloc();
  v7[33] = swift_task_alloc();
  v7[34] = swift_task_alloc();
  sub_1B69827CC(0);
  v7[35] = swift_task_alloc();
  v14 = type metadata accessor for UserInformation(0);
  v7[36] = v14;
  v7[37] = *(v14 - 8);
  v7[38] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B6A821A4, 0, 0);
}

uint64_t sub_1B6A821A4()
{
  v151 = v0;
  v1 = v0[3];
  if (!v1)
  {
    if (qword_1EDBCAA70 != -1)
    {
      swift_once();
    }

    v16 = v0[7];
    v15 = v0[8];
    v17 = sub_1B6AB8F90();
    __swift_project_value_buffer(v17, qword_1EDBCFD80);
    sub_1B6992E2C(v16, v15);
    v8 = sub_1B6AB8F80();
    v9 = sub_1B6AB98D0();
    sub_1B69C2E8C(v16, v15);
    if (!os_log_type_enabled(v8, v9))
    {
      goto LABEL_60;
    }

    v18 = v0[8];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v150[0] = v12;
    *v11 = 136315138;
    if (v18)
    {
      if (v18 == 1)
      {
        v20 = 0x7274656D656C6574;
        v19 = 0xE900000000000079;
      }

      else if (v18 == 2)
      {
        v19 = 0xE800000000000000;
        v20 = 0x656D69746C616572;
      }

      else
      {
        v20 = v0[7];
        v19 = v0[8];
      }
    }

    else
    {
      v20 = 0x6E65764572657375;
      v19 = 0xEA00000000007374;
    }

    sub_1B6992E2C(v0[7], v0[8]);
    v73 = sub_1B698F63C(v20, v19, v150);

    *(v11 + 4) = v73;
    v74 = "Attempted to create user data for %s, but userIDComponents=nil";
    goto LABEL_59;
  }

  v2 = v0[36];
  v3 = v0[37];
  v4 = v0[35];
  sub_1B6984A54(v0[4], v4, sub_1B69827CC);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_1B6984D98(v0[35], sub_1B69827CC);
    if (qword_1EDBCAA70 != -1)
    {
      swift_once();
    }

    v6 = v0[7];
    v5 = v0[8];
    v7 = sub_1B6AB8F90();
    __swift_project_value_buffer(v7, qword_1EDBCFD80);
    sub_1B6992E2C(v6, v5);
    v8 = sub_1B6AB8F80();
    v9 = sub_1B6AB98D0();
    sub_1B69C2E8C(v6, v5);
    if (!os_log_type_enabled(v8, v9))
    {
      goto LABEL_60;
    }

    v10 = v0[8];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v150[0] = v12;
    *v11 = 136315138;
    if (v10)
    {
      if (v10 == 1)
      {
        v14 = 0x7274656D656C6574;
        v13 = 0xE900000000000079;
      }

      else if (v10 == 2)
      {
        v13 = 0xE800000000000000;
        v14 = 0x656D69746C616572;
      }

      else
      {
        v14 = v0[7];
        v13 = v0[8];
      }
    }

    else
    {
      v14 = 0x6E65764572657375;
      v13 = 0xEA00000000007374;
    }

    sub_1B6992E2C(v0[7], v0[8]);
    v85 = sub_1B698F63C(v14, v13, v150);

    *(v11 + 4) = v85;
    v74 = "Attempted to create user data for %s, but userInformation=nil";
LABEL_59:
    _os_log_impl(&dword_1B697C000, v8, v9, v74, v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x1B8C99550](v12, -1, -1);
    MEMORY[0x1B8C99550](v11, -1, -1);
LABEL_60:

    goto LABEL_61;
  }

  v21 = v0[6];
  sub_1B6984E58(v0[35], v0[38], type metadata accessor for UserInformation);
  if (!v21)
  {
    if (qword_1EDBCAA70 != -1)
    {
      swift_once();
    }

    v57 = v0[7];
    v56 = v0[8];
    v58 = sub_1B6AB8F90();
    __swift_project_value_buffer(v58, qword_1EDBCFD80);
    sub_1B6992E2C(v57, v56);
    v59 = sub_1B6AB8F80();
    v60 = sub_1B6AB98D0();
    sub_1B69C2E8C(v57, v56);
    if (os_log_type_enabled(v59, v60))
    {
      v61 = v0[8];
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v150[0] = v63;
      *v62 = 136315138;
      if (v61)
      {
        if (v61 == 1)
        {
          v65 = 0x7274656D656C6574;
          v64 = 0xE900000000000079;
        }

        else if (v61 == 2)
        {
          v64 = 0xE800000000000000;
          v65 = 0x656D69746C616572;
        }

        else
        {
          v65 = v0[7];
          v64 = v0[8];
        }
      }

      else
      {
        v65 = 0x6E65764572657375;
        v64 = 0xEA00000000007374;
      }

      v90 = v0[38];
      sub_1B6992E2C(v0[7], v0[8]);
      v93 = sub_1B698F63C(v65, v64, v150);

      *(v62 + 4) = v93;
      v92 = "Attempted to create user data for %s, but storefront=nil";
      goto LABEL_74;
    }

LABEL_42:
    v72 = v0[38];

    goto LABEL_43;
  }

  if (!*(v1 + 16))
  {
LABEL_35:
    if (qword_1EDBCAA70 != -1)
    {
      swift_once();
    }

    v67 = v0[7];
    v66 = v0[8];
    v68 = sub_1B6AB8F90();
    __swift_project_value_buffer(v68, qword_1EDBCFD80);
    sub_1B6992E2C(v67, v66);
    v59 = sub_1B6AB8F80();
    v60 = sub_1B6AB98D0();
    sub_1B69C2E8C(v67, v66);
    if (os_log_type_enabled(v59, v60))
    {
      v69 = v0[8];
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v150[0] = v63;
      *v62 = 136315138;
      if (v69)
      {
        if (v69 == 1)
        {
          v71 = 0x7274656D656C6574;
          v70 = 0xE900000000000079;
        }

        else if (v69 == 2)
        {
          v70 = 0xE800000000000000;
          v71 = 0x656D69746C616572;
        }

        else
        {
          v71 = v0[7];
          v70 = v0[8];
        }
      }

      else
      {
        v71 = 0x6E65764572657375;
        v70 = 0xEA00000000007374;
      }

      v90 = v0[38];
      sub_1B6992E2C(v0[7], v0[8]);
      v91 = sub_1B698F63C(v71, v70, v150);

      *(v62 + 4) = v91;
      v92 = "Attempted to create user data for %s, but no ID components found";
LABEL_74:
      _os_log_impl(&dword_1B697C000, v59, v60, v92, v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v63);
      MEMORY[0x1B8C99550](v63, -1, -1);
      MEMORY[0x1B8C99550](v62, -1, -1);

LABEL_75:
      sub_1B6984D98(v90, type metadata accessor for UserInformation);
      goto LABEL_61;
    }

    goto LABEL_42;
  }

  v23 = v0 + 8;
  v22 = v0[8];
  v25 = v0 + 7;
  v24 = v0[7];

  v26 = sub_1B69DA824(v24, v22);
  if ((v27 & 1) == 0)
  {

    goto LABEL_35;
  }

  v29 = v0[33];
  v28 = v0[34];
  v30 = *(v0[31] + 72);
  sub_1B6984A54(*(v1 + 56) + v30 * v26, v29, type metadata accessor for UserIDComponents);
  sub_1B6984E58(v29, v28, type metadata accessor for UserIDComponents);
  if (*(v1 + 16))
  {
    v31 = sub_1B69DA824(0, 0);
    if (v32)
    {
      v33 = v0[32];
      v34 = v0[29];
      v35 = v0[30];
      v36 = v0[27];
      v37 = v0[28];
      v146 = v0[8];
      sub_1B6984A54(*(v1 + 56) + v31 * v30, v33, type metadata accessor for UserIDComponents);
      (*(v37 + 16))(v34, v33 + *(v35 + 20), v36);
      sub_1B6984D98(v33, type metadata accessor for UserIDComponents);
      v142 = sub_1B6A6E548();
      v138 = *(v37 + 8);
      v138(v34, v36);
      v38 = v0;
      v39 = sub_1B6AB8DD0();
      v41 = v40;
      v42 = &aUsereventeleme[8 * v146];
      v43 = &aUsereventeleme[8 * v146 + 24];
      if (v146 >= 3)
      {
        v42 = (v0 + 7);
        v43 = (v0 + 8);
      }

      v44 = *v43;
      v45 = *v42;
      v46 = v0[34];
      v47 = v0[26];
      sub_1B6992E2C(v0[7], v0[8]);
      v48 = sub_1B6A72B24();
      v143 = sub_1B6A72B30();
      sub_1B6984A54(v46, v47, type metadata accessor for RotationMode);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v50 = v0[26];
      v148 = v41;
      v149 = v39;
      v145 = v44;
      v147 = v45;
      if (EnumCaseMultiPayload == 1)
      {
        sub_1B698114C(0);
        v52 = *(v51 + 48);
        v53 = *(v51 + 64);
        v54 = sub_1B6AB8DB0();
        v55 = *(*(v54 - 8) + 8);
        v55(v50 + v53, v54);
        v55(v50 + v52, v54);
        v96 = 0;
      }

      else
      {
        sub_1B698103C(0);
        v95 = *(v94 + 48);
        v96 = *(v50 + *(v94 + 80));
        v97 = sub_1B6AB8DB0();
        (*(*(v97 - 8) + 8))(v50 + v95, v97);
      }

      v141 = v96;
      v144 = v48;
      v98 = v38[34];
      v99 = v38[30];
      v100 = v38[26];
      v101 = v38[27];
      v102 = v38[19];
      v103 = v38[20];
      v104 = v38[18];
      v106 = v38[14];
      v105 = v38[15];
      v0 = v38;
      v107 = v38[13];
      v138(v100, v101);
      v140 = *(v98 + *(v99 + 28));
      v135 = *MEMORY[0x1E6969868];
      v133 = *(v102 + 104);
      v133(v103);
      sub_1B6AB8E60();
      v131 = *(v102 + 8);
      v131(v103, v104);
      sub_1B6AB8F10();
      v129 = *(v105 + 48);
      result = v129(v107, 1, v106);
      if (result == 1)
      {
        __break(1u);
      }

      else
      {
        v108 = v0[24];
        v109 = v0[22];
        v124 = v0[21];
        v125 = v0[20];
        v126 = v0[18];
        v127 = v0[14];
        v128 = v0[12];
        v110 = v0[10];
        v111 = v0[11];
        v112 = v0[9];
        v123 = *(v0[15] + 32);
        v123(v0[17], v0[13]);
        sub_1B6AB8ED0();
        v122 = *(v110 + 104);
        v122(v111, *MEMORY[0x1E6969A78], v112);
        v137 = sub_1B6AB8EF0();
        v113 = *(v110 + 8);
        v113(v111, v112);
        v121 = *(v109 + 8);
        v121(v108, v124);
        (v133)(v125, v135, v126);
        sub_1B6AB8E60();
        v131(v125, v126);
        sub_1B6AB8F10();
        result = v129(v128, 1, v127);
        if (result != 1)
        {
          v114 = v0[38];
          v115 = v0[34];
          v116 = v0[23];
          v136 = v0[21];
          v117 = v0[11];
          v118 = v0[9];
          (v123)(v0[16], v0[12], v0[14]);
          sub_1B6AB8ED0();
          v122(v117, *MEMORY[0x1E6969A68], v118);
          v139 = sub_1B6AB8EF0();
          v113(v117, v118);
          v121(v116, v136);
          sub_1B6984D98(v115, type metadata accessor for UserIDComponents);
          v130 = *v114;
          sub_1B6984D98(v114, type metadata accessor for UserInformation);
          v132 = v0[6];
          v134 = v0[5];
          goto LABEL_62;
        }
      }

      __break(1u);
      return result;
    }
  }

  if (qword_1EDBCAA70 != -1)
  {
    swift_once();
  }

  v75 = *v23;
  v76 = *v25;
  v77 = sub_1B6AB8F90();
  __swift_project_value_buffer(v77, qword_1EDBCFD80);
  sub_1B6992E2C(v76, v75);
  v78 = sub_1B6AB8F80();
  v79 = sub_1B6AB98D0();
  sub_1B69C2E8C(v76, v75);
  if (os_log_type_enabled(v78, v79))
  {
    v80 = *v23;
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v150[0] = v82;
    *v81 = 136315138;
    if (v80)
    {
      if (v80 == 1)
      {
        v84 = 0x7274656D656C6574;
        v83 = 0xE900000000000079;
      }

      else if (v80 == 2)
      {
        v83 = 0xE800000000000000;
        v84 = 0x656D69746C616572;
      }

      else
      {
        v83 = *v23;
        v84 = *v25;
      }
    }

    else
    {
      v84 = 0x6E65764572657375;
      v83 = 0xEA00000000007374;
    }

    v90 = v0[38];
    v119 = v0[34];
    sub_1B6992E2C(v0[7], v0[8]);
    v120 = sub_1B698F63C(v84, v83, v150);

    *(v81 + 4) = v120;
    _os_log_impl(&dword_1B697C000, v78, v79, "Attempted to create user data for %s, but no sampling value found", v81, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v82);
    MEMORY[0x1B8C99550](v82, -1, -1);
    MEMORY[0x1B8C99550](v81, -1, -1);

    sub_1B6984D98(v119, type metadata accessor for UserIDComponents);
    goto LABEL_75;
  }

  v72 = v0[38];
  v89 = v0[34];

  sub_1B6984D98(v89, type metadata accessor for UserIDComponents);
LABEL_43:
  sub_1B6984D98(v72, type metadata accessor for UserInformation);
LABEL_61:
  v148 = 0;
  v149 = 0;
  v145 = 0;
  v147 = 0;
  v143 = 0;
  v144 = 0;
  v141 = 0;
  v137 = 0;
  v139 = 0;
  v132 = 0;
  v134 = 0;
  v142 = 0;
  v130 = 0;
  v140 = 0;
LABEL_62:
  v86 = v0[2];

  *v86 = v149;
  *(v86 + 8) = v148;
  *(v86 + 16) = v147;
  *(v86 + 24) = v145;
  *(v86 + 32) = v144;
  *(v86 + 40) = v143;
  *(v86 + 48) = v141;
  *(v86 + 56) = v140;
  *(v86 + 64) = v137;
  *(v86 + 72) = v139;
  *(v86 + 80) = v134;
  *(v86 + 88) = v132;
  *(v86 + 96) = v142;
  *(v86 + 104) = v130;
  v87 = v0[1];

  return v87();
}

uint64_t sub_1B6A831DC(uint64_t a1, uint64_t *a2)
{
  v2[2] = a1;
  v4 = type metadata accessor for UserIDComponents(0);
  v2[3] = v4;
  v2[4] = *(v4 - 8);
  v2[5] = swift_task_alloc();
  v5 = swift_task_alloc();
  v6 = *a2;
  v2[6] = v5;
  v2[7] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1B6A832B0, 0, 0);
}

uint64_t sub_1B6A832B0()
{
  v1 = v0[7];
  if (!v1)
  {
    if (qword_1EDBCAA70 != -1)
    {
      swift_once();
    }

    v15 = sub_1B6AB8F90();
    __swift_project_value_buffer(v15, qword_1EDBCFD80);
    v11 = sub_1B6AB8F80();
    v12 = sub_1B6AB98D0();
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_14;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = "Attempted to create essential user data, but userIDComponents=nil";
    goto LABEL_13;
  }

  if (*(v1 + 16))
  {
    v2 = sub_1B69DA824(0x6169746E65737365, 0xEF73746E6576456CLL);
    if (v3)
    {
      v5 = v0[5];
      v4 = v0[6];
      v6 = v0[2];
      sub_1B6984A54(*(v1 + 56) + *(v0[4] + 72) * v2, v5, type metadata accessor for UserIDComponents);
      sub_1B6984E58(v5, v4, type metadata accessor for UserIDComponents);
      v7 = sub_1B6AB8DD0();
      v9 = v8;
      sub_1B6984D98(v4, type metadata accessor for UserIDComponents);
      *v6 = v7;
      v6[1] = v9;
      goto LABEL_15;
    }
  }

  if (qword_1EDBCAA70 != -1)
  {
    swift_once();
  }

  v10 = sub_1B6AB8F90();
  __swift_project_value_buffer(v10, qword_1EDBCFD80);
  v11 = sub_1B6AB8F80();
  v12 = sub_1B6AB98D0();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = "Attempted to create essential user data, but userIDComponents does not contain a value for essentialEvents";
LABEL_13:
    _os_log_impl(&dword_1B697C000, v11, v12, v14, v13, 2u);
    MEMORY[0x1B8C99550](v13, -1, -1);
  }

LABEL_14:
  v16 = v0[2];

  *v16 = 0;
  v16[1] = 0;
LABEL_15:

  v17 = v0[1];

  return v17();
}

uint64_t sub_1B6A83538@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for UserIDComponents(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = a1[1];
  v11 = *(*(v2 + 16) + 16);
  os_unfair_lock_lock((v11 + 32));
  v12 = *(v11 + 16);

  os_unfair_lock_unlock((v11 + 32));
  if (v12)
  {
    if (*(v12 + 16))
    {
      v13 = sub_1B69DA824(v9, v10);
      if (v14)
      {
        sub_1B6984A54(*(v12 + 56) + *(v6 + 72) * v13, v8, type metadata accessor for UserIDComponents);

        v15 = *(v5 + 20);
        v16 = sub_1B6AB8E40();
        v17 = *(v16 - 8);
        (*(v17 + 16))(a2, &v8[v15], v16);
        sub_1B6984D98(v8, type metadata accessor for UserIDComponents);
        return (*(v17 + 56))(a2, 0, 1, v16);
      }
    }
  }

  v19 = sub_1B6AB8E40();
  v20 = *(*(v19 - 8) + 56);

  return v20(a2, 1, 1, v19);
}

uint64_t sub_1B6A83768(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v180 = a4;
  v178 = a2;
  v6 = MEMORY[0x1E69E6720];
  sub_1B6A86CF0(0, &qword_1EB95AE78, type metadata accessor for UserIDComponents, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v172 = &v159 - v8;
  v164 = type metadata accessor for StoredUserIDComponents(0);
  MEMORY[0x1EEE9AC00](v164);
  v165 = &v159 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B6AB8E40();
  v182 = *(v10 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v168 = (&v159 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x1EEE9AC00](v11);
  v167 = &v159 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v173 = &v159 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v159 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v183 = &v159 - v20;
  v185 = type metadata accessor for RotationMode(0);
  v21 = MEMORY[0x1EEE9AC00](v185);
  v23 = &v159 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v187 = &v159 - v24;
  sub_1B6A86CF0(0, &qword_1EDBCCF40, MEMORY[0x1E6969530], v6);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = &v159 - v26;
  v28 = sub_1B6AB8DB0();
  v29 = *(v28 - 8);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v169 = (&v159 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = MEMORY[0x1EEE9AC00](v30);
  v170 = &v159 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v175 = &v159 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v184 = &v159 - v37;
  MEMORY[0x1EEE9AC00](v36);
  v39 = &v159 - v38;
  v190 = type metadata accessor for UserIDComponents(0);
  v171 = *(v190 - 1);
  v40 = MEMORY[0x1EEE9AC00](v190);
  v163 = &v159 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x1EEE9AC00](v40);
  v44 = &v159 - v43;
  v45 = a1[1];
  v179 = *a1;
  v46 = *(a3 + OBJC_IVAR____TtC12AppAnalytics15UserDataManager_now);
  v186 = v29;
  v174 = v45;
  v188 = v39;
  v189 = v10;
  if (v46)
  {
    v46(v42);
    (*(v29 + 56))(v27, 0, 1, v28);
    (*(v29 + 32))(v39, v27, v28);
  }

  else
  {
    (*(v29 + 56))(v27, 1, 1, v28);
    sub_1B6AB8D90();
    if ((*(v29 + 48))(v27, 1, v28) != 1)
    {
      sub_1B6983A08(v27, &qword_1EDBCCF40, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], sub_1B6A86CF0);
    }
  }

  v176 = v19;
  v166 = a3;
  v47 = a3 + OBJC_IVAR____TtC12AppAnalytics15UserDataManager_userIDResetFlag;
  swift_beginAccess();
  if (!*(v47 + 8) || (v48 = v44, v49 = objc_allocWithZone(MEMORY[0x1E695E000]), v50 = sub_1B6AB92B0(), v51 = v49, v44 = v48, v52 = [v51 initWithSuiteName_], v50, !v52))
  {
    v52 = [objc_opt_self() standardUserDefaults];
  }

  v53 = sub_1B6AB92B0();
  LODWORD(v177) = [v52 BOOLForKey_];
  swift_endAccess();

  v54 = v178;
  v55 = v187;
  sub_1B6984A54(v178, v187, type metadata accessor for RotationMode);
  v56 = v190;
  v57 = (v54 + v190[6]);
  v59 = *v57;
  v58 = v57[1];
  v60 = v44;
  v61 = v186;
  v62 = v184;
  (*(v186 + 16))(v184, v188, v28);
  v63 = &v60[v56[6]];
  *v63 = v59;
  v63[1] = v58;
  sub_1B6984A54(v55, v23, type metadata accessor for RotationMode);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v181 = v60;
  if (EnumCaseMultiPayload != 1)
  {
    v101 = v177;
    sub_1B698103C(0);
    v103 = v102;
    v104 = v102[12];
    v178 = *&v23[v102[16]];
    v100 = *&v23[v102[20]];
    v105 = v182;
    v106 = *(v182 + 32);
    v176 = (v182 + 32);
    v170 = v106;
    (v106)(v183, v23, v189);
    v107 = *(v61 + 32);
    v99 = v61 + 32;
    v169 = v107;
    v107(v175, &v23[v104], v28);
    result = sub_1B69FAD2C(v62);
    if (!v59)
    {
      __break(1u);
      goto LABEL_37;
    }

    if (result == 0x8000000000000000 && v59 == -1)
    {
      goto LABEL_39;
    }

    if (v101)
    {
      if (__OFADD__(v100++, 1))
      {
        goto LABEL_40;
      }
    }

    v168 = v103;
    v109 = result / v59;
    v162 = result / v59;
    LODWORD(v177) = (result / v59 != v178) | v101;
    v110 = *(v105 + 16);
    v111 = v173;
    v178 = v28;
    v112 = v105;
    v113 = v189;
    v110(v173, v183, v189);
    v159 = v190[5];
    v114 = v100;
    v160 = v100;
    v115 = v167;
    v110(v167, v111, v113);
    v193 = v109;
    v161 = v99;
    v196 = sub_1B6ABA080();
    v197 = v116;
    MEMORY[0x1B8C97BE0](59, 0xE100000000000000);
    v193 = v114;
    v117 = sub_1B6ABA080();
    MEMORY[0x1B8C97BE0](v117);

    MEMORY[0x1B8C97BE0](59, 0xE100000000000000);
    v193 = v59;
    v118 = sub_1B6ABA080();
    MEMORY[0x1B8C97BE0](v118);

    v119 = sub_1B699F46C(v196, v197);
    v120 = v181;
    sub_1B6A7C174(v115, v119, v121, v181 + v159);
    v122 = *(v186 + 8);
    v123 = v178;
    v122(v184, v178);
    sub_1B6984D98(v187, type metadata accessor for RotationMode);
    (*(v112 + 8))(v111, v113);
    v124 = v168[12];
    v125 = v168[16];
    v126 = v168[20];
    (v170)(v120, v183, v113);
    v169(v120 + v124, v175, v123);
    *(v120 + v125) = v162;
    v99 = v120;
    *(v120 + v126) = v160;
    swift_storeEnumTagMultiPayload();
    LOBYTE(v111) = v177;
    *(v120 + v190[7]) = v177 & 1;
    v122(v188, v123);
    v59 = v174;
    v100 = v179;
    if (v111)
    {
LABEL_20:
      if (qword_1EDBCAA70 == -1)
      {
LABEL_21:
        v127 = sub_1B6AB8F90();
        v128 = __swift_project_value_buffer(v127, qword_1EDBCFD80);
        sub_1B6992E2C(v100, v59);
        v129 = sub_1B6AB8F80();
        v130 = sub_1B6AB98D0();
        sub_1B69C2E8C(v100, v59);
        if (os_log_type_enabled(v129, v130))
        {
          v131 = swift_slowAlloc();
          v132 = swift_slowAlloc();
          v196 = v132;
          *v131 = 136315138;
          if (v59)
          {
            if (v59 == 1)
            {
              v134 = 0x7274656D656C6574;
              v133 = 0xE900000000000079;
            }

            else if (v59 == 2)
            {
              v133 = 0xE800000000000000;
              v134 = 0x656D69746C616572;
            }

            else
            {
              v134 = v100;
              v133 = v59;
            }
          }

          else
          {
            v134 = 0x6E65764572657375;
            v133 = 0xEA00000000007374;
          }

          sub_1B6992E2C(v100, v59);
          v140 = sub_1B698F63C(v134, v133, &v196);

          *(v131 + 4) = v140;
          _os_log_impl(&dword_1B697C000, v129, v130, "Rotated user ID for kind: %s", v131, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v132);
          MEMORY[0x1B8C99550](v132, -1, -1);
          MEMORY[0x1B8C99550](v131, -1, -1);

          v139 = v166;
          v99 = v181;
        }

        else
        {

          v139 = v166;
        }

        v141 = *(v139 + 48);
        if (*(v141 + 16))
        {
          v142 = sub_1B69DA824(v100, v59);
          if (v143)
          {
            v188 = v128;
            sub_1B69E12F0(*(v141 + 56) + 48 * v142, &v196);
            sub_1B6982544(&v197, &v193);
            sub_1B6A6E478(&v196);
            v144 = v190;
            v145 = v99;
            v146 = v194;
            v147 = v195;
            v189 = __swift_project_boxed_opaque_existential_1(&v193, v194);
            v148 = v163;
            sub_1B6984A54(v145, v163, type metadata accessor for UserIDComponents);
            v149 = v165;
            sub_1B6984A54(v148, v165, type metadata accessor for RotationMode);
            v150 = (v148 + v144[6]);
            v151 = *v150;
            v152 = v150[1];
            sub_1B6984D98(v148, type metadata accessor for UserIDComponents);
            v153 = (v149 + *(v164 + 20));
            *v153 = v151;
            v153[1] = v152;
            v192[0] = v100;
            v192[1] = v59;
            v154 = v139 + OBJC_IVAR____TtC12AppAnalytics15UserDataManager_diagnosticsConsentProvider;
            v155 = type metadata accessor for DiagnosticsConsentProvider(0);
            (*(v154 + *(v155 + 20)))(&v191);
            LOBYTE(v152) = v191;
            v156 = *(*(v139 + OBJC_IVAR____TtC12AppAnalytics15UserDataManager_trackingConsent) + OBJC_IVAR___AATrackingConsent_consented);
            os_unfair_lock_lock((v156 + 20));
            v157 = *(v156 + 16) == 0;
            os_unfair_lock_unlock((v156 + 20));
            (*(v147 + 16))(v149, v192, (v152 & 1) == 0, v157, v146, v147);
            sub_1B6984D98(v149, type metadata accessor for StoredUserIDComponents);
            __swift_destroy_boxed_opaque_existential_1(&v193);
            v99 = v145;
          }
        }

        goto LABEL_35;
      }

LABEL_37:
      swift_once();
      goto LABEL_21;
    }

LABEL_35:
    v158 = v172;
    sub_1B6984A54(v99, v172, type metadata accessor for UserIDComponents);
    (*(v171 + 56))(v158, 0, 1, v190);
    sub_1B6992E2C(v100, v59);
    sub_1B69E237C(v158, v100, v59);
    return sub_1B6984D98(v99, type metadata accessor for UserIDComponents);
  }

  sub_1B698114C(0);
  v66 = *(v65 + 48);
  v67 = *(v65 + 64);
  v68 = v182 + 32;
  v183 = *(v182 + 32);
  (v183)(v176, v23, v189);
  v69 = *(v61 + 32);
  v70 = &v23[v66];
  v71 = v170;
  v69(v170, v70, v28);
  v72 = &v23[v67];
  v73 = v169;
  v175 = (v61 + 32);
  v162 = v69;
  v69(v169, v72, v28);
  v74 = sub_1B69FAD2C(v62) >= v59;
  if (((v74 | v177) & 1) == 0)
  {
    v135 = v71;
    v136 = *(v61 + 8);
    v136(v62, v28);
    v136(v73, v28);
    v136(v135, v28);
    v137 = v190;
    v138 = v181;
    (v183)(v181 + v190[5], v176, v189);
    *(v138 + v137[7]) = 0;
    sub_1B6984E58(v187, v138, type metadata accessor for RotationMode);
    v136(v188, v28);
    v99 = v138;
    v59 = v174;
    v100 = v179;
    goto LABEL_35;
  }

  v75 = v177;
  v161 = v68;
  v178 = v28;
  v76 = v189;
  sub_1B6AB8E30();
  result = sub_1B69FAD2C(v62);
  if (!v59)
  {
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (result != 0x8000000000000000 || v59 != -1)
  {
    v78 = v75;
    v79 = v182;
    v80 = *(v182 + 16);
    v81 = result / v59;
    v177 = result / v59;
    v82 = v173;
    v83 = v76;
    v80(v173, v168, v76);
    v84 = v190;
    v160 = v190[5];
    v85 = v167;
    v80(v167, v82, v83);
    v193 = v81;
    v196 = sub_1B6ABA080();
    v197 = v86;
    MEMORY[0x1B8C97BE0](59, 0xE100000000000000);
    v193 = v78;
    v87 = sub_1B6ABA080();
    MEMORY[0x1B8C97BE0](v87);

    MEMORY[0x1B8C97BE0](59, 0xE100000000000000);
    v193 = v59;
    v88 = sub_1B6ABA080();
    MEMORY[0x1B8C97BE0](v88);

    v89 = sub_1B699F46C(v196, v197);
    v90 = v181;
    sub_1B6A7C174(v85, v89, v91, v181 + v160);
    v92 = *(v186 + 8);
    v93 = v178;
    v92(v184, v178);
    sub_1B6984D98(v187, type metadata accessor for RotationMode);
    v94 = *(v79 + 8);
    v94(v173, v83);
    v92(v169, v93);
    v94(v176, v83);
    sub_1B698103C(0);
    v96 = v95[12];
    v97 = v95[16];
    v98 = v95[20];
    (v183)(v90, v168, v83);
    (v162)(v90 + v96, v170, v93);
    *(v90 + v97) = v177;
    v99 = v90;
    *(v90 + v98) = v78;
    swift_storeEnumTagMultiPayload();
    *(v90 + v84[7]) = 1;
    v92(v188, v93);
    v59 = v174;
    v100 = v179;
    goto LABEL_20;
  }

LABEL_41:
  __break(1u);
  return result;
}

void sub_1B6A84D24(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v242 = a4;
  v270 = a3;
  v6 = MEMORY[0x1E69E6720];
  sub_1B6A86CF0(0, &qword_1EB95AE78, type metadata accessor for UserIDComponents, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v241 = &v231 - v8;
  v250 = sub_1B6AB8E40();
  v248 = *(v250 - 8);
  v9 = MEMORY[0x1EEE9AC00](v250);
  v245 = &v231 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v238 = &v231 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v246 = &v231 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v251 = &v231 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v249 = &v231 - v17;
  v253 = type metadata accessor for RotationMode(0);
  v18 = MEMORY[0x1EEE9AC00](v253);
  v244 = &v231 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v263 = &v231 - v20;
  sub_1B6A86CF0(0, &qword_1EDBCCF40, MEMORY[0x1E6969530], v6);
  v22 = MEMORY[0x1EEE9AC00](v21 - 8);
  v258 = &v231 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v257 = (&v231 - v24);
  v25 = sub_1B6AB8DB0();
  v265 = *(v25 - 8);
  v266 = v25;
  v26 = MEMORY[0x1EEE9AC00](v25);
  v239 = &v231 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v247 = &v231 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v243 = &v231 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v261 = &v231 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v262 = &v231 - v35;
  MEMORY[0x1EEE9AC00](v34);
  v256 = &v231 - v36;
  v267 = type metadata accessor for UserIDComponents(0);
  v240 = *(v267 - 8);
  v37 = MEMORY[0x1EEE9AC00](v267);
  v254 = &v231 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x1EEE9AC00](v37);
  v252 = &v231 - v40;
  MEMORY[0x1EEE9AC00](v39);
  v259 = &v231 - v41;
  sub_1B6A86CF0(0, qword_1EB95B258, type metadata accessor for StoredUserIDComponents, v6);
  MEMORY[0x1EEE9AC00](v42 - 8);
  v44 = &v231 - v43;
  v264 = type metadata accessor for StoredUserIDComponents(0);
  v255 = *(v264 - 8);
  v45 = MEMORY[0x1EEE9AC00](v264);
  v237 = &v231 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x1EEE9AC00](v45);
  v49 = &v231 - v48;
  v50 = MEMORY[0x1EEE9AC00](v47);
  v52 = &v231 - v51;
  MEMORY[0x1EEE9AC00](v50);
  v54 = &v231 - v53;
  v56 = *a1;
  v55 = a1[1];
  v57 = a2;
  v59 = a2[4];
  v58 = a2[5];
  v260 = v57;
  __swift_project_boxed_opaque_existential_1(v57 + 1, v59);
  v268 = v56;
  v269 = v55;
  v272 = v56;
  v273 = v55;
  v60 = v44;
  v61 = v270 + OBJC_IVAR____TtC12AppAnalytics15UserDataManager_diagnosticsConsentProvider;
  v62 = (v61 + *(type metadata accessor for DiagnosticsConsentProvider(0) + 20));
  v63 = *v62;
  v64 = v62[1];
  (*v62)(&v271);
  (*(v58 + 24))(&v272, (v271 & 1) == 0, v59, v58);
  v232 = 0;
  v65 = v256;
  v231 = v52;
  v66 = v257;
  v67 = v258;
  v236 = v49;
  v233 = v64;
  v235 = v54;
  v68 = v264;
  v69 = (*(v255 + 48))(v60, 1, v264);
  v234 = v63;
  if (v69 != 1)
  {
    v79 = v235;
    sub_1B6984E58(v60, v235, type metadata accessor for StoredUserIDComponents);
    v80 = sub_1B6984A54(v79, v236, type metadata accessor for StoredUserIDComponents);
    v259 = *v260;
    v81 = v270;
    v82 = v266;
    if (*(v270 + OBJC_IVAR____TtC12AppAnalytics15UserDataManager_now))
    {
      (*(v270 + OBJC_IVAR____TtC12AppAnalytics15UserDataManager_now))(v80);
      v83 = v265;
      (*(v265 + 56))(v67, 0, 1, v82);
      (*(v83 + 32))(v262, v67, v82);
      v84 = v263;
    }

    else
    {
      v103 = v265;
      (*(v265 + 56))(v67, 1, 1, v266);
      sub_1B6AB8D90();
      v104 = (*(v103 + 48))(v67, 1, v82);
      v84 = v263;
      if (v104 != 1)
      {
        sub_1B6983A08(v67, &qword_1EDBCCF40, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], sub_1B6A86CF0);
      }
    }

    v105 = v81 + OBJC_IVAR____TtC12AppAnalytics15UserDataManager_userIDResetFlag;
    swift_beginAccess();
    if (!*(v105 + 8) || (v106 = objc_allocWithZone(MEMORY[0x1E695E000]), v107 = sub_1B6AB92B0(), v108 = v106, v84 = v263, v109 = [v108 initWithSuiteName_], v107, !v109))
    {
      v109 = [objc_opt_self() standardUserDefaults];
    }

    v110 = sub_1B6AB92B0();
    v72 = [v109 BOOLForKey_];
    swift_endAccess();

    v111 = v236;
    sub_1B6984A54(v236, v84, type metadata accessor for RotationMode);
    v112 = v265;
    v113 = (v111 + *(v264 + 20));
    v115 = *v113;
    v114 = v113[1];
    (*(v265 + 16))(v261, v262, v82);
    v116 = v259;
    v117 = v250;
    v118 = v248;
    v97 = v251;
    if (v259 != v115 && (v119 = __OFADD__(v114, 1), ++v114, v119))
    {
      __break(1u);
    }

    else
    {
      v120 = v72;
      v121 = &v254[*(v267 + 24)];
      *v121 = v259;
      *(v121 + 1) = v114;
      v72 = v244;
      sub_1B6984A54(v263, v244, type metadata accessor for RotationMode);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1B698114C(0);
        v123 = *(v122 + 48);
        v124 = *(v122 + 64);
        v257 = *(v118 + 32);
        v258 = (v118 + 32);
        v257(v97, v72, v117);
        v97 = v112 + 32;
        v125 = *(v112 + 32);
        v126 = &v72[v123];
        v127 = v266;
        v125(v247, v126, v266);
        v128 = &v72[v124];
        v129 = v239;
        v256 = v125;
        v125(v239, v128, v127);
        v162 = v116 == v115;
        v130 = v261;
        if (!v162 || (v131 = sub_1B69FAD2C(v261), (v131 >= v259) | v120 & 1))
        {
          sub_1B6AB8E30();
          v132 = sub_1B69FAD2C(v130);
          if (v259)
          {
            v133 = v246;
            v134 = v248;
            if (v132 == 0x8000000000000000 && v259 == -1)
            {
              __break(1u);
              return;
            }

            v249 = v120;
            v135 = *(v248 + 16);
            v136 = v132 / v259;
            v255 = v132 / v259;
            v137 = v259;
            v135(v246, v245, v117);
            v244 = *(v267 + 20);
            v138 = v238;
            v135(v238, v133, v117);
            v271 = v136;
            v272 = sub_1B6ABA080();
            v273 = v139;
            MEMORY[0x1B8C97BE0](59, 0xE100000000000000);
            v271 = v120;
            v140 = sub_1B6ABA080();
            MEMORY[0x1B8C97BE0](v140);

            MEMORY[0x1B8C97BE0](59, 0xE100000000000000);
            v271 = v137;
            v141 = sub_1B6ABA080();
            MEMORY[0x1B8C97BE0](v141);

            v142 = sub_1B699F46C(v272, v273);
            v143 = v254;
            sub_1B6A7C174(v138, v142, v144, &v254[v244]);
            v145 = v266;
            v146 = *(v265 + 8);
            v146(v261, v266);
            sub_1B6984D98(v263, type metadata accessor for RotationMode);
            v147 = *(v134 + 8);
            v147(v246, v117);
            v146(v239, v145);
            v147(v251, v117);
            sub_1B698103C(0);
            v149 = v148[12];
            v150 = v148[16];
            v151 = v148[20];
            v257(v143, v245, v117);
            v152 = &v143[v149];
            v153 = v267;
            (v256)(v152, v247, v145);
            v120 = v143;
            *&v143[v150] = v255;
            *&v143[v151] = v249;
            swift_storeEnumTagMultiPayload();
            v143[*(v153 + 28)] = 1;
            v146(v262, v145);
            sub_1B6984D98(v236, type metadata accessor for StoredUserIDComponents);
            v72 = v268;
            v97 = v269;
LABEL_37:
            v182 = v260[4];
            v183 = v260[5];
            __swift_project_boxed_opaque_existential_1(v260 + 1, v182);
            v184 = v252;
            sub_1B6984A54(v120, v252, type metadata accessor for UserIDComponents);
            v185 = v237;
            sub_1B6984A54(v184, v237, type metadata accessor for RotationMode);
            v186 = (v184 + *(v153 + 24));
            v187 = *v186;
            v188 = v186[1];
            v189 = sub_1B6984D98(v184, type metadata accessor for UserIDComponents);
            v190 = (v185 + *(v264 + 20));
            *v190 = v187;
            v190[1] = v188;
            v272 = v72;
            v273 = v97;
            v234(&v271, v189);
            LOBYTE(v188) = v271;
            v191 = *(*(v270 + OBJC_IVAR____TtC12AppAnalytics15UserDataManager_trackingConsent) + OBJC_IVAR___AATrackingConsent_consented);
            os_unfair_lock_lock((v191 + 20));
            v192 = *(v191 + 16) == 0;
            os_unfair_lock_unlock((v191 + 20));
            v100 = v232;
            (*(v183 + 16))(v185, &v272, (v188 & 1) == 0, v192, v182, v183);
            if (v100)
            {
              sub_1B6984D98(v185, type metadata accessor for StoredUserIDComponents);
              sub_1B6984D98(v120, type metadata accessor for UserIDComponents);
              v102 = v235;
              v101 = type metadata accessor for StoredUserIDComponents;
              goto LABEL_39;
            }

            sub_1B6984D98(v185, type metadata accessor for StoredUserIDComponents);
            if (qword_1EDBCAA70 == -1)
            {
              goto LABEL_58;
            }

            goto LABEL_82;
          }

          __break(1u);
          goto LABEL_80;
        }

        v221 = *(v112 + 8);
        v222 = v266;
        v221(v130, v266);
        v221(v129, v222);
        v221(v247, v222);
        v153 = v267;
        v120 = v254;
        v257(&v254[*(v267 + 20)], v251, v117);
        *(v120 + *(v153 + 28)) = 0;
        sub_1B6984E58(v263, v120, type metadata accessor for RotationMode);
        v221(v262, v222);
        sub_1B6984D98(v236, type metadata accessor for StoredUserIDComponents);
        v72 = v268;
        v97 = v269;
        goto LABEL_74;
      }

      sub_1B698103C(0);
      v154 = v112;
      v156 = v155;
      v157 = v155[12];
      v158 = *&v72[v155[16]];
      v258 = *&v72[v155[20]];
      v256 = *(v118 + 32);
      v257 = (v118 + 32);
      (v256)(v249, v72, v117);
      v159 = *(v154 + 32);
      v97 = v154 + 32;
      v255 = v159;
      v159(v243, &v72[v157], v266);
      v160 = sub_1B69FAD2C(v261);
      if (v116)
      {
        v161 = v238;
        if (v160 == 0x8000000000000000 && v116 == -1)
        {
LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
LABEL_82:
          swift_once();
LABEL_58:
          v214 = sub_1B6AB8F90();
          __swift_project_value_buffer(v214, qword_1EDBCFD80);
          sub_1B6992E2C(v72, v97);
          v215 = sub_1B6AB8F80();
          v216 = sub_1B6AB98D0();
          sub_1B69C2E8C(v72, v97);
          if (os_log_type_enabled(v215, v216))
          {
            v217 = swift_slowAlloc();
            v218 = swift_slowAlloc();
            v272 = v218;
            *v217 = 136315138;
            if (v97)
            {
              if (v97 == 1)
              {
                v220 = 0x7274656D656C6574;
                v219 = 0xE900000000000079;
              }

              else if (v97 == 2)
              {
                v219 = 0xE800000000000000;
                v220 = 0x656D69746C616572;
              }

              else
              {
                v220 = v72;
                v219 = v97;
              }
            }

            else
            {
              v220 = 0x6E65764572657375;
              v219 = 0xEA00000000007374;
            }

            sub_1B6992E2C(v72, v97);
            v229 = sub_1B698F63C(v220, v219, &v272);

            *(v217 + 4) = v229;
            _os_log_impl(&dword_1B697C000, v215, v216, "Generated new user ID from stored one, for %s, and stored it", v217, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v218);
            MEMORY[0x1B8C99550](v218, -1, -1);
            MEMORY[0x1B8C99550](v217, -1, -1);
          }

          v153 = v267;
          goto LABEL_74;
        }

        v251 = v97;
        if (v120)
        {
          v119 = __OFADD__(v258++, 1);
          if (v119)
          {
            goto LABEL_81;
          }
        }

        v162 = v116 == v115 && v160 / v116 == v158;
        v163 = v160 / v116;
        v245 = v160 / v116;
        v164 = !v162;
        LODWORD(v247) = v164 | v120;
        v165 = *(v118 + 16);
        v166 = v246;
        v167 = v250;
        v168 = v116;
        v165(v246, v249, v250);
        v169 = v118;
        v244 = *(v267 + 20);
        v165(v161, v166, v167);
        v271 = v163;
        v272 = sub_1B6ABA080();
        v273 = v170;
        MEMORY[0x1B8C97BE0](59, 0xE100000000000000);
        v171 = v258;
        v271 = v258;
        v172 = sub_1B6ABA080();
        MEMORY[0x1B8C97BE0](v172);

        MEMORY[0x1B8C97BE0](59, 0xE100000000000000);
        v271 = v168;
        v173 = sub_1B6ABA080();
        MEMORY[0x1B8C97BE0](v173);

        v174 = sub_1B699F46C(v272, v273);
        v120 = v254;
        sub_1B6A7C174(v161, v174, v175, &v254[v244]);
        v176 = v266;
        v177 = *(v265 + 8);
        v177(v261, v266);
        sub_1B6984D98(v263, type metadata accessor for RotationMode);
        (*(v169 + 8))(v166, v167);
        v178 = v156[12];
        v179 = v156[16];
        v180 = v156[20];
        (v256)(v120, v249, v167);
        v181 = v120 + v178;
        v153 = v267;
        (v255)(v181, v243, v176);
        *(v120 + v179) = v245;
        *(v120 + v180) = v171;
        swift_storeEnumTagMultiPayload();
        LOBYTE(v171) = v247;
        *(v120 + *(v153 + 28)) = v247 & 1;
        v177(v262, v176);
        sub_1B6984D98(v236, type metadata accessor for StoredUserIDComponents);
        v72 = v268;
        v97 = v269;
        if (v171)
        {
          goto LABEL_37;
        }

LABEL_74:
        v230 = v241;
        sub_1B6984A54(v120, v241, type metadata accessor for UserIDComponents);
        (*(v240 + 56))(v230, 0, 1, v153);
        sub_1B6992E2C(v72, v97);
        sub_1B69E237C(v230, v72, v97);
        sub_1B6984D98(v120, type metadata accessor for UserIDComponents);
        v227 = type metadata accessor for StoredUserIDComponents;
        v228 = v235;
LABEL_75:
        sub_1B6984D98(v228, v227);
        return;
      }
    }

    __break(1u);
    goto LABEL_78;
  }

  v70 = sub_1B6983A08(v60, qword_1EB95B258, type metadata accessor for StoredUserIDComponents, MEMORY[0x1E69E6720], sub_1B6A86CF0);
  v71 = v260;
  v272 = *v260;
  v273 = 0;
  v72 = v268;
  v73 = v252;
  v74 = v266;
  if (*(v270 + OBJC_IVAR____TtC12AppAnalytics15UserDataManager_now))
  {
    (*(v270 + OBJC_IVAR____TtC12AppAnalytics15UserDataManager_now))(v70);
    v75 = v265;
    (*(v265 + 56))(v66, 0, 1, v74);
    v76 = v65;
    (*(v75 + 32))(v65, v66, v74);
    v77 = v267;
    v78 = v259;
  }

  else
  {
    v85 = v265;
    (*(v265 + 56))(v66, 1, 1, v266);
    v76 = v65;
    sub_1B6AB8D90();
    v86 = (*(v85 + 48))(v66, 1, v74);
    v77 = v267;
    v78 = v259;
    if (v86 != 1)
    {
      sub_1B6983A08(v66, &qword_1EDBCCF40, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], sub_1B6A86CF0);
    }
  }

  sub_1B6A77B8C(&v272, v76, v78);
  v87 = v71[4];
  v88 = v71[5];
  __swift_project_boxed_opaque_existential_1(v71 + 1, v87);
  sub_1B6984A54(v78, v73, type metadata accessor for UserIDComponents);
  v89 = v231;
  sub_1B6984A54(v73, v231, type metadata accessor for RotationMode);
  v90 = (v73 + *(v77 + 24));
  v91 = *v90;
  v92 = v90[1];
  v93 = v73;
  v94 = v89;
  v95 = sub_1B6984D98(v93, type metadata accessor for UserIDComponents);
  v96 = (v89 + *(v68 + 20));
  *v96 = v91;
  v96[1] = v92;
  v97 = v269;
  v272 = v72;
  v273 = v269;
  v234(&v271, v95);
  LOBYTE(v92) = v271;
  v98 = *(*(v270 + OBJC_IVAR____TtC12AppAnalytics15UserDataManager_trackingConsent) + OBJC_IVAR___AATrackingConsent_consented);
  os_unfair_lock_lock((v98 + 20));
  v99 = *(v98 + 16) == 0;
  os_unfair_lock_unlock((v98 + 20));
  v100 = v232;
  (*(v88 + 16))(v94, &v272, (v92 & 1) == 0, v99, v87, v88);
  if (!v100)
  {
    sub_1B6984D98(v94, type metadata accessor for StoredUserIDComponents);
    if (qword_1EDBCAA70 == -1)
    {
LABEL_52:
      v205 = sub_1B6AB8F90();
      __swift_project_value_buffer(v205, qword_1EDBCFD80);
      sub_1B6992E2C(v72, v97);
      v206 = sub_1B6AB8F80();
      v207 = sub_1B6AB98D0();
      sub_1B69C2E8C(v72, v97);
      v208 = os_log_type_enabled(v206, v207);
      v209 = v267;
      if (v208)
      {
        v210 = swift_slowAlloc();
        v211 = swift_slowAlloc();
        v272 = v211;
        *v210 = 136315138;
        if (v97)
        {
          if (v97 == 1)
          {
            v213 = 0x7274656D656C6574;
            v212 = 0xE900000000000079;
          }

          else if (v97 == 2)
          {
            v212 = 0xE800000000000000;
            v213 = 0x656D69746C616572;
          }

          else
          {
            v213 = v72;
            v212 = v97;
          }
        }

        else
        {
          v213 = 0x6E65764572657375;
          v212 = 0xEA00000000007374;
        }

        sub_1B6992E2C(v72, v97);
        v223 = sub_1B698F63C(v213, v212, &v272);

        *(v210 + 4) = v223;
        _os_log_impl(&dword_1B697C000, v206, v207, "Generated new user ID for %s, and stored it", v210, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v211);
        MEMORY[0x1B8C99550](v211, -1, -1);
        MEMORY[0x1B8C99550](v210, -1, -1);
      }

      v224 = v241;
      v225 = v240;
      v226 = v259;
      sub_1B6984A54(v259, v241, type metadata accessor for UserIDComponents);
      (*(v225 + 56))(v224, 0, 1, v209);
      sub_1B6992E2C(v72, v97);
      sub_1B69E237C(v224, v72, v97);
      v227 = type metadata accessor for UserIDComponents;
      v228 = v226;
      goto LABEL_75;
    }

LABEL_78:
    swift_once();
    goto LABEL_52;
  }

  sub_1B6984D98(v94, type metadata accessor for StoredUserIDComponents);
  v101 = type metadata accessor for UserIDComponents;
  v102 = v259;
LABEL_39:
  sub_1B6984D98(v102, v101);
  if (qword_1EDBCAA70 != -1)
  {
    swift_once();
  }

  v193 = sub_1B6AB8F90();
  __swift_project_value_buffer(v193, qword_1EDBCFD80);
  sub_1B6992E2C(v72, v97);
  v194 = v100;
  v195 = sub_1B6AB8F80();
  v196 = sub_1B6AB98E0();
  sub_1B69C2E8C(v72, v97);

  if (os_log_type_enabled(v195, v196))
  {
    v197 = swift_slowAlloc();
    v198 = swift_slowAlloc();
    v199 = swift_slowAlloc();
    v272 = v199;
    *v197 = 136315394;
    if (v97)
    {
      if (v97 == 1)
      {
        v201 = 0x7274656D656C6574;
        v200 = 0xE900000000000079;
      }

      else if (v97 == 2)
      {
        v200 = 0xE800000000000000;
        v201 = 0x656D69746C616572;
      }

      else
      {
        v201 = v72;
        v200 = v97;
      }
    }

    else
    {
      v201 = 0x6E65764572657375;
      v200 = 0xEA00000000007374;
    }

    sub_1B6992E2C(v72, v97);
    v202 = sub_1B698F63C(v201, v200, &v272);

    *(v197 + 4) = v202;
    *(v197 + 12) = 2112;
    v203 = v100;
    v204 = _swift_stdlib_bridgeErrorToNSError();
    *(v197 + 14) = v204;
    *v198 = v204;
    _os_log_impl(&dword_1B697C000, v195, v196, "Failed to retrieve ID components from storage kind: %s, error: %@", v197, 0x16u);
    sub_1B6A87308(v198, &qword_1EDBC8E08, &qword_1EDBC8E10, 0x1E69E58C0, sub_1B6986438);
    MEMORY[0x1B8C99550](v198, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v199);
    MEMORY[0x1B8C99550](v199, -1, -1);
    MEMORY[0x1B8C99550](v197, -1, -1);
  }

  else
  {
  }
}