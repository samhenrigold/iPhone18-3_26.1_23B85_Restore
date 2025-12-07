void sub_2587A869C(uint64_t a1)
{
  if (!qword_27F95D348)
  {
    _s12SheetContentVMa(255);
    sub_2587A89AC(255, &qword_27F95D350, &qword_27F95D358, &qword_27F95D360, 0x277CCD4D8);
    v1 = sub_2588BC1E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95D348);
    }
  }
}

void sub_2587A8724(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

unint64_t sub_2587A878C()
{
  result = qword_27F95D380;
  if (!qword_27F95D380)
  {
    sub_2587A8614(255);
    sub_2587A880C();
    sub_2587A8934();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95D380);
  }

  return result;
}

unint64_t sub_2587A880C()
{
  result = qword_27F95D388;
  if (!qword_27F95D388)
  {
    sub_2587A869C(255);
    sub_2587AA928(&qword_27F95D390, _s12SheetContentVMa, &unk_2588C0DD8);
    sub_2587A88BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95D388);
  }

  return result;
}

unint64_t sub_2587A88BC()
{
  result = qword_27F95D398;
  if (!qword_27F95D398)
  {
    sub_2587A89AC(255, &qword_27F95D350, &qword_27F95D358, &qword_27F95D360, 0x277CCD4D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95D398);
  }

  return result;
}

unint64_t sub_2587A8934()
{
  result = qword_27F95D3A0;
  if (!qword_27F95D3A0)
  {
    sub_2587A89AC(255, &qword_27F95D368, &qword_27F95D370, &qword_27F95D378, 0x277CCD7D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95D3A0);
  }

  return result;
}

void sub_2587A89AC(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, void *a5)
{
  if (!*a2)
  {
    sub_2587A8724(255, a3, a4, a5, MEMORY[0x277D83D88]);
    v6 = sub_2588BCA88();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_2587A8A1C()
{
  result = qword_27F95D3D0;
  if (!qword_27F95D3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95D3D0);
  }

  return result;
}

unint64_t sub_2587A8A70()
{
  result = qword_27F95D3D8;
  if (!qword_27F95D3D8)
  {
    sub_2587A9BE0(255, &qword_27F95D328, sub_2587A84B8, sub_2587A8540, MEMORY[0x277CE0338]);
    sub_2587A8BBC();
    sub_2587A8614(255);
    type metadata accessor for MedicalIDDataManager(255);
    sub_2587A878C();
    sub_2587AA928(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager, &protocol conformance descriptor for MedicalIDDataManager);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95D3D8);
  }

  return result;
}

unint64_t sub_2587A8BBC()
{
  result = qword_27F95D3E0;
  if (!qword_27F95D3E0)
  {
    sub_2587A84B8(255);
    sub_2587A8614(255);
    type metadata accessor for MedicalIDDataManager(255);
    sub_2587A878C();
    sub_2587AA928(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager, &protocol conformance descriptor for MedicalIDDataManager);
    swift_getOpaqueTypeConformance2();
    sub_2587A8CBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95D3E0);
  }

  return result;
}

unint64_t sub_2587A8CBC()
{
  result = qword_27F95D3E8;
  if (!qword_27F95D3E8)
  {
    sub_2587A89AC(255, &qword_27F95D3B0, &qword_27F95D3B8, &qword_27F95D3C0, off_2798A65E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95D3E8);
  }

  return result;
}

unint64_t sub_2587A8D34()
{
  result = qword_27F95D3F0;
  if (!qword_27F95D3F0)
  {
    sub_2587A8454(255, &qword_27F95D1C0, sub_2587A7578, &_s10BackgroundVN);
    sub_2587A76AC(255);
    sub_2587A9BE0(255, &qword_27F95D328, sub_2587A84B8, sub_2587A8540, MEMORY[0x277CE0338]);
    sub_2587AA928(&qword_27F95D3C8, sub_2587A76AC, MEMORY[0x277CDF340]);
    sub_2587A8A1C();
    sub_2587A8A70();
    swift_getOpaqueTypeConformance2();
    sub_2587A8EB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95D3F0);
  }

  return result;
}

unint64_t sub_2587A8EB8()
{
  result = qword_27F95D3F8;
  if (!qword_27F95D3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95D3F8);
  }

  return result;
}

uint64_t sub_2587A8F0C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = a5;
  v9 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2588BC928();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v17 - v14;
  (*(v9 + 16))(v11, a1, a4);
  (*(v9 + 32))(v15, v11, a4);
  v15[*(v12 + 36)] = a2;
  MEMORY[0x259C8C270](v15, a3, v12, v17);
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_2587A90C4(uint64_t a1, id *a2)
{
  result = sub_2588BD888();
  *a2 = 0;
  return result;
}

uint64_t sub_2587A913C(uint64_t a1, id *a2)
{
  v3 = sub_2588BD898();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_2587A91BC@<X0>(uint64_t *a2@<X8>)
{
  sub_2588BD8A8();
  v3 = sub_2588BD868();

  *a2 = v3;
  return result;
}

uint64_t sub_2587A921C(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x259C8AD70](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_2587A9270(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = 1;
  v3 = MEMORY[0x259C8AD80](a1, &v7);
  v4 = v7;
  v5 = v8;
  if (v8)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return v3 & 1;
}

uint64_t sub_2587A92F0()
{
  v1 = *v0;
  sub_2588BE038();
  MEMORY[0x259C8D1C0](v1);
  return sub_2588BE078();
}

uint64_t sub_2587A9364(uint64_t a1)
{
  v2 = *v1;
  sub_2588BE038();
  MEMORY[0x259C8D1C0](v2);
  return sub_2588BE078();
}

uint64_t sub_2587A93A8(uint64_t a1)
{
  sub_2587AA928(&qword_27F95D558, type metadata accessor for AVMediaType, &unk_2588BF55C);
  sub_2587AA928(&unk_27F95D560, type metadata accessor for AVMediaType, &unk_2588BF4FC);

  return sub_2588BDF48();
}

uint64_t sub_2587A9464(uint64_t a1)
{
  sub_2587AA928(&qword_27F95D660, type metadata accessor for InfoKey, &unk_2588BFC58);
  sub_2587AA928(&qword_27F95D668, type metadata accessor for InfoKey, &unk_2588BF7A4);

  return sub_2588BDF48();
}

uint64_t sub_2587A9520(uint64_t a1)
{
  sub_2587AA928(&qword_27F95D650, type metadata accessor for AttributeName, &unk_2588BFBD0);
  sub_2587AA928(&qword_27F95D658, type metadata accessor for AttributeName, &unk_2588BF8B8);

  return sub_2588BDF48();
}

uint64_t sub_2587A95DC@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_2588BD868();

  *a2 = v3;
  return result;
}

uint64_t sub_2587A9624(uint64_t a1)
{
  sub_2587AA928(&qword_27F95D640, type metadata accessor for TraitKey, &unk_2588BFC14);
  sub_2587AA928(&qword_27F95D648, type metadata accessor for TraitKey, &unk_2588BF9CC);

  return sub_2588BDF48();
}

double sub_2587A96E0@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_2587A96EC(uint64_t a1)
{
  sub_2587AA928(&qword_27F95D628, type metadata accessor for Weight, &unk_2588BFB40);
  sub_2587AA928(&qword_27F95D630, type metadata accessor for Weight, &unk_2588BFAE0);
  sub_2587AA8D4();
  return sub_2588BDF48();
}

uint64_t sub_2587A97B4()
{
  v0 = sub_2588BD8A8();
  v1 = MEMORY[0x259C8CAD0](v0);

  return v1;
}

uint64_t sub_2587A97F0(uint64_t a1)
{
  sub_2588BD8A8();
  sub_2588BD908();
}

uint64_t sub_2587A9844(uint64_t a1)
{
  sub_2588BD8A8();
  sub_2588BE038();
  sub_2588BD908();
  v1 = sub_2588BE078();

  return v1;
}

uint64_t sub_2587A98C0()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  return MEMORY[0x259C8D1E0](*&v1);
}

uint64_t sub_2587A98FC(uint64_t a1)
{
  v2 = *v1;
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  return MEMORY[0x2821FE3B0](a1, *&v2);
}

uint64_t sub_2587A9914(void *a1, uint64_t *a2)
{
  v2 = sub_2588BD8A8();
  v4 = v3;
  if (v2 == sub_2588BD8A8() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_2588BDF98();
  }

  return v7 & 1;
}

uint64_t sub_2587A99B0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

void sub_2587A9A08(uint64_t a1)
{
  if (!qword_27F95D418)
  {
    sub_2587A9ABC(255);
    sub_2587AA928(&qword_27F95D440, sub_2587A9ABC, MEMORY[0x277CE1198]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F95D418);
    }
  }
}

void sub_2587A9ABC(uint64_t a1)
{
  if (!qword_27F95D420)
  {
    sub_2587A9B50(255);
    sub_2587AA928(&qword_27F95D438, sub_2587A9B50, MEMORY[0x277CE14C0]);
    v1 = sub_2588BD408();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95D420);
    }
  }
}

void sub_2587A9B84()
{
  if (!qword_27F95D430)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F95D430);
    }
  }
}

void sub_2587A9BE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_2587A9C64(uint64_t a1)
{
  if (!qword_27F95D450)
  {
    sub_25878E1A0(255, &qword_27F95D458, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    sub_2587A9CEC();
    v1 = sub_2588BC928();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95D450);
    }
  }
}

unint64_t sub_2587A9CEC()
{
  result = qword_27F95D460;
  if (!qword_27F95D460)
  {
    sub_25878E1A0(255, &qword_27F95D458, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95D460);
  }

  return result;
}

void sub_2587A9D80(uint64_t a1)
{
  if (!qword_27F95D470)
  {
    sub_2587A9DE4(255);
    sub_2587A9E5C();
    v1 = sub_2588BC928();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95D470);
    }
  }
}

void sub_2587A9DE4(uint64_t a1)
{
  if (!qword_27F95D478)
  {
    sub_2587A8724(255, &qword_27F95D480, &qword_27F95D488, 0x277CCAE20, MEMORY[0x28220B510]);
    v1 = sub_2588BDCE8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95D478);
    }
  }
}

unint64_t sub_2587A9E5C()
{
  result = qword_27F95D490;
  if (!qword_27F95D490)
  {
    sub_2587A9DE4(255);
    sub_2587A9ED4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95D490);
  }

  return result;
}

unint64_t sub_2587A9ED4()
{
  result = qword_27F95D498;
  if (!qword_27F95D498)
  {
    sub_2587A8724(255, &qword_27F95D480, &qword_27F95D488, 0x277CCAE20, MEMORY[0x28220B510]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95D498);
  }

  return result;
}

uint64_t sub_2587A9F40(uint64_t a1, uint64_t a2)
{
  sub_2587A9DE4(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2587AA1EC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2587AA20C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

unint64_t sub_2587AA634()
{
  result = qword_27F95D5F0;
  if (!qword_27F95D5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95D5F0);
  }

  return result;
}

unint64_t sub_2587AA738()
{
  result = qword_27F95D608;
  if (!qword_27F95D608)
  {
    sub_2587AA7E8();
    sub_25878E1A0(255, &qword_27F95D618, MEMORY[0x277CE14E0], MEMORY[0x277D83D88]);
    sub_2588BDA78();
    result = swift_getFunctionTypeMetadataGlobalActor();
    atomic_store(result, &qword_27F95D608);
  }

  return result;
}

unint64_t sub_2587AA7E8()
{
  result = qword_27F95D610;
  if (!qword_27F95D610)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F95D610);
  }

  return result;
}

uint64_t sub_2587AA84C(void *a1, uint64_t *a2)
{
  sub_2588BC248();

  return sub_2587A73B8(a1, a2);
}

unint64_t sub_2587AA8D4()
{
  result = qword_27F95D638;
  if (!qword_27F95D638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95D638);
  }

  return result;
}

uint64_t sub_2587AA928(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t HealthKitMedicalIDDataProvider.statePublisher.getter()
{
  sub_2587AAB5C(0);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v5 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8[1] = *(v0 + 16);
  sub_2587AABF0(0);
  sub_2587AADCC(&qword_27F95D818, sub_2587AABF0, MEMORY[0x277CBCE48]);
  sub_2587AADCC(&qword_27F95D820, sub_2587AAC58, &protocol conformance descriptor for LoadState<A>);
  sub_2588BBDA8();
  sub_2587AADCC(&qword_27F95D828, sub_2587AAB5C, MEMORY[0x277CBCBE0]);
  v6 = sub_2588BBD98();
  (*(v3 + 8))(v5, v2);
  return v6;
}

void sub_2587AAB5C(uint64_t a1)
{
  if (!qword_27F95D7F0)
  {
    sub_2587AABF0(255);
    sub_2587AADCC(&qword_27F95D818, sub_2587AABF0, MEMORY[0x277CBCE48]);
    v1 = sub_2588BBCA8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95D7F0);
    }
  }
}

void sub_2587AABF0(uint64_t a1)
{
  if (!qword_27F95D7F8)
  {
    sub_2587AAC58(255);
    v1 = sub_2588BBD48();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95D7F8);
    }
  }
}

void sub_2587AAC58(uint64_t a1)
{
  if (!qword_27F95D800)
  {
    sub_2587AE90C(255, &qword_280C0DE10, &qword_280C0DE18, 0x277CCDDF0);
    v3 = v2;
    v4 = sub_2587AACD4();
    State = type metadata accessor for LoadState(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(State, &qword_27F95D800);
    }
  }
}

unint64_t sub_2587AACD4()
{
  result = qword_27F95D808;
  if (!qword_27F95D808)
  {
    sub_2587AE90C(255, &qword_280C0DE10, &qword_280C0DE18, 0x277CCDDF0);
    sub_2587AAD64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95D808);
  }

  return result;
}

unint64_t sub_2587AAD64()
{
  result = qword_27F95D810;
  if (!qword_27F95D810)
  {
    sub_25878E130(255, &qword_280C0DE18, 0x277CCDDF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95D810);
  }

  return result;
}

uint64_t sub_2587AADCC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *HealthKitMedicalIDDataProvider.__allocating_init(fetchMedicalIDDataFromStore:saveMedicalIDDataToStore:medicalIDUpdateNotificationPublishers:externalMedicalIDData:displayConfiguration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, id a6, void *a7)
{
  sub_2587AE1F8(0, &qword_27F95D830, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v28 - v15;
  v17 = swift_allocObject();
  v29 = 1;
  sub_2587AABF0(0);
  swift_allocObject();
  v18 = sub_2588BBD58();
  v19 = MEMORY[0x277D84FA0];
  v17[2] = v18;
  v17[3] = v19;
  v17[6] = a3;
  v17[7] = a4;
  v17[4] = a1;
  v17[5] = a2;
  v17[10] = 0;
  v17[11] = a7;
  v17[8] = 0;
  v17[9] = a6;
  if (a6)
  {
    v29 = a6;
    a6 = a6;

    v20 = a7;
    sub_2588BBD38();
  }

  else
  {

    v21 = a7;
  }

  v22 = sub_2588BDAA8();
  (*(*(v22 - 8) + 56))(v16, 1, 1, v22);
  sub_2588BDA78();

  v23 = sub_2588BDA68();
  v24 = swift_allocObject();
  v25 = MEMORY[0x277D85700];
  v24[2] = v23;
  v24[3] = v25;
  v24[4] = v17;
  v26 = sub_2587ABD24(0, 0, v16, &unk_2588C0310, v24);
  swift_beginAccess();
  v17[10] = v26;

  sub_2587AC4E0(a5);

  return v17;
}

void *HealthKitMedicalIDDataProvider.init(fetchMedicalIDDataFromStore:saveMedicalIDDataToStore:medicalIDUpdateNotificationPublishers:externalMedicalIDData:displayConfiguration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, id a6, void *a7)
{
  v8 = v7;
  sub_2587AE1F8(0, &qword_27F95D830, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v30 - v17;
  v31 = 1;
  sub_2587AABF0(0);
  swift_allocObject();
  v19 = sub_2588BBD58();
  v20 = MEMORY[0x277D84FA0];
  v7[2] = v19;
  v7[3] = v20;
  v7[6] = a3;
  v7[7] = a4;
  v7[4] = a1;
  v7[5] = a2;
  v7[10] = 0;
  v7[11] = a7;
  v7[8] = 0;
  v7[9] = a6;
  if (a6)
  {
    v31 = a6;
    v21 = a6;

    v22 = a7;
    a6 = v21;
    sub_2588BBD38();
  }

  else
  {

    v23 = a7;
  }

  v24 = sub_2588BDAA8();
  (*(*(v24 - 8) + 56))(v18, 1, 1, v24);
  sub_2588BDA78();

  v25 = sub_2588BDA68();
  v26 = swift_allocObject();
  v27 = MEMORY[0x277D85700];
  v26[2] = v25;
  v26[3] = v27;
  v26[4] = v8;
  v28 = sub_2587ABD24(0, 0, v18, &unk_2588BFD50, v26);
  swift_beginAccess();
  v8[10] = v28;

  sub_2587AC4E0(a5);

  return v8;
}

uint64_t sub_2587AB348()
{
  v0[2] = sub_2588BDA78();
  v0[3] = sub_2588BDA68();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_2587AB3F4;

  return sub_2587AB590();
}

uint64_t sub_2587AB3F4()
{

  v1 = sub_2588BDA28();

  return MEMORY[0x2822009F8](sub_2587AB530, v1, v0);
}

uint64_t sub_2587AB530()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2587AB590()
{
  v1[3] = v0;
  v1[4] = *v0;
  sub_2588BDA78();
  v1[5] = sub_2588BDA68();
  v3 = sub_2588BDA28();
  v1[6] = v3;
  v1[7] = v2;

  return MEMORY[0x2822009F8](sub_2587AB650, v3, v2);
}

uint64_t sub_2587AB650()
{
  v3 = (*(*(v0 + 24) + 32) + **(*(v0 + 24) + 32));
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_2587AB73C;

  return v3();
}

uint64_t sub_2587AB73C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = v4[6];
    v6 = v4[7];
    v7 = sub_2587ABAB0;
  }

  else
  {
    v4[10] = a1;
    v5 = v4[6];
    v6 = v4[7];
    v7 = sub_2587AB864;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_2587AB864()
{
  v1 = v0[10];
  v2 = v0[3];
  v3 = *(v2 + 64);
  *(v2 + 64) = v1;
  v4 = v1;

  v0[2] = v1;
  sub_2588BBD38();
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_2587AB928;

  return sub_2587AC79C();
}

uint64_t sub_2587AB928()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_2587ABA48, v3, v2);
}

