uint64_t sub_1CA40F354(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1CA40F3B8(uint64_t a1)
{
  result = sub_1CA25B3D0(319, &qword_1EDB9F5D0, off_1E836DCF8);
  if (v2 <= 0x3F)
  {
    result = sub_1CA94A288();
    if (v3 <= 0x3F)
    {
      result = sub_1CA94A4E8();
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1CA40F450(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4445D0, &qword_1CA983080);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_76_3(uint64_t a1, uint64_t a2)
{

  return sub_1CA40E248(a1, a2);
}

uint64_t sub_1CA40F53C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  result = swift_getAssociatedTypeWitness();
  if (v5 <= 0x3F)
  {
    type metadata accessor for DrawerSearchIndex.SearchResult.Match.FuzzyMatch(255, v2, v1, v4);
    result = sub_1CA94D098();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1CA40F614(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  result = swift_getAssociatedTypeWitness();
  v6 = *(*(result - 8) + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(result - 8) + 84);
  }

  v8 = *(*(result - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v6 < 0x7FFFFFFF)
    {
      v16 = *(((a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {

      return __swift_getEnumTagSinglePayload(a1, v6, result);
    }
  }

  else
  {
    v9 = ((((((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 24;
    v10 = v9 & 0xFFFFFFF8;
    if ((v9 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = a2 - v7 + 1;
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

    switch(v13)
    {
      case 1:
        v14 = *(a1 + v9);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(a1 + v9);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(a1 + v9);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *a1;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1CA40F7C4(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*(AssociatedTypeWitness - 8) + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(*(AssociatedTypeWitness - 8) + 84);
  }

  v10 = *(*(AssociatedTypeWitness - 8) + 64);
  v11 = ((((((((((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 24;
  if (v9 >= a3)
  {
    v14 = 0;
  }

  else
  {
    if (((((((((((v10 + 7) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFE8)
    {
      v12 = a3 - v9 + 1;
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
  }

  if (a2 <= v9)
  {
    switch(v14)
    {
      case 1:
        *(a1 + v11) = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *(a1 + v11) = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *(a1 + v11) = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if (v8 < 0x7FFFFFFF)
          {
            v17 = ((a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v17[2] = 0;
              v17[3] = 0;
              *v17 = a2 & 0x7FFFFFFF;
              v17[1] = 0;
            }

            else
            {
              v17[3] = (a2 - 1);
            }
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v8, AssociatedTypeWitness);
          }
        }

        break;
    }
  }

  else
  {
    if (((((((((((v10 + 7) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFE8)
    {
      v15 = a2 - v9;
    }

    else
    {
      v15 = 1;
    }

    if (((((((((((v10 + 7) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFE8)
    {
      v16 = ~v9 + a2;
      bzero(a1, v11);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        *(a1 + v11) = v15;
        break;
      case 2:
        *(a1 + v11) = v15;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *(a1 + v11) = v15;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1CA40FA14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1CA40FA50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1CA40FA8C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1CA40FACC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1CA40FB34(uint64_t a1)
{
  v2 = swift_checkMetadataState();
  v4 = v2;
  if (v5 <= 0x3F)
  {
    type metadata accessor for DrawerSearchIndex.SearchResult.Match(255, v2, *(a1 + 24), v3);
    swift_getWitnessTable();
    v4 = sub_1CA94C958();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v4;
}

uint64_t sub_1CA40FC08(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
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

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1CA40FD54(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = a3 - v8;
    if (((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v12 = v11 + 1;
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
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (((&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1CA40FF50(uint64_t a1, uint64_t a2)
{
  sub_1CA410C44(a1, a2, v2);
  v4 = MEMORY[0x1E69E7CC0];
  sub_1CA94CB98();
  return v4;
}

BOOL sub_1CA410000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 == a4 && a2 == a5)
  {
    return a3 == a6;
  }

  v9 = sub_1CA94D7F8();
  result = 0;
  if (v9)
  {
    return a3 == a6;
  }

  return result;
}

uint64_t sub_1CA410084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1CA94D918();
  sub_1CA410054(v7, a1, a2, a3);
  return sub_1CA94D968();
}

uint64_t sub_1CA4100E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  if ((sub_1CA94C358() & 1) == 0)
  {
    return 0;
  }

  v9 = type metadata accessor for DrawerSearchIndex.SearchResult.Match(0, a3, a4, v8);
  if ((OUTLINED_FUNCTION_2_30(v9[9]) & 1) == 0)
  {
    return 0;
  }

  if ((OUTLINED_FUNCTION_2_30(v9[10]) & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_1_28(v9[11]);
  if (!v10)
  {
    return 0;
  }

  OUTLINED_FUNCTION_1_28(v9[12]);
  if (!v10)
  {
    return 0;
  }

  v11 = v9[13];
  v12 = (a1 + v11);
  v13 = *(a1 + v11 + 8);
  v14 = (a2 + v11);
  v15 = v14[1];
  if (v13)
  {
    if (v15 && sub_1CA410000(*v12, v13, v12[2], *v14, v15, v14[2]))
    {
      return 1;
    }
  }

  else if (!v15)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1CA410204(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1CA94C298();
  OUTLINED_FUNCTION_3_26(*(a2 + 36));
  OUTLINED_FUNCTION_4_29();
  OUTLINED_FUNCTION_3_26(*(a2 + 40));
  OUTLINED_FUNCTION_4_29();
  v6 = *(v2 + *(a2 + 44));
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  MEMORY[0x1CCAA27B0](*&v6);
  v7 = *(v2 + *(a2 + 48));
  if (v7 == 0.0)
  {
    v7 = 0.0;
  }

  MEMORY[0x1CCAA27B0](*&v7);
  type metadata accessor for DrawerSearchIndex.SearchResult.Match.FuzzyMatch(255, v5, v4, v8);
  sub_1CA94D098();
  swift_getWitnessTable();
  return sub_1CA94D0A8();
}

uint64_t sub_1CA41037C(uint64_t a1)
{
  sub_1CA94D918();
  sub_1CA410204(v3, a1);
  return sub_1CA94D968();
}

uint64_t sub_1CA4103DC(uint64_t a1)
{
  sub_1CA94D918();
  sub_1CA410054(v3, *v1, v1[1], v1[2]);
  return sub_1CA94D968();
}

BOOL sub_1CA410468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(type metadata accessor for DrawerSearchIndex.SearchResult(0, a3, a4, a4) + 36);
  v9 = *(a1 + v8);
  v10 = *(a2 + v8);
  if (v10 < v9)
  {
    return 1;
  }

  if (v9 < v10)
  {
    return 0;
  }

  v12 = *(a4 + 40);
  v12(a3, a4);
  v12(a3, a4);
  sub_1CA27BAF0();
  v13 = sub_1CA94D1F8();

  return v13 == -1;
}

BOOL sub_1CA410574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for DrawerSearchIndex.SearchResult(0, a3, a4, a4);
  v6 = *(v4 + 16);
  v5 = *(v4 + 24);
  v7 = *(v5 + 32);
  v8 = v7(v6, v5);
  v10 = v9;
  v12 = v8 == v7(v6, v5) && v10 == v11;
  if (v12)
  {
  }

  else
  {
    v13 = sub_1CA94D7F8();

    result = 0;
    if ((v13 & 1) == 0)
    {
      return result;
    }
  }

  OUTLINED_FUNCTION_1_28(*(v4 + 36));
  return v12;
}

uint64_t sub_1CA410674@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1CA40FFF8(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1CA410714(uint64_t a1)
{
  sub_1CA94D408();
  v3 = (*(*(a1 + 24) + 32))(*(a1 + 16), *(a1 + 24));
  MEMORY[0x1CCAA1300](v3);

  MEMORY[0x1CCAA1300](32, 0xE100000000000000);
  swift_getAssociatedTypeWitness();
  sub_1CA94D7B8();
  MEMORY[0x1CCAA1300](10272, 0xE200000000000000);
  v4 = MEMORY[0x1CCAA1280](*(v1 + *(a1 + 52)), *(v1 + *(a1 + 52) + 8), *(v1 + *(a1 + 52) + 16), *(v1 + *(a1 + 52) + 24));
  MEMORY[0x1CCAA1300](v4);

  MEMORY[0x1CCAA1300](0x67696577202D2029, 0xEC000000203A7468);
  sub_1CA94C8D8();
  MEMORY[0x1CCAA1300](0x3A797A7A7566202CLL, 0xE900000000000020);
  if (*(v1 + *(a1 + 44)))
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (*(v1 + *(a1 + 44)))
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x1CCAA1300](v5, v6);

  return 0;
}

uint64_t sub_1CA4108CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  if ((sub_1CA94C358() & 1) == 0)
  {
    return 0;
  }

  v9 = *(type metadata accessor for DrawerSearchIndex.SearchResultSetItemMatch(0, a3, a4, v8) + 36);
  v10 = *(a1 + v9);
  v11 = *(a1 + v9 + 8);
  v12 = *(a1 + v9 + 16);
  v13 = *(a1 + v9 + 24);
  v14 = (a2 + v9);
  v15 = *v14;
  v16 = v14[1];
  v17 = v14[2];
  v18 = v14[3];

  return sub_1CA410BD0(v10, v11, v12, v13, v15, v16, v17, v18);
}

uint64_t sub_1CA4109B8(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1CA94C298();
  return sub_1CA94C298();
}

uint64_t sub_1CA410A88(uint64_t a1)
{
  sub_1CA94D918();
  sub_1CA4109B8(v3, a1);
  return sub_1CA94D968();
}

uint64_t sub_1CA410AF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, uint64_t))
{
  sub_1CA94D918();
  a4(v7, a2);
  return sub_1CA94D968();
}

uint64_t sub_1CA410B54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v7 = sub_1CA94C588();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_1CA69ADF8();
  v14 = *(*a4 + 16);
  sub_1CA69B00C(v14);
  v15 = *a4;
  *(v15 + 16) = v14 + 1;
  v16 = (v15 + 32 * v14);
  v16[4] = v7;
  v16[5] = v9;
  v16[6] = v11;
  v16[7] = v13;
  return 1;
}

uint64_t sub_1CA410BD0(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3 == a7 && a4 == a8 && a1 >> 16 == a5 >> 16 && a2 >> 16 == a6 >> 16)
  {
    return 1;
  }

  else
  {
    return sub_1CA94D788() & 1;
  }
}

void sub_1CA410C44(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1CA94C368();
  [a3 setString_];
}

uint64_t sub_1CA410CA8(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1CA410D30(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  result = swift_getAssociatedTypeWitness();
  v6 = *(*(result - 8) + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(result - 8) + 84);
  }

  v8 = *(*(result - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v6 < 0x7FFFFFFF)
    {
      v16 = *(((a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {

      return __swift_getEnumTagSinglePayload(a1, v6, result);
    }
  }

  else
  {
    v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
    v10 = v9 & 0xFFFFFFF8;
    if ((v9 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = a2 - v7 + 1;
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

    switch(v13)
    {
      case 1:
        v14 = *(a1 + v9);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(a1 + v9);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(a1 + v9);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *a1;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1CA410EC0(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*(AssociatedTypeWitness - 8) + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(*(AssociatedTypeWitness - 8) + 84);
  }

  v10 = *(*(AssociatedTypeWitness - 8) + 64);
  v11 = ((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  if (((v10 + 7) & 0xFFFFFFF8) == 0xFFFFFFE0)
  {
    v12 = a3 - v9 + 1;
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

  if (v9 < a3)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (a2 <= v9)
  {
    switch(v15)
    {
      case 1:
        *(a1 + v11) = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *(a1 + v11) = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *(a1 + v11) = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if (v8 < 0x7FFFFFFF)
          {
            v18 = ((a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18[2] = 0;
              v18[3] = 0;
              *v18 = a2 & 0x7FFFFFFF;
              v18[1] = 0;
            }

            else
            {
              v18[3] = (a2 - 1);
            }
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v8, AssociatedTypeWitness);
          }
        }

        break;
    }
  }

  else
  {
    if (((v10 + 7) & 0xFFFFFFF8) == 0xFFFFFFE0)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((v10 + 7) & 0xFFFFFFF8) != 0xFFFFFFE0)
    {
      v17 = ~v9 + a2;
      bzero(a1, v11);
      *a1 = v17;
    }

    switch(v15)
    {
      case 1:
        *(a1 + v11) = v16;
        break;
      case 2:
        *(a1 + v11) = v16;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *(a1 + v11) = v16;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1CA4110D0(uint64_t a1)
{
  v2 = swift_checkMetadataState();
  v4 = v2;
  if (v5 <= 0x3F)
  {
    v6 = *(a1 + 24);
    type metadata accessor for DrawerSearchIndex.SearchResultSetItemMatch(255, v2, v6, v3);
    type metadata accessor for DrawerSearchIndex.SearchResult.Match(255, v4, v6, v7);
    swift_getWitnessTable();
    v4 = sub_1CA94C248();
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v4;
}

uint64_t sub_1CA4111C0(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
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

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1CA4112FC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v11 = a3 - v8 + 1;
  }

  else
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

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_1CA4114E0(uint64_t a1)
{
  v2 = swift_checkMetadataState();
  v4 = v2;
  if (v5 <= 0x3F)
  {
    v4 = type metadata accessor for IndexableDrawerProperty.IndexMode(319, v2, *(a1 + 24), v3);
    if (v6 <= 0x3F)
    {
      v4 = sub_1CA4118EC();
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v4;
}

uint64_t sub_1CA4115B0(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *(((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((v6 + 55) & 0xFFFFFFFFFFFFFFF8) + 16;
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

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1CA4116EC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 55) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v9 + 55) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v11 = a3 - v8 + 1;
  }

  else
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

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              *v17 = a2 & 0x7FFFFFFF;
              v17[1] = 0;
            }

            else
            {
              v17[1] = (a2 - 1);
            }
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((v9 + 55) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 55) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((v9 + 55) & 0xFFFFFFFFFFFFFFF8) + 16);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_1CA4118EC()
{
  result = qword_1EC4416F0;
  if (!qword_1EC4416F0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EC4416F0);
  }

  return result;
}

uint64_t sub_1CA411934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1CA41197C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1CA4119BC(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_1CA411A0C(uint64_t a1)
{
  AssociatedTypeWitness = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    if (v3 <= 0x3F)
    {
      AssociatedTypeWitness = sub_1CA4118EC();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return AssociatedTypeWitness;
}

uint64_t sub_1CA411AF0(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  result = swift_getAssociatedTypeWitness();
  v9 = *(result - 8);
  v10 = *(v9 + 84);
  if (v10 <= v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  if (v11 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  v12 = *(v9 + 80);
  if (!a2)
  {
    return 0;
  }

  v13 = result;
  v14 = *(v6 + 64) + v12;
  v15 = *(*(result - 8) + 64) + 23;
  if (v11 >= a2)
  {
LABEL_27:
    if (v7 == v11)
    {
      v24 = a1;
      v10 = v7;
      v13 = v5;
    }

    else
    {
      v24 = ((a1 + v14) & ~v12);
      if (v10 != v11)
      {
        v25 = *((v24 + v15) & 0xFFFFFFFFFFFFFFF8);
        if (v25 >= 0xFFFFFFFF)
        {
          LODWORD(v25) = -1;
        }

        return (v25 + 1);
      }
    }

    return __swift_getEnumTagSinglePayload(v24, v10, v13);
  }

  v16 = ((((v15 + (v14 & ~v12)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 32;
  v17 = v16 & 0xFFFFFFF8;
  if ((v16 & 0xFFFFFFF8) != 0)
  {
    v18 = 2;
  }

  else
  {
    v18 = a2 - v11 + 1;
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

  switch(v20)
  {
    case 1:
      v21 = *(a1 + v16);
      if (!v21)
      {
        goto LABEL_27;
      }

      goto LABEL_24;
    case 2:
      v21 = *(a1 + v16);
      if (!v21)
      {
        goto LABEL_27;
      }

      goto LABEL_24;
    case 3:
      __break(1u);
      return result;
    case 4:
      v21 = *(a1 + v16);
      if (!v21)
      {
        goto LABEL_27;
      }

LABEL_24:
      v22 = v21 - 1;
      if (v17)
      {
        v22 = 0;
        v23 = *a1;
      }

      else
      {
        v23 = 0;
      }

      result = v11 + (v23 | v22) + 1;
      break;
    default:
      goto LABEL_27;
  }

  return result;
}

void sub_1CA411D24(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 84);
  if (v12 <= v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = *(v11 + 84);
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  v14 = *(v11 + 80);
  v15 = *(v8 + 64) + v14;
  v16 = *(*(AssociatedTypeWitness - 8) + 64) + 23;
  v17 = ((((v16 + (v15 & ~v14)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 32;
  if (v13 >= a3)
  {
    v20 = 0;
  }

  else
  {
    if (((((v16 + (v15 & ~v14)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFE0)
    {
      v18 = a3 - v13 + 1;
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
  }

  if (a2 <= v13)
  {
    v23 = ~v14;
    switch(v20)
    {
      case 1:
        *(a1 + v17) = 0;
        if (a2)
        {
          goto LABEL_34;
        }

        return;
      case 2:
        *(a1 + v17) = 0;
        if (a2)
        {
          goto LABEL_34;
        }

        return;
      case 3:
LABEL_48:
        __break(1u);
        return;
      case 4:
        *(a1 + v17) = 0;
        goto LABEL_33;
      default:
LABEL_33:
        if (!a2)
        {
          return;
        }

LABEL_34:
        if (v9 == v13)
        {
          v24 = a1;
          v25 = a2;
          v12 = v9;
          AssociatedTypeWitness = v7;
        }

        else
        {
          v24 = ((a1 + v15) & v23);
          if (v12 != v13)
          {
            v26 = ((v24 + v16) & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v27 = a2 & 0x7FFFFFFF;
              v26[1] = 0;
            }

            else
            {
              v27 = (a2 - 1);
            }

            *v26 = v27;
            return;
          }

          v25 = a2;
        }

        __swift_storeEnumTagSinglePayload(v24, v25, v12, AssociatedTypeWitness);
        break;
    }
  }

  else
  {
    if (((((v16 + (v15 & ~v14)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFE0)
    {
      v21 = a2 - v13;
    }

    else
    {
      v21 = 1;
    }

    if (((((v16 + (v15 & ~v14)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFE0)
    {
      v22 = ~v13 + a2;
      bzero(a1, v17);
      *a1 = v22;
    }

    switch(v20)
    {
      case 1:
        *(a1 + v17) = v21;
        break;
      case 2:
        *(a1 + v17) = v21;
        break;
      case 3:
        goto LABEL_48;
      case 4:
        *(a1 + v17) = v21;
        break;
      default:
        return;
    }
  }
}

uint64_t getEnumTagSinglePayload for IndexableDrawerPropertyFilterContext(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for IndexableDrawerPropertyFilterContext(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1CA412038(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1CA412054(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 8) = v2;
  return result;
}

uint64_t sub_1CA412088(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4455C0, &unk_1CA987658);
  v30 = sub_1CA94C1E8();
  v14 = sub_1CA94C468();
  v15 = v14 + 1;
  if (__OFADD__(v14, 1))
  {
    goto LABEL_29;
  }

  v7 = a5 + 1;
  if (__OFADD__(a5, 1))
  {
    goto LABEL_30;
  }

  if (__OFADD__(a3, 1))
  {
    goto LABEL_31;
  }

  if ((v7 * v15) >> 64 != (v7 * v15) >> 63)
  {
    goto LABEL_32;
  }

  v16 = sub_1CA4F0818((a3 + 1), v7 * v15);
  v29 = v16;
  if (v15 < 0)
  {
    goto LABEL_33;
  }

  v6 = v16;
  if (!v15)
  {
    goto LABEL_16;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_35;
  }

  while (1)
  {
    if (v15 > *(v6 + 16))
    {
      __break(1u);
      goto LABEL_37;
    }

    v17 = 0;
    v18 = xmmword_1CA986F60;
    v19 = vdupq_n_s64(v15 - 1);
    v20 = vdupq_n_s64(2uLL);
    do
    {
      v21 = vmovn_s64(vcgeq_u64(v19, v18));
      v22 = v6 + 8 * v17;
      if (v21.i8[0])
      {
        *(v22 + 32) = v17;
      }

      if (v21.i8[4])
      {
        *(v22 + 40) = v17 + 1;
      }

      v17 += 2;
      v18 = vaddq_s64(v18, v20);
    }

    while (((v15 + 1) & 0xFFFFFFFFFFFFFFFELL) != v17);
    v29 = v6;
LABEL_16:
    if (v7 >= 1)
    {
      break;
    }

LABEL_34:
    __break(1u);
LABEL_35:
    sub_1CA42B27C(v6);
    v6 = v27;
  }

  if (v7 != 1)
  {
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_19:
      v23 = 1;
      v24 = a5;
      while (1)
      {
        v25 = v23 * v15;
        if ((v23 * v15) >> 64 != (v23 * v15) >> 63)
        {
          break;
        }

        if ((v25 & 0x8000000000000000) != 0)
        {
          goto LABEL_27;
        }

        if (v25 >= *(v6 + 16))
        {
          goto LABEL_28;
        }

        *(v6 + 32 + 8 * v25) = v23++;
        if (!--v24)
        {
          v29 = v6;
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

LABEL_37:
    sub_1CA42B27C(v6);
    v6 = v28;
    goto LABEL_19;
  }

LABEL_25:
  sub_1CA4122BC(a4, a1, a2, a3, &v30, &v29, 1, v15, 0, 0xE000000000000000, a4, a5, a6);

  return v30;
}

uint64_t sub_1CA4122BC(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v82 = a8;
  v80 = a7;
  v86 = a6;
  v76 = a5;
  v90 = a2;
  v91 = a3;
  swift_beginAccess();
  v77 = *(a1 + 16);
  v15 = v77;
  if (v77 >> 62)
  {
    goto LABEL_92;
  }

  result = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v17 = v82;
    if (!result)
    {
      return result;
    }

    v75 = result;
    v89 = a13;
    v70 = a12;
    v69 = a11;
    v73 = v15 + 32;
    v18 = v82 - 1;
    v19 = __OFSUB__(v82, 1);
    v85 = v19;
    v72 = a10;
    v71 = a9;
    sub_1CA94C218();
    v20 = v15 & 0xC000000000000001;
    v21 = 0;
    v79 = &a4[v80];
    v84 = a4;
    v74 = v15 & 0xC000000000000001;
    v83 = v18;
LABEL_8:
    v22 = v20;
    sub_1CA275D70(v21, v20 == 0, v15);
    if (v22)
    {
      v81 = MEMORY[0x1CCAA22D0](v21, v15);
    }

    else
    {
      v81 = *(v73 + 8 * v21);
    }

    v23 = __OFADD__(v21, 1);
    v24 = v21 + 1;
    if (!v23)
    {
      break;
    }

LABEL_91:
    __break(1u);
LABEL_92:
    result = sub_1CA94D328();
    v15 = v77;
  }

  v78 = v24;
  v25 = *(v81 + 32);
  v26 = HIBYTE(v25) & 0xF;
  if ((v25 & 0x2000000000000000) == 0)
  {
    v26 = *(v81 + 24) & 0xFFFFFFFFFFFFLL;
  }

  v100 = *(v81 + 24);
  v101 = v25;
  v102 = 0;
  v103 = v26;
  sub_1CA94C218();
  v27 = v79;
  v28 = v80;
  while (1)
  {
    v29 = v27 >= v18 ? v18 : v27;
    v92 = v29;
    v94 = sub_1CA94C4B8();
    v95 = v30;
    if (!v30)
    {
      break;
    }

    v31 = v17 * v28;
    if ((v17 * v28) >> 64 != (v17 * v28) >> 63)
    {
      goto LABEL_80;
    }

    v93 = v31 - v17;
    if (__OFSUB__(v31, v17))
    {
      goto LABEL_81;
    }

    if ((v31 & 0x8000000000000000) != 0)
    {
      goto LABEL_82;
    }

    v88 = v27;
    v32 = *v86;
    if (v31 >= *(*v86 + 16))
    {
      goto LABEL_83;
    }

    v33 = v28 - a4;
    if (__OFSUB__(v28, a4))
    {
      goto LABEL_84;
    }

    v23 = __OFSUB__(v33, 1);
    v34 = v33 - 1;
    if (v23)
    {
      goto LABEL_85;
    }

    if (v85)
    {
      goto LABEL_86;
    }

    v35 = &a4[v28];
    if (__OFADD__(v28, a4))
    {
      goto LABEL_87;
    }

    v87 = v28;
    v36 = v34 & ~(v34 >> 63);
    if (v35 >= v18)
    {
      v37 = v18;
    }

    else
    {
      v37 = v35;
    }

    if (v37 < v36)
    {
      goto LABEL_88;
    }

    v38 = *(v32 + 8 * v31 + 32);
    if (v36 != v37)
    {
      if (v36 < v37)
      {
        while (1)
        {
          sub_1CA94C488();
          v39 = sub_1CA94C568();
          v98 = v94;
          v99 = v95;
          v96 = v39;
          v97 = v40;
          v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445488, &qword_1CA987590);
          MEMORY[0x1EEE9AC00](v41 - 8);
          a4 = &v68 - v42;
          v43 = sub_1CA948E58();
          __swift_storeEnumTagSinglePayload(a4, 1, 1, v43);
          sub_1CA27BAF0();
          sub_1CA94C218();
          v44 = sub_1CA94D228();
          sub_1CA27080C(a4, &unk_1EC445488, &qword_1CA987590);

          v45 = v93 + v36;
          if (__OFADD__(v93, v36))
          {
            break;
          }

          if ((v45 & 0x8000000000000000) != 0)
          {
            goto LABEL_71;
          }

          v46 = *(v32 + 16);
          if (v45 >= v46)
          {
            goto LABEL_72;
          }

          v47 = v44 != 0;
          v48 = v32 + 32;
          v49 = *(v32 + 32 + 8 * v45);
          v23 = __OFADD__(v49, v47);
          v50 = v49 + v47;
          if (v23)
          {
            goto LABEL_73;
          }

          v51 = v45 + 1;
          if (v51 >= v46)
          {
            goto LABEL_74;
          }

          v52 = *(v48 + 8 * v51);
          v23 = __OFADD__(v52, 1);
          v53 = v52 + 1;
          if (v23)
          {
            goto LABEL_75;
          }

          v54 = v31 + v36;
          if (__OFADD__(v31, v36))
          {
            goto LABEL_76;
          }

          if (v54 >= v46)
          {
            goto LABEL_77;
          }

          v55 = *(v48 + 8 * v54);
          v23 = __OFADD__(v55, 1);
          v56 = v55 + 1;
          if (v23)
          {
            goto LABEL_78;
          }

          if (v53 < v50)
          {
            v50 = v53;
          }

          if (v56 >= v50)
          {
            v57 = v50;
          }

          else
          {
            v57 = v56;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1CA42B27C(v32);
            v32 = v58;
          }

          if (v54 + 1 >= *(v32 + 16))
          {
            goto LABEL_79;
          }

          ++v36;
          *(v32 + 8 * (v54 + 1) + 32) = v57;
          if (v57 < v38)
          {
            v38 = v57;
          }

          if (v92 == v36)
          {

            *v86 = v32;
            v17 = v82;
            goto LABEL_55;
          }
        }

        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
      }

      __break(1u);
      goto LABEL_91;
    }

LABEL_55:
    a4 = v84;
    if (v38 > v84)
    {

      v18 = v83;
      goto LABEL_67;
    }

    v27 = v88 + 1;
    v28 = v87 + 1;
    v18 = v83;
    if (__OFADD__(v87, 1))
    {
      goto LABEL_89;
    }
  }

  v59 = v28 * v17;
  if ((v28 * v17) >> 64 != (v28 * v17) >> 63)
  {
    __break(1u);
    goto LABEL_94;
  }

  v23 = __OFSUB__(v59, 1);
  v60 = v59 - 1;
  if (v23)
  {
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  if ((v60 & 0x8000000000000000) != 0)
  {
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  if (v60 >= *(*v86 + 16))
  {
LABEL_96:
    __break(1u);
    return result;
  }

  if (*(*v86 + 8 * v60 + 32) <= a4)
  {
    v61 = *(v81 + 24);
    v62 = *(v81 + 32);
    v100 = v71;
    v101 = v72;
    sub_1CA94C218();
    MEMORY[0x1CCAA1300](v61, v62);

    v63 = v28;
    v64 = v76;
    swift_isUniquelyReferenced_nonNull_native();
    v100 = *v64;
    sub_1CA3229F4();

    *v64 = v100;
    v28 = v63;
  }

  v65 = v81;
  v66 = *(v81 + 24);
  v67 = *(v81 + 32);
  v100 = v71;
  v101 = v72;
  sub_1CA94C218();
  MEMORY[0x1CCAA1300](v66, v67);
  sub_1CA4122BC(v65, v90, v91, a4, v76, v86, v28, v82, v100, v101, v69, v70, v89);

LABEL_67:
  v21 = v78;
  v17 = v82;
  v15 = v77;
  v20 = v74;
  if (v78 != v75)
  {
    goto LABEL_8;
  }
}

uint64_t sub_1CA4129A4@<X0>(uint64_t a1@<X0>, uint64_t **a2@<X8>)
{
  v72 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445470, &qword_1CA9824D8);
  v88 = *(v3 - 8);
  v89 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v71 - v4;
  v6 = type metadata accessor for DrawerSearchIndexItem(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v90 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = [objc_allocWithZone(MEMORY[0x1E6977A88]) initWithUnit_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445478, &qword_1CA987580);
  i = swift_allocObject();
  v10 = MEMORY[0x1E69E7CC0];
  i[2] = MEMORY[0x1E69E7CC0];
  i[3] = 0;
  i[4] = 0xE000000000000000;
  i[5] = v10;
  v96 = i;
  v94 = xmmword_1CA986F70;
  v97 = xmmword_1CA986F70;
  v78 = sub_1CA94C1E8();
  v75 = *(a1 + 16);
  if (v75)
  {
    v11 = 0;
    v76 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v74 = a1;
    v73 = v7;
    while (1)
    {
      if (v11 >= *(a1 + 16))
      {
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        result = sub_1CA94D878();
        __break(1u);
        return result;
      }

      v12 = *(v7 + 72);
      v77 = v11;
      sub_1CA42B9A4(v76 + v12 * v11, v90);
      v13 = sub_1CA429A28();
      v83 = *(v13 + 16);
      if (v83)
      {
        break;
      }

      v15 = 0.0;
LABEL_17:
      v52 = sub_1CA42928C();
      v54 = v53;
      v55 = v78;
      swift_isUniquelyReferenced_nonNull_native();
      v95 = v55;
      v56 = sub_1CA271BF8(v52, v54);
      if (__OFADD__(*(v55 + 16), (v57 & 1) == 0))
      {
        goto LABEL_32;
      }

      v58 = v56;
      v59 = v57;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445480, &qword_1CA987588);
      if (sub_1CA94D588())
      {
        v60 = sub_1CA271BF8(v52, v54);
        if ((v59 & 1) != (v61 & 1))
        {
          goto LABEL_34;
        }

        v58 = v60;
      }

      a1 = v74;
      if (v59)
      {

        v78 = v95;
        *(v95[7] + 8 * v58) = v15;
        sub_1CA42B9FC();
      }

      else
      {
        v62 = v95;
        v95[(v58 >> 6) + 8] |= 1 << v58;
        v63 = (v62[6] + 16 * v58);
        *v63 = v52;
        v63[1] = v54;
        *(v62[7] + 8 * v58) = v15;
        sub_1CA42B9FC();
        v64 = v62[2];
        v65 = __OFADD__(v64, 1);
        v66 = v64 + 1;
        if (v65)
        {
          goto LABEL_33;
        }

        v78 = v62;
        v62[2] = v66;
      }

      v11 = v77 + 1;
      v7 = v73;
      if (v77 + 1 == v75)
      {

        i = v96;
        v68 = v97;
        goto LABEL_29;
      }
    }

    v14 = 0;
    v82 = v13 + 32;
    v15 = 0.0;
    v81 = v13;
    while (1)
    {
      if (v14 >= *(v13 + 16))
      {
        __break(1u);
        goto LABEL_31;
      }

      v84 = v14;
      v16 = (v82 + 72 * v14);
      v17 = *v16;
      v19 = *(v16 + 1);
      v18 = *(v16 + 2);
      v20 = v16[24];
      v21 = *(v16 + 4);
      v23 = *(v16 + 7);
      v22 = *(v16 + 8);
      if (v16[48])
      {
        break;
      }

      swift_bridgeObjectRetain_n();

      sub_1CA413170(v19, v18);
      v42 = v41;
      sub_1CA42B9A4(v90, v5);
      v43 = sub_1CA94D118();
      v44 = v89;
      v5[v89[9]] = v17;
      *&v5[v44[10]] = v21;
      v5[v44[11]] = v20;
      v45 = &v5[v44[12]];
      *v45 = v23;
      *(v45 + 1) = v22;
      v46 = &v5[v44[13]];
      *v46 = v43;
      v46[1] = v47;
      v46[2] = v48;
      v46[3] = v49;
      swift_beginAccess();
      sub_1CA69AE10();
      v50 = *(*(v42 + 40) + 16);
      sub_1CA69B024(v50);
      v51 = *(v42 + 40);
      *(v51 + 16) = v50 + 1;
      sub_1CA2D9CD4(v5, v51 + ((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v88 + 72) * v50, &qword_1EC445470, &qword_1CA9824D8);
      *(v42 + 40) = v51;
      swift_endAccess();

      v15 = v15 + v21;
LABEL_14:
      v14 = v84 + 1;
      v13 = v81;
      if (v84 + 1 == v83)
      {

        goto LABEL_17;
      }
    }

    v85 = *(v16 + 7);
    v86 = v20;
    v87 = v17;
    v24 = *(v16 + 5);
    sub_1CA94C218();

    v91 = v24;
    v92 = v21;
    sub_1CA435BB4(*&v21, v24, 1);
    v80 = v18;
    v25 = sub_1CA40FF50(v19, v18);
    v26 = 0;
    v93 = *(v25 + 16);
    *&v94 = v25;
    for (i = (v25 + 56); ; i += 4)
    {
      if (v93 == v26)
      {

        sub_1CA435BC4(*&v92, v91, 1);
        goto LABEL_14;
      }

      if (v26 >= *(v94 + 16))
      {
        break;
      }

      v27 = v26 + 1;
      v28 = *(i - 1);
      v29 = *i;
      v31 = *(i - 3);
      v30 = *(i - 2);
      sub_1CA94C218();
      v32 = (*&v92)(v26);
      sub_1CA413B9C(v31, v30, v28, v29);
      v34 = v33;
      sub_1CA42B9A4(v90, v5);
      v35 = v89;
      v36 = v86;
      v5[v89[9]] = v87;
      *&v5[v35[10]] = v32;
      v5[v35[11]] = v36;
      v37 = &v5[v35[12]];
      *v37 = v85;
      *(v37 + 1) = v22;
      v38 = &v5[v35[13]];
      *v38 = v31;
      v38[1] = v30;
      v38[2] = v28;
      v38[3] = v29;
      swift_beginAccess();

      sub_1CA69AE10();
      v39 = *(*(v34 + 40) + 16);
      sub_1CA69B024(v39);
      v40 = *(v34 + 40);
      *(v40 + 16) = v39 + 1;
      sub_1CA2D9CD4(v5, v40 + ((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v88 + 72) * v39, &qword_1EC445470, &qword_1CA9824D8);
      *(v34 + 40) = v40;
      swift_endAccess();

      v15 = v15 + v32;
      v26 = v27;
    }

    __break(1u);
  }

  v68 = v94;
LABEL_29:
  v69 = v72;
  *v72 = i;
  *(v69 + 1) = v68;
  v70 = v78;
  v69[3] = v79;
  v69[4] = v70;
  return result;
}

void sub_1CA413170(unint64_t a1, uint64_t a2)
{
  v5 = v2[1];
  v6 = sub_1CA94C468();
  if (v6 <= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v2[1] = v7;
  v104 = a1;
  v105 = a2;
  sub_1CA94C218();
  v8 = sub_1CA94D138();
  v10 = v9;
  v12 = v11;
  v90 = v13;
  v14 = *v2;

  v81[0] = v2;
LABEL_5:
  v82 = v10 >> 14;
  if (v10 >> 14 == v8 >> 14)
  {
  }

  else
  {
    swift_beginAccess();
    if (sub_1CA25B410(v14[2]) && (v15 = v14[2], (v84 = sub_1CA25B410(v15)) != 0))
    {
      v81[1] = v14;
      v16 = v2[2];
      v89 = v15 & 0xC000000000000001;
      v83 = v15 & 0xFFFFFFFFFFFFFF8;
      sub_1CA94C218();
      v17 = 0;
      v93 = v8;
      v92 = v10;
      v101 = v12;
      v88 = v15;
      v99 = v16;
      while (1)
      {
        if (v89)
        {
          v18 = MEMORY[0x1CCAA22D0](v17, v15);
        }

        else
        {
          if (v17 >= *(v83 + 16))
          {
            goto LABEL_36;
          }
        }

        v19 = v90;
        if (__OFADD__(v17, 1))
        {
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
          return;
        }

        v94 = v17 + 1;
        v95 = v17;
        v104 = v8;
        v105 = v10;
        v106 = v12;
        v107 = v90;
        v98 = v18;
        v20 = *(v18 + 32);
        v102 = *(v18 + 24);
        v103 = v20;
        sub_1CA435BD4();
        v21 = sub_1CA27BAF0();
        v22 = sub_1CA94D188();
        v24 = v22;
        v25 = v23;
        v26 = HIBYTE(v23) & 0xF;
        if ((v23 & 0x2000000000000000) == 0)
        {
          v26 = v22 & 0xFFFFFFFFFFFFLL;
        }

        v100 = v21;
        v96 = v26;
        if (v26)
        {
          v104 = v8;
          v105 = v10;
          v106 = v101;
          v107 = v19;
          v91 = v22;
          v102 = v22;
          v103 = v23;
          v27 = v23;
          v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445488, &qword_1CA987590);
          MEMORY[0x1EEE9AC00](v28 - 8);
          v30 = v81 - v29;
          v31 = sub_1CA948E58();
          __swift_storeEnumTagSinglePayload(v30, 1, 1, v31);
          sub_1CA94C218();
          sub_1CA94D218();
          v33 = v32;
          v35 = v34;
          sub_1CA27080C(v30, &unk_1EC445488, &qword_1CA987590);

          if (v35)
          {
            sub_1CA94C218();
            v87 = v93;
            v86 = v92;
            v85 = v101;
            v97 = v19;
          }

          else
          {
            if (v82 < v33 >> 14)
            {
              goto LABEL_37;
            }

            sub_1CA94C218();
            v87 = sub_1CA94D128();
            v86 = v36;
            v85 = v37;
            v97 = v38;
          }

          v25 = v27;
          v24 = v91;
        }

        else
        {
          sub_1CA94C218();
          v87 = v8;
          v86 = v10;
          v85 = v101;
          v97 = v19;
        }

        v39 = v24;
        v104 = v24;
        v105 = v25;
        v40 = v25;
        v41 = v98[4];
        v14 = v98;
        v102 = v98[3];
        v103 = v41;
        v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445488, &qword_1CA987590);
        v43 = *(*(v42 - 8) + 64);
        MEMORY[0x1EEE9AC00](v42 - 8);
        v45 = v81 - v44;
        v46 = sub_1CA948E58();
        __swift_storeEnumTagSinglePayload(v45, 1, 1, v46);
        sub_1CA94C218();
        v47 = sub_1CA94D228();
        sub_1CA27080C(v45, &unk_1EC445488, &qword_1CA987590);

        if (!v47)
        {

          v8 = v87;
          v10 = v86;
          v12 = v85;
          v90 = v97;
          v2 = v81[0];
          goto LABEL_5;
        }

        v49 = v40;
        v50 = v39;
        if (v96)
        {
          v51 = v14[4];
          v104 = v14[3];
          v105 = v51;
          v102 = v39;
          v103 = v49;
          MEMORY[0x1EEE9AC00](v48);
          v52 = v81 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
          __swift_storeEnumTagSinglePayload(v52, 1, 1, v46);
          sub_1CA94C218();
          sub_1CA94D218();
          v54 = v53;
          v56 = v55;
          sub_1CA27080C(v52, &unk_1EC445488, &qword_1CA987590);

          if ((v56 & 1) == 0)
          {
            break;
          }
        }

        v17 = v95 + 1;
        v8 = v93;
        v10 = v92;
        v12 = v101;
        v15 = v88;
        if (v94 == v84)
        {

          goto LABEL_29;
        }
      }

      v63 = v14[3];
      v64 = v14[4];
      sub_1CA94C218();
      v65 = sub_1CA42AAA4(v54, v63, v64);
      v66 = MEMORY[0x1CCAA1280](v65);
      v68 = v67;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445478, &qword_1CA987580);
      v69 = swift_allocObject();
      v70 = MEMORY[0x1E69E7CC0];
      v69[2] = MEMORY[0x1E69E7CC0];
      v71 = v69 + 2;
      v69[3] = v66;
      v69[4] = v68;
      v69[5] = v70;
      v72 = v69 + 5;
      swift_beginAccess();
      v73 = v14[2];
      swift_beginAccess();
      *v71 = v73;
      sub_1CA94C218();

      swift_beginAccess();
      v74 = v14[5];
      swift_beginAccess();
      *v72 = v74;
      sub_1CA94C218();

      v14[3] = v50;
      v14[4] = v49;

      v14[2] = v70;

      v14[5] = v70;

      swift_beginAccess();

      MEMORY[0x1CCAA1490](v75);
      sub_1CA69B4CC();
      sub_1CA94C6E8();
      swift_endAccess();
      if (!((v86 ^ v87) >> 14))
      {

        goto LABEL_32;
      }

      v76 = MEMORY[0x1CCAA1280]();
      v78 = v77;

      v79 = swift_allocObject();
      v79[2] = v70;
      v79[3] = v76;
      v79[4] = v78;
      v79[5] = v70;
      swift_beginAccess();

      MEMORY[0x1CCAA1490](v80);
      sub_1CA69B4CC();
      sub_1CA94C6E8();
      swift_endAccess();
    }

    else
    {
LABEL_29:
      v57 = MEMORY[0x1CCAA1280](v8, v10, v12, v90);
      v59 = v58;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445478, &qword_1CA987580);
      v60 = swift_allocObject();
      v61 = MEMORY[0x1E69E7CC0];
      v60[2] = MEMORY[0x1E69E7CC0];
      v60[3] = v57;
      v60[4] = v59;
      v60[5] = v61;
      swift_beginAccess();

      MEMORY[0x1CCAA1490](v62);
      sub_1CA69B4CC();
      sub_1CA94C6E8();
      swift_endAccess();
LABEL_32:
    }
  }
}

void sub_1CA413B9C(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4[1];
  v10 = sub_1CA94D0F8();
  if (v10 <= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v4[1] = v11;
  v110 = a1;
  v111 = a2;
  v112 = a3;
  v113 = a4;
  sub_1CA435C28();
  sub_1CA94C218();
  v12 = sub_1CA94D138();
  v14 = v13;
  v16 = v15;
  v96 = v17;
  v18 = *v4;

  v87[0] = v4;
LABEL_5:
  v88 = v14 >> 14;
  if (v14 >> 14 == v12 >> 14)
  {
  }

  else
  {
    swift_beginAccess();
    if (sub_1CA25B410(*(v18 + 16)) && (v19 = *(v18 + 16), (v90 = sub_1CA25B410(v19)) != 0))
    {
      v87[1] = v18;
      v20 = v4[2];
      v95 = v19 & 0xC000000000000001;
      v89 = v19 & 0xFFFFFFFFFFFFFF8;
      sub_1CA94C218();
      v21 = 0;
      v100 = v12;
      v99 = v14;
      v98 = v16;
      v94 = v19;
      v105 = v20;
      while (1)
      {
        if (v95)
        {
          v107 = MEMORY[0x1CCAA22D0](v21, v19);
        }

        else
        {
          if (v21 >= *(v89 + 16))
          {
            goto LABEL_36;
          }

          v107 = *(v19 + 8 * v21 + 32);
        }

        v22 = v96;
        if (__OFADD__(v21, 1))
        {
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
          return;
        }

        v101 = v21 + 1;
        v102 = v21;
        v110 = v12;
        v111 = v14;
        v112 = v16;
        v113 = v96;
        v23 = *(v107 + 32);
        v108 = *(v107 + 24);
        v109 = v23;
        sub_1CA435BD4();
        v24 = sub_1CA27BAF0();
        v25 = sub_1CA94D188();
        v27 = v25;
        v28 = v26;
        v29 = HIBYTE(v26) & 0xF;
        if ((v26 & 0x2000000000000000) == 0)
        {
          v29 = v25 & 0xFFFFFFFFFFFFLL;
        }

        v106 = v24;
        v103 = v29;
        if (v29)
        {
          v110 = v12;
          v111 = v14;
          v112 = v16;
          v113 = v22;
          v97 = v25;
          v108 = v25;
          v109 = v26;
          v30 = v26;
          v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445488, &qword_1CA987590);
          MEMORY[0x1EEE9AC00](v31 - 8);
          v33 = v87 - v32;
          v34 = sub_1CA948E58();
          __swift_storeEnumTagSinglePayload(v33, 1, 1, v34);
          sub_1CA94C218();
          sub_1CA94D218();
          v36 = v35;
          v38 = v37;
          sub_1CA27080C(v33, &unk_1EC445488, &qword_1CA987590);

          if (v38)
          {
            sub_1CA94C218();
            v93 = v100;
            v92 = v99;
            v91 = v16;
            v104 = v22;
          }

          else
          {
            if (v88 < v36 >> 14)
            {
              goto LABEL_37;
            }

            sub_1CA94C218();
            v93 = sub_1CA94D128();
            v92 = v39;
            v91 = v40;
            v104 = v41;
          }

          v28 = v30;
          v27 = v97;
        }

        else
        {
          sub_1CA94C218();
          v93 = v12;
          v92 = v14;
          v91 = v16;
          v104 = v22;
        }

        v42 = v27;
        v110 = v27;
        v111 = v28;
        v43 = v28;
        v44 = *(v107 + 32);
        v18 = v107;
        v108 = *(v107 + 24);
        v109 = v44;
        v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445488, &qword_1CA987590);
        v46 = *(*(v45 - 8) + 64);
        MEMORY[0x1EEE9AC00](v45 - 8);
        v48 = v87 - v47;
        v49 = sub_1CA948E58();
        __swift_storeEnumTagSinglePayload(v48, 1, 1, v49);
        sub_1CA94C218();
        v50 = sub_1CA94D228();
        sub_1CA27080C(v48, &unk_1EC445488, &qword_1CA987590);

        if (!v50)
        {

          v12 = v93;
          v14 = v92;
          v16 = v91;
          v96 = v104;
          v4 = v87[0];
          goto LABEL_5;
        }

        v52 = v43;
        v53 = v42;
        if (v103)
        {
          v54 = *(v107 + 32);
          v110 = *(v18 + 24);
          v111 = v54;
          v108 = v42;
          v109 = v52;
          MEMORY[0x1EEE9AC00](v51);
          v55 = v87 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
          __swift_storeEnumTagSinglePayload(v55, 1, 1, v49);
          sub_1CA94C218();
          sub_1CA94D218();
          v57 = v56;
          v59 = v58;
          sub_1CA27080C(v55, &unk_1EC445488, &qword_1CA987590);
          v60 = v107;

          if ((v59 & 1) == 0)
          {
            break;
          }
        }

        v21 = v102 + 1;
        v12 = v100;
        v14 = v99;
        v16 = v98;
        v19 = v94;
        if (v101 == v90)
        {

          goto LABEL_29;
        }
      }

      v67 = v60;
      v68 = v60[3];
      v69 = v60[4];
      sub_1CA94C218();
      v70 = sub_1CA42AAA4(v57, v68, v69);
      v71 = MEMORY[0x1CCAA1280](v70);
      v73 = v72;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445478, &qword_1CA987580);
      v74 = swift_allocObject();
      v75 = v53;
      v76 = MEMORY[0x1E69E7CC0];
      v74[2] = MEMORY[0x1E69E7CC0];
      v77 = v74 + 2;
      v74[3] = v71;
      v74[4] = v73;
      v74[5] = v76;
      v78 = v74 + 5;
      swift_beginAccess();
      v79 = v67[2];
      swift_beginAccess();
      *v77 = v79;
      sub_1CA94C218();

      swift_beginAccess();
      v80 = v67[5];
      swift_beginAccess();
      *v78 = v80;
      sub_1CA94C218();

      v67[3] = v75;
      v67[4] = v52;

      v67[2] = v76;

      v67[5] = v76;

      swift_beginAccess();

      MEMORY[0x1CCAA1490](v81);
      sub_1CA69B4CC();
      sub_1CA94C6E8();
      swift_endAccess();
      if ((v92 ^ v93) >> 14)
      {
        v82 = MEMORY[0x1CCAA1280]();
        v84 = v83;

        v85 = swift_allocObject();
        v85[2] = v76;
        v85[3] = v82;
        v85[4] = v84;
        v85[5] = v76;
        swift_beginAccess();

        MEMORY[0x1CCAA1490](v86);
        sub_1CA69B4CC();
        sub_1CA94C6E8();
        swift_endAccess();
      }

      else
      {
      }
    }

    else
    {
LABEL_29:
      v61 = MEMORY[0x1CCAA1280](v12, v14, v16, v96);
      v63 = v62;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445478, &qword_1CA987580);
      v64 = swift_allocObject();
      v65 = MEMORY[0x1E69E7CC0];
      v64[2] = MEMORY[0x1E69E7CC0];
      v64[3] = v61;
      v64[4] = v63;
      v64[5] = v65;
      swift_beginAccess();

      MEMORY[0x1CCAA1490](v66);
      sub_1CA69B4CC();
      sub_1CA94C6E8();
      swift_endAccess();
    }
  }
}

void sub_1CA4145F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445578, &unk_1CA987618);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v40 - v7;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4440B0, &unk_1CA981B10);
  v43 = *(v49 - 8);
  v9 = MEMORY[0x1EEE9AC00](v49);
  v45 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v44 = &v40 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445580, &unk_1CA983450);
  v48 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v40 - v13;
  v51 = a1;
  v52 = a2;
  v15 = sub_1CA948868();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948858();
  sub_1CA27BAF0();
  v19 = sub_1CA94D1A8();
  v21 = v20;
  (*(v16 + 8))(v18, v15);
  v22 = HIBYTE(v21) & 0xF;
  if ((v21 & 0x2000000000000000) == 0)
  {
    v22 = v19 & 0xFFFFFFFFFFFFLL;
  }

  if (v22)
  {
    v46 = MEMORY[0x1E69E7CC0];
    v51 = sub_1CA94C1E8();
    v23 = sub_1CA414BBC(v19, v21);
    sub_1CA414CD8(v23);

    v24 = sub_1CA41522C(v19, v21);
    sub_1CA414CD8(v24);

    v47 = v3;
    v25 = sub_1CA4153F8(v19, v21);

    sub_1CA41617C(v25);

    v26 = v51;
    v27 = v51 + 64;
    v28 = 1 << *(v51 + 32);
    v29 = -1;
    if (v28 < 64)
    {
      v29 = ~(-1 << v28);
    }

    v30 = v29 & *(v51 + 64);
    v31 = (v28 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v32 = 0;
    while (1)
    {
      v33 = v32;
      if (!v30)
      {
        break;
      }

LABEL_11:
      sub_1CA2D9D20(*(v26 + 56) + *(v48 + 72) * (__clz(__rbit64(v30)) | (v32 << 6)), v14, &qword_1EC445580, &unk_1CA983450);
      sub_1CA416788(v14, v47, v8);
      v30 &= v30 - 1;
      sub_1CA27080C(v14, &qword_1EC445580, &unk_1CA983450);
      if (__swift_getEnumTagSinglePayload(v8, 1, v49) == 1)
      {
        sub_1CA27080C(v8, &qword_1EC445578, &unk_1CA987618);
      }

      else
      {
        sub_1CA2D9CD4(v8, v44, &unk_1EC4440B0, &unk_1CA981B10);
        sub_1CA2D9CD4(v44, v45, &unk_1EC4440B0, &unk_1CA981B10);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1CA2E62D0();
          v46 = v38;
        }

        v34 = *(v46 + 16);
        v35 = v34 + 1;
        if (v34 >= *(v46 + 24) >> 1)
        {
          v41 = *(v46 + 16);
          v42 = v34 + 1;
          sub_1CA2E62D0();
          v34 = v41;
          v35 = v42;
          v46 = v39;
        }

        v36 = v45;
        v37 = v46;
        *(v46 + 16) = v35;
        sub_1CA2D9CD4(v36, v37 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v34, &unk_1EC4440B0, &unk_1CA981B10);
      }
    }

    while (1)
    {
      v32 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v32 >= v31)
      {

        swift_bridgeObjectRelease_n();
        v50 = v46;
        sub_1CA94C218();
        sub_1CA425150(&v50);

        return;
      }

      v30 = *(v27 + 8 * v32);
      ++v33;
      if (v30)
      {
        goto LABEL_11;
      }
    }

    __break(1u);

    sub_1CA27080C(v14, &qword_1EC445580, &unk_1CA983450);

    __break(1u);

    __break(1u);
  }

  else
  {
  }
}

uint64_t sub_1CA414BBC(uint64_t a1, unint64_t a2)
{
  sub_1CA417124(a1, a2, *v2, *(v2 + 8), *(v2 + 16));
  if (v4)
  {
    v6 = v3;
    v7 = v4;
    v8 = v5;
    sub_1CA94C218();
    v9 = sub_1CA94D118();
    v13 = sub_1CA4178E4(v8, v9, v10, v11, v12, 0, 1, v6, v7);

    return v13;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445580, &unk_1CA983450);

    return sub_1CA94C1E8();
  }
}

uint64_t sub_1CA414CD8(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445580, &unk_1CA983450);
  v73 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v64 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v70 = &v60 - v8;
  v65 = v9;
  MEMORY[0x1EEE9AC00](v7);
  v69 = &v60 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445590, &qword_1CA987630);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v68 = (&v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v66 = (&v60 - v14);
  v15 = a1 + 64;
  v16 = 1 << *(a1 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(a1 + 64);
  v67 = (v16 + 63) >> 6;
  v62 = a1;
  sub_1CA94C218();
  v74 = 0;
  v19 = 0;
  v20 = 0;
  v63 = a1 + 64;
  v61 = v2;
  while (1)
  {
    v71 = v19;
    if (!v18)
    {
      break;
    }

    v21 = v74;
    v22 = v20;
LABEL_11:
    v74 = v21;
    v24 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v25 = v24 | (v22 << 6);
    v26 = (*(v62 + 48) + 16 * v25);
    v28 = *v26;
    v27 = v26[1];
    v29 = v69;
    sub_1CA2D9D20(*(v62 + 56) + *(v73 + 72) * v25, v69, &qword_1EC445580, &unk_1CA983450);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445598, &qword_1CA987638);
    v31 = *(v30 + 48);
    v32 = v68;
    *v68 = v28;
    v32[1] = v27;
    v33 = v29;
    v23 = v32;
    sub_1CA2D9CD4(v33, v32 + v31, &qword_1EC445580, &unk_1CA983450);
    __swift_storeEnumTagSinglePayload(v23, 0, 1, v30);
    sub_1CA94C218();
    v2 = v61;
LABEL_12:
    v34 = v23;
    v35 = v66;
    sub_1CA2D9CD4(v34, v66, &qword_1EC445590, &qword_1CA987630);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445598, &qword_1CA987638);
    if (__swift_getEnumTagSinglePayload(v35, 1, v36) == 1)
    {

      return sub_1CA293254(v74, v71);
    }

    v38 = *v35;
    v37 = v35[1];
    v39 = v35 + *(v36 + 48);
    v40 = v70;
    sub_1CA2D9CD4(v39, v70, &qword_1EC445580, &unk_1CA983450);
    v41 = v40;
    v42 = v64;
    sub_1CA2D9D20(v41, v64, &qword_1EC445580, &unk_1CA983450);
    v43 = (*(v73 + 80) + 16) & ~*(v73 + 80);
    v72 = swift_allocObject();
    sub_1CA2D9CD4(v42, v72 + v43, &qword_1EC445580, &unk_1CA983450);
    sub_1CA293254(v74, v71);
    swift_isUniquelyReferenced_nonNull_native();
    v75 = *v2;
    v44 = v75;
    v45 = v38;
    v46 = v38;
    v47 = v37;
    v48 = sub_1CA271BF8(v46, v37);
    if (__OFADD__(*(v44 + 16), (v49 & 1) == 0))
    {
      goto LABEL_23;
    }

    v50 = v48;
    v51 = v49;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4455A0, &unk_1CA987640);
    v52 = sub_1CA94D588();
    v53 = v75;
    if (v52)
    {
      v54 = sub_1CA271BF8(v45, v47);
      if ((v51 & 1) != (v55 & 1))
      {
        goto LABEL_24;
      }

      v50 = v54;
    }

    *v2 = v53;
    if ((v51 & 1) == 0)
    {
      v56 = v69;
      sub_1CA435F8C(v69);
      sub_1CA32317C(v50, v45, v47, v56, v53);
      sub_1CA94C218();
    }

    v57 = v70;
    sub_1CA418718();

    sub_1CA27080C(v57, &qword_1EC445580, &unk_1CA983450);
    v74 = sub_1CA435F8C;
    v19 = v72;
    v15 = v63;
  }

  v23 = v68;
  while (1)
  {
    v22 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v22 >= v67)
    {
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445598, &qword_1CA987638);
      __swift_storeEnumTagSinglePayload(v23, 1, 1, v58);
      v18 = 0;
      goto LABEL_12;
    }

    v18 = *(v15 + 8 * v22);
    ++v20;
    if (v18)
    {
      v21 = v74;
      v20 = v22;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_1CA94D878();
  __break(1u);
  return result;
}

uint64_t sub_1CA41522C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  result = sub_1CA40FF50(a1, a2);
  v5 = 0;
  v6 = 0;
  v18 = *(result + 16);
  v19 = result;
  v7 = (result + 56);
  while (v18 != v6)
  {
    if (v6 >= *(v19 + 16))
    {
      __break(1u);
      return result;
    }

    v20 = v5;
    v8 = *(v7 - 3);
    v9 = *(v7 - 2);
    v11 = *(v7 - 1);
    v10 = *v7;
    v12 = *v3;
    v13 = *(v3 + 8);
    v14 = *(v3 + 16);
    sub_1CA94C218();
    sub_1CA416950(v8, v9, v11, v10, v12, v13, v14);
    if (!v16)
    {

      goto LABEL_11;
    }

    v5 = sub_1CA4178E4(v17, v8, v9, v11, v10, v6, 0, v15, v16);

    if (v20)
    {
      sub_1CA4181EC(v5);

      v5 = v20;
    }

    v7 += 4;
    ++v6;
  }

  if (v5)
  {
    return v5;
  }

LABEL_11:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445580, &unk_1CA983450);

  return sub_1CA94C1E8();
}

uint64_t sub_1CA4153F8(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445580, &unk_1CA983450);
  v122 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v114 = &v109 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4445D0, &qword_1CA983080);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v116 = &v109 - v8;
  v9 = sub_1CA94B1C8();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v115 = &v109 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v111 = &v109 - v13;
  v14 = type metadata accessor for DrawerAction(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v109 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = type metadata accessor for DrawerSearchIndexItem(0);
  v17 = MEMORY[0x1EEE9AC00](v123);
  v142 = &v109 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v109 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445470, &qword_1CA9824D8);
  v22 = *(v21 - 8);
  v140 = v21;
  v141 = v22;
  MEMORY[0x1EEE9AC00](v21);
  v135 = &v109 - v23;
  v137 = v5;
  v147 = sub_1CA94C1E8();
  v143 = a2;
  v24 = round(sub_1CA94C468() * 0.2);
  if ((*&v24 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  if (v24 > -9.22337204e18)
  {
    if (v24 >= 9.22337204e18)
    {
      goto LABEL_62;
    }

    v25 = v24;
    if (v24 > 5)
    {
      v25 = 6;
    }

    else if (v25 < 1)
    {
      return v147;
    }

    v112 = v16;
    v113 = v14;
    v130 = v9;
    v26 = sub_1CA412088(a1, v143, v25, *v2, v2[1], v2[2]);
    v27 = 0;
    v28 = v26 + 64;
    v29 = 1 << *(v26 + 32);
    v30 = -1;
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    v31 = v30 & *(v26 + 64);
    v136 = (v29 + 63) >> 6;
    v117 = (v10 + 8);
    v118 = (v10 + 32);
    v121 = (v150 + 1);
    v138 = v26;
    v139 = a1;
LABEL_11:
    if (v31)
    {
      goto LABEL_16;
    }

    while (1)
    {
      v32 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v32 >= v136)
      {

        return v147;
      }

      v31 = *(v28 + 8 * v32);
      ++v27;
      if (v31)
      {
        v27 = v32;
LABEL_16:
        v33 = __clz(__rbit64(v31));
        v31 &= v31 - 1;
        v34 = v33 | (v27 << 6);
        v35 = (*(v26 + 56) + 16 * v34);
        v36 = v35[1];
        if (v36)
        {
          v37 = (*(v26 + 48) + 16 * v34);
          v38 = v37[1];
          v145 = *v37;
          v39 = *v35;
          v148 = v38;
          sub_1CA94C218();

          v40 = sub_1CA94C468();
          v41 = sub_1CA94C468();
          v146 = v36;
          v42 = __OFADD__(v41, v36);
          v43 = v41 + v36;
          if (v42)
          {
            goto LABEL_57;
          }

          swift_beginAccess();
          v44 = *(v39 + 40);
          if (!*(v44 + 16))
          {

            v26 = v138;
            goto LABEL_11;
          }

          v131 = *(v44 + 16);
          v45 = v40 * 0.4 / v43;
          v133 = v44 + ((*(v141 + 80) + 32) & ~*(v141 + 80));
          v134 = v44;
          sub_1CA94C218();
          v46 = 0;
          v47 = v135;
          v109 = v20;
          v110 = v28;
          v132 = v39;
          while (2)
          {
            if (v46 >= *(v134 + 16))
            {
              goto LABEL_58;
            }

            v48 = *(v141 + 72);
            v144 = v46;
            sub_1CA2D9D20(v133 + v48 * v46, v47, &qword_1EC445470, &qword_1CA9824D8);
            if (*(v47 + v140[11]) == 1)
            {
              v49 = (v47 + v140[13]);
              v50 = *v49;
              v51 = v49[1];
              v52 = v49[2];
              v53 = v49[3];
              v54 = *(v47 + v140[10]);
              v124 = *(v47 + v140[9]);
              LOBYTE(v151[0]) = v124;
              v151[1] = v50;
              v151[2] = v51;
              v151[3] = v52;
              v151[4] = v53;
              v126 = v51;
              v127 = v50;
              v151[5] = v50;
              v151[6] = v51;
              v125 = v52;
              v151[7] = v52;
              v151[8] = v53;
              *&v151[9] = v45;
              v151[10] = v54;
              v151[11] = v145;
              v151[12] = v148;
              v151[13] = v146;
              sub_1CA42B9A4(v47, v20);
              EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
              v128 = v53;
              if (EnumCaseMultiPayload == 1)
              {
                v56 = v115;
                v57 = v130;
                (*v118)(v115, v20, v130);
                swift_bridgeObjectRetain_n();
                sub_1CA94C218();
                v58 = sub_1CA94B0F8();
                v60 = v59;
                (*v117)(v56, v57);
              }

              else
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445408, &unk_1CA986FF0);
                swift_bridgeObjectRetain_n();
                sub_1CA94C218();

                v64 = v112;
                sub_1CA42BA50(v20, v112);
                v65 = v113;
                v66 = v116;
                sub_1CA2D9D20(v64 + *(v113 + 24), v116, &qword_1EC4445D0, &qword_1CA983080);
                if (__swift_getEnumTagSinglePayload(v66, 1, v130) == 1)
                {
                  sub_1CA27080C(v66, &qword_1EC4445D0, &qword_1CA983080);
                  v67 = (v64 + *(v65 + 28));
                  v58 = *v67;
                  v60 = v67[1];
                  sub_1CA94C218();
                }

                else
                {
                  v68 = v111;
                  v69 = v130;
                  (*v118)(v111, v66, v130);
                  v150[0] = sub_1CA94B0F8();
                  v150[1] = v70;
                  MEMORY[0x1CCAA1300](45, 0xE100000000000000);
                  MEMORY[0x1CCAA1300](*(v64 + *(v65 + 28)), *(v64 + *(v65 + 28) + 8));
                  v58 = v150[0];
                  v60 = v150[1];
                  v71 = v68;
                  v47 = v135;
                  (*v117)(v71, v69);
                }

                sub_1CA42B9FC();
              }

              sub_1CA42B9A4(v47, v142);
              v72 = v147;
              swift_isUniquelyReferenced_nonNull_native();
              v150[0] = v72;
              v129 = v58;
              v73 = v60;
              v74 = sub_1CA271BF8(v58, v60);
              if (__OFADD__(*(v72 + 16), (v75 & 1) == 0))
              {
                goto LABEL_59;
              }

              v76 = v74;
              v77 = v75;
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4455A0, &unk_1CA987640);
              if (sub_1CA94D588())
              {
                v78 = sub_1CA271BF8(v129, v60);
                if ((v77 & 1) != (v79 & 1))
                {
                  goto LABEL_66;
                }

                v76 = v78;
              }

              v80 = v150[0];
              v147 = v150[0];
              if (v77)
              {
                v81 = *(v122 + 72) * v76;
              }

              else
              {
                v82 = v114;
                sub_1CA42B9A4(v142, v114);
                v83 = *(v137 + 36);
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4443D0, &qword_1CA983478);
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4440C0, &qword_1CA983470);
                sub_1CA276B98(&unk_1EC4455B0, &qword_1EC4443D0, &qword_1CA983478);
                *(v82 + v83) = sub_1CA94C1E8();
                v80 = v147;
                *(v147 + 8 * (v76 >> 6) + 64) |= 1 << v76;
                v84 = (v80[6] + 16 * v76);
                *v84 = v129;
                v84[1] = v73;
                v60 = v73;
                v81 = *(v122 + 72) * v76;
                sub_1CA2D9CD4(v82, v80[7] + v81, &qword_1EC445580, &unk_1CA983450);
                v85 = v80[2];
                v42 = __OFADD__(v85, 1);
                v86 = v85 + 1;
                if (v42)
                {
                  goto LABEL_64;
                }

                v80[2] = v86;
                sub_1CA94C218();
              }

              v87 = v80[7] + v81;
              v152[0] = v151[0];
              *&v152[8] = *&v151[1];
              *&v152[24] = v151[3];
              v153 = v151[4];
              v88 = *(v137 + 36);
              v89 = *(v87 + v88);
              v90 = *(v89 + 16);
              v129 = v151[4];
              sub_1CA94C218();
              v28 = v110;
              if (v90)
              {
                v91 = sub_1CA321028(v152);
                if ((v92 & 1) != 0 && *&v151[9] < *(*(v89 + 56) + 112 * v91 + 72))
                {

                  v20 = v109;
                  goto LABEL_51;
                }
              }

              v120 = v60;
              sub_1CA2D9D20(v151, v150, &qword_1EC4440C0, &qword_1CA983470);
              swift_isUniquelyReferenced_nonNull_native();
              v149 = *(v87 + v88);
              v93 = v149;
              v119 = v87;
              v94 = v88;
              *(v87 + v88) = 0x8000000000000000;
              v95 = sub_1CA321028(v152);
              if (__OFADD__(v93[2], (v96 & 1) == 0))
              {
                goto LABEL_63;
              }

              v97 = v95;
              v98 = v96;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4443C8, &qword_1CA987650);
              if (sub_1CA94D588())
              {
                v99 = sub_1CA321028(v152);
                v20 = v109;
                if ((v98 & 1) != (v100 & 1))
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4443D0, &qword_1CA983478);
                  goto LABEL_68;
                }

                v97 = v99;
                if ((v98 & 1) == 0)
                {
LABEL_46:
                  v101 = v149;
                  v149[(v97 >> 6) + 8] |= 1 << v97;
                  v102 = v101[6] + 40 * v97;
                  v103 = *&v152[16];
                  *v102 = *v152;
                  *(v102 + 16) = v103;
                  *(v102 + 32) = v153;
                  memcpy((v101[7] + 112 * v97), v151, 0x70uLL);
                  v104 = v101[2];
                  v42 = __OFADD__(v104, 1);
                  v105 = v104 + 1;
                  if (v42)
                  {
                    goto LABEL_65;
                  }

                  v101[2] = v105;
                  sub_1CA94C218();
                  goto LABEL_50;
                }
              }

              else
              {
                v20 = v109;
                if ((v98 & 1) == 0)
                {
                  goto LABEL_46;
                }
              }

              v101 = v149;
              v106 = (v149[7] + 112 * v97);
              memcpy(v150, v106, sizeof(v150));
              memcpy(v106, v151, 0x70uLL);
              sub_1CA27080C(v150, &qword_1EC4440C0, &qword_1CA983470);
LABEL_50:
              *(v119 + v94) = v101;

LABEL_51:
              v47 = v135;
              sub_1CA27080C(v135, &qword_1EC445470, &qword_1CA9824D8);
              sub_1CA42B9FC();
              LOBYTE(v150[0]) = v124;
              v107 = v121;
              *v121 = v149;
              *(v107 + 3) = *(&v149 + 3);
              v150[1] = v127;
              v150[2] = v126;
              v150[3] = v125;
              v150[4] = v128;
              v150[5] = v127;
              v150[6] = v126;
              v150[7] = v125;
              v150[8] = v128;
              *&v150[9] = v45;
              v150[10] = v54;
              v150[11] = v145;
              v150[12] = v148;
              v150[13] = v146;
              v61 = v150;
              v62 = &qword_1EC4440C0;
              v63 = &qword_1CA983470;
            }

            else
            {
              v61 = v47;
              v62 = &qword_1EC445470;
              v63 = &qword_1CA9824D8;
            }

            sub_1CA27080C(v61, v62, v63);
            v46 = v144 + 1;
            if (v131 == v144 + 1)
            {

              v26 = v138;
              goto LABEL_11;
            }

            continue;
          }
        }

        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  sub_1CA42B9FC();
LABEL_68:
  result = sub_1CA94D878();
  __break(1u);
  return result;
}

void sub_1CA41617C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445588, &qword_1CA987628);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v63 = &v57 - v3;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445580, &unk_1CA983450);
  v4 = *(v62 - 8);
  v5 = MEMORY[0x1EEE9AC00](v62);
  v65 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v69 = &v57 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v57 = &v57 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445590, &qword_1CA987630);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = (&v57 - v14);
  v16 = a1 + 64;
  v17 = 1 << *(a1 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(a1 + 64);
  v20 = (v17 + 63) >> 6;
  v58 = a1;
  sub_1CA94C218();
  v21 = v20;
  v22 = 0;
  v66 = v13;
  v67 = v15;
  v59 = v20;
  v60 = v16;
  v61 = v4;
  if (v19)
  {
    while (1)
    {
      v23 = v22;
LABEL_9:
      v24 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      v25 = v24 | (v23 << 6);
      v26 = v57;
      v27 = (*(v58 + 48) + 16 * v25);
      v29 = *v27;
      v28 = v27[1];
      sub_1CA2D9D20(*(v58 + 56) + *(v4 + 72) * v25, v57, &qword_1EC445580, &unk_1CA983450);
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445598, &qword_1CA987638);
      v31 = *(v30 + 48);
      v32 = v66;
      *v66 = v29;
      *(v32 + 1) = v28;
      v13 = v32;
      sub_1CA2D9CD4(v26, &v32[v31], &qword_1EC445580, &unk_1CA983450);
      __swift_storeEnumTagSinglePayload(v13, 0, 1, v30);
      sub_1CA94C218();
      v15 = v67;
LABEL_10:
      sub_1CA2D9CD4(v13, v15, &qword_1EC445590, &qword_1CA987630);
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445598, &qword_1CA987638);
      if (__swift_getEnumTagSinglePayload(v15, 1, v33) == 1)
      {
        break;
      }

      v35 = *v15;
      v34 = v15[1];
      sub_1CA2D9CD4(v15 + *(v33 + 48), v69, &qword_1EC445580, &unk_1CA983450);
      v36 = *v68;
      if (*(*v68 + 16) && (v37 = sub_1CA271BF8(v35, v34), (v38 & 1) != 0))
      {
        v4 = v61;
        v39 = *(v36 + 56) + *(v61 + 72) * v37;
        v40 = v63;
        sub_1CA2D9D20(v39, v63, &qword_1EC445580, &unk_1CA983450);
        __swift_storeEnumTagSinglePayload(v40, 0, 1, v62);
        sub_1CA27080C(v69, &qword_1EC445580, &unk_1CA983450);

        sub_1CA27080C(v40, &qword_1EC445588, &qword_1CA987628);
      }

      else
      {
        v41 = v63;
        __swift_storeEnumTagSinglePayload(v63, 1, 1, v62);
        sub_1CA27080C(v41, &qword_1EC445588, &qword_1CA987628);
        sub_1CA2D9D20(v69, v65, &qword_1EC445580, &unk_1CA983450);
        v42 = v68;
        swift_isUniquelyReferenced_nonNull_native();
        v43 = *v42;
        v70 = v43;
        v64 = v35;
        v44 = sub_1CA271BF8(v35, v34);
        if (__OFADD__(v43[2], (v45 & 1) == 0))
        {
          goto LABEL_28;
        }

        v46 = v44;
        v47 = v45;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4455A0, &unk_1CA987640);
        if (sub_1CA94D588())
        {
          v48 = sub_1CA271BF8(v64, v34);
          if ((v47 & 1) != (v49 & 1))
          {
            goto LABEL_30;
          }

          v46 = v48;
        }

        v4 = v61;
        if (v47)
        {

          v50 = v70;
          sub_1CA435F40(v65, v70[7] + *(v4 + 72) * v46, &qword_1EC445580, &unk_1CA983450);
          sub_1CA27080C(v69, &qword_1EC445580, &unk_1CA983450);
          v15 = v67;
        }

        else
        {
          v50 = v70;
          v70[(v46 >> 6) + 8] |= 1 << v46;
          v51 = (v50[6] + 16 * v46);
          v52 = v65;
          *v51 = v64;
          v51[1] = v34;
          sub_1CA2D9CD4(v52, v50[7] + *(v4 + 72) * v46, &qword_1EC445580, &unk_1CA983450);
          sub_1CA27080C(v69, &qword_1EC445580, &unk_1CA983450);
          v53 = v50[2];
          v54 = __OFADD__(v53, 1);
          v55 = v53 + 1;
          v15 = v67;
          if (v54)
          {
            goto LABEL_29;
          }

          v50[2] = v55;
        }

        *v68 = v50;
        v13 = v66;
      }

      v21 = v59;
      v16 = v60;
      if (!v19)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v23 >= v21)
      {
        v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445598, &qword_1CA987638);
        __swift_storeEnumTagSinglePayload(v13, 1, 1, v56);
        v19 = 0;
        goto LABEL_10;
      }

      v19 = *(v16 + 8 * v23);
      ++v22;
      if (v19)
      {
        v22 = v23;
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    sub_1CA94D878();
    __break(1u);
  }
}

void sub_1CA416788(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 32);
  v6 = sub_1CA42928C();
  v8 = COERCE_DOUBLE(sub_1CA311A0C(v6, v7, v5));
  v10 = v9;

  if (v10)
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4440B0, &unk_1CA981B10);
    v12 = a3;
    v13 = 1;
LABEL_14:
    __swift_storeEnumTagSinglePayload(v12, v13, 1, v11);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445580, &unk_1CA983450);
    sub_1CA94C218();
    sub_1CA2E3190();
    v15 = 0;
    v16 = 1 << *(v14 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v14 + 56);
    for (i = 0.0; v18; i = i + *(v22 + 72) * *(v22 + 80) / v8)
    {
      v20 = v15;
LABEL_11:
      v21 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v22 = *(v14 + 48) + 112 * (v21 | (v20 << 6));
    }

    while (1)
    {
      v20 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v20 >= ((v16 + 63) >> 6))
      {

        sub_1CA42B9A4(a1, a3);
        sub_1CA94C218();
        sub_1CA2E3190();
        v24 = v23;
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4440B0, &unk_1CA981B10);
        *(a3 + *(v11 + 36)) = i;
        *(a3 + *(v11 + 40)) = v24;
        v12 = a3;
        v13 = 0;
        goto LABEL_14;
      }

      v18 = *(v14 + 56 + 8 * v20);
      ++v15;
      if (v18)
      {
        v15 = v20;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

void sub_1CA416950(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  if (!((a2 ^ a1) >> 14))
  {

    return;
  }

  v73 = a7;
  v87 = 0;
  v88 = 0xE000000000000000;
  v83 = a1;
  v84 = a2;
  v85 = a3;
  v86 = a4;
  v8 = sub_1CA435C28();
  sub_1CA94C218();
  v64[0] = v8;
  v9 = sub_1CA94D138();
  v11 = v10;
  v13 = v12;
  v15 = v14;

LABEL_4:
  swift_beginAccess();
  v64[1] = a5;
  v16 = a5[2];
  v67 = sub_1CA25B410(v16);
  v66 = v16 & 0xC000000000000001;
  v65 = v16 & 0xFFFFFFFFFFFFFF8;
  v68 = v16;
  sub_1CA94C218();
  v17 = 0;
  v80 = v15;
  v71 = v11;
  v72 = v9;
  for (i = v13; ; v13 = i)
  {
    if (v67 == v17)
    {

LABEL_33:

      return;
    }

    if (v66)
    {
      v18 = MEMORY[0x1CCAA22D0](v17, v68);
    }

    else
    {
      if (v17 >= *(v65 + 16))
      {
        goto LABEL_36;
      }

      v18 = *(v68 + 8 * v17 + 32);
    }

    if (__OFADD__(v17, 1))
    {
      break;
    }

    v74 = v17;
    v83 = v9;
    v84 = v11;
    v85 = v13;
    v86 = v15;
    v19 = *(v18 + 32);
    v81 = *(v18 + 24);
    v82 = v19;
    v78 = v19;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445488, &qword_1CA987590);
    v79 = v64;
    v77 = *(*(v20 - 8) + 64);
    MEMORY[0x1EEE9AC00](v20 - 8);
    v21 = v13;
    v75 = v22;
    v23 = v64 - v22;
    v76 = sub_1CA948E58();
    __swift_storeEnumTagSinglePayload(v23, 1, 1, v76);
    v24 = sub_1CA435BD4();
    sub_1CA27BAF0();
    sub_1CA94C218();
    sub_1CA94C218();
    v25 = sub_1CA94D228();
    v26 = v23;
    v27 = v80;
    sub_1CA27080C(v26, &unk_1EC445488, &qword_1CA987590);

    if (!v25)
    {

      return;
    }

    v83 = v9;
    v84 = v11;
    v85 = v21;
    v86 = v27;
    v28 = *(v18 + 32);
    v81 = *(v18 + 24);
    v82 = v28;
    v69 = v24;
    v29 = sub_1CA94D188();
    v31 = v30;
    v78 = v64;
    v79 = v18;
    v83 = v29;
    v84 = v30;
    v32 = *(v18 + 32);
    v81 = *(v18 + 24);
    v82 = v32;
    v33 = v77;
    MEMORY[0x1EEE9AC00](v29);
    v34 = v64 - v75;
    __swift_storeEnumTagSinglePayload(v64 - v75, 1, 1, v76);
    sub_1CA94C218();
    v35 = sub_1CA94D228();
    sub_1CA27080C(v34, &unk_1EC445488, &qword_1CA987590);

    if (!v35)
    {

      sub_1CA94C218();
      sub_1CA94C468();

      v52 = v71;
      v51 = v72;
      v53 = sub_1CA94D0D8() >> 14;
      if (v53 < v51 >> 14)
      {
        goto LABEL_37;
      }

      v54 = sub_1CA94D128();
      v56 = v55;
      v58 = v57;
      v60 = v59;

      v83 = v54;
      v84 = v56;
      v85 = v58;
      v86 = v60;
      sub_1CA94C498();

      if (v53 <= v52 >> 14)
      {
        v9 = sub_1CA94D128();
        v11 = v61;
        v13 = v62;
        v15 = v63;

        a5 = v79;
        goto LABEL_4;
      }

      goto LABEL_38;
    }

    v37 = HIBYTE(v31) & 0xF;
    if ((v31 & 0x2000000000000000) == 0)
    {
      v37 = v29 & 0xFFFFFFFFFFFFLL;
    }

    if (!v37)
    {
LABEL_21:

      goto LABEL_24;
    }

    v81 = v29;
    v82 = v31;
    v83 = v72;
    v84 = v71;
    v85 = i;
    v86 = v80;
    MEMORY[0x1EEE9AC00](v36);
    v38 = v64 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
    __swift_storeEnumTagSinglePayload(v38, 1, 1, v39);
    sub_1CA94C218();
    v40 = sub_1CA94D228();
    sub_1CA27080C(v38, &unk_1EC445488, &qword_1CA987590);

    if (!v40)
    {

      return;
    }

    v41 = sub_1CA94C568();
    v43 = v42;
    sub_1CA94C218();
    v44 = sub_1CA94C568();
    v46 = v45;

    if (v41 == v44 && v43 == v46)
    {
    }

    else
    {
      v48 = sub_1CA94D7F8();

      if ((v48 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    v49 = sub_1CA94C468();

    sub_1CA94C218();
    v50 = sub_1CA94C468();

    if (v49 < v50)
    {

      goto LABEL_33;
    }

LABEL_24:
    v17 = v74 + 1;
    v15 = v80;
    v11 = v71;
    v9 = v72;
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
}

void sub_1CA417124(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {

    return;
  }

  v68 = a5;
  v83 = 0;
  v84 = 0xE000000000000000;
  v79 = a1;
  v80 = a2;
  sub_1CA94C218();
  v7 = sub_1CA94D138();
  v9 = v8;
  v11 = v10;
  v13 = v12;

LABEL_5:
  swift_beginAccess();
  v60[1] = a3;
  v14 = a3[2];
  v64 = sub_1CA25B410(v14);
  v63 = v14 & 0xC000000000000001;
  v62 = v14 & 0xFFFFFFFFFFFFFF8;
  v65 = v14;
  sub_1CA94C218();
  v15 = 0;
  v67 = v7;
  v74 = v11;
  v75 = v9;
  v61 = v13;
  while (1)
  {
    if (v64 == v15)
    {

LABEL_35:

      return;
    }

    if (v63)
    {
      v16 = MEMORY[0x1CCAA22D0](v15, v65);
    }

    else
    {
      if (v15 >= *(v62 + 16))
      {
        goto LABEL_38;
      }

      v16 = *(v65 + 8 * v15 + 32);
    }

    if (__OFADD__(v15, 1))
    {
      break;
    }

    v69 = v15;
    v79 = v7;
    v80 = v9;
    v81 = v11;
    v82 = v13;
    v17 = *(v16 + 32);
    v18 = v13;
    v77 = *(v16 + 24);
    v78 = v17;
    v72 = v17;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445488, &qword_1CA987590);
    v73 = v60;
    v76 = *(*(v19 - 8) + 64);
    MEMORY[0x1EEE9AC00](v19 - 8);
    v70 = v20;
    v21 = v60 - v20;
    v71 = sub_1CA948E58();
    __swift_storeEnumTagSinglePayload(v21, 1, 1, v71);
    v22 = sub_1CA435BD4();
    sub_1CA27BAF0();
    sub_1CA94C218();
    sub_1CA94C218();
    v23 = sub_1CA94D228();
    sub_1CA27080C(v21, &unk_1EC445488, &qword_1CA987590);

    if (!v23)
    {

      return;
    }

    v79 = v7;
    v80 = v75;
    v81 = v74;
    v82 = v18;
    v24 = *(v16 + 32);
    v77 = *(v16 + 24);
    v78 = v24;
    v66 = v22;
    v25 = sub_1CA94D188();
    v27 = v26;
    v72 = v60;
    v73 = v16;
    v79 = v25;
    v80 = v26;
    v28 = *(v16 + 32);
    v77 = *(v16 + 24);
    v78 = v28;
    MEMORY[0x1EEE9AC00](v25);
    v29 = v60 - v70;
    __swift_storeEnumTagSinglePayload(v60 - v70, 1, 1, v71);
    sub_1CA94C218();
    v30 = sub_1CA94D228();
    sub_1CA27080C(v29, &unk_1EC445488, &qword_1CA987590);

    if (!v30)
    {

      sub_1CA94C218();
      sub_1CA94C468();

      v47 = v67;
      v48 = sub_1CA94D0D8() >> 14;
      if (v48 < v47 >> 14)
      {
        goto LABEL_39;
      }

      v49 = sub_1CA94D128();
      v51 = v50;
      v53 = v52;
      v55 = v54;

      v79 = v49;
      v80 = v51;
      v56 = v75;
      v81 = v53;
      v82 = v55;
      sub_1CA435C28();
      sub_1CA94C498();

      if (v48 <= v56 >> 14)
      {
        v7 = sub_1CA94D128();
        v9 = v57;
        v11 = v58;
        v13 = v59;

        a3 = v73;
        goto LABEL_5;
      }

      goto LABEL_40;
    }

    v32 = HIBYTE(v27) & 0xF;
    if ((v27 & 0x2000000000000000) == 0)
    {
      v32 = v25 & 0xFFFFFFFFFFFFLL;
    }

    v13 = v61;
    if (!v32)
    {
LABEL_22:

      v7 = v67;
      v11 = v74;
      goto LABEL_25;
    }

    v77 = v25;
    v78 = v27;
    v79 = v67;
    v80 = v75;
    v81 = v74;
    v82 = v61;
    MEMORY[0x1EEE9AC00](v31);
    v34 = v60 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
    __swift_storeEnumTagSinglePayload(v34, 1, 1, v35);
    sub_1CA94C218();
    v36 = sub_1CA94D228();
    sub_1CA27080C(v34, &unk_1EC445488, &qword_1CA987590);

    if (!v36)
    {

      return;
    }

    v37 = sub_1CA94C568();
    v39 = v38;
    sub_1CA94C218();
    v40 = sub_1CA94C568();
    v42 = v41;

    if (v37 == v40 && v39 == v42)
    {
    }

    else
    {
      v44 = sub_1CA94D7F8();

      if ((v44 & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    v45 = sub_1CA94C468();

    sub_1CA94C218();
    v46 = sub_1CA94C468();

    v7 = v67;
    v11 = v74;
    if (v45 < v46)
    {

      goto LABEL_35;
    }

LABEL_25:
    v15 = v69 + 1;
    v9 = v75;
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
}

uint64_t sub_1CA4178E4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, unint64_t a9)
{
  v110 = a7;
  v109 = a6;
  v98 = a5;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445580, &unk_1CA983450);
  v87 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v84 = v82 - v15;
  v16 = type metadata accessor for DrawerSearchIndexItem(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v99 = v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445470, &qword_1CA9824D8);
  v103 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v88 = v82 - v18;
  v19 = a1[3];
  v20 = a1[4];
  v130 = a8;
  v131 = a9;
  sub_1CA94C218();
  MEMORY[0x1CCAA1300](v19, v20);
  v104 = v130;
  v105 = v131;
  v21 = sub_1CA94C468();
  v106 = a2;
  v107 = a3;
  v108 = a4;
  v22 = sub_1CA94D0F8();
  v85 = v14;
  v129 = sub_1CA94C1E8();
  swift_beginAccess();
  v83 = a1;
  v23 = a1[5];
  v24 = *(v23 + 16);
  if (v24)
  {
    v25 = v22 / v21;
    v26 = v23 + ((*(v103 + 80) + 32) & ~*(v103 + 80));
    v27 = v103[9];
    v86 = (&v111 + 1);
    v82[1] = v23;
    sub_1CA94C218();
    v28 = v88;
    v29 = v89;
    v97 = v27;
    while (1)
    {
      sub_1CA2D9D20(v26, v28, &qword_1EC445470, &qword_1CA9824D8);
      if ((*(v28 + v29[12]))(v109, v110 & 1, v25))
      {
        v30 = (v28 + v29[13]);
        v32 = *v30;
        v31 = v30[1];
        v33 = v30[2];
        v34 = v30[3];
        v111 = *v30;
        v112 = v31;
        v101 = v33;
        v102 = v31;
        v113 = v33;
        v114 = v34;
        v125 = v106;
        v126 = v107;
        v127 = v108;
        v128 = v98;
        v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445488, &qword_1CA987590);
        v103 = v82;
        MEMORY[0x1EEE9AC00](v35 - 8);
        v37 = v82 - v36;
        v38 = sub_1CA948E58();
        __swift_storeEnumTagSinglePayload(v37, 1, 1, v38);
        sub_1CA435BD4();
        sub_1CA94C218();
        sub_1CA94D218();
        v40 = v39;
        v42 = v41;
        sub_1CA27080C(v37, &unk_1EC445488, &qword_1CA987590);
        v100 = v34;

        if (v42)
        {
          sub_1CA27080C(v28, &qword_1EC445470, &qword_1CA9824D8);
          v27 = v97;
        }

        else
        {
          if (v40 >> 14 < v32 >> 14)
          {
            __break(1u);
LABEL_29:
            __break(1u);
LABEL_30:
            __break(1u);
LABEL_31:
            __break(1u);
LABEL_32:
            sub_1CA42B9FC();
            result = sub_1CA94D878();
            __break(1u);
            return result;
          }

          v43 = v32;
          v95 = v26;
          v91 = v24;
          v44 = *(v28 + v29[9]);
          v45 = v100;
          swift_bridgeObjectRetain_n();
          v46 = v101;
          v47 = v102;
          v48 = sub_1CA94D128();
          v96 = v49;
          v103 = v50;
          v51 = v29;
          v53 = v52;

          v54 = *(v28 + v51[10]);
          v93 = v44;
          LOBYTE(v130) = v44;
          v94 = v43;
          v131 = v43;
          v132 = v47;
          v133 = v46;
          v134 = v45;
          v92 = v48;
          v135 = v48;
          v55 = v96;
          v136 = v96;
          v137 = v103;
          v90 = v53;
          v138 = v53;
          v139 = v25;
          v140 = v54;
          v142 = 0;
          v143 = 0;
          v141 = 0;
          v56 = sub_1CA42928C();
          v58 = v57;
          sub_1CA42B9A4(v28, v99);
          v59 = v129;
          swift_isUniquelyReferenced_nonNull_native();
          v111 = v59;
          v60 = sub_1CA271BF8(v56, v58);
          if (__OFADD__(*(v59 + 16), (v61 & 1) == 0))
          {
            goto LABEL_29;
          }

          v62 = v60;
          v63 = v61;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4455A0, &unk_1CA987640);
          if (sub_1CA94D588())
          {
            v64 = sub_1CA271BF8(v56, v58);
            v26 = v95;
            if ((v63 & 1) != (v65 & 1))
            {
              goto LABEL_32;
            }

            v62 = v64;
          }

          else
          {
            v26 = v95;
          }

          v66 = v111;
          v129 = v111;
          if ((v63 & 1) == 0)
          {
            v67 = v84;
            sub_1CA42B9A4(v99, v84);
            v95 = *(v85 + 36);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4443D0, &qword_1CA983478);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4440C0, &qword_1CA983470);
            sub_1CA276B98(&unk_1EC4455B0, &qword_1EC4443D0, &qword_1CA983478);
            *(v67 + v95) = sub_1CA94C1E8();
            v66[(v62 >> 6) + 8] |= 1 << v62;
            v68 = (v66[6] + 16 * v62);
            *v68 = v56;
            v68[1] = v58;
            sub_1CA2D9CD4(v67, v66[7] + *(v87 + 72) * v62, &qword_1EC445580, &unk_1CA983450);
            v69 = v66[2];
            v70 = __OFADD__(v69, 1);
            v71 = v69 + 1;
            if (v70)
            {
              goto LABEL_30;
            }

            v66[2] = v71;
            sub_1CA94C218();
          }

          sub_1CA4185F4(&v130);

          sub_1CA42B9FC();
          LOBYTE(v111) = v93;
          v72 = v86;
          *v86 = v125;
          *(v72 + 3) = *(&v125 + 3);
          v112 = v94;
          v113 = v102;
          v114 = v101;
          v115 = v100;
          v116 = v92;
          v117 = v55;
          v118 = v103;
          v119 = v90;
          v120 = v25;
          v121 = v54;
          v123 = 0;
          v124 = 0;
          v122 = 0;
          sub_1CA27080C(&v111, &qword_1EC4440C0, &qword_1CA983470);
          v28 = v88;
          sub_1CA27080C(v88, &qword_1EC445470, &qword_1CA9824D8);
          v29 = v89;
          v27 = v97;
          v24 = v91;
        }
      }

      else
      {
        sub_1CA27080C(v28, &qword_1EC445470, &qword_1CA9824D8);
      }

      v26 += v27;
      if (!--v24)
      {

        break;
      }
    }
  }

  v73 = v83;
  swift_beginAccess();
  v74 = v73[2];
  v75 = sub_1CA25B410(v74);
  if (v75)
  {
    v76 = v75;
    if (v75 < 1)
    {
      goto LABEL_31;
    }

    sub_1CA94C218();
    v77 = 0;
    v78 = v98;
    do
    {
      if ((v74 & 0xC000000000000001) != 0)
      {
        v79 = MEMORY[0x1CCAA22D0](v77, v74);
      }

      else
      {
        v79 = *(v74 + 8 * v77 + 32);
      }

      ++v77;
      v80 = sub_1CA4178E4(v79, v106, v107, v108, v78, v109, v110 & 1, v104, v105);
      sub_1CA414CD8(v80);
    }

    while (v76 != v77);
  }

  return v129;
}

void sub_1CA4181EC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445580, &unk_1CA983450);
  v50 = *(v3 - 8);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v43 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v42 = &v41 - v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v41 = &v41 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v49 = &v41 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v41 - v12;
  v45 = v1;
  v14 = *v1;
  v15 = sub_1CA94C218();
  sub_1CA2E3304(v15);
  v16 = sub_1CA94C218();
  v51 = a1;
  sub_1CA2E3304(v16);
  v17 = sub_1CA6151F8();

  v46 = sub_1CA94C1E8();
  v47 = v17;
  v18 = 0;
  v19 = v17 + 56;
  v20 = 1 << v17[32];
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(v17 + 7);
  v23 = (v20 + 63) >> 6;
  v48 = v14;
  while (v22)
  {
    v24 = v22;
LABEL_10:
    v22 = (v24 - 1) & v24;
    if (*(v14 + 16))
    {
      v26 = (*(v17 + 6) + ((v18 << 10) | (16 * __clz(__rbit64(v24)))));
      v28 = *v26;
      v27 = v26[1];
      sub_1CA94C218();
      v29 = sub_1CA271BF8(v28, v27);
      if (v30)
      {
        v31 = *(v14 + 56);
        v44 = *(v50 + 72);
        v32 = v13;
        v33 = v49;
        sub_1CA2D9D20(v31 + v44 * v29, v49, &qword_1EC445580, &unk_1CA983450);
        v34 = v33;
        v13 = v32;
        sub_1CA2D9CD4(v34, v32, &qword_1EC445580, &unk_1CA983450);
        if (*(v51 + 16) && (v35 = sub_1CA271BF8(v28, v27), (v36 & 1) != 0))
        {
          v38 = v42;
          sub_1CA2D9D20(*(v51 + 56) + v35 * v44, v42, &qword_1EC445580, &unk_1CA983450);
          v39 = v41;
          sub_1CA2D9CD4(v38, v41, &qword_1EC445580, &unk_1CA983450);
          sub_1CA418718();
          sub_1CA2D9D20(v13, v43, &qword_1EC445580, &unk_1CA983450);
          v40 = v46;
          swift_isUniquelyReferenced_nonNull_native();
          v52 = v40;
          sub_1CA3227D4();

          v46 = v52;
          sub_1CA27080C(v39, &qword_1EC445580, &unk_1CA983450);
          v37 = v13;
        }

        else
        {

          v37 = v32;
        }

        sub_1CA27080C(v37, &qword_1EC445580, &unk_1CA983450);
        v17 = v47;
        v14 = v48;
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v25 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v25 >= v23)
    {

      *v45 = v46;
      return;
    }

    v24 = *&v19[8 * v25];
    ++v18;
    if (v24)
    {
      v18 = v25;
      goto LABEL_10;
    }
  }

  __break(1u);
}

uint64_t sub_1CA4185F4(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v13[0] = *a1;
  v14 = *(a1 + 8);
  v15 = v4;
  v16 = v5;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445580, &unk_1CA983450) + 36);
  v7 = *(v1 + v6);
  v8 = *(v7 + 16);
  sub_1CA94C218();
  if (v8 && (v9 = sub_1CA321028(v13), (v10 & 1) != 0) && *(a1 + 72) < *(*(v7 + 56) + 112 * v9 + 72))
  {
  }

  else
  {
    sub_1CA2D9D20(a1, v12, &qword_1EC4440C0, &qword_1CA983470);
    swift_isUniquelyReferenced_nonNull_native();
    v12[0] = *(v2 + v6);
    sub_1CA3228F4();

    *(v2 + v6) = v12[0];
  }

  return result;
}

void sub_1CA418718()
{
  v1 = v0;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445580, &unk_1CA983450);
  sub_1CA94C218();
  sub_1CA2E3190();
  v3 = 0;
  v4 = v2 + 56;
  v31 = v2;
  v5 = 1 << *(v2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v2 + 56);
  v8 = (v5 + 63) >> 6;
  v9 = &qword_1EC4440C0;
  v29 = v0;
  while (v7)
  {
LABEL_9:
    v11 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    memcpy(__dst, (*(v31 + 48) + 112 * (v11 | (v3 << 6))), sizeof(__dst));
    v36[0] = __dst[0];
    *&v36[8] = *&__dst[1];
    *&v36[24] = __dst[3];
    v37 = __dst[4];
    v32 = *(v30 + 36);
    v12 = *(v1 + v32);
    if (!*(v12 + 16))
    {
      sub_1CA2D9D20(__dst, v34, v9, &qword_1CA983470);
      sub_1CA94C218();
      goto LABEL_14;
    }

    sub_1CA2D9D20(__dst, v34, v9, &qword_1CA983470);
    sub_1CA94C218();
    v13 = sub_1CA321028(v36);
    if ((v14 & 1) != 0 && *&__dst[9] < *(*(v12 + 56) + 112 * v13 + 72))
    {
      sub_1CA27080C(__dst, v9, &qword_1CA983470);
    }

    else
    {
LABEL_14:
      v15 = v9;
      sub_1CA2D9D20(__dst, v34, v9, &qword_1CA983470);
      swift_isUniquelyReferenced_nonNull_native();
      v33 = *(v1 + v32);
      v16 = sub_1CA321028(v36);
      if (__OFADD__(v33[2], (v17 & 1) == 0))
      {
        goto LABEL_25;
      }

      v18 = v16;
      v19 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4443C8, &qword_1CA987650);
      if (sub_1CA94D588())
      {
        v20 = sub_1CA321028(v36);
        if ((v19 & 1) != (v21 & 1))
        {
          goto LABEL_27;
        }

        v18 = v20;
      }

      if (v19)
      {
        v22 = v33;
        v23 = (v33[7] + 112 * v18);
        memcpy(v34, v23, sizeof(v34));
        memcpy(v23, __dst, 0x70uLL);
        v9 = v15;
        sub_1CA27080C(v34, v15, &qword_1CA983470);
        sub_1CA27080C(__dst, v15, &qword_1CA983470);
      }

      else
      {
        v22 = v33;
        v33[(v18 >> 6) + 8] |= 1 << v18;
        v24 = v33[6] + 40 * v18;
        v25 = *&v36[16];
        *v24 = *v36;
        *(v24 + 16) = v25;
        *(v24 + 32) = v37;
        memcpy((v33[7] + 112 * v18), __dst, 0x70uLL);
        v9 = v15;
        sub_1CA27080C(__dst, v15, &qword_1CA983470);
        v26 = v33[2];
        v27 = __OFADD__(v26, 1);
        v28 = v26 + 1;
        if (v27)
        {
          goto LABEL_26;
        }

        v33[2] = v28;
      }

      *(v29 + v32) = v22;
      v1 = v29;
    }
  }

  while (1)
  {
    v10 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v10 >= v8)
    {

      return;
    }

    v7 = *(v4 + 8 * v10);
    ++v3;
    if (v7)
    {
      v3 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4443D0, &qword_1CA983478);
  sub_1CA94D878();
  __break(1u);
}

uint64_t sub_1CA418AB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1CA42B9A4(a1, a2);
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445580, &unk_1CA983450) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4443D0, &qword_1CA983478);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4440C0, &qword_1CA983470);
  sub_1CA276B98(&unk_1EC4455B0, &qword_1EC4443D0, &qword_1CA983478);
  result = sub_1CA94C1E8();
  *(a2 + v3) = result;
  return result;
}

uint64_t WFContentCategory.symbolName.getter(uint64_t a1)
{
  v1 = sub_1CA94C3A8();
  v3 = v2;
  v4 = sub_1CA94C3A8();
  v6 = v5;
  v7 = v1 == v4 && v3 == v5;
  if (v7)
  {
    goto LABEL_52;
  }

  OUTLINED_FUNCTION_104();
  v8 = sub_1CA94D7F8();

  if ((v8 & 1) == 0)
  {
    sub_1CA94C3A8();
    OUTLINED_FUNCTION_53_7();
    OUTLINED_FUNCTION_95_4();
    if (v7 && v6 == v10)
    {
      goto LABEL_52;
    }

    OUTLINED_FUNCTION_13_16(v9);
    OUTLINED_FUNCTION_114_2();

    if ((v3 & 1) == 0)
    {
      sub_1CA94C3A8();
      if (v6 == OUTLINED_FUNCTION_108_2() && v12 == 0xEB00000000747069)
      {
      }

      else
      {
        OUTLINED_FUNCTION_86_1();
        v14 = sub_1CA94D7F8();

        if ((v14 & 1) == 0)
        {
          sub_1CA94C3A8();
          OUTLINED_FUNCTION_53_7();
          OUTLINED_FUNCTION_95_4();
          if (v7 && v14 == v16)
          {

            return OUTLINED_FUNCTION_20_0();
          }

          OUTLINED_FUNCTION_13_16(v15);
          OUTLINED_FUNCTION_114_2();

          if ((v3 & 1) == 0)
          {
            v18 = sub_1CA94C3A8();
            v20 = v19;
            v21 = sub_1CA94C3A8();
            v23 = v22;
            if (v18 == v21 && v20 == v22)
            {
              goto LABEL_52;
            }

            OUTLINED_FUNCTION_104();
            v25 = sub_1CA94D7F8();

            if ((v25 & 1) == 0)
            {
              sub_1CA94C3A8();
              if (v23 == OUTLINED_FUNCTION_108_2() && v26 == 0xEA00000000006574)
              {

                return OUTLINED_FUNCTION_20_0();
              }

              OUTLINED_FUNCTION_86_1();
              v28 = sub_1CA94D7F8();

              if ((v28 & 1) == 0)
              {
                sub_1CA94C3A8();
                OUTLINED_FUNCTION_53_7();
                OUTLINED_FUNCTION_95_4();
                if (v7 && v28 == v30)
                {

                  return OUTLINED_FUNCTION_20_0();
                }

                OUTLINED_FUNCTION_13_16(v29);
                OUTLINED_FUNCTION_114_2();

                if ((v20 & 1) == 0)
                {
                  sub_1CA94C3A8();
                  OUTLINED_FUNCTION_53_7();
                  OUTLINED_FUNCTION_95_4();
                  if (v7 && v28 == v33)
                  {
                    goto LABEL_52;
                  }

                  OUTLINED_FUNCTION_13_16(v32);
                  OUTLINED_FUNCTION_114_2();

                  if ((v20 & 1) == 0)
                  {
                    sub_1CA94C3A8();
                    OUTLINED_FUNCTION_53_7();
                    OUTLINED_FUNCTION_95_4();
                    if (v7 && v28 == v36)
                    {

                      return OUTLINED_FUNCTION_20_0();
                    }

                    OUTLINED_FUNCTION_13_16(v35);
                    OUTLINED_FUNCTION_114_2();

                    if ((v20 & 1) == 0)
                    {
                      sub_1CA94C3A8();
                      if (v28 == OUTLINED_FUNCTION_108_2() && v38 == 0xEA00000000006574)
                      {

                        return OUTLINED_FUNCTION_20_0();
                      }

                      OUTLINED_FUNCTION_86_1();
                      v40 = sub_1CA94D7F8();

                      if ((v40 & 1) == 0)
                      {
                        sub_1CA94D5F8();
                        __break(1u);
LABEL_52:

                        return OUTLINED_FUNCTION_20_0();
                      }
                    }
                  }
                }
              }
            }
          }

          return OUTLINED_FUNCTION_20_0();
        }
      }

      v42 = [objc_opt_self() currentDevice];
      v43 = [v42 symbolName];

      sub_1CA94C3A8();
    }
  }

  return OUTLINED_FUNCTION_20_0();
}

void sub_1CA419064(uint64_t a1)
{
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  sub_1CA94C218();
  v6 = 0;
  if (v4)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v7 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v7 >= v5)
    {

      v9 = sub_1CA94C218();
      sub_1CA342A00(v9);
      return;
    }

    v4 = *(v1 + 8 * v7);
    ++v6;
    if (v4)
    {
      v6 = v7;
      do
      {
LABEL_9:
        v4 &= v4 - 1;
        v8 = sub_1CA94C218();
        sub_1CA342A00(v8);
      }

      while (v4);
      continue;
    }
  }

  __break(1u);
}

void sub_1CA41916C(unint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v130 = a4;
  v129 = a3;
  v145 = a2;
  v128 = a5;
  v6 = sub_1CA94B1C8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v136 = &v127 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v144 = &v127 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v143 = &v127 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v127 - v14;
  v16 = type metadata accessor for DrawerAction(0);
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v138 = &v127 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v155 = &v127 - v20;
  v135 = v21;
  v139 = sub_1CA94C1E8();
  v147 = sub_1CA94C1E8();
  v22 = sub_1CA94C1E8();
  v146 = sub_1CA94C1E8();
  v23 = *(a1 + 16);
  v152 = v6;
  v134 = v23;
  if (v23)
  {
    v24 = 0;
    v25 = 0;
    v133 = a1 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v158 = v7 + 16;
    v141 = (v7 + 32);
    v142 = (v7 + 8);
    v140 = (v7 + 40);
    v151 = v7;
    v132 = a1;
    v159 = v15;
    v131 = v17;
    while (1)
    {
      if (v25 >= *(a1 + 16))
      {
        goto LABEL_72;
      }

      v26 = *(v17 + 72);
      v137 = v25;
      v27 = v155;
      sub_1CA42B9A4(v133 + v26 * v25, v155);
      v28 = (v27 + *(v135 + 28));
      a1 = *v28;
      v29 = v28[1];
      sub_1CA42B9A4(v27, v138);
      sub_1CA94C218();
      v30 = v139;
      swift_isUniquelyReferenced_nonNull_native();
      *&v160 = v30;
      v153 = a1;
      v154 = v29;
      v31 = sub_1CA271BF8(a1, v29);
      if (__OFADD__(*(v30 + 16), (v32 & 1) == 0))
      {
        break;
      }

      a1 = v31;
      v33 = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4454B8, &qword_1CA9875D0);
      if (sub_1CA94D588())
      {
        v34 = sub_1CA271BF8(v153, v154);
        if ((v33 & 1) != (v35 & 1))
        {
          goto LABEL_75;
        }

        a1 = v34;
      }

      v36 = v160;
      v139 = v160;
      if (v33)
      {
        sub_1CA42B920(v138, *(v160 + 56) + a1 * v26);
      }

      else
      {
        *(v160 + 8 * (a1 >> 6) + 64) |= 1 << a1;
        v37 = (*(v36 + 48) + 16 * a1);
        v38 = v154;
        *v37 = v153;
        v37[1] = v38;
        sub_1CA42BA50(v138, *(v36 + 56) + a1 * v26);
        v39 = *(v139 + 16);
        v40 = __OFADD__(v39, 1);
        v41 = v39 + 1;
        if (v40)
        {
          goto LABEL_74;
        }

        *(v139 + 16) = v41;
      }

      sub_1CA40AE90();
      v43 = v159;
      v150 = *(v42 + 16);
      if (v150)
      {
        v44 = 0;
        v45 = *(v7 + 80);
        v148 = v42;
        v149 = v42 + ((v45 + 32) & ~v45);
        do
        {
          if (v44 >= *(v42 + 16))
          {
            __break(1u);
LABEL_65:
            __break(1u);
LABEL_66:
            __break(1u);
LABEL_67:
            __break(1u);
LABEL_68:
            __break(1u);
LABEL_69:
            __break(1u);
LABEL_70:
            __break(1u);
LABEL_71:
            __break(1u);
LABEL_72:
            __break(1u);
            goto LABEL_73;
          }

          v46 = *(v7 + 72);
          v156 = v44;
          v157 = v46;
          v47 = *(v7 + 16);
          v47(v43, v149 + v46 * v44, v6);
          v48 = sub_1CA94B0F8();
          v50 = v49;
          sub_1CA40A918();
          a1 = v51;
          v53 = v52;
          sub_1CA293254(v24, 0);
          swift_isUniquelyReferenced_nonNull_native();
          *&v160 = v22;
          v54 = sub_1CA271BF8(v48, v50);
          if (__OFADD__(v22[2], (v55 & 1) == 0))
          {
            goto LABEL_65;
          }

          v56 = v54;
          v57 = v55;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4454C0, &qword_1CA9875D8);
          if (sub_1CA94D588())
          {
            v58 = sub_1CA271BF8(v48, v50);
            if ((v57 & 1) != (v59 & 1))
            {
              goto LABEL_75;
            }

            v56 = v58;
          }

          v22 = v160;
          if (v57)
          {
          }

          else
          {
            sub_1CA419F0C(&v160);
            v22[(v56 >> 6) + 8] |= 1 << v56;
            v60 = (v22[6] + 16 * v56);
            *v60 = v48;
            v60[1] = v50;
            *(v22[7] + 16 * v56) = v160;
            v61 = v22[2];
            v40 = __OFADD__(v61, 1);
            v62 = v61 + 1;
            if (v40)
            {
              goto LABEL_67;
            }

            v22[2] = v62;
          }

          v63 = (v22[7] + 16 * v56);
          if (v53)
          {
            sub_1CA94C218();
            swift_isUniquelyReferenced_nonNull_native();
            *&v160 = *v63;
            v64 = v160;
            *v63 = 0x8000000000000000;
            sub_1CA271BF8(a1, v53);
            if (__OFADD__(*(v64 + 16), (v65 & 1) == 0))
            {
              goto LABEL_66;
            }

            v66 = v65;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4454D0, &qword_1CA9875E8);
            v67 = sub_1CA94D588();
            v68 = v160;
            if (v67)
            {
              sub_1CA271BF8(a1, v53);
              if ((v66 & 1) != (v69 & 1))
              {
                goto LABEL_75;
              }
            }

            *v63 = v68;
            if (v66)
            {
            }

            else
            {
              sub_1CA323E18();
            }

            v6 = v152;
            v71 = v154;
            sub_1CA94C218();
            sub_1CA368948(&v160, v153, v71);
          }

          else
          {
            v70 = v154;
            sub_1CA94C218();
            sub_1CA368948(&v160, v153, v70);

            v6 = v152;
          }

          v72 = v159;
          v73 = sub_1CA94B0F8();
          a1 = v74;
          sub_1CA25B3D0(0, &qword_1EC441980, 0x1E69635F8);
          if (sub_1CA419F6C(v73, a1, v145 & 1))
          {
            v47(v143, v72, v6);
            v75 = v147;
            swift_isUniquelyReferenced_nonNull_native();
            *&v160 = v75;
            v76 = sub_1CA271BF8(v73, a1);
            if (__OFADD__(*(v75 + 16), (v77 & 1) == 0))
            {
              goto LABEL_68;
            }

            v78 = v76;
            v79 = v77;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4454C8, &qword_1CA9875E0);
            if (sub_1CA94D588())
            {
              v80 = sub_1CA271BF8(v73, a1);
              v7 = v151;
              if ((v79 & 1) != (v81 & 1))
              {
                goto LABEL_75;
              }

              v78 = v80;
              if (v79)
              {
LABEL_47:

                v147 = v160;
                (*v140)(*(v160 + 56) + v78 * v157, v143, v6);
LABEL_50:
                v43 = v159;
                (*v142)(v159, v6);
                goto LABEL_51;
              }
            }

            else
            {
              v7 = v151;
              if (v79)
              {
                goto LABEL_47;
              }
            }

            v82 = v160;
            *(v160 + 8 * (v78 >> 6) + 64) |= 1 << v78;
            v83 = (v82[6] + 16 * v78);
            *v83 = v73;
            v83[1] = a1;
            (*v141)(v82[7] + v78 * v157, v143, v6);
            v43 = v159;
            (*v142)(v159, v6);
            v84 = v82[2];
            v40 = __OFADD__(v84, 1);
            v85 = v84 + 1;
            if (v40)
            {
              goto LABEL_70;
            }

            v86 = v82;
            v147 = v82;
          }

          else
          {
            v47(v144, v72, v6);
            v87 = v146;
            swift_isUniquelyReferenced_nonNull_native();
            *&v160 = v87;
            v88 = sub_1CA271BF8(v73, a1);
            if (__OFADD__(*(v87 + 16), (v89 & 1) == 0))
            {
              goto LABEL_69;
            }

            v90 = v88;
            v91 = v89;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4454C8, &qword_1CA9875E0);
            if (sub_1CA94D588())
            {
              v92 = sub_1CA271BF8(v73, a1);
              v7 = v151;
              if ((v91 & 1) != (v93 & 1))
              {
                goto LABEL_75;
              }

              v90 = v92;
              if (v91)
              {
LABEL_49:

                v146 = v160;
                (*v140)(*(v160 + 56) + v90 * v157, v144, v6);
                goto LABEL_50;
              }
            }

            else
            {
              v7 = v151;
              if (v91)
              {
                goto LABEL_49;
              }
            }

            v94 = v160;
            *(v160 + 8 * (v90 >> 6) + 64) |= 1 << v90;
            v95 = (v94[6] + 16 * v90);
            *v95 = v73;
            v95[1] = a1;
            (*v141)(v94[7] + v90 * v157, v144, v6);
            v43 = v159;
            (*v142)(v159, v6);
            v96 = v94[2];
            v40 = __OFADD__(v96, 1);
            v85 = v96 + 1;
            if (v40)
            {
              goto LABEL_71;
            }

            v86 = v94;
            v146 = v94;
          }

          v86[2] = v85;
LABEL_51:
          v42 = v148;
          v44 = v156 + 1;
          v24 = sub_1CA419F0C;
        }

        while (v150 != v156 + 1);
      }

      v25 = v137 + 1;

      sub_1CA42B9FC();
      a1 = v132;
      v17 = v131;
      if (v25 == v134)
      {

        goto LABEL_55;
      }
    }

LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    sub_1CA94D878();
    __break(1u);
  }

  else
  {

    v24 = 0;
LABEL_55:
    v97 = v147;
    swift_bridgeObjectRetain_n();
    sub_1CA94C218();
    sub_1CA94C218();
    *&v160 = sub_1CA42ADF0(v97);
    a1 = 0;
    sub_1CA424EEC();

    v102 = v160;
    v103 = *(v160 + 16);
    if (v103)
    {
      v156 = 0;
      *&v160 = MEMORY[0x1E69E7CC0];
      sub_1CA271524(0, v103, 0, v98, v99, v100, v101);
      v104 = v160;
      v106 = *(v7 + 16);
      v105 = v7 + 16;
      v107 = *(v105 + 64);
      v155 = v102;
      v108 = v102 + ((v107 + 32) & ~v107);
      v158 = *(v105 + 56);
      v159 = v106;
      v157 = (v105 - 8);
      v151 = v105;
      do
      {
        v109 = v136;
        (v159)(v136, v108, v6);
        v110 = sub_1CA94B0F8();
        v111 = v6;
        v113 = v112;
        (*v157)(v109, v111);
        *&v160 = v104;
        v119 = *(v104 + 16);
        v118 = *(v104 + 24);
        if (v119 >= v118 >> 1)
        {
          sub_1CA271524(v118 > 1, v119 + 1, 1, v114, v115, v116, v117);
          v104 = v160;
        }

        *(v104 + 16) = v119 + 1;
        v120 = v104 + 16 * v119;
        *(v120 + 32) = v110;
        *(v120 + 40) = v113;
        v108 += v158;
        --v103;
        v6 = v152;
      }

      while (v103);

      a1 = v156;
    }

    else
    {

      v104 = MEMORY[0x1E69E7CC0];
    }

    v121 = sub_1CA94C218();
    *&v160 = sub_1CA42ADF0(v121);
    sub_1CA424EEC();
    if (!a1)
    {
      v122 = v147;

      v123 = v139;

      swift_bridgeObjectRelease_n();
      sub_1CA293254(v24, 0);
      v124 = v160;
      v125 = v128;
      *v128 = v123;
      v125[1] = v122;
      v125[2] = v22;
      v125[3] = v104;
      v126 = v129;
      v125[4] = v124;
      v125[5] = v126;
      v125[6] = v130;
      return;
    }
  }

  __break(1u);
}

uint64_t sub_1CA419F0C@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443DF8, &unk_1CA9875F0);
  result = sub_1CA94C1E8();
  v3 = MEMORY[0x1E69E7CD0];
  *a1 = result;
  a1[1] = v3;
  return result;
}

id sub_1CA419F6C(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_1CA949F78();
  MEMORY[0x1EEE9AC00](v6);
  v7 = objc_allocWithZone(MEMORY[0x1E69635F8]);
  sub_1CA94C218();
  v8 = sub_1CA275C94(a1, a2, 0);
  v9 = v8;
  if (a3)
  {
    v10 = 2;
  }

  else
  {
    v10 = 0;
  }

  v11 = [v8 wf:v10 isAvailableInContext:?];

  return v11;
}

uint64_t UnavailableAction.reason.getter()
{
  type metadata accessor for UnavailableAction(0);
  sub_1CA94C218();
  return OUTLINED_FUNCTION_23();
}

void *sub_1CA41A250()
{
  type metadata accessor for ActionDrawerDataSource();
  swift_allocObject();
  result = sub_1CA41A8A0();
  qword_1EC442580 = result;
  return result;
}

uint64_t static ActionDrawerDataSource.shared.getter()
{
  if (qword_1EC442578 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1CA41A2E8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1CA94C218();
  return sub_1CA41A3F0(v1, v2);
}

double sub_1CA41A328(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v6 = *(v2 + 24);
  if (!v6)
  {
    if (!a2)
    {
      return result;
    }

    return sub_1CA41BDA0(&unk_1F49F9810);
  }

  if (!a2)
  {
    return sub_1CA41BDA0(&unk_1F49F9810);
  }

  v7 = *(v2 + 16) == a1 && v6 == a2;
  if (!v7 && (sub_1CA94D7F8() & 1) == 0)
  {
    return sub_1CA41BDA0(&unk_1F49F9810);
  }

  return result;
}

uint64_t sub_1CA41A3B4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_52_6(v2 + 16, a2);
  sub_1CA94C218();
  return OUTLINED_FUNCTION_23();
}

uint64_t sub_1CA41A3F0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  sub_1CA41A328(v5, v6);
}

uint64_t sub_1CA41A450(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  swift_beginAccess();
  v4 = *(v1 + 24);
  v3[3] = *(v1 + 16);
  v3[4] = v4;
  sub_1CA94C218();
  return OUTLINED_FUNCTION_20_0();
}

void sub_1CA41A4CC(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {
    sub_1CA94C218();
    sub_1CA41A3F0(v3, v4);
  }

  else
  {
    sub_1CA41A3F0(*(*a1 + 24), v4);
  }

  free(v2);
}

void sub_1CA41A544()
{
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_119_2();
  OUTLINED_FUNCTION_3_27();
  sub_1CA42ABDC(v1);
  if (v0)
  {
    sub_1CA94C218();
  }

  OUTLINED_FUNCTION_3_27();
  sub_1CA42AC68(v2);
  OUTLINED_FUNCTION_36();
}

void sub_1CA41A5B8()
{
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_119_2();
  OUTLINED_FUNCTION_3_27();
  sub_1CA42ABDC(v1);
  if (v0)
  {
    sub_1CA94C218();
  }

  OUTLINED_FUNCTION_3_27();
  sub_1CA42AC68(v2);
  OUTLINED_FUNCTION_36();
}

uint64_t sub_1CA41A684(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 152) = a1;
}

uint64_t sub_1CA41A6F8()
{
  if (*(v0 + 160))
  {
    v1 = *(v0 + 160);
  }

  else
  {
    v1 = sub_1CA41A740();
    *(v0 + 160) = v1;
    sub_1CA94C218();
  }

  sub_1CA94C218();
  return v1;
}

uint64_t sub_1CA41A740()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4455C8, &qword_1CA987678);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1CA981300;
  v1 = *MEMORY[0x1E6996FE0];
  v2 = *MEMORY[0x1E6996FB8];
  *(v0 + 32) = *MEMORY[0x1E6996FE0];
  *(v0 + 40) = v2;
  v3 = *MEMORY[0x1E6996FC0];
  v4 = *MEMORY[0x1E6996FD0];
  *(v0 + 48) = *MEMORY[0x1E6996FC0];
  *(v0 + 56) = v4;
  v5 = *MEMORY[0x1E6996FD8];
  v6 = *MEMORY[0x1E6996FE8];
  *(v0 + 64) = *MEMORY[0x1E6996FD8];
  *(v0 + 72) = v6;
  v7 = *MEMORY[0x1E6996FC8];
  v8 = *MEMORY[0x1E6996FF0];
  *(v0 + 80) = *MEMORY[0x1E6996FC8];
  *(v0 + 88) = v8;
  v9 = v1;
  v10 = v2;
  v11 = v3;
  v12 = v4;
  v13 = v5;
  v14 = v6;
  v15 = v7;
  v16 = v8;
  return v0;
}

uint64_t (*sub_1CA41A848(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = sub_1CA41A6F8();
  return sub_1CA41A890;
}

void *sub_1CA41A8A0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4455D0, &qword_1CA987680);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v72 - v2;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 16) = 0u;
  v4 = MEMORY[0x1E69E7CC0];
  *(v0 + 128) = MEMORY[0x1E69E7CC0];
  if (sub_1CA25B410(v4))
  {
    sub_1CA2E8B78(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v5 = MEMORY[0x1E69E7CD0];
  }

  *(v0 + 136) = v5;
  v92 = v0 + 136;
  type metadata accessor for ActionDrawerDataLoader();
  swift_allocObject();
  v6 = v0;
  v7 = sub_1CA4243F4();
  *(v0 + 152) = 0;
  *(v0 + 160) = 0;
  *(v0 + 144) = v7;
  v8 = [objc_opt_self() lockedAppBundleIdentifiers];
  v9 = sub_1CA94C8F8();

  v6[21] = v9;
  v6[22] = 0;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4455D8, &qword_1CA987688);
  v76 = &v72;
  v95 = *(v91 - 8);
  v85 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v91);
  v86 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = &v72 - v86;
  v12 = sub_1CA94CE78();
  v13 = *(v12 - 8);
  v84 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v83 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = &v72 - v83;
  v79 = objc_opt_self();
  v16 = [v79 defaultCenter];
  v17 = sub_1CA94CDF8();
  sub_1CA94CE88();

  v90 = sub_1CA25B3D0(0, &qword_1EDB9FAD0, 0x1E69E9610);
  v18 = sub_1CA94CD48();
  v96 = v18;
  v82 = sub_1CA94CD28();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v82);
  v81 = sub_1CA4360F0(&qword_1EDB9F728, MEMORY[0x1EEE78DA8]);
  v94 = sub_1CA27C530();
  v78 = v12;
  sub_1CA94A0E8();
  sub_1CA27080C(v3, &qword_1EC4455D0, &qword_1CA987680);

  v80 = *(v13 + 8);
  v89 = v13 + 8;
  v80(v15, v12);
  swift_allocObject();
  swift_weakInit();
  v93 = sub_1CA276B98(&qword_1EC441D78, &qword_1EC4455D8, &qword_1CA987688);

  v19 = v91;
  sub_1CA94A108();

  v20 = *(v95 + 8);
  v95 += 8;
  v88 = v20;
  v20(v11, v19);
  swift_beginAccess();
  sub_1CA949F88();
  swift_endAccess();

  sub_1CA41BDA0(&unk_1F49F97E8);
  v21 = WFGetFavoritedActionIDs();
  v22 = sub_1CA94C658();

  v6[16] = v22;
  v87 = v6;

  v75 = &v72;
  v24 = MEMORY[0x1EEE9AC00](v23);
  v25 = v86;
  v74 = &v72;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v72 - v83;
  v76 = objc_opt_self();
  v27 = [v76 defaultCenter];
  sub_1CA94CE88();

  v28 = sub_1CA94CD48();
  v96 = v28;
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v82);
  v29 = v78;
  sub_1CA94A0E8();
  sub_1CA27080C(v3, &qword_1EC4455D0, &qword_1CA987680);

  v30 = v29;
  v31 = v80;
  v80(v26, v30);
  swift_allocObject();
  swift_weakInit();
  v32 = v91;
  sub_1CA94A108();

  v88(&v72 - v25, v32);
  swift_beginAccess();
  sub_1CA949F88();
  swift_endAccess();

  v74 = &v72;
  v34 = MEMORY[0x1EEE9AC00](v33);
  v35 = &v72 - v25;
  v73 = &v72;
  MEMORY[0x1EEE9AC00](v34);
  v36 = v83;
  v37 = [v79 defaultCenter];
  v75 = *MEMORY[0x1E69ACB40];
  sub_1CA94CE88();

  v38 = sub_1CA94CD48();
  v96 = v38;
  v39 = v82;
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v82);
  v40 = v78;
  v77 = v3;
  sub_1CA94A0E8();
  sub_1CA27080C(v3, &qword_1EC4455D0, &qword_1CA987680);

  v31(&v72 - v36, v40);
  swift_allocObject();
  swift_weakInit();
  v41 = v91;
  sub_1CA94A108();

  v88(v35, v41);
  swift_beginAccess();
  sub_1CA949F88();
  swift_endAccess();

  v74 = &v72;
  v43 = MEMORY[0x1EEE9AC00](v42);
  v44 = &v72 - v86;
  v73 = &v72;
  MEMORY[0x1EEE9AC00](v43);
  v45 = [v79 defaultCenter];
  sub_1CA94CE88();

  v46 = sub_1CA94CD48();
  v96 = v46;
  v47 = v77;
  __swift_storeEnumTagSinglePayload(v77, 1, 1, v39);
  sub_1CA94A0E8();
  sub_1CA27080C(v47, &qword_1EC4455D0, &qword_1CA987680);

  v48 = &v72 - v36;
  v49 = v40;
  v50 = v80;
  v80(v48, v40);
  swift_allocObject();
  swift_weakInit();
  v51 = v91;
  sub_1CA94A108();

  v52 = v88;
  v88(v44, v51);
  swift_beginAccess();
  sub_1CA949F88();
  swift_endAccess();

  v79 = &v72;
  v54 = MEMORY[0x1EEE9AC00](v53);
  v55 = &v72 - v86;
  v75 = &v72;
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v72 - v83;
  v57 = v76;
  v58 = [v76 defaultCenter];
  v59 = sub_1CA94C368();
  sub_1CA94CE88();

  v60 = sub_1CA94CD48();
  v96 = v60;
  v61 = v77;
  __swift_storeEnumTagSinglePayload(v77, 1, 1, v82);
  sub_1CA94A0E8();
  sub_1CA27080C(v61, &qword_1EC4455D0, &qword_1CA987680);

  v50(v56, v49);
  swift_allocObject();
  swift_weakInit();
  v62 = v91;
  sub_1CA94A108();

  v52(v55, v62);
  swift_beginAccess();
  sub_1CA949F88();
  swift_endAccess();

  v79 = &v72;
  v64 = MEMORY[0x1EEE9AC00](v63);
  v65 = &v72 - v86;
  MEMORY[0x1EEE9AC00](v64);
  v66 = &v72 - v83;
  v67 = [v57 defaultCenter];
  v68 = sub_1CA94C368();
  sub_1CA94CE88();

  v69 = sub_1CA94CD48();
  v96 = v69;
  __swift_storeEnumTagSinglePayload(v61, 1, 1, v82);
  sub_1CA94A0E8();
  sub_1CA27080C(v61, &qword_1EC4455D0, &qword_1CA987680);

  v80(v66, v49);
  swift_allocObject();
  v70 = v87;
  swift_weakInit();

  sub_1CA94A108();

  v88(v65, v62);
  swift_beginAccess();
  sub_1CA949F88();
  swift_endAccess();

  return v70;
}

double sub_1CA41B704(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = WFGetFavoritedActionIDs();
    v6 = sub_1CA94C658();

    if (sub_1CA2B6DAC(*(v4 + 128), v6))
    {
    }

    else
    {
      *(v4 + 128) = v6;

      type metadata accessor for ActionDrawerDataSource();
      sub_1CA435D64(&qword_1EC442570, v7, type metadata accessor for ActionDrawerDataSource);
      sub_1CA949FE8();
      sub_1CA94A048();
    }
  }

  return result;
}

double sub_1CA41B814(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_52_6(a2 + 16, a2);
  if (swift_weakLoadStrong())
  {
    v3 = OUTLINED_FUNCTION_87();
    sub_1CA41BDA0(v3);
  }

  return result;
}

double sub_1CA41B864(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [objc_opt_self() lockedAppBundleIdentifiers];
    v6 = sub_1CA94C8F8();

    v7 = sub_1CA94C218();
    v8 = sub_1CA636B30(v7, v6);

    if (v8)
    {
    }

    else
    {
      *(v4 + 168) = v6;

      sub_1CA41BDA0(&unk_1F49F98D8);
    }
  }

  return result;
}

id sub_1CA41B950()
{
  v0 = [objc_opt_self() systemShortcutsUserDefaults];
  v1 = [v0 BOOLForKey_];

  return v1;
}

double sub_1CA41B9B4(char a1)
{
  v2 = [objc_opt_self() systemShortcutsUserDefaults];
  [v2 setBool:a1 & 1 forKey:@"WFDrawerShowInternalApps"];

  return sub_1CA41BDA0(&unk_1F49F9900);
}

double (*sub_1CA41BA38(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_1CA41B950() & 1;
  return sub_1CA41BA84;
}

uint64_t sub_1CA41BAAC()
{
  OUTLINED_FUNCTION_0();
  v1[2] = v0;
  sub_1CA94C838();
  v1[3] = sub_1CA94C828();
  OUTLINED_FUNCTION_87();
  v3 = sub_1CA94C7C8();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1CA41BB3C, v3, v2);
}

uint64_t sub_1CA41BB3C()
{
  OUTLINED_FUNCTION_0();
  v1 = *(v0[2] + 176);
  v0[6] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_1CA41BC28;

    return MEMORY[0x1EEE6DA40]();
  }

  else
  {

    OUTLINED_FUNCTION_5();

    return v3();
  }
}

uint64_t sub_1CA41BC28()
{
  OUTLINED_FUNCTION_0();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_13();
  *v3 = v2;

  v4 = *(v1 + 40);
  v5 = *(v1 + 32);

  return MEMORY[0x1EEE6DFA0](sub_1CA41BD3C, v5, v4);
}

uint64_t sub_1CA41BD3C()
{
  OUTLINED_FUNCTION_0();

  OUTLINED_FUNCTION_5();

  return v0();
}

double sub_1CA41BDA0(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443880, &qword_1CA982FB0);
  v5 = OUTLINED_FUNCTION_18_0(v4);
  MEMORY[0x1EEE9AC00](v5);
  if (*(v1 + 176))
  {

    sub_1CA94C878();
  }

  sub_1CA94C858();
  OUTLINED_FUNCTION_46();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  sub_1CA94C838();
  OUTLINED_FUNCTION_87();

  sub_1CA94C218();
  v10 = sub_1CA94C828();
  OUTLINED_FUNCTION_123();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E85E0];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = v2;
  v11[5] = a1;
  *(v2 + 176) = sub_1CA30C708();

  return result;
}

uint64_t sub_1CA41BEE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[21] = a4;
  v5[22] = a5;
  sub_1CA94C838();
  v5[23] = sub_1CA94C828();
  v7 = sub_1CA94C7C8();
  v5[24] = v7;
  v5[25] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1CA41BF78, v7, v6);
}

uint64_t sub_1CA41BF78()
{
  v1 = v0[21];
  v2 = sub_1CA41B950();
  swift_beginAccess();
  v3 = *(v1 + 24) != 0;
  swift_task_alloc();
  OUTLINED_FUNCTION_77();
  v0[26] = v4;
  *v4 = v5;
  v4[1] = sub_1CA41C04C;
  v6 = v0[22];

  return sub_1CA41C790((v0 + 2), v6, v2 & 1u | (v3 << 8));
}

uint64_t sub_1CA41C04C()
{
  OUTLINED_FUNCTION_0();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_13();
  *v3 = v2;

  v4 = *(v1 + 200);
  v5 = *(v1 + 192);

  return MEMORY[0x1EEE6DFA0](sub_1CA41C160, v5, v4);
}

uint64_t sub_1CA41C160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_138_3();

  if (sub_1CA94C8A8())
  {
    sub_1CA4360C0((v16 + 2));
  }

  else
  {
    v17 = v16[21];
    type metadata accessor for ActionDrawerDataSource();
    sub_1CA435D64(&qword_1EC442570, v18, type metadata accessor for ActionDrawerDataSource);
    OUTLINED_FUNCTION_5_3();
    sub_1CA949FE8();
    sub_1CA94A048();

    v19 = v16[3];
    v20 = v16[4];
    v21 = v16[5];
    v22 = v16[6];
    v23 = v16[7];
    v24 = v16[8];
    v25 = v17[4];
    a12 = v17[7];
    a13 = v17[6];
    a10 = v17[9];
    a11 = v17[8];
    a9 = v17[10];
    v17[4] = v16[2];
    v17[5] = v19;
    v17[6] = v20;
    v17[7] = v21;
    v17[8] = v22;
    v17[9] = v23;
    v17[10] = v24;
    sub_1CA94C218();
    sub_1CA94C218();
    sub_1CA94C218();
    sub_1CA94C218();
    sub_1CA94C218();
    sub_1CA94C218();
    sub_1CA94C218();
    sub_1CA42AC68(v25);
    v26 = v16[9];
    swift_beginAccess();
    v17[19] = v26;
    sub_1CA94C218();

    v27 = v16[10];
    v28 = v16[11];
    v30 = v16[12];
    v29 = v16[13];
    v31 = v16[14];

    v32 = v29;
    sub_1CA94C218();
    sub_1CA4360C0((v16 + 2));
    v33 = v17[11];
    v34 = v17[12];
    v35 = v17[13];
    v36 = v17[14];
    v17[11] = v27;
    v17[12] = v28;
    v17[13] = v30;
    v17[14] = v32;
    v17[15] = v31;
    sub_1CA42ACF4(v33, v34, v35, v36);
  }

  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_99();

  return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, a14, a15, a16);
}

void *ActionDrawerDataSource.deinit()
{

  sub_1CA42AC68(*(v0 + 32));
  sub_1CA42ACF4(*(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112));

  return v0;
}

uint64_t ActionDrawerDataSource.__deallocating_deinit()
{
  ActionDrawerDataSource.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 184, 7);
}

uint64_t sub_1CA41C414@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for ActionDrawerDataSource();
  result = sub_1CA949FE8();
  *a3 = result;
  return result;
}

uint64_t sub_1CA41C450()
{
  if (*(v0 + 184))
  {
    v1 = *(v0 + 184);
  }

  else
  {
    v1 = sub_1CA41C4AC();
    *(v0 + 184) = v1;
    sub_1CA94C218();
  }

  sub_1CA94C218();
  return v1;
}

uint64_t sub_1CA41C4AC()
{
  v0 = [objc_opt_self() sharedRegistry];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443850, &qword_1CA9815F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981350;
  *(inited + 32) = 0xD000000000000022;
  *(inited + 40) = 0x80000001CA996170;
  *(inited + 48) = 0xD00000000000001FLL;
  *(inited + 56) = 0x80000001CA9961A0;
  *(inited + 64) = 0xD000000000000020;
  *(inited + 72) = 0x80000001CA9940C0;
  *(inited + 80) = 0xD00000000000001FLL;
  *(inited + 88) = 0x80000001CA9940A0;
  v11 = MEMORY[0x1E69E7CC0];
  sub_1CA94D508();
  sub_1CA94C218();
  v2 = sub_1CA94C368();
  v3 = [v0 createActionWithIdentifier:v2 serializedParameters:0];

  sub_1CA94D4D8();
  sub_1CA94D518();
  sub_1CA94D528();
  sub_1CA94D4E8();
  v4 = sub_1CA94C368();
  v5 = [v0 createActionWithIdentifier:v4 serializedParameters:0];

  sub_1CA94D4D8();
  sub_1CA94D518();
  sub_1CA94D528();
  sub_1CA94D4E8();
  v6 = sub_1CA94C368();
  v7 = [v0 createActionWithIdentifier:v6 serializedParameters:0];

  sub_1CA94D4D8();
  sub_1CA94D518();
  sub_1CA94D528();
  sub_1CA94D4E8();
  v8 = sub_1CA94C368();
  v9 = [v0 createActionWithIdentifier:v8 serializedParameters:0];

  sub_1CA94D4D8();
  sub_1CA94D518();
  sub_1CA94D528();
  sub_1CA94D4E8();

  swift_setDeallocating();
  sub_1CA32E2F8();
  return v11;
}

uint64_t sub_1CA41C790(uint64_t a1, uint64_t a2, __int16 a3)
{
  *(v4 + 176) = a2;
  *(v4 + 184) = v3;
  *(v4 + 208) = a3;
  *(v4 + 168) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1CA41C7B8, v3, 0);
}

uint64_t sub_1CA41C7B8()
{
  v1 = *(v0 + 184);
  v2 = v1[14];
  v3 = v1[15];
  v4 = v1[16];
  v5 = v1[17];
  v6 = v1[18];
  v7 = v1[19];
  v8 = v1[20];
  *(v0 + 192) = v1[21];
  if (!v2 || sub_1CA6030F4(0, *(v0 + 176)))
  {
    v9 = *(v0 + 208);
    sub_1CA94C218();
    swift_task_alloc();
    OUTLINED_FUNCTION_77();
    *(v0 + 200) = v10;
    *v10 = v11;
    v10[1] = sub_1CA41C9BC;

    return sub_1CA41CBDC(v0 + 72, v9 & 0x101);
  }

  sub_1CA94C218();
  v13 = OUTLINED_FUNCTION_20_0();
  sub_1CA42ABDC(v13);
  v14 = *(v0 + 192);
  v20 = v3;
  if (!v14)
  {
    goto LABEL_9;
  }

  if (sub_1CA6030F4(1, *(v0 + 176)))
  {

LABEL_9:
    v14 = sub_1CA420914();
  }

  sub_1CA94C218();
  v15 = *(v0 + 184);
  v16 = *(v0 + 168);
  *(v0 + 16) = v2;
  *(v0 + 24) = v20;
  *(v0 + 32) = v4;
  *(v0 + 40) = v5;
  *(v0 + 48) = v6;
  *(v0 + 56) = v7;
  *(v0 + 64) = v8;
  sub_1CA422C38((v0 + 16), v14, (v0 + 128));
  OUTLINED_FUNCTION_136_3();

  *v16 = v2;
  *(v16 + 8) = v20;
  *(v16 + 16) = v4;
  *(v16 + 24) = v5;
  *(v16 + 32) = v6;
  *(v16 + 40) = v7;
  *(v16 + 48) = v8;
  *(v16 + 56) = v14;
  *(v16 + 64) = v19;
  *(v16 + 80) = v15;
  *(v16 + 88) = v18;
  OUTLINED_FUNCTION_5();

  return v17();
}

uint64_t sub_1CA41C9BC()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  v1 = *v0;
  OUTLINED_FUNCTION_13();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_78_3();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1CA41CAB4(uint64_t a1)
{
  v2 = *(v1 + 72);
  v3 = *(v1 + 112);
  v15 = *(v1 + 120);
  v5 = *(v1 + 96);
  v4 = *(v1 + 104);
  v7 = *(v1 + 80);
  v6 = *(v1 + 88);
  v8 = *(v1 + 192);
  if (v8)
  {
    if (!sub_1CA6030F4(1, *(v1 + 176)))
    {
      goto LABEL_5;
    }
  }

  v8 = sub_1CA420914();
LABEL_5:
  sub_1CA94C218();
  v9 = *(v1 + 184);
  v10 = *(v1 + 168);
  *(v1 + 16) = v2;
  *(v1 + 24) = v7;
  *(v1 + 32) = v6;
  *(v1 + 40) = v5;
  *(v1 + 48) = v4;
  *(v1 + 56) = v3;
  *(v1 + 64) = v15;
  sub_1CA422C38((v1 + 16), v8, (v1 + 128));
  OUTLINED_FUNCTION_136_3();

  *v10 = v2;
  *(v10 + 8) = v7;
  *(v10 + 16) = v6;
  *(v10 + 24) = v5;
  *(v10 + 32) = v4;
  *(v10 + 40) = v3;
  *(v10 + 48) = v15;
  *(v10 + 56) = v8;
  *(v10 + 64) = v14;
  *(v10 + 80) = v9;
  *(v10 + 88) = v13;
  OUTLINED_FUNCTION_5();

  return v11();
}

uint64_t sub_1CA41CBDC(uint64_t a1, __int16 a2)
{
  *(v3 + 508) = a2;
  *(v3 + 168) = a1;
  *(v3 + 176) = v2;
  v4 = sub_1CA949F78();
  *(v3 + 184) = v4;
  *(v3 + 192) = *(v4 - 8);
  *(v3 + 200) = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444CC0, &unk_1CA9867F0);
  *(v3 + 208) = v5;
  *(v3 + 216) = *(v5 - 8);
  *(v3 + 224) = swift_task_alloc();
  v6 = sub_1CA94A408();
  *(v3 + 232) = v6;
  *(v3 + 240) = *(v6 - 8);
  *(v3 + 248) = swift_task_alloc();
  *(v3 + 256) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4454B0, &unk_1CA983070);
  *(v3 + 264) = swift_task_alloc();
  v7 = sub_1CA94A288();
  *(v3 + 272) = v7;
  *(v3 + 280) = *(v7 - 8);
  *(v3 + 288) = swift_task_alloc();
  *(v3 + 296) = swift_task_alloc();
  v8 = type metadata accessor for DrawerAction(0);
  *(v3 + 304) = v8;
  *(v3 + 312) = *(v8 - 8);
  *(v3 + 320) = swift_task_alloc();
  *(v3 + 328) = swift_task_alloc();
  *(v3 + 336) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4445D0, &qword_1CA983080);
  *(v3 + 344) = swift_task_alloc();
  v9 = type metadata accessor for UnavailableAction(0);
  *(v3 + 352) = v9;
  *(v3 + 360) = *(v9 - 8);
  *(v3 + 368) = swift_task_alloc();
  v10 = sub_1CA94A4E8();
  *(v3 + 376) = v10;
  *(v3 + 384) = *(v10 - 8);
  *(v3 + 392) = swift_task_alloc();
  *(v3 + 400) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1CA41CF80, v2, 0);
}

uint64_t sub_1CA41CF80()
{
  sub_1CA94A828();
  *(v0 + 408) = sub_1CA94A7D8();
  v3 = sub_1CA94A678();
  *(v0 + 416) = v3;
  *(v0 + 424) = 0;
  v17 = *(v3 + 16);
  *(v0 + 432) = v17;
  if (!v17)
  {

    v134 = sub_1CA41C450();
    result = sub_1CA25B410(v134);
    v131 = result;
    if (result)
    {
      if (result < 1)
      {
        __break(1u);
        return result;
      }

      v30 = 0;
      v31 = *(v0 + 304);
      v32 = MEMORY[0x1E69E7CC0];
      do
      {
        if ((v134 & 0xC000000000000001) != 0)
        {
          v33 = MEMORY[0x1CCAA22D0](v30, v134);
        }

        else
        {
          v33 = *(v134 + 8 * v30 + 32);
        }

        v34 = v33;
        v35 = *(v0 + 328);
        v36 = v31[6];
        v37 = sub_1CA94B1C8();
        OUTLINED_FUNCTION_46();
        __swift_storeEnumTagSinglePayload(v38, v39, v40, v37);
        *v35 = v34;
        type metadata accessor for DrawerAction.DrawerActionStorage(0);
        swift_storeEnumTagMultiPayload();
        v41 = v34;
        sub_1CA27080C(v35 + v36, &qword_1EC4445D0, &qword_1CA983080);
        OUTLINED_FUNCTION_46();
        __swift_storeEnumTagSinglePayload(v42, v43, v44, v37);
        *(v35 + v31[5]) = 0;
        v45 = [v41 identifier];
        sub_1CA94C3A8();
        OUTLINED_FUNCTION_194();

        v46 = (v35 + v31[7]);
        *v46 = v1;
        v46[1] = v2;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_21();
          sub_1CA2E5CDC();
          v32 = v50;
        }

        v48 = *(v32 + 16);
        v47 = *(v32 + 24);
        if (v48 >= v47 >> 1)
        {
          OUTLINED_FUNCTION_64(v47);
          OUTLINED_FUNCTION_160();
          sub_1CA2E5CDC();
          v32 = v51;
        }

        ++v30;
        v1 = *(v0 + 328);

        *(v32 + 16) = v48 + 1;
        OUTLINED_FUNCTION_68_0();
        OUTLINED_FUNCTION_0_31();
        sub_1CA42BA50(v1, v49);
      }

      while (v131 != v30);
    }

    else
    {
      v32 = MEMORY[0x1E69E7CC0];
    }

    v113 = v0 + 72;
    v114 = v32;

    if (qword_1EC442D40 != -1)
    {
      goto LABEL_42;
    }

    while (1)
    {
      v110 = *(v0 + 304);
      v111 = *(v0 + 312);
      OUTLINED_FUNCTION_50_3();
      v54 = v53 & v52;
      v56 = (63 - v55) >> 6;
      v120 = *MEMORY[0x1E69DA9C0];
      OUTLINED_FUNCTION_63_5();
      v108 = v57;
      v109 = v58;
      v112 = (v59 + 8);
      v135 = v0;
      v0 = *(v0 + 424);
      sub_1CA94C218();
      v60 = 0;
      v115 = MEMORY[0x1E69E7CC0];
      v122 = v56;
      v124 = v32;
      if (!v54)
      {
        goto LABEL_25;
      }

      while (2)
      {
        v132 = v0;
LABEL_29:
        v62 = *(v135 + 248);
        v63 = *(v135 + 224);
        v129 = *(v135 + 232);
        v64 = *(v135 + 208);
        v54 &= v54 - 1;
        OUTLINED_FUNCTION_94_2();
        v66 = *v65;
        v67 = v65[1];
        sub_1CA94C218();
        sub_1CA94A3E8();
        swift_getKeyPath();
        v68 = swift_allocObject();
        *(v68 + 16) = v66;
        *(v68 + 24) = v67;
        *v63 = v68;
        (*v118)(v63, v120, v64);
        OUTLINED_FUNCTION_34_10();
        sub_1CA435D64(&qword_1EC441D50, 255, v69);
        OUTLINED_FUNCTION_33_9();
        sub_1CA276B98(&qword_1EDB9F7C0, &unk_1EC444CC0, &unk_1CA9867F0);
        sub_1CA94A838();

        v70 = OUTLINED_FUNCTION_126();
        v71(v70);
        v72 = v129;
        v130 = *v116;
        (*v116)(v62, v72);
        v127 = sub_1CA948E58();
        OUTLINED_FUNCTION_1_0();
        v74 = v73;
        v75 = swift_task_alloc();
        sub_1CA948D98();
        sub_1CA94A6E8();
        v76 = *(v135 + 272);
        if (v132)
        {

          (*(v74 + 8))(v75, v127);
          v77 = OUTLINED_FUNCTION_72_0();
          v130(v77);

          OUTLINED_FUNCTION_46();
          __swift_storeEnumTagSinglePayload(v78, v79, v80, v76);
        }

        else
        {
          (*(v74 + 8))(v75, v127);
          v81 = OUTLINED_FUNCTION_72_0();
          v130(v81);

          v82 = OUTLINED_FUNCTION_201_0();
          if (__swift_getEnumTagSinglePayload(v82, v83, v76) != 1)
          {
            v84 = *(v135 + 344);
            v85 = *(v135 + 320);
            v86 = *(v135 + 288);
            v87 = *(v135 + 272);
            (*v109)(*(v135 + 296), *(v135 + 264), v87);
            v88 = *v108;
            v89 = OUTLINED_FUNCTION_35();
            v88(v89);
            v90 = v110[6];
            sub_1CA94B1C8();
            OUTLINED_FUNCTION_46();
            __swift_storeEnumTagSinglePayload(v91, v92, v93, v94);
            v95 = OUTLINED_FUNCTION_134();
            v88(v95);
            type metadata accessor for DrawerAction.DrawerActionStorage(0);
            OUTLINED_FUNCTION_186_0();
            swift_storeEnumTagMultiPayload();
            sub_1CA94A228();
            sub_1CA435F40(v84, v85 + v90, &qword_1EC4445D0, &qword_1CA983080);
            *(v85 + v110[5]) = 0;
            v96 = sub_1CA94A248();
            v98 = v97;
            v99 = *v112;
            (*v112)(v86, v87);
            v100 = (v85 + v110[7]);
            *v100 = v96;
            v100[1] = v98;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_21();
              sub_1CA2E5CDC();
              v115 = v105;
            }

            v102 = *(v115 + 16);
            v101 = *(v115 + 24);
            if (v102 >= v101 >> 1)
            {
              OUTLINED_FUNCTION_18(v101);
              sub_1CA2E5CDC();
              v115 = v106;
            }

            v103 = *(v135 + 320);
            v99(*(v135 + 296), *(v135 + 272));
            *(v115 + 16) = v102 + 1;
            OUTLINED_FUNCTION_68_0();
            OUTLINED_FUNCTION_0_31();
            sub_1CA42BA50(v103, v104);
            goto LABEL_33;
          }
        }

        sub_1CA27080C(*(v135 + 264), &qword_1EC4454B0, &unk_1CA983070);
LABEL_33:
        v0 = 0;
        v56 = v122;
        v32 = v124;
        if (v54)
        {
          continue;
        }

        break;
      }

LABEL_25:
      while (1)
      {
        v61 = v60 + 1;
        if (__OFADD__(v60, 1))
        {
          break;
        }

        if (v61 >= v56)
        {
          v107 = *(v135 + 508);

          sub_1CA41916C(v114, v107 & 1, MEMORY[0x1E69E7CC0], v115, v113);

          v119 = *(v135 + 288);
          v121 = *(v135 + 264);
          v123 = *(v135 + 256);
          v125 = *(v135 + 248);
          v126 = *(v135 + 224);
          v4 = *(v135 + 168);
          v133 = *(v113 + 48);
          v128 = *(v113 + 32);

          OUTLINED_FUNCTION_120_3(v5, v6, v7, v8, v9, v10, v11, v12, v13, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v121, v123, v125, v126, v14, v128);
          *(v4 + 48) = v133;
          OUTLINED_FUNCTION_5();
          OUTLINED_FUNCTION_87_3();

          __asm { BRAA            X1, X16 }
        }

        v54 = *(v32 + 8 * v61);
        ++v60;
        if (v54)
        {
          v132 = v0;
          v60 = v61;
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_42:
      OUTLINED_FUNCTION_39_5(&qword_1EC442D40);
    }
  }

  v18 = *(v0 + 376);
  v19 = *(v0 + 384);
  v20 = *(v19 + 16);
  v19 += 16;
  v21 = *(v19 + 64);
  *(v0 + 504) = v21;
  v22 = (v21 + 32) & ~v21;
  *(v0 + 440) = *(v19 + 56);
  *(v0 + 448) = v20;
  v23 = MEMORY[0x1E69E7CC0];
  *(v0 + 456) = 0;
  *(v0 + 464) = v23;
  v24 = *(v0 + 400);
  *(v0 + 472) = v23;
  *(v0 + 480) = v19 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v20(v24, v3 + v22, v18);
  v25 = swift_task_alloc();
  *(v0 + 488) = v25;
  *v25 = v0;
  OUTLINED_FUNCTION_20_14(v25);
  OUTLINED_FUNCTION_87_3();

  return sub_1CA41E650(v26, v27);
}

uint64_t sub_1CA41D9A8()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  *v2 = v1;
  v1[16] = v0;
  v1[17] = v3;
  v1[18] = v4;
  v5 = *v0;
  OUTLINED_FUNCTION_13();
  *v6 = v5;
  *(v8 + 496) = v7;

  v9 = OUTLINED_FUNCTION_78_3();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1CA41DAA8()
{
  v1 = v0[62];
  if (v1 != 4)
  {
    v185 = v0[17];
    v25 = v0[60];
    v26 = v0[56];
    v182 = v0[48];
    v27 = v0[46];
    v28 = v0[43];
    v186 = v0[44];
    v29 = v0[38];
    v30 = OUTLINED_FUNCTION_99_3();
    v26(v30);
    v31 = v29[6];
    sub_1CA94B1C8();
    OUTLINED_FUNCTION_46();
    __swift_storeEnumTagSinglePayload(v32, v33, v34, v35);
    v36 = OUTLINED_FUNCTION_134();
    v26(v36);
    type metadata accessor for DrawerAction.DrawerActionStorage(0);
    OUTLINED_FUNCTION_186_0();
    swift_storeEnumTagMultiPayload();
    sub_1CA94A488();
    sub_1CA435F40(v28, v27 + v31, &qword_1EC4445D0, &qword_1CA983080);
    *(v27 + v29[5]) = 0;
    sub_1CA94A498();
    OUTLINED_FUNCTION_194();
    v37 = *(v182 + 8);
    v38 = OUTLINED_FUNCTION_61();
    v37(v38);
    v39 = (v27 + v29[7]);
    *v39 = v28;
    v39[1] = v25;
    v0[19] = v185;
    v0[20] = v1;
    v40 = sub_1CA94C408();
    v41 = (v27 + *(v186 + 20));
    *v41 = v40;
    v41[1] = v42;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v0[59];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_21();
      sub_1CA2E5DA4();
      v24 = v159;
    }

    v45 = *(v24 + 16);
    v44 = *(v24 + 24);
    if (v45 >= v44 >> 1)
    {
      OUTLINED_FUNCTION_18(v44);
      sub_1CA2E5DA4();
      v24 = v160;
    }

    v46 = v0[46];
    v47 = v0[45];
    (v37)(v0[50], v0[47]);
    *(v24 + 16) = v45 + 1;
    OUTLINED_FUNCTION_68_0();
    sub_1CA42BA50(v46, v24 + v48 + *(v47 + 72) * v45);
    v19 = v0[58];
    goto LABEL_11;
  }

  v2 = v0[60];
  v3 = v0[56];
  v4 = v0[48];
  v5 = v0[42];
  v6 = v0[43];
  v7 = v0[38];
  v8 = OUTLINED_FUNCTION_99_3();
  v3(v8);
  v9 = v7[6];
  sub_1CA94B1C8();
  OUTLINED_FUNCTION_46();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  v14 = OUTLINED_FUNCTION_134();
  v3(v14);
  type metadata accessor for DrawerAction.DrawerActionStorage(0);
  OUTLINED_FUNCTION_186_0();
  swift_storeEnumTagMultiPayload();
  sub_1CA94A488();
  sub_1CA435F40(v6, v5 + v9, &qword_1EC4445D0, &qword_1CA983080);
  *(v5 + v7[5]) = 0;
  sub_1CA94A498();
  OUTLINED_FUNCTION_194();
  v15 = *(v4 + 8);
  v16 = OUTLINED_FUNCTION_61();
  (v15)(v16);
  v17 = (v5 + v7[7]);
  *v17 = v6;
  v17[1] = v2;
  v18 = swift_isUniquelyReferenced_nonNull_native();
  v19 = v0[58];
  if ((v18 & 1) == 0)
  {
    goto LABEL_50;
  }

  while (1)
  {
    v21 = *(v19 + 16);
    v20 = *(v19 + 24);
    if (v21 >= v20 >> 1)
    {
      OUTLINED_FUNCTION_18(v20);
      sub_1CA2E5CDC();
      v19 = v158;
    }

    v22 = v0[42];
    (v15)(v0[50], v0[47]);
    *(v19 + 16) = v21 + 1;
    OUTLINED_FUNCTION_68_0();
    OUTLINED_FUNCTION_0_31();
    sub_1CA42BA50(v22, v23);
    v24 = v0[59];
LABEL_11:
    v49 = v0[57] + 1;
    if (v49 != v0[54])
    {
      break;
    }

    v50 = v0[22];
    v187 = sub_1CA41C450();
    result = sub_1CA25B410(v187);
    v167 = v24;
    v191 = v0;
    if (result)
    {
      v52 = result;
      if (result < 1)
      {
        __break(1u);
        return result;
      }

      v53 = 0;
      v50 = v0[38];
      do
      {
        v54 = v19;
        if ((v187 & 0xC000000000000001) != 0)
        {
          v55 = MEMORY[0x1CCAA22D0](v53, v187);
        }

        else
        {
          v55 = *(v187 + 8 * v53 + 32);
        }

        v56 = v55;
        v57 = v0[41];
        v58 = v50[6];
        v59 = sub_1CA94B1C8();
        OUTLINED_FUNCTION_46();
        __swift_storeEnumTagSinglePayload(v60, v61, v62, v59);
        *v57 = v56;
        type metadata accessor for DrawerAction.DrawerActionStorage(0);
        swift_storeEnumTagMultiPayload();
        v63 = v56;
        sub_1CA27080C(v57 + v58, &qword_1EC4445D0, &qword_1CA983080);
        OUTLINED_FUNCTION_46();
        __swift_storeEnumTagSinglePayload(v64, v65, v66, v59);
        *(v57 + v50[5]) = 0;
        v67 = [v63 identifier];
        v68 = sub_1CA94C3A8();
        v70 = v69;

        v71 = (v57 + v50[7]);
        *v71 = v68;
        v71[1] = v70;
        v19 = v54;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_21();
          sub_1CA2E5CDC();
          v19 = v76;
        }

        v73 = *(v19 + 16);
        v72 = *(v19 + 24);
        if (v73 >= v72 >> 1)
        {
          OUTLINED_FUNCTION_17_1(v72);
          sub_1CA2E5CDC();
          v19 = v77;
        }

        ++v53;
        v74 = v0[41];

        *(v19 + 16) = v73 + 1;
        OUTLINED_FUNCTION_68_0();
        OUTLINED_FUNCTION_0_31();
        sub_1CA42BA50(v74, v75);
      }

      while (v52 != v53);
    }

    if (qword_1EC442D40 != -1)
    {
      OUTLINED_FUNCTION_39_5(&qword_1EC442D40);
    }

    v164 = v0[38];
    v165 = v0[39];
    OUTLINED_FUNCTION_50_3();
    v15 = v88 & v87;
    v90 = (63 - v89) >> 6;
    HIDWORD(v172) = *MEMORY[0x1E69DA9C0];
    OUTLINED_FUNCTION_63_5();
    v162 = v91;
    v163 = v92;
    v166 = (v93 + 8);
    v94 = v0[53];
    sub_1CA94C218();
    v95 = 0;
    v168 = MEMORY[0x1E69E7CC0];
    v175 = v50;
    v177 = v19;
    for (i = v90; v15; v50 = v175)
    {
      v188 = v94;
LABEL_35:
      v97 = v0[31];
      v98 = v0[28];
      v183 = v0[29];
      v99 = v0[26];
      v15 &= v15 - 1;
      OUTLINED_FUNCTION_94_2();
      v101 = *v100;
      v102 = v100[1];
      sub_1CA94C218();
      sub_1CA94A3E8();
      swift_getKeyPath();
      v103 = swift_allocObject();
      *(v103 + 16) = v101;
      *(v103 + 24) = v102;
      *v98 = v103;
      v104 = OUTLINED_FUNCTION_125_2();
      v105(v104, HIDWORD(v172), v99);
      OUTLINED_FUNCTION_34_10();
      sub_1CA435D64(&qword_1EC441D50, 255, v106);
      OUTLINED_FUNCTION_33_9();
      sub_1CA276B98(&qword_1EDB9F7C0, &unk_1EC444CC0, &unk_1CA9867F0);
      sub_1CA94A838();

      v107 = OUTLINED_FUNCTION_125_2();
      v108(v107, v99);
      v109 = v183;
      v184 = *v169;
      (*v169)(v97, v109);
      v180 = sub_1CA948E58();
      OUTLINED_FUNCTION_1_0();
      v111 = v110;
      v112 = swift_task_alloc();
      sub_1CA948D98();
      sub_1CA94A6E8();
      v113 = v0[34];
      if (v188)
      {

        (*(v111 + 8))(v112, v180);
        v114 = OUTLINED_FUNCTION_162();
        v184(v114);

        OUTLINED_FUNCTION_46();
        __swift_storeEnumTagSinglePayload(v115, v116, v117, v113);
      }

      else
      {
        (*(v111 + 8))(v112, v180);
        v118 = OUTLINED_FUNCTION_162();
        v184(v118);

        v119 = OUTLINED_FUNCTION_201_0();
        if (__swift_getEnumTagSinglePayload(v119, v120, v113) != 1)
        {
          v0 = v191;
          v189 = v191[43];
          v121 = v191[40];
          v122 = v191[36];
          v123 = v191[37];
          v124 = v191[34];
          v125 = OUTLINED_FUNCTION_125_2();
          v126(v125);
          v127 = *v162;
          (*v162)(v122, v123, v124);
          v128 = v164[6];
          sub_1CA94B1C8();
          OUTLINED_FUNCTION_46();
          __swift_storeEnumTagSinglePayload(v129, v130, v131, v132);
          v133 = OUTLINED_FUNCTION_23();
          v127(v133);
          type metadata accessor for DrawerAction.DrawerActionStorage(0);
          swift_storeEnumTagMultiPayload();
          sub_1CA94A228();
          sub_1CA435F40(v189, v121 + v128, &qword_1EC4445D0, &qword_1CA983080);
          *(v121 + v164[5]) = 0;
          sub_1CA94A248();
          OUTLINED_FUNCTION_194();
          v134 = *v166;
          v135 = OUTLINED_FUNCTION_52_0();
          v134(v135);
          v136 = (v121 + v164[7]);
          *v136 = v189;
          v136[1] = v128;
          v19 = v177;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_21();
            sub_1CA2E5CDC();
            v168 = v141;
          }

          v138 = *(v168 + 16);
          v137 = *(v168 + 24);
          if (v138 >= v137 >> 1)
          {
            OUTLINED_FUNCTION_18(v137);
            sub_1CA2E5CDC();
            v168 = v142;
          }

          v139 = v191[40];
          (v134)(v191[37], v191[34]);
          *(v168 + 16) = v138 + 1;
          OUTLINED_FUNCTION_68_0();
          OUTLINED_FUNCTION_0_31();
          sub_1CA42BA50(v139, v140);
          v94 = 0;
          goto LABEL_39;
        }
      }

      v0 = v191;
      sub_1CA27080C(v191[33], &qword_1EC4454B0, &unk_1CA983070);
      v94 = 0;
      v19 = v177;
LABEL_39:
      v90 = i;
    }

    while (1)
    {
      v96 = v95 + 1;
      if (__OFADD__(v95, 1))
      {
        break;
      }

      if (v96 >= v90)
      {
        v143 = *(v0 + 254);

        sub_1CA41916C(v19, v143 & 1, v167, v168, v0 + 9);

        v174 = v0[33];
        v176 = v0[32];
        v178 = v0[31];
        v179 = v0[28];
        v144 = v0[21];
        v190 = v0[15];
        v181 = *(v0 + 13);

        OUTLINED_FUNCTION_120_3(v145, v146, v147, v148, v149, v150, v151, v152, v153, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v174, v176, v178, v179, v154, v181);
        *(v144 + 48) = v190;
        OUTLINED_FUNCTION_5();
        OUTLINED_FUNCTION_87_3();

        __asm { BRAA            X1, X16 }
      }

      v15 = *&v50[2 * v96];
      ++v95;
      if (v15)
      {
        v188 = v94;
        v95 = v96;
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_50:
    OUTLINED_FUNCTION_21();
    sub_1CA2E5CDC();
    v19 = v157;
  }

  v0[57] = v49;
  v0[58] = v19;
  v78 = v0[56];
  v79 = v0[50];
  v80 = v0[47];
  v81 = v0[52] + ((*(v0 + 504) + 32) & ~*(v0 + 504)) + v0[55] * v49;
  v82 = (v0[48] + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v0[59] = v24;
  v0[60] = v82;
  v78(v79, v81, v80);
  v83 = swift_task_alloc();
  v0[61] = v83;
  *v83 = v0;
  OUTLINED_FUNCTION_20_14(v83);
  OUTLINED_FUNCTION_87_3();

  return sub_1CA41E650(v84, v85);
}

uint64_t sub_1CA41E650(uint64_t a1, __int16 a2)
{
  *(v3 + 468) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = sub_1CA94B6B8();
  *(v3 + 32) = v4;
  *(v3 + 40) = *(v4 - 8);
  *(v3 + 48) = swift_task_alloc();
  *(v3 + 56) = swift_task_alloc();
  *(v3 + 64) = swift_task_alloc();
  v5 = sub_1CA94B018();
  *(v3 + 72) = v5;
  *(v3 + 80) = *(v5 - 8);
  *(v3 + 88) = swift_task_alloc();
  *(v3 + 96) = swift_task_alloc();
  v6 = sub_1CA94B058();
  *(v3 + 104) = v6;
  *(v3 + 112) = *(v6 - 8);
  *(v3 + 120) = swift_task_alloc();
  *(v3 + 128) = swift_task_alloc();
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 144) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4445D0, &qword_1CA983080);
  *(v3 + 152) = swift_task_alloc();
  v7 = sub_1CA94B1C8();
  *(v3 + 160) = v7;
  *(v3 + 168) = *(v7 - 8);
  *(v3 + 176) = swift_task_alloc();
  v8 = sub_1CA94A4E8();
  *(v3 + 184) = v8;
  *(v3 + 192) = *(v8 - 8);
  *(v3 + 200) = swift_task_alloc();
  *(v3 + 208) = swift_task_alloc();
  *(v3 + 216) = swift_task_alloc();
  *(v3 + 224) = swift_task_alloc();
  *(v3 + 232) = swift_task_alloc();
  *(v3 + 240) = swift_task_alloc();
  v9 = sub_1CA949F78();
  *(v3 + 248) = v9;
  *(v3 + 256) = *(v9 - 8);
  *(v3 + 264) = swift_task_alloc();
  *(v3 + 272) = swift_task_alloc();
  *(v3 + 280) = swift_task_alloc();
  *(v3 + 288) = swift_task_alloc();
  *(v3 + 296) = swift_task_alloc();
  *(v3 + 304) = swift_task_alloc();
  v10 = sub_1CA94A628();
  *(v3 + 312) = v10;
  *(v3 + 320) = *(v10 - 8);
  *(v3 + 328) = swift_task_alloc();
  *(v3 + 336) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1CA41EA40, v2, 0);
}

uint64_t sub_1CA41EA40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v250 = v18;
  if ((*(v18 + 468) & 0x100) != 0)
  {
    OUTLINED_FUNCTION_140_2();
    sub_1CA94A618();
    OUTLINED_FUNCTION_32_8();
    v23 = sub_1CA435D64(v21, 255, v22);
    v24 = OUTLINED_FUNCTION_142_2(v23);
    v25 = *(v19 + 8);
    v19 += 8;
    v26 = OUTLINED_FUNCTION_69_0();
    v25(v26);
    v27 = OUTLINED_FUNCTION_107_0();
    v25(v27);
    if ((v24 & 1) == 0)
    {
      sub_1CA949C58();
      v57 = OUTLINED_FUNCTION_43_8();
      v58(v57);
      v37 = sub_1CA949F68();
      v59 = sub_1CA94CBF8();
      v60 = OUTLINED_FUNCTION_107_2(v59);
      v62 = *(v18 + 248);
      v61 = *(v18 + 256);
      v63 = *(v18 + 240);
      if (v60)
      {
        OUTLINED_FUNCTION_150_0();
        v64 = OUTLINED_FUNCTION_67_4();
        OUTLINED_FUNCTION_80_3(v64);
        *v62 = 136315138;
        sub_1CA94A498();
        v65 = OUTLINED_FUNCTION_14_19();
        v66(v65);
        OUTLINED_FUNCTION_105_3();
        OUTLINED_FUNCTION_87();

        *(v62 + 4) = v63;
        OUTLINED_FUNCTION_41_7(&dword_1CA256000, v67, v68, "Not showing tool %s in the drawer because it's not resident compatible");
        __swift_destroy_boxed_opaque_existential_0(v20);
        OUTLINED_FUNCTION_26();
        OUTLINED_FUNCTION_26();

        (*(v61 + 8))();
        goto LABEL_53;
      }

      goto LABEL_64;
    }
  }

  OUTLINED_FUNCTION_140_2();
  sub_1CA94A608();
  OUTLINED_FUNCTION_32_8();
  v30 = sub_1CA435D64(v28, 255, v29);
  v31 = OUTLINED_FUNCTION_142_2(v30);
  v32 = *(v19 + 8);
  v33 = OUTLINED_FUNCTION_69_0();
  v32(v33);
  v34 = OUTLINED_FUNCTION_107_0();
  v32(v34);
  if (v31)
  {
    sub_1CA949C58();
    v35 = OUTLINED_FUNCTION_43_8();
    v36(v35);
    v37 = sub_1CA949F68();
    v38 = sub_1CA94CBF8();
    v39 = OUTLINED_FUNCTION_107_2(v38);
    v41 = *(v18 + 248);
    v40 = *(v18 + 256);
    v42 = *(v18 + 232);
    if (v39)
    {
      OUTLINED_FUNCTION_150_0();
      v43 = OUTLINED_FUNCTION_67_4();
      OUTLINED_FUNCTION_80_3(v43);
      *v41 = 136315138;
      sub_1CA94A498();
      v44 = OUTLINED_FUNCTION_14_19();
      v45(v44);
      OUTLINED_FUNCTION_105_3();
      OUTLINED_FUNCTION_87();

      *(v41 + 4) = v42;
      OUTLINED_FUNCTION_41_7(&dword_1CA256000, v46, v47, "Not showing tool %s in the drawer because it's discontinued");
      __swift_destroy_boxed_opaque_existential_0(v20);
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_26();

      (*(v40 + 8))();
      goto LABEL_53;
    }

LABEL_64:

    v184 = OUTLINED_FUNCTION_17_8();
    v185(v184);
    v186 = OUTLINED_FUNCTION_79_3();
    v188(v186, v187);
    goto LABEL_53;
  }

  v48 = *(v18 + 168);
  sub_1CA94A458();
  v49 = sub_1CA94B0F8();
  v51 = v50;
  v52 = *(v48 + 8);
  v53 = OUTLINED_FUNCTION_69_0();
  v52(v53);
  if (v49 == sub_1CA94C3A8() && v51 == v54)
  {
  }

  else
  {
    OUTLINED_FUNCTION_23();
    v56 = sub_1CA94D7F8();

    if ((v56 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  v69 = *(v18 + 160);
  sub_1CA94A488();
  v70 = OUTLINED_FUNCTION_201_0();
  if (__swift_getEnumTagSinglePayload(v70, v71, v69) == 1)
  {
    sub_1CA27080C(*(v18 + 152), &qword_1EC4445D0, &qword_1CA983080);
  }

  else
  {
    v73 = *(v18 + 152);
    v72 = *(v18 + 160);
    sub_1CA94B0F8();
    (v52)(v73, v72);
    if (sub_1CA94C528())
    {
    }

    else
    {
      sub_1CA25B3D0(0, &qword_1EC441980, 0x1E69635F8);
      v74 = OUTLINED_FUNCTION_3_3();
      v76 = sub_1CA4205FC(v74, v75);

      if (!v76)
      {
        sub_1CA949C58();
        v172 = OUTLINED_FUNCTION_43_8();
        v173(v172);
        v37 = sub_1CA949F68();
        v174 = sub_1CA94CBF8();
        v175 = OUTLINED_FUNCTION_107_2(v174);
        v177 = *(v18 + 248);
        v176 = *(v18 + 256);
        v178 = *(v18 + 224);
        if (v175)
        {
          OUTLINED_FUNCTION_150_0();
          v179 = OUTLINED_FUNCTION_67_4();
          OUTLINED_FUNCTION_80_3(v179);
          *v177 = 136315138;
          sub_1CA94A498();
          v180 = OUTLINED_FUNCTION_14_19();
          v181(v180);
          OUTLINED_FUNCTION_105_3();
          OUTLINED_FUNCTION_87();

          *(v177 + 4) = v178;
          OUTLINED_FUNCTION_41_7(&dword_1CA256000, v182, v183, "Not showing tool %s in the drawer because the app is not installed");
          __swift_destroy_boxed_opaque_existential_0(v20);
          OUTLINED_FUNCTION_26();
          OUTLINED_FUNCTION_26();

          (*(v176 + 8))();
          goto LABEL_53;
        }

        goto LABEL_64;
      }
    }
  }

LABEL_22:
  v77 = sub_1CA94A438();
  *(v18 + 344) = v77;
  v78 = *(v77 + 16);
  *(v18 + 352) = v78;
  if (!v78)
  {
    v80 = MEMORY[0x1E69E7CC0];
LABEL_46:

    v134 = *(v80 + 16);
    if (v134)
    {
      v135 = *(v18 + 40);
      sub_1CA94C218();
      v136 = 0;
      while (v134 != v136)
      {
        if (v136 >= *(v80 + 16))
        {
          goto LABEL_73;
        }

        v137 = *(v18 + 48);
        v138 = *(v18 + 32);
        OUTLINED_FUNCTION_68_0();
        (*(v135 + 16))(v137, v80 + v139 + *(v135 + 72) * v136++, v138);
        v140 = sub_1CA94B678();
        v141 = OUTLINED_FUNCTION_52_0();
        v142(v141);
        if (v140)
        {
          swift_bridgeObjectRelease_n();
          goto LABEL_53;
        }
      }

      v145 = v80;

      sub_1CA949C58();
      v146 = OUTLINED_FUNCTION_115_2();
      v147(v146);
      v148 = sub_1CA949F68();
      v149 = sub_1CA94CBF8();
      v150 = os_log_type_enabled(v148, v149);
      v152 = *(v18 + 256);
      v151 = *(v18 + 264);
      v153 = *(v18 + 248);
      if (v150)
      {
        v244 = *(v18 + 32);
        OUTLINED_FUNCTION_30_2();
        v249 = OUTLINED_FUNCTION_138_0();
        *v145 = 136315394;
        sub_1CA94A498();
        v154 = OUTLINED_FUNCTION_52_0();
        v155(v154);
        v156 = OUTLINED_FUNCTION_120();
        sub_1CA26B54C(v156, v157, v158);

        OUTLINED_FUNCTION_81_3();
        v159 = sub_1CA94C218();
        MEMORY[0x1CCAA14D0](v159, v244);

        v160 = OUTLINED_FUNCTION_52_0();
        v163 = sub_1CA26B54C(v160, v161, v162);

        *(v145 + 14) = v163;
        _os_log_impl(&dword_1CA256000, v148, v149, "Not showing tool %s in the drawer due to unsatisifed platform availability: %s", v145, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_26();
        OUTLINED_FUNCTION_26();

        (*(v152 + 8))(v151, v153);
      }

      else
      {

        v168 = OUTLINED_FUNCTION_52_0();
        v169(v168);
        v170 = OUTLINED_FUNCTION_107_0();
        v171(v170);
      }
    }

LABEL_53:
    OUTLINED_FUNCTION_19_10();

    OUTLINED_FUNCTION_51_0();

    __asm { BRAA            X3, X16 }
  }

  v79 = 0;
  *(v18 + 424) = *(*(v18 + 112) + 80);
  *(v18 + 428) = *MEMORY[0x1E69DB220];
  *(v18 + 432) = *MEMORY[0x1E69DB218];
  *(v18 + 436) = *MEMORY[0x1E69DB208];
  *(v18 + 440) = *MEMORY[0x1E69DB200];
  *(v18 + 444) = *MEMORY[0x1E69DB1F8];
  *(v18 + 448) = *MEMORY[0x1E69DB1D8];
  *(v18 + 452) = *MEMORY[0x1E69DB1D0];
  *(v18 + 456) = *MEMORY[0x1E69DB1E0];
  *(v18 + 460) = *MEMORY[0x1E69DB1E8];
  *(v18 + 464) = *MEMORY[0x1E69DB1F0];
  v80 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    *(v18 + 368) = v80;
    *(v18 + 376) = v80;
    OUTLINED_FUNCTION_118_2(v79);
    if (v81)
    {
      break;
    }

    v82 = *(v18 + 428);
    v83 = *(v18 + 112);
    v84 = *(v83 + 16);
    OUTLINED_FUNCTION_55_4();
    *(v18 + 384) = v84;
    *(v18 + 392) = v85;
    v86 = OUTLINED_FUNCTION_99_3();
    (v84)(v86);
    v87 = OUTLINED_FUNCTION_134();
    (v84)(v87);
    v88 = v83 + 88;
    v89 = OUTLINED_FUNCTION_69_0();
    v91 = v90(v89);
    if (v91 == v82)
    {
      v92 = OUTLINED_FUNCTION_54_3();
      v93(v92);
      v94 = *(v80 + 32);
      v95 = OUTLINED_FUNCTION_134();
      v94(v95);
      v96 = OUTLINED_FUNCTION_116_2();
      v97(v96);
      v98 = v88;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_21();
        sub_1CA2E5C14();
        v98 = v132;
      }

      v100 = *(v98 + 16);
      v99 = *(v98 + 24);
      v247 = v100 + 1;
      if (v100 >= v99 >> 1)
      {
        OUTLINED_FUNCTION_64(v99);
        OUTLINED_FUNCTION_160();
        sub_1CA2E5C14();
        v98 = v133;
      }

      v101 = OUTLINED_FUNCTION_69_5();
      v102(v101);
      v103 = OUTLINED_FUNCTION_69_0();
      v104(v103);
      v80 = v98;
      *(v98 + 16) = v247;
      OUTLINED_FUNCTION_68_0();
      v106 = OUTLINED_FUNCTION_73_5(v105);
      v107(v106);
    }

    else
    {
      if (v91 == *(v18 + 432) || v91 == *(v18 + 436))
      {
        v164 = OUTLINED_FUNCTION_72_3();
        v165(v164);
        v166 = swift_task_alloc();
        *(v18 + 416) = v166;
        *v166 = v18;
        OUTLINED_FUNCTION_25_8(v166);
        OUTLINED_FUNCTION_51_0();

        return MEMORY[0x1EEE4B148]();
      }

      v248 = v80;
      v109 = *(v18 + 104);
      if (v91 == *(v18 + 440))
      {
        LODWORD(v247) = *(v18 + 444);
        v110 = *(v18 + 96);
        v112 = *(v18 + 72);
        v111 = *(v18 + 80);
        v113 = OUTLINED_FUNCTION_52_0();
        v114(v113);
        v115 = OUTLINED_FUNCTION_129();
        v116(v115);
        v117 = OUTLINED_FUNCTION_104();
        v118(v117);
        v119 = v111 + 88;
        v120 = OUTLINED_FUNCTION_126();
        v122 = v121(v120);
        if (v122 != v247)
        {
          OUTLINED_FUNCTION_77_4(v122);
          if ((v124 & 1) == 0 && v123 != *(v18 + 464))
          {
            OUTLINED_FUNCTION_51_0();

            return sub_1CA94D7E8();
          }

          type metadata accessor for ActionAvailabilityRequestResolver();
          v125 = OUTLINED_FUNCTION_5_3();
          if ((static ActionAvailabilityRequestResolver.isActionAvailable(for:)(v125) & 1) == 0)
          {
            OUTLINED_FUNCTION_57_4();
            v191 = *(v18 + 104);
            v192 = *(v18 + 16);

            sub_1CA949C58();
            v194 = *(v119 + 16);
            v193 = v119 + 16;
            v194(v109, v192, v110);
            (v84)(v112, v247, v191);
            v195 = sub_1CA949F68();
            v246 = sub_1CA94CBF8();
            os_log_type_enabled(v195, v246);
            OUTLINED_FUNCTION_56_4();
            if (v196)
            {
              OUTLINED_FUNCTION_30_2();
              v243 = OUTLINED_FUNCTION_138_0();
              v249 = v243;
              *v84 = 136315394;
              v245 = v192;
              v197 = sub_1CA94A498();
              v242 = v195;
              v199 = v198;
              v200 = OUTLINED_FUNCTION_61();
              v201(v200);
              v202 = sub_1CA26B54C(v197, v199, &v249);

              OUTLINED_FUNCTION_81_3();
              OUTLINED_FUNCTION_8_12();
              v205 = sub_1CA435D64(v203, 255, v204);
              OUTLINED_FUNCTION_139_3(v205);
              v206 = OUTLINED_FUNCTION_102_1();
              v199(v206);
              v207 = OUTLINED_FUNCTION_61();
              sub_1CA26B54C(v207, v208, v209);
              OUTLINED_FUNCTION_139();

              *(v84 + 14) = v202;
              OUTLINED_FUNCTION_40_5();
              _os_log_impl(v210, v211, v212, v213, v84, 0x16u);
              OUTLINED_FUNCTION_141_2(v214, v215, v216, v217, v218, v219, v220, v221, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243);
              OUTLINED_FUNCTION_26();
              OUTLINED_FUNCTION_26();

              v222 = (*(v193 + 8))(v84, v245);
            }

            else
            {

              v199 = *(v191 + 8);
              (v199)(v247, v109);
              v223 = OUTLINED_FUNCTION_61();
              v224(v223);
              v225 = OUTLINED_FUNCTION_72_0();
              v222 = v227(v225, v226);
            }

            OUTLINED_FUNCTION_111_3(v222);
            v228 = OUTLINED_FUNCTION_70();
            v229(v228);
            v230 = OUTLINED_FUNCTION_52_0();
            v199(v230);

            goto LABEL_53;
          }
        }

        v126 = OUTLINED_FUNCTION_85_4();
        v127(v126);
        v128 = OUTLINED_FUNCTION_52_0();
        v129(v128);
      }

      else
      {
        v130 = *(*(v18 + 112) + 8);
        (v130)(*(v18 + 144), *(v18 + 104));
        v131 = OUTLINED_FUNCTION_52_0();
        v130(v131);
      }

      v80 = v248;
    }

    v79 = *(v18 + 360) + 1;
    if (v79 == *(v18 + 352))
    {
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_73:
  __break(1u);
  return MEMORY[0x1EEE4B148]();
}

uint64_t sub_1CA41F944()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_13();
  *v4 = v3;
  *(v6 + 470) = v5;

  v7 = OUTLINED_FUNCTION_78_3();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1CA41FA40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v219 = v18;
  if ((*(v18 + 470) & 1) == 0)
  {
    v79 = *(v18 + 384);
    v80 = *(v18 + 216);
    v81 = *(v18 + 184);
    v82 = *(v18 + 192);
    v83 = *(v18 + 16);

    sub_1CA949C58();
    (*(v82 + 16))(v80, v83, v81);
    v84 = OUTLINED_FUNCTION_104();
    v79(v84);
    v85 = sub_1CA949F68();
    v211 = sub_1CA94CBF8();
    v86 = os_log_type_enabled(v85, v211);
    v215 = *(v18 + 400);
    v87 = *(v18 + 280);
    v89 = *(v18 + 248);
    v88 = *(v18 + 256);
    v90 = *(v18 + 216);
    v91 = *(v18 + 128);
    v92 = *(v18 + 104);
    if (v86)
    {
      v208 = *(v18 + 248);
      v93 = OUTLINED_FUNCTION_30_2();
      v218 = swift_slowAlloc();
      *v93 = 136315394;
      v206 = v87;
      v94 = sub_1CA94A498();
      v96 = v95;
      v97 = OUTLINED_FUNCTION_3_3();
      v98(v97);
      sub_1CA26B54C(v94, v96, &v218);
      OUTLINED_FUNCTION_101_3();

      *(v93 + 4) = v90;
      *(v93 + 12) = 2080;
      OUTLINED_FUNCTION_8_12();
      sub_1CA435D64(v99, 255, v100);
      v101 = sub_1CA94D798();
      v215(v91, v92);
      v102 = OUTLINED_FUNCTION_3_3();
      sub_1CA26B54C(v102, v103, v104);
      OUTLINED_FUNCTION_87();

      *(v93 + 14) = v101;
      OUTLINED_FUNCTION_40_5();
      _os_log_impl(v105, v106, v107, v108, v93, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_26();

      (*(v88 + 8))(v206, v208);
    }

    else
    {

      v215(v91, v92);
      v109 = OUTLINED_FUNCTION_3_3();
      v110(v109);
      (*(v88 + 8))(v87, v89);
    }

    v111 = *(v18 + 400);
    sub_1CA94B028();
    v112 = OUTLINED_FUNCTION_52_0();
    v111(v112);
LABEL_28:

LABEL_39:
    OUTLINED_FUNCTION_19_10();

    OUTLINED_FUNCTION_51_0();

    __asm { BRAA            X3, X16 }
  }

  (*(v18 + 400))(*(v18 + 144), *(v18 + 104), a3, a4, a5, a6, a7, a8);
  v20 = *(v18 + 368);
  v19 = *(v18 + 376);
  while (1)
  {
    v21 = *(v18 + 360) + 1;
    if (v21 == *(v18 + 352))
    {

      v113 = *(v19 + 16);
      if (v113)
      {
        sub_1CA94C218();
        v114 = 0;
        do
        {
          if (v113 == v114)
          {
            v126 = *(v18 + 192);
            v127 = *(v18 + 200);
            v128 = *(v18 + 184);
            v129 = *(v18 + 16);

            sub_1CA949C58();
            (*(v126 + 16))(v127, v129, v128);
            v130 = sub_1CA949F68();
            v131 = sub_1CA94CBF8();
            v132 = os_log_type_enabled(v130, v131);
            v134 = *(v18 + 256);
            v133 = *(v18 + 264);
            v135 = *(v18 + 248);
            if (v132)
            {
              v204 = *(v18 + 32);
              v217 = *(v18 + 264);
              v136 = OUTLINED_FUNCTION_30_2();
              v218 = swift_slowAlloc();
              *v136 = 136315394;
              v209 = v135;
              v137 = sub_1CA94A498();
              v212 = v131;
              v139 = v138;
              v140 = OUTLINED_FUNCTION_61();
              v141(v140);
              v142 = sub_1CA26B54C(v137, v139, &v218);

              *(v136 + 4) = v142;
              *(v136 + 12) = 2080;
              v143 = sub_1CA94C218();
              v144 = MEMORY[0x1CCAA14D0](v143, v204);

              v145 = OUTLINED_FUNCTION_61();
              sub_1CA26B54C(v145, v146, v147);
              OUTLINED_FUNCTION_139();

              *(v136 + 14) = v144;
              _os_log_impl(&dword_1CA256000, v130, v212, "Not showing tool %s in the drawer due to unsatisifed platform availability: %s", v136, 0x16u);
              swift_arrayDestroy();
              OUTLINED_FUNCTION_26();
              OUTLINED_FUNCTION_26();

              (*(v134 + 8))(v217, v209);
            }

            else
            {

              v182 = OUTLINED_FUNCTION_61();
              v183(v182);
              (*(v134 + 8))(v133, v135);
            }

            goto LABEL_39;
          }

          if (v114 >= *(v19 + 16))
          {
            goto LABEL_53;
          }

          OUTLINED_FUNCTION_68_0();
          v115 = OUTLINED_FUNCTION_99_3();
          v116(v115);
          ++v114;
          v117 = sub_1CA94B678();
          v118 = OUTLINED_FUNCTION_61();
          v119(v118);
        }

        while ((v117 & 1) == 0);
        swift_bridgeObjectRelease_n();
      }

      else
      {
      }

      goto LABEL_39;
    }

    *(v18 + 368) = v20;
    *(v18 + 376) = v19;
    OUTLINED_FUNCTION_118_2(v21);
    if (v22)
    {
      break;
    }

    v23 = *(v18 + 428);
    v24 = *(v18 + 144);
    v25 = *(v18 + 112);
    v26 = *(v25 + 16);
    OUTLINED_FUNCTION_55_4();
    *(v18 + 384) = v26;
    *(v18 + 392) = v27;
    v26(v24);
    v28 = OUTLINED_FUNCTION_129();
    v26(v28);
    v29 = v25 + 88;
    v30 = OUTLINED_FUNCTION_70();
    v32 = v31(v30);
    if (v32 == v23)
    {
      v61 = OUTLINED_FUNCTION_54_3();
      v62(v61);
      v63 = *(v19 + 32);
      v64 = OUTLINED_FUNCTION_134();
      v63(v64);
      v65 = OUTLINED_FUNCTION_116_2();
      v66(v65);
      v67 = v29;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_21();
        sub_1CA2E5C14();
        v67 = v77;
      }

      v69 = *(v67 + 16);
      v68 = *(v67 + 24);
      if (v69 >= v68 >> 1)
      {
        OUTLINED_FUNCTION_64(v68);
        OUTLINED_FUNCTION_160();
        sub_1CA2E5C14();
        v67 = v78;
      }

      v70 = OUTLINED_FUNCTION_69_5();
      v71(v70);
      v72 = OUTLINED_FUNCTION_69_0();
      v73(v72);
      v19 = v67;
      *(v67 + 16) = v69 + 1;
      OUTLINED_FUNCTION_68_0();
      v75 = OUTLINED_FUNCTION_73_5(v74);
      v76(v75);
      v20 = v67;
    }

    else
    {
      if (v32 == *(v18 + 432) || v32 == *(v18 + 436))
      {
        v120 = OUTLINED_FUNCTION_72_3();
        v121(v120);
        v122 = swift_task_alloc();
        *(v18 + 416) = v122;
        *v122 = v18;
        OUTLINED_FUNCTION_25_8(v122);
        OUTLINED_FUNCTION_51_0();

        return MEMORY[0x1EEE4B148]();
      }

      v216 = v19;
      v34 = *(v18 + 112);
      if (v32 != *(v18 + 440))
      {
        v52 = *(v34 + 8);
        (v52)(*(v18 + 144), *(v18 + 104));
        v53 = OUTLINED_FUNCTION_61();
        v52(v53);
        goto LABEL_18;
      }

      v214 = v20;
      v210 = *(v18 + 444);
      v36 = *(v18 + 88);
      v35 = *(v18 + 96);
      v38 = *(v18 + 72);
      v37 = *(v18 + 80);
      v39 = v34 + 96;
      v40 = OUTLINED_FUNCTION_61();
      v41(v40);
      v42 = OUTLINED_FUNCTION_97_4();
      v43(v42);
      (*(v37 + 16))(v36, v35, v38);
      v44 = v37 + 88;
      v45 = OUTLINED_FUNCTION_162();
      v47 = v46(v45);
      if (v47 == v210)
      {
        v48 = OUTLINED_FUNCTION_85_4();
        v49(v48);
        v50 = OUTLINED_FUNCTION_61();
        v51(v50);
        v20 = v214;
        v19 = v216;
      }

      else
      {
        OUTLINED_FUNCTION_77_4(v47);
        v20 = v214;
        if ((v55 & 1) == 0 && v54 != *(v18 + 464))
        {
          OUTLINED_FUNCTION_51_0();

          return sub_1CA94D7E8();
        }

        type metadata accessor for ActionAvailabilityRequestResolver();
        v56 = OUTLINED_FUNCTION_5_3();
        if ((static ActionAvailabilityRequestResolver.isActionAvailable(for:)(v56) & 1) == 0)
        {
          OUTLINED_FUNCTION_57_4();
          v150 = *(v18 + 104);
          v151 = *(v18 + 16);

          sub_1CA949C58();
          v152 = OUTLINED_FUNCTION_115_2();
          v153(v152);
          (v26)(v36, v214, v150);
          v154 = sub_1CA949F68();
          v213 = sub_1CA94CBF8();
          os_log_type_enabled(v154, v213);
          OUTLINED_FUNCTION_56_4();
          if (v155)
          {
            OUTLINED_FUNCTION_30_2();
            v205 = OUTLINED_FUNCTION_138_0();
            v218 = v205;
            *v150 = 136315394;
            v207 = v26;
            v156 = sub_1CA94A498();
            v203 = v154;
            v158 = v157;
            v159 = OUTLINED_FUNCTION_61();
            v160(v159);
            v161 = sub_1CA26B54C(v156, v158, &v218);

            OUTLINED_FUNCTION_81_3();
            OUTLINED_FUNCTION_8_12();
            v164 = sub_1CA435D64(v162, 255, v163);
            OUTLINED_FUNCTION_139_3(v164);
            v165 = OUTLINED_FUNCTION_102_1();
            v158(v165);
            v166 = OUTLINED_FUNCTION_61();
            sub_1CA26B54C(v166, v167, v168);
            OUTLINED_FUNCTION_139();

            *(v150 + 14) = v161;
            OUTLINED_FUNCTION_40_5();
            _os_log_impl(v169, v170, v171, v172, v150, 0x16u);
            OUTLINED_FUNCTION_141_2(v173, v174, v175, v176, v177, v178, v179, v180, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v205);
            OUTLINED_FUNCTION_26();
            OUTLINED_FUNCTION_26();

            v181 = (*(v44 + 8))(v150, v207);
          }

          else
          {

            v158 = *(v151 + 8);
            (v158)(v214, v39);
            v184 = OUTLINED_FUNCTION_61();
            v185(v184);
            v186 = OUTLINED_FUNCTION_72_0();
            v181 = v188(v186, v187);
          }

          OUTLINED_FUNCTION_111_3(v181);
          v189 = OUTLINED_FUNCTION_70();
          v190(v189);
          v191 = OUTLINED_FUNCTION_52_0();
          v158(v191);
          goto LABEL_28;
        }

        v57 = OUTLINED_FUNCTION_85_4();
        v58(v57);
        v59 = OUTLINED_FUNCTION_61();
        v60(v59);
LABEL_18:
        v19 = v216;
      }
    }
  }

  __break(1u);
LABEL_53:
  __break(1u);
  return MEMORY[0x1EEE4B148]();
}

BOOL sub_1CA4205FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CA949F78();
  MEMORY[0x1EEE9AC00](v4);
  v5 = objc_allocWithZone(MEMORY[0x1E69635F8]);
  sub_1CA94C218();
  v6 = sub_1CA275C94(a1, a2, 0);
  v7 = [v6 applicationState];
  v8 = [v7 isInstalled];

  return (v8 & 1) != 0;
}

id sub_1CA420914()
{
  v1 = v0;
  v267[4] = *MEMORY[0x1E69E9840];
  v2 = sub_1CA949F78();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v218 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1CA948E58();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v218 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948DE8();
  v10 = sub_1CA948D48();
  v12 = v11;
  (*(v7 + 8))(v9, v6);
  v242 = v1;
  v13 = *(v1 + 176);
  v235 = v10;
  v14 = sub_1CA94C368();
  v267[0] = 0;
  v236 = v13;
  v15 = [v13 autoShortcutsForLocaleIdentifier:v14 error:v267];

  v16 = v267[0];
  if (!v15)
  {
    v208 = v267[0];

    v209 = sub_1CA948AD8();

    swift_willThrow();
    sub_1CA949C58();
    v210 = v209;
    v211 = sub_1CA949F68();
    v212 = sub_1CA94CC18();

    if (os_log_type_enabled(v211, v212))
    {
      v213 = swift_slowAlloc();
      v214 = swift_slowAlloc();
      *v213 = 138412290;
      v215 = v209;
      v216 = _swift_stdlib_bridgeErrorToNSError();
      *(v213 + 4) = v216;
      *v214 = v216;
      _os_log_impl(&dword_1CA256000, v211, v212, "Failed to load auto shortcuts: %@", v213, 0xCu);
      sub_1CA27080C(v214, &qword_1EC444AE0, &qword_1CA985B70);
      MEMORY[0x1CCAA4BF0](v214, -1, -1);
      MEMORY[0x1CCAA4BF0](v213, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445458, &unk_1CA987488);
    v207 = sub_1CA94C1E8();

    return v207;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4454A8, &unk_1CA98E820);
  v17 = sub_1CA94C1C8();
  v18 = v16;

  v245 = [objc_allocWithZone(MEMORY[0x1E69ACF58]) initWithOptions_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445458, &unk_1CA987488);
  v241 = sub_1CA94C1E8();
  v239 = [objc_allocWithZone(MEMORY[0x1E69E0988]) init];
  v240 = 0;
  v19 = 0;
  v243 = 0;
  v20 = v17 + 64;
  v21 = 1 << *(v17 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(v17 + 64);
  v24 = (v21 + 63) >> 6;
  v25 = *MEMORY[0x1E69E0F18];
  v26 = @"IdentifierOverrideKey";
  v27 = 0x1E69E0000uLL;
  v28 = &_OBJC_LABEL_PROTOCOL___WFActionParameterInputProvider;
  v29 = 0x1FC831000;
  v30 = &qword_1EDB9FB10;
  v31 = v12;
  do
  {
LABEL_5:
    if (v23)
    {
      goto LABEL_10;
    }

    do
    {
      v32 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
LABEL_149:
        __break(1u);
LABEL_150:
        __break(1u);
LABEL_151:
        __break(1u);
LABEL_152:
        __break(1u);
        goto LABEL_153;
      }

      if (v32 >= v24)
      {

        sub_1CA422474();
        v204 = v203;
        v205 = v241;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v267[0] = v205;
        sub_1CA42B3E0(v204, sub_1CA435DA8, 0, isUniquelyReferenced_nonNull_native, v267);

        sub_1CA293254(v240, 0);
        return v267[0];
      }

      v23 = *(v20 + 8 * v32);
      ++v19;
    }

    while (!v23);
    v19 = v32;
LABEL_10:
    v33 = __clz(__rbit64(v23)) | (v19 << 6);
    v34 = (*(v17 + 48) + 16 * v33);
    v35 = *v34;
    v36 = v34[1];
    v37 = *(*(v17 + 56) + 8 * v33);
    if (v37 >> 62)
    {
      v223 = v17;
      v237 = v37;
      v193 = v20;
      v194 = v19;
      v195 = v24;
      v196 = v25;
      v197 = v26;
      v198 = v27;
      v199 = v23;
      v200 = v29;
      v201 = v30;
      v250 = v36;
      v249 = v35;
      v202 = sub_1CA94D328();
      v35 = v249;
      v36 = v250;
      v30 = v201;
      v29 = v200;
      v23 = v199;
      v27 = v198;
      v26 = v197;
      v25 = v196;
      v24 = v195;
      v19 = v194;
      v20 = v193;
      v37 = v237;
      v38 = v202;
      v17 = v223;
      v28 = &_OBJC_LABEL_PROTOCOL___WFActionParameterInputProvider;
    }

    else
    {
      v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v23 &= v23 - 1;
  }

  while (!v38);
  v249 = v35;
  v219 = v23;
  v227 = v26;
  v230 = v25;
  v220 = v24;
  v221 = v19;
  v222 = v20;
  v223 = v17;
  v39 = v36;
  v246 = v38;
  v247 = objc_opt_self();
  v248 = v37 & 0xC000000000000001;
  v234 = v37 & 0xFFFFFFFFFFFFFF8;
  v233 = v37 + 32;
  v250 = v39;
  sub_1CA94C218();
  sub_1CA94C218();
  v40 = 0;
  v238 = v31;
  v237 = v37;
  while (1)
  {
    if (v248)
    {
      v41 = MEMORY[0x1CCAA22D0](v40, v37);
    }

    else
    {
      if (v40 >= *(v234 + 16))
      {
        goto LABEL_152;
      }

      v41 = *(v233 + 8 * v40);
    }

    v42 = v41;
    v43 = __OFADD__(v40, 1);
    v44 = v40 + 1;
    if (v43)
    {
      goto LABEL_151;
    }

    v254 = v44;
    if ([v247 v28[181]])
    {

      goto LABEL_140;
    }

    v45 = sub_1CA94C368();
    v46 = [v42 actionIdentifier];
    if (!v46)
    {
      sub_1CA94C3A8();
      v46 = sub_1CA94C368();
    }

    v47 = WFShortcutsActionIdentifierFromLinkAppAndActionIdentifier(v45, v46);

    if (v47)
    {
      v244 = sub_1CA94C3A8();
      v252 = v48;
    }

    else
    {
      v244 = 0;
      v252 = 0;
    }

    v49 = sub_1CA94C368();
    v50 = [v42 actionIdentifier];
    if (!v50)
    {
      sub_1CA94C3A8();
      v50 = sub_1CA94C368();
    }

    v267[0] = 0;
    v51 = [v245 actionForBundleIdentifier:v49 andActionIdentifier:v50 error:v267];

    v253 = v51;
    if (v51)
    {
      break;
    }

    v61 = v267[0];
    v62 = sub_1CA948AD8();

    swift_willThrow();
    v243 = 0;

    if (!v252)
    {
LABEL_38:
      v31 = v238;
      v28 = &_OBJC_LABEL_PROTOCOL___WFActionParameterInputProvider;
      v37 = v237;

      goto LABEL_140;
    }

LABEL_139:
    v31 = v238;
    v28 = &_OBJC_LABEL_PROTOCOL___WFActionParameterInputProvider;
    v37 = v237;
LABEL_140:
    v40 = v254;
    if (v254 == v246)
    {

      v17 = v223;
      v20 = v222;
      v19 = v221;
      v24 = v220;
      v25 = v230;
      v26 = v227;
      v27 = 0x1E69E0000;
      v23 = v219;
      v29 = 0x1FC831000;
      v30 = &qword_1EDB9FB10;
      goto LABEL_5;
    }
  }

  v52 = v267[0];
  if (!v252)
  {
    goto LABEL_38;
  }

  sub_1CA94C3A8();
  v53 = v253;
  v54 = sub_1CA94C528();

  v251 = v53;
  if (v54)
  {
    v55 = [v53 shortcutsActionMetadata];
    if (v55)
    {
      v56 = v55;
      v57 = [v55 dictionaryRepresentation];

      type metadata accessor for Key(0);
      sub_1CA435D64(&qword_1EDB9FB10, 255, type metadata accessor for Key);
      v58 = sub_1CA94C1C8();

      if (*(v58 + 16) && (v59 = sub_1CA323E24(), (v60 & 1) != 0))
      {
        sub_1CA25B374(*(v58 + 56) + 32 * v59, v267);

        if (swift_dynamicCast())
        {

          v244 = v265;
          v252 = v266;
        }
      }

      else
      {
      }
    }
  }

  sub_1CA2746C8(v42);
  if (!v63)
  {
    v64 = [v42 bundleIdentifier];
    sub_1CA94C3A8();
  }

  v65 = objc_opt_self();
  v66 = sub_1CA94C368();

  v67 = [v65 applicationWithBundleIdentifier_];

  v68 = [v67 isLocked];
  if (v68)
  {

LABEL_138:

    v192 = v251;
    goto LABEL_139;
  }

  v69 = WFPrimaryPhrasesForAutoShortcut();
  sub_1CA25B3D0(0, &qword_1EDB9F6D0, 0x1E69ACDA8);
  v70 = sub_1CA94C658();

  v71 = sub_1CA25B410(v70);
  v72 = 0;
  v260 = v70 & 0xC000000000000001;
  v261 = v70;
  v255 = (v70 & 0xFFFFFFFFFFFFFF8);
  v258 = MEMORY[0x1E69E7CC0];
  v259 = v71;
  v256 = v42;
  while (v71 != v72)
  {
    if (v260)
    {
      v73 = MEMORY[0x1CCAA22D0](v72, v261);
    }

    else
    {
      if (v72 >= v255[2])
      {
        goto LABEL_150;
      }

      v73 = *(v261 + 8 * v72 + 32);
    }

    v74 = v73;
    if (__OFADD__(v72, 1))
    {
      goto LABEL_149;
    }

    v75 = sub_1CA948D28();
    v264 = &v218;
    v257 = *(v75 - 8);
    MEMORY[0x1EEE9AC00](v75);
    v263 = &v218 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
    v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BC8, &qword_1CA9834A0);
    v262 = &v218;
    v78 = *(*(v77 - 8) + 64);
    v79 = MEMORY[0x1EEE9AC00](v77 - 8);
    v80 = (v78 + 15) & 0xFFFFFFFFFFFFFFF0;
    v81 = &v218 - v80;
    MEMORY[0x1EEE9AC00](v79);
    v82 = v74;
    v83 = [v82 parameterIdentifier];
    if (MEMORY[0x1EEE9AC00](v83))
    {
      sub_1CA948CF8();

      v84 = 0;
    }

    else
    {
      v84 = 1;
    }

    __swift_storeEnumTagSinglePayload(&v218 - v80, v84, 1, v75);
    sub_1CA2D9CD4(&v218 - v80, &v218 - v80, &qword_1EC443BC8, &qword_1CA9834A0);
    sub_1CA2D9CD4(&v218 - v80, v81, &qword_1EC443BC8, &qword_1CA9834A0);

    if (__swift_getEnumTagSinglePayload(v81, 1, v75) == 1)
    {
      sub_1CA27080C(v81, &qword_1EC443BC8, &qword_1CA9834A0);
      v42 = v256;
    }

    else
    {
      v85 = v257;
      v86 = v257[4];
      v86(v263, v81, v75);
      v87 = swift_isUniquelyReferenced_nonNull_native();
      v42 = v256;
      if ((v87 & 1) == 0)
      {
        sub_1CA2E5E9C();
        v258 = v90;
      }

      v88 = *(v258 + 2);
      if (v88 >= *(v258 + 3) >> 1)
      {
        sub_1CA2E5E9C();
        v258 = v91;
      }

      v89 = v258;
      *(v258 + 2) = v88 + 1;
      v86(&v89[((*(v85 + 80) + 32) & ~*(v85 + 80)) + v85[9] * v88], v263, v75);
    }

    v71 = v259;
    ++v72;
  }

  v92 = sub_1CA948D28();
  v93 = sub_1CA94C648();

  v267[0] = 0;
  v94 = [v236 propertiesForIdentifiers:v93 error:v267];

  v95 = v267[0];
  if (v94)
  {
    sub_1CA25B3D0(0, &qword_1EDB9FB20, 0x1E69AC950);
    sub_1CA4360F0(&qword_1EDB9FA28, MEMORY[0x1EEE78900]);
    v263 = sub_1CA94C1C8();
    v96 = v95;
  }

  else
  {
    v97 = v267[0];
    v98 = sub_1CA948AD8();

    swift_willThrow();
    sub_1CA25B3D0(0, &qword_1EDB9FB20, 0x1E69AC950);
    sub_1CA4360F0(&qword_1EDB9FA28, MEMORY[0x1EEE78900]);
    v263 = sub_1CA94C1E8();
    v243 = 0;
  }

  sub_1CA2746C8(v42);
  if (!v99)
  {
    v100 = [v42 bundleIdentifier];
    sub_1CA94C3A8();
  }

  v101 = sub_1CA94C368();

  v267[0] = 0;
  v102 = [v239 colorsForBundleIdentifier:v101 error:v267];

  if (!v102)
  {
    v107 = v267[0];
    v108 = sub_1CA948AD8();

    swift_willThrow();
    v243 = 0;
LABEL_73:
    v109 = objc_opt_self();
    v258 = [v109 whiteColor];
    [v42 shortcutTileColor];
    v110 = [v109 colorWithPaletteColor_];
    v105 = [v110 paletteGradient];

    v257 = [objc_allocWithZone(MEMORY[0x1E69E0B50]) initWithGradient_];
    goto LABEL_76;
  }

  v103 = v267[0];
  v104 = [v102 backgroundGradient];
  if (!v104)
  {

    goto LABEL_73;
  }

  v105 = v104;
  if ([v102 isDefaultTintColor])
  {
    v106 = [objc_opt_self() whiteColor];
  }

  else
  {
    v106 = [v102 tintColor];
  }

  v258 = v106;
  v257 = [objc_allocWithZone(MEMORY[0x1E69E0B50]) initWithGradient_];

LABEL_76:
  v111 = v259;

  if (v111)
  {
    v112 = v263;
    if (v111 >= 1)
    {
      v113 = 0;
      v262 = v92;
      v114 = (v92 - 8);
      v231 = MEMORY[0x1E69E7CC0];
      v264 = MEMORY[0x1E69E7CC0];
      v115 = v259;
      v229 = (v92 - 8);
      while (1)
      {
        if (v260)
        {
          v116 = MEMORY[0x1CCAA22D0](v113, v261);
        }

        else
        {
          v116 = *(v261 + 8 * v113 + 32);
        }

        v117 = v116;
        v118 = *v114;
        v119 = MEMORY[0x1EEE9AC00](v116);
        v121 = &v218 - v120;
        v122 = [v119 parameterIdentifier];
        if (!v122)
        {
          goto LABEL_95;
        }

        v123 = v122;
        sub_1CA948CF8();

        if (!*(v112 + 2) || (sub_1CA320F94(), v112 = v263, (v125 & 1) == 0))
        {
          (*(v118 + 8))(v121, v262);
          goto LABEL_95;
        }

        v126 = *(*(v263 + 7) + 8 * v124);
        v127 = [v126 value];
        if (!v127)
        {
          break;
        }

        v128 = v127;
        v255 = &v218;
        v129 = [v127 displayRepresentation];

        if (!v129)
        {
          (*(v118 + 8))(v121, v262);

          v115 = v259;
          goto LABEL_95;
        }

        v232 = v129;
        v130 = [v129 image];
        if (!v130)
        {
          v228 = sub_1CA25B3D0(0, &unk_1EDB9F6C0, 0x1E69AC870);
          v131 = [v42 systemImageName];
          sub_1CA94C3A8();

          v130 = sub_1CA5B88D0();
          if (!v130)
          {
            (*(v118 + 8))(v121, v262);

            v42 = v256;
            v112 = v263;
            goto LABEL_110;
          }

          v42 = v256;
          v112 = v263;
        }

        v132 = v130;
        v133 = [v130 contextualActionIcon];
        if (!v133)
        {
          (*(v118 + 8))(v121, v262);

          goto LABEL_114;
        }

        v134 = v133;
        v228 = v132;
        v135 = [v133 wfIcon];

        if (!v135)
        {
          (*(v118 + 8))(v121, v262);

LABEL_114:
          v115 = v259;
          v114 = v229;
LABEL_95:
          v142 = sub_1CA5BE580(v42);
          if (v143)
          {
            v144 = v142;
            v145 = v143;
            v146 = v42;
            v147 = [v42 systemImageName];
            v148 = sub_1CA94C3A8();
            v150 = v149;

            v151 = HIBYTE(v150) & 0xF;
            if ((v150 & 0x2000000000000000) == 0)
            {
              v151 = v148 & 0xFFFFFFFFFFFFLL;
            }

            if (v151)
            {
              v152 = [v42 systemImageName];
              v153 = sub_1CA94C3A8();
              v155 = v154;

              v156 = objc_allocWithZone(MEMORY[0x1E69E0D70]);
              v157 = v258;
              v158 = sub_1CA42AB48(v153, v155, v157, v257);
              v159 = v251;
              v160 = v146;
              v161 = v117;
              v162 = v158;
              if (swift_isUniquelyReferenced_nonNull_native())
              {
                v115 = v259;
                v163 = v264;
              }

              else
              {
                sub_1CA2E5E6C(0, v264[2] + 1, 1, v264);
                v163 = v181;
                v115 = v259;
              }

              v165 = *(v163 + 16);
              v164 = *(v163 + 24);
              if (v165 >= v164 >> 1)
              {
                sub_1CA2E5E6C(v164 > 1, v165 + 1, 1, v163);
                v264 = v182;
              }

              else
              {
                v264 = v163;
              }

              v166 = v264;
              v264[2] = v165 + 1;
              v167 = v166 + 56 * v165;
              *(v167 + 32) = v144;
              *(v167 + 40) = v145;
              v42 = v256;
              *(v167 + 48) = v162;
              *(v167 + 56) = v42;
              v168 = v253;
              *(v167 + 64) = v117;
              *(v167 + 72) = v168;
              *(v167 + 80) = 1;
            }

            else
            {

              v115 = v259;
            }

            v112 = v263;
          }

          else
          {
          }

          goto LABEL_107;
        }

        v136 = [v232 title];
        v137 = sub_1CA94C368();
        v138 = [v136 localizedStringForLocaleIdentifier_];

        v226 = sub_1CA94C3A8();
        v225 = v139;

        objc_opt_self();
        v140 = swift_dynamicCastObjCClass();
        v224 = v135;
        if (v140)
        {
          v141 = [v140 iconWithSymbolColor:v258 background:v257];
        }

        else
        {
          v141 = v135;
        }

        v169 = v141;
        v170 = v256;
        v171 = v251;
        v172 = v169;
        v173 = v170;
        v174 = v117;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1CA2E5E6C(0, *(v231 + 16) + 1, 1, v231);
          v231 = v183;
        }

        v176 = *(v231 + 16);
        v175 = *(v231 + 24);
        if (v176 >= v175 >> 1)
        {
          sub_1CA2E5E6C(v175 > 1, v176 + 1, 1, v231);
          v231 = v184;
        }

        (*(v118 + 8))(v121, v262);
        v177 = v231;
        *(v231 + 16) = v176 + 1;
        v178 = v177 + 56 * v176;
        v179 = v225;
        *(v178 + 32) = v226;
        *(v178 + 40) = v179;
        v42 = v256;
        *(v178 + 48) = v172;
        *(v178 + 56) = v42;
        v180 = v253;
        *(v178 + 64) = v117;
        *(v178 + 72) = v180;
        *(v178 + 80) = 1;
        v112 = v263;
        v115 = v259;
        v114 = v229;
LABEL_107:
        if (v115 == ++v113)
        {
          goto LABEL_125;
        }
      }

      (*(v118 + 8))(v121, v262);

LABEL_110:
      v115 = v259;
      goto LABEL_95;
    }

LABEL_153:
    __break(1u);
LABEL_154:
    __break(1u);
  }

  v231 = MEMORY[0x1E69E7CC0];
  v264 = MEMORY[0x1E69E7CC0];
LABEL_125:

  v267[0] = MEMORY[0x1E69E7CC0];
  if (v264[2] < 2)
  {
  }

  else
  {
    sub_1CA2B7EA0(v264);
  }

  sub_1CA2B7EA0(v231);
  v185 = v267[0];
  if (!*(v267[0] + 2))
  {

    v42 = v258;
LABEL_137:

    goto LABEL_138;
  }

  sub_1CA293254(v240, 0);
  v186 = v241;
  swift_isUniquelyReferenced_nonNull_native();
  v265 = v186;
  sub_1CA271BF8(v244, v252);
  if (__OFADD__(*(v186 + 16), (v187 & 1) == 0))
  {
    goto LABEL_154;
  }

  v188 = v187;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445498, &qword_1CA987598);
  v189 = sub_1CA94D588();
  v190 = v265;
  if ((v189 & 1) == 0 || (sub_1CA271BF8(v244, v252), (v188 & 1) == (v191 & 1)))
  {
    if (v188)
    {
    }

    else
    {
      sub_1CA323E18();
    }

    v241 = v190;
    sub_1CA2B7EA0(v185);

    v240 = sub_1CA436660;
    goto LABEL_137;
  }

  result = sub_1CA94D878();
  __break(1u);
  return result;
}