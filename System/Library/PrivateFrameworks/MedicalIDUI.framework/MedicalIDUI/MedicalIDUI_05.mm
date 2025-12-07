uint64_t sub_25881456C(uint64_t a1)
{
  sub_25881425C(0, &qword_27F95EF90, sub_258813F34);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_258814614(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25881467C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2588146DC()
{
  result = qword_27F95F000;
  if (!qword_27F95F000)
  {
    sub_258814828(255, &qword_27F95F008, MEMORY[0x277CE0338]);
    sub_258813DD0(255);
    sub_2588BC278();
    sub_258814418(&qword_27F95EFF8, sub_258813DD0, MEMORY[0x277CDF028]);
    sub_258814418(&qword_27F95E988, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
    swift_getOpaqueTypeConformance2();
    sub_258814368();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95F000);
  }

  return result;
}

void sub_258814828(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_258813CCC(255);
    v7 = v6;
    sub_258813E34(255);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t type metadata accessor for NanoMedicalIDDataView(uint64_t a1)
{
  result = qword_27F95F010;
  if (!qword_27F95F010)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_25881490C(uint64_t a1)
{
  type metadata accessor for MedicalIDDataViewModel(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for MedicalIDModelProvider();
    if (v2 <= 0x3F)
    {
      sub_2588164BC(319, &qword_27F95DAF0, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2588149E8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v37 = a2;
  sub_25881658C(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25881650C(0);
  v35 = *(v6 - 8);
  v36 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v34 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v38 = &v31 - v9;
  v10 = sub_2588BC868();
  MEMORY[0x28223BE20](v10);
  sub_25881608C(0);
  v12 = v11;
  v33 = *(v11 - 8);
  v13 = v33;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - v17;
  sub_2588BC6F8();
  v39 = a1;
  v40 = 0;
  sub_258816F8C(&qword_27F95DB70, MEMORY[0x277CE0428], MEMORY[0x277CE0448]);
  sub_2588BE0D8();
  sub_258816120(0);
  sub_258816F8C(&qword_27F95F080, sub_258816120, MEMORY[0x277CE14C0]);
  v32 = v18;
  sub_2588BBEA8();
  sub_2588155CC(a1, v5);
  sub_258816674();
  v19 = v38;
  sub_2588BC118();
  v20 = *(v13 + 16);
  v31 = v16;
  v20(v16, v18, v12);
  v21 = v34;
  v22 = v35;
  v23 = *(v35 + 16);
  v24 = v19;
  v25 = v36;
  v23(v34, v24, v36);
  v26 = v37;
  v20(v37, v16, v12);
  sub_25881637C(0, &qword_27F95F030, sub_25881608C, sub_25881650C);
  v23(&v26[*(v27 + 48)], v21, v25);
  v28 = *(v22 + 8);
  v28(v38, v25);
  v29 = *(v33 + 8);
  v29(v32, v12);
  v28(v21, v25);
  return (v29)(v31, v12);
}

uint64_t sub_258814E3C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v61 = a2;
  v62 = sub_2588BD4A8();
  v73 = *(v62 - 8);
  v3 = MEMORY[0x28223BE20](v62);
  v76 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v74 = &v55 - v5;
  v6 = type metadata accessor for MedicalIDSettingsViewModel(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588161E8(0);
  v69 = v9;
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v75 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v55 - v13;
  v80 = a1;
  v15 = sub_2587BC3F8(sub_258816BDC, v79, &unk_2869BCC68);
  v78 = a1;
  v88 = sub_2587EE62C(sub_258816C44, v77, v15);
  swift_getKeyPath(" %\n'");
  sub_2588162B0(0);
  sub_2588162E4(0);
  sub_258816F8C(&qword_27F95F070, sub_2588162B0, MEMORY[0x277D83980]);
  sub_2587A815C();
  sub_258816F8C(&qword_27F95F0D0, sub_2588162E4, MEMORY[0x277CE14C0]);
  v72 = v14;
  sub_2588BD4B8();
  if (qword_27F95D0B0 != -1)
  {
    swift_once();
  }

  v60 = qword_27F9697B8;
  v66 = unk_27F9697C0;
  type metadata accessor for NanoMedicalIDDataView(0);

  sub_2587B5F90(v8);
  locked = MedicalIDSettingsViewModel.showWhenLockedDetail.getter();
  v18 = v17;
  sub_258816D58(v8, type metadata accessor for MedicalIDSettingsViewModel);
  v88 = locked;
  v89 = v18;
  sub_25878F648();
  v19 = sub_2588BCDF8();
  v63 = v19;
  v64 = v20;
  v22 = v21;
  v58 = v23;
  v24 = v74;
  sub_2588BD498();
  v88 = sub_2587B8E1C();
  v89 = v25;
  v71 = sub_2588BCDF8();
  v55 = v26;
  v28 = v27;
  v57 = v29;
  v56 = sub_2588BCCC8();
  KeyPath = swift_getKeyPath("\b%\n'");
  v70 = sub_2588BD1E8();
  v68 = swift_getKeyPath(byte_2588C3938);
  v65 = v28 & 1;
  LOBYTE(v88) = v28 & 1;
  v59 = v10;
  v30 = *(v10 + 16);
  v31 = v75;
  v32 = v69;
  v30(v75, v72, v69);
  v82 = 1;
  v81 = v22 & 1;
  v33 = v32;
  v34 = *(v73 + 16);
  v35 = v76;
  v36 = v62;
  v34(v76, v24, v62);
  v37 = v61;
  v30(v61, v31, v33);
  sub_258816154(0);
  v39 = v38;
  v40 = &v37[*(v38 + 48)];
  v41 = v82;
  v42 = v81;
  v43 = v66;
  *v40 = v60;
  *(v40 + 1) = v43;
  v40[16] = v41;
  v44 = v64;
  *(v40 + 3) = v19;
  *(v40 + 4) = v44;
  v40[40] = v42;
  *(v40 + 6) = v58;
  v34(&v37[*(v38 + 64)], v35, v36);
  v45 = &v37[*(v39 + 80)];
  v46 = v55;
  *&v84 = v71;
  *(&v84 + 1) = v55;
  LOBYTE(v85) = v65;
  *(&v85 + 1) = *v83;
  DWORD1(v85) = *&v83[3];
  v47 = v57;
  *(&v85 + 1) = v57;
  *&v86 = KeyPath;
  v48 = v56;
  *(&v86 + 1) = v56;
  *&v87 = v68;
  *(&v87 + 1) = v70;
  v49 = v87;
  *(v45 + 2) = v86;
  *(v45 + 3) = v49;
  v50 = v85;
  *v45 = v84;
  *(v45 + 1) = v50;

  sub_2587A99B0(v63, v44, v42);

  sub_258816CF0(&v84, &v88, sub_258813FA8);
  v51 = *(v73 + 8);
  v51(v74, v36);
  v52 = *(v59 + 8);
  v53 = v69;
  v52(v72, v69);
  v88 = v71;
  v89 = v46;
  v90 = v65;
  *v91 = *v83;
  *&v91[3] = *&v83[3];
  v92 = v47;
  v93 = KeyPath;
  v94 = v48;
  v95 = v68;
  v96 = v70;
  sub_258816D58(&v88, sub_258813FA8);
  v51(v76, v36);
  LOBYTE(v51) = v81;

  sub_2587B1CF8(v63, v64, v51);

  return (v52)(v75, v53);
}

uint64_t sub_2588155CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = type metadata accessor for NanoMedicalIDEditView(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2587DC758(0);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258816CF0(a1, v5, type metadata accessor for MedicalIDDataViewModel);
  v11 = type metadata accessor for NanoMedicalIDDataView(0);
  v12 = *(a1 + *(v11 + 20));
  v13 = (a1 + *(v11 + 24));
  v14 = *v13;
  v15 = v13[1];
  LOBYTE(v13) = *(v13 + 16);
  v31 = v14;
  v32 = v15;
  v33 = v13;
  sub_2588164BC(0, &qword_27F95DAF0, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);

  sub_2588BD458();
  v17 = v28;
  v16 = v29;
  v18 = v30;
  *&v5[v3[6]] = swift_getKeyPath("H%\n'");
  sub_258816B78(0, &qword_27F95EBC0, sub_258804A60, MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for MedicalIDDataManager(0);
  sub_258816F8C(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager, &protocol conformance descriptor for MedicalIDDataManager);
  v19 = sub_2588BBF58();
  *&v5[v3[5]] = v12;
  v20 = &v5[v3[7]];
  *v20 = v19;
  v20[8] = v21 & 1;
  v22 = &v5[v3[8]];
  LOBYTE(v28) = 0;
  sub_2588BD2B8();
  v23 = v32;
  *v22 = v31;
  *(v22 + 1) = v23;
  v24 = &v5[v3[9]];
  *v24 = v17;
  *(v24 + 1) = v16;
  v24[16] = v18;
  sub_258816F8C(&qword_27F95E2F0, type metadata accessor for NanoMedicalIDEditView, &unk_2588C3B48);
  sub_2588BCFF8();
  sub_258816D58(v5, type metadata accessor for NanoMedicalIDEditView);
  sub_2587D81D0(0, v12, v27);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_25881590C@<X0>(uint64_t a1@<X8>)
{
  sub_2588BC688();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v2 = qword_27F95DA88;
  result = sub_2588BCDE8();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_2588159EC()
{
  v0 = sub_2588BC828();
  MEMORY[0x28223BE20](v0 - 8);
  sub_258816838(0);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588BC7E8();
  sub_2588168A0();
  sub_2588BBF88();
  v6 = sub_258816F8C(&qword_27F95F0C0, sub_258816838, MEMORY[0x277CDD7A8]);
  MEMORY[0x259C8B9F0](v5, v2, v6);
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_258815B78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for NanoMedicalIDGridItemsView(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2588BD4A8();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v18 - v12;
  sub_2588BD498();
  sub_258816CF0(a1, v6, type metadata accessor for NanoMedicalIDGridItemsView);
  v14 = *(v8 + 16);
  v14(v11, v13, v7);
  sub_258816CF0(v6, a2, type metadata accessor for NanoMedicalIDGridItemsView);
  sub_25881637C(0, &qword_27F95F068, type metadata accessor for NanoMedicalIDGridItemsView, MEMORY[0x277CDF088]);
  v14((a2 + *(v15 + 48)), v11, v7);
  v16 = *(v8 + 8);
  v16(v13, v7);
  v16(v11, v7);
  return sub_258816D58(v6, type metadata accessor for NanoMedicalIDGridItemsView);
}

uint64_t sub_258815D94()
{
  sub_258815FBC(0);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = v0;
  sub_2588BCB68();
  sub_258816050(0);
  sub_258816F8C(&qword_27F95F0A0, sub_258816050, MEMORY[0x277CE14C0]);
  sub_2588BBEE8();
  sub_258816784(0);
  sub_258816F8C(&qword_27F95F0C8, sub_258815FBC, MEMORY[0x277CDD6E0]);
  sub_258816838(255);
  v7 = v6;
  v8 = sub_258816F8C(&qword_27F95F0C0, sub_258816838, MEMORY[0x277CDD7A8]);
  v12 = v7;
  v13 = v8;
  swift_getOpaqueTypeConformance2();
  sub_2588BD0B8();
  return (*(v3 + 8))(v5, v2);
}

void sub_258815FBC(uint64_t a1)
{
  if (!qword_27F95F020)
  {
    sub_258816050(255);
    sub_258816F8C(&qword_27F95F0A0, sub_258816050, MEMORY[0x277CE14C0]);
    v1 = sub_2588BBED8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95F020);
    }
  }
}

void sub_25881608C(uint64_t a1)
{
  if (!qword_27F95F038)
  {
    sub_258816120(255);
    sub_258816F8C(&qword_27F95F080, sub_258816120, MEMORY[0x277CE14C0]);
    v1 = sub_2588BBEB8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95F038);
    }
  }
}

void sub_258816154(uint64_t a1)
{
  if (!qword_27F95F048)
  {
    sub_2588161E8(255);
    sub_2588163F8(255, v1, v2, v3);
    sub_2588BD4A8();
    sub_258813FA8(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata, &qword_27F95F048);
    }
  }
}

void sub_2588161E8(uint64_t a1)
{
  if (!qword_27F95F050)
  {
    sub_2588162B0(255);
    sub_2588162E4(255);
    sub_258816F8C(&qword_27F95F070, sub_2588162B0, MEMORY[0x277D83980]);
    sub_2587A815C();
    v1 = sub_2588BD4D8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95F050);
    }
  }
}

void sub_258816320(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_25881637C(255, a3, a4, a5);
    v6 = sub_2588BD658();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_25881637C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
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

void sub_2588163F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!qword_27F95F078)
  {
    v4 = type metadata accessor for NanoGridItemCell(0, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], a4);
    if (!v5)
    {
      atomic_store(v4, &qword_27F95F078);
    }
  }
}

void sub_258816450(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_2588164BC(255, a3, a4, MEMORY[0x277D83D88]);
    v5 = sub_2588BCA88();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_2588164BC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_25881650C(uint64_t a1)
{
  if (!qword_27F95F088)
  {
    sub_25881658C(255);
    sub_258816674();
    v1 = sub_2588BC128();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95F088);
    }
  }
}

void sub_25881658C(uint64_t a1)
{
  if (!qword_27F95F090)
  {
    sub_2587DCA90(255);
    sub_2587DC80C(255);
    v1 = sub_2588BC788();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95F090);
    }
  }
}

unint64_t sub_2588165F4()
{
  result = qword_27F95E330;
  if (!qword_27F95E330)
  {
    sub_2587DC648(255);
    sub_2587DC9B0();
    sub_2587A8934();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E330);
  }

  return result;
}

unint64_t sub_258816674()
{
  result = qword_27F95F098;
  if (!qword_27F95F098)
  {
    sub_25881658C(255);
    sub_2587DCB18();
    sub_2587DC648(255);
    type metadata accessor for MedicalIDDataManager(255);
    sub_2588165F4();
    sub_258816F8C(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager, &protocol conformance descriptor for MedicalIDDataManager);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95F098);
  }

  return result;
}

void sub_258816784(uint64_t a1)
{
  if (!qword_27F95F0A8)
  {
    sub_258816838(255);
    sub_258816F8C(&qword_27F95F0C0, sub_258816838, MEMORY[0x277CDD7A8]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F95F0A8);
    }
  }
}

void sub_258816838(uint64_t a1)
{
  if (!qword_27F95F0B0)
  {
    sub_2588168A0();
    v1 = sub_2588BBF98();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95F0B0);
    }
  }
}

unint64_t sub_2588168A0()
{
  result = qword_27F95F0B8;
  if (!qword_27F95F0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95F0B8);
  }

  return result;
}

uint64_t sub_2588168FC@<X0>(uint64_t a1@<X8>)
{
  v18 = sub_2588BD258();
  v17 = sub_2588BD168();
  KeyPath = swift_getKeyPath(byte_2588C3938);
  sub_2588BC688();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v2 = qword_27F95DA88;
  v3 = sub_2588BCDE8();
  v5 = v4;
  v7 = v6;
  sub_2588BD168();
  v8 = sub_2588BCD88();
  v10 = v9;
  v12 = v11;
  v14 = v13;

  sub_2587B1CF8(v3, v5, v7 & 1);

  *a1 = v18;
  *(a1 + 8) = KeyPath;
  *(a1 + 16) = v17;
  *(a1 + 24) = v8;
  *(a1 + 32) = v10;
  v12 &= 1u;
  *(a1 + 40) = v12;
  *(a1 + 48) = v14;

  sub_2587A99B0(v8, v10, v12);

  sub_2587B1CF8(v8, v10, v12);
}

__n128 sub_258816B04@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_2588BC608();
  v13 = 1;
  sub_2588168FC(v9);
  v3 = v10;
  v4 = v11;
  v5 = v12;
  v7 = v9[0];
  result = v9[1];
  v8 = v13;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v8;
  *(a1 + 24) = v7;
  *(a1 + 40) = result;
  *(a1 + 56) = v3;
  *(a1 + 64) = v4;
  *(a1 + 72) = v5;
  return result;
}

void sub_258816B78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_258816BDC@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *a1;
  sub_258816CF0(v4, a2, type metadata accessor for MedicalIDDataViewModel);
  result = type metadata accessor for NanoMedicalIDGridItemsView(0);
  *(a2 + *(result + 20)) = v5;
  return result;
}

uint64_t sub_258816C98@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2588BC3E8();
  *a1 = result;
  return result;
}

uint64_t sub_258816CF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258816D58(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_258816DE4(uint64_t a1)
{
  if (!qword_27F95F0E0)
  {
    sub_258816E78(255);
    sub_258816F8C(&qword_27F95F0F8, sub_258816E78, MEMORY[0x277CE14C0]);
    v1 = sub_2588BD368();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95F0E0);
    }
  }
}

void sub_258816EAC(uint64_t a1)
{
  if (!qword_27F95F0F0)
  {
    sub_258816F14(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F95F0F0);
    }
  }
}

void sub_258816F14(uint64_t a1)
{
  if (!qword_27F95ECC8)
  {
    sub_258816450(255, &qword_27F95ECD0, &qword_27F95ECD8, MEMORY[0x277CE0F78]);
    v1 = sub_2588BC1E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95ECC8);
    }
  }
}

