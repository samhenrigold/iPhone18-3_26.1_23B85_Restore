uint64_t sub_258A13F50@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v2 = type metadata accessor for StateOfMindTimeline.Styles(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = _s19EntryMomentDataViewVMa(0);
  v5 = v1 + *(v30 + 20);
  v6 = _s5EntryVMa(0);
  v7 = (v5 + *(v6 + 32));
  v8 = v7[1];
  v32 = *v7;
  v33 = v8;
  sub_2589BFF58(v6, v9, v10);
  sub_258B003E4();
  v11 = sub_258B01B44();
  v13 = v12;
  LOBYTE(v5) = v14;
  sub_258AC1060(v4);
  sub_258A169D8(v4, type metadata accessor for StateOfMindTimeline.Styles);
  sub_258B01A34();
  v15 = sub_258B01AE4();
  v28[1] = v16;
  v29 = v15;
  v18 = v17;
  v20 = v19;
  sub_2589BFFAC(v11, v13, v5 & 1);

  sub_258AC1060(v4);
  sub_258A169D8(v4, type metadata accessor for StateOfMindTimeline.Styles);
  v21 = [objc_opt_self() secondaryLabelColor];
  v32 = sub_258B01F94();
  v22 = v29;
  v23 = sub_258B01AB4();
  v25 = v24;
  LOBYTE(v8) = v26;
  sub_2589BFFAC(v22, v18, v20 & 1);

  sub_2589D7078(*(v1 + *(v30 + 24)), 1701669204, 0xE400000000000000);
  sub_2589BFFAC(v23, v25, v8 & 1);
}

uint64_t sub_258A14190@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v36 = a3;
  v5 = _s19EntryMomentDataViewVMa(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  sub_258A15600(0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v35 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v34 - v12;
  MEMORY[0x28223BE20](v11);
  v34 = &v34 - v14;
  sub_258A15324(0);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v34 - v19;
  *v20 = sub_258B00FE4();
  *(v20 + 1) = 0;
  v20[16] = 1;
  sub_258A15EB8(0, &qword_27F96E5F8, sub_258A153B8, MEMORY[0x277CDF740], MEMORY[0x277CDF738]);
  sub_258A1465C(a1, a2, &v20[*(v21 + 44)]);
  v22 = a1[2];
  if (v22)
  {
    sub_258AACA88(a1, (a1 + 4), 1, (2 * v22) | 1);
    a1 = v33;
  }

  else
  {
    sub_258B003E4();
  }

  *v13 = sub_258B011A4();
  *(v13 + 1) = 0;
  v13[16] = 0;
  sub_258A15EB8(0, &qword_27F96E600, sub_258A156A8, MEMORY[0x277CDF7A0], MEMORY[0x277CDF798]);
  v37 = a1;
  swift_getKeyPath();
  sub_258A1693C(a2, &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), _s19EntryMomentDataViewVMa);
  v23 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v24 = swift_allocObject();
  sub_258A15F28(&v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23, _s19EntryMomentDataViewVMa);
  sub_258A16A38(0, &qword_27F96E520, &_s19EntryMomentDataViewV15ItemDescriptionVN, MEMORY[0x277D83940]);
  sub_258A15164(0, &qword_27F96E4F0, &qword_27F96D1F8, MEMORY[0x277CE0BD8], MEMORY[0x277CDFC50]);
  v25 = sub_258A15788();
  sub_258A15804(v25, v26, v27);
  sub_258A15858();
  sub_258B023B4();
  v28 = v34;
  sub_258A15F28(v13, v34, sub_258A15600);
  sub_258A1693C(v20, v18, sub_258A15324);
  v29 = v35;
  sub_258A1693C(v28, v35, sub_258A15600);
  v30 = v36;
  sub_258A1693C(v18, v36, sub_258A15324);
  sub_258A152A8(0, &qword_27F96E4C8, sub_258A15324, sub_258A15600);
  sub_258A1693C(v29, v30 + *(v31 + 48), sub_258A15600);
  sub_258A169D8(v28, sub_258A15600);
  sub_258A169D8(v20, sub_258A15324);
  sub_258A169D8(v29, sub_258A15600);
  return sub_258A169D8(v18, sub_258A15324);
}

uint64_t sub_258A1465C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v73 = a2;
  v5 = type metadata accessor for StateOfMindTimeline.Styles(0);
  MEMORY[0x28223BE20](v5 - 8);
  v72 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A15540(0);
  v70 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v60 - v11;
  sub_258A15164(0, &qword_27F96E4F0, &qword_27F96D1F8, MEMORY[0x277CE0BD8], MEMORY[0x277CDFC50]);
  v14 = v13;
  v71 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v69 = &v60 - v15;
  sub_258A154C8(0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v24 = &v60 - v23;
  if (a1[2])
  {
    v25 = a1[4];
    v63 = a1[5];
    v64 = &v60 - v23;
    v26 = a1[6];
    v27 = a1[7];
    v28 = a1[9];
    v61 = a1[8];
    v74 = v25;
    v75 = v63;
    sub_2589BFF58(v20, v21, v22);
    swift_bridgeObjectRetain_n();
    v60 = v26;

    sub_258B003E4();
    v29 = sub_258B01B44();
    v68 = a3;
    v31 = v30;
    v62 = v14;
    v33 = v32;
    v66 = v12;
    v34 = sub_258B01AE4();
    v65 = v19;
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v67 = v10;
    sub_2589BFFAC(v29, v31, v33 & 1);

    v74 = v27;

    v40 = sub_258B01AB4();
    v42 = v41;
    LOBYTE(v29) = v43;
    v45 = v44;
    v46 = v35;
    v19 = v65;
    sub_2589BFFAC(v46, v37, v39 & 1);

    v74 = v40;
    v75 = v42;
    v76 = v29 & 1;
    v77 = v45;
    v78 = 256;
    v47 = _s19EntryMomentDataViewVMa(0);
    v48 = v69;
    sub_2589D7214(*(v73 + *(v47 + 24)), v61, v28);
    v49 = v42;
    v12 = v66;
    v10 = v67;
    sub_2589BFFAC(v40, v49, v29 & 1);

    v24 = v64;

    a3 = v68;

    sub_258A15F90(v48, v24);
    (*(v71 + 56))(v24, 0, 1, v62);
  }

  else
  {
    (*(v71 + 56))(&v60 - v23, 1, 1, v14);
  }

  sub_258A13F50(v12);
  v50 = sub_258B018A4();
  v51 = v72;
  sub_258AC1060(v72);
  sub_258A169D8(v51, type metadata accessor for StateOfMindTimeline.Styles);
  sub_258B00654();
  v52 = &v12[*(v70 + 36)];
  *v52 = v50;
  *(v52 + 1) = v53;
  *(v52 + 2) = v54;
  *(v52 + 3) = v55;
  *(v52 + 4) = v56;
  v52[40] = 0;
  sub_258A1693C(v24, v19, sub_258A154C8);
  sub_258A1693C(v12, v10, sub_258A15540);
  sub_258A1693C(v19, a3, sub_258A154C8);
  sub_258A15450(0);
  v58 = a3 + *(v57 + 48);
  *v58 = 0;
  *(v58 + 8) = 1;
  sub_258A1693C(v10, a3 + *(v57 + 64), sub_258A15540);
  sub_258A169D8(v12, sub_258A15540);
  sub_258A169D8(v24, sub_258A154C8);
  sub_258A169D8(v10, sub_258A15540);
  return sub_258A169D8(v19, sub_258A154C8);
}

uint64_t sub_258A14BA0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v21 = a1[5];
  v22 = a1[4];
  sub_2589BFF58(a1, a2, a3);
  sub_258B003E4();
  v4 = sub_258B01B44();
  v6 = v5;
  v8 = v7;
  v9 = sub_258B01AE4();
  v11 = v10;
  v13 = v12;
  sub_2589BFFAC(v4, v6, v8 & 1);

  v14 = sub_258B01AB4();
  v16 = v15;
  v18 = v17;
  sub_2589BFFAC(v9, v11, v13 & 1);

  v19 = _s19EntryMomentDataViewVMa(0);
  sub_2589D7214(*(a2 + *(v19 + 24)), v22, v21);
  sub_2589BFFAC(v14, v16, v18 & 1);
}

uint64_t sub_258A14D28()
{
  v1 = sub_258B01634();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A14ED4(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A124CC(v0, v7);
  sub_258B01614();
  sub_258A15BF0(&qword_27F96E598, sub_258A14ED4, sub_258A15C60, MEMORY[0x277CE0FB0]);
  sub_258B01D84();
  (*(v2 + 8))(v4, v1);
  return sub_258A169D8(v7, sub_258A14ED4);
}

void sub_258A14ED4(uint64_t a1)
{
  if (!qword_27F96E480)
  {
    sub_258A15E34(255, &qword_27F96E488, sub_258A14F70, sub_258A15A80, MEMORY[0x277CE0338]);
    v1 = sub_258B02074();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96E480);
    }
  }
}

void sub_258A14FB8(uint64_t a1)
{
  if (!qword_27F96E498)
  {
    sub_258A1504C(255);
    sub_258A16A88(&qword_27F96E550, sub_258A1504C, MEMORY[0x277CE14C0]);
    v1 = sub_258B021D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96E498);
    }
  }
}

void sub_258A15088(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_258A152A8(255, a3, a4, a5);
    v6 = sub_258B02574();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_258A150E4(uint64_t a1)
{
  if (!qword_27F96E4B0)
  {
    sub_258A15164(255, &qword_27F96D108, &qword_27F96D110, &type metadata for StateOfMindVisualization.ValenceImage, MEMORY[0x277CDF688]);
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96E4B0);
    }
  }
}

void sub_258A15164(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    sub_2589DC8AC(255, a3, a4, a5);
    sub_258B017D4();
    v6 = sub_258B00B04();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_258A151D8(uint64_t a1)
{
  if (!qword_27F96E4B8)
  {
    sub_258A1526C(255);
    sub_258A16A88(&qword_27F96E548, sub_258A1526C, MEMORY[0x277CE14C0]);
    v1 = sub_258B022D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96E4B8);
    }
  }
}

void sub_258A152A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
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

void sub_258A15324(uint64_t a1)
{
  if (!qword_27F96E4D0)
  {
    sub_258A153B8(255);
    sub_258A16A88(&qword_27F96E508, sub_258A153B8, MEMORY[0x277CE14C0]);
    v1 = sub_258B021D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96E4D0);
    }
  }
}

void sub_258A153EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_258A15450(uint64_t a1)
{
  if (!qword_27F96E4E0)
  {
    sub_258A154C8(255);
    sub_258A15540(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F96E4E0);
    }
  }
}

void sub_258A154C8(uint64_t a1)
{
  if (!qword_27F96E4E8)
  {
    sub_258A15164(255, &qword_27F96E4F0, &qword_27F96D1F8, MEMORY[0x277CE0BD8], MEMORY[0x277CDFC50]);
    v1 = sub_258B030C4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96E4E8);
    }
  }
}

void sub_258A15540(uint64_t a1)
{
  if (!qword_27F96E4F8)
  {
    sub_258A155A0(255);
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96E4F8);
    }
  }
}

void sub_258A155A0(uint64_t a1)
{
  if (!qword_27F96E500)
  {
    sub_258B017D4();
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96E500);
    }
  }
}

void sub_258A15600(uint64_t a1)
{
  if (!qword_27F96E510)
  {
    sub_258A156A8(255);
    sub_258A15BF0(&qword_27F96E538, sub_258A156A8, sub_258A15858, MEMORY[0x277CE1290]);
    v1 = sub_258B022D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96E510);
    }
  }
}

void sub_258A156A8(uint64_t a1)
{
  if (!qword_27F96E518)
  {
    sub_258A16A38(255, &qword_27F96E520, &_s19EntryMomentDataViewV15ItemDescriptionVN, MEMORY[0x277D83940]);
    sub_258A15164(255, &qword_27F96E4F0, &qword_27F96D1F8, MEMORY[0x277CE0BD8], MEMORY[0x277CDFC50]);
    v5 = sub_258A15788();
    sub_258A15804(v5, v1, v2);
    v3 = sub_258B023D4();
    if (!v4)
    {
      atomic_store(v3, &qword_27F96E518);
    }
  }
}

unint64_t sub_258A15788()
{
  result = qword_27F96E528;
  if (!qword_27F96E528)
  {
    sub_258A16A38(255, &qword_27F96E520, &_s19EntryMomentDataViewV15ItemDescriptionVN, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96E528);
  }

  return result;
}

unint64_t sub_258A15804(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F96E530;
  if (!qword_27F96E530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96E530);
  }

  return result;
}

unint64_t sub_258A15858()
{
  result = qword_27F96E540;
  if (!qword_27F96E540)
  {
    sub_258A15164(255, &qword_27F96E4F0, &qword_27F96D1F8, MEMORY[0x277CE0BD8], MEMORY[0x277CDFC50]);
    sub_2589DC8FC();
    sub_258A16A88(&qword_280DF8950, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96E540);
  }

  return result;
}

void sub_258A15928(uint64_t a1)
{
  if (!qword_27F96E558)
  {
    sub_258A159BC(255);
    sub_258A16A88(&qword_27F96E570, sub_258A159BC, MEMORY[0x277CE14C0]);
    v1 = sub_258B022D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96E558);
    }
  }
}

void sub_258A159F0(uint64_t a1)
{
  if (!qword_27F96E568)
  {
    sub_258A15164(255, &qword_27F96D108, &qword_27F96D110, &type metadata for StateOfMindVisualization.ValenceImage, MEMORY[0x277CDF688]);
    sub_258A151D8(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F96E568);
    }
  }
}

void sub_258A15A80(uint64_t a1)
{
  if (!qword_27F96E578)
  {
    sub_258A15B14(255);
    sub_258A16A88(&qword_27F96E590, sub_258A15B14, MEMORY[0x277CE14C0]);
    v1 = sub_258B022D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96E578);
    }
  }
}

void sub_258A15B48(uint64_t a1)
{
  if (!qword_27F96E588)
  {
    sub_258A15164(255, &qword_27F96D108, &qword_27F96D110, &type metadata for StateOfMindVisualization.ValenceImage, MEMORY[0x277CDF688]);
    sub_258A155A0(255);
    sub_258A15600(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F96E588);
    }
  }
}

uint64_t sub_258A15BF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t a4)
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

unint64_t sub_258A15C60()
{
  result = qword_27F96E5A0;
  if (!qword_27F96E5A0)
  {
    sub_258A15E34(255, &qword_27F96E488, sub_258A14F70, sub_258A15A80, MEMORY[0x277CE0338]);
    sub_258A15D54();
    sub_258A16A88(&qword_27F96E5C0, sub_258A15A80, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96E5A0);
  }

  return result;
}

unint64_t sub_258A15D54()
{
  result = qword_27F96E5A8;
  if (!qword_27F96E5A8)
  {
    sub_258A14F70(255);
    sub_258A16A88(&qword_27F96E5B0, sub_258A14FB8, MEMORY[0x277CE1138]);
    sub_258A16A88(&qword_27F96E5B8, sub_258A15928, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96E5A8);
  }

  return result;
}

void sub_258A15E34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_258A15EB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
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

uint64_t sub_258A15F28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_258A15F90(uint64_t a1, uint64_t a2)
{
  sub_258A15164(0, &qword_27F96E4F0, &qword_27F96D1F8, MEMORY[0x277CE0BD8], MEMORY[0x277CDFC50]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_258A16014(uint64_t a1)
{
  sub_2589DC8AC(0, &qword_27F96D110, &type metadata for StateOfMindVisualization.ValenceImage, MEMORY[0x277CDF688]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_258A16088(uint64_t a1, uint64_t a2)
{
  sub_258A15164(0, &qword_27F96D108, &qword_27F96D110, &type metadata for StateOfMindVisualization.ValenceImage, MEMORY[0x277CDF688]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258A1610C(uint64_t a1)
{
  sub_258A15164(0, &qword_27F96D108, &qword_27F96D110, &type metadata for StateOfMindVisualization.ValenceImage, MEMORY[0x277CDF688]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_6()
{
  v1 = _s19EntryMomentDataViewVMa(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = v0 + ((v2 + 16) & ~v2);
  sub_258A153EC(0, &qword_27F96CC08, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v45 = v1;
    v4 = sub_258B01504();
    v5 = *(v4 - 8);
    v6 = *(v5 + 48);
    if (!v6(v3, 1, v4))
    {
      (*(v5 + 8))(v3, v4);
    }

    v7 = type metadata accessor for StateOfMindTimeline.Styles(0);
    v8 = v7[5];
    v9 = sub_258B00AA4();
    v10 = *(*(v9 - 8) + 8);
    v11 = v3 + v8;
    v12 = v9;
    v10(v11, v9);
    v13 = v7[7];
    v14 = sub_258B006A4();
    v43 = *(*(v14 - 8) + 8);
    v44 = v14;
    v43(v3 + v13);
    v15 = v3 + v7[8];
    if (!v6(v15, 1, v4))
    {
      (*(v5 + 8))(v15, v4);
    }

    v16 = _s6StylesV8TimelineVMa(0);
    v10(v15 + *(v16 + 20), v12);
    v17 = v3 + v7[9];
    if (!v6(v17, 1, v4))
    {
      (*(v5 + 8))(v17, v4);
    }

    v18 = _s6StylesV6NoDataVMa(0);
    v10(v17 + *(v18 + 20), v12);
    v19 = v3 + v7[10];
    if (!v6(v19, 1, v4))
    {
      (*(v5 + 8))(v19, v4);
    }

    v20 = _s6StylesV11PlaceholderVMa(0);
    v10(v19 + *(v20 + 20), v12);
    v21 = v3 + v7[11];
    if (!v6(v21, 1, v4))
    {
      (*(v5 + 8))(v21, v4);
    }

    v22 = _s6StylesV6SymbolVMa(0);
    v10(v21 + *(v22 + 20), v12);
    v23 = v3 + v7[12];
    v46 = v12;
    if (!v6(v23, 1, v4))
    {
      (*(v5 + 8))(v23, v4);
    }

    v24 = v5;
    v25 = type metadata accessor for StateOfMindTimeline.Styles.Entry(0);
    v10(v23 + *(v25 + 20), v46);
    v26 = *(v25 + 28);
    v27 = v24;
    (v43)(v23 + v26, v44);
    v28 = v3 + v7[13];
    if (!v6(v28, 1, v4))
    {
      (*(v27 + 8))(v28, v4);
    }

    v29 = _s6StylesV5EmptyVMa(0);
    v10(v28 + *(v29 + 20), v46);
    v30 = v3 + v7[14];
    if (!v6(v30, 1, v4))
    {
      (*(v27 + 8))(v30, v4);
    }

    v31 = _s6StylesV5DailyVMa(0);
    v10(v30 + *(v31 + 20), v46);
    v32 = v3 + v7[15];
    if (!v6(v32, 1, v4))
    {
      (*(v27 + 8))(v32, v4);
    }

    v33 = _s6StylesV9MomentaryVMa(0);
    v10(v32 + *(v33 + 20), v46);
    v34 = v3 + v7[16];
    if (!v6(v34, 1, v4))
    {
      (*(v27 + 8))(v34, v4);
    }

    v35 = _s6StylesV6HeaderVMa(0);
    v10(v34 + *(v35 + 20), v46);
    v36 = v3 + v7[17];
    if (!v6(v36, 1, v4))
    {
      (*(v27 + 8))(v36, v4);
    }

    v37 = v36 + *(_s6StylesV11ChartButtonVMa(0) + 20);
    v10(v37, v46);
    v38 = v3 + v7[18];
    if (!v6(v38, 1, v4))
    {
      (*(v27 + 8))(v38, v4);
    }

    v39 = _s6StylesV15LogButtonFooterVMa(0);
    v10(v38 + *(v39 + 20), v46);
    v1 = v45;
  }

  else
  {
  }

  v40 = v3 + *(v1 + 20);
  v41 = sub_258B000C4();
  (*(*(v41 - 8) + 8))(v40, v41);
  _s5EntryVMa(0);

  return swift_deallocObject();
}

uint64_t sub_258A168BC(uint64_t *a1)
{
  v4 = *(_s19EntryMomentDataViewVMa(0) - 8);
  v5 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_258A14BA0(a1, v5, v3);
}

uint64_t sub_258A1693C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258A169D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_258A16A38(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_258A16A88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_258A16AE4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_258A16B2C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_258A16B8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F96E610;
  if (!qword_27F96E610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96E610);
  }

  return result;
}

uint64_t sub_258A16BE4()
{
  v1 = OBJC_IVAR____TtC14MentalHealthUI21StateOfMindEntryModel____lazy_storage___isCompletingFirstTimeFlow;
  v2 = *(v0 + OBJC_IVAR____TtC14MentalHealthUI21StateOfMindEntryModel____lazy_storage___isCompletingFirstTimeFlow);
  if (v2 == 2)
  {
    LOBYTE(v2) = sub_258A1B1C0(*(v0 + 16)) ^ 1;
    *(v0 + v1) = v2 & 1;
  }

  return v2 & 1;
}

double sub_258A16C88(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  return v3;
}

uint64_t sub_258A16CF4(uint64_t a1, char a2)
{
  v23 = *v2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  v21 = aBlock[0] == 2;
  v4 = v2 + OBJC_IVAR____TtC14MentalHealthUI21StateOfMindEntryModel_configuration;
  swift_beginAccess();
  v5 = type metadata accessor for StateOfMindEntryModel.Configuration(0);
  v6 = v4[*(v5 + 32)];
  v7 = v4[*(v5 + 36)];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  v8 = *(aBlock[0] + 16);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  v9 = *(aBlock[0] + 16);

  v10 = v9 != 0;
  v11 = OBJC_IVAR____TtC14MentalHealthUI21StateOfMindEntryModel_completedAnalyticsSteps;
  swift_beginAccess();
  v12 = *(v2 + v11);
  sub_258B003E4();
  v13 = sub_258AFD6BC(a1, v12);

  v14 = sub_258A16BE4();
  type metadata accessor for StateOfMindLoggingEvent();
  v15 = swift_allocObject();
  v15[16] = a1;
  v15[17] = a2;
  v15[18] = v6;
  v15[19] = v7;
  v15[20] = v21;
  v15[21] = v8 != 0;
  v15[22] = v10;
  v15[23] = (v13 & 1) == 0;
  v15[24] = v14 & 1;
  v16 = sub_258A1B590();
  v17 = swift_allocObject();
  *(v17 + 16) = v23;
  aBlock[4] = sub_258A22E24;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_258AFDD38;
  aBlock[3] = &block_descriptor_87;
  v18 = _Block_copy(aBlock);

  [v16 submitEvent:v15 completion:v18];
  _Block_release(v18);

  v19 = *(v2 + v11);
  sub_258B003E4();
  LOBYTE(v16) = sub_258AFD6BC(a1, v19);

  if ((v16 & 1) == 0)
  {
    swift_beginAccess();
    sub_258AE56C4(&v24, a1);
    swift_endAccess();
  }
}

uint64_t sub_258A17080(uint64_t a1, uint64_t a2, double a3)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_258B00574();
}

uint64_t sub_258A17118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_258B00574();
}

uint64_t StateOfMindEntryModel.context.setter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_258B00574();
  return sub_258A1A924();
}

uint64_t StateOfMindEntryModel.saveSample()()
{
  v1[2] = v0;
  sub_258B02D24();
  v1[3] = sub_258B02D14();
  v3 = sub_258B02CE4();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x2822009F8](sub_258A1729C, v3, v2);
}

uint64_t sub_258A1729C()
{
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC14MentalHealthUI21StateOfMindEntryModel_hasInitiatedSampleSave;
  if (*(v1 + OBJC_IVAR____TtC14MentalHealthUI21StateOfMindEntryModel_hasInitiatedSampleSave))
  {

    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = sub_258A1BB58();
    v0[6] = v5;
    *(v1 + v2) = 1;
    v6 = swift_task_alloc();
    v0[7] = v6;
    *v6 = v0;
    v6[1] = sub_258A1739C;

    return sub_258A1BE40(v5);
  }
}

uint64_t sub_258A1739C()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_258A174BC, v3, v2);
}

uint64_t sub_258A174BC()
{
  sub_258A16CF4(7, 0);
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_258A1755C;

  return sub_258A1CEB0();
}

uint64_t sub_258A1755C()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 72) = v3;
  *v3 = v2;
  v3[1] = sub_258A1769C;

  return sub_258A1D7C4();
}

uint64_t sub_258A1769C()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_258A177BC, v3, v2);
}

uint64_t sub_258A177BC()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

void StateOfMindEntryModel.Configuration.initialReflectiveInterval.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t StateOfMindEntryModel.Configuration.initialReflectiveInterval.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t StateOfMindEntryModel.Configuration.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for StateOfMindEntryModel.Configuration(0) + 20);
  v4 = sub_258B00084();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t StateOfMindEntryModel.Configuration.date.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for StateOfMindEntryModel.Configuration(0) + 20);
  v4 = sub_258B00084();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t StateOfMindEntryModel.Configuration.parentSampleUUID.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for StateOfMindEntryModel.Configuration(0) + 24);

  return sub_258A1DF88(a1, v3);
}

