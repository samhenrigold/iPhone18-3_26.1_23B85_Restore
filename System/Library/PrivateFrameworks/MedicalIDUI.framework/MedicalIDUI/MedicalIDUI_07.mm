uint64_t sub_25884A874(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for EditPrimaryLanguageCellView(0) + 20));
  if (*v1)
  {
    (*v1)();
  }

  sub_25884C4F4(0, &qword_27F95DAF8, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  return sub_2588BD2D8();
}

uint64_t sub_25884A928@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v29 = a1;
  v3 = type metadata accessor for EditPrimaryLanguageCellView(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v28 = v6;
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25884BB34(0);
  v27 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25884C734(v2, v7, type metadata accessor for EditPrimaryLanguageCellView);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v26[0] = swift_allocObject();
  sub_25884C7FC(v7, v26[0] + v11, type metadata accessor for EditPrimaryLanguageCellView);
  sub_25884C734(v2, v7, type metadata accessor for EditPrimaryLanguageCellView);
  v12 = swift_allocObject();
  sub_25884C7FC(v7, v12 + v11, type metadata accessor for EditPrimaryLanguageCellView);
  *v10 = swift_getKeyPath(byte_2588C5130);
  sub_25884C388(0, &qword_27F95E160, MEMORY[0x277CDFA28], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v13 = v27;
  v14 = *(v27 + 52);
  v15 = *MEMORY[0x277CDF988];
  v16 = sub_2588BC1C8();
  (*(*(v16 - 8) + 104))(&v10[v14], v15, v16);
  v17 = &v10[*(v13 + 56)];
  v18 = v26[0];
  v19 = v26[1];
  *v17 = sub_25884C27C;
  v17[1] = v18;
  v20 = &v10[*(v13 + 60)];
  *v20 = sub_25884C2BC;
  v20[1] = v12;
  v21 = v19 + *(v4 + 32);
  v22 = *v21;
  v23 = *(v21 + 8);
  v30 = v22;
  v31 = v23;
  sub_25884C4F4(0, &qword_27F95DAF8, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  sub_2588BD2E8();
  sub_25884C734(v19, v7, type metadata accessor for EditPrimaryLanguageCellView);
  v24 = swift_allocObject();
  sub_25884C7FC(v7, v24 + v11, type metadata accessor for EditPrimaryLanguageCellView);
  type metadata accessor for MedicalIDSpokenLanguagePickerView(0);
  sub_25884C0B4(&qword_27F95FF60, sub_25884BB34, &unk_2588C55E8);
  sub_25884C0B4(&qword_27F95FF68, type metadata accessor for MedicalIDSpokenLanguagePickerView, &protocol conformance descriptor for MedicalIDSpokenLanguagePickerView);
  sub_2588BD068();

  return sub_25884C634(v10, sub_25884BB34);
}

void sub_25884AD40(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v3 = type metadata accessor for EditPrimaryLanguageCellView(0);
  v49 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v50 = v4;
  v51 = v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25884BED4(0);
  v52 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25884BD4C(0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v55 = v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = v48 - v11;
  sub_2587DFBD0(0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v54 = v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v53 = v48 - v16;
  sub_2588BC688();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v17 = 0x4C7972616D697250;
  v18 = qword_27F95DA88;
  v19 = sub_2588BCDE8();
  v21 = v20;
  v23 = v22;
  v48[0] = v19;
  v48[1] = v24;
  v58 = v19;
  v59 = v20;
  v60 = v22 & 1;
  v61 = v24;
  sub_25884C4F4(0, &qword_280C0DDD0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v25 = swift_allocObject();
  v57 = xmmword_2588BFF50;
  *(v25 + 16) = xmmword_2588BFF50;
  v26 = swift_allocObject();
  *(v26 + 16) = v57;
  v27 = *(type metadata accessor for MedicalIDPersonalInfoViewModel(0) + 36);
  *&v57 = a1;
  v28 = (a1 + v27);
  v29 = v28[1];
  *(v26 + 32) = *v28;
  *(v26 + 40) = v29;
  v30 = 0xEF65676175676E61;
  *(v26 + 48) = 0x4C7972616D697250;
  *(v26 + 56) = 0xEF65676175676E61;

  v31 = sub_2588BD9A8();

  v32 = HKUIJoinStringsForAutomationIdentifier();

  if (v32)
  {
    v17 = sub_2588BD8A8();
    v30 = v33;
  }

  *(v25 + 32) = v17;
  *(v25 + 40) = v30;
  *(v25 + 48) = 0x656C746954;
  *(v25 + 56) = 0xE500000000000000;
  v34 = sub_2588BD9A8();

  v35 = HKUIJoinStringsForAutomationIdentifier();

  if (v35)
  {
    sub_2588BD8A8();

    v36 = v53;
    sub_2588BCFB8();

    sub_2587B1CF8(v48[0], v21, v23 & 1);

    v37 = sub_2588BC708();
    *v12 = sub_2588BC608();
    *(v12 + 1) = 0;
    v12[16] = 1;
    sub_25884C544(0);
    *v7 = v37;
    *(v7 + 1) = 0;
    v7[16] = 1;
    sub_25884C5AC(0);
    v39 = v57;
    sub_25884997C(v57, &v7[*(v38 + 44)]);
    v40 = v51;
    sub_25884C734(v39, v51, type metadata accessor for EditPrimaryLanguageCellView);
    v41 = (*(v49 + 80) + 16) & ~*(v49 + 80);
    v42 = swift_allocObject();
    sub_25884C7FC(v40, v42 + v41, type metadata accessor for EditPrimaryLanguageCellView);
    sub_25884C0B4(&qword_27F95FF20, sub_25884BED4, MEMORY[0x277CE1198]);
    sub_2588BCED8();

    sub_25884C79C(v7, sub_25884BED4);
    v43 = v54;
    sub_25884C734(v36, v54, sub_2587DFBD0);
    v44 = v55;
    sub_25879FDB4(v12, v55);
    v45 = v56;
    sub_25884C734(v43, v56, sub_2587DFBD0);
    sub_25884BCD4(0);
    v47 = v45 + *(v46 + 48);
    *v47 = 0;
    *(v47 + 8) = 1;
    sub_25879FDB4(v44, v45 + *(v46 + 64));
    sub_25884C634(v12, sub_25884BD4C);
    sub_25884C79C(v36, sub_2587DFBD0);
    sub_25884C634(v44, sub_25884BD4C);
    sub_25884C79C(v43, sub_2587DFBD0);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_25884B388@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, void (*a3)(void)@<X2>, uint64_t (*a4)(uint64_t)@<X3>, uint64_t a5@<X8>)
{
  *a5 = a2();
  *(a5 + 8) = 0;
  *(a5 + 16) = 1;
  a3(0);
  return a4(a1);
}

void sub_25884B3F0(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v61 = a2;
  v3 = type metadata accessor for EditPrimaryLanguageCellView(0);
  v56 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v57 = v4;
  v58 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25884BED4(0);
  v59 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25884BD4C(0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v60 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v52 = (&v52 - v11);
  sub_2588BC688();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v12 = 0x4C7972616D697250;
  v13 = qword_27F95DA88;
  v14 = sub_2588BCDE8();
  v53 = v15;
  v54 = v14;
  v17 = v16;
  v55 = v18;
  sub_25884C4F4(0, &qword_280C0DDD0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v19 = swift_allocObject();
  v62 = xmmword_2588BFF50;
  *(v19 + 16) = xmmword_2588BFF50;
  v20 = swift_allocObject();
  *(v20 + 16) = v62;
  v21 = (a1 + *(type metadata accessor for MedicalIDPersonalInfoViewModel(0) + 36));
  v22 = v21[1];
  *(v20 + 32) = *v21;
  *(v20 + 40) = v22;
  v23 = 0xEF65676175676E61;
  *(v20 + 48) = 0x4C7972616D697250;
  *(v20 + 56) = 0xEF65676175676E61;

  v24 = sub_2588BD9A8();

  v25 = HKUIJoinStringsForAutomationIdentifier();

  if (v25)
  {
    v12 = sub_2588BD8A8();
    v23 = v26;
  }

  *(v19 + 32) = v12;
  *(v19 + 40) = v23;
  *(v19 + 48) = 0x656C746954;
  *(v19 + 56) = 0xE500000000000000;
  v27 = sub_2588BD9A8();

  v28 = HKUIJoinStringsForAutomationIdentifier();

  if (v28)
  {
    v29 = a1;
    v30 = sub_2588BD8A8();
    v32 = v31;

    v63 = v30;
    v64 = v32;
    sub_25878F648();
    v33 = v54;
    v34 = v17;
    v35 = v53;
    v36 = sub_2588BCDA8();
    v38 = v37;
    LODWORD(v62) = v39;
    v41 = v40;
    sub_2587B1CF8(v33, v35, v34 & 1);

    v42 = sub_2588BC6F8();
    v43 = sub_2588BC608();
    v44 = v52;
    *v52 = v43;
    *(v44 + 8) = 0;
    *(v44 + 16) = 1;
    sub_25884C544(0);
    *v7 = v42;
    *(v7 + 1) = 0;
    v7[16] = 1;
    sub_25884C5AC(0);
    sub_25884997C(v29, &v7[*(v45 + 44)]);
    v46 = v58;
    sub_25884C734(v29, v58, type metadata accessor for EditPrimaryLanguageCellView);
    v47 = (*(v56 + 80) + 16) & ~*(v56 + 80);
    v48 = swift_allocObject();
    sub_25884C7FC(v46, v48 + v47, type metadata accessor for EditPrimaryLanguageCellView);
    sub_25884C0B4(&qword_27F95FF20, sub_25884BED4, MEMORY[0x277CE1198]);
    sub_2588BCED8();

    sub_25884C79C(v7, sub_25884BED4);
    v49 = v60;
    sub_25879FDB4(v44, v60);
    v50 = v61;
    *v61 = v36;
    v50[1] = v38;
    LOBYTE(v46) = v62 & 1;
    *(v50 + 16) = v62 & 1;
    v50[3] = v41;
    sub_25884C214(0);
    sub_25879FDB4(v49, v50 + *(v51 + 48));
    sub_2587A99B0(v36, v38, v46);

    sub_25884C634(v44, sub_25884BD4C);
    sub_25884C634(v49, sub_25884BD4C);
    sub_2587B1CF8(v36, v38, v46);
  }

  else
  {
    __break(1u);
  }
}

void sub_25884B9B0(uint64_t a2@<X8>)
{
  type metadata accessor for EditPrimaryLanguageCellView(0);
  sub_25884C4F4(0, &qword_27F95DAF8, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  sub_2588BD2E8();

  v3 = sub_2588BD9A8();
  v4 = HKUIJoinStringsForAutomationIdentifier();

  if (v4)
  {
    v5 = (a2 + *(type metadata accessor for MedicalIDSpokenLanguagePickerView(0) + 24));
    v6 = sub_2588BD8A8();
    v8 = v7;

    *v5 = v6;
    v5[1] = v8;
    *a2 = v9;
    *(a2 + 8) = v10;
    *(a2 + 16) = v11;
    type metadata accessor for MedicalIDSpokenLanguagePickerViewModel(0);
    sub_25884C0B4(&qword_27F95DDA0, type metadata accessor for MedicalIDSpokenLanguagePickerViewModel, &protocol conformance descriptor for MedicalIDSpokenLanguagePickerViewModel);
    sub_2588BD548();
  }

  else
  {
    __break(1u);
  }
}

void sub_25884BB34(uint64_t a1)
{
  if (!qword_27F95FEC0)
  {
    sub_25884BC20(255);
    v3 = v2;
    sub_25884C160(255);
    v7[0] = v3;
    v7[1] = v4;
    v7[2] = sub_25884C0B4(&qword_27F95FF50, sub_25884BC20, MEMORY[0x277CE1138]);
    v7[3] = sub_25884C0B4(&qword_27F95FF58, sub_25884C160, MEMORY[0x277CE1198]);
    v5 = type metadata accessor for MedicalIDAXLayoutView(a1, v7);
    if (!v6)
    {
      atomic_store(v5, &qword_27F95FEC0);
    }
  }
}

void sub_25884BC20(uint64_t a1)
{
  if (!qword_27F95FEC8)
  {
    sub_25884C388(255, &qword_27F95FED0, sub_25884BCD4, MEMORY[0x277CE14B8]);
    sub_25884C0FC(&qword_27F95FF28, &qword_27F95FED0, sub_25884BCD4);
    v1 = sub_2588BD368();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95FEC8);
    }
  }
}

void sub_25884BCD4(uint64_t a1)
{
  if (!qword_27F95FED8)
  {
    sub_2587DFBD0(255);
    sub_25884BD4C(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F95FED8);
    }
  }
}

void sub_25884BD4C(uint64_t a1)
{
  if (!qword_27F95FEE0)
  {
    sub_25884BE20(255);
    sub_25884BED4(255);
    sub_25884C0B4(&qword_27F95FF20, sub_25884BED4, MEMORY[0x277CE1198]);
    swift_getOpaqueTypeConformance2();
    v1 = sub_2588BD368();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95FEE0);
    }
  }
}

void sub_25884BE20(uint64_t a1)
{
  if (!qword_27F95FEE8)
  {
    sub_25884BED4(255);
    sub_25884C0B4(&qword_27F95FF20, sub_25884BED4, MEMORY[0x277CE1198]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F95FEE8);
    }
  }
}

void sub_25884BED4(uint64_t a1)
{
  if (!qword_27F95FEF0)
  {
    sub_25884C694(255, &qword_27F95FEF8, MEMORY[0x277CE0338]);
    sub_25884BFF4();
    v1 = sub_2588BD408();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95FEF0);
    }
  }
}

void sub_25884BF54(uint64_t a1)
{
  if (!qword_27F95FF08)
  {
    sub_2587DFBD0(255);
    sub_25884C388(255, &qword_27F95E930, sub_2587DFBD0, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F95FF08);
    }
  }
}

unint64_t sub_25884BFF4()
{
  result = qword_27F95FF10;
  if (!qword_27F95FF10)
  {
    sub_25884C694(255, &qword_27F95FEF8, MEMORY[0x277CE0338]);
    sub_25884C0FC(&qword_27F95FF18, &qword_27F95FF00, sub_25884BF54);
    sub_2587DFB50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95FF10);
  }

  return result;
}

uint64_t sub_25884C0B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25884C0FC(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_25884C388(255, a2, a3, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_25884C160(uint64_t a1)
{
  if (!qword_27F95FF30)
  {
    sub_25884C388(255, &qword_27F95FF38, sub_25884C214, MEMORY[0x277CE14B8]);
    sub_25884C0FC(&qword_27F95FF48, &qword_27F95FF38, sub_25884C214);
    v1 = sub_2588BD408();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95FF30);
    }
  }
}

void sub_25884C214(uint64_t a1)
{
  if (!qword_27F95FF40)
  {
    sub_25884BD4C(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F95FF40);
    }
  }
}

void sub_25884C388(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_25884C3EC(uint64_t a1@<X8>)
{
  type metadata accessor for EditPrimaryLanguageCellView(0);

  sub_25884B9B0(a1);
}

void sub_25884C45C(uint64_t a1)
{
  if (!qword_27F95FF70)
  {
    sub_25884C388(255, &qword_27F95FF38, sub_25884C214, MEMORY[0x277CE14B8]);
    v1 = sub_2588BC0B8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95FF70);
    }
  }
}

void sub_25884C4F4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_25884C544(uint64_t a1)
{
  if (!qword_27F95FF78)
  {
    sub_25884BE20(255);
    v1 = sub_2588BC0B8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95FF78);
    }
  }
}

void sub_25884C5AC(uint64_t a1)
{
  if (!qword_27F95FF80)
  {
    sub_25884C694(255, &qword_27F95FEF8, MEMORY[0x277CE0338]);
    v1 = sub_2588BC0B8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95FF80);
    }
  }
}