uint64_t sub_258816F8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for NanoMedicalIDDeleteView(uint64_t a1)
{
  result = qword_27F95F100;
  if (!qword_27F95F100)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258817048(uint64_t a1)
{
  sub_2588171F8(319, &qword_27F95DAF0, MEMORY[0x277CE11F8]);
  if (v1 <= 0x3F)
  {
    sub_258817194(319, &qword_27F95DC58, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_258817194(319, &qword_27F95DC90, type metadata accessor for MedicalIDDataManager, MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        sub_2588171F8(319, &qword_27F95DAF8, MEMORY[0x277CE10B8]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_258817194(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2588171F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D839B0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_258817268(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = type metadata accessor for NanoMedicalIDDeleteView(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  sub_258817194(0, &qword_27F95D9E0, MEMORY[0x277CDD650], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v36 - v8;
  sub_2587FB424();
  v11 = *(v10 - 8);
  v40 = v10;
  v41 = v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258817CF8(0);
  v37 = *(v14 - 8);
  v38 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588BBDC8();
  v17 = sub_2588BBDE8();
  (*(*(v17 - 8) + 56))(v9, 0, 1, v17);
  sub_258817FC4(a1, &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v19 = swift_allocObject();
  sub_258818028(&v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
  sub_2588BD308();
  v20 = (a1 + *(v4 + 36));
  v21 = *v20;
  v22 = *(v20 + 1);
  v46 = v21;
  v47 = v22;
  sub_2588171F8(0, &qword_27F95DAF8, MEMORY[0x277CE10B8]);
  sub_2588BD2E8();
  sub_258817FC4(a1, &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = v16;
  v24 = swift_allocObject() + v18;
  v25 = v40;
  sub_258818028(&v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v24);
  sub_258817E34(0);
  v27 = v26;
  v28 = sub_258817F7C(&qword_27F95E9D8, sub_2587FB424, MEMORY[0x277CDF028]);
  sub_258817EE8(255);
  v30 = v29;
  v31 = sub_258817F7C(&qword_27F95F140, sub_258817EE8, MEMORY[0x277CDD978]);
  v42 = v30;
  v43 = v31;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_2588BD068();

  (*(v41 + 8))(v13, v25);
  v33 = sub_2588BD9A8();
  v34 = HKUIJoinStringsForAutomationIdentifier();

  if (v34)
  {
    sub_2588BD8A8();

    v42 = v25;
    v43 = v27;
    v44 = v28;
    v45 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v35 = v38;
    sub_2588BCFB8();

    (*(v37 + 8))(v23, v35);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2588177B8(uint64_t a1)
{
  type metadata accessor for NanoMedicalIDDeleteView(0);
  sub_2588171F8(0, &qword_27F95DAF8, MEMORY[0x277CE10B8]);
  return sub_2588BD2D8();
}

uint64_t sub_25881783C(uint64_t a1)
{
  sub_258817EE8(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = a1;
  type metadata accessor for NanoConfirmationDeleteView(0);
  sub_258817F7C(&qword_27F95F138, type metadata accessor for NanoConfirmationDeleteView, &unk_2588C368C);
  sub_2588BC148();
  sub_258817194(0, &qword_27F95F148, MEMORY[0x277CDDB68], MEMORY[0x277D84560]);
  sub_2588BC2F8();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_2588C00B0;
  sub_2588BC2E8();
  v8 = sub_258817F7C(&qword_27F95F140, sub_258817EE8, MEMORY[0x277CDD978]);
  MEMORY[0x259C8C250](2, v7, v3, v8);

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_258817A84@<X0>(void *a1@<X8>)
{
  sub_2588171F8(0, &qword_27F95DAF0, MEMORY[0x277CE11F8]);
  sub_2588BD458();
  *a1 = swift_getKeyPath(byte_2588C3A58);
  sub_258817194(0, &qword_27F95EBC0, sub_258804A60, MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for MedicalIDDataManager(0);
  sub_258817F7C(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager, &protocol conformance descriptor for MedicalIDDataManager);
  v2 = sub_2588BBF58();
  v4 = v3;
  result = type metadata accessor for NanoConfirmationDeleteView(0);
  v6 = a1 + *(result + 20);
  *v6 = v2;
  v6[8] = v4 & 1;
  v7 = a1 + *(result + 24);
  *v7 = v8;
  *(v7 + 1) = v9;
  v7[16] = v10;
  return result;
}

void sub_258817BE0(uint64_t a8@<X8>)
{
  *a8 = sub_2588BC6E8();
  *(a8 + 8) = 0;
  *(a8 + 16) = 1;
  sub_258817C28(0);
  sub_258817268(v8, a8 + *(v10 + 44));
}

void sub_258817C28(uint64_t a1)
{
  if (!qword_27F95F110)
  {
    sub_258817C90(255);
    v1 = sub_2588BC0B8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95F110);
    }
  }
}

void sub_258817C90(uint64_t a1)
{
  if (!qword_27F95F118)
  {
    sub_258817CF8(255);
    sub_2588BCA98();
    v1 = sub_2588BC1E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95F118);
    }
  }
}

void sub_258817CF8(uint64_t a1)
{
  if (!qword_27F95F120)
  {
    sub_2587FB424();
    sub_258817E34(255);
    sub_258817F7C(&qword_27F95E9D8, sub_2587FB424, MEMORY[0x277CDF028]);
    sub_258817EE8(255);
    sub_258817F7C(&qword_27F95F140, sub_258817EE8, MEMORY[0x277CDD978]);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F95F120);
    }
  }
}

void sub_258817E34(uint64_t a1)
{
  if (!qword_27F95F128)
  {
    sub_258817EE8(255);
    sub_258817F7C(&qword_27F95F140, sub_258817EE8, MEMORY[0x277CDD978]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F95F128);
    }
  }
}

void sub_258817EE8(uint64_t a1)
{
  if (!qword_27F95F130)
  {
    type metadata accessor for NanoConfirmationDeleteView(255);
    sub_258817F7C(&qword_27F95F138, type metadata accessor for NanoConfirmationDeleteView, &unk_2588C368C);
    v1 = sub_2588BC158();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95F130);
    }
  }
}

uint64_t sub_258817F7C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_258817FC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NanoMedicalIDDeleteView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258818028(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NanoMedicalIDDeleteView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25881808C()
{
  v1 = *(type metadata accessor for NanoMedicalIDDeleteView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_2588177B8(v2);
}

uint64_t objectdestroyTm_14()
{
  v1 = type metadata accessor for NanoMedicalIDDeleteView(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = *(v1 + 20);
  sub_258817194(0, &qword_27F95DB30, MEMORY[0x277CDD848], MEMORY[0x277CDF458]);
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

uint64_t sub_25881825C()
{
  v1 = *(type metadata accessor for NanoMedicalIDDeleteView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_25881783C(v2);
}

void sub_2588182D4(uint64_t a1)
{
  if (!qword_27F95F158)
  {
    sub_258817C90(255);
    sub_258818338();
    v1 = sub_2588BD408();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95F158);
    }
  }
}

unint64_t sub_258818338()
{
  result = qword_27F95F160;
  if (!qword_27F95F160)
  {
    sub_258817C90(255);
    sub_2587FB424();
    sub_258817E34(255);
    sub_258817F7C(&qword_27F95E9D8, sub_2587FB424, MEMORY[0x277CDF028]);
    sub_258817EE8(255);
    sub_258817F7C(&qword_27F95F140, sub_258817EE8, MEMORY[0x277CDD978]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_258817F7C(&qword_27F95D9D8, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95F160);
  }

  return result;
}

uint64_t sub_2588184FC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2588BC598();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25881C0EC(0, &qword_27F95EBC0, sub_258804A60, MEMORY[0x277CDF458]);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for NanoMedicalIDEditView(0);
  sub_25880B950(v1 + *(v10 + 24), v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_25881B490(v9, a1, sub_258804A60);
  }

  sub_2588BDBE8();
  v12 = sub_2588BCB58();
  sub_2588BBC68();

  sub_2588BC588();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2588186F4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v35 = a1;
  v3 = type metadata accessor for NanoMedicalIDEditView(0);
  v4 = v3 - 8;
  v32 = *(v3 - 8);
  v5 = *(v32 + 64);
  MEMORY[0x28223BE20](v3);
  v31 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25881ACE8(0);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25881B1D8(0);
  v12 = *(v11 - 8);
  v33 = v11;
  v34 = v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v2;
  sub_25881AD98(0);
  sub_25881C1B8(&qword_27F95F1E0, sub_25881AD98, MEMORY[0x277CE14C0]);
  sub_2588BCD48();
  v36 = v2;
  sub_25881B314(0);
  v16 = v15;
  v17 = sub_25881C1B8(&qword_27F95F200, sub_25881ACE8, MEMORY[0x277CDE5A0]);
  sub_25881B3C8(255);
  v19 = v18;
  v20 = sub_25881C1B8(&qword_27F95F1F8, sub_25881B3C8, MEMORY[0x277CDD7A8]);
  v38 = v19;
  v39 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_2588BD0B8();
  (*(v8 + 8))(v10, v7);
  v22 = v2 + *(v4 + 40);
  v23 = *v22;
  v24 = *(v22 + 8);
  LOBYTE(v38) = v23;
  v39 = v24;
  sub_25881AC78(0, &qword_27F95DAF8, MEMORY[0x277CE10B8]);
  sub_2588BD2C8();
  v25 = v31;
  sub_25881C150(v2, v31, type metadata accessor for NanoMedicalIDEditView);
  v26 = (*(v32 + 80) + 16) & ~*(v32 + 80);
  v27 = swift_allocObject();
  sub_25881B490(v25, v27 + v26, type metadata accessor for NanoMedicalIDEditView);
  v38 = v7;
  v39 = v16;
  v40 = v17;
  v41 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v28 = v33;
  sub_2588BD118();

  return (*(v34 + 8))(v14, v28);
}

uint64_t sub_258818B58@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v82 = a2;
  v79 = type metadata accessor for NanoMedicalIDDeleteView(0);
  v3 = MEMORY[0x28223BE20](v79);
  v90 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v80 = (&v75 - v5);
  v6 = MEMORY[0x277CE1428];
  sub_25881AF94(0, &qword_27F95F1C8, sub_25881B134, MEMORY[0x277CE1428]);
  v96 = v7;
  v81 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v95 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v91 = &v75 - v10;
  sub_25881AF94(0, &qword_27F95F1C0, type metadata accessor for NanoEmergencyContactsOverallEditView, MEMORY[0x277CE0BD8]);
  v94 = v11;
  v98 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v93 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v83 = &v75 - v14;
  sub_25881AF94(0, &qword_27F95F1A8, sub_25881AFFC, v6);
  v89 = v15;
  v97 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v92 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v75 - v18;
  sub_25881AF94(0, &qword_27F95F190, sub_25881AEF8, v6);
  v88 = v20;
  v87 = *(v20 - 8);
  v21 = MEMORY[0x28223BE20](v20);
  v85 = &v75 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v75 - v23;
  v101 = a1;
  sub_25881AEF8(0);
  v25 = MEMORY[0x277CE14C0];
  sub_25881C1B8(&qword_27F95F208, sub_25881AEF8, MEMORY[0x277CE14C0]);
  v84 = v24;
  sub_2588BD508();
  v100 = a1;
  sub_25881AFFC(0);
  sub_25881C1B8(&qword_27F95F210, sub_25881AFFC, v25);
  v86 = v19;
  sub_2588BD508();
  v99 = a1;
  sub_2588BC688();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v26 = qword_27F95DA88;
  v106 = sub_2588BCDE8();
  v107 = v27;
  v108 = v28 & 1;
  v109 = v29;
  sub_2588BC688();
  v30 = v26;
  v31 = sub_2588BCDE8();
  v33 = v32;
  v35 = v34;
  sub_2588BCCC8();
  v36 = sub_2588BCDD8();
  v38 = v37;
  v40 = v39;
  v42 = v41;

  sub_2587B1CF8(v31, v33, v35 & 1);

  v102 = v36;
  v103 = v38;
  v104 = v40 & 1;
  v105 = v42;
  type metadata accessor for NanoEmergencyContactsOverallEditView(0);
  sub_25881C1B8(&qword_27F95F218, type metadata accessor for NanoEmergencyContactsOverallEditView, &unk_2588C2B08);
  v43 = v83;
  v44 = sub_2588BD4F8();
  MEMORY[0x28223BE20](v44);
  sub_25881B134(0);
  sub_25881C1B8(qword_27F95F220, sub_25881B134, MEMORY[0x277CE14C0]);
  sub_2588BD508();
  v45 = (a1 + *(type metadata accessor for NanoMedicalIDEditView(0) + 32));
  v46 = *v45;
  v47 = *(v45 + 1);
  LOBYTE(v102) = v46;
  v103 = v47;
  sub_25881AC78(0, &qword_27F95DAF8, MEMORY[0x277CE10B8]);
  sub_2588BD2E8();
  v48 = v106;
  v49 = v107;
  v50 = v108;
  type metadata accessor for MedicalIDDataManager(0);
  sub_25881C1B8(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager, &protocol conformance descriptor for MedicalIDDataManager);
  v51 = sub_2588BBF58();
  LOBYTE(v42) = v52;
  v53 = v80;
  *v80 = v48;
  *(v53 + 8) = v49;
  *(v53 + 16) = v50;
  v54 = v79;
  v55 = *(v79 + 20);
  *(v53 + v55) = swift_getKeyPath(byte_2588C3B98);
  sub_25881C0EC(0, &qword_27F95DB30, MEMORY[0x277CDD848], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v56 = v53 + *(v54 + 24);
  *v56 = v51;
  *(v56 + 8) = v42 & 1;
  v57 = v53 + *(v54 + 28);
  LOBYTE(v102) = 0;
  sub_2588BD2B8();
  v58 = v107;
  *v57 = v106;
  *(v57 + 8) = v58;
  v75 = *(v87 + 16);
  v59 = v85;
  v60 = v88;
  v75(v85, v84, v88);
  v79 = *(v97 + 16);
  (v79)(v92, v86, v89);
  v78 = *(v98 + 16);
  v78(v93, v43, v94);
  v61 = v81;
  v77 = *(v81 + 16);
  v77(v95, v91, v96);
  v76 = type metadata accessor for NanoMedicalIDDeleteView;
  v62 = v90;
  sub_25881C150(v53, v90, type metadata accessor for NanoMedicalIDDeleteView);
  v63 = v82;
  v75(v82, v59, v60);
  sub_25881ADCC(0);
  v65 = v64;
  v66 = v89;
  (v79)(&v63[v64[12]], v92, v89);
  v78(&v63[v65[16]], v93, v94);
  v67 = v96;
  v77(&v63[v65[20]], v95, v96);
  sub_25881C150(v62, &v63[v65[24]], v76);
  sub_25881C200(v53, type metadata accessor for NanoMedicalIDDeleteView);
  v68 = *(v61 + 8);
  v68(v91, v67);
  v69 = *(v98 + 8);
  v98 += 8;
  v70 = v94;
  v69(v83, v94);
  v71 = *(v97 + 8);
  v97 += 8;
  v71(v86, v66);
  v72 = *(v87 + 8);
  v73 = v88;
  v72(v84, v88);
  sub_25881C200(v90, type metadata accessor for NanoMedicalIDDeleteView);
  v68(v95, v96);
  v69(v93, v70);
  v71(v92, v66);
  return (v72)(v85, v73);
}

uint64_t sub_258819798@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = type metadata accessor for MedicalIDPersonalInfoViewModel(0);
  MEMORY[0x28223BE20](v3 - 8);
  v40 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for NanoOrganDonorEditView(0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v41 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v38 = &v37 - v8;
  v9 = type metadata accessor for NanoEditMedicalIDPrimaryLanguageView(0);
  v10 = v9 - 8;
  v11 = MEMORY[0x28223BE20](v9);
  v39 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v37 - v13;
  v15 = type metadata accessor for NanoNameEditView(0);
  v16 = v15 - 8;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v37 - v20;
  v22 = *(type metadata accessor for MedicalIDDataViewModel(0) + 40);
  sub_25881C150(a1 + v22, v21, type metadata accessor for MedicalIDPersonalInfoViewModel);
  type metadata accessor for MedicalIDDataManager(0);
  sub_25881C1B8(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager, &protocol conformance descriptor for MedicalIDDataManager);
  v23 = sub_2588BBF58();
  v24 = &v21[*(v16 + 28)];
  *v24 = v23;
  v24[8] = v25 & 1;
  sub_25881C150(a1 + v22, v14, type metadata accessor for MedicalIDPersonalInfoViewModel);
  v26 = sub_2588BBF58();
  v27 = &v14[*(v10 + 28)];
  *v27 = v26;
  v27[8] = v28 & 1;
  v29 = v40;
  sub_25881C150(a1 + v22, v40, type metadata accessor for MedicalIDPersonalInfoViewModel);
  v30 = v38;
  sub_25880364C(v29, v38);
  sub_25881C150(v21, v19, type metadata accessor for NanoNameEditView);
  v31 = v39;
  sub_25881C150(v14, v39, type metadata accessor for NanoEditMedicalIDPrimaryLanguageView);
  v32 = v41;
  sub_25881C150(v30, v41, type metadata accessor for NanoOrganDonorEditView);
  v33 = v42;
  sub_25881C150(v19, v42, type metadata accessor for NanoNameEditView);
  sub_25881B098(0, &qword_27F95F1A0, type metadata accessor for NanoNameEditView, type metadata accessor for NanoEditMedicalIDPrimaryLanguageView, type metadata accessor for NanoOrganDonorEditView);
  v35 = v34;
  sub_25881C150(v31, v33 + *(v34 + 48), type metadata accessor for NanoEditMedicalIDPrimaryLanguageView);
  sub_25881C150(v32, v33 + *(v35 + 64), type metadata accessor for NanoOrganDonorEditView);
  sub_25881C200(v30, type metadata accessor for NanoOrganDonorEditView);
  sub_25881C200(v14, type metadata accessor for NanoEditMedicalIDPrimaryLanguageView);
  sub_25881C200(v21, type metadata accessor for NanoNameEditView);
  sub_25881C200(v32, type metadata accessor for NanoOrganDonorEditView);
  sub_25881C200(v31, type metadata accessor for NanoEditMedicalIDPrimaryLanguageView);
  return sub_25881C200(v19, type metadata accessor for NanoNameEditView);
}

uint64_t sub_258819BE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for NanoAllergyEditView(0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v30 - v8;
  v10 = type metadata accessor for NanoMedicationEditView(0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v30 - v14;
  v16 = type metadata accessor for MedicalIDPregnancyViewModel(0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for NanoPregnancyEditView(0);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v30 - v23;
  v25 = type metadata accessor for MedicalIDDataViewModel(0);
  sub_25881C150(a1 + *(v25 + 48), v18, type metadata accessor for MedicalIDPregnancyViewModel);
  sub_258804E9C(v18, v24);
  v26 = *(v25 + 44);
  sub_25881C150(a1 + v26, v15, type metadata accessor for MedicalIDMedicalInfoViewModel);
  sub_25881C150(a1 + v26, v9, type metadata accessor for MedicalIDMedicalInfoViewModel);
  sub_25881C150(v24, v22, type metadata accessor for NanoPregnancyEditView);
  sub_25881C150(v15, v13, type metadata accessor for NanoMedicationEditView);
  sub_25881C150(v9, v7, type metadata accessor for NanoAllergyEditView);
  sub_25881C150(v22, a2, type metadata accessor for NanoPregnancyEditView);
  sub_25881B098(0, &qword_27F95F1B8, type metadata accessor for NanoPregnancyEditView, type metadata accessor for NanoMedicationEditView, type metadata accessor for NanoAllergyEditView);
  v28 = v27;
  sub_25881C150(v13, a2 + *(v27 + 48), type metadata accessor for NanoMedicationEditView);
  sub_25881C150(v7, a2 + *(v28 + 64), type metadata accessor for NanoAllergyEditView);
  sub_25881C200(v9, type metadata accessor for NanoAllergyEditView);
  sub_25881C200(v15, type metadata accessor for NanoMedicationEditView);
  sub_25881C200(v24, type metadata accessor for NanoPregnancyEditView);
  sub_25881C200(v7, type metadata accessor for NanoAllergyEditView);
  sub_25881C200(v13, type metadata accessor for NanoMedicationEditView);
  return sub_25881C200(v22, type metadata accessor for NanoPregnancyEditView);
}

uint64_t sub_258819F84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(*(a1 + *(type metadata accessor for NanoMedicalIDEditView(0) + 20)) + 16);
  v4 = *(v3 + 32);

  os_unfair_lock_lock((v4 + 24));
  v5 = *(v4 + 16);

  os_unfair_lock_unlock((v4 + 24));
  swift_beginAccess();
  v6 = *(v3 + 40);
  type metadata accessor for MedicalIDEditableEmergencyContactsModel(0);
  v7 = swift_allocObject();

  v8 = sub_2588BD9A8();
  v9 = HKUIJoinStringsForAutomationIdentifier();

  if (v9)
  {
    v10 = sub_2588BD8A8();
    v12 = v11;
  }

  else
  {
    v12 = 0x80000002588C8A90;
    v10 = 0xD000000000000011;
  }

  v7[4] = v10;
  v7[5] = v12;
  sub_2588BBBC8();
  v7[2] = v6;
  v7[3] = v5;

  type metadata accessor for MedicalIDDataManager(0);
  sub_25881C1B8(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager, &protocol conformance descriptor for MedicalIDDataManager);
  v13 = sub_2588BBF58();
  v15 = v14;
  sub_25881C1B8(&qword_27F95DBD0, type metadata accessor for MedicalIDEditableEmergencyContactsModel, &protocol conformance descriptor for MedicalIDEditableEmergencyContactsModel);
  sub_2588BD548();
  result = type metadata accessor for NanoEmergencyContactsOverallEditView(0);
  v17 = a2 + *(result + 20);
  *v17 = v13;
  *(v17 + 8) = v15 & 1;
  return result;
}

uint64_t sub_25881A184@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for NanoNotesEditView(0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v10 = type metadata accessor for NanoConditionsEditView(0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - v14;
  v16 = *(type metadata accessor for MedicalIDDataViewModel(0) + 44);
  sub_25881C150(a1 + v16, v15, type metadata accessor for MedicalIDMedicalInfoViewModel);
  sub_25881C150(a1 + v16, v9, type metadata accessor for MedicalIDMedicalInfoViewModel);
  sub_25881C150(v15, v13, type metadata accessor for NanoConditionsEditView);
  sub_25881C150(v9, v7, type metadata accessor for NanoNotesEditView);
  sub_25881C150(v13, a2, type metadata accessor for NanoConditionsEditView);
  sub_25881B168(0);
  sub_25881C150(v7, a2 + *(v17 + 48), type metadata accessor for NanoNotesEditView);
  sub_25881C200(v9, type metadata accessor for NanoNotesEditView);
  sub_25881C200(v15, type metadata accessor for NanoConditionsEditView);
  sub_25881C200(v7, type metadata accessor for NanoNotesEditView);
  return sub_25881C200(v13, type metadata accessor for NanoConditionsEditView);
}

uint64_t sub_25881A398(uint64_t a1)
{
  v2 = sub_2588BC828();
  MEMORY[0x28223BE20](v2 - 8);
  sub_25881B3C8(0);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2588BC7E8();
  v11 = a1;
  sub_25880AF38();
  sub_25881C1B8(&qword_27F95ECB0, sub_25880AF38, MEMORY[0x277CDF028]);
  sub_2588BBF88();
  v8 = sub_25881C1B8(&qword_27F95F1F8, sub_25881B3C8, MEMORY[0x277CDD7A8]);
  MEMORY[0x259C8B9F0](v7, v4, v8);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_25881A568(uint64_t a1)
{
  v2 = type metadata accessor for NanoMedicalIDEditView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_25881C150(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NanoMedicalIDEditView);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_25881B490(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for NanoMedicalIDEditView);
  return sub_2588BD318();
}

uint64_t sub_25881A6CC(uint64_t a1, char a2)
{
  v4 = sub_2588BC298();
  MEMORY[0x28223BE20](v4 - 8);
  sub_258804A60(0);
  v6 = v5;
  MEMORY[0x28223BE20](v5);
  v8 = &v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2588184FC(v8);
  MEMORY[0x259C8C5A0](v6);
  sub_2588BC288();
  sub_2588BD438();
  sub_25881C200(v8, sub_258804A60);
  v9 = (a1 + *(type metadata accessor for NanoMedicalIDEditView(0) + 36));
  v10 = *v9;
  v11 = v9[1];
  LOBYTE(v9) = *(v9 + 16);
  v14 = v10;
  v15 = v11;
  v16 = v9;
  v13[7] = a2;
  sub_25881AC78(0, &qword_27F95DAF0, MEMORY[0x277CE11F8]);
  return sub_2588BD438();
}

uint64_t sub_25881A844@<X0>(uint64_t a5@<X8>)
{
  sub_25878F648();

  v6 = sub_2588BCDF8();
  v8 = v7;
  v10 = v9;
  sub_2588BC8D8();
  v11 = sub_2588BCD98();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  sub_2587B1CF8(v6, v8, v10 & 1);

  v18 = sub_2588BCDF8();
  v20 = v19;
  v21 = v15 & 1;
  v26 = v15 & 1;
  v23 = v22 & 1;
  *a5 = v11;
  *(a5 + 8) = v13;
  *(a5 + 16) = v21;
  *(a5 + 24) = v17;
  *(a5 + 32) = v18;
  *(a5 + 40) = v19;
  *(a5 + 48) = v22 & 1;
  *(a5 + 56) = v24;
  sub_2587A99B0(v11, v13, v21);

  sub_2587A99B0(v18, v20, v23);

  sub_2587B1CF8(v18, v20, v23);

  sub_2587B1CF8(v11, v13, v26);
}

__n128 sub_25881A9DC@<Q0>(uint64_t a2@<X8>)
{
  v3 = sub_2588BC6F8();
  sub_25881A844(v6);
  *&v5[55] = v6[3];
  *&v5[39] = v6[2];
  *&v5[23] = v6[1];
  *&v5[7] = v6[0];
  *(a2 + 33) = *&v5[16];
  result = *&v5[32];
  *(a2 + 49) = *&v5[32];
  *(a2 + 65) = *&v5[48];
  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 80) = *&v5[63];
  *(a2 + 17) = *v5;
  return result;
}

uint64_t type metadata accessor for NanoMedicalIDEditView(uint64_t a1)
{
  result = qword_27F95F168;
  if (!qword_27F95F168)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_25881AAFC(uint64_t a1)
{
  type metadata accessor for MedicalIDDataViewModel(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for MedicalIDModelProvider();
    if (v2 <= 0x3F)
    {
      sub_25881C0EC(319, &qword_27F95ED20, sub_258804A60, MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        sub_25881C0EC(319, &qword_27F95DC90, type metadata accessor for MedicalIDDataManager, MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          sub_25881AC78(319, &qword_27F95DAF8, MEMORY[0x277CE10B8]);
          if (v5 <= 0x3F)
          {
            sub_25881AC78(319, &qword_27F95DAF0, MEMORY[0x277CE11F8]);
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

void sub_25881AC78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D839B0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_25881ACE8(uint64_t a1)
{
  if (!qword_27F95F178)
  {
    sub_25881AD98(255);
    sub_25881C1B8(&qword_27F95F1E0, sub_25881AD98, MEMORY[0x277CE14C0]);
    v1 = sub_2588BCD58();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95F178);
    }
  }
}

void sub_25881ADCC(uint64_t a1)
{
  if (!qword_27F95F188)
  {
    v1 = MEMORY[0x277CE1428];
    sub_25881AF94(255, &qword_27F95F190, sub_25881AEF8, MEMORY[0x277CE1428]);
    sub_25881AF94(255, &qword_27F95F1A8, sub_25881AFFC, v1);
    sub_25881AF94(255, &qword_27F95F1C0, type metadata accessor for NanoEmergencyContactsOverallEditView, MEMORY[0x277CE0BD8]);
    sub_25881AF94(255, &qword_27F95F1C8, sub_25881B134, v1);
    type metadata accessor for NanoMedicalIDDeleteView(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata, &qword_27F95F188);
    }
  }
}

void sub_25881AEF8(uint64_t a1)
{
  if (!qword_27F95F198)
  {
    sub_25881B098(255, &qword_27F95F1A0, type metadata accessor for NanoNameEditView, type metadata accessor for NanoEditMedicalIDPrimaryLanguageView, type metadata accessor for NanoOrganDonorEditView);
    v1 = sub_2588BD658();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95F198);
    }
  }
}

void sub_25881AF94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    v5 = sub_2588BD518();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_25881AFFC(uint64_t a1)
{
  if (!qword_27F95F1B0)
  {
    sub_25881B098(255, &qword_27F95F1B8, type metadata accessor for NanoPregnancyEditView, type metadata accessor for NanoMedicationEditView, type metadata accessor for NanoAllergyEditView);
    v1 = sub_2588BD658();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95F1B0);
    }
  }
}

void sub_25881B098(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    a5(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v9)
    {
      atomic_store(TupleTypeMetadata3, a2);
    }
  }
}

void sub_25881B168(uint64_t a1)
{
  if (!qword_27F95F1D8)
  {
    type metadata accessor for NanoConditionsEditView(255);
    type metadata accessor for NanoNotesEditView(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F95F1D8);
    }
  }
}

void sub_25881B1D8(uint64_t a1)
{
  if (!qword_27F95F1E8)
  {
    sub_25881ACE8(255);
    sub_25881B314(255);
    sub_25881C1B8(&qword_27F95F200, sub_25881ACE8, MEMORY[0x277CDE5A0]);
    sub_25881B3C8(255);
    sub_25881C1B8(&qword_27F95F1F8, sub_25881B3C8, MEMORY[0x277CDD7A8]);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F95F1E8);
    }
  }
}

void sub_25881B314(uint64_t a1)
{
  if (!qword_27F95F1F0)
  {
    sub_25881B3C8(255);
    sub_25881C1B8(&qword_27F95F1F8, sub_25881B3C8, MEMORY[0x277CDD7A8]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F95F1F0);
    }
  }
}

void sub_25881B3C8(uint64_t a1)
{
  if (!qword_27F95ECA0)
  {
    sub_25880AF38();
    sub_25881C1B8(&qword_27F95ECB0, sub_25880AF38, MEMORY[0x277CDF028]);
    v1 = sub_2588BBF98();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95ECA0);
    }
  }
}

uint64_t sub_25881B490(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroyTm_15()
{
  v55 = type metadata accessor for NanoMedicalIDEditView(0);
  v56 = *(*(v55 - 8) + 80);
  v1 = (v0 + ((v56 + 16) & ~v56));

  v2 = type metadata accessor for MedicalIDDataViewModel(0);
  v3 = (v1 + v2[5]);

  v4 = type metadata accessor for MedicalIDData(0);
  v5 = v4[13];
  v6 = sub_2588BB9B8();
  v65 = *(v6 - 8);
  v7 = *(v65 + 48);
  if (!v7(v3 + v5, 1, v6))
  {
    (*(v65 + 8))(v3 + v5, v6);
  }

  v8 = v4[14];
  if (!v7(v3 + v8, 1, v6))
  {
    (*(v65 + 8))(v3 + v8, v6);
  }

  v9 = (v3 + v4[18]);
  v10 = v9[1];
  if (v10 >> 60 != 15)
  {
    sub_2587C2610(*v9, v10);
  }

  v11 = v4[19];
  v12 = sub_2588BB818();
  v57 = *(v12 - 8);
  v63 = *(v57 + 48);
  if (!v63(v3 + v11, 1, v12))
  {
    (*(v57 + 8))(v3 + v11, v12);
  }

  v13 = v4[21];
  if (!v7(v3 + v13, 1, v6))
  {
    (*(v65 + 8))(v3 + v13, v6);
  }

  v14 = v2[6];
  v58 = sub_2588BBB48();
  v59 = (*(v58 - 8) + 8);
  v60 = *v59;
  (*v59)(v1 + v14);

  v15 = v2[8];
  v16 = sub_2588BBAC8();
  v61 = *(*(v16 - 8) + 8);
  v62 = v16;
  v61(v1 + v15);
  v64 = v2;
  v17 = v1 + v2[9];

  v18 = type metadata accessor for MedicalIDBiometricsViewModel(0);
  v19 = &v17[v18[5]];

  v20 = v4[13];
  if (!v7(&v19[v20], 1, v6))
  {
    (*(v65 + 8))(&v19[v20], v6);
  }

  v21 = v4[14];
  if (!v7(&v19[v21], 1, v6))
  {
    (*(v65 + 8))(&v19[v21], v6);
  }

  v22 = &v19[v4[18]];
  v23 = v22[1];
  if (v23 >> 60 != 15)
  {
    sub_2587C2610(*v22, v23);
  }

  v24 = v4[19];
  if (!v63(&v19[v24], 1, v12))
  {
    (*(v57 + 8))(&v19[v24], v12);
  }

  v25 = v4[21];
  if (!v7(&v19[v25], 1, v6))
  {
    (*(v65 + 8))(&v19[v25], v6);
  }

  (v61)(&v17[v18[6]], v62);
  v26 = &v17[v18[7]];
  (v61)(v26, v62);

  v27 = &v17[v18[8]];
  (v61)(v27, v62);
  v28 = type metadata accessor for MedicalIDWeightFormatter(0);

  v29 = (v1 + v64[10]);

  v30 = v4[13];
  if (!v7(v29 + v30, 1, v6))
  {
    (*(v65 + 8))(v29 + v30, v6);
  }

  v31 = v4[14];
  if (!v7(v29 + v31, 1, v6))
  {
    (*(v65 + 8))(v29 + v31, v6);
  }

  v32 = (v29 + v4[18]);
  v33 = v32[1];
  if (v33 >> 60 != 15)
  {
    sub_2587C2610(*v32, v33);
  }

  v34 = v4[19];
  if (!v63(v29 + v34, 1, v12))
  {
    (*(v57 + 8))(v29 + v34, v12);
  }

  v35 = v4[21];
  if (!v7(v29 + v35, 1, v6))
  {
    (*(v65 + 8))(v29 + v35, v6);
  }

  v36 = type metadata accessor for MedicalIDPersonalInfoViewModel(0);
  (v60)(v29 + v36[5], v58);
  (v61)(v29 + v36[6], v62);

  v37 = (v1 + v64[11]);

  v38 = type metadata accessor for MedicalIDMedicalInfoViewModel(0);
  (v60)(v37 + *(v38 + 20), v58);
  (v61)(v37 + *(v38 + 24), v62);
  v39 = v1 + v64[12];

  v40 = type metadata accessor for MedicalIDPregnancyViewModel(0);
  v41 = &v39[v40[5]];

  v42 = v4[13];
  if (!v7(&v41[v42], 1, v6))
  {
    (*(v65 + 8))(&v41[v42], v6);
  }

  v43 = v4[14];
  if (!v7(&v41[v43], 1, v6))
  {
    (*(v65 + 8))(&v41[v43], v6);
  }

  v44 = &v41[v4[18]];
  v45 = v44[1];
  if (v45 >> 60 != 15)
  {
    sub_2587C2610(*v44, v45);
  }

  v46 = v4[19];
  if (!v63(&v41[v46], 1, v12))
  {
    (*(v57 + 8))(&v41[v46], v12);
  }

  v47 = v4[21];
  if (!v7(&v41[v47], 1, v6))
  {
    (*(v65 + 8))(&v41[v47], v6);
  }

  (v60)(&v39[v40[6]], v58);
  (v61)(&v39[v40[7]], v62);

  v48 = v40[9];
  if (!v7(&v39[v48], 1, v6))
  {
    (*(v65 + 8))(&v39[v48], v6);
  }

  v49 = v1 + *(v55 + 24);
  sub_25881C0EC(0, &qword_27F95EBC0, sub_258804A60, MEMORY[0x277CDF458]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    sub_258804A60(0);
    v52 = *(v51 + 32);
    v53 = sub_2588BC298();
    (*(*(v53 - 8) + 8))(&v49[v52], v53);
  }

  return swift_deallocObject();
}

uint64_t sub_25881C058(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for NanoMedicalIDEditView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

void sub_25881C0EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_25881C150(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25881C1B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25881C200(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25881C268(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25881C2F0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

  v9 = ((v6 + 17) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
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
        return (*(v4 + 48))((a1 + v6 + 17) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
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

void sub_25881C474(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v10 = ((v9 + 17) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
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
LABEL_46:
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
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
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
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 17] & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

uint64_t type metadata accessor for NanoMedicalIDGridItemsView(uint64_t a1)
{
  result = qword_27F95F2A8;
  if (!qword_27F95F2A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25881C750(uint64_t a1)
{
  result = type metadata accessor for MedicalIDDataViewModel(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25881C7E0(uint64_t *TupleTypeMetadata, unint64_t a2, uint64_t a3)
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

  return sub_2588BD668();
}

uint64_t sub_25881C9B0@<X0>(void *a1@<X8>)
{
  v3 = MEMORY[0x277CE0330];
  sub_258821468(0, &qword_27F95F2D8, sub_25882012C, sub_2588208A4, MEMORY[0x277CE0330]);
  v171 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = (&v170 - v5);
  sub_258821468(0, &qword_27F95F388, sub_258820174, sub_2588205B0, v3);
  MEMORY[0x28223BE20](v7);
  v9 = (&v170 - v8);
  sub_25882012C(0);
  v172 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v170 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258820900(0);
  v176 = v13;
  MEMORY[0x28223BE20](v13);
  v173 = &v170 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258820174(0);
  v16 = v15;
  MEMORY[0x28223BE20](v15);
  v18 = &v170 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258821468(0, &qword_27F95F398, sub_258820948, sub_258820900, v3);
  v175 = v19;
  MEMORY[0x28223BE20](v19);
  v21 = &v170 - v20;
  v22 = *(v1 + *(type metadata accessor for NanoMedicalIDGridItemsView(0) + 20));
  if (v22 > 3)
  {
    if (v22 > 5)
    {
      v174 = a1;
      if (v22 == 6)
      {
        if (qword_27F95D148 != -1)
        {
          swift_once();
        }

        v72 = qword_27F9698E8;
        v73 = qword_27F9698F0;
        v74 = *(v1 + *(type metadata accessor for MedicalIDDataViewModel(0) + 44));

        v75 = [v74 medicalConditions];
        if (v75)
        {
          v76 = v75;
          v77 = sub_2588BD8A8();
          v79 = v78;
        }

        else
        {
          if (qword_27F95D0C0 != -1)
          {
            swift_once();
          }

          v77 = qword_27F9697D8;
          v79 = unk_27F9697E0;
        }

        *&v254 = v77;
        *(&v254 + 1) = v79;
        sub_25878F648();
        v131 = sub_2588BCDF8();
        v133 = v132;
        v135 = v134 & 1;
        LOBYTE(v233) = v134 & 1;
        LOBYTE(v223) = 0;
        *&v244 = v72;
        *(&v244 + 1) = v73;
        LOBYTE(v245) = 1;
        *(&v245 + 1) = v131;
        *&v246 = v132;
        BYTE8(v246) = v134 & 1;
        *&v247 = v136;
        BYTE8(v247) = 0;
      }

      else
      {
        if (qword_27F95D150 != -1)
        {
          swift_once();
        }

        v113 = qword_27F9698F8;
        v73 = qword_27F969900;
        v114 = *(v1 + *(type metadata accessor for MedicalIDDataViewModel(0) + 44));

        v115 = [v114 medicalNotes];
        if (v115)
        {
          v116 = v115;
          v117 = sub_2588BD8A8();
          v119 = v118;
        }

        else
        {
          if (qword_27F95D0C0 != -1)
          {
            swift_once();
          }

          v117 = qword_27F9697D8;
          v119 = unk_27F9697E0;
        }

        *&v254 = v117;
        *(&v254 + 1) = v119;
        sub_25878F648();
        v131 = sub_2588BCDF8();
        v133 = v155;
        v135 = v156 & 1;
        LOBYTE(v233) = v156 & 1;
        LOBYTE(v223) = 1;
        *&v244 = v113;
        *(&v244 + 1) = v73;
        LOBYTE(v245) = 1;
        *(&v245 + 1) = v131;
        *&v246 = v155;
        BYTE8(v246) = v156 & 1;
        *&v247 = v157;
        BYTE8(v247) = 1;
      }

      sub_2587A99B0(v131, v133, v135);
      sub_2588163F8(0, v158, v159, v160);
      v170 = v73;
      sub_258820E1C(&qword_27F95F3D8, sub_2588163F8, &unk_2588C3C6C);

      sub_2588BC778();
      v161 = v255;
      *v6 = v254;
      v6[1] = v161;
      v6[2] = v256[0];
      *(v6 + 41) = *(v256 + 9);
      swift_storeEnumTagMultiPayload();
      sub_2588208A4(0, v162, v163, v164);
      v165 = sub_258820BCC();
      sub_258820C7C(v165, v166, v167, v168);
      v169 = v173;
      sub_2588BC778();
      sub_258820F38(v169, v21, sub_258820900);
      swift_storeEnumTagMultiPayload();
      sub_258820948(0);
      sub_258820D24();
      sub_258820E64();
      sub_2588BC778();

      sub_2587B1CF8(v131, v133, v135);

      v62 = sub_258820900;
      v63 = v169;
    }

    else if (v22 == 4)
    {
      v174 = a1;
      if (qword_27F95D0F8 != -1)
      {
        swift_once();
      }

      v52 = unk_27F969850;
      *v18 = qword_27F969848;
      *(v18 + 1) = v52;
      v18[16] = 1;
      v53 = *(v16 + 40);

      sub_25881E9F0(v1, &v18[v53]);
      sub_258820F38(v18, v9, sub_258820174);
      swift_storeEnumTagMultiPayload();
      sub_2588205B0(0);
      sub_258820C14();
      sub_258820C48();
      sub_2588BC778();
      sub_258820F38(v12, v6, sub_25882012C);
      swift_storeEnumTagMultiPayload();
      sub_2588208A4(0, v54, v55, v56);
      v57 = sub_258820BCC();
      sub_258820C7C(v57, v58, v59, v60);
      v61 = v173;
      sub_2588BC778();
      sub_258821150(v12, sub_25882012C);
      sub_258820F38(v61, v21, sub_258820900);
      swift_storeEnumTagMultiPayload();
      sub_258820948(0);
      sub_258820D24();
      sub_258820E64();
      sub_2588BC778();
      sub_258821150(v61, sub_258820900);
      v62 = sub_258820174;
      v63 = v18;
    }

    else
    {
      if (qword_27F95D108 != -1)
      {
        swift_once();
      }

      v244 = xmmword_27F969868;
      LOBYTE(v245) = 1;

      sub_25881F004(v1, (&v245 + 8));
      *(v259 + 9) = *(v250 + 9);
      v92 = v249;
      v258 = v249;
      v259[0] = v250[0];
      v93 = v245;
      v94 = v244;
      v254 = v244;
      v255 = v245;
      v95 = v246;
      v96 = v247;
      v256[0] = v246;
      v256[1] = v247;
      v257 = v248;
      v9[4] = v248;
      v9[5] = v92;
      v9[6] = v259[0];
      *(v9 + 105) = *(v259 + 9);
      *v9 = v94;
      v9[1] = v93;
      v9[2] = v95;
      v9[3] = v96;
      swift_storeEnumTagMultiPayload();
      sub_2588200C4(&v254, &v244, sub_2588205B0);
      sub_2588205B0(0);
      sub_258820C14();
      sub_258820C48();
      sub_2588BC778();
      sub_258820F38(v12, v6, sub_25882012C);
      swift_storeEnumTagMultiPayload();
      sub_2588208A4(0, v97, v98, v99);
      v100 = sub_258820BCC();
      sub_258820C7C(v100, v101, v102, v103);
      v104 = v173;
      sub_2588BC778();
      sub_258821150(v12, sub_25882012C);
      sub_258820F38(v104, v21, sub_258820900);
      swift_storeEnumTagMultiPayload();
      sub_258820948(0);
      sub_258820D24();
      sub_258820E64();
      sub_2588BC778();
      sub_2588211B0(&v254, sub_2588205B0);
      v62 = sub_258820900;
      v63 = v104;
    }

    return sub_258821150(v63, v62);
  }

  else if (v22 > 1)
  {
    v174 = a1;
    if (v22 == 2)
    {
      if (qword_27F95D0F0 != -1)
      {
        swift_once();
      }

      v64 = qword_27F969838;
      v65 = qword_27F969840;
      v66 = *(v1 + *(type metadata accessor for MedicalIDDataViewModel(0) + 44));

      v67 = [v66 medicationInfo];
      if (v67)
      {
        v68 = v67;
        v69 = sub_2588BD8A8();
        v71 = v70;
      }

      else
      {
        if (qword_27F95D0C0 != -1)
        {
          swift_once();
        }

        v69 = qword_27F9697D8;
        v71 = unk_27F9697E0;
      }

      *&v254 = v69;
      *(&v254 + 1) = v71;
      sub_25878F648();
      v120 = sub_2588BCDF8();
      v122 = v121;
      v124 = v123 & 1;
      LOBYTE(v212) = v123 & 1;
      LOBYTE(v201) = 0;
      *&v254 = v64;
      *(&v254 + 1) = v65;
      LOBYTE(v255) = 1;
      *(&v255 + 1) = v120;
      *&v256[0] = v121;
      BYTE8(v256[0]) = v123 & 1;
      *&v256[1] = v125;
      BYTE8(v256[1]) = 0;

      sub_2587A99B0(v120, v122, v124);
      sub_2588163F8(0, v126, v127, v128);
      sub_258820E1C(&qword_27F95F3D8, sub_2588163F8, &unk_2588C3C6C);
      v173 = v65;

      sub_2588BC778();
      v254 = v223;
      v255 = v224;
      v256[0] = v225[0];
      *(v256 + 9) = *(v225 + 9);
      sub_258820FA0(&v254);
      v241 = v260;
      v242 = v261;
      v243 = v262;
      v237 = v257;
      v238 = v258;
      v239 = v259[0];
      v240 = v259[1];
      v233 = v254;
      v234 = v255;
      v130 = v256[0];
      v129 = v256[1];
    }

    else
    {
      if (qword_27F95D140 != -1)
      {
        swift_once();
      }

      v105 = qword_27F9698D8;
      v106 = qword_27F9698E0;
      v107 = *(v1 + *(type metadata accessor for MedicalIDDataViewModel(0) + 44));

      v108 = [v107 allergyInfo];
      if (v108)
      {
        v109 = v108;
        v110 = sub_2588BD8A8();
        v112 = v111;
      }

      else
      {
        if (qword_27F95D0C0 != -1)
        {
          swift_once();
        }

        v110 = qword_27F9697D8;
        v112 = unk_27F9697E0;
      }

      *&v254 = v110;
      *(&v254 + 1) = v112;
      sub_25878F648();
      v120 = sub_2588BCDF8();
      v122 = v137;
      v124 = v138 & 1;
      LOBYTE(v212) = v138 & 1;
      LOBYTE(v201) = 1;
      *&v254 = v105;
      *(&v254 + 1) = v106;
      LOBYTE(v255) = 1;
      *(&v255 + 1) = v120;
      *&v256[0] = v137;
      BYTE8(v256[0]) = v138 & 1;
      *&v256[1] = v139;
      BYTE8(v256[1]) = 1;

      sub_2587A99B0(v120, v122, v124);
      sub_2588163F8(0, v140, v141, v142);
      v173 = v106;
      sub_258820E1C(&qword_27F95F3D8, sub_2588163F8, &unk_2588C3C6C);

      sub_2588BC778();
      v254 = v223;
      v255 = v224;
      v256[0] = v225[0];
      *(v256 + 9) = *(v225 + 9);
      sub_258820FA0(&v254);
      v241 = v260;
      v242 = v261;
      v243 = v262;
      v237 = v257;
      v238 = v258;
      v239 = v259[0];
      v240 = v259[1];
      v233 = v254;
      v234 = v255;
      v130 = v256[0];
      v129 = v256[1];
    }

    v235 = v130;
    v236 = v129;
    sub_258820990(0);
    sub_2588208A4(0, v143, v144, v145);
    v146 = sub_258820D6C();
    sub_258820C7C(v146, v147, v148, v149);
    sub_2588BC778();
    v150 = v252;
    *(v21 + 8) = v251;
    *(v21 + 9) = v150;
    *(v21 + 80) = v253;
    v151 = v249;
    *(v21 + 4) = v248;
    *(v21 + 5) = v151;
    v152 = v250[1];
    *(v21 + 6) = v250[0];
    *(v21 + 7) = v152;
    v153 = v245;
    *v21 = v244;
    *(v21 + 1) = v153;
    v154 = v247;
    *(v21 + 2) = v246;
    *(v21 + 3) = v154;
    swift_storeEnumTagMultiPayload();
    sub_258820948(0);
    sub_258820D24();
    sub_258820E64();
    sub_2588BC778();

    sub_2587B1CF8(v120, v122, v124);
  }

  else if (v22)
  {
    if (qword_27F95D0D0 != -1)
    {
      swift_once();
    }

    v254 = xmmword_27F9697F8;
    LOBYTE(v255) = 1;

    sub_25881E550(&v255 + 8);
    v205 = v257;
    v206 = v258;
    v207 = v259[0];
    v201 = v254;
    v202 = v255;
    v203 = v256[0];
    v204 = v256[1];
    v224 = v255;
    v225[0] = v256[0];
    v223 = v254;
    v228 = v259[0];
    v227 = v258;
    v226 = v257;
    v225[1] = v256[1];
    sub_258820FAC(&v223);
    v260 = v230;
    v261 = v231;
    LOBYTE(v262) = v232;
    v257 = v226;
    v258 = v227;
    v259[0] = v228;
    v259[1] = v229;
    v254 = v223;
    v255 = v224;
    v256[0] = v225[0];
    v256[1] = v225[1];
    sub_2588200C4(&v201, &v244, sub_258820B38);
    sub_2588209D8(0);
    sub_258820B38(0);
    sub_258820DB4();
    sub_258820DE8();
    sub_2588BC778();
    v260 = v220;
    v261 = v221;
    LOBYTE(v262) = v222;
    v257 = v216;
    v258 = v217;
    v259[0] = v218;
    v259[1] = v219;
    v254 = v212;
    v255 = v213;
    v256[0] = v214;
    v256[1] = v215;
    sub_258820FB8(&v254);
    v241 = v260;
    v242 = v261;
    v243 = v262;
    v237 = v257;
    v238 = v258;
    v239 = v259[0];
    v240 = v259[1];
    v233 = v254;
    v234 = v255;
    v235 = v256[0];
    v236 = v256[1];
    sub_258820990(0);
    sub_2588208A4(0, v80, v81, v82);
    v83 = sub_258820D6C();
    sub_258820C7C(v83, v84, v85, v86);
    sub_2588BC778();
    v87 = v252;
    *(v21 + 8) = v251;
    *(v21 + 9) = v87;
    *(v21 + 80) = v253;
    v88 = v249;
    *(v21 + 4) = v248;
    *(v21 + 5) = v88;
    v89 = v250[1];
    *(v21 + 6) = v250[0];
    *(v21 + 7) = v89;
    v90 = v245;
    *v21 = v244;
    *(v21 + 1) = v90;
    v91 = v247;
    *(v21 + 2) = v246;
    *(v21 + 3) = v91;
    swift_storeEnumTagMultiPayload();
    sub_258820948(0);
    sub_258820D24();
    sub_258820E64();
    sub_2588BC778();
    return sub_2588211B0(&v201, sub_258820B38);
  }

  else
  {
    v23 = (v1 + *(type metadata accessor for MedicalIDDataViewModel(0) + 40));
    v24 = v23[1];
    v174 = a1;
    if (!v24)
    {
      goto LABEL_8;
    }

    v25 = *v23;
    v26 = HIBYTE(v24) & 0xF;
    if ((v24 & 0x2000000000000000) == 0)
    {
      v26 = v25 & 0xFFFFFFFFFFFFLL;
    }

    if (!v26)
    {
LABEL_8:
      if (qword_27F95D0C0 != -1)
      {
        swift_once();
      }

      v25 = qword_27F9697D8;
    }

    *&v254 = v25;
    *(&v254 + 1) = v27;
    sub_25878F648();
    v28 = sub_2588BCDF8();
    v171 = v29;
    v172 = v28;
    v31 = v30;
    v173 = v32;
    sub_25881E27C(&v233);
    v33 = sub_2588BCCC8();
    KeyPath = swift_getKeyPath("X$\n'");
    v35 = sub_2588BD1E8();
    v180 = v235;
    v181 = v236;
    v182 = v237;
    v183 = v238;
    v178 = v233;
    v179 = v234;
    *&v184 = KeyPath;
    *(&v184 + 1) = v33;
    v36 = swift_getKeyPath("0$\n'");
    v256[1] = v181;
    v257 = v182;
    v258 = v183;
    v259[0] = v184;
    v254 = v178;
    v255 = v179;
    v256[0] = v180;
    v185[0] = v233;
    v185[4] = v237;
    v185[5] = v238;
    v185[2] = v235;
    v185[3] = v236;
    v185[1] = v234;
    v186 = KeyPath;
    v187 = v33;
    sub_2588200C4(&v178, &v244, sub_258820B18);
    sub_2588211B0(v185, sub_258820B18);
    v188[4] = v257;
    v188[5] = v258;
    v188[6] = v259[0];
    v188[0] = v254;
    v188[1] = v255;
    v188[2] = v256[0];
    v188[3] = v256[1];
    *&v189 = v36;
    *(&v189 + 1) = v35;
    v211[4] = v257;
    v211[5] = v258;
    v211[6] = v259[0];
    v211[7] = v189;
    v211[0] = v254;
    v211[1] = v255;
    v211[2] = v256[0];
    v211[3] = v256[1];
    v177 = v31 & 1;
    v190[2] = v256[0];
    v190[3] = v256[1];
    v190[0] = v254;
    v190[1] = v255;
    v190[6] = v259[0];
    v190[7] = v189;
    v190[4] = v257;
    v190[5] = v258;
    v197 = v257;
    v198 = v258;
    v199 = v259[0];
    v200 = v189;
    v195 = v256[0];
    v196 = v256[1];
    v193 = v254;
    v194 = v255;
    v37 = v172;
    *&v191 = v172;
    *(&v191 + 1) = v171;
    LOBYTE(v192) = v31 & 1;
    *(&v192 + 1) = v173;
    v205 = v256[0];
    v206 = v256[1];
    v203 = v254;
    v204 = v255;
    v209 = v259[0];
    v210 = v189;
    v207 = v257;
    v208 = v258;
    v201 = v191;
    v202 = v192;
    v38 = v171;
    sub_2587A99B0(v172, v171, v31 & 1);

    sub_2588200C4(v188, &v254, sub_258820A74);
    sub_2587A99B0(v37, v38, v31 & 1);

    sub_2588200C4(v190, &v254, sub_258820A74);
    sub_2588211B0(v211, sub_258820A74);
    sub_2587B1CF8(v37, v38, v31 & 1);

    v228 = v207;
    v229 = v208;
    v230 = v209;
    v231 = v210;
    v225[1] = v204;
    v226 = v205;
    v227 = v206;
    v223 = v201;
    v224 = v202;
    v225[0] = v203;
    sub_258820FC0(&v223);
    v260 = v230;
    v261 = v231;
    LOBYTE(v262) = v232;
    v257 = v226;
    v258 = v227;
    v259[0] = v228;
    v259[1] = v229;
    v254 = v223;
    v255 = v224;
    v256[0] = v225[0];
    v256[1] = v225[1];
    sub_2588200C4(&v191, &v244, sub_258820A0C);
    sub_2588209D8(0);
    sub_258820B38(0);
    sub_258820DB4();
    sub_258820DE8();
    sub_2588BC778();
    v260 = v220;
    v261 = v221;
    LOBYTE(v262) = v222;
    v257 = v216;
    v258 = v217;
    v259[0] = v218;
    v259[1] = v219;
    v254 = v212;
    v255 = v213;
    v256[0] = v214;
    v256[1] = v215;
    sub_258820FB8(&v254);
    v241 = v260;
    v242 = v261;
    v243 = v262;
    v237 = v257;
    v238 = v258;
    v239 = v259[0];
    v240 = v259[1];
    v233 = v254;
    v234 = v255;
    v235 = v256[0];
    v236 = v256[1];
    sub_258820990(0);
    sub_2588208A4(0, v39, v40, v41);
    v42 = sub_258820D6C();
    sub_258820C7C(v42, v43, v44, v45);
    sub_2588BC778();
    v46 = v252;
    *(v21 + 8) = v251;
    *(v21 + 9) = v46;
    *(v21 + 80) = v253;
    v47 = v249;
    *(v21 + 4) = v248;
    *(v21 + 5) = v47;
    v48 = v250[1];
    *(v21 + 6) = v250[0];
    *(v21 + 7) = v48;
    v49 = v245;
    *v21 = v244;
    *(v21 + 1) = v49;
    v50 = v247;
    *(v21 + 2) = v246;
    *(v21 + 3) = v50;
    swift_storeEnumTagMultiPayload();
    sub_258820948(0);
    sub_258820D24();
    sub_258820E64();
    sub_2588BC778();
    sub_2588211B0(&v191, sub_258820A0C);
    sub_2588211B0(v188, sub_258820A74);
    sub_2587B1CF8(v172, v38, v31 & 1);
  }
}

uint64_t sub_25881E27C@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for MedicalIDDataViewModel(0);
  if (!MedicalIDPersonalInfoViewModel.localizedAgeDescription()().value._object)
  {
    if (qword_27F95D0C0 != -1)
    {
      swift_once();
    }
  }

  sub_25878F648();
  v2 = sub_2588BCDF8();
  v4 = v3;
  v20 = v5;
  v22 = v6;
  if (!MedicalIDPersonalInfoViewModel.spokenLanguageDescription()().value._object)
  {
    if (qword_27F95D0C0 != -1)
    {
      swift_once();
    }
  }

  v7 = sub_2588BCDF8();
  v9 = v8;
  v11 = v10;
  v21 = v12;
  if (!MedicalIDPersonalInfoViewModel.localizedOrganDonationDescription()().value._object)
  {
    if (qword_27F95D0C0 != -1)
    {
      swift_once();
    }
  }

  v13 = sub_2588BCDF8();
  v15 = v14;
  v17 = v16 & 1;
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v20 & 1;
  *(a1 + 24) = v22;
  *(a1 + 32) = v7;
  *(a1 + 40) = v9;
  *(a1 + 48) = v11 & 1;
  *(a1 + 56) = v21;
  *(a1 + 64) = v13;
  *(a1 + 72) = v14;
  *(a1 + 80) = v16 & 1;
  *(a1 + 88) = v18;
  sub_2587A99B0(v2, v4, v20 & 1);

  sub_2587A99B0(v7, v9, v11 & 1);

  sub_2587A99B0(v13, v15, v17);

  sub_2587B1CF8(v13, v15, v17);

  sub_2587B1CF8(v7, v9, v11 & 1);

  sub_2587B1CF8(v2, v4, v20 & 1);
}

double sub_25881E550@<D0>(uint64_t a2@<X8>)
{
  v3 = sub_2588BD858();
  MEMORY[0x28223BE20](v3 - 8);
  sub_2588BD7E8();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v4 = qword_27F95DA88;
  v5 = sub_2588BBAC8();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = v4;
  sub_2588BBAB8();
  v7 = sub_2588BD8B8();
  v9 = v8;
  v10 = sub_2588BC6E8();
  v17 = 1;
  sub_25881E73C(v7, v9, v15);

  *&v16[55] = v15[3];
  *&v16[39] = v15[2];
  *&v16[23] = v15[1];
  *&v16[7] = v15[0];
  v11 = *v16;
  *(a2 + 33) = *&v16[16];
  result = *&v16[32];
  v13 = *&v16[48];
  *(a2 + 49) = *&v16[32];
  *(a2 + 65) = v13;
  v14 = v17;
  *a2 = v10;
  *(a2 + 8) = 0;
  *(a2 + 16) = v14;
  *(a2 + 80) = *&v16[63];
  *(a2 + 17) = v11;
  return result;
}

uint64_t sub_25881E73C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v35 = a1;
  v36 = a2;
  v31 = sub_25878F648();

  v4 = sub_2588BCDF8();
  v6 = v5;
  v32 = v7;
  v9 = v8;
  type metadata accessor for MedicalIDDataViewModel(0);
  sub_2587AFFC8(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2588BB9B8();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = sub_2588BE0A8();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588BE088();
  v18 = MedicalIDPregnancyViewModel.gestationalAgeDescription(startDate:format:)(v12, v17);
  v20 = v19;
  (*(v15 + 8))(v17, v14);
  sub_2588211B0(v12, sub_2587AFFC8);
  v21 = 4271950;
  if (v20)
  {
    v21 = v18;
  }

  v22 = 0xE300000000000000;
  if (v20)
  {
    v22 = v20;
  }

  v35 = v21;
  v36 = v22;
  v23 = sub_2588BCDF8();
  v25 = v24;
  v26 = v32 & 1;
  v33 = v32 & 1;
  LOBYTE(v35) = v32 & 1;
  v28 = v27 & 1;
  v34 = v27 & 1;
  *a3 = v4;
  *(a3 + 8) = v6;
  *(a3 + 16) = v26;
  *(a3 + 24) = v9;
  *(a3 + 32) = v23;
  *(a3 + 40) = v24;
  *(a3 + 48) = v27 & 1;
  *(a3 + 56) = v29;
  sub_2587A99B0(v4, v6, v26);

  sub_2587A99B0(v23, v25, v28);

  sub_2587B1CF8(v23, v25, v28);

  sub_2587B1CF8(v4, v6, v33);
}

uint64_t sub_25881E9F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  sub_258820394(0);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588202E0(0);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588202AC(0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v50 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v47 - v16;
  v18 = *(a1 + *(type metadata accessor for MedicalIDDataViewModel(0) + 20) + 16);
  v19 = *(v18 + 16);
  v52 = v17;
  if (v19)
  {
    KeyPath = swift_getKeyPath(byte_2588C3D58);
    v48 = &v47;
    v58[0] = v18;
    v21 = MEMORY[0x28223BE20](KeyPath);
    *(&v47 - 4) = v58;
    *(&v47 - 3) = v21;
    v45 = sub_25881EF9C;
    v46 = 0;
    sub_258820458(0);
    v49 = v9;
    sub_258820800(&qword_27F95F320, sub_258820458, sub_25882055C, MEMORY[0x277CE1290]);

    v22 = v52;
    sub_2588BCD48();

    sub_258820E1C(&qword_27F95F330, sub_258820394, MEMORY[0x277CDE5A0]);
    sub_2588BCF98();
    (*(v5 + 8))(v7, v4);
    v23 = v49;
    (*(v10 + 32))(v22, v12, v49);
    (*(v10 + 56))(v22, 0, 1, v23);
  }

  else
  {
    (*(v10 + 56))(v17, 1, 1, v9);
  }

  sub_2588BC688();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v24 = qword_27F95DA88;
  LOWORD(v46) = 256;
  v45 = 0;
  v25 = sub_2588BCDE8();
  v27 = v26;
  v47 = v26;
  v29 = v28;
  v49 = v30;
  v48 = sub_2588BCCC8();
  v31 = swift_getKeyPath("X$\n'");
  v32 = sub_2588BD1E8();
  v33 = swift_getKeyPath("0$\n'");
  LOBYTE(v58[0]) = v29 & 1;
  v34 = v52;
  v35 = v50;
  sub_258820F38(v52, v50, sub_2588202AC);
  v36 = v51;
  sub_258820F38(v35, v51, sub_2588202AC);
  sub_25882023C(0);
  v38 = (v36 + *(v37 + 48));
  v39 = v25;
  *&v54 = v25;
  *(&v54 + 1) = v27;
  LOBYTE(v55) = v29 & 1;
  *(&v55 + 1) = *v53;
  DWORD1(v55) = *&v53[3];
  v40 = v49;
  *(&v55 + 1) = v49;
  *&v56 = v31;
  v41 = v48;
  *(&v56 + 1) = v48;
  *&v57 = v33;
  *(&v57 + 1) = v32;
  v42 = v55;
  *v38 = v54;
  v38[1] = v42;
  v43 = v57;
  v38[2] = v56;
  v38[3] = v43;
  sub_2588200C4(&v54, v58, sub_258813FA8);
  sub_258821150(v34, sub_2588202AC);
  v58[0] = v39;
  v58[1] = v47;
  v59 = v29 & 1;
  *v60 = *v53;
  *&v60[3] = *&v53[3];
  v61 = v40;
  v62 = v31;
  v63 = v41;
  v64 = v33;
  v65 = v32;
  sub_2588211B0(v58, sub_258813FA8);
  return sub_258821150(v35, sub_2588202AC);
}

uint64_t sub_25881EF9C@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[5];
  v14 = a1[4];
  v2 = v14;
  v15 = v3;
  v5 = a1[7];
  v16 = a1[6];
  v4 = v16;
  v17 = v5;
  v6 = a1[1];
  v11[0] = *a1;
  v11[1] = v6;
  v8 = a1[3];
  v12 = a1[2];
  v7 = v12;
  v13 = v8;
  *a2 = v11[0];
  *(a2 + 16) = v6;
  *(a2 + 32) = v7;
  *(a2 + 48) = v8;
  *(a2 + 64) = v2;
  *(a2 + 80) = v3;
  *(a2 + 96) = v4;
  *(a2 + 112) = v5;
  *(a2 + 128) = 1;
  return sub_2587914E8(v11, &v10);
}

__n128 sub_25881F004@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  v4 = a1 + *(type metadata accessor for MedicalIDDataViewModel(0) + 36);
  v5 = v4 + *(type metadata accessor for MedicalIDBiometricsViewModel(0) + 20);
  if (*(v5 + 96) == 0 && !*(v5 + 88))
  {
    sub_2588BC688();
    if (qword_27F95D000 != -1)
    {
      swift_once();
    }

    v10 = qword_27F95DA88;
    v11 = sub_2588BCDE8();
    v19 = v12 & 1;
    v15[0] = v11;
    v15[1] = v13;
    v16 = v12 & 1;
    v17 = v14;
    v18 = 1;
  }

  else
  {
    sub_25881F1F4(a1, v15);
    v19 = 0;
    v18 = 0;
  }

  sub_258820674(0);
  sub_258820800(&qword_27F95F370, sub_258820674, sub_258820870, MEMORY[0x277CE0FB0]);
  sub_2588BC778();
  result = v20[3];
  v7 = v20[5];
  a2[4] = v20[4];
  a2[5] = v7;
  a2[6].n128_u8[0] = v21;
  v8 = v20[1];
  v9 = v20[2];
  *a2 = v20[0];
  a2[1] = v8;
  a2[2] = v9;
  a2[3] = result;
  return result;
}

uint64_t sub_25881F1F4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v54 = a2;
  v2 = a1 + *(type metadata accessor for MedicalIDDataViewModel(0) + 36);
  sub_258821310(0, &qword_27F95D480, &qword_27F95D488, 0x277CCAE20);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v52 - v6;
  sub_258821368(0, &qword_27F95D478, &qword_27F95D480, &qword_27F95D488, 0x277CCAE20);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v52 - v9;
  v11 = v2 + *(type metadata accessor for MedicalIDBiometricsViewModel(0) + 20);
  sub_2587F1E14(*(v11 + 96), v10);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    sub_2588213C4(v10, &qword_27F95D478, &qword_27F95D480, &qword_27F95D488, 0x277CCAE20);
    if (qword_27F95D0C0 != -1)
    {
      swift_once();
    }

    v12 = qword_27F9697D8;
    v13 = unk_27F9697E0;
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    v12 = sub_2587F21C4(v7);
    v13 = v14;
    (*(v5 + 8))(v7, v4);
  }

  v62 = v12;
  v63 = v13;
  sub_25878F648();
  v15 = sub_2588BCDF8();
  v56 = v11;
  v57 = v15;
  v53 = v16;
  v18 = v17;
  v55 = v19;
  v20 = *(v11 + 104);
  sub_258821310(0, &qword_27F95F428, &qword_27F95F430, 0x277CCAE28);
  v22 = v21;
  v52 = &v52;
  v23 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v25 = &v52 - v24;
  sub_258821368(0, &qword_27F95F438, &qword_27F95F428, &qword_27F95F430, 0x277CCAE28);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &v52 - v27;
  sub_25884D544(v20, &v52 - v27);
  if ((*(v23 + 48))(v28, 1, v22) == 1)
  {
    sub_2588213C4(v28, &qword_27F95F438, &qword_27F95F428, &qword_27F95F430, 0x277CCAE28);
    if (qword_27F95D0C0 != -1)
    {
      swift_once();
    }

    v29 = qword_27F9697D8;
    v30 = unk_27F9697E0;
  }

  else
  {
    (*(v23 + 32))(v25, v28, v22);
    type metadata accessor for MedicalIDWeightFormatter(0);
    sub_25878E130(0, &qword_27F95F430, 0x277CCAE28);
    v29 = sub_2588BDC68();
    v30 = v31;
    (*(v23 + 8))(v25, v22);
  }

  v62 = v29;
  v63 = v30;
  v32 = sub_2588BCDF8();
  v56 = v33;
  v35 = v34;
  v37 = v36;
  v38 = HKStringForBloodType();
  v39 = sub_2588BD8A8();
  v41 = v40;

  v62 = v39;
  v63 = v41;
  v42 = sub_2588BCDF8();
  v44 = v43;
  LOBYTE(v62) = v18 & 1;
  v35 &= 1u;
  v61 = v35;
  v60 = v18 & 1;
  v59 = v35;
  LOBYTE(v38) = v45 & 1;
  v58 = v45 & 1;
  v47 = v56;
  v46 = v57;
  v49 = v53;
  v48 = v54;
  *v54 = v57;
  v48[1] = v49;
  *(v48 + 16) = v18 & 1;
  v48[3] = v55;
  v48[4] = v32;
  v48[5] = v47;
  *(v48 + 48) = v35;
  v48[7] = v37;
  v48[8] = v42;
  v48[9] = v43;
  *(v48 + 80) = v45 & 1;
  v48[11] = v50;
  sub_2587A99B0(v46, v49, v18 & 1);

  sub_2587A99B0(v32, v47, v35);

  sub_2587A99B0(v42, v44, v38);

  sub_2587B1CF8(v42, v44, v38);

  sub_2587B1CF8(v32, v47, v61);

  sub_2587B1CF8(v57, v49, v62);
}

uint64_t sub_25881F850@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a1;
  v58 = a2;
  v52 = *(a1 + 16);
  sub_25881FD44(255, &qword_27F95D998, &qword_27F95D9A0, MEMORY[0x277CE0AE0]);
  v56 = sub_2588BC1E8();
  sub_25881FD44(255, &qword_27F95ECD0, &qword_27F95ECD8, MEMORY[0x277CE0F78]);
  v3 = sub_2588BC1E8();
  v57 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v51 = &v47[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v54 = &v47[-v6];
  sub_25881FDB0(0);
  v50 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v53 = &v47[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v11 = &v47[-v10];
  v49 = v2;
  v12 = v2[1];
  v62 = *v2;
  v63 = v12;
  sub_25878F648();

  v13 = sub_2588BCDF8();
  v15 = v14;
  v48 = v16;
  v18 = v17;
  sub_2587E6008(0);
  v20 = &v11[*(v19 + 36)];
  sub_2587E6068(0);
  v22 = *(v21 + 28);
  v23 = *MEMORY[0x277CE0B48];
  v24 = sub_2588BCDB8();
  v25 = *(v24 - 8);
  (*(v25 + 104))(&v20[v22], v23, v24);
  (*(v25 + 56))(&v20[v22], 0, 1, v24);
  *v20 = swift_getKeyPath(byte_2588C3CC0);
  *v11 = v13;
  *(v11 + 1) = v15;
  v26 = v48;
  LOBYTE(v23) = v48 & 1;
  v11[16] = v48 & 1;
  *(v11 + 3) = v18;
  sub_2587A99B0(v13, v15, v26 & 1);

  v27 = sub_2588BCCC8();
  KeyPath = swift_getKeyPath("X$\n'");
  sub_25881FDD0(0);
  v30 = &v11[*(v29 + 36)];
  *v30 = KeyPath;
  v30[1] = v27;
  v31 = sub_2588BD1E8();
  sub_2587B1CF8(v13, v15, v23);

  v32 = swift_getKeyPath("0$\n'");
  v33 = v49;
  v34 = v50;
  v35 = &v11[*(v50 + 36)];
  *v35 = v32;
  v35[1] = v31;
  v36 = *(v55 + 24);
  v37 = v51;
  sub_25886A430(*(v33 + 16), v52, v36);
  v38 = sub_25881FF34(&qword_27F95D9B8, &qword_27F95D998, &qword_27F95D9A0, MEMORY[0x277CE0AE0]);
  v61[4] = v36;
  v61[5] = v38;
  WitnessTable = swift_getWitnessTable();
  v40 = sub_25881FF34(&qword_27F95ECE8, &qword_27F95ECD0, &qword_27F95ECD8, MEMORY[0x277CE0F78]);
  v61[2] = WitnessTable;
  v61[3] = v40;
  v41 = swift_getWitnessTable();
  v42 = v54;
  sub_2587DCF7C();
  v43 = v57;
  v44 = *(v57 + 8);
  v44(v37, v3);
  v45 = v53;
  sub_2588200C4(v11, v53, sub_25881FDB0);
  v62 = v45;
  (*(v43 + 16))(v37, v42, v3);
  v63 = v37;
  v61[0] = v34;
  v61[1] = v3;
  v59 = sub_25881FF84();
  v60 = v41;
  sub_25881C7E0(&v62, 2uLL, v61);
  v44(v42, v3);
  sub_2588211B0(v11, sub_25881FDB0);
  v44(v37, v3);
  return sub_2588211B0(v45, sub_25881FDB0);
}

void sub_25881FD44(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_25882050C(255, a3, a4, MEMORY[0x277D83D88]);
    v5 = sub_2588BCA88();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_25881FDF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_25881FD44(255, &qword_27F95D998, &qword_27F95D9A0, MEMORY[0x277CE0AE0]);
    v4 = sub_2588BC1E8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_25881FE98(uint64_t a1)
{
  sub_2587E609C(0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2588200C4(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), sub_2587E609C);
  return sub_2588BC518();
}

uint64_t sub_25881FF34(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_25881FD44(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25881FF84()
{
  result = qword_27F95F2C8;
  if (!qword_27F95F2C8)
  {
    sub_25881FDB0(255);
    sub_258820024();
    sub_25881FF34(&qword_27F95ECE8, &qword_27F95ECD0, &qword_27F95ECD8, MEMORY[0x277CE0F78]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95F2C8);
  }

  return result;
}

unint64_t sub_258820024()
{
  result = qword_27F95F2D0;
  if (!qword_27F95F2D0)
  {
    sub_25881FDD0(255);
    sub_2587E643C();
    sub_25881FF34(&qword_27F95D9B8, &qword_27F95D998, &qword_27F95D9A0, MEMORY[0x277CE0AE0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95F2D0);
  }

  return result;
}

uint64_t sub_2588200C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_258820174(uint64_t a1)
{
  if (!qword_27F95F2E8)
  {
    sub_258820208(255);
    v3 = v2;
    v4 = sub_258820E1C(&qword_27F95F338, sub_258820208, MEMORY[0x277CE14C0]);
    v6 = type metadata accessor for NanoGridItemCell(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_27F95F2E8);
    }
  }
}

void sub_25882023C(uint64_t a1)
{
  if (!qword_27F95F2F8)
  {
    sub_2588202AC(255);
    sub_258813FA8(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F95F2F8);
    }
  }
}

void sub_2588202E0(uint64_t a1)
{
  if (!qword_27F95F308)
  {
    sub_258820394(255);
    sub_258820E1C(&qword_27F95F330, sub_258820394, MEMORY[0x277CDE5A0]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F95F308);
    }
  }
}

void sub_258820394(uint64_t a1)
{
  if (!qword_27F95F310)
  {
    sub_258820458(255);
    sub_258820800(&qword_27F95F320, sub_258820458, sub_25882055C, MEMORY[0x277CE1290]);
    v1 = sub_2588BCD58();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95F310);
    }
  }
}

void sub_258820458(uint64_t a1)
{
  if (!qword_27F95F318)
  {
    sub_25882050C(255, &qword_27F95E110, &type metadata for MedicalIDEmergencyContact, MEMORY[0x277D83940]);
    sub_2587E7F94();
    sub_258791374();
    v1 = sub_2588BD4D8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95F318);
    }
  }
}

void sub_25882050C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_25882055C()
{
  result = qword_27F95F328;
  if (!qword_27F95F328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95F328);
  }

  return result;
}

void sub_2588205B0(uint64_t a1)
{
  if (!qword_27F95F340)
  {
    sub_258820614(255);
    v3 = v2;
    v4 = sub_25882073C();
    v6 = type metadata accessor for NanoGridItemCell(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_27F95F340);
    }
  }
}

void sub_258820614(uint64_t a1)
{
  if (!qword_27F95F348)
  {
    sub_258820674(255);
    v1 = sub_2588BC788();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95F348);
    }
  }
}

void sub_2588206DC()
{
  if (!qword_27F95F360)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F95F360);
    }
  }
}

unint64_t sub_25882073C()
{
  result = qword_27F95F368;
  if (!qword_27F95F368)
  {
    sub_258820614(255);
    sub_258820800(&qword_27F95F370, sub_258820674, sub_258820870, MEMORY[0x277CE0FB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95F368);
  }

  return result;
}

uint64_t sub_258820800(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void), uint64_t a4)
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

void sub_2588208A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!qword_27F95F380)
  {
    sub_2588163F8(255, a2, a3, a4);
    v4 = sub_2588BC788();
    if (!v5)
    {
      atomic_store(v4, &qword_27F95F380);
    }
  }
}

void sub_258820A0C(uint64_t a1)
{
  if (!qword_27F95F3B8)
  {
    sub_258820A74(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F95F3B8);
    }
  }
}

