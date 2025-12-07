uint64_t sub_258AB96C0@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_258B01194();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_258AB9704(0);
  return sub_258AB8478(v2, (a2 + *(v4 + 44)));
}

void sub_258AB9704(uint64_t a1)
{
  if (!qword_27F970DD0)
  {
    sub_258AB979C(255, &qword_27F970DD8, sub_258AB9800, MEMORY[0x277CE14B8]);
    v1 = sub_258B00974();
    if (!v2)
    {
      atomic_store(v1, &qword_27F970DD0);
    }
  }
}

void sub_258AB979C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_258AB9800(uint64_t a1)
{
  if (!qword_27F970DE0)
  {
    sub_258AB9898(255);
    sub_258AB98CC(255);
    sub_258AB99AC(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_27F970DE0);
    }
  }
}

void sub_258AB98F4(uint64_t a1)
{
  if (!qword_27F970DF0)
  {
    sub_258AB9B08(255, &qword_27F96D1F8, MEMORY[0x277CE0BD8], MEMORY[0x277CDFC50], MEMORY[0x277CDFAB8]);
    sub_2589BFC30(255, &qword_27F96C8C0, MEMORY[0x277CDF720], MEMORY[0x277CE0860]);
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F970DF0);
    }
  }
}

void sub_258AB99E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
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

void sub_258AB9A7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_258AB9B08(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t sub_258AB9BC0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_258AB9C20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_258AB9C88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258AB9CF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_258AB9D38(uint64_t a1)
{
  if (!qword_27F970E18)
  {
    sub_258AB979C(255, &qword_27F970DD8, sub_258AB9800, MEMORY[0x277CE14B8]);
    sub_258AB9DCC();
    v1 = sub_258B022D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F970E18);
    }
  }
}

unint64_t sub_258AB9DCC()
{
  result = qword_27F970E20;
  if (!qword_27F970E20)
  {
    sub_258AB979C(255, &qword_27F970DD8, sub_258AB9800, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970E20);
  }

  return result;
}

