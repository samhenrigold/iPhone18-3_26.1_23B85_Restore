uint64_t getEnumTagSinglePayload for TableColumn.UnaryTableColumnList(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 40);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 84);
  v12 = *(v6 + 64);
  v13 = *(v10 + 80);
  if (v11 <= v8)
  {
    v14 = v8;
  }

  else
  {
    v14 = *(v10 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v15 = ((((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + v13 + 120;
  if (v14 >= a2)
  {
    goto LABEL_31;
  }

  v16 = ((((*(*(v9 - 8) + 64) + (v15 & ~v13) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 58;
  if (v16 <= 3)
  {
    v17 = ((a2 - v14 + 0xFFFF) >> 16) + 1;
  }

  else
  {
    v17 = 2;
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
      v20 = *(a1 + v16);
      if (!*(a1 + v16))
      {
        goto LABEL_31;
      }
    }

    else
    {
      v20 = *(a1 + v16);
      if (!v20)
      {
        goto LABEL_31;
      }
    }

LABEL_27:
    v22 = (v20 - 1) << (8 * v16);
    if (v16 <= 3)
    {
      v23 = *a1;
    }

    else
    {
      v22 = 0;
      v23 = *a1;
    }

    return v14 + (v23 | v22) + 1;
  }

  if (v19)
  {
    v20 = *(a1 + v16);
    if (*(a1 + v16))
    {
      goto LABEL_27;
    }
  }

LABEL_31:
  if (v8 >= v11)
  {
    if (v7 < 0x7FFFFFFF)
    {
      v26 = *((a1 + v12 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v26 >= 0xFFFFFFFF)
      {
        LODWORD(v26) = -1;
      }

      return (v26 + 1);
    }

    else
    {
      v25 = *(v6 + 48);

      return v25(a1, v7, v5);
    }
  }

  else
  {
    v24 = *(v10 + 48);

    return v24((a1 + v15) & ~v13);
  }
}

void storeEnumTagSinglePayload for TableColumn.UnaryTableColumnList(unsigned int *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 40);
  v8 = *(v7 - 8);
  v26 = v8;
  v9 = *(v8 + 84);
  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(type metadata accessor for UUID() - 8);
  v12 = *(v11 + 84);
  v13 = *(v8 + 64);
  if (v12 <= v10)
  {
    v14 = v10;
  }

  else
  {
    v14 = *(v11 + 84);
  }

  v15 = ((((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 120;
  v16 = *(v11 + 80);
  v17 = ((((*(v11 + 64) + ((v15 + v16) & ~v16) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 58;
  if (v14 >= a3)
  {
    v20 = 0;
    if (v14 >= a2)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (v17 <= 3)
    {
      v18 = ((a3 - v14 + 0xFFFF) >> 16) + 1;
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

    if (v14 >= a2)
    {
LABEL_20:
      if (v20 > 1)
      {
        if (v20 != 2)
        {
          *(a1 + v17) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_35;
        }

        *(a1 + v17) = 0;
      }

      else if (v20)
      {
        *(a1 + v17) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_35;
      }

      if (!a2)
      {
        return;
      }

LABEL_35:
      if (v10 >= v12)
      {
        if (v10 >= a2)
        {
          if (v9 < 0x7FFFFFFF)
          {
            v25 = ((a1 + v13 + 7) & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              *v25 = a2 & 0x7FFFFFFF;
              v25[1] = 0;
            }

            else
            {
              *v25 = (a2 - 1);
            }
          }

          else
          {
            v24 = *(v26 + 56);

            v24(a1, a2, v9, v7);
          }
        }

        else if (((((v13 + 7) & 0xFFFFFFF8) + 63) & 0xFFFFFFF8) != 0xFFFFFF88)
        {
          bzero(a1, v15);
          *a1 = ~v10 + a2;
        }
      }

      else
      {
        v23 = *(v11 + 56);

        v23((a1 + v15 + v16) & ~v16, a2);
      }

      return;
    }
  }

  v21 = ~v14 + a2;
  bzero(a1, v17);
  if (v17 <= 3)
  {
    v22 = HIWORD(v21) + 1;
  }

  else
  {
    v22 = 1;
  }

  if (v17 <= 3)
  {
    *a1 = v21;
    if (v20 > 1)
    {
LABEL_30:
      if (v20 == 2)
      {
        *(a1 + v17) = v22;
      }

      else
      {
        *(a1 + v17) = v22;
      }

      return;
    }
  }

  else
  {
    *a1 = v21;
    if (v20 > 1)
    {
      goto LABEL_30;
    }
  }

  if (v20)
  {
    *(a1 + v17) = v22;
  }
}

uint64_t static PlaybackButtonStyle<>.pill(dateStyle:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  v3 = *(result + 16);
  *a2 = *result;
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  return result;
}

void PillPlaybackButtonStyle._storage.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 1);
  v3 = v1[16];
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

void protocol witness for PlaybackButtonStyle._storage.getter in conformance PillPlaybackButtonStyle(uint64_t a1@<X8>)
{
  v2 = *(v1 + 1);
  v3 = v1[16];
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

uint64_t getEnumTagSinglePayload for PillPlaybackButtonStyle(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = 3;
  }

  else
  {
    v4 = *(a1 + 16);
  }

  v5 = v4 - 4;
  if (v3 < 3)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for PillPlaybackButtonStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 3;
    }
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for PillPlaybackButtonStyleBody(void *a1, uint64_t *a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v16 = *a2;
    *a1 = *a2;
    v4 = (v16 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = *a2;
    v8 = *(a2 + 8);
    outlined copy of Environment<Bool>.Content();
    *v4 = v7;
    *(v4 + 8) = v8;
    v9 = *(a3 + 20);
    v10 = v4 + v9;
    v11 = a2 + v9;
    type metadata accessor for ClosedRange<Date>(0);
    v13 = v12;
    v14 = *(v12 - 8);
    if ((*(v14 + 48))(v11, 1, v12))
    {
      type metadata accessor for ClosedRange<Date>?(0);
      memcpy(v10, v11, *(*(v15 - 8) + 64));
    }

    else
    {
      v17 = type metadata accessor for Date();
      v18 = *(*(v17 - 8) + 16);
      v18(v10, v11, v17);
      v18(&v10[*(v13 + 36)], &v11[*(v13 + 36)], v17);
      (*(v14 + 56))(v10, 0, 1, v13);
    }

    v19 = type metadata accessor for PlaybackButton.Configuration(0);
    v20 = v19[5];
    v21 = type metadata accessor for Date();
    v22 = *(v21 - 8);
    if ((*(v22 + 48))(&v11[v20], 2, v21))
    {
      v23 = type metadata accessor for PlaybackButton.State(0);
      memcpy(&v10[v20], &v11[v20], *(*(v23 - 8) + 64));
    }

    else
    {
      (*(v22 + 16))(&v10[v20], &v11[v20], v21);
      (*(v22 + 56))(&v10[v20], 0, 2, v21);
    }

    v24 = v19[6];
    v25 = &v10[v24];
    v26 = &v11[v24];
    v27 = *(v26 + 1);
    *v25 = *v26;
    *(v25 + 1) = v27;
    v10[v19[7]] = v11[v19[7]];
    v10[v19[8]] = v11[v19[8]];
    *&v10[v19[9]] = *&v11[v19[9]];
    v28 = v19[10];
    v29 = &v10[v28];
    v30 = &v11[v28];
    v31 = *&v11[v28];
    v32 = *&v11[v28 + 8];
    v33 = v30[16];

    outlined copy of Environment<AppIntentExecutor?>.Content(v31, v32, v33);
    *v29 = v31;
    *(v29 + 1) = v32;
    v29[16] = v33;
    v34 = *(v30 + 5);
    v35 = *(v30 + 24);
    *(v29 + 24) = v35;
    *(v29 + 5) = v34;
    v36 = *(a3 + 24);
    v37 = v4 + v36;
    v38 = a2 + v36;
    v37[16] = v38[16];
    *v37 = *v38;
    v39 = v35;
  }

  return v4;
}

uint64_t initializeWithCopy for PillPlaybackButtonStyleBody(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  outlined copy of Environment<Bool>.Content();
  *a1 = v6;
  *(a1 + 8) = v7;
  v8 = *(a3 + 20);
  v9 = (a1 + v8);
  v10 = a2 + v8;
  type metadata accessor for ClosedRange<Date>(0);
  v12 = v11;
  v13 = *(v11 - 8);
  if ((*(v13 + 48))(v10, 1, v11))
  {
    type metadata accessor for ClosedRange<Date>?(0);
    memcpy(v9, v10, *(*(v14 - 8) + 64));
  }

  else
  {
    v15 = type metadata accessor for Date();
    v16 = *(*(v15 - 8) + 16);
    v16(v9, v10, v15);
    v16(&v9[*(v12 + 36)], &v10[*(v12 + 36)], v15);
    (*(v13 + 56))(v9, 0, 1, v12);
  }

  v17 = type metadata accessor for PlaybackButton.Configuration(0);
  v18 = v17[5];
  v19 = type metadata accessor for Date();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(&v10[v18], 2, v19))
  {
    v21 = type metadata accessor for PlaybackButton.State(0);
    memcpy(&v9[v18], &v10[v18], *(*(v21 - 8) + 64));
  }

  else
  {
    (*(v20 + 16))(&v9[v18], &v10[v18], v19);
    (*(v20 + 56))(&v9[v18], 0, 2, v19);
  }

  v22 = v17[6];
  v23 = &v9[v22];
  v24 = &v10[v22];
  v25 = *(v24 + 1);
  *v23 = *v24;
  *(v23 + 1) = v25;
  v9[v17[7]] = v10[v17[7]];
  v9[v17[8]] = v10[v17[8]];
  *&v9[v17[9]] = *&v10[v17[9]];
  v26 = v17[10];
  v27 = &v9[v26];
  v28 = &v10[v26];
  v29 = *&v10[v26];
  v30 = *&v10[v26 + 8];
  v31 = v28[16];

  outlined copy of Environment<AppIntentExecutor?>.Content(v29, v30, v31);
  *v27 = v29;
  *(v27 + 1) = v30;
  v27[16] = v31;
  v32 = *(v28 + 5);
  v33 = *(v28 + 24);
  *(v27 + 24) = v33;
  *(v27 + 5) = v32;
  v34 = *(a3 + 24);
  v35 = a1 + v34;
  v36 = a2 + v34;
  *(v35 + 16) = v36[16];
  *v35 = *v36;
  v37 = v33;

  return a1;
}

uint64_t assignWithCopy for PillPlaybackButtonStyleBody(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  outlined copy of Environment<Bool>.Content();
  v8 = *a1;
  v9 = *(a1 + 8);
  *a1 = v6;
  *(a1 + 8) = v7;
  outlined consume of Environment<Bool>.Content(v8, v9);
  v56 = a3;
  v57 = a2;
  v10 = *(a3 + 20);
  v11 = (a1 + v10);
  v12 = a2 + v10;
  type metadata accessor for ClosedRange<Date>(0);
  v14 = v13;
  v15 = *(v13 - 8);
  v16 = *(v15 + 48);
  v17 = v16(v11, 1, v13);
  v18 = v16(v12, 1, v14);
  if (v17)
  {
    if (!v18)
    {
      v19 = type metadata accessor for Date();
      v20 = *(*(v19 - 8) + 16);
      v20(v11, v12, v19);
      v20(&v11[*(v14 + 36)], &v12[*(v14 + 36)], v19);
      (*(v15 + 56))(v11, 0, 1, v14);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v18)
  {
    _sSNy10Foundation4DateVGWOhTm_0(v11, type metadata accessor for ClosedRange<Date>);
LABEL_6:
    type metadata accessor for ClosedRange<Date>?(0);
    memcpy(v11, v12, *(*(v21 - 8) + 64));
    goto LABEL_7;
  }

  v54 = type metadata accessor for Date();
  v55 = *(*(v54 - 8) + 24);
  v55(v11, v12, v54);
  v55(&v11[*(v14 + 36)], &v12[*(v14 + 36)], v54);
LABEL_7:
  v22 = type metadata accessor for PlaybackButton.Configuration(0);
  v23 = v22[5];
  v24 = type metadata accessor for Date();
  v25 = *(v24 - 8);
  v26 = *(v25 + 48);
  v27 = v26(&v11[v23], 2, v24);
  v28 = v26(&v12[v23], 2, v24);
  if (!v27)
  {
    if (!v28)
    {
      (*(v25 + 24))(&v11[v23], &v12[v23], v24);
      goto LABEL_13;
    }

    (*(v25 + 8))(&v11[v23], v24);
    goto LABEL_12;
  }

  if (v28)
  {
LABEL_12:
    v29 = type metadata accessor for PlaybackButton.State(0);
    memcpy(&v11[v23], &v12[v23], *(*(v29 - 8) + 64));
    goto LABEL_13;
  }

  (*(v25 + 16))(&v11[v23], &v12[v23], v24);
  (*(v25 + 56))(&v11[v23], 0, 2, v24);
LABEL_13:
  v30 = v22[6];
  v31 = &v11[v30];
  v32 = &v12[v30];
  *v31 = *v32;
  *(v31 + 1) = *(v32 + 1);

  v11[v22[7]] = v12[v22[7]];
  v11[v22[8]] = v12[v22[8]];
  v33 = v22[9];
  v34 = &v11[v33];
  v35 = &v12[v33];
  *v34 = *v35;
  *(v34 + 1) = *(v35 + 1);
  v36 = v22[10];
  v37 = &v11[v36];
  v38 = &v12[v36];
  v39 = *&v12[v36];
  v40 = *&v12[v36 + 8];
  v41 = v38[16];
  outlined copy of Environment<AppIntentExecutor?>.Content(v39, v40, v41);
  v42 = *v37;
  v43 = *(v37 + 1);
  v44 = v37[16];
  *v37 = v39;
  *(v37 + 1) = v40;
  v37[16] = v41;
  outlined consume of Environment<AppIntentExecutor?>.Content(v42, v43, v44);
  v45 = *(v38 + 3);
  v46 = *(v37 + 3);
  *(v37 + 3) = v45;
  v47 = v45;

  v48 = *(v38 + 5);
  *(v37 + 4) = *(v38 + 4);
  *(v37 + 5) = v48;

  v49 = *(v56 + 24);
  v50 = a1 + v49;
  v51 = v57 + v49;
  *v50 = *v51;
  v52 = *(v51 + 1);
  *(v50 + 16) = v51[16];
  *(v50 + 8) = v52;
  return a1;
}

uint64_t initializeWithTake for PillPlaybackButtonStyleBody(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v6 = *(a3 + 20);
  v7 = (a1 + v6);
  v8 = (a2 + v6);
  type metadata accessor for ClosedRange<Date>(0);
  v10 = v9;
  v11 = *(v9 - 8);
  if ((*(v11 + 48))(v8, 1, v9))
  {
    type metadata accessor for ClosedRange<Date>?(0);
    memcpy(v7, v8, *(*(v12 - 8) + 64));
  }

  else
  {
    v13 = type metadata accessor for Date();
    v14 = *(*(v13 - 8) + 32);
    v14(v7, v8, v13);
    v14(&v7[*(v10 + 36)], &v8[*(v10 + 36)], v13);
    (*(v11 + 56))(v7, 0, 1, v10);
  }

  v15 = type metadata accessor for PlaybackButton.Configuration(0);
  v16 = v15[5];
  v17 = type metadata accessor for Date();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(&v8[v16], 2, v17))
  {
    v19 = type metadata accessor for PlaybackButton.State(0);
    memcpy(&v7[v16], &v8[v16], *(*(v19 - 8) + 64));
  }

  else
  {
    (*(v18 + 32))(&v7[v16], &v8[v16], v17);
    (*(v18 + 56))(&v7[v16], 0, 2, v17);
  }

  *&v7[v15[6]] = *&v8[v15[6]];
  v7[v15[7]] = v8[v15[7]];
  v7[v15[8]] = v8[v15[8]];
  *&v7[v15[9]] = *&v8[v15[9]];
  v20 = v15[10];
  v21 = &v7[v20];
  v22 = &v8[v20];
  v23 = *(v22 + 1);
  *v21 = *v22;
  *(v21 + 1) = v23;
  *(v21 + 2) = *(v22 + 2);
  v24 = *(a3 + 24);
  v25 = a1 + v24;
  v26 = a2 + v24;
  *v25 = *v26;
  *(v25 + 16) = *(v26 + 16);
  return a1;
}

uint64_t assignWithTake for PillPlaybackButtonStyleBody(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *a1;
  v9 = *(a1 + 8);
  *a1 = v6;
  *(a1 + 8) = v7;
  outlined consume of Environment<Bool>.Content(v8, v9);
  v48 = a3;
  v49 = a2;
  v10 = *(a3 + 20);
  v11 = (a1 + v10);
  v12 = a2 + v10;
  type metadata accessor for ClosedRange<Date>(0);
  v14 = v13;
  v15 = *(v13 - 8);
  v16 = *(v15 + 48);
  v17 = v16(v11, 1, v13);
  v18 = v16(v12, 1, v14);
  if (v17)
  {
    if (!v18)
    {
      v19 = type metadata accessor for Date();
      v20 = *(*(v19 - 8) + 32);
      v20(v11, v12, v19);
      v20(&v11[*(v14 + 36)], &v12[*(v14 + 36)], v19);
      (*(v15 + 56))(v11, 0, 1, v14);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v18)
  {
    _sSNy10Foundation4DateVGWOhTm_0(v11, type metadata accessor for ClosedRange<Date>);
LABEL_6:
    type metadata accessor for ClosedRange<Date>?(0);
    memcpy(v11, v12, *(*(v21 - 8) + 64));
    goto LABEL_7;
  }

  v46 = type metadata accessor for Date();
  v47 = *(*(v46 - 8) + 40);
  v47(v11, v12, v46);
  v47(&v11[*(v14 + 36)], &v12[*(v14 + 36)], v46);
LABEL_7:
  v22 = type metadata accessor for PlaybackButton.Configuration(0);
  v23 = v22[5];
  v24 = type metadata accessor for Date();
  v25 = *(v24 - 8);
  v26 = *(v25 + 48);
  v27 = v26(&v11[v23], 2, v24);
  v28 = v26(&v12[v23], 2, v24);
  if (!v27)
  {
    if (!v28)
    {
      (*(v25 + 40))(&v11[v23], &v12[v23], v24);
      goto LABEL_13;
    }

    (*(v25 + 8))(&v11[v23], v24);
    goto LABEL_12;
  }

  if (v28)
  {
LABEL_12:
    v29 = type metadata accessor for PlaybackButton.State(0);
    memcpy(&v11[v23], &v12[v23], *(*(v29 - 8) + 64));
    goto LABEL_13;
  }

  (*(v25 + 32))(&v11[v23], &v12[v23], v24);
  (*(v25 + 56))(&v11[v23], 0, 2, v24);
LABEL_13:
  v30 = v22[6];
  v31 = &v11[v30];
  v32 = &v12[v30];
  v34 = *v32;
  v33 = *(v32 + 1);
  *v31 = v34;
  *(v31 + 1) = v33;

  v11[v22[7]] = v12[v22[7]];
  v11[v22[8]] = v12[v22[8]];
  *&v11[v22[9]] = *&v12[v22[9]];
  v35 = v22[10];
  v36 = &v11[v35];
  v37 = &v12[v35];
  LOBYTE(v35) = v12[v35 + 16];
  v38 = *v36;
  v39 = *(v36 + 1);
  v40 = v36[16];
  *v36 = *v37;
  v36[16] = v35;
  outlined consume of Environment<AppIntentExecutor?>.Content(v38, v39, v40);
  v41 = *(v36 + 3);
  *(v36 + 3) = *(v37 + 3);

  *(v36 + 2) = *(v37 + 2);

  v42 = *(v48 + 24);
  v43 = a1 + v42;
  v44 = v49 + v42;
  *v43 = *v44;
  *(v43 + 8) = *(v44 + 1);
  *(v43 + 16) = v44[16];
  return a1;
}

uint64_t PillPlaybackButtonStyleBody.body.getter@<X0>(uint64_t a1@<X8>)
{
  v64 = a1;
  v2 = type metadata accessor for PlaybackButton.Configuration(0);
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AccessibilityPlaybackButtonModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<IDView<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, PlaybackButton.Phase>, _FrameLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedCon(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<IDView<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, PlaybackButton.Phase>, _FrameLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent(0);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<IDView<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, PlaybackButton.Phase>, _FrameLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent(0);
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v12 = static VerticalAlignment.center.getter();
  *(v12 + 1) = 0;
  v12[16] = 0;
  type metadata accessor for _VariadicView.Tree<_HStackLayout, TupleView<(ModifiedContent<ModifiedContent<IDView<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, PlaybackButton.Phase>, _FrameLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, (0);
  closure #1 in PillPlaybackButtonStyleBody.body.getter(&v12[*(v17 + 44)]);
  EdgeInsets.init(_all:)();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  type metadata accessor for ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<IDView<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, PlaybackButton.Phase>, _FrameLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _Bl(0);
  v27 = &v12[*(v26 + 36)];
  *v27 = 8;
  *(v27 + 1) = v19;
  *(v27 + 2) = v21;
  *(v27 + 3) = v23;
  *(v27 + 4) = v25;
  v27[40] = 0;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  type metadata accessor for ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<IDView<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, PlaybackButton.Phase>, _FrameLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Caps(0);
  v29 = &v12[*(v28 + 36)];
  v30 = v75[3];
  *v29 = v75[2];
  *(v29 + 1) = v30;
  *(v29 + 2) = v75[4];
  PillPlaybackButtonStyleBody.platter.getter(v74);
  v72 = v74[6];
  v73[0] = v75[0];
  *(v73 + 9) = *(v75 + 9);
  v68 = v74[2];
  v69 = v74[3];
  v70 = v74[4];
  v71 = v74[5];
  v66 = v74[0];
  v67 = v74[1];
  v31 = static Alignment.center.getter();
  v32 = v72;
  v33 = v73[0];
  v81 = v72;
  v82 = v73[0];
  v34 = v73[1];
  v83 = v73[1];
  v35 = v68;
  v36 = v69;
  v77 = v68;
  v78 = v69;
  v37 = v71;
  v39 = v70;
  v38 = v71;
  v79 = v70;
  v80 = v71;
  v40 = v67;
  v42 = v66;
  v41 = v67;
  v76[0] = v66;
  v76[1] = v67;
  *&v84 = v31;
  *(&v84 + 1) = v43;
  v44 = &v12[*(v10 + 44)];
  v45 = v73[0];
  *(v44 + 6) = v72;
  *(v44 + 7) = v45;
  v46 = v84;
  *(v44 + 8) = v83;
  *(v44 + 9) = v46;
  v47 = v78;
  v48 = v79;
  v49 = v76[0];
  *(v44 + 2) = v77;
  *(v44 + 3) = v47;
  *(v44 + 4) = v48;
  *(v44 + 5) = v37;
  *v44 = v49;
  *(v44 + 1) = v40;
  v85[6] = v32;
  v85[7] = v33;
  v85[8] = v34;
  v85[2] = v35;
  v85[3] = v36;
  v85[4] = v39;
  v85[5] = v38;
  v85[0] = v42;
  v85[1] = v41;
  v86 = v31;
  v87 = v43;
  outlined init with copy of _BackgroundModifier<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>?)>>(v76, v65, type metadata accessor for _BackgroundModifier<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>?)>>);
  _sSNy10Foundation4DateVGWOhTm_0(v85, type metadata accessor for _BackgroundModifier<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>?)>>);
  v50 = type metadata accessor for PillPlaybackButtonStyleBody(0);
  v51 = v1 + *(v50 + 20);
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<IDView<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, PlaybackButton.Phase>, _FrameLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent(v12, v16, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<IDView<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, PlaybackButton.Phase>, _FrameLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent);
  v52 = &v16[*(v14 + 44)];
  v53 = v65[5];
  *(v52 + 4) = v65[4];
  *(v52 + 5) = v53;
  *(v52 + 6) = v65[6];
  v54 = v65[1];
  *v52 = v65[0];
  *(v52 + 1) = v54;
  v55 = v65[3];
  *(v52 + 2) = v65[2];
  *(v52 + 3) = v55;
  v56 = (v1 + *(v50 + 24));
  v57 = *v56;
  v58 = *(v56 + 1);
  LOBYTE(v14) = v56[16];
  outlined init with copy of _BackgroundModifier<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>?)>>(v51, v5, type metadata accessor for PlaybackButton.Configuration);
  outlined init with copy of _BackgroundModifier<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>?)>>(&v5[*(v3 + 28)], v8, type metadata accessor for PlaybackButton.State);
  type metadata accessor for AccessibilityPlaybackButtonModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<IDView<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, PlaybackButton.Phase>, _FrameLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedCon( 0,  &lazy cache variable for type metadata for AccessibilityPlaybackButtonModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<IDView<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, PlaybackButton.Phase>, _FrameLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayou,  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<IDView<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, PlaybackButton.Phase>, _FrameLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent,  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<IDView<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, PlaybackButton.Phase>, _FrameLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedCont,  type metadata accessor for AccessibilityPlaybackButtonModifier.Configuration);
  v60 = v59;
  outlined init with copy of _BackgroundModifier<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>?)>>(v5, &v8[*(v59 + 40)], type metadata accessor for ClosedRange<Date>?);
  _sSNy10Foundation4DateVGWOhTm_0(v5, type metadata accessor for PlaybackButton.Configuration);
  v61 = &v8[*(v60 + 36)];
  *v61 = v57;
  *(v61 + 1) = v58;
  v61[16] = v14;
  specialized AccessibilityPlaybackButtonModifier.body(content:)(v16, v64);
  _sSNy10Foundation4DateVGWOhTm_0(v8, type metadata accessor for AccessibilityPlaybackButtonModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<IDView<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, PlaybackButton.Phase>, _FrameLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedCon);
  return _sSNy10Foundation4DateVGWOhTm_0(v16, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<IDView<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, PlaybackButton.Phase>, _FrameLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent);
}

uint64_t closure #1 in PillPlaybackButtonStyleBody.body.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>?, _PaddingLayout>, _PaddingLayout>, _FrameLayout>(0);
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2);
  v67 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v62 - v6;
  PillPlaybackButtonStyleBody.playbackStateImage.getter(&v111);
  v85 = v119;
  v86 = v120;
  v87 = v121;
  v81 = v115;
  v82 = v116;
  v83 = v117;
  v84 = v118;
  v77 = v111;
  v78 = v112;
  v79 = v113;
  v80 = v114;
  EdgeInsets.init(_all:)();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  PillPlaybackButtonStyleBody.resolvedProgressView.getter(v7);
  EdgeInsets.init(_all:)();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  type metadata accessor for ModifiedContent<_ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>?, _PaddingLayout>(0);
  v25 = &v7[*(v24 + 36)];
  *v25 = 2;
  *(v25 + 1) = v17;
  *(v25 + 2) = v19;
  *(v25 + 3) = v21;
  *(v25 + 4) = v23;
  v25[40] = 0;
  EdgeInsets.init(_all:)();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  type metadata accessor for ModifiedContent<ModifiedContent<_ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>?, _PaddingLayout>, _PaddingLayout>(0);
  v35 = &v7[*(v34 + 36)];
  v66 = v7;
  *v35 = 8;
  *(v35 + 1) = v27;
  *(v35 + 2) = v29;
  *(v35 + 3) = v31;
  *(v35 + 4) = v33;
  v35[40] = 0;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v36 = &v7[*(v3 + 44)];
  v37 = v74;
  *v36 = v73;
  *(v36 + 1) = v37;
  *(v36 + 2) = v75;
  PillPlaybackButtonStyleBody.label.getter(&v111);
  v38 = v111;
  v63 = *(&v111 + 1);
  v64 = v111;
  v39 = v112;
  v40 = BYTE2(v113);
  v41 = v113;
  v42 = static Font.subheadline.getter();
  v65 = v42;
  KeyPath = swift_getKeyPath();
  v88 = v40;
  v89 = v38;
  v90 = v39;
  LOWORD(v91) = v41;
  BYTE2(v91) = v40;
  *(&v91 + 1) = KeyPath;
  *&v92 = v42;
  static Font.Weight.semibold.getter();
  type metadata accessor for ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<Text, Text>, Text>, Text>, _EnvironmentKeyWritingModifier<Font?>>(0);
  lazy protocol witness table accessor for type ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<Text, Text>, Text>, Text>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
  View.fontWeight(_:)();
  outlined consume of _ConditionalContent<_ConditionalContent<_ConditionalContent<Text, Text>, Text>, Text>.Storage(v64, v63, v39, *(&v39 + 1), v41, v40);

  v70 = v113;
  v71 = v114;
  v72 = v115;
  v68 = v111;
  v69 = v112;
  v44 = static Color.white.getter();
  v45 = swift_getKeyPath();
  LOBYTE(v111) = 0;
  v47 = v66;
  v46 = v67;
  outlined init with copy of _BackgroundModifier<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>?)>>(v66, v67, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>?, _PaddingLayout>, _PaddingLayout>, _FrameLayout>);
  v97 = v85;
  v98 = v86;
  *&v99 = v87;
  v93 = v81;
  v94 = v82;
  v95 = v83;
  v96 = v84;
  v89 = v77;
  v90 = v78;
  v91 = v79;
  v92 = v80;
  BYTE8(v99) = 2;
  *(&v99 + 9) = *v76;
  HIDWORD(v99) = *&v76[3];
  *&v100 = v9;
  *(&v100 + 1) = v11;
  *&v101 = v13;
  *(&v101 + 1) = v15;
  v102 = 0;
  *(a1 + 208) = 0;
  v48 = v96;
  *(a1 + 96) = v95;
  *(a1 + 112) = v48;
  v49 = v98;
  *(a1 + 128) = v97;
  *(a1 + 144) = v49;
  v50 = v92;
  *(a1 + 32) = v91;
  *(a1 + 48) = v50;
  v51 = v94;
  *(a1 + 64) = v93;
  *(a1 + 80) = v51;
  v52 = v90;
  *a1 = v89;
  *(a1 + 16) = v52;
  v53 = v101;
  *(a1 + 176) = v100;
  *(a1 + 192) = v53;
  *(a1 + 160) = v99;
  type metadata accessor for (ModifiedContent<ModifiedContent<IDView<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, PlaybackButton.Phase>, _FrameLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifie( 0,  &lazy cache variable for type metadata for (ModifiedContent<ModifiedContent<IDView<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, PlaybackButton.Phase>, _FrameLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _A,  type metadata accessor for ModifiedContent<ModifiedContent<IDView<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, PlaybackButton.Phase>, _FrameLayout>, _PaddingLayout>,  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>?, _PaddingLayout>, _PaddingLayout>, _FrameLayout>,  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<Text, Text>, Text>, Text>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Int?>>);
  v55 = v54;
  outlined init with copy of _BackgroundModifier<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>?)>>(v46, a1 + *(v54 + 48), type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>?, _PaddingLayout>, _PaddingLayout>, _FrameLayout>);
  v56 = (a1 + *(v55 + 64));
  v57 = v71;
  v103[3] = v71;
  v104 = v72;
  v59 = v69;
  v58 = v70;
  v103[1] = v69;
  v103[2] = v70;
  v103[0] = v68;
  *&v105[0] = v44;
  *(&v105[0] + 1) = v45;
  *&v105[1] = 1;
  BYTE8(v105[1]) = 0;
  *v56 = v68;
  v56[1] = v59;
  *(v56 + 89) = *(v105 + 9);
  v60 = v105[0];
  v56[4] = v104;
  v56[5] = v60;
  v56[2] = v58;
  v56[3] = v57;
  outlined init with copy of _BackgroundModifier<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>?)>>(&v89, &v111, type metadata accessor for ModifiedContent<ModifiedContent<IDView<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, PlaybackButton.Phase>, _FrameLayout>, _PaddingLayout>);
  outlined init with copy of _BackgroundModifier<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>?)>>(v103, &v111, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<Text, Text>, Text>, Text>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Int?>>);
  _sSNy10Foundation4DateVGWOhTm_0(v47, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>?, _PaddingLayout>, _PaddingLayout>, _FrameLayout>);
  v106[2] = v70;
  v106[3] = v71;
  v106[4] = v72;
  v106[0] = v68;
  v106[1] = v69;
  v107 = v44;
  v108 = v45;
  v109 = 1;
  v110 = 0;
  _sSNy10Foundation4DateVGWOhTm_0(v106, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<Text, Text>, Text>, Text>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Int?>>);
  _sSNy10Foundation4DateVGWOhTm_0(v46, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>?, _PaddingLayout>, _PaddingLayout>, _FrameLayout>);
  v119 = v85;
  v120 = v86;
  v121 = v87;
  v115 = v81;
  v116 = v82;
  v117 = v83;
  v118 = v84;
  v111 = v77;
  v112 = v78;
  v113 = v79;
  v114 = v80;
  v122 = 2;
  *v123 = *v76;
  *&v123[3] = *&v76[3];
  v124 = v9;
  v125 = v11;
  v126 = v13;
  v127 = v15;
  v128 = 0;
  return _sSNy10Foundation4DateVGWOhTm_0(&v111, type metadata accessor for ModifiedContent<ModifiedContent<IDView<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, PlaybackButton.Phase>, _FrameLayout>, _PaddingLayout>);
}

__n128 PillPlaybackButtonStyleBody.playbackStateImage.getter@<Q0>(uint64_t a1@<X8>)
{
  type metadata accessor for <<opaque return type of Transition.combined<A>(with:)>>.0(0);
  v60 = v3;
  v58 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FilteredTransition<<<opaque return type of Transition.combined<A>(with:)>>.0>(0);
  v59 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v57 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v56 = &v49 - v9;
  v10 = type metadata accessor for PlaybackButton.Specs(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v49 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v49 - v17;
  v19 = v1 + *(type metadata accessor for PillPlaybackButtonStyleBody(0) + 20);
  outlined init with copy of _BackgroundModifier<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>?)>>(v19, v18, type metadata accessor for PlaybackButton.Configuration);
  *&v18[v10[5]] = 0x4000000000000000;
  *&v18[v10[6]] = 0x3FB47AE147AE147BLL;
  *&v18[v10[7]] = 0x3FA999999999999ALL;
  v61 = type metadata accessor for PlaybackButton.Configuration(0);
  v20 = v18[v61[7]];
  v21 = &v18[v61[6]];
  if (v20 >= 2)
  {
    v22 = 0x69662E6573756170;
  }

  else
  {
    v22 = 0x6C69662E79616C70;
  }

  if (v20 >= 2)
  {
    v23 = 0xEA00000000006C6CLL;
  }

  else
  {
    v23 = 0xE90000000000006CLL;
  }

  if (v21[1])
  {
    v22 = *v21;
  }

  v54 = type metadata accessor for PlaybackButton.Specs;
  _sSNy10Foundation4DateVGWOhTm_0(v18, type metadata accessor for PlaybackButton.Specs);
  specialized Image.init(systemName:)(v22, v23);
  v52 = v24;
  v51 = static Color.white.getter();
  KeyPath = swift_getKeyPath();
  static UnitPoint.center.getter();
  *&v71 = 0x3EE4F8B588E368F1;
  *(&v71 + 1) = v25;
  *&v72 = v26;
  v27 = lazy protocol witness table accessor for type ScaleTransition and conformance ScaleTransition();
  v28 = lazy protocol witness table accessor for type OpacityTransition and conformance OpacityTransition();
  Transition.combined<A>(with:)();
  v55 = type metadata accessor for PlaybackButton.Configuration;
  v29 = outlined init with copy of _BackgroundModifier<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>?)>>(v19, v15, type metadata accessor for PlaybackButton.Configuration);
  *&v15[v10[5]] = 0x4000000000000000;
  *&v15[v10[6]] = 0x3FB47AE147AE147BLL;
  *&v15[v10[7]] = 0x3FA999999999999ALL;
  MEMORY[0x18D00B680](v29, 0.38, 0.8, 0.0);
  v53 = v19;
  _sSNy10Foundation4DateVGWOhTm_0(v15, type metadata accessor for PlaybackButton.Specs);
  *&v71 = MEMORY[0x1E697E8A0];
  *(&v71 + 1) = MEMORY[0x1E697F268];
  *&v72 = v27;
  *(&v72 + 1) = v28;
  swift_getOpaqueTypeConformance2();
  v30 = v56;
  v31 = v60;
  Transition.animation(_:)();

  v32 = (*(v58 + 8))(v5, v31);
  sub_18C084CC8(v30, v57, v32);
  _s10Foundation4DateVACSLAAWlTm_0(&lazy protocol witness table cache variable for type FilteredTransition<<<opaque return type of Transition.combined<A>(with:)>>.0> and conformance FilteredTransition<A>, type metadata accessor for FilteredTransition<<<opaque return type of Transition.combined<A>(with:)>>.0>, MEMORY[0x1E697F3D8]);
  v33 = AnyTransition.init<A>(_:)();
  sub_18C084D2C(v30, v34);
  v35 = static Font.footnote.getter();
  v36 = swift_getKeyPath();
  v62.n128_u64[0] = v52;
  v62.n128_u64[1] = KeyPath;
  *&v63 = v51;
  BYTE8(v63) = 20;
  *&v64 = v33;
  *(&v64 + 1) = v36;
  v65 = v35;
  static Font.Weight.bold.getter();
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>(0);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
  View.fontWeight(_:)();

  v68 = v73;
  v69 = v74;
  v70 = v75;
  v67 = v72;
  v66 = v71;
  v37 = v53;
  outlined init with copy of _BackgroundModifier<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>?)>>(v53, v12, v55);
  *&v12[v10[5]] = 0x4000000000000000;
  *&v12[v10[6]] = 0x3FB47AE147AE147BLL;
  *&v12[v10[7]] = 0x3FA999999999999ALL;
  v38 = v61;
  LODWORD(v33) = v12[v61[8]];
  _sSNy10Foundation4DateVGWOhTm_0(v12, v54);
  if (v33)
  {
    v39 = 0.8;
  }

  else
  {
    v39 = 1.0;
  }

  static UnitPoint.center.getter();
  v41 = v40;
  v43 = v42;
  v44 = *(v37 + v38[7]);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v45 = v69;
  *(a1 + 32) = v68;
  *(a1 + 48) = v45;
  *(a1 + 64) = v70;
  v46 = v67;
  *a1 = v66;
  *(a1 + 16) = v46;
  *(a1 + 80) = v39;
  *(a1 + 88) = v39;
  *(a1 + 96) = v41;
  *(a1 + 104) = v43;
  *(a1 + 112) = v44;
  result = v62;
  v48 = v63;
  *(a1 + 152) = v64;
  *(a1 + 136) = v48;
  *(a1 + 120) = result;
  return result;
}

uint64_t PillPlaybackButtonStyleBody.resolvedProgressView.getter@<X0>(uint64_t a1@<X8>)
{
  v85 = a1;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v81 = v2;
  v82 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v79 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for PlaybackButton.Specs(0);
  MEMORY[0x1EEE9AC00](v73);
  v72 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PillPlaybackButtonStyleBody(0);
  v7 = v6 - 8;
  v74 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v75 = v8;
  v76 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>(0);
  v78 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v77 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for ProgressViewSchedule(0);
  MEMORY[0x1EEE9AC00](v71);
  v70 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<IDView<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, PlaybackButton.Phase>, _FrameLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent(0, &lazy cache variable for type metadata for _ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, type metadata accessor for TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, type metadata accessor for ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>, MEMORY[0x1E697F960]);
  v83 = *(v12 - 8);
  v84 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v80 = (&v68 - v13);
  v14 = type metadata accessor for PlaybackButton.State(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ClosedRange<Date>?(0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ClosedRange<Date>(0);
  v21 = v20;
  v22 = *(v20 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v68 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v68 - v26;
  v28 = *(v7 + 28);
  v29 = v1;
  v30 = v1 + v28;
  outlined init with copy of _BackgroundModifier<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>?)>>(v30, v19, type metadata accessor for ClosedRange<Date>?);
  if ((*(v22 + 48))(v19, 1, v21) == 1)
  {
    v31 = type metadata accessor for ClosedRange<Date>?;
    v32 = v19;
LABEL_6:
    _sSNy10Foundation4DateVGWOhTm_0(v32, v31);
    v36 = 1;
    v37 = v85;
    return (*(v83 + 56))(v37, v36, 1, v84);
  }

  v69 = v27;
  outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<IDView<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, PlaybackButton.Phase>, _FrameLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent(v19, v27, type metadata accessor for ClosedRange<Date>);
  v33 = type metadata accessor for PlaybackButton.Configuration(0);
  v34 = *(v33 + 20);
  v35 = v81;
  (*(v82 + 56))(v16, 1, 2, v81);
  LOBYTE(v34) = specialized static PlaybackButton.State.== infix(_:_:)(v30 + v34, v16);
  _sSNy10Foundation4DateVGWOhTm_0(v16, type metadata accessor for PlaybackButton.State);
  if ((v34 & 1) != 0 || specialized Environment.wrappedValue.getter(*v29, *(v29 + 8)) == 2)
  {
    v31 = type metadata accessor for ClosedRange<Date>;
    v32 = v69;
    goto LABEL_6;
  }

  if (*(v30 + *(v33 + 28)) == 2)
  {
    v40 = v69;
    v39 = v70;
    outlined init with copy of _BackgroundModifier<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>?)>>(v69, v70, type metadata accessor for ClosedRange<Date>);
    *(v39 + *(v71 + 20)) = 0;
    v41 = v77;
    outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<IDView<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, PlaybackButton.Phase>, _FrameLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent(v39, v77, type metadata accessor for ProgressViewSchedule);
    v42 = v29;
    v43 = v76;
    outlined init with copy of _BackgroundModifier<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>?)>>(v42, v76, type metadata accessor for PillPlaybackButtonStyleBody);
    outlined init with copy of _BackgroundModifier<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>?)>>(v40, v24, type metadata accessor for ClosedRange<Date>);
    v44 = (*(v74 + 80) + 16) & ~*(v74 + 80);
    v45 = (v75 + *(v22 + 80) + v44) & ~*(v22 + 80);
    v46 = swift_allocObject();
    outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<IDView<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, PlaybackButton.Phase>, _FrameLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent(v43, v46 + v44, type metadata accessor for PillPlaybackButtonStyleBody);
    outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<IDView<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, PlaybackButton.Phase>, _FrameLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent(v24, v46 + v45, type metadata accessor for ClosedRange<Date>);
    v47 = swift_allocObject();
    *(v47 + 16) = partial apply for closure #1 in PillPlaybackButtonStyleBody.resolvedProgressView.getter;
    *(v47 + 24) = v46;
    v48 = swift_allocObject();
    *(v48 + 16) = partial apply for specialized closure #1 in TimelineView<>.init(_:content:);
    *(v48 + 24) = v47;
    v49 = (v41 + *(v78 + 44));
    *v49 = partial apply for specialized closure #1 in TimelineView<>.init(_:content:);
    v49[1] = v48;
    v50 = v80;
    outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<IDView<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, PlaybackButton.Phase>, _FrameLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent(v41, v80, type metadata accessor for TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>);
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<IDView<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, PlaybackButton.Phase>, _FrameLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent(0, &lazy cache variable for type metadata for _ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>.Storage, type metadata accessor for TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, type metadata accessor for ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>, MEMORY[0x1E697F948]);
    swift_storeEnumTagMultiPayload();
    v51 = v40;
  }

  else
  {
    v52 = v30;
    v53 = v72;
    outlined init with copy of _BackgroundModifier<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>?)>>(v52, v72, type metadata accessor for PlaybackButton.Configuration);
    v54 = v73;
    *(v53 + *(v73 + 20)) = 0x4000000000000000;
    *(v53 + *(v54 + 24)) = 0x3FB47AE147AE147BLL;
    *(v53 + *(v54 + 28)) = 0x3FA999999999999ALL;
    v55 = v79;
    PlaybackButton.Specs.resolvedPauseDate.getter(v79);
    _sSNy10Foundation4DateVGWOhTm_0(v53, type metadata accessor for PlaybackButton.Specs);
    v56 = static Alignment.leading.getter();
    v58 = v57;
    v59 = v69;
    closure #1 in PillPlaybackButtonStyleBody.progressView(interval:referenceDate:)(v29, &v87);
    v117 = v95;
    v118 = v96;
    v119 = v97;
    v113 = v91;
    v114 = v92;
    v115 = v93;
    v116 = v94;
    v109 = v87;
    v110 = v88;
    v111 = v89;
    v112 = v90;
    v120[8] = v95;
    v120[9] = v96;
    v120[10] = v97;
    v120[4] = v91;
    v120[5] = v92;
    v120[6] = v93;
    v120[7] = v94;
    v120[0] = v87;
    v120[1] = v88;
    v120[2] = v89;
    v120[3] = v90;
    outlined init with copy of _BackgroundModifier<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>?)>>(&v109, &v86, type metadata accessor for TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>);
    _sSNy10Foundation4DateVGWOhTm_0(v120, type metadata accessor for TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>);
    v106 = v117;
    v107 = v118;
    v108 = v119;
    v102 = v113;
    v103 = v114;
    v104 = v115;
    v105 = v116;
    v98 = v109;
    v99 = v110;
    v100 = v111;
    v101 = v112;
    (*(v82 + 8))(v55, v35);
    v60 = v80;
    *v80 = v56;
    v60[1] = v58;
    v50 = v60;
    v61 = v107;
    *(v60 + 9) = v106;
    *(v60 + 10) = v61;
    *(v60 + 11) = v108;
    v62 = v103;
    *(v60 + 5) = v102;
    *(v60 + 6) = v62;
    v63 = v105;
    *(v60 + 7) = v104;
    *(v60 + 8) = v63;
    v64 = v99;
    *(v60 + 1) = v98;
    *(v60 + 2) = v64;
    v65 = v101;
    *(v60 + 3) = v100;
    *(v60 + 4) = v65;
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<IDView<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, PlaybackButton.Phase>, _FrameLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent(0, &lazy cache variable for type metadata for _ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>.Storage, type metadata accessor for TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, type metadata accessor for ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>, MEMORY[0x1E697F948]);
    swift_storeEnumTagMultiPayload();
    v51 = v59;
  }

  _sSNy10Foundation4DateVGWOhTm_0(v51, type metadata accessor for ClosedRange<Date>);
  v66 = v50;
  v67 = v85;
  outlined init with take of _ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>(v66, v85);
  v37 = v67;
  v36 = 0;
  return (*(v83 + 56))(v37, v36, 1, v84);
}

uint64_t PillPlaybackButtonStyleBody.label.getter@<X0>(uint64_t a1@<X8>)
{
  v67 = a1;
  v68 = type metadata accessor for Date();
  v2 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v65 = &v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PlaybackButton.State(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v65 - v8;
  type metadata accessor for ClosedRange<Date>?(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ClosedRange<Date>(0);
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for PillPlaybackButtonStyleBody(0);
  v19 = *(v18 + 20);
  v66 = v1;
  v20 = v1 + v19;
  outlined init with copy of _BackgroundModifier<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>?)>>(v1 + v19, v12, type metadata accessor for ClosedRange<Date>?);
  v21 = (*(v15 + 48))(v12, 1, v14);
  v22 = (v2 + 48);
  v69 = v21;
  if (v21 == 1)
  {
    _sSNy10Foundation4DateVGWOhTm_0(v12, type metadata accessor for ClosedRange<Date>?);
    v23 = type metadata accessor for PlaybackButton.Configuration(0);
    outlined init with copy of _BackgroundModifier<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>?)>>(v20 + *(v23 + 20), v6, type metadata accessor for PlaybackButton.State);
    if ((*v22)(v6, 2, v68))
    {
      v24 = v67;
      LocalizedStringKey.init(stringLiteral:)();
    }

    else
    {
      LocalizedStringKey.init(stringLiteral:)();
      _sSNy10Foundation4DateVGWOhTm_0(v6, type metadata accessor for PlaybackButton.State);
      v24 = v67;
    }

    type metadata accessor for SwiftUIClass();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v53 = [objc_opt_self() bundleForClass_];
    result = Text.init(_:tableName:bundle:comment:)();
    v33 = result;
    v35 = v54;
    v37 = v55;
    v39 = v56;
    v57 = 0;
  }

  else
  {
    v25 = v2;
    outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<IDView<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, PlaybackButton.Phase>, _FrameLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent(v12, v17, type metadata accessor for ClosedRange<Date>);
    v26 = type metadata accessor for PlaybackButton.Configuration(0);
    outlined init with copy of _BackgroundModifier<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>?)>>(v20 + *(v26 + 20), v9, type metadata accessor for PlaybackButton.State);
    v27 = v68;
    v28 = (*v22)(v9, 2, v68);
    if (v28)
    {
      if (v28 == 1)
      {
        v29 = (v66 + *(v18 + 24));
        v30 = *v29;
        v31 = *(v29 + 1);
        LOBYTE(v29) = v29[16];
        LOBYTE(v70) = v30;
        v71 = v31;
        v72 = v29;
        v70 = Text.DateStyle.timeRemainingString(lowerBound:upperBound:)(v17, &v17[*(v14 + 36)]);
        v71 = v32;
        lazy protocol witness table accessor for type String and conformance String();
        v33 = Text.init<A>(_:)();
        v35 = v34;
        v37 = v36;
        v39 = v38;
        result = _sSNy10Foundation4DateVGWOhTm_0(v17, type metadata accessor for ClosedRange<Date>);
        v41 = 0;
        v42 = 0;
      }

      else
      {
        (*(v25 + 16))(v65, &v17[*(v14 + 36)], v27);
        v58 = (v66 + *(v18 + 24));
        v59 = *v58;
        v60 = *(v58 + 1);
        LOBYTE(v58) = v58[16];
        LOBYTE(v70) = v59;
        v71 = v60;
        v72 = v58;
        v33 = Text.init(_:style:)();
        v35 = v61;
        v37 = v62;
        v39 = v63;
        result = _sSNy10Foundation4DateVGWOhTm_0(v17, type metadata accessor for ClosedRange<Date>);
        v42 = 0;
        v41 = 1;
      }
    }

    else
    {
      v43 = v25;
      v44 = v65;
      (*(v25 + 32))(v65, v9, v27);
      v45 = (v66 + *(v18 + 24));
      v46 = *v45;
      v47 = *(v45 + 1);
      LOBYTE(v45) = v45[16];
      LOBYTE(v70) = v46;
      v71 = v47;
      v72 = v45;
      v70 = Text.DateStyle.timeRemainingString(lowerBound:upperBound:)(v44, &v17[*(v14 + 36)]);
      v71 = v48;
      lazy protocol witness table accessor for type String and conformance String();
      v33 = Text.init<A>(_:)();
      v35 = v49;
      v37 = v50;
      v39 = v51;
      (*(v43 + 8))(v44, v27);
      result = _sSNy10Foundation4DateVGWOhTm_0(v17, type metadata accessor for ClosedRange<Date>);
      v41 = 0;
      v42 = 256;
    }

    v24 = v67;
    v57 = v42 | v41;
  }

  v64 = v69 == 1;
  *v24 = v33;
  *(v24 + 8) = v35;
  *(v24 + 16) = v37 & 1;
  *(v24 + 24) = v39;
  *(v24 + 32) = v57;
  *(v24 + 34) = v64;
  return result;
}

double PillPlaybackButtonStyleBody.platter.getter@<D0>(_BYTE *a1@<X8>)
{
  v40 = a1;
  v2 = type metadata accessor for PlaybackButton.Specs(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v38 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v38 - v9;
  static Color.white.getter();
  v11 = v1 + *(type metadata accessor for PillPlaybackButtonStyleBody(0) + 20);
  outlined init with copy of _BackgroundModifier<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>?)>>(v11, v10, type metadata accessor for PlaybackButton.Configuration);
  *&v10[v2[5]] = 0x4000000000000000;
  *&v10[v2[6]] = 0x3FB47AE147AE147BLL;
  *&v10[v2[7]] = 0x3FA999999999999ALL;
  v12 = type metadata accessor for PlaybackButton.Configuration(0);
  _sSNy10Foundation4DateVGWOhTm_0(v10, type metadata accessor for PlaybackButton.Specs);
  v13 = Color.opacity(_:)();

  v14 = outlined init with copy of _BackgroundModifier<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>?)>>(v11, v7, type metadata accessor for PlaybackButton.Configuration);
  *&v7[v2[5]] = 0x4000000000000000;
  *&v7[v2[6]] = 0x3FB47AE147AE147BLL;
  *&v7[v2[7]] = 0x3FA999999999999ALL;
  v15 = *(v11 + *(v12 + 32));
  v16.n128_u64[0] = 0x3FE3333333333333;
  if (*(v11 + *(v12 + 32)))
  {
    v16.n128_f64[0] = 0.01;
  }

  v17 = MEMORY[0x18D00B680](v14, v16, 0.8, 0.0);
  _sSNy10Foundation4DateVGWOhTm_0(v7, type metadata accessor for PlaybackButton.Specs);
  if ((*(v11 + *(v12 + 28)) | 2) == 3)
  {
    static Color.white.getter();
    v39 = v15;
    v38 = v17;
    outlined init with copy of _BackgroundModifier<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>?)>>(v11, v4, type metadata accessor for PlaybackButton.Configuration);
    *&v4[v2[5]] = 0x4000000000000000;
    *&v4[v2[6]] = 0x3FB47AE147AE147BLL;
    *&v4[v2[7]] = 0x3FA999999999999ALL;
    _sSNy10Foundation4DateVGWOhTm_0(v4, type metadata accessor for PlaybackButton.Specs);
    v18 = Color.opacity(_:)();

    LOBYTE(v43) = 1;
    *(&v43 + 1) = v18;
    LOWORD(v44) = 256;
    BYTE2(v44) = 20;
    outlined init with copy of _BackgroundModifier<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>?)>>(v11, v4, type metadata accessor for PlaybackButton.Configuration);
    *&v4[v2[5]] = 0x4000000000000000;
    *&v4[v2[6]] = 0x3FB47AE147AE147BLL;
    *&v4[v2[7]] = 0x3FA999999999999ALL;
    static Animation.timingCurve(_:_:_:_:duration:)();
    _sSNy10Foundation4DateVGWOhTm_0(v4, type metadata accessor for PlaybackButton.Specs);
    type metadata accessor for ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>(0, &lazy cache variable for type metadata for ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>);
    lazy protocol witness table accessor for type ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect> and conformance <> ModifiedContent<A, B>();
    View.repeatingOpacity(from:to:animation:)();
    LOBYTE(v15) = v39;
    v17 = v38;

    v19 = v50;
    v20 = v51;
    v21 = v52;
    v22 = v53;
    v23 = v54;
    v24 = v55;
    v25 = v56;
    v26 = v57;
    v27 = v58;
    v28 = v59;
    v29 = v60;
    v30 = v61;
    v31 = v62;
  }

  else
  {
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
  }

  *&v43 = v19;
  *(&v43 + 1) = v20;
  *&v44 = v21;
  *(&v44 + 1) = v22;
  *&v45 = v23;
  *(&v45 + 1) = v24;
  *&v46 = v25;
  *(&v46 + 1) = v26;
  *&v47 = v27;
  *(&v47 + 1) = v28;
  *&v48 = v29;
  *(&v48 + 1) = v30;
  v49 = v31;
  *&v42[38] = v45;
  *&v42[22] = v44;
  *&v42[6] = v43;
  v42[102] = v31;
  *&v42[86] = v48;
  *&v42[70] = v47;
  *&v42[54] = v46;
  v32 = v40;
  *v40 = 1;
  *(v32 + 1) = v13;
  *(v32 + 8) = 256;
  *(v32 + 3) = v17;
  v32[32] = v15;
  v32[33] = 20;
  v33 = *&v42[48];
  *(v32 + 66) = *&v42[32];
  v34 = *v42;
  *(v32 + 50) = *&v42[16];
  *(v32 + 34) = v34;
  v35 = *&v42[64];
  v36 = *&v42[80];
  *(v32 + 129) = *&v42[95];
  *(v32 + 114) = v36;
  *(v32 + 98) = v35;
  *(v32 + 82) = v33;
  v50 = v19;
  v51 = v20;
  v52 = v21;
  v53 = v22;
  v54 = v23;
  v55 = v24;
  v56 = v25;
  v57 = v26;
  v58 = v27;
  v59 = v28;
  v60 = v29;
  v61 = v30;
  v62 = v31;

  outlined init with copy of _BackgroundModifier<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>?)>>(&v43, &v41, type metadata accessor for AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>?);
  _sSNy10Foundation4DateVGWOhTm_0(&v50, type metadata accessor for AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>?);

  return result;
}