void sub_258820A94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_25881FD44(255, &qword_27F95ECD0, &qword_27F95ECD8, MEMORY[0x277CE0F78]);
    v4 = sub_2588BC1E8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_258820B38(uint64_t a1)
{
  if (!qword_27F95F3D0)
  {
    sub_2587A9ABC(255);
    v3 = v2;
    v4 = sub_258820E1C(&qword_27F95D440, sub_2587A9ABC, MEMORY[0x277CE1198]);
    v6 = type metadata accessor for NanoGridItemCell(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_27F95F3D0);
    }
  }
}

unint64_t sub_258820C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = qword_27F95F3F8;
  if (!qword_27F95F3F8)
  {
    sub_2588208A4(255, a2, a3, a4);
    sub_258820E1C(&qword_27F95F3D8, sub_2588163F8, &unk_2588C3C6C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95F3F8);
  }

  return result;
}

uint64_t sub_258820E1C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_258820EAC(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
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

uint64_t sub_258820F38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_258820FC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_25882102C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  sub_25882050C(0, &qword_27F95E110, &type metadata for MedicalIDEmergencyContact, MEMORY[0x277D83940]);
  sub_2587E7F94();
  sub_258791374();
  sub_25882055C();

  return sub_2588BD4B8();
}

uint64_t sub_258821150(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2588211B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 sub_258821210@<Q0>(_OWORD *a1@<X0>, void (*a2)(__int128 *__return_ptr, _OWORD *)@<X1>, uint64_t a3@<X8>)
{
  v4 = a1[5];
  v22[4] = a1[4];
  v22[5] = v4;
  v5 = a1[7];
  v22[6] = a1[6];
  v22[7] = v5;
  v6 = a1[1];
  v22[0] = *a1;
  v22[1] = v6;
  v7 = a1[3];
  v22[2] = a1[2];
  v22[3] = v7;
  a2(&v13, v22);
  v29 = v19;
  v30 = v20;
  v25 = v15;
  v26 = v16;
  v27 = v17;
  v28 = v18;
  v23 = v13;
  v24 = v14;
  v32[6] = v19;
  v32[7] = v20;
  v32[2] = v15;
  v32[3] = v16;
  v32[4] = v17;
  v32[5] = v18;
  v31 = v21;
  v33 = v21;
  v32[0] = v13;
  v32[1] = v14;
  sub_2588144B4(&v23, &v12);
  sub_2588145E4(v32);
  v8 = v30;
  *(a3 + 96) = v29;
  *(a3 + 112) = v8;
  *(a3 + 128) = v31;
  v9 = v26;
  *(a3 + 32) = v25;
  *(a3 + 48) = v9;
  v10 = v28;
  *(a3 + 64) = v27;
  *(a3 + 80) = v10;
  result = v24;
  *a3 = v23;
  *(a3 + 16) = result;
  return result;
}

void sub_258821310(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_25878E130(255, a3, a4);
    v5 = sub_2588BB6D8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_258821368(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, void *a5)
{
  if (!*a2)
  {
    sub_258821310(255, a3, a4, a5);
    v6 = sub_2588BDCE8();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_2588213C4(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, void *a5)
{
  sub_258821368(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_258821468(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void *NanoMedicalIDMainView.init(healthStore:medicalIDData:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_2588BD2B8();
  *(a3 + 8) = v8;
  *(a3 + 16) = v9;
  sub_2588BD2B8();
  *(a3 + 24) = v8;
  *(a3 + 32) = v9;
  v6 = [objc_opt_self() standardConfiguration];
  type metadata accessor for MedicalIDModelProvider();
  swift_allocObject();
  result = sub_2587B31A0(a1, a2, v6);
  *a3 = result;
  return result;
}

uint64_t NanoMedicalIDMainView.body.getter@<X0>(void *a1@<X8>)
{
  sub_258821EDC(0);
  v4 = v3;
  MEMORY[0x28223BE20](v3);
  v61 = (&v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_258821F78(0);
  v7 = v6;
  v64 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v63 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MedicalIDDataViewModel(0);
  MEMORY[0x28223BE20](v9 - 8);
  v62 = (&v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_258822A90(0, &qword_27F95F498, sub_2587DB1F0, sub_258821F78, MEMORY[0x277CE0330]);
  v65 = v11;
  MEMORY[0x28223BE20](v11);
  v66 = &v56 - v12;
  sub_2587DB1F0();
  v67 = v13;
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2587B63B8(0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v1[1];
  v73 = *v1;
  *v74 = v20;
  *&v74[16] = *(v1 + 4);
  v21 = v73;
  v22 = *(v73 + 56);
  swift_getKeyPath(byte_2588C3D70);
  *&v68 = v22;
  sub_258822824(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager, &protocol conformance descriptor for MedicalIDDataManager);
  sub_2588BBB98();

  v23 = OBJC_IVAR____TtC11MedicalIDUI20MedicalIDDataManager__medicalIDData;
  swift_beginAccess();
  sub_258822B14(v22 + v23, v19, sub_2587B63B8);
  v24 = type metadata accessor for MedicalIDData(0);
  if ((*(*(v24 - 8) + 48))(v19, 1, v24) == 1)
  {
    sub_2588BBFC8();
    v25 = v67;
    (*(v14 + 16))(v66, v16, v67);
    swift_storeEnumTagMultiPayload();
    sub_258822824(&qword_27F95E1C0, sub_2587DB1F0, MEMORY[0x277CDD7F8]);
    sub_258822790(255, &qword_27F95F468, MEMORY[0x277D83940]);
    v27 = v26;
    v28 = sub_258822038();
    v29 = sub_2588221D4();
    *&v68 = v4;
    *(&v68 + 1) = v27;
    v69 = v28;
    v70 = v29;
    swift_getOpaqueTypeConformance2();
    sub_2588BC778();
    return (*(v14 + 8))(v16, v25);
  }

  else
  {
    v31 = sub_2588BBB48();
    v56 = &v56;
    v32 = *(v31 - 8);
    MEMORY[0x28223BE20](v31);
    v34 = &v56 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_2588BBB18();
    v35 = sub_2588BBAC8();
    v57 = v4;
    v36 = v35;
    v60 = a1;
    v37 = *(v35 - 8);
    v58 = v7;
    v38 = v37;
    MEMORY[0x28223BE20](v35);
    v40 = &v56 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_2588BBA98();
    v59 = v19;
    v41 = v62;
    sub_2587B4D50(v34, v40, v62);
    (*(v38 + 8))(v40, v36);
    (*(v32 + 8))(v34, v31);
    v42 = v61;
    v43 = v41;
    sub_258822260(&v73, v41, v61);
    sub_258822790(0, &qword_27F95F4A0, MEMORY[0x277D84560]);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_2588BFF50;
    v68 = *&v74[8];
    sub_258822790(0, &qword_27F95DAF8, MEMORY[0x277CE10B8]);
    sub_2588BD2C8();
    *(v44 + 32) = v72[0];
    v45 = *(v21 + 56);
    swift_beginAccess();
    *(v44 + 33) = [*(v45 + 16) isEmpty];
    v71 = v44;
    v46 = swift_allocObject();
    v47 = *v74;
    *(v46 + 16) = v73;
    *(v46 + 32) = v47;
    *(v46 + 48) = *&v74[16];
    sub_2588227EC(&v73, &v68);
    sub_258822790(0, &qword_27F95F468, MEMORY[0x277D83940]);
    v49 = v48;
    v50 = sub_258822038();
    v51 = sub_2588221D4();
    v52 = v63;
    v53 = v57;
    sub_2588BD118();

    sub_258822B7C(v42, sub_258821EDC);
    v54 = v64;
    v55 = v58;
    (*(v64 + 16))(v66, v52, v58);
    swift_storeEnumTagMultiPayload();
    sub_258822824(&qword_27F95E1C0, sub_2587DB1F0, MEMORY[0x277CDD7F8]);
    *&v68 = v53;
    *(&v68 + 1) = v49;
    v69 = v50;
    v70 = v51;
    swift_getOpaqueTypeConformance2();
    sub_2588BC778();
    (*(v54 + 8))(v52, v55);
    sub_258822B7C(v43, type metadata accessor for MedicalIDDataViewModel);
    return sub_258822B7C(v59, sub_2587B63B8);
  }
}

void sub_258821EDC(uint64_t a1)
{
  if (!qword_27F95F450)
  {
    sub_258822A90(255, &qword_27F95F458, type metadata accessor for NanoSetupMedicalIDView, type metadata accessor for NanoMedicalIDDataView, MEMORY[0x277CE0338]);
    v1 = sub_2588BD238();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95F450);
    }
  }
}

void sub_258821F78(uint64_t a1)
{
  if (!qword_27F95F460)
  {
    sub_258821EDC(255);
    sub_258822790(255, &qword_27F95F468, MEMORY[0x277D83940]);
    sub_258822038();
    sub_2588221D4();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F95F460);
    }
  }
}

unint64_t sub_258822038()
{
  result = qword_27F95F470;
  if (!qword_27F95F470)
  {
    sub_258821EDC(255);
    sub_2588220B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95F470);
  }

  return result;
}

unint64_t sub_2588220B0()
{
  result = qword_27F95F478;
  if (!qword_27F95F478)
  {
    sub_258822A90(255, &qword_27F95F458, type metadata accessor for NanoSetupMedicalIDView, type metadata accessor for NanoMedicalIDDataView, MEMORY[0x277CE0338]);
    sub_258822824(&qword_27F95F480, type metadata accessor for NanoSetupMedicalIDView, &unk_2588C3E68);
    sub_258822824(&qword_27F95F488, type metadata accessor for NanoMedicalIDDataView, &unk_2588C3868);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95F478);
  }

  return result;
}

unint64_t sub_2588221D4()
{
  result = qword_27F95F490;
  if (!qword_27F95F490)
  {
    sub_258822790(255, &qword_27F95F468, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95F490);
  }

  return result;
}

uint64_t sub_258822260@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v25[1] = a3;
  v5 = type metadata accessor for NanoMedicalIDDataView(0);
  MEMORY[0x28223BE20](v5);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258822A90(0, &qword_27F95F4B8, type metadata accessor for NanoSetupMedicalIDView, type metadata accessor for NanoMedicalIDDataView, MEMORY[0x277CE0330]);
  MEMORY[0x28223BE20](v8);
  v10 = v25 - v9;
  v11 = type metadata accessor for NanoSetupMedicalIDView(0);
  MEMORY[0x28223BE20](v11);
  v13 = (v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = *(a1 + 1);
  sub_258822790(0, &qword_27F95DAF8, MEMORY[0x277CE10B8]);
  sub_2588BD2C8();
  if (v28)
  {
    sub_258822B14(a2, v7, type metadata accessor for MedicalIDDataViewModel);
    v14 = *a1;
    v28 = *(a1 + 3);

    sub_2588BD2E8();
    v15 = v26;
    *&v7[*(v5 + 20)] = v14;
    v16 = v27;
    v17 = &v7[*(v5 + 24)];
    *v17 = v15;
    v17[16] = v16;
    sub_258822B14(v7, v10, type metadata accessor for NanoMedicalIDDataView);
    swift_storeEnumTagMultiPayload();
    sub_258822824(&qword_27F95F480, type metadata accessor for NanoSetupMedicalIDView, &unk_2588C3E68);
    sub_258822824(&qword_27F95F488, type metadata accessor for NanoMedicalIDDataView, &unk_2588C3868);
    sub_2588BC778();
    v18 = type metadata accessor for NanoMedicalIDDataView;
    v19 = v7;
  }

  else
  {
    v20 = *a1;
    sub_258822B14(a2, v13 + *(v11 + 20), type metadata accessor for MedicalIDDataViewModel);
    v28 = *(a1 + 3);

    sub_2588BD2E8();
    v21 = v26;
    v22 = v27;
    *v13 = v20;
    v23 = v13 + *(v11 + 24);
    *v23 = v21;
    v23[16] = v22;
    sub_258822B14(v13, v10, type metadata accessor for NanoSetupMedicalIDView);
    swift_storeEnumTagMultiPayload();
    sub_258822824(&qword_27F95F480, type metadata accessor for NanoSetupMedicalIDView, &unk_2588C3E68);
    sub_258822824(&qword_27F95F488, type metadata accessor for NanoMedicalIDDataView, &unk_2588C3868);
    sub_2588BC778();
    v18 = type metadata accessor for NanoSetupMedicalIDView;
    v19 = v13;
  }

  return sub_258822B7C(v19, v18);
}

uint64_t sub_258822688(uint64_t a1)
{
  v1 = *(*a1 + 56);
  swift_beginAccess();
  if (![*(v1 + 16) isEmpty] || (sub_258822790(0, &qword_27F95DAF8, MEMORY[0x277CE10B8]), sub_2588BD2C8(), (v3 & 1) != 0))
  {
    sub_258822790(0, &qword_27F95DAF8, MEMORY[0x277CE10B8]);
  }

  return sub_2588BD2D8();
}

void sub_258822790(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D839B0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_258822824(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_258822888(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_2588228D0(uint64_t result, int a2, int a3)
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

unint64_t sub_258822928()
{
  result = qword_27F95F4A8;
  if (!qword_27F95F4A8)
  {
    sub_258822A90(255, &qword_27F95F4B0, sub_2587DB1F0, sub_258821F78, MEMORY[0x277CE0338]);
    sub_258822824(&qword_27F95E1C0, sub_2587DB1F0, MEMORY[0x277CDD7F8]);
    sub_258821EDC(255);
    sub_258822790(255, &qword_27F95F468, MEMORY[0x277D83940]);
    sub_258822038();
    sub_2588221D4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95F4A8);
  }

  return result;
}

void sub_258822A90(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_258822B14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258822B7C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for NanoSetupMedicalIDView(uint64_t a1)
{
  result = qword_27F95F4C0;
  if (!qword_27F95F4C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258822C50(uint64_t a1)
{
  type metadata accessor for MedicalIDModelProvider();
  if (v1 <= 0x3F)
  {
    type metadata accessor for MedicalIDDataViewModel(319);
    if (v2 <= 0x3F)
    {
      sub_258823BD0(319, &qword_27F95DAF0, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

double sub_258822D2C@<D0>(uint64_t *a1@<X0>, uint64_t a8@<X8>)
{
  *a8 = sub_2588BC6E8();
  *(a8 + 8) = 0x4024000000000000;
  *(a8 + 16) = 0;
  sub_258823FE4(0);
  sub_258822DA8(a1, a8 + *(v10 + 44));
  LOBYTE(a1) = sub_2588BCB88();
  sub_2588238BC(0);
  v12 = a8 + *(v11 + 36);
  *v12 = a1;
  result = 20.0;
  *(v12 + 8) = xmmword_2588C3E40;
  *(v12 + 24) = xmmword_2588C3E40;
  *(v12 + 40) = 0;
  return result;
}

uint64_t sub_258822DA8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a1;
  sub_258823CE4(0, &qword_27F95F518, sub_2587DC47C, sub_2587DC2B4, MEMORY[0x277CE0338]);
  v50 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v43 - v4;
  sub_258823C20(0);
  v48 = v6;
  v49 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v62 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v61 = &v43 - v9;
  sub_2587E6128(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_2588BD258();
  v13 = sub_2588BCC18();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v60 = sub_2588BCC38();
  sub_2588241C4(v12, sub_2587E6128);
  KeyPath = swift_getKeyPath(byte_2588C3EB8);
  v59 = sub_2588BD168();
  v58 = sub_2588BD1B8();
  sub_2588BC688();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v14 = qword_27F95DA88;
  v57 = sub_2588BCDE8();
  v56 = v15;
  v17 = v16;
  v55 = v18;
  v53 = swift_getKeyPath(byte_2588C3EE8);
  v54 = sub_2588BCCD8();
  v19 = swift_getKeyPath(byte_2588C3EB8);
  v47 = v19;
  v20 = v17 & 1;
  LOBYTE(v72[0]) = v17 & 1;
  v46 = v17 & 1;
  sub_2588BC688();
  v45 = sub_2588BCDE8();
  v22 = v21;
  v43 = v21;
  v24 = v23;
  v44 = v25;
  v52 = swift_getKeyPath(byte_2588C3EE8);
  sub_2588234EC(v51, v5);
  sub_258823DE8();
  v26 = v61;
  sub_2588BC118();
  v65 = v24 & 1;
  v27 = v49;
  v28 = *(v49 + 16);
  v29 = v62;
  v30 = v26;
  v31 = v48;
  v28(v62, v30, v48);
  v32 = KeyPath;
  *a2 = v64;
  *(a2 + 8) = v32;
  v33 = v59;
  *(a2 + 16) = v60;
  *(a2 + 24) = v33;
  *(a2 + 32) = v58;
  *&v68 = v57;
  *(&v68 + 1) = v56;
  LOBYTE(v69) = v20;
  *(&v69 + 1) = *v67;
  DWORD1(v69) = *&v67[3];
  *(&v69 + 1) = v55;
  *&v70 = v53;
  BYTE8(v70) = 1;
  HIDWORD(v70) = *&v66[3];
  *(&v70 + 9) = *v66;
  *&v71 = v19;
  *(&v71 + 1) = v54;
  v34 = v68;
  v35 = v69;
  v36 = v70;
  *(a2 + 88) = v71;
  *(a2 + 72) = v36;
  *(a2 + 56) = v35;
  *(a2 + 40) = v34;
  LOBYTE(v19) = v65;
  v37 = v45;
  *(a2 + 104) = v45;
  *(a2 + 112) = v22;
  *(a2 + 120) = v19;
  v38 = v52;
  *(a2 + 128) = v44;
  *(a2 + 136) = v38;
  *(a2 + 144) = 1;
  sub_2588239E4(0);
  v28((a2 + *(v39 + 80)), v29, v31);

  sub_2588240F8(&v68, v72, sub_258823B88);
  v40 = v43;
  sub_2587A99B0(v37, v43, v19);
  v41 = *(v27 + 8);

  v41(v61, v31);
  v41(v62, v31);
  sub_2587B1CF8(v37, v40, v65);

  v72[0] = v57;
  v72[1] = v56;
  v73 = v46;
  *v74 = *v67;
  *&v74[3] = *&v67[3];
  v75 = v55;
  v76 = v53;
  v77 = 1;
  *v78 = *v66;
  *&v78[3] = *&v66[3];
  v79 = v47;
  v80 = v54;
  sub_2588241C4(v72, sub_258823B88);
}

uint64_t sub_2588234EC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for NanoMedicalIDEditView(0);
  v5 = (v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for NanoSetupMedicalIDView(0);
  sub_2588240F8(a1 + *(v8 + 20), v7, type metadata accessor for MedicalIDDataViewModel);
  v9 = *a1;
  v10 = a1 + *(v8 + 24);
  v11 = *v10;
  v12 = *(v10 + 1);
  LOBYTE(v10) = v10[16];
  v25 = v11;
  v26 = v12;
  v27 = v10;
  sub_258823BD0(0, &qword_27F95DAF0, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);

  sub_2588BD458();
  v13 = v23[0];
  v14 = v23[1];
  v15 = v24;
  *&v7[v5[8]] = swift_getKeyPath("h#\n'");
  sub_258824160(0, &qword_27F95EBC0, sub_258804A60, MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for MedicalIDDataManager(0);
  sub_258824224(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager, &protocol conformance descriptor for MedicalIDDataManager);
  v16 = sub_2588BBF58();
  *&v7[v5[7]] = v9;
  v17 = &v7[v5[9]];
  *v17 = v16;
  v17[8] = v18 & 1;
  v19 = &v7[v5[10]];
  LOBYTE(v23[0]) = 0;
  sub_2588BD2B8();
  v20 = v26;
  *v19 = v25;
  *(v19 + 1) = v20;
  v21 = &v7[v5[11]];
  *v21 = v13;
  *(v21 + 1) = v14;
  v21[16] = v15;
  sub_2587D850C(0, v9, a2);
  return sub_2588241C4(v7, type metadata accessor for NanoMedicalIDEditView);
}

uint64_t sub_258823754@<X0>(uint64_t a1@<X8>)
{
  sub_2588BC688();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v2 = qword_27F95DA88;
  result = sub_2588BCDE8();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_258823838(uint64_t a1)
{
  sub_2588BCB68();
  sub_2588238BC(0);
  sub_258823F34();
  return sub_2588BBEE8();
}

void sub_2588238BC(uint64_t a1)
{
  if (!qword_27F95F4D0)
  {
    sub_25882391C(255);
    v1 = sub_2588BC1E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95F4D0);
    }
  }
}

void sub_25882391C(uint64_t a1)
{
  if (!qword_27F95F4D8)
  {
    sub_2588239B0(255);
    sub_258824224(&qword_27F95F528, sub_2588239B0, MEMORY[0x277CE14C0]);
    v1 = sub_2588BD408();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95F4D8);
    }
  }
}

void sub_2588239E4(uint64_t a1)
{
  if (!qword_27F95F4E8)
  {
    sub_258823CE4(255, &qword_27F95F4F0, sub_258823ABC, sub_258823B1C, MEMORY[0x277CDFAB8]);
    sub_258823B88(255);
    sub_2587E5DE8(255);
    sub_258823C20(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_27F95F4E8);
    }
  }
}

void sub_258823ABC(uint64_t a1)
{
  if (!qword_27F95F4F8)
  {
    sub_2587B1964(255);
    v1 = sub_2588BC1E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95F4F8);
    }
  }
}

void sub_258823B1C()
{
  if (!qword_27F95F500)
  {
    v0 = sub_2588BC948();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95F500);
    }
  }
}

void sub_258823BD0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_258823C20(uint64_t a1)
{
  if (!qword_27F95F510)
  {
    sub_258823CE4(255, &qword_27F95F518, sub_2587DC47C, sub_2587DC2B4, MEMORY[0x277CE0338]);
    sub_258823DE8();
    v1 = sub_2588BC128();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95F510);
    }
  }
}

void sub_258823CE4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_258823D68()
{
  result = qword_27F95E2E0;
  if (!qword_27F95E2E0)
  {
    sub_2587DC1A4(255);
    sub_2587DC3CC();
    sub_2587A8934();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E2E0);
  }

  return result;
}

unint64_t sub_258823DE8()
{
  result = qword_27F95F520;
  if (!qword_27F95F520)
  {
    sub_258823CE4(255, &qword_27F95F518, sub_2587DC47C, sub_2587DC2B4, MEMORY[0x277CE0338]);
    sub_2587DC504();
    sub_2587DC1A4(255);
    type metadata accessor for MedicalIDDataManager(255);
    sub_258823D68();
    sub_258824224(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager, &protocol conformance descriptor for MedicalIDDataManager);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95F520);
  }

  return result;
}

unint64_t sub_258823F34()
{
  result = qword_27F95F530;
  if (!qword_27F95F530)
  {
    sub_2588238BC(255);
    sub_258824224(&qword_27F95F538, sub_25882391C, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95F530);
  }

  return result;
}

void sub_258823FE4(uint64_t a1)
{
  if (!qword_27F95F540)
  {
    sub_2588239B0(255);
    v1 = sub_2588BC0B8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95F540);
    }
  }
}