uint64_t _s5EntryVMa(uint64_t a1)
{
  result = qword_27F970E28;
  if (!qword_27F970E28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258AB9EC8(uint64_t a1)
{
  result = sub_258B000C4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

int *sub_258AB9F98@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_258B000C4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 UUID];
  sub_258B000B4();

  v9 = [a1 reflectiveInterval];
  v32 = v5;
  v33 = v4;
  if (v9 == 2)
  {
    [a1 valenceClassification];
    [a1 reflectiveInterval];
    v10 = HKUILocalizedStringForValenceClassificationAndReflectiveInterval();
  }

  else
  {
    if (v9 != 1)
    {
      v31 = 0;
      v13 = 0xE000000000000000;
      goto LABEL_7;
    }

    [a1 valenceClassification];
    v10 = HKUILocalizedStringForValenceClassification();
  }

  v11 = v10;
  v31 = sub_258B02B14();
  v13 = v12;

LABEL_7:
  v14 = sub_258ABA3E0();
  v16 = v15;
  v17 = sub_258ABA5F4();
  v19 = v18;
  v20 = sub_258ABA890();
  v22 = v21;
  [a1 valence];
  v24 = v23;

  (*(v32 + 32))(a2, v7, v33);
  result = _s5EntryVMa(0);
  v26 = (a2 + result[5]);
  *v26 = v31;
  v26[1] = v13;
  v27 = (a2 + result[6]);
  *v27 = v14;
  v27[1] = v16;
  v28 = (a2 + result[7]);
  *v28 = v17;
  v28[1] = v19;
  v29 = (a2 + result[8]);
  *v29 = v20;
  v29[1] = v22;
  *(a2 + result[9]) = v24;
  return result;
}

uint64_t sub_258ABA1B8(uint64_t a1)
{
  sub_258B000C4();
  sub_258ABB140(&qword_27F96EAB0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_258B02A24();
  v2 = _s5EntryVMa(0);
  sub_258B02B74();
  sub_258B02B74();
  sub_258B02B74();
  sub_258B02B74();
  v3 = *(v1 + *(v2 + 36));
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  return MEMORY[0x259C93B40](*&v3);
}

uint64_t sub_258ABA2B0()
{
  sub_258B03514();
  sub_258ABA1B8(v1);
  return sub_258B03554();
}

uint64_t sub_258ABA2F4(uint64_t a1)
{
  sub_258B03514();
  sub_258ABA1B8(v2);
  return sub_258B03554();
}

uint64_t sub_258ABA330@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_258B000C4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_258ABA3E0()
{
  v0 = sub_258B02E44();
  v1 = *(v0 + 16);
  if (v1)
  {
    v12 = MEMORY[0x277D84F90];
    sub_258AA91EC(0, v1, 0);
    v2 = 0;
    while (v2 < *(v0 + 16))
    {
      v3 = HKUILocalizedStringForStateOfMindLabel();
      v4 = sub_258B02B14();
      v6 = v5;

      v8 = *(v12 + 16);
      v7 = *(v12 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_258AA91EC((v7 > 1), v8 + 1, 1);
      }

      ++v2;
      *(v12 + 16) = v8 + 1;
      v9 = v12 + 16 * v8;
      *(v9 + 32) = v4;
      *(v9 + 40) = v6;
      if (v1 == v2)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_10;
  }

LABEL_7:

  if (qword_27F96C240 != -1)
  {
LABEL_10:
    swift_once();
  }

  sub_258AFFD94();
  sub_2589FCE08();
  sub_258ABB140(&qword_280DF8940, sub_2589FCE08, MEMORY[0x277D83958]);
  v10 = sub_258B02A34();

  return v10;
}

uint64_t sub_258ABA5F4()
{
  sub_258ABAFEC(0, &qword_27F9702D0, MEMORY[0x277CC9788], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v21 - v2;
  v4 = *(sub_258B02E54() + 16);

  v5 = [v0 context];
  if (!v5)
  {
    if (!v4)
    {
      return 0;
    }

    return sub_258ABACCC(v5);
  }

  v6 = v5;
  v7 = sub_258B02B14();
  v9 = v8;

  if (!v4)
  {
    if (v9)
    {
      return v7;
    }

    else
    {
      return 0;
    }
  }

  if (!v9)
  {
    return sub_258ABACCC(v5);
  }

  v10 = sub_258B000E4();
  (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
  sub_258ABAFEC(0, &qword_27F9702D8, sub_258ABB050, MEMORY[0x277D84560]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_258B2BE60;
  v12 = sub_258ABACCC(v11);
  v14 = v13;
  v15 = MEMORY[0x277D837D0];
  *(v11 + 56) = MEMORY[0x277D837D0];
  v17 = sub_258A829A4(v12, v13, v16);
  *(v11 + 32) = v12;
  *(v11 + 40) = v14;
  *(v11 + 96) = v15;
  *(v11 + 104) = v17;
  *(v11 + 64) = v17;
  *(v11 + 72) = v7;
  *(v11 + 80) = v9;
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  v18 = sub_258AFFD94();
  if (*(v11 + 16))
  {
    v19 = sub_258B02B24();
  }

  else
  {
    v19 = v18;
  }

  sub_258ABB0B4(v3);
  return v19;
}

uint64_t sub_258ABA890()
{
  v1 = v0;
  v2 = sub_258AFFF74();
  v32 = *(v2 - 8);
  v33 = v2;
  MEMORY[0x28223BE20](v2);
  v31 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_258AFFF24();
  v29 = *(v4 - 8);
  v30 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_258AFFF34();
  v7 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_258AFFFD4();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v26 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v26 - v18;
  v28 = sub_258B00084();
  v26 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v21 = &v26 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = [v1 startDate];
  sub_258B00034();

  MEMORY[0x259C90120]();
  sub_258AFFF14();
  sub_258AFFF04();
  (*(v29 + 8))(v6, v30);
  sub_258AFFEC4();
  (*(v7 + 8))(v9, v27);
  v23 = *(v11 + 8);
  v23(v14, v10);
  v24 = v31;
  sub_258AFFF64();
  sub_258AFFFB4();
  (*(v32 + 8))(v24, v33);
  v23(v17, v10);
  sub_258ABB140(&qword_27F9702C8, MEMORY[0x277CC9428], MEMORY[0x277CC9420]);
  sub_258B00064();
  v23(v19, v10);
  (*(v26 + 8))(v21, v28);
  return v34;
}

uint64_t sub_258ABACCC(uint64_t a1)
{
  v1 = sub_258B02E54();
  v2 = *(v1 + 16);
  if (v2)
  {
    v13 = MEMORY[0x277D84F90];
    sub_258AA91EC(0, v2, 0);
    v3 = 0;
    while (v3 < *(v1 + 16))
    {
      v4 = HKUILocalizedStringForStateOfMindDomain();
      v5 = sub_258B02B14();
      v7 = v6;

      v9 = *(v13 + 16);
      v8 = *(v13 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_258AA91EC((v8 > 1), v9 + 1, 1);
      }

      ++v3;
      *(v13 + 16) = v9 + 1;
      v10 = v13 + 16 * v9;
      *(v10 + 32) = v5;
      *(v10 + 40) = v7;
      if (v2 == v3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_10;
  }

LABEL_7:

  if (qword_27F96C240 != -1)
  {
LABEL_10:
    swift_once();
  }

  sub_258AFFD94();
  sub_2589FCE08();
  sub_258ABB140(&qword_280DF8940, sub_2589FCE08, MEMORY[0x277D83958]);
  v11 = sub_258B02A34();

  return v11;
}

BOOL sub_258ABAEE0(uint64_t a1, uint64_t a2)
{
  if (sub_258B000A4() & 1) != 0 && ((v4 = _s5EntryVMa(0), v5 = v4[5], v6 = *(a1 + v5), v7 = *(a1 + v5 + 8), v8 = (a2 + v5), v6 == *v8) ? (v9 = v7 == v8[1]) : (v9 = 0), (v9 || (sub_258B03454()) && ((v10 = v4[6], v11 = *(a1 + v10), v12 = *(a1 + v10 + 8), v13 = (a2 + v10), v11 == *v13) ? (v14 = v12 == v13[1]) : (v14 = 0), (v14 || (sub_258B03454()) && ((v15 = v4[7], v16 = *(a1 + v15), v17 = *(a1 + v15 + 8), v18 = (a2 + v15), v16 == *v18) ? (v19 = v17 == v18[1]) : (v19 = 0), (v19 || (sub_258B03454()) && ((v20 = v4[8], v21 = *(a1 + v20), v22 = *(a1 + v20 + 8), v23 = (a2 + v20), v21 == *v23) ? (v24 = v22 == v23[1]) : (v24 = 0), v24 || (sub_258B03454())))))
  {
    return *(a1 + v4[9]) == *(a2 + v4[9]);
  }

  else
  {
    return 0;
  }
}

void sub_258ABAFEC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_258ABB050()
{
  result = qword_27F9702E0;
  if (!qword_27F9702E0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F9702E0);
  }

  return result;
}

uint64_t sub_258ABB0B4(uint64_t a1)
{
  sub_258ABAFEC(0, &qword_27F9702D0, MEMORY[0x277CC9788], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_258ABB140(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_258ABB19C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t _s16EntryMomentsViewVMa(uint64_t a1)
{
  result = qword_27F970E40;
  if (!qword_27F970E40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258ABB260(uint64_t a1)
{
  sub_258ABB19C(319, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_258ABB19C(319, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_258ABB19C(319, &qword_27F96EAD0, _s5EntryVMa, MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        sub_258ABC584(319, &qword_280DF8948, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_258ABB3E4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_258B00F84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258ABB19C(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_2589DC538(v2, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_258B006A4();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_258B02E94();
    v13 = sub_258B01824();
    sub_258B00354();

    sub_258B00F74();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_258ABB5F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v122 = a2;
  v3 = MEMORY[0x277CDF928];
  sub_258ABC694(0, &qword_27F970E98, _s20EntryMomentsDataViewVMa, MEMORY[0x277CDF928]);
  v121 = v4;
  MEMORY[0x28223BE20](v4);
  v97 = (&v95 - v5);
  sub_258ABC5D4(0, &qword_27F970EA0, MEMORY[0x277CE0330]);
  v116 = v6;
  MEMORY[0x28223BE20](v6);
  v118 = &v95 - v7;
  sub_258ABC694(0, &qword_27F970E90, _s21EntryMomentsEmptyViewVMa, v3);
  v117 = v8;
  MEMORY[0x28223BE20](v8);
  v96 = (&v95 - v9);
  sub_258ABC5D4(0, &qword_27F970E88, MEMORY[0x277CE0338]);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v120 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v119 = &v95 - v13;
  v14 = sub_258B02554();
  v111 = *(v14 - 8);
  v112 = v14;
  MEMORY[0x28223BE20](v14);
  v110 = &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_258B006A4();
  v105 = *(v109 - 8);
  v16 = MEMORY[0x28223BE20](v109);
  v108 = &v95 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v107 = &v95 - v18;
  v19 = sub_258B019F4();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v95 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for StateOfMindTimeline.Styles(0);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v95 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258ABC41C(0);
  v106 = v26;
  MEMORY[0x28223BE20](v26);
  v28 = &v95 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258ABC3E8(0);
  v30 = MEMORY[0x28223BE20](v29 - 8);
  v115 = &v95 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v123 = &v95 - v32;
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  v124 = sub_258AFFD94();
  v125 = v33;
  sub_2589BFF58(v124, v33, v34);
  v104 = sub_258B01B44();
  v103 = v35;
  v37 = v36;
  v102 = v38;
  KeyPath = swift_getKeyPath();
  v100 = v37 & 1;
  LOBYTE(v124) = v37 & 1;
  v39 = _s16EntryMomentsViewVMa(0);
  v40 = *(v39 + 20);
  sub_258AC1060(v25);
  sub_258ABCD3C(v25, type metadata accessor for StateOfMindTimeline.Styles);
  sub_258B01A34();
  (*(v20 + 104))(v22, *MEMORY[0x277CE0A10], v19);
  v99 = sub_258B01A14();

  (*(v20 + 8))(v22, v19);
  v98 = swift_getKeyPath();
  v113 = v40;
  sub_258AC1060(v25);
  v114 = v25;
  sub_258ABCD3C(v25, type metadata accessor for StateOfMindTimeline.Styles);
  v41 = [objc_opt_self() secondaryLabelColor];
  v42 = sub_258B01F94();
  v43 = v107;
  sub_258ABB3E4(v107);
  v44 = v105;
  v46 = v108;
  v45 = v109;
  (*(v105 + 104))(v108, *MEMORY[0x277CDF3D0], v109);
  v47 = sub_258B00694();
  v48 = *(v44 + 8);
  v48(v46, v45);
  v48(v43, v45);
  v50 = v111;
  v49 = v112;
  v51 = MEMORY[0x277CE13B0];
  if ((v47 & 1) == 0)
  {
    v51 = MEMORY[0x277CE13B8];
  }

  v52 = v110;
  (*(v111 + 104))(v110, *v51, v112);
  (*(v50 + 32))(&v28[*(v106 + 36)], v52, v49);
  v53 = v103;
  *v28 = v104;
  *(v28 + 1) = v53;
  v28[16] = v100;
  v54 = KeyPath;
  *(v28 + 3) = v102;
  *(v28 + 4) = v54;
  *(v28 + 20) = 0;
  v28[42] = 1;
  v55 = v99;
  *(v28 + 6) = v98;
  *(v28 + 7) = v55;
  *(v28 + 8) = v42;
  v56 = v39;
  v57 = *(a1 + *(v39 + 28));
  sub_258B003E4();
  v58 = v57;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v58 = sub_258A74828(0, *(v57 + 16) + 1, 1, v57);
  }

  v60 = *(v58 + 2);
  v59 = *(v58 + 3);
  if (v60 >= v59 >> 1)
  {
    v58 = sub_258A74828((v59 > 1), v60 + 1, 1, v58);
  }

  *(v58 + 2) = v60 + 1;
  v61 = &v58[16 * v60];
  *(v61 + 4) = 0x6E6F6974706143;
  *(v61 + 5) = 0xE700000000000000;
  v124 = &unk_2869D4670;
  v62 = sub_258B003E4();
  sub_2589FC8C8(v62);
  sub_258ABC584(0, &qword_280DF8948, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_2589C6824();
  sub_258B02A34();

  sub_258ABC750();
  sub_258B01DD4();

  sub_258ABCD3C(v28, sub_258ABC41C);
  v63 = *(a1 + *(v56 + 24));
  if (*(v63 + 16))
  {
    v64 = swift_getKeyPath();
    v65 = v97;
    *v97 = v64;
    sub_258ABB19C(0, &qword_27F96CC08, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF458]);
    swift_storeEnumTagMultiPayload();
    v66 = _s20EntryMomentsDataViewVMa(0);
    *(v65 + *(v66 + 20)) = v63;
    *(v65 + *(v66 + 24)) = v57;
    sub_258B003E4();
    sub_258B003E4();
    v67 = sub_258B01884();
    v68 = v114;
    sub_258AC1060(v114);
    sub_258ABCD3C(v68, type metadata accessor for StateOfMindTimeline.Styles);
    sub_258B00654();
    v69 = v65 + *(v121 + 36);
    *v69 = v67;
    *(v69 + 8) = v70;
    *(v69 + 16) = v71;
    *(v69 + 24) = v72;
    *(v69 + 32) = v73;
    *(v69 + 40) = 0;
    v74 = &qword_27F970E98;
    v75 = _s20EntryMomentsDataViewVMa;
    sub_258ABCD9C(v65, v118, &qword_27F970E98, _s20EntryMomentsDataViewVMa);
  }

  else
  {
    v77 = swift_getKeyPath();
    v65 = v96;
    *v96 = v77;
    v78 = MEMORY[0x277CDF458];
    sub_258ABB19C(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
    swift_storeEnumTagMultiPayload();
    v79 = _s21EntryMomentsEmptyViewVMa(0);
    v80 = *(v79 + 20);
    *(v65 + v80) = swift_getKeyPath();
    sub_258ABB19C(0, &qword_27F96CC08, type metadata accessor for StateOfMindTimeline.Styles, v78);
    swift_storeEnumTagMultiPayload();
    *(v65 + *(v79 + 24)) = v57;
    sub_258B003E4();
    v81 = sub_258B01884();
    v82 = v114;
    sub_258AC1060(v114);
    sub_258ABCD3C(v82, type metadata accessor for StateOfMindTimeline.Styles);
    sub_258B00654();
    v83 = v118;
    v84 = v65 + *(v117 + 36);
    *v84 = v81;
    *(v84 + 8) = v85;
    *(v84 + 16) = v86;
    *(v84 + 24) = v87;
    *(v84 + 32) = v88;
    *(v84 + 40) = 0;
    v74 = &qword_27F970E90;
    v75 = _s21EntryMomentsEmptyViewVMa;
    sub_258ABCD9C(v65, v83, &qword_27F970E90, _s21EntryMomentsEmptyViewVMa);
  }

  swift_storeEnumTagMultiPayload();
  sub_258ABC9D4();
  sub_258ABCAA8();
  v76 = v119;
  sub_258B012A4();
  sub_258ABCB7C(v65, v74, v75);
  v89 = v123;
  v90 = v115;
  sub_258ABCBE0(v123, v115);
  v91 = v120;
  sub_258ABCC44(v76, v120);
  v92 = v122;
  sub_258ABCBE0(v90, v122);
  sub_258ABC35C(0);
  sub_258ABCC44(v91, v92 + *(v93 + 48));
  sub_258ABCCC4(v76);
  sub_258ABCD3C(v89, sub_258ABC3E8);
  sub_258ABCCC4(v91);
  return sub_258ABCD3C(v90, sub_258ABC3E8);
}

uint64_t sub_258ABC280@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_258B011A4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_258ABC2C4(0);
  return sub_258ABB5F0(v2, a2 + *(v4 + 44));
}

void sub_258ABC2C4(uint64_t a1)
{
  if (!qword_27F970E50)
  {
    sub_258ABB19C(255, &qword_27F970E58, sub_258ABC35C, MEMORY[0x277CE14B8]);
    v1 = sub_258B00974();
    if (!v2)
    {
      atomic_store(v1, &qword_27F970E50);
    }
  }
}

void sub_258ABC35C(uint64_t a1)
{
  if (!qword_27F970E60)
  {
    sub_258ABC3E8(255);
    sub_258ABC5D4(255, &qword_27F970E88, MEMORY[0x277CE0338]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F970E60);
    }
  }
}

void sub_258ABC484(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
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

void sub_258ABC4F8(uint64_t a1)
{
  if (!qword_27F970E80)
  {
    sub_258ABC694(255, &qword_27F96ECF8, sub_2589BFBAC, MEMORY[0x277CDFC50]);
    sub_2589BF83C(255);
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F970E80);
    }
  }
}

void sub_258ABC584(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_258ABC5D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = MEMORY[0x277CDF928];
    sub_258ABC694(255, &qword_27F970E90, _s21EntryMomentsEmptyViewVMa, MEMORY[0x277CDF928]);
    v8 = v7;
    sub_258ABC694(255, &qword_27F970E98, _s20EntryMomentsDataViewVMa, v6);
    v10 = a3(a1, v8, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_258ABC694(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_258ABC6F8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_258B00E84();
  *a1 = result;
  return result;
}

unint64_t sub_258ABC750()
{
  result = qword_27F970EA8;
  if (!qword_27F970EA8)
  {
    sub_258ABC41C(255);
    sub_258ABC7D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970EA8);
  }

  return result;
}

unint64_t sub_258ABC7D0()
{
  result = qword_27F970EB0;
  if (!qword_27F970EB0)
  {
    sub_258ABC450(255);
    sub_258ABC880();
    sub_258ABCE14(&qword_27F96C930, sub_258A563B0, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970EB0);
  }

  return result;
}

unint64_t sub_258ABC880()
{
  result = qword_27F970EB8;
  if (!qword_27F970EB8)
  {
    sub_258ABC4F8(255);
    sub_258ABC930();
    sub_258ABCE14(&qword_27F96C938, sub_2589BF83C, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970EB8);
  }

  return result;
}

unint64_t sub_258ABC930()
{
  result = qword_27F970EC0;
  if (!qword_27F970EC0)
  {
    sub_258ABC694(255, &qword_27F96ECF8, sub_2589BFBAC, MEMORY[0x277CDFC50]);
    sub_2589DC82C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970EC0);
  }

  return result;
}

unint64_t sub_258ABC9D4()
{
  result = qword_27F970EC8;
  if (!qword_27F970EC8)
  {
    sub_258ABC694(255, &qword_27F970E90, _s21EntryMomentsEmptyViewVMa, MEMORY[0x277CDF928]);
    sub_258ABCE14(&qword_27F970ED0, _s21EntryMomentsEmptyViewVMa, &unk_258B31CE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970EC8);
  }

  return result;
}

unint64_t sub_258ABCAA8()
{
  result = qword_27F970ED8;
  if (!qword_27F970ED8)
  {
    sub_258ABC694(255, &qword_27F970E98, _s20EntryMomentsDataViewVMa, MEMORY[0x277CDF928]);
    sub_258ABCE14(&qword_27F970EE0, _s20EntryMomentsDataViewVMa, &unk_258B2F798);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970ED8);
  }

  return result;
}

uint64_t sub_258ABCB7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_258ABC694(0, a2, a3, MEMORY[0x277CDF928]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_258ABCBE0(uint64_t a1, uint64_t a2)
{
  sub_258ABC3E8(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258ABCC44(uint64_t a1, uint64_t a2)
{
  sub_258ABC5D4(0, &qword_27F970E88, MEMORY[0x277CE0338]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258ABCCC4(uint64_t a1)
{
  sub_258ABC5D4(0, &qword_27F970E88, MEMORY[0x277CE0338]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_258ABCD3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_258ABCD9C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_258ABC694(0, a3, a4, MEMORY[0x277CDF928]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_258ABCE14(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_258ABCE5C(uint64_t a1)
{
  if (!qword_27F970EF0)
  {
    sub_258ABB19C(255, &qword_27F970E58, sub_258ABC35C, MEMORY[0x277CE14B8]);
    sub_258ABCEF0();
    v1 = sub_258B022D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F970EF0);
    }
  }
}

unint64_t sub_258ABCEF0()
{
  result = qword_27F970EF8;
  if (!qword_27F970EF8)
  {
    sub_258ABB19C(255, &qword_27F970E58, sub_258ABC35C, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970EF8);
  }

  return result;
}

uint64_t sub_258ABCF78(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC14MentalHealthUI26StateOfMindCalendarDayCell_day;
  swift_beginAccess();
  sub_258ABEFE8(a1, v3);
  swift_endAccess();
  v4 = type metadata accessor for StateOfMindCalendarDay(0);
  v5 = 0;
  if (!(*(*(v4 - 8) + 48))(v3, 1, v4))
  {
    sub_258B003E4();
    v5 = sub_258B02AD4();
  }

  [v1 setAccessibilityIdentifier_];

  [v1 setNeedsUpdateConfiguration];
  return sub_258ABEF88(a1, sub_258ABE740);
}

uint64_t sub_258ABD260(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_258ABE77C(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = a3;
  sub_258ABE82C(0);
  sub_258ABEE6C(&qword_27F970F78, sub_258ABE82C, MEMORY[0x277CE1198]);
  sub_258B014E4();
  sub_258B01874();
  v12[3] = v5;
  v12[4] = sub_258ABEE6C(&qword_27F970F80, sub_258ABE77C, MEMORY[0x277CDE1C0]);
  __swift_allocate_boxed_opaque_existential_1(v12);
  sub_258B014D4();
  (*(v6 + 8))(v8, v5);
  return MEMORY[0x259C935E0](v12);
}

uint64_t sub_258ABD400@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_258B01194();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_258ABEC08(0);
  return sub_258ABD448(a1, a2 + *(v4 + 44));
}

uint64_t sub_258ABD448@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v129 = a2;
  sub_258ABEABC(0);
  v125 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v130 = &v113 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v132 = &v113 - v6;
  v116 = type metadata accessor for StateOfMindCalendarDateView(0);
  MEMORY[0x28223BE20](v116);
  v8 = (&v113 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_258ABEA80(0);
  v117 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v128 = &v113 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v115 = &v113 - v13;
  MEMORY[0x28223BE20](v12);
  v136 = &v113 - v14;
  sub_258ABE740(0);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v124 = &v113 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v113 - v18;
  v20 = type metadata accessor for StateOfMindCalendarDay(0);
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v113 = &v113 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v113 - v24;
  v123 = sub_258B023A4();
  v134 = *(v123 - 8);
  v26 = MEMORY[0x28223BE20](v123);
  v121 = &v113 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v29 = &v113 - v28;
  sub_258ABE9D8(0);
  v119 = v30;
  v31 = MEMORY[0x28223BE20](v30);
  v127 = &v113 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v118 = &v113 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v126 = &v113 - v36;
  MEMORY[0x28223BE20](v35);
  v38 = &v113 - v37;
  sub_258ABE99C(0);
  v40 = v39;
  v41 = MEMORY[0x28223BE20](v39);
  v131 = &v113 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x28223BE20](v41);
  v45 = &v113 - v44;
  MEMORY[0x28223BE20](v43);
  v135 = &v113 - v46;
  sub_258B02394();
  v122 = a1;
  v47 = (a1 + OBJC_IVAR____TtC14MentalHealthUI26StateOfMindCalendarDayCell_day);
  swift_beginAccess();
  sub_258ABED9C(v47, v19, sub_258ABE740);
  v48 = *(v21 + 48);
  v120 = v21 + 48;
  v133 = v48;
  if (v48(v19, 1, v20) == 1)
  {
    sub_258ABEF88(v19, sub_258ABE740);
    v49 = v20;
  }

  else
  {
    sub_258ABEE04(v19, v25, type metadata accessor for StateOfMindCalendarDay);
    v50 = *&v25[*(v20 + 36)];
    sub_258ABEF88(v25, type metadata accessor for StateOfMindCalendarDay);
    v51 = 1.0;
    v49 = v20;
    if (v50 < 14)
    {
      goto LABEL_5;
    }
  }

  v51 = 0.0;
LABEL_5:
  v52 = *(v134 + 32);
  v53 = v29;
  v54 = v123;
  v134 += 32;
  v114 = v52;
  v52(v38, v53, v123);
  v55 = v119;
  *&v38[*(v119 + 36)] = v51;
  v56 = sub_258B01894();
  sub_258B00654();
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v64 = v63;
  sub_258ABEE04(v38, v45, sub_258ABE9D8);
  v65 = &v45[*(v40 + 36)];
  *v65 = v56;
  *(v65 + 1) = v58;
  *(v65 + 2) = v60;
  *(v65 + 3) = v62;
  *(v65 + 4) = v64;
  v65[40] = 0;
  sub_258ABEE04(v45, v135, sub_258ABE99C);
  if (v133(v47, 1, v49))
  {
    v66 = 0;
    v67 = 0xE000000000000000;
    v68 = 2;
  }

  else
  {
    v68 = *(v47 + *(v49 + 32));
    v66 = v47[2];
    v67 = v47[3];
    sub_258B003E4();
  }

  v69 = v132;
  *v8 = swift_getKeyPath();
  sub_258ABED38(0, &qword_27F96D0B8, MEMORY[0x277CE02A8], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v70 = v116;
  *(v8 + *(v116 + 20)) = v68;
  v71 = (v8 + *(v70 + 24));
  *v71 = v66;
  v71[1] = v67;
  v72 = sub_258B01894();
  sub_258B00654();
  v74 = v73;
  v76 = v75;
  v78 = v77;
  v80 = v79;
  v81 = v8;
  v82 = v115;
  sub_258ABEE04(v81, v115, type metadata accessor for StateOfMindCalendarDateView);
  v83 = v82 + *(v117 + 36);
  *v83 = v72;
  *(v83 + 8) = v74;
  *(v83 + 16) = v76;
  *(v83 + 24) = v78;
  *(v83 + 32) = v80;
  *(v83 + 40) = 0;
  sub_258ABEE04(v82, v136, sub_258ABEA80);
  sub_258ABDFF8(v122, v69);
  sub_258B024F4();
  sub_258B00854();
  sub_258ABEAF8(0);
  v85 = (v69 + *(v84 + 36));
  v86 = v138;
  *v85 = v137;
  v85[1] = v86;
  v85[2] = v139;
  LOBYTE(v82) = sub_258B01894();
  sub_258B00654();
  v87 = v69 + *(v125 + 36);
  *v87 = v82;
  *(v87 + 8) = v88;
  *(v87 + 16) = v89;
  *(v87 + 24) = v90;
  *(v87 + 32) = v91;
  *(v87 + 40) = 0;
  v92 = v69;
  if (v133(v47, 1, v49))
  {
    v93 = MEMORY[0x277D84F90];
  }

  else
  {
    v93 = v47[1];
    sub_258B003E4();
  }

  v94 = v124;
  v95 = v121;
  sub_258B02394();
  sub_258ABED9C(v47, v94, sub_258ABE740);
  if (v133(v94, 1, v49) == 1)
  {
    sub_258ABEF88(v94, sub_258ABE740);
LABEL_14:
    v99 = 0.0;
    goto LABEL_15;
  }

  v96 = v94;
  v97 = v113;
  sub_258ABEE04(v96, v113, type metadata accessor for StateOfMindCalendarDay);
  v98 = *(v97 + *(v49 + 36));
  sub_258ABEF88(v97, type metadata accessor for StateOfMindCalendarDay);
  v99 = 1.0;
  if (v98 < 7)
  {
    goto LABEL_14;
  }

LABEL_15:
  v100 = v118;
  v114(v118, v95, v54);
  *&v100[*(v55 + 36)] = v99;
  v101 = v100;
  v102 = v126;
  sub_258ABEE04(v101, v126, sub_258ABE9D8);
  v103 = v131;
  sub_258ABED9C(v135, v131, sub_258ABE99C);
  v104 = v128;
  sub_258ABED9C(v136, v128, sub_258ABEA80);
  v105 = v130;
  sub_258ABED9C(v92, v130, sub_258ABEABC);
  v106 = v127;
  sub_258ABED9C(v102, v127, sub_258ABE9D8);
  v107 = v103;
  v108 = v129;
  sub_258ABED9C(v107, v129, sub_258ABE99C);
  sub_258ABE8F4(0);
  v110 = v109;
  sub_258ABED9C(v104, v108 + v109[12], sub_258ABEA80);
  sub_258ABED9C(v105, v108 + v110[16], sub_258ABEABC);
  *(v108 + v110[20]) = v93;
  v111 = v108 + v110[24];
  *v111 = 0;
  *(v111 + 8) = 1;
  sub_258ABED9C(v106, v108 + v110[28], sub_258ABE9D8);
  sub_258B003E4();
  sub_258ABEF88(v102, sub_258ABE9D8);
  sub_258ABEF88(v132, sub_258ABEABC);
  sub_258ABEF88(v136, sub_258ABEA80);
  sub_258ABEF88(v135, sub_258ABE99C);
  sub_258ABEF88(v106, sub_258ABE9D8);

  sub_258ABEF88(v105, sub_258ABEABC);
  sub_258ABEF88(v104, sub_258ABEA80);
  return sub_258ABEF88(v131, sub_258ABE99C);
}

uint64_t sub_258ABDFF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43[5] = a2;
  v3 = MEMORY[0x277CE0330];
  sub_258ABEA14(0, &qword_27F970F90, sub_258ABEBC4, MEMORY[0x277CE1180], MEMORY[0x277CE0330]);
  v43[4] = v4;
  MEMORY[0x28223BE20](v4);
  v6 = v43 - v5;
  sub_258ABEA14(0, &qword_27F970F98, sub_258A04CF4, &type metadata for StateOfMindCalendarPlaceholderView, v3);
  v43[2] = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v43 - v8;
  sub_258ABEBC4(0);
  v43[3] = v10;
  MEMORY[0x28223BE20](v10);
  v12 = v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A04CF4(0);
  v43[1] = v13;
  MEMORY[0x28223BE20](v13);
  v15 = v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258ABE740(0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for StateOfMindCalendarDay(0);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = (v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = a1 + OBJC_IVAR____TtC14MentalHealthUI26StateOfMindCalendarDayCell_day;
  swift_beginAccess();
  sub_258ABED9C(v23, v18, sub_258ABE740);
  v24 = *(v20 + 48);
  if (v24(v18, 1, v19) == 1)
  {
    v25 = sub_258ABE740;
    v26 = v18;
  }

  else
  {
    sub_258ABEE04(v18, v22, type metadata accessor for StateOfMindCalendarDay);
    if (*v22)
    {
      v27 = *v22;
      [v27 valence];
      LOBYTE(v44[0]) = 0;
      StateOfMindVisualization.ValenceImageProvider.init(valence:imageScale:)(v44, &v45, v28);
      v29 = (v22 + *(v19 + 40));
      v30 = v29[1];
      v44[0] = *v29;
      v44[1] = v30;
      sub_258B003E4();
      v31 = MEMORY[0x259C931B0](0x6567616D492ELL, 0xE600000000000000);
      sub_2589DC7D8(v31, v32, v33);
      sub_258B01DD4();

      sub_258ABED9C(v15, v9, sub_258A04CF4);
      swift_storeEnumTagMultiPayload();
      v34 = sub_258A65E1C();
      sub_258ABEEB4(v34, v35, v36);
      sub_258B012A4();
      sub_258ABED9C(v12, v6, sub_258ABEBC4);
      swift_storeEnumTagMultiPayload();
      sub_258ABEF08();
      sub_258B012A4();

      sub_258ABEF88(v12, sub_258ABEBC4);
      sub_258ABEF88(v15, sub_258A04CF4);
      v37 = type metadata accessor for StateOfMindCalendarDay;
      v38 = v22;
      return sub_258ABEF88(v38, v37);
    }

    v25 = type metadata accessor for StateOfMindCalendarDay;
    v26 = v22;
  }

  sub_258ABEF88(v26, v25);
  v24(v23, 1, v19);
  if (sub_258B002A4())
  {
    *v6 = 0;
    v6[8] = 1;
    swift_storeEnumTagMultiPayload();
    sub_258ABEF08();
    return sub_258B012A4();
  }

  swift_storeEnumTagMultiPayload();
  v40 = sub_258A65E1C();
  sub_258ABEEB4(v40, v41, v42);
  sub_258B012A4();
  sub_258ABED9C(v12, v6, sub_258ABEBC4);
  swift_storeEnumTagMultiPayload();
  sub_258ABEF08();
  sub_258B012A4();
  v37 = sub_258ABEBC4;
  v38 = v12;
  return sub_258ABEF88(v38, v37);
}

uint64_t type metadata accessor for StateOfMindCalendarDayCell(uint64_t a1)
{
  result = qword_27F970F00;
  if (!qword_27F970F00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258ABE6B0(uint64_t a1)
{
  sub_258ABE740(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_258ABE77C(uint64_t a1)
{
  if (!qword_27F970F10)
  {
    sub_258ABE82C(255);
    sub_258ABEE6C(&qword_27F970F78, sub_258ABE82C, MEMORY[0x277CE1198]);
    v1 = sub_258B014F4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F970F10);
    }
  }
}

void sub_258ABE82C(uint64_t a1)
{
  if (!qword_27F970F18)
  {
    sub_258ABE8C0(255);
    sub_258ABEE6C(&qword_27F970F70, sub_258ABE8C0, MEMORY[0x277CE14C0]);
    v1 = sub_258B022D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F970F18);
    }
  }
}

void sub_258ABE8F4(uint64_t a1)
{
  if (!qword_27F970F28)
  {
    sub_258ABE99C(255);
    sub_258ABEA80(255);
    sub_258ABEABC(255);
    sub_258ABE9D8(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_27F970F28);
    }
  }
}

void sub_258ABEA14(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_258ABEAF8(uint64_t a1)
{
  if (!qword_27F970F50)
  {
    sub_258ABED38(255, &qword_27F970F58, sub_258ABEB88, MEMORY[0x277CE0FA8]);
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F970F50);
    }
  }
}

void sub_258ABEC08(uint64_t a1)
{
  if (!qword_27F970F88)
  {
    sub_258ABE8C0(255);
    v1 = sub_258B00974();
    if (!v2)
    {
      atomic_store(v1, &qword_27F970F88);
    }
  }
}

uint64_t sub_258ABEC70(uint64_t a1)
{
  v2 = sub_258B01184();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_258B00D74();
}

void sub_258ABED38(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_258ABED9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258ABEE04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_258ABEE6C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_258ABEEB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F970FA0;
  if (!qword_27F970FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970FA0);
  }

  return result;
}

unint64_t sub_258ABEF08()
{
  result = qword_27F970FA8;
  if (!qword_27F970FA8)
  {
    sub_258ABEBC4(255);
    v3 = sub_258A65E1C();
    sub_258ABEEB4(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970FA8);
  }

  return result;
}

uint64_t sub_258ABEF88(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_258ABEFE8(uint64_t a1, uint64_t a2)
{
  sub_258ABE740(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t _s13EntryBaseViewVMa(uint64_t a1)
{
  result = qword_27F970FB0;
  if (!qword_27F970FB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258ABF0C0(uint64_t a1)
{
  sub_258AC1E98(319, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for StateOfMindTimeline.DaySummary(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_258ABF198()
{
  v1 = v0;
  v2 = sub_258B01504();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v27 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A2AE68(0);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x277CE0570];
  v10 = MEMORY[0x277D83D88];
  sub_258AC1E98(0, &qword_27F96DE50, MEMORY[0x277CE0570], MEMORY[0x277D83D88]);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v26 - v15;
  (*(v3 + 104))(&v26 - v15, *MEMORY[0x277CE0560], v2);
  (*(v3 + 56))(v16, 0, 1, v2);
  v17 = *(v6 + 56);
  sub_258AC12E8(v1, v8, &qword_27F96DE50, v9, v10);
  sub_258AC12E8(v16, &v8[v17], &qword_27F96DE50, v9, v10);
  v18 = *(v3 + 48);
  if (v18(v8, 1, v2) != 1)
  {
    sub_258AC12E8(v8, v14, &qword_27F96DE50, MEMORY[0x277CE0570], MEMORY[0x277D83D88]);
    if (v18(&v8[v17], 1, v2) != 1)
    {
      v20 = &v8[v17];
      v21 = v27;
      (*(v3 + 32))(v27, v20, v2);
      sub_258AC1AE0(&qword_27F96EAA8, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
      v19 = sub_258B02AA4();
      v22 = *(v3 + 8);
      v22(v21, v2);
      v23 = MEMORY[0x277CE0570];
      v24 = MEMORY[0x277D83D88];
      sub_258AC1358(v16, &qword_27F96DE50, MEMORY[0x277CE0570], MEMORY[0x277D83D88]);
      v22(v14, v2);
      sub_258AC1358(v8, &qword_27F96DE50, v23, v24);
      return v19 & 1;
    }

    sub_258AC1358(v16, &qword_27F96DE50, MEMORY[0x277CE0570], MEMORY[0x277D83D88]);
    (*(v3 + 8))(v14, v2);
    goto LABEL_6;
  }

  sub_258AC1358(v16, &qword_27F96DE50, MEMORY[0x277CE0570], MEMORY[0x277D83D88]);
  if (v18(&v8[v17], 1, v2) != 1)
  {
LABEL_6:
    sub_258AC1094(v8, sub_258A2AE68);
    v19 = 0;
    return v19 & 1;
  }

  sub_258AC1358(v8, &qword_27F96DE50, MEMORY[0x277CE0570], MEMORY[0x277D83D88]);
  v19 = 1;
  return v19 & 1;
}

__n128 sub_258ABF64C@<Q0>(uint64_t a1@<X8>)
{
  v106 = a1;
  v2 = type metadata accessor for StateOfMindTimeline.Styles.Entry(0);
  v3 = MEMORY[0x28223BE20](v2);
  v103 = &v91[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = MEMORY[0x28223BE20](v3);
  v100 = &v91[-v6];
  MEMORY[0x28223BE20](v5);
  v8 = &v91[-v7];
  v9 = type metadata accessor for StateOfMindTimeline.Styles(0);
  v10 = MEMORY[0x28223BE20](v9);
  v102 = &v91[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v91[-v13];
  MEMORY[0x28223BE20](v12);
  v16 = &v91[-v15];
  sub_258AC0AA0(0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v91[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_258AC0CFC(0);
  v94 = v20;
  MEMORY[0x28223BE20](v20);
  v22 = &v91[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_258AC0D24(0);
  v95 = v23;
  MEMORY[0x28223BE20](v23);
  v98 = &v91[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_258AC0D4C(0);
  v97 = v25;
  MEMORY[0x28223BE20](v25);
  v101 = &v91[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_258AC0D74(0);
  v99 = v27;
  MEMORY[0x28223BE20](v27);
  v104 = &v91[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_258AC0DA8(0, &qword_27F971018, sub_258AC0D74, sub_258AC0E1C);
  v96 = v29;
  MEMORY[0x28223BE20](v29);
  v105 = &v91[-v30];
  *v19 = sub_258B011A4();
  *(v19 + 1) = 0;
  v19[16] = 0;
  sub_258AC0FDC(0);
  sub_258AC0068(v1, &v19[*(v31 + 44)]);
  v32 = sub_258B01864();
  v107 = v1;
  sub_258AC1550(&qword_27F96CC08, type metadata accessor for StateOfMindTimeline.Styles, sub_2589FE604, v16);
  sub_258AC115C(&v16[*(v9 + 48)], v8, type metadata accessor for StateOfMindTimeline.Styles.Entry);
  sub_258AC1094(v16, type metadata accessor for StateOfMindTimeline.Styles);
  if ((v8[*(v2 + 24)] & 1) != 0 && (sub_258B00A84() & 1) == 0)
  {
    sub_258ABF198();
  }

  sub_258AC1094(v8, type metadata accessor for StateOfMindTimeline.Styles.Entry);
  sub_258B00654();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  sub_258AC10F4(v19, v22, sub_258AC0AA0);
  v41 = &v22[*(v94 + 9)];
  *v41 = v32;
  *(v41 + 1) = v34;
  *(v41 + 2) = v36;
  *(v41 + 3) = v38;
  *(v41 + 4) = v40;
  v41[40] = 0;
  v92 = sub_258B01884();
  v93 = sub_2589FE604;
  v94 = type metadata accessor for StateOfMindTimeline.Styles;
  sub_258AC1550(&qword_27F96CC08, type metadata accessor for StateOfMindTimeline.Styles, sub_2589FE604, v14);
  v42 = v100;
  sub_258AC115C(&v14[*(v9 + 48)], v100, type metadata accessor for StateOfMindTimeline.Styles.Entry);
  sub_258AC1094(v14, type metadata accessor for StateOfMindTimeline.Styles);
  sub_258AC1094(v42, type metadata accessor for StateOfMindTimeline.Styles.Entry);
  sub_258B00654();
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v51 = v98;
  sub_258AC10F4(v22, v98, sub_258AC0CFC);
  v52 = &v51[*(v95 + 36)];
  *v52 = v92;
  *(v52 + 1) = v44;
  *(v52 + 2) = v46;
  *(v52 + 3) = v48;
  *(v52 + 4) = v50;
  v52[40] = 0;
  LODWORD(v100) = sub_258B01894();
  v53 = v102;
  sub_258AC1550(&qword_27F96CC08, type metadata accessor for StateOfMindTimeline.Styles, v93, v102);
  v54 = v103;
  sub_258AC115C(&v53[*(v9 + 48)], v103, type metadata accessor for StateOfMindTimeline.Styles.Entry);
  sub_258AC1094(v53, type metadata accessor for StateOfMindTimeline.Styles);
  sub_258AC1094(v54, type metadata accessor for StateOfMindTimeline.Styles.Entry);
  sub_258B00654();
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v63 = v101;
  sub_258AC10F4(v51, v101, sub_258AC0D24);
  v64 = &v63[*(v97 + 36)];
  *v64 = v100;
  *(v64 + 1) = v56;
  *(v64 + 2) = v58;
  *(v64 + 3) = v60;
  *(v64 + 4) = v62;
  v64[40] = 0;
  sub_258B01884();
  v65 = _s13EntryBaseViewVMa(0);
  v66 = v107;
  sub_258B00654();
  v115 = v67;
  v116 = v68;
  v117 = v69;
  v118 = v70;
  v119 = 0;
  v71 = v104;
  sub_258B01544();
  sub_258AC10F4(v63, v71, sub_258AC0D4C);
  v72 = *(v65 + 20);
  v73 = v105;
  v74 = &v105[*(v96 + 36)];
  v75 = _s22DaySummaryGradientViewVMa(0);
  sub_258AC115C(v66 + v72, v74 + *(v75 + 24), type metadata accessor for StateOfMindTimeline.DaySummary);
  *(v74 + *(v75 + 20)) = swift_getKeyPath();
  v76 = MEMORY[0x277CDF458];
  sub_258AC1E98(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  *v74 = swift_getKeyPath();
  sub_258AC1E98(0, &qword_27F96CC08, v94, v76);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v76) = sub_258B01884();
  v77 = sub_258B00B44();
  sub_258AC0EA4(0, &qword_27F971028, _s22DaySummaryGradientViewVMa, MEMORY[0x277CE0888]);
  v79 = v74 + *(v78 + 36);
  *v79 = v77;
  v79[8] = v76;
  v80 = sub_258B024F4();
  v82 = v81;
  sub_258AC0E1C(0);
  v84 = (v74 + *(v83 + 36));
  *v84 = v80;
  v84[1] = v82;
  sub_258AC10F4(v71, v73, sub_258AC0D74);
  sub_258B024F4();
  sub_258B00C94();
  v85 = v106;
  sub_258AC11C4(v73, v106);
  sub_258AC1258(0);
  v87 = v85 + *(v86 + 36);
  v88 = v113;
  *(v87 + 64) = v112;
  *(v87 + 80) = v88;
  *(v87 + 96) = v114;
  v89 = v109;
  *v87 = v108;
  *(v87 + 16) = v89;
  result = v111;
  *(v87 + 32) = v110;
  *(v87 + 48) = result;
  return result;
}

uint64_t sub_258AC0068@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  sub_258AC1E98(0, &qword_27F970FD0, sub_258AC0B20, MEMORY[0x277CE14B8]);
  v74 = v3;
  MEMORY[0x28223BE20](v3);
  v64 = v61 - v4;
  v66 = _s16EntryMomentsViewVMa(0);
  v5 = MEMORY[0x28223BE20](v66);
  v68 = v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v69 = (v61 - v7);
  v8 = _s18EntrySeparatorViewVMa(0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v67 = v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v76 = (v61 - v11);
  v12 = MEMORY[0x277D83D88];
  sub_258AC1E98(0, &qword_27F970328, type metadata accessor for StateOfMindTimeline.DaySummary, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v61 - v14;
  v63 = _s12EntryDayViewVMa(0);
  v16 = MEMORY[0x28223BE20](v63);
  v65 = v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = (v61 - v18);
  sub_258AC13B4(0, &qword_27F971050, MEMORY[0x277CE0330]);
  v71 = v20;
  MEMORY[0x28223BE20](v20);
  v73 = v61 - v21;
  v72 = _s14EntryEmptyViewVMa(0);
  MEMORY[0x28223BE20](v72);
  v23 = (v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_258AC1E98(0, &qword_27F96D908, _s5EntryVMa, v12);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = v61 - v25;
  v27 = a1 + *(_s13EntryBaseViewVMa(0) + 20);
  v28 = type metadata accessor for StateOfMindTimeline.DaySummary(0);
  sub_258AC12E8(v27 + v28[7], v26, &qword_27F96D908, _s5EntryVMa, v12);
  v29 = _s5EntryVMa(0);
  v30 = (*(*(v29 - 8) + 48))(v26, 1, v29);
  sub_258AC1358(v26, &qword_27F96D908, _s5EntryVMa, v12);
  if (v30 == 1 && !*(*(v27 + v28[8]) + 16))
  {
    v57 = *(v27 + v28[9]);
    *v23 = swift_getKeyPath();
    v58 = MEMORY[0x277CDF458];
    sub_258AC1E98(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
    swift_storeEnumTagMultiPayload();
    v59 = v72;
    v60 = *(v72 + 20);
    *(v23 + v60) = swift_getKeyPath();
    sub_258AC1E98(0, &qword_27F96CC08, type metadata accessor for StateOfMindTimeline.Styles, v58);
    swift_storeEnumTagMultiPayload();
    *(v23 + *(v59 + 24)) = v57;
    sub_258AC115C(v23, v73, _s14EntryEmptyViewVMa);
    swift_storeEnumTagMultiPayload();
    sub_258AC1AE0(&qword_27F970FE8, _s14EntryEmptyViewVMa, &unk_258B2D730);
    sub_258AC0C74();
    sub_258B003E4();
    sub_258B012A4();
    v55 = _s14EntryEmptyViewVMa;
    v54 = v23;
  }

  else
  {
    sub_258AC115C(v27, v15, type metadata accessor for StateOfMindTimeline.DaySummary);
    v31 = *(*(v28 - 1) + 56);
    v31(v15, 0, 1, v28);
    v75 = *(v27 + v28[9]);
    v32 = v19;
    *v19 = swift_getKeyPath();
    v33 = MEMORY[0x277CDF458];
    sub_258AC1E98(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
    v61[1] = v34;
    swift_storeEnumTagMultiPayload();
    v35 = v63;
    v36 = *(v63 + 20);
    *(v32 + v36) = swift_getKeyPath();
    sub_258AC1E98(0, &qword_27F96CC08, type metadata accessor for StateOfMindTimeline.Styles, v33);
    swift_storeEnumTagMultiPayload();
    v37 = *(v35 + 24);
    v31((v32 + v37), 1, 1, v28);
    v38 = v75;
    sub_258B003E4();
    sub_258AC1454(v15, v32 + v37);
    v77 = v38;
    sub_2589FC8C8(&unk_2869D58A8);
    sub_258AC1358(v15, &qword_27F970328, type metadata accessor for StateOfMindTimeline.DaySummary, MEMORY[0x277D83D88]);
    *(v32 + *(v35 + 28)) = v77;
    v62 = v32;
    KeyPath = swift_getKeyPath();
    v40 = v76;
    *v76 = KeyPath;
    swift_storeEnumTagMultiPayload();
    v41 = *(v27 + v28[8]);
    v42 = swift_getKeyPath();
    v43 = v69;
    *v69 = v42;
    swift_storeEnumTagMultiPayload();
    v44 = v66;
    v45 = *(v66 + 20);
    *(v43 + v45) = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    *(v43 + *(v44 + 24)) = v41;
    v77 = v75;
    sub_258B003E4();
    sub_258B003E4();
    sub_2589FC8C8(&unk_2869D58D8);
    *(v43 + *(v44 + 28)) = v77;
    v46 = v65;
    sub_258AC115C(v32, v65, _s12EntryDayViewVMa);
    v47 = v40;
    v48 = v67;
    sub_258AC115C(v47, v67, _s18EntrySeparatorViewVMa);
    v49 = v68;
    sub_258AC115C(v43, v68, _s16EntryMomentsViewVMa);
    v50 = v64;
    sub_258AC115C(v46, v64, _s12EntryDayViewVMa);
    sub_258AC0B20(0);
    v52 = v51;
    sub_258AC115C(v48, v50 + *(v51 + 48), _s18EntrySeparatorViewVMa);
    sub_258AC115C(v49, v50 + *(v52 + 64), _s16EntryMomentsViewVMa);
    sub_258AC1094(v49, _s16EntryMomentsViewVMa);
    sub_258AC1094(v48, _s18EntrySeparatorViewVMa);
    sub_258AC1094(v46, _s12EntryDayViewVMa);
    v53 = MEMORY[0x277CE14B8];
    sub_258AC12E8(v50, v73, &qword_27F970FD0, sub_258AC0B20, MEMORY[0x277CE14B8]);
    swift_storeEnumTagMultiPayload();
    sub_258AC1AE0(&qword_27F970FE8, _s14EntryEmptyViewVMa, &unk_258B2D730);
    sub_258AC0C74();
    sub_258B012A4();
    sub_258AC1358(v50, &qword_27F970FD0, sub_258AC0B20, v53);
    sub_258AC1094(v43, _s16EntryMomentsViewVMa);
    sub_258AC1094(v76, _s18EntrySeparatorViewVMa);
    v54 = v62;
    v55 = _s12EntryDayViewVMa;
  }

  return sub_258AC1094(v54, v55);
}

void sub_258AC0AA0(uint64_t a1)
{
  if (!qword_27F970FC0)
  {
    sub_258AC13B4(255, &qword_27F970FC8, MEMORY[0x277CE0338]);
    sub_258AC0BA8();
    v1 = sub_258B022D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F970FC0);
    }
  }
}

void sub_258AC0B20(uint64_t a1)
{
  if (!qword_27F970FD8)
  {
    _s12EntryDayViewVMa(255);
    _s18EntrySeparatorViewVMa(255);
    _s16EntryMomentsViewVMa(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F970FD8);
    }
  }
}

unint64_t sub_258AC0BA8()
{
  result = qword_27F970FE0;
  if (!qword_27F970FE0)
  {
    sub_258AC13B4(255, &qword_27F970FC8, MEMORY[0x277CE0338]);
    sub_258AC1AE0(&qword_27F970FE8, _s14EntryEmptyViewVMa, &unk_258B2D730);
    sub_258AC0C74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970FE0);
  }

  return result;
}

unint64_t sub_258AC0C74()
{
  result = qword_27F970FF0;
  if (!qword_27F970FF0)
  {
    sub_258AC1E98(255, &qword_27F970FD0, sub_258AC0B20, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970FF0);
  }

  return result;
}

void sub_258AC0DA8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
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

void sub_258AC0E1C(uint64_t a1)
{
  if (!qword_27F971020)
  {
    sub_258AC0EA4(255, &qword_27F971028, _s22DaySummaryGradientViewVMa, MEMORY[0x277CE0888]);
    sub_258AC0F08();
    v1 = sub_258B01294();
    if (!v2)
    {
      atomic_store(v1, &qword_27F971020);
    }
  }
}

void sub_258AC0EA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t sub_258AC0F08()
{
  result = qword_27F971030;
  if (!qword_27F971030)
  {
    sub_258AC0EA4(255, &qword_27F971028, _s22DaySummaryGradientViewVMa, MEMORY[0x277CE0888]);
    sub_258AC1AE0(&qword_27F971038, _s22DaySummaryGradientViewVMa, &unk_258B2D038);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F971030);
  }

  return result;
}

void sub_258AC0FDC(uint64_t a1)
{
  if (!qword_27F971040)
  {
    sub_258AC13B4(255, &qword_27F970FC8, MEMORY[0x277CE0338]);
    v1 = sub_258B00974();
    if (!v2)
    {
      atomic_store(v1, &qword_27F971040);
    }
  }
}

uint64_t sub_258AC1094(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_258AC10F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_258AC115C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258AC11C4(uint64_t a1, uint64_t a2)
{
  sub_258AC0DA8(0, &qword_27F971018, sub_258AC0D74, sub_258AC0E1C);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_258AC1258(uint64_t a1)
{
  if (!qword_27F971048)
  {
    sub_258AC0DA8(255, &qword_27F971018, sub_258AC0D74, sub_258AC0E1C);
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F971048);
    }
  }
}

uint64_t sub_258AC12E8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  sub_258AC1E98(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_258AC1358(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  sub_258AC1E98(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_258AC13B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = _s14EntryEmptyViewVMa(255);
    sub_258AC1E98(255, &qword_27F970FD0, sub_258AC0B20, MEMORY[0x277CE14B8]);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_258AC1454(uint64_t a1, uint64_t a2)
{
  sub_258AC1E98(0, &qword_27F970328, type metadata accessor for StateOfMindTimeline.DaySummary, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_258AC1550@<X0>(unint64_t *a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t (*a3)(uint64_t *, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v20 = a4;
  v9 = sub_258B00F84();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x277CDF458];
  sub_258AC1E98(0, a1, a2, MEMORY[0x277CDF458]);
  MEMORY[0x28223BE20](v14);
  v16 = (&v19 - v15);
  sub_258AC12E8(v8, &v19 - v15, a1, a2, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return a3(v16, v20);
  }

  sub_258B02E94();
  v18 = sub_258B01824();
  sub_258B00354();

  sub_258B00F74();
  swift_getAtKeyPath();

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_258AC17AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_258AC182C()
{
  result = qword_27F971060;
  if (!qword_27F971060)
  {
    sub_258AC0DA8(255, &qword_27F971018, sub_258AC0D74, sub_258AC0E1C);
    sub_258AC190C();
    sub_258AC1AE0(&qword_27F971090, sub_258AC0E1C, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F971060);
  }

  return result;
}

unint64_t sub_258AC190C()
{
  result = qword_27F971068;
  if (!qword_27F971068)
  {
    sub_258AC0D74(255);
    sub_258AC17AC(&qword_27F971070, sub_258AC0D4C, sub_258AC19F4, MEMORY[0x277CDF918]);
    sub_258AC1AE0(&qword_27F96CB68, MEMORY[0x277CE0660], MEMORY[0x277CE0650]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F971068);
  }

  return result;
}

unint64_t sub_258AC1A30()
{
  result = qword_27F971080;
  if (!qword_27F971080)
  {
    sub_258AC0CFC(255);
    sub_258AC1AE0(&qword_27F971088, sub_258AC0AA0, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F971080);
  }

  return result;
}

uint64_t sub_258AC1AE0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_258AC1C2C@<X0>(unint64_t *a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v21 = a4;
  v9 = sub_258B00F84();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x277CDF458];
  sub_258AC1E98(0, a1, a2, MEMORY[0x277CDF458]);
  MEMORY[0x28223BE20](v14);
  v16 = &v20 - v15;
  sub_258AC12E8(v8, &v20 - v15, a1, a2, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = a3(0);
    return (*(*(v17 - 8) + 32))(v21, v16, v17);
  }

  else
  {
    sub_258B02E94();
    v19 = sub_258B01824();
    sub_258B00354();

    sub_258B00F74();
    swift_getAtKeyPath();

    return (*(v10 + 8))(v12, v9);
  }
}

void sub_258AC1E98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_258AC1FC8(void *a1)
{
  v3 = v1;
  v5 = sub_258B00384();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_258B00084();
  v9 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v11 = v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 healthDataSource];
  if (v12)
  {
    v13 = v12;
    type metadata accessor for MentalHealthGenericFieldsProvider();
    inited = swift_initStackObject();
    *(inited + 16) = v13;
    v15 = sub_258AD6068(MEMORY[0x277D84F90]);
    v16 = v3[16];
    v95[2] = inited;
    v95[3] = v2;
    if (v16 <= 1)
    {
      if (v16)
      {
        v17 = 0xEF6F72746E492064;
        v18 = 0x6574614720656741;
      }

      else
      {
        v17 = 0x8000000258B35DF0;
        v18 = 0xD000000000000010;
      }
    }

    else if (v16 == 2)
    {
      v17 = 0xE500000000000000;
      v18 = 0x6F72746E49;
    }

    else if (v16 == 3)
    {
      v17 = 0xE900000000000073;
      v18 = 0x6E6F697473657551;
    }

    else
    {
      v17 = 0xE600000000000000;
      v18 = 0x746C75736552;
    }

    v31 = MEMORY[0x277D837D0];
    v101 = MEMORY[0x277D837D0];
    *&v100 = v18;
    *(&v100 + 1) = v17;
    sub_258A2D784(&v100, v99);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v102 = v15;
    v33 = 0xE400000000000000;
    sub_258AC8BC0(v99, 1885697139, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
    v34 = v102;
    v35 = v3[17];
    if (v35 <= 4)
    {
      if (v3[17] <= 1u)
      {
        v33 = 0xE500000000000000;
        if (v3[17])
        {
          v36 = 0x65736F6C43;
        }

        else
        {
          v36 = 0x6E69676542;
        }
      }

      else if (v35 == 2)
      {
        v36 = 1954047310;
      }

      else if (v35 == 3)
      {
        v36 = 1701736260;
      }

      else
      {
        v33 = 0xE600000000000000;
        v36 = 0x74726F707845;
      }
    }

    else if (v3[17] > 7u)
    {
      if (v35 == 8)
      {
        v33 = 0x8000000258B35E80;
        v36 = 0xD000000000000017;
      }

      else if (v35 == 9)
      {
        v33 = 0x8000000258B35EA0;
        v36 = 0xD00000000000001ALL;
      }

      else
      {
        v33 = 0x8000000258B35EC0;
        v36 = 0xD000000000000025;
      }
    }

    else if (v35 == 5)
    {
      v33 = 0xED00006B63696C43;
      v36 = 0x20656C6369747241;
    }

    else if (v35 == 6)
    {
      v33 = 0xEA00000000006B63;
      v36 = 0x696C43206F666E49;
    }

    else
    {
      v33 = 0x8000000258B35E60;
      v36 = 0xD000000000000013;
    }

    v101 = v31;
    *&v100 = v36;
    *(&v100 + 1) = v33;
    sub_258A2D784(&v100, v99);
    v37 = swift_isUniquelyReferenced_nonNull_native();
    v98 = v34;
    sub_258AC8BC0(v99, 0x6E6F69746361, 0xE600000000000000, v37);
    v38 = v98;
    v102 = v98;
    if (v3[18] > 1u)
    {
      if (v3[18] != 2)
      {
        sub_258AC2CE4(0x656D737365737361, 0xEE0065707954746ELL, &v100);
        sub_258A3F0C0(&v100);
        v42 = v102;
LABEL_43:
        v97 = v3[19];
        v43 = MentalHealthAssessmentsAnalyticsEntryPoint.rawValue.getter();
        v101 = v31;
        *&v100 = v43;
        *(&v100 + 1) = v44;
        sub_258A2D784(&v100, v99);
        v45 = swift_isUniquelyReferenced_nonNull_native();
        v98 = v42;
        sub_258AC8BC0(v99, 0x696F507972746E65, 0xEA0000000000746ELL, v45);
        v46 = v98;
        v47 = v3[20];
        if (v47 > 2)
        {
          if (v47 == 3)
          {
            v48 = 0x8000000258B360E0;
            v49 = 0xD000000000000012;
          }

          else if (v47 == 4)
          {
            v48 = 0xEC0000006E6F6974;
            v49 = 0x6163696669746F4ELL;
          }

          else
          {
            v49 = 0x6E694C2070656544;
            v48 = 0xE90000000000006BLL;
          }
        }

        else if (v3[20])
        {
          if (v47 == 1)
          {
            v48 = 0xEE006D6F6F522065;
            v49 = 0x7079542065746144;
          }

          else
          {
            v48 = 0xE700000000000000;
            v49 = 0x656C6369747241;
          }
        }

        else
        {
          v48 = 0xE700000000000000;
          v49 = 0x7972616D6D7553;
        }

        v101 = v31;
        *&v100 = v49;
        *(&v100 + 1) = v48;
        sub_258A2D784(&v100, v99);
        v50 = swift_isUniquelyReferenced_nonNull_native();
        v98 = v46;
        sub_258AC8BC0(v99, 0x6E616E65766F7270, 0xEA00000000006563, v50);
        v51 = v98;
        v52 = v3[21];
        v53 = MEMORY[0x277D839B0];
        v101 = MEMORY[0x277D839B0];
        LOBYTE(v100) = v52;
        sub_258A2D784(&v100, v99);
        v54 = swift_isUniquelyReferenced_nonNull_native();
        v98 = v51;
        sub_258AC8BC0(v99, 0xD000000000000016, 0x8000000258B37DC0, v54);
        v55 = v98;
        v102 = v98;
        v56 = v3[22];
        if (v56 == 2)
        {
          sub_258AC2CE4(0x7373417473726966, 0xEF746E656D737365, &v100);
          sub_258A3F0C0(&v100);
        }

        else
        {
          v101 = v53;
          LOBYTE(v100) = v56 & 1;
          sub_258A2D784(&v100, v99);
          v57 = swift_isUniquelyReferenced_nonNull_native();
          v98 = v55;
          sub_258AC8BC0(v99, 0x7373417473726966, 0xEF746E656D737365, v57);
          v102 = v98;
        }

        v58 = sub_258B02B14();
        v60 = v59;
        v61 = HKMHUIActivePairedWatchProductType();
        if (v61)
        {
          v62 = v61;
          v63 = sub_258B02B14();
          v65 = v64;

          v101 = v31;
          if (v65)
          {
            goto LABEL_62;
          }
        }

        else
        {
          v101 = v31;
        }

        v63 = sub_258B02B14();
        v65 = v66;
LABEL_62:
        v95[1] = v13;
        *&v100 = v63;
        *(&v100 + 1) = v65;
        sub_258A2D784(&v100, v99);
        v67 = v102;
        v68 = swift_isUniquelyReferenced_nonNull_native();
        v98 = v67;
        sub_258AC8BC0(v99, v58, v60, v68);

        v69 = v98;
        v102 = v98;
        v70 = sub_258B02B14();
        v72 = v71;
        v73 = HKMHUIActivePairedWatchBuildVersion();
        if (v73)
        {
          v74 = v73;
          v75 = v31;
          v76 = sub_258B02B14();
          v78 = v77;

          v101 = v75;
          if (v78)
          {
LABEL_67:
            *&v100 = v76;
            *(&v100 + 1) = v78;
            sub_258A2D784(&v100, v99);
            v80 = swift_isUniquelyReferenced_nonNull_native();
            v98 = v69;
            sub_258AC8BC0(v99, v70, v72, v80);

            v102 = v98;
            v81 = sub_258B02B14();
            v83 = v82;
            sub_258B00074();
            v84 = sub_258AB40EC();
            (*(v9 + 8))(v11, v96);
            if (v84)
            {
              v101 = sub_258A681B4();
              *&v100 = v84;
              sub_258A2D784(&v100, v99);
              v85 = v102;
              v86 = swift_isUniquelyReferenced_nonNull_native();
              v98 = v85;
              sub_258AC8BC0(v99, v81, v83, v86);

              v102 = v98;
            }

            else
            {
              sub_258AC2CE4(v81, v83, &v100);

              sub_258A3F0C0(&v100);
            }

            v87 = MEMORY[0x277D837D0];
            v88 = sub_258B02B14();
            v90 = v89;
            v91 = sub_258AB43D0();
            v101 = v87;
            if (!v92)
            {
              v91 = sub_258B02B14();
            }

            *&v100 = v91;
            *(&v100 + 1) = v92;
            sub_258A2D784(&v100, v99);
            v93 = v102;
            v94 = swift_isUniquelyReferenced_nonNull_native();
            v98 = v93;
            sub_258AC8BC0(v99, v88, v90, v94);

            swift_unknownObjectRelease();
            return v98;
          }
        }

        else
        {
          v101 = v31;
        }

        v76 = sub_258B02B14();
        v78 = v79;
        goto LABEL_67;
      }

      v39 = 0xEB00000000395148;
      v40 = 0x50646E6137444147;
    }

    else
    {
      v39 = 0xE400000000000000;
      if (v3[18])
      {
        v40 = 927220039;
      }

      else
      {
        v40 = 961628240;
      }
    }

    v101 = v31;
    *&v100 = v40;
    *(&v100 + 1) = v39;
    sub_258A2D784(&v100, v99);
    v41 = swift_isUniquelyReferenced_nonNull_native();
    v98 = v38;
    sub_258AC8BC0(v99, 0x656D737365737361, 0xEE0065707954746ELL, v41);
    v42 = v98;
    v102 = v98;
    goto LABEL_43;
  }

  sub_258B00364();
  v19 = sub_258B00374();
  v20 = sub_258B02E94();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *&v100 = v22;
    *v21 = 136446210;
    v23 = sub_258B035A4();
    v25 = sub_2589F1F78(v23, v24, &v100);

    *(v21 + 4) = v25;
    _os_log_impl(&dword_2589A1000, v19, v20, "[%{public}s] Tried to create a payload with a dataSource containing nil healthDataSource", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    MEMORY[0x259C945C0](v22, -1, -1);
    MEMORY[0x259C945C0](v21, -1, -1);
  }

  v26 = (*(v6 + 8))(v8, v5);
  sub_258AC2C90(v26, v27, v28);
  swift_allocError();
  *v29 = 0xD000000000000028;
  v29[1] = 0x8000000258B38E00;
  return swift_willThrow();
}

unint64_t sub_258AC2C90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F971098;
  if (!qword_27F971098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F971098);
  }

  return result;
}

double sub_258AC2CE4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_258AD5508(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_258A99AA0();
      v10 = v12;
    }

    sub_258A2D784((*(v10 + 56) + 32 * v8), a3);
    sub_258AC86EC(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_258AC2D9C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = sub_258AC8A40(a1, a2, isUniquelyReferenced_nonNull_native, sub_258AD5580, sub_258A99918, sub_258A98C7C, &type metadata for ChamomileRenderer.RenderPipeline);
    *v2 = v12;
  }

  else
  {
    result = sub_258AD5580(a2);
    if (v8)
    {
      v9 = result;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_258A99918();
        v11 = v13;
      }

      swift_unknownObjectRelease();
      result = sub_258AC84D8(v9, v11);
      *v3 = v11;
    }
  }

  return result;
}

uint64_t sub_258AC2ED4(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xED0000797274656DLL;
  v3 = 0x6F65675F64617571;
  v4 = *a1;
  if (v4 == 1)
  {
    v5 = 0xD000000000000013;
  }

  else
  {
    v5 = 0x6F65675F64617571;
  }

  if (v4 == 1)
  {
    v6 = 0x8000000258B362F0;
  }

  else
  {
    v6 = 0xED0000797274656DLL;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000012;
  }

  if (v4)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0x8000000258B362D0;
  }

  if (*a2 == 1)
  {
    v3 = 0xD000000000000013;
    v2 = 0x8000000258B362F0;
  }

  if (*a2)
  {
    v9 = v3;
  }

  else
  {
    v9 = 0xD000000000000012;
  }

  if (*a2)
  {
    v10 = v2;
  }

  else
  {
    v10 = 0x8000000258B362D0;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_258B03454();
  }

  return v11 & 1;
}

uint64_t sub_258AC2FB8()
{
  sub_258B03514();
  sub_258B02B74();

  return sub_258B03554();
}

double sub_258AC306C(uint64_t a1)
{
  sub_258B02B74();

  return result;
}

uint64_t sub_258AC310C(uint64_t a1)
{
  sub_258B03514();
  sub_258B02B74();

  return sub_258B03554();
}

unint64_t sub_258AC31BC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_258AC921C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_258AC31EC(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED0000797274656DLL;
  v4 = 0x6F65675F64617571;
  if (v2 == 1)
  {
    v4 = 0xD000000000000013;
    v3 = 0x8000000258B362F0;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xD000000000000012;
  }

  if (v5)
  {
    v3 = 0x8000000258B362D0;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_258AC325C(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000011;
  v3 = *a1;
  v4 = "compute_final_composite";
  if (v3 == 1)
  {
    v5 = 0xD000000000000014;
  }

  else
  {
    v5 = 0xD000000000000011;
  }

  if (v3 == 1)
  {
    v6 = "compute_final_composite";
  }

  else
  {
    v6 = "compute_bg_composite";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000017;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = "ont";
  }

  if (*a2 == 1)
  {
    v2 = 0xD000000000000014;
  }

  else
  {
    v4 = "compute_bg_composite";
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0xD000000000000017;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = "ont";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_258B03454();
  }

  return v11 & 1;
}

uint64_t sub_258AC3338()
{
  sub_258B03514();
  sub_258B02B74();

  return sub_258B03554();
}

double sub_258AC33D4(uint64_t a1)
{
  sub_258B02B74();

  return result;
}

uint64_t sub_258AC345C(uint64_t a1)
{
  sub_258B03514();
  sub_258B02B74();

  return sub_258B03554();
}

unint64_t sub_258AC34F4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_258AC9268(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_258AC3524(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000011;
  v3 = "compute_final_composite";
  if (*v1 == 1)
  {
    v2 = 0xD000000000000014;
  }

  else
  {
    v3 = "compute_bg_composite";
  }

  if (*v1)
  {
    v4 = v3;
  }

  else
  {
    v2 = 0xD000000000000017;
    v4 = "ont";
  }

  *a1 = v2;
  a1[1] = v4 | 0x8000000000000000;
}

void sub_258AC3580()
{
  v1 = *(v0 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_animationMode);
  v2 = 80;
  if (v1 == 1)
  {
    v20 = &OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_sampleCount;
    v19 = 4;
    goto LABEL_12;
  }

  if (!v1)
  {
    v3 = *(v0 + OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_layer);
    if (!v3)
    {
      v2 = 80;
      goto LABEL_13;
    }

    v4 = v3;
    v2 = [v4 pixelFormat];
    v5 = v4;
    [v5 bounds];
    Width = CGRectGetWidth(v22);
    v7 = OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_superSampling;
    v8 = Width * *(v0 + OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_superSampling);
    if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v8 > -9.22337204e18)
    {
      if (v8 < 9.22337204e18)
      {
        *(v0 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_textureWidth) = v8;
        [v5 bounds];
        v10 = v9;
        v12 = v11;
        v14 = v13;
        v16 = v15;

        v23.origin.x = v10;
        v23.origin.y = v12;
        v23.size.width = v14;
        v23.size.height = v16;
        Height = CGRectGetHeight(v23);

        v18 = Height * *(v0 + v7);
        if (COERCE__INT64(fabs(v18)) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v18 > -9.22337204e18)
          {
            if (v18 < 9.22337204e18)
            {
              v19 = v18;
              v20 = &OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_textureHeight;
LABEL_12:
              *(v0 + *v20) = v19;
              goto LABEL_13;
            }

LABEL_22:
            __break(1u);
            return;
          }

LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  sub_258AC3758();
  sub_258AC3910();
  sub_258AC4270();

  sub_258AC452C(v2);
}

void sub_258AC3758()
{
  v1 = OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_firstRun;
  swift_beginAccess();
  *(v0 + v1) = 1;
  v2 = OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_time;
  swift_beginAccess();
  *(v0 + v2) = 0;
  v3 = OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_ringBufferHelpers;
  swift_beginAccess();
  v4 = *(v0 + v3);
  if (v4 >> 62)
  {
    goto LABEL_23;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v6 = OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_reduceMotion;
  sub_258B003E4();
  if (v5)
  {
    v7 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x259C937C0](v7, v4);
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
LABEL_16:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v7 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          v5 = sub_258B032B4();
          goto LABEL_3;
        }

        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_16;
        }
      }

      v10 = *(v8 + 24);
      v11 = v10 != 0;
      v12 = v10 - 1;
      if (!v11)
      {
        goto LABEL_22;
      }

      *(v8 + 28) = v12;
      v13 = *(v8 + 16);
      if (*(v0 + v6))
      {
        v13 = v13 * 1.8;
      }

      *(v8 + 36) = v13;
      *(v8 + 40) = v13;

      ++v7;
    }

    while (v9 != v5);
  }

  if (*(v0 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_animationMode) == 1)
  {
    v14 = 1069379748;
  }

  else
  {
    v14 = *(v0 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_scale);
  }

  *(v0 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_scale) = v14;
}

void sub_258AC3910()
{
  v75 = *MEMORY[0x277D85DE8];
  v64 = sub_258B006A4();
  v1 = *(v64 - 8);
  v2 = MEMORY[0x28223BE20](v64);
  v63 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  *&v59 = &v57 - v4;
  v62 = OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_device;
  v5 = *(v0 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_blurSigma);
  v6 = *(v0 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_textureWidth);
  v7 = *(v0 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_textureHeight);
  v8 = *(v0 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_kernelCache);
  v61 = OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_metalArchive;
  v9 = *(v0 + OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_metalArchive);
  v60 = OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_defaultLibrary;
  v10 = *(v0 + OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_defaultLibrary);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  MTLRegionMake2D(v6, v7, &v71);
  v11 = v73;
  v12 = v74;
  v58 = v71;
  v57 = v72;
  v13 = objc_allocWithZone(HKCVGaussianBlur);
  v71 = v58;
  v72 = v57;
  v73 = v11;
  v74 = v12;
  v14 = [v13 initWithSigma:&v71 clipRect:v8 kernelCache:v9 archive:v10 library:{COERCE_DOUBLE(__PAIR64__(DWORD1(v58), v5))}];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v15 = *(v0 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_blurPipeline);
  *(v0 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_blurPipeline) = v14;

  v16 = swift_allocObject();
  v17 = OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_animationMode;
  if (*(v0 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_animationMode) == 1)
  {
    v18 = 80;
  }

  else
  {
    v19 = *(v0 + OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_layer);
    if (!v19)
    {
      goto LABEL_14;
    }

    v18 = [v19 pixelFormat];
  }

  *&v58 = v16;
  *(v16 + 16) = v18;
  v20 = [objc_allocWithZone(MEMORY[0x277CD6D70]) init];
  v69 = *(v0 + v17);
  v21 = OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_colorScheme;
  swift_beginAccess();
  v22 = v59;
  v23 = v64;
  (*(v1 + 16))(v59, v0 + v21, v64);
  v24 = v63;
  (*(v1 + 104))(v63, *MEMORY[0x277CDF3D0], v23);
  LOBYTE(v21) = sub_258B00694();
  v25 = *(v1 + 8);
  v25(v24, v23);
  v25(v22, v23);
  v68 = (v21 & 1) == 0;
  v64 = v0;
  v67 = *(v0 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_reduceMotion);
  [v20 setConstantValue:&v69 type:29 atIndex:0];
  [v20 setConstantValue:&v68 type:29 atIndex:1];
  [v20 setConstantValue:&v67 type:53 atIndex:2];
  v63 = [objc_allocWithZone(MEMORY[0x277CD6D78]) init];
  *&v57 = v20;
  [v63 setConstantValues_];
  v26 = sub_258AD61A0(MEMORY[0x277D84F90]);
  v27 = 0;
  v59 = xmmword_258B2E600;
  do
  {
    v28 = byte_2869D51C8[v27++ + 32];
    v29 = [objc_allocWithZone(MEMORY[0x277CD6D30]) init];
    v30 = sub_258B02AD4();

    [v29 setLabel_];

    v31 = *(v64 + v61);
    if (v31)
    {
      sub_258AC9750(0, &qword_27F970720, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
      v32 = swift_allocObject();
      *(v32 + 16) = v59;
      *(v32 + 32) = v31;
      sub_258AC97A0();
      swift_unknownObjectRetain_n();
      v33 = sub_258B02C64();

      [v29 setBinaryArchives_];
      swift_unknownObjectRelease();
    }

    v34 = sub_258B02AD4();

    v35 = v63;
    [v63 setName_];

    v36 = v64;
    v37 = *(v64 + v60);
    v70[0] = 0;
    v38 = [v37 newFunctionWithDescriptor:v35 error:v70];
    if (!v38)
    {
      v50 = v70[0];
      v51 = sub_258AFFDC4();

      swift_willThrow();
      while (1)
      {
LABEL_14:
        sub_258B03294();
        __break(1u);
      }
    }

    v39 = v38;
    v40 = v70[0];
    [v29 setComputeFunction_];
    v41 = *(v36 + v62);
    v70[0] = 0;
    v42 = [v41 newComputePipelineStateWithDescriptor:v29 options:0 reflection:0 error:v70];
    if (!v42)
    {
      v52 = v70[0];
      sub_258AFFDC4();

      swift_willThrow();
      sub_258AC9750(0, &qword_27F96E3D0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84560]);
      v53 = swift_allocObject();
      *(v53 + 16) = xmmword_258B2C470;
      swift_getErrorValue();
      v54 = v65;
      v55 = v66;
      *(v53 + 56) = v66;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v53 + 32));
      (*(*(v55 - 8) + 16))(boxed_opaque_existential_1, v54, v55);
      sub_258B034F4();

      goto LABEL_14;
    }

    v43 = v42;
    v44 = v70[0];
    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v70[0] = v26;
    sub_258AC8A40(v43, v28, isUniquelyReferenced_nonNull_native, sub_258AD5660, sub_258A99930, sub_258A98F7C, &type metadata for ChamomileRenderer.ComputePipeline);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v26 = v70[0];
  }

  while (v27 != 3);
  v46 = OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_computePipelines;
  v47 = v64;
  swift_beginAccess();
  *(v47 + v46) = v26;

  v48 = v63;
  v49 = v58;
  sub_258AC6988(0, v63, v47, v58);
  sub_258AC6988(1, v48, v47, v49);
  sub_258AC6F78(v48, v47, v49);
}

uint64_t sub_258AC4270()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_device;
  v3 = *(v0 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_meshQuality);
  type metadata accessor for DiscMesh();
  v4 = swift_allocObject();
  *(v4 + 24) = 1;
  *(v4 + 32) = 0x3DCCCCCD3F800000;
  *(v4 + 40) = 1097859072;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 16) = v3;
  v5 = swift_unknownObjectRetain();
  sub_258AA2270(v5, v6);
  swift_unknownObjectRelease();
  *(v1 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_disc) = v4;

  type metadata accessor for QuadMesh();
  v7 = swift_allocObject();
  *(v7 + 16) = vdupq_n_s64(0x10uLL);
  *(v7 + 32) = 0u;
  *(v7 + 48) = 0u;
  v8 = swift_unknownObjectRetain();
  sub_258A380A0(v8);
  swift_unknownObjectRelease();
  *(v1 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_quad) = v7;

  v9 = *(v1 + v2);
  if (*(v1 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_animationMode) == 1)
  {
    v10 = [v9 newBufferWithLength:312 options:0];
    v11 = OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_instances;
    *(v1 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_instances) = v10;
    swift_unknownObjectRelease();
    v12 = *(v1 + v11);
    if (v12)
    {
      v13 = [swift_unknownObjectRetain() contents];
      v14 = v12;
    }

    else
    {
      v13 = 0;
    }

    v16 = v1 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_randomNumberGenerator;
    swift_beginAccess();
    for (i = 20; i != 332; i += 52)
    {
      if (v13)
      {
        v18 = __swift_mutable_project_boxed_opaque_existential_1(v16, *(v16 + 24));
        v21 = sub_258AC938C(v18, v19, v20);
        sub_258AC93E0(v21, v22, v23);
        sub_258B029D4();
        *&v13[i] = v27;
      }
    }

    swift_endAccess();
  }

  else
  {
    v15 = [v9 newBufferWithLength:312 options:32];
    *(v1 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_instances) = v15;
    swift_unknownObjectRelease();
  }

  v24 = *(v1 + v2);
  swift_unknownObjectRetain();
  v25 = sub_258AC8D7C(0x70614D746867694CLL, 0xEC000000676E702ELL, v24);
  swift_unknownObjectRelease();
  *(v1 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_environmentMap) = v25;
  return swift_unknownObjectRelease();
}

void sub_258AC452C(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_textureWidth);
  if (v2)
  {
    v3 = *(v1 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_textureHeight);
    if (v3)
    {
      v4 = [objc_opt_self() texture2DDescriptorWithPixelFormat:a1 width:v2 height:v3 mipmapped:0];
      v5 = OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_device;
      v6 = [*(v1 + OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_device) supportsFamily_];
      v7 = OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_sampleCount;
      if (*(v1 + OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_sampleCount) >= 2)
      {
        if (v6)
        {
          v8 = 3;
        }

        else
        {
          v8 = 2;
        }

        [v4 setUsage_];
        [v4 setSampleCount_];
        [v4 setTextureType_];
        [v4 setStorageMode_];
        v9 = [*(v1 + v5) newTextureWithDescriptor_];
        *(v1 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_msaaAlbedo) = v9;
        swift_unknownObjectRelease();
        v10 = [*(v1 + v5) newTextureWithDescriptor_];
        *(v1 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_msaaBackShape) = v10;
        swift_unknownObjectRelease();
      }

      [v4 setSampleCount_];
      [v4 setTextureType_];
      [v4 setStorageMode_];
      [v4 setUsage_];
      v11 = [*(v1 + v5) newTextureWithDescriptor_];
      *(v1 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_albedo) = v11;
      swift_unknownObjectRelease();
      [v4 setUsage_];
      v12 = [*(v1 + v5) newTextureWithDescriptor_];
      *(v1 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_background) = v12;
      swift_unknownObjectRelease();
      [v4 setUsage_];
      v13 = [*(v1 + v5) newTextureWithDescriptor_];
      v14 = OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_backShape;
      swift_beginAccess();
      *(v1 + v14) = v13;
      swift_unknownObjectRelease();
      if (*(v1 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_animationMode) == 1)
      {
        [v4 setStorageMode_];
        [v4 setUsage_];
        v15 = [*(v1 + v5) newTextureWithDescriptor_];
        *(v1 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_result) = v15;
        swift_unknownObjectRelease();
        v16 = [v4 width];
        if ((v16 - 0x2000000000000000) >> 62 == 3)
        {
          v17 = 4 * v16;
          v18 = [v4 height];
          if ((v17 * v18) >> 64 == (v17 * v18) >> 63)
          {
            v19 = [*(v1 + v5) newBufferWithLength_options_];
LABEL_13:
            *(v1 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_resultBuffer) = v19;
            swift_unknownObjectRelease();
            sub_258AC9750(0, &qword_27F96E3D0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84560]);
            v20 = swift_allocObject();
            *(v20 + 16) = xmmword_258B326A0;
            *(v20 + 56) = MEMORY[0x277D837D0];
            *(v20 + 32) = 0xD00000000000001ALL;
            *(v20 + 40) = 0x8000000258B39140;
            v21 = [v4 width];
            v22 = MEMORY[0x277D83B88];
            *(v20 + 88) = MEMORY[0x277D83B88];
            *(v20 + 64) = v21;
            v23 = [v4 height];
            *(v20 + 120) = v22;
            *(v20 + 96) = v23;
            sub_258B034F4();

            return;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        return;
      }

      *(v1 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_result) = 0;
      swift_unknownObjectRelease();
      v19 = 0;
      goto LABEL_13;
    }
  }
}

uint64_t sub_258AC4958()
{
  v1 = v0;
  sub_258AC7738(v0, *(v0 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_textureWidth) / *(v0 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_textureHeight));
  v2 = *(MEMORY[0x277D860B8] + 16);
  v4 = *(MEMORY[0x277D860B8] + 32);
  v3 = *(MEMORY[0x277D860B8] + 48);
  v5 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*MEMORY[0x277D860B8], COERCE_FLOAT(*MEMORY[0x277D860B8])), v2, *MEMORY[0x277D860B8], 1), v4, *MEMORY[0x277D860B8], 2), v3, *MEMORY[0x277D860B8], 3);
  v6 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*MEMORY[0x277D860B8], v2.f32[0]), v2, *v2.f32, 1), v4, v2, 2), v3, v2, 3);
  v7 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*MEMORY[0x277D860B8], v4.f32[0]), v2, *v4.f32, 1), v4, v4, 2), v3, v4, 3);
  __asm { FMOV            V17.4S, #1.5 }

  v13 = vmlaq_laneq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(*MEMORY[0x277D860B8], 0), 0, v2), _Q17, v4), v3, v3, 3);
  v14 = (v0 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_modelRotation);
  v76 = *(v0 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_modelRotation + 16);
  v77 = *(v0 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_modelRotation);
  v15 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v5, v77.f32[0]), v6, *(v0 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_modelRotation), 1), v7, v77, 2), v13, v77, 3);
  v16 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v5, v76.f32[0]), v6, *v76.f32, 1), v7, v76, 2), v13, v76, 3);
  v74 = *(v0 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_modelRotation + 48);
  v75 = *(v0 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_modelRotation + 32);
  v17 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v5, v75.f32[0]), v6, *(v0 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_modelRotation + 32), 1), v7, v75, 2), v13, v75, 3);
  v18 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v5, v74.f32[0]), v6, *v74.f32, 1), v7, v74, 2), v13, v74, 3);
  v19 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v15, COERCE_FLOAT(*MEMORY[0x277D860B8])), v16, *MEMORY[0x277D860B8], 1), v17, *MEMORY[0x277D860B8], 2), v18, *MEMORY[0x277D860B8], 3);
  v20 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v15, v2.f32[0]), v16, *v2.f32, 1), v17, v2, 2), v18, v2, 3);
  v21 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v15, v4.f32[0]), v16, *v4.f32, 1), v17, v4, 2), v18, v4, 3);
  __asm { FMOV            V6.4S, #-1.5 }

  v23 = vmlaq_laneq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v15, 0), 0, v16), _Q6, v17), v18, v3, 3);
  v24 = vmulq_f32(v19, 0);
  v80 = vmlaq_f32(vmlaq_f32(vaddq_f32(v20, v24), 0, v21), 0, v23);
  v81 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v19, 0, v20), 0, v21), 0, v23);
  v25 = vmlaq_f32(v24, 0, v20);
  v78 = vaddq_f32(v23, vmlaq_f32(v25, 0, v21));
  v79 = vmlaq_f32(vaddq_f32(v21, v25), 0, v23);
  v26 = (v0 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_model);
  swift_beginAccess();
  *v26 = v81;
  v26[1] = v80;
  v26[2] = v79;
  v26[3] = v78;
  if ((*(v1 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_isDragging) & 1) == 0)
  {
    v87.columns[1] = v76;
    v87.columns[0] = v77;
    v87.columns[3] = v74;
    v87.columns[2] = v75;
    *v27.i64 = simd_quaternion(v87);
    simd_slerp(v27, _PromotedConst, v28);
    *&v29 = MEMORY[0x259C934B0]();
    *v14 = v29;
    v14[1] = v30;
    v14[2] = v31;
    v14[3] = v32;
  }

  v33 = OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_lights;
  swift_beginAccess();
  *(v1 + v33) = MEMORY[0x277D84F90];

  swift_beginAccess();
  v34 = *(v1 + v33);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + v33) = v34;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_40;
  }

  while (1)
  {
    v37 = *(v34 + 2);
    v36 = *(v34 + 3);
    if (v37 >= v36 >> 1)
    {
      v34 = sub_258A7524C((v36 > 1), v37 + 1, 1, v34);
    }

    v38 = vrsqrte_f32(1107296256);
    v39 = vmul_f32(v38, vrsqrts_f32(1107296256, vmul_f32(v38, v38)));
    *(v34 + 2) = v37 + 1;
    v40 = &v34[48 * v37];
    *(v40 + 2) = xmmword_258B34000;
    *(v40 + 3) = vmulq_n_f32(xmmword_258B33FF0, vmul_f32(v39, vrsqrts_f32(1107296256, vmul_f32(v39, v39))).f32[0]);
    *(v40 + 16) = 1109393408;
    *(v1 + v33) = v34;
    v42 = *(v34 + 2);
    v41 = *(v34 + 3);
    if (v42 >= v41 >> 1)
    {
      v34 = sub_258A7524C((v41 > 1), v42 + 1, 1, v34);
    }

    v43 = vrsqrte_f32(1105723393);
    v44 = vmul_f32(v43, vrsqrts_f32(1105723393, vmul_f32(v43, v43)));
    *(v34 + 2) = v42 + 1;
    v45 = &v34[48 * v42];
    *(v45 + 2) = xmmword_258B34020;
    *(v45 + 3) = vmulq_n_f32(xmmword_258B34010, vmul_f32(v44, vrsqrts_f32(1105723393, vmul_f32(v44, v44))).f32[0]);
    *(v45 + 16) = 1101004800;
    *(v1 + v33) = v34;
    v47 = *(v34 + 2);
    v46 = *(v34 + 3);
    if (v47 >= v46 >> 1)
    {
      v34 = sub_258A7524C((v46 > 1), v47 + 1, 1, v34);
    }

    v48 = vrsqrte_f32(1105723391);
    v49 = vmul_f32(v48, vrsqrts_f32(1105723391, vmul_f32(v48, v48)));
    *(v34 + 2) = v47 + 1;
    v50 = &v34[48 * v47];
    *(v50 + 2) = xmmword_258B34040;
    *(v50 + 3) = vmulq_n_f32(xmmword_258B34030, vmul_f32(v49, vrsqrts_f32(1105723391, vmul_f32(v49, v49))).f32[0]);
    *(v50 + 16) = 1101004800;
    *(v1 + v33) = v34;
    swift_endAccess();
    v51 = *(v1 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_animationMode) == 1 ? 0.016667 : *(v1 + OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_timeDelta);
    v52 = (v1 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_time);
    swift_beginAccess();
    *v52 = v51 + *v52;
    v53 = OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_ringBufferHelpers;
    swift_beginAccess();
    v34 = *(v1 + v53);
    v54 = v34 >> 62 ? sub_258B032B4() : *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_258B003E4();
    if (!v54)
    {
      break;
    }

    v33 = 0;
    while ((v34 & 0xC000000000000001) != 0)
    {
      v55 = MEMORY[0x259C937C0](v33, v34);
      v56 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

LABEL_22:
      v57 = *(v55 + 40);
      v58 = v51 + *(v55 + 36);
      *(v55 + 36) = v58;
      if (v57 > v58)
      {
        *(v55 + 32) = 0;
      }

      else
      {
        *(v55 + 36) = v58 - v57;
        v59 = *(v55 + 28);
        _CF = __CFADD__(v59, 1);
        v60 = v59 + 1;
        if (_CF)
        {
          goto LABEL_39;
        }

        *(v55 + 28) = v60;
        *(v55 + 32) = 1;
        if (v60 >= *(v55 + 24))
        {
          *(v55 + 28) = *(v55 + 20);
        }
      }

      ++v33;
      if (v56 == v54)
      {
        goto LABEL_29;
      }
    }

    if (v33 < *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {

      v56 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        goto LABEL_28;
      }

      goto LABEL_22;
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    v34 = sub_258A7524C(0, *(v34 + 2) + 1, 1, v34);
    *(v1 + v33) = v34;
  }

LABEL_29:

  v61 = OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_firstRun;
  swift_beginAccess();
  if (*(v1 + v61) == 1)
  {
    v62 = *(v1 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_valence);
    v63 = (v1 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_valenceSmoothed);
    swift_beginAccess();
    *v63 = v62;
  }

  else
  {
    if (*(v1 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_reduceMotion))
    {
      v64 = 0.02;
    }

    else
    {
      v64 = 0.1;
    }

    v65 = (v1 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_valenceSmoothed);
    swift_beginAccess();
    *v65 = *v65 + (v64 * (*(v1 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_valence) - *v65));
  }

  v66 = v1 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer__effectiveValence;
  v67 = *(v1 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer__effectiveValence + 8);
  v68 = *(v1 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer__effectiveValence + 16);
  v84 = *(v1 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer__effectiveValence);
  v85 = v67;
  v86 = v68;
  sub_258AC9750(0, &unk_27F971190, MEMORY[0x277D83A90], MEMORY[0x277CE11F8]);
  MEMORY[0x259C92900](v82);
  v69 = *v82;
  v70 = (v1 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_valenceSmoothed);
  result = swift_beginAccess();
  if (vabds_f32(v69, *v70) > 0.001)
  {
    v72 = *(v66 + 8);
    v73 = *(v66 + 16);
    v82[0] = *v66;
    v82[1] = v72;
    v83 = v73;
    return sub_258B02314();
  }

  return result;
}