uint64_t Text.DateStyle.timeRemainingString(lowerBound:upperBound:)(uint64_t a1, uint64_t a2)
{
  v46 = a1;
  v47 = a2;
  v3 = type metadata accessor for Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy();
  v44 = *(v3 - 8);
  v45 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v43 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for FloatingPointRoundingRule();
  v37 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v32 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Duration.UnitsFormatStyle.FractionalPartDisplayStrategy();
  v41 = *(v6 - 8);
  v42 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v35 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for Duration.UnitsFormatStyle.UnitWidth();
  v34 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v31 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for Duration.UnitsFormatStyle();
  v38 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v33 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Duration.TimeFormatStyle.Pattern();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Duration.TimeFormatStyle();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *v2;
  v19 = *(v2 + 1);
  v20 = v2[16];
  Date.timeIntervalSinceNow.getter();
  Date.timeIntervalSinceNow.getter();
  LOBYTE(v54) = v18;
  v55 = v19;
  v56 = v20;
  static Text.DateStyle.timer.getter();
  v48[0] = v51;
  v49 = v52;
  v50 = v53;
  if (MEMORY[0x18D009E00](&v54, v48))
  {
    static Duration.seconds(_:)();
    static Duration.TimeFormatStyle.Pattern.minuteSecond.getter();
    static FormatStyle<>.time(pattern:)();
    (*(v11 + 8))(v13, v10);
    _s10Foundation4DateVACSLAAWlTm_0(&lazy protocol witness table cache variable for type Duration.TimeFormatStyle and conformance Duration.TimeFormatStyle, MEMORY[0x1E696A188], MEMORY[0x1E696A180]);
    Duration.formatted<A>(_:)();
    (*(v15 + 8))(v17, v14);
  }

  else
  {
    if (v20 != 3)
    {
      v54 = v19;
      LOBYTE(v55) = v20;
      Text.DateStyle.UnitsConfiguration.units.getter();
    }

    static Duration.seconds(_:)();
    Set<>.init(_:)();
    v21 = v31;
    static Duration.UnitsFormatStyle.UnitWidth.narrow.getter();
    v22 = v37;
    v23 = v32;
    v24 = v39;
    (*(v37 + 104))(v32, *MEMORY[0x1E69E7048], v39);
    v25 = v35;
    static Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.hide(rounded:)();
    (*(v22 + 8))(v23, v24);
    v26 = v43;
    static Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy.hide.getter();
    v27 = v33;
    static FormatStyle<>.units(allowed:width:maximumUnitCount:zeroValueUnits:valueLength:fractionalPart:)();

    (*(v44 + 8))(v26, v45);
    (*(v41 + 8))(v25, v42);
    (*(v34 + 8))(v21, v36);
    _s10Foundation4DateVACSLAAWlTm_0(&lazy protocol witness table cache variable for type Duration.UnitsFormatStyle and conformance Duration.UnitsFormatStyle, MEMORY[0x1E696A218], MEMORY[0x1E696A210]);
    v28 = v40;
    Duration.formatted<A>(_:)();
    (*(v38 + 8))(v27, v28);
  }

  return v54;
}

__n128 closure #1 in PillPlaybackButtonStyleBody.resolvedProgressView.getter@<Q0>(uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v6 = static Alignment.leading.getter();
  v8 = v7;
  closure #1 in PillPlaybackButtonStyleBody.progressView(interval:referenceDate:)(a2, &v15);
  v34 = v23;
  v35 = v24;
  v36 = v25;
  v30 = v19;
  v31 = v20;
  v32 = v21;
  v33 = v22;
  v26 = v15;
  v27 = v16;
  v28 = v17;
  v29 = v18;
  v37[8] = v23;
  v37[9] = v24;
  v37[10] = v25;
  v37[4] = v19;
  v37[5] = v20;
  v37[6] = v21;
  v37[7] = v22;
  v37[0] = v15;
  v37[1] = v16;
  v37[2] = v17;
  v37[3] = v18;
  outlined init with copy of _BackgroundModifier<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>?)>>(&v26, &v14, type metadata accessor for TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>);
  _sSNy10Foundation4DateVGWOhTm_0(v37, type metadata accessor for TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>);
  *a4 = v6;
  *(a4 + 8) = v8;
  v9 = v35;
  *(a4 + 144) = v34;
  *(a4 + 160) = v9;
  *(a4 + 176) = v36;
  v10 = v31;
  *(a4 + 80) = v30;
  *(a4 + 96) = v10;
  v11 = v33;
  *(a4 + 112) = v32;
  *(a4 + 128) = v11;
  v12 = v27;
  *(a4 + 16) = v26;
  *(a4 + 32) = v12;
  result = v29;
  *(a4 + 48) = v28;
  *(a4 + 64) = result;
  return result;
}

uint64_t closure #1 in PillPlaybackButtonStyleBody.progressView(interval:referenceDate:)@<X0>(uint64_t a1@<X0>, _OWORD *a3@<X8>)
{
  v38 = a3;
  v4 = type metadata accessor for PlaybackButton.Specs(0);
  v5 = (v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v37 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v34 - v11;
  v13 = a1 + *(type metadata accessor for PillPlaybackButtonStyleBody(0) + 20);
  outlined init with copy of _BackgroundModifier<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>?)>>(v13, v12, type metadata accessor for PlaybackButton.Configuration);
  *&v12[v5[7]] = 0x4000000000000000;
  *&v12[v5[8]] = 0x3FB47AE147AE147BLL;
  *&v12[v5[9]] = 0x3FA999999999999ALL;
  ClosedRange<>.progress(at:countdown:)();
  _sSNy10Foundation4DateVGWOhTm_0(v12, type metadata accessor for PlaybackButton.Specs);
  static Color.white.getter();
  outlined init with copy of _BackgroundModifier<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>?)>>(v13, v12, type metadata accessor for PlaybackButton.Configuration);
  *&v12[v5[7]] = 0x4000000000000000;
  *&v12[v5[8]] = 0x3FB47AE147AE147BLL;
  *&v12[v5[9]] = 0x3FA999999999999ALL;
  _sSNy10Foundation4DateVGWOhTm_0(v12, type metadata accessor for PlaybackButton.Specs);
  v36 = Color.opacity(_:)();

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v66[3] = *&v66[27];
  *&v66[11] = *&v66[35];
  *&v66[19] = *&v66[43];
  static Color.white.getter();
  outlined init with copy of _BackgroundModifier<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>?)>>(v13, v9, type metadata accessor for PlaybackButton.Configuration);
  *&v9[v5[7]] = 0x4000000000000000;
  *&v9[v5[8]] = 0x3FB47AE147AE147BLL;
  *&v9[v5[9]] = 0x3FA999999999999ALL;
  v14 = type metadata accessor for PlaybackButton.Configuration(0);
  _sSNy10Foundation4DateVGWOhTm_0(v9, type metadata accessor for PlaybackButton.Specs);
  v35 = Color.opacity(_:)();

  v15 = outlined init with copy of _BackgroundModifier<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>?)>>(v13, v12, type metadata accessor for PlaybackButton.Configuration);
  *&v12[v5[7]] = 0x4000000000000000;
  *&v12[v5[8]] = 0x3FB47AE147AE147BLL;
  *&v12[v5[9]] = 0x3FA999999999999ALL;
  v34 = MEMORY[0x18D00B680](v15, 0.4, 1.0, 0.0);
  _sSNy10Foundation4DateVGWOhTm_0(v12, type metadata accessor for PlaybackButton.Specs);
  v16 = *(v13 + *(v14 + 28));
  v17 = v37;
  v18 = outlined init with copy of _BackgroundModifier<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>?)>>(v13, v37, type metadata accessor for PlaybackButton.Configuration);
  *(v17 + v5[7]) = 0x4000000000000000;
  *(v17 + v5[8]) = 0x3FB47AE147AE147BLL;
  *(v17 + v5[9]) = 0x3FA999999999999ALL;
  v19 = *(v13 + *(v14 + 32));
  v20.n128_u64[0] = 0x3FE3333333333333;
  if (v19)
  {
    v20.n128_f64[0] = 0.01;
  }

  v21 = MEMORY[0x18D00B680](v18, v20, 0.8, 0.0);
  _sSNy10Foundation4DateVGWOhTm_0(v17, type metadata accessor for PlaybackButton.Specs);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v65[7] = *&v66[51];
  *&v65[23] = *&v66[59];
  *&v65[39] = v67;
  LOBYTE(v48) = 1;
  v22 = v36;
  *(&v48 + 1) = v36;
  *v49 = 256;
  *&v49[2] = *v66;
  *&v49[18] = *&v66[8];
  *&v49[34] = *&v66[16];
  *&v44[27] = v48;
  *&v44[35] = *v49;
  v45 = *&v49[16];
  v46 = *&v49[32];
  LOBYTE(v50) = 1;
  v23 = v34;
  v24 = v35;
  *(&v50 + 1) = v35;
  LOWORD(v51) = 256;
  BYTE2(v51) = 20;
  *(&v51 + 1) = v34;
  LOBYTE(v52) = v16;
  *(&v52 + 1) = v21;
  v53[0] = v19;
  v25 = *&v65[16];
  *&v53[48] = *(&v67 + 1);
  *&v53[33] = *&v65[32];
  v26 = *v65;
  *&v53[17] = *&v65[16];
  *&v53[1] = *v65;
  *(&v47[2] + 8) = v52;
  *(&v47[1] + 8) = v51;
  *(v47 + 8) = v50;
  *(&v47[5] + 8) = *&v53[32];
  *&v49[48] = *&v66[23];
  *&v47[0] = *&v66[23];
  *(&v47[6] + 1) = *&v53[48];
  *(&v47[4] + 8) = *&v53[16];
  *(&v47[3] + 8) = *v53;
  v27 = *v49;
  v28 = v38;
  *v38 = v48;
  v28[1] = v27;
  v29 = v47[1];
  v28[4] = v47[0];
  v28[5] = v29;
  v30 = v46;
  v28[2] = v45;
  v28[3] = v30;
  v31 = v47[6];
  v28[9] = v47[5];
  v28[10] = v31;
  v32 = v47[4];
  v28[7] = v47[3];
  v28[8] = v32;
  v28[6] = v47[2];
  v54[0] = 1;
  v55 = v24;
  v56 = 256;
  v57 = 20;
  v58 = v23;
  v59 = v16;
  v60 = v21;
  v61 = v19;
  v62 = v26;
  v63 = v25;
  *v64 = *&v65[32];
  *&v64[15] = *&v65[47];
  outlined init with copy of ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>(&v48, v39);
  outlined init with copy of _BackgroundModifier<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>?)>>(&v50, v39, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>);
  _sSNy10Foundation4DateVGWOhTm_0(v54, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>);
  v39[0] = 1;
  v40 = v22;
  v41 = 256;
  v42 = *v66;
  v43 = *&v66[8];
  *v44 = *&v66[16];
  *&v44[7] = *&v66[23];
  return outlined destroy of ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>(v39);
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v8 = a2(255);
    v9[0] = a3();
    v9[1] = a4();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v8, v9);
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for _ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>?)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<IDView<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, PlaybackButton.Phase>, _FrameLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent(255, &lazy cache variable for type metadata for _ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, type metadata accessor for TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, type metadata accessor for ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>, MEMORY[0x1E697F960]);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>?);
    }
  }
}