uint64_t sub_25884C634(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_25884C694(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_25884C388(255, &qword_27F95FF00, sub_25884BF54, MEMORY[0x277CE14B8]);
    v7 = v6;
    sub_2587DFBD0(255);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_25884C734(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25884C79C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25884C7FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25884C864(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  sub_25884C388(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_25884C8D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  sub_25884C388(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_25884C930(uint64_t a1)
{
  if (!qword_27F95FF90)
  {
    sub_25884C388(255, &qword_27F95FED0, sub_25884BCD4, MEMORY[0x277CE14B8]);
    v1 = sub_2588BC0B8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95FF90);
    }
  }
}

uint64_t objectdestroyTm_22()
{
  v1 = type metadata accessor for EditPrimaryLanguageCellView(0);
  v21 = *(*(v1 - 8) + 80);
  v2 = v0 + ((v21 + 16) & ~v21);

  v3 = type metadata accessor for MedicalIDData(0);
  v4 = v3[13];
  v5 = sub_2588BB9B8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  if (!v7(v2 + v4, 1, v5))
  {
    (*(v6 + 8))(v2 + v4, v5);
  }

  v8 = v3[14];
  if (!v7(v2 + v8, 1, v5))
  {
    (*(v6 + 8))(v2 + v8, v5);
  }

  v9 = (v2 + v3[18]);
  v10 = v9[1];
  if (v10 >> 60 != 15)
  {
    sub_2587C2610(*v9, v10);
  }

  v11 = v3[19];
  v12 = sub_2588BB818();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v2 + v11, 1, v12))
  {
    (*(v13 + 8))(v2 + v11, v12);
  }

  v14 = v3[21];
  if (!v7(v2 + v14, 1, v5))
  {
    (*(v6 + 8))(v2 + v14, v5);
  }

  v15 = type metadata accessor for MedicalIDPersonalInfoViewModel(0);
  v16 = v15[5];
  v17 = sub_2588BBB48();
  (*(*(v17 - 8) + 8))(v2 + v16, v17);
  v18 = v15[6];
  v19 = sub_2588BBAC8();
  (*(*(v19 - 8) + 8))(v2 + v18, v19);

  if (*(v2 + *(v1 + 20)))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_25884CD78()
{
  v1 = *(type metadata accessor for EditPrimaryLanguageCellView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_25884A874(v2);
}

void sub_25884CE0C(void *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X2>, unint64_t *a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  if (a1)
  {
    v36 = a2;
    v37 = a4;
    sub_25884E0E8(0, &qword_27F95FFB0, &qword_27F95FFB8, 0x277CCAD98, MEMORY[0x28220B520]);
    v38 = v11;
    v12 = *(v11 - 8);
    MEMORY[0x28223BE20](v11);
    v14 = v32 - v13;
    v15 = a1;
    v16 = [v15 _foundationMeasurement];
    if (v16)
    {
      v17 = v16;
      v33 = v15;
      v34 = v12;
      v32[0] = a6;
      v32[1] = v6;
      v35 = v32;
      sub_25878E130(0, &qword_27F95FFB8, 0x277CCAD98);
      sub_2588BB658();

      v18 = v37;
      sub_25884E0E8(0, a3, v37, a5, MEMORY[0x28220B520]);
      v20 = v19;
      v32[3] = v32;
      v21 = *(v19 - 8);
      v22 = MEMORY[0x28223BE20](v19);
      v24 = v32 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
      v32[2] = v32;
      MEMORY[0x28223BE20](v22);
      v26 = v32 - v25;
      v27 = sub_2588BB668();
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        sub_2588BB688();
        sub_25878E130(0, v18, a5);
        sub_2588BB678();
        (*(v21 + 32))(v24, v26, v20);
        v28 = v32[0];
        sub_2588BB6B8();

        (*(v21 + 8))(v24, v20);
        (*(v34 + 8))(v14, v38);
        (*(v21 + 56))(v28, 0, 1, v20);
      }

      else
      {

        sub_25884E150();
        swift_allocError();
        *v31 = 1;
        swift_willThrow();

        (*(v34 + 8))(v14, v38);
      }
    }

    else
    {
      sub_25884E150();
      swift_allocError();
      *v30 = 0;
      swift_willThrow();
    }
  }

  else
  {
    sub_25884E0E8(0, a3, a4, a5, MEMORY[0x28220B520]);
    (*(*(v29 - 8) + 56))(a6, 1, 1, v29);
  }
}

uint64_t MedicalIDWeightFormatter.init(locale:personWeightFormatter:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2588BBAC8();
  v7 = *(v6 - 8);
  (*(v7 + 16))(a3, a1, v6);
  v8 = type metadata accessor for MedicalIDWeightFormatter(0);
  *(a3 + *(v8 + 20)) = a2;
  v9 = sub_25884DC0C(a1, 2);
  result = (*(v7 + 8))(a1, v6);
  *(a3 + *(v8 + 24)) = v9;
  return result;
}

uint64_t type metadata accessor for MedicalIDWeightFormatter(uint64_t a1)
{
  result = qword_27F95FF98;
  if (!qword_27F95FF98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::String_optional __swiftcall MedicalIDWeightFormatter.localizedDescription(for:)(HKQuantity_optional a1)
{
  isa = a1.value.super.isa;
  sub_25884E0E8(0, &qword_27F95F428, &qword_27F95F430, 0x277CCAE28, MEMORY[0x28220B520]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - v5;
  sub_25883AC00(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25884D544(isa, v9);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    sub_25883CE64(v9);
    v10 = 0;
    v11 = 0;
  }

  else
  {
    (*(v4 + 32))(v6, v9, v3);
    type metadata accessor for MedicalIDWeightFormatter(0);
    sub_25878E130(0, &qword_27F95F430, 0x277CCAE28);
    v12 = sub_2588BDC68();
    v14 = v13;
    (*(v4 + 8))(v6, v3);
    v11 = v14;
    v10 = v12;
  }

  result.value._object = v11;
  result.value._countAndFlagsBits = v10;
  return result;
}

void sub_25884D544(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25884D888();
  sub_25884CE0C(a1, v4, &qword_27F95F428, &qword_27F95F430, 0x277CCAE28, a2);
}

Swift::String __swiftcall MedicalIDWeightFormatter.localizedUnitDescription()()
{
  v1 = sub_25884DC0C(v0, 1);
  v2 = sub_25884D888();
  v3 = [v1 stringFromUnit_];

  v4 = sub_2588BD8A8();
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result._object = v8;
  result._countAndFlagsBits = v7;
  return result;
}

id sub_25884D888()
{
  v1 = [*(v0 + *(type metadata accessor for MedicalIDWeightFormatter(0) + 20)) localWeightUnit];
  if (v1 <= 1536)
  {
    if (v1 == 11)
    {
      v2 = &selRef_grams;
      goto LABEL_12;
    }

    if (v1 == 14)
    {
      v2 = &selRef_kilograms;
      goto LABEL_12;
    }

LABEL_15:
    result = sub_2588BDED8();
    __break(1u);
    return result;
  }

  if (v1 == 1537)
  {
    v2 = &selRef_ounces;
    goto LABEL_12;
  }

  if (v1 != 1538)
  {
    if (v1 == 1539)
    {
      v2 = &selRef_stones;
      goto LABEL_12;
    }

    goto LABEL_15;
  }

  v2 = &selRef_poundsMass;
LABEL_12:
  v3 = [objc_opt_self() *v2];

  return v3;
}

id MedicalIDWeightFormatter.formattedText(for:)(uint64_t a1)
{
  v2 = v1;
  sub_25884E0E8(0, &qword_27F95F428, &qword_27F95F430, 0x277CCAE28, MEMORY[0x28220B520]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - v7;
  sub_25883AC00(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25884DFA0(a1, v11);
  if ((*(v6 + 48))(v11, 1, v5) == 1)
  {
    sub_25883CE64(v11);
    return 0;
  }

  (*(v6 + 32))(v8, v11, v5);
  sub_2588BB688();
  v13 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  result = [*(v2 + *(type metadata accessor for MedicalIDWeightFormatter(0) + 24)) numberFormatter];
  if (result)
  {
    v15 = result;
    v16 = [result stringFromNumber_];

    if (v16)
    {
      v17 = sub_2588BD8A8();

      (*(v6 + 8))(v8, v5);
      return v17;
    }

    (*(v6 + 8))(v8, v5);
    return 0;
  }

  __break(1u);
  return result;
}

id sub_25884DC0C(uint64_t a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(MEMORY[0x277CCAB18]) init];
  v4 = sub_2588BBA88();
  [v3 setLocale_];

  [v3 setUnitOptions_];
  [v3 setUnitStyle_];
  v5 = sub_2588BBA58();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = sub_2588BBA68();
  MEMORY[0x28223BE20](v9);
  sub_2588BBA38();
  sub_2587BBA44();
  v10 = sub_2588BD7D8();
  v11 = *(v6 + 8);
  v12 = v11(&v21 - v8, v5);
  if (v10)
  {
    result = [v3 numberFormatter];
    if (result)
    {
      v14 = result;
      v11(&v21 - v8, v5);
      sub_25878E130(0, &qword_27F95D898, 0x277CCABB0);
      v15 = sub_2588BDCC8();
      [v14 setRoundingIncrement_];

      return v3;
    }

    __break(1u);
  }

  else
  {
    v22 = v3;
    MEMORY[0x28223BE20](v12);
    sub_2588BBA28();
    v16 = sub_2588BD7D8();
    v17 = v11(&v21 - v8, v5);
    if (v16)
    {
      v11(&v21 - v8, v5);
    }

    else
    {
      MEMORY[0x28223BE20](v17);
      sub_2588BBA48();
      v18 = sub_2588BD7D8();
      v11(&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
      v11(&v21 - v8, v5);
      if ((v18 & 1) == 0)
      {
        return v22;
      }
    }

    v3 = v22;
    result = [v22 numberFormatter];
    if (result)
    {
      v19 = result;
      sub_25878E130(0, &qword_27F95D898, 0x277CCABB0);
      v20 = sub_2588BDCB8();
      [v19 setRoundingIncrement_];

      return v3;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25884DFA0(uint64_t a1, uint64_t a2)
{
  sub_25883AC00(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25884E02C(uint64_t a1)
{
  result = sub_2588BBAC8();
  if (v2 <= 0x3F)
  {
    result = sub_25878E130(319, &qword_27F95FFA8, 0x277D12A10);
    if (v3 <= 0x3F)
    {
      result = sub_25878E130(319, &qword_27F95E860, 0x277CCAB18);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_25884E0E8(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_25878E130(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_25884E150()
{
  result = qword_27F95FFC0;
  if (!qword_27F95FFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95FFC0);
  }

  return result;
}

Swift::String __swiftcall MedicalIDEmergencyContactViewModel.removeSymbolsFromRelationship()()
{
  v1 = 0xE000000000000000;
  if (*(v0 + 88))
  {
    sub_25878F648();
    v2 = sub_2588BDD08();
  }

  else
  {
    v2 = 0;
  }

  result._object = v1;
  result._countAndFlagsBits = v2;
  return result;
}

__n128 MedicalIDEmergencyContactViewModel.init(contact:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v2;
  v3 = *(a1 + 112);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 112) = v3;
  v4 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v4;
  result = *(a1 + 32);
  v6 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v6;
  return result;
}

uint64_t sub_25884E278@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for MedicalIDEditFreeformTextModalView(0);
  v9 = (v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258850634(0, &qword_27F95DC40, &type metadata for BasicAlertModel, MEMORY[0x277D83D88]);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0;
  sub_2588BD2B8();
  v12 = v32;
  *(v11 + 56) = v31;
  *(v11 + 72) = v12;
  v13 = v34;
  *(v11 + 88) = v33;
  *(v11 + 104) = v13;
  v14 = v9[9];
  *&v11[v14] = swift_getKeyPath(byte_2588C5250);
  sub_25884E588(0, &qword_27F95DB30, MEMORY[0x277CDD848], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v15 = &v11[v9[10]];
  type metadata accessor for MedicalIDDataManager(0);
  sub_2588501E0(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager, &protocol conformance descriptor for MedicalIDDataManager);
  *v15 = sub_2588BBF58();
  v15[8] = v16 & 1;
  sub_2587B6C14(a1, v11);
  *(v11 + 5) = a2;
  *(v11 + 6) = a3;
  v17 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  v19 = (*(v18 + 32))(v17, v18);
  if (v20)
  {
    v21 = v19;
  }

  else
  {
    v21 = 0;
  }

  v22 = 0xE000000000000000;
  if (v20)
  {
    v22 = v20;
  }

  v23 = &v11[v9[11]];
  v26[0] = v21;
  v26[1] = v22;
  sub_2588BD2B8();
  v24 = v28;
  *v23 = v27;
  *(v23 + 2) = v24;
  sub_25884E510(v11, a4);
  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t type metadata accessor for MedicalIDEditFreeformTextModalView(uint64_t a1)
{
  result = qword_27F95FFC8;
  if (!qword_27F95FFC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25884E510(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MedicalIDEditFreeformTextModalView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_25884E588(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_25884E600(uint64_t a1)
{
  sub_25884E768();
  if (v1 <= 0x3F)
  {
    sub_2587B2F78();
    if (v2 <= 0x3F)
    {
      sub_2587D2DD4(319);
      if (v3 <= 0x3F)
      {
        sub_25884E588(319, &qword_27F95DC58, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          sub_25884E588(319, &qword_27F95DC90, type metadata accessor for MedicalIDDataManager, MEMORY[0x277CDF468]);
          if (v5 <= 0x3F)
          {
            sub_258850634(319, &qword_27F95FB08, MEMORY[0x277D837D0], MEMORY[0x277CE10B8]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

unint64_t sub_25884E768()
{
  result = qword_27F95FFD8;
  if (!qword_27F95FFD8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F95FFD8);
  }

  return result;
}

void *sub_25884E7E8@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for MedicalIDEditFreeformTextModalView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(v1, v7);
  v31 = (*(v8 + 8))(v7, v8);
  v10 = v9;
  v32 = type metadata accessor for MedicalIDEditFreeformTextModalView;
  sub_258850704(v1, &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MedicalIDEditFreeformTextModalView);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  sub_25884E510(&v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  v13 = *(v1 + 72);
  v41 = *(v1 + 56);
  v42 = v13;
  v43 = *(v1 + 88);
  v44 = *(v1 + 104);
  sub_2587D2DD4(0);
  sub_2588BD2E8();
  v44 = v39;
  v45 = v40;
  v42 = v37;
  v43 = v38;
  v41 = v36;
  *a1 = swift_getKeyPath(byte_2588C5250);
  sub_25884E588(0, &qword_27F95DB30, MEMORY[0x277CDD848], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  sub_25884FE54(0);
  v15 = v14;
  v16 = (a1 + v14[9]);
  *v16 = v31;
  v16[1] = v10;
  v17 = (a1 + v14[10]);
  *v17 = &unk_2588C5310;
  v17[1] = v12;
  v18 = a1 + v14[11];
  v30 = a1;
  v19 = v42;
  v20 = v44;
  *(v18 + 2) = v43;
  *(v18 + 3) = v20;
  *(v18 + 8) = v45;
  *v18 = v41;
  *(v18 + 1) = v19;
  v21 = (a1 + v14[12]);
  v22 = v32;
  sub_258850704(v2, &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v32);
  v23 = swift_allocObject();
  sub_25884E510(&v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v11);
  sub_258850704(v2, &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v22);
  v24 = swift_allocObject();
  sub_25884E510(&v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v11);
  sub_258850704(v2, &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v22);
  v25 = swift_allocObject();
  sub_25884E510(&v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v11);
  *v21 = sub_25885036C;
  v21[1] = v23;
  v21[2] = sub_258850384;
  v21[3] = v24;
  v21[4] = sub_258850598;
  v21[5] = v25;
  v26 = v30 + v15[13];
  v33 = 0;
  result = sub_2588BD2B8();
  v28 = v35;
  *v26 = v34;
  *(v26 + 1) = v28;
  return result;
}

uint64_t sub_25884EB80()
{
  v0[2] = sub_2588BDA78();
  v0[3] = sub_2588BDA68();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_2587C9A98;

  return sub_25884EC2C();
}

uint64_t sub_25884EC2C()
{
  v1[18] = v0;
  v2 = sub_2588BC038();
  v1[19] = v2;
  v1[20] = *(v2 - 8);
  v1[21] = swift_task_alloc();
  sub_2587B63B8(0);
  v1[22] = swift_task_alloc();
  type metadata accessor for MedicalIDData(0);
  v1[23] = swift_task_alloc();
  v1[24] = type metadata accessor for MedicalIDEditFreeformTextModalView(0);
  v1[25] = swift_task_alloc();
  v3 = sub_2588BC598();
  v1[26] = v3;
  v1[27] = *(v3 - 8);
  v1[28] = swift_task_alloc();
  v1[29] = sub_2588BDA78();
  v1[30] = sub_2588BDA68();
  v5 = sub_2588BDA28();
  v1[31] = v5;
  v1[32] = v4;

  return MEMORY[0x2822009F8](sub_25884EE08, v5, v4);
}

uint64_t sub_25884EE08()
{
  v1 = v0[18];
  v2 = v1 + *(v0[24] + 32);
  v3 = *v2;
  v4 = *(v2 + 8);

  if ((v4 & 1) == 0)
  {
    v6 = v0[27];
    v5 = v0[28];
    v7 = v0[26];
    sub_2588BDBE8();
    v8 = sub_2588BCB58();
    sub_2588BBC68();

    sub_2588BC588();
    swift_getAtKeyPath();

    (*(v6 + 8))(v5, v7);
    v3 = v0[15];
    v1 = v0[18];
  }

  v0[33] = v3;
  sub_258850704(v1, v0[25], type metadata accessor for MedicalIDEditFreeformTextModalView);
  v0[34] = sub_2588BDA68();
  v10 = sub_2588BDA28();
  v0[35] = v10;
  v0[36] = v9;

  return MEMORY[0x2822009F8](sub_25884EF74, v10, v9);
}

uint64_t sub_25884EF74()
{
  v1 = v0[33];
  v3 = v0[24];
  v2 = v0[25];
  v4 = v0[22];
  v5 = v0[23];
  swift_getKeyPath(aH_6);
  v0[16] = v1;
  sub_2588501E0(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager, &protocol conformance descriptor for MedicalIDDataManager);
  sub_2588BBB98();

  v6 = OBJC_IVAR____TtC11MedicalIDUI20MedicalIDDataManager__medicalIDData;
  swift_beginAccess();
  sub_258850704(v1 + v6, v4, sub_2587B63B8);
  LoadState<>.loadedValue.getter(v5);
  sub_25885076C(v4, sub_2587B63B8);
  v7 = *(v2 + 40);
  v8 = (v2 + *(v3 + 36));
  v9 = *v8;
  v10 = v8[1];
  v11 = v8[2];
  v0[5] = *v8;
  v0[6] = v10;
  v0[7] = v11;
  sub_258850634(0, &qword_27F95FB08, MEMORY[0x277D837D0], MEMORY[0x277CE10B8]);
  sub_2588BD2C8();
  v13 = v0[11];
  v12 = v0[12];

  v14 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v14 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (v14)
  {
    v0[8] = v9;
    v0[9] = v10;
    v0[10] = v11;
    sub_2588BD2C8();
    v15 = v0[13];
    v16 = v0[14];
  }

  else
  {
    v15 = 0;
    v16 = 0;
  }

  v7(v0[23], v15, v16);

  v17 = swift_task_alloc();
  v0[37] = v17;
  *v17 = v0;
  v17[1] = sub_25884F1C4;
  v18 = v0[23];

  return sub_258880280(v18, (v0 + 17));
}

uint64_t sub_25884F1C4()
{
  v2 = *v1;

  v3 = *(v2 + 280);
  v4 = *(v2 + 288);
  if (v0)
  {
    v5 = sub_25884F478;
  }

  else
  {
    v5 = sub_25884F2D4;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_25884F2D4()
{
  v1 = v0[25];
  v2 = v0[23];

  sub_25885076C(v2, type metadata accessor for MedicalIDData);
  sub_25885076C(v1, type metadata accessor for MedicalIDEditFreeformTextModalView);
  v3 = v0[31];
  v4 = v0[32];

  return MEMORY[0x2822009F8](sub_25884F388, v3, v4);
}

uint64_t sub_25884F388()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];

  sub_25885269C(v1);
  sub_2588BC028();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_25884F478()
{
  v1 = v0[25];
  v2 = v0[23];

  sub_25885076C(v2, type metadata accessor for MedicalIDData);
  v0[38] = v0[17];
  sub_25885076C(v1, type metadata accessor for MedicalIDEditFreeformTextModalView);
  v3 = v0[31];
  v4 = v0[32];

  return MEMORY[0x2822009F8](sub_25884F534, v3, v4);
}

uint64_t sub_25884F534()
{
  v1 = *(v0 + 304);

  sub_2587CE078();
  swift_allocError();
  *v2 = v1;

  v3 = *(v0 + 8);

  return v3();
}

void sub_25884F610(void *a1)
{
  sub_25884FFAC();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  v22 = (*(v8 + 16))(v7, v8);
  v23 = v9;
  v10 = a1 + *(type metadata accessor for MedicalIDEditFreeformTextModalView(0) + 36);
  v11 = *v10;
  v12 = *(v10 + 2);
  *&v20[40] = v11;
  v21 = v12;
  v13 = MEMORY[0x277D837D0];
  sub_258850634(0, &qword_27F95FB08, MEMORY[0x277D837D0], MEMORY[0x277CE10B8]);
  sub_2588BD2E8();
  sub_25878F648();
  sub_2588BD638();
  sub_258850634(0, &qword_280C0DDD0, v13, MEMORY[0x277D84560]);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_2588BFF50;
  v15 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  *(v14 + 32) = (*(v16 + 48))(v15, v16);
  *(v14 + 40) = v17;
  *(v14 + 48) = 0x6C65694674786554;
  *(v14 + 56) = 0xE900000000000064;
  v18 = sub_2588BD9A8();

  v19 = HKUIJoinStringsForAutomationIdentifier();

  if (v19)
  {
    sub_2588BD8A8();

    sub_2588501E0(&qword_27F95F8C8, sub_25884FFAC, MEMORY[0x277CDF1A8]);
    sub_2588BCFB8();

    (*(v4 + 8))(v6, v3);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_25884F8E8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v6 = (*(v5 + 16))(v4, v5);
  v8 = v7;
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  v11 = (*(v10 + 24))(v9, v10);
  v13 = v12;
  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  result = (*(v15 + 48))(v14, v15);
  *a2 = v6;
  a2[1] = v8;
  a2[2] = v11;
  a2[3] = v13;
  a2[4] = result;
  a2[5] = v17;
  return result;
}

void sub_25884F9D4(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_258850078(0, &qword_27F95E5A8, sub_2587E5DE8);
  v5 = v4;
  v42 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v35 - v6;
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  (*(v9 + 40))(v8, v9);
  if (v10)
  {
    v37 = v7;
    v40 = v5;
    v41 = a2;
    v11 = v10;

    v35[1] = v11;
    sub_2588BC688();
    v12 = sub_2588BCDE8();
    v14 = v13;
    v16 = v15;
    sub_2588BCCC8();
    v17 = sub_2588BCDD8();
    v19 = v18;
    v21 = v20;
    v23 = v22;

    sub_2587B1CF8(v12, v14, v16 & 1);

    KeyPath = swift_getKeyPath(aX_6);
    v38 = v17;
    v39 = v23;
    v43 = v17;
    v44 = v19;
    v36 = v19;
    v25 = v21 & 1;
    v45 = v21 & 1;
    v46 = v23;
    v47 = KeyPath;
    v48 = 0;
    sub_258850634(0, &qword_280C0DDD0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_2588BFF50;
    v27 = a1[3];
    v28 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v27);
    *(v26 + 32) = (*(v28 + 48))(v27, v28);
    *(v26 + 40) = v29;
    *(v26 + 48) = 0x7265746F6F46;
    *(v26 + 56) = 0xE600000000000000;
    v30 = sub_2588BD9A8();

    v31 = HKUIJoinStringsForAutomationIdentifier();

    if (v31)
    {

      sub_2588BD8A8();

      sub_2587E5DE8(0);
      sub_2587E65C8();
      v32 = v37;
      sub_2588BCFB8();

      sub_2587B1CF8(v38, v36, v25);

      v33 = v41;
      sub_258850684(v32, v41);
      (*(v42 + 56))(v33, 0, 1, v40);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v34 = *(v42 + 56);

    v34(a2, 1, 1, v5);
  }
}

uint64_t sub_25884FD88()
{
  type metadata accessor for MedicalIDEditFreeformTextModalView(0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2587AE310;

  return sub_25884EB80();
}

void sub_25884FE54(uint64_t a1)
{
  if (!qword_27F95FFE0)
  {
    sub_25884FEE8(255);
    v3 = v2;
    v4 = sub_2588501E0(&qword_27F960010, sub_25884FEE8, &unk_2588C4D30);
    v6 = type metadata accessor for MedicalIDEditModal(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_27F95FFE0);
    }
  }
}

void sub_25884FEE8(uint64_t a1)
{
  if (!qword_27F95FFE8)
  {
    sub_258850078(255, &qword_27F95FFF0, sub_25884FFAC);
    v3 = v2;
    sub_258850004(255);
    v7[0] = v3;
    v7[1] = &type metadata for MedicalIDEditSectionHeaderView;
    v7[2] = v4;
    v7[3] = sub_2588500E4();
    v7[4] = sub_2587D68A0();
    v7[5] = sub_258850228();
    v5 = type metadata accessor for EditingScrollView(a1, v7);
    if (!v6)
    {
      atomic_store(v5, &qword_27F95FFE8);
    }
  }
}

void sub_25884FFAC()
{
  if (!qword_27F95F8C0)
  {
    v0 = sub_2588BD648();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95F8C0);
    }
  }
}

void sub_258850004(uint64_t a1)
{
  if (!qword_27F95E5A0)
  {
    sub_258850078(255, &qword_27F95E5A8, sub_2587E5DE8);
    v1 = sub_2588BDCE8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95E5A0);
    }
  }
}

void sub_258850078(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_2588BCA98();
    v4 = sub_2588BC1E8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_2588500E4()
{
  result = qword_27F95FFF8;
  if (!qword_27F95FFF8)
  {
    sub_258850078(255, &qword_27F95FFF0, sub_25884FFAC);
    sub_2588501E0(&qword_27F95F8C8, sub_25884FFAC, MEMORY[0x277CDF1A8]);
    sub_2588501E0(&qword_27F95D9D8, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95FFF8);
  }

  return result;
}

uint64_t sub_2588501E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_258850228()
{
  result = qword_27F960000;
  if (!qword_27F960000)
  {
    sub_258850004(255);
    sub_2588502A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F960000);
  }

  return result;
}

unint64_t sub_2588502A0()
{
  result = qword_27F960008;
  if (!qword_27F960008)
  {
    sub_258850078(255, &qword_27F95E5A8, sub_2587E5DE8);
    sub_2587E65C8();
    sub_2588501E0(&qword_27F95D9D8, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F960008);
  }

  return result;
}

uint64_t sub_258850384@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for MedicalIDEditFreeformTextModalView(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_25884F8E8(v4, a1);
}

uint64_t objectdestroyTm_23()
{
  v1 = type metadata accessor for MedicalIDEditFreeformTextModalView(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  __swift_destroy_boxed_opaque_existential_1Tm(v2);

  if (*(v2 + 64))
  {
  }

  v3 = *(v1 + 28);
  sub_25884E588(0, &qword_27F95DB30, MEMORY[0x277CDD848], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_2588BC038();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2588505B0(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for MedicalIDEditFreeformTextModalView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

void sub_258850634(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_258850684(uint64_t a1, uint64_t a2)
{
  sub_258850078(0, &qword_27F95E5A8, sub_2587E5DE8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_258850704(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25885076C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for MedicalIDLearnMoreNavigationView(uint64_t a1)
{
  result = qword_27F960020;
  if (!qword_27F960020)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258850840(uint64_t a1)
{
  sub_2588535A8(319, &qword_27F95DC58, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_2588508F8@<X0>(uint64_t a1@<X8>)
{
  v56 = a1;
  v57 = sub_2588BC5E8();
  v55 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v54 = &v45 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_2588BC848();
  v3 = *(v2 - 8);
  v47 = v2;
  v48 = v3;
  MEMORY[0x28223BE20](v2);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258852C38(0);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258853054(0);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258853108(0);
  v17 = *(v16 - 8);
  v45 = v16;
  v46 = v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25885320C(0);
  v52 = v20;
  v49 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258853348(0);
  v53 = v23;
  v51 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v50 = &v45 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258852CB8(0);
  sub_258852F74();
  sub_2588BCD48();
  v25 = sub_25885360C(&qword_27F9600C8, sub_258852C38, MEMORY[0x277CDE5A0]);
  sub_2588BCF78();
  (*(v8 + 8))(v10, v7);
  sub_2588BC838();
  v58 = v7;
  v59 = v25;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = MEMORY[0x277CDE0D0];
  v28 = v47;
  sub_2588BD138();
  (*(v48 + 8))(v5, v28);
  (*(v13 + 8))(v15, v12);
  v58 = v12;
  v59 = v28;
  v60 = OpaqueTypeConformance2;
  v61 = v27;
  v29 = v45;
  v30 = swift_getOpaqueTypeConformance2();
  sub_2588BCE78();
  (*(v46 + 8))(v19, v29);
  sub_2588BC688();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v31 = qword_27F95DA88;
  v32 = sub_2588BCDE8();
  v34 = v33;
  v36 = v35;
  v58 = v29;
  v59 = v30;
  v37 = swift_getOpaqueTypeConformance2();
  v38 = v50;
  v39 = v52;
  sub_2588BCF28();
  sub_2587B1CF8(v32, v34, v36 & 1);

  (*(v49 + 8))(v22, v39);
  v41 = v54;
  v40 = v55;
  v42 = v57;
  (*(v55 + 104))(v54, *MEMORY[0x277CDDDC0], v57);
  v58 = v39;
  v59 = v37;
  swift_getOpaqueTypeConformance2();
  v43 = v53;
  sub_2588BD008();
  (*(v40 + 8))(v41, v42);
  return (*(v51 + 8))(v38, v43);
}

__n128 sub_258850FFC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = sub_2588BC6E8();
  v31 = 0;
  sub_2588511D8(&v21);
  v37 = v26;
  v38 = v27;
  v39 = v28;
  v34 = v23;
  v35 = v24;
  v36 = v25;
  v32 = v21;
  v33 = v22;
  v41[5] = v26;
  v41[6] = v27;
  v41[7] = v28;
  v41[8] = v29;
  v41[1] = v22;
  v41[2] = v23;
  v41[3] = v24;
  v41[4] = v25;
  v40 = v29;
  v41[0] = v21;
  sub_2588534B4(&v32, &v20, sub_258852DB4);
  sub_25885351C(v41, sub_258852DB4);
  *&v30[103] = v38;
  *&v30[87] = v37;
  *&v30[39] = v34;
  *&v30[23] = v33;
  *&v30[119] = v39;
  *&v30[135] = v40;
  *&v30[55] = v35;
  *&v30[71] = v36;
  *&v30[7] = v32;
  v10 = *&v30[112];
  *(a8 + 113) = *&v30[96];
  *(a8 + 129) = v10;
  *(a8 + 145) = *&v30[128];
  v11 = *&v30[48];
  *(a8 + 49) = *&v30[32];
  *(a8 + 65) = v11;
  v12 = *&v30[80];
  *(a8 + 81) = *&v30[64];
  *(a8 + 97) = v12;
  v13 = *&v30[16];
  *(a8 + 17) = *v30;
  v14 = v31;
  *a8 = v9;
  *(a8 + 8) = 0x4034000000000000;
  *(a8 + 16) = v14;
  *(a8 + 160) = *&v30[143];
  *(a8 + 33) = v13;
  __asm { FMOV            V0.2D, #16.0 }

  *(a8 + 168) = result;
  *(a8 + 184) = result;
  *(a8 + 200) = 0;
  return result;
}

uint64_t sub_2588511D8@<X0>(_OWORD *a2@<X8>)
{
  v3 = sub_2588BC6F8();
  sub_258851394(&v36);
  v4 = v36;
  v6 = v37;
  v5 = v38;
  v7 = v39;
  v8 = *(&v39 + 1);
  LOBYTE(v36) = v39;
  v9 = sub_2588BC6F8();
  sub_258851620(&v36);
  v10 = v36;
  v12 = v37;
  v11 = v38;
  v13 = v39;
  v14 = *(&v39 + 1);
  LOBYTE(v36) = v39;
  v19 = v3;
  LOBYTE(v20) = 0;
  *(&v20 + 1) = v4;
  v21 = v6;
  *&v22 = v5;
  BYTE8(v22) = v7;
  v23 = v8;
  v24[0] = v9;
  *v18 = v8;
  v24[1] = 0;
  LOBYTE(v25) = 0;
  *(&v25 + 1) = v10;
  v26 = v37;
  *&v27 = v38;
  BYTE8(v27) = v39;
  v28 = *(&v39 + 1);
  *&v18[8] = v9;
  *&v18[72] = *(&v39 + 1);
  *&v18[56] = v27;
  *&v18[40] = v37;
  *&v18[24] = v25;
  v15 = v20;
  v16 = v22;
  a2[2] = v6;
  a2[3] = v16;
  *a2 = v3;
  a2[1] = v15;
  a2[7] = *&v18[48];
  a2[8] = *&v18[64];
  a2[5] = *&v18[16];
  a2[6] = *&v18[32];
  a2[4] = *v18;
  v29[0] = v9;
  v29[1] = 0;
  v30 = 0;
  v31 = v10;
  v32 = v12;
  v33 = v11;
  v34 = v13;
  v35 = v14;
  sub_2588534B4(&v19, &v36, sub_258852E4C);
  sub_2588534B4(v24, &v36, sub_258852E4C);
  sub_25885351C(v29, sub_258852E4C);
  v36 = v3;
  *&v37 = 0;
  BYTE8(v37) = 0;
  v38 = v4;
  v39 = v6;
  v40 = v5;
  v41 = v7;
  v42 = v8;
  return sub_25885351C(&v36, sub_258852E4C);
}

uint64_t sub_258851394@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2588BD858();
  MEMORY[0x28223BE20](v2 - 8);
  sub_2588BD7E8();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v3 = qword_27F95DA88;
  v4 = sub_2588BBAC8();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = v3;
  sub_2588BBAB8();
  v6 = v5;
  v7 = sub_2588BD8B8();
  v9 = v8;
  MEMORY[0x28223BE20](v7);
  v10 = sub_2588BD7E8();
  MEMORY[0x28223BE20](v10);
  sub_2588BBAB8();
  sub_2588BD8B8();
  sub_25878F648();
  v11 = sub_2588BCDF8();
  v13 = v12;
  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11;
  *(a1 + 24) = v12;
  LOBYTE(v7) = v14 & 1;
  *(a1 + 32) = v14 & 1;
  *(a1 + 40) = v15;

  sub_2587A99B0(v11, v13, v7);

  sub_2587B1CF8(v11, v13, v7);
}

uint64_t sub_258851620@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2588BD858();
  MEMORY[0x28223BE20](v2 - 8);
  sub_2588BD7E8();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v3 = qword_27F95DA88;
  v4 = sub_2588BBAC8();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = v3;
  sub_2588BBAB8();
  v6 = v5;
  v7 = sub_2588BD8B8();
  v9 = v8;
  MEMORY[0x28223BE20](v7);
  v10 = sub_2588BD7E8();
  MEMORY[0x28223BE20](v10);
  sub_2588BBAB8();
  sub_2588BD8B8();
  sub_25878F648();
  v11 = sub_2588BCDF8();
  v13 = v12;
  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11;
  *(a1 + 24) = v12;
  LOBYTE(v7) = v14 & 1;
  *(a1 + 32) = v14 & 1;
  *(a1 + 40) = v15;

  sub_2587A99B0(v11, v13, v7);

  sub_2587B1CF8(v11, v13, v7);
}

uint64_t sub_2588518A8@<X0>(uint64_t a3@<X8>)
{
  sub_25878F648();

  v4 = sub_2588BCDF8();
  v6 = v5;
  v8 = v7;
  v9 = sub_2588BCDC8();
  v11 = v10;
  v13 = v12;
  sub_2587B1CF8(v4, v6, v8 & 1);

  sub_2588BCC58();
  v14 = sub_2588BCDD8();
  v16 = v15;
  v18 = v17;

  sub_2587B1CF8(v9, v11, v13 & 1);

  sub_2588BD1D8();
  v19 = sub_2588BCD88();
  v21 = v20;
  v23 = v22;
  v25 = v24;

  sub_2587B1CF8(v14, v16, v18 & 1);

  sub_2587E6008(0);
  v27 = (a3 + *(v26 + 36));
  sub_2587E6068(0);
  v29 = *(v28 + 28);
  v30 = sub_2588BCDB8();
  (*(*(v30 - 8) + 56))(&v27[v29], 1, 1, v30);
  result = swift_getKeyPath(asc_2588C54F8);
  *v27 = result;
  *a3 = v19;
  *(a3 + 8) = v21;
  *(a3 + 16) = v23 & 1;
  *(a3 + 24) = v25;
  return result;
}

uint64_t sub_258851A78(uint64_t a1)
{
  sub_25885251C(0);
  sub_2588525D0();
  sub_25883A41C(255);
  sub_25885360C(&qword_27F960048, sub_25883A41C, MEMORY[0x277CDD7A8]);
  swift_getOpaqueTypeConformance2();
  return sub_2588BD0B8();
}

uint64_t sub_258851B58(uint64_t a1)
{
  v2 = sub_2588BC828();
  MEMORY[0x28223BE20](v2 - 8);
  sub_25883A41C(0);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2588BC808();
  v11 = a1;
  sub_2588BD728();
  sub_25885360C(&qword_27F95FAD0, MEMORY[0x277D12688], MEMORY[0x277D12678]);
  sub_2588BBF88();
  v8 = sub_25885360C(&qword_27F960048, sub_25883A41C, MEMORY[0x277CDD7A8]);
  MEMORY[0x259C8B9F0](v7, v4, v8);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_258851D28(uint64_t a1)
{
  v2 = type metadata accessor for MedicalIDLearnMoreNavigationView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2588534B4(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MedicalIDLearnMoreNavigationView);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_258852BA4(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for MedicalIDLearnMoreNavigationView);
  return sub_2588BD718();
}

uint64_t sub_258851E54(uint64_t a1)
{
  v16 = sub_2588BC598();
  v2 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x277CDD848];
  sub_2588535A8(0, &qword_27F95DB30, MEMORY[0x277CDD848], MEMORY[0x277CDF458]);
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - v7;
  v9 = sub_2588BC038();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588526D0(a1, v8, &qword_27F95DB30, v5);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v8, v9);
  }

  else
  {
    sub_2588BDBE8();
    v13 = sub_2588BCB58();
    sub_2588BBC68();

    sub_2588BC588();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v16);
  }

  sub_2588BC028();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_2588520F4()
{
  sub_2588522EC(0);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = v0;
  sub_25885241C(0);
  sub_25885251C(255);
  v7 = v6;
  v8 = sub_2588525D0();
  sub_25883A41C(255);
  v10 = v9;
  v11 = sub_25885360C(&qword_27F960048, sub_25883A41C, MEMORY[0x277CDD7A8]);
  v16 = v10;
  v17 = v11;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v16 = &type metadata for MedicalIDLearnMoreView;
  v17 = v7;
  v18 = v8;
  v19 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_2588BC1F8();
  sub_25885360C(&qword_27F960058, sub_2588522EC, MEMORY[0x277CDDA18]);
  sub_2588BCF78();
  return (*(v3 + 8))(v5, v2);
}

void sub_2588522EC(uint64_t a1)
{
  if (!qword_27F960030)
  {
    sub_2588BC138();
    sub_25885241C(255);
    sub_25885251C(255);
    sub_2588525D0();
    sub_25883A41C(255);
    sub_25885360C(&qword_27F960048, sub_25883A41C, MEMORY[0x277CDD7A8]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    v1 = sub_2588BC208();
    if (!v2)
    {
      atomic_store(v1, &qword_27F960030);
    }
  }
}

void sub_25885241C(uint64_t a1)
{
  if (!qword_27F960038)
  {
    sub_25885251C(255);
    sub_2588525D0();
    sub_25883A41C(255);
    sub_25885360C(&qword_27F960048, sub_25883A41C, MEMORY[0x277CDD7A8]);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F960038);
    }
  }
}

void sub_25885251C(uint64_t a1)
{
  if (!qword_27F960040)
  {
    sub_25883A41C(255);
    sub_25885360C(&qword_27F960048, sub_25883A41C, MEMORY[0x277CDD7A8]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F960040);
    }
  }
}

unint64_t sub_2588525D0()
{
  result = qword_27F960050;
  if (!qword_27F960050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F960050);
  }

  return result;
}

uint64_t sub_25885263C()
{
  v1 = *(type metadata accessor for MedicalIDLearnMoreNavigationView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_258851E54(v2);
}

uint64_t sub_2588526D0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2588535A8(0, a3, a4, MEMORY[0x277CDF458]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_258852784@<X0>(unint64_t *a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = sub_2588BC598();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588535A8(0, a1, a2, MEMORY[0x277CDF458]);
  MEMORY[0x28223BE20](v14);
  v16 = &v20 - v15;
  sub_2588526D0(v8, &v20 - v15, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = a3(0);
    return (*(*(v17 - 8) + 32))(a4, v16, v17);
  }

  else
  {
    sub_2588BDBE8();
    v19 = sub_2588BCB58();
    sub_2588BBC68();

    sub_2588BC588();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_25885299C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_2588BC598();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588535A8(0, &qword_27F95EBC0, sub_258804A60, MEMORY[0x277CDF458]);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  sub_2588526D0(v2, &v13 - v9, &qword_27F95EBC0, sub_258804A60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_258852BA4(v10, a1, sub_258804A60);
  }

  sub_2588BDBE8();
  v12 = sub_2588BCB58();
  sub_2588BBC68();

  sub_2588BC588();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_258852BA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_258852C38(uint64_t a1)
{
  if (!qword_27F960060)
  {
    sub_258852CB8(255);
    sub_258852F74();
    v1 = sub_2588BCD58();
    if (!v2)
    {
      atomic_store(v1, &qword_27F960060);
    }
  }
}

void sub_258852CB8(uint64_t a1)
{
  if (!qword_27F960068)
  {
    sub_258852D20(255);
    sub_2587D5F94(255);
    v1 = sub_2588BC1E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F960068);
    }
  }
}

void sub_258852D20(uint64_t a1)
{
  if (!qword_27F960070)
  {
    sub_258852DB4(255);
    sub_25885360C(&qword_27F9600A8, sub_258852DB4, MEMORY[0x277CE14C0]);
    v1 = sub_2588BD408();
    if (!v2)
    {
      atomic_store(v1, &qword_27F960070);
    }
  }
}

void sub_258852DE8(uint64_t a1)
{
  if (!qword_27F960080)
  {
    sub_258852E4C(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F960080);
    }
  }
}

void sub_258852E4C(uint64_t a1)
{
  if (!qword_27F960088)
  {
    sub_258852EE0(255);
    sub_25885360C(&qword_27F9600A0, sub_258852EE0, MEMORY[0x277CE14C0]);
    v1 = sub_2588BD408();
    if (!v2)
    {
      atomic_store(v1, &qword_27F960088);
    }
  }
}

void sub_258852F14()
{
  if (!qword_27F960098)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F960098);
    }
  }
}

unint64_t sub_258852F74()
{
  result = qword_27F9600B0;
  if (!qword_27F9600B0)
  {
    sub_258852CB8(255);
    sub_25885360C(&qword_27F9600B8, sub_258852D20, MEMORY[0x277CE1198]);
    sub_25885360C(&qword_27F95E108, sub_2587D5F94, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9600B0);
  }

  return result;
}

void sub_258853054(uint64_t a1)
{
  if (!qword_27F9600C0)
  {
    sub_258852C38(255);
    sub_25885360C(&qword_27F9600C8, sub_258852C38, MEMORY[0x277CDE5A0]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F9600C0);
    }
  }
}

void sub_258853108(uint64_t a1)
{
  if (!qword_27F9600D0)
  {
    sub_258853054(255);
    sub_2588BC848();
    sub_258852C38(255);
    sub_25885360C(&qword_27F9600C8, sub_258852C38, MEMORY[0x277CDE5A0]);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F9600D0);
    }
  }
}

void sub_25885320C(uint64_t a1)
{
  if (!qword_27F9600D8)
  {
    sub_258853108(255);
    sub_258853054(255);
    sub_2588BC848();
    sub_258852C38(255);
    sub_25885360C(&qword_27F9600C8, sub_258852C38, MEMORY[0x277CDE5A0]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F9600D8);
    }
  }
}

void sub_258853348(uint64_t a1)
{
  if (!qword_27F9600E0)
  {
    sub_25885320C(255);
    sub_258853108(255);
    sub_258853054(255);
    sub_2588BC848();
    sub_258852C38(255);
    sub_25885360C(&qword_27F9600C8, sub_258852C38, MEMORY[0x277CDE5A0]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F9600E0);
    }
  }
}

uint64_t sub_2588534B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25885351C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_2588535A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_25885360C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for MedicalIDPregnancyCellView(uint64_t a1)
{
  result = qword_27F9600E8;
  if (!qword_27F9600E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2588536C8(uint64_t a1)
{
  type metadata accessor for MedicalIDPregnancyViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_2587B2F78();
    if (v2 <= 0x3F)
    {
      sub_2587BC234(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_258853780@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F95D0D0 != -1)
  {
    swift_once();
  }

  v3 = *(&xmmword_27F9697F8 + 1);
  v29 = xmmword_27F9697F8;
  v4 = *(type metadata accessor for MedicalIDPregnancyViewModel(0) + 20);
  v31 = v1;
  v5 = v1 + v4;
  v26 = type metadata accessor for MedicalIDData(0);
  v6 = *(v26 + 52);
  v7 = MEMORY[0x28220BF90];
  sub_258854CCC(0, &qword_27F95D880, MEMORY[0x28220BF90], MEMORY[0x277D83D88]);
  v28 = &v26;
  v9 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8 - 8);
  v27 = v5;
  sub_258854E28(&v5[v6], &v26 - v9, &qword_27F95D880, v7);
  v10 = sub_2588BB9B8();
  v11 = *(*(v10 - 8) + 48);
  v12 = v11(&v26 - v9, 1, v10);
  v30 = v3;

  v13 = sub_258854EA8(&v26 - v9, &qword_27F95D880, v7);
  if (v12 == 1)
  {
    v14 = 0;
  }

  else
  {
    MEMORY[0x28223BE20](v13);
    v15 = &v26 - v9;
    v16 = MEMORY[0x28220BF90];
    sub_258854E28(&v27[v17], v15, &qword_27F95D880, MEMORY[0x28220BF90]);
    v14 = v11(v15, 1, v10) != 1;
    sub_258854EA8(v15, &qword_27F95D880, v16);
  }

  v18 = v31;
  v20 = *v31;
  v19 = v31[1];
  v21 = (v18 + *(type metadata accessor for MedicalIDPregnancyCellView(0) + 20));
  v22 = *v21;
  v23 = v21[1];
  v24 = v30;
  *a1 = v29;
  *(a1 + 8) = v24;
  *(a1 + 16) = v14;
  *(a1 + 17) = 2;
  *(a1 + 24) = v22;
  *(a1 + 32) = v23;
  *(a1 + 40) = v20;
  *(a1 + 48) = v19;
}

void sub_258853A08(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v44 = a2;
  sub_258854C48(0, &qword_27F960140, sub_258854880, sub_258854A34, MEMORY[0x277CE0330]);
  v40 = v3;
  MEMORY[0x28223BE20](v3);
  v43 = &v38 - v4;
  sub_258854880(0);
  v42 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258854A34(0);
  v41 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28220BF90];
  sub_258854CCC(0, &qword_27F95D880, MEMORY[0x28220BF90], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v38 - v13;
  v15 = sub_2588BB9B8();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  v16 = sub_2588BE0A8();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588BE098();
  v20 = MedicalIDPregnancyViewModel.gestationalAgeDescription(startDate:format:)(v14, v19);
  v22 = v21;
  (*(v17 + 8))(v19, v16);
  sub_258854EA8(v14, &qword_27F95D880, v11);
  if (v22)
  {
    *v7 = sub_2588BC6F8();
    *(v7 + 1) = 0x4010000000000000;
    v7[16] = 0;
    sub_258854D90(0);
    sub_258854034(v20, v22, a1, &v7[*(v23 + 44)]);

    sub_258854F18(v7, v43, sub_258854880);
    swift_storeEnumTagMultiPayload();
    sub_258854FE4(&qword_27F960138, sub_258854880, MEMORY[0x277CE1198]);
    sub_25882845C();
    sub_2588BC778();
    v24 = sub_258854880;
    v25 = v7;
LABEL_7:
    sub_258854D30(v25, v24);
    return;
  }

  v39 = v10;
  sub_2588BC688();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v26 = qword_27F95DA88;
  v27 = sub_2588BCDE8();
  v29 = v28;
  v45 = v27;
  v46 = v28;
  v31 = v30 & 1;
  v47 = v30 & 1;
  v48 = v32;
  sub_258790D88();
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_2588BFF50;
  v34 = a1[1];
  *(v33 + 32) = *a1;
  *(v33 + 40) = v34;
  strcpy((v33 + 48), "PregnancyState");
  *(v33 + 63) = -18;

  v35 = sub_2588BD9A8();

  v36 = HKUIJoinStringsForAutomationIdentifier();

  if (v36)
  {
    sub_2588BD8A8();

    sub_258854A7C();
    sub_258854BC8();
    v37 = v39;
    sub_2588BCFB8();

    sub_2587B1CF8(v27, v29, v31);

    sub_258854F18(v37, v43, sub_258854A34);
    swift_storeEnumTagMultiPayload();
    sub_258854FE4(&qword_27F960138, sub_258854880, MEMORY[0x277CE1198]);
    sub_25882845C();
    sub_2588BC778();
    v24 = sub_258854A34;
    v25 = v37;
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_258854034@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v63 = type metadata accessor for MedicalIDPregnancyStatusLabelView(0);
  v61 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v57 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258854CCC(0, &qword_27F960120, type metadata accessor for MedicalIDPregnancyStatusLabelView, MEMORY[0x277D83D88]);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v64 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v62 = &v50 - v12;
  v13 = sub_2588BD858();
  MEMORY[0x28223BE20](v13 - 8);
  sub_2588BD7E8();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v14 = qword_27F95DA88;
  v15 = sub_2588BBAC8();
  MEMORY[0x28223BE20](v15 - 8);
  v16 = v14;
  sub_2588BBAB8();
  v17 = sub_2588BD8B8();
  v19 = v18;
  v20 = *a3;
  v21 = a3[1];
  v22 = *(a3 + *(type metadata accessor for MedicalIDPregnancyCellView(0) + 24));
  if (v22)
  {
    v58 = v17;
    v59 = v20;
    v60 = v19;

    if ([v22 isLockScreen])
    {
      v23 = 1;
    }

    else
    {
      v55 = a1;
      v56 = a2;
      v24 = sub_2588BB9B8();
      v54 = &v50;
      v53 = *(v24 - 8);
      MEMORY[0x28223BE20](v24);
      v26 = &v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
      v27 = *(type metadata accessor for MedicalIDPregnancyViewModel(0) + 20);
      v51 = a3;
      v28 = a3 + v27;
      v29 = *(type metadata accessor for MedicalIDData(0) + 52);
      v30 = MEMORY[0x28220BF90];
      sub_258854CCC(0, &qword_27F95D880, MEMORY[0x28220BF90], MEMORY[0x277D83D88]);
      v52 = &v50;
      v50 = v31;
      v32 = *(*(v31 - 8) + 64);
      MEMORY[0x28223BE20](v31);
      v34 = &v50 - v33;
      v35 = &v28[v29];
      v36 = v53;
      sub_258854E28(v35, &v50 - v33, &qword_27F95D880, v30);
      if ((*(v36 + 48))(v34, 1, v24) != 1)
      {
        (*(v36 + 32))(v26, v34, v24);
        v44 = objc_opt_self();
        v45 = sub_2588BB958();
        LOBYTE(v44) = [v44 isPregnancyDurationPhysiologicallyPossibleForPregnancyStartDate_];

        (*(v36 + 8))(v26, v24);
        a1 = v55;
        v38 = v62;
        if (v44)
        {
          v46 = v24;
          v47 = v57;
          v48 = sub_258854F18(v51, v57, type metadata accessor for MedicalIDPregnancyViewModel);
          MEMORY[0x28223BE20](v48);
          (*(v36 + 56))(&v50 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0), 1, 1, v46);
          v49 = v63;
          sub_2588BD478();
          sub_258854EA8(&v50 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0), &qword_27F95D880, MEMORY[0x28220BF90]);
          *(v47 + *(v49 + 20)) = 0;
          sub_258854F80(v47, v38);
          v37 = v49;
          v23 = 0;
          a2 = v56;
        }

        else
        {
          v23 = 1;
          a2 = v56;
          v37 = v63;
        }

        goto LABEL_9;
      }

      sub_258854EA8(v34, &qword_27F95D880, MEMORY[0x28220BF90]);
      v23 = 1;
      a1 = v55;
      a2 = v56;
    }

    v38 = v62;
    v37 = v63;
LABEL_9:
    (*(v61 + 56))(v38, v23, 1, v37);
    v39 = v64;
    sub_258854E28(v38, v64, &qword_27F960120, type metadata accessor for MedicalIDPregnancyStatusLabelView);
    v40 = v59;
    v41 = v60;
    *a4 = v58;
    a4[1] = v41;
    a4[2] = a1;
    a4[3] = a2;
    a4[4] = v40;
    a4[5] = v21;
    sub_258854914(0);
    sub_258854E28(v39, a4 + *(v42 + 48), &qword_27F960120, type metadata accessor for MedicalIDPregnancyStatusLabelView);

    sub_258854EA8(v38, &qword_27F960120, type metadata accessor for MedicalIDPregnancyStatusLabelView);
    sub_258854EA8(v39, &qword_27F960120, type metadata accessor for MedicalIDPregnancyStatusLabelView);
  }

  sub_2587CEE98();
  sub_258854FE4(&qword_27F95DAE8, sub_2587CEE98, &protocol conformance descriptor for MIUIDisplayConfiguration);

  result = sub_2588BC348();
  __break(1u);
  return result;
}

void sub_258854768(uint64_t a1@<X8>)
{
  sub_258853780(v5);
  v3 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5[2];
  *(a1 + 48) = v6;
  *(a1 + 56) = 0x4018000000000000;
  *(a1 + 64) = 1;
  sub_2588547D8(0);
  sub_258853A08(v1, (a1 + *(v4 + 44)));
}

void sub_2588547D8(uint64_t a1)
{
  if (!qword_27F9600F8)
  {
    sub_258854C48(255, &qword_27F960100, sub_258854880, sub_258854A34, MEMORY[0x277CE0338]);
    v3 = v2;
    v4 = sub_258854AD4();
    v6 = type metadata accessor for MedicalIDCellView(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_27F9600F8);
    }
  }
}

void sub_258854880(uint64_t a1)
{
  if (!qword_27F960108)
  {
    sub_258854CCC(255, &qword_27F960110, sub_258854914, MEMORY[0x277CE14B8]);
    sub_2588549AC();
    v1 = sub_2588BD408();
    if (!v2)
    {
      atomic_store(v1, &qword_27F960108);
    }
  }
}

void sub_258854914(uint64_t a1)
{
  if (!qword_27F960118)
  {
    sub_258854CCC(255, &qword_27F960120, type metadata accessor for MedicalIDPregnancyStatusLabelView, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F960118);
    }
  }
}

unint64_t sub_2588549AC()
{
  result = qword_27F960128;
  if (!qword_27F960128)
  {
    sub_258854CCC(255, &qword_27F960110, sub_258854914, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F960128);
  }

  return result;
}

void sub_258854A7C()
{
  if (!qword_27F95F620)
  {
    v0 = sub_2588BC1E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95F620);
    }
  }
}

unint64_t sub_258854AD4()
{
  result = qword_27F960130;
  if (!qword_27F960130)
  {
    sub_258854C48(255, &qword_27F960100, sub_258854880, sub_258854A34, MEMORY[0x277CE0338]);
    sub_258854FE4(&qword_27F960138, sub_258854880, MEMORY[0x277CE1198]);
    sub_25882845C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F960130);
  }

  return result;
}

unint64_t sub_258854BC8()
{
  result = qword_27F95F628;
  if (!qword_27F95F628)
  {
    sub_258854A7C();
    sub_258828408();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95F628);
  }

  return result;
}

void sub_258854C48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_258854CCC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_258854D30(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_258854D90(uint64_t a1)
{
  if (!qword_27F960148)
  {
    sub_258854CCC(255, &qword_27F960110, sub_258854914, MEMORY[0x277CE14B8]);
    v1 = sub_2588BC0B8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F960148);
    }
  }
}

uint64_t sub_258854E28(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_258854CCC(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_258854EA8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_258854CCC(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_258854F18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258854F80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MedicalIDPregnancyStatusLabelView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_258854FE4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_258855034(uint64_t a1)
{
  sub_2588558E4(319, &qword_27F95E8B8, MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_2588BC1C8();
    if (v2 <= 0x3F)
    {
      sub_2587B2F78();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_258855170@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  *a9 = swift_getKeyPath(byte_2588C5638);
  sub_2588558E4(0, &qword_27F95E160, MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v25[0] = a5;
  v25[1] = a6;
  v25[2] = a7;
  v25[3] = a8;
  v18 = type metadata accessor for MedicalIDAXLayoutView(0, v25);
  v19 = v18[13];
  v20 = *MEMORY[0x277CDF988];
  v21 = sub_2588BC1C8();
  result = (*(*(v21 - 8) + 104))(&a9[v19], v20, v21);
  v23 = &a9[v18[14]];
  *v23 = a1;
  *(v23 + 1) = a2;
  v24 = &a9[v18[15]];
  *v24 = a3;
  *(v24 + 1) = a4;
  return result;
}

uint64_t sub_258855298@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_2588BC598();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588558E4(0, &qword_27F95E160, MEMORY[0x277CDF458]);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_258855944(v2, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_2588BC1C8();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_2588BDBE8();
    v13 = sub_2588BCB58();
    sub_2588BBC68();

    sub_2588BC588();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_258855490@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v4 = *(a1 + 24);
  v36 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v35 = &v33 - v9;
  v10 = *(v8 + 16);
  v34 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v33 = &v33 - v14;
  v15 = sub_2588BC1C8();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2588BC788();
  v38 = *(v19 - 8);
  v39 = v19;
  MEMORY[0x28223BE20](v19);
  v37 = &v33 - v20;
  sub_258855298(v18);
  v21 = sub_2588BC1B8();
  v22 = (*(v16 + 8))(v18, v15);
  if (v21)
  {
    (*(v2 + *(a1 + 56)))(v22);
    v23 = *(a1 + 32);
    v24 = v33;
    sub_2587DCF7C();
    v25 = *(v34 + 8);
    v25(v13, v10);
    sub_2587DCF7C();
    v26 = *(a1 + 40);
    v27 = v37;
    sub_2587D79A0(v13, v10);
    v25(v13, v10);
    v28 = v24;
    v29 = v10;
  }

  else
  {
    (*(v2 + *(a1 + 60)))(v22);
    v26 = *(a1 + 40);
    v30 = v35;
    sub_2587DCF7C();
    v25 = *(v36 + 8);
    v25(v7, v4);
    sub_2587DCF7C();
    v23 = *(a1 + 32);
    v27 = v37;
    sub_2587D7A98(v7, v10, v4);
    v25(v7, v4);
    v28 = v30;
    v29 = v4;
  }

  v25(v28, v29);
  v41 = v23;
  v42 = v26;
  v31 = v39;
  swift_getWitnessTable();
  sub_2587DCF7C();
  return (*(v38 + 8))(v27, v31);
}

void sub_2588558E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_2588BC1C8();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_258855944(uint64_t a1, uint64_t a2)
{
  sub_2588558E4(0, &qword_27F95E160, MEMORY[0x277CDF458]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2588559D8()
{
  result = qword_27F9601D8;
  if (!qword_27F9601D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9601D8);
  }

  return result;
}

void sub_258855A40(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for EditDateOfBirthCellView(uint64_t a1)
{
  result = qword_27F9601E0;
  if (!qword_27F9601E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258855B04(uint64_t a1)
{
  type metadata accessor for MedicalIDPersonalInfoViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_2587EE1A8(319);
    if (v2 <= 0x3F)
    {
      sub_258855A40(319, &qword_27F95DA10, sub_2587B2F78, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_258855A40(319, &qword_27F95DAB8, MEMORY[0x28220C258], MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_258855C28()
{
  sub_258790D88();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_2588BFF50;
  v2 = (v0 + *(type metadata accessor for MedicalIDPersonalInfoViewModel(0) + 36));
  v3 = *v2;
  v4 = v2[1];
  *(v1 + 32) = *v2;
  *(v1 + 40) = v4;
  *(v1 + 48) = 0x6942664F65746144;
  *(v1 + 56) = 0xEB00000000687472;

  v5 = sub_2588BD9A8();

  v6 = HKUIJoinStringsForAutomationIdentifier();

  if (v6)
  {
    v3 = sub_2588BD8A8();
  }

  else
  {
  }

  return v3;
}

uint64_t sub_258855D10@<X0>(char *a1@<X8>)
{
  v3 = type metadata accessor for EditDateOfBirthCellView(0);
  v75 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v71 = v4;
  v81 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2587EE1A8(0);
  v6 = MEMORY[0x28223BE20](v5);
  v74 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = v6;
  sub_2588BD458();
  v8 = sub_2588BD858();
  MEMORY[0x28223BE20](v8 - 8);
  sub_2588BD7E8();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v9 = qword_27F95DA88;
  v10 = sub_2588BBAC8();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = v9;
  sub_2588BBAB8();
  v12 = sub_2588BD8B8();
  v69 = v13;
  v70 = v12;
  v14 = sub_2588BB9B8();
  v82 = &v62;
  v15 = *(v14 - 8);
  v72 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v73 = ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = (&v62 - v73);
  MedicalIDPersonalInfoViewModel.defaultDateOfBirth()(&v62 - v73);
  sub_2587AFFC8(0);
  v79 = &v62;
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  v66 = &v62 - v20;
  v67 = v19;
  v68 = v20;
  v21 = v15;
  v63 = v15;
  v22 = *(v15 + 56);
  v23 = v22();
  v78 = &v62;
  MEMORY[0x28223BE20](v23);
  v24 = &v62 - v20;
  sub_2588BB9A8();
  (v22)(&v62 - v20, 0, 1, v14);
  v25 = (v1 + *(v3 + 24));
  v26 = v25[1];
  v65 = *v25;
  v64 = v26;
  sub_2587B2344(v65);
  v27 = sub_258855C28();
  v76 = v28;
  v77 = v27;
  v29 = v81;
  sub_2588567E0(v1, v81, type metadata accessor for EditDateOfBirthCellView);
  v30 = (v75[80] + 16) & ~v75[80];
  v31 = swift_allocObject();
  sub_2588566A8(v29, v31 + v30);
  sub_25885677C(0);
  v33 = v32;
  v34 = &a1[v32[18]];
  v83 = 0;
  sub_2588BD2B8();
  v35 = v85;
  *v34 = v84;
  *(v34 + 1) = v35;
  v36 = v74;
  sub_2588567E0(v74, a1, sub_2587EE1A8);
  v37 = &a1[v33[9]];
  v38 = v69;
  *v37 = v70;
  *(v37 + 1) = v38;
  v39 = *(v21 + 16);
  v40 = &a1[v33[10]];
  v75 = v17;
  v41 = v17;
  v42 = v14;
  v39(v40, v41, v14);
  v43 = v66;
  sub_2588567E0(v66, &a1[v33[11]], sub_2587AFFC8);
  v44 = sub_2588567E0(v24, &a1[v33[12]], sub_2587AFFC8);
  v71 = &v62;
  a1[v33[13]] = 1;
  v45 = &a1[v33[14]];
  v46 = v64;
  *v45 = v65;
  *(v45 + 1) = v46;
  v47 = v33[15];
  v81 = a1;
  v48 = &a1[v47];
  *v48 = sub_25885670C;
  *(v48 + 1) = v31;
  v49 = MEMORY[0x28223BE20](v44);
  v50 = (&v62 - v73);
  v73 = &v62;
  MEMORY[0x28223BE20](v49);
  v51 = &v62 - v68;
  MEMORY[0x259C8C5A0](v80);
  sub_258856848(v24, sub_2587AFFC8);
  sub_258856848(v43, sub_2587AFFC8);
  v52 = v36;
  v53 = v63;
  sub_258856848(v52, sub_2587EE1A8);
  v54 = *(v53 + 48);
  if (v54(v51, 1, v42) == 1)
  {
    v55 = *(v53 + 32);
    v55(v50, v75, v42);
    if (v54(v51, 1, v42) != 1)
    {
      sub_258856848(v51, sub_2587AFFC8);
    }
  }

  else
  {
    (*(v53 + 8))(v75, v42);
    v55 = *(v53 + 32);
    v55(v50, v51, v42);
  }

  v56 = v81;
  v57 = &v81[v33[17]];
  sub_258855A40(0, &qword_27F95E7E8, MEMORY[0x28220BF70], MEMORY[0x277CE10B8]);
  *&v57[*(v58 + 28)] = 0;
  result = (v55)(v57, v50, v42);
  v60 = &v56[v33[16]];
  v61 = v76;
  *v60 = v77;
  *(v60 + 1) = v61;
  return result;
}

void sub_258856474()
{
  sub_2588BC688();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v0 = qword_27F95DA88;
  v1 = sub_2588BCDE8();
  v3 = v2;
  v5 = v4;
  sub_2588BD158();
  v6 = sub_2588BCD98();
  v8 = v7;
  v10 = v9;
  sub_2587B1CF8(v1, v3, v5 & 1);

  v11 = v10 & 1;
  sub_258790D88();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_2588BFF50;
  *(v12 + 32) = sub_258855C28();
  *(v12 + 40) = v13;
  *(v12 + 48) = 6579265;
  *(v12 + 56) = 0xE300000000000000;
  v14 = sub_2588BD9A8();

  v15 = HKUIJoinStringsForAutomationIdentifier();

  if (v15)
  {
    sub_2588BD8A8();

    sub_2588BCFB8();

    sub_2587B1CF8(v6, v8, v11);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2588566A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EditDateOfBirthCellView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_25885670C()
{
  type metadata accessor for EditDateOfBirthCellView(0);

  sub_258856474();
}

void sub_25885677C(uint64_t a1)
{
  if (!qword_27F9601F0)
  {
    sub_2587DFBD0(255);
    v3 = v2;
    v4 = sub_2587DFB50();
    v6 = type metadata accessor for DatePickerEditView(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_27F9601F0);
    }
  }
}

uint64_t sub_2588567E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258856848(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2588568A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for ContactLabelView(uint64_t a1)
{
  result = qword_27F960200;
  if (!qword_27F960200)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258856964(uint64_t a1)
{
  sub_258857954(319, &qword_27F95E8B8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_258856A2C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  sub_258857A20(0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  *v9 = sub_2588BC6F8();
  *(v9 + 1) = 0;
  v9[16] = 0;
  sub_258857E3C(0, &qword_27F960270, sub_258857AB4, MEMORY[0x277CDF7A0], MEMORY[0x277CDF798]);
  sub_258856B8C(a1, &v9[*(v10 + 44)]);
  sub_258857EA8(v9, v7, sub_258857A20);
  sub_258857EA8(v7, a2, sub_258857A20);
  sub_2588579B8(0);
  v12 = a2 + *(v11 + 48);
  *v12 = 0;
  *(v12 + 8) = 1;
  sub_258857F10(v9, sub_258857A20);
  return sub_258857F10(v7, sub_258857A20);
}

void sub_258856B8C(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v98 = a2;
  sub_258857D28(0);
  v100 = *(v3 - 8);
  v101 = v3;
  MEMORY[0x28223BE20](v3);
  v94 = &v89 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258857CF4(0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v104 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v103 = &v89 - v8;
  sub_258857C90(0, &qword_27F95E3B0, MEMORY[0x277CDE470], MEMORY[0x277CE0BD8]);
  v10 = v9;
  v11 = *(v9 - 1);
  MEMORY[0x28223BE20](v9);
  v97 = &v89 - v12;
  sub_2587F9F84(0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v102 = &v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v110 = &v89 - v16;
  sub_2587E6128(0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2588BCCE8();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v89 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(a1 + 11);
  if (v24)
  {
    v99 = *(a1 + 10);
    v25 = *(a1 + 15);
    v108 = *(a1 + 14);
    (*(v21 + 104))(v23, *MEMORY[0x277CE0A58], v20);
    v26 = sub_2588BCC18();
    (*(*(v26 - 8) + 56))(v19, 1, 1, v26);

    v107 = v25;

    sub_2588BCC28();
    *(&v106 + 1) = sub_2588BCC48();
    sub_258857F10(v19, sub_2587E6128);
    (*(v21 + 8))(v23, v20);
    *&v106 = swift_getKeyPath(byte_2588C5828);
    v27 = sub_2588BC8D8();
    v28 = sub_2588BCBA8();
    sub_2588BBE38();
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v36 = v35;
    LOBYTE(v118) = 0;
    *&v105 = v27;
    *(&v105 + 1) = v28;
  }

  else
  {
    v99 = 0;
    v107 = 0;
    v108 = 0;
    v106 = 0uLL;
    v105 = 0uLL;
    v30 = 0;
    v32 = 0;
    v34 = 0;
    v36 = 0;
  }

  v37 = *(a1 + 1);
  v109 = v24;
  v38 = v110;
  if (!v37)
  {
    v51 = 1;
LABEL_8:
    (v11[7])(v38, v51, 1, v10);
    v52 = *(a1 + 7);
    if (v52)
    {
      v93 = *(a1 + 6);
      v97 = sub_2588BB8E8();
      v53 = *(v97 - 1);
      MEMORY[0x28223BE20](v97);
      v92 = v54;
      v55 = &v89 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_258857F70(0);
      v96 = &v89;
      v57 = *(*(v56 - 8) + 64);
      MEMORY[0x28223BE20](v56 - 8);
      v58 = (v57 + 15) & 0xFFFFFFFFFFFFFFF0;
      v59 = &v89 - v58;
      v60 = a1[5];
      v122 = a1[4];
      v123 = v60;
      v61 = a1[7];
      v124 = a1[6];
      v125 = v61;
      v62 = a1[1];
      v118 = *a1;
      v119 = v62;
      v63 = a1[3];
      v120 = a1[2];
      v121 = v63;
      if (*(&v63 + 1))
      {
        v90 = v55;
        v91 = v52;
        v95 = &v89;
        v64 = objc_opt_self();
        sub_2587914E8(&v118, &v111);
        v65 = sub_2588BD868();
        v66 = [v64 emergencyContactURL_];

        MEMORY[0x28223BE20](v67);
        if (v66)
        {
          sub_2588BB8C8();

          v68 = 0;
        }

        else
        {
          v68 = 1;
        }

        v24 = v109;
        v69 = v97;
        (*(v53 + 56))(&v89 - v58, v68, 1, v97);
        sub_258857F98(&v89 - v58, &v89 - v58);
        sub_2587C66FC(&v118);
        if ((*(v53 + 48))(&v89 - v58, 1, v69) != 1)
        {
          v80 = v90;
          v81 = v97;
          v82 = (*(v53 + 32))(v90, v59, v97);
          MEMORY[0x28223BE20](v82);
          v84 = (*(v53 + 16))(&v89 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0), v80, v81);
          MEMORY[0x28223BE20](v84);
          v85 = v91;
          *(&v89 - 4) = v93;
          *(&v89 - 3) = v85;
          *(&v89 - 2) = a1;
          sub_258857D8C(0);
          sub_2588502A0();
          v86 = v94;
          sub_2588BCD18();
          v24 = v109;
          (*(v53 + 8))(v80, v81);
          v88 = v100;
          v87 = v101;
          v70 = v103;
          (*(v100 + 32))(v103, v86, v101);
          (*(v88 + 56))(v70, 0, 1, v87);
          v38 = v110;
          goto LABEL_17;
        }
      }

      else
      {
        (*(v53 + 56))(&v89 - v58, 1, 1, v97);
        v24 = v109;
      }

      sub_258857F10(&v89 - v58, sub_258857F70);
      v38 = v110;
    }

    v70 = v103;
    (*(v100 + 56))(v103, 1, 1, v101);
LABEL_17:
    v71 = v102;
    sub_258857EA8(v38, v102, sub_2587F9F84);
    v72 = v104;
    sub_258857EA8(v70, v104, sub_258857CF4);
    v73 = v98;
    v74 = v99;
    *&v111 = v99;
    *(&v111 + 1) = v24;
    *&v112 = v108;
    *(&v112 + 1) = v107;
    v113 = v106;
    v114 = v105;
    *&v115 = v30;
    *(&v115 + 1) = v32;
    *&v116 = v34;
    *(&v116 + 1) = v36;
    v117 = 0;
    *(v98 + 96) = 0;
    v75 = v116;
    v73[4] = v115;
    v73[5] = v75;
    v76 = v112;
    *v73 = v111;
    v73[1] = v76;
    v77 = v114;
    v73[2] = v113;
    v73[3] = v77;
    sub_258857AE8(0);
    v79 = v78;
    sub_258857EA8(v71, v73 + *(v78 + 48), sub_2587F9F84);
    sub_258857EA8(v72, v73 + *(v79 + 64), sub_258857CF4);
    sub_258857EA8(&v111, &v118, sub_258857B70);
    sub_258857F10(v70, sub_258857CF4);
    sub_258857F10(v110, sub_2587F9F84);
    sub_258857F10(v72, sub_258857CF4);
    sub_258857F10(v71, sub_2587F9F84);
    *&v118 = v74;
    *(&v118 + 1) = v109;
    *&v119 = v108;
    *(&v119 + 1) = v107;
    v120 = v106;
    v121 = v105;
    *&v122 = v30;
    *(&v122 + 1) = v32;
    *&v123 = v34;
    *(&v123 + 1) = v36;
    LOBYTE(v124) = 0;
    sub_258857F10(&v118, sub_258857B70);
    return;
  }

  v95 = v11;
  v96 = v10;
  *&v118 = *a1;
  *(&v118 + 1) = v37;
  sub_25878F648();

  v39 = MEMORY[0x277D837D0];
  v40 = sub_2588BCDF8();
  v42 = v41;
  *&v118 = v40;
  *(&v118 + 1) = v41;
  v44 = v43 & 1;
  LOBYTE(v119) = v43 & 1;
  *(&v119 + 1) = v45;
  sub_2587E628C(0, &qword_280C0DDD0, v39, MEMORY[0x277D84560]);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_2588BFF50;
  v47 = *(a1 + 15);
  *(v46 + 32) = *(a1 + 14);
  *(v46 + 40) = v47;
  *(v46 + 48) = 1701667150;
  *(v46 + 56) = 0xE400000000000000;

  v48 = sub_2588BD9A8();

  v49 = HKUIJoinStringsForAutomationIdentifier();

  if (v49)
  {
    sub_2588BD8A8();

    v50 = v97;
    sub_2588BCFB8();

    sub_2587B1CF8(v40, v42, v44);

    v38 = v110;
    sub_2587FAF08(v50, v110);
    v51 = 0;
    v24 = v109;
    v11 = v95;
    v10 = v96;
    goto LABEL_8;
  }

  __break(1u);
}

void sub_2588576FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_25878F648();

  v4 = MEMORY[0x277D837D0];
  v5 = sub_2588BCDF8();
  v7 = v6;
  v9 = v8;
  swift_getKeyPath(aP_10, a1, a2);
  v10 = v9 & 1;
  sub_2587E628C(0, &qword_280C0DDD0, v4, MEMORY[0x277D84560]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_2588BFF50;
  v12 = *(a3 + 120);
  *(v11 + 32) = *(a3 + 112);
  *(v11 + 40) = v12;
  *(v11 + 48) = 0x7265626D754ELL;
  *(v11 + 56) = 0xE600000000000000;

  v13 = sub_2588BD9A8();

  v14 = HKUIJoinStringsForAutomationIdentifier();

  if (v14)
  {
    sub_2588BD8A8();

    sub_2587E5DE8(0);
    sub_2587E65C8();
    sub_2588BCFB8();

    sub_2587B1CF8(v5, v7, v10);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2588578B0@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_2588BC608();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_258857E3C(0, &qword_27F960210, sub_258857920, MEMORY[0x277CDF740], MEMORY[0x277CDF738]);
  return sub_258856A2C(v2, a2 + *(v4 + 44));
}

void sub_258857954(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2588579B8(uint64_t a1)
{
  if (!qword_27F960220)
  {
    sub_258857A20(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F960220);
    }
  }
}

void sub_258857A20(uint64_t a1)
{
  if (!qword_27F960228)
  {
    sub_258857AB4(255);
    sub_258857DF4(&qword_27F960268, sub_258857AB4, MEMORY[0x277CE14C0]);
    v1 = sub_2588BD408();
    if (!v2)
    {
      atomic_store(v1, &qword_27F960228);
    }
  }
}

void sub_258857AE8(uint64_t a1)
{
  if (!qword_27F960238)
  {
    sub_258857B70(255);
    sub_2587F9F84(255);
    sub_258857CF4(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F960238);
    }
  }
}

void sub_258857BA4(uint64_t a1)
{
  if (!qword_27F960248)
  {
    sub_258857C04(255);
    v1 = sub_2588BC1E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F960248);
    }
  }
}

void sub_258857C04(uint64_t a1)
{
  if (!qword_27F960250)
  {
    sub_258857C90(255, &qword_27F95E948, sub_2587B1964, &type metadata for ContactRelationTextView);
    sub_2587E60D0();
    v1 = sub_2588BC1E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F960250);
    }
  }
}

void sub_258857C90(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    v5 = sub_2588BC1E8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_258857D28(uint64_t a1)
{
  if (!qword_27F960260)
  {
    sub_258857D8C(255);
    sub_2588502A0();
    v1 = sub_2588BCD28();
    if (!v2)
    {
      atomic_store(v1, &qword_27F960260);
    }
  }
}

void sub_258857D8C(uint64_t a1)
{
  if (!qword_27F95E5A8)
  {
    sub_2587E5DE8(255);
    sub_2588BCA98();
    v1 = sub_2588BC1E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95E5A8);
    }
  }
}

uint64_t sub_258857DF4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_258857E3C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    v6 = sub_2588BC0B8();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_258857EA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258857F10(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_258857F98(uint64_t a1, uint64_t a2)
{
  sub_258857F70(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_258858008(uint64_t a1)
{
  if (!qword_27F960280)
  {
    sub_258857920(255);
    sub_258857DF4(&qword_27F960288, sub_258857920, MEMORY[0x277CE14C0]);
    v1 = sub_2588BD368();
    if (!v2)
    {
      atomic_store(v1, &qword_27F960280);
    }
  }
}

uint64_t sub_2588580EC(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
  v19 = sub_2588BDB38();
  if (!v19)
  {
    return sub_2588BD9D8();
  }

  v41 = v19;
  v45 = sub_2588BDEA8();
  v32 = sub_2588BDEB8();
  sub_2588BDE58();
  result = sub_2588BDB28();
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
      v22 = sub_2588BDB58();
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
      sub_2588BDE98();
      result = sub_2588BDB48();
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

uint64_t Array<A>.withoutDuplicates(preserveOrder:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v6 = sub_2588BDA08();
    WitnessTable = swift_getWitnessTable();
    v8 = MEMORY[0x259C8CAF0](&v30, v6, WitnessTable);
    v29 = v30;
    MEMORY[0x28223BE20](v8);
    v26 = a3;
    v27 = a4;
    v9 = sub_2588BDEE8();
    v11 = _s14OrderedElementVMa(0, a3, a4, v10);
    v28 = swift_getWitnessTable();
    v12 = swift_getWitnessTable();
    v14 = sub_2588580EC(sub_2588589DC, v25, v9, v11, MEMORY[0x277D84A98], v12, MEMORY[0x277D84AC0], v13);

    v15 = swift_getWitnessTable();
    v16 = sub_2588589FC(v14, v11, v15);

    v30 = v16;
    MEMORY[0x28223BE20](v17);
    v26 = a3;
    v27 = a4;
    sub_2588BDAF8();
    swift_getWitnessTable();
    v18 = sub_2588BD988();

    v30 = v18;
    MEMORY[0x28223BE20](v19);
    v26 = a3;
    v27 = a4;
    v20 = sub_2588BDA08();
    v21 = swift_getWitnessTable();
    v23 = sub_2588580EC(sub_258858AD4, v25, v20, a3, MEMORY[0x277D84A98], v21, MEMORY[0x277D84AC0], v22);

    return v23;
  }

  else
  {
    sub_2588BDA08();

    swift_getWitnessTable();
    sub_2588BDB08();
    sub_2588BDAF8();
    swift_getWitnessTable();
    return sub_2588BDA18();
  }
}

uint64_t sub_258858890@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v10 = v15 - v9;
  (*(v11 + 16))(v15 - v9, a1, TupleTypeMetadata2);
  v12 = *a1;
  (*(*(a2 - 8) + 32))(a4, &v10[*(TupleTypeMetadata2 + 48)], a2);
  result = _s14OrderedElementVMa(0, a2, a3, v13);
  *(a4 + *(result + 36)) = v12;
  return result;
}

uint64_t sub_2588589FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2588BDA08();

  swift_getWitnessTable();
  return sub_2588BDB08();
}

uint64_t sub_258858B2C(_DWORD *a1, unsigned int a2, uint64_t a3)
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

unsigned int *sub_258858C30(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
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

BOOL sub_258858DC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = _s14OrderedElementVMa(0, a3, a4, a4);
  v5 = sub_258858E1C(v4);
  return v5 == sub_258858E1C(v4);
}

uint64_t sub_258858E1C(uint64_t a1)
{
  sub_2588BE038();
  sub_2588BD798();
  return sub_2588BE078();
}

uint64_t sub_258858E6C(uint64_t a1, uint64_t a2)
{
  sub_2588BE038();
  sub_258858DB4(v4, a2);
  return sub_2588BE078();
}

uint64_t sub_258858EBC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xC && *(a1 + 16))
  {
    return (*a1 + 12);
  }

  v3 = *(a1 + 8) >> 60;
  if (((4 * v3) & 0xC) != 0)
  {
    v4 = 14 - ((4 * v3) & 0xC | (v3 >> 2));
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_258858F18(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB)
  {
    *result = a2 - 12;
    *(result + 8) = 0;
    if (a3 >= 0xC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((4 * (a2 ^ 0xF)) | ((a2 ^ 0xF) >> 2)) << 60;
    }
  }

  return result;
}

void sub_258858F90(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2588BD268();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588596A8(0);
  v49 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = (v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_258859708(0);
  v50 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258859768(0);
  v48[1] = v16;
  MEMORY[0x28223BE20](v16);
  v51 = v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588598D4(0);
  v48[2] = v18;
  MEMORY[0x28223BE20](v18);
  v52 = v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >> 60 != 15)
  {
    v48[0] = a3;
    v20 = objc_allocWithZone(MEMORY[0x277D755B8]);
    sub_2587CC634(a1, a2);
    sub_2587CC634(a1, a2);
    v21 = sub_2588BB8F8();
    v22 = [v20 initWithData_];

    sub_2587C4E98(a1, a2);
    if (v22)
    {
      sub_2588BD248();
      sub_2587C4E98(a1, a2);
      goto LABEL_6;
    }

    sub_2587C4E98(a1, a2);
  }

  sub_2588BD258();
LABEL_6:
  (*(v7 + 104))(v9, *MEMORY[0x277CE0FE0], v6);
  v23 = sub_2588BD288();

  (*(v7 + 8))(v9, v6);
  v24 = (v12 + *(v49 + 36));
  v25 = *(sub_2588BC2A8() + 20);
  v26 = *MEMORY[0x277CE0118];
  v27 = sub_2588BC6B8();
  (*(*(v27 - 8) + 104))(&v24->i8[v25], v26, v27);
  *v24 = vdupq_n_s64(0x4046000000000000uLL);
  sub_258846858(0);
  *(v24->i16 + *(v28 + 36)) = 256;
  *v12 = v23;
  sub_2588BD5C8();
  sub_2588BC018();
  sub_25885991C(v12, v15);
  v29 = &v15[*(v50 + 36)];
  v30 = v56;
  *v29 = v55;
  *(v29 + 1) = v30;
  *(v29 + 2) = v57;
  v31 = [objc_opt_self() secondarySystemFillColor];
  v32 = sub_2588BD148();
  v33 = v51;
  sub_258859980(v15, a2 >> 60 == 15, v32);

  sub_258859E20(v15, sub_258859708);
  sub_258790D88();
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_2588BFF50;
  v35 = sub_2588BD9A8();
  v36 = HKUIJoinStringsForAutomationIdentifier();

  if (v36)
  {
    v37 = sub_2588BD8A8();
    v39 = v38;
  }

  else
  {
    v39 = 0xEC0000006F666E49;
    v37 = 0x6C616E6F73726550;
  }

  v40 = v52;
  *(v34 + 32) = v37;
  *(v34 + 40) = v39;
  *(v34 + 48) = 0x6F746F6850;
  *(v34 + 56) = 0xE500000000000000;
  v41 = sub_2588BD9A8();

  v42 = HKUIJoinStringsForAutomationIdentifier();

  if (v42)
  {
    sub_2588BD8A8();

    sub_258859BC0();
    sub_2588BCFB8();

    sub_258859E20(v33, sub_258859768);
    v43 = sub_2588BD858();
    MEMORY[0x28223BE20](v43 - 8);
    sub_2588BD7E8();
    if (qword_27F95D000 != -1)
    {
      swift_once();
    }

    v44 = qword_27F95DA88;
    v45 = sub_2588BBAC8();
    MEMORY[0x28223BE20](v45 - 8);
    v46 = v44;
    sub_2588BBAB8();
    v53 = sub_2588BD8B8();
    v54 = v47;
    sub_25878F648();
    sub_2588BC1D8();

    sub_258859E20(v40, sub_2588598D4);
  }

  else
  {
    __break(1u);
  }
}

void sub_2588596A8(uint64_t a1)
{
  if (!qword_27F960290)
  {
    sub_258846858(255);
    v1 = sub_2588BC1E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F960290);
    }
  }
}

void sub_258859708(uint64_t a1)
{
  if (!qword_27F960298)
  {
    sub_2588596A8(255);
    v1 = sub_2588BC1E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F960298);
    }
  }
}

void sub_2588597F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_25885987C()
{
  if (!qword_27F95D950)
  {
    v0 = sub_2588BC918();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95D950);
    }
  }
}

uint64_t sub_25885991C(uint64_t a1, uint64_t a2)
{
  sub_2588596A8(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_258859980(uint64_t a1, char a2, uint64_t a3)
{
  sub_2588597F8(0, &qword_27F9602D8, sub_2588597B0, sub_258859708, MEMORY[0x277CE0330]);
  MEMORY[0x28223BE20](v7);
  v9 = &v16 - v8;
  sub_2588597B0(0);
  v11 = v10;
  MEMORY[0x28223BE20](v10);
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = &v16 - v13;
  if (a2)
  {
    sub_258859E80(a1, &v16 - v13, sub_258859708);
    *&v14[*(v11 + 36)] = a3;
    sub_258859E80(v14, v9, sub_2588597B0);
    swift_storeEnumTagMultiPayload();
    sub_258859708(0);
    sub_258859C40();
    sub_258859CF0();

    sub_2588BC778();
    return sub_258859E20(v14, sub_2588597B0);
  }

  else
  {
    sub_258859E80(a1, v9, sub_258859708);
    swift_storeEnumTagMultiPayload();
    sub_258859708(0);
    sub_258859C40();
    sub_258859CF0();
    return sub_2588BC778();
  }
}

unint64_t sub_258859BC0()
{
  result = qword_27F9602B8;
  if (!qword_27F9602B8)
  {
    sub_258859768(255);
    sub_258859C40();
    sub_258859CF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9602B8);
  }

  return result;
}

unint64_t sub_258859C40()
{
  result = qword_27F9602C0;
  if (!qword_27F9602C0)
  {
    sub_2588597B0(255);
    sub_258859CF0();
    sub_258859F98(&qword_27F95F8E0, sub_25885987C, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9602C0);
  }

  return result;
}

unint64_t sub_258859CF0()
{
  result = qword_27F9602C8;
  if (!qword_27F9602C8)
  {
    sub_258859708(255);
    sub_258859D70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9602C8);
  }

  return result;
}

unint64_t sub_258859D70()
{
  result = qword_27F9602D0;
  if (!qword_27F9602D0)
  {
    sub_2588596A8(255);
    sub_258859F98(&qword_27F95FD40, sub_258846858, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9602D0);
  }

  return result;
}

uint64_t sub_258859E20(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_258859E80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_258859EE8()
{
  result = qword_27F9602E0;
  if (!qword_27F9602E0)
  {
    sub_2588598D4(255);
    sub_258859BC0();
    sub_258859F98(&qword_27F95D9D8, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9602E0);
  }

  return result;
}

uint64_t sub_258859F98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_258859FE0@<X0>(uint64_t *a2@<X8>)
{
  sub_2587CEE98();
  result = sub_2588BBD18();
  *a2 = result;
  return result;
}

uint64_t MIUIMedicalIDAccessPoint.analyticsDisplayName.getter(uint64_t a1)
{
  if (a1 <= 3)
  {
    if (a1 > 1)
    {
      return 0xD000000000000016;
    }

    if (!a1)
    {
      return 0x64657473696C6E55;
    }

    if (a1 == 1)
    {
      return 0x502068746C616548;
    }

    return 0x6E776F6E6B6E55;
  }

  if (a1 <= 5)
  {
    if (a1 != 4)
    {
      return 0xD00000000000001FLL;
    }

    return 0xD00000000000001CLL;
  }

  switch(a1)
  {
    case 6:
      return 0xD00000000000001CLL;
    case 7:
      return 0x532068746C616548;
    case 8:
      return 0x7041206863746157;
  }

  return 0x6E776F6E6B6E55;
}

uint64_t sub_25885A230(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_25885A280(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_25885A280(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2588BDA08();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_25885A324(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2588BCBE8();
  sub_2588BBE38();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  sub_25885BEC4(0, &qword_27F960340, sub_258848828, &type metadata for MedicalIDCellStyle);
  (*(*(v13 - 8) + 16))(a2, a1, v13);
  sub_25885AF0C(0);
  v15 = a2 + *(v14 + 36);
  *v15 = v4;
  *(v15 + 8) = v6;
  *(v15 + 16) = v8;
  *(v15 + 24) = v10;
  *(v15 + 32) = v12;
  *(v15 + 40) = 0;
}

uint64_t sub_25885A400@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2588BCCD8();
  KeyPath = swift_getKeyPath(byte_2588C5D60);
  sub_25885BEC4(0, &qword_27F960440, sub_25885BF24, &type metadata for MedicalIDCellHeaderTextStyle);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  sub_25885B638(0, &qword_27F960450, &qword_27F960440, sub_25885BF24, &type metadata for MedicalIDCellHeaderTextStyle);
  v8 = (a2 + *(v7 + 36));
  *v8 = KeyPath;
  v8[1] = v4;
  if (qword_27F95D160 != -1)
  {
    swift_once();
  }

  v9 = qword_27F969918;
  sub_25885BF78(0);
  *(a2 + *(v10 + 36)) = v9;
  v11 = swift_getKeyPath("x\x1B\n'");
  sub_25885C024(0);
  v13 = a2 + *(v12 + 36);
  *v13 = v11;
  *(v13 + 8) = 0;
}

uint64_t sub_25885A56C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_25885BEC4(0, &qword_27F960338, sub_2588281D0, &type metadata for MedicalIDCellBodyTextStyle);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

void sub_25885A5FC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_25885BEC4(0, &qword_27F960308, sub_258828408, &type metadata for MedicalIDCellPlaceholderTextStyle);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  LODWORD(a1) = sub_2588BC8D8();
  sub_25885A698(0);
  *(a2 + *(v5 + 36)) = a1;
}

void sub_25885A698(uint64_t a1)
{
  if (!qword_27F960310)
  {
    sub_25885A718(255);
    sub_25885B2AC(255, &qword_27F95E5F8, MEMORY[0x277CE04F8], MEMORY[0x277CE04E8]);
    v1 = sub_2588BC1E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F960310);
    }
  }
}

void sub_25885A718(uint64_t a1)
{
  if (!qword_27F960318)
  {
    sub_25885BEC4(255, &qword_27F960308, sub_258828408, &type metadata for MedicalIDCellPlaceholderTextStyle);
    v1 = sub_2588BC1E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F960318);
    }
  }
}

unint64_t sub_25885A824()
{
  result = qword_27F960330;
  if (!qword_27F960330)
  {
    sub_25885BEC4(255, &qword_27F960308, sub_258828408, &type metadata for MedicalIDCellPlaceholderTextStyle);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F960330);
  }

  return result;
}

unint64_t sub_25885A8A0()
{
  result = qword_27F95E628;
  if (!qword_27F95E628)
  {
    sub_25885B2AC(255, &qword_27F95E5F8, MEMORY[0x277CE04F8], MEMORY[0x277CE04E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E628);
  }

  return result;
}

uint64_t sub_25885A92C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a1;
  v27 = a2;
  v2 = sub_2588BBEC8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25885B638(0, &qword_27F960350, &qword_27F960358, sub_25885AF90, &type metadata for EditSectionHeaderViewTitleStyle);
  v7 = v6;
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - v8;
  sub_25885AFE4(0);
  v11 = v10;
  MEMORY[0x28223BE20](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2588BCC68();
  KeyPath = swift_getKeyPath(byte_2588C5D60);
  sub_25885BEC4(0, &qword_27F960358, sub_25885AF90, &type metadata for EditSectionHeaderViewTitleStyle);
  (*(*(v16 - 8) + 16))(v9, v26, v16);
  v17 = &v9[*(v7 + 36)];
  *v17 = KeyPath;
  v17[1] = v14;
  sub_2588BCC28();
  sub_25885B114();
  sub_2588BCE28();
  sub_25885B2FC(v9);
  v18 = [objc_opt_self() labelColor];
  *&v13[*(v11 + 36)] = sub_2588BD148();
  (*(v3 + 104))(v5, *MEMORY[0x277CDF350], v2);
  sub_25885B384();
  v19 = v27;
  sub_2588BCF48();
  (*(v3 + 8))(v5, v2);
  sub_2587A15C8(v13);
  sub_25885B460(0, &qword_27F960390, sub_25885B4FC);
  v21 = (v19 + *(v20 + 36));
  sub_25885B580(0, &qword_27F95E5E8, sub_2587E609C, MEMORY[0x277CE0860]);
  v23 = *(v22 + 28);
  v24 = sub_2588BCDB8();
  (*(*(v24 - 8) + 56))(&v21[v23], 1, 1, v24);
  result = swift_getKeyPath(byte_2588C5D90);
  *v21 = result;
  return result;
}

uint64_t sub_25885ACA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2588BCBF8();
  KeyPath = swift_getKeyPath(byte_2588C5D60);
  sub_25885BEC4(0, &qword_27F9603A0, sub_25885B5E4, &type metadata for EditSectionHeaderViewDescriptionStyle);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  sub_25885B638(0, &qword_27F9603B0, &qword_27F9603A0, sub_25885B5E4, &type metadata for EditSectionHeaderViewDescriptionStyle);
  v8 = (a2 + *(v7 + 36));
  *v8 = KeyPath;
  v8[1] = v4;
  v9 = [objc_opt_self() secondaryLabelColor];
  v10 = sub_2588BD148();
  sub_25885B6C4(0);
  *(a2 + *(v11 + 36)) = v10;
  v12 = swift_getKeyPath(byte_2588C5DC0);
  sub_25885B770(0);
  v14 = a2 + *(v13 + 36);
  *v14 = v12;
  *(v14 + 8) = 0;
  *(v14 + 16) = 1;
  v15 = swift_getKeyPath("x\x1B\n'");
  sub_25885B85C(0);
  v17 = a2 + *(v16 + 36);
  *v17 = v15;
  *(v17 + 8) = 0;
  sub_25885B938(0);
  v19 = (a2 + *(v18 + 36));
  sub_25885B580(0, &qword_27F95E5E8, sub_2587E609C, MEMORY[0x277CE0860]);
  v21 = *(v20 + 28);
  v22 = sub_2588BCDB8();
  (*(*(v22 - 8) + 56))(&v19[v21], 1, 1, v22);
  result = swift_getKeyPath(byte_2588C5D90);
  *v19 = result;
  return result;
}

void sub_25885AF0C(uint64_t a1)
{
  if (!qword_27F960348)
  {
    sub_25885BEC4(255, &qword_27F960340, sub_258848828, &type metadata for MedicalIDCellStyle);
    v1 = sub_2588BC1E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F960348);
    }
  }
}

unint64_t sub_25885AF90()
{
  result = qword_27F960360;
  if (!qword_27F960360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F960360);
  }

  return result;
}

void sub_25885AFE4(uint64_t a1)
{
  if (!qword_27F960368)
  {
    sub_25885B064(255);
    sub_25885B2AC(255, &qword_27F95D950, MEMORY[0x277CE0F78], MEMORY[0x277CE0F60]);
    v1 = sub_2588BC1E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F960368);
    }
  }
}

void sub_25885B064(uint64_t a1)
{
  if (!qword_27F960370)
  {
    sub_25885B638(255, &qword_27F960350, &qword_27F960358, sub_25885AF90, &type metadata for EditSectionHeaderViewTitleStyle);
    sub_25885B114();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F960370);
    }
  }
}

unint64_t sub_25885B114()
{
  result = qword_27F960378;
  if (!qword_27F960378)
  {
    sub_25885B638(255, &qword_27F960350, &qword_27F960358, sub_25885AF90, &type metadata for EditSectionHeaderViewTitleStyle);
    sub_25885B1E0();
    sub_25885B25C(&qword_27F95D9B8, &qword_27F95D998, &qword_27F95D9A0, MEMORY[0x277CE0AE0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F960378);
  }

  return result;
}

unint64_t sub_25885B1E0()
{
  result = qword_27F960380;
  if (!qword_27F960380)
  {
    sub_25885BEC4(255, &qword_27F960358, sub_25885AF90, &type metadata for EditSectionHeaderViewTitleStyle);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F960380);
  }

  return result;
}

uint64_t sub_25885B25C(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_25885B7F0(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_25885B2AC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    v5 = sub_2588BC918();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_25885B2FC(uint64_t a1)
{
  sub_25885B638(0, &qword_27F960350, &qword_27F960358, sub_25885AF90, &type metadata for EditSectionHeaderViewTitleStyle);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_25885B384()
{
  result = qword_27F960388;
  if (!qword_27F960388)
  {
    sub_25885AFE4(255);
    sub_25885B638(255, &qword_27F960350, &qword_27F960358, sub_25885AF90, &type metadata for EditSectionHeaderViewTitleStyle);
    sub_25885B114();
    swift_getOpaqueTypeConformance2();
    sub_258836894();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F960388);
  }

  return result;
}

void sub_25885B460(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_25885B580(255, &qword_27F95E5E8, sub_2587E609C, MEMORY[0x277CE0860]);
    v4 = sub_2588BC1E8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_25885B4FC(uint64_t a1)
{
  if (!qword_27F960398)
  {
    sub_25885AFE4(255);
    sub_25885B384();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F960398);
    }
  }
}

void sub_25885B580(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_25885B5E4()
{
  result = qword_27F9603A8;
  if (!qword_27F9603A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9603A8);
  }

  return result;
}

void sub_25885B638(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    sub_25885BEC4(255, a3, a4, a5);
    sub_25885B7F0(255, &qword_27F95D998, &qword_27F95D9A0, MEMORY[0x277CE0AE0]);
    v6 = sub_2588BC1E8();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_25885B6C4(uint64_t a1)
{
  if (!qword_27F9603B8)
  {
    sub_25885B638(255, &qword_27F9603B0, &qword_27F9603A0, sub_25885B5E4, &type metadata for EditSectionHeaderViewDescriptionStyle);
    sub_25885B2AC(255, &qword_27F95D950, MEMORY[0x277CE0F78], MEMORY[0x277CE0F60]);
    v1 = sub_2588BC1E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F9603B8);
    }
  }
}

void sub_25885B770(uint64_t a1)
{
  if (!qword_27F9603C0)
  {
    sub_25885B6C4(255);
    sub_25885B7F0(255, &qword_27F9603C8, &qword_27F9603D0, MEMORY[0x277D83B88]);
    v1 = sub_2588BC1E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F9603C0);
    }
  }
}

void sub_25885B7F0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_25885B8E8(255, a3, a4, MEMORY[0x277D83D88]);
    v5 = sub_2588BCA88();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_25885B85C(uint64_t a1)
{
  if (!qword_27F9603D8)
  {
    sub_25885B770(255);
    sub_25885B8E8(255, &qword_27F95E5B8, MEMORY[0x277CDF720], MEMORY[0x277CE0860]);
    v1 = sub_2588BC1E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F9603D8);
    }
  }
}

void sub_25885B8E8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_25885B968()
{
  result = qword_27F9603E8;
  if (!qword_27F9603E8)
  {
    sub_25885BEC4(255, &qword_27F960338, sub_2588281D0, &type metadata for MedicalIDCellBodyTextStyle);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9603E8);
  }

  return result;
}

unint64_t sub_25885B9E4()
{
  result = qword_27F9603F0;
  if (!qword_27F9603F0)
  {
    sub_25885AF0C(255);
    sub_25885BA64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9603F0);
  }

  return result;
}

unint64_t sub_25885BA64()
{
  result = qword_27F9603F8;
  if (!qword_27F9603F8)
  {
    sub_25885BEC4(255, &qword_27F960340, sub_258848828, &type metadata for MedicalIDCellStyle);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9603F8);
  }

  return result;
}

unint64_t sub_25885BAE0()
{
  result = qword_27F960400;
  if (!qword_27F960400)
  {
    sub_25885B460(255, &qword_27F960390, sub_25885B4FC);
    sub_25885AFE4(255);
    sub_25885B384();
    swift_getOpaqueTypeConformance2();
    sub_25885BBAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F960400);
  }

  return result;
}

unint64_t sub_25885BBAC()
{
  result = qword_27F95E620;
  if (!qword_27F95E620)
  {
    sub_25885B580(255, &qword_27F95E5E8, sub_2587E609C, MEMORY[0x277CE0860]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E620);
  }

  return result;
}

unint64_t sub_25885BC7C()
{
  result = qword_27F960418;
  if (!qword_27F960418)
  {
    sub_25885B770(255);
    sub_25885C0F8(&qword_27F960420, sub_25885B6C4, sub_25885BD60, sub_258836894);
    sub_25885B25C(&qword_27F960438, &qword_27F9603C8, &qword_27F9603D0, MEMORY[0x277D83B88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F960418);
  }

  return result;
}

unint64_t sub_25885BD60()
{
  result = qword_27F960428;
  if (!qword_27F960428)
  {
    sub_25885B638(255, &qword_27F9603B0, &qword_27F9603A0, sub_25885B5E4, &type metadata for EditSectionHeaderViewDescriptionStyle);
    sub_25885BE2C();
    sub_25885B25C(&qword_27F95D9B8, &qword_27F95D998, &qword_27F95D9A0, MEMORY[0x277CE0AE0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F960428);
  }

  return result;
}

unint64_t sub_25885BE2C()
{
  result = qword_27F960430;
  if (!qword_27F960430)
  {
    sub_25885BEC4(255, &qword_27F9603A0, sub_25885B5E4, &type metadata for EditSectionHeaderViewDescriptionStyle);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F960430);
  }

  return result;
}

void sub_25885BEC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    a3();
    v5 = sub_2588BC8B8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_25885BF24()
{
  result = qword_27F960448;
  if (!qword_27F960448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F960448);
  }

  return result;
}

void sub_25885BF78(uint64_t a1)
{
  if (!qword_27F960458)
  {
    sub_25885B638(255, &qword_27F960450, &qword_27F960440, sub_25885BF24, &type metadata for MedicalIDCellHeaderTextStyle);
    sub_25885B2AC(255, &qword_27F95D950, MEMORY[0x277CE0F78], MEMORY[0x277CE0F60]);
    v1 = sub_2588BC1E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F960458);
    }
  }
}

void sub_25885C024(uint64_t a1)
{
  if (!qword_27F960460)
  {
    sub_25885BF78(255);
    sub_25885B8E8(255, &qword_27F95E5B8, MEMORY[0x277CDF720], MEMORY[0x277CE0860]);
    v1 = sub_2588BC1E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F960460);
    }
  }
}

uint64_t sub_25885C0F8(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25885C184()
{
  result = qword_27F960478;
  if (!qword_27F960478)
  {
    sub_25885B638(255, &qword_27F960450, &qword_27F960440, sub_25885BF24, &type metadata for MedicalIDCellHeaderTextStyle);
    sub_25885C250();
    sub_25885B25C(&qword_27F95D9B8, &qword_27F95D998, &qword_27F95D9A0, MEMORY[0x277CE0AE0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F960478);
  }

  return result;
}

unint64_t sub_25885C250()
{
  result = qword_27F960480;
  if (!qword_27F960480)
  {
    sub_25885BEC4(255, &qword_27F960440, sub_25885BF24, &type metadata for MedicalIDCellHeaderTextStyle);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F960480);
  }

  return result;
}

uint64_t sub_25885C318@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[3];
  v13[2] = v1[2];
  v13[3] = v3;
  v4 = v1[5];
  v13[4] = v1[4];
  v13[5] = v4;
  v5 = v1[1];
  v13[0] = *v1;
  v13[1] = v5;
  v12[3] = &type metadata for AllergyConfiguration;
  v12[4] = &off_2869C1778;
  v6 = swift_allocObject();
  v12[0] = v6;
  v7 = v1[3];
  v6[3] = v1[2];
  v6[4] = v7;
  v8 = v1[5];
  v6[5] = v1[4];
  v6[6] = v8;
  v9 = v1[1];
  v6[1] = *v1;
  v6[2] = v9;
  sub_25885C3D0(v13, v11);
  return sub_25884E278(v12, sub_258802A78, 0, a1);
}

uint64_t type metadata accessor for MedicalIDEditSettingsView(uint64_t a1)
{
  result = qword_27F960498;
  if (!qword_27F960498)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_25885C4A0(uint64_t a1)
{
  type metadata accessor for MedicalIDSettingsViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_2588615C4(319, &qword_27F95DAF8, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
    if (v2 <= 0x3F)
    {
      sub_25885C5F0(319, &qword_27F9604A8, type metadata accessor for MedicalIDEditableSettingsViewModel, MEMORY[0x277CE10B8]);
      if (v3 <= 0x3F)
      {
        sub_2587BC234(319);
        if (v4 <= 0x3F)
        {
          sub_25885C5F0(319, &qword_27F95DC90, type metadata accessor for MedicalIDDataManager, MEMORY[0x277CDF468]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_25885C5F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_25885C670@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for MedicalIDEditSettingsView(0);
  v5 = a2 + v4[5];
  sub_2588BD2B8();
  *v5 = v15;
  *(v5 + 8) = v16;
  v6 = (a2 + v4[8]);
  sub_2587CEE98();
  sub_25886084C(&qword_27F95DAE8, sub_2587CEE98, &protocol conformance descriptor for MIUIDisplayConfiguration);
  *v6 = sub_2588BC358();
  v6[1] = v7;
  v8 = a2 + v4[9];
  type metadata accessor for MedicalIDDataManager(0);
  sub_25886084C(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager, &protocol conformance descriptor for MedicalIDDataManager);
  *v8 = sub_2588BBF58();
  *(v8 + 8) = v9 & 1;
  sub_258861F88(a1, a2, type metadata accessor for MedicalIDSettingsViewModel);
  v10 = type metadata accessor for MedicalIDData(0);
  LOBYTE(v8) = *(a1 + *(v10 + 68));
  v11 = a2 + v4[6];
  sub_2588BD2B8();
  *v11 = v15;
  *(v11 + 8) = v16;
  LOBYTE(v10) = *(a1 + *(v10 + 64));
  type metadata accessor for MedicalIDEditableSettingsViewModel(0);
  v12 = swift_allocObject();
  sub_2588BBBC8();
  result = sub_258861290(a1, type metadata accessor for MedicalIDSettingsViewModel);
  *(v12 + 17) = (v10 & 1) == 0;
  *(v12 + 16) = v8;
  v14 = (a2 + v4[7]);
  *v14 = v12;
  v14[1] = 0;
  return result;
}

uint64_t sub_25885C878@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_2588C5FE0);
  sub_25886084C(&qword_27F95DC18, type metadata accessor for MedicalIDEditableSettingsViewModel, &unk_2588C0A60);
  sub_2588BBB98();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_25885C948@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_2588C6008);
  sub_25886084C(&qword_27F95DC18, type metadata accessor for MedicalIDEditableSettingsViewModel, &unk_2588C0A60);
  sub_2588BBB98();

  *a2 = *(v3 + 17);
  return result;
}

uint64_t sub_25885CA3C(uint64_t a1)
{
  v2 = sub_2588BC088();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_2588BC4D8();
}

uint64_t sub_25885CB04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_258861350(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258861F88(a3, v10, sub_258861350);
  v11 = sub_2588BDAA8();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_258861290(v10, sub_258861350);
  }

  else
  {
    sub_2588BDA98();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_2588BDA28();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_2588BD8E8() + 32;

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

      sub_258861290(a3, sub_258861350);

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

  sub_258861290(a3, sub_258861350);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_25885CDB8()
{
  v1 = sub_2588BC598();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for MedicalIDEditSettingsView(0) + 36));
  v6 = *v5;
  v7 = *(v5 + 8);

  if ((v7 & 1) == 0)
  {
    sub_2588BDBE8();
    v8 = sub_2588BCB58();
    sub_2588BBC68();

    sub_2588BC588();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v10[1];
  }

  return v6;
}

uint64_t sub_25885CF08@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v50 = a1;
  v44 = type metadata accessor for MedicalIDEditSettingsView(0);
  v47 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v48 = v3;
  v49 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2588BC868();
  MEMORY[0x28223BE20](v4);
  v5 = sub_2588BD588();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (&v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_258860894(0);
  v43 = v9;
  v42 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588610DC(0);
  v51 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258861104(0);
  v46 = v15;
  v45 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v52 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25885C5F0(0, &qword_27F9605A0, MEMORY[0x277CDF110], MEMORY[0x277D84560]);
  sub_2588BD598();
  *(swift_allocObject() + 16) = xmmword_2588C00B0;
  *v8 = xmmword_2588C5F50;
  (*(v6 + 104))(v8, *MEMORY[0x277CDF108], v5);
  sub_2588BD5A8();
  sub_2588BC6F8();
  v53 = v1;
  LODWORD(v54) = 0;
  sub_25886084C(&qword_27F95DB70, MEMORY[0x277CE0428], MEMORY[0x277CE0448]);
  sub_2588BE0D8();
  sub_258860928(0);
  sub_25886084C(&qword_27F960578, sub_258860928, MEMORY[0x277CE14C0]);
  sub_2588BD608();
  sub_2588615C4(0, &qword_27F95E480, MEMORY[0x277CE0910], MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2588C17A0;
  LOBYTE(v8) = sub_2588BCBB8();
  *(inited + 32) = v8;
  v18 = sub_2588BCBD8();
  *(inited + 33) = v18;
  v19 = sub_2588BCB98();
  *(inited + 34) = v19;
  v20 = sub_2588BCBC8();
  sub_2588BCBC8();
  if (sub_2588BCBC8() != v8)
  {
    v20 = sub_2588BCBC8();
  }

  sub_2588BCBC8();
  if (sub_2588BCBC8() != v18)
  {
    v20 = sub_2588BCBC8();
  }

  sub_2588BCBC8();
  if (sub_2588BCBC8() != v19)
  {
    v20 = sub_2588BCBC8();
  }

  (*(v42 + 32))(v14, v11, v43);
  v21 = &v14[*(v51 + 36)];
  *v21 = v20;
  *(v21 + 8) = 0u;
  *(v21 + 24) = 0u;
  v21[40] = 1;
  v22 = v44;
  v23 = v2 + *(v44 + 20);
  v24 = *v23;
  v25 = *(v23 + 8);
  LOBYTE(v58) = v24;
  v59 = v25;
  v26 = MEMORY[0x277D839B0];
  sub_2588615C4(0, &qword_27F95DAF8, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  sub_2588BD2E8();
  v41 = type metadata accessor for MedicalIDLearnMoreNavigationView(0);
  v42 = sub_2588611D8();
  v43 = sub_25886084C(&qword_27F95E780, type metadata accessor for MedicalIDLearnMoreNavigationView, &unk_2588C53A4);
  sub_2588BD068();

  sub_258861290(v14, sub_2588610DC);
  sub_2588615C4(0, &qword_27F95F4A0, v26, MEMORY[0x277D84560]);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_2588BFF50;
  v28 = (v2 + *(v22 + 28));
  v29 = v28[1];
  v54 = *v28;
  v30 = v54;
  v55 = v29;
  sub_25885C5F0(0, &qword_27F9604A8, type metadata accessor for MedicalIDEditableSettingsViewModel, MEMORY[0x277CE10B8]);
  sub_2588BD2C8();
  v31 = v58;
  swift_getKeyPath(byte_2588C5FE0);
  v54 = v31;
  sub_25886084C(&qword_27F95DC18, type metadata accessor for MedicalIDEditableSettingsViewModel, &unk_2588C0A60);
  sub_2588BBB98();

  v32 = *(v31 + 16);

  *(v27 + 32) = v32;
  v54 = v30;
  v55 = v29;
  sub_2588BD2C8();
  v33 = v58;
  swift_getKeyPath(byte_2588C6008);
  v54 = v33;
  sub_2588BBB98();

  v34 = *(v33 + 17);

  *(v27 + 33) = v34;
  v58 = v27;
  v35 = v49;
  sub_258861F88(v2, v49, type metadata accessor for MedicalIDEditSettingsView);
  v36 = (*(v47 + 80) + 16) & ~*(v47 + 80);
  v37 = swift_allocObject();
  sub_2588618D4(v35, v37 + v36, type metadata accessor for MedicalIDEditSettingsView);
  sub_2588615C4(0, &qword_27F95F468, MEMORY[0x277D839B0], MEMORY[0x277D83940]);
  v54 = v51;
  v55 = v41;
  v56 = v42;
  v57 = v43;
  swift_getOpaqueTypeConformance2();
  sub_2588221D4();
  v38 = v46;
  v39 = v52;
  sub_2588BD118();

  return (*(v45 + 8))(v39, v38);
}

uint64_t sub_25885D920@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v175 = a2;
  sub_258860DB8(0);
  v174 = v3;
  v173 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v156 = v146 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MedicalIDEditSettingsView(0);
  v6 = v5 - 8;
  v148 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v150 = v7;
  v8 = v146 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25886107C(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v146 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258860FE4(0);
  v147 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v155 = v146 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v146 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = v146 - v18;
  sub_258860F88(0, &qword_27F960558, &qword_27F960560, MEMORY[0x277CE0338], sub_2588621B0);
  v164 = v20;
  MEMORY[0x28223BE20](v20);
  v178 = v146 - v21;
  sub_258860EE8(0);
  MEMORY[0x28223BE20](v22 - 8);
  v163 = v146 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258860E5C(0);
  v162 = v24;
  v25 = MEMORY[0x28223BE20](v24);
  v149 = v146 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v161 = v146 - v28;
  MEMORY[0x28223BE20](v27);
  v165 = v146 - v29;
  sub_258860D84(0);
  v31 = MEMORY[0x28223BE20](v30 - 8);
  v172 = v146 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v179 = v146 - v33;
  sub_258860A88(0);
  v177 = v34;
  v176 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v160 = v146 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258860CA0(0, &qword_27F960520, &qword_27F960528, &type metadata for ListInsetGroupedFooterView);
  v37 = MEMORY[0x28223BE20](v36 - 8);
  v159 = v146 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v158 = v146 - v39;
  sub_258860F88(0, &qword_27F960508, &qword_27F960510, MEMORY[0x277CE0338], sub_258860C0C);
  v169 = v40;
  MEMORY[0x28223BE20](v40);
  v180 = (v146 - v41);
  sub_258860B6C(0);
  MEMORY[0x28223BE20](v42 - 8);
  v168 = v146 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258860B44(0);
  v167 = v44;
  v45 = MEMORY[0x28223BE20](v44);
  v157 = v146 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x28223BE20](v45);
  v166 = v146 - v48;
  MEMORY[0x28223BE20](v47);
  v181 = v146 - v49;
  sub_258860A54(0);
  v51 = MEMORY[0x28223BE20](v50 - 8);
  v171 = v146 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v51);
  v182 = v146 - v53;
  sub_258860CA0(0, &qword_27F9604D0, &qword_27F9604D8, &type metadata for ListInsetGroupedTableHeaderView);
  v55 = v54;
  v56 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v58 = v146 - v57;
  sub_2588609E4(0);
  v60 = MEMORY[0x28223BE20](v59 - 8);
  v170 = v146 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v60);
  v183 = v146 - v62;
  v63 = *(a1 + *(v6 + 40));
  if (!v63)
  {
    goto LABEL_25;
  }

  v64 = [v63 isShowWhenLockedVisible];
  v154 = v19;
  v184 = a1;
  v153 = v11;
  v152 = v17;
  v151 = v8;
  if (v64 & 1) != 0 || (sub_25885F040())
  {
    if (qword_27F95D158 != -1)
    {
      swift_once();
    }

    v65 = qword_27F960488;
    v66 = unk_27F960490;

    v67 = sub_2588BCB78();
    v190 = 1;
    *&v188 = v65;
    *(&v188 + 1) = v66;
    v189[0] = v67;
    memset(&v189[8], 0, 32);
    v189[40] = 1;
    sub_2588615C4(0, &qword_280C0DDD0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_2588BFF50;
    v69 = (a1 + *(type metadata accessor for MedicalIDSettingsViewModel(0) + 44));
    v70 = v69[1];
    *(v68 + 32) = *v69;
    *(v68 + 40) = v70;
    *(v68 + 48) = 0x726564616548;
    *(v68 + 56) = 0xE600000000000000;

    v71 = sub_2588BD9A8();

    v72 = HKUIJoinStringsForAutomationIdentifier();

    if (!v72)
    {
      __break(1u);
      goto LABEL_21;
    }

    sub_2588BD8A8();

    sub_258860D30(0, &qword_27F9604D8, &type metadata for ListInsetGroupedTableHeaderView, MEMORY[0x277CDF928], MEMORY[0x277CDFAB8]);
    sub_258861E74(&qword_27F9605E8, &qword_27F9604D8, &type metadata for ListInsetGroupedTableHeaderView, sub_2588620E0);
    sub_2588BCFB8();

    v185 = v188;
    v186 = *v189;
    *v187 = *&v189[16];
    *&v187[9] = *&v189[25];
    sub_258861F10(&v185, &qword_27F9604D8, &type metadata for ListInsetGroupedTableHeaderView);
    v73 = v183;
    sub_258862134(v58, v183);
    (*(v56 + 56))(v73, 0, 1, v55);
    a1 = v184;
  }

  else
  {
    (*(v56 + 56))(v183, 1, 1, v55);
  }

  v74 = [v63 isShowWhenLockedVisible];
  v75 = v181;
  v76 = v180;
  if (v74)
  {
    sub_25885F18C(a1, v180);
    sub_2588615C4(0, &qword_280C0DDD0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
    v146[1] = v77;
    v78 = swift_allocObject();
    *(v78 + 16) = xmmword_2588BFF50;
    v79 = (a1 + *(type metadata accessor for MedicalIDSettingsViewModel(0) + 44));
    v80 = *v79;
    v81 = v79[1];
    *(v78 + 32) = *v79;
    *(v78 + 40) = v81;
    strcpy((v78 + 48), "ShowWhenLocked");
    *(v78 + 63) = -18;
    swift_bridgeObjectRetain_n();
    v82 = sub_2588BD9A8();

    v83 = HKUIJoinStringsForAutomationIdentifier();

    if (v83)
    {
      sub_2588BD8A8();

      sub_258861D68();
      v84 = v168;
      sub_2588BCFB8();

      sub_258861E18(v76, &qword_27F960508, &qword_27F960510, MEMORY[0x277CE0338], sub_258860C0C);
      v85 = v166;
      sub_2588618D4(v84, v166, sub_258860B6C);
      *(v85 + *(v167 + 36)) = 1;
      sub_2588618D4(v85, v75, sub_258860B44);
      MedicalIDSettingsViewModel.showWhenLockedFooter.getter();
      v86 = sub_2588BC688();
      v88 = v87;
      v90 = v89;
      v92 = v91;
      v93 = sub_2588BCBA8();
      [v63 isShareDuringEmergencyCallVisible];
      sub_2588BBE38();
      v190 = 0;
      *&v188 = v86;
      *(&v188 + 1) = v88;
      v189[0] = v90 & 1;
      *&v189[8] = v92;
      v189[16] = v93;
      *&v189[24] = v94;
      *&v189[32] = v95;
      *&v189[40] = v96;
      *&v189[48] = v97;
      v189[56] = 0;
      v98 = swift_allocObject();
      *(v98 + 16) = xmmword_2588C17A0;
      *(v98 + 32) = v80;
      *(v98 + 40) = v81;
      strcpy((v98 + 48), "ShowWhenLocked");
      *(v98 + 63) = -18;
      *(v98 + 64) = 0x7265746F6F46;
      *(v98 + 72) = 0xE600000000000000;
      v99 = sub_2588BD9A8();

      v100 = HKUIJoinStringsForAutomationIdentifier();

      if (v100)
      {
        sub_2588BD8A8();

        sub_258860D30(0, &qword_27F960528, &type metadata for ListInsetGroupedFooterView, MEMORY[0x277CDF928], MEMORY[0x277CDFAB8]);
        sub_258861E74(&qword_27F9605E0, &qword_27F960528, &type metadata for ListInsetGroupedFooterView, sub_25886193C);
        v101 = v158;
        sub_2588BCFB8();

        *v187 = *&v189[16];
        *&v187[16] = *&v189[32];
        *&v187[25] = *&v189[41];
        v186 = *v189;
        v185 = v188;
        sub_258861F10(&v185, &qword_27F960528, &type metadata for ListInsetGroupedFooterView);
        v102 = v157;
        sub_258861F88(v75, v157, sub_258860B44);
        v103 = v159;
        sub_258861FF0(v101, v159);
        v104 = v160;
        sub_258861F88(v102, v160, sub_258860B44);
        sub_258860ABC(0);
        sub_258861FF0(v103, v104 + *(v105 + 48));
        sub_25886206C(v101);
        sub_258861290(v75, sub_258860B44);
        sub_25886206C(v103);
        sub_258861290(v102, sub_258860B44);
        v106 = v182;
        sub_2588618D4(v104, v182, sub_258860A88);
        (*(v176 + 56))(v106, 0, 1, v177);
        v107 = v179;
        a1 = v184;
        goto LABEL_14;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v106 = v182;
  (*(v176 + 56))(v182, 1, 1, v177);
  v107 = v179;
LABEL_14:
  v108 = v178;
  if ((sub_25885F040() & 1) == 0)
  {
    v137 = 1;
    goto LABEL_19;
  }

  sub_25885F5BC(a1, v108);
  sub_2588615C4(0, &qword_280C0DDD0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v109 = a1;
  v110 = swift_allocObject();
  *(v110 + 16) = xmmword_2588BFF50;
  v111 = (v109 + *(type metadata accessor for MedicalIDSettingsViewModel(0) + 44));
  v113 = *v111;
  v112 = v111[1];
  *(v110 + 32) = *v111;
  *(v110 + 40) = v112;
  *(v110 + 48) = 0xD000000000000014;
  *(v110 + 56) = 0x80000002588CA670;
  swift_bridgeObjectRetain_n();
  v114 = sub_2588BD9A8();

  v115 = HKUIJoinStringsForAutomationIdentifier();

  if (v115)
  {
    sub_2588BD8A8();

    sub_258861614();
    v116 = v163;
    sub_2588BCFB8();

    sub_258861E18(v108, &qword_27F960558, &qword_27F960560, MEMORY[0x277CE0338], sub_2588621B0);
    v117 = v161;
    sub_2588618D4(v116, v161, sub_258860EE8);
    *(v117 + *(v162 + 36)) = 1;
    v118 = v165;
    sub_2588618D4(v117, v165, sub_258860E5C);
    MedicalIDSettingsViewModel.shareDuringEmergencyCallFooter.getter();
    *&v188 = sub_2588BC688();
    *(&v188 + 1) = v119;
    v189[0] = v120 & 1;
    *&v189[8] = v121;
    v122 = swift_allocObject();
    *(v122 + 16) = xmmword_2588C17A0;
    *(v122 + 32) = v113;
    *(v122 + 40) = v112;
    *(v122 + 48) = 0xD000000000000014;
    *(v122 + 56) = 0x80000002588CA670;
    *(v122 + 64) = 0x7265746F6F46;
    *(v122 + 72) = 0xE600000000000000;
    v123 = sub_2588BD9A8();

    v124 = HKUIJoinStringsForAutomationIdentifier();

    if (v124)
    {
      sub_2588BD8A8();

      sub_25886193C();
      v125 = v153;
      sub_2588BCFB8();

      KeyPath = swift_getKeyPath(aX_7);
      v127 = v151;
      sub_258861F88(v184, v151, type metadata accessor for MedicalIDEditSettingsView);
      v128 = (*(v148 + 80) + 16) & ~*(v148 + 80);
      v129 = swift_allocObject();
      sub_2588618D4(v127, v129 + v128, type metadata accessor for MedicalIDEditSettingsView);
      v130 = v152;
      v131 = &v152[*(v147 + 36)];
      sub_25885C5F0(0, &qword_27F95E6C8, MEMORY[0x277CDF708], MEMORY[0x277CE0860]);
      sub_2588BC078();
      *v131 = KeyPath;
      sub_2588618D4(v125, v130, sub_25886107C);
      v132 = v154;
      sub_2588618D4(v130, v154, sub_258860FE4);
      v133 = v149;
      sub_258861F88(v118, v149, sub_258860E5C);
      v134 = v155;
      sub_258861F88(v132, v155, sub_258860FE4);
      v135 = v156;
      sub_258861F88(v133, v156, sub_258860E5C);
      sub_258860DEC(0);
      sub_258861F88(v134, v135 + *(v136 + 48), sub_258860FE4);
      sub_258861290(v132, sub_258860FE4);
      sub_258861290(v118, sub_258860E5C);
      sub_258861290(v134, sub_258860FE4);
      sub_258861290(v133, sub_258860E5C);
      sub_2588618D4(v135, v107, sub_258860DB8);
      v137 = 0;
      v106 = v182;
LABEL_19:
      (*(v173 + 56))(v107, v137, 1, v174);
      v138 = v183;
      v139 = v170;
      sub_258861F88(v183, v170, sub_2588609E4);
      v140 = v171;
      sub_258861F88(v106, v171, sub_258860A54);
      v141 = v172;
      sub_258861F88(v107, v172, sub_258860D84);
      v142 = v175;
      sub_258861F88(v139, v175, sub_2588609E4);
      sub_25886095C(0);
      v144 = v143;
      sub_258861F88(v140, v142 + *(v143 + 48), sub_258860A54);
      sub_258861F88(v141, v142 + *(v144 + 64), sub_258860D84);
      sub_258861290(v107, sub_258860D84);
      sub_258861290(v106, sub_258860A54);
      sub_258861290(v138, sub_2588609E4);
      sub_258861290(v141, sub_258860D84);
      sub_258861290(v140, sub_258860A54);
      return sub_258861290(v139, sub_2588609E4);
    }

    goto LABEL_24;
  }

LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  sub_2587CEE98();
  sub_25886084C(&qword_27F95DAE8, sub_2587CEE98, &protocol conformance descriptor for MIUIDisplayConfiguration);
  result = sub_2588BC348();
  __break(1u);
  return result;
}

uint64_t sub_25885F040()
{
  v1 = v0;
  v2 = type metadata accessor for MedicalIDEditSettingsView(0);
  v3 = *(v0 + *(v2 + 32));
  if (v3)
  {
    v7 = *(v1 + *(v2 + 24));
    sub_2588615C4(0, &qword_27F95DAF8, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
    v4 = v3;
    sub_2588BD2C8();
    if ([(MIUIDisplayConfiguration *)v4 isShareDuringEmergencyCallVisible])
    {
      MedicalIDSettingsViewModel.shareDuringEmergencyCallViewState(with:hasShareDuringEmergencyCallBeenEnabled:)(v4, v6);

      return v7 < 2u;
    }

    else
    {

      return 0;
    }
  }

  else
  {
    sub_2587CEE98();
    sub_25886084C(&qword_27F95DAE8, sub_2587CEE98, &protocol conformance descriptor for MIUIDisplayConfiguration);
    result = sub_2588BC348();
    __break(1u);
  }

  return result;
}

void *sub_25885F18C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_258860C0C(0, &qword_27F9605F8, MEMORY[0x277CE0330]);
  v5 = v4;
  MEMORY[0x28223BE20](v4);
  v7 = (v29 - v6);
  sub_258860D30(0, &qword_27F960518, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CDF058]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = v29 - v11;
  v13 = type metadata accessor for MedicalIDEditSettingsView(0);
  v14 = *(a1 + *(v13 + 32));
  if (v14)
  {
    v15 = v13;
    v16 = v14;
    v17 = MedicalIDSettingsViewModel.isShowWhenLockedEditable(with:)(v16);

    if (v17)
    {
      v18 = (a1 + *(v15 + 28));
      v20 = *v18;
      v19 = v18[1];
      v29[2] = v20;
      v29[3] = v19;
      sub_25885C5F0(0, &qword_27F9604A8, type metadata accessor for MedicalIDEditableSettingsViewModel, MEMORY[0x277CE10B8]);
      sub_2588BD2E8();
      v21 = v30;
      v22 = v31;
      v29[1] = a2;
      v23 = v32;
      swift_getKeyPath(byte_2588C6008);
      v29[0] = v5;
      v30 = v21;
      v31 = v22;
      v32 = v23;
      sub_25885C5F0(0, &qword_27F960600, type metadata accessor for MedicalIDEditableSettingsViewModel, MEMORY[0x277CE11F8]);
      sub_2588BD448();

      sub_2588BD3C8();
      (*(v10 + 16))(v7, v12, v9);
      swift_storeEnumTagMultiPayload();
      sub_2588617FC();
      sub_258861880();
      sub_2588BC778();
      return (*(v10 + 8))(v12, v9);
    }

    else
    {
      if (qword_27F95D0B0 != -1)
      {
        swift_once();
      }

      v26 = qword_27F9697B8;
      v25 = unk_27F9697C0;

      locked = MedicalIDSettingsViewModel.showWhenLockedDetail.getter();
      *v7 = v26;
      v7[1] = v25;
      v7[2] = locked;
      v7[3] = v28;
      swift_storeEnumTagMultiPayload();
      sub_2588617FC();
      sub_258861880();
      return sub_2588BC778();
    }
  }

  else
  {
    sub_2587CEE98();
    sub_25886084C(&qword_27F95DAE8, sub_2587CEE98, &protocol conformance descriptor for MIUIDisplayConfiguration);
    result = sub_2588BC348();
    __break(1u);
  }

  return result;
}

void *sub_25885F5BC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_2588621B0(0, &qword_27F960608, MEMORY[0x277CE0330]);
  v41 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = v36 - v5;
  sub_258860C0C(0, &qword_27F9605F8, MEMORY[0x277CE0330]);
  v38 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = (v36 - v8);
  sub_258860C0C(0, &qword_27F960510, MEMORY[0x277CE0338]);
  v40 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = v36 - v11;
  sub_258860D30(0, &qword_27F960518, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CDF058]);
  v39 = v13;
  v37 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = v36 - v14;
  v16 = type metadata accessor for MedicalIDEditSettingsView(0);
  v17 = *(a1 + *(v16 + 32));
  if (v17)
  {
    v18 = v16;
    v19 = (a1 + *(v16 + 24));
    v20 = *v19;
    v21 = *(v19 + 1);
    LOBYTE(v44) = v20;
    v45 = v21;
    sub_2588615C4(0, &qword_27F95DAF8, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
    v22 = v17;
    sub_2588BD2C8();
    MedicalIDSettingsViewModel.shareDuringEmergencyCallViewState(with:hasShareDuringEmergencyCallBeenEnabled:)(v22, v42);

    if (v47)
    {
      if (v47 == 1)
      {
        if (qword_27F95D100 != -1)
        {
          swift_once();
        }

        v24 = qword_27F969858;
        v23 = unk_27F969860;

        v25 = MedicalIDSettingsViewModel.shareDuringEmergencyCallDetail.getter();
        *v9 = v24;
        v9[1] = v23;
        v9[2] = v25;
        v9[3] = v26;
        swift_storeEnumTagMultiPayload();
        sub_2588617FC();
        sub_258861880();
        sub_2588BC778();
        sub_258862234(v12, v6);
        swift_storeEnumTagMultiPayload();
        sub_258861760();
        sub_2588BC778();
        return sub_2588622B4(v12);
      }

      else
      {
        swift_storeEnumTagMultiPayload();
        sub_258861760();
        return sub_2588BC778();
      }
    }

    else
    {
      v28 = (a1 + *(v18 + 28));
      v30 = *v28;
      v29 = v28[1];
      v42 = v30;
      v43 = v29;
      sub_25885C5F0(0, &qword_27F9604A8, type metadata accessor for MedicalIDEditableSettingsViewModel, MEMORY[0x277CE10B8]);
      sub_2588BD2E8();
      v31 = v44;
      v32 = v45;
      v33 = v46;
      swift_getKeyPath(byte_2588C5FE0);
      v36[1] = a2;
      v44 = v31;
      v45 = v32;
      v46 = v33;
      sub_25885C5F0(0, &qword_27F960600, type metadata accessor for MedicalIDEditableSettingsViewModel, MEMORY[0x277CE11F8]);
      sub_2588BD448();

      sub_2588BD3C8();
      v34 = v37;
      v35 = v39;
      (*(v37 + 16))(v9, v15, v39);
      swift_storeEnumTagMultiPayload();
      sub_2588617FC();
      sub_258861880();
      sub_2588BC778();
      sub_258862234(v12, v6);
      swift_storeEnumTagMultiPayload();
      sub_258861760();
      sub_2588BC778();
      sub_2588622B4(v12);
      return (*(v34 + 8))(v15, v35);
    }
  }

  else
  {
    sub_2587CEE98();
    sub_25886084C(&qword_27F95DAE8, sub_2587CEE98, &protocol conformance descriptor for MIUIDisplayConfiguration);
    result = sub_2588BC348();
    __break(1u);
  }

  return result;
}

uint64_t sub_25885FBFC@<X0>(void *a1@<X0>, uint64_t a5@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  sub_25878F648();

  result = sub_2588BCDF8();
  *a5 = result;
  *(a5 + 8) = v7;
  *(a5 + 16) = v8 & 1;
  *(a5 + 24) = v9;
  return result;
}

uint64_t sub_25885FC94(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MedicalIDEditSettingsView(0);
  sub_2588615C4(0, &qword_27F95DAF8, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  sub_2588BD2D8();
  return sub_2588BC068();
}

uint64_t sub_25885FD34@<X0>(void *a1@<X8>)
{
  *a1 = swift_getKeyPath(byte_2588C6068);
  sub_25885C5F0(0, &qword_27F95DB30, MEMORY[0x277CDD848], MEMORY[0x277CDF458]);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_25885FDB8(uint64_t a1)
{
  v2 = type metadata accessor for MedicalIDEditSettingsView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258861350(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2588BDAA8();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_258861F88(a1, v5, type metadata accessor for MedicalIDEditSettingsView);
  sub_2588BDA78();
  v10 = sub_2588BDA68();
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  *(v12 + 16) = v10;
  *(v12 + 24) = v13;
  sub_2588618D4(v5, v12 + v11, type metadata accessor for MedicalIDEditSettingsView);
  sub_25885CB04(0, 0, v8, &unk_2588C6038, v12);
}

uint64_t sub_25885FF90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[15] = a4;
  sub_2587B63B8(0);
  v4[16] = swift_task_alloc();
  v4[17] = type metadata accessor for MedicalIDData(0);
  v4[18] = swift_task_alloc();
  v4[19] = type metadata accessor for MedicalIDEditSettingsView(0);
  v4[20] = swift_task_alloc();
  v4[21] = sub_2588BDA78();
  v4[22] = sub_2588BDA68();
  v6 = sub_2588BDA28();
  v4[23] = v6;
  v4[24] = v5;

  return MEMORY[0x2822009F8](sub_2588600B8, v6, v5);
}

uint64_t sub_2588600B8()
{
  v1 = v0[20];
  v2 = v0[15];
  v0[25] = sub_25885CDB8();
  sub_258861F88(v2, v1, type metadata accessor for MedicalIDEditSettingsView);
  v0[26] = sub_2588BDA68();
  v4 = sub_2588BDA28();
  v0[27] = v4;
  v0[28] = v3;

  return MEMORY[0x2822009F8](sub_258860178, v4, v3);
}

uint64_t sub_258860178()
{
  v1 = v0[25];
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[18];
  v15 = v0[17];
  v5 = v0[16];
  swift_getKeyPath(byte_2588C6040);
  v0[9] = v1;
  sub_25886084C(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager, &protocol conformance descriptor for MedicalIDDataManager);
  sub_2588BBB98();

  v6 = OBJC_IVAR____TtC11MedicalIDUI20MedicalIDDataManager__medicalIDData;
  swift_beginAccess();
  sub_258861F88(v1 + v6, v5, sub_2587B63B8);
  LoadState<>.loadedValue.getter(v4);
  sub_258861290(v5, sub_2587B63B8);
  v7 = (v2 + *(v3 + 28));
  v9 = *v7;
  v8 = v7[1];
  v0[5] = *v7;
  v0[6] = v8;
  sub_25885C5F0(0, &qword_27F9604A8, type metadata accessor for MedicalIDEditableSettingsViewModel, MEMORY[0x277CE10B8]);
  sub_2588BD2C8();
  v10 = v0[10];
  swift_getKeyPath(byte_2588C5FE0);
  v0[11] = v10;
  sub_25886084C(&qword_27F95DC18, type metadata accessor for MedicalIDEditableSettingsViewModel, &unk_2588C0A60);
  sub_2588BBB98();

  LOBYTE(v6) = *(v10 + 16);

  *(v4 + *(v15 + 68)) = v6;
  v0[7] = v9;
  v0[8] = v8;
  sub_2588BD2C8();
  v11 = v0[12];
  swift_getKeyPath(byte_2588C6008);
  v0[13] = v11;
  sub_2588BBB98();

  LOBYTE(v6) = *(v11 + 17);

  *(v4 + *(v15 + 64)) = (v6 & 1) == 0;
  v12 = swift_task_alloc();
  v0[29] = v12;
  *v12 = v0;
  v12[1] = sub_258860478;
  v13 = v0[18];

  return sub_258880280(v13, (v0 + 14));
}

uint64_t sub_258860478()
{
  v2 = *v1;

  v3 = *(v2 + 216);
  v4 = *(v2 + 224);
  if (v0)
  {
    v5 = sub_2588606CC;
  }

  else
  {
    v5 = sub_258860588;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_258860588()
{
  v1 = v0[20];
  v2 = v0[18];

  sub_258861290(v2, type metadata accessor for MedicalIDData);
  sub_258861290(v1, type metadata accessor for MedicalIDEditSettingsView);
  v3 = v0[23];
  v4 = v0[24];

  return MEMORY[0x2822009F8](sub_25886063C, v3, v4);
}

uint64_t sub_25886063C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2588606CC()
{
  v1 = v0[20];
  v2 = v0[18];

  sub_258861290(v2, type metadata accessor for MedicalIDData);
  v0[30] = v0[14];
  sub_258861290(v1, type metadata accessor for MedicalIDEditSettingsView);
  v3 = v0[23];
  v4 = v0[24];

  return MEMORY[0x2822009F8](sub_258860788, v3, v4);
}

uint64_t sub_258860788()
{
  v1 = *(v0 + 240);

  sub_2587CE078();
  swift_allocError();
  *v2 = v1;

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_25886084C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_258860894(uint64_t a1)
{
  if (!qword_27F9604B0)
  {
    sub_258860928(255);
    sub_25886084C(&qword_27F960578, sub_258860928, MEMORY[0x277CE14C0]);
    v1 = sub_2588BD618();
    if (!v2)
    {
      atomic_store(v1, &qword_27F9604B0);
    }
  }
}

void sub_25886095C(uint64_t a1)
{
  if (!qword_27F9604C0)
  {
    sub_2588609E4(255);
    sub_258860A54(255);
    sub_258860D84(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F9604C0);
    }
  }
}

void sub_2588609E4(uint64_t a1)
{
  if (!qword_27F9604C8)
  {
    sub_258860CA0(255, &qword_27F9604D0, &qword_27F9604D8, &type metadata for ListInsetGroupedTableHeaderView);
    v1 = sub_2588BDCE8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F9604C8);
    }
  }
}

void sub_258860ABC(uint64_t a1)
{
  if (!qword_27F9604F0)
  {
    sub_258860B44(255);
    sub_258860CA0(255, &qword_27F960520, &qword_27F960528, &type metadata for ListInsetGroupedFooterView);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F9604F0);
    }
  }
}

void sub_258860B6C(uint64_t a1)
{
  if (!qword_27F960500)
  {
    sub_258860F88(255, &qword_27F960508, &qword_27F960510, MEMORY[0x277CE0338], sub_258860C0C);
    sub_2588BCA98();
    v1 = sub_2588BC1E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F960500);
    }
  }
}

void sub_258860C0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, ValueMetadata *))
{
  if (!*a2)
  {
    sub_258860D30(255, &qword_27F960518, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CDF058]);
    v7 = a3(a1, v6, &type metadata for HorizontalTitleDetailLabelView);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_258860CA0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_258860D30(255, a3, a4, MEMORY[0x277CDF928], MEMORY[0x277CDFAB8]);
    sub_2588BCA98();
    v5 = sub_2588BC1E8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_258860D30(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void sub_258860DEC(uint64_t a1)
{
  if (!qword_27F960540)
  {
    sub_258860E5C(255);
    sub_258860FE4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F960540);
    }
  }
}

void sub_258860E84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    v5 = sub_2588BC1E8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_258860EE8(uint64_t a1)
{
  if (!qword_27F960550)
  {
    sub_258860F88(255, &qword_27F960558, &unk_27F960560, MEMORY[0x277CE0338], sub_2588621B0);
    sub_2588BCA98();
    v1 = sub_2588BC1E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F960550);
    }
  }
}

void sub_258860F88(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_2588BD238();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_258860FE4(uint64_t a1)
{
  if (!qword_27F960568)
  {
    sub_25886107C(255);
    sub_25885C5F0(255, &qword_27F95E6C8, MEMORY[0x277CDF708], MEMORY[0x277CE0860]);
    v1 = sub_2588BC1E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F960568);
    }
  }
}

void sub_25886107C(uint64_t a1)
{
  if (!qword_27F960570)
  {
    sub_2588BCA98();
    v1 = sub_2588BC1E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F960570);
    }
  }
}

void sub_258861104(uint64_t a1)
{
  if (!qword_27F960588)
  {
    sub_2588610DC(255);
    type metadata accessor for MedicalIDLearnMoreNavigationView(255);
    sub_2588611D8();
    sub_25886084C(&qword_27F95E780, type metadata accessor for MedicalIDLearnMoreNavigationView, &unk_2588C53A4);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F960588);
    }
  }
}

unint64_t sub_2588611D8()
{
  result = qword_27F960590;
  if (!qword_27F960590)
  {
    sub_2588610DC(255);
    sub_25886084C(&qword_27F960598, sub_258860894, MEMORY[0x277CDF170]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F960590);
  }

  return result;
}

uint64_t sub_258861290(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2588612F0()
{
  v1 = *(type metadata accessor for MedicalIDEditSettingsView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_25885FDB8(v2);
}

uint64_t sub_258861384(uint64_t a1)
{
  v4 = *(type metadata accessor for MedicalIDEditSettingsView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2587AE310;

  return sub_25885FF90(a1, v6, v7, v1 + v5);
}

uint64_t sub_258861474()
{
  v0 = sub_2588BD858();
  MEMORY[0x28223BE20](v0 - 8);
  sub_2588BD7E8();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v1 = qword_27F95DA88;
  v2 = sub_2588BBAC8();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = v1;
  sub_2588BBAB8();
  result = sub_2588BD8B8();
  qword_27F960488 = result;
  unk_27F960490 = v5;
  return result;
}

void sub_2588615C4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_258861614()
{
  result = qword_27F9605A8;
  if (!qword_27F9605A8)
  {
    sub_258860F88(255, &qword_27F960558, &qword_27F960560, MEMORY[0x277CE0338], sub_2588621B0);
    sub_2588616C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9605A8);
  }

  return result;
}

unint64_t sub_2588616C4()
{
  result = qword_27F9605B0;
  if (!qword_27F9605B0)
  {
    sub_2588621B0(255, &qword_27F960560, MEMORY[0x277CE0338]);
    sub_258861760();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9605B0);
  }

  return result;
}

unint64_t sub_258861760()
{
  result = qword_27F9605B8;
  if (!qword_27F9605B8)
  {
    sub_258860C0C(255, &qword_27F960510, MEMORY[0x277CE0338]);
    sub_2588617FC();
    sub_258861880();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9605B8);
  }

  return result;
}

unint64_t sub_2588617FC()
{
  result = qword_27F9605C0;
  if (!qword_27F9605C0)
  {
    sub_258860D30(255, &qword_27F960518, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CDF058]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9605C0);
  }

  return result;
}

unint64_t sub_258861880()
{
  result = qword_27F9605C8;
  if (!qword_27F9605C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9605C8);
  }

  return result;
}

