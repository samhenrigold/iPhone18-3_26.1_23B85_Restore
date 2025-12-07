uint64_t sub_1D8E5A7E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v14 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v16 = &v18 - v15;
  (*(a5 + 40))(a3, a5, v14);
  (*(a9 + 16))(a1, AssociatedTypeWitness, a9);
  return (*(v13 + 8))(v16, AssociatedTypeWitness);
}

uint64_t sub_1D8E5A98C(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v5 = *(a3[3] - 8);
  v6 = *(v5 + 84);
  v7 = *(a3[4] - 8);
  v8 = *(v7 + 84);
  if (v8 <= v6)
  {
    v9 = *(v5 + 84);
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = a3[2];
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  v13 = *(v7 + 80);
  v14 = *(*(a3[4] - 8) + 64);
  v15 = *(v11 + 80);
  v16 = *(v11 + 64);
  if (v12 <= v9)
  {
    v17 = v9;
  }

  else
  {
    v17 = *(v11 + 84);
  }

  if (v17 <= 0xFE)
  {
    v17 = 254;
  }

  if (!a2)
  {
    return 0;
  }

  v18 = *(*(a3[3] - 8) + 64) + v13;
  v19 = a2 - v17;
  if (a2 > v17)
  {
    v20 = v16 + ((v14 + v15 + (v18 & ~v13)) & ~v15) + 1;
    v21 = 8 * v20;
    if (v20 > 3)
    {
      goto LABEL_12;
    }

    v23 = ((v19 + ~(-1 << v21)) >> v21) + 1;
    if (HIWORD(v23))
    {
      v22 = *(a1 + v20);
      if (!v22)
      {
        goto LABEL_32;
      }

      goto LABEL_19;
    }

    if (v23 > 0xFF)
    {
      v22 = *(a1 + v20);
      if (!*(a1 + v20))
      {
        goto LABEL_32;
      }

      goto LABEL_19;
    }

    if (v23 >= 2)
    {
LABEL_12:
      v22 = *(a1 + v20);
      if (!*(a1 + v20))
      {
        goto LABEL_32;
      }

LABEL_19:
      v24 = (v22 - 1) << v21;
      if (v20 > 3)
      {
        v24 = 0;
      }

      if (v16 + ((v14 + v15 + (v18 & ~v13)) & ~v15) == -1)
      {
        v26 = 0;
      }

      else
      {
        if (v20 <= 3)
        {
          v25 = v16 + ((v14 + v15 + (v18 & ~v13)) & ~v15) + 1;
        }

        else
        {
          v25 = 4;
        }

        if (v25 > 2)
        {
          if (v25 == 3)
          {
            v26 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v26 = *a1;
          }
        }

        else if (v25 == 1)
        {
          v26 = *a1;
        }

        else
        {
          v26 = *a1;
        }
      }

      v34 = v17 + (v26 | v24);
      return (v34 + 1);
    }
  }

LABEL_32:
  if (v6 == v17)
  {
    v27 = *(v5 + 48);

    return v27();
  }

  v29 = (a1 + v18) & ~v13;
  if (v8 == v17)
  {
    v30 = *(v7 + 48);

    return v30(v29);
  }

  v31 = (v29 + v14 + v15) & ~v15;
  if (v12 != v17)
  {
    v33 = *(v31 + v16);
    if (v33 < 2)
    {
      return 0;
    }

    v34 = (v33 + 2147483646) & 0x7FFFFFFF;
    return (v34 + 1);
  }

  v32 = *(v11 + 48);

  return v32(v31, v12, v10);
}

char *sub_1D8E5AC78(char *result, unsigned int a2, unsigned int a3, void *a4)
{
  v5 = *(a4[3] - 8);
  v6 = *(v5 + 84);
  v7 = *(a4[4] - 8);
  v8 = *(v7 + 84);
  if (v8 <= v6)
  {
    v9 = *(v5 + 84);
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(a4[2] - 8);
  v11 = *(v10 + 84);
  v12 = *(*(a4[3] - 8) + 64);
  v13 = *(v7 + 80);
  v14 = *(*(a4[4] - 8) + 64);
  v15 = *(v10 + 80);
  v16 = *(v10 + 64);
  if (v11 <= v9)
  {
    v17 = v9;
  }

  else
  {
    v17 = *(v10 + 84);
  }

  if (v17 <= 0xFE)
  {
    v17 = 254;
  }

  v18 = v16 + ((v14 + v15 + ((v12 + v13) & ~v13)) & ~v15) + 1;
  v19 = a3 >= v17;
  v20 = a3 - v17;
  if (v20 != 0 && v19)
  {
    if (v18 <= 3)
    {
      v25 = ((v20 + ~(-1 << (8 * v18))) >> (8 * v18)) + 1;
      if (HIWORD(v25))
      {
        v21 = 4;
      }

      else
      {
        if (v25 < 0x100)
        {
          v26 = 1;
        }

        else
        {
          v26 = 2;
        }

        if (v25 >= 2)
        {
          v21 = v26;
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
  }

  else
  {
    v21 = 0;
  }

  if (v17 < a2)
  {
    v22 = ~v17 + a2;
    if (v18 < 4)
    {
      v24 = (v22 >> (8 * v18)) + 1;
      if (v18)
      {
        v27 = v22 & ~(-1 << (8 * v18));
        v28 = result;
        bzero(result, v18);
        result = v28;
        if (v18 != 3)
        {
          if (v18 == 2)
          {
            *v28 = v27;
            if (v21 > 1)
            {
LABEL_56:
              if (v21 == 2)
              {
                *&result[v18] = v24;
              }

              else
              {
                *&result[v18] = v24;
              }

              return result;
            }
          }

          else
          {
            *v28 = v22;
            if (v21 > 1)
            {
              goto LABEL_56;
            }
          }

          goto LABEL_53;
        }

        *v28 = v27;
        v28[2] = BYTE2(v27);
      }

      if (v21 > 1)
      {
        goto LABEL_56;
      }
    }

    else
    {
      v23 = result;
      bzero(result, v18);
      result = v23;
      *v23 = v22;
      v24 = 1;
      if (v21 > 1)
      {
        goto LABEL_56;
      }
    }

LABEL_53:
    if (v21)
    {
      result[v18] = v24;
    }

    return result;
  }

  if (v21 > 1)
  {
    if (v21 != 2)
    {
      *&result[v18] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *&result[v18] = 0;
  }

  else if (v21)
  {
    result[v18] = 0;
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
  if (v6 == v17)
  {
    v29 = *(v5 + 56);

    return v29();
  }

  else
  {
    v30 = &result[v12 + v13] & ~v13;
    if (v8 == v17)
    {
      v31 = *(v7 + 56);

      return v31(v30);
    }

    else
    {
      result = ((v30 + v14 + v15) & ~v15);
      if (v11 == v17)
      {
        v32 = *(v10 + 56);

        return v32(result);
      }

      else
      {
        result[v16] = a2 + 1;
      }
    }
  }

  return result;
}

uint64_t sub_1D8E5B088@<X0>(void **a1@<X0>, int a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v34 = a4;
  v35 = a6;
  v37 = a3;
  v38 = a8;
  v32 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v33 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = v31 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB4F40, &qword_1D918B680);
  v31[1] = v14;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v39 = AssociatedTypeWitness;
  v40 = v14;
  v41 = AssociatedConformanceWitness;
  v42 = MEMORY[0x1E69E7288];
  v16 = sub_1D917772C();
  v36 = *(v16 - 8);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = v31 - v18;
  v20 = *a1;
  (*(a7 + 48))(a5, a7, v17);
  v21 = swift_allocObject();
  *(v21 + 16) = v32;
  *(v21 + 24) = v20;
  v22 = v20;
  sub_1D9177D0C();

  (*(v33 + 8))(v13, AssociatedTypeWitness);
  v39 = v34;
  v40 = a5;
  v41 = v35;
  v42 = a7;
  v23 = type metadata accessor for FallbackProcessingStep(0, &v39);
  WitnessTable = swift_getWitnessTable();
  AssetProcessingStep.metadataTrace.getter(v23, WitnessTable, &v39);
  v25 = sub_1D9179FEC();
  v27 = v26;
  v28 = swift_getWitnessTable();
  v29 = j___s18PodcastsFoundation13EmitLifecycleV16defaultVerbositySbvgZ(v16, v28);
  Publisher.emitLifecycle(for:name:definesInterval:context:verbose:)(&v39, "FallbackBackupSource", 20, 2, 0, v25, v27, v29 & 1, v38, v16, v28);

  sub_1D8D7621C(&v39);
  return (*(v36 + 8))(v19, v16);
}

uint64_t sub_1D8E5B3DC@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = ((*(*(v6 - 8) + 80) + 48) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 64);
  v14[0] = v2[2];
  v5 = v14[0];
  v14[1] = v6;
  v14[2] = v7;
  v14[3] = v8;
  v10 = *(type metadata accessor for FallbackProcessingStep(0, v14) - 8);
  v11 = *(v2 + v9);
  v12 = v2 + ((v9 + *(v10 + 80) + 1) & ~*(v10 + 80));

  return sub_1D8E5B088(a1, v11, v12, v5, v6, v7, v8, a2);
}

id sub_1D8E5B4FC@<X0>(void **a1@<X0>, char a2@<W1>, void *a3@<X2>, void *a4@<X8>)
{
  if ((a2 & 1) == 0)
  {
    a3 = *a1;
  }

  *a4 = a3;
  return a3;
}

uint64_t sub_1D8E5B510(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  v10 = *(v7 + 64);
  if (v8 <= v5)
  {
    v11 = *(v4 + 84);
  }

  else
  {
    v11 = *(v7 + 84);
  }

  if (v11 <= 0xFE)
  {
    v11 = 254;
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v13 = a2 - v11;
  if (a2 <= v11)
  {
    goto LABEL_29;
  }

  v14 = v10 + (v12 & ~v9) + 1;
  v15 = 8 * v14;
  if (v14 > 3)
  {
    goto LABEL_9;
  }

  v17 = ((v13 + ~(-1 << v15)) >> v15) + 1;
  if (HIWORD(v17))
  {
    v16 = *(a1 + v14);
    if (v16)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (v17 <= 0xFF)
    {
      if (v17 < 2)
      {
        goto LABEL_29;
      }

LABEL_9:
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_29;
      }

LABEL_16:
      v18 = (v16 - 1) << v15;
      if (v14 > 3)
      {
        v18 = 0;
      }

      if (v10 + (v12 & ~v9) == -1)
      {
        v20 = 0;
      }

      else
      {
        if (v14 <= 3)
        {
          v19 = v10 + (v12 & ~v9) + 1;
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

      return v11 + (v20 | v18) + 1;
    }

    v16 = *(a1 + v14);
    if (*(a1 + v14))
    {
      goto LABEL_16;
    }
  }

LABEL_29:
  if (v5 == v11)
  {
    return (*(v4 + 48))();
  }

  v22 = (a1 + v12) & ~v9;
  if (v8 == v11)
  {
    return (*(v7 + 48))(v22, v8, v6);
  }

  v23 = *(v22 + v10);
  if (v23 < 2)
  {
    return 0;
  }

  return ((v23 + 2147483646) & 0x7FFFFFFF) + 1;
}

char *sub_1D8E5B720(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(*(a4 + 24) - 8);
  v8 = *(v7 + 84);
  v9 = *(v5 + 64);
  v10 = *(v7 + 80);
  v11 = *(v7 + 64);
  if (v8 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v7 + 84);
  }

  if (v12 <= 0xFE)
  {
    v12 = 254;
  }

  v13 = v9 + v10;
  v14 = v11 + ((v9 + v10) & ~v10) + 1;
  v15 = a3 >= v12;
  v16 = a3 - v12;
  if (v16 != 0 && v15)
  {
    if (v14 <= 3)
    {
      v21 = ((v16 + ~(-1 << (8 * v14))) >> (8 * v14)) + 1;
      if (HIWORD(v21))
      {
        v17 = 4;
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
          v17 = v22;
        }

        else
        {
          v17 = 0;
        }
      }
    }

    else
    {
      v17 = 1;
    }
  }

  else
  {
    v17 = 0;
  }

  if (v12 < a2)
  {
    v18 = ~v12 + a2;
    if (v14 < 4)
    {
      v20 = (v18 >> (8 * v14)) + 1;
      if (v14)
      {
        v23 = v18 & ~(-1 << (8 * v14));
        v24 = result;
        bzero(result, v14);
        result = v24;
        if (v14 != 3)
        {
          if (v14 == 2)
          {
            *v24 = v23;
            if (v17 > 1)
            {
LABEL_50:
              if (v17 == 2)
              {
                *&result[v14] = v20;
              }

              else
              {
                *&result[v14] = v20;
              }

              return result;
            }
          }

          else
          {
            *v24 = v18;
            if (v17 > 1)
            {
              goto LABEL_50;
            }
          }

          goto LABEL_47;
        }

        *v24 = v23;
        v24[2] = BYTE2(v23);
      }

      if (v17 > 1)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v19 = result;
      bzero(result, v14);
      result = v19;
      *v19 = v18;
      v20 = 1;
      if (v17 > 1)
      {
        goto LABEL_50;
      }
    }

LABEL_47:
    if (v17)
    {
      result[v14] = v20;
    }

    return result;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&result[v14] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

    *&result[v14] = 0;
  }

  else if (v17)
  {
    result[v14] = 0;
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
  if (v6 == v12)
  {
    v25 = *(v5 + 56);

    return v25();
  }

  else
  {
    result = (&result[v13] & ~v10);
    if (v8 == v12)
    {
      v26 = *(v7 + 56);

      return v26(result);
    }

    else
    {
      result[v11] = a2 + 1;
    }
  }

  return result;
}

id sub_1D8E5BA04@<X0>(void **a1@<X0>, void **a2@<X8>)
{
  if (*(v2 + 16))
  {
    v3 = (v2 + 24);
  }

  else
  {
    v3 = a1;
  }

  v4 = *v3;
  *a2 = *v3;
  return v4;
}

uint64_t JustAssetProcessingStep.asset.getter@<X0>(uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 16);

  return v5(a2, v2, AssociatedTypeWitness);
}

uint64_t JustAssetProcessingStep.init(asset:metadata:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a5, a1, AssociatedTypeWitness);
  v12 = type metadata accessor for JustAssetProcessingStep(0, a3, a4, v11);
  v13 = *(*(a3 - 8) + 32);
  v14 = a5 + *(v12 + 36);

  return v13(v14, a2, a3);
}

uint64_t JustAssetProcessingStep.publisher.getter(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v5 = &v12 - v4;
  v6 = sub_1D91779FC();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v12 - v9;
  (*(v3 + 16))(v5, v1, AssociatedTypeWitness, v8);
  sub_1D9177A0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
  sub_1D91779DC();
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D8E5BDD4(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
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

uint64_t sub_1D8E5BE74(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 84);
  v9 = *(v5 - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(*(AssociatedTypeWitness - 8) + 64) + v11;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = (v13 & ~v11) + *(*(v5 - 8) + 64);
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
        if (v8 >= v10)
        {
          v23 = *(v7 + 48);

          return v23(a1);
        }

        else
        {
          v21 = *(v9 + 48);

          return v21((a1 + v13) & ~v11, v10, v5);
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
      v19 = (v13 & ~v11) + *(*(v5 - 8) + 64);
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

void sub_1D8E5C0C8(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = *(v8 + 84);
  v10 = *(v7 - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 64);
  v13 = *(v10 + 80);
  if (v11 <= v9)
  {
    v14 = *(v8 + 84);
  }

  else
  {
    v14 = *(v10 + 84);
  }

  v15 = v12 + v13;
  v16 = ((v12 + v13) & ~v13) + *(*(v7 - 8) + 64);
  if (a3 <= v14)
  {
    v17 = 0;
  }

  else if (v16 <= 3)
  {
    v20 = ((a3 - v14 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
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
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (v14 < a2)
  {
    v18 = ~v14 + a2;
    if (v16 < 4)
    {
      v19 = (v18 >> (8 * v16)) + 1;
      if (v16)
      {
        v22 = v18 & ~(-1 << (8 * v16));
        bzero(a1, v16);
        if (v16 != 3)
        {
          if (v16 == 2)
          {
            *a1 = v22;
            if (v17 > 1)
            {
LABEL_46:
              if (v17 == 2)
              {
                *&a1[v16] = v19;
              }

              else
              {
                *&a1[v16] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v17 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v22;
        a1[2] = BYTE2(v22);
      }

      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v17)
    {
      a1[v16] = v19;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v16] = 0;
  }

  else if (v17)
  {
    a1[v16] = 0;
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
    v24 = *(v8 + 56);

    v24(a1, a2);
  }

  else
  {
    v23 = *(v10 + 56);

    v23(&a1[v15] & ~v13, a2, v11, v7);
  }
}

uint64_t ReceiveAndSubscribeOnAssetProcessingStep.init(upstream:receiveQueue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v9 = type metadata accessor for ReceiveAndSubscribeOnAssetProcessingStep(0, a3, a4, a4);
  result = (*(*(a3 - 8) + 32))(&a5[*(v9 + 36)], a1, a3);
  *a5 = a2;
  return result;
}

uint64_t sub_1D8E5C484(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

  v9 = ((v6 + 8) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
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

void sub_1D8E5C608(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v10 = ((v9 + 8) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
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

uint64_t sub_1D8E5C8C4(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 84);
  v9 = *(v5 - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(*(AssociatedTypeWitness - 8) + 64) + v11;
  v14 = *(*(v5 - 8) + 64) + 7;
  if (v12 >= a2)
  {
    goto LABEL_29;
  }

  v15 = ((v14 + (v13 & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v16 = v15 & 0xFFFFFFF8;
  if ((v15 & 0xFFFFFFF8) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = a2 - v12 + 1;
  }

  if (v17 >= 0x10000)
  {
    v18 = 4;
  }

  else
  {
    v18 = 2;
  }

  if (v17 < 0x100)
  {
    v18 = 1;
  }

  if (v17 >= 2)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_29;
      }
    }

LABEL_26:
    v22 = v20 - 1;
    if (v16)
    {
      v22 = 0;
      v23 = *a1;
    }

    else
    {
      v23 = 0;
    }

    return v12 + (v23 | v22) + 1;
  }

  if (v19)
  {
    v20 = *(a1 + v15);
    if (v20)
    {
      goto LABEL_26;
    }
  }

LABEL_29:
  if (v8 == v12)
  {
    v24 = *(v7 + 48);

    return v24(a1);
  }

  else
  {
    v25 = (a1 + v13) & ~v11;
    if (v10 == v12)
    {
      v26 = *(v9 + 48);

      return v26(v25, v10, v5);
    }

    else
    {
      v27 = *((v14 + v25) & 0xFFFFFFFFFFFFFFF8);
      if (v27 >= 0xFFFFFFFF)
      {
        LODWORD(v27) = -1;
      }

      return (v27 + 1);
    }
  }
}

void sub_1D8E5CB0C(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  v11 = *(v7 - 8);
  v12 = *(v11 + 84);
  v13 = *(v9 + 64);
  v14 = *(v11 + 80);
  v15 = *(v11 + 64);
  if (v12 <= v10)
  {
    v16 = *(v9 + 84);
  }

  else
  {
    v16 = *(v11 + 84);
  }

  if (v16 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  v17 = v13 + v14;
  v18 = (v13 + v14) & ~v14;
  v19 = v15 + 7;
  v20 = ((v15 + 7 + v18) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v15 + 7 + v18) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v21 = a3 - v16 + 1;
  }

  else
  {
    v21 = 2;
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

  if (v16 < a3)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  if (a2 > v16)
  {
    if (v20)
    {
      v25 = 1;
    }

    else
    {
      v25 = a2 - v16;
    }

    if (v20)
    {
      v26 = ~v16 + a2;
      bzero(a1, v20);
      *a1 = v26;
    }

    if (v24 > 1)
    {
      if (v24 == 2)
      {
        *(a1 + v20) = v25;
      }

      else
      {
        *(a1 + v20) = v25;
      }
    }

    else if (v24)
    {
      *(a1 + v20) = v25;
    }

    return;
  }

  if (v24 > 1)
  {
    if (v24 != 2)
    {
      *(a1 + v20) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *(a1 + v20) = 0;
  }

  else if (v24)
  {
    *(a1 + v20) = 0;
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
  if (v10 == v16)
  {
    v27 = *(v9 + 56);

    v27(a1, a2, v10, AssociatedTypeWitness);
  }

  else
  {
    v28 = (a1 + v17) & ~v14;
    if (v12 == v16)
    {
      v29 = *(v11 + 56);

      v29(v28, a2);
    }

    else
    {
      if ((a2 & 0x80000000) != 0)
      {
        v30 = a2 & 0x7FFFFFFF;
      }

      else
      {
        v30 = (a2 - 1);
      }

      *((v19 + v28) & 0xFFFFFFFFFFFFFFF8) = v30;
    }
  }
}

uint64_t sub_1D8E5CE70@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = __swift_project_value_buffer(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

void sub_1D8E5CFDC()
{
  v1 = v0[2];
  os_unfair_lock_lock(v1 + 4);
  v2 = *(*v0 + 168);
  swift_beginAccess();
  sub_1D8D73ABC(v0 + v2, &v3);
  if (v5 >= 2)
  {
    sub_1D8D6BCE0(&v3, v6);
    v3 = 0uLL;
    v4 = 0;
    v5 = xmmword_1D918BEE0;
    swift_beginAccess();
    sub_1D8D74118(&v3, v0 + v2);
    swift_endAccess();
    os_unfair_lock_unlock(v1 + 4);
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    sub_1D91777BC();
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
  }

  else
  {
    sub_1D8D740C4(&v3);
    os_unfair_lock_unlock(v1 + 4);
  }
}

uint64_t sub_1D8E5D100(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  if (v11 <= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  v13 = *(v5 - 8);
  v14 = *(v13 + 84);
  v15 = *(v9 + 80);
  v16 = *(v9 + 64);
  v17 = *(v13 + 80);
  v18 = *(v13 + 64);
  if (v14 <= v12)
  {
    v19 = v12;
  }

  else
  {
    v19 = *(v13 + 84);
  }

  if (v19 <= 0xFE)
  {
    v19 = 254;
  }

  if (!a2)
  {
    return 0;
  }

  v20 = *(v7 + 64) + v15;
  if (a2 > v19)
  {
    v21 = v18 + ((v16 + v17 + (v20 & ~v15)) & ~v17) + 2;
    v22 = 8 * v21;
    if (v21 > 3)
    {
      goto LABEL_12;
    }

    v24 = ((a2 - v19 + ~(-1 << v22)) >> v22) + 1;
    if (HIWORD(v24))
    {
      v23 = *(a1 + v21);
      if (!v23)
      {
        goto LABEL_32;
      }

      goto LABEL_19;
    }

    if (v24 > 0xFF)
    {
      v23 = *(a1 + v21);
      if (!*(a1 + v21))
      {
        goto LABEL_32;
      }

      goto LABEL_19;
    }

    if (v24 >= 2)
    {
LABEL_12:
      v23 = *(a1 + v21);
      if (!*(a1 + v21))
      {
        goto LABEL_32;
      }

LABEL_19:
      v25 = (v23 - 1) << v22;
      if (v21 > 3)
      {
        v25 = 0;
      }

      if (v18 + ((v16 + v17 + (v20 & ~v15)) & ~v17) == -2)
      {
        v27 = 0;
      }

      else
      {
        if (v21 <= 3)
        {
          v26 = v18 + ((v16 + v17 + (v20 & ~v15)) & ~v17) + 2;
        }

        else
        {
          v26 = 4;
        }

        if (v26 > 2)
        {
          if (v26 == 3)
          {
            v27 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v27 = *a1;
          }
        }

        else if (v26 == 1)
        {
          v27 = *a1;
        }

        else
        {
          v27 = *a1;
        }
      }

      v36 = v19 + (v27 | v25);
      return (v36 + 1);
    }
  }

LABEL_32:
  if (v8 == v19)
  {
    v28 = *(v7 + 48);
    v29 = a1;
    v30 = v8;
    v31 = v6;
LABEL_34:

    return v28(v29, v30, v31);
  }

  v33 = (a1 + v20) & ~v15;
  if (v11 != v19)
  {
    v29 = ((v33 + v16 + v17) & ~v17);
    if (v14 == v19)
    {
      v28 = *(v13 + 48);
      v30 = *(v13 + 84);
      v31 = v5;
      goto LABEL_34;
    }

    v35 = *(v29 + v18);
    if (v35 < 2)
    {
      return 0;
    }

    v36 = (v35 + 2147483646) & 0x7FFFFFFF;
    return (v36 + 1);
  }

  v34 = *(v10 + 48);

  return v34(v33);
}

void sub_1D8E5D444(_BYTE *a1, uint64_t a2, unsigned int a3, void *a4)
{
  v8 = a4[2];
  v7 = a4[3];
  v9 = *(v8 - 8);
  v37 = v9;
  v10 = *(v9 + 84);
  v11 = *(swift_getAssociatedTypeWitness() - 8);
  v12 = v11;
  v13 = *(v11 + 84);
  if (v13 <= v10)
  {
    v14 = v10;
  }

  else
  {
    v14 = *(v11 + 84);
  }

  v15 = *(v7 - 8);
  v16 = *(v15 + 84);
  v17 = *(v9 + 64);
  v18 = *(v11 + 80);
  v19 = *(v11 + 64);
  v20 = *(v15 + 80);
  v21 = *(v15 + 64);
  if (v16 <= v14)
  {
    v22 = v14;
  }

  else
  {
    v22 = *(v15 + 84);
  }

  if (v22 <= 0xFE)
  {
    v22 = 254;
  }

  v23 = v21 + ((v19 + v20 + ((v17 + v18) & ~v18)) & ~v20) + 2;
  if (a3 <= v22)
  {
    v24 = 0;
  }

  else if (v23 <= 3)
  {
    v27 = ((a3 - v22 + ~(-1 << (8 * v23))) >> (8 * v23)) + 1;
    if (HIWORD(v27))
    {
      v24 = 4;
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
        v24 = v28;
      }

      else
      {
        v24 = 0;
      }
    }
  }

  else
  {
    v24 = 1;
  }

  if (v22 < a2)
  {
    v25 = ~v22 + a2;
    if (v23 < 4)
    {
      v26 = (v25 >> (8 * v23)) + 1;
      if (v21 + ((v19 + v20 + ((v17 + v18) & ~v18)) & ~v20) != -2)
      {
        v29 = v25 & ~(-1 << (8 * v23));
        bzero(a1, v23);
        if (v23 != 3)
        {
          if (v23 == 2)
          {
            *a1 = v29;
            if (v24 > 1)
            {
LABEL_55:
              if (v24 == 2)
              {
                *&a1[v23] = v26;
              }

              else
              {
                *&a1[v23] = v26;
              }

              return;
            }
          }

          else
          {
            *a1 = v25;
            if (v24 > 1)
            {
              goto LABEL_55;
            }
          }

          goto LABEL_52;
        }

        *a1 = v29;
        a1[2] = BYTE2(v29);
      }

      if (v24 > 1)
      {
        goto LABEL_55;
      }
    }

    else
    {
      bzero(a1, v23);
      *a1 = v25;
      v26 = 1;
      if (v24 > 1)
      {
        goto LABEL_55;
      }
    }

LABEL_52:
    if (v24)
    {
      a1[v23] = v26;
    }

    return;
  }

  if (v24 <= 1)
  {
    if (v24)
    {
      a1[v23] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    }

LABEL_35:
    if (!a2)
    {
      return;
    }

    goto LABEL_36;
  }

  if (v24 == 2)
  {
    *&a1[v23] = 0;
    goto LABEL_35;
  }

  *&a1[v23] = 0;
  if (!a2)
  {
    return;
  }

LABEL_36:
  if (v10 == v22)
  {
    v30 = *(v37 + 56);
    v31 = a1;
    v32 = a2;
    v33 = v10;
    v34 = v8;
LABEL_38:

    v30(v31, v32, v33, v34);
    return;
  }

  v35 = &a1[v17 + v18] & ~v18;
  if (v13 != v22)
  {
    v31 = ((v35 + v19 + v20) & ~v20);
    if (v16 != v22)
    {
      v31[v21] = a2 + 1;
      return;
    }

    v30 = *(v15 + 56);
    v32 = a2;
    v33 = v16;
    v34 = v7;
    goto LABEL_38;
  }

  v36 = *(v12 + 56);

  v36(v35, a2);
}

uint64_t MediaCacheDeleteProcessor.isRunning.getter()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock((v1 + 20));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 20));
  return v2;
}

uint64_t MediaCacheDeleteProcessorDataSource.name.getter()
{
  v1 = *v0;

  return v1;
}

void MediaCacheDeleteProcessorDataSource.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

void __swiftcall MediaCacheDeleteProcessorDataSource.episodesPredicate()(NSPredicate *__return_ptr retstr)
{
  v2 = sub_1D9176FDC();
  v3 = *(v2 - 1);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D9176E3C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v1 + 32);
  sub_1D8CF2154(0, &qword_1EDCD5B00, off_1E85675C8);
  v11 = [v10 episodeLimitForKey_];
  sub_1D9176E0C();
  sub_1D9176FAC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB75D0, &qword_1D9189180);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1D918C190;
  *(v12 + 32) = _sSo9MTEpisodeC18PodcastsFoundationE43predicateForAutomaticallyDownloadedEpisodesSo11NSPredicateCyFZ_0();
  *(v12 + 40) = sub_1D8FCD114(v11, v9);
  sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
  v13 = sub_1D91785DC();

  [objc_opt_self() andPredicateWithSubpredicates_];

  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v9, v6);
}

uint64_t sub_1D8E5DBB8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1D8E5DC00(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t MediaCacheDeleteProcessorDelegate.didMatch(episodes:)(uint64_t a1)
{
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4B48, &unk_1D918C250);
  v33 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v27 = &v26 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D70, &unk_1D918BCE0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v26 - v5;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4B50, &unk_1D918C260);
  v32 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v8 = &v26 - v7;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4B58, &unk_1D918C490);
  v31 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v10 = &v26 - v9;
  v12 = *v1;
  v11 = *(v1 + 8);
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = v12;
  v13[4] = v11;
  v14 = swift_allocObject();
  v14[2] = v12;
  v14[3] = sub_1D8E5E7B4;
  v14[4] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4B60, &unk_1D918C270);
  swift_allocObject();

  v15 = v12;
  v16 = v11;
  v17 = v15;
  v18 = sub_1D9177A5C();
  v19 = sub_1D9178DBC();
  (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
  v34 = v18;
  v35 = v16;
  sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  sub_1D8CF48EC(&unk_1EDCD0AB8, &qword_1ECAB4B60, &unk_1D918C270, MEMORY[0x1E695C038]);
  sub_1D8D02DF0();
  v20 = v27;
  sub_1D9177D3C();
  sub_1D8CF48EC(&qword_1ECAB0A10, &qword_1ECAB4B48, &unk_1D918C250, MEMORY[0x1E695BCB8]);
  v21 = v28;
  sub_1D9177CEC();

  (*(v33 + 8))(v20, v21);
  sub_1D8D08A50(v6, &qword_1ECAB4D70, &unk_1D918BCE0);
  sub_1D8CF48EC(&qword_1ECAB0430, &qword_1ECAB4B50, &unk_1D918C260, MEMORY[0x1E695BE98]);
  v22 = v30;
  sub_1D9177B9C();
  (*(v32 + 8))(v8, v22);
  sub_1D8CF48EC(&qword_1ECAB0748, &qword_1ECAB4B58, &unk_1D918C490, MEMORY[0x1E695BD60]);
  v23 = v29;
  v24 = sub_1D9177B1C();
  (*(v31 + 8))(v10, v23);
  return v24;
}

void sub_1D8E5E184(uint64_t a1@<X1>, char **a2@<X8>)
{
  v5 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
  sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D918A530;
  v7 = sub_1D917820C();
  v9 = v8;
  *(v6 + 56) = MEMORY[0x1E69E6158];
  *(v6 + 64) = sub_1D8D34978();
  *(v6 + 32) = v7;
  *(v6 + 40) = v9;
  *(v6 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB4F30, &qword_1D918DA90);
  *(v6 + 104) = sub_1D8CF48EC(&qword_1ECAAFE48, &unk_1ECAB4F30, &qword_1D918DA90, MEMORY[0x1E6969E40]);
  *(v6 + 72) = a1;

  v10 = sub_1D9178C8C();
  [v5 setPredicate_];

  sub_1D8CF2154(0, &qword_1EDCD5B00, off_1E85675C8);
  v11 = sub_1D917908C();
  if (v2)
  {

    return;
  }

  v12 = v11;
  if (qword_1EDCD0F18 != -1)
  {
LABEL_51:
    swift_once();
  }

  v13 = sub_1D917744C();
  __swift_project_value_buffer(v13, qword_1EDCD0F20);

  v14 = sub_1D917741C();
  v15 = sub_1D9178CFC();

  v16 = v12 >> 62;
  v51 = v5;
  v52 = a2;
  if (os_log_type_enabled(v14, v15))
  {
    v17 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v55 = v47;
    buf = v17;
    *v17 = 136315138;
    if (v16)
    {
      v18 = v12 & 0xFFFFFFFFFFFFFF8;
      a2 = sub_1D917935C();
    }

    else
    {
      v18 = v12 & 0xFFFFFFFFFFFFFF8;
      a2 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    log = v14;
    if (a2)
    {
      v19 = 0;
      v53 = MEMORY[0x1E69E7CC0];
      v5 = &selRef_timeIntervalSinceDate_;
      do
      {
        v20 = v19;
        while (1)
        {
          if ((v12 & 0xC000000000000001) != 0)
          {
            v21 = MEMORY[0x1DA72AA90](v20, v12);
            v19 = (v20 + 1);
            if (__OFADD__(v20, 1))
            {
              goto LABEL_49;
            }
          }

          else
          {
            if (v20 >= *(v18 + 16))
            {
              goto LABEL_50;
            }

            v21 = *(v12 + 8 * v20 + 32);
            v19 = (v20 + 1);
            if (__OFADD__(v20, 1))
            {
LABEL_49:
              __break(1u);
LABEL_50:
              __break(1u);
              goto LABEL_51;
            }
          }

          v22 = v21;
          v23 = [v22 uuid];
          if (v23)
          {
            break;
          }

          v20 = (v20 + 1);
          if (v19 == a2)
          {
            goto LABEL_27;
          }
        }

        v24 = v23;
        v25 = sub_1D917820C();
        v46 = v26;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v53 = sub_1D8D4241C(0, *(v53 + 2) + 1, 1, v53);
        }

        v28 = *(v53 + 2);
        v27 = *(v53 + 3);
        if (v28 >= v27 >> 1)
        {
          v53 = sub_1D8D4241C((v27 > 1), v28 + 1, 1, v53);
        }

        *(v53 + 2) = v28 + 1;
        v29 = &v53[16 * v28];
        *(v29 + 4) = v25;
        *(v29 + 5) = v46;
      }

      while (v19 != a2);
    }

    else
    {
      v53 = MEMORY[0x1E69E7CC0];
    }

LABEL_27:
    v30 = MEMORY[0x1DA729BD0](v53, MEMORY[0x1E69E6158]);
    v32 = v31;

    v33 = sub_1D8CFA924(v30, v32, &v55);

    *(buf + 4) = v33;
    _os_log_impl(&dword_1D8CEC000, log, v15, "Marking episodes for purgeability: %s", buf, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v47);
    MEMORY[0x1DA72CB90](v47, -1, -1);
    MEMORY[0x1DA72CB90](buf, -1, -1);

    a2 = v52;
    v16 = v12 >> 62;
  }

  else
  {
  }

  if (v16)
  {
    v34 = sub_1D917935C();
    if (v34)
    {
LABEL_30:
      v35 = 0;
      v54 = MEMORY[0x1E69E7CC0];
      v5 = &selRef_allPlayedEpsWeight;
      do
      {
        v36 = v35;
        while (1)
        {
          if ((v12 & 0xC000000000000001) != 0)
          {
            v37 = MEMORY[0x1DA72AA90](v36, v12);
            v35 = v36 + 1;
            if (__OFADD__(v36, 1))
            {
              goto LABEL_47;
            }
          }

          else
          {
            if (v36 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_48;
            }

            v37 = *(v12 + 8 * v36 + 32);
            v35 = v36 + 1;
            if (__OFADD__(v36, 1))
            {
LABEL_47:
              __break(1u);
LABEL_48:
              __break(1u);
              goto LABEL_49;
            }
          }

          v38 = v37;
          v39 = [v38 assetURL];
          if (v39)
          {
            break;
          }

          ++v36;
          if (v35 == v34)
          {
            goto LABEL_54;
          }
        }

        v40 = v39;
        v41 = sub_1D917820C();
        loga = v42;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v54 = sub_1D8D4241C(0, *(v54 + 2) + 1, 1, v54);
        }

        v44 = *(v54 + 2);
        v43 = *(v54 + 3);
        if (v44 >= v43 >> 1)
        {
          v54 = sub_1D8D4241C((v43 > 1), v44 + 1, 1, v54);
        }

        *(v54 + 2) = v44 + 1;
        v45 = &v54[16 * v44];
        *(v45 + 4) = v41;
        *(v45 + 5) = loga;
        a2 = v52;
      }

      while (v35 != v34);
      goto LABEL_54;
    }
  }

  else
  {
    v34 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v34)
    {
      goto LABEL_30;
    }
  }

  v54 = MEMORY[0x1E69E7CC0];
LABEL_54:

  *a2 = v54;
}

void sub_1D8E5E7D4(uint64_t *a1)
{
  v64[1] = *MEMORY[0x1E69E9840];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v49 - v3;
  v5 = sub_1D9176C2C();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v62 = &v49 - v11;
  v12 = *a1;
  v13 = *(*a1 + 16);
  if (v13)
  {
    v14 = (v9 + 48);
    v59 = (v9 + 32);
    v61 = (v9 + 16);
    v58 = (v9 + 8);
    v53 = 3221768772;
    v15 = v12 + 40;
    v52 = *MEMORY[0x1E696A998];
    *&v10 = 136315394;
    v49 = v10;
    v51 = xmmword_1D9189080;
    v56 = (v9 + 48);
    v57 = v5;
    v60 = v7;
    v50 = v4;
    while (1)
    {

      sub_1D9176BFC();

      if ((*v14)(v4, 1, v5) != 1)
      {
        break;
      }

      sub_1D8D08A50(v4, &unk_1ECAB5910, &qword_1D9188C90);
LABEL_4:
      v15 += 16;
      if (!--v13)
      {
        return;
      }
    }

    (*v59)(v62, v4, v5);
    v16 = sub_1D9176B1C();
    v17 = objc_opt_self();
    v64[0] = 0;
    v18 = [v17 fileHandleForReadingFromURL:v16 error:v64];

    if (v18)
    {
      v19 = v64[0];
      v20 = [v18 fileDescriptor];
      v64[0] = 98310;
      v21 = ffsctl(v20, v53, v64, 0);
      if (!v21)
      {
        [v18 closeFile];

        v41 = *v58;
LABEL_17:
        v41(v62, v5);
        v7 = v60;
        goto LABEL_4;
      }

      v22 = v21;
      sub_1D8CF2154(0, &qword_1ECAAFC88, 0x1E696ABC0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6700, &unk_1D918C310);
      inited = swift_initStackObject();
      *(inited + 16) = v51;
      *(inited + 32) = sub_1D917820C();
      *(inited + 40) = v24;
      *(inited + 72) = v5;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 48));
      (*v61)(boxed_opaque_existential_0, v62, v5);
      v26 = sub_1D8E2696C(inited);
      swift_setDeallocating();
      sub_1D8D08A50(inited + 32, &qword_1ECAB42E8, &qword_1D9193650);
      v65.value._rawValue = v26;
      NSError.init(fsctlCode:userInfo:)(v27, v22, v65);
      v29 = v28;
      swift_willThrow();
      [v18 closeFile];
    }

    else
    {
      v30 = v64[0];
      v29 = sub_1D9176A6C();

      swift_willThrow();
    }

    if (qword_1EDCD0F18 != -1)
    {
      swift_once();
    }

    v31 = sub_1D917744C();
    __swift_project_value_buffer(v31, qword_1EDCD0F20);
    v32 = v57;
    (*v61)(v7, v62, v57);
    v33 = v29;
    v34 = sub_1D917741C();
    v35 = sub_1D9178CFC();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v64[0] = v55;
      *v36 = v49;
      v54 = v35;
      v37 = sub_1D9176BCC();
      v39 = v38;
      v40 = v7;
      v41 = *v58;
      (*v58)(v40, v32);
      v42 = sub_1D8CFA924(v37, v39, v64);

      *(v36 + 4) = v42;
      *(v36 + 12) = 2080;
      v63 = v29;
      v43 = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
      v44 = sub_1D917826C();
      v46 = sub_1D8CFA924(v44, v45, v64);

      *(v36 + 14) = v46;
      v4 = v50;
      _os_log_impl(&dword_1D8CEC000, v34, v54, "Failed to mark episode asset for purgeability (%s): %s", v36, 0x16u);
      v47 = v55;
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v47, -1, -1);
      MEMORY[0x1DA72CB90](v36, -1, -1);
    }

    else
    {

      v48 = v7;
      v41 = *v58;
      (*v58)(v48, v32);
    }

    v5 = v32;
    v14 = v56;
    goto LABEL_17;
  }
}

void markForPurgeability(_:)()
{
  v0 = sub_1D9176C2C();
  MEMORY[0x1EEE9AC00](v0);
  sub_1D8F4E4E8(0x8000);
}

void sub_1D8E5F1E4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = a4;
  v15[5] = a5;
  v15[6] = a3;
  v18[4] = a7;
  v18[5] = v15;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 1107296256;
  v18[2] = sub_1D8CF5F60;
  v18[3] = a8;
  v16 = _Block_copy(v18);

  v17 = a3;

  [v17 performBlock_];
  _Block_release(v16);
}

double sub_1D8E5F2E4(void (*a1)(void *), uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4, uint64_t a5)
{
  a3(v11, a5);
  v7 = v11[0];
  v6 = v11[1];
  v8 = v11[2];
  v9 = v12;
  v13 = 0;
  a1(v11);

  return sub_1D8E5F458(v7, v6, v8, v9, 0);
}

void sub_1D8E5F3B0(void (*a1)(void **), uint64_t a2, void (*a3)(void **__return_ptr, uint64_t), uint64_t a4, uint64_t a5)
{
  a3(&v7, a5);
  v6 = v7;
  v8 = 0;
  a1(&v7);
  sub_1D8D99898(v6, 0);
}

double sub_1D8E5F458(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  else
  {
  }

  return result;
}

uint64_t MediaCacheDeleteRemovalProcessor.isRunning.getter()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock((v1 + 20));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 20));
  return v2;
}

uint64_t MediaCacheDeleteRemovalProcessorDataSource.name.getter()
{
  v1 = *v0;

  return v1;
}

void MediaCacheDeleteRemovalProcessorDataSource.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

void __swiftcall MediaCacheDeleteRemovalProcessorDataSource.episodesPredicate()(NSPredicate *__return_ptr retstr)
{
  v2 = sub_1D9176FDC();
  v3 = *(v2 - 1);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D9176E3C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v1 + 32);
  sub_1D8CF2154(0, &qword_1EDCD5B00, off_1E85675C8);
  v11 = [v10 episodeLimitForKey_];
  sub_1D9176E0C();
  sub_1D9176FAC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB75D0, &qword_1D9189180);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1D918C190;
  *(v12 + 32) = _sSo9MTEpisodeC18PodcastsFoundationE43predicateForAutomaticallyDownloadedEpisodesSo11NSPredicateCyFZ_0();
  v13 = sub_1D8FCD114(v11, v9);
  v14 = [v13 NOT];

  *(v12 + 40) = v14;
  sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
  v15 = sub_1D91785DC();

  [objc_opt_self() andPredicateWithSubpredicates_];

  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v9, v6);
}

uint64_t sub_1D8E5F864(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v25 = MEMORY[0x1E69E7CC0];
  sub_1D8E358F8(0, v1, 0);
  v2 = v25;
  v4 = a1 + 56;
  result = sub_1D91792DC();
  v6 = result;
  v7 = 0;
  v22 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v9 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_21;
    }

    v23 = *(a1 + 36);
    v10 = (*(a1 + 48) + 16 * v6);
    v11 = v10[1];
    v24 = *v10;
    v12 = *(v25 + 16);
    v13 = *(v25 + 24);

    if (v12 >= v13 >> 1)
    {
      result = sub_1D8E358F8(v13 > 1, v12 + 1, 1);
    }

    *(v25 + 16) = v12 + 1;
    v14 = v25 + 24 * v12;
    *(v14 + 32) = v24;
    *(v14 + 40) = v11;
    *(v14 + 48) = 2;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_22;
    }

    v4 = a1 + 56;
    v15 = *(a1 + 56 + 8 * v9);
    if ((v15 & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    if (v23 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (v6 & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v19 = (a1 + 64 + 8 * v9);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          result = sub_1D8D9B144(v6, v23, 0);
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      result = sub_1D8D9B144(v6, v23, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
    if (v7 == v22)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t MediaCacheDeleteRemovalProcessorDelegate.didMatch(episodes:)(uint64_t a1)
{
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4B48, &unk_1D918C250);
  v36 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v27 = &v27 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D70, &unk_1D918BCE0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v27 - v5;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4B50, &unk_1D918C260);
  v35 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v28 = &v27 - v7;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4B68, &qword_1D918C488);
  v34 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v9 = &v27 - v8;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4B58, &unk_1D918C490);
  v33 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v11 = &v27 - v10;
  v13 = *v1;
  v12 = *(v1 + 8);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  v15 = swift_allocObject();
  v15[2] = v13;
  v15[3] = sub_1D8E6036C;
  v15[4] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4B60, &unk_1D918C270);
  swift_allocObject();

  v16 = v13;
  v17 = sub_1D9177A5C();
  v18 = sub_1D9178DBC();
  (*(*(v18 - 8) + 56))(v6, 1, 1, v18);
  v37 = v17;
  v38 = v12;
  sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  sub_1D8CF48EC(&unk_1EDCD0AB8, &qword_1ECAB4B60, &unk_1D918C270, MEMORY[0x1E695C038]);
  sub_1D8D02DF0();
  v19 = v27;
  sub_1D9177D3C();
  sub_1D8CF48EC(&qword_1ECAB0A10, &qword_1ECAB4B48, &unk_1D918C250, MEMORY[0x1E695BCB8]);
  v21 = v28;
  v20 = v29;
  sub_1D9177CEC();

  (*(v36 + 8))(v19, v20);
  sub_1D8D08A50(v6, &qword_1ECAB4D70, &unk_1D918BCE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4B70, &qword_1D918C4A0);
  sub_1D8CF48EC(&qword_1ECAB0430, &qword_1ECAB4B50, &unk_1D918C260, MEMORY[0x1E695BE98]);
  v22 = v31;
  sub_1D9177B9C();
  (*(v35 + 8))(v21, v22);
  v23 = v32;
  sub_1D917766C();
  (*(v34 + 8))(v9, v23);
  sub_1D8CF48EC(&qword_1ECAB0748, &qword_1ECAB4B58, &unk_1D918C490, MEMORY[0x1E695BD60]);
  v24 = v30;
  v25 = sub_1D9177B1C();
  (*(v33 + 8))(v11, v24);
  return v25;
}

void sub_1D8E60094(uint64_t a1@<X1>, char **a2@<X8>)
{
  v4 = sub_1D8E5F864(a1);
  v5 = v2;
  v6 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
  v7 = Array<A>.episodeCoreDataPredicate()(v4);

  [v6 setPredicate_];

  if (MEMORY[0x1E69E7CC0] >> 62)
  {
LABEL_24:
    if (sub_1D917935C())
    {
      sub_1D8CF2154(0, &qword_1EDCD09F0, 0x1E696AEB0);
      v20 = sub_1D91785DC();
      [v6 setSortDescriptors_];
    }
  }

  sub_1D8CF2154(0, &qword_1EDCD5B00, off_1E85675C8);
  v8 = v5;
  v5 = sub_1D917908C();

  if (!v8)
  {
    if (v5 >> 62)
    {
      v6 = sub_1D917935C();
      if (v6)
      {
LABEL_5:
        v9 = 0;
        v23 = MEMORY[0x1E69E7CC0];
        do
        {
          v10 = v9;
          while (1)
          {
            if ((v5 & 0xC000000000000001) != 0)
            {
              v11 = MEMORY[0x1DA72AA90](v10, v5);
              v9 = (v10 + 1);
              if (__OFADD__(v10, 1))
              {
                goto LABEL_22;
              }
            }

            else
            {
              if (v10 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_23;
              }

              v11 = *(v5 + 8 * v10 + 32);
              v9 = (v10 + 1);
              if (__OFADD__(v10, 1))
              {
LABEL_22:
                __break(1u);
LABEL_23:
                __break(1u);
                goto LABEL_24;
              }
            }

            v12 = v11;
            v13 = [v12 assetURL];
            if (v13)
            {
              break;
            }

            ++v10;
            if (v9 == v6)
            {
              goto LABEL_28;
            }
          }

          v22 = a2;
          v14 = v13;
          v15 = sub_1D917820C();
          v21 = v16;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v23 = sub_1D8D4241C(0, *(v23 + 2) + 1, 1, v23);
          }

          v18 = *(v23 + 2);
          v17 = *(v23 + 3);
          if (v18 >= v17 >> 1)
          {
            v23 = sub_1D8D4241C((v17 > 1), v18 + 1, 1, v23);
          }

          *(v23 + 2) = v18 + 1;
          v19 = &v23[16 * v18];
          a2 = v22;
          *(v19 + 4) = v15;
          *(v19 + 5) = v21;
        }

        while (v9 != v6);
        goto LABEL_28;
      }
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
        goto LABEL_5;
      }
    }

    v23 = MEMORY[0x1E69E7CC0];
LABEL_28:

    *a2 = v23;
  }
}