void type metadata accessor for ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>)
  {
    type metadata accessor for TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>(255);
    _s10Foundation4DateVACSLAAWlTm_0(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)> and conformance TupleView<A>, type metadata accessor for TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>, MEMORY[0x1E6981F48]);
    v1 = type metadata accessor for ZStack();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>);
    }
  }
}

void type metadata accessor for (ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>))
  {
    type metadata accessor for ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>(255, &lazy cache variable for type metadata for ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>);
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>));
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>(255);
    type metadata accessor for _TraitWritingModifier<TransitionTraitKey>(255, &lazy cache variable for type metadata for _AnimationModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E69E6388], MEMORY[0x1E697F540]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>)
  {
    type metadata accessor for ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>(255, &lazy cache variable for type metadata for ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>);
    type metadata accessor for _AnimationModifier<PlaybackButton.Phase>(255, &lazy cache variable for type metadata for _AnimationModifier<PlaybackButton.Phase>, lazy protocol witness table accessor for type PlaybackButton.Phase and conformance PlaybackButton.Phase, &type metadata for PlaybackButton.Phase, MEMORY[0x1E697F540]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>);
    }
  }
}

void type metadata accessor for ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    type metadata accessor for _ShapeView<Capsule, Color>(255, &lazy cache variable for type metadata for _ShapeView<Capsule, Color>, lazy protocol witness table accessor for type Capsule and conformance Capsule, MEMORY[0x1E69819A8]);
    v3 = type metadata accessor for ModifiedContent();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<Text, Text>, Text>, Text>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Int?>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<Text, Text>, Text>, Text>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Int?>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<Text, Text>, Text>, Text>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ForegroundStyleModifier<Color>>(255);
    type metadata accessor for _EnvironmentKeyWritingModifier<Int?>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Int?>, &lazy cache variable for type metadata for Int?, MEMORY[0x1E69E6530]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<Text, Text>, Text>, Text>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Int?>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<Text, Text>, Text>, Text>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ForegroundStyleModifier<Color>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<Text, Text>, Text>, Text>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ForegroundStyleModifier<Color>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<IDView<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, PlaybackButton.Phase>, _FrameLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<Text, Text>, Text>, Text>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, type metadata accessor for ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<Text, Text>, Text>, Text>, _EnvironmentKeyWritingModifier<Font?>>, type metadata accessor for _EnvironmentKeyTransformModifier<[AnyFontModifier]>, MEMORY[0x1E697E830]);
    type metadata accessor for _TraitWritingModifier<TransitionTraitKey>(255, &lazy cache variable for type metadata for _ForegroundStyleModifier<Color>, MEMORY[0x1E69815C0], MEMORY[0x1E6981568], MEMORY[0x1E6980480]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<Text, Text>, Text>, Text>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ForegroundStyleModifier<Color>>);
    }
  }
}

void type metadata accessor for _ConditionalContent<_ConditionalContent<Text, Text>, Text>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ConditionalContent<_ConditionalContent<Text, Text>, Text>)
  {
    type metadata accessor for _TraitWritingModifier<TransitionTraitKey>(255, &lazy cache variable for type metadata for _ConditionalContent<Text, Text>, MEMORY[0x1E6981148], MEMORY[0x1E6981148], MEMORY[0x1E697F960]);
    v1 = type metadata accessor for _ConditionalContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ConditionalContent<_ConditionalContent<Text, Text>, Text>);
    }
  }
}

void type metadata accessor for _BackgroundModifier<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>?)>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _BackgroundModifier<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>?)>>)
  {
    type metadata accessor for TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>?)>(255);
    _s10Foundation4DateVACSLAAWlTm_0(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>?)> and conformance TupleView<A>, type metadata accessor for TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>?)>, MEMORY[0x1E6981F48]);
    v1 = type metadata accessor for _BackgroundModifier();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _BackgroundModifier<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>?)>>);
    }
  }
}

void type metadata accessor for ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>)
  {
    type metadata accessor for _ShapeView<Capsule, Color>(255, &lazy cache variable for type metadata for _ShapeView<Capsule, Color>, lazy protocol witness table accessor for type Capsule and conformance Capsule, MEMORY[0x1E69819A8]);
    type metadata accessor for _TraitWritingModifier<TransitionTraitKey>(255, &lazy cache variable for type metadata for _AnimationModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E69E6388], MEMORY[0x1E697F540]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>);
    }
  }
}

void type metadata accessor for AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>)
  {
    type metadata accessor for ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>(255, &lazy cache variable for type metadata for ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>);
    type metadata accessor for ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>(255);
    lazy protocol witness table accessor for type ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect> and conformance <> ModifiedContent<A, B>();
    v1 = type metadata accessor for AppearanceAnimationView();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>)
  {
    type metadata accessor for ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>(255, &lazy cache variable for type metadata for ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>(255, &lazy cache variable for type metadata for ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type _ShapeView<Circle, Color> and conformance _ShapeView<A, B>(&lazy protocol witness table cache variable for type _ShapeView<Capsule, Color> and conformance _ShapeView<A, B>, &lazy cache variable for type metadata for _ShapeView<Capsule, Color>, lazy protocol witness table accessor for type Capsule and conformance Capsule, MEMORY[0x1E69819A8]);
    v5[1] = MEMORY[0x1E697EBB8];
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _ShapeView<Circle, Color> and conformance _ShapeView<A, B>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for _ShapeView<Capsule, Color>(255, a2, a3, a4);
    result = swift_getWitnessTable(MEMORY[0x1E697DB78], v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect> and conformance <> ModifiedContent<A, B>();
    v5[1] = MEMORY[0x1E697E5C0];
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with copy of _BackgroundModifier<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>?)>>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double specialized AccessibilityPlaybackButtonModifier.body(content:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<IDView<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, PlaybackButton.Phase>, _FrameLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent(0);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v25 - v11;
  type metadata accessor for _AnimationModifier<PlaybackButton.Phase>(0, &lazy cache variable for type metadata for AccessibilityChildBehaviorBox<AccessibilityChildBehavior.Combine>, lazy protocol witness table accessor for type AccessibilityChildBehavior.Combine and conformance AccessibilityChildBehavior.Combine, &type metadata for AccessibilityChildBehavior.Combine, type metadata accessor for AccessibilityChildBehaviorBox);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  AccessibilityProperties.init(reserving:)();
  static AccessibilityAttachment.properties(_:)();
  outlined destroy of AccessibilityProperties(v27);
  type metadata accessor for Color?(0, &lazy cache variable for type metadata for MutableBox<AccessibilityAttachment>, MEMORY[0x1E697FFF0], MEMORY[0x1E697DAC0]);
  v14 = swift_allocObject();
  memcpy((v14 + 16), v26, 0x128uLL);
  outlined init with copy of _BackgroundModifier<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>?)>>(a1, v9, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<IDView<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, PlaybackButton.Phase>, _FrameLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent);
  v15 = &v9[*(v7 + 44)];
  *v15 = v14;
  v15[1] = v13;
  AccessibilityTraitSet.init(traits:)();
  v16 = v25[16];
  swift_beginAccess();
  closure #1 in ModifiedContent<>.accessibilityTraits(_:)(v14 + 16, 0, v16);
  outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<IDView<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, PlaybackButton.Phase>, _FrameLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent(v9, v12, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<IDView<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, PlaybackButton.Phase>, _FrameLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent);
  v17 = *&v12[*(v7 + 44)];
  swift_beginAccess();
  closure #1 in ModifiedContent<>.accessibilityVisibility(_:)(v17 + 16, 0x4000000040uLL);
  closure #1 in ModifiedContent<>.accessibilityTraits(_:)(v17 + 16, 1, 1);
  closure #1 in ModifiedContent<>.accessibilityTraits(_:)(v17 + 16, 0, 1024);
  v18 = specialized static Text.Accessibility.playback(for:)(v3);
  v20 = v19;
  LOBYTE(v13) = v21;
  specialized ModifiedContent<>.accessibilityLabel(_:)(v18, v19, v21 & 1, v22, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<IDView<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, PlaybackButton.Phase>, _FrameLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<IDView<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, PlaybackButton.Phase>, _FrameLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent, a2);
  outlined consume of Text.Storage(v18, v20, v13 & 1);

  _sSNy10Foundation4DateVGWOhTm_0(v12, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<IDView<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, PlaybackButton.Phase>, _FrameLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent);
  specialized AccessibilityPlaybackButtonModifier.resolvedValue.getter(&lazy cache variable for type metadata for AccessibilityPlaybackButtonModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<IDView<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, PlaybackButton.Phase>, _FrameLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayou, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<IDView<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, PlaybackButton.Phase>, _FrameLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<IDView<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, PlaybackButton.Phase>, _FrameLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedCont, v26);
  v23 = *(a2 + *(v7 + 44));
  swift_beginAccess();
  outlined init with copy of AccessibilityValueStorage(v26, v27);

  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI25AccessibilityValueStorageV_s5NeverOSbTg503_s7c25UI15ModifiedContentVA2A31e59AttachmentModifierVRs_rlE18accessibilityValueyACyxAEGAA0eI7G35VFyAA0E10PropertiesVzXEfU_SbAIXEfU_AFTf1cn_n(v23 + 80, v27);
  outlined destroy of AccessibilityValueStorage?(v23 + 80);
  outlined init with copy of AccessibilityValueStorage(v27, v23 + 80);
  outlined destroy of AccessibilityValueStorage(v27);
  swift_endAccess();
  outlined destroy of AccessibilityValueStorage(v26);

  return result;
}

void *specialized AccessibilityPlaybackButtonModifier.descriptionValue(_:interval:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v33[1] = a5;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PlaybackButton.State(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of _BackgroundModifier<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>?)>>(v5, v16, type metadata accessor for PlaybackButton.State);
  v17 = (*(v11 + 48))(v16, 2, v10);
  if (v17)
  {
    if (v17 == 1)
    {
      LOBYTE(v40) = a1;
      v41 = a2;
      v42 = a3;
      type metadata accessor for ClosedRange<Date>(0);
      v40 = Text.DateStyle.timeRemainingString(lowerBound:upperBound:)(a4, a4 + *(v18 + 36));
      v41 = v19;
      lazy protocol witness table accessor for type String and conformance String();
      v20 = Text.init<A>(_:)();
    }

    else
    {
      type metadata accessor for ClosedRange<Date>(0);
      (*(v11 + 16))(v13, a4 + *(v30 + 36), v10);
      LOBYTE(v40) = a1;
      v41 = a2;
      v42 = a3;
      v20 = Text.init(_:style:)();
    }

    v25 = v20;
    v27 = v21;
    v29 = v22;
  }

  else
  {
    (*(v11 + 32))(v13, v16, v10);
    LOBYTE(v40) = a1;
    v41 = a2;
    v42 = a3;
    type metadata accessor for ClosedRange<Date>(0);
    v40 = Text.DateStyle.timeRemainingString(lowerBound:upperBound:)(v13, a4 + *(v23 + 36));
    v41 = v24;
    lazy protocol witness table accessor for type String and conformance String();
    v25 = Text.init<A>(_:)();
    v27 = v26;
    v29 = v28;
    (*(v11 + 8))(v13, v10);
  }

  LOBYTE(v40) = a1;
  v41 = a2;
  v42 = a3;
  static Text.DateStyle.timer.getter();
  v34[0] = v37;
  v35 = v38;
  v36 = v39;
  if (MEMORY[0x18D009E00](&v40, v34))
  {
    type metadata accessor for AccessibilityTextModifier();
    v31 = swift_allocObject();
    *(v31 + 16) = 1800;
    *(v31 + 18) = 1;
    *(v31 + 24) = 0u;
    *(v31 + 40) = 0u;
    Text.modified(with:)();

    outlined consume of Text.Storage(v25, v27, v29 & 1);
  }

  return AccessibilityValueStorage.init(description:)();
}

uint64_t specialized closure #1 in TimelineView<>.init(_:content:)@<X0>(uint64_t a1@<X0>, void (*a2)(__int128 *__return_ptr, _BYTE *)@<X1>, _OWORD *a3@<X8>)
{
  type metadata accessor for TimelineView<EveryMinuteTimelineSchedule, Never>.Context(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  type metadata accessor for TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>.Context(0);
  v10 = *(v8 - 8);
  result = v8 - 8;
  if (*(v10 + 64) == v7)
  {
    outlined init with copy of _BackgroundModifier<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>?)>>(a1, &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for TimelineView<EveryMinuteTimelineSchedule, Never>.Context);
    a2(&v18, &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)]);
    _sSNy10Foundation4DateVGWOhTm_0(&v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for TimelineView<EveryMinuteTimelineSchedule, Never>.Context);
    v38 = v26;
    v39 = v27;
    v40 = v28;
    v41 = v29;
    v34 = v22;
    v35 = v23;
    v36 = v24;
    v37 = v25;
    v30 = v18;
    v31 = v19;
    v32 = v20;
    v33 = v21;
    v42[8] = v26;
    v42[9] = v27;
    v42[10] = v28;
    v42[11] = v29;
    v42[4] = v22;
    v42[5] = v23;
    v42[6] = v24;
    v42[7] = v25;
    v42[0] = v18;
    v42[1] = v19;
    v42[2] = v20;
    v42[3] = v21;
    outlined init with copy of _BackgroundModifier<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>?)>>(&v30, v17, type metadata accessor for ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>);
    result = _sSNy10Foundation4DateVGWOhTm_0(v42, type metadata accessor for ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>);
    v11 = v39;
    a3[8] = v38;
    a3[9] = v11;
    v12 = v41;
    a3[10] = v40;
    a3[11] = v12;
    v13 = v35;
    a3[4] = v34;
    a3[5] = v13;
    v14 = v37;
    a3[6] = v36;
    a3[7] = v14;
    v15 = v31;
    *a3 = v30;
    a3[1] = v15;
    v16 = v33;
    a3[2] = v32;
    a3[3] = v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *specialized closure #1 in TimelineView<>.init(_:content:)@<X0>(uint64_t a1@<X0>, void (*a2)(void *__return_ptr, _BYTE *)@<X1>, void *a3@<X8>)
{
  type metadata accessor for TimelineView<EveryMinuteTimelineSchedule, Never>.Context(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  type metadata accessor for TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<ModifiedContent<StrokeShapeView<Circle._Inset, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StrokeShapeView<_TrimmedShape<Circle._Inset>, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>)>?>>.Context(0);
  v10 = *(v8 - 8);
  result = (v8 - 8);
  if (*(v10 + 64) == v7)
  {
    outlined init with copy of _BackgroundModifier<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>?)>>(a1, &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for TimelineView<EveryMinuteTimelineSchedule, Never>.Context);
    a2(v12, &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)]);
    _sSNy10Foundation4DateVGWOhTm_0(&v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for TimelineView<EveryMinuteTimelineSchedule, Never>.Context);
    memcpy(v13, v12, 0x151uLL);
    memcpy(v14, v12, 0x151uLL);
    outlined init with copy of _BackgroundModifier<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>?)>>(v13, v11, type metadata accessor for ZStack<TupleView<(ModifiedContent<ModifiedContent<StrokeShapeView<Circle._Inset, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StrokeShapeView<_TrimmedShape<Circle._Inset>, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>)>?>);
    _sSNy10Foundation4DateVGWOhTm_0(v14, type metadata accessor for ZStack<TupleView<(ModifiedContent<ModifiedContent<StrokeShapeView<Circle._Inset, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StrokeShapeView<_TrimmedShape<Circle._Inset>, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>)>?>);
    return memcpy(a3, v13, 0x151uLL);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized closure #1 in TimelineView<>.init(_:content:)(uint64_t a1, void (*a2)(char *))
{
  v17 = a2;
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TimelineView<PeriodicTimelineSchedule, Never>.Context(0);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>.Context(0);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of _BackgroundModifier<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>?)>>(a1, v10, type metadata accessor for TimelineView<PeriodicTimelineSchedule, Never>.Context);
  (*(v4 + 16))(v6, v10, v3);
  LOBYTE(a1) = v10[*(v8 + 52)];
  outlined init with copy of TimelineInvalidationAction(&v10[*(v8 + 56)], &v14[*(v12 + 56)]);
  _sSNy10Foundation4DateVGWOhTm_0(v10, type metadata accessor for TimelineView<PeriodicTimelineSchedule, Never>.Context);
  (*(v4 + 32))(v14, v6, v3);
  v14[*(v12 + 52)] = a1;
  v17(v14);
  return _sSNy10Foundation4DateVGWOhTm_0(v14, type metadata accessor for TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>.Context);
}

{
  v17 = a2;
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TimelineView<PeriodicTimelineSchedule, Never>.Context(0);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<ModifiedContent<StrokeShapeView<Circle._Inset, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StrokeShapeView<_TrimmedShape<Circle._Inset>, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>)>?>>.Context(0);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of _BackgroundModifier<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>?)>>(a1, v10, type metadata accessor for TimelineView<PeriodicTimelineSchedule, Never>.Context);
  (*(v4 + 16))(v6, v10, v3);
  LOBYTE(a1) = v10[*(v8 + 52)];
  outlined init with copy of TimelineInvalidationAction(&v10[*(v8 + 56)], &v14[*(v12 + 56)]);
  _sSNy10Foundation4DateVGWOhTm_0(v10, type metadata accessor for TimelineView<PeriodicTimelineSchedule, Never>.Context);
  (*(v4 + 32))(v14, v6, v3);
  v14[*(v12 + 52)] = a1;
  v17(v14);
  return _sSNy10Foundation4DateVGWOhTm_0(v14, type metadata accessor for TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<ModifiedContent<StrokeShapeView<Circle._Inset, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StrokeShapeView<_TrimmedShape<Circle._Inset>, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>)>?>>.Context);
}

unint64_t lazy protocol witness table accessor for type FloatingPointFormatStyle<Double>.Percent and conformance FloatingPointFormatStyle<A>.Percent()
{
  result = lazy protocol witness table cache variable for type FloatingPointFormatStyle<Double>.Percent and conformance FloatingPointFormatStyle<A>.Percent;
  if (!lazy protocol witness table cache variable for type FloatingPointFormatStyle<Double>.Percent and conformance FloatingPointFormatStyle<A>.Percent)
  {
    type metadata accessor for _AnimationModifier<PlaybackButton.Phase>(255, &lazy cache variable for type metadata for FloatingPointFormatStyle<Double>.Percent, lazy protocol witness table accessor for type Double and conformance Double, MEMORY[0x1E69E63B0], MEMORY[0x1E6968E58]);
    result = swift_getWitnessTable(MEMORY[0x1E6968E60], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type FloatingPointFormatStyle<Double>.Percent and conformance FloatingPointFormatStyle<A>.Percent);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<Text, Text>, Text>, Text>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<Text, Text>, Text>, Text>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<Text, Text>, Text>, Text>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<Text, Text>, Text>, Text>, _EnvironmentKeyWritingModifier<Font?>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<Text, Text>, Text>, Text> and conformance <> _ConditionalContent<A, B>();
    v5[1] = _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGACyxGAA04ViewF0AAWlTm_0(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Font?>, &lazy cache variable for type metadata for Font?, MEMORY[0x1E6980F50]);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<Text, Text>, Text>, Text>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<Text, Text>, Text>, Text> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<Text, Text>, Text>, Text> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<Text, Text>, Text>, Text> and conformance <> _ConditionalContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for _ConditionalContent<_ConditionalContent<_ConditionalContent<Text, Text>, Text>, Text>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<Text, Text>, Text> and conformance <> _ConditionalContent<A, B>();
    v5[1] = MEMORY[0x1E6981138];
    result = swift_getWitnessTable(MEMORY[0x1E697F968], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<Text, Text>, Text>, Text> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<Text, Text>, Text> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<Text, Text>, Text> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<Text, Text>, Text> and conformance <> _ConditionalContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for _ConditionalContent<_ConditionalContent<Text, Text>, Text>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type _ConditionalContent<Text, Text> and conformance <> _ConditionalContent<A, B>();
    v5[1] = MEMORY[0x1E6981138];
    result = swift_getWitnessTable(MEMORY[0x1E697F968], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<Text, Text>, Text> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<Text, Text> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<Text, Text> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<Text, Text> and conformance <> _ConditionalContent<A, B>)
  {
    v4[2] = v0;
    v4[3] = v1;
    type metadata accessor for _TraitWritingModifier<TransitionTraitKey>(255, &lazy cache variable for type metadata for _ConditionalContent<Text, Text>, MEMORY[0x1E6981148], MEMORY[0x1E6981148], MEMORY[0x1E697F960]);
    v4[0] = MEMORY[0x1E6981138];
    v4[1] = MEMORY[0x1E6981138];
    result = swift_getWitnessTable(MEMORY[0x1E697F968], v3, v4);
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<Text, Text> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t outlined consume of _ConditionalContent<_ConditionalContent<_ConditionalContent<Text, Text>, Text>, Text>.Storage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    outlined consume of Text.Storage(a1, a2, a3 & 1);
  }

  else
  {

    return outlined consume of _ConditionalContent<_ConditionalContent<Text, Text>, Text>.Storage(a1, a2, a3, a4, a5, BYTE1(a5) & 1);
  }
}

uint64_t outlined consume of _ConditionalContent<_ConditionalContent<Text, Text>, Text>.Storage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  if (a6)
  {
    outlined consume of Text.Storage(a1, a2, a3 & 1);
  }

  else
  {

    return outlined consume of _ConditionalContent<Text, Text>.Storage(a1, a2, a3);
  }
}

uint64_t outlined consume of _ConditionalContent<Text, Text>.Storage(uint64_t a1, uint64_t a2, char a3)
{
  outlined consume of Text.Storage(a1, a2, a3 & 1);
}

uint64_t outlined init with take of _ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<IDView<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, PlaybackButton.Phase>, _FrameLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent(0, &lazy cache variable for type metadata for _ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, type metadata accessor for TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, type metadata accessor for ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>, MEMORY[0x1E697F960]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double partial apply for closure #1 in PillPlaybackButtonStyleBody.resolvedProgressView.getter@<D0>(uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for PillPlaybackButtonStyleBody(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  type metadata accessor for ClosedRange<Date>(0);

  *&result = closure #1 in PillPlaybackButtonStyleBody.resolvedProgressView.getter(v2 + v5, a2).n128_u64[0];
  return result;
}

uint64_t partial apply for specialized closure #1 in TimelineView<>.init(_:content:)(uint64_t a1)
{
  return specialized closure #1 in TimelineView<>.init(_:content:)(a1, *(v1 + 16));
}

{
  return specialized closure #1 in TimelineView<>.init(_:content:)(a1, *(v1 + 16));
}

void type metadata accessor for TimelineView<EveryMinuteTimelineSchedule, Never>.Context(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TimelineView<EveryMinuteTimelineSchedule, Never>.Context)
  {
    v2 = lazy protocol witness table accessor for type EveryMinuteTimelineSchedule and conformance EveryMinuteTimelineSchedule();
    v3 = type metadata accessor for TimelineView.Context(a1, MEMORY[0x1E69807B8], MEMORY[0x1E69E73E0], v2);
    if (!v4)
    {
      atomic_store(v3, &lazy cache variable for type metadata for TimelineView<EveryMinuteTimelineSchedule, Never>.Context);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EveryMinuteTimelineSchedule and conformance EveryMinuteTimelineSchedule()
{
  result = lazy protocol witness table cache variable for type EveryMinuteTimelineSchedule and conformance EveryMinuteTimelineSchedule;
  if (!lazy protocol witness table cache variable for type EveryMinuteTimelineSchedule and conformance EveryMinuteTimelineSchedule)
  {
    result = swift_getWitnessTable(MEMORY[0x1E69807A8], MEMORY[0x1E69807B8], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EveryMinuteTimelineSchedule and conformance EveryMinuteTimelineSchedule);
  }

  return result;
}

uint64_t outlined init with copy of ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>(0, &lazy cache variable for type metadata for ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>(uint64_t a1)
{
  type metadata accessor for ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>(0, &lazy cache variable for type metadata for ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for (ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>?)(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _AnimationModifier<Bool>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _AnimationModifier<Bool>>)
  {
    type metadata accessor for ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>(255);
    type metadata accessor for _TraitWritingModifier<TransitionTraitKey>(255, &lazy cache variable for type metadata for _AnimationModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E69E6388], MEMORY[0x1E697F540]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _AnimationModifier<Bool>>);
    }
  }
}

void type metadata accessor for _ShapeView<Capsule, Color>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    a3();
    v5 = type metadata accessor for _ShapeView();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _BlendModeEffect>, _OpacityEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _BlendModeEffect>, _OpacityEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _BlendModeEffect>, _OpacityEffect> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<IDView<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, PlaybackButton.Phase>, _FrameLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _BlendModeEffect>, _OpacityEffect>, type metadata accessor for ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _BlendModeEffect>, MEMORY[0x1E697E5C8], MEMORY[0x1E697E830]);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _BlendModeEffect> and conformance <> ModifiedContent<A, B>();
    v5[1] = MEMORY[0x1E697E5C0];
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _BlendModeEffect>, _OpacityEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>?)>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for (ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>?)(255, a3, a4, a5);
    v6 = type metadata accessor for TupleView();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void type metadata accessor for _AnimationModifier<PlaybackButton.Phase>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void type metadata accessor for TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = type metadata accessor for ProgressViewSchedule(255);
    v9 = a3(255);
    v10 = _s10Foundation4DateVACSLAAWlTm_0(&lazy protocol witness table cache variable for type ProgressViewSchedule and conformance ProgressViewSchedule, type metadata accessor for ProgressViewSchedule, protocol conformance descriptor for ProgressViewSchedule);
    v11 = a4(a1, v8, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

uint64_t PlatformViewRepresentableFeature.modifyViewInputs<A>(inputs:proxy:)(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v43 = *MEMORY[0x1E69E9840];
  v9 = *a2;
  type metadata accessor for CoreViewRepresentableFeatureProxy();
  v10 = *(a1 + 48);
  v31 = *(a1 + 32);
  v32 = v10;
  v33 = *(a1 + 64);
  v34 = *(a1 + 80);
  v11 = *(a1 + 16);
  v30[0] = *a1;
  v30[1] = v11;
  v12 = DWORD2(v30[0]);
  v35 = v30[0];
  v36 = v11;
  v40 = v34;
  v38 = v10;
  v39 = v33;
  v37 = v31;
  v13 = *(v4 + 48);
  v41[2] = *(v4 + 32);
  v41[3] = v13;
  v41[4] = *(v4 + 64);
  v42 = *(v4 + 80);
  v14 = *(v4 + 16);
  v41[0] = *v4;
  v41[1] = v14;
  outlined init with copy of _ViewInputs(v30, &v28);
  outlined destroy of RemoteSheetContainerVCKey.Storage?(v41, &lazy cache variable for type metadata for _ViewInputs?, MEMORY[0x1E697DE00]);
  v15 = v38;
  *(v4 + 32) = v37;
  *(v4 + 48) = v15;
  *(v4 + 64) = v39;
  *(v4 + 80) = v40;
  v16 = v36;
  *v4 = v35;
  *(v4 + 16) = v16;
  lazy protocol witness table accessor for type FocusedValuesInputKey and conformance FocusedValuesInputKey();
  PropertyList.subscript.getter();
  *(v4 + 88) = v28;
  v17 = *(a1 + 56);
  v28 = *(a1 + 48);
  v29 = v17;

  v18 = PreferencesInputs.contains<A>(_:includeHostPreferences:)();

  if (v18)
  {
    v28 = __PAIR64__(v12, v9);
    MEMORY[0x1EEE9AC00](v19);
    v25 = type metadata accessor for PlatformViewIdentifiedViews(0, a3, a4, v20);
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for PlatformViewIdentifiedViews<A>, v25);
    _s7SwiftUI20FocusGroupIdentifierOSgMaTm_0(0, &lazy cache variable for type metadata for Attribute<_IdentifiedViewTree>, &type metadata for _IdentifiedViewTree, MEMORY[0x1E698D388]);
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v28, closure #1 in Attribute.init<A>(_:)partial apply, &v24, v25, MEMORY[0x1E69E73E0], v21, MEMORY[0x1E69E7410], v22);
    *(v5 + 84) = v27;
  }

  PreferenceKeys.remove(_:)();
  return PreferenceKeys.remove(_:)();
}

uint64_t PlatformViewRepresentableFeature.modifyViewOutputs<A>(outputs:proxy:)(uint64_t result, unsigned int *a2, uint64_t a3, uint64_t a4)
{
  v65 = *MEMORY[0x1E69E9840];
  v5 = *a2;
  v6 = *(v4 + 48);
  v61 = *(v4 + 32);
  v62 = v6;
  v63 = *(v4 + 64);
  v64 = *(v4 + 80);
  v7 = *(v4 + 16);
  v59 = *v4;
  v60 = v7;
  if (v7)
  {
    v10 = result;
    v11 = v62;
    v12 = DWORD2(v62);
    v13 = *(v4 + 16);
    v56 = *v4;
    *&v57[8] = *(v4 + 24);
    v14 = *(v4 + 40);
    *v57 = v7;
    *&v57[24] = v14;
    *v58 = v62;
    *&v58[8] = DWORD2(v62);
    *&v58[12] = *(v4 + 60);
    *&v58[28] = *(v4 + 76);
    v54[0] = v56;
    v54[1] = v13;
    v15 = *(v4 + 32);
    v16 = *(v4 + 48);
    v17 = *(v4 + 64);
    v55 = *(v4 + 80);
    v54[3] = v16;
    v54[4] = v17;
    v54[2] = v15;
    outlined init with copy of _ViewInputs(v54, &v48);
    type metadata accessor for CoreViewRepresentableFeatureProxy();
    *&v48 = v11;
    DWORD2(v48) = v12;
    v44 = v5;
    if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
    {
      LOBYTE(v48) = 2;
      v43 = a3;
      v41[2] = 0;
      LODWORD(v42) = Attribute.init<A>(body:value:flags:update:)();
      type metadata accessor for GraphHost();
      MEMORY[0x18D00B7D0]();
      *&v48 = __PAIR64__(v42, v5);
      swift_weakInit();

      v41[1] = v41;
      MEMORY[0x1EEE9AC00](v18);
      v20 = type metadata accessor for RemoteSheetContainerVCWriter(0, v43, a4, v19);
      v40[2] = v20;
      v40[3] = swift_getWitnessTable(protocol conformance descriptor for RemoteSheetContainerVCWriter<A>, v20);
      type metadata accessor for Attribute<RemoteSheetContainerVCKey.Storage?>(0);
      _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v48, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_9, v40, v20, MEMORY[0x1E69E73E0], v21, MEMORY[0x1E69E7410], v22);
      v23 = (*(*(v20 - 8) + 8))(&v48, v20);
      *&v48 = v11;
      DWORD2(v48) = v12;
      MEMORY[0x1EEE9AC00](v23);
      LODWORD(v40[-2]) = v24;

      PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();

      *&v48 = v11;
      DWORD2(v48) = v12;
      MEMORY[0x1EEE9AC00](v25);
      LODWORD(v40[-2]) = v42;

      PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();
      a3 = v43;
    }

    *&v48 = v11;
    DWORD2(v48) = v12;
    if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
    {
      v46[2] = *&v57[16];
      v46[3] = *v58;
      v46[4] = *&v58[16];
      v47 = *&v58[32];
      v46[0] = v56;
      v46[1] = *v57;
      v48 = v59;
      v49 = v60;
      v53 = v64;
      v51 = v62;
      v52 = v63;
      v50 = v61;
      outlined init with copy of _ViewInputs(&v48, v45);
      v26 = ViewResponderFilter.init(inputs:view:)(v46, v44, v45);
      v42 = v40;
      MEMORY[0x1EEE9AC00](v26);
      v28 = type metadata accessor for ViewResponderFilter(0, a3, a4, v27);
      v43 = a4;
      v29 = v28;
      v40[-2] = v28;
      v40[-1] = swift_getWitnessTable(protocol conformance descriptor for ViewResponderFilter<A>, v28);
      type metadata accessor for [KeyPress.Handler](0, &lazy cache variable for type metadata for Attribute<[ViewResponder]>, type metadata accessor for [ViewResponder], MEMORY[0x1E698D388]);
      _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v45, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_9, &v40[-4], v29, MEMORY[0x1E69E73E0], v30, MEMORY[0x1E69E7410], v31);
      LOBYTE(v46[0]) = 0;
      PreferencesOutputs.subscript.setter();
      v32 = *(*(v29 - 8) + 8);
      v33 = v29;
      a4 = v43;
      v32(v45, v33);
    }

    v50 = *&v57[16];
    v51 = *v58;
    v52 = *&v58[16];
    v53 = *&v58[32];
    v48 = v56;
    v49 = *v57;
    MEMORY[0x18D003EC0](MEMORY[0x1E69802B0], MEMORY[0x1E69802A8]);
    v34 = _ViewOutputs.makeContentPathPreferenceWriter<A>(inputs:contentResponder:kinds:)();
    v35 = *MEMORY[0x1E698D3F8];
    if (*(v4 + 84) != *MEMORY[0x1E698D3F8])
    {
      *&v48 = v11;
      DWORD2(v48) = v12;
      MEMORY[0x1EEE9AC00](v34);
      LODWORD(v40[-2]) = v36;

      PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();
    }

    *&v48 = v11;
    DWORD2(v48) = v12;
    MEMORY[0x1EEE9AC00](v34);
    v40[-2] = &v56;

    PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();

    v50 = *&v57[16];
    v51 = *v58;
    v52 = *&v58[16];
    v53 = *&v58[32];
    v48 = v56;
    v49 = *v57;
    static AccessibilityPlatformViewModifier.makeAccessibilityPlatformTransform<A>(inputs:representable:outputs:)(&v48, v44, v10, a3, a4);
    v37 = *(v10 + 8);
    *&v48 = *v10;
    DWORD2(v48) = v37;
    v38 = PreferencesOutputs.subscript.getter();
    if ((v38 & 0x100000000) != 0)
    {
      v39 = v35;
    }

    else
    {
      v39 = v38;
    }

    *(v4 + 92) = v39;
    *&v48 = v11;
    DWORD2(v48) = v12;
    if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
    {
      LOBYTE(v48) = 1;
      PreferencesOutputs.subscript.setter();
    }

    if (*(v4 + 112))
    {
      return outlined destroy of RemoteSheetContainerVCKey.Storage?(&v59, &lazy cache variable for type metadata for _ViewInputs?, MEMORY[0x1E697DE00]);
    }

    else
    {
      type metadata accessor for GraphHost();
      MEMORY[0x18D00B7D0]();
      outlined destroy of RemoteSheetContainerVCKey.Storage?(&v59, &lazy cache variable for type metadata for _ViewInputs?, MEMORY[0x1E697DE00]);

      type metadata accessor for EmptyPreferenceImporter();
      result = swift_allocObject();
      *(v4 + 112) = result;
    }
  }

  return result;
}

