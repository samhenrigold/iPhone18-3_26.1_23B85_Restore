uint64_t initializeWithCopy for CollectionViewTableRoot(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 24) - 8) + 16;
  (*v6)();
  v7 = *(v6 + 48);
  v8 = *(*(a3 + 32) - 8);
  v9 = v8 + 16;
  v10 = *(v8 + 80);
  v11 = v7 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v8 + 16))(v12, v13);
  v14 = *(v9 + 48) + 7;
  v15 = (v14 + v12) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v14 + v13) & 0xFFFFFFFFFFFFFFF8;
  if (*(v16 + 8) < 0xFFFFFFFFuLL)
  {
    v19 = *v16;
    v20 = *(v16 + 16);
    v21 = *(v16 + 32);
    *(v15 + 48) = *(v16 + 48);
    *(v15 + 16) = v20;
    *(v15 + 32) = v21;
    *v15 = v19;
  }

  else
  {
    *v15 = *v16;
    *(v15 + 8) = *(v16 + 8);
    v17 = *(v16 + 40);
    *(v15 + 40) = v17;
    *(v15 + 48) = *(v16 + 48);
    v18 = **(v17 - 8);

    v18(v15 + 16, v16 + 16, v17);
  }

  v22 = (v15 + 63) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v16 + 63) & 0xFFFFFFFFFFFFFFF8;
  if (*(v23 + 8) < 0xFFFFFFFFuLL)
  {
    v24 = *v23;
    *(v22 + 16) = *(v23 + 16);
    *v22 = v24;
  }

  else
  {
    *v22 = *v23;
    *(v22 + 8) = *(v23 + 8);
    *(v22 + 16) = *(v23 + 16);
  }

  v25 = (v22 + 31) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v23 + 31) & 0xFFFFFFFFFFFFFFF8;
  if (*(v26 + 8) < 0xFFFFFFFFuLL)
  {
    v27 = *(v26 + 16);
    *v25 = *v26;
    *(v25 + 16) = v27;
  }

  else
  {
    *v25 = *v26;
    *(v25 + 8) = *(v26 + 8);
    *(v25 + 16) = *(v26 + 16);
    *(v25 + 24) = *(v26 + 24);
  }

  return a1;
}

uint64_t assignWithCopy for CollectionViewTableRoot(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 24) - 8) + 24;
  (*v6)();
  v7 = *(v6 + 40);
  v8 = *(*(a3 + 32) - 8);
  v9 = v8 + 24;
  v10 = *(v8 + 80);
  v11 = v7 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v8 + 24))(v12, v13);
  v14 = *(v9 + 40) + 7;
  v15 = (v14 + v12) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v14 + v13) & 0xFFFFFFFFFFFFFFF8;
  v17 = *(v16 + 8);
  if (*(v15 + 8) < 0xFFFFFFFFuLL)
  {
    if (v17 >= 0xFFFFFFFF)
    {
      *v15 = *v16;
      *(v15 + 8) = *(v16 + 8);
      v18 = *(v16 + 40);
      *(v15 + 40) = v18;
      *(v15 + 48) = *(v16 + 48);
      v19 = **(v18 - 8);

      v19(v15 + 16, v16 + 16, v18);
      goto LABEL_8;
    }
  }

  else
  {
    if (v17 >= 0xFFFFFFFF)
    {
      *v15 = *v16;

      *(v15 + 8) = *(v16 + 8);

      __swift_assign_boxed_opaque_existential_1((v15 + 16), (v16 + 16));
      goto LABEL_8;
    }

    __swift_destroy_boxed_opaque_existential_1((v15 + 16));
  }

  v20 = *v16;
  v21 = *(v16 + 16);
  v22 = *(v16 + 32);
  *(v15 + 48) = *(v16 + 48);
  *(v15 + 16) = v21;
  *(v15 + 32) = v22;
  *v15 = v20;
LABEL_8:
  v23 = ((v15 + 63) & 0xFFFFFFFFFFFFFFF8);
  v24 = ((v16 + 63) & 0xFFFFFFFFFFFFFFF8);
  v25 = v24[1];
  if (v23[1] < 0xFFFFFFFFuLL)
  {
    if (v25 >= 0xFFFFFFFF)
    {
      *v23 = *v24;
      v23[1] = v24[1];
      v23[2] = v24[2];

      goto LABEL_15;
    }
  }

  else
  {
    if (v25 >= 0xFFFFFFFF)
    {
      *v23 = *v24;

      v23[1] = v24[1];

      v23[2] = v24[2];

      goto LABEL_15;
    }
  }

  v26 = *v24;
  v23[2] = v24[2];
  *v23 = v26;
LABEL_15:
  v27 = ((v23 + 31) & 0xFFFFFFFFFFFFFFF8);
  v28 = ((v24 + 31) & 0xFFFFFFFFFFFFFFF8);
  v29 = v28[1];
  if (v27[1] < 0xFFFFFFFFuLL)
  {
    if (v29 >= 0xFFFFFFFF)
    {
      *v27 = *v28;
      v27[1] = v28[1];
      v27[2] = v28[2];
      v27[3] = v28[3];

      return a1;
    }

LABEL_21:
    v30 = *(v28 + 1);
    *v27 = *v28;
    *(v27 + 1) = v30;
    return a1;
  }

  if (v29 < 0xFFFFFFFF)
  {

    goto LABEL_21;
  }

  *v27 = *v28;

  v27[1] = v28[1];

  v27[2] = v28[2];

  v27[3] = v28[3];

  return a1;
}

uint64_t initializeWithTake for CollectionViewTableRoot(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 24) - 8) + 32;
  (*v6)();
  v7 = *(v6 + 32);
  v8 = *(*(a3 + 32) - 8);
  v9 = v8 + 32;
  v10 = *(v8 + 80);
  v11 = v7 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v8 + 32))(v12, v13);
  v14 = *(v9 + 32) + 7;
  v15 = (v14 + v12) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v14 + v13) & 0xFFFFFFFFFFFFFFF8;
  v18 = *(v16 + 16);
  v17 = *(v16 + 32);
  v19 = *v16;
  *(v15 + 48) = *(v16 + 48);
  *(v15 + 16) = v18;
  *(v15 + 32) = v17;
  *v15 = v19;
  v20 = (v15 + 63) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v16 + 63) & 0xFFFFFFFFFFFFFFF8;
  v22 = *v21;
  *(v20 + 16) = *(v21 + 16);
  *v20 = v22;
  v23 = ((v20 + 31) & 0xFFFFFFFFFFFFFFF8);
  v24 = ((v21 + 31) & 0xFFFFFFFFFFFFFFF8);
  v25 = v24[1];
  *v23 = *v24;
  v23[1] = v25;
  return a1;
}

uint64_t assignWithTake for CollectionViewTableRoot(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 24) - 8) + 40;
  (*v6)();
  v7 = *(v6 + 24);
  v8 = *(*(a3 + 32) - 8);
  v9 = v8 + 40;
  v10 = *(v8 + 80);
  v11 = v7 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v8 + 40))(v12, v13);
  v14 = *(v9 + 24) + 7;
  v15 = (v14 + v12) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v14 + v13) & 0xFFFFFFFFFFFFFFF8;
  if (*(v15 + 8) >= 0xFFFFFFFFuLL)
  {
    if (*(v16 + 8) >= 0xFFFFFFFFuLL)
    {
      *v15 = *v16;

      *(v15 + 8) = *(v16 + 8);

      __swift_destroy_boxed_opaque_existential_1((v15 + 16));
      v17 = *(v16 + 16);
      v18 = *(v16 + 32);
      *(v15 + 48) = *(v16 + 48);
      *(v15 + 16) = v17;
      *(v15 + 32) = v18;
      goto LABEL_6;
    }

    __swift_destroy_boxed_opaque_existential_1((v15 + 16));
  }

  v19 = *v16;
  v20 = *(v16 + 16);
  v21 = *(v16 + 32);
  *(v15 + 48) = *(v16 + 48);
  *(v15 + 16) = v20;
  *(v15 + 32) = v21;
  *v15 = v19;
LABEL_6:
  v22 = ((v15 + 63) & 0xFFFFFFFFFFFFFFF8);
  v23 = ((v16 + 63) & 0xFFFFFFFFFFFFFFF8);
  if (v22[1] >= 0xFFFFFFFFuLL)
  {
    if (v23[1] >= 0xFFFFFFFFuLL)
    {
      *v22 = *v23;

      v22[1] = v23[1];

      v22[2] = v23[2];

      goto LABEL_11;
    }
  }

  v24 = *v23;
  v22[2] = v23[2];
  *v22 = v24;
LABEL_11:
  v25 = (v22 + 31) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v23 + 31) & 0xFFFFFFFFFFFFFFF8;
  if (*(v25 + 8) < 0xFFFFFFFFuLL)
  {
LABEL_15:
    v27 = *(v26 + 16);
    *v25 = *v26;
    *(v25 + 16) = v27;
    return a1;
  }

  if (*(v26 + 8) < 0xFFFFFFFFuLL)
  {

    goto LABEL_15;
  }

  *v25 = *v26;

  *(v25 + 8) = *(v26 + 8);

  *(v25 + 16) = *(v26 + 16);

  *(v25 + 24) = *(v26 + 24);

  return a1;
}

uint64_t getEnumTagSinglePayload for CollectionViewTableRoot(int *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
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

  if (v10 <= 0x7FFFFFFE)
  {
    v10 = 2147483646;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 24) - 8) + 64) + v9;
  v12 = *(*(v6 - 8) + 64) + 7;
  if (v10 >= a2)
  {
    goto LABEL_29;
  }

  v13 = ((((((v12 + (v11 & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 32;
  v14 = a2 - v10;
  v15 = v13 & 0xFFFFFFF8;
  if ((v13 & 0xFFFFFFF8) != 0)
  {
    v16 = 2;
  }

  else
  {
    v16 = v14 + 1;
  }

  if (v16 >= 0x10000)
  {
    v17 = 4;
  }

  else
  {
    v17 = 2;
  }

  if (v16 < 0x100)
  {
    v17 = 1;
  }

  if (v16 >= 2)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      v19 = *(a1 + v13);
      if (!v19)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v19 = *(a1 + v13);
      if (!v19)
      {
        goto LABEL_29;
      }
    }

LABEL_26:
    v21 = v19 - 1;
    if (v15)
    {
      v21 = 0;
      v22 = *a1;
    }

    else
    {
      v22 = 0;
    }

    return v10 + (v22 | v21) + 1;
  }

  if (v18)
  {
    v19 = *(a1 + v13);
    if (v19)
    {
      goto LABEL_26;
    }
  }

LABEL_29:
  if (v5 == v10)
  {
    return (*(v4 + 48))(a1);
  }

  v23 = (a1 + v11) & ~v9;
  if (v8 == v10)
  {
    return (*(v7 + 48))(v23, v8, v6);
  }

  v24 = *(((v12 + v23) & 0xFFFFFFFFFFFFFFF8) + 8);
  if (v24 >= 0xFFFFFFFF)
  {
    LODWORD(v24) = -1;
  }

  if ((v24 + 1) >= 2)
  {
    return v24;
  }

  else
  {
    return 0;
  }
}

double storeEnumTagSinglePayload for CollectionViewTableRoot(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
  v6 = *(v5 + 84);
  v7 = *(*(a4 + 32) - 8);
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

  if (v12 <= 0x7FFFFFFE)
  {
    v12 = 2147483646;
  }

  v13 = v9 + v10;
  v14 = (v9 + v10) & ~v10;
  v15 = v11 + 7;
  v16 = ((((((v11 + 7 + v14) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 32;
  if (v12 >= a3)
  {
    v20 = 0;
    v21 = a2 - v12;
    if (a2 <= v12)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v17 = a3 - v12;
    if (((((((v11 + 7 + v14) & 0xFFFFFFF8) + 63) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) == 0xFFFFFFE0)
    {
      v18 = v17 + 1;
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

    v21 = a2 - v12;
    if (a2 <= v12)
    {
LABEL_19:
      if (v20 > 1)
      {
        if (v20 != 2)
        {
          *(a1 + v16) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_35;
        }

        *(a1 + v16) = 0;
      }

      else if (v20)
      {
        *(a1 + v16) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_35;
      }

      if (!a2)
      {
        return result;
      }

LABEL_35:
      if (v6 == v12)
      {
        v26 = *(v5 + 56);

        v26();
      }

      else
      {
        v27 = (a1 + v13) & ~v10;
        if (v8 == v12)
        {
          v28 = *(v7 + 56);

          v28(v27);
        }

        else
        {
          v29 = (v15 + v27) & 0xFFFFFFFFFFFFFFF8;
          if (a2 > 0x7FFFFFFE)
          {
            *(v29 + 48) = 0;
            result = 0.0;
            *(v29 + 16) = 0u;
            *(v29 + 32) = 0u;
            *v29 = 0u;
            *v29 = a2 - 0x7FFFFFFF;
          }

          else
          {
            *(v29 + 8) = a2;
          }
        }
      }

      return result;
    }
  }

  if (v16)
  {
    v22 = 1;
  }

  else
  {
    v22 = v21;
  }

  if (v16)
  {
    v23 = ~v12 + a2;
    v24 = a1;
    bzero(a1, v16);
    a1 = v24;
    *v24 = v23;
  }

  if (v20 > 1)
  {
    if (v20 == 2)
    {
      *(a1 + v16) = v22;
    }

    else
    {
      *(a1 + v16) = v22;
    }
  }

  else if (v20)
  {
    *(a1 + v16) = v22;
  }

  return result;
}

uint64_t _s7SwiftUI27AnyTableColumnCustomizationV15arrangedColumns_13customization13includeHidden17defaultVisibility2idSayxGq__ACSgSbAA0M0OxXEAA0deF2IDVxXEt7ElementQy_RszSlR_r0_lFZAA0D11CellFormulaV_SayARGTt4g5(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t (*a5)(char *), uint64_t a6, void (*a7)(_OWORD *__return_ptr, char *), uint64_t a8, double a9)
{
  v64 = a8;
  v74 = a7;
  v67 = a6;
  v66 = a5;
  v77 = a4;
  v12 = type metadata accessor for TableCellFormula(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v80 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for (index: Int, element: TableCellFormula, id: TableColumnCustomizationID)?(0, &lazy cache variable for type metadata for (index: Int, element: TableCellFormula, id: TableColumnCustomizationID)?, &lazy cache variable for type metadata for (index: Int, element: TableCellFormula, id: TableColumnCustomizationID), type metadata accessor for TableCellFormula, type metadata accessor for (index: Int, element: TableColumnCollection.Entry, id: TableColumnCustomizationID));
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = (&v62 - v16);
  type metadata accessor for (index: Int, element: TableColumnCollection.Entry, id: TableColumnCustomizationID)(0, &lazy cache variable for type metadata for (index: Int, element: TableCellFormula, id: TableColumnCustomizationID), type metadata accessor for TableCellFormula);
  v19 = v18;
  v68 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v76 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v75 = &v62 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v73 = &v62 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v65 = &v62 - v26;
  type metadata accessor for (offset: Int, element: TableColumnCollection.Entry)(0, &lazy cache variable for type metadata for (offset: Int, element: TableCellFormula), type metadata accessor for TableCellFormula);
  v72 = v27;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v62 - v28;
  v78 = a2;
  if (!a2 || (v77 & 1) != 0 && !a3)
  {

    return a1;
  }

  v62 = a3;
  v63 = v13;
  v71 = *(a1 + 16);
  if (v71)
  {
    v30 = 0;
    v70 = (v68 + 56);
    v31 = (v68 + 48);
    v32 = a1 + ((*(v63 + 80) + 32) & ~*(v63 + 80));
    v69 = *(v63 + 72);
    v79 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v33 = *(v72 + 48);
      *v29 = v30;
      _s7SwiftUI21TableColumnCollectionV5EntryVWOcTm_0(v32, &v29[v33], type metadata accessor for TableCellFormula);
      v74(v83, &v29[v33]);
      if (v77)
      {
        goto LABEL_14;
      }

      if (*(v78 + 16) && (v34 = specialized __RawDictionaryStorage.find<A>(_:)(v83), (v35 & 1) != 0))
      {
        v36 = *(*(v78 + 56) + 16 * v34 + 9);
        v37 = v66(&v29[v33]);
        if (v36)
        {
          if (v36 != 1)
          {
            goto LABEL_17;
          }

          goto LABEL_14;
        }
      }

      else
      {
        v37 = v66(&v29[v33]);
      }

      if (v37 == 2)
      {
LABEL_17:
        outlined destroy of TableColumnCustomizationID(v83);
        v40 = 1;
        goto LABEL_18;
      }

LABEL_14:
      v38 = *(v19 + 48);
      v39 = v17 + *(v19 + 64);
      *v17 = v30;
      _s7SwiftUI21TableColumnCollectionV5EntryVWOcTm_0(&v29[v33], v17 + v38, type metadata accessor for TableCellFormula);
      v40 = 0;
      v41 = v83[1];
      *v39 = v83[0];
      *(v39 + 1) = v41;
      v39[32] = v84;
LABEL_18:
      (*v70)(v17, v40, 1, v19);
      outlined destroy of (index: Int, element: TableCellFormula, id: TableColumnCustomizationID)(v29, &lazy cache variable for type metadata for (offset: Int, element: TableCellFormula), type metadata accessor for TableCellFormula, type metadata accessor for (offset: Int, element: TableColumnCollection.Entry));
      if ((*v31)(v17, 1, v19) == 1)
      {
        outlined destroy of (index: Int, element: TableColumnCollection.Entry, id: TableColumnCustomizationID)?(v17, &lazy cache variable for type metadata for (index: Int, element: TableCellFormula, id: TableColumnCustomizationID)?, &lazy cache variable for type metadata for (index: Int, element: TableCellFormula, id: TableColumnCustomizationID), type metadata accessor for TableCellFormula);
      }

      else
      {
        v42 = v65;
        outlined init with take of (index: Int, element: TableCellFormula, id: TableColumnCustomizationID)(v17, v65, &lazy cache variable for type metadata for (index: Int, element: TableCellFormula, id: TableColumnCustomizationID), type metadata accessor for TableCellFormula);
        outlined init with take of (index: Int, element: TableCellFormula, id: TableColumnCustomizationID)(v42, v73, &lazy cache variable for type metadata for (index: Int, element: TableCellFormula, id: TableColumnCustomizationID), type metadata accessor for TableCellFormula);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v43 = v79;
        }

        else
        {
          v43 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v79[2] + 1, 1, v79);
        }

        v45 = v43[2];
        v44 = v43[3];
        if (v45 >= v44 >> 1)
        {
          v43 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v45 + 1, 1, v43);
        }

        v43[2] = v45 + 1;
        v46 = (*(v68 + 80) + 32) & ~*(v68 + 80);
        v79 = v43;
        outlined init with take of (index: Int, element: TableCellFormula, id: TableColumnCustomizationID)(v73, v43 + v46 + *(v68 + 72) * v45, &lazy cache variable for type metadata for (index: Int, element: TableCellFormula, id: TableColumnCustomizationID), type metadata accessor for TableCellFormula);
      }

      ++v30;
      v32 += v69;
      if (v71 == v30)
      {
        goto LABEL_27;
      }
    }
  }

  v79 = MEMORY[0x1E69E7CC0];
LABEL_27:
  v47 = v79;
  v82 = v79;
  v48 = v62;
  if (v62)
  {

    specialized MutableCollection<>.sort(by:)(&v82, v48, &lazy cache variable for type metadata for (index: Int, element: TableCellFormula, id: TableColumnCustomizationID), type metadata accessor for TableCellFormula, specialized _ArrayBuffer._consumeAndCreateNew(), specialized UnsafeMutableBufferPointer._stableSortImpl(by:));

    v47 = v82;
  }

  v49 = v47[2];
  v50 = v63;
  if (v49)
  {
    v81 = MEMORY[0x1E69E7CC0];
    v51 = v47;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v49, 0);
    a1 = v81;
    v52 = *(v68 + 80);
    v79 = v51;
    v53 = v51 + ((v52 + 32) & ~v52);
    v54 = *(v68 + 72);
    v55 = v76;
    do
    {
      v56 = v75;
      outlined init with copy of (index: Int, element: TableCellFormula, id: TableColumnCustomizationID)(v53, v75, &lazy cache variable for type metadata for (index: Int, element: TableCellFormula, id: TableColumnCustomizationID), type metadata accessor for TableCellFormula);
      outlined init with take of (index: Int, element: TableCellFormula, id: TableColumnCustomizationID)(v56, v55, &lazy cache variable for type metadata for (index: Int, element: TableCellFormula, id: TableColumnCustomizationID), type metadata accessor for TableCellFormula);
      v57 = *(v19 + 48);
      v58 = v55 + *(v19 + 64);
      outlined consume of TableColumnCustomizationID.Base(*v58, *(v58 + 8), *(v58 + 16), *(v58 + 24), *(v58 + 32));
      _s7SwiftUI16TableCellFormulaVWObTm_0(v55 + v57, v80, type metadata accessor for TableCellFormula);
      v81 = a1;
      v60 = *(a1 + 16);
      v59 = *(a1 + 24);
      if (v60 >= v59 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v59 > 1), v60 + 1, 1);
        a1 = v81;
      }

      *(a1 + 16) = v60 + 1;
      _s7SwiftUI16TableCellFormulaVWObTm_0(v80, a1 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v60, type metadata accessor for TableCellFormula);
      v53 += v54;
      --v49;
    }

    while (v49);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return a1;
}

void specialized Zip2Sequence.Iterator.next()(uint64_t a1@<X8>)
{
  if (*(v1 + 361) == 1)
  {
    *(a1 + 25) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 41) = 1;
    return;
  }

  v2 = *(v1 + 248);
  v3 = *(v1 + 256);
  v4 = *(v1 + 264);
  if (v2 == *(v1 + 224))
  {
    if (*(v1 + 264))
    {
      if (*(v1 + 240))
      {
        goto LABEL_29;
      }

      v4 = 1;
    }

    else
    {
      if (v3 == *(v1 + 232))
      {
        v5 = *(v1 + 240);
      }

      else
      {
        v5 = 1;
      }

      if ((v5 & 1) == 0)
      {
        goto LABEL_29;
      }

      v4 = 0;
    }
  }

  v6 = v2 + 1;
  if (__OFADD__(v2, 1))
  {
    __break(1u);
    goto LABEL_34;
  }

  v7 = *(v1 + 192);
  if (v6 == v7)
  {
    v8 = 0;
  }

  else
  {
    if (v4)
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_35;
    }
  }

  *(v1 + 248) = v6;
  *(v1 + 256) = v8;
  *(v1 + 264) = v6 == v7;
  v9 = *(v1 + 344);
  v10 = *(v1 + 352);
  v11 = *(v1 + 360);
  if (v9 == *(v1 + 320))
  {
    if (*(v1 + 360))
    {
      if ((*(v1 + 336) & 1) == 0)
      {
        v11 = 1;
        goto LABEL_26;
      }

LABEL_29:
      *(v1 + 361) = 1;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 25) = 0u;
      *(a1 + 41) = 1;
      return;
    }

    if (v10 == *(v1 + 328))
    {
      v12 = *(v1 + 336);
    }

    else
    {
      v12 = 1;
    }

    if ((v12 & 1) == 0)
    {
      goto LABEL_29;
    }

    v11 = 0;
  }

LABEL_26:
  v13 = v9 + 1;
  if (__OFADD__(v9, 1))
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v14 = *(*(v1 + 272) + 16);
  if (v13 == v14)
  {
    v15 = 0;
LABEL_32:
    *(v1 + 344) = v13;
    *(v1 + 352) = v15;
    *(v1 + 360) = v13 == v14;
    *a1 = v2;
    *(a1 + 8) = v3;
    *(a1 + 16) = v4;
    *(a1 + 24) = v9;
    *(a1 + 32) = v10;
    *(a1 + 40) = v11;
    *(a1 + 41) = 0;
    return;
  }

  if ((v11 & 1) == 0)
  {
    v15 = v10 + 1;
    if (!__OFADD__(v10, 1))
    {
      goto LABEL_32;
    }

    goto LABEL_36;
  }

LABEL_38:
  __break(1u);
}

BOOL _sSLsE2leoiySbx_xtFZ7SwiftUI15NavigationStateV12StackContentV5ViewsV0H8SequenceV5IndexVy___AB22_VariadicView_ChildrenVAB08ModifiedG0VyAB0D24SearchAdjustmentModifierVAPyAPyAB0d6ColumnQ0VAB09InjectKeyQ0VGAB0d16BackgroundReaderQ033_7632008E3567AB610EB09B57688D0EDELLVGG_G_Tt1g5(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, char a8)
{
  if (a2)
  {
    v8 = a6 ^ 1;
  }

  else
  {
    if (a6)
    {
      goto LABEL_4;
    }

    if (a5 < a1)
    {
      v8 = 1;
      return (v8 & 1) == 0;
    }

    if (a1 < a5)
    {
LABEL_4:
      v8 = 0;
    }

    else if (a8)
    {
      v10 = a4 == 1 && a7 < a3;
      if (a3)
      {
        v11 = 0;
      }

      else
      {
        v11 = a4 == 2;
      }

      v12 = !v11;
      if (a8 == 1)
      {
        v8 = v10;
      }

      else
      {
        v8 = v12;
      }
    }

    else if (a4)
    {
      v8 = a4 == 1;
    }

    else
    {
      v8 = a7 < a3;
    }
  }

  return (v8 & 1) == 0;
}

void specialized _RowVisitationContext.selectionValue(respectSelectionDisabled:)(char a1@<W0>, uint64_t a2@<X8>)
{
  *&v6 = *(v2 + 152);
  v9 = 1;
  ViewTraitCollection.value<A>(for:defaultValue:)();
  if ((v10 & 1) != 0 || (a1 & 1) == 0)
  {
    outlined init with copy of Binding<AnySelectionManager>(v2 + 160, &v6, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8], MEMORY[0x1E69E6720]);
    if (*(&v7 + 1))
    {
      v5 = v7;
      *a2 = v6;
      *(a2 + 16) = v5;
      *(a2 + 32) = v8;
    }

    else
    {
      _s7SwiftUI19ViewTraitCollectionVAAE26listSelectionIdentityValue3for07respectG8DisabledxSgxm_SbtSHRzlFs11AnyHashableV_Tt0B5(1, *(v2 + 152), a2);
      if (*(&v7 + 1))
      {
        _s7SwiftUI7BindingVyAA27AnyTableColumnCustomizationVGWOhTm_0(&v6, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8], MEMORY[0x1E69E6720]);
      }
    }
  }

  else
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }
}

double _s7SwiftUI19ViewTraitCollectionVAAE26listSelectionIdentityValue3for07respectG8DisabledxSgxm_SbtSHRzlFs11AnyHashableV_Tt0B5@<D0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *&v22 = a2;
  if ((ViewTraitCollection.isAuxiliaryContent.getter() & 1) == 0)
  {
    *&v22 = a2;
    LOBYTE(v14[0]) = 1;
    ViewTraitCollection.value<A>(for:defaultValue:)();
    if ((v18 & 1) != 0 || (a1 & 1) == 0)
    {
      *&v18 = a2;
      ViewTraitCollection.tag<A>(for:)();
      if (*(&v23 + 1))
      {
        result = *&v22;
        v8 = v23;
        *a3 = v22;
        *(a3 + 16) = v8;
        *(a3 + 32) = v24;
        return result;
      }

      v9 = MEMORY[0x1E69E6720];
      _s7SwiftUI7BindingVyAA27AnyTableColumnCustomizationVGWOhTm_0(&v22, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8], MEMORY[0x1E69E6720]);
      v17 = a2;
      memset(v14, 0, 24);
      v14[3] = 1;
      v15 = 0u;
      v16 = 0u;
      ViewTraitCollection.value<A>(for:defaultValue:)();
      _s7SwiftUI7BindingVyAA27AnyTableColumnCustomizationVGWOhTm_0(v14, &lazy cache variable for type metadata for NavigationLinkSelectionIdentifier?, &type metadata for NavigationLinkSelectionIdentifier, v9);
      if (*(&v19 + 1) == 1)
      {
        v10 = &lazy cache variable for type metadata for NavigationLinkSelectionIdentifier?;
        v11 = &type metadata for NavigationLinkSelectionIdentifier;
      }

      else
      {
        v22 = v18;
        v23 = v19;
        v24 = v20;
        v25 = v21;
        outlined init with copy of Binding<AnySelectionManager>(&v22, &v18, &lazy cache variable for type metadata for AnyNavigationLinkPresentedValue?, &type metadata for AnyNavigationLinkPresentedValue, MEMORY[0x1E69E6720]);
        v12 = *(&v19 + 1);
        if (*(&v19 + 1))
        {
          v13 = v20;
          __swift_project_boxed_opaque_existential_1(&v18, *(&v19 + 1));
          (*(v13 + 48))(MEMORY[0x1E69E69B8], MEMORY[0x1E69E69B8], v12, v13);
          outlined destroy of NavigationLinkSelectionIdentifier(&v22);
          outlined destroy of AnyNavigationLinkPresentedValue(&v18);
          return result;
        }

        outlined destroy of NavigationLinkSelectionIdentifier(&v22);
        v10 = &lazy cache variable for type metadata for AnyNavigationLinkPresentedValue?;
        v11 = &type metadata for AnyNavigationLinkPresentedValue;
      }

      _s7SwiftUI7BindingVyAA27AnyTableColumnCustomizationVGWOhTm_0(&v18, v10, v11, MEMORY[0x1E69E6720]);
    }
  }

  *(a3 + 32) = 0;
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

double _s7SwiftUI27CollectionViewListUtilitiesO11makeOutputs6inputs11coordinator0J4Kind14scrollGeometryAA01_dH0VAA01_D6InputsV_14AttributeGraph0O0VyAA012UICollectiondE11CoordinatorCyxq_GGAC0rK0OAM08IndirectO0VyAA06ScrollM0VGtAA0cdE14DataSourceBaseRzAA16SelectionManagerR_0X5ValueQy_A1_Rtzr0_lFZAA05TableuV7AdaptorV_AA03AnyxY0VTt4B5@<D0>(uint64_t a1@<X0>, int a2@<W1>, unsigned int a3@<W2>, unsigned int a4@<W3>, double *a5@<X8>)
{
  v76 = a4;
  v79 = a3;
  LODWORD(v78) = a2;
  v77 = a5;
  v105 = *MEMORY[0x1E69E9840];
  _s7SwiftUI16BridgedListStateV12ScrollTargetVSgMaTm_0(0, &lazy cache variable for type metadata for BridgedListState.ScrollTarget?, type metadata accessor for BridgedListState.ScrollTarget, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v69 - v7;
  v9 = type metadata accessor for BridgedListState(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v81 = 1;
  v87 = *(a1 + 48);
  v88 = *(a1 + 56);
  *&v89[0] = *(a1 + 48);
  DWORD2(v89[0]) = *(a1 + 56);
  outlined init with copy of PreferencesInputs(&v87, v100);
  outlined init with copy of PreferencesInputs(&v87, v100);
  if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
  {
    static ScrollGeometry.zero.getter();
    v12 = 0;
    v80 = v89[0];
    v74 = v89[2];
    v75 = v89[1];
    v71 = v92;
    v72 = v91;
    v73 = v90;
    v13 = v93;
    v14 = v94;
  }

  else
  {
    v13 = 0;
    v14 = 0;
    v80 = 0u;
    v12 = v81;
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v71 = 0u;
  }

  v15 = type metadata accessor for BridgedListState.ScrollTarget(0);
  (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v2VGMaTm_2(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v2>, MEMORY[0x1E697DF20], MEMORY[0x1E697DF18], MEMORY[0x1E697EC20]);
  lazy protocol witness table accessor for type _SemanticFeature<Semantics_v2> and conformance _SemanticFeature<A>();
  v16 = static SemanticFeature.isEnabled.getter();
  v17 = 15.0;
  if (v16)
  {
    v17 = 16.0;
  }

  *v11 = v17;
  outlined init with take of BridgedListState.ScrollTarget?(v8, v11 + v9[5], &lazy cache variable for type metadata for BridgedListState.ScrollTarget?, type metadata accessor for BridgedListState.ScrollTarget);
  v18 = v11 + v9[6];
  v19 = v75;
  *v18 = v80;
  *(v18 + 1) = v19;
  v20 = v73;
  *(v18 + 2) = v74;
  *(v18 + 3) = v20;
  v21 = v71;
  *(v18 + 4) = v72;
  *(v18 + 5) = v21;
  *(v18 + 12) = v13;
  *(v18 + 13) = v14;
  v18[112] = v12;
  *(v11 + v9[7]) = 0;
  LODWORD(v80) = Attribute.init<A>(body:value:flags:update:)();
  outlined destroy of BridgedListState(v11, type metadata accessor for BridgedListState);
  v89[0] = *a1;
  v22 = *(a1 + 16);
  *(&v89[1] + 8) = *(a1 + 24);
  *(&v89[2] + 1) = *(a1 + 40);
  *&v75 = v22;
  *&v89[1] = v22;
  v23 = _GraphInputs.scrollPhaseState.getter();
  v24 = v23;
  v25 = v23;
  LODWORD(v73) = *MEMORY[0x1E698D3F8];
  if (v23 == v73)
  {
    default argument 1 of ScrollPhaseState.init(phase:velocity:)();
    ScrollPhaseState.init(phase:velocity:)();
    v100[0] = v89[0];
    *&v100[8] = *(v89 + 8);
    v25 = Attribute.init<A>(body:value:flags:update:)();
  }

  LODWORD(v89[0]) = v80;
  swift_unknownObjectWeakInit();
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type UpdateBridgedState and conformance UpdateBridgedState();
  v26 = Attribute.init<A>(body:value:flags:update:)();
  outlined destroy of UpdateBridgedState(v89);
  AGGraphGetFlags();
  AGGraphSetFlags();
  swift_unknownObjectWeakInit();
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for UIScrollView?(0);
  lazy protocol witness table accessor for type ListScrollViewProvider and conformance ListScrollViewProvider();
  v27 = Attribute.init<A>(body:value:flags:update:)();
  outlined destroy of ListScrollViewProvider(v89);
  *&v72 = type metadata accessor for CVarArg(0, &lazy cache variable for type metadata for Scrollable, MEMORY[0x1E697DAE0]);
  v28 = Attribute.init<A>(body:value:flags:update:)();
  LODWORD(v89[0]) = v78;
  BYTE4(v89[0]) = v79 & 1;
  *(&v89[0] + 1) = __PAIR64__(v25, v26);
  v79 = v27;
  LODWORD(v89[1]) = v27;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for UICollectionViewListCoordinator<TableDataSourceAdaptor, AnySelectionManager>(0, &lazy cache variable for type metadata for ListRepresentable<TableDataSourceAdaptor, AnySelectionManager>, type metadata accessor for ListRepresentable);
  type metadata accessor for UICollectionViewListCoordinator<TableDataSourceAdaptor, AnySelectionManager>(0, &lazy cache variable for type metadata for MakeRepresentable<TableDataSourceAdaptor, AnySelectionManager>, type metadata accessor for MakeRepresentable);
  lazy protocol witness table accessor for type CollectionViewListScrollable<TableDataSourceAdaptor, AnySelectionManager> and conformance CollectionViewListScrollable<A, B>(&lazy protocol witness table cache variable for type MakeRepresentable<TableDataSourceAdaptor, AnySelectionManager> and conformance MakeRepresentable<A, B>, &lazy cache variable for type metadata for MakeRepresentable<TableDataSourceAdaptor, AnySelectionManager>, type metadata accessor for MakeRepresentable, protocol conformance descriptor for MakeRepresentable<A, B>);
  v29 = Attribute.init<A>(body:value:flags:update:)();
  v30 = *(a1 + 48);
  v101 = *(a1 + 32);
  v102 = v30;
  v103 = *(a1 + 64);
  v104 = *(a1 + 80);
  v31 = *(a1 + 16);
  *v100 = *a1;
  *&v100[16] = v31;
  outlined init with copy of _ViewInputs(a1, v89);
  LODWORD(v74) = v28;
  _ViewInputs.scrollable.setter();
  if (v24 == v73)
  {
    MEMORY[0x18D003C90](v25);
  }

  PreferenceKeys.remove(_:)();
  LODWORD(v95[0]) = v29;
  v96[2] = v101;
  v96[3] = v102;
  v96[4] = v103;
  v97 = v104;
  v96[0] = *v100;
  v96[1] = *&v100[16];
  v89[2] = v101;
  v90 = v102;
  v91 = v103;
  LODWORD(v92) = v104;
  v89[0] = *v100;
  v89[1] = *&v100[16];
  outlined init with copy of _ViewInputs(v96, v98);
  static View.makeDebuggableView(view:inputs:)();
  v98[2] = v89[2];
  v98[3] = v90;
  v98[4] = v91;
  v99 = v92;
  v98[0] = v89[0];
  v98[1] = v89[1];
  outlined destroy of _ViewInputs(v98);
  v32 = AGCreateWeakAttribute();
  v33 = v32;
  v78 = HIDWORD(v32);
  v34 = AGCreateWeakAttribute();
  v35 = v34;
  *&v71 = HIDWORD(v34);
  v36 = AGCreateWeakAttribute();
  v37 = v36;
  v70 = HIDWORD(v36);
  *&v89[0] = v85;
  DWORD2(v89[0]) = LODWORD(v86);
  PreferencesOutputs.subscript.getter();
  v38 = AGCreateWeakAttribute();
  v39 = v38;
  v40 = HIDWORD(v38);
  type metadata accessor for MutableBox<UInt32>(0, &lazy cache variable for type metadata for MutableBox<UInt32>, MEMORY[0x1E69E7668], MEMORY[0x1E697DAC0]);
  v41 = swift_allocObject();
  *(v41 + 16) = 0;
  type metadata accessor for UICollectionViewListCoordinator<TableDataSourceAdaptor, AnySelectionManager>(0, &lazy cache variable for type metadata for CollectionViewListScrollable<TableDataSourceAdaptor, AnySelectionManager>, type metadata accessor for CollectionViewListScrollable);
  v95[3] = v42;
  v95[4] = lazy protocol witness table accessor for type CollectionViewListScrollable<TableDataSourceAdaptor, AnySelectionManager> and conformance CollectionViewListScrollable<A, B>(&lazy protocol witness table cache variable for type CollectionViewListScrollable<TableDataSourceAdaptor, AnySelectionManager> and conformance CollectionViewListScrollable<A, B>, &lazy cache variable for type metadata for CollectionViewListScrollable<TableDataSourceAdaptor, AnySelectionManager>, type metadata accessor for CollectionViewListScrollable, protocol conformance descriptor for CollectionViewListScrollable<A, B>);
  v43 = swift_allocObject();
  v95[0] = v43;
  v44 = v78;
  *(v43 + 16) = v33;
  *(v43 + 20) = v44;
  v45 = v70;
  v46 = v71;
  *(v43 + 24) = v35;
  *(v43 + 28) = v46;
  *(v43 + 32) = v37;
  *(v43 + 36) = v45;
  *(v43 + 40) = v39;
  *(v43 + 44) = v40;
  *(v43 + 48) = v41;
  v47 = v74;
  AGGraphSetValue();
  __swift_destroy_boxed_opaque_existential_1(v95);
  *&v89[0] = v87;
  DWORD2(v89[0]) = v88;
  v48 = PreferencesInputs.contains<A>(_:includeHostPreferences:)();
  *&v89[0] = v87;
  DWORD2(v89[0]) = v88;
  if (PreferencesInputs.contains<A>(_:includeHostPreferences:)() & 1) != 0 || (v48)
  {
    LODWORD(v89[0]) = v47;
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    type metadata accessor for [Scrollable](0);
    lazy protocol witness table accessor for type UnaryScrollablePreferenceProvider and conformance UnaryScrollablePreferenceProvider();
    v49 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v89[0]) = 0;
    PreferencesOutputs.subscript.setter();
    if (v48)
    {
      AccessibilityProperties.init()();
      LOBYTE(v89[0]) = 0;
      DWORD1(v89[0]) = v49;
      v50 = Attribute.init<A>(body:value:flags:update:)();
      outlined destroy of AccessibilityScrollableModifier(v89);
      _s7SwiftUI25AccessibilityViewModifierPAAE04makeC9Transform8modifier6inputs7outputs14AttributeGraph0K0VyAA0C8NodeListVGSgAA01_L5ValueVyxG_AA01_D6InputsVAA01_D7OutputsVtFZAA0c10ScrollableE0V_Tt2B5Tm(v50, a1, v85, SLODWORD(v86), &lazy cache variable for type metadata for AccessibilityViewModifierAccessor<AccessibilityScrollableModifier>, lazy protocol witness table accessor for type AccessibilityScrollableModifier and conformance AccessibilityScrollableModifier, &type metadata for AccessibilityScrollableModifier);
      PreferencesOutputs.subscript.setter();
    }
  }

  LODWORD(v89[0]) = v80;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type ScrollGeometryProvider and conformance ScrollGeometryProvider();
  v51 = Attribute.init<A>(body:value:flags:update:)();
  v52 = *(a1 + 48);
  v89[2] = *(a1 + 32);
  v90 = v52;
  v91 = *(a1 + 64);
  LODWORD(v92) = *(a1 + 80);
  v53 = *(a1 + 16);
  v89[0] = *a1;
  v89[1] = v53;
  _ViewInputs.position.getter();
  ScrollGeometryTransformProvider.init(position:transform:)();
  *&v89[0] = v82;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type ScrollGeometryTransformProvider and conformance ScrollGeometryTransformProvider();
  v54 = Attribute.init<A>(body:value:flags:update:)();
  LOBYTE(v89[0]) = 2;
  type metadata accessor for GraphHost();
  MEMORY[0x18D00B7D0]();
  LOBYTE(v82) = 0;
  v55 = GraphHost.intern<A>(_:for:id:)();

  *&v89[0] = __PAIR64__(v55, v51);
  DWORD2(v89[0]) = v54;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  v56 = MEMORY[0x1E69E62F8];
  type metadata accessor for MutableBox<UInt32>(0, &lazy cache variable for type metadata for [ScrollGeometryState], MEMORY[0x1E697F7D0], MEMORY[0x1E69E62F8]);
  lazy protocol witness table accessor for type ScrollGeometryStateProvider and conformance ScrollGeometryStateProvider();
  v57 = Attribute.init<A>(body:value:flags:update:)();
  *&v89[0] = v87;
  DWORD2(v89[0]) = v88;
  MEMORY[0x1EEE9AC00](v57);
  *(&v69 - 4) = v58;
  PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();

  AGGraphSetIndirectAttribute();
  swift_beginAccess();
  v59 = *(a1 + 72);
  v60 = *(a1 + 48);
  v89[2] = *(a1 + 32);
  v90 = v60;
  v91 = *(a1 + 64);
  LODWORD(v92) = *(a1 + 80);
  v61 = *(a1 + 16);
  v89[0] = *a1;
  v89[1] = v61;
  _ViewInputs.position.getter();
  ResolvedSafeAreaInsets.init(regions:environment:size:position:transform:safeAreaInsets:)();
  *&v89[0] = v82;
  *(v89 + 8) = v83;
  DWORD2(v89[1]) = v84;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type ResolvedSafeAreaInsets and conformance ResolvedSafeAreaInsets();
  v62 = Attribute.init<A>(body:value:flags:update:)();
  v63 = *(a1 + 48);
  v89[2] = *(a1 + 32);
  v90 = v63;
  v91 = *(a1 + 64);
  LODWORD(v92) = *(a1 + 80);
  v64 = *(a1 + 16);
  v89[0] = *a1;
  v89[1] = v64;
  *&v89[0] = __PAIR64__(_ViewInputs.position.getter(), v79);
  *(&v89[0] + 1) = __PAIR64__(v62, v59);
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for MutableBox<UInt32>(0, &lazy cache variable for type metadata for [ContentScrollViewBox], &type metadata for ContentScrollViewBox, v56);
  lazy protocol witness table accessor for type ScrollViewPreferenceProvider and conformance ScrollViewPreferenceProvider();
  v65 = Attribute.init<A>(body:value:flags:update:)();
  v82 = v87;
  LODWORD(v83) = v88;
  MEMORY[0x1EEE9AC00](v65);
  *(&v69 - 4) = v66;
  PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();

  v89[2] = v101;
  v90 = v102;
  v91 = v103;
  LODWORD(v92) = v104;
  v89[0] = *v100;
  v89[1] = *&v100[16];
  outlined destroy of _ViewInputs(v89);
  v67 = v77;
  *v77 = v85;
  result = v86;
  v67[1] = v86;
  return result;
}

unint64_t _s7SwiftUI25WeakSelectionBasedStorageVyACyxGAA0deF0VyxGcfCAA04TextD0V_Tt0g5Tm(unint64_t a1, unint64_t a2)
{
  v3 = HIDWORD(a1);
  v4 = *MEMORY[0x1E698D3F8];
  if (*MEMORY[0x1E698D3F8] == a1)
  {
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v7 = AGCreateWeakAttribute();
    v6 = v7 & 0xFFFFFFFF00000000;
    v5 = v7;
  }

  if (v4 == v3)
  {
    if (v4 != a2)
    {
      goto LABEL_6;
    }

LABEL_9:
    if (v4 == HIDWORD(a2))
    {
      return v6 | v5;
    }

    goto LABEL_7;
  }

  AGCreateWeakAttribute();
  if (v4 == a2)
  {
    goto LABEL_9;
  }

LABEL_6:
  AGCreateWeakAttribute();
  if (v4 != HIDWORD(a2))
  {
LABEL_7:
    AGCreateWeakAttribute();
  }

  return v6 | v5;
}

void specialized UICollectionViewListCoordinator.update(_:to:transaction:performDiff:)(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v87 = a1;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v84 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v16);
  v21 = *MEMORY[0x1E69E7D40] & *v4;
  v22 = *(v21 + 0xC8);
  v89 = v4;
  if ((*(v4 + v22) & 1) == 0)
  {
    v82 = v9;
    v83 = v8;
    v73 = &v70 - v18;
    v74 = v20;
    v75 = v19;
    v76 = v17;
    v77 = a4;
    v78 = a3;
    v79 = v14;
    v23 = *(a2 + 168);
    v85 = a2;
    v24 = *(a2 + 169) != 2;
    v72 = v23;
    v25 = v24 & ~v23;
    v26 = *(v21 + 136);
    v27 = v89;
    swift_beginAccess();
    v88 = v26;
    outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(v26 + v27, v92, &lazy cache variable for type metadata for ShadowListDataSource<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListDataSource);
    outlined init with copy of TableDataSourceAdaptor(v92, v93);
    outlined destroy of ShadowListUpdateRecorder<TableDataSourceAdaptor>(v92, &lazy cache variable for type metadata for ShadowListDataSource<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListDataSource);
    v80 = v11;
    v81 = v12;
    if (v94 == 1)
    {
      outlined destroy of TableDataSourceAdaptor(v93);
      v28 = 0;
    }

    else
    {
      v29 = v95;
      outlined destroy of TableDataSourceAdaptor(v93);
      v28 = v29 != 2;
    }

    v71 = v25;
    v86 = v25 ^ v28;
    outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(v88 + v89, v100, &lazy cache variable for type metadata for ShadowListDataSource<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListDataSource);
    outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(v100, v92, &lazy cache variable for type metadata for ShadowListUpdateRecorder<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListUpdateRecorder);
    _s7SwiftUI23ShadowSectionCollectionVyACyxGAA0C18ListUpdateRecorderVyxGcfCAA22TableDataSourceAdaptorV_Tt1g5(v92, v99);
    outlined destroy of ShadowListUpdateRecorder<TableDataSourceAdaptor>(v100, &lazy cache variable for type metadata for ShadowListDataSource<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListDataSource);
    outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(v99, v98, &lazy cache variable for type metadata for ShadowSectionCollection<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowSectionCollection);
    v98[25] = 0;
    v30 = v99[24];
    outlined destroy of ShadowListUpdateRecorder<TableDataSourceAdaptor>(v99, &lazy cache variable for type metadata for ShadowSectionCollection<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowSectionCollection);
    v98[26] = v30;
    _s7SwiftUI21TableColumnCollectionV5EntryVWOcTm_0(v98, v93, type metadata accessor for DefaultIndices<ShadowSectionCollection<TableDataSourceAdaptor>>);
    v31 = 0;
    v32 = v96;
    while (v32 != v31)
    {
      v33 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        __break(1u);
        return;
      }

      outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(v88 + v89, v91, &lazy cache variable for type metadata for ShadowListDataSource<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListDataSource);
      outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(v91, v90, &lazy cache variable for type metadata for ShadowListUpdateRecorder<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListUpdateRecorder);
      v34 = specialized ShadowListUpdateRecorder.initialIndex(_:)(v31);
      _s7SwiftUI19ShadowRowCollectionV_7sectionACyxGAA0C18ListUpdateRecorderVyxG_10SectionIDs_5IndexQZtcfCAA22TableDataSourceAdaptorV_Tt2g5(v90, v34, v92);
      outlined destroy of ShadowListUpdateRecorder<TableDataSourceAdaptor>(v91, &lazy cache variable for type metadata for ShadowListDataSource<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListDataSource);
      v35 = v92[26];
      specialized ShadowRowCollection.endIndex.getter();
      v37 = v36;
      outlined destroy of ShadowListUpdateRecorder<TableDataSourceAdaptor>(v92, &lazy cache variable for type metadata for ShadowRowCollection<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowRowCollection);
      ++v31;
      if (v35 != v37)
      {
        outlined destroy of BridgedListState(v98, type metadata accessor for DefaultIndices<ShadowSectionCollection<TableDataSourceAdaptor>>);
        v97 = v33;
        outlined destroy of BridgedListState(v93, type metadata accessor for IndexingIterator<DefaultIndices<ShadowSectionCollection<TableDataSourceAdaptor>>>);
        goto LABEL_11;
      }
    }

    outlined destroy of BridgedListState(v98, type metadata accessor for DefaultIndices<ShadowSectionCollection<TableDataSourceAdaptor>>);
    v97 = v32;
    v38 = outlined destroy of BridgedListState(v93, type metadata accessor for IndexingIterator<DefaultIndices<ShadowSectionCollection<TableDataSourceAdaptor>>>);
    MEMORY[0x1EEE9AC00](v38);
    *(&v70 - 2) = v39;
    specialized Sequence.first(where:)(partial apply for specialized closure #2 in implicit closure #1 in UICollectionViewListCoordinator.update(_:to:transaction:performDiff:), (&v70 - 4), 0, v40);
    v86 |= v41 ^ 1;
LABEL_11:
    outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(v88 + v89, v92, &lazy cache variable for type metadata for ShadowListDataSource<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListDataSource);
    outlined init with copy of TableDataSourceAdaptor(v92, v93);
    outlined destroy of ShadowListUpdateRecorder<TableDataSourceAdaptor>(v92, &lazy cache variable for type metadata for ShadowListDataSource<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListDataSource);
    v42 = v94;
    outlined destroy of TableDataSourceAdaptor(v93);
    v44 = v75;
    v43 = v76;
    v45 = *(v75 + 104);
    v46 = *MEMORY[0x1E69DC248];
    v47 = *MEMORY[0x1E69DC240];
    if (v42)
    {
      v48 = v46;
    }

    else
    {
      v48 = v47;
    }

    v49 = v73;
    v45(v73, v48, v76);
    if (v72)
    {
      v50 = v46;
    }

    else
    {
      v50 = v47;
    }

    v51 = v74;
    v45(v74, v50, v43);
    lazy protocol witness table accessor for type DefaultIndices<CountingIndexCollection<ShadowSectionCollection<TableDataSourceAdaptor>>> and conformance DefaultIndices<A>(&lazy protocol witness table cache variable for type UICollectionLayoutListConfiguration.Appearance and conformance UICollectionLayoutListConfiguration.Appearance, MEMORY[0x1E69DC260], MEMORY[0x1E69DC268]);
    v52 = dispatch thunk of static Equatable.== infix(_:_:)();
    v53 = *(v44 + 8);
    v53(v51, v43);
    v53(v49, v43);
    specialized UICollectionViewListCoordinatorBase.update(_:to:transaction:performDiff:)(v87, v85, v78, v77 & 1);
    v55 = v82;
    v54 = v83;
    v57 = v80;
    v56 = v81;
    v58 = v79;
    v59 = v86;
    if (v52 & 1) == 0 || (v86)
    {
      v60 = [v87 collectionViewLayout];
      [v60 invalidateLayout];

      if (v59)
      {
        v61 = v87;
        v88 = [v87 collectionViewLayout];
        objc_opt_self();
        v62 = swift_dynamicCastObjCClassUnconditional();
        v63 = v71;
        v64 = specialized UICollectionViewListCoordinator.layoutConfiguration(hasGlobalHeader:)(v71);
        [v62 setConfiguration_];

        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
        v65 = static OS_dispatch_queue.main.getter();
        v66 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v67 = swift_allocObject();
        *(v67 + 16) = v66;
        *(v67 + 24) = v61;
        *(v67 + 32) = v63;
        v92[4] = partial apply for specialized closure #3 in UICollectionViewListCoordinator.update(_:to:transaction:performDiff:);
        v92[5] = v67;
        v92[0] = MEMORY[0x1E69E9820];
        v92[1] = 1107296256;
        v92[2] = thunk for @escaping @callee_guaranteed () -> ();
        v92[3] = &block_descriptor_67;
        v68 = _Block_copy(v92);
        v69 = v61;

        static DispatchQoS.unspecified.getter();
        v92[0] = MEMORY[0x1E69E7CC0];
        lazy protocol witness table accessor for type DefaultIndices<CountingIndexCollection<ShadowSectionCollection<TableDataSourceAdaptor>>> and conformance DefaultIndices<A>(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
        _s7SwiftUI16BridgedListStateV12ScrollTargetVSgMaTm_0(0, &lazy cache variable for type metadata for [DispatchWorkItemFlags], MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
        lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
        dispatch thunk of SetAlgebra.init<A>(_:)();
        MEMORY[0x18D00DA20](0, v58, v57, v68);
        _Block_release(v68);

        (*(v55 + 8))(v57, v54);
        (*(v84 + 8))(v58, v56);
      }
    }
  }
}

uint64_t specialized ListCoreBatchUpdates.isEmpty.getter(uint64_t a1)
{
  if ((IndexSet.isEmpty.getter() & 1) == 0)
  {
    return 0;
  }

  _s7SwiftUI33AccessibilityViewModifierAccessor33_71F62EDC1DAE3BBC7A74521E45BA5A66LLCyAA0c10AttachmentE0VGMaTm_0(0, &lazy cache variable for type metadata for ListCoreBatchUpdates<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ListCoreBatchUpdates);
  v3 = v2;
  if ((IndexSet.isEmpty.getter() & 1) == 0 || *(*(v1 + v3[10]) + 16) || *(*(v1 + v3[11]) + 16) || *(*(v1 + v3[12]) + 16) || *(*(v1 + v3[13]) + 16))
  {
    return 0;
  }

  else
  {
    return IndexSet.isEmpty.getter() & 1;
  }
}

uint64_t specialized ListBatchUpdates.formUpdates<A>(from:to:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v2;
  if (isUniquelyReferenced_nonNull_native)
  {
    specialized Array.replaceSubrange<A>(_:with:)(0, *(v7 + 16));
  }

  else
  {
    updated = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI10ListUpdateOyAF13CountingIndexVySiGAKG_Tt1g5(0, *(v7 + 24) >> 1);

    *v3 = updated;
  }

  if (*(v3[3] + 16))
  {
    v9 = swift_isUniquelyReferenced_nonNull_native();
    v14[0] = v3[3];
    type metadata accessor for _NativeDictionary<Int, (Int, CountingIndex<Int>)>(0);
    _NativeDictionary.removeAll(isUnique:)(v9);
    v3[3] = v14[0];
  }

  if (*(v3[4] + 16))
  {
    v10 = swift_isUniquelyReferenced_nonNull_native();
    v14[0] = v3[4];
    type metadata accessor for _NativeDictionary<TableRowID, (Int, (CountingIndex<Int>, CountingIndex<Int>))>(0);
    _NativeDictionary.removeAll(isUnique:)(v10);
    v3[4] = v14[0];
  }

  outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(a1, v14, &lazy cache variable for type metadata for ShadowListDataSource<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListDataSource);
  outlined init with copy of TableDataSourceAdaptor(a2, v13);
  specialized ListBatchUpdates.computeRemovesAndInserts<A>(from:to:)(v14, v13, v11);
  specialized ListBatchUpdates.computeMoves<A>(from:to:)(v14, v13);
  outlined destroy of ShadowListUpdateRecorder<TableDataSourceAdaptor>(v13, &lazy cache variable for type metadata for CountingIndexListDataSource<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for CountingIndexListDataSource);
  return outlined destroy of BridgedListState(v14, type metadata accessor for CountingIndexListDataSource<ShadowListDataSource<TableDataSourceAdaptor>>);
}

uint64_t specialized ListCoreBatchUpdates.formResult<A>(_:)(uint64_t *a1)
{
  v2 = v1;
  type metadata accessor for (source: IndexPath, destination: IndexPath)(0);
  v63 = *(v4 - 8);
  v64 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v62 = v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v61 = v59 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v67 = v59 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v66 = v59 - v15;
  specialized ListCoreBatchUpdates.resetAll()();
  v16 = *a1;
  v17 = a1[1];
  v18 = a1[3];
  v59[3] = a1[2];
  v59[4] = v17;
  v59[2] = v18;
  v59[1] = a1[4];
  v19 = *(v16 + 16);
  v59[5] = v16;
  if (!v19)
  {
    outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(a1, v70, &lazy cache variable for type metadata for ListBatchUpdates<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ListBatchUpdates);
LABEL_58:
  }

  v69 = v7;
  v20 = v16 + 32;
  result = outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(a1, v70, &lazy cache variable for type metadata for ListBatchUpdates<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ListBatchUpdates);
  v22 = 0;
  v68 = (v8 + 32);
  v23 = v8;
  v65 = v20;
  v60 = v8;
  while (v22 < v19)
  {
    v24 = v20 + 96 * v22;
    v25 = *(v24 + 8);
    result = *(v24 + 32);
    v26 = *(v24 + 89);
    if (v26 > 2)
    {
      if (*(v24 + 89) <= 4u)
      {
        if (v26 == 3)
        {
          if (*(v24 + 16))
          {
            goto LABEL_79;
          }

          if (*(v24 + 40))
          {
            goto LABEL_78;
          }

          v27 = __OFADD__(v22++, 1);
          if (v27)
          {
            goto LABEL_64;
          }

          MEMORY[0x18D000680](result, *(v24 + 8));
          _s7SwiftUI33AccessibilityViewModifierAccessor33_71F62EDC1DAE3BBC7A74521E45BA5A66LLCyAA0c10AttachmentE0VGMaTm_0(0, &lazy cache variable for type metadata for ListCoreBatchUpdates<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ListCoreBatchUpdates);
          v29 = *(v28 + 44);
          v30 = *(v2 + v29);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v30[2] + 1, 1, v30);
          }

          v32 = v30[2];
          v31 = v30[3];
          if (v32 >= v31 >> 1)
          {
            v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1, v30);
          }

          v30[2] = v32 + 1;
          result = (*(v23 + 32))(v30 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v32, v66, v69);
        }

        else
        {
          if (*(v24 + 16))
          {
            goto LABEL_76;
          }

          if (*(v24 + 40))
          {
            goto LABEL_75;
          }

          v27 = __OFADD__(v22++, 1);
          if (v27)
          {
            goto LABEL_65;
          }

          MEMORY[0x18D000680](result, *(v24 + 8));
          _s7SwiftUI33AccessibilityViewModifierAccessor33_71F62EDC1DAE3BBC7A74521E45BA5A66LLCyAA0c10AttachmentE0VGMaTm_0(0, &lazy cache variable for type metadata for ListCoreBatchUpdates<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ListCoreBatchUpdates);
          v29 = *(v56 + 48);
          v30 = *(v2 + v29);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v30[2] + 1, 1, v30);
          }

          v58 = v30[2];
          v57 = v30[3];
          if (v58 >= v57 >> 1)
          {
            v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v57 > 1), v58 + 1, 1, v30);
          }

          v30[2] = v58 + 1;
          result = (*(v23 + 32))(v30 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v58, v67, v69);
        }

        goto LABEL_52;
      }

      if (v26 == 5)
      {
        if (*(v24 + 16))
        {
          goto LABEL_74;
        }

        if (*(v24 + 40))
        {
          goto LABEL_72;
        }

        if (*(v24 + 64))
        {
          goto LABEL_71;
        }

        if (*(v24 + 88))
        {
          goto LABEL_70;
        }

        v27 = __OFADD__(v22++, 1);
        if (v27)
        {
          goto LABEL_66;
        }

        v33 = *(v24 + 56);
        v34 = *(v24 + 80);
        v35 = v6;
        v36 = v61;
        MEMORY[0x18D000680](result, *(v24 + 8));
        v37 = v62;
        MEMORY[0x18D000680](v34, v33);
        v38 = *(v64 + 48);
        v39 = *v68;
        v40 = v35;
        v41 = v36;
        v6 = v35;
        v42 = v69;
        (*v68)(v40, v41, v69);
        v39(&v6[v38], v37, v42);
        _s7SwiftUI33AccessibilityViewModifierAccessor33_71F62EDC1DAE3BBC7A74521E45BA5A66LLCyAA0c10AttachmentE0VGMaTm_0(0, &lazy cache variable for type metadata for ListCoreBatchUpdates<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ListCoreBatchUpdates);
        v29 = *(v43 + 52);
        v30 = *(v2 + v29);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v30[2] + 1, 1, v30);
        }

        v20 = v65;
        v45 = v30[2];
        v44 = v30[3];
        if (v45 >= v44 >> 1)
        {
          v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v45 + 1, 1, v30);
        }

        v30[2] = v45 + 1;
        result = _s7SwiftUI16TableCellFormulaVWObTm_0(v6, v30 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v45, type metadata accessor for (source: IndexPath, destination: IndexPath));
LABEL_52:
        *(v2 + v29) = v30;
        goto LABEL_4;
      }

      if (*(v24 + 16))
      {
        goto LABEL_73;
      }

      v27 = __OFADD__(v22++, 1);
      if (v27)
      {
        goto LABEL_60;
      }

LABEL_55:
      _s7SwiftUI33AccessibilityViewModifierAccessor33_71F62EDC1DAE3BBC7A74521E45BA5A66LLCyAA0c10AttachmentE0VGMaTm_0(0, &lazy cache variable for type metadata for ListCoreBatchUpdates<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ListCoreBatchUpdates);
      v46 = v25;
LABEL_3:
      result = *&IndexSet.insert(_:)(v46);
      goto LABEL_4;
    }

    if (!*(v24 + 89))
    {
      if (*(v24 + 16))
      {
        goto LABEL_77;
      }

      v27 = __OFADD__(v22++, 1);
      if (v27)
      {
        goto LABEL_62;
      }

      v46 = *(v24 + 8);
      goto LABEL_3;
    }

    if (v26 == 1)
    {
      if (*(v24 + 16))
      {
        goto LABEL_69;
      }

      v27 = __OFADD__(v22++, 1);
      if (v27)
      {
        goto LABEL_61;
      }

      goto LABEL_55;
    }

    if (*(v24 + 16))
    {
      goto LABEL_68;
    }

    if (*(v24 + 40))
    {
      goto LABEL_67;
    }

    v27 = __OFADD__(v22++, 1);
    if (v27)
    {
      goto LABEL_63;
    }

    v47 = v6;
    v48 = *(v24 + 32);
    _s7SwiftUI33AccessibilityViewModifierAccessor33_71F62EDC1DAE3BBC7A74521E45BA5A66LLCyAA0c10AttachmentE0VGMaTm_0(0, &lazy cache variable for type metadata for ListCoreBatchUpdates<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ListCoreBatchUpdates);
    v50 = *(v49 + 40);
    v51 = *(v2 + v50);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v51 + 16) + 1, 1, v51);
      v51 = result;
    }

    v53 = *(v51 + 16);
    v52 = *(v51 + 24);
    if (v53 >= v52 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v52 > 1), v53 + 1, 1, v51);
      v51 = result;
    }

    v54 = v48;
    v6 = v47;
    *(v51 + 16) = v53 + 1;
    v55 = v51 + 16 * v53;
    *(v55 + 32) = v25;
    *(v55 + 40) = v54;
    *(v2 + v50) = v51;
    v23 = v60;
    v20 = v65;
LABEL_4:
    if (v22 == v19)
    {
      goto LABEL_58;
    }
  }

  __break(1u);
LABEL_60:
  __break(1u);
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
  return result;
}

void specialized ListCoreBatchUpdates.resetAll()()
{
  v1 = v0;
  IndexSet.removeAll()();
  _s7SwiftUI33AccessibilityViewModifierAccessor33_71F62EDC1DAE3BBC7A74521E45BA5A66LLCyAA0c10AttachmentE0VGMaTm_0(0, &lazy cache variable for type metadata for ListCoreBatchUpdates<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ListCoreBatchUpdates);
  v3 = v2;
  IndexSet.removeAll()();
  v4 = v3[10];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + v4);
  if (isUniquelyReferenced_nonNull_native)
  {
    specialized Array.replaceSubrange<A>(_:with:)(0, *(v6 + 16));
  }

  else
  {
    v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Sit_Tt1g5(0, *(v6 + 24) >> 1);

    *(v1 + v4) = v7;
  }

  v8 = v3[11];
  v9 = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v1 + v8);
  if (v9)
  {
    specialized Array.replaceSubrange<A>(_:with:)(0, *(v10 + 16));
  }

  else
  {
    v11 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10Foundation9IndexPathV_Tt1g5(0, *(v10 + 24) >> 1);

    *(v1 + v8) = v11;
  }

  v12 = v3[12];
  v13 = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(v1 + v12);
  if (v13)
  {
    specialized Array.replaceSubrange<A>(_:with:)(0, *(v14 + 16));
  }

  else
  {
    v15 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10Foundation9IndexPathV_Tt1g5(0, *(v14 + 24) >> 1);

    *(v1 + v12) = v15;
  }

  v16 = v3[13];
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v18 = *(v1 + v16);
  if (v17)
  {
    specialized Array.replaceSubrange<A>(_:with:)(0, *(v18 + 16));
  }

  else
  {
    v19 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10Foundation9IndexPathV6source_AH11destinationt_Tt1g5(0, *(v18 + 24) >> 1);

    *(v1 + v16) = v19;
  }

  IndexSet.removeAll()();
}

void specialized ListBatchUpdates.computeRemovesAndInserts<A>(from:to:)(uint64_t a1, uint64_t a2, __n128 a3)
{
  v4 = v3;
  outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(a1, &v135, &lazy cache variable for type metadata for ShadowListUpdateRecorder<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListUpdateRecorder);
  _s7SwiftUI23ShadowSectionCollectionVyACyxGAA0C18ListUpdateRecorderVyxGcfCAA22TableDataSourceAdaptorV_Tt1g5(&v135, v157);
  v82 = a2;
  *&v135 = *(a2 + 40);
  v6 = v135;
  *(&v135 + 1) = protocol witness for OptionSet.init(rawValue:) in conformance MainMenuItem.Template.Options;
  *&v136 = 0;
  type metadata accessor for CollectionChanges<CountingIndex<Int>, CountingIndex<Int>>(0);
  type metadata accessor for CountingIndexCollection<ShadowSectionCollection<TableDataSourceAdaptor>>(0);
  type metadata accessor for CountingIndexCollection<LazyMapSequence<[TableSections.Item], Int>>(0);
  v7 = MEMORY[0x1E69801A0];
  lazy protocol witness table accessor for type DefaultIndices<CountingIndexCollection<ShadowSectionCollection<TableDataSourceAdaptor>>> and conformance DefaultIndices<A>(&lazy protocol witness table cache variable for type CountingIndexCollection<ShadowSectionCollection<TableDataSourceAdaptor>> and conformance CountingIndexCollection<A>, type metadata accessor for CountingIndexCollection<ShadowSectionCollection<TableDataSourceAdaptor>>, MEMORY[0x1E69801A0]);
  lazy protocol witness table accessor for type DefaultIndices<CountingIndexCollection<ShadowSectionCollection<TableDataSourceAdaptor>>> and conformance DefaultIndices<A>(&lazy protocol witness table cache variable for type CountingIndexCollection<LazyMapSequence<[TableSections.Item], Int>> and conformance CountingIndexCollection<A>, type metadata accessor for CountingIndexCollection<LazyMapSequence<[TableSections.Item], Int>>, v7);
  v84 = v6;

  CollectionChanges.formChanges<A, B>(from:to:)();

  outlined destroy of BridgedListState(v157, type metadata accessor for CountingIndexCollection<ShadowSectionCollection<TableDataSourceAdaptor>>);
  v8 = *(v4 + 8);
  v9 = *(v8 + 16);
  if (v9)
  {
    v78 = v8 + 32;

    v11 = 0;
    v77 = v10;
    while (v11 < v9)
    {
      v12 = (v78 + 96 * v11);
      v13 = *v12;
      v14 = v12[1];
      v85 = v12[3];
      v79 = v11;
      v80 = v12[4];
      v15 = *(v12 + 40);
      v16 = *(v12 + 16);
      if (*(v12 + 89))
      {
        if (*(v12 + 89) == 1)
        {
          v17 = *(v84 + 16);
          LOBYTE(v105[0]) = v17 == 0;
          LOBYTE(v100) = 1;
          LOBYTE(v95[0]) = v16 & 1;
          LOBYTE(v87) = v15 & 1;
          *&v130 = v84;
          *(&v130 + 1) = protocol witness for OptionSet.init(rawValue:) in conformance MainMenuItem.Template.Options;
          *&v132 = 0;
          v131 = 0uLL;
          BYTE8(v132) = v17 == 0;
          v133 = v17;
          LOBYTE(v134) = 1;
          swift_bridgeObjectRetain_n();
          outlined destroy of BridgedListState(&v130, type metadata accessor for DefaultIndices<CountingIndexCollection<LazyMapSequence<[TableSections.Item], Int>>>);
          *&v111 = v84;
          *(&v111 + 1) = protocol witness for OptionSet.init(rawValue:) in conformance MainMenuItem.Template.Options;
          *&v112 = 0;
          *(&v112 + 1) = v13;
          *&v113 = v14;
          v18 = v95[0];
          BYTE8(v113) = v95[0];
          *&v114 = v85;
          *(&v114 + 1) = v80;
          v19 = v87;
          LOBYTE(v115) = v87;
          *&v135 = v84;
          *(&v135 + 1) = protocol witness for OptionSet.init(rawValue:) in conformance MainMenuItem.Template.Options;
          *&v136 = 0;
          *(&v136 + 1) = v13;
          *&v137 = v14;
          BYTE8(v137) = v95[0];
          *&v138 = v85;
          *(&v138 + 1) = v80;
          LOBYTE(v139) = v87;
          _s7SwiftUI21TableColumnCollectionV5EntryVWOcTm_0(&v111, v157, type metadata accessor for DefaultIndices<CountingIndexCollection<LazyMapSequence<[TableSections.Item], Int>>>);
          outlined destroy of BridgedListState(&v135, type metadata accessor for DefaultIndices<CountingIndexCollection<LazyMapSequence<[TableSections.Item], Int>>>);
          while (1)
          {
            if (v85 == v13)
            {
              if (v18)
              {
                if (v19)
                {
                  goto LABEL_3;
                }
              }

              else if ((v19 & 1) == 0 && v14 == v80)
              {
LABEL_3:

                goto LABEL_4;
              }
            }

            v20 = v13 + 1;
            if (__OFADD__(v13, 1))
            {
              break;
            }

            v21 = *(v84 + 16);
            v22 = v20 == v21;
            if (v20 == v21)
            {
              v23 = 0;
            }

            else
            {
              if (v18)
              {
                goto LABEL_67;
              }

              v23 = v14 + 1;
              if (__OFADD__(v14, 1))
              {
                goto LABEL_64;
              }
            }

            v24 = *v4;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v24 + 2) + 1, 1, v24);
            }

            v26 = *(v24 + 2);
            v25 = *(v24 + 3);
            if (v26 >= v25 >> 1)
            {
              v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, v24);
            }

            LOBYTE(v95[0]) = v18 & 1;
            *(v24 + 2) = v26 + 1;
            v27 = &v24[96 * v26];
            *(v27 + 4) = v13;
            *(v27 + 5) = v14;
            v27[48] = v95[0];
            *(v27 + 49) = v157[0];
            v28 = v157[1];
            v29 = v157[2];
            v30 = v157[3];
            *(v27 + 113) = v158;
            *(v27 + 97) = v30;
            *(v27 + 81) = v29;
            *(v27 + 65) = v28;
            v27[121] = 1;
            *v4 = v24;
            ++v13;
            v14 = v23;
            v18 = v22;
          }

          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
LABEL_65:
          __break(1u);
          break;
        }

        v46 = *(v12 + 88);
        v47 = *(v12 + 64);
        v76 = *(v12 + 9);
        v48 = v12[6];
        v49 = v12[7];
        outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(a1, &v130, &lazy cache variable for type metadata for ShadowListUpdateRecorder<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListUpdateRecorder);
        _s7SwiftUI23ShadowSectionCollectionVyACyxGAA0C18ListUpdateRecorderVyxGcfCAA22TableDataSourceAdaptorV_Tt1g5(&v130, &v111);
        v145 = v121;
        v146 = v122;
        v141 = v117;
        v142 = v118;
        v143 = v119;
        v144 = v120;
        v137 = v113;
        v138 = v114;
        v139 = v115;
        v140 = v116;
        v135 = v111;
        v136 = v112;
        v147 = v123;
        v148 = v13;
        v149 = v14;
        v150 = v16 & 1;
        v151 = v85;
        v152 = v80;
        v153 = v15 & 1;
        v50 = *(v84 + 16);
        v110 = v50 == 0;
        v109 = 1;
        LOBYTE(v87) = v47 & 1;
        v94 = v46 & 1;
        v95[0] = v84;
        v95[1] = protocol witness for OptionSet.init(rawValue:) in conformance MainMenuItem.Template.Options;
        memset(&v95[2], 0, 24);
        v96 = v50 == 0;
        v97 = v50;
        v98 = 0;
        v99 = 1;
        swift_bridgeObjectRetain_n();
        outlined destroy of BridgedListState(v95, type metadata accessor for DefaultIndices<CountingIndexCollection<LazyMapSequence<[TableSections.Item], Int>>>);
        *&v100 = v84;
        *(&v100 + 1) = protocol witness for OptionSet.init(rawValue:) in conformance MainMenuItem.Template.Options;
        *&v101 = 0;
        *(&v101 + 1) = v48;
        *&v102 = v49;
        BYTE8(v102) = v87;
        v103 = v76;
        v104 = v94;
        v156[32] = v94;
        v154 = v100;
        v155 = v101;
        *v156 = v102;
        *&v156[16] = v76;
        v105[0] = v84;
        v105[1] = protocol witness for OptionSet.init(rawValue:) in conformance MainMenuItem.Template.Options;
        v105[2] = 0;
        v105[3] = v48;
        v105[4] = v49;
        v106 = v87;
        v107 = v76;
        v108 = v94;
        _s7SwiftUI21TableColumnCollectionV5EntryVWOcTm_0(&v100, &v130, type metadata accessor for DefaultIndices<CountingIndexCollection<LazyMapSequence<[TableSections.Item], Int>>>);
        outlined destroy of BridgedListState(v105, type metadata accessor for DefaultIndices<CountingIndexCollection<LazyMapSequence<[TableSections.Item], Int>>>);
        _s7SwiftUI21TableColumnCollectionV5EntryVWOcTm_0(&v135, v157, type metadata accessor for DefaultIndices<CountingIndexCollection<ShadowSectionCollection<TableDataSourceAdaptor>>>);
        v51 = v148;
        v52 = v149;
        LOBYTE(v48) = v150;
        outlined destroy of BridgedListState(&v135, type metadata accessor for DefaultIndices<CountingIndexCollection<ShadowSectionCollection<TableDataSourceAdaptor>>>);
        v163 = v51;
        v164 = v52;
        v165 = v48;
        v166 = v154;
        v167 = v155;
        v168 = *v156;
        v169 = v156[8];
        v170 = *&v156[9];
        v171 = *&v156[25];
        v172 = *(&v155 + 1);
        v173 = *v156;
        v174 = v156[8] & 1;
        v175 = 0;
        while (1)
        {
          specialized Zip2Sequence.Iterator.next()(&v87);
          if (v93)
          {
            break;
          }

          v54 = v87;
          v55 = v88;
          v56 = v89;
          v57 = v90;
          updated = _s7SwiftUI16ListBatchUpdatesV27computeRowRemovesAndInserts33_A424F5232720E51D2A2BD1A8E90C36E84from13sourceSection2to06targetW0SayAA0C6UpdateOyAA13CountingIndexVy0W3IDs_5IndexQZGAMySiGGGAA013CountingIndexC10DataSourceAELLVyqd__G_AqVyxGAQtAA0C8DiffableRd__0G3IDs_7ElementQYd__AZ_A_RTzAN_A_QYd__AN_A_RTzAN_AOQYd__APRSlFAA22TableDataSourceAdaptorV_AA06ShadowC10DataSourceVyA6_GTt3B5(a1, v87, v88, v89, v82, v90, v91, v92, v53);
          specialized Array.append<A>(contentsOf:)(updated);
          v59 = specialized ShadowListUpdateRecorder.initialIndex(_:)(v54);
          v60 = TableDataSourceAdaptor.hasHeader(forSectionAt:)(v59);
          if ((v60 ^ TableDataSourceAdaptor.hasHeader(forSectionAt:)(v57)))
          {
            v61 = *v4;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v61 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v61 + 2) + 1, 1, v61);
            }

            v63 = *(v61 + 2);
            v62 = *(v61 + 3);
            if (v63 >= v62 >> 1)
            {
              v61 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v62 > 1), v63 + 1, 1, v61);
            }

            v94 = v56;
            *(v61 + 2) = v63 + 1;
            v64 = &v61[96 * v63];
            *(v64 + 4) = v54;
            *(v64 + 5) = v55;
            v64[48] = v94;
            *(v64 + 49) = v130;
            v65 = v131;
            v66 = v132;
            v67 = v133;
            *(v64 + 113) = v134;
            *(v64 + 97) = v67;
            *(v64 + 81) = v66;
            *(v64 + 65) = v65;
            v64[121] = 6;
            *v4 = v61;
          }

          if (specialized ShadowListUpdateRecorder.hasFooter(forSectionAt:)(v54))
          {
            v68 = *v4;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v68 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v68 + 2) + 1, 1, v68);
            }

            v70 = *(v68 + 2);
            v69 = *(v68 + 3);
            if (v70 >= v69 >> 1)
            {
              v68 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v69 > 1), v70 + 1, 1, v68);
            }

            v94 = v56;
            *(v68 + 2) = v70 + 1;
            v71 = &v68[96 * v70];
            *(v71 + 4) = v54;
            *(v71 + 5) = v55;
            v71[48] = v94;
            *(v71 + 49) = v130;
            v72 = v131;
            v73 = v132;
            v74 = v133;
            *(v71 + 113) = v134;
            *(v71 + 97) = v74;
            *(v71 + 81) = v73;
            *(v71 + 65) = v72;
            v71[121] = 6;
            *v4 = v68;
          }
        }

        v75 = type metadata accessor for Zip2Sequence<DefaultIndices<CountingIndexCollection<ShadowSectionCollection<TableDataSourceAdaptor>>>, DefaultIndices<CountingIndexCollection<LazyMapSequence<[TableSections.Item], Int>>>>.Iterator;
      }

      else
      {
        outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(a1, &v111, &lazy cache variable for type metadata for ShadowListUpdateRecorder<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListUpdateRecorder);
        _s7SwiftUI23ShadowSectionCollectionVyACyxGAA0C18ListUpdateRecorderVyxGcfCAA22TableDataSourceAdaptorV_Tt1g5(&v111, &v135);
        v121 = v145;
        v122 = v146;
        v117 = v141;
        v118 = v142;
        v119 = v143;
        v120 = v144;
        v113 = v137;
        v114 = v138;
        v115 = v139;
        v116 = v140;
        v111 = v135;
        v112 = v136;
        v123 = v147;
        v124 = v13;
        v125 = v14;
        v126 = v16 & 1;
        v127 = v85;
        v128 = v80;
        v129 = v15 & 1;
        _s7SwiftUI21TableColumnCollectionV5EntryVWOcTm_0(&v111, v157, type metadata accessor for DefaultIndices<CountingIndexCollection<ShadowSectionCollection<TableDataSourceAdaptor>>>);
        v31 = v124;
        v32 = v125;
        v33 = v126;
        outlined destroy of BridgedListState(&v111, type metadata accessor for DefaultIndices<CountingIndexCollection<ShadowSectionCollection<TableDataSourceAdaptor>>>);
        v163 = v31;
        v164 = v32;
        v165 = v33;
        v34 = v160;
        v81 = v161;
        v86 = v162;
        if (v160 != v31)
        {
          goto LABEL_32;
        }

LABEL_26:
        if (v33)
        {
          if (!v86)
          {
            goto LABEL_32;
          }
        }

        else
        {
          v35 = v86;
          if (v32 != v81)
          {
            v35 = 1;
          }

          if (v35)
          {
LABEL_32:
            while (1)
            {
              v36 = v31 + 1;
              if (__OFADD__(v31, 1))
              {
                goto LABEL_63;
              }

              v37 = v36 == v159;
              if (v36 == v159)
              {
                v38 = 0;
              }

              else
              {
                if (v33)
                {
                  goto LABEL_68;
                }

                v38 = v32 + 1;
                if (__OFADD__(v32, 1))
                {
                  goto LABEL_65;
                }
              }

              v163 = v31 + 1;
              v164 = v38;
              v165 = v36 == v159;
              v39 = *v4;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v39 + 2) + 1, 1, v39);
              }

              v41 = *(v39 + 2);
              v40 = *(v39 + 3);
              if (v41 >= v40 >> 1)
              {
                v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v41 + 1, 1, v39);
              }

              LOBYTE(v111) = v33;
              *(v39 + 2) = v41 + 1;
              v42 = &v39[96 * v41];
              *(v42 + 4) = v31;
              *(v42 + 5) = v32;
              v42[48] = v111;
              *(v42 + 49) = v135;
              v43 = v136;
              v44 = v137;
              v45 = v138;
              *(v42 + 113) = v139;
              *(v42 + 97) = v45;
              *(v42 + 81) = v44;
              *(v42 + 65) = v43;
              v42[121] = 0;
              *v4 = v39;
              ++v31;
              v32 = v38;
              v33 = v37;
              if (v34 == v31)
              {
                goto LABEL_26;
              }
            }
          }
        }

        v75 = type metadata accessor for IndexingIterator<DefaultIndices<CountingIndexCollection<ShadowSectionCollection<TableDataSourceAdaptor>>>>;
      }

      outlined destroy of BridgedListState(v157, v75);
LABEL_4:
      v11 = v79 + 1;
      v9 = *(v77 + 16);
      if (v79 + 1 == v9)
      {
        goto LABEL_61;
      }
    }

    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
  }

  else
  {

LABEL_61:
  }
}

uint64_t specialized ListBatchUpdates.computeMoves<A>(from:to:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = MEMORY[0x1E69E7CC0];
  v169 = MEMORY[0x1E69E7CC0];
  v5 = *v2;
  v6 = *(*v2 + 16);
  if (!v6)
  {
    v126 = 0;
    v7 = 0;
LABEL_119:
    specialized Array.replaceSubrange<A>(_:with:)(v7, v126);
    return specialized Array.append<A>(contentsOf:)(v4);
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_144:
    v5 = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
  }

  v7 = 0;
  v8 = 0;
  v9 = v5 + 32;
  v10 = 32;
  v150 = v5;
  v151 = v6;
  v154 = v5 + 32;
  while (1)
  {
    if (v6 == v8)
    {
      goto LABEL_121;
    }

    v12 = *(v5 + 2);
    if (v8 != v7)
    {
      if (v8 >= v12)
      {
        goto LABEL_123;
      }

      if (v7 >= v12)
      {
        goto LABEL_124;
      }

      memmove(&v9[96 * v7], &v5[v10], 0x5AuLL);
      v12 = *(v5 + 2);
    }

    if (v7 >= v12)
    {
      goto LABEL_122;
    }

    v13 = &v9[96 * v7];
    v14 = *v13;
    v15 = *(v13 + 1);
    v16 = v13[16];
    v17 = v13[89];
    if (v17 <= 2)
    {
      v155 = v10;
      if (!v13[89])
      {
        v18 = v6;
        v145 = v13[16];
        v19 = v3;
        outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(a1, &v164, &lazy cache variable for type metadata for ShadowListUpdateRecorder<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListUpdateRecorder);
        _s7SwiftUI23ShadowSectionCollectionVyACyxGAA0C18ListUpdateRecorderVyxGcfCAA22TableDataSourceAdaptorV_Tt1g5(&v164, &v161);
        v3 = v14;
        v20 = *&v162[24];

        v6 = &v161;
        v21 = v3;
        v22 = specialized ShadowListUpdateRecorder.initialIndex(_:)(v3);
        if ((v22 & 0x8000000000000000) != 0)
        {
          goto LABEL_126;
        }

        if (v22 >= *(v20 + 16))
        {
          goto LABEL_128;
        }

        outlined init with copy of TableSections.Item(v20 + 96 * v22 + 32, &v164);
        v3 = v164;
        outlined destroy of TableSections.Item(&v164);
        outlined destroy of BridgedListState(&v161, type metadata accessor for CountingIndexCollection<ShadowSectionCollection<TableDataSourceAdaptor>>);

        v6 = v19[3];
        if (!*(v6 + 2))
        {
          v64 = v21;
          v65 = v19;
LABEL_66:
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v161 = v65[3];
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v7, v64, v15, v145 & 1, v3, isUniquelyReferenced_nonNull_native);
          v65[3] = v161;
          v10 = v155;
          v6 = v18;
          v9 = v154;
          v3 = v65;
          goto LABEL_7;
        }

        v23 = specialized __RawDictionaryStorage.find<A>(_:)(v3);
        if ((v24 & 1) == 0)
        {
          v64 = v21;
          v65 = v19;
          goto LABEL_66;
        }

        v25 = *(v6 + 7) + 32 * v23;
        v26 = *v25;
        if ((*v25 & 0x8000000000000000) != 0)
        {
          goto LABEL_137;
        }

        if (v26 >= *(v150 + 2))
        {
          goto LABEL_139;
        }

        if (v154[96 * v26 + 89] != 1)
        {
          v5 = v150;
          v3 = v19;
          v10 = v155;
          v6 = v18;
          v9 = v154;
          goto LABEL_7;
        }

        v137 = &v154[96 * v26];
        v27 = *(v25 + 8);
        v28 = *(v25 + 16);
        v142 = *(v25 + 24);
        v29 = specialized __RawDictionaryStorage.find<A>(_:)(v3);
        if (v31)
        {
          v134 = v29;
          v32 = swift_isUniquelyReferenced_nonNull_native();
          v33 = v19[3];
          *&v161 = v33;
          if (!v32)
          {
            specialized _NativeDictionary.copy()();
            v33 = v161;
          }

          specialized _NativeDictionary._delete(at:)(v134, v33);
          v19[3] = v33;
        }

        LOBYTE(v161) = v145 & 1;
        LOBYTE(v164) = v142;
        if (v26 >= *(v150 + 2))
        {
          goto LABEL_147;
        }

        *v137 = v21;
        *(v137 + 1) = v15;
        v137[16] = v161;
        *(v137 + 3) = v27;
        *(v137 + 4) = v28;
        v137[40] = v164;
        v137[89] = 2;
        updated = _s7SwiftUI16ListBatchUpdatesV27computeRowRemovesAndInserts33_A424F5232720E51D2A2BD1A8E90C36E84from13sourceSection2to06targetW0SayAA0C6UpdateOyAA13CountingIndexVy0W3IDs_5IndexQZGAMySiGGGAA013CountingIndexC10DataSourceAELLVyqd__G_AqVyxGAQtAA0C8DiffableRd__0G3IDs_7ElementQYd__AZ_A_RTzAN_A_QYd__AN_A_RTzAN_AOQYd__APRSlFAA22TableDataSourceAdaptorV_AA06ShadowC10DataSourceVyA6_GTt3B5(a1, v21, v15, v145 & 1, a2, v27, v28, v142, v30);
        specialized Array.append<A>(contentsOf:)(updated);
        --v7;
        v5 = v150;
        v6 = v151;
        v9 = v154;
        v3 = v19;
        goto LABEL_6;
      }

      if (v17 != 1)
      {
        goto LABEL_153;
      }

      if ((v14 & 0x8000000000000000) != 0)
      {
        goto LABEL_125;
      }

      v41 = *(a2 + 40);
      if (v14 >= *(v41 + 16))
      {
        goto LABEL_127;
      }

      v153 = *(v13 + 1);
      outlined init with copy of TableSections.Item(v41 + 96 * v14 + 32, &v161);
      v42 = v161;
      outlined destroy of TableSections.Item(&v161);
      v6 = v3[3];
      v43 = v3;
      if (*(v6 + 2))
      {
        v3 = v42;
        v44 = specialized __RawDictionaryStorage.find<A>(_:)(v42);
        if (v45)
        {
          v46 = *(v6 + 7) + 32 * v44;
          v47 = *v46;
          if ((*v46 & 0x8000000000000000) != 0)
          {
            goto LABEL_138;
          }

          if (v47 >= *(v5 + 2))
          {
            goto LABEL_140;
          }

          v48 = v16;
          v49 = v14;
          v50 = &v154[96 * v47];
          if (!v50[89])
          {
            v144 = *(v46 + 16);
            v146 = *(v46 + 8);
            v51 = *(v46 + 24);
            v52 = specialized __RawDictionaryStorage.find<A>(_:)(v3);
            if (v54)
            {
              v138 = v52;
              v55 = swift_isUniquelyReferenced_nonNull_native();
              v56 = v43[3];
              *&v161 = v56;
              if (!v55)
              {
                specialized _NativeDictionary.copy()();
                v56 = v161;
              }

              specialized _NativeDictionary._delete(at:)(v138, v56);
              v43[3] = v56;
            }

            LOBYTE(v161) = v51;
            LOBYTE(v164) = v48 & 1;
            if (v47 >= *(v150 + 2))
            {
              goto LABEL_149;
            }

            *v50 = v146;
            *(v50 + 1) = v144;
            v50[16] = v161;
            *(v50 + 3) = v49;
            *(v50 + 4) = v153;
            v50[40] = v164;
            v50[89] = 2;
            v57 = _s7SwiftUI16ListBatchUpdatesV27computeRowRemovesAndInserts33_A424F5232720E51D2A2BD1A8E90C36E84from13sourceSection2to06targetW0SayAA0C6UpdateOyAA13CountingIndexVy0W3IDs_5IndexQZGAMySiGGGAA013CountingIndexC10DataSourceAELLVyqd__G_AqVyxGAQtAA0C8DiffableRd__0G3IDs_7ElementQYd__AZ_A_RTzAN_A_QYd__AN_A_RTzAN_AOQYd__APRSlFAA22TableDataSourceAdaptorV_AA06ShadowC10DataSourceVyA6_GTt3B5(a1, v146, v144, v51, a2, v49, v153, v48 & 1, v53);
            specialized Array.append<A>(contentsOf:)(v57);
            --v7;
            v5 = v150;
          }

          v6 = v151;
          v9 = v154;
          v3 = v43;
          goto LABEL_6;
        }

        v66 = v16;
        v67 = v43;
        v140 = v14;
      }

      else
      {
        v3 = v42;
        v66 = v16;
        v67 = v43;
        v140 = v14;
      }

      v77 = swift_isUniquelyReferenced_nonNull_native();
      *&v161 = v67[3];
      v6 = v161;
      v78 = specialized __RawDictionaryStorage.find<A>(_:)(v3);
      v80 = *(v6 + 2);
      v81 = (v79 & 1) == 0;
      v82 = __OFADD__(v80, v81);
      v83 = v80 + v81;
      if (v82)
      {
        goto LABEL_129;
      }

      v84 = v79;
      if (*(v6 + 3) >= v83)
      {
        if ((v77 & 1) == 0)
        {
          v124 = v78;
          specialized _NativeDictionary.copy()();
          v78 = v124;
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v83, v77);
        v78 = specialized __RawDictionaryStorage.find<A>(_:)(v3);
        if ((v84 & 1) != (v85 & 1))
        {
          goto LABEL_155;
        }
      }

      v6 = v151;
      v86 = v161;
      if (v84)
      {
        v11 = *(v161 + 56) + 32 * v78;
        *v11 = v7;
        *(v11 + 8) = v140;
        *(v11 + 16) = v153;
        *(v11 + 24) = v66 & 1;
      }

      else
      {
        *(v161 + 8 * (v78 >> 6) + 64) |= 1 << v78;
        *(v86[6] + 8 * v78) = v3;
        v87 = v86[7] + 32 * v78;
        *v87 = v7;
        *(v87 + 8) = v140;
        *(v87 + 16) = v153;
        *(v87 + 24) = v66 & 1;
        v88 = v86[2];
        v82 = __OFADD__(v88, 1);
        v89 = v88 + 1;
        if (v82)
        {
          goto LABEL_136;
        }

        v86[2] = v89;
      }

      v3 = v67;
      v67[3] = v86;
      v9 = v154;
LABEL_6:
      v10 = v155;
      goto LABEL_7;
    }

    if (v17 - 5 < 2)
    {
      goto LABEL_7;
    }

    v143 = *(v13 + 3);
    v152 = *(v13 + 1);
    v133 = *(v13 + 4);
    v135 = v13[40];
    if (v17 == 3)
    {
      break;
    }

    if ((v14 & 0x8000000000000000) != 0)
    {
      goto LABEL_130;
    }

    v6 = *(a2 + 40);
    if (v14 >= *(v6 + 2))
    {
      goto LABEL_133;
    }

    v147 = v13[16];
    v58 = *v13;
    v59 = &v6[6 * v14];
    outlined init with copy of TableSections.Item((v59 + 2), &v161);
    v5 = v161;
    outlined destroy of TableSections.Item(&v161);
    v139 = v58;
    if (v58 >= *(v6 + 2))
    {
      goto LABEL_134;
    }

    v60 = *(v59 + 14);
    v61 = v143 - v60;
    if (__OFSUB__(v143, v60))
    {
      goto LABEL_135;
    }

    v62 = v3;
    v6 = *(v59 + 12);
    v63 = *(v59 + 104);
    if (v63)
    {
      if ((v61 & 0x8000000000000000) != 0)
      {
        goto LABEL_141;
      }

      if (v61 >= *(v6 + 2))
      {
        goto LABEL_142;
      }

      outlined init with copy of TableRowID(&v6[3 * v61 + 2], &v164);
    }

    else
    {
      v90 = *(*v6 + 104);

      v90(&v164, v61);
    }

    v161 = v164;
    *v162 = v165[0];
    *&v162[9] = *(v165 + 9);
    outlined consume of Environment<[SceneID : KeyboardShortcut]>.Content(v6, v63);
    v3 = v62;
    v9 = v154;
    if (*(v62[3] + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v5), (v91 & 1) != 0))
    {
      outlined destroy of TableRowID(&v161);
      v5 = v150;
      v6 = v151;
    }

    else
    {
      v6 = v62[4];
      if (!*(v6 + 2))
      {
        v5 = v150;
LABEL_89:
        outlined init with copy of TableRowID(&v161, &v164);
        v101 = swift_isUniquelyReferenced_nonNull_native();
        v163[0] = v62[4];
        v102 = v163[0];
        v103 = specialized __RawDictionaryStorage.find<A>(_:)(&v164);
        v105 = *(v102 + 16);
        v106 = (v104 & 1) == 0;
        v82 = __OFADD__(v105, v106);
        v107 = v105 + v106;
        if (v82)
        {
          goto LABEL_146;
        }

        v108 = v104;
        if (*(v102 + 24) >= v107)
        {
          if ((v101 & 1) == 0)
          {
            v125 = v103;
            specialized _NativeDictionary.copy()();
            v103 = v125;
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v107, v101);
          v103 = specialized __RawDictionaryStorage.find<A>(_:)(&v164);
          if ((v108 & 1) != (v109 & 1))
          {
            goto LABEL_154;
          }
        }

        v118 = v163[0];
        if (v108)
        {
          v119 = *(v163[0] + 56) + 56 * v103;
          *v119 = v7;
          *(v119 + 8) = v139;
          *(v119 + 16) = v152;
          *(v119 + 24) = v147 & 1;
          *(v119 + 32) = v143;
          *(v119 + 40) = v133;
          *(v119 + 48) = v135 & 1;
          outlined destroy of TableRowID(&v164);
          outlined destroy of TableRowID(&v161);
        }

        else
        {
          *(v163[0] + 8 * (v103 >> 6) + 64) |= 1 << v103;
          v120 = v103;
          outlined init with copy of TableRowID(&v164, v118[6] + 48 * v103);
          v121 = v118[7] + 56 * v120;
          *v121 = v7;
          *(v121 + 8) = v139;
          *(v121 + 16) = v152;
          *(v121 + 24) = v147 & 1;
          *(v121 + 32) = v143;
          *(v121 + 40) = v133;
          *(v121 + 48) = v135 & 1;
          outlined destroy of TableRowID(&v164);
          outlined destroy of TableRowID(&v161);
          v122 = v118[2];
          v82 = __OFADD__(v122, 1);
          v123 = v122 + 1;
          if (v82)
          {
            goto LABEL_151;
          }

          v118[2] = v123;
        }

        v62[4] = v118;
        v6 = v151;
        v9 = v154;
        v3 = v62;
        goto LABEL_7;
      }

      v92 = specialized __RawDictionaryStorage.find<A>(_:)(&v161);
      v5 = v150;
      if ((v93 & 1) == 0)
      {
        LOBYTE(v164) = 1;
        v168 = 1;
        goto LABEL_89;
      }

      v94 = *(v6 + 7) + 56 * v92;
      v95 = *v94;
      v96 = *(v94 + 8);
      v97 = *(v94 + 24);
      v98 = *(v94 + 32);
      v99 = *(v94 + 48);
      v168 = 0;
      if ((v95 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_121:
        __break(1u);
LABEL_122:
        __break(1u);
LABEL_123:
        __break(1u);
LABEL_124:
        __break(1u);
LABEL_125:
        __break(1u);
LABEL_126:
        __break(1u);
LABEL_127:
        __break(1u);
LABEL_128:
        __break(1u);
LABEL_129:
        __break(1u);
LABEL_130:
        __break(1u);
LABEL_131:
        __break(1u);
LABEL_132:
        __break(1u);
LABEL_133:
        __break(1u);
LABEL_134:
        __break(1u);
LABEL_135:
        __break(1u);
LABEL_136:
        __break(1u);
LABEL_137:
        __break(1u);
LABEL_138:
        __break(1u);
LABEL_139:
        __break(1u);
LABEL_140:
        __break(1u);
LABEL_141:
        __break(1u);
LABEL_142:
        __break(1u);
LABEL_143:
        __break(1u);
        goto LABEL_144;
      }

      if (v95 >= *(v150 + 2))
      {
        goto LABEL_148;
      }

      v111 = v3;
      v112 = &v154[96 * v95];
      if (v112[89] == 3)
      {
        v128 = v98;
        v130 = v96;
        v132 = v97;
        v113 = specialized __RawDictionaryStorage.find<A>(_:)(&v161);
        if (v114)
        {
          v115 = v113;
          v116 = swift_isUniquelyReferenced_nonNull_native();
          v117 = v111[4];
          *&v164 = v117;
          if (!v116)
          {
            specialized _NativeDictionary.copy()();
            v117 = v164;
          }

          outlined destroy of TableRowID(*(v117 + 48) + 48 * v115);
          specialized _NativeDictionary._delete(at:)(v115, v117);
          v111[4] = v117;
        }

        LOBYTE(v164) = v132;
        LOBYTE(v163[0]) = v99;
        v167 = v147 & 1;
        v166 = v135 & 1;
        outlined destroy of TableRowID(&v161);
        if (v95 >= *(v150 + 2))
        {
          goto LABEL_152;
        }

        *v112 = v130;
        v112[16] = v132;
        *(v112 + 24) = v128;
        v112[40] = v99;
        *(v112 + 6) = v139;
        *(v112 + 7) = v152;
        v112[64] = v147 & 1;
        *(v112 + 9) = v143;
        *(v112 + 10) = v133;
        v112[88] = v135 & 1;
        --v7;
        v112[89] = 5;
        v5 = v150;
      }

      else
      {
        outlined destroy of TableRowID(&v161);
      }

      v6 = v151;
      v9 = v154;
      v3 = v111;
    }

LABEL_7:
    v8 = (v8 + 1);
    ++v7;
    v10 += 96;
    if (v6 == v8)
    {
      *v3 = v5;
      v126 = *(v5 + 2);
      if (v126 >= v7)
      {
        v4 = v169;
        goto LABEL_119;
      }

      goto LABEL_143;
    }
  }

  outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(a1, &v164, &lazy cache variable for type metadata for ShadowListUpdateRecorder<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListUpdateRecorder);
  _s7SwiftUI23ShadowSectionCollectionVyACyxGAA0C18ListUpdateRecorderVyxGcfCAA22TableDataSourceAdaptorV_Tt1g5(&v164, &v161);
  v5 = v14;
  v35 = *&v162[24];

  v6 = &v161;
  v36 = v5;
  v37 = specialized ShadowListUpdateRecorder.initialIndex(_:)(v5);
  if ((v37 & 0x8000000000000000) != 0)
  {
    goto LABEL_131;
  }

  if (v37 >= *(v35 + 16))
  {
    goto LABEL_132;
  }

  outlined init with copy of TableSections.Item(v35 + 96 * v37 + 32, &v164);
  v38 = v164;
  outlined destroy of TableSections.Item(&v164);
  outlined destroy of BridgedListState(&v161, type metadata accessor for CountingIndexCollection<ShadowSectionCollection<TableDataSourceAdaptor>>);

  outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(a1, &v164, &lazy cache variable for type metadata for ShadowListUpdateRecorder<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListUpdateRecorder);
  v39 = specialized ShadowListUpdateRecorder.initialIndex(_:)(v36);
  _s7SwiftUI19ShadowRowCollectionV_7sectionACyxGAA0C18ListUpdateRecorderVyxG_10SectionIDs_5IndexQZtcfCAA22TableDataSourceAdaptorV_Tt2g5(&v164, v39, &v161);
  specialized ShadowRowCollection.subscript.getter(v143, v163);
  outlined destroy of BridgedListState(&v161, type metadata accessor for CountingIndexCollection<ShadowRowCollection<TableDataSourceAdaptor>>);
  if (*(v3[3] + 16))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(v38);
    if (v40)
    {
      outlined destroy of TableRowID(v163);
LABEL_86:
      v5 = v150;
      v6 = v151;
      goto LABEL_7;
    }
  }

  v68 = v3[4];
  if (!*(v68 + 16) || (v69 = specialized __RawDictionaryStorage.find<A>(_:)(v163), (v70 & 1) == 0))
  {
    v100 = swift_isUniquelyReferenced_nonNull_native();
    *&v161 = v3[4];
    v156[0] = v7;
    v156[1] = v36;
    v156[2] = v152;
    v157 = v16 & 1;
    v158 = v143;
    v159 = v133;
    v160 = v135 & 1;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v156, v163, v100);
    outlined destroy of TableRowID(v163);
    v3[4] = v161;
    goto LABEL_86;
  }

  v71 = *(v68 + 56) + 56 * v69;
  v72 = *v71;
  v73 = *(v71 + 8);
  v74 = *(v71 + 24);
  v75 = *(v71 + 32);
  v148 = *(v71 + 48);
  LOBYTE(v164) = 0;
  if ((v72 & 0x8000000000000000) == 0)
  {
    v6 = v151;
    if (v72 >= *(v150 + 2))
    {
      goto LABEL_145;
    }

    v110 = &v9[96 * v72];
    if (v110[89] == 4)
    {
      v129 = v75;
      v131 = v73;
      v141 = v72;
      specialized Dictionary._Variant.removeValue(forKey:)(v163, &v161);
      LOBYTE(v161) = v16 & 1;
      v168 = v135 & 1;
      v167 = v74;
      v166 = v148;
      outlined destroy of TableRowID(v163);
      if (v141 >= *(v150 + 2))
      {
        goto LABEL_150;
      }

      *v110 = v36;
      *(v110 + 1) = v152;
      v110[16] = v16 & 1;
      *(v110 + 3) = v143;
      *(v110 + 4) = v133;
      v110[40] = v135 & 1;
      *(v110 + 3) = v131;
      v110[64] = v74;
      *(v110 + 72) = v129;
      v110[88] = v148;
      --v7;
      v110[89] = 5;
      v5 = v150;
      v6 = v151;
      v9 = v154;
    }

    else
    {
      outlined destroy of TableRowID(v163);
      v5 = v150;
    }

    goto LABEL_7;
  }

  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
LABEL_154:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_155:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *_s7SwiftUI16ListBatchUpdatesV27computeRowRemovesAndInserts33_A424F5232720E51D2A2BD1A8E90C36E8LL4from13sourceSection2to06targetW0SayAA0C6UpdateOyAA13CountingIndexVy0W3IDs_5IndexQZGAMySiGGGAA013CountingIndexC10DataSourceAELLVyqd__G_AqVyxGAQtAA0C8DiffableRd__0G3IDs_7ElementQYd__AZ_A_RTzAN_A_QYd__AN_A_RTzAN_AOQYd__APRSlFAA22TableDataSourceAdaptorV_AA06ShadowC10DataSourceVyA6_GTt3B5(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, unint64_t a6, uint64_t a7, char a8, __n128 a9)
{
  v14 = MEMORY[0x1E69E7CC0];
  v115 = MEMORY[0x1E69E7CC0];
  outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(a1, &v69, &lazy cache variable for type metadata for ShadowListUpdateRecorder<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListUpdateRecorder);
  v44 = a2;
  v15 = specialized ShadowListUpdateRecorder.initialIndex(_:)(a2);
  result = _s7SwiftUI19ShadowRowCollectionV_7sectionACyxGAA0C18ListUpdateRecorderVyxG_10SectionIDs_5IndexQZtcfCAA22TableDataSourceAdaptorV_Tt2g5(&v69, v15, v109);
  if ((a6 & 0x8000000000000000) != 0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v17 = *(a5 + 40);
  if (*(v17 + 16) > a6)
  {
    v43 = a6;
    v18 = v17 + 96 * a6;
    v19 = *(v18 + 96);
    v20 = *(v18 + 104);
    v22 = *(v18 + 112);
    v21 = *(v18 + 120);
    *&v69 = v19;
    BYTE8(v69) = v20;
    v47 = v21;
    v48 = v22;
    *&v70 = v22;
    *(&v70 + 1) = v21;
    *&v55 = v14;
    outlined copy of ResolvedTableRowIDs.Storage(v19, v20);
    v49 = v19;
    v50 = v20;
    outlined copy of ResolvedTableRowIDs.Storage(v19, v20);
    type metadata accessor for CollectionChanges<CountingIndex<Int>, CountingIndex<Int>>(0);
    type metadata accessor for CountingIndexCollection<ShadowRowCollection<TableDataSourceAdaptor>>(0);
    _s7SwiftUI33AccessibilityViewModifierAccessor33_71F62EDC1DAE3BBC7A74521E45BA5A66LLCyAA0c10AttachmentE0VGMaTm_0(0, &lazy cache variable for type metadata for CountingIndexCollection<ResolvedTableRowIDs>, lazy protocol witness table accessor for type ResolvedTableRowIDs and conformance ResolvedTableRowIDs, &type metadata for ResolvedTableRowIDs, MEMORY[0x1E6980198]);
    lazy protocol witness table accessor for type DefaultIndices<CountingIndexCollection<ShadowSectionCollection<TableDataSourceAdaptor>>> and conformance DefaultIndices<A>(&lazy protocol witness table cache variable for type CountingIndexCollection<ShadowRowCollection<TableDataSourceAdaptor>> and conformance CountingIndexCollection<A>, type metadata accessor for CountingIndexCollection<ShadowRowCollection<TableDataSourceAdaptor>>, MEMORY[0x1E69801A0]);
    lazy protocol witness table accessor for type CountingIndexCollection<ResolvedTableRowIDs> and conformance CountingIndexCollection<A>();
    lazy protocol witness table accessor for type TableRowID and conformance TableRowID();
    CollectionChanges.formChanges<A, B>(from:to:)();
    result = outlined consume of Environment<[SceneID : KeyboardShortcut]>.Content(v69, SBYTE8(v69));
    v23 = v14;
    v54 = *(v14 + 16);
    if (!v54)
    {
LABEL_20:
      outlined consume of Environment<[SceneID : KeyboardShortcut]>.Content(v49, v50);
      outlined destroy of BridgedListState(v109, type metadata accessor for CountingIndexCollection<ShadowRowCollection<TableDataSourceAdaptor>>);

      return v115;
    }

    v24 = 0;
    v41 = v48 + v47;
    v25 = __OFADD__(v48, v47);
    v42 = v25;
    v26 = (v55 + 64);
    v39 = a8 & 1;
    v40 = a4 & 1;
    v53 = v55;
    while (v24 < *(v23 + 16))
    {
      v28 = *(v26 - 4);
      v29 = *(v26 - 3);
      v31 = *(v26 - 1);
      v30 = *v26;
      v32 = *(v26 + 8);
      v33 = *(v26 - 16);
      if (*(v26 + 57))
      {
        if (*(v26 + 57) == 1)
        {
          v108 = v50;
          if (v42)
          {
            goto LABEL_22;
          }

          v107 = v48 == v41;
          v106 = 1;
          v95 = v50;
          v94 = v33 & 1;
          v93 = v32 & 1;
          v96 = v49;
          v97 = v108;
          v98 = v48;
          v99 = v47;
          v100 = v48;
          v101 = 0;
          v102 = v48 == v41;
          v103 = v48 + v47;
          v104 = 0;
          v105 = 1;
          outlined copy of ResolvedTableRowIDs.Storage(v49, v50);
          outlined copy of ResolvedTableRowIDs.Storage(v49, v50);
          outlined destroy of BridgedListState(&v96, type metadata accessor for DefaultIndices<CountingIndexCollection<ResolvedTableRowIDs>>);
          *&v55 = v49;
          BYTE8(v55) = v95;
          *&v56 = v48;
          *(&v56 + 1) = v47;
          *&v57 = v28;
          *(&v57 + 1) = v29;
          v58[0] = v94;
          *&v58[8] = v31;
          *&v58[16] = v30;
          v58[24] = v93;
          *&v69 = v49;
          BYTE8(v69) = v95;
          *&v70 = v48;
          *(&v70 + 1) = v47;
          *&v71 = v28;
          *(&v71 + 1) = v29;
          v23 = v53;
          LOBYTE(v72) = v94;
          *(&v72 + 1) = v31;
          *&v73 = v30;
          BYTE8(v73) = v93;
          _s7SwiftUI21TableColumnCollectionV5EntryVWOcTm_0(&v55, v92, type metadata accessor for DefaultIndices<CountingIndexCollection<ResolvedTableRowIDs>>);
          outlined destroy of BridgedListState(&v69, type metadata accessor for DefaultIndices<CountingIndexCollection<ResolvedTableRowIDs>>);
          v92[0] = v39;
          v34 = swift_allocObject();
          *(v34 + 16) = v43;
          *(v34 + 24) = a7;
          *(v34 + 32) = v92[0];
          v116[2] = v57;
          v117[0] = *v58;
          *(v117 + 9) = *&v58[9];
          v116[0] = v55;
          v116[1] = v56;
          v118 = partial apply for specialized closure #2 in ListBatchUpdates.computeRowRemovesAndInserts<A>(from:sourceSection:to:targetSection:);
          v119 = v34;
          result = specialized Array.append<A>(contentsOf:)(v116);
        }
      }

      else
      {
        result = _s7SwiftUI21TableColumnCollectionV5EntryVWOcTm_0(v109, &v55, type metadata accessor for CountingIndexCollection<ShadowRowCollection<TableDataSourceAdaptor>>);
        v35 = v112 + v113;
        if (__OFADD__(v112, v113))
        {
          goto LABEL_23;
        }

        v51 = v29;
        v52 = v31;
        v36 = v114;
        v37 = v111;
        v38 = v110;
        if (*(v111 + 16) | *(v110 + 16))
        {

          specialized ShadowListUpdateRecorder.applyUpdates<A>(_:to:)(&v69, v37, v38, v36, v35);
        }

        if (*(v37 + 16) | *(v38 + 16))
        {

          specialized ShadowListUpdateRecorder.applyUpdates<A>(_:to:)(&v69, v37, v38, v36, v35);
        }

        v81 = v66;
        v82 = v67;
        v83 = v68;
        v77 = v62;
        v78 = v63;
        v79 = v64;
        v80 = v65;
        v73 = *&v58[16];
        v74 = v59;
        v75 = v60;
        v76 = v61;
        v69 = v55;
        v70 = v56;
        v71 = v57;
        v72 = *v58;
        LOBYTE(v96) = v33 & 1;
        v92[0] = v32 & 1;
        v108 = v40;
        v27 = swift_allocObject();
        *(v27 + 16) = v44;
        *(v27 + 24) = a3;
        *(v27 + 32) = v108;
        v84 = v28;
        v85 = v51;
        v86 = v33 & 1;
        v87 = v52;
        v88 = v30;
        v89 = v32 & 1;
        v90 = partial apply for specialized closure #1 in ListBatchUpdates.computeRowRemovesAndInserts<A>(from:sourceSection:to:targetSection:);
        v91 = v27;
        result = specialized Array.append<A>(contentsOf:)(&v69);
        v23 = v53;
      }

      ++v24;
      v26 += 12;
      if (v54 == v24)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t specialized closure #1 in static AnyTableColumnCustomization.arrangedColumns<A, B>(_:customization:includeHidden:defaultVisibility:id:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(_OWORD *__return_ptr, uint64_t)@<X2>, char a4@<W4>, uint64_t a5@<X5>, uint64_t (*a6)(uint64_t)@<X7>, void *a7@<X8>)
{
  a3(v25, a2);
  if ((a4 & 1) == 0)
  {
    if (*(a5 + 16) && (v13 = specialized __RawDictionaryStorage.find<A>(_:)(v25), (v14 & 1) != 0))
    {
      v15 = *(*(a5 + 56) + 16 * v13 + 9);
      v16 = a6(a2);
      if (v15)
      {
        if (v15 == 1)
        {
          goto LABEL_6;
        }

LABEL_11:
        outlined destroy of TableColumnCustomizationID(v25);
        type metadata accessor for (index: Int, element: TableColumnCollection.Entry, id: TableColumnCustomizationID)(0, &lazy cache variable for type metadata for (index: Int, element: TableColumnCollection.Entry, id: TableColumnCustomizationID), type metadata accessor for TableColumnCollection.Entry);
        return (*(*(v24 - 8) + 56))(a7, 1, 1, v24);
      }
    }

    else
    {
      v16 = a6(a2);
    }

    if (v16 != 2)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_6:
  type metadata accessor for (index: Int, element: TableColumnCollection.Entry, id: TableColumnCustomizationID)(0, &lazy cache variable for type metadata for (index: Int, element: TableColumnCollection.Entry, id: TableColumnCustomizationID), type metadata accessor for TableColumnCollection.Entry);
  v18 = v17;
  v19 = *(v17 + 48);
  v20 = a7 + *(v17 + 64);
  *a7 = a1;
  _s7SwiftUI21TableColumnCollectionV5EntryVWOcTm_0(a2, a7 + v19, type metadata accessor for TableColumnCollection.Entry);
  v21 = v25[1];
  *v20 = v25[0];
  *(v20 + 1) = v21;
  v20[32] = v26;
  v22 = *(*(v18 - 8) + 56);

  return v22(a7, 0, 1, v18);
}

unint64_t specialized closure #2 in static AnyTableColumnCustomization.arrangedColumns<A, B>(_:customization:includeHidden:defaultVisibility:id:)(void *a1, void *a2, uint64_t a3)
{
  v23[3] = a2;
  v23[2] = a1;
  result = specialized Collection.firstIndex(where:)(closure #1 in closure #2 in static AnyTableColumnCustomization.arrangedColumns<A, B>(_:customization:includeHidden:defaultVisibility:id:)specialized partial apply, v23, a3);
  if (v7)
  {
    return *a1 < *a2;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_27;
  }

  if (result >= *(a3 + 16))
  {
LABEL_27:
    __break(1u);
    return result;
  }

  v8 = a3 + 40 * result;
  v9 = *(v8 + 32);
  v10 = *(v8 + 40);
  v11 = *(v8 + 48);
  v12 = *(v8 + 56);
  v13 = *(v8 + 64);
  type metadata accessor for (index: Int, element: TableColumnCollection.Entry, id: TableColumnCustomizationID)(0, &lazy cache variable for type metadata for (index: Int, element: TableColumnCollection.Entry, id: TableColumnCustomizationID), type metadata accessor for TableColumnCollection.Entry);
  v15 = a1 + *(v14 + 64);
  v16 = *v15;
  v17 = *(v15 + 1);
  if (v13)
  {
    if (v15[32])
    {
      v18 = *(v15 + 2);
      v19 = *(v15 + 3);
      v20 = v9 == v16 && v10 == v17;
      if (v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (v11 == v18 && v12 == v19)
        {
          return 1;
        }

LABEL_22:
        if (_stringCompareWithSmolCheck(_:_:expecting:)())
        {
          return 1;
        }
      }
    }
  }

  else if ((v15[32] & 1) == 0)
  {
    if (v9 == v16 && v10 == v17)
    {
      return 1;
    }

    goto LABEL_22;
  }

  return 0;
}

{
  v23[3] = a2;
  v23[2] = a1;
  result = specialized Collection.firstIndex(where:)(closure #1 in closure #2 in static AnyTableColumnCustomization.arrangedColumns<A, B>(_:customization:includeHidden:defaultVisibility:id:)specialized partial apply, v23, a3);
  if (v7)
  {
    return *a1 < *a2;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_27;
  }

  if (result >= *(a3 + 16))
  {
LABEL_27:
    __break(1u);
    return result;
  }

  v8 = a3 + 40 * result;
  v9 = *(v8 + 32);
  v10 = *(v8 + 40);
  v11 = *(v8 + 48);
  v12 = *(v8 + 56);
  v13 = *(v8 + 64);
  type metadata accessor for (index: Int, element: TableColumnCollection.Entry, id: TableColumnCustomizationID)(0, &lazy cache variable for type metadata for (index: Int, element: TableCellFormula, id: TableColumnCustomizationID), type metadata accessor for TableCellFormula);
  v15 = a1 + *(v14 + 64);
  v16 = *v15;
  v17 = *(v15 + 1);
  if (v13)
  {
    if (v15[32])
    {
      v18 = *(v15 + 2);
      v19 = *(v15 + 3);
      v20 = v9 == v16 && v10 == v17;
      if (v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (v11 == v18 && v12 == v19)
        {
          return 1;
        }

LABEL_22:
        if (_stringCompareWithSmolCheck(_:_:expecting:)())
        {
          return 1;
        }
      }
    }
  }

  else if ((v15[32] & 1) == 0)
  {
    if (v9 == v16 && v10 == v17)
    {
      return 1;
    }

    goto LABEL_22;
  }

  return 0;
}

uint64_t specialized closure #1 in closure #2 in static AnyTableColumnCustomization.arrangedColumns<A, B>(_:customization:includeHidden:defaultVisibility:id:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for (index: Int, element: TableColumnCollection.Entry, id: TableColumnCustomizationID)(0, &lazy cache variable for type metadata for (index: Int, element: TableColumnCollection.Entry, id: TableColumnCustomizationID), type metadata accessor for TableColumnCollection.Entry);
  v7 = *(v6 + 64);
  v8 = a2 + v7;
  v9 = *(a2 + v7);
  v10 = *(a2 + v7 + 8);
  v11 = *(a2 + v7 + 32);
  v12 = *a1;
  v13 = a1[1];
  if (a1[4])
  {
    v14 = a1[2];
    v15 = a1[3];
    if (v11)
    {
      v16 = *(v8 + 16);
      v17 = *(v8 + 24);
      v18 = v12 == v9 && v13 == v10;
      if (v18 || (v19 = v6, v20 = _stringCompareWithSmolCheck(_:_:expecting:)(), v6 = v19, (v20 & 1) != 0))
      {
        if (v14 == v16 && v15 == v17)
        {
          return 1;
        }

        v22 = v6;
        v23 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v6 = v22;
        if (v23)
        {
          return 1;
        }
      }

      v7 = *(v6 + 64);
    }

    v24 = a3 + v7;
    if (*(v24 + 32) != 1)
    {
      return 0;
    }

    v26 = *(v24 + 16);
    v25 = *(v24 + 24);
    v27 = v12 == *v24 && v13 == *(v24 + 8);
    if (!v27 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }

    if (v14 != v26 || v15 != v25)
    {
      goto LABEL_31;
    }
  }

  else
  {
    if ((v11 & 1) == 0)
    {
      if (v12 == v9 && v13 == v10)
      {
        return 1;
      }

      v33 = v6;
      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        return 1;
      }

      v7 = *(v33 + 64);
    }

    v29 = a3 + v7;
    if (*(v29 + 32))
    {
      return 0;
    }

    if (v12 != *v29 || v13 != *(v29 + 8))
    {
LABEL_31:
      if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return 0;
      }
    }
  }

  return 1;
}

{
  type metadata accessor for (index: Int, element: TableColumnCollection.Entry, id: TableColumnCustomizationID)(0, &lazy cache variable for type metadata for (index: Int, element: TableCellFormula, id: TableColumnCustomizationID), type metadata accessor for TableCellFormula);
  v7 = *(v6 + 64);
  v8 = a2 + v7;
  v9 = *(a2 + v7);
  v10 = *(a2 + v7 + 8);
  v11 = *(a2 + v7 + 32);
  v12 = *a1;
  v13 = a1[1];
  if (a1[4])
  {
    v14 = a1[2];
    v15 = a1[3];
    if (v11)
    {
      v16 = *(v8 + 16);
      v17 = *(v8 + 24);
      v18 = v12 == v9 && v13 == v10;
      if (v18 || (v19 = v6, v20 = _stringCompareWithSmolCheck(_:_:expecting:)(), v6 = v19, (v20 & 1) != 0))
      {
        if (v14 == v16 && v15 == v17)
        {
          return 1;
        }

        v22 = v6;
        v23 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v6 = v22;
        if (v23)
        {
          return 1;
        }
      }

      v7 = *(v6 + 64);
    }

    v24 = a3 + v7;
    if (*(v24 + 32) != 1)
    {
      return 0;
    }

    v26 = *(v24 + 16);
    v25 = *(v24 + 24);
    v27 = v12 == *v24 && v13 == *(v24 + 8);
    if (!v27 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }

    if (v14 != v26 || v15 != v25)
    {
      goto LABEL_31;
    }
  }

  else
  {
    if ((v11 & 1) == 0)
    {
      if (v12 == v9 && v13 == v10)
      {
        return 1;
      }

      v33 = v6;
      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        return 1;
      }

      v7 = *(v33 + 64);
    }

    v29 = a3 + v7;
    if (*(v29 + 32))
    {
      return 0;
    }

    if (v12 != *v29 || v13 != *(v29 + 8))
    {
LABEL_31:
      if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return 0;
      }
    }
  }

  return 1;
}

double thunk for @escaping @callee_guaranteed (@unowned Bool) -> ()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

uint64_t specialized Collection.distance(from:to:)(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  if (a6 & 1) != 0 || (a3)
  {
    goto LABEL_31;
  }

  v7 = a4;
  v8 = result;
  if (a4 < result)
  {
    goto LABEL_29;
  }

  v9 = a5;
  v10 = a2;
  if (a5 != a2)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    return result;
  }

  if (result != a4)
  {
    v11 = 0;
    v13 = a7 + 64;
    v14 = a5;
    v28 = a7 + 72;
    v29 = a5;
    while (!__OFADD__(v11++, 1))
    {
      if ((v8 & 0x8000000000000000) != 0)
      {
        goto LABEL_25;
      }

      v16 = 1 << *(a7 + 32);
      if (v8 >= v16)
      {
        goto LABEL_25;
      }

      v17 = v8 >> 6;
      v18 = *(v13 + 8 * (v8 >> 6));
      if (((v18 >> v8) & 1) == 0)
      {
        goto LABEL_26;
      }

      if (*(a7 + 36) != v10)
      {
        goto LABEL_27;
      }

      v19 = v18 & (-2 << (v8 & 0x3F));
      if (v19)
      {
        result = outlined consume of Set<UIOpenURLContext>.Index._Variant(v8, v10, 0);
        v8 = __clz(__rbit64(v19)) | v8 & 0x7FFFFFFFFFFFFFC0;
        if (v10 != v9)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v20 = v7;
        v21 = v13;
        v22 = v9;
        v23 = v17 << 6;
        v24 = v17 + 1;
        v25 = (v28 + 8 * v17);
        while (v24 < (v16 + 63) >> 6)
        {
          v27 = *v25++;
          v26 = v27;
          v23 += 64;
          ++v24;
          if (v27)
          {
            result = outlined consume of Set<UIOpenURLContext>.Index._Variant(v8, v10, 0);
            v8 = __clz(__rbit64(v26)) + v23;
            goto LABEL_21;
          }
        }

        result = outlined consume of Set<UIOpenURLContext>.Index._Variant(v8, v10, 0);
        v8 = v16;
LABEL_21:
        v9 = v22;
        v13 = v21;
        v7 = v20;
        v14 = v29;
        if (v10 != v9)
        {
          goto LABEL_28;
        }
      }

      v10 = v14;
      if (v8 == v7)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  outlined consume of Set<UIOpenURLContext>.Index._Variant(a4, a2, 0);
  return 0;
}

uint64_t specialized Collection.distance(from:to:)(uint64_t result, _BOOL4 a2, uint64_t a3, int a4, uint64_t a5)
{
  if ((a4 & 1) == 0)
  {
    if (a2)
    {
      goto LABEL_26;
    }

    goto LABEL_5;
  }

  if (a2)
  {
LABEL_5:
    if (a3 < result)
    {
      goto LABEL_26;
    }
  }

  if (((a4 ^ a2) & 1) == 0 && result == a3)
  {
    return 0;
  }

  for (i = 0; ; ++i)
  {
    v6 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v8 = __OFADD__(result++, 1);
    if (a2)
    {
      if (v8)
      {
        goto LABEL_24;
      }

      a2 = 1;
    }

    else
    {
      if (v8)
      {
        goto LABEL_25;
      }

      v9 = *(a5 + 16);
      a2 = result == v9;
      if (result == v9)
      {
        result = 0;
      }
    }

    if (((a2 ^ a4) & 1) == 0 && result == a3)
    {
      return v6;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t specialized RandomAccessCollection<>.index(after:)(uint64_t a1)
{
  outlined init with copy of TableColumnCollection.Backing(v1, v10);
  if (v11)
  {
    v3 = *(*&v10[0] + 16);
  }

  else
  {
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v10, v7);
    v5 = v8;
    v6 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    v3 = (*(v6 + 8))(v5, v6);
    result = __swift_destroy_boxed_opaque_existential_1(v7);
  }

  if ((a1 & 0x8000000000000000) == 0 && v3 > a1)
  {
    return a1 + 1;
  }

  __break(1u);
  return result;
}

void specialized UICollectionViewListCoordinator.updateLeadingHeaderMargin(collectionView:hasGlobalHeader:existingView:)(void *a1, char a2, uint64_t (*a3)(double, double))
{
  v74 = a1;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = *MEMORY[0x1E69E7D40] & *v3;
  v75 = v3;
  v72 = a3;
  if (a2)
  {
    v71 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v10 = *(v9 + 136);
    swift_beginAccess();
    v11 = type metadata accessor for ShadowListDataSource;
    v12 = v10;
    outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(v10 + v3, v77, &lazy cache variable for type metadata for ShadowListDataSource<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListDataSource);
    outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(v77, v80, &lazy cache variable for type metadata for ShadowListUpdateRecorder<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListUpdateRecorder);
    _s7SwiftUI23ShadowSectionCollectionVyACyxGAA0C18ListUpdateRecorderVyxGcfCAA22TableDataSourceAdaptorV_Tt1g5(v80, v78);
    outlined destroy of ShadowListUpdateRecorder<TableDataSourceAdaptor>(v77, &lazy cache variable for type metadata for ShadowListDataSource<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListDataSource);
    v13 = v78[24];
    outlined destroy of ShadowListUpdateRecorder<TableDataSourceAdaptor>(v78, &lazy cache variable for type metadata for ShadowSectionCollection<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowSectionCollection);
    if (v13 < 0)
    {
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v69 = v7;
    v70 = v6;
    if (v13)
    {
      a3 = v10;
      v73 = v13;
      outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(v10 + v75, v80, &lazy cache variable for type metadata for ShadowListDataSource<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListDataSource);
      v14 = type metadata accessor for ShadowListUpdateRecorder;
      outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(v80, v76, &lazy cache variable for type metadata for ShadowListUpdateRecorder<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListUpdateRecorder);
      _s7SwiftUI23ShadowSectionCollectionVyACyxGAA0C18ListUpdateRecorderVyxGcfCAA22TableDataSourceAdaptorV_Tt1g5(v76, v77);
      outlined destroy of ShadowListUpdateRecorder<TableDataSourceAdaptor>(v77, &lazy cache variable for type metadata for ShadowSectionCollection<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowSectionCollection);
      outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(v80, v77, &lazy cache variable for type metadata for ShadowListUpdateRecorder<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListUpdateRecorder);
      v15 = specialized ShadowListUpdateRecorder.initialIndex(_:)(0);
      _s7SwiftUI19ShadowRowCollectionV_7sectionACyxGAA0C18ListUpdateRecorderVyxG_10SectionIDs_5IndexQZtcfCAA22TableDataSourceAdaptorV_Tt2g5(v77, v15, v78);
      outlined destroy of ShadowListUpdateRecorder<TableDataSourceAdaptor>(v80, &lazy cache variable for type metadata for ShadowListDataSource<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListDataSource);
      v13 = v79;
      outlined destroy of ShadowListUpdateRecorder<TableDataSourceAdaptor>(v78, &lazy cache variable for type metadata for ShadowRowCollection<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowRowCollection);
      v16 = 0;
      if (v13 > 0)
      {
LABEL_10:
        v19 = v71;
        MEMORY[0x18D000680](0, v16);
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        (*(v69 + 8))(v19, v70);
        v21 = [v74 cellForItemAtIndexPath_];

        if (v21)
        {
          type metadata accessor for AnyListCollectionViewCell();
          v22 = swift_dynamicCastClass();
          if (v22)
          {
            v23 = v22;
            v24 = v21;
            v25 = [v23 contentView];
            [v25 frame];
            v27 = v26;
            v29 = v28;
            v31 = v30;
            v33 = v32;

            v81.origin.x = v27;
            v81.origin.y = v29;
            v81.size.width = v31;
            v81.size.height = v33;
            MinX = CGRectGetMinX(v81);
            v35 = [v23 contentView];

            [v35 bounds];
            v37 = v36;
            v39 = v38;

            v40 = static HorizontalAlignment.listRowSeparatorLeading.getter();
            a3 = *((*MEMORY[0x1E69E7D40] & *v23) + 0x68);
            *&v41 = COERCE_DOUBLE((a3)(v40, v37, v39));
            if (v42)
            {
              v43 = static HorizontalAlignment.leadingText.getter();
              *&v44 = COERCE_DOUBLE((a3)(v43, v37, v39));
              v46 = v45;

              v47 = 0.0;
              v48 = v75;
              if ((v46 & 1) == 0)
              {
                v47 = *&v44;
              }
            }

            else
            {
              v57 = *&v41;

              v47 = v57;
              v48 = v75;
            }

            *(v48 + *((*MEMORY[0x1E69E7D40] & *v48) + 0x348)) = MinX + v47;
          }

          else
          {
          }
        }
      }

      else
      {
        v17 = 1;
        while (v73 != v17)
        {
          if (__OFADD__(v17, 1))
          {
            __break(1u);
            goto LABEL_31;
          }

          outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(v12 + v75, v80, &lazy cache variable for type metadata for ShadowListDataSource<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListDataSource);
          v14 = lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor;
          outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(v80, v76, &lazy cache variable for type metadata for ShadowListUpdateRecorder<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListUpdateRecorder);
          _s7SwiftUI23ShadowSectionCollectionVyACyxGAA0C18ListUpdateRecorderVyxGcfCAA22TableDataSourceAdaptorV_Tt1g5(v76, v77);
          outlined destroy of ShadowListUpdateRecorder<TableDataSourceAdaptor>(v77, &lazy cache variable for type metadata for ShadowSectionCollection<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowSectionCollection);
          outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(v80, v77, &lazy cache variable for type metadata for ShadowListUpdateRecorder<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListUpdateRecorder);
          v18 = specialized ShadowListUpdateRecorder.initialIndex(_:)(v17);
          _s7SwiftUI19ShadowRowCollectionV_7sectionACyxGAA0C18ListUpdateRecorderVyxG_10SectionIDs_5IndexQZtcfCAA22TableDataSourceAdaptorV_Tt2g5(v77, v18, v78);
          outlined destroy of ShadowListUpdateRecorder<TableDataSourceAdaptor>(v80, &lazy cache variable for type metadata for ShadowListDataSource<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListDataSource);
          v13 = v79;
          outlined destroy of ShadowListUpdateRecorder<TableDataSourceAdaptor>(v78, &lazy cache variable for type metadata for ShadowRowCollection<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowRowCollection);
          ++v17;
          if (v13 > 0)
          {
            v16 = v17 - 1;
            goto LABEL_10;
          }
        }
      }
    }
  }

  else
  {
    *(v3 + *(v9 + 840)) = 0;
  }

  v13 = [v74 visibleSupplementaryViewsOfKind_];
  v73 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UICollectionReusableView, 0x1E69DC7E8);
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v14 >> 62)
  {
LABEL_31:
    v49 = __CocoaSet.count.getter();
    v11 = v75;
    if (!v49)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v49 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v11 = v75;
    if (!v49)
    {
      goto LABEL_32;
    }
  }

  if (v49 < 1)
  {
    __break(1u);
    goto LABEL_46;
  }

  v50 = 0;
  v51 = *((*MEMORY[0x1E69E7D40] & *v11) + 0x348);
  do
  {
    if ((v14 & 0xC000000000000001) != 0)
    {
      v52 = MEMORY[0x18D00E9C0](v50, v14);
    }

    else
    {
      v52 = *(v14 + 8 * v50 + 32);
    }

    v53 = v52;
    type metadata accessor for TableCollectionViewCell(0);
    v54 = swift_dynamicCastClass();
    if (v54)
    {
      *(v54 + direct field offset for TableCollectionViewCell.headerLeadingMargin) = *(v11 + v51);
      v55 = *(v54 + direct field offset for ListCollectionViewCellBase.host);
      if (v55)
      {
        type metadata accessor for _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>>(0);
        lazy protocol witness table accessor for type DefaultIndices<CountingIndexCollection<ShadowSectionCollection<TableDataSourceAdaptor>>> and conformance DefaultIndices<A>(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>> and conformance _UIHostingView<A>, type metadata accessor for _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>>, protocol conformance descriptor for _UIHostingView<A>);
        v56 = v55;
        v11 = v75;
        ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
      }
    }

    ++v50;
  }

  while (v49 != v50);
LABEL_32:

  a3 = v72;
  if (v72)
  {
    v58 = v72;
    goto LABEL_40;
  }

  v59 = MEMORY[0x18D00C850](0xD000000000000011, 0x800000018CD4D770);
  v60 = [v74 visibleSupplementaryViewsOfKind_];

  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (v13 >> 62)
  {
LABEL_47:
    if (__CocoaSet.count.getter())
    {
      goto LABEL_36;
    }

LABEL_48:

    return;
  }

  if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_48;
  }

LABEL_36:
  if ((v13 & 0xC000000000000001) != 0)
  {
    v61 = MEMORY[0x18D00E9C0](0, v13);
  }

  else
  {
    if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v61 = *(v13 + 32);
  }

  v62 = v61;

  v58 = v62;
LABEL_40:
  type metadata accessor for TableGlobalHeader();
  v63 = swift_dynamicCastClass();
  if (v63)
  {
    v64 = *(v11 + *((*MEMORY[0x1E69E7D40] & *v11) + 0x348));
    v65 = *(v63 + OBJC_IVAR____TtC7SwiftUI17TableGlobalHeader_headerLeadingMargin);
    v66 = v63;
    *(v63 + OBJC_IVAR____TtC7SwiftUI17TableGlobalHeader_headerLeadingMargin) = v64;
    v67 = a3;
    if (v65 != v64)
    {
      [v66 setNeedsUpdateConfiguration];
    }
  }

  else
  {
    v68 = a3;
  }
}

uint64_t specialized UICollectionViewListCoordinatorBase.update(_:to:transaction:performDiff:)(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  v71 = a4;
  v74 = a2;
  _s7SwiftUI33AccessibilityViewModifierAccessor33_71F62EDC1DAE3BBC7A74521E45BA5A66LLCyAA0c10AttachmentE0VGMaTm_0(0, &lazy cache variable for type metadata for ListCoreBatchUpdates<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ListCoreBatchUpdates);
  v72 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v76 = &v68 - v9;
  LOBYTE(v85) = 17;
  specialized UICollectionViewListCoordinatorBase.currentSelection.getter(&v78);
  v10 = v81;
  if (v81)
  {
    v11 = v82;
    __swift_project_boxed_opaque_existential_1(&v78, v81);
    v12 = (*(v11 + 24))(v10, v11);
    outlined destroy of AnySelectionManager(&v78);
  }

  else
  {
    _s7SwiftUI7BindingVyAA27AnyTableColumnCustomizationVGWOhTm_0(&v78, &lazy cache variable for type metadata for AnySelectionManager?, &type metadata for AnySelectionManager, MEMORY[0x1E69E6720]);
    v12 = 0;
  }

  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = v12 & 1;
  v73 = a1;
  static Update.enqueueAction(reason:_:)();

  v14 = MEMORY[0x1E69E7D40];
  v15 = *((*MEMORY[0x1E69E7D40] & *v5) + 0xA0);
  swift_beginAccess();
  v16 = *(v5 + v15);
  v75 = v15;
  *(v5 + v15) = a3;
  outlined consume of ListItemTint?(v16);
  v17 = v5 + *((*v14 & *v5) + 0xB8);
  swift_beginAccess();
  v18 = v76;
  outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(v17, v76, &lazy cache variable for type metadata for ListCoreBatchUpdates<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ListCoreBatchUpdates);

  v20 = specialized ListCoreBatchUpdates.isEmpty.getter(v19);
  outlined destroy of ShadowListUpdateRecorder<TableDataSourceAdaptor>(v18, &lazy cache variable for type metadata for ListCoreBatchUpdates<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ListCoreBatchUpdates);
  v21 = *v14 & *v5;
  if ((v20 & 1) == 0)
  {
    v28 = *((*v14 & *v5) + 0x88);
    swift_beginAccess();
    outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(v5 + v28, &v78, &lazy cache variable for type metadata for ShadowListDataSource<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListDataSource);
    swift_beginAccess();
    v29 = v17 + *(v72 + 60);
    v30 = v74;
    specialized ListBatchUpdates.formUpdates<A>(from:to:)(&v78, v74);
    v31 = *(v29 + 16);
    v85 = *v29;
    v86 = v31;
    v87 = *(v29 + 32);
    outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(&v85, v77, &lazy cache variable for type metadata for ListBatchUpdates<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ListBatchUpdates);
    specialized ListCoreBatchUpdates.formResult<A>(_:)(&v85);
    swift_endAccess();
    outlined destroy of ShadowListUpdateRecorder<TableDataSourceAdaptor>(&v85, &lazy cache variable for type metadata for ListBatchUpdates<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ListBatchUpdates);
    outlined destroy of ShadowListUpdateRecorder<TableDataSourceAdaptor>(&v78, &lazy cache variable for type metadata for ShadowListDataSource<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListDataSource);
    outlined init with copy of TableDataSourceAdaptor(v30, &v78);
    v32 = *((*MEMORY[0x1E69E7D40] & *v5) + 0xD0);
    swift_beginAccess();
    outlined assign with take of TableHeaderView?(&v78, v5 + v32, &lazy cache variable for type metadata for TableDataSourceAdaptor?, &type metadata for TableDataSourceAdaptor);
    swift_endAccess();
    v33 = v75;
    goto LABEL_31;
  }

  v70 = v17;
  v22 = v5 + *(v21 + 296);
  v23 = *(v22 + 1);
  if (v23)
  {
    v24 = v22[16];
    v78 = *v22;
    v79 = v23;
    v80 = v24;
    type metadata accessor for MutableBox<UInt32>(0, &lazy cache variable for type metadata for Binding<EditMode>, &type metadata for EditMode, MEMORY[0x1E6981948]);
    v26 = v25;
    MEMORY[0x18D00ACC0](&v85);
    if (v85 == 1)
    {
      v27 = 0;
      goto LABEL_14;
    }

    v35 = *(v22 + 1);
    if (v35)
    {
      v36 = v22[16];
      v78 = *v22;
      v79 = v35;
      v80 = v36;
      MEMORY[0x18D00ACC0](&v85, v26);
      v34 = v85 != 0;
    }

    else
    {
      v34 = 0;
    }
  }

  else
  {
    v34 = 0;
  }

  v27 = v34 ^ [v73 isEditing];
LABEL_14:
  v37 = *v14 & *v5;
  v38 = *(v37 + 0xC0);
  if (*(v5 + v38) == 1)
  {
    *(v5 + v38) = 0;
    v39 = *(v22 + 1);
    v33 = v75;
    if (v39)
    {
      v40 = v22[16];
      v78 = *v22;
      v79 = v39;
      v80 = v40;
      type metadata accessor for MutableBox<UInt32>(0, &lazy cache variable for type metadata for Binding<EditMode>, &type metadata for EditMode, MEMORY[0x1E6981948]);
      MEMORY[0x18D00ACC0](&v85);
      if (v85)
      {
        [v73 setEditing_];
      }
    }

    goto LABEL_31;
  }

  v69 = v27;
  if (v71)
  {
    v41 = *(v37 + 136);
    swift_beginAccess();
    outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(v5 + v41, &v78, &lazy cache variable for type metadata for ShadowListDataSource<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListDataSource);
    v42 = v70;
    swift_beginAccess();
    v43 = v42 + *(v72 + 60);
    specialized ListBatchUpdates.formUpdates<A>(from:to:)(&v78, v74);
    v44 = *(v43 + 16);
    v85 = *v43;
    v86 = v44;
    v87 = *(v43 + 32);
    outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(&v85, v77, &lazy cache variable for type metadata for ListBatchUpdates<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ListBatchUpdates);
    specialized ListCoreBatchUpdates.formResult<A>(_:)(&v85);
    swift_endAccess();
    outlined destroy of ShadowListUpdateRecorder<TableDataSourceAdaptor>(&v85, &lazy cache variable for type metadata for ListBatchUpdates<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ListBatchUpdates);
    outlined destroy of ShadowListUpdateRecorder<TableDataSourceAdaptor>(&v78, &lazy cache variable for type metadata for ShadowListDataSource<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListDataSource);
  }

  v45 = v70;
  v46 = v76;
  v47 = outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(v70, v76, &lazy cache variable for type metadata for ListCoreBatchUpdates<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ListCoreBatchUpdates);
  v48 = specialized ListCoreBatchUpdates.isEmpty.getter(v47);
  outlined destroy of ShadowListUpdateRecorder<TableDataSourceAdaptor>(v46, &lazy cache variable for type metadata for ListCoreBatchUpdates<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ListCoreBatchUpdates);
  if (v48)
  {
    v49 = v74;
    outlined init with copy of TableDataSourceAdaptor(v74, &v78);
    v50 = MEMORY[0x1E69E7CC0];
    v83 = MEMORY[0x1E69E7CC0];
    v84 = MEMORY[0x1E69E7CC0];
    v51 = *((*v14 & *v5) + 0x88);
    swift_beginAccess();
    outlined assign with copy of ShadowListDataSource<TableDataSourceAdaptor>(&v78, v5 + v51);
    swift_endAccess();
    outlined destroy of ShadowListUpdateRecorder<TableDataSourceAdaptor>(&v78, &lazy cache variable for type metadata for ShadowListDataSource<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListDataSource);
    v52 = specialized UICollectionViewListCoordinatorBase.dragAndDropController.getter();
    outlined init with copy of TableDataSourceAdaptor(v49, &v78);
    v83 = v50;
    v84 = v50;
    v53 = *((*v14 & *v52) + 0x60);
    swift_beginAccess();
    outlined assign with take of ShadowListDataSource<TableDataSourceAdaptor>(&v78, v52 + v53);
    swift_endAccess();
  }

  else
  {
    outlined init with copy of TableDataSourceAdaptor(v74, &v78);
    v54 = *((*v14 & *v5) + 0xD0);
    swift_beginAccess();
    outlined assign with take of TableHeaderView?(&v78, v5 + v54, &lazy cache variable for type metadata for TableDataSourceAdaptor?, &type metadata for TableDataSourceAdaptor);
    swift_endAccess();
  }

  v55 = v76;
  v56 = outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(v45, v76, &lazy cache variable for type metadata for ListCoreBatchUpdates<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ListCoreBatchUpdates);
  v57 = specialized ListCoreBatchUpdates.isEmpty.getter(v56);
  outlined destroy of ShadowListUpdateRecorder<TableDataSourceAdaptor>(v55, &lazy cache variable for type metadata for ListCoreBatchUpdates<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ListCoreBatchUpdates);
  v58 = *v5;
  v59 = *v14;
  v33 = v75;
  if ((v57 & 1) == 0 || (*(v5 + *((v59 & v58) + 0xD8)) & 1) == 0)
  {
    *(v5 + *((v59 & v58) + 0xD8)) = 1;
    swift_beginAccess();
    if (*(v5 + v33) == 1)
    {
      swift_endAccess();
    }

    else
    {
      v60 = Transaction.animation.getter();
      swift_endAccess();
      if (v60)
      {

        v61 = 1;
LABEL_30:
        LOBYTE(v78) = 17;
        v62 = swift_allocObject();
        *(v62 + 16) = v61;
        v63 = v73;
        *(v62 + 24) = v5;
        *(v62 + 32) = v63;
        *(v62 + 40) = v69;
        v64 = v63;
        v65 = v5;
        static Update.enqueueAction(reason:_:)();

        goto LABEL_31;
      }
    }

    v61 = 0;
    goto LABEL_30;
  }

LABEL_31:
  v66 = *(v5 + v33);
  *(v5 + v33) = 1;
  return outlined consume of ListItemTint?(v66);
}

void specialized closure #3 in UICollectionViewListCoordinator.update(_:to:transaction:performDiff:)(uint64_t a1, void *a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    specialized UICollectionViewListCoordinator.updateLeadingHeaderMargin(collectionView:hasGlobalHeader:existingView:)(a2, a3 & 1, 0);
  }
}

double specialized UICollectionViewListCoordinatorBase.onSubviewsSizingOptionsSet()()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x100);
  v3 = *(v2 + 2);
  v4 = v3 & 0xFFFFFFFFFFFFFFFELL;
  if ((v3 & 0xFFFFFFFFFFFFFFFELL) == 0x1FFFFFFFALL)
  {
LABEL_8:
    v12 = v0 + *((*v1 & *v0) + 0x108);
    v13 = *v12;
    v14 = v12[8];
    *v12 = 0;
    v12[8] = 1;

    specialized UICollectionViewListCoordinatorBase.subviewUniformHeight.didset(v13, v14);
    return result;
  }

  v6 = *v2;
  v5 = *(v2 + 1);
  v8 = *(v2 + 3);
  v7 = *(v2 + 4);
  v10 = *(v2 + 5);
  v9 = *(v2 + 6);
  if (v4 == 0x1FFFFFFFCLL || v4 == 0x1FFFFFFFELL)
  {
LABEL_7:
    outlined consume of ResolvedSubviewsSizingOptions?(v6, v5, v3, v8, v7, v10, v9);
    goto LABEL_8;
  }

  if (v3 >> 62)
  {
    if (v3 >> 62 != 1)
    {
      goto LABEL_8;
    }

    v16 = *(v2 + 2);
    outlined copy of ResolvedSubviewsSizingOptions?(v6, v5, v3, v8, v7, v10, v9);
    outlined copy of ResolvedSubviewsSizingOptions(v6, v5, v16, v8, v7, v10, v9);
    v17 = Axis.Set.contains(_:)();
    if (v17)
    {
      if (!v8)
      {
LABEL_17:
        v3 = v16;
        goto LABEL_7;
      }

      if (!(v16 & 1 | (*&v5 <= 0.0)))
      {
        v28[1] = v28;
        MEMORY[0x1EEE9AC00](v17);
        static Update.ensure<A>(_:)();
        v25 = v0 + *((*v1 & *v0) + 0x108);
        v26 = *v25;
        v27 = v25[8];
        *v25 = v28[3];
        v25[8] = 0;
        specialized UICollectionViewListCoordinatorBase.subviewUniformHeight.didset(v26, v27);
        outlined consume of ResolvedSubviewsSizingOptions?(v6, v5, v16, v8, v7, v10, v9);
        return outlined consume of ResolvedSubviewsSizingOptions?(v6, v5, v16, v8, v7, v10, v9);
      }
    }

    outlined consume of ResolvedSubviewsSizingOptions?(v6, v5, v16, v8, v7, v10, v9);
    goto LABEL_17;
  }

  v18 = *(v2 + 2);
  v19 = Axis.Set.contains(_:)();
  if (v19)
  {
    v20 = v8;
  }

  else
  {
    v20 = 0;
  }

  v21 = v7 | ~v19;
  v22 = v0 + *((*v1 & *v0) + 0x108);
  v23 = *v22;
  v24 = v22[8];
  *v22 = v20;
  v22[8] = v21 & 1;
  specialized UICollectionViewListCoordinatorBase.subviewUniformHeight.didset(v23, v24);

  return outlined consume of ResolvedSubviewsSizingOptions?(v6, v5, v18, v8, v7, v10, v9);
}

uint64_t specialized UICollectionViewListCoordinatorBase.enqueueSelectionUpdate(_:)(double (*a1)(_OWORD *), double a2)
{
  v3 = v2;
  specialized UICollectionViewListCoordinatorBase.currentSelection.getter(&v15);
  if (!*(&v16 + 1))
  {
    v7 = &lazy cache variable for type metadata for AnySelectionManager?;
    v8 = MEMORY[0x1E69E6720];
    goto LABEL_6;
  }

  v20[0] = v15;
  v20[1] = v16;
  v21 = v17;
  a1(v20);
  if ((static CoreTesting.isRunning.getter() & 1) == 0)
  {
    outlined init with copy of AnySelectionManager(v20, &v15);
    v11 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x118);
    swift_beginAccess();
    v12 = MEMORY[0x1E69E6720];
    outlined init with copy of Binding<AnySelectionManager>(v2 + v11, v18, &lazy cache variable for type metadata for AnySelectionManager?, &type metadata for AnySelectionManager, MEMORY[0x1E69E6720]);
    swift_beginAccess();
    outlined assign with copy of AnySelectionManager?(&v15, v2 + v11, &lazy cache variable for type metadata for AnySelectionManager?, &type metadata for AnySelectionManager, v12, type metadata accessor for MutableBox<UInt32>);
    swift_endAccess();
    if (!v19)
    {
      *(swift_allocObject() + 16) = v2;
      v13 = v2;
      static UIHostingViewBase.UpdateCycle.addPreCommitObserverOrAsyncMain(_:)();
    }

    v14 = MEMORY[0x1E69E6720];
    _s7SwiftUI7BindingVyAA27AnyTableColumnCustomizationVGWOhTm_0(&v15, &lazy cache variable for type metadata for AnySelectionManager?, &type metadata for AnySelectionManager, MEMORY[0x1E69E6720]);
    outlined destroy of AnySelectionManager(v20);
    v10 = v18;
    v7 = &lazy cache variable for type metadata for AnySelectionManager?;
    v9 = v14;
    return _s7SwiftUI7BindingVyAA27AnyTableColumnCustomizationVGWOhTm_0(v10, v7, &type metadata for AnySelectionManager, v9);
  }

  v5 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x110);
  swift_beginAccess();
  result = outlined init with copy of Binding<AnySelectionManager>?(v3 + v5, &v15, &lazy cache variable for type metadata for Binding<AnySelectionManager>?, &lazy cache variable for type metadata for Binding<AnySelectionManager>, &type metadata for AnySelectionManager, type metadata accessor for Binding<EditMode>?);
  if (*(&v15 + 1))
  {
    dispatch thunk of AnyLocation.set(_:transaction:)();
    outlined destroy of AnySelectionManager(v20);
    v7 = &lazy cache variable for type metadata for Binding<AnySelectionManager>;
    v8 = MEMORY[0x1E6981948];
LABEL_6:
    v9 = v8;
    v10 = &v15;
    return _s7SwiftUI7BindingVyAA27AnyTableColumnCustomizationVGWOhTm_0(v10, v7, &type metadata for AnySelectionManager, v9);
  }

  __break(1u);
  return result;
}

id specialized UICollectionViewListCoordinatorBase.dragAndDropController.getter()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x170);
  v3 = *(v0 + v2);
  if (v3)
  {
    v4 = *(v0 + v2);
  }

  else
  {
    v5 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x88);
    swift_beginAccess();
    outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(v0 + v5, v19, &lazy cache variable for type metadata for ShadowListDataSource<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListDataSource);
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    _s7SwiftUI33AccessibilityViewModifierAccessor33_71F62EDC1DAE3BBC7A74521E45BA5A66LLCyAA0c10AttachmentE0VGMaTm_0(0, &lazy cache variable for type metadata for CollectionViewListDragAndDropController<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for CollectionViewListDragAndDropController);
    v8 = objc_allocWithZone(v7);
    outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(v19, v18, &lazy cache variable for type metadata for ShadowListDataSource<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListDataSource);
    *(v8 + *((*v1 & *v8) + 0x70)) = 0;
    v9 = (v8 + *((*v1 & *v8) + 0x78));
    *v9 = xmmword_18CD633F0;
    v9[1] = 0u;
    v9[2] = 0u;
    v9[3] = 0u;
    *(v9 + 57) = 0u;
    v10 = MEMORY[0x1E69E7CC0];
    *(v8 + *((*v1 & *v8) + 0x80)) = MEMORY[0x1E69E7CC0];
    *(v8 + *((*v1 & *v8) + 0x88)) = v10;
    swift_unknownObjectWeakInit();
    *(v8 + *((*v1 & *v8) + 0x98)) = 0;
    outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(v18, v8 + *((*v1 & *v8) + 0x60), &lazy cache variable for type metadata for ShadowListDataSource<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListDataSource);
    v11 = (v8 + *((*v1 & *v8) + 0x68));
    *v11 = partial apply for closure #1 in PlatformViewCoordinator.weakDispatchUpdate.getter;
    v11[1] = v6;
    _s7SwiftUI33AccessibilityViewModifierAccessor33_71F62EDC1DAE3BBC7A74521E45BA5A66LLCyAA0c10AttachmentE0VGMaTm_0(0, &lazy cache variable for type metadata for ListDragAndDropControllerBase<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ListDragAndDropControllerBase);
    v17.receiver = v8;
    v17.super_class = v12;
    v13 = objc_msgSendSuper2(&v17, sel_init);
    outlined destroy of ShadowListUpdateRecorder<TableDataSourceAdaptor>(v18, &lazy cache variable for type metadata for ShadowListDataSource<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListDataSource);
    outlined destroy of ShadowListUpdateRecorder<TableDataSourceAdaptor>(v19, &lazy cache variable for type metadata for ShadowListDataSource<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListDataSource);
    v14 = *(v0 + v2);
    *(v0 + v2) = v13;
    v4 = v13;

    v3 = 0;
  }

  v15 = v3;
  return v4;
}

void specialized UICollectionViewListCoordinatorBase.selectionValue(forRowAt:)(uint64_t a1@<X8>)
{
  v3 = MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x110);
  swift_beginAccess();
  outlined init with copy of Binding<AnySelectionManager>?(v1 + v4, v14, &lazy cache variable for type metadata for Binding<AnySelectionManager>?, &lazy cache variable for type metadata for Binding<AnySelectionManager>, &type metadata for AnySelectionManager, type metadata accessor for Binding<EditMode>?);
  v5 = v14[1];
  outlined destroy of Binding<AnySelectionManager>?(v14, &lazy cache variable for type metadata for Binding<AnySelectionManager>?, &lazy cache variable for type metadata for Binding<AnySelectionManager>, &type metadata for AnySelectionManager, type metadata accessor for Binding<EditMode>?);
  if (v5)
  {
    v6 = *((*v3 & *v1) + 0x88);
    swift_beginAccess();
    outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(v1 + v6, v17, &lazy cache variable for type metadata for ShadowListDataSource<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListDataSource);
    v7 = IndexPath.section.getter();
    outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(v17, v16, &lazy cache variable for type metadata for ShadowListUpdateRecorder<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListUpdateRecorder);
    _s7SwiftUI23ShadowSectionCollectionVyACyxGAA0C18ListUpdateRecorderVyxGcfCAA22TableDataSourceAdaptorV_Tt1g5(v16, v14);
    v8 = v7 & ~(v7 >> 63);
    outlined destroy of ShadowListUpdateRecorder<TableDataSourceAdaptor>(v14, &lazy cache variable for type metadata for ShadowSectionCollection<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowSectionCollection);
    outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(v17, v16, &lazy cache variable for type metadata for ShadowListUpdateRecorder<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListUpdateRecorder);
    v9 = specialized ShadowListUpdateRecorder.initialIndex(_:)(v8);
    _s7SwiftUI19ShadowRowCollectionV_7sectionACyxGAA0C18ListUpdateRecorderVyxG_10SectionIDs_5IndexQZtcfCAA22TableDataSourceAdaptorV_Tt2g5(v16, v9, v14);
    v10 = IndexPath.row.getter();
    if (v10 < 0)
    {
      v12 = 0;
      v13 = v15;
      while (1)
      {
        v11 = v15;
        if (v13 != v15)
        {
          v11 = (v13 - 1);
          if (__OFSUB__(v13, 1))
          {
            break;
          }
        }

        --v12;
        v13 = v11;
        if (v10 >= v12)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
    }

    else
    {
      v11 = v15;
      if (!v10)
      {
LABEL_6:
        outlined destroy of ShadowListUpdateRecorder<TableDataSourceAdaptor>(v14, &lazy cache variable for type metadata for ShadowRowCollection<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowRowCollection);
        specialized ListCoreDataSource.selectionValue(forRowAt:)(v8, v11, a1);
        outlined destroy of ShadowListUpdateRecorder<TableDataSourceAdaptor>(v17, &lazy cache variable for type metadata for ShadowListDataSource<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListDataSource);
        return;
      }

      if ((v15 ^ 0x7FFFFFFFFFFFFFFFLL) > v10 - 1)
      {
        v11 = (v15 + v10);
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }
}

void specialized UICollectionViewListCoordinatorBase.mirrorSelection(collectionView:indexPath:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for IndexPath();
  v108 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v101 = &v91[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for (IndexPath?, IndexPath?)(0);
  v9 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v91[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v106 = &v91[-v13];
  _s7SwiftUI16BridgedListStateV12ScrollTargetVSgMaTm_0(0, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v91[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17);
  v107 = &v91[-v18];
  MEMORY[0x1EEE9AC00](v19);
  v102 = &v91[-v20];
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v91[-v22];
  specialized UICollectionViewListCoordinatorBase.selectionValue(forRowAt:)(&v109);
  v104 = a1;
  if (!*(&v110 + 1))
  {
    v93 = v16;
    v100 = v11;
    v36 = &lazy cache variable for type metadata for AnyHashable?;
    v37 = MEMORY[0x1E69E69B8];
LABEL_10:
    _s7SwiftUI7BindingVyAA27AnyTableColumnCustomizationVGWOhTm_0(&v109, v36, v37, MEMORY[0x1E69E6720]);
    goto LABEL_12;
  }

  v112[0] = v109;
  v112[1] = v110;
  v113 = v111;
  specialized UICollectionViewListCoordinatorBase.currentSelection.getter(&v109);
  v24 = *(&v110 + 1);
  if (!*(&v110 + 1))
  {
    v93 = v16;
    v100 = v11;
    outlined destroy of AnyHashable(v112);
    v36 = &lazy cache variable for type metadata for AnySelectionManager?;
    v37 = &type metadata for AnySelectionManager;
    goto LABEL_10;
  }

  v25 = v23;
  v26 = v9;
  v27 = v111;
  __swift_project_boxed_opaque_existential_1(&v109, *(&v110 + 1));
  v28 = (*(v27 + 40))(v112, MEMORY[0x1E69E69B8], MEMORY[0x1E69E69C0], v24, v27);
  outlined destroy of AnySelectionManager(&v109);
  if (v28)
  {
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v30 = [v104 cellForItemAtIndexPath_];

    if (!v30 || (v31 = [v30 isSelected], v30, (v31 & 1) == 0))
    {
      v32.super.isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v33 = *((*MEMORY[0x1E69E7D40] & *v3) + 0xA0);
      swift_beginAccess();
      if (*(v3 + v33) == 1)
      {
        swift_endAccess();
        v34 = 0;
        v35 = v104;
      }

      else
      {
        v87 = Transaction.animation.getter();
        swift_endAccess();
        v88 = v87;
        v35 = v104;
        if (v88)
        {

          v34 = 1;
        }

        else
        {
          v34 = 0;
        }
      }

      [v35 selectItemAtIndexPath:v32.super.isa animated:v34 scrollPosition:0];
    }

    outlined destroy of AnyHashable(v112);
    return;
  }

  v93 = v16;
  v100 = v11;
  outlined destroy of AnyHashable(v112);
  v9 = v26;
  v23 = v25;
LABEL_12:
  v38 = v108;
  v39 = *(v108 + 16);
  v105 = a2;
  v98 = v108 + 16;
  v96 = v39;
  v39(v23, a2, v6);
  v40 = *(v38 + 56);
  v97 = v38 + 56;
  v95 = v40;
  v40(v23, 0, 1, v6);
  v41 = *((*MEMORY[0x1E69E7D40] & *v3) + 0xE0);
  swift_beginAccess();
  v99 = v9;
  v42 = *(v9 + 48);
  v43 = MEMORY[0x1E6969C28];
  v44 = MEMORY[0x1E69E6720];
  v45 = v106;
  outlined init with copy of Binding<AnySelectionManager>?(v23, v106, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720], _s7SwiftUI16BridgedListStateV12ScrollTargetVSgMaTm_0);
  v103 = v3;
  v46 = v3 + v41;
  v47 = v42;
  outlined init with copy of Binding<AnySelectionManager>?(v46, &v45[v42], &lazy cache variable for type metadata for IndexPath?, v43, v44, _s7SwiftUI16BridgedListStateV12ScrollTargetVSgMaTm_0);
  v48 = *(v38 + 48);
  if (v48(v45, 1, v6) == 1)
  {
    outlined destroy of Binding<AnySelectionManager>?(v23, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720], _s7SwiftUI16BridgedListStateV12ScrollTargetVSgMaTm_0);
    v49 = v48(&v45[v47], 1, v6);
    v50 = v107;
    if (v49 == 1)
    {
      outlined destroy of Binding<AnySelectionManager>?(v45, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720], _s7SwiftUI16BridgedListStateV12ScrollTargetVSgMaTm_0);
      return;
    }

    goto LABEL_17;
  }

  v51 = v23;
  v52 = v102;
  outlined init with copy of Binding<AnySelectionManager>?(v45, v102, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720], _s7SwiftUI16BridgedListStateV12ScrollTargetVSgMaTm_0);
  v53 = v48(&v45[v47], 1, v6);
  v50 = v107;
  if (v53 == 1)
  {
    outlined destroy of Binding<AnySelectionManager>?(v23, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720], _s7SwiftUI16BridgedListStateV12ScrollTargetVSgMaTm_0);
    (*(v108 + 8))(v52, v6);
LABEL_17:
    v94 = v48;
    outlined destroy of BridgedListState(v45, type metadata accessor for (IndexPath?, IndexPath?));
    v54 = v105;
    goto LABEL_18;
  }

  v94 = v48;
  v72 = v6;
  v73 = v108;
  v74 = &v45[v47];
  v75 = v101;
  (*(v108 + 32))(v101, v74, v72);
  lazy protocol witness table accessor for type DefaultIndices<CountingIndexCollection<ShadowSectionCollection<TableDataSourceAdaptor>>> and conformance DefaultIndices<A>(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x1E6969C28], MEMORY[0x1E6969C50]);
  v92 = dispatch thunk of static Equatable.== infix(_:_:)();
  v76 = v73;
  v6 = v72;
  v77 = *(v76 + 8);
  v77(v75, v72);
  v78 = MEMORY[0x1E6969C28];
  v79 = MEMORY[0x1E69E6720];
  outlined destroy of Binding<AnySelectionManager>?(v51, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720], _s7SwiftUI16BridgedListStateV12ScrollTargetVSgMaTm_0);
  v77(v52, v72);
  outlined destroy of Binding<AnySelectionManager>?(v106, &lazy cache variable for type metadata for IndexPath?, v78, v79, _s7SwiftUI16BridgedListStateV12ScrollTargetVSgMaTm_0);
  v54 = v105;
  if (v92)
  {
    return;
  }

LABEL_18:
  v96(v50, v54, v6);
  v95(v50, 0, 1, v6);
  v55 = v103;
  v56 = *((*MEMORY[0x1E69E7D40] & *v103) + 0xE8);
  swift_beginAccess();
  v57 = *(v99 + 48);
  v58 = MEMORY[0x1E6969C28];
  v59 = MEMORY[0x1E69E6720];
  v60 = v50;
  v61 = v100;
  outlined init with copy of Binding<AnySelectionManager>?(v60, v100, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720], _s7SwiftUI16BridgedListStateV12ScrollTargetVSgMaTm_0);
  outlined init with copy of Binding<AnySelectionManager>?(v55 + v56, v61 + v57, &lazy cache variable for type metadata for IndexPath?, v58, v59, _s7SwiftUI16BridgedListStateV12ScrollTargetVSgMaTm_0);
  v62 = v94;
  if (v94(v61, 1, v6) == 1)
  {
    outlined destroy of Binding<AnySelectionManager>?(v107, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720], _s7SwiftUI16BridgedListStateV12ScrollTargetVSgMaTm_0);
    if (v62(v61 + v57, 1, v6) == 1)
    {
      outlined destroy of Binding<AnySelectionManager>?(v61, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720], _s7SwiftUI16BridgedListStateV12ScrollTargetVSgMaTm_0);
      return;
    }
  }

  else
  {
    v63 = v93;
    outlined init with copy of Binding<AnySelectionManager>?(v61, v93, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720], _s7SwiftUI16BridgedListStateV12ScrollTargetVSgMaTm_0);
    if (v62(v61 + v57, 1, v6) != 1)
    {
      v80 = v6;
      v81 = v108;
      v82 = v101;
      (*(v108 + 32))(v101, v61 + v57, v80);
      lazy protocol witness table accessor for type DefaultIndices<CountingIndexCollection<ShadowSectionCollection<TableDataSourceAdaptor>>> and conformance DefaultIndices<A>(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x1E6969C28], MEMORY[0x1E6969C50]);
      v83 = dispatch thunk of static Equatable.== infix(_:_:)();
      v84 = *(v81 + 8);
      v84(v82, v80);
      v85 = MEMORY[0x1E6969C28];
      v86 = MEMORY[0x1E69E6720];
      outlined destroy of Binding<AnySelectionManager>?(v107, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720], _s7SwiftUI16BridgedListStateV12ScrollTargetVSgMaTm_0);
      v84(v63, v80);
      outlined destroy of Binding<AnySelectionManager>?(v61, &lazy cache variable for type metadata for IndexPath?, v85, v86, _s7SwiftUI16BridgedListStateV12ScrollTargetVSgMaTm_0);
      if (v83)
      {
        return;
      }

      goto LABEL_24;
    }

    outlined destroy of Binding<AnySelectionManager>?(v107, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720], _s7SwiftUI16BridgedListStateV12ScrollTargetVSgMaTm_0);
    (*(v108 + 8))(v63, v6);
  }

  outlined destroy of BridgedListState(v61, type metadata accessor for (IndexPath?, IndexPath?));
LABEL_24:
  v64 = IndexPath._bridgeToObjectiveC()().super.isa;
  v65 = [v104 cellForItemAtIndexPath_];

  if (v65)
  {
    v66 = [v65 isSelected];

    if (v66)
    {
      v67.super.isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v68 = v103;
      v69 = *((*MEMORY[0x1E69E7D40] & *v103) + 0xA0);
      swift_beginAccess();
      if (*(v68 + v69) == 1)
      {
        swift_endAccess();
        v70 = 0;
        v71 = v104;
      }

      else
      {
        v89 = Transaction.animation.getter();
        swift_endAccess();
        v90 = v89;
        v71 = v104;
        if (v90)
        {

          v70 = 1;
        }

        else
        {
          v70 = 0;
        }
      }

      [v71 deselectItemAtIndexPath:v67.super.isa animated:v70];
    }
  }
}

void specialized UICollectionViewListCoordinatorBase.performUpdates(collectionView:shouldSetEditing:)(void *a1, int a2)
{
  v3 = v2;
  _s7SwiftUI33AccessibilityViewModifierAccessor33_71F62EDC1DAE3BBC7A74521E45BA5A66LLCyAA0c10AttachmentE0VGMaTm_0(0, &lazy cache variable for type metadata for ListCoreBatchUpdates<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ListCoreBatchUpdates);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v45[-v7];
  _s7SwiftUI16BridgedListStateV12ScrollTargetVSgMaTm_0(0, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v45[-v10];
  v12 = MEMORY[0x1E69E7D40];
  *(v3 + *((*MEMORY[0x1E69E7D40] & *v3) + 0xD8)) = 1;
  v46 = a2;
  if (a2)
  {
    specialized UICollectionViewListCoordinatorBase.updateEditingState(_:)(a1);
  }

  v13 = type metadata accessor for IndexPath();
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  v14 = *((*v12 & *v3) + 0xE0);
  swift_beginAccess();
  outlined assign with take of Binding<AnySelectionManager>?(v11, v3 + v14, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720], _s7SwiftUI16BridgedListStateV12ScrollTargetVSgMaTm_0);
  swift_endAccess();
  v15 = *((*v12 & *v3) + 0xB8);
  swift_beginAccess();
  v16 = outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(v3 + v15, v8, &lazy cache variable for type metadata for ListCoreBatchUpdates<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ListCoreBatchUpdates);
  LOBYTE(v14) = specialized ListCoreBatchUpdates.isEmpty.getter(v16);
  outlined destroy of ShadowListUpdateRecorder<TableDataSourceAdaptor>(v8, &lazy cache variable for type metadata for ListCoreBatchUpdates<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ListCoreBatchUpdates);
  if ((v14 & 1) == 0)
  {
    v17 = *((*MEMORY[0x1E69E7D40] & *v3) + 0xD0);
    swift_beginAccess();
    outlined init with copy of Binding<AnySelectionManager>(v3 + v17, &v48, &lazy cache variable for type metadata for TableDataSourceAdaptor?, &type metadata for TableDataSourceAdaptor, MEMORY[0x1E69E6720]);
    if (*(&v49 + 1))
    {
      v66 = v56;
      v67[0] = v57[0];
      *(v67 + 11) = *(v57 + 11);
      v62 = v52;
      v63 = v53;
      v64 = v54;
      v65 = v55;
      v58 = v48;
      v59 = v49;
      v60 = v50;
      v61 = v51;
      outlined init with copy of TableDataSourceAdaptor(&v58, &v48);
      v18 = swift_allocObject();
      v19 = v54;
      *(v18 + 136) = v55;
      v20 = v57[0];
      *(v18 + 152) = v56;
      *(v18 + 168) = v20;
      *(v18 + 179) = *(v57 + 11);
      v21 = v50;
      *(v18 + 72) = v51;
      v22 = v53;
      *(v18 + 88) = v52;
      *(v18 + 104) = v22;
      *(v18 + 120) = v19;
      v23 = v49;
      *(v18 + 24) = v48;
      *(v18 + 40) = v23;
      *(v18 + 16) = v3;
      *(v18 + 56) = v21;
      *(v18 + 200) = a1;
      v24 = swift_allocObject();
      *(v24 + 16) = partial apply for specialized closure #1 in UICollectionViewListCoordinatorBase.performUpdates(collectionView:shouldSetEditing:);
      *(v24 + 24) = v18;
      v47[4] = closure #1 in PlatformViewCoordinator.dispatchUpdate(reason:_:)partial apply;
      v47[5] = v24;
      v47[0] = MEMORY[0x1E69E9820];
      v47[1] = 1107296256;
      v47[2] = thunk for @escaping @callee_guaranteed () -> ();
      v47[3] = &block_descriptor_55_0;
      v25 = _Block_copy(v47);
      v26 = v3;
      v27 = a1;

      v28 = swift_allocObject();
      *(v28 + 16) = v26;
      *(v28 + 24) = v27;
      *(v28 + 32) = v46 & 1;
      *&v50 = partial apply for specialized closure #2 in UICollectionViewListCoordinatorBase.performUpdates(collectionView:shouldSetEditing:);
      *(&v50 + 1) = v28;
      *&v48 = MEMORY[0x1E69E9820];
      *(&v48 + 1) = 1107296256;
      *&v49 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
      *(&v49 + 1) = &block_descriptor_61_0;
      v29 = _Block_copy(&v48);
      v30 = v26;
      v31 = v27;

      [v31 performBatchUpdates:v25 completion:v29];
      _Block_release(v29);
      _Block_release(v25);
      outlined destroy of TableDataSourceAdaptor(&v58);

      return;
    }

    _s7SwiftUI7BindingVyAA27AnyTableColumnCustomizationVGWOhTm_0(&v48, &lazy cache variable for type metadata for TableDataSourceAdaptor?, &type metadata for TableDataSourceAdaptor, MEMORY[0x1E69E6720]);
  }

  if (v46 & 1) != 0 && (v32 = outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(v3 + v15, v8, &lazy cache variable for type metadata for ListCoreBatchUpdates<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ListCoreBatchUpdates), v33 = specialized ListCoreBatchUpdates.isEmpty.getter(v32), outlined destroy of ShadowListUpdateRecorder<TableDataSourceAdaptor>(v8, &lazy cache variable for type metadata for ListCoreBatchUpdates<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ListCoreBatchUpdates), (v33))
  {
    v34 = swift_allocObject();
    *(v34 + 16) = v3;
    *(v34 + 24) = a1;
    *(v34 + 32) = 1;
    *&v60 = partial apply for specialized closure #3 in UICollectionViewListCoordinatorBase.performUpdates(collectionView:shouldSetEditing:);
    *(&v60 + 1) = v34;
    *&v58 = MEMORY[0x1E69E9820];
    *(&v58 + 1) = 1107296256;
    *&v59 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
    *(&v59 + 1) = &block_descriptor_45;
    v35 = _Block_copy(&v58);
    v36 = v3;
    v37 = a1;

    [v37 performBatchUpdates:0 completion:v35];
    _Block_release(v35);
  }

  else
  {
    v38 = objc_opt_self();
    v39 = swift_allocObject();
    *(v39 + 16) = a1;
    *(v39 + 24) = v3;
    v40 = swift_allocObject();
    *(v40 + 16) = partial apply for specialized closure #4 in UICollectionViewListCoordinatorBase.performUpdates(collectionView:shouldSetEditing:);
    *(v40 + 24) = v39;
    *&v60 = closure #1 in PlatformViewCoordinator.dispatchUpdate(reason:_:)partial apply;
    *(&v60 + 1) = v40;
    *&v58 = MEMORY[0x1E69E9820];
    *(&v58 + 1) = 1107296256;
    *&v59 = thunk for @escaping @callee_guaranteed () -> ();
    *(&v59 + 1) = &block_descriptor_39_2;
    v41 = _Block_copy(&v58);
    v42 = v3;
    v43 = a1;

    [v38 performWithoutAnimation_];
    _Block_release(v41);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

void specialized UICollectionViewListCoordinatorBase.finishBatchUpdate(collectionView:shouldSetEditing:)(void *a1, char a2)
{
  v3 = v2;
  _s7SwiftUI33AccessibilityViewModifierAccessor33_71F62EDC1DAE3BBC7A74521E45BA5A66LLCyAA0c10AttachmentE0VGMaTm_0(0, &lazy cache variable for type metadata for ListCoreBatchUpdates<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ListCoreBatchUpdates);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v19 - v8;
  v10 = [a1 window];
  if (v10)
  {

    v11 = MEMORY[0x1E69E7D40];
    v12 = *((*MEMORY[0x1E69E7D40] & *v3) + 0xB8);
    swift_beginAccess();
    v13 = outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(v3 + v12, v9, &lazy cache variable for type metadata for ListCoreBatchUpdates<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ListCoreBatchUpdates);
    LOBYTE(v12) = specialized ListCoreBatchUpdates.isEmpty.getter(v13);
    updated = outlined destroy of ShadowListUpdateRecorder<TableDataSourceAdaptor>(v9, &lazy cache variable for type metadata for ListCoreBatchUpdates<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ListCoreBatchUpdates);
    if (v12)
    {
      specialized UICollectionViewListCoordinatorBase.updateEditingState(_:)(a1);
      v15 = v3 + *((*v11 & *v3) + 0xF0);
      if (v15[9] != 1 || !(*v15 ^ 1 | v15[8]))
      {
        v16 = specialized UIView.firstAncestorWhere(_:)(a1);
        if (v16)
        {
          ObjectType = swift_getObjectType();
          v18 = swift_conformsToProtocol2();
          if (v18)
          {
            (*(v18 + 8))(ObjectType, v18);
          }
        }
      }

      specialized UICollectionViewListCoordinatorBase.updateListContents(_:)(a1);
    }

    else
    {
      MEMORY[0x1EEE9AC00](updated);
      *(&v19 - 4) = v3;
      *(&v19 - 3) = a1;
      *(&v19 - 16) = a2 & 1;
      static Update.ensure<A>(_:)();
    }
  }

  else
  {
    *(v3 + *((*MEMORY[0x1E69E7D40] & *v3) + 0xD8)) = 0;
  }
}

uint64_t specialized UICollectionViewListCoordinatorBase.disableFocusEventsForDeletedCells(collectionView:)(void *a1)
{
  v69 = type metadata accessor for IndexPath();
  v3 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v5 = v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v60 = v59 - v7;
  v67 = type metadata accessor for IndexSet.Index();
  v8 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v66 = v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for IndexSet();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IndexingIterator<IndexSet>(0);
  v15 = v14 - 8;
  MEMORY[0x1EEE9AC00](v14);
  v17 = v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0xB8);
  swift_beginAccess();
  v19 = *(v11 + 16);
  v59[1] = v18;
  v19(v13, v18, v10);
  v20 = MEMORY[0x1E6969B50];
  lazy protocol witness table accessor for type DefaultIndices<CountingIndexCollection<ShadowSectionCollection<TableDataSourceAdaptor>>> and conformance DefaultIndices<A>(&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, MEMORY[0x1E6969B50], MEMORY[0x1E6969B78]);
  dispatch thunk of Sequence.makeIterator()();
  v65 = *(v15 + 44);
  v21 = lazy protocol witness table accessor for type DefaultIndices<CountingIndexCollection<ShadowSectionCollection<TableDataSourceAdaptor>>> and conformance DefaultIndices<A>(&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, v20, MEMORY[0x1E6969B88]);
  v64 = (v8 + 8);
  v70 = MEMORY[0x1E69E7CC0];
  v68 = a1;
  v61 = v10;
  v62 = v21;
  v63 = v17;
  while (1)
  {
    v23 = v66;
    dispatch thunk of Collection.endIndex.getter();
    lazy protocol witness table accessor for type DefaultIndices<CountingIndexCollection<ShadowSectionCollection<TableDataSourceAdaptor>>> and conformance DefaultIndices<A>(&lazy protocol witness table cache variable for type IndexSet.Index and conformance IndexSet.Index, MEMORY[0x1E6969B18], MEMORY[0x1E6969B28]);
    v24 = v67;
    v25 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*v64)(v23, v24);
    if (v25)
    {
      break;
    }

    v26 = dispatch thunk of Collection.subscript.read();
    v28 = *v27;
    v26(v72, 0);
    dispatch thunk of Collection.formIndex(after:)();
    result = [v68 numberOfItemsInSection_];
    if (result < 0)
    {
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
      return result;
    }

    v29 = result;
    if (result)
    {
      v72[0] = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, result, 0);
      v30 = 0;
      v31 = v72[0];
      v32 = v69;
      do
      {
        MEMORY[0x18D0006A0](v30, v28);
        v72[0] = v31;
        v34 = *(v31 + 16);
        v33 = *(v31 + 24);
        if (v34 >= v33 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1);
          v31 = v72[0];
        }

        ++v30;
        *(v31 + 16) = v34 + 1;
        (*(v3 + 32))(v31 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v34, v5, v32);
      }

      while (v29 != v30);
    }

    else
    {
      v31 = MEMORY[0x1E69E7CC0];
    }

    v35 = *(v31 + 16);
    result = v70;
    v36 = v70[2];
    v37 = v36 + v35;
    if (__OFADD__(v36, v35))
    {
      goto LABEL_39;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v38 = v70;
    if (!result || v37 > v70[3] >> 1)
    {
      if (v36 <= v37)
      {
        v39 = v36 + v35;
      }

      else
      {
        v39 = v36;
      }

      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v39, 1, v70);
      v38 = result;
    }

    v17 = v63;
    v40 = *(v31 + 16);
    v70 = v38;
    if (v40)
    {
      if ((v38[3] >> 1) - v38[2] < v35)
      {
        goto LABEL_41;
      }

      swift_arrayInitWithCopy();

      if (v35)
      {
        v41 = v70[2];
        v42 = __OFADD__(v41, v35);
        v43 = v41 + v35;
        if (v42)
        {
          goto LABEL_42;
        }

        v70[2] = v43;
      }
    }

    else
    {

      if (v35)
      {
        goto LABEL_40;
      }
    }
  }

  outlined destroy of BridgedListState(v17, type metadata accessor for IndexingIterator<IndexSet>);
  _s7SwiftUI33AccessibilityViewModifierAccessor33_71F62EDC1DAE3BBC7A74521E45BA5A66LLCyAA0c10AttachmentE0VGMaTm_0(0, &lazy cache variable for type metadata for ListCoreBatchUpdates<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ListCoreBatchUpdates);
  v72[0] = v70;

  specialized Array.append<A>(contentsOf:)(v44);
  v45 = *(v72[0] + 16);
  if (v45)
  {
    v48 = *(v3 + 16);
    v46 = v3 + 16;
    v47 = v48;
    v49 = *(v46 + 64);
    v65 = v72[0];
    v50 = v72[0] + ((v49 + 32) & ~v49);
    v70 = (v46 - 8);
    v67 = *(v46 + 56);
    v51 = v60;
    v53 = v68;
    v52 = v69;
    v48(v60, v50, v69);
    while (1)
    {
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      (*v70)(v51, v52);
      v55 = [v53 cellForItemAtIndexPath_];

      if (v55)
      {
        type metadata accessor for TableCollectionViewCell(0);
        v56 = swift_dynamicCastClass();
        if (v56 && (v57 = *(v56 + direct field offset for ListCollectionViewCellBase.host)) != 0)
        {
          v66 = v57;
          UIHostingViewBase.viewGraph.getter();

          GraphHost.environment.getter();

          if (v72[1])
          {
            _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v2VGMaTm_2(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<FocusBridgeKey>, &type metadata for FocusBridgeKey, &protocol witness table for FocusBridgeKey, MEMORY[0x1E697FE38]);
            lazy protocol witness table accessor for type EnvironmentPropertyKey<FocusBridgeKey> and conformance EnvironmentPropertyKey<A>();

            v53 = v68;
            PropertyList.Tracker.value<A>(_:for:)();
          }

          else
          {
            _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v2VGMaTm_2(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<FocusBridgeKey>, &type metadata for FocusBridgeKey, &protocol witness table for FocusBridgeKey, MEMORY[0x1E697FE38]);
            lazy protocol witness table accessor for type EnvironmentPropertyKey<FocusBridgeKey> and conformance EnvironmentPropertyKey<A>();
            PropertyList.subscript.getter();
          }

          Strong = swift_weakLoadStrong();

          outlined destroy of Binding<AnySelectionManager>?(&v71, &lazy cache variable for type metadata for WeakBox<FocusBridge>, type metadata accessor for FocusBridge, MEMORY[0x1E6981A78], _s7SwiftUI16BridgedListStateV12ScrollTargetVSgMaTm_0);
          v51 = v60;
          if (Strong)
          {
            *(Strong + 177) = 1;
          }
        }

        else
        {
        }
      }

      v50 += v67;
      if (!--v45)
      {
        break;
      }

      v47(v51, v50, v52);
    }
  }
}

double specialized UICollectionViewListCoordinatorBase.subviewsSizingOptions.didset(uint64_t *a1)
{
  v3 = (v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x100));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  v10 = v3[6];
  v12 = *a1;
  v11 = a1[1];
  v14 = a1[2];
  v13 = a1[3];
  v16 = a1[4];
  v15 = a1[5];
  v17 = a1[6];
  v38 = v16;
  v39 = v15;
  v37 = v13;
  if (v14 >> 1 == 4294967293)
  {
    v31 = a1[1];
    v33 = v3[4];
    v35 = v3[1];
    v18 = v3[6];
    outlined copy of ResolvedSubviewsSizingOptions?(v5, v4, v6, v7, v8, v9, v10);
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) == 0x1FFFFFFFALL)
    {
      outlined init with copy of Binding<AnySelectionManager>(a1, &v48, &lazy cache variable for type metadata for ResolvedSubviewsSizingOptions?, &type metadata for ResolvedSubviewsSizingOptions, MEMORY[0x1E69E6720]);
      return outlined consume of ResolvedSubviewsSizingOptions?(v12, v31, v14, v37, v38, v39, v17);
    }

    outlined init with copy of Binding<AnySelectionManager>(a1, &v48, &lazy cache variable for type metadata for ResolvedSubviewsSizingOptions?, &type metadata for ResolvedSubviewsSizingOptions, MEMORY[0x1E69E6720]);
    v27 = v31;
    v23 = v38;
    v21 = v39;
    v22 = v12;
    v30 = v18;
    v26 = v33;
    v25 = v35;
    v24 = v37;
    goto LABEL_7;
  }

  v48 = *a1;
  v49 = v11;
  v50 = v14;
  v51 = v13;
  v52 = v16;
  v53 = v15;
  v54 = v17;
  if ((v6 & 0xFFFFFFFFFFFFFFFELL) == 0x1FFFFFFFALL)
  {
    v34 = v8;
    v36 = v4;
    v30 = v10;
    outlined copy of ResolvedSubviewsSizingOptions?(v5, v4, v6, v7, v8, v9, v10);
    outlined init with copy of Binding<AnySelectionManager>(a1, &v41, &lazy cache variable for type metadata for ResolvedSubviewsSizingOptions?, &type metadata for ResolvedSubviewsSizingOptions, MEMORY[0x1E69E6720]);
    v32 = v9;
    v20 = v11;
    v21 = v39;
    outlined copy of ResolvedSubviewsSizingOptions?(v12, v11, v14, v37, v38, v39, v17);
    outlined consume of ResolvedSubviewsSizingOptions(v12, v11, v14, v37, v38, v39, v17);
    v22 = v12;
    v23 = v38;
    v24 = v37;
    v26 = v34;
    v25 = v36;
    v27 = v20;
    v9 = v32;
LABEL_7:
    outlined consume of ResolvedSubviewsSizingOptions?(v22, v27, v14, v24, v23, v21, v17);
    outlined consume of ResolvedSubviewsSizingOptions?(v5, v25, v6, v7, v26, v9, v30);
    return specialized UICollectionViewListCoordinatorBase.onSubviewsSizingOptionsSet()();
  }

  v41 = v5;
  v42 = v4;
  v43 = v6;
  v44 = v7;
  v45 = v8;
  v46 = v9;
  v47 = v10;
  outlined copy of ResolvedSubviewsSizingOptions?(v5, v4, v6, v7, v8, v9, v10);
  outlined init with copy of Binding<AnySelectionManager>(a1, v40, &lazy cache variable for type metadata for ResolvedSubviewsSizingOptions?, &type metadata for ResolvedSubviewsSizingOptions, MEMORY[0x1E69E6720]);
  outlined copy of ResolvedSubviewsSizingOptions?(v12, v11, v14, v37, v38, v39, v17);
  v28 = v11;
  v29 = specialized static ResolvedSubviewsSizingOptions.== infix(_:_:)(&v48, &v41);
  outlined consume of ResolvedSubviewsSizingOptions(v41, v42, v43, v44, v45, v46, v47);
  outlined consume of ResolvedSubviewsSizingOptions(v48, v49, v50, v51, v52, v53, v54);
  result = outlined consume of ResolvedSubviewsSizingOptions?(v12, v28, v14, v37, v38, v39, v17);
  if (!v29)
  {
    return specialized UICollectionViewListCoordinatorBase.onSubviewsSizingOptionsSet()();
  }

  return result;
}

void specialized UICollectionViewListCoordinatorBase.subviewUniformHeight.didset(uint64_t a1, char a2)
{
  _s7SwiftUI16BridgedListStateV12ScrollTargetVSgMaTm_0(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v35 - v6;
  v8 = MEMORY[0x1E69E7D40];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v36 = Strong;
  type metadata accessor for UpdateCoalescingCollectionView(0);
  v10 = swift_dynamicCastClass();
  if (!v10)
  {
    v12 = v36;
LABEL_18:

    return;
  }

  v11 = v10;
  v12 = v36;
  v13 = (v2 + *((*v8 & *v2) + 0x108));
  v14 = *(v13 + 8);
  if (a2)
  {
    if (v13[1])
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (*v13 != *&a1)
    {
      v14 = 1;
    }

    if ((v14 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  v37 = MEMORY[0x1E69E7CC0];
  v15 = v36;
  v16 = [v11 visibleCells];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UICollectionViewCell, 0x1E69DC7F8);
  v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v18 = v15;
  v19 = v2;
  specialized Sequence.forEach(_:)(v17, v11, v19, &v37);

  v20 = [objc_allocWithZone(MEMORY[0x1E69DC860]) init];
  type metadata accessor for IndexPath();
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v20 invalidateItemsAtIndexPaths_];

  v22 = [v11 collectionViewLayout];
  [v22 invalidateLayoutWithContext_];

  v23 = v19 + *((*v8 & *v19) + 0xF0);
  if (v23[9] != 1 || !(*v23 ^ 1 | v23[8]))
  {
    v24 = specialized UIView.firstAncestorWhere(_:)(v11);
    if (v24)
    {
      ObjectType = swift_getObjectType();
      v26 = swift_conformsToProtocol2();
      if (v26)
      {
        (*(v26 + 8))(ObjectType, v26);
      }
    }
  }

  static Log.listMisc.getter();
  v27 = type metadata accessor for Logger();
  v28 = *(v27 - 8);
  if ((*(v28 + 48))(v7, 1, v27) == 1)
  {

    outlined destroy of Binding<AnySelectionManager>?(v7, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720], _s7SwiftUI16BridgedListStateV12ScrollTargetVSgMaTm_0);
  }

  else
  {
    v29 = v19;
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = v32;
      *v32 = 134217984;
      v34 = *v13;
      if (*(v13 + 8))
      {
        v34 = -1.0;
      }

      *(v32 + 4) = v34;
      _os_log_impl(&dword_18BD4A000, v30, v31, "subviewUniformHeight = %f", v32, 0xCu);
      MEMORY[0x18D0110E0](v33, -1, -1);
    }

    (*(v28 + 8))(v7, v27);
  }
}

uint64_t specialized closure #1 in UICollectionViewListCoordinatorBase.pendingSelection.didset(void *a1)
{
  v2 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x118);
  swift_beginAccess();
  outlined init with copy of Binding<AnySelectionManager>(a1 + v2, &v10, &lazy cache variable for type metadata for AnySelectionManager?, &type metadata for AnySelectionManager, MEMORY[0x1E69E6720]);
  if (!*(&v11 + 1))
  {
    return _s7SwiftUI7BindingVyAA27AnyTableColumnCustomizationVGWOhTm_0(&v10, &lazy cache variable for type metadata for AnySelectionManager?, &type metadata for AnySelectionManager, MEMORY[0x1E69E6720]);
  }

  v13[0] = v10;
  v13[1] = v11;
  v14 = v12;
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  v3 = MEMORY[0x1E69E6720];
  outlined init with copy of Binding<AnySelectionManager>(a1 + v2, v8, &lazy cache variable for type metadata for AnySelectionManager?, &type metadata for AnySelectionManager, MEMORY[0x1E69E6720]);
  swift_beginAccess();
  outlined assign with copy of AnySelectionManager?(&v10, a1 + v2, &lazy cache variable for type metadata for AnySelectionManager?, &type metadata for AnySelectionManager, v3, type metadata accessor for MutableBox<UInt32>);
  swift_endAccess();
  if (!v9)
  {
    *(swift_allocObject() + 16) = a1;
    v4 = a1;
    static UIHostingViewBase.UpdateCycle.addPreCommitObserverOrAsyncMain(_:)();
  }

  v5 = MEMORY[0x1E69E6720];
  _s7SwiftUI7BindingVyAA27AnyTableColumnCustomizationVGWOhTm_0(&v10, &lazy cache variable for type metadata for AnySelectionManager?, &type metadata for AnySelectionManager, MEMORY[0x1E69E6720]);
  v6 = _s7SwiftUI7BindingVyAA27AnyTableColumnCustomizationVGWOhTm_0(v8, &lazy cache variable for type metadata for AnySelectionManager?, &type metadata for AnySelectionManager, v5);
  v8[0] = 17;
  MEMORY[0x1EEE9AC00](v6);
  type metadata accessor for MutableBox<UInt32>(0, &lazy cache variable for type metadata for ()?, MEMORY[0x1E69E7CA8] + 8, v5);
  static Update.dispatchImmediately<A>(reason:_:)();
  return outlined destroy of AnySelectionManager(v13);
}

void specialized UICollectionViewListCoordinatorBase.currentSelection.getter(uint64_t a1@<X8>)
{
  v4 = static CoreTesting.isRunning.getter();
  v5 = MEMORY[0x1E69E7D40];
  if (v4)
  {
    v6 = v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x110);
    swift_beginAccess();
    if (!*(v6 + 8))
    {
      *(a1 + 32) = 0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      return;
    }

    v7 = MEMORY[0x1E6981948];
    outlined init with copy of Binding<AnySelectionManager>(v6, v15, &lazy cache variable for type metadata for Binding<AnySelectionManager>, &type metadata for AnySelectionManager, MEMORY[0x1E6981948]);
    type metadata accessor for MutableBox<UInt32>(0, &lazy cache variable for type metadata for Binding<AnySelectionManager>, &type metadata for AnySelectionManager, v7);
    MEMORY[0x18D00ACC0]();
    v8 = v15;
    v9 = &lazy cache variable for type metadata for Binding<AnySelectionManager>;
    v10 = v7;
    goto LABEL_12;
  }

  v11 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x118);
  swift_beginAccess();
  outlined init with copy of Binding<AnySelectionManager>(v2 + v11, &v16, &lazy cache variable for type metadata for AnySelectionManager?, &type metadata for AnySelectionManager, MEMORY[0x1E69E6720]);
  if (*(&v17 + 1))
  {
    v12 = v17;
    *a1 = v16;
    *(a1 + 16) = v12;
    *(a1 + 32) = v18;
    return;
  }

  v13 = v2 + *((*v5 & *v2) + 0x110);
  swift_beginAccess();
  if (!*(v13 + 8))
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    if (!*(&v17 + 1))
    {
      return;
    }

    goto LABEL_11;
  }

  v14 = MEMORY[0x1E6981948];
  outlined init with copy of Binding<AnySelectionManager>(v13, v15, &lazy cache variable for type metadata for Binding<AnySelectionManager>, &type metadata for AnySelectionManager, MEMORY[0x1E6981948]);
  type metadata accessor for MutableBox<UInt32>(0, &lazy cache variable for type metadata for Binding<AnySelectionManager>, &type metadata for AnySelectionManager, v14);
  MEMORY[0x18D00ACC0]();
  _s7SwiftUI7BindingVyAA27AnyTableColumnCustomizationVGWOhTm_0(v15, &lazy cache variable for type metadata for Binding<AnySelectionManager>, &type metadata for AnySelectionManager, v14);
  if (*(&v17 + 1))
  {
LABEL_11:
    v9 = &lazy cache variable for type metadata for AnySelectionManager?;
    v10 = MEMORY[0x1E69E6720];
    v8 = &v16;
LABEL_12:
    _s7SwiftUI7BindingVyAA27AnyTableColumnCustomizationVGWOhTm_0(v8, v9, &type metadata for AnySelectionManager, v10);
  }
}

void specialized closure #2 in UICollectionViewListCoordinatorBase.update(_:to:transaction:performDiff:)(char a1, void *a2, void *a3, char a4)
{
  if (a1)
  {
    specialized UICollectionViewListCoordinatorBase.performUpdates(collectionView:shouldSetEditing:)(a3, a4 & 1);
  }

  else
  {
    v7 = objc_opt_self();
    v8 = swift_allocObject();
    *(v8 + 16) = a2;
    *(v8 + 24) = a3;
    *(v8 + 32) = a4 & 1;
    v9 = swift_allocObject();
    *(v9 + 16) = partial apply for specialized closure #1 in closure #2 in UICollectionViewListCoordinatorBase.update(_:to:transaction:performDiff:);
    *(v9 + 24) = v8;
    v14[4] = partial apply for thunk for @callee_guaranteed () -> ();
    v14[5] = v9;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 1107296256;
    v14[2] = thunk for @escaping @callee_guaranteed () -> ();
    v14[3] = &block_descriptor_29_2;
    v10 = _Block_copy(v14);
    v11 = a2;
    v12 = a3;

    [v7 performWithoutAnimation_];
    _Block_release(v10);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

id specialized UICollectionViewListCoordinatorBase.updateEditingState(_:)(void *a1)
{
  v2 = v1;
  _s7SwiftUI16BridgedListStateV12ScrollTargetVSgMaTm_0(0, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v59 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v58 - v7;
  v9 = type metadata accessor for IndexPath();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 indexPathsForSelectedItems];
  if (v14)
  {
    v15 = v14;
    v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v16 = 0;
  }

  v17 = [a1 isEditing];
  v18 = v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x128);
  v19 = *(v18 + 1);
  if (!v19)
  {
    [a1 setEditing_];
    if (v17)
    {

      goto LABEL_10;
    }
  }

  v20 = *v18;
  v21 = v18[16];
  *&v60 = v20;
  *(&v60 + 1) = v19;
  LOBYTE(v61) = v21;
  type metadata accessor for MutableBox<UInt32>(0, &lazy cache variable for type metadata for Binding<EditMode>, &type metadata for EditMode, MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](&v65);
  v22 = v65;
  result = [a1 setEditing_];
  if ((v17 & 1) == 0)
  {
    if (v22)
    {
      if (!v16)
      {
        return result;
      }

      v29 = *(v16 + 16);

      if (v29 != 1)
      {
        return result;
      }

      specialized UICollectionViewListCoordinatorBase.currentSelection.getter(&v60);
      if (*(&v61 + 1))
      {
        v65 = v60;
        v66 = v61;
        v30 = v62;
        v67 = v62;
        v31 = *(&v61 + 1);
        __swift_mutable_project_boxed_opaque_existential_1(&v65, *(&v61 + 1));
        (*(v30 + 72))(v31, v30);
        if ((static CoreTesting.isRunning.getter() & 1) == 0)
        {
          outlined init with copy of AnySelectionManager(&v65, &v60);
          v54 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x118);
          swift_beginAccess();
          v55 = MEMORY[0x1E69E6720];
          outlined init with copy of Binding<AnySelectionManager>(v2 + v54, v63, &lazy cache variable for type metadata for AnySelectionManager?, &type metadata for AnySelectionManager, MEMORY[0x1E69E6720]);
          swift_beginAccess();
          outlined assign with copy of AnySelectionManager?(&v60, v2 + v54, &lazy cache variable for type metadata for AnySelectionManager?, &type metadata for AnySelectionManager, v55, type metadata accessor for MutableBox<UInt32>);
          swift_endAccess();
          if (!v64)
          {
            *(swift_allocObject() + 16) = v2;
            v56 = v2;
            static UIHostingViewBase.UpdateCycle.addPreCommitObserverOrAsyncMain(_:)();
          }

          v57 = MEMORY[0x1E69E6720];
          _s7SwiftUI7BindingVyAA27AnyTableColumnCustomizationVGWOhTm_0(&v60, &lazy cache variable for type metadata for AnySelectionManager?, &type metadata for AnySelectionManager, MEMORY[0x1E69E6720]);
          outlined destroy of AnySelectionManager(&v65);
          v53 = v63;
          v33 = &lazy cache variable for type metadata for AnySelectionManager?;
          v52 = v57;
          return _s7SwiftUI7BindingVyAA27AnyTableColumnCustomizationVGWOhTm_0(v53, v33, &type metadata for AnySelectionManager, v52);
        }

        v32 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x110);
        swift_beginAccess();
        result = outlined init with copy of Binding<AnySelectionManager>?(v2 + v32, &v60, &lazy cache variable for type metadata for Binding<AnySelectionManager>?, &lazy cache variable for type metadata for Binding<AnySelectionManager>, &type metadata for AnySelectionManager, type metadata accessor for Binding<EditMode>?);
        if (!*(&v60 + 1))
        {
LABEL_43:
          __break(1u);
          return result;
        }

        dispatch thunk of AnyLocation.set(_:transaction:)();
        outlined destroy of AnySelectionManager(&v65);
        v33 = &lazy cache variable for type metadata for Binding<AnySelectionManager>;
        v34 = MEMORY[0x1E6981948];
      }

      else
      {
        v33 = &lazy cache variable for type metadata for AnySelectionManager?;
        v34 = MEMORY[0x1E69E6720];
      }

      v52 = v34;
      v53 = &v60;
      return _s7SwiftUI7BindingVyAA27AnyTableColumnCustomizationVGWOhTm_0(v53, v33, &type metadata for AnySelectionManager, v52);
    }
  }

  if (v22)
  {
    return result;
  }

LABEL_10:
  specialized UICollectionViewListCoordinatorBase.currentSelection.getter(&v60);
  if (!*(&v61 + 1))
  {
    v27 = &lazy cache variable for type metadata for AnySelectionManager?;
    v28 = MEMORY[0x1E69E6720];
    goto LABEL_23;
  }

  v65 = v60;
  v66 = v61;
  v24 = v62;
  v67 = v62;
  v25 = *(&v61 + 1);
  __swift_mutable_project_boxed_opaque_existential_1(&v65, *(&v61 + 1));
  (*(v24 + 72))(v25, v24);
  if ((static CoreTesting.isRunning.getter() & 1) == 0)
  {
    outlined init with copy of AnySelectionManager(&v65, &v60);
    v37 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x118);
    swift_beginAccess();
    v38 = MEMORY[0x1E69E6720];
    outlined init with copy of Binding<AnySelectionManager>(v2 + v37, v63, &lazy cache variable for type metadata for AnySelectionManager?, &type metadata for AnySelectionManager, MEMORY[0x1E69E6720]);
    swift_beginAccess();
    outlined assign with copy of AnySelectionManager?(&v60, v2 + v37, &lazy cache variable for type metadata for AnySelectionManager?, &type metadata for AnySelectionManager, v38, type metadata accessor for MutableBox<UInt32>);
    swift_endAccess();
    if (!v64)
    {
      *(swift_allocObject() + 16) = v2;
      v39 = v2;
      static UIHostingViewBase.UpdateCycle.addPreCommitObserverOrAsyncMain(_:)();
    }

    v40 = MEMORY[0x1E69E6720];
    _s7SwiftUI7BindingVyAA27AnyTableColumnCustomizationVGWOhTm_0(&v60, &lazy cache variable for type metadata for AnySelectionManager?, &type metadata for AnySelectionManager, MEMORY[0x1E69E6720]);
    outlined destroy of AnySelectionManager(&v65);
    v36 = v63;
    v27 = &lazy cache variable for type metadata for AnySelectionManager?;
    v35 = v40;
    goto LABEL_27;
  }

  v26 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x110);
  swift_beginAccess();
  result = outlined init with copy of Binding<AnySelectionManager>?(v2 + v26, &v60, &lazy cache variable for type metadata for Binding<AnySelectionManager>?, &lazy cache variable for type metadata for Binding<AnySelectionManager>, &type metadata for AnySelectionManager, type metadata accessor for Binding<EditMode>?);
  if (!*(&v60 + 1))
  {
    __break(1u);
    goto LABEL_43;
  }

  dispatch thunk of AnyLocation.set(_:transaction:)();
  outlined destroy of AnySelectionManager(&v65);
  v27 = &lazy cache variable for type metadata for Binding<AnySelectionManager>;
  v28 = MEMORY[0x1E6981948];
LABEL_23:
  v35 = v28;
  v36 = &v60;
LABEL_27:
  _s7SwiftUI7BindingVyAA27AnyTableColumnCustomizationVGWOhTm_0(v36, v27, &type metadata for AnySelectionManager, v35);
  v41 = *((*MEMORY[0x1E69E7D40] & *v2) + 0xE0);
  swift_beginAccess();
  outlined init with copy of Binding<AnySelectionManager>?(v2 + v41, v8, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720], _s7SwiftUI16BridgedListStateV12ScrollTargetVSgMaTm_0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Binding<AnySelectionManager>?(v8, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720], _s7SwiftUI16BridgedListStateV12ScrollTargetVSgMaTm_0);
  }

  (*(v10 + 32))(v13, v8, v9);
  type metadata accessor for UpdateCoalescingCollectionView(0);
  v42 = swift_dynamicCastClass();
  if (v42)
  {
    v43 = v42;
    v44 = a1;
    specialized UICollectionViewListCoordinatorBase.selectionValue(forRowAt:)(&v65);
    if (*(&v66 + 1))
    {
      v60 = v65;
      v61 = v66;
      v62 = v67;
      v46 = MEMORY[0x1EEE9AC00](v45);
      *(&v58 - 2) = &v60;
      specialized UICollectionViewListCoordinatorBase.enqueueSelectionUpdate(_:)(partial apply for specialized closure #2 in UICollectionViewListCoordinatorBase.updateEditingState(_:), v46);
      outlined destroy of AnyHashable(&v60);
    }

    else
    {
      _s7SwiftUI7BindingVyAA27AnyTableColumnCustomizationVGWOhTm_0(&v65, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8], MEMORY[0x1E69E6720]);
    }

    v47 = v59;
    (*(v10 + 16))(v59, v13, v9);
    (*(v10 + 56))(v47, 0, 1, v9);
    v48 = OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_pendingDeselectedItem;
    swift_beginAccess();
    outlined assign with take of Binding<AnySelectionManager>?(v47, v43 + v48, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720], _s7SwiftUI16BridgedListStateV12ScrollTargetVSgMaTm_0);
    swift_endAccess();
    v49 = swift_allocObject();
    *(v49 + 16) = v43;
    *(v49 + 24) = v2;
    v50 = v2;
    v51 = v44;
    onNextMainRunLoop(do:)();
  }

  return (*(v10 + 8))(v13, v9);
}

void specialized closure #1 in UICollectionViewListCoordinatorBase.performUpdates(collectionView:shouldSetEditing:)(void *a1, uint64_t a2, void *a3, double a4)
{
  v131 = a3;
  v127 = a2;
  v5 = type metadata accessor for IndexSet.Index();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v111 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = type metadata accessor for IndexPath();
  v125 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132);
  v114 = &v111 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v129 = &v111 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v128 = &v111 - v13;
  _s7SwiftUI16BridgedListStateV12ScrollTargetVSgMaTm_0(0, &lazy cache variable for type metadata for (source: IndexPath, destination: IndexPath)?, type metadata accessor for (source: IndexPath, destination: IndexPath), MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v130 = &v111 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v111 - v17;
  v19 = type metadata accessor for IndexSet();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v111 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v122 = &v111 - v24;
  v25 = MEMORY[0x1E69E7D40];
  v26 = a1 + *((*MEMORY[0x1E69E7D40] & *a1) + 0x88);
  swift_beginAccess();
  if (*(*(v26 + 22) + 16))
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }

  else
  {
    v115 = v22;
    v123 = v19;
    v111 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = *(v26 + 23);
    v112 = v5;
    v113 = v8;
    if (isUniquelyReferenced_nonNull_native)
    {
      specialized Array.replaceSubrange<A>(_:with:)(0, *(v28 + 16));
    }

    else
    {
      *(v26 + 23) = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI10ListUpdateOyS2iG_Tt1g5(0, *(v28 + 24) >> 1);
    }

    v29 = v20;
    v30 = v127;
    outlined assign with copy of TableDataSourceAdaptor(v127, v26);
    swift_endAccess();
    specialized UICollectionViewListCoordinatorBase.disableFocusEventsForDeletedCells(collectionView:)(v131);
    v31 = specialized UICollectionViewListCoordinatorBase.dragAndDropController.getter();
    outlined init with copy of TableDataSourceAdaptor(v30, v134);
    v135 = MEMORY[0x1E69E7CC0];
    v136 = MEMORY[0x1E69E7CC0];
    v32 = *((*v25 & *v31) + 0x60);
    swift_beginAccess();
    outlined assign with take of ShadowListDataSource<TableDataSourceAdaptor>(v134, v31 + v32);
    swift_endAccess();

    v33 = a1 + *((*v25 & *a1) + 0xB8);
    swift_beginAccess();
    v34 = v29 + 16;
    v35 = *(v29 + 16);
    v36 = v122;
    v37 = v123;
    v35(v122, v33, v123);
    v38 = IndexSet.isEmpty.getter();
    v40 = *(v29 + 8);
    v39 = v29 + 8;
    v124 = v40;
    v40(v36, v37);
    if ((v38 & 1) == 0)
    {
      v35(v36, v33, v37);
      IndexSet._bridgeToObjectiveC()(v41);
      v43 = v42;
      v124(v36, v37);
      [v131 deleteSections_];
    }

    v118 = a1;
    _s7SwiftUI33AccessibilityViewModifierAccessor33_71F62EDC1DAE3BBC7A74521E45BA5A66LLCyAA0c10AttachmentE0VGMaTm_0(0, &lazy cache variable for type metadata for ListCoreBatchUpdates<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ListCoreBatchUpdates);
    v45 = v44;
    v35(v36, &v33[v44[9]], v37);
    v46 = IndexSet.isEmpty.getter();
    v124(v36, v37);
    v116 = v39;
    v120 = v34;
    v119 = v35;
    if (v46)
    {
      v47 = v38 ^ 1;
      v48 = v131;
    }

    else
    {
      v35(v36, &v33[v45[9]], v37);
      IndexSet._bridgeToObjectiveC()(v49);
      v51 = v50;
      v124(v36, v37);
      v48 = v131;
      [v131 insertSections_];

      v47 = 1;
    }

    v52 = *&v33[v45[10]];
    v53 = *(v52 + 16);
    v54 = v33;
    if (v53)
    {
      v55 = v45;

      v56 = (v52 + 40);
      do
      {
        [v48 moveSection:*(v56 - 1) toSection:*v56];
        v56 += 2;
        --v53;
      }

      while (v53);

      v47 = 1;
      v45 = v55;
    }

    if (*(*&v54[v45[11]] + 16))
    {

      isa = Array._bridgeToObjectiveC()().super.isa;

      [v131 deleteItemsAtIndexPaths_];

      v47 = 1;
    }

    v58 = v131;
    if (*(*&v54[v45[12]] + 16))
    {

      v59 = Array._bridgeToObjectiveC()().super.isa;

      [v58 insertItemsAtIndexPaths_];

      v47 = 1;
    }

    v117 = v45;
    v60 = v45[13];
    v121 = v54;
    v61 = *(*&v54[v60] + 16);
    v62 = (v125 + 32);
    v63 = (v125 + 8);
    v127 = *&v54[v60];

    v64 = 0;
    v126 = v63;
    while (1)
    {
      v65 = v130;
      if (v64 == v61)
      {
        type metadata accessor for (source: IndexPath, destination: IndexPath)(0);
        v67 = v66;
        (*(*(v66 - 8) + 56))(v65, 1, 1, v66);
        v64 = v61;
      }

      else
      {
        if ((v64 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_39:
          __break(1u);
          goto LABEL_40;
        }

        if (v64 >= *(v127 + 16))
        {
          goto LABEL_39;
        }

        v68 = v61;
        v69 = v62;
        v70 = v18;
        v71 = v47;
        v72 = v127;
        type metadata accessor for (source: IndexPath, destination: IndexPath)(0);
        v67 = v73;
        v74 = *(v73 - 8);
        v75 = v72 + ((*(v74 + 80) + 32) & ~*(v74 + 80));
        v47 = v71;
        v18 = v70;
        v62 = v69;
        v61 = v68;
        v63 = v126;
        _s7SwiftUI21TableColumnCollectionV5EntryVWOcTm_0(v75 + *(v74 + 72) * v64++, v65, type metadata accessor for (source: IndexPath, destination: IndexPath));
        (*(v74 + 56))(v65, 0, 1, v67);
      }

      outlined init with take of BridgedListState.ScrollTarget?(v65, v18, &lazy cache variable for type metadata for (source: IndexPath, destination: IndexPath)?, type metadata accessor for (source: IndexPath, destination: IndexPath));
      type metadata accessor for (source: IndexPath, destination: IndexPath)(0);
      if ((*(*(v67 - 8) + 48))(v18, 1, v67) == 1)
      {
        break;
      }

      v76 = *v62;
      v77 = v128;
      v78 = v132;
      (*v62)(v128, &v18[*(v67 + 48)], v132);
      v79 = v129;
      v76(v129, v18, v78);
      v80 = IndexPath._bridgeToObjectiveC()().super.isa;
      v81 = *v63;
      (*v63)(v79, v78);
      v82 = IndexPath._bridgeToObjectiveC()().super.isa;
      [v131 moveItemAtIndexPath:v80 toIndexPath:v82];

      v81(v77, v78);
      v47 = 1;
    }

    v83 = v123;
    v84 = v121;
    v85 = v119;
    if ((v47 & 1) == 0)
    {
      v86 = v122;
      v119(v122, &v121[v117[14]], v123);
      v87 = IndexSet.isEmpty.getter();
      v124(v86, v83);
      if ((v87 & 1) == 0)
      {
        v88 = &_OBJC_LABEL_PROTOCOL___RPTTestRunnerDelegate;
        v89 = [v131 collectionViewLayout];
        ObjCClassFromObject = swift_getObjCClassFromObject();

        [ObjCClassFromObject invalidationContextClass];
        swift_getObjCClassMetadata();
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UICollectionViewLayoutInvalidationContext, 0x1E69DC860);
        swift_dynamicCastMetatypeUnconditional();
        v91 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
        v92 = v115;
        v85(v115, &v84[v117[14]], v83);
        v93 = lazy protocol witness table accessor for type DefaultIndices<CountingIndexCollection<ShadowSectionCollection<TableDataSourceAdaptor>>> and conformance DefaultIndices<A>(&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, MEMORY[0x1E6969B50], MEMORY[0x1E6969B88]);
        v94 = dispatch thunk of Collection.count.getter();
        if (v94)
        {
          v95 = v94;
          v129 = v91;
          v133[0] = MEMORY[0x1E69E7CC0];
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v94 & ~(v94 >> 63), 0);
          v96 = v133[0];
          v97 = v113;
          dispatch thunk of Collection.startIndex.getter();
          if (v95 < 0)
          {
            goto LABEL_41;
          }

          v98 = v114;
          v130 = v93;
          do
          {
            v99 = dispatch thunk of Collection.subscript.read();
            v99(v134, 0);
            IndexPath.init(index:)();
            v133[0] = v96;
            v100 = v92;
            v102 = *(v96 + 16);
            v101 = *(v96 + 24);
            if (v102 >= v101 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v101 > 1), v102 + 1, 1);
              v96 = v133[0];
            }

            *(v96 + 16) = v102 + 1;
            (*(v125 + 32))(v96 + ((*(v125 + 80) + 32) & ~*(v125 + 80)) + *(v125 + 72) * v102, v98, v132);
            dispatch thunk of Collection.formIndex(after:)();
            --v95;
            v92 = v100;
          }

          while (v95);
          (*(v111 + 8))(v97, v112);
          v124(v100, v83);
          v88 = &_OBJC_LABEL_PROTOCOL___RPTTestRunnerDelegate;
          v91 = v129;
        }

        else
        {
          v124(v92, v83);
        }

        v103 = *MEMORY[0x1E69DDC08];
        v104 = Array._bridgeToObjectiveC()().super.isa;
        [v91 invalidateSupplementaryElementsOfKind:v103 atIndexPaths:v104];

        v105 = *MEMORY[0x1E69DDC00];
        v106 = Array._bridgeToObjectiveC()().super.isa;

        [v91 invalidateSupplementaryElementsOfKind:v105 atIndexPaths:v106];

        v107 = [v131 v88[236]];
        [v107 invalidateLayoutWithContext_];
      }
    }

    swift_beginAccess();
    specialized ListCoreBatchUpdates.resetAll()();
    swift_endAccess();
    v108 = v118;
    v109 = *MEMORY[0x1E69E7D40] & *v118;
    memset(v134, 0, 171);
    v110 = *(v109 + 208);
    swift_beginAccess();
    outlined assign with take of TableHeaderView?(v134, v108 + v110, &lazy cache variable for type metadata for TableDataSourceAdaptor?, &type metadata for TableDataSourceAdaptor);
    swift_endAccess();
  }
}

void specialized UICollectionViewListCoordinatorBase.updateListContents(_:)(char *a1)
{
  v2 = v1;
  v4 = type metadata accessor for IndexPath();
  v102 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v91 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v92 = &v91 - v11;
  v12 = MEMORY[0x1E69E7D40];
  swift_beginAccess();
  specialized ListCoreBatchUpdates.resetAll()();
  swift_endAccess();
  v13 = *v12 & *v1;
  memset(v126, 0, 171);
  v14 = *(v13 + 208);
  swift_beginAccess();
  outlined assign with take of TableHeaderView?(v126, v2 + v14, &lazy cache variable for type metadata for TableDataSourceAdaptor?, &type metadata for TableDataSourceAdaptor);
  swift_endAccess();
  v15 = *((*v12 & *v2) + 0xD8);
  v106 = v2;
  *(v2 + v15) = 0;
  v16 = [a1 preparedCells];
  if (!v16)
  {
    goto LABEL_77;
  }

  v17 = v16;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UICollectionViewCell, 0x1E69DC7F8);
  v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v18 >> 62)
  {
    goto LABEL_70;
  }

  v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
  v103 = a1;
  v105 = v4;
  v97 = v9;
  if (!v19)
  {
    goto LABEL_28;
  }

  if (v19 < 1)
  {
    __break(1u);
    goto LABEL_75;
  }

  v20 = *((*MEMORY[0x1E69E7D40] & *v106) + 0x88);
  v104 = v18 & 0xC000000000000001;
  v96 = v20;
  swift_beginAccess();
  v21 = 0;
  v94 = (v18 + 32);
  v95 = v18;
  v99 = (v102 + 8);
  v100 = v19;
  while (1)
  {
    v22 = v104 ? MEMORY[0x18D00E9C0](v21, v18) : *(v94 + v21);
    v23 = v22;
    v24 = [a1 indexPathForCell_];
    if (v24)
    {
      break;
    }

LABEL_8:
    if (++v21 == v19)
    {
      goto LABEL_28;
    }
  }

  v25 = v24;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

  type metadata accessor for TableCollectionViewCell(0);
  v26 = swift_dynamicCastClass();
  if (!v26)
  {

    (*v99)(v6, v4);
    v19 = v100;
    goto LABEL_8;
  }

  v98 = v26;
  v27 = v106;
  outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(v96 + v106, v128, &lazy cache variable for type metadata for ShadowListDataSource<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListDataSource);
  v101 = v27;
  v28 = v23;
  v29 = IndexPath.section.getter();
  v4 = v6;
  outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(v128, v117, &lazy cache variable for type metadata for ShadowListUpdateRecorder<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListUpdateRecorder);
  _s7SwiftUI23ShadowSectionCollectionVyACyxGAA0C18ListUpdateRecorderVyxGcfCAA22TableDataSourceAdaptorV_Tt1g5(v117, v126);
  v30 = v29 & ~(v29 >> 63);
  outlined destroy of ShadowListUpdateRecorder<TableDataSourceAdaptor>(v126, &lazy cache variable for type metadata for ShadowSectionCollection<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowSectionCollection);
  outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(v128, v117, &lazy cache variable for type metadata for ShadowListUpdateRecorder<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListUpdateRecorder);
  v31 = specialized ShadowListUpdateRecorder.initialIndex(_:)(v30);
  _s7SwiftUI19ShadowRowCollectionV_7sectionACyxGAA0C18ListUpdateRecorderVyxG_10SectionIDs_5IndexQZtcfCAA22TableDataSourceAdaptorV_Tt2g5(v117, v31, v126);
  v32 = IndexPath.row.getter();
  if ((v32 & 0x8000000000000000) == 0)
  {
    a1 = v127;
    v9 = v97;
    v18 = v101;
    if (v32)
    {
      if ((v127 ^ 0x7FFFFFFFFFFFFFFFLL) <= v32 - 1)
      {
        goto LABEL_69;
      }

      a1 = &v127[v32];
    }

LABEL_18:
    outlined destroy of ShadowListUpdateRecorder<TableDataSourceAdaptor>(v126, &lazy cache variable for type metadata for ShadowRowCollection<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowRowCollection);
    specialized ShadowListDataSource.contextForItem(index:)(v30, a1, v126);
    outlined init with copy of Binding<AnySelectionManager>?(v126, v117, &lazy cache variable for type metadata for _RowVisitationContext<ShadowListDataSource<TableDataSourceAdaptor>>?, type metadata accessor for _RowVisitationContext<ShadowListDataSource<TableDataSourceAdaptor>>, MEMORY[0x1E69E6720], _s7SwiftUI16BridgedListStateV12ScrollTargetVSgMaTm_0);
    if (v123)
    {
      v115 = v124;
      v116[0] = v125[0];
      *(v116 + 11) = *(v125 + 11);
      v111 = v120;
      v112 = v121;
      v113 = v122;
      v114 = v123;
      v108[1] = v118;
      v108[2] = v119[0];
      v109 = v119[1];
      v110 = v119[2];
      v107 = v117[0];
      v108[0] = v117[1];
      specialized closure #1 in UICollectionViewListCoordinatorBase.updateListContents(_:)(&v107, v18, v98);
      outlined destroy of BridgedListState(&v107, type metadata accessor for _RowVisitationContext<ShadowListDataSource<TableDataSourceAdaptor>>);
    }

    outlined destroy of Binding<AnySelectionManager>?(v126, &lazy cache variable for type metadata for _RowVisitationContext<ShadowListDataSource<TableDataSourceAdaptor>>?, type metadata accessor for _RowVisitationContext<ShadowListDataSource<TableDataSourceAdaptor>>, MEMORY[0x1E69E6720], _s7SwiftUI16BridgedListStateV12ScrollTargetVSgMaTm_0);

    a1 = v103;
    v19 = v100;
    outlined destroy of ShadowListUpdateRecorder<TableDataSourceAdaptor>(v128, &lazy cache variable for type metadata for ShadowListDataSource<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListDataSource);
    specialized UICollectionViewListCoordinatorBase.mirrorSelection(collectionView:indexPath:)(a1, v6);

    v4 = v105;
    (*v99)(v6, v105);
    v18 = v95;
    goto LABEL_8;
  }

  v33 = 0;
  v34 = v127;
  v9 = v97;
  v18 = v101;
  while (1)
  {
    a1 = v127;
    if (v34 != v127)
    {
      a1 = v34 - 1;
      if (__OFSUB__(v34, 1))
      {
        break;
      }
    }

    --v33;
    v34 = a1;
    if (v32 >= v33)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_28:

  v35 = &selRef_bundleIdentifier;
  v96 = *MEMORY[0x1E69DDC08];
  v36 = [a1 indexPathsForVisibleSupplementaryElementsOfKind_];
  v37 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v38 = v37;
  v6 = *(v37 + 16);
  if (v6)
  {
    v39 = *((*MEMORY[0x1E69E7D40] & *v106) + 0x88);
    v40 = *((*MEMORY[0x1E69E7D40] & *v106) + 0xA0);
    v41 = v102;
    v42 = (*(v102 + 80) + 32) & ~*(v102 + 80);
    v91 = v38;
    v43 = v38 + v42;
    v104 = v39;
    swift_beginAccess();
    v93 = v40;
    swift_beginAccess();
    v44 = *(v41 + 2);
    v41 = (v41 + 16);
    v99 = *(v41 + 7);
    v100 = v44;
    v18 = &type metadata for TableDataSourceAdaptor;
    v101 = v41;
    v98 = (v41 - 8);
    v44(v9, v43, v4);
    while (1)
    {
      outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(v106 + v104, v117, &lazy cache variable for type metadata for ShadowListDataSource<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListDataSource);
      v45 = IndexPath.section.getter();
      outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(v117, &v107, &lazy cache variable for type metadata for ShadowListUpdateRecorder<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListUpdateRecorder);
      _s7SwiftUI23ShadowSectionCollectionVyACyxGAA0C18ListUpdateRecorderVyxGcfCAA22TableDataSourceAdaptorV_Tt1g5(&v107, v126);
      outlined destroy of ShadowListUpdateRecorder<TableDataSourceAdaptor>(v126, &lazy cache variable for type metadata for ShadowSectionCollection<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowSectionCollection);
      v46 = specialized ShadowListUpdateRecorder.initialIndex(_:)(v45 & ~(v45 >> 63));
      if ((v46 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        v19 = __CocoaSet.count.getter();
        goto LABEL_4;
      }

      if (v46 >= *(*(&v118 + 1) + 16))
      {
        goto LABEL_68;
      }

      if (*(*(&v118 + 1) + 96 * v46 + 40) == 1)
      {
        outlined destroy of ShadowListUpdateRecorder<TableDataSourceAdaptor>(v117, &lazy cache variable for type metadata for ShadowListDataSource<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListDataSource);
      }

      else
      {
        if (v46 || (BYTE8(v124) & 1) != 0)
        {
          outlined destroy of ShadowListUpdateRecorder<TableDataSourceAdaptor>(v117, &lazy cache variable for type metadata for ShadowListDataSource<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListDataSource);
LABEL_32:
          (*v98)(v9, v4);
          goto LABEL_33;
        }

        v57 = BYTE9(v124);
        outlined destroy of ShadowListUpdateRecorder<TableDataSourceAdaptor>(v117, &lazy cache variable for type metadata for ShadowListDataSource<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListDataSource);
        if (v57 == 2)
        {
          goto LABEL_32;
        }
      }

      v47 = v96;
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v49 = [a1 supplementaryViewForElementKind:v47 atIndexPath:isa];

      if (!v49)
      {
        goto LABEL_32;
      }

      type metadata accessor for TableCollectionViewCell(0);
      v50 = swift_dynamicCastClass();
      if (v50)
      {
        v51 = v50;
        v95 = lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor;
        v94 = type metadata accessor for ShadowListDataSource;
        v52 = v106;
        outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(v106 + v104, v117, &lazy cache variable for type metadata for ShadowListDataSource<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListDataSource);
        v53 = *(v52 + v93);
        outlined copy of Transaction?(v53);
        v54 = IndexPath.section.getter();
        outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(v117, &v107, &lazy cache variable for type metadata for ShadowListUpdateRecorder<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListUpdateRecorder);
        _s7SwiftUI23ShadowSectionCollectionVyACyxGAA0C18ListUpdateRecorderVyxGcfCAA22TableDataSourceAdaptorV_Tt1g5(&v107, v126);
        v9 = v97;
        outlined destroy of ShadowListUpdateRecorder<TableDataSourceAdaptor>(v126, &lazy cache variable for type metadata for ShadowSectionCollection<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowSectionCollection);
        v55 = specialized ShadowListUpdateRecorder.initialIndex(_:)(v54 & ~(v54 >> 63));
        TableDataSourceAdaptor.configureHeader(_:transaction:forSectionAt:)(v51, v53, v55);

        v56 = v53;
        a1 = v103;
        outlined consume of ListItemTint?(v56);
        outlined destroy of ShadowListUpdateRecorder<TableDataSourceAdaptor>(v117, &lazy cache variable for type metadata for ShadowListDataSource<TableDataSourceAdaptor>, v95, &type metadata for TableDataSourceAdaptor, v94);
      }

      else
      {
      }

      v4 = v105;
      (*v98)(v9, v105);
LABEL_33:
      v43 += v99;
      if (!--v6)
      {

        v35 = &selRef_bundleIdentifier;
        goto LABEL_49;
      }

      (v100)(v9, v43, v4);
    }
  }

LABEL_49:
  v58 = v35[407];
  v98 = *MEMORY[0x1E69DDC00];
  v59 = [a1 v58];
  v60 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v61 = *(v60 + 16);
  if (v61)
  {
    v62 = *((*MEMORY[0x1E69E7D40] & *v106) + 0x88);
    v63 = v102;
    v64 = (*(v102 + 80) + 32) & ~*(v102 + 80);
    v97 = v60;
    v65 = v60 + v64;
    v104 = v62;
    swift_beginAccess();
    v66 = *(v63 + 16);
    v63 += 16;
    v100 = *(v63 + 56);
    v101 = v66;
    v102 = v63;
    v99 = (v63 - 8);
    v67 = v92;
    v66(v92, v65, v4);
    while (1)
    {
      outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(v106 + v104, v117, &lazy cache variable for type metadata for ShadowListDataSource<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListDataSource);
      v69 = IndexPath.section.getter();
      outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(v117, &v107, &lazy cache variable for type metadata for ShadowListUpdateRecorder<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListUpdateRecorder);
      _s7SwiftUI23ShadowSectionCollectionVyACyxGAA0C18ListUpdateRecorderVyxGcfCAA22TableDataSourceAdaptorV_Tt1g5(&v107, v126);
      outlined destroy of ShadowListUpdateRecorder<TableDataSourceAdaptor>(v126, &lazy cache variable for type metadata for ShadowSectionCollection<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowSectionCollection);
      LOBYTE(v69) = specialized ShadowListUpdateRecorder.hasFooter(forSectionAt:)(v69 & ~(v69 >> 63));
      outlined destroy of ShadowListUpdateRecorder<TableDataSourceAdaptor>(v117, &lazy cache variable for type metadata for ShadowListDataSource<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListDataSource);
      if (v69)
      {
        v70 = v98;
        v71 = IndexPath._bridgeToObjectiveC()().super.isa;
        v72 = [v103 supplementaryViewForElementKind:v70 atIndexPath:v71];

        if (v72)
        {
          type metadata accessor for TableCollectionViewCell(0);
          v73 = swift_dynamicCastClass();

          if (v73)
          {
            break;
          }
        }
      }

      v68 = v105;
      (*v99)(v67, v105);
      v65 += v100;
      if (!--v61)
      {
        goto LABEL_57;
      }

      v101(v67, v65, v68);
    }

    outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(v106 + v104, v117, &lazy cache variable for type metadata for ShadowListDataSource<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListDataSource);
    v74 = IndexPath.section.getter();
    outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(v117, &v107, &lazy cache variable for type metadata for ShadowListUpdateRecorder<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListUpdateRecorder);
    _s7SwiftUI23ShadowSectionCollectionVyACyxGAA0C18ListUpdateRecorderVyxGcfCAA22TableDataSourceAdaptorV_Tt1g5(&v107, v126);
    outlined destroy of ShadowListUpdateRecorder<TableDataSourceAdaptor>(v126, &lazy cache variable for type metadata for ShadowSectionCollection<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowSectionCollection);
    specialized ShadowListUpdateRecorder.initialIndex(_:)(v74 & ~(v74 >> 63));
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
LABEL_57:

    a1 = v103;
  }

  else
  {
  }

  v75 = MEMORY[0x18D00C850](0xD000000000000011, 0x800000018CD4D770);
  v76 = [a1 visibleSupplementaryViewsOfKind_];

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UICollectionReusableView, 0x1E69DC7E8);
  v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v19 >> 62)
  {
    if (!__CocoaSet.count.getter())
    {
      goto LABEL_72;
    }

LABEL_61:
    if ((v19 & 0xC000000000000001) == 0)
    {
      if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v77 = *(v19 + 32);
        goto LABEL_64;
      }

      __break(1u);
LABEL_77:
      __break(1u);
      return;
    }

LABEL_75:
    v77 = MEMORY[0x18D00E9C0](0, v19);
LABEL_64:
    v78 = v77;

    type metadata accessor for TableGlobalHeader();
    v79 = swift_dynamicCastClass();
    if (v79)
    {
      v80 = v79;
      v81 = v106;
      v82 = MEMORY[0x1E69E7D40];
      v83 = *((*MEMORY[0x1E69E7D40] & *v106) + 0x88);
      swift_beginAccess();
      outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(v81 + v83, v126, &lazy cache variable for type metadata for ShadowListDataSource<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListDataSource);
      v84 = *((*v82 & *v81) + 0xA0);
      swift_beginAccess();
      v85 = *(v81 + v84);
      outlined init with copy of TableDataSourceAdaptor(v126, v117);
      outlined copy of Transaction?(v85);
      v86 = v78;
      [v80 setAutomaticallyUpdatesContentConfiguration_];
      v87 = v121;
      v88 = v122;
      outlined init with copy of TableColumnCollection(v119, v108 + 8);
      outlined copy of Binding<[SwiftUIAnySortComparator]>?(v87, *(&v87 + 1));
      v89 = TableDataSourceAdaptor.headerDisplayMode.getter();
      v107 = v87;
      *&v108[0] = v88;
      BYTE1(v109) = v89;
      BYTE2(v109) = BYTE8(v120);
      v90 = OBJC_IVAR____TtC7SwiftUI17TableGlobalHeader_globalHeader;
      swift_beginAccess();
      outlined assign with take of TableHeaderView?(&v107, v80 + v90, &lazy cache variable for type metadata for TableHeaderView?, &type metadata for TableHeaderView);
      swift_endAccess();
      [v80 setNeedsUpdateConfiguration];

      outlined destroy of TableDataSourceAdaptor(v117);
      outlined consume of ListItemTint?(v85);

      outlined destroy of ShadowListUpdateRecorder<TableDataSourceAdaptor>(v126, &lazy cache variable for type metadata for ShadowListDataSource<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListDataSource);
    }

    else
    {
    }

    return;
  }

  if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_61;
  }

LABEL_72:
}

uint64_t specialized closure #3 in UICollectionViewListCoordinatorBase.updateEditingState(_:)(char *a1, void *a2)
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E6969C28];
  v9 = MEMORY[0x1E69E6720];
  _s7SwiftUI16BridgedListStateV12ScrollTargetVSgMaTm_0(0, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v21 - v15;
  (*(v5 + 56))(&v21 - v15, 1, 1, v4, v14);
  v17 = OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_pendingDeselectedItem;
  swift_beginAccess();
  outlined assign with take of Binding<AnySelectionManager>?(v16, &a1[v17], &lazy cache variable for type metadata for IndexPath?, v8, v9, _s7SwiftUI16BridgedListStateV12ScrollTargetVSgMaTm_0);
  swift_endAccess();
  v18 = *((*MEMORY[0x1E69E7D40] & *a2) + 0xE0);
  swift_beginAccess();
  outlined init with copy of Binding<AnySelectionManager>?(a2 + v18, v12, &lazy cache variable for type metadata for IndexPath?, v8, v9, _s7SwiftUI16BridgedListStateV12ScrollTargetVSgMaTm_0);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    return outlined destroy of Binding<AnySelectionManager>?(v12, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720], _s7SwiftUI16BridgedListStateV12ScrollTargetVSgMaTm_0);
  }

  (*(v5 + 32))(v7, v12, v4);
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  [a1 selectItemAtIndexPath:isa animated:0 scrollPosition:0];

  return (*(v5 + 8))(v7, v4);
}

void specialized closure #1 in UICollectionViewListCoordinatorBase.updateListContents(_:)(uint64_t *a1, void *a2, _BYTE *a3)
{
  v6 = MEMORY[0x1E69E7D40];
  v7 = *((*MEMORY[0x1E69E7D40] & *a2) + 0x88);
  swift_beginAccess();
  outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(a2 + v7, v19, &lazy cache variable for type metadata for ShadowListDataSource<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListDataSource);
  v8 = *((*v6 & *a2) + 0xA0);
  swift_beginAccess();
  v9 = *(a2 + v8);
  v11 = *a1;
  v10 = a1[1];
  outlined init with copy of TableRowView((a1 + 2), v16);
  v12 = a1[19];
  outlined init with copy of Binding<AnySelectionManager>((a1 + 20), v17, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8], MEMORY[0x1E69E6720]);
  v13 = *(a1 + 200);
  v15[0] = v11;
  v15[1] = v10;
  v16[17] = v12;
  v17[40] = v13;
  v18 = 0;
  outlined copy of Transaction?(v9);

  TableDataSourceAdaptor.configureCell(_:transaction:context:)(a3, v9, v15);
  outlined consume of ListItemTint?(v9);
  outlined destroy of ShadowListUpdateRecorder<TableDataSourceAdaptor>(v15, &lazy cache variable for type metadata for _RowVisitationContext<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for _RowVisitationContext);
  outlined destroy of ShadowListUpdateRecorder<TableDataSourceAdaptor>(v19, &lazy cache variable for type metadata for ShadowListDataSource<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListDataSource);
  v14 = [a3 layer];
  v15[0] = a1[19];
  ViewTraitCollection.zIndex.getter();
  [v14 setZPosition_];
}

uint64_t specialized ShadowListUpdateRecorder.hasFooter(forSectionAt:)(uint64_t a1)
{
  v3 = *(v1 + 176);
  v2 = *(v1 + 184);
  if (*(v2 + 16) | *(v3 + 16))
  {
    MEMORY[0x1EEE9AC00](a1);
    lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor();
    KeyPath = swift_getKeyPath();

    updated = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF7SwiftUI22ConcatenatedCollectionVySayAF10ListUpdateOyS2iGGALG_AKs5NeverOTB503_s7d10UI24ShadowhI95RecorderV12initialIndexy10SectionIDs_0H0QZAGFAA0dE0OyAGSiGAJcfu_AA22TableDataSourceAdaptorV_TG5s7KeyPathCyA2KGTf1cn_nTf4ng_nTm(v2, v3, KeyPath);

    specialized ShadowListUpdateRecorder.applyUpdates<A>(_:to:)(updated, a1);
  }

  return 0;
}

uint64_t specialized ShadowListUpdateRecorder.initialIndex(_:)(uint64_t a1)
{
  v2 = a1;
  v4 = *(v1 + 176);
  v3 = *(v1 + 184);
  if (*(v3 + 16) | *(v4 + 16))
  {
    MEMORY[0x1EEE9AC00](a1);
    lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor();
    KeyPath = swift_getKeyPath();

    updated = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF7SwiftUI22ConcatenatedCollectionVySayAF10ListUpdateOyS2iGGALG_AKs5NeverOTB503_s7d10UI24ShadowhI95RecorderV12initialIndexy10SectionIDs_0H0QZAGFAA0dE0OyAGSiGAJcfu_AA22TableDataSourceAdaptorV_TG5s7KeyPathCyA2KGTf1cn_nTf4ng_nTm(v3, v4, KeyPath);

    v2 = specialized ShadowListUpdateRecorder.applyUpdates<A>(_:to:)(updated, v2);
  }

  return v2;
}

void specialized ShadowListDataSource.contextForItem(index:)(unint64_t a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = outlined init with copy of TableDataSourceAdaptor(v3, &v15);
  v9 = *(v3 + 176);
  v8 = *(v3 + 184);
  if (*(v8 + 16) | *(v9 + 16))
  {
    MEMORY[0x1EEE9AC00](v7);
    lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor();
    KeyPath = swift_getKeyPath();

    updated = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF7SwiftUI22ConcatenatedCollectionVySayAF10ListUpdateOyS2iGGALG_AKs5NeverOTB503_s7d10UI24ShadowhI95RecorderV12initialIndexy10SectionIDs_0H0QZAGFAA0dE0OyAGSiGAJcfu_AA22TableDataSourceAdaptorV_TG5s7KeyPathCyA2KGTf1cn_nTf4ng_nTm(v8, v9, KeyPath);

    a2 = specialized ShadowListUpdateRecorder.applyUpdates<A>(_:to:)(&v20, updated, a1, a2);

    a1 = v20;
  }

  TableDataSourceAdaptor.contextForItem(index:)(a1, a2, v21);
  outlined destroy of TableDataSourceAdaptor(&v15);
  if (v22)
  {
    v16[5] = v21[6];
    v16[6] = v21[7];
    v16[7] = v21[8];
    v16[1] = v21[2];
    v16[2] = v21[3];
    v16[3] = v21[4];
    v16[4] = v21[5];
    v15 = v21[0];
    v16[0] = v21[1];
    v17 = v22;
    v18[0] = v23;
    v18[1] = v24;
    v19[0] = v25[0];
    *(v19 + 15) = *(v25 + 15);
    v12 = v21[0];
    outlined init with copy of TableRowView(v16, a3 + 16);
    v13 = *&v18[0];
    outlined init with copy of Binding<AnySelectionManager>(v18 + 8, a3 + 160, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8], MEMORY[0x1E69E6720]);
    v14 = v19[1];

    outlined destroy of ShadowListUpdateRecorder<TableDataSourceAdaptor>(&v15, &lazy cache variable for type metadata for _RowVisitationContext<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for _RowVisitationContext);
    *a3 = v12;
    *(a3 + 200) = v14;
    *(a3 + 201) = 0;
  }

  else
  {
    v13 = 0;
    *(a3 + 144) = 0;
    *(a3 + 112) = 0u;
    *(a3 + 128) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 96) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
    *(a3 + 160) = 0u;
    *(a3 + 176) = 0u;
    *(a3 + 187) = 0u;
  }

  *(a3 + 152) = v13;
}

uint64_t specialized ListCoreDataSource.selectionValue(forRowAt:)@<X0>(unint64_t a1@<X0>, unint64_t *a2@<X1>, int8x16_t *a3@<X8>)
{
  specialized ShadowListDataSource.contextForItem(index:)(a1, a2, v22);
  outlined init with copy of Binding<AnySelectionManager>?(v22, v18, &lazy cache variable for type metadata for _RowVisitationContext<ShadowListDataSource<TableDataSourceAdaptor>>?, type metadata accessor for _RowVisitationContext<ShadowListDataSource<TableDataSourceAdaptor>>, MEMORY[0x1E69E6720], _s7SwiftUI16BridgedListStateV12ScrollTargetVSgMaTm_0);
  if (!v19)
  {
    result = outlined destroy of Binding<AnySelectionManager>?(v22, &lazy cache variable for type metadata for _RowVisitationContext<ShadowListDataSource<TableDataSourceAdaptor>>?, type metadata accessor for _RowVisitationContext<ShadowListDataSource<TableDataSourceAdaptor>>, MEMORY[0x1E69E6720], _s7SwiftUI16BridgedListStateV12ScrollTargetVSgMaTm_0);
LABEL_11:
    v6 = 0;
    v4 = 0;
    v5 = 0;
    v10 = 0uLL;
    goto LABEL_12;
  }

  v16[10] = v20;
  v17[0] = v21[0];
  *(v17 + 11) = *(v21 + 11);
  v16[6] = v18[6];
  v16[7] = v18[7];
  v16[8] = v18[8];
  v16[9] = v19;
  v16[2] = v18[2];
  v16[3] = v18[3];
  v16[4] = v18[4];
  v16[5] = v18[5];
  v16[0] = v18[0];
  v16[1] = v18[1];
  specialized _RowVisitationContext.selectionValue(respectSelectionDisabled:)(1, &v12);
  v11 = v12;
  v4 = v14;
  if (v14)
  {
    v5 = v15;
  }

  else
  {
    v5 = 0;
  }

  if (v14)
  {
    v6 = v13;
  }

  else
  {
    v6 = 0;
  }

  outlined destroy of BridgedListState(v16, type metadata accessor for _RowVisitationContext<ShadowListDataSource<TableDataSourceAdaptor>>);
  result = outlined destroy of Binding<AnySelectionManager>?(v22, &lazy cache variable for type metadata for _RowVisitationContext<ShadowListDataSource<TableDataSourceAdaptor>>?, type metadata accessor for _RowVisitationContext<ShadowListDataSource<TableDataSourceAdaptor>>, MEMORY[0x1E69E6720], _s7SwiftUI16BridgedListStateV12ScrollTargetVSgMaTm_0);
  if (!v4)
  {
    goto LABEL_11;
  }

  v8.i64[0] = 0;
  v9.i64[0] = v4;
  v10 = vandq_s8(v11, vdupq_lane_s64(vmvnq_s8(vceqq_s64(v9, v8)).i64[0], 0));
LABEL_12:
  *a3 = v10;
  a3[1].i64[0] = v6;
  a3[1].i64[1] = v4;
  a3[2].i64[0] = v5;
  return result;
}

uint64_t static CollectionViewTableRoot._makeView(view:inputs:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v100 = *MEMORY[0x1E69E9840];
  v13 = *(a2 + 16);
  v14 = *(a2 + 48);
  v75 = *(a2 + 32);
  v76 = v14;
  v77 = *(a2 + 64);
  v15 = *(a2 + 16);
  v73 = *a2;
  v74 = v15;
  v79 = v73;
  v80 = v15;
  v81 = v75;
  v16 = *a1;
  v40 = *a1;
  v78 = *(a2 + 80);
  v60 = v73;
  v61 = v13;
  v62 = v75;
  outlined init with copy of _GraphInputs(&v79, &v56);
  _ViewInputs.init(withoutGeometry:)();
  v60 = v79;
  v61 = v80;
  v66 = *v85;
  v67 = *&v85[16];
  v62 = v81;
  v63 = v82;
  HIDWORD(v69) = *MEMORY[0x1E698D3F8];
  LODWORD(v68) = *&v85[32];
  v64 = v83;
  v65 = v84;
  outlined init with copy of _GraphInputs(&v79, &v56);
  outlined init with copy of _ViewInputs(&v82, &v56);
  PreferencesInputs.init(hostKeys:)();
  *(&v68 + 1) = v56;
  LODWORD(v69) = DWORD2(v56);
  PreferenceKeys.add(_:)();
  v92 = v66;
  v93 = v67;
  v94 = v68;
  v88 = v62;
  v89 = v63;
  v90 = v64;
  v91 = v65;
  v86 = v60;
  v95 = v69;
  v87 = v61;
  v51 = a3;
  v52 = a4;
  v53 = a5;
  v54 = a6;
  v17 = a7;
  v37 = a7;
  v55 = a7;
  LODWORD(v98[0]) = v16;
  *&v60 = a3;
  *(&v60 + 1) = a4;
  *&v61 = a5;
  *(&v61 + 1) = a6;
  v18 = a5;
  *&v62 = v17;
  type metadata accessor for CollectionViewTableRoot(255, &v60);
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();
  v66 = v92;
  v67 = v93;
  v68 = v94;
  v69 = v95;
  v62 = v88;
  v63 = v89;
  v64 = v90;
  v65 = v91;
  v60 = v86;
  v61 = v87;
  (*(a6 + 48))(&v56, v96, &v60, a4, a6);
  v38 = v56;
  v39 = DWORD2(v56);
  v70 = v82;
  v71 = v83;
  v72 = v84;
  v44 = *&v85[12];
  v45 = *&v85[28];
  *&v56 = *v85;
  DWORD2(v56) = *&v85[8];
  outlined init with copy of _ViewInputs(&v82, &v60);

  PreferenceKeys.add(_:)();
  v19 = v56;
  LODWORD(a5) = DWORD2(v56);

  v46 = a3;
  v47 = a4;
  v32 = a6;
  v33 = a4;
  v48 = v18;
  v49 = a6;
  v50 = v37;
  LODWORD(v41) = v40;
  _GraphValue.subscript.getter();
  v96[1] = v71;
  v96[2] = v72;
  v96[0] = v70;
  v35 = v19;
  *v97 = v19;
  v34 = a5;
  *&v97[8] = a5;
  v20 = v18;
  *&v97[28] = v45;
  *&v97[12] = v44;
  v62 = v72;
  v63 = *v97;
  v64 = *&v97[16];
  LODWORD(v65) = HIDWORD(v45);
  v60 = v70;
  v61 = v71;
  v21 = *(v37 + 64);
  outlined init with copy of _TableColumnInputs(v96, &v56);
  v21(&v56, v43, &v60, v18, v37);
  v98[2] = v62;
  v98[3] = v63;
  v98[4] = v64;
  v99 = v65;
  v98[0] = v60;
  v98[1] = v61;
  outlined destroy of _TableColumnInputs(v98);
  v22 = v56;
  v23 = DWORD2(v56);
  type metadata accessor for GraphHost();
  MEMORY[0x18D00B7D0]();
  type metadata accessor for ViewGraph();
  swift_dynamicCastClassUnconditional();
  static ScrollGeometry.zero.getter();
  LOBYTE(v56) = 0;
  GraphHost.intern<A>(_:for:id:)();

  IndirectAttribute2 = AGGraphCreateIndirectAttribute2();
  *&v60 = v38;
  DWORD2(v60) = v39;
  v25 = PreferencesOutputs.subscript.getter();
  if ((v25 & 0x100000000) != 0)
  {
    __break(1u);
LABEL_8:
    __break(1u);
  }

  v26 = v25;

  *&v60 = v22;
  DWORD2(v60) = v23;
  v27 = PreferencesOutputs.subscript.getter();
  if ((v27 & 0x100000000) != 0)
  {
    goto LABEL_8;
  }

  v28 = v27;

  LODWORD(v41) = v40;
  v58 = v75;
  *v59 = v76;
  *&v59[16] = v77;
  *&v59[32] = v78;
  v56 = v73;
  v57 = v74;
  outlined init with copy of _ViewInputs(&v73, &v60);
  UpdateCollectionViewTableCoordinator.init<A, B, C>(rowList:columnList:view:viewInputs:scrollGeometry:)(v26, v28, &v41, &v56, IndirectAttribute2, a3, v33, v20, &v60, v32, v37);
  outlined init with copy of UpdateCollectionViewTableCoordinator(&v60, &v56);
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for UICollectionViewListCoordinator<TableDataSourceAdaptor, AnySelectionManager>(0, &lazy cache variable for type metadata for UICollectionViewListCoordinator<TableDataSourceAdaptor, AnySelectionManager>, type metadata accessor for UICollectionViewListCoordinator);
  lazy protocol witness table accessor for type UpdateCollectionViewTableCoordinator and conformance UpdateCollectionViewTableCoordinator();
  v29 = Attribute.init<A>(body:value:flags:update:)();
  outlined destroy of UpdateCollectionViewTableCoordinator(&v56);
  AGGraphGetFlags();
  AGGraphSetFlags();
  _s7SwiftUI27CollectionViewListUtilitiesO11makeOutputs6inputs11coordinator0J4Kind14scrollGeometryAA01_dH0VAA01_D6InputsV_14AttributeGraph0O0VyAA012UICollectiondE11CoordinatorCyxq_GGAC0rK0OAM08IndirectO0VyAA06ScrollM0VGtAA0cdE14DataSourceBaseRzAA16SelectionManagerR_0X5ValueQy_A1_Rtzr0_lFZAA05TableuV7AdaptorV_AA03AnyxY0VTt4B5(&v73, v29, 0, IndirectAttribute2, &v41);
  *&v56 = v76;
  DWORD2(v56) = DWORD2(v76);
  if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
  {
    *&v56 = AGCreateWeakAttribute();
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    lazy protocol witness table accessor for type AccessibilityCollectionViewTableAttachment and conformance AccessibilityCollectionViewTableAttachment();
    v30 = Attribute.init<A>(body:value:flags:update:)();
    _s7SwiftUI25AccessibilityViewModifierPAAE04makeC9Transform8modifier6inputs7outputs14AttributeGraph0K0VyAA0C8NodeListVGSgAA01_L5ValueVyxG_AA01_D6InputsVAA01_D7OutputsVtFZAA0c10ScrollableE0V_Tt2B5Tm(v30, &v73, v41, v42, &lazy cache variable for type metadata for AccessibilityViewModifierAccessor<AccessibilityAttachmentModifier>, lazy protocol witness table accessor for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier, &type metadata for AccessibilityAttachmentModifier);
    PreferencesOutputs.subscript.setter();
    outlined destroy of _TableRowInputs(&v86);
    outlined destroy of _ViewInputs(&v82);
    outlined destroy of UpdateCollectionViewTableCoordinator(&v60);
  }

  else
  {
    outlined destroy of UpdateCollectionViewTableCoordinator(&v60);
    outlined destroy of _ViewInputs(&v82);
    outlined destroy of _TableRowInputs(&v86);
  }

  *a8 = v41;
  a8[1] = v42;
  v56 = v70;
  v57 = v71;
  v58 = v72;
  *v59 = v35;
  *&v59[8] = v34;
  *&v59[12] = v44;
  *&v59[28] = v45;
  return outlined destroy of _TableColumnInputs(&v56);
}

uint64_t closure #1 in static CollectionViewTableRoot._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12[0] = a2;
  v12[1] = a3;
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a6;
  v11[2] = type metadata accessor for CollectionViewTableRoot(0, v12);
  v11[3] = a3;
  v8 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, closure #1 in static PointerOffset.of(_:)partial apply, v11, a3, MEMORY[0x1E69E73E0], v8, MEMORY[0x1E69E7410], v9);
  return v12[0];
}

uint64_t closure #2 in static CollectionViewTableRoot._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14[0] = a2;
  v14[1] = a3;
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a6;
  v8 = type metadata accessor for CollectionViewTableRoot(0, v14);
  v9 = *(v8 + 60);
  v13[2] = v8;
  v13[3] = a4;
  v10 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v9, partial apply for closure #1 in static PointerOffset.of(_:), v13, a4, MEMORY[0x1E69E73E0], v10, MEMORY[0x1E69E7410], v11);
  return v14[0];
}

uint64_t UpdateCollectionViewTableCoordinator.init<A, B, C>(rowList:columnList:view:viewInputs:scrollGeometry:)@<X0>(int a1@<W0>, int a2@<W1>, int *a3@<X2>, __int128 *a4@<X3>, unsigned int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v42 = a5;
  v58 = *MEMORY[0x1E69E9840];
  v17 = a4[2];
  v18 = a4[4];
  v55 = a4[3];
  v56 = v18;
  v19 = a4[1];
  v52 = *a4;
  v20 = *a3;
  v57 = *(a4 + 20);
  v53 = v19;
  v54 = v17;
  swift_unknownObjectWeakInit();
  *(a9 + 251) = 0u;
  *(a9 + 224) = 0u;
  *(a9 + 240) = 0u;
  *(a9 + 192) = 0u;
  *(a9 + 208) = 0u;
  *(a9 + 160) = 0u;
  *(a9 + 176) = 0u;
  *(a9 + 128) = 0u;
  *(a9 + 144) = 0u;
  *(a9 + 96) = 0u;
  *(a9 + 112) = 0u;
  v21 = AGSubgraphGetCurrent();
  if (!v21)
  {
    __break(1u);
  }

  v43 = &v41;
  *(a9 + 272) = v21;
  *a9 = a1;
  *(a9 + 4) = a2;
  MEMORY[0x1EEE9AC00](v21);
  v40[2] = a6;
  v40[3] = a7;
  v40[4] = a8;
  v40[5] = a10;
  v40[6] = a11;
  LODWORD(v45) = v20;
  *&v46 = a6;
  *(&v46 + 1) = a7;
  *&v47 = a8;
  *(&v47 + 1) = a10;
  *&v48 = a11;
  type metadata accessor for CollectionViewTableRoot(255, &v46);
  type metadata accessor for _GraphValue();
  type metadata accessor for Binding<EditMode>?(0, &lazy cache variable for type metadata for Binding<AnySelectionManager>?, &lazy cache variable for type metadata for Binding<AnySelectionManager>, &type metadata for AnySelectionManager);
  v22 = _GraphValue.subscript.getter();
  *(a9 + 8) = v46;
  v43 = v40;
  MEMORY[0x1EEE9AC00](v22);
  v40[-6] = a6;
  v40[-5] = a7;
  v40[-4] = a8;
  v40[-3] = a10;
  v40[-2] = a11;
  LODWORD(v46) = v20;
  _s7SwiftUI16BridgedListStateV12ScrollTargetVSgMaTm_0(0, &lazy cache variable for type metadata for Binding<[SwiftUIAnySortComparator]>?, type metadata accessor for Binding<[SwiftUIAnySortComparator]>, MEMORY[0x1E69E6720]);
  v23 = _GraphValue.subscript.getter();
  *(a9 + 12) = v45;
  v43 = v40;
  MEMORY[0x1EEE9AC00](v23);
  v40[-6] = a6;
  v40[-5] = a7;
  v40[-4] = a8;
  v40[-3] = a10;
  v40[-2] = a11;
  LODWORD(v46) = v20;
  type metadata accessor for Binding<EditMode>?(0, &lazy cache variable for type metadata for Binding<AnyTableColumnCustomization>?, &lazy cache variable for type metadata for Binding<AnyTableColumnCustomization>, &type metadata for AnyTableColumnCustomization);
  _GraphValue.subscript.getter();
  v24 = HIDWORD(v53);
  *(a9 + 16) = v45;
  *(a9 + 20) = v24;
  outlined init with copy of _GraphInputs(&v52, &v46);
  if (one-time initialization token for editMode != -1)
  {
    swift_once();
  }

  *&v45 = static CachedEnvironment.ID.editMode;
  swift_beginAccess();
  type metadata accessor for Binding<EditMode>?(0, &lazy cache variable for type metadata for Binding<EditMode>?, &lazy cache variable for type metadata for Binding<EditMode>, &type metadata for EditMode);
  v25 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  outlined destroy of _GraphInputs(&v52);
  *(a9 + 24) = v25;
  outlined init with copy of _GraphInputs(&v52, &v46);
  if (one-time initialization token for menuOrder != -1)
  {
    swift_once();
  }

  *&v45 = static CachedEnvironment.ID.menuOrder;
  swift_beginAccess();
  v26 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  outlined destroy of _GraphInputs(&v52);
  *(a9 + 28) = v26;
  outlined init with copy of _GraphInputs(&v52, &v46);
  if (one-time initialization token for tableColumnHeadersVisibility != -1)
  {
    swift_once();
  }

  *&v45 = static CachedEnvironment.ID.tableColumnHeadersVisibility;
  swift_beginAccess();
  v27 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  outlined destroy of _GraphInputs(&v52);
  *(a9 + 36) = v27;
  outlined init with copy of _GraphInputs(&v52, &v46);
  if (one-time initialization token for tableShowsFirstColumnOnly != -1)
  {
    swift_once();
  }

  *&v45 = static CachedEnvironment.ID.tableShowsFirstColumnOnly;
  swift_beginAccess();
  v28 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  outlined destroy of _GraphInputs(&v52);
  *(a9 + 32) = v28;
  v48 = v54;
  v49 = v55;
  v50 = v56;
  v51 = v57;
  v46 = v52;
  v47 = v53;
  *(a9 + 40) = _ViewInputs.accessibilityEnabled.getter();
  outlined init with copy of _GraphInputs(&v52, &v46);
  if (one-time initialization token for appIntentsDataSourcePayloadProvider != -1)
  {
    swift_once();
  }

  *&v45 = static CachedEnvironment.ID.appIntentsDataSourcePayloadProvider;
  swift_beginAccess();
  type metadata accessor for (index: Int, element: TableCellFormula, id: TableColumnCustomizationID)?(0, &lazy cache variable for type metadata for IntelligenceAppIntentsDataSourcePayloadProviding?, &lazy cache variable for type metadata for IntelligenceAppIntentsDataSourcePayloadProviding, MEMORY[0x1E69DBD30], type metadata accessor for CVarArg);
  v29 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  outlined destroy of _GraphInputs(&v52);
  *(a9 + 48) = v29;
  _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v2VGMaTm_2(0, &lazy cache variable for type metadata for _GraphInputs.SelectionBasedStorageKey<AnyHashable>, MEMORY[0x1E69E69B8], MEMORY[0x1E69E69C0], type metadata accessor for _GraphInputs.SelectionBasedStorageKey);
  outlined init with copy of _GraphInputs(&v52, &v46);
  lazy protocol witness table accessor for type _GraphInputs.SelectionBasedStorageKey<AnyHashable> and conformance _GraphInputs.SelectionBasedStorageKey<A>();
  PropertyList.subscript.getter();
  outlined destroy of _GraphInputs(&v52);
  *(a9 + 52) = _s7SwiftUI25WeakSelectionBasedStorageVyACyxGAA0deF0VyxGcfCAA04TextD0V_Tt0g5Tm(v46, *(&v46 + 1));
  *(a9 + 60) = v30;
  *(a9 + 68) = v31;
  *(a9 + 76) = v32;
  _s7SwiftUI33AccessibilityViewModifierAccessor33_71F62EDC1DAE3BBC7A74521E45BA5A66LLCyAA0c10AttachmentE0VGMaTm_0(0, &lazy cache variable for type metadata for SourceInput<ListRowHeightTemplateContent>, lazy protocol witness table accessor for type ListRowHeightTemplateContent and conformance ListRowHeightTemplateContent, &type metadata for ListRowHeightTemplateContent, type metadata accessor for SourceInput);
  lazy protocol witness table accessor for type SourceInput<ListRowHeightTemplateContent> and conformance SourceInput<A>();
  PropertyList.subscript.getter();
  if (v46)
  {

    Attribute = AGWeakAttributeGetAttribute();
    v34 = *MEMORY[0x1E698D3F8];
    v35 = Attribute;
    if (Attribute != *MEMORY[0x1E698D3F8])
    {
      protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
      lazy protocol witness table accessor for type TableTemplateRowWrapperView.ViewRule and conformance TableTemplateRowWrapperView.ViewRule();
      v44 = Attribute.init<A>(body:value:flags:update:)();
      v48 = v54;
      v49 = v55;
      v50 = v56;
      v51 = v57;
      v46 = v52;
      v47 = v53;
      lazy protocol witness table accessor for type TableTemplateRowWrapperView and conformance TableTemplateRowWrapperView();
      static View.makeDebuggableView(view:inputs:)();
      v46 = v45;
      v36 = _ViewOutputs.layoutComputer.getter();

      if ((v36 & 0x100000000) != 0)
      {
        v35 = v34;
      }

      else
      {
        v35 = v36;
      }

      Attribute = v42;
    }
  }

  else
  {
    Attribute = *MEMORY[0x1E698D3F8];
    v35 = *MEMORY[0x1E698D3F8];
  }

  if (one-time initialization token for subviewsSizingOption != -1)
  {
    swift_once();
  }

  *&v45 = static CachedEnvironment.ID.subviewsSizingOption;
  swift_beginAccess();
  v37 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  *&v46 = __PAIR64__(v35, v37);
  DWORD2(v46) = Attribute;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type SubviewSizingHandlingForUniform and conformance SubviewSizingHandlingForUniform();
  v38 = Attribute.init<A>(body:value:flags:update:)();
  result = outlined destroy of _ViewInputs(&v52);
  *(a9 + 44) = v38;
  return result;
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance CollectionViewTableRoot<A, B, C>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable(protocol conformance descriptor for CollectionViewTableRoot<A, B, C>, a3);

  return static UnaryView._makeViewList(view:inputs:)();
}

uint64_t UpdateCollectionViewTableCoordinator.hasMultipleSelection.getter()
{
  type metadata accessor for Binding<EditMode>?(0, &lazy cache variable for type metadata for Binding<AnySelectionManager>?, &lazy cache variable for type metadata for Binding<AnySelectionManager>, &type metadata for AnySelectionManager);
  Value = AGGraphGetValue();
  outlined init with copy of Binding<AnySelectionManager>?(Value, v10, &lazy cache variable for type metadata for Binding<AnySelectionManager>?, &lazy cache variable for type metadata for Binding<AnySelectionManager>, &type metadata for AnySelectionManager, type metadata accessor for Binding<EditMode>?);
  if (v11)
  {
    v1 = MEMORY[0x1E6981948];
    outlined init with copy of Binding<AnySelectionManager>(v10, v9, &lazy cache variable for type metadata for Binding<AnySelectionManager>, &type metadata for AnySelectionManager, MEMORY[0x1E6981948]);
    outlined destroy of Binding<AnySelectionManager>?(v10, &lazy cache variable for type metadata for Binding<AnySelectionManager>?, &lazy cache variable for type metadata for Binding<AnySelectionManager>, &type metadata for AnySelectionManager, type metadata accessor for Binding<EditMode>?);
    type metadata accessor for MutableBox<UInt32>(0, &lazy cache variable for type metadata for Binding<AnySelectionManager>, &type metadata for AnySelectionManager, v1);
    MEMORY[0x18D00ACC0](v6);
    _s7SwiftUI7BindingVyAA27AnyTableColumnCustomizationVGWOhTm_0(v9, &lazy cache variable for type metadata for Binding<AnySelectionManager>, &type metadata for AnySelectionManager, v1);
    v2 = v7;
    v3 = v8;
    __swift_project_boxed_opaque_existential_1(v6, v7);
    v4 = (*(v3 + 24))(v2, v3);
    outlined destroy of AnySelectionManager(v6);
  }

  else
  {
    outlined destroy of Binding<AnySelectionManager>?(v10, &lazy cache variable for type metadata for Binding<AnySelectionManager>?, &lazy cache variable for type metadata for Binding<AnySelectionManager>, &type metadata for AnySelectionManager, type metadata accessor for Binding<EditMode>?);
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t closure #1 in UpdateCollectionViewTableCoordinator.init<A, B, C>(rowList:columnList:view:viewInputs:scrollGeometry:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15[0] = a2;
  v15[1] = a3;
  v15[2] = a4;
  v15[3] = a5;
  v15[4] = a6;
  v7 = type metadata accessor for CollectionViewTableRoot(0, v15);
  v8 = *(v7 + 64);
  v14[2] = v7;
  type metadata accessor for Binding<EditMode>?(0, &lazy cache variable for type metadata for Binding<AnySelectionManager>?, &lazy cache variable for type metadata for Binding<AnySelectionManager>, &type metadata for AnySelectionManager);
  v10 = v9;
  v11 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v8, closure #1 in static PointerOffset.of(_:)partial apply, v14, v10, MEMORY[0x1E69E73E0], v11, MEMORY[0x1E69E7410], v12);
  return v15[0];
}

uint64_t closure #2 in UpdateCollectionViewTableCoordinator.init<A, B, C>(rowList:columnList:view:viewInputs:scrollGeometry:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15[0] = a2;
  v15[1] = a3;
  v15[2] = a4;
  v15[3] = a5;
  v15[4] = a6;
  v7 = type metadata accessor for CollectionViewTableRoot(0, v15);
  v8 = *(v7 + 68);
  v14[2] = v7;
  _s7SwiftUI16BridgedListStateV12ScrollTargetVSgMaTm_0(0, &lazy cache variable for type metadata for Binding<[SwiftUIAnySortComparator]>?, type metadata accessor for Binding<[SwiftUIAnySortComparator]>, MEMORY[0x1E69E6720]);
  v10 = v9;
  v11 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v8, closure #1 in static PointerOffset.of(_:)partial apply, v14, v10, MEMORY[0x1E69E73E0], v11, MEMORY[0x1E69E7410], v12);
  return v15[0];
}

uint64_t closure #3 in UpdateCollectionViewTableCoordinator.init<A, B, C>(rowList:columnList:view:viewInputs:scrollGeometry:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15[0] = a2;
  v15[1] = a3;
  v15[2] = a4;
  v15[3] = a5;
  v15[4] = a6;
  v7 = type metadata accessor for CollectionViewTableRoot(0, v15);
  v8 = *(v7 + 72);
  v14[2] = v7;
  type metadata accessor for Binding<EditMode>?(0, &lazy cache variable for type metadata for Binding<AnyTableColumnCustomization>?, &lazy cache variable for type metadata for Binding<AnyTableColumnCustomization>, &type metadata for AnyTableColumnCustomization);
  v10 = v9;
  v11 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v8, _s14AttributeGraph13PointerOffsetV2ofyACyxq_Gq_zFZAESPyq_GXEfU_TA_20, v14, v10, MEMORY[0x1E69E73E0], v11, MEMORY[0x1E69E7410], v12);
  return v15[0];
}

Swift::Void __swiftcall UpdateCollectionViewTableCoordinator.updateValue()()
{
  v1 = v0;
  v231 = *MEMORY[0x1E69E9840];
  type metadata accessor for (index: Int, element: TableColumnCollection.Entry, id: TableColumnCustomizationID)(0, &lazy cache variable for type metadata for (index: Int, element: TableColumnCollection.Entry, id: TableColumnCustomizationID), type metadata accessor for TableColumnCollection.Entry);
  v170 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v167 = v150 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v169 = v150 - v6;
  v7 = type metadata accessor for TableColumnCollection.Entry(0);
  v168 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v161 = v150 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Value = AGGraphGetValue();
  v164 = v10;
  outlined init with copy of TableRowList(Value, v230);
  type metadata accessor for CVarArg(0, &lazy cache variable for type metadata for TableColumnList, &protocol descriptor for TableColumnList);
  v11 = AGGraphGetValue();
  v13 = v12;
  outlined init with copy of _Benchmark(v11, v227);
  v14 = v13 & 1;
  v15 = AGGraphGetValue();
  v17 = v16;
  v162 = *v15;
  type metadata accessor for UICollectionViewListCoordinator<TableDataSourceAdaptor, AnySelectionManager>(0, &lazy cache variable for type metadata for UICollectionViewListCoordinator<TableDataSourceAdaptor, AnySelectionManager>, type metadata accessor for UICollectionViewListCoordinator);
  v19 = v18;
  OutputValue = AGGraphGetOutputValue();
  v165 = v19;
  v166 = v1;
  if (OutputValue && (v164 & 1) == 0 && !v14 && (v17 & 1) == 0)
  {
    outlined init with copy of Binding<AnySelectionManager>(v1 + 96, &v213, &lazy cache variable for type metadata for TableDataSourceAdaptor?, &type metadata for TableDataSourceAdaptor, MEMORY[0x1E69E6720]);
    if (!*(&v214 + 1))
    {
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v198 = v217;
    v199 = v218;
    v200 = v219;
    v194 = v213;
    v195 = v214;
    v197 = v216;
    v196 = v215;
    LODWORD(v193[0]) = *v220;
    *(v193 + 3) = *&v220[3];
    v21 = v221;
    v22 = v222;
    v168 = v224;
    v169 = v223;
    v167 = v225;
    LODWORD(v170) = v226;
    outlined init with copy of UpdateCollectionViewTableCoordinator(v1, &v213);
    updated = UpdateCollectionViewTableCoordinator.hasMultipleSelection.getter();
    outlined destroy of UpdateCollectionViewTableCoordinator(&v213);
    v24 = updated & 1;
    outlined init with copy of UpdateCollectionViewTableCoordinator(v1, &v213);
    _s7SwiftUI16BridgedListStateV12ScrollTargetVSgMaTm_0(0, &lazy cache variable for type metadata for Binding<[SwiftUIAnySortComparator]>?, type metadata accessor for Binding<[SwiftUIAnySortComparator]>, MEMORY[0x1E69E6720]);
    v25 = AGGraphGetValue();
    v26 = *v25;
    v27 = v25[1];
    v28 = v25[2];
    outlined copy of Binding<[SwiftUIAnySortComparator]>?(*v25, v27);
    outlined destroy of UpdateCollectionViewTableCoordinator(&v213);
    outlined consume of Binding<[A1]>?<A, B, C><A1>(v21, v22);
    outlined init with copy of UpdateCollectionViewTableCoordinator(v166, &v213);
    type metadata accessor for Binding<EditMode>?(0, &lazy cache variable for type metadata for Binding<AnyTableColumnCustomization>?, &lazy cache variable for type metadata for Binding<AnyTableColumnCustomization>, &type metadata for AnyTableColumnCustomization);
    v29 = AGGraphGetValue();
    v31 = *v29;
    v30 = v29[1];
    v32 = v29[2];
    v33 = v29[3];
    outlined copy of Binding<AnyTableColumnCustomization>?(*v29, v30);
    outlined destroy of UpdateCollectionViewTableCoordinator(&v213);
    outlined consume of Binding<AnyTableColumnCustomization>?(v169, v168);
    outlined init with copy of UpdateCollectionViewTableCoordinator(v166, &v213);
    v34 = *AGGraphGetValue();
    outlined destroy of UpdateCollectionViewTableCoordinator(&v213);
    v162 = 0;
    *&v189 = v200;
    v187 = v198;
    v188 = v199;
    v183 = v194;
    v184 = v195;
    v185 = v196;
    v186 = v197;
    BYTE8(v189) = v24;
    HIDWORD(v189) = *(v193 + 3);
    *(&v189 + 9) = v193[0];
    *&v190 = v26;
    *(&v190 + 1) = v27;
    *&v191 = v28;
    *(&v191 + 1) = v31;
    *&v192[0] = v30;
    *(&v192[0] + 1) = v32;
    *&v192[1] = v33;
    BYTE8(v192[1]) = v34;
    *(&v192[1] + 9) = v170;
    v1 = v166;
    v35 = MEMORY[0x1E69E7D40];
LABEL_32:
    outlined init with copy of UpdateCollectionViewTableCoordinator(v1, &v213);
    v95 = AGGraphGetOutputValue();
    if (v95)
    {
      v96 = *v95;
      outlined destroy of UpdateCollectionViewTableCoordinator(&v213);
      outlined init with copy of UpdateCollectionViewTableCoordinator(v1, &v194);
      type metadata accessor for Binding<EditMode>?(0, &lazy cache variable for type metadata for Binding<AnySelectionManager>?, &lazy cache variable for type metadata for Binding<AnySelectionManager>, &type metadata for AnySelectionManager);
      v97 = AGGraphGetValue();
      outlined init with copy of Binding<AnySelectionManager>?(v97, v193, &lazy cache variable for type metadata for Binding<AnySelectionManager>?, &lazy cache variable for type metadata for Binding<AnySelectionManager>, &type metadata for AnySelectionManager, type metadata accessor for Binding<EditMode>?);
      outlined destroy of UpdateCollectionViewTableCoordinator(&v194);
      v98 = *((*v35 & *v96) + 0x110);
      swift_beginAccess();
      outlined assign with take of Binding<AnySelectionManager>?(v193, v96 + v98, &lazy cache variable for type metadata for Binding<AnySelectionManager>?, &lazy cache variable for type metadata for Binding<AnySelectionManager>, &type metadata for AnySelectionManager, type metadata accessor for Binding<EditMode>?);
      swift_endAccess();

      outlined init with copy of UpdateCollectionViewTableCoordinator(v1, &v213);
      v99 = AGGraphGetOutputValue();
      if (v99)
      {
        v100 = *v99;
        outlined destroy of UpdateCollectionViewTableCoordinator(&v213);
        outlined init with copy of UpdateCollectionViewTableCoordinator(v1, &v194);
        type metadata accessor for Binding<EditMode>?(0, &lazy cache variable for type metadata for Binding<EditMode>?, &lazy cache variable for type metadata for Binding<EditMode>, &type metadata for EditMode);
        v101 = AGGraphGetValue();
        v102 = *v101;
        v103 = *(v101 + 8);
        v104 = *(v101 + 16);
        outlined copy of Binding<Int>?(*v101, v103);
        outlined destroy of UpdateCollectionViewTableCoordinator(&v194);
        v105 = v100 + *((*v35 & *v100) + 0x128);
        v106 = *v105;
        v107 = *(v105 + 1);
        *v105 = v102;
        *(v105 + 1) = v103;
        v105[16] = v104;
        outlined consume of Binding<NavigationSplitViewColumn>?(v106, v107);

        outlined init with copy of UpdateCollectionViewTableCoordinator(v1, &v213);
        v108 = AGGraphGetOutputValue();
        if (v108)
        {
          v109 = *v108;
          outlined destroy of UpdateCollectionViewTableCoordinator(&v213);
          outlined init with copy of UpdateCollectionViewTableCoordinator(v1, &v194);
          v110 = *AGGraphGetValue();
          outlined destroy of UpdateCollectionViewTableCoordinator(&v194);
          *(v109 + *((*v35 & *v109) + 0x138)) = v110;

          outlined init with copy of UpdateCollectionViewTableCoordinator(v1, &v213);
          v111 = AGGraphGetOutputValue();
          if (v111)
          {
            v112 = *v111;
            outlined destroy of UpdateCollectionViewTableCoordinator(&v213);
            v113 = (v112 + *((*v35 & *v112) + 0x130));
            v114 = *(v1 + 68);
            *v113 = *(v1 + 52);
            v113[1] = v114;

            outlined init with copy of UpdateCollectionViewTableCoordinator(v1, &v194);
            v115 = AGGraphGetOutputValue();
            if (v115)
            {
              v116 = v35;
              v117 = *v115;
              outlined destroy of UpdateCollectionViewTableCoordinator(&v194);
              outlined init with copy of UpdateCollectionViewTableCoordinator(v1, v193);
              v118 = AGGraphGetValue();
              v119 = *v118;
              v120 = v118[1];
              v121 = v118[2];
              v122 = v118[3];
              v123 = v118[4];
              v124 = v118[5];
              v125 = v118[6];
              outlined copy of ResolvedSubviewsSizingOptions(*v118, v120, v121, v122, v123, v124, v125);
              outlined destroy of UpdateCollectionViewTableCoordinator(v193);
              v126 = v117 + *((*v116 & *v117) + 0x100);
              v127 = *(v126 + 6);
              v128 = *(v126 + 2);
              v129 = *v126;
              v181[1] = *(v126 + 1);
              v181[2] = v128;
              v182 = v127;
              v181[0] = v129;
              v131 = *v126;
              v130 = *(v126 + 1);
              v132 = *(v126 + 3);
              v169 = *(v126 + 2);
              v170 = v130;
              v168 = v132;
              v133 = *(v126 + 5);
              v167 = *(v126 + 4);
              v163 = *(v126 + 6);
              v164 = v133;
              *v126 = v119;
              *(v126 + 1) = v120;
              *(v126 + 2) = v121;
              *(v126 + 3) = v122;
              *(v126 + 4) = v123;
              *(v126 + 5) = v124;
              v134 = v166;
              *(v126 + 6) = v125;
              v135 = MEMORY[0x1E69E6720];
              outlined init with copy of Binding<AnySelectionManager>(v181, &v203, &lazy cache variable for type metadata for ResolvedSubviewsSizingOptions?, &type metadata for ResolvedSubviewsSizingOptions, MEMORY[0x1E69E6720]);
              outlined consume of ResolvedSubviewsSizingOptions?(v131, v170, v169, v168, v167, v164, v163);
              specialized UICollectionViewListCoordinatorBase.subviewsSizingOptions.didset(v181);
              _s7SwiftUI7BindingVyAA27AnyTableColumnCustomizationVGWOhTm_0(v181, &lazy cache variable for type metadata for ResolvedSubviewsSizingOptions?, &type metadata for ResolvedSubviewsSizingOptions, v135);

              outlined init with copy of UpdateCollectionViewTableCoordinator(v134, &v194);
              v136 = AGGraphGetOutputValue();
              if (v136)
              {
                v137 = *v136;
                outlined destroy of UpdateCollectionViewTableCoordinator(&v194);
                outlined init with copy of UpdateCollectionViewTableCoordinator(v134, v193);
                type metadata accessor for (index: Int, element: TableCellFormula, id: TableColumnCustomizationID)?(0, &lazy cache variable for type metadata for IntelligenceAppIntentsDataSourcePayloadProviding?, &lazy cache variable for type metadata for IntelligenceAppIntentsDataSourcePayloadProviding, MEMORY[0x1E69DBD30], type metadata accessor for CVarArg);
                v138 = AGGraphGetValue();
                outlined init with copy of IntelligenceAppIntentsDataSourcePayloadProviding?(v138, &v203);
                outlined destroy of UpdateCollectionViewTableCoordinator(v193);
                v139 = *((*MEMORY[0x1E69E7D40] & *v137) + 0x178);
                swift_beginAccess();
                outlined assign with take of IntelligenceAppIntentsDataSourcePayloadProviding?(&v203, v137 + v139);
                swift_endAccess();

                Strong = swift_unknownObjectWeakLoadStrong();
                if (!Strong)
                {
LABEL_41:
                  outlined destroy of TableRowList(v230);
                  _s7SwiftUI7BindingVyAA27AnyTableColumnCustomizationVGWOhTm_0((v134 + 6), &lazy cache variable for type metadata for TableDataSourceAdaptor?, &type metadata for TableDataSourceAdaptor, MEMORY[0x1E69E6720]);
                  v145 = v192[0];
                  v134[14] = v191;
                  v134[15] = v145;
                  *(v134 + 251) = *(v192 + 11);
                  v146 = v188;
                  v134[10] = v187;
                  v134[11] = v146;
                  v147 = v190;
                  v134[12] = v189;
                  v134[13] = v147;
                  v148 = v184;
                  v134[6] = v183;
                  v134[7] = v148;
                  v149 = v186;
                  v134[8] = v185;
                  v134[9] = v149;
                  __swift_destroy_boxed_opaque_existential_1(v227);
                  return;
                }

                v141 = Strong;
                outlined init with copy of UpdateCollectionViewTableCoordinator(v134, &v194);
                v142 = AGGraphGetOutputValue();
                if (v142)
                {
                  v143 = *v142;
                  outlined destroy of UpdateCollectionViewTableCoordinator(&v194);
                  AGGraphClearUpdate();
                  outlined init with copy of UpdateCollectionViewTableCoordinator(v134, v193);
                  v144 = *AGGraphGetValue();

                  outlined destroy of UpdateCollectionViewTableCoordinator(v193);
                  AGGraphSetUpdate();
                  specialized UICollectionViewListCoordinator.update(_:to:transaction:performDiff:)(v141, &v183, v144, v162 & 1);

                  goto LABEL_41;
                }

                __break(1u);
                goto LABEL_49;
              }

LABEL_47:
              __break(1u);
            }

LABEL_46:
            __break(1u);
            goto LABEL_47;
          }

LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

LABEL_44:
        __break(1u);
        goto LABEL_45;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_44;
  }

  if (!OutputValue || v14)
  {
    *&v183 = MEMORY[0x1E69E7CC0];
    v36 = v228;
    v37 = v229;
    __swift_project_boxed_opaque_existential_1(v227, v228);
    TableColumnList.visitAll<A>(applying:)(&v183, v36, &type metadata for MakeCellFormulas, v37, &protocol witness table for MakeCellFormulas);
    v38 = v183;
    outlined init with copy of UpdateCollectionViewTableCoordinator(v1, &v213);
    type metadata accessor for Binding<EditMode>?(0, &lazy cache variable for type metadata for Binding<AnyTableColumnCustomization>?, &lazy cache variable for type metadata for Binding<AnyTableColumnCustomization>, &type metadata for AnyTableColumnCustomization);
    v39 = AGGraphGetValue();
    v40 = *v39;
    v41 = v39[1];
    v42 = v39[2];
    v43 = v39[3];
    outlined copy of Binding<AnyTableColumnCustomization>?(*v39, v41);
    outlined destroy of UpdateCollectionViewTableCoordinator(&v213);
    if (v41)
    {
      *&v194 = v40;
      *(&v194 + 1) = v41;
      *&v195 = v42;
      *(&v195 + 1) = v43;
      type metadata accessor for MutableBox<UInt32>(0, &lazy cache variable for type metadata for Binding<AnyTableColumnCustomization>, &type metadata for AnyTableColumnCustomization, MEMORY[0x1E6981948]);
      MEMORY[0x18D00ACC0](v193);
      v45 = v193[0];
      v46 = v193[1];
    }

    else
    {
      v45 = 0;
      v46 = 0;
    }

    v163 = _s7SwiftUI27AnyTableColumnCustomizationV15arrangedColumns_13customization13includeHidden17defaultVisibility2idSayxGq__ACSgSbAA0M0OxXEAA0deF2IDVxXEt7ElementQy_RszSlR_r0_lFZAA0D11CellFormulaV_SayARGTt4g5(v38, v45, v46, 0, specialized implicit closure #5 in UpdateCollectionViewTableCoordinator.updateValue(), 0, specialized implicit closure #6 in UpdateCollectionViewTableCoordinator.updateValue(), 0, v44);
    outlined consume of AttributedTextFormatting.Constraints?(v45);

    v19 = v165;
LABEL_15:
    outlined init with copy of TableRowList(v230, v202);
    outlined init with copy of _Benchmark(v227, v201);
    outlined init with copy of UpdateCollectionViewTableCoordinator(v1, &v213);
    LODWORD(v47) = UpdateCollectionViewTableCoordinator.hasMultipleSelection.getter();
    outlined destroy of UpdateCollectionViewTableCoordinator(&v213);
    outlined init with copy of UpdateCollectionViewTableCoordinator(v1, &v194);
    _s7SwiftUI16BridgedListStateV12ScrollTargetVSgMaTm_0(0, &lazy cache variable for type metadata for Binding<[SwiftUIAnySortComparator]>?, type metadata accessor for Binding<[SwiftUIAnySortComparator]>, MEMORY[0x1E69E6720]);
    v48 = AGGraphGetValue();
    v49 = *v48;
    v50 = v48[2];
    v159 = v48[1];
    v160 = v49;
    v158 = v50;
    outlined copy of Binding<[SwiftUIAnySortComparator]>?(v49, v159);
    outlined destroy of UpdateCollectionViewTableCoordinator(&v194);
    outlined init with copy of UpdateCollectionViewTableCoordinator(v1, v193);
    type metadata accessor for Binding<EditMode>?(0, &lazy cache variable for type metadata for Binding<AnyTableColumnCustomization>?, &lazy cache variable for type metadata for Binding<AnyTableColumnCustomization>, &type metadata for AnyTableColumnCustomization);
    v51 = AGGraphGetValue();
    v52 = *v51;
    v53 = v51[1];
    v55 = v51[2];
    v54 = v51[3];
    outlined copy of Binding<AnyTableColumnCustomization>?(*v51, v53);
    outlined destroy of UpdateCollectionViewTableCoordinator(v193);
    outlined init with copy of UpdateCollectionViewTableCoordinator(v1, &v183);
    v157 = *AGGraphGetValue();
    outlined destroy of UpdateCollectionViewTableCoordinator(&v183);
    outlined init with copy of UpdateCollectionViewTableCoordinator(v1, v181);
    v156 = *AGGraphGetValue();
    outlined destroy of UpdateCollectionViewTableCoordinator(v181);
    outlined init with copy of _Benchmark(v201, &v203);
    BYTE8(v205) = 0;
    if (v53)
    {
      v152 = v3;
      v155 = v47;
      *&v172 = v52;
      *(&v172 + 1) = v53;
      *&v173 = v55;
      *(&v173 + 1) = v54;
      type metadata accessor for MutableBox<UInt32>(0, &lazy cache variable for type metadata for Binding<AnyTableColumnCustomization>, &type metadata for AnyTableColumnCustomization, MEMORY[0x1E6981948]);
      v57 = v56;

      MEMORY[0x18D00ACC0](v171, v57);
      v58 = v171[0];
      v59 = v171[1];
      v151 = v54;

      v153 = v53;

      v154 = v52;

      v60 = outlined init with copy of TableColumnCollection(&v203, &v172);
      v61 = MEMORY[0x1EEE9AC00](v60);
      v150[-8] = specialized implicit closure #2 in TableDataSourceAdaptor.init(rowList:columnList:cellFormulas:hasMultipleSelection:sortOrder:columnCustomization:showsFirstColumnOnly:tableColumnHeadersVisibility:accessibilityEnabled:);
      v150[-7] = 0;
      LOBYTE(v150[-6]) = 0;
      v150[1] = v58;
      v150[-5] = v58;
      v150[-4] = v59;
      v150[-3] = specialized implicit closure #1 in TableDataSourceAdaptor.init(rowList:columnList:cellFormulas:hasMultipleSelection:sortOrder:columnCustomization:showsFirstColumnOnly:tableColumnHeadersVisibility:accessibilityEnabled:);
      v150[-2] = 0;
      v62 = specialized Sequence.compactMap<A>(_:)(&v172, partial apply for specialized closure #1 in static AnyTableColumnCustomization.arrangedColumns<A, B>(_:customization:includeHidden:defaultVisibility:id:), &v150[-10], v61);
      outlined destroy of ShadowListUpdateRecorder<TableDataSourceAdaptor>(&v172, &lazy cache variable for type metadata for EnumeratedSequence<TableColumnCollection>, lazy protocol witness table accessor for type TableColumnCollection and conformance TableColumnCollection, &type metadata for TableColumnCollection, MEMORY[0x1E69E6E48]);
      *&v172 = v62;
      v150[2] = v59;
      if (v59)
      {

        specialized MutableCollection<>.sort(by:)(&v172, v59, &lazy cache variable for type metadata for (index: Int, element: TableColumnCollection.Entry, id: TableColumnCustomizationID), type metadata accessor for TableColumnCollection.Entry, specialized _ArrayBuffer._consumeAndCreateNew(), specialized UnsafeMutableBufferPointer._stableSortImpl(by:));

        v62 = v172;
      }

      v63 = v152;
      v152 = v55;
      v64 = v62[2];
      if (v64)
      {
        v171[0] = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v64, 0);
        v65 = v171[0];
        v66 = *(v63 + 80);
        v150[0] = v62;
        v67 = v62 + ((v66 + 32) & ~v66);
        v68 = *(v63 + 72);
        v69 = v161;
        do
        {
          v70 = v169;
          outlined init with copy of (index: Int, element: TableCellFormula, id: TableColumnCustomizationID)(v67, v169, &lazy cache variable for type metadata for (index: Int, element: TableColumnCollection.Entry, id: TableColumnCustomizationID), type metadata accessor for TableColumnCollection.Entry);
          v71 = v70;
          v72 = v167;
          outlined init with take of (index: Int, element: TableCellFormula, id: TableColumnCustomizationID)(v71, v167, &lazy cache variable for type metadata for (index: Int, element: TableColumnCollection.Entry, id: TableColumnCustomizationID), type metadata accessor for TableColumnCollection.Entry);
          v73 = *(v170 + 48);
          v74 = v72 + *(v170 + 64);
          outlined consume of TableColumnCustomizationID.Base(*v74, *(v74 + 8), *(v74 + 16), *(v74 + 24), *(v74 + 32));
          _s7SwiftUI16TableCellFormulaVWObTm_0(v72 + v73, v69, type metadata accessor for TableColumnCollection.Entry);
          v171[0] = v65;
          v76 = *(v65 + 16);
          v75 = *(v65 + 24);
          if (v76 >= v75 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v75 > 1), v76 + 1, 1);
            v69 = v161;
            v65 = v171[0];
          }

          *(v65 + 16) = v76 + 1;
          _s7SwiftUI16TableCellFormulaVWObTm_0(v69, v65 + ((*(v168 + 80) + 32) & ~*(v168 + 80)) + *(v168 + 72) * v76, type metadata accessor for TableColumnCollection.Entry);
          v67 += v68;
          --v64;
        }

        while (v64);

        v19 = v165;
        v1 = v166;
        v78 = v163;
      }

      else
      {

        v78 = v163;
        v65 = MEMORY[0x1E69E7CC0];
      }

      *&v175[0] = v65;
      BYTE8(v176) = 1;
      v35 = MEMORY[0x1E69E7D40];
      v79 = v162;
      LOBYTE(v47) = v155;
      v53 = v153;
      v52 = v154;
      v54 = v151;
      v55 = v152;
      if (!v162)
      {
        goto LABEL_29;
      }
    }

    else
    {
      outlined init with copy of TableColumnCollection(&v203, v175);
      v35 = MEMORY[0x1E69E7D40];
      v79 = v162;
      v78 = v163;
      if (!v162)
      {
        goto LABEL_29;
      }
    }

    v80 = v54;
    v81 = v55;
    v82 = v53;
    v83 = v79;
    v84 = v47;
    v47 = v52;
    v85 = Array<A>.withResolvedOffsets.getter(v78, v77);

    v78 = v85;
    v52 = v47;
    LOBYTE(v47) = v84;
    v79 = v83;
    v53 = v82;
    v55 = v81;
    v54 = v80;
    v19 = v165;
    v35 = MEMORY[0x1E69E7D40];
LABEL_29:
    *&v177 = v78;
    outlined init with copy of TableRowList(v202, v171);
    TableSections.init(list:)(v171, &v172);
    outlined destroy of TableColumnCollection(&v203);
    __swift_destroy_boxed_opaque_existential_1(v201);
    outlined destroy of TableRowList(v202);
    BYTE8(v177) = v47 & 1;
    *&v178 = v160;
    *(&v178 + 1) = v159;
    *&v179 = v158;
    *(&v179 + 1) = v52;
    *&v180[0] = v53;
    *(&v180[0] + 1) = v55;
    *&v180[1] = v54;
    BYTE8(v180[1]) = v157;
    BYTE10(v180[1]) = v79;
    BYTE9(v180[1]) = v156;
    v207 = v175[1];
    v208 = v176;
    v203 = v172;
    v204 = v173;
    v206 = v175[0];
    v205 = v174;
    v211 = v179;
    v212[0] = v180[0];
    *(v212 + 11) = *(v180 + 11);
    v210 = v178;
    v209 = v177;
    if (!AGGraphGetOutputValue())
    {
      outlined init with copy of TableDataSourceAdaptor(&v203, v193);
      outlined init with copy of UpdateCollectionViewTableCoordinator(v1, &v213);
      type metadata accessor for Binding<EditMode>?(0, &lazy cache variable for type metadata for Binding<AnySelectionManager>?, &lazy cache variable for type metadata for Binding<AnySelectionManager>, &type metadata for AnySelectionManager);
      v86 = AGGraphGetValue();
      outlined init with copy of Binding<AnySelectionManager>?(v86, v181, &lazy cache variable for type metadata for Binding<AnySelectionManager>?, &lazy cache variable for type metadata for Binding<AnySelectionManager>, &type metadata for AnySelectionManager, type metadata accessor for Binding<EditMode>?);
      outlined destroy of UpdateCollectionViewTableCoordinator(&v213);
      outlined init with copy of UpdateCollectionViewTableCoordinator(v1, &v194);
      type metadata accessor for Binding<EditMode>?(0, &lazy cache variable for type metadata for Binding<EditMode>?, &lazy cache variable for type metadata for Binding<EditMode>, &type metadata for EditMode);
      v87 = AGGraphGetValue();
      v88 = *v87;
      v89 = *(v87 + 8);
      v90 = *(v87 + 16);
      outlined copy of Binding<Int>?(*v87, v89);
      outlined destroy of UpdateCollectionViewTableCoordinator(&v194);
      v91 = objc_allocWithZone(v19);
      *(v91 + *((*MEMORY[0x1E69E7D40] & *v91) + 0x348)) = 0;
      outlined init with copy of TableDataSourceAdaptor(v193, &v183);
      outlined init with copy of Binding<AnySelectionManager>?(v181, &v172, &lazy cache variable for type metadata for Binding<AnySelectionManager>?, &lazy cache variable for type metadata for Binding<AnySelectionManager>, &type metadata for AnySelectionManager, type metadata accessor for Binding<EditMode>?);
      v92 = v89;
      v35 = MEMORY[0x1E69E7D40];
      v93 = v90;
      v1 = v166;
      v94 = specialized UICollectionViewListCoordinatorBase.init(dataSource:selection:editMode:transaction:)(&v183, &v172, v88, v92, v93, 1);
      outlined destroy of Binding<AnySelectionManager>?(v181, &lazy cache variable for type metadata for Binding<AnySelectionManager>?, &lazy cache variable for type metadata for Binding<AnySelectionManager>, &type metadata for AnySelectionManager, type metadata accessor for Binding<EditMode>?);
      outlined destroy of TableDataSourceAdaptor(v193);
      *&v213 = v94;
      AGGraphSetOutputValue();
    }

    v162 = (AGGraphGetOutputValue() == 0) | v164;
    v191 = v211;
    v192[0] = v212[0];
    *(v192 + 11) = *(v212 + 11);
    v187 = v207;
    v188 = v208;
    v189 = v209;
    v190 = v210;
    v183 = v203;
    v184 = v204;
    v185 = v205;
    v186 = v206;
    goto LABEL_32;
  }

  if (*(v1 + 120))
  {
    v163 = *(v1 + 192);

    goto LABEL_15;
  }

LABEL_50:
  __break(1u);
}

void specialized implicit closure #6 in UpdateCollectionViewTableCoordinator.updateValue()(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1 + *(type metadata accessor for TableCellFormula(0) + 20);
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(v4 + 32);
  outlined copy of TableColumnCustomizationID.Base(*v4, v6, v7, v8, v9);
  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  *(a2 + 24) = v8;
  *(a2 + 32) = v9;
}

uint64_t key path getter for ListUpdate.inverse : <A>ListUpdate<A.SectionIDs.Index, Int>@<X0>(char *x8_0@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9[0] = AssociatedTypeWitness;
  v9[1] = MEMORY[0x1E69E6530];
  v9[2] = AssociatedConformanceWitness;
  v9[3] = MEMORY[0x1E69E6548];
  v7 = type metadata accessor for ListUpdate(0, v9);
  return ListUpdate.inverse.getter(v7, x8_0);
}

unint64_t *specialized ShadowListUpdateRecorder.applyUpdates<A>(_:to:)(unint64_t *result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if ((a3 & 0x8000000000000000) != 0)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v5 = *(v4 + 40);
  if (*(v5 + 16) <= a3)
  {
LABEL_49:
    __break(1u);
    return result;
  }

  v6 = *(a2 + 16);
  if (!v6)
  {
    goto LABEL_47;
  }

  v7 = *(v5 + 96 * a3 + 112);
  v8 = a2 + 40 * v6 + 8;
  while (1)
  {
    v9 = *(v8 - 16);
    v10 = *(v8 - 8);
    v11 = *(v8 + 16);
    if (v11 == 3)
    {
      if (v9 == a3)
      {
        v17 = a4 >= v10 && v7 < a4;
        a4 -= v17;
      }

      goto LABEL_6;
    }

    if (v11 != 4)
    {
      break;
    }

    if (v9 == a3 && a4 >= v10 && __OFADD__(a4++, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

LABEL_6:
    v8 -= 40;
    if (!--v6)
    {
      goto LABEL_47;
    }
  }

  if (v11 != 5)
  {
    goto LABEL_6;
  }

  v13 = *v8;
  v12 = *(v8 + 8);
  if (v9 == a3)
  {
    if (v10 == a4)
    {
      a4 = *(v8 + 8);
      a3 = *v8;
      goto LABEL_6;
    }

    v20 = v10 < a4 && v7 < a4;
    v18 = a4 - v20;
    if (v12 >= v10)
    {
      goto LABEL_39;
    }

LABEL_30:
    if (v13 != a3)
    {
      goto LABEL_5;
    }

    goto LABEL_43;
  }

  v18 = a4;
  if (v13 != a3)
  {
    goto LABEL_6;
  }

  if (v12 < v10)
  {
    goto LABEL_30;
  }

LABEL_39:
  if (v13 != a3)
  {
LABEL_5:
    a4 = v18;
    goto LABEL_6;
  }

  if (v9 == a3)
  {
    if (v12 < a4)
    {
      goto LABEL_44;
    }

    goto LABEL_5;
  }

LABEL_43:
  if (a4 < v12)
  {
    goto LABEL_5;
  }

LABEL_44:
  a4 = v18 + 1;
  if (!__OFADD__(v18, 1))
  {
    goto LABEL_6;
  }

  __break(1u);
LABEL_47:
  *result = a3;
  return a4;
}

unint64_t *specialized ShadowListUpdateRecorder.applyUpdates<A>(_:to:)(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x8000000000000000) != 0)
  {
    goto LABEL_68;
  }

  v6 = *(v5 + 40);
  if (*(v6 + 16) > a4)
  {
    v7 = *(a2 + 16);
    v8 = *(a3 + 16);
    v9 = v7 == 0;
    if (!(v7 | v8))
    {
LABEL_4:
      *result = a4;
      return a5;
    }

    v10 = 0;
    v11 = *(v6 + 96 * a4 + 112);
    v12 = a2 + 32;
    v13 = a3 + 32;
    while (1)
    {
      if (v9)
      {
        if (v10 >= v8)
        {
          goto LABEL_64;
        }

        if (__OFADD__(v10, 1))
        {
          goto LABEL_66;
        }

        v15 = (v13 + 40 * v10);
        v9 = 1;
        ++v10;
      }

      else
      {
        if (v10 >= v7)
        {
          __break(1u);
LABEL_64:
          __break(1u);
LABEL_65:
          __break(1u);
LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
LABEL_68:
          __break(1u);
          goto LABEL_69;
        }

        v16 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_65;
        }

        v15 = (v12 + 40 * v10);
        v9 = v16 == v7;
        if (v16 == v7)
        {
          v10 = 0;
        }

        else
        {
          ++v10;
        }
      }

      v17 = *(v15 + 32);
      v18 = *v15;
      v19 = v15[1];
      if (v17 == 3)
      {
        if (v18 == a4)
        {
          v25 = a5 >= v19 && v11 < a5;
          a5 -= v25;
        }

        goto LABEL_7;
      }

      if (v17 != 4)
      {
        break;
      }

      if (v18 == a4 && a5 >= v19 && __OFADD__(a5++, 1))
      {
        goto LABEL_67;
      }

LABEL_7:
      if (v10 == v8 && v9)
      {
        goto LABEL_4;
      }
    }

    if (v17 != 5)
    {
      goto LABEL_7;
    }

    v21 = v15[2];
    v20 = v15[3];
    if (v18 == a4)
    {
      if (v19 == a5)
      {
        a5 = v15[3];
        a4 = v15[2];
        goto LABEL_7;
      }

      v29 = v19 < a5 && v11 < a5;
      v26 = a5 - v29;
      if (v20 >= v19)
      {
        goto LABEL_57;
      }
    }

    else
    {
      v26 = a5;
      if (v21 != a4)
      {
        goto LABEL_7;
      }

      if (v20 >= v19)
      {
LABEL_57:
        if (v21 == a4)
        {
          if (v18 == a4)
          {
            if (v20 < a5)
            {
              goto LABEL_47;
            }
          }

          else if (a5 >= v20)
          {
            goto LABEL_47;
          }
        }

LABEL_6:
        a5 = v26;
        goto LABEL_7;
      }
    }

    if (v21 == a4 && a5 >= v20)
    {
LABEL_47:
      a5 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        goto LABEL_70;
      }

      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
  return result;
}

uint64_t specialized ShadowListUpdateRecorder.applyUpdates<A>(_:to:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return a2;
  }

  for (i = a1 + 40 * v2; ; i -= 40)
  {
    v5 = *(i - 8);
    v6 = *(i + 24);
    if (!*(i + 24))
    {
      v12 = a2 > 0 && a2 >= v5;
      result = a2 - v12;
      goto LABEL_4;
    }

    if (v6 == 1)
    {
      break;
    }

    if (v6 != 2)
    {
      goto LABEL_3;
    }

    result = *i;
    if (v5 != a2)
    {
      v7 = a2 > 0 && v5 < a2;
      v8 = v7;
      v9 = a2 - v8;
      v10 = result >= v5 ? result < a2 : a2 >= result;
      result = v9;
      if (v10)
      {
        result = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_34;
        }
      }
    }

LABEL_4:
    a2 = result;
    if (!--v2)
    {
      return result;
    }
  }

  if (a2 < v5)
  {
LABEL_3:
    result = a2;
    goto LABEL_4;
  }

  result = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_34:
  __break(1u);
  return a2;
}

uint64_t _s7SwiftUI23ShadowSectionCollectionVyACyxGAA0C18ListUpdateRecorderVyxGcfCAA22TableDataSourceAdaptorV_Tt1g5@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(a1, a2, &lazy cache variable for type metadata for ShadowListUpdateRecorder<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListUpdateRecorder);
  v6 = *(a1[5] + 16);
  v8 = a1[22];
  v7 = a1[23];
  v9 = *(v7 + 16);
  v10 = *(v8 + 16);
  LOBYTE(v11) = v9 == 0;
  if (!(v9 | v10))
  {
LABEL_2:

    outlined destroy of ShadowListUpdateRecorder<TableDataSourceAdaptor>(a1, &lazy cache variable for type metadata for ShadowListUpdateRecorder<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListUpdateRecorder);

    *(a2 + 192) = v6;
    return result;
  }

  v12 = 0;
  while (1)
  {
    if (v11)
    {
      if (v12 >= v10)
      {
        goto LABEL_23;
      }

      if (__OFADD__(v12, 1))
      {
        goto LABEL_26;
      }

      v15 = (v8 + 64 + 40 * v12);
      v11 = 1;
      ++v12;
    }

    else
    {
      if (v12 >= v9)
      {
        goto LABEL_24;
      }

      v16 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_25;
      }

      v15 = (v7 + 64 + 40 * v12);
      v11 = v16 == v9;
      if (v16 == v9)
      {
        v12 = 0;
      }

      else
      {
        ++v12;
      }
    }

    v17 = *v15;
    if (v17 != 1)
    {
      break;
    }

    v13 = __OFADD__(v6++, 1);
    if (v13)
    {
      goto LABEL_27;
    }

LABEL_5:
    if (v12 == v10 && v11)
    {
      goto LABEL_2;
    }
  }

  if (v17)
  {
    goto LABEL_5;
  }

  v13 = __OFSUB__(v6--, 1);
  if (!v13)
  {
    goto LABEL_5;
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t _s7SwiftUI19ShadowRowCollectionV_7sectionACyxGAA0C18ListUpdateRecorderVyxG_10SectionIDs_5IndexQZtcfCAA22TableDataSourceAdaptorV_Tt2g5@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(a1, a3, &lazy cache variable for type metadata for ShadowListUpdateRecorder<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListUpdateRecorder);
  *(a3 + 224) = a2;
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_46;
  }

  v8 = a1[5];
  if (*(v8 + 16) <= a2)
  {
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
  }

  else
  {
    v9 = v8 + 96 * a2;
    result = *(v9 + 96);
    v10 = *(v9 + 104);
    v11 = *(v9 + 112);
    v12 = *(v9 + 120);
    *(a3 + 192) = result;
    *(a3 + 200) = v10;
    *(a3 + 208) = v11;
    *(a3 + 216) = v12;
    v14 = a1[22];
    v13 = a1[23];
    v15 = *(v13 + 16);
    v16 = *(v14 + 16);
    LOBYTE(v17) = v15 == 0;
    if (v15 | v16)
    {
      v18 = 0;
      do
      {
        if (v17)
        {
          if (v18 >= v16)
          {
            goto LABEL_41;
          }

          if (__OFADD__(v18, 1))
          {
            goto LABEL_44;
          }

          v21 = v14 + 32 + 40 * v18;
          v17 = 1;
          ++v18;
        }

        else
        {
          if (v18 >= v15)
          {
            goto LABEL_42;
          }

          v22 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            goto LABEL_43;
          }

          v21 = v13 + 32 + 40 * v18;
          v17 = v22 == v15;
          if (v22 == v15)
          {
            v18 = 0;
          }

          else
          {
            ++v18;
          }
        }

        v23 = *(v21 + 32);
        v24 = *v21;
        if (v23 == 5)
        {
          v26 = *(v21 + 16);
          if (v24 == a2)
          {
            if (v26 != a2)
            {
              v25 = __OFSUB__(v12--, 1);
              if (v25)
              {
                goto LABEL_48;
              }
            }
          }

          else if (v26 == a2)
          {
            v25 = __OFADD__(v12++, 1);
            if (v25)
            {
              goto LABEL_49;
            }
          }
        }

        else if (v23 == 4)
        {
          if (v24 == a2)
          {
            v25 = __OFADD__(v12++, 1);
            if (v25)
            {
              goto LABEL_45;
            }
          }
        }

        else if (v23 == 3 && v24 == a2)
        {
          v25 = __OFSUB__(v12--, 1);
          if (v25)
          {
            __break(1u);
LABEL_41:
            __break(1u);
LABEL_42:
            __break(1u);
LABEL_43:
            __break(1u);
LABEL_44:
            __break(1u);
LABEL_45:
            __break(1u);
LABEL_46:
            __break(1u);
            goto LABEL_47;
          }
        }
      }

      while (v18 != v16 || !v17);
    }

    outlined copy of ResolvedTableRowIDs.Storage(result, v10);

    outlined destroy of ShadowListUpdateRecorder<TableDataSourceAdaptor>(a1, &lazy cache variable for type metadata for ShadowListUpdateRecorder<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListUpdateRecorder);

    *(a3 + 232) = v12;
  }

  return result;
}

void specialized ShadowRowCollection.endIndex.getter()
{
  v1 = v0[26];
  v2 = v0[27];
  v3 = v1 + v2;
  if (__OFADD__(v1, v2))
  {
    __break(1u);
  }

  else
  {
    v5 = v0[22];
    v4 = v0[23];
    if (*(v4 + 16) | *(v5 + 16))
    {
      v6 = v0[28];

      specialized ShadowListUpdateRecorder.applyUpdates<A>(_:to:)(&v7, v4, v5, v6, v3);
    }
  }
}

unint64_t *specialized ShadowRowCollection.subscript.getter@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = result;
  v5 = v2[28];
  v7 = v2[22];
  v6 = v2[23];
  if (*(v6 + 16) | *(v7 + 16))
  {
    MEMORY[0x1EEE9AC00](result);
    lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor();
    KeyPath = swift_getKeyPath();

    updated = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF7SwiftUI22ConcatenatedCollectionVySayAF10ListUpdateOyS2iGGALG_AKs5NeverOTB503_s7d10UI24ShadowhI95RecorderV12initialIndexy10SectionIDs_0H0QZAGFAA0dE0OyAGSiGAJcfu_AA22TableDataSourceAdaptorV_TG5s7KeyPathCyA2KGTf1cn_nTf4ng_nTm(v6, v7, KeyPath);

    v3 = specialized ShadowListUpdateRecorder.applyUpdates<A>(_:to:)(&v18, updated, v5, v3);

    v5 = v18;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = v2[5];
  if (v5 >= *(v10 + 16))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v11 = v10 + 96 * v5;
  v14 = *(v11 + 96);
  v12 = v11 + 96;
  v13 = v14;
  v15 = *(v12 + 16);
  v16 = v3 - v15;
  if (__OFSUB__(v3, v15))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (*(v12 + 8) == 1)
  {
    if ((v16 & 0x8000000000000000) == 0)
    {
      if (v16 < v13[2])
      {
        return outlined init with copy of TableRowID(&v13[6 * v16 + 4], a2);
      }

      goto LABEL_16;
    }

LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    return result;
  }

  v17 = *(*v13 + 104);

  v17(v16);
  return outlined consume of Environment<[SceneID : KeyboardShortcut]>.Content(v13, 0);
}

uint64_t specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  return specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(a1, a2, a3, MEMORY[0x1E6969C28]);
}

{
  return specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(a1, a2, a3, type metadata accessor for ToolbarStorage.Entry);
}

uint64_t specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(unint64_t *a1, unint64_t *a2, uint64_t *a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a3;
  type metadata accessor for (index: Int, element: TableColumnCollection.Entry, id: TableColumnCustomizationID)(0, a4, a5);
  v9 = *(*(v8 - 8) + 72);
  if (!v9)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return;
  }

  if (v7 - v6 == 0x8000000000000000 && v9 == -1)
  {
    goto LABEL_17;
  }

  if (v5 < v6 || v5 >= v6 + (v7 - v6) / v9 * v9)
  {

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (v5 != v6)
  {

    swift_arrayInitWithTakeBackToFront();
  }
}

unint64_t *specialized closure #2 in implicit closure #1 in UICollectionViewListCoordinator.update(_:to:transaction:performDiff:)(unint64_t *result, uint64_t a2)
{
  v2 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = *(a2 + 40);
  if (v2 >= *(v3 + 16))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v4 = v3 + 96 * v2;
  v5 = *(v4 + 112);
  v6 = *(v4 + 120);
  v7 = __OFADD__(v5, v6);
  v8 = v5 + v6;
  if (!v7)
  {
    return (v5 != v8);
  }

LABEL_7:
  __break(1u);
  return result;
}

void specialized closure #1 in closure #1 in UICollectionViewListCoordinatorBase.pendingSelection.didset(void *a1@<X0>, BOOL *a3@<X8>)
{
  v4 = a1 + *((*MEMORY[0x1E69E7D40] & *a1) + 0x110);
  swift_beginAccess();
  v5 = *(v4 + 1);
  if (v5)
  {
    dispatch thunk of AnyLocation.set(_:transaction:)();
  }

  *a3 = v5 == 0;
}

unint64_t lazy protocol witness table accessor for type UpdateCollectionViewTableCoordinator and conformance UpdateCollectionViewTableCoordinator()
{
  result = lazy protocol witness table cache variable for type UpdateCollectionViewTableCoordinator and conformance UpdateCollectionViewTableCoordinator;
  if (!lazy protocol witness table cache variable for type UpdateCollectionViewTableCoordinator and conformance UpdateCollectionViewTableCoordinator)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UpdateCollectionViewTableCoordinator, &type metadata for UpdateCollectionViewTableCoordinator, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type UpdateCollectionViewTableCoordinator and conformance UpdateCollectionViewTableCoordinator);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type CollectionViewListScrollable<TableDataSourceAdaptor, AnySelectionManager> and conformance CollectionViewListScrollable<A, B>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *), const char *a4)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UICollectionViewListCoordinator<TableDataSourceAdaptor, AnySelectionManager>(255, a2, a3);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for Binding<EditMode>?(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    type metadata accessor for MutableBox<UInt32>(255, a3, a4, MEMORY[0x1E6981948]);
    v5 = type metadata accessor for Optional();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF7SwiftUI22ConcatenatedCollectionVySayAF10ListUpdateOyS2iGGALG_AKs5NeverOTB503_s7d10UI24ShadowhI95RecorderV12initialIndexy10SectionIDs_0H0QZAGFAA0dE0OyAGSiGAJcfu_AA22TableDataSourceAdaptorV_TG5s7KeyPathCyA2KGTf1cn_nTf4ng_nTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  v4 = v3 == 0;
  v18 = *(a2 + 16);
  v5 = specialized Collection.distance(from:to:)(0, v3 == 0, v18, 1, a1);
  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    return v6;
  }

  v7 = v5;
  v22 = MEMORY[0x1E69E7CC0];
  v8 = v5 & ~(v5 >> 63);
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
  v6 = v22;
  if (v3)
  {
    if ((v7 & 0x8000000000000000) == 0)
    {
      goto LABEL_6;
    }

    __break(1u);
  }

  if ((v7 & 0x8000000000000000) == 0)
  {
LABEL_6:
    v10 = 0;
    while (v8)
    {
      if (v4)
      {
        if (v10 >= v18)
        {
          goto LABEL_27;
        }
      }

      else if (v10 >= v3)
      {
        goto LABEL_28;
      }

      result = swift_getAtKeyPath();
      v11 = v19;
      v12 = v20;
      v14 = *(v22 + 16);
      v13 = *(v22 + 24);
      if (v14 >= v13 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
        v12 = v20;
        v11 = v19;
      }

      *(v22 + 16) = v14 + 1;
      v15 = v22 + 40 * v14;
      *(v15 + 32) = v11;
      *(v15 + 48) = v12;
      *(v15 + 64) = v21;
      v17 = __OFADD__(v10++, 1);
      if (v4)
      {
        if (v17)
        {
          goto LABEL_30;
        }

        v4 = 1;
      }

      else
      {
        if (v17)
        {
          goto LABEL_29;
        }

        v4 = v10 == v3;
        if (v10 == v3)
        {
          v10 = 0;
        }
      }

      --v8;
      if (!--v7)
      {
        return v6;
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
  }

  __break(1u);
  return result;
}