id sub_258AC5060(void *a1)
{
  v2 = v1;
  v53 = *MEMORY[0x277D85DE8];
  result = [a1 computeCommandEncoder];
  if (result)
  {
    v4 = result;
    v5 = OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_computePipelines;
    swift_beginAccess();
    v6 = *(v1 + v5);
    if (!*(v6 + 16) || (v7 = sub_258AD5660(2), (v8 & 1) == 0))
    {
      swift_endAccess();
      return swift_unknownObjectRelease();
    }

    v46 = v4;
    v9 = *(*(v6 + 56) + 8 * v7);
    swift_endAccess();
    *&v51 = *(v2 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_thetaOffsetRange);
    v10 = v2 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_randomNumberGenerator;
    swift_beginAccess();
    v11 = *(v10 + 24);
    v12 = *(v10 + 32);
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
    v16 = sub_258AC938C(v13, v14, v15);
    sub_258AC93E0(v16, v17, v18);
    v45 = v9;
    swift_unknownObjectRetain();
    v19 = MEMORY[0x277D83A90];
    sub_258B029D4();
    swift_endAccess();
    if (*(v2 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_animationMode) == 1)
    {
      v20 = 1015580987;
    }

    else
    {
      v20 = *(v2 + OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_timeDelta);
    }

    v49 = v20;
    v21 = OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_ringBufferHelpers;
    swift_beginAccess();
    v22 = *(v2 + v21);
    if (v22 >> 62)
    {
      goto LABEL_41;
    }

    v12 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_10:
    v11 = MEMORY[0x277D84F90];
    if (v12)
    {
      v23 = 4;
      v19 = MEMORY[0x277D84F90];
      while (1)
      {
        v24 = v23 - 4;
        swift_beginAccess();
        v25 = *(v2 + v21);
        if ((v25 & 0xC000000000000001) != 0)
        {
          v26 = MEMORY[0x259C937C0](v23 - 4);
        }

        else
        {
          if (v24 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_40:
            __break(1u);
LABEL_41:
            v43 = sub_258B032B4();
            if (v43 < 0)
            {
              __break(1u);
              goto LABEL_43;
            }

            v12 = v43;
            goto LABEL_10;
          }

          v26 = *(v25 + 8 * v23);
        }

        swift_endAccess();
        v4 = *(v26 + 28);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_258A74F10(0, *(v11 + 2) + 1, 1, v11);
        }

        v28 = *(v11 + 2);
        v27 = *(v11 + 3);
        if (v28 >= v27 >> 1)
        {
          v11 = sub_258A74F10((v27 > 1), v28 + 1, 1, v11);
        }

        *(v11 + 2) = v28 + 1;
        *&v11[4 * v28 + 32] = v4;
        swift_beginAccess();
        v29 = *(v2 + v21);
        if ((v29 & 0xC000000000000001) != 0)
        {
          v30 = MEMORY[0x259C937C0](v23 - 4);
        }

        else
        {
          if (v24 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_40;
          }

          v30 = *(v29 + 8 * v23);
        }

        swift_endAccess();
        v4 = *(v30 + 32);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_258A7538C(0, *(v19 + 2) + 1, 1, v19);
        }

        v32 = *(v19 + 2);
        v31 = *(v19 + 3);
        if (v32 >= v31 >> 1)
        {
          v19 = sub_258A7538C((v31 > 1), v32 + 1, 1, v19);
        }

        *(v19 + 2) = v32 + 1;
        v19[v32 + 32] = v4;
        ++v23;
        v12 = (v12 - 1);
        if (!v12)
        {
          goto LABEL_31;
        }
      }
    }

    v19 = MEMORY[0x277D84F90];