uint64_t implicit closure #3 in PlatformViewRepresentableFeature.modifyViewOutputs<A>(outputs:proxy:)(uint64_t a1, uint64_t a2)
{

  return Attribute.init<A>(body:value:flags:update:)();
}

uint64_t implicit closure #5 in PlatformViewRepresentableFeature.modifyViewOutputs<A>(outputs:proxy:)(__int128 *a1)
{
  _ViewInputs.animatedPosition()();
  swift_beginAccess();
  CachedEnvironment.animatedSize(for:)();
  swift_endAccess();
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  _s7SwiftUI20FocusGroupIdentifierOSgMaTm_0(0, &lazy cache variable for type metadata for [FocusableBounds], MEMORY[0x1E697E780], MEMORY[0x1E69E62F8]);
  lazy protocol witness table accessor for type FocusableBoundsTransform and conformance FocusableBoundsTransform();
  return Attribute.init<A>(body:value:flags:update:)();
}

double PlatformViewRepresentableFeature.update<A>(forHost:environment:isInitialUpdate:)(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5)
{
  v8 = *(v5 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for UIKitPlatformViewHost(0, AssociatedTypeWitness, AssociatedConformanceWitness, v11);
  swift_dynamicCastClassUnconditional();
  if ((a3 & 1) == 0)
  {
    if (UIKitPlatformViewHost.isPlatformFocusContainerHost.getter())
    {
      v23 = 0;
      v21 = 0u;
      v22 = 0u;
      outlined init with copy of FocusGroupIdentifier?(&v21, v20, &lazy cache variable for type metadata for FocusGroupIdentifier?, &type metadata for FocusGroupIdentifier);
      type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_focusGroupID>();
      lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_focusGroupID> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_focusGroupID> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_focusGroupID>, MEMORY[0x1E697FE40]);

      PropertyList.subscript.setter();
      if (a2[1])
      {
        PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
      }

      outlined destroy of RemoteSheetContainerVCKey.Storage?(&v21, &lazy cache variable for type metadata for FocusGroupIdentifier?, &type metadata for FocusGroupIdentifier);
    }

    if (v8 == *MEMORY[0x1E698D3F8])
    {
      AGGraphClearUpdate();
    }

    else
    {
      Value = AGGraphGetValue();
      v15 = v14;
      v16 = *Value;
      v17 = *(Value + 8);
      v18 = *(Value + 16);
      v19 = *(Value + 24);

      AGGraphClearUpdate();
      if (v15)
      {
        *&v21 = v16;
        BYTE8(v21) = v17;
        *&v22 = v18;
        *(&v22 + 1) = v19;

        UIKitPlatformViewHost.focusedValues.setter(&v21);
      }
    }

    AGGraphSetUpdate();
  }

  return result;
}

uint64_t PlatformViewIdentifiedViews.leafView.getter@<X0>(uint64_t a4@<X8>)
{
  v5 = type metadata accessor for ViewLeafView();
  Value = AGGraphGetValue();
  v7 = *(*(v5 - 8) + 16);

  return v7(a4, Value, v5);
}

double *PlatformViewIdentifiedViews.value.getter@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t x8_0@<X8>)
{
  v7 = type metadata accessor for ViewLeafView();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v12 - v9;
  result = AGGraphGetValue();
  if (*result < 0.0)
  {
    __break(1u);
  }

  else
  {
    PlatformViewIdentifiedViews.leafView.getter(v10);
    AGGraphClearUpdate();
    closure #1 in PlatformViewIdentifiedViews.value.getter(v10, a2, a3, x8_0);
    AGGraphSetUpdate();
    return (*(v8 + 8))(v10, v7);
  }

  return result;
}

double closure #1 in PlatformViewIdentifiedViews.value.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v17[1] = a4;
  v17[0] = swift_getAssociatedTypeWitness();
  v7 = *(v17[0] - 8);
  MEMORY[0x1EEE9AC00](v17[0]);
  v9 = v17 - v8;
  v10 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ViewLeafView();
  type metadata accessor for UIKitPlatformViewHost(0, a2, a3, v15);
  if (swift_dynamicCastClass())
  {
    swift_unknownObjectRetain();
    UIKitPlatformViewHost.updateHostedViewBounds()();
    swift_unknownObjectRelease();
  }

  (*(*(*(v14 + 16) - 8) + 16))(v13, a1);
  ViewLeafView.representedViewProvider.getter();
  (*(a3 + 152))(v18, v9, a2, a3);
  (*(v7 + 8))(v9, v17[0]);
  (*(v10 + 8))(v13, a2);
  swift_dynamicCast();
  return result;
}

double protocol witness for static Rule.initialValue.getter in conformance PlatformViewIdentifiedViews<A>@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 160) = 0;
  result = 0.0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 168) = -1;
  return result;
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance UIKitPlatformViewHost<A>.UnarySubtreeSequence(uint64_t a1, uint64_t a2)
{
  v4 = specialized Sequence._copyToContiguousArray()();
  (*(*(a1 - 8) + 8))(v2, a1);
  return v4;
}

id RemoteSheetContainerVCKey.Storage.remoteSheet.getter()
{
  outlined init with copy of RemoteSheetContainerVCKey.Storage(v0, v7, MEMORY[0x1E69E7D78]);
  if (v7[8])
  {
    outlined init with take of RemoteSheetContainerVCKey.Storage?(v7, v6, &lazy cache variable for type metadata for WeakBox<_UIRemoteViewControllerContaining>, &lazy cache variable for type metadata for _UIRemoteViewControllerContaining, &protocolRef__UIRemoteViewControllerContaining, type metadata accessor for WeakBox<_UIRemoteViewControllerContaining>);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = [Strong _containedRemoteViewController];
      swift_unknownObjectRelease();
      outlined destroy of WeakBox<_UIRemoteViewControllerContaining>(v6, &lazy cache variable for type metadata for WeakBox<_UIRemoteViewControllerContaining>, &lazy cache variable for type metadata for _UIRemoteViewControllerContaining, &protocolRef__UIRemoteViewControllerContaining);
      if (v2)
      {
        return swift_dynamicCastObjCProtocolUnconditional();
      }
    }

    else
    {
      outlined destroy of WeakBox<_UIRemoteViewControllerContaining>(v6, &lazy cache variable for type metadata for WeakBox<_UIRemoteViewControllerContaining>, &lazy cache variable for type metadata for _UIRemoteViewControllerContaining, &protocolRef__UIRemoteViewControllerContaining);
    }

    return 0;
  }

  else
  {
    outlined init with take of RemoteSheetContainerVCKey.Storage?(v7, v6, &lazy cache variable for type metadata for WeakBox<_UIRemoteSheetContaining>, &lazy cache variable for type metadata for _UIRemoteSheetContaining, &protocolRef__UIRemoteSheetContaining, type metadata accessor for WeakBox<_UIRemoteViewControllerContaining>);
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = [v4 _remoteSheet];
      swift_unknownObjectRelease();
    }

    else
    {
      v5 = 0;
    }

    outlined destroy of WeakBox<_UIRemoteViewControllerContaining>(v6, &lazy cache variable for type metadata for WeakBox<_UIRemoteSheetContaining>, &lazy cache variable for type metadata for _UIRemoteSheetContaining, &protocolRef__UIRemoteSheetContaining);
    return v5;
  }
}

uint64_t protocol witness for GraphMutation.apply() in conformance EnableTransparentBackgroundMutation()
{
  result = AGWeakAttributeGetAttribute();
  if (result != *MEMORY[0x1E698D3F8])
  {
    return AGGraphSetValue();
  }

  return result;
}

uint64_t protocol witness for static Feature.isEnabled.getter in conformance ReuseFirstPartyRepresentablesByDefault(uint64_t a1)
{
  lazy protocol witness table accessor for type ReuseFirstPartyRepresentablesByDefault and conformance ReuseFirstPartyRepresentablesByDefault();

  return static UserDefaultKeyedFeature.isEnabled.getter();
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance ReuseFirstPartyRepresentablesByDefault(uint64_t *a1, uint64_t a2)
{
  lazy protocol witness table accessor for type ReuseFirstPartyRepresentablesByDefault and conformance ReuseFirstPartyRepresentablesByDefault();
  PropertyList.subscript.getter();
  return v3;
}

uint64_t protocol witness for static PropertyKey.defaultValue.getter in conformance ReuseFirstPartyRepresentablesByDefault@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  PartyRepresentablesBy = lazy protocol witness table accessor for type ReuseFirstPartyRepresentablesByDefault and conformance ReuseFirstPartyRepresentablesByDefault();
  result = (*(PartyRepresentablesBy + 16))(a1, PartyRepresentablesBy);
  *a2 = result & 1;
  return result;
}

unint64_t lazy protocol witness table accessor for type PlatformViewRepresentableFeature and conformance PlatformViewRepresentableFeature()
{
  result = lazy protocol witness table cache variable for type PlatformViewRepresentableFeature and conformance PlatformViewRepresentableFeature;
  if (!lazy protocol witness table cache variable for type PlatformViewRepresentableFeature and conformance PlatformViewRepresentableFeature)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlatformViewRepresentableFeature, &type metadata for PlatformViewRepresentableFeature, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformViewRepresentableFeature and conformance PlatformViewRepresentableFeature);
  }

  return result;
}

void type metadata accessor for WeakBox<_UIRemoteViewControllerContaining>(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    type metadata accessor for _UISceneBSActionHandler(255, a3, a4);
    v5 = type metadata accessor for WeakBox();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t outlined destroy of WeakBox<_UIRemoteViewControllerContaining>(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  type metadata accessor for WeakBox<_UIRemoteViewControllerContaining>(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t assignWithCopy for RemoteSheetContainerVCKey.Storage(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    MEMORY[0x18D011290](a1);
    v4 = *(a2 + 8);
    if (v4 >= 2)
    {
      v4 = *a2 + 2;
    }

    v5 = v4 == 1;
    swift_unknownObjectWeakCopyInit();
    *(a1 + 8) = v5;
  }

  return a1;
}

uint64_t initializeWithCopy for RemoteSheetContainerVCKey.Storage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v4 = *(a2 + 8);
  if (v4 >= 2)
  {
    v4 = *a2 + 2;
  }

  v5 = v4 == 1;
  result = a4(a1);
  *(result + 8) = v5;
  return result;
}

uint64_t assignWithTake for RemoteSheetContainerVCKey.Storage(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    MEMORY[0x18D011290](a1);
    v4 = *(a2 + 8);
    if (v4 >= 2)
    {
      v4 = *a2 + 2;
    }

    v5 = v4 == 1;
    swift_unknownObjectWeakTakeInit();
    *(a1 + 8) = v5;
  }

  return a1;
}

uint64_t storeEnumTagSinglePayload for RemoteSheetContainerVCKey.Storage(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = 0;
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

uint64_t getEnumTag for RemoteSheetContainerVCKey.Storage(uint64_t a1)
{
  result = *(a1 + 8);
  if (result >= 2)
  {
    return (*a1 + 2);
  }

  return result;
}

uint64_t destructiveInjectEnumTag for RemoteSheetContainerVCKey.Storage(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *result = 0;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t assignWithCopy for PlatformViewRepresentableFeature(uint64_t a1, uint64_t *a2)
{
  v4 = a2[2];
  if (*(a1 + 16))
  {
    if (v4)
    {
      *a1 = *a2;

      *(a1 + 8) = *(a2 + 2);
      *(a1 + 16) = a2[2];

      *(a1 + 24) = *(a2 + 6);
      *(a1 + 28) = *(a2 + 7);
      *(a1 + 32) = *(a2 + 8);
      *(a1 + 36) = *(a2 + 9);
      *(a1 + 40) = a2[5];

      *(a1 + 48) = a2[6];

      *(a1 + 56) = *(a2 + 14);
      *(a1 + 60) = *(a2 + 15);
      *(a1 + 64) = *(a2 + 16);
      *(a1 + 68) = *(a2 + 17);
      *(a1 + 72) = *(a2 + 18);
      *(a1 + 76) = *(a2 + 19);
      *(a1 + 80) = *(a2 + 20);
    }

    else
    {
      outlined destroy of _ViewInputs(a1);
      v5 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 16) = v5;
      v7 = *(a2 + 3);
      v6 = *(a2 + 4);
      v8 = *(a2 + 2);
      *(a1 + 80) = *(a2 + 20);
      *(a1 + 48) = v7;
      *(a1 + 64) = v6;
      *(a1 + 32) = v8;
    }
  }

  else if (v4)
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 2);
    *(a1 + 16) = a2[2];
    *(a1 + 24) = *(a2 + 6);
    *(a1 + 28) = *(a2 + 7);
    *(a1 + 32) = *(a2 + 8);
    *(a1 + 36) = *(a2 + 9);
    *(a1 + 40) = a2[5];
    *(a1 + 48) = a2[6];
    *(a1 + 56) = *(a2 + 14);
    *(a1 + 60) = *(a2 + 15);
    *(a1 + 64) = *(a2 + 16);
    *(a1 + 68) = *(a2 + 17);
    *(a1 + 72) = *(a2 + 18);
    *(a1 + 76) = *(a2 + 19);
    *(a1 + 80) = *(a2 + 20);
  }

  else
  {
    v9 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 16) = v9;
    v10 = *(a2 + 2);
    v11 = *(a2 + 3);
    v12 = *(a2 + 4);
    *(a1 + 80) = *(a2 + 20);
    *(a1 + 48) = v11;
    *(a1 + 64) = v12;
    *(a1 + 32) = v10;
  }

  *(a1 + 84) = *(a2 + 21);
  *(a1 + 88) = *(a2 + 22);
  *(a1 + 92) = *(a2 + 23);
  *(a1 + 96) = *(a2 + 6);
  *(a1 + 112) = a2[14];

  return a1;
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

uint64_t assignWithTake for PlatformViewRepresentableFeature(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 16))
  {
    goto LABEL_5;
  }

  v4 = *(a2 + 16);
  if (!v4)
  {
    outlined destroy of _ViewInputs(a1);
LABEL_5:
    v5 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v5;
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
    v6 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v6;
    goto LABEL_6;
  }

  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v4;

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
LABEL_6:
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);

  return a1;
}

uint64_t getEnumTagSinglePayload for PlatformViewRepresentableFeature(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 96);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for PlatformViewRepresentableFeature(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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
      *(result + 96) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_focusGroupID>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_focusGroupID>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_focusGroupID>);
    }
  }
}

uint64_t specialized PlatformViewRepresentableFeature.modifyWrappedOutputs<A>(outputs:proxy:)(uint64_t result)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = *(v1 + 48);
  v16[2] = *(v1 + 32);
  v16[3] = v2;
  v16[4] = *(v1 + 64);
  v17 = *(v1 + 80);
  v3 = *(v1 + 16);
  v16[0] = *v1;
  v16[1] = v3;
  if (v3)
  {
    v4 = result;
    v5 = *(v1 + 48);
    v14[2] = *(v1 + 32);
    v14[3] = v5;
    v14[4] = *(v1 + 64);
    v15 = *(v1 + 80);
    v6 = *(v1 + 16);
    v14[0] = *v1;
    v14[1] = v6;
    outlined init with copy of _ViewInputs(v14, &v12);
    if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
    {
      v7 = *(v1 + 92);
      v8 = *MEMORY[0x1E698D3F8];
      if (v7 != *MEMORY[0x1E698D3F8])
      {
        v9 = *(v4 + 8);
        v12 = *v4;
        v13 = v9;
        v10 = PreferencesOutputs.subscript.getter();
        if ((v10 & 0x100000000) != 0)
        {
          v11 = v8;
        }

        else
        {
          v11 = v10;
        }

        v12 = __PAIR64__(v11, v7);
        protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
        lazy protocol witness table accessor for type AccessibilityHostedViewBridgeTransform and conformance AccessibilityHostedViewBridgeTransform();
        Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v12) = 0;
        PreferencesOutputs.subscript.setter();
      }
    }

    return outlined destroy of RemoteSheetContainerVCKey.Storage?(v16, &lazy cache variable for type metadata for _ViewInputs?, MEMORY[0x1E697DE00]);
  }

  return result;
}

void *initializeWithTake for RemoteSheetContainerVCWriter(void *a1, void *a2)
{
  *a1 = *a2;
  swift_weakTakeInit();
  return a1;
}

uint64_t assignWithCopy for ViewResponderFilter(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  swift_weakCopyAssign();
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  return a1;
}

uint64_t initializeWithTake for ViewResponderFilter(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  swift_weakTakeInit();
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t assignWithTake for ViewResponderFilter(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  swift_weakTakeAssign();
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t outlined init with copy of RemoteSheetContainerVCKey.Storage(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v4 = *(a1 + 8);
  if (v4 >= 2)
  {
    v4 = *a1 + 2;
  }

  v5 = v4 == 1;
  result = a3(a2, a1);
  *(a2 + 8) = v5;
  return result;
}

void _s7SwiftUI20FocusGroupIdentifierOSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t _sxSo6UIViewCSgRi_zRi0_zly20PlatformViewProviderQzIsegno_SgSg7SwiftUI04CoreC13RepresentableRzlWOe(uint64_t result, uint64_t a2)
{
  if (result != 1)
  {
    return outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(result, a2);
  }

  return result;
}

void type metadata accessor for UIView?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for UIView?)
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for UIView, 0x1E69DD250);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for UIView?);
    }
  }
}

uint64_t outlined init with copy of FocusGroupIdentifier?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  _s7SwiftUI20FocusGroupIdentifierOSgMaTm_0(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t lazy protocol witness table accessor for type EnableTransparentBackgroundMutation and conformance EnableTransparentBackgroundMutation()
{
  result = lazy protocol witness table cache variable for type EnableTransparentBackgroundMutation and conformance EnableTransparentBackgroundMutation;
  if (!lazy protocol witness table cache variable for type EnableTransparentBackgroundMutation and conformance EnableTransparentBackgroundMutation)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for EnableTransparentBackgroundMutation, &unk_1EFFA6890, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnableTransparentBackgroundMutation and conformance EnableTransparentBackgroundMutation);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_focusGroupID> and conformance EnvironmentPropertyKey<A>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

double specialized EnableTransparentBackgroundMutation.combine<A>(with:)(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1EEE9AC00](a1);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  swift_dynamicCast();
  return result;
}

double View.gaugeIndicatorDotTint<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getKeyPath();
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = a4;
  v11[5] = a5;
  type metadata accessor for Optional();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for implicit closure #1 in View.gaugeIndicatorDotTint<A>(_:), v11, MEMORY[0x1E69E73E0], MEMORY[0x1E697E0B8], v9, &v12);
  v11[7] = v12;
  View.environment<A>(_:_:)();

  return result;
}

uint64_t EnvironmentValues.gaugeIndicatorDotTint.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<GaugeIndicatorDotTintEnvironmentKey>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<AnyShapeStyle?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<GaugeIndicatorDotTintEnvironmentKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<GaugeIndicatorDotTintEnvironmentKey>, MEMORY[0x1E697FE40]);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<GaugeIndicatorDotTintEnvironmentKey>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<AnyShapeStyle?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<GaugeIndicatorDotTintEnvironmentKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<GaugeIndicatorDotTintEnvironmentKey>, MEMORY[0x1E697FE40]);
    PropertyList.subscript.getter();
  }

  return v2;
}

void key path getter for EnvironmentValues.gaugeIndicatorDotTint : EnvironmentValues(uint64_t *a1@<X0>, void *a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<GaugeIndicatorDotTintEnvironmentKey>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<AnyShapeStyle?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<GaugeIndicatorDotTintEnvironmentKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<GaugeIndicatorDotTintEnvironmentKey>, MEMORY[0x1E697FE40]);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<GaugeIndicatorDotTintEnvironmentKey>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<AnyShapeStyle?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<GaugeIndicatorDotTintEnvironmentKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<GaugeIndicatorDotTintEnvironmentKey>, MEMORY[0x1E697FE40]);
    PropertyList.subscript.getter();
  }

  *a2 = v3;
}

double key path setter for EnvironmentValues.gaugeIndicatorDotTint : EnvironmentValues(uint64_t *a1, void *a2)
{
  type metadata accessor for EnvironmentPropertyKey<GaugeIndicatorDotTintEnvironmentKey>();
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<AnyShapeStyle?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<GaugeIndicatorDotTintEnvironmentKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<GaugeIndicatorDotTintEnvironmentKey>, MEMORY[0x1E697FE40]);

  PropertyList.subscript.setter();
  if (a2[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

uint64_t implicit closure #1 in View.gaugeIndicatorDotTint<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a4@<X8>)
{
  v5 = MEMORY[0x1EEE9AC00](a1);
  (*(v7 + 16))(&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  result = AnyShapeStyle.init<A>(_:)();
  *a4 = result;
  return result;
}

void type metadata accessor for _EnvironmentKeyWritingModifier<AnyShapeStyle?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<AnyShapeStyle?>)
  {
    type metadata accessor for AnyShapeStyle?();
    v1 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<AnyShapeStyle?>);
    }
  }
}

void type metadata accessor for AnyShapeStyle?()
{
  if (!lazy cache variable for type metadata for AnyShapeStyle?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnyShapeStyle?);
    }
  }
}

void type metadata accessor for EnvironmentPropertyKey<GaugeIndicatorDotTintEnvironmentKey>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<GaugeIndicatorDotTintEnvironmentKey>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<GaugeIndicatorDotTintEnvironmentKey>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<AnyShapeStyle?> and conformance _EnvironmentKeyWritingModifier<A>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

void PencilEventsBridge.observeValue(forKeyPath:of:change:context:)(uint64_t a1, void *a2, uint64_t a3, Class isa, char *a5)
{
  ObjectType = swift_getObjectType();
  if ((!a5 || &v5[OBJC_IVAR____TtC7SwiftUI18PencilEventsBridge_preferredTapActionContext] != a5) && (!a5 || &v5[OBJC_IVAR____TtC7SwiftUI18PencilEventsBridge_preferredSqueezeActionContext] != a5))
  {
    v12 = ObjectType;
    if (a2)
    {
      a2 = MEMORY[0x18D00C850](a1, a2);
    }

    outlined init with copy of Any?(a3, v21);
    v13 = v22;
    if (v22)
    {
      v14 = __swift_project_boxed_opaque_existential_1(v21, v22);
      v15 = *(v13 - 8);
      v16 = MEMORY[0x1EEE9AC00](v14);
      v18 = &v20 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v15 + 16))(v18, v16);
      v19 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v15 + 8))(v18, v13);
      __swift_destroy_boxed_opaque_existential_1(v21);
      if (!isa)
      {
LABEL_14:
        v20.receiver = v5;
        v20.super_class = v12;
        objc_msgSendSuper2(&v20, sel_observeValueForKeyPath_ofObject_change_context_, a2, v19, isa, a5);

        swift_unknownObjectRelease();
        return;
      }
    }

    else
    {
      v19 = 0;
      if (!isa)
      {
        goto LABEL_14;
      }
    }

    type metadata accessor for NSKeyValueChangeKey(0);
    lazy protocol witness table accessor for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    goto LABEL_14;
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();

    swift_unknownObjectRelease();
  }
}

void PencilHoverPose.init(_:in:)(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  if (a1)
  {
    [a1 location];
    [a2 convertPoint:0 toView:?];
    v7 = v6;
    v9 = v8;
    [a2 bounds];
    [a2 convertRect:0 toView:?];
    [a1 zOffset];
    v22 = v10;
    [a1 altitudeAngle];
    v12 = v11;
    [a1 azimuthAngle];
    v14 = v13;
    [a1 rollAngle];
    v16 = v15;
    UnitPoint.init(_:in:)();
    v18 = v17;
    v20 = v19;

    v21 = 0;
    *a3 = v7;
    *(a3 + 8) = v9;
    *(a3 + 16) = v18;
    *(a3 + 24) = v20;
    *(a3 + 32) = v22;
  }

  else
  {

    v21 = 1;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0;
    v12 = 0;
    v14 = 0;
    v16 = 0;
  }

  *(a3 + 40) = v12;
  *(a3 + 48) = v14;
  *(a3 + 56) = v16;
  *(a3 + 64) = v21;
}

void specialized PencilEventsBridge.pencilInteraction(_:didReceiveTap:)(void *a1)
{
  v2 = v1;
  v4 = v1 + OBJC_IVAR____TtC7SwiftUI18PencilEventsBridge_host;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    v7 = *(*(v5 + 16) + 8);
    v8 = ViewGraphDelegate.uiView.getter(ObjectType, v7);
    if (v8)
    {
      v15 = v8;
      if (ViewGraphDelegate.hostingView.getter(ObjectType, v7))
      {
        v10 = v9;
        v11 = [a1 hoverPose];
        v12 = v15;
        PencilHoverPose.init(_:in:)(v11, v12, &v16);
        v17 = CACurrentMediaTime();
        v18 = 2;
        v19 = 0;
        v13 = swift_getObjectType();
        (*(v10 + 32))(v13, v10);
        v14 = OBJC_IVAR____TtC7SwiftUI18PencilEventsBridge_pencilDoubleTapSerial;
        lazy protocol witness table accessor for type PencilDoubleTapEvent and conformance PencilDoubleTapEvent();
        EventBindingManager.send<A>(_:id:)();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        outlined destroy of PencilDoubleTapEvent(&v16);
        ++*(v2 + v14);
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

void specialized PencilEventsBridge.pencilInteraction(_:didReceiveSqueeze:)(void *a1)
{
  v2 = v1;
  v4 = v1 + OBJC_IVAR____TtC7SwiftUI18PencilEventsBridge_host;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return;
  }

  v5 = *(v4 + 8);
  ObjectType = swift_getObjectType();
  v7 = *(*(v5 + 16) + 8);
  v8 = ViewGraphDelegate.uiView.getter(ObjectType, v7);
  if (!v8)
  {
    goto LABEL_17;
  }

  v23 = v8;
  if (!ViewGraphDelegate.hostingView.getter(ObjectType, v7))
  {
    swift_unknownObjectRelease();

    return;
  }

  v10 = v9;
  v11 = [a1 phase];
  if (v11 >= 4)
  {
    swift_unknownObjectRelease();

LABEL_17:

    swift_unknownObjectRelease();
    return;
  }

  v12 = 0x3020101u >> (8 * v11);
  [a1 _normalizedForceVelocity];
  v14 = (v13 & 0xFFFFFFFFFFFFFLL) != 0 && (~v13 & 0x7FF0000000000000) == 0;
  v15 = 0;
  if (!v14)
  {
    [a1 _normalizedForceVelocity];
    v15 = v16;
  }

  v17 = [a1 hoverPose];
  v18 = v23;
  PencilHoverPose.init(_:in:)(v17, v18, v25);
  *&v19 = CACurrentMediaTime();
  *&v24[7] = v25[0];
  *&v24[23] = v25[1];
  *&v24[39] = v25[2];
  *&v24[55] = v25[3];
  v24[71] = v26;
  v27 = v12;
  v28 = *v24;
  v32 = *&v24[64];
  v31 = *&v24[48];
  v30 = *&v24[32];
  v29 = *&v24[16];
  v33 = v15;
  v34 = v14;
  v35 = v19;
  v20 = swift_getObjectType();
  (*(v10 + 32))(v20, v10);
  v21 = OBJC_IVAR____TtC7SwiftUI18PencilEventsBridge_pencilSqueezeSerial;
  lazy protocol witness table accessor for type PencilSqueezeEvent and conformance PencilSqueezeEvent();
  EventBindingManager.send<A>(_:id:)();

  if ([a1 phase] == 2)
  {

    outlined destroy of PencilSqueezeEvent(&v27);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    v22 = [a1 phase];

    outlined destroy of PencilSqueezeEvent(&v27);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (v22 != 3)
    {
      return;
    }
  }

  ++*(v2 + v21);
}

unint64_t lazy protocol witness table accessor for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey()
{
  result = lazy protocol witness table cache variable for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey;
  if (!lazy protocol witness table cache variable for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey)
  {
    type metadata accessor for NSKeyValueChangeKey(255);
    result = swift_getWitnessTable(protocol conformance descriptor for NSKeyValueChangeKey, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey);
  }

  return result;
}

unint64_t type metadata accessor for UIPencilInteraction()
{
  result = lazy cache variable for type metadata for UIPencilInteraction;
  if (!lazy cache variable for type metadata for UIPencilInteraction)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIPencilInteraction);
  }

  return result;
}

uint64_t View.selectable<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SelectableModifier(0, v11, v13, v12);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v20 - v17;
  (*(v8 + 16))(v10, a1, a3, v16);
  (*(v8 + 32))(v18, v10, a3);
  MEMORY[0x18D00A570](v18, a2, v14, a4);
  return (*(v15 + 8))(v18, v14);
}

uint64_t static SelectableModifier._makeView(modifier:inputs:body:)@<X0>(__int128 *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v57 = *MEMORY[0x1E69E9840];
  v12 = a2[3];
  v53 = a2[2];
  v54 = v12;
  v55 = a2[4];
  v56 = *(a2 + 20);
  v13 = a2[1];
  v51 = *a2;
  v52 = v13;
  v14 = v12;
  *&v45 = v12;
  v32 = DWORD2(v12);
  DWORD2(v45) = DWORD2(v12);
  v15 = PreferencesInputs.contains<A>(_:includeHostPreferences:)();
  if ((v15 & 1) == 0)
  {
    return a3();
  }

  v29 = a4;
  v30 = a3;
  v31 = a7;
  MEMORY[0x1EEE9AC00](v15);
  v27 = a5;
  WitnessTable = a6;
  type metadata accessor for SelectableModifier(255, a5, a6, v16);
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();
  type metadata accessor for _GraphValue();
  v17 = _GraphValue.value.getter();
  v47 = v53;
  v48 = v54;
  v49 = v55;
  v50 = v56;
  v45 = v51;
  v46 = v52;
  swift_beginAccess();
  v18 = *(v52 + 16);
  outlined init with copy of _ViewInputs(&v51, &v39);
  lazy protocol witness table accessor for type _GraphInputs.SelectionContextKey and conformance _GraphInputs.SelectionContextKey();
  PropertyList.subscript.getter();
  v19 = 0;
  if (v39 != *MEMORY[0x1E698D3F8])
  {
    v19 = AGCreateWeakAttribute();
  }

  *&v39 = __PAIR64__(v17, v18);
  *(&v39 + 1) = v19;
  MEMORY[0x1EEE9AC00](v19);
  v27 = type metadata accessor for SelectableModifier.ChildEnvironment(0, a5, a6, v20);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SelectableModifier<A>.ChildEnvironment, v27);
  type metadata accessor for Attribute<EnvironmentValues>();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v39, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_0, v26, v27, MEMORY[0x1E69E73E0], v21, MEMORY[0x1E69E7410], v22);
  _GraphInputs.environment.setter();
  v35[2] = v47;
  v35[3] = v48;
  v35[4] = v49;
  v36 = v50;
  v35[0] = v45;
  v35[1] = v46;
  v41 = v47;
  v42 = v48;
  v43 = v49;
  v44 = v50;
  v39 = v45;
  v40 = v46;
  v23 = outlined init with copy of _ViewInputs(v35, v37);
  (v30)(v23, &v39);
  v37[3] = v42;
  v37[4] = v43;
  v38 = v44;
  v37[0] = v39;
  v37[1] = v40;
  v37[2] = v41;
  v24 = outlined destroy of _ViewInputs(v37);
  v33 = v14;
  v34 = v32;
  MEMORY[0x1EEE9AC00](v24);
  v26[0] = a5;
  v26[1] = a6;
  LODWORD(v27) = v17;

  PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();

  v41 = v47;
  v42 = v48;
  v43 = v49;
  v44 = v50;
  v39 = v45;
  v40 = v46;
  return outlined destroy of _ViewInputs(&v39);
}