uint64_t StateOfMindEntryModel.Configuration.fitnessPlusSessionID.getter()
{
  v1 = *(v0 + *(type metadata accessor for StateOfMindEntryModel.Configuration(0) + 28));
  sub_258B003E4();
  return v1;
}

uint64_t StateOfMindEntryModel.Configuration.fitnessPlusSessionID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for StateOfMindEntryModel.Configuration(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t StateOfMindEntryModel.Configuration.entryPoint.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for StateOfMindEntryModel.Configuration(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t StateOfMindEntryModel.Configuration.entryPoint.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for StateOfMindEntryModel.Configuration(0);
  *(v1 + *(result + 32)) = v2;
  return result;
}

uint64_t StateOfMindEntryModel.Configuration.provenance.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for StateOfMindEntryModel.Configuration(0);
  *a1 = *(v1 + *(result + 36));
  return result;
}

uint64_t StateOfMindEntryModel.Configuration.provenance.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for StateOfMindEntryModel.Configuration(0);
  *(v1 + *(result + 36)) = v2;
  return result;
}

uint64_t StateOfMindEntryModel.Configuration.init(reflectiveInterval:date:parentSampleUUID:fitnessPlusSessionID:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *a1;
  v12 = *(a1 + 8);
  v13 = type metadata accessor for StateOfMindEntryModel.Configuration(0);
  v14 = v13[6];
  v15 = sub_258B000C4();
  (*(*(v15 - 8) + 56))(a6 + v14, 1, 1, v15);
  v16 = (a6 + v13[7]);
  *(a6 + v13[8]) = 13;
  *(a6 + v13[9]) = 7;
  *a6 = v11;
  *(a6 + 8) = v12;
  v17 = v13[5];
  v18 = sub_258B00084();
  (*(*(v18 - 8) + 32))(a6 + v17, a2, v18);
  result = sub_258A1DF88(a3, a6 + v14);
  *v16 = a4;
  v16[1] = a5;
  return result;
}

uint64_t StateOfMindEntryModel.Configuration.init(reflectiveInterval:date:parentSampleUUID:fitnessPlusSessionID:entryPoint:provenance:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, char *a7@<X6>, uint64_t a8@<X8>)
{
  v10 = *a1;
  v11 = *(a1 + 8);
  v22 = *a6;
  v12 = *a7;
  v13 = type metadata accessor for StateOfMindEntryModel.Configuration(0);
  v14 = v13[6];
  v15 = sub_258B000C4();
  (*(*(v15 - 8) + 56))(a8 + v14, 1, 1, v15);
  v16 = v13[8];
  v17 = (a8 + v13[7]);
  *(a8 + v16) = 13;
  v18 = v13[9];
  *(a8 + v18) = 7;
  *a8 = v10;
  *(a8 + 8) = v11;
  v19 = v13[5];
  v20 = sub_258B00084();
  (*(*(v20 - 8) + 32))(a8 + v19, a2, v20);
  result = sub_258A1DF88(a3, a8 + v14);
  *v17 = a4;
  v17[1] = a5;
  *(a8 + v16) = v22;
  *(a8 + v18) = v12;
  return result;
}

unint64_t sub_258A17F40()
{
  v1 = *v0;
  v2 = 1702125924;
  v3 = 0xD000000000000014;
  v4 = 0x696F507972746E65;
  if (v1 != 4)
  {
    v4 = 0x6E616E65766F7270;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0xD000000000000010;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000019;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_258A18010@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_258A209F8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_258A18050(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_258A1DFEC(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_258A1808C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_258A1DFEC(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t StateOfMindEntryModel.Configuration.encode(to:)(void *a1)
{
  v3 = v1;
  sub_258A22C24(0, &qword_27F96E648, sub_258A1DFEC, &type metadata for StateOfMindEntryModel.Configuration.CodingKeys, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - v8;
  v10 = __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_258A1DFEC(v10, v11, v12);
  v13 = sub_258B03574();
  v14 = *(v3 + 8);
  v25 = *v3;
  v26 = v14;
  v27 = 0;
  sub_258A1E040(v13, v15, v16);
  sub_258B033E4();
  if (!v2)
  {
    v17 = type metadata accessor for StateOfMindEntryModel.Configuration(0);
    LOBYTE(v25) = 1;
    sub_258B00084();
    sub_258A1E190(&qword_27F96E660, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    sub_258B033E4();
    LOBYTE(v25) = 2;
    sub_258B000C4();
    sub_258A1E190(&qword_27F96E668, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
    sub_258B033C4();
    LOBYTE(v25) = 3;
    v18 = sub_258B033B4();
    LOBYTE(v25) = *(v3 + *(v17 + 32));
    v27 = 4;
    sub_258A1E094(v18, v19, v20);
    v21 = sub_258B033C4();
    LOBYTE(v25) = *(v3 + *(v17 + 36));
    v27 = 5;
    sub_258A1E0E8(v21, v22, v23);
    sub_258B033C4();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t StateOfMindEntryModel.Configuration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  sub_258A1DF54(0);
  MEMORY[0x28223BE20](v3 - 8);
  v44 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_258B00084();
  v46 = *(v5 - 8);
  v47 = v5;
  MEMORY[0x28223BE20](v5);
  v45 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A22C24(0, &qword_27F96E680, sub_258A1DFEC, &type metadata for StateOfMindEntryModel.Configuration.CodingKeys, MEMORY[0x277D844C8]);
  v50 = v7;
  v48 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v40 - v8;
  v10 = type metadata accessor for StateOfMindEntryModel.Configuration(0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v11 + 24);
  v15 = sub_258B000C4();
  v16 = *(*(v15 - 8) + 56);
  v52 = v14;
  v16(&v13[v14], 1, 1, v15);
  v17 = v10[8];
  v13[v17] = 13;
  v18 = v10[9];
  v53 = v13;
  v13[v18] = 7;
  v19 = __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_258A1DFEC(v19, v20, v21);
  v49 = v9;
  v22 = v51;
  v23 = sub_258B03564();
  if (v22)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_258A1E2E8(v53 + v52, sub_258A1DF54);
  }

  else
  {
    v51 = v15;
    v27 = v45;
    v26 = v46;
    v41 = v18;
    v42 = v17;
    v28 = v47;
    v56 = 0;
    sub_258A1E13C(v23, v24, v25);
    sub_258B03384();
    v29 = v53;
    v30 = v55;
    *v53 = v54;
    *(v29 + 8) = v30;
    LOBYTE(v54) = 1;
    sub_258A1E190(&qword_27F96E690, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
    sub_258B03384();
    (*(v26 + 32))(v29 + v10[5], v27, v28);
    LOBYTE(v54) = 2;
    sub_258A1E190(&qword_27F96E698, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
    v31 = v44;
    sub_258B03364();
    sub_258A1DF88(v31, v29 + v52);
    LOBYTE(v54) = 3;
    v32 = sub_258B03354();
    v33 = (v29 + v10[7]);
    *v33 = v32;
    v33[1] = v34;
    v56 = 4;
    sub_258A1E1D8(v32, v34, v35);
    v36 = sub_258B03364();
    *(v29 + v42) = v54;
    v56 = 5;
    sub_258A1E22C(v36, v37, v38);
    sub_258B03364();
    (*(v48 + 8))(v49, v50);
    *(v29 + v41) = v54;
    sub_258A1E280(v29, v43, type metadata accessor for StateOfMindEntryModel.Configuration);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_258A1E2E8(v29, type metadata accessor for StateOfMindEntryModel.Configuration);
  }
}

uint64_t StateOfMindEntryModel.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14MentalHealthUI21StateOfMindEntryModel_configuration;
  swift_beginAccess();
  return sub_258A1E280(v1 + v3, a1, type metadata accessor for StateOfMindEntryModel.Configuration);
}

uint64_t StateOfMindEntryModel.date.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();
}

uint64_t sub_258A18B34()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();
}

uint64_t sub_258A18BB0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_258B00084();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  swift_getKeyPath();
  swift_getKeyPath();
  v10(v7, v9, v3);

  sub_258B00574();
  return (*(v4 + 8))(v9, v3);
}

uint64_t StateOfMindEntryModel.date.setter(uint64_t a1)
{
  v2 = sub_258B00084();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  (*(v3 + 16))(v5, a1, v2);

  sub_258B00574();
  return (*(v3 + 8))(a1, v2);
}

void (*StateOfMindEntryModel.date.modify(uint64_t *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_258B00554();
  return sub_258A23444;
}

void (*StateOfMindEntryModel.$date.modify(uint64_t *a1))(uint64_t, char)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  sub_258A1E348(0, &qword_27F96E6C0, MEMORY[0x277CC9578], MEMORY[0x277CBCEC0]);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC14MentalHealthUI21StateOfMindEntryModel__date;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  sub_258A1E348(0, &qword_27F96E6B8, MEMORY[0x277CC9578], MEMORY[0x277CBCED0]);
  v5[16] = v11;
  sub_258B00534();
  swift_endAccess();
  return sub_258A23448;
}

uint64_t StateOfMindEntryModel.reflectiveInterval.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  return v1;
}

uint64_t sub_258A19170@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  *a2 = v4;
  return result;
}

uint64_t sub_258A191F0(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_258B00574();
}

uint64_t StateOfMindEntryModel.reflectiveInterval.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_258B00574();
}

void (*StateOfMindEntryModel.reflectiveInterval.modify(uint64_t *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_258B00554();
  return sub_258A23444;
}

void (*StateOfMindEntryModel.$reflectiveInterval.modify(uint64_t *a1))(uint64_t, char)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  sub_258A1E348(0, &qword_27F96E6D8, type metadata accessor for __HKStateOfMindReflectiveInterval, MEMORY[0x277CBCEC0]);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC14MentalHealthUI21StateOfMindEntryModel__reflectiveInterval;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  sub_258A1E348(0, &qword_27F96E6D0, type metadata accessor for __HKStateOfMindReflectiveInterval, MEMORY[0x277CBCED0]);
  v5[16] = v11;
  sub_258B00534();
  swift_endAccess();
  return sub_258A23448;
}

void (*StateOfMindEntryModel.valence.modify(uint64_t *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_258B00554();
  return sub_258A23444;
}

uint64_t sub_258A19670(void *a1, unint64_t *a2, uint64_t a3)
{
  swift_beginAccess();
  sub_258A22F34(0, a2, a3, MEMORY[0x277CBCED0]);
  sub_258B00534();
  return swift_endAccess();
}

uint64_t sub_258A19700(void *a1, uint64_t a2, uint64_t a3, void *a4, unint64_t *a5, uint64_t a6)
{
  swift_beginAccess();
  sub_258A22F34(0, a5, a6, MEMORY[0x277CBCED0]);
  sub_258B00534();
  return swift_endAccess();
}

uint64_t sub_258A19794(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t a6, void *a7, unint64_t *a8)
{
  v20 = a8;
  sub_258A22F34(0, a5, a6, MEMORY[0x277CBCEC0]);
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v20 - v16;
  v18 = *(v12 + 16);
  v18(&v20 - v16, a1, v11);
  v18(v15, v17, v11);
  swift_beginAccess();
  sub_258A22F34(0, v20, a6, MEMORY[0x277CBCED0]);
  sub_258B00544();
  swift_endAccess();
  return (*(v12 + 8))(v17, v11);
}

uint64_t sub_258A1996C(uint64_t a1, unint64_t *a2, uint64_t a3, void *a4, unint64_t *a5)
{
  sub_258A22F34(0, a2, a3, MEMORY[0x277CBCEC0]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  (*(v10 + 16))(&v13 - v11, a1, v9);
  swift_beginAccess();
  sub_258A22F34(0, a5, a3, MEMORY[0x277CBCED0]);
  sub_258B00544();
  swift_endAccess();
  return (*(v10 + 8))(a1, v9);
}

void (*StateOfMindEntryModel.$valence.modify(uint64_t *a1))(uint64_t, char)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  sub_258A22F34(0, &qword_27F96E6E8, MEMORY[0x277D839F8], MEMORY[0x277CBCEC0]);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC14MentalHealthUI21StateOfMindEntryModel__valence;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  sub_258A22F34(0, &qword_27F96E6E0, MEMORY[0x277D839F8], MEMORY[0x277CBCED0]);
  v5[16] = v11;
  sub_258B00534();
  swift_endAccess();
  return sub_258A23448;
}

void (*StateOfMindEntryModel.labels.modify(uint64_t *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_258B00554();
  return sub_258A23444;
}

void (*StateOfMindEntryModel.$labels.modify(uint64_t *a1))(uint64_t, char)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  sub_258A1E348(0, &qword_27F96E6F8, sub_258A1E3AC, MEMORY[0x277CBCEC0]);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC14MentalHealthUI21StateOfMindEntryModel__labels;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  sub_258A1E348(0, &qword_27F96E6F0, sub_258A1E3AC, MEMORY[0x277CBCED0]);
  v5[16] = v11;
  sub_258B00534();
  swift_endAccess();
  return sub_258A23448;
}

uint64_t sub_258A19F34(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  return v3;
}

uint64_t sub_258A19FB4@<X0>(void *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  *a4 = v6;
  return result;
}

uint64_t sub_258A1A044(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B003E4();

  return sub_258B00574();
}

void (*StateOfMindEntryModel.domains.modify(uint64_t *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_258B00554();
  return sub_258A23444;
}

uint64_t sub_258A1A188(void *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  swift_beginAccess();
  sub_258A1E348(0, a2, a3, MEMORY[0x277CBCED0]);
  sub_258B00534();
  return swift_endAccess();
}

uint64_t sub_258A1A218(void *a1, uint64_t a2, uint64_t a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t))
{
  swift_beginAccess();
  sub_258A1E348(0, a5, a6, MEMORY[0x277CBCED0]);
  sub_258B00534();
  return swift_endAccess();
}

uint64_t sub_258A1A2AC(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t (*a6)(uint64_t), void *a7, unint64_t *a8)
{
  v20 = a8;
  sub_258A1E348(0, a5, a6, MEMORY[0x277CBCEC0]);
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v20 - v16;
  v18 = *(v12 + 16);
  v18(&v20 - v16, a1, v11);
  v18(v15, v17, v11);
  swift_beginAccess();
  sub_258A1E348(0, v20, a6, MEMORY[0x277CBCED0]);
  sub_258B00544();
  swift_endAccess();
  return (*(v12 + 8))(v17, v11);
}

uint64_t sub_258A1A490(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), void *a4, unint64_t *a5)
{
  sub_258A1E348(0, a2, a3, MEMORY[0x277CBCEC0]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  (*(v10 + 16))(&v13 - v11, a1, v9);
  swift_beginAccess();
  sub_258A1E348(0, a5, a3, MEMORY[0x277CBCED0]);
  sub_258B00544();
  swift_endAccess();
  return (*(v10 + 8))(a1, v9);
}

void (*StateOfMindEntryModel.$domains.modify(uint64_t *a1))(uint64_t, char)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  sub_258A1E348(0, &qword_27F96E708, sub_258A0AFC8, MEMORY[0x277CBCEC0]);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC14MentalHealthUI21StateOfMindEntryModel__domains;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  sub_258A1E348(0, &qword_27F96E700, sub_258A0AFC8, MEMORY[0x277CBCED0]);
  v5[16] = v11;
  sub_258B00534();
  swift_endAccess();
  return sub_258A23448;
}

uint64_t StateOfMindEntryModel.context.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  return v1;
}

uint64_t sub_258A1A81C@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_258A1A89C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B003E4();

  sub_258B00574();
  return sub_258A1A924();
}

uint64_t sub_258A1A924()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  v0 = sub_258B02B84();

  if (v0 >= 61)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_258B00564();

    v2 = sub_258A2095C(60, v9, v10);
    v4 = v3;
    v6 = v5;
    v8 = v7;

    MEMORY[0x259C93160](v2, v4, v6, v8);

    swift_getKeyPath();
    swift_getKeyPath();

    sub_258B00574();
    return sub_258A1A924();
  }

  return result;
}

void (*StateOfMindEntryModel.context.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  v5 = v4[3];
  *v4 = v4[2];
  v4[1] = v5;
  return sub_258A1AB5C;
}

void sub_258A1AB5C(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = **a1;
  v5 = (*a1)[1];
  swift_getKeyPath();
  swift_getKeyPath();
  v3[2] = v4;
  v3[3] = v5;

  if (a2)
  {
    sub_258B003E4();
    sub_258B00574();
    sub_258A1A924();
  }

  else
  {
    sub_258B00574();
    sub_258A1A924();
  }

  free(v3);
}

void (*StateOfMindEntryModel.$context.modify(uint64_t *a1))(uint64_t, char)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  sub_258A22F34(0, &qword_27F96E718, MEMORY[0x277D837D0], MEMORY[0x277CBCEC0]);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC14MentalHealthUI21StateOfMindEntryModel__context;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  sub_258A22F34(0, &qword_27F96E710, MEMORY[0x277D837D0], MEMORY[0x277CBCED0]);
  v5[16] = v11;
  sub_258B00534();
  swift_endAccess();
  return sub_258A23448;
}

double sub_258A1AE2C@<D0>(double *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  result = v6;
  *a4 = v6;
  return result;
}

uint64_t sub_258A1AEBC(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_258B00574();
}

void (*StateOfMindEntryModel.effectiveValence.modify(uint64_t *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_258B00554();
  return sub_258A1AFD8;
}

void (*StateOfMindEntryModel.$effectiveValence.modify(uint64_t *a1))(uint64_t, char)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  sub_258A22F34(0, &qword_27F96E6E8, MEMORY[0x277D839F8], MEMORY[0x277CBCEC0]);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC14MentalHealthUI21StateOfMindEntryModel__effectiveValence;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  sub_258A22F34(0, &qword_27F96E6E0, MEMORY[0x277D839F8], MEMORY[0x277CBCED0]);
  v5[16] = v11;
  sub_258B00534();
  swift_endAccess();
  return sub_258A1B1BC;
}

uint64_t sub_258A1B1C0(uint64_t a1)
{
  v34[1] = *MEMORY[0x277D85DE8];
  v2 = sub_258B00384();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v33 - v7;
  v9 = [objc_allocWithZone(MEMORY[0x277CCD438]) initWithFeatureIdentifier:*MEMORY[0x277CCC100] healthStore:a1];
  v34[0] = 0;
  v10 = [v9 featureOnboardingRecordWithError_];
  if (v10)
  {
    v11 = v10;
    v12 = v34[0];
    sub_258B00364();
    v13 = sub_258B00374();
    v14 = sub_258B02EA4();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v33[0] = v2;
      v17 = v16;
      v34[0] = v16;
      *v15 = 136446210;
      v18 = sub_258B035A4();
      v20 = sub_2589F1F78(v18, v19, v34);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_2589A1000, v13, v14, "[%{public}s]: Retrieved onboarding record", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x259C945C0](v17, -1, -1);
      MEMORY[0x259C945C0](v15, -1, -1);

      (*(v3 + 8))(v8, v33[0]);
    }

    else
    {

      (*(v3 + 8))(v8, v2);
    }

    v31 = [v11 isOnboardingPresent];
  }

  else
  {
    v21 = v34[0];
    v22 = sub_258AFFDC4();

    swift_willThrow();
    sub_258B00364();
    v23 = sub_258B00374();
    v24 = sub_258B02E84();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v33[0] = v2;
      v27 = v26;
      v34[0] = v26;
      *v25 = 136446210;
      v28 = sub_258B035A4();
      v30 = sub_2589F1F78(v28, v29, v34);

      *(v25 + 4) = v30;
      _os_log_impl(&dword_2589A1000, v23, v24, "[%{public}s]: Error checking state of mind onboarding record", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x259C945C0](v27, -1, -1);
      MEMORY[0x259C945C0](v25, -1, -1);

      (*(v3 + 8))(v6, v33[0]);
    }

    else
    {

      (*(v3 + 8))(v6, v2);
    }

    return 1;
  }

  return v31;
}