uint64_t sub_25882404C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2588BC488();
  *a1 = result;
  return result;
}

uint64_t sub_2588240A4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2588BC458();
  *a1 = result;
  return result;
}

uint64_t sub_2588240F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_258824160(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2588241C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_258824224(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_25882426C(uint64_t a1)
{
  if (!qword_27F95F550)
  {
    sub_2588238BC(255);
    sub_258823F34();
    v1 = sub_2588BBED8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95F550);
    }
  }
}

uint64_t PregnancySampleDataProvider.__allocating_init(healthStore:)(void *a1)
{
  v2 = v1;
  sub_258825320(0, &qword_27F95D830, MEMORY[0x277D85720]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = v2;
  v8 = swift_allocObject();
  v9 = OBJC_IVAR____TtC11MedicalIDUI27PregnancySampleDataProvider__ongoingEstimatedDueDate;
  v10 = sub_2588BB9B8();
  (*(*(v10 - 8) + 56))(v8 + v9, 1, 1, v10);
  v11 = a1;
  sub_2588BBBC8();
  *(v8 + 16) = &unk_2588C3F58;
  *(v8 + 24) = v7;
  v12 = sub_2588BDAA8();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  sub_2588BDA78();

  v13 = sub_2588BDA68();
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = v8;
  sub_2587ABD24(0, 0, v6, &unk_2588C3F68, v14);

  return v8;
}

uint64_t PregnancySampleDataProvider.ongoingEstimatedDueDate.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath(" #\n'");
  v5 = v1;
  sub_258825208();
  sub_2588BBB98();

  v3 = OBJC_IVAR____TtC11MedicalIDUI27PregnancySampleDataProvider__ongoingEstimatedDueDate;
  swift_beginAccess();
  return sub_2588252AC(v5 + v3, a1);
}