uint64_t closure #1 in static SelectableModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[2] = type metadata accessor for SelectableModifier(0, a2, a3, a4);
  v9[3] = a2;
  v6 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v9, a2, MEMORY[0x1E69E73E0], v6, MEMORY[0x1E69E7410], v7);
  return v9[5];
}

uint64_t implicit closure #1 in static SelectableModifier._makeView(modifier:inputs:body:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = *MEMORY[0x1E69E9840];
  v8 = a1;
  SelectableContent = type metadata accessor for SelectableModifier.MakeSelectableContent(0, a2, a3, a4);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SelectableModifier<A>.MakeSelectableContent, SelectableContent);
  type metadata accessor for [Selectable](0, &lazy cache variable for type metadata for Attribute<[Selectable]>, type metadata accessor for [Selectable], MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v8, closure #1 in Attribute.init<A>(_:)partial apply, v9, SelectableContent, MEMORY[0x1E69E73E0], v4, MEMORY[0x1E69E7410], v5);
  return v7;
}

double SelectableModifier.ChildEnvironment.value.getter@<D0>(unint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v8 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    v29 = a4;
    v12 = *WeakValue;
    v13 = WeakValue[1];
    Value = AGGraphGetValue();
    v16 = *Value;
    v15 = Value[1];
    *&v31 = v16;
    *(&v31 + 1) = v15;

    v25 = HIDWORD(a1);
    v17 = AGGraphGetValue();
    v24 = *(v8 + 16);
    v24(v10, v17, a2);
    v26 = v13;
    v27 = v12;
    v28 = a3;
    LOBYTE(v12) = SelectionContext.canSelect<A>(_:)(v10, v12, v13, a2, a3);
    v18 = *(v8 + 8);
    v18(v10, a2);
    v30 = v12 & 1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.IsSelectableKey>, &type metadata for EnvironmentValues.IsSelectableKey, &protocol witness table for EnvironmentValues.IsSelectableKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.IsSelectableKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.IsSelectableKey>, &type metadata for EnvironmentValues.IsSelectableKey, &protocol witness table for EnvironmentValues.IsSelectableKey);

    PropertyList.subscript.setter();
    v19 = *(&v31 + 1);
    if (*(&v31 + 1))
    {
      PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
    }

    v20 = AGGraphGetValue();
    v24(v10, v20, a2);
    v21 = SelectionContext.isSelected<A>(_:)(v10, v27, v26, a2, v28);
    v18(v10, a2);
    v30 = v21 & 1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.IsSelectedKey>, &type metadata for EnvironmentValues.IsSelectedKey, &protocol witness table for EnvironmentValues.IsSelectedKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.IsSelectedKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.IsSelectedKey>, &type metadata for EnvironmentValues.IsSelectedKey, &protocol witness table for EnvironmentValues.IsSelectedKey);

    PropertyList.subscript.setter();
    if (v19)
    {
      PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
    }

    result = *&v31;
    *v29 = v31;
  }

  else
  {

    return ScrollBehaviorModifier.ChildEnvironment.environment.getter(a4);
  }

  return result;
}

uint64_t SelectableModifier.MakeSelectableContent.value.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for [Selectable](0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Selectable>, type metadata accessor for Selectable, MEMORY[0x1E69E6F90]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_18CD63400;
  Value = AGGraphGetValue();
  (*(v5 + 16))(v7, Value, a2);
  *(v8 + 56) = type metadata accessor for SelectableModifier.SelectableContent(0, a2, a3, v10);
  *(v8 + 64) = &protocol witness table for SelectableModifier<A>.SelectableContent;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v8 + 32));
  (*(v5 + 32))(boxed_opaque_existential_1, v7, a2);
  return v8;
}

uint64_t protocol witness for Rule.value.getter in conformance SelectableModifier<A>.MakeSelectableContent@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = SelectableModifier.MakeSelectableContent.value.getter(*v2, *(a1 + 16), *(a1 + 24));
  *a2 = result;
  return result;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance SelectableModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SelectableModifier<A>, a5);

  return MEMORY[0x1EEDE07E0](a1, a2, a3, a4, a5, WitnessTable);
}

unint64_t type metadata accessor for Selectable()
{
  result = lazy cache variable for type metadata for Selectable;
  if (!lazy cache variable for type metadata for Selectable)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for Selectable);
  }

  return result;
}

double outlined copy of PathToken(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) == 0)
  {
    return outlined copy of Data._Representation(a1, a2);
  }

  return result;
}

void outlined consume of PathToken(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
  }

  else
  {
    outlined consume of Data._Representation(a1, a2);
  }
}

uint64_t *assignWithCopy for PathToken(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  outlined copy of PathToken(*a2, v4);
  v5 = *a1;
  v6 = a1[1];
  *a1 = v3;
  a1[1] = v4;
  outlined consume of PathToken(v5, v6);
  return a1;
}

uint64_t *assignWithTake for PathToken(uint64_t *a1, _OWORD *a2)
{
  v3 = *a1;
  v4 = a1[1];
  *a1 = *a2;
  outlined consume of PathToken(v3, v4);
  return a1;
}

uint64_t getEnumTagSinglePayload for PathToken(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 3 && *(a1 + 16))
  {
    return (*a1 + 3);
  }

  v3 = ((2 * ((*(a1 + 8) & 0x1000000000000000) != 0)) | ((*(a1 + 8) >> 60) >> 1) & 1) ^ 3;
  if (v3 >= 2)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for PathToken(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 2)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    if (a3 >= 3)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 3)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((2 * a2) & 2 | 1u) << 60;
    }
  }

  return result;
}

uint64_t closure #1 in LocationBasedFeedbackAdaptor.generate()@<X0>(void *a2@<X8>)
{
  AGGraphClearUpdate();
  type metadata accessor for CGPoint(0);
  Value = AGGraphGetValue();
  v4 = *Value;
  v5 = Value[1];
  result = AGGraphSetUpdate();
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t protocol witness for PlatformSensoryFeedback.tearDown() in conformance LocationBasedFeedbackAdaptor()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 8, v1);
  return (*(*(v2 + 8) + 16))(v1);
}

uint64_t protocol witness for PlatformSensoryFeedback.generate() in conformance LocationBasedFeedbackAdaptor()
{
  type metadata accessor for CGPoint(0);
  static Update.ensure<A>(_:)();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 8, v1);
  return (*(v2 + 16))(v1, v2);
}

double FeedbackLocation.value.getter(unint64_t a1, uint64_t a2)
{
  AGGraphGetValue();
  type metadata accessor for CGPoint(0);

  Value = AGGraphGetValue();
  v3 = *Value;
  v4 = *(Value + 8);
  AGGraphGetValue();
  v14.origin.x = v3;
  v14.origin.y = v4;
  v14.size.width = MEMORY[0x18D00B390]();
  v14.size.height = v5;
  hostingViewCoordinateSpace.getter();
  v13 = 1;
  CGRect.convert(to:transform:)();
  outlined destroy of CoordinateSpace(v12);
  x = v14.origin.x;
  y = v14.origin.y;
  width = v14.size.width;
  height = v14.size.height;
  v10 = x + CGRectGetWidth(v14) * 0.5;
  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  CGRectGetHeight(v15);

  return v10;
}

id protocol witness for LocationBasedSensoryFeedback.generate(location:) in conformance CanvasFeedbackImplementation()
{
  v1 = *(v0 + 8);
  if (v1 >> 62 != 2)
  {
    return result;
  }

  v2 = *(v0 + 16);
  if (v2 == 1 && v1 == 0x8000000000000002)
  {
    v5 = &selRef_alignmentOccurredAtLocation_;
    return [*v0 *v5];
  }

  if (v2 == 2 && v1 == 0x8000000000000002)
  {
    v5 = &selRef_pathCompletedAtLocation_;
    return [*v0 *v5];
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FeedbackLocation and conformance FeedbackLocation()
{
  result = lazy protocol witness table cache variable for type FeedbackLocation and conformance FeedbackLocation;
  if (!lazy protocol witness table cache variable for type FeedbackLocation and conformance FeedbackLocation)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FeedbackLocation, &unk_1EFFA6E50, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type FeedbackLocation and conformance FeedbackLocation);
  }

  return result;
}

uint64_t outlined destroy of LocationBasedSensoryFeedback?(uint64_t a1)
{
  type metadata accessor for LocationBasedSensoryFeedback?(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for LocationBasedSensoryFeedback?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for LocationBasedSensoryFeedback?)
  {
    type metadata accessor for DropDelegate(255, &lazy cache variable for type metadata for LocationBasedSensoryFeedback, &protocol descriptor for LocationBasedSensoryFeedback, 1);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for LocationBasedSensoryFeedback?);
    }
  }
}

uint64_t assignWithCopy for NotificationFeedbackImplementation(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  return a1;
}

uint64_t assignWithTake for NotificationFeedbackImplementation(uint64_t a1, void *a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = a2[1];
  return a1;
}

uint64_t assignWithCopy for CanvasFeedbackImplementation(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  return a1;
}

uint64_t assignWithTake for CanvasFeedbackImplementation(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  return a1;
}

uint64_t assignWithCopy for ImpactFeedbackImplementation(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  return a1;
}

uint64_t assignWithTake for ImpactFeedbackImplementation(uint64_t a1, void *a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = a2[1];
  return a1;
}

uint64_t assignWithCopy for LocationBasedFeedbackAdaptor(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  __swift_assign_boxed_opaque_existential_1((a1 + 8), (a2 + 8));
  return a1;
}

uint64_t assignWithTake for LocationBasedFeedbackAdaptor(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  __swift_destroy_boxed_opaque_existential_1((a1 + 8));
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

BOOL static ReorderPosition.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v9 = type metadata accessor for ReorderPosition(0, a3, a4, v8);
  return *(a1 + *(v9 + 36)) == *(a2 + *(v9 + 36));
}

Swift::Int ReorderPosition.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  MEMORY[0x18D00F6F0](*(v1 + *(a1 + 36)));
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ReorderPosition<A>(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  ReorderPosition.hash(into:)(v4, a2);
  return Hasher._finalize()();
}

uint64_t *ReorderableState.ViewState.deinit()
{
  v1 = *v0;

  v2 = *(*v0 + 104);
  type metadata accessor for ReorderPosition(255, *(v1 + 80), *(v1 + 88), v3);
  v4 = type metadata accessor for Optional();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);
  v5 = *(*v0 + 112);
  v6 = type metadata accessor for ObservationRegistrar();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

double ReorderableState.ViewState.__deallocating_deinit()
{
  ReorderableState.ViewState.deinit();

  swift_deallocClassInstance();
  return result;
}

double ReorderableState.__deallocating_deinit()
{

  swift_deallocClassInstance();
  return result;
}

uint64_t type metadata completion function for ReorderableState.ViewState(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ReorderPosition(255, *(a1 + 80), *(a1 + 88), a4);
  result = type metadata accessor for Optional();
  if (v5 <= 0x3F)
  {
    result = type metadata accessor for ObservationRegistrar();
    if (v6 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for ReorderPosition(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    *((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8) = *((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  return v3;
}

uint64_t initializeWithCopy for ReorderPosition(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  *((*(v5 + 48) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 48) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithCopy for ReorderPosition(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  *((*(v5 + 40) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 40) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for ReorderPosition(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  *((*(v5 + 24) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 24) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t getEnumTagSinglePayload for ReorderPosition(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))(a1);
  }

  v6 = ((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v7 = a2 - v5;
  v8 = v6 & 0xFFFFFFF8;
  if ((v6 & 0xFFFFFFF8) != 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = v7 + 1;
  }

  if (v9 >= 0x10000)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  if (v9 < 0x100)
  {
    v10 = 1;
  }

  if (v9 >= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v11 || (v12 = *(a1 + v6)) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))(a1);
    }

    return 0;
  }

  v13 = v12 - 1;
  if (v8)
  {
    v13 = 0;
    LODWORD(v8) = *a1;
  }

  return v5 + (v8 | v13) + 1;
}

unsigned int *storeEnumTagSinglePayload for ReorderPosition(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v6 >= a3)
  {
    v11 = 0;
    v12 = a2 - v6;
    if (a2 <= v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = a3 - v6;
    if (((*(v5 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = 2;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = a2 - v6;
    if (a2 <= v6)
    {
LABEL_14:
      if (v11 > 1)
      {
        if (v11 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_30;
        }

        *(result + v7) = 0;
      }

      else if (v11)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_30;
      }

      if (!a2)
      {
        return result;
      }

LABEL_30:
      v16 = *(v5 + 56);

      return v16();
    }
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v14 = ~v6 + a2;
    v15 = result;
    bzero(result, v7);
    result = v15;
    *v15 = v14;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      *(result + v7) = v13;
    }

    else
    {
      *(result + v7) = v13;
    }
  }

  else if (v11)
  {
    *(result + v7) = v13;
  }

  return result;
}

uint64_t GlassProminentButtonStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = type metadata accessor for PrimitiveButtonStyleConfiguration(0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_0(a1, v7, type metadata accessor for PrimitiveButtonStyleConfiguration);
  *a2 = *v7;
  v8 = *(v5 + 32);
  type metadata accessor for Button<PrimitiveButtonStyleConfiguration.Label>(0, v9, v10, v11);
  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_0(&v7[v8], &a2[*(v12 + 36)], type metadata accessor for ButtonAction);
  return outlined destroy of PrimitiveButtonStyleConfiguration(v7);
}

uint64_t protocol witness for PrimitiveButtonStyle.makeBody(configuration:) in conformance GlassProminentButtonStyle@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = type metadata accessor for PrimitiveButtonStyleConfiguration(0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_0(a1, v7, type metadata accessor for PrimitiveButtonStyleConfiguration);
  *a2 = *v7;
  v8 = *(v5 + 32);
  type metadata accessor for Button<PrimitiveButtonStyleConfiguration.Label>(0, v9, v10, v11);
  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_0(&v7[v8], &a2[*(v12 + 36)], type metadata accessor for ButtonAction);
  return outlined destroy of PrimitiveButtonStyleConfiguration(v7);
}

void type metadata accessor for ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<BorderedProminentButtonStyle>>, ViewInputFlagModifier<ApplyGlassButtonConfiguration>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<BorderedProminentButtonStyle>>, ViewInputFlagModifier<ApplyGlassButtonConfiguration>>)
  {
    type metadata accessor for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<BorderedProminentButtonStyle>>(255, a2, a3, a4);
    type metadata accessor for PrimitiveButtonStyleContainerModifier<BorderedProminentButtonStyle>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<ApplyGlassButtonConfiguration>, lazy protocol witness table accessor for type ApplyGlassButtonConfiguration and conformance ApplyGlassButtonConfiguration, &type metadata for ApplyGlassButtonConfiguration, MEMORY[0x1E697FD28]);
    v4 = type metadata accessor for ModifiedContent();
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<BorderedProminentButtonStyle>>, ViewInputFlagModifier<ApplyGlassButtonConfiguration>>);
    }
  }
}

void type metadata accessor for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<BorderedProminentButtonStyle>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy cache variable for type metadata for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<BorderedProminentButtonStyle>>)
  {
    type metadata accessor for Button<PrimitiveButtonStyleConfiguration.Label>(255, a2, a3, a4);
    type metadata accessor for PrimitiveButtonStyleContainerModifier<BorderedProminentButtonStyle>(255, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<BorderedProminentButtonStyle>, lazy protocol witness table accessor for type BorderedProminentButtonStyle and conformance BorderedProminentButtonStyle, &type metadata for BorderedProminentButtonStyle, type metadata accessor for PrimitiveButtonStyleContainerModifier);
    v4 = type metadata accessor for ModifiedContent();
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<BorderedProminentButtonStyle>>);
    }
  }
}

void type metadata accessor for PrimitiveButtonStyleContainerModifier<BorderedProminentButtonStyle>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<BorderedProminentButtonStyle>>, ViewInputFlagModifier<ApplyGlassButtonConfiguration>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v8 = a2(255);
    v9[0] = a3();
    v9[1] = a4();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v8, v9);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<BorderedProminentButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>()
{
  result = lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<BorderedProminentButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>;
  if (!lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<BorderedProminentButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>)
  {
    type metadata accessor for PrimitiveButtonStyleContainerModifier<BorderedProminentButtonStyle>(255, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<BorderedProminentButtonStyle>, lazy protocol witness table accessor for type BorderedProminentButtonStyle and conformance BorderedProminentButtonStyle, &type metadata for BorderedProminentButtonStyle, type metadata accessor for PrimitiveButtonStyleContainerModifier);
    result = swift_getWitnessTable(protocol conformance descriptor for PrimitiveButtonStyleContainerModifier<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<BorderedProminentButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>);
  }

  return result;
}

_WORD *protocol witness for static PreferenceKey.reduce(value:nextValue:) in conformance StatusBarKey(_WORD *result, void *(*a2)(uint64_t *__return_ptr))
{
  v2 = result;
  v3 = *result;
  if (*result == 2)
  {
    result = a2(&v4);
    v3 = v4;
  }

  *v2 = v3;
  return result;
}

void *protocol witness for static PreferenceKey.reduce(value:nextValue:) in conformance StatusBarAlignmentKey(char *a1, void *(*a2)(uint64_t *__return_ptr))
{
  result = a2(&v5);
  v4 = v5;
  if (v5 == 2)
  {
    v4 = *a1;
  }

  *a1 = v4;
  return result;
}

void closure #1 in View._statusBar(hidden:)(unsigned __int8 *a1@<X0>, _WORD *a3@<X8>)
{
  v4 = *a1;
  if (Transaction.animation.getter())
  {

    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  *a3 = v5 | v4;
}

void type metadata accessor for _PreferenceWritingModifier<StatusBarAlignmentKey>()
{
  if (!lazy cache variable for type metadata for _PreferenceWritingModifier<StatusBarAlignmentKey>)
  {
    v0 = type metadata accessor for _PreferenceWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _PreferenceWritingModifier<StatusBarAlignmentKey>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _PreferenceWritingModifier<StatusBarAlignmentKey> and conformance _PreferenceWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _PreferenceWritingModifier<StatusBarAlignmentKey> and conformance _PreferenceWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _PreferenceWritingModifier<StatusBarAlignmentKey> and conformance _PreferenceWritingModifier<A>)
  {
    type metadata accessor for _PreferenceWritingModifier<StatusBarAlignmentKey>();
    result = swift_getWitnessTable(MEMORY[0x1E6980758], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _PreferenceWritingModifier<StatusBarAlignmentKey> and conformance _PreferenceWritingModifier<A>);
  }

  return result;
}

void type metadata accessor for TransactionalPreferenceModifier<Bool, StatusBarKey>()
{
  if (!lazy cache variable for type metadata for TransactionalPreferenceModifier<Bool, StatusBarKey>)
  {
    v4[4] = v0;
    v4[5] = v1;
    v4[0] = MEMORY[0x1E69E6370];
    v4[1] = &type metadata for StatusBarKey;
    v4[2] = MEMORY[0x1E69E6388];
    v4[3] = &protocol witness table for StatusBarKey;
    v2 = type metadata accessor for TransactionalPreferenceModifier(0, v4);
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for TransactionalPreferenceModifier<Bool, StatusBarKey>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type StatusBarAlignment.Role and conformance StatusBarAlignment.Role()
{
  result = lazy protocol witness table cache variable for type StatusBarAlignment.Role and conformance StatusBarAlignment.Role;
  if (!lazy protocol witness table cache variable for type StatusBarAlignment.Role and conformance StatusBarAlignment.Role)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StatusBarAlignment.Role, &type metadata for StatusBarAlignment.Role, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type StatusBarAlignment.Role and conformance StatusBarAlignment.Role);
  }

  return result;
}

uint64_t TableRowContent.draggable<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a6;
  v12[6] = a1;
  v12[7] = a2;
  v14 = partial apply for closure #1 in TableRowContent.draggable<A>(_:);
  v15 = v12;
  lazy protocol witness table accessor for type ItemProviderTableRowModifier and conformance ItemProviderTableRowModifier();

  TableRowContent.modifier<A>(_:)(&v14, a3, &type metadata for ItemProviderTableRowModifier);
  return outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v14, v15);
}

uint64_t closure #1 in TableRowContent.draggable<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSItemProvider, 0x1E696ACA0);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a6;
  v12[6] = a1;
  v12[7] = a2;

  return NSItemProvider.init<A>(transferable:)();
}

unint64_t lazy protocol witness table accessor for type ItemProviderTableRowModifier and conformance ItemProviderTableRowModifier()
{
  result = lazy protocol witness table cache variable for type ItemProviderTableRowModifier and conformance ItemProviderTableRowModifier;
  if (!lazy protocol witness table cache variable for type ItemProviderTableRowModifier and conformance ItemProviderTableRowModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ItemProviderTableRowModifier, &type metadata for ItemProviderTableRowModifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ItemProviderTableRowModifier and conformance ItemProviderTableRowModifier);
  }

  return result;
}

uint64_t TableRowContent.dropDestination<A>(for:action:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = static Transferable.readableContentTypes.getter();
  v14 = swift_allocObject();
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a6;
  v14[5] = a7;
  v14[6] = a2;
  v14[7] = a3;
  TransferableDropAction.init(action:cleanupAction:)(partial apply for closure #1 in TableRowContent.dropDestination<A>(for:action:), v14, 0, 0, v20);
  v19[4] = type metadata accessor for TransferableDropAction(0, a5, a7, v15);
  v19[5] = &protocol witness table for TransferableDropAction<A>;
  v16 = swift_allocObject();
  v17 = v20[1];
  *(v16 + 16) = v20[0];
  *(v16 + 32) = v17;
  *(v16 + 48) = v21;
  v19[0] = v13;
  v19[1] = v16;
  lazy protocol witness table accessor for type DropOntoTableRowModifier and conformance DropOntoTableRowModifier();

  TableRowContent.modifier<A>(_:)(v19, a4, &type metadata for DropOntoTableRowModifier);
  return sub_18C0B6B34(v19);
}

unint64_t lazy protocol witness table accessor for type DropOntoTableRowModifier and conformance DropOntoTableRowModifier()
{
  result = lazy protocol witness table cache variable for type DropOntoTableRowModifier and conformance DropOntoTableRowModifier;
  if (!lazy protocol witness table cache variable for type DropOntoTableRowModifier and conformance DropOntoTableRowModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DropOntoTableRowModifier, &type metadata for DropOntoTableRowModifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DropOntoTableRowModifier and conformance DropOntoTableRowModifier);
  }

  return result;
}

uint64_t DynamicTableRowContent.dropDestination<A>(for:action:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_allocObject();
  v13[2] = a4;
  v13[3] = a5;
  v13[4] = a6;
  v13[5] = a7;
  v13[6] = a2;
  v13[7] = a3;

  v15[0] = static Transferable.readableContentTypes.getter();
  v15[1] = partial apply for closure #1 in DynamicTableRowContent.dropDestination<A>(for:action:);
  v15[2] = v13;
  lazy protocol witness table accessor for type OnInsertTableRowModifier and conformance OnInsertTableRowModifier();
  TableRowContent.modifier<A>(_:)(v15, a4, &type metadata for OnInsertTableRowModifier);
}

void closure #1 in DynamicTableRowContent.dropDestination<A>(for:action:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v54 = a7;
  v52 = a5;
  v44 = a1;
  v45 = a4;
  v43 = a3;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v46 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = dispatch_group_create();
  v56 = static Array._allocateUninitialized(_:)();
  type metadata accessor for Array();
  AtomicBox.init(wrappedValue:)();
  v19 = a2;
  v20 = aBlock[0];
  v53 = a2;
  v50 = v12;
  v51 = v11;
  v48 = v14;
  v49 = v15;
  v47 = v16;
  if (a2 >> 62)
  {
    v42 = __CocoaSet.count.getter();
    v19 = v53;
    v21 = v42;
  }

  else
  {
    v21 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v22 = v54;
  v23 = v52;
  if (!v21)
  {
    goto LABEL_11;
  }

  if (v21 >= 1)
  {
    if ((v19 & 0xC000000000000001) != 0)
    {
      v24 = 0;
      v23 = v52;
      do
      {
        MEMORY[0x18D00E9C0](v24++, v53);
        dispatch_group_enter(v18);
        v25 = swift_allocObject();
        v25[2] = v23;
        v25[3] = a6;
        v25[4] = v22;
        v25[5] = a8;
        v25[6] = v18;
        v25[7] = v20;
        v26 = v18;

        v27 = NSItemProvider.loadTransferable<A>(type:completionHandler:)();
        swift_unknownObjectRelease();

        v22 = v54;
      }

      while (v21 != v24);
    }

    else
    {
      v28 = (v19 + 32);
      v23 = v52;
      do
      {
        v29 = *v28++;
        v30 = v29;
        dispatch_group_enter(v18);
        v31 = swift_allocObject();
        v31[2] = v23;
        v31[3] = a6;
        v31[4] = v22;
        v31[5] = a8;
        v31[6] = v18;
        v31[7] = v20;
        v32 = v18;

        v33 = NSItemProvider.loadTransferable<A>(type:completionHandler:)();

        v22 = v54;

        --v21;
      }

      while (v21);
    }

LABEL_11:
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
    v34 = static OS_dispatch_queue.main.getter();
    v35 = swift_allocObject();
    v35[2] = v23;
    v35[3] = a6;
    v35[4] = v22;
    v35[5] = a8;
    v36 = v44;
    v37 = v45;
    v35[6] = v43;
    v35[7] = v37;
    v35[8] = v36;
    v35[9] = v20;
    aBlock[4] = partial apply for closure #2 in closure #1 in DynamicTableRowContent.dropDestination<A>(for:action:);
    aBlock[5] = v35;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_15;
    v38 = _Block_copy(aBlock);

    v39 = v46;
    static DispatchQoS.unspecified.getter();
    v56 = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    type metadata accessor for [DispatchWorkItemFlags](0);
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], type metadata accessor for [DispatchWorkItemFlags], MEMORY[0x1E69E6328]);
    v40 = v48;
    v41 = v51;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_group.notify(qos:flags:queue:execute:)();
    _Block_release(v38);

    (*(v50 + 8))(v40, v41);
    (*(v47 + 8))(v39, v49);

    return;
  }

  __break(1u);
}

unint64_t lazy protocol witness table accessor for type OnInsertTableRowModifier and conformance OnInsertTableRowModifier()
{
  result = lazy protocol witness table cache variable for type OnInsertTableRowModifier and conformance OnInsertTableRowModifier;
  if (!lazy protocol witness table cache variable for type OnInsertTableRowModifier and conformance OnInsertTableRowModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OnInsertTableRowModifier, &type metadata for OnInsertTableRowModifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type OnInsertTableRowModifier and conformance OnInsertTableRowModifier);
  }

  return result;
}

void closure #1 in closure #1 in DynamicTableRowContent.dropDestination<A>(for:action:)(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v33[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v33[-1] - v13;
  type metadata accessor for Error();
  v15 = type metadata accessor for Result();
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = (&v33[-1] - v17);
  (*(v19 + 16))(&v33[-1] - v17, a1, v15, v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = *v18;
    v21 = static os_log_type_t.fault.getter();
    v22 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v22, v21))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v33[0] = v24;
      *v23 = 136315394;
      v25 = _typeName(_:qualified:)();
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, v33);

      *(v23 + 4) = v27;
      *(v23 + 12) = 2080;
      swift_getErrorValue();
      v28 = Error.localizedDescription.getter();
      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, v33);

      *(v23 + 14) = v30;
      _os_log_impl(&dword_18BD4A000, v22, v21, "Error loading %s: %s", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x18D0110E0](v24, -1, -1);
      MEMORY[0x18D0110E0](v23, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    (*(v9 + 32))(v14, v18, a5);
    (*(v9 + 16))(v11, v14, a5);
    v33[4] = a3;
    type metadata accessor for Array();
    type metadata accessor for AtomicBox();
    v31 = AtomicBox.wrappedValue.modify();
    Array.append(_:)();
    v31(v33, 0);
    (*(v9 + 8))(v14, a5);
  }

  dispatch_group_leave(a2);
}

uint64_t closure #2 in closure #1 in DynamicTableRowContent.dropDestination<A>(for:action:)(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for Array();
  type metadata accessor for AtomicBox();
  AtomicBox.wrappedValue.getter();
  a1(a3);
}

uint64_t TableRowContent.itemProvider(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  v7 = a2;
  outlined copy of AppIntentExecutor?(a1, a2);
  lazy protocol witness table accessor for type ItemProviderTableRowModifier and conformance ItemProviderTableRowModifier();
  TableRowContent.modifier<A>(_:)(&v6, a3, &type metadata for ItemProviderTableRowModifier);
  return outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v6, v7);
}

uint64_t DynamicTableRowContent.onInsert(of:perform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7[0] = a1;
  v7[1] = a2;
  v7[2] = a3;
  lazy protocol witness table accessor for type OnInsertTableRowModifier and conformance OnInsertTableRowModifier();

  TableRowContent.modifier<A>(_:)(v7, a4, &type metadata for OnInsertTableRowModifier);
}

uint64_t ItemProviderTableRowModifier.body.getter@<X0>(uint64_t (**a1)()@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  if (*v1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed () -> (@owned NSItemProvider?);
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a1 = v6;
  a1[1] = v5;

  return outlined copy of AppIntentExecutor?(v3, v4);
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@owned NSItemProvider?)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed () -> (@owned NSItemProvider?)@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

uint64_t protocol witness for _TableRowContentModifier.body.getter in conformance ItemProviderTableRowModifier@<X0>(uint64_t (**a1)()@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  if (*v1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = thunk for @escaping @callee_guaranteed () -> (@owned NSItemProvider?)partial apply;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a1 = v6;
  a1[1] = v5;

  return outlined copy of AppIntentExecutor?(v3, v4);
}

double OnInsertTableRowModifier.body.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v2;

  return result;
}

double protocol witness for _TableRowContentModifier.body.getter in conformance OnInsertTableRowModifier@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v2;

  return result;
}

double destroy for OnInsertTableRowModifier(uint64_t a1)
{

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for OnInsertTableRowModifier(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;

  return a1;
}

void *assignWithCopy for OnInsertTableRowModifier(void *a1, void *a2)
{
  *a1 = *a2;

  v4 = a2[2];
  a1[1] = a2[1];
  a1[2] = v4;

  return a1;
}

uint64_t assignWithTake for OnInsertTableRowModifier(uint64_t a1, uint64_t a2)
{

  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;

  return a1;
}

uint64_t get_witness_table_7SwiftUI15TableRowContentRz16CoreTransferable0G0Rd__r__lAA08ModifiedE0VyxAA012ItemProvidercD8ModifierVGAaBHpxAaBHD1__AhA01_cdeK0HPyHCHCTm(uint64_t a1, double a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = *(a1 + 16);
  v6 = type metadata accessor for ModifiedContent();
  v8[0] = v5;
  v8[1] = a4();
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v6, v8);
}

double DropOntoConfiguration.performDrop(info:)(void *a1)
{
  v2 = v1;
  v4 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    UIDropSession.itemProviders(for:)(v4);
    v6 = v5;
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  v7 = swift_allocObject();
  outlined init with copy of _Benchmark((v2 + 1), v7 + 16);
  outlined init with copy of DropInfo(a1, &v15);
  v8 = swift_allocObject();
  v9 = v16;
  *(v8 + 16) = v15;
  *(v8 + 32) = v9;
  *(v8 + 48) = v17;
  v10 = *(v7 + 40);
  v11 = *(v7 + 48);
  __swift_mutable_project_boxed_opaque_existential_1(v7 + 16, v10);
  (*(v11 + 16))(destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation, v8, v10, v11);
  outlined init with copy of DropInfo(a1, &v15);
  v12 = swift_allocObject();
  *(v12 + 16) = v7;
  *(v12 + 24) = v6;
  v13 = v16;
  *(v12 + 32) = v15;
  *(v12 + 48) = v13;
  *(v12 + 64) = v17;

  static Update.enqueueAction(reason:_:)();

  return result;
}

uint64_t closure #2 in DropOntoConfiguration.performDrop(info:)(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  outlined init with copy of _Benchmark(a1 + 16, v12);
  v6 = v13;
  v7 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  v8 = __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  *&v10 = static DropSession.ID.invalid;
  BYTE8(v10) = 0;
  *v11 = 1;
  memset(&v11[8], 0, 32);
  *&v11[40] = *(v8 + 11);
  (*(v7 + 32))(a2, &v10, v6, v7);
  v15[2] = *&v11[16];
  v15[3] = *&v11[32];
  v16 = *&v11[48];
  v15[0] = v10;
  v15[1] = *v11;
  outlined destroy of DropSession(v15);
  return __swift_destroy_boxed_opaque_existential_1(v12);
}