id sub_258A1B590()
{
  v1 = OBJC_IVAR____TtC14MentalHealthUI21StateOfMindEntryModel____lazy_storage___eventSubmissionManager;
  v2 = *(v0 + OBJC_IVAR____TtC14MentalHealthUI21StateOfMindEntryModel____lazy_storage___eventSubmissionManager);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC14MentalHealthUI21StateOfMindEntryModel____lazy_storage___eventSubmissionManager);
  }

  else
  {
    v4 = HKLogMentalHealthCategory();
    v5 = [objc_allocWithZone(MEMORY[0x277CCCFE8]) initWithLoggingCategory:v4 healthDataSource:*(v0 + 16)];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void *StateOfMindEntryModel.__allocating_init(healthStore:configuration:onSampleSave:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_allocObject();
  v8 = sub_258A20C0C(a1, a2, a3, a4);

  return v8;
}

void *StateOfMindEntryModel.init(healthStore:configuration:onSampleSave:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_258A20C0C(a1, a2, a3, a4);

  return v5;
}

void *StateOfMindEntryModel.__allocating_init(healthStore:date:reflectiveInterval:valence:labels:domains:context:parentSampleUUID:onSampleSave:)(void *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10, uint64_t a11)
{
  v42 = a8;
  v43 = a5;
  v44 = a6;
  v45 = a7;
  v41 = a4;
  v39 = a2;
  v37 = a3;
  v38 = a10;
  v46 = a11;
  v47 = a1;
  v13 = sub_258B00084();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v36 - v18;
  sub_258A1DF54(0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for StateOfMindEntryModel.Configuration(0);
  v24 = (v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v36 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_258A1DF54;
  sub_258A1E280(a8, v22, sub_258A1DF54);
  sub_258B00074();
  v27 = v24[8];
  v28 = sub_258B000C4();
  (*(*(v28 - 8) + 56))(&v26[v27], 1, 1, v28);
  v29 = &v26[v24[9]];
  v26[v24[10]] = 13;
  v26[v24[11]] = 7;
  *v26 = v37;
  v26[8] = 0;
  sub_258A1DF88(v22, &v26[v27]);
  *v29 = 0;
  *(v29 + 1) = 0;
  swift_allocObject();
  v30 = v46;

  v31 = sub_258A20C0C(v47, v26, v38, v30);

  v32 = *(v14 + 16);
  v33 = v39;
  v32(v19, v39, v13);
  swift_getKeyPath();
  swift_getKeyPath();
  v32(v17, v19, v13);
  swift_retain_n();
  sub_258B00574();
  v34 = *(v14 + 8);
  v34(v19, v13);
  swift_getKeyPath();
  swift_getKeyPath();
  v48 = a9;

  sub_258B00574();
  swift_getKeyPath();
  swift_getKeyPath();
  v48 = *&v41;

  sub_258B00574();
  swift_getKeyPath();
  swift_getKeyPath();
  v48 = *&v43;

  sub_258B00574();
  swift_getKeyPath();
  swift_getKeyPath();
  v48 = *&v44;
  v49 = v45;

  sub_258B00574();
  sub_258A1A924();

  sub_258A1E2E8(v42, v40);
  v34(v33, v13);
  return v31;
}

uint64_t static StateOfMindEntryModel.Configuration.InitialReflectiveInterval.explicit(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_258A1BB58()
{
  v0 = sub_258B00084();
  MEMORY[0x28223BE20](v0 - 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  v1 = *(v3 + 16);

  if (v1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_258B00564();
  }

  sub_2589F4488(0, &qword_27F96D8A0, 0x277CCDA30);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  sub_258AD6068(MEMORY[0x277D84F90]);
  return sub_258B02E34();
}

uint64_t sub_258A1BE40(uint64_t a1)
{
  v2[36] = a1;
  v2[37] = v1;
  v2[38] = *v1;
  v3 = sub_258B00384();
  v2[39] = v3;
  v2[40] = *(v3 - 8);
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();
  sub_258A1DF54(0);
  v2[43] = swift_task_alloc();
  v4 = sub_258B000C4();
  v2[44] = v4;
  v2[45] = *(v4 - 8);
  v2[46] = swift_task_alloc();
  v2[47] = swift_task_alloc();
  sub_258B02D24();
  v2[48] = sub_258B02D14();
  v6 = sub_258B02CE4();
  v2[49] = v6;
  v2[50] = v5;

  return MEMORY[0x2822009F8](sub_258A1BFFC, v6, v5);
}

uint64_t sub_258A1BFFC()
{
  v1 = v0[36];
  v2 = *(v0[37] + 16);
  v0[51] = v2;
  sub_258A22F34(0, &qword_27F970720, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_258B2E600;
  *(v3 + 32) = v1;
  sub_2589F4488(0, &qword_27F96E840, 0x277CCD6F0);
  v4 = v1;
  v5 = sub_258B02C64();
  v0[52] = v5;

  v0[2] = v0;
  v0[3] = sub_258A1C1AC;
  v6 = swift_continuation_init();
  sub_258A22D48(0);
  v0[53] = v7;
  v0[25] = v7;
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_258A1E718;
  v0[21] = &block_descriptor_90;
  v0[22] = v6;
  [v2 saveObjects:v5 skipInsertionFilter:1 completion:v0 + 18];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_258A1C1AC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 432) = v2;
  v3 = *(v1 + 400);
  v4 = *(v1 + 392);
  if (v2)
  {
    v5 = sub_258A1C9A8;
  }

  else
  {
    v5 = sub_258A1C2DC;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_258A1C2DC()
{
  v1 = swift_task_alloc();
  *(v0 + 440) = v1;
  *v1 = v0;
  v1[1] = sub_258A1C37C;
  v2 = *(v0 + 344);

  return sub_258A1E7C4(v2);
}

uint64_t sub_258A1C37C()
{
  v1 = *v0;

  v2 = *(v1 + 400);
  v3 = *(v1 + 392);

  return MEMORY[0x2822009F8](sub_258A1C49C, v3, v2);
}

uint64_t sub_258A1C49C()
{
  v1 = v0[44];
  v2 = v0[45];
  v3 = v0[43];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {

    sub_258A1E2E8(v3, sub_258A1DF54);
    (*(v0[37] + OBJC_IVAR____TtC14MentalHealthUI21StateOfMindEntryModel_didSaveSample))(v0[36]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    v15 = v0[53];
    v16 = v0[51];
    v6 = v0[46];
    v7 = v0[36];
    v8 = *(v2 + 32);
    v8(v0[47], v3, v1);
    sub_258A1E348(0, &qword_27F96E848, MEMORY[0x277CC95F0], MEMORY[0x277D84560]);
    v9 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_258B2C470;
    v11 = [v7 UUID];
    sub_258B000B4();

    v8(v10 + v9, v6, v1);
    v12 = sub_258B02C64();
    v0[56] = v12;

    v13 = sub_258B00094();
    v0[57] = v13;
    v0[10] = v0;
    v0[11] = sub_258A1C794;
    v14 = swift_continuation_init();
    v0[33] = v15;
    v0[26] = MEMORY[0x277D85DD0];
    v0[27] = 1107296256;
    v0[28] = sub_258A1E718;
    v0[29] = &block_descriptor_94;
    v0[30] = v14;
    [v16 associateSampleUUIDs:v12 withSampleUUID:v13 completion:?];

    return MEMORY[0x282200938](v0 + 10);
  }
}

uint64_t sub_258A1C794()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 464) = v2;
  v3 = *(v1 + 400);
  v4 = *(v1 + 392);
  if (v2)
  {
    v5 = sub_258A1CC14;
  }

  else
  {
    v5 = sub_258A1C8C4;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_258A1C8C4()
{
  v2 = v0[56];
  v1 = v0[57];
  v3 = v0[47];
  v4 = v0[44];
  v5 = v0[45];

  (*(v5 + 8))(v3, v4);

  (*(v0[37] + OBJC_IVAR____TtC14MentalHealthUI21StateOfMindEntryModel_didSaveSample))(v0[36]);

  v6 = v0[1];

  return v6();
}

uint64_t sub_258A1C9A8()
{
  v26 = v0;
  v1 = v0[54];
  v2 = v0[52];

  swift_willThrow();

  sub_258B00364();
  v3 = v1;
  v4 = sub_258B00374();
  v5 = sub_258B02E84();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[54];
    v24 = v0[42];
    v8 = v0[39];
    v7 = v0[40];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v25[0] = v10;
    *v9 = 136446466;
    v11 = sub_258B035A4();
    v13 = sub_2589F1F78(v11, v12, v25);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    v0[34] = v6;
    v14 = v6;
    sub_2589F3AFC();
    v15 = sub_258B02B44();
    v17 = sub_2589F1F78(v15, v16, v25);

    *(v9 + 14) = v17;
    _os_log_impl(&dword_2589A1000, v4, v5, "[%{public}s] Failed to save sample: %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C945C0](v10, -1, -1);
    MEMORY[0x259C945C0](v9, -1, -1);

    (*(v7 + 8))(v24, v8);
  }

  else
  {
    v18 = v0[42];
    v19 = v0[39];
    v20 = v0[40];

    (*(v20 + 8))(v18, v19);
  }

  v21 = v0[54];
  sub_258A16CF4(8, 0);

  v22 = v0[1];

  return v22();
}

uint64_t sub_258A1CC14()
{
  v29 = v0;
  v2 = *(v0 + 456);
  v1 = *(v0 + 464);
  v3 = *(v0 + 448);
  v4 = *(v0 + 376);
  v5 = *(v0 + 352);
  v6 = *(v0 + 360);

  swift_willThrow();
  (*(v6 + 8))(v4, v5);

  sub_258B00364();
  v7 = v1;
  v8 = sub_258B00374();
  v9 = sub_258B02E84();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 464);
    v11 = *(v0 + 320);
    v27 = *(v0 + 328);
    v12 = *(v0 + 312);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v28[0] = v14;
    *v13 = 136446466;
    v15 = sub_258B035A4();
    v17 = sub_2589F1F78(v15, v16, v28);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    *(v0 + 280) = v10;
    v18 = v10;
    sub_2589F3AFC();
    v19 = sub_258B02B44();
    v21 = sub_2589F1F78(v19, v20, v28);

    *(v13 + 14) = v21;
    _os_log_impl(&dword_2589A1000, v8, v9, "[%{public}s] Failed to save association: %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C945C0](v14, -1, -1);
    MEMORY[0x259C945C0](v13, -1, -1);

    (*(v11 + 8))(v27, v12);
  }

  else
  {
    v23 = *(v0 + 320);
    v22 = *(v0 + 328);
    v24 = *(v0 + 312);

    (*(v23 + 8))(v22, v24);
  }

  (*(*(v0 + 296) + OBJC_IVAR____TtC14MentalHealthUI21StateOfMindEntryModel_didSaveSample))(*(v0 + 288));

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_258A1CEB0()
{
  v1[19] = v0;
  v1[20] = *v0;
  v2 = sub_258B00384();
  v1[21] = v2;
  v1[22] = *(v2 - 8);
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v3 = sub_258B00084();
  v1[25] = v3;
  v1[26] = *(v3 - 8);
  v1[27] = swift_task_alloc();
  sub_258B02D24();
  v1[28] = sub_258B02D14();
  v5 = sub_258B02CE4();
  v1[29] = v5;
  v1[30] = v4;

  return MEMORY[0x2822009F8](sub_258A1D034, v5, v4);
}

uint64_t sub_258A1D034()
{
  if (sub_258A16BE4())
  {
    v2 = v0[26];
    v1 = v0[27];
    v3 = v0[25];
    v4 = *MEMORY[0x277CCC100];
    v5 = [objc_allocWithZone(MEMORY[0x277CCD438]) initWithFeatureIdentifier:*MEMORY[0x277CCC100] healthStore:*(v0[19] + 16)];
    v0[31] = v5;
    sub_258B00044();
    v6 = objc_allocWithZone(MEMORY[0x277CCD740]);
    v7 = sub_258B00014();
    v8 = [v6 initWithFeatureIdentifier:v4 version:1 completionDate:v7 countryCode:0 countryCodeProvenance:0];
    v0[32] = v8;

    (*(v2 + 8))(v1, v3);
    v0[2] = v0;
    v0[3] = sub_258A1D270;
    v9 = swift_continuation_init();
    sub_258A22D48(0);
    v0[17] = v10;
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_258A1E718;
    v0[13] = &block_descriptor_83;
    v0[14] = v9;
    [v5 saveOnboardingCompletion:v8 settings:0 completion:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_258A1D270()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 264) = v2;
  v3 = *(v1 + 240);
  v4 = *(v1 + 232);
  if (v2)
  {
    v5 = sub_258A1D560;
  }

  else
  {
    v5 = sub_258A1D3A0;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_258A1D3A0()
{
  v19 = v0;

  sub_258B00364();
  v1 = sub_258B00374();
  v2 = sub_258B02EA4();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[31];
  v5 = v0[32];
  v6 = v0[24];
  v7 = v0[21];
  v8 = v0[22];
  if (v3)
  {
    v17 = v0[21];
    v16 = v0[24];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136446210;
    v11 = sub_258B035A4();
    v13 = sub_2589F1F78(v11, v12, &v18);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_2589A1000, v1, v2, "[%{public}s]: Successfully saved onboarding record", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x259C945C0](v10, -1, -1);
    MEMORY[0x259C945C0](v9, -1, -1);

    (*(v8 + 8))(v16, v17);
  }

  else
  {

    (*(v8 + 8))(v6, v7);
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_258A1D560()
{
  v28 = v0;
  v1 = *(v0 + 264);

  swift_willThrow();
  sub_258B00364();
  v2 = v1;
  v3 = sub_258B00374();
  v4 = sub_258B02E84();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 256);
    v6 = *(v0 + 264);
    v7 = *(v0 + 176);
    v26 = *(v0 + 184);
    v24 = *(v0 + 248);
    v25 = *(v0 + 168);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v27[0] = v9;
    *v8 = 136446466;
    v10 = sub_258B035A4();
    v12 = sub_2589F1F78(v10, v11, v27);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2082;
    *(v0 + 144) = v6;
    v13 = v6;
    sub_2589F3AFC();
    v14 = sub_258B02B44();
    v16 = sub_2589F1F78(v14, v15, v27);

    *(v8 + 14) = v16;
    _os_log_impl(&dword_2589A1000, v3, v4, "[%{public}s]: Error saving onboarding record: %{public}s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C945C0](v9, -1, -1);
    MEMORY[0x259C945C0](v8, -1, -1);

    (*(v7 + 8))(v26, v25);
  }

  else
  {
    v17 = *(v0 + 264);
    v18 = *(v0 + 248);
    v20 = *(v0 + 176);
    v19 = *(v0 + 184);
    v21 = *(v0 + 168);

    (*(v20 + 8))(v19, v21);
  }

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_258A1D7C4()
{
  v1[19] = v0;
  v1[20] = *v0;
  v2 = sub_258B00384();
  v1[21] = v2;
  v1[22] = *(v2 - 8);
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  sub_258B02D24();
  v1[25] = sub_258B02D14();
  v4 = sub_258B02CE4();
  v1[26] = v4;
  v1[27] = v3;

  return MEMORY[0x2822009F8](sub_258A1D8EC, v4, v3);
}

uint64_t sub_258A1D8EC()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CCD6A8]) initWithHealthStore_];
  v0[28] = v1;
  v0[2] = v0;
  v0[3] = sub_258A1DA20;
  v2 = swift_continuation_init();
  sub_258A22D48(0);
  v0[17] = v3;
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_258A1E718;
  v0[13] = &block_descriptor_4;
  v0[14] = v2;
  [v1 forceNanoSyncWithOptions:0 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_258A1DA20()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 232) = v2;
  v3 = *(v1 + 216);
  v4 = *(v1 + 208);
  if (v2)
  {
    v5 = sub_258A1DCF4;
  }

  else
  {
    v5 = sub_258A1DB50;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_258A1DB50()
{
  v17 = v0;

  sub_258B00364();
  v1 = sub_258B00374();
  v2 = sub_258B02EA4();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[28];
  v5 = v0[24];
  v6 = v0[21];
  v7 = v0[22];
  if (v3)
  {
    v15 = v0[24];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136446210;
    v10 = sub_258B035A4();
    v12 = sub_2589F1F78(v10, v11, &v16);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_2589A1000, v1, v2, "[%{public}s] Successfully completed nano sync", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x259C945C0](v9, -1, -1);
    MEMORY[0x259C945C0](v8, -1, -1);

    (*(v7 + 8))(v15, v6);
  }

  else
  {

    (*(v7 + 8))(v5, v6);
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_258A1DCF4()
{
  v26 = v0;
  v1 = *(v0 + 232);

  swift_willThrow();
  sub_258B00364();
  v2 = v1;
  v3 = sub_258B00374();
  v4 = sub_258B02E84();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 224);
    v6 = *(v0 + 232);
    v7 = *(v0 + 176);
    v23 = *(v0 + 168);
    v24 = *(v0 + 184);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v25[0] = v9;
    *v8 = 136446466;
    v10 = sub_258B035A4();
    v12 = sub_2589F1F78(v10, v11, v25);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2082;
    *(v0 + 144) = v6;
    v13 = v6;
    sub_2589F3AFC();
    v14 = sub_258B02B44();
    v16 = sub_2589F1F78(v14, v15, v25);

    *(v8 + 14) = v16;
    _os_log_impl(&dword_2589A1000, v3, v4, "[%{public}s] Nano sync finished with error: %{public}s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C945C0](v9, -1, -1);
    MEMORY[0x259C945C0](v8, -1, -1);

    (*(v7 + 8))(v24, v23);
  }

  else
  {
    v17 = *(v0 + 232);
    v19 = *(v0 + 176);
    v18 = *(v0 + 184);
    v20 = *(v0 + 168);

    (*(v19 + 8))(v18, v20);
  }

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_258A1DF88(uint64_t a1, uint64_t a2)
{
  sub_258A1DF54(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_258A1DFEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F96E650;
  if (!qword_27F96E650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96E650);
  }

  return result;
}

unint64_t sub_258A1E040(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F96E658;
  if (!qword_27F96E658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96E658);
  }

  return result;
}

unint64_t sub_258A1E094(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F96E670;
  if (!qword_27F96E670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96E670);
  }

  return result;
}

unint64_t sub_258A1E0E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F96E678;
  if (!qword_27F96E678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96E678);
  }

  return result;
}

unint64_t sub_258A1E13C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F96E688;
  if (!qword_27F96E688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96E688);
  }

  return result;
}

uint64_t sub_258A1E190(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_258A1E1D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F96E6A0;
  if (!qword_27F96E6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96E6A0);
  }

  return result;
}

unint64_t sub_258A1E22C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F96E6A8;
  if (!qword_27F96E6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96E6A8);
  }

  return result;
}

uint64_t sub_258A1E280(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258A1E2E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_258A1E348(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_258A1E3E0(char a1, void *a2, uint64_t a3)
{
  v5 = sub_258B00384();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v35 - v10;
  if (a1)
  {
    sub_258B00364();
    v12 = sub_258B00374();
    v13 = sub_258B02E64();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v36 = v15;
      *v14 = 136446210;
      v16 = sub_258B035A4();
      v18 = sub_2589F1F78(v16, v17, &v36);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_2589A1000, v12, v13, "[%{public}s] Successfully submitted analytics", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x259C945C0](v15, -1, -1);
      MEMORY[0x259C945C0](v14, -1, -1);
    }

    v19 = *(v6 + 8);
    v20 = v11;
    goto LABEL_9;
  }

  sub_258B00364();
  v21 = a2;
  v22 = sub_258B00374();
  v23 = sub_258B02E84();

  if (!os_log_type_enabled(v22, v23))
  {

    v19 = *(v6 + 8);
    v20 = v9;
LABEL_9:
    v33 = v5;
    return v19(v20, v33);
  }

  v35 = v5;
  v24 = swift_slowAlloc();
  v25 = swift_slowAlloc();
  v26 = swift_slowAlloc();
  v36 = v26;
  *v24 = 136446466;
  v27 = sub_258B035A4();
  v29 = sub_2589F1F78(v27, v28, &v36);

  *(v24 + 4) = v29;
  *(v24 + 12) = 2112;
  if (a2)
  {
    v30 = a2;
    v31 = _swift_stdlib_bridgeErrorToNSError();
    v32 = v31;
  }

  else
  {
    v31 = 0;
    v32 = 0;
  }

  *(v24 + 14) = v31;
  *v25 = v32;
  _os_log_impl(&dword_2589A1000, v22, v23, "[%{public}s] Failed to submit analytics with error: %@", v24, 0x16u);
  sub_258A22E44(v25);
  MEMORY[0x259C945C0](v25, -1, -1);
  __swift_destroy_boxed_opaque_existential_1(v26);
  MEMORY[0x259C945C0](v26, -1, -1);
  MEMORY[0x259C945C0](v24, -1, -1);

  v19 = *(v6 + 8);
  v20 = v9;
  v33 = v35;
  return v19(v20, v33);
}

uint64_t sub_258A1E718(uint64_t a1, int a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a2)
  {
    v5 = *v5;

    return MEMORY[0x282200950](v5);
  }

  if (!a3)
  {
    __break(1u);
    return MEMORY[0x282200950](v5);
  }

  sub_2589F3AFC();
  v7 = swift_allocError();
  *v8 = a3;
  v9 = a3;

  return MEMORY[0x282200958](v6, v7);
}

uint64_t sub_258A1E7C4(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v2[8] = *v1;
  v3 = sub_258B00384();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  sub_258A22ECC(0, &qword_27F96E850, &qword_27F96E858, 0x277CCD8A8, MEMORY[0x277CCB610]);
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();
  sub_258B02D24();
  v2[16] = sub_258B02D14();
  v6 = sub_258B02CE4();
  v2[17] = v6;
  v2[18] = v5;

  return MEMORY[0x2822009F8](sub_258A1E974, v6, v5);
}

uint64_t sub_258A1E974()
{
  v1 = v0[7] + OBJC_IVAR____TtC14MentalHealthUI21StateOfMindEntryModel_configuration;
  swift_beginAccess();
  v2 = type metadata accessor for StateOfMindEntryModel.Configuration(0);
  if (*(v1 + *(v2 + 28) + 8))
  {
    v20 = v0[7];
    v3 = objc_opt_self();
    v4 = *MEMORY[0x277D28010];
    sub_258B003E4();
    v5 = v4;
    v6 = sub_258B02AD4();

    v7 = [v3 predicateForObjectsWithMetadataKey:v5 operatorType:4 value:v6];
    v0[19] = v7;

    v8 = MEMORY[0x277CCB570];
    sub_258A22F84(0, &qword_27F96E860, &qword_27F96E868, MEMORY[0x277CCB570]);
    sub_258A22ECC(0, &qword_27F96E868, &qword_27F96E858, 0x277CCD8A8, v8);
    *(swift_allocObject() + 16) = xmmword_258B2C470;
    sub_2589F4488(0, &qword_27F96E870, 0x277CCD0C0);
    v9 = MEMORY[0x259C934C0](*MEMORY[0x277CCBA30]);
    sub_2589F4488(0, &qword_27F96E858, 0x277CCD8A8);
    v10 = v7;
    sub_258B028E4();

    v11 = MEMORY[0x277CC89F0];
    sub_258A22F84(0, &qword_27F96E878, &qword_27F96E880, MEMORY[0x277CC89F0]);
    sub_258A22ECC(0, &qword_27F96E880, &qword_27F96E858, 0x277CCD8A8, v11);
    *(swift_allocObject() + 16) = xmmword_258B2C470;
    KeyPath = swift_getKeyPath();
    MEMORY[0x259C90380](KeyPath, 1);
    sub_258B028F4();
    v13 = *(v20 + 16);
    v14 = swift_task_alloc();
    v0[20] = v14;
    *v14 = v0;
    v14[1] = sub_258A1EDB4;
    v15 = v0[13];

    return MEMORY[0x282120380](v13, v15);
  }

  else
  {
    v16 = v2;
    v17 = v0[6];

    sub_258A1E280(v1 + *(v16 + 24), v17, sub_258A1DF54);

    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_258A1EDB4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 168) = a1;
  *(v4 + 176) = v1;

  v5 = *(v3 + 144);
  v6 = *(v3 + 136);
  if (v1)
  {
    v7 = sub_258A1F244;
  }

  else
  {
    v7 = sub_258A1EEF8;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_258A1EEF8()
{
  v34 = v0;
  v1 = v0[21];

  if (v1 >> 62)
  {
    result = sub_258B032B4();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:

    sub_258B00364();
    v11 = sub_258B00374();
    v12 = sub_258B02E84();
    v13 = os_log_type_enabled(v11, v12);
    v14 = v0[19];
    v15 = v0[14];
    v16 = v0[15];
    v18 = v0[12];
    v17 = v0[13];
    v20 = v0[9];
    v19 = v0[10];
    if (v13)
    {
      v31 = v0[12];
      v32 = v0[13];
      v21 = swift_slowAlloc();
      v30 = v14;
      v22 = swift_slowAlloc();
      v33 = v22;
      *v21 = 136446210;
      v23 = sub_258B035A4();
      v29 = v16;
      v25 = sub_2589F1F78(v23, v24, &v33);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_2589A1000, v11, v12, "[%{public}s] Unable to find associated Fitness+ meditation session sample", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x259C945C0](v22, -1, -1);
      MEMORY[0x259C945C0](v21, -1, -1);

      (*(v19 + 8))(v31, v20);
      (*(v15 + 8))(v29, v32);
    }

    else
    {

      (*(v19 + 8))(v18, v20);
      (*(v15 + 8))(v16, v17);
    }

    v26 = v0[6];
    v27 = sub_258B000C4();
    (*(*(v27 - 8) + 56))(v26, 1, 1, v27);
    goto LABEL_12;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x259C937C0](0, v0[21]);
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v0[21] + 32);
  }

  v4 = v0[19];
  v6 = v0[14];
  v5 = v0[15];
  v7 = v0[13];
  v8 = v0[6];

  v9 = [v3 UUID];
  sub_258B000B4();

  (*(v6 + 8))(v5, v7);
  v10 = sub_258B000C4();
  (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
LABEL_12:

  v28 = v0[1];

  return v28();
}

uint64_t sub_258A1F244()
{
  v35 = v0;
  v1 = v0[22];

  sub_258B00364();
  v2 = v1;
  v3 = sub_258B00374();
  v4 = sub_258B02E84();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[22];
    v6 = v0[14];
    v32 = v0[13];
    v33 = v0[15];
    v7 = v0[10];
    v30 = v0[19];
    v31 = v0[11];
    v29 = v0[9];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v34 = v9;
    *v8 = 136446466;
    v10 = sub_258B035A4();
    v12 = sub_2589F1F78(v10, v11, &v34);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    v0[5] = v5;
    v13 = v5;
    sub_2589F3AFC();
    v14 = sub_258B02B44();
    v16 = sub_2589F1F78(v14, v15, &v34);

    *(v8 + 14) = v16;
    _os_log_impl(&dword_2589A1000, v3, v4, "[%{public}s] Error querying find associated samples: %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C945C0](v9, -1, -1);
    MEMORY[0x259C945C0](v8, -1, -1);

    (*(v7 + 8))(v31, v29);
    (*(v6 + 8))(v33, v32);
  }

  else
  {
    v17 = v0[22];
    v18 = v0[19];
    v20 = v0[14];
    v19 = v0[15];
    v21 = v0[13];
    v23 = v0[10];
    v22 = v0[11];
    v24 = v0[9];

    (*(v23 + 8))(v22, v24);
    (*(v20 + 8))(v19, v21);
  }

  v25 = v0[6];
  v26 = sub_258B000C4();
  (*(*(v26 - 8) + 56))(v25, 1, 1, v26);

  v27 = v0[1];

  return v27();
}

void sub_258A1F520(id *a1)
{
  v1 = [*a1 startDate];
  sub_258B00034();
}

uint64_t StateOfMindEntryModel.deinit()
{
  sub_258A1E2E8(v0 + OBJC_IVAR____TtC14MentalHealthUI21StateOfMindEntryModel_configuration, type metadata accessor for StateOfMindEntryModel.Configuration);

  v1 = OBJC_IVAR____TtC14MentalHealthUI21StateOfMindEntryModel__date;
  v2 = MEMORY[0x277CBCED0];
  sub_258A1E348(0, &qword_27F96E6B8, MEMORY[0x277CC9578], MEMORY[0x277CBCED0]);
  (*(*(v3 - 8) + 8))(v0 + v1, v3);
  v4 = OBJC_IVAR____TtC14MentalHealthUI21StateOfMindEntryModel__reflectiveInterval;
  sub_258A1E348(0, &qword_27F96E6D0, type metadata accessor for __HKStateOfMindReflectiveInterval, v2);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtC14MentalHealthUI21StateOfMindEntryModel__valence;
  v7 = MEMORY[0x277CBCED0];
  sub_258A22F34(0, &qword_27F96E6E0, MEMORY[0x277D839F8], MEMORY[0x277CBCED0]);
  v9 = v8;
  v10 = *(*(v8 - 8) + 8);
  v10(v0 + v6, v8);
  v11 = OBJC_IVAR____TtC14MentalHealthUI21StateOfMindEntryModel__labels;
  sub_258A1E348(0, &qword_27F96E6F0, sub_258A1E3AC, v2);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  v13 = OBJC_IVAR____TtC14MentalHealthUI21StateOfMindEntryModel__domains;
  sub_258A1E348(0, &qword_27F96E700, sub_258A0AFC8, v2);
  (*(*(v14 - 8) + 8))(v0 + v13, v14);
  v15 = OBJC_IVAR____TtC14MentalHealthUI21StateOfMindEntryModel__context;
  sub_258A22F34(0, &qword_27F96E710, MEMORY[0x277D837D0], v7);
  (*(*(v16 - 8) + 8))(v0 + v15, v16);
  v10(v0 + OBJC_IVAR____TtC14MentalHealthUI21StateOfMindEntryModel__effectiveValence, v9);

  return v0;
}

uint64_t StateOfMindEntryModel.__deallocating_deinit()
{
  StateOfMindEntryModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_258A1F8E0(void *a1, uint64_t a2, int a3)
{
  v39 = a3;
  v37 = a2;
  v4 = MEMORY[0x277D84538];
  sub_258A22C24(0, &qword_27F96E7B8, sub_258A22244, &type metadata for StateOfMindEntryModel.Configuration.InitialReflectiveInterval.Storage.InferredCodingKeys, MEMORY[0x277D84538]);
  v35 = *(v5 - 8);
  v36 = v5;
  MEMORY[0x28223BE20](v5);
  v32 = &v30 - v6;
  sub_258A22C24(0, &qword_27F96E7C8, sub_258A22298, &type metadata for StateOfMindEntryModel.Configuration.InitialReflectiveInterval.Storage.FixedCodingKeys, v4);
  v33 = *(v7 - 8);
  v34 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v30 - v8;
  sub_258A22C24(0, &qword_27F96E7D8, sub_258A222EC, &type metadata for StateOfMindEntryModel.Configuration.InitialReflectiveInterval.Storage.ExplicitCodingKeys, v4);
  v11 = v10;
  v31 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v30 - v12;
  sub_258A22C24(0, &qword_27F96E7E8, sub_258A22340, &type metadata for StateOfMindEntryModel.Configuration.InitialReflectiveInterval.Storage.CodingKeys, v4);
  v38 = v14;
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v30 - v16;
  v18 = __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_258A22340(v18, v19, v20);
  v21 = sub_258B03574();
  if (!v39)
  {
    v26 = v31;
    v40 = 0;
    sub_258A222EC(v21, v22, v23);
    v24 = v38;
    sub_258B033A4();
    sub_258B033D4();
    (*(v26 + 8))(v13, v11);
    return (*(v15 + 8))(v17, v24);
  }

  if (v39 == 1)
  {
    v41 = 1;
    sub_258A22298(v21, v22, v23);
    v24 = v38;
    sub_258B033A4();
    v25 = v34;
    sub_258B033D4();
    (*(v33 + 8))(v9, v25);
    return (*(v15 + 8))(v17, v24);
  }

  v42 = 2;
  sub_258A22244(v21, v22, v23);
  v28 = v32;
  v29 = v38;
  sub_258B033A4();
  (*(v35 + 8))(v28, v36);
  return (*(v15 + 8))(v17, v29);
}

uint64_t sub_258A1FD5C@<X0>(uint64_t *a2@<X8>)
{
  result = sub_258B004E4();
  *a2 = result;
  return result;
}

uint64_t sub_258A1FDAC()
{
  v1 = 0x6465786966;
  if (*v0 != 1)
  {
    v1 = 0x6465727265666E69;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746963696C707865;
  }
}

uint64_t sub_258A1FE04@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_258A2248C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_258A1FE38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_258A22340(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_258A1FE74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_258A22340(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_258A1FEC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_258A222EC(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_258A1FF04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_258A222EC(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_258A1FF40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65756C6156776172 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_258B03454();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_258A1FFC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_258A22298(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_258A20004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_258A22298(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_258A2004C@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_258A2007C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_258A22244(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_258A200B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_258A22244(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_258A200F4@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_258A225A0(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
  }

  return result;
}

uint64_t sub_258A20144(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a2 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = v2 == v3;
  }

  v6 = v5;
  v8 = v4 == 1 && v2 == v3;
  v10 = v4 == 2 && v3 == 0;
  if (*(a1 + 8) != 1)
  {
    v8 = v10;
  }

  if (*(a1 + 8))
  {
    return v8;
  }

  else
  {
    return v6;
  }
}

uint64_t static StateOfMindEntryModel.Configuration.InitialReflectiveInterval.explicitFromKind(_:)@<X0>(uint64_t a1@<X8>)
{
  result = HKStateOfMindReflectiveIntervalFromKind();
  *a1 = result;
  *(a1 + 8) = 0;
  return result;
}

uint64_t static StateOfMindEntryModel.Configuration.InitialReflectiveInterval.fixed(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 1;
  return result;
}

uint64_t static StateOfMindEntryModel.Configuration.InitialReflectiveInterval.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (*(a1 + 8) == 1)
    {
      if (v4 != 1 || v2 != v3)
      {
        return 0;
      }
    }

    else if (v4 != 2 || v3 != 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 8))
    {
      v7 = 0;
    }

    else
    {
      v7 = v2 == v3;
    }

    if (!v7)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_258A2022C()
{
  sub_258B03514();
  MEMORY[0x259C93B20](0);
  return sub_258B03554();
}

uint64_t sub_258A20270(uint64_t a1)
{
  sub_258B03514();
  MEMORY[0x259C93B20](0);
  return sub_258B03554();
}

uint64_t sub_258A202C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656761726F7473 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_258B03454();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_258A20350(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_258A21834(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_258A2038C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_258A21834(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t StateOfMindEntryModel.Configuration.InitialReflectiveInterval.encode(to:)(void *a1)
{
  sub_258A22C24(0, &qword_27F96E738, sub_258A21834, &type metadata for StateOfMindEntryModel.Configuration.InitialReflectiveInterval.CodingKeys, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v10 = __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_258A21834(v10, v11, v12);
  v13 = sub_258B03574();
  v17 = v8;
  v18 = v9;
  sub_258A21888(v13, v14, v15);
  sub_258B033E4();
  return (*(v5 + 8))(v7, v4);
}

uint64_t StateOfMindEntryModel.Configuration.InitialReflectiveInterval.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (!*(v0 + 8) || v2 == 1)
  {
    MEMORY[0x259C93B20]();
    v2 = v1;
  }

  return MEMORY[0x259C93B20](v2);
}

uint64_t StateOfMindEntryModel.Configuration.InitialReflectiveInterval.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_258B03514();
  v3 = v2;
  if (v2 <= 1)
  {
    MEMORY[0x259C93B20]();
    v3 = v1;
  }

  MEMORY[0x259C93B20](v3);
  return sub_258B03554();
}

uint64_t StateOfMindEntryModel.Configuration.InitialReflectiveInterval.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  sub_258A22C24(0, &qword_27F96E750, sub_258A21834, &type metadata for StateOfMindEntryModel.Configuration.InitialReflectiveInterval.CodingKeys, MEMORY[0x277D844C8]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - v7;
  v9 = __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_258A21834(v9, v10, v11);
  v12 = sub_258B03564();
  if (!v2)
  {
    v15 = v20;
    sub_258A218DC(v12, v13, v14);
    sub_258B03384();
    (*(v6 + 8))(v8, v5);
    v16 = v19;
    *v15 = v18;
    *(v15 + 8) = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_258A207C4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_258B03514();
  v3 = v2;
  if (v2 <= 1)
  {
    MEMORY[0x259C93B20]();
    v3 = v1;
  }

  MEMORY[0x259C93B20](v3);
  return sub_258B03554();
}

uint64_t sub_258A2082C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (!*(v0 + 8) || v2 == 1)
  {
    MEMORY[0x259C93B20]();
    v2 = v1;
  }

  return MEMORY[0x259C93B20](v2);
}

uint64_t sub_258A20874(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_258B03514();
  v4 = v3;
  if (v3 <= 1)
  {
    MEMORY[0x259C93B20]();
    v4 = v2;
  }

  MEMORY[0x259C93B20](v4);
  return sub_258B03554();
}

uint64_t sub_258A20908(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (*(a1 + 8) == 1)
    {
      if (v4 != 1 || v2 != v3)
      {
        return 0;
      }
    }

    else if (v4 != 2 || v3 != 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 8))
    {
      v7 = 0;
    }

    else
    {
      v7 = v2 == v3;
    }

    if (!v7)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_258A2095C(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_258B02BA4();

    return sub_258B02C04();
  }

  return result;
}

uint64_t sub_258A209F8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000019 && 0x8000000258B37020 == a2 || (sub_258B03454() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000 || (sub_258B03454() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000258B37040 == a2 || (sub_258B03454() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000258B37060 == a2 || (sub_258B03454() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x696F507972746E65 && a2 == 0xEA0000000000746ELL || (sub_258B03454() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E616E65766F7270 && a2 == 0xEA00000000006563)
  {

    return 5;
  }

  else
  {
    v5 = sub_258B03454();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

void *sub_258A20C0C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v98 = a3;
  v99 = a4;
  v100 = a2;
  v92 = *v4;
  v7 = sub_258B00384();
  v8 = *(v7 - 8);
  v94 = v7;
  v95 = v8;
  v9 = MEMORY[0x28223BE20](v7);
  v90 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v89 = &v88 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v91 = &v88 - v14;
  MEMORY[0x28223BE20](v13);
  v93 = &v88 - v15;
  v16 = sub_258B00084();
  v96 = *(v16 - 8);
  v17 = v96;
  v18 = MEMORY[0x28223BE20](v16);
  v97 = &v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v88 - v20;
  sub_258A22F34(0, &qword_27F96E6E0, MEMORY[0x277D839F8], MEMORY[0x277CBCED0]);
  v23 = v22;
  v24 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v26 = &v88 - v25;
  v27 = OBJC_IVAR____TtC14MentalHealthUI21StateOfMindEntryModel__effectiveValence;
  v103[0] = 0;
  sub_258B00524();
  v28 = v4 + v27;
  v29 = v100;
  (*(v24 + 32))(v28, v26, v23);
  *(v4 + OBJC_IVAR____TtC14MentalHealthUI21StateOfMindEntryModel____lazy_storage___isCompletingFirstTimeFlow) = 2;
  *(v4 + OBJC_IVAR____TtC14MentalHealthUI21StateOfMindEntryModel_hasInitiatedSampleSave) = 0;
  *(v4 + OBJC_IVAR____TtC14MentalHealthUI21StateOfMindEntryModel____lazy_storage___eventSubmissionManager) = 0;
  *(v4 + OBJC_IVAR____TtC14MentalHealthUI21StateOfMindEntryModel_completedAnalyticsSteps) = MEMORY[0x277D84FA0];
  v4[2] = a1;
  sub_258A1E280(v29, v4 + OBJC_IVAR____TtC14MentalHealthUI21StateOfMindEntryModel_configuration, type metadata accessor for StateOfMindEntryModel.Configuration);
  v30 = (v4 + OBJC_IVAR____TtC14MentalHealthUI21StateOfMindEntryModel_didSaveSample);
  v31 = v99;
  *v30 = v98;
  v30[1] = v31;
  v32 = type metadata accessor for StateOfMindEntryModel.Configuration(0);
  v33 = *(v17 + 16);
  v98 = *(v32 + 20);
  v33(v21, v29 + v98, v16);
  swift_beginAccess();
  v33(v97, v21, v16);
  v34 = a1;

  sub_258B00524();
  (*(v96 + 8))(v21, v16);
  swift_endAccess();
  v35 = *v29;
  if (!*(v29 + 8))
  {
    swift_beginAccess();
    v101 = v35;
    type metadata accessor for __HKStateOfMindReflectiveInterval(0);
    sub_258B00524();
    swift_endAccess();
    sub_258B00364();
    v47 = sub_258B00374();
    v48 = sub_258B02EA4();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v103[0] = v50;
      *v49 = 136446466;
      v51 = sub_258B035A4();
      v53 = sub_2589F1F78(v51, v52, v103);

      *(v49 + 4) = v53;
      *(v49 + 12) = 2082;
      v101 = v35;
      v54 = sub_258B02B34();
      v56 = sub_2589F1F78(v54, v55, v103);

      *(v49 + 14) = v56;
      _os_log_impl(&dword_2589A1000, v47, v48, "[%{public}s] Initialized with explicit: %{public}s", v49, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C945C0](v50, -1, -1);
      MEMORY[0x259C945C0](v49, -1, -1);
    }

    (*(v95 + 8))(v93, v94);
    goto LABEL_17;
  }

  if (*(v29 + 8) == 1)
  {
    swift_beginAccess();
    v101 = v35;
    type metadata accessor for __HKStateOfMindReflectiveInterval(0);
    sub_258B00524();
    swift_endAccess();
    v36 = v91;
    sub_258B00364();
    v37 = sub_258B00374();
    v38 = sub_258B02EA4();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v103[0] = v40;
      *v39 = 136446466;
      v41 = sub_258B035A4();
      v43 = sub_2589F1F78(v41, v42, v103);

      *(v39 + 4) = v43;
      *(v39 + 12) = 2082;
      v101 = v35;
      v44 = sub_258B02B34();
      v46 = sub_2589F1F78(v44, v45, v103);

      *(v39 + 14) = v46;
      _os_log_impl(&dword_2589A1000, v37, v38, "[%{public}s] Initialized with fixed: %{public}s", v39, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C945C0](v40, -1, -1);
      MEMORY[0x259C945C0](v39, -1, -1);
    }

    (*(v95 + 8))(v36, v94);
LABEL_17:
    swift_beginAccess();
    v101 = 0;
    sub_258B00524();
    swift_endAccess();
    swift_beginAccess();
    v84 = MEMORY[0x277D84F90];
    v101 = MEMORY[0x277D84F90];
    sub_258A1E3AC(0);
    sub_258B00524();
    swift_endAccess();
    swift_beginAccess();
    v101 = v84;
    sub_258A0AFC8(0);
    sub_258B00524();
    swift_endAccess();
    swift_beginAccess();
    v101 = 0;
    v102 = 0xE000000000000000;
    sub_258B00524();
    swift_endAccess();
    v85 = [objc_opt_self() hkmh_mentalHealthDefaults];
    v86 = sub_258B02AD4();
    v87 = [v85 BOOLForKey_];

    sub_258A1E2E8(v100, type metadata accessor for StateOfMindEntryModel.Configuration);
    *(v5 + OBJC_IVAR____TtC14MentalHealthUI21StateOfMindEntryModel_useLiveVisualization) = v87 ^ 1;
    return v5;
  }

  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v58 = result;
    v59 = [result isAppleWatch];

    if (v59)
    {
      swift_beginAccess();
      v101 = 1;
      type metadata accessor for __HKStateOfMindReflectiveInterval(0);
      sub_258B00524();
      swift_endAccess();
      v60 = v89;
      sub_258B00364();
      v61 = sub_258B00374();
      v62 = sub_258B02EA4();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v103[0] = v64;
        *v63 = 136446210;
        v65 = sub_258B035A4();
        v67 = sub_2589F1F78(v65, v66, v103);

        *(v63 + 4) = v67;
        _os_log_impl(&dword_2589A1000, v61, v62, "[%{public}s] Initialized (not inferring reflective interval)", v63, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v64);
        MEMORY[0x259C945C0](v64, -1, -1);
        MEMORY[0x259C945C0](v63, -1, -1);
      }

      (*(v95 + 8))(v60, v94);
    }

    else
    {
      v68 = objc_allocWithZone(MEMORY[0x277D62528]);
      v69 = v34;
      v70 = sub_258B02AD4();
      v71 = [v68 initWithIdentifier:v70 healthStore:v69];

      type metadata accessor for PreferredReflectiveIntervalProvider();
      *(swift_initStackObject() + 16) = v71;
      v72 = sub_258A77E94(v100 + v98);
      swift_beginAccess();
      v101 = v72;
      type metadata accessor for __HKStateOfMindReflectiveInterval(0);
      sub_258B00524();
      swift_endAccess();
      v73 = v90;
      sub_258B00364();
      v74 = sub_258B00374();
      v75 = sub_258B02EA4();
      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        v103[0] = v77;
        *v76 = 136446466;
        v78 = sub_258B035A4();
        v80 = sub_2589F1F78(v78, v79, v103);

        *(v76 + 4) = v80;
        *(v76 + 12) = 2082;
        v101 = v72;
        v81 = sub_258B02B34();
        v83 = sub_2589F1F78(v81, v82, v103);

        *(v76 + 14) = v83;
        _os_log_impl(&dword_2589A1000, v74, v75, "[%{public}s] Initialized with inferred: %{public}s", v76, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x259C945C0](v77, -1, -1);
        MEMORY[0x259C945C0](v76, -1, -1);

        (*(v95 + 8))(v90, v94);
      }

      else
      {

        (*(v95 + 8))(v73, v94);
      }
    }

    goto LABEL_17;
  }

  __break(1u);
  return result;
}

unint64_t sub_258A21834(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F96E740;
  if (!qword_27F96E740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96E740);
  }

  return result;
}

unint64_t sub_258A21888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F96E748;
  if (!qword_27F96E748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96E748);
  }

  return result;
}

unint64_t sub_258A218DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F96E758;
  if (!qword_27F96E758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96E758);
  }

  return result;
}

unint64_t sub_258A21934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F96E760;
  if (!qword_27F96E760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96E760);
  }

  return result;
}