void sub_1D8E60388(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v22 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v22 - v4;
  v6 = sub_1D9176C2C();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v25 = &v22 - v11;
  v12 = *a1;
  v27 = *(*a1 + 16);
  if (v27)
  {
    v13 = 0;
    v26 = (v10 + 48);
    v24 = v10;
    v14 = (v10 + 32);
    v15 = v12 + 40;
    v16 = MEMORY[0x1E69E7CC0];
    v23 = v8;
    while (v13 < *(v12 + 16))
    {

      sub_1D9176BFC();

      if ((*v26)(v5, 1, v6) == 1)
      {
        sub_1D8D08A50(v5, &unk_1ECAB5910, &qword_1D9188C90);
      }

      else
      {
        v17 = *v14;
        v18 = v25;
        (*v14)(v25, v5, v6);
        v17(v8, v18, v6);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_1D8ECC9D4(0, v16[2] + 1, 1, v16);
        }

        v20 = v16[2];
        v19 = v16[3];
        if (v20 >= v19 >> 1)
        {
          v16 = sub_1D8ECC9D4((v19 > 1), v20 + 1, 1, v16);
        }

        v16[2] = v20 + 1;
        v21 = v16 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v20;
        v8 = v23;
        v17(v21, v23, v6);
      }

      ++v13;
      v15 += 16;
      if (v27 == v13)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
LABEL_13:
    *v22 = v16;
  }
}