void closure #1 in DropConfigurationDelegate.validateDrop(info:)(void **a1@<X0>, void *a2@<X1>, Swift::Bool *a3@<X8>)
{
  v4._rawValue = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    v5 = UIDropSession.hasItemsConforming(to:)(v4);
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0;
  }

  *a3 = v5;
}

BOOL protocol witness for DropDelegate.performDrop(info:) in conformance DropConfigurationDelegate(void *a1)
{
  outlined init with copy of DropOntoConfiguration?(v1, v5);
  if (v5[0])
  {
    DropOntoConfiguration.performDrop(info:)(a1);
    sub_18C0B6B34(v5);
  }

  else
  {
    outlined destroy of DropOntoConfiguration?(v5);
  }

  outlined init with copy of DropOntoConfiguration?(v1, v5);
  v3 = v5[0] != 0;
  outlined destroy of DropOntoConfiguration?(v5);
  return v3;
}

uint64_t protocol witness for static _ViewTraitKey.defaultValue.getter in conformance DropOntoTraitKey@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
    v2 = a1;
  }

  return outlined init with copy of DropOntoConfiguration?(&static DropOntoTraitKey.defaultValue, v2);
}

uint64_t outlined init with copy of DropOntoConfiguration(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  v4 = *(a1 + 32);
  *(a2 + 32) = v4;
  v5 = v4;
  v6 = **(v4 - 8);

  v6(a2 + 8, a1 + 8, v5);
  return a2;
}

uint64_t outlined init with copy of DropOntoConfiguration?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for DropOntoConfiguration?();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for DropOntoConfiguration?()
{
  if (!lazy cache variable for type metadata for DropOntoConfiguration?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DropOntoConfiguration?);
    }
  }
}

unint64_t type metadata accessor for Error()
{
  result = lazy cache variable for type metadata for Error;
  if (!lazy cache variable for type metadata for Error)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for Error);
  }

  return result;
}

uint64_t destroy for DropConfigurationDelegate(uint64_t *a1)
{
  result = *a1;
  if (result)
  {

    return __swift_destroy_boxed_opaque_existential_1(a1 + 1);
  }

  return result;
}

__n128 initializeWithCopy for DropConfigurationDelegate(uint64_t a1, uint64_t a2)
{
  if (*a2)
  {
    *a1 = *a2;
    v2 = *(a2 + 32);
    *(a1 + 32) = v2;
    v3 = v2;
    v4 = **(v2 - 8);

    v4(a1 + 8, a2 + 8, v3);
  }

  else
  {
    v8 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v8;
    result = *(a2 + 32);
    *(a1 + 32) = result;
  }

  return result;
}

uint64_t *assignWithCopy for DropConfigurationDelegate(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  if (v4)
  {
    if (v5)
    {
      *a1 = v5;

      __swift_assign_boxed_opaque_existential_1(a1 + 1, a2 + 1);
    }

    else
    {
      sub_18C0B6B34(a1);
      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      *a1 = *a2;
      *(a1 + 1) = v9;
      *(a1 + 2) = v8;
    }
  }

  else if (v5)
  {
    *a1 = v5;
    v6 = a2[4];
    a1[4] = v6;
    a1[5] = a2[5];
    v7 = **(v6 - 8);

    v7((a1 + 1), a2 + 1, v6);
  }

  else
  {
    v10 = *a2;
    v11 = *(a2 + 2);
    *(a1 + 1) = *(a2 + 1);
    *(a1 + 2) = v11;
    *a1 = v10;
  }

  return a1;
}

uint64_t assignWithTake for DropConfigurationDelegate(uint64_t result, uint64_t a2)
{
  if (*result)
  {
    if (*a2)
    {
      *result = *a2;
      v3 = result;

      __swift_destroy_boxed_opaque_existential_1((v3 + 8));
      *(v3 + 8) = *(a2 + 8);
      *(v3 + 24) = *(a2 + 24);
      *(v3 + 40) = *(a2 + 40);
    }

    else
    {
      v3 = result;
      sub_18C0B6B34(result);
      v5 = *(a2 + 16);
      *v3 = *a2;
      *(v3 + 16) = v5;
      *(v3 + 32) = *(a2 + 32);
    }

    return v3;
  }

  else
  {
    v4 = *(a2 + 16);
    *result = *a2;
    *(result + 16) = v4;
    *(result + 32) = *(a2 + 32);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DropConfigurationDelegate(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for DropConfigurationDelegate(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t initializeWithCopy for DropOntoTableRowModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 32);
  *(a1 + 32) = v4;
  v5 = v4;
  v6 = **(v4 - 8);

  v6(a1 + 8, a2 + 8, v5);
  return a1;
}

void *assignWithCopy for DropOntoTableRowModifier(void *a1, void *a2)
{
  v3 = a2 + 1;
  *a1 = *a2;

  __swift_assign_boxed_opaque_existential_1(a1 + 1, v3);
  return a1;
}

uint64_t assignWithTake for DropOntoTableRowModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  __swift_destroy_boxed_opaque_existential_1((a1 + 8));
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t outlined destroy of DropOntoConfiguration?(uint64_t a1)
{
  type metadata accessor for DropOntoConfiguration?();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double View.keyboardType(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  View.environment<A>(_:_:)();

  return result;
}

void EnvironmentValues.keyboardType.getter()
{
  if (*(v1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<KeyboardTypeKey>, &type metadata for KeyboardTypeKey, &protocol witness table for KeyboardTypeKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<KeyboardTypeKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<KeyboardTypeKey>, &type metadata for KeyboardTypeKey, &protocol witness table for KeyboardTypeKey);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<KeyboardTypeKey>, &type metadata for KeyboardTypeKey, &protocol witness table for KeyboardTypeKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<KeyboardTypeKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<KeyboardTypeKey>, &type metadata for KeyboardTypeKey, &protocol witness table for KeyboardTypeKey);

    PropertyList.subscript.getter();
  }
}

void key path getter for EnvironmentValues.keyboardType : EnvironmentValues(uint64_t *a1@<X0>, void *a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<KeyboardTypeKey>, &type metadata for KeyboardTypeKey, &protocol witness table for KeyboardTypeKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<KeyboardTypeKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<KeyboardTypeKey>, &type metadata for KeyboardTypeKey, &protocol witness table for KeyboardTypeKey);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<KeyboardTypeKey>, &type metadata for KeyboardTypeKey, &protocol witness table for KeyboardTypeKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<KeyboardTypeKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<KeyboardTypeKey>, &type metadata for KeyboardTypeKey, &protocol witness table for KeyboardTypeKey);
    PropertyList.subscript.getter();
  }

  *a2 = v3;
}

double key path setter for EnvironmentValues.keyboardType : EnvironmentValues(uint64_t *a1, void *a2)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<KeyboardTypeKey>, &type metadata for KeyboardTypeKey, &protocol witness table for KeyboardTypeKey);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<KeyboardTypeKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<KeyboardTypeKey>, &type metadata for KeyboardTypeKey, &protocol witness table for KeyboardTypeKey);

  PropertyList.subscript.setter();
  if (a2[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

double EnvironmentValues.keyboardType.setter(uint64_t *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<KeyboardTypeKey>, &type metadata for KeyboardTypeKey, &protocol witness table for KeyboardTypeKey);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<KeyboardTypeKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<KeyboardTypeKey>, &type metadata for KeyboardTypeKey, &protocol witness table for KeyboardTypeKey);

  PropertyList.subscript.setter();
  if (*(v1 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

uint64_t (*EnvironmentValues.keyboardType.modify(void *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v3[2] = v1;
  v3[3] = *v1;
  v4 = v1[1];
  v3[4] = v4;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<KeyboardTypeKey>, &type metadata for KeyboardTypeKey, &protocol witness table for KeyboardTypeKey);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<KeyboardTypeKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<KeyboardTypeKey>, &type metadata for KeyboardTypeKey, &protocol witness table for KeyboardTypeKey);
  if (v4)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  return EnvironmentValues.keyboardType.modify;
}

void EnvironmentValues.keyboardType.modify(void **a1)
{
  v1 = *a1;
  v2 = (*a1)[4];
  (*a1)[1] = **a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<KeyboardTypeKey>, &type metadata for KeyboardTypeKey, &protocol witness table for KeyboardTypeKey);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<KeyboardTypeKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<KeyboardTypeKey>, &type metadata for KeyboardTypeKey, &protocol witness table for KeyboardTypeKey);

  PropertyList.subscript.setter();
  if (v2)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  free(v1);
}

uint64_t EnvironmentValues.keyboardAppearance.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<KeyboardAppearanceKey>, &type metadata for KeyboardAppearanceKey, &protocol witness table for KeyboardAppearanceKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<KeyboardAppearanceKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<KeyboardAppearanceKey>, &type metadata for KeyboardAppearanceKey, &protocol witness table for KeyboardAppearanceKey);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<KeyboardAppearanceKey>, &type metadata for KeyboardAppearanceKey, &protocol witness table for KeyboardAppearanceKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<KeyboardAppearanceKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<KeyboardAppearanceKey>, &type metadata for KeyboardAppearanceKey, &protocol witness table for KeyboardAppearanceKey);
    PropertyList.subscript.getter();
  }

  return v2;
}

uint64_t static TextInputDictation.disabled.getter@<X0>(_BYTE *a1@<X8>)
{
  if (one-time initialization token for disabled != -1)
  {
    v3 = a1;
    result = swift_once();
    a1 = v3;
  }

  v1 = HIBYTE(static TextInputDictation.disabled);
  v2 = byte_1EAA1E9FA;
  *a1 = static TextInputDictation.disabled;
  a1[1] = v1;
  a1[2] = v2;
  return result;
}

uint64_t static TextInputDictation.enabled(forceSpelling:preferOnline:)@<X0>(uint64_t result@<X0>, char a2@<W1>, _BYTE *a3@<X8>)
{
  *a3 = 1;
  a3[1] = result;
  a3[2] = a2;
  return result;
}

void EnvironmentValues.textInputDictation.getter()
{
  if (*(v1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextInputDictation.Key>, &type metadata for TextInputDictation.Key, &protocol witness table for TextInputDictation.Key);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<TextInputDictation.Key> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextInputDictation.Key>, &type metadata for TextInputDictation.Key, &protocol witness table for TextInputDictation.Key);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextInputDictation.Key>, &type metadata for TextInputDictation.Key, &protocol witness table for TextInputDictation.Key);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<TextInputDictation.Key> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextInputDictation.Key>, &type metadata for TextInputDictation.Key, &protocol witness table for TextInputDictation.Key);

    PropertyList.subscript.getter();
  }
}

double View.textInputDictation(_:)(__int16 *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *(a1 + 2);
  swift_getKeyPath();
  v5 = swift_allocObject();
  *(v5 + 18) = v4;
  *(v5 + 16) = v3;
  View.transformEnvironment<A>(_:transform:)();

  return result;
}

void key path getter for EnvironmentValues.textInputDictation : EnvironmentValues(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextInputDictation.Key>, &type metadata for TextInputDictation.Key, &protocol witness table for TextInputDictation.Key);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<TextInputDictation.Key> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextInputDictation.Key>, &type metadata for TextInputDictation.Key, &protocol witness table for TextInputDictation.Key);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextInputDictation.Key>, &type metadata for TextInputDictation.Key, &protocol witness table for TextInputDictation.Key);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<TextInputDictation.Key> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextInputDictation.Key>, &type metadata for TextInputDictation.Key, &protocol witness table for TextInputDictation.Key);
    PropertyList.subscript.getter();
  }

  *(a2 + 2) = v4;
  *a2 = v3;
}

double key path setter for EnvironmentValues.textInputDictation : EnvironmentValues(__int16 *a1, void *a2)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextInputDictation.Key>, &type metadata for TextInputDictation.Key, &protocol witness table for TextInputDictation.Key);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<TextInputDictation.Key> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextInputDictation.Key>, &type metadata for TextInputDictation.Key, &protocol witness table for TextInputDictation.Key);

  PropertyList.subscript.setter();
  if (a2[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

uint64_t partial apply for closure #1 in View.textInputDictation(_:)(uint64_t result)
{
  v2 = *(v1 + 16) | (*(v1 + 18) << 16);
  if (*(v1 + 16) != 2)
  {
    *result = *(v1 + 16);
    *(result + 2) = BYTE2(v2);
  }

  return result;
}

double View.autocapitalization(_:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 4;
  if (a1 < 4)
  {
    v3 = a1;
  }

  v5 = v3;
  return View.textInputAutocapitalization(_:)(&v5, a2, a3);
}

SwiftUI::TextInputAutocapitalization_optional __swiftcall TextInputAutocapitalization.init(_:)(UITextAutocapitalizationType a1)
{
  v2 = 4;
  if (a1 < 4)
  {
    v2 = a1;
  }

  *v1 = v2;
  return a1;
}

double View.textInputAutocapitalization(_:)(char *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  swift_getKeyPath();
  *(swift_allocObject() + 16) = v3;
  View.transformEnvironment<A>(_:transform:)();

  return result;
}

void EnvironmentValues.textInputAutocapitalization.getter()
{
  if (*(v1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextInputAutocapitalizationKey>, &type metadata for TextInputAutocapitalizationKey, &protocol witness table for TextInputAutocapitalizationKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<TextInputAutocapitalizationKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextInputAutocapitalizationKey>, &type metadata for TextInputAutocapitalizationKey, &protocol witness table for TextInputAutocapitalizationKey);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextInputAutocapitalizationKey>, &type metadata for TextInputAutocapitalizationKey, &protocol witness table for TextInputAutocapitalizationKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<TextInputAutocapitalizationKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextInputAutocapitalizationKey>, &type metadata for TextInputAutocapitalizationKey, &protocol witness table for TextInputAutocapitalizationKey);

    PropertyList.subscript.getter();
  }
}

void key path getter for EnvironmentValues.textInputAutocapitalization : EnvironmentValues(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextInputAutocapitalizationKey>, &type metadata for TextInputAutocapitalizationKey, &protocol witness table for TextInputAutocapitalizationKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<TextInputAutocapitalizationKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextInputAutocapitalizationKey>, &type metadata for TextInputAutocapitalizationKey, &protocol witness table for TextInputAutocapitalizationKey);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextInputAutocapitalizationKey>, &type metadata for TextInputAutocapitalizationKey, &protocol witness table for TextInputAutocapitalizationKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<TextInputAutocapitalizationKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextInputAutocapitalizationKey>, &type metadata for TextInputAutocapitalizationKey, &protocol witness table for TextInputAutocapitalizationKey);
    PropertyList.subscript.getter();
  }

  *a2 = v3;
}

double key path setter for EnvironmentValues.textInputAutocapitalization : EnvironmentValues(char *a1, void *a2)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextInputAutocapitalizationKey>, &type metadata for TextInputAutocapitalizationKey, &protocol witness table for TextInputAutocapitalizationKey);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<TextInputAutocapitalizationKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextInputAutocapitalizationKey>, &type metadata for TextInputAutocapitalizationKey, &protocol witness table for TextInputAutocapitalizationKey);

  PropertyList.subscript.setter();
  if (a2[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

_BYTE *partial apply for closure #1 in View.textInputAutocapitalization(_:)(_BYTE *result)
{
  v2 = *(v1 + 16);
  if (v2 != 4)
  {
    *result = v2;
  }

  return result;
}

double View.submitsOnReturn(_:)(char a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  View.environment<A>(_:_:)();

  return result;
}

uint64_t EnvironmentValues.submitsOnReturn.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SubmitsOnReturnKey>, &type metadata for SubmitsOnReturnKey, &protocol witness table for SubmitsOnReturnKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<SubmitsOnReturnKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<SubmitsOnReturnKey>, &type metadata for SubmitsOnReturnKey, &protocol witness table for SubmitsOnReturnKey);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SubmitsOnReturnKey>, &type metadata for SubmitsOnReturnKey, &protocol witness table for SubmitsOnReturnKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<SubmitsOnReturnKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<SubmitsOnReturnKey>, &type metadata for SubmitsOnReturnKey, &protocol witness table for SubmitsOnReturnKey);
    PropertyList.subscript.getter();
  }

  return v2;
}

void key path getter for EnvironmentValues.submitsOnReturn : EnvironmentValues(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SubmitsOnReturnKey>, &type metadata for SubmitsOnReturnKey, &protocol witness table for SubmitsOnReturnKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<SubmitsOnReturnKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<SubmitsOnReturnKey>, &type metadata for SubmitsOnReturnKey, &protocol witness table for SubmitsOnReturnKey);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SubmitsOnReturnKey>, &type metadata for SubmitsOnReturnKey, &protocol witness table for SubmitsOnReturnKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<SubmitsOnReturnKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<SubmitsOnReturnKey>, &type metadata for SubmitsOnReturnKey, &protocol witness table for SubmitsOnReturnKey);
    PropertyList.subscript.getter();
  }

  *a2 = v3;
}

double key path setter for EnvironmentValues.submitsOnReturn : EnvironmentValues(char *a1, void *a2)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SubmitsOnReturnKey>, &type metadata for SubmitsOnReturnKey, &protocol witness table for SubmitsOnReturnKey);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<SubmitsOnReturnKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<SubmitsOnReturnKey>, &type metadata for SubmitsOnReturnKey, &protocol witness table for SubmitsOnReturnKey);

  PropertyList.subscript.setter();
  if (a2[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<KeyboardType> and conformance _EnvironmentKeyWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<KeyboardType> and conformance _EnvironmentKeyWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<KeyboardType> and conformance _EnvironmentKeyWritingModifier<A>)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<KeyboardType>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<KeyboardType>, &type metadata for KeyboardType, MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable(MEMORY[0x1E6980A18], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<KeyboardType> and conformance _EnvironmentKeyWritingModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<TextInputDictation?> and conformance _EnvironmentKeyTransformModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<TextInputDictation?> and conformance _EnvironmentKeyTransformModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<TextInputDictation?> and conformance _EnvironmentKeyTransformModifier<A>)
  {
    type metadata accessor for _EnvironmentKeyTransformModifier<TextInputDictation?>(255, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<TextInputDictation?>, &lazy cache variable for type metadata for TextInputDictation?, &type metadata for TextInputDictation, MEMORY[0x1E6980B20]);
    result = swift_getWitnessTable(MEMORY[0x1E6980B30], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<TextInputDictation?> and conformance _EnvironmentKeyTransformModifier<A>);
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyxAA30_EnvironmentKeyWritingModifierVyAA12KeyboardTypeVGGAaBHPxAaBHD1__AiA0cI0HPyHCHCTm(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t), uint64_t (*a5)(void))
{
  v6 = *(a1 + 8);
  type metadata accessor for _EnvironmentKeyWritingModifier<KeyboardType>(255, a2, a3, a4);
  v7 = type metadata accessor for ModifiedContent();
  v9[0] = v6;
  v9[1] = a5();
  return swift_getWitnessTable(MEMORY[0x1E697E858], v7, v9);
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<TextInputAutocapitalization> and conformance _EnvironmentKeyTransformModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<TextInputAutocapitalization> and conformance _EnvironmentKeyTransformModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<TextInputAutocapitalization> and conformance _EnvironmentKeyTransformModifier<A>)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<KeyboardType>(255, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<TextInputAutocapitalization>, &type metadata for TextInputAutocapitalization, MEMORY[0x1E6980B20]);
    result = swift_getWitnessTable(MEMORY[0x1E6980B30], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<TextInputAutocapitalization> and conformance _EnvironmentKeyTransformModifier<A>);
  }

  return result;
}

void type metadata accessor for _EnvironmentKeyTransformModifier<TextInputDictation?>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<KeyboardType>(255, a3, a4, MEMORY[0x1E69E6720]);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void type metadata accessor for _EnvironmentKeyWritingModifier<KeyboardType>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t lazy protocol witness table accessor for type TextInputAutocapitalization.Behavior and conformance TextInputAutocapitalization.Behavior()
{
  result = lazy protocol witness table cache variable for type TextInputAutocapitalization.Behavior and conformance TextInputAutocapitalization.Behavior;
  if (!lazy protocol witness table cache variable for type TextInputAutocapitalization.Behavior and conformance TextInputAutocapitalization.Behavior)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TextInputAutocapitalization.Behavior, &type metadata for TextInputAutocapitalization.Behavior, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TextInputAutocapitalization.Behavior and conformance TextInputAutocapitalization.Behavior);
  }

  return result;
}

__n128 DragGesture.init(minimumDistance:coordinateSpace:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *(a2 + 49) = 15;
  *a2 = a3;
  v3 = *(a1 + 16);
  *(a2 + 8) = *a1;
  *(a2 + 24) = v3;
  result = *(a1 + 25);
  *(a2 + 33) = result;
  return result;
}

uint64_t DragGesture.Value.time.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Date();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t DragGesture.Value.time.setter(uint64_t a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t DragGesture.Value.location.setter(double a1, double a2)
{
  result = type metadata accessor for DragGesture.Value(0);
  v6 = (v2 + *(result + 20));
  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t DragGesture.Value.startLocation.setter(double a1, double a2)
{
  result = type metadata accessor for DragGesture.Value(0);
  v6 = (v2 + *(result + 24));
  *v6 = a1;
  v6[1] = a2;
  return result;
}

double DragGesture.Value.translation.getter()
{
  v1 = type metadata accessor for DragGesture.Value(0);
  *&result = *&vsubq_f64(*(v0 + *(v1 + 20)), *(v0 + *(v1 + 24)));
  return result;
}

double DragGesture.Value.predictedEndLocation.getter()
{
  v1 = type metadata accessor for DragGesture.Value(0);
  __asm { FMOV            V2.2D, #0.25 }

  *&result = *&vaddq_f64(*(v0 + *(v1 + 20)), vmulq_f64(*(v0 + *(v1 + 28)), _Q2));
  return result;
}

double DragGesture.Value.predictedEndTranslation.getter()
{
  v1 = type metadata accessor for DragGesture.Value(0);
  __asm { FMOV            V2.2D, #0.25 }

  *&result = *&vaddq_f64(vsubq_f64(*(v0 + v1[5]), *(v0 + v1[6])), vmulq_f64(*(v0 + v1[7]), _Q2));
  return result;
}

uint64_t DragGesture.internalBody.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  result = outlined init with copy of CoordinateSpace((v1 + 1), a1 + 8);
  v5 = *(v1 + 49);
  *a1 = v3;
  *(a1 + 49) = v5;
  *(a1 + 56) = 4;
  *(a1 + 64) = 0;
  return result;
}

uint64_t protocol witness for PubliclyPrimitiveGesture.internalBody.getter in conformance DragGesture@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  result = outlined init with copy of CoordinateSpace((v1 + 1), a1 + 8);
  v5 = *(v1 + 49);
  *a1 = v3;
  *(a1 + 49) = v5;
  *(a1 + 56) = 4;
  *(a1 + 64) = 0;
  return result;
}

uint64_t SpatialDragGesture.body.getter()
{
  type metadata accessor for EventListener<TouchEvent>(0);
  lazy protocol witness table accessor for type ModifierGesture<CategoryGesture<DragGesture.Value>, SpatialDragGesture> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type EventListener<TouchEvent> and conformance EventListener<A>, type metadata accessor for EventListener<TouchEvent>, MEMORY[0x1E697E128]);
  Gesture.eventFilter<A>(forType:_:)();
  outlined init with copy of CoordinateSpace(v0 + 8, v9);
  v7[0] = v4[0];
  v8 = *&v4[8];
  outlined init with copy of SpatialDragGesture(v0, v4);
  v1 = swift_allocObject();
  v2 = *&v4[16];
  *(v1 + 16) = *v4;
  *(v1 + 32) = v2;
  *(v1 + 48) = v5;
  *(v1 + 64) = v6;
  v9[6] = partial apply for closure #2 in SpatialDragGesture.body.getter;
  v9[7] = v1;
  v4[0] = 2;
  type metadata accessor for ModifierGesture<StateContainerGesture<SpatialDragGesture.StateType, TouchEvent, DragGesture.Value>, ModifierGesture<CoordinateSpaceGesture<TouchEvent>, ModifierGesture<EventFilter<TouchEvent>, EventListener<TouchEvent>>>>(0);
  lazy protocol witness table accessor for type ModifierGesture<CategoryGesture<DragGesture.Value>, SpatialDragGesture> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type ModifierGesture<StateContainerGesture<SpatialDragGesture.StateType, TouchEvent, DragGesture.Value>, ModifierGesture<CoordinateSpaceGesture<TouchEvent>, ModifierGesture<EventFilter<TouchEvent>, EventListener<TouchEvent>>>> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<StateContainerGesture<SpatialDragGesture.StateType, TouchEvent, DragGesture.Value>, ModifierGesture<CoordinateSpaceGesture<TouchEvent>, ModifierGesture<EventFilter<TouchEvent>, EventListener<TouchEvent>>>>, MEMORY[0x1E697E860]);
  Gesture.dependency(_:)();
  return outlined destroy of ModifierGesture<StateContainerGesture<SpatialDragGesture.StateType, TouchEvent, DragGesture.Value>, ModifierGesture<CoordinateSpaceGesture<TouchEvent>, ModifierGesture<EventFilter<TouchEvent>, EventListener<TouchEvent>>>>(v7, type metadata accessor for ModifierGesture<StateContainerGesture<SpatialDragGesture.StateType, TouchEvent, DragGesture.Value>, ModifierGesture<CoordinateSpaceGesture<TouchEvent>, ModifierGesture<EventFilter<TouchEvent>, EventListener<TouchEvent>>>>);
}