uint64_t sub_258A219B0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258A219E8(uint64_t a1)
{
  type metadata accessor for StateOfMindEntryModel.Configuration(319);
  if (v1 <= 0x3F)
  {
    sub_258A1E348(319, &qword_27F96E6B8, MEMORY[0x277CC9578], MEMORY[0x277CBCED0]);
    if (v2 <= 0x3F)
    {
      sub_258A1E348(319, &qword_27F96E6D0, type metadata accessor for __HKStateOfMindReflectiveInterval, MEMORY[0x277CBCED0]);
      if (v3 <= 0x3F)
      {
        sub_258A22F34(319, &qword_27F96E6E0, MEMORY[0x277D839F8], MEMORY[0x277CBCED0]);
        if (v4 <= 0x3F)
        {
          sub_258A1E348(319, &qword_27F96E6F0, sub_258A1E3AC, MEMORY[0x277CBCED0]);
          if (v5 <= 0x3F)
          {
            sub_258A1E348(319, &qword_27F96E700, sub_258A0AFC8, MEMORY[0x277CBCED0]);
            if (v6 <= 0x3F)
            {
              sub_258A22F34(319, &qword_27F96E710, MEMORY[0x277D837D0], MEMORY[0x277CBCED0]);
              if (v7 <= 0x3F)
              {
                swift_updateClassMetadata2();
              }
            }
          }
        }
      }
    }
  }
}

void sub_258A21D84(uint64_t a1)
{
  sub_258B00084();
  if (v1 <= 0x3F)
  {
    sub_258A1DF54(319);
    if (v2 <= 0x3F)
    {
      sub_258A22F34(319, qword_280DF8FA0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_258A22F34(319, &qword_280DF89A8, &type metadata for StateOfMindLoggingAnalyticsEntryPointType, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_258A22F34(319, &qword_280DF89A0, &type metadata for StateOfMindLoggingAnalyticsProvenanceType, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_258A21EF0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_258A21F38(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_258A21F7C(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_258A21F94(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

unint64_t sub_258A21FE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F96E780;
  if (!qword_27F96E780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96E780);
  }

  return result;
}

unint64_t sub_258A22038(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F96E788;
  if (!qword_27F96E788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96E788);
  }

  return result;
}

unint64_t sub_258A22090(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F96E790;
  if (!qword_27F96E790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96E790);
  }

  return result;
}

unint64_t sub_258A220E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F96E798;
  if (!qword_27F96E798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96E798);
  }

  return result;
}

unint64_t sub_258A22140(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F96E7A0;
  if (!qword_27F96E7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96E7A0);
  }

  return result;
}

unint64_t sub_258A22198(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F96E7A8;
  if (!qword_27F96E7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96E7A8);
  }

  return result;
}

unint64_t sub_258A221F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F96E7B0;
  if (!qword_27F96E7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96E7B0);
  }

  return result;
}

unint64_t sub_258A22244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F96E7C0;
  if (!qword_27F96E7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96E7C0);
  }

  return result;
}

unint64_t sub_258A22298(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F96E7D0;
  if (!qword_27F96E7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96E7D0);
  }

  return result;
}

unint64_t sub_258A222EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F96E7E0;
  if (!qword_27F96E7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96E7E0);
  }

  return result;
}

unint64_t sub_258A22340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F96E7F0;
  if (!qword_27F96E7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96E7F0);
  }

  return result;
}

uint64_t sub_258A22394()
{
  v0 = *(sub_258B03024() + 16);
  if (v0)
  {
    v8 = MEMORY[0x277D84F90];
    sub_258AA924C(0, v0, 0);
    v1 = 32;
    v2 = v8;
    do
    {
      v3 = sub_258B03014();
      v5 = *(v8 + 16);
      v4 = *(v8 + 24);
      if (v5 >= v4 >> 1)
      {
        v6 = v3;
        sub_258AA924C((v4 > 1), v5 + 1, 1);
        v3 = v6;
      }

      *(v8 + 16) = v5 + 1;
      *(v8 + 8 * v5 + 32) = v3;
      v1 += 8;
      --v0;
    }

    while (v0);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v2;
}

uint64_t sub_258A2248C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746963696C707865 && a2 == 0xE800000000000000;
  if (v4 || (sub_258B03454() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6465786966 && a2 == 0xE500000000000000 || (sub_258B03454() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6465727265666E69 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_258B03454();

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

uint64_t sub_258A225A0(void *a1)
{
  v2 = MEMORY[0x277D844C8];
  sub_258A22C24(0, &qword_27F96E7F8, sub_258A22244, &type metadata for StateOfMindEntryModel.Configuration.InitialReflectiveInterval.Storage.InferredCodingKeys, MEMORY[0x277D844C8]);
  v45 = v3;
  v42 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v47 = &v38 - v4;
  sub_258A22C24(0, &qword_27F96E800, sub_258A22298, &type metadata for StateOfMindEntryModel.Configuration.InitialReflectiveInterval.Storage.FixedCodingKeys, v2);
  v43 = *(v5 - 8);
  v44 = v5;
  MEMORY[0x28223BE20](v5);
  v46 = &v38 - v6;
  sub_258A22C24(0, &qword_27F96E808, sub_258A222EC, &type metadata for StateOfMindEntryModel.Configuration.InitialReflectiveInterval.Storage.ExplicitCodingKeys, v2);
  v8 = v7;
  v41 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v38 - v9;
  sub_258A22C24(0, &qword_27F96E810, sub_258A22340, &type metadata for StateOfMindEntryModel.Configuration.InitialReflectiveInterval.Storage.CodingKeys, v2);
  v12 = v11;
  v48 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v38 - v13;
  v15 = __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_258A22340(v15, v16, v17);
  v18 = v49;
  sub_258B03564();
  if (!v18)
  {
    v20 = v46;
    v19 = v47;
    v39 = v14;
    v40 = a1;
    v21 = sub_258B03394();
    v49 = v21;
    v24 = *(v21 + 16);
    if (v24)
    {
      v25 = *(v49 + 32);
      if (v24 == 1 && v25 != 3)
      {
        if (*(v49 + 32))
        {
          v32 = v48;
          if (v25 != 1)
          {
            v52 = 2;
            sub_258A22244(v21, v22, v23);
            v37 = v39;
            sub_258B03334();
            (*(v42 + 8))(v19, v45);
            (*(v32 + 8))(v37, v12);
            swift_unknownObjectRelease();
            v15 = 0;
LABEL_17:
            __swift_destroy_boxed_opaque_existential_1(v40);
            return v15;
          }

          v51 = 1;
          sub_258A22298(v21, v22, v23);
          v33 = v39;
          sub_258B03334();
          v34 = v44;
          v15 = sub_258B03374();
          (*(v43 + 8))(v20, v34);
          (*(v32 + 8))(v33, v12);
        }

        else
        {
          v50 = 0;
          sub_258A222EC(v21, v22, v23);
          v35 = v39;
          sub_258B03334();
          v36 = v48;
          v15 = sub_258B03374();
          (*(v41 + 8))(v10, v8);
          (*(v36 + 8))(v35, v12);
        }

        swift_unknownObjectRelease();
        goto LABEL_17;
      }
    }

    v27 = sub_258B03204();
    swift_allocError();
    v28 = v12;
    v30 = v29;
    sub_258A22C8C(0);
    *v30 = &type metadata for StateOfMindEntryModel.Configuration.InitialReflectiveInterval.Storage;
    v15 = v39;
    sub_258B03344();
    sub_258B031E4();
    (*(*(v27 - 8) + 104))(v30, *MEMORY[0x277D84160], v27);
    swift_willThrow();
    (*(v48 + 8))(v15, v28);
    swift_unknownObjectRelease();
    a1 = v40;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v15;
}

void sub_258A22C24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_258A22C8C(uint64_t a1)
{
  if (!qword_27F96E818)
  {
    sub_258A22CFC();
    sub_258B031F4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F96E818);
    }
  }
}

unint64_t sub_258A22CFC()
{
  result = qword_27F96E820;
  if (!qword_27F96E820)
  {
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_27F96E820);
  }

  return result;
}

void sub_258A22D48(uint64_t a1)
{
  if (!qword_27F96E828)
  {
    sub_2589F3AFC();
    v1 = sub_258B02D54();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96E828);
    }
  }
}

void *__swift_project_boxed_opaque_existential_1Tm(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t block_copy_helper_85(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_258A22E44(uint64_t a1)
{
  sub_258A22ECC(0, &qword_27F96E830, &qword_27F96E838, 0x277D82BB8, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_258A22ECC(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_2589F4488(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_258A22F34(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_258A22F84(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_258A22ECC(255, a3, &qword_27F96E858, 0x277CCD8A8, a4);
    v5 = sub_258B03424();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_258A23040(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F96E888;
  if (!qword_27F96E888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96E888);
  }

  return result;
}

unint64_t sub_258A23098(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F96E890;
  if (!qword_27F96E890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96E890);
  }

  return result;
}

unint64_t sub_258A230F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F96E898;
  if (!qword_27F96E898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96E898);
  }

  return result;
}

unint64_t sub_258A23148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F96E8A0;
  if (!qword_27F96E8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96E8A0);
  }

  return result;
}

unint64_t sub_258A231A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F96E8A8;
  if (!qword_27F96E8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96E8A8);
  }

  return result;
}