uint64_t PregnancySampleDataProvider.ongoingEstimatedDueDate.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11MedicalIDUI27PregnancySampleDataProvider__ongoingEstimatedDueDate;
  swift_beginAccess();
  sub_258825320(0, &qword_27F95D880, MEMORY[0x28220BFA0]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  sub_2588252AC(v1 + v3, v10 - v5);
  v7 = sub_258825E88(v6, a1);
  sub_258826118(v6);
  if (v7)
  {
    KeyPath = swift_getKeyPath(" #\n'");
    MEMORY[0x28223BE20](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_258825208();
    sub_2588BBB88();
  }

  else
  {
    swift_beginAccess();
    sub_258826184(a1, v1 + v3);
    swift_endAccess();
  }

  return sub_258826118(a1);
}

uint64_t sub_2588246FC(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC11MedicalIDUI27PregnancySampleDataProvider__ongoingEstimatedDueDate;
  swift_beginAccess();
  sub_258826184(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t (*PregnancySampleDataProvider.ongoingEstimatedDueDate.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath(" #\n'");
  v4[4] = OBJC_IVAR____TtC11MedicalIDUI27PregnancySampleDataProvider___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_258825208();
  sub_2588BBB98();

  *v4 = v1;
  swift_getKeyPath(" #\n'");
  sub_2588BBBB8();

  swift_beginAccess();
  return sub_258824880;
}

void sub_258824880(void *a1)
{
  v1 = *a1;
  swift_endAccess();
  *v1 = v1[3];
  swift_getKeyPath(" #\n'");
  sub_2588BBBA8();

  free(v1);
}

uint64_t sub_258824904(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2588249AC;

  return sub_258826214(a1);
}

uint64_t sub_2588249AC(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = *(v4 + 8);

    return v7(a1);
  }
}

uint64_t static PregnancySampleDataProvider.defaultPregnancyModelProvider(with:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_258824B84;

  return sub_258826214(a1);
}

uint64_t sub_258824B84(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t PregnancySampleDataProvider.__allocating_init(modelProvider:)(uint64_t a1, uint64_t a2)
{
  sub_258825320(0, &qword_27F95D830, MEMORY[0x277D85720]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = swift_allocObject();
  v8 = OBJC_IVAR____TtC11MedicalIDUI27PregnancySampleDataProvider__ongoingEstimatedDueDate;
  v9 = sub_2588BB9B8();
  (*(*(v9 - 8) + 56))(v7 + v8, 1, 1, v9);
  sub_2588BBBC8();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v10 = sub_2588BDAA8();
  (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
  sub_2588BDA78();

  v11 = sub_2588BDA68();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = v7;
  sub_2587ABD24(0, 0, v6, &unk_2588C3FA8, v12);

  return v7;
}

uint64_t PregnancySampleDataProvider.init(modelProvider:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_258825320(0, &qword_27F95D830, MEMORY[0x277D85720]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - v7;
  v9 = OBJC_IVAR____TtC11MedicalIDUI27PregnancySampleDataProvider__ongoingEstimatedDueDate;
  v10 = sub_2588BB9B8();
  (*(*(v10 - 8) + 56))(v3 + v9, 1, 1, v10);
  sub_2588BBBC8();
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  v11 = sub_2588BDAA8();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  sub_2588BDA78();

  v12 = sub_2588BDA68();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = v3;
  sub_2587ABD24(0, 0, v8, &unk_2588C3FB0, v13);

  return v3;
}

uint64_t sub_258825010()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2587B672C;

  return sub_258824904(v2);
}

uint64_t sub_2588250A8()
{
  v0[2] = sub_2588BDA78();
  v0[3] = sub_2588BDA68();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_2587AB3F4;

  return PregnancySampleDataProvider.fetchData()();
}

uint64_t sub_258825154()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2587AEAC8;

  return sub_2588250A8();
}

unint64_t sub_258825208()
{
  result = qword_27F95F568;
  if (!qword_27F95F568)
  {
    type metadata accessor for PregnancySampleDataProvider(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95F568);
  }

  return result;
}

uint64_t type metadata accessor for PregnancySampleDataProvider(uint64_t a1)
{
  result = qword_27F95F570;
  if (!qword_27F95F570)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2588252AC(uint64_t a1, uint64_t a2)
{
  sub_258825320(0, &qword_27F95D880, MEMORY[0x28220BFA0]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_258825320(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2588BDCE8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t PregnancySampleDataProvider.fetchData()()
{
  v1[3] = v0;
  v1[4] = *v0;
  sub_2588BDA78();
  v1[5] = sub_2588BDA68();
  v3 = sub_2588BDA28();
  v1[6] = v3;
  v1[7] = v2;

  return MEMORY[0x2822009F8](sub_258825434, v3, v2);
}

uint64_t sub_258825434()
{
  v3 = (*(*(v0 + 24) + 16) + **(*(v0 + 24) + 16));
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_258825520;

  return v3();
}

uint64_t sub_258825520(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 72) = a1;
  *(v4 + 80) = v1;

  v5 = *(v3 + 56);
  v6 = *(v3 + 48);
  if (v1)
  {
    v7 = sub_2588257C8;
  }

  else
  {
    v7 = sub_258825664;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_258825664()
{
  v1 = *(v0 + 72);

  if (v1)
  {
    v2 = *(v0 + 72);
    if ([v2 state] == 1)
    {
      v3 = [v2 estimatedDueDate];
      sub_258825320(0, &qword_27F95D880, MEMORY[0x28220BFA0]);
      v4 = swift_task_alloc();
      if (v3)
      {
        sub_2588BB988();

        v5 = 0;
      }

      else
      {
        v5 = 1;
      }

      v6 = sub_2588BB9B8();
      (*(*(v6 - 8) + 56))(v4, v5, 1, v6);
      PregnancySampleDataProvider.ongoingEstimatedDueDate.setter(v4);
    }

    else
    {
    }
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_2588257C8()
{
  v20 = v0;

  if (qword_27F95D170 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = sub_2588BBC98();
  __swift_project_value_buffer(v2, qword_27F969938);
  v3 = v1;
  v4 = sub_2588BBC78();
  v5 = sub_2588BDBD8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[10];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315650;
    v10 = sub_2588BE0E8();
    v12 = sub_258790224(v10, v11, &v19);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_258790224(0x7461446863746566, 0xEB00000000292861, &v19);
    *(v8 + 22) = 2080;
    v0[2] = v7;
    v13 = v7;
    sub_25878D8F4();
    v14 = sub_2588BD8D8();
    v16 = sub_258790224(v14, v15, &v19);

    *(v8 + 24) = v16;
    _os_log_impl(&dword_25878B000, v4, v5, "%s %s Error: %s", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x259C8DBE0](v9, -1, -1);
    MEMORY[0x259C8DBE0](v8, -1, -1);
  }

  else
  {
  }

  v17 = v0[1];

  return v17();
}

void sub_258825A04(uint64_t a1, void *a2)
{
  sub_2588267E8(0);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  (*(v6 + 16))(aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  v8 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  (*(v6 + 32))(v9 + v8, aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v10 = objc_allocWithZone(MEMORY[0x277CCD5B0]);
  aBlock[4] = sub_258826858;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_258825DE8;
  aBlock[3] = &block_descriptor_2;
  v11 = _Block_copy(aBlock);
  v12 = a2;
  v13 = [v10 initWithUpdateHandler_];
  _Block_release(v11);

  [v12 executeQuery_];
}

id sub_258825BE0(uint64_t a1, void *a2, id a3, void *a4)
{
  if (a2)
  {
    sub_2588267E8(0);
    v7 = a2;
    sub_2588BDA48();
  }

  else
  {
    if (!a3)
    {
      v8 = [objc_opt_self() hk:0 error:0 userInfo:?];
      a3 = 0;
    }

    v9 = a3;
    sub_2588267E8(0);
    sub_2588BDA38();
  }

  return [a4 stopQuery_];
}

uint64_t PregnancySampleDataProvider.deinit()
{

  sub_258826118(v0 + OBJC_IVAR____TtC11MedicalIDUI27PregnancySampleDataProvider__ongoingEstimatedDueDate);
  v1 = OBJC_IVAR____TtC11MedicalIDUI27PregnancySampleDataProvider___observationRegistrar;
  v2 = sub_2588BBBD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t PregnancySampleDataProvider.__deallocating_deinit()
{

  sub_258826118(v0 + OBJC_IVAR____TtC11MedicalIDUI27PregnancySampleDataProvider__ongoingEstimatedDueDate);
  v1 = OBJC_IVAR____TtC11MedicalIDUI27PregnancySampleDataProvider___observationRegistrar;
  v2 = sub_2588BBBD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_258825DE8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);

  v10 = a2;
  v8 = a3;
  v9 = a4;
  v7(v10, a3, a4);
}

uint64_t sub_258825E88(uint64_t a1, uint64_t a2)
{
  sub_2588268E4(0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v5 + 56);
  sub_2588252AC(a1, v7);
  sub_2588252AC(a2, &v7[v8]);
  v9 = sub_2588BB9B8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v7, 1, v9) != 1)
  {
    sub_258825320(0, &qword_27F95D880, MEMORY[0x28220BFA0]);
    MEMORY[0x28223BE20](v13 - 8);
    v15 = &v22 - v14;
    sub_2588252AC(v7, &v22 - v14);
    v16 = v11(&v7[v8], 1, v9);
    if (v16 != 1)
    {
      MEMORY[0x28223BE20](v16);
      v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v10 + 32))(v18, &v7[v8], v9);
      sub_2588269B4();
      v19 = sub_2588BD7D8();
      v20 = *(v10 + 8);
      v20(v18, v9);
      v20(v15, v9);
      sub_258826118(v7);
      v12 = v19 ^ 1;
      return v12 & 1;
    }

    (*(v10 + 8))(v15, v9);
    goto LABEL_6;
  }

  if (v11(&v7[v8], 1, v9) != 1)
  {
LABEL_6:
    sub_258826958(v7);
    v12 = 1;
    return v12 & 1;
  }

  sub_258826118(v7);
  v12 = 0;
  return v12 & 1;
}

uint64_t sub_258826118(uint64_t a1)
{
  sub_258825320(0, &qword_27F95D880, MEMORY[0x28220BFA0]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_258826184(uint64_t a1, uint64_t a2)
{
  sub_258825320(0, &qword_27F95D880, MEMORY[0x28220BFA0]);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_258826214(uint64_t a1)
{
  v1[3] = a1;
  v1[4] = sub_2588BDA78();
  v1[5] = sub_2588BDA68();
  v3 = sub_2588BDA28();
  v1[6] = v3;
  v1[7] = v2;

  return MEMORY[0x2822009F8](sub_2588262B0, v3, v2);
}

uint64_t sub_2588262B0(uint64_t a1)
{
  v2 = v1[3];
  v3 = sub_2588BDA68();
  v1[8] = v3;
  v4 = swift_task_alloc();
  v1[9] = v4;
  *(v4 + 16) = v2;
  v5 = swift_task_alloc();
  v1[10] = v5;
  v6 = sub_25882679C();
  *v5 = v1;
  v5[1] = sub_2588263BC;
  v7 = MEMORY[0x277D85700];

  return MEMORY[0x2822008A0](v1 + 2, v3, v7, 0xD000000000000024, 0x80000002588C9F00, sub_258826794, v4, v6);
}

uint64_t sub_2588263BC()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = sub_258826548;
  }

  else
  {

    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = sub_2588264E0;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_2588264E0()
{

  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_258826548()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2588265C0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2587AE310;

  return sub_2588250A8();
}

void sub_25882667C(uint64_t a1)
{
  sub_258825320(319, &qword_27F95D880, MEMORY[0x28220BFA0]);
  if (v1 <= 0x3F)
  {
    sub_2588BBBD8();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

unint64_t sub_25882679C()
{
  result = qword_27F95F580;
  if (!qword_27F95F580)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F95F580);
  }

  return result;
}

void sub_2588267E8(uint64_t a1)
{
  if (!qword_27F95F588)
  {
    sub_25882679C();
    sub_25878D8F4();
    v1 = sub_2588BDA58();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95F588);
    }
  }
}

id sub_258826858(uint64_t a1, void *a2, void *a3)
{
  sub_2588267E8(0);
  v7 = *(v3 + 16);

  return sub_258825BE0(a1, a2, a3, v7);
}

void sub_2588268E4(uint64_t a1)
{
  if (!qword_27F95E758)
  {
    sub_258825320(255, &qword_27F95D880, MEMORY[0x28220BFA0]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F95E758);
    }
  }
}

uint64_t sub_258826958(uint64_t a1)
{
  sub_2588268E4(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2588269B4()
{
  result = qword_27F95E768;
  if (!qword_27F95E768)
  {
    sub_2588BB9B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E768);
  }

  return result;
}

uint64_t sub_258826A10(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_258826A58(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

void sub_258826AD0(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  sub_258828558(0, &qword_27F95F5B8, &qword_27F95F5C0, &type metadata for MedicalIDCellBodyTextStyle);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3);
  v53 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v49 - v8;
  sub_258827D60(0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v55 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v54 = &v49 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v49 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v49 - v18;
  v20 = a1[1];
  v57 = v5;
  v58 = v4;
  if (v20)
  {
    v59 = *a1;
    v60 = v20;
    sub_25878F648();

    v21 = sub_2588BCDF8();
    v50 = v22;
    v51 = v21;
    v59 = v21;
    v60 = v22;
    v24 = v23 & 1;
    v61 = v23 & 1;
    v52 = v25;
    v62 = v25;
    sub_25878E2E0(0, &qword_280C0DDD0, MEMORY[0x277D84560]);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_2588BFF50;
    v27 = a1[5];
    *(v26 + 32) = a1[4];
    *(v26 + 40) = v27;
    *(v26 + 48) = 0x656C746954;
    *(v26 + 56) = 0xE500000000000000;

    v28 = sub_2588BD9A8();

    v29 = HKUIJoinStringsForAutomationIdentifier();

    if (!v29)
    {
      __break(1u);
      goto LABEL_11;
    }

    sub_2588BD8A8();

    sub_258828338(0, &qword_27F95F5C0, &type metadata for MedicalIDCellBodyTextStyle);
    sub_258828388(&qword_27F95F608, &qword_27F95F5C0, &type metadata for MedicalIDCellBodyTextStyle, sub_2588281D0);
    sub_2588BCFB8();

    sub_2587B1CF8(v51, v50, v24);

    sub_258828224(v9, v19);
    v4 = v58;
    v30 = *(v57 + 56);
    v30(v19, 0, 1, v58);
  }

  else
  {
    v30 = *(v5 + 56);
    v30(&v49 - v18, 1, 1, v4);
  }

  v31 = a1[3];
  if (!v31)
  {
    v43 = 1;
    goto LABEL_9;
  }

  v59 = a1[2];
  v60 = v31;
  sub_25878F648();

  v32 = sub_2588BCDF8();
  v34 = v33;
  v51 = v32;
  v52 = v35;
  v59 = v32;
  v60 = v33;
  v37 = v36 & 1;
  v61 = v36 & 1;
  v62 = v35;
  sub_25878E2E0(0, &qword_280C0DDD0, MEMORY[0x277D84560]);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_2588BFF50;
  v39 = a1[5];
  *(v38 + 32) = a1[4];
  *(v38 + 40) = v39;
  *(v38 + 48) = 0x65756C6156;
  *(v38 + 56) = 0xE500000000000000;

  v40 = sub_2588BD9A8();

  v41 = HKUIJoinStringsForAutomationIdentifier();

  if (v41)
  {
    sub_2588BD8A8();

    sub_258828338(0, &qword_27F95F5C0, &type metadata for MedicalIDCellBodyTextStyle);
    sub_258828388(&qword_27F95F608, &qword_27F95F5C0, &type metadata for MedicalIDCellBodyTextStyle, sub_2588281D0);
    v42 = v53;
    sub_2588BCFB8();

    sub_2587B1CF8(v51, v34, v37);

    sub_258828224(v42, v17);
    v43 = 0;
    v4 = v58;
LABEL_9:
    v30(v17, v43, 1, v4);
    v44 = v54;
    sub_258828110(v19, v54);
    v45 = v55;
    sub_258828110(v17, v55);
    v46 = v56;
    sub_258828110(v44, v56);
    sub_258827CF4(0);
    v48 = v46 + *(v47 + 48);
    *v48 = 0;
    *(v48 + 8) = 1;
    sub_258828110(v45, v46 + *(v47 + 64));
    sub_258828174(v17);
    sub_258828174(v19);
    sub_258828174(v45);
    sub_258828174(v44);
    return;
  }

LABEL_11:
  __break(1u);
}

uint64_t sub_258827088@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, void (*a3)(void)@<X2>, uint64_t (*a4)(uint64_t)@<X3>, uint64_t a5@<X8>)
{
  *a5 = a2();
  *(a5 + 8) = 0;
  *(a5 + 16) = 1;
  a3(0);
  return a4(a1);
}

void sub_2588270F0(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  sub_258828558(0, &qword_27F95F5B8, &qword_27F95F5C0, &type metadata for MedicalIDCellBodyTextStyle);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3);
  v52 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v48 - v8;
  sub_258827D60(0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v54 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v53 = &v48 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v48 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v48 - v18;
  v20 = a1[1];
  v56 = v5;
  v57 = v4;
  if (v20)
  {
    v58 = *a1;
    v59 = v20;
    sub_25878F648();

    v21 = sub_2588BCDF8();
    v49 = v22;
    v50 = v21;
    v58 = v21;
    v59 = v22;
    v24 = v23 & 1;
    v60 = v23 & 1;
    v51 = v25;
    v61 = v25;
    sub_25878E2E0(0, &qword_280C0DDD0, MEMORY[0x277D84560]);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_2588BFF50;
    v27 = a1[5];
    *(v26 + 32) = a1[4];
    *(v26 + 40) = v27;
    *(v26 + 48) = 0x656C746954;
    *(v26 + 56) = 0xE500000000000000;

    v28 = sub_2588BD9A8();

    v29 = HKUIJoinStringsForAutomationIdentifier();

    if (!v29)
    {
      __break(1u);
      goto LABEL_11;
    }

    sub_2588BD8A8();

    sub_258828338(0, &qword_27F95F5C0, &type metadata for MedicalIDCellBodyTextStyle);
    sub_258828388(&qword_27F95F608, &qword_27F95F5C0, &type metadata for MedicalIDCellBodyTextStyle, sub_2588281D0);
    sub_2588BCFB8();

    sub_2587B1CF8(v50, v49, v24);

    sub_258828224(v9, v19);
    v4 = v57;
    v30 = *(v56 + 56);
    v30(v19, 0, 1, v57);
  }

  else
  {
    v30 = *(v5 + 56);
    v30(&v48 - v18, 1, 1, v4);
  }

  v31 = a1[3];
  if (!v31)
  {
    v43 = 1;
    goto LABEL_9;
  }

  v58 = a1[2];
  v59 = v31;
  sub_25878F648();

  v32 = sub_2588BCDF8();
  v34 = v33;
  v50 = v32;
  v51 = v35;
  v58 = v32;
  v59 = v33;
  v37 = v36 & 1;
  v60 = v36 & 1;
  v61 = v35;
  sub_25878E2E0(0, &qword_280C0DDD0, MEMORY[0x277D84560]);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_2588BFF50;
  v39 = a1[5];
  *(v38 + 32) = a1[4];
  *(v38 + 40) = v39;
  *(v38 + 48) = 0x65756C6156;
  *(v38 + 56) = 0xE500000000000000;

  v40 = sub_2588BD9A8();

  v41 = HKUIJoinStringsForAutomationIdentifier();

  if (v41)
  {
    sub_2588BD8A8();

    sub_258828338(0, &qword_27F95F5C0, &type metadata for MedicalIDCellBodyTextStyle);
    sub_258828388(&qword_27F95F608, &qword_27F95F5C0, &type metadata for MedicalIDCellBodyTextStyle, sub_2588281D0);
    v42 = v52;
    sub_2588BCFB8();

    sub_2587B1CF8(v50, v34, v37);

    sub_258828224(v42, v17);
    v43 = 0;
    v4 = v57;
LABEL_9:
    v30(v17, v43, 1, v4);
    v44 = v53;
    sub_258828110(v19, v53);
    v45 = v54;
    sub_258828110(v17, v54);
    v46 = v55;
    sub_258828110(v44, v55);
    sub_258827EE8(0);
    sub_258828110(v45, v46 + *(v47 + 48));
    sub_258828174(v17);
    sub_258828174(v19);
    sub_258828174(v45);
    sub_258828174(v44);
    return;
  }

LABEL_11:
  __break(1u);
}

uint64_t sub_258827690@<X0>(char *a1@<X8>)
{
  v3 = v1[1];
  v17 = *v1;
  v18 = v3;
  v19 = v1[2];
  v4 = swift_allocObject();
  v5 = v1[1];
  v4[1] = *v1;
  v4[2] = v5;
  v4[3] = v1[2];
  v6 = swift_allocObject();
  v7 = v1[1];
  v6[1] = *v1;
  v6[2] = v7;
  v6[3] = v1[2];
  *a1 = swift_getKeyPath(byte_2588C4158);
  sub_258827E84(0, &qword_27F95E160, MEMORY[0x277CDFA28], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  sub_258827B54(0);
  v9 = v8;
  v10 = *(v8 + 52);
  v11 = *MEMORY[0x277CDF988];
  v12 = sub_2588BC1C8();
  (*(*(v12 - 8) + 104))(&a1[v10], v11, v12);
  v13 = &a1[*(v9 + 56)];
  *v13 = sub_258827A5C;
  *(v13 + 1) = v4;
  v14 = &a1[*(v9 + 60)];
  *v14 = sub_258827AFC;
  *(v14 + 1) = v6;
  sub_258827FF8(&v17, v16);
  sub_258827FF8(&v18, v16);
  sub_2587FB4AC(&v19, v16);
  sub_258827FF8(&v17, v16);
  sub_258827FF8(&v18, v16);
  return sub_2587FB4AC(&v19, v16);
}

void sub_258827858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_25878F648();

  v6 = sub_2588BCDF8();
  v8 = v7;
  v10 = v9 & 1;
  sub_25878E2E0(0, &qword_280C0DDD0, MEMORY[0x277D84560]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_2588BFF50;
  *(v11 + 32) = a3;
  *(v11 + 40) = a4;
  *(v11 + 48) = 0x6C6F686563616C50;
  *(v11 + 56) = 0xEB00000000726564;

  v12 = sub_2588BD9A8();

  v13 = HKUIJoinStringsForAutomationIdentifier();

  if (v13)
  {
    sub_2588BD8A8();

    sub_258828338(0, &qword_27F95F620, &type metadata for MedicalIDCellPlaceholderTextStyle);
    sub_258828388(&qword_27F95F628, &qword_27F95F620, &type metadata for MedicalIDCellPlaceholderTextStyle, sub_258828408);
    sub_2588BCFB8();

    sub_2587B1CF8(v6, v8, v10);
  }

  else
  {
    __break(1u);
  }
}

uint64_t objectdestroyTm_16()
{

  return swift_deallocObject();
}

void sub_258827B54(uint64_t a1)
{
  if (!qword_27F95F590)
  {
    sub_258827C40(255);
    v3 = v2;
    sub_258827DD0(255);
    v7[0] = v3;
    v7[1] = v4;
    v7[2] = sub_258827FB0(&qword_27F95F5F0, sub_258827C40, MEMORY[0x277CE1138]);
    v7[3] = sub_258827FB0(&qword_27F95F5F8, sub_258827DD0, MEMORY[0x277CE1198]);
    v5 = type metadata accessor for MedicalIDAXLayoutView(a1, v7);
    if (!v6)
    {
      atomic_store(v5, &qword_27F95F590);
    }
  }
}

void sub_258827C40(uint64_t a1)
{
  if (!qword_27F95F598)
  {
    sub_258827E84(255, &qword_27F95F5A0, sub_258827CF4, MEMORY[0x277CE14B8]);
    sub_258827F4C(&qword_27F95F5C8, &qword_27F95F5A0, sub_258827CF4);
    v1 = sub_2588BD368();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95F598);
    }
  }
}

void sub_258827CF4(uint64_t a1)
{
  if (!qword_27F95F5A8)
  {
    sub_258827D60(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F95F5A8);
    }
  }
}

void sub_258827D60(uint64_t a1)
{
  if (!qword_27F95F5B0)
  {
    sub_258828558(255, &qword_27F95F5B8, &qword_27F95F5C0, &type metadata for MedicalIDCellBodyTextStyle);
    v1 = sub_2588BDCE8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95F5B0);
    }
  }
}

void sub_258827DD0(uint64_t a1)
{
  if (!qword_27F95F5D0)
  {
    sub_258827E84(255, &qword_27F95F5D8, sub_258827EE8, MEMORY[0x277CE14B8]);
    sub_258827F4C(&qword_27F95F5E8, &qword_27F95F5D8, sub_258827EE8);
    v1 = sub_2588BD408();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95F5D0);
    }
  }
}

void sub_258827E84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_258827EE8(uint64_t a1)
{
  if (!qword_27F95F5E0)
  {
    sub_258827D60(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F95F5E0);
    }
  }
}

uint64_t sub_258827F4C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_258827E84(255, a2, a3, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_258827FB0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_258827FF8(uint64_t a1, uint64_t a2)
{
  sub_25878E2E0(0, &qword_27F95D458, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_258828078(uint64_t a1)
{
  if (!qword_27F95F600)
  {
    sub_258827E84(255, &qword_27F95F5D8, sub_258827EE8, MEMORY[0x277CE14B8]);
    v1 = sub_2588BC0B8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95F600);
    }
  }
}

uint64_t sub_258828110(uint64_t a1, uint64_t a2)
{
  sub_258827D60(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258828174(uint64_t a1)
{
  sub_258827D60(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2588281D0()
{
  result = qword_27F95F610;
  if (!qword_27F95F610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95F610);
  }

  return result;
}

uint64_t sub_258828224(uint64_t a1, uint64_t a2)
{
  sub_258828558(0, &qword_27F95F5B8, &qword_27F95F5C0, &type metadata for MedicalIDCellBodyTextStyle);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2588282A0(uint64_t a1)
{
  if (!qword_27F95F618)
  {
    sub_258827E84(255, &qword_27F95F5A0, sub_258827CF4, MEMORY[0x277CE14B8]);
    v1 = sub_2588BC0B8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95F618);
    }
  }
}

void sub_258828338(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_2588BC1E8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_258828388(unint64_t *a1, unint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_258828338(255, a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_258828408()
{
  result = qword_27F95F630;
  if (!qword_27F95F630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95F630);
  }

  return result;
}

unint64_t sub_25882845C()
{
  result = qword_27F95F640;
  if (!qword_27F95F640)
  {
    sub_258828558(255, &qword_27F95F648, &qword_27F95F620, &type metadata for MedicalIDCellPlaceholderTextStyle);
    sub_258828388(&qword_27F95F628, &qword_27F95F620, &type metadata for MedicalIDCellPlaceholderTextStyle, sub_258828408);
    sub_258827FB0(&qword_27F95D9D8, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95F640);
  }

  return result;
}

void sub_258828558(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_258828338(255, a3, a4);
    sub_2588BCA98();
    v5 = sub_2588BC1E8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_2588285C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a3;
  v14[5] = a4;
  sub_25882C898(0);
  MEMORY[0x259C8C5A0](v14);
  v10 = v14[0];
  v11 = v14[1];
  type metadata accessor for EditPhotoCellView.ViewModel(0);
  v12 = swift_allocObject();
  *(v12 + 64) = xmmword_2588C0670;
  *(v12 + 80) = 0;
  *(v12 + 88) = 1;
  *(v12 + 96) = 0u;
  *(v12 + 112) = 0u;
  *(v12 + 128) = 0u;
  *(v12 + 144) = 0;
  sub_2588BBBC8();
  result = sub_2587C4E98(*(v12 + 64), *(v12 + 72));
  *(v12 + 64) = v10;
  *(v12 + 72) = v11;
  *(v12 + 16) = sub_25882ECB0;
  *(v12 + 24) = 0;
  *(v12 + 32) = sub_25882EED8;
  *(v12 + 40) = 0;
  *(v12 + 48) = sub_25882EF68;
  *(v12 + 56) = 0;
  *a5 = v12;
  a5[1] = 0;
  a5[2] = a1;
  a5[3] = a2;
  a5[4] = a3;
  a5[5] = a4;
  return result;
}

uint64_t EditPhotoCellView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  sub_258828C84(0);
  v25[1] = v2;
  MEMORY[0x28223BE20](v2);
  v4 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588291A0(0, &qword_27F95F6B0, sub_2588290A8, &type metadata for BasicAlertModifier);
  v26 = v5;
  MEMORY[0x28223BE20](v5);
  v25[0] = v25 - v6;
  v7 = v1[1];
  v35 = *v1;
  v36 = v7;
  v37 = v1[2];
  *v4 = sub_2588BC608();
  *(v4 + 1) = 0;
  v4[16] = 1;
  sub_25882BED8(0, &qword_27F95F6E0, sub_258828D18, MEMORY[0x277CDF740], MEMORY[0x277CDF738]);
  sub_2588292D8(&v35, &v4[*(v8 + 44)]);
  v38 = v35;
  v28 = v35;
  sub_25882CBB8(0, &qword_27F95F6E8, type metadata accessor for EditPhotoCellView.ViewModel, MEMORY[0x277CE10B8]);
  sub_2588BD2E8();
  v9 = v39;
  v10 = v40;
  swift_getKeyPath(byte_2588C4190);
  v28 = v9;
  *&v29 = v10;
  sub_25882CBB8(0, &qword_27F95F6F0, type metadata accessor for EditPhotoCellView.ViewModel, MEMORY[0x277CE11F8]);
  sub_2588BD448();

  v11 = swift_allocObject();
  v12 = v36;
  v11[1] = v35;
  v11[2] = v12;
  v11[3] = v37;
  sub_25882A178(&v35, &v39);
  sub_2588291A0(0, &qword_27F95F6C0, type metadata accessor for ImagePickerView, MEMORY[0x277CE0888]);
  sub_25882CB3C(&qword_27F95F6C8, sub_258828C84, MEMORY[0x277CE1138]);
  sub_258829204();
  v13 = v25[0];
  sub_2588BCF18();

  sub_25882CA14(v4, sub_258828C84);
  v28 = v38;
  sub_2588BD2E8();
  v14 = v39;
  v15 = v40;
  swift_getKeyPath(byte_2588C41B8);
  v33 = v14;
  v34 = v15;
  sub_2588BD448();

  v41 = v30;
  v42 = v31;
  v43 = v32;
  v39 = v28;
  v40 = v29;

  v16 = v13 + *(v26 + 36);
  v17 = v42;
  *(v16 + 32) = v41;
  *(v16 + 48) = v17;
  *(v16 + 64) = v43;
  v18 = v40;
  *v16 = v39;
  *(v16 + 16) = v18;
  v28 = v38;
  sub_2588BD2C8();
  v19 = v33;
  *&v28 = v19;
  sub_25882CB3C(&qword_27F95F6F8, type metadata accessor for EditPhotoCellView.ViewModel, &protocol conformance descriptor for EditPhotoCellView.ViewModel);
  sub_2588BBB98();

  v20 = *(v19 + 64);
  v21 = *(v19 + 72);
  sub_2587CC620(v20, v21);

  *&v33 = v20;
  *(&v33 + 1) = v21;
  v22 = swift_allocObject();
  v23 = v36;
  v22[1] = v35;
  v22[2] = v23;
  v22[3] = v37;
  sub_25882A178(&v35, &v28);
  sub_2587CC4B0();
  sub_25882BA28();
  sub_25882BB70();
  sub_2588BD108();

  sub_2587C4E98(v33, *(&v33 + 1));
  return sub_25879DC40(v13);
}

void sub_258828C84(uint64_t a1)
{
  if (!qword_27F95F650)
  {
    sub_258828D18(255);
    sub_25882CB3C(&qword_27F95F6A8, sub_258828D18, MEMORY[0x277CE14C0]);
    v1 = sub_2588BD368();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95F650);
    }
  }
}

void sub_258828D4C(uint64_t a1)
{
  if (!qword_27F95F660)
  {
    sub_258828DB8(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F95F660);
    }
  }
}

void sub_258828DEC(uint64_t a1)
{
  if (!qword_27F95F670)
  {
    sub_258828EA0(255);
    sub_25882CB3C(&qword_27F95F6A0, sub_258828EA0, MEMORY[0x277CDE5B0]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F95F670);
    }
  }
}

void sub_258828EA0(uint64_t a1)
{
  if (!qword_27F95F678)
  {
    sub_25882C17C(255, &qword_27F95F680, &type metadata for PhotoEditView, MEMORY[0x277CDF928], MEMORY[0x277CDFAB8]);
    sub_258828F54();
    sub_258829054();
    v1 = sub_2588BCD78();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95F678);
    }
  }
}

unint64_t sub_258828F54()
{
  result = qword_27F95F688;
  if (!qword_27F95F688)
  {
    sub_25882C17C(255, &qword_27F95F680, &type metadata for PhotoEditView, MEMORY[0x277CDF928], MEMORY[0x277CDFAB8]);
    sub_258829000();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95F688);
  }

  return result;
}

unint64_t sub_258829000()
{
  result = qword_27F95F690;
  if (!qword_27F95F690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95F690);
  }

  return result;
}

