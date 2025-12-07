uint64_t sub_251622B78(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for ClassificationAxisTimeline(255, AssociatedTypeWitness, AssociatedConformanceWitness, v12);
  sub_2516041EC();
  v13 = sub_25163595C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v19[-v15];
  v20 = a5;
  v21 = a6;
  v22 = a2;
  sub_251623174(0, &qword_27F446E28, type metadata accessor for ClassificationFactorTimeline);
  sub_251622F60(sub_251622F54, v17, v16);
  a3(v16);
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_251622DC8(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);

  return sub_251622B78(a1, v1 + v6, v8, v9, v3, v4);
}

uint64_t sub_251622E94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = *(AssociatedConformanceWitness + 64);
  v7 = swift_checkMetadataState();
  return v6(a1, v7, AssociatedConformanceWitness);
}

uint64_t sub_251622F60@<X0>(void (*a1)(char *)@<X0>, void *a2@<X2>, uint64_t a4@<X8>)
{
  v7 = a2[2];
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(*(a2[3] - 8) + 32))(a4, v13, a2[3]);
  }

  else
  {
    (*(v8 + 32))(v11, v13, v7);
    a1(v11);
    (*(v8 + 8))(v11, v7);
  }

  sub_25163595C();
  return swift_storeEnumTagMultiPayload();
}

void sub_251623174(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_2516041EC();
    v4 = sub_25163595C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2516231E8(uint64_t a1)
{
  if (!qword_27F446C80)
  {
    sub_25163516C();
    v1 = sub_25163563C();
    if (!v2)
    {
      atomic_store(v1, &qword_27F446C80);
    }
  }
}

uint64_t sub_251623240(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_251623174(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2516232AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_5Tm_0()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  sub_2515F8380(0);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(*(v6 - 8) + 64);
  v19 = sub_25163522C();
  v11 = *(v19 - 8);
  v12 = *(v11 + 80);
  v13 = (v9 + v10 + v12) & ~v12;
  v18 = *(v11 + 64);
  v14 = v3 | v8 | v12;

  (*(v2 + 8))(v0 + v4, v1);
  v15 = sub_25163516C();
  v16 = *(*(v15 - 8) + 8);
  v16(v0 + v9, v15);
  v16(v0 + v9 + *(v7 + 44), v15);
  (*(v11 + 8))(v0 + v13, v19);

  return MEMORY[0x2821FE8E8](v0, v13 + v18, v14 | 7);
}

uint64_t sub_25162353C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, char *, char *, char *, uint64_t, uint64_t))
{
  v4 = *(v2 + 2);
  v5 = *(v2 + 3);
  v6 = *(*(v4 - 8) + 64);
  v7 = (*(*(v4 - 8) + 80) + 48) & ~*(*(v4 - 8) + 80);
  sub_2515F8380(0);
  v9 = (v7 + v6 + *(*(v8 - 8) + 80)) & ~*(*(v8 - 8) + 80);
  v10 = *(*(v8 - 8) + 64);
  v11 = *(sub_25163522C() - 8);
  v12 = *(v2 + 4);
  v13 = *(v2 + 5);
  v14 = &v2[(v9 + v10 + *(v11 + 80)) & ~*(v11 + 80)];

  return a2(a1, v12, v13, &v2[v7], &v2[v9], v14, v4, v5);
}

uint64_t sub_251623698(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = (*(*(v3 - 8) + 80) + 48) & ~*(*(v3 - 8) + 80);
  v6 = *(*(v3 - 8) + 64);
  sub_2515F8380(0);
  v8 = (v5 + v6 + *(*(v7 - 8) + 80)) & ~*(*(v7 - 8) + 80);
  v9 = *(*(v7 - 8) + 64);
  v10 = *(sub_25163522C() - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = *(v10 + 64);
  v13 = *(swift_getAssociatedTypeWitness() - 8);
  return sub_251621F40(a1, *(v1 + 32), *(v1 + 40), v1 + v5, v1 + v8, v1 + v11, v1 + ((v11 + v12 + *(v13 + 80)) & ~*(v13 + 80)), v3, v4);
}

uint64_t sub_251623850(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2516238E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_251623940(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = (*(*(v3 - 8) + 80) + 48) & ~*(*(v3 - 8) + 80);
  v6 = *(*(v3 - 8) + 64);
  sub_2515F8380(0);
  v8 = *(*(v7 - 8) + 80);
  v9 = (v5 + v6 + v8) & ~v8;
  v10 = *(*(v7 - 8) + 64);
  v11 = *(sub_25163522C() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v11 + 64);
  v14 = *(swift_getAssociatedTypeWitness() - 8);
  v15 = (v12 + v13 + *(v14 + 80)) & ~*(v14 + 80);
  v16 = (*(v14 + 64) + v8 + v15) & ~v8;
  sub_251620AA0(a1, *(v1 + 32), *(v1 + 40), v1 + v5, v1 + v9, v1 + v12, v1 + v15, v1 + v16, *(v1 + ((v10 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)), v3, v4);
}

uint64_t ClassificationLevel.scale.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_25163563C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16[-v10];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = (*(AssociatedConformanceWitness + 56))(AssociatedTypeWitness, AssociatedConformanceWitness);
  v19 = v3;
  v20 = v13;
  v17 = a1;
  v18 = a2;
  sub_2516354CC();
  swift_getWitnessTable();
  sub_2516353DC();

  v14 = *(AssociatedTypeWitness - 8);
  if ((*(v14 + 48))(v11, 1, AssociatedTypeWitness) != 1)
  {
    return (*(v14 + 32))(a3, v11, AssociatedTypeWitness);
  }

  (*(v9 + 8))(v11, v8);
  v20 = 0;
  v21 = 0xE000000000000000;
  sub_25163569C();
  MEMORY[0x25307BC70](0xD00000000000002FLL, 0x800000025163C5F0);
  sub_2516358CC();
  result = sub_25163575C();
  __break(1u);
  return result;
}

uint64_t ClassificationLevel.definition.getter@<X0>(uint64_t a3@<X8>)
{
  sub_2516356BC();

  *a3 = 0xD00000000000001BLL;
  *(a3 + 8) = 0x800000025163B740;
  *(a3 + 16) = 1;
  *(a3 + 24) = 0;
  *(a3 + 32) = 1;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  *(a3 + 64) = 0x4E574F4E4B4E55;
  *(a3 + 72) = 0xE700000000000000;
  return result;
}

uint64_t sub_251623E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = *(AssociatedConformanceWitness + 48);
  v6 = swift_checkMetadataState();
  v5(v6, AssociatedConformanceWitness);
  sub_2516354CC();
  swift_getWitnessTable();
  v7 = sub_2516353EC();

  return v7 & 1;
}

uint64_t ClassificationAxis.thresholds.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_2516352AC();
  v5 = sub_25163563C();
  return (*(*(v5 - 8) + 16))(a2, v2 + v4, v5);
}

uint64_t ClassificationAxis.thresholds.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_2516352AC();
  v5 = sub_25163563C();
  return (*(*(v5 - 8) + 40))(v2 + v4, a1, v5);
}

uint64_t ClassificationAxis.init(scale:thresholds:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *(type metadata accessor for ClassificationAxis(0, a3, a4, a4) + 36);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v10 = sub_2516352AC();
  (*(*(v10 - 8) + 56))(a5 + v9, 1, 1, v10);
  (*(*(a3 - 8) + 32))(a5, a1, a3);
  v11 = sub_25163563C();
  return (*(*(v11 - 8) + 40))(a5 + v9, a2, v11);
}

BOOL static ClassificationAxis.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = *(AssociatedConformanceWitness + 24);
  v11 = *(AssociatedConformanceWitness + 8);
  v43 = AssociatedTypeWitness;
  v44 = v11;
  v45 = v10;
  v12 = sub_2516352AC();
  v42 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v35 - v13;
  v40 = v15;
  v16 = sub_25163563C();
  v41 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v39 = &v35 - v17;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v38 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v20 = &v35 - v19;
  v21 = a1;
  if ((sub_25163532C() & 1) == 0)
  {
    return 0;
  }

  v36 = v14;
  v23 = *(type metadata accessor for ClassificationAxis(0, a3, a4, v22) + 36);
  v37 = TupleTypeMetadata2;
  v24 = *(TupleTypeMetadata2 + 48);
  v25 = *(v41 + 16);
  v25(v20, v21 + v23, v16);
  v25(&v20[v24], a2 + v23, v16);
  v26 = *(v42 + 48);
  v27 = v40;
  if (v26(v20, 1, v40) == 1)
  {
    if (v26(&v20[v24], 1, v27) == 1)
    {
      (*(v41 + 8))(v20, v16);
      return 1;
    }

    goto LABEL_7;
  }

  v28 = v39;
  v25(v39, v20, v16);
  if (v26(&v20[v24], 1, v27) == 1)
  {
    (*(v42 + 8))(v28, v27);
LABEL_7:
    (*(v38 + 8))(v20, v37);
    return 0;
  }

  v30 = v28;
  v31 = v42;
  v32 = v36;
  (*(v42 + 32))(v36, &v20[v24], v27);
  swift_getWitnessTable();
  v33 = sub_25163532C();
  v34 = *(v31 + 8);
  v34(v32, v27);
  v34(v30, v27);
  (*(v41 + 8))(v20, v16);
  return (v33 & 1) != 0;
}

uint64_t sub_25162483C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C616373 && a2 == 0xE500000000000000;
  if (v4 || (sub_2516358DC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6F687365726874 && a2 == 0xEA00000000007364)
  {

    return 1;
  }

  else
  {
    v6 = sub_2516358DC();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_251624944(char a1)
{
  sub_25163590C();
  MEMORY[0x25307C1E0](a1 & 1);
  return sub_25163594C();
}

uint64_t sub_25162498C(char a1)
{
  if (a1)
  {
    return 0x6C6F687365726874;
  }

  else
  {
    return 0x656C616373;
  }
}

uint64_t sub_2516249F8(uint64_t a1)
{
  sub_25163590C();
  sub_25162491C(v3, *v1);
  return sub_25163594C();
}

uint64_t sub_251624A50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25162483C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_251624A80@<X0>(_BYTE *a2@<X8>)
{
  result = sub_25162565C();
  *a2 = result;
  return result;
}

uint64_t sub_251624AAC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_251624B00(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t ClassificationAxis.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v16 = a2;
  type metadata accessor for ClassificationAxis.CodingKeys(255, v6, v5, a4);
  swift_getWitnessTable();
  v7 = sub_25163589C();
  v18 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v16 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25163597C();
  LOBYTE(v19) = 0;
  v10 = v17;
  sub_25163588C();
  if (!v10)
  {
    v17 = *(v16 + 36);
    v22 = 1;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v14 = *(AssociatedConformanceWitness + 24);
    v15 = *(AssociatedConformanceWitness + 8);
    v19 = AssociatedTypeWitness;
    v20 = v15;
    v21 = v14;
    sub_2516352AC();
    swift_getWitnessTable();
    sub_25163583C();
  }

  return (*(v18 + 8))(v9, v7);
}

uint64_t ClassificationAxis.hash(into:)(uint64_t a1, uint64_t a2)
{
  sub_2516352CC();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_2516352AC();
  sub_25163563C();
  swift_getWitnessTable();
  return sub_25163564C();
}

uint64_t ClassificationAxis.hashValue.getter(uint64_t a1)
{
  sub_25163590C();
  ClassificationAxis.hash(into:)(v3, a1);
  return sub_25163594C();
}

uint64_t ClassificationAxis.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v38 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = *(AssociatedConformanceWitness + 24);
  v10 = *(AssociatedConformanceWitness + 8);
  v50 = AssociatedTypeWitness;
  v51 = v10;
  v52 = v9;
  v11 = sub_2516352AC();
  v12 = sub_25163563C();
  v48 = *(v12 - 8);
  v49 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v41 = &v36 - v14;
  v40 = *(a2 - 8);
  MEMORY[0x28223BE20](v13);
  v42 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ClassificationAxis.CodingKeys(255, a2, a3, v16);
  swift_getWitnessTable();
  v44 = sub_25163581C();
  v39 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v18 = &v36 - v17;
  v43 = a2;
  v20 = type metadata accessor for ClassificationAxis(0, a2, a3, v19);
  v37 = *(v20 - 8);
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v36 - v22;
  v24 = *(v21 + 36);
  v25 = *(*(v11 - 8) + 56);
  v47 = v23;
  v45 = v24;
  v25(&v23[v24], 1, 1, v11);
  v26 = a1[3];
  v53 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v26);
  v27 = v18;
  v28 = v46;
  sub_25163596C();
  if (v28)
  {
    v32 = v47;
    __swift_destroy_boxed_opaque_existential_1(v53);
    return (*(v48 + 8))(&v32[v45], v49);
  }

  else
  {
    v29 = v39;
    v30 = v40;
    v31 = v41;
    LOBYTE(v50) = 0;
    sub_2516357FC();
    v33 = v47;
    (*(v30 + 32))(v47, v42, v43);
    LOBYTE(v50) = 1;
    swift_getWitnessTable();
    sub_2516357AC();
    (*(v29 + 8))(v27, v44);
    (*(v48 + 40))(&v33[v45], v31, v49);
    v34 = v37;
    (*(v37 + 16))(v38, v33, v20);
    __swift_destroy_boxed_opaque_existential_1(v53);
    return (*(v34 + 8))(v33, v20);
  }
}

uint64_t sub_25162542C(uint64_t a1, uint64_t a2)
{
  sub_25163590C();
  ClassificationAxis.hash(into:)(v4, a2);
  return sub_25163594C();
}

uint64_t sub_2516254D8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    sub_2516352AC();
    result = sub_25163563C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t DomainIdentifier.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DomainIdentifier.identifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