void sub_1D8E6065C(uint64_t a1)
{
  v2 = sub_1D9176C2C();
  v3 = *(v2 - 8);
  v4.n128_f64[0] = MEMORY[0x1EEE9AC00](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*a1 + 16);
  if (v7)
  {
    v10 = *(v3 + 16);
    v8 = v3 + 16;
    v9 = v10;
    v11 = *a1 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v12 = *(v8 + 56);
    do
    {
      v9(v6, v11, v2, v4);
      sub_1D8E6077C(v6);
      (*(v8 - 8))(v6, v2);
      v11 += v12;
      --v7;
    }

    while (v7);
  }
}

void sub_1D8E6077C(uint64_t a1)
{
  v2 = sub_1D9176C2C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v16 - v5;
  sub_1D8F4E764();
  if (qword_1EDCD0F18 != -1)
  {
    swift_once();
  }

  v7 = sub_1D917744C();
  __swift_project_value_buffer(v7, qword_1EDCD0F20);
  (*(v3 + 16))(v6, a1, v2);
  v8 = sub_1D917741C();
  v9 = sub_1D9178CEC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136315138;
    sub_1D8E3E9A0();
    v12 = sub_1D9179A4C();
    v14 = v13;
    (*(v3 + 8))(v6, v2);
    v15 = sub_1D8CFA924(v12, v14, &v17);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_1D8CEC000, v8, v9, "Removed purgeability for '%s'", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x1DA72CB90](v11, -1, -1);
    MEMORY[0x1DA72CB90](v10, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }
}

uint64_t sub_1D8E60EB0()
{
  v0 = type metadata accessor for CacheDeleteNotifications.CacheDeleteEvent(0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v9 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4BA0, &qword_1D918C568);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4BA8, &qword_1D918C570);
  (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4B98, &unk_1D918C558);
  sub_1D91788AC();
  return (*(v4 + 8))(v6, v3);
}

id CacheDeleteNotifications.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CacheDeleteNotifications.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CacheDeleteNotifications(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D8E61404()
{
  v1 = *v0;
  sub_1D8D94C08();
}

uint64_t _s18PodcastsFoundation24CacheDeleteNotificationsC0cD5EventO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9176E3C();
  v33 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v32 = &v30 - v8;
  v9 = type metadata accessor for CacheDeleteNotifications.CacheDeleteEvent(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4C28, &unk_1D918C6D0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v30 - v13;
  v16 = (&v30 + *(v15 + 56) - v13);
  sub_1D8E62200(a1, &v30 - v13);
  sub_1D8E62200(a2, v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4BA8, &qword_1D918C570);
  v18 = *(*(v17 - 8) + 48);
  if (v18(v14, 1, v17) != 1)
  {
    sub_1D8E62200(v14, v11);
    v20 = *(v11 + 1);
    v31 = *v11;
    v21 = *(v17 + 48);
    if (v18(v16, 1, v17) != 1)
    {
      v22 = v16[1];
      v30 = *v16;
      v23 = *(v33 + 32);
      v23(v32, &v11[v21], v4);
      v23(v6, v16 + v21, v4);
      if (v31 == v30 && v20 == v22)
      {
      }

      else
      {
        v25 = sub_1D9179ACC();

        if ((v25 & 1) == 0)
        {
          v26 = *(v33 + 8);
          v26(v6, v4);
          v26(v32, v4);
          sub_1D8E62264(v14);
          goto LABEL_7;
        }
      }

      v27 = v32;
      v19 = sub_1D9176DEC();
      v28 = *(v33 + 8);
      v28(v6, v4);
      v28(v27, v4);
      sub_1D8E62264(v14);
      return v19 & 1;
    }

    (*(v33 + 8))(&v11[v21], v4);

LABEL_6:
    sub_1D8D08A50(v14, &qword_1ECAB4C28, &unk_1D918C6D0);
LABEL_7:
    v19 = 0;
    return v19 & 1;
  }

  if (v18(v16, 1, v17) != 1)
  {
    goto LABEL_6;
  }

  sub_1D8E62264(v14);
  v19 = 1;
  return v19 & 1;
}

uint64_t _s18PodcastsFoundation24CacheDeleteNotificationsC0cD5EventO1loiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9176E3C();
  v52 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v49 = &v45 - v8;
  v9 = type metadata accessor for CacheDeleteNotifications.CacheDeleteEvent(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v45 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v45 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4C28, &unk_1D918C6D0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v45 - v19;
  v22 = (&v45 + *(v21 + 56) - v19);
  v50 = a1;
  sub_1D8E62200(a1, &v45 - v19);
  v51 = a2;
  sub_1D8E62200(a2, v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4BA8, &qword_1D918C570);
  v24 = *(*(v23 - 8) + 48);
  if (v24(v20, 1, v23) == 1)
  {
    if (v24(v22, 1, v23) == 1)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v47 = v6;
    v25 = v4;
    sub_1D8E62200(v20, v17);
    v26 = v17[1];
    v46 = *v17;
    v48 = v26;
    v27 = *(v23 + 48);
    if (v24(v22, 1, v23) != 1)
    {
      v32 = *v22;
      v33 = v22[1];
      v34 = *(v52 + 32);
      v35 = v17 + v27;
      v36 = v49;
      v34(v49, v35, v25);
      v37 = v25;
      v38 = v47;
      v34(v47, v22 + v27, v37);
      v39 = v46 == v32 && v48 == v33;
      if (v39 || (sub_1D9179ACC() & 1) != 0)
      {

        if (sub_1D9176DEC())
        {
          v40 = v38;
          v41 = *(v52 + 8);
          v41(v40, v37);
          v41(v36, v37);
LABEL_18:
          sub_1D8E62264(v20);
          v31 = 0;
          return v31 & 1;
        }

        v31 = sub_1D9176DAC();
      }

      else
      {
        v31 = sub_1D9179ACC();
      }

      v42 = v38;
      v43 = *(v52 + 8);
      v43(v42, v37);
      v43(v36, v37);
      sub_1D8E62264(v20);
      return v31 & 1;
    }

    v28 = v17 + v27;
    v4 = v25;
    (*(v52 + 8))(v28, v25);
  }

  sub_1D8E62200(v50, v14);
  v29 = 1;
  if (v24(v14, 1, v23) != 1)
  {

    (*(v52 + 8))(&v14[*(v23 + 48)], v4);
    v29 = 0;
  }

  sub_1D8E62200(v51, v11);
  v30 = 1;
  if (v24(v11, 1, v23) != 1)
  {

    (*(v52 + 8))(&v11[*(v23 + 48)], v4);
    v30 = 0;
  }

  v31 = v29 < v30;
  sub_1D8D08A50(v20, &qword_1ECAB4C28, &unk_1D918C6D0);
  return v31 & 1;
}

uint64_t sub_1D8E61CE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v29 - v9;
  v11 = type metadata accessor for CacheDeleteNotifications.CacheDeleteEvent(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4B98, &unk_1D918C558);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v29 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4BA0, &qword_1D918C568);
  v31 = *(v18 - 8);
  v32 = v18;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v30 = &v29 - v20;
  v33 = v15;
  v34 = v14;
  (*(v15 + 16))(v17, v4 + OBJC_IVAR____TtC18PodcastsFoundation24CacheDeleteNotifications_continuation, v14, v19);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4BA8, &qword_1D918C570);
  v22 = *(v21 + 48);
  *v13 = a1;
  *(v13 + 1) = a2;
  sub_1D8D088B4(a3, v10, &qword_1ECAB75C0, &unk_1D9188A50);
  v23 = sub_1D9176E3C();
  v24 = *(v23 - 8);
  v25 = *(v24 + 48);
  if (v25(v10, 1, v23) == 1)
  {

    sub_1D9176E0C();
    if (v25(v10, 1, v23) != 1)
    {
      sub_1D8D08A50(v10, &qword_1ECAB75C0, &unk_1D9188A50);
    }
  }

  else
  {
    (*(v24 + 32))(&v13[v22], v10, v23);
  }

  (*(*(v21 - 8) + 56))(v13, 0, 1, v21);
  v26 = v30;
  v27 = v34;
  sub_1D91788AC();
  (*(v33 + 8))(v17, v27);
  return (*(v31 + 8))(v26, v32);
}

unint64_t sub_1D8E62090()
{
  result = qword_1ECAB4BB0;
  if (!qword_1ECAB4BB0)
  {
    type metadata accessor for CacheDeleteNotifications.CacheDeleteEvent(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB4BB0);
  }

  return result;
}

unint64_t sub_1D8E620EC()
{
  result = qword_1ECAB4BB8;
  if (!qword_1ECAB4BB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB4BC0, &qword_1D918C5E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB4BB8);
  }

  return result;
}