uint64_t SpatialDragGesture.phase(state:event:)@<X0>(_OWORD *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  type metadata accessor for CategoryGesture<DragGesture.Value>(0, &lazy cache variable for type metadata for DragGesture.Value?, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v57 - v9;
  v11 = type metadata accessor for DragGesture.Value(0);
  v12 = *(v11 - 1);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a2[1];
  v85 = *a2;
  v86 = v15;
  v16 = a2[3];
  v87 = a2[2];
  v88 = v16;
  *&v90[10] = *(a2 + 90);
  v17 = a2[5];
  v89 = a2[4];
  *v90 = v17;
  if (v90[25] - 1 < 2)
  {
    v58 = a3;
    v18 = *&v85;
    v19 = *(&v86 + 1);
    v21 = v87;
    v20 = v88;
    v84 = *(a2 + 8);
    v22 = *(a2 + 72);
    v80 = *(a2 + 56);
    v81 = v22;
    v82 = *(a2 + 88);
    v83 = *(a2 + 104);
    v23 = a1[5];
    v76 = a1[4];
    v77[0] = v23;
    *(v77 + 9) = *(a1 + 89);
    v24 = a1[1];
    v72 = *a1;
    v73 = v24;
    v25 = a1[3];
    v74 = a1[2];
    v75 = v25;
    if (v73 == 1)
    {
      outlined init with copy of GesturePhase<TouchEvent>(&v85, v78, &lazy cache variable for type metadata for GesturePhase<TouchEvent>, MEMORY[0x1E697DE58], *&v25);
      *(v69 + 8) = v84;
      *(v71 + 8) = v80;
      *v69 = v18;
      *(&v69[1] + 1) = v19;
      v70 = v21;
      *&v71[0] = v20;
      *(&v71[1] + 8) = v81;
      *(&v71[2] + 8) = v82;
      BYTE8(v71[3]) = v83;
    }

    else
    {
      v28 = a1[5];
      v71[1] = a1[4];
      v71[2] = v28;
      *(&v71[2] + 9) = *(a1 + 89);
      v29 = a1[1];
      v69[0] = *a1;
      v69[1] = v29;
      v30 = a1[3];
      v70 = a1[2];
      v71[0] = v30;
    }

    v65 = v71[1];
    v66[0] = v71[2];
    *(v66 + 9) = *(&v71[2] + 9);
    v61 = v69[0];
    v62 = v69[1];
    v63 = v70;
    v64 = v71[0];
    v31 = a1[1];
    v67[0] = *a1;
    v67[1] = v31;
    v32 = a1[2];
    v33 = a1[3];
    *(v68 + 9) = *(a1 + 89);
    v34 = a1[5];
    v67[4] = a1[4];
    v68[0] = v34;
    v67[2] = v32;
    v67[3] = v33;
    outlined init with copy of GesturePhase<TouchEvent>(&v85, v78, &lazy cache variable for type metadata for GesturePhase<TouchEvent>, MEMORY[0x1E697DE58], *&v32);
    v35 = MEMORY[0x1E69E6720];
    outlined init with copy of GesturePhase<TouchEvent>(&v72, v78, &lazy cache variable for type metadata for TouchEvent?, MEMORY[0x1E69E6720], v36);
    outlined init with copy of TouchEvent(v69, v78);
    outlined destroy of GesturePhase<TouchEvent>(v67, &lazy cache variable for type metadata for TouchEvent?, v35);
    v37 = v66[0];
    a1[4] = v65;
    a1[5] = v37;
    *(a1 + 89) = *(v66 + 9);
    v38 = v62;
    *a1 = v61;
    a1[1] = v38;
    v39 = v64;
    a1[2] = v63;
    a1[3] = v39;
    v40 = type metadata accessor for SpatialDragGesture.StateType(0);
    v41 = a1 + *(v40 + 24);
    specialized VelocitySampler.addSample(_:time:)(v19, *&v21, v18);
    Date.init(timeIntervalSinceReferenceDate:)();
    v42 = *(&v69[1] + 1);
    v43 = v70;
    v44 = *(v41 + 5);
    v78[4] = *(v41 + 4);
    v78[5] = v44;
    v78[6] = *(v41 + 6);
    v79 = *(v41 + 14);
    v45 = *(v41 + 1);
    v78[0] = *v41;
    v78[1] = v45;
    v46 = *(v41 + 3);
    v78[2] = *(v41 + 2);
    v78[3] = v46;
    v47 = specialized VelocitySampler.velocity.getter();
    v48 = &v14[v11[5]];
    *v48 = v19;
    *(v48 + 1) = v21;
    v49 = &v14[v11[6]];
    *v49 = v42;
    *(v49 + 1) = v43;
    v50 = &v14[v11[7]];
    *v50 = v47;
    *(v50 + 1) = v51;
    v52 = *(v40 + 20);
    outlined init with copy of DragGesture.Value?(a1 + v52, v10);
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      outlined destroy of DragGesture.Value?(v10);
      v53 = *v4;
      if (*v4 <= 0.0)
      {
        outlined destroy of TouchEvent(v69);
        outlined destroy of GesturePhase<TouchEvent>(&v85, &lazy cache variable for type metadata for GesturePhase<TouchEvent>, MEMORY[0x1E697DE58]);
      }

      else
      {
        CGSize.magnitude.getter();
        if (v53 > v54)
        {
          outlined destroy of TouchEvent(v69);
          outlined destroy of GesturePhase<TouchEvent>(&v85, &lazy cache variable for type metadata for GesturePhase<TouchEvent>, MEMORY[0x1E697DE58]);
LABEL_21:
          if (v90[25] != 2)
          {
            outlined init with copy of DragGesture.Value?(a1 + v52, v58);
          }

          type metadata accessor for CategoryGesture<DragGesture.Value>(0, &lazy cache variable for type metadata for GesturePhase<DragGesture.Value>, MEMORY[0x1E697DE58]);
          swift_storeEnumTagMultiPayload();
          return outlined destroy of ModifierGesture<StateContainerGesture<SpatialDragGesture.StateType, TouchEvent, DragGesture.Value>, ModifierGesture<CoordinateSpaceGesture<TouchEvent>, ModifierGesture<EventFilter<TouchEvent>, EventListener<TouchEvent>>>>(v14, type metadata accessor for DragGesture.Value);
        }

        LOBYTE(v59[0]) = *(v4 + 49);
        v56 = CGSize.withinRange(axes:rangeCosine:)(v59, 0.5);
        outlined destroy of TouchEvent(v69);
        outlined destroy of GesturePhase<TouchEvent>(&v85, &lazy cache variable for type metadata for GesturePhase<TouchEvent>, MEMORY[0x1E697DE58]);
        if ((v56 & 1) == 0)
        {
          goto LABEL_21;
        }
      }
    }

    else
    {
      outlined destroy of TouchEvent(v69);
      outlined destroy of GesturePhase<TouchEvent>(&v85, &lazy cache variable for type metadata for GesturePhase<TouchEvent>, MEMORY[0x1E697DE58]);
      outlined destroy of DragGesture.Value?(v10);
    }

    outlined destroy of DragGesture.Value?(a1 + v52);
    outlined init with copy of DragGesture.Value(v14, a1 + v52);
    v55 = (*(v12 + 56))(a1 + v52, 0, 1, v11);
    v59[4] = v89;
    v60[0] = *v90;
    *(v60 + 10) = *&v90[10];
    v59[0] = v85;
    v59[1] = v86;
    v59[2] = v87;
    v59[3] = v88;
    MEMORY[0x1EEE9AC00](v55);
    *(&v57 - 2) = v14;
    type metadata accessor for CoordinateSpaceGesture<TouchEvent>(0, &lazy cache variable for type metadata for GesturePhase<TouchEvent>, MEMORY[0x1E697DE58]);
    GesturePhase.withValue<A>(_:)();
    return outlined destroy of ModifierGesture<StateContainerGesture<SpatialDragGesture.StateType, TouchEvent, DragGesture.Value>, ModifierGesture<CoordinateSpaceGesture<TouchEvent>, ModifierGesture<EventFilter<TouchEvent>, EventListener<TouchEvent>>>>(v14, type metadata accessor for DragGesture.Value);
  }

  if (v90[25] || !*(v4 + 49))
  {
    type metadata accessor for CategoryGesture<DragGesture.Value>(0, &lazy cache variable for type metadata for GesturePhase<DragGesture.Value>, MEMORY[0x1E697DE58]);
  }

  else
  {
    v26 = type metadata accessor for SpatialDragGesture.StateType(0);
    outlined init with copy of DragGesture.Value?(a1 + *(v26 + 20), a3);
    type metadata accessor for CategoryGesture<DragGesture.Value>(0, &lazy cache variable for type metadata for GesturePhase<DragGesture.Value>, MEMORY[0x1E697DE58]);
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t protocol witness for GestureStateProtocol.init() in conformance SpatialDragGesture.StateType@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  *(a2 + 88) = 0u;
  *(a2 + 104) = 0;
  v4 = *(a1 + 20);
  v5 = type metadata accessor for DragGesture.Value(0);
  result = (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v7 = a2 + *(a1 + 24);
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  *v7 = 0;
  *(v7 + 24) = 1;
  *(v7 + 40) = 0;
  *(v7 + 48) = 0;
  *(v7 + 32) = 0;
  *(v7 + 56) = 1;
  *(v7 + 72) = 0;
  *(v7 + 80) = 0;
  *(v7 + 64) = 0;
  *(v7 + 88) = 1;
  *(v7 + 96) = 0;
  *(v7 + 104) = 1;
  *(v7 + 112) = 0x3FE8000000000000;
  return result;
}

double specialized VelocitySampler.velocity.getter()
{
  result = 0.0;
  if ((*(v0 + 24) & 1) == 0 && (*(v0 + 56) & 1) == 0)
  {
    v2 = *(v0 + 48);
    v3 = *(v0 + 32);
    result = 1.0 / (v2 - *(v0 + 16)) * (v3 - *v0);
    if ((*(v0 + 88) & 1) == 0)
    {
      v4 = 1.0 / (*(v0 + 80) - v2) * (*(v0 + 64) - v3);
      return v4 + *(v0 + 112) * (result - v4);
    }
  }

  return result;
}

BOOL specialized static DragGesture.Value.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for DragGesture.Value(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  if (v6 != *v8 || v7 != v8[1])
  {
    return 0;
  }

  v10 = v4[6];
  v11 = *(a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  if (v11 != *v13 || v12 != v13[1])
  {
    return 0;
  }

  v16 = v4[7];
  v17 = *(a1 + v16);
  v18 = *(a1 + v16 + 8);
  v19 = (a2 + v16);
  v20 = v19[1];
  v21 = v17 == *v19;
  return v18 == v20 && v21;
}

unint64_t lazy protocol witness table accessor for type DragGesture and conformance DragGesture()
{
  result = lazy protocol witness table cache variable for type DragGesture and conformance DragGesture;
  if (!lazy protocol witness table cache variable for type DragGesture and conformance DragGesture)
  {
    result = swift_getWitnessTable("A", &type metadata for DragGesture, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DragGesture and conformance DragGesture);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DragGesture and conformance DragGesture;
  if (!lazy protocol witness table cache variable for type DragGesture and conformance DragGesture)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DragGesture, &type metadata for DragGesture, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DragGesture and conformance DragGesture);
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for DragGesture.Value(uint64_t *a1, uint64_t *a2, int *a3)
{
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = (v9 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for Date();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = a3[6];
    *(a1 + a3[5]) = *(a2 + a3[5]);
    *(a1 + v8) = *(a2 + v8);
    *(a1 + a3[7]) = *(a2 + a3[7]);
  }

  return a1;
}

uint64_t destroy for DragGesture.Value(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

uint64_t initializeWithCopy for DragGesture.Value(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  *(a1 + v7) = *(a2 + v7);
  *(a1 + a3[7]) = *(a2 + a3[7]);
  return a1;
}

uint64_t assignWithCopy for DragGesture.Value(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = a3[5];
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  *v8 = *v9;
  v8[1] = v9[1];
  v10 = a3[6];
  v11 = (a1 + v10);
  v12 = (a2 + v10);
  *v11 = *v12;
  v11[1] = v12[1];
  v13 = a3[7];
  v14 = (a1 + v13);
  v15 = (a2 + v13);
  *v14 = *v15;
  v14[1] = v15[1];
  return a1;
}

uint64_t initializeWithTake for DragGesture.Value(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  *(a1 + v7) = *(a2 + v7);
  *(a1 + a3[7]) = *(a2 + a3[7]);
  return a1;
}

uint64_t assignWithTake for DragGesture.Value(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  *(a1 + v7) = *(a2 + v7);
  *(a1 + a3[7]) = *(a2 + a3[7]);
  return a1;
}

void type metadata accessor for ModifierGesture<CategoryGesture<DragGesture.Value>, SpatialDragGesture>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifierGesture<CategoryGesture<DragGesture.Value>, SpatialDragGesture>)
  {
    type metadata accessor for CategoryGesture<DragGesture.Value>(255, &lazy cache variable for type metadata for CategoryGesture<DragGesture.Value>, MEMORY[0x1E697E628]);
    lazy protocol witness table accessor for type CategoryGesture<DragGesture.Value> and conformance CategoryGesture<A>();
    lazy protocol witness table accessor for type SpatialDragGesture and conformance SpatialDragGesture();
    v1 = type metadata accessor for ModifierGesture();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifierGesture<CategoryGesture<DragGesture.Value>, SpatialDragGesture>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type CategoryGesture<DragGesture.Value> and conformance CategoryGesture<A>()
{
  result = lazy protocol witness table cache variable for type CategoryGesture<DragGesture.Value> and conformance CategoryGesture<A>;
  if (!lazy protocol witness table cache variable for type CategoryGesture<DragGesture.Value> and conformance CategoryGesture<A>)
  {
    type metadata accessor for CategoryGesture<DragGesture.Value>(255, &lazy cache variable for type metadata for CategoryGesture<DragGesture.Value>, MEMORY[0x1E697E628]);
    result = swift_getWitnessTable(MEMORY[0x1E697E630], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CategoryGesture<DragGesture.Value> and conformance CategoryGesture<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SpatialDragGesture and conformance SpatialDragGesture()
{
  result = lazy protocol witness table cache variable for type SpatialDragGesture and conformance SpatialDragGesture;
  if (!lazy protocol witness table cache variable for type SpatialDragGesture and conformance SpatialDragGesture)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SpatialDragGesture, &unk_1EFFA7D50, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialDragGesture and conformance SpatialDragGesture);
  }

  return result;
}

uint64_t assignWithTake for DragGesture(uint64_t result, uint64_t a2)
{
  *result = *a2;
  if (result != a2)
  {
    v3 = result;
    outlined destroy of CoordinateSpace(result + 8);
    result = v3;
    *(v3 + 8) = *(a2 + 8);
    *(v3 + 24) = *(a2 + 24);
    *(v3 + 33) = *(a2 + 33);
  }

  *(result + 49) = *(a2 + 49);
  return result;
}

uint64_t getEnumTagSinglePayload for DragGesture(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 50))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 48);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for DragGesture(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 50) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 50) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

void type metadata accessor for EventListener<TouchEvent>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for EventListener<TouchEvent>)
  {
    lazy protocol witness table accessor for type TouchEvent and conformance TouchEvent();
    v1 = type metadata accessor for EventListener();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for EventListener<TouchEvent>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ModifierGesture<CategoryGesture<DragGesture.Value>, SpatialDragGesture> and conformance ModifierGesture<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t partial apply for closure #2 in SpatialDragGesture.body.getter@<X0>(_OWORD *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2[5];
  v7[4] = a2[4];
  v8[0] = v3;
  *(v8 + 10) = *(a2 + 90);
  v4 = a2[1];
  v7[0] = *a2;
  v7[1] = v4;
  v5 = a2[3];
  v7[2] = a2[2];
  v7[3] = v5;
  return SpatialDragGesture.phase(state:event:)(a1, v7, a3);
}

void type metadata accessor for ModifierGesture<StateContainerGesture<SpatialDragGesture.StateType, TouchEvent, DragGesture.Value>, ModifierGesture<CoordinateSpaceGesture<TouchEvent>, ModifierGesture<EventFilter<TouchEvent>, EventListener<TouchEvent>>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifierGesture<StateContainerGesture<SpatialDragGesture.StateType, TouchEvent, DragGesture.Value>, ModifierGesture<CoordinateSpaceGesture<TouchEvent>, ModifierGesture<EventFilter<TouchEvent>, EventListener<TouchEvent>>>>)
  {
    type metadata accessor for StateContainerGesture<SpatialDragGesture.StateType, TouchEvent, DragGesture.Value>(255);
    type metadata accessor for ModifierGesture<CoordinateSpaceGesture<TouchEvent>, ModifierGesture<EventFilter<TouchEvent>, EventListener<TouchEvent>>>(255, v1);
    lazy protocol witness table accessor for type ModifierGesture<CategoryGesture<DragGesture.Value>, SpatialDragGesture> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type StateContainerGesture<SpatialDragGesture.StateType, TouchEvent, DragGesture.Value> and conformance StateContainerGesture<A, B, C>, type metadata accessor for StateContainerGesture<SpatialDragGesture.StateType, TouchEvent, DragGesture.Value>, MEMORY[0x1E697FCE8]);
    lazy protocol witness table accessor for type ModifierGesture<CategoryGesture<DragGesture.Value>, SpatialDragGesture> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type ModifierGesture<CoordinateSpaceGesture<TouchEvent>, ModifierGesture<EventFilter<TouchEvent>, EventListener<TouchEvent>>> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<CoordinateSpaceGesture<TouchEvent>, ModifierGesture<EventFilter<TouchEvent>, EventListener<TouchEvent>>>, MEMORY[0x1E697E860]);
    v2 = type metadata accessor for ModifierGesture();
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for ModifierGesture<StateContainerGesture<SpatialDragGesture.StateType, TouchEvent, DragGesture.Value>, ModifierGesture<CoordinateSpaceGesture<TouchEvent>, ModifierGesture<EventFilter<TouchEvent>, EventListener<TouchEvent>>>>);
    }
  }
}

void type metadata accessor for StateContainerGesture<SpatialDragGesture.StateType, TouchEvent, DragGesture.Value>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StateContainerGesture<SpatialDragGesture.StateType, TouchEvent, DragGesture.Value>)
  {
    type metadata accessor for SpatialDragGesture.StateType(255);
    type metadata accessor for DragGesture.Value(255);
    lazy protocol witness table accessor for type ModifierGesture<CategoryGesture<DragGesture.Value>, SpatialDragGesture> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type SpatialDragGesture.StateType and conformance SpatialDragGesture.StateType, type metadata accessor for SpatialDragGesture.StateType, protocol conformance descriptor for SpatialDragGesture.StateType);
    v1 = type metadata accessor for StateContainerGesture();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StateContainerGesture<SpatialDragGesture.StateType, TouchEvent, DragGesture.Value>);
    }
  }
}

void type metadata accessor for ModifierGesture<CoordinateSpaceGesture<TouchEvent>, ModifierGesture<EventFilter<TouchEvent>, EventListener<TouchEvent>>>(uint64_t a1, double a2)
{
  if (!lazy cache variable for type metadata for ModifierGesture<CoordinateSpaceGesture<TouchEvent>, ModifierGesture<EventFilter<TouchEvent>, EventListener<TouchEvent>>>)
  {
    v2 = MEMORY[0x1E697FE18];
    type metadata accessor for CoordinateSpaceGesture<TouchEvent>(255, &lazy cache variable for type metadata for CoordinateSpaceGesture<TouchEvent>, MEMORY[0x1E697FE18]);
    type metadata accessor for ModifierGesture<EventFilter<TouchEvent>, EventListener<TouchEvent>>(255, v3);
    lazy protocol witness table accessor for type CoordinateSpaceGesture<TouchEvent> and conformance CoordinateSpaceGesture<A>(&lazy protocol witness table cache variable for type CoordinateSpaceGesture<TouchEvent> and conformance CoordinateSpaceGesture<A>, &lazy cache variable for type metadata for CoordinateSpaceGesture<TouchEvent>, v2, MEMORY[0x1E697FE20], v4);
    lazy protocol witness table accessor for type ModifierGesture<CategoryGesture<DragGesture.Value>, SpatialDragGesture> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type ModifierGesture<EventFilter<TouchEvent>, EventListener<TouchEvent>> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<EventFilter<TouchEvent>, EventListener<TouchEvent>>, MEMORY[0x1E697E860]);
    v5 = type metadata accessor for ModifierGesture();
    if (!v6)
    {
      atomic_store(v5, &lazy cache variable for type metadata for ModifierGesture<CoordinateSpaceGesture<TouchEvent>, ModifierGesture<EventFilter<TouchEvent>, EventListener<TouchEvent>>>);
    }
  }
}

void type metadata accessor for ModifierGesture<EventFilter<TouchEvent>, EventListener<TouchEvent>>(uint64_t a1, double a2)
{
  if (!lazy cache variable for type metadata for ModifierGesture<EventFilter<TouchEvent>, EventListener<TouchEvent>>)
  {
    v2 = MEMORY[0x1E697DCD8];
    type metadata accessor for CoordinateSpaceGesture<TouchEvent>(255, &lazy cache variable for type metadata for EventFilter<TouchEvent>, MEMORY[0x1E697DCD8]);
    type metadata accessor for EventListener<TouchEvent>(255);
    lazy protocol witness table accessor for type CoordinateSpaceGesture<TouchEvent> and conformance CoordinateSpaceGesture<A>(&lazy protocol witness table cache variable for type EventFilter<TouchEvent> and conformance EventFilter<A>, &lazy cache variable for type metadata for EventFilter<TouchEvent>, v2, MEMORY[0x1E697DCE0], v3);
    lazy protocol witness table accessor for type ModifierGesture<CategoryGesture<DragGesture.Value>, SpatialDragGesture> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type EventListener<TouchEvent> and conformance EventListener<A>, type metadata accessor for EventListener<TouchEvent>, MEMORY[0x1E697E128]);
    v4 = type metadata accessor for ModifierGesture();
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ModifierGesture<EventFilter<TouchEvent>, EventListener<TouchEvent>>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type CoordinateSpaceGesture<TouchEvent> and conformance CoordinateSpaceGesture<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *), const char *a4, double a5)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CoordinateSpaceGesture<TouchEvent>(255, a2, a3);
    result = swift_getWitnessTable(a4, v8);
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for CategoryGesture<DragGesture.Value>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for DragGesture.Value(255);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t outlined init with copy of GesturePhase<TouchEvent>(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(void, ValueMetadata *), double a5)
{
  type metadata accessor for CoordinateSpaceGesture<TouchEvent>(0, a3, a4);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

void type metadata accessor for CoordinateSpaceGesture<TouchEvent>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for TouchEvent);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t outlined destroy of GesturePhase<TouchEvent>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  type metadata accessor for CoordinateSpaceGesture<TouchEvent>(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with copy of DragGesture.Value?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CategoryGesture<DragGesture.Value>(0, &lazy cache variable for type metadata for DragGesture.Value?, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of DragGesture.Value?(uint64_t a1)
{
  type metadata accessor for CategoryGesture<DragGesture.Value>(0, &lazy cache variable for type metadata for DragGesture.Value?, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of DragGesture.Value(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DragGesture.Value(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ModifierGesture<StateContainerGesture<SpatialDragGesture.StateType, TouchEvent, DragGesture.Value>, ModifierGesture<CoordinateSpaceGesture<TouchEvent>, ModifierGesture<EventFilter<TouchEvent>, EventListener<TouchEvent>>>>(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t initializeBufferWithCopyOfBuffer for SpatialDragGesture.StateType(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = v11 + ((v5 + 16) & ~v5);
  }

  else
  {
    v7 = a2[2];
    if (v7 == 1)
    {
      v8 = *(a2 + 5);
      *(a1 + 64) = *(a2 + 4);
      *(a1 + 80) = v8;
      *(a1 + 89) = *(a2 + 89);
      v9 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 16) = v9;
      v10 = *(a2 + 3);
      *(a1 + 32) = *(a2 + 2);
      *(a1 + 48) = v10;
    }

    else
    {
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 16) = v7;
      *(a1 + 24) = *(a2 + 3);
      *(a1 + 40) = *(a2 + 5);
      *(a1 + 56) = *(a2 + 7);
      *(a1 + 72) = *(a2 + 9);
      *(a1 + 88) = *(a2 + 11);
      *(a1 + 104) = *(a2 + 104);
    }

    v12 = *(a3 + 20);
    v13 = (a1 + v12);
    v14 = a2 + v12;
    v15 = type metadata accessor for DragGesture.Value(0);
    v16 = *(v15 - 1);
    if ((*(v16 + 48))(v14, 1, v15))
    {
      type metadata accessor for CategoryGesture<DragGesture.Value>(0, &lazy cache variable for type metadata for DragGesture.Value?, MEMORY[0x1E69E6720]);
      memcpy(v13, v14, *(*(v17 - 8) + 64));
    }

    else
    {
      v18 = type metadata accessor for Date();
      (*(*(v18 - 8) + 16))(v13, v14, v18);
      *&v13[v15[5]] = *&v14[v15[5]];
      *&v13[v15[6]] = *&v14[v15[6]];
      *&v13[v15[7]] = *&v14[v15[7]];
      (*(v16 + 56))(v13, 0, 1, v15);
    }

    v19 = *(a3 + 24);
    v20 = a1 + v19;
    v21 = a2 + v19;
    v22 = *(v21 + 5);
    *(v20 + 64) = *(v21 + 4);
    *(v20 + 80) = v22;
    *(v20 + 96) = *(v21 + 6);
    *(v20 + 112) = *(v21 + 14);
    v23 = *(v21 + 1);
    *v20 = *v21;
    *(v20 + 16) = v23;
    v24 = *(v21 + 3);
    *(v20 + 32) = *(v21 + 2);
    *(v20 + 48) = v24;
  }

  return a1;
}

uint64_t destroy for SpatialDragGesture.StateType(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) != 1)
  {
  }

  v4 = *(a2 + 20);
  v5 = type metadata accessor for DragGesture.Value(0);
  result = (*(*(v5 - 8) + 48))(a1 + v4, 1, v5);
  if (!result)
  {
    v7 = type metadata accessor for Date();
    v8 = *(*(v7 - 8) + 8);

    return v8(a1 + v4, v7);
  }

  return result;
}

uint64_t initializeWithCopy for SpatialDragGesture.StateType(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 16);
  if (v6 == 1)
  {
    v7 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v7;
    *(a1 + 89) = *(a2 + 89);
    v8 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v8;
    v9 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v9;
  }

  else
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = v6;
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
  }

  v10 = *(a3 + 20);
  v11 = (a1 + v10);
  v12 = (a2 + v10);
  v13 = type metadata accessor for DragGesture.Value(0);
  v14 = *(v13 - 1);
  if ((*(v14 + 48))(v12, 1, v13))
  {
    type metadata accessor for CategoryGesture<DragGesture.Value>(0, &lazy cache variable for type metadata for DragGesture.Value?, MEMORY[0x1E69E6720]);
    memcpy(v11, v12, *(*(v15 - 8) + 64));
  }

  else
  {
    v16 = type metadata accessor for Date();
    (*(*(v16 - 8) + 16))(v11, v12, v16);
    *&v11[v13[5]] = *&v12[v13[5]];
    *&v11[v13[6]] = *&v12[v13[6]];
    *&v11[v13[7]] = *&v12[v13[7]];
    (*(v14 + 56))(v11, 0, 1, v13);
  }

  v17 = *(a3 + 24);
  v18 = a1 + v17;
  v19 = a2 + v17;
  v20 = *(v19 + 80);
  *(v18 + 64) = *(v19 + 64);
  *(v18 + 80) = v20;
  *(v18 + 96) = *(v19 + 96);
  *(v18 + 112) = *(v19 + 112);
  v21 = *(v19 + 16);
  *v18 = *v19;
  *(v18 + 16) = v21;
  v22 = *(v19 + 48);
  *(v18 + 32) = *(v19 + 32);
  *(v18 + 48) = v22;
  return a1;
}

uint64_t assignWithCopy for SpatialDragGesture.StateType(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v6 = *(a2 + 2);
  if (*(a1 + 16) == 1)
  {
    if (v6 == 1)
    {
      v7 = *a2;
      v8 = a2[2];
      *(a1 + 16) = a2[1];
      *(a1 + 32) = v8;
      *a1 = v7;
      v9 = a2[3];
      v10 = a2[4];
      v11 = a2[5];
      *(a1 + 89) = *(a2 + 89);
      *(a1 + 64) = v10;
      *(a1 + 80) = v11;
      *(a1 + 48) = v9;
    }

    else
    {
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 16) = *(a2 + 2);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 88) = *(a2 + 88);
      *(a1 + 104) = *(a2 + 104);
    }
  }

  else if (v6 == 1)
  {
    outlined destroy of TouchEvent(a1);
    v13 = a2[1];
    v12 = a2[2];
    *a1 = *a2;
    *(a1 + 16) = v13;
    *(a1 + 32) = v12;
    v15 = a2[4];
    v14 = a2[5];
    v16 = a2[3];
    *(a1 + 89) = *(a2 + 89);
    *(a1 + 64) = v15;
    *(a1 + 80) = v14;
    *(a1 + 48) = v16;
  }

  else
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = *(a2 + 2);

    *(a1 + 24) = *(a2 + 3);
    *(a1 + 32) = *(a2 + 4);
    *(a1 + 40) = *(a2 + 5);
    *(a1 + 48) = *(a2 + 6);
    *(a1 + 56) = *(a2 + 7);
    *(a1 + 64) = *(a2 + 8);
    *(a1 + 72) = *(a2 + 9);
    *(a1 + 80) = *(a2 + 10);
    *(a1 + 88) = *(a2 + 11);
    *(a1 + 96) = *(a2 + 12);
    *(a1 + 104) = *(a2 + 104);
  }

  v17 = *(a3 + 20);
  v18 = (a1 + v17);
  v19 = a2 + v17;
  v20 = type metadata accessor for DragGesture.Value(0);
  v21 = *(v20 - 1);
  v22 = *(v21 + 48);
  v23 = v22(v18, 1, v20);
  v24 = v22(v19, 1, v20);
  if (!v23)
  {
    if (!v24)
    {
      v35 = type metadata accessor for Date();
      (*(*(v35 - 8) + 24))(v18, v19, v35);
      v36 = v20[5];
      v37 = &v18[v36];
      v38 = &v19[v36];
      *v37 = *v38;
      *(v37 + 1) = *(v38 + 1);
      v39 = v20[6];
      v40 = &v18[v39];
      v41 = &v19[v39];
      *v40 = *v41;
      *(v40 + 1) = *(v41 + 1);
      v42 = v20[7];
      v43 = &v18[v42];
      v44 = &v19[v42];
      *v43 = *v44;
      *(v43 + 1) = *(v44 + 1);
      goto LABEL_14;
    }

    outlined destroy of ModifierGesture<StateContainerGesture<SpatialDragGesture.StateType, TouchEvent, DragGesture.Value>, ModifierGesture<CoordinateSpaceGesture<TouchEvent>, ModifierGesture<EventFilter<TouchEvent>, EventListener<TouchEvent>>>>(v18, type metadata accessor for DragGesture.Value);
    goto LABEL_13;
  }

  if (v24)
  {
LABEL_13:
    type metadata accessor for CategoryGesture<DragGesture.Value>(0, &lazy cache variable for type metadata for DragGesture.Value?, MEMORY[0x1E69E6720]);
    memcpy(v18, v19, *(*(v26 - 8) + 64));
    goto LABEL_14;
  }

  v25 = type metadata accessor for Date();
  (*(*(v25 - 8) + 16))(v18, v19, v25);
  *&v18[v20[5]] = *&v19[v20[5]];
  *&v18[v20[6]] = *&v19[v20[6]];
  *&v18[v20[7]] = *&v19[v20[7]];
  (*(v21 + 56))(v18, 0, 1, v20);
LABEL_14:
  v27 = *(a3 + 24);
  v28 = a1 + v27;
  v29 = a2 + v27;
  v30 = *v29;
  *(v28 + 9) = *(v29 + 9);
  *v28 = v30;
  v31 = *(v29 + 2);
  *(v28 + 41) = *(v29 + 41);
  *(v28 + 32) = v31;
  v32 = *(v29 + 4);
  *(v28 + 73) = *(v29 + 73);
  *(v28 + 64) = v32;
  v33 = *(v29 + 12);
  *(v28 + 104) = v29[104];
  *(v28 + 96) = v33;
  *(v28 + 112) = *(v29 + 14);
  return a1;
}

_OWORD *initializeWithTake for SpatialDragGesture.StateType(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  v6 = a2[5];
  a1[4] = a2[4];
  a1[5] = v6;
  *(a1 + 89) = *(a2 + 89);
  v7 = a2[1];
  *a1 = *a2;
  a1[1] = v7;
  v8 = a2[3];
  v9 = *(a3 + 20);
  v10 = a1 + v9;
  v11 = a2 + v9;
  a1[2] = a2[2];
  a1[3] = v8;
  v12 = type metadata accessor for DragGesture.Value(0);
  v13 = *(v12 - 1);
  if ((*(v13 + 48))(v11, 1, v12))
  {
    type metadata accessor for CategoryGesture<DragGesture.Value>(0, &lazy cache variable for type metadata for DragGesture.Value?, MEMORY[0x1E69E6720]);
    memcpy(v10, v11, *(*(v14 - 8) + 64));
  }

  else
  {
    v15 = type metadata accessor for Date();
    (*(*(v15 - 8) + 32))(v10, v11, v15);
    *&v10[v12[5]] = *&v11[v12[5]];
    *&v10[v12[6]] = *&v11[v12[6]];
    *&v10[v12[7]] = *&v11[v12[7]];
    (*(v13 + 56))(v10, 0, 1, v12);
  }

  v16 = *(a3 + 24);
  v17 = a1 + v16;
  v18 = a2 + v16;
  v19 = *(v18 + 5);
  *(v17 + 4) = *(v18 + 4);
  *(v17 + 5) = v19;
  *(v17 + 6) = *(v18 + 6);
  *(v17 + 14) = *(v18 + 14);
  v20 = *(v18 + 1);
  *v17 = *v18;
  *(v17 + 1) = v20;
  v21 = *(v18 + 3);
  *(v17 + 2) = *(v18 + 2);
  *(v17 + 3) = v21;
  return a1;
}

uint64_t assignWithTake for SpatialDragGesture.StateType(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 16) == 1)
  {
    goto LABEL_4;
  }

  v6 = *(a2 + 16);
  if (v6 == 1)
  {
    outlined destroy of TouchEvent(a1);
LABEL_4:
    v7 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v7;
    *(a1 + 89) = *(a2 + 89);
    v8 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v8;
    v9 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v9;
    goto LABEL_6;
  }

  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v6;

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
LABEL_6:
  v10 = *(a3 + 20);
  v11 = (a1 + v10);
  v12 = (a2 + v10);
  v13 = type metadata accessor for DragGesture.Value(0);
  v14 = *(v13 - 1);
  v15 = *(v14 + 48);
  v16 = v15(v11, 1, v13);
  v17 = v15(v12, 1, v13);
  if (!v16)
  {
    if (!v17)
    {
      v24 = type metadata accessor for Date();
      (*(*(v24 - 8) + 40))(v11, v12, v24);
      *&v11[v13[5]] = *&v12[v13[5]];
      *&v11[v13[6]] = *&v12[v13[6]];
      *&v11[v13[7]] = *&v12[v13[7]];
      goto LABEL_12;
    }

    outlined destroy of ModifierGesture<StateContainerGesture<SpatialDragGesture.StateType, TouchEvent, DragGesture.Value>, ModifierGesture<CoordinateSpaceGesture<TouchEvent>, ModifierGesture<EventFilter<TouchEvent>, EventListener<TouchEvent>>>>(v11, type metadata accessor for DragGesture.Value);
    goto LABEL_11;
  }

  if (v17)
  {
LABEL_11:
    type metadata accessor for CategoryGesture<DragGesture.Value>(0, &lazy cache variable for type metadata for DragGesture.Value?, MEMORY[0x1E69E6720]);
    memcpy(v11, v12, *(*(v19 - 8) + 64));
    goto LABEL_12;
  }

  v18 = type metadata accessor for Date();
  (*(*(v18 - 8) + 32))(v11, v12, v18);
  *&v11[v13[5]] = *&v12[v13[5]];
  *&v11[v13[6]] = *&v12[v13[6]];
  *&v11[v13[7]] = *&v12[v13[7]];
  (*(v14 + 56))(v11, 0, 1, v13);
LABEL_12:
  v20 = *(a3 + 24);
  v21 = a1 + v20;
  v22 = a2 + v20;
  *v21 = *v22;
  *(v21 + 9) = *(v22 + 9);
  *(v21 + 32) = *(v22 + 32);
  *(v21 + 41) = *(v22 + 41);
  *(v21 + 64) = *(v22 + 64);
  *(v21 + 73) = *(v22 + 73);
  *(v21 + 104) = *(v22 + 104);
  *(v21 + 96) = *(v22 + 96);
  *(v21 + 112) = *(v22 + 112);
  return a1;
}

void type metadata completion function for SpatialDragGesture.StateType(uint64_t a1)
{
  type metadata accessor for CategoryGesture<DragGesture.Value>(319, &lazy cache variable for type metadata for DragGesture.Value?, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

uint64_t get_witness_table_7SwiftUI14ToolbarContentRzlAA0c8ModifiedD0VyxAA25ItemContainerTintModifier33_BB9DEADC2141171EEA22328170A014C7LLVGAaBHPxAaBHD1__AgA0cdI0HPyHCHCTm(uint64_t *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = a1[1];
  v6 = type metadata accessor for ToolbarModifiedContent(255, *a1, &type metadata for ItemContainerTintModifier, a4);
  v8[0] = v5;
  v8[1] = &protocol witness table for ItemContainerTintModifier;
  return swift_getWitnessTable(a2, v6, v8);
}

uint64_t *assignWithCopy for ItemContainerTintModifier(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *assignWithTake for ItemContainerTintModifier(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for ItemContainerTintModifier(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for ItemContainerTintModifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t static ItemContainerTintModifier._makeToolbar(content:inputs:body:)(int *a1, _OWORD *a2, void (*a3)(uint64_t, __int128 *))
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a2[1];
  v5 = a2[3];
  v21 = a2[2];
  v22[0] = v5;
  *(v22 + 12) = *(a2 + 60);
  v6 = a2[1];
  v20[0] = *a2;
  v20[1] = v6;
  v7 = a2[3];
  v18 = v21;
  v19[0] = v7;
  *(v19 + 12) = *(a2 + 60);
  v8 = *a1;
  v9 = v6;
  v16 = v20[0];
  v17 = v4;
  swift_beginAccess();
  LODWORD(v25[0]) = *(v9 + 16);
  DWORD1(v25[0]) = v8;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  outlined init with copy of _ToolbarInputs(v20, v27);
  lazy protocol witness table accessor for type ItemContainerTintModifier.ChildEnvironment and conformance ItemContainerTintModifier.ChildEnvironment();
  Attribute.init<A>(body:value:flags:update:)();
  _GraphInputs.environment.setter();
  v23[2] = v18;
  v24[0] = v19[0];
  *(v24 + 12) = *(v19 + 12);
  v23[0] = v16;
  v23[1] = v17;
  v14 = v18;
  v15[0] = v19[0];
  *(v15 + 12) = *(v19 + 12);
  v12 = v16;
  v13 = v17;
  v10 = outlined init with copy of _ToolbarInputs(v23, v27);
  a3(v10, &v12);
  v25[2] = v14;
  v26[0] = v15[0];
  *(v26 + 12) = *(v15 + 12);
  v25[0] = v12;
  v25[1] = v13;
  outlined destroy of _ToolbarInputs(v25);
  v27[2] = v18;
  v28[0] = v19[0];
  *(v28 + 12) = *(v19 + 12);
  v27[0] = v16;
  v27[1] = v17;
  return outlined destroy of _ToolbarInputs(v27);
}

double ItemContainerTintModifier.ChildEnvironment.value.getter@<D0>(uint64_t *a2@<X8>)
{
  Value = AGGraphGetValue();
  v4 = Value[1];
  *a2 = *Value;
  a2[1] = v4;

  swift_retain_n();
  AGGraphGetValue();
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarItemContainerTint>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarItemContainerTint> and conformance EnvironmentPropertyKey<A>();
  swift_retain_n();
  PropertyList.subscript.setter();
  if (v4)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

void specialized implicit closure #1 in _GraphInputs.toolbarItemContainerTint.getter(uint64_t *a1@<X0>, void *a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarItemContainerTint>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarItemContainerTint> and conformance EnvironmentPropertyKey<A>();

    swift_retain_n();
    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarItemContainerTint>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarItemContainerTint> and conformance EnvironmentPropertyKey<A>();

    PropertyList.subscript.getter();
  }

  *a2 = v3;
}

unint64_t lazy protocol witness table accessor for type ItemContainerTintModifier.ChildEnvironment and conformance ItemContainerTintModifier.ChildEnvironment()
{
  result = lazy protocol witness table cache variable for type ItemContainerTintModifier.ChildEnvironment and conformance ItemContainerTintModifier.ChildEnvironment;
  if (!lazy protocol witness table cache variable for type ItemContainerTintModifier.ChildEnvironment and conformance ItemContainerTintModifier.ChildEnvironment)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ItemContainerTintModifier.ChildEnvironment, &unk_1EFFA7EB0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ItemContainerTintModifier.ChildEnvironment and conformance ItemContainerTintModifier.ChildEnvironment);
  }

  return result;
}

Swift::Void __swiftcall ListTableViewHeaderFooter.prepareForReuse()()
{
  v1 = type metadata accessor for UIListContentConfiguration();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0) + 24;
  v4 = type metadata accessor for ListTableViewHeaderFooter();
  v13.receiver = v0;
  v13.super_class = v4;
  objc_msgSendSuper2(&v13, sel_prepareForReuse);
  static UIListContentConfiguration.header()();
  specialized HeaderFooterConfiguration.Values.init(_:)(v3, v14);
  *&v12[6] = v14[0];
  *&v12[22] = v14[1];
  *&v12[38] = v14[2];
  v5 = &v0[OBJC_IVAR____TtC7SwiftUI25ListTableViewHeaderFooter_configuration];
  swift_beginAccess();
  v6 = *(v5 + 3);
  v15[2] = *(v5 + 2);
  v15[3] = v6;
  v7 = *(v5 + 1);
  v15[0] = *v5;
  v15[1] = v7;
  v8 = *&v12[16];
  *(v5 + 18) = *v12;
  v16 = *(v5 + 8);
  *v5 = 0;
  *(v5 + 1) = 0;
  *(v5 + 8) = 0;
  *(v5 + 8) = *&v12[46];
  *(v5 + 34) = v8;
  *(v5 + 50) = *&v12[32];
  outlined destroy of HeaderFooterConfiguration(v15);
  v9 = *&v0[OBJC_IVAR____TtC7SwiftUI25ListTableViewHeaderFooter_host];
  if (v9)
  {
    type metadata accessor for _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>>(0);
    lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>();
    v10 = v9;
    ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
  }
}