unint64_t sub_258A231F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F96E8B0;
  if (!qword_27F96E8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96E8B0);
  }

  return result;
}

unint64_t sub_258A23250(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F96E8B8;
  if (!qword_27F96E8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96E8B8);
  }

  return result;
}

unint64_t sub_258A232A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F96E8C0;
  if (!qword_27F96E8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96E8C0);
  }

  return result;
}

unint64_t sub_258A23300(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F96E8C8;
  if (!qword_27F96E8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96E8C8);
  }

  return result;
}

unint64_t sub_258A23358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F96E8D0;
  if (!qword_27F96E8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96E8D0);
  }

  return result;
}

unint64_t sub_258A233B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F96E8D8;
  if (!qword_27F96E8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96E8D8);
  }

  return result;
}

void (*sub_258A2349C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_258B005E4();
  return sub_2589FE1B8;
}

unint64_t sub_258A23528(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F96E8E0[0];
  if (!qword_27F96E8E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F96E8E0);
  }

  return result;
}

void *sub_258A2357C(uint64_t a1, char a2)
{
  v26 = a1;
  v25 = sub_258B00934();
  v3 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_258B009D4();
  sub_258A240EC(&qword_27F96DAE0, MEMORY[0x277CDF7F8], MEMORY[0x277CDF820]);
  v7 = sub_258B02DA4();
  v8 = MEMORY[0x277D84F90];
  if (!v7)
  {
    return v8;
  }

  v9 = v7;
  v29 = MEMORY[0x277D84F90];
  sub_258AA920C(0, v7 & ~(v7 >> 63), 0);
  v8 = v29;
  result = sub_258B02D94();
  if ((v9 & 0x8000000000000000) == 0)
  {
    v23 = (v3 + 8);
    v24 = (v3 + 16);
    v11 = a2 & 1;
    do
    {
      v12 = sub_258B02DD4();
      v13 = v6;
      v14 = v25;
      (*v24)(v5);
      v12(v28, 0);
      v28[0] = v11;
      v27 = 1;
      sub_258B00914();
      v16 = v15;
      v18 = v17;
      (*v23)(v5, v14);
      v29 = v8;
      v20 = *(v8 + 16);
      v19 = *(v8 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_258AA920C((v19 > 1), v20 + 1, 1);
        v8 = v29;
      }

      *(v8 + 16) = v20 + 1;
      v21 = v8 + 16 * v20;
      *(v21 + 32) = v16;
      *(v21 + 40) = v18;
      sub_258B02DC4();
      --v9;
      v6 = v13;
    }

    while (v9);
    return v8;
  }

  __break(1u);
  return result;
}

double sub_258A23800(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v5 = sub_258A2357C(a1, a2 & 1);
  v6 = v5[2];
  if (!v6)
  {
    v7 = 0.0;
    goto LABEL_16;
  }

  v7 = 0.0;
  v8 = 4;
  v9 = v5[2];
  do
  {
    if (v7 <= *&v5[v8])
    {
      v7 = *&v5[v8];
    }

    v8 += 2;
    --v9;
  }

  while (v9);
  if (a4)
  {
    if (v6 == 1)
    {
      v10 = 0;
      v11 = 0.0;
LABEL_14:
      v16 = v6 - v10;
      v17 = &v5[2 * v10 + 5];
      do
      {
        v18 = *v17;
        v17 += 2;
        v11 = v11 + v18;
        --v16;
      }

      while (v16);
      goto LABEL_16;
    }

    v10 = v6 & 0x7FFFFFFFFFFFFFFELL;
    v12 = (v5 + 7);
    v11 = 0.0;
    v13 = v6 & 0x7FFFFFFFFFFFFFFELL;
    do
    {
      v14 = *(v12 - 2);
      v15 = *v12;
      v12 += 4;
      v11 = v11 + v14 + v15;
      v13 -= 2;
    }

    while (v13);
    if (v6 != v10)
    {
      goto LABEL_14;
    }
  }

LABEL_16:

  return v7;
}