uint64_t sub_1D8E62200(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CacheDeleteNotifications.CacheDeleteEvent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8E62264(uint64_t a1)
{
  v2 = type metadata accessor for CacheDeleteNotifications.CacheDeleteEvent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static CacheDeleteUrgency.from(purgeability:)(uint64_t a1)
{
  if ((a1 & 0x100000000) != 0)
  {
    return 0;
  }

  if (a1 > 2047)
  {
    if (a1 == 2048)
    {
      return 3;
    }

    if (a1 == 0x8000)
    {
      return 4;
    }
  }

  else
  {
    if (a1 == 512)
    {
      return 1;
    }

    if (a1 == 1024)
    {
      return 2;
    }
  }

  result = sub_1D91796DC();
  __break(1u);
  return result;
}

uint64_t CacheDeleteUrgency.rawValue.getter(unsigned __int8 a1)
{
  v1 = 1701736302;
  v2 = 0x6D756964656DLL;
  v3 = 1751607656;
  if (a1 != 3)
  {
    v3 = 0xD000000000000015;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 7827308;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D8E623F8(_BYTE *a1, _BYTE *a2)
{
  v2 = 1701736302;
  v3 = *a1;
  v4 = *a2;
  if (v3 <= 1)
  {
    if (*a1)
    {
      v7 = 7827308;
    }

    else
    {
      v7 = 1701736302;
    }

    if (v3)
    {
      v8 = 0xE300000000000000;
    }

    else
    {
      v8 = 0xE400000000000000;
    }
  }

  else
  {
    v5 = 0xE400000000000000;
    v6 = 1751607656;
    if (v3 != 3)
    {
      v6 = 0xD000000000000015;
      v5 = 0x80000001D91C7950;
    }

    if (v3 == 2)
    {
      v7 = 0x6D756964656DLL;
    }

    else
    {
      v7 = v6;
    }

    if (v3 == 2)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v8 = v5;
    }
  }

  v9 = 0xE400000000000000;
  v10 = 0x6D756964656DLL;
  v11 = 1751607656;
  v12 = 0x80000001D91C7950;
  if (v4 == 3)
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xD000000000000015;
  }

  if (v4 == 2)
  {
    v12 = 0xE600000000000000;
  }

  else
  {
    v10 = v11;
  }

  if (*a2)
  {
    v2 = 7827308;
    v9 = 0xE300000000000000;
  }

  if (*a2 <= 1u)
  {
    v13 = v2;
  }

  else
  {
    v13 = v10;
  }

  if (*a2 <= 1u)
  {
    v14 = v9;
  }

  else
  {
    v14 = v12;
  }

  if (v7 == v13 && v8 == v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_1D9179ACC();
  }

  return v15 & 1;
}

uint64_t sub_1D8E6254C()
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

double sub_1D8E62618(uint64_t a1)
{
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return result;
}

uint64_t sub_1D8E626D0(uint64_t a1)
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

unint64_t sub_1D8E62798@<X0>(Swift::String *a1@<X0>, PodcastsFoundation::CacheDeleteUrgency_optional *a2@<X8>)
{
  result = _s18PodcastsFoundation18CacheDeleteUrgencyO8rawValueACSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

void sub_1D8E627C8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701736302;
  v5 = 0xE600000000000000;
  v6 = 0x6D756964656DLL;
  v7 = 0xE400000000000000;
  v8 = 1751607656;
  if (v2 != 3)
  {
    v8 = 0xD000000000000015;
    v7 = 0x80000001D91C7950;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 7827308;
    v3 = 0xE300000000000000;
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

unint64_t _s18PodcastsFoundation18CacheDeleteUrgencyO8rawValueACSgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D917980C();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1D8E628A0()
{
  result = qword_1ECAB4C30;
  if (!qword_1ECAB4C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB4C30);
  }

  return result;
}

uint64_t sub_1D8E62904(unint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_35;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_5:
  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    return v6;
  }

  v21 = MEMORY[0x1E69E7CC0];
  result = sub_1D8D4214C(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v6 = v21;
    v9 = (a1 >> 59) & 1;
    if ((a2 & 0x1000000000000000) == 0)
    {
      LOBYTE(v9) = 1;
    }

    v10 = 4 << v9;
    v11 = a1 & 0xFFFFFFFFFFFFLL;
    if ((a2 & 0x2000000000000000) != 0)
    {
      v11 = v4;
    }

    v19 = v10;
    v20 = v11;
    v12 = 15;
    while (1)
    {
      v13 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        v5 = sub_1D917834C();
        goto LABEL_5;
      }

      v14 = v12;
      if ((v12 & 0xC) == v10)
      {
        v14 = sub_1D8FF6C10(v12, a1, a2);
        v10 = v19;
      }

      if (v20 <= v14 >> 16)
      {
        goto LABEL_33;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        sub_1D917837C();
      }

      else
      {
        if (a2 & 0x2000000000000000 | a1 & 0x1000000000000000)
        {
          goto LABEL_23;
        }

        sub_1D917957C();
      }

      v10 = v19;
LABEL_23:
      v16 = *(v21 + 16);
      v15 = *(v21 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_1D8D4214C(v15 > 1, v16 + 1, 1);
        v10 = v19;
      }

      *(v21 + 16) = v16 + 1;
      *(v21 + 8 * v16 + 32) = 1;
      if ((v12 & 0xC) == v10)
      {
        v18 = sub_1D8FF6C10(v12, a1, a2);
        v10 = v19;
        v12 = v18;
        v4 = v5;
        if ((a2 & 0x1000000000000000) == 0)
        {
LABEL_12:
          v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
          goto LABEL_13;
        }
      }

      else
      {
        v4 = v5;
        if ((a2 & 0x1000000000000000) == 0)
        {
          goto LABEL_12;
        }
      }

      if (v20 <= v12 >> 16)
      {
        goto LABEL_34;
      }

      v17 = sub_1D917835C();
      v10 = v19;
      v12 = v17;
LABEL_13:
      ++v8;
      if (v13 == v4)
      {
        return v6;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t String.inMemorySize.getter(unint64_t a1, unint64_t a2)
{
  result = sub_1D8E62904(a1, a2);
  v3 = *(result + 16);
  if (v3)
  {
    v4 = 0;
    v5 = 32;
    do
    {
      v6 = *(result + v5);
      v7 = __OFADD__(v4, v6);
      v4 += v6;
      if (v7)
      {
        __break(1u);
        return result;
      }

      v5 += 8;
      --v3;
    }

    while (v3);

    if ((v4 & 0x8000000000000000) == 0)
    {
      return v4;
    }

    __break(1u);
  }

  return 0;
}

uint64_t Data.inMemorySize.getter(uint64_t result, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      return 0;
    }

    v4 = *(result + 16);
    v3 = *(result + 24);
    result = v3 - v4;
    if (!__OFSUB__(v3, v4))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v2)
  {
    return BYTE6(a2);
  }

  if (__OFSUB__(HIDWORD(result), result))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  result = HIDWORD(result) - result;
LABEL_10:
  if (result < 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  return result;
}

void sub_1D8E62C14()
{
  v1 = *v0;
  v2 = v0[1] >> 62;
  if (v2 <= 1)
  {
    if (!v2)
    {
      return;
    }

    goto LABEL_8;
  }

  if (v2 == 2)
  {
    v4 = v1 + 16;
    v1 = *(v1 + 16);
    v3 = *(v4 + 8);
    v5 = v3 - v1;
    if (!__OFSUB__(v3, v1))
    {
      goto LABEL_10;
    }

    __break(1u);
LABEL_8:
    v6 = __OFSUB__(HIDWORD(v1), v1);
    v7 = HIDWORD(v1) - v1;
    if (v6)
    {
      goto LABEL_14;
    }

    v5 = v7;
LABEL_10:
    if ((v5 & 0x8000000000000000) == 0)
    {
      return;
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }
}

uint64_t Array<A>.inMemorySize.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D91786FC();
  swift_getWitnessTable();
  sub_1D917849C();
  return v4;
}

uint64_t sub_1D8E62D2C(void *a1)
{
  result = (*(*(v1 + 24) + 8))(*(v1 + 16), *(v1 + 24));
  if (__CFADD__(*a1, result))
  {
    __break(1u);
  }

  else
  {
    *a1 += result;
  }

  return result;
}

uint64_t Dictionary<>.inMemorySize.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1D91780DC();
  swift_getWitnessTable();
  sub_1D917849C();
  return v6;
}

uint64_t sub_1D8E62E48(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getTupleTypeMetadata2();
  result = (*(a6 + 8))(a4, a6);
  if (__CFADD__(*a1, result))
  {
    __break(1u);
  }

  else
  {
    *a1 += result;
  }

  return result;
}

uint64_t sub_1D8E62F30(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D8E62F88();
  }

  return result;
}

void sub_1D8E62F88()
{
  v1 = v0[2];
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 96);
  v4[0] = *(*v0 + 80);
  v4[1] = v3;
  v5 = v2;
  type metadata accessor for InMemoryAssetCache.SizedStore(0, v4);
  sub_1D8D056BC(sub_1D8E639D0, v0, v1);
}

uint64_t InMemoryAssetCache.currentSize.getter()
{
  v1 = *v0;
  v2 = v0[2];
  v5 = *(*v0 + 80);
  v6 = v1[11];
  v7 = v1[12];
  v8 = v1[13];
  v9 = v1[14];
  v10[0] = v5;
  v10[1] = v6;
  v10[2] = v7;
  v10[3] = v8;
  v10[4] = v9;
  type metadata accessor for InMemoryAssetCache.SizedStore(0, v10);
  sub_1D8D056BC(sub_1D8E638C8, &v4, v2);
  return v10[0];
}

uint64_t InMemoryAssetCache.deinit()
{

  return v0;
}

uint64_t InMemoryAssetCache.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t InMemoryAssetCache.containsAsset(for:)(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[2];
  v6 = *(*v1 + 80);
  v7 = v2[11];
  v8 = v2[12];
  v9 = v2[13];
  v10 = v2[14];
  v11 = a1;
  v12[0] = v6;
  v12[1] = v7;
  v12[2] = v8;
  v12[3] = v9;
  v12[4] = v10;
  type metadata accessor for InMemoryAssetCache.SizedStore(0, v12);
  sub_1D8D056BC(sub_1D8E638D4, &v5, v3);
  return LOBYTE(v12[0]);
}

void sub_1D8E632F8(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, _BYTE *a7@<X8>)
{
  v17 = a1;
  v19 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v17 - v13;
  v20[0] = a2;
  v20[1] = a3;
  v20[2] = a4;
  v20[3] = a5;
  v20[4] = a6;
  type metadata accessor for InMemoryAssetCache.Record(0, v20);
  nullsub_1();
  v20[0] = v15;
  v16 = *(a4 + 16);

  v16(a2, a4);
  sub_1D917809C();
  swift_getWitnessTable();
  LOBYTE(a3) = sub_1D917850C();
  (*(v18 + 8))(v14, AssociatedTypeWitness);

  *v19 = a3 & 1;
}

void InMemoryAssetCache.invalidate(at:)(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[2];
  v5 = *(*v1 + 80);
  v6 = v2[11];
  v7 = v2[12];
  v8 = v2[13];
  v9 = v2[14];
  v10 = a1;
  v11[0] = v5;
  v11[1] = v6;
  v11[2] = v7;
  v11[3] = v8;
  v11[4] = v9;
  type metadata accessor for InMemoryAssetCache.SizedStore(0, v11);
  sub_1D8D056BC(sub_1D8E638F8, &v4, v3);
}

uint64_t sub_1D8E635C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v24 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v14 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v16 = &v23 - v15;
  (*(a5 + 16))(a3, a5, v14);
  v25[0] = a3;
  v25[1] = a4;
  v25[2] = a5;
  v25[3] = a6;
  v25[4] = a7;
  type metadata accessor for InMemoryAssetCache.Record(255, v25);
  v17 = v24;
  sub_1D91780DC();
  sub_1D917807C();
  (*(v13 + 8))(v16, AssociatedTypeWitness);
  result = v26;
  if (v26)
  {
    v19 = *(v26 + *(*v26 + 128));

    v20 = *(v17 + 8);
    v21 = v20 >= v19;
    v22 = v20 - v19;
    if (v21)
    {
      *(v17 + 8) = v22;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1D8E637B0()
{
  (*(*(*(*v0 + 88) - 8) + 8))(v0 + *(*v0 + 120));
  v1 = *(*v0 + 136);
  v2 = sub_1D9176E3C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1D8E63874()
{
  sub_1D8E637B0();

  return swift_deallocClassInstance();
}

uint64_t sub_1D8E63948(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1D8E63990(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_1D8E63A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getAssociatedTypeWitness();
  v13[0] = a2;
  v13[1] = a3;
  v13[2] = a4;
  v13[3] = a5;
  v13[4] = a6;
  type metadata accessor for InMemoryAssetCache.Record(255, v13);
  sub_1D91780DC();
  result = sub_1D91780CC();
  *(a1 + 8) = 0;
  return result;
}

uint64_t SHSignature.inMemorySize.getter()
{
  v1 = [v0 dataRepresentation];
  v2 = sub_1D9176C8C();
  v4 = v3;

  v5 = v4;
  v6 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (!v6)
    {
      sub_1D8D7567C(v2, v4);
      return BYTE6(v4);
    }

    goto LABEL_8;
  }

  if (v6 != 2)
  {
    goto LABEL_12;
  }

  v9 = *(v2 + 16);
  v8 = *(v2 + 24);
  sub_1D8D7567C(v2, v5);
  result = v8 - v9;
  if (__OFSUB__(v8, v9))
  {
    __break(1u);
LABEL_8:
    result = sub_1D8D7567C(v2, v5);
    if (__OFSUB__(HIDWORD(v2), v2))
    {
      __break(1u);
      return result;
    }

    result = HIDWORD(v2) - v2;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    return result;
  }

  __break(1u);
LABEL_12:
  sub_1D8D7567C(v2, v5);
  return 0;
}

PodcastsFoundation::FileFormat_optional __swiftcall FileFormat.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D917980C();

  v5 = 9;
  if (v3 < 9)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t FileFormat.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v6 = 6778480;
    v7 = 1734701162;
    if (v1 != 2)
    {
      v7 = 1667851624;
    }

    if (*v0)
    {
      v6 = 6778986;
    }

    if (*v0 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0x69736D617A616873;
    v3 = 1819112564;
    if (v1 != 7)
    {
      v3 = 7105912;
    }

    if (v1 != 6)
    {
      v2 = v3;
    }

    v4 = 7633012;
    if (v1 != 4)
    {
      v4 = 0x7473696C70;
    }

    if (*v0 <= 5u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1D8E63E00()
{
  v1 = *v0;
  sub_1D9179DBC();
  sub_1D8ECAD60(v3, v1);
  return sub_1D9179E1C();
}

uint64_t sub_1D8E63E50(uint64_t a1)
{
  v2 = *v1;
  sub_1D9179DBC();
  sub_1D8ECAD60(v4, v2);
  return sub_1D9179E1C();
}

uint64_t sub_1D8E63EA0@<X0>(uint64_t *a1@<X8>)
{
  result = FileFormat.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t NetworkTaskPriority.description.getter()
{
  v1 = 0x756F72676B636142;
  v2 = 0x74696E4972657355;
  if (*v0 != 2)
  {
    v2 = 0x65746E4972657355;
  }

  if (*v0)
  {
    v1 = 0x7974696C697455;
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

uint64_t NetworkTaskPriority.debugDescription.getter()
{
  v1 = *v0;
  sub_1D917946C();
  MEMORY[0x1DA7298F0](0xD000000000000014, 0x80000001D91CA7A0);
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      MEMORY[0x1DA7298F0](0x74696E4972657355, 0xED00006465746169);
    }

    else
    {
      MEMORY[0x1DA7298F0](0x65746E4972657355, 0xEF65766974636172);
    }
  }

  else if (v1)
  {
    MEMORY[0x1DA7298F0](0x7974696C697455, 0xE700000000000000);
  }

  else
  {
    MEMORY[0x1DA7298F0](0x756F72676B636142, 0xEA0000000000646ELL);
  }

  MEMORY[0x1DA7298F0](8236, 0xE200000000000000);
  sub_1D9178A7C();
  MEMORY[0x1DA7298F0](62, 0xE100000000000000);
  return 0;
}

uint64_t static NetworkTaskPriority.dispatchQueuePriority()@<X0>(char *a1@<X8>)
{
  result = qos_class_self();
  if (result <= 20)
  {
    if (result == 9)
    {
      v3 = 0;
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (result == 21)
  {
    goto LABEL_8;
  }

  if (result == 33)
  {
    v3 = 3;
    goto LABEL_9;
  }

  if (result != 25)
  {
LABEL_8:
    v3 = 1;
    goto LABEL_9;
  }

  v3 = 2;
LABEL_9:
  *a1 = v3;
  return result;
}

PodcastsFoundation::NetworkTaskPriority_optional __swiftcall NetworkTaskPriority.init(rawValue:)(Swift::Float rawValue)
{
  if (rawValue == 0.4)
  {
    *v1 = 0;
  }

  else if (rawValue == 0.6)
  {
    *v1 = 1;
  }

  else
  {
    if (rawValue == 1.0)
    {
      v2 = 3;
    }

    else
    {
      v2 = 4;
    }

    if (rawValue == 0.8)
    {
      v3 = 2;
    }

    else
    {
      v3 = v2;
    }

    *v1 = v3;
  }

  return result;
}

float sub_1D8E642BC@<S0>(float *a1@<X8>)
{
  result = flt_1D918CD50[*v1];
  *a1 = result;
  return result;
}

uint64_t sub_1D8E64394()
{
  v1 = 0x756F72676B636142;
  v2 = 0x74696E4972657355;
  if (*v0 != 2)
  {
    v2 = 0x65746E4972657355;
  }

  if (*v0)
  {
    v1 = 0x7974696C697455;
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

unint64_t sub_1D8E644E4()
{
  result = qword_1ECAB4C40;
  if (!qword_1ECAB4C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB4C40);
  }

  return result;
}

unint64_t sub_1D8E6453C()
{
  result = qword_1ECAB4C48;
  if (!qword_1ECAB4C48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB4C50, &qword_1D918CB18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB4C48);
  }

  return result;
}

unint64_t sub_1D8E645A4()
{
  result = qword_1ECAB4C58;
  if (!qword_1ECAB4C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB4C58);
  }

  return result;
}

unint64_t sub_1D8E646BC()
{
  result = qword_1ECAB1E30;
  if (!qword_1ECAB1E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1E30);
  }

  return result;
}

unint64_t sub_1D8E64710()
{
  result = qword_1ECAB2B48;
  if (!qword_1ECAB2B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2B48);
  }

  return result;
}

uint64_t DiskAssetCache<>.store(asset:at:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v44 = a3;
  v47 = a2;
  v52 = *v4;
  v7 = v52;
  v56 = sub_1D9177E0C();
  v58 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v54 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_1D9177E9C();
  v55 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v53 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = v7;
  v10 = *(v7 + 80);
  v60 = *(v10 - 8);
  v48 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v45 = &v40 - v12;
  v61 = *(v7 + 88);
  v13 = *(v61 - 8);
  v46 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v40 - v15;
  v43 = &v40 - v15;
  v59 = sub_1D9176C2C();
  v41 = *(v59 - 8);
  v17 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v42 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v40 - v19;
  v51 = &v40 - v19;
  v21 = a3;
  v22 = v47;
  FileBasedAssetLocation.fileURL(in:)(v4 + qword_1EDCDE890, v10, v21, &v40 - v19);
  InMemoryAssetCache.store(asset:at:)(a1, v22);
  v50 = *(v4 + qword_1EDCD6AC0);
  (*(v13 + 16))(v16, a1, v61);
  v23 = v60;
  v24 = v45;
  (*(v60 + 16))(v45, v22, v10);
  v25 = v41;
  (*(v41 + 16))(&v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v20, v59);
  v26 = (*(v13 + 80) + 72) & ~*(v13 + 80);
  v27 = (v46 + *(v23 + 80) + v26) & ~*(v23 + 80);
  v28 = v25;
  v29 = (v48 + *(v25 + 80) + v27) & ~*(v25 + 80);
  v30 = swift_allocObject();
  v31 = v49;
  v32 = v61;
  *(v30 + 16) = v10;
  *(v30 + 24) = v32;
  *(v30 + 32) = v44;
  *(v30 + 40) = *(v52 + 96);
  *(v30 + 56) = *(v31 + 112);
  *(v30 + 64) = v4;
  (*(v13 + 32))(v30 + v26, v43);
  (*(v60 + 32))(v30 + v27, v24, v10);
  v33 = v28;
  v34 = v59;
  (*(v28 + 32))(v30 + v29, v42, v59);
  aBlock[4] = sub_1D8E65778;
  aBlock[5] = v30;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_5;
  v35 = _Block_copy(aBlock);

  v36 = v53;
  sub_1D9177E4C();
  v62 = MEMORY[0x1E69E7CC0];
  sub_1D8CFBB68(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8D1D5B0();
  v37 = v54;
  v38 = v56;
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v36, v37, v35);
  _Block_release(v35);
  (*(v58 + 8))(v37, v38);
  (*(v55 + 8))(v36, v57);
  (*(v33 + 8))(v51, v34);
}

uint64_t DiskAssetCache<>.invalidate(at:)(void *a1, uint64_t a2)
{
  v56[1] = *MEMORY[0x1E69E9840];
  v5 = *(*v2 + 80);
  v52 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v51 = &v47[-v6];
  v7 = sub_1D9176C2C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v53 = &v47[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v47[-v11];
  v49 = a2;
  v50 = a1;
  FileBasedAssetLocation.fileURL(in:)(v2 + qword_1EDCDE890, v5, a2, &v47[-v11]);
  v13 = objc_opt_self();
  v14 = [v13 defaultManager];
  sub_1D9176BCC();
  v15 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v16 = [v14 fileExistsAtPath_];

  if (!v16)
  {
    return (*(v8 + 8))(v12, v7);
  }

  v54 = v7;
  v17 = [v13 defaultManager];
  v18 = sub_1D9176B1C();
  v56[0] = 0;
  v19 = [v17 removeItemAtURL:v18 error:v56];

  if (v19)
  {
    v20 = *(v8 + 8);
    v21 = v56[0];
    return v20(v12, v54);
  }

  else
  {
    v23 = v56[0];
    v24 = sub_1D9176A6C();

    v55 = v24;
    swift_willThrow();
    if (qword_1EDCD5E68 != -1)
    {
      swift_once();
    }

    v25 = sub_1D917744C();
    __swift_project_value_buffer(v25, qword_1EDCD5E70);
    v27 = v51;
    v26 = v52;
    (*(v52 + 16))(v51, v50, v5);
    v29 = v53;
    v28 = v54;
    (*(v8 + 16))(v53, v12, v54);
    v30 = sub_1D917741C();
    v31 = sub_1D9178CFC();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v56[0] = v50;
      *v32 = 136315394;
      v33 = *(v49 + 16);
      v48 = v31;
      v34 = v33(v5);
      v36 = v35;
      (*(v26 + 8))(v27, v5);
      v37 = sub_1D8CFA924(v34, v36, v56);

      *(v32 + 4) = v37;
      *(v32 + 12) = 2080;
      sub_1D8CFBB68(&qword_1ECAB2C88, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      v38 = v53;
      v39 = sub_1D9179A4C();
      v41 = v40;
      v42 = *(v8 + 8);
      v42(v38, v54);
      v43 = sub_1D8CFA924(v39, v41, v56);

      *(v32 + 14) = v43;
      v28 = v54;
      _os_log_impl(&dword_1D8CEC000, v30, v48, "Error deleting file for key %s, url: %s", v32, 0x16u);
      v44 = v50;
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v44, -1, -1);
      MEMORY[0x1DA72CB90](v32, -1, -1);
    }

    else
    {

      v45 = v26;
      v42 = *(v8 + 8);
      v42(v29, v28);
      (*(v45 + 8))(v27, v5);
    }

    sub_1D8E66024();
    swift_allocError();
    *v46 = 1;
    swift_willThrow();

    return (v42)(v12, v28);
  }
}

uint64_t DiskAssetCacheError.hashValue.getter()
{
  v1 = *v0;
  sub_1D9179DBC();
  MEMORY[0x1DA72B390](v1);
  return sub_1D9179E1C();
}

uint64_t DiskAssetCache.cacheDirectory.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_1EDCDE890;
  v4 = sub_1D9176C2C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DiskAssetCache.deinit()
{
  v1 = qword_1EDCDE890;
  v2 = sub_1D9176C2C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t DiskAssetCache.__deallocating_deinit()
{
  DiskAssetCache.deinit();

  return swift_deallocClassInstance();
}

void sub_1D8E65778()
{
  v1 = v0[4];
  v2 = (*(*(v0[3] - 8) + 80) + 72) & ~*(*(v0[3] - 8) + 80);
  v3 = *(v0[2] - 8);
  v4 = (v2 + *(*(v0[3] - 8) + 64) + *(v3 + 80)) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_1D9176C2C() - 8);
  v7 = v0[8];
  v8 = v0 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  sub_1D8E656EC(v7, v0 + v2, v0 + v4, v8, v1);
}

uint64_t sub_1D8E658A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v27 = a4;
  v28 = a2;
  v26 = a1;
  v6 = *(*v4 + 80);
  v24 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v25 = &v21 - v7;
  v8 = sub_1D9176C2C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v23 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - v12;
  sub_1D9176B5C();
  v14 = [objc_opt_self() defaultManager];
  sub_1D9176BCC();
  v15 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v16 = [v14 fileExistsAtPath_];

  if ((v16 & 1) == 0)
  {
    NSFileManager.createDirectory(url:createIntermediates:)(v13, 1);
  }

  v22 = *(v9 + 8);
  v22(v13, v8);
  v17 = (*(v27 + 32))(v26, v6);
  v19 = v18;
  sub_1D9176CAC();
  if (*(v5 + qword_1EDCDE888 + 4) != 1)
  {
    sub_1D8F4E4E8(*(v5 + qword_1EDCDE888));
  }

  return sub_1D8D7567C(v17, v19);
}

uint64_t sub_1D8E65FEC(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

unint64_t sub_1D8E66024()
{
  result = qword_1ECAB4C68;
  if (!qword_1ECAB4C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB4C68);
  }

  return result;
}

unint64_t sub_1D8E6607C()
{
  result = qword_1ECAB4C70;
  if (!qword_1ECAB4C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB4C70);
  }

  return result;
}

void *sub_1D8E66120(uint64_t a1, double a2)
{
  v3 = sub_1D9177FDC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8D755D8(&qword_1EDCD5C50, MEMORY[0x1E69666B0], MEMORY[0x1E69666B8]);
  v7 = sub_1D917840C();
  v35 = MEMORY[0x1E69E7CC0];
  sub_1D8D41BE0(0, v7 & ~(v7 >> 63), 0);
  v8 = v35;
  (*(v4 + 16))(v6, a1, v3);
  result = sub_1D91783FC();
  if ((v7 & 0x8000000000000000) == 0)
  {
    v10 = v34;
    if (v7)
    {
      v11 = v33;
      *&v32 = *(v33 + 16);
      v31 = xmmword_1D9189080;
      v12 = v34;
      while (v32 != v12)
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_21;
        }

        if (v12 >= *(v11 + 16))
        {
          goto LABEL_22;
        }

        v13 = *(v11 + 32 + v12);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
        v14 = swift_allocObject();
        *(v14 + 16) = v31;
        *(v14 + 56) = MEMORY[0x1E69E7508];
        *(v14 + 64) = MEMORY[0x1E69E7558];
        *(v14 + 32) = v13;
        result = sub_1D917823C();
        v35 = v8;
        v17 = *(v8 + 16);
        v16 = *(v8 + 24);
        if (v17 >= v16 >> 1)
        {
          v30 = result;
          v19 = v15;
          sub_1D8D41BE0((v16 > 1), v17 + 1, 1);
          v15 = v19;
          result = v30;
          v8 = v35;
        }

        *(v8 + 16) = v17 + 1;
        v18 = v8 + 16 * v17;
        *(v18 + 32) = result;
        *(v18 + 40) = v15;
        ++v12;
        if (!--v7)
        {
          v34 = v12;
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
    }

    else
    {
      v12 = v34;
LABEL_12:
      v20 = v33;
      v21 = *(v33 + 16);
      if (v12 == v21)
      {
LABEL_13:

        return v8;
      }

      v32 = xmmword_1D9189080;
      while (v12 < v21)
      {
        v22 = *(v20 + 32 + v12);
        v34 = v12 + 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
        v23 = swift_allocObject();
        *(v23 + 16) = v32;
        *(v23 + 56) = MEMORY[0x1E69E7508];
        *(v23 + 64) = MEMORY[0x1E69E7558];
        *(v23 + 32) = v22;
        result = sub_1D917823C();
        v35 = v8;
        v26 = *(v8 + 16);
        v25 = *(v8 + 24);
        if (v26 >= v25 >> 1)
        {
          v28 = result;
          v29 = v24;
          sub_1D8D41BE0((v25 > 1), v26 + 1, 1);
          v24 = v29;
          result = v28;
          v8 = v35;
        }

        *(v8 + 16) = v26 + 1;
        v27 = v8 + 16 * v26;
        *(v27 + 32) = result;
        *(v27 + 40) = v24;
        v21 = *(v20 + 16);
        v12 = v34;
        if (v34 == v21)
        {
          goto LABEL_13;
        }
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t MediaStreamedAssetCache.pathExtension.getter()
{
  v1 = *(v0 + OBJC_IVAR___PFMediaStreamedAssetCache_pathExtension);

  return v1;
}

id sub_1D8E66580(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1D9176C2C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, a1 + *a3, v5, v7);
  v10 = sub_1D9176B1C();
  (*(v6 + 8))(v9, v5);

  return v10;
}

uint64_t sub_1D8E66698@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = sub_1D9176C2C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

id MediaStreamedAssetCache.__allocating_init(sourceURL:)(char *a1)
{
  v3 = sub_1D9176C2C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_allocWithZone(v1);
  v8 = sub_1D9176B1C();
  v9 = [objc_opt_self() streamedMediaAssetURL];
  sub_1D9176B9C();

  v10 = sub_1D9176B1C();
  v11 = *(v4 + 8);
  v11(v6, v3);
  v12 = [v7 initWithSourceURL:v8 cacheLocation:v10 purgeability:512];

  v11(a1, v3);
  return v12;
}

id MediaStreamedAssetCache.init(sourceURL:)(char *a1)
{
  v2 = v1;
  v4 = sub_1D9176C2C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D9176B1C();
  v9 = [objc_opt_self() streamedMediaAssetURL];
  sub_1D9176B9C();

  v10 = sub_1D9176B1C();
  v11 = *(v5 + 8);
  v11(v7, v4);
  v12 = [v2 initWithSourceURL:v8 cacheLocation:v10 purgeability:512];

  v11(a1, v4);
  return v12;
}

char *MediaStreamedAssetCache.__allocating_init(sourceURL:cacheLocation:purgeability:)(char *a1, char *a2, uint64_t a3)
{
  v4 = a3;
  v7 = objc_allocWithZone(v3);
  return MediaStreamedAssetCache.init(sourceURL:cacheLocation:purgeability:)(a1, a2, v4);
}

char *MediaStreamedAssetCache.init(sourceURL:cacheLocation:purgeability:)(char *a1, char *a2, int a3)
{
  v4 = v3;
  LODWORD(v94) = a3;
  v99[2] = *MEMORY[0x1E69E9840];
  v7 = v4;
  ObjectType = swift_getObjectType();
  v87 = type metadata accessor for MediaStreamedAssetCache.StreamPhase(0);
  MEMORY[0x1EEE9AC00](v87);
  v88 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D9177FCC();
  v83 = *(v9 - 8);
  v84 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v80 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_1D9177FDC();
  v81 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v79 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D917825C();
  v90 = *(v12 - 8);
  v91 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v89 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v77 - v15;
  v17 = sub_1D9176C2C();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v85 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v86 = &v77 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v97 = &v77 - v23;
  v78 = sub_1D9176ABC();
  v25 = v24;
  v96 = a1;
  v99[0] = sub_1D9176ACC();
  v99[1] = v26;
  sub_1D8D447DC();
  sub_1D917924C();
  v28 = v27;

  if (v28)
  {

    sub_1D9176BFC();
    swift_bridgeObjectRelease_n();
  }

  else
  {
    (*(v18 + 56))(v16, 1, 1, v17);
  }

  v95 = a2;
  v29 = *(v18 + 48);
  v30 = v29(v16, 1, v17);
  v31 = v17;
  v93 = v18;
  if (v30 == 1)
  {
    v32 = *(v18 + 16);
    v32(v97, v96, v17);
    if (v29(v16, 1, v17) != 1)
    {
      sub_1D8E677CC(v16);
    }

    v33 = v97;
    v34 = v31;
  }

  else
  {
    v34 = v17;
    v33 = v97;
    (*(v18 + 32))(v97, v16, v34);
    v32 = *(v18 + 16);
  }

  v35 = OBJC_IVAR___PFMediaStreamedAssetCache_sourceURL;
  v32(&v7[OBJC_IVAR___PFMediaStreamedAssetCache_sourceURL], v33, v34);
  v36 = sub_1D9176ABC();
  v38 = v37;

  v39 = HIBYTE(v38) & 0xF;
  if ((v38 & 0x2000000000000000) == 0)
  {
    v39 = v36 & 0xFFFFFFFFFFFFLL;
  }

  if (v39)
  {

    v40 = sub_1D9176ABC();
    v25 = v41;
  }

  else
  {
    v40 = v78;
  }

  v42 = &v7[OBJC_IVAR___PFMediaStreamedAssetCache_pathExtension];
  *v42 = v40;
  v42[1] = v25;
  v43 = OBJC_IVAR___PFMediaStreamedAssetCache_cacheLocation;
  v44 = v95;
  v32(&v7[OBJC_IVAR___PFMediaStreamedAssetCache_cacheLocation], v95, v31);
  *&v7[OBJC_IVAR___PFMediaStreamedAssetCache_purgeability] = v94;
  sub_1D9176ACC();
  v45 = v89;
  sub_1D917824C();
  v94 = sub_1D917821C();
  v47 = v46;

  v48 = v45;
  v49 = v47;
  (*(v90 + 8))(v48, v91);
  if (v47 >> 60 == 15)
  {
    v50 = *(v93 + 8);
    v50(v44, v31);
    v50(v96, v31);
    v50(v33, v31);
    v50(&v7[v35], v31);

    v50(&v7[v43], v31);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    sub_1D8D755D8(&unk_1EDCD5C58, MEMORY[0x1E6966688], MEMORY[0x1E6966680]);
    v52 = v80;
    v53 = v84;
    sub_1D9177F9C();
    v54 = v94;
    sub_1D8D752C4(v94, v47);
    sub_1D8D75318(v54, v47, v52);
    sub_1D8D75668(v54, v47);
    v55 = v79;
    sub_1D9177F8C();
    v56 = (*(v83 + 8))(v52, v53);
    v57 = sub_1D8E66120(v55, v56);
    v91 = 0;
    (*(v81 + 8))(v55, v82);
    v99[0] = v57;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75E0, &qword_1D918DE30);
    v58 = v31;
    sub_1D8D72B0C();
    v59 = sub_1D917817C();
    v61 = v60;

    v62 = &v7[OBJC_IVAR___PFMediaStreamedAssetCache_sourceURLMD5];
    *v62 = v59;
    v62[1] = v61;
    v63 = v88;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4C78, &qword_1D918CFC0);
    v64 = swift_allocObject();
    *(v64 + ((*(*v64 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
    sub_1D8E6A1B8(v63, v64 + *(*v64 + *MEMORY[0x1E69E6B68] + 16));
    *&v7[OBJC_IVAR___PFMediaStreamedAssetCache_phase] = v64;
    v98.receiver = v7;
    v98.super_class = ObjectType;
    v51 = objc_msgSendSuper2(&v98, sel_init);
    v65 = [objc_opt_self() defaultManager];
    v66 = v85;
    sub_1D9176B3C();
    v67 = v86;
    sub_1D9176B4C();
    v68 = *(v93 + 8);
    v68(v66, v58);
    sub_1D9176BCC();
    v69 = v67;
    v70 = v58;
    v68(v69, v58);
    LOBYTE(v99[0]) = 0;
    v71 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

    LODWORD(v66) = [v65 fileExistsAtPath:v71 isDirectory:v99];

    if (v66)
    {
      v73 = *&v51[OBJC_IVAR___PFMediaStreamedAssetCache_phase];
      MEMORY[0x1EEE9AC00](v72);
      *(&v77 - 2) = v51;
      v74 = *(*v73 + *MEMORY[0x1E69E6B68] + 16);
      v75 = (*(*v73 + 48) + 3) & 0x1FFFFFFFCLL;

      os_unfair_lock_lock((v73 + v75));
      sub_1D8E6A21C(v73 + v74);
      os_unfair_lock_unlock((v73 + v75));
      sub_1D8D75668(v94, v49);
      v68(v95, v70);
      v68(v96, v70);
      v68(v97, v70);
    }

    else
    {
      sub_1D8D75668(v94, v49);
      v68(v95, v58);
      v68(v96, v58);
      v68(v97, v58);
    }
  }

  return v51;
}

uint64_t MediaStreamedAssetCache.persistentFileURL()()
{
  v0 = sub_1D9176C2C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D9176B3C();
  sub_1D9176B4C();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1D8E677CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D8E67834(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D9176C2C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8E6A29C(a1);
  sub_1D9176B3C();
  sub_1D9176B4C();
  (*(v4 + 8))(v6, v3);
  type metadata accessor for MediaStreamedAssetCache.StreamPhase(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t MediaStreamedAssetCache.cachedAssetURL()@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for MediaStreamedAssetCache.StreamPhase(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + OBJC_IVAR___PFMediaStreamedAssetCache_phase);
  v7 = *(*v6 + *MEMORY[0x1E69E6B68] + 16);
  v8 = (*(*v6 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v6 + v8));
  sub_1D8E6A238(v6 + v7, v5);
  os_unfair_lock_unlock((v6 + v8));
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1D9176C2C();
    v10 = *(v9 - 8);
    (*(v10 + 32))(a1, v5, v9);
    return (*(v10 + 56))(a1, 0, 1, v9);
  }

  else
  {
    sub_1D8E6A29C(v5);
    v12 = sub_1D9176C2C();
    return (*(*(v12 - 8) + 56))(a1, 1, 1, v12);
  }
}

void MediaStreamedAssetCache.streamCacheURL()(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR___PFMediaStreamedAssetCache_phase);
  v4 = *(*v3 + *MEMORY[0x1E69E6B68] + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v5));
  sub_1D8E6A2F8((v3 + v4), a1);
  os_unfair_lock_unlock((v3 + v5));
}

void sub_1D8E67DF8(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v50 = a2;
  v49 = a3;
  v4 = sub_1D9176C2C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v38 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v38 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v38 - v15;
  v17 = type metadata accessor for MediaStreamedAssetCache.StreamPhase(0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8E6A238(a1, v19);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D8E6A700();
      swift_allocError();
      *v21 = 0;
      swift_willThrow();
      sub_1D8E6A29C(v19);
    }

    else
    {
      v35 = v51;
      sub_1D8E6A330();
      if (!v35)
      {
        sub_1D8E69648(v16);
        sub_1D8E6A29C(a1);
        (*(v5 + 16))(a1, v16, v4);
        swift_storeEnumTagMultiPayload();
        (*(v5 + 32))(v49, v16, v4);
      }
    }
  }

  else
  {
    v48 = v7;
    v22 = v5 + 32;
    v46 = *(v5 + 32);
    v46(v13, v19, v4);
    if (qword_1EDCD5E68 != -1)
    {
      swift_once();
    }

    v23 = sub_1D917744C();
    __swift_project_value_buffer(v23, qword_1EDCD5E70);
    v44 = *(v5 + 16);
    v45 = v5 + 16;
    v44(v10, v13, v4);
    v24 = sub_1D917741C();
    v25 = v5;
    v26 = sub_1D9178CFC();
    if (os_log_type_enabled(v24, v26))
    {
      v27 = swift_slowAlloc();
      v42 = v22;
      v28 = v27;
      v29 = swift_slowAlloc();
      v43 = a1;
      v40 = v29;
      v52 = v29;
      *v28 = 136315138;
      v30 = v25;
      v41 = v25;
      v39 = sub_1D9176A9C();
      v32 = v31;
      v47 = *(v30 + 8);
      v47(v10, v4);
      v33 = sub_1D8CFA924(v39, v32, &v52);

      *(v28 + 4) = v33;
      _os_log_impl(&dword_1D8CEC000, v24, v26, "Attempting to start streaming to a cache location that's already actively streaming. Previously streaming to %s", v28, 0xCu);
      v34 = v40;
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
      a1 = v43;
      MEMORY[0x1DA72CB90](v34, -1, -1);
      MEMORY[0x1DA72CB90](v28, -1, -1);
    }

    else
    {

      v47 = *(v25 + 8);
      v47(v10, v4);
    }

    v36 = v51;
    sub_1D8E6A330();
    v37 = v48;
    if (v36)
    {
      v47(v13, v4);
    }

    else
    {
      sub_1D8E69648(v48);
      sub_1D8E6A29C(a1);
      v47(v13, v4);
      v44(a1, v37, v4);
      swift_storeEnumTagMultiPayload();
      v46(v49, v37, v4);
    }
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MediaStreamedAssetCache.complete()()
{
  v1 = *(v0 + OBJC_IVAR___PFMediaStreamedAssetCache_phase);
  v2 = *(*v1 + *MEMORY[0x1E69E6B68] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_1D8E6A314(v1 + v2);
  os_unfair_lock_unlock((v1 + v3));
}

uint64_t sub_1D8E6856C(uint64_t a1, uint64_t a2)
{
  v86 = a2;
  v88[4] = *MEMORY[0x1E69E9840];
  v4 = sub_1D9176C2C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v77 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v77 - v12;
  v14 = type metadata accessor for MediaStreamedAssetCache.StreamPhase(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8E6A238(a1, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v80 = a1;
    v81 = v14;
    v82 = v2;
    v23 = *(v5 + 32);
    v85 = v13;
    v78 = v23;
    v79 = v5 + 32;
    v23(v13, v16, v4);
    v24 = [objc_opt_self() defaultManager];
    v25 = v86;
    sub_1D9176B3C();
    v26 = v25;
    sub_1D9176B4C();
    v27 = *(v5 + 8);
    v83 = v5 + 8;
    v84 = v27;
    v27(v7, v4);
    v28 = sub_1D9176ABC();
    v30 = v29;

    v31 = HIBYTE(v30) & 0xF;
    if ((v30 & 0x2000000000000000) == 0)
    {
      v31 = v28 & 0xFFFFFFFFFFFFLL;
    }

    if (!v31)
    {
      if (qword_1EDCD5E68 != -1)
      {
        swift_once();
      }

      v63 = sub_1D917744C();
      __swift_project_value_buffer(v63, qword_1EDCD5E70);
      v64 = sub_1D917741C();
      v65 = sub_1D9178CFC();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        *v66 = 0;
        _os_log_impl(&dword_1D8CEC000, v64, v65, "Asset at URL does not have a valid path extension. Skipping cache.", v66, 2u);
        MEMORY[0x1DA72CB90](v66, -1, -1);
      }

      v67 = v84;
      v84(v10, v4);
      v68 = v85;
      v69 = v4;
      return v67(v68, v69);
    }

    sub_1D9176BCC();
    v32 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

    v33 = [v24 fileExistsAtPath_];

    v34 = v24;
    v35 = v85;
    if (v33)
    {
      if (qword_1EDCD5E68 != -1)
      {
        swift_once();
      }

      v36 = sub_1D917744C();
      __swift_project_value_buffer(v36, qword_1EDCD5E70);
      v37 = sub_1D917741C();
      v38 = sub_1D9178CDC();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = v34;
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_1D8CEC000, v37, v38, "Asset at URL was previously streamed. Overwriting with new data", v40, 2u);
        v41 = v40;
        v34 = v39;
        v35 = v85;
        MEMORY[0x1DA72CB90](v41, -1, -1);
      }

      v42 = sub_1D9176B1C();
      v88[0] = 0;
      v43 = [v34 removeItemAtURL:v42 error:v88];

      if (!v43)
      {
        v72 = v88[0];
        sub_1D9176A6C();

        swift_willThrow();
        v71 = v10;
        goto LABEL_37;
      }

      v44 = v88[0];
    }

    sub_1D9176BCC();
    v45 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

    v87 = 0;
    v46 = [v34 attributesOfItemAtPath:v45 error:&v87];

    v47 = v87;
    if (v46)
    {
      v48 = v34;
      type metadata accessor for FileAttributeKey(0);
      sub_1D8D755D8(&qword_1ECAAFD58, type metadata accessor for FileAttributeKey, &unk_1D91881F4);
      v49 = sub_1D917805C();
      v50 = v47;

      if (*(v49 + 16) && (v51 = sub_1D8F06900(*MEMORY[0x1E696A3B8]), (v52 & 1) != 0))
      {
        sub_1D8CFAD1C(*(v49 + 56) + 32 * v51, v88);

        if ((swift_dynamicCast() & 1) != 0 && v87)
        {
          v53 = v85;
          v54 = sub_1D9176B1C();
          v55 = sub_1D9176B1C();
          v88[0] = 0;
          v56 = [v48 moveItemAtURL:v54 toURL:v55 error:v88];
          v77 = v48;
          v57 = v56;

          if (v57)
          {
            v58 = *(v26 + OBJC_IVAR___PFMediaStreamedAssetCache_purgeability);
            v59 = v88[0];
            v60 = v82;
            sub_1D8F4E4E8(v58);

            if (v60)
            {
              v61 = v84;
              v84(v10, v4);
              return v61(v85, v4);
            }

            else
            {
              v76 = v80;
              sub_1D8E6A29C(v80);
              v84(v85, v4);
              v78(v76, v10, v4);
              return swift_storeEnumTagMultiPayload();
            }
          }

          else
          {
            v74 = v88[0];
            sub_1D9176A6C();

            swift_willThrow();
            v75 = v84;
            v84(v10, v4);
            return v75(v53, v4);
          }
        }
      }

      else
      {
      }

      v67 = v84;
      v84(v10, v4);
      v68 = v85;
      v69 = v4;
      return v67(v68, v69);
    }

    v70 = v87;
    sub_1D9176A6C();

    swift_willThrow();
    v71 = v10;
LABEL_37:
    v73 = v84;
    v84(v71, v4);
    return v73(v35, v4);
  }

  if (EnumCaseMultiPayload == 1)
  {
    if (qword_1EDCD5E68 != -1)
    {
      swift_once();
    }

    v18 = sub_1D917744C();
    __swift_project_value_buffer(v18, qword_1EDCD5E70);
    v19 = sub_1D917741C();
    v20 = sub_1D9178CFC();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1D8CEC000, v19, v20, "Calling complete on a stream that has already completed. This is not an error, but is unexpected.", v21, 2u);
      MEMORY[0x1DA72CB90](v21, -1, -1);
    }

    return sub_1D8E6A29C(v16);
  }

  else
  {
    sub_1D8E6A700();
    swift_allocError();
    *v62 = 1;
    return swift_willThrow();
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MediaStreamedAssetCache.clear()()
{
  v1 = *(v0 + OBJC_IVAR___PFMediaStreamedAssetCache_phase);
  v2 = *(*v1 + *MEMORY[0x1E69E6B68] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_1D8E68FE0(v1 + v2);
  os_unfair_lock_unlock((v1 + v3));
}

void sub_1D8E68FE0(uint64_t a1)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for MediaStreamedAssetCache.StreamPhase(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D9176C2C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8E6A238(a1, v5);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v7 + 32))(v9, v5, v6);
    v10 = [objc_opt_self() defaultManager];
    sub_1D9176BCC();
    v11 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

    v12 = [v10 fileExistsAtPath_];

    if (v12)
    {
      if (qword_1EDCD5E68 != -1)
      {
        swift_once();
      }

      v13 = sub_1D917744C();
      __swift_project_value_buffer(v13, qword_1EDCD5E70);
      v14 = sub_1D917741C();
      v15 = sub_1D9178CDC();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v22[1] = v1;
        v17 = v16;
        *v16 = 0;
        _os_log_impl(&dword_1D8CEC000, v14, v15, "Asset at URL was previously cached. Removing it.", v16, 2u);
        MEMORY[0x1DA72CB90](v17, -1, -1);
      }

      v18 = sub_1D9176B1C();
      v23[0] = 0;
      v19 = [v10 removeItemAtURL:v18 error:v23];

      if (v19)
      {
        v20 = v23[0];

        sub_1D8E6A29C(a1);
        (*(v7 + 8))(v9, v6);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        v21 = v23[0];
        sub_1D9176A6C();

        swift_willThrow();
        (*(v7 + 8))(v9, v6);
      }
    }

    else
    {
      (*(v7 + 8))(v9, v6);
    }
  }

  else
  {
    sub_1D8E6A29C(v5);
  }
}

uint64_t MediaStreamedAssetCache.StreamCacheError.hashValue.getter()
{
  v1 = *v0;
  sub_1D9179DBC();
  MEMORY[0x1DA72B390](v1);
  return sub_1D9179E1C();
}

uint64_t sub_1D8E69648@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v2 = sub_1D9176EAC();
  v26 = *(v2 - 8);
  v27 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v25 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D9176C2C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v24 = &v23 - v15;
  v16 = [objc_opt_self() defaultManager];
  v17 = [v16 temporaryDirectory];
  sub_1D9176B9C();

  sub_1D9176B2C();
  v18 = *(v5 + 8);
  v18(v7, v4);
  sub_1D8E6A330();

  if (v1)
  {
    v19 = v10;
  }

  else
  {
    (*(v5 + 32))(v13, v10, v4);
    v20 = v25;
    sub_1D9176E9C();
    sub_1D9176E5C();
    (*(v26 + 8))(v20, v27);
    v21 = v24;
    sub_1D9176B2C();

    v18(v13, v4);
    sub_1D9176B4C();
    v19 = v21;
  }

  return (v18)(v19, v4);
}

void static MediaStreamedAssetCache.streamDirectory(with:)(void *a1@<X0>, char *a2@<X8>)
{
  v5 = sub_1D9176C2C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  (*(v10 + 80))(v9, v10);
  sub_1D9176B2C();
  v11 = *(v6 + 8);
  v11(v8, v5);
  sub_1D8E6A330();
  if (v2)
  {
    v11(a2, v5);
  }
}

id MediaStreamedAssetCache.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[OBJC_IVAR___PFMediaStreamedAssetCache_phase];
  v3 = *(*v2 + *MEMORY[0x1E69E6B68] + 16);
  v4 = (*(*v2 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v2 + v4));
  sub_1D8E69B90(v2 + v3);
  os_unfair_lock_unlock((v2 + v4));

  v6.receiver = v0;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_dealloc);
}

uint64_t sub_1D8E69B90(uint64_t a1)
{
  v30[1] = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for MediaStreamedAssetCache.StreamPhase(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D9176C2C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8E6A238(a1, v4);
  if (swift_getEnumCaseMultiPayload())
  {
    return sub_1D8E6A29C(v4);
  }

  v29 = v6;
  (*(v6 + 32))(v8, v4, v5);
  v10 = [objc_opt_self() defaultManager];
  sub_1D9176BCC();
  v11 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v30[0] = 0;
  v12 = [v10 removeItemAtPath:v11 error:v30];

  if (v12)
  {
    v13 = v30[0];
    sub_1D8E6A29C(a1);
    swift_storeEnumTagMultiPayload();
    if (qword_1EDCD0F18 != -1)
    {
      swift_once();
    }

    v14 = sub_1D917744C();
    __swift_project_value_buffer(v14, qword_1EDCD0F20);
    v15 = sub_1D917741C();
    v16 = sub_1D9178CFC();
    v17 = os_log_type_enabled(v15, v16);
    v18 = v29;
    if (v17)
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1D8CEC000, v15, v16, "Cleaned up active streaming pathway.", v19, 2u);
      MEMORY[0x1DA72CB90](v19, -1, -1);
    }

    return (*(v18 + 8))(v8, v5);
  }

  else
  {
    v20 = v30[0];
    v21 = sub_1D9176A6C();

    swift_willThrow();
    if (qword_1EDCD0F18 != -1)
    {
      swift_once();
    }

    v22 = sub_1D917744C();
    __swift_project_value_buffer(v22, qword_1EDCD0F20);
    v23 = sub_1D917741C();
    v24 = sub_1D9178CFC();
    v25 = os_log_type_enabled(v23, v24);
    v26 = v29;
    if (v25)
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1D8CEC000, v23, v24, "Unable to cleanup active streaming pathway.", v27, 2u);
      MEMORY[0x1DA72CB90](v27, -1, -1);
    }

    return (*(v26 + 8))(v8, v5);
  }
}