HealthDomains::DomainIdentifier_optional __swiftcall DomainIdentifier.init(rawValue:)(Swift::String rawValue)
{
  *v1 = rawValue;
  result.value.identifier = rawValue;
  return result;
}

uint64_t Domain.identifier.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t Domain.name.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t Domain.symbol.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t Domain.__allocating_init(identifier:affect:name:symbol:subdomains:measures:)(void *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = swift_allocObject();
  v17 = a1[1];
  v18 = *a2;
  *(result + 16) = *a1;
  *(result + 24) = v17;
  *(result + 32) = v18;
  *(result + 40) = a3;
  *(result + 48) = a4;
  *(result + 56) = a5;
  *(result + 64) = a6;
  *(result + 72) = a7;
  *(result + 80) = a8;
  return result;
}

uint64_t Domain.init(identifier:affect:name:symbol:subdomains:measures:)(void *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1[1];
  v10 = *a2;
  *(v8 + 16) = *a1;
  *(v8 + 24) = v9;
  *(v8 + 32) = v10;
  *(v8 + 40) = a3;
  *(v8 + 48) = a4;
  *(v8 + 56) = a5;
  *(v8 + 64) = a6;
  *(v8 + 72) = a7;
  *(v8 + 80) = a8;
  return v8;
}

uint64_t sub_2516258E0()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x6C6F626D7973;
  v4 = 0x69616D6F64627573;
  if (v1 != 4)
  {
    v4 = 0x736572757361656DLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x746365666661;
  if (v1 != 1)
  {
    v5 = 1701667182;
  }

  if (*v0)
  {
    v2 = v5;
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

uint64_t sub_251625990@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2516268F0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2516259B8(uint64_t a1)
{
  v2 = sub_251625DEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2516259F4(uint64_t a1)
{
  v2 = sub_251625DEC();

  return MEMORY[0x2821FE720](a1, v2);
}

void *Domain.deinit()
{

  return v0;
}

uint64_t Domain.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 88, 7);
}

uint64_t Domain.encode(to:)(void *a1)
{
  v3 = v1;
  sub_2516263C8(0, &qword_27F447418, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251625DEC();
  sub_25163597C();
  v10 = *(v3 + 24);
  v14 = *(v3 + 16);
  v15 = v10;
  v13 = 0;
  sub_251625E40();

  sub_25163588C();
  if (v2)
  {
  }

  else
  {

    LOBYTE(v14) = *(v3 + 32);
    v13 = 1;
    sub_251625E94();
    sub_25163588C();
    LOBYTE(v14) = 2;
    sub_25163584C();
    LOBYTE(v14) = 3;
    sub_25163584C();
    v14 = *(v3 + 72);
    v13 = 4;
    sub_251625EE8(0, &qword_27F447438, &type metadata for DomainIdentifier);
    sub_2516264D4(&qword_27F447440, sub_251625E40, MEMORY[0x277D83948]);
    sub_25163588C();
    v14 = *(v3 + 80);
    v13 = 5;
    sub_251625EE8(0, &qword_27F447448, &type metadata for MeasureIdentifier);
    sub_251626550(&qword_27F447450, sub_251609D98, MEMORY[0x277D83948]);
    sub_25163588C();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_251625DEC()
{
  result = qword_27F447420;
  if (!qword_27F447420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447420);
  }

  return result;
}

unint64_t sub_251625E40()
{
  result = qword_27F447428;
  if (!qword_27F447428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447428);
  }

  return result;
}

unint64_t sub_251625E94()
{
  result = qword_27F447430;
  if (!qword_27F447430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447430);
  }

  return result;
}

void sub_251625EE8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_2516354CC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t Domain.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  Domain.init(from:)(a1);
  return v2;
}

uint64_t *Domain.init(from:)(void *a1)
{
  sub_2516263C8(0, &qword_27F447458, MEMORY[0x277D844C8]);
  v14 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251625DEC();
  v15 = v7;
  sub_25163596C();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v8 = v5;
    v18 = 0;
    sub_25162642C();
    v9 = v14;
    sub_2516357FC();
    v10 = v17;
    *(v1 + 16) = v16;
    *(v1 + 24) = v10;
    v18 = 1;
    sub_251626480();
    sub_2516357FC();
    *(v1 + 32) = v16;
    LOBYTE(v16) = 2;
    *(v1 + 40) = sub_2516357BC();
    *(v1 + 48) = v12;
    LOBYTE(v16) = 3;
    *(v1 + 56) = sub_2516357BC();
    *(v1 + 64) = v13;
    sub_251625EE8(0, &qword_27F447438, &type metadata for DomainIdentifier);
    v18 = 4;
    sub_2516264D4(&qword_27F447470, sub_25162642C, MEMORY[0x277D83978]);
    sub_2516357FC();
    *(v1 + 72) = v16;
    sub_251625EE8(0, &qword_27F447448, &type metadata for MeasureIdentifier);
    v18 = 5;
    sub_251626550(&qword_27F447478, sub_251609F8C, MEMORY[0x277D83978]);
    sub_2516357FC();
    (*(v8 + 8))(v15, v9);
    *(v1 + 80) = v16;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

void sub_2516263C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_251625DEC();
    v7 = a3(a1, &type metadata for Domain.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_25162642C()
{
  result = qword_27F447460;
  if (!qword_27F447460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447460);
  }

  return result;
}

unint64_t sub_251626480()
{
  result = qword_27F447468;
  if (!qword_27F447468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447468);
  }

  return result;
}

uint64_t sub_2516264D4(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_251625EE8(255, &qword_27F447438, &type metadata for DomainIdentifier);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_251626550(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_251625EE8(255, &qword_27F447448, &type metadata for MeasureIdentifier);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2516265D0()
{
  result = qword_280DD7310;
  if (!qword_280DD7310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DD7310);
  }

  return result;
}

unint64_t sub_251626628()
{
  result = qword_27F447480;
  if (!qword_27F447480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447480);
  }

  return result;
}

unint64_t sub_251626680()
{
  result = qword_27F447488;
  if (!qword_27F447488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447488);
  }

  return result;
}

uint64_t *sub_2516266D4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = Domain.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

unint64_t sub_2516267EC()
{
  result = qword_27F447490;
  if (!qword_27F447490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447490);
  }

  return result;
}

unint64_t sub_251626844()
{
  result = qword_27F447498;
  if (!qword_27F447498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447498);
  }

  return result;
}

unint64_t sub_25162689C()
{
  result = qword_27F4474A0;
  if (!qword_27F4474A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4474A0);
  }

  return result;
}