uint64_t sub_2587ABA48()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2587ABAB0()
{
  v19 = v0;

  if (qword_27F95D170 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 72);
  v2 = sub_2588BBC98();
  __swift_project_value_buffer(v2, qword_27F969938);
  v3 = v1;
  v4 = sub_2588BBC78();
  v5 = sub_2588BDBD8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 72);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v8 = 136315650;
    v11 = sub_2588BE0E8();
    v13 = sub_258790224(v11, v12, &v18);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_258790224(0xD000000000000016, 0x80000002588C8E00, &v18);
    *(v8 + 22) = 2112;
    v14 = v7;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 24) = v15;
    *v9 = v15;
    _os_log_impl(&dword_25878B000, v4, v5, "[%s][%s]: Could not refresh medical id. Store error: %@", v8, 0x20u);
    sub_2587AE964(v9, &qword_27F95D870, &qword_27F95D878, 0x277D82BB8, sub_2587AE90C);
    MEMORY[0x259C8DBE0](v9, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x259C8DBE0](v10, -1, -1);
    MEMORY[0x259C8DBE0](v8, -1, -1);
  }

  else
  {
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_2587ABD24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_2587AE1F8(0, &qword_27F95D830, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_2587AE454(a3, v25 - v10);
  v12 = sub_2588BDAA8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2587AE964(v11, &qword_27F95D830, MEMORY[0x277D85720], MEMORY[0x277D83D88], sub_2587AE1F8);
  }

  else
  {
    sub_2588BDA98();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_2588BDA28();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_2588BD8E8() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_2587AE964(a3, &qword_27F95D830, MEMORY[0x277D85720], MEMORY[0x277D83D88], sub_2587AE1F8);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2587AE964(a3, &qword_27F95D830, MEMORY[0x277D85720], MEMORY[0x277D83D88], sub_2587AE1F8);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_2587AC0D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_2587AE1F8(0, &qword_27F95D830, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_2587AE454(a3, v25 - v10);
  v12 = sub_2588BDAA8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2587AE964(v11, &qword_27F95D830, MEMORY[0x277D85720], MEMORY[0x277D83D88], sub_2587AE1F8);
  }

  else
  {
    sub_2588BDA98();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_2588BDA28();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v25[0] = a3;
      v19 = sub_2588BD8E8() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;
      sub_25878E1F0(0, &qword_27F95D838, MEMORY[0x277D84F78] + 8, MEMORY[0x277D83D88]);

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_2587AE964(v25[0], &qword_27F95D830, MEMORY[0x277D85720], MEMORY[0x277D83D88], sub_2587AE1F8);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2587AE964(a3, &qword_27F95D830, MEMORY[0x277D85720], MEMORY[0x277D83D88], sub_2587AE1F8);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  sub_25878E1F0(0, &qword_27F95D838, MEMORY[0x277D84F78] + 8, MEMORY[0x277D83D88]);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_2587AC4E0(uint64_t a1)
{
  v3 = *v1;
  sub_2587AE668(0);
  v13[0] = v4;
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[1] = a1;
  sub_2587AE6FC();
  sub_2587AE1F8(0, &qword_27F95D858, sub_2587AE6FC, MEMORY[0x277D83940]);
  sub_2587AADCC(&qword_27F95D850, sub_2587AE6FC, MEMORY[0x277CBCD90]);
  sub_2587AE760();

  sub_2588BBCC8();
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v3;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_2587AE7E8;
  *(v10 + 24) = v9;
  sub_2587AADCC(&qword_27F95D868, sub_2587AE668, MEMORY[0x277CBCD48]);
  v11 = v13[0];
  sub_2588BBDB8();

  (*(v5 + 8))(v7, v11);
  swift_beginAccess();
  sub_2588BBCE8();
  swift_endAccess();
}

uint64_t sub_2587AC79C()
{
  v1[2] = v0;
  v1[3] = *v0;
  sub_2588BDA78();
  v1[4] = sub_2588BDA68();
  v3 = sub_2588BDA28();
  v1[5] = v3;
  v1[6] = v2;

  return MEMORY[0x2822009F8](sub_2587AC85C, v3, v2);
}

uint64_t sub_2587AC85C()
{
  v23 = v0;
  v1 = [*(v0[2] + 88) entryPoint];
  v2 = v0[2];
  if (((v1 - 1) & 0xFFFFFFFFFFFFFFFDLL) != 0)
  {
    v3 = *(v2 + 72);
    v0[7] = v3;
    if (v3)
    {
      v4 = *(v2 + 64);
      v5 = v4;
      v6 = v3;
      LOBYTE(v4) = sub_2587AD094(v4);

      if (v4)
      {
        if (qword_27F95D170 != -1)
        {
          swift_once();
        }

        v7 = sub_2588BBC98();
        v0[8] = __swift_project_value_buffer(v7, qword_27F969938);
        v8 = sub_2588BBC78();
        v9 = sub_2588BDBC8();
        if (os_log_type_enabled(v8, v9))
        {
          v10 = swift_slowAlloc();
          v11 = swift_slowAlloc();
          v22 = v11;
          *v10 = 136315394;
          v12 = sub_2588BE0E8();
          v14 = sub_258790224(v12, v13, &v22);

          *(v10 + 4) = v14;
          *(v10 + 12) = 2080;
          *(v10 + 14) = sub_258790224(0xD00000000000002BLL, 0x80000002588C8E20, &v22);
          _os_log_impl(&dword_25878B000, v8, v9, "[%s][%s]: Saving external medical id data", v10, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x259C8DBE0](v11, -1, -1);
          MEMORY[0x259C8DBE0](v10, -1, -1);
        }

        v15 = v0[2];
        v16 = *(v2 + 72);
        *(v2 + 72) = 0;

        v21 = (*(v15 + 48) + **(v15 + 48));
        v17 = swift_task_alloc();
        v0[9] = v17;
        *v17 = v0;
        v17[1] = sub_2587ACB84;

        return v21(v6);
      }

      v2 = v0[2];
    }
  }

  v19 = *(v2 + 72);
  *(v2 + 72) = 0;

  v20 = v0[1];

  return v20();
}

uint64_t sub_2587ACB84()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  v3 = *(v2 + 48);
  v4 = *(v2 + 40);
  if (v0)
  {
    v5 = sub_2587ACE58;
  }

  else
  {
    v5 = sub_2587ACCC0;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2587ACCC0()
{
  v13 = v0;

  v1 = sub_2588BBC78();
  v2 = sub_2588BDBC8();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 56);
  if (v3)
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315394;
    v7 = sub_2588BE0E8();
    v9 = sub_258790224(v7, v8, &v12);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_258790224(0xD00000000000002BLL, 0x80000002588C8E20, &v12);
    _os_log_impl(&dword_25878B000, v1, v2, "[%s][%s]: Saved external medical id data", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C8DBE0](v6, -1, -1);
    MEMORY[0x259C8DBE0](v5, -1, -1);
  }

  else
  {
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_2587ACE58()
{
  v19 = v0;
  v1 = v0[10];

  v2 = v1;
  v3 = sub_2588BBC78();
  v4 = sub_2588BDBD8();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[10];
  v7 = v0[7];
  if (v5)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v8 = 136315650;
    v11 = sub_2588BE0E8();
    v13 = sub_258790224(v11, v12, &v18);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_258790224(0xD00000000000002BLL, 0x80000002588C8E20, &v18);
    *(v8 + 22) = 2112;
    v14 = v6;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 24) = v15;
    *v9 = v15;
    _os_log_impl(&dword_25878B000, v3, v4, "[%s][%s]: Could not save external medical id data due to store error: %@", v8, 0x20u);
    sub_2587AE964(v9, &qword_27F95D870, &qword_27F95D878, 0x277D82BB8, sub_2587AE90C);
    MEMORY[0x259C8DBE0](v9, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x259C8DBE0](v10, -1, -1);
    MEMORY[0x259C8DBE0](v8, -1, -1);
  }

  else
  {
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_2587AD094(void *a1)
{
  if (a1)
  {
    sub_25878E130(0, &qword_280C0DE18, 0x277CCDDF0);
    v3 = a1;
    v4 = v1;
    v5 = sub_2588BDCD8();

    if (v5)
    {
      v6 = 0;
    }

    else
    {
      v7 = sub_2588BB9B8();
      v8 = *(v7 - 8);
      v9 = *(v8 + 64);
      MEMORY[0x28223BE20](v7);
      v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
      v11 = v3;
      v12 = [v4 dateSaved];
      v13 = MEMORY[0x28223BE20](v12);
      if (v13)
      {
        v29 = v27;
        v14 = v13;
        sub_2588BB988();

        v15 = *(v8 + 32);
        v16 = v15(v27 - v10, v27 - v10, v7);
        v27[1] = v27;
        MEMORY[0x28223BE20](v16);
        v28 = v11;
        v17 = [v11 dateSaved];
        v18 = MEMORY[0x28223BE20](v17);
        if (v18)
        {
          v19 = v18;
          sub_2588BB988();

          v15(v27 - v10, v27 - v10, v7);
          sub_2587AE9C4();
          v20 = sub_2588BD7B8();

          v21 = *(v8 + 8);
          v21(v27 - v10, v7);
          v21(v27 - v10, v7);
          v6 = v20 ^ 1;
        }

        else
        {
          (*(v8 + 8))(v27 - v10, v7);

          v6 = 1;
        }
      }

      else
      {
        v22 = [v11 dateSaved];
        sub_2587AE1F8(0, &qword_27F95D880, MEMORY[0x28220BFD0], MEMORY[0x277D83D88]);
        MEMORY[0x28223BE20](v23 - 8);
        v25 = v27 - v24;
        v6 = v22 == 0;
        if (v22)
        {
          sub_2588BB988();

          (*(v8 + 56))(v25, 0, 1, v7);
        }

        else
        {

          (*(v8 + 56))(v25, 1, 1, v7);
        }

        sub_2587AE964(v25, &qword_27F95D880, MEMORY[0x28220BFD0], MEMORY[0x277D83D88], sub_2587AE1F8);
      }
    }
  }

  else
  {
    v6 = 1;
  }

  return v6 & 1;
}

uint64_t sub_2587AD494(uint64_t a1, uint64_t a2)
{
  sub_2587AE1F8(0, &qword_27F95D830, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v21 - v3;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    if (qword_27F95D170 != -1)
    {
      swift_once();
    }

    v7 = sub_2588BBC98();
    __swift_project_value_buffer(v7, qword_27F969938);
    v8 = sub_2588BBC78();
    v9 = sub_2588BDBC8();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v21[0] = v11;
      *v10 = 136315394;
      v12 = sub_2588BE0E8();
      v14 = sub_258790224(v12, v13, v21);

      *(v10 + 4) = v14;
      *(v10 + 12) = 2080;
      *(v10 + 14) = sub_258790224(0x6269726373627573, 0xEE00293A6F742865, v21);
      _os_log_impl(&dword_25878B000, v8, v9, "[%s][%s]: received a medical id update notification. Refreshing...", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C8DBE0](v11, -1, -1);
      MEMORY[0x259C8DBE0](v10, -1, -1);
    }

    v15 = sub_2588BDAA8();
    (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
    v16 = swift_allocObject();
    swift_weakInit();
    sub_2588BDA78();

    v17 = sub_2588BDA68();
    v18 = swift_allocObject();
    v19 = MEMORY[0x277D85700];
    v18[2] = v17;
    v18[3] = v19;
    v18[4] = v16;

    v20 = sub_2587ABD24(0, 0, v4, &unk_2588BFDF0, v18);
    swift_beginAccess();
    *(v6 + 80) = v20;
  }

  return result;
}

uint64_t sub_2587AD7C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  sub_2588BDA78();
  v4[6] = sub_2588BDA68();
  v6 = sub_2588BDA28();
  v4[7] = v6;
  v4[8] = v5;

  return MEMORY[0x2822009F8](sub_2587AD860, v6, v5);
}

uint64_t sub_2587AD860()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[10] = v2;
    *v2 = v0;
    v2[1] = sub_2587AD950;

    return sub_2587AB590();
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_2587AD950()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_2587ADA70, v3, v2);
}

uint64_t sub_2587ADA70()
{

  v1 = *(v0 + 8);

  return v1();
}

id *HealthKitMedicalIDDataProvider.deinit()
{

  return v0;
}

uint64_t HealthKitMedicalIDDataProvider.__deallocating_deinit()
{
  HealthKitMedicalIDDataProvider.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_2587ADB68(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2587ADC60;

  return v6(a1);
}

uint64_t sub_2587ADC60()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2587ADD58(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_2587ADE4C;

  return v5(v2 + 32);
}

uint64_t sub_2587ADE4C()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t _s11MedicalIDUI09HealthKitA14IDDataProviderC37medicalIDUpdateNotificationPublishersSay7Combine12AnyPublisherVyyts5NeverOGGvgZ_0()
{
  sub_25878E1F0(0, &qword_280C0DDB8, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2588BFD30;
  result = *MEMORY[0x277CCE4B0];
  if (!*MEMORY[0x277CCE4B0])
  {
    goto LABEL_14;
  }

  sub_2588BD938();
  sub_2588BBC38();
  swift_allocObject();
  *(inited + 32) = sub_2588BBC28();
  result = *MEMORY[0x277CCE4B8];
  if (*MEMORY[0x277CCE4B8])
  {
    sub_2588BD938();
    swift_allocObject();
    *(inited + 40) = sub_2588BBC28();
    v2 = MEMORY[0x277D84F90];
    result = sub_2588BDE68();
    if ((inited & 0xC000000000000001) != 0)
    {
      MEMORY[0x259C8CF80](0, inited);
    }

    else
    {
      if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }
    }

    sub_2587AADCC(&qword_27F95D890, MEMORY[0x277D112E8], MEMORY[0x277D112E0]);
    sub_2588BBD98();

    sub_2588BDE38();
    sub_2588BDE78();
    sub_2588BDE88();
    result = sub_2588BDE48();
    if ((inited & 0xC000000000000001) != 0)
    {
      MEMORY[0x259C8CF80](1, inited);
LABEL_10:

      sub_2588BBD98();

      sub_2588BDE38();
      sub_2588BDE78();
      sub_2588BDE88();
      sub_2588BDE48();
      return v2;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {

      goto LABEL_10;
    }

    goto LABEL_13;
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_2587AE1F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2587AE25C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2587AE310;

  return sub_2587AB348();
}

uint64_t sub_2587AE310()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2587AE454(uint64_t a1, uint64_t a2)
{
  sub_2587AE1F8(0, &qword_27F95D830, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2587AE4E8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2587AEAC8;

  return sub_2587ADD58(a1, v4);
}

uint64_t sub_2587AE5A0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2587AE310;

  return sub_2587ADD58(a1, v4);
}

id sub_2587AE658(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

void sub_2587AE668(uint64_t a1)
{
  if (!qword_27F95D840)
  {
    sub_2587AE6FC();
    sub_2587AADCC(&qword_27F95D850, sub_2587AE6FC, MEMORY[0x277CBCD90]);
    v1 = sub_2588BBCB8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95D840);
    }
  }
}

void sub_2587AE6FC()
{
  if (!qword_27F95D848)
  {
    v0 = sub_2588BBCD8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95D848);
    }
  }
}

unint64_t sub_2587AE760()
{
  result = qword_27F95D860;
  if (!qword_27F95D860)
  {
    sub_2587AE1F8(255, &qword_27F95D858, sub_2587AE6FC, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95D860);
  }

  return result;
}

uint64_t objectdestroyTm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2587AE858(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2587AEAC8;

  return sub_2587AD7C8(a1, v4, v5, v6);
}

void sub_2587AE90C(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_25878E130(255, a3, a4);
    v5 = sub_2588BDCE8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_2587AE964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

unint64_t sub_2587AE9C4()
{
  result = qword_27F95D888;
  if (!qword_27F95D888)
  {
    sub_2588BB9B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95D888);
  }

  return result;
}

uint64_t sub_2587AEA10(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2587AEAC8;

  return sub_2587ADB68(a1, v4);
}

void sub_2587AEACC(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() sharedBehavior];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 isAppleWatch];

    sub_2588BDDF8();

    MEMORY[0x259C8CAA0](a1, a2);
    v7 = sub_2588BD868();

    v8 = sub_2588BD868();
    sub_2587AEC74();
    v9 = sub_2588BD9A8();
    v10 = v6 == 0;
    if (v6)
    {
      v11 = 1109271;
    }

    else
    {
      v11 = 616513;
    }

    if (v10)
    {
      v12 = 2;
    }

    else
    {
      v12 = 3;
    }

    v13 = [objc_opt_self() hk:v11 tapToHealthRadarURLForComponent:v7 title:v8 description:5 classification:0 reproducibility:v9 keywords:v12 autoDiagnostics:0 attachments:0 collaborationContactHandles:?];

    sub_2588BB8C8();
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_2587AEC74()
{
  result = qword_27F95D898;
  if (!qword_27F95D898)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F95D898);
  }

  return result;
}

uint64_t MedicalIDListProperty.baseIdentifier.getter()
{
  if (!*v0)
  {
    v4 = sub_2588BD9A8();
    v2 = HKUIJoinStringsForAutomationIdentifier();

    if (!v2)
    {
      return 0x697461636964654DLL;
    }

    goto LABEL_8;
  }

  if (*v0 != 1)
  {
    v5 = sub_2588BD9A8();
    v2 = HKUIJoinStringsForAutomationIdentifier();

    if (!v2)
    {
      return 0xD000000000000011;
    }

    goto LABEL_8;
  }

  v1 = sub_2588BD9A8();
  v2 = HKUIJoinStringsForAutomationIdentifier();

  if (v2)
  {
LABEL_8:
    v3 = sub_2588BD8A8();

    return v3;
  }

  return 0x65696772656C6C41;
}

uint64_t MedicalIDListProperty.hashValue.getter()
{
  v1 = *v0;
  sub_2588BE038();
  MEMORY[0x259C8D1C0](v1);
  return sub_2588BE078();
}

uint64_t sub_2587AEE94()
{
  v1 = *v0;
  sub_2588BE038();
  MEMORY[0x259C8D1C0](v1);
  return sub_2588BE078();
}

uint64_t sub_2587AEF08(uint64_t a1)
{
  v2 = *v1;
  sub_2588BE038();
  MEMORY[0x259C8D1C0](v2);
  return sub_2588BE078();
}