uint64_t sub_2588618D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_25886193C()
{
  result = qword_27F9605D0;
  if (!qword_27F9605D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9605D0);
  }

  return result;
}

uint64_t objectdestroyTm_24()
{
  v1 = type metadata accessor for MedicalIDEditSettingsView(0);
  v16 = *(*(v1 - 8) + 80);
  v2 = v0 + ((v16 + 16) & ~v16);

  v3 = type metadata accessor for MedicalIDData(0);
  v4 = v3[13];
  v5 = sub_2588BB9B8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  if (!v7(v2 + v4, 1, v5))
  {
    (*(v6 + 8))(v2 + v4, v5);
  }

  v8 = v3[14];
  if (!v7(v2 + v8, 1, v5))
  {
    (*(v6 + 8))(v2 + v8, v5);
  }

  v9 = (v2 + v3[18]);
  v10 = v9[1];
  if (v10 >> 60 != 15)
  {
    sub_2587C2610(*v9, v10);
  }

  v11 = v3[19];
  v12 = sub_2588BB818();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v2 + v11, 1, v12))
  {
    (*(v13 + 8))(v2 + v11, v12);
  }

  v14 = v3[21];
  if (!v7(v2 + v14, 1, v5))
  {
    (*(v6 + 8))(v2 + v14, v5);
  }

  return swift_deallocObject();
}