unint64_t sub_258829054()
{
  result = qword_27F95F698;
  if (!qword_27F95F698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95F698);
  }

  return result;
}

void sub_2588290A8(uint64_t a1)
{
  if (!qword_27F95F6B8)
  {
    sub_258828C84(255);
    sub_2588291A0(255, &qword_27F95F6C0, type metadata accessor for ImagePickerView, MEMORY[0x277CE0888]);
    sub_25882CB3C(&qword_27F95F6C8, sub_258828C84, MEMORY[0x277CE1138]);
    sub_258829204();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F95F6B8);
    }
  }
}

void sub_2588291A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t sub_258829204()
{
  result = qword_27F95F6D0;
  if (!qword_27F95F6D0)
  {
    sub_2588291A0(255, &qword_27F95F6C0, type metadata accessor for ImagePickerView, MEMORY[0x277CE0888]);
    sub_25882CB3C(&qword_27F95F6D8, type metadata accessor for ImagePickerView, &unk_2588C652C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95F6D0);
  }

  return result;
}

uint64_t sub_2588292D8@<X0>(_OWORD *a1@<X0>, void *a2@<X8>)
{
  v43 = a2;
  v3 = sub_2588BC978();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258828EA0(0);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258828DEC(0);
  v40 = *(v12 - 8);
  v41 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258828DB8(0);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v42 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v39 = &v38 - v18;
  v45 = a1;
  v44 = a1;
  sub_25882C17C(0, &qword_27F95F680, &type metadata for PhotoEditView, MEMORY[0x277CDF928], MEMORY[0x277CDFAB8]);
  sub_258828F54();
  sub_258829054();
  sub_2588BCD68();
  sub_2588BC958();
  v19 = sub_25882CB3C(&qword_27F95F6A0, sub_258828EA0, MEMORY[0x277CDE5B0]);
  sub_2588BCF88();
  (*(v4 + 8))(v6, v3);
  (*(v9 + 8))(v11, v8);
  v48 = *a1;
  sub_25882CBB8(0, &qword_27F95F6E8, type metadata accessor for EditPhotoCellView.ViewModel, MEMORY[0x277CE10B8]);
  sub_2588BD2C8();
  v20 = v46;
  *&v48 = v20;
  sub_25882CB3C(&qword_27F95F6F8, type metadata accessor for EditPhotoCellView.ViewModel, &protocol conformance descriptor for EditPhotoCellView.ViewModel);
  sub_2588BBB98();

  v21 = *(v20 + 64);
  v22 = *(v20 + 72);
  sub_2587CC620(v21, v22);

  v23 = sub_2588BD858();
  MEMORY[0x28223BE20](v23 - 8);
  sub_2588BD7E8();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v24 = qword_27F95DA88;
  v25 = sub_2588BBAC8();
  MEMORY[0x28223BE20](v25 - 8);
  v26 = v24;
  sub_2588BBAB8();
  v27 = sub_2588BD8B8();
  v29 = v28;
  sub_2587C4E98(v21, v22);
  *&v48 = v27;
  *(&v48 + 1) = v29;
  v46 = v8;
  v47 = v19;
  swift_getOpaqueTypeConformance2();
  sub_25878F648();
  v30 = v39;
  v31 = v41;
  sub_2588BCF68();

  (*(v40 + 8))(v14, v31);
  v32 = v42;
  sub_25882C9AC(v30, v42, sub_258828DB8);
  v33 = v43;
  *v43 = 0;
  *(v33 + 8) = 1;
  sub_258828D4C(0);
  v35 = v34;
  sub_25882C9AC(v32, v33 + *(v34 + 48), sub_258828DB8);
  v36 = v33 + *(v35 + 64);
  *v36 = 0;
  v36[8] = 1;
  sub_25882CA14(v30, sub_258828DB8);
  return sub_25882CA14(v32, sub_258828DB8);
}