unint64_t sub_2587AEF50()
{
  result = qword_27F95D8A0;
  if (!qword_27F95D8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95D8A0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MedicalIDListProperty(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MedicalIDListProperty(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2587AF114@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath("0/\n'");
  v5 = v1;
  sub_2587AFCE0();
  sub_2588BBB98();

  v3 = OBJC_IVAR____TtC11MedicalIDUI29HealthDemographicDataProvider__data;
  swift_beginAccess();
  return sub_2587AF960(v5 + v3, a1);
}

uint64_t sub_2587AF1AC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath("0/\n'");
  sub_2587AFCE0();
  sub_2588BBB98();

  v4 = OBJC_IVAR____TtC11MedicalIDUI29HealthDemographicDataProvider__data;
  swift_beginAccess();
  return sub_2587AF960(v3 + v4, a2);
}

uint64_t sub_2587AF244(uint64_t a1)
{
  sub_2587AF908(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2587AF960(a1, v4);
  return sub_2587AF2D0(v4);
}

uint64_t sub_2587AF2D0(uint64_t a1)
{
  sub_2587AF908(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC11MedicalIDUI29HealthDemographicDataProvider__data;
  swift_beginAccess();
  sub_2587AF960(v1 + v6, v5);
  v7 = sub_2587AF9C4(v5, a1);
  sub_2587AFE00(v5, sub_2587AF908);
  if (v7)
  {
    KeyPath = swift_getKeyPath("0/\n'");
    MEMORY[0x28223BE20](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_2587AFCE0();
    sub_2588BBB88();
  }

  else
  {
    sub_2587AF960(a1, v5);
    swift_beginAccess();
    sub_2587AFC60(v5, v1 + v6);
    swift_endAccess();
  }

  return sub_2587AFE00(a1, sub_2587AF908);
}

uint64_t sub_2587AF488(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC11MedicalIDUI29HealthDemographicDataProvider__data;
  swift_beginAccess();
  sub_2587AFD38(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_2587AF4F4(void *a1, uint64_t a2)
{
  sub_2587AF908(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = (&v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = [a1 firstName];
    v20 = sub_2588BD8A8();
    v9 = v8;

    v10 = [a1 lastName];
    v11 = sub_2588BD8A8();
    v13 = v12;

    v14 = [a1 dateOfBirthComponents];
    v15 = type metadata accessor for HealthDemographicData(0);
    sub_2588BB778();

    v16 = [a1 heightQuantity];
    v17 = [a1 weightQuantity];
    v18 = [a1 bloodTypeObject];
    v19 = [v18 bloodType];

    *v5 = v20;
    v5[1] = v9;
    v5[2] = v11;
    v5[3] = v13;
    *(v5 + v15[7]) = v16;
    *(v5 + v15[8]) = v17;
    *(v5 + v15[9]) = v19;
    (*(*(v15 - 1) + 56))(v5, 0, 1, v15);
    sub_2587AF2D0(v5);
  }

  return result;
}

uint64_t sub_2587AF710()
{
  sub_2587AFE00(v0 + OBJC_IVAR____TtC11MedicalIDUI29HealthDemographicDataProvider__data, sub_2587AF908);
  v1 = OBJC_IVAR____TtC11MedicalIDUI29HealthDemographicDataProvider___observationRegistrar;
  v2 = sub_2588BBBD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HealthDemographicDataProvider(uint64_t a1)
{
  result = qword_27F95D8B8;
  if (!qword_27F95D8B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2587AF82C(uint64_t a1)
{
  sub_2587AF908(319);
  if (v1 <= 0x3F)
  {
    sub_2588BBBD8();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_2587AF908(uint64_t a1)
{
  if (!qword_27F95D8C8)
  {
    type metadata accessor for HealthDemographicData(255);
    v1 = sub_2588BDCE8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95D8C8);
    }
  }
}

uint64_t sub_2587AF960(uint64_t a1, uint64_t a2)
{
  sub_2587AF908(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2587AF9C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HealthDemographicData(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2587AF908(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2587AFD9C(0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v12 + 56);
  sub_2587AF960(a1, v14);
  sub_2587AF960(a2, &v14[v15]);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_2587AF960(v14, v10);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      sub_2587AFE60(&v14[v15], v7);
      v18 = sub_258840FF4(v10, v7);
      sub_2587AFE00(v7, type metadata accessor for HealthDemographicData);
      sub_2587AFE00(v10, type metadata accessor for HealthDemographicData);
      sub_2587AFE00(v14, sub_2587AF908);
      v17 = !v18;
      return v17 & 1;
    }

    sub_2587AFE00(v10, type metadata accessor for HealthDemographicData);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_2587AFE00(v14, sub_2587AFD9C);
    v17 = 1;
    return v17 & 1;
  }

  sub_2587AFE00(v14, sub_2587AF908);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_2587AFC60(uint64_t a1, uint64_t a2)
{
  sub_2587AF908(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_2587AFCE0()
{
  result = qword_27F95D8D0;
  if (!qword_27F95D8D0)
  {
    type metadata accessor for HealthDemographicDataProvider(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95D8D0);
  }

  return result;
}

uint64_t sub_2587AFD38(uint64_t a1, uint64_t a2)
{
  sub_2587AF908(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_2587AFD9C(uint64_t a1)
{
  if (!qword_27F95D8D8)
  {
    sub_2587AF908(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F95D8D8);
    }
  }
}

uint64_t sub_2587AFE00(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2587AFE60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HealthDemographicData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t PregnancyStatusLabelState.hashValue.getter()
{
  v1 = *v0;
  sub_2588BE038();
  MEMORY[0x259C8D1C0](v1);
  return sub_2588BE078();
}

unint64_t sub_2587AFF50()
{
  result = qword_27F95D8E0;
  if (!qword_27F95D8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95D8E0);
  }

  return result;
}

uint64_t type metadata accessor for MedicalIDPregnancyStatusLabelView(uint64_t a1)
{
  result = qword_27F95D8F0;
  if (!qword_27F95D8F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2587B0050(uint64_t a1)
{
  type metadata accessor for MedicalIDPregnancyViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_2587B1718(319, &qword_27F95D8E8, sub_2587AFFC8, MEMORY[0x277CE11F8]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2587B0128(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_2587B13D0(0, &qword_27F95D900, sub_2587B1258, MEMORY[0x277CDE470], MEMORY[0x277CDFAB8]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v21 - v7;
  sub_2587AFFC8(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MedicalIDPregnancyStatusLabelView(0);
  sub_2587B1718(0, &qword_27F95D8E8, sub_2587AFFC8, MEMORY[0x277CE11F8]);
  MEMORY[0x259C8C5A0]();
  MedicalIDPregnancyViewModel.pregnancyDueDateLabelState(_:)(v11, &v37);
  sub_2587B1C5C(v11, sub_2587AFFC8);
  v12 = v37;
  if (v37 == 3)
  {
    (*(v6 + 56))(a1, 1, 1, v5);
  }

  else
  {
    v13 = sub_2588BC6F8();
    v27 = 0;
    sub_2587B05AC(v12, v2, &v23);
    v32 = v24[3];
    v33 = v24[4];
    v34[0] = v24[5];
    *(v34 + 10) = *(&v24[5] + 10);
    v28 = v23;
    v29 = v24[0];
    v30 = v24[1];
    v31 = v24[2];
    v35[0] = v23;
    v35[1] = v24[0];
    v35[2] = v24[1];
    v35[3] = v24[2];
    v35[4] = v24[3];
    v35[5] = v24[4];
    *v36 = v24[5];
    *&v36[10] = *(&v24[5] + 10);
    sub_2587B1BF4(&v28, v21, sub_2587B1334);
    sub_2587B1C5C(v35, sub_2587B1334);
    *&v26[71] = v32;
    *&v26[87] = v33;
    *&v26[103] = v34[0];
    *&v26[113] = *(v34 + 10);
    *&v26[7] = v28;
    *&v26[23] = v29;
    *&v26[39] = v30;
    *&v26[55] = v31;
    v14 = v27;
    v15 = sub_2588BCC98();
    KeyPath = swift_getKeyPath("h/\n'");
    *(&v24[5] + 1) = *&v26[80];
    *(&v24[6] + 1) = *&v26[96];
    *(&v24[7] + 1) = *&v26[112];
    *(&v24[1] + 1) = *&v26[16];
    *(&v24[2] + 1) = *&v26[32];
    *(&v24[3] + 1) = *&v26[48];
    *(&v24[4] + 1) = *&v26[64];
    v23 = v13;
    LOBYTE(v24[0]) = v14;
    BYTE1(v24[8]) = v26[128];
    *(v24 + 1) = *v26;
    *(&v24[8] + 1) = KeyPath;
    v25 = v15;
    sub_2587B19E0(0, &qword_280C0DDD0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_2588BFF50;
    v18 = v2[1];
    *(v17 + 32) = *v2;
    *(v17 + 40) = v18;
    strcpy((v17 + 48), "DueDateStatus");
    *(v17 + 62) = -4864;

    v19 = sub_2588BD9A8();

    v20 = HKUIJoinStringsForAutomationIdentifier();

    if (v20)
    {
      sub_2588BD8A8();

      sub_2587B1258(0);
      sub_2587B1A30();
      sub_2588BCFB8();

      v21[8] = v24[7];
      v21[9] = v24[8];
      v22 = v25;
      v21[4] = v24[3];
      v21[5] = v24[4];
      v21[6] = v24[5];
      v21[7] = v24[6];
      v21[0] = v23;
      v21[1] = v24[0];
      v21[2] = v24[1];
      v21[3] = v24[2];
      sub_2587B1C5C(v21, sub_2587B1258);
      sub_2587B1B10(v8, a1);
      (*(v6 + 56))(a1, 0, 1, v5);
    }

    else
    {
      __break(1u);
    }
  }
}

double sub_2587B05AC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (a1)
  {
    v5 = a1;
    sub_2588BD258();
    sub_2587B0FB8(v5, &v52);
    v6 = v52;
    v24 = v53;
    v7 = v54;
    if (qword_27F95D168 != -1)
    {
      swift_once();
    }

    v8 = qword_27F969920;

    if (*(a2 + *(type metadata accessor for MedicalIDPregnancyStatusLabelView(0) + 20)) == 1)
    {
      v9 = qword_27F95D0E0;

      if (v9 != -1)
      {
        swift_once();
      }

      v10 = qword_27F969818;
      v11 = unk_27F969820;

      v12 = sub_2588BCB98();
      LOBYTE(v52) = 0;
      LOBYTE(v42) = 1;
      *&v49 = v10;
      *(&v49 + 1) = v11;
      LOBYTE(v50) = 0;
      *(&v50 + 1) = MEMORY[0x277D84F90];
      LOBYTE(v51[0]) = v12;
      memset(v51 + 8, 0, 32);
      BYTE8(v51[2]) = 1;
    }

    else
    {
      memset(v51, 0, 41);
      v49 = 0u;
      v50 = 0u;
    }

    v34 = v51[0];
    v35[0] = v51[1];
    *(v35 + 9) = *(&v51[1] + 9);
    *v27 = v51[0];
    *&v27[16] = v51[1];
    *&v27[25] = *(&v51[1] + 9);
    v32 = v49;
    v33 = v50;
    v25 = v49;
    v26 = v50;
    *(v31 + 9) = *(&v51[1] + 9);
    v31[0] = v51[1];
    v29 = v50;
    v30 = v51[0];
    v28 = v49;

    sub_2587B1BB8(v6, *(&v6 + 1), v24, *(&v24 + 1));
    sub_2587B1BF4(&v49, &v52, sub_2587B160C);
    sub_2587B1BB8(v6, *(&v6 + 1), v24, *(&v24 + 1));

    sub_2587B1BF4(&v25, &v52, sub_2587B160C);
    sub_2587B1C5C(&v32, sub_2587B160C);
    sub_2587B1CBC(v6, *(&v6 + 1), v24, *(&v24 + 1));

    v40 = v29;
    v41[0] = v30;
    v41[1] = v31[0];
    *(&v41[1] + 9) = *(v31 + 9);
    v36 = v6;
    v37 = v24;
    LOBYTE(v38) = v7;
    *(&v38 + 1) = v8;
    v39 = v28;
    sub_2587B1D08(&v36);
    v46 = v40;
    v47 = v41[0];
    v48[0] = v41[1];
    *(v48 + 10) = *(&v41[1] + 10);
    v42 = v36;
    v43 = v37;
    v44 = v38;
    v45 = v39;
    sub_2587B1454(0);
    sub_2587B16E4(0);
    v19 = MEMORY[0x277CE14C0];
    sub_2587B20EC(&qword_27F95D988, sub_2587B1454, MEMORY[0x277CE14C0]);
    sub_2587B20EC(&qword_27F95D990, sub_2587B16E4, v19);
    sub_2588BC778();
    sub_2587B1C5C(&v49, sub_2587B160C);
    sub_2587B1CBC(v6, *(&v6 + 1), v24, *(&v24 + 1));

    v46 = v56;
    v47 = v57;
    v48[0] = v58[0];
    *(v48 + 10) = *(v58 + 10);
    v42 = v52;
    v43 = v53;
    v44 = v54;
    v45 = v55;
    nullsub_1();
    v56 = v46;
    v57 = v47;
    v58[0] = v48[0];
    *(v58 + 10) = *(v48 + 10);
    v52 = v42;
    v53 = v43;
    v54 = v44;
    v55 = v45;
  }

  else if (*(a2 + *(type metadata accessor for MedicalIDPregnancyStatusLabelView(0) + 20)) == 1)
  {
    sub_2587B0CCC(&v52);
    v13 = v52;
    v14 = v53;
    if (qword_27F95D0E0 != -1)
    {
      swift_once();
    }

    v16 = qword_27F969818;
    v15 = unk_27F969820;

    v17 = sub_2588BCB98();
    *&v25 = v16;
    *(&v25 + 1) = v15;
    LOBYTE(v26) = 0;
    *(&v26 + 1) = MEMORY[0x277D84F90];
    v27[0] = v17;
    memset(&v27[8], 0, 32);
    v27[40] = 1;
    *(&v51[1] + 9) = *&v27[25];
    v49 = v25;
    v50 = v26;
    *(v31 + 9) = *&v27[25];
    v51[0] = *v27;
    v51[1] = *&v27[16];
    v31[0] = *&v27[16];
    v28 = v25;
    v29 = v26;
    v30 = *v27;
    *(v35 + 9) = *&v27[25];
    LOBYTE(v52) = 0;
    LOBYTE(v42) = 1;
    v34 = *v27;
    v35[0] = *&v27[16];
    v32 = v25;
    v33 = v26;
    sub_2587B1D34(v13, *(&v13 + 1), v14, *(&v14 + 1));
    sub_2587B1D78(&v25, &v52);
    sub_2587B1D34(v13, *(&v13 + 1), v14, *(&v14 + 1));
    sub_2587B1D78(&v28, &v52);
    sub_2587B1E08(&v49);
    sub_2587B1E90(v13, *(&v13 + 1), v14, *(&v14 + 1));
    v36 = v13;
    v37 = v14;
    v40 = v34;
    v41[0] = v35[0];
    *(v41 + 9) = *(v35 + 9);
    v38 = v32;
    v39 = v33;
    sub_2587B1ED4(&v36);
    v46 = v40;
    v47 = v41[0];
    v48[0] = v41[1];
    *(v48 + 10) = *(&v41[1] + 10);
    v42 = v36;
    v43 = v37;
    v44 = v38;
    v45 = v39;
    sub_2587B1454(0);
    sub_2587B16E4(0);
    v18 = MEMORY[0x277CE14C0];
    sub_2587B20EC(&qword_27F95D988, sub_2587B1454, MEMORY[0x277CE14C0]);
    sub_2587B20EC(&qword_27F95D990, sub_2587B16E4, v18);
    sub_2588BC778();
    sub_2587B1E08(&v25);
    sub_2587B1E90(v13, *(&v13 + 1), v14, *(&v14 + 1));
    v46 = v56;
    v47 = v57;
    v48[0] = v58[0];
    *(v48 + 10) = *(v58 + 10);
    v42 = v52;
    v43 = v53;
    v44 = v54;
    v45 = v55;
    nullsub_1();
    v56 = v46;
    v57 = v47;
    v58[0] = v48[0];
    *(v58 + 10) = *(v48 + 10);
    v52 = v42;
    v53 = v43;
    v54 = v44;
    v55 = v45;
  }

  else
  {
    sub_2587B1D10(&v52);
  }

  v20 = v57;
  a3[4] = v56;
  a3[5] = v20;
  a3[6] = v58[0];
  *(a3 + 106) = *(v58 + 10);
  v21 = v53;
  *a3 = v52;
  a3[1] = v21;
  result = *&v54;
  v23 = v55;
  a3[2] = v54;
  a3[3] = v23;
  return result;
}

uint64_t sub_2587B0CCC@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_2588BC678();
  MEMORY[0x28223BE20](v3 - 8);
  sub_2587AFFC8(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MedicalIDPregnancyStatusLabelView(0);
  sub_2587B1718(0, &qword_27F95D8E8, sub_2587AFFC8, MEMORY[0x277CE11F8]);
  MEMORY[0x259C8C5A0]();
  MedicalIDPregnancyViewModel.gestationalAgeDescription(dueDate:)(v6);
  v9 = v8;
  result = sub_2587B1C5C(v6, sub_2587AFFC8);
  if (v9)
  {
    sub_2588BC668();
    sub_2588BC658();
    sub_2588BC648();

    sub_2588BC658();
    sub_2588BC698();
    if (qword_27F95D000 != -1)
    {
      swift_once();
    }

    v11 = qword_27F95DA88;
    v12 = sub_2588BCDE8();
    v14 = v13;
    v16 = v15;
    if (*(v1 + *(v7 + 20)) == 1)
    {
      v17 = sub_2588BC8C8();
    }

    else
    {
      v17 = sub_2588BC8D8();
    }

    v26[2] = v17;
    v18 = sub_2588BCD98();
    v19 = v22;
    v24 = v23;
    v21 = v25;
    sub_2587B1CF8(v12, v14, v16 & 1);

    v20 = v24 & 1;
  }

  else
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
  }

  *a1 = v18;
  a1[1] = v19;
  a1[2] = v20;
  a1[3] = v21;
  return result;
}

double sub_2587B0FB8@<D0>(unsigned __int8 a1@<W0>, uint64_t a3@<X8>)
{
  v4 = a1;
  v5 = sub_2588BC678();
  MEMORY[0x28223BE20](v5 - 8);
  if (v4 == 2)
  {
    sub_2588BC668();
    sub_2588BC658();
    sub_2588BC638();
    sub_2588BC658();
    sub_2588BC698();
    if (qword_27F95D000 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  sub_2588BC668();
  sub_2588BC658();
  sub_2588BC638();
  sub_2588BC658();
  sub_2588BC698();
  if (qword_27F95D000 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_5:
  v6 = qword_27F95DA88;
  sub_2588BCDE8();
  sub_2588BC778();
  result = *&v8;
  *a3 = v8;
  *(a3 + 16) = v9;
  *(a3 + 32) = v10;
  return result;
}

void sub_2587B12A0(uint64_t a1)
{
  if (!qword_27F95D910)
  {
    sub_2587B1334(255);
    sub_2587B1EE0(&qword_27F95D978, sub_2587B1334, sub_2587B1844);
    v1 = sub_2588BD408();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95D910);
    }
  }
}

void sub_2587B1334(uint64_t a1)
{
  if (!qword_27F95D918)
  {
    sub_2587B13D0(255, &qword_27F95D920, sub_2587B1454, sub_2587B16E4, MEMORY[0x277CE0338]);
    v1 = sub_2588BDCE8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95D918);
    }
  }
}

void sub_2587B13D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_2587B1488(uint64_t a1)
{
  if (!qword_27F95D930)
  {
    sub_2587B14F8(255);
    sub_2587B160C(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F95D930);
    }
  }
}

void sub_2587B14F8(uint64_t a1)
{
  if (!qword_27F95D938)
  {
    sub_2587B158C(255);
    sub_2587B1690(255, &qword_27F95D950, MEMORY[0x277CE0F78], MEMORY[0x277CE0F60], MEMORY[0x277CE0730]);
    v1 = sub_2588BC1E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95D938);
    }
  }
}

void sub_2587B158C(uint64_t a1)
{
  if (!qword_27F95D940)
  {
    sub_2587B1690(255, &qword_27F95D948, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BD8], MEMORY[0x277CE0338]);
    v1 = sub_2588BD238();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95D940);
    }
  }
}

void sub_2587B160C(uint64_t a1)
{
  if (!qword_27F95D958)
  {
    sub_2587B1690(255, &qword_27F95D308, MEMORY[0x277CE0BD8], MEMORY[0x277CDF928], MEMORY[0x277CDFAB8]);
    v1 = sub_2588BDCE8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95D958);
    }
  }
}

void sub_2587B1690(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void sub_2587B1718(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2587B177C(uint64_t a1)
{
  if (!qword_27F95D968)
  {
    v1 = MEMORY[0x277CE0BD8];
    sub_2587B19E0(255, &qword_27F95D970, MEMORY[0x277CE0BD8], MEMORY[0x277D83D88]);
    sub_2587B1690(255, &qword_27F95D308, v1, MEMORY[0x277CDF928], MEMORY[0x277CDFAB8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F95D968);
    }
  }
}

unint64_t sub_2587B1844()
{
  result = qword_27F95D980;
  if (!qword_27F95D980)
  {
    sub_2587B13D0(255, &qword_27F95D920, sub_2587B1454, sub_2587B16E4, MEMORY[0x277CE0338]);
    v1 = MEMORY[0x277CE14C0];
    sub_2587B20EC(&qword_27F95D988, sub_2587B1454, MEMORY[0x277CE14C0]);
    sub_2587B20EC(&qword_27F95D990, sub_2587B16E4, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95D980);
  }

  return result;
}

void sub_2587B1964(uint64_t a1)
{
  if (!qword_27F95D998)
  {
    sub_2587B19E0(255, &qword_27F95D9A0, MEMORY[0x277CE0AE0], MEMORY[0x277D83D88]);
    v1 = sub_2588BCA88();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95D998);
    }
  }
}

void sub_2587B19E0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_2587B1A30()
{
  result = qword_27F95D9A8;
  if (!qword_27F95D9A8)
  {
    sub_2587B1258(255);
    sub_2587B20EC(&qword_27F95D9B0, sub_2587B12A0, MEMORY[0x277CE1198]);
    sub_2587B20EC(&qword_27F95D9B8, sub_2587B1964, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95D9A8);
  }

  return result;
}

uint64_t sub_2587B1B10(uint64_t a1, uint64_t a2)
{
  sub_2587B13D0(0, &qword_27F95D900, sub_2587B1258, MEMORY[0x277CDE470], MEMORY[0x277CDFAB8]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2587B1BB8(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_2587A99B0(a1, a2, a3 & 1);
}

uint64_t sub_2587B1BF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2587B1C5C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2587B1CBC(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_2587B1CF8(a1, a2, a3 & 1);
}

uint64_t sub_2587B1CF8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

double sub_2587B1D10(uint64_t a1)
{
  *(a1 + 112) = 0;
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 120) = -256;
  return result;
}

uint64_t sub_2587B1D34(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_2587A99B0(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_2587B1D78(uint64_t a1, uint64_t a2)
{
  sub_2587B1690(0, &qword_27F95D308, MEMORY[0x277CE0BD8], MEMORY[0x277CDF928], MEMORY[0x277CDFAB8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2587B1E08(uint64_t a1)
{
  sub_2587B1690(0, &qword_27F95D308, MEMORY[0x277CE0BD8], MEMORY[0x277CDF928], MEMORY[0x277CDFAB8]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2587B1E90(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_2587B1CF8(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_2587B1EE0(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
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

void sub_2587B1F5C(uint64_t a1)
{
  if (!qword_27F95D9C8)
  {
    sub_2587B13D0(255, &qword_27F95D900, sub_2587B1258, MEMORY[0x277CDE470], MEMORY[0x277CDFAB8]);
    v1 = sub_2588BDCE8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95D9C8);
    }
  }
}

unint64_t sub_2587B1FF8()
{
  result = qword_27F95D9D0;
  if (!qword_27F95D9D0)
  {
    sub_2587B13D0(255, &qword_27F95D900, sub_2587B1258, MEMORY[0x277CDE470], MEMORY[0x277CDFAB8]);
    sub_2587B1A30();
    sub_2587B20EC(&qword_27F95D9D8, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95D9D0);
  }

  return result;
}

uint64_t sub_2587B20EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t BasicAlertModel.Action.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2588BB9F8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t BasicAlertModel.Action.buttonText.getter()
{
  v1 = *(v0 + *(type metadata accessor for BasicAlertModel.Action(0) + 20));

  return v1;
}

uint64_t type metadata accessor for BasicAlertModel.Action(uint64_t a1)
{
  result = qword_27F95DA00;
  if (!qword_27F95DA00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t BasicAlertModel.Action.style.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for BasicAlertModel.Action(0) + 24);

  return sub_2587B226C(v3, a1);
}

uint64_t sub_2587B226C(uint64_t a1, uint64_t a2)
{
  sub_2587B2F14(0, &qword_27F95D9E0, MEMORY[0x277CDD650], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t BasicAlertModel.Action.handler.getter()
{
  v1 = *(v0 + *(type metadata accessor for BasicAlertModel.Action(0) + 28));
  sub_2587B2344(v1);
  return v1;
}

uint64_t sub_2587B2344(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t BasicAlertModel.Action.init(buttonText:style:handler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_2588BB9E8();
  v12 = type metadata accessor for BasicAlertModel.Action(0);
  v13 = (a6 + v12[5]);
  *v13 = a1;
  v13[1] = a2;
  result = sub_2587B23D8(a3, a6 + v12[6]);
  v15 = (a6 + v12[7]);
  *v15 = a4;
  v15[1] = a5;
  return result;
}

uint64_t sub_2587B23D8(uint64_t a1, uint64_t a2)
{
  sub_2587B2F14(0, &qword_27F95D9E0, MEMORY[0x277CDD650], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2587B2474@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2588BB9F8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t BasicAlertModel.title.getter()
{
  v1 = *v0;

  return v1;
}

void __swiftcall BasicAlertModel.init(title:message:actions:code:)(MedicalIDUI::BasicAlertModel *__return_ptr retstr, Swift::String title, Swift::String_optional message, Swift::OpaquePointer actions, Swift::String_optional code)
{
  retstr->title = title;
  retstr->message = message;
  retstr->actions = actions;
  retstr->code = code;
}

uint64_t BasicAlertModel.init(title:message:action:code:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  sub_2587B2F14(0, &qword_27F95D9E8, type metadata accessor for BasicAlertModel.Action, MEMORY[0x277D84560]);
  v16 = *(type metadata accessor for BasicAlertModel.Action(0) - 8);
  v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_2588C00B0;
  result = sub_2587B2B0C(a5, v18 + v17);
  *a8 = a1;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = v18;
  a8[5] = a6;
  a8[6] = a7;
  return result;
}

uint64_t BasicAlertModel.errorDescription.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t BasicAlertModel.failureReason.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t BasicAlertModel.code.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t BasicAlertModel.code.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t sub_2587B2740()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_2587B2770()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t _s11MedicalIDUI15BasicAlertModelV6ActionV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2588BBDE8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2587B2F14(0, &qword_27F95D9E0, MEMORY[0x277CDD650], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v27 - v9;
  sub_2587B2FC8(0);
  v12 = v11;
  MEMORY[0x28223BE20](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_2588BB9D8() & 1) == 0)
  {
    return 0;
  }

  v15 = type metadata accessor for BasicAlertModel.Action(0);
  v16 = *(v15 + 20);
  v17 = *(a1 + v16);
  v18 = *(a1 + v16 + 8);
  v19 = (a2 + v16);
  v20 = v17 == *v19 && v18 == v19[1];
  if (!v20 && (sub_2588BDF98() & 1) == 0)
  {
    return 0;
  }

  v28 = v15;
  v21 = *(v15 + 24);
  v22 = *(v12 + 48);
  sub_2587B226C(a1 + v21, v14);
  sub_2587B226C(a2 + v21, &v14[v22]);
  v23 = *(v5 + 48);
  if (v23(v14, 1, v4) == 1)
  {
    if (v23(&v14[v22], 1, v4) == 1)
    {
      sub_2587B30B8(v14);
      return (*(a1 + *(v28 + 28)) != 0) ^ (*(a2 + *(v28 + 28)) == 0);
    }

    goto LABEL_12;
  }

  sub_2587B226C(v14, v10);
  if (v23(&v14[v22], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_12:
    sub_2587B305C(v14);
    return 0;
  }

  (*(v5 + 32))(v7, &v14[v22], v4);
  sub_2587B3144();
  v25 = sub_2588BD7D8();
  v26 = *(v5 + 8);
  v26(v7, v4);
  v26(v10, v4);
  sub_2587B30B8(v14);
  if (v25)
  {
    return (*(a1 + *(v28 + 28)) != 0) ^ (*(a2 + *(v28 + 28)) == 0);
  }

  return 0;
}

uint64_t sub_2587B2B0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BasicAlertModel.Action(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _s11MedicalIDUI15BasicAlertModelV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v8 = a2[2];
  v7 = a2[3];
  v10 = a2[4];
  v9 = a2[5];
  v11 = a2[6];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_2588BDF98() & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (!v7 || (v2 != v8 || v4 != v7) && (sub_2588BDF98() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if (sub_2587C55B8(v3, v10))
  {
    if (v6)
    {
      if (v11 && (v5 == v9 && v6 == v11 || (sub_2588BDF98() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v11)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_2587B2C84()
{
  result = qword_27F95D9F0;
  if (!qword_27F95D9F0)
  {
    sub_2588BB9F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95D9F0);
  }

  return result;
}

unint64_t sub_2587B2CD4()
{
  result = qword_27F95D9F8;
  if (!qword_27F95D9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95D9F8);
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_2587B2D44(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_2587B2D8C(uint64_t result, int a2, int a3)
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

void sub_2587B2E10(uint64_t a1)
{
  sub_2588BB9F8();
  if (v1 <= 0x3F)
  {
    sub_2587B2F14(319, &qword_27F95D9E0, MEMORY[0x277CDD650], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_2587B2F14(319, &qword_27F95DA10, sub_2587B2F78, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2587B2F14(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_2587B2F78()
{
  result = qword_27F9607F0;
  if (!qword_27F9607F0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27F9607F0);
  }

  return result;
}

void sub_2587B2FC8(uint64_t a1)
{
  if (!qword_27F95DA18)
  {
    sub_2587B2F14(255, &qword_27F95D9E0, MEMORY[0x277CDD650], MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F95DA18);
    }
  }
}

uint64_t sub_2587B305C(uint64_t a1)
{
  sub_2587B2FC8(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2587B30B8(uint64_t a1)
{
  sub_2587B2F14(0, &qword_27F95D9E0, MEMORY[0x277CDD650], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2587B3144()
{
  result = qword_27F95DA20;
  if (!qword_27F95DA20)
  {
    sub_2588BBDE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95DA20);
  }

  return result;
}

void *sub_2587B31A0(void *a1, void *a2, void *a3)
{
  v4 = v3;
  sub_2587AAB5C(0);
  v71 = *(v8 - 1);
  v72 = v8;
  MEMORY[0x28223BE20](v8);
  v69 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2587B6644(0, &qword_27F95D830, MEMORY[0x277D85720]);
  MEMORY[0x28223BE20](v10 - 8);
  v67 = &v66 - v11;
  v12 = [objc_allocWithZone(MEMORY[0x277CCD5E8]) initWithHealthStore_];
  v4[9] = a1;
  v4[10] = v12;
  v13 = objc_allocWithZone(MEMORY[0x277CBDAB8]);
  v14 = v12;
  v15 = a1;
  v16 = v14;
  v17 = v15;
  v18 = [v13 init];
  v70 = type metadata accessor for MedicalIDEmergencyContactProvider();
  swift_allocObject();
  v19 = sub_25878DD28(v17, v18);

  v4[2] = v19;
  type metadata accessor for HealthDemographicDataProvider(0);
  v20 = swift_allocObject();
  v21 = OBJC_IVAR____TtC11MedicalIDUI29HealthDemographicDataProvider__data;
  v22 = type metadata accessor for HealthDemographicData(0);
  (*(*(v22 - 8) + 56))(v20 + v21, 1, 1, v22);
  v23 = v17;
  v74 = v19;

  sub_2588BBBC8();
  *(v20 + 16) = v23;
  v4[3] = v20;
  type metadata accessor for MedicalIDHealthStoreDataProvider();
  v24 = swift_allocObject();
  *(v24 + 16) = v23;
  v25 = objc_allocWithZone(MEMORY[0x277CCD7D0]);
  v73 = v23;
  *(v24 + 24) = [v25 initWithHealthStore_];
  v4[4] = v24;
  v26 = swift_allocObject();
  *(v26 + 16) = v16;
  v27 = swift_allocObject();
  *(v27 + 16) = v16;
  v28 = a2;
  v68 = v16;
  v75 = v24;

  v29 = a3;
  v30 = _s11MedicalIDUI09HealthKitA14IDDataProviderC37medicalIDUpdateNotificationPublishersSay7Combine12AnyPublisherVyyts5NeverOGGvgZ_0();
  type metadata accessor for HealthKitMedicalIDDataProvider();
  v31 = swift_allocObject();
  v76[0] = 1;
  sub_2587AABF0(0);
  swift_allocObject();
  v32 = sub_2588BBD58();
  v33 = MEMORY[0x277D84FA0];
  v31[2] = v32;
  v31[3] = v33;
  v31[7] = v27;
  v31[8] = 0;
  v31[10] = 0;
  v31[11] = v29;
  v31[5] = v26;
  v31[6] = &unk_2588C0308;
  v31[4] = &unk_2588C02F8;
  v31[9] = a2;
  if (a2)
  {
    v76[0] = a2;
    v34 = v28;
    v35 = v29;
    v36 = v34;

    sub_2588BBD38();
  }

  else
  {
    v37 = v29;
  }

  v66 = v28;
  v38 = sub_2588BDAA8();
  v39 = v67;
  (*(*(v38 - 8) + 56))(v67, 1, 1, v38);
  sub_2588BDA78();

  v40 = sub_2588BDA68();
  v41 = swift_allocObject();
  v42 = MEMORY[0x277D85700];
  v41[2] = v40;
  v41[3] = v42;
  v41[4] = v31;
  v43 = sub_2587ABD24(0, 0, v39, &unk_2588C0310, v41);
  swift_beginAccess();
  v31[10] = v43;

  sub_2587AC4E0(v30);

  v4[5] = v31;
  type metadata accessor for MedicalIDSettingsProvider(0);
  swift_allocObject();
  v4[6] = sub_25888E4F0();
  v4[8] = v29;
  v76[0] = *(v4[5] + 16);
  sub_2587B68C4(&qword_27F95D818, sub_2587AABF0, MEMORY[0x277CBCE48]);
  sub_2587B68C4(&qword_27F95D820, sub_2587AAC58, &protocol conformance descriptor for LoadState<A>);
  v44 = v29;

  v45 = v69;
  sub_2588BBDA8();
  sub_2587B68C4(&qword_27F95D828, sub_2587AAB5C, MEMORY[0x277CBCBE0]);
  v46 = v72;
  v67 = sub_2588BBD98();

  v71[1](v45, v46);
  v47 = swift_allocObject();
  *(v47 + 16) = v44;
  v48 = *(v75 + 16);
  v49 = swift_allocObject();
  *(v49 + 16) = v48;
  v50 = swift_allocObject();
  v72 = v4;
  v51 = v68;
  *(v50 + 16) = v68;
  v52 = swift_allocObject();
  *(v52 + 16) = &unk_2588C0320;
  *(v52 + 24) = v50;
  v53 = swift_allocObject();
  *(v53 + 16) = v51;
  v54 = swift_allocObject();
  *(v54 + 16) = &unk_2588C0340;
  *(v54 + 24) = v53;
  type metadata accessor for MedicalIDDataManager(0);
  v55 = swift_allocObject();
  v76[3] = v70;
  v76[4] = &protocol witness table for MedicalIDEmergencyContactProvider;
  v76[0] = v74;
  v56 = objc_allocWithZone(MEMORY[0x277CCDDF0]);
  v71 = v51;

  v57 = v44;
  v58 = v48;
  *(v55 + 16) = [v56 init];
  *(v55 + OBJC_IVAR____TtC11MedicalIDUI20MedicalIDDataManager__subscriptions) = MEMORY[0x277D84FA0];
  sub_2588BBBC8();
  sub_2587B6C14(v76, v55 + OBJC_IVAR____TtC11MedicalIDUI20MedicalIDDataManager_medicalIDEmergencyContactProvider);
  v59 = (v55 + OBJC_IVAR____TtC11MedicalIDUI20MedicalIDDataManager_shouldSaveDataToHealthDetails);
  *v59 = sub_2587B690C;
  v59[1] = v47;
  v60 = (v55 + OBJC_IVAR____TtC11MedicalIDUI20MedicalIDDataManager_saveDataToHealthStore);
  *v60 = sub_2587B6930;
  v60[1] = v49;
  v61 = (v55 + OBJC_IVAR____TtC11MedicalIDUI20MedicalIDDataManager_saveDataToMedicalIDStore);
  *v61 = &unk_2588C0330;
  v61[1] = v52;
  v62 = (v55 + OBJC_IVAR____TtC11MedicalIDUI20MedicalIDDataManager_deleteDataFromMedicalIDStore);
  *v62 = &unk_2588C0350;
  v62[1] = v54;
  v63 = OBJC_IVAR____TtC11MedicalIDUI20MedicalIDDataManager__medicalIDData;
  v64 = type metadata accessor for MedicalIDData(0);
  (*(*(v64 - 8) + 56))(v55 + v63, 1, 1, v64);

  sub_25887FED4(v67);

  __swift_destroy_boxed_opaque_existential_1Tm(v76);
  result = v72;
  v72[7] = v55;
  return result;
}

uint64_t sub_2587B3A9C(uint64_t a1)
{
  v1[3] = a1;
  v1[4] = sub_2588BDA78();
  v1[5] = sub_2588BDA68();

  return MEMORY[0x2822009F8](sub_2587B3B18, 0, 0);
}

uint64_t sub_2587B3B18()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[6] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[7] = v3;
  sub_2587B6644(0, &qword_280C0DE10, sub_25878D604);
  *v3 = v0;
  v3[1] = sub_2587B3C30;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0x496C61636964656DLL, 0xED00006174614444, sub_25878D8EC, v2, v4);
}

uint64_t sub_2587B3C30()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_2587B3E34;
  }

  else
  {

    v2 = sub_2587B3D4C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2587B3D4C()
{
  *(v0 + 72) = *(v0 + 16);
  v2 = sub_2588BDA28();

  return MEMORY[0x2822009F8](sub_2587B3DCC, v2, v1);
}

uint64_t sub_2587B3DCC()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 72);

  return v1(v2);
}

uint64_t sub_2587B3E34()
{

  v1 = sub_2588BDA28();

  return MEMORY[0x2822009F8](sub_2587B3EB8, v1, v0);
}

uint64_t sub_2587B3EB8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2587B3F1C(uint64_t a1, uint64_t a2)
{
  v2[18] = a1;
  v2[19] = a2;
  sub_2588BDA78();
  v2[20] = sub_2588BDA68();
  v4 = sub_2588BDA28();
  v2[21] = v4;
  v2[22] = v3;

  return MEMORY[0x2822009F8](sub_2587B3FB4, v4, v3);
}

uint64_t sub_2587B3FB4()
{
  v2 = v0[18];
  v1 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 24;
  v0[3] = sub_2587B40D0;
  v3 = swift_continuation_init();
  sub_2587B6C78(0);
  v0[17] = v4;
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2587B42D8;
  v0[13] = &block_descriptor_47;
  v0[14] = v3;
  [v1 updateMedicalIDData:v2 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2587B40D0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 184) = v2;
  v3 = *(v1 + 176);
  v4 = *(v1 + 168);
  if (v2)
  {
    v5 = sub_2587B4264;
  }

  else
  {
    v5 = sub_2587B4200;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2587B4200()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2587B4264()
{

  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2587B42D8(uint64_t a1, char a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_25878D8F4();
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_2587B4398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a3;
  v4[19] = a4;
  if (a1)
  {
    swift_getObjectType();
    v5 = sub_2588BDA28();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v4[20] = v5;
  v4[21] = v7;

  return MEMORY[0x2822009F8](sub_2587B4428, v5, v7);
}

uint64_t sub_2587B4428()
{
  v2 = v0[18];
  v1 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 23;
  v0[3] = sub_2587B4544;
  v3 = swift_continuation_init();
  sub_2587B6C78(0);
  v0[17] = v4;
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2587B42D8;
  v0[13] = &block_descriptor_43;
  v0[14] = v3;
  [v1 updateMedicalIDData:v2 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2587B4544()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  v3 = *(v1 + 168);
  v4 = *(v1 + 160);
  if (v2)
  {
    v5 = sub_2587B4690;
  }

  else
  {
    v5 = sub_2587B4674;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2587B4690(uint64_t a1)
{
  swift_willThrow();
  v2 = *(v1 + 8);

  return v2(0);
}

uint64_t sub_2587B4700(uint64_t a1, int *a2)
{
  v6 = a2 + *a2;
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2587B6CF4;

  return (v6)(0, 0, a1);
}

uint64_t sub_2587B47FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[18] = a3;
  if (a1)
  {
    swift_getObjectType();
    v4 = sub_2588BDA28();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v3[19] = v4;
  v3[20] = v6;

  return MEMORY[0x2822009F8](sub_2587B488C, v4, v6);
}

uint64_t sub_2587B488C()
{
  v1 = v0[18];
  v0[2] = v0;
  v0[7] = v0 + 22;
  v0[3] = sub_2587B499C;
  v2 = swift_continuation_init();
  sub_2587B6C78(0);
  v0[17] = v3;
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2587B42D8;
  v0[13] = &block_descriptor;
  v0[14] = v2;
  [v1 deleteMedicalIDDataWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2587B499C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 168) = v2;
  v3 = *(v1 + 160);
  v4 = *(v1 + 152);
  if (v2)
  {
    v5 = sub_2587B4AE8;
  }

  else
  {
    v5 = sub_2587B4ACC;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2587B4AE8(uint64_t a1)
{
  swift_willThrow();
  v2 = *(v1 + 8);

  return v2(0);
}

uint64_t sub_2587B4B58(int *a1)
{
  v4 = a1 + *a1;
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2587B4C48;

  return (v4)(0, 0);
}

uint64_t sub_2587B4C48(char a1)
{
  v7 = *v2;

  v4 = *(v7 + 8);
  if (v1)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1 & 1;
  }

  return v4(v5);
}

id sub_2587B4D50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v159 = a2;
  v140 = a3;
  v147 = type metadata accessor for MedicalIDWeightFormatter(0);
  v139 = *(v147 - 8);
  MEMORY[0x28223BE20](v147);
  v130 = &v126 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = type metadata accessor for MedicalIDHeightFormatter(0);
  v133 = *(v143 - 8);
  MEMORY[0x28223BE20](v143);
  v134 = &v126 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = type metadata accessor for MedicalIDBiometricsViewModel(0);
  MEMORY[0x28223BE20](v152);
  v153 = (&v126 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2587B6644(0, &qword_27F95DA38, type metadata accessor for MedicalIDWeightFormatter);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v135 = &v126 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v146 = &v126 - v12;
  sub_2587B6644(0, &qword_27F95DA40, type metadata accessor for MedicalIDHeightFormatter);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v136 = &v126 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v149 = &v126 - v16;
  v17 = type metadata accessor for MedicalIDData(0);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v150 = &v126 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v144 = &v126 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v126 - v22;
  v156 = &v126 - v22;
  sub_2587B63B8(0);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v126 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(v3 + 56);
  swift_beginAccess();
  v28 = *(v27 + 16);
  swift_getKeyPath(byte_2588C02C8);
  v161 = v27;
  sub_2587B68C4(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager, &protocol conformance descriptor for MedicalIDDataManager);
  v145 = v28;
  sub_2588BBB98();

  v29 = OBJC_IVAR____TtC11MedicalIDUI20MedicalIDDataManager__medicalIDData;
  swift_beginAccess();
  sub_2587B644C(v27 + v29, v26, sub_2587B63B8);
  LoadState<>.loadedValue.getter(v23);
  sub_2587B64B4(v26, sub_2587B63B8);
  v30 = sub_2588BBB48();
  v31 = *(v30 - 8);
  v138 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  v148 = (v32 + 15) & 0xFFFFFFFFFFFFFFF0;
  v33 = &v126 - v148;
  v151 = v31;
  v155 = *(v31 + 16);
  v160 = v30;
  (v155)(&v126 - v148, a1, v30);
  v141 = *(*(v4 + 32) + 16);
  v34 = sub_2588BBAC8();
  v35 = *(v34 - 8);
  v154 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  v142 = (v36 + 15) & 0xFFFFFFFFFFFFFFF0;
  v37 = &v126 - v142;
  v158 = v35;
  v157 = *(v35 + 16);
  (v157)(&v126 - v142, v159, v34);
  v131 = *(v4 + 64);
  v38 = v131;
  v39 = type metadata accessor for MedicalIDDataViewModel(0);
  v40 = v140;
  *(v140 + v39[13]) = v38;
  *v40 = v145;
  v41 = v40;
  v42 = v156;
  sub_2587B644C(v156, v40 + v39[5], type metadata accessor for MedicalIDData);
  v43 = v30;
  v44 = v155;
  (v155)(v41 + v39[6], v33, v43);
  *(v41 + v39[7]) = v141;
  (v157)(v41 + v39[8], v37, v34);
  v45 = sub_2587B644C(v42, v144, type metadata accessor for MedicalIDData);
  MEMORY[0x28223BE20](v45);
  v132 = &v126 - v148;
  v129 = v33;
  v148 = v31 + 16;
  v46 = v44();
  MEMORY[0x28223BE20](v46);
  v47 = &v126 - v142;
  v138 = v37;
  v48 = v34;
  v159 = v35 + 16;
  v157();
  v137 = v39;
  v49 = v41 + v39[10];
  v50 = type metadata accessor for MedicalIDPersonalInfoViewModel(0);
  v51 = v50[8];
  v52 = objc_allocWithZone(MEMORY[0x277CCAC08]);
  v53 = v141;
  v127 = v145;
  v128 = v53;
  v131 = v131;
  *(v49 + v51) = [v52 init];
  v54 = sub_2588BD9A8();
  v55 = HKUIJoinStringsForAutomationIdentifier();

  if (v55)
  {
    v56 = sub_2588BD8A8();
    v58 = v57;
  }

  else
  {
    v58 = 0xEC0000006F666E49;
    v56 = 0x6C616E6F73726550;
  }

  v59 = (v49 + v50[9]);
  *v59 = v56;
  v59[1] = v58;
  v60 = v144;
  sub_2587B644C(v144, v49, type metadata accessor for MedicalIDData);
  v61 = v132;
  v62 = v160;
  (v155)(v49 + v50[5], v132, v160);
  v63 = v157;
  (v157)(v49 + v50[6], v47, v48);
  v64 = [objc_opt_self() calendarWithIdentifier_];
  v65 = *(v158 + 8);
  v158 += 8;
  v145 = v65;
  (v65)(v47, v48);
  v141 = *(v151 + 8);
  v151 += 8;
  (v141)(v61, v62);
  sub_2587B64B4(v60, type metadata accessor for MedicalIDData);
  *(v49 + v50[7]) = v64;
  v66 = sub_2587B644C(v156, v150, type metadata accessor for MedicalIDData);
  v132 = &v126;
  MEMORY[0x28223BE20](v66);
  v67 = &v126 - v142;
  v144 = v48;
  (v63)(&v126 - v142, v138, v48);
  v68 = v133;
  (*(v133 + 56))(v149, 1, 1, v143);
  v69 = v139;
  (*(v139 + 56))(v146, 1, 1, v147);
  v70 = sub_2588BD9A8();
  v71 = HKUIJoinStringsForAutomationIdentifier();

  if (v71)
  {
    v72 = sub_2588BD8A8();
    v74 = v73;
  }

  else
  {
    v74 = 0xEA00000000007363;
    v72 = 0x697274656D6F6942;
  }

  v75 = v134;
  v76 = v153;
  *v153 = v72;
  v76[1] = v74;
  v77 = v152;
  sub_2587B644C(v150, v76 + v152[5], type metadata accessor for MedicalIDData);
  v78 = v144;
  (v63)(v76 + v77[6], v67, v144);
  v79 = v67;
  v80 = v136;
  sub_2587B6514(v149, v136, &qword_27F95DA40, type metadata accessor for MedicalIDHeightFormatter);
  v81 = *(v68 + 48);
  v82 = v143;
  v83 = v81(v80, 1, v143);
  v142 = v79;
  if (v83 == 1)
  {
    v134 = &v126;
    MEMORY[0x28223BE20](v83);
    v85 = v82;
    v86 = &v126 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
    (v63)(v86, v79, v78);
    (v63)(v75, v86, v78);
    v87 = sub_2587F28D4(v86, 2);
    (v145)(v86, v78);
    *(v75 + *(v85 + 20)) = v87;
    v88 = v136;
    v89 = v81(v136, 1, v85);
    v90 = v146;
    if (v89 != 1)
    {
      sub_2587B6580(v88, &qword_27F95DA40, type metadata accessor for MedicalIDHeightFormatter);
    }
  }

  else
  {
    sub_2587B65DC(v80, v75, type metadata accessor for MedicalIDHeightFormatter);
    v90 = v146;
  }

  sub_2587B65DC(v75, v153 + v152[7], type metadata accessor for MedicalIDHeightFormatter);
  v91 = v135;
  sub_2587B6514(v90, v135, &qword_27F95DA38, type metadata accessor for MedicalIDWeightFormatter);
  v94 = *(v69 + 48);
  v93 = v69 + 48;
  v92 = v94;
  v95 = (v94)(v91, 1, v147);
  if (v95 == 1)
  {
    v96 = v157;
    v139 = v93;
    MEMORY[0x28223BE20](v95);
    v98 = &v126 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0);
    v99 = v142;
    v100 = v144;
    (v96)(v98, v142, v144);
    result = [objc_opt_self() sharedFormatter];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v102 = result;
    v103 = v130;
    (v96)(v130, v98, v100);
    v104 = v147;
    *(v103 + *(v147 + 20)) = v102;
    v105 = sub_25884DC0C(v98, 2);
    v106 = v145;
    (v145)(v98, v100);
    sub_2587B6580(v146, &qword_27F95DA38, type metadata accessor for MedicalIDWeightFormatter);
    sub_2587B6580(v149, &qword_27F95DA40, type metadata accessor for MedicalIDHeightFormatter);
    v106(v99, v100);
    sub_2587B64B4(v150, type metadata accessor for MedicalIDData);
    *(v103 + *(v104 + 24)) = v105;
    v107 = v135;
    if (v92(v135, 1, v104) != 1)
    {
      sub_2587B6580(v107, &qword_27F95DA38, type metadata accessor for MedicalIDWeightFormatter);
    }
  }

  else
  {
    sub_2587B6580(v90, &qword_27F95DA38, type metadata accessor for MedicalIDWeightFormatter);
    sub_2587B6580(v149, &qword_27F95DA40, type metadata accessor for MedicalIDHeightFormatter);
    v100 = v144;
    (v145)(v142, v144);
    sub_2587B64B4(v150, type metadata accessor for MedicalIDData);
    v103 = v130;
    sub_2587B65DC(v91, v130, type metadata accessor for MedicalIDWeightFormatter);
    v96 = v157;
  }

  v108 = v137;
  v109 = v137[9];
  v110 = v153;
  sub_2587B65DC(v103, v153 + v152[8], type metadata accessor for MedicalIDWeightFormatter);
  v111 = v140;
  sub_2587B65DC(v110, v140 + v109, type metadata accessor for MedicalIDBiometricsViewModel);
  v112 = (v111 + v108[11]);
  v113 = type metadata accessor for MedicalIDMedicalInfoViewModel(0);
  v114 = v129;
  (v155)(v112 + *(v113 + 20), v129, v160);
  v115 = v138;
  (v96)(v112 + *(v113 + 24), v138, v100);
  *v112 = v127;
  if ([v131 suggestHealthData])
  {
    type metadata accessor for PregnancySampleDataProvider(0);
    v116 = PregnancySampleDataProvider.__allocating_init(healthStore:)(v128);
  }

  else
  {

    v116 = 0;
  }

  v117 = (v111 + v137[12]);
  v118 = type metadata accessor for MedicalIDPregnancyViewModel(0);
  sub_2587B644C(v156, v117 + v118[5], type metadata accessor for MedicalIDData);
  (v155)(v117 + v118[6], v114, v160);
  (v96)(v117 + v118[7], v115, v100);
  v119 = v118[9];
  v120 = sub_2588BB9B8();
  (*(*(v120 - 8) + 56))(v117 + v119, 1, 1, v120);
  v121 = sub_2588BD9A8();
  v122 = HKUIJoinStringsForAutomationIdentifier();

  if (v122)
  {
    v123 = sub_2588BD8A8();
    v125 = v124;
  }

  else
  {
    v125 = 0xE900000000000079;
    v123 = 0x636E616E67657250;
  }

  (v145)(v115, v100);
  (v141)(v114, v160);
  result = sub_2587B64B4(v156, type metadata accessor for MedicalIDData);
  *v117 = v123;
  v117[1] = v125;
  *(v117 + v118[8]) = v116;
  return result;
}

uint64_t sub_2587B5F90@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for MedicalIDData(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v36[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v36[-v8];
  sub_2587B63B8(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = *(v1 + 48);
  v14 = *(v1 + 56);
  swift_getKeyPath(byte_2588C02C8);
  v41 = v14;
  sub_2587B68C4(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager, &protocol conformance descriptor for MedicalIDDataManager);
  sub_2588BBB98();

  v15 = OBJC_IVAR____TtC11MedicalIDUI20MedicalIDDataManager__medicalIDData;
  swift_beginAccess();
  sub_2587B644C(v14 + v15, v12, sub_2587B63B8);
  LoadState<>.loadedValue.getter(v9);
  sub_2587B64B4(v12, sub_2587B63B8);
  v16 = *(v2 + 32);
  v17 = *(v16 + 24);
  v40 = *(v16 + 16);
  v18 = [v17 synchronouslyFetchFirstName];
  if (v18)
  {
    v19 = v18;
    v20 = sub_2588BD8A8();
    v38 = v21;
    v39 = v20;
  }

  else
  {
    v38 = 0;
    v39 = 0;
  }

  v22 = *(v13 + 24);
  os_unfair_lock_lock((v22 + 20));
  v37 = *(v22 + 16);
  os_unfair_lock_unlock((v22 + 20));
  sub_2587B644C(v9, v7, type metadata accessor for MedicalIDData);
  v23 = [objc_opt_self() hasPairedWatch];
  v24 = sub_2588BD9A8();
  v25 = HKUIJoinStringsForAutomationIdentifier();

  if (v25)
  {
    v26 = sub_2588BD8A8();
    v28 = v27;
  }

  else
  {
    v28 = 0x80000002588C90D0;
    v26 = 0xD000000000000011;
  }

  v29 = type metadata accessor for MedicalIDSettingsViewModel(0);
  v30 = (a1 + v29[11]);
  sub_2587B64B4(v9, type metadata accessor for MedicalIDData);
  *v30 = v26;
  v30[1] = v28;
  sub_2587B644C(v7, a1, type metadata accessor for MedicalIDData);
  v31 = v39;
  *(a1 + v29[5]) = v40;
  v32 = (a1 + v29[6]);
  v33 = v38;
  *v32 = v31;
  v32[1] = v33;
  *(a1 + v29[9]) = (v7[*(v4 + 64)] & 1) == 0;
  v34 = v7[*(v4 + 68)];
  result = sub_2587B64B4(v7, type metadata accessor for MedicalIDData);
  *(a1 + v29[10]) = v34;
  *(a1 + v29[7]) = v23;
  *(a1 + v29[8]) = v37 & 1;
  return result;
}

id *sub_2587B6300()
{

  return v0;
}

uint64_t sub_2587B6360()
{
  sub_2587B6300();

  return swift_deallocClassInstance();
}

void sub_2587B63B8(uint64_t a1)
{
  if (!qword_27F95DA28)
  {
    v2 = type metadata accessor for MedicalIDData(255);
    v3 = sub_2587B68C4(&qword_27F95DA30, type metadata accessor for MedicalIDData, &protocol conformance descriptor for MedicalIDData);
    State = type metadata accessor for LoadState(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(State, &qword_27F95DA28);
    }
  }
}

uint64_t sub_2587B644C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2587B64B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2587B6514(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2587B6644(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2587B6580(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2587B6644(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2587B65DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_2587B6644(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_2587B6698()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2587B672C;

  return sub_2587B3A9C(v2);
}

uint64_t sub_2587B672C(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_2587B6828(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2587AE310;

  return sub_2587B3F1C(a1, v4);
}

uint64_t sub_2587B68C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2587B6954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2587B672C;

  return sub_2587B4398(a1, a2, a3, v8);
}

uint64_t sub_2587B6A08(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2587B6CF0;

  return sub_2587B4700(a1, v4);
}

uint64_t sub_2587B6ABC(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2587B6CF0;

  return sub_2587B47FC(a1, a2, v6);
}

uint64_t sub_2587B6B68()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2587B6CF0;

  return sub_2587B4B58(v2);
}

uint64_t sub_2587B6C14(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_2587B6C78(uint64_t a1)
{
  if (!qword_27F95DA48)
  {
    sub_25878D8F4();
    v1 = sub_2588BDAB8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95DA48);
    }
  }
}

uint64_t MedicalIDDisplaySection.baseIdentifier.getter()
{
  v1 = *v0;
  if (v1 > 3)
  {
    if (*v0 > 5u)
    {
      if (v1 == 6)
      {
        v7 = sub_2588BD9A8();
        v3 = HKUIJoinStringsForAutomationIdentifier();

        if (!v3)
        {
          return 0xD000000000000011;
        }
      }

      else
      {
        v11 = sub_2588BD9A8();
        v3 = HKUIJoinStringsForAutomationIdentifier();

        if (!v3)
        {
          return 0x4E6C61636964654DLL;
        }
      }
    }

    else if (v1 == 4)
    {
      v5 = sub_2588BD9A8();
      v3 = HKUIJoinStringsForAutomationIdentifier();

      if (!v3)
      {
        return 0xD000000000000011;
      }
    }

    else
    {
      v9 = sub_2588BD9A8();
      v3 = HKUIJoinStringsForAutomationIdentifier();

      if (!v3)
      {
        return 0x697274656D6F6942;
      }
    }

LABEL_23:
    v4 = sub_2588BD8A8();

    return v4;
  }

  if (*v0 > 1u)
  {
    if (v1 == 2)
    {
      v6 = sub_2588BD9A8();
      v3 = HKUIJoinStringsForAutomationIdentifier();

      if (!v3)
      {
        return 0x697461636964654DLL;
      }
    }

    else
    {
      v10 = sub_2588BD9A8();
      v3 = HKUIJoinStringsForAutomationIdentifier();

      if (!v3)
      {
        return 0x65696772656C6C41;
      }
    }

    goto LABEL_23;
  }

  if (*v0)
  {
    v8 = sub_2588BD9A8();
    v3 = HKUIJoinStringsForAutomationIdentifier();

    if (!v3)
    {
      return 0x636E616E67657250;
    }

    goto LABEL_23;
  }

  v2 = sub_2588BD9A8();
  v3 = HKUIJoinStringsForAutomationIdentifier();

  if (v3)
  {
    goto LABEL_23;
  }

  return 0x6C616E6F73726550;
}

id MedicalIDDataViewModel.init(data:medicalIDData:calendar:healthStore:locale:displayConfiguration:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, id *a4@<X3>, uint64_t a5@<X4>, id *a6@<X5>, void *a7@<X8>)
{
  v130 = a6;
  v157 = a5;
  v129 = a4;
  v154 = a3;
  v151 = a2;
  v142 = a1;
  v144 = type metadata accessor for MedicalIDWeightFormatter(0);
  v139 = *(v144 - 8);
  MEMORY[0x28223BE20](v144);
  v127 = &v124 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = type metadata accessor for MedicalIDHeightFormatter(0);
  v133 = *(v134 - 8);
  MEMORY[0x28223BE20](v134);
  v135 = &v124 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = type metadata accessor for MedicalIDBiometricsViewModel(0);
  MEMORY[0x28223BE20](v149);
  v137 = (&v124 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2587B9D88(0, &qword_27F95DA38, type metadata accessor for MedicalIDWeightFormatter);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v136 = &v124 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v143 = &v124 - v19;
  sub_2587B9D88(0, &qword_27F95DA40, type metadata accessor for MedicalIDHeightFormatter);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v138 = &v124 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v147 = &v124 - v23;
  v24 = type metadata accessor for MedicalIDData(0);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v148 = &v124 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v140 = &v124 - v27;
  v28 = type metadata accessor for MedicalIDDataViewModel(0);
  *(a7 + v28[13]) = a6;
  *a7 = a1;
  v29 = a7;
  sub_2587B94F8(a2, a7 + v28[5]);
  v30 = v28[6];
  v31 = sub_2588BBB48();
  v158 = *(v31 - 8);
  v150 = v158;
  v33 = v158 + 16;
  v32 = *(v158 + 16);
  v32(a7 + v30, a3, v31);
  *(a7 + v28[7]) = a4;
  v153 = v28[8];
  v34 = sub_2588BBAC8();
  v152 = *(v34 - 8);
  v35 = *(v152 + 2);
  v155 = v152;
  v156 = v152 + 16;
  v35(a7 + v153, v157, v34);
  v36 = sub_2587B94F8(v151, v140);
  MEMORY[0x28223BE20](v36);
  v131 = &v124 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = v31;
  v145 = v32;
  v146 = v33;
  v38 = (v32)();
  MEMORY[0x28223BE20](v38);
  v141 = v39;
  v132 = (v39 + 15) & 0xFFFFFFFFFFFFFFF0;
  v40 = &v124 - v132;
  v158 = v34;
  v152 = v35;
  v35(&v124 - v132, v157, v34);
  v126 = v28;
  v41 = v28[10];
  v128 = v29;
  v42 = v29 + v41;
  v43 = type metadata accessor for MedicalIDPersonalInfoViewModel(0);
  v44 = v43[8];
  v45 = objc_allocWithZone(MEMORY[0x277CCAC08]);
  v125 = v130;
  v124 = v142;
  v130 = v129;
  *(v42 + v44) = [v45 init];
  v46 = sub_2588BD9A8();
  v47 = HKUIJoinStringsForAutomationIdentifier();

  if (v47)
  {
    v48 = sub_2588BD8A8();
    v50 = v49;
  }

  else
  {
    v50 = 0xEC0000006F666E49;
    v48 = 0x6C616E6F73726550;
  }

  v51 = (v42 + v43[9]);
  *v51 = v48;
  v51[1] = v50;
  v52 = v140;
  sub_2587B94F8(v140, v42);
  v53 = v131;
  v54 = v153;
  v145(v42 + v43[5], v131, v153);
  v55 = v158;
  v56 = v152;
  v152((v42 + v43[6]), v40, v158);
  v57 = [objc_opt_self() calendarWithIdentifier_];
  v58 = *(v155 + 1);
  v155 = (v155 + 8);
  v142 = v58;
  (v58)(v40, v55);
  v59 = *(v150 + 8);
  v150 += 8;
  v131 = v59;
  (v59)(v53, v54);
  sub_2587B955C(v52);
  *(v42 + v43[7]) = v57;
  v60 = sub_2587B94F8(v151, v148);
  v129 = &v124;
  MEMORY[0x28223BE20](v60);
  v61 = &v124 - v132;
  v56(&v124 - v132, v157, v55);
  v62 = v133;
  v63 = v134;
  (v133[7])(v147, 1, 1, v134);
  v64 = v139;
  (*(v139 + 56))(v143, 1, 1, v144);
  v65 = sub_2588BD9A8();
  v66 = HKUIJoinStringsForAutomationIdentifier();

  v67 = v138;
  if (v66)
  {
    v68 = sub_2588BD8A8();
    v70 = v69;
  }

  else
  {
    v70 = 0xEA00000000007363;
    v68 = 0x697274656D6F6942;
  }

  v71 = v137;
  *v137 = v68;
  *(v71 + 8) = v70;
  v72 = v149;
  sub_2587B94F8(v148, v71 + v149[5]);
  v73 = v61;
  v74 = v61;
  v75 = v152;
  v152((v71 + v72[6]), v73, v158);
  sub_2587B95B8(v147, v67, &qword_27F95DA40, type metadata accessor for MedicalIDHeightFormatter);
  v76 = v62[6];
  v77 = v76(v67, 1, v63);
  v140 = v74;
  if (v77 == 1)
  {
    v133 = &v124;
    MEMORY[0x28223BE20](v77);
    v79 = &v124 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
    v80 = v158;
    v75(v79, v74, v158);
    v81 = v135;
    v75(v135, v79, v80);
    v82 = sub_2587F28D4(v79, 2);
    v83 = v80;
    v84 = v138;
    (v142)(v79, v83);
    *(v81 + *(v63 + 20)) = v82;
    v85 = v76(v84, 1, v63);
    v86 = v136;
    if (v85 != 1)
    {
      sub_2587B9624(v84, &qword_27F95DA40, type metadata accessor for MedicalIDHeightFormatter);
    }
  }

  else
  {
    v81 = v135;
    sub_2587B65DC(v67, v135, type metadata accessor for MedicalIDHeightFormatter);
    v86 = v136;
  }

  sub_2587B65DC(v81, v71 + v149[7], type metadata accessor for MedicalIDHeightFormatter);
  v87 = v143;
  sub_2587B95B8(v143, v86, &qword_27F95DA38, type metadata accessor for MedicalIDWeightFormatter);
  v90 = *(v64 + 48);
  v89 = v64 + 48;
  v88 = v90;
  v91 = v90(v86, 1, v144);
  if (v91 == 1)
  {
    v139 = v89;
    MEMORY[0x28223BE20](v91);
    v93 = &v124 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
    v94 = v140;
    v95 = v152;
    v152(v93, v140, v158);
    result = [objc_opt_self() sharedFormatter];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v97 = result;
    v98 = v127;
    v99 = v158;
    v95(v127, v93, v158);
    v100 = v144;
    *(v98 + *(v144 + 20)) = v97;
    v101 = sub_25884DC0C(v93, 2);
    v102 = v142;
    (v142)(v93, v99);
    sub_2587B9624(v143, &qword_27F95DA38, type metadata accessor for MedicalIDWeightFormatter);
    sub_2587B9624(v147, &qword_27F95DA40, type metadata accessor for MedicalIDHeightFormatter);
    v103 = v98;
    v102(v94, v99);
    sub_2587B955C(v148);
    *(v98 + *(v100 + 24)) = v101;
    v104 = v136;
    v105 = v88(v136, 1, v100);
    v106 = v151;
    v71 = v137;
    if (v105 != 1)
    {
      sub_2587B9624(v104, &qword_27F95DA38, type metadata accessor for MedicalIDWeightFormatter);
    }
  }

  else
  {
    sub_2587B9624(v87, &qword_27F95DA38, type metadata accessor for MedicalIDWeightFormatter);
    sub_2587B9624(v147, &qword_27F95DA40, type metadata accessor for MedicalIDHeightFormatter);
    (v142)(v140, v158);
    sub_2587B955C(v148);
    v103 = v127;
    sub_2587B65DC(v86, v127, type metadata accessor for MedicalIDWeightFormatter);
    v106 = v151;
  }

  v107 = v126;
  v108 = v126[9];
  sub_2587B65DC(v103, v71 + v149[8], type metadata accessor for MedicalIDWeightFormatter);
  v109 = v128;
  sub_2587B65DC(v71, v128 + v108, type metadata accessor for MedicalIDBiometricsViewModel);
  v110 = v109 + v107[11];
  v111 = type metadata accessor for MedicalIDMedicalInfoViewModel(0);
  v145(&v110[*(v111 + 20)], v154, v153);
  v112 = v152;
  v152(&v110[*(v111 + 24)], v157, v158);
  *v110 = v124;
  v113 = v125;
  LOBYTE(v111) = [v125 suggestHealthData];

  if (v111)
  {
    type metadata accessor for PregnancySampleDataProvider(0);
    v114 = PregnancySampleDataProvider.__allocating_init(healthStore:)(v130);
  }

  else
  {

    v114 = 0;
  }

  v115 = (v109 + v107[12]);
  v116 = type metadata accessor for MedicalIDPregnancyViewModel(0);
  sub_2587B94F8(v106, v115 + v116[5]);
  v145(v115 + v116[6], v154, v153);
  v112(v115 + v116[7], v157, v158);
  v117 = v116[9];
  v118 = sub_2588BB9B8();
  (*(*(v118 - 8) + 56))(v115 + v117, 1, 1, v118);
  v119 = sub_2588BD9A8();
  v120 = HKUIJoinStringsForAutomationIdentifier();

  if (v120)
  {
    v121 = sub_2588BD8A8();
    v123 = v122;
  }

  else
  {
    v123 = 0xE900000000000079;
    v121 = 0x636E616E67657250;
  }

  (v142)(v157, v158);
  (v131)(v154, v153);
  result = sub_2587B955C(v106);
  *v115 = v121;
  v115[1] = v123;
  *(v115 + v116[8]) = v114;
  return result;
}

MedicalIDUI::MedicalIDDisplaySection_optional __swiftcall MedicalIDDisplaySection.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2588BDF58();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t MedicalIDDisplaySection.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6C616E6F73726570;
  v3 = 0xD000000000000011;
  if (v1 != 6)
  {
    v3 = 0x4E6C61636964656DLL;
  }

  v4 = 0xD000000000000011;
  if (v1 != 4)
  {
    v4 = 0x697274656D6F6962;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x697461636964656DLL;
  if (v1 != 2)
  {
    v5 = 0x65696772656C6C61;
  }

  if (*v0)
  {
    v2 = 0x636E616E67657270;
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

uint64_t sub_2587B80A4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 0x726F6E6F44746F6ELL;
  if (a1 == 2)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v4 = 0x694C6574616E6F64;
    v5 = 0xEA00000000006566;
  }

  v6 = 0xD000000000000011;
  if (a1)
  {
    v3 = 0x80000002588C8C60;
  }

  else
  {
    v6 = 0x746553746F6ELL;
  }

  if (a1 <= 1u)
  {
    v7 = v6;
  }

  else
  {
    v7 = v4;
  }

  if (v2 <= 1)
  {
    v8 = v3;
  }

  else
  {
    v8 = v5;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v11 = 0x726F6E6F44746F6ELL;
    }

    else
    {
      v11 = 0x694C6574616E6F64;
    }

    if (a2 == 2)
    {
      v10 = 0xE800000000000000;
    }

    else
    {
      v10 = 0xEA00000000006566;
    }

    if (v7 != v11)
    {
      goto LABEL_31;
    }
  }

  else
  {
    if (a2)
    {
      v9 = 0xD000000000000011;
    }

    else
    {
      v9 = 0x746553746F6ELL;
    }

    if (a2)
    {
      v10 = 0x80000002588C8C60;
    }

    else
    {
      v10 = 0xE600000000000000;
    }

    if (v7 != v9)
    {
      goto LABEL_31;
    }
  }

  if (v8 != v10)
  {
LABEL_31:
    v12 = sub_2588BDF98();
    goto LABEL_32;
  }

  v12 = 1;
LABEL_32:

  return v12 & 1;
}

uint64_t sub_2587B81F0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC0000006F666E49;
  v3 = 0x6C616E6F73726570;
  if (a1 > 3u)
  {
    v4 = 0xD000000000000011;
    v5 = 0x80000002588C8B10;
    if (a1 != 6)
    {
      v4 = 0x4E6C61636964656DLL;
      v5 = 0xEC0000007365746FLL;
    }

    v6 = 0xD000000000000011;
    v7 = 0x80000002588C8AF0;
    if (a1 != 4)
    {
      v6 = 0x697274656D6F6962;
      v7 = 0xEA00000000007363;
    }

    v8 = a1 <= 5u;
  }

  else
  {
    v4 = 0x697461636964656DLL;
    v5 = 0xEB00000000736E6FLL;
    if (a1 != 2)
    {
      v4 = 0x65696772656C6C61;
      v5 = 0xE900000000000073;
    }

    v6 = 0x636E616E67657270;
    v7 = 0xE900000000000079;
    if (!a1)
    {
      v6 = 0x6C616E6F73726570;
      v7 = 0xEC0000006F666E49;
    }

    v8 = a1 <= 1u;
  }

  if (v8)
  {
    v9 = v6;
  }

  else
  {
    v9 = v4;
  }

  if (v8)
  {
    v10 = v7;
  }

  else
  {
    v10 = v5;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 != 6)
      {
        v2 = 0xEC0000007365746FLL;
        if (v9 != 0x4E6C61636964656DLL)
        {
          goto LABEL_40;
        }

        goto LABEL_37;
      }

      v11 = "medicalConditions";
    }

    else
    {
      if (a2 != 4)
      {
        v2 = 0xEA00000000007363;
        if (v9 != 0x697274656D6F6962)
        {
          goto LABEL_40;
        }

        goto LABEL_37;
      }

      v11 = "emergencyContacts";
    }

    v2 = (v11 - 32) | 0x8000000000000000;
    if (v9 != 0xD000000000000011)
    {
      goto LABEL_40;
    }

    goto LABEL_37;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v2 = 0xEB00000000736E6FLL;
      if (v9 != 0x697461636964656DLL)
      {
        goto LABEL_40;
      }

      goto LABEL_37;
    }

    v3 = 0x65696772656C6C61;
    v2 = 0xE900000000000073;
  }

  else if (a2)
  {
    v2 = 0xE900000000000079;
    if (v9 != 0x636E616E67657270)
    {
      goto LABEL_40;
    }

    goto LABEL_37;
  }

  if (v9 != v3)
  {
LABEL_40:
    v12 = sub_2588BDF98();
    goto LABEL_41;
  }

LABEL_37:
  if (v10 != v2)
  {
    goto LABEL_40;
  }

  v12 = 1;
LABEL_41:

  return v12 & 1;
}

uint64_t sub_2587B848C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD00000000000001BLL;
  if (a1 > 1u)
  {
    v3 = 0x80000002588C8B80;
    v4 = 0x80000002588C8BA0;
    v5 = a1 == 2;
    if (a1 == 2)
    {
      v6 = 0xD00000000000001BLL;
    }

    else
    {
      v6 = 0xD000000000000013;
    }
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0x80000002588C8B60;
    v5 = a1 == 0;
    if (a1)
    {
      v6 = 0xD00000000000001BLL;
    }

    else
    {
      v6 = 0x64656C62616E65;
    }
  }

  if (v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  v8 = 0x80000002588C8B80;
  v9 = 0xD000000000000013;
  if (a2 == 2)
  {
    v9 = 0xD00000000000001BLL;
  }

  else
  {
    v8 = 0x80000002588C8BA0;
  }

  if (a2)
  {
    v10 = 0x80000002588C8B60;
  }

  else
  {
    v2 = 0x64656C62616E65;
    v10 = 0xE700000000000000;
  }

  if (a2 <= 1u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v9;
  }

  if (a2 <= 1u)
  {
    v12 = v10;
  }

  else
  {
    v12 = v8;
  }

  if (v6 == v11 && v7 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_2588BDF98();
  }

  return v13 & 1;
}

uint64_t sub_2587B85C0(uint64_t a1, unsigned __int8 a2)
{
  sub_2588BD908();
}

uint64_t sub_2587B8720(uint64_t a1, unsigned __int8 a2)
{
  sub_2588BE038();
  sub_2588BD908();

  return sub_2588BE078();
}

void sub_2587B8898(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC0000006F666E49;
  v4 = 0x6C616E6F73726570;
  v5 = 0x80000002588C8B10;
  v6 = 0xD000000000000011;
  if (v2 != 6)
  {
    v6 = 0x4E6C61636964656DLL;
    v5 = 0xEC0000007365746FLL;
  }

  v7 = 0x80000002588C8AF0;
  v8 = 0xD000000000000011;
  if (v2 != 4)
  {
    v8 = 0x697274656D6F6962;
    v7 = 0xEA00000000007363;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEB00000000736E6FLL;
  v10 = 0x697461636964656DLL;
  if (v2 != 2)
  {
    v10 = 0x65696772656C6C61;
    v9 = 0xE900000000000073;
  }

  if (*v1)
  {
    v4 = 0x636E616E67657270;
    v3 = 0xE900000000000079;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 3u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 3u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_2587B89DC(_BYTE *a1)
{
  v2 = *a1;
  if (v2 > 3)
  {
    if (v2 - 4 < 2)
    {
      return 1;
    }

    if (v2 == 6)
    {
      result = [*(v1 + *(type metadata accessor for MedicalIDDataViewModel(0) + 44)) medicalConditions];
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = [*(v1 + *(type metadata accessor for MedicalIDDataViewModel(0) + 44)) medicalNotes];
      if (!result)
      {
        return result;
      }
    }

LABEL_26:
    v25 = result;
    v26 = sub_2588BD8A8();
    v28 = v27;

    v15 = HIBYTE(v28) & 0xF;
    if ((v28 & 0x2000000000000000) == 0)
    {
      v15 = v26 & 0xFFFFFFFFFFFFLL;
    }

    return v15 != 0;
  }

  if (*a1 > 1u)
  {
    if (v2 == 2)
    {
      result = [*(v1 + *(type metadata accessor for MedicalIDDataViewModel(0) + 44)) medicationInfo];
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = [*(v1 + *(type metadata accessor for MedicalIDDataViewModel(0) + 44)) allergyInfo];
      if (!result)
      {
        return result;
      }
    }

    goto LABEL_26;
  }

  if (*a1)
  {
    v16 = v1 + *(type metadata accessor for MedicalIDDataViewModel(0) + 48);
    v17 = v16 + *(type metadata accessor for MedicalIDPregnancyViewModel(0) + 20);
    v18 = *(type metadata accessor for MedicalIDData(0) + 52);
    v19 = MEMORY[0x28220BF80];
    sub_2587B9D88(0, &qword_27F95D880, MEMORY[0x28220BF80]);
    v21 = (*(*(v20 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x28223BE20](v20 - 8);
    v33 = v17;
    sub_2587B95B8(v17 + v18, &v32 - v21, &qword_27F95D880, v19);
    v22 = sub_2588BB9B8();
    v23 = *(*(v22 - 8) + 48);
    LODWORD(v17) = v23(&v32 - v21, 1, v22);
    v24 = sub_2587B9624(&v32 - v21, &qword_27F95D880, v19);
    if (v17 == 1)
    {
      return 0;
    }

    MEMORY[0x28223BE20](v24);
    v29 = MEMORY[0x28220BF80];
    sub_2587B95B8(v33 + v30, &v32 - v21, &qword_27F95D880, MEMORY[0x28220BF80]);
    v31 = v23(&v32 - v21, 1, v22) != 1;
    sub_2587B9624(&v32 - v21, &qword_27F95D880, v29);
    return v31;
  }

  v3 = (v1 + *(type metadata accessor for MedicalIDDataViewModel(0) + 40));
  v4 = v3[1];
  if (v4)
  {
    if ((v4 & 0x2000000000000000) != 0 ? HIBYTE(v4) & 0xF : *v3 & 0xFFFFFFFFFFFFLL)
    {
      return 1;
    }
  }

  v6 = type metadata accessor for MedicalIDData(0);
  if (*(v3 + *(v6 + 72) + 8) >> 60 != 15)
  {
    return 1;
  }

  v7 = v6;
  v8 = *(v6 + 76);
  v9 = MEMORY[0x28220B6E8];
  sub_2587B9D88(0, &qword_27F95DA80, MEMORY[0x28220B6E8]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v32 - v11;
  sub_2587B95B8(v3 + v8, &v32 - v11, &qword_27F95DA80, v9);
  v13 = sub_2588BB818();
  LODWORD(v8) = (*(*(v13 - 8) + 48))(v12, 1, v13);
  sub_2587B9624(v12, &qword_27F95DA80, v9);
  result = 1;
  if (v8 == 1 && !*(v3 + *(v7 + 60) + 8))
  {
    v15 = *(v3 + *(v7 + 80));
    return v15 != 0;
  }

  return result;
}

uint64_t sub_2587B8E1C()
{
  v1 = sub_2588BD838();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = 1;
  sub_2588BD828();
  sub_2588BD818();
  v3 = [*v0 dateSaved];
  sub_2587B9D88(0, &qword_27F95D880, MEMORY[0x28220BF80]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  if (v3)
  {
    sub_2588BB988();

    v2 = 0;
  }

  v7 = sub_2588BB9B8();
  (*(*(v7 - 8) + 56))(v6, v2, 1, v7);
  sub_2587BC664(v6);
  v9 = v8;
  sub_2587B9624(v6, &qword_27F95D880, MEMORY[0x28220BF80]);
  if (!v9)
  {
    if (qword_27F95D0C0 != -1)
    {
      swift_once();
    }
  }

  sub_2588BD808();

  sub_2588BD818();
  v10 = sub_2588BD858();
  MEMORY[0x28223BE20](v10 - 8);
  sub_2588BD848();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v11 = qword_27F95DA88;
  v12 = sub_2588BBAC8();
  MEMORY[0x28223BE20](v12 - 8);
  v13 = v11;
  sub_2588BBAB8();
  return sub_2588BD8B8();
}

MedicalIDUI::MedicalIDDataViewModel::SectionDisplayAction __swiftcall MedicalIDDataViewModel.SectionDisplayAction.init(section:action:)(MedicalIDUI::MedicalIDDisplaySection section, MedicalIDUI::MedicalIDDataViewModel::SectionDisplayAction::Action action)
{
  v3 = *action;
  *v2 = *section;
  v2[1] = v3;
  result.section = section;
  return result;
}

uint64_t MedicalIDDataViewModel.SectionDisplayAction.Action.hashValue.getter()
{
  v1 = *v0;
  sub_2588BE038();
  MEMORY[0x259C8D1C0](v1);
  return sub_2588BE078();
}

uint64_t static MedicalIDDataViewModel.SectionDisplayAction.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  return sub_2587B81F0(*a1, *a2) & ~(v2 ^ v3) & 1;
}

uint64_t sub_2587B9240(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  return sub_2587B81F0(*a1, *a2) & ~(v2 ^ v3) & 1;
}

char *MedicalIDDataViewModel.displayActionForFirstLaunch.getter@<X0>(__int16 *a1@<X8>)
{
  v3 = type metadata accessor for MedicalIDDataViewModel(0);
  v4 = *(v1 + *(v3 + 52));
  if ((([v4 entryPoint] - 1) & 0xFFFFFFFFFFFFFFFDLL) == 0 || !objc_msgSend(v4, sel_entryPoint))
  {
    v7 = *(v1 + *(v3 + 28));
    result = [v4 isEditingAvailable];
    if (!result)
    {
      goto LABEL_14;
    }

    v8 = [v7 profileIdentifier];
    v9 = [v8 type];

    if (v9 == 3)
    {
      result = [v4 accessPoint];
      if (result != 8)
      {
        goto LABEL_14;
      }
    }

    if ([v4 entryPoint] || (result = objc_msgSend(*v1, sel_isEmpty), (result & 1) == 0))
    {
      result = [v4 entryPoint];
      if ((result - 1) > 2)
      {
        goto LABEL_14;
      }

      v10 = 0x10404u >> (8 * (result - 1));
    }

    else
    {
      LOBYTE(v10) = 0;
    }

    v6 = v10 | 0x100;
    goto LABEL_15;
  }

  result = [v4 entryPoint];
  if ((result - 1) > 2)
  {
LABEL_14:
    v6 = 512;
    goto LABEL_15;
  }

  v6 = (0x10404u >> (8 * (result - 1)));
LABEL_15:
  *a1 = v6;
  return result;
}

Swift::Bool __swiftcall MedicalIDDataViewModel.isDeletionVisible(with:healthStore:)(MIUIDisplayConfiguration *with, HKHealthStore healthStore)
{
  v5 = [(MIUIDisplayConfiguration *)with isEditingAvailable];
  if (v5)
  {
    v6 = [(objc_class *)healthStore.super.isa profileIdentifier];
    v7 = [v6 type];

    if (v7 == 3 && [(MIUIDisplayConfiguration *)with accessPoint]!= 8)
    {
      LOBYTE(v5) = 0;
    }

    else
    {
      v5 = [(MIUIDisplayConfiguration *)with isDeletionAvailable];
      if (v5)
      {
        LOBYTE(v5) = [*v2 isEmpty] ^ 1;
      }
    }
  }

  return v5;
}

uint64_t type metadata accessor for MedicalIDDataViewModel(uint64_t a1)
{
  result = qword_27F95DA70;
  if (!qword_27F95DA70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2587B94F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MedicalIDData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2587B955C(uint64_t a1)
{
  v2 = type metadata accessor for MedicalIDData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2587B95B8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2587B9D88(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2587B9624(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2587B9D88(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_2587B9684()
{
  result = qword_27F95DA50;
  if (!qword_27F95DA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95DA50);
  }

  return result;
}

unint64_t sub_2587B96DC()
{
  result = qword_27F95DA58;
  if (!qword_27F95DA58)
  {
    sub_2587B9734();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95DA58);
  }

  return result;
}

void sub_2587B9734()
{
  if (!qword_27F95DA60)
  {
    v0 = sub_2588BDA08();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95DA60);
    }
  }
}

unint64_t sub_2587B978C()
{
  result = qword_27F95DA68;
  if (!qword_27F95DA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95DA68);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MedicalIDDisplaySection(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MedicalIDDisplaySection(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2587B9958(uint64_t a1)
{
  result = sub_25878E130(319, &qword_280C0DE18, 0x277CCDDF0);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for MedicalIDData(319);
    if (v3 <= 0x3F)
    {
      result = sub_2588BBB48();
      if (v4 <= 0x3F)
      {
        result = sub_25878E130(319, &qword_27F95D360, 0x277CCD4D8);
        if (v5 <= 0x3F)
        {
          result = sub_2588BBAC8();
          if (v6 <= 0x3F)
          {
            result = type metadata accessor for MedicalIDBiometricsViewModel(319);
            if (v7 <= 0x3F)
            {
              result = type metadata accessor for MedicalIDPersonalInfoViewModel(319);
              if (v8 <= 0x3F)
              {
                result = type metadata accessor for MedicalIDMedicalInfoViewModel(319);
                if (v9 <= 0x3F)
                {
                  result = type metadata accessor for MedicalIDPregnancyViewModel(319);
                  if (v10 <= 0x3F)
                  {
                    result = sub_25878E130(319, &qword_27F95D3C0, off_2798A65E8);
                    if (v11 <= 0x3F)
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

  return result;
}

uint64_t getEnumTagSinglePayload for MedicalIDDataViewModel.SectionDisplayAction(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MedicalIDDataViewModel.SectionDisplayAction(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MedicalIDDataViewModel.SectionDisplayAction.Action(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MedicalIDDataViewModel.SectionDisplayAction.Action(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_2587B9D88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

id sub_2587B9DDC()
{
  type metadata accessor for MedicalIDModelProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27F95DA88 = result;
  return result;
}

id static NSBundle.medicalIDUI.getter()
{
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v1 = qword_27F95DA88;

  return v1;
}

id sub_2587B9EB8(uint64_t a1, SEL *a2, void *a3)
{
  result = [objc_opt_self() *a2];
  *a3 = result;
  return result;
}

uint64_t sub_2587B9F24(double a1, uint64_t a2, uint64_t *a3)
{
  sub_2587BBA90(0);
  v5 = v4;
  __swift_allocate_value_buffer(v4, a3);
  __swift_project_value_buffer(v5, a3);
  if (qword_27F95D010 != -1)
  {
    swift_once();
  }

  v6 = qword_27F9696B0;
  sub_2587BBB1C();
  v7 = v6;
  return sub_2588BB678();
}

uint64_t sub_2587B9FEC()
{
  sub_2587BBA90(0);
  v1 = v0;
  __swift_allocate_value_buffer(v0, qword_27F969700);
  __swift_project_value_buffer(v1, qword_27F969700);
  if (qword_27F95D008 != -1)
  {
    swift_once();
  }

  v2 = qword_27F9696A8;
  sub_2587BBB1C();
  v3 = v2;
  return sub_2588BB678();
}

uint64_t sub_2587BA094()
{
  sub_2587BBA90(0);
  v1 = v0;
  __swift_allocate_value_buffer(v0, qword_27F969718);
  __swift_project_value_buffer(v1, qword_27F969718);
  if (qword_27F95D008 != -1)
  {
    swift_once();
  }

  v2 = qword_27F9696A8;
  sub_2587BBB1C();
  v3 = v2;
  return sub_2588BB678();
}

uint64_t sub_2587BA144()
{
  sub_2587BBA90(0);
  v1 = v0;
  __swift_allocate_value_buffer(v0, qword_27F969730);
  __swift_project_value_buffer(v1, qword_27F969730);
  if (qword_27F95D008 != -1)
  {
    swift_once();
  }

  v2 = qword_27F9696A8;
  sub_2587BBB1C();
  v3 = v2;
  return sub_2588BB678();
}

uint64_t sub_2587BA224(double a1, uint64_t a2, uint64_t *a3, SEL *a4)
{
  sub_2587BBA90(0);
  v7 = v6;
  __swift_allocate_value_buffer(v6, a3);
  __swift_project_value_buffer(v7, a3);
  v8 = [objc_opt_self() *a4];
  sub_2587BBB1C();
  return sub_2588BB678();
}

uint64_t sub_2587BA2EC()
{
  swift_getKeyPath(byte_2588C0620);
  swift_getKeyPath(byte_2588C0648);
  sub_2588BBD78();
}

void *sub_2587BA364()
{
  v0 = sub_2588BBAC8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath(byte_2588C0620);
  swift_getKeyPath(byte_2588C0648);
  sub_2588BBD78();

  v4 = sub_2588BBA58();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_2588BBA68();
  v8 = (*(v1 + 8))(v3, v0);
  MEMORY[0x28223BE20](v8);
  sub_2588BBA38();
  sub_2587BBA44();
  LOBYTE(v3) = sub_2588BD7D8();
  v9 = *(v5 + 8);
  v10 = v9(&v24 - v7, v4);
  if (v3 & 1) != 0 || (MEMORY[0x28223BE20](v10), sub_2588BBA28(), v11 = sub_2588BD7D8(), v12 = v9(&v24 - v7, v4), (v11))
  {
    v9(&v24 - v7, v4);
    if (qword_27F95D010 != -1)
    {
      swift_once();
    }

    v13 = qword_27F9696B0;
    if (qword_27F95D018 != -1)
    {
      swift_once();
    }

    sub_2587BBA90(0);
    v15 = v14;
    __swift_project_value_buffer(v14, qword_27F9696B8);
    sub_2588BB688();
    v17 = v16;
    if (qword_27F95D028 != -1)
    {
      swift_once();
    }

    v18 = qword_27F9696E8;
LABEL_10:
    __swift_project_value_buffer(v15, v18);
    sub_2588BB688();
    return sub_2587BBC88(v13, v17, v19);
  }

  MEMORY[0x28223BE20](v12);
  sub_2588BBA48();
  v21 = sub_2588BD7D8();
  v9(&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v9(&v24 - v7, v4);
  if (v21)
  {
    if (qword_27F95D008 != -1)
    {
      swift_once();
    }

    v13 = qword_27F9696A8;
    if (qword_27F95D030 != -1)
    {
      swift_once();
    }

    sub_2587BBA90(0);
    v15 = v22;
    __swift_project_value_buffer(v22, qword_27F969700);
    sub_2588BB688();
    v17 = v23;
    if (qword_27F95D040 != -1)
    {
      swift_once();
    }

    v18 = qword_27F969730;
    goto LABEL_10;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_2587BA828@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_2587BB2C8();
  if (v6)
  {
    v56 = v6;
    sub_2587BBAB8(0, &qword_27F95D478, sub_2587BBA90, MEMORY[0x277D83D88]);
    v8 = *(*(v7 - 8) + 64);
    MEMORY[0x28223BE20](v7 - 8);
    v10 = v47 - v9;
    v54 = v11;
    v55 = a3;
    if (a2)
    {
      sub_2587BAD9C(v47 - v9);
    }

    else
    {
      sub_2587BBA90(0);
      (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
    }

    sub_2587BBA90(0);
    v17 = v16;
    v18 = *(*(v16 - 8) + 64);
    v19 = MEMORY[0x28223BE20](v16);
    v20 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x28223BE20](v19);
    v21 = v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v22 = a1;
    v24 = v23;
    sub_2587A9F40(v22, v21);
    if ((*(v24 + 48))(v21, 1, v17) == 1)
    {

      sub_2587BBB68(v21);
      return sub_2587BBBF4(v10, v55);
    }

    else
    {
      v52 = v47;
      v53 = v10;
      v25 = (*(v24 + 32))(v47 - v20, v21, v17);
      v49 = v47;
      MEMORY[0x28223BE20](v25);
      v50 = v47 - v20;
      sub_2588BB6B8();
      v26 = sub_2587BA364();
      v48 = v47 - v20;
      sub_2588BB688();
      v28 = v27;
      v29 = v26[2];
      v51 = v24;
      if (v29)
      {
        v59 = MEMORY[0x277D84F90];
        v30 = sub_2587F0644(0, v29, 0);
        v31 = v59;
        v32 = *(v24 + 16);
        v33 = *(v24 + 80);
        v47[1] = v26;
        v34 = v26 + ((v33 + 32) & ~v33);
        v57 = *(v24 + 72);
        v58 = v32;
        do
        {
          MEMORY[0x28223BE20](v30);
          v58(v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v34, v17);
          sub_2588BB688();
          v36 = v35;
          v30 = (*(v24 + 8))(v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v17);
          v59 = v31;
          v38 = *(v31 + 16);
          v37 = *(v31 + 24);
          if (v38 >= v37 >> 1)
          {
            v30 = sub_2587F0644((v37 > 1), v38 + 1, 1);
            v31 = v59;
          }

          *(v31 + 16) = v38 + 1;
          *(v31 + 8 * v38 + 32) = v36;
          v34 += v57;
          --v29;
        }

        while (v29);
      }

      else
      {

        v31 = MEMORY[0x277D84F90];
      }

      v39 = v55;
      sub_2587BBEE4(v28, 0, v31);
      v41 = v40;

      v42 = v53;
      v43 = v50;
      if (v41)
      {

        v44 = *(v51 + 8);
        v44(v48, v17);
        v44(v43, v17);
        return sub_2587BBBF4(v42, v39);
      }

      else
      {
        sub_2587BBB1C();
        sub_2588BB678();
        v45 = v51;
        v46 = *(v51 + 8);
        v46(v48, v17);
        v46(v43, v17);
        sub_2587BBB68(v42);
        return (*(v45 + 56))(v39, 0, 1, v17);
      }
    }
  }

  else
  {
    sub_2587BBA90(0);
    v13 = *(*(v12 - 8) + 56);

    return v13(a3, 1, 1, v12);
  }
}

uint64_t sub_2587BAD9C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2587BB2C8();
  if (v2)
  {
    v31 = v2;
    v32 = a1;
    v3 = sub_2588BBAC8();
    v30[1] = v30;
    v4 = *(v3 - 8);
    MEMORY[0x28223BE20](v3);
    v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    swift_getKeyPath(byte_2588C0620);
    swift_getKeyPath(byte_2588C0648);
    sub_2588BBD78();

    v7 = sub_2588BBA58();
    v30[0] = v30;
    v8 = *(v7 - 8);
    v9 = *(v8 + 64);
    MEMORY[0x28223BE20](v7);
    v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
    sub_2588BBA68();
    v11 = (*(v4 + 8))(v6, v3);
    MEMORY[0x28223BE20](v11);
    sub_2588BBA38();
    sub_2587BBA44();
    v12 = sub_2588BD7D8();
    v13 = *(v8 + 8);
    v14 = v13(v30 - v10, v7);
    if (v12 & 1) != 0 || (MEMORY[0x28223BE20](v14), sub_2588BBA28(), v15 = sub_2588BD7D8(), v16 = v13(v30 - v10, v7), (v15))
    {
      v13(v30 - v10, v7);
      if (qword_27F95D020 != -1)
      {
        swift_once();
      }

      sub_2587BBA90(0);
      v18 = v17;
      __swift_project_value_buffer(v17, qword_27F9696D0);
      v20 = v31;
      v19 = v32;
      sub_2588BB6B8();

      return (*(*(v18 - 8) + 56))(v19, 0, 1, v18);
    }

    else
    {
      MEMORY[0x28223BE20](v16);
      sub_2588BBA48();
      v24 = sub_2588BD7D8();
      v13(v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
      v13(v30 - v10, v7);
      if (v24)
      {
        v25 = v32;
        if (qword_27F95D038 != -1)
        {
          swift_once();
        }

        sub_2587BBA90(0);
        v27 = v26;
        __swift_project_value_buffer(v26, qword_27F969718);
        v28 = v31;
        sub_2588BB6B8();

        return (*(*(v27 - 8) + 56))(v25, 0, 1, v27);
      }

      else
      {

        sub_2587BBA90(0);
        return (*(*(v29 - 8) + 56))(v32, 1, 1, v29);
      }
    }
  }

  else
  {
    sub_2587BBA90(0);
    v23 = *(*(v22 - 8) + 56);

    return v23(a1, 1, 1, v22);
  }
}

void *sub_2587BB2C8()
{
  v0 = sub_2588BBAC8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath(byte_2588C0620);
  swift_getKeyPath(byte_2588C0648);
  sub_2588BBD78();

  v4 = sub_2588BBA58();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_2588BBA68();
  v8 = (*(v1 + 8))(v3, v0);
  MEMORY[0x28223BE20](v8);
  sub_2588BBA38();
  sub_2587BBA44();
  LOBYTE(v3) = sub_2588BD7D8();
  v9 = *(v5 + 8);
  v10 = v9(&v17 - v7, v4);
  if (v3 & 1) != 0 || (MEMORY[0x28223BE20](v10), sub_2588BBA28(), v11 = sub_2588BD7D8(), v12 = v9(&v17 - v7, v4), (v11))
  {
    v9(&v17 - v7, v4);
    if (qword_27F95D010 != -1)
    {
      swift_once();
    }

    v13 = qword_27F9696B0;
  }

  else
  {
    MEMORY[0x28223BE20](v12);
    sub_2588BBA48();
    v16 = sub_2588BD7D8();
    v9(&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
    v9(&v17 - v7, v4);
    if ((v16 & 1) == 0)
    {
      return 0;
    }

    if (qword_27F95D008 != -1)
    {
      swift_once();
    }

    v13 = qword_27F9696A8;
  }

  v14 = v13;
  return v13;
}

uint64_t sub_2587BB644()
{
  v1 = OBJC_IVAR____TtC11MedicalIDUI18HeightDataProvider__locale;
  sub_2587BBAB8(0, &qword_27F95DAA8, MEMORY[0x28220C190], MEMORY[0x277CBCED0]);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HeightDataProvider(uint64_t a1)
{
  result = qword_27F95DA98;
  if (!qword_27F95DA98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2587BB758(uint64_t a1)
{
  sub_2587BBAB8(319, &qword_27F95DAA8, MEMORY[0x28220C190], MEMORY[0x277CBCED0]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2587BB818@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for HeightDataProvider(0);
  result = sub_2588BBD18();
  *a2 = result;
  return result;
}

uint64_t sub_2587BB858(uint64_t *a1)
{
  swift_getKeyPath(byte_2588C0620);
  swift_getKeyPath(byte_2588C0648);
  sub_2588BBD78();
}

uint64_t sub_2587BB8D4(char *a1, uint64_t *a2)
{
  v3 = sub_2588BBAC8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = *(v4 + 16);
  v7(&v10 - v6, a1, v3);
  swift_getKeyPath(byte_2588C0620);
  KeyPath = swift_getKeyPath(byte_2588C0648);
  MEMORY[0x28223BE20](KeyPath);
  v7(&v10 - v6, &v10 - v6, v3);

  sub_2588BBD88();
  return (*(v4 + 8))(&v10 - v6, v3);
}

unint64_t sub_2587BBA44()
{
  result = qword_27F95DAB0;
  if (!qword_27F95DAB0)
  {
    sub_2588BBA58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95DAB0);
  }

  return result;
}

void sub_2587BBAB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_2587BBB1C()
{
  result = qword_27F95D488;
  if (!qword_27F95D488)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F95D488);
  }

  return result;
}

uint64_t sub_2587BBB68(uint64_t a1)
{
  sub_2587BBAB8(0, &qword_27F95D478, sub_2587BBA90, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2587BBBF4(uint64_t a1, uint64_t a2)
{
  sub_2587BBAB8(0, &qword_27F95D478, sub_2587BBA90, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_2587BBC88(void *result, double a2, double a3)
{
  v21 = result;
  v22 = 0;
  v5 = 0;
  v6 = a2;
  v7 = MEMORY[0x277D84F90];
  v8 = a2 == a3;
  if (a2 >= a3)
  {
    goto LABEL_4;
  }

  while (!__OFADD__(v5++, 1))
  {
    for (i = v5 + a2; ; i = v6)
    {
      sub_2587BBA90(0);
      v13 = v12;
      v14 = *(v12 - 8);
      v15 = *(v14 + 64);
      MEMORY[0x28223BE20](v12);
      v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_2587BBB1C();
      v17 = v21;
      v18 = sub_2588BB678();
      MEMORY[0x28223BE20](v18);
      (*(v14 + 16))(v16, v16, v13);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_2587EFFDC(0, v7[2] + 1, 1, v7);
      }

      v20 = v7[2];
      v19 = v7[3];
      if (v20 >= v19 >> 1)
      {
        v7 = sub_2587EFFDC((v19 > 1), v20 + 1, 1, v7);
      }

      (*(v14 + 8))(v16, v13);
      v7[2] = v20 + 1;
      result = (*(v14 + 32))(v7 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v20, v16, v13);
      v6 = i;
      v8 = i == a3;
      if (i < a3)
      {
        break;
      }

LABEL_4:
      v11 = !v8;
      if ((v11 | v22))
      {
        return v7;
      }

      v22 = 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2587BBEE4(uint64_t result, char a2, uint64_t a3)
{
  if ((a2 & 1) == 0)
  {
    v3 = *(a3 + 16);
    if (v3)
    {
      v4 = v3 - 1;
      if (v3 == 1)
      {
        return *(a3 + 32);
      }

      else
      {
        v5 = (a3 + 40);
        do
        {
          if (!v4)
          {
            return *(a3 + 8 * v3 + 24);
          }

          v6 = *(v5 - 1);
          if (v6 >= *&result)
          {
            return *(v5 - 1);
          }

          v7 = *v5;
          if (*v5 == *&result)
          {
            return *v5;
          }

          ++v5;
          --v4;
        }

        while (v6 >= *&result || v7 <= *&result);
        if (*&result - v6 >= v7 - *&result)
        {
          v9 = v7;
        }

        else
        {
          v9 = v6;
        }

        *&result = v9;
      }
    }

    else
    {
      *&result = 0.0;
    }
  }

  return result;
}

uint64_t type metadata accessor for MedicalIDDataContentView(uint64_t a1)
{
  result = qword_27F95DAD0;
  if (!qword_27F95DAD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2587BC00C(uint64_t a1)
{
  type metadata accessor for MedicalIDModelProvider();
  if (v1 <= 0x3F)
  {
    type metadata accessor for MedicalIDDataViewModel(319);
    if (v2 <= 0x3F)
    {
      sub_2587BC234(319);
      if (v3 <= 0x3F)
      {
        sub_2587C4E34(319, &qword_27F95DAB8, MEMORY[0x28220C230], MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          sub_2587C4E34(319, &qword_27F95DAC0, MEMORY[0x28220C1A0], MEMORY[0x277CDF468]);
          if (v5 <= 0x3F)
          {
            sub_2587C4E34(319, &qword_27F95DAC8, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
            if (v6 <= 0x3F)
            {
              sub_2587BC38C(319, &qword_27F95DAF0, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
              if (v7 <= 0x3F)
              {
                sub_2587BC38C(319, &qword_27F95DAF8, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
                if (v8 <= 0x3F)
                {
                  sub_2587BC310(319);
                  if (v9 <= 0x3F)
                  {
                    sub_2587BC38C(319, &qword_27F95DB10, MEMORY[0x277D85048], MEMORY[0x277CE10B8]);
                    if (v10 <= 0x3F)
                    {
                      swift_cvw_initStructMetadataWithLayoutString();
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

void sub_2587BC234(uint64_t a1)
{
  if (!qword_27F95DAE0)
  {
    sub_25878E130(255, &qword_27F95D3C0, off_2798A65E8);
    sub_2587BC2A8();
    v1 = sub_2588BC368();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95DAE0);
    }
  }
}

unint64_t sub_2587BC2A8()
{
  result = qword_27F95DAE8;
  if (!qword_27F95DAE8)
  {
    sub_25878E130(255, &qword_27F95D3C0, off_2798A65E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95DAE8);
  }

  return result;
}

void sub_2587BC310(uint64_t a1)
{
  if (!qword_27F95DB00)
  {
    sub_2587BC38C(255, &qword_27F95DB08, &type metadata for MedicalIDDisplaySection, MEMORY[0x277D83D88]);
    v1 = sub_2588BD2F8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95DB00);
    }
  }
}

void sub_2587BC38C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_2587BC44C(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(BOOL, unint64_t, uint64_t), void (*a6)(char *, unint64_t))
{
  v23 = a6;
  v24 = a1;
  v8 = v6;
  v25 = a2;
  v10 = a4(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v21 - v12;
  v14 = *(a3 + 16);
  v15 = MEMORY[0x277D84F90];
  if (!v14)
  {
    return v15;
  }

  v27 = MEMORY[0x277D84F90];
  v22 = a5;
  a5(0, v14, 0);
  v15 = v27;
  v16 = (a3 + 32);
  while (1)
  {
    v17 = *v16++;
    v26 = v17;
    v24(&v26);
    if (v8)
    {
      break;
    }

    v8 = 0;
    v27 = v15;
    v19 = *(v15 + 16);
    v18 = *(v15 + 24);
    if (v19 >= v18 >> 1)
    {
      v22(v18 > 1, v19 + 1, 1);
      v15 = v27;
    }

    *(v15 + 16) = v19 + 1;
    v23(v13, v15 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v19);
    if (!--v14)
    {
      return v15;
    }
  }

  __break(1u);
  return result;
}

void sub_2587BC5FC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_2587BC664(uint64_t a1)
{
  v2 = sub_2588BB9B8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v23[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2587AFFC8(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v23[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2587C3CA8(a1, v8, sub_2587AFFC8);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_2587C50B0(v8, sub_2587AFFC8);
    return 0;
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    v10 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    type metadata accessor for MedicalIDDataViewModel(0);
    v11 = sub_2588BBA88();
    [v10 setLocale_];

    [v10 setDateStyle_];
    v12 = sub_2588BB958();
    v13 = [v10 stringFromDate_];

    v14 = sub_2588BD8A8();
    v16 = v15;

    (*(v3 + 8))(v5, v2);
    v17 = sub_2588BD858();
    MEMORY[0x28223BE20](v17 - 8);
    sub_2588BD7E8();
    if (qword_27F95D000 != -1)
    {
      swift_once();
    }

    v18 = qword_27F95DA88;
    v19 = sub_2588BBAC8();
    MEMORY[0x28223BE20](v19 - 8);
    v20 = v18;
    sub_2588BBAB8();
    sub_2588BD8B8();
    sub_2587C4E34(0, &qword_27F9609E0, sub_2587C4D28, MEMORY[0x277D84560]);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_2588C00B0;
    *(v21 + 56) = MEMORY[0x277D837D0];
    *(v21 + 64) = sub_2587C4D8C();
    *(v21 + 32) = v14;
    *(v21 + 40) = v16;
    v22 = sub_2588BD878();

    return v22;
  }
}

uint64_t sub_2587BCA74(uint64_t a1)
{
  v2 = sub_2588BB9B8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v23[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2587AFFC8(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v23[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2587C3CA8(a1, v8, sub_2587AFFC8);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_2587C50B0(v8, sub_2587AFFC8);
    return 0;
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    v10 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v11 = sub_2588BBA88();
    [v10 setLocale_];

    [v10 setDateStyle_];
    v12 = sub_2588BB958();
    v13 = [v10 stringFromDate_];

    v14 = sub_2588BD8A8();
    v16 = v15;

    (*(v3 + 8))(v5, v2);
    v17 = sub_2588BD858();
    MEMORY[0x28223BE20](v17 - 8);
    sub_2588BD7E8();
    if (qword_27F95D000 != -1)
    {
      swift_once();
    }

    v18 = qword_27F95DA88;
    v19 = sub_2588BBAC8();
    MEMORY[0x28223BE20](v19 - 8);
    v20 = v18;
    sub_2588BBAB8();
    sub_2588BD8B8();
    sub_2587C4E34(0, &qword_27F9609E0, sub_2587C4D28, MEMORY[0x277D84560]);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_2588C00B0;
    *(v21 + 56) = MEMORY[0x277D837D0];
    *(v21 + 64) = sub_2587C4D8C();
    *(v21 + 32) = v14;
    *(v21 + 40) = v16;
    v22 = sub_2588BD878();

    return v22;
  }
}

uint64_t sub_2587BCE84@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2588BC598();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2587C4E34(0, &qword_27F95DB28, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for MedicalIDDataContentView(0);
  sub_2587C5110(v1 + *(v10 + 36), v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_2588BBF18();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_2588BDBE8();
    v13 = sub_2588BCB58();
    sub_2588BBC68();

    sub_2588BC588();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_2587BD098@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, void *a5@<X8>)
{
  v36 = a4;
  v35 = a3;
  v8 = type metadata accessor for MedicalIDDataContentView(0);
  v9 = (a5 + v8[6]);
  sub_25878E130(0, &qword_27F95D3C0, off_2798A65E8);
  sub_2587BC2A8();
  *v9 = sub_2588BC358();
  v9[1] = v10;
  v11 = v8[7];
  *(a5 + v11) = swift_getKeyPath(byte_2588C07C8);
  v12 = MEMORY[0x277CDF458];
  sub_2587C4E34(0, &qword_27F95DB18, MEMORY[0x28220C230], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v13 = v8[8];
  *(a5 + v13) = swift_getKeyPath(byte_2588C0700);
  sub_2587C4E34(0, &qword_27F95DB20, MEMORY[0x28220C1A0], v12);
  swift_storeEnumTagMultiPayload();
  v14 = v8[9];
  *(a5 + v14) = swift_getKeyPath(byte_2588C07F8);
  sub_2587C4E34(0, &qword_27F95DB28, MEMORY[0x277CDF3E0], v12);
  swift_storeEnumTagMultiPayload();
  v15 = a5 + v8[11];
  LOBYTE(v37) = 0;
  sub_2588BD2B8();
  v16 = v39;
  *v15 = v38;
  *(v15 + 1) = v16;
  v17 = a5 + v8[12];
  LOBYTE(v37) = 8;
  sub_2587BC38C(0, &qword_27F95DB08, &type metadata for MedicalIDDisplaySection, MEMORY[0x277D83D88]);
  sub_2588BD2B8();
  v18 = v39;
  *v17 = v38;
  *(v17 + 1) = v18;
  v19 = (a5 + v8[13]);
  v37 = 0;
  sub_2588BD2B8();
  v20 = v39;
  *v19 = v38;
  v19[1] = v20;
  v21 = (a5 + v8[14]);
  v37 = 0;
  sub_2588BD2B8();
  v22 = v39;
  *v21 = v38;
  v21[1] = v22;
  *a5 = a1;
  v23 = sub_2588BBB48();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v34 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_2588BBB18();
  v27 = sub_2588BBAC8();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = &v34 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588BBA98();
  sub_2587B4D50(v26, v30, (a5 + v8[5]));

  (*(v28 + 8))(v30, v27);
  result = (*(v24 + 8))(v26, v23);
  v32 = a5 + v8[10];
  v33 = v35;
  *v32 = a2;
  *(v32 + 1) = v33;
  v32[16] = v36;
  return result;
}

uint64_t sub_2587BD470@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v45 = a1;
  v2 = type metadata accessor for MedicalIDDataContentView(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v40 = v4;
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2587A7460(0);
  v7 = v6 - 8;
  v44 = *(v6 - 8);
  v43 = *(v44 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v42 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v36 - v10;
  v46 = v1;
  sub_2588BCB68();
  sub_2587A8454(0, &qword_27F95D1C0, sub_2587A7578, &_s10BackgroundVN);
  sub_2587A8D34();
  sub_2588BBEE8();
  v37 = v5;
  v38 = type metadata accessor for MedicalIDDataContentView;
  v36 = v1;
  sub_2587C3CA8(v1, v5, type metadata accessor for MedicalIDDataContentView);
  v12 = *(v3 + 80);
  v39 = v12 | 7;
  v13 = swift_allocObject();
  v41 = type metadata accessor for MedicalIDDataContentView;
  sub_2587C51BC(v5, v13 + ((v12 + 16) & ~v12), type metadata accessor for MedicalIDDataContentView);
  sub_2587A74A8(0);
  v15 = &v11[*(v14 + 36)];
  *v15 = sub_2587BE1C0;
  v15[1] = 0;
  v15[2] = sub_2587C2664;
  v15[3] = v13;
  v16 = *(*(*v1 + 32) + 16);
  KeyPath = swift_getKeyPath(byte_2588C0700);
  v18 = &v11[*(v7 + 44)];
  v19 = type metadata accessor for MedicalIDNavigationBarViewModifier(0);
  *&v18[v19[5]] = KeyPath;
  v20 = MEMORY[0x277CDF458];
  sub_2587C4E34(0, &qword_27F95DB20, MEMORY[0x28220C1A0], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  sub_25878E130(0, &qword_27F95D3C0, off_2798A65E8);
  sub_2587BC2A8();
  v21 = v16;
  v22 = sub_2588BC358();
  v24 = v23;
  *&v18[v19[8]] = swift_getKeyPath("h0\n'");
  sub_2587C4E34(0, &qword_27F95DB30, MEMORY[0x277CDD848], v20);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for MedicalIDDataManager(0);
  sub_2587C5068(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager, &protocol conformance descriptor for MedicalIDDataManager);
  v25 = sub_2588BBF58();
  *v18 = 0;
  v26 = &v18[v19[6]];
  *v26 = v22;
  v26[1] = v24;
  *&v18[v19[7]] = v21;
  v27 = &v18[v19[9]];
  *v27 = v25;
  v27[8] = v28 & 1;
  v29 = v42;
  sub_2587C3D10(v11, v42, sub_2587A7460);
  v30 = v37;
  sub_2587C3CA8(v36, v37, v38);
  v31 = (*(v44 + 80) + 16) & ~*(v44 + 80);
  v32 = (v43 + v12 + v31) & ~v12;
  v33 = swift_allocObject();
  sub_258794AA8(v29, v33 + v31);
  sub_2587C51BC(v30, v33 + v32, v41);
  result = sub_2587C3D78(v11, sub_2587A7460);
  v35 = v45;
  *v45 = sub_2587C267C;
  v35[1] = v33;
  return result;
}

void sub_2587BD91C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = sub_2588BBC58();
  v49 = *(v3 - 8);
  v50 = v3;
  MEMORY[0x28223BE20](v3);
  v48 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MedicalIDDataContentView(0);
  v6 = v5 - 8;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v5);
  v10 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v43 - v11;
  v13 = sub_2588BC868();
  MEMORY[0x28223BE20](v13);
  sub_2587A76AC(0);
  v45 = v14;
  v47 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v44 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588BC6F8();
  v51 = a1;
  LODWORD(v52) = 0;
  sub_2587C5068(&qword_27F95DB70, MEMORY[0x277CE0428], MEMORY[0x277CE0448]);
  sub_2588BE0D8();
  sub_2587A7740(0);
  sub_2587C5068(&qword_27F95D320, sub_2587A7740, MEMORY[0x277CE14C0]);
  sub_2588BBEA8();
  v16 = (a1 + *(v6 + 56));
  v17 = *v16;
  v18 = *(v16 + 1);
  LOBYTE(v55) = v17;
  v56 = v18;
  sub_2587BC310(0);
  sub_2588BD2E8();
  v55 = v52;
  v56 = v53;
  v57 = v54;
  sub_2587C3CA8(a1, v12, type metadata accessor for MedicalIDDataContentView);
  v19 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v20 = swift_allocObject();
  sub_2587C51BC(v12, v20 + v19, type metadata accessor for MedicalIDDataContentView);
  sub_2587C3CA8(a1, v10, type metadata accessor for MedicalIDDataContentView);
  v21 = v46;
  v22 = swift_allocObject();
  sub_2587C51BC(v10, v22 + v19, type metadata accessor for MedicalIDDataContentView);
  sub_2587C2C34(0, &qword_27F95D328, sub_2587A84B8, sub_2587A8540, MEMORY[0x277CE0338]);
  sub_2587C5068(&qword_27F95D3C8, sub_2587A76AC, MEMORY[0x277CDF340]);
  sub_2587A8A1C();
  sub_2587A8A70();
  v23 = v45;
  v24 = v44;
  sub_2588BD078();

  (*(v47 + 8))(v24, v23);
  v25 = (a1 + *(v6 + 64));
  v26 = *v25;
  v27 = v25[1];
  v55 = v26;
  v56 = v27;
  sub_2587BC38C(0, &qword_27F95DB10, MEMORY[0x277D85048], MEMORY[0x277CE10B8]);
  sub_2588BD2E8();
  v28 = v52;
  v29 = v53;
  v30 = v54;
  sub_25878E130(0, &qword_27F95D3C0, off_2798A65E8);
  sub_2587BC2A8();
  v31 = sub_2588BC358();
  v33 = v32;
  if (qword_27F95D190 != -1)
  {
    swift_once();
  }

  v34 = v50;
  v35 = __swift_project_value_buffer(v50, qword_27F969968);
  v36 = v48;
  v37 = *(v49 + 16);
  v37(v48, v35, v34);
  v38 = sub_2588BD1F8();
  if (qword_27F95D188 != -1)
  {
    swift_once();
  }

  v39 = __swift_project_value_buffer(v34, qword_27F969950);
  v37(v36, v39, v34);
  v40 = sub_2588BD1F8();
  sub_2587A8454(0, &qword_27F95D1C0, sub_2587A7578, &_s10BackgroundVN);
  v42 = (v21 + *(v41 + 36));
  *v42 = v31;
  v42[1] = v33;
  v42[2] = v28;
  v42[3] = v29;
  v42[4] = v30;
  v42[5] = v38;
  v42[6] = v40;
}

uint64_t sub_2587BDFD0(uint64_t a1)
{
  type metadata accessor for MedicalIDDataContentView(0);
  sub_2587BC310(0);

  sub_2588BD2D8();
}

uint64_t sub_2587BE054@<X0>(char *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = _s12SheetContentVMa(0);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = type metadata accessor for MedicalIDDataContentView(0);
  sub_2587C3CA8(a2 + *(v11 + 20), &v9[*(v7 + 28)], type metadata accessor for MedicalIDDataViewModel);
  v12 = *a2;
  *v9 = v10;
  *&v9[*(v7 + 32)] = v12;
  v13 = *(a2 + *(v11 + 24));
  if (v13)
  {
    v14 = v13;

    sub_2587D7B90(v13, v12, a3);

    return sub_2587C50B0(v9, _s12SheetContentVMa);
  }

  else
  {
    sub_25878E130(0, &qword_27F95D3C0, off_2798A65E8);
    sub_2587BC2A8();

    result = sub_2588BC348();
    __break(1u);
  }

  return result;
}

double sub_2587BE1C0@<D0>(double *a1@<X8>)
{
  sub_2588BC058();
  v3 = v2;
  sub_2588BC048();
  v5 = v3 + v4;
  sub_2588BC048();
  result = v5 + v6;
  *a1 = v5 + v6;
  return result;
}

uint64_t sub_2587BE208(uint64_t *a1, uint64_t a2)
{
  type metadata accessor for MedicalIDDataContentView(0);
  sub_2587BC38C(0, &qword_27F95DB10, MEMORY[0x277D85048], MEMORY[0x277CE10B8]);
  return sub_2588BD2D8();
}

uint64_t sub_2587BE298@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v69 = a2;
  v80 = a4;
  sub_2587C2760(0);
  v76 = v6;
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v79 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for MedicalIDDataContentView(0);
  v9 = *(v70 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v70);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = a3;
  sub_2587C3CA8(a3, v11, type metadata accessor for MedicalIDDataContentView);
  v12 = sub_2588BC248();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = *(v13 + 16);
  v78 = a1;
  v71 = v15;
  v72 = v13 + 16;
  v15(&v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v12);
  sub_2588BDA78();
  v16 = sub_2588BDA68();
  v17 = *(v9 + 80);
  v67 = ~v17;
  v68 = v17;
  v18 = (v17 + 32) & ~v17;
  v19 = *(v13 + 80);
  v65 = ~v19;
  v73 = v10;
  v74 = v14;
  v64 = v10 + v19;
  v20 = (v10 + v19 + v18) & ~v19;
  v66 = v17 | v19;
  v21 = swift_allocObject();
  v22 = MEMORY[0x277D85700];
  *(v21 + 16) = v16;
  *(v21 + 24) = v22;
  sub_2587C51BC(v11, v21 + v18, type metadata accessor for MedicalIDDataContentView);
  v23 = *(v13 + 32);
  v62 = v12;
  v75 = v13 + 32;
  v63 = v23;
  v23(v21 + v20, &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  v24 = sub_2588BDAA8();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v27 = (v26 + 15) & 0xFFFFFFFFFFFFFFF0;
  v28 = &v58 - v27;
  sub_2588BDA88();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v60 = sub_2588BC198();
    v61 = &v58;
    v59 = *(v60 - 8);
    MEMORY[0x28223BE20](v60);
    v58 = &v58 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
    v83 = 0;
    v84 = 0xE000000000000000;
    sub_2588BDDF8();

    v83 = 0xD000000000000037;
    v84 = 0x80000002588C9160;
    v82 = 64;
    v30 = sub_2588BDF78();
    MEMORY[0x259C8CAA0](v30);

    MEMORY[0x28223BE20](v31);
    (*(v25 + 16))(&v58 - v27, &v58 - v27, v24);
    v32 = v58;
    sub_2588BC188();
    (*(v25 + 8))(v28, v24);
    v33 = v79;
    sub_2587C3D10(v69, v79, sub_2587A7460);
    sub_2587C2C34(0, &qword_27F95D400, sub_2587A7460, MEMORY[0x28220E4E8], MEMORY[0x277CDFAB8]);
    (*(v59 + 32))(v33 + *(v34 + 36), v32, v60);
  }

  else
  {
    sub_2587C2C34(0, &qword_27F95D408, sub_2587A7460, MEMORY[0x277CDD8B0], MEMORY[0x277CDFAB8]);
    v36 = v79;
    v37 = (v79 + *(v35 + 36));
    v38 = sub_2588BC0A8();
    (*(v25 + 32))(&v37[*(v38 + 20)], &v58 - v27, v24);
    v33 = v36;
    *v37 = &unk_2588C0768;
    *(v37 + 1) = v21;
    sub_2587C3D10(v69, v36, sub_2587A7460);
  }

  v39 = v77;
  v40 = v77 + *(v70 + 48);
  v41 = *v40;
  v42 = *(v40 + 8);
  LOBYTE(v83) = v41;
  v84 = v42;
  sub_2587BC310(0);
  v43 = sub_2588BD2C8();
  v81 = v82;
  MEMORY[0x28223BE20](v43);
  v45 = &v58 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_2587C3CA8(v39, v45, type metadata accessor for MedicalIDDataContentView);
  v47 = v74;
  MEMORY[0x28223BE20](v46);
  v48 = &v58 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = v62;
  v71(v48, v78, v62);
  v50 = (v68 + 16) & v67;
  v51 = (v64 + v50) & v65;
  v52 = swift_allocObject();
  sub_2587C51BC(v45, v52 + v50, type metadata accessor for MedicalIDDataContentView);
  v63(v52 + v51, v48, v49);
  sub_2587BC38C(0, &qword_27F95DB08, &type metadata for MedicalIDDisplaySection, MEMORY[0x277D83D88]);
  sub_2587A7460(255);
  v54 = v53;
  v55 = sub_2587C27E4();
  v83 = v54;
  v84 = v55;
  swift_getOpaqueTypeConformance2();
  sub_2587C2B98();
  v56 = v76;
  sub_2588BD108();

  return (*(v7 + 8))(v33, v56);
}

uint64_t sub_2587BEB2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a3;
  v4[3] = a4;
  sub_2588BDA78();
  v4[4] = sub_2588BDA68();
  v6 = sub_2588BDA28();

  return MEMORY[0x2822009F8](sub_2587BEBC4, v6, v5);
}

uint64_t sub_2587BEBC4()
{
  v1 = *(v0 + 24);

  sub_2587BEC30(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2587BEC30(uint64_t a1)
{
  v37 = a1;
  v2 = sub_2588BC248();
  v38 = *(v2 - 8);
  v39 = v2;
  v3 = *(v38 + 64);
  MEMORY[0x28223BE20](v2);
  v36 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MedicalIDDataContentView(0);
  v35 = *(v4 - 8);
  v5 = *(v35 + 64);
  MEMORY[0x28223BE20](v4);
  sub_2587C4E34(0, &qword_27F95D830, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v34 - v7;
  v9 = v1 + *(v4 + 40);
  v11 = *v9;
  v10 = *(v9 + 8);
  v12 = *(v9 + 16);
  v40 = v1;
  aBlock = v11;
  v42 = v10;
  LOBYTE(v43) = v12;
  sub_2587BC38C(0, &qword_27F95DAF0, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
  MEMORY[0x259C8C5A0](&v47);
  if (v47 == 1)
  {
    aBlock = v11;
    v42 = v10;
    LOBYTE(v43) = v12;
    LOBYTE(v47) = 0;
    sub_2588BD438();
    v13 = sub_2588BDAA8();
    v14 = *(*(v13 - 8) + 56);
    v34 = v8;
    v14(v8, 1, 1, v13);
    sub_2587C3CA8(v40, &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MedicalIDDataContentView);
    v15 = v38;
    v16 = v36;
    v17 = v39;
    (*(v38 + 16))(v36, v37, v39);
    sub_2588BDA78();
    v18 = sub_2588BDA68();
    v19 = (*(v35 + 80) + 32) & ~*(v35 + 80);
    v20 = (v5 + *(v15 + 80) + v19) & ~*(v15 + 80);
    v21 = swift_allocObject();
    v22 = MEMORY[0x277D85700];
    *(v21 + 16) = v18;
    *(v21 + 24) = v22;
    sub_2587C51BC(&v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v19, type metadata accessor for MedicalIDDataContentView);
    (*(v15 + 32))(v21 + v20, v16, v17);
    sub_2587ABD24(0, 0, v34, &unk_2588C0778, v21);
  }

  v23 = v40;
  v24 = *(v40 + *(v4 + 24));
  if (v24)
  {
    result = [v24 suggestHealthData];
    if (result)
    {
      v26 = *(*v23 + 24);
      v27 = *(v26 + 16);

      v28 = [v27 profileIdentifier];
      v29 = [v28 type];

      v30 = v29 == 3;
      v31 = *(v26 + 16);
      v32 = swift_allocObject();
      swift_weakInit();
      v45 = sub_2587C2DA0;
      v46 = v32;
      aBlock = MEMORY[0x277D85DD0];
      v42 = 1107296256;
      v43 = sub_2587BC5FC;
      v44 = &block_descriptor_0;
      v33 = _Block_copy(&aBlock);

      [v31 hk:v30 fetchExistingDemographicInformationWithOptions:v33 completion:?];
      _Block_release(v33);
    }
  }

  else
  {
    sub_25878E130(0, &qword_27F95D3C0, off_2798A65E8);
    sub_2587BC2A8();
    result = sub_2588BC348();
    __break(1u);
  }

  return result;
}

unsigned __int8 *sub_2587BF110(unsigned __int8 *result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  if (*result != 8 && *a2 == 8)
  {
    type metadata accessor for MedicalIDDataContentView(0);
    sub_2587BC38C(0, &qword_27F95DAF8, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
    result = sub_2588BD2C8();
    if (v6)
    {
      v5 = sub_2588BD2D8();
      MEMORY[0x28223BE20](v5);
      sub_2588BD5F8();
      sub_2588BC0D8();
    }
  }

  return result;
}

uint64_t sub_2587BF248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  sub_2588BDA78();
  v5[6] = sub_2588BDA68();
  v7 = sub_2588BDA28();

  return MEMORY[0x2822009F8](sub_2587BF2E0, v7, v6);
}

uint64_t sub_2587BF2E0()
{
  v14 = v0;

  v1 = type metadata accessor for MedicalIDDataContentView(0);
  MedicalIDDataViewModel.displayActionForFirstLaunch.getter(v13);
  if ((v13[0] & 0xFF00) != 0x200)
  {
    v2 = v13[0];
    if ((v13[0] & 0x100) != 0)
    {
      v5 = *(v0 + 32);
      v6 = v5 + *(v1 + 48);
      v7 = *(v6 + 8);
      *(v0 + 16) = *v6;
      *(v0 + 24) = v7;
      *(v0 + 56) = v2;
      sub_2587BC310(0);

      sub_2588BD2D8();

      v8 = (v5 + *(v1 + 44));
      v9 = *v8;
      v10 = *(v8 + 1);
      *(v0 + 16) = v9;
      *(v0 + 24) = v10;
      *(v0 + 56) = 1;
      sub_2587BC38C(0, &qword_27F95DAF8, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
      sub_2588BD2D8();
    }

    else
    {
      v3 = *(v0 + 40);
      v4 = swift_task_alloc();
      *(v4 + 16) = v3;
      *(v4 + 24) = v2;
      sub_2588BD5F8();
      sub_2588BC0D8();
    }
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_2587BF490@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v90 = a2;
  sub_2587C25A4(0);
  v88 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v86 = &v83 - v7;
  sub_2587A7D6C(0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v89 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v87 = (&v83 - v11);
  v12 = type metadata accessor for MedicalIDDataContentView(0);
  v13 = v12 - 8;
  v83 = *(v12 - 8);
  v14 = *(v83 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = type metadata accessor for MedicalIDSettingsViewModel(0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2587C2C34(0, &qword_27F95D1F0, sub_2587A78BC, sub_2587A79DC, MEMORY[0x277CDFAB8]);
  v19 = v18;
  v84 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v83 - v20;
  sub_2587A7820(0);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v85 = &v83 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v92 = &v83 - v25;
  v26 = *(a1 + *(v13 + 32));
  if (v26)
  {
    v27 = a1;
    v28 = v26;
    v29 = [v28 isLockScreen];
    v91 = v6;
    if (v29)
    {

LABEL_4:
      v30 = v92;
      (*(v84 + 56))(v92, 1, 1, v19);
LABEL_9:
      v68 = v87;
      sub_2587BFBE8(v87);
      v69 = v86;
      sub_2587C00B8(v27, v86);
      v70 = sub_2588BCB78();
      sub_2588BBE38();
      v71 = &v69[*(v88 + 36)];
      *v71 = v70;
      *(v71 + 1) = v72;
      *(v71 + 2) = v73;
      *(v71 + 3) = v74;
      *(v71 + 4) = v75;
      v71[40] = 0;
      v76 = v85;
      sub_2587C3CA8(v30, v85, sub_2587A7820);
      v77 = v89;
      sub_2587C3CA8(v68, v89, sub_2587A7D6C);
      v78 = v91;
      sub_2587C3D10(v69, v91, sub_2587C25A4);
      v79 = v90;
      sub_2587C3CA8(v76, v90, sub_2587A7820);
      sub_2587A7774(0);
      v81 = v80;
      sub_2587C3CA8(v77, v79 + *(v80 + 48), sub_2587A7D6C);
      sub_2587C3D10(v78, v79 + *(v81 + 64), sub_2587C25A4);
      sub_2587C3D78(v69, sub_2587C25A4);
      sub_2587C50B0(v68, sub_2587A7D6C);
      sub_2587C50B0(v92, sub_2587A7820);
      sub_2587C3D78(v78, sub_2587C25A4);
      sub_2587C50B0(v77, sub_2587A7D6C);
      return sub_2587C50B0(v76, sub_2587A7820);
    }

    if ([v28 isShowWhenLockedVisible])
    {
    }

    else
    {
      v31 = [v28 isShareDuringEmergencyCallVisible];

      if (!v31)
      {
        goto LABEL_4;
      }
    }

    sub_2587B5F90(v17);
    sub_25885C670(v17, v21);
    v32 = sub_2588BCBA8();
    sub_2588BBE38();
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v40 = v39;
    sub_2587A7904(0);
    v42 = &v21[*(v41 + 36)];
    *v42 = v32;
    *(v42 + 1) = v34;
    *(v42 + 2) = v36;
    *(v42 + 3) = v38;
    *(v42 + 4) = v40;
    v42[40] = 0;
    sub_2587C3CA8(v27, &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MedicalIDDataContentView);
    v43 = (*(v83 + 80) + 16) & ~*(v83 + 80);
    v44 = swift_allocObject();
    sub_2587C51BC(&v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v44 + v43, type metadata accessor for MedicalIDDataContentView);
    sub_2587A78BC(0);
    v46 = &v21[*(v45 + 36)];
    *v46 = sub_2587C1CF0;
    *(v46 + 1) = 0;
    *(v46 + 2) = sub_2587C4A1C;
    *(v46 + 3) = v44;
    v47 = sub_2588BD5C8();
    v49 = v48;
    sub_2587C1DAC(&v94);
    v50 = v101;
    v51 = v100;
    v52 = v101;
    v103[6] = v100;
    v103[7] = v101;
    v53 = v102;
    v54 = v102;
    v103[8] = v102;
    v55 = v96;
    v56 = v97;
    v57 = v96;
    v58 = v97;
    v103[2] = v96;
    v103[3] = v97;
    v60 = v98;
    v59 = v99;
    v62 = v98;
    v61 = v99;
    v103[4] = v98;
    v103[5] = v99;
    *&v104 = v47;
    *(&v104 + 1) = v49;
    v63 = &v21[*(v19 + 36)];
    *(v63 + 6) = v100;
    *(v63 + 7) = v50;
    v64 = v104;
    *(v63 + 8) = v53;
    *(v63 + 9) = v64;
    *(v63 + 2) = v55;
    *(v63 + 3) = v56;
    *(v63 + 4) = v60;
    *(v63 + 5) = v59;
    v65 = v95;
    v67 = v94;
    v66 = v95;
    v103[0] = v94;
    v103[1] = v95;
    *v63 = v94;
    *(v63 + 1) = v65;
    v105[6] = v51;
    v105[7] = v52;
    v105[8] = v54;
    v105[2] = v57;
    v105[3] = v58;
    v105[4] = v62;
    v105[5] = v61;
    v105[0] = v67;
    v105[1] = v66;
    v106 = v47;
    v107 = v49;
    sub_2587C3CA8(v103, &v93, sub_2587A79DC);
    sub_2587C50B0(v105, sub_2587A79DC);
    v30 = v92;
    sub_2587C4AB8(v21, v92);
    (*(v84 + 56))(v30, 0, 1, v19);
    goto LABEL_9;
  }

  sub_25878E130(0, &qword_27F95D3C0, off_2798A65E8);
  sub_2587BC2A8();
  result = sub_2588BC348();
  __break(1u);
  return result;
}

void *sub_2587BFBE8@<X0>(void *a1@<X8>)
{
  v3 = sub_2588BBF18();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v32 - v8;
  v10 = sub_2588BD4A8();
  v33 = *(v10 - 8);
  v34 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2587C257C(0);
  v36 = v13;
  v14 = MEMORY[0x28223BE20](v13);
  v16 = v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v32 - v17;
  sub_2587C24E0(0, &qword_27F95DB90, MEMORY[0x277CE0330]);
  v35 = v19;
  MEMORY[0x28223BE20](v19);
  v21 = v32 - v20;
  v22 = *(v1 + *(type metadata accessor for MedicalIDDataContentView(0) + 24));
  if (v22)
  {
    if ([v22 isLockScreen])
    {
      v23 = sub_2588BD198();
      sub_2588BD5C8();
      sub_2588BC018();
      v24 = v37;
      v25 = v38;
      v26 = v39;
      v27 = v40;
      *v21 = v23;
      *(v21 + 1) = v24;
      v21[16] = v25;
      *(v21 + 3) = v26;
      v21[32] = v27;
      *(v21 + 40) = v41;
      swift_storeEnumTagMultiPayload();
      sub_2587A8384(0, &qword_27F95D270, MEMORY[0x277CE0F78], MEMORY[0x277CDF688], MEMORY[0x277CDFAB8]);
      sub_2587C4F14();
      sub_2587C4FB8();
      return sub_2588BC778();
    }

    else
    {
      sub_2588BD498();
      sub_2587BCE84(v9);
      (*(v4 + 104))(v7, *MEMORY[0x277CDF3C0], v3);
      v29 = sub_2588BBF08();
      v32[1] = a1;
      v30 = *(v4 + 8);
      v30(v7, v3);
      v30(v9, v3);
      if (v29)
      {
        v31 = 1.0;
      }

      else
      {
        v31 = 0.0;
      }

      (*(v33 + 32))(v16, v12, v34);
      *&v16[*(v36 + 36)] = v31;
      sub_2587C51BC(v16, v18, sub_2587C257C);
      sub_2587C3CA8(v18, v21, sub_2587C257C);
      swift_storeEnumTagMultiPayload();
      sub_2587A8384(0, &qword_27F95D270, MEMORY[0x277CE0F78], MEMORY[0x277CDF688], MEMORY[0x277CDFAB8]);
      sub_2587C4F14();
      sub_2587C4FB8();
      sub_2588BC778();
      return sub_2587C50B0(v18, sub_2587C257C);
    }
  }

  else
  {
    sub_25878E130(0, &qword_27F95D3C0, off_2798A65E8);
    sub_2587BC2A8();
    result = sub_2588BC348();
    __break(1u);
  }

  return result;
}

uint64_t sub_2587C00B8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v138 = a2;
  sub_2587A804C(0, &qword_27F95D2E8, &qword_27F95D2F0, sub_2587A82BC, sub_2587A83D8);
  v137 = v3;
  v136 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v133 = &v112 - v4;
  sub_2587A8454(0, &qword_27F95D318, type metadata accessor for MedicalIDDeleteView, MEMORY[0x277CDF928]);
  v6 = v5;
  v130 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (&v112 - v7);
  sub_2587A83D8(0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v132 = &v112 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v131 = &v112 - v12;
  sub_2587A82F0(0);
  v128 = v13;
  v127 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v126 = &v112 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2587A82BC(0);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v129 = &v112 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v112 - v18;
  sub_2587A81B0(0);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v23 = &v112 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v112 - v24;
  sub_2587A7EB4(0);
  v27 = v26;
  v28 = *(v26 - 8);
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v112 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v134 = &v112 - v32;
  sub_2587C0ECC(&v112 - v32);
  v33 = type metadata accessor for MedicalIDDataContentView(0);
  v34 = *(v33 + 24);
  v139 = a1;
  v35 = *(a1 + v34);
  if (v35)
  {
    v36 = v33;
    v135 = v31;
    if ([v35 isLockScreen])
    {
      v37 = 1;
LABEL_20:
      (*(v136 + 56))(v25, v37, 1, v137);
      v105 = *(v28 + 16);
      v106 = v135;
      v107 = v134;
      v105(v135, v134, v27);
      sub_2587C3CA8(v25, v23, sub_2587A81B0);
      v108 = v138;
      v105(v138, v106, v27);
      sub_2587A8240(0, &qword_27F95D298, sub_2587A7EB4, sub_2587A81B0);
      sub_2587C3CA8(v23, &v108[*(v109 + 48)], sub_2587A81B0);
      sub_2587C50B0(v25, sub_2587A81B0);
      v110 = *(v28 + 8);
      v110(v107, v27);
      sub_2587C50B0(v23, sub_2587A81B0);
      return (v110)(v106, v27);
    }

    v122 = v35;
    v125 = v28;
    v38 = *(v36 + 20);
    v121 = *(v139 + v38);
    v39 = [v121 dateSaved];
    sub_2587AFFC8(0);
    MEMORY[0x28223BE20](v40 - 8);
    v120 = v41;
    v42 = &v112 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
    v124 = v25;
    if (v39)
    {
      sub_2588BB988();

      v43 = 0;
    }

    else
    {
      v43 = 1;
    }

    v44 = sub_2588BB9B8();
    v45 = *(v44 - 8);
    v46 = *(v45 + 56);
    v119 = v44;
    v118 = v46;
    v117 = v45 + 56;
    (v46)(v42, v43, 1);
    v123 = v38;
    v47 = sub_2587BC664(v42);
    v49 = v48;
    sub_2587C50B0(v42, sub_2587AFFC8);
    if (!v49)
    {
      (*(v127 + 56))(v19, 1, 1, v128);
      goto LABEL_11;
    }

    v112 = v8;
    v113 = v19;
    v114 = v6;
    v115 = v27;
    v116 = v23;
    *&v142 = v47;
    *(&v142 + 1) = v49;
    sub_25878F648();

    v50 = sub_2588BCDF8();
    v52 = v51;
    v54 = v53;
    sub_2588BCBF8();
    v55 = sub_2588BCDD8();
    v57 = v56;
    v59 = v58;

    sub_2587B1CF8(v50, v52, v54 & 1);

    LODWORD(v142) = sub_2588BC8D8();
    v60 = sub_2588BCD98();
    v62 = v61;
    v64 = v63;
    v66 = v65;
    sub_2587B1CF8(v55, v57, v59 & 1);

    v67 = sub_2588BCBE8();
    sub_2588BBE38();
    v147 = v64 & 1;
    v146 = 0;
    *&v142 = v60;
    *(&v142 + 1) = v62;
    LOBYTE(v143) = v64 & 1;
    *(&v143 + 1) = v66;
    LOBYTE(v144) = v67;
    *(&v144 + 1) = v68;
    *v145 = v69;
    *&v145[8] = v70;
    *&v145[16] = v71;
    v145[24] = 0;
    v72 = sub_2588BD9A8();
    v73 = HKUIJoinStringsForAutomationIdentifier();

    if (v73)
    {

      sub_2588BD8A8();

      sub_2587A8384(0, &qword_27F95D308, MEMORY[0x277CE0BD8], MEMORY[0x277CDF928], MEMORY[0x277CDFAB8]);
      sub_2587C4C84();
      v74 = v126;
      sub_2588BCFB8();

      v140[2] = v144;
      *v141 = *v145;
      *&v141[9] = *&v145[9];
      v140[1] = v143;
      v140[0] = v142;
      sub_2587B1E08(v140);
      v75 = v74;
      v19 = v113;
      sub_2587C51BC(v75, v113, sub_2587A82F0);
      (*(v127 + 56))(v19, 0, 1, v128);
      v23 = v116;
      v27 = v115;
      v6 = v114;
      v8 = v112;
LABEL_11:
      v76 = *(*(*v139 + 32) + 16);
      v77 = v122;
      v78 = v76;
      LOBYTE(v76) = MedicalIDDataViewModel.isDeletionVisible(with:healthStore:)(v77, v78);

      v28 = v125;
      if (v76)
      {
        v79 = [v121 dateSaved];
        v80 = MEMORY[0x28223BE20](v79);
        v82 = &v112 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
        if (v80)
        {
          v83 = v80;
          sub_2588BB988();

          v84 = 0;
        }

        else
        {
          v84 = 1;
        }

        v118(v82, v84, 1, v119);
        sub_2587BC664(v82);
        v88 = v87;
        sub_2587C50B0(v82, sub_2587AFFC8);
        if (v88)
        {
        }

        *v8 = swift_getKeyPath("h0\n'");
        sub_2587C4E34(0, &qword_27F95DB30, MEMORY[0x277CDD848], MEMORY[0x277CDF458]);
        swift_storeEnumTagMultiPayload();
        v89 = type metadata accessor for MedicalIDDeleteView(0);
        v90 = v8 + *(v89 + 20);
        type metadata accessor for MedicalIDDataManager(0);
        sub_2587C5068(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager, &protocol conformance descriptor for MedicalIDDataManager);
        *v90 = sub_2588BBF58();
        v90[8] = v91 & 1;
        v92 = v8 + *(v89 + 24);
        LOBYTE(v140[0]) = 0;
        sub_2588BD2B8();
        v93 = *(&v142 + 1);
        *v92 = v142;
        *(v92 + 1) = v93;
        LOBYTE(v92) = sub_2588BCB98();
        sub_2588BBE38();
        v94 = v8 + *(v6 + 36);
        *v94 = v92;
        *(v94 + 1) = v95;
        *(v94 + 2) = v96;
        *(v94 + 3) = v97;
        *(v94 + 4) = v98;
        v94[40] = 0;
        v86 = v131;
        sub_2587C4BFC(v8, v131);
        v85 = 0;
      }

      else
      {
        v85 = 1;
        v86 = v131;
      }

      (*(v130 + 56))(v86, v85, 1, v6);
      v99 = v19;
      v100 = v19;
      v101 = v129;
      sub_2587C3CA8(v99, v129, sub_2587A82BC);
      v102 = v132;
      sub_2587C3CA8(v86, v132, sub_2587A83D8);
      v103 = v133;
      sub_2587C3CA8(v101, v133, sub_2587A82BC);
      sub_2587A8240(0, &qword_27F95D2F0, sub_2587A82BC, sub_2587A83D8);
      sub_2587C3CA8(v102, v103 + *(v104 + 48), sub_2587A83D8);
      sub_2587C50B0(v86, sub_2587A83D8);
      sub_2587C50B0(v100, sub_2587A82BC);
      sub_2587C50B0(v102, sub_2587A83D8);
      sub_2587C50B0(v101, sub_2587A82BC);
      v25 = v124;
      sub_2587C4B60(v103, v124);
      v37 = 0;
      goto LABEL_20;
    }

    __break(1u);
  }

  sub_25878E130(0, &qword_27F95D3C0, off_2798A65E8);
  sub_2587BC2A8();
  result = sub_2588BC348();
  __break(1u);
  return result;
}

uint64_t sub_2587C0ECC@<X0>(uint64_t a1@<X8>)
{
  v89 = a1;
  v95 = type metadata accessor for MedicalIDData(0);
  v2 = *(v95 - 1);
  MEMORY[0x28223BE20](v95);
  v91 = &v75 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2587B63B8(0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v90 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v94 = &v75 - v7;
  v8 = _s15SectionGridItemVMa(0);
  v97 = *(v8 - 1);
  v9 = MEMORY[0x28223BE20](v8);
  v98 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v75 - v11;
  v100 = v1;
  result = sub_2587BC44C(sub_2587C4DD4, v99, &unk_2869BCD98, _s15SectionGridItemVMa, sub_2587F0664, sub_2587C4DF4);
  v14 = result;
  v15 = MEMORY[0x277D84F90];
  v96 = *(result + 16);
  if (!v96)
  {
LABEL_51:

    v102 = v15;
    swift_getKeyPath(byte_2588C07A8);
    sub_2587A7FB4(0);
    sub_2587C25CC(0);
    sub_2587C5068(&qword_27F95D2D0, sub_2587A7FB4, MEMORY[0x277D83980]);
    sub_2587A815C();
    sub_2587C5068(&qword_27F95DB88, sub_2587C25CC, MEMORY[0x277CE14C0]);
    return sub_2588BD4B8();
  }

  v16 = 0;
  v88 = (v2 + 48);
  v87 = xmmword_2588C0670;
  v93 = v8;
  while (v16 < *(v14 + 16))
  {
    v17 = (*(v97 + 80) + 32) & ~*(v97 + 80);
    v18 = *(v97 + 72);
    sub_2587C3CA8(v14 + v17 + v18 * v16, v12, _s15SectionGridItemVMa);
    if (![*&v12[v8[7]] isLockScreen])
    {
      goto LABEL_46;
    }

    v19 = v12[v8[6]];
    if (v19 > 3)
    {
      if (v12[v8[6]] <= 5u)
      {
        if (v19 == 4)
        {
          v28 = *(*&v12[v8[5]] + 56);
          swift_getKeyPath(" 0\n'");
          v101 = v28;
          sub_2587C5068(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager, &protocol conformance descriptor for MedicalIDDataManager);

          sub_2588BBB98();

          v29 = OBJC_IVAR____TtC11MedicalIDUI20MedicalIDDataManager__medicalIDData;
          swift_beginAccess();
          v30 = v28 + v29;
          v31 = v94;
          sub_2587C3CA8(v30, v94, sub_2587B63B8);

          v32 = v90;
          sub_2587C3CA8(v31, v90, sub_2587B63B8);
          if ((*v88)(v32, 1, v95) == 1)
          {
            sub_2587C50B0(v32, sub_2587B63B8);
            sub_2587AFFC8(0);
            v86 = &v75;
            v34 = *(*(v33 - 8) + 64);
            MEMORY[0x28223BE20](v33 - 8);
            v84 = ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
            v35 = (&v75 - v84);
            v83 = &v75 - v84;
            v36 = sub_2588BB9B8();
            v37 = *(*(v36 - 8) + 56);
            v92 = v36;
            v38 = (v37)(v35, 1, 1);
            v80 = v37;
            v85 = &v75;
            MEMORY[0x28223BE20](v38);
            v82 = &v75 - v84;
            v37();
            sub_2587C4E0C(0);
            v84 = &v75;
            MEMORY[0x28223BE20](v39 - 8);
            v41 = &v75 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
            v81 = v41;
            v76 = sub_2588BB818();
            v42 = *(v76 - 8);
            v75 = *(v42 + 56);
            v77 = v42 + 56;
            v75(v41, 1, 1, v76);
            v43 = v91;
            v44 = v92;
            v45 = v80;
            (v80)(v91 + v95[21], 1, 1, v92);
            v79 = v95[13];
            (v45)(v43 + v79, 1, 1, v44);
            v78 = v95[14];
            (v45)(v43 + v78, 1, 1, v92);
            v46 = (v43 + v95[15]);
            v47 = v43 + v95[18];
            *v47 = v87;
            v80 = v95[19];
            v75(v80 + v43, 1, 1, v76);
            v92 = v95[20];
            *v43 = 0;
            *(v43 + 8) = 0;
            *(v43 + 16) = MEMORY[0x277D84F90];
            *(v43 + 24) = 0u;
            *(v43 + 40) = 0u;
            *(v43 + 56) = 0u;
            *(v43 + 72) = 0u;
            *(v43 + 88) = 0u;
            *(v43 + 104) = 0;
            sub_2587C4EAC(v83, v43 + v79, sub_2587AFFC8);
            sub_2587C4EAC(v82, v43 + v78, sub_2587AFFC8);
            *v46 = 0;
            v46[1] = 0;
            v48 = v95;
            *(v43 + v95[16]) = 0;
            *(v43 + v48[17]) = 0;
            sub_2587C4E98(*v47, *(v47 + 8));
            *v47 = v87;
            sub_2587C4EAC(v81, v80 + v43, sub_2587C4E0C);
            *(v43 + v92) = 0;
          }

          else
          {
            v70 = v32;
            v43 = v91;
            sub_2587C51BC(v70, v91, type metadata accessor for MedicalIDData);
          }

          sub_2587C50B0(v94, sub_2587B63B8);
          v71 = *(*(v43 + 16) + 16);
          sub_2587C50B0(v43, type metadata accessor for MedicalIDData);
          v8 = v93;
          if (v71)
          {
            goto LABEL_46;
          }
        }

        else
        {
          v63 = &v12[*(type metadata accessor for MedicalIDDataViewModel(0) + 36)];
          v64 = &v63[*(type metadata accessor for MedicalIDBiometricsViewModel(0) + 20)];
          if (*(v64 + 12) || *(v64 + 13) || *(v64 + 11))
          {
            goto LABEL_46;
          }
        }

        goto LABEL_3;
      }

      if (v19 == 6)
      {
        v49 = [*&v12[*(type metadata accessor for MedicalIDDataViewModel(0) + 44)] medicalConditions];
        if (!v49)
        {
          goto LABEL_3;
        }
      }

      else
      {
        v49 = [*&v12[*(type metadata accessor for MedicalIDDataViewModel(0) + 44)] medicalNotes];
        if (!v49)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      if (v12[v8[6]] <= 1u)
      {
        if (v12[v8[6]])
        {
          v50 = &v12[*(type metadata accessor for MedicalIDDataViewModel(0) + 48)];
          v51 = &v50[*(type metadata accessor for MedicalIDPregnancyViewModel(0) + 20)];
          v52 = v95[13];
          sub_2587AFFC8(0);
          v92 = &v75;
          v54 = *(*(v53 - 8) + 64);
          MEMORY[0x28223BE20](v53 - 8);
          v85 = ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
          v55 = (&v75 - v85);
          v86 = v51;
          sub_2587C3CA8(&v51[v52], &v75 - v85, sub_2587AFFC8);
          v56 = sub_2588BB9B8();
          v57 = *(v56 - 8);
          v84 = *(v57 + 48);
          v83 = v57 + 48;
          LODWORD(v51) = (v84)(v55, 1, v56);
          v58 = v55;
          v8 = v93;
          v59 = sub_2587C50B0(v58, sub_2587AFFC8);
          if (v51 != 1)
          {
            MEMORY[0x28223BE20](v59);
            v60 = (&v75 - v85);
            sub_2587C3CA8(&v86[v61], &v75 - v85, sub_2587AFFC8);
            v62 = (v84)(v60, 1, v56);
            sub_2587C50B0(v60, sub_2587AFFC8);
            if (v62 != 1)
            {
              goto LABEL_46;
            }
          }
        }

        else
        {
          v20 = &v12[*(type metadata accessor for MedicalIDDataViewModel(0) + 40)];
          v21 = *(v20 + 1);
          if (v21)
          {
            if ((v21 & 0x2000000000000000) != 0 ? HIBYTE(v21) & 0xF : *v20 & 0xFFFFFFFFFFFFLL)
            {
              goto LABEL_46;
            }
          }

          if (*&v20[v95[18] + 8] >> 60 != 15)
          {
            goto LABEL_46;
          }

          v23 = v95[19];
          sub_2587C4E0C(0);
          MEMORY[0x28223BE20](v24 - 8);
          v26 = &v75 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
          sub_2587C3CA8(&v20[v23], v26, sub_2587C4E0C);
          v27 = sub_2588BB818();
          LODWORD(v23) = (*(*(v27 - 8) + 48))(v26, 1, v27);
          sub_2587C50B0(v26, sub_2587C4E0C);
          v8 = v93;
          if (v23 != 1 || *&v20[v95[15] + 8] || *&v20[v95[20]])
          {
            goto LABEL_46;
          }
        }

        goto LABEL_3;
      }

      if (v19 == 2)
      {
        v49 = [*&v12[*(type metadata accessor for MedicalIDDataViewModel(0) + 44)] medicationInfo];
        if (!v49)
        {
          goto LABEL_3;
        }
      }

      else
      {
        v49 = [*&v12[*(type metadata accessor for MedicalIDDataViewModel(0) + 44)] allergyInfo];
        if (!v49)
        {
          goto LABEL_3;
        }
      }
    }

    v65 = v49;
    v66 = sub_2588BD8A8();
    v68 = v67;

    v69 = HIBYTE(v68) & 0xF;
    if ((v68 & 0x2000000000000000) == 0)
    {
      v69 = v66 & 0xFFFFFFFFFFFFLL;
    }

    if (v69)
    {
LABEL_46:
      sub_2587C4DF4(v12, v98);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v102 = v15;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2587F0664(0, *(v15 + 16) + 1, 1);
        v15 = v102;
      }

      v74 = *(v15 + 16);
      v73 = *(v15 + 24);
      if (v74 >= v73 >> 1)
      {
        sub_2587F0664((v73 > 1), v74 + 1, 1);
        v15 = v102;
      }

      *(v15 + 16) = v74 + 1;
      result = sub_2587C4DF4(v98, v15 + v17 + v74 * v18);
      goto LABEL_4;
    }

LABEL_3:
    result = sub_2587C50B0(v12, _s15SectionGridItemVMa);
LABEL_4:
    if (v96 == ++v16)
    {
      goto LABEL_51;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2587C1CF0@<X0>(void *a1@<X8>)
{
  result = sub_2588BC058();
  *a1 = v3;
  return result;
}

uint64_t sub_2587C1D1C(uint64_t *a1, uint64_t a2)
{
  type metadata accessor for MedicalIDDataContentView(0);
  sub_2587BC38C(0, &qword_27F95DB10, MEMORY[0x277D85048], MEMORY[0x277CE10B8]);
  return sub_2588BD2D8();
}

void sub_2587C1DAC(uint64_t a2@<X8>)
{
  v3 = [objc_opt_self() systemGroupedBackgroundColor];
  v4 = sub_2588BD148();
  type metadata accessor for MedicalIDDataContentView(0);
  sub_2587BC38C(0, &qword_27F95DB10, MEMORY[0x277D85048], MEMORY[0x277CE10B8]);
  sub_2588BD2C8();
  v5 = sub_2588BCB98();
  sub_2588BBE38();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = sub_2588BCB78();
  sub_2588BBE38();
  *a2 = v4;
  *(a2 + 8) = xmmword_2588C0680;
  *(a2 + 24) = 0;
  *(a2 + 32) = v19;
  *(a2 + 40) = 256;
  *(a2 + 48) = v5;
  *(a2 + 56) = v7;
  *(a2 + 64) = v9;
  *(a2 + 72) = v11;
  *(a2 + 80) = v13;
  *(a2 + 88) = 0;
  *(a2 + 96) = v14;
  *(a2 + 104) = v15;
  *(a2 + 112) = v16;
  *(a2 + 120) = v17;
  *(a2 + 128) = v18;
  *(a2 + 136) = 0;
}

uint64_t sub_2587C1EFC(uint64_t a1, char a2)
{
  sub_2588BD698();
  sub_2587A815C();
  return sub_2588BC238();
}

uint64_t sub_2587C1F68@<X0>(char *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for MedicalIDDataViewModel(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v23[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *a1;
  v10 = *a2;
  v11 = type metadata accessor for MedicalIDDataContentView(0);
  sub_2587C3CA8(a2 + v11[5], v8, type metadata accessor for MedicalIDDataViewModel);
  v12 = *(a2 + v11[6]);
  if (v12)
  {
    v13 = a2 + v11[12];
    v14 = *v13;
    v15 = *(v13 + 1);
    v23[8] = v14;
    v24 = v15;
    sub_2587BC310(0);

    v16 = v12;
    sub_2588BD2E8();
    v17 = v25;
    v18 = v26;
    v19 = v27;
    v20 = _s15SectionGridItemVMa(0);
    *(a3 + v20[5]) = v10;
    result = sub_2587C51BC(v8, a3, type metadata accessor for MedicalIDDataViewModel);
    *(a3 + v20[6]) = v9;
    *(a3 + v20[7]) = v16;
    v22 = a3 + v20[8];
    *v22 = v17;
    *(v22 + 8) = v18;
    *(v22 + 16) = v19;
  }

  else
  {
    sub_25878E130(0, &qword_27F95D3C0, off_2798A65E8);
    sub_2587BC2A8();

    result = sub_2588BC348();
    __break(1u);
  }

  return result;
}

uint64_t sub_2587C2134@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v33 = a1;
  v36 = a2;
  v35 = sub_2588BD4A8();
  v30 = *(v35 - 8);
  v2 = v30;
  v3 = MEMORY[0x28223BE20](v35);
  v34 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v29 - v5;
  v7 = sub_2588BC978();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2587A80A8(0);
  v12 = v11;
  v32 = *(v11 - 8);
  v13 = v32;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v29 - v17;
  sub_2588BC958();
  _s15SectionGridItemVMa(0);
  sub_2587C5068(&qword_27F95D2C8, _s15SectionGridItemVMa, &unk_2588C7EE8);
  sub_2588BCF88();
  (*(v8 + 8))(v10, v7);
  v29 = v6;
  sub_2588BD498();
  v19 = *(v13 + 16);
  v31 = v16;
  v19(v16, v18, v12);
  v20 = *(v2 + 16);
  v21 = v34;
  v22 = v6;
  v23 = v35;
  v20(v34, v22, v35);
  v24 = v36;
  v19(v36, v16, v12);
  sub_2587A8240(0, &qword_27F95D2B8, sub_2587A80A8, MEMORY[0x277CDF088]);
  v20(&v24[*(v25 + 48)], v21, v23);
  v26 = *(v30 + 8);
  v26(v29, v23);
  v27 = *(v32 + 8);
  v27(v18, v12);
  v26(v21, v23);
  return (v27)(v31, v12);
}

void sub_2587C24E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_2587A8384(255, &qword_27F95D270, MEMORY[0x277CE0F78], MEMORY[0x277CDF688], MEMORY[0x277CDFAB8]);
    v7 = v6;
    sub_2587C257C(255);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_2587C2610(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_2587C267C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2587A7460(0);
  v6 = (*(*(v5 - 8) + 80) + 16) & ~*(*(v5 - 8) + 80);
  v7 = *(*(v5 - 8) + 64);
  v8 = *(type metadata accessor for MedicalIDDataContentView(0) - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_2587BE298(a1, v2 + v6, v9, a2);
}

void sub_2587C2760(uint64_t a1)
{
  if (!qword_27F95DB38)
  {
    sub_2587A7460(255);
    sub_2587C27E4();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F95DB38);
    }
  }
}

unint64_t sub_2587C27E4()
{
  result = qword_27F95DB40;
  if (!qword_27F95DB40)
  {
    sub_2587A7460(255);
    sub_2587C2894();
    sub_2587C5068(&qword_27F95DB60, type metadata accessor for MedicalIDNavigationBarViewModifier, &unk_2588C8224);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95DB40);
  }

  return result;
}

unint64_t sub_2587C2894()
{
  result = qword_27F95DB48;
  if (!qword_27F95DB48)
  {
    sub_2587A74A8(255);
    sub_2587C5068(&qword_27F95DB50, sub_2587A74F0, MEMORY[0x277CDD6E0]);
    sub_2587C5068(&qword_27F95DB58, sub_2587A792C, MEMORY[0x277CE06A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95DB48);
  }

  return result;
}

uint64_t sub_2587C2974()
{
  v2 = *(type metadata accessor for MedicalIDDataContentView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(sub_2588BC248() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_2587AEAC8;

  return sub_2587BEB2C(v7, v8, v0 + v3, v0 + v6);
}

unsigned __int8 *sub_2587C2AB4(unsigned __int8 *a1, _BYTE *a2)
{
  v5 = *(type metadata accessor for MedicalIDDataContentView(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_2588BC248() - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_2587BF110(a1, a2, v2 + v6, v9);
}

unint64_t sub_2587C2B98()
{
  result = qword_27F95DB68;
  if (!qword_27F95DB68)
  {
    sub_2587BC38C(255, &qword_27F95DB08, &type metadata for MedicalIDDisplaySection, MEMORY[0x277D83D88]);
    sub_2587B9684();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95DB68);
  }

  return result;
}

void sub_2587C2C34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_2587C2CD8(uint64_t a1)
{
  v2 = sub_2588BBF18();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_2588BC3A8();
}

uint64_t objectdestroy_13Tm()
{
  v1 = type metadata accessor for MedicalIDDataContentView(0);
  v61 = *(*(v1 - 1) + 80);
  v59 = *(*(v1 - 1) + 64);
  v2 = sub_2588BC248();
  v62 = *(v2 - 8);
  v63 = v2;
  v58 = *(v62 + 80);
  swift_unknownObjectRelease();
  v65 = v0;
  v60 = (v61 + 32) & ~v61;

  v64 = v1;
  v57 = v0 + v60;
  v3 = (v0 + v60 + v1[5]);

  v4 = type metadata accessor for MedicalIDDataViewModel(0);
  v5 = (v3 + v4[5]);

  v6 = type metadata accessor for MedicalIDData(0);
  v7 = v6[13];
  v8 = sub_2588BB9B8();
  v73 = *(v8 - 8);
  v9 = *(v73 + 48);
  if (!v9(v5 + v7, 1, v8))
  {
    (*(v73 + 8))(v5 + v7, v8);
  }

  v10 = v6[14];
  if (!v9(v5 + v10, 1, v8))
  {
    (*(v73 + 8))(v5 + v10, v8);
  }

  v11 = (v5 + v6[18]);
  v12 = v11[1];
  if (v12 >> 60 != 15)
  {
    sub_2587C2610(*v11, v12);
  }

  v13 = v6[19];
  v14 = sub_2588BB818();
  v66 = *(v14 - 8);
  v69 = *(v66 + 48);
  if (!v69(v5 + v13, 1, v14))
  {
    (*(v66 + 8))(v5 + v13, v14);
  }

  v15 = v6[21];
  if (!v9(v5 + v15, 1, v8))
  {
    (*(v73 + 8))(v5 + v15, v8);
  }

  v16 = v4[6];
  v17 = sub_2588BBB48();
  v67 = *(*(v17 - 8) + 8);
  v68 = v17;
  v67(v3 + v16);

  v18 = v4[8];
  v19 = sub_2588BBAC8();
  v72 = *(*(v19 - 8) + 8);
  v72(v3 + v18, v19);
  v70 = v4;
  v71 = v3;
  v20 = v3 + v4[9];

  v21 = type metadata accessor for MedicalIDBiometricsViewModel(0);
  v22 = &v20[v21[5]];

  v23 = v6[13];
  if (!v9(&v22[v23], 1, v8))
  {
    (*(v73 + 8))(&v22[v23], v8);
  }

  v24 = v6[14];
  if (!v9(&v22[v24], 1, v8))
  {
    (*(v73 + 8))(&v22[v24], v8);
  }

  v25 = &v22[v6[18]];
  v26 = v25[1];
  if (v26 >> 60 != 15)
  {
    sub_2587C2610(*v25, v26);
  }

  v27 = v6[19];
  if (!v69(&v22[v27], 1, v14))
  {
    (*(v66 + 8))(&v22[v27], v14);
  }

  v28 = v6[21];
  if (!v9(&v22[v28], 1, v8))
  {
    (*(v73 + 8))(&v22[v28], v8);
  }

  v72(&v20[v21[6]], v19);
  v29 = &v20[v21[7]];
  v72(v29, v19);

  v30 = &v20[v21[8]];
  v72(v30, v19);
  v31 = type metadata accessor for MedicalIDWeightFormatter(0);

  v32 = (v71 + v70[10]);

  v33 = v6[13];
  if (!v9(v32 + v33, 1, v8))
  {
    (*(v73 + 8))(v32 + v33, v8);
  }

  v34 = v6[14];
  if (!v9(v32 + v34, 1, v8))
  {
    (*(v73 + 8))(v32 + v34, v8);
  }

  v35 = (v32 + v6[18]);
  v36 = v35[1];
  if (v36 >> 60 != 15)
  {
    sub_2587C2610(*v35, v36);
  }

  v37 = v6[19];
  if (!v69(v32 + v37, 1, v14))
  {
    (*(v66 + 8))(v32 + v37, v14);
  }

  v38 = v6[21];
  if (!v9(v32 + v38, 1, v8))
  {
    (*(v73 + 8))(v32 + v38, v8);
  }

  v39 = type metadata accessor for MedicalIDPersonalInfoViewModel(0);
  (v67)(v32 + v39[5], v68);
  v72(v32 + v39[6], v19);

  v40 = (v71 + v70[11]);

  v41 = type metadata accessor for MedicalIDMedicalInfoViewModel(0);
  (v67)(v40 + *(v41 + 20), v68);
  v72(v40 + *(v41 + 24), v19);
  v42 = v71 + v70[12];

  v43 = type metadata accessor for MedicalIDPregnancyViewModel(0);
  v44 = &v42[v43[5]];

  v45 = v6[13];
  if (!v9(&v44[v45], 1, v8))
  {
    (*(v73 + 8))(&v44[v45], v8);
  }

  v46 = v6[14];
  if (!v9(&v44[v46], 1, v8))
  {
    (*(v73 + 8))(&v44[v46], v8);
  }

  v47 = &v44[v6[18]];
  v48 = v47[1];
  if (v48 >> 60 != 15)
  {
    sub_2587C2610(*v47, v48);
  }

  v49 = v6[19];
  if (!v69(&v44[v49], 1, v14))
  {
    (*(v66 + 8))(&v44[v49], v14);
  }

  v50 = v6[21];
  if (!v9(&v44[v50], 1, v8))
  {
    (*(v73 + 8))(&v44[v50], v8);
  }

  (v67)(&v42[v43[6]], v68);
  v72(&v42[v43[7]], v19);

  v51 = v43[9];
  if (!v9(&v42[v51], 1, v8))
  {
    (*(v73 + 8))(&v42[v51], v8);
  }

  v52 = v1[7];
  sub_2587C4E34(0, &qword_27F95DB18, MEMORY[0x28220C230], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (v67)(v57 + v52, v68);
  }

  else
  {
  }

  v53 = v64[8];
  sub_2587C4E34(0, &qword_27F95DB20, MEMORY[0x28220C1A0], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v72((v57 + v53), v19);
  }

  else
  {
  }

  v54 = v64[9];
  sub_2587C4E34(0, &qword_27F95DB28, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v55 = sub_2588BBF18();
    (*(*(v55 - 8) + 8))(v57 + v54, v55);
  }

  else
  {
  }

  (*(v62 + 8))(v65 + ((v60 + v59 + v58) & ~v58), v63);

  return swift_deallocObject();
}