id MediaStreamedAssetCache.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1D8E6A1B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaStreamedAssetCache.StreamPhase(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8E6A238(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaStreamedAssetCache.StreamPhase(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8E6A29C(uint64_t a1)
{
  v2 = type metadata accessor for MediaStreamedAssetCache.StreamPhase(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D8E6A330()
{
  v14 = *MEMORY[0x1E69E9840];
  v0 = [objc_opt_self() defaultManager];
  sub_1D9176BCC();
  LOBYTE(v13) = 1;
  v1 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v2 = [v0 fileExistsAtPath:v1 isDirectory:&v13];

  if ((v2 & 1) == 0)
  {
    sub_1D9176BCC();
    v3 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

    v4 = [v0 fileExistsAtPath_];

    if (v4)
    {
      v5 = sub_1D9176B1C();
      v13 = 0;
      v6 = [v0 removeItemAtURL:v5 error:&v13];

      v7 = v13;
      if (!v6)
      {
        goto LABEL_7;
      }

      v8 = v13;
    }

    v9 = sub_1D9176B1C();
    v13 = 0;
    v10 = [v0 createDirectoryAtURL:v9 withIntermediateDirectories:1 attributes:0 error:&v13];

    v7 = v13;
    if (v10)
    {
      v11 = v13;
      goto LABEL_8;
    }

LABEL_7:
    v12 = v7;
    sub_1D9176A6C();

    swift_willThrow();
  }

LABEL_8:
}

unint64_t sub_1D8E6A4E0()
{
  result = qword_1ECAB4C80;
  if (!qword_1ECAB4C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB4C80);
  }

  return result;
}

uint64_t sub_1D8E6A55C(uint64_t a1)
{
  result = sub_1D9176C2C();
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

uint64_t sub_1D8E6A6A0(uint64_t a1)
{
  result = sub_1D9176C2C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1D8E6A700()
{
  result = qword_1ECAB4C88[0];
  if (!qword_1ECAB4C88[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECAB4C88);
  }

  return result;
}

id sub_1D8E6A7C0@<X0>(void **a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return v2;
}

uint64_t TestingAssetCache.__allocating_init()()
{
  v0 = swift_allocObject();
  TestingAssetCache.init()();
  return v0;
}

void *TestingAssetCache.init()()
{
  v1 = *(*v0 + 88);
  v2 = MEMORY[0x1E69E6158];
  swift_getTupleTypeMetadata2();
  v3 = sub_1D917866C();
  v4 = sub_1D8D075C8(v3, v2, v1, MEMORY[0x1E69E6168]);

  v0[2] = v4;
  return v0;
}

uint64_t TestingAssetCache.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

double TestingAssetCache.asset(at:)()
{
  (*(*(*v0 + 96) + 16))(&v2, *(*v0 + 80));
  swift_beginAccess();

  sub_1D91780FC();

  return result;
}

uint64_t TestingAssetCache.store(asset:at:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 88);
  v5 = sub_1D91791BC();
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v13 - v7;
  (*(*(v3 + 96) + 16))(v14, *(v3 + 80), v6);
  v9 = v14[0];
  v10 = v14[1];
  v11 = *(v4 - 8);
  (*(v11 + 16))(v8, a1, v4);
  (*(v11 + 56))(v8, 0, 1, v4);
  v13[4] = v9;
  v13[5] = v10;
  swift_beginAccess();
  sub_1D91780DC();
  sub_1D917810C();
  return swift_endAccess();
}

uint64_t TestingAssetCache.containsAsset(for:)()
{
  v1 = *v0;
  swift_beginAccess();
  v7[2] = v0[2];
  v2 = *(v1 + 96);
  v3 = *(v2 + 16);
  v4 = *(v1 + 80);

  v3(v7, v4, v2);
  sub_1D917809C();
  swift_getWitnessTable();
  v5 = sub_1D917850C();

  return v5 & 1;
}

double TestingAssetCache.invalidate(at:)()
{
  v1 = *v0;
  v2 = sub_1D91791BC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v8 - v5;
  (*(*(v1 + 96) + 16))(v9, *(v1 + 80), v4);
  v8[4] = v9[0];
  v8[5] = v9[1];
  swift_beginAccess();
  sub_1D91780DC();
  sub_1D917807C();
  (*(v3 + 8))(v6, v2);
  swift_endAccess();

  return result;
}

unint64_t sub_1D8E6AEFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D917813C();

  return sub_1D8E6AF58(a1, v6, a2, a3);
}

unint64_t sub_1D8E6AF58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[1] = a1;
  v22[2] = a4;
  v7.n128_f64[0] = MEMORY[0x1EEE9AC00](a1);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v22[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v6 + 16);
    v14 = v6 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v23 + 48) + v17 * v12, a3, v7);
      v20 = sub_1D91781BC();
      (*v18)(v9, a3);
      if (v20)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v22[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

uint64_t sub_1D8E6B3D8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1D8E6B428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v16 - v12;
  (*(a6 + 40))(a1, a5, a6, v11);
  swift_getAssociatedConformanceWitness();
  v14 = sub_1D9177B1C();
  (*(v10 + 8))(v13, AssociatedTypeWitness);
  return v14;
}

uint64_t sub_1D8E6B5D8@<X0>(uint64_t *a1@<X8>)
{
  result = AnyAssetSource.fetch(asset:)();
  *a1 = result;
  return result;
}

PodcastsFoundation::AssetLifetime_optional __swiftcall AssetLifetime.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1D8E6B6E8()
{
  result = qword_1ECAB4D10;
  if (!qword_1ECAB4D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB4D10);
  }

  return result;
}

unint64_t sub_1D8E6B78C()
{
  result = qword_1ECAB28C8;
  if (!qword_1ECAB28C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB28C8);
  }

  return result;
}