void sub_258829950(Swift::Void (__swiftcall **a2)()@<X8>)
{
  sub_25882CBB8(0, &qword_27F95F6E8, type metadata accessor for EditPhotoCellView.ViewModel, MEMORY[0x277CE10B8]);
  sub_2588BD2C8();
  sub_2588BD2C8();
  sub_2588BD2C8();
  sub_25882CB3C(&qword_27F95F6F8, type metadata accessor for EditPhotoCellView.ViewModel, &protocol conformance descriptor for EditPhotoCellView.ViewModel);
  sub_2588BBB98();

  if (*(v10 + 72) >> 60 == 15)
  {

    v3 = 0;
    v4 = 0;
  }

  else
  {
    v4 = swift_allocObject();
    swift_weakInit();

    v3 = sub_25882CA80;
  }

  v5 = sub_2588BD9A8();
  v6 = HKUIJoinStringsForAutomationIdentifier();

  if (v6)
  {
    v7 = sub_2588BD8A8();
    v9 = v8;
  }

  else
  {
    v9 = 0xEB0000000072656BLL;
    v7 = 0x6369506F746F6850;
  }

  *a2 = j___s11MedicalIDUI17EditPhotoCellViewV0F5ModelC22cameraMenuButtonTappedyyF;
  a2[1] = v10;
  a2[2] = sub_25882CA78;
  a2[3] = v10;
  a2[4] = v3;
  a2[5] = v4;
  a2[6] = v7;
  a2[7] = v9;
}

uint64_t sub_258829B84(uint64_t result)
{
  if ((*(result + 88) & 1) != 0 || *(result + 80))
  {
    KeyPath = swift_getKeyPath("@ \n'");
    MEMORY[0x28223BE20](KeyPath);
    sub_25882CB3C(&qword_27F95F6F8, type metadata accessor for EditPhotoCellView.ViewModel, &protocol conformance descriptor for EditPhotoCellView.ViewModel);
    sub_2588BBB88();
  }

  else
  {
    *(result + 88) = 0;
  }

  return result;
}

double sub_258829C98@<D0>(uint64_t a2@<X8>)
{
  sub_25882CBB8(0, &qword_27F95F6E8, type metadata accessor for EditPhotoCellView.ViewModel, MEMORY[0x277CE10B8]);
  sub_2588BD2C8();
  sub_25882CB3C(&qword_27F95F6F8, type metadata accessor for EditPhotoCellView.ViewModel, &protocol conformance descriptor for EditPhotoCellView.ViewModel);
  sub_2588BBB98();

  v3 = *(v12 + 64);
  v4 = *(v12 + 72);
  sub_2587CC620(v3, v4);

  v5 = sub_2588BD9A8();
  v6 = HKUIJoinStringsForAutomationIdentifier();

  if (v6)
  {
    v7 = sub_2588BD8A8();
    v9 = v8;
  }

  else
  {
    v9 = 0xE90000000000006FLL;
    v7 = 0x746F685074696445;
  }

  v10 = sub_2588BCB78();
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v7;
  *(a2 + 24) = v9;
  *(a2 + 32) = v10;
  result = 0.0;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 1;
  return result;
}

uint64_t sub_258829E2C@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath("@ \n'");
  sub_25882CB3C(&qword_27F95F6F8, type metadata accessor for EditPhotoCellView.ViewModel, &protocol conformance descriptor for EditPhotoCellView.ViewModel);
  sub_2588BBB98();

  *a2 = (*(v3 + 88) & 1) == 0;
  return result;
}

void sub_258829F04(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ImagePickerView(0);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = (&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *a1;
  v21 = v20;
  sub_25882CBB8(0, &qword_27F95F6E8, type metadata accessor for EditPhotoCellView.ViewModel, MEMORY[0x277CE10B8]);
  sub_2588BD2C8();
  v8 = v19;
  swift_getKeyPath("@ \n'");
  *&v20 = v8;
  sub_25882CB3C(&qword_27F95F6F8, type metadata accessor for EditPhotoCellView.ViewModel, &protocol conformance descriptor for EditPhotoCellView.ViewModel);
  sub_2588BBB98();

  v9 = *(v8 + 10);
  v10 = *(v8 + 88);

  if (v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = v9;
  }

  v20 = v21;
  sub_2588BD2C8();
  v12 = v19;
  *v7 = swift_getKeyPath("  \n'");
  sub_25882CBB8(0, &qword_27F95EBC0, sub_258804A60, MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  *(v7 + *(v5 + 28)) = v11;
  v13 = (v7 + *(v5 + 32));
  *v13 = j___s11MedicalIDUI17EditPhotoCellViewV0F5ModelC8selected5imageySo7UIImageC_tF;
  v13[1] = v12;
  v14 = sub_2588BC218();
  v15 = sub_2588BCB88();
  sub_25882C934(v7, a2, type metadata accessor for ImagePickerView);
  sub_2588291A0(0, &qword_27F95F6C0, type metadata accessor for ImagePickerView, MEMORY[0x277CE0888]);
  v17 = a2 + *(v16 + 36);
  *v17 = v14;
  *(v17 + 8) = v15;
}

void sub_25882A1B0(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_2588C41B8);
  sub_25882CB3C(&qword_27F95F6F8, type metadata accessor for EditPhotoCellView.ViewModel, &protocol conformance descriptor for EditPhotoCellView.ViewModel);
  sub_2588BBB98();

  swift_beginAccess();
  v4 = v3[12];
  v5 = v3[13];
  v6 = v3[14];
  v7 = v3[15];
  v8 = v3[16];
  v9 = v3[17];
  v10 = v3[18];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  a2[4] = v8;
  a2[5] = v9;
  a2[6] = v10;
  sub_25882C8CC(v4, v5, v6, v7, v8, v9, v10);
}

void sub_25882A288(void *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  *&v7 = *a1;
  *(&v7 + 1) = v1;
  v8 = v2;
  v9 = v3;
  v10 = v4;
  v11 = v5;
  v12 = v6;
  sub_25882C8CC(v7, v1, v2, v3, v4, v5, v6);
  EditPhotoCellView.ViewModel.deniedPermissionsAlert.setter(&v7);
}

uint64_t sub_25882A2E4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = *(a3 + 32);
  v12[0] = *(a3 + 16);
  v12[1] = v5;
  v6 = *(a3 + 32);
  v10 = *(a3 + 16);
  v11 = v6;
  v9[4] = v3;
  v9[5] = v4;
  sub_25882C830(v12, v9, sub_25882C898);
  sub_2587CC620(v3, v4);
  sub_25882C898(0);
  sub_2588BD438();
  v7 = v11;

  return sub_2587C4E98(v7, *(&v7 + 1));
}

uint64_t sub_25882A390@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v62 = a3;
  v5 = sub_2588BC6D8();
  v59 = *(v5 - 8);
  v60 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25882C17C(0, &qword_27F95E9D0, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CDF020]);
  v53 = *(v8 - 8);
  v54 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v50 - v9;
  sub_25882C07C(0);
  v57 = *(v11 - 8);
  v58 = v11;
  MEMORY[0x28223BE20](v11);
  v55 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25882C048(0);
  v51 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25882C014(0);
  v52 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25882BFE0(0);
  v56 = v19;
  v20 = MEMORY[0x28223BE20](v19);
  v61 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v50 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v50 - v25;
  v27 = sub_2588BD858();
  MEMORY[0x28223BE20](v27 - 8);
  if (a2 >> 60 != 15)
  {
    sub_2587CC634(a1, a2);
  }

  sub_2588BD7E8();
  v63 = a1;
  v64 = a2;
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v28 = qword_27F95DA88;
  v29 = sub_2588BBAC8();
  MEMORY[0x28223BE20](v29 - 8);
  v30 = v28;
  sub_2588BBAB8();
  v65 = sub_2588BD8B8();
  v66 = v31;
  sub_25878F648();
  sub_2588BD338();
  sub_2588BC6C8();
  sub_25882C1D0();
  sub_25882CB3C(&qword_27F95F750, MEMORY[0x277CDDEE0], MEMORY[0x277CDDED0]);
  v33 = v54;
  v32 = v55;
  v34 = v60;
  sub_2588BCE48();
  (*(v59 + 8))(v7, v34);
  (*(v53 + 8))(v10, v33);
  v35 = &v15[*(v51 + 36)];
  sub_25882C254(0);
  v37 = *(v36 + 28);
  v38 = *MEMORY[0x277CDF438];
  v39 = sub_2588BBF28();
  (*(*(v39 - 8) + 104))(&v35[v37], v38, v39);
  *v35 = swift_getKeyPath(byte_2588C4518);
  (*(v57 + 32))(v15, v32, v58);
  v40 = &v18[*(v52 + 36)];
  sub_25882C288(0);
  sub_2588BC338();
  *v40 = swift_getKeyPath(byte_2588C4548);
  sub_25882C434(v15, v18, sub_25882C048);
  v41 = sub_2588BD158();
  KeyPath = swift_getKeyPath("h \n'");
  sub_25882C434(v18, v24, sub_25882C014);
  v43 = &v24[*(v56 + 36)];
  *v43 = KeyPath;
  v43[1] = v41;
  sub_25882C434(v24, v26, sub_25882BFE0);
  v44 = v61;
  sub_25882C9AC(v26, v61, sub_25882BFE0);
  v46 = v62;
  v45 = v63;
  v47 = v64;
  *v62 = v63;
  v46[1] = v47;
  sub_25882BF78(0);
  sub_25882C9AC(v44, v46 + *(v48 + 48), sub_25882BFE0);
  sub_2587CC620(v45, v47);
  sub_25882CA14(v26, sub_25882BFE0);
  sub_25882CA14(v44, sub_25882BFE0);
  return sub_2587C4E98(v45, v47);
}

uint64_t sub_25882AA94@<X0>(uint64_t a8@<X8>)
{
  v10 = *v8;
  v11 = v8[1];
  *a8 = sub_2588BC6E8();
  *(a8 + 8) = 0;
  *(a8 + 16) = 1;
  sub_25882BED8(0, &qword_27F95F718, sub_25882BF44, MEMORY[0x277CDF7A0], MEMORY[0x277CDF798]);
  return sub_25882A390(v10, v11, (a8 + *(v12 + 44)));
}

void sub_25882AB2C(uint64_t a1@<X8>)
{
  v2 = v1;
  v88 = a1;
  sub_25882CBB8(0, &qword_27F95D9E0, MEMORY[0x277CDD650], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v80 = &v78 - v4;
  sub_25882C49C(0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v87 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v86 = &v78 - v8;
  sub_25882C578(0);
  v10 = *(v9 - 8);
  v96 = v9;
  v97 = v10;
  v11 = MEMORY[0x28223BE20](v9);
  v89 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v93 = &v78 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v78 - v15;
  sub_25882C4D0(0);
  v83 = v17;
  v82 = *(v17 - 8);
  v18 = MEMORY[0x28223BE20](v17);
  v85 = &v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v84 = &v78 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v79 = &v78 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v90 = &v78 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = &v78 - v26;
  v28 = *(v2 + 8);
  v29 = *(v2 + 24);
  v30 = *(v2 + 32);
  v31 = *(v2 + 40);
  v100[0] = *(v2 + 48);
  v32 = swift_allocObject();
  v33 = *(v2 + 16);
  v32[1] = *v2;
  v32[2] = v33;
  v34 = *(v2 + 48);
  v32[3] = *(v2 + 32);
  v32[4] = v34;
  v91 = v28;

  v92 = v29;

  sub_2587FB4AC(v100, v99);
  v98 = v30;
  sub_2587B2344(v30);
  sub_25882C60C();
  v36 = v35;
  v37 = sub_25882CB3C(&qword_27F95F788, sub_25882C60C, MEMORY[0x277CDEFF0]);
  v95 = v36;
  sub_2588BD318();
  sub_25878E1F0(0, &qword_280C0DDD0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v39 = v38;
  v40 = swift_allocObject();
  v41 = v100[0];
  v94 = xmmword_2588BFF50;
  *(v40 + 16) = xmmword_2588BFF50;
  *(v40 + 32) = v41;
  *(v40 + 48) = 0x6172656D6143;
  *(v40 + 56) = 0xE600000000000000;
  sub_2587FB4AC(v100, v99);
  swift_bridgeObjectRetain_n();
  v42 = sub_2588BD9A8();

  v43 = HKUIJoinStringsForAutomationIdentifier();

  if (!v43)
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_2588BD8A8();

  sub_25882CB3C(&qword_27F95F790, sub_25882C578, MEMORY[0x277CDF028]);
  v81 = v27;
  v44 = v96;
  sub_2588BCFB8();

  v46 = v97 + 8;
  v45 = *(v97 + 8);
  v45(v16, v44);
  v47 = swift_allocObject();
  v48 = *(v2 + 16);
  v47[1] = *v2;
  v47[2] = v48;
  v49 = *(v2 + 48);
  v47[3] = *(v2 + 32);
  v47[4] = v49;

  sub_2587FB4AC(v100, v99);
  v78 = v31;
  sub_2587B2344(v98);
  v50 = v93;
  v92 = v37;
  sub_2588BD318();
  v91 = v39;
  v51 = swift_allocObject();
  v52 = v100[0];
  *(v51 + 16) = v94;
  *(v51 + 32) = v52;
  *(v51 + 48) = 0x7972617262694CLL;
  *(v51 + 56) = 0xE700000000000000;
  v53 = sub_2588BD9A8();

  v54 = HKUIJoinStringsForAutomationIdentifier();

  if (!v54)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v55 = v46;
  sub_2588BD8A8();

  v56 = v90;
  v57 = v96;
  sub_2588BCFB8();

  v45(v50, v57);
  v58 = v89;
  if (!v98)
  {
    sub_25882C708(v100);
    v70 = 1;
    v69 = v86;
    v67 = v81;
    goto LABEL_7;
  }

  v97 = v55;
  v59 = v78;

  v60 = v80;
  sub_2588BBDC8();
  v61 = sub_2588BBDE8();
  (*(*(v61 - 8) + 56))(v60, 0, 1, v61);
  v62 = swift_allocObject();
  *(v62 + 16) = v98;
  *(v62 + 24) = v59;

  sub_2588BD308();
  v63 = swift_allocObject();
  v64 = v100[0];
  *(v63 + 16) = v94;
  *(v63 + 32) = v64;
  *(v63 + 48) = 0x6574656C6544;
  *(v63 + 56) = 0xE600000000000000;
  v65 = sub_2588BD9A8();

  v66 = HKUIJoinStringsForAutomationIdentifier();

  v67 = v81;
  if (v66)
  {
    sub_2588BD8A8();

    v68 = v79;
    sub_2588BCFB8();

    sub_2587A6038(v98);
    v45(v58, v57);
    v69 = v86;
    sub_25882C934(v68, v86, sub_25882C4D0);
    v70 = 0;
LABEL_7:
    (*(v82 + 56))(v69, v70, 1, v83);
    v71 = v84;
    sub_25882C830(v67, v84, sub_25882C4D0);
    v72 = v67;
    v73 = v85;
    sub_25882C830(v56, v85, sub_25882C4D0);
    v74 = v87;
    sub_25882C830(v69, v87, sub_25882C49C);
    v75 = v88;
    sub_25882C830(v71, v88, sub_25882C4D0);
    sub_25882C75C(0);
    v77 = v76;
    sub_25882C830(v73, v75 + *(v76 + 48), sub_25882C4D0);
    sub_25882C830(v74, v75 + *(v77 + 64), sub_25882C49C);
    sub_25882C7D0(v69, sub_25882C49C);
    sub_25882C7D0(v56, sub_25882C4D0);
    sub_25882C7D0(v72, sub_25882C4D0);
    sub_25882C7D0(v74, sub_25882C49C);
    sub_25882C7D0(v73, sub_25882C4D0);
    sub_25882C7D0(v71, sub_25882C4D0);
    return;
  }

LABEL_10:
  __break(1u);
}

uint64_t sub_25882B550()
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
  sub_2588BD8B8();
  sub_25878F648();
  return sub_2588BD298();
}

uint64_t sub_25882B70C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_2588BD858();
  MEMORY[0x28223BE20](v4 - 8);
  sub_2588BD7E8();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v5 = qword_27F95DA88;
  v6 = sub_2588BBAC8();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = v5;
  sub_2588BBAB8();
  sub_2588BD8B8();
  sub_25878F648();
  return sub_2588BD298();
}

uint64_t sub_25882B8C8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  sub_25882CB3C(&qword_27F95F6F8, type metadata accessor for EditPhotoCellView.ViewModel, &protocol conformance descriptor for EditPhotoCellView.ViewModel);
  sub_2588BBB98();

  v4 = *(v3 + 64);
  v5 = *(v3 + 72);
  *a2 = v4;
  a2[1] = v5;
  return sub_2587CC620(v4, v5);
}

uint64_t sub_25882B974(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_2587CC620(*a1, v2);
  return sub_25882E734(v1, v2);
}

uint64_t objectdestroyTm_17()
{

  v1 = *(v0 + 56);
  if (v1 >> 60 != 15)
  {
    sub_2587C2610(*(v0 + 48), v1);
  }

  return swift_deallocObject();
}

unint64_t sub_25882BA28()
{
  result = qword_27F95F700;
  if (!qword_27F95F700)
  {
    sub_2588291A0(255, &qword_27F95F6B0, sub_2588290A8, &type metadata for BasicAlertModifier);
    sub_258828C84(255);
    sub_2588291A0(255, &qword_27F95F6C0, type metadata accessor for ImagePickerView, MEMORY[0x277CE0888]);
    sub_25882CB3C(&qword_27F95F6C8, sub_258828C84, MEMORY[0x277CE1138]);
    sub_258829204();
    swift_getOpaqueTypeConformance2();
    sub_2587FC5B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95F700);
  }

  return result;
}

unint64_t sub_25882BB70()
{
  result = qword_27F95F708;
  if (!qword_27F95F708)
  {
    sub_2587CC4B0();
    sub_25882BBE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95F708);
  }

  return result;
}

unint64_t sub_25882BBE8()
{
  result = qword_27F95F710;
  if (!qword_27F95F710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95F710);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25882BC90(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_25882BCD8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t get_enum_tag_for_layout_string_Ieg_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_25882BD60(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_25882BDA8(uint64_t result, int a2, int a3)
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

uint64_t sub_25882BE08(uint64_t a1, int a2)
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

uint64_t sub_25882BE50(uint64_t result, int a2, int a3)
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

void sub_25882BED8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
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

void sub_25882BF78(uint64_t a1)
{
  if (!qword_27F95F728)
  {
    sub_25882BFE0(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F95F728);
    }
  }
}

void sub_25882C07C(uint64_t a1)
{
  if (!qword_27F95F748)
  {
    sub_25882C17C(255, &qword_27F95E9D0, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CDF020]);
    sub_2588BC6D8();
    sub_25882C1D0();
    sub_25882CB3C(&qword_27F95F750, MEMORY[0x277CDDEE0], MEMORY[0x277CDDED0]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F95F748);
    }
  }
}

void sub_25882C17C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t sub_25882C1D0()
{
  result = qword_27F95E9D8;
  if (!qword_27F95E9D8)
  {
    sub_25882C17C(255, &qword_27F95E9D0, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CDF020]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E9D8);
  }

  return result;
}

uint64_t sub_25882C2BC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2588BC568();
  *a1 = result;
  return result;
}

uint64_t sub_25882C364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_25882C434(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_25882C504(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_2588BC1E8();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_25882C578(uint64_t a1)
{
  if (!qword_27F95F778)
  {
    sub_25882C60C();
    sub_25882CB3C(&qword_27F95F788, sub_25882C60C, MEMORY[0x277CDEFF0]);
    v1 = sub_2588BD348();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95F778);
    }
  }
}

void sub_25882C60C()
{
  if (!qword_27F95F780)
  {
    v0 = sub_2588BD2A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95F780);
    }
  }
}

uint64_t objectdestroy_40Tm()
{

  if (*(v0 + 48))
  {
  }

  return swift_deallocObject();
}

void sub_25882C75C(uint64_t a1)
{
  if (!qword_27F95F798)
  {
    sub_25882C4D0(255);
    sub_25882C49C(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F95F798);
    }
  }
}

uint64_t sub_25882C7D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25882C830(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_25882C8CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
  }
}

uint64_t sub_25882C934(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25882C9AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25882CA14(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_25882CAA8(uint64_t a1)
{
  if (!qword_27F95F7B0)
  {
    sub_25882BF44(255);
    sub_25882CB3C(&qword_27F95F7B8, sub_25882BF44, MEMORY[0x277CE14C0]);
    v1 = sub_2588BD408();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95F7B0);
    }
  }
}

uint64_t sub_25882CB3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_25882CBB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