void ListTableViewHeaderFooter.updateConfiguration(using:)()
{
  v1 = v0;
  type metadata accessor for UIBackgroundConfiguration?(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  isa = UIViewConfigurationState._bridgeToObjectiveC()().super.isa;
  v9 = type metadata accessor for ListTableViewHeaderFooter();
  v17.receiver = v1;
  v17.super_class = v9;
  objc_msgSendSuper2(&v17, sel__bridgedUpdateConfigurationUsingState_, isa);

  v10 = [v1 backgroundView];
  if (v10)
  {

    return;
  }

  MEMORY[0x18D00D660]();
  v11 = type metadata accessor for UIBackgroundConfiguration();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v7, 1, v11))
  {
    outlined destroy of UIBackgroundConfiguration?(v7);
  }

  else
  {
    v14 = UIBackgroundConfiguration.customView.getter();
    outlined destroy of UIBackgroundConfiguration?(v7);
    if (v14)
    {
      type metadata accessor for _UIHostingView<ModifiedContent<AnyView, EmptyModifier>>(0);
      v15 = swift_dynamicCastClass();

      if (v15)
      {
        return;
      }
    }
  }

  type metadata accessor for EnvironmentPropertyKey<HeaderFooterConfigurationKey>(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v2>, MEMORY[0x1E697DF20], MEMORY[0x1E697DF18], MEMORY[0x1E697EC20]);
  lazy protocol witness table accessor for type _SemanticFeature<Semantics_v2> and conformance _SemanticFeature<A>();
  if (static SemanticFeature.isEnabled.getter())
  {
    v13 = OBJC_IVAR____TtC7SwiftUI25ListTableViewHeaderFooter_configuration;
    swift_beginAccess();
    if (*(v1 + v13))
    {
      static UIBackgroundConfiguration.listFooter()();
    }

    else
    {
      static UIBackgroundConfiguration.listHeader()();
    }

    (*(v12 + 56))(v4, 0, 1, v11);
    MEMORY[0x18D00D670](v4);
  }
}

id ListTableViewHeaderFooter.init(reuseIdentifier:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for UIListContentConfiguration();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = &v2[OBJC_IVAR____TtC7SwiftUI25ListTableViewHeaderFooter_viewListID];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = &v2[OBJC_IVAR____TtC7SwiftUI25ListTableViewHeaderFooter_configuration];
  *(v9 + 8) = 0;
  *v9 = 0;
  *(v9 + 1) = 0;
  static UIListContentConfiguration.header()();
  specialized HeaderFooterConfiguration.Values.init(_:)(v7, v16);
  v10 = v16[1];
  *(v9 + 24) = v16[0];
  *(v9 + 40) = v10;
  *(v9 + 56) = v16[2];
  *&v2[OBJC_IVAR____TtC7SwiftUI25ListTableViewHeaderFooter_host] = 0;
  *&v2[OBJC_IVAR____TtC7SwiftUI25ListTableViewHeaderFooter_outlineRootSeed] = 0;
  if (a2)
  {
    v11 = MEMORY[0x18D00C850](a1, a2);
  }

  else
  {
    v11 = 0;
  }

  v12 = type metadata accessor for ListTableViewHeaderFooter();
  v15.receiver = v2;
  v15.super_class = v12;
  v13 = objc_msgSendSuper2(&v15, sel_initWithReuseIdentifier_, v11);

  return v13;
}

id ListTableViewHeaderFooter.init(coder:)(void *a1)
{
  v3 = type metadata accessor for UIListContentConfiguration();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = &v1[OBJC_IVAR____TtC7SwiftUI25ListTableViewHeaderFooter_viewListID];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = &v1[OBJC_IVAR____TtC7SwiftUI25ListTableViewHeaderFooter_configuration];
  *(v7 + 8) = 0;
  *v7 = 0;
  *(v7 + 1) = 0;
  static UIListContentConfiguration.header()();
  specialized HeaderFooterConfiguration.Values.init(_:)(v5, v13);
  v8 = v13[1];
  *(v7 + 24) = v13[0];
  *(v7 + 40) = v8;
  *(v7 + 56) = v13[2];
  *&v1[OBJC_IVAR____TtC7SwiftUI25ListTableViewHeaderFooter_host] = 0;
  *&v1[OBJC_IVAR____TtC7SwiftUI25ListTableViewHeaderFooter_outlineRootSeed] = 0;
  v9 = type metadata accessor for ListTableViewHeaderFooter();
  v12.receiver = v1;
  v12.super_class = v9;
  v10 = objc_msgSendSuper2(&v12, sel_initWithCoder_, a1);

  if (v10)
  {
  }

  return v10;
}

id ListTableViewHeaderFooter.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ListTableViewHeaderFooter();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void *protocol witness for PlatformListViewBase.host.getter in conformance ListTableViewHeaderFooter()
{
  v1 = *(v0 + OBJC_IVAR____TtC7SwiftUI25ListTableViewHeaderFooter_host);
  v2 = v1;
  return v1;
}

void *specialized ListTableViewHeaderFooter.hostingView<A>(_:didChangePreferences:)(void *a1)
{
  result = PreferenceValues.subscript.getter();
  if (v3 == -1 || v3 != *(v1 + OBJC_IVAR____TtC7SwiftUI25ListTableViewHeaderFooter_outlineRootSeed))
  {
    *(v1 + OBJC_IVAR____TtC7SwiftUI25ListTableViewHeaderFooter_outlineRootSeed) = v3;
  }

  return result;
}

double specialized ListTableViewHeaderFooter.hostingView<A>(_:willUpdate:)(void *a1)
{
  v3 = v1 + OBJC_IVAR____TtC7SwiftUI25ListTableViewHeaderFooter_configuration;
  swift_beginAccess();
  v4 = *(v3 + 16);
  v5 = *(v3 + 48);
  v16 = *(v3 + 32);
  v17 = v5;
  v6 = *(v3 + 16);
  v15[0] = *v3;
  v15[1] = v6;
  v7 = *(v3 + 48);
  v12 = v16;
  v13 = v7;
  v18 = *(v3 + 64);
  v14 = *(v3 + 64);
  v10 = v15[0];
  v11 = v4;
  type metadata accessor for EnvironmentPropertyKey<HeaderFooterConfigurationKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<HeaderFooterConfigurationKey>, &type metadata for HeaderFooterConfigurationKey, &protocol witness table for HeaderFooterConfigurationKey, MEMORY[0x1E697FE38]);
  outlined init with copy of HeaderFooterConfiguration(v15, v9);
  outlined init with copy of HeaderFooterConfiguration(v15, v9);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<HeaderFooterConfigurationKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (a1[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  outlined destroy of HeaderFooterConfiguration(v15);

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<HeaderFooterConfigurationKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<HeaderFooterConfigurationKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<HeaderFooterConfigurationKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<HeaderFooterConfigurationKey>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<HeaderFooterConfigurationKey>, &type metadata for HeaderFooterConfigurationKey, &protocol witness table for HeaderFooterConfigurationKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<HeaderFooterConfigurationKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>)
  {
    type metadata accessor for _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>>(255);
    result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CollectionViewCellModifier(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 351))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 256);
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

uint64_t storeEnumTagSinglePayload for CollectionViewCellModifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
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
    *(result + 350) = 0;
    *(result + 348) = 0;
    *(result + 344) = 0;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 351) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 351) = 0;
    }

    if (a2)
    {
      *(result + 256) = a2 + 1;
    }
  }

  return result;
}

uint64_t CollectionViewHeaderFooterVisitor.visit(view:traits:)(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v5 = *a2;
  v6 = *(a1 + 56);
  v7 = *(a1 + 60);
  v8 = *(a1 + 64);
  v9 = *v2;
  v10 = *(v2 + 3);
  v11 = *(v8 + 16);
  swift_bridgeObjectRetain_n();
  if (v11)
  {
    v12 = *(v8 + 52);
    v29 = *(v8 + 32);

    if (v12)
    {
      v13 = -1;
    }

    else
    {
      v13 = v7;
    }

    v28 = v13;
  }

  else
  {

    v29 = 0;
    v28 = v7;
  }

  v31 = v7;
  v30 = *(v3 + 1);
  v27 = *(v30 + direct field offset for ListCollectionViewCellBase.shouldHugContent);
  KeyPath = swift_getKeyPath();
  LOBYTE(v32) = 0;
  v25 = swift_getKeyPath();
  v24 = swift_getKeyPath();
  v22 = swift_getKeyPath();
  v49[0] = 0;
  v23 = swift_getKeyPath();
  v50 = v5;
  ViewTraitCollection.listRowInsets.getter();
  *&v34[5] = v35;
  *&v34[21] = v36;
  *&v34[37] = *v37;
  *&v34[46] = *&v37[9];
  ViewTraitCollection.value<A>(for:defaultValue:)();
  *&v38 = v5;
  *&v45 = 1;
  BYTE8(v45) = 0;
  ViewTraitCollection.value<A>(for:defaultValue:)();
  outlined consume of ListItemTint?(1);
  v21 = v51;
  outlined consume of ListItemTint?(1);
  v14 = 0;
  if (v9 == 1)
  {
    v50 = v5;
    LOBYTE(v38) = 0;
    ViewTraitCollection.value<A>(for:defaultValue:)();
    v14 = 1;
  }

  outlined init with copy of _ViewList_View(a1, &v50);
  v52 = KeyPath;
  v53 = 0;
  v54 = v25;
  v55 = 0;
  v56 = v24;
  v57 = 0;
  v58 = 0;
  v59 = v22;
  v60 = 0;
  v62 = 0;
  v61 = 0;
  v63 = 0;
  *v64 = *v49;
  *&v64[3] = *&v49[3];
  v65 = v23;
  v68 = v47;
  *v69 = *v48;
  *&v69[9] = *&v48[9];
  v66 = v45;
  v67 = v46;
  v70 = 0;
  v71 = v9;
  v72 = *v34;
  v73 = *&v34[16];
  *v74 = *&v34[32];
  *&v74[14] = *&v37[9];
  *v75 = *v44;
  *&v75[3] = *&v44[3];
  v76 = v5;
  v77 = v27;
  *v78 = *v43;
  *&v78[3] = *&v43[3];
  v79 = v5;
  v80 = v21;
  v81 = v14;
  v82 = v41;
  v83 = v42;
  v84 = v10;
  v85 = v6;
  v86 = v28;
  v87 = v29;
  *&v90[14] = *&v40[14];
  v89 = v39;
  *v90 = *v40;
  v88 = v38;
  v91 = 1;
  v15 = *(v3 + 2);
  specialized ListCollectionViewCellBase.configureContent(_:transaction:)(&v50, v15);
  if (*v3)
  {
    ViewTraitCollection.value<A>(for:defaultValue:)();
    outlined consume of Text.LineStyle?(0, 1);
    if (v33 != 1)
    {
      v17 = *v3;
      if (v17 > 0x3F || ((v32 >> v17) & 1) != 0)
      {

        _s7SwiftUI20PlatformListViewBasePAASo6UIViewCRbzrlE19configureBackground_6traits11transactionyAA15ModifiedContentVyAA03AnyE0V0I8ModifierQzGSg_AA0E15TraitCollectionVAA11TransactionVSgtFAA0dqe4CellF0CyAA01_ed1_E0VG_Tt0g5(v18, v15);

        outlined consume of Text.LineStyle?(v32, v33);
        goto LABEL_16;
      }

      outlined consume of Text.LineStyle?(v32, v33);
    }

    specialized ListCollectionViewCellBase.backgroundHost.setter(0);
  }

  else
  {
    ViewTraitCollection.value<A>(for:defaultValue:)();

    _s7SwiftUI20PlatformListViewBasePAASo6UIViewCRbzrlE19configureBackground_6traits11transactionyAA15ModifiedContentVyAA03AnyE0V0I8ModifierQzGSg_AA0E15TraitCollectionVAA11TransactionVSgtFAA0dqe4CellF0CyAA01_ed1_E0VG_Tt0g5(v16, v15);
  }

LABEL_16:
  outlined destroy of ModifiedContent<_ViewList_View, CollectionViewCellModifier>(&v50);
  v19 = (v30 + direct field offset for ListCollectionViewCellBase.viewListID);
  *v19 = v6 | (v31 << 32);
  v19[1] = v8;

  return 0;
}

uint64_t closure #1 in CollectionViewCellModifier.resolvedBody(content:isInSidebar:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v26 = *(a1 + 170) == 0;
  KeyPath = swift_getKeyPath();
  v13 = swift_getKeyPath();
  LOBYTE(v58[0]) = 0;
  v14 = swift_getKeyPath();
  v27[224] = 0;
  v15 = static Edge.Set.all.getter();
  LOBYTE(v44) = 0;
  v16 = specialized Environment.wrappedValue.getter(*(a1 + 16), *(a1 + 24)) & 1;
  ConditionalSpacer.init(isEnabled:minLength:)();
  v17 = *(&v44 + 1);
  v18 = v45;
  v28[0] = xmmword_18CD80A00;
  v28[1] = xmmword_18CD80A00;
  v29 = KeyPath;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  LOBYTE(v33) = 0;
  *(&v33 + 1) = v13;
  LOBYTE(v34) = 0;
  *(&v34 + 1) = v14;
  LOBYTE(v38) = 0;
  BYTE1(v38) = v26;
  BYTE8(v38) = v15;
  *&v39 = a3;
  *(&v39 + 1) = a4;
  *&v40 = a5;
  *(&v40 + 1) = a6;
  LOBYTE(v41) = 0;
  v42 = 0;
  v43 = v16;
  LOBYTE(v57) = v16;
  v55 = v40;
  v56 = v41;
  v44 = xmmword_18CD80A00;
  v45 = xmmword_18CD80A00;
  v48 = v33;
  v49 = v34;
  v46 = KeyPath;
  v47 = 0u;
  v53 = v38;
  v54 = v39;
  v51 = v36;
  v52 = v37;
  v50 = v35;
  v27[216] = v18;
  v19 = v40;
  *(a2 + 160) = v39;
  *(a2 + 176) = v19;
  *(a2 + 192) = v56;
  *(a2 + 208) = v57;
  v20 = v51;
  *(a2 + 96) = v50;
  *(a2 + 112) = v20;
  v21 = v53;
  *(a2 + 128) = v52;
  *(a2 + 144) = v21;
  v22 = v47;
  *(a2 + 32) = v46;
  *(a2 + 48) = v22;
  v23 = v49;
  *(a2 + 64) = v48;
  *(a2 + 80) = v23;
  v24 = v45;
  *a2 = v44;
  *(a2 + 16) = v24;
  *(a2 + 216) = 0;
  *(a2 + 224) = v17;
  *(a2 + 232) = v18;
  v58[0] = xmmword_18CD80A00;
  v58[1] = xmmword_18CD80A00;
  v59 = KeyPath;
  v60 = 0;
  v62 = 0;
  v61 = 0;
  v63 = 0;
  v64 = v13;
  v65 = 0;
  v66 = v14;
  v67 = 0;
  v68 = v26;
  v69 = v15;
  v70 = a3;
  v71 = a4;
  v72 = a5;
  v73 = a6;
  v74 = 0;
  v75 = 0;
  v76 = v16;
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>(v28, v27);
  return outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>(v58, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance ListCoreCellEnvironment(int *a1, uint64_t a2, void (*a3)(uint64_t, _BYTE *), uint64_t a4, uint64_t a5)
{
  v7 = *a1;
  outlined init with copy of _ViewListInputs(a2, v11);
  v10 = v7;
  v8 = protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance ListCoreCellEnvironment(&v10, v11, a5);
  a3(v8, v11);
  return outlined destroy of _ViewListInputs(v11);
}

uint64_t outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)>(0, &lazy cache variable for type metadata for TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)>, type metadata accessor for (ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer), MEMORY[0x1E6981F40]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for (ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer))
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer));
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, type metadata accessor for ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>);
    type metadata accessor for InvertedViewInputPredicate<Solarium>(255, &lazy cache variable for type metadata for _AnimationModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E69E6388], MEMORY[0x1E697F540]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>);
    }
  }
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>)
  {
    type metadata accessor for _ViewModifier_Content<CollectionViewCellModifier>(255);
    type metadata accessor for StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>(255);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>);
    }
  }
}

void type metadata accessor for StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>)
  {
    type metadata accessor for InvertedViewInputPredicate<Solarium>(255, &lazy cache variable for type metadata for InvertedViewInputPredicate<Solarium>, MEMORY[0x1E6981CD8], MEMORY[0x1E6981CD0], MEMORY[0x1E6980680]);
    type metadata accessor for StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>(255);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>);
    }
  }
}

void type metadata accessor for StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>)
  {
    type metadata accessor for InvertedViewInputPredicate<Solarium>(255, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v4>, MEMORY[0x1E697DF40], MEMORY[0x1E697DF38], MEMORY[0x1E697EC20]);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>);
    }
  }
}

uint64_t outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for AccessibilityListCoreCellModifier<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for AccessibilityListCoreCellModifier<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)>>>)
  {
    type metadata accessor for HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)>>(255);
    v3 = v2;
    v4 = lazy protocol witness table accessor for type StyleContextAcceptsPredicate<SidebarStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)>> and conformance HStack<A>, type metadata accessor for HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)>>, MEMORY[0x1E69817F8]);
    v6 = type metadata accessor for AccessibilityListCoreCellModifier(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for AccessibilityListCoreCellModifier<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)>>>);
    }
  }
}

void type metadata accessor for HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)>>)
  {
    type metadata accessor for TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)>(255, &lazy cache variable for type metadata for TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)>, type metadata accessor for (ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer), MEMORY[0x1E6981F40]);
    lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)> and conformance TupleView<A>();
    v1 = type metadata accessor for HStack();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)> and conformance TupleView<A>()
{
  result = lazy protocol witness table cache variable for type TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)> and conformance TupleView<A>;
  if (!lazy protocol witness table cache variable for type TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)> and conformance TupleView<A>)
  {
    type metadata accessor for TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)>(255, &lazy cache variable for type metadata for TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)>, type metadata accessor for (ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer), MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable(MEMORY[0x1E6981F48], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)> and conformance TupleView<A>);
  }

  return result;
}

uint64_t outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy163_8(uint64_t a1, __int128 *a2)
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
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 159) = *(a2 + 159);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t assignWithTake for ListCoreCellEnvironment(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);

  v5 = *(a2 + 72);
  v6 = *(a1 + 72);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  if (v6 == 1)
  {
    goto LABEL_4;
  }

  if (v5 == 1)
  {
    outlined destroy of ListItemTint(a1 + 72);
LABEL_4:
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 80) = *(a2 + 80);
    goto LABEL_6;
  }

  *(a1 + 72) = v5;

  *(a1 + 80) = *(a2 + 80);
LABEL_6:
  v7 = *(a2 + 152);
  v8 = *(a1 + 152);
  v9 = *(a2 + 104);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = v9;
  v10 = *(a2 + 136);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = v10;
  if (v8 != 1)
  {
    if (v7 != 1)
    {
      *(a1 + 152) = v7;

      *(a1 + 160) = *(a2 + 160);
      goto LABEL_11;
    }

    outlined destroy of ListItemTint(a1 + 152);
  }

  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = *(a2 + 160);
LABEL_11:
  *(a1 + 161) = *(a2 + 161);
  *(a1 + 162) = *(a2 + 162);
  return a1;
}

uint64_t getEnumTagSinglePayload for ListCoreCellEnvironment(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 163))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
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

uint64_t storeEnumTagSinglePayload for ListCoreCellEnvironment(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 162) = 0;
    *(result + 160) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 163) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 163) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<SidebarStyleContext>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)>>, AccessibilityScrollableContextModifier>, _FlexFrameLayout>, ListCoreCellEnvironment>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)>>, AccessibilityScrollableContextModifier>, _FlexFrameLayout>, ListCoreCellEnvironment>> and()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<SidebarStyleContext>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)>>, AccessibilityScrollableContextModifier>, _FlexFrameLayout>, ListCoreCellEnvironment>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)>>, AccessibilityScrollableContextModifier>, _FlexFrameLayout>, ListCoreCellEnvironment;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<SidebarStyleContext>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)>>, AccessibilityScrollableContextModifier>, _FlexFrameLayout>, ListCoreCellEnvironment>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)>>, AccessibilityScrollableContextModifier>, _FlexFrameLayout>, ListCoreCellEnvironment)
  {
    v8 = v0;
    v9 = v1;
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<SidebarStyleContext>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)>>, AccessibilityScrollableContextModifier>, _FlexFrameLayout>, ListCoreCellEnvironment>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)>>, AccessibilityScrollableContextModifier>, _FlexFrameLayout>, ListCoreCellEnvironment>>(255);
    v4 = v3;
    v5 = lazy protocol witness table accessor for type StyleContextAcceptsPredicate<SidebarStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<SidebarStyleContext> and conformance StyleContextAcceptsPredicate<A>, type metadata accessor for StyleContextAcceptsPredicate<SidebarStyleContext>, MEMORY[0x1E69808F0]);
    v6 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)>>, AccessibilityScrollableContextModifier>, _FlexFrameLayout>, ListCoreCellEnvironment> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)>>, AccessibilityScrollableContextModifier>, _FlexFrameLayout>, ListCoreCellEnvironment> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)>>, AccessibilityScrollableContextModifier>, _FlexFrameLayout>, ListCoreCellEnvironment>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)>>, AccessibilityScrollableContextModifier>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>, &protocol witness table for ListCoreCellEnvironment);
    v7 = v6;
    result = swift_getWitnessTable(MEMORY[0x1E6981CE8], v4, &v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<SidebarStyleContext>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)>>, AccessibilityScrollableContextModifier>, _FlexFrameLayout>, ListCoreCellEnvironment>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)>>, AccessibilityScrollableContextModifier>, _FlexFrameLayout>, ListCoreCellEnvironment);
  }

  return result;
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<SidebarStyleContext>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)>>, AccessibilityScrollableContextModifier>, _FlexFrameLayout>, ListCoreCellEnvironment>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)>>, AccessibilityScrollableContextModifier>, _FlexFrameLayout>, ListCoreCellEnvironment>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<SidebarStyleContext>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)>>, AccessibilityScrollableContextModifier>, _FlexFrameLayout>, ListCoreCellEnvironment>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)>>, AccessibilityScrollableContextModifier>, _FlexFrameLayout>, ListCoreCellEnvironment>>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<SidebarStyleContext>();
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)>>, AccessibilityScrollableContextModifier>, _FlexFrameLayout>, ListCoreCellEnvironment>(255);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<SidebarStyleContext>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)>>, AccessibilityScrollableContextModifier>, _FlexFrameLayout>, ListCoreCellEnvironment>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)>>, AccessibilityScrollableContextModifier>, _FlexFrameLayout>, ListCoreCellEnvironment>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>(uint64_t a1, unint64_t *a2, double (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for ModifiedContent();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)>>, AccessibilityScrollableContextModifier>, _FlexFrameLayout>, ListCoreCellEnvironment> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    v8 = a2(255);
    v9[0] = a3();
    v9[1] = a4;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v8, v9);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)>>, AccessibilityScrollableContextModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)>>, AccessibilityScrollableContextModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)>>, AccessibilityScrollableContextModifier> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)>>, AccessibilityScrollableContextModifier>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type StyleContextAcceptsPredicate<SidebarStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)>> and conformance HStack<A>, type metadata accessor for HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)>>, MEMORY[0x1E69817F8]);
    v5[1] = &protocol witness table for AccessibilityScrollableContextModifier;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)>>, AccessibilityScrollableContextModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t outlined destroy of TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  type metadata accessor for TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)>(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

id RenderBoxView.init(coder:)(void *a1)
{
  v1[OBJC_IVAR____TtC7SwiftUI13RenderBoxView_rendersFirstFrameAsynchronously] = 0;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for RenderBoxView();
  v3 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    v6 = [v5 layer];
    [v6 setDelegate_];
    [v6 setOpaque_];

    a1 = v6;
  }

  return v4;
}

id RenderBoxView.__deallocating_deinit()
{
  v1 = [v0 layer];
  [v1 waitUntilAsyncRenderingCompleted];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for RenderBoxView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t static EnvironmentWritingSceneModifier._makeInputs(modifier:inputs:)(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = type metadata accessor for EnvironmentWritingSceneModifier(255, a3, a4, a4);
  v7 = type metadata accessor for Optional();
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v21 - v9;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for EnvironmentWritingSceneModifier<A>, v6, v8);
  v13 = type metadata accessor for ChildEnvironment(0, v6, WitnessTable, v12);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v21 - v15;
  v21[3] = *a1;
  type metadata accessor for _GraphValue();
  LODWORD(a1) = _GraphValue.value.getter();
  v17 = *(a2 + 16);
  swift_beginAccess();
  LODWORD(v17) = *(v17 + 16);
  (*(*(v6 - 8) + 56))(v10, 1, 1, v6);
  ChildEnvironment.init(modifier:environment:oldModifier:)(a1, v17, v10, v6, WitnessTable, v16);
  v23 = v13;
  v24 = swift_getWitnessTable(protocol conformance descriptor for ChildEnvironment<A>, v13);
  type metadata accessor for Attribute<EnvironmentValues>();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v16, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_10, v22, v13, MEMORY[0x1E69E73E0], v18, MEMORY[0x1E69E7410], v19);
  (*(v14 + 8))(v16, v13);
  return _GraphInputs.environment.setter();
}

uint64_t ChildEnvironment.init(modifier:environment:oldModifier:)@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  *a6 = a1;
  *(a6 + 1) = a2;
  v8 = *(type metadata accessor for ChildEnvironment(0, a4, a5, a4) + 40);
  v9 = type metadata accessor for Optional();
  v10 = *(*(v9 - 8) + 32);

  return v10(&a6[v8], a3, v9);
}

uint64_t protocol witness for EnvironmentWritingModifier.value.getter in conformance EnvironmentWritingSceneModifier<A>@<X0>(uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 16);

  return v5(a2, v2, AssociatedTypeWitness);
}

uint64_t Scene.environment<A>(key:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v22 - v13;
  v16 = type metadata accessor for EnvironmentWritingSceneModifier(0, a4, a6, v15);
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v22 - v19;
  (*(v12 + 16))(v14, a2, AssociatedTypeWitness, v18);
  (*(v12 + 32))(v20, v14, AssociatedTypeWitness);
  Scene.modifier<A>(_:)(v20, a3, v16, a5);
  return (*(v17 + 8))(v20, v16);
}

uint64_t type metadata completion function for EnvironmentWritingSceneModifier(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for EnvironmentWritingSceneModifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 80);
  if (v7 <= 7 && *(*(AssociatedTypeWitness - 8) + 64) <= 0x18uLL && (*(v6 + 80) & 0x100000) == 0)
  {
    (*(v6 + 16))(a1, a2, AssociatedTypeWitness);
  }

  else
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v7 + 16) & ~v7));
  }

  return a1;
}

uint64_t destroy for EnvironmentWritingSceneModifier(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(*(AssociatedTypeWitness - 8) + 8);

  return v4(a1, AssociatedTypeWitness);
}

uint64_t initializeWithCopy for EnvironmentWritingSceneModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(a1, a2, AssociatedTypeWitness);
  return a1;
}

uint64_t assignWithCopy for EnvironmentWritingSceneModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 24))(a1, a2, AssociatedTypeWitness);
  return a1;
}

uint64_t initializeWithTake for EnvironmentWritingSceneModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a1, a2, AssociatedTypeWitness);
  return a1;
}

uint64_t assignWithTake for EnvironmentWritingSceneModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 40))(a1, a2, AssociatedTypeWitness);
  return a1;
}

uint64_t getEnumTagSinglePayload for EnvironmentWritingSceneModifier(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v6)
  {
LABEL_23:
    v12 = *(v5 + 48);

    return v12(a1);
  }

  v8 = 8 * v7;
  if (v7 <= 3)
  {
    v10 = ((a2 - v6 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v7);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v6)
      {
        goto LABEL_23;
      }

      return 0;
    }
  }

  v9 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v7 > 3)
  {
    v11 = 0;
  }

  if (v7)
  {
    if (v7 > 3)
    {
      LODWORD(v7) = 4;
    }

    if (v7 > 2)
    {
      if (v7 == 3)
      {
        LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v7) = *a1;
      }
    }

    else if (v7 == 1)
    {
      LODWORD(v7) = *a1;
    }

    else
    {
      LODWORD(v7) = *a1;
    }
  }

  return v6 + (v7 | v11) + 1;
}

void storeEnumTagSinglePayload for EnvironmentWritingSceneModifier(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  if (a3 <= v8)
  {
    v10 = 0;
  }

  else if (v9 <= 3)
  {
    v13 = ((a3 - v8 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
    if (HIWORD(v13))
    {
      v10 = 4;
    }

    else
    {
      if (v13 < 0x100)
      {
        v14 = 1;
      }

      else
      {
        v14 = 2;
      }

      if (v13 >= 2)
      {
        v10 = v14;
      }

      else
      {
        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 1;
  }

  if (v8 < a2)
  {
    v11 = ~v8 + a2;
    if (v9 < 4)
    {
      v12 = (v11 >> (8 * v9)) + 1;
      if (v9)
      {
        v15 = v11 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *a1 = v15;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&a1[v9] = v12;
              }

              else
              {
                *&a1[v9] = v12;
              }

              return;
            }
          }

          else
          {
            *a1 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v15;
        a1[2] = BYTE2(v15);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v11;
      v12 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      a1[v9] = v12;
    }

    return;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&a1[v9] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v9] = 0;
  }

  else if (v10)
  {
    a1[v9] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v16 = *(v7 + 56);

  v16(a1, a2);
}

uint64_t ChildEnvironment.updateValue()(uint64_t a1)
{
  v2 = v1;
  v42 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v34 = a1;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v30 = *(AssociatedTypeWitness - 8);
  v31 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = &v29 - v6;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v35 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v33 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v29 - v11;
  v36 = v13;
  v14 = *(v13 + 48);
  Value = AGGraphGetValue();
  v17 = v16;
  v18 = *(v3 - 8);
  (*(v18 + 16))(v12, Value, v3);
  v12[v14] = v17 & 1;
  v19 = AGGraphGetValue();
  v20 = v19[1];
  v39 = *v19;
  v40 = v20;
  v41 = v21 & 1;
  if (v21)
  {
  }

  else
  {
    OutputValue = AGGraphGetOutputValue();

    if (OutputValue && (getter of modifierNeedsUpdate #1 in ChildEnvironment.updateValue()(v12, v1, v3, v4) & 1) == 0)
    {

      return (*(v35 + 8))(v12, v36);
    }
  }

  v24 = swift_checkMetadataState();
  (*(v4 + 32))(v3, v4);
  v25 = specialized EnvironmentValues.subscript.setter(v7, v24, v24, AssociatedConformanceWitness);
  (*(v30 + 8))(v7, v31, v25);
  v37 = v39;
  v38 = v40;

  AGGraphSetOutputValue();

  v26 = *(v34 + 40);
  v27 = type metadata accessor for Optional();
  (*(*(v27 - 8) + 8))(v2 + v26, v27);
  v28 = v33;
  (*(v35 + 32))(v33, v12, v36);
  (*(v18 + 32))(v2 + v26, v28, v3);
  return (*(v18 + 56))(v2 + v26, 0, 1, v3);
}