uint64_t URLTaskAssetSource.fetch(asset:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v66 = a3;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v55);
  v52 = &v47 - v6;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D18, &qword_1D918D4C8);
  v53 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v51 = &v47 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D20, &qword_1D918D4D0);
  v58 = *(v8 - 8);
  v59 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v57 = &v47 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D28, &qword_1D918D4D8);
  v61 = *(v10 - 8);
  v62 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v60 = &v47 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D30, &qword_1D918D4E0);
  v64 = *(v12 - 8);
  v65 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v63 = &v47 - v13;
  v54 = a2;
  v14 = *(a2 + 16);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v18 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v21 = v3[1];
  v48 = *v3;
  v49 = v21;
  v23 = a1;
  v47 = *(v15 + 16);
  v47(&v47 - v22, a1, v14, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4B28, &unk_1D918BE10);
  if (swift_dynamicCast())
  {
    v25 = *(&v68 + 1);
    v24 = v69;
    __swift_project_boxed_opaque_existential_1(&v67, *(&v68 + 1));
    (*(v24 + 8))(v70, v25, v24);
    __swift_destroy_boxed_opaque_existential_1Tm(&v67);
  }

  else
  {
    v69 = 0;
    v67 = 0u;
    v68 = 0u;
    sub_1D8D08A50(&v67, &qword_1ECAB4B20, &unk_1D918BE00);
    memset(v70, 0, sizeof(v70));
    v71 = 0;
  }

  v26 = *(v54 + 24);
  v27 = *(v26 + 16);
  v50 = v23;
  v54 = v26;
  v27(v14, v26);
  v28 = v51;
  sub_1D9177A0C();
  sub_1D917653C();
  v29 = v57;
  v30 = v56;
  sub_1D91779CC();
  (*(v53 + 8))(v28, v30);
  (v47)(v18, v23, v14);
  v31 = (*(v15 + 80) + 48) & ~*(v15 + 80);
  v32 = swift_allocObject();
  *(v32 + 2) = v14;
  *(v32 + 3) = v26;
  v33 = v49;
  *(v32 + 4) = v48;
  *(v32 + 5) = v33;
  (*(v15 + 32))(&v32[v31], v18, v14);

  sub_1D91777FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB58F0, &unk_1D9190BD0);
  sub_1D8CF48EC(&qword_1ECAAFBC8, &qword_1ECAB4D20, &qword_1D918D4D0, MEMORY[0x1E695C0B8]);
  sub_1D8CF48EC(&qword_1ECAB03A0, &unk_1ECAB58F0, &unk_1D9190BD0, MEMORY[0x1E695BED8]);
  v34 = v59;
  v35 = v60;
  sub_1D9177DCC();

  (*(v58 + 8))(v29, v34);
  sub_1D8D088B4(v70, &v67, &qword_1ECAB4928, &qword_1D918B380);
  v36 = swift_allocObject();
  v37 = v68;
  *(v36 + 16) = v67;
  *(v36 + 32) = v37;
  *(v36 + 48) = v69;
  sub_1D8CF48EC(&qword_1ECAB05F8, &qword_1ECAB4D28, &qword_1D918D4D8, MEMORY[0x1E695BE40]);
  v38 = v62;
  v39 = v63;
  sub_1D9177B7C();

  (*(v61 + 8))(v35, v38);
  v40 = v54;
  v41 = sub_1D8E6C770(v50, v14, v54);
  v43 = v42;
  v44 = swift_allocObject();
  v44[2] = v14;
  v44[3] = v40;
  v44[4] = v41;
  v44[5] = v43;
  swift_getAssociatedTypeWitness();
  sub_1D8CF48EC(&qword_1ECAB0918, &qword_1ECAB4D30, &qword_1D918D4E0, MEMORY[0x1E695BCE0]);
  v45 = v65;
  sub_1D9177C6C();

  (*(v64 + 8))(v39, v45);
  return sub_1D8D08A50(v70, &qword_1ECAB4928, &qword_1D918B380);
}

uint64_t sub_1D8E6C028@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D9176C2C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v17 - v12;
  sub_1D8D088B4(a1, &v17 - v12, &unk_1ECAB5910, &qword_1D9188C90);
  v14 = 1;
  if ((*(v5 + 48))(v13, 1, v4) != 1)
  {
    (*(v5 + 32))(v10, v13, v4);
    (*(v5 + 16))(v7, v10, v4);
    sub_1D91764EC();
    (*(v5 + 8))(v10, v4);
    v14 = 0;
  }

  v15 = sub_1D917653C();
  return (*(*(v15 - 8) + 56))(a2, v14, 1, v15);
}

uint64_t sub_1D8E6C250@<X0>(uint64_t *a2@<X8>, uint64_t x2_0@<X2>, uint64_t a3@<X3>)
{
  type metadata accessor for AnyAssetBackgroundSession(0, *(v4 + 16), x2_0, a3);
  result = AnyAssetBackgroundSession.start(task:for:)();
  *a2 = result;
  return result;
}

uint64_t sub_1D8E6C2E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_1D9176C2C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DownloadPhase(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8E6C974(a1, v14, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1D8D088B4(a2, v34, &qword_1ECAB4928, &qword_1D918B380);
    v24 = v35;
    if (v35)
    {
      v25 = v36;
      __swift_project_boxed_opaque_existential_1(v34, v35);
      v32 = 0;
      v33 = 0xE000000000000000;
      sub_1D9178A5C();
      MEMORY[0x1DA7298F0](37, 0xE100000000000000);
      (*(v25 + 16))("Download Update", 15, 2, v32, v33, v24, v25);

LABEL_10:
      result = __swift_destroy_boxed_opaque_existential_1Tm(v34);
LABEL_12:
      v19 = 0;
      v21 = 0xF000000000000000;
      goto LABEL_18;
    }

LABEL_11:
    result = sub_1D8D08A50(v34, &qword_1ECAB4928, &qword_1D918B380);
    goto LABEL_12;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1D8D088B4(a2, v34, &qword_1ECAB4928, &qword_1D918B380);
    v26 = v35;
    if (v35)
    {
      v27 = v36;
      __swift_project_boxed_opaque_existential_1(v34, v35);
      Trace.emit(event:)("Download Pending", 16, 2, v26, v27);
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  (*(v8 + 32))(v10, v14, v7);
  v16 = [objc_opt_self() defaultManager];
  sub_1D9176BCC();
  v17 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v18 = [v16 contentsAtPath_];

  if (!v18)
  {
    type metadata accessor for FileError(0);
    sub_1D8E6C9D8();
    swift_allocError();
    v30 = v29;
    (*(v8 + 16))(v29, v10, v7);
    (*(v8 + 56))(v30, 0, 2, v7);
    swift_willThrow();
    return (*(v8 + 8))(v10, v7);
  }

  v19 = sub_1D9176C8C();
  v21 = v20;

  sub_1D8D088B4(a2, v34, &qword_1ECAB4928, &qword_1D918B380);
  v22 = v35;
  if (v35)
  {
    v23 = v36;
    __swift_project_boxed_opaque_existential_1(v34, v35);
    Trace.emit(event:)("Download Complete", 17, 2, v22, v23);
    __swift_destroy_boxed_opaque_existential_1Tm(v34);
  }

  else
  {
    sub_1D8D08A50(v34, &qword_1ECAB4928, &qword_1D918B380);
  }

  sub_1D8F4E4E8(512);
  if (v3)
  {
  }

  result = (*(v8 + 8))(v10, v7);
LABEL_18:
  *a3 = v19;
  a3[1] = v21;
  return result;
}

uint64_t (*sub_1D8E6C770(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v7);
  v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  (*(v5 + 32))(v10 + v9, v8, a2);
  return sub_1D8E6C908;
}

uint64_t sub_1D8E6C974(uint64_t a1, uint64_t a2, double a3)
{
  v5 = type metadata accessor for DownloadPhase(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D8E6C9D8()
{
  result = qword_1ECAB5920;
  if (!qword_1ECAB5920)
  {
    type metadata accessor for FileError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB5920);
  }

  return result;
}

uint64_t AssetRemovalProcessorDataSource.name.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

double sub_1D8E6CA70(uint64_t a1)
{
  v2 = *(v1 + 48);
  *(v1 + 48) = a1;
  return sub_1D8E6CA80(v2);
}

double sub_1D8E6CA80(uint64_t a1)
{
  if (a1 != 1)
  {
  }

  return result;
}

double (*sub_1D8E6CA90(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1D8DB9908();
  return sub_1D8E6CAD8;
}

double sub_1D8E6CAD8(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = *(v2 + 48);
  *(v2 + 48) = *a1;
  if (a2)
  {

    sub_1D8E6CA80(v3);
  }

  else
  {

    return sub_1D8E6CA80(v3);
  }

  return result;
}

double sub_1D8E6CB48(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 56) = v2;

  return result;
}

double sub_1D8E6CBE0(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 56) = a1;

  return result;
}

double AssetRemovalProcessorDataSource.__allocating_init(managedObjectContext:receiverQueue:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  strcpy((v4 + 32), "AssetRemoval");
  *(v4 + 45) = 0;
  *(v4 + 46) = -5120;
  *&result = 1;
  *(v4 + 48) = xmmword_1D918BEE0;
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  return result;
}

id sub_1D8E6CCE8()
{
  v0 = [objc_opt_self() predicateForPodcastToAutoRemove];

  return v0;
}

uint64_t sub_1D8E6CD28(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v3;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D38, &unk_1D918D588);
  v33 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v8 = &v28 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D70, &unk_1D918BCE0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v28 - v10;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D40, &qword_1D918D598);
  v32 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v13 = &v28 - v12;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D48, &qword_1D918D5A0);
  v31 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v15 = &v28 - v14;
  v16 = v3[2];
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a2;
  v17[4] = v6;
  v18 = swift_allocObject();
  v18[2] = v16;
  v18[3] = sub_1D8E6D328;
  v18[4] = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D50, &qword_1D918D5A8);
  swift_allocObject();

  v19 = v16;
  v20 = sub_1D9177A5C();
  v21 = v3[3];
  v22 = sub_1D9178DBC();
  (*(*(v22 - 8) + 56))(v11, 1, 1, v22);
  v34 = v20;
  v35 = v21;
  sub_1D8CFD888();
  sub_1D8CF48EC(&qword_1EDCD0AE0, &qword_1ECAB4D50, &qword_1D918D5A8, MEMORY[0x1E695C038]);
  sub_1D8D02DF0();
  sub_1D9177D3C();
  sub_1D8CF48EC(&qword_1ECAB0A30, &qword_1ECAB4D38, &unk_1D918D588, MEMORY[0x1E695BCB8]);
  v23 = v30;
  sub_1D9177CEC();

  (*(v33 + 8))(v8, v23);
  sub_1D8D2210C(v11);
  swift_getKeyPath();
  sub_1D8CF48EC(&qword_1ECAB0450, &qword_1ECAB4D40, &qword_1D918D598, MEMORY[0x1E695BE98]);
  v24 = v28;
  sub_1D9177B8C();

  (*(v32 + 8))(v13, v24);
  sub_1D8CF48EC(&qword_1ECAB0B08, &qword_1ECAB4D48, &qword_1D918D5A0, MEMORY[0x1E695BC98]);
  v25 = v29;
  v26 = sub_1D9177B1C();
  (*(v31 + 8))(v15, v25);
  return v26;
}

uint64_t sub_1D8E6D234@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v9 = [a1 podcastForUuid_];

  if (v9)
  {
    v10 = [v9 episodeLimitResolvedValue];
    v11 = [v9 deletePlayedEpisodesResolvedValue];

    *a4 = a2;
    *(a4 + 8) = a3;
    *(a4 + 16) = v10;
    *(a4 + 24) = v11;
  }

  else
  {
    sub_1D8E6D92C();
    swift_allocError();
    *v12 = a2;
    v12[1] = a3;
    swift_willThrow();
  }
}

id sub_1D8E6D348(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (qword_1EDCD0F18 != -1)
  {
    swift_once();
  }

  v8 = sub_1D917744C();
  __swift_project_value_buffer(v8, qword_1EDCD0F20);

  v9 = sub_1D917741C();
  v10 = sub_1D9178CDC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136446210;
    v13 = sub_1D8E6D514(a1, a2, a3, a4 & 1);
    v15 = sub_1D8CFA924(v13, v14, &v20);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_1D8CEC000, v9, v10, "Creating autoremoval predicate with context: %{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x1DA72CB90](v12, -1, -1);
    MEMORY[0x1DA72CB90](v11, -1, -1);
  }

  v16 = objc_opt_self();
  v17 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v18 = [v16 predicateForAutomaticDeletionOnShow:v17 deletePlayedEpisodes:a4 & 1 episodeLimit:a3];

  return v18;
}

uint64_t sub_1D8E6D514(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_1D917946C();
  MEMORY[0x1DA7298F0](0x44495555776F6873, 0xEA0000000000203ALL);
  MEMORY[0x1DA7298F0](a1, a2);
  MEMORY[0x1DA7298F0](0x65646F736970650ALL, 0xEF203A74696D694CLL);
  type metadata accessor for MTPodcastEpisodeLimit(0);
  sub_1D917964C();
  MEMORY[0x1DA7298F0](0xD000000000000017, 0x80000001D91CAAB0);
  if (a4)
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (a4)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x1DA7298F0](v7, v8);

  return 0;
}

uint64_t AssetRemovalProcessorDataSource.deinit()
{

  sub_1D8E6CA80(*(v0 + 48));

  return v0;
}

uint64_t AssetRemovalProcessorDataSource.__deallocating_deinit()
{

  sub_1D8E6CA80(*(v0 + 48));

  return swift_deallocClassInstance();
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1D8E6D890(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_1D8E6D8D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D8E6D92C()
{
  result = qword_1ECAB4D58;
  if (!qword_1ECAB4D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB4D58);
  }

  return result;
}

uint64_t AutoDownloadProcessorDataSource.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

double sub_1D8E6D9C0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 48) = v2;

  return result;
}

double sub_1D8E6DA58(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;

  return result;
}

uint64_t AutoDownloadProcessorDataSource.__allocating_init(context:accountDataSource:workQueue:capacityMonitor:)(void *a1, uint64_t a2, void *a3, void *a4)
{
  v8 = swift_allocObject();
  AutoDownloadProcessorDataSource.init(context:accountDataSource:workQueue:capacityMonitor:)(a1, a2, a3, a4);
  return v8;
}

uint64_t AutoDownloadProcessorDataSource.deinit(uint64_t a1)
{
  if ((*(v1 + 96) & 1) == 0)
  {
    v2 = *(*(v1 + 72) + OBJC_IVAR___MTDeviceCapacityMonitor__capacityChangeObservers);
    MEMORY[0x1EEE9AC00](a1);
    MEMORY[0x1EEE9AC00](v3);
    v5 = v4;

    os_unfair_lock_lock(v2 + 6);
    sub_1D8E6EFF8();
    os_unfair_lock_unlock(v2 + 6);
  }

  swift_unknownObjectRelease();

  return v1;
}

uint64_t AutoDownloadProcessorDataSource.__deallocating_deinit(uint64_t a1)
{
  AutoDownloadProcessorDataSource.deinit(a1);

  return swift_deallocClassInstance();
}

id sub_1D8E6DD14()
{
  v0 = [objc_opt_self() predicateForPodcastsToAutodownload];

  return v0;
}

uint64_t sub_1D8E6DD54(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v34 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D68, &unk_1D918D6E8);
  v7 = *(v6 - 8);
  v37 = v6;
  v38 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D70, &unk_1D918BCE0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v33 - v11;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D78, &qword_1D918D6F8);
  v42 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v35 = &v33 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D80, &qword_1D918D700);
  v15 = *(v14 - 8);
  v40 = v14;
  v41 = v15;
  MEMORY[0x1EEE9AC00](v14);
  v36 = &v33 - v16;
  v17 = *(v2 + 32);
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = a1;
  v33 = a2;
  v18[4] = a2;
  v18[5] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D88, &qword_1D918D708);
  swift_allocObject();
  v19 = v17;

  v20 = sub_1D9177A5C();
  v21 = *(v2 + 64);
  v22 = sub_1D9178DBC();
  (*(*(v22 - 8) + 56))(v12, 1, 1, v22);
  v43 = v20;
  v44 = v21;
  sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  sub_1D8CF48EC(&qword_1EDCD0AD8, &qword_1ECAB4D88, &qword_1D918D708, MEMORY[0x1E695C038]);
  sub_1D8D02DF0();
  sub_1D9177D3C();
  sub_1D8CF48EC(&qword_1ECAB0A28, &qword_1ECAB4D68, &unk_1D918D6E8, MEMORY[0x1E695BCB8]);
  v23 = v35;
  v24 = v37;
  sub_1D9177CEC();

  (*(v38 + 8))(v9, v24);
  sub_1D8D2210C(v12);
  v25 = swift_allocObject();
  v27 = v33;
  v26 = v34;
  v25[2] = v3;
  v25[3] = v26;
  v25[4] = v27;
  sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
  sub_1D8CF48EC(&qword_1ECAB0448, &qword_1ECAB4D78, &qword_1D918D6F8, MEMORY[0x1E695BE98]);

  v28 = v36;
  v29 = v39;
  sub_1D9177B9C();

  (*(v42 + 8))(v23, v29);
  sub_1D8CF48EC(&qword_1ECAB0750, &qword_1ECAB4D80, &qword_1D918D700, MEMORY[0x1E695BD60]);
  v30 = v40;
  v31 = sub_1D9177B1C();
  (*(v41 + 8))(v28, v30);
  return v31;
}

void sub_1D8E6E290(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a1;
  v12[6] = a2;
  v12[7] = a6;
  v15[4] = sub_1D8E6EFC8;
  v15[5] = v12;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = sub_1D8CF5F60;
  v15[3] = &block_descriptor_6;
  v13 = _Block_copy(v15);
  v14 = a3;

  [v14 performBlock_];
  _Block_release(v13);
}

double sub_1D8E6E3A8(void *a1, void *a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5, uint64_t a6)
{
  v11 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v12 = [a1 podcastForUuid_];

  if (v12)
  {
    if (os_feature_enabled_serial_sort_auto_downloads())
    {
      if ([v12 currentEpisodeLimitIsNextNEpisodes])
      {
        v13 = 256;
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }

    v16 = [v12 currentEpisodeLimitAllowsAutomaticDownloads];
    v17 = [v12 episodeLimitResolvedValue];
    v18 = [v12 deletePlayedEpisodesResolvedValue];
    v19 = [*(a6 + 40) activeDsid];
    if (v19)
    {

      v20 = 0;
    }

    else
    {
      v20 = 0x10000;
    }

    v22 = a2;
    v23 = a3;
    v24 = v16;
    *v25 = v17;
    v25[10] = BYTE2(v20);
    *&v25[8] = v13 | v18 | v20;
    v26 = 0;

    a4(&v22);
  }

  else
  {
    sub_1D8E6D92C();
    v14 = swift_allocError();
    *v15 = a2;
    v15[1] = a3;
    v22 = v14;
    v23 = 0;
    v24 = 0;
    memset(v25, 0, sizeof(v25));
    v26 = 1;

    a4(&v22);
  }

  return sub_1D8E6EFD8(v22, v23, v24, *v25, *&v25[8] | (v25[10] << 16), v26);
}

uint64_t AutoDownloadProcessorDataSource.AutoDownloadContext.init(showUUID:autoDownloadEnabled:episodeLimit:deletePlayedEpisodes:serialNextEpisodesSort:includePlayableWithoutAccount:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, char a7@<W6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 33) = a6;
  *(a8 + 34) = a7;
  return result;
}