LABEL_31:
    v33 = sub_258B02AD4();
    v4 = v46;
    [v46 setLabel_];

    v12 = sub_258B02AD4();
    [v46 pushDebugGroup_];

    [v46 setComputePipelineState_];
    [v46 setBuffer:*(v2 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_instances) offset:0 atIndex:0];
    v34 = *(v2 + v21);
    if (v34 >> 62)
    {
LABEL_43:
      v35 = sub_258B032B4();
    }

    else
    {
      v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if ((v35 - 0x2000000000000000) >> 62 == 3)
    {
      v12 = &property descriptor for StateOfMindEntryModel.valence;
      [v4 setBytes:v11 + 32 length:4 * v35 atIndex:1];

      v36 = *(v2 + v21);
      if (!(v36 >> 62))
      {
        v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_36;
      }
    }

    else
    {
      __break(1u);
    }

    v37 = sub_258B032B4();
LABEL_36:
    [v4 v12[471]];

    [v4 v12[471]];
    v38 = OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_valenceSmoothed;
    swift_beginAccess();
    [v4 v12[471]];
    swift_endAccess();
    v39 = OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_firstRun;
    swift_beginAccess();
    [v4 v12[471]];
    swift_endAccess();
    [v4 v12[471]];
    MTLSizeMake(2, 1, &v51);
    v44 = v51;
    v40 = v52;
    MTLSizeMake(4, 1, &v51);
    v41 = v52;
    v42 = v51;
    v51 = v44;
    v52 = v40;
    v47 = v42;
    v48 = v41;
    [v4 dispatchThreadgroups:&v51 threadsPerThreadgroup:&v47];
    [v4 popDebugGroup];
    [v4 endEncoding];
    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_258AC56BC(void *a1)
{
  v2 = v1;
  v23[4] = *MEMORY[0x277D85DE8];
  sub_258AC7D04();
  v5 = v4;
  v6 = [a1 renderCommandEncoderWithDescriptor_];

  if (v6)
  {
    v7 = *(v2 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_quad);
    if (v7)
    {
      v8 = OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_renderPipelines;
      swift_beginAccess();
      v9 = *(v2 + v8);
      v10 = *(v9 + 16);

      if (v10 && (v11 = sub_258AD5580(2), (v12 & 1) != 0))
      {
        v13 = *(*(v9 + 56) + 8 * v11);
        swift_endAccess();
        v14 = v7[7];
        if (v14)
        {
          v15 = *(v2 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_textureWidth);
          if ((v15 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (!HIDWORD(v15))
          {
            v16 = *(v2 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_textureHeight);
            if ((v16 & 0x8000000000000000) == 0)
            {
              if (!HIDWORD(v16))
              {
                v23[0] = __PAIR64__(v16, v15);
                v17.i64[0] = v15;
                v17.i64[1] = v16;
                v22 = vdiv_f32(vadd_f32(*(v2 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_offset), *(v2 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_offset)), vmul_f32(vcvt_f32_f64(vcvtq_f64_u64(v17)), 0x3F0000003F000000));
                swift_unknownObjectRetain();
                swift_unknownObjectRetain();
                [v6 setFrontFacingWinding_];
                [v6 setCullMode_];
                v18 = sub_258B02AD4();
                [v6 setLabel_];

                v19 = sub_258B02AD4();
                [v6 pushDebugGroup_];

                [v6 setRenderPipelineState_];
                [v6 setVertexBuffer:v7[6] offset:0 atIndex:0];
                v20 = OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_time;
                swift_beginAccess();
                [v6 setVertexBytes:v2 + v20 length:4 atIndex:1];
                swift_endAccess();
                v21 = OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_valenceSmoothed;
                swift_beginAccess();
                [v6 setVertexBytes:v2 + v21 length:4 atIndex:2];
                swift_endAccess();
                [v6 setVertexBytes:v23 length:8 atIndex:3];
                [v6 setVertexBytes:&v22 length:8 atIndex:4];
                [v6 drawIndexedPrimitives:3 indexCount:v7[5] indexType:1 indexBuffer:v14 indexBufferOffset:0 instanceCount:1];
                [v6 popDebugGroup];
                [v6 endEncoding];
                swift_unknownObjectRelease();

                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                return;
              }

LABEL_20:
              __break(1u);
            }

LABEL_19:
            __break(1u);
            goto LABEL_20;
          }

          __break(1u);
          goto LABEL_19;
        }
      }

      else
      {
        swift_endAccess();
      }

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

void sub_258AC5A8C(void *a1, char *a2)
{
  v4 = v2;
  v5 = a2;
  v52 = *MEMORY[0x277D85DE8];
  v7 = a2 != 0;
  sub_258AC7A4C(a2);
  v9 = v8;
  v10 = [a1 renderCommandEncoderWithDescriptor_];

  if (v10)
  {
    v11 = *(v4 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_disc);
    if (v11)
    {
      v12 = OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_renderPipelines;
      swift_beginAccess();
      v13 = *(v4 + v12);
      v14 = *(v13 + 16);

      if (v14 && (v15 = sub_258AD5580(v7), (v16 & 1) != 0))
      {
        v17 = *(*(v13 + 56) + 8 * v15);
        swift_endAccess();
        v18 = v11[9];
        if (v18)
        {
          if (v5)
          {
            v19 = "computePipelines";
          }

          else
          {
            v19 = "Render Front Instances";
          }

          v20 = 6;
          if (!v5)
          {
            v20 = 1;
          }

          v45 = v20;
          v51 = v5;
          v21 = OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_ringBufferHelpers;
          swift_beginAccess();
          v22 = *(v4 + v21);
          if (v22 >> 62)
          {
LABEL_45:
            v33 = sub_258B032B4();
            if ((v33 & 0x8000000000000000) == 0)
            {
              goto LABEL_51;
            }

            __break(1u);
          }

          else
          {
            for (i = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = v33)
            {
              v46 = v19;
              v47 = v17;
              swift_unknownObjectRetain();
              v44 = v18;
              swift_unknownObjectRetain();
              if (i)
              {
                v23 = 0;
                v5 = MEMORY[0x277D84F90];
                while (1)
                {
                  swift_beginAccess();
                  v24 = *(v4 + v21);
                  if ((v24 & 0xC000000000000001) != 0)
                  {
                    v25 = MEMORY[0x259C937C0](v23);
                  }

                  else
                  {
                    if (v23 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      __break(1u);
                      goto LABEL_45;
                    }

                    v25 = *(v24 + 8 * v23 + 32);
                  }

                  swift_endAccess();
                  v17 = *(v25 + 28);

                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v5 = sub_258A74F10(0, *(v5 + 2) + 1, 1, v5);
                  }

                  v19 = *(v5 + 2);
                  v26 = *(v5 + 3);
                  v18 = (v19 + 1);
                  if (v19 >= v26 >> 1)
                  {
                    v5 = sub_258A74F10((v26 > 1), (v19 + 1), 1, v5);
                  }

                  ++v23;
                  *(v5 + 2) = v18;
                  *&v5[4 * v19 + 32] = v17;
                  if (i == v23)
                  {
                    goto LABEL_32;
                  }
                }
              }

              v5 = MEMORY[0x277D84F90];
LABEL_32:
              if (*(v4 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_animationMode) == 1)
              {
                v27.f32[0] = *(v4 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_textureWidth);
                v28 = *(v4 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_textureHeight);
                v29 = 0;
              }

              else
              {
                v30.i64[0] = *(v4 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_textureWidth);
                v30.i64[1] = *(v4 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_textureHeight);
                v27 = vcvt_f32_f64(vcvtq_f64_s64(v30));
                v29 = vdiv_f32(*(v4 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_offset), vmul_f32(v27, 0x3F0000003F000000));
                v28 = v27.f32[1];
              }

              v50 = v29;
              v31 = v27.f32[0] / v28;
              v32 = v31 >= 1.0 ? *(v4 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_scale) : v31 * *(v4 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_scale);
              v49 = v32;
              i = OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_lights;
              swift_beginAccess();
              v48 = *(*(v4 + i) + 16);
              [v10 setFrontFacingWinding_];
              [v10 setCullMode_];
              v17 = v46;
              v18 = sub_258B02AD4();
              [v10 setLabel_];

              v33 = [v10 label];
              if (v33)
              {
                break;
              }

              __break(1u);
LABEL_51:
              ;
            }

            v34 = v33;

            [v10 pushDebugGroup_];

            [v10 setRenderPipelineState_];
            [v10 setVertexBuffer:v11[8] offset:0 atIndex:0];
            [v10 setVertexBuffer:*(v4 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_instances) offset:0 atIndex:1];
            v35 = *(v4 + v21);
            if (!(v35 >> 62))
            {
              v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
              goto LABEL_41;
            }
          }

          v36 = sub_258B032B4();
LABEL_41:
          if ((v36 - 0x2000000000000000) >> 62 == 3)
          {
            [v10 setVertexBytes:v5 + 32 length:4 * v36 atIndex:2];

            v37 = OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_model;
            swift_beginAccess();
            [v10 setVertexBytes:v4 + v37 length:64 atIndex:3];
            swift_endAccess();
            v38 = OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_camera;
            swift_beginAccess();
            [v10 setVertexBytes:v4 + v38 length:64 atIndex:4];
            swift_endAccess();
            v39 = OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_time;
            swift_beginAccess();
            [v10 setVertexBytes:v4 + v39 length:4 atIndex:5];
            swift_endAccess();
            v40 = OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_valenceSmoothed;
            swift_beginAccess();
            [v10 setVertexBytes:v4 + v40 length:4 atIndex:6];
            swift_endAccess();
            [v10 setVertexBytes:&v51 length:8 atIndex:7];
            [v10 setFragmentBytes:&v50 length:8 atIndex:0];
            [v10 setFragmentBytes:&v49 length:4 atIndex:1];
            swift_beginAccess();
            v41 = *(v4 + i);
            v42 = *(v41 + 16);
            v43 = 48 * v42;
            if ((v42 * 48) >> 64 == (48 * v42) >> 63)
            {
              sub_258B003E4();
              [v10 setFragmentBytes:v41 + 32 length:v43 atIndex:2];
              swift_endAccess();

              [v10 setFragmentBytes:&v48 length:8 atIndex:3];
              [v10 setFragmentBytes:&v51 length:8 atIndex:4];
              swift_beginAccess();
              [v10 setFragmentBytes:v4 + v39 length:4 atIndex:5];
              swift_endAccess();
              [v10 setFragmentTexture:*(v4 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_background) atIndex:0];
              [v10 setFragmentTexture:*(v4 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_environmentMap) atIndex:1];
              [v10 drawIndexedPrimitives:3 indexCount:v11[7] indexType:1 indexBuffer:v44 indexBufferOffset:0 instanceCount:v45];
              [v10 popDebugGroup];
              [v10 endEncoding];
              swift_unknownObjectRelease();

              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              return;
            }
          }

          else
          {
            __break(1u);
          }

          __break(1u);
        }
      }

      else
      {
        swift_endAccess();
      }

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

void sub_258AC6274(void *a1)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v2 = *(v1 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_blurPipeline);
  if (!v2)
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  v4 = OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_backShape;
  swift_beginAccess();
  if (!*(v1 + v4))
  {
    goto LABEL_5;
  }

  v6[0] = *(v1 + v4);
  v5 = v2;
  [(HKCVGaussianBlur *)v5 encodeCommandBuffer:a1 inPlaceTexture:v6];
  *(v1 + v4) = v6[0];
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  swift_endAccess();
}

id sub_258AC634C(void *a1)
{
  v2 = v1;
  result = [a1 computeCommandEncoder];
  if (result)
  {
    v4 = result;
    v5 = OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_computePipelines;
    swift_beginAccess();
    v6 = *(v2 + v5);
    if (*(v6 + 16))
    {
      v7 = sub_258AD5660(1);
      if (v8)
      {
        v9 = *(*(v6 + 56) + 8 * v7);
        swift_endAccess();
        swift_unknownObjectRetain();
        v10 = sub_258B02AD4();
        [v4 setLabel_];

        v11 = sub_258B02AD4();
        [v4 pushDebugGroup_];

        [v4 setComputePipelineState_];
        v12 = OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_backShape;
        swift_beginAccess();
        [v4 setTexture:*(v2 + v12) atIndex:0];
        v13 = OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_background;
        [v4 setTexture:*(v2 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_background) atIndex:1];
        [v4 setTexture:*(v2 + v13) atIndex:2];
        v14 = *(v2 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_textureWidth);
        v15 = v14 + 3;
        if (v14 >= 0)
        {
          v15 = *(v2 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_textureWidth);
        }

        v16 = v15 >> 2;
        if ((v14 & 3) != 0)
        {
          result = (v16 + 1);
        }

        else
        {
          result = v16;
        }

        if ((result - 0x2000000000000000) >> 62 == 3)
        {
          v17 = *(v2 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_textureHeight);
          v18 = v17 + 3;
          if (v17 >= 0)
          {
            v18 = *(v2 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_textureHeight);
          }

          v19 = v18 >> 2;
          if ((v17 & 3) != 0)
          {
            v20 = v19 + 1;
          }

          else
          {
            v20 = v19;
          }

          if ((v20 - 0x2000000000000000) >> 62 == 3)
          {
            MTLSizeMake(result, v20, &v27);
            v24 = v27;
            v21 = v28;
            MTLSizeMake(4, 4, &v27);
            v22 = v28;
            v23 = v27;
            v27 = v24;
            v28 = v21;
            v25 = v23;
            v26 = v22;
            [v4 dispatchThreadgroups:&v27 threadsPerThreadgroup:&v25];
            [v4 popDebugGroup];
            [v4 endEncoding];
            swift_unknownObjectRelease();
            return swift_unknownObjectRelease();
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        return result;
      }
    }

    swift_endAccess();
    return swift_unknownObjectRelease();
  }

  return result;
}

BOOL sub_258AC65E8(void *a1)
{
  v1 = [a1 commandBuffer];
  if (v1)
  {
    sub_258AC4958();
    sub_258AC5060(v1);
    sub_258AC56BC(v1);
    sub_258AC5A8C(v1, 0);
    sub_258AC6274(v1);
    sub_258AC634C(v1);
    sub_258AC5A8C(v1, 1);
    [v1 commit];
    swift_unknownObjectRelease();
  }

  return v1 != 0;
}

uint64_t sub_258AC667C(uint64_t a1, void *a2)
{
  sub_258AC66D8(a1, a2);
  [a2 commit];
  v4 = OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_firstRun;
  result = swift_beginAccess();
  *(v2 + v4) = 0;
  return result;
}

id sub_258AC66D8(uint64_t a1, id a2)
{
  v3 = v2;
  result = [a2 computeCommandEncoder];
  if (result)
  {
    v6 = result;
    v7 = OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_computePipelines;
    swift_beginAccess();
    v8 = *(v3 + v7);
    if (*(v8 + 16))
    {
      v9 = sub_258AD5660(0);
      if (v10)
      {
        v11 = *(*(v8 + 56) + 8 * v9);
        swift_endAccess();
        swift_unknownObjectRetain();
        v12 = sub_258B02AD4();
        [v6 setLabel_];

        v13 = sub_258B02AD4();
        [v6 pushDebugGroup_];

        [v6 setComputePipelineState_];
        [v6 setTexture:*(v3 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_albedo) atIndex:0];
        [v6 setTexture:*(v3 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_background) atIndex:1];
        [v6 setTexture:*(v3 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_result) atIndex:2];
        [v6 setTexture:a1 atIndex:3];
        v14 = *(v3 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_textureWidth);
        v15 = v14 + 3;
        if (v14 >= 0)
        {
          v15 = *(v3 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_textureWidth);
        }

        v16 = v15 >> 2;
        if ((v14 & 3) != 0)
        {
          result = (v16 + 1);
        }

        else
        {
          result = v16;
        }

        if ((result - 0x2000000000000000) >> 62 == 3)
        {
          v17 = *(v3 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_textureHeight);
          v18 = v17 + 3;
          if (v17 >= 0)
          {
            v18 = *(v3 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_textureHeight);
          }

          v19 = v18 >> 2;
          if ((v17 & 3) != 0)
          {
            v20 = v19 + 1;
          }

          else
          {
            v20 = v19;
          }

          if ((v20 - 0x2000000000000000) >> 62 == 3)
          {
            MTLSizeMake(result, v20, &v27);
            v24 = v27;
            v21 = v28;
            MTLSizeMake(4, 4, &v27);
            v22 = v28;
            v23 = v27;
            v27 = v24;
            v28 = v21;
            v25 = v23;
            v26 = v22;
            [v6 dispatchThreadgroups:&v27 threadsPerThreadgroup:&v25];
            [v6 popDebugGroup];
            [v6 endEncoding];
            swift_unknownObjectRelease();
            return swift_unknownObjectRelease();
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        return result;
      }
    }

    swift_endAccess();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_258AC6988(int a1, void *a2, uint64_t a3, uint64_t a4)
{
  v42[3] = *MEMORY[0x277D85DE8];
  v8 = sub_258B02AD4();
  [a2 setName_];

  v9 = OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_defaultLibrary;
  v10 = *(a3 + OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_defaultLibrary);
  v42[0] = 0;
  v11 = [v10 newFunctionWithDescriptor:a2 error:v42];
  if (v11 && (v12 = v11, v13 = v42[0], v14 = sub_258B02AD4(), [a2 setName_], v14, v15 = *(a3 + v9), v42[0] = 0, v16 = objc_msgSend(v15, sel_newFunctionWithDescriptor_error_, a2, v42), v17 = v42[0], v16))
  {
    v18 = v16;
    v19 = objc_allocWithZone(MEMORY[0x277CD6F78]);
    v20 = v17;
    v21 = [v19 init];
    [v21 setVertexFunction_];
    [v21 setFragmentFunction_];
    if (*(a3 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_disc))
    {
      v22 = sub_258AA2BD8();
    }

    else
    {
      v22 = 0;
    }

    [v21 setVertexDescriptor_];

    [v21 setRasterSampleCount_];
    v23 = [v21 colorAttachments];
    v24 = [v23 objectAtIndexedSubscript_];

    if (!v24)
    {
      __break(1u);
    }

    swift_beginAccess();
    [v24 setPixelFormat_];

    v25 = sub_258B02AD4();

    [v21 setLabel_];

    v26 = *(a3 + OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_metalArchive);
    if (v26)
    {
      sub_258AC9750(0, &qword_27F970720, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_258B2E600;
      *(v27 + 32) = v26;
      sub_258AC97A0();
      swift_unknownObjectRetain_n();
      v28 = sub_258B02C64();

      [v21 setBinaryArchives_];
      swift_unknownObjectRelease();
    }

    v29 = *(a3 + OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_device);
    v41[0] = 0;
    v30 = [v29 newRenderPipelineStateWithDescriptor:v21 options:0 reflection:0 error:v41];
    v31 = v41[0];
    if (v30)
    {
      swift_beginAccess();
      v32 = v31;
      v33 = swift_unknownObjectRetain();
      sub_258AC2D9C(v33, a1 != 0);
      swift_endAccess();

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return swift_unknownObjectRelease();
    }

    v37 = v41[0];
    sub_258AFFDC4();

    swift_willThrow();
    sub_258AC9750(0, &qword_27F96E3D0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84560]);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_258B2C470;
    swift_getErrorValue();
    *(v38 + 56) = v40;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v38 + 32));
    (*(*(v40 - 8) + 16))(boxed_opaque_existential_1);
    sub_258B034F4();
  }

  else
  {
    v35 = v42[0];
    v36 = sub_258AFFDC4();

    swift_willThrow();
  }

  result = sub_258B03294();
  __break(1u);
  return result;
}

uint64_t sub_258AC6F78(void *a1, uint64_t a2, uint64_t a3)
{
  v40[3] = *MEMORY[0x277D85DE8];
  v6 = sub_258B02AD4();
  [a1 setName_];

  v7 = OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_defaultLibrary;
  v8 = *(a2 + OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_defaultLibrary);
  v40[0] = 0;
  v9 = [v8 newFunctionWithDescriptor:a1 error:v40];
  if (v9 && (v10 = v9, v11 = v40[0], v12 = sub_258B02AD4(), [a1 setName_], v12, v13 = *(a2 + v7), v40[0] = 0, v14 = objc_msgSend(v13, sel_newFunctionWithDescriptor_error_, a1, v40), v15 = v40[0], v14))
  {
    v16 = v14;
    v17 = objc_allocWithZone(MEMORY[0x277CD6F78]);
    v18 = v15;
    v19 = [v17 init];
    [v19 setVertexFunction_];
    [v19 setFragmentFunction_];
    if (*(a2 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_quad))
    {
      v20 = sub_258A38418();
    }

    else
    {
      v20 = 0;
    }

    [v19 setVertexDescriptor_];

    [v19 setRasterSampleCount_];
    v21 = [v19 colorAttachments];
    v22 = [v21 objectAtIndexedSubscript_];

    if (!v22)
    {
      __break(1u);
    }

    swift_beginAccess();
    [v22 setPixelFormat_];

    v23 = sub_258B02AD4();
    [v19 setLabel_];

    v24 = *(a2 + OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_metalArchive);
    if (v24)
    {
      sub_258AC9750(0, &qword_27F970720, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_258B2E600;
      *(v25 + 32) = v24;
      sub_258AC97A0();
      swift_unknownObjectRetain_n();
      v26 = sub_258B02C64();

      [v19 setBinaryArchives_];
      swift_unknownObjectRelease();
    }

    v27 = *(a2 + OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_device);
    v39[0] = 0;
    v28 = [v27 newRenderPipelineStateWithDescriptor:v19 options:0 reflection:0 error:v39];
    v29 = v39[0];
    if (v28)
    {
      swift_beginAccess();
      v30 = v29;
      v31 = swift_unknownObjectRetain();
      sub_258AC2D9C(v31, 2);
      swift_endAccess();

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return swift_unknownObjectRelease();
    }

    v35 = v39[0];
    sub_258AFFDC4();

    swift_willThrow();
    sub_258AC9750(0, &qword_27F96E3D0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84560]);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_258B2C470;
    swift_getErrorValue();
    *(v36 + 56) = v38;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v36 + 32));
    (*(*(v38 - 8) + 16))(boxed_opaque_existential_1);
    sub_258B034F4();
  }

  else
  {
    v33 = v40[0];
    v34 = sub_258AFFDC4();

    swift_willThrow();
  }

  result = sub_258B03294();
  __break(1u);
  return result;
}

void sub_258AC753C(float a1, float a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_layer);
  if (v3)
  {
    v30 = v3;
    [v30 bounds];
    Width = CGRectGetWidth(v32);
    [v30 bounds];
    Height = CGRectGetHeight(v33);
    v8 = Width / Height;
    if ((~COERCE_INT(Width / Height) & 0x7F800000) != 0 || (COERCE_UNSIGNED_INT(Width / Height) & 0x7FFFFF) == 0)
    {
      v19 = sub_258AFABE8(((a1 / Width) * v8) * 3.0, xmmword_258B05770);
      v21 = v10;
      v23 = v11;
      v26 = v12;
      v13 = sub_258AFABE8(((a2 / Height) * v8) * 3.0, xmmword_258B057C0);
      v29 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v19, v13.n128_f32[0]), v21, v13.n128_u64[0], 1), v23, v13, 2), v26, v13, 3);
      v28 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v19, v14.f32[0]), v21, *v14.f32, 1), v23, v14, 2), v26, v14, 3);
      v25 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v19, v15.f32[0]), v21, *v15.f32, 1), v23, v15, 2), v26, v15, 3);
      v22 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v19, v16.f32[0]), v21, *v16.f32, 1), v23, v16, 2), v26, v16, 3);
      v17 = (v2 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_modelRotation);
      v18 = *(v2 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_modelRotation);
      v20 = *(v2 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_modelRotation + 16);
      v24 = *(v2 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_modelRotation + 32);
      v27 = *(v2 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_modelRotation + 48);

      *v17 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v29, v18.f32[0]), v28, *v18.f32, 1), v25, v18, 2), v22, v18, 3);
      v17[1] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v29, v20.f32[0]), v28, *v20.f32, 1), v25, v20, 2), v22, v20, 3);
      v17[2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v29, v24.f32[0]), v28, *v24.f32, 1), v25, v24, 2), v22, v24, 3);
      v17[3] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v29, v27.f32[0]), v28, *v27.f32, 1), v25, v27, 2), v22, v27, 3);
    }

    else
    {
    }
  }
}