uint64_t sub_2516268F0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_2516358DC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746365666661 && a2 == 0xE600000000000000 || (sub_2516358DC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_2516358DC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C6F626D7973 && a2 == 0xE600000000000000 || (sub_2516358DC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x69616D6F64627573 && a2 == 0xEA0000000000736ELL || (sub_2516358DC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x736572757361656DLL && a2 == 0xE800000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_2516358DC();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

unint64_t sub_251626AF0()
{
  result = qword_27F4474A8;
  if (!qword_27F4474A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4474A8);
  }

  return result;
}

uint64_t StandardIndicator.identifier.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t StandardIndicator.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t StandardIndicator.symbol.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void __swiftcall StandardIndicator.init(identifier:name:symbol:)(HealthDomains::StandardIndicator *__return_ptr retstr, HealthDomains::MeasureIdentifier identifier, Swift::String name, Swift::String symbol)
{
  v4 = *(identifier.identifier._countAndFlagsBits + 8);
  retstr->identifier.identifier._countAndFlagsBits = *identifier.identifier._countAndFlagsBits;
  retstr->identifier.identifier._object = v4;
  retstr->name._countAndFlagsBits = identifier.identifier._object;
  *&retstr->name._object = name;
  retstr->symbol._object = symbol._countAndFlagsBits;
}

uint64_t static StandardIndicator.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_2516358DC() & 1) == 0 || (v2 != v6 || v4 != v7) && (sub_2516358DC() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  return sub_2516358DC();
}

uint64_t sub_251626CF4()
{
  v1 = 1701667182;
  if (*v0 != 1)
  {
    v1 = 0x6C6F626D7973;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_251626D48@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_25162783C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_251626D70(uint64_t a1)
{
  v2 = sub_251626FD8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_251626DAC(uint64_t a1)
{
  v2 = sub_251626FD8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t StandardIndicator.encode(to:)(void *a1)
{
  sub_251627658(0, &qword_27F4474B0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v14[3] = v1[3];
  v14[4] = v10;
  v11 = v1[4];
  v14[1] = v1[5];
  v14[2] = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251626FD8();

  sub_25163597C();
  v15 = v8;
  v16 = v9;
  v17 = 0;
  sub_251609D98();
  v12 = v14[5];
  sub_25163588C();
  if (v12)
  {
  }

  else
  {

    LOBYTE(v15) = 1;
    sub_25163584C();
    LOBYTE(v15) = 2;
    sub_25163584C();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_251626FD8()
{
  result = qword_27F4474B8;
  if (!qword_27F4474B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4474B8);
  }

  return result;
}

uint64_t StandardIndicator.hash(into:)(uint64_t a1)
{
  sub_25163539C();
  sub_25163539C();

  return sub_25163539C();
}

uint64_t StandardIndicator.hashValue.getter()
{
  sub_25163590C();
  sub_25163539C();
  sub_25163539C();
  sub_25163539C();
  return sub_25163594C();
}

uint64_t StandardIndicator.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_251627658(0, &qword_27F4474C0, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251626FD8();
  sub_25163596C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = 0;
  sub_251609F8C();
  sub_2516357FC();
  v23 = a2;
  v10 = v24;
  v11 = v25;
  LOBYTE(v24) = 1;
  v20 = sub_2516357BC();
  v21 = v10;
  v22 = v12;
  LOBYTE(v24) = 2;
  v13 = sub_2516357BC();
  v15 = v14;
  (*(v7 + 8))(v9, v6);
  v17 = v22;
  v16 = v23;
  v18 = v20;
  *v23 = v21;
  v16[1] = v11;
  v16[2] = v18;
  v16[3] = v17;
  v16[4] = v13;
  v16[5] = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2516273C0()
{
  sub_25163590C();
  sub_25163539C();
  sub_25163539C();
  sub_25163539C();
  return sub_25163594C();
}

uint64_t sub_251627444(uint64_t a1)
{
  sub_25163539C();
  sub_25163539C();

  return sub_25163539C();
}

uint64_t sub_2516274B0(uint64_t a1)
{
  sub_25163590C();
  sub_25163539C();
  sub_25163539C();
  sub_25163539C();
  return sub_25163594C();
}

uint64_t sub_251627560(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_2516358DC() & 1) == 0 || (v2 != v6 || v4 != v7) && (sub_2516358DC() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  return sub_2516358DC();
}

void sub_251627658(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_251626FD8();
    v7 = a3(a1, &type metadata for StandardIndicator.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2516276C0()
{
  result = qword_27F4474C8;
  if (!qword_27F4474C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4474C8);
  }

  return result;
}

unint64_t sub_251627738()
{
  result = qword_27F4474D0;
  if (!qword_27F4474D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4474D0);
  }

  return result;
}

unint64_t sub_251627790()
{
  result = qword_27F4474D8;
  if (!qword_27F4474D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4474D8);
  }

  return result;
}

unint64_t sub_2516277E8()
{
  result = qword_27F4474E0;
  if (!qword_27F4474E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4474E0);
  }

  return result;
}

uint64_t sub_25162783C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_2516358DC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_2516358DC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C6F626D7973 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_2516358DC();

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

uint64_t MeasurementEnumerator<>.values.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, char *, uint64_t)@<X8>)
{
  v34 = a1;
  v33 = a3;
  v30 = a2;
  swift_getAssociatedTypeWitness();
  sub_2516041EC();
  v4 = sub_25163554C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v29 - v6;
  v8 = sub_25163557C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v32 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v29 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v29 - v15;
  swift_checkMetadataState();
  sub_251618068(v7);
  v35 = v16;
  sub_25163552C();
  (*(v5 + 8))(v7, v4);
  v33 = *(v9 + 16);
  v17 = v8;
  v33(v14, v16, v8);
  v18 = *(v9 + 80);
  v31 = v9;
  v19 = (v18 + 32) & ~v18;
  v20 = swift_allocObject();
  v21 = v34;
  *(v20 + 16) = v34;
  *(v20 + 24) = a2;
  v22 = *(v9 + 32);
  v23 = v14;
  v24 = v17;
  v22(v20 + v19, v23, v17);
  v25 = v32;
  v33(v32, v35, v24);
  v26 = swift_allocObject();
  v27 = v30;
  *(v26 + 16) = v21;
  *(v26 + 24) = v27;
  v22(v26 + v19, v25, v24);
  (*(v27 + 24))(sub_251627E84, v20, sub_2516280BC, v26, v21, v27);

  return (*(v31 + 8))(v35, v24);
}

uint64_t sub_251627CC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = &v14 - v7;
  sub_2516041EC();
  v9 = sub_25163553C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v14 - v11;
  (*(v6 + 16))(v8, a1, AssociatedTypeWitness);
  sub_25163557C();
  sub_25163555C();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_251627E84(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  swift_getAssociatedTypeWitness();
  sub_2516041EC();
  v5 = *(sub_25163557C() - 8);
  v6 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_251627CC4(a1, v6, v3, v4);
}

uint64_t sub_251627F48(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  if (v4)
  {
    v5 = v4;
  }

  swift_getAssociatedTypeWitness();
  sub_2516041EC();
  sub_25163557C();
  return sub_25163556C();
}

uint64_t objectdestroyTm_0()
{
  swift_getAssociatedTypeWitness();
  sub_2516041EC();
  v1 = sub_25163557C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2516280BC(void **a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  swift_getAssociatedTypeWitness();
  sub_2516041EC();
  v5 = *(sub_25163557C() - 8);
  v6 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_251627F48(a1, v6, v3, v4);
}

uint64_t sub_25162818C(uint64_t *a1, unsigned int a2)
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

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2516281DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
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

uint64_t sub_251628230(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_251628248(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t RawQuantitySample.dateRange.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RawQuantitySample(0) + 20);

  return sub_251601094(v3, a1);
}

uint64_t type metadata accessor for RawQuantitySample(uint64_t a1)
{
  result = qword_27F4474F0;
  if (!qword_27F4474F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RawQuantitySample.dateRange.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for RawQuantitySample(0) + 20);

  return sub_251601178(a1, v3);
}

uint64_t RawQuantitySample.init(valueInCanonicalUnit:dateRange:)@<X0>(uint64_t a1@<X0>, double *a2@<X8>, double a3@<D0>)
{
  *a2 = a3;
  v4 = a2 + *(type metadata accessor for RawQuantitySample(0) + 20);

  return sub_251601234(a1, v4);
}

BOOL static RawQuantitySample.== infix(_:_:)(double *a1, double *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  type metadata accessor for RawQuantitySample(0);
  sub_25163516C();
  sub_2516288AC(&qword_27F446BE8, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  result = 0;
  if (sub_25163532C())
  {
    sub_2515F8380(0);
    if (sub_25163532C())
    {
      return 1;
    }
  }

  return result;
}

uint64_t RawQuantitySample.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x25307C200](*&v2);
  type metadata accessor for RawQuantitySample(0);
  sub_25163516C();
  sub_2516288AC(&qword_27F446BA8, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_2516352CC();
  sub_2515F8380(0);
  return sub_2516352CC();
}

uint64_t RawQuantitySample.hashValue.getter()
{
  sub_25163590C();
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x25307C200](*&v1);
  type metadata accessor for RawQuantitySample(0);
  sub_25163516C();
  sub_2516288AC(&qword_27F446BA8, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_2516352CC();
  sub_2515F8380(0);
  sub_2516352CC();
  return sub_25163594C();
}

uint64_t sub_2516286C0(uint64_t a1)
{
  v2 = *v1;
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x25307C200](*&v2);
  sub_25163516C();
  sub_2516288AC(&qword_27F446BA8, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_2516352CC();
  sub_2515F8380(0);
  return sub_2516352CC();
}

uint64_t sub_251628788(uint64_t a1)
{
  sub_25163590C();
  v2 = *v1;
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x25307C200](*&v2);
  sub_25163516C();
  sub_2516288AC(&qword_27F446BA8, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_2516352CC();
  sub_2515F8380(0);
  sub_2516352CC();
  return sub_25163594C();
}

uint64_t sub_2516288AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

BOOL sub_251628904(double *a1, double *a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  sub_25163516C();
  sub_2516288AC(&qword_27F446BE8, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  result = 0;
  if (sub_25163532C())
  {
    sub_2515F8380(0);
    if (sub_25163532C())
    {
      return 1;
    }
  }

  return result;
}

void sub_251628A04(uint64_t a1)
{
  sub_2515F8380(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t ClassificationAxisTimeline.ChangeMoment.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25163516C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ClassificationAxisTimeline.ChangeMoment.date.setter(uint64_t a1)
{
  v3 = sub_25163516C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ClassificationAxisTimeline.ChangeMoment.init(date:axis:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_25163516C();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  v12 = *(type metadata accessor for ClassificationAxisTimeline.ChangeMoment(0, a3, a4, v11) + 36);
  v14 = type metadata accessor for ClassificationAxis(0, a3, a4, v13);
  v15 = *(*(v14 - 8) + 32);

  return v15(a5 + v12, a2, v14);
}

BOOL static ClassificationAxisTimeline.ChangeMoment.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((sub_25163514C() & 1) == 0)
  {
    return 0;
  }

  v9 = *(type metadata accessor for ClassificationAxisTimeline.ChangeMoment(0, a3, a4, v8) + 36);

  return static ClassificationAxis.== infix(_:_:)(a1 + v9, a2 + v9, a3, a4);
}

uint64_t sub_251628D38(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v3 || (sub_2516358DC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1936291937 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_2516358DC();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_251628E04(char a1)
{
  if (a1)
  {
    return 1936291937;
  }

  else
  {
    return 1702125924;
  }
}

uint64_t sub_251628E34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_251628D38(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_251628E64(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_251628EB8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t ClassificationAxisTimeline.ChangeMoment.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 16);
  v14 = *(a2 + 24);
  v15 = v6;
  type metadata accessor for ClassificationAxisTimeline.ChangeMoment.CodingKeys(255, v6, v14, a4);
  swift_getWitnessTable();
  v7 = sub_25163589C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25163597C();
  v18 = 0;
  sub_25163516C();
  sub_251629DC4(&qword_27F446E78, MEMORY[0x277CC9580]);
  v11 = v16;
  sub_25163588C();
  if (!v11)
  {
    v17 = 1;
    type metadata accessor for ClassificationAxis(0, v15, v14, v12);
    swift_getWitnessTable();
    sub_25163588C();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t ClassificationAxisTimeline.ChangeMoment.hash(into:)(uint64_t a1, uint64_t a2)
{
  sub_25163516C();
  sub_251629DC4(&qword_27F446BA8, MEMORY[0x277CC9588]);
  sub_2516352CC();
  v5 = type metadata accessor for ClassificationAxis(0, *(a2 + 16), *(a2 + 24), v4);
  return ClassificationAxis.hash(into:)(a1, v5);
}

uint64_t ClassificationAxisTimeline.ChangeMoment.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v31 = a5;
  v35 = type metadata accessor for ClassificationAxis(0, a2, a3, a4);
  v30 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - v8;
  v37 = sub_25163516C();
  v33 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ClassificationAxisTimeline.ChangeMoment.CodingKeys(255, a2, a3, v10);
  swift_getWitnessTable();
  v38 = sub_25163581C();
  v32 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v12 = &v28 - v11;
  v14 = type metadata accessor for ClassificationAxisTimeline.ChangeMoment(0, a2, a3, v13);
  v29 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v28 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17 = v39;
  sub_25163596C();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v18 = v16;
  v39 = v14;
  v20 = v32;
  v19 = v33;
  v21 = v34;
  v22 = v35;
  v41 = 0;
  sub_251629DC4(&qword_27F446EB0, MEMORY[0x277CC95A0]);
  sub_2516357FC();
  v23 = *(v19 + 32);
  v28 = v18;
  v23(v18, v36, v37);
  v40 = 1;
  swift_getWitnessTable();
  sub_2516357FC();
  (*(v20 + 8))(v12, v38);
  v24 = v39;
  v25 = v28;
  (*(v30 + 32))(&v28[*(v39 + 36)], v21, v22);
  v26 = v29;
  (*(v29 + 16))(v31, v25, v24);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return (*(v26 + 8))(v25, v24);
}

uint64_t sub_2516296D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 36);
  v6 = type metadata accessor for ClassificationAxis(0, *(a1 + 16), *(a1 + 24), a2);
  v7 = *(*(v6 - 8) + 16);

  return v7(a3, v3 + v5, v6);
}

uint64_t sub_251629754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 36);
  v7 = type metadata accessor for ClassificationAxis(0, *(a2 + 16), *(a2 + 24), a4);
  v8 = *(*(v7 - 8) + 40);

  return v8(v4 + v6, a1, v7);
}

uint64_t ClassificationAxisTimeline.changeMoments.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);

  *(v2 + v4) = a1;
  return result;
}

uint64_t ClassificationAxisTimeline.init(dateRange:initialAxis:changeMoments:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_251601234(a1, a6);
  v12 = type metadata accessor for ClassificationAxisTimeline(0, a4, a5, v11);
  v13 = *(v12 + 36);
  v15 = type metadata accessor for ClassificationAxis(0, a4, a5, v14);
  result = (*(*(v15 - 8) + 32))(a6 + v13, a2, v15);
  *(a6 + *(v12 + 40)) = a3;
  return result;
}

uint64_t ClassificationAxisTimeline.axis(at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v28 = a4;
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = type metadata accessor for ClassificationAxisTimeline.ChangeMoment(255, v7, v8, a3);
  v10 = sub_25163563C();
  v25 = *(v10 - 8);
  v26 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v25 - v12;
  v14 = *(v9 - 8);
  MEMORY[0x28223BE20](v11);
  v16 = &v25 - v15;
  v17 = *(a2 + 40);
  v27 = v4;
  v32 = *(v4 + v17);
  v29 = v7;
  v30 = v8;
  v31 = a1;
  sub_2516354CC();

  swift_getWitnessTable();
  sub_2516352DC();

  if ((*(v14 + 48))(v13, 1, v9) == 1)
  {
    (*(v25 + 8))(v13, v26);
    v18 = *(a2 + 36);
    v20 = type metadata accessor for ClassificationAxis(0, v7, v8, v19);
    return (*(*(v20 - 8) + 16))(v28, v27 + v18, v20);
  }

  else
  {
    (*(v14 + 32))(v16, v13, v9);
    v22 = *(v9 + 36);
    v24 = type metadata accessor for ClassificationAxis(0, v7, v8, v23);
    (*(*(v24 - 8) + 16))(v28, &v16[v22], v24);
    return (*(v14 + 8))(v16, v9);
  }
}

uint64_t sub_251629BFC(uint64_t a1)
{
  sub_25163516C();
  sub_251629DC4(&qword_280DD7318, MEMORY[0x277CC9590]);
  return sub_25163530C() & 1;
}

uint64_t static ClassificationAxisTimeline.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_25163516C();
  sub_251629DC4(&qword_27F446BE8, MEMORY[0x277CC9598]);
  if ((sub_25163532C() & 1) == 0)
  {
    return 0;
  }

  sub_2515F8380(0);
  if ((sub_25163532C() & 1) == 0)
  {
    return 0;
  }

  v9 = type metadata accessor for ClassificationAxisTimeline(0, a3, a4, v8);
  if (!static ClassificationAxis.== infix(_:_:)(a1 + *(v9 + 36), a2 + *(v9 + 36), a3, a4))
  {
    return 0;
  }

  v11 = *(v9 + 40);
  v12 = *(a1 + v11);
  v13 = *(a2 + v11);
  v14 = type metadata accessor for ClassificationAxisTimeline.ChangeMoment(0, a3, a4, v10);
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC390](v12, v13, v14, WitnessTable);
}

uint64_t sub_251629DC4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_25163516C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_251629E08(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E615265746164 && a2 == 0xE900000000000065;
  if (v4 || (sub_2516358DC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x416C616974696E69 && a2 == 0xEB00000000736978 || (sub_2516358DC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F4D65676E616863 && a2 == 0xED000073746E656DLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_2516358DC();

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

uint64_t sub_251629F6C(unsigned __int8 a1)
{
  sub_25163590C();
  MEMORY[0x25307C1E0](a1);
  return sub_25163594C();
}

uint64_t sub_251629FB4(char a1)
{
  if (!a1)
  {
    return 0x676E615265746164;
  }

  if (a1 == 1)
  {
    return 0x416C616974696E69;
  }

  return 0x6F4D65676E616863;
}

uint64_t sub_25162A050(uint64_t a1)
{
  sub_25163590C();
  sub_251629F44(v3, *v1);
  return sub_25163594C();
}

uint64_t sub_25162A0A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_251629E08(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25162A0D4@<X0>(_BYTE *a2@<X8>)
{
  result = sub_25162AF2C();
  *a2 = result;
  return result;
}

uint64_t sub_25162A100(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_25162A154(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t ClassificationAxisTimeline.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = *(a2 + 16);
  v23 = a2;
  v21 = *(a2 + 24);
  v22 = v8;
  type metadata accessor for ClassificationAxisTimeline.CodingKeys(255, v8, v21, a4);
  swift_getWitnessTable();
  v9 = sub_25163589C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v21 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25163597C();
  LOBYTE(v27) = 0;
  sub_2515F8380(0);
  sub_25162AC2C(&qword_27F446E70, &qword_27F446E78, MEMORY[0x277CC9580], MEMORY[0x277D83640]);
  v13 = v5;
  v14 = v24;
  sub_25163588C();
  if (v14)
  {
    return (*(v10 + 8))(v12, v9);
  }

  v17 = v10;
  v18 = v22;
  LOBYTE(v27) = 1;
  v19 = v21;
  type metadata accessor for ClassificationAxis(0, v22, v21, v15);
  swift_getWitnessTable();
  sub_25163588C();
  v27 = *(v13 + *(v23 + 40));
  v26 = 2;
  type metadata accessor for ClassificationAxisTimeline.ChangeMoment(255, v18, v19, v20);
  sub_2516354CC();
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_25163588C();
  return (*(v17 + 8))(v12, v9);
}

uint64_t ClassificationAxisTimeline.hash(into:)(uint64_t a1, uint64_t a2)
{
  sub_25163516C();
  sub_251629DC4(&qword_27F446BA8, MEMORY[0x277CC9588]);
  sub_2516352CC();
  sub_2515F8380(0);
  sub_2516352CC();
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v8 = type metadata accessor for ClassificationAxis(0, v5, v6, v7);
  ClassificationAxis.hash(into:)(a1, v8);
  v9 = *(v2 + *(a2 + 40));
  v11 = type metadata accessor for ClassificationAxisTimeline.ChangeMoment(0, v5, v6, v10);
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC380](a1, v9, v11, WitnessTable);
}

uint64_t sub_25162A5F0(uint64_t a1, uint64_t (*a2)(void *, uint64_t))
{
  sub_25163590C();
  a2(v5, a1);
  return sub_25163594C();
}

uint64_t ClassificationAxisTimeline.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v32 = a5;
  v37 = type metadata accessor for ClassificationAxis(0, a2, a3, a4);
  v34 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = &v29 - v8;
  sub_2515F8380(0);
  v38 = v9;
  MEMORY[0x28223BE20](v9);
  v39 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ClassificationAxisTimeline.CodingKeys(255, a2, a3, v11);
  swift_getWitnessTable();
  v41 = sub_25163581C();
  v35 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v13 = &v29 - v12;
  v33 = a3;
  v15 = type metadata accessor for ClassificationAxisTimeline(0, a2, a3, v14);
  v31 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v29 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v40 = v13;
  v18 = v42;
  sub_25163596C();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = v35;
  v20 = v36;
  v29 = a2;
  v30 = v17;
  v21 = v15;
  v22 = v37;
  v42 = a1;
  LOBYTE(v45) = 0;
  sub_25162AC2C(&qword_27F446EA8, &qword_27F446EB0, MEMORY[0x277CC95A0], MEMORY[0x277D83668]);
  v23 = v39;
  sub_2516357FC();
  sub_251601234(v23, v30);
  LOBYTE(v45) = 1;
  swift_getWitnessTable();
  sub_2516357FC();
  v24 = v20;
  v25 = v30;
  (*(v34 + 32))(&v30[*(v21 + 36)], v24, v22);
  type metadata accessor for ClassificationAxisTimeline.ChangeMoment(255, v29, v33, v26);
  sub_2516354CC();
  v44 = 2;
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_2516357FC();
  (*(v19 + 8))(v40, v41);
  *(v25 + *(v21 + 40)) = v45;
  v27 = v31;
  (*(v31 + 16))(v32, v25, v21);
  __swift_destroy_boxed_opaque_existential_1(v42);
  return (*(v27 + 8))(v25, v21);
}

uint64_t sub_25162AB94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  sub_25163590C();
  a4(v7, a2);
  return sub_25163594C();
}

uint64_t sub_25162AC2C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_2515F8380(255);
    sub_251629DC4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_25162ACE8(uint64_t a1)
{
  sub_2515F8380(319);
  if (v3 <= 0x3F)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    type metadata accessor for ClassificationAxis(319, v4, v5, v2);
    if (v7 <= 0x3F)
    {
      type metadata accessor for ClassificationAxisTimeline.ChangeMoment(255, v4, v5, v6);
      sub_2516354CC();
      if (v8 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_25162ADD4(uint64_t a1)
{
  result = sub_25163516C();
  if (v4 <= 0x3F)
  {
    result = type metadata accessor for ClassificationAxis(319, *(a1 + 16), *(a1 + 24), v3);
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t ClassificationStoreCancellationToken.init(cancel:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_25162AF70(uint64_t *a1, int a2)
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

uint64_t sub_25162AFB8(uint64_t result, int a2, int a3)
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

uint64_t ClassificationRule.classifications<A>(from:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int (*a5)(char *, uint64_t, uint64_t))
{
  v55 = a5;
  v56 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = sub_25163563C();
  v42 = *(v49 - 8);
  v9 = MEMORY[0x28223BE20](v49);
  v11 = &v40 - v10;
  v51 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x28223BE20](v9);
  v48 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v47 = &v40 - v14;
  v57 = a4;
  v15 = swift_getAssociatedTypeWitness();
  v54 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v40 - v16;
  v18 = sub_25163563C();
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v21 = &v40 - v20;
  v22 = *(a3 - 8);
  MEMORY[0x28223BE20](v19);
  v24 = &v40 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = swift_getAssociatedTypeWitness();
  v41 = *(v50 - 8);
  v25 = MEMORY[0x28223BE20](v50);
  v27 = &v40 - v26;
  MEMORY[0x28223BE20](v25);
  v40 = v29;
  v30 = *(v29 + 16);
  v58 = &v40 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = a2;
  v30();
  v60 = sub_25163546C();
  (*(v22 + 16))(v24, v56, a3);
  v31 = v54;
  sub_2516353BC();
  v32 = v27;
  v33 = v50;
  swift_getAssociatedConformanceWitness();
  sub_25163565C();
  v55 = *(v31 + 6);
  v56 = v31 + 48;
  if (v55(v21, 1, v15) != 1)
  {
    v35 = *(v31 + 4);
    v53 = v57 + 40;
    v54 = v35;
    v36 = v51;
    v44 = (v51 + 2);
    v45 = (v51 + 4);
    v37 = v51 + 1;
    v51 = (v31 + 8);
    v52 = (v36 + 6);
    ++v42;
    v43 = v37;
    v46 = v27;
    (v35)(v17, v21, v15);
    while (1)
    {
      (*(v57 + 40))(v17, v59);
      if ((*v52)(v11, 1, AssociatedTypeWitness) == 1)
      {
        (*v51)(v17, v15);
        (*v42)(v11, v49);
      }

      else
      {
        v38 = v47;
        (*v45)(v47, v11, AssociatedTypeWitness);
        (*v44)(v48, v38, AssociatedTypeWitness);
        sub_2516354CC();
        sub_2516354AC();
        v39 = v38;
        v33 = v50;
        v32 = v46;
        (*v43)(v39, AssociatedTypeWitness);
        (*v51)(v17, v15);
      }

      sub_25163565C();
      if (v55(v21, 1, v15) == 1)
      {
        break;
      }

      (v54)(v17, v21, v15);
    }
  }

  (*(v41 + 8))(v32, v33);
  (*(v40 + 8))(v58, v59);
  return v60;
}

uint64_t MeasurementEnumerator.map<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v15 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v17 = v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v17, v7);
  (*(v15 + 32))(a7, v17, a3);
  v20[0] = a3;
  v20[1] = a4;
  v20[2] = a5;
  v20[3] = a6;
  v18 = (a7 + *(type metadata accessor for MapMeasurementEnumerator(0, v20) + 52));
  *v18 = a1;
  v18[1] = a2;
}

uint64_t sub_25162B824(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_25162BBA0();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_25162B8AC(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
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

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_25162B9E8(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
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
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      *v18 = a2 & 0x7FFFFFFF;
      v18[1] = 0;
    }

    else
    {
      *v18 = a2 - 1;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

unint64_t sub_25162BBA0()
{
  result = qword_27F447780;
  if (!qword_27F447780)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27F447780);
  }

  return result;
}

uint64_t sub_25162BBF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = (v5 + *(a5 + 52));
  v13 = *v11;
  v12 = v11[1];
  v14 = swift_allocObject();
  v18 = *(a5 + 32);
  v19 = *(a5 + 16);
  *(v14 + 16) = v19;
  *(v14 + 32) = v18;
  *(v14 + 48) = v13;
  *(v14 + 56) = v12;
  *(v14 + 64) = a1;
  *(v14 + 72) = a2;
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  v16 = *(v18 + 24);

  v16(sub_25162BE14, v14, sub_25162BE48, v15, v19, v18);
}

uint64_t sub_25162BD30(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *(a7 - 8);
  v10 = MEMORY[0x28223BE20](a1);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13(v10);
  a4(v12);
  return (*(v9 + 8))(v12, a7);
}

uint64_t sub_25162BE48(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v4 = *a1;
  return v2(&v4);
}

uint64_t EscalationIdentifier.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t EscalationIdentifier.identifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

HealthDomains::EscalationIdentifier_optional __swiftcall EscalationIdentifier.init(rawValue:)(Swift::String rawValue)
{
  *v1 = rawValue;
  result.value.identifier = rawValue;
  return result;
}

unint64_t sub_25162BFD0()
{
  result = qword_27F447788;
  if (!qword_27F447788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447788);
  }

  return result;
}

unint64_t sub_25162C028()
{
  result = qword_27F447790;
  if (!qword_27F447790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447790);
  }

  return result;
}

unint64_t sub_25162C080()
{
  result = qword_27F447798;
  if (!qword_27F447798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447798);
  }

  return result;
}

uint64_t sub_25162C0D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_25162C1B4();

  return MEMORY[0x2821FC220](a1, a2, v4);
}

uint64_t sub_25162C128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_25162C1B4();

  return MEMORY[0x2821FC228](a1, a4, a2, a5, v10, a3);
}

unint64_t sub_25162C1B4()
{
  result = qword_27F4477A0;
  if (!qword_27F4477A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4477A0);
  }

  return result;
}

uint64_t sub_25162C224@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v36 = a2;
  sub_2515F8E44(0);
  v35 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v34 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v33 - v8;
  v10 = sub_25163516C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v33 - v15;
  sub_25162DA20(&qword_280DD7318, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  v17 = sub_2516352EC();
  v18 = v11;
  v19 = *(v11 + 16);
  if (v17)
  {
    v20 = a1;
  }

  else
  {
    v20 = v3;
  }

  v19(v16, v20, v10);
  sub_2515F8380(0);
  v33 = v21;
  v22 = *(v21 + 36);
  v23 = v3 + v22;
  v24 = a1 + v22;
  if (sub_2516352FC())
  {
    v25 = v24;
  }

  else
  {
    v25 = v23;
  }

  v19(v14, v25, v10);
  result = sub_25163530C();
  if (result)
  {
    v27 = *(v11 + 32);
    v27(v9, v16, v10);
    v28 = v35;
    v27(&v9[*(v35 + 48)], v14, v10);
    v29 = v34;
    sub_25162E41C(v9, v34, sub_2515F8E44);
    v30 = *(v28 + 48);
    v31 = v36;
    v27(v36, v29, v10);
    v32 = *(v18 + 8);
    v32(v29 + v30, v10);
    sub_25162E484(v9, v29, sub_2515F8E44);
    v27(&v31[*(v33 + 36)], (v29 + *(v28 + 48)), v10);
    return (v32)(v29, v10);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ClassificationRuleset.axisTimeline(considering:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v30 = a4;
  sub_2515F8380(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = type metadata accessor for ClassificationAxis(0, AssociatedTypeWitness, AssociatedConformanceWitness, v13);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v29 - v15;
  v17 = type metadata accessor for ClassificationFactorTimeline(0);
  v18 = a1 + *(v17 + 20);
  v19 = *(v18 + 8);
  v20 = *(v18 + 32);
  v35 = *v18;
  v36 = v19;
  v37 = *(v18 + 16);
  v38 = v20;
  sub_25162C868(&v35, a2, a3);
  v35 = *(a1 + *(v17 + 24));
  v32 = a2;
  v33 = a3;
  v34 = v4;
  sub_25162D9EC(0);
  v22 = v21;
  v24 = type metadata accessor for ClassificationAxisTimeline.ChangeMoment(0, AssociatedTypeWitness, AssociatedConformanceWitness, v23);
  v25 = sub_25162DA20(qword_27F4477A8, sub_25162D9EC, MEMORY[0x277D83988]);

  v27 = sub_25160605C(sub_25162D9C8, v31, v22, v24, MEMORY[0x277D84A98], v25, MEMORY[0x277D84AC0], v26);

  sub_25162E41C(a1, v10, sub_2515F8380);
  return ClassificationAxisTimeline.init(dateRange:initialAxis:changeMoments:)(v10, v16, v27, AssociatedTypeWitness, AssociatedConformanceWitness, v30);
}

uint64_t sub_25162C868(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v9 = &v14 - v8;
  v10 = *(a1 + 8);
  v11 = *(a1 + 32);
  v15 = *a1;
  v16 = v10;
  v17 = *(a1 + 1);
  v18 = v11;
  (*(a3 + 32))(&v15, a2, a3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 48))(AssociatedTypeWitness, AssociatedConformanceWitness);
  return (*(v7 + 8))(v9, AssociatedTypeWitness);
}

uint64_t sub_25162C9E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = type metadata accessor for ClassificationAxis(0, AssociatedTypeWitness, AssociatedConformanceWitness, v10);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v22 - v12;
  v14 = sub_25163516C();
  MEMORY[0x28223BE20](v14);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16, a1);
  v18 = a1 + *(type metadata accessor for ClassificationFactorTimeline.ChangeMoment(0) + 20);
  v19 = *(v18 + 8);
  v20 = *(v18 + 32);
  v23 = *v18;
  v24 = v19;
  v25 = *(v18 + 16);
  v26 = v20;
  sub_25162C868(&v23, a2, a3);
  return ClassificationAxisTimeline.ChangeMoment.init(date:axis:)(v16, v13, AssociatedTypeWitness, AssociatedConformanceWitness, a4);
}

uint64_t sub_25162CC58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(*(a1 - 8) + 56))(a3, 1, 1, a1);
  v7 = type metadata accessor for ClassificationRulesetAccumulatedState(0, a1, a2, v6);
  v8 = a3 + *(v7 + 36);
  *v8 = 0u;
  *(v8 + 16) = 0u;
  *(v8 + 32) = 3;
  v9 = *(v7 + 40);
  sub_2515F8380(0);
  v11 = *(*(v10 - 8) + 56);

  return v11(a3 + v9, 1, 1, v10);
}

uint64_t ClassificationRuleset<>.initialState.getter@<X0>(uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();

  return sub_25162CC58(AssociatedTypeWitness, AssociatedConformanceWitness, a3);
}

uint64_t ClassificationRuleset<>.reduce(_:into:considering:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v86 = a3;
  v91 = a2;
  v85 = a1;
  v76 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v88 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v68 = &v67 - v8;
  v74 = sub_25163563C();
  v84 = *(v74 - 8);
  v9 = MEMORY[0x28223BE20](v74);
  v73 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v72 = &v67 - v12;
  MEMORY[0x28223BE20](v11);
  v87 = &v67 - v13;
  sub_25162DA68(0);
  MEMORY[0x28223BE20](v14 - 8);
  v83 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for ClassificationFactorTimeline.ChangeMoment(0);
  v82 = *(v81 - 1);
  MEMORY[0x28223BE20](v81);
  v70 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_25163516C();
  v79 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v77 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2515F8380(0);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v21 = &v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v67 - v22;
  v24 = *(a5 + 8);
  swift_getAssociatedTypeWitness();
  v71 = v24;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v26 = *(AssociatedConformanceWitness + 8);
  v27 = swift_checkMetadataState();
  v26(v27, AssociatedConformanceWitness);
  v75 = a5;
  v89 = a4;
  v28 = AssociatedTypeWitness;
  v69 = swift_getAssociatedConformanceWitness();
  v80 = type metadata accessor for ClassificationRulesetAccumulatedState(0, v28, v69, v29);
  sub_25162D7A0(v23);
  v30 = v23;
  v31 = v78;
  sub_25162DAD4(v30, sub_2515F8380);
  v26(v27, AssociatedConformanceWitness);
  v32 = v79;
  v33 = v86;
  v34 = v77;
  (*(v79 + 16))(v77, v21, v31);
  v35 = v81;
  sub_25162DAD4(v21, sub_2515F8380);
  v36 = type metadata accessor for ClassificationFactorTimeline(0);
  v37 = *(v33 + *(v36 + 24));
  v92 = v34;
  v38 = v83;
  sub_2515FA9F8(sub_25162DAB4, v37, v83);
  if ((*(v82 + 48))(v38, 1, v35) == 1)
  {
    sub_25162DAD4(v38, sub_25162DA68);
    v39 = v33 + *(v36 + 20);
    v86 = *v39;
    v40 = *(v39 + 8);
    v41 = *(v39 + 24);
    v83 = *(v39 + 16);
    v42 = *(v39 + 32);
  }

  else
  {
    v43 = v70;
    sub_25162E484(v38, v70, type metadata accessor for ClassificationFactorTimeline.ChangeMoment);
    v44 = v43 + *(v35 + 5);
    v86 = *v44;
    v40 = *(v44 + 8);
    v41 = *(v44 + 24);
    v83 = *(v44 + 16);
    v42 = *(v44 + 32);
    sub_25162DAD4(v43, type metadata accessor for ClassificationFactorTimeline.ChangeMoment);
  }

  (*(v32 + 8))(v34, v31);
  v45 = v91;
  v46 = v91 + *(v80 + 36);
  v47 = *(v46 + 32);
  v48 = v89;
  if (v47 == 3)
  {
    v49 = v84;
    if (v42 == 3)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v50 = *(v46 + 16);
    v98 = *v46;
    v99 = v50;
    v100 = v47;
    v49 = v84;
    if (v42 != 3)
    {
      v93 = v86;
      v94 = v40;
      v95 = v83;
      v96 = v41;
      v97 = v42;
      if (_s13HealthDomains23ClassificationFactorSetV2eeoiySbAC_ACtFZ_0(&v98, &v93))
      {
        goto LABEL_13;
      }
    }
  }

  v82 = v40;
  v81 = *(v49 + 16);
  v51 = v42;
  LODWORD(v70) = v42;
  v52 = v83;
  v53 = v74;
  (v81)(v87, v45, v74);
  *&v98 = v86;
  BYTE8(v98) = v40;
  *&v99 = v52;
  *(&v99 + 1) = v41;
  v100 = v51;
  v54 = v72;
  (*(v75 + 32))(&v98, v48);
  v55 = v88;
  v56 = AssociatedTypeWitness;
  (*(v88 + 56))(v54, 0, 1, AssociatedTypeWitness);
  (*(v49 + 40))(v45, v54, v53);
  v57 = v82;
  *v46 = v86;
  *(v46 + 8) = v57;
  *(v46 + 16) = v52;
  *(v46 + 24) = v41;
  v58 = v56;
  *(v46 + 32) = v70;
  v59 = v87;
  v60 = v73;
  (v81)(v73, v87, v53);
  v61 = *(v55 + 48);
  if (v61(v60, 1, v58) == 1)
  {
    v62 = *(v49 + 8);
    v62(v59, v53);
    v62(v60, v53);
    v45 = v91;
  }

  else
  {
    v63 = v68;
    (*(v55 + 32))(v68, v60, v58);
    v45 = v91;
    result = v61(v91, 1, v58);
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    (*(v75 + 40))(v63, v45, v89);
    (*(v55 + 8))(v63, v58);
    (*(v84 + 8))(v87, v53);
  }

LABEL_13:
  v65 = AssociatedTypeWitness;
  if (!(*(v88 + 48))(v45, 1, AssociatedTypeWitness))
  {
    return (*(v69 + 40))(v85, v65);
  }

  v66 = swift_getAssociatedTypeWitness();
  return (*(*(v66 - 8) + 56))(v76, 1, 1, v66);
}

uint64_t sub_25162D7A0(uint64_t a1)
{
  v2 = v1;
  sub_2515F8380(0);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v16 - v10;
  sub_25162E3B8(0, &qword_280DD70B8, sub_2515F8380, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v16 - v13;
  if ((*(v6 + 48))(v2, 1, v5))
  {
    sub_25162E41C(a1, v14, sub_2515F8380);
  }

  else
  {
    sub_25162E41C(v2, v9, sub_2515F8380);
    sub_25162C224(a1, v11);
    sub_25162DAD4(v9, sub_2515F8380);
    sub_25162E484(v11, v14, sub_2515F8380);
  }

  (*(v6 + 56))(v14, 0, 1, v5);
  return sub_251609670(v14, v2);
}

uint64_t sub_25162DA20(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25162DAD4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_25162DB5C(uint64_t a1)
{
  sub_25163563C();
  if (v1 <= 0x3F)
  {
    sub_25162E2CC();
    if (v2 <= 0x3F)
    {
      sub_25162E31C(319, qword_27F447838, type metadata accessor for ClosedRangeBuilder);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_25162DC18(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_25163516C();
  v10 = *(v9 - 8);
  v11 = v10;
  v12 = *(v10 + 84);
  v13 = v12 - 1;
  if (!v12)
  {
    v13 = 0;
  }

  if (v8 <= v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = v8;
  }

  if (v14 <= 0xFC)
  {
    v15 = 252;
  }

  else
  {
    v15 = v14;
  }

  if (v7)
  {
    v16 = *(v6 + 64);
  }

  else
  {
    v16 = *(v6 + 64) + 1;
  }

  v17 = *(v10 + 80);
  v18 = *(v10 + 64);
  if (v12)
  {
    v19 = *(v10 + 64);
  }

  else
  {
    v19 = v18 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v15)
  {
    goto LABEL_39;
  }

  v20 = v19 + ((v18 + v17) & ~v17) + ((v17 + ((v16 + 7) & 0xFFFFFFFFFFFFFFF8) + 33) & ~v17);
  v21 = 8 * v20;
  if (v20 > 3)
  {
    goto LABEL_21;
  }

  v23 = ((a2 - v15 + ~(-1 << v21)) >> v21) + 1;
  if (HIWORD(v23))
  {
    v22 = *(a1 + v20);
    if (v22)
    {
      goto LABEL_28;
    }
  }

  else
  {
    if (v23 <= 0xFF)
    {
      if (v23 < 2)
      {
        goto LABEL_39;
      }

LABEL_21:
      v22 = *(a1 + v20);
      if (!*(a1 + v20))
      {
        goto LABEL_39;
      }

LABEL_28:
      v24 = (v22 - 1) << v21;
      if (v20 > 3)
      {
        v24 = 0;
      }

      if (v20)
      {
        if (v20 > 3)
        {
          LODWORD(v20) = 4;
        }

        if (v20 > 2)
        {
          if (v20 == 3)
          {
            LODWORD(v20) = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            LODWORD(v20) = *a1;
          }
        }

        else if (v20 == 1)
        {
          LODWORD(v20) = *a1;
        }

        else
        {
          LODWORD(v20) = *a1;
        }
      }

      return v15 + (v20 | v24) + 1;
    }

    v22 = *(a1 + v20);
    if (*(a1 + v20))
    {
      goto LABEL_28;
    }
  }

LABEL_39:
  if (v8 == v15)
  {
    if (v7 >= 2)
    {
      v25 = (*(v6 + 48))(a1, v7, v5);
      if (v25 >= 2)
      {
        return v25 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v27 = (a1 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v14 > 0xFC)
  {
    if (!v12)
    {
      return 0;
    }

    v31 = (*(v11 + 48))((v27 + v17 + 33) & ~v17, v12, v9);
    v29 = v31 != 0;
    result = (v31 - 1);
    if (result == 0 || !v29)
    {
      return 0;
    }
  }

  else
  {
    v28 = *(v27 + 32);
    v29 = v28 >= 3;
    v30 = v28 - 3;
    if (!v29)
    {
      v30 = -1;
    }

    if (v30 + 1 >= 2)
    {
      return v30;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_25162DEC0(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v34 = v8;
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  v11 = 0;
  v12 = *(sub_25163516C() - 8);
  v13 = *(v12 + 84);
  v14 = v13 - 1;
  if (!v13)
  {
    v14 = 0;
  }

  if (v10 > v14)
  {
    v14 = v10;
  }

  v15 = *(v12 + 80);
  if (v14 <= 0xFC)
  {
    v17 = 252;
  }

  else
  {
    v17 = v14;
  }

  if (v9)
  {
    v18 = *(v8 + 64);
  }

  else
  {
    v18 = *(v8 + 64) + 1;
  }

  v16 = *(v12 + 64);
  v19 = ((v16 + v15) & ~v15) + v16;
  if (v13)
  {
    v20 = ((v16 + v15) & ~v15) + v16;
  }

  else
  {
    v20 = v19 + 1;
  }

  v21 = v20 + ((v15 + ((v18 + 7) & 0xFFFFFFFFFFFFFFF8) + 33) & ~v15);
  if (a3 <= v17)
  {
    goto LABEL_28;
  }

  if (v21 <= 3)
  {
    v22 = ((a3 - v17 + ~(-1 << (8 * v21))) >> (8 * v21)) + 1;
    if (HIWORD(v22))
    {
      v11 = 4;
      if (v17 >= a2)
      {
        goto LABEL_38;
      }

      goto LABEL_29;
    }

    if (v22 < 0x100)
    {
      v23 = 1;
    }

    else
    {
      v23 = 2;
    }

    if (v22 >= 2)
    {
      v11 = v23;
    }

    else
    {
      v11 = 0;
    }

LABEL_28:
    if (v17 >= a2)
    {
      goto LABEL_38;
    }

    goto LABEL_29;
  }

  v11 = 1;
  if (v17 >= a2)
  {
LABEL_38:
    if (v11 > 1)
    {
      if (v11 != 2)
      {
        *&a1[v21] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_45;
      }

      *&a1[v21] = 0;
    }

    else if (v11)
    {
      a1[v21] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_45;
    }

    if (!a2)
    {
      return;
    }

LABEL_45:
    if (v10 == v17)
    {
      v27 = *(v34 + 56);

      v27(a1, a2 + 1, v9, v7);
    }

    else
    {
      v28 = &a1[v18 + 7] & 0xFFFFFFFFFFFFFFF8;
      if (v14 > 0xFC)
      {
        v29 = ((v28 + v15 + 33) & ~v15);
        if (a2 >= v13)
        {
          if (v19 <= 3)
          {
            v31 = ~(-1 << (8 * v19));
          }

          else
          {
            v31 = -1;
          }

          if (v19)
          {
            v32 = v31 & (a2 - v13);
            if (v19 <= 3)
            {
              v33 = v19;
            }

            else
            {
              v33 = 4;
            }

            bzero(v29, v19);
            if (v33 > 2)
            {
              if (v33 == 3)
              {
                *v29 = v32;
                v29[2] = BYTE2(v32);
              }

              else
              {
                *v29 = v32;
              }
            }

            else if (v33 == 1)
            {
              *v29 = v32;
            }

            else
            {
              *v29 = v32;
            }
          }
        }

        else
        {
          v30 = *(v12 + 56);

          v30((v28 + v15 + 33) & ~v15, a2 + 1);
        }
      }

      else if (a2 > 0xFC)
      {
        *(v28 + 32) = 0;
        *v28 = 0u;
        *(v28 + 16) = 0u;
        *v28 = a2 - 253;
      }

      else
      {
        *(v28 + 32) = a2 + 3;
      }
    }

    return;
  }

LABEL_29:
  v24 = ~v17 + a2;
  if (v21 >= 4)
  {
    bzero(a1, v21);
    *a1 = v24;
    v25 = 1;
    if (v11 > 1)
    {
      goto LABEL_63;
    }

    goto LABEL_60;
  }

  v25 = (v24 >> (8 * v21)) + 1;
  if (!v21)
  {
LABEL_59:
    if (v11 > 1)
    {
      goto LABEL_63;
    }

    goto LABEL_60;
  }

  v26 = v24 & ~(-1 << (8 * v21));
  bzero(a1, v21);
  if (v21 == 3)
  {
    *a1 = v26;
    a1[2] = BYTE2(v26);
    goto LABEL_59;
  }

  if (v21 == 2)
  {
    *a1 = v26;
    if (v11 > 1)
    {
LABEL_63:
      if (v11 == 2)
      {
        *&a1[v21] = v25;
      }

      else
      {
        *&a1[v21] = v25;
      }

      return;
    }
  }

  else
  {
    *a1 = v24;
    if (v11 > 1)
    {
      goto LABEL_63;
    }
  }

LABEL_60:
  if (v11)
  {
    a1[v21] = v25;
  }
}

void sub_25162E2CC()
{
  if (!qword_27F447830)
  {
    v0 = sub_25163563C();
    if (!v1)
    {
      atomic_store(v0, &qword_27F447830);
    }
  }
}

void sub_25162E31C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_25163516C();
    v7 = sub_25162DA20(&qword_280DD7318, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_25162E3B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_25162E41C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25162E484(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25162E4EC(uint64_t a1)
{
  sub_25163531C();
  result = sub_25163563C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25162E568(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(v4 + 64);
  if (v5)
  {
    v8 = *(v4 + 64);
  }

  else
  {
    v8 = v7 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v6;
  if (a2 > v6)
  {
    v10 = v8 + ((v7 + *(v4 + 80)) & ~*(v4 + 80));
    v11 = 8 * v10;
    if (v10 > 3)
    {
      goto LABEL_9;
    }

    v13 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v13))
    {
      v12 = *(a1 + v10);
      if (v12)
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (v13 <= 0xFF)
      {
        if (v13 < 2)
        {
          goto LABEL_27;
        }

LABEL_9:
        v12 = *(a1 + v10);
        if (!*(a1 + v10))
        {
          goto LABEL_27;
        }

LABEL_16:
        v14 = (v12 - 1) << v11;
        if (v10 > 3)
        {
          v14 = 0;
        }

        if (v10)
        {
          if (v10 > 3)
          {
            LODWORD(v10) = 4;
          }

          if (v10 > 2)
          {
            if (v10 == 3)
            {
              LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              LODWORD(v10) = *a1;
            }
          }

          else if (v10 == 1)
          {
            LODWORD(v10) = *a1;
          }

          else
          {
            LODWORD(v10) = *a1;
          }
        }

        return v6 + (v10 | v14) + 1;
      }

      v12 = *(a1 + v10);
      if (*(a1 + v10))
      {
        goto LABEL_16;
      }
    }
  }

LABEL_27:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

void sub_25162E6F0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v10 = v8 - 1;
  if (!v8)
  {
    v10 = 0;
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v11 = ((v9 + *(v7 + 80)) & ~*(v7 + 80)) + v9;
  if (v8)
  {
    v12 = v11;
  }

  else
  {
    v12 = v11 + 1;
  }

  v13 = a3 >= v10;
  v14 = a3 - v10;
  if (v14 == 0 || !v13)
  {
LABEL_18:
    if (v10 < a2)
    {
      goto LABEL_19;
    }

    goto LABEL_28;
  }

  if (v12 > 3)
  {
    v6 = 1;
    if (v10 < a2)
    {
      goto LABEL_19;
    }

    goto LABEL_28;
  }

  v15 = ((v14 + ~(-1 << (8 * v12))) >> (8 * v12)) + 1;
  if (!HIWORD(v15))
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
      v6 = v16;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_18;
  }

  v6 = 4;
  if (v10 < a2)
  {
LABEL_19:
    v17 = ~v10 + a2;
    if (v12 < 4)
    {
      v18 = (v17 >> (8 * v12)) + 1;
      if (v12)
      {
        v19 = v17 & ~(-1 << (8 * v12));
        bzero(a1, v12);
        if (v12 != 3)
        {
          if (v12 == 2)
          {
            *a1 = v19;
            if (v6 > 1)
            {
LABEL_57:
              if (v6 == 2)
              {
                *&a1[v12] = v18;
              }

              else
              {
                *&a1[v12] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v6 > 1)
            {
              goto LABEL_57;
            }
          }

          goto LABEL_54;
        }

        *a1 = v19;
        a1[2] = BYTE2(v19);
      }

      if (v6 > 1)
      {
        goto LABEL_57;
      }
    }

    else
    {
      bzero(a1, v12);
      *a1 = v17;
      v18 = 1;
      if (v6 > 1)
      {
        goto LABEL_57;
      }
    }

LABEL_54:
    if (v6)
    {
      a1[v12] = v18;
    }

    return;
  }

LABEL_28:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v12] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_35;
    }

    *&a1[v12] = 0;
LABEL_34:
    if (!a2)
    {
      return;
    }

    goto LABEL_35;
  }

  if (!v6)
  {
    goto LABEL_34;
  }

  a1[v12] = 0;
  if (!a2)
  {
    return;
  }

LABEL_35:
  if (v8 >= 2)
  {
    if (a2 >= v8)
    {
      if (v11 <= 3)
      {
        v21 = ~(-1 << (8 * v11));
      }

      else
      {
        v21 = -1;
      }

      if (v11)
      {
        v22 = v21 & (a2 - v8);
        if (v11 <= 3)
        {
          v23 = v11;
        }

        else
        {
          v23 = 4;
        }

        bzero(a1, v11);
        if (v23 > 2)
        {
          if (v23 == 3)
          {
            *a1 = v22;
            a1[2] = BYTE2(v22);
          }

          else
          {
            *a1 = v22;
          }
        }

        else if (v23 == 1)
        {
          *a1 = v22;
        }

        else
        {
          *a1 = v22;
        }
      }
    }

    else
    {
      v20 = *(v7 + 56);

      v20();
    }
  }
}

uint64_t static Aggregator.rollingMeanQuantity<>(maximumMeasurementCount:maximumDurationBetweenMeasurements:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *(a2 + 16) = MEMORY[0x277D84F90];
  *(a2 + 24) = 0;
  *a2 = result;
  *(a2 + 8) = a3;
  return result;
}

uint64_t RollingMeanQuantity.reduce(_:)(double *a1)
{
  v2 = v1;
  v4 = sub_25163516C();
  v43 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v40 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v42 = &v39 - v7;
  v8 = type metadata accessor for RawQuantitySample(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v39 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v39 - v16;
  v18 = *(v2 + 2);
  v19 = v18[2];
  if (v19)
  {
    sub_25162F6B4(v18 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * (v19 - 1), &v39 - v16, type metadata accessor for RawQuantitySample);
    if (sub_25163513C())
    {
LABEL_20:
      result = sub_25163575C();
      __break(1u);
      return result;
    }

    sub_25162F634(v17, type metadata accessor for RawQuantitySample);
  }

  sub_25162F6B4(a1, v15, type metadata accessor for RawQuantitySample);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v18 = sub_2515F8B5C(0, v18[2] + 1, 1, v18);
  }

  v21 = v18[2];
  v20 = v18[3];
  v22 = v21 + 1;
  v41 = v4;
  if (v21 >= v20 >> 1)
  {
    v18 = sub_2515F8B5C((v20 > 1), v21 + 1, 1, v18);
  }

  v18[2] = v22;
  v23 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  sub_25162F71C(v15, v18 + v23 + *(v9 + 72) * v21, type metadata accessor for RawQuantitySample);
  *(v2 + 2) = v18;
  v24 = *v2;
  v25 = *v2 <= v21;
  v26 = a1;
  v28 = v42;
  v27 = v43;
  if (v25)
  {
    if (__OFSUB__(v22, *&v24))
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    sub_25162EE64(v22 - *&v24);
  }

  sub_25163510C();
  v29 = *(v2 + 2);
  if (!*(v29 + 16))
  {
    __break(1u);
    goto LABEL_19;
  }

  sub_25162F6B4(v29 + v23, v12, type metadata accessor for RawQuantitySample);
  v30 = *(v8 + 20);
  v31 = v40;
  v32 = v41;
  (*(v27 + 16))(v40, &v12[v30], v41);
  sub_25162F634(&v12[v30], sub_2515F8380);
  LOBYTE(v30) = sub_25163513C();
  v33 = *(v27 + 8);
  v34 = v33(v31, v32);
  if (v30)
  {
    MEMORY[0x28223BE20](v34);
    v38 = v28;
    v35 = sub_25162F080(sub_25162F694, (&v39 - 4), v29);
    if ((v36 & 1) == 0 && v35 >= 1)
    {
      sub_25162EE64(v35);
    }
  }

  v2[3] = *v26 + v2[3];
  return v33(v28, v32);
}

unint64_t sub_25162EE64(unint64_t a1)
{
  v3 = type metadata accessor for RawQuantitySample(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = (v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + 16);
  result = sub_25162F16C(a1, v7);
  v12 = (v11 >> 1) - v10;
  if (v11 >> 1 == v10)
  {

    result = swift_unknownObjectRelease();
    if (!a1)
    {
      return result;
    }

    goto LABEL_8;
  }

  if ((v11 >> 1) <= v10)
  {
    goto LABEL_14;
  }

  v13 = v9;
  v14 = v10;
  v19[1] = result;
  v15 = *(v1 + 24);
  v16 = *(v4 + 72);

  v17 = v13 + v14 * v16;
  do
  {
    sub_25162F6B4(v17, v6, type metadata accessor for RawQuantitySample);
    v18 = *v6;
    sub_25162F634(v6, type metadata accessor for RawQuantitySample);
    v15 = v15 - v18;
    v17 += v16;
    --v12;
  }

  while (v12);
  result = swift_unknownObjectRelease();
  *(v1 + 24) = v15;
  if (a1)
  {
LABEL_8:
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(v7 + 16) >= a1)
    {
      return sub_25162F970(0, a1);
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }

  return result;
}

uint64_t sub_25162F00C(uint64_t a1, uint64_t a2)
{
  sub_25163516C();
  type metadata accessor for RawQuantitySample(0);
  sub_2515FA0F4();
  return sub_2516352FC() & 1;
}

uint64_t sub_25162F080(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(type metadata accessor for RawQuantitySample(0) - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_25162F16C(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for RawQuantitySample(0);
    return a2;
  }

  return result;
}

uint64_t RollingMeanQuantity.currentValue()@<X0>(double *a1@<X8>)
{
  sub_2515F8E44(0);
  v45 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v44 = &v40 - v7;
  v8 = sub_25163516C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v40 - v13;
  sub_2515F8380(0);
  v47 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v1 + 16);
  v19 = *(v1 + 24);
  v20 = *(v18 + 16);
  v21 = type metadata accessor for RawQuantitySample(0);
  v22 = *(v21 - 8);
  if (v20)
  {
    v40 = v18;
    v41 = v17;
    v43 = a1;
    v23 = v18 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
    v24 = v9;
    v25 = *(v9 + 16);
    v26 = v23 + *(v21 + 20);
    v27 = v21;
    v46 = v22;
    v25(v14, v26, v8);
    v28 = v23 + *(v46 + 72) * (v20 - 1);
    v42 = v27;
    v25(v12, v28 + *(v27 + 20) + *(v47 + 36), v8);
    sub_2515FA0F4();
    result = sub_25163530C();
    if (result)
    {
      v30 = *(v24 + 32);
      v31 = v44;
      v30(v44, v14, v8);
      v32 = v45;
      v30((v31 + *(v45 + 48)), v12, v8);
      sub_25162F6B4(v31, v6, sub_2515F8E44);
      v33 = *(v32 + 48);
      v34 = v41;
      v30(v41, v6, v8);
      v35 = *(v24 + 8);
      v35(&v6[v33], v8);
      sub_25162F71C(v31, v6, sub_2515F8E44);
      v30((v34 + *(v47 + 36)), &v6[*(v32 + 48)], v8);
      v35(v6, v8);
      v37 = v42;
      v36 = v43;
      v38 = v19 / *(v40 + 16);
      sub_25162F71C(v34, v43 + *(v42 + 20), sub_2515F8380);
      *v36 = v38;
      return (*(v46 + 56))(v36, 0, 1, v37);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v39 = *(v22 + 56);

    return v39(a1, 1, 1, v21);
  }

  return result;
}

uint64_t sub_25162F634(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25162F6B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25162F71C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_25162F790(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_25162F7D8(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_25162F828(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = type metadata accessor for RawQuantitySample(0);
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_25162F970(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_2515F8B5C(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_25162F828(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t PerMeasurementRule.reduce(_:)@<X0>(uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  (*(a2 + 16))();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 56);

  return v5(a3, 0, 1, AssociatedTypeWitness);
}

uint64_t sub_25162FAF0@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v25 = a5;
  v26 = a2;
  v28 = a4;
  v27 = a1;
  v24 = *(a3 - 8);
  v10 = MEMORY[0x28223BE20](a1);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 16);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v10);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v6);
  v22 = 1;
  if ((*(v15 + 48))(v20, 1, v14) != 1)
  {
    (*(v15 + 32))(v18, v20, v14);
    v27(v18, v12);
    (*(v15 + 8))(v18, v14);
    if (v7)
    {
      return (*(v24 + 32))(v25, v12, a3);
    }

    v22 = 0;
  }

  return (*(*(v28 - 8) + 56))(a6, v22, 1);
}

uint64_t AggregationRule.reduce(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v29 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v26 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = &v24 - v10;
  v12 = swift_getAssociatedTypeWitness();
  v27 = v12;
  v25 = sub_25163563C();
  v28 = *(v25 - 8);
  v13 = MEMORY[0x28223BE20](v25);
  v15 = &v24 - v14;
  v24 = *(v12 - 8);
  MEMORY[0x28223BE20](v13);
  v17 = &v24 - v16;
  (*(a3 + 40))(a1, a2, a3);
  v18 = (*(a3 + 64))(v34, a2, a3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 16))(v17, AssociatedTypeWitness, AssociatedConformanceWitness);
  v18(v34, 0);
  (*(a3 + 48))(a2, a3);
  (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v26 + 8))(v11, AssociatedTypeWitness);
  v31 = a2;
  v32 = a3;
  v33 = v5;
  v20 = swift_getAssociatedTypeWitness();
  v21 = v25;
  sub_25162FAF0(sub_25163023C, v30, MEMORY[0x277D84A98], v20, v22, v29);
  (*(v28 + 8))(v15, v21);
  return (*(v24 + 8))(v17, v27);
}

uint64_t sub_251630128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  (*(a4 + 72))(a1, a3, a4);
  return (*(v7 + 8))(v9, a3);
}

uint64_t Classification.axis.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21 = a1;
  v22 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = *(AssociatedConformanceWitness + 24);
  v7 = *(AssociatedConformanceWitness + 8);
  v23 = AssociatedTypeWitness;
  v24 = v7;
  v25 = v6;
  v8 = sub_2516352AC();
  v9 = sub_25163563C();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v21 - v10;
  v12 = swift_getAssociatedTypeWitness();
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v21 - v14;
  v16 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v13);
  v18 = &v21 - v17;
  (*(a2 + 56))(v21, a2);
  (*(AssociatedConformanceWitness + 56))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v16 + 8))(v18, AssociatedTypeWitness);
  (*(*(v8 - 8) + 56))(v11, 1, 1, v8);
  v19 = swift_getAssociatedConformanceWitness();
  return ClassificationAxis.init(scale:thresholds:)(v15, v11, v12, v19, v22);
}

uint64_t sub_251630780@<X0>(char *a1@<X8>)
{
  sub_25163087C(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2516308D4(0);
  v6 = v5;
  v7 = *(*(v5 - 8) + 56);
  v7(v4, 1, 1, v5);
  *a1 = &unk_286389EE0;
  sub_251630A54(0);
  v9 = *(v8 + 36);
  v7(&a1[v9], 1, 1, v6);
  return sub_251630C30(v4, &a1[v9]);
}

void sub_25163087C(uint64_t a1)
{
  if (!qword_27F4478C0)
  {
    sub_2516308D4(255);
    v1 = sub_25163563C();
    if (!v2)
    {
      atomic_store(v1, &qword_27F4478C0);
    }
  }
}

void sub_2516308D4(uint64_t a1)
{
  if (!qword_27F4478C8)
  {
    sub_251630958();
    sub_2516309AC();
    sub_251630A00();
    v1 = sub_2516352AC();
    if (!v2)
    {
      atomic_store(v1, &qword_27F4478C8);
    }
  }
}

unint64_t sub_251630958()
{
  result = qword_27F4478D0;
  if (!qword_27F4478D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4478D0);
  }

  return result;
}

unint64_t sub_2516309AC()
{
  result = qword_27F4478D8;
  if (!qword_27F4478D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4478D8);
  }

  return result;
}

unint64_t sub_251630A00()
{
  result = qword_27F4478E0;
  if (!qword_27F4478E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4478E0);
  }

  return result;
}

void sub_251630A54(uint64_t a1)
{
  if (!qword_27F4478E8)
  {
    sub_251630AB8();
    v3 = v2;
    v4 = sub_251630B08();
    v6 = type metadata accessor for ClassificationAxis(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_27F4478E8);
    }
  }
}

void sub_251630AB8()
{
  if (!qword_27F4478F0)
  {
    v0 = sub_2516354CC();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4478F0);
    }
  }
}

unint64_t sub_251630B08()
{
  result = qword_27F4478F8;
  if (!qword_27F4478F8)
  {
    sub_251630AB8();
    sub_251630B88();
    sub_251630BDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4478F8);
  }

  return result;
}

unint64_t sub_251630B88()
{
  result = qword_27F447900;
  if (!qword_27F447900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447900);
  }

  return result;
}

unint64_t sub_251630BDC()
{
  result = qword_27F447908;
  if (!qword_27F447908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447908);
  }

  return result;
}

uint64_t sub_251630C30(uint64_t a1, uint64_t a2)
{
  sub_25163087C(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t HKSample.dateRange.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  sub_2515F8E44(0);
  v5 = v4;
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v26 - v9;
  v11 = sub_25163516C();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v26 - v16;
  v18 = [v2 startDate];
  sub_25163515C();

  v19 = [v2 endDate];
  sub_25163515C();

  sub_2515FA0F4();
  result = sub_25163530C();
  if (result)
  {
    v21 = *(v12 + 32);
    v21(v10, v17, v11);
    v21(&v10[*(v5 + 48)], v15, v11);
    sub_25161A3CC(v10, v8);
    v22 = *(v5 + 48);
    v21(a1, v8, v11);
    v23 = *(v12 + 8);
    v23(&v8[v22], v11);
    sub_25161A430(v10, v8);
    v24 = *(v5 + 48);
    sub_2515F8380(0);
    v21(&a1[*(v25 + 36)], &v8[v24], v11);
    return (v23)(v8, v11);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ClassificationType.rawValue.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static ClassificationType.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  v3 = sub_2516358DC();
  result = 0;
  if (v3)
  {
    return 1;
  }

  return result;
}

uint64_t sub_251630FCC(uint64_t a1, uint64_t a2)
{
  if (a1 == 25705 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2516358DC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_251631048@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_251630FCC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_25163107C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_251608AF4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2516310AC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_251631100(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t ClassificationType.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ClassificationType.CodingKeys(255, *(a2 + 16), *(a2 + 24), a4);
  swift_getWitnessTable();
  v6 = sub_25163589C();
  v12 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - v7;
  v9 = v4[1];
  v11 = *v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  sub_25163597C();
  v13 = v11;
  v14 = v9;
  sub_251631300();
  sub_25163588C();

  return (*(v12 + 8))(v8, v6);
}

unint64_t sub_251631300()
{
  result = qword_27F447910;
  if (!qword_27F447910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447910);
  }

  return result;
}

uint64_t ClassificationType.hashValue.getter()
{
  sub_25163590C();
  sub_25163539C();
  return sub_25163594C();
}

uint64_t ClassificationType.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v15 = a5;
  type metadata accessor for ClassificationType.CodingKeys(255, a2, a3, a4);
  swift_getWitnessTable();
  v7 = sub_25163581C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25163596C();
  if (!v5)
  {
    v11 = v15;
    sub_2516315A0();
    sub_2516357FC();
    (*(v8 + 8))(v10, v7);
    v12 = v14[1];
    *v11 = v14[0];
    v11[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_251631564(uint64_t a1)
{
  sub_25163590C();
  ClassificationType.hash(into:)(v2);
  return sub_25163594C();
}

unint64_t sub_2516315A0()
{
  result = qword_27F447918[0];
  if (!qword_27F447918[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F447918);
  }

  return result;
}

uint64_t ClassificationType._type.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_25163165C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t ClassificationChangeDescriptorSet.descriptors.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_251631784(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v35 = a2 + 56;
  v31 = result + 56;
  v32 = result;
  v30 = v8;
  if (!v7)
  {
    goto LABEL_8;
  }

  do
  {
    v9 = __clz(__rbit64(v7));
    v33 = (v7 - 1) & v7;
LABEL_13:
    v12 = *(result + 48) + 24 * (v9 | (v3 << 6));
    v14 = *v12;
    v13 = *(v12 + 8);
    v15 = *(v12 + 16);
    sub_25163590C();
    if (v14 > 1)
    {
      if (v14 == 2)
      {
        MEMORY[0x25307C1E0](3);
        goto LABEL_28;
      }

      if (v14 == 3)
      {
        MEMORY[0x25307C1E0](4);
        goto LABEL_28;
      }
    }

    else
    {
      if (!v14)
      {
        MEMORY[0x25307C1E0](1);
        goto LABEL_28;
      }

      if (v14 == 1)
      {
        MEMORY[0x25307C1E0](2);
        goto LABEL_28;
      }
    }

    MEMORY[0x25307C1E0](0);
    v16 = v14;
    sub_25163562C();
    if (v15)
    {
      sub_25163592C();
    }

    else
    {
      sub_25163592C();
      if ((*&v13 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v17 = v13;
      }

      else
      {
        v17 = 0.0;
      }

      MEMORY[0x25307C200](*&v17);
    }

LABEL_28:
    v18 = sub_25163594C();
    v19 = -1 << *(v2 + 32);
    v20 = v18 & ~v19;
    if (((*(v35 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
    {
LABEL_59:
      sub_251601D74(v14);
      return 0;
    }

    v21 = ~v19;
    while (1)
    {
      v22 = *(v2 + 48) + 24 * v20;
      v23 = *v22;
      v24 = *(v22 + 8);
      v25 = *(v22 + 16);
      if (*v22 > 1)
      {
        break;
      }

      if (!v23)
      {
        if (!v14)
        {
          goto LABEL_55;
        }

        sub_251601D64(v14);
        v26 = 0;
        goto LABEL_45;
      }

      if (v23 == 1)
      {
        if (v14 == 1)
        {
          goto LABEL_55;
        }

        sub_251601D64(v14);
        v26 = 1;
        goto LABEL_45;
      }

LABEL_39:
      v27 = *v22;
      if (v14 < 4)
      {
        sub_251601D64(v14);
        sub_251601D64(v23);
        v26 = v23;
        v2 = a2;
LABEL_45:
        sub_251601D74(v26);
        sub_251601D74(v14);
        goto LABEL_46;
      }

      sub_251601D84();
      sub_251601D64(v14);
      sub_251601D64(v27);
      sub_251601D64(v14);
      sub_251601D64(v27);
      v28 = sub_25163561C();
      sub_251601D74(v27);
      sub_251601D74(v14);
      sub_251601D74(v14);
      sub_251601D74(v27);
      v2 = a2;
      if (v28)
      {
        if (v25)
        {
          if (v15)
          {
            goto LABEL_54;
          }
        }

        else if ((v15 & 1) == 0 && v24 == v13)
        {
LABEL_54:
          v29 = v14;
          goto LABEL_56;
        }
      }

LABEL_46:
      v20 = (v20 + 1) & v21;
      if (((*(v35 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
      {
        goto LABEL_59;
      }
    }

    if (v23 != 2)
    {
      if (v23 == 3)
      {
        if (v14 == 3)
        {
          goto LABEL_55;
        }

        sub_251601D64(v14);
        v26 = 3;
        goto LABEL_45;
      }

      goto LABEL_39;
    }

    if (v14 != 2)
    {
      sub_251601D64(v14);
      v26 = 2;
      goto LABEL_45;
    }

LABEL_55:
    sub_251601D74(*v22);
    v29 = v23;
LABEL_56:
    sub_251601D74(v29);
    v4 = v31;
    result = v32;
    v8 = v30;
    v7 = v33;
  }

  while (v33);
LABEL_8:
  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v33 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t ClassificationChangeDescriptorSet.hashValue.getter()
{
  v1 = *v0;
  sub_25163590C();
  sub_251631D3C(v3, v1);
  return sub_25163594C();
}

uint64_t sub_251631C1C()
{
  v1 = *v0;
  sub_25163590C();
  sub_251631D3C(v3, v1);
  return sub_25163594C();
}

uint64_t sub_251631C6C(uint64_t a1)
{
  v2 = *v1;
  sub_25163590C();
  sub_251631D3C(v4, v2);
  return sub_25163594C();
}

uint64_t ClassificationChangeDescriptorSet.init(arrayLiteral:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_251601C68(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_251631CFC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_251601C68(a1);

  *a2 = v3;
  return result;
}

void sub_251631D3C(__int128 *a1, uint64_t a2)
{
  sub_25163594C();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  for (i = 0; v5; v7 ^= v16)
  {
LABEL_8:
    v10 = *(a2 + 48) + 24 * (__clz(__rbit64(v5)) | (i << 6));
    v11 = *v10;
    v12 = *(v10 + 8);
    v13 = *(v10 + 16);
    sub_25163590C();
    if (v11 > 1)
    {
      if (v11 == 2)
      {
        v14 = 3;
      }

      else
      {
        if (v11 != 3)
        {
LABEL_15:
          MEMORY[0x25307C1E0](0);
          v15 = v11;
          sub_25163562C();
          if (v13)
          {
            sub_25163592C();
          }

          else
          {
            sub_25163592C();
            if ((v12 & 0x7FFFFFFFFFFFFFFFLL) != 0)
            {
              v17 = v12;
            }

            else
            {
              v17 = 0;
            }

            MEMORY[0x25307C200](v17);
          }

          goto LABEL_20;
        }

        v14 = 4;
      }
    }

    else if (v11)
    {
      if (v11 != 1)
      {
        goto LABEL_15;
      }

      v14 = 2;
    }

    else
    {
      v14 = 1;
    }

    MEMORY[0x25307C1E0](v14);
LABEL_20:
    v5 &= v5 - 1;
    v16 = sub_25163594C();
    sub_251601D74(v11);
  }

  while (1)
  {
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      MEMORY[0x25307C1E0](v7);
      return;
    }

    v5 = *(a2 + 56 + 8 * v9);
    ++i;
    if (v5)
    {
      i = v9;
      goto LABEL_8;
    }
  }

  __break(1u);
}

unint64_t sub_251631F28()
{
  result = qword_27F4479A0;
  if (!qword_27F4479A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4479A0);
  }

  return result;
}

uint64_t sub_251631F7C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_251631FC4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t MeasureIdentifier.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MeasureIdentifier.identifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

HealthDomains::MeasureIdentifier_optional __swiftcall MeasureIdentifier.init(rawValue:)(Swift::String rawValue)
{
  *v1 = rawValue;
  result.value.identifier = rawValue;
  return result;
}

unint64_t sub_25163215C()
{
  result = qword_280DD7320;
  if (!qword_280DD7320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DD7320);
  }

  return result;
}

unint64_t sub_2516321B4()
{
  result = qword_27F4479A8;
  if (!qword_27F4479A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4479A8);
  }

  return result;
}

unint64_t sub_25163220C()
{
  result = qword_27F4479B0;
  if (!qword_27F4479B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4479B0);
  }

  return result;
}

uint64_t sub_251632260(uint64_t a1, uint64_t a2)
{
  v4 = sub_25163237C();

  return MEMORY[0x2821FC220](a1, a2, v4);
}

uint64_t sub_2516322B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_25163237C();

  return MEMORY[0x2821FC228](a1, a4, a2, a5, v10, a3);
}

unint64_t sub_25163237C()
{
  result = qword_27F4479B8;
  if (!qword_27F4479B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4479B8);
  }

  return result;
}

uint64_t sub_2516323D8(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 << 8 == a2 << 8)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_2516358DC();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

HealthDomains::Escalation::Tier_optional __swiftcall Escalation.Tier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25163577C();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

void __swiftcall Escalation.init(identifier:name:description:tier:)(HealthDomains::Escalation *__return_ptr retstr, HealthDomains::EscalationIdentifier identifier, Swift::String name, Swift::String description, HealthDomains::Escalation::Tier tier)
{
  v5 = *(identifier.identifier._countAndFlagsBits + 8);
  v6 = *description._object;
  retstr->identifier.identifier._countAndFlagsBits = *identifier.identifier._countAndFlagsBits;
  retstr->identifier.identifier._object = v5;
  retstr->name._countAndFlagsBits = identifier.identifier._object;
  *&retstr->name._object = name;
  retstr->description._object = description._countAndFlagsBits;
  retstr->tier = v6;
}

uint64_t Escalation.identifier.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t Escalation.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Escalation.description.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_251632628()
{
  sub_25163590C();
  sub_25163539C();

  return sub_25163594C();
}

uint64_t sub_251632680(uint64_t a1)
{
  sub_25163539C();
}

uint64_t sub_2516326BC(uint64_t a1)
{
  sub_25163590C();
  sub_25163539C();

  return sub_25163594C();
}

uint64_t sub_251632714()
{
  v1 = 0x696669746E656469;
  v2 = 0x7470697263736564;
  if (*v0 != 2)
  {
    v2 = 1919248756;
  }

  if (*v0)
  {
    v1 = 1701667182;
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

uint64_t sub_251632788@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_251633664(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2516327B0(uint64_t a1)
{
  v2 = sub_2516331DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2516327EC(uint64_t a1)
{
  v2 = sub_2516331DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Escalation.encode(to:)(void *a1)
{
  sub_2516332D8(0, &qword_27F4479C0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v15 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v15[3] = v1[3];
  v15[4] = v10;
  v11 = v1[4];
  v15[1] = v1[5];
  v15[2] = v11;
  v18 = *(v1 + 48);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2516331DC();

  sub_25163597C();
  v16 = v8;
  v17 = v9;
  v19 = 0;
  sub_251633230();
  v12 = v15[5];
  sub_25163588C();
  if (v12)
  {
  }

  else
  {
    v13 = v18;

    LOBYTE(v16) = 1;
    sub_25163584C();
    LOBYTE(v16) = 2;
    sub_25163584C();
    LOBYTE(v16) = v13;
    v19 = 3;
    sub_251633284();
    sub_25163588C();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t Escalation.hash(into:)(uint64_t a1)
{
  sub_25163539C();
  sub_25163539C();
  sub_25163539C();
  sub_25163539C();
}

uint64_t Escalation.hashValue.getter()
{
  sub_25163590C();
  sub_25163539C();
  sub_25163539C();
  sub_25163539C();
  sub_25163539C();

  return sub_25163594C();
}

uint64_t Escalation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2516332D8(0, &qword_27F4479E0, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2516331DC();
  sub_25163596C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v30 = 0;
  sub_25163333C();
  sub_2516357FC();
  v10 = v28;
  v27 = v29;
  LOBYTE(v28) = 1;
  v11 = sub_2516357BC();
  v26 = v12;
  v23 = v11;
  v24 = v10;
  LOBYTE(v28) = 2;
  v13 = sub_2516357BC();
  v25 = v14;
  v30 = 3;
  sub_251633390();
  sub_2516357FC();
  (*(v7 + 8))(v9, v6);
  v16 = v28;
  v17 = v23;
  v18 = v13;
  v19 = v26;
  v20 = v27;
  *a2 = v24;
  *(a2 + 8) = v20;
  *(a2 + 16) = v17;
  *(a2 + 24) = v19;
  v21 = v25;
  *(a2 + 32) = v18;
  *(a2 + 40) = v21;
  *(a2 + 48) = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_251632EE4()
{
  sub_25163590C();
  sub_25163539C();
  sub_25163539C();
  sub_25163539C();
  sub_25163539C();

  return sub_25163594C();
}

uint64_t sub_251632F90(uint64_t a1)
{
  sub_25163539C();
  sub_25163539C();
  sub_25163539C();
  sub_25163539C();
}

uint64_t sub_25163301C(uint64_t a1)
{
  sub_25163590C();
  sub_25163539C();
  sub_25163539C();
  sub_25163539C();
  sub_25163539C();

  return sub_25163594C();
}

uint64_t _s13HealthDomains10EscalationV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = *(a1 + 48);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  if ((*a1 != *a2 || a1[1] != *(a2 + 8)) && (sub_2516358DC() & 1) == 0 || (v2 != v7 || v4 != v8) && (sub_2516358DC() & 1) == 0 || (v3 != v9 || v5 != v10) && (sub_2516358DC() & 1) == 0)
  {
    return 0;
  }

  return sub_2516323D8(v6, v11);
}

unint64_t sub_2516331DC()
{
  result = qword_27F4479C8;
  if (!qword_27F4479C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4479C8);
  }

  return result;
}

unint64_t sub_251633230()
{
  result = qword_27F4479D0;
  if (!qword_27F4479D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4479D0);
  }

  return result;
}

unint64_t sub_251633284()
{
  result = qword_27F4479D8;
  if (!qword_27F4479D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4479D8);
  }

  return result;
}

void sub_2516332D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2516331DC();
    v7 = a3(a1, &type metadata for Escalation.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_25163333C()
{
  result = qword_27F4479E8;
  if (!qword_27F4479E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4479E8);
  }

  return result;
}

unint64_t sub_251633390()
{
  result = qword_27F4479F0;
  if (!qword_27F4479F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4479F0);
  }

  return result;
}

unint64_t sub_2516333E8()
{
  result = qword_27F4479F8;
  if (!qword_27F4479F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4479F8);
  }

  return result;
}

unint64_t sub_251633440()
{
  result = qword_27F447A00;
  if (!qword_27F447A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447A00);
  }

  return result;
}

uint64_t sub_251633494(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_2516334DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_251633560()
{
  result = qword_27F447A08;
  if (!qword_27F447A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447A08);
  }

  return result;
}

unint64_t sub_2516335B8()
{
  result = qword_27F447A10;
  if (!qword_27F447A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447A10);
  }

  return result;
}

unint64_t sub_251633610()
{
  result = qword_27F447A18;
  if (!qword_27F447A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447A18);
  }

  return result;
}

uint64_t sub_251633664(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_2516358DC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_2516358DC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69 || (sub_2516358DC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1919248756 && a2 == 0xE400000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_2516358DC();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_2516337D4()
{
  result = qword_27F447A20;
  if (!qword_27F447A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447A20);
  }

  return result;
}

uint64_t EmptyClassification.dateRange.getter@<X0>(char *a1@<X8>)
{
  sub_2515F8E44(0);
  v3 = v2;
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - v7;
  v9 = sub_25163516C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v22 - v14;
  sub_2516350EC();
  sub_2516350FC();
  sub_251634998(&qword_280DD7318, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  result = sub_25163530C();
  if (result)
  {
    v17 = *(v10 + 32);
    v17(v8, v15, v9);
    v17(&v8[*(v3 + 48)], v13, v9);
    sub_25161A3CC(v8, v6);
    v18 = *(v3 + 48);
    v17(a1, v6, v9);
    v19 = *(v10 + 8);
    v19(&v6[v18], v9);
    sub_25161A430(v8, v6);
    v20 = *(v3 + 48);
    sub_2515F8380(0);
    v17(&a1[*(v21 + 36)], &v6[v20], v9);
    return (v19)(v6, v9);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_251633AE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701736302 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2516358DC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_251633B70(uint64_t a1)
{
  v2 = sub_251633EE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_251633BAC(uint64_t a1)
{
  v2 = sub_251633EE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_251633BE8(uint64_t a1)
{
  v2 = sub_251633E94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_251633C24(uint64_t a1)
{
  v2 = sub_251633E94();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EmptyClassification.Level.encode(to:)(void *a1)
{
  v2 = MEMORY[0x277D84538];
  sub_25163472C(0, &qword_27F447A28, sub_251633E94, &type metadata for EmptyClassification.Level.NoneCodingKeys, MEMORY[0x277D84538]);
  v14 = v3;
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - v5;
  sub_25163472C(0, &qword_27F447A38, sub_251633EE8, &type metadata for EmptyClassification.Level.CodingKeys, v2);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251633EE8();
  sub_25163597C();
  sub_251633E94();
  sub_25163582C();
  (*(v4 + 8))(v6, v14);
  return (*(v9 + 8))(v11, v8);
}

unint64_t sub_251633E94()
{
  result = qword_27F447A30;
  if (!qword_27F447A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447A30);
  }

  return result;
}

unint64_t sub_251633EE8()
{
  result = qword_27F447A40;
  if (!qword_27F447A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447A40);
  }

  return result;
}

uint64_t EmptyClassification.Level.hashValue.getter()
{
  sub_25163590C();
  MEMORY[0x25307C1E0](0);
  return sub_25163594C();
}

uint64_t EmptyClassification.Level.init(from:)(void *a1)
{
  v2 = MEMORY[0x277D844C8];
  sub_25163472C(0, &qword_27F447A48, sub_251633E94, &type metadata for EmptyClassification.Level.NoneCodingKeys, MEMORY[0x277D844C8]);
  v4 = v3;
  v24 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - v5;
  sub_25163472C(0, &qword_27F447A50, sub_251633EE8, &type metadata for EmptyClassification.Level.CodingKeys, v2);
  v8 = v7;
  v23 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251633EE8();
  v11 = v29;
  v12 = a1;
  sub_25163596C();
  if (!v11)
  {
    v14 = v23;
    v13 = v24;
    v15 = sub_25163580C();
    v16 = (2 * *(v15 + 16)) | 1;
    v25 = v15;
    v26 = v15 + 32;
    v27 = 0;
    v28 = v16;
    if (sub_2516033E0() || v27 != v28 >> 1)
    {
      v17 = sub_2516356FC();
      swift_allocError();
      v19 = v18;
      sub_25160354C(0);
      *v19 = &type metadata for EmptyClassification.Level;
      sub_25163579C();
      sub_2516356DC();
      v20 = *(*(v17 - 8) + 104);
      v21 = v17;
      v12 = a1;
      v20(v19, *MEMORY[0x277D84160], v21);
      swift_willThrow();
    }

    else
    {
      sub_251633E94();
      sub_25163578C();
      (*(v13 + 8))(v6, v4);
    }

    (*(v14 + 8))(v10, v8);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v12);
}

uint64_t sub_251634324(void *a1)
{
  v2 = MEMORY[0x277D84538];
  sub_25163472C(0, &qword_27F447A28, sub_251633E94, &type metadata for EmptyClassification.Level.NoneCodingKeys, MEMORY[0x277D84538]);
  v14 = v3;
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - v5;
  sub_25163472C(0, &qword_27F447A38, sub_251633EE8, &type metadata for EmptyClassification.Level.CodingKeys, v2);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251633EE8();
  sub_25163597C();
  sub_251633E94();
  sub_25163582C();
  (*(v4 + 8))(v6, v14);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_251634574(uint64_t a1)
{
  v2 = sub_251634794();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2516345B0(uint64_t a1)
{
  v2 = sub_251634794();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EmptyClassification.encode(to:)(void *a1)
{
  sub_25163472C(0, &qword_27F447A58, sub_251634794, &type metadata for EmptyClassification.CodingKeys, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251634794();
  sub_25163597C();
  return (*(v4 + 8))(v6, v3);
}

void sub_25163472C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_251634794()
{
  result = qword_27F447A60;
  if (!qword_27F447A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447A60);
  }

  return result;
}

unint64_t sub_2516348BC(void *a1)
{
  a1[1] = sub_251630958();
  a1[2] = sub_2516309AC();
  a1[3] = sub_251630A00();
  result = sub_2516348FC();
  a1[4] = result;
  return result;
}

unint64_t sub_2516348FC()
{
  result = qword_27F447A68;
  if (!qword_27F447A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447A68);
  }

  return result;
}

uint64_t sub_251634998(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2516349E4()
{
  result = qword_27F447A78;
  if (!qword_27F447A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447A78);
  }

  return result;
}

unint64_t sub_251634A3C()
{
  result = qword_27F447A80;
  if (!qword_27F447A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447A80);
  }

  return result;
}

unint64_t sub_251634A94(void *a1)
{
  a1[2] = sub_251634ACC();
  a1[3] = sub_251634B20();
  result = sub_251634B74();
  a1[4] = result;
  return result;
}

unint64_t sub_251634ACC()
{
  result = qword_27F447A88;
  if (!qword_27F447A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447A88);
  }

  return result;
}

unint64_t sub_251634B20()
{
  result = qword_27F447A90;
  if (!qword_27F447A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447A90);
  }

  return result;
}

unint64_t sub_251634B74()
{
  result = qword_27F447A98;
  if (!qword_27F447A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447A98);
  }

  return result;
}

unint64_t sub_251634BCC()
{
  result = qword_27F447AA0;
  if (!qword_27F447AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447AA0);
  }

  return result;
}

uint64_t sub_251634C48(void *a1)
{
  sub_25163472C(0, &qword_27F447A58, sub_251634794, &type metadata for EmptyClassification.CodingKeys, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251634794();
  sub_25163597C();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_251634DF4()
{
  result = qword_27F447AA8;
  if (!qword_27F447AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447AA8);
  }

  return result;
}

unint64_t sub_251634E4C()
{
  result = qword_27F447AB0;
  if (!qword_27F447AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447AB0);
  }

  return result;
}

unint64_t sub_251634EA4()
{
  result = qword_27F447AB8;
  if (!qword_27F447AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447AB8);
  }

  return result;
}

unint64_t sub_251634EFC()
{
  result = qword_27F447AC0;
  if (!qword_27F447AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447AC0);
  }

  return result;
}

unint64_t sub_251634F54()
{
  result = qword_27F447AC8;
  if (!qword_27F447AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447AC8);
  }

  return result;
}

unint64_t sub_251634FAC()
{
  result = qword_27F447AD0;
  if (!qword_27F447AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447AD0);
  }

  return result;
}

unint64_t sub_251635004()
{
  result = qword_27F447AD8;
  if (!qword_27F447AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447AD8);
  }

  return result;
}