id sub_1D8E6E590@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, void *a5@<X8>)
{
  if (*(a1 + 16) == 1 && !*(a2 + 80))
  {
    v14 = *a1;
    v15 = *(a1 + 8);
    v16 = *(a1 + 24);
    v17 = *(a1 + 32);
    v18 = *(a1 + 33);
    v19 = *(a1 + 34);
    if (qword_1EDCD0F18 != -1)
    {
      swift_once();
    }

    v20 = sub_1D917744C();
    __swift_project_value_buffer(v20, qword_1EDCD0F20);

    v21 = sub_1D917741C();
    v22 = sub_1D9178CDC();

    if (os_log_type_enabled(v21, v22))
    {
      v36 = v14;
      v23 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v43 = v34;
      *v23 = 136446210;
      v37[0] = v36;
      v37[1] = v15;
      v38 = 1;
      v39 = v16;
      v40 = v17;
      v41 = v18;
      v42 = v19;

      v24 = AutoDownloadProcessorDataSource.AutoDownloadContext.description.getter();
      v35 = v17;
      v25 = v19;
      v26 = v18;
      v27 = v16;
      v29 = v28;

      v30 = sub_1D8CFA924(v24, v29, &v43);
      v16 = v27;
      v18 = v26;
      v19 = v25;
      v17 = v35;

      *(v23 + 4) = v30;
      _os_log_impl(&dword_1D8CEC000, v21, v22, "Creating autodownload predicate with context: %{public}s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      MEMORY[0x1DA72CB90](v34, -1, -1);
      MEMORY[0x1DA72CB90](v23, -1, -1);
    }

    v31 = objc_opt_self();
    v32 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    v33 = [v31 predicateForAutomaticDownloadsOnShow:v32 deletePlayedEpisodes:v17 episodeLimit:v16 serialNextEpisodesSort:v18 includePlayableWithoutAccount:v19];

    result = v33;
  }

  else
  {
    if (qword_1EDCD0F18 != -1)
    {
      swift_once();
    }

    v8 = sub_1D917744C();
    __swift_project_value_buffer(v8, qword_1EDCD0F20);

    v9 = sub_1D917741C();
    v10 = sub_1D9178D1C();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v37[0] = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_1D8CFA924(a3, a4, v37);
      _os_log_impl(&dword_1D8CEC000, v9, v10, "AutoDownloads unavailable for show %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x1DA72CB90](v12, -1, -1);
      MEMORY[0x1DA72CB90](v11, -1, -1);
    }

    result = [objc_opt_self() falsePredicate];
  }

  *a5 = result;
  return result;
}

uint64_t AutoDownloadProcessorDataSource.AutoDownloadContext.showUUID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AutoDownloadProcessorDataSource.AutoDownloadContext.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = *(v0 + 32);
  v5 = *(v0 + 33);
  v15 = *(v0 + 34);
  sub_1D917946C();
  MEMORY[0x1DA7298F0](0x44495555776F6873, 0xEA0000000000203ALL);
  MEMORY[0x1DA7298F0](v1, v2);
  MEMORY[0x1DA7298F0](0xD000000000000017, 0x80000001D91CAAD0);
  if (v3)
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (v3)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x1DA7298F0](v6, v7);

  MEMORY[0x1DA7298F0](0xD000000000000010, 0x80000001D91CAAF0);
  type metadata accessor for MTPodcastEpisodeLimit(0);
  sub_1D917964C();
  MEMORY[0x1DA7298F0](0xD000000000000018, 0x80000001D91CAB10);
  if (v4)
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (v4)
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  MEMORY[0x1DA7298F0](v8, v9);

  MEMORY[0x1DA7298F0](0xD00000000000001ALL, 0x80000001D91CAB30);
  if (v5)
  {
    v10 = 1702195828;
  }

  else
  {
    v10 = 0x65736C6166;
  }

  if (v5)
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  MEMORY[0x1DA7298F0](v10, v11);

  MEMORY[0x1DA7298F0](0xD000000000000021, 0x80000001D91CAB50);
  if (v15)
  {
    v12 = 1702195828;
  }

  else
  {
    v12 = 0x65736C6166;
  }

  if (v15)
  {
    v13 = 0xE400000000000000;
  }

  else
  {
    v13 = 0xE500000000000000;
  }

  MEMORY[0x1DA7298F0](v12, v13);

  return 0;
}

void AutoDownloadProcessorDataSource.AutoDownloadContext.init(show:accountController:)(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = [a1 uuid];
  if (v6)
  {
    v7 = v6;
    v8 = sub_1D917820C();
    v10 = v9;

    if (os_feature_enabled_serial_sort_auto_downloads())
    {
      if ([a1 currentEpisodeLimitIsNextNEpisodes])
      {
        v11 = 256;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }

    v12 = [a1 currentEpisodeLimitAllowsAutomaticDownloads];
    v13 = [a1 episodeLimitResolvedValue];
    v14 = [a1 deletePlayedEpisodesResolvedValue];
    v15 = [a2 activeDsid];
    swift_unknownObjectRelease();

    if (v15)
    {

      v16 = 0;
    }

    else
    {
      v16 = 0x10000;
    }

    *a3 = v8;
    *(a3 + 8) = v10;
    *(a3 + 16) = v12;
    *(a3 + 24) = v13;
    *(a3 + 34) = BYTE2(v16);
    *(a3 + 32) = v11 | v14 | v16;
  }

  else
  {

    swift_unknownObjectRelease();
    *(a3 + 31) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }
}

id AutoDownloadProcessorDataSource.AutoDownloadContext.predicate.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 33);
  v4 = *(v0 + 34);
  v5 = objc_opt_self();
  v6 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v7 = [v5 predicateForAutomaticDownloadsOnShow:v6 deletePlayedEpisodes:v2 episodeLimit:v1 serialNextEpisodesSort:v3 includePlayableWithoutAccount:v4];

  return v7;
}

uint64_t sub_1D8E6EF28(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 35))
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

uint64_t sub_1D8E6EF70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 34) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 35) = 1;
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

    *(result + 35) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_1D8E6EFD8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
  }

  else
  {
  }

  return result;
}

uint64_t DownloadedAsset.episodeUuid.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DownloadedAsset.fileURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DownloadedAsset(0) + 20);
  v4 = sub_1D9176C2C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for DownloadedAsset(uint64_t a1)
{
  result = qword_1ECAB4D98;
  if (!qword_1ECAB4D98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DownloadedAsset.init(episodeUuid:fileURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  *(a4 + 1) = a2;
  v6 = *(type metadata accessor for DownloadedAsset(0) + 20);
  v7 = sub_1D9176C2C();
  v8 = *(*(v7 - 8) + 32);

  return v8(&a4[v6], a3, v7);
}

uint64_t static DownloadedAsset.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_1D9179ACC() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for DownloadedAsset(0);

  return sub_1D9176B8C();
}

uint64_t DownloadedAsset.hash(into:)(uint64_t a1)
{
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  type metadata accessor for DownloadedAsset(0);
  sub_1D9176C2C();
  sub_1D8D68AF0(&qword_1ECAB2CA8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  return sub_1D917814C();
}

uint64_t DownloadedAsset.hashValue.getter()
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  type metadata accessor for DownloadedAsset(0);
  sub_1D9176C2C();
  sub_1D8D68AF0(&qword_1ECAB2CA8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  sub_1D917814C();
  return sub_1D9179E1C();
}

uint64_t sub_1D8E6F344()
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  sub_1D9176C2C();
  sub_1D8D68AF0(&qword_1ECAB2CA8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  sub_1D917814C();
  return sub_1D9179E1C();
}

uint64_t sub_1D8E6F3EC(uint64_t a1)
{
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  sub_1D9176C2C();
  sub_1D8D68AF0(&qword_1ECAB2CA8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  return sub_1D917814C();
}

uint64_t sub_1D8E6F478(uint64_t a1)
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  sub_1D9176C2C();
  sub_1D8D68AF0(&qword_1ECAB2CA8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  sub_1D917814C();
  return sub_1D9179E1C();
}

uint64_t sub_1D8E6F564(uint64_t *a1, void *a2, uint64_t a3)
{
  v3 = *a1 == *a2 && a1[1] == a2[1];
  if (!v3 && (sub_1D9179ACC() & 1) == 0)
  {
    return 0;
  }

  return sub_1D9176B8C();
}

uint64_t sub_1D8E6F610(uint64_t a1)
{
  result = sub_1D9176C2C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t ICReachability.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = [objc_opt_self() sharedMonitor];
  return v0;
}

uint64_t sub_1D8E6F8B4()
{
  v1 = *(v0 + 16);
  [v1 networkType];
  if (ICEnvironmentNetworkTypeIsCellular())
  {
    v2 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
    v3 = [v2 BOOLForKey_];
  }

  else
  {
    v3 = 1;
  }

  return [v1 isRemoteServerLikelyReachable] & v3;
}

uint64_t sub_1D8E6F9AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(id))
{
  v4 = *(a1 + 16);

  v5 = a3([v4 networkType]);

  return v5;
}

id sub_1D8E6FA94()
{
  v0 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
  v1 = [v0 BOOLForKey_];

  return v1;
}

id sub_1D8E6FBD4()
{
  v0 = objc_opt_self();
  v1 = [v0 _applePodcastsFoundationSettingsUserDefaults];
  v2 = [v1 BOOLForKey_];

  if (!v2)
  {
    return 0;
  }

  v3 = [v0 _applePodcastsFoundationSharedUserDefaults];
  v4 = [v3 BOOLForKey_];

  return v4;
}

uint64_t ICReachability.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t AssetRemovalProcessorDelegate.didMatch(episodes:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4DA8, &qword_1D918DA00);
  v4 = *(v3 - 8);
  v99 = v3;
  v100 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v98 = &v62 - v5;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4DB0, &unk_1D918DA08);
  v72 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v7 = &v62 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D70, &unk_1D918BCE0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v62 - v9;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4DB8, &qword_1D918DA18);
  v78 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v12 = &v62 - v11;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4DC0, &qword_1D918DA20);
  v82 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v66 = &v62 - v13;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4DC8, &qword_1D918DA28);
  v81 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v15 = &v62 - v14;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4DD0, &qword_1D918DA30);
  v84 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v68 = &v62 - v16;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4DD8, &qword_1D918DA38);
  v86 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v69 = &v62 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4DE0, &qword_1D918DA40);
  v19 = *(v18 - 8);
  v89 = v18;
  v90 = v19;
  MEMORY[0x1EEE9AC00](v18);
  v71 = &v62 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4DE8, &qword_1D918DA48);
  v22 = *(v21 - 8);
  v92 = v21;
  v93 = v22;
  MEMORY[0x1EEE9AC00](v21);
  v87 = &v62 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4DF0, &qword_1D918DA50);
  v25 = *(v24 - 8);
  v96 = v24;
  v97 = v25;
  MEMORY[0x1EEE9AC00](v24);
  v88 = &v62 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4DF8, &qword_1D918DA58);
  v28 = *(v27 - 8);
  v94 = v27;
  v95 = v28;
  MEMORY[0x1EEE9AC00](v27);
  v91 = &v62 - v29;
  v30 = v1[8];
  v31 = v1[9];
  v62 = v1;
  __swift_project_boxed_opaque_existential_1(v1 + 5, v30);
  v32 = (*(v31 + 8))(a1, v30, v31);
  v75 = v1[10];
  v33 = v75;
  v74 = sub_1D9178DBC();
  v34 = *(v74 - 8);
  v73 = *(v34 + 56);
  v76 = v34 + 56;
  v73(v10, 1, 1, v74);
  *&v101 = v33;
  v102 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4E00, &qword_1D918DA60);
  v35 = sub_1D8CFD888();
  v63 = MEMORY[0x1E695BED8];
  sub_1D8CF48EC(&qword_1ECAB4E08, &qword_1ECAB4E00, &qword_1D918DA60, MEMORY[0x1E695BED8]);
  v36 = sub_1D8D02DF0();
  v65 = v35;
  v64 = v36;
  sub_1D9177D3C();
  v67 = MEMORY[0x1E695BCB8];
  sub_1D8CF48EC(&qword_1ECAB4E10, &qword_1ECAB4DB0, &unk_1D918DA08, MEMORY[0x1E695BCB8]);
  v37 = v70;
  sub_1D9177CEC();

  (*(v72 + 8))(v7, v37);
  sub_1D8D2210C(v10);
  sub_1D91777FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4E18, &qword_1D918DA68);
  v72 = MEMORY[0x1E695BE98];
  sub_1D8CF48EC(&qword_1ECAB4E20, &qword_1ECAB4DB8, &qword_1D918DA18, MEMORY[0x1E695BE98]);
  sub_1D8CF48EC(&qword_1ECAB4E28, &qword_1ECAB4E18, &qword_1D918DA68, MEMORY[0x1E695BE60]);
  v38 = v66;
  v39 = v77;
  sub_1D9177CAC();
  (*(v78 + 8))(v12, v39);
  swift_getKeyPath();
  v78 = MEMORY[0x1E695BE40];
  sub_1D8CF48EC(&qword_1ECAB4E30, &qword_1ECAB4DC0, &qword_1D918DA20, MEMORY[0x1E695BE40]);
  v40 = v79;
  sub_1D9177B8C();

  (*(v82 + 8))(v38, v40);
  sub_1D8CF48EC(&qword_1ECAB4E38, &qword_1ECAB4DC8, &qword_1D918DA28, MEMORY[0x1E695BC98]);
  v41 = v68;
  v42 = v80;
  sub_1D9177C8C();
  (*(v81 + 8))(v15, v42);
  sub_1D8CF48EC(&qword_1ECAB4E40, &qword_1ECAB4DD0, &qword_1D918DA30, MEMORY[0x1E695BE38]);
  v43 = v69;
  v44 = v83;
  sub_1D9177C4C();
  (*(v84 + 8))(v41, v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB4F30, &qword_1D918DA90);
  sub_1D8CF48EC(&qword_1ECAB4E48, &qword_1ECAB4DD8, &qword_1D918DA38, MEMORY[0x1E695BDE0]);
  v45 = v71;
  v46 = v85;
  sub_1D9177B9C();
  (*(v86 + 8))(v43, v46);
  sub_1D8CFD9D8((v62 + 5), &v101);
  v47 = swift_allocObject();
  sub_1D8D6BCE0(&v101, v47 + 16);
  v48 = swift_allocObject();
  *(v48 + 16) = sub_1D8E70E5C;
  *(v48 + 24) = v47;
  sub_1D91777FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4E50, &qword_1D918DA98);
  v49 = MEMORY[0x1E695BD60];
  sub_1D8CF48EC(&qword_1ECAB4E58, &qword_1ECAB4DE0, &qword_1D918DA40, MEMORY[0x1E695BD60]);
  sub_1D8CF48EC(&qword_1ECAB4E60, &qword_1ECAB4E50, &qword_1D918DA98, v63);
  v50 = v87;
  v51 = v89;
  sub_1D9177CBC();

  (*(v90 + 8))(v45, v51);
  v73(v10, 1, 1, v74);
  *&v101 = v75;
  sub_1D8CF48EC(&qword_1ECAB4E68, &qword_1ECAB4DE8, &qword_1D918DA48, v78);
  v52 = v98;
  v53 = v92;
  v54 = v50;
  sub_1D9177D3C();
  sub_1D8CF48EC(&qword_1ECAB4E70, &qword_1ECAB4DA8, &qword_1D918DA00, v67);
  v55 = v88;
  v56 = v99;
  sub_1D9177CEC();
  (*(v100 + 8))(v52, v56);
  sub_1D8D2210C(v10);
  (*(v93 + 8))(v54, v53);
  sub_1D8CF48EC(&qword_1ECAB4E78, &qword_1ECAB4DF0, &qword_1D918DA50, v72);
  v57 = v91;
  v58 = v96;
  sub_1D9177B9C();
  (*(v97 + 8))(v55, v58);
  sub_1D8CF48EC(&qword_1ECAB4E80, &qword_1ECAB4DF8, &qword_1D918DA58, v49);
  v59 = v94;
  v60 = sub_1D9177B1C();
  (*(v95 + 8))(v57, v59);
  return v60;
}

uint64_t sub_1D8E70D0C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB4E90, &qword_1D918DB30);
  sub_1D8CF48EC(&qword_1ECAB4E88, &unk_1ECAB4E90, &qword_1D918DB30, MEMORY[0x1E69E6328]);
  return sub_1D917841C();
}

double sub_1D8E70DA0()
{
  swift_getKeyPath();

  swift_getAtKeyPath();

  return result;
}

void sub_1D8E70E14(uint64_t *a2@<X8>)
{

  v4 = sub_1D8FC0F28(v3);

  *a2 = v4;
}

uint64_t sub_1D8E70E5C(uint64_t a1)
{
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  return (*(v4 + 16))(a1, v3, v4);
}

uint64_t sub_1D8E70EB8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  return result;
}

void sub_1D8E70EEC(uint64_t *a1)
{
  if (qword_1EDCD0F18 != -1)
  {
    swift_once();
  }

  v1 = sub_1D917744C();
  __swift_project_value_buffer(v1, qword_1EDCD0F20);

  oslog = sub_1D917741C();
  v2 = sub_1D9178CFC();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136315138;
    v5 = sub_1D9178AAC();
    v7 = sub_1D8CFA924(v5, v6, &v9);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_1D8CEC000, oslog, v2, "Automatically removed episodes: %s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    MEMORY[0x1DA72CB90](v4, -1, -1);
    MEMORY[0x1DA72CB90](v3, -1, -1);
  }
}

uint64_t sub_1D8E71064(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_1D8E710AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t AutoDownloadProcessorDownloader.didMatch(episodes:)(uint64_t a1)
{
  v72 = a1;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4EA8, &qword_1D918DB78);
  v99 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v97 = v65 - v2;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4EB0, &qword_1D918DB80);
  v96 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v89 = v65 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB4EB8, &unk_1D918DB88);
  v67 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v65 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D70, &unk_1D918BCE0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v65 - v8;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4EC8, &qword_1D918DB98);
  v69 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v11 = v65 - v10;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4ED0, &qword_1D918DBA0);
  v75 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v66 = v65 - v12;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4ED8, &qword_1D918DBA8);
  v77 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v70 = v65 - v13;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4EE0, &qword_1D918DBB0);
  v79 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v71 = v65 - v14;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4EE8, &qword_1D918DBB8);
  v84 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v73 = v65 - v15;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4EF0, &qword_1D918DBC0);
  v86 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v80 = v65 - v16;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4EF8, &qword_1D918DBC8);
  v90 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v81 = v65 - v17;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F00, &qword_1D918DBD0);
  v94 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v82 = v65 - v18;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F08, &qword_1D918DBD8);
  v93 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v87 = v65 - v19;
  v20 = v1[2];
  v110 = v1[1];
  v111 = v20;
  v109 = *v1;
  v112 = *(v1 + 6);
  v21 = v20;
  v22 = type metadata accessor for AnalyticsEvent();
  v23 = objc_allocWithZone(v22);
  *&v23[OBJC_IVAR___PFAnalyticsEvent_name] = @"com.apple.podcasts.downloads.settings.global.retention-policy";
  v24 = &v23[OBJC_IVAR___PFAnalyticsEvent_payloadGenerator];
  *v24 = sub_1D8D6F298;
  v24[1] = 0;
  v108.receiver = v23;
  v108.super_class = v22;
  v25 = @"com.apple.podcasts.downloads.settings.global.retention-policy";
  v26 = objc_msgSendSuper2(&v108, sel_init);
  [v21 sendEvent_];

  v27 = swift_allocObject();
  v28 = v110;
  *(v27 + 16) = v109;
  *(v27 + 32) = v28;
  *(v27 + 48) = v111;
  *(v27 + 64) = v112;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F10, &qword_1D918DBE0);
  swift_allocObject();
  sub_1D8E73BF0(&v109, &v107);
  v29 = sub_1D9177A5C();
  v30 = *(&v111 + 1);
  v104 = *(&v111 + 1);
  v103 = sub_1D9178DBC();
  v31 = *(v103 - 8);
  v102 = *(v31 + 56);
  v105 = v31 + 56;
  v102(v9, 1, 1, v103);
  v106 = v29;
  v107 = v30;
  v32 = sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  v65[0] = MEMORY[0x1E695C038];
  sub_1D8CF48EC(&qword_1ECAB0240, &qword_1ECAB4F10, &qword_1D918DBE0, MEMORY[0x1E695C038]);
  v33 = sub_1D8D02DF0();
  v100 = v32;
  v65[1] = v33;
  sub_1D9177D3C();
  v101 = MEMORY[0x1E695BCB8];
  sub_1D8CF48EC(&qword_1ECAB0A00, &unk_1ECAB4EB8, &unk_1D918DB88, MEMORY[0x1E695BCB8]);
  sub_1D9177CEC();

  (*(v67 + 8))(v6, v4);
  sub_1D8D2210C(v9);
  *(swift_allocObject() + 16) = v72;

  sub_1D91777FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F18, &qword_1D918DBE8);
  v72 = MEMORY[0x1E695BE98];
  sub_1D8CF48EC(&qword_1ECAB0420, &qword_1ECAB4EC8, &qword_1D918DB98, MEMORY[0x1E695BE98]);
  sub_1D8CF48EC(&qword_1ECAB0348, &qword_1ECAB4F18, &qword_1D918DBE8, MEMORY[0x1E695BED8]);
  v34 = v66;
  v35 = v68;
  sub_1D9177DDC();

  (*(v69 + 8))(v11, v35);
  v36 = swift_allocObject();
  v37 = v110;
  *(v36 + 16) = v109;
  *(v36 + 32) = v37;
  *(v36 + 48) = v111;
  *(v36 + 64) = v112;
  v38 = swift_allocObject();
  *(v38 + 16) = sub_1D8E73C30;
  *(v38 + 24) = v36;
  sub_1D8E73BF0(&v109, &v107);
  sub_1D91777FC();
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB4F20, &unk_1D918DBF0);
  v39 = MEMORY[0x1E695BE40];
  sub_1D8CF48EC(&qword_1ECAB05D8, &qword_1ECAB4ED0, &qword_1D918DBA0, MEMORY[0x1E695BE40]);
  v69 = sub_1D8CF48EC(&unk_1ECAB0230, &unk_1ECAB4F20, &unk_1D918DBF0, v65[0]);
  v40 = v70;
  v41 = v74;
  sub_1D9177DCC();

  (*(v75 + 8))(v34, v41);
  sub_1D8CF48EC(&qword_1ECAB0588, &qword_1ECAB4ED8, &qword_1D918DBA8, v39);
  v42 = v71;
  v43 = v76;
  sub_1D9177C4C();
  (*(v77 + 8))(v40, v43);
  v102(v9, 1, 1, v103);
  v107 = v104;
  v77 = MEMORY[0x1E695BDE0];
  sub_1D8CF48EC(&qword_1ECAB06B0, &qword_1ECAB4EE0, &qword_1D918DBB0, MEMORY[0x1E695BDE0]);
  v44 = v89;
  v45 = v78;
  sub_1D9177D3C();
  sub_1D8CF48EC(&qword_1ECAB09C8, &qword_1ECAB4EB0, &qword_1D918DB80, v101);
  v46 = v73;
  v47 = v95;
  sub_1D9177CEC();
  (*(v96 + 8))(v44, v47);
  sub_1D8D2210C(v9);
  (*(v79 + 8))(v42, v45);
  v48 = swift_allocObject();
  v49 = v110;
  *(v48 + 16) = v109;
  *(v48 + 32) = v49;
  *(v48 + 48) = v111;
  *(v48 + 64) = v112;
  v50 = swift_allocObject();
  *(v50 + 16) = sub_1D8E73C9C;
  *(v50 + 24) = v48;
  sub_1D8E73BF0(&v109, &v107);
  sub_1D91777FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB4F30, &qword_1D918DA90);
  v51 = v72;
  sub_1D8CF48EC(&qword_1ECAB03F8, &qword_1ECAB4EE8, &qword_1D918DBB8, v72);
  v52 = v80;
  v53 = v83;
  sub_1D9177CBC();

  (*(v84 + 8))(v46, v53);
  sub_1D8CF48EC(&qword_1ECAB0580, &qword_1ECAB4EF0, &qword_1D918DBC0, v39);
  v54 = v81;
  v55 = v85;
  sub_1D9177C4C();
  (*(v86 + 8))(v52, v55);
  v102(v9, 1, 1, v103);
  v107 = v104;
  sub_1D8CF48EC(&qword_1ECAB06A8, &qword_1ECAB4EF8, &qword_1D918DBC8, v77);
  v56 = v97;
  v57 = v88;
  sub_1D9177D3C();
  sub_1D8CF48EC(&qword_1ECAB09D0, &qword_1ECAB4EA8, &qword_1D918DB78, v101);
  v58 = v82;
  v59 = v98;
  sub_1D9177CEC();
  (*(v99 + 8))(v56, v59);
  sub_1D8D2210C(v9);
  (*(v90 + 8))(v54, v57);
  sub_1D8CF48EC(&unk_1ECAB03E8, &qword_1ECAB4F00, &qword_1D918DBD0, v51);
  v60 = v87;
  v61 = v92;
  sub_1D9177B9C();
  (*(v94 + 8))(v58, v61);
  sub_1D8CF48EC(&qword_1ECAB0730, &qword_1ECAB4F08, &qword_1D918DBD8, MEMORY[0x1E695BD60]);
  v62 = v91;
  v63 = sub_1D9177B1C();
  (*(v93 + 8))(v60, v62);
  return v63;
}