uint64_t sub_258861CE8(uint64_t a1)
{
  v3 = *(type metadata accessor for MedicalIDEditSettingsView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_25885FC94(a1, v4);
}

unint64_t sub_258861D68()
{
  result = qword_27F9605D8;
  if (!qword_27F9605D8)
  {
    sub_258860F88(255, &qword_27F960508, &qword_27F960510, MEMORY[0x277CE0338], sub_258860C0C);
    sub_258861760();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9605D8);
  }

  return result;
}

uint64_t sub_258861E18(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_258860F88(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_258861E74(unint64_t *a1, unint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_258860D30(255, a2, a3, MEMORY[0x277CDF928], MEMORY[0x277CDFAB8]);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_258861F10(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_258860D30(0, a2, a3, MEMORY[0x277CDF928], MEMORY[0x277CDFAB8]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_258861F88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258861FF0(uint64_t a1, uint64_t a2)
{
  sub_258860CA0(0, &qword_27F960520, &qword_27F960528, &type metadata for ListInsetGroupedFooterView);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25886206C(uint64_t a1)
{
  sub_258860CA0(0, &qword_27F960520, &qword_27F960528, &type metadata for ListInsetGroupedFooterView);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2588620E0()
{
  result = qword_27F9605F0;
  if (!qword_27F9605F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9605F0);
  }

  return result;
}

uint64_t sub_258862134(uint64_t a1, uint64_t a2)
{
  sub_258860CA0(0, &qword_27F9604D0, &qword_27F9604D8, &type metadata for ListInsetGroupedTableHeaderView);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2588621B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    sub_258860C0C(255, &qword_27F960510, MEMORY[0x277CE0338]);
    v7 = a3(a1, v6, MEMORY[0x277CE1428]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_258862234(uint64_t a1, uint64_t a2)
{
  sub_258860C0C(0, &qword_27F960510, MEMORY[0x277CE0338]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2588622B4(uint64_t a1)
{
  sub_258860C0C(0, &qword_27F960510, MEMORY[0x277CE0338]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *MedicalIDViewFactory.scrollView.getter()
{
  v1 = OBJC_IVAR____TtC11MedicalIDUI20MedicalIDViewFactory_scrollView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void MedicalIDViewFactory.scrollView.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11MedicalIDUI20MedicalIDViewFactory_scrollView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id MedicalIDViewFactory.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MedicalIDViewFactory.init()()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC11MedicalIDUI20MedicalIDViewFactory_scrollView] = 0;
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_init);
}

char *MedicalIDViewFactory.makeHostingController(healthStore:medicalIDData:displayConfiguration:)(void *a1, void *a2, void *a3)
{
  v32 = a1;
  v5 = sub_2588BCAC8();
  v33 = *(v5 - 8);
  v34 = v5;
  MEMORY[0x28223BE20](v5);
  v6 = type metadata accessor for MedicalIDMainView(0);
  v7 = (v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = (&v31 - v11);
  [a3 setIsHostingView_];
  v13 = v7[7];
  *(v12 + v13) = swift_getKeyPath(aH_7);
  v14 = MEMORY[0x277CDF458];
  sub_258862DE8(0, &qword_27F95DB18, MEMORY[0x28220C260], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v15 = v7[8];
  *(v12 + v15) = swift_getKeyPath(asc_2588C6100);
  sub_258862DE8(0, &qword_27F95DB20, MEMORY[0x28220C178], v14);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for MedicalIDModelProvider();
  swift_allocObject();
  v16 = a2;
  v17 = a3;
  *v12 = sub_2587B31A0(v32, a2, v17);
  *(v12 + v7[10]) = v17;
  v18 = v12 + v7[9];
  *v18 = 1;
  *(v18 + 1) = 0;
  v19 = objc_allocWithZone(type metadata accessor for MedicalIDHostingController(0));
  *&v19[qword_27F960618] = 0;
  sub_258862CD0(v12, v10);
  v20 = v17;
  v21 = sub_2588BC738();
  sub_258862D34(v12);
  v22 = MEMORY[0x277CDE4B0];
  sub_258862DE8(0, &qword_27F960620, MEMORY[0x277CDE4B0], MEMORY[0x277D84560]);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_2588BFF50;
  v24 = v21;
  sub_2588BCAA8();
  sub_2588BCAB8();
  v36 = v23;
  sub_258862D90();
  sub_258862DE8(0, &qword_27F960630, v22, MEMORY[0x277D83940]);
  sub_258862E4C();
  sub_2588BDD48();
  sub_2588BC728();

  if ([v20 entryPoint] == 1 && (sub_258862ED4() & 1) != 0)
  {
    [v20 setEntryPoint_];
  }

  v25 = *&v24[qword_27F960618];
  v26 = OBJC_IVAR____TtC11MedicalIDUI20MedicalIDViewFactory_scrollView;
  v27 = v35;
  swift_beginAccess();
  v28 = *(v27 + v26);
  *(v27 + v26) = v25;
  v29 = v25;

  return v24;
}

uint64_t sub_258862990(uint64_t a1)
{
  v3 = type metadata accessor for MedicalIDMainView(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_allocWithZone(v1);
  *&v6[qword_27F960618] = 0;
  sub_258862CD0(a1, v5);
  v7 = sub_2588BC738();
  sub_258862D34(a1);
  return v7;
}

void sub_258862AEC(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9.receiver = a1;
  v9.super_class = swift_getObjectType();
  v6 = a3;
  v7 = v9.receiver;
  objc_msgSendSuper2(&v9, sel_setContentScrollView_forEdge_, v6, a4);
  v8 = *&v7[qword_27F960618];
  *&v7[qword_27F960618] = a3;
}

char *sub_258862B78(char *a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  *&a1[qword_27F960618] = 0;
  v9.receiver = a1;
  v9.super_class = ObjectType;
  v6 = a3;
  v7 = objc_msgSendSuper2(&v9, sel_initWithCoder_, v6);

  if (v7)
  {
  }

  return v7;
}

id _s11MedicalIDUI0A13IDViewFactoryCfD_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for MedicalIDHostingController(uint64_t a1)
{
  result = qword_27F960640;
  if (!qword_27F960640)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258862CD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MedicalIDMainView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258862D34(uint64_t a1)
{
  v2 = type metadata accessor for MedicalIDMainView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_258862D90()
{
  result = qword_27F960628;
  if (!qword_27F960628)
  {
    sub_2588BCAC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F960628);
  }

  return result;
}

void sub_258862DE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_258862E4C()
{
  result = qword_27F960638;
  if (!qword_27F960638)
  {
    sub_258862DE8(255, &qword_27F960630, MEMORY[0x277CDE4B0], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F960638);
  }

  return result;
}

uint64_t sub_258862ED4()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    v3 = sub_2588BD8A8();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v9[0] = v3;
  v9[1] = v5;
  MEMORY[0x28223BE20](v2);
  v8[2] = v9;
  v6 = sub_2588B576C(sub_258863060, v8, &unk_2869BD170);
  sub_258863080();
  swift_arrayDestroy();

  return v6 & 1;
}

void sub_258863080()
{
  if (!qword_27F95D458)
  {
    v0 = sub_2588BDCE8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95D458);
    }
  }
}

MedicalIDUI::MedicalIDAccessAnalyticsEvent __swiftcall MedicalIDAccessAnalyticsEvent.init(healthAccessType:profileType:typeOfAccess:)(Swift::String healthAccessType, Swift::Int profileType, Swift::String typeOfAccess)
{
  v4 = v3;
  sub_258863340(0);
  inited = swift_initStackObject();
  *(inited + 32) = 0xD000000000000015;
  *(inited + 16) = xmmword_2588C61B0;
  *(inited + 40) = 0x80000002588CA830;
  v6 = [objc_opt_self() mainBundle];
  v7 = [v6 bundleIdentifier];

  if (v7)
  {
    sub_2588BD8A8();
  }

  v8 = sub_2588BD868();

  *(inited + 48) = v8;
  *(inited + 56) = 0xD000000000000010;
  *(inited + 64) = 0x80000002588CA850;
  v9 = sub_2588BD868();

  *(inited + 72) = v9;
  *(inited + 80) = 0x54656C69666F7270;
  *(inited + 88) = 0xEB00000000657079;
  *(inited + 96) = sub_2588BDB18();
  strcpy((inited + 104), "typeOfAccess");
  *(inited + 117) = 0;
  *(inited + 118) = -5120;
  v10 = sub_2588BD868();

  *(inited + 120) = v10;
  v11 = sub_2588637D0(inited, &qword_27F960680, &qword_27F95D878, 0x277D82BB8);
  swift_setDeallocating();
  sub_258863398(0);
  swift_arrayDestroy();
  result.eventPayload._rawValue = HKImproveHealthAndActivityAnalyticsAllowed();
  *v4 = v11;
  *(v4 + 8) = result.eventPayload._rawValue;
  result.isAnalyticsAllowed = v12;
  return result;
}

void sub_258863340(uint64_t a1)
{
  if (!qword_27F960650)
  {
    sub_258863398(255);
    v1 = sub_2588BDF88();
    if (!v2)
    {
      atomic_store(v1, &qword_27F960650);
    }
  }
}

void sub_258863398(uint64_t a1)
{
  if (!qword_27F960658)
  {
    sub_25878E130(255, &qword_27F95D878, 0x277D82BB8);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F960658);
    }
  }
}

Swift::Bool __swiftcall MedicalIDAccessAnalyticsEvent.submit()()
{
  v1 = *(v0 + 8);
  if (v1 == 1)
  {
    v2 = sub_2588BD868();
    sub_25878E130(0, &qword_27F95D878, 0x277D82BB8);
    v3 = sub_2588BD758();
    AnalyticsSendEvent();

    if (qword_27F95D170 != -1)
    {
      swift_once();
    }

    v4 = sub_2588BBC98();
    __swift_project_value_buffer(v4, qword_27F969938);
    v5 = sub_2588BBC78();
    v6 = sub_2588BDBF8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v10 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_258790224(0xD00000000000001DLL, 0x80000002588C61A0, &v10);
      _os_log_impl(&dword_25878B000, v5, v6, "[%s] Submitted Medical ID Access Event", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x259C8DBE0](v8, -1, -1);
      MEMORY[0x259C8DBE0](v7, -1, -1);
    }
  }

  return v1;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_258863604(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_25886364C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_25886369C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_258863D34();
    v3 = sub_2588BDF28();
    v4 = a1 + 32;

    while (1)
    {
      sub_258863D98(v4, &v13, sub_258863E00);
      v5 = v13;
      v6 = v14;
      result = sub_258869E40(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_258863BC8(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2588637D0(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    sub_258863CCC(0, a2, a3, a4);
    v6 = sub_2588BDF28();

    for (i = (a1 + 48); ; i += 3)
    {
      v8 = *(i - 2);
      v9 = *(i - 1);
      v10 = *i;

      v11 = v10;
      result = sub_258869E40(v8, v9);
      if (v13)
      {
        break;
      }

      *(v6 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = (v6[6] + 16 * result);
      *v14 = v8;
      v14[1] = v9;
      *(v6[7] + 8 * result) = v11;
      v15 = v6[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v6[2] = v17;
      if (!--v4)
      {

        return v6;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2588638C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_258863BD8(0);
    v3 = sub_2588BDF28();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_25886A42C();
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2588639AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_258863ABC(0);
    v3 = sub_2588BDF28();
    v4 = a1 + 32;

    while (1)
    {
      sub_258863D98(v4, &v11, sub_258863B5C);
      v5 = v11;
      result = sub_25886A42C();
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_258863BC8(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void sub_258863ABC(uint64_t a1)
{
  if (!qword_27F960660)
  {
    type metadata accessor for AttributeName(255);
    sub_258863C84(&qword_27F95D650, type metadata accessor for AttributeName, &unk_2588BFBD0);
    v1 = sub_2588BDF38();
    if (!v2)
    {
      atomic_store(v1, &qword_27F960660);
    }
  }
}

void sub_258863B5C(uint64_t a1)
{
  if (!qword_27F960668)
  {
    type metadata accessor for AttributeName(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F960668);
    }
  }
}

_OWORD *sub_258863BC8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_258863BD8(uint64_t a1)
{
  if (!qword_27F960670)
  {
    type metadata accessor for TraitKey(255);
    type metadata accessor for Weight(255);
    sub_258863C84(&qword_27F95D640, type metadata accessor for TraitKey, &unk_2588BFC14);
    v1 = sub_2588BDF38();
    if (!v2)
    {
      atomic_store(v1, &qword_27F960670);
    }
  }
}

uint64_t sub_258863C84(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_258863CCC(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_25878E130(255, a3, a4);
    v5 = sub_2588BDF38();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_258863D34()
{
  if (!qword_27F960688)
  {
    v0 = sub_2588BDF38();
    if (!v1)
    {
      atomic_store(v0, &qword_27F960688);
    }
  }
}

uint64_t sub_258863D98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_258863E00()
{
  if (!qword_27F960690)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F960690);
    }
  }
}

uint64_t type metadata accessor for MedicalIDMedicalConditionsCellView(uint64_t a1)
{
  result = qword_27F960698;
  if (!qword_27F960698)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258863EF4@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F95D148 != -1)
  {
    swift_once();
  }

  v3 = qword_27F9698F0;
  v21 = qword_27F9698E8;
  v4 = *v1;

  v5 = [v4 medicalConditions];
  if (v5)
  {
    v6 = v5;
    v7 = sub_2588BD8A8();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = sub_2588BD858();
  MEMORY[0x28223BE20](v10 - 8);
  sub_2588BD7E8();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v11 = qword_27F95DA88;
  v12 = sub_2588BBAC8();
  MEMORY[0x28223BE20](v12 - 8);
  v13 = v11;
  sub_2588BBAB8();
  v14 = sub_2588BD8B8();
  v16 = v15;
  v17 = (v1 + *(type metadata accessor for MedicalIDMedicalConditionsCellView(0) + 20));
  v19 = *v17;
  v18 = v17[1];
  *a1 = v21;
  *(a1 + 8) = v3;
  *(a1 + 16) = 2;
  *(a1 + 24) = v7;
  *(a1 + 32) = v9;
  *(a1 + 40) = v14;
  *(a1 + 48) = v16;
  *(a1 + 56) = v19;
  *(a1 + 64) = v18;
}

__n128 sub_258864120@<Q0>(uint64_t a1@<X8>)
{
  sub_258863EF4(v4);
  v2 = v4[3];
  *(a1 + 32) = v4[2];
  *(a1 + 48) = v2;
  *(a1 + 64) = v5;
  result = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = result;
  return result;
}

uint64_t MedicalIDPregnancyViewModel.pregnancyDueDateLabelState(_:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v93 = a2;
  v3 = sub_2588BB9B8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_258868DE8(0, &qword_27F95D880, MEMORY[0x28220BF28], MEMORY[0x277D83D88]);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = v8;
  MEMORY[0x28223BE20](v7);
  v11 = v77 - v10;
  sub_2588252AC(a1, v77 - v10);
  v12 = *(v4 + 48);
  if (v12(v11, 1, v3) == 1)
  {
    v13 = v4;
    v14 = v94 + *(type metadata accessor for MedicalIDPregnancyViewModel(0) + 20);
    v15 = type metadata accessor for MedicalIDData(0);
    sub_2588252AC(v14 + *(v15 + 56), v9);
    if (v12(v11, 1, v3) != 1)
    {
      sub_258826118(v11);
    }
  }

  else
  {
    (*(v4 + 32))(v9, v11, v3);
    v13 = v4;
    (*(v4 + 56))(v9, 0, 1, v3);
  }

  if (v12(v9, 1, v3) == 1)
  {
    result = sub_258826118(v9);
    v17 = 3;
LABEL_7:
    *v93 = v17;
    return result;
  }

  v89 = v4 + 48;
  v18 = v3;
  v19 = *(v13 + 32);
  v20 = v19(v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v9, v18);
  v88 = v77;
  MEMORY[0x28223BE20](v20);
  v21 = v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v90 = v12;
  v91 = *(type metadata accessor for MedicalIDPregnancyViewModel(0) + 24);
  sub_2588BBAF8();
  v23 = v5;
  v24 = v18;
  v25 = *(v13 + 8);
  v25(v21, v24);
  v86 = v21;
  v26 = v21;
  v27 = v94;
  v82 = v19;
  v28 = v19(v26, v77 - v22, v24);
  v29 = v13 + 32;
  v30 = (v13 + 8);
  v84 = v77;
  v31 = MEMORY[0x28223BE20](v28);
  v80 = v22;
  v32 = v77 - v22;
  v83 = v77;
  MEMORY[0x28223BE20](v31);
  v34 = v77 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = v35;
  sub_2588252AC(v27 + v35, v34);
  v36 = (v90)(v34, 1, v24);
  v87 = v25;
  v88 = v30;
  v85 = v23;
  if (v36 == 1)
  {
    MEMORY[0x28223BE20](v36);
    v37 = (v77 - v80);
    sub_2588BB9A8();
    sub_2588BBAF8();
    v25(v37, v24);
    v38 = (v90)(v34, 1, v24);
    v39 = v29;
    if (v38 != 1)
    {
      v38 = sub_258826118(v34);
    }
  }

  else
  {
    v38 = v82(v77 - v22, v34, v24);
    v39 = v29;
  }

  v40 = v85;
  MEMORY[0x28223BE20](v38);
  v41 = (v40 + 15) & 0xFFFFFFFFFFFFFFF0;
  v42 = v86;
  sub_2588BBAF8();
  v43 = sub_2588BB978();
  v44 = v87;
  v87(v77 - v41, v24);
  v45 = v44(v32, v24);
  v46 = v24;
  if (v43)
  {
    result = v44(v42, v24);
    *v93 = 0;
  }

  else
  {
    v47 = v39;
    v84 = v77;
    v48 = MEMORY[0x28223BE20](v45);
    v49 = v77 - v41;
    v83 = v77;
    v50 = MEMORY[0x28223BE20](v48);
    v51 = v77 - v41;
    MEMORY[0x28223BE20](v50);
    v53 = v77 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
    v54 = v94;
    sub_2588252AC(v94 + v81, v53);
    v55 = v90;
    v56 = (v90)(v53, 1, v24);
    v79 = v47;
    if (v56 == 1)
    {
      v78 = v24;
      v80 = v77;
      MEMORY[0x28223BE20](v56);
      sub_2588BB9A8();
      sub_2588BBAF8();
      v46 = v78;
      v87(v77 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0), v78);
      v57 = v55(v53, 1, v46);
      v58 = v86;
      if (v57 != 1)
      {
        sub_258826118(v53);
      }
    }

    else
    {
      v82(v51, v53, v24);
      v58 = v86;
    }

    sub_2588BBAF8();
    v59 = v87;
    v87(v51, v46);
    v60 = sub_2588BB968();
    v61 = v59(v49, v46);
    if (v60)
    {
      result = v59(v58, v46);
      v17 = 2;
      goto LABEL_7;
    }

    v84 = v77;
    MEMORY[0x28223BE20](v61);
    v62 = (v40 + 15) & 0xFFFFFFFFFFFFFFF0;
    v63 = objc_opt_self();
    v64 = sub_2588BB958();
    v65 = [v63 calculatePregnancyStartForEstimatedDueDate_];

    sub_2588BB988();
    v80 = v77;
    MEMORY[0x28223BE20](v66);
    v83 = v77 - v62;
    v67 = sub_2588BBAF8();
    v78 = v77;
    v68 = MEMORY[0x28223BE20](v67);
    v77[1] = v77;
    v69 = MEMORY[0x28223BE20](v68);
    v77[0] = v77;
    MEMORY[0x28223BE20](v69);
    v71 = v54;
    v72 = v77 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_2588252AC(v71 + v81, v72);
    v73 = v90;
    v74 = (v90)(v72, 1, v46);
    if (v74 == 1)
    {
      v92 = v77;
      MEMORY[0x28223BE20](v74);
      sub_2588BB9A8();
      sub_2588BBAF8();
      v87(v77 - v62, v46);
      if (v73(v72, 1, v46) != 1)
      {
        sub_258826118(v72);
      }
    }

    else
    {
      v82(v77 - v62, v72, v46);
    }

    sub_2588BBAF8();
    v75 = v87;
    v87(v77 - v62, v46);
    v76 = sub_2588BB968();
    v75(v77 - v62, v46);
    v75(v77 - v62, v46);
    v75(v83, v46);
    result = (v75)(v86, v46);
    *v93 = (v76 & 1) != 0;
  }

  return result;
}

uint64_t type metadata accessor for MedicalIDPregnancyViewModel(uint64_t a1)
{
  result = qword_27F9606C8;
  if (!qword_27F9606C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MedicalIDPregnancyViewModel.gestationalAgeDescription(dueDate:)(uint64_t a1)
{
  v3 = sub_2588BB9B8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v30 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258868DE8(0, &qword_27F95D880, MEMORY[0x28220BF28], MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v9 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = v29 - v10;
  sub_2588252AC(a1, v29 - v10);
  v12 = *(v4 + 48);
  if (v12(v11, 1, v3) == 1)
  {
    v13 = v1 + *(type metadata accessor for MedicalIDPregnancyViewModel(0) + 20);
    v14 = type metadata accessor for MedicalIDData(0);
    sub_2588252AC(v13 + *(v14 + 56), v9);
    if (v12(v11, 1, v3) != 1)
    {
      sub_258826118(v11);
    }
  }

  else
  {
    (*(v4 + 32))(v9, v11, v3);
    (*(v4 + 56))(v9, 0, 1, v3);
  }

  if (v12(v9, 1, v3) == 1)
  {
    sub_258826118(v9);
    return 0;
  }

  else
  {
    v16 = (*(v4 + 32))(v30, v9, v3);
    v29[2] = v29;
    MEMORY[0x28223BE20](v16);
    v17 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    v18 = objc_opt_self();
    v19 = sub_2588BB958();
    v20 = [v18 calculatePregnancyStartForEstimatedDueDate_];

    sub_2588BB988();
    v29[1] = v29;
    MEMORY[0x28223BE20](v21);
    v22 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v4 + 16))(v22, v17, v3);
    (*(v4 + 56))(v22, 0, 1, v3);
    v23 = sub_2588BE0A8();
    v24 = *(v23 - 8);
    MEMORY[0x28223BE20](v23);
    v26 = v29 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_2588BE098();
    v27 = MedicalIDPregnancyViewModel.gestationalAgeDescription(startDate:format:)(v22, v26);
    (*(v24 + 8))(v26, v23);
    sub_258826118(v22);
    v28 = *(v4 + 8);
    v28(v17, v3);
    v28(v30, v3);
    return v27;
  }
}

uint64_t MedicalIDPregnancyViewModel.init(data:calendar:locale:sampleDataProvider:currentDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v12 = sub_2588BD9A8();
  v13 = HKUIJoinStringsForAutomationIdentifier();

  if (v13)
  {
    v14 = sub_2588BD8A8();
    v16 = v15;
  }

  else
  {
    v16 = 0xE900000000000079;
    v14 = 0x636E616E67657250;
  }

  *a6 = v14;
  *(a6 + 1) = v16;
  v17 = type metadata accessor for MedicalIDPregnancyViewModel(0);
  sub_258868BD0(a1, &a6[v17[5]], type metadata accessor for MedicalIDData);
  v18 = v17[6];
  v19 = sub_2588BBB48();
  (*(*(v19 - 8) + 32))(&a6[v18], a2, v19);
  v20 = v17[7];
  v21 = sub_2588BBAC8();
  (*(*(v21 - 8) + 32))(&a6[v20], a3, v21);
  *&a6[v17[8]] = a4;
  v22 = &a6[v17[9]];

  return sub_2587E8EE8(a5, v22);
}

Swift::Bool __swiftcall MedicalIDPregnancyViewModel.hasPregnancyData()()
{
  v1 = v0 + *(type metadata accessor for MedicalIDPregnancyViewModel(0) + 20);
  v2 = *(type metadata accessor for MedicalIDData(0) + 52);
  sub_258868DE8(0, &qword_27F95D880, MEMORY[0x28220BF28], MEMORY[0x277D83D88]);
  v4 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3 - 8);
  sub_2588252AC(v1 + v2, &v12 - v4);
  v5 = sub_2588BB9B8();
  v6 = *(*(v5 - 8) + 48);
  v7 = v6(&v12 - v4, 1, v5);
  v8 = sub_258826118(&v12 - v4);
  if (v7 == 1)
  {
    return 0;
  }

  MEMORY[0x28223BE20](v8);
  sub_2588252AC(v1 + v10, &v12 - v4);
  v9 = v6(&v12 - v4, 1, v5) != 1;
  sub_258826118(&v12 - v4);
  return v9;
}

uint64_t MedicalIDPregnancyViewModel.defaultPregnancyDueDate(with:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if ([a1 suggestHealthData])
  {
    sub_258868DE8(0, &qword_27F95D880, MEMORY[0x28220BF28], MEMORY[0x277D83D88]);
    MEMORY[0x28223BE20](v4 - 8);
    v6 = v24 - v5;
    v7 = *(v2 + *(type metadata accessor for MedicalIDPregnancyViewModel(0) + 32));
    if (v7)
    {
      swift_getKeyPath(asc_2588C6290);
      v24[1] = v7;
      sub_258825208();
      sub_2588BBB98();

      v8 = OBJC_IVAR____TtC11MedicalIDUI27PregnancySampleDataProvider__ongoingEstimatedDueDate;
      swift_beginAccess();
      sub_2588252AC(v7 + v8, v6);
      v9 = sub_2588BB9B8();
      v10 = *(v9 - 8);
      if ((*(v10 + 48))(v6, 1, v9) != 1)
      {
        return (*(v10 + 32))(a2, v6, v9);
      }
    }

    else
    {
      v12 = sub_2588BB9B8();
      (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
    }

    sub_258826118(v6);
  }

  v13 = HKUIDefaultPregnancyDueDate();
  sub_258868DE8(0, &qword_27F95D880, MEMORY[0x28220BF28], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v24 - v15;
  if (v13)
  {
    v17 = sub_2588BB9B8();
    v18 = *(v17 - 8);
    MEMORY[0x28223BE20](v17);
    v20 = v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_2588BB988();

    v21 = *(v18 + 32);
    v21(v16, v20, v17);
    (*(v18 + 56))(v16, 0, 1, v17);
    return (v21)(a2, v16, v17);
  }

  else
  {
    v22 = sub_2588BB9B8();
    v23 = *(v22 - 8);
    (*(v23 + 56))(v16, 1, 1, v22);
    sub_2588BB9A8();
    result = (*(v23 + 48))(v16, 1, v22);
    if (result != 1)
    {
      return sub_258826118(v16);
    }
  }

  return result;
}

id MedicalIDPregnancyViewModel.minimumSelectableDueDate.getter@<X0>(char *a1@<X8>)
{
  v3 = sub_2588BB9B8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_258868DE8(0, &qword_27F95D880, MEMORY[0x28220BF28], MEMORY[0x277D83D88]);
  v8 = *(*(v7 - 8) + 64);
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7 - 8);
  v51 = v1;
  _s11MedicalIDUI0A20IDPregnancyViewModelV24maximumSelectableDueDate10Foundation0I0VSgvg_0(&v36 - v9);
  v50 = *(v4 + 48);
  if (v50(&v36 - v9, 1, v3) == 1)
  {
    sub_258826118(&v36 - v9);
    return (*(v4 + 56))(a1, 1, 1, v3);
  }

  else
  {
    v46 = a1;
    v40 = *(v4 + 32);
    v41 = v4 + 32;
    v11 = v40(&v36 - v6, &v36 - v9, v3);
    v45 = &v36;
    v12 = MEMORY[0x28223BE20](v11);
    v39 = &v36 - v6;
    v44 = &v36;
    MEMORY[0x28223BE20](v12);
    v49 = &v36 - v6;
    v13 = &v36 - v9;
    v38 = type metadata accessor for MedicalIDPregnancyViewModel(0);
    v48 = *(v38 + 24);
    v14 = sub_2588BBB38();
    v43 = &v36;
    v15 = *(v14 - 8);
    v16 = v15[8];
    MEMORY[0x28223BE20](v14);
    v17 = *MEMORY[0x277CC9938];
    v18 = v15[13];
    v47 = v19;
    v37 = v18;
    v18(&v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v17);
    result = [objc_opt_self() maximumNumberOfWeeksPregnant];
    if (__OFSUB__(0, result))
    {
      __break(1u);
    }

    else
    {
      v42 = v4;
      sub_2588BBB28();
      v36 = v15[1];
      v36(&v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v47);
      v20 = v50;
      if (v50(v13, 1, v3) == 1)
      {
        v21 = v49;
        v22 = sub_258826118(v13);
        v47 = &v36;
        MEMORY[0x28223BE20](v22);
        v23 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
        sub_2588252AC(v51 + v24, v23);
        v25 = v20(v23, 1, v3);
        if (v25 == 1)
        {
          v26 = v20;
          v45 = &v36;
          MEMORY[0x28223BE20](v25);
          v27 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
          sub_2588BB9A8();
          v28 = v46;
          sub_2588BBAF8();
          v29 = v42;
          v30 = *(v42 + 8);
          v30(v27, v3);
          v30(v21, v3);
          v31 = v29;
          if (v26(v23, 1, v3) != 1)
          {
            sub_258826118(v23);
          }
        }

        else
        {
          v31 = v42;
          (*(v42 + 8))(v21, v3);
          v28 = v46;
          v40(v46, &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
        }

        return (*(v31 + 56))(v28, 0, 1, v3);
      }

      else
      {
        v32 = v39;
        v33 = v40(v39, v13, v3);
        MEMORY[0x28223BE20](v33);
        v34 = v47;
        v37(&v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CC9970], v47);
        sub_2588BBB28();
        v36(&v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v34);
        v35 = *(v42 + 8);
        v35(v32, v3);
        return (v35)(v49, v3);
      }
    }
  }

  return result;
}

uint64_t MedicalIDPregnancyViewModel.update(_:with:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_2588BB9B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258868DE8(0, &qword_27F95D880, MEMORY[0x28220BF28], MEMORY[0x277D83D88]);
  v9 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8 - 8);
  sub_2588252AC(a2, v23 - v9);
  if ((*(v5 + 48))(v23 - v9, 1, v4) == 1)
  {
    sub_258826118(v23 - v9);
    v10 = type metadata accessor for MedicalIDData(0);
    v11 = *(v10 + 56);
    sub_258826118(a1 + v11);
    v12 = *(v5 + 56);
    v12(a1 + v11, 1, 1, v4);
    v13 = *(v10 + 52);
    sub_258826118(a1 + v13);
    return (v12)(a1 + v13, 1, 1, v4);
  }

  else
  {
    (*(v5 + 32))(v7, v23 - v9, v4);
    v15 = type metadata accessor for MedicalIDData(0);
    v16 = *(v15 + 56);
    sub_258826118(a1 + v16);
    (*(v5 + 16))(a1 + v16, v7, v4);
    v17 = *(v5 + 56);
    v18 = v17(a1 + v16, 0, 1, v4);
    v23[1] = v23;
    MEMORY[0x28223BE20](v18);
    v19 = v23 - v9;
    v20 = objc_opt_self();
    v21 = sub_2588BB958();
    v22 = [v20 calculatePregnancyStartForEstimatedDueDate_];

    sub_2588BB988();
    (*(v5 + 8))(v7, v4);
    v17(v19, 0, 1, v4);
    return sub_25886803C(v19, a1 + *(v15 + 52));
  }
}

double MedicalIDPregnancyViewModel.validationResult(for:)@<D0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v143 = a2;
  v3 = sub_2588BB9B8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v142 = v5;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = *(type metadata accessor for MedicalIDData(0) + 52);
  sub_258868DE8(0, &qword_27F95D880, MEMORY[0x28220BF28], MEMORY[0x277D83D88]);
  v9 = *(*(v8 - 8) + 64);
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8 - 8);
  v140 = a1;
  sub_2588252AC(&a1[v7], &v109 - v10);
  v144 = *(v4 + 6);
  v145 = v3;
  if (v144(&v109 - v10, 1, v3) == 1)
  {
    sub_258826118(&v109 - v10);
LABEL_5:
    v17 = v143;
    v143[6] = 0;
    result = 0.0;
    *(v17 + 1) = 0u;
    *(v17 + 2) = 0u;
    *v17 = 0u;
    return result;
  }

  v11 = v145;
  v137 = *(v4 + 4);
  v138 = (v4 + 32);
  v12 = (v137)(&v109 - v6, &v109 - v10, v145);
  v139 = &v109 - v6;
  v13 = v142;
  v14 = MEMORY[0x28223BE20](v12);
  v15 = &v109 - v6;
  MEMORY[0x28223BE20](v14);
  sub_2588252AC(&v140[v16], &v109 - v10);
  v140 = v4 + 48;
  if (v144(&v109 - v10, 1, v11) == 1)
  {
    (*(v4 + 1))(v139, v145);
    sub_258826118(&v109 - v10);
    goto LABEL_5;
  }

  v133 = v4;
  v134 = &v109;
  v19 = (v137)(v15, &v109 - v10, v145);
  v132 = &v109;
  MEMORY[0x28223BE20](v19);
  v20 = v15;
  v21 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v22 = *(type metadata accessor for MedicalIDPregnancyViewModel(0) + 24);
  v23 = v141;
  v136 = &v109 - v21;
  v24 = v139;
  v25 = sub_2588BBAF8();
  v131 = &v109;
  MEMORY[0x28223BE20](v25);
  v130 = &v109 - v21;
  v135 = v20;
  v26 = sub_2588BBAF8();
  v129 = &v109;
  v27 = MEMORY[0x28223BE20](v26);
  MEMORY[0x28223BE20](v27);
  v28 = &v109 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = v29;
  sub_2588252AC(v23 + v29, v28);
  v30 = (v144)(v28, 1, v145);
  v127 = v9;
  v128 = v22;
  if (v30 == 1)
  {
    MEMORY[0x28223BE20](v30);
    sub_2588BB9A8();
    sub_2588BBAF8();
    v31 = v133;
    v32 = v145;
    (*(v133 + 1))(&v109 - v21, v145);
    v33 = v144;
    if (v144(v28, 1, v32) != 1)
    {
      sub_258826118(v28);
    }
  }

  else
  {
    v33 = v144;
    v32 = v145;
    (v137)(&v109 - v21, v28, v145);
    v31 = v133;
  }

  sub_258868B88(&qword_27F95D888, MEMORY[0x28220BF98], MEMORY[0x28220BFF8]);
  v34 = v136;
  v35 = sub_2588BD7B8();
  v36 = *(v31 + 1);
  v36(&v109 - v21, v32);
  v37 = v135;
  if (v35)
  {
    v146 = 1;
    MedicalIDPregnancyViewModel.validationError(for:)(&v147, &v146);
    v36(v130, v32);
    v36(v34, v32);
    v36(v37, v32);
    v36(v24, v32);
    object = v147.title._object;
    rawValue = v147.actions._rawValue;
    v40 = v143;
    *v143 = v147.title._countAndFlagsBits;
    v40[1] = object;
    *(v40 + 1) = v147.message;
    v40[4] = rawValue;
    result = *&v147.code.value._countAndFlagsBits;
    *(v40 + 5) = v147.code;
    return result;
  }

  v145 = v36;
  v41 = sub_2588BB818();
  v129 = &v109;
  v125 = v41;
  v124 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v118 = v42;
  v133 = &v109 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258868DE8(0, &qword_27F9606A8, MEMORY[0x28220C208], MEMORY[0x277D84560]);
  v44 = v43;
  v45 = sub_2588BBB38();
  v46 = *(v45 - 8);
  v47 = *(v46 + 80);
  v48 = (v47 + 32) & ~v47;
  v115 = *(v46 + 72);
  v114 = v47;
  v116 = v44;
  v49 = swift_allocObject();
  v111 = xmmword_2588C00B0;
  *(v49 + 16) = xmmword_2588C00B0;
  v50 = *MEMORY[0x277CC9938];
  v51 = *(v46 + 104);
  v113 = v46 + 104;
  v112 = v51;
  v51(v49 + v48, v50, v45);
  v123 = sub_2588B9D4C(v49);
  swift_setDeallocating();
  v52 = *(v46 + 8);
  v117 = v48;
  v120 = v45;
  v119 = v46 + 8;
  v110 = v52;
  v52(v49 + v48, v45);
  v53 = swift_deallocClassInstance();
  v122 = &v109;
  v54 = v142;
  v55 = MEMORY[0x28223BE20](v53);
  v56 = (v54 + 15) & 0xFFFFFFFFFFFFFFF0;
  v57 = &v109 - v56;
  v121 = &v109;
  MEMORY[0x28223BE20](v55);
  v59 = &v109 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588252AC(v141 + v126, v59);
  v60 = (v33)(v59, 1, v32);
  if (v60 == 1)
  {
    v109 = &v109;
    MEMORY[0x28223BE20](v60);
    sub_2588BB9A8();
    sub_2588BBAF8();
    v61 = &v109 - v56;
    v37 = v135;
    v62 = v145;
    v145(v61, v32);
    if (v33(v59, 1, v32) != 1)
    {
      sub_258826118(v59);
    }
  }

  else
  {
    (v137)(&v109 - v56, v59, v32);
    v62 = v145;
  }

  v63 = v141;
  v64 = v133;
  v65 = v136;
  sub_2588BBB08();

  v62(v57, v32);
  v66 = sub_2588BB748();
  if (v67)
  {
    (*(v124 + 8))(v64, v125);
    v62(v130, v32);
    v62(v65, v32);
    v62(v37, v32);
    v62(v139, v32);
    v68 = v143;
    v143[6] = 0;
    result = 0.0;
    *(v68 + 1) = 0u;
    *(v68 + 2) = 0u;
    *v68 = 0u;
    return result;
  }

  v109 = v66;
  v123 = &v109;
  MEMORY[0x28223BE20](v66);
  v122 = (&v109 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0));
  v70 = v117;
  v71 = swift_allocObject();
  *(v71 + 16) = v111;
  v72 = v120;
  v112(v71 + v70, *MEMORY[0x277CC9970], v120);
  v121 = sub_2588B9D4C(v71);
  swift_setDeallocating();
  v110(v71 + v70, v72);
  v73 = swift_deallocClassInstance();
  v120 = &v109;
  v74 = v142;
  v75 = MEMORY[0x28223BE20](v73);
  v76 = (v74 + 15) & 0xFFFFFFFFFFFFFFF0;
  v77 = &v109 - v76;
  MEMORY[0x28223BE20](v75);
  v79 = &v109 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588252AC(v63 + v126, v79);
  v80 = v144;
  v81 = (v144)(v79, 1, v32);
  if (v81 == 1)
  {
    v138 = &v109;
    v137 = &v109;
    MEMORY[0x28223BE20](v81);
    sub_2588BB9A8();
    sub_2588BBAF8();
    v82 = &v109 - v76;
    v83 = v145;
    v145(v82, v32);
    if (v80(v79, 1, v32) != 1)
    {
      sub_258826118(v79);
    }
  }

  else
  {
    (v137)(&v109 - v76, v79, v32);
    v83 = v145;
  }

  v84 = v122;
  v85 = v130;
  sub_2588BBB08();

  v83(v77, v32);
  v86 = sub_2588BB788();
  if (v87)
  {
    v88 = v83;
    v89 = *(v124 + 8);
    v90 = v125;
    v89(v84, v125);
    v89(v133, v90);
    v88(v85, v32);
    v88(v136, v32);
    v88(v135, v32);
    v88(v139, v32);
    v91 = v143;
    v143[6] = 0;
    result = 0.0;
    *(v91 + 1) = 0u;
    *(v91 + 2) = 0u;
    *v91 = 0u;
    return result;
  }

  v92 = v86;
  v93 = objc_opt_self();
  v94 = [v93 maximumNumberOfWeeksPregnant];
  v95 = v135;
  if (v109 >= v94)
  {
    v146 = 0;
    MedicalIDPregnancyViewModel.validationError(for:)(&v147, &v146);
    v99 = v83;
    v100 = *(v124 + 8);
    v101 = v125;
    v100(v84, v125);
    v100(v133, v101);
    v99(v85, v32);
    v99(v136, v32);
    v99(v95, v32);
    v99(v139, v32);
    goto LABEL_28;
  }

  if ([v93 estimatedDueDateNumberOfDays] < v92)
  {
    v146 = 1;
    MedicalIDPregnancyViewModel.validationError(for:)(&v147, &v146);
    v96 = *(v124 + 8);
    v97 = v125;
    v96(v84, v125);
    v96(v133, v97);
    v98 = v145;
    v145(v85, v32);
    v98(v136, v32);
    v98(v95, v32);
    v98(v139, v32);
LABEL_28:
    v102 = v147.title._object;
    v103 = v147.actions._rawValue;
    v104 = v143;
    *v143 = v147.title._countAndFlagsBits;
    v104[1] = v102;
    *(v104 + 1) = v147.message;
    v104[4] = v103;
    result = *&v147.code.value._countAndFlagsBits;
    *(v104 + 5) = v147.code;
    return result;
  }

  v105 = *(v124 + 8);
  v106 = v125;
  v105(v84, v125);
  v105(v133, v106);
  v107 = v145;
  v145(v85, v32);
  v107(v136, v32);
  v107(v95, v32);
  v107(v139, v32);
  v108 = v143;
  v143[6] = 0;
  result = 0.0;
  *(v108 + 1) = 0u;
  *(v108 + 2) = 0u;
  *v108 = 0u;
  return result;
}

uint64_t sub_258867124(uint64_t a1)
{
  v2 = sub_2588BB9B8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258868DE8(0, &qword_27F95D880, MEMORY[0x28220BF28], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  sub_2588252AC(a1, &v15 - v7);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_258826118(v8);
    return 0;
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    v10 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    type metadata accessor for MedicalIDPregnancyViewModel(0);
    v11 = sub_2588BBA88();
    [v10 setLocale_];

    [v10 setDateStyle_];
    v12 = sub_2588BB958();
    v13 = [v10 stringFromDate_];

    v14 = sub_2588BD8A8();
    (*(v3 + 8))(v5, v2);
    return v14;
  }
}

uint64_t MedicalIDPregnancyViewModel.gestationalAgeDescription(startDate:format:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_2588BB9B8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258868DE8(0, &qword_27F95D880, MEMORY[0x28220BF28], MEMORY[0x277D83D88]);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v28 - v13;
  sub_2588252AC(a1, &v28 - v13);
  v15 = *(v6 + 48);
  if (v15(v14, 1, v5) == 1)
  {
    v16 = v2 + *(type metadata accessor for MedicalIDPregnancyViewModel(0) + 20);
    v17 = type metadata accessor for MedicalIDData(0);
    sub_2588252AC(v16 + *(v17 + 52), v12);
    if (v15(v14, 1, v5) != 1)
    {
      sub_258826118(v14);
    }
  }

  else
  {
    (*(v6 + 32))(v12, v14, v5);
    (*(v6 + 56))(v12, 0, 1, v5);
  }

  if (v15(v12, 1, v5) == 1)
  {
    sub_258826118(v12);
    return 0;
  }

  else
  {
    v30 = a2;
    (*(v6 + 32))(&v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v12, v5);
    v18 = sub_2588BBB78();
    v19 = *(v18 - 8);
    MEMORY[0x28223BE20](v18);
    v21 = &v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_2588BBB68();
    sub_2588BBB58();
    (*(v19 + 8))(v21, v18);
    v22 = sub_258868B3C();
    MEMORY[0x28223BE20](v22);
    sub_2588BB9A8();
    sub_2588BDC88();
    v29 = *(v6 + 8);
    v29(&v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);

    v24 = sub_2588BE0B8();
    v25 = *(v24 - 8);
    MEMORY[0x28223BE20](v24);
    v27 = &v28 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_2588BDC78();
    sub_258868B88(&qword_27F9606B8, MEMORY[0x28220C4C8], MEMORY[0x28220C4C0]);
    sub_2588BE0C8();
    (*(v25 + 8))(v27, v24);
    v29(v8, v5);
    return v31;
  }
}

uint64_t sub_258867848@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(asc_2588C6290);
  sub_258825208();
  sub_2588BBB98();

  v4 = OBJC_IVAR____TtC11MedicalIDUI27PregnancySampleDataProvider__ongoingEstimatedDueDate;
  swift_beginAccess();
  return sub_2588252AC(v3 + v4, a2);
}

uint64_t sub_2588678E0(uint64_t a1)
{
  sub_258868DE8(0, &qword_27F95D880, MEMORY[0x28220BF28], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_2588252AC(a1, &v6 - v3);
  return PregnancySampleDataProvider.ongoingEstimatedDueDate.setter(v4);
}

Swift::Bool __swiftcall MedicalIDPregnancyViewModel.isGestationalAgeValid()()
{
  v1 = sub_2588BB9B8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for MedicalIDPregnancyViewModel(0) + 20);
  v6 = *(type metadata accessor for MedicalIDData(0) + 52);
  sub_258868DE8(0, &qword_27F95D880, MEMORY[0x28220BF28], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v13 - v8;
  sub_2588252AC(v5 + v6, &v13 - v8);
  if ((*(v2 + 48))(v9, 1, v1) == 1)
  {
    sub_258826118(v9);
    return 0;
  }

  else
  {
    (*(v2 + 32))(v4, v9, v1);
    v11 = objc_opt_self();
    v12 = sub_2588BB958();
    LOBYTE(v11) = [v11 isPregnancyDurationPhysiologicallyPossibleForPregnancyStartDate_];

    (*(v2 + 8))(v4, v1);
    return v11;
  }
}

uint64_t MedicalIDPregnancyViewModel.baseIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MedicalIDPregnancyViewModel.data.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MedicalIDPregnancyViewModel(0) + 20);

  return sub_2587B94F8(v3, a1);
}

uint64_t MedicalIDPregnancyViewModel.calendar.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MedicalIDPregnancyViewModel(0) + 24);
  v4 = sub_2588BBB48();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MedicalIDPregnancyViewModel.locale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MedicalIDPregnancyViewModel(0) + 28);
  v4 = sub_2588BBAC8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MedicalIDPregnancyViewModel.sampleDataProvider.getter()
{
  type metadata accessor for MedicalIDPregnancyViewModel(0);
}

uint64_t _s11MedicalIDUI0A20IDPregnancyViewModelV24maximumSelectableDueDate10Foundation0I0VSgvg_0@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v2 = type metadata accessor for MedicalIDPregnancyViewModel(0);
  v3 = sub_2588BBB38();
  MEMORY[0x28223BE20](v3);
  v21 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v5;
  v6 = *(v5 + 104);
  v24 = v7;
  v6();
  v20[1] = [objc_opt_self() estimatedDueDateNumberOfDays];
  v8 = sub_2588BB9B8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = *(v2 + 36);
  sub_258868DE8(0, &qword_27F95D880, MEMORY[0x28220BF28], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v20 - v14;
  sub_2588252AC(v1 + v12, v20 - v14);
  v16 = *(v9 + 48);
  v17 = v16(v15, 1, v8);
  if (v17 == 1)
  {
    v20[0] = v20;
    MEMORY[0x28223BE20](v17);
    sub_2588BB9A8();
    sub_2588BBAF8();
    (*(v9 + 8))(v20 - v11, v8);
    if (v16(v15, 1, v8) != 1)
    {
      sub_258826118(v15);
    }
  }

  else
  {
    (*(v9 + 32))(v20 - v11, v15, v8);
  }

  v18 = v21;
  sub_2588BBB28();
  (*(v9 + 8))(v20 - v11, v8);
  return (*(v22 + 8))(v18, v24);
}

uint64_t sub_25886803C(uint64_t a1, uint64_t a2)
{
  sub_258868DE8(0, &qword_27F95D880, MEMORY[0x28220BF28], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

Swift::String_optional __swiftcall MedicalIDPregnancyViewModel.dueDateDescription()()
{
  v1 = sub_2588BB9B8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for MedicalIDPregnancyViewModel(0) + 20);
  v6 = *(type metadata accessor for MedicalIDData(0) + 56);
  sub_258868DE8(0, &qword_27F95D880, MEMORY[0x28220BF28], MEMORY[0x277D83D88]);
  v8 = (*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7 - 8);
  sub_2588252AC(v5 + v6, &v16 - v8);
  if ((*(v2 + 48))(&v16 - v8, 1, v1) == 1)
  {
    sub_258826118(&v16 - v8);
    v9 = 0;
    v10 = 0;
  }

  else
  {
    v11 = (*(v2 + 32))(v4, &v16 - v8, v1);
    MEMORY[0x28223BE20](v11);
    (*(v2 + 16))(&v16 - v8, v4, v1);
    (*(v2 + 56))(&v16 - v8, 0, 1, v1);
    v12 = sub_258867124(&v16 - v8);
    v14 = v13;
    sub_258826118(&v16 - v8);
    (*(v2 + 8))(v4, v1);
    v10 = v14;
    v9 = v12;
  }

  result.value._object = v10;
  result.value._countAndFlagsBits = v9;
  return result;
}