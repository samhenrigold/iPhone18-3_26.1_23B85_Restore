void *sub_2589A3340@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_2589A3358@<X0>(uint64_t *a1@<X8>)
{
  result = sub_258B02B14();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for TagLayout(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TagLayout(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_2589A33CC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2589A33F0(uint64_t a1, uint64_t a2)
{
  sub_2589BD038(0, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2589A348C(uint64_t a1, uint64_t a2)
{
  sub_2589BD038(0, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2589A3530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_2589BD414(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_2589BD414(0, &qword_27F96C7E8, type metadata accessor for IntroPhaseSpecs, MEMORY[0x277CDF468]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 32);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_2589A36B4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_2589BD414(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_2589BD414(0, &qword_27F96C7E8, type metadata accessor for IntroPhaseSpecs, MEMORY[0x277CDF468]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 32);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_2589A3898()
{
  sub_258B00E34();
  type metadata accessor for IntroPhaseSpecs(0);
  return sub_258B00D84();
}

uint64_t sub_2589A391C(uint64_t a1, uint64_t a2, int *a3)
{
  sub_2589C6760(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  sub_2589C6760(0, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  sub_2589C6760(0, &qword_27F96C978, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[7]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

void sub_2589A3B00(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_2589C6760(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    sub_2589C6760(0, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      sub_2589C6760(0, &qword_27F96C978, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
      if (*(*(v16 - 8) + 84) != a3)
      {
        *(a1 + a4[7]) = (a2 - 1);
        return;
      }

      v10 = v16;
      v14 = *(v16 - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  v11(v12, a2, a2, v10);
}

uint64_t sub_2589A3CE0()
{
  v1 = _s15EntryNoDataViewVMa(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = v0 + v3;
  sub_2589C6760(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_258B006A4();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  v6 = v4 + *(v1 + 20);
  sub_2589C6760(0, &qword_27F96CC08, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v48 = v0 + v3;
    v7 = sub_258B01504();
    v8 = *(v7 - 8);
    v9 = *(v8 + 48);
    if (!v9(v6, 1, v7))
    {
      (*(v8 + 8))(v6, v7);
    }

    v10 = type metadata accessor for StateOfMindTimeline.Styles(0);
    v11 = *(v10 + 20);
    v12 = sub_258B00AA4();
    v13 = *(*(v12 - 8) + 8);
    v14 = v6 + v11;
    v15 = v10;
    v13(v14, v12);
    v16 = *(v10 + 28);
    v17 = sub_258B006A4();
    v46 = *(*(v17 - 8) + 8);
    v47 = v17;
    v46(v6 + v16);
    v18 = v6 + v15[8];
    if (!v9(v18, 1, v7))
    {
      (*(v8 + 8))(v18, v7);
    }

    v19 = _s6StylesV8TimelineVMa(0);
    v13(v18 + *(v19 + 20), v12);
    v20 = v6 + v15[9];
    if (!v9(v20, 1, v7))
    {
      (*(v8 + 8))(v20, v7);
    }

    v21 = _s6StylesV6NoDataVMa(0);
    v13(v20 + *(v21 + 20), v12);
    v22 = v6 + v15[10];
    if (!v9(v22, 1, v7))
    {
      (*(v8 + 8))(v22, v7);
    }

    v23 = _s6StylesV11PlaceholderVMa(0);
    v13(v22 + *(v23 + 20), v12);
    v24 = v6 + v15[11];
    if (!v9(v24, 1, v7))
    {
      (*(v8 + 8))(v24, v7);
    }

    v25 = _s6StylesV6SymbolVMa(0);
    v13(v24 + *(v25 + 20), v12);
    v26 = v6 + v15[12];
    v49 = v15;
    if (!v9(v26, 1, v7))
    {
      (*(v8 + 8))(v26, v7);
    }

    v27 = v8;
    v28 = type metadata accessor for StateOfMindTimeline.Styles.Entry(0);
    v13(v26 + *(v28 + 20), v12);
    v29 = *(v28 + 28);
    v30 = v27;
    (v46)(v26 + v29, v47);
    v31 = v6 + v49[13];
    if (!v9(v31, 1, v7))
    {
      (*(v30 + 8))(v31, v7);
    }

    v32 = _s6StylesV5EmptyVMa(0);
    v13(v31 + *(v32 + 20), v12);
    v33 = v6 + v49[14];
    if (!v9(v33, 1, v7))
    {
      (*(v30 + 8))(v33, v7);
    }

    v34 = _s6StylesV5DailyVMa(0);
    v13(v33 + *(v34 + 20), v12);
    v35 = v6 + v49[15];
    if (!v9(v35, 1, v7))
    {
      (*(v30 + 8))(v35, v7);
    }

    v36 = _s6StylesV9MomentaryVMa(0);
    v13(v35 + *(v36 + 20), v12);
    v37 = v6 + v49[16];
    if (!v9(v37, 1, v7))
    {
      (*(v30 + 8))(v37, v7);
    }

    v38 = _s6StylesV6HeaderVMa(0);
    v13(v37 + *(v38 + 20), v12);
    v39 = v6 + v49[17];
    if (!v9(v39, 1, v7))
    {
      (*(v30 + 8))(v39, v7);
    }

    v40 = _s6StylesV11ChartButtonVMa(0);
    v13(v39 + *(v40 + 20), v12);
    v41 = v6 + v49[18];
    if (!v9(v41, 1, v7))
    {
      (*(v30 + 8))(v41, v7);
    }

    v42 = _s6StylesV15LogButtonFooterVMa(0);
    v13(v41 + *(v42 + 20), v12);
    v4 = v48;
  }

  else
  {
  }

  v43 = *(v1 + 24);
  sub_2589C6760(0, &qword_27F96C968, MEMORY[0x277CDD848], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v44 = sub_258B008A4();
    (*(*(v44 - 8) + 8))(v4 + v43, v44);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2589A44F0()
{

  return swift_deallocObject();
}

uint64_t sub_2589A459C(uint64_t a1, uint64_t a2, int *a3)
{
  sub_2589C9FC0(0, &qword_27F96CC80, MEMORY[0x277CDFAA0], MEMORY[0x277CDF468]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  sub_2589C9FC0(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  sub_2589C9FC0(0, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  sub_2589C9FC0(0, &qword_27F96CC88, _s9ViewModelOMa, MEMORY[0x277CE11F8]);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  v17 = *(a1 + a3[9]);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  return (v17 + 1);
}

void sub_2589A47F8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_2589C9FC0(0, &qword_27F96CC80, MEMORY[0x277CDFAA0], MEMORY[0x277CDF468]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    sub_2589C9FC0(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      sub_2589C9FC0(0, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[6];
      }

      else
      {
        sub_2589C9FC0(0, &qword_27F96CC88, _s9ViewModelOMa, MEMORY[0x277CE11F8]);
        if (*(*(v17 - 8) + 84) != a3)
        {
          *(a1 + a4[9]) = (a2 - 1);
          return;
        }

        v10 = v17;
        v14 = *(v17 - 8);
        v15 = a4[7];
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  v11(v12, a2, a2, v10);
}

uint64_t sub_2589A4A54(uint64_t a1, uint64_t a2)
{
  sub_2589D1A90(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2589A4AB8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_258B00DA4();
  *a1 = result;
  return result;
}

uint64_t sub_2589A4B20@<X0>(_BYTE *a1@<X8>)
{
  result = sub_258B00F14();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2589A4B88()
{
  v1 = v0;
  v2 = _s16TimelineDataViewVMa(0);
  v3 = *(*(v2 - 8) + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*(v2 - 8) + 64);
  v6 = type metadata accessor for StateOfMindTimeline.DaySummary(0);
  v7 = *(*(v6 - 8) + 80);
  v8 = v1 + v4;
  sub_2589C9FC0(0, &qword_27F96CFA8, MEMORY[0x277CDFAA0], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_258B00AC4();
    (*(*(v9 - 8) + 8))(v1 + v4, v9);
  }

  else
  {
  }

  v10 = v5 + v7;
  v65 = v2;
  v11 = *(v2 + 20);
  sub_2589C9FC0(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_258B006A4();
    (*(*(v12 - 8) + 8))(v8 + v11, v12);
  }

  else
  {
  }

  v13 = v4 + v10;
  v14 = v65;
  v15 = v8 + *(v65 + 24);
  sub_2589C9FC0(0, &qword_27F96CC08, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v60 = v13;
    v61 = v7;
    v62 = v6;
    v63 = v1;
    v16 = sub_258B01504();
    v17 = *(v16 - 8);
    v18 = *(v17 + 48);
    if (!v18(v15, 1, v16))
    {
      (*(v17 + 8))(v15, v16);
    }

    v19 = type metadata accessor for StateOfMindTimeline.Styles(0);
    v64 = v17;
    v20 = v19[5];
    v21 = sub_258B00AA4();
    v22 = *(*(v21 - 8) + 8);
    v22(v15 + v20, v21);
    v23 = v19[7];
    v24 = sub_258B006A4();
    v59 = *(*(v24 - 8) + 8);
    v59(v15 + v23, v24);
    v25 = v15 + v19[8];
    if (!v18(v25, 1, v16))
    {
      (*(v64 + 8))(v25, v16);
    }

    v26 = _s6StylesV8TimelineVMa(0);
    v22(v25 + *(v26 + 20), v21);
    v27 = v15 + v19[9];
    if (!v18(v27, 1, v16))
    {
      (*(v64 + 8))(v27, v16);
    }

    v28 = _s6StylesV6NoDataVMa(0);
    v22(v27 + *(v28 + 20), v21);
    v29 = v15 + v19[10];
    if (!v18(v29, 1, v16))
    {
      (*(v64 + 8))(v29, v16);
    }

    v30 = _s6StylesV11PlaceholderVMa(0);
    v22(v29 + *(v30 + 20), v21);
    v31 = v15 + v19[11];
    if (!v18(v31, 1, v16))
    {
      (*(v64 + 8))(v31, v16);
    }

    v32 = _s6StylesV6SymbolVMa(0);
    v22(v31 + *(v32 + 20), v21);
    v33 = v15 + v19[12];
    if (!v18(v33, 1, v16))
    {
      (*(v64 + 8))(v33, v16);
    }

    v34 = type metadata accessor for StateOfMindTimeline.Styles.Entry(0);
    v22(v33 + *(v34 + 20), v21);
    v59(v33 + *(v34 + 28), v24);
    v35 = v15 + v19[13];
    if (!v18(v35, 1, v16))
    {
      (*(v64 + 8))(v35, v16);
    }

    v36 = _s6StylesV5EmptyVMa(0);
    v22(v35 + *(v36 + 20), v21);
    v37 = v15 + v19[14];
    v7 = v61;
    if (!v18(v37, 1, v16))
    {
      (*(v64 + 8))(v37, v16);
    }

    v38 = _s6StylesV5DailyVMa(0);
    v22(v37 + *(v38 + 20), v21);
    v39 = v15 + v19[15];
    if (!v18(v39, 1, v16))
    {
      (*(v64 + 8))(v39, v16);
    }

    v40 = _s6StylesV9MomentaryVMa(0);
    v22(v39 + *(v40 + 20), v21);
    v41 = v15 + v19[16];
    if (!v18(v41, 1, v16))
    {
      (*(v64 + 8))(v41, v16);
    }

    v42 = _s6StylesV6HeaderVMa(0);
    v22(v41 + *(v42 + 20), v21);
    v43 = v15 + v19[17];
    if (!v18(v43, 1, v16))
    {
      (*(v64 + 8))(v43, v16);
    }

    v44 = v43 + *(_s6StylesV11ChartButtonVMa(0) + 20);
    v22(v44, v21);
    v45 = v15 + v19[18];
    if (!v18(v45, 1, v16))
    {
      (*(v64 + 8))(v45, v16);
    }

    v46 = _s6StylesV15LogButtonFooterVMa(0);
    v22(v45 + *(v46 + 20), v21);
    v1 = v63;
    v6 = v62;
    v14 = v65;
    v13 = v60;
  }

  else
  {
  }

  v47 = v13 & ~v7;
  v48 = v8 + *(v14 + 28);

  sub_2589C9FC0(0, &qword_27F96CC88, _s9ViewModelOMa, MEMORY[0x277CE11F8]);
  v50 = v48 + *(v49 + 32);
  _s9ViewModelOMa(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload >= 2)
  {
    if (EnumCaseMultiPayload != 2)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v52 = sub_258B029C4();
    (*(*(v52 - 8) + 8))(v50, v52);
    sub_2589D3788(0);
  }

LABEL_38:

  v53 = *(v6 + 20);
  v54 = sub_258B029C4();
  (*(*(v54 - 8) + 8))(v1 + v47 + v53, v54);

  v55 = v1 + v47 + *(v6 + 28);
  v56 = _s5EntryVMa(0);
  if (!(*(*(v56 - 8) + 48))(v55, 1, v56))
  {
    v57 = sub_258B000C4();
    (*(*(v57 - 8) + 8))(v55, v57);
  }

  return swift_deallocObject();
}

uint64_t sub_2589A568C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2589D6944(0, &qword_27F96D000, MEMORY[0x277CE02A8], MEMORY[0x277CDF468]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

void sub_2589A577C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2589D6944(0, &qword_27F96D000, MEMORY[0x277CE02A8], MEMORY[0x277CDF468]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }
}

uint64_t sub_2589A5874(uint64_t a1, uint64_t a2, int *a3)
{
  sub_2589DC5CC(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  sub_2589DC5CC(0, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = type metadata accessor for StateOfMindTimeline.DaySummary(0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = _s5EntryVMa(0);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  v17 = *(a1 + a3[8]);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  return (v17 + 1);
}

uint64_t sub_2589A5A70(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_2589DC5CC(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    sub_2589DC5CC(0, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = type metadata accessor for StateOfMindTimeline.DaySummary(0);
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[6];
      }

      else
      {
        result = _s5EntryVMa(0);
        if (*(*(result - 8) + 84) != a3)
        {
          *(a1 + a4[8]) = (a2 - 1);
          return result;
        }

        v10 = result;
        v14 = *(result - 8);
        v15 = a4[7];
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_2589A5C70()
{
  sub_2589DBBB4(255);
  sub_2589DC2F4(&qword_27F96D180, sub_2589DBBB4, sub_2589DBCD0, MEMORY[0x277CDFC60]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2589A5D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2589DE168(0, a2, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_2589A5D6C(void *a1)
{
  v1 = a1[1];
  sub_258B00B04();
  sub_258B00B04();
  sub_258B00B04();
  sub_258B00B04();
  v2 = MEMORY[0x277CDFC60];
  v8[12] = v1;
  v8[13] = MEMORY[0x277CDFC60];
  WitnessTable = swift_getWitnessTable();
  v4 = MEMORY[0x277CDF918];
  v8[10] = WitnessTable;
  v8[11] = MEMORY[0x277CDF918];
  v8[8] = swift_getWitnessTable();
  v8[9] = v4;
  v8[6] = swift_getWitnessTable();
  v8[7] = v2;
  swift_getWitnessTable();
  v5 = sub_258B021E4();
  sub_2589DE104(255, &qword_27F96D298, sub_2589DE168, MEMORY[0x277D83D88]);
  v8[0] = v5;
  v8[1] = v6;
  v8[2] = sub_258B024B4();
  v8[3] = swift_getWitnessTable();
  v8[4] = sub_2589DE538();
  v8[5] = MEMORY[0x277CE1320];
  type metadata accessor for ScrollableWithPinnedFooter(255, v8);
  return swift_getWitnessTable();
}

uint64_t sub_2589A5F48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_2589E16B0(0, &qword_27F96D2E8, type metadata accessor for CustomReminderModel, MEMORY[0x277CE10B8]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_2589A6028(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_2589E16B0(0, &qword_27F96D2E8, type metadata accessor for CustomReminderModel, MEMORY[0x277CE10B8]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_2589A6130(uint64_t a1, uint64_t a2)
{
  sub_2589E0A80(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2589A619C()
{

  return swift_deallocObject();
}

uint64_t sub_2589A61DC(uint64_t a1)
{
  sub_2589E2BC8(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2589A6260(uint64_t a1, uint64_t a2)
{
  sub_2589E36E4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2589A62CC(uint64_t a1, uint64_t a2)
{
  sub_2589E36E4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2589A6384(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  sub_2589EF00C(0, &qword_27F96C978, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[11];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  sub_2589EF00C(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[12];
    goto LABEL_9;
  }

  sub_2589EF00C(0, &qword_27F96C7E8, type metadata accessor for IntroPhaseSpecs, MEMORY[0x277CDF468]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = a1 + a3[13];

  return v16(v17, a2, v15);
}

uint64_t sub_2589A6580(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  sub_2589EF00C(0, &qword_27F96C978, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[11];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  sub_2589EF00C(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[12];
    goto LABEL_7;
  }

  sub_2589EF00C(0, &qword_27F96C7E8, type metadata accessor for IntroPhaseSpecs, MEMORY[0x277CDF468]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 56);
  v17 = v5 + a4[13];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_2589A6780@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x259C914A0]();
  *a1 = result;
  return result;
}

uint64_t sub_2589A6804()
{
  v1 = type metadata accessor for StateOfMindEntryView_iOS(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;

  v4 = v1[11];
  sub_2589EF00C(0, &qword_27F96C968, MEMORY[0x277CDD848], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_258B008A4();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  v6 = v1[12];
  sub_2589EF00C(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_258B006A4();
    (*(*(v7 - 8) + 8))(v3 + v6, v7);
  }

  else
  {
  }

  v8 = v3 + v1[13];
  sub_2589EF00C(0, &qword_27F96C940, type metadata accessor for IntroPhaseSpecs, MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_258B01504();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v8, 1, v9))
    {
      (*(v10 + 8))(v8, v9);
    }

    v11 = *(type metadata accessor for IntroPhaseSpecs(0) + 20);
    v12 = sub_258B00AA4();
    (*(*(v12 - 8) + 8))(v8 + v11, v12);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2589A6D00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2589F5748(0, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  sub_2589F5748(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = type metadata accessor for StateOfMindTimeline.DaySummary(0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_2589A6EA0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2589F5748(0, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  sub_2589F5748(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = type metadata accessor for StateOfMindTimeline.DaySummary(0);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_2589A704C()
{

  return swift_deallocObject();
}

uint64_t sub_2589A70A8(uint64_t a1, uint64_t a2)
{
  sub_2589F5990(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2589A7114(uint64_t a1, uint64_t a2)
{
  sub_2589F5990(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2589A71B8()
{
  v1 = sub_258B00084();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_2589A727C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2589F95C4(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    sub_2589F95C4(0, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24));
      if (v14 >= 2)
      {
        return ((v14 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

void sub_2589A73F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2589F95C4(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    sub_2589F95C4(0, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
    v14 = *(v13 - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 1;
      return;
    }

    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  v11(v12, a2, a2, v10);
}

uint64_t sub_2589A7564(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2589FA1A4(0, &qword_27F96C7E8, type metadata accessor for IntroPhaseSpecs, MEMORY[0x277CDF468]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

void sub_2589A7654(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2589FA1A4(0, &qword_27F96C7E8, type metadata accessor for IntroPhaseSpecs, MEMORY[0x277CDF468]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }
}

uint64_t sub_2589A7748()
{
  v1 = *(type metadata accessor for IntroPhase_iOS(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  sub_2589FA1A4(0, &qword_27F96C940, type metadata accessor for IntroPhaseSpecs, MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_258B01504();
    v4 = *(v3 - 8);
    if (!(*(v4 + 48))(v0 + v2, 1, v3))
    {
      (*(v4 + 8))(v0 + v2, v3);
    }

    v5 = *(type metadata accessor for IntroPhaseSpecs(0) + 20);
    v6 = sub_258B00AA4();
    (*(*(v6 - 8) + 8))(v0 + v2 + v5, v6);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2589A7984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2589FC328(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  sub_2589FC328(0, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

void sub_2589A7AF0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2589FC328(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    sub_2589FC328(0, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
    v14 = *(v13 - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return;
    }

    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  v11(v12, a2, a2, v10);
}

uint64_t sub_2589A7C64@<X0>(_BYTE *a1@<X8>)
{
  result = sub_258B00E54();
  *a1 = result;
  return result;
}

uint64_t sub_2589A7CBC(uint64_t a1, uint64_t a2)
{
  sub_2589FE24C(0, &qword_27F96C788, MEMORY[0x277CDF468]);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2589A7D44(uint64_t a1, uint64_t a2)
{
  sub_2589FE24C(0, &qword_27F96C788, MEMORY[0x277CDF468]);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2589A7DD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_2589FF830(0, &qword_27F96D290, type metadata accessor for AssociationSelectionPhaseSpecs, MEMORY[0x277CDF468]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_2589FF830(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 36);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_2589A7F54(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_2589FF830(0, &qword_27F96D290, type metadata accessor for AssociationSelectionPhaseSpecs, MEMORY[0x277CDF468]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_2589FF830(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 36);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_2589A8104(uint64_t *a1)
{
  sub_258A023F4(255, &qword_27F96DC68, sub_258A023A0, &_s21UnlimitedHeightVStackVN, MEMORY[0x277CDF4F8]);
  sub_258B00B04();
  sub_258A023F4(255, &qword_27F96DC78, sub_2589D2E7C, MEMORY[0x277D85048], MEMORY[0x277CE06A0]);
  sub_258B00B04();
  sub_258A0245C(&qword_27F96DC80, MEMORY[0x277CDF500]);
  sub_258B00974();
  sub_258B00B04();
  sub_258A023F4(255, &qword_27F96DC88, sub_2589E0E14, MEMORY[0x277CE14A8], MEMORY[0x277CDF4E0]);
  sub_258B00B04();
  sub_258B030C4();
  swift_getWitnessTable();
  sub_258B00CA4();
  sub_258B00B04();
  sub_258A0245C(&qword_27F96DC90, MEMORY[0x277CDF510]);
  swift_getWitnessTable();
  sub_258A024D8();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_258A02568();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2589A8428(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_258A04844(0, &qword_27F96DCA8, type metadata accessor for NotificationsSetupPhaseSpecs, MEMORY[0x277CDF468]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_258A04844(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 28);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_2589A85AC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_258A04844(0, &qword_27F96DCA8, type metadata accessor for NotificationsSetupPhaseSpecs, MEMORY[0x277CDF468]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_258A04844(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 28);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_2589A87F4(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  sub_258A07268(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  sub_258A07268(0, &qword_27F96C978, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_11;
  }

  sub_258A07268(0, &qword_27F96DEF8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[7];
    goto LABEL_11;
  }

  sub_258A07268(0, &qword_27F96DF00, sub_258A07454, MEMORY[0x277CDF468]);
  v16 = v15;
  v17 = *(*(v15 - 8) + 48);
  v18 = a1 + a3[8];

  return v17(v18, a2, v16);
}

uint64_t sub_2589A8A68(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  sub_258A07268(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  sub_258A07268(0, &qword_27F96C978, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_9;
  }

  sub_258A07268(0, &qword_27F96DEF8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[7];
    goto LABEL_9;
  }

  sub_258A07268(0, &qword_27F96DF00, sub_258A07454, MEMORY[0x277CDF468]);
  v16 = v15;
  v17 = *(*(v15 - 8) + 56);
  v18 = v5 + a4[8];

  return v17(v18, a2, a2, v16);
}

uint64_t sub_2589A8D24()
{
  v1 = type metadata accessor for AssessmentRiskInformationalView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v1[5];
  sub_258A07268(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_258B006A4();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = v1[6];
  sub_258A07268(0, &qword_27F96C968, MEMORY[0x277CDD848], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_258B008A4();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  v7 = v1[7];
  sub_258A07268(0, &qword_27F96DE40, MEMORY[0x277CDFA28], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_258B00AA4();
    (*(*(v8 - 8) + 8))(v2 + v7, v8);
  }

  else
  {
  }

  v9 = v1[8];
  sub_258A07268(0, &qword_27F96DE48, sub_258A07454, MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_258B01504();
    v11 = *(v10 - 8);
    if (!(*(v11 + 48))(v2 + v9, 1, v10))
    {
      (*(v11 + 8))(v2 + v9, v10);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2589A9124(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_258A09E48(0, &qword_27F96DCA8, type metadata accessor for NotificationsSetupPhaseSpecs, MEMORY[0x277CDF468]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_2589A9204(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_258A09E48(0, &qword_27F96DCA8, type metadata accessor for NotificationsSetupPhaseSpecs, MEMORY[0x277CDF468]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 28);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_2589A92E4(uint64_t a1, uint64_t a2)
{
  sub_258A0A134(0, &qword_27F96E000, sub_258A09F78, MEMORY[0x277CDE470]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2589A9378(uint64_t a1)
{
  sub_258A0A134(0, &qword_27F96E000, sub_258A09F78, MEMORY[0x277CDE470]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2589A940C()
{

  return swift_deallocObject();
}

uint64_t sub_2589A9494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_258A0B99C(0, &qword_27F96D290, type metadata accessor for AssociationSelectionPhaseSpecs, MEMORY[0x277CDF468]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 52);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_2589A9574(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_258A0B99C(0, &qword_27F96D290, type metadata accessor for AssociationSelectionPhaseSpecs, MEMORY[0x277CDF468]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 52);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_2589A969C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_258A0E334(0, &qword_27F96CC80, MEMORY[0x277CDFAA0], MEMORY[0x277CDF468]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_258A0E334(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 24);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_2589A9820(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_258A0E334(0, &qword_27F96CC80, MEMORY[0x277CDFAA0], MEMORY[0x277CDF468]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_258A0E334(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 24);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_2589A99A4()
{
  v1 = sub_258B015B4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for ValenceSliderStyle(0);
  v6 = (v3 + v4 + *(*(v5 - 8) + 80)) & ~*(*(v5 - 8) + 80);
  (*(v2 + 8))(v0 + v3, v1);
  v7 = v0 + v6;

  v8 = *(v5 + 20);
  sub_258A0E334(0, &qword_27F96CFA8, MEMORY[0x277CDFAA0], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_258B00AC4();
    (*(*(v9 - 8) + 8))(v7 + v8, v9);
  }

  else
  {
  }

  v10 = *(v5 + 24);
  sub_258A0E334(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_258B006A4();
    (*(*(v11 - 8) + 8))(v7 + v10, v11);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2589A9C08()
{
  v1 = type metadata accessor for ValenceSliderStyle(0);
  v2 = *(*(v1 - 8) + 80);
  v17 = *(*(v1 - 8) + 64);
  v18 = sub_258B008E4();
  v3 = *(v18 - 8);
  v4 = *(v3 + 80);
  v16 = *(v3 + 64);
  v5 = sub_258B015B4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = v0 + ((v2 + 16) & ~v2);

  v9 = *(v1 + 20);
  sub_258A0E334(0, &qword_27F96CFA8, MEMORY[0x277CDFAA0], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_258B00AC4();
    (*(*(v10 - 8) + 8))(v8 + v9, v10);
  }

  else
  {
  }

  v11 = *(v1 + 24);
  sub_258A0E334(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_258B006A4();
    (*(*(v12 - 8) + 8))(v8 + v11, v12);
  }

  else
  {
  }

  v13 = (((v2 + 16) & ~v2) + v17 + v4) & ~v4;
  v14 = (v13 + v16 + v7) & ~v7;
  (*(v3 + 8))(v0 + v13, v18);
  (*(v6 + 8))(v0 + v14, v5);

  return swift_deallocObject();
}

uint64_t sub_2589A9F54()
{
  MEMORY[0x259C946A0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2589A9F8C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2589A9FCC()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_2589AA004(uint64_t *a1)
{
  sub_258B017D4();
  sub_258B00B04();
  sub_258A10704(&qword_280DF8950, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
  return swift_getWitnessTable();
}

uint64_t sub_2589AA0A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_258A11A34(0, &qword_27F96E3D8, type metadata accessor for ValenceSelectionPhaseSpecs, MEMORY[0x277CDF468]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_2589AA180(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_258A11A34(0, &qword_27F96E3D8, type metadata accessor for ValenceSelectionPhaseSpecs, MEMORY[0x277CDF468]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 24);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_2589AA264(uint64_t a1, uint64_t a2)
{
  sub_258A11534(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2589AA2C8(uint64_t a1, uint64_t a2)
{
  sub_258A11778(0, &qword_27F96E408, sub_258A11534, MEMORY[0x277CDF928]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2589AA354(uint64_t a1, uint64_t a2)
{
  sub_258A11778(0, &qword_27F96E408, sub_258A11534, MEMORY[0x277CDF928]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2589AA424(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_258A153EC(0, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = _s5EntryVMa(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_2589AA560(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_258A153EC(0, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = _s5EntryVMa(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_2589AA69C()
{
  sub_258A14ED4(255);
  sub_258A15BF0(&qword_27F96E598, sub_258A14ED4, sub_258A15C60, MEMORY[0x277CE0FB0]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2589AAB00(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_258B00084();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  sub_258A1DF54(0);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[7] + 8);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  v14 = v13 - 1;
  if (v14 < 0)
  {
    v14 = -1;
  }

  return (v14 + 1);
}

void sub_2589AAC18(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_258B00084();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    sub_258A1DF54(0);
    if (*(*(v12 - 8) + 84) != a3)
    {
      *(a1 + a4[7] + 8) = a2;
      return;
    }

    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
  }

  v13 = *(v10 + 56);

  v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_2589AAD44(void *a1)
{
  sub_258B00B04();
  sub_258B00B04();
  sub_258B00B04();
  sub_258B00B04();
  sub_258B00B04();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_2589AAE7C(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  sub_258A296F8(0, &qword_27F96D2E8, type metadata accessor for CustomReminderModel, MEMORY[0x277CE10B8]);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  sub_258A296F8(0, &qword_27F96E968, MEMORY[0x277CC9578], MEMORY[0x277CE10B8]);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  sub_258A296F8(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = a1 + a3[8];

  return v16(v17, a2, v15);
}

uint64_t sub_2589AB078(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  sub_258A296F8(0, &qword_27F96D2E8, type metadata accessor for CustomReminderModel, MEMORY[0x277CE10B8]);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  sub_258A296F8(0, &qword_27F96E968, MEMORY[0x277CC9578], MEMORY[0x277CE10B8]);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  sub_258A296F8(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 56);
  v17 = v5 + a4[8];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_2589AB2C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 16);
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_258A2A608(0, &qword_27F96EA28, MEMORY[0x277CC8990], MEMORY[0x277D83D88]);
    v11 = v10;
    v12 = *(*(v10 - 8) + 48);
    v13 = a1 + *(a3 + 32);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_2589AB3A8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 16) = a2 + 1;
  }

  else
  {
    sub_258A2A608(0, &qword_27F96EA28, MEMORY[0x277CC8990], MEMORY[0x277D83D88]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 32);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_2589AB478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_258A07454(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_258B00AA4();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_2589AB568(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_258A07454(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_258B00AA4();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_2589AB664(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_258B029C4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[6] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    sub_258A2C484(0, &qword_27F96D908, MEMORY[0x277D83D88]);
    v14 = v13;
    v15 = *(*(v13 - 8) + 48);
    v16 = a1 + a3[7];

    return v15(v16, a2, v14);
  }
}

uint64_t sub_2589AB7AC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_258B029C4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 8) = (a2 - 1);
  }

  else
  {
    sub_258A2C484(0, &qword_27F96D908, MEMORY[0x277D83D88]);
    v14 = v13;
    v15 = *(*(v13 - 8) + 56);
    v16 = a1 + a4[7];

    return v15(v16, a2, a2, v14);
  }

  return result;
}

CGColorRef sub_2589AB8FC@<X0>(CGColorRef *a1@<X8>)
{
  result = CGColorCreateGenericRGB(0.0, 0.0, 0.0, 1.0);
  *a1 = result;
  return result;
}

CGColorRef sub_2589AB934@<X0>(CGColorRef *a1@<X8>)
{
  result = sub_258A82FA8();
  *a1 = result;
  return result;
}

uint64_t sub_2589AB970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_258A2E7D8(0, &qword_27F96EA60, MEMORY[0x277CC9578], MEMORY[0x277CE11F8]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_258A2E7D8(0, &qword_27F96EB00, type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs, MEMORY[0x277CDF468]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 36);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_2589ABAF4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_258A2E7D8(0, &qword_27F96EA60, MEMORY[0x277CC9578], MEMORY[0x277CE11F8]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_258A2E7D8(0, &qword_27F96EB00, type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs, MEMORY[0x277CDF468]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 36);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_2589ABC90()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_2589ABCC8()
{
  MEMORY[0x259C946A0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2589ABD00()
{
  v1 = sub_258AFFBC4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_2589ABDEC()
{
  v1 = sub_258AFFBC4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_2589ABF00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_258A32370(0, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

void sub_2589ABFEC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_258A32370(0, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }
}

uint64_t sub_2589AC0D4()
{
  v1 = *(*(_s20EntryMomentsDataViewVMa(0) - 8) + 80);
  v2 = (v1 + 16) & ~v1;
  v3 = v0 + v2;
  sub_258A32370(0, &qword_27F96CC08, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_258B01504();
    v5 = *(v4 - 8);
    v6 = *(v5 + 48);
    if (!v6(v0 + v2, 1, v4))
    {
      (*(v5 + 8))(v0 + v2, v4);
    }

    v7 = type metadata accessor for StateOfMindTimeline.Styles(0);
    v8 = *(v7 + 20);
    v9 = sub_258B00AA4();
    v10 = *(*(v9 - 8) + 8);
    v11 = v3 + v8;
    v12 = v7;
    v10(v11, v9);
    v13 = *(v7 + 28);
    v14 = sub_258B006A4();
    v42 = *(*(v14 - 8) + 8);
    v43 = v14;
    v42(v3 + v13);
    v15 = v3 + v12[8];
    if (!v6(v15, 1, v4))
    {
      (*(v5 + 8))(v15, v4);
    }

    v16 = _s6StylesV8TimelineVMa(0);
    v10(v15 + *(v16 + 20), v9);
    v17 = v3 + v12[9];
    if (!v6(v17, 1, v4))
    {
      (*(v5 + 8))(v17, v4);
    }

    v18 = _s6StylesV6NoDataVMa(0);
    v10(v17 + *(v18 + 20), v9);
    v19 = v3 + v12[10];
    if (!v6(v19, 1, v4))
    {
      (*(v5 + 8))(v19, v4);
    }

    v20 = _s6StylesV11PlaceholderVMa(0);
    v10(v19 + *(v20 + 20), v9);
    v21 = v3 + v12[11];
    if (!v6(v21, 1, v4))
    {
      (*(v5 + 8))(v21, v4);
    }

    v22 = _s6StylesV6SymbolVMa(0);
    v10(v21 + *(v22 + 20), v9);
    v23 = v3 + v12[12];
    v44 = v12;
    if (!v6(v23, 1, v4))
    {
      (*(v5 + 8))(v23, v4);
    }

    v24 = v5;
    v25 = type metadata accessor for StateOfMindTimeline.Styles.Entry(0);
    v10(v23 + *(v25 + 20), v9);
    v26 = *(v25 + 28);
    v27 = v24;
    (v42)(v23 + v26, v43);
    v28 = v3 + v44[13];
    if (!v6(v28, 1, v4))
    {
      (*(v27 + 8))(v28, v4);
    }

    v29 = _s6StylesV5EmptyVMa(0);
    v10(v28 + *(v29 + 20), v9);
    v30 = v3 + v44[14];
    v31 = v9;
    if (!v6(v30, 1, v4))
    {
      (*(v27 + 8))(v30, v4);
    }

    v32 = _s6StylesV5DailyVMa(0);
    v10(v30 + *(v32 + 20), v9);
    v33 = v3 + v44[15];
    if (!v6(v33, 1, v4))
    {
      (*(v27 + 8))(v33, v4);
    }

    v34 = _s6StylesV9MomentaryVMa(0);
    v10(v33 + *(v34 + 20), v9);
    v35 = v3 + v44[16];
    if (!v6(v35, 1, v4))
    {
      (*(v27 + 8))(v35, v4);
    }

    v36 = _s6StylesV6HeaderVMa(0);
    v10(v35 + *(v36 + 20), v9);
    v37 = v3 + v44[17];
    if (!v6(v37, 1, v4))
    {
      (*(v27 + 8))(v37, v4);
    }

    v38 = _s6StylesV11ChartButtonVMa(0);
    v10(v37 + *(v38 + 20), v9);
    v39 = v3 + v44[18];
    if (!v6(v39, 1, v4))
    {
      (*(v27 + 8))(v39, v4);
    }

    v40 = _s6StylesV15LogButtonFooterVMa(0);
    v10(v39 + *(v40 + 20), v31);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2589AC7EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_258A32648(0, &qword_27F96E3D8, type metadata accessor for ValenceSelectionPhaseSpecs, MEMORY[0x277CDF468]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    sub_258A32648(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24));
      if (v14 >= 2)
      {
        return ((v14 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

void sub_2589AC968(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_258A32648(0, &qword_27F96E3D8, type metadata accessor for ValenceSelectionPhaseSpecs, MEMORY[0x277CDF468]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    sub_258A32648(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
    v14 = *(v13 - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 1;
      return;
    }

    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  v11(v12, a2, a2, v10);
}

uint64_t sub_2589ACB38()
{

  return swift_deallocObject();
}

uint64_t sub_2589ACB7C()
{
  sub_258A364B4(255);
  sub_258A36214(255);
  sub_258B013D4();
  sub_258A36588(&qword_27F96EDC8, sub_258A36214, MEMORY[0x277CDE5A0]);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_2589BFF58(OpaqueTypeConformance2, v1, v2);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2589ACC68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_258A37D9C(0, &qword_27F96C7E8, type metadata accessor for IntroPhaseSpecs, MEMORY[0x277CDF468]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_2589ACD48(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_258A37D9C(0, &qword_27F96C7E8, type metadata accessor for IntroPhaseSpecs, MEMORY[0x277CDF468]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 24);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_2589ACE70(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_258A3B278(0, &qword_27F96DEF8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 60);

    return v10(v11, a2, v9);
  }
}

void *sub_2589ACF50(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_258A3B278(0, &qword_27F96DEF8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 60);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_2589AD024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (type metadata accessor for TagPicker(0, *(v4 + 16), *(v4 + 24), a4) - 8);
  v6 = v4 + ((*(*v5 + 80) + 32) & ~*(*v5 + 80));

  v7 = v5[17];
  sub_258A3B278(0, &qword_27F96DE40, MEMORY[0x277CDFA28], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_258B00AA4();
    (*(*(v8 - 8) + 8))(v6 + v7, v8);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2589AD190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = (type metadata accessor for TagPicker(0, v5, *(v4 + 24), a4) - 8);
  v7 = *(*v6 + 64);
  v8 = (*(*v6 + 80) + 32) & ~*(*v6 + 80);
  v9 = *(v5 - 8);
  v10 = *(v9 + 80);

  v11 = v6[17];
  sub_258A3B278(0, &qword_27F96DE40, MEMORY[0x277CDFA28], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_258B00AA4();
    (*(*(v12 - 8) + 8))(v4 + v8 + v11, v12);
  }

  else
  {
  }

  (*(v9 + 8))(v4 + ((v8 + v7 + v10) & ~v10), v5);

  return swift_deallocObject();
}

uint64_t sub_2589AD380(uint64_t a1)
{
  sub_258A3A750(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2589AD3EC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_258A3A6A0(255, a2, a3);
  sub_258B02CD4();
  sub_258A3A8CC(255, &qword_27F96EF30, sub_258A3A750, MEMORY[0x277CDE470]);
  swift_getWitnessTable();
  sub_258B023D4();
  sub_258A3AB10(&qword_27F96EFA8, sub_258A3A6A0, MEMORY[0x277CDF500]);
  sub_258B00974();
  sub_258A3AB10(&qword_27F96EFB0, sub_258A3A6A0, MEMORY[0x277CDF510]);
  sub_258A3AE3C();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_2589AD578(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_258A3C6EC(0, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

void sub_2589AD668(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_258A3C6EC(0, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }
}

uint64_t sub_2589AD754()
{
  v1 = *(*(_s15LogButtonFooterVMa(0) - 8) + 80);
  v2 = v0 + ((v1 + 16) & ~v1);
  sub_258A3C6EC(0, &qword_27F96CC08, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_258B01504();
    v4 = *(v3 - 8);
    v5 = *(v4 + 48);
    if (!v5(v2, 1, v3))
    {
      (*(v4 + 8))(v2, v3);
    }

    v6 = type metadata accessor for StateOfMindTimeline.Styles(0);
    v7 = *(v6 + 20);
    v8 = sub_258B00AA4();
    v9 = *(*(v8 - 8) + 8);
    v10 = v2 + v7;
    v11 = v6;
    v9(v10, v8);
    v12 = *(v6 + 28);
    v13 = sub_258B006A4();
    v41 = *(*(v13 - 8) + 8);
    v42 = v13;
    v41(v2 + v12);
    v14 = v2 + v11[8];
    if (!v5(v14, 1, v3))
    {
      (*(v4 + 8))(v14, v3);
    }

    v15 = _s6StylesV8TimelineVMa(0);
    v9(v14 + *(v15 + 20), v8);
    v16 = v2 + v11[9];
    if (!v5(v16, 1, v3))
    {
      (*(v4 + 8))(v16, v3);
    }

    v17 = _s6StylesV6NoDataVMa(0);
    v9(v16 + *(v17 + 20), v8);
    v18 = v2 + v11[10];
    if (!v5(v18, 1, v3))
    {
      (*(v4 + 8))(v18, v3);
    }

    v19 = _s6StylesV11PlaceholderVMa(0);
    v9(v18 + *(v19 + 20), v8);
    v20 = v2 + v11[11];
    if (!v5(v20, 1, v3))
    {
      (*(v4 + 8))(v20, v3);
    }

    v21 = _s6StylesV6SymbolVMa(0);
    v9(v20 + *(v21 + 20), v8);
    v22 = v2 + v11[12];
    v43 = v11;
    if (!v5(v22, 1, v3))
    {
      (*(v4 + 8))(v22, v3);
    }

    v23 = v4;
    v24 = type metadata accessor for StateOfMindTimeline.Styles.Entry(0);
    v9(v22 + *(v24 + 20), v8);
    v25 = *(v24 + 28);
    v26 = v23;
    (v41)(v22 + v25, v42);
    v27 = v2 + v43[13];
    if (!v5(v27, 1, v3))
    {
      (*(v26 + 8))(v27, v3);
    }

    v28 = _s6StylesV5EmptyVMa(0);
    v9(v27 + *(v28 + 20), v8);
    v29 = v2 + v43[14];
    v30 = v8;
    if (!v5(v29, 1, v3))
    {
      (*(v26 + 8))(v29, v3);
    }

    v31 = _s6StylesV5DailyVMa(0);
    v9(v29 + *(v31 + 20), v8);
    v32 = v2 + v43[15];
    if (!v5(v32, 1, v3))
    {
      (*(v26 + 8))(v32, v3);
    }

    v33 = _s6StylesV9MomentaryVMa(0);
    v9(v32 + *(v33 + 20), v8);
    v34 = v2 + v43[16];
    if (!v5(v34, 1, v3))
    {
      (*(v26 + 8))(v34, v3);
    }

    v35 = _s6StylesV6HeaderVMa(0);
    v9(v34 + *(v35 + 20), v8);
    v36 = v2 + v43[17];
    if (!v5(v36, 1, v3))
    {
      (*(v26 + 8))(v36, v3);
    }

    v37 = _s6StylesV11ChartButtonVMa(0);
    v9(v36 + *(v37 + 20), v8);
    v38 = v2 + v43[18];
    if (!v5(v38, 1, v3))
    {
      (*(v26 + 8))(v38, v3);
    }

    v39 = _s6StylesV15LogButtonFooterVMa(0);
    v9(v38 + *(v39 + 20), v30);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2589ADEE8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_258B00F54();
  *a1 = result;
  return result;
}

uint64_t sub_2589ADF40(uint64_t a1, uint64_t a2)
{
  sub_258A3C7C8(0, &qword_27F96F040, sub_258A3C7A0, MEMORY[0x277CDF928]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2589ADFCC(uint64_t a1, uint64_t a2, int *a3)
{
  sub_258A3F24C(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  sub_258A427D4(0, &qword_27F96EA60, MEMORY[0x277CC9578], MEMORY[0x277CE11F8]);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_11:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_12;
  }

  sub_258A427D4(0, &qword_27F96E968, MEMORY[0x277CC9578], MEMORY[0x277CE10B8]);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_11;
  }

  sub_258A427D4(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_11;
  }

  sub_258A427D4(0, &qword_27F96C978, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_11;
  }

  sub_258A427D4(0, &qword_27F96EB00, type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs, MEMORY[0x277CDF468]);
  v19 = v18;
  v20 = *(*(v18 - 8) + 48);
  v21 = a1 + a3[9];

  return v20(v21, a2, v19);
}

uint64_t sub_2589AE2D4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_258A3F24C(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_12:

    return v11(v12, a2, a2, v10);
  }

  sub_258A427D4(0, &qword_27F96EA60, MEMORY[0x277CC9578], MEMORY[0x277CE11F8]);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_11:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_12;
  }

  sub_258A427D4(0, &qword_27F96E968, MEMORY[0x277CC9578], MEMORY[0x277CE10B8]);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_11;
  }

  sub_258A427D4(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_11;
  }

  sub_258A427D4(0, &qword_27F96C978, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_11;
  }

  sub_258A427D4(0, &qword_27F96EB00, type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs, MEMORY[0x277CDF468]);
  v21 = v20;
  v22 = *(*(v20 - 8) + 56);
  v23 = a1 + a4[9];

  return v22(v23, a2, a2, v21);
}

uint64_t sub_2589AE5FC()
{

  return swift_deallocObject();
}

uint64_t sub_2589AE634()
{
  sub_258A434AC(255);
  sub_258A432C0(255);
  sub_258B013D4();
  sub_258A43898(&qword_27F96F1F0, sub_258A432C0, MEMORY[0x277CDE5A0]);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_2589BFF58(OpaqueTypeConformance2, v1, v2);
  return swift_getOpaqueTypeConformance2();
}

void *sub_2589AE720@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_258A43A20(a2, a3, a4);
  result = sub_258B00F94();
  *a1 = v6;
  return result;
}

uint64_t sub_2589AE7BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_258A07454(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_258B00AA4();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_2589AE8AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_258A07454(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_258B00AA4();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_2589AE9A8(uint64_t a1, uint64_t a2, int *a3)
{
  sub_258A07454(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_6:

    return v9(v10, a2, v8);
  }

  v11 = sub_258B00AA4();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_5:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_6;
  }

  if (a2 == 254)
  {
    v15 = *(a1 + a3[6]);
    if (v15 >= 2)
    {
      return v15 - 1;
    }

    else
    {
      return 0;
    }
  }

  v16 = sub_258B006A4();
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[7];
    goto LABEL_5;
  }

  v17 = _s6StylesV8TimelineVMa(0);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[8];
    goto LABEL_5;
  }

  v18 = _s6StylesV6NoDataVMa(0);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[9];
    goto LABEL_5;
  }

  v19 = _s6StylesV11PlaceholderVMa(0);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v8 = v19;
    v12 = *(v19 - 8);
    v13 = a3[10];
    goto LABEL_5;
  }

  v20 = _s6StylesV6SymbolVMa(0);
  if (*(*(v20 - 8) + 84) == a2)
  {
    v8 = v20;
    v12 = *(v20 - 8);
    v13 = a3[11];
    goto LABEL_5;
  }

  v21 = type metadata accessor for StateOfMindTimeline.Styles.Entry(0);
  if (*(*(v21 - 8) + 84) == a2)
  {
    v8 = v21;
    v12 = *(v21 - 8);
    v13 = a3[12];
    goto LABEL_5;
  }

  v22 = _s6StylesV5EmptyVMa(0);
  if (*(*(v22 - 8) + 84) == a2)
  {
    v8 = v22;
    v12 = *(v22 - 8);
    v13 = a3[13];
    goto LABEL_5;
  }

  v23 = _s6StylesV5DailyVMa(0);
  if (*(*(v23 - 8) + 84) == a2)
  {
    v8 = v23;
    v12 = *(v23 - 8);
    v13 = a3[14];
    goto LABEL_5;
  }

  v24 = _s6StylesV9MomentaryVMa(0);
  if (*(*(v24 - 8) + 84) == a2)
  {
    v8 = v24;
    v12 = *(v24 - 8);
    v13 = a3[15];
    goto LABEL_5;
  }

  v25 = _s6StylesV6HeaderVMa(0);
  if (*(*(v25 - 8) + 84) == a2)
  {
    v8 = v25;
    v12 = *(v25 - 8);
    v13 = a3[16];
    goto LABEL_5;
  }

  v26 = _s6StylesV11ChartButtonVMa(0);
  if (*(*(v26 - 8) + 84) == a2)
  {
    v8 = v26;
    v12 = *(v26 - 8);
    v13 = a3[17];
    goto LABEL_5;
  }

  v27 = _s6StylesV15LogButtonFooterVMa(0);
  v28 = *(*(v27 - 8) + 48);
  v29 = a1 + a3[18];

  return v28(v29, a2, v27);
}

uint64_t sub_2589AEE2C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_258A07454(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_6:

    return v11(v12, a2, a2, v10);
  }

  result = sub_258B00AA4();
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[5];
LABEL_5:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_6;
  }

  if (a3 == 254)
  {
    *(a1 + a4[6]) = a2 + 1;
    return result;
  }

  v16 = sub_258B006A4();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[7];
    goto LABEL_5;
  }

  v17 = _s6StylesV8TimelineVMa(0);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[8];
    goto LABEL_5;
  }

  v18 = _s6StylesV6NoDataVMa(0);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[9];
    goto LABEL_5;
  }

  v19 = _s6StylesV11PlaceholderVMa(0);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[10];
    goto LABEL_5;
  }

  v20 = _s6StylesV6SymbolVMa(0);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[11];
    goto LABEL_5;
  }

  v21 = type metadata accessor for StateOfMindTimeline.Styles.Entry(0);
  if (*(*(v21 - 8) + 84) == a3)
  {
    v10 = v21;
    v14 = *(v21 - 8);
    v15 = a4[12];
    goto LABEL_5;
  }

  v22 = _s6StylesV5EmptyVMa(0);
  if (*(*(v22 - 8) + 84) == a3)
  {
    v10 = v22;
    v14 = *(v22 - 8);
    v15 = a4[13];
    goto LABEL_5;
  }

  v23 = _s6StylesV5DailyVMa(0);
  if (*(*(v23 - 8) + 84) == a3)
  {
    v10 = v23;
    v14 = *(v23 - 8);
    v15 = a4[14];
    goto LABEL_5;
  }

  v24 = _s6StylesV9MomentaryVMa(0);
  if (*(*(v24 - 8) + 84) == a3)
  {
    v10 = v24;
    v14 = *(v24 - 8);
    v15 = a4[15];
    goto LABEL_5;
  }

  v25 = _s6StylesV6HeaderVMa(0);
  if (*(*(v25 - 8) + 84) == a3)
  {
    v10 = v25;
    v14 = *(v25 - 8);
    v15 = a4[16];
    goto LABEL_5;
  }

  v26 = _s6StylesV11ChartButtonVMa(0);
  if (*(*(v26 - 8) + 84) == a3)
  {
    v10 = v26;
    v14 = *(v26 - 8);
    v15 = a4[17];
    goto LABEL_5;
  }

  v27 = _s6StylesV15LogButtonFooterVMa(0);
  v28 = *(*(v27 - 8) + 56);
  v29 = a1 + a4[18];

  return v28(v29, a2, a2, v27);
}

uint64_t sub_2589AF2B4(uint64_t a1, uint64_t a2, int *a3)
{
  sub_258A07454(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_258B00AA4();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 254)
  {
    v14 = *(a1 + a3[6]);
    if (v14 >= 2)
    {
      return v14 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v15 = sub_258B006A4();
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[7];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_2589AF420(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_258A07454(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = sub_258B00AA4();
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 254)
  {
    *(a1 + a4[6]) = a2 + 1;
  }

  else
  {
    v15 = sub_258B006A4();
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[7];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_2589AF5E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_258A4597C(0, &qword_27F96D290, type metadata accessor for AssociationSelectionPhaseSpecs, MEMORY[0x277CDF468]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 36);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_2589AF6C8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_258A4597C(0, &qword_27F96D290, type metadata accessor for AssociationSelectionPhaseSpecs, MEMORY[0x277CDF468]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 36);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_2589AF7F0(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  sub_258A48A8C(0, &qword_27F96F338, MEMORY[0x277CC99E8], MEMORY[0x277CDF468]);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[8];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  sub_258A48A8C(0, &qword_27F96EB00, type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs, MEMORY[0x277CDF468]);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_11;
  }

  sub_258A48A8C(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[10];
    goto LABEL_11;
  }

  sub_258A48A8C(0, &qword_27F96E968, MEMORY[0x277CC9578], MEMORY[0x277CE10B8]);
  v16 = v15;
  v17 = *(*(v15 - 8) + 48);
  v18 = a1 + a3[12];

  return v17(v18, a2, v16);
}

uint64_t sub_2589AFA64(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  sub_258A48A8C(0, &qword_27F96F338, MEMORY[0x277CC99E8], MEMORY[0x277CDF468]);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[8];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  sub_258A48A8C(0, &qword_27F96EB00, type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs, MEMORY[0x277CDF468]);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_9;
  }

  sub_258A48A8C(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[10];
    goto LABEL_9;
  }

  sub_258A48A8C(0, &qword_27F96E968, MEMORY[0x277CC9578], MEMORY[0x277CE10B8]);
  v16 = v15;
  v17 = *(*(v15 - 8) + 56);
  v18 = v5 + a4[12];

  return v17(v18, a2, a2, v16);
}

uint64_t sub_2589AFD38(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_258A4D9EC(255, a2, a3);
  sub_258B00B04();
  sub_258A024D8();
  swift_getWitnessTable();
  sub_258B00664();
  sub_258A4DACC(255, &qword_27F96F4A8, MEMORY[0x277D837D0], MEMORY[0x277D837E0], MEMORY[0x277CDE2C8]);
  sub_258B00B04();
  sub_258B00B04();
  swift_getOpaqueTypeMetadata2();
  sub_258B030C4();
  swift_getWitnessTable();
  sub_258A4DA48();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_258A4DACC(255, &qword_27F96F4B8, MEMORY[0x277CDF6A8], MEMORY[0x277CDF6A0], MEMORY[0x277CE0718]);
  sub_258B00B04();
  sub_258B030C4();
  sub_258A4DB20();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_258B010F4();
  sub_258B00B04();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_258B00B04();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

uint64_t sub_2589B00F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_258A4EA5C(0, &qword_27F96E3D8, type metadata accessor for ValenceSelectionPhaseSpecs, MEMORY[0x277CDF468]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_2589B01D0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_258A4EA5C(0, &qword_27F96E3D8, type metadata accessor for ValenceSelectionPhaseSpecs, MEMORY[0x277CDF468]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 24);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_2589B02B4@<X0>(uint64_t a1@<X8>)
{
  result = sub_258B00F34();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_2589B03A4(uint64_t a1, uint64_t a2, int *a3)
{
  sub_258A55CA0(0, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  sub_258A55CA0(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[6] + 8);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    sub_258A55CA0(0, &qword_27F96C978, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
    v16 = v15;
    v17 = *(*(v15 - 8) + 48);
    v18 = a1 + a3[9];

    return v17(v18, a2, v16);
  }
}

void sub_2589B05AC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_258A55CA0(0, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    v11(v12, a2, a2, v10);
    return;
  }

  sub_258A55CA0(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 8) = (a2 - 1);
  }

  else
  {
    sub_258A55CA0(0, &qword_27F96C978, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
    v16 = v15;
    v17 = *(*(v15 - 8) + 56);
    v18 = a1 + a4[9];

    v17(v18, a2, a2, v16);
  }
}

uint64_t sub_2589B0814(uint64_t a1, uint64_t a2)
{
  sub_258A53A10(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2589B089C(uint64_t a1, uint64_t a2)
{
  sub_258A56544(0, &qword_27F96C7E0, MEMORY[0x277CDF468]);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2589B0924(uint64_t a1, uint64_t a2)
{
  sub_258A56544(0, &qword_27F96C7E0, MEMORY[0x277CDF468]);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2589B09B4(uint64_t a1, uint64_t a2)
{
  sub_258A580D8(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2589B0A18(uint64_t a1, uint64_t a2)
{
  sub_258A580B0(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2589B0ACC(uint64_t a1, uint64_t a2)
{
  sub_258A5B0F8(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2589B0B30(uint64_t a1)
{
  sub_258A5B0F8(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2589B0B8C()
{
  sub_258A5AFC4(255);
  sub_258A5B8C4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2589B0BF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_258A5D1FC(0, &qword_27F96EA60, MEMORY[0x277CC9578], MEMORY[0x277CE11F8]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_258A5D1FC(0, &qword_27F96EB00, type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs, MEMORY[0x277CDF468]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 24);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_2589B0D74(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_258A5D1FC(0, &qword_27F96EA60, MEMORY[0x277CC9578], MEMORY[0x277CE11F8]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_258A5D1FC(0, &qword_27F96EB00, type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs, MEMORY[0x277CDF468]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 24);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_2589B0F08()
{
  sub_258A5C7D4(255);
  v3 = sub_258A5CD0C(&qword_27F96F990, sub_258A5C7D4, MEMORY[0x277CE1198]);
  sub_258A5CD54(v3, v0, v1);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2589B0FA4()
{
  v1 = sub_258B01814();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_2589B102C()
{
  sub_258B017E4();
  sub_258A5CD0C(&qword_27F96F9A8, MEMORY[0x277CDE500], MEMORY[0x277CDE4F8]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2589B10B8(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_258B008E4();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  sub_258A6578C(0, &qword_27F96E3D8, type metadata accessor for ValenceSelectionPhaseSpecs, MEMORY[0x277CDF468]);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_11;
  }

  sub_258A6578C(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[9];
    goto LABEL_11;
  }

  sub_258A6578C(0, &qword_27F96F338, MEMORY[0x277CC99E8], MEMORY[0x277CDF468]);
  v16 = v15;
  v17 = *(*(v15 - 8) + 48);
  v18 = a1 + a3[10];

  return v17(v18, a2, v16);
}

uint64_t sub_2589B12FC(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_258B008E4();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  sub_258A6578C(0, &qword_27F96E3D8, type metadata accessor for ValenceSelectionPhaseSpecs, MEMORY[0x277CDF468]);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_9;
  }

  sub_258A6578C(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[9];
    goto LABEL_9;
  }

  sub_258A6578C(0, &qword_27F96F338, MEMORY[0x277CC99E8], MEMORY[0x277CDF468]);
  v16 = v15;
  v17 = *(*(v15 - 8) + 56);
  v18 = v5 + a4[10];

  return v17(v18, a2, a2, v16);
}

uint64_t sub_2589B1590(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_258A68444(0, &qword_27F96D290, type metadata accessor for AssociationSelectionPhaseSpecs, MEMORY[0x277CDF468]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 36);

    return v10(v11, a2, v9);
  }
}

void *sub_2589B1670(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_258A68444(0, &qword_27F96D290, type metadata accessor for AssociationSelectionPhaseSpecs, MEMORY[0x277CDF468]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 36);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_2589B1748()
{
  sub_258A69594(255, &qword_27F96FCC8, sub_258A69600, MEMORY[0x277CE07A0], MEMORY[0x277CDFAB8]);
  sub_258A69694();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2589B17F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_258A6ED18(0, &qword_27F96D290, type metadata accessor for AssociationSelectionPhaseSpecs, MEMORY[0x277CDF468]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 36);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_258A6ED18(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 40);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_2589B1974(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_258A6ED18(0, &qword_27F96D290, type metadata accessor for AssociationSelectionPhaseSpecs, MEMORY[0x277CDF468]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_258A6ED18(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 40);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_2589B1B04()
{
  v1 = type metadata accessor for DomainsSelectionPhase_iOS(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80));

  v3 = v2 + *(v1 + 36);
  sub_258A6ED18(0, &qword_27F96D2E0, type metadata accessor for AssociationSelectionPhaseSpecs, MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_258B01504();
    v5 = *(v4 - 8);
    if (!(*(v5 + 48))(v3, 1, v4))
    {
      (*(v5 + 8))(v3, v4);
    }

    v6 = *(type metadata accessor for AssociationSelectionPhaseSpecs(0) + 20);
    v7 = sub_258B00AA4();
    (*(*(v7 - 8) + 8))(v3 + v6, v7);
  }

  else
  {
  }

  v8 = *(v1 + 40);
  sub_258A6ED18(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_258B006A4();
    (*(*(v9 - 8) + 8))(v2 + v8, v9);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2589B1DCC(uint64_t a1, uint64_t a2)
{
  sub_258A6D1F0(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2589B1E30()
{
  v1 = sub_258B00B74();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_2589B1EB8(uint64_t a1, uint64_t a2)
{
  sub_258A6D5BC(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2589B1F34()
{
  sub_258A6D00C(255);
  sub_258A6DE18(255);
  sub_258A6DF44(255);
  sub_258A6D424(&qword_27F96FE90, sub_258A6D00C, MEMORY[0x277CDDB40]);
  sub_258A6EBE0();
  sub_258A6E118(255);
  sub_258A6E67C(255);
  sub_258A6E2C0(255);
  sub_258A6E434(255);
  sub_258A6E890(255);
  sub_258A6E540(255);
  v0 = MEMORY[0x277CDF6F0];
  sub_258A6D424(&qword_27F96FE48, sub_258A6E540, MEMORY[0x277CDF6F0]);
  sub_258A6D424(&qword_27F96FE50, sub_258A6E67C, v0);
  swift_getOpaqueTypeConformance2();
  sub_258A6D424(&qword_27F96FE88, sub_258A6E890, v0);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2589B21A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_258A6F8FC(0, a2, a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2589B2204(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_258A6F8FC(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2589B22A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_258A71E14(0, &qword_27F96D290, type metadata accessor for AssociationSelectionPhaseSpecs, MEMORY[0x277CDF468]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_258A71E14(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 32);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_2589B242C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_258A71E14(0, &qword_27F96D290, type metadata accessor for AssociationSelectionPhaseSpecs, MEMORY[0x277CDF468]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_258A71E14(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 32);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_2589B25C0()
{
  sub_258A71658(255);
  sub_258A71BE8(&qword_27F96FF70, sub_258A71658, MEMORY[0x277CE1198]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2589B26C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_258B029C4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2589B276C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_258B029C4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2589B2810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_258A07454(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_258B00AA4();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_2589B2900(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_258A07454(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_258B00AA4();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_2589B2A00()
{

  return swift_deallocObject();
}

uint64_t sub_2589B2AA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_258A7937C(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  sub_258A7937C(0, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

void sub_2589B2C0C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_258A7937C(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    sub_258A7937C(0, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
    v14 = *(v13 - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return;
    }

    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  v11(v12, a2, a2, v10);
}

uint64_t sub_2589B2D78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_258A07454(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_258B00AA4();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_2589B2E68(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_258A07454(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_258B00AA4();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_2589B2F64()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2589B2F9C()
{

  return swift_deallocObject();
}

uint64_t sub_2589B2FE8()
{
  sub_258A810D8(0);
  v2 = v1 - 8;
  v3 = (*(*(v1 - 8) + 80) + 40) & ~*(*(v1 - 8) + 80);

  v4 = sub_258B029C4();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + v3 + *(v2 + 44), v4);

  return swift_deallocObject();
}

uint64_t sub_2589B3108()
{

  return swift_deallocObject();
}

uint64_t sub_2589B3150()
{

  return swift_deallocObject();
}

uint64_t sub_2589B3188()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_2589B31C8()
{
  v1 = sub_258B00084();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_2589B3268(uint64_t a1, uint64_t a2, int *a3)
{
  sub_258A86CC4(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  sub_258A86CC4(0, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  sub_258A86CC4(0, &qword_27F970328, type metadata accessor for StateOfMindTimeline.DaySummary, MEMORY[0x277D83D88]);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[7]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

void sub_2589B344C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_258A86CC4(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    sub_258A86CC4(0, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      sub_258A86CC4(0, &qword_27F970328, type metadata accessor for StateOfMindTimeline.DaySummary, MEMORY[0x277D83D88]);
      if (*(*(v16 - 8) + 84) != a3)
      {
        *(a1 + a4[7]) = (a2 - 1);
        return;
      }

      v10 = v16;
      v14 = *(v16 - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  v11(v12, a2, a2, v10);
}

uint64_t sub_2589B3668(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_258A8953C(0, &qword_27F96E3D8, type metadata accessor for ValenceSelectionPhaseSpecs, MEMORY[0x277CDF468]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 36);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_2589B3748(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_258A8953C(0, &qword_27F96E3D8, type metadata accessor for ValenceSelectionPhaseSpecs, MEMORY[0x277CDF468]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 36);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_2589B3844(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_258A896FC(0, &qword_27F96C978, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_258A896FC(0, &qword_27F96D290, type metadata accessor for AssociationSelectionPhaseSpecs, MEMORY[0x277CDF468]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 28);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_2589B39C8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    sub_258A896FC(0, &qword_27F96C978, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_258A896FC(0, &qword_27F96D290, type metadata accessor for AssociationSelectionPhaseSpecs, MEMORY[0x277CDF468]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 28);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_2589B3C60(uint64_t a1, uint64_t a2)
{
  sub_2589F5990(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2589B3CCC(uint64_t a1, uint64_t a2)
{
  sub_2589F5990(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2589B3D3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_258A8E1A4(0, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

void sub_2589B3E2C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_258A8E1A4(0, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }
}

uint64_t sub_2589B3F24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_258A8ECB0(0, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for StateOfMindTimeline.DaySummary(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_2589B4060(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_258A8ECB0(0, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for StateOfMindTimeline.DaySummary(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_2589B419C()
{

  return swift_deallocObject();
}

uint64_t sub_2589B425C@<X0>(_BYTE *a1@<X8>)
{
  result = AssessmentsSettingsModel.isPeriodicPromptsSettingOn.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2589B4290@<X0>(uint64_t *a1@<X8>)
{
  result = sub_258A90FF4();
  *a1 = result;
  return result;
}

uint64_t sub_2589B42C4@<X0>(_BYTE *a1@<X8>)
{
  result = AssessmentsSettingsModel.isLoggingPatternEscalationsSettingOn.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2589B4320()
{

  return swift_deallocObject();
}

uint64_t sub_2589B4358()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2589B4450()
{
  sub_258A989E0(0);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_2589B44E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_258A9CF38(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_258A9CF38(0, &qword_27F96C7E8, type metadata accessor for IntroPhaseSpecs, MEMORY[0x277CDF468]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 24);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_2589B4668(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_258A9CF38(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_258A9CF38(0, &qword_27F96C7E8, type metadata accessor for IntroPhaseSpecs, MEMORY[0x277CDF468]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 24);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_2589B4868()
{
  v1 = (type metadata accessor for ReminderView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v2 + v1[9];
  sub_258AA101C(0, &qword_27F96D7B0, type metadata accessor for NotificationsSetupPhaseSpecs, MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_258B01504();
    v5 = *(v4 - 8);
    if (!(*(v5 + 48))(v3, 1, v4))
    {
      (*(v5 + 8))(v3, v4);
    }

    v6 = *(type metadata accessor for NotificationsSetupPhaseSpecs(0) + 20);
    v7 = sub_258B00AA4();
    (*(*(v7 - 8) + 8))(v3 + v6, v7);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2589B4A58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_258AA101C(0, &qword_27F96DEF8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_258AA101C(0, &qword_27F96DCA8, type metadata accessor for NotificationsSetupPhaseSpecs, MEMORY[0x277CDF468]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 32);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_2589B4BDC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_258AA101C(0, &qword_27F96DEF8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_258AA101C(0, &qword_27F96DCA8, type metadata accessor for NotificationsSetupPhaseSpecs, MEMORY[0x277CDF468]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 32);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_2589B4E0C()
{
  MEMORY[0x259C946A0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2589B4E44()
{

  return swift_deallocObject();
}

uint64_t sub_2589B4F4C(void *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_2589B4FA0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_258B00E74();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2589B4FE4()
{

  return swift_deallocObject();
}

uint64_t sub_2589B5090(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 48);
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_258AAE46C(0, &qword_27F96E3D8, type metadata accessor for ValenceSelectionPhaseSpecs, MEMORY[0x277CDF468]);
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = *(v11 + 48);
      v14 = a1 + *(a3 + 44);

      return v13(v14, a2, v12);
    }

    else
    {
      sub_258AAE46C(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
      v16 = v15;
      v17 = *(*(v15 - 8) + 48);
      v18 = a1 + *(a3 + 48);

      return v17(v18, a2, v16);
    }
  }
}

uint64_t sub_2589B5214(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 48) = a2 + 1;
  }

  else
  {
    sub_258AAE46C(0, &qword_27F96E3D8, type metadata accessor for ValenceSelectionPhaseSpecs, MEMORY[0x277CDF468]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 44);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_258AAE46C(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 48);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_2589B5394()
{
  v1 = type metadata accessor for ConfirmationView(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = v2 + *(v1 + 44);
  sub_258AAE46C(0, &qword_27F96D7B8, type metadata accessor for ValenceSelectionPhaseSpecs, MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_258B01504();
    v5 = *(v4 - 8);
    if (!(*(v5 + 48))(v3, 1, v4))
    {
      (*(v5 + 8))(v3, v4);
    }

    v6 = *(type metadata accessor for ValenceSelectionPhaseSpecs(0) + 20);
    v7 = sub_258B00AA4();
    (*(*(v7 - 8) + 8))(v3 + v6, v7);
  }

  else
  {
  }

  v8 = *(v1 + 48);
  sub_258AAE46C(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_258B006A4();
    (*(*(v9 - 8) + 8))(v2 + v8, v9);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2589B566C(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_258B00084();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  sub_258AB03EC(0, &qword_27F96F338, MEMORY[0x277CC99E8], MEMORY[0x277CDF468]);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_11;
  }

  sub_258AB03EC(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[7];
    goto LABEL_11;
  }

  sub_258AB03EC(0, &qword_27F96EB00, type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs, MEMORY[0x277CDF468]);
  v16 = v15;
  v17 = *(*(v15 - 8) + 48);
  v18 = a1 + a3[8];

  return v17(v18, a2, v16);
}

uint64_t sub_2589B58B0(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_258B00084();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  sub_258AB03EC(0, &qword_27F96F338, MEMORY[0x277CC99E8], MEMORY[0x277CDF468]);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_9;
  }

  sub_258AB03EC(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[7];
    goto LABEL_9;
  }

  sub_258AB03EC(0, &qword_27F96EB00, type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs, MEMORY[0x277CDF468]);
  v16 = v15;
  v17 = *(*(v15 - 8) + 56);
  v18 = v5 + a4[8];

  return v17(v18, a2, a2, v16);
}

uint64_t sub_2589B5B4C()
{

  return swift_deallocObject();
}

uint64_t sub_2589B5B90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_258AB5FCC(0, &qword_27F96D290, type metadata accessor for AssociationSelectionPhaseSpecs, MEMORY[0x277CDF468]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_2589B5C70(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_258AB5FCC(0, &qword_27F96D290, type metadata accessor for AssociationSelectionPhaseSpecs, MEMORY[0x277CDF468]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 24);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_2589B5D54()
{
  v1 = type metadata accessor for ExpandableInfoSectionHeader(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = v2 + *(v1 + 24);
  sub_258AB5FCC(0, &qword_27F96D2E0, type metadata accessor for AssociationSelectionPhaseSpecs, MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_258B01504();
    v5 = *(v4 - 8);
    if (!(*(v5 + 48))(v3, 1, v4))
    {
      (*(v5 + 8))(v3, v4);
    }

    v6 = *(type metadata accessor for AssociationSelectionPhaseSpecs(0) + 20);
    v7 = sub_258B00AA4();
    (*(*(v7 - 8) + 8))(v3 + v6, v7);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2589B5FA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_258AB6F60(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
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

void sub_2589B6070(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_258AB6F60(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }
}

uint64_t sub_2589B6128()
{

  return swift_deallocObject();
}

uint64_t sub_2589B617C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_258B008E4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_258AB979C(0, &qword_27F96DCA8, type metadata accessor for NotificationsSetupPhaseSpecs, MEMORY[0x277CDF468]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 28);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_2589B62D0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_258B008E4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_258AB979C(0, &qword_27F96DCA8, type metadata accessor for NotificationsSetupPhaseSpecs, MEMORY[0x277CDF468]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 28);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_2589B643C()
{
  v1 = (type metadata accessor for NotificationsSetupPhaseContent(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[8];
  v4 = sub_258B008E4();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);
  v5 = v2 + v1[9];
  sub_258AB979C(0, &qword_27F96D7B0, type metadata accessor for NotificationsSetupPhaseSpecs, MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_258B01504();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v5, 1, v6))
    {
      (*(v7 + 8))(v5, v6);
    }

    v8 = *(type metadata accessor for NotificationsSetupPhaseSpecs(0) + 20);
    v9 = sub_258B00AA4();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2589B66AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_258B000C4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2589B676C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_258B000C4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2589B6828(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_258ABB19C(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  sub_258ABB19C(0, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

void sub_2589B6994(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_258ABB19C(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    sub_258ABB19C(0, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
    v14 = *(v13 - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return;
    }

    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  v11(v12, a2, a2, v10);
}

uint64_t sub_2589B6B04@<X0>(uint64_t *a1@<X8>)
{
  result = sub_258B00E84();
  *a1 = result;
  return result;
}

uint64_t sub_2589B6BB0()
{

  return swift_deallocObject();
}

uint64_t sub_2589B6C10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_258AC1E98(0, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for StateOfMindTimeline.DaySummary(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_2589B6D30(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_258AC1E98(0, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for StateOfMindTimeline.DaySummary(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_2589B6ED0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_258ACBBDC(0, &qword_27F96DCA8, type metadata accessor for NotificationsSetupPhaseSpecs, MEMORY[0x277CDF468]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 40);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_2589B6FB0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_258ACBBDC(0, &qword_27F96DCA8, type metadata accessor for NotificationsSetupPhaseSpecs, MEMORY[0x277CDF468]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 40);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_2589B708C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_258ACBBDC(0, &qword_27F96DCA8, type metadata accessor for NotificationsSetupPhaseSpecs, MEMORY[0x277CDF468]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

void *sub_2589B716C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_258ACBBDC(0, &qword_27F96DCA8, type metadata accessor for NotificationsSetupPhaseSpecs, MEMORY[0x277CDF468]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 28);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_2589B7240(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_258ACBBDC(0, &qword_27F96DCA8, type metadata accessor for NotificationsSetupPhaseSpecs, MEMORY[0x277CDF468]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 44);

    return v10(v11, a2, v9);
  }
}

void *sub_2589B7320(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_258ACBBDC(0, &qword_27F96DCA8, type metadata accessor for NotificationsSetupPhaseSpecs, MEMORY[0x277CDF468]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 44);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_2589B73F4()
{
  sub_258ACBB54(255);
  sub_258ACF188(&qword_27F971228, sub_258ACBB54, MEMORY[0x277CE1198]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2589B7480()
{
  v1 = (type metadata accessor for CompleteNotificationsSetupButton(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  swift_unknownObjectRelease();

  v3 = v0 + v2 + v1[13];
  sub_258ACBBDC(0, &qword_27F96D7B0, type metadata accessor for NotificationsSetupPhaseSpecs, MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_258B01504();
    v5 = *(v4 - 8);
    if (!(*(v5 + 48))(v3, 1, v4))
    {
      (*(v5 + 8))(v3, v4);
    }

    v6 = *(type metadata accessor for NotificationsSetupPhaseSpecs(0) + 20);
    v7 = sub_258B00AA4();
    (*(*(v7 - 8) + 8))(v3 + v6, v7);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2589B7698()
{
  v1 = (type metadata accessor for SkipButton(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v2 + v1[9];
  sub_258ACBBDC(0, &qword_27F96D7B0, type metadata accessor for NotificationsSetupPhaseSpecs, MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_258B01504();
    v5 = *(v4 - 8);
    if (!(*(v5 + 48))(v3, 1, v4))
    {
      (*(v5 + 8))(v3, v4);
    }

    v6 = *(type metadata accessor for NotificationsSetupPhaseSpecs(0) + 20);
    v7 = sub_258B00AA4();
    (*(*(v7 - 8) + 8))(v3 + v6, v7);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2589B7914()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_2589B7970(__int128 *a1)
{
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata3();
  sub_258B02574();
  swift_getWitnessTable();
  sub_258B021D4();
  swift_getWitnessTable();
  sub_258B021B4();
  sub_258B015E4();
  swift_getWitnessTable();
  sub_258AD1108(&qword_27F971398, MEMORY[0x277CDE340], MEMORY[0x277CDE338]);
  swift_getOpaqueTypeMetadata2();
  sub_258B016D4();
  sub_258AD1108(&qword_27F9713A0, MEMORY[0x277CDE400], MEMORY[0x277CDE3E8]);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  v1 = MEMORY[0x277CDDBB8];
  sub_258AD1150(255, &qword_27F96F028, MEMORY[0x277CDDBB8]);
  sub_258B00B04();
  v2 = MEMORY[0x277CDF450];
  sub_258AD1150(255, &qword_27F96F030, MEMORY[0x277CDF450]);
  sub_258B00B04();
  sub_258AD11A4(255, &qword_27F96D710, &qword_27F96D718, MEMORY[0x277CDF6A8], MEMORY[0x277CE0860]);
  sub_258B00B04();
  swift_getOpaqueTypeConformance2();
  sub_258AD1250(&qword_27F96F098, &qword_27F96F028, v1);
  swift_getWitnessTable();
  sub_258AD1250(&qword_27F96F0A0, &qword_27F96F030, v2);
  swift_getWitnessTable();
  sub_258AD12A0();
  return swift_getWitnessTable();
}

uint64_t sub_2589B7D7C@<X0>(_BYTE *a1@<X8>)
{
  result = NSUserActivity.presentWithAnimation.getter();
  *a1 = result;
  return result;
}

void *sub_2589B7DD0@<X0>(_BYTE *a1@<X8>)
{
  result = NSUserActivity.route.getter(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_2589B7E6C@<X0>(uint64_t a1@<X8>)
{
  result = NSUserActivity.version.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_2589B7F48@<X0>(_BYTE *a1@<X8>)
{
  result = URLComponents.presentWithAnimation.getter();
  *a1 = result;
  return result;
}

uint64_t sub_2589B7FC4()
{
  MEMORY[0x259C946A0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2589B7FFC()
{

  return swift_deallocObject();
}

uint64_t sub_2589B8034@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + qword_27F97AC38;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_2589B8090(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  v3 = *a2 + qword_27F97AC38;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_2589B810C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_258A07454(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_258B00AA4();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_2589B81FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_258A07454(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_258B00AA4();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_2589B82F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_258AE186C(0, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

void sub_2589B83E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_258AE186C(0, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }
}

uint64_t sub_2589B851C(uint64_t a1, uint64_t a2)
{
  sub_258AEAE4C(0, &qword_27F9716B8, sub_258AE9EFC, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2589B85B0(uint64_t a1)
{
  sub_258AEAE4C(0, &qword_27F9716B8, sub_258AE9EFC, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2589B8658(uint64_t a1, uint64_t a2)
{
  sub_258AE9EFC(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2589B86BC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2589B8740()
{

  return swift_deallocObject();
}

uint64_t sub_2589B8790()
{
  v1 = sub_258B00084();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = sub_258B01724();
  v8 = *(v7 - 8);
  v9 = (v6 + v5 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v2 + 8);
  v10(v0 + v4, v1);
  v10(v0 + v6, v1);
  (*(v8 + 8))(v0 + v9, v7);

  return swift_deallocObject();
}

uint64_t sub_2589B891C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_258AF1508(0, &qword_27F96D290, type metadata accessor for AssociationSelectionPhaseSpecs, MEMORY[0x277CDF468]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_258AF1508(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 32);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_2589B8AA0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_258AF1508(0, &qword_27F96D290, type metadata accessor for AssociationSelectionPhaseSpecs, MEMORY[0x277CDF468]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_258AF1508(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 32);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_2589B8C48()
{
  sub_258AF20AC(255);
  sub_258A1E3AC(255);
  sub_258AF17C0(255);
  sub_258AF21E8(255);
  sub_258AF1EA4(&qword_27F971900, sub_258AF17C0, MEMORY[0x277CE1198]);
  type metadata accessor for ShowAllLabelsPicker(255);
  sub_258AF1EA4(&qword_27F9718F8, type metadata accessor for ShowAllLabelsPicker, &unk_258B326D4);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_258AF264C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2589B8DA8(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  sub_258AF297C(0, &qword_27F96EA60, MEMORY[0x277CC9578], MEMORY[0x277CE11F8]);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  sub_258AF297C(0, &qword_27F96EB00, type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs, MEMORY[0x277CDF468]);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  sub_258AF297C(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = a1 + a3[8];

  return v16(v17, a2, v15);
}

uint64_t sub_2589B8FA4(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
    return result;
  }

  sub_258AF297C(0, &qword_27F96EA60, MEMORY[0x277CC9578], MEMORY[0x277CE11F8]);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  sub_258AF297C(0, &qword_27F96EB00, type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs, MEMORY[0x277CDF468]);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  sub_258AF297C(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 56);
  v17 = v5 + a4[8];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_2589B91B4(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  sub_258AF297C(0, &qword_27F96EA60, MEMORY[0x277CC9578], MEMORY[0x277CE11F8]);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  sub_258AF297C(0, &qword_27F96F338, MEMORY[0x277CC99E8], MEMORY[0x277CDF468]);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_11;
  }

  sub_258AF297C(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[8];
    goto LABEL_11;
  }

  sub_258AF297C(0, &qword_27F96EB00, type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs, MEMORY[0x277CDF468]);
  v16 = v15;
  v17 = *(*(v15 - 8) + 48);
  v18 = a1 + a3[9];

  return v17(v18, a2, v16);
}

uint64_t sub_2589B9428(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
    return result;
  }

  sub_258AF297C(0, &qword_27F96EA60, MEMORY[0x277CC9578], MEMORY[0x277CE11F8]);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  sub_258AF297C(0, &qword_27F96F338, MEMORY[0x277CC99E8], MEMORY[0x277CDF468]);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_9;
  }

  sub_258AF297C(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[8];
    goto LABEL_9;
  }

  sub_258AF297C(0, &qword_27F96EB00, type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs, MEMORY[0x277CDF468]);
  v16 = v15;
  v17 = *(*(v15 - 8) + 56);
  v18 = v5 + a4[9];

  return v17(v18, a2, a2, v16);
}

uint64_t sub_2589B96B0(uint64_t a1, uint64_t a2)
{
  sub_258AF7C7C(0, &qword_27F9719F0, sub_258AF7D14);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2589B973C()
{

  return swift_deallocObject();
}

uint64_t sub_2589B9774(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_258AF91C8(a1, a2, a3);
  sub_2589BFF58(v3, v4, v5);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2589B97DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_258AFA6D8(0, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

void sub_2589B98C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_258AFA6D8(0, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }
}

uint64_t sub_2589B99B0()
{
  v1 = *(*(_s14ShowMoreButtonVMa(0) - 8) + 80);
  v2 = (v1 + 16) & ~v1;
  v3 = v0 + v2;
  sub_258AFA6D8(0, &qword_27F96CC08, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_258B01504();
    v5 = *(v4 - 8);
    v6 = *(v5 + 48);
    if (!v6(v0 + v2, 1, v4))
    {
      (*(v5 + 8))(v0 + v2, v4);
    }

    v7 = type metadata accessor for StateOfMindTimeline.Styles(0);
    v8 = *(v7 + 20);
    v9 = sub_258B00AA4();
    v10 = *(*(v9 - 8) + 8);
    v11 = v3 + v8;
    v12 = v7;
    v10(v11, v9);
    v13 = *(v7 + 28);
    v14 = sub_258B006A4();
    v42 = *(*(v14 - 8) + 8);
    v43 = v14;
    v42(v3 + v13);
    v15 = v3 + v12[8];
    if (!v6(v15, 1, v4))
    {
      (*(v5 + 8))(v15, v4);
    }

    v16 = _s6StylesV8TimelineVMa(0);
    v10(v15 + *(v16 + 20), v9);
    v17 = v3 + v12[9];
    if (!v6(v17, 1, v4))
    {
      (*(v5 + 8))(v17, v4);
    }

    v18 = _s6StylesV6NoDataVMa(0);
    v10(v17 + *(v18 + 20), v9);
    v19 = v3 + v12[10];
    if (!v6(v19, 1, v4))
    {
      (*(v5 + 8))(v19, v4);
    }

    v20 = _s6StylesV11PlaceholderVMa(0);
    v10(v19 + *(v20 + 20), v9);
    v21 = v3 + v12[11];
    if (!v6(v21, 1, v4))
    {
      (*(v5 + 8))(v21, v4);
    }

    v22 = _s6StylesV6SymbolVMa(0);
    v10(v21 + *(v22 + 20), v9);
    v23 = v3 + v12[12];
    v44 = v12;
    if (!v6(v23, 1, v4))
    {
      (*(v5 + 8))(v23, v4);
    }

    v24 = v5;
    v25 = type metadata accessor for StateOfMindTimeline.Styles.Entry(0);
    v10(v23 + *(v25 + 20), v9);
    v26 = *(v25 + 28);
    v27 = v24;
    (v42)(v23 + v26, v43);
    v28 = v3 + v44[13];
    if (!v6(v28, 1, v4))
    {
      (*(v27 + 8))(v28, v4);
    }

    v29 = _s6StylesV5EmptyVMa(0);
    v10(v28 + *(v29 + 20), v9);
    v30 = v3 + v44[14];
    v31 = v9;
    if (!v6(v30, 1, v4))
    {
      (*(v27 + 8))(v30, v4);
    }

    v32 = _s6StylesV5DailyVMa(0);
    v10(v30 + *(v32 + 20), v9);
    v33 = v3 + v44[15];
    if (!v6(v33, 1, v4))
    {
      (*(v27 + 8))(v33, v4);
    }

    v34 = _s6StylesV9MomentaryVMa(0);
    v10(v33 + *(v34 + 20), v9);
    v35 = v3 + v44[16];
    if (!v6(v35, 1, v4))
    {
      (*(v27 + 8))(v35, v4);
    }

    v36 = _s6StylesV6HeaderVMa(0);
    v10(v35 + *(v36 + 20), v9);
    v37 = v3 + v44[17];
    if (!v6(v37, 1, v4))
    {
      (*(v27 + 8))(v37, v4);
    }

    v38 = _s6StylesV11ChartButtonVMa(0);
    v10(v37 + *(v38 + 20), v9);
    v39 = v3 + v44[18];
    if (!v6(v39, 1, v4))
    {
      (*(v27 + 8))(v39, v4);
    }

    v40 = _s6StylesV15LogButtonFooterVMa(0);
    v10(v39 + *(v40 + 20), v31);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2589BA088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_258AFD58C(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

void sub_2589BA178(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_258AFD58C(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 32) + 8) = (a2 - 1);
  }
}

id HKMHUIMentalHealthUIFrameworkBundle()
{
  v0 = HKMHUIMentalHealthUIFrameworkBundle___ClassBundle;
  if (!HKMHUIMentalHealthUIFrameworkBundle___ClassBundle)
  {
    v1 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v2 = HKMHUIMentalHealthUIFrameworkBundle___ClassBundle;
    HKMHUIMentalHealthUIFrameworkBundle___ClassBundle = v1;

    v0 = HKMHUIMentalHealthUIFrameworkBundle___ClassBundle;
  }

  return v0;
}

double FkH_regionOf(uint64_t a1, float32x4_t a2, double a3, float a4)
{
  v4 = vaddq_f32(a2, COERCE_UNSIGNED_INT(-a4));
  if (a1)
  {
    v4.i64[0] = vaddq_f32(v4, xmmword_258B05750).u64[0];
  }

  return *v4.i64;
}

double FkV_regionOf(uint64_t a1, float32x4_t a2, double a3, float a4)
{
  LODWORD(v4) = 0;
  *(&v4 + 1) = -a4;
  v5 = vaddq_f32(a2, v4);
  if (a1)
  {
    v5.i64[0] = vaddq_f32(v5, xmmword_258B05750).u64[0];
  }

  return *v5.i64;
}

double DkH_regionOf(uint64_t a1, float32x4_t a2, double a3, float a4, float a5)
{
  v5 = vaddq_f32(COERCE_UNSIGNED_INT(-(a4 - (a5 * 0.5))), vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(LODWORD(a5), a2.f32[0]), xmmword_258B05770, *a2.f32, 1), xmmword_258B05780, a2, 2));
  if (a1)
  {
    v5.i64[0] = vaddq_f32(v5, xmmword_258B05750).u64[0];
  }

  return *v5.i64;
}

double DkV_regionOf(uint64_t a1, float32x4_t a2, double a3, float a4, float a5)
{
  LODWORD(v5) = 0;
  LODWORD(v6) = 0;
  *(&v6 + 1) = a5;
  *(&v5 + 1) = -(a4 - (a5 * 0.5));
  v7 = vaddq_f32(v5, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(COERCE_UNSIGNED_INT(1.0), a2.f32[0]), v6, *a2.f32, 1), xmmword_258B05780, a2, 2));
  if (a1)
  {
    v7.i64[0] = vaddq_f32(v7, xmmword_258B05750).u64[0];
  }

  return *v7.i64;
}

double Dp_regionOf(uint64_t a1, float32x4_t a2, double a3, float a4, float a5)
{
  LODWORD(v5) = 0;
  *(&v5 + 1) = a5;
  *&v6 = -a4;
  *(&v6 + 1) = -a4;
  v7 = vaddq_f32(v6, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(LODWORD(a5), a2.f32[0]), v5, *a2.f32, 1), xmmword_258B05780, a2, 2));
  if (a1)
  {
    v7.i64[0] = vaddq_f32(v7, xmmword_258B05750).u64[0];
  }

  return *v7.i64;
}

double UkH_regionOf(uint64_t a1, float32x4_t a2, double a3, double a4, float a5)
{
  v5 = vaddq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(COERCE_UNSIGNED_INT(1.0 / a5), a2.f32[0]), xmmword_258B05770, *a2.f32, 1), xmmword_258B05780, a2, 2), xmmword_258B05790);
  if (a1)
  {
    v5.i64[0] = vaddq_f32(v5, xmmword_258B05750).u64[0];
  }

  return *v5.i64;
}

double UkV_regionOf(uint64_t a1, float32x4_t a2, double a3, double a4, float a5)
{
  LODWORD(v5) = 0;
  *(&v5 + 1) = 1.0 / a5;
  v6 = vaddq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(COERCE_UNSIGNED_INT(1.0), a2.f32[0]), v5, *a2.f32, 1), xmmword_258B05780, a2, 2), xmmword_258B057B0);
  __asm { FMOV            V1.2D, #-2.0 }

  if (a1)
  {
    v6.i64[0] = vaddq_f32(v6, xmmword_258B05750).u64[0];
  }

  return *v6.i64;
}

double Up_regionOf(uint64_t a1, float32x4_t a2, double a3, float a4, float a5)
{
  LODWORD(v5) = 0;
  *(&v5 + 1) = 1.0 / a5;
  v6 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(COERCE_UNSIGNED_INT(1.0 / a5), a2.f32[0]), v5, *a2.f32, 1), xmmword_258B05780, a2, 2);
  *&v7 = -a4;
  *(&v7 + 1) = -a4;
  v8 = vaddq_f32(v7, v6);
  if (a1)
  {
    v8.i64[0] = vaddq_f32(v8, xmmword_258B05750).u64[0];
  }

  return *v8.i64;
}

uint64_t initFilterInfo(uint64_t result, float a2)
{
  v2 = result;
  *(result + 20) = 0u;
  v3 = result + 20;
  *(result + 36) = 0u;
  if (a2 >= 1.0)
  {
    GaussianBlurPlanIndex = getGaussianBlurPlanIndex(a2);
    GaussianBlurPlan = getGaussianBlurPlan(GaussianBlurPlanIndex);
    v5 = GaussianBlurPlan;
    v4 = 0;
    v8 = 0;
    if (GaussianBlurPlan[1] <= 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = GaussianBlurPlan[1];
    }

    v10 = GaussianBlurPlan + 2;
    do
    {
      v11 = v4;
      v12 = v10[v8];
      result = getGaussianBlurKernelSize(v12);
      v4 = v11 + 1;
      *(v3 + 4 * v11) = v12;
      v8 += result;
    }

    while (v8 < v9);
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  *v2 = v5;
  *(v2 + 8) = v4;
  *(v2 + 16) = 1065353216;
  return result;
}

float OUTLINED_FUNCTION_0(float32x4_t a1)
{
  v2.i64[0] = 0x4F0000004F000000;
  v2.i64[1] = 0x4F0000004F000000;
  v3 = vcgtq_f32(a1, v2);
  LODWORD(result) = vadd_s32(vand_s8(*v3.i8, v1), *&vcvtq_s32_f32(vsubq_f32(a1, vbslq_s8(v3, v2, 0)))).u32[0];
  return result;
}

id GetSampler(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = objc_alloc_init(MEMORY[0x277CD6FD0]);
  if (result)
  {
    v9 = result;
    v10 = 4 * (a2 == 0);
    v11 = a3 == 1;
    v12 = a4 == 1;
    [result setSAddressMode:v10];
    [v9 setTAddressMode:v10];
    [v9 setRAddressMode:v10];
    [v9 setMinFilter:v11];
    [v9 setMagFilter:v11];
    [v9 setNormalizedCoordinates:v12];
    [v9 setMipFilter:v12];
    v13 = [a1 newSamplerStateWithDescriptor:v9];

    return v13;
  }

  return result;
}

uint64_t WMPSConvolutionGetIntermediateTexture(void *a1, void *a2, void *a3, uint64_t a4)
{
  v8 = objc_opt_new();
  [v8 setPixelFormat:*a2 & 0x3FFLL];
  [v8 setWidth:*a3];
  [v8 setHeight:a3[1]];
  [v8 setArrayLength:a3[2]];
  if (a3[2] == 1)
  {
    v9 = 2;
  }

  else
  {
    v9 = 3;
  }

  [v8 setTextureType:v9];
  [v8 setStorageMode:2];
  [v8 setCpuCacheMode:0];
  [v8 setUsage:3];
  [v8 setProtectionOptions:a4];
  v10 = [a1 newTextureWithDescriptor:v8];

  return v10;
}

uint64_t NewComputePipelineState(void *a1, uint64_t a2)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = 0;
  v4 = [a1 newFunctionWithName:?];
  v5 = [a1 device];
  v6 = objc_alloc_init(MEMORY[0x277CD6D30]);
  [v6 setComputeFunction:v4];
  if (a2)
  {
    v10[0] = a2;
    [v6 setBinaryArchives:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v10, 1)}];
  }

  [v6 setThreadGroupSizeIsMultipleOfThreadExecutionWidth:1];
  v7 = [v5 newComputePipelineStateWithDescriptor:v6 error:&v9];

  if (v9)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

uint64_t getGaussianBlurKernelSize(int a1)
{
  if (a1 > 25)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return getGaussianBlurKernelSize::s[a1];
  }
}

uint64_t getGaussianBlurKernelBorderScaleData(unsigned int a1)
{
  if (a1 > 0x19)
  {
    return 0;
  }

  else
  {
    return getGaussianBlurKernelBorderScaleData::data[a1];
  }
}

uint64_t getGaussianBlurPlanIndex(double a1)
{
  v1 = 0;
  v2 = 256;
  do
  {
    if (v2 + v1 <= 820 && kGaussianBlurPlans[kGaussianBlurPlanIndex[v2 + v1]] <= a1)
    {
      v1 += v2;
    }

    else
    {
      v2 = v2 >> 1;
    }
  }

  while (v2 > 0);
  if (v1 >= 820)
  {
    v3 = v1;
  }

  else
  {
    v3 = v1;
    if (vabdd_f64(kGaussianBlurPlans[kGaussianBlurPlanIndex[v1 + 1]], a1) < vabdd_f64(kGaussianBlurPlans[kGaussianBlurPlanIndex[v1]], a1))
    {
      v3 = v1 + 1;
    }
  }

  return kGaussianBlurPlanIndex[v3];
}

uint64_t BundleNameProviding.bundleName.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 8))(a1);
  v12[0] = 46;
  v12[1] = 0xE100000000000000;
  v11[2] = v12;
  v4 = sub_2589BBCF8(1, 1, sub_2589BC110, v11, v2, v3, v12);
  if (v4[2])
  {
    v5 = v4[4];
    v6 = v4[5];
    v7 = v4[6];
    v8 = v4[7];
    sub_258B003E4();

    v9 = MEMORY[0x259C93160](v5, v6, v7, v8);

    return v9;
  }

  else
  {

    __break(1u);
  }

  return result;
}

uint64_t sub_2589BB7C0()
{
  v1 = *v0;
  sub_258B03514();
  MEMORY[0x259C93B20](v1);
  return sub_258B03554();
}

uint64_t sub_2589BB808(uint64_t a1)
{
  v2 = *v1;
  sub_258B03514();
  MEMORY[0x259C93B20](v2);
  return sub_258B03554();
}

uint64_t sub_2589BB84C(uint64_t a1, id *a2)
{
  result = sub_258B02AF4();
  *a2 = 0;
  return result;
}

uint64_t sub_2589BB8C4(uint64_t a1, id *a2)
{
  v3 = sub_258B02B04();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_2589BB944@<X0>(uint64_t *a2@<X8>)
{
  sub_258B02B14();
  v3 = sub_258B02AD4();

  *a2 = v3;
  return result;
}

_DWORD *sub_2589BB988@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_2589BB9AC(uint64_t a1)
{
  v2 = sub_2589BC3F8(&qword_27F9711B0, type metadata accessor for Option, &unk_258B2BA90);
  v3 = sub_2589BC3F8(&unk_27F96C680, type metadata accessor for Option, &unk_258B2B88C);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2589BBA68@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_258B02AD4();

  *a2 = v3;
  return result;
}

uint64_t sub_2589BBAB0(uint64_t a1)
{
  v2 = sub_2589BC3F8(&qword_27F96C668, type metadata accessor for CubeLayout, &unk_258B2BA00);
  v3 = sub_2589BC3F8(&unk_27F96C670, type metadata accessor for CubeLayout, &unk_258B2B9A0);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2589BBB6C()
{
  v0 = sub_258B02B14();
  v1 = MEMORY[0x259C931D0](v0);

  return v1;
}

uint64_t sub_2589BBBA8(uint64_t a1)
{
  sub_258B02B14();
  sub_258B02B74();
}

uint64_t sub_2589BBBFC(uint64_t a1)
{
  sub_258B02B14();
  sub_258B03514();
  sub_258B02B74();
  v1 = sub_258B03554();

  return v1;
}

uint64_t sub_2589BBC70(void *a1, uint64_t *a2)
{
  v2 = sub_258B02B14();
  v4 = v3;
  if (v2 == sub_258B02B14() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_258B03454();
  }

  return v7 & 1;
}

unint64_t sub_2589BBCF8@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
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

    v7 = sub_258B02C04();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_258A74704(0, 1, 1, MEMORY[0x277D84F90]);
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
    v14 = sub_258A74704((a7 > 1), v10, 1, v14);
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
        v19 = sub_258B02BF4();
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

        v14 = sub_258B02B94();
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
        v18 = sub_258B02B94();
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
          v7 = sub_258B02C04();
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

        v14 = sub_258A74704(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_258B02C04();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_258A74704(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_258A74704((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_258B02B94();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2589BC0B8(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_258B03454() & 1;
  }
}

uint64_t sub_2589BC110(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_258B03454() & 1;
  }
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2589BC18C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

__n128 __swift_memcpy48_16(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_2589BC1E0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2589BC200(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 48) = v3;
  return result;
}

__n128 __swift_memcpy64_16(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2589BC260(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2589BC280(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 64) = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2589BC3F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 __swift_memcpy32_16(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

void sub_2589BC4B0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

double sub_2589BC728@<D0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [objc_opt_self() systemGray3Color];
  v5 = sub_258B01F94();
  if (a1 >> 62)
  {
    v6 = sub_258B032B4();
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v6)
  {
    v7 = 1.0;
  }

  else
  {
    v7 = 0.0;
  }

  sub_258B024F4();
  sub_258B00854();
  *a2 = v5;
  *(a2 + 8) = 256;
  *(a2 + 16) = v7;
  *(a2 + 24) = v9;
  *(a2 + 40) = v10;
  result = *&v11;
  *(a2 + 56) = v11;
  return result;
}

unint64_t sub_2589BC810()
{
  result = qword_27F96C750;
  if (!qword_27F96C750)
  {
    sub_2589BC8DC(255, &qword_27F96C758, sub_2589BC8B4, MEMORY[0x277CDF688]);
    sub_2589BCA10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96C750);
  }

  return result;
}

void sub_2589BC8DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    v5 = sub_258B00B04();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_2589BC940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!qword_27F96C768)
  {
    sub_2589BC9BC(0, a2, a3);
    v3 = sub_258B00684();
    if (!v4)
    {
      atomic_store(v3, &qword_27F96C768);
    }
  }
}

unint64_t sub_2589BC9BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F96C770;
  if (!qword_27F96C770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96C770);
  }

  return result;
}

unint64_t sub_2589BCA10()
{
  result = qword_27F96C778;
  if (!qword_27F96C778)
  {
    sub_2589BC8B4(255);
    sub_2589BCA90(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96C778);
  }

  return result;
}

unint64_t sub_2589BCA90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F96C780;
  if (!qword_27F96C780)
  {
    sub_2589BC940(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96C780);
  }

  return result;
}

uint64_t _s18EntrySeparatorViewVMa(uint64_t a1)
{
  result = qword_27F96C790;
  if (!qword_27F96C790)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2589BCB5C(uint64_t a1)
{
  sub_2589BD038(319, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_2589BCC14@<X0>(uint64_t a1@<X8>)
{
  sub_2589BD168(0);
  v3 = v2 - 8;
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - v7;
  v9 = type metadata accessor for StateOfMindTimeline.Styles(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AC1060(v11);
  sub_2589BD22C(v11, type metadata accessor for StateOfMindTimeline.Styles);
  sub_258B024F4();
  sub_258B00854();
  v30 = v31;
  v29 = v33;
  v28 = v35;
  v27 = v36;
  v48 = 1;
  v47 = v32;
  v46 = v34;
  sub_258B02394();
  sub_258AC1060(v11);
  sub_2589BD22C(v11, type metadata accessor for StateOfMindTimeline.Styles);
  sub_258B024F4();
  sub_258B00854();
  v12 = &v8[*(v3 + 44)];
  v13 = v38;
  *v12 = v37;
  *(v12 + 1) = v13;
  *(v12 + 2) = v39;
  sub_258AC1060(v11);
  sub_2589BD22C(v11, type metadata accessor for StateOfMindTimeline.Styles);
  sub_258B024F4();
  sub_258B00854();
  v26 = v40;
  v25 = v42;
  v14 = v45;
  v24 = v44;
  v51 = 1;
  v50 = v41;
  v49 = v43;
  v15 = v48;
  v16 = v47;
  v17 = v46;
  sub_2589BD1C8(v8, v6);
  v18 = v51;
  LOBYTE(v3) = v50;
  LOBYTE(v11) = v49;
  *a1 = 0;
  *(a1 + 8) = v15;
  *(a1 + 16) = v30;
  *(a1 + 24) = v16;
  *(a1 + 32) = v29;
  *(a1 + 40) = v17;
  v19 = v27;
  *(a1 + 48) = v28;
  *(a1 + 56) = v19;
  sub_2589BD09C(0);
  v21 = v20;
  sub_2589BD1C8(v6, a1 + *(v20 + 48));
  v22 = a1 + *(v21 + 64);
  *v22 = 0;
  *(v22 + 8) = v18;
  *(v22 + 16) = v26;
  *(v22 + 24) = v3;
  *(v22 + 32) = v25;
  *(v22 + 40) = v11;
  *(v22 + 48) = v24;
  *(v22 + 56) = v14;
  sub_2589BD22C(v8, sub_2589BD168);
  return sub_2589BD22C(v6, sub_2589BD168);
}

uint64_t sub_2589BCF5C@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_258B01194();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_2589BCFA0(0);
  return sub_2589BCC14(a1 + *(v2 + 44));
}

void sub_2589BCFA0(uint64_t a1)
{
  if (!qword_27F96C7A0)
  {
    sub_2589BD038(255, &qword_27F96C7A8, sub_2589BD09C, MEMORY[0x277CE14B8]);
    v1 = sub_258B00974();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96C7A0);
    }
  }
}

void sub_2589BD038(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2589BD09C(uint64_t a1)
{
  if (!qword_27F96C7B0)
  {
    sub_2589BD110();
    sub_2589BD168(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F96C7B0);
    }
  }
}

void sub_2589BD110()
{
  if (!qword_27F96C7B8)
  {
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96C7B8);
    }
  }
}

void sub_2589BD168(uint64_t a1)
{
  if (!qword_27F96C7C0)
  {
    sub_258B023A4();
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96C7C0);
    }
  }
}

uint64_t sub_2589BD1C8(uint64_t a1, uint64_t a2)
{
  sub_2589BD168(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2589BD22C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2589BD28C()
{
  result = qword_27F96C7C8;
  if (!qword_27F96C7C8)
  {
    sub_2589BD2E4(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96C7C8);
  }

  return result;
}

void sub_2589BD2E4(uint64_t a1)
{
  if (!qword_27F96C7D0)
  {
    sub_2589BD038(255, &qword_27F96C7A8, sub_2589BD09C, MEMORY[0x277CE14B8]);
    sub_2589BD378();
    v1 = sub_258B022D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96C7D0);
    }
  }
}

unint64_t sub_2589BD378()
{
  result = qword_27F96C7D8;
  if (!qword_27F96C7D8)
  {
    sub_2589BD038(255, &qword_27F96C7A8, sub_2589BD09C, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96C7D8);
  }

  return result;
}

void sub_2589BD414(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for IntroPhaseBulletView(uint64_t a1)
{
  result = qword_27F96C7F0;
  if (!qword_27F96C7F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2589BD4D8(uint64_t a1)
{
  sub_2589BD414(319, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_2589BD414(319, &qword_27F96C7E8, type metadata accessor for IntroPhaseSpecs, MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2589BD5F8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_258B00F84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589C0024(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for IntroPhaseBulletView(0);
  sub_2589C0394(v1 + *(v10 + 28), v9, sub_2589C0024);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_258B006A4();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_258B02E94();
    v13 = sub_258B01824();
    sub_258B00354();

    sub_258B00F74();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_2589BD7F4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_258B00F84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589C0360(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for IntroPhaseBulletView(0);
  sub_2589C0394(v1 + *(v10 + 32), v9, sub_2589C0360);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_2589BFFBC(v9, a1, type metadata accessor for IntroPhaseSpecs);
  }

  sub_258B02E94();
  v12 = sub_258B01824();
  sub_258B00354();

  sub_258B00F74();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2589BD9D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v3 = sub_258B01634();
  v58 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v57 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589BF96C(0);
  v55 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589BF8B8(0);
  v51 = v8;
  v60 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v59 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v56 = &v50 - v11;
  sub_2589BF5F0(0);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v50 - v16;
  sub_2589BF9A8(0, &qword_27F96C820, sub_2589BF554, &qword_27F96C878, sub_2589BF554);
  v52 = v18;
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v50 - v20;
  v22 = type metadata accessor for IntroPhaseSpecs(0);
  MEMORY[0x28223BE20](v22);
  v24 = &v50 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589BF4C4(0);
  v26 = MEMORY[0x28223BE20](v25 - 8);
  v54 = &v50 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v29 = &v50 - v28;
  v61 = a1;
  sub_2589BD7F4(v24);
  LOBYTE(a1) = sub_258B00A84();
  sub_2589BFE5C(v24, type metadata accessor for IntroPhaseSpecs);
  v30 = 1;
  if ((a1 & 1) == 0)
  {
    *v21 = sub_258B01194();
    *(v21 + 1) = 0;
    v21[16] = 1;
    sub_2589BFDF0(0, &qword_27F96C8F0, sub_2589BF554, MEMORY[0x277CDF7A0], MEMORY[0x277CDF798]);
    v32 = *(v31 + 44);
    v50 = v3;
    v33 = &v21[v32];
    sub_2589BE080(v17);
    sub_2589C0394(v17, v15, sub_2589BF5F0);
    sub_2589C0394(v15, v33, sub_2589BF5F0);
    sub_2589BF588(0);
    v35 = v33 + *(v34 + 48);
    v3 = v50;
    *v35 = 0;
    *(v35 + 8) = 1;
    sub_2589BFE5C(v17, sub_2589BF5F0);
    sub_2589BFE5C(v15, sub_2589BF5F0);
    sub_2589BFEBC(v21, v29);
    v30 = 0;
  }

  (*(v19 + 56))(v29, v30, 1, v52);
  v36 = sub_258B011A4();
  v37 = v61;
  sub_2589BD7F4(v24);
  sub_2589BFE5C(v24, type metadata accessor for IntroPhaseSpecs);
  *v7 = v36;
  *(v7 + 1) = 0;
  v7[16] = 0;
  sub_2589BFDF0(0, &qword_27F96C8F8, sub_2589BFA3C, MEMORY[0x277CDF7A0], MEMORY[0x277CDF798]);
  sub_2589BE4A8(v37, &v7[*(v38 + 44)]);
  v39 = v57;
  sub_258B01614();
  sub_2589BFC80(&qword_27F96C8D0, sub_2589BF96C, MEMORY[0x277CE1198]);
  v40 = v56;
  sub_258B01D84();
  (*(v58 + 8))(v39, v3);
  sub_2589BFE5C(v7, sub_2589BF96C);
  v41 = v54;
  sub_2589C0394(v29, v54, sub_2589BF4C4);
  v43 = v59;
  v42 = v60;
  v44 = *(v60 + 16);
  v45 = v51;
  v44(v59, v40, v51);
  v46 = v53;
  sub_2589C0394(v41, v53, sub_2589BF4C4);
  sub_2589BF454(0);
  v44((v46 + *(v47 + 48)), v43, v45);
  v48 = *(v42 + 8);
  v48(v40, v45);
  sub_2589BFE5C(v29, sub_2589BF4C4);
  v48(v43, v45);
  return sub_2589BFE5C(v41, sub_2589BF4C4);
}

uint64_t sub_2589BE080@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v2 = sub_258B019F4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v26 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - v6;
  v8 = type metadata accessor for IntroPhaseSpecs(0);
  v9 = MEMORY[0x28223BE20](v8);
  v27 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - v11;
  v13 = sub_258B02094();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v35[0]) = *(v1 + 32);
  Symbol.image.getter();
  (*(v14 + 104))(v16, *MEMORY[0x277CE0FE0], v13);
  v25 = sub_258B020C4();

  (*(v14 + 8))(v16, v13);
  v17 = sub_258B01FC4();
  sub_2589BD7F4(v12);
  sub_258B01944();
  v18 = sub_258B00A84();
  v19 = MEMORY[0x277CE0A10];
  if ((v18 & 1) == 0)
  {
    v19 = MEMORY[0x277CE0A18];
  }

  v20 = v26;
  (*(v3 + 104))(v26, *v19, v2);
  (*(v3 + 32))(v7, v20, v2);
  v21 = sub_258B01A14();

  (*(v3 + 8))(v7, v2);
  sub_2589BFE5C(v12, type metadata accessor for IntroPhaseSpecs);
  KeyPath = swift_getKeyPath();
  v23 = v27;
  sub_2589BD7F4(v27);
  sub_2589BFE5C(v23, type metadata accessor for IntroPhaseSpecs);
  sub_258B024F4();
  sub_258B00854();
  v36 = 1;
  v29 = v25;
  LOWORD(v30) = 1;
  *(&v30 + 1) = v17;
  *&v31 = KeyPath;
  *(&v31 + 1) = v21;
  sub_2589BF624(0);
  sub_2589C0058();
  sub_258B01D64();
  v35[2] = v31;
  v35[3] = v32;
  v35[4] = v33;
  v35[5] = v34;
  v35[0] = v29;
  v35[1] = v30;
  return sub_2589BFE5C(v35, sub_2589BF624);
}

uint64_t sub_2589BE4A8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v187 = a2;
  v196 = sub_258B006A4();
  v199 = *(v196 - 8);
  v3 = MEMORY[0x28223BE20](v196);
  v194 = &v152 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v193 = &v152 - v5;
  v195 = sub_258B02554();
  v198 = *(v195 - 8);
  v6 = MEMORY[0x28223BE20](v195);
  v184 = &v152 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v177 = (&v152 - v8);
  v190 = sub_258B019F4();
  v197 = *(v190 - 8);
  v9 = MEMORY[0x28223BE20](v190);
  v179 = &v152 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v180 = &v152 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v168 = &v152 - v14;
  MEMORY[0x28223BE20](v13);
  v167 = (&v152 - v15);
  sub_2589BFB18(0);
  v191 = v16;
  v17 = MEMORY[0x28223BE20](v16);
  v186 = &v152 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v185 = &v152 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v182 = &v152 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v183 = &v152 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v152 = &v152 - v26;
  MEMORY[0x28223BE20](v25);
  v192 = &v152 - v27;
  sub_2589BF5F0(0);
  v178 = v28;
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = &v152 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for IntroPhaseSpecs(0);
  v33 = MEMORY[0x28223BE20](v32);
  v176 = &v152 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v37 = &v152 - v36;
  MEMORY[0x28223BE20](v35);
  v39 = &v152 - v38;
  sub_2589BFAE4(0);
  v41 = MEMORY[0x28223BE20](v40 - 8);
  v181 = &v152 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v44 = &v152 - v43;
  v45 = a1;
  sub_2589BD7F4(v39);
  v189 = v32;
  LOBYTE(a1) = sub_258B00A84();
  sub_2589BFE5C(v39, type metadata accessor for IntroPhaseSpecs);
  v46 = 1;
  if (a1)
  {
    sub_2589BE080(v31);
    sub_2589BFFBC(v31, v44, sub_2589BF5F0);
    v46 = 0;
  }

  v47 = (*(v29 + 56))(v44, v46, 1, v178);
  v188 = v45;
  v48 = v45[1];
  *&v211 = *v45;
  *(&v211 + 1) = v48;
  v175 = sub_2589BFF58(v47, v49, v50);
  sub_258B003E4();
  v51 = sub_258B01B44();
  v165 = v52;
  v166 = v51;
  v178 = v44;
  v54 = v53;
  v164 = v55;
  v56 = v37;
  sub_2589BD7F4(v37);
  sub_258B01914();
  v57 = sub_258B00A84();
  v58 = *MEMORY[0x277CE0A10];
  v174 = *MEMORY[0x277CE0A10];
  v59 = *MEMORY[0x277CE0A18];
  v173 = *MEMORY[0x277CE0A18];
  if (v57)
  {
    v60 = v58;
  }

  else
  {
    v60 = v59;
  }

  v61 = v197;
  v62 = *(v197 + 104);
  v171 = v197 + 104;
  v172 = v62;
  v63 = v168;
  v64 = v190;
  v62(v168, v60, v190);
  v65 = *(v61 + 32);
  v169 = v61 + 32;
  v170 = v65;
  v66 = v167;
  v65(v167, v63, v64);
  sub_258B01A14();

  v67 = *(v61 + 8);
  v197 = v61 + 8;
  v168 = v67;
  (v67)(v66, v64);
  v167 = type metadata accessor for IntroPhaseSpecs;
  sub_2589BFE5C(v56, type metadata accessor for IntroPhaseSpecs);
  v69 = v165;
  v68 = v166;
  v70 = sub_258B01AE4();
  v72 = v71;
  LOBYTE(v66) = v73;
  sub_2589BFFAC(v68, v69, v54 & 1);

  sub_258B01994();
  v74 = sub_258B01A94();
  v76 = v75;
  LOBYTE(v69) = v77;
  sub_2589BFFAC(v70, v72, v66 & 1);

  LODWORD(v211) = sub_258B014A4();
  v78 = sub_258B01AB4();
  v156 = v79;
  v157 = v78;
  LOBYTE(v70) = v80;
  v155 = v81;
  sub_2589BFFAC(v74, v76, v69 & 1);

  KeyPath = swift_getKeyPath();
  sub_258B02504();
  sub_258B00C94();
  *&v202[55] = v207;
  *&v202[71] = v208;
  *&v202[87] = v209;
  *&v202[103] = v210;
  *&v202[7] = v204;
  *&v202[23] = v205;
  v153 = v70 & 1;
  v203 = v70 & 1;
  *&v202[39] = v206;
  v82 = v193;
  v83 = v188;
  sub_2589BD5F8(v193);
  LODWORD(v166) = *MEMORY[0x277CDF3C0];
  v84 = v199;
  v85 = *(v199 + 104);
  v164 = v199 + 104;
  v165 = v85;
  v86 = v194;
  v87 = v196;
  v85(v194);
  LOBYTE(v76) = sub_258B00694();
  v88 = *(v84 + 8);
  v161 = v88;
  v199 = v84 + 8;
  v88(v86, v87);
  v88(v82, v87);
  v89 = *MEMORY[0x277CE13B8];
  v163 = *MEMORY[0x277CE13B8];
  v90 = *MEMORY[0x277CE13D8];
  v162 = *MEMORY[0x277CE13D8];
  if (v76)
  {
    v91 = v89;
  }

  else
  {
    v91 = v90;
  }

  v92 = v198;
  v93 = *(v198 + 104);
  v159 = v198 + 104;
  v160 = v93;
  v94 = v177;
  v95 = v195;
  v93(v177, v91, v195);
  v96 = *(v191 + 36);
  v97 = *(v92 + 32);
  v198 = v92 + 32;
  v158 = v97;
  v98 = v152;
  v97(&v152[v96], v94, v95);
  v99 = *&v202[80];
  *(v98 + 105) = *&v202[64];
  *(v98 + 121) = v99;
  *(v98 + 137) = *&v202[96];
  v100 = *&v202[16];
  *(v98 + 41) = *v202;
  *(v98 + 57) = v100;
  v101 = *&v202[48];
  *(v98 + 73) = *&v202[32];
  v102 = v156;
  *v98 = v157;
  *(v98 + 8) = v102;
  *(v98 + 16) = v153;
  v103 = KeyPath;
  *(v98 + 24) = v155;
  *(v98 + 32) = v103;
  *(v98 + 40) = 0;
  *(v98 + 152) = *&v202[111];
  *(v98 + 89) = v101;
  v177 = sub_2589BFB18;
  sub_2589BFFBC(v98, v192, sub_2589BFB18);
  v104 = v83[3];
  *&v211 = v83[2];
  *(&v211 + 1) = v104;
  sub_258B003E4();
  v105 = sub_258B01B44();
  v107 = v106;
  v109 = v108;
  v175 = v110;
  v111 = v176;
  sub_2589BD7F4(v176);
  sub_258B01914();
  if (sub_258B00A84())
  {
    v112 = v174;
  }

  else
  {
    v112 = v173;
  }

  v113 = v179;
  v114 = v190;
  v172(v179, v112, v190);
  v115 = v180;
  v170(v180, v113, v114);
  sub_258B01A14();

  (v168)(v115, v114);
  sub_2589BFE5C(v111, v167);
  v116 = sub_258B01AE4();
  v118 = v117;
  v120 = v119;
  v190 = v121;
  sub_2589BFFAC(v105, v107, v109 & 1);

  LODWORD(v211) = sub_258B014B4();
  v122 = sub_258B01AB4();
  v197 = v123;
  LOBYTE(v113) = v124;
  v126 = v125;
  sub_2589BFFAC(v116, v118, v120 & 1);

  v127 = swift_getKeyPath();
  sub_258B02504();
  sub_258B00C94();
  *&v200[55] = v214;
  *&v200[71] = v215;
  *&v200[87] = v216;
  *&v200[103] = v217;
  *&v200[7] = v211;
  *&v200[23] = v212;
  v128 = v113 & 1;
  v201 = v113 & 1;
  *&v200[39] = v213;
  v129 = v193;
  sub_2589BD5F8(v193);
  v130 = v194;
  v131 = v196;
  v165(v194, v166, v196);
  LOBYTE(v113) = sub_258B00694();
  v132 = v130;
  v133 = v161;
  v161(v132, v131);
  v133(v129, v131);
  if (v113)
  {
    v134 = v163;
  }

  else
  {
    v134 = v162;
  }

  v135 = v184;
  v136 = v195;
  v160(v184, v134, v195);
  v137 = v182;
  v158(&v182[*(v191 + 36)], v135, v136);
  v138 = *&v200[80];
  *(v137 + 105) = *&v200[64];
  *(v137 + 121) = v138;
  *(v137 + 137) = *&v200[96];
  v139 = *&v200[16];
  *(v137 + 41) = *v200;
  *(v137 + 57) = v139;
  v140 = *&v200[48];
  *(v137 + 73) = *&v200[32];
  v141 = v197;
  *v137 = v122;
  *(v137 + 8) = v141;
  *(v137 + 16) = v128;
  *(v137 + 24) = v126;
  *(v137 + 32) = v127;
  *(v137 + 40) = 0;
  *(v137 + 152) = *&v200[111];
  *(v137 + 89) = v140;
  v142 = v183;
  sub_2589BFFBC(v137, v183, v177);
  v143 = v178;
  v144 = v181;
  sub_2589C0394(v178, v181, sub_2589BFAE4);
  v145 = v192;
  v146 = v185;
  sub_2589C0394(v192, v185, sub_2589BFB18);
  v147 = v186;
  sub_2589C0394(v142, v186, sub_2589BFB18);
  v148 = v187;
  sub_2589C0394(v144, v187, sub_2589BFAE4);
  sub_2589BFA70(0);
  v150 = v149;
  sub_2589C0394(v146, v148 + *(v149 + 48), sub_2589BFB18);
  sub_2589C0394(v147, v148 + *(v150 + 64), sub_2589BFB18);
  sub_2589BFE5C(v142, sub_2589BFB18);
  sub_2589BFE5C(v145, sub_2589BFB18);
  sub_2589BFE5C(v143, sub_2589BFAE4);
  sub_2589BFE5C(v147, sub_2589BFB18);
  sub_2589BFE5C(v146, sub_2589BFB18);
  return sub_2589BFE5C(v144, sub_2589BFAE4);
}

void sub_2589BF300(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for IntroPhaseSpecs(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589BD7F4(v5);
  sub_2589BFE5C(v5, type metadata accessor for IntroPhaseSpecs);
  *a1 = sub_258B01004();
  *(a1 + 8) = 0x4030000000000000;
  *(a1 + 16) = 0;
  sub_2589BFDF0(0, &qword_27F96C800, sub_2589BF420, MEMORY[0x277CDF740], MEMORY[0x277CDF738]);
  sub_2589BD9D4(v1, a1 + *(v6 + 44));
  v7 = [objc_opt_self() labelColor];
  v8 = sub_258B01F94();
  sub_2589BFCC8(0);
  *(a1 + *(v9 + 36)) = v8;
}

void sub_2589BF454(uint64_t a1)
{
  if (!qword_27F96C810)
  {
    sub_2589BF4C4(255);
    sub_2589BF8B8(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F96C810);
    }
  }
}

void sub_2589BF4C4(uint64_t a1)
{
  if (!qword_27F96C818)
  {
    sub_2589BF9A8(255, &qword_27F96C820, sub_2589BF554, &qword_27F96C878, sub_2589BF554);
    v1 = sub_258B030C4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96C818);
    }
  }
}

void sub_2589BF588(uint64_t a1)
{
  if (!qword_27F96C830)
  {
    sub_2589BF5F0(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F96C830);
    }
  }
}

void sub_2589BF624(uint64_t a1)
{
  if (!qword_27F96C840)
  {
    sub_2589BF6B4(255, &qword_27F96C848, sub_2589BF728, sub_2589BF83C);
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96C840);
    }
  }
}

void sub_2589BF6B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_258B00B04();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2589BF728(uint64_t a1)
{
  if (!qword_27F96C850)
  {
    sub_2589BF7E8(255, &qword_27F96C858, MEMORY[0x277CE1088], MEMORY[0x277CE01B8], MEMORY[0x277CDFAB8]);
    sub_2589BF7E8(255, &qword_27F96C860, MEMORY[0x277CE0F78], MEMORY[0x277CE0F60], MEMORY[0x277CE0730]);
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96C850);
    }
  }
}

void sub_2589BF7E8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2589BF83C(uint64_t a1)
{
  if (!qword_27F96C868)
  {
    sub_2589BFC30(255, &qword_27F96C870, MEMORY[0x277CE0AE0], MEMORY[0x277D83D88]);
    v1 = sub_258B017C4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96C868);
    }
  }
}

void sub_2589BF8B8(uint64_t a1)
{
  if (!qword_27F96C880)
  {
    sub_2589BF96C(255);
    sub_2589BFC80(&qword_27F96C8D0, sub_2589BF96C, MEMORY[0x277CE1198]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96C880);
    }
  }
}

void sub_2589BF9A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_2589BFC80(a4, a5, MEMORY[0x277CE14C0]);
    v8 = sub_258B022D4();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_2589BFA70(uint64_t a1)
{
  if (!qword_27F96C898)
  {
    sub_2589BFAE4(255);
    sub_2589BFB18(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F96C898);
    }
  }
}

void sub_2589BFB4C(uint64_t a1)
{
  if (!qword_27F96C8B0)
  {
    sub_2589BFBAC(255);
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96C8B0);
    }
  }
}

void sub_2589BFBAC(uint64_t a1)
{
  if (!qword_27F96C8B8)
  {
    sub_2589BFC30(255, &qword_27F96C8C0, MEMORY[0x277CDF720], MEMORY[0x277CE0860]);
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96C8B8);
    }
  }
}

void sub_2589BFC30(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_2589BFC80(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2589BFCC8(uint64_t a1)
{
  if (!qword_27F96C8D8)
  {
    sub_2589BFD5C(255);
    sub_2589BF7E8(255, &qword_27F96C860, MEMORY[0x277CE0F78], MEMORY[0x277CE0F60], MEMORY[0x277CE0730]);
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96C8D8);
    }
  }
}

void sub_2589BFD5C(uint64_t a1)
{
  if (!qword_27F96C8E0)
  {
    sub_2589BF420(255);
    sub_2589BFC80(&qword_27F96C8E8, sub_2589BF420, MEMORY[0x277CE14C0]);
    v1 = sub_258B021D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96C8E0);
    }
  }
}

void sub_2589BFDF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    v6 = sub_258B00974();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_2589BFE5C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2589BFEBC(uint64_t a1, uint64_t a2)
{
  sub_2589BF9A8(0, &qword_27F96C820, sub_2589BF554, &qword_27F96C878, sub_2589BF554);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2589BFF58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F96C900;
  if (!qword_27F96C900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96C900);
  }

  return result;
}

uint64_t sub_2589BFFAC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_2589BFFBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_2589C0058()
{
  result = qword_27F96C910;
  if (!qword_27F96C910)
  {
    sub_2589BF624(255);
    sub_2589C00D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96C910);
  }

  return result;
}

unint64_t sub_2589C00D8()
{
  result = qword_27F96C918;
  if (!qword_27F96C918)
  {
    sub_2589BF6B4(255, &qword_27F96C848, sub_2589BF728, sub_2589BF83C);
    sub_2589C01B8();
    sub_2589BFC80(&qword_27F96C938, sub_2589BF83C, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96C918);
  }

  return result;
}

unint64_t sub_2589C01B8()
{
  result = qword_27F96C920;
  if (!qword_27F96C920)
  {
    sub_2589BF728(255);
    sub_2589C0238();
    sub_2589C02DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96C920);
  }

  return result;
}

unint64_t sub_2589C0238()
{
  result = qword_27F96C928;
  if (!qword_27F96C928)
  {
    sub_2589BF7E8(255, &qword_27F96C858, MEMORY[0x277CE1088], MEMORY[0x277CE01B8], MEMORY[0x277CDFAB8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96C928);
  }

  return result;
}

unint64_t sub_2589C02DC()
{
  result = qword_27F96C930;
  if (!qword_27F96C930)
  {
    sub_2589BF7E8(255, &qword_27F96C860, MEMORY[0x277CE0F78], MEMORY[0x277CE0F60], MEMORY[0x277CE0730]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96C930);
  }

  return result;
}

uint64_t sub_2589C0394(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_2589C03FC()
{
  result = qword_27F96C948;
  if (!qword_27F96C948)
  {
    sub_2589BFCC8(255);
    sub_2589BFC80(&qword_27F96C950, sub_2589BFD5C, MEMORY[0x277CE1138]);
    sub_2589C02DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96C948);
  }

  return result;
}

uint64_t StateOfMindEntryView.init(model:presentationStyle:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = sub_2589C0528;
  *(a3 + 8) = result;
  *(a3 + 16) = 0;
  *(a3 + 24) = sub_2589C04F4;
  *(a3 + 32) = 0;
  *(a3 + 40) = v3;
  return result;
}

uint64_t StateOfMindEntryView.init(model:presentationStyle:onCompletion:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a2;
  *a5 = sub_2589C0B18;
  *(a5 + 8) = result;
  *(a5 + 16) = 0;
  *(a5 + 40) = v5;
  *(a5 + 24) = a3;
  *(a5 + 32) = a4;
  return result;
}

uint64_t StateOfMindEntryView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 24);
  v3 = *(v1 + 32);
  v5 = *(v1 + 40);
  type metadata accessor for StateOfMindEntryModel(0);
  sub_2589C0AD0(&qword_27F96C958, type metadata accessor for StateOfMindEntryModel, &protocol conformance descriptor for StateOfMindEntryModel);
  v6 = sub_258B00744();
  sub_2589C07FC();

  sub_258B02114();
  *(a1 + 40) = v18;
  *(a1 + 48) = v19;
  sub_258B02114();
  *(a1 + 56) = v18;
  *(a1 + 64) = v19;
  sub_258B02114();
  *(a1 + 72) = v18;
  *(a1 + 80) = v19;
  v7 = type metadata accessor for StateOfMindEntryView_iOS(0);
  v8 = v7[11];
  *(a1 + v8) = swift_getKeyPath();
  sub_2589C099C(0, &qword_27F96C968, MEMORY[0x277CDD848]);
  swift_storeEnumTagMultiPayload();
  v9 = v7[12];
  *(a1 + v9) = swift_getKeyPath();
  sub_2589C099C(0, &qword_27F96C908, MEMORY[0x277CDF3E0]);
  swift_storeEnumTagMultiPayload();
  v10 = v7[13];
  *(a1 + v10) = swift_getKeyPath();
  sub_2589C099C(0, &qword_27F96C940, type metadata accessor for IntroPhaseSpecs);
  swift_storeEnumTagMultiPayload();

  *a1 = sub_258B00A24();
  *(a1 + 8) = v11;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
  v12 = v6 + OBJC_IVAR____TtC14MentalHealthUI21StateOfMindEntryModel_configuration;
  swift_beginAccess();
  if (*(v12 + 8) == 1)
  {
    v13 = v7[14];
    v14 = 2;
LABEL_6:
    *(a1 + v13) = v14;
    goto LABEL_7;
  }

  v15 = sub_258A16BE4();
  v13 = v7[14];
  if ((v15 & 1) == 0)
  {
    v14 = 1;
    goto LABEL_6;
  }

  *(a1 + v13) = 0;
LABEL_7:
  sub_258B02114();

  *(a1 + 88) = 0;
  *(a1 + 96) = v17;
  return result;
}

void sub_2589C07FC()
{
  if (!qword_27F96C960)
  {
    v0 = sub_258B02CD4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96C960);
    }
  }
}

uint64_t sub_2589C0874(uint64_t a1)
{
  v2 = sub_258B006A4();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_258B00D24();
}

uint64_t sub_2589C0960()
{
  sub_258B00E34();
  type metadata accessor for IntroPhaseSpecs(0);
  return sub_258B00D84();
}

void sub_2589C099C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_258B00714();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2589C0A2C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_2589C0A74(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2589C0AD0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s15EntryNoDataViewVMa(uint64_t a1)
{
  result = qword_27F96C980;
  if (!qword_27F96C980)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2589C0B90(uint64_t a1)
{
  sub_2589C6760(319, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_2589C6760(319, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_2589C6760(319, &qword_27F96C978, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        sub_2589C0D10();
        if (v4 <= 0x3F)
        {
          sub_2589C6974(319, &qword_280DF8948, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_2589C0D10()
{
  result = qword_27F96C990;
  if (!qword_27F96C990)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27F96C990);
  }

  return result;
}

uint64_t sub_2589C0D7C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_258B00F84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277CDF3E0];
  sub_2589C6760(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - v10;
  sub_2589C68F4(v2, &v15 - v10, &qword_27F96C908, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_258B006A4();
    return (*(*(v12 - 8) + 32))(a1, v11, v12);
  }

  else
  {
    sub_258B02E94();
    v14 = sub_258B01824();
    sub_258B00354();

    sub_258B00F74();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_2589C0FA0@<X0>(uint64_t a1@<X8>)
{
  v33[4] = a1;
  sub_2589C4B6C(0);
  v33[5] = v2;
  MEMORY[0x28223BE20](v2);
  v4 = v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589C6DBC(0, &qword_27F96CAA8, sub_2589C5578, sub_2589C4B6C, MEMORY[0x277CE0330]);
  v33[3] = v5;
  MEMORY[0x28223BE20](v5);
  v7 = v33 - v6;
  sub_2589C5578(0);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for StateOfMindTimeline.Styles(0);
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13);
  v16 = v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s15EntryNoDataViewVMa(0);
  sub_258AC1060(v16);
  v17 = v16[*(v14 + 32)];
  v18 = sub_2589C6C68(v16, type metadata accessor for StateOfMindTimeline.Styles);
  if (v17 == 1)
  {
    v33[2] = v33;
    MEMORY[0x28223BE20](v18);
    v33[-2] = v1;
    sub_2589C5710(0);
    v33[1] = v19;
    sub_2589C5300(255, &qword_27F96CAC0, sub_2589C5878, &qword_27F96CB70, MEMORY[0x277CE0718]);
    v21 = v20;
    sub_2589C5FD0(255);
    v23 = v22;
    v24 = sub_2589C633C();
    sub_2589C60B0(255);
    v26 = v25;
    sub_2589C6164(255);
    v28 = v27;
    v29 = sub_2589C6A98(&qword_27F96CBA8, sub_2589C6164, MEMORY[0x277CDD7A8]);
    v34 = v28;
    v35 = v29;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v34 = v26;
    v35 = OpaqueTypeConformance2;
    v31 = swift_getOpaqueTypeConformance2();
    v34 = v21;
    v35 = v23;
    v36 = v24;
    v37 = v31;
    swift_getOpaqueTypeConformance2();
    sub_258B00B24();
    (*(v10 + 16))(v7, v12, v9);
    swift_storeEnumTagMultiPayload();
    sub_2589C6A98(&qword_27F96CBC8, sub_2589C5578, MEMORY[0x277CDDA18]);
    sub_2589C6458();
    sub_258B012A4();
    return (*(v10 + 8))(v12, v9);
  }

  else
  {
    sub_2589C1484(v4);
    sub_2589C6C00(v4, v7, sub_2589C4B6C);
    swift_storeEnumTagMultiPayload();
    sub_2589C6A98(&qword_27F96CBC8, sub_2589C5578, MEMORY[0x277CDDA18]);
    sub_2589C6458();
    sub_258B012A4();
    return sub_2589C6C68(v4, sub_2589C4B6C);
  }
}

id sub_2589C1484@<X0>(uint64_t a1@<X8>)
{
  v118 = a1;
  v127 = _s6StylesV6NoDataVMa(0) - 8;
  v2 = MEMORY[0x28223BE20](v127);
  v129 = v113 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v5 = v113 - v4;
  v6 = type metadata accessor for StateOfMindTimeline.Styles(0) - 8;
  v121 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v117 = v113 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v131 = v113 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v130 = v113 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v126 = v113 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = v113 - v15;
  sub_2589C4D68(0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = v113 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589C4D40(0);
  v21 = v20 - 8;
  MEMORY[0x28223BE20](v20);
  v122 = v113 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589C4D18(0);
  v125 = v23 - 8;
  MEMORY[0x28223BE20](v23 - 8);
  v124 = v113 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589C4CF0(0);
  *&v128 = v25 - 8;
  MEMORY[0x28223BE20](v25 - 8);
  v123 = v113 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589C4BFC(0);
  v114 = v27;
  MEMORY[0x28223BE20](v27);
  v116 = (v113 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2589C4BB4(0);
  v115 = v29;
  MEMORY[0x28223BE20](v29);
  v132 = v113 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v19 = sub_258B01194();
  *(v19 + 1) = 0;
  v19[16] = 0;
  sub_2589C65F0(0, &qword_27F96CC30, sub_2589C4DFC);
  v32 = &v19[*(v31 + 44)];
  v120 = v1;
  sub_2589C36B4(v1, v32);
  v33 = sub_258B018D4();
  v34 = _s15EntryNoDataViewVMa(0);
  v35 = *(v34 + 20);
  sub_258AC1060(v16);
  sub_2589C6C00(&v16[*(v6 + 44)], v5, _s6StylesV6NoDataVMa);
  v119 = type metadata accessor for StateOfMindTimeline.Styles;
  sub_2589C6C68(v16, type metadata accessor for StateOfMindTimeline.Styles);
  sub_258B00A84();
  sub_2589C6C68(v5, _s6StylesV6NoDataVMa);
  sub_258B00654();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v44 = v19;
  v45 = v34;
  v46 = v122;
  sub_2589C6654(v44, v122, sub_2589C4D68);
  v47 = v46 + *(v21 + 44);
  *v47 = v33;
  *(v47 + 8) = v37;
  *(v47 + 16) = v39;
  *(v47 + 24) = v41;
  *(v47 + 32) = v43;
  *(v47 + 40) = 0;
  LOBYTE(v21) = sub_258B01864();
  v48 = v120;
  v49 = v126;
  sub_258AC1060(v126);
  v50 = v49 + *(v121 + 44);
  v51 = v49;
  v52 = v129;
  sub_2589C6C00(v50, v129, _s6StylesV6NoDataVMa);
  v53 = v119;
  sub_2589C6C68(v51, v119);
  sub_258B00A84();
  v54 = v123;
  sub_2589C6C68(v52, _s6StylesV6NoDataVMa);
  sub_258B00654();
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v63 = v124;
  sub_2589C6654(v46, v124, sub_2589C4D40);
  v64 = v63 + *(v125 + 44);
  *v64 = v21;
  *(v64 + 8) = v56;
  *(v64 + 16) = v58;
  *(v64 + 24) = v60;
  *(v64 + 32) = v62;
  *(v64 + 40) = 0;
  v65 = v48;
  v66 = v130;
  sub_258AC1060(v130);
  v67 = v53;
  sub_2589C6C68(v66, v53);
  sub_258B024F4();
  sub_258B00C94();
  sub_2589C6654(v63, v54, sub_2589C4D18);
  v68 = (v54 + *(v128 + 44));
  v69 = v141;
  v68[4] = v140;
  v68[5] = v69;
  v68[6] = v142;
  v70 = v137;
  *v68 = v136;
  v68[1] = v70;
  v71 = v139;
  v68[2] = v138;
  v68[3] = v71;
  v72 = v65;
  v73 = (v65 + *(v45 + 32));
  v75 = *v73;
  v74 = v73[1];
  v76 = v72;
  v77 = v35;
  v78 = v131;
  sub_258AC1060(v131);
  sub_2589C6C68(v78, v67);
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v80 = result;
    v81 = [result isiPad];

    v82 = 462.0;
    if (v81)
    {
      v82 = 490.0;
    }

    v83 = *(v76 + *(v45 + 36));
    v84 = v116;
    *v116 = v82;
    *(v84 + 8) = v82;
    *(v84 + 16) = 0;
    *(v84 + 24) = v75;
    *(v84 + 32) = v74;
    v85 = v114;
    sub_2589C6C00(v54, v84 + *(v114 + 60), sub_2589C4CF0);
    v86 = (v84 + *(v85 + 64));
    *v86 = swift_getKeyPath();
    sub_2589C6760(0, &qword_27F96CC08, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF458]);
    swift_storeEnumTagMultiPayload();
    v87 = _s14ShowMoreButtonVMa(0);
    v88 = (v86 + *(v87 + 20));
    *v88 = v75;
    v88[1] = v74;
    *(v86 + *(v87 + 24)) = v83;
    v89 = v84 + *(v85 + 68);
    v133 = 0;
    swift_retain_n();
    sub_258B003E4();
    sub_258B02114();
    v90 = v135;
    *v89 = v134;
    *(v89 + 8) = v90;
    sub_2589C6C68(v54, sub_2589C4CF0);
    v130 = sub_258B024F4();
    v129 = v91;
    v92 = (v132 + *(v115 + 36));
    v113[1] = v77;
    v93 = v117;
    sub_258AC1060(v117);
    sub_2589C6C68(v93, type metadata accessor for StateOfMindTimeline.Styles);
    v131 = sub_258B00C34();
    v94 = *(v131 + 20);
    v95 = *MEMORY[0x277CE0118];
    v96 = sub_258B010C4();
    v97 = *(*(v96 - 8) + 104);
    v97(&v92[v94], v95, v96);
    __asm { FMOV            V0.2D, #26.0 }

    v128 = _Q0;
    *v92 = _Q0;
    v103 = sub_2589C3068();
    sub_2589C5300(0, &qword_27F96CA70, MEMORY[0x277CDFC08], &qword_27F96CA78, MEMORY[0x277CE0730]);
    *&v92[*(v104 + 36)] = v103;
    sub_2589C5264(0);
    v106 = &v92[*(v105 + 36)];
    v107 = v129;
    *v106 = v130;
    *(v106 + 1) = v107;
    v108 = v132;
    sub_2589C6654(v84, v132, sub_2589C4BFC);
    sub_258AC1060(v93);
    sub_2589C6C68(v93, type metadata accessor for StateOfMindTimeline.Styles);
    sub_2589C4B6C(0);
    v110 = v118;
    v111 = (v118 + *(v109 + 36));
    v97(&v111[*(v131 + 20)], v95, v96);
    *v111 = v128;
    sub_2589C54E4(0);
    *&v111[*(v112 + 36)] = 256;
    return sub_2589C6654(v108, v110, sub_2589C4BB4);
  }

  else
  {
    __break(1u);
  }

  return result;
}