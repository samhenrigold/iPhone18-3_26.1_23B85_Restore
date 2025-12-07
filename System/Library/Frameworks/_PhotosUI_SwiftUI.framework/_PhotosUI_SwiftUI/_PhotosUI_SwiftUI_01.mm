uint64_t sub_1D29C09A0(uint64_t a1)
{
  result = sub_1D29C3FF4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1D29C0A3C(uint64_t a1)
{
  sub_1D29C1F28(319, qword_1EE087938, MEMORY[0x1E69E8450], MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PhotosPickerItem.Content(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1D29C0B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1D29C0BC0(uint64_t a1)
{
  sub_1D29C1FF0(319, &qword_1EC6FDF08, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  if (v2 <= 0x3F)
  {
    sub_1D29C1F8C(319, &qword_1EE0876B8, &qword_1EC6FDB20, &qword_1D29C5A50, MEMORY[0x1E6981948]);
    if (v3 <= 0x3F)
    {
      sub_1D29C1FF0(319, &qword_1EE087660, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
      if (v4 <= 0x3F)
      {
        sub_1D29C1F28(319, &qword_1EC6FDF10, MEMORY[0x1E697BF90], MEMORY[0x1E697DCC0]);
        if (v5 <= 0x3F)
        {
          sub_1D29C42F4();
          if (v8 <= 0x3F)
          {
            type metadata accessor for UncheckedSendable(319, *(a1 + 16), v6, v7);
            if (v9 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1D29C0D50(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_1D29C3C34() - 8);
  if (*(v6 + 64) <= 8uLL)
  {
    v7 = 8;
  }

  else
  {
    v7 = *(v6 + 64);
  }

  v8 = sub_1D29C42F4();
  v9 = *(v8 - 8);
  v10 = *(a3 + 16);
  v11 = *(v10 - 8);
  v12 = *(v9 + 84);
  v13 = *(v11 + 84);
  if (v12 <= v13)
  {
    v14 = *(v11 + 84);
  }

  else
  {
    v14 = *(v9 + 84);
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(v6 + 80);
  v17 = *(v9 + 80);
  v18 = *(v11 + 80);
  v19 = *(v11 + 64);
  if (!a2)
  {
    return 0;
  }

  v20 = v16 & 0xF8 | 7;
  v21 = v7 + v17 + 1;
  v22 = *(*(v8 - 8) + 64) + v18 + 1;
  if (a2 <= v15)
  {
    goto LABEL_31;
  }

  v23 = ((v22 + ((v21 + (((v16 & 0xF8) + 56) & ~v20)) & ~v17)) & ~v18) + v19;
  v24 = 8 * v23;
  if (v23 <= 3)
  {
    v27 = ((a2 - v15 + ~(-1 << v24)) >> v24) + 1;
    if (HIWORD(v27))
    {
      v25 = *(a1 + v23);
      if (!v25)
      {
        goto LABEL_31;
      }

      goto LABEL_21;
    }

    if (v27 > 0xFF)
    {
      v25 = *(a1 + v23);
      if (!*(a1 + v23))
      {
        goto LABEL_31;
      }

      goto LABEL_21;
    }

    if (v27 < 2)
    {
LABEL_31:
      v31 = (a1 + 23) & 0xFFFFFFFFFFFFFFF8;
      if ((v14 & 0x80000000) != 0)
      {
        v33 = (v21 + ((((v31 + 31) & 0xFFFFFFFFFFFFFFF8) + v20 + 9) & ~v20)) & ~v17;
        if (v12 == v15)
        {
          v10 = v8;
        }

        else
        {
          v33 = (v22 + v33) & ~v18;
          v12 = v13;
        }

        return __swift_getEnumTagSinglePayload(v33, v12, v10);
      }

      else
      {
        v32 = *(v31 + 8);
        if (v32 >= 0xFFFFFFFF)
        {
          LODWORD(v32) = -1;
        }

        return (v32 + 1);
      }
    }
  }

  v25 = *(a1 + v23);
  if (!*(a1 + v23))
  {
    goto LABEL_31;
  }

LABEL_21:
  v28 = (v25 - 1) << v24;
  if (v23 > 3)
  {
    v28 = 0;
  }

  if (v23)
  {
    if (v23 <= 3)
    {
      v29 = v23;
    }

    else
    {
      v29 = 4;
    }

    switch(v29)
    {
      case 2:
        v30 = *a1;
        break;
      case 3:
        v30 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v30 = *a1;
        break;
      default:
        v30 = *a1;
        break;
    }
  }

  else
  {
    v30 = 0;
  }

  return v15 + (v30 | v28) + 1;
}

void sub_1D29C1044(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_1D29C3C34() - 8);
  if (*(v8 + 64) <= 8uLL)
  {
    v9 = 8;
  }

  else
  {
    v9 = *(v8 + 64);
  }

  v10 = sub_1D29C42F4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  v13 = *(a4 + 16);
  v14 = *(v13 - 8);
  v15 = *(v14 + 84);
  if (v12 <= v15)
  {
    v16 = *(v14 + 84);
  }

  else
  {
    v16 = *(v11 + 84);
  }

  if (v16 <= 0x7FFFFFFF)
  {
    v17 = 0x7FFFFFFF;
  }

  else
  {
    v17 = v16;
  }

  v18 = *(v8 + 80) & 0xF8;
  v19 = v18 | 7;
  v20 = *(v11 + 80);
  v21 = v9 + v20 + 1;
  v22 = *(v14 + 80);
  v23 = *(*(v10 - 8) + 64) + v22 + 1;
  v24 = ((v23 + ((v21 + ((v18 + 56) & ~(v18 | 7))) & ~v20)) & ~v22) + *(v14 + 64);
  v25 = 8 * v24;
  if (a3 <= v17)
  {
    v26 = 0;
  }

  else if (v24 <= 3)
  {
    v31 = ((a3 - v17 + ~(-1 << v25)) >> v25) + 1;
    if (HIWORD(v31))
    {
      v26 = 4;
    }

    else
    {
      if (v31 < 0x100)
      {
        v32 = 1;
      }

      else
      {
        v32 = 2;
      }

      if (v31 >= 2)
      {
        v26 = v32;
      }

      else
      {
        v26 = 0;
      }
    }
  }

  else
  {
    v26 = 1;
  }

  if (v17 >= a2)
  {
    v29 = ~v20;
    v30 = ~v22;
    switch(v26)
    {
      case 1:
        a1[v24] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *&a1[v24] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_53:
        __break(1u);
        break;
      case 4:
        *&a1[v24] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          v34 = ((a1 + 23) & 0xFFFFFFFFFFFFFFF8);
          if ((v16 & 0x80000000) != 0)
          {
            v35 = (v21 + ((((v34 + 31) & 0xFFFFFFFFFFFFFFF8) + v19 + 9) & ~v19)) & v29;
            if (v12 == v17)
            {
              v36 = a2;
              v13 = v10;
            }

            else
            {
              v35 = (v23 + v35) & v30;
              v36 = a2;
              v12 = v15;
            }

            __swift_storeEnumTagSinglePayload(v35, v36, v12, v13);
          }

          else if ((a2 & 0x80000000) != 0)
          {
            v34[1] = 0;
            v34[2] = 0;
            *v34 = a2 & 0x7FFFFFFF;
          }

          else
          {
            v34[1] = (a2 - 1);
          }
        }

        break;
    }
  }

  else
  {
    v27 = ~v17 + a2;
    if (v24 < 4)
    {
      v28 = (v27 >> v25) + 1;
      if (v24)
      {
        v33 = v27 & ~(-1 << v25);
        bzero(a1, v24);
        if (v24 == 3)
        {
          *a1 = v33;
          a1[2] = BYTE2(v33);
        }

        else if (v24 == 2)
        {
          *a1 = v33;
        }

        else
        {
          *a1 = v27;
        }
      }
    }

    else
    {
      bzero(a1, v24);
      *a1 = v27;
      v28 = 1;
    }

    switch(v26)
    {
      case 1:
        a1[v24] = v28;
        break;
      case 2:
        *&a1[v24] = v28;
        break;
      case 3:
        goto LABEL_53;
      case 4:
        *&a1[v24] = v28;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1D29C1404(uint64_t a1)
{
  result = type metadata accessor for PhotosPickerViewController(319);
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

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyxAA32_EnvironmentKeyTransformModifierVyAA4EdgeO3SetVGGAaBHPxAaBHD1__AkA0cI0HPyHCHCTm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = OUTLINED_FUNCTION_95(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4, v5);
  OUTLINED_FUNCTION_67();
  sub_1D29C3C64();
  OUTLINED_FUNCTION_37_0();
  sub_1D29C1524(v6, v7, v8, v9);
  OUTLINED_FUNCTION_17_0();
  return swift_getWitnessTable();
}

uint64_t sub_1D29C1524(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    v6 = OUTLINED_FUNCTION_95(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v6, v7);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D29C1570(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D29C15E0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return __swift_getEnumTagSinglePayload(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
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

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_1D29C171C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 >= a2)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1D29C1920(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1D29C1960(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1D29C19D4(uint64_t a1)
{
  sub_1D29C1F28(319, qword_1EE087700, MEMORY[0x1E6979000], MEMORY[0x1E697DCC0]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_1D29C1FF0(319, &qword_1EE0876E8, MEMORY[0x1E6980D50], MEMORY[0x1E697DCC0]);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_1D29C1F28(319, &qword_1EE0876D0, type metadata accessor for PHPickerCapabilities, MEMORY[0x1E697DCC0]);
      v2 = v6;
      if (v7 <= 0x3F)
      {
        sub_1D29C1F28(319, &qword_1EE0876C8, type metadata accessor for _PHPickerPrivateCapabilities, MEMORY[0x1E697DCC0]);
        v2 = v8;
        if (v9 <= 0x3F)
        {
          sub_1D29C1F8C(319, &qword_1EE0876E0, &qword_1EC6FE090, &qword_1D29C66E0, MEMORY[0x1E697DCC0]);
          v2 = v10;
          if (v11 <= 0x3F)
          {
            sub_1D29C1F28(319, &qword_1EE0876D8, type metadata accessor for _PHPickerSourceType, MEMORY[0x1E697DCC0]);
            if (v13 > 0x3F)
            {
              return v12;
            }

            sub_1D29C1F8C(319, &qword_1EE0876F0, &qword_1EC6FE098, &qword_1D29C66E8, MEMORY[0x1E697DCC0]);
            if (v14 > 0x3F)
            {
              return v12;
            }

            sub_1D29C1F8C(319, &qword_1EE0876F8, &qword_1EC6FE0A0, &qword_1D29C66F0, MEMORY[0x1E697DCC0]);
            if (v15 > 0x3F)
            {
              return v12;
            }

            sub_1D29C1F28(319, &qword_1EE087650, type metadata accessor for _PHPickerPrimaryButtonType, MEMORY[0x1E697DCC0]);
            if (v16 > 0x3F)
            {
              return v12;
            }

            sub_1D29C1F28(319, &qword_1EE087648, type metadata accessor for _PHPickerSecondaryButtonType, MEMORY[0x1E697DCC0]);
            if (v17 > 0x3F)
            {
              return v12;
            }

            sub_1D29C1F8C(319, &qword_1EE087668, &qword_1EC6FE0A8, &qword_1D29C66F8, MEMORY[0x1E697DCC0]);
            if (v18 > 0x3F)
            {
              return v12;
            }

            else
            {
              sub_1D29C1F28(319, &qword_1EE087658, type metadata accessor for _PHPickerCollectionType, MEMORY[0x1E697DCC0]);
              v2 = v19;
              if (v20 <= 0x3F)
              {
                sub_1D29C1F28(319, &qword_1EE087640, type metadata accessor for _PHPickerCollectionSuggestionType, MEMORY[0x1E697DCC0]);
                v2 = v21;
                if (v22 <= 0x3F)
                {
                  sub_1D29C1F8C(319, &qword_1EE087638, &qword_1EC6FE0B0, &qword_1D29C6700, MEMORY[0x1E697DCC0]);
                  v2 = v23;
                  if (v24 <= 0x3F)
                  {
                    sub_1D29C1FF0(319, &qword_1EE087660, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
                    v2 = v25;
                    if (v26 <= 0x3F)
                    {
                      sub_1D29C1FF0(319, &qword_1EE0876B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
                      v2 = v27;
                      if (v28 <= 0x3F)
                      {
                        sub_1D29C1F8C(319, &qword_1EE0876B8, &qword_1EC6FDB20, &qword_1D29C5A50, MEMORY[0x1E6981948]);
                        v2 = v29;
                        if (v30 <= 0x3F)
                        {
                          v2 = sub_1D29C42F4();
                          if (v31 <= 0x3F)
                          {
                            swift_cvw_initStructMetadataWithLayoutString();
                            return 0;
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
  }

  return v2;
}

void sub_1D29C1F28(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D29C1F8C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_1D29C1FF0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1D29C2048(uint64_t a1)
{
  result = sub_1D29C4054();
  if (v2 <= 0x3F)
  {
    result = sub_1D29AEB78(319, &qword_1EE087930, 0x1E696ACA0);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D29C215C(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
    return sub_1D29AEB68(result, a2);
  }

  else
  {
  }
}

uint64_t sub_1D29C2168(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1D29C2188(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
  }

  return v4;
}

uint64_t sub_1D29C2194(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosPickerItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D29C21F8()
{
  result = qword_1EC6FE150;
  if (!qword_1EC6FE150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6FE150);
  }

  return result;
}

unint64_t sub_1D29C224C()
{
  result = qword_1EC6FE158;
  if (!qword_1EC6FE158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6FE158);
  }

  return result;
}

unint64_t sub_1D29C22A0()
{
  result = qword_1EC6FE160;
  if (!qword_1EC6FE160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6FE160);
  }

  return result;
}

unint64_t sub_1D29C22F4()
{
  result = qword_1EC6FE168;
  if (!qword_1EC6FE168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6FE168);
  }

  return result;
}

unint64_t sub_1D29C2348()
{
  result = qword_1EC6FE170;
  if (!qword_1EC6FE170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6FE170);
  }

  return result;
}

unint64_t sub_1D29C239C()
{
  result = qword_1EC6FE178;
  if (!qword_1EC6FE178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6FE178);
  }

  return result;
}

unint64_t sub_1D29C23F0()
{
  result = qword_1EC6FE180;
  if (!qword_1EC6FE180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6FE180);
  }

  return result;
}

unint64_t sub_1D29C2444()
{
  result = qword_1EC6FE188;
  if (!qword_1EC6FE188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6FE188);
  }

  return result;
}

unint64_t sub_1D29C2498()
{
  result = qword_1EE087630;
  if (!qword_1EE087630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE087630);
  }

  return result;
}

unint64_t sub_1D29C24EC()
{
  result = qword_1EC6FE190;
  if (!qword_1EC6FE190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6FE190);
  }

  return result;
}

unint64_t sub_1D29C2540()
{
  result = qword_1EC6FE198;
  if (!qword_1EC6FE198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6FE198);
  }

  return result;
}

unint64_t sub_1D29C2594()
{
  result = qword_1EC6FE1A0;
  if (!qword_1EC6FE1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6FE1A0);
  }

  return result;
}

unint64_t sub_1D29C25E8()
{
  result = qword_1EC6FE1A8;
  if (!qword_1EC6FE1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6FE1A8);
  }

  return result;
}

unint64_t sub_1D29C263C()
{
  result = qword_1EC6FE1B0;
  if (!qword_1EC6FE1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6FE1B0);
  }

  return result;
}

unint64_t sub_1D29C2690()
{
  result = qword_1EC6FE1B8;
  if (!qword_1EC6FE1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6FE1B8);
  }

  return result;
}

unint64_t sub_1D29C26E4()
{
  result = qword_1EE087628;
  if (!qword_1EE087628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE087628);
  }

  return result;
}

unint64_t sub_1D29C2738()
{
  result = qword_1EC6FE1C0;
  if (!qword_1EC6FE1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6FE1C0);
  }

  return result;
}

unint64_t sub_1D29C278C()
{
  result = qword_1EC6FE1C8;
  if (!qword_1EC6FE1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6FE1C8);
  }

  return result;
}

unint64_t sub_1D29C27E0()
{
  result = qword_1EC6FE1D0;
  if (!qword_1EC6FE1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6FE1D0);
  }

  return result;
}

unint64_t sub_1D29C2834()
{
  result = qword_1EC6FE1D8;
  if (!qword_1EC6FE1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6FE1D8);
  }

  return result;
}

unint64_t sub_1D29C2888()
{
  result = qword_1EC6FE1E0;
  if (!qword_1EC6FE1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6FE1E0);
  }

  return result;
}

uint64_t sub_1D29C28DC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D29C42F4();
  OUTLINED_FUNCTION_75(v3);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = *(v1 + 48);
  v11 = *(v1 + 56);
  v12 = v1 + ((*(v4 + 80) + 64) & ~*(v4 + 80));
  v13 = *(v12 + *(v5 + 64));

  return sub_1D29BB468(v6, v7, v8, v9, v10, v11, v12, v13, a1);
}

uint64_t sub_1D29C2974(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_95(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_15_0();
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_1D29C29C4@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDE10, &qword_1D29C5F08);
  OUTLINED_FUNCTION_25_0(v2);
  OUTLINED_FUNCTION_90();

  return sub_1D29BC0F4(a1);
}

uint64_t objectdestroy_194Tm()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDE10, &qword_1D29C5F08) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  swift_unknownObjectRelease();

  v3 = v0 + v2 + v1[10];
  v4 = type metadata accessor for PhotosPickerItem(0);
  if (!__swift_getEnumTagSinglePayload(v3, 1, v4))
  {

    v5 = *(v4 + 28);
    type metadata accessor for PhotosPickerItem.Content(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      sub_1D29C4054();
      OUTLINED_FUNCTION_15_0();
      (*(v6 + 8))(v3 + v5);
    }
  }

  v7 = OUTLINED_FUNCTION_79();

  return MEMORY[0x1EEE6BDD0](v7, v8, v9);
}

uint64_t sub_1D29C2B8C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDE10, &qword_1D29C5F08);
  OUTLINED_FUNCTION_25_0(v2);
  OUTLINED_FUNCTION_90();

  return sub_1D29BC2F4(a1);
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

uint64_t sub_1D29C2C70(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_1D29C4534();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6FE140, &qword_1D29C6910);
  v4 = sub_1D29C4434();
  OUTLINED_FUNCTION_25_0(v4);
  OUTLINED_FUNCTION_90();

  return sub_1D29B1A28(a1, v1 + v5, v3);
}

unint64_t sub_1D29C2EA8()
{
  result = qword_1EC6FE200;
  if (!qword_1EC6FE200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6FE0B0, &qword_1D29C6700);
    sub_1D29B18D8(&qword_1EC6FE208, type metadata accessor for CGSize, MEMORY[0x1E695EF98]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6FE200);
  }

  return result;
}

unint64_t sub_1D29C2F5C()
{
  result = qword_1EC6FE220;
  if (!qword_1EC6FE220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6FE090, &qword_1D29C66E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6FE220);
  }

  return result;
}

unint64_t sub_1D29C2FD8()
{
  result = qword_1EE087608;
  if (!qword_1EE087608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6FE0A0, &qword_1D29C66F0);
    sub_1D29B18D8(&qword_1EE087610, MEMORY[0x1E6979088], MEMORY[0x1E6979090]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE087608);
  }

  return result;
}

unint64_t sub_1D29C308C()
{
  result = qword_1EE087588;
  if (!qword_1EE087588)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6FE098, &qword_1D29C66E8);
    sub_1D29B18D8(&qword_1EE087590, MEMORY[0x1E69790B8], MEMORY[0x1E69790C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE087588);
  }

  return result;
}

unint64_t sub_1D29C3140()
{
  result = qword_1EC6FE228;
  if (!qword_1EC6FE228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6FE228);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_0(uint64_t a1)
{

  return swift_once();
}

__n128 OUTLINED_FUNCTION_20_0@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 - 112);
  v3 = *(v1 - 104);
  result = *(v1 - 128);
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  a1[1].n128_u64[1] = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_22_0()
{

  return sub_1D29B1940();
}

uint64_t OUTLINED_FUNCTION_64@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>)
{
  *(v10 - 104) = a6;
  *(v10 - 96) = v9;
  *(v10 - 196) = a8;
  *(v10 - 192) = a7;
  *(v10 - 120) = a4;
  *(v10 - 112) = a5;
  *(v10 - 124) = a3;
  *(v10 - 144) = result;
  *(v10 - 136) = a2;
  *(v10 - 152) = a9;
  return result;
}

uint64_t OUTLINED_FUNCTION_65()
{

  return type metadata accessor for PhotosPickerSelectionBehavior(0);
}

uint64_t OUTLINED_FUNCTION_66(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{

  return sub_1D29C3E34();
}

uint64_t OUTLINED_FUNCTION_70(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(v3 - 280) = result;
  *(v3 - 288) = a2;
  *(v3 - 296) = a3;
  return result;
}

void OUTLINED_FUNCTION_91()
{
  v2 = *(v1 - 184);
  v0[2] = *(v1 - 192);
  v0[3] = v2;
  v0[4] = *(v1 - 176);
}

uint64_t OUTLINED_FUNCTION_92(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1D29C3CC4();
}

uint64_t OUTLINED_FUNCTION_100@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

uint64_t OUTLINED_FUNCTION_113(uint64_t a1)
{

  return sub_1D29C3CB4();
}

uint64_t OUTLINED_FUNCTION_114()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_115@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 136) = a1;

  return sub_1D29C4164();
}

uint64_t OUTLINED_FUNCTION_116(uint64_t a1, uint64_t a2)
{

  return swift_getOpaqueTypeConformance2();
}