__n128 sub_258AC7738(uint64_t a1, float a2)
{
  v29 = *(a1 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_scale);
  LODWORD(v3) = 0;
  HIDWORD(v3) = *(a1 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_scale);
  v31 = v3;
  v4.f32[0] = sub_258AFAE28(35.0, a2);
  if (a2 >= 1.0)
  {
    v35 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v29, v4.f32[0]), v31, *v4.f32, 1), xmmword_258B05780, v4, 2), xmmword_258B34050, v4, 3);
    v34 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v29, v5.f32[0]), v31, *v5.f32, 1), xmmword_258B05780, v5, 2), xmmword_258B34050, v5, 3);
    v33 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v29, v6.f32[0]), v31, *v6.f32, 1), xmmword_258B05780, v6, 2), xmmword_258B34050, v6, 3);
    v14 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v29, v7.f32[0]), v31, *v7.f32, 1), xmmword_258B05780, v7, 2), xmmword_258B34050, v7, 3);
  }

  else
  {
    v8 = vaddq_f32(vmlaq_f32(vmulq_n_f32(v29, a2), 0, v31), 0);
    v9 = vmulq_f32(v29, 0);
    v10 = vaddq_f32(vmlaq_n_f32(v9, v31, a2), 0);
    v11 = vmlaq_f32(v9, 0, v31);
    v12 = vaddq_f32(v11, xmmword_258B05780);
    v13 = vaddq_f32(vaddq_f32(v11, 0), xmmword_258B34050);
    v35 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(v8, v4.f32[0]), vdupq_lane_s32(*v4.f32, 1), v10), vdupq_laneq_s32(v4, 2), v12), vdupq_laneq_s32(v4, 3), v13);
    v34 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(v8, v5.f32[0]), vdupq_lane_s32(*v5.f32, 1), v10), vdupq_laneq_s32(v5, 2), v12), vdupq_laneq_s32(v5, 3), v13);
    v33 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(v8, v6.f32[0]), vdupq_lane_s32(*v6.f32, 1), v10), vdupq_laneq_s32(v6, 2), v12), vdupq_laneq_s32(v6, 3), v13);
    v14 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(v8, v7.f32[0]), vdupq_lane_s32(*v7.f32, 1), v10), vdupq_laneq_s32(v7, 2), v12), vdupq_laneq_s32(v7, 3), v13);
  }

  v32 = v14;
  if (*(a1 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_animationMode))
  {
    v15 = xmmword_258B34060;
  }

  else
  {
    v16 = 3.1416 - ((fmaxf(1.0 / a2, 1.0) * 0.61087) * (COERCE_FLOAT(HIDWORD(*(a1 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_offset))) / vcvts_n_f32_s64(*(a1 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_textureHeight), 1uLL)));
    v17 = __sincosf_stret(((fmaxf(a2, 1.0) * 0.61087) * (COERCE_FLOAT(*(a1 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_offset)) / vcvts_n_f32_s64(*(a1 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_textureWidth), 1uLL))) + 3.1416);
    v18 = __sincosf_stret(v16);
    v15.i64[0] = __PAIR64__(LODWORD(v18.__sinval), LODWORD(v17.__sinval));
    v15.i64[1] = COERCE_UNSIGNED_INT(-(v17.__cosval * v18.__cosval));
  }

  *v19.f32 = sub_258AFAEB8(0.0, v15, xmmword_258B05770);
  v20 = (a1 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_projection);
  *v20 = v35;
  v20[1] = v34;
  v20[2] = v33;
  v20[3] = v32;
  v28 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v35, v21.f32[0]), v34, *v21.f32, 1), v33, v21, 2), v32, v21, 3);
  v30 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v35, v19.f32[0]), v34, *v19.f32, 1), v33, v19, 2), v32, v19, 3);
  v26 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v35, v22.f32[0]), v34, *v22.f32, 1), v33, v22, 2), v32, v22, 3);
  v36 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v35, v23.f32[0]), v34, *v23.f32, 1), v33, v23, 2), v32, v23, 3);
  v24 = (a1 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_camera);
  swift_beginAccess();
  *v24 = v30;
  v24[1] = v28;
  result = v36;
  v24[2] = v26;
  v24[3] = v36;
  return result;
}

void sub_258AC7A4C(int a1)
{
  if (a1)
  {
    v2 = (v1 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_albedo);
  }

  else
  {
    v2 = (v1 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_backShape);
    swift_beginAccess();
  }

  v3 = *v2;
  v4 = objc_allocWithZone(MEMORY[0x277CD6F50]);
  swift_unknownObjectRetain();
  v5 = [v4 init];
  v6 = [v5 colorAttachments];
  v7 = [v6 objectAtIndexedSubscript_];

  if (!v7)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v8 = OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_sampleCount;
  if (*(v1 + OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_sampleCount) <= 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  [v7 setStoreAction_];

  v10 = [v5 colorAttachments];
  v11 = [v10 objectAtIndexedSubscript_];

  if (!v11)
  {
    goto LABEL_19;
  }

  [v11 setLoadAction_];

  v12 = [v5 colorAttachments];
  v13 = [v12 objectAtIndexedSubscript_];

  if (!v13)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  [v13 setClearColor_];

  v14 = [v5 colorAttachments];
  v15 = [v14 objectAtIndexedSubscript_];

  if (!v15)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    return;
  }

  v16 = v3;
  if (*(v1 + v8) >= 2)
  {
    v16 = *(v1 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_msaaAlbedo);
  }

  [v15 setTexture_];

  v17 = [v5 colorAttachments];
  v18 = [v17 objectAtIndexedSubscript_];

  if (!v18)
  {
    goto LABEL_22;
  }

  if (*(v1 + v8) < 2)
  {
    v19 = 0;
  }

  else
  {
    swift_unknownObjectRetain();
    v19 = v3;
  }

  [v18 setResolveTexture_];
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
}

void sub_258AC7D04()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CD6F50]) init];
  v2 = [v1 colorAttachments];
  v3 = [v2 objectAtIndexedSubscript_];

  if (!v3)
  {
    __break(1u);
    goto LABEL_8;
  }

  [v3 setStoreAction_];

  v4 = [v1 colorAttachments];
  v5 = [v4 objectAtIndexedSubscript_];

  if (!v5)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  [v5 setLoadAction_];

  v6 = [v1 colorAttachments];
  v7 = [v6 objectAtIndexedSubscript_];

  if (!v7)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  [v7 setClearColor_];

  v8 = [v1 colorAttachments];
  v9 = [v8 objectAtIndexedSubscript_];

  if (!v9)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v10 = *(v0 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_background);
  swift_unknownObjectRetain();
  [v9 setTexture_];
  swift_unknownObjectRelease();

  v11 = [v1 colorAttachments];
  v12 = [v11 objectAtIndexedSubscript_];

  if (v12)
  {
    [v12 setResolveTexture_];

    return;
  }

LABEL_11:
  __break(1u);
}

double sub_258AC7F20()
{
  v1 = OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_colorScheme;
  v2 = sub_258B006A4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_randomNumberGenerator));

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return result;
}

uint64_t type metadata accessor for ChamomileRenderer(uint64_t a1)
{
  result = qword_27F971160;
  if (!qword_27F971160)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258AC82C0(uint64_t a1)
{
  result = sub_258B006A4();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

unint64_t sub_258AC842C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F971170;
  if (!qword_27F971170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F971170);
  }

  return result;
}

unint64_t sub_258AC8484(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F971178;
  if (!qword_27F971178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F971178);
  }

  return result;
}

uint64_t sub_258AC84D8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_258B03124() + 1) & ~v5;
    do
    {
      sub_258B03514();
      sub_258B02B74();

      result = sub_258B03554();
      v9 = result & v7;
      if (v3 >= v8)
      {
        if (v9 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v9 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v9)
      {
LABEL_10:
        v10 = *(a2 + 48);
        v11 = (v10 + v3);
        v12 = (v10 + v6);
        if (v3 != v6 || v11 >= v12 + 1)
        {
          *v11 = *v12;
        }

        v13 = *(a2 + 56);
        v14 = (v13 + 8 * v3);
        v15 = (v13 + 8 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

void sub_258AC86EC(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_258B03124() + 1) & ~v5;
    do
    {
      sub_258B03514();
      sub_258B003E4();
      sub_258B02B74();
      v10 = sub_258B03554();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }
}

uint64_t sub_258AC889C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_258B03124() + 1) & ~v5;
    do
    {
      sub_258A9A3FC(*(a2 + 48) + 40 * v6, v25);
      v10 = sub_258B03134();
      result = sub_258A97AF8(v25);
      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = v14 + 40 * v3;
          v16 = (v14 + 40 * v6);
          if (v3 != v6 || v15 >= v16 + 40)
          {
            v17 = *v16;
            v18 = v16[1];
            *(v15 + 32) = *(v16 + 4);
            *v15 = v17;
            *(v15 + 16) = v18;
          }

          v19 = *(a2 + 56);
          v20 = (v19 + 32 * v3);
          v21 = (v19 + 32 * v6);
          if (v3 != v6 || v20 >= v21 + 2)
          {
            v9 = v21[1];
            *v20 = *v21;
            v20[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_258AC8A40(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(uint64_t), void (*a5)(void), void (*a6)(uint64_t, void), unint64_t a7)
{
  v11 = v7;
  v15 = *v7;
  result = a4(a2);
  v18 = *(v15 + 16);
  v19 = (v17 & 1) == 0;
  v20 = __OFADD__(v18, v19);
  v21 = v18 + v19;
  if (v20)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22 = v17;
  v23 = *(v15 + 24);
  if (v23 < v21 || (a3 & 1) == 0)
  {
    if (v23 < v21 || (a3 & 1) != 0)
    {
      a6(v21, a3 & 1);
      result = a4(a2);
      if ((v22 & 1) != (v25 & 1))
      {
LABEL_16:
        result = sub_258B03484();
        __break(1u);
        return result;
      }
    }

    else
    {
      v24 = result;
      a5();
      result = v24;
    }
  }

  v26 = *v11;
  if ((v22 & 1) == 0)
  {
    v26[(result >> 6) + 8] |= 1 << result;
    *(v26[6] + result) = a2;
    *(v26[7] + 8 * result) = a1;
    v27 = v26[2];
    v20 = __OFADD__(v27, 1);
    v28 = v27 + 1;
    if (!v20)
    {
      v26[2] = v28;
      return result;
    }

    goto LABEL_15;
  }

  *(v26[7] + 8 * result) = a1;

  return swift_unknownObjectRelease();
}

_OWORD *sub_258AC8BC0(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_258AD5508(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_258A99AA0();
      v11 = v19;
      goto LABEL_8;
    }

    sub_258A99268(v16, a4 & 1);
    v11 = sub_258AD5508(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_258B03484();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1(v22);

    return sub_258A2D784(a1, v22);
  }

  else
  {
    sub_258AC8D10(v11, a2, a3, a1, v21);

    return sub_258B003E4();
  }
}

_OWORD *sub_258AC8D10(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_258A2D784(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

id sub_258AC8D7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v41 = a2;
  v40 = a1;
  v43[27] = *MEMORY[0x277D85DE8];
  v39 = sub_258AFFE44();
  v4 = *(v39 - 8);
  v5 = MEMORY[0x28223BE20](v39);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v38 - v8;
  v38 = [objc_allocWithZone(MEMORY[0x277CD71F0]) initWithDevice_];
  sub_258AC9620(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_258B2F370;
  v11 = *MEMORY[0x277CD71C0];
  *(inited + 32) = *MEMORY[0x277CD71C0];
  v12 = MEMORY[0x277D83E88];
  *(inited + 40) = 1;
  v13 = *MEMORY[0x277CD71B8];
  *(inited + 64) = v12;
  *(inited + 72) = v13;
  *(inited + 80) = 2;
  v14 = *MEMORY[0x277CD71A0];
  *(inited + 104) = v12;
  *(inited + 112) = v14;
  v15 = MEMORY[0x277D839B0];
  *(inited + 120) = 1;
  v16 = *MEMORY[0x277CD7198];
  *(inited + 144) = v15;
  *(inited + 152) = v16;
  v17 = *MEMORY[0x277CD7190];
  type metadata accessor for CubeLayout(0);
  *(inited + 184) = v18;
  *(inited + 160) = v17;
  v19 = v11;
  v20 = v13;
  v21 = v14;
  v22 = v16;
  v23 = v17;
  sub_258AD61CC(inited);
  swift_setDeallocating();
  sub_258AC9678(0);
  swift_arrayDestroy();
  type metadata accessor for ChamomileRenderer(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v25 = [objc_opt_self() bundleForClass_];
  v26 = sub_258B02AD4();
  v27 = [v25 URLForResource:v26 withExtension:0];

  if (!v27)
  {
    __break(1u);
  }

  sub_258AFFE24();

  v28 = v39;
  (*(v4 + 32))(v9, v7, v39);
  v29 = sub_258AFFE14();
  type metadata accessor for Option(0);
  sub_258AC96E4();
  v30 = sub_258B029E4();
  v43[0] = 0;
  v31 = v38;
  v32 = [v38 newTextureWithContentsOfURL:v29 options:v30 error:v43];

  if (v32)
  {
    v33 = *(v4 + 8);
    v34 = v43[0];
    v33(v9, v28);

    return v32;
  }

  else
  {
    v36 = v43[0];
    v37 = sub_258AFFDC4();

    swift_willThrow();
    (*(v4 + 8))(v9, v28);
    v43[0] = 0;
    v43[1] = 0xE000000000000000;
    sub_258B031B4();
    MEMORY[0x259C931B0](0xD000000000000032, 0x8000000258B39190);
    v42 = v37;
    sub_2589F3AFC();
    sub_258B03274();
    result = sub_258B03294();
    __break(1u);
  }

  return result;
}

unint64_t sub_258AC921C(uint64_t a1, uint64_t a2)
{
  v2 = sub_258B03324();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_258AC9268(uint64_t a1, uint64_t a2)
{
  v2 = sub_258B03324();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

void sub_258AC92B4()
{
  v1 = *(v0 + OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_layer);
  if (v1)
  {
    v2 = v1;
    [v2 bounds];
    v3 = OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_superSampling;
    v5 = v4 * *(v0 + OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_superSampling);
    [v2 bounds];
    [v2 setDrawableSize_];
  }

  if (!*(v0 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_animationMode))
  {

    sub_258AC3580();
  }
}

uint64_t MTLSizeMake@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  a3[2] = 1;
  return result;
}

unint64_t sub_258AC938C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F971180;
  if (!qword_27F971180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F971180);
  }

  return result;
}

unint64_t sub_258AC93E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F971188;
  if (!qword_27F971188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F971188);
  }

  return result;
}

double simd_quaternion(simd_float4x4 a1)
{
  v1 = a1.columns[2].f32[2] + (a1.columns[0].f32[0] + a1.columns[1].f32[1]);
  if (v1 >= 0.0)
  {
    a1.columns[3].f32[0] = sqrtf(v1 + 1.0);
    v6 = vrecpe_f32(COERCE_UNSIGNED_INT(a1.columns[3].f32[0] + a1.columns[3].f32[0]));
    v7 = vmul_f32(v6, vrecps_f32(COERCE_UNSIGNED_INT(a1.columns[3].f32[0] + a1.columns[3].f32[0]), v6));
    *a1.columns[3].f32 = vmul_n_f32(vsub_f32(vzip1_s32(*&vextq_s8(a1.columns[1], a1.columns[1], 8uLL), *a1.columns[2].f32), vext_s8(*a1.columns[2].f32, *&vextq_s8(a1.columns[0], a1.columns[0], 8uLL), 4uLL)), vmul_f32(v7, vrecps_f32(COERCE_UNSIGNED_INT(a1.columns[3].f32[0] + a1.columns[3].f32[0]), v7)).f32[0]);
  }

  else if (a1.columns[0].f32[0] < a1.columns[1].f32[1] || a1.columns[0].f32[0] < a1.columns[2].f32[2])
  {
    v3 = 1.0 - a1.columns[0].f32[0];
    if (a1.columns[1].f32[1] >= a1.columns[2].f32[2])
    {
      a1.columns[3].f32[0] = sqrtf(a1.columns[1].f32[1] + (v3 - a1.columns[2].f32[2]));
      a1.columns[3].f32[0] = a1.columns[3].f32[0] + a1.columns[3].f32[0];
      v15 = vrecpe_f32(a1.columns[3].u32[0]);
      v16 = vmul_f32(v15, vrecps_f32(a1.columns[3].u32[0], v15));
      v17.i32[0] = vmul_f32(v16, vrecps_f32(a1.columns[3].u32[0], v16)).u32[0];
      v16.f32[0] = a1.columns[0].f32[1] + a1.columns[1].f32[0];
      v16.i32[1] = a1.columns[3].i32[0];
      v17.i32[1] = 0.25;
      *a1.columns[3].f32 = vmul_f32(v16, v17);
    }

    else
    {
      a1.columns[3].f32[0] = sqrtf(a1.columns[2].f32[2] + (v3 - a1.columns[1].f32[1]));
      v4 = vrecpe_f32(COERCE_UNSIGNED_INT(a1.columns[3].f32[0] + a1.columns[3].f32[0]));
      v5 = vmul_f32(v4, vrecps_f32(COERCE_UNSIGNED_INT(a1.columns[3].f32[0] + a1.columns[3].f32[0]), v4));
      *a1.columns[3].f32 = vmul_n_f32(vadd_f32(vzip1_s32(*&vextq_s8(a1.columns[0], a1.columns[0], 8uLL), *&vextq_s8(a1.columns[1], a1.columns[1], 8uLL)), *a1.columns[2].f32), vmul_f32(v5, vrecps_f32(COERCE_UNSIGNED_INT(a1.columns[3].f32[0] + a1.columns[3].f32[0]), v5)).f32[0]);
      __asm { FMOV            V0.2S, #0.25 }
    }
  }

  else
  {
    a1.columns[3].f32[0] = sqrtf(a1.columns[0].f32[0] + ((1.0 - a1.columns[1].f32[1]) - a1.columns[2].f32[2]));
    a1.columns[3].f32[0] = a1.columns[3].f32[0] + a1.columns[3].f32[0];
    v8 = vrecpe_f32(a1.columns[3].u32[0]);
    v9 = vmul_f32(v8, vrecps_f32(a1.columns[3].u32[0], v8));
    v10 = vmul_f32(v9, vrecps_f32(a1.columns[3].u32[0], v9)).u32[0];
    a1.columns[3].f32[1] = a1.columns[0].f32[1] + a1.columns[1].f32[0];
    __asm { FMOV            V5.2S, #0.25 }

    _D5.i32[1] = v10;
    *a1.columns[3].f32 = vmul_f32(*a1.columns[3].f32, _D5);
  }

  return *a1.columns[3].i64;
}

void simd_slerp(float32x4_t a1, float32x4_t a2, float a3)
{
  v3 = vmulq_f32(a1, a2);
  v4 = vextq_s8(v3, v3, 8uLL);
  *v3.f32 = vadd_f32(*v3.f32, *v4.f32);
  v3.f32[0] = vaddv_f32(*v3.f32);
  v4.i64[0] = 0;
  v5 = vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(v3, v4)), 0);
  _simd_slerp_internal(a1, vbslq_s8(v5, vnegq_f32(a2), a2), *v5.i32);
}

void sub_258AC9620(uint64_t a1)
{
  if (!qword_27F9711A0)
  {
    sub_258AC9678(255);
    v1 = sub_258B03424();
    if (!v2)
    {
      atomic_store(v1, &qword_27F9711A0);
    }
  }
}

void sub_258AC9678(uint64_t a1)
{
  if (!qword_27F9711A8)
  {
    type metadata accessor for Option(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F9711A8);
    }
  }
}

unint64_t sub_258AC96E4()
{
  result = qword_27F9711B0;
  if (!qword_27F9711B0)
  {
    type metadata accessor for Option(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9711B0);
  }

  return result;
}

uint64_t MTLRegionMake2D@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  a3[3] = result;
  a3[4] = a2;
  a3[5] = 1;
  return result;
}

void sub_258AC9750(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_258AC97A0()
{
  result = qword_27F9711B8;
  if (!qword_27F9711B8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F9711B8);
  }

  return result;
}

void _simd_slerp_internal(float32x4_t a1, float32x4_t a2, float a3)
{
  v4 = vsubq_f32(a1, a2);
  v5 = vmulq_f32(v4, v4);
  v6 = vaddq_f32(a1, a2);
  v7 = vmulq_f32(v6, v6);
  v8 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v5.i8, *&vextq_s8(v5, v5, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v7.i8, *&vextq_s8(v7, v7, 8uLL)))));
  v9 = v8 + v8;
  if ((v8 + v8) != 0.0)
  {
    sinf(v9);
  }

  if ((v9 * 0.9) != 0.0)
  {
    sinf(v9 * 0.9);
  }

  v10 = v9 * 0.1;
  if (v10 != 0.0)
  {
    sinf(v10);
  }
}