uint64_t sub_1D8E7232C@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F48, &qword_1D918DCE8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v16 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB4F50, &unk_1D918DCF0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v16 - v12;
  if (*a1 == 1)
  {
    v16[1] = a2;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB4F30, &qword_1D918DA90);
    sub_1D9177A0C();
    sub_1D8CF48EC(&qword_1ECAB02C0, &unk_1ECAB4F50, &unk_1D918DCF0, MEMORY[0x1E695C008]);
    v14 = sub_1D9177B1C();
    result = (*(v11 + 8))(v13, v10);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB4F30, &qword_1D918DA90);
    sub_1D9177A1C();
    sub_1D8CF48EC(&qword_1ECAB0298, &qword_1ECAB4F48, &qword_1D918DCE8, MEMORY[0x1E695C018]);
    v14 = sub_1D9177B1C();
    result = (*(v7 + 8))(v9, v6);
  }

  *a3 = v14;
  return result;
}

uint64_t sub_1D8E725A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_allocObject();
  v7 = *(a2 + 16);
  *(v6 + 16) = *a2;
  *(v6 + 32) = v7;
  *(v6 + 48) = *(a2 + 32);
  *(v6 + 64) = *(a2 + 48);
  *(v6 + 72) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB4F20, &unk_1D918DBF0);
  swift_allocObject();
  sub_1D8E73BF0(a2, v9);

  return sub_1D9177A5C();
}

void sub_1D8E7265C(uint64_t *a1)
{
  if (qword_1EDCD0F18 != -1)
  {
    swift_once();
  }

  v1 = sub_1D917744C();
  __swift_project_value_buffer(v1, qword_1EDCD0F20);

  oslog = sub_1D917741C();
  v2 = sub_1D9178CFC();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136315138;
    v5 = sub_1D9178AAC();
    v7 = sub_1D8CFA924(v5, v6, &v9);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_1D8CEC000, oslog, v2, "Failed to start downloads for episodes: %s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    MEMORY[0x1DA72CB90](v4, -1, -1);
    MEMORY[0x1DA72CB90](v3, -1, -1);
  }
}

uint64_t sub_1D8E727D0(void (*a1)(_OWORD *), uint64_t a2, uint64_t *a3)
{
  v6 = sub_1D9177E0C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D9177E9C();
  v26 = *(v10 - 8);
  v27 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  v14 = *a3;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1D8E73E30;
  *(v15 + 24) = v13;
  v16 = *(a3 + 1);
  *(v15 + 32) = *a3;
  *(v15 + 48) = v16;
  *(v15 + 64) = *(a3 + 2);
  *(v15 + 80) = a3[6];
  if (*(v14 + OBJC_IVAR___MTDeviceCapacityMonitor_vfsSource))
  {
    v17 = OBJC_IVAR___MTDeviceCapacityMonitor____capacityLevel;
    swift_beginAccess();
    v18 = *(v14 + v17);

    sub_1D8E73BF0(a3, v28);

    os_unfair_lock_lock((v18 + 24));
    v19 = *(v18 + 16);
    os_unfair_lock_unlock((v18 + 24));

    v20 = *(a3 + 1);
    v28[0] = *a3;
    v28[1] = v20;
    v28[2] = *(a3 + 2);
    v29 = a3[6];
    LOBYTE(v28[0]) = sub_1D8E72C28(v19) & 1;
    LOWORD(v28[0]) = LOBYTE(v28[0]);
    a1(v28);
  }

  else
  {
    v25[1] = *(v14 + OBJC_IVAR___MTDeviceCapacityMonitor_diskAccessQueue);
    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v22 = swift_allocObject();
    v22[2] = v21;
    v22[3] = sub_1D8E73E70;
    v22[4] = v15;
    aBlock[4] = sub_1D8E73ED0;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D8CF5F60;
    aBlock[3] = &block_descriptor_59;
    v25[0] = _Block_copy(aBlock);

    sub_1D8E73BF0(a3, v28);

    sub_1D9177E4C();
    *&v28[0] = MEMORY[0x1E69E7CC0];
    sub_1D8CFBBB0(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
    sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0, MEMORY[0x1E69E6328]);
    sub_1D91792CC();
    v23 = v25[0];
    MEMORY[0x1DA72A400](0, v12, v9, v25[0]);
    _Block_release(v23);

    (*(v7 + 8))(v9, v6);
    (*(v26 + 8))(v12, v27);
  }
}

uint64_t sub_1D8E72C28(uint64_t a1)
{
  v3 = *(v1 + 8);
  v4 = [objc_opt_self() processInfo];
  v5 = [v4 isLowPowerModeEnabled];

  if (v5)
  {
    if (qword_1EDCD0F18 != -1)
    {
      swift_once();
    }

    v6 = sub_1D917744C();
    __swift_project_value_buffer(v6, qword_1EDCD0F20);
    v7 = sub_1D917741C();
    v8 = sub_1D9178CDC();
    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_19;
    }

    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = "Skipping autodownloads - Low Power Mode";
LABEL_18:
    _os_log_impl(&dword_1D8CEC000, v7, v8, v10, v9, 2u);
    MEMORY[0x1DA72CB90](v9, -1, -1);
LABEL_19:

    return 0;
  }

  if (a1)
  {
    if (qword_1EDCD0F18 != -1)
    {
      swift_once();
    }

    v11 = sub_1D917744C();
    __swift_project_value_buffer(v11, qword_1EDCD0F20);
    v7 = sub_1D917741C();
    v8 = sub_1D9178CDC();
    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_19;
    }

    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = "Skipping autodownloads - Device is out of storage";
    goto LABEL_18;
  }

  if (![v3 isReachable])
  {
    if (qword_1EDCD0F18 != -1)
    {
      swift_once();
    }

    v13 = sub_1D917744C();
    __swift_project_value_buffer(v13, qword_1EDCD0F20);
    v7 = sub_1D917741C();
    v8 = sub_1D9178CDC();
    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_19;
    }

    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = "Skipping autodownloads - network unreachable";
    goto LABEL_18;
  }

  if ([v3 isReachableViaCellular])
  {
    return [v3 isPodcastsCellularDownloadsEnabled];
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1D8E72EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = swift_allocObject();
  v10 = *(a3 + 16);
  v24[0] = *a3;
  v24[1] = v10;
  v24[2] = *(a3 + 32);
  v25 = *(a3 + 48);

  *(v9 + 16) = sub_1D8E73118();
  v11 = swift_allocObject();
  v12 = v11;
  *(v11 + 16) = MEMORY[0x1E69E7CD0];
  v13 = *(a4 + 16);
  if (!v13)
  {
    v14 = MEMORY[0x1E69E7CC0];
    goto LABEL_5;
  }

  v22 = v11;
  v14 = sub_1D8D1B418(v13, 0);
  v15 = sub_1D8D1B42C(v24, v14 + 4, v13, a4);
  v16 = *&v24[0];

  result = sub_1D8D1B144(v16);
  if (v15 == v13)
  {
    v12 = v22;
LABEL_5:
    v18 = *(a3 + 24);
    v19 = swift_allocObject();
    v20 = *(a3 + 16);
    *(v19 + 16) = *a3;
    *(v19 + 32) = v20;
    *(v19 + 48) = *(a3 + 32);
    *(v19 + 64) = *(a3 + 48);
    *(v19 + 72) = v14;
    *(v19 + 80) = a4;
    *(v19 + 88) = sub_1D8D49C40;
    *(v19 + 96) = v8;
    *(v19 + 104) = v9;
    *(v19 + 112) = v12;
    aBlock[4] = sub_1D8E73E1C;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D8CF5F60;
    aBlock[3] = &block_descriptor_44;
    v21 = _Block_copy(aBlock);

    sub_1D8E73BF0(a3, v24);

    [v18 performBlock_];
    _Block_release(v21);
  }

  __break(1u);
  return result;
}

id sub_1D8E73118()
{
  v33[4] = *MEMORY[0x1E69E9840];
  v0 = sub_1D9176C2C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() sharedDocumentsDirectory];
  sub_1D9176B9C();

  sub_1D9176BCC();
  (*(v1 + 8))(v3, v0);
  v5 = [objc_opt_self() defaultManager];
  v6 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v33[0] = 0;
  v7 = [v5 attributesOfFileSystemForPath:v6 error:v33];

  v8 = v33[0];
  if (v7)
  {
    type metadata accessor for FileAttributeKey(0);
    sub_1D8CFBBB0(&qword_1ECAAFD58, type metadata accessor for FileAttributeKey, &unk_1D91881F4);
    v9 = sub_1D917805C();
    v10 = v8;

    if (*(v9 + 16) && (v11 = sub_1D8F06900(*MEMORY[0x1E696A3C0]), (v12 & 1) != 0))
    {
      sub_1D8CFAD1C(*(v9 + 56) + 32 * v11, v33);

      sub_1D8CF2154(0, qword_1EDCD0810, 0x1E696AD98);
      if (swift_dynamicCast())
      {
        v13 = v32;
        v14 = [v32 longLongValue];

        return v14;
      }
    }

    else
    {
    }
  }

  else
  {
    v16 = v33[0];
    v17 = sub_1D9176A6C();

    swift_willThrow();
    if (qword_1EDCD0F18 != -1)
    {
      swift_once();
    }

    v18 = sub_1D917744C();
    __swift_project_value_buffer(v18, qword_1EDCD0F20);
    v19 = sub_1D917741C();
    v20 = sub_1D9178CFC();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1D8CEC000, v19, v20, "Unable to compute free space, autodownload system will not download anything", v21, 2u);
      MEMORY[0x1DA72CB90](v21, -1, -1);
    }

    v22 = v17;
    v23 = sub_1D917741C();
    v24 = sub_1D9178CFC();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v33[0] = v26;
      *v25 = 136315138;
      v32 = v17;
      v27 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
      v28 = sub_1D917826C();
      v30 = sub_1D8CFA924(v28, v29, v33);

      *(v25 + 4) = v30;
      _os_log_impl(&dword_1D8CEC000, v23, v24, "%s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x1DA72CB90](v26, -1, -1);
      MEMORY[0x1DA72CB90](v25, -1, -1);
    }

    else
    {
    }
  }

  return 0;
}

double sub_1D8E735AC(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *(a1 + 24);
  v10 = sub_1D91785DC();
  v11 = [v9 episodesForUuids_];

  if (!v11)
  {
    if (qword_1EDCD0F18 == -1)
    {
LABEL_7:
      v15 = sub_1D917744C();
      __swift_project_value_buffer(v15, qword_1EDCD0F20);

      v16 = sub_1D917741C();
      v17 = sub_1D9178CFC();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v46[0] = v19;
        *v18 = 136315138;
        v20 = sub_1D9178AAC();
        v22 = sub_1D8CFA924(v20, v21, v46);

        *(v18 + 4) = v22;
        _os_log_impl(&dword_1D8CEC000, v16, v17, "Unable to retreive episodes for identifiers: %s", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v19);
        MEMORY[0x1DA72CB90](v19, -1, -1);
        MEMORY[0x1DA72CB90](v18, -1, -1);
      }

      (a4)(MEMORY[0x1E69E7CD0], 0);
      return result;
    }

LABEL_34:
    swift_once();
    goto LABEL_7;
  }

  sub_1D8CF2154(0, &qword_1EDCD5B00, off_1E85675C8);
  v12 = sub_1D91785FC();

  if (sub_1D90F6CB0() <= 0)
  {
    v13 = 209715200;
    v14 = a6;
    if (v12 < 0 || (v12 & 0x4000000000000000) != 0)
    {
      goto LABEL_37;
    }

LABEL_12:
    v24 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v24)
    {
      goto LABEL_38;
    }

    goto LABEL_13;
  }

  v13 = sub_1D90F6CB0();
  if (v12 < 0)
  {
    goto LABEL_36;
  }

  v14 = a6;
  if ((v12 & 0x4000000000000000) == 0)
  {
    goto LABEL_12;
  }

LABEL_37:
  v24 = sub_1D917935C();
  if (v24)
  {
LABEL_13:
    if (v24 >= 1)
    {
      v41 = a5;
      v42 = a4;
      a5 = v12 & 0xC000000000000001;
      swift_beginAccess();
      swift_beginAccess();
      a4 = 0;
      while (1)
      {
        if (a5)
        {
          v25 = MEMORY[0x1DA72AA90](a4, v12);
        }

        else
        {
          v25 = *(v12 + 8 * a4 + 32);
        }

        v26 = v25;
        v27 = *(v14 + 16);
        v28 = [v25 byteSize];
        if (__OFSUB__(v27, v28))
        {
          __break(1u);
          break;
        }

        if (v13 < v27 - v28 && (v29 = [v26 uuid]) != 0)
        {
          v30 = v29;
          v31 = sub_1D917820C();
          v33 = v32;

          v34 = [v26 podcast];
          if (!v34)
          {
            goto LABEL_27;
          }

          v35 = v34;
          if (([v34 hidden] & 1) != 0 || objc_msgSend(v35, sel_isAuthenticatedDark))
          {

LABEL_27:

            v14 = a6;
            goto LABEL_16;
          }

          v43 = [v35 isPastAutodownloadOrEpisodeLimitDark];

          if (v43)
          {
            goto LABEL_27;
          }

          swift_beginAccess();
          sub_1D8D19AFC(&v45, v31, v33);
          swift_endAccess();

          v36 = [v26 byteSize];

          v14 = a6;
          v37 = *(a6 + 16);
          v38 = __OFSUB__(v37, v36);
          v39 = v37 - v36;
          if (v38)
          {
            __break(1u);
LABEL_36:
            v14 = a6;
            goto LABEL_37;
          }

          *(a6 + 16) = v39;
        }

        else
        {
        }

LABEL_16:
        if (v24 == ++a4)
        {

          a4 = v42;
          goto LABEL_39;
        }
      }
    }

    __break(1u);
    goto LABEL_34;
  }

LABEL_38:

LABEL_39:
  swift_beginAccess();

  (a4)(v40, 0);

  return result;
}

void sub_1D8E73A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = *(a3 + 16);

  v9 = sub_1D9178A8C();
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1D8D9F2C8;
  *(v10 + 24) = v7;
  v12[4] = sub_1D8E73D74;
  v12[5] = v10;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1D8E73B6C;
  v12[3] = &block_descriptor_7;
  v11 = _Block_copy(v12);

  [v8 addEpisodeAutoDownloads:v9 completion:v11];
  _Block_release(v11);
}

double sub_1D8E73B6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = sub_1D9178A9C();

  v2(v3);

  return result;
}

uint64_t sub_1D8E73C68@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1D8E73CD4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1D8E73D1C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t objectdestroy_18Tm()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D8E73E30(__int16 a1)
{
  v2 = *(v1 + 16);
  v4 = a1 & 0x1FF;
  return v2(&v4);
}

uint64_t sub_1D8E73E70(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = sub_1D8E72C28(a1);
  return v2(v3 & 1);
}

uint64_t CoreDataEpisodeAndShowStorage.__allocating_init(context:)(void *a1)
{
  v2 = swift_allocObject();
  CoreDataEpisodeAndShowStorage.init(context:)(a1);
  return v2;
}

uint64_t CoreDataEpisodeAndShowStorage.episodeChanges.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t CoreDataEpisodeAndShowStorage.showChanges.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  a1[1] = v2;
}

void sub_1D8E73FDC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = sub_1D8D49C40;
  v9[5] = v8;
  v13[4] = sub_1D8E74E98;
  v13[5] = v9;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1D8CF5F60;
  v13[3] = &block_descriptor_36;
  v10 = _Block_copy(v13);

  v11 = a3;
  v12 = a4;

  [v11 performBlock_];
  _Block_release(v10);
}

uint64_t sub_1D8E74140(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v7 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
  [v7 setPredicate_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C50, &unk_1D918DD10);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1D918A530;
  v9 = sub_1D917820C();
  v10 = MEMORY[0x1E69E6158];
  *(v8 + 56) = MEMORY[0x1E69E6158];
  *(v8 + 32) = v9;
  *(v8 + 40) = v11;
  v12 = sub_1D917820C();
  *(v8 + 88) = v10;
  *(v8 + 64) = v12;
  *(v8 + 72) = v13;
  v14 = sub_1D91785DC();

  [v7 setPropertiesToFetch_];

  [v7 setResultType_];
  v15 = *(v5 + 64);
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4B60, &unk_1D918C270);
  swift_allocObject();
  v17 = v15;
  v18 = v7;
  sub_1D9177A5C();
  sub_1D8CF48EC(&unk_1EDCD0AB8, &qword_1ECAB4B60, &unk_1D918C270, MEMORY[0x1E695C038]);
  v19 = sub_1D9177B1C();

  return v19;
}

void sub_1D8E74328(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = sub_1D8D9F2C8;
  v9[5] = v8;
  v13[4] = sub_1D8E74E70;
  v13[5] = v9;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1D8CF5F60;
  v13[3] = &block_descriptor_8;
  v10 = _Block_copy(v13);

  v11 = a3;
  v12 = a4;

  [v11 performBlock_];
  _Block_release(v10);
}

double sub_1D8E7445C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_1D8CF2154(0, &qword_1EDCD0A20, 0x1E695DF20);
  v4 = sub_1D917908C();
  v5 = v4;
  v6 = v4 & 0xFFFFFFFFFFFFFF8;
  if (v4 >> 62)
  {
LABEL_28:
    v7 = sub_1D917935C();
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_29:
    v21 = MEMORY[0x1E69E7CC0];
    goto LABEL_30;
  }

  v7 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    goto LABEL_29;
  }

LABEL_3:
  v8 = 0;
  v21 = MEMORY[0x1E69E7CC0];
  v20 = a3;
  do
  {
    a3 = v8;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1DA72AA90](a3, v5);
      }

      else
      {
        if (a3 >= *(v6 + 16))
        {
          goto LABEL_27;
        }

        v9 = *(v5 + 8 * a3 + 32);
      }

      v10 = v9;
      v8 = a3 + 1;
      if (__OFADD__(a3, 1))
      {
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      *&v22 = sub_1D917820C();
      *(&v22 + 1) = v11;
      v12 = [v10 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (v12)
      {
        sub_1D917928C();
        swift_unknownObjectRelease();
      }

      else
      {

        v22 = 0u;
        v23 = 0u;
      }

      v24[0] = v22;
      v24[1] = v23;
      if (*(&v23 + 1))
      {
        break;
      }

      sub_1D8D64450(v24);
LABEL_6:
      ++a3;
      if (v8 == v7)
      {
        a3 = v20;
        goto LABEL_30;
      }
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_6;
    }

    v13 = v26;
    if (!v26)
    {
      goto LABEL_6;
    }

    v14 = v25;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v21 = sub_1D8D4241C(0, *(v21 + 2) + 1, 1, v21);
    }

    v17 = *(v21 + 2);
    v16 = *(v21 + 3);
    if (v17 >= v16 >> 1)
    {
      v21 = sub_1D8D4241C((v16 > 1), v17 + 1, 1, v21);
    }

    *(v21 + 2) = v17 + 1;
    v18 = &v21[16 * v17];
    *(v18 + 4) = v14;
    *(v18 + 5) = v13;
    a3 = v20;
  }

  while (v8 != v7);
LABEL_30:
  (a3)(v21, 0);

  return result;
}

uint64_t sub_1D8E7475C(uint64_t a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
  [v3 setPredicate_];
  [v3 setResultType_];
  v4 = *(v1 + 64);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  v6 = swift_allocObject();
  v6[2] = v4;
  v6[3] = sub_1D8E74950;
  v6[4] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F78, &qword_1D918DD20);
  swift_allocObject();
  v7 = v3;
  v8 = v4;
  sub_1D9177A5C();
  sub_1D8CF48EC(&qword_1ECAB0250, &qword_1ECAB4F78, &qword_1D918DD20, MEMORY[0x1E695C038]);
  v9 = sub_1D9177B1C();

  return v9;
}

uint64_t sub_1D8E748E8@<X0>(uint64_t *a2@<X8>)
{
  sub_1D8CF2154(0, &qword_1EDCD09D0, 0x1E695D630);
  result = sub_1D917908C();
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_1D8E7496C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v6 = a1 + 56;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 56);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  while (v9)
  {
    v12 = v11;
LABEL_9:
    v13 = (*(a1 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
    v9 &= v9 - 1;
    v14 = *v13;
    v15 = v13[1];
    swift_bridgeObjectRetain_n();
    sub_1D91778BC();

    sub_1D8E74E58(v14, v15, a4);
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v10)
    {

      return;
    }

    v9 = *(v6 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
}