uint64_t sub_258A238F8(uint64_t a1, char a2, char *a3, double a4, double a5)
{
  v67 = sub_258B00934();
  v56 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v66 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589FE2AC(0);
  v63 = v10;
  MEMORY[0x28223BE20](v10);
  v68 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_258B009D4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A23F78(0, &qword_27F96DAB0, MEMORY[0x277D84110]);
  v58 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v55 - v17;
  sub_258A23F78(0, &qword_27F96DAD0, MEMORY[0x277D84118]);
  v20 = v19;
  v21 = MEMORY[0x28223BE20](v19);
  v65 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v57 = &v55 - v23;
  v24 = sub_258A2357C(a1, a2 & 1);
  v25 = v24[2];
  v64 = v18;
  if (v25)
  {
    v59 = v20;
    v60 = v13;
    v61 = v15;
    v62 = a3;
    v70[0] = MEMORY[0x277D84F90];
    sub_258AA922C(0, v25, 0);
    v26 = v70[0];
    v27 = *(v70[0] + 16);
    v28 = 32 * v27 + 56;
    v29 = v24 + 5;
    do
    {
      v31 = *(v29 - 1);
      v30 = *v29;
      v70[0] = v26;
      v32 = *(v26 + 24);
      v33 = v27 + 1;
      if (v27 >= v32 >> 1)
      {
        sub_258AA922C((v32 > 1), v27 + 1, 1);
        v26 = v70[0];
      }

      v29 += 2;
      *(v26 + 16) = v33;
      v34 = (v26 + v28);
      *(v34 - 3) = v31;
      *(v34 - 16) = 0;
      *(v34 - 1) = v30;
      v28 += 32;
      v27 = v33;
      *v34 = 0;
      --v25;
    }

    while (v25);

    v18 = v64;
    v15 = v61;
    a3 = v62;
    v20 = v59;
    v13 = v60;
  }

  else
  {

    v26 = MEMORY[0x277D84F90];
  }

  v35 = v57;
  v13[2](v57, a3, v12);
  *(v35 + *(v20 + 52)) = v26;
  v36 = v65;
  sub_258A2406C(v35, v65);
  v13[4](v15, v36, v12);
  v37 = MEMORY[0x277CDF7F8];
  sub_258A240EC(&qword_27F96DAC0, MEMORY[0x277CDF7F8], MEMORY[0x277CDF810]);
  sub_258B02C14();
  v38 = &v18[*(v58 + 52)];
  v65 = *(v36 + *(v20 + 52));
  *v38 = v65;
  *(v38 + 1) = 0;
  v62 = v38;
  sub_2589FE4C8(0);
  v40 = *(v39 + 36);
  sub_258A240EC(&qword_27F96DAE0, v37, MEMORY[0x277CDF820]);
  sub_258B02DB4();
  if (*&v18[v40] == v70[0])
  {
LABEL_16:
    v54 = *(v58 + 56);
    sub_258A24190(v57, &qword_27F96DAD0, MEMORY[0x277D84118]);
    v18[v54] = 1;
    return sub_258A24190(v18, &qword_27F96DAB0, MEMORY[0x277D84110]);
  }

  else
  {
    v41 = 0;
    v60 = (v56 + 32);
    v61 = (v56 + 16);
    v42 = (v65 + 56);
    v59 = v40;
    while (1)
    {
      v43 = sub_258B02DD4();
      (*v61)(v66);
      v43(v70, 0);
      result = sub_258B02DC4();
      v45 = *(v65 + 16);
      if (v41 == v45)
      {
        (*(v56 + 8))(v66, v67);
        goto LABEL_16;
      }

      if (v41 >= v45)
      {
        break;
      }

      v46 = v12;
      v47 = *(v42 - 1);
      ++v41;
      v48 = *v42;
      v49 = *(v42 - 16);
      v50 = *(v42 - 3);
      v51 = v63;
      *(v62 + 1) = v41;
      v52 = &v68[*(v51 + 48)];
      (*v60)(v68, v66, v67);
      *v52 = v50;
      v52[8] = v49;
      *(v52 + 2) = v47;
      v52[24] = v48;
      v53 = v68;
      sub_258B025B4();
      LOBYTE(v70[0]) = v49;
      v69 = v48;
      result = sub_258B00924();
      if (v48)
      {
        goto LABEL_18;
      }

      a5 = a5 + v47;
      sub_258A24134(v53);
      v18 = v64;
      v12 = v46;
      sub_258B02DB4();
      v42 += 4;
      if (*&v18[v59] == v70[0])
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }

  return result;
}

void sub_258A23F78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v6 = sub_258B009D4();
    sub_2589FE314();
    v10[0] = v6;
    v10[1] = v7;
    v10[2] = sub_258A240EC(&qword_27F96DAC0, MEMORY[0x277CDF7F8], MEMORY[0x277CDF810]);
    v10[3] = sub_258A240EC(&qword_27F96DAC8, sub_2589FE314, MEMORY[0x277D83970]);
    v8 = a3(a1, v10);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_258A2406C(uint64_t a1, uint64_t a2)
{
  sub_258A23F78(0, &qword_27F96DAD0, MEMORY[0x277D84118]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258A240EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_258A24134(uint64_t a1)
{
  sub_2589FE2AC(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_258A24190(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  sub_258A23F78(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_258A241F4(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_258A24928(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_258A2427C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(sub_258B01504() - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 64);
  v11 = *(sub_258B00AA4() - 8);
  if (v7 <= 0xFE)
  {
    v12 = 254;
  }

  else
  {
    v12 = v7;
  }

  v13 = *(v11 + 80);
  v14 = *(v11 + 64);
  if (v9)
  {
    v15 = v10;
  }

  else
  {
    v15 = v10 + 1;
  }

  v16 = ((v15 + v13) & ~v13) + v14;
  if (v16 <= 8)
  {
    v16 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v17 = (*(v8 + 80) | v13) & 0xF8 | 7u;
  v18 = *(v6 + 64) + v17;
  if (a2 <= v12)
  {
    goto LABEL_33;
  }

  v19 = v16 + (v18 & ~v17) + 1;
  v20 = 8 * v19;
  if (v19 <= 3)
  {
    v23 = ((a2 - v12 + ~(-1 << v20)) >> v20) + 1;
    if (HIWORD(v23))
    {
      v21 = *(a1 + v19);
      if (!v21)
      {
        goto LABEL_33;
      }

      goto LABEL_20;
    }

    if (v23 > 0xFF)
    {
      v21 = *(a1 + v19);
      if (!*(a1 + v19))
      {
        goto LABEL_33;
      }

      goto LABEL_20;
    }

    if (v23 < 2)
    {
LABEL_33:
      if (v7 < 0xFE)
      {
        v28 = *(((a1 + v18) & ~v17) + v16);
        if (v28 >= 2)
        {
          return (v28 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v27 = *(v6 + 48);

        return v27(a1, v7, v5);
      }
    }
  }

  v21 = *(a1 + v19);
  if (!*(a1 + v19))
  {
    goto LABEL_33;
  }

LABEL_20:
  v24 = (v21 - 1) << v20;
  if (v19 > 3)
  {
    v24 = 0;
  }

  if (v19)
  {
    if (v19 <= 3)
    {
      v25 = v19;
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

  else
  {
    v26 = 0;
  }

  return v12 + (v26 | v24) + 1;
}

void sub_258A2454C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v35 = v8;
  v9 = *(v8 + 84);
  v10 = *(sub_258B01504() - 8);
  v11 = *(v10 + 84);
  v12 = *(v10 + 64);
  v13 = *(sub_258B00AA4() - 8);
  v14 = v13;
  if (v9 <= 0xFE)
  {
    v15 = 254;
  }

  else
  {
    v15 = v9;
  }

  v16 = *(v13 + 64);
  v17 = (*(v10 + 80) | *(v14 + 80)) & 0xF8 | 7u;
  v18 = *(v8 + 64) + v17;
  if (v11)
  {
    v19 = v12;
  }

  else
  {
    v19 = v12 + 1;
  }

  v20 = ((v19 + *(v14 + 80)) & ~*(v14 + 80)) + v16;
  if (v20 <= 8)
  {
    v20 = 8;
  }

  v21 = v20 + (v18 & ~v17) + 1;
  if (a3 <= v15)
  {
    v22 = 0;
  }

  else if (v21 <= 3)
  {
    v25 = ((a3 - v15 + ~(-1 << (8 * v21))) >> (8 * v21)) + 1;
    if (HIWORD(v25))
    {
      v22 = 4;
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
        v22 = v26;
      }

      else
      {
        v22 = 0;
      }
    }
  }

  else
  {
    v22 = 1;
  }

  if (v15 < a2)
  {
    v23 = ~v15 + a2;
    if (v21 < 4)
    {
      v24 = (v23 >> (8 * v21)) + 1;
      if (v20 + (v18 & ~v17) != -1)
      {
        v27 = v23 & ~(-1 << (8 * v21));
        bzero(a1, v21);
        if (v21 != 3)
        {
          if (v21 == 2)
          {
            *a1 = v27;
            if (v22 > 1)
            {
LABEL_60:
              if (v22 == 2)
              {
                *&a1[v21] = v24;
              }

              else
              {
                *&a1[v21] = v24;
              }

              return;
            }
          }

          else
          {
            *a1 = v23;
            if (v22 > 1)
            {
              goto LABEL_60;
            }
          }

          goto LABEL_57;
        }

        *a1 = v27;
        a1[2] = BYTE2(v27);
      }

      if (v22 > 1)
      {
        goto LABEL_60;
      }
    }

    else
    {
      bzero(a1, v21);
      *a1 = v23;
      v24 = 1;
      if (v22 > 1)
      {
        goto LABEL_60;
      }
    }

LABEL_57:
    if (v22)
    {
      a1[v21] = v24;
    }

    return;
  }

  if (v22 > 1)
  {
    if (v22 != 2)
    {
      *&a1[v21] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    }

    *&a1[v21] = 0;
LABEL_35:
    if (!a2)
    {
      return;
    }

    goto LABEL_36;
  }

  if (!v22)
  {
    goto LABEL_35;
  }

  a1[v21] = 0;
  if (!a2)
  {
    return;
  }

LABEL_36:
  if (v9 < 0xFE)
  {
    v29 = (&a1[v18] & ~v17);
    if (a2 > 0xFE)
    {
      v30 = (v20 + 1);
      v31 = -1 << (8 * (v20 + 1));
      if (v30 <= 3)
      {
        v32 = ~v31;
      }

      else
      {
        v32 = -1;
      }

      if (v30)
      {
        v33 = v32 & (a2 - 255);
        if (v30 <= 3)
        {
          v34 = v30;
        }

        else
        {
          v34 = 4;
        }

        bzero(v29, v30);
        if (v34 > 2)
        {
          if (v34 == 3)
          {
            *v29 = v33;
            v29[2] = BYTE2(v33);
          }

          else
          {
            *v29 = v33;
          }
        }

        else if (v34 == 1)
        {
          *v29 = v33;
        }

        else
        {
          *v29 = v33;
        }
      }
    }

    else
    {
      v29[v20] = -a2;
    }
  }

  else
  {
    v28 = *(v35 + 56);

    v28(a1, a2, v9, v7);
  }
}

void sub_258A24928(uint64_t a1)
{
  if (!qword_27F96D290)
  {
    type metadata accessor for AssociationSelectionPhaseSpecs(255);
    v1 = sub_258B00724();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96D290);
    }
  }
}

id sub_258A249C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v3 = type metadata accessor for AssociationSelectionPhaseSpecs(0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v52 = v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v45 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = v45 - v9;
  v45[1] = *(a1 + 16);
  v11 = sub_258B00B04();
  v47 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = v45 - v12;
  v14 = sub_258B00B04();
  v48 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v46 = v45 - v15;
  v16 = sub_258B00B04();
  v51 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v50 = v45 - v17;
  v53 = v18;
  v19 = sub_258B00B04();
  v57 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v54 = v45 - v20;
  v58 = v21;
  v49 = sub_258B00B04();
  v59 = *(v49 - 8);
  v22 = MEMORY[0x28223BE20](v49);
  v55 = v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v56 = v45 - v24;
  sub_258AC1B28(v10);
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v26 = result;
    [result isiPad];

    sub_258A25118(v10);
    sub_258B024F4();
    v27 = *(a1 + 24);
    v28 = v13;
    sub_258B01E84();
    sub_258B01864();
    sub_258AC1B28(v8);
    sub_258A25118(v8);
    v69 = v27;
    v70 = MEMORY[0x277CDFC60];
    v29 = v8;
    WitnessTable = swift_getWitnessTable();
    v31 = v46;
    sub_258B01ED4();
    (*(v47 + 8))(v28, v11);
    sub_258B01884();
    v32 = v52;
    sub_258AC1B28(v52);
    _UISolariumEnabled();
    sub_258A25118(v32);
    v33 = MEMORY[0x277CDF918];
    v67 = WitnessTable;
    v68 = MEMORY[0x277CDF918];
    v34 = swift_getWitnessTable();
    v35 = v50;
    sub_258B01ED4();
    (*(v48 + 8))(v31, v14);
    sub_258B01894();
    sub_258AC1B28(v29);
    sub_258A25118(v29);
    v65 = v34;
    v66 = v33;
    v36 = v53;
    v37 = swift_getWitnessTable();
    v38 = v54;
    sub_258B01ED4();
    (*(v51 + 8))(v35, v36);
    sub_258B024F4();
    v63 = v37;
    v64 = v33;
    v43 = v58;
    v44 = swift_getWitnessTable();
    v39 = v55;
    sub_258B01E84();
    (*(v57 + 8))(v38, v43);
    v61 = v44;
    v62 = MEMORY[0x277CDFC60];
    v40 = v49;
    swift_getWitnessTable();
    v41 = v56;
    sub_258A4DFD4();
    v42 = *(v59 + 8);
    v42(v39, v40);
    sub_258A4DFD4();
    return (v42)(v41, v40);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_258A25118(uint64_t a1)
{
  v2 = type metadata accessor for AssociationSelectionPhaseSpecs(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for CustomReminderView(uint64_t a1)
{
  result = qword_27F96E970;
  if (!qword_27F96E970)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258A251E8(uint64_t a1)
{
  sub_2589DEB08(319);
  if (v1 <= 0x3F)
  {
    sub_258A296F8(319, &qword_27F96D2E8, type metadata accessor for CustomReminderModel, MEMORY[0x277CE10B8]);
    if (v2 <= 0x3F)
    {
      sub_258A296F8(319, &qword_27F96E968, MEMORY[0x277CC9578], MEMORY[0x277CE10B8]);
      if (v3 <= 0x3F)
      {
        sub_258A11890(319, &qword_27F971C90, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
        if (v4 <= 0x3F)
        {
          sub_258A296F8(319, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_258A25384@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v72 = sub_258B01574();
  v70 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v69 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CustomReminderView(0);
  v62 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v63 = v5;
  v64 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_258B02864();
  v67 = *(v6 - 8);
  v68 = v6;
  MEMORY[0x28223BE20](v6);
  v65 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CustomReminderModel(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A28764(0);
  v12 = v11;
  v13 = *(v11 - 1);
  MEMORY[0x28223BE20](v11);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A28628(0);
  v56 = v16;
  v55 = *(v16 - 1);
  MEMORY[0x28223BE20](v16);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A284A8(0);
  v60 = v19;
  v58 = *(v19 - 1);
  MEMORY[0x28223BE20](v19);
  v73 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A282F0(0);
  v61 = v21;
  v59 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v57 = &v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = a1;
  sub_258A296F8(0, &qword_27F96E9A8, sub_258A28814, MEMORY[0x277CE14B8]);
  sub_258A28E54();
  sub_258B01A74();
  v74 = a1;
  sub_2589C60B0(0);
  v24 = v23;
  v25 = sub_258A28BD4(&qword_27F96EA20, sub_258A28764, MEMORY[0x277CDE5A0]);
  sub_2589C6164(255);
  v27 = v26;
  v28 = sub_258A28BD4(&qword_27F96CBA8, sub_2589C6164, MEMORY[0x277CDD7A8]);
  v76 = v27;
  v77 = v28;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v53 = v18;
  v54 = v24;
  sub_258B01EE4();
  (*(v13 + 8))(v15, v12);
  v66 = a1;
  sub_258A296F8(0, &qword_27F96D2E8, type metadata accessor for CustomReminderModel, MEMORY[0x277CE10B8]);
  sub_258B02124();
  LODWORD(v15) = v10[17];
  sub_258A2960C(v10, type metadata accessor for CustomReminderModel);
  if (v15 != 1)
  {
    if (qword_27F96C240 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_8;
  }

  if (qword_27F96C240 != -1)
  {
LABEL_8:
    swift_once();
  }

LABEL_5:
  v80 = sub_258AFFD94();
  v81 = v30;
  v76 = v12;
  v77 = v54;
  v78 = v25;
  v79 = OpaqueTypeConformance2;
  v54 = swift_getOpaqueTypeConformance2();
  v33 = sub_2589BFF58(v54, v31, v32);
  v34 = MEMORY[0x277D837D0];
  v35 = v56;
  v36 = v53;
  sub_258B01CB4();

  (*(v55 + 8))(v36, v35);
  sub_258B02124();
  v37 = v10[17];
  sub_258A2960C(v10, type metadata accessor for CustomReminderModel);
  v38 = 4;
  if (!v37)
  {
    v38 = 0;
  }

  v55 = v38;
  v40 = v67;
  v39 = v68;
  v41 = v65;
  (*(v67 + 104))(v65, *MEMORY[0x277D126D8], v68);
  v76 = &unk_2869D4670;
  sub_2589FC8C8(&unk_2869D5250);
  sub_258A11890(0, &qword_280DF8948, v34, MEMORY[0x277D83940]);
  sub_2589C6824();
  sub_258B02A34();

  sub_2589C68A0(&unk_2869D5270);
  v42 = v64;
  sub_258A295A4(v66, v64, type metadata accessor for CustomReminderView);
  v43 = (*(v62 + 80) + 16) & ~*(v62 + 80);
  v44 = swift_allocObject();
  sub_258A28EEC(v42, v44 + v43);
  v76 = v35;
  v77 = MEMORY[0x277D837D0];
  v78 = v54;
  v79 = v33;
  v45 = swift_getOpaqueTypeConformance2();
  v46 = v57;
  v47 = v60;
  v48 = v73;
  sub_258B01B54();

  (*(v40 + 8))(v41, v39);
  (*(v58 + 8))(v48, v47);
  v49 = v69;
  sub_258B01564();
  v76 = v47;
  v77 = v45;
  swift_getOpaqueTypeConformance2();
  v50 = v61;
  sub_258B01DF4();
  (*(v70 + 8))(v49, v72);
  return (*(v59 + 8))(v46, v50);
}

uint64_t sub_258A25DD0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v52 = a2;
  sub_258A28D10(0, &qword_27F96EA08, sub_258A28D70);
  v50 = v3;
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v48 = &v47 - v5;
  v6 = type metadata accessor for CustomReminderModel(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A28C9C(0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v56 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v47 - v12;
  sub_258A28C1C(0);
  v15 = v14;
  v55 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v58 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v47 - v18;
  sub_258A28D10(0, &qword_27F96E9B8, sub_258A288B8);
  v57 = v20;
  v51 = *(v20 - 8);
  v21 = MEMORY[0x28223BE20](v20);
  v54 = &v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v47 - v23;
  v60 = a1;
  sub_258A288B8(0);
  sub_258A2932C();
  v53 = v24;
  sub_258B02424();
  v59 = a1;
  v25 = MEMORY[0x277CDF058];
  sub_258A28DF4(0, &qword_27F96E9F8, MEMORY[0x277CDF058]);
  sub_258A28B90(&qword_27F96EA40, &qword_27F96E9F8, v25, MEMORY[0x277CDF068]);
  v26 = v19;
  sub_258B02424();
  type metadata accessor for CustomReminderView(0);
  sub_258A296F8(0, &qword_27F96D2E8, type metadata accessor for CustomReminderModel, MEMORY[0x277CE10B8]);
  sub_258B02124();
  v27 = v8[17];
  v28 = sub_258A2960C(v8, type metadata accessor for CustomReminderModel);
  if (v27)
  {
    v29 = 1;
    v30 = v50;
  }

  else
  {
    MEMORY[0x28223BE20](v28);
    *(&v47 - 2) = a1;
    sub_258A28D70(0);
    sub_258A294BC();
    v31 = v48;
    sub_258B02424();
    v32 = v50;
    (*(v4 + 32))(v13, v31, v50);
    v29 = 0;
    v30 = v32;
  }

  (*(v4 + 56))(v13, v29, 1, v30);
  v33 = v51;
  v34 = *(v51 + 16);
  v35 = v54;
  v34(v54, v53, v57);
  v36 = *(v55 + 16);
  v49 = v26;
  v36(v58, v26, v15);
  sub_258A295A4(v13, v56, sub_258A28C9C);
  v37 = v52;
  v38 = v35;
  v39 = v57;
  v34(v52, v38, v57);
  sub_258A28814(0);
  v41 = v40;
  v42 = v58;
  v36(&v37[*(v40 + 48)], v58, v15);
  v43 = v56;
  sub_258A295A4(v56, &v37[*(v41 + 64)], sub_258A28C9C);
  sub_258A2960C(v13, sub_258A28C9C);
  v44 = *(v55 + 8);
  v44(v49, v15);
  v45 = *(v33 + 8);
  v45(v53, v39);
  sub_258A2960C(v43, sub_258A28C9C);
  v44(v42, v15);
  return (v45)(v54, v39);
}

__n128 sub_258A26400@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a1;
  v40 = a2;
  v2 = sub_258B013A4();
  v3 = *(v2 - 8);
  v38 = v2;
  v39 = v3;
  MEMORY[0x28223BE20](v2);
  v34 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_258B012D4();
  MEMORY[0x28223BE20](v5 - 8);
  v28 = MEMORY[0x277CC9578];
  sub_258A296F8(0, &qword_27F96EA60, MEMORY[0x277CC9578], MEMORY[0x277CE11F8]);
  MEMORY[0x28223BE20](v6 - 8);
  v30 = MEMORY[0x277CDD660];
  sub_258A28DF4(0, &qword_27F96E9D8, MEMORY[0x277CDD660]);
  v8 = v7;
  v31 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v28 - v9;
  sub_258A28A6C(0);
  v32 = v11;
  v33 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A28918(0);
  v36 = *(v14 - 8);
  v37 = v14;
  MEMORY[0x28223BE20](v14);
  v29 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258B01084();
  type metadata accessor for CustomReminderView(0);
  sub_258A296F8(0, &qword_27F96E968, v28, MEMORY[0x277CE10B8]);
  sub_258B02144();
  sub_258B012C4();
  sub_258B00634();
  v16 = v34;
  sub_258B01394();
  v17 = sub_258A28B90(&qword_27F96E9E0, &qword_27F96E9D8, v30, MEMORY[0x277CDD668]);
  v18 = sub_258A28BD4(&qword_27F96E9E8, MEMORY[0x277CDE068], MEMORY[0x277CDE060]);
  v19 = v38;
  sub_258B01C74();
  (*(v39 + 8))(v16, v19);
  (*(v31 + 8))(v10, v8);
  *&v41 = v8;
  *(&v41 + 1) = v19;
  *&v42 = v17;
  *(&v42 + 1) = v18;
  swift_getOpaqueTypeConformance2();
  v20 = v29;
  v21 = v32;
  sub_258B01C24();
  (*(v33 + 8))(v13, v21);
  sub_258B024F4();
  sub_258B00C94();
  v22 = v40;
  (*(v36 + 32))(v40, v20, v37);
  sub_258A288B8(0);
  v24 = v22 + *(v23 + 36);
  v25 = v46;
  *(v24 + 64) = v45;
  *(v24 + 80) = v25;
  *(v24 + 96) = v47;
  v26 = v42;
  *v24 = v41;
  *(v24 + 16) = v26;
  result = v44;
  *(v24 + 32) = v43;
  *(v24 + 48) = result;
  return result;
}

uint64_t sub_258A26990()
{
  sub_258A296F8(0, &qword_27F96EA58, type metadata accessor for CustomReminderModel, MEMORY[0x277CE11F8]);
  MEMORY[0x28223BE20](v0);
  v2 = v8 - v1;
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  v8[4] = sub_258AFFD94();
  v8[5] = v3;
  type metadata accessor for CustomReminderView(0);
  sub_258A296F8(0, &qword_27F96D2E8, type metadata accessor for CustomReminderModel, MEMORY[0x277CE10B8]);
  sub_258B02144();
  swift_getKeyPath();
  sub_258B02324();

  v4 = sub_258A28FFC(v2, &qword_27F96EA58, type metadata accessor for CustomReminderModel, MEMORY[0x277CE11F8]);
  sub_2589BFF58(v4, v5, v6);
  return sub_258B022B4();
}

uint64_t sub_258A26B90(uint64_t a1)
{
  v2 = type metadata accessor for CustomReminderView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_258A296F8(0, &qword_27F96EA50, MEMORY[0x277CDD650], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v22 - v6;
  sub_258A28DF4(0, &qword_27F96E018, MEMORY[0x277CDF020]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = v22 - v11;
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  v22[0] = sub_258AFFD94();
  v22[1] = v13;
  sub_258B00604();
  v14 = sub_258B00624();
  (*(*(v14 - 8) + 56))(v7, 0, 1, v14);
  sub_258A295A4(a1, v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CustomReminderView);
  v15 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v16 = swift_allocObject();
  v17 = sub_258A28EEC(v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  sub_2589BFF58(v17, v18, v19);
  v20 = MEMORY[0x277D837D0];
  sub_258B02194();
  v22[0] = &unk_2869D4670;
  sub_2589FC8C8(&unk_2869D5280);
  sub_258A11890(0, &qword_280DF8948, v20, MEMORY[0x277D83940]);
  sub_2589C6824();
  sub_258B02A34();

  swift_arrayDestroy();
  sub_258A28B90(&qword_27F96E060, &qword_27F96E018, MEMORY[0x277CDF020], MEMORY[0x277CDF028]);
  sub_258B01DD4();

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_258A26F9C(uint64_t a1)
{
  v2 = sub_258B00384();
  v24 = *(v2 - 8);
  v25 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A296F8(0, &qword_27F96EA28, MEMORY[0x277CC8990], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v24 - v6;
  v8 = type metadata accessor for CustomReminderModel(0);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_258AFFD44();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for CustomReminderView(0);
  sub_258A296F8(0, &qword_27F96D2E8, type metadata accessor for CustomReminderModel, MEMORY[0x277CE10B8]);
  sub_258B02124();
  sub_258A28F68(&v11[*(v9 + 40)], v7);
  if ((*(v13 + 48))(v7, 1, v12) == 1)
  {
    sub_258A28FFC(v7, &qword_27F96EA28, MEMORY[0x277CC8990], MEMORY[0x277D83D88]);
    sub_258B00364();
    v17 = sub_258B00374();
    v18 = sub_258B02EA4();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_2589A1000, v17, v18, "CustomReminderRow should have a source component always.", v19, 2u);
      MEMORY[0x259C945C0](v19, -1, -1);
    }

    return (*(v24 + 8))(v4, v25);
  }

  else
  {
    (*(v13 + 32))(v15, v7, v12);
    sub_2589F1408(v15);
    v21 = (a1 + *(v16 + 28));
    v22 = *v21;
    v23 = v21[1];
    LOBYTE(v21) = *(v21 + 16);
    v27 = v22;
    v28 = v23;
    v29 = v21;
    v26 = 0;
    sub_258A11890(0, &qword_27F971C90, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
    sub_258B02314();
    return (*(v13 + 8))(v15, v12);
  }
}

uint64_t sub_258A2737C(uint64_t a1)
{
  v2 = sub_258B01384();
  MEMORY[0x28223BE20](v2 - 8);
  sub_2589C6164(0);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_258B01344();
  v11 = a1;
  sub_2589ECFF0(0);
  sub_2589C6218();
  sub_258B00784();
  v8 = sub_258A28BD4(&qword_27F96CBA8, sub_2589C6164, MEMORY[0x277CDD7A8]);
  MEMORY[0x259C91A00](v7, v4, v8);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_258A2751C(uint64_t a1)
{
  v2 = type metadata accessor for CustomReminderView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = sub_258B026D4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A295A4(a1, v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CustomReminderView);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_258A28EEC(v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  sub_258B026A4();
  v12[1] = &unk_2869D4670;
  sub_2589FC8C8(&unk_2869D52C0);
  sub_258A11890(0, &qword_280DF8948, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_2589C6824();
  sub_258B02A34();

  sub_2589C68A0(&unk_2869D52E0);
  sub_258A28BD4(&qword_27F96CBA0, MEMORY[0x277D126A0], MEMORY[0x277D12690]);
  sub_258B01DD4();

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_258A277B0(uint64_t a1)
{
  type metadata accessor for CustomReminderView(0);
  sub_258A11890(0, &qword_27F971C90, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
  return sub_258B02314();
}

uint64_t sub_258A27838(uint64_t a1)
{
  v49 = a1;
  sub_258A296F8(0, &qword_27F96EA28, MEMORY[0x277CC8990], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v1 - 8);
  v47 = &v41 - v2;
  v50 = type metadata accessor for CustomReminderModel(0) - 8;
  v3 = MEMORY[0x28223BE20](v50);
  v51 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v48 = &v41 - v5;
  v6 = sub_258B00084();
  v45 = *(v6 - 8);
  v46 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_258B00224();
  v43 = *(v9 - 8);
  v44 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_258AFFD44();
  v12 = *(v42 - 8);
  v13 = MEMORY[0x28223BE20](v42);
  v41 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v41 - v15;
  sub_258B001E4();
  sub_258A296F8(0, &qword_27F96EA30, MEMORY[0x277CC99D0], MEMORY[0x277D84560]);
  v17 = sub_258B00204();
  v18 = *(v17 - 8);
  v19 = *(v18 + 72);
  v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_258B2BE60;
  v22 = v21 + v20;
  v23 = *(v18 + 104);
  v23(v22, *MEMORY[0x277CC9980], v17);
  v24 = v22 + v19;
  v25 = v12;
  v23(v24, *MEMORY[0x277CC99A0], v17);
  sub_258A95E28(v21);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v26 = type metadata accessor for CustomReminderView(0);
  v27 = MEMORY[0x277CE10B8];
  sub_258A296F8(0, &qword_27F96E968, MEMORY[0x277CC9578], MEMORY[0x277CE10B8]);
  v28 = v49;
  sub_258B02124();
  v52 = v16;
  sub_258B00144();
  v29 = v47;

  (*(v45 + 8))(v8, v46);
  (*(v43 + 8))(v11, v44);
  v30 = v42;
  sub_258A296F8(0, &qword_27F96D2E8, type metadata accessor for CustomReminderModel, v27);
  v31 = v48;
  sub_258B02124();
  sub_258A28F68(&v31[*(v50 + 40)], v29);
  if ((*(v12 + 48))(v29, 1, v30) == 1)
  {
    sub_258A28FFC(v29, &qword_27F96EA28, MEMORY[0x277CC8990], MEMORY[0x277D83D88]);
    v32 = v51;
    sub_258B02124();
    v33 = *(v32 + 16);
    sub_258A2960C(v32, type metadata accessor for CustomReminderModel);
    sub_2589F104C(v52, v33);
  }

  else
  {
    v34 = v41;
    (*(v12 + 32))(v41, v29, v30);
    v35 = v51;
    sub_258B02124();
    v36 = *(v35 + 16);
    sub_258A2960C(v35, type metadata accessor for CustomReminderModel);
    sub_2589F1408(v34);
    sub_2589F104C(v52, v36);
    (*(v25 + 8))(v34, v30);
  }

  v37 = v28 + *(v26 + 28);
  v38 = *v37;
  v39 = *(v37 + 8);
  LOBYTE(v37) = *(v37 + 16);
  v54 = v38;
  v55 = v39;
  v56 = v37;
  v53 = 0;
  sub_258A11890(0, &qword_27F971C90, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);

  sub_258B02314();
  (*(v25 + 8))(v52, v30);
}

uint64_t sub_258A27F00()
{
  sub_258A28108(0);
  sub_258A282F0(255);
  sub_258A284A8(255);
  sub_258A28628(255);
  sub_258A28764(255);
  sub_2589C60B0(255);
  sub_258A28BD4(&qword_27F96EA20, sub_258A28764, MEMORY[0x277CDE5A0]);
  sub_2589C6164(255);
  sub_258A28BD4(&qword_27F96CBA8, sub_2589C6164, MEMORY[0x277CDD7A8]);
  swift_getOpaqueTypeConformance2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_2589BFF58(OpaqueTypeConformance2, v0, v1);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_258B00B24();
}

void sub_258A28108(uint64_t a1)
{
  if (!qword_27F96E980)
  {
    sub_258A282F0(255);
    sub_258A284A8(255);
    sub_258A28628(255);
    sub_258A28764(255);
    sub_2589C60B0(255);
    sub_258A28BD4(&qword_27F96EA20, sub_258A28764, MEMORY[0x277CDE5A0]);
    sub_2589C6164(255);
    sub_258A28BD4(&qword_27F96CBA8, sub_2589C6164, MEMORY[0x277CDD7A8]);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_2589BFF58(OpaqueTypeConformance2, v1, v2);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v4)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96E980);
    }
  }
}

void sub_258A282F0(uint64_t a1)
{
  if (!qword_27F96E988)
  {
    sub_258A284A8(255);
    sub_258A28628(255);
    sub_258A28764(255);
    sub_2589C60B0(255);
    sub_258A28BD4(&qword_27F96EA20, sub_258A28764, MEMORY[0x277CDE5A0]);
    sub_2589C6164(255);
    sub_258A28BD4(&qword_27F96CBA8, sub_2589C6164, MEMORY[0x277CDD7A8]);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_2589BFF58(OpaqueTypeConformance2, v1, v2);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v4)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96E988);
    }
  }
}

void sub_258A284A8(uint64_t a1)
{
  if (!qword_27F96E990)
  {
    sub_258A28628(255);
    sub_258A28764(255);
    sub_2589C60B0(255);
    sub_258A28BD4(&qword_27F96EA20, sub_258A28764, MEMORY[0x277CDE5A0]);
    sub_2589C6164(255);
    sub_258A28BD4(&qword_27F96CBA8, sub_2589C6164, MEMORY[0x277CDD7A8]);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_2589BFF58(OpaqueTypeConformance2, v2, v3);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v5)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96E990);
    }
  }
}

void sub_258A28628(uint64_t a1)
{
  if (!qword_27F96E998)
  {
    sub_258A28764(255);
    sub_2589C60B0(255);
    sub_258A28BD4(&qword_27F96EA20, sub_258A28764, MEMORY[0x277CDE5A0]);
    sub_2589C6164(255);
    sub_258A28BD4(&qword_27F96CBA8, sub_2589C6164, MEMORY[0x277CDD7A8]);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96E998);
    }
  }
}

void sub_258A28764(uint64_t a1)
{
  if (!qword_27F96E9A0)
  {
    sub_258A296F8(255, &qword_27F96E9A8, sub_258A28814, MEMORY[0x277CE14B8]);
    sub_258A28E54();
    v1 = sub_258B01A84();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96E9A0);
    }
  }
}

void sub_258A28814(uint64_t a1)
{
  if (!qword_27F96E9B0)
  {
    sub_258A28D10(255, &qword_27F96E9B8, sub_258A288B8);
    sub_258A28C1C(255);
    sub_258A28C9C(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F96E9B0);
    }
  }
}

void sub_258A288B8(uint64_t a1)
{
  if (!qword_27F96E9C0)
  {
    sub_258A28918(255);
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96E9C0);
    }
  }
}

void sub_258A28918(uint64_t a1)
{
  if (!qword_27F96E9C8)
  {
    sub_258A28A6C(255);
    v1 = MEMORY[0x277CDD660];
    sub_258A28DF4(255, &qword_27F96E9D8, MEMORY[0x277CDD660]);
    sub_258B013A4();
    sub_258A28B90(&qword_27F96E9E0, &qword_27F96E9D8, v1, MEMORY[0x277CDD668]);
    sub_258A28BD4(&qword_27F96E9E8, MEMORY[0x277CDE068], MEMORY[0x277CDE060]);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96E9C8);
    }
  }
}

void sub_258A28A6C(uint64_t a1)
{
  if (!qword_27F96E9D0)
  {
    v1 = MEMORY[0x277CDD660];
    sub_258A28DF4(255, &qword_27F96E9D8, MEMORY[0x277CDD660]);
    sub_258B013A4();
    sub_258A28B90(&qword_27F96E9E0, &qword_27F96E9D8, v1, MEMORY[0x277CDD668]);
    sub_258A28BD4(&qword_27F96E9E8, MEMORY[0x277CDE068], MEMORY[0x277CDE060]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96E9D0);
    }
  }
}

uint64_t sub_258A28B90(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, void, void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_258A28DF4(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_258A28BD4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_258A28C1C(uint64_t a1)
{
  if (!qword_27F96E9F0)
  {
    sub_258A28DF4(255, &qword_27F96E9F8, MEMORY[0x277CDF058]);
    v1 = sub_258B02444();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96E9F0);
    }
  }
}

void sub_258A28C9C(uint64_t a1)
{
  if (!qword_27F96EA00)
  {
    sub_258A28D10(255, &qword_27F96EA08, sub_258A28D70);
    v1 = sub_258B030C4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96EA00);
    }
  }
}

void sub_258A28D10(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_258B02444();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_258A28D70(uint64_t a1)
{
  if (!qword_27F96EA10)
  {
    sub_258A28DF4(255, &qword_27F96E018, MEMORY[0x277CDF020]);
    sub_258B017D4();
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96EA10);
    }
  }
}

void sub_258A28DF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_258A28E54()
{
  result = qword_27F96EA18;
  if (!qword_27F96EA18)
  {
    sub_258A296F8(255, &qword_27F96E9A8, sub_258A28814, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96EA18);
  }

  return result;
}

uint64_t sub_258A28EEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CustomReminderView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_258A28F68(uint64_t a1, uint64_t a2)
{
  sub_258A296F8(0, &qword_27F96EA28, MEMORY[0x277CC8990], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_258A28FFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  sub_258A296F8(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t objectdestroyTm_7()
{
  v1 = type metadata accessor for CustomReminderView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v2 + v1[5];
  v4 = *(type metadata accessor for CustomReminderModel(0) + 32);
  v5 = sub_258AFFD44();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v3 + v4, 1, v5))
  {
    (*(v6 + 8))(v3 + v4, v5);
  }

  v7 = MEMORY[0x277CE10B8];
  sub_258A296F8(0, &qword_27F96D2E8, type metadata accessor for CustomReminderModel, MEMORY[0x277CE10B8]);

  v8 = v2 + v1[6];
  v9 = sub_258B00084();
  (*(*(v9 - 8) + 8))(v8, v9);
  sub_258A296F8(0, &qword_27F96E968, MEMORY[0x277CC9578], v7);

  v10 = v1[8];
  sub_258A296F8(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_258B006A4();
    (*(*(v11 - 8) + 8))(v2 + v10, v11);
  }

  else
  {
  }

  return swift_deallocObject();
}

unint64_t sub_258A2932C()
{
  result = qword_27F96EA38;
  if (!qword_27F96EA38)
  {
    sub_258A288B8(255);
    sub_258A28A6C(255);
    v1 = MEMORY[0x277CDD660];
    sub_258A28DF4(255, &qword_27F96E9D8, MEMORY[0x277CDD660]);
    sub_258B013A4();
    sub_258A28B90(&qword_27F96E9E0, &qword_27F96E9D8, v1, MEMORY[0x277CDD668]);
    sub_258A28BD4(&qword_27F96E9E8, MEMORY[0x277CDE068], MEMORY[0x277CDE060]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96EA38);
  }

  return result;
}

unint64_t sub_258A294BC()
{
  result = qword_27F96EA48;
  if (!qword_27F96EA48)
  {
    sub_258A28D70(255);
    sub_258A28B90(&qword_27F96E060, &qword_27F96E018, MEMORY[0x277CDF020], MEMORY[0x277CDF028]);
    sub_258A28BD4(&qword_280DF8950, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96EA48);
  }

  return result;
}

uint64_t sub_258A295A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258A2960C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_258A29684(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for CustomReminderView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

void sub_258A296F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_258A2975C(uint64_t a1)
{
  if (!qword_27F96EA70)
  {
    sub_258B00A14();
    sub_258A28108(255);
    sub_258A282F0(255);
    sub_258A284A8(255);
    sub_258A28628(255);
    sub_258A28764(255);
    sub_2589C60B0(255);
    sub_258A28BD4(&qword_27F96EA20, sub_258A28764, MEMORY[0x277CDE5A0]);
    sub_2589C6164(255);
    sub_258A28BD4(&qword_27F96CBA8, sub_2589C6164, MEMORY[0x277CDD7A8]);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_2589BFF58(OpaqueTypeConformance2, v1, v2);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    v3 = sub_258B00B34();
    if (!v4)
    {
      atomic_store(v3, &qword_27F96EA70);
    }
  }
}

uint64_t sub_258A29974(char a1)
{
  if (*(v1 + 16) == 1 && (a1 & 1) == 0)
  {
    if (qword_27F96C240 == -1)
    {
      return sub_258AFFD94();
    }

    goto LABEL_7;
  }

  if (qword_27F96C240 != -1)
  {
LABEL_7:
    swift_once();
  }

  return sub_258AFFD94();
}

uint64_t sub_258A29A78@<X0>(uint64_t a1@<X8>)
{
  v71 = a1;
  v55 = type metadata accessor for CustomReminderModel(0);
  v1 = MEMORY[0x28223BE20](v55);
  v58 = &v54 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v70 = (&v54 - v3);
  v4 = sub_258B00384();
  v60 = *(v4 - 8);
  v61 = v4;
  MEMORY[0x28223BE20](v4);
  v59 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A2A608(0, &qword_27F96EBF0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v66 = &v54 - v7;
  v8 = sub_258AFFD44();
  v68 = *(v8 - 8);
  v69 = v8;
  MEMORY[0x28223BE20](v8);
  v72 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_258B00224();
  v62 = v10;
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_258B00084();
  v65 = *(v14 - 8);
  v15 = v65;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v54 - v19;
  sub_258B001E4();
  sub_258B00044();
  sub_258B00114();
  v56 = *(v15 + 8);
  v57 = v15 + 8;
  v56(v18, v14);
  v21 = *(v11 + 8);
  v63 = v11 + 8;
  v64 = v21;
  v21(v13, v10);
  sub_258B001E4();
  sub_258A2A608(0, &qword_27F96EA30, MEMORY[0x277CC99D0], MEMORY[0x277D84560]);
  v22 = sub_258B00204();
  v23 = *(v22 - 8);
  v24 = *(v23 + 72);
  v25 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_258B2F370;
  v27 = v26 + v25;
  v28 = *(v23 + 104);
  v28(v27, *MEMORY[0x277CC9978], v22);
  v28(v27 + v24, *MEMORY[0x277CC9988], v22);
  v28(v27 + 2 * v24, *MEMORY[0x277CC9998], v22);
  v29 = 3 * v24;
  v30 = v67;
  v28(v27 + v29, *MEMORY[0x277CC9968], v22);
  v31 = v14;
  sub_258A95E28(v26);
  swift_setDeallocating();
  v32 = v72;
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_258B00144();

  v33 = v62;
  v34 = v64;
  v64(v13, v62);
  sub_258AFFCF4();
  sub_258AFFD14();
  sub_258B001E4();
  v35 = v66;
  sub_258B001B4();
  v36 = v13;
  v37 = v65;
  v34(v36, v33);
  if ((*(v37 + 48))(v35, 1, v31) == 1)
  {
    sub_258A2A66C(v35);
    v38 = v59;
    sub_258B00364();
    sub_258A2A6F8(v30, v70);
    v39 = v58;
    sub_258A2A6F8(v30, v58);
    v40 = sub_258B00374();
    v41 = sub_258B02E84();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v67 = v20;
      v44 = v31;
      v45 = v43;
      *v42 = 136446722;
      v73 = v55;
      v74 = v43;
      sub_258A2A7B8();
      v46 = sub_258B02B34();
      v48 = v37;
      v49 = sub_2589F1F78(v46, v47, &v74);

      *(v42 + 4) = v49;
      *(v42 + 12) = 2048;
      v50 = *v70;
      sub_258A2A75C(v70);
      *(v42 + 14) = v50;
      v37 = v48;
      *(v42 + 22) = 2048;
      v51 = *(v39 + 8);
      sub_258A2A75C(v39);
      *(v42 + 24) = v51;
      _os_log_impl(&dword_2589A1000, v40, v41, "[%{public}s] Could not construct date with time components: %ld:%ld", v42, 0x20u);
      __swift_destroy_boxed_opaque_existential_1(v45);
      v52 = v45;
      v31 = v44;
      MEMORY[0x259C945C0](v52, -1, -1);
      MEMORY[0x259C945C0](v42, -1, -1);

      (*(v60 + 8))(v38, v61);
      (*(v68 + 8))(v72, v69);
      v35 = v67;
    }

    else
    {
      sub_258A2A75C(v39);
      sub_258A2A75C(v70);

      (*(v60 + 8))(v38, v61);
      (*(v68 + 8))(v32, v69);
      v35 = v20;
    }
  }

  else
  {
    (*(v68 + 8))(v32, v69);
    v56(v20, v31);
  }

  return (*(v37 + 32))(v71, v35, v31);
}

uint64_t sub_258A2A268@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_258A2A608(0, &qword_27F96EA28, MEMORY[0x277CC8990], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v25 - v5;
  v7 = sub_258AFFD44();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v25 - v12;
  if (a1)
  {
    v14 = [a1 dateComponents];
    sub_258AFFCD4();

    (*(v8 + 32))(v13, v11, v7);
    v15 = sub_258AFFCE4();
    if (v16)
    {
      v17 = 0;
    }

    else
    {
      v17 = v15;
    }

    *a2 = v17;
    v18 = sub_258AFFD04();
    v20 = v19;
    (*(v8 + 8))(v13, v7);
    if (v20)
    {
      v21 = 0;
    }

    else
    {
      v21 = v18;
    }

    *(a2 + 8) = v21;
    *(a2 + 17) = 0;
    *(a2 + 16) = [a1 isEnabled];
    v22 = [a1 dateComponents];
    sub_258AFFCD4();

    (*(v8 + 56))(v6, 0, 1, v7);
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 257;
    (*(v8 + 56))(v6, 1, 1, v7);
  }

  v23 = type metadata accessor for CustomReminderModel(0);
  return sub_258A28F68(v6, a2 + *(v23 + 32));
}

uint64_t type metadata accessor for CustomReminderModel(uint64_t a1)
{
  result = qword_27F96EA78;
  if (!qword_27F96EA78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258A2A550(uint64_t a1)
{
  sub_258A2A608(319, &qword_27F96EA28, MEMORY[0x277CC8990], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_258A2A608(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_258A2A66C(uint64_t a1)
{
  sub_258A2A608(0, &qword_27F96EBF0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_258A2A6F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CustomReminderModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258A2A75C(uint64_t a1)
{
  v2 = type metadata accessor for CustomReminderModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_258A2A7B8()
{
  result = qword_27F96EA88;
  if (!qword_27F96EA88)
  {
    type metadata accessor for CustomReminderModel(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_27F96EA88);
  }

  return result;
}

uint64_t sub_258A2A800()
{
  sub_258B00E34();
  type metadata accessor for ValenceSelectionPhaseSpecs(0);
  return sub_258B00D84();
}

uint64_t type metadata accessor for ValenceSelectionPhaseSpecs(uint64_t a1)
{
  result = qword_27F96EA90;
  if (!qword_27F96EA90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258A2A8AC(uint64_t a1)
{
  sub_258A07454(319);
  if (v1 <= 0x3F)
  {
    sub_258B00AA4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_258A2A930()
{
  v1 = v0;
  v2 = sub_258B00AA4();
  v31 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_258B01504();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A2AE68(0);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A07454(0);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v29 - v16;
  (*(v5 + 104))(&v29 - v16, *MEMORY[0x277CE0560], v4);
  (*(v5 + 56))(v17, 0, 1, v4);
  v18 = *(v9 + 56);
  v32 = v1;
  sub_258A2AECC(v1, v11);
  sub_258A2AECC(v17, &v11[v18]);
  v19 = *(v5 + 48);
  if (v19(v11, 1, v4) == 1)
  {
    sub_258A2AF30(v17, sub_258A07454);
    if (v19(&v11[v18], 1, v4) == 1)
    {
      sub_258A2AF30(v11, sub_258A07454);
      goto LABEL_8;
    }

LABEL_6:
    sub_258A2AF30(v11, sub_258A2AE68);
    return 3;
  }

  sub_258A2AECC(v11, v15);
  if (v19(&v11[v18], 1, v4) == 1)
  {
    sub_258A2AF30(v17, sub_258A07454);
    (*(v5 + 8))(v15, v4);
    goto LABEL_6;
  }

  (*(v5 + 32))(v7, &v11[v18], v4);
  sub_258A2AF90(&qword_27F96EAA8, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
  v21 = sub_258B02AA4();
  v22 = *(v5 + 8);
  v22(v7, v4);
  sub_258A2AF30(v17, sub_258A07454);
  v22(v15, v4);
  sub_258A2AF30(v11, sub_258A07454);
  if ((v21 & 1) == 0)
  {
    return 3;
  }

LABEL_8:
  type metadata accessor for ValenceSelectionPhaseSpecs(0);
  v24 = v30;
  v23 = v31;
  v25 = *(v31 + 104);
  v25(v30, *MEMORY[0x277CDF9A8], v2);
  sub_258A2AF90(&qword_27F96D020, MEMORY[0x277CDFA28], MEMORY[0x277CDFA38]);
  v26 = sub_258B02A54();
  v27 = *(v23 + 8);
  v27(v24, v2);
  if ((v26 & 1) == 0)
  {
    return 1;
  }

  v25(v24, *MEMORY[0x277CDF9F0], v2);
  v28 = sub_258B02A54();
  v27(v24, v2);
  if (v28)
  {
    return 3;
  }

  return 2;
}

void sub_258A2AE68(uint64_t a1)
{
  if (!qword_27F96EAA0)
  {
    sub_258A07454(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F96EAA0);
    }
  }
}

uint64_t sub_258A2AECC(uint64_t a1, uint64_t a2)
{
  sub_258A07454(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258A2AF30(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_258A2AF90(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_258A2AFD8@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_258B00AA4();
  v16 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MobileGestalt_get_current_device();
  v8 = result;
  if (a1)
  {
    if (result)
    {
      homeButtonType = MobileGestalt_get_homeButtonType();

      v10 = *(v16 + 104);
      if (homeButtonType == 2)
      {
        v11 = MEMORY[0x277CDF988];
      }

      else
      {
        v11 = MEMORY[0x277CDFA10];
      }

      v14 = *v11;

      return v10(a2, v14, v4);
    }

    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (!result)
  {
    goto LABEL_14;
  }

  v12 = MobileGestalt_get_homeButtonType();

  v13 = MEMORY[0x277CDF9A8];
  if (v12 != 2)
  {
    v13 = MEMORY[0x277CDF988];
  }

  (*(v16 + 104))(v6, *v13, v4);
  return (*(v16 + 32))(a2, v6, v4);
}

double sub_258A2B188()
{
  v1 = v0;
  v2 = sub_258B01504();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A2AE68(0);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A07454(0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v22 - v14;
  (*(v3 + 104))(&v22 - v14, *MEMORY[0x277CE0560], v2);
  (*(v3 + 56))(v15, 0, 1, v2);
  v16 = *(v7 + 56);
  sub_258A2AECC(v1, v9);
  sub_258A2AECC(v15, &v9[v16]);
  v17 = *(v3 + 48);
  if (v17(v9, 1, v2) == 1)
  {
    sub_258A2AF30(v15, sub_258A07454);
    if (v17(&v9[v16], 1, v2) == 1)
    {
      sub_258A2AF30(v9, sub_258A07454);
      return 30.0;
    }
  }

  else
  {
    sub_258A2AECC(v9, v13);
    if (v17(&v9[v16], 1, v2) != 1)
    {
      (*(v3 + 32))(v5, &v9[v16], v2);
      sub_258A2AF90(&qword_27F96EAA8, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
      v20 = sub_258B02AA4();
      v21 = *(v3 + 8);
      v21(v5, v2);
      sub_258A2AF30(v15, sub_258A07454);
      v21(v13, v2);
      sub_258A2AF30(v9, sub_258A07454);
      result = 30.0;
      if (v20)
      {
        return result;
      }

      goto LABEL_7;
    }

    sub_258A2AF30(v15, sub_258A07454);
    (*(v3 + 8))(v13, v2);
  }

  sub_258A2AF30(v9, sub_258A2AE68);
LABEL_7:
  type metadata accessor for ValenceSelectionPhaseSpecs(0);
  v19 = sub_258B00A84();
  result = 16.0;
  if (v19)
  {
    return 6.0;
  }

  return result;
}

uint64_t sub_258A2B554(uint64_t a1, uint64_t a2)
{
  v4 = _s5EntryVMa(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v41 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    return 0;
  }

  if (!v11 || a1 == a2)
  {
    return 1;
  }

  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v15 = *(v8 + 72);
  while (1)
  {
    result = sub_258A2C4E4(v13, v10);
    if (!v11)
    {
      break;
    }

    sub_258A2C4E4(v14, v7);
    if ((sub_258B000A4() & 1) == 0 || ((v21 = v4[5], v22 = *&v10[v21], v23 = *&v10[v21 + 8], v24 = &v7[v21], v22 == *v24) ? (v25 = v23 == *(v24 + 1)) : (v25 = 0), !v25 && (sub_258B03454() & 1) == 0 || ((v26 = v4[6], v27 = *&v10[v26], v28 = *&v10[v26 + 8], v29 = &v7[v26], v27 == *v29) ? (v30 = v28 == *(v29 + 1)) : (v30 = 0), !v30 && (sub_258B03454() & 1) == 0 || ((v31 = v4[7], v32 = *&v10[v31], v33 = *&v10[v31 + 8], v34 = &v7[v31], v32 == *v34) ? (v35 = v33 == *(v34 + 1)) : (v35 = 0), !v35 && (sub_258B03454() & 1) == 0 || ((v36 = v4[8], v37 = *&v10[v36], v38 = *&v10[v36 + 8], v39 = &v7[v36], v37 == *v39) ? (v40 = v38 == *(v39 + 1)) : (v40 = 0), !v40 && (sub_258B03454() & 1) == 0)))))
    {
      sub_258A2C610(v7, _s5EntryVMa);
      sub_258A2C610(v10, _s5EntryVMa);
      return 0;
    }

    v16 = v4[9];
    v17 = *&v10[v16];
    v18 = *&v7[v16];
    sub_258A2C610(v7, _s5EntryVMa);
    sub_258A2C610(v10, _s5EntryVMa);
    result = v17 == v18;
    v20 = v17 != v18 || v11-- == 1;
    v14 += v15;
    v13 += v15;
    if (v20)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_258A2B7D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_258B03454() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t StateOfMindTimeline.DaySummary.hash(into:)(uint64_t a1)
{
  v3 = _s5EntryVMa(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A2C484(0, &qword_27F96D908, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  MEMORY[0x259C93B20](*v1);
  v10 = type metadata accessor for StateOfMindTimeline.DaySummary(0);
  sub_258B029C4();
  sub_258A2C5C8(&qword_27F9706A0, MEMORY[0x277CCB6A8], MEMORY[0x277CCB6B0]);
  sub_258B02A24();
  sub_258B02B74();
  sub_258A2C284(v1 + v10[7], v9);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    sub_258B03534();
  }

  else
  {
    sub_2589F56E4(v9, v6);
    sub_258B03534();
    sub_258B000C4();
    sub_258A2C5C8(&qword_27F96EAB0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    sub_258B02A24();
    sub_258B02B74();
    sub_258B02B74();
    sub_258B02B74();
    sub_258B02B74();
    v11 = *&v6[*(v3 + 36)];
    if (v11 == 0.0)
    {
      v11 = 0.0;
    }

    MEMORY[0x259C93B40](*&v11);
    sub_258A2C610(v6, _s5EntryVMa);
  }

  sub_258A2BCC8(a1, *(v1 + v10[8]));
  v12 = *(v1 + v10[9]);
  result = MEMORY[0x259C93B20](*(v12 + 16));
  v14 = *(v12 + 16);
  if (v14)
  {
    v15 = v12 + 40;
    do
    {
      sub_258B003E4();
      sub_258B02B74();

      v15 += 16;
      --v14;
    }

    while (v14);
  }

  return result;
}

uint64_t StateOfMindTimeline.DaySummary.hashValue.getter()
{
  sub_258B03514();
  StateOfMindTimeline.DaySummary.hash(into:)(v1);
  return sub_258B03554();
}

uint64_t sub_258A2BBE8()
{
  sub_258B03514();
  StateOfMindTimeline.DaySummary.hash(into:)(v1);
  return sub_258B03554();
}

uint64_t sub_258A2BC2C(uint64_t a1)
{
  sub_258B03514();
  StateOfMindTimeline.DaySummary.hash(into:)(v2);
  return sub_258B03554();
}

uint64_t sub_258A2BC98@<X0>(uint64_t *a1@<X8>)
{
  result = sub_258B02984();
  *a1 = result;
  return result;
}

uint64_t sub_258A2BCC8(uint64_t a1, uint64_t a2)
{
  v3 = _s5EntryVMa(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a2 + 16);
  result = MEMORY[0x259C93B20](v7);
  if (v7)
  {
    v9 = *(v3 + 36);
    v10 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);
    v13 = v9;
    do
    {
      sub_258A2C4E4(v10, v6);
      sub_258B000C4();
      sub_258A2C5C8(&qword_27F96EAB0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      sub_258B02A24();
      sub_258B02B74();
      sub_258B02B74();
      sub_258B02B74();
      sub_258B02B74();
      v11 = *&v6[v13];
      if (v11 == 0.0)
      {
        v11 = 0.0;
      }

      MEMORY[0x259C93B40](*&v11);
      result = sub_258A2C610(v6, _s5EntryVMa);
      v10 += v12;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t _s14MentalHealthUI19StateOfMindTimelineO10DaySummaryV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = _s5EntryVMa(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A2C484(0, &qword_27F96D908, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v26 - v9;
  sub_258A2C548(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 != *a2)
  {
    goto LABEL_3;
  }

  v26[0] = v12;
  v15 = type metadata accessor for StateOfMindTimeline.DaySummary(0);
  sub_258B029C4();
  sub_258A2C5C8(&unk_27F9706C0, MEMORY[0x277CCB6A8], MEMORY[0x277CCB6C8]);
  sub_258B030E4();
  if (v26[1])
  {
    goto LABEL_3;
  }

  v18 = v15[6];
  v19 = *(a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  if ((v19 != *v21 || v20 != v21[1]) && (sub_258B03454() & 1) == 0)
  {
    goto LABEL_3;
  }

  v22 = v15[7];
  v23 = *(v26[0] + 48);
  sub_258A2C284(a1 + v22, v14);
  sub_258A2C284(a2 + v22, &v14[v23]);
  v24 = *(v5 + 48);
  if (v24(v14, 1, v4) != 1)
  {
    sub_258A2C284(v14, v10);
    if (v24(&v14[v23], 1, v4) != 1)
    {
      sub_2589F56E4(&v14[v23], v7);
      v25 = sub_258ABAEE0(v10, v7);
      sub_258A2C610(v7, _s5EntryVMa);
      sub_258A2C610(v10, _s5EntryVMa);
      sub_258A2C670(v14);
      if (!v25)
      {
        goto LABEL_3;
      }

      goto LABEL_15;
    }

    sub_258A2C610(v10, _s5EntryVMa);
LABEL_13:
    sub_258A2C610(v14, sub_258A2C548);
    goto LABEL_3;
  }

  if (v24(&v14[v23], 1, v4) != 1)
  {
    goto LABEL_13;
  }

  sub_258A2C670(v14);
LABEL_15:
  if (sub_258A2B554(*(a1 + v15[8]), *(a2 + v15[8])))
  {
    v16 = sub_258A2B7D8(*(a1 + v15[9]), *(a2 + v15[9]));
    return v16 & 1;
  }

LABEL_3:
  v16 = 0;
  return v16 & 1;
}

uint64_t type metadata accessor for StateOfMindTimeline.DaySummary(uint64_t a1)
{
  result = qword_27F96EAC0;
  if (!qword_27F96EAC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258A2C284(uint64_t a1, uint64_t a2)
{
  sub_258A2C484(0, &qword_27F96D908, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_258A2C380(uint64_t a1)
{
  sub_258B029C4();
  if (v1 <= 0x3F)
  {
    sub_258A2C484(319, &qword_27F96D908, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_258A2C484(319, &qword_27F96EAD0, MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        sub_2589FCE08();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_258A2C484(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = _s5EntryVMa(255);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_258A2C4E4(uint64_t a1, uint64_t a2)
{
  v4 = _s5EntryVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_258A2C548(uint64_t a1)
{
  if (!qword_27F96EAD8)
  {
    sub_258A2C484(255, &qword_27F96D908, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F96EAD8);
    }
  }
}

uint64_t sub_258A2C5C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_258A2C610(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_258A2C670(uint64_t a1)
{
  sub_258A2C484(0, &qword_27F96D908, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id static CAGradientLayer.gradientLayerForValence(_:style:)(uint64_t a1, double a2)
{
  sub_258A2D6EC(0, &qword_27F96EAE0, MEMORY[0x277CDF3E0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v42 - v4;
  v6 = sub_258B006A4();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v47 = &v42 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v48 = &v42 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v42 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v42 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v42 - v21;
  v49 = [objc_allocWithZone(MEMORY[0x277CD9EB0]) init];
  sub_258B006B4();
  v23 = *(v7 + 48);
  if (v23(v5, 1, v6) == 1)
  {
    (*(v7 + 104))(v22, *MEMORY[0x277CDF3D0], v6);
    if (v23(v5, 1, v6) != 1)
    {
      sub_258A2D304(v5);
    }
  }

  else
  {
    (*(v7 + 32))(v22, v5, v6);
  }

  sub_258A2D390();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_258B2F490;
  v24 = *(v7 + 16);
  v45 = v24;
  v24(v20, v22, v6);
  v24(v17, v20, v6);
  v25 = fmax(fmin(a2, 1.0), -1.0);
  v44 = *MEMORY[0x277CDF3C0];
  v43 = *(v7 + 104);
  v43(v10);
  sub_258B00694();
  v46 = v20;
  v26 = *(v7 + 8);
  v26(v10, v6);
  KeyPath = swift_getKeyPath();
  sub_258A2D6A0();
  sub_258A84538(KeyPath, v25);
  v50 = v22;

  sub_258B01F74();
  v26(v17, v6);
  v28 = sub_258B030A4();
  v26(v46, v6);
  v29 = [v28 CGColor];

  v30 = v50;
  v31 = inited;
  *(inited + 32) = v29;
  v46 = (v31 + 32);
  v32 = v48;
  v33 = v45;
  v45(v48, v30, v6);
  v34 = v47;
  v33(v47, v32, v6);
  (v43)(v10, v44, v6);
  sub_258B00694();
  v26(v10, v6);
  v35 = swift_getKeyPath();
  sub_258A84538(v35, v25);

  sub_258B01F74();
  v26(v34, v6);
  v36 = sub_258B030A4();
  v26(v32, v6);
  v37 = [v36 CGColor];

  v38 = inited;
  *(inited + 40) = v37;
  sub_258A2CCB0(v38);
  swift_setDeallocating();
  swift_arrayDestroy();
  v39 = sub_258B02C64();

  v40 = v49;
  [v49 setColors_];

  v26(v50, v6);
  return v40;
}

char *sub_258A2CCB0(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_258B032B4();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x277D84F90];
  result = sub_258AA928C(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x259C937C0](i, a1);
        type metadata accessor for CGColor(0);
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_258AA928C((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_258A2D784(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      type metadata accessor for CGColor(0);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_258AA928C((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        sub_258A2D784(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_258A2CE7C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v11 = MEMORY[0x277D84F90];
    sub_258AA928C(0, v1, 0);
    v2 = v11;
    v4 = (a1 + 32);
    sub_258A2D750(0);
    do
    {
      v5 = *v4++;
      v6 = v5;
      swift_dynamicCast();
      v11 = v2;
      v8 = *(v2 + 16);
      v7 = *(v2 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_258AA928C((v7 > 1), v8 + 1, 1);
        v2 = v11;
      }

      *(v2 + 16) = v8 + 1;
      sub_258A2D784(&v10, (v2 + 32 * v8 + 32));
      --v1;
    }

    while (v1);
  }

  return v2;
}

id static CAGradientLayer.gradientLayerForValenceClassification(_:style:)(CGColor *a1, uint64_t a2)
{
  v23 = a1;
  sub_258A2D6EC(0, &qword_27F96EAE0, MEMORY[0x277CDF3E0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v21 - v3;
  v5 = sub_258B006A4();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v21 - v10;
  v22 = [objc_allocWithZone(MEMORY[0x277CD9EB0]) init];
  sub_258B006B4();
  v12 = *(v6 + 48);
  if (v12(v4, 1, v5) == 1)
  {
    (*(v6 + 104))(v11, *MEMORY[0x277CDF3D0], v5);
    if (v12(v4, 1, v5) != 1)
    {
      sub_258A2D304(v4);
    }
  }

  else
  {
    (*(v6 + 32))(v11, v4, v5);
  }

  sub_258A2D6EC(0, &qword_27F96EAF0, sub_258A2D750, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_258B2BE60;
  v24 = 1;
  v14 = *(v6 + 16);
  v14(v9, v11, v5);
  v15 = v23;
  Color.init(valenceClassification:variant:colorScheme:)(v23, &v24, v9);
  v16 = sub_258B01F84();

  *(inited + 32) = v16;
  v24 = 0;
  v14(v9, v11, v5);
  Color.init(valenceClassification:variant:colorScheme:)(v15, &v24, v9);
  v17 = sub_258B01F84();

  *(inited + 40) = v17;
  sub_258A2CE7C(inited);
  swift_setDeallocating();
  sub_258A2D750(0);
  swift_arrayDestroy();
  v18 = sub_258B02C64();

  v19 = v22;
  [v22 setColors_];

  (*(v6 + 8))(v11, v5);
  return v19;
}

uint64_t sub_258A2D304(uint64_t a1)
{
  sub_258A2D6EC(0, &qword_27F96EAE0, MEMORY[0x277CDF3E0], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_258A2D390()
{
  if (!qword_27F970720)
  {
    v0 = sub_258B03424();
    if (!v1)
    {
      atomic_store(v0, &qword_27F970720);
    }
  }
}

CGColorRef sub_258A2D3E4@<X0>(CGColorRef *a1@<X8>)
{
  result = CGColorCreateGenericRGB(0.0, 0.0, 0.0, 1.0);
  *a1 = result;
  return result;
}

CGColorRef sub_258A2D41C@<X0>(_BYTE *a1@<X0>, CGColorRef *a2@<X8>)
{
  v3 = *a1;
  if (v3 <= 2)
  {
    if (*a1)
    {
      if (v3 == 1)
      {
        v4 = 0.666666667;
        v5 = 0.709803922;
      }

      else
      {
        v4 = 0.68627451;
        v5 = 0.752941176;
      }

      v6 = 0.878431373;
    }

    else
    {
      v4 = 0.623529412;
      v5 = 0.588235294;
      v6 = 0.733333333;
    }
  }

  else if (*a1 > 4u)
  {
    if (v3 == 5)
    {
      v4 = 0.956862745;
      v5 = 0.819607843;
      v6 = 0.619607843;
    }

    else
    {
      v4 = 0.996078431;
      v5 = 0.737254902;
      v6 = 0.392156863;
    }
  }

  else if (v3 == 3)
  {
    v4 = 0.741176471;
    v5 = 0.82745098;
    v6 = 0.839215686;
  }

  else
  {
    v4 = 0.682352941;
    v5 = 0.788235294;
    v6 = 0.501960784;
  }

  result = CGColorCreateGenericRGB(v4, v5, v6, 1.0);
  *a2 = result;
  return result;
}

CGColorRef sub_258A2D544@<X0>(CGColorRef *a1@<X8>)
{
  result = sub_258A82FA8();
  *a1 = result;
  return result;
}

CGColorRef sub_258A2D580@<X0>(_BYTE *a1@<X0>, CGColorRef *a2@<X8>)
{
  v3 = *a1;
  if (v3 <= 2)
  {
    if (*a1)
    {
      if (v3 == 1)
      {
        v4 = 0.874509804;
        v5 = 0.898039216;
        v6 = 1.0;
      }

      else
      {
        v4 = 0.807843137;
        v5 = 0.847058824;
        v6 = 0.905882353;
      }
    }

    else
    {
      v4 = 0.815686275;
      v5 = 0.776470588;
      v6 = 0.941176471;
    }
  }

  else if (*a1 > 4u)
  {
    if (v3 == 5)
    {
      v4 = 0.964705882;
      v5 = 0.831372549;
      v6 = 0.635294118;
    }

    else
    {
      v5 = 0.917647059;
      v6 = 0.882352941;
      v4 = 1.0;
    }
  }

  else if (v3 == 3)
  {
    v4 = 0.858823529;
    v5 = 0.882352941;
    v6 = 0.88627451;
  }

  else
  {
    v4 = 0.807843137;
    v5 = 0.901960784;
    v6 = 0.643137255;
  }

  result = CGColorCreateGenericRGB(v4, v5, v6, 1.0);
  *a2 = result;
  return result;
}

unint64_t sub_258A2D6A0()
{
  result = qword_27F96EAE8;
  if (!qword_27F96EAE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F96EAE8);
  }

  return result;
}

void sub_258A2D6EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

_OWORD *sub_258A2D784(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t type metadata accessor for ReflectiveIntervalsSelectionPhaseContent(uint64_t a1)
{
  result = qword_27F96EB08;
  if (!qword_27F96EB08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258A2D808(uint64_t a1)
{
  sub_258A2E7D8(319, &qword_27F96EB18, type metadata accessor for __HKStateOfMindReflectiveInterval, MEMORY[0x277CE11F8]);
  if (v1 <= 0x3F)
  {
    sub_258A2E7D8(319, &qword_27F96EA60, MEMORY[0x277CC9578], MEMORY[0x277CE11F8]);
    if (v2 <= 0x3F)
    {
      sub_258A2D96C();
      if (v3 <= 0x3F)
      {
        sub_2589C0D10();
        if (v4 <= 0x3F)
        {
          sub_258A2E7D8(319, &qword_27F96EB00, type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs, MEMORY[0x277CDF468]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_258A2D96C()
{
  if (!qword_27F971C90)
  {
    v0 = sub_258B02364();
    if (!v1)
    {
      atomic_store(v0, &qword_27F971C90);
    }
  }
}

uint64_t sub_258A2D9D8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_258B00F84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A2E7D8(0, &qword_27F96D7C8, type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs, MEMORY[0x277CDF458]);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for ReflectiveIntervalsSelectionPhaseContent(0);
  sub_258A2E904(v1 + *(v10 + 36), v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_258A2E998(v9, a1, type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs);
  }

  sub_258B02E94();
  v12 = sub_258B01824();
  sub_258B00354();

  sub_258B00F74();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_258A2DBD0@<X0>(__int128 *a1@<X0>, double *a2@<X8>)
{
  v89 = a2;
  sub_258A2E7B0(0);
  v95 = v3;
  MEMORY[0x28223BE20](v3);
  v96 = v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A2E788(0);
  v97 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v100 = v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v94 = v85 - v9;
  MEMORY[0x28223BE20](v8);
  v99 = v85 - v10;
  sub_258A2E760(0);
  v91 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = (v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_258A2E6D4(0);
  *&v92 = v14;
  v15 = MEMORY[0x28223BE20](v14);
  v98 = v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v87 = v85 - v18;
  MEMORY[0x28223BE20](v17);
  v101 = v85 - v19;
  v20 = type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs(0);
  v21 = MEMORY[0x28223BE20](v20);
  v23 = v85 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v85 - v24;
  v93 = sub_258B01884();
  sub_258A2D9D8(v25);
  sub_258B00A84();
  sub_258A2E8A4(v25, type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs);
  v26 = 0.0;
  sub_258B00654();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v35 = type metadata accessor for ReflectiveIntervalsSelectionPhaseContent(0);
  v36 = a1 + *(v35 + 24);
  v37 = *v36;
  v38 = *(v36 + 1);
  LODWORD(v36) = v36[16];
  v39 = v37;
  *&v104 = v37;
  *(&v104 + 1) = v38;
  v90 = v38;
  v88 = v36;
  LOBYTE(v105) = v36;
  sub_258A2D96C();
  v86 = v40;
  MEMORY[0x259C92900](&v102);
  v41 = v102;
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  if (v41)
  {
    v42 = 1.0;
  }

  else
  {
    v42 = 0.0;
  }

  v43 = sub_258AFFD94();
  v45 = v44;
  v85[3] = *(v35 + 20);
  v46 = type metadata accessor for ReflectiveIntervalSelectionHeaderText(0);
  v47 = MEMORY[0x277CE11F8];
  sub_258A2E7D8(0, &qword_27F96EA60, MEMORY[0x277CC9578], MEMORY[0x277CE11F8]);
  v85[2] = v48;
  MEMORY[0x259C92900]();
  *v13 = v43;
  v13[1] = v45;
  v49 = v46[6];
  *(v13 + v49) = swift_getKeyPath();
  v50 = MEMORY[0x277CDF458];
  sub_258A2E7D8(0, &qword_27F96D7C0, MEMORY[0x277CC99E8], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v51 = v46[7];
  *(v13 + v51) = swift_getKeyPath();
  sub_258A2E7D8(0, &qword_27F96C908, MEMORY[0x277CDF3E0], v50);
  swift_storeEnumTagMultiPayload();
  v52 = v46[8];
  *(v13 + v52) = swift_getKeyPath();
  sub_258A2E7D8(0, &qword_27F96D7C8, type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs, v50);
  v85[1] = v53;
  swift_storeEnumTagMultiPayload();
  LOBYTE(v52) = sub_258B01884();
  sub_258A2D9D8(v23);
  v85[0] = type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs;
  sub_258A2E8A4(v23, type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs);
  sub_258B00654();
  v54 = v13 + *(v91 + 36);
  *v54 = v52;
  *(v54 + 1) = v55;
  *(v54 + 2) = v56;
  *(v54 + 3) = v57;
  *(v54 + 4) = v58;
  v54[40] = 0;
  v59 = v90;
  *&v104 = v39;
  *(&v104 + 1) = v90;
  v60 = v88;
  LOBYTE(v105) = v88;
  v61 = v86;
  MEMORY[0x259C92900](&v102, v86);
  if (v102)
  {
    v62 = 1.0;
  }

  else
  {
    v62 = 0.0;
  }

  v63 = v87;
  sub_258A2E998(v13, v87, sub_258A2E760);
  *(v63 + *(v92 + 36)) = v62;
  sub_258A2E998(v63, v101, sub_258A2E6D4);
  v64 = *(a1 + 2);
  v104 = *a1;
  v105 = v64;
  sub_258A2E7D8(0, &qword_27F96EB18, type metadata accessor for __HKStateOfMindReflectiveInterval, v47);
  sub_258B02334();
  v92 = v102;
  v65 = v103;
  v66 = type metadata accessor for ReflectiveIntervalPicker_iOS(0);
  v67 = v96;
  sub_258B02334();
  *v67 = v92;
  *(v67 + 16) = v65;
  v68 = *(v66 + 24);
  *(v67 + v68) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  LOBYTE(v66) = sub_258B01884();
  sub_258A2D9D8(v23);
  v69 = v85[0];
  sub_258A2E8A4(v23, v85[0]);
  sub_258B00654();
  v70 = v67 + *(v95 + 36);
  *v70 = v66;
  *(v70 + 8) = v71;
  *(v70 + 16) = v72;
  *(v70 + 24) = v73;
  *(v70 + 32) = v74;
  *(v70 + 40) = 0;
  *&v104 = v39;
  *(&v104 + 1) = v59;
  LOBYTE(v105) = v60;
  MEMORY[0x259C92900](&v102, v61);
  if (v102)
  {
    v26 = 1.0;
  }

  v75 = v94;
  sub_258A2E998(v67, v94, sub_258A2E7B0);
  *(v75 + *(v97 + 36)) = v26;
  v76 = v99;
  sub_258A2E998(v75, v99, sub_258A2E788);
  sub_258A2D9D8(v23);
  sub_258A2E8A4(v23, v69);
  v77 = v101;
  v78 = v98;
  sub_258A2E83C(v101, v98, sub_258A2E6D4);
  v79 = v100;
  sub_258A2E83C(v76, v100, sub_258A2E788);
  v80 = v89;
  *v89 = v93;
  *(v80 + 1) = v28;
  *(v80 + 2) = v30;
  *(v80 + 3) = v32;
  *(v80 + 4) = v34;
  *(v80 + 40) = 0;
  v80[6] = v42;
  sub_258A2E5C8(0);
  v82 = v81;
  sub_258A2E83C(v78, v80 + *(v81 + 48), sub_258A2E6D4);
  sub_258A2E83C(v79, v80 + *(v82 + 64), sub_258A2E788);
  v83 = v80 + *(v82 + 80);
  *v83 = 0x4038000000000000;
  v83[8] = 0;
  sub_258A2E8A4(v76, sub_258A2E788);
  sub_258A2E8A4(v77, sub_258A2E6D4);
  sub_258A2E8A4(v79, sub_258A2E788);
  return sub_258A2E8A4(v78, sub_258A2E6D4);
}

uint64_t sub_258A2E4EC@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_258B01194();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_258A2E530(0);
  return sub_258A2DBD0(v2, (a2 + *(v4 + 44)));
}

void sub_258A2E530(uint64_t a1)
{
  if (!qword_27F96EB20)
  {
    sub_258A2E7D8(255, &qword_27F96EB28, sub_258A2E5C8, MEMORY[0x277CE14B8]);
    v1 = sub_258B00974();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96EB20);
    }
  }
}

void sub_258A2E5C8(uint64_t a1)
{
  if (!qword_27F96EB30)
  {
    sub_258A2E6FC(255, &qword_27F96EB38, sub_258A2E67C, MEMORY[0x277CDF910]);
    sub_258A2E6D4(255);
    sub_258A2E788(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_27F96EB30);
    }
  }
}

void sub_258A2E67C()
{
  if (!qword_27F96EB40)
  {
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96EB40);
    }
  }
}

void sub_258A2E6FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_258A2E7D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_258A2E83C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258A2E8A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_258A2E904(uint64_t a1, uint64_t a2)
{
  sub_258A2E7D8(0, &qword_27F96D7C8, type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs, MEMORY[0x277CDF458]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258A2E998(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_258A2EA00()
{
  result = qword_27F96EB68;
  if (!qword_27F96EB68)
  {
    sub_258A2EA58(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96EB68);
  }

  return result;
}

void sub_258A2EA58(uint64_t a1)
{
  if (!qword_27F96EB70)
  {
    sub_258A2E7D8(255, &qword_27F96EB28, sub_258A2E5C8, MEMORY[0x277CE14B8]);
    sub_258A2EAEC();
    v1 = sub_258B022D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96EB70);
    }
  }
}

unint64_t sub_258A2EAEC()
{
  result = qword_27F96EB78;
  if (!qword_27F96EB78)
  {
    sub_258A2E7D8(255, &qword_27F96EB28, sub_258A2E5C8, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96EB78);
  }

  return result;
}

id StateOfMindOverlayContext.__allocating_init(accessibilityIdentifier:applicationItems:overlayChartController:overlayPredicate:)(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v6 = v5;
  v12 = objc_allocWithZone(v6);
  v13 = OBJC_IVAR____TtC14MentalHealthUI25StateOfMindOverlayContext_currentContextItem;
  *&v12[OBJC_IVAR____TtC14MentalHealthUI25StateOfMindOverlayContext_currentContextItem] = 0;
  v14 = &v12[OBJC_IVAR____TtC14MentalHealthUI25StateOfMindOverlayContext_accessibilityIdentifier_];
  *v14 = a1;
  *(v14 + 1) = a2;
  *&v12[OBJC_IVAR____TtC14MentalHealthUI25StateOfMindOverlayContext_overlayChartController] = a4;
  sub_2589F4488(0, &qword_27F96D870, 0x277D12830);
  v15 = a4;
  sub_258ADEBAC(a3, a5, 0);
  *&v12[OBJC_IVAR____TtC14MentalHealthUI25StateOfMindOverlayContext_overlayDisplayType] = v16;
  *&v12[OBJC_IVAR____TtC14MentalHealthUI25StateOfMindOverlayContext_overlayPredicate] = a5;
  v17 = *&v12[v13];
  *&v12[v13] = 0;
  v18 = a5;

  v21.receiver = v12;
  v21.super_class = v6;
  v19 = objc_msgSendSuper2(&v21, sel_init);

  return v19;
}

id StateOfMindOverlayContext.init(accessibilityIdentifier:applicationItems:overlayChartController:overlayPredicate:)(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v6 = v5;
  v10 = OBJC_IVAR____TtC14MentalHealthUI25StateOfMindOverlayContext_currentContextItem;
  *&v6[OBJC_IVAR____TtC14MentalHealthUI25StateOfMindOverlayContext_currentContextItem] = 0;
  v11 = &v6[OBJC_IVAR____TtC14MentalHealthUI25StateOfMindOverlayContext_accessibilityIdentifier_];
  *v11 = a1;
  *(v11 + 1) = a2;
  *&v6[OBJC_IVAR____TtC14MentalHealthUI25StateOfMindOverlayContext_overlayChartController] = a4;
  sub_2589F4488(0, &qword_27F96D870, 0x277D12830);
  v12 = a4;
  sub_258ADEBAC(a3, a5, 0);
  *&v6[OBJC_IVAR____TtC14MentalHealthUI25StateOfMindOverlayContext_overlayDisplayType] = v13;
  *&v6[OBJC_IVAR____TtC14MentalHealthUI25StateOfMindOverlayContext_overlayPredicate] = a5;
  v14 = *&v6[v10];
  *&v6[v10] = 0;
  v15 = a5;

  v18.receiver = v6;
  v18.super_class = type metadata accessor for StateOfMindOverlayContext();
  v16 = objc_msgSendSuper2(&v18, sel_init);

  return v16;
}

id sub_258A2ED8C()
{
  sub_2589F4488(0, &unk_27F96EBB0, 0x277CCDA38);
  v0 = [swift_getObjCClassFromMetadata() stateOfMindType];

  return v0;
}

void *sub_258A2EE30()
{
  v1 = *(v0 + OBJC_IVAR____TtC14MentalHealthUI25StateOfMindOverlayContext_overlayDisplayType);
  v2 = v1;
  return v1;
}

void *sub_258A2EE80(uint64_t a1, int a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v44 = a8;
  v45 = a1;
  v46 = a7;
  v47 = a3;
  v42 = a6;
  v43 = a2;
  v9 = sub_258B02624();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v50 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_258B02654();
  v49 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v48 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_258AFFBC4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v19 = result;
    sub_2589F4488(0, &qword_280DF8F98, 0x277D85C78);
    v40 = sub_258B02F54();
    (*(v15 + 16))(&v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a5, v14);
    v20 = (*(v15 + 80) + 24) & ~*(v15 + 80);
    v21 = (v16 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
    v38 = v9;
    v22 = (v21 + 23) & 0xFFFFFFFFFFFFFFF8;
    v39 = v10;
    v23 = (v21 + 39) & 0xFFFFFFFFFFFFFFF8;
    v41 = v12;
    v24 = swift_allocObject();
    *(v24 + 16) = v19;
    (*(v15 + 32))(v24 + v20, v17, v14);
    v25 = (v24 + v21);
    v27 = v45;
    v26 = v46;
    *v25 = v42;
    v25[1] = v26;
    v28 = v24 + v22;
    *v28 = v27;
    *(v28 + 8) = v43 & 1;
    v29 = v47;
    *(v24 + v23) = v47;
    *(v24 + ((v23 + 15) & 0xFFFFFFFFFFFFFFF8)) = v44;
    aBlock[4] = sub_258A310D0;
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2589E92FC;
    aBlock[3] = &block_descriptor_17;
    v30 = _Block_copy(aBlock);
    v31 = v19;

    sub_258B003E4();
    v32 = v29;

    v33 = v48;
    sub_258B02644();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_258A31400(&unk_27F96EBD0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_258A3139C(0, &qword_27F96D780, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    sub_258A31190();
    v34 = v50;
    v35 = v38;
    sub_258B03114();
    v36 = v40;
    MEMORY[0x259C93560](0, v33, v34, v30);
    _Block_release(v30);

    (*(v39 + 8))(v34, v35);
    return (*(v49 + 8))(v33, v41);
  }

  return result;
}

void sub_258A2F30C(void *a1, uint64_t a2, void (*a3)(uint64_t, id), uint64_t a4, unint64_t a5, int a6, void *a7, uint64_t a8)
{
  v115 = a8;
  v108 = a6;
  v109 = a5;
  v121 = a4;
  v122 = a3;
  v125 = a2;
  v10 = sub_258B00384();
  v119 = *(v10 - 8);
  v120 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v101[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x28223BE20](v11);
  v107 = &v101[-v15];
  MEMORY[0x28223BE20](v14);
  v17 = &v101[-v16];
  v18 = sub_258B00084();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v111 = &v101[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_258A31218(0);
  v124 = v21;
  v22 = MEMORY[0x28223BE20](v21);
  v114 = &v101[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v22);
  v25 = &v101[-v24];
  sub_258A3139C(0, &qword_27F96EBF0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v27 = MEMORY[0x28223BE20](v26 - 8);
  v110 = &v101[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v29 = MEMORY[0x28223BE20](v27);
  v112 = &v101[-v30];
  v31 = MEMORY[0x28223BE20](v29);
  v113 = &v101[-v32];
  v33 = MEMORY[0x28223BE20](v31);
  v116 = &v101[-v34];
  v35 = MEMORY[0x28223BE20](v33);
  v37 = &v101[-v36];
  MEMORY[0x28223BE20](v35);
  v39 = &v101[-v38];
  v104 = a1;
  v40 = [*(a1 + OBJC_IVAR____TtC14MentalHealthUI25StateOfMindOverlayContext_overlayChartController) primaryGraphViewController];
  v41 = [v40 graphView];

  v42 = [v41 effectiveVisibleRangeActive];
  v123 = v42;
  v43 = [v42 startDate];
  v106 = a7;
  v105 = v17;
  v117 = v13;
  if (v43)
  {
    v44 = v43;
    sub_258B00034();

    v45 = *(v19 + 56);
    v45(v39, 0, 1, v18);
  }

  else
  {
    v45 = *(v19 + 56);
    v45(v39, 1, 1, v18);
  }

  sub_258AFFBB4();
  v45(v37, 0, 1, v18);
  v46 = *(v124 + 48);
  sub_258A312AC(v39, v25);
  sub_258A312AC(v37, &v25[v46]);
  v118 = v19;
  v47 = *(v19 + 48);
  if (v47(v25, 1, v18) == 1)
  {
    sub_258A2A66C(v37);
    sub_258A2A66C(v39);
    if (v47(&v25[v46], 1, v18) != 1)
    {
LABEL_18:
      v48 = v123;
LABEL_19:
      sub_258A31340(v25);
      goto LABEL_20;
    }

    sub_258A2A66C(v25);
    v48 = v123;
  }

  else
  {
    v49 = v116;
    sub_258A312AC(v25, v116);
    if (v47(&v25[v46], 1, v18) == 1)
    {
LABEL_17:
      v60 = v118;
      sub_258A2A66C(v37);
      sub_258A2A66C(v39);
      (*(v60 + 8))(v49, v18);
      goto LABEL_18;
    }

    v50 = *(v118 + 32);
    v103 = v45;
    v51 = v111;
    v50(v111, &v25[v46], v18);
    sub_258A31400(&qword_27F96EC08, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
    v102 = sub_258B02AA4();
    v52 = *(v118 + 8);
    v53 = v51;
    v45 = v103;
    v52(v53, v18);
    sub_258A2A66C(v37);
    sub_258A2A66C(v39);
    v52(v116, v18);
    sub_258A2A66C(v25);
    v48 = v123;
    if ((v102 & 1) == 0)
    {
LABEL_20:
      v61 = v117;
      sub_258B00364();
      v62 = sub_258B00374();
      v63 = sub_258B02EA4();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v127[0] = v65;
        *v64 = 136446210;
        v66 = sub_258B035A4();
        v68 = sub_2589F1F78(v66, v67, v127);

        *(v64 + 4) = v68;
        _os_log_impl(&dword_2589A1000, v62, v63, "[%{public}s] Skipping update for irrelevant date range", v64, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v65);
        MEMORY[0x259C945C0](v65, -1, -1);
        MEMORY[0x259C945C0](v64, -1, -1);
      }

      (*(v119 + 8))(v61, v120);
      goto LABEL_23;
    }
  }

  v54 = [v48 endDate];
  if (v54)
  {
    v39 = v113;
    v55 = v54;
    sub_258B00034();

    v56 = 0;
  }

  else
  {
    v56 = 1;
    v39 = v113;
  }

  v25 = v114;
  v45(v39, v56, 1, v18);
  v57 = v112;
  sub_258AFFBA4();
  v45(v57, 0, 1, v18);
  v58 = v57;
  v59 = *(v124 + 48);
  sub_258A312AC(v39, v25);
  sub_258A312AC(v58, &v25[v59]);
  if (v47(v25, 1, v18) == 1)
  {
    sub_258A2A66C(v58);
    sub_258A2A66C(v39);
    if (v47(&v25[v59], 1, v18) == 1)
    {
      sub_258A2A66C(v25);
      goto LABEL_27;
    }

    goto LABEL_19;
  }

  v49 = v110;
  sub_258A312AC(v25, v110);
  if (v47(&v25[v59], 1, v18) == 1)
  {
    v37 = v58;
    goto LABEL_17;
  }

  v71 = v118;
  v72 = v58;
  v73 = v111;
  (*(v118 + 32))(v111, &v25[v59], v18);
  sub_258A31400(&qword_27F96EC08, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  v74 = sub_258B02AA4();
  v75 = *(v71 + 8);
  v75(v73, v18);
  sub_258A2A66C(v72);
  sub_258A2A66C(v39);
  v75(v49, v18);
  sub_258A2A66C(v25);
  if ((v74 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_27:
  if (!sub_258A2FF24(v109))
  {
    v79 = v107;
    sub_258B00364();
    v80 = sub_258B00374();
    v81 = sub_258B02E84();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v127[0] = v83;
      *v82 = 136446210;
      v84 = sub_258B035A4();
      v86 = sub_2589F1F78(v84, v85, v127);

      *(v82 + 4) = v86;
      _os_log_impl(&dword_2589A1000, v80, v81, "[%{public}s] Skipping update for incompatible chart points", v82, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v83);
      MEMORY[0x259C945C0](v83, -1, -1);
      MEMORY[0x259C945C0](v82, -1, -1);
    }

    (*(v119 + 8))(v79, v120);
    v69 = 0;
    goto LABEL_24;
  }

  if (v108)
  {
    v76 = v104;
    v77 = (*((*MEMORY[0x277D85000] & *v104) + 0xC0))();

    v78 = *(v76 + OBJC_IVAR____TtC14MentalHealthUI25StateOfMindOverlayContext_currentContextItem);
    *(v76 + OBJC_IVAR____TtC14MentalHealthUI25StateOfMindOverlayContext_currentContextItem) = v77;

LABEL_23:
    v69 = 1;
LABEL_24:
    v70 = 0;
    goto LABEL_25;
  }

  v87 = v105;
  sub_258B00364();
  v88 = v106;
  v89 = v106;
  v90 = sub_258B00374();
  v91 = sub_258B02E84();

  if (os_log_type_enabled(v90, v91))
  {
    v92 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    v127[0] = v93;
    *v92 = 136446466;
    v94 = sub_258B035A4();
    v96 = sub_2589F1F78(v94, v95, v127);

    *(v92 + 4) = v96;
    *(v92 + 12) = 2080;
    v126 = v88;
    v97 = v88;
    sub_258A3139C(0, &qword_27F96EBF8, sub_2589F3AFC, MEMORY[0x277D83D88]);
    v98 = sub_258B02B34();
    v100 = sub_2589F1F78(v98, v99, v127);

    *(v92 + 14) = v100;
    _os_log_impl(&dword_2589A1000, v90, v91, "[%{public}s] Skipping update due to fetch error: %s", v92, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C945C0](v93, -1, -1);
    MEMORY[0x259C945C0](v92, -1, -1);
  }

  (*(v119 + 8))(v87, v120);
  v69 = 0;
  v70 = v88;
LABEL_25:
  v122(v69, v70);
}

uint64_t sub_258A2FF24(unint64_t a1)
{
  v6 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_15:
    sub_258B032B4();
    sub_258B03244();
    v2 = sub_258B032B4();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_258B03244();
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x259C937C0](v3, a1);
          v4 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:
            swift_unknownObjectRelease();

            return 0;
          }
        }

        else
        {
          if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_15;
          }

          swift_unknownObjectRetain();
          v4 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_12;
          }
        }

        sub_258B027C4();
        if (!swift_dynamicCastClass())
        {
          goto LABEL_13;
        }

        sub_258B03224();
        sub_258B03254();
        sub_258B03264();
        sub_258B03234();
        ++v3;
      }

      while (v4 != v2);
    }
  }

  return v6;
}

void sub_258A30094(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 32);
  sub_258A3106C();
  v7 = sub_258B02C74();

  v8 = a4;
  v6(v7, a3, a4);
}

void sub_258A30294(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_258AFFDB4();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

uint64_t sub_258A30304()
{
  v1 = *(v0 + OBJC_IVAR____TtC14MentalHealthUI25StateOfMindOverlayContext_currentContextItem);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC14MentalHealthUI25StateOfMindOverlayContext_currentContextItem);
  }

  else
  {
    v2 = (*((*MEMORY[0x277D85000] & *v0) + 0xC0))(MEMORY[0x277D84F90]);
    v1 = 0;
  }

  v3 = v1;
  return v2;
}

id sub_258A30494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v7 = [objc_allocWithZone(MEMORY[0x277D12838]) init];
  v8 = objc_opt_self();
  v9 = sub_258B02AD4();
  v10 = [v8 hk:v9 chartOverlayAccessibilityIdentifier:?];

  if (v10)
  {
    v20 = 0;
    sub_258B02B04();

    v10 = 0;
  }

  [v7 setAccessibilityIdentifier_];

  v11 = sub_258B02AD4();
  [v7 setTitle_];

  v12 = objc_opt_self();
  v13 = [objc_opt_self() tertiarySystemBackgroundColor];
  v14 = [v12 defaultContextViewColorsUsingColor_];

  [v7 setMetricColors_];
  v15 = [v12 mindfulnessColors];
  [v7 setSelectedMetricColors_];

  v16 = sub_258B02AD4();
  if (a4)
  {
    [v7 setValue_];

    sub_258B003E4();
    v17 = sub_258B02AD4();
  }

  else
  {
    v18 = HKUILocalizedString();

    [v7 setValue_];
    v17 = sub_258B02AD4();
  }

  [v7 setUnit_];

  return v7;
}