uint64_t sub_258AC9984@<X0>(uint64_t *a1@<X8>)
{
  if (*v1)
  {
    if (qword_27F96C240 != -1)
    {
      swift_once();
    }

    v3 = sub_258AFFD94();
    v59 = v4;
    v60 = v3;
    v58 = sub_258AFFD94();
    v6 = v5;
    sub_258ACA040();
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_258B2F370;
    v8 = sub_258AFFD94();
    v10 = v9;
    v11 = sub_258AFFD94();
    *(v7 + 32) = v8;
    *(v7 + 40) = v10;
    *(v7 + 48) = v11;
    *(v7 + 56) = v12;
    v13 = sub_258AFFD94();
    v15 = v14;
    v16 = sub_258AFFD94();
    *(v7 + 64) = v13;
    *(v7 + 72) = v15;
    *(v7 + 80) = v16;
    *(v7 + 88) = v17;
    v18 = sub_258AFFD94();
    v20 = v19;
    v21 = sub_258AFFD94();
    *(v7 + 96) = v18;
    *(v7 + 104) = v20;
    *(v7 + 112) = v21;
    *(v7 + 120) = v22;
    v23 = sub_258AFFD94();
    v25 = v24;
    v26 = sub_258AFFD94();
    *(v7 + 128) = v23;
    *(v7 + 136) = v25;
    *(v7 + 144) = v26;
    *(v7 + 152) = v27;
  }

  else
  {
    if (qword_27F96C240 != -1)
    {
      swift_once();
    }

    v28 = sub_258AFFD94();
    v59 = v29;
    v60 = v28;
    v58 = sub_258AFFD94();
    v6 = v30;
    sub_258ACA040();
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_258B34350;
    v31 = sub_258AFFD94();
    v33 = v32;
    v34 = sub_258AFFD94();
    *(v7 + 32) = v31;
    *(v7 + 40) = v33;
    *(v7 + 48) = v34;
    *(v7 + 56) = v35;
    v36 = sub_258AFFD94();
    v38 = v37;
    v39 = sub_258AFFD94();
    *(v7 + 64) = v36;
    *(v7 + 72) = v38;
    *(v7 + 80) = v39;
    *(v7 + 88) = v40;
    v41 = sub_258AFFD94();
    v43 = v42;
    v44 = sub_258AFFD94();
    *(v7 + 96) = v41;
    *(v7 + 104) = v43;
    *(v7 + 112) = v44;
    *(v7 + 120) = v45;
    v46 = sub_258AFFD94();
    v48 = v47;
    v49 = sub_258AFFD94();
    *(v7 + 128) = v46;
    *(v7 + 136) = v48;
    *(v7 + 144) = v49;
    *(v7 + 152) = v50;
    v51 = sub_258AFFD94();
    v53 = v52;
    v54 = sub_258AFFD94();
    *(v7 + 160) = v51;
    *(v7 + 168) = v53;
    *(v7 + 176) = v54;
    *(v7 + 184) = v55;
  }

  result = sub_258AFFD94();
  *a1 = v60;
  a1[1] = v59;
  a1[2] = v58;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = result;
  a1[6] = v57;
  return result;
}

void sub_258ACA040()
{
  if (!qword_27F9711C0)
  {
    v0 = sub_258B03424();
    if (!v1)
    {
      atomic_store(v0, &qword_27F9711C0);
    }
  }
}

uint64_t sub_258ACA0A0()
{
  sub_258B03514();
  sub_258B02B74();
  sub_258B02B74();
  return sub_258B03554();
}

uint64_t sub_258ACA108(uint64_t a1)
{
  sub_258B02B74();

  return sub_258B02B74();
}

uint64_t sub_258ACA158(uint64_t a1)
{
  sub_258B03514();
  sub_258B02B74();
  sub_258B02B74();
  return sub_258B03554();
}

uint64_t sub_258ACA1BC(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_258B03454(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_258B03454();
    }
  }

  return result;
}

unint64_t sub_258ACA264(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F9711C8;
  if (!qword_27F9711C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9711C8);
  }

  return result;
}