id _HKMedicalIDData.displayName.getter()
{
  result = [v0 name];
  if (result)
  {
    v2 = result;
    v3 = sub_2588BD8A8();
    v5 = v4;

    v6 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v6 = v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v6)
    {
      result = [v0 name];
      if (result)
      {
        v7 = result;
        v8 = sub_2588BD8A8();

        return v8;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t _HKMedicalIDData.typedCopy.getter()
{
  swift_getObjectType();
  [v0 copy];
  sub_2588BDD38();
  swift_unknownObjectRelease();
  swift_dynamicCast();
  return v2;
}

uint64_t type metadata accessor for MedicalIDMedicationsCellView(uint64_t a1)
{
  result = qword_27F95F7D0;
  if (!qword_27F95F7D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_25882CDC0(uint64_t a1)
{
  result = type metadata accessor for MedicalIDMedicalInfoViewModel(319);
  if (v2 <= 0x3F)
  {
    result = sub_2587B2F78();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_25882CE60@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F95D0F0 != -1)
  {
    swift_once();
  }

  v3 = qword_27F969840;
  v21 = qword_27F969838;
  v4 = *v1;

  v5 = [v4 medicationInfo];
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
  v17 = (v1 + *(type metadata accessor for MedicalIDMedicationsCellView(0) + 20));
  v19 = *v17;
  v18 = v17[1];
  *a1 = v21;
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  *(a1 + 24) = v7;
  *(a1 + 32) = v9;
  *(a1 + 40) = v14;
  *(a1 + 48) = v16;
  *(a1 + 56) = v19;
  *(a1 + 64) = v18;
}

__n128 sub_25882D088@<Q0>(uint64_t a1@<X8>)
{
  sub_25882CE60(v4);
  v2 = v4[3];
  *(a1 + 32) = v4[2];
  *(a1 + 48) = v2;
  *(a1 + 64) = v5;
  result = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_25882D0D8()
{
  result = qword_27F95F7E0;
  if (!qword_27F95F7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95F7E0);
  }

  return result;
}

uint64_t MedicalIDMedicalInfoViewModel.init(data:calendar:locale:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  v7 = type metadata accessor for MedicalIDMedicalInfoViewModel(0);
  v8 = *(v7 + 20);
  v9 = sub_2588BBB48();
  (*(*(v9 - 8) + 32))(&a4[v8], a2, v9);
  v10 = *(v7 + 24);
  v11 = sub_2588BBAC8();
  v12 = *(*(v11 - 8) + 32);

  return v12(&a4[v10], a3, v11);
}

uint64_t type metadata accessor for MedicalIDMedicalInfoViewModel(uint64_t a1)
{
  result = qword_27F95F7E8;
  if (!qword_27F95F7E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_25882D27C(SEL *a1)
{
  result = [*v1 *a1];
  if (result)
  {
    v3 = result;
    v4 = sub_2588BD8A8();
    v6 = v5;

    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v4 & 0xFFFFFFFFFFFFLL;
    }

    return (v7 != 0);
  }

  return result;
}

Swift::String_optional __swiftcall MedicalIDMedicalInfoViewModel.medicationsInfoDescription()()
{
  v0 = sub_25882D320(&selRef_medicationInfo);
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

Swift::String_optional __swiftcall MedicalIDMedicalInfoViewModel.allergyInfoDescription()()
{
  v0 = sub_25882D320(&selRef_allergyInfo);
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

Swift::String_optional __swiftcall MedicalIDMedicalInfoViewModel.medicalConditionsDescription()()
{
  v0 = sub_25882D320(&selRef_medicalConditions);
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

Swift::String_optional __swiftcall MedicalIDMedicalInfoViewModel.medicalNotesDescription()()
{
  v0 = sub_25882D320(&selRef_medicalNotes);
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t sub_25882D320(SEL *a1)
{
  v2 = [*v1 *a1];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_2588BD8A8();

  return v4;
}

uint64_t MedicalIDMedicalInfoViewModel.calendar.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MedicalIDMedicalInfoViewModel(0) + 20);
  v4 = sub_2588BBB48();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MedicalIDMedicalInfoViewModel.locale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MedicalIDMedicalInfoViewModel(0) + 24);
  v4 = sub_2588BBAC8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MedicalIDMedicalInfoViewModel.locale.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MedicalIDMedicalInfoViewModel(0) + 24);
  v4 = sub_2588BBAC8();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

Swift::String_optional __swiftcall MedicalIDMedicalInfoViewModel.syncWarningFooterText(for:)(MedicalIDUI::MedicalIDListProperty a1)
{
  v2 = *a1;
  v3 = *v1;
  if (!v2)
  {
    v4 = [v3 medicationsListVersion];
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_8:
    v9 = 0;
    goto LABEL_11;
  }

  if (v2 != 1)
  {
    v4 = [v3 conditionsListVersion];
    if (v4)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  v4 = [v3 allergiesListVersion];
  if (!v4)
  {
    goto LABEL_8;
  }

LABEL_4:

  v5 = sub_2588BD858();
  MEMORY[0x28223BE20](v5 - 8);
  sub_2588BD7E8();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v6 = qword_27F95DA88;
  v7 = sub_2588BBAC8();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = v6;
  sub_2588BBAB8();
  v4 = sub_2588BD8B8();
LABEL_11:
  result.value._object = v9;
  result.value._countAndFlagsBits = v4;
  return result;
}

Swift::Bool __swiftcall MedicalIDMedicalInfoViewModel.medicationsListVersionExists()()
{
  v1 = [*v0 medicationsListVersion];
  v2 = v1;
  if (v1)
  {
  }

  return v2 != 0;
}

Swift::Bool __swiftcall MedicalIDMedicalInfoViewModel.allergiesListVersionExists()()
{
  v1 = [*v0 allergiesListVersion];
  v2 = v1;
  if (v1)
  {
  }

  return v2 != 0;
}

Swift::Bool __swiftcall MedicalIDMedicalInfoViewModel.conditionsListVersionExists()()
{
  v1 = [*v0 conditionsListVersion];
  v2 = v1;
  if (v1)
  {
  }

  return v2 != 0;
}

unint64_t sub_25882D80C(uint64_t a1)
{
  result = sub_25878D604();
  if (v2 <= 0x3F)
  {
    result = sub_2588BBB48();
    if (v3 <= 0x3F)
    {
      result = sub_2588BBAC8();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_25882D8A8@<X0>(uint64_t *a2@<X8>)
{
  sub_25882D8E8();
  result = sub_2588BBD18();
  *a2 = result;
  return result;
}

unint64_t sub_25882D8E8()
{
  result = qword_27F95D378;
  if (!qword_27F95D378)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F95D378);
  }

  return result;
}

uint64_t EditPhotoCellView.ViewModel.__allocating_init(initialPictureData:openSettings:authorizationStatusFor:requestAccess:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_allocObject();
  *(v16 + 64) = xmmword_2588C0670;
  *(v16 + 80) = 0;
  *(v16 + 88) = 1;
  *(v16 + 96) = 0u;
  *(v16 + 112) = 0u;
  *(v16 + 128) = 0u;
  *(v16 + 144) = 0;
  sub_2588BBBC8();
  sub_2587C4E98(*(v16 + 64), *(v16 + 72));
  *(v16 + 64) = a1;
  *(v16 + 72) = a2;
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  *(v16 + 32) = a5;
  *(v16 + 40) = a6;
  *(v16 + 48) = a7;
  *(v16 + 56) = a8;
  return v16;
}

Swift::Void __swiftcall EditPhotoCellView.ViewModel.cameraMenuButtonTapped()()
{
  v1 = *MEMORY[0x277CE5EA8];
  v2 = (*(v0 + 32))(*MEMORY[0x277CE5EA8]);
  if ((v2 - 1) < 2)
  {

    sub_25882F1C8();
  }

  else if (v2)
  {
    if (v2 == 3)
    {
      if ((*(v0 + 88) & 1) != 0 || *(v0 + 80) != 1)
      {
        KeyPath = swift_getKeyPath(byte_2588C4710);
        MEMORY[0x28223BE20](KeyPath);
        v17 = v0;
        sub_2588303E8();
        sub_2588BBB88();
      }

      else
      {
        *(v0 + 88) = 0;
      }
    }

    else
    {
      if (qword_27F95D170 != -1)
      {
        swift_once();
      }

      v5 = sub_2588BBC98();
      __swift_project_value_buffer(v5, qword_27F969938);
      v16 = sub_2588BBC78();
      v6 = sub_2588BDBD8();
      if (os_log_type_enabled(v16, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v17 = v8;
        *v7 = 136315394;
        v9 = sub_2588BE0E8();
        v11 = sub_258790224(v9, v10, &v17);

        *(v7 + 4) = v11;
        *(v7 + 12) = 2080;
        type metadata accessor for AVAuthorizationStatus(0);
        v12 = sub_2588BD8C8();
        v14 = sub_258790224(v12, v13, &v17);

        *(v7 + 14) = v14;
        _os_log_impl(&dword_25878B000, v16, v6, "[%s]: Encountered unkown media authorization status: %s", v7, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x259C8DBE0](v8, -1, -1);
        MEMORY[0x259C8DBE0](v7, -1, -1);
      }

      else
      {
      }
    }
  }

  else
  {
    v3 = *(v0 + 48);
    v4 = swift_allocObject();
    swift_weakInit();

    v3(v1, sub_2588303CC, v4);
  }
}

Swift::Void __swiftcall EditPhotoCellView.ViewModel.photoLibraryMenuButtonTapped()()
{
  if ((*(v0 + 88) & 1) != 0 || *(v0 + 80))
  {
    KeyPath = swift_getKeyPath(byte_2588C4710);
    MEMORY[0x28223BE20](KeyPath);
    sub_2588303E8();
    sub_2588BBB88();
  }

  else
  {
    *(v0 + 88) = 0;
  }
}

uint64_t (*EditPhotoCellView.ViewModel.deleteMenuButtonTapped.getter())()
{
  swift_getKeyPath(byte_2588C4738);
  sub_2588303E8();
  sub_2588BBB98();

  if (*(v0 + 72) >> 60 == 15)
  {
    return 0;
  }

  swift_allocObject();
  swift_weakInit();
  return sub_25882CA80;
}

uint64_t EditPhotoCellView.ViewModel.pictureData.getter()
{
  swift_getKeyPath(byte_2588C4738);
  v3 = v0;
  sub_2588303E8();
  sub_2588BBB98();

  v1 = *(v0 + 64);
  sub_2587CC620(v1, *(v3 + 72));
  return v1;
}

BOOL EditPhotoCellView.ViewModel.imagePickerSheetOpen.getter()
{
  swift_getKeyPath(byte_2588C4710);
  sub_2588303E8();
  sub_2588BBB98();

  return (*(v0 + 88) & 1) == 0;
}

void EditPhotoCellView.ViewModel.imagePickerSheetOpen.setter(char a1)
{
  if (a1)
  {
    if (qword_27F95D170 != -1)
    {
      swift_once();
    }

    v2 = sub_2588BBC98();
    __swift_project_value_buffer(v2, qword_27F969938);
    v10 = sub_2588BBC78();
    v3 = sub_2588BDBD8();
    if (os_log_type_enabled(v10, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v11 = v5;
      *v4 = 136315138;
      v6 = sub_2588BE0E8();
      v8 = sub_258790224(v6, v7, &v11);

      *(v4 + 4) = v8;
      _os_log_impl(&dword_25878B000, v10, v3, "[%s]: Didn't expect the sheet to be opened directly", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v5);
      MEMORY[0x259C8DBE0](v5, -1, -1);
      MEMORY[0x259C8DBE0](v4, -1, -1);
    }

    else
    {
    }
  }

  else if (*(v1 + 88) == 1)
  {
    *(v1 + 80) = 0;
    *(v1 + 88) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath(byte_2588C4710);
    MEMORY[0x28223BE20](KeyPath);
    sub_2588303E8();
    sub_2588BBB88();
  }
}

uint64_t EditPhotoCellView.ViewModel.imagePickerSource.getter()
{
  swift_getKeyPath(byte_2588C4710);
  sub_2588303E8();
  sub_2588BBB98();

  return *(v0 + 80);
}

Swift::Void __swiftcall EditPhotoCellView.ViewModel.selected(image:)(UIImage image)
{
  v1 = UIImagePNGRepresentation(image.super.isa);
  if (v1)
  {
    v2 = v1;
    v3 = sub_2588BB908();
    v5 = v4;

    sub_2587CC634(v3, v5);
    sub_25882E734(v3, v5);

    sub_2587C2610(v3, v5);
  }

  else
  {
    if (qword_27F95D170 != -1)
    {
      swift_once();
    }

    v6 = sub_2588BBC98();
    __swift_project_value_buffer(v6, qword_27F969938);
    oslog = sub_2588BBC78();
    v7 = sub_2588BDBD8();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v14 = v9;
      *v8 = 136315394;
      v10 = sub_2588BE0E8();
      v12 = sub_258790224(v10, v11, &v14);

      *(v8 + 4) = v12;
      *(v8 + 12) = 2080;
      *(v8 + 14) = sub_258790224(0xD000000000000010, 0x80000002588CA000, &v14);
      _os_log_impl(&dword_25878B000, oslog, v7, "%s %s Error: could not extract png data from image", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C8DBE0](v9, -1, -1);
      MEMORY[0x259C8DBE0](v8, -1, -1);
    }
  }
}

void EditPhotoCellView.ViewModel.deniedPermissionsAlert.getter(uint64_t *a1@<X8>)
{
  swift_getKeyPath(byte_2588C4760);
  sub_2588303E8();
  sub_2588BBB98();

  swift_beginAccess();
  v3 = v1[12];
  v4 = v1[13];
  v5 = v1[14];
  v6 = v1[15];
  v7 = v1[16];
  v8 = v1[17];
  v9 = v1[18];
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v9;
  sub_25882C8CC(v3, v4, v5, v6, v7, v8, v9);
}

void EditPhotoCellView.ViewModel.deniedPermissionsAlert.setter(__int128 *a1)
{
  v2 = a1[1];
  v15 = *a1;
  v16 = v2;
  v17 = a1[2];
  v18 = *(a1 + 6);
  swift_beginAccess();
  v3 = *(v1 + 7);
  v19[0] = *(v1 + 6);
  v19[1] = v3;
  v19[2] = *(v1 + 8);
  v20 = v1[18];
  sub_258830D88(v19, &v14, sub_2587D1A68);
  v4 = sub_2588306AC(v19, &v15);
  sub_258830DF0(v19, sub_2587D1A68);
  if (v4)
  {
    KeyPath = swift_getKeyPath(byte_2588C4760);
    MEMORY[0x28223BE20](KeyPath);
    v14 = v1;
    sub_2588303E8();
    sub_2588BBB88();
    sub_258830DF0(&v15, sub_2587D1A68);
  }

  else
  {
    v6 = v1[12];
    v7 = v1[13];
    v8 = v1[14];
    v9 = v1[15];
    v10 = v1[16];
    v11 = v1[17];
    v12 = v1[18];
    v13 = v16;
    *(v1 + 6) = v15;
    *(v1 + 7) = v13;
    *(v1 + 8) = v17;
    v1[18] = v18;
    sub_2587FC42C(v6, v7, v8, v9, v10, v11, v12);
  }
}

uint64_t sub_25882E734(uint64_t a1, unint64_t a2)
{
  v5 = *(v2 + 64);
  v6 = *(v2 + 72);
  sub_2587CC620(v5, v6);
  v7 = sub_258830BBC(v5, v6, a1, a2);
  sub_2587C4E98(v5, v6);
  if (v7)
  {
    KeyPath = swift_getKeyPath(byte_2588C4738);
    MEMORY[0x28223BE20](KeyPath);
    sub_2588303E8();
    sub_2588BBB88();
    sub_2587C4E98(a1, a2);
  }

  else
  {
    v10 = *(v2 + 64);
    v11 = *(v2 + 72);
    *(v2 + 64) = a1;
    *(v2 + 72) = a2;

    return sub_2587C4E98(v10, v11);
  }
}

uint64_t sub_25882E884@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_2588C4710);
  sub_2588303E8();
  sub_2588BBB98();

  v5 = *(v3 + 88);
  *a2 = *(v3 + 80);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_25882E938(uint64_t result, char a2)
{
  if ((*(v2 + 88) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *(v2 + 80) != result)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v2 + 80) = result;
    *(v2 + 88) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath(byte_2588C4710);
  MEMORY[0x28223BE20](KeyPath);
  sub_2588303E8();
  sub_2588BBB88();
}

uint64_t sub_25882EA3C(uint64_t result, uint64_t a2, char a3)
{
  *(result + 80) = a2;
  *(result + 88) = a3 & 1;
  return result;
}

void sub_25882EA4C(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = a1[12];
  v5 = a1[13];
  v6 = a1[14];
  v7 = a1[15];
  v8 = a1[16];
  v9 = a1[17];
  v10 = a1[18];
  v11 = *(a2 + 16);
  *(a1 + 6) = *a2;
  *(a1 + 7) = v11;
  *(a1 + 8) = *(a2 + 32);
  a1[18] = *(a2 + 48);
  sub_258830D88(a2, &v12, sub_2587D1A68);
  sub_2587FC42C(v4, v5, v6, v7, v8, v9, v10);
}

uint64_t (*EditPhotoCellView.ViewModel.deniedPermissionsAlert.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath(byte_2588C4760);
  v4[4] = OBJC_IVAR____TtCV11MedicalIDUI17EditPhotoCellView9ViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_2588303E8();
  sub_2588BBB98();

  *v4 = v1;
  swift_getKeyPath(byte_2588C4760);
  sub_2588BBBB8();

  swift_beginAccess();
  return sub_25882EC2C;
}

void sub_25882EC2C(void *a1)
{
  v1 = *a1;
  swift_endAccess();
  *v1 = v1[3];
  swift_getKeyPath(byte_2588C4760);
  sub_2588BBBA8();

  free(v1);
}

uint64_t sub_25882ECB0()
{
  sub_258830D24(0, &qword_27F95D830, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_2588BDAA8();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  sub_2587ABD24(0, 0, v2, &unk_2588C4850, v4);
}

uint64_t static EditPhotoCellView.ViewModel._openSettings@Sendable ()()
{
  sub_258830D24(0, &qword_27F95D830, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_2588BDAA8();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  sub_2587ABD24(0, 0, v2, &unk_2588C4790, v4);
}

id sub_25882EED8(uint64_t a1)
{
  v2 = objc_opt_self();

  return [v2 authorizationStatusForMediaType_];
}

id static EditPhotoCellView.ViewModel._authorizationStatus@Sendable (_:)(uint64_t a1)
{
  v2 = objc_opt_self();

  return [v2 authorizationStatusForMediaType_];
}

void sub_25882EF68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_opt_self();
  v8[4] = a2;
  v8[5] = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_2587D1E1C;
  v8[3] = &block_descriptor_29;
  v7 = _Block_copy(v8);

  [v6 requestAccessForMediaType:a1 completionHandler:v7];
  _Block_release(v7);
}

void static EditPhotoCellView.ViewModel._requestAccess@Sendable (_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_opt_self();
  v8[4] = a2;
  v8[5] = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_2587D1E1C;
  v8[3] = &block_descriptor_3;
  v7 = _Block_copy(v8);

  [v6 requestAccessForMediaType:a1 completionHandler:v7];
  _Block_release(v7);
}

uint64_t EditPhotoCellView.ViewModel.init(initialPictureData:openSettings:authorizationStatusFor:requestAccess:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 64) = xmmword_2588C0670;
  *(v8 + 80) = 0;
  *(v8 + 88) = 1;
  *(v8 + 96) = 0u;
  *(v8 + 112) = 0u;
  *(v8 + 128) = 0u;
  *(v8 + 144) = 0;
  sub_2588BBBC8();
  sub_2587C4E98(*(v8 + 64), *(v8 + 72));
  *(v8 + 64) = a1;
  *(v8 + 72) = a2;
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  *(v8 + 32) = a5;
  *(v8 + 40) = a6;
  *(v8 + 48) = a7;
  *(v8 + 56) = a8;
  return v8;
}

uint64_t sub_25882F1C8()
{
  v1 = v0;
  v2 = type metadata accessor for BasicAlertModel.Action(0);
  v41 = *(v2 - 1);
  MEMORY[0x28223BE20](v2);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2588BD858();
  MEMORY[0x28223BE20](v5 - 8);
  sub_2588BD7E8();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v6 = qword_27F95DA88;
  v7 = sub_2588BBAC8();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = v6;
  sub_2588BBAB8();
  v9 = v8;
  v42 = v6;
  v10 = sub_2588BD8B8();
  v12 = v11;
  v13 = v2[6];
  v14 = sub_2588BBDE8();
  v15 = *(v14 - 8);
  v39 = *(v15 + 56);
  v40 = v14;
  v38 = v15 + 56;
  v39(&v4[v13], 1, 1);
  v16 = swift_allocObject();
  swift_weakInit();
  sub_2588BB9E8();
  v17 = &v4[v2[5]];
  *v17 = v10;
  v17[1] = v12;
  v18 = &v4[v2[7]];
  *v18 = sub_258830D1C;
  v18[1] = v16;
  if (qword_27F95D098 != -1)
  {
    swift_once();
  }

  v43 = v1;
  v37 = xmmword_27F95F7F8;
  v19 = qword_27F95D0A0;

  if (v19 != -1)
  {
    swift_once();
  }

  v20 = unk_27F95F810;
  v36 = qword_27F95F808;
  sub_258830D24(0, &qword_27F95D9E8, type metadata accessor for BasicAlertModel.Action, MEMORY[0x277D84560]);
  v21 = *(v41 + 72);
  v22 = (*(v41 + 80) + 32) & ~*(v41 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_2588BFF50;
  v24 = v23 + v22;
  v25 = sub_258830D88(v4, v24, type metadata accessor for BasicAlertModel.Action);
  v26 = v24 + v21;
  MEMORY[0x28223BE20](v25);

  v27 = sub_2588BD7E8();
  MEMORY[0x28223BE20](v27);
  sub_2588BBAB8();
  v28 = sub_2588BD8B8();
  v30 = v29;
  v31 = v2[6];
  sub_2588BBDD8();
  (v39)(v26 + v31, 0, 1, v40);
  sub_2588BB9E8();
  v32 = (v26 + v2[5]);
  *v32 = v28;
  v32[1] = v30;
  v33 = (v26 + v2[7]);
  *v33 = 0;
  v33[1] = 0;
  v44 = v37;
  v45 = v36;
  v46 = v20;
  v48 = 0;
  v49 = 0;
  v47 = v23;
  EditPhotoCellView.ViewModel.deniedPermissionsAlert.setter(&v44);
  return sub_258830DF0(v4, type metadata accessor for BasicAlertModel.Action);
}

uint64_t sub_25882F6AC(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_25882E734(0, 0xF000000000000000);
  }

  return result;
}

void (*EditPhotoCellView.ViewModel.imagePickerSheetOpen.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 8) = v1;
  swift_getKeyPath(byte_2588C4710);
  *a1 = v1;
  sub_2588303E8();
  sub_2588BBB98();

  *(a1 + 16) = (*(v1 + 88) & 1) == 0;
  return sub_25882F7A4;
}

uint64_t EditPhotoCellView.ViewModel.deinit()
{

  sub_2587C4E98(*(v0 + 64), *(v0 + 72));
  sub_2587FC42C(*(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144));
  v1 = OBJC_IVAR____TtCV11MedicalIDUI17EditPhotoCellView9ViewModel___observationRegistrar;
  v2 = sub_2588BBBD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t EditPhotoCellView.ViewModel.__deallocating_deinit()
{

  sub_2587C4E98(*(v0 + 64), *(v0 + 72));
  sub_2587FC42C(*(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144));
  v1 = OBJC_IVAR____TtCV11MedicalIDUI17EditPhotoCellView9ViewModel___observationRegistrar;
  v2 = sub_2588BBBD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_25882F94C()
{
  v1 = sub_2588BB8E8();
  v2 = *(v1 - 8);
  v3 = swift_task_alloc();
  sub_258830D24(0, &qword_27F95F830, MEMORY[0x28220BE28], MEMORY[0x277D83D88]);
  v4 = swift_task_alloc();
  v5 = [objc_opt_self() internalHealthSettingsURLString];
  sub_2588BD8A8();

  sub_2588BB8D8();

  if ((*(v2 + 48))(v4, 1, v1) == 1)
  {
    sub_258830B3C(v4);
  }

  else
  {
    (*(v2 + 32))(v3, v4, v1);

    v6 = [objc_opt_self() defaultWorkspace];
    if (v6)
    {
      v7 = v6;
      v8 = sub_2588BB8B8();
      sub_25886369C(MEMORY[0x277D84F90]);
      v9 = sub_2588BD758();

      [v7 openSensitiveURL:v8 withOptions:v9];
    }

    (*(v2 + 8))(v3, v1);
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_25882FBCC(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = *(result + 16);

    v2(v3);
  }

  return result;
}

uint64_t sub_25882FC44(char a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if ((a1 & 1) == 0)
    {
    }

    if ((*(result + 88) & 1) == 0 && *(result + 80) == 1)
    {
      *(result + 88) = 0;
    }

    KeyPath = swift_getKeyPath(byte_2588C4710);
    MEMORY[0x28223BE20](KeyPath);
    sub_2588303E8();
    sub_2588BBB88();
  }

  return result;
}

uint64_t sub_25882FD6C()
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
  *&xmmword_27F95F7F8 = result;
  *(&xmmword_27F95F7F8 + 1) = v5;
  return result;
}

uint64_t sub_25882FEBC()
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
  qword_27F95F808 = result;
  unk_27F95F810 = v5;
  return result;
}

uint64_t sub_25883000C@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_2588BB718();
    if (v10)
    {
      v11 = sub_2588BB738();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_2588BB728();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_2588BB718();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_2588BB738();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_2588BB728();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_25883023C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_25883048C(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_2587C2610(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_25883000C(v13, a3, a4, &v12);
  v10 = v4;
  sub_2587C2610(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

void sub_2588303D4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 80) = *(v0 + 24);
  *(v1 + 88) = v2;
}