void sub_258ACA300(uint64_t a1)
{
  sub_2589C0D10();
  if (v1 <= 0x3F)
  {
    sub_258ACA460();
    if (v2 <= 0x3F)
    {
      sub_258ACEFBC(319, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
      if (v3 <= 0x3F)
      {
        sub_258ACA4AC(319, &qword_27F9711E0, &qword_27F96DD28, &type metadata for NotificationAppBundle, MEMORY[0x277CE10B8]);
        if (v4 <= 0x3F)
        {
          sub_258ACBBDC(319, &qword_27F96DCA8, type metadata accessor for NotificationsSetupPhaseSpecs, MEMORY[0x277CDF468]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_258ACA460()
{
  result = qword_27F970870;
  if (!qword_27F970870)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F970870);
  }

  return result;
}

void sub_258ACA4AC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_258ACEFBC(255, a3, a4, MEMORY[0x277D83D88]);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_258ACA544()
{
  v1 = v0;
  v2 = type metadata accessor for NotificationsSetupPhaseSpecs(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_258ACBB54(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for NotificationsNextButtonView(0);
  sub_258AC1B5C(v4);
  v8 = _UISolariumEnabled();
  sub_258ACE1A4(v4, type metadata accessor for NotificationsSetupPhaseSpecs);
  if (v8)
  {
    v9 = 0x4024000000000000;
  }

  else
  {
    v9 = 0x4014000000000000;
  }

  *v7 = sub_258B01194();
  *(v7 + 1) = v9;
  v7[16] = 0;
  sub_258ACD61C(0);
  sub_258ACA77C(v1, &v7[*(v10 + 44)]);
  v11 = *(v1 + 56);
  v15 = *(v1 + 48);
  v16 = v11;
  sub_258ACEFBC(0, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  sub_258B02144();
  v14 = v1;
  sub_258ACF188(&qword_27F971228, sub_258ACBB54, MEMORY[0x277CE1198]);
  sub_258B01E64();

  return sub_258ACE1A4(v7, sub_258ACBB54);
}

uint64_t sub_258ACA77C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a2;
  sub_258ACBBDC(0, &qword_27F9711F8, sub_258ACBC40, MEMORY[0x277CE14B8]);
  v80 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v63 - v4;
  v75 = type metadata accessor for SkipButton(0);
  v6 = MEMORY[0x28223BE20](v75);
  v76 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v63 - v8;
  sub_258ACD6F4(0, &qword_27F971230, MEMORY[0x277CE0330]);
  v78 = v10;
  MEMORY[0x28223BE20](v10);
  v79 = &v63 - v11;
  ButtonView = type metadata accessor for NotificationsNextButtonView(0);
  v13 = *(ButtonView - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](ButtonView - 8);
  v77 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v63 - v16;
  v82 = type metadata accessor for CompleteNotificationsSetupButton(0);
  v18 = MEMORY[0x28223BE20](v82);
  v74 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v63 - v20;
  v22 = a1[3];
  v23 = [v22 hasEverEnabledAStateOfMindReminderNotification];
  sub_258ACD810(a1, v17, type metadata accessor for NotificationsNextButtonView);
  v24 = *(v13 + 80);
  v25 = (v24 + 16) & ~v24;
  v26 = v25 + v14;
  if (v23)
  {
    v76 = swift_allocObject();
    sub_258ACDE5C(v17, v76 + v25, type metadata accessor for NotificationsNextButtonView);
    v27 = *a1;
    v28 = a1[9];
    v86 = *(a1 + 64);
    v87 = v28;
    sub_258ACA4AC(0, &qword_27F9711E0, &qword_27F96DD28, &type metadata for NotificationAppBundle, MEMORY[0x277CE10B8]);
    v75 = v22;
    sub_258B02144();
    v74 = v83;
    v72 = v84;
    LODWORD(v71) = v85;
    v29 = a1[7];
    v86 = *(a1 + 48);
    v87 = v29;
    sub_258ACEFBC(0, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
    sub_258B02144();
    v30 = v83;
    v31 = v84;
    v32 = v85;
    v33 = v77;
    sub_258ACD810(a1, v77, type metadata accessor for NotificationsNextButtonView);
    v34 = swift_allocObject();
    sub_258ACDE5C(v33, v34 + ((v24 + 16) & ~v24), type metadata accessor for NotificationsNextButtonView);
    v35 = v75;
    v36 = v76;
    *v21 = sub_258ACF42C;
    *(v21 + 1) = v36;
    *(v21 + 2) = v35;
    *(v21 + 3) = v27;
    v21[32] = 1;
    v37 = v72;
    *(v21 + 5) = v74;
    *(v21 + 6) = v37;
    v21[56] = v71;
    *(v21 + 8) = v30;
    *(v21 + 9) = v31;
    v21[80] = v32;
    *(v21 + 11) = sub_258ACDB98;
    *(v21 + 12) = v34;
    v38 = *(v82 + 44);
    *&v21[v38] = swift_getKeyPath();
    sub_258ACBBDC(0, &qword_27F96D7B0, type metadata accessor for NotificationsSetupPhaseSpecs, MEMORY[0x277CDF458]);
    swift_storeEnumTagMultiPayload();
    sub_258ACD810(v21, v79, type metadata accessor for CompleteNotificationsSetupButton);
    swift_storeEnumTagMultiPayload();
    sub_258ACF188(&qword_27F971210, type metadata accessor for CompleteNotificationsSetupButton, &unk_258B34574);
    sub_258ACBD80();
    sub_258B012A4();
  }

  else
  {
    v73 = v26;
    v69 = swift_allocObject();
    v71 = type metadata accessor for NotificationsNextButtonView;
    sub_258ACDE5C(v17, v69 + v25, type metadata accessor for NotificationsNextButtonView);
    v39 = *a1;
    v40 = a1[9];
    v86 = *(a1 + 64);
    v87 = v40;
    sub_258ACA4AC(0, &qword_27F9711E0, &qword_27F96DD28, &type metadata for NotificationAppBundle, MEMORY[0x277CE10B8]);
    v70 = v5;
    v72 = v22;
    sub_258B02144();
    v68 = v83;
    v67 = v84;
    v66 = v85;
    v41 = a1[7];
    v86 = *(a1 + 48);
    v87 = v41;
    sub_258ACEFBC(0, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
    sub_258B02144();
    v65 = v83;
    v64 = v84;
    v42 = v9;
    v43 = v85;
    v44 = v77;
    sub_258ACD810(a1, v77, type metadata accessor for NotificationsNextButtonView);
    v45 = swift_allocObject();
    sub_258ACDE5C(v44, v45 + v25, v71);
    v46 = v69;
    *v21 = sub_258ACF42C;
    *(v21 + 1) = v46;
    *(v21 + 2) = v72;
    *(v21 + 3) = v39;
    v21[32] = 0;
    v47 = v67;
    *(v21 + 5) = v68;
    *(v21 + 6) = v47;
    v21[56] = v66;
    v48 = v64;
    *(v21 + 8) = v65;
    *(v21 + 9) = v48;
    v21[80] = v43;
    *(v21 + 11) = sub_258ACF430;
    *(v21 + 12) = v45;
    v49 = *(v82 + 44);
    *&v21[v49] = swift_getKeyPath();
    sub_258ACBBDC(0, &qword_27F96D7B0, type metadata accessor for NotificationsSetupPhaseSpecs, MEMORY[0x277CDF458]);
    v69 = v50;
    swift_storeEnumTagMultiPayload();
    sub_258ACD810(a1, v17, type metadata accessor for NotificationsNextButtonView);
    v51 = swift_allocObject();
    v52 = v17;
    v53 = v71;
    sub_258ACDE5C(v52, v51 + v25, v71);
    sub_258ACD810(a1, v44, type metadata accessor for NotificationsNextButtonView);
    v54 = swift_allocObject();
    sub_258ACDE5C(v44, v54 + v25, v53);
    *v42 = sub_258ACF42C;
    v42[1] = v51;
    v55 = v72;
    v42[2] = v72;
    v42[3] = sub_258ACF430;
    v42[4] = v54;
    v56 = v75[7];
    *(v42 + v56) = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v57 = v74;
    sub_258ACD810(v21, v74, type metadata accessor for CompleteNotificationsSetupButton);
    v58 = v76;
    sub_258ACD810(v42, v76, type metadata accessor for SkipButton);
    v59 = v70;
    sub_258ACD810(v57, v70, type metadata accessor for CompleteNotificationsSetupButton);
    sub_258ACBC40(0);
    sub_258ACD810(v58, v59 + *(v60 + 48), type metadata accessor for SkipButton);
    v61 = v55;
    sub_258ACE1A4(v58, type metadata accessor for SkipButton);
    sub_258ACE1A4(v57, type metadata accessor for CompleteNotificationsSetupButton);
    sub_258ACD878(v59, v79);
    swift_storeEnumTagMultiPayload();
    sub_258ACF188(&qword_27F971210, type metadata accessor for CompleteNotificationsSetupButton, &unk_258B34574);
    sub_258ACBD80();
    sub_258B012A4();
    sub_258ACD90C(v59);
    sub_258ACE1A4(v42, type metadata accessor for SkipButton);
  }

  return sub_258ACE1A4(v21, type metadata accessor for CompleteNotificationsSetupButton);
}

uint64_t sub_258ACB188@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_258B00384();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 72);
  v15 = *(a1 + 64);
  v16 = v8;
  sub_258ACA4AC(0, &qword_27F9711E0, &qword_27F96DD28, &type metadata for NotificationAppBundle, MEMORY[0x277CE10B8]);
  sub_258B02124();
  if (v14 != 2)
  {
    return sub_258ACB37C(v14 & 1, a2);
  }

  sub_258B00364();
  v10 = sub_258B00374();
  v11 = sub_258B02E94();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2589A1000, v10, v11, "Notifications Disabled alert has been requested without specifying the associated notification bundle.", v12, 2u);
    MEMORY[0x259C945C0](v12, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  result = sub_258B03294();
  __break(1u);
  return result;
}

uint64_t sub_258ACB37C@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v64 = a2;
  ButtonView = type metadata accessor for NotificationsNextButtonView(0);
  v58 = *(ButtonView - 8);
  MEMORY[0x28223BE20](ButtonView - 8);
  v60 = v4;
  v61 = v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_258B01F64();
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v63 = v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v62 = v51 - v8;
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  v9 = sub_258AFFD94();
  v11 = v10;
  v56 = sub_258AFFD94();
  v57 = v12;
  if (a1)
  {
    v13 = sub_258AFFD94();
    v15 = v14;
    v16 = sub_258AFFD94();
    v18 = v17;
    v65 = v13;
    v66 = v15;
    sub_2589BFF58(v16, v17, v19);
    v20 = sub_258B01B44();
    v54 = v21;
    v55 = v20;
    v52 = v22;
    v53 = v23;
    v65 = v16;
    v66 = v18;
  }

  else
  {
    v39 = sub_258AFFD94();
    v41 = v40;
    v42 = sub_258AFFD94();
    v44 = v43;
    v65 = v39;
    v66 = v41;
    sub_2589BFF58(v42, v43, v45);
    v46 = sub_258B01B44();
    v54 = v47;
    v55 = v46;
    v52 = v48;
    v53 = v49;
    v65 = v42;
    v66 = v44;
  }

  v51[3] = sub_258B01B44();
  v51[2] = v24;
  v51[1] = v25;
  v65 = v9;
  v66 = v11;
  v26 = sub_258B01B44();
  v28 = v27;
  v30 = v29;
  sub_258B01F54();
  sub_2589BFFAC(v26, v28, v30 & 1);

  v65 = v56;
  v66 = v57;
  v31 = sub_258B01B44();
  v33 = v32;
  v35 = v34;
  v36 = v61;
  sub_258ACD810(v59, v61, type metadata accessor for NotificationsNextButtonView);
  v37 = (*(v58 + 80) + 16) & ~*(v58 + 80);
  v38 = swift_allocObject();
  sub_258ACDE5C(v36, v38 + v37, type metadata accessor for NotificationsNextButtonView);
  sub_258B01F44();
  sub_2589BFFAC(v31, v33, v35 & 1);

  return sub_258B01F34();
}

void sub_258ACB9D8()
{
  v0 = sub_258AFFE44();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() defaultWorkspace];
  if (v4)
  {
    v5 = v4;
    v6 = HKMHMindfulnessSettingsURL();
    if (v6)
    {
      v7 = v6;
      sub_258AFFE24();

      v8 = sub_258AFFE14();
      (*(v1 + 8))(v3, v0);
    }

    else
    {
      v8 = 0;
    }

    sub_258AD6068(MEMORY[0x277D84F90]);
    v9 = sub_258B029E4();

    [v5 openSensitiveURL:v8 withOptions:v9];
  }
}

void sub_258ACBBDC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_258ACBC40(uint64_t a1)
{
  if (!qword_27F971200)
  {
    type metadata accessor for CompleteNotificationsSetupButton(255);
    type metadata accessor for SkipButton(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F971200);
    }
  }
}

unint64_t sub_258ACBCD0()
{
  result = qword_27F971208;
  if (!qword_27F971208)
  {
    sub_258ACBB9C(255);
    sub_258ACF188(&qword_27F971210, type metadata accessor for CompleteNotificationsSetupButton, &unk_258B34574);
    sub_258ACBD80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F971208);
  }

  return result;
}

unint64_t sub_258ACBD80()
{
  result = qword_27F971218;
  if (!qword_27F971218)
  {
    sub_258ACBBDC(255, &qword_27F9711F8, sub_258ACBC40, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F971218);
  }

  return result;
}

void sub_258ACBE08(uint64_t a1@<X8>)
{
  v2 = v1;
  v38 = a1;
  v3 = type metadata accessor for NotificationsSetupPhaseSpecs(0);
  MEMORY[0x28223BE20](v3);
  v37 = v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CompleteNotificationsSetupButton(0);
  v6 = v5 - 8;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v5);
  v10 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = v36 - v11;
  sub_258ACEF50(0, &qword_27F971260, sub_2589DE338);
  MEMORY[0x28223BE20](v13 - 8);
  v36[0] = v36 - v14;
  v15 = *(v2 + 24);
  v45[3] = v3;
  v45[4] = &off_2869D92E8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v45);
  v36[1] = *(v6 + 52);
  sub_258AC1B5C(boxed_opaque_existential_1);
  sub_258ACD810(v2, v12, type metadata accessor for CompleteNotificationsSetupButton);
  v17 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v18 = swift_allocObject();
  sub_258ACDE5C(v12, v18 + v17, type metadata accessor for CompleteNotificationsSetupButton);
  sub_258ACD810(v2, v10, type metadata accessor for CompleteNotificationsSetupButton);
  v19 = swift_allocObject();
  sub_258ACDE5C(v10, v19 + v17, type metadata accessor for CompleteNotificationsSetupButton);
  v39 = v15;
  v40 = 0;
  sub_258ACEFBC(0, &qword_27F96D9F0, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
  sub_258B02354();
  v46 = v41;
  v47 = v42;
  v48 = v43;
  v44[0] = sub_258ACDEC4;
  v44[1] = v18;
  v49 = sub_258ACE134;
  v50 = v19;
  *&v41 = &unk_2869D4670;
  sub_2589FC8C8(&unk_2869D59D8);
  sub_258ACEFBC(0, &qword_280DF8948, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_2589C6824();
  sub_258B02A34();

  sub_2589C68A0(&unk_2869D59F8);
  sub_2589DE338(0, v20, v21, v22);
  sub_258ACF188(&qword_27F96D2C0, sub_2589DE338, &unk_258B347F8);
  v23 = v36[0];
  sub_258B01DD4();

  sub_258ACE1A4(v44, sub_2589DE338);
  LOBYTE(v10) = sub_258B01884();
  v24 = v37;
  sub_258AC1B5C(v37);
  _UISolariumEnabled();
  sub_258ACE1A4(v24, type metadata accessor for NotificationsSetupPhaseSpecs);
  sub_258B00654();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = v38;
  sub_258ACE204(v23, v38);
  sub_258ACE284(0);
  v35 = v33 + *(v34 + 36);
  *v35 = v10;
  *(v35 + 8) = v26;
  *(v35 + 16) = v28;
  *(v35 + 24) = v30;
  *(v35 + 32) = v32;
  *(v35 + 40) = 0;
}

uint64_t sub_258ACC2C8(uint64_t a1)
{
  v2 = type metadata accessor for CompleteNotificationsSetupButton(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v28[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_258ACBBDC(0, &qword_280DF8930, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v28[-v7];
  v9 = [objc_allocWithZone(MEMORY[0x277CE2028]) initWithBundleIdentifier_];
  v10 = [v9 notificationSettings];
  v11 = [v10 authorizationStatus];

  if (v11 == 2)
  {
    if (*(a1 + 32))
    {
      if ([*(a1 + 16) hasAnyStateOfMindReminderEnabled])
      {
        (*(a1 + 88))(9, 4);
      }
    }

    else
    {
      v16 = sub_258B02D44();
      (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
      sub_258ACD810(a1, &v28[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for CompleteNotificationsSetupButton);
      sub_258B02D24();
      v17 = sub_258B02D14();
      v18 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v19 = swift_allocObject();
      v20 = MEMORY[0x277D85700];
      *(v19 + 16) = v17;
      *(v19 + 24) = v20;
      sub_258ACDE5C(v5, v19 + v18, type metadata accessor for CompleteNotificationsSetupButton);
      sub_258A8F090(0, 0, v8, &unk_258B345D0, v19);
    }

    v21 = [objc_opt_self() sharedInstance];
    v22 = [v21 getActivePairedDevice];

    if (!v22)
    {
      return (*a1)();
    }

    if (sub_258A56DE0())
    {
      return (*a1)();
    }

    v24 = *(a1 + 48);
    v25 = *(a1 + 56);
    v30 = *(a1 + 40);
    v31 = v24;
    v32 = v25;
    v29 = 1;
    sub_258ACA4AC(0, &qword_27F971258, &qword_27F96DD28, &type metadata for NotificationAppBundle, MEMORY[0x277CE11F8]);
    sub_258B02314();
    v26 = *(a1 + 72);
    v27 = *(a1 + 80);
    v30 = *(a1 + 64);
    v31 = v26;
    v32 = v27;
    v29 = 1;
  }

  else
  {
    v12 = *(a1 + 48);
    v13 = *(a1 + 56);
    v30 = *(a1 + 40);
    v31 = v12;
    v32 = v13;
    v29 = 0;
    sub_258ACA4AC(0, &qword_27F971258, &qword_27F96DD28, &type metadata for NotificationAppBundle, MEMORY[0x277CE11F8]);
    sub_258B02314();
    v14 = *(a1 + 72);
    v15 = *(a1 + 80);
    v30 = *(a1 + 64);
    v31 = v14;
    v32 = v15;
    v29 = 1;
  }

  sub_258ACEFBC(0, &qword_27F971C90, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
  return sub_258B02314();
}

uint64_t sub_258ACC6EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_258B02D24();
  *(v4 + 24) = sub_258B02D14();
  v6 = sub_258B02CE4();

  return MEMORY[0x2822009F8](sub_258ACC784, v6, v5);
}

uint64_t sub_258ACC784()
{
  v1 = *(v0 + 16);

  [*(v1 + 16) setReminders_];
  (*(v1 + 88))(9, 4);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_258ACC80C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 32) == 1)
  {
    if (qword_27F96C240 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  if (qword_27F96C240 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_5:
  v9 = sub_258AFFD94();
  sub_2589BFF58(v9, v3, v4);
  result = sub_258B01B44();
  *a2 = result;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7 & 1;
  *(a2 + 24) = v8;
  return result;
}

void sub_258ACC948(uint64_t a1@<X8>)
{
  v2 = v1;
  v39 = a1;
  v3 = type metadata accessor for NotificationsSetupPhaseSpecs(0);
  MEMORY[0x28223BE20](v3 - 8);
  v40 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SkipButton(0);
  v6 = *(v5 - 8);
  v38 = v5 - 8;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  sub_258ACE3F0(0);
  v9 = v8;
  v10 = *(v8 - 1);
  MEMORY[0x28223BE20](v8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258ACE580(0);
  v14 = *(v13 - 8);
  v36 = v13;
  v37 = v14;
  MEMORY[0x28223BE20](v13);
  v34 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v2;
  sub_258ACD810(v2, &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SkipButton);
  v16 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v17 = swift_allocObject();
  sub_258ACDE5C(&v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for SkipButton);
  sub_258ACE4B8(0);
  sub_258ACE544();
  sub_258B02174();
  sub_258B024C4();
  v41 = v2;
  sub_258ACE6E4(0, &qword_27F971290, sub_258ACE77C, &qword_27F96F030, MEMORY[0x277CDF450]);
  v19 = v18;
  sub_258ACE4E0(0, &qword_27F9712B8, sub_258ACE8BC, MEMORY[0x277CDF688]);
  v21 = v20;
  v22 = sub_258ACF188(&qword_27F9712A8, sub_258ACE3F0, MEMORY[0x277CDF028]);
  v23 = sub_258ACE9C0();
  v32 = sub_258ACECB8();
  sub_258B01F04();
  (*(v10 + 8))(v12, v9);
  v42 = &unk_2869D4670;
  sub_2589FC8C8(&unk_2869D5A08);
  sub_258ACEFBC(0, &qword_280DF8948, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_2589C6824();
  sub_258B02A34();

  sub_2589C68A0(&unk_2869D5A28);
  v42 = v9;
  v43 = MEMORY[0x277CE1350];
  v44 = v19;
  v45 = v21;
  v46 = v22;
  v47 = MEMORY[0x277CE1340];
  v48 = v23;
  v49 = v32;
  swift_getOpaqueTypeConformance2();
  v24 = v39;
  v25 = v36;
  v26 = v34;
  sub_258B01DD4();

  (*(v37 + 8))(v26, v25);
  sub_258B02034();
  v27 = v40;
  sub_258AC1B5C(v40);
  sub_258ACE1A4(v27, type metadata accessor for NotificationsSetupPhaseSpecs);
  v28 = sub_258B02024();

  KeyPath = swift_getKeyPath();
  sub_258ACEEA0(0);
  v31 = (v24 + *(v30 + 36));
  *v31 = KeyPath;
  v31[1] = v28;
}

__n128 sub_258ACCEC8@<Q0>(uint64_t a1@<X8>)
{
  v28 = a1;
  sub_2589C5144(0);
  v2 = v1;
  MEMORY[0x28223BE20](v1);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  *&v29 = sub_258AFFD94();
  *(&v29 + 1) = v5;
  sub_2589BFF58(v29, v5, v6);
  v7 = sub_258B01B44();
  v9 = v8;
  v11 = v10;
  v12 = sub_258B01AD4();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_2589BFFAC(v7, v9, v11 & 1);

  v19 = *(v2 + 36);
  v20 = *MEMORY[0x277CE13D8];
  v21 = sub_258B02554();
  (*(*(v21 - 8) + 104))(&v4[v19], v20, v21);
  *v4 = v12;
  *(v4 + 1) = v14;
  v4[16] = v16 & 1;
  *(v4 + 3) = v18;
  sub_258B024F4();
  sub_258B00C94();
  v22 = v28;
  sub_258ACDE5C(v4, v28, sub_2589C5144);
  sub_258ACE4B8(0);
  v24 = v22 + *(v23 + 36);
  v25 = v34;
  *(v24 + 64) = v33;
  *(v24 + 80) = v25;
  *(v24 + 96) = v35;
  v26 = v30;
  *v24 = v29;
  *(v24 + 16) = v26;
  result = v32;
  *(v24 + 32) = v31;
  *(v24 + 48) = result;
  return result;
}

uint64_t sub_258ACD128@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_258B00BB4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258B00BA4();
  sub_258ACE3F0(0);
  sub_258ACF188(&qword_27F9712A8, sub_258ACE3F0, MEMORY[0x277CDF028]);
  sub_258ACF188(&qword_27F9712B0, MEMORY[0x277CDDA98], MEMORY[0x277CDDA90]);
  sub_258B01BD4();
  (*(v3 + 8))(v5, v2);
  sub_258ACE77C(0);
  v7 = (a1 + *(v6 + 36));
  v8 = MEMORY[0x277CE0860];
  sub_258ACBBDC(0, &qword_27F96F028, MEMORY[0x277CDDBB8], MEMORY[0x277CE0860]);
  sub_258B00CB4();
  *v7 = swift_getKeyPath();
  v9 = MEMORY[0x277CDF450];
  sub_258ACE6E4(0, &qword_27F971290, sub_258ACE77C, &qword_27F96F030, MEMORY[0x277CDF450]);
  v11 = (a1 + *(v10 + 36));
  sub_258ACBBDC(0, &qword_27F96F030, v9, v8);
  v13 = *(v12 + 28);
  v14 = *MEMORY[0x277CDF420];
  v15 = sub_258B006C4();
  (*(*(v15 - 8) + 104))(&v11[v13], v14, v15);
  result = swift_getKeyPath();
  *v11 = result;
  return result;
}

double sub_258ACD3BC@<D0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for NotificationsSetupPhaseSpecs(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_258B00C14();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258B00C04();
  sub_258ACE3F0(0);
  sub_258ACF188(&qword_27F9712A8, sub_258ACE3F0, MEMORY[0x277CDF028]);
  sub_258ACF188(&qword_27F96D410, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  sub_258B01BD4();
  (*(v6 + 8))(v8, v5);
  type metadata accessor for SkipButton(0);
  sub_258AC1B5C(v4);
  sub_258ACE1A4(v4, type metadata accessor for NotificationsSetupPhaseSpecs);
  sub_258B024F4();
  sub_258B00854();
  sub_258ACE4E0(0, &qword_27F9712B8, sub_258ACE8BC, MEMORY[0x277CDF688]);
  v10 = (a1 + *(v9 + 36));
  v11 = v13[1];
  *v10 = v13[0];
  v10[1] = v11;
  result = *&v14;
  v10[2] = v14;
  return result;
}

void sub_258ACD61C(uint64_t a1)
{
  if (!qword_27F971220)
  {
    sub_258ACBB9C(255);
    v1 = sub_258B00974();
    if (!v2)
    {
      atomic_store(v1, &qword_27F971220);
    }
  }
}

void sub_258ACD6F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for CompleteNotificationsSetupButton(255);
    sub_258ACBBDC(255, &qword_27F9711F8, sub_258ACBC40, MEMORY[0x277CE14B8]);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_258ACD810(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258ACD878(uint64_t a1, uint64_t a2)
{
  sub_258ACBBDC(0, &qword_27F9711F8, sub_258ACBC40, MEMORY[0x277CE14B8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258ACD90C(uint64_t a1)
{
  sub_258ACBBDC(0, &qword_27F9711F8, sub_258ACBC40, MEMORY[0x277CE14B8]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_23()
{
  v1 = (type metadata accessor for NotificationsNextButtonView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v2 + v1[12];
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

void sub_258ACDBC4(uint64_t a1)
{
  sub_2589C0D10();
  if (v1 <= 0x3F)
  {
    sub_258ACA460();
    if (v2 <= 0x3F)
    {
      sub_258ACBBDC(319, &qword_27F96DCA8, type metadata accessor for NotificationsSetupPhaseSpecs, MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_258ACDCBC(uint64_t a1)
{
  sub_2589C0D10();
  if (v1 <= 0x3F)
  {
    sub_258ACA460();
    if (v2 <= 0x3F)
    {
      sub_258ACA4AC(319, &qword_27F971258, &qword_27F96DD28, &type metadata for NotificationAppBundle, MEMORY[0x277CE11F8]);
      if (v3 <= 0x3F)
      {
        sub_258ACEFBC(319, &qword_27F971C90, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
        if (v4 <= 0x3F)
        {
          sub_258ACBBDC(319, &qword_27F96DCA8, type metadata accessor for NotificationsSetupPhaseSpecs, MEMORY[0x277CDF468]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_258ACDE5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_258ACDEC4()
{
  v1 = *(type metadata accessor for CompleteNotificationsSetupButton(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_258ACC2C8(v2);
}

uint64_t objectdestroy_44Tm()
{
  v1 = (type metadata accessor for CompleteNotificationsSetupButton(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v2 + v1[13];
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

uint64_t sub_258ACE134@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CompleteNotificationsSetupButton(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_258ACC80C(v4, a1);
}

uint64_t sub_258ACE1A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_258ACE204(uint64_t a1, uint64_t a2)
{
  sub_258ACEF50(0, &qword_27F971260, sub_2589DE338);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_258ACE284(uint64_t a1)
{
  if (!qword_27F971268)
  {
    sub_258ACEF50(255, &qword_27F971260, sub_2589DE338);
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F971268);
    }
  }
}

uint64_t sub_258ACE300(uint64_t a1)
{
  v4 = *(type metadata accessor for CompleteNotificationsSetupButton(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2589EEE18;

  return sub_258ACC6EC(a1, v6, v7, v1 + v5);
}

void sub_258ACE438(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_258ACE4E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_258ACE580(uint64_t a1)
{
  if (!qword_27F971288)
  {
    sub_258ACE3F0(255);
    sub_258ACE6E4(255, &qword_27F971290, sub_258ACE77C, &qword_27F96F030, MEMORY[0x277CDF450]);
    sub_258ACE4E0(255, &qword_27F9712B8, sub_258ACE8BC, MEMORY[0x277CDF688]);
    sub_258ACF188(&qword_27F9712A8, sub_258ACE3F0, MEMORY[0x277CDF028]);
    sub_258ACE9C0();
    sub_258ACECB8();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F971288);
    }
  }
}

void sub_258ACE6E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_258ACBBDC(255, a4, a5, MEMORY[0x277CE0860]);
    v8 = sub_258B00B04();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_258ACE7B8(uint64_t a1)
{
  if (!qword_27F9712A0)
  {
    sub_258ACE3F0(255);
    sub_258B00BB4();
    sub_258ACF188(&qword_27F9712A8, sub_258ACE3F0, MEMORY[0x277CDF028]);
    sub_258ACF188(&qword_27F9712B0, MEMORY[0x277CDDA98], MEMORY[0x277CDDA90]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F9712A0);
    }
  }
}

void sub_258ACE8BC(uint64_t a1)
{
  if (!qword_27F9712C0)
  {
    sub_258ACE3F0(255);
    sub_258B00C14();
    sub_258ACF188(&qword_27F9712A8, sub_258ACE3F0, MEMORY[0x277CDF028]);
    sub_258ACF188(&qword_27F96D410, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F9712C0);
    }
  }
}

unint64_t sub_258ACE9C0()
{
  result = qword_27F9712C8;
  if (!qword_27F9712C8)
  {
    sub_258ACE6E4(255, &qword_27F971290, sub_258ACE77C, &qword_27F96F030, MEMORY[0x277CDF450]);
    sub_258ACEA78();
    sub_258ACEC30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9712C8);
  }

  return result;
}

unint64_t sub_258ACEA78()
{
  result = qword_27F9712D0;
  if (!qword_27F9712D0)
  {
    sub_258ACE77C(255);
    sub_258ACE3F0(255);
    sub_258B00BB4();
    sub_258ACF188(&qword_27F9712A8, sub_258ACE3F0, MEMORY[0x277CDF028]);
    sub_258ACF188(&qword_27F9712B0, MEMORY[0x277CDDA98], MEMORY[0x277CDDA90]);
    swift_getOpaqueTypeConformance2();
    sub_258ACEBA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9712D0);
  }

  return result;
}

unint64_t sub_258ACEBA8()
{
  result = qword_27F96F098;
  if (!qword_27F96F098)
  {
    sub_258ACBBDC(255, &qword_27F96F028, MEMORY[0x277CDDBB8], MEMORY[0x277CE0860]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F098);
  }

  return result;
}

unint64_t sub_258ACEC30()
{
  result = qword_27F96F0A0;
  if (!qword_27F96F0A0)
  {
    sub_258ACBBDC(255, &qword_27F96F030, MEMORY[0x277CDF450], MEMORY[0x277CE0860]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F0A0);
  }

  return result;
}

unint64_t sub_258ACECB8()
{
  result = qword_27F9712D8;
  if (!qword_27F9712D8)
  {
    sub_258ACE4E0(255, &qword_27F9712B8, sub_258ACE8BC, MEMORY[0x277CDF688]);
    sub_258ACE3F0(255);
    sub_258B00C14();
    sub_258ACF188(&qword_27F9712A8, sub_258ACE3F0, MEMORY[0x277CDF028]);
    sub_258ACF188(&qword_27F96D410, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9712D8);
  }

  return result;
}

uint64_t sub_258ACEE0C()
{
  v1 = *(type metadata accessor for SkipButton(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  [*(v2 + 16) setReminders_];
  v3 = (*(v2 + 24))(9, 5);
  return (*v2)(v3);
}

void sub_258ACEEA0(uint64_t a1)
{
  if (!qword_27F9712E0)
  {
    sub_258ACEF50(255, &qword_27F9712E8, sub_258ACE580);
    sub_258ACA4AC(255, &qword_27F96CF48, &qword_27F96CF50, MEMORY[0x277CE0F78], MEMORY[0x277CE0860]);
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F9712E0);
    }
  }
}

void sub_258ACEF50(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_258B017D4();
    v4 = sub_258B00B04();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_258ACEFBC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_258ACF00C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_258ACF08C()
{
  result = qword_27F9712F8;
  if (!qword_27F9712F8)
  {
    sub_258ACEF50(255, &qword_27F971260, sub_2589DE338);
    sub_258ACF188(&qword_27F96D2C0, sub_2589DE338, &unk_258B347F8);
    sub_258ACF188(&qword_280DF8950, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9712F8);
  }

  return result;
}

uint64_t sub_258ACF188(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_258ACF1D0()
{
  result = qword_27F971300;
  if (!qword_27F971300)
  {
    sub_258ACEEA0(255);
    sub_258ACF250();
    sub_2589D6238();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F971300);
  }

  return result;
}

unint64_t sub_258ACF250()
{
  result = qword_27F971308;
  if (!qword_27F971308)
  {
    sub_258ACEF50(255, &qword_27F9712E8, sub_258ACE580);
    sub_258ACE3F0(255);
    sub_258ACE6E4(255, &qword_27F971290, sub_258ACE77C, &qword_27F96F030, MEMORY[0x277CDF450]);
    sub_258ACE4E0(255, &qword_27F9712B8, sub_258ACE8BC, MEMORY[0x277CDF688]);
    sub_258ACF188(&qword_27F9712A8, sub_258ACE3F0, MEMORY[0x277CDF028]);
    sub_258ACE9C0();
    sub_258ACECB8();
    swift_getOpaqueTypeConformance2();
    sub_258ACF188(&qword_280DF8950, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F971308);
  }

  return result;
}

uint64_t sub_258ACF434(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_258ACF47C(uint64_t result, int a2, int a3)
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

uint64_t sub_258ACF548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_258ACF638(a1, a2, a3);

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_258ACF5AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_258ACF638(a1, a2, a3);

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_258ACF610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_258ACF638(a1, a2, a3);
  sub_258B01794();
  __break(1u);
}

unint64_t sub_258ACF638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F971310[0];
  if (!qword_27F971310[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F971310);
  }

  return result;
}

uint64_t sub_258ACF68C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_258ACF700(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_258ACF748(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_258ACF7FC(uint64_t *TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  MEMORY[0x28223BE20](TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return sub_258B02584();
}

uint64_t sub_258ACF9CC()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v5 = *(v0 + 56);
  v6 = v1;
  v7 = v2;
  sub_258AD11A4(0, &qword_27F9713A8, &qword_27F96D9F0, MEMORY[0x277D839F8], MEMORY[0x277CE11F8]);
  MEMORY[0x259C92900](&v4);
  return v4;
}

uint64_t sub_258ACFA50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v102 = a2;
  v3 = sub_258B006C4();
  v100 = *(v3 - 8);
  v101 = v3;
  MEMORY[0x28223BE20](v3);
  v99 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_258B00CC4();
  v97 = *(v5 - 8);
  v98 = v5;
  MEMORY[0x28223BE20](v5);
  v96 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = a1;
  v7 = *(a1 + 24);
  v88 = *(a1 + 16);
  v91 = v7;
  *&v117 = v88;
  *(&v117 + 1) = v7;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata3();
  sub_258B02574();
  swift_getWitnessTable();
  v87 = sub_258B021D4();
  WitnessTable = swift_getWitnessTable();
  v8 = sub_258B021B4();
  v94 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v85 = &v72 - v9;
  v10 = sub_258B015E4();
  v95 = v10;
  v11 = swift_getWitnessTable();
  v12 = sub_258AD1108(&qword_27F971398, MEMORY[0x277CDE340], MEMORY[0x277CDE338]);
  *&v117 = v8;
  *(&v117 + 1) = v10;
  *&v118 = v11;
  *(&v118 + 1) = v12;
  v13 = v11;
  v76 = v11;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v75 = OpaqueTypeMetadata2;
  v15 = sub_258B016D4();
  v16 = sub_258AD1108(&qword_27F9713A0, MEMORY[0x277CDE400], MEMORY[0x277CDE3E8]);
  *&v117 = v8;
  *(&v117 + 1) = v15;
  *&v118 = v11;
  *(&v118 + 1) = v16;
  v17 = swift_getOpaqueTypeMetadata2();
  *&v117 = v8;
  *(&v117 + 1) = v95;
  *&v118 = v11;
  *(&v118 + 1) = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v117 = v8;
  *(&v117 + 1) = v15;
  *&v118 = v13;
  *(&v118 + 1) = v16;
  v19 = swift_getOpaqueTypeConformance2();
  *&v117 = v8;
  *(&v117 + 1) = MEMORY[0x277CE1350];
  *&v118 = OpaqueTypeMetadata2;
  *(&v118 + 1) = v17;
  *&v119 = v13;
  *(&v119 + 1) = MEMORY[0x277CE1340];
  *&v120 = OpaqueTypeConformance2;
  *(&v120 + 1) = v19;
  v20 = OpaqueTypeConformance2;
  v79 = MEMORY[0x277CE0E60];
  v77 = swift_getOpaqueTypeMetadata2();
  v81 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v22 = &v72 - v21;
  v82 = MEMORY[0x277CDDBB8];
  sub_258AD1150(255, &qword_27F96F028, MEMORY[0x277CDDBB8]);
  v78 = sub_258B00B04();
  v84 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v74 = &v72 - v23;
  sub_258AD1150(255, &qword_27F96F030, MEMORY[0x277CDF450]);
  v24 = sub_258B00B04();
  v93 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v73 = &v72 - v25;
  sub_258AD11A4(255, &qword_27F96D710, &qword_27F96D718, MEMORY[0x277CDF6A8], MEMORY[0x277CE0860]);
  v95 = v24;
  v80 = sub_258B00B04();
  v92 = *(v80 - 8);
  v26 = MEMORY[0x28223BE20](v80);
  v89 = &v72 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v90 = &v72 - v28;
  v29 = v103;
  (*(*(v83 - 8) + 16))(&v117, v103);
  v30 = swift_allocObject();
  v31 = v88;
  v32 = v91;
  *(v30 + 16) = v88;
  *(v30 + 24) = v32;
  v33 = v122;
  *(v30 + 96) = v121;
  *(v30 + 112) = v33;
  *(v30 + 128) = v123;
  v34 = v118;
  *(v30 + 32) = v117;
  *(v30 + 48) = v34;
  v35 = v120;
  *(v30 + 64) = v119;
  *(v30 + 80) = v35;
  v108 = v31;
  v109 = v32;
  v36 = v31;
  v37 = v32;
  v110 = v29;
  v38 = v85;
  sub_258B02174();
  sub_258B024C4();
  v106 = v36;
  v107 = v37;
  v104 = v36;
  v105 = v37;
  v39 = swift_checkMetadataState();
  v40 = swift_checkMetadataState();
  v41 = v76;
  v42 = v22;
  sub_258B01F04();
  (*(v94 + 8))(v38, v8);
  v43 = v96;
  sub_258B00CB4();
  *&v117 = v8;
  v44 = v73;
  *(&v117 + 1) = MEMORY[0x277CE1350];
  *&v118 = v39;
  *(&v118 + 1) = v40;
  *&v119 = v41;
  *(&v119 + 1) = MEMORY[0x277CE1340];
  *&v120 = v20;
  *(&v120 + 1) = v19;
  v45 = swift_getOpaqueTypeConformance2();
  v46 = v74;
  v47 = v77;
  sub_258B01CE4();
  (*(v97 + 8))(v43, v98);
  (*(v81 + 8))(v42, v47);
  v49 = v99;
  v48 = v100;
  v50 = v101;
  (*(v100 + 104))(v99, *MEMORY[0x277CDF420], v101);
  v51 = sub_258AD1250(&qword_27F96F098, &qword_27F96F028, v82);
  v115 = v45;
  v116 = v51;
  v52 = v78;
  v53 = swift_getWitnessTable();
  sub_258B01BE4();
  (*(v48 + 8))(v49, v50);
  (*(v84 + 8))(v46, v52);
  v54 = sub_258ACF9CC();
  if (v55)
  {
    v56 = sub_258B01FC4();
  }

  else
  {
    v57 = fmax(fmin(*&v54, 1.0), -1.0);
    KeyPath = swift_getKeyPath();
    sub_258A84538(KeyPath, v57);
    v60 = v59;
    v62 = v61;

    sub_258A848C0(v60, v60, v62);
    v56 = sub_258B01F74();
  }

  *&v117 = v56;
  v63 = sub_258AD1250(&qword_27F96F0A0, &qword_27F96F030, MEMORY[0x277CDF450]);
  v113 = v53;
  v114 = v63;
  v64 = v95;
  v65 = swift_getWitnessTable();
  v66 = v89;
  sub_258B01E54();

  (*(v93 + 8))(v44, v64);
  v67 = sub_258AD12A0();
  v111 = v65;
  v112 = v67;
  v68 = v80;
  swift_getWitnessTable();
  v69 = v90;
  sub_258A4DFD4();
  v70 = *(v92 + 8);
  v70(v66, v68);
  sub_258A4DFD4();
  return (v70)(v69, v68);
}

uint64_t sub_258AD0584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a2;
  v20 = a3;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata3();
  sub_258B02574();
  swift_getWitnessTable();
  v6 = sub_258B021D4();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v12 = &v15[-v11];
  v16 = a2;
  v17 = a3;
  v18 = a1;
  sub_258B01004();
  sub_258B021C4();
  swift_getWitnessTable();
  sub_258A4DFD4();
  v13 = *(v7 + 8);
  v13(v10, v6);
  sub_258A4DFD4();
  return (v13)(v12, v6);
}

uint64_t sub_258AD07A0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v23[0] = a4;
  v7 = *(a2 - 1);
  MEMORY[0x28223BE20](a1);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = v10;
  v30 = v11;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v13 = *(OpaqueTypeMetadata2 - 8);
  v14 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v16 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = v23 - v18;
  (*(a1 + 88))(v17);
  sub_258B01E44();
  (*(v7 + 8))(v9, a2);
  v29 = a2;
  v30 = a3;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_258A4DFD4();
  v21 = *(v13 + 8);
  v21(v16, OpaqueTypeMetadata2);
  v27 = 0;
  v28 = 1;
  v29 = &v27;
  (*(v13 + 16))(v16, v19, OpaqueTypeMetadata2);
  v25 = 0;
  v26 = 1;
  v30 = v16;
  v31 = &v25;
  v24[0] = MEMORY[0x277CE1180];
  v24[1] = OpaqueTypeMetadata2;
  v24[2] = MEMORY[0x277CE1180];
  v23[1] = MEMORY[0x277CE1170];
  v23[2] = OpaqueTypeConformance2;
  v23[3] = MEMORY[0x277CE1170];
  sub_258ACF7FC(&v29, 3uLL, v24);
  v21(v19, OpaqueTypeMetadata2);
  return (v21)(v16, OpaqueTypeMetadata2);
}

uint64_t sub_258AD0A44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v22[1] = a1;
  v24 = a4;
  v6 = sub_258B015E4();
  v23 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a2;
  v26 = a3;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata3();
  sub_258B02574();
  swift_getWitnessTable();
  sub_258B021D4();
  swift_getWitnessTable();
  v9 = sub_258B021B4();
  WitnessTable = swift_getWitnessTable();
  v11 = sub_258AD1108(&qword_27F971398, MEMORY[0x277CDE340], MEMORY[0x277CDE338]);
  v25 = v9;
  v26 = v6;
  v27 = WitnessTable;
  v28 = v11;
  v22[0] = MEMORY[0x277CDE668];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v13 = *(OpaqueTypeMetadata2 - 8);
  v14 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v16 = v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v22 - v17;
  sub_258B015D4();
  v19 = swift_checkMetadataState();
  sub_258B01BD4();
  (*(v23 + 8))(v8, v6);
  v25 = v19;
  v26 = v6;
  v27 = WitnessTable;
  v28 = v11;
  swift_getOpaqueTypeConformance2();
  sub_258A4DFD4();
  v20 = *(v13 + 8);
  v20(v16, OpaqueTypeMetadata2);
  sub_258A4DFD4();
  return (v20)(v18, OpaqueTypeMetadata2);
}

uint64_t sub_258AD0DA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v22[1] = a1;
  v24 = a4;
  v6 = sub_258B016D4();
  v23 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a2;
  v26 = a3;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata3();
  sub_258B02574();
  swift_getWitnessTable();
  sub_258B021D4();
  swift_getWitnessTable();
  v9 = sub_258B021B4();
  WitnessTable = swift_getWitnessTable();
  v11 = sub_258AD1108(&qword_27F9713A0, MEMORY[0x277CDE400], MEMORY[0x277CDE3E8]);
  v25 = v9;
  v26 = v6;
  v27 = WitnessTable;
  v28 = v11;
  v22[0] = MEMORY[0x277CDE668];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v13 = *(OpaqueTypeMetadata2 - 8);
  v14 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v16 = v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v22 - v17;
  sub_258B016C4();
  v19 = swift_checkMetadataState();
  sub_258B01BD4();
  (*(v23 + 8))(v8, v6);
  v25 = v19;
  v26 = v6;
  v27 = WitnessTable;
  v28 = v11;
  swift_getOpaqueTypeConformance2();
  sub_258A4DFD4();
  v20 = *(v13 + 8);
  v20(v16, OpaqueTypeMetadata2);
  sub_258A4DFD4();
  return (v20)(v18, OpaqueTypeMetadata2);
}

uint64_t sub_258AD1108(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_258AD1150(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_258B017C4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_258AD11A4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_258AD1324(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_258AD1250(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_258AD1150(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_258AD12A0()
{
  result = qword_27F96D730;
  if (!qword_27F96D730)
  {
    sub_258AD11A4(255, &qword_27F96D710, &qword_27F96D718, MEMORY[0x277CDF6A8], MEMORY[0x277CE0860]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D730);
  }

  return result;
}

void sub_258AD1324(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_258B030C4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

MentalHealthUI::Route_optional __swiftcall Route.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_258B03324();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t Route.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x79726F6765746163;
  v3 = 963733616;
  if (v1 != 6)
  {
    v3 = 929325415;
  }

  v4 = 0xD000000000000016;
  if (v1 != 4)
  {
    v4 = 0x47646E4139716870;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000011;
  if (v1 != 2)
  {
    v5 = 0x736E6F6974706FLL;
  }

  if (*v0)
  {
    v2 = 0x6574617453676F6CLL;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

void sub_258AD1520(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC0000006D6F6F52;
  v4 = 0x79726F6765746163;
  v5 = 0xE400000000000000;
  v6 = 963733616;
  if (v2 != 6)
  {
    v6 = 929325415;
    v5 = 0xE400000000000000;
  }

  v7 = 0x8000000258B36410;
  v8 = 0xD000000000000016;
  if (v2 != 4)
  {
    v8 = 0x47646E4139716870;
    v7 = 0xEB00000000376461;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xD000000000000011;
  v10 = 0x8000000258B363F0;
  if (v2 != 2)
  {
    v9 = 0x736E6F6974706FLL;
    v10 = 0xE700000000000000;
  }

  if (*v1)
  {
    v4 = 0x6574617453676F6CLL;
    v3 = 0xEE00646E694D664FLL;
  }

  if (*v1 > 1u)
  {
    v4 = v9;
    v3 = v10;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

void sub_258AD1638(unsigned __int8 a1)
{
  v17[2] = 0;
  v17[3] = 0xE000000000000000;
  v17[0] = 46;
  v17[1] = 0xE100000000000000;
  v16[2] = v17;
  v2 = sub_2589BBCF8(1, 1, sub_258AD7088, v16, 0xD000000000000022, 0x8000000258B396C0, "SKIP_BUTTON_TITLE");
  if (v2[2])
  {
    v3 = v2[4];
    v4 = v2[5];
    v5 = v2[6];
    v6 = v2[7];
    sub_258B003E4();

    v7 = MEMORY[0x259C93160](v3, v4, v5, v6);
    v9 = v8;

    MEMORY[0x259C931B0](v7, v9);

    MEMORY[0x259C931B0](46, 0xE100000000000000);
    v10 = 0xE700000000000000;
    v11 = 0x6E6F6973726576;
    v12 = 0xE500000000000000;
    v13 = 0x6574756F72;
    if (a1 != 2)
    {
      v13 = 0x72756769666E6F63;
      v12 = 0xED00006E6F697461;
    }

    if (a1)
    {
      v11 = 0xD000000000000014;
      v10 = 0x8000000258B39730;
    }

    if (a1 <= 1u)
    {
      v14 = v11;
    }

    else
    {
      v14 = v13;
    }

    if (a1 <= 1u)
    {
      v15 = v10;
    }

    else
    {
      v15 = v12;
    }

    MEMORY[0x259C931B0](v14, v15);
  }

  else
  {

    __break(1u);
  }
}

uint64_t NSUserActivity.presentWithAnimation.getter()
{
  v1 = [v0 userInfo];
  if (!v1)
  {
    goto LABEL_9;
  }

  v2 = v1;
  v3 = sub_258B029F4();

  sub_258AD1638(1u);
  *&v10 = v4;
  *(&v10 + 1) = v5;
  sub_258B03154();
  if (!*(v3 + 16) || (v6 = sub_258AD57B4(v9), (v7 & 1) == 0))
  {

    sub_258A97AF8(v9);
LABEL_9:
    v10 = 0u;
    v11 = 0u;
    goto LABEL_10;
  }

  sub_2589F44D0(*(v3 + 56) + 32 * v6, &v10);
  sub_258A97AF8(v9);

  if (!*(&v11 + 1))
  {
LABEL_10:
    sub_258AD6834(&v10, sub_258A3F06C);
    return 2;
  }

  if (swift_dynamicCast())
  {
    return v9[0];
  }

  else
  {
    return 2;
  }
}

void NSUserActivity.presentWithAnimation.setter(char a1)
{
  v2 = v1;
  if (a1 == 2)
  {
    v3 = [v1 userInfo];
    if (v3)
    {
      v4 = v3;
      v5 = sub_258B029F4();

      v13 = v5;
      sub_258AD1638(1u);
      sub_258B03154();
      sub_258AD1B8C(v12, v14);
      sub_258A97AF8(v12);
      sub_258AD6834(v14, sub_258A3F06C);
      if (v13)
      {
        v6 = sub_258B029E4();
      }

      else
      {
        v6 = 0;
      }

      [v2 setUserInfo_];
    }

    else
    {
      [v1 setUserInfo_];
      memset(v14, 0, sizeof(v14));
      sub_258AD6834(v14, sub_258A3F06C);
    }
  }

  else
  {
    sub_258AD57F8(0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_258B2C470;
    sub_258AD1638(1u);
    v12[0] = v9;
    v12[1] = v10;
    sub_258B03154();
    *(inited + 96) = MEMORY[0x277D839B0];
    *(inited + 72) = a1 & 1;
    sub_258AD65D0(inited);
    swift_setDeallocating();
    sub_258AD6A6C(inited + 32, &unk_27F9713C0, MEMORY[0x277D84030], sub_258AD6D6C);
    v11 = sub_258B029E4();

    [v2 addUserInfoEntriesFromDictionary_];
  }
}

double sub_258AD1B8C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_258AD57B4(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_258A99ED4();
      v9 = v11;
    }

    sub_258A97AF8(*(v9 + 48) + 40 * v7);
    sub_258A2D784((*(v9 + 56) + 32 * v7), a2);
    sub_258AC889C(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

void (*NSUserActivity.presentWithAnimation.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = NSUserActivity.presentWithAnimation.getter();
  return sub_258AD1C78;
}

MentalHealthUI::Route NSUserActivity.route.getter@<W0>(_BYTE *a1@<X8>)
{
  v3 = [v1 userInfo];
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = v3;
  v5 = sub_258B029F4();

  sub_258AD1638(2u);
  sub_258B03154();
  if (!*(v5 + 16) || (v6 = sub_258AD57B4(v9), (v7 & 1) == 0))
  {

    sub_258A97AF8(v9);
LABEL_8:
    v10 = 0u;
    v11 = 0u;
    goto LABEL_9;
  }

  sub_2589F44D0(*(v5 + 56) + 32 * v6, &v10);
  sub_258A97AF8(v9);

  if (!*(&v11 + 1))
  {
LABEL_9:
    result = sub_258AD6834(&v10, sub_258A3F06C);
    goto LABEL_10;
  }

  result = swift_dynamicCast();
  if (result)
  {
    return Route.init(rawValue:)(v9[0]).value;
  }

LABEL_10:
  *a1 = 8;
  return result;
}

void NSUserActivity.route.setter(unsigned __int8 *a1)
{
  v2 = v1;
  v3 = *a1;
  if (v3 == 8)
  {
    v4 = [v1 userInfo];
    if (!v4)
    {
      [v1 setUserInfo_];
      memset(v16, 0, sizeof(v16));
      sub_258AD6834(v16, sub_258A3F06C);
      return;
    }

    v5 = v4;
    v6 = sub_258B029F4();

    v15 = v6;
    sub_258AD1638(2u);
    sub_258B03154();
    sub_258AD1B8C(v14, v16);
    sub_258A97AF8(v14);
    sub_258AD6834(v16, sub_258A3F06C);
    if (v15)
    {
      v7 = sub_258B029E4();
    }

    else
    {
      v7 = 0;
    }

    [v2 setUserInfo_];
  }

  else
  {
    sub_258AD57F8(0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_258B2C470;
    sub_258AD1638(2u);
    v14[0] = v9;
    v14[1] = v10;
    v11 = MEMORY[0x277D837D0];
    sub_258B03154();
    if (v3 > 3)
    {
      if (v3 > 5)
      {
        v12 = 0xE400000000000000;
        if (v3 == 6)
        {
          v13 = 963733616;
        }

        else
        {
          v13 = 929325415;
        }
      }

      else if (v3 == 4)
      {
        v12 = 0x8000000258B36410;
        v13 = 0xD000000000000016;
      }

      else
      {
        v12 = 0xEB00000000376461;
        v13 = 0x47646E4139716870;
      }
    }

    else if (v3 > 1)
    {
      if (v3 == 2)
      {
        v13 = 0xD000000000000011;
        v12 = 0x8000000258B363F0;
      }

      else
      {
        v12 = 0xE700000000000000;
        v13 = 0x736E6F6974706FLL;
      }
    }

    else if (v3)
    {
      v12 = 0xEE00646E694D664FLL;
      v13 = 0x6574617453676F6CLL;
    }

    else
    {
      v12 = 0xEC0000006D6F6F52;
      v13 = 0x79726F6765746163;
    }

    *(inited + 96) = v11;
    *(inited + 72) = v13;
    *(inited + 80) = v12;
    sub_258AD65D0(inited);
    swift_setDeallocating();
    sub_258AD6A6C(inited + 32, &unk_27F9713C0, MEMORY[0x277D84030], sub_258AD6D6C);
    v7 = sub_258B029E4();

    [v2 addUserInfoEntriesFromDictionary_];
  }
}

void (*NSUserActivity.route.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  NSUserActivity.route.getter((a1 + 8));
  return sub_258AD218C;
}

void sub_258AD218C(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(a1 + 8);
    v2 = &v3;
  }

  else
  {
    v4 = *(a1 + 8);
    v2 = &v4;
  }

  NSUserActivity.route.setter(v2);
}

uint64_t NSUserActivity.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  sub_258AD6714(0, qword_280DF8F38, type metadata accessor for StateOfMindEntryModel.Configuration);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v20 - v4;
  v6 = [v1 userInfo];
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = v6;
  v8 = sub_258B029F4();

  sub_258AD1638(3u);
  v20[1] = v9;
  v20[2] = v10;
  sub_258B03154();
  if (!*(v8 + 16) || (v11 = sub_258AD57B4(&v21), (v12 & 1) == 0))
  {

    sub_258A97AF8(&v21);
LABEL_9:
    v22 = 0u;
    v23 = 0u;
    goto LABEL_10;
  }

  sub_2589F44D0(*(v8 + 56) + 32 * v11, &v22);
  sub_258A97AF8(&v21);

  if (!*(&v23 + 1))
  {
LABEL_10:
    sub_258AD6834(&v22, sub_258A3F06C);
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    v13 = sub_258AFFE54();
    v15 = v14;

    if (v15 >> 60 != 15)
    {
      sub_258AFFB54();
      swift_allocObject();
      sub_258AFFB44();
      v16 = type metadata accessor for StateOfMindEntryModel.Configuration(0);
      sub_258AD6FD8(&qword_27F9713D0, type metadata accessor for StateOfMindEntryModel.Configuration, &protocol conformance descriptor for StateOfMindEntryModel.Configuration);
      sub_258AFFB34();
      sub_258AD6768(v13, v15);

      v18 = *(*(v16 - 8) + 56);
      v18(v5, 0, 1, v16);
      sub_258AD67D0(v5, a1);
      return (v18)(a1, 0, 1, v16);
    }
  }

LABEL_11:
  v17 = type metadata accessor for StateOfMindEntryModel.Configuration(0);
  return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
}

uint64_t sub_258AD2570(uint64_t a1)
{
  sub_258AD6714(0, qword_280DF8F38, type metadata accessor for StateOfMindEntryModel.Configuration);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_258AD6AEC(a1, &v6 - v3, qword_280DF8F38, type metadata accessor for StateOfMindEntryModel.Configuration);
  return NSUserActivity.configuration.setter(v4);
}

uint64_t NSUserActivity.configuration.setter(uint64_t a1)
{
  v2 = v1;
  sub_258AD6714(0, qword_280DF8F38, type metadata accessor for StateOfMindEntryModel.Configuration);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v30[-v5];
  v7 = type metadata accessor for StateOfMindEntryModel.Configuration(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v30[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_258AD6AEC(a1, v6, qword_280DF8F38, type metadata accessor for StateOfMindEntryModel.Configuration);
  if ((*(v8 + 48))(v6, 1, v7) != 1)
  {
    sub_258AD67D0(v6, v10);
    sub_258AFFB84();
    swift_allocObject();
    sub_258AFFB74();
    sub_258AD6FD8(&unk_27F9713D8, type metadata accessor for StateOfMindEntryModel.Configuration, &protocol conformance descriptor for StateOfMindEntryModel.Configuration);
    v17 = sub_258AFFB64();
    v19 = v18;

    sub_258AD57F8(0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_258B2C470;
    sub_258AD1638(3u);
    v33[0] = v21;
    v33[1] = v22;
    v23 = MEMORY[0x277D837D0];
    sub_258B03154();
    v24 = sub_258AFFE64();
    *(inited + 96) = v23;
    *(inited + 72) = v24;
    *(inited + 80) = v25;
    sub_258AD65D0(inited);
    swift_setDeallocating();
    sub_258AD6A6C(inited + 32, &unk_27F9713C0, MEMORY[0x277D84030], sub_258AD6D6C);
    v26 = sub_258B029E4();

    [v2 addUserInfoEntriesFromDictionary_];

    sub_258AD677C(v17, v19);
    sub_258AD6A6C(a1, qword_280DF8F38, type metadata accessor for StateOfMindEntryModel.Configuration, sub_258AD6714);
    v27 = type metadata accessor for StateOfMindEntryModel.Configuration;
    v28 = v10;
    return sub_258AD6834(v28, v27);
  }

  sub_258AD6A6C(v6, qword_280DF8F38, type metadata accessor for StateOfMindEntryModel.Configuration, sub_258AD6714);
  v11 = [v2 userInfo];
  if (!v11)
  {
    [v2 setUserInfo_];
    sub_258AD6A6C(a1, qword_280DF8F38, type metadata accessor for StateOfMindEntryModel.Configuration, sub_258AD6714);
    memset(v35, 0, sizeof(v35));
    v27 = sub_258A3F06C;
    v28 = v35;
    return sub_258AD6834(v28, v27);
  }

  v12 = v11;
  v13 = sub_258B029F4();

  v34 = v13;
  sub_258AD1638(3u);
  v31 = v14;
  v32 = v15;
  sub_258B03154();
  sub_258AD1B8C(v33, v35);
  sub_258A97AF8(v33);
  sub_258AD6834(v35, sub_258A3F06C);
  if (v34)
  {
    v16 = sub_258B029E4();
  }

  else
  {
    v16 = 0;
  }

  [v2 setUserInfo_];

  return sub_258AD6A6C(a1, qword_280DF8F38, type metadata accessor for StateOfMindEntryModel.Configuration, sub_258AD6714);
}

void (*NSUserActivity.configuration.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  sub_258AD6714(0, qword_280DF8F38, type metadata accessor for StateOfMindEntryModel.Configuration);
  v4 = *(*(v3 - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    a1[1] = swift_coroFrameAlloc();
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v4);
    v5 = malloc(v4);
  }

  a1[2] = v5;
  NSUserActivity.configuration.getter(v5);
  return sub_258AD2C20;
}

uint64_t NSUserActivity.version.getter()
{
  v1 = [v0 userInfo];
  if (!v1)
  {
    goto LABEL_10;
  }

  v2 = v1;
  v3 = sub_258B029F4();

  sub_258AD1638(0);
  *&v10 = v4;
  *(&v10 + 1) = v5;
  sub_258B03154();
  if (!*(v3 + 16) || (v6 = sub_258AD57B4(v9), (v7 & 1) == 0))
  {

    sub_258A97AF8(v9);
LABEL_10:
    v10 = 0u;
    v11 = 0u;
    goto LABEL_11;
  }

  sub_2589F44D0(*(v3 + 56) + 32 * v6, &v10);
  sub_258A97AF8(v9);

  if (!*(&v11 + 1))
  {
LABEL_11:
    sub_258AD6834(&v10, sub_258A3F06C);
    return 0;
  }

  if (swift_dynamicCast())
  {
    return v9[0];
  }

  else
  {
    return 0;
  }
}

void NSUserActivity.version.setter(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    sub_258AD57F8(0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_258B2C470;
    sub_258AD1638(0);
    sub_258B03154();
    *(inited + 96) = MEMORY[0x277D83B88];
    *(inited + 72) = a1;
    sub_258AD65D0(inited);
    swift_setDeallocating();
    sub_258AD6A6C(inited + 32, &unk_27F9713C0, MEMORY[0x277D84030], sub_258AD6D6C);
    v5 = sub_258B029E4();

    [v2 addUserInfoEntriesFromDictionary_];
  }
}

void (*NSUserActivity.version.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x108uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 256) = v1;
  *(v3 + 240) = NSUserActivity.version.getter();
  *(v4 + 248) = v5 & 1;
  return sub_258AD2F14;
}

void sub_258AD2F14(uint64_t a1, char a2)
{
  v2 = *a1;
  if ((*(*a1 + 248) & 1) == 0)
  {
    if (a2)
    {
      v3 = 27;
    }

    else
    {
      v3 = 29;
    }

    if (a2)
    {
      v4 = 26;
    }

    else
    {
      v4 = 28;
    }

    v5 = v2[32];
    v6 = v2[30];
    sub_258AD57F8(0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_258B2C470;
    sub_258AD1638(0);
    v2[v4] = v8;
    v2[v3] = v9;
    sub_258B03154();
    *(inited + 96) = MEMORY[0x277D83B88];
    *(inited + 72) = v6;
    sub_258AD65D0(inited);
    swift_setDeallocating();
    sub_258AD6A6C(inited + 32, &unk_27F9713C0, MEMORY[0x277D84030], sub_258AD6D6C);
    v10 = sub_258B029E4();

    [v5 addUserInfoEntriesFromDictionary_];
  }

  free(v2);
}

uint64_t static URL.stateOfMind(route:presentWithAnimation:configuration:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a2;
  v22 = a4;
  sub_258AD6714(0, &qword_280DF8F90, MEMORY[0x277CC9260]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v21 - v8;
  sub_258AD6714(0, qword_280DF8F38, type metadata accessor for StateOfMindEntryModel.Configuration);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v21 - v11;
  v13 = sub_258AFFCA4();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(a1) = *a1;
  sub_258B00294();
  LOBYTE(v23) = a1;
  URLComponents.route.setter(&v23);
  URLComponents.presentWithAnimation.setter(v5);
  sub_258AD6AEC(a3, v12, qword_280DF8F38, type metadata accessor for StateOfMindEntryModel.Configuration);
  URLComponents.initialConfiguration.setter(v12);
  sub_258AFFC74();
  v17 = sub_258AFFE44();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v9, 1, v17) == 1)
  {
    sub_258AD6A6C(v9, &qword_280DF8F90, MEMORY[0x277CC9260], sub_258AD6714);
    v23 = 0;
    v24 = 0xE000000000000000;
    sub_258B031B4();

    v23 = 0xD00000000000001ALL;
    v24 = 0x8000000258B39710;
    sub_258AD6FD8(&qword_27F9713E8, MEMORY[0x277CC8958], MEMORY[0x277CC8968]);
    v20 = sub_258B03414();
    MEMORY[0x259C931B0](v20);

    result = sub_258B03294();
    __break(1u);
  }

  else
  {
    (*(v14 + 8))(v16, v13);
    return (*(v18 + 32))(v22, v9, v17);
  }

  return result;
}

void URLComponents.route.setter(_BYTE *a1)
{
  v1 = *a1;
  if (v1 <= 3)
  {
    v10 = 0xEC0000006D6F6F52;
    v11 = 0x79726F6765746163;
    v12 = 0xD000000000000011;
    v13 = 0x8000000258B363F0;
    if (v1 != 2)
    {
      v12 = 0x736E6F6974706FLL;
      v13 = 0xE700000000000000;
    }

    if (*a1)
    {
      v11 = 0x6574617453676F6CLL;
      v10 = 0xEE00646E694D664FLL;
    }

    if (*a1 <= 1u)
    {
      v8 = v11;
    }

    else
    {
      v8 = v12;
    }

    if (v1 <= 1)
    {
      v9 = v10;
    }

    else
    {
      v9 = v13;
    }
  }

  else
  {
    v2 = 0xE400000000000000;
    v3 = 963733616;
    v4 = 0xE400000000000000;
    v5 = 929325415;
    if (v1 != 7)
    {
      v5 = 0;
      v4 = 0xE000000000000000;
    }

    if (v1 != 6)
    {
      v3 = v5;
      v2 = v4;
    }

    v6 = 0x8000000258B36410;
    v7 = 0xD000000000000016;
    if (v1 != 4)
    {
      v7 = 0x47646E4139716870;
      v6 = 0xEB00000000376461;
    }

    if (*a1 <= 5u)
    {
      v8 = v7;
    }

    else
    {
      v8 = v3;
    }

    if (v1 <= 5)
    {
      v9 = v6;
    }

    else
    {
      v9 = v2;
    }
  }

  MEMORY[0x259C931B0](v8, v9);

  JUMPOUT(0x259C90290);
}

uint64_t URLComponents.presentWithAnimation.setter(int a1)
{
  v3 = sub_258AFFC34();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v30[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x28223BE20](v5);
  v36 = &v30[-v9];
  MEMORY[0x28223BE20](v8);
  v11 = &v30[-v10];
  v12 = sub_258AFFC44();
  if (v12)
  {
    v13 = v12;
    v31 = a1;
    v32 = v7;
    v33 = v1;
    v39 = *(v12 + 16);
    if (v39)
    {
      v14 = 0;
      v38 = v4 + 16;
      v40 = 0x8000000258B39730;
      v35 = (v4 + 32);
      v7 = (v4 + 8);
      v37 = MEMORY[0x277D84F90];
      v34 = v3;
      while (1)
      {
        if (v14 >= *(v13 + 16))
        {
          __break(1u);
LABEL_26:
          v37 = sub_258A755D0(0, v37[2] + 1, 1, v37);
LABEL_21:
          v27 = v37[2];
          v26 = v37[3];
          if (v27 >= v26 >> 1)
          {
            v37 = sub_258A755D0((v26 > 1), v27 + 1, 1, v37);
          }

          v28 = v37;
          v37[2] = v27 + 1;
          (*(v4 + 32))(v28 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v27, v7, v3);
          return sub_258AFFC54();
        }

        v15 = (*(v4 + 80) + 32) & ~*(v4 + 80);
        v16 = *(v4 + 72);
        (*(v4 + 16))(v11, v13 + v15 + v16 * v14, v3);
        if (sub_258AFFC14() == 0xD000000000000014 && v40 == v17)
        {
        }

        else
        {
          v18 = sub_258B03454();

          if ((v18 & 1) == 0)
          {
            v19 = *v35;
            (*v35)(v36, v11, v3);
            v20 = v37;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v41 = v20;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_258AA932C(0, v20[2] + 1, 1);
              v20 = v41;
            }

            v22 = v20;
            v24 = v20[2];
            v23 = v20[3];
            if (v24 >= v23 >> 1)
            {
              v37 = v19;
              sub_258AA932C((v23 > 1), v24 + 1, 1);
              v19 = v37;
              v22 = v41;
            }

            v22[2] = v24 + 1;
            v37 = v22;
            v25 = v22 + v15 + v24 * v16;
            v3 = v34;
            (v19)(v25, v36, v34);
            goto LABEL_6;
          }
        }

        (*v7)(v11, v3);
LABEL_6:
        if (v39 == ++v14)
        {
          goto LABEL_18;
        }
      }
    }

    v37 = MEMORY[0x277D84F90];
LABEL_18:

    v7 = v32;
    LOBYTE(a1) = v31;
  }

  else
  {
    v37 = MEMORY[0x277D84F90];
  }

  if (a1 != 2)
  {
    sub_258AFFC04();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_21;
  }

  return sub_258AFFC54();
}

uint64_t URLComponents.initialConfiguration.setter(uint64_t a1)
{
  sub_258AD6714(0, qword_280DF8F38, type metadata accessor for StateOfMindEntryModel.Configuration);
  MEMORY[0x28223BE20](v3 - 8);
  v38 = &v33 - v4;
  v39 = type metadata accessor for StateOfMindEntryModel.Configuration(0);
  v37 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_258AFFC34();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = (&v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x28223BE20](v9);
  v43 = &v33 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v33 - v14;
  v16 = sub_258AFFC44();
  if (v16)
  {
    v17 = v16;
    v33 = v11;
    v34 = v6;
    v35 = v1;
    v36 = a1;
    v46 = *(v16 + 16);
    if (v46)
    {
      v6 = 0;
      v45 = v8 + 16;
      v42 = (v8 + 32);
      v11 = (v8 + 8);
      v44 = MEMORY[0x277D84F90];
      v40 = v8;
      v41 = v7;
      while (1)
      {
        if (v6 >= *(v17 + 16))
        {
          __break(1u);
LABEL_28:
          v28 = sub_258A755D0(0, *(v44 + 2) + 1, 1, v44);
          goto LABEL_23;
        }

        v18 = (*(v8 + 80) + 32) & ~*(v8 + 80);
        a1 = *(v8 + 72);
        (*(v8 + 16))(v15, v17 + v18 + a1 * v6, v7);
        v1 = v15;
        if (sub_258AFFC14() == 0x72756769666E6F63 && v19 == 0xED00006E6F697461)
        {
        }

        else
        {
          v1 = v19;
          v20 = sub_258B03454();

          if ((v20 & 1) == 0)
          {
            v21 = *v42;
            (*v42)(v43, v15, v7);
            v1 = v44;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v47 = v1;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_258AA932C(0, *(v1 + 2) + 1, 1);
              v1 = v47;
            }

            v24 = *(v1 + 2);
            v23 = *(v1 + 3);
            if (v24 >= v23 >> 1)
            {
              sub_258AA932C((v23 > 1), v24 + 1, 1);
              v1 = v47;
            }

            *(v1 + 2) = v24 + 1;
            v44 = v1;
            v25 = &v1[v18 + v24 * a1];
            v7 = v41;
            v21(v25, v43, v41);
            v8 = v40;
            goto LABEL_6;
          }
        }

        (*v11)(v15, v7);
LABEL_6:
        if (v46 == ++v6)
        {
          goto LABEL_18;
        }
      }
    }

    v44 = MEMORY[0x277D84F90];
LABEL_18:

    a1 = v36;
    v11 = v33;
    v6 = v34;
  }

  else
  {
    v44 = MEMORY[0x277D84F90];
  }

  v26 = v38;
  sub_258AD6AEC(a1, v38, qword_280DF8F38, type metadata accessor for StateOfMindEntryModel.Configuration);
  if ((*(v37 + 48))(v26, 1, v39) == 1)
  {
    sub_258AD6A6C(v26, qword_280DF8F38, type metadata accessor for StateOfMindEntryModel.Configuration, sub_258AD6714);
  }

  else
  {
    sub_258AD67D0(v26, v6);
    sub_258AFFB84();
    swift_allocObject();
    sub_258AFFB74();
    sub_258AD6FD8(&unk_27F9713D8, type metadata accessor for StateOfMindEntryModel.Configuration, &protocol conformance descriptor for StateOfMindEntryModel.Configuration);
    v15 = sub_258AFFB64();
    v1 = v27;

    sub_258AFFE64();
    sub_258AFFC04();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_28;
    }

    v28 = v44;
LABEL_23:
    v30 = *(v28 + 2);
    v29 = *(v28 + 3);
    v44 = v28;
    if (v30 >= v29 >> 1)
    {
      v44 = sub_258A755D0((v29 > 1), v30 + 1, 1, v44);
    }

    sub_258AD677C(v15, v1);
    sub_258AD6834(v6, type metadata accessor for StateOfMindEntryModel.Configuration);
    v31 = v44;
    *(v44 + 2) = v30 + 1;
    (*(v8 + 32))(&v31[((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v30], v11, v7);
  }

  sub_258AFFC54();
  return sub_258AD6A6C(a1, qword_280DF8F38, type metadata accessor for StateOfMindEntryModel.Configuration, sub_258AD6714);
}