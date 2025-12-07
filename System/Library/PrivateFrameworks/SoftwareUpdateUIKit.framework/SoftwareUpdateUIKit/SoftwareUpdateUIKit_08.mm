uint64_t sub_26AFB7AF8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2803DDC10, &unk_26B08D730);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC748, &qword_26B08A188);
  sub_26AFB5484();
  sub_26AE95974();
  sub_26AEFDA40();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_26AFB7C60()
{
  v2 = qword_2803DDD00;
  if (!qword_2803DDD00)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DDD00);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AFB7CDC(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_26AE95AFC(*a1, *(a1 + 8), *(a1 + 16) & 1);
  }

  if (*(a1 + 56))
  {
    sub_26AE95AFC(*(a1 + 32), *(a1 + 40), *(a1 + 48) & 1);
  }

  return a1;
}

uint64_t sub_26AFB7D84(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    v9 = *a1;
    v10 = *(a1 + 8);
    v11 = *(a1 + 16);
    sub_26AE95D28(*a1, v10, v11 & 1);
    *a2 = v9;
    *(a2 + 8) = v10;
    *(a2 + 16) = v11 & 1;
    v12 = *(a1 + 24);
    sub_26B078640();
    *(a2 + 24) = v12;
  }

  else
  {
    *a2 = *a1;
    *(a2 + 16) = *(a1 + 16);
  }

  if (*(a1 + 56))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    sub_26AE95D28(v5, v6, v7 & 1);
    *(a2 + 32) = v5;
    *(a2 + 40) = v6;
    *(a2 + 48) = v7 & 1;
    v8 = *(a1 + 56);
    sub_26B078640();
    *(a2 + 56) = v8;
  }

  else
  {
    *(a2 + 32) = *(a1 + 32);
    *(a2 + 48) = *(a1 + 48);
  }

  v3 = *(a1 + 64);

  *(a2 + 64) = v3;
  v4 = *(a1 + 72);

  result = a2;
  *(a2 + 72) = v4;
  return result;
}

uint64_t sub_26AFB7F34()
{
  updated = type metadata accessor for AvailableUpdateProactiveSuggestionView(0);
  v0 = *(*(updated - 8) + 80);
  v4 = (v0 + 32) & ~v0;
  swift_unknownObjectRelease();
  sub_26AF072D8();

  v6 = *(updated + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDBB0, &unk_26B08D620);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_26B078B00();
    (*(*(v1 - 8) + 8))(v3 + v4 + v6);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_26AFB80EC(uint64_t a1)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v3 = *(type metadata accessor for AvailableUpdateProactiveSuggestionView(0) - 8);
  v9 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_26AFB8200;

  return sub_26AFB27E8(a1, v7, v8, v1 + v9);
}

uint64_t sub_26AFB8200()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_26AFB8358()
{
  updated = type metadata accessor for AvailableUpdateProactiveSuggestionView(0);
  v0 = *(*(updated - 8) + 80);
  v4 = (v0 + 32) & ~v0;
  swift_unknownObjectRelease();
  sub_26AF072D8();

  v6 = *(updated + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDBB0, &unk_26B08D620);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_26B078B00();
    (*(*(v1 - 8) + 8))(v3 + v4 + v6);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_26AFB8510(uint64_t a1)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v3 = *(type metadata accessor for AvailableUpdateProactiveSuggestionView(0) - 8);
  v9 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_26AFB8624;

  return sub_26AFB3ED4(a1, v7, v8, v1 + v9);
}

uint64_t sub_26AFB8624()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

unint64_t sub_26AFB874C()
{
  v2 = qword_2803DDD18;
  if (!qword_2803DDD18)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2803DDD18);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_26AFB8810()
{
  updated = type metadata accessor for AvailableUpdateProactiveSuggestionView(0);
  v0 = *(*(updated - 8) + 80);
  v4 = (v0 + 16) & ~v0;
  sub_26AF072D8();

  v6 = *(updated + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDBB0, &unk_26B08D620);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_26B078B00();
    (*(*(v1 - 8) + 8))(v3 + v4 + v6);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_26AFB89BC()
{
  v1 = *(type metadata accessor for AvailableUpdateProactiveSuggestionView(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_26AFAF6EC(v2);
}

uint64_t sub_26AFB8A50()
{
  updated = type metadata accessor for AvailableUpdateProactiveSuggestionView(0);
  v0 = *(*(updated - 8) + 80);
  v4 = (v0 + 32) & ~v0;
  swift_unknownObjectRelease();
  sub_26AF072D8();

  v6 = *(updated + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDBB0, &unk_26B08D620);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_26B078B00();
    (*(*(v1 - 8) + 8))(v3 + v4 + v6);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_26AFB8C08(uint64_t a1)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v3 = *(type metadata accessor for AvailableUpdateProactiveSuggestionView(0) - 8);
  v9 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_26AFB8D1C;

  return sub_26AFAFC88(a1, v7, v8, v1 + v9);
}

uint64_t sub_26AFB8D1C()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

unint64_t sub_26AFB8E98()
{
  v2 = qword_2803DDD30;
  if (!qword_2803DDD30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDBD0, &qword_26B08D710);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DDD30);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AFB8F20(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_26AE95AFC(*a1, *(a1 + 8), *(a1 + 16) & 1);
  }

  if (*(a1 + 56))
  {
    sub_26AE95AFC(*(a1 + 32), *(a1 + 40), *(a1 + 48) & 1);
  }

  return a1;
}

uint64_t sub_26AFB8FE0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    v12 = *a1;
    v13 = *(a1 + 8);
    v14 = *(a1 + 16);
    sub_26AE95D28(*a1, v13, v14 & 1);
    *a2 = v12;
    *(a2 + 8) = v13;
    *(a2 + 16) = v14 & 1;
    v15 = *(a1 + 24);
    sub_26B078640();
    *(a2 + 24) = v15;
  }

  else
  {
    *a2 = *a1;
    *(a2 + 16) = *(a1 + 16);
  }

  if (*(a1 + 56))
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    sub_26AE95D28(v8, v9, v10 & 1);
    *(a2 + 32) = v8;
    *(a2 + 40) = v9;
    *(a2 + 48) = v10 & 1;
    v11 = *(a1 + 56);
    sub_26B078640();
    *(a2 + 56) = v11;
  }

  else
  {
    *(a2 + 32) = *(a1 + 32);
    *(a2 + 48) = *(a1 + 48);
  }

  v3 = *(a1 + 64);

  *(a2 + 64) = v3;
  v4 = *(a1 + 72);

  *(a2 + 72) = v4;
  v5 = *(a1 + 80);

  *(a2 + 80) = v5;
  v6 = *(a1 + 88);
  v7 = *(a1 + 96);

  result = a2;
  *(a2 + 88) = v6;
  *(a2 + 96) = v7;
  return result;
}

uint64_t sub_26AFB9204@<X0>(uint64_t a1@<X8>)
{
  v3 = *MEMORY[0x277CE0FE0];
  v1 = sub_26B079840();
  return (*(*(v1 - 8) + 104))(a1, v3);
}

uint64_t sub_26AFB9270@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  swift_unknownObjectRetain();
  swift_getObjectType();
  v6 = [v4 updateName];
  *a2 = sub_26B079E00();
  a2[1] = v2;
  MEMORY[0x277D82BD8](v6);
  return swift_unknownObjectRelease();
}

uint64_t UpdateSummaryView.presentedDescriptor.getter()
{
  v2 = *v0;

  return v2;
}

uint64_t UpdateSummaryView.presentedDescriptor.setter(uint64_t a1)
{

  *v1 = a1;
}

uint64_t sub_26AFB93C8()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DB510, &qword_26B086040);
  sub_26B078A10();

  return v1;
}

uint64_t sub_26AFB9454()
{
  v2 = *(v0 + 8);

  return v2;
}

uint64_t sub_26AFB9498(uint64_t a1, char a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2 & 1;
}

uint64_t sub_26AFB9518()
{
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  sub_26AFB9610(v2, v3, v4, v5, v6 & 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDD60, &qword_26B08DCE0);
  sub_26B078A10();
  sub_26AFB9674(v2, v3, v4, v5, v6 & 1);
  return v7;
}

uint64_t sub_26AFB9610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }
}

uint64_t sub_26AFB9674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }
}

uint64_t sub_26AFB96D8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  result = sub_26AFB9610(v3, v4, v5, v6, v7 & 1);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7 & 1;
  return result;
}

uint64_t sub_26AFB9764(uint64_t *a1)
{
  v5 = 0;
  v6 = a1;
  sub_26AFB97B4(a1, v4);
  sub_26AFB983C(a1, v1 + 24);
  return sub_26AFB98B0(a1);
}

uint64_t sub_26AFB97B4(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  sub_26AFB9610(*a1, v4, v5, v6, v7 & 1);
  result = a2;
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7 & 1;
  return result;
}

uint64_t sub_26AFB983C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *a2;
  v9 = *(a2 + 8);
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  v12 = *(a2 + 32);
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7 & 1;
  sub_26AFB9674(v8, v9, v10, v11, v12 & 1);
  return a2;
}

double sub_26AFB9938()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDD68, &qword_26B08DCE8);
  sub_26B0798B0();

  return v1;
}

uint64_t sub_26AFB99BC(double a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDD68, &qword_26B08DCE8);
  sub_26B0798C0();
  sub_26AFB9A68();
}

double sub_26AFB9A94()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDD68, &qword_26B08DCE8);
  sub_26B0798D0();

  return v1;
}

double sub_26AFB9B30()
{
  v2 = *(v0 + 64);

  return v2;
}

uint64_t sub_26AFB9B70(uint64_t a1, double a2)
{

  *(v2 + 64) = a2;
  *(v2 + 72) = a1;
}

double sub_26AFB9C18()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDD68, &qword_26B08DCE8);
  sub_26B0798B0();

  return v1;
}

uint64_t sub_26AFB9C9C(double a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDD68, &qword_26B08DCE8);
  sub_26B0798C0();
  sub_26AFB9A68();
}

double sub_26AFB9D48()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDD68, &qword_26B08DCE8);
  sub_26B0798D0();

  return v1;
}

double sub_26AFB9DE4()
{
  v2 = *(v0 + 80);

  return v2;
}

uint64_t sub_26AFB9E24(uint64_t a1, double a2)
{

  *(v2 + 80) = a2;
  *(v2 + 88) = a1;
}

uint64_t sub_26AFB9E88()
{
  v2 = *(v0 + 96);
  sub_26AEC1EF4(v2, *(v0 + 104));
  return v2;
}

uint64_t sub_26AFB9ED4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  memset(__b, 0, 0x71uLL);
  swift_getKeyPath();
  sub_26B078A30();
  __b[1] = v22;
  LOBYTE(__b[2]) = v23 & 1;
  swift_getKeyPath();
  sub_26B078A30();
  __b[3] = v17;
  __b[4] = v18;
  __b[5] = v19;
  __b[6] = v20;
  LOBYTE(__b[7]) = v21 & 1;
  sub_26B079730();
  v6 = sub_26AFB98F4(v5);
  __b[8] = v7;
  __b[9] = v6;
  sub_26B079730();
  v9 = sub_26AFB9BD4(v8);
  __b[10] = v10;
  __b[11] = v9;

  __b[0] = a1;
  sub_26AEC1EF4(a2, a3);
  __b[12] = a2;
  __b[13] = a3;
  LOBYTE(__b[14]) = a4;
  sub_26AFBDE64(__b, a5);
  sub_26AED4828(a2, a3);

  return sub_26AFBE008(__b);
}

uint64_t UpdateSummaryView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v11 = sub_26AFBE0A4;
  v39 = 0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDD70, &qword_26B08DD50);
  v5 = (*(*(v19 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v19);
  v22 = &v4 - v5;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDD78, &qword_26B08DD58);
  v6 = (*(*(v23 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v23);
  v25 = &v4 - v6;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDD80, &qword_26B08DD60);
  v7 = (*(*(v28 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v28);
  v30 = &v4 - v7;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDD88, &qword_26B08DD68);
  v8 = (*(*(v32 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v32);
  v34 = &v4 - v8;
  v9 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v4 - v8);
  v35 = &v4 - v9;
  v39 = &v4 - v9;
  v15 = v40;
  v16 = 113;
  memcpy(v40, v2, 0x71uLL);
  memcpy(__dst, v10, sizeof(__dst));
  v14 = sub_26B078E60();
  sub_26AFBDE64(v15, &v38);
  v12 = v36;
  v36[2] = v15;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDD90, &qword_26B08DD70);
  sub_26AFBE0AC();
  sub_26B079980();
  sub_26AFBE008(v15);
  memcpy(&v37, v15, v16);
  v21 = sub_26AFB93C8();
  v17 = v40[0];

  v18 = *(v17 + 24);
  MEMORY[0x277D82BE0](v18);

  v20 = [v18 descriptor];
  MEMORY[0x277D82BD8](v18);
  sub_26AFBE134();
  View.withSUUIReactiveUpdateDialogs(manager:presentedDescriptor:)(v21, v20, v19);
  swift_unknownObjectRelease();

  sub_26AFBE1BC(v22);
  v24 = sub_26B079180();
  sub_26AFBE7E4();
  v26 = 0;
  v27 = 1;
  sub_26B079680();
  sub_26AFBE904(v25);
  v29 = sub_26B079160();
  sub_26AFBEEF4();
  sub_26B079680();
  sub_26AFBEF98(v30);
  v33 = sub_26AFBF588();
  sub_26AE9463C(v34, v32, v35);
  sub_26AFBF62C(v34);
  sub_26AFBFC1C(v35, v34);
  sub_26AE94B4C(v34, v32, v31);
  sub_26AFBF62C(v34);
  return sub_26AFBF62C(v35);
}

uint64_t sub_26AFBA4D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v11 = a1;
  v33 = 0;
  v32 = 0;
  v31 = 0;
  v17 = type metadata accessor for ReleaseNotesSummaryView(0);
  v7 = (*(*(v17 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v17);
  v22 = (&v6 - v7);
  v8 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v6 - v7);
  v24 = (&v6 - v8);
  v33 = &v6 - v8;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE68, &qword_26B08DE18);
  v9 = (*(*(v16 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v16);
  v23 = &v6 - v9;
  v10 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v6 - v9);
  v25 = &v6 - v10;
  v32 = &v6 - v10;
  v31 = v4;
  memcpy(__dst, v4, sizeof(__dst));
  sub_26AFBA7F4(v23);
  v18 = sub_26AFC0808();
  sub_26AE9463C(v23, v16, v25);
  sub_26AFC0890(v23);
  v12 = *v11;

  v13 = *(v11 + 96);
  v14 = *(v11 + 104);
  v15 = *(v11 + 112);
  sub_26AEC1EF4(v13, v14);
  sub_26AF25BA4(v12, v13, v14, v15, v22);
  v19 = sub_26AFC48C8();
  sub_26AE9463C(v22, v17, v24);
  sub_26AF2933C(v22);
  sub_26AFC0CE4(v25, v23);
  v21 = v29;
  v29[0] = v23;
  sub_26AF29160(v24, v22);
  v29[1] = v22;
  v28[0] = v16;
  v28[1] = v17;
  v26 = v18;
  v27 = v19;
  sub_26AFD49C4(v21, 2uLL, v28, v20);
  sub_26AF2933C(v22);
  sub_26AFC0890(v23);
  sub_26AF2933C(v24);
  return sub_26AFC0890(v25);
}

uint64_t sub_26AFBA7F4@<X0>(uint64_t a1@<X8>)
{
  v13 = a1;
  v8 = sub_26AFC0778;
  v20 = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE68, &qword_26B08DE18);
  v4 = (*(*(v14 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v14);
  v16 = &v4 - v4;
  v5 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v4 - v4);
  v17 = &v4 - v5;
  v20 = &v4 - v5;
  v12 = v21;
  v7 = 113;
  memcpy(v21, v2, 0x71uLL);
  memcpy(__dst, v6, sizeof(__dst));
  v11 = sub_26B078D90();
  sub_26AFBDE64(v12, &v19);
  v9 = v18;
  v18[2] = v12;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE70, &qword_26B08DE20);
  sub_26AFC0780();
  sub_26B079940();
  sub_26AFBE008(v12);
  v15 = sub_26AFC0808();
  sub_26AE9463C(v16, v14, v17);
  sub_26AFC0890(v16);
  sub_26AFC0CE4(v17, v16);
  sub_26AE94B4C(v16, v14, v13);
  sub_26AFC0890(v16);
  return sub_26AFC0890(v17);
}

uint64_t sub_26AFBA9C8@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v112 = v196;
  v151 = a1;
  v113 = a2;
  v128 = 0;
  v201 = 0;
  v200 = 0;
  v199 = 0;
  v198 = 0;
  v183 = 0;
  v177 = 0;
  v176 = 0;
  v175 = 0;
  v161 = 0;
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v205 = a1[3];
  v204 = v4;
  v203 = v3;
  v202 = v2;
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  v209 = *(a1 + 112);
  v208 = v7;
  v207 = v6;
  v206 = v5;
  v213 = v205;
  v212 = v204;
  v211 = v203;
  v210 = v202;
  v217 = v209;
  v216 = v7;
  v215 = v6;
  v214 = v5;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDF00, &qword_26B08E1E8);
  v115 = (*(*(v114 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v114 - 8);
  v116 = v53 - v115;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE60, &qword_26B08DE10);
  v118 = *(*(v117 - 8) + 64);
  MEMORY[0x28223BE20](v117 - 8);
  v120 = (v118 + 15) & 0xFFFFFFFFFFFFFFF0;
  v119 = v53 - v120;
  MEMORY[0x28223BE20](v8);
  v121 = v53 - v120;
  v201 = v53 - v120;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDE88, &qword_26B08DE28);
  v123 = (*(*(v122 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v122 - 8);
  v124 = v53 - v123;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDE8, &qword_26B08DDB8);
  v126 = (*(*(v125 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v125 - 8);
  v127 = v53 - v126;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDF0, &qword_26B08DDC0);
  v131 = *(*(v129 - 8) + 64);
  MEMORY[0x28223BE20](v128);
  v133 = (v131 + 15) & 0xFFFFFFFFFFFFFFF0;
  v130 = v53 - v133;
  MEMORY[0x28223BE20](v9);
  v132 = v53 - v133;
  MEMORY[0x28223BE20](v10);
  v134 = v53 - v133;
  v200 = v53 - v133;
  v135 = sub_26B079840();
  v136 = *(v135 - 8);
  v137 = v136;
  MEMORY[0x28223BE20](v135 - 8);
  v138 = v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDC0, &qword_26B08DD90);
  v140 = (*(*(v139 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v139 - 8);
  v141 = v53 - v140;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDC8, &qword_26B08DD98);
  v143 = (*(*(v142 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v142 - 8);
  v144 = v53 - v143;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE58, &qword_26B08DE08);
  v147 = *(*(v145 - 8) + 64);
  MEMORY[0x28223BE20](v145 - 8);
  v149 = (v147 + 15) & 0xFFFFFFFFFFFFFFF0;
  v146 = v53 - v149;
  MEMORY[0x28223BE20](v53 - v149);
  v148 = v53 - v149;
  MEMORY[0x28223BE20](v12);
  v150 = v53 - v149;
  v199 = v53 - v149;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDF08, qword_26B08E1F0);
  v153 = *(*(v152 - 8) + 64);
  MEMORY[0x28223BE20](v151);
  v155 = (v153 + 15) & 0xFFFFFFFFFFFFFFF0;
  v154 = (v53 - v155);
  MEMORY[0x28223BE20](v13);
  v156 = (v53 - v155);
  v198 = v53 - v155;
  v158 = *v14;

  KeyPath = swift_getKeyPath();
  ReactiveDescriptor.subscript.getter(KeyPath, &v197);
  v160 = v197;
  v159 = v197;

  if (v160)
  {
    v111 = v159;
    v107 = v159;
    swift_getObjectType();
    v15 = [v107 updateIcon];
    v108 = v15;
    if (v15)
    {
      v106 = v108;
      v101 = v108;
      v102 = sub_26B0781D0();
      v103 = v16;

      v104 = v102;
      v105 = v103;
    }

    else
    {
      v104 = 0;
      v105 = 0xF000000000000000;
    }

    v100 = v105;
    v99 = v104;
    swift_unknownObjectRelease();

    v109 = v99;
    v110 = v100;
  }

  else
  {

    v109 = 0;
    v110 = 0xF000000000000000;
  }

  v97 = v110;
  v98 = v109;
  if (v110 >> 60 == 15)
  {
    goto LABEL_14;
  }

  v95 = v98;
  v96 = v97;
  v93 = v97;
  v92 = v98;
  v176 = v98;
  v177 = v97;
  sub_26AF7E238();
  sub_26AE961DC(v92, v93);
  v17 = sub_26AFB91A8(v92, v93);
  v94 = v17;
  if (!v17)
  {
    sub_26AE96418(v92, v93);
LABEL_14:
    v30 = v124;
    v31 = v112;
    v32 = v151;
    v33 = *v151;
    v34 = *(v151 + 1);
    v35 = *(v151 + 2);
    *(v112 + 3) = *(v151 + 3);
    v31[2] = v35;
    v31[1] = v34;
    *v31 = v33;
    v36 = *(v32 + 4);
    v37 = *(v32 + 5);
    v38 = *(v32 + 6);
    v196[112] = *(v32 + 112);
    v31[6] = v38;
    v31[5] = v37;
    v31[4] = v36;
    sub_26AFBB8D4(v30);
    v58 = 0;
    v195 = 0;
    sub_26AFC1784();
    View.suuiIdentifiable(_:)();
    sub_26AFC18B8(v124);
    v59 = 1;
    sub_26B079D00("Update image", 12);
    v64 = sub_26B078E10();
    v61 = v39;
    v60 = v40;
    v62 = v41;
    v63 = *sub_26B02D0D0();
    v42 = v63;
    v192 = 0;
    v193 = 0;
    LOBYTE(v194) = v58;
    HIBYTE(v194) = v59;
    LOWORD(v52) = v194;
    v51 = 0;
    v188 = sub_26B0792C0();
    v189 = v43;
    v190 = v44;
    v191 = v45;
    v65 = v188;
    v66 = v43;
    v67 = v44;
    v68 = v45;
    sub_26AFC25A4();
    v184 = v65;
    v185 = v66;
    v186 = v67;
    v187 = v68;
    sub_26B079520();
    sub_26AE95AFC(v65, v66, v67);

    sub_26AFC264C(v127);
    v69 = sub_26AFC2788();
    sub_26AE9463C(v132, v129, v134);
    sub_26AFC2830(v132);
    v183 = v132;
    sub_26AFC29B0(v134, v130);
    sub_26AE94B4C(v130, v129, v132);
    sub_26AFC2830(v130);
    sub_26AFC29B0(v132, v130);
    v46 = sub_26AFC2B84();
    sub_26AE94CA8(v130, v145, v129, v46, v69, v154);
    sub_26AFC2830(v130);
    sub_26AFC2D74(v154, v156);
    sub_26AFC2830(v132);
    sub_26AFC2830(v134);
    goto LABEL_15;
  }

  v91 = v94;
  v70 = v94;
  v175 = v94;
  v18 = v94;
  v75 = sub_26B079820();
  v71 = sub_26AFB91F0();
  v72 = v19;
  v73 = v20;
  v74 = v21;
  sub_26AFB9204(v138);
  v76 = sub_26B079850();
  (*(v137 + 8))(v138, v135);

  v174 = v76;
  v88 = 0;
  v173 = 0;
  v77 = &v174;
  View.suuiIdentifiable(_:)();
  sub_26AF1FC54();
  v78 = 1;
  sub_26B079D00("Update image", 12);
  v83 = sub_26B078E10();
  v80 = v22;
  v79 = v23;
  v81 = v24;
  v82 = *sub_26B02D0D0();
  v25 = v82;
  v170 = 0;
  v171 = 0;
  LOBYTE(v172) = v88;
  HIBYTE(v172) = v78;
  LOWORD(v52) = v172;
  v51 = 0;
  v166 = sub_26B0792C0();
  v167 = v26;
  v168 = v27;
  v169 = v28;
  v84 = v166;
  v85 = v26;
  v86 = v27;
  v87 = v28;
  sub_26AFC2CD0();
  v162 = v84;
  v163 = v85;
  v164 = v86;
  v165 = v87;
  sub_26B079520();
  sub_26AE95AFC(v84, v85, v86);

  sub_26AFC3F70(v141);
  v89 = sub_26AFC2C28();
  sub_26AEC96D4();
  sub_26B0795F0();
  sub_26AFC3FF8(v144);
  v90 = sub_26AFC2B84();
  sub_26AE9463C(v148, v145, v150);
  sub_26AFC40C8(v148);
  v161 = v148;
  sub_26AFC4198(v150, v146);
  sub_26AE94B4C(v146, v145, v148);
  sub_26AFC40C8(v146);
  sub_26AFC4198(v148, v146);
  v29 = sub_26AFC2788();
  sub_26AE94BB0(v146, v145, v129, v90, v29, v154);
  sub_26AFC40C8(v146);
  sub_26AFC2D74(v154, v156);
  sub_26AFC40C8(v148);
  sub_26AFC40C8(v150);

  sub_26AE96418(v92, v93);
LABEL_15:
  v53[2] = sub_26B078E60();
  sub_26AFBDE64(v151, &v182);
  v53[3] = v53;
  MEMORY[0x28223BE20](v53);
  v53[0] = v50;
  v53[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDF40, qword_26B08E230);
  sub_26AFC30B8();
  v55 = 0;
  v56 = 1;
  sub_26B079980();
  sub_26AFBE008(v151);
  v54 = sub_26AFC3140();
  v47 = sub_26AEAABD4();
  v52 = v54;
  v51 = v114;
  v50[1] = v48;
  v50[0] = v47;
  sub_26B079600();
  sub_26AFC31C8(v116);
  v57 = sub_26AFC3364();
  sub_26AE9463C(v119, v117, v121);
  sub_26AFC3408(v119);
  sub_26AFC35A4(v156, v154);
  v181[0] = v154;
  sub_26AFC38EC(v121, v119);
  v181[1] = v119;
  v180[0] = v152;
  v180[1] = v117;
  v178 = sub_26AFC3C68();
  v179 = v57;
  sub_26AFD49C4(v181, 2uLL, v180, v113);
  sub_26AFC3408(v119);
  sub_26AFC3D10(v154);
  sub_26AFC3408(v121);
  return sub_26AFC3D10(v156);
}

uint64_t sub_26AFBB8D4@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v29 = MEMORY[0x277CDEAE8];
  v75 = 0;
  v74 = 0;
  v73 = 0;
  v72 = 0;
  v66 = 0;
  v60 = 0;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDE0, &qword_26B08DDB0);
  v31 = *(v30 - 8);
  v32 = v30 - 8;
  v33 = (v31[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v30);
  v34 = v14 - v33;
  v35 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v14 - v33);
  v36 = v14 - v35;
  v37 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v14 - v35);
  v38 = v14 - v37;
  v75 = v14 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDD8, &qword_26B08DDA8);
  v40 = *(v39 - 8);
  v41 = v39 - 8;
  v42 = (v40[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v39);
  v43 = v14 - v42;
  v44 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v14 - v42);
  v45 = v14 - v44;
  v46 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v14 - v44);
  v47 = v14 - v46;
  v74 = v14 - v46;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDE88, &qword_26B08DE28);
  v49 = (*(*(v48 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v48);
  v50 = v14 - v49;
  v51 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v14 - v49);
  v52 = v14 - v51;
  v73 = v14 - v51;
  memcpy(__dst, v1, 0x71uLL);
  v72 = v1;
  v53 = __dst[0];

  v54 = ReactiveDescriptor.currentState.getter();

  v57 = &v71;
  v71 = v54;
  v55 = &v70;
  v70 = 2;
  v56 = type metadata accessor for SUUIStatefulDescriptorState(0);
  sub_26AE9B8C0();
  if (sub_26B07A790())
  {
    memcpy(v63, __dst, sizeof(v63));
    sub_26AFBC600(v45);
    v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDEA8, &qword_26B08DE38);
    v7 = sub_26AFC14DC();
    v61 = v24;
    v62 = v7;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_26AE9463C(v45, v39, v47);
    v26 = v40[1];
    v27 = v40 + 1;
    v26(v45, v39);
    v60 = v45;
    v22 = v40[2];
    v21 = v40 + 2;
    v22(v43, v47, v39);
    sub_26AE94B4C(v43, v39, v45);
    v26(v43, v39);
    v22(v43, v45, v39);
    v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDE98, &qword_26B08DE30);
    v8 = sub_26AFC1454();
    v58 = v23;
    v59 = v8;
    v9 = swift_getOpaqueTypeConformance2();
    sub_26AE94BB0(v43, v39, v30, OpaqueTypeConformance2, v9, v50);
    v26(v43, v39);
    sub_26AFC1564(v50, v52);
    v26(v45, v39);
    v26(v47, v39);
  }

  else
  {
    memcpy(v69, __dst, sizeof(v69));
    sub_26AFBC99C(v36);
    v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDE98, &qword_26B08DE30);
    v10 = sub_26AFC1454();
    v67 = v17;
    v68 = v10;
    v18 = swift_getOpaqueTypeConformance2();
    sub_26AE9463C(v36, v30, v38);
    v19 = v31[1];
    v20 = v31 + 1;
    v19(v36, v30);
    v66 = v36;
    v15 = v31[2];
    v14[1] = v31 + 2;
    v15(v34, v38, v30);
    sub_26AE94B4C(v34, v30, v36);
    v19(v34, v30);
    v15(v34, v36, v30);
    v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDEA8, &qword_26B08DE38);
    v11 = sub_26AFC14DC();
    v64 = v16;
    v65 = v11;
    v12 = swift_getOpaqueTypeConformance2();
    sub_26AE94CA8(v34, v39, v30, v12, v18, v50);
    v19(v34, v30);
    sub_26AFC1564(v50, v52);
    v19(v36, v30);
    v19(v38, v30);
  }

  sub_26AFC1674(v52, v50);
  sub_26AFC1784();
  sub_26AE94B4C(v50, v48, v28);
  sub_26AFC18B8(v50);
  return sub_26AFC18B8(v52);
}

uint64_t sub_26AFBC054@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v38 = a1;
  v86 = 0;
  v85 = 0;
  v84 = 0;
  v42 = &v64;
  v64 = 0;
  v65 = 0;
  v40 = 0;
  updated = type metadata accessor for UpdateStatusView(0);
  v15 = (*(*(updated - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](updated);
  v51 = &v14 - v15;
  v16 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v14 - v15);
  v53 = &v14 - v16;
  v86 = &v14 - v16;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DB598, &qword_26B08FCF0);
  v17 = (*(*(v36 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v36);
  v37 = &v14 - v17;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE10, &qword_26B08DDE0);
  v18 = (*(*(v43 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v38);
  v52 = &v14 - v18;
  v19 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4);
  v54 = &v14 - v19;
  v85 = &v14 - v19;
  v84 = v5;
  v20 = *v5;

  KeyPath = swift_getKeyPath();
  ReactiveDescriptor.subscript.getter(KeyPath, v83);
  v21 = v83[0];
  v22 = v83[1];

  v23 = v82;
  v82[0] = v21;
  v82[1] = v22;
  sub_26AE95974();
  v78 = sub_26B0792E0();
  v79 = v6;
  v80 = v7;
  v81 = v8;
  v26 = v78;
  v27 = v6;
  v28 = v7;
  v29 = v8;

  v25 = *sub_26AFBC5A0();

  v74 = v26;
  v75 = v27;
  v34 = 1;
  v41 = 1;
  v76 = v28 & 1;
  v77 = v29;
  v70 = sub_26B0792A0();
  v71 = v9;
  v72 = v10;
  v73 = v11;
  v30 = v70;
  v31 = v9;
  v32 = v10;
  v33 = v11;

  sub_26AE95AFC(v26, v27, v28 & 1);

  v35 = v67;
  v67[0] = v30;
  v67[1] = v31;
  v68 = v32 & 1 & v41;
  v69 = v33;
  v66 = v34;
  View.suuiIdentifiable(_:)();
  sub_26AE95B40(v35);
  sub_26AE958D0();
  sub_26B079710();
  sub_26AE95B88(v37);
  v46 = sub_26AFC42EC();
  sub_26AE9463C(v52, v43, v54);
  sub_26AFC441C(v52);
  v39 = *v38;

  sub_26AFFA160(v39, v51);
  v47 = sub_26AFC44E8();
  sub_26AE9463C(v51, updated, v53);
  sub_26AFC4568(v51);
  v62 = sub_26B079970();
  v63 = v12 & 1 & v41;
  v45 = MEMORY[0x277CE1180];
  v48 = MEMORY[0x277CE1170];
  sub_26AE9463C(&v62, MEMORY[0x277CE1180], v42);
  sub_26AFC4618(v54, v52);
  v50 = v61;
  v61[0] = v52;
  sub_26AFC4778(v53, v51);
  v61[1] = v51;
  v59 = v64;
  v60 = v65;
  v61[2] = &v59;
  v58[0] = v43;
  v58[1] = updated;
  v58[2] = v45;
  v55 = v46;
  v56 = v47;
  v57 = v48;
  sub_26AFD49C4(v50, 3uLL, v58, v49);
  sub_26AFC4568(v51);
  sub_26AFC441C(v52);
  sub_26AFC4568(v53);
  return sub_26AFC441C(v54);
}

uint64_t *sub_26AFBC5A0()
{
  if (qword_2803DB470 != -1)
  {
    swift_once();
  }

  return &qword_2803DDD40;
}

uint64_t sub_26AFBC600@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v9 = sub_26AFC1998;
  v24 = MEMORY[0x277CDEAE8];
  v38 = 0;
  v20 = sub_26B0790A0();
  v17 = *(v20 - 8);
  v18 = v20 - 8;
  v4 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v20);
  v19 = &v4 - v4;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDD8, &qword_26B08DDA8);
  v25 = *(v31 - 8);
  v26 = v31 - 8;
  v5 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v31);
  v29 = &v4 - v5;
  v6 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v4 - v5);
  v30 = &v4 - v6;
  v38 = &v4 - v6;
  v13 = v39;
  v8 = 113;
  memcpy(v39, v2, 0x71uLL);
  memcpy(v40, v7, sizeof(v40));
  sub_26AFBDE64(v39, &v36);
  v10 = v34;
  v34[2] = v13;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDEC0, &qword_26B08DE40);
  v12 = sub_26AFC19A0();
  sub_26AF5C6C0();
  v14 = &v37;
  sub_26B0799A0();
  sub_26AFBE008(v13);
  v15 = __dst;
  v16 = 184;
  memcpy(__dst, v14, sizeof(__dst));
  v21 = v35;
  memcpy(v35, __dst, sizeof(v35));
  sub_26B079090();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDEA8, &qword_26B08DE38);
  v23 = sub_26AFC14DC();
  sub_26B079540();
  (*(v17 + 8))(v19, v20);
  sub_26AFC1A28(v21);
  v34[3] = v22;
  v34[4] = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_26AE9463C(v29, v31, v30);
  v33 = *(v25 + 8);
  v32 = v25 + 8;
  v33(v29, v31);
  (*(v25 + 16))(v29, v30, v31);
  sub_26AE94B4C(v29, v31, v27);
  v33(v29, v31);
  return (v33)(v30, v31);
}

uint64_t sub_26AFBC99C@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v10 = sub_26AFC1AF8;
  v22 = MEMORY[0x277CDEAE8];
  v35 = 0;
  v18 = sub_26B0790A0();
  v15 = *(v18 - 8);
  v16 = v18 - 8;
  v5 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v18);
  v17 = &v4 - v5;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDE0, &qword_26B08DDB0);
  v23 = *(v29 - 8);
  v24 = v29 - 8;
  v6 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v29);
  v27 = &v4 - v6;
  v7 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v4 - v6);
  v28 = &v4 - v7;
  v35 = &v4 - v7;
  v14 = v36;
  v9 = 113;
  memcpy(v36, v2, 0x71uLL);
  memcpy(__dst, v8, sizeof(__dst));
  sub_26AFBDE64(v36, v34);
  v11 = v32;
  v32[2] = v14;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDED0, &qword_26B08DE48);
  v13 = sub_26AFC1B00();
  sub_26AF5C6C0();
  sub_26B0799A0();
  sub_26AFBE008(v14);
  v19 = v33;
  v33[0] = v34[15];
  v33[1] = v34[16];
  v33[2] = v34[17];
  v33[3] = v34[18];
  v33[4] = v34[19];
  v33[5] = v34[20];
  sub_26B079090();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE98, &qword_26B08DE30);
  v21 = sub_26AFC1454();
  sub_26B079540();
  (*(v15 + 8))(v17, v18);
  sub_26AFC1B88();
  v32[4] = v20;
  v32[5] = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_26AE9463C(v27, v29, v28);
  v31 = *(v23 + 8);
  v30 = v23 + 8;
  v31(v27, v29);
  (*(v23 + 16))(v27, v28, v29);
  sub_26AE94B4C(v27, v29, v25);
  v31(v27, v29);
  return (v31)(v28, v29);
}

void sub_26AFBCD38(void *__src@<X0>, uint64_t a2@<X8>)
{
  v63[0] = 0;
  v63[1] = __src;
  memcpy(__dst, __src, sizeof(__dst));
  v5 = sub_26AFB9518();

  v61 = v5;
  v12 = MEMORY[0x277CE1088];
  sub_26AE9463C(&v61, MEMORY[0x277CE1088], v63);
  sub_26AF1FC54();
  memcpy(v54, __src, sizeof(v54));
  sub_26AFB9518();
  v6 = v2;

  v53 = v6;
  memcpy(v52, __src, sizeof(v52));
  sub_26AFB9C18();
  sub_26AFBD3A8();
  sub_26B0794B0();
  sub_26AF1FC54();
  v48 = v55;
  v49 = v56;
  v50 = v57;
  v51 = v58;
  sub_26AFBDE64(__src, v47);
  v7 = swift_allocObject();
  memcpy((v7 + 16), __src, 0x71uLL);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDEE0, &qword_26B08E1D8);
  sub_26AFC2174();
  sub_26B0796C0();
  sub_26AEB3258(sub_26AFC216C, v7);
  sub_26AFC2214();
  memcpy(v64, v59, sizeof(v64));
  memcpy(v46, v64, sizeof(v46));
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDEF0, &qword_26B08E1E0);
  sub_26AFC2240();
  sub_26AE9463C(v46, v14, v60);
  sub_26AFC22E4(v46);
  memcpy(v40, __src, sizeof(v40));
  sub_26AFB9518();
  v8 = v3;

  v39 = v8;
  memcpy(v38, __src, sizeof(v38));
  sub_26AFB9938();
  sub_26AFBD3A8();
  sub_26B0794B0();
  sub_26AF1FC54();
  v37[0] = v41;
  v37[1] = v42;
  v37[2] = v43;
  v37[3] = v44;
  sub_26AE9463C(v37, v13, v45);
  sub_26AFC2214();
  memcpy(v30, __src, sizeof(v30));
  sub_26AFB9518();
  v9 = v4;

  v29 = v9;
  memcpy(v28, __src, sizeof(v28));
  sub_26AFB9938();
  sub_26AFBD3A8();
  sub_26B0794B0();
  sub_26AF1FC54();
  v24 = v31;
  v25 = v32;
  v26 = v33;
  v27 = v34;
  sub_26AFBDE64(__src, v23);
  v11 = swift_allocObject();
  memcpy((v11 + 16), __src, 0x71uLL);
  sub_26B0796C0();
  sub_26AEB3258(sub_26AFC23EC, v11);
  sub_26AFC2214();
  memcpy(v65, v35, sizeof(v65));
  memcpy(v22, v65, sizeof(v22));
  sub_26AE9463C(v22, v14, v36);
  sub_26AFC22E4(v22);
  sub_26AFC2098(v63, &v20);
  v21[0] = &v20;
  sub_26AFC23F4(v60, v19);
  v21[1] = v19;
  sub_26AFC24EC(v45, v18);
  v21[2] = v18;
  sub_26AFC23F4(v36, v17);
  v21[3] = v17;
  v16[0] = v12;
  v16[1] = v14;
  v16[2] = v13;
  v16[3] = v14;
  sub_26AFD49C4(v21, 4uLL, v16, a2);
  sub_26AFC22E4(v17);
  sub_26AFC2214();
  sub_26AFC22E4(v19);
  sub_26AF1FC54();
  sub_26AFC22E4(v36);
  sub_26AFC2214();
  sub_26AFC22E4(v60);
  sub_26AF1FC54();
}

uint64_t sub_26AFBD3CC(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v5, __dst, sizeof(v5));
  sub_26B079B80();
  sub_26B079B50();

  sub_26AFBDE64(__src, v3);
  sub_26B078B20();
  sub_26AFBE008(__src);
}

uint64_t sub_26AFBD4D0(uint64_t *a1)
{
  v6 = a1;
  sub_26AFBDE64(a1, v5);
  memcpy(__dst, a1, 0x71uLL);
  sub_26B079730();
  sub_26AFB9C9C(v1);
  return sub_26AFBE008(__dst);
}

uint64_t sub_26AFBD54C(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v5, __dst, sizeof(v5));
  sub_26B079B80();
  sub_26B079B50();

  sub_26AFBDE64(__src, v3);
  sub_26B078B20();
  sub_26AFBE008(__src);
}

uint64_t sub_26AFBD644(uint64_t *a1)
{
  v6 = a1;
  sub_26AFBDE64(a1, v5);
  memcpy(__dst, a1, 0x71uLL);
  sub_26B079730();
  sub_26AFB99BC(v1);
  return sub_26AFBE008(__dst);
}

void sub_26AFBD6C0(void *__src@<X0>, uint64_t a2@<X8>)
{
  v29[0] = 0;
  v26 = 0;
  v23 = 0;
  v20 = 0;
  v29[1] = __src;
  memcpy(__dst, __src, sizeof(__dst));
  v5 = sub_26AFB9518();

  v27 = v5;
  v10 = MEMORY[0x277CE1088];
  sub_26AE9463C(&v27, MEMORY[0x277CE1088], v29);
  sub_26AF1FC54();
  memcpy(v25, __src, sizeof(v25));
  sub_26AFB9518();
  v6 = v2;

  v24 = v6;
  sub_26AE9463C(&v24, v10, &v26);
  sub_26AF1FC54();
  memcpy(v22, __src, sizeof(v22));
  sub_26AFB9518();
  v7 = v3;

  v21 = v7;
  sub_26AE9463C(&v21, v10, &v23);
  sub_26AF1FC54();
  memcpy(v19, __src, sizeof(v19));
  sub_26AFB9518();
  v9 = v4;

  v18 = v9;
  sub_26AE9463C(&v18, v10, &v20);
  sub_26AF1FC54();
  sub_26AFC2098(v29, &v16);
  v17[0] = &v16;
  sub_26AFC2098(&v26, &v15);
  v17[1] = &v15;
  sub_26AFC2098(&v23, &v14);
  v17[2] = &v14;
  sub_26AFC2098(&v20, &v13);
  v17[3] = &v13;
  v12[0] = v10;
  v12[1] = v10;
  v12[2] = v10;
  v12[3] = v10;
  sub_26AFD49C4(v17, 4uLL, v12, a2);
  sub_26AF1FC54();
  sub_26AF1FC54();
  sub_26AF1FC54();
  sub_26AF1FC54();
  sub_26AF1FC54();
  sub_26AF1FC54();
  sub_26AF1FC54();
  sub_26AF1FC54();
}

uint64_t sub_26AFBDA3C()
{
  result = sub_26B079230();
  qword_2803DDD40 = result;
  return result;
}

uint64_t sub_26AFBDA5C()
{
  v1 = *sub_26AFBC5A0();

  return v1;
}

uint64_t sub_26AFBDA8C()
{
  result = sub_26B079220();
  qword_2803DDD48 = result;
  return result;
}

uint64_t *sub_26AFBDAAC()
{
  if (qword_2803DB478 != -1)
  {
    swift_once();
  }

  return &qword_2803DDD48;
}

uint64_t sub_26AFBDB0C()
{
  v1 = *sub_26AFBDAAC();

  return v1;
}

uint64_t sub_26AFBDB3C()
{
  result = sub_26B079200();
  qword_2803DDD50 = result;
  return result;
}

uint64_t *sub_26AFBDB5C()
{
  if (qword_2803DB480 != -1)
  {
    swift_once();
  }

  return &qword_2803DDD50;
}

uint64_t sub_26AFBDBBC()
{
  v1 = *sub_26AFBDB5C();

  return v1;
}

id sub_26AFBDC5C(uint64_t a1, unint64_t a2)
{
  v4 = sub_26B0781C0();
  v7 = [v3 initWithData_];
  MEMORY[0x277D82BD8](v4);
  sub_26AE96418(a1, a2);
  return v7;
}

uint64_t sub_26AFBDCC8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v6 = a2;
  v4 = a1;
  v11 = sub_26B078D30();
  v9 = *(v11 - 8);
  v10 = v11 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v11);
  v8 = &v4 - v5;
  (*(v9 + 16))(&v4 - v5, v2);
  v7 = v12;
  sub_26AFE66BC(v12);
  memcpy(v6, v7, 0x110uLL);
  return (*(v9 + 8))(v8, v11);
}

void *sub_26AFBDDF8(void *a1)
{
  sub_26AFC4948(a1, v2);
  memcpy(__dst, v2, sizeof(__dst));
  return sub_26AFE67BC(__dst);
}

uint64_t sub_26AFBDE64(uint64_t *a1, uint64_t a2)
{
  v5 = *a1;

  *a2 = v5;
  v6 = a1[1];
  v7 = *(a1 + 16);

  *(a2 + 8) = v6;
  *(a2 + 16) = v7 & 1;
  v8 = a1[3];
  v9 = a1[4];
  v10 = a1[5];
  v11 = a1[6];
  v12 = *(a1 + 56);
  sub_26AFB9610(v8, v9, v10, v11, v12 & 1);
  *(a2 + 24) = v8;
  *(a2 + 32) = v9;
  *(a2 + 40) = v10;
  *(a2 + 48) = v11;
  *(a2 + 56) = v12 & 1;
  *(a2 + 64) = a1[8];
  v13 = a1[9];

  *(a2 + 72) = v13;
  *(a2 + 80) = a1[10];
  v16 = a1[11];

  *(a2 + 88) = v16;
  if (a1[13])
  {
    v3 = a1[12];

    *(a2 + 96) = v3;
    v4 = a1[13];

    *(a2 + 104) = v4;
  }

  else
  {
    *(a2 + 96) = *(a1 + 6);
  }

  *(a2 + 112) = *(a1 + 112);
  return a2;
}

uint64_t sub_26AFBE008(uint64_t a1)
{

  sub_26AFB9674(*(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56) & 1);

  if (*(a1 + 104))
  {
  }

  return a1;
}

unint64_t sub_26AFBE0AC()
{
  v2 = qword_2803DDD98;
  if (!qword_2803DDD98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDD90, &qword_26B08DD70);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DDD98);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AFBE134()
{
  v2 = qword_2803DDDA0;
  if (!qword_2803DDDA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDD70, &qword_26B08DD50);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DDDA0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AFBE1BC(uint64_t a1)
{
  v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDA8, &qword_26B08DD78) + 44);
  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDB0, &qword_26B08DD80) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDB8, &qword_26B08DD88);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDD0, &qword_26B08DDA0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDE0, &qword_26B08DDB0);
    }

    else
    {
      v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDD8, &qword_26B08DDA8);
    }

    (*(*(v2 - 8) + 8))(a1 + v23 + v24);
    v16 = a1 + v23 + v24;
    v15 = v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDE8, &qword_26B08DDB8) + 36);
    v17 = sub_26B079100();
    v18 = *(*(v17 - 8) + 8);
    v18(v15);
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDF0, &qword_26B08DDC0);
    (v18)(v16 + *(v3 + 36), v17);
  }

  else
  {
    v20 = a1 + v23 + v24;

    v19 = v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDC0, &qword_26B08DD90) + 36);
    v21 = sub_26B079100();
    v22 = *(*(v21 - 8) + 8);
    v22(v19);
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDC8, &qword_26B08DD98);
    (v22)(v20 + *(v1 + 36), v21);
  }

  v9 = a1 + v23 + v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDF8, &qword_26B08DDC8) + 48);
  v11 = v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDE00, &unk_26B08DDD0) + 44);
  sub_26AE95AFC(*v11, *(v11 + 8), *(v11 + 16) & 1);

  v10 = v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DB598, &qword_26B08FCF0) + 36);
  v4 = sub_26B079100();
  (*(*(v4 - 8) + 8))(v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE10, &qword_26B08DDE0);

  v12 = v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE18, &unk_26B08DDE8) + 48);
  sub_26AFBE774(*v12, *(v12 + 8), *(v12 + 16), *(v12 + 24), *(v12 + 32), *(v12 + 40) & 1);

  v13 = v12 + *(type metadata accessor for UpdateStatusView(0) + 24);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE20, &unk_26B08D230);
  (*(*(v5 - 8) + 8))(v13);
  v14 = a1 + v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDE28, &qword_26B08DDF8) + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCCE0, &qword_26B08DE00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_26B078E40();
    (*(*(v6 - 8) + 8))(v14);
  }

  else
  {
  }

  v8 = type metadata accessor for ReleaseNotesSummaryView(0);

  if (*(v14 + *(v8 + 24) + 8))
  {
  }

  return a1;
}

uint64_t sub_26AFBE774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
  }
}

unint64_t sub_26AFBE7E4()
{
  v2 = qword_2803DDE38;
  if (!qword_2803DDE38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDD78, &qword_26B08DD58);
    sub_26AFBE134();
    sub_26AFBE88C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DDE38);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AFBE88C()
{
  v2 = qword_2803DDE40;
  if (!qword_2803DDE40)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DDE40);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AFBE904(uint64_t a1)
{
  v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDA8, &qword_26B08DD78) + 44);
  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDB0, &qword_26B08DD80) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDB8, &qword_26B08DD88);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDD0, &qword_26B08DDA0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDE0, &qword_26B08DDB0);
    }

    else
    {
      v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDD8, &qword_26B08DDA8);
    }

    (*(*(v2 - 8) + 8))(a1 + v23 + v24);
    v16 = a1 + v23 + v24;
    v15 = v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDE8, &qword_26B08DDB8) + 36);
    v17 = sub_26B079100();
    v18 = *(*(v17 - 8) + 8);
    v18(v15);
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDF0, &qword_26B08DDC0);
    (v18)(v16 + *(v3 + 36), v17);
  }

  else
  {
    v20 = a1 + v23 + v24;

    v19 = v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDC0, &qword_26B08DD90) + 36);
    v21 = sub_26B079100();
    v22 = *(*(v21 - 8) + 8);
    v22(v19);
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDC8, &qword_26B08DD98);
    (v22)(v20 + *(v1 + 36), v21);
  }

  v9 = a1 + v23 + v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDF8, &qword_26B08DDC8) + 48);
  v11 = v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDE00, &unk_26B08DDD0) + 44);
  sub_26AE95AFC(*v11, *(v11 + 8), *(v11 + 16) & 1);

  v10 = v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DB598, &qword_26B08FCF0) + 36);
  v4 = sub_26B079100();
  (*(*(v4 - 8) + 8))(v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE10, &qword_26B08DDE0);

  v12 = v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE18, &unk_26B08DDE8) + 48);
  sub_26AFBE774(*v12, *(v12 + 8), *(v12 + 16), *(v12 + 24), *(v12 + 32), *(v12 + 40) & 1);

  v13 = v12 + *(type metadata accessor for UpdateStatusView(0) + 24);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE20, &unk_26B08D230);
  (*(*(v5 - 8) + 8))(v13);
  v14 = a1 + v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDE28, &qword_26B08DDF8) + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCCE0, &qword_26B08DE00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_26B078E40();
    (*(*(v6 - 8) + 8))(v14);
  }

  else
  {
  }

  v8 = type metadata accessor for ReleaseNotesSummaryView(0);

  if (*(v14 + *(v8 + 24) + 8))
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDD78, &qword_26B08DD58);

  swift_unknownObjectRelease();
  return a1;
}

unint64_t sub_26AFBEEF4()
{
  v2 = qword_2803DDE48;
  if (!qword_2803DDE48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDD80, &qword_26B08DD60);
    sub_26AFBE7E4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DDE48);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AFBEF98(uint64_t a1)
{
  v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDA8, &qword_26B08DD78) + 44);
  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDB0, &qword_26B08DD80) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDB8, &qword_26B08DD88);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDD0, &qword_26B08DDA0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDE0, &qword_26B08DDB0);
    }

    else
    {
      v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDD8, &qword_26B08DDA8);
    }

    (*(*(v2 - 8) + 8))(a1 + v23 + v24);
    v16 = a1 + v23 + v24;
    v15 = v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDE8, &qword_26B08DDB8) + 36);
    v17 = sub_26B079100();
    v18 = *(*(v17 - 8) + 8);
    v18(v15);
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDF0, &qword_26B08DDC0);
    (v18)(v16 + *(v3 + 36), v17);
  }

  else
  {
    v20 = a1 + v23 + v24;

    v19 = v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDC0, &qword_26B08DD90) + 36);
    v21 = sub_26B079100();
    v22 = *(*(v21 - 8) + 8);
    v22(v19);
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDC8, &qword_26B08DD98);
    (v22)(v20 + *(v1 + 36), v21);
  }

  v9 = a1 + v23 + v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDF8, &qword_26B08DDC8) + 48);
  v11 = v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDE00, &unk_26B08DDD0) + 44);
  sub_26AE95AFC(*v11, *(v11 + 8), *(v11 + 16) & 1);

  v10 = v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DB598, &qword_26B08FCF0) + 36);
  v4 = sub_26B079100();
  (*(*(v4 - 8) + 8))(v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE10, &qword_26B08DDE0);

  v12 = v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE18, &unk_26B08DDE8) + 48);
  sub_26AFBE774(*v12, *(v12 + 8), *(v12 + 16), *(v12 + 24), *(v12 + 32), *(v12 + 40) & 1);

  v13 = v12 + *(type metadata accessor for UpdateStatusView(0) + 24);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE20, &unk_26B08D230);
  (*(*(v5 - 8) + 8))(v13);
  v14 = a1 + v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDE28, &qword_26B08DDF8) + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCCE0, &qword_26B08DE00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_26B078E40();
    (*(*(v6 - 8) + 8))(v14);
  }

  else
  {
  }

  v8 = type metadata accessor for ReleaseNotesSummaryView(0);

  if (*(v14 + *(v8 + 24) + 8))
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDD78, &qword_26B08DD58);

  swift_unknownObjectRelease();
  return a1;
}

unint64_t sub_26AFBF588()
{
  v2 = qword_2803DDE50;
  if (!qword_2803DDE50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDD88, &qword_26B08DD68);
    sub_26AFBEEF4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DDE50);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AFBF62C(uint64_t a1)
{
  v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDA8, &qword_26B08DD78) + 44);
  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDB0, &qword_26B08DD80) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDB8, &qword_26B08DD88);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDD0, &qword_26B08DDA0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDE0, &qword_26B08DDB0);
    }

    else
    {
      v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDD8, &qword_26B08DDA8);
    }

    (*(*(v2 - 8) + 8))(a1 + v23 + v24);
    v16 = a1 + v23 + v24;
    v15 = v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDE8, &qword_26B08DDB8) + 36);
    v17 = sub_26B079100();
    v18 = *(*(v17 - 8) + 8);
    v18(v15);
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDF0, &qword_26B08DDC0);
    (v18)(v16 + *(v3 + 36), v17);
  }

  else
  {
    v20 = a1 + v23 + v24;

    v19 = v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDC0, &qword_26B08DD90) + 36);
    v21 = sub_26B079100();
    v22 = *(*(v21 - 8) + 8);
    v22(v19);
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDC8, &qword_26B08DD98);
    (v22)(v20 + *(v1 + 36), v21);
  }

  v9 = a1 + v23 + v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDF8, &qword_26B08DDC8) + 48);
  v11 = v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDE00, &unk_26B08DDD0) + 44);
  sub_26AE95AFC(*v11, *(v11 + 8), *(v11 + 16) & 1);

  v10 = v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DB598, &qword_26B08FCF0) + 36);
  v4 = sub_26B079100();
  (*(*(v4 - 8) + 8))(v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE10, &qword_26B08DDE0);

  v12 = v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE18, &unk_26B08DDE8) + 48);
  sub_26AFBE774(*v12, *(v12 + 8), *(v12 + 16), *(v12 + 24), *(v12 + 32), *(v12 + 40) & 1);

  v13 = v12 + *(type metadata accessor for UpdateStatusView(0) + 24);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE20, &unk_26B08D230);
  (*(*(v5 - 8) + 8))(v13);
  v14 = a1 + v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDE28, &qword_26B08DDF8) + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCCE0, &qword_26B08DE00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_26B078E40();
    (*(*(v6 - 8) + 8))(v14);
  }

  else
  {
  }

  v8 = type metadata accessor for ReleaseNotesSummaryView(0);

  if (*(v14 + *(v8 + 24) + 8))
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDD78, &qword_26B08DD58);

  swift_unknownObjectRelease();
  return a1;
}

uint64_t sub_26AFBFC1C(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v83 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDA8, &qword_26B08DD78) + 44);
  v2 = a2 + v83;
  *v2 = *(a1 + v83);
  *(v2 + 16) = *(a1 + v83 + 16);
  v84 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDB0, &qword_26B08DD80) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDB8, &qword_26B08DD88);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDD0, &qword_26B08DDA0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDE0, &qword_26B08DDB0);
    }

    else
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDD8, &qword_26B08DDA8);
    }

    (*(*(v6 - 8) + 16))();
    swift_storeEnumTagMultiPayload();
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDE8, &qword_26B08DDB8);
    v73 = a2 + v83 + v84;
    v69 = v73 + *(v7 + 36);
    v70 = a1 + v83 + v84;
    v68 = v70 + *(v7 + 36);
    v71 = sub_26B079100();
    v72 = *(*(v71 - 8) + 16);
    v72(v69, v68);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDF0, &qword_26B08DDC0);
    (v72)(v73 + *(v8 + 36), v70 + *(v8 + 36), v71);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v79 = (a1 + v83 + v84);
    v74 = *v79;

    v80 = (a2 + v83 + v84);
    *v80 = v74;
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDC0, &qword_26B08DD90);
    v76 = v80 + *(v3 + 36);
    v75 = v79 + *(v3 + 36);
    v77 = sub_26B079100();
    v78 = *(*(v77 - 8) + 16);
    v78(v76, v75);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDC8, &qword_26B08DD98);
    (v78)(v80 + *(v4 + 36), v79 + *(v4 + 36), v77);
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE58, &qword_26B08DE08);
    memcpy(v80 + *(v5 + 36), v79 + *(v5 + 36), 0x30uLL);
    swift_storeEnumTagMultiPayload();
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDF8, &qword_26B08DDC8);
  v64 = a2 + v83 + v84 + *(v9 + 48);
  v65 = a1 + v83 + v84 + *(v9 + 48);
  *v64 = *v65;
  *(v64 + 16) = *(v65 + 16);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDE00, &unk_26B08DDD0);
  v61 = v64 + *(v10 + 44);
  v62 = v65 + *(v10 + 44);
  v40 = *v62;
  v41 = *(v62 + 8);
  v42 = *(v62 + 16);
  sub_26AE95D28(*v62, v41, v42 & 1);
  *v61 = v40;
  *(v61 + 8) = v41;
  *(v61 + 16) = v42 & 1;
  v43 = *(v62 + 24);
  sub_26B078640();
  *(v61 + 24) = v43;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DB598, &qword_26B08FCF0);
  v45 = v61 + *(v11 + 36);
  v44 = v62 + *(v11 + 36);
  v12 = sub_26B079100();
  (*(*(v12 - 8) + 16))(v45, v44);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE10, &qword_26B08DDE0);
  v48 = v61 + *(v13 + 36);
  v47 = v62 + *(v13 + 36);
  v46 = *v47;

  *v48 = v46;
  *(v48 + 8) = *(v47 + 8);
  *(v48 + 16) = *(v47 + 16);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE18, &unk_26B08DDE8);
  v57 = v61 + *(v63 + 48);
  v58 = v62 + *(v63 + 48);
  v49 = *v58;
  v50 = *(v58 + 8);
  v51 = *(v58 + 16);
  v52 = *(v58 + 24);
  v53 = *(v58 + 32);
  v54 = *(v58 + 40);
  sub_26AFC0708(*v58, v50, v51, v52, v53, v54 & 1);
  *v57 = v49;
  *(v57 + 8) = v50;
  *(v57 + 16) = v51;
  *(v57 + 24) = v52;
  *(v57 + 32) = v53;
  *(v57 + 40) = v54 & 1;
  v55 = *(v58 + 48);
  v56 = *(v58 + 56);

  *(v57 + 48) = v55;
  *(v57 + 56) = v56 & 1;
  updated = type metadata accessor for UpdateStatusView(HIDWORD(v54));
  v60 = v57 + *(updated + 24);
  v59 = v58 + *(updated + 24);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE20, &unk_26B08D230);
  (*(*(v15 - 8) + 16))(v60, v59);
  v16 = v61 + *(v63 + 64);
  v17 = v62 + *(v63 + 64);
  *v16 = *v17;
  *(v16 + 8) = *(v17 + 8);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE60, &qword_26B08DE10);
  memcpy((v64 + *(v18 + 36)), (v65 + *(v18 + 36)), 0x70uLL);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDE28, &qword_26B08DDF8);
  v66 = (a2 + v83 + *(v19 + 48));
  v67 = (a1 + v83 + *(v19 + 48));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCCE0, &qword_26B08DE00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = sub_26B078E40();
    (*(*(v20 - 8) + 16))(v66, v67);
  }

  else
  {
    v39 = *v67;

    *v66 = v39;
  }

  swift_storeEnumTagMultiPayload();
  v34 = type metadata accessor for ReleaseNotesSummaryView(0);
  v35 = v66 + v34[5];
  v21 = v67 + v34[5];
  *v35 = *v21;
  v36 = *(v21 + 1);

  *(v35 + 1) = v36;
  v37 = v66 + v34[6];
  v38 = v67 + v34[6];
  if (*(v38 + 1))
  {
    v32 = *v38;

    *v37 = v32;
    v33 = *(v38 + 1);

    *(v37 + 1) = v33;
  }

  else
  {
    *v37 = *v38;
  }

  v37[16] = v38[16];
  v26 = v34[7];
  v27 = *(v67 + v26);

  *(v66 + v26) = v27;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDD78, &qword_26B08DD58);
  v30 = (a2 + *(v22 + 36));
  v29 = (a1 + *(v22 + 36));
  v28 = *v29;

  *v30 = v28;
  v31 = v29[1];
  swift_unknownObjectRetain();
  v30[1] = v31;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDD80, &qword_26B08DD60);
  memcpy((a2 + *(v23 + 36)), (a1 + *(v23 + 36)), 0x29uLL);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDD88, &qword_26B08DD68);
  memcpy((a2 + *(v24 + 36)), (a1 + *(v24 + 36)), 0x29uLL);
  return a2;
}

uint64_t sub_26AFC0708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
  }
}

unint64_t sub_26AFC0780()
{
  v2 = qword_2803DDE78;
  if (!qword_2803DDE78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDE70, &qword_26B08DE20);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DDE78);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AFC0808()
{
  v2 = qword_2803DDE80;
  if (!qword_2803DDE80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDE68, &qword_26B08DE18);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DDE80);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AFC0890(uint64_t a1)
{
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDB0, &qword_26B08DD80) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDB8, &qword_26B08DD88);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDD0, &qword_26B08DDA0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDE0, &qword_26B08DDB0);
    }

    else
    {
      v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDD8, &qword_26B08DDA8);
    }

    (*(*(v2 - 8) + 8))(a1 + v18);
    v12 = a1 + v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDE8, &qword_26B08DDB8) + 36);
    v13 = sub_26B079100();
    v14 = *(*(v13 - 8) + 8);
    v14(v12);
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDF0, &qword_26B08DDC0);
    (v14)(a1 + v18 + *(v3 + 36), v13);
  }

  else
  {

    v15 = a1 + v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDC0, &qword_26B08DD90) + 36);
    v16 = sub_26B079100();
    v17 = *(*(v16 - 8) + 8);
    v17(v15);
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDC8, &qword_26B08DD98);
    (v17)(a1 + v18 + *(v1 + 36), v16);
  }

  v7 = a1 + v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDF8, &qword_26B08DDC8) + 48);
  v9 = v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDE00, &unk_26B08DDD0) + 44);
  sub_26AE95AFC(*v9, *(v9 + 8), *(v9 + 16) & 1);

  v8 = v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DB598, &qword_26B08FCF0) + 36);
  v4 = sub_26B079100();
  (*(*(v4 - 8) + 8))(v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE10, &qword_26B08DDE0);

  v10 = v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE18, &unk_26B08DDE8) + 48);
  sub_26AFBE774(*v10, *(v10 + 8), *(v10 + 16), *(v10 + 24), *(v10 + 32), *(v10 + 40) & 1);

  v11 = v10 + *(type metadata accessor for UpdateStatusView(0) + 24);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE20, &unk_26B08D230);
  (*(*(v5 - 8) + 8))(v11);
  return a1;
}

uint64_t sub_26AFC0CE4(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v55 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDB0, &qword_26B08DD80) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDB8, &qword_26B08DD88);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDD0, &qword_26B08DDA0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDE0, &qword_26B08DDB0);
    }

    else
    {
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDD8, &qword_26B08DDA8);
    }

    (*(*(v5 - 8) + 16))();
    swift_storeEnumTagMultiPayload();
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDE8, &qword_26B08DDB8);
    v46 = a2 + v55 + *(v6 + 36);
    v45 = a1 + v55 + *(v6 + 36);
    v47 = sub_26B079100();
    v48 = *(*(v47 - 8) + 16);
    v48(v46, v45);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDF0, &qword_26B08DDC0);
    (v48)(a2 + v55 + *(v7 + 36), a1 + v55 + *(v7 + 36), v47);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v49 = *(a1 + v55);

    *(a2 + v55) = v49;
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDC0, &qword_26B08DD90);
    v51 = a2 + v55 + *(v2 + 36);
    v50 = a1 + v55 + *(v2 + 36);
    v52 = sub_26B079100();
    v53 = *(*(v52 - 8) + 16);
    v53(v51, v50);
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDC8, &qword_26B08DD98);
    (v53)(a2 + v55 + *(v3 + 36), a1 + v55 + *(v3 + 36), v52);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE58, &qword_26B08DE08);
    memcpy((a2 + v55 + *(v4 + 36)), (a1 + v55 + *(v4 + 36)), 0x30uLL);
    swift_storeEnumTagMultiPayload();
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDF8, &qword_26B08DDC8);
  v43 = a2 + v55 + *(v8 + 48);
  v44 = a1 + v55 + *(v8 + 48);
  *v43 = *v44;
  *(v43 + 16) = *(v44 + 16);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDE00, &unk_26B08DDD0);
  v40 = v43 + *(v9 + 44);
  v41 = v44 + *(v9 + 44);
  v19 = *v41;
  v20 = *(v41 + 8);
  v21 = *(v41 + 16);
  sub_26AE95D28(*v41, v20, v21 & 1);
  *v40 = v19;
  *(v40 + 8) = v20;
  *(v40 + 16) = v21 & 1;
  v22 = *(v41 + 24);
  sub_26B078640();
  *(v40 + 24) = v22;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DB598, &qword_26B08FCF0);
  v24 = v40 + *(v10 + 36);
  v23 = v41 + *(v10 + 36);
  v11 = sub_26B079100();
  (*(*(v11 - 8) + 16))(v24, v23);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE10, &qword_26B08DDE0);
  v27 = v40 + *(v12 + 36);
  v26 = v41 + *(v12 + 36);
  v25 = *v26;

  *v27 = v25;
  *(v27 + 8) = *(v26 + 8);
  *(v27 + 16) = *(v26 + 16);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE18, &unk_26B08DDE8);
  v36 = v40 + *(v42 + 48);
  v37 = v41 + *(v42 + 48);
  v28 = *v37;
  v29 = *(v37 + 8);
  v30 = *(v37 + 16);
  v31 = *(v37 + 24);
  v32 = *(v37 + 32);
  v33 = *(v37 + 40);
  sub_26AFC0708(*v37, v29, v30, v31, v32, v33 & 1);
  *v36 = v28;
  *(v36 + 8) = v29;
  *(v36 + 16) = v30;
  *(v36 + 24) = v31;
  *(v36 + 32) = v32;
  *(v36 + 40) = v33 & 1;
  v34 = *(v37 + 48);
  v35 = *(v37 + 56);

  *(v36 + 48) = v34;
  *(v36 + 56) = v35 & 1;
  updated = type metadata accessor for UpdateStatusView(HIDWORD(v33));
  v39 = v36 + *(updated + 24);
  v38 = v37 + *(updated + 24);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE20, &unk_26B08D230);
  (*(*(v14 - 8) + 16))(v39, v38);
  v15 = v40 + *(v42 + 64);
  v16 = v41 + *(v42 + 64);
  *v15 = *v16;
  *(v15 + 8) = *(v16 + 8);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE60, &qword_26B08DE10);
  memcpy((v43 + *(v17 + 36)), (v44 + *(v17 + 36)), 0x70uLL);
  return a2;
}

unint64_t sub_26AFC1454()
{
  v2 = qword_2803DDEA0;
  if (!qword_2803DDEA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDE98, &qword_26B08DE30);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DDEA0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AFC14DC()
{
  v2 = qword_2803DDEB0;
  if (!qword_2803DDEB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDEA8, &qword_26B08DE38);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DDEB0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AFC1564(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDD0, &qword_26B08DDA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDE0, &qword_26B08DDB0);
  }

  else
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDD8, &qword_26B08DDA8);
  }

  (*(*(v2 - 8) + 32))(a2, a1);
  swift_storeEnumTagMultiPayload();
  return a2;
}

uint64_t sub_26AFC1674(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDD0, &qword_26B08DDA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDE0, &qword_26B08DDB0);
  }

  else
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDD8, &qword_26B08DDA8);
  }

  (*(*(v2 - 8) + 16))(a2, a1);
  swift_storeEnumTagMultiPayload();
  return a2;
}

unint64_t sub_26AFC1784()
{
  v2 = qword_2803DDEB8;
  if (!qword_2803DDEB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2803DDE88, &qword_26B08DE28);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDEA8, &qword_26B08DE38);
    sub_26AFC14DC();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDE98, &qword_26B08DE30);
    sub_26AFC1454();
    swift_getOpaqueTypeConformance2();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DDEB8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AFC18B8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDD0, &qword_26B08DDA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDE0, &qword_26B08DDB0);
  }

  else
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDD8, &qword_26B08DDA8);
  }

  (*(*(v1 - 8) + 8))(a1);
  return a1;
}

unint64_t sub_26AFC19A0()
{
  v2 = qword_2803DDEC8;
  if (!qword_2803DDEC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDEC0, &qword_26B08DE40);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DDEC8);
    return WitnessTable;
  }

  return v2;
}

void *sub_26AFC1A28(void *a1)
{

  if (a1[7])
  {
  }

  if (a1[9])
  {
  }

  if (a1[19])
  {
  }

  if (a1[21])
  {
  }

  return a1;
}

unint64_t sub_26AFC1B00()
{
  v2 = qword_2803DDED8;
  if (!qword_2803DDED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDED0, &qword_26B08DE48);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DDED8);
    return WitnessTable;
  }

  return v2;
}

void sub_26AFC1B88()
{
}

uint64_t sub_26AFC1C48(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 113))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*a1))
      {
        v3 = *a1;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_26AFC1D60(uint64_t result, int a2, int a3)
{
  v3 = (result + 113);
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 80) = 0;
    *(result + 72) = 0;
    *(result + 64) = 0;
    *(result + 104) = 0;
    *(result + 96) = 0;
    *(result + 56) = 0;
    *(result + 48) = 0;
    *(result + 40) = 0;
    *(result + 32) = 0;
    *(result + 24) = 0;
    *(result + 16) = 0;
    *(result + 8) = 0;
    *result = a2 + 0x80000000;
    *(result + 112) = 0;
    if (a3 < 0)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 < 0)
    {
      *v3 = 0;
    }

    if (a2)
    {
      *result = (a2 - 1);
    }
  }

  return result;
}

uint64_t sub_26AFC1FB8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDEA8, &qword_26B08DE38);
  sub_26AFC14DC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_26AFC2028()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDE98, &qword_26B08DE30);
  sub_26AFC1454();
  return swift_getOpaqueTypeConformance2();
}

void *sub_26AFC2098(uint64_t *a1, void *a2)
{
  v4 = *a1;

  result = a2;
  *a2 = v4;
  return result;
}

uint64_t sub_26AFC20D0()
{

  sub_26AFB9674(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72) & 1);

  if (*(v0 + 120))
  {
  }

  return swift_deallocObject();
}

unint64_t sub_26AFC2174()
{
  v2 = qword_2803DDEE8;
  if (!qword_2803DDEE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDEE0, &qword_26B08E1D8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DDEE8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AFC2240()
{
  v2 = qword_2803DDEF8;
  if (!qword_2803DDEF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDEF0, &qword_26B08E1E0);
    sub_26AFC2174();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DDEF8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AFC22E4(uint64_t a1)
{

  if (*(a1 + 32))
  {
  }

  if (*(a1 + 48))
  {
  }

  return a1;
}

uint64_t sub_26AFC2350()
{

  sub_26AFB9674(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72) & 1);

  if (*(v0 + 120))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_26AFC23F4(uint64_t *a1, uint64_t a2)
{
  v8 = *a1;

  *a2 = v8;
  *(a2 + 8) = *(a1 + 1);
  *(a2 + 24) = a1[3];
  if (a1[4])
  {
    v5 = a1[4];
    v6 = a1[5];

    *(a2 + 32) = v5;
    *(a2 + 40) = v6;
  }

  else
  {
    *(a2 + 32) = *(a1 + 2);
  }

  if (a1[6])
  {
    v3 = a1[6];
    v4 = a1[7];

    *(a2 + 48) = v3;
    *(a2 + 56) = v4;
  }

  else
  {
    *(a2 + 48) = *(a1 + 3);
  }

  return a2;
}

__n128 sub_26AFC24EC(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;

  *a2 = v4;
  result = *(a1 + 1);
  *(a2 + 8) = result;
  *(a2 + 24) = a1[3];
  return result;
}

unint64_t sub_26AFC25A4()
{
  v2 = qword_2803DDF10;
  if (!qword_2803DDF10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDDE8, &qword_26B08DDB8);
    sub_26AFC1784();
    sub_26AE95850();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DDF10);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AFC264C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDD0, &qword_26B08DDA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDE0, &qword_26B08DDB0);
  }

  else
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDD8, &qword_26B08DDA8);
  }

  (*(*(v1 - 8) + 8))(a1);
  v4 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDE8, &qword_26B08DDB8) + 36);
  v2 = sub_26B079100();
  (*(*(v2 - 8) + 8))(v4);
  return a1;
}

unint64_t sub_26AFC2788()
{
  v2 = qword_2803DDF20;
  if (!qword_2803DDF20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDDF0, &qword_26B08DDC0);
    sub_26AFC25A4();
    sub_26AE95850();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DDF20);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AFC2830(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDD0, &qword_26B08DDA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDE0, &qword_26B08DDB0);
  }

  else
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDD8, &qword_26B08DDA8);
  }

  (*(*(v1 - 8) + 8))(a1);
  v4 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDE8, &qword_26B08DDB8) + 36);
  v5 = sub_26B079100();
  v6 = *(*(v5 - 8) + 8);
  (v6)(v4);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDF0, &qword_26B08DDC0);
  v6(a1 + *(v2 + 36), v5);
  return a1;
}

uint64_t sub_26AFC29B0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDD0, &qword_26B08DDA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDE0, &qword_26B08DDB0);
  }

  else
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDD8, &qword_26B08DDA8);
  }

  (*(*(v2 - 8) + 16))(a2, a1);
  swift_storeEnumTagMultiPayload();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDE8, &qword_26B08DDB8);
  v7 = a2 + *(v3 + 36);
  v6 = a1 + *(v3 + 36);
  v8 = sub_26B079100();
  v9 = *(*(v8 - 8) + 16);
  (v9)(v7, v6);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDF0, &qword_26B08DDC0);
  v9(a2 + *(v4 + 36), a1 + *(v4 + 36), v8);
  return a2;
}

unint64_t sub_26AFC2B84()
{
  v2 = qword_2803DDF28;
  if (!qword_2803DDF28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDE58, &qword_26B08DE08);
    sub_26AFC2C28();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DDF28);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AFC2C28()
{
  v2 = qword_2803DDF30;
  if (!qword_2803DDF30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDDC8, &qword_26B08DD98);
    sub_26AFC2CD0();
    sub_26AE95850();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DDF30);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AFC2CD0()
{
  v2 = qword_2803DDF38;
  if (!qword_2803DDF38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDDC0, &qword_26B08DD90);
    sub_26AE95850();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DDF38);
    return WitnessTable;
  }

  return v2;
}

void *sub_26AFC2D74(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDB8, &qword_26B08DD88);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDD0, &qword_26B08DDA0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDE0, &qword_26B08DDB0);
    }

    else
    {
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDD8, &qword_26B08DDA8);
    }

    (*(*(v5 - 8) + 32))(a2, a1);
    swift_storeEnumTagMultiPayload();
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDE8, &qword_26B08DDB8);
    v10 = a2 + *(v6 + 36);
    v9 = a1 + *(v6 + 36);
    v11 = sub_26B079100();
    v12 = *(*(v11 - 8) + 32);
    v12(v10, v9);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDF0, &qword_26B08DDC0);
    (v12)(a2 + *(v7 + 36), a1 + *(v7 + 36), v11);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    *a2 = *a1;
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDC0, &qword_26B08DD90);
    v14 = a2 + *(v2 + 36);
    v13 = a1 + *(v2 + 36);
    v15 = sub_26B079100();
    v16 = *(*(v15 - 8) + 32);
    v16(v14, v13);
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDC8, &qword_26B08DD98);
    (v16)(a2 + *(v3 + 36), a1 + *(v3 + 36), v15);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE58, &qword_26B08DE08);
    memcpy(a2 + *(v4 + 36), a1 + *(v4 + 36), 0x30uLL);
    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

unint64_t sub_26AFC30B8()
{
  v2 = qword_2803DDF48;
  if (!qword_2803DDF48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDF40, qword_26B08E230);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DDF48);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AFC3140()
{
  v2 = qword_2803DDF50;
  if (!qword_2803DDF50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDF00, &qword_26B08E1E8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DDF50);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AFC31C8(uint64_t a1)
{
  v5 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDE00, &unk_26B08DDD0) + 44);
  sub_26AE95AFC(*v5, *(v5 + 8), *(v5 + 16) & 1);

  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DB598, &qword_26B08FCF0) + 36);
  v1 = sub_26B079100();
  (*(*(v1 - 8) + 8))(v5 + v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE10, &qword_26B08DDE0);

  v6 = v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE18, &unk_26B08DDE8) + 48);
  sub_26AFBE774(*v6, *(v6 + 8), *(v6 + 16), *(v6 + 24), *(v6 + 32), *(v6 + 40) & 1);

  v7 = *(type metadata accessor for UpdateStatusView(0) + 24);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE20, &unk_26B08D230);
  (*(*(v2 - 8) + 8))(v6 + v7);
  return a1;
}

unint64_t sub_26AFC3364()
{
  v2 = qword_2803DDF58;
  if (!qword_2803DDF58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDE60, &qword_26B08DE10);
    sub_26AFC3140();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DDF58);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AFC3408(uint64_t a1)
{
  v5 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDE00, &unk_26B08DDD0) + 44);
  sub_26AE95AFC(*v5, *(v5 + 8), *(v5 + 16) & 1);

  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DB598, &qword_26B08FCF0) + 36);
  v1 = sub_26B079100();
  (*(*(v1 - 8) + 8))(v5 + v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE10, &qword_26B08DDE0);

  v6 = v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE18, &unk_26B08DDE8) + 48);
  sub_26AFBE774(*v6, *(v6 + 8), *(v6 + 16), *(v6 + 24), *(v6 + 32), *(v6 + 40) & 1);

  v7 = *(type metadata accessor for UpdateStatusView(0) + 24);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE20, &unk_26B08D230);
  (*(*(v2 - 8) + 8))(v6 + v7);
  return a1;
}

void *sub_26AFC35A4(uint64_t *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDB8, &qword_26B08DD88);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDD0, &qword_26B08DDA0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDE0, &qword_26B08DDB0);
    }

    else
    {
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDD8, &qword_26B08DDA8);
    }

    (*(*(v5 - 8) + 16))(a2, a1);
    swift_storeEnumTagMultiPayload();
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDE8, &qword_26B08DDB8);
    v10 = a2 + *(v6 + 36);
    v9 = a1 + *(v6 + 36);
    v11 = sub_26B079100();
    v12 = *(*(v11 - 8) + 16);
    v12(v10, v9);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDF0, &qword_26B08DDC0);
    (v12)(a2 + *(v7 + 36), a1 + *(v7 + 36), v11);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v13 = *a1;

    *a2 = v13;
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDC0, &qword_26B08DD90);
    v15 = a2 + *(v2 + 36);
    v14 = a1 + *(v2 + 36);
    v16 = sub_26B079100();
    v17 = *(*(v16 - 8) + 16);
    v17(v15, v14);
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDC8, &qword_26B08DD98);
    (v17)(a2 + *(v3 + 36), a1 + *(v3 + 36), v16);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE58, &qword_26B08DE08);
    memcpy(a2 + *(v4 + 36), a1 + *(v4 + 36), 0x30uLL);
    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

uint64_t sub_26AFC38EC(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDE00, &unk_26B08DDD0) + 44);
  v10 = *(a1 + v9);
  v11 = *(a1 + v9 + 8);
  v12 = *(a1 + v9 + 16);
  sub_26AE95D28(v10, v11, v12 & 1);
  v30 = a2 + v9;
  *v30 = v10;
  *(v30 + 8) = v11;
  *(v30 + 16) = v12 & 1;
  v13 = *(a1 + v9 + 24);
  sub_26B078640();
  *(v30 + 24) = v13;
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DB598, &qword_26B08FCF0) + 36);
  v2 = sub_26B079100();
  (*(*(v2 - 8) + 16))(a2 + v9 + v14, a1 + v9 + v14);
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE10, &qword_26B08DDE0) + 36);
  v17 = (a1 + v9 + v15);
  v16 = *v17;

  v3 = a2 + v9 + v15;
  *v3 = v16;
  *(v3 + 8) = v17[1];
  *(v3 + 16) = *(v17 + 16);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE18, &unk_26B08DDE8);
  v18 = *(v31 + 48);
  v29 = a1 + v9 + v18;
  v19 = *v29;
  v20 = *(v29 + 8);
  v21 = *(v29 + 16);
  v22 = *(v29 + 24);
  v23 = *(v29 + 32);
  v24 = *(v29 + 40);
  sub_26AFC0708(*v29, v20, v21, v22, v23, v24 & 1);
  v27 = a2 + v9 + v18;
  *v27 = v19;
  *(v27 + 8) = v20;
  *(v27 + 16) = v21;
  *(v27 + 24) = v22;
  *(v27 + 32) = v23;
  *(v27 + 40) = v24 & 1;
  v25 = *(v29 + 48);
  v26 = *(v29 + 56);

  *(v27 + 48) = v25;
  *(v27 + 56) = v26 & 1;
  v28 = *(type metadata accessor for UpdateStatusView(HIDWORD(v24)) + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE20, &unk_26B08D230);
  (*(*(v4 - 8) + 16))(v27 + v28, v29 + v28);
  v5 = *(v31 + 64);
  v6 = a2 + v9 + v5;
  *v6 = *(a1 + v9 + v5);
  *(v6 + 8) = *(a1 + v9 + v5 + 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE60, &qword_26B08DE10);
  memcpy((a2 + *(v7 + 36)), (a1 + *(v7 + 36)), 0x70uLL);
  return a2;
}

unint64_t sub_26AFC3C68()
{
  v2 = qword_2803DDF60;
  if (!qword_2803DDF60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDF08, qword_26B08E1F0);
    sub_26AFC2B84();
    sub_26AFC2788();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DDF60);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AFC3D10(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDB8, &qword_26B08DD88);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDD0, &qword_26B08DDA0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDE0, &qword_26B08DDB0);
    }

    else
    {
      v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDD8, &qword_26B08DDA8);
    }

    (*(*(v2 - 8) + 8))(a1);
    v5 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDE8, &qword_26B08DDB8) + 36);
    v6 = sub_26B079100();
    v7 = *(*(v6 - 8) + 8);
    (v7)(v5);
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDF0, &qword_26B08DDC0);
    v7(a1 + *(v3 + 36), v6);
  }

  else
  {

    v8 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDC0, &qword_26B08DD90) + 36);
    v9 = sub_26B079100();
    v10 = *(*(v9 - 8) + 8);
    (v10)(v8);
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDC8, &qword_26B08DD98);
    v10(a1 + *(v1 + 36), v9);
  }

  return a1;
}

uint64_t sub_26AFC3F70(uint64_t a1)
{

  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDC0, &qword_26B08DD90) + 36);
  v1 = sub_26B079100();
  (*(*(v1 - 8) + 8))(a1 + v3);
  return a1;
}

uint64_t sub_26AFC3FF8(uint64_t a1)
{

  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDC0, &qword_26B08DD90) + 36);
  v4 = sub_26B079100();
  v5 = *(*(v4 - 8) + 8);
  v5(a1 + v3);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDC8, &qword_26B08DD98);
  (v5)(a1 + *(v1 + 36), v4);
  return a1;
}

uint64_t sub_26AFC40C8(uint64_t a1)
{

  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDC0, &qword_26B08DD90) + 36);
  v4 = sub_26B079100();
  v5 = *(*(v4 - 8) + 8);
  v5(a1 + v3);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDC8, &qword_26B08DD98);
  (v5)(a1 + *(v1 + 36), v4);
  return a1;
}

char *sub_26AFC4198(char *a1, char *a2)
{
  v5 = *a1;

  *a2 = v5;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDC0, &qword_26B08DD90) + 36);
  v7 = sub_26B079100();
  v8 = *(*(v7 - 8) + 16);
  v8(&a2[v6], &a1[v6]);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDC8, &qword_26B08DD98);
  (v8)(&a2[*(v2 + 36)], &a1[*(v2 + 36)], v7);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE58, &qword_26B08DE08);
  memcpy(&a2[*(v3 + 36)], &a1[*(v3 + 36)], 0x30uLL);
  return a2;
}

unint64_t sub_26AFC42EC()
{
  v2 = qword_2803DDF70;
  if (!qword_2803DDF70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDE10, &qword_26B08DDE0);
    sub_26AE958D0();
    sub_26AFC4394();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DDF70);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AFC4394()
{
  v2 = qword_2803DE660;
  if (!qword_2803DE660)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDF80, &unk_26B08E270);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE660);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AFC441C(uint64_t a1)
{
  sub_26AE95AFC(*a1, *(a1 + 8), *(a1 + 16) & 1);

  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DB598, &qword_26B08FCF0) + 36);
  v1 = sub_26B079100();
  (*(*(v1 - 8) + 8))(a1 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE10, &qword_26B08DDE0);

  return a1;
}

unint64_t sub_26AFC44E8()
{
  v2 = qword_2803DDF88;
  if (!qword_2803DDF88)
  {
    type metadata accessor for UpdateStatusView(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DDF88);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AFC4568(uint64_t a1)
{
  sub_26AFBE774(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40) & 1);

  v3 = *(type metadata accessor for UpdateStatusView(0) + 24);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE20, &unk_26B08D230);
  (*(*(v1 - 8) + 8))(a1 + v3);
  return a1;
}

uint64_t sub_26AFC4618(uint64_t a1, uint64_t a2)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  sub_26AE95D28(*a1, v6, v7 & 1);
  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7 & 1;
  v8 = *(a1 + 24);
  sub_26B078640();
  *(a2 + 24) = v8;
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DB598, &qword_26B08FCF0) + 36);
  v2 = sub_26B079100();
  (*(*(v2 - 8) + 16))(a2 + v9, a1 + v9);
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE10, &qword_26B08DDE0) + 36);
  v13 = *(a1 + v12);

  result = a2;
  v4 = a2 + v12;
  *v4 = v13;
  *(v4 + 8) = *(a1 + v12 + 8);
  *(v4 + 16) = *(a1 + v12 + 16);
  return result;
}

uint64_t sub_26AFC4778(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  sub_26AFC0708(*a1, v5, v6, v7, v8, v9 & 1);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
  *(a2 + 40) = v9 & 1;
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);

  *(a2 + 48) = v10;
  *(a2 + 56) = v11 & 1;
  v12 = *(type metadata accessor for UpdateStatusView(0) + 24);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE20, &unk_26B08D230);
  (*(*(v2 - 8) + 16))(a2 + v12, a1 + v12);
  return a2;
}

unint64_t sub_26AFC48C8()
{
  v2 = qword_2803DDF90;
  if (!qword_2803DDF90)
  {
    type metadata accessor for ReleaseNotesSummaryView(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DDF90);
    return WitnessTable;
  }

  return v2;
}

void *sub_26AFC4948(void *a1, void *a2)
{
  *a2 = *a1;
  a2[1] = a1[1];
  a2[2] = a1[2];
  v3 = a1[3];
  sub_26B078640();
  a2[3] = v3;
  a2[4] = a1[4];
  v4 = a1[5];
  sub_26B078640();
  a2[5] = v4;
  a2[6] = a1[6];
  v5 = a1[7];

  a2[7] = v5;
  v6 = a1[8];

  a2[8] = v6;
  v7 = a1[9];

  a2[9] = v7;
  v8 = a1[10];

  a2[10] = v8;
  a2[11] = a1[11];
  a2[12] = a1[12];
  a2[13] = a1[13];
  v9 = a1[14];
  sub_26B078640();
  a2[14] = v9;
  a2[15] = a1[15];
  v10 = a1[16];
  sub_26B078640();
  a2[16] = v10;
  a2[17] = a1[17];
  v11 = a1[18];

  a2[18] = v11;
  v12 = a1[19];

  a2[19] = v12;
  v13 = a1[20];

  a2[20] = v13;
  v14 = a1[21];

  a2[21] = v14;
  v15 = a1[22];
  MEMORY[0x277D82BE0](v15);
  a2[22] = v15;
  v16 = a1[23];
  MEMORY[0x277D82BE0](v16);
  a2[23] = v16;
  a2[24] = a1[24];
  v17 = a1[25];

  a2[25] = v17;
  v18 = a1[26];

  a2[26] = v18;
  v19 = a1[27];

  a2[27] = v19;
  v20 = a1[28];

  a2[28] = v20;
  v21 = a1[29];

  a2[29] = v21;
  v22 = a1[30];

  a2[30] = v22;
  v23 = a1[31];

  a2[31] = v23;
  v25 = a1[32];

  a2[32] = v25;
  v27 = a1[33];

  result = a2;
  a2[33] = v27;
  return result;
}

uint64_t sub_26AFC4C54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v72 = a3;
  v90 = a1;
  v89 = a2;
  v73 = sub_26AFC59B0;
  v74 = sub_26AFC7A50;
  v75 = sub_26AFC5A04;
  v76 = sub_26AFC7B50;
  v77 = sub_26AFC5AA8;
  v78 = sub_26AFC7C50;
  v79 = sub_26AFC79D4;
  v80 = sub_26AFC7A08;
  v81 = sub_26AFC7A9C;
  v82 = sub_26AFC7AD4;
  v83 = sub_26AFC7B08;
  v84 = sub_26AFC7B9C;
  v85 = sub_26AFC7BD4;
  v86 = sub_26AFC7C08;
  v87 = sub_26AFC7C9C;
  v106 = 0;
  v104 = 0;
  v105 = 0;
  v88 = 0;
  v97 = 0;
  v91 = sub_26B078580();
  v92 = *(v91 - 8);
  v93 = v91 - 8;
  v94 = (*(v92 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v90);
  v95 = v39 - v94;
  v104 = v3;
  v105 = v4;
  sub_26AFE4FD8(v3, v4);
  v96 = v103;
  if (v103 == 2)
  {
    sub_26B078550();
    sub_26B078640();
    v53 = 32;
    v54 = 7;
    v6 = swift_allocObject();
    v7 = v89;
    v55 = v6;
    *(v6 + 16) = v90;
    *(v6 + 24) = v7;
    v69 = sub_26B078570();
    v70 = sub_26B07A2C0();
    v51 = 17;
    v57 = swift_allocObject();
    v50 = 32;
    *(v57 + 16) = 32;
    v58 = swift_allocObject();
    v52 = 8;
    *(v58 + 16) = 8;
    v8 = swift_allocObject();
    v48 = v8;
    *(v8 + 16) = v73;
    *(v8 + 24) = 0;
    v9 = swift_allocObject();
    v10 = v48;
    v59 = v9;
    *(v9 + 16) = v74;
    *(v9 + 24) = v10;
    v60 = swift_allocObject();
    *(v60 + 16) = v50;
    v61 = swift_allocObject();
    *(v61 + 16) = v52;
    v11 = swift_allocObject();
    v49 = v11;
    *(v11 + 16) = v75;
    *(v11 + 24) = 0;
    v12 = swift_allocObject();
    v13 = v49;
    v62 = v12;
    *(v12 + 16) = v76;
    *(v12 + 24) = v13;
    v63 = swift_allocObject();
    *(v63 + 16) = v50;
    v64 = swift_allocObject();
    *(v64 + 16) = v52;
    v14 = swift_allocObject();
    v15 = v55;
    v56 = v14;
    *(v14 + 16) = v77;
    *(v14 + 24) = v15;
    v16 = swift_allocObject();
    v17 = v56;
    v66 = v16;
    *(v16 + 16) = v78;
    *(v16 + 24) = v17;
    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00, &unk_26B088A40);
    v65 = sub_26B07A760();
    v67 = v18;

    v19 = v57;
    v20 = v67;
    *v67 = v79;
    v20[1] = v19;

    v21 = v58;
    v22 = v67;
    v67[2] = v80;
    v22[3] = v21;

    v23 = v59;
    v24 = v67;
    v67[4] = v81;
    v24[5] = v23;

    v25 = v60;
    v26 = v67;
    v67[6] = v82;
    v26[7] = v25;

    v27 = v61;
    v28 = v67;
    v67[8] = v83;
    v28[9] = v27;

    v29 = v62;
    v30 = v67;
    v67[10] = v84;
    v30[11] = v29;

    v31 = v63;
    v32 = v67;
    v67[12] = v85;
    v32[13] = v31;

    v33 = v64;
    v34 = v67;
    v67[14] = v86;
    v34[15] = v33;

    v35 = v66;
    v36 = v67;
    v67[16] = v87;
    v36[17] = v35;
    sub_26AEA3B2C();

    if (os_log_type_enabled(v69, v70))
    {
      v37 = v88;
      v41 = sub_26B07A420();
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0, &unk_26B087440);
      v42 = sub_26AEA3B70(0, v40, v40);
      v43 = sub_26AEA3B70(3, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v44 = &v102;
      v102 = v41;
      v45 = &v101;
      v101 = v42;
      v46 = &v100;
      v100 = v43;
      sub_26AEA3BC4(2, &v102);
      sub_26AEA3BC4(3, v44);
      v98 = v79;
      v99 = v57;
      sub_26AEA3BD8(&v98, v44, v45, v46);
      v47 = v37;
      if (v37)
      {

        __break(1u);
      }

      else
      {
        v98 = v80;
        v99 = v58;
        sub_26AEA3BD8(&v98, &v102, &v101, &v100);
        v39[6] = 0;
        v98 = v81;
        v99 = v59;
        sub_26AEA3BD8(&v98, &v102, &v101, &v100);
        v39[5] = 0;
        v98 = v82;
        v99 = v60;
        sub_26AEA3BD8(&v98, &v102, &v101, &v100);
        v39[4] = 0;
        v98 = v83;
        v99 = v61;
        sub_26AEA3BD8(&v98, &v102, &v101, &v100);
        v39[3] = 0;
        v98 = v84;
        v99 = v62;
        sub_26AEA3BD8(&v98, &v102, &v101, &v100);
        v39[2] = 0;
        v98 = v85;
        v99 = v63;
        sub_26AEA3BD8(&v98, &v102, &v101, &v100);
        v39[1] = 0;
        v98 = v86;
        v99 = v64;
        sub_26AEA3BD8(&v98, &v102, &v101, &v100);
        v39[0] = 0;
        v98 = v87;
        v99 = v66;
        sub_26AEA3BD8(&v98, &v102, &v101, &v100);
        _os_log_impl(&dword_26AE88000, v69, v70, "%s.%s: Unable to resolve action %s", v41, 0x20u);
        sub_26AEA3C24(v42, 0, v40);
        sub_26AEA3C24(v43, 3, MEMORY[0x277D84F70] + 8);
        sub_26B07A400();
      }
    }

    else
    {
    }

    v38 = MEMORY[0x277D82BD8](v69);
    (*(v92 + 8))(v95, v91, v38);

    *v72 = 2;
  }

  else
  {
    v71 = v96;
    v97 = v96 & 1;
    v106 = v96 & 1;
    *v72 = v96 & 1;
  }

  return result;
}

uint64_t UpdateActionDeepLinkCommand.execute(with:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 72) = a2;
  *(v3 + 64) = a1;
  *(v3 + 16) = v3;
  *(v3 + 24) = 0;
  *(v3 + 128) = 0;
  *(v3 + 32) = 0;
  v4 = sub_26B078580();
  *(v3 + 80) = v4;
  *(v3 + 88) = *(v4 - 8);
  *(v3 + 96) = swift_task_alloc();
  *(v3 + 104) = swift_task_alloc();
  *(v3 + 24) = a2;
  v5 = *v2;
  *(v3 + 130) = *v2 & 1;
  *(v3 + 128) = v5 & 1;
  *(v3 + 129) = v5;
  v6 = swift_task_alloc();
  *(v8 + 112) = v6;
  *v6 = *(v8 + 16);
  v6[1] = sub_26AFC5C54;

  return sub_26AED72E4(a2, &type metadata for UpdateActionDeepLinkCommand, &protocol witness table for UpdateActionDeepLinkCommand);
}

uint64_t sub_26AFC5C54(uint64_t a1, char a2)
{
  v4 = *v2;
  *(v4 + 16) = *v2;
  *(v4 + 120) = a1;
  *(v4 + 131) = a2;

  return MEMORY[0x2822009F8](sub_26AFC5D74, 0, 0);
}

uint64_t sub_26AFC5D74(uint64_t a1)
{
  v82 = v1;
  v2 = *(v1 + 131);
  *(v1 + 16) = v1;
  if (v2)
  {
    v17 = *(v71 + 130);
    sub_26B078550();
    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    v22 = swift_allocObject();
    *(v22 + 16) = v17;
    log = sub_26B078570();
    v35 = sub_26B07A2C0();
    v24 = swift_allocObject();
    *(v24 + 16) = 32;
    v25 = swift_allocObject();
    *(v25 + 16) = 8;
    v19 = swift_allocObject();
    *(v19 + 16) = sub_26AFC7CD4;
    *(v19 + 24) = v18;
    v20 = swift_allocObject();
    *(v20 + 16) = sub_26AFC7DC0;
    *(v20 + 24) = v19;
    v26 = swift_allocObject();
    *(v26 + 16) = sub_26AFC7E0C;
    *(v26 + 24) = v20;
    v27 = swift_allocObject();
    *(v27 + 16) = 32;
    v28 = swift_allocObject();
    *(v28 + 16) = 8;
    v21 = swift_allocObject();
    *(v21 + 16) = sub_26AFC76FC;
    *(v21 + 24) = 0;
    v29 = swift_allocObject();
    *(v29 + 16) = sub_26AFC7F0C;
    *(v29 + 24) = v21;
    v30 = swift_allocObject();
    *(v30 + 16) = 32;
    v31 = swift_allocObject();
    *(v31 + 16) = 8;
    v23 = swift_allocObject();
    *(v23 + 16) = sub_26AFC7D0C;
    *(v23 + 24) = v22;
    v32 = swift_allocObject();
    *(v32 + 16) = sub_26AFC800C;
    *(v32 + 24) = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00, &unk_26B088A40);
    sub_26B07A760();
    v33 = v5;

    *v33 = sub_26AFC7D44;
    v33[1] = v24;

    v33[2] = sub_26AFC7D78;
    v33[3] = v25;

    v33[4] = sub_26AFC7E58;
    v33[5] = v26;

    v33[6] = sub_26AFC7E90;
    v33[7] = v27;

    v33[8] = sub_26AFC7EC4;
    v33[9] = v28;

    v33[10] = sub_26AFC7F58;
    v33[11] = v29;

    v33[12] = sub_26AFC7F90;
    v33[13] = v30;

    v33[14] = sub_26AFC7FC4;
    v33[15] = v31;

    v33[16] = sub_26AFC8058;
    v33[17] = v32;
    sub_26AEA3B2C();

    if (os_log_type_enabled(log, v35))
    {
      v14 = sub_26B07A420();
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0, &unk_26B087440);
      v15 = sub_26AEA3B70(0, v13, v13);
      v16 = sub_26AEA3B70(3, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v72 = v14;
      v73 = v15;
      v74 = v16;
      sub_26AEA3BC4(2, &v72);
      sub_26AEA3BC4(3, &v72);
      v75 = sub_26AFC7D44;
      v76 = v24;
      sub_26AEA3BD8(&v75, &v72, &v73, &v74);
      v75 = sub_26AFC7D78;
      v76 = v25;
      sub_26AEA3BD8(&v75, &v72, &v73, &v74);
      v75 = sub_26AFC7E58;
      v76 = v26;
      sub_26AEA3BD8(&v75, &v72, &v73, &v74);
      v75 = sub_26AFC7E90;
      v76 = v27;
      sub_26AEA3BD8(&v75, &v72, &v73, &v74);
      v75 = sub_26AFC7EC4;
      v76 = v28;
      sub_26AEA3BD8(&v75, &v72, &v73, &v74);
      v75 = sub_26AFC7F58;
      v76 = v29;
      sub_26AEA3BD8(&v75, &v72, &v73, &v74);
      v75 = sub_26AFC7F90;
      v76 = v30;
      sub_26AEA3BD8(&v75, &v72, &v73, &v74);
      v75 = sub_26AFC7FC4;
      v76 = v31;
      sub_26AEA3BD8(&v75, &v72, &v73, &v74);
      v75 = sub_26AFC8058;
      v76 = v32;
      sub_26AEA3BD8(&v75, &v72, &v73, &v74);
      _os_log_impl(&dword_26AE88000, log, v35, "%s.%s: timed out waiting for state change, ignoring the action %s", v14, 0x20u);
      sub_26AEA3C24(v15, 0, v13);
      sub_26AEA3C24(v16, 3, MEMORY[0x277D84F70] + 8);
      sub_26B07A400();
    }

    else
    {
    }

    v11 = *(v71 + 96);
    v12 = *(v71 + 80);
    v10 = *(v71 + 88);
    v6 = MEMORY[0x277D82BD8](log);
    (*(v10 + 8))(v11, v12, v6);
    goto LABEL_16;
  }

  v70 = *(v71 + 120);
  *(v71 + 32) = v70;
  type metadata accessor for SUUIStatefulUIState(0);
  *(v71 + 40) = v70;
  *(v71 + 48) = 4;
  sub_26AEB6FE0();
  if ((sub_26B079D40() & 1) == 0)
  {
    v43 = *(v71 + 130);
    sub_26B078550();
    v44 = swift_allocObject();
    *(v44 + 16) = v43;
    v48 = swift_allocObject();
    *(v48 + 16) = v43;
    oslog = sub_26B078570();
    v61 = sub_26B07A2A0();
    v50 = swift_allocObject();
    *(v50 + 16) = 32;
    v51 = swift_allocObject();
    *(v51 + 16) = 8;
    v45 = swift_allocObject();
    *(v45 + 16) = sub_26AFC8090;
    *(v45 + 24) = v44;
    v46 = swift_allocObject();
    *(v46 + 16) = sub_26AFC817C;
    *(v46 + 24) = v45;
    v52 = swift_allocObject();
    *(v52 + 16) = sub_26AFC81C8;
    *(v52 + 24) = v46;
    v53 = swift_allocObject();
    *(v53 + 16) = 32;
    v54 = swift_allocObject();
    *(v54 + 16) = 8;
    v47 = swift_allocObject();
    *(v47 + 16) = sub_26AFC7688;
    *(v47 + 24) = 0;
    v55 = swift_allocObject();
    *(v55 + 16) = sub_26AFC82C8;
    *(v55 + 24) = v47;
    v56 = swift_allocObject();
    *(v56 + 16) = 32;
    v57 = swift_allocObject();
    *(v57 + 16) = 8;
    v49 = swift_allocObject();
    *(v49 + 16) = sub_26AFC80C8;
    *(v49 + 24) = v48;
    v58 = swift_allocObject();
    *(v58 + 16) = sub_26AFC83C8;
    *(v58 + 24) = v49;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00, &unk_26B088A40);
    sub_26B07A760();
    v59 = v3;

    *v59 = sub_26AFC8100;
    v59[1] = v50;

    v59[2] = sub_26AFC8134;
    v59[3] = v51;

    v59[4] = sub_26AFC8214;
    v59[5] = v52;

    v59[6] = sub_26AFC824C;
    v59[7] = v53;

    v59[8] = sub_26AFC8280;
    v59[9] = v54;

    v59[10] = sub_26AFC8314;
    v59[11] = v55;

    v59[12] = sub_26AFC834C;
    v59[13] = v56;

    v59[14] = sub_26AFC8380;
    v59[15] = v57;

    v59[16] = sub_26AFC8414;
    v59[17] = v58;
    sub_26AEA3B2C();

    if (os_log_type_enabled(oslog, v61))
    {
      buf = sub_26B07A420();
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0, &unk_26B087440);
      v41 = sub_26AEA3B70(0, v39, v39);
      v42 = sub_26AEA3B70(3, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v77 = buf;
      v78 = v41;
      v79 = v42;
      sub_26AEA3BC4(2, &v77);
      sub_26AEA3BC4(3, &v77);
      v80 = sub_26AFC8100;
      v81 = v50;
      sub_26AEA3BD8(&v80, &v77, &v78, &v79);
      v80 = sub_26AFC8134;
      v81 = v51;
      sub_26AEA3BD8(&v80, &v77, &v78, &v79);
      v80 = sub_26AFC8214;
      v81 = v52;
      sub_26AEA3BD8(&v80, &v77, &v78, &v79);
      v80 = sub_26AFC824C;
      v81 = v53;
      sub_26AEA3BD8(&v80, &v77, &v78, &v79);
      v80 = sub_26AFC8280;
      v81 = v54;
      sub_26AEA3BD8(&v80, &v77, &v78, &v79);
      v80 = sub_26AFC8314;
      v81 = v55;
      sub_26AEA3BD8(&v80, &v77, &v78, &v79);
      v80 = sub_26AFC834C;
      v81 = v56;
      sub_26AEA3BD8(&v80, &v77, &v78, &v79);
      v80 = sub_26AFC8380;
      v81 = v57;
      sub_26AEA3BD8(&v80, &v77, &v78, &v79);
      v80 = sub_26AFC8414;
      v81 = v58;
      sub_26AEA3BD8(&v80, &v77, &v78, &v79);
      _os_log_impl(&dword_26AE88000, oslog, v61, "%s.%s: no updates available, ignoring the action %s", buf, 0x20u);
      sub_26AEA3C24(v41, 0, v39);
      sub_26AEA3C24(v42, 3, MEMORY[0x277D84F70] + 8);
      sub_26B07A400();
    }

    else
    {
    }

    v37 = *(v71 + 104);
    v38 = *(v71 + 80);
    v36 = *(v71 + 88);
    v4 = MEMORY[0x277D82BD8](oslog);
    (*(v36 + 8))(v37, v38, v4);
    goto LABEL_16;
  }

  v69 = ReactiveUIManager.preferredDescriptor.getter();

  *(v71 + 56) = v69;
  if (!*(v71 + 56))
  {
    sub_26AF7E684();
LABEL_16:
    v7 = *(v71 + 64);
    *v7 = 0x7FFFFFEFCLL;
    v7[1] = 0;
    goto LABEL_17;
  }

  sub_26AF7E684();

  updated = ReactiveUIManager.isPreferredUpdatePromotedAsAlternate()();

  if (updated)
  {
    v65 = *(v71 + 130);
    v66 = *(v71 + 72);
    v67 = *(v71 + 64);

    *v67 = ((v65 & 1) << 8) | 2;
    v67[1] = v66 | 0x8000000000000000;
  }

  else
  {
    v62 = *(v71 + 130);
    v63 = *(v71 + 72);
    v64 = *(v71 + 64);

    *v64 = v62 & 1;
    v64[1] = v63 | 0x4000000000000000;
  }

LABEL_17:

  v8 = *(*(v71 + 16) + 8);

  return v8();
}

uint64_t sub_26AFC7760(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_26AFC781C;

  return UpdateActionDeepLinkCommand.execute(with:)(a1, a2);
}

uint64_t sub_26AFC781C()
{
  v2 = *v1;
  *(v2 + 16) = *v1;
  v5 = v2 + 16;

  if (v0)
  {
    v3 = *(*v5 + 8);
  }

  else
  {
    v3 = *(*v5 + 8);
  }

  return v3();
}

uint64_t getEnumTagSinglePayload for UpdateActionDeepLinkCommand(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFE)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 1) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 254;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 2;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for UpdateActionDeepLinkCommand(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFE)
  {
    v5 = ((a3 + 1) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFE)
  {
    v4 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_26AFC8798(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[1] = a3;
  v7[0] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD848, &unk_26B08E3C0);
  return sub_26AFD231C(v7, a1, a3, v3, MEMORY[0x277D84950]);
}

uint64_t ReactiveTermsAndConditionsService.manager.getter()
{
  v2 = *(v0 + 16);

  return v2;
}

uint64_t ReactiveTermsAndConditionsService.init(manager:)(uint64_t a1)
{

  *(v1 + 16) = a1;

  return v4;
}

uint64_t sub_26AFC8930(uint64_t a1)
{
  v2[46] = v1;
  v2[45] = a1;
  v2[36] = v2;
  v2[37] = 0;
  v2[38] = 0;
  v2[39] = 0;
  v2[41] = 0;
  v2[34] = 0;
  v2[35] = 0;
  v2[42] = 0;
  v2[44] = 0;
  v3 = sub_26B078580();
  v2[47] = v3;
  v2[48] = *(v3 - 8);
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  v2[37] = a1;
  v2[38] = v1;
  sub_26B07A130();
  v2[51] = sub_26B07A120();
  v7 = sub_26B07A0C0();
  v2[52] = v7;
  v2[53] = v4;

  return MEMORY[0x2822009F8](sub_26AFC8AB4, v7, v4);
}

uint64_t sub_26AFC8AB4()
{
  *(v0 + 288) = v0;
  sub_26AFCBC90();
  v3 = sub_26AFCBCF4();
  *(v0 + 432) = v3;
  *(v0 + 312) = v3;
  *(v0 + 16) = *(v0 + 288);
  *(v0 + 56) = v0 + 320;
  *(v0 + 24) = sub_26AFC8C0C;
  v2 = swift_continuation_init();
  *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDFB8, &qword_26B08E318);
  *(v0 + 176) = v2;
  *(v0 + 144) = MEMORY[0x277D85DD0];
  *(v0 + 152) = 1107296256;
  *(v0 + 156) = 0;
  *(v0 + 160) = sub_26AFCBD24;
  *(v0 + 168) = &block_descriptor_2;
  [v3 aa_primaryAppleAccountWithCompletion_];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_26AFC8C0C()
{
  v7 = *v0;
  v8 = *v0;
  v6 = *v0 + 16;
  *(v8 + 288) = *v0;
  v1 = *(v7 + 48);
  *(v8 + 440) = v1;
  if (v1)
  {
    v2 = *(v6 + 408);
    v3 = *(v6 + 400);
    v4 = sub_26AFCA8A0;
  }

  else
  {
    v2 = *(v6 + 408);
    v3 = *(v6 + 400);
    v4 = sub_26AFC8D84;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_26AFC8D84()
{
  v53 = v0;
  v0[36] = v0;
  v47 = v0[40];
  v0[56] = v47;
  if (!v47)
  {
    v7 = swift_task_alloc();
    *(v46 + 536) = v7;
    *v7 = *(v46 + 288);
    v7[1] = sub_26AFCA538;
    v6 = *(v46 + 360);

    return sub_26AFCC088(v6);
  }

  *(v46 + 328) = v47;
  v45 = [v47 aa_personID];
  if (v45)
  {
    v41 = sub_26B079E00();
    v42 = v1;
    MEMORY[0x277D82BD8](v45);
    v43 = v41;
    v44 = v42;
  }

  else
  {
    v43 = 0;
    v44 = 0;
  }

  *(v46 + 456) = v44;
  *(v46 + 272) = v43;
  *(v46 + 280) = v44;
  sub_26B078640();
  if (v44)
  {
    v38 = sub_26B079F00();

    v39 = v38;
    v40 = 0;
  }

  else
  {
    v39 = 0;
    v40 = 1;
  }

  if ((v40 & 1) != 0 || (*(v46 + 336) = v39, v39 <= 0))
  {
    v5 = swift_task_alloc();
    *(v46 + 512) = v5;
    *v5 = *(v46 + 288);
    v5[1] = sub_26AFCA284;
    v6 = *(v46 + 360);

    return sub_26AFCC088(v6);
  }

  v20 = *(v46 + 368);
  sub_26B078540();

  sub_26B078640();
  v24 = swift_allocObject();
  *(v24 + 16) = v43;
  *(v24 + 24) = v44;
  oslog = sub_26B078570();
  v37 = sub_26B07A2A0();
  v26 = swift_allocObject();
  *(v26 + 16) = 32;
  v27 = swift_allocObject();
  *(v27 + 16) = 8;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_26AFD2098;
  *(v21 + 24) = v20;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_26AFD2454;
  *(v22 + 24) = v21;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_26AFD24A0;
  *(v28 + 24) = v22;
  v29 = swift_allocObject();
  *(v29 + 16) = 32;
  v30 = swift_allocObject();
  *(v30 + 16) = 8;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_26AFCBEA4;
  *(v23 + 24) = 0;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_26AFD25A0;
  *(v31 + 24) = v23;
  v32 = swift_allocObject();
  *(v32 + 16) = 32;
  v33 = swift_allocObject();
  *(v33 + 16) = 8;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_26AFD20E0;
  *(v25 + 24) = v24;
  v34 = swift_allocObject();
  *(v34 + 16) = sub_26AFD26A0;
  *(v34 + 24) = v25;
  *(v46 + 464) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00, &unk_26B088A40);
  sub_26B07A760();
  v35 = v2;

  *v35 = sub_26AFD23D8;
  v35[1] = v26;

  v35[2] = sub_26AFD240C;
  v35[3] = v27;

  v35[4] = sub_26AFD24EC;
  v35[5] = v28;

  v35[6] = sub_26AFD2524;
  v35[7] = v29;

  v35[8] = sub_26AFD2558;
  v35[9] = v30;

  v35[10] = sub_26AFD25EC;
  v35[11] = v31;

  v35[12] = sub_26AFD2624;
  v35[13] = v32;

  v35[14] = sub_26AFD2658;
  v35[15] = v33;

  v35[16] = sub_26AFD26EC;
  v35[17] = v34;
  sub_26AEA3B2C();

  if (os_log_type_enabled(oslog, v37))
  {
    buf = sub_26B07A420();
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0, &unk_26B087440);
    v18 = sub_26AEA3B70(0, v16, v16);
    v19 = sub_26AEA3B70(3, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v48 = buf;
    v49 = v18;
    v50 = v19;
    sub_26AEA3BC4(2, &v48);
    sub_26AEA3BC4(3, &v48);
    v51 = sub_26AFD23D8;
    v52 = v26;
    sub_26AEA3BD8(&v51, &v48, &v49, &v50);
    v51 = sub_26AFD240C;
    v52 = v27;
    sub_26AEA3BD8(&v51, &v48, &v49, &v50);
    v51 = sub_26AFD24EC;
    v52 = v28;
    sub_26AEA3BD8(&v51, &v48, &v49, &v50);
    v51 = sub_26AFD2524;
    v52 = v29;
    sub_26AEA3BD8(&v51, &v48, &v49, &v50);
    v51 = sub_26AFD2558;
    v52 = v30;
    sub_26AEA3BD8(&v51, &v48, &v49, &v50);
    v51 = sub_26AFD25EC;
    v52 = v31;
    sub_26AEA3BD8(&v51, &v48, &v49, &v50);
    v51 = sub_26AFD2624;
    v52 = v32;
    sub_26AEA3BD8(&v51, &v48, &v49, &v50);
    v51 = sub_26AFD2658;
    v52 = v33;
    sub_26AEA3BD8(&v51, &v48, &v49, &v50);
    v51 = sub_26AFD26EC;
    v52 = v34;
    sub_26AEA3BD8(&v51, &v48, &v49, &v50);
    _os_log_impl(&dword_26AE88000, oslog, v37, "%s.%s: Presenting Apple Account Terms and Conditions for %s", buf, 0x20u);
    sub_26AEA3C24(v18, 0, v16);
    sub_26AEA3C24(v19, 3, MEMORY[0x277D84F70] + 8);
    sub_26B07A400();
  }

  else
  {
  }

  v12 = *(v46 + 400);
  v13 = *(v46 + 376);
  v11 = *(v46 + 384);
  v3 = MEMORY[0x277D82BD8](oslog);
  v4 = *(v11 + 8);
  *(v46 + 472) = v4;
  *(v46 + 480) = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4(v12, v13, v3);
  v14 = [objc_opt_self() sharedInstance];
  *(v46 + 488) = v14;

  v15 = ReactiveUIManager.presentingViewController.getter();
  *(v46 + 496) = v15;

  if (!v15)
  {
    return sub_26B07A650();
  }

  v10 = *(v46 + 360);
  *(v46 + 80) = *(v46 + 288);
  *(v46 + 120) = v46 + 344;
  *(v46 + 88) = sub_26AFC9FBC;
  v9 = swift_continuation_init();
  *(v46 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDFC8, &qword_26B08E330);
  *(v46 + 240) = v9;
  *(v46 + 208) = MEMORY[0x277D85DD0];
  *(v46 + 216) = 1107296256;
  *(v46 + 220) = 0;
  *(v46 + 224) = sub_26AFCBF38;
  *(v46 + 232) = &block_descriptor_54;
  [v14 presentUpdateTermsAndConditions:v10 forAccount:v47 presentedBy:v15 completionHandler:?];

  return MEMORY[0x282200938](v46 + 80);
}

uint64_t sub_26AFC9FBC()
{
  v7 = *v0;
  v8 = *v0;
  v6 = *v0 + 16;
  *(v8 + 288) = *v0;
  v1 = *(v7 + 112);
  *(v8 + 504) = v1;
  if (v1)
  {
    v2 = *(v6 + 408);
    v3 = *(v6 + 400);
    v4 = sub_26AFCAAB0;
  }

  else
  {
    v2 = *(v6 + 408);
    v3 = *(v6 + 400);
    v4 = sub_26AFCA134;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_26AFCA134()
{
  v4 = v0[62];
  v1 = v0[61];
  v5 = v0[56];
  v6 = v0[54];
  v0[36] = v0;
  v7 = v0[43];
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v4);

  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);

  v2 = *(v0[36] + 8);

  return v2(v7);
}

uint64_t sub_26AFCA284(uint64_t a1)
{
  v8 = *v2;
  v7 = *v2 + 16;
  v8[36] = *v2;
  v8[65] = a1;
  v8[66] = v1;

  if (v1)
  {
    v3 = *(v7 + 408);
    v4 = *(v7 + 400);
    v5 = sub_26AFCA99C;
  }

  else
  {
    v3 = *(v7 + 408);
    v4 = *(v7 + 400);
    v5 = sub_26AFCA408;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_26AFCA408()
{
  v1 = v0[65];
  v4 = v0[56];
  v5 = v0[54];
  v0[36] = v0;
  v6 = sub_26AFD0088(v1);

  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);

  v2 = *(v0[36] + 8);

  return v2(v6);
}

uint64_t sub_26AFCA538(uint64_t a1)
{
  v8 = *v2;
  v7 = *v2 + 16;
  v8[36] = *v2;
  v8[68] = a1;
  v8[69] = v1;

  if (v1)
  {
    v3 = *(v7 + 408);
    v4 = *(v7 + 400);
    v5 = sub_26AFCA7BC;
  }

  else
  {
    v3 = *(v7 + 408);
    v4 = *(v7 + 400);
    v5 = sub_26AFCA6BC;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_26AFCA6BC()
{
  v1 = v0[68];
  v4 = v0[54];
  v0[36] = v0;
  v5 = sub_26AFD0088(v1);
  MEMORY[0x277D82BD8](v4);

  v2 = *(v0[36] + 8);

  return v2(v5);
}

uint64_t sub_26AFCA7BC()
{
  v1 = *(v0 + 432);
  *(v0 + 288) = v0;
  MEMORY[0x277D82BD8](v1);

  v2 = *(*(v0 + 288) + 8);

  return v2();
}

uint64_t sub_26AFCA8A0(__n128 a1)
{
  v4 = *(v1 + 432);
  *(v1 + 288) = v1;
  swift_willThrow();
  MEMORY[0x277D82BD8](v4);

  v2 = *(*(v1 + 288) + 8);

  return v2();
}

uint64_t sub_26AFCA99C()
{
  v3 = v0[56];
  v4 = v0[54];
  v0[36] = v0;

  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);

  v1 = *(v0[36] + 8);

  return v1();
}

uint64_t sub_26AFCAAB0(__n128 a1)
{
  v43 = v1;
  v18 = v1[63];
  v17 = v1[62];
  v16 = v1[61];
  v19 = v1[46];
  v1[36] = v1;
  swift_willThrow();
  MEMORY[0x277D82BD8](v16);
  v2 = MEMORY[0x277D82BD8](v17);
  MEMORY[0x26D66E1D0](v18, v2);
  v1[44] = v18;
  sub_26B078540();

  MEMORY[0x26D66E1D0](v18);
  v23 = swift_allocObject();
  *(v23 + 16) = v18;
  sub_26AED0174();

  v36 = sub_26B078570();
  v37 = sub_26B07A2C0();
  v26 = swift_allocObject();
  *(v26 + 16) = 32;
  v27 = swift_allocObject();
  *(v27 + 16) = 8;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_26AFD2738;
  *(v20 + 24) = v19;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_26AFD2830;
  *(v21 + 24) = v20;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_26AFD287C;
  *(v28 + 24) = v21;
  v29 = swift_allocObject();
  *(v29 + 16) = 32;
  v30 = swift_allocObject();
  *(v30 + 16) = 8;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_26AFCC030;
  *(v22 + 24) = 0;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_26AFD297C;
  *(v31 + 24) = v22;
  v32 = swift_allocObject();
  *(v32 + 16) = 64;
  v33 = swift_allocObject();
  *(v33 + 16) = 8;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_26AFD2780;
  *(v24 + 24) = v23;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_26AFD2A7C;
  *(v25 + 24) = v24;
  v34 = swift_allocObject();
  *(v34 + 16) = sub_26AFD2AC8;
  *(v34 + 24) = v25;
  sub_26B07A760();
  v35 = v3;

  *v35 = sub_26AFD27B4;
  v35[1] = v26;

  v35[2] = sub_26AFD27E8;
  v35[3] = v27;

  v35[4] = sub_26AFD28C8;
  v35[5] = v28;

  v35[6] = sub_26AFD2900;
  v35[7] = v29;

  v35[8] = sub_26AFD2934;
  v35[9] = v30;

  v35[10] = sub_26AFD29C8;
  v35[11] = v31;

  v35[12] = sub_26AFD2A00;
  v35[13] = v32;

  v35[14] = sub_26AFD2A34;
  v35[15] = v33;

  v35[16] = sub_26AFD2B14;
  v35[17] = v34;
  sub_26AEA3B2C();

  if (os_log_type_enabled(v36, v37))
  {
    buf = sub_26B07A420();
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0, &unk_26B087440);
    v13 = sub_26AEA3B70(1, v11, v11);
    v14 = sub_26AEA3B70(2, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v38 = buf;
    v39 = v13;
    v40 = v14;
    sub_26AEA3BC4(2, &v38);
    sub_26AEA3BC4(3, &v38);
    v41 = sub_26AFD27B4;
    v42 = v26;
    sub_26AEA3BD8(&v41, &v38, &v39, &v40);
    v41 = sub_26AFD27E8;
    v42 = v27;
    sub_26AEA3BD8(&v41, &v38, &v39, &v40);
    v41 = sub_26AFD28C8;
    v42 = v28;
    sub_26AEA3BD8(&v41, &v38, &v39, &v40);
    v41 = sub_26AFD2900;
    v42 = v29;
    sub_26AEA3BD8(&v41, &v38, &v39, &v40);
    v41 = sub_26AFD2934;
    v42 = v30;
    sub_26AEA3BD8(&v41, &v38, &v39, &v40);
    v41 = sub_26AFD29C8;
    v42 = v31;
    sub_26AEA3BD8(&v41, &v38, &v39, &v40);
    v41 = sub_26AFD2A00;
    v42 = v32;
    sub_26AEA3BD8(&v41, &v38, &v39, &v40);
    v41 = sub_26AFD2A34;
    v42 = v33;
    sub_26AEA3BD8(&v41, &v38, &v39, &v40);
    v41 = sub_26AFD2B14;
    v42 = v34;
    sub_26AEA3BD8(&v41, &v38, &v39, &v40);
    _os_log_impl(&dword_26AE88000, v36, v37, "%s.%s: Failed to present Apple Account Terms and Conditions: %@. Falling back to local terms.", buf, 0x20u);
    sub_26AEA3C24(v13, 1, v11);
    sub_26AEA3C24(v14, 2, MEMORY[0x277D84F70] + 8);
    sub_26B07A400();
  }

  else
  {
  }

  v10 = v15[59];
  v8 = v15[49];
  v9 = v15[47];
  v4 = MEMORY[0x277D82BD8](v36);
  v10(v8, v9, v4);
  v5 = swift_task_alloc();
  v15[70] = v5;
  *v5 = v15[36];
  v5[1] = sub_26AFCB884;
  v6 = v15[45];

  return sub_26AFCC088(v6);
}

uint64_t sub_26AFCB884(uint64_t a1)
{
  v8 = *v2;
  v7 = *v2 + 16;
  v8[36] = *v2;
  v8[71] = a1;
  v8[72] = v1;

  if (v1)
  {
    v3 = *(v7 + 408);
    v4 = *(v7 + 400);
    v5 = sub_26AFCBB58;
  }

  else
  {
    v3 = *(v7 + 408);
    v4 = *(v7 + 400);
    v5 = sub_26AFCBA08;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_26AFCBA08()
{
  v1 = v0[71];
  v4 = v0[63];
  v5 = v0[56];
  v6 = v0[54];
  v0[36] = v0;
  v7 = sub_26AFD0088(v1);

  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);

  v2 = *(v0[36] + 8);

  return v2(v7);
}

uint64_t sub_26AFCBB58()
{
  v3 = v0[63];
  v4 = v0[56];
  v5 = v0[54];
  v0[36] = v0;

  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);

  v1 = *(v0[36] + 8);

  return v1();
}

unint64_t sub_26AFCBC90()
{
  v2 = qword_2803DDFB0;
  if (!qword_2803DDFB0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2803DDFB0);
    return ObjCClassMetadata;
  }

  return v2;
}

double sub_26AFCBD24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x277D82BE0](a2);
  MEMORY[0x277D82BE0](a3);
  v9 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    MEMORY[0x26D66E1D0]();
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDFE8, &unk_26B08E3D0);
    sub_26AFC8798(v9, a3, v5);
  }

  else
  {
    MEMORY[0x277D82BE0](a2);
    v10 = a2;
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDFE8, &unk_26B08E3D0);
    sub_26AFC87FC(v9, &v10, v3);
  }

  MEMORY[0x277D82BD8](a3);
  *&result = MEMORY[0x277D82BD8](a2).n128_u64[0];
  return result;
}

uint64_t sub_26AFCBED4(uint64_t a1, uint64_t a2)
{
  sub_26B078640();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC400, &qword_26B089540);
  return sub_26B079E60();
}

double sub_26AFCBF38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x277D82BE0](a3);
  v9 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    MEMORY[0x26D66E1D0]();
    v5 = type metadata accessor for SUUIUserInteractionResponse(0);
    sub_26AFC8798(v9, a3, v5);
  }

  else
  {
    v10 = a2;
    v3 = type metadata accessor for SUUIUserInteractionResponse(0);
    sub_26AFC87FC(v9, &v10, v3);
  }

  *&result = MEMORY[0x277D82BD8](a3).n128_u64[0];
  return result;
}

uint64_t sub_26AFCC088(uint64_t a1)
{
  v2[12] = v1;
  v2[11] = a1;
  v2[6] = v2;
  v2[7] = 0;
  v2[8] = 0;
  v2[9] = 0;
  v2[2] = 0;
  v2[3] = 0;
  v3 = sub_26B078580();
  v2[13] = v3;
  v2[14] = *(v3 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[7] = a1;
  v2[8] = v1;
  v2[18] = sub_26B07A130();
  v2[19] = sub_26B07A120();
  v7 = sub_26B07A0C0();
  v2[20] = v7;
  v2[21] = v4;

  return MEMORY[0x2822009F8](sub_26AFCC21C, v7, v4);
}

uint64_t sub_26AFCC21C()
{
  v121 = v0;
  v103 = MEMORY[0x277D85700];
  v104 = v0[11];
  v0[6] = v0;
  swift_getObjectType();
  swift_unknownObjectRetain();
  v105 = [v104 documentation];
  v0[22] = v105;
  if (!v105)
  {
    v21 = v102[12];
    v20 = v102[11];
    swift_unknownObjectRelease();
    sub_26B078540();

    swift_unknownObjectRetain();
    v25 = swift_allocObject();
    *(v25 + 16) = v20;
    v37 = sub_26B078570();
    v38 = sub_26B07A2D0();
    v27 = swift_allocObject();
    *(v27 + 16) = 32;
    v28 = swift_allocObject();
    *(v28 + 16) = 8;
    v22 = swift_allocObject();
    *(v22 + 16) = sub_26AFD2B20;
    *(v22 + 24) = v21;
    v23 = swift_allocObject();
    *(v23 + 16) = sub_26AFD2C18;
    *(v23 + 24) = v22;
    v29 = swift_allocObject();
    *(v29 + 16) = sub_26AFD2C64;
    *(v29 + 24) = v23;
    v30 = swift_allocObject();
    *(v30 + 16) = 32;
    v31 = swift_allocObject();
    *(v31 + 16) = 8;
    v24 = swift_allocObject();
    *(v24 + 16) = sub_26AFCEA88;
    *(v24 + 24) = 0;
    v32 = swift_allocObject();
    *(v32 + 16) = sub_26AFD2D64;
    *(v32 + 24) = v24;
    v33 = swift_allocObject();
    *(v33 + 16) = 32;
    v34 = swift_allocObject();
    *(v34 + 16) = 8;
    v26 = swift_allocObject();
    *(v26 + 16) = sub_26AFD2B68;
    *(v26 + 24) = v25;
    v35 = swift_allocObject();
    *(v35 + 16) = sub_26AFD2E64;
    *(v35 + 24) = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00, &unk_26B088A40);
    sub_26B07A760();
    v36 = v9;

    *v36 = sub_26AFD2B9C;
    v36[1] = v27;

    v36[2] = sub_26AFD2BD0;
    v36[3] = v28;

    v36[4] = sub_26AFD2CB0;
    v36[5] = v29;

    v36[6] = sub_26AFD2CE8;
    v36[7] = v30;

    v36[8] = sub_26AFD2D1C;
    v36[9] = v31;

    v36[10] = sub_26AFD2DB0;
    v36[11] = v32;

    v36[12] = sub_26AFD2DE8;
    v36[13] = v33;

    v36[14] = sub_26AFD2E1C;
    v36[15] = v34;

    v36[16] = sub_26AFD2EB0;
    v36[17] = v35;
    sub_26AEA3B2C();

    if (os_log_type_enabled(v37, v38))
    {
      v17 = sub_26B07A420();
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0, &unk_26B087440);
      v18 = sub_26AEA3B70(0, v16, v16);
      v19 = sub_26AEA3B70(3, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v106 = v17;
      v107 = v18;
      v108 = v19;
      sub_26AEA3BC4(2, &v106);
      sub_26AEA3BC4(3, &v106);
      v109 = sub_26AFD2B9C;
      v110 = v27;
      sub_26AEA3BD8(&v109, &v106, &v107, &v108);
      v109 = sub_26AFD2BD0;
      v110 = v28;
      sub_26AEA3BD8(&v109, &v106, &v107, &v108);
      v109 = sub_26AFD2CB0;
      v110 = v29;
      sub_26AEA3BD8(&v109, &v106, &v107, &v108);
      v109 = sub_26AFD2CE8;
      v110 = v30;
      sub_26AEA3BD8(&v109, &v106, &v107, &v108);
      v109 = sub_26AFD2D1C;
      v110 = v31;
      sub_26AEA3BD8(&v109, &v106, &v107, &v108);
      v109 = sub_26AFD2DB0;
      v110 = v32;
      sub_26AEA3BD8(&v109, &v106, &v107, &v108);
      v109 = sub_26AFD2DE8;
      v110 = v33;
      sub_26AEA3BD8(&v109, &v106, &v107, &v108);
      v109 = sub_26AFD2E1C;
      v110 = v34;
      sub_26AEA3BD8(&v109, &v106, &v107, &v108);
      v109 = sub_26AFD2EB0;
      v110 = v35;
      sub_26AEA3BD8(&v109, &v106, &v107, &v108);
      _os_log_impl(&dword_26AE88000, v37, v38, "%s.%s: No documentation found for %s", v17, 0x20u);
      sub_26AEA3C24(v18, 0, v16);
      sub_26AEA3C24(v19, 3, MEMORY[0x277D84F70] + 8);
      sub_26B07A400();
    }

    else
    {
    }

    v14 = v102[15];
    v15 = v102[13];
    v13 = v102[14];
    v10 = MEMORY[0x277D82BD8](v37);
    (*(v13 + 8))(v14, v15, v10);
    goto LABEL_23;
  }

  v102[9] = v105;
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  v101 = [v105 licenseAgreement];
  if (v101)
  {
    v97 = sub_26B0781D0();
    v98 = v1;
    MEMORY[0x277D82BD8](v101);
    v99 = v97;
    v100 = v98;
  }

  else
  {
    v99 = 0;
    v100 = 0xF000000000000000;
  }

  v102[24] = v100;
  v102[23] = v99;
  if ((v100 & 0xF000000000000000) == 0xF000000000000000)
  {
    swift_unknownObjectRelease();
LABEL_15:
    v47 = v102[12];
    v46 = v102[11];
    sub_26B078540();

    swift_unknownObjectRetain();
    v51 = swift_allocObject();
    *(v51 + 16) = v46;
    log = sub_26B078570();
    v64 = sub_26B07A2D0();
    v53 = swift_allocObject();
    *(v53 + 16) = 32;
    v54 = swift_allocObject();
    *(v54 + 16) = 8;
    v48 = swift_allocObject();
    *(v48 + 16) = sub_26AFD2EBC;
    *(v48 + 24) = v47;
    v49 = swift_allocObject();
    *(v49 + 16) = sub_26AFD2FB4;
    *(v49 + 24) = v48;
    v55 = swift_allocObject();
    *(v55 + 16) = sub_26AFD3000;
    *(v55 + 24) = v49;
    v56 = swift_allocObject();
    *(v56 + 16) = 32;
    v57 = swift_allocObject();
    *(v57 + 16) = 8;
    v50 = swift_allocObject();
    *(v50 + 16) = sub_26AFCEB5C;
    *(v50 + 24) = 0;
    v58 = swift_allocObject();
    *(v58 + 16) = sub_26AFD3100;
    *(v58 + 24) = v50;
    v59 = swift_allocObject();
    *(v59 + 16) = 32;
    v60 = swift_allocObject();
    *(v60 + 16) = 8;
    v52 = swift_allocObject();
    *(v52 + 16) = sub_26AFD2F04;
    *(v52 + 24) = v51;
    v61 = swift_allocObject();
    *(v61 + 16) = sub_26AFD3200;
    *(v61 + 24) = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00, &unk_26B088A40);
    sub_26B07A760();
    v62 = v7;

    *v62 = sub_26AFD2F38;
    v62[1] = v53;

    v62[2] = sub_26AFD2F6C;
    v62[3] = v54;

    v62[4] = sub_26AFD304C;
    v62[5] = v55;

    v62[6] = sub_26AFD3084;
    v62[7] = v56;

    v62[8] = sub_26AFD30B8;
    v62[9] = v57;

    v62[10] = sub_26AFD314C;
    v62[11] = v58;

    v62[12] = sub_26AFD3184;
    v62[13] = v59;

    v62[14] = sub_26AFD31B8;
    v62[15] = v60;

    v62[16] = sub_26AFD324C;
    v62[17] = v61;
    sub_26AEA3B2C();

    if (os_log_type_enabled(log, v64))
    {
      v43 = sub_26B07A420();
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0, &unk_26B087440);
      v44 = sub_26AEA3B70(0, v42, v42);
      v45 = sub_26AEA3B70(3, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v111 = v43;
      v112 = v44;
      v113 = v45;
      sub_26AEA3BC4(2, &v111);
      sub_26AEA3BC4(3, &v111);
      v114 = sub_26AFD2F38;
      v115 = v53;
      sub_26AEA3BD8(&v114, &v111, &v112, &v113);
      v114 = sub_26AFD2F6C;
      v115 = v54;
      sub_26AEA3BD8(&v114, &v111, &v112, &v113);
      v114 = sub_26AFD304C;
      v115 = v55;
      sub_26AEA3BD8(&v114, &v111, &v112, &v113);
      v114 = sub_26AFD3084;
      v115 = v56;
      sub_26AEA3BD8(&v114, &v111, &v112, &v113);
      v114 = sub_26AFD30B8;
      v115 = v57;
      sub_26AEA3BD8(&v114, &v111, &v112, &v113);
      v114 = sub_26AFD314C;
      v115 = v58;
      sub_26AEA3BD8(&v114, &v111, &v112, &v113);
      v114 = sub_26AFD3184;
      v115 = v59;
      sub_26AEA3BD8(&v114, &v111, &v112, &v113);
      v114 = sub_26AFD31B8;
      v115 = v60;
      sub_26AEA3BD8(&v114, &v111, &v112, &v113);
      v114 = sub_26AFD324C;
      v115 = v61;
      sub_26AEA3BD8(&v114, &v111, &v112, &v113);
      _os_log_impl(&dword_26AE88000, log, v64, "%s.%s: No license agreement found for %s", v43, 0x20u);
      sub_26AEA3C24(v44, 0, v42);
      sub_26AEA3C24(v45, 3, MEMORY[0x277D84F70] + 8);
      sub_26B07A400();
    }

    else
    {
    }

    v40 = v102[16];
    v41 = v102[13];
    v39 = v102[14];
    v8 = MEMORY[0x277D82BD8](log);
    (*(v39 + 8))(v40, v41, v8);
    swift_unknownObjectRelease();
LABEL_23:

    v11 = *(v102[6] + 8);

    return v11(0);
  }

  v102[2] = v99;
  v102[3] = v100;
  swift_unknownObjectRelease();
  v102[4] = v99;
  v102[5] = v100;
  sub_26AEF51A4();
  if (sub_26B07A250())
  {
    sub_26AE96418(v99, v100);
    goto LABEL_15;
  }

  v79 = v102[12];
  v78 = v102[11];
  sub_26B078540();

  swift_unknownObjectRetain();
  v83 = swift_allocObject();
  *(v83 + 16) = v78;
  oslog = sub_26B078570();
  v96 = sub_26B07A2A0();
  v85 = swift_allocObject();
  *(v85 + 16) = 32;
  v86 = swift_allocObject();
  *(v86 + 16) = 8;
  v80 = swift_allocObject();
  *(v80 + 16) = sub_26AFD3258;
  *(v80 + 24) = v79;
  v81 = swift_allocObject();
  *(v81 + 16) = sub_26AFD3350;
  *(v81 + 24) = v80;
  v87 = swift_allocObject();
  *(v87 + 16) = sub_26AFD339C;
  *(v87 + 24) = v81;
  v88 = swift_allocObject();
  *(v88 + 16) = 32;
  v89 = swift_allocObject();
  *(v89 + 16) = 8;
  v82 = swift_allocObject();
  *(v82 + 16) = sub_26AFCEC30;
  *(v82 + 24) = 0;
  v90 = swift_allocObject();
  *(v90 + 16) = sub_26AFD349C;
  *(v90 + 24) = v82;
  v91 = swift_allocObject();
  *(v91 + 16) = 32;
  v92 = swift_allocObject();
  *(v92 + 16) = 8;
  v84 = swift_allocObject();
  *(v84 + 16) = sub_26AFD32A0;
  *(v84 + 24) = v83;
  v93 = swift_allocObject();
  *(v93 + 16) = sub_26AFD359C;
  *(v93 + 24) = v84;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00, &unk_26B088A40);
  sub_26B07A760();
  v94 = v2;

  *v94 = sub_26AFD32D4;
  v94[1] = v85;

  v94[2] = sub_26AFD3308;
  v94[3] = v86;

  v94[4] = sub_26AFD33E8;
  v94[5] = v87;

  v94[6] = sub_26AFD3420;
  v94[7] = v88;

  v94[8] = sub_26AFD3454;
  v94[9] = v89;

  v94[10] = sub_26AFD34E8;
  v94[11] = v90;

  v94[12] = sub_26AFD3520;
  v94[13] = v91;

  v94[14] = sub_26AFD3554;
  v94[15] = v92;

  v94[16] = sub_26AFD35E8;
  v94[17] = v93;
  sub_26AEA3B2C();

  if (os_log_type_enabled(oslog, v96))
  {
    buf = sub_26B07A420();
    v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0, &unk_26B087440);
    v76 = sub_26AEA3B70(0, v74, v74);
    v77 = sub_26AEA3B70(3, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v116 = buf;
    v117 = v76;
    v118 = v77;
    sub_26AEA3BC4(2, &v116);
    sub_26AEA3BC4(3, &v116);
    v119 = sub_26AFD32D4;
    v120 = v85;
    sub_26AEA3BD8(&v119, &v116, &v117, &v118);
    v119 = sub_26AFD3308;
    v120 = v86;
    sub_26AEA3BD8(&v119, &v116, &v117, &v118);
    v119 = sub_26AFD33E8;
    v120 = v87;
    sub_26AEA3BD8(&v119, &v116, &v117, &v118);
    v119 = sub_26AFD3420;
    v120 = v88;
    sub_26AEA3BD8(&v119, &v116, &v117, &v118);
    v119 = sub_26AFD3454;
    v120 = v89;
    sub_26AEA3BD8(&v119, &v116, &v117, &v118);
    v119 = sub_26AFD34E8;
    v120 = v90;
    sub_26AEA3BD8(&v119, &v116, &v117, &v118);
    v119 = sub_26AFD3520;
    v120 = v91;
    sub_26AEA3BD8(&v119, &v116, &v117, &v118);
    v119 = sub_26AFD3554;
    v120 = v92;
    sub_26AEA3BD8(&v119, &v116, &v117, &v118);
    v119 = sub_26AFD35E8;
    v120 = v93;
    sub_26AEA3BD8(&v119, &v116, &v117, &v118);
    _os_log_impl(&dword_26AE88000, oslog, v96, "%s.%s: Presenting update Terms and Conditions sheet for %s locally", buf, 0x20u);
    sub_26AEA3C24(v76, 0, v74);
    sub_26AEA3C24(v77, 3, MEMORY[0x277D84F70] + 8);
    sub_26B07A400();
  }

  else
  {
  }

  v66 = v102[17];
  v67 = v102[13];
  v68 = v102[12];
  v69 = v102[11];
  v65 = v102[14];
  v3 = MEMORY[0x277D82BD8](oslog);
  (*(v65 + 8))(v66, v67, v3);
  v73 = sub_26B07A120();
  v102[25] = v73;
  v70 = sub_26B079D00("presentTermsLocally(for:)", 25, 1);
  v71 = v4;
  v102[26] = v4;

  swift_unknownObjectRetain();
  v72 = swift_task_alloc();
  v102[27] = v72;
  *(v72 + 16) = v68;
  *(v72 + 24) = v69;
  v5 = swift_task_alloc();
  v102[28] = v5;
  v6 = type metadata accessor for SUUIUserInteractionResponse(0);
  *v5 = v102[6];
  v5[1] = sub_26AFCE778;

  return MEMORY[0x2822007B8](v102 + 10, v73, v103, v70, v71, sub_26AFD35F4, v72, v6);
}

uint64_t sub_26AFCE778()
{
  v4 = *v0;
  *(*v0 + 48) = *v0;

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  v1 = *(v4 + 168);
  v2 = *(v4 + 160);

  return MEMORY[0x2822009F8](sub_26AFCE958, v2, v1);
}

uint64_t sub_26AFCE958()
{
  v1 = v0[24];
  v2 = v0[23];
  v0[6] = v0;
  v5 = v0[10];
  sub_26AE96418(v2, v1);
  swift_unknownObjectRelease();

  v3 = *(v0[6] + 8);

  return v3(v5);
}

uint64_t sub_26AFCEAB8(void *a1)
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  v3 = [a1 description];
  v4 = sub_26B079E00();
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](v3);
  return v4;
}

uint64_t sub_26AFCEB8C(void *a1)
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  v3 = [a1 description];
  v4 = sub_26B079E00();
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](v3);
  return v4;
}

uint64_t sub_26AFCEC60(void *a1)
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  v3 = [a1 description];
  v4 = sub_26B079E00();
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](v3);
  return v4;
}

uint64_t sub_26AFCECD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = a1;
  v18 = a2;
  *&v25 = a3;
  *(&v25 + 1) = sub_26AFD43CC;
  v34 = 0;
  v33 = 0;
  v32 = 0;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDFE0, &qword_26B08BAA8);
  v19 = *(v23 - 8);
  v20 = v23 - 8;
  v16 = v19;
  v17 = *(v19 + 64);
  v14 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v15);
  v22 = &v13 - v14;
  v34 = v3;
  v33 = v4;
  v32 = v5;
  v26 = *(v4 + 16);

  swift_unknownObjectRetain();

  swift_unknownObjectRetain();
  (*(v19 + 16))(v22, v15, v23);
  v21 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v6 = swift_allocObject();
  v7 = v19;
  v8 = v21;
  v9 = v22;
  v10 = v23;
  v11 = v25;
  v24 = v6;
  *(v6 + 16) = v18;
  *(v6 + 24) = v11;
  (*(v7 + 32))(v6 + v8, v9, v10);
  v27 = v25;
  v28 = v24;
  v29 = 0;
  v30 = 0;
  v31 = 2;
  ReactiveUIManager.presentedDialog.setter(&v27);
}

uint64_t sub_26AFCEEFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v73 = a1;
  v77 = a2;
  v71 = a3;
  v65 = a4;
  v74 = sub_26AFD44D4;
  v76 = sub_26AFD4458;
  v78 = sub_26AFD4620;
  v80 = sub_26AFD466C;
  v82 = sub_26AFCFFD8;
  v83 = sub_26AFD476C;
  v85 = sub_26AFD44A0;
  v87 = sub_26AFD486C;
  v92 = sub_26AFD451C;
  v96 = sub_26AFD496C;
  v98 = sub_26AFD45A4;
  v100 = sub_26AFD45D8;
  v102 = sub_26AFD46B8;
  v104 = sub_26AFD46F0;
  v106 = sub_26AFD4724;
  v108 = sub_26AFD47B8;
  v110 = sub_26AFD47F0;
  v112 = sub_26AFD4824;
  v114 = sub_26AFD48B8;
  v116 = sub_26AFD48F0;
  v118 = sub_26AFD4924;
  v121 = sub_26AFD49B8;
  v136 = 0;
  v135 = 0;
  v134 = 0;
  v133 = 0;
  v64 = 0;
  v66 = sub_26B078580();
  v67 = *(v66 - 8);
  v68 = v66 - 8;
  v69 = (*(v67 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v73);
  v70 = v55 - v69;
  v136 = v4;
  v135 = v5;
  v134 = v6;
  v133 = v7;
  sub_26B078540();

  swift_unknownObjectRetain();
  v72 = 24;
  v94 = 7;
  v86 = swift_allocObject();
  *(v86 + 16) = v71;
  v75 = swift_allocObject();
  *(v75 + 16) = v73;

  v93 = 32;
  v8 = swift_allocObject();
  v9 = v75;
  v95 = v8;
  *(v8 + 16) = v74;
  *(v8 + 24) = v9;

  v125 = sub_26B078570();
  v126 = sub_26B07A2A0();
  v90 = 17;
  v99 = swift_allocObject();
  v89 = 32;
  *(v99 + 16) = 32;
  v101 = swift_allocObject();
  v91 = 8;
  *(v101 + 16) = 8;
  v10 = swift_allocObject();
  v11 = v77;
  v79 = v10;
  *(v10 + 16) = v76;
  *(v10 + 24) = v11;
  v12 = swift_allocObject();
  v13 = v79;
  v81 = v12;
  *(v12 + 16) = v78;
  *(v12 + 24) = v13;
  v14 = swift_allocObject();
  v15 = v81;
  v103 = v14;
  *(v14 + 16) = v80;
  *(v14 + 24) = v15;
  v105 = swift_allocObject();
  *(v105 + 16) = v89;
  v107 = swift_allocObject();
  *(v107 + 16) = v91;
  v16 = swift_allocObject();
  v84 = v16;
  *(v16 + 16) = v82;
  *(v16 + 24) = 0;
  v17 = swift_allocObject();
  v18 = v84;
  v109 = v17;
  *(v17 + 16) = v83;
  *(v17 + 24) = v18;
  v111 = swift_allocObject();
  *(v111 + 16) = v89;
  v113 = swift_allocObject();
  *(v113 + 16) = v91;
  v19 = swift_allocObject();
  v20 = v86;
  v88 = v19;
  *(v19 + 16) = v85;
  *(v19 + 24) = v20;
  v21 = swift_allocObject();
  v22 = v88;
  v115 = v21;
  *(v21 + 16) = v87;
  *(v21 + 24) = v22;
  v117 = swift_allocObject();
  *(v117 + 16) = v89;
  v119 = swift_allocObject();
  *(v119 + 16) = v91;
  v23 = swift_allocObject();
  v24 = v95;
  v97 = v23;
  *(v23 + 16) = v92;
  *(v23 + 24) = v24;
  v25 = swift_allocObject();
  v26 = v97;
  v122 = v25;
  *(v25 + 16) = v96;
  *(v25 + 24) = v26;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00, &unk_26B088A40);
  v120 = sub_26B07A760();
  v123 = v27;

  v28 = v99;
  v29 = v123;
  *v123 = v98;
  v29[1] = v28;

  v30 = v101;
  v31 = v123;
  v123[2] = v100;
  v31[3] = v30;

  v32 = v103;
  v33 = v123;
  v123[4] = v102;
  v33[5] = v32;

  v34 = v105;
  v35 = v123;
  v123[6] = v104;
  v35[7] = v34;

  v36 = v107;
  v37 = v123;
  v123[8] = v106;
  v37[9] = v36;

  v38 = v109;
  v39 = v123;
  v123[10] = v108;
  v39[11] = v38;

  v40 = v111;
  v41 = v123;
  v123[12] = v110;
  v41[13] = v40;

  v42 = v113;
  v43 = v123;
  v123[14] = v112;
  v43[15] = v42;

  v44 = v115;
  v45 = v123;
  v123[16] = v114;
  v45[17] = v44;

  v46 = v117;
  v47 = v123;
  v123[18] = v116;
  v47[19] = v46;

  v48 = v119;
  v49 = v123;
  v123[20] = v118;
  v49[21] = v48;

  v50 = v122;
  v51 = v123;
  v123[22] = v121;
  v51[23] = v50;
  sub_26AEA3B2C();

  if (os_log_type_enabled(v125, v126))
  {
    v52 = v64;
    v57 = sub_26B07A420();
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0, &unk_26B087440);
    v58 = sub_26AEA3B70(0, v56, v56);
    v59 = sub_26AEA3B70(4, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v60 = &v131;
    v131 = v57;
    v61 = &v130;
    v130 = v58;
    v62 = &v129;
    v129 = v59;
    sub_26AEA3BC4(2, &v131);
    sub_26AEA3BC4(4, v60);
    v127 = v98;
    v128 = v99;
    sub_26AEA3BD8(&v127, v60, v61, v62);
    v63 = v52;
    if (v52)
    {

      __break(1u);
    }

    else
    {
      v127 = v100;
      v128 = v101;
      sub_26AEA3BD8(&v127, &v131, &v130, &v129);
      v55[11] = 0;
      v127 = v102;
      v128 = v103;
      sub_26AEA3BD8(&v127, &v131, &v130, &v129);
      v55[10] = 0;
      v127 = v104;
      v128 = v105;
      sub_26AEA3BD8(&v127, &v131, &v130, &v129);
      v55[9] = 0;
      v127 = v106;
      v128 = v107;
      sub_26AEA3BD8(&v127, &v131, &v130, &v129);
      v55[8] = 0;
      v127 = v108;
      v128 = v109;
      sub_26AEA3BD8(&v127, &v131, &v130, &v129);
      v55[7] = 0;
      v127 = v110;
      v128 = v111;
      sub_26AEA3BD8(&v127, &v131, &v130, &v129);
      v55[6] = 0;
      v127 = v112;
      v128 = v113;
      sub_26AEA3BD8(&v127, &v131, &v130, &v129);
      v55[5] = 0;
      v127 = v114;
      v128 = v115;
      sub_26AEA3BD8(&v127, &v131, &v130, &v129);
      v55[4] = 0;
      v127 = v116;
      v128 = v117;
      sub_26AEA3BD8(&v127, &v131, &v130, &v129);
      v55[3] = 0;
      v127 = v118;
      v128 = v119;
      sub_26AEA3BD8(&v127, &v131, &v130, &v129);
      v55[2] = 0;
      v127 = v121;
      v128 = v122;
      sub_26AEA3BD8(&v127, &v131, &v130, &v129);
      _os_log_impl(&dword_26AE88000, v125, v126, "%s.%s: Terms and Conditions sheet dismissed for %s with response %s", v57, 0x2Au);
      sub_26AEA3C24(v58, 0, v56);
      sub_26AEA3C24(v59, 4, MEMORY[0x277D84F70] + 8);
      sub_26B07A400();
    }
  }

  else
  {
  }

  v53 = MEMORY[0x277D82BD8](v125);
  (*(v67 + 8))(v70, v66, v53);
  v55[1] = &v132;
  v132 = v73;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDFE0, &qword_26B08BAA8);
  return sub_26B07A0E0();
}

uint64_t sub_26AFD0008(void *a1)
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  v3 = [a1 description];
  v4 = sub_26B079E00();
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](v3);
  return v4;
}

uint64_t sub_26AFD0088(uint64_t a1)
{
  v233 = a1;
  v197 = sub_26AFD3680;
  v198 = sub_26AFD3730;
  v199 = sub_26AFD377C;
  v200 = sub_26AFD21D0;
  v201 = sub_26AFD387C;
  v202 = sub_26AFD36B4;
  v203 = sub_26AFD36E8;
  v204 = sub_26AFD37C8;
  v205 = sub_26AFD3800;
  v206 = sub_26AFD3834;
  v207 = sub_26AFD38C8;
  v208 = sub_26AFD38D4;
  v209 = sub_26AFD3984;
  v210 = sub_26AFD39D0;
  v211 = sub_26AFD2174;
  v212 = sub_26AFD3AD0;
  v213 = sub_26AFD3908;
  v214 = sub_26AFD393C;
  v215 = sub_26AFD3A1C;
  v216 = sub_26AFD3A54;
  v217 = sub_26AFD3A88;
  v218 = sub_26AFD3B1C;
  v219 = sub_26AFD3B28;
  v220 = sub_26AFD3BD8;
  v221 = sub_26AFD3C24;
  v222 = sub_26AFD2118;
  v223 = sub_26AFD3D24;
  v224 = sub_26AFD3B5C;
  v225 = sub_26AFD3B90;
  v226 = sub_26AFD3C70;
  v227 = sub_26AFD3CA8;
  v228 = sub_26AFD3CDC;
  v229 = sub_26AFD3D70;
  v230 = "Fatal error";
  v231 = "SoftwareUpdateUIKit/ReactiveTermsAndConditionsService.swift";
  v262 = 0;
  v261 = 0;
  v232 = 0;
  v234 = sub_26B078580();
  v235 = *(v234 - 8);
  v236 = v234 - 8;
  v237 = (*(v235 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v233);
  v238 = &v86 - v237;
  v239 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v240 = &v86 - v239;
  v241 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v242 = &v86 - v241;
  v262 = v6;
  v261 = v1;
  if (v6)
  {
    if (v233 == 1)
    {
      sub_26B078540();

      v161 = sub_26B078570();
      v162 = sub_26B07A2A0();
      v147 = 17;
      v150 = 7;
      v152 = swift_allocObject();
      v146 = 32;
      *(v152 + 16) = 32;
      v153 = swift_allocObject();
      v148 = 8;
      *(v153 + 16) = 8;
      v149 = 32;
      v31 = swift_allocObject();
      v32 = v196;
      v144 = v31;
      *(v31 + 16) = v208;
      *(v31 + 24) = v32;
      v33 = swift_allocObject();
      v34 = v144;
      v145 = v33;
      *(v33 + 16) = v209;
      *(v33 + 24) = v34;
      v35 = swift_allocObject();
      v36 = v145;
      v154 = v35;
      *(v35 + 16) = v210;
      *(v35 + 24) = v36;
      v155 = swift_allocObject();
      *(v155 + 16) = v146;
      v156 = swift_allocObject();
      *(v156 + 16) = v148;
      v37 = swift_allocObject();
      v151 = v37;
      *(v37 + 16) = v211;
      *(v37 + 24) = 0;
      v38 = swift_allocObject();
      v39 = v151;
      v158 = v38;
      *(v38 + 16) = v212;
      *(v38 + 24) = v39;
      v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00, &unk_26B088A40);
      v157 = sub_26B07A760();
      v159 = v40;

      v41 = v152;
      v42 = v159;
      *v159 = v213;
      v42[1] = v41;

      v43 = v153;
      v44 = v159;
      v159[2] = v214;
      v44[3] = v43;

      v45 = v154;
      v46 = v159;
      v159[4] = v215;
      v46[5] = v45;

      v47 = v155;
      v48 = v159;
      v159[6] = v216;
      v48[7] = v47;

      v49 = v156;
      v50 = v159;
      v159[8] = v217;
      v50[9] = v49;

      v51 = v158;
      v52 = v159;
      v159[10] = v218;
      v52[11] = v51;
      sub_26AEA3B2C();

      if (os_log_type_enabled(v161, v162))
      {
        v53 = v232;
        v136 = sub_26B07A420();
        v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0, &unk_26B087440);
        v137 = sub_26AEA3B70(0, v135, v135);
        v138 = sub_26AEA3B70(2, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v140 = &v252;
        v252 = v136;
        v141 = &v251;
        v251 = v137;
        v142 = &v250;
        v250 = v138;
        v139 = 2;
        sub_26AEA3BC4(2, &v252);
        sub_26AEA3BC4(v139, v140);
        v248 = v213;
        v249 = v152;
        sub_26AEA3BD8(&v248, v140, v141, v142);
        v143 = v53;
        if (v53)
        {

          __break(1u);
        }

        else
        {
          v248 = v214;
          v249 = v153;
          sub_26AEA3BD8(&v248, &v252, &v251, &v250);
          v134 = 0;
          v248 = v215;
          v249 = v154;
          sub_26AEA3BD8(&v248, &v252, &v251, &v250);
          v133 = 0;
          v248 = v216;
          v249 = v155;
          sub_26AEA3BD8(&v248, &v252, &v251, &v250);
          v132 = 0;
          v248 = v217;
          v249 = v156;
          sub_26AEA3BD8(&v248, &v252, &v251, &v250);
          v131 = 0;
          v248 = v218;
          v249 = v158;
          sub_26AEA3BD8(&v248, &v252, &v251, &v250);
          _os_log_impl(&dword_26AE88000, v161, v162, "%s.%s: User disagreed to terms and conditions", v136, 0x16u);
          sub_26AEA3C24(v137, 0, v135);
          sub_26AEA3C24(v138, 2, MEMORY[0x277D84F70] + 8);
          sub_26B07A400();
        }
      }

      else
      {
      }

      v54 = MEMORY[0x277D82BD8](v161);
      (*(v235 + 8))(v240, v234, v54);
      v130 = [objc_opt_self() sharedInstance];
      [v130 reportUserAction_];
      MEMORY[0x277D82BD8](v130);
    }

    else if (v233 == 2)
    {
      sub_26B078540();

      v128 = sub_26B078570();
      v129 = sub_26B07A2A0();
      v114 = 17;
      v117 = 7;
      v119 = swift_allocObject();
      v113 = 32;
      *(v119 + 16) = 32;
      v120 = swift_allocObject();
      v115 = 8;
      *(v120 + 16) = 8;
      v116 = 32;
      v55 = swift_allocObject();
      v56 = v196;
      v111 = v55;
      *(v55 + 16) = v197;
      *(v55 + 24) = v56;
      v57 = swift_allocObject();
      v58 = v111;
      v112 = v57;
      *(v57 + 16) = v198;
      *(v57 + 24) = v58;
      v59 = swift_allocObject();
      v60 = v112;
      v121 = v59;
      *(v59 + 16) = v199;
      *(v59 + 24) = v60;
      v122 = swift_allocObject();
      *(v122 + 16) = v113;
      v123 = swift_allocObject();
      *(v123 + 16) = v115;
      v61 = swift_allocObject();
      v118 = v61;
      *(v61 + 16) = v200;
      *(v61 + 24) = 0;
      v62 = swift_allocObject();
      v63 = v118;
      v125 = v62;
      *(v62 + 16) = v201;
      *(v62 + 24) = v63;
      v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00, &unk_26B088A40);
      v124 = sub_26B07A760();
      v126 = v64;

      v65 = v119;
      v66 = v126;
      *v126 = v202;
      v66[1] = v65;

      v67 = v120;
      v68 = v126;
      v126[2] = v203;
      v68[3] = v67;

      v69 = v121;
      v70 = v126;
      v126[4] = v204;
      v70[5] = v69;

      v71 = v122;
      v72 = v126;
      v126[6] = v205;
      v72[7] = v71;

      v73 = v123;
      v74 = v126;
      v126[8] = v206;
      v74[9] = v73;

      v75 = v125;
      v76 = v126;
      v126[10] = v207;
      v76[11] = v75;
      sub_26AEA3B2C();

      if (os_log_type_enabled(v128, v129))
      {
        v77 = v232;
        v103 = sub_26B07A420();
        v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0, &unk_26B087440);
        v104 = sub_26AEA3B70(0, v102, v102);
        v105 = sub_26AEA3B70(2, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v107 = &v257;
        v257 = v103;
        v108 = &v256;
        v256 = v104;
        v109 = &v255;
        v255 = v105;
        v106 = 2;
        sub_26AEA3BC4(2, &v257);
        sub_26AEA3BC4(v106, v107);
        v253 = v202;
        v254 = v119;
        sub_26AEA3BD8(&v253, v107, v108, v109);
        v110 = v77;
        if (v77)
        {

          __break(1u);
        }

        else
        {
          v253 = v203;
          v254 = v120;
          sub_26AEA3BD8(&v253, &v257, &v256, &v255);
          v101 = 0;
          v253 = v204;
          v254 = v121;
          sub_26AEA3BD8(&v253, &v257, &v256, &v255);
          v100 = 0;
          v253 = v205;
          v254 = v122;
          sub_26AEA3BD8(&v253, &v257, &v256, &v255);
          v99 = 0;
          v253 = v206;
          v254 = v123;
          sub_26AEA3BD8(&v253, &v257, &v256, &v255);
          v98 = 0;
          v253 = v207;
          v254 = v125;
          sub_26AEA3BD8(&v253, &v257, &v256, &v255);
          _os_log_impl(&dword_26AE88000, v128, v129, "%s.%s: User canceled the terms and conditions", v103, 0x16u);
          sub_26AEA3C24(v104, 0, v102);
          sub_26AEA3C24(v105, 2, MEMORY[0x277D84F70] + 8);
          sub_26B07A400();
        }
      }

      else
      {
      }

      v78 = MEMORY[0x277D82BD8](v128);
      (*(v235 + 8))(v238, v234, v78);
      v97 = [objc_opt_self() sharedInstance];
      [v97 reportUserAction_];
      MEMORY[0x277D82BD8](v97);
    }

    else
    {
      v87 = 37;
      v79 = sub_26B07A740();
      v94 = &v259;
      v259 = v79;
      v260 = v80;
      v92 = 1;
      v81 = sub_26B079D00("Unknown SUUIUserInteractionResponse: ", v87, 1);
      v88 = v82;
      MEMORY[0x26D66D910](v81);

      v90 = &v258;
      v258 = v233;
      v91 = 0;
      v89 = type metadata accessor for SUUIUserInteractionResponse(0);
      sub_26AFD3600();
      sub_26B07A710();
      v83 = sub_26B079D00("", v91, v92 & 1);
      v93 = v84;
      MEMORY[0x26D66D910](v83);

      v96 = v259;
      v95 = v260;
      sub_26B078640();
      sub_26AEB9F6C(v94);
      sub_26B079EB0();
      sub_26B07A660();
      __break(1u);
    }
  }

  else
  {
    sub_26B078540();

    v194 = sub_26B078570();
    v195 = sub_26B07A2A0();
    v180 = 17;
    v183 = 7;
    v185 = swift_allocObject();
    v179 = 32;
    *(v185 + 16) = 32;
    v186 = swift_allocObject();
    v181 = 8;
    *(v186 + 16) = 8;
    v182 = 32;
    v7 = swift_allocObject();
    v8 = v196;
    v177 = v7;
    *(v7 + 16) = v219;
    *(v7 + 24) = v8;
    v9 = swift_allocObject();
    v10 = v177;
    v178 = v9;
    *(v9 + 16) = v220;
    *(v9 + 24) = v10;
    v11 = swift_allocObject();
    v12 = v178;
    v187 = v11;
    *(v11 + 16) = v221;
    *(v11 + 24) = v12;
    v188 = swift_allocObject();
    *(v188 + 16) = v179;
    v189 = swift_allocObject();
    *(v189 + 16) = v181;
    v13 = swift_allocObject();
    v184 = v13;
    *(v13 + 16) = v222;
    *(v13 + 24) = 0;
    v14 = swift_allocObject();
    v15 = v184;
    v191 = v14;
    *(v14 + 16) = v223;
    *(v14 + 24) = v15;
    v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00, &unk_26B088A40);
    v190 = sub_26B07A760();
    v192 = v16;

    v17 = v185;
    v18 = v192;
    *v192 = v224;
    v18[1] = v17;

    v19 = v186;
    v20 = v192;
    v192[2] = v225;
    v20[3] = v19;

    v21 = v187;
    v22 = v192;
    v192[4] = v226;
    v22[5] = v21;

    v23 = v188;
    v24 = v192;
    v192[6] = v227;
    v24[7] = v23;

    v25 = v189;
    v26 = v192;
    v192[8] = v228;
    v26[9] = v25;

    v27 = v191;
    v28 = v192;
    v192[10] = v229;
    v28[11] = v27;
    sub_26AEA3B2C();

    if (os_log_type_enabled(v194, v195))
    {
      v29 = v232;
      v169 = sub_26B07A420();
      v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0, &unk_26B087440);
      v170 = sub_26AEA3B70(0, v168, v168);
      v171 = sub_26AEA3B70(2, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v173 = &v247;
      v247 = v169;
      v174 = &v246;
      v246 = v170;
      v175 = &v245;
      v245 = v171;
      v172 = 2;
      sub_26AEA3BC4(2, &v247);
      sub_26AEA3BC4(v172, v173);
      v243 = v224;
      v244 = v185;
      sub_26AEA3BD8(&v243, v173, v174, v175);
      v176 = v29;
      if (v29)
      {

        __break(1u);
      }

      else
      {
        v243 = v225;
        v244 = v186;
        sub_26AEA3BD8(&v243, &v247, &v246, &v245);
        v167 = 0;
        v243 = v226;
        v244 = v187;
        sub_26AEA3BD8(&v243, &v247, &v246, &v245);
        v166 = 0;
        v243 = v227;
        v244 = v188;
        sub_26AEA3BD8(&v243, &v247, &v246, &v245);
        v165 = 0;
        v243 = v228;
        v244 = v189;
        sub_26AEA3BD8(&v243, &v247, &v246, &v245);
        v164 = 0;
        v243 = v229;
        v244 = v191;
        sub_26AEA3BD8(&v243, &v247, &v246, &v245);
        _os_log_impl(&dword_26AE88000, v194, v195, "%s.%s: User agreed to terms and conditions", v169, 0x16u);
        sub_26AEA3C24(v170, 0, v168);
        sub_26AEA3C24(v171, 2, MEMORY[0x277D84F70] + 8);
        sub_26B07A400();
      }
    }

    else
    {
    }

    v30 = MEMORY[0x277D82BD8](v194);
    (*(v235 + 8))(v242, v234, v30);
    v163 = [objc_opt_self() sharedInstance];
    [v163 reportUserAction_];
    MEMORY[0x277D82BD8](v163);
  }

  return v233;
}

uint64_t sub_26AFD231C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_allocError();
  (*(*(a4 - 8) + 32))(v5, a1);
  return swift_continuation_throwingResumeWithError();
}

unint64_t sub_26AFD3600()
{
  v2 = qword_2803DDFD0;
  if (!qword_2803DDFD0)
  {
    type metadata accessor for SUUIUserInteractionResponse(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DDFD0);
    return WitnessTable;
  }

  return v2;
}

uint64_t dispatch thunk of ReactiveTermsAndConditionsService.presentTermsAndConditionsSheet(for:)(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = (*(*v1 + 96) + **(*v1 + 96));
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_26AFD3F34;

  return v6(a1);
}

uint64_t sub_26AFD3F34(uint64_t a1)
{
  v4 = *v1;
  *(v4 + 16) = *v1;

  v2 = *(*(v4 + 16) + 8);

  return v2(a1);
}

uint64_t dispatch thunk of ReactiveTermsAndConditionsService.presentTermsLocally(for:)(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = (*(*v1 + 104) + **(*v1 + 104));
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_26AFD41A0;

  return v6(a1);
}

uint64_t sub_26AFD41A0(uint64_t a1)
{
  v4 = *v1;
  *(v4 + 16) = *v1;

  v2 = *(*(v4 + 16) + 8);

  return v2(a1);
}

uint64_t sub_26AFD42D0()
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDFE0, &qword_26B08BAA8);
  v2 = *(v4 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v4);
  return swift_deallocObject();
}

uint64_t sub_26AFD43CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDFE0, &qword_26B08BAA8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = v1 + ((*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80));

  return sub_26AFCEEFC(a1, v3, v4, v5);
}

uint64_t sub_26AFD451C()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = type metadata accessor for SUUIUserInteractionResponse(0);
  v1 = sub_26AFD3600();

  return sub_26AEB6A60(v5, v3, v4, v1);
}

uint64_t *sub_26AFD49C4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a3;
  v26 = a2;
  v27 = a1;
  v28 = a4;
  v29 = a3 & 0xFFFFFFFFFFFFFFFELL;
  if (a2 == 1)
  {
    TupleTypeMetadata = *(v25 & 0xFFFFFFFFFFFFFFFELL);
    v24 = 0;
  }

  else
  {
    v20 = &v10;
    MEMORY[0x28223BE20](&v10);
    v21 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    for (i = 0; ; i = v5 + 1)
    {
      v19 = i;
      if (i >= v26)
      {
        break;
      }

      v5 = v19;
      *&v21[8 * v19] = *((v25 & 0xFFFFFFFFFFFFFFFELL) + 8 * v19);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v24 = v6;
  }

  v15 = TupleTypeMetadata;
  v17 = *(*(TupleTypeMetadata - 8) + 64);
  v16 = &v10;
  v7.n128_f64[0] = MEMORY[0x28223BE20](&v10);
  v18 = &v10 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v8)
  {
    for (j = 0; ; j = v10)
    {
      v12 = j;
      v13 = *((v25 & 0xFFFFFFFFFFFFFFFELL) + 8 * j);
      v11 = v26 == 1 ? 0 : *(v15 + 16 * v12 + 32);
      (*(*(v13 - 8) + 16))(&v18[v11], *(v27 + 8 * v12), v7);
      v10 = v12 + 1;
      if (v12 + 1 == v26)
      {
        break;
      }
    }
  }

  sub_26B079BC0();
  return v16;
}

uint64_t UpdateOptionsView.presentedDescriptor.getter()
{
  v11 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE20, &unk_26B08D230);
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v0 = MEMORY[0x28223BE20](v8);
  v7 = &v3 - v4;
  v11 = v1;
  (*(v5 + 16))(&v3 - v4, v0);
  sub_26B079AD0();
  v9 = v10;
  (*(v5 + 8))(v7, v8);
  return v9;
}

uint64_t sub_26AFD4DA4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v8 = a2;
  v6 = a1;
  v7 = (*(*(type metadata accessor for UpdateOptionsView(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6);
  v9 = &v6 - v7;
  sub_26AFDD854(v2, &v6 - v7);
  updated = UpdateOptionsView.presentedDescriptor.getter();
  v4 = v9;
  *v8 = updated;
  return sub_26AFDDE44(v4);
}

uint64_t sub_26AFD4E4C(uint64_t *a1)
{
  v2 = *a1;

  return UpdateOptionsView.presentedDescriptor.setter(v2);
}

uint64_t UpdateOptionsView.presentedDescriptor.setter(uint64_t a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE20, &unk_26B08D230);
  sub_26B079AE0();
}

void (*UpdateOptionsView.presentedDescriptor.modify(void *a1))(void **a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL, 6210);
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE20, &unk_26B08D230);
  v2[4] = sub_26B079AC0();
  return sub_26AFD4F98;
}

void sub_26AFD4F98(void **a1)
{
  v1 = *a1;
  v1[4](v1, 0);
  free(v1);
}

uint64_t UpdateOptionsView.$presentedDescriptor.getter@<X0>(uint64_t a1@<X8>)
{
  v6 = a1;
  v11 = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE20, &unk_26B08D230);
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x28223BE20](v10);
  v9 = &v4 - v5;
  v11 = v2;
  (*(v7 + 16))(&v4 - v5, v1);
  sub_26B079AF0();
  return (*(v7 + 8))(v9, v10);
}

uint64_t sub_26AFD5198(uint64_t a1)
{
  v12 = a1;
  v14 = 0;
  v13 = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE20, &unk_26B08D230);
  v9 = *(v11 - 8);
  v10 = v11 - 8;
  v6 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v11);
  v7 = &v5 - v6;
  v14 = v3;
  v13 = v1;
  (*(v9 + 16))(v2);
  (*(v9 + 40))(v8, v7, v11);
  return (*(v9 + 8))(v12, v11);
}

uint64_t sub_26AFD52CC()
{
  type metadata accessor for UpdateOptionsView(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DB510, &qword_26B086040);
  sub_26B078A10();

  return v1;
}

uint64_t type metadata accessor for UpdateOptionsView(uint64_t a1)
{
  v2 = qword_2803DE1C0;
  if (!qword_2803DE1C0)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_26AFD53DC()
{
  v2 = *(v0 + *(type metadata accessor for UpdateOptionsView(0) + 20));

  return v2;
}

uint64_t sub_26AFD5430(uint64_t a1, char a2)
{

  v3 = v2 + *(type metadata accessor for UpdateOptionsView(0) + 20);
  *v3 = a1;
  *(v3 + 8) = a2 & 1;
}

void *sub_26AFD54BC@<X0>(void *a1@<X8>)
{
  v8 = 0;
  updated = type metadata accessor for UpdateOptionsView(0);
  memcpy(__dst, (v1 + *(updated + 24)), 0x111uLL);
  sub_26AFD5588(__dst, v7);
  memcpy(v6, __dst, sizeof(v6));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDFF0, &qword_26B08E3E0);
  sub_26B078A10();
  memcpy(v10, v5, sizeof(v10));
  sub_26AFD5AA8(__dst);
  return memcpy(a1, v10, 0x110uLL);
}

uint64_t sub_26AFD5588(uint64_t *a1, uint64_t a2)
{
  v13 = *a1;
  v32 = a1[1];
  v33 = a1[2];
  v34 = a1[3];
  v35 = a1[4];
  v36 = a1[5];
  v37 = a1[6];
  v31 = a1[7];
  v2 = a1[8];
  v3 = a1[9];
  v4 = a1[10];
  v5 = a1[11];
  v6 = a1[12];
  v7 = a1[13];
  v8 = a1[14];
  v9 = a1[15];
  v10 = a1[16];
  v11 = a1[17];
  v14 = a1[18];
  v15 = a1[19];
  v16 = a1[20];
  v17 = a1[21];
  v18 = a1[22];
  v19 = a1[23];
  v20 = a1[24];
  v21 = a1[25];
  v22 = a1[26];
  v23 = a1[27];
  v24 = a1[28];
  v25 = a1[29];
  v26 = a1[30];
  v27 = a1[31];
  v28 = a1[32];
  v29 = a1[33];
  v38 = *(a1 + 272);
  sub_26AFD5850(*a1, v32, v33, v34, v35, v36, v37, v31, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v38);
  result = a2;
  *a2 = v13;
  *(a2 + 8) = v32;
  *(a2 + 16) = v33;
  *(a2 + 24) = v34;
  *(a2 + 32) = v35;
  *(a2 + 40) = v36;
  *(a2 + 48) = v37;
  *(a2 + 56) = v31;
  *(a2 + 64) = v2;
  *(a2 + 72) = v3;
  *(a2 + 80) = v4;
  *(a2 + 88) = v5;
  *(a2 + 96) = v6;
  *(a2 + 104) = v7;
  *(a2 + 112) = v8;
  *(a2 + 120) = v9;
  *(a2 + 128) = v10;
  *(a2 + 136) = v11;
  *(a2 + 144) = v14;
  *(a2 + 152) = v15;
  *(a2 + 160) = v16;
  *(a2 + 168) = v17;
  *(a2 + 176) = v18;
  *(a2 + 184) = v19;
  *(a2 + 192) = v20;
  *(a2 + 200) = v21;
  *(a2 + 208) = v22;
  *(a2 + 216) = v23;
  *(a2 + 224) = v24;
  *(a2 + 232) = v25;
  *(a2 + 240) = v26;
  *(a2 + 248) = v27;
  *(a2 + 256) = v28;
  *(a2 + 264) = v29;
  *(a2 + 272) = v38 & 1;
  return result;
}

uint64_t sub_26AFD5850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  if (a35)
  {
    sub_26B078640();
    sub_26B078640();

    sub_26B078640();
    sub_26B078640();

    MEMORY[0x277D82BE0](a23);
    MEMORY[0x277D82BE0](a24);
  }
}

uint64_t sub_26AFD5C30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  if (a35)
  {

    MEMORY[0x277D82BD8](a23);
    MEMORY[0x277D82BD8](a24);
  }
}

uint64_t *sub_26AFD5EC8(uint64_t *a1)
{
  v6 = 0;
  v7 = a1;
  sub_26AFD5588(a1, v5);
  updated = type metadata accessor for UpdateOptionsView(0);
  sub_26AFD5F30(a1, v1 + *(updated + 24));
  result = a1;
  sub_26AFD5AA8(a1);
  return result;
}

uint64_t sub_26AFD5F30(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v31 = a1[1];
  v32 = a1[2];
  v33 = a1[3];
  v34 = a1[4];
  v35 = a1[5];
  v36 = a1[6];
  v37 = a1[7];
  v38 = a1[8];
  v39 = a1[9];
  v40 = a1[10];
  v41 = a1[11];
  v42 = a1[12];
  v43 = a1[13];
  v44 = a1[14];
  v45 = a1[15];
  v46 = a1[16];
  v47 = a1[17];
  v48 = a1[18];
  v49 = a1[19];
  v50 = a1[20];
  v51 = a1[21];
  v52 = a1[22];
  v53 = a1[23];
  v54 = a1[24];
  v55 = a1[25];
  v56 = a1[26];
  v57 = a1[27];
  v58 = a1[28];
  v59 = a1[29];
  v60 = a1[30];
  v61 = a1[31];
  v62 = a1[32];
  v63 = a1[33];
  v3 = *(a1 + 272);
  v4 = *a2;
  v65 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  v10 = *(a2 + 56);
  v64 = *(a2 + 64);
  v66 = *(a2 + 72);
  v67 = *(a2 + 80);
  v68 = *(a2 + 88);
  v69 = *(a2 + 96);
  v70 = *(a2 + 104);
  v71 = *(a2 + 112);
  v11 = *(a2 + 120);
  v12 = *(a2 + 128);
  v13 = *(a2 + 136);
  v14 = *(a2 + 144);
  v15 = *(a2 + 152);
  v16 = *(a2 + 160);
  v17 = *(a2 + 168);
  v18 = *(a2 + 176);
  v19 = *(a2 + 184);
  v20 = *(a2 + 192);
  v21 = *(a2 + 200);
  v22 = *(a2 + 208);
  v23 = *(a2 + 216);
  v24 = *(a2 + 224);
  v25 = *(a2 + 232);
  v26 = *(a2 + 240);
  v27 = *(a2 + 248);
  v28 = *(a2 + 256);
  v29 = *(a2 + 264);
  v72 = *(a2 + 272);
  *a2 = v2;
  *(a2 + 8) = v31;
  *(a2 + 16) = v32;
  *(a2 + 24) = v33;
  *(a2 + 32) = v34;
  *(a2 + 40) = v35;
  *(a2 + 48) = v36;
  *(a2 + 56) = v37;
  *(a2 + 64) = v38;
  *(a2 + 72) = v39;
  *(a2 + 80) = v40;
  *(a2 + 88) = v41;
  *(a2 + 96) = v42;
  *(a2 + 104) = v43;
  *(a2 + 112) = v44;
  *(a2 + 120) = v45;
  *(a2 + 128) = v46;
  *(a2 + 136) = v47;
  *(a2 + 144) = v48;
  *(a2 + 152) = v49;
  *(a2 + 160) = v50;
  *(a2 + 168) = v51;
  *(a2 + 176) = v52;
  *(a2 + 184) = v53;
  *(a2 + 192) = v54;
  *(a2 + 200) = v55;
  *(a2 + 208) = v56;
  *(a2 + 216) = v57;
  *(a2 + 224) = v58;
  *(a2 + 232) = v59;
  *(a2 + 240) = v60;
  *(a2 + 248) = v61;
  *(a2 + 256) = v62;
  *(a2 + 264) = v63;
  *(a2 + 272) = v3 & 1;
  sub_26AFD5C30(v4, v65, v5, v6, v7, v8, v9, v10, v64, v66, v67, v68, v69, v70, v71, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v72);
  return a2;
}

uint64_t sub_26AFD6378()
{
  v2 = *(v0 + *(type metadata accessor for UpdateOptionsView(0) + 28));

  return v2;
}

void *sub_26AFD63C8@<X0>(void *a1@<X8>)
{
  v8 = 0;
  updated = type metadata accessor for UpdateOptionsView(0);
  memcpy(__dst, (v1 + *(updated + 32)), 0x59uLL);
  sub_26AFD6494(__dst, v7);
  memcpy(v6, __dst, sizeof(v6));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDFF8, &qword_26B08E3E8);
  sub_26B078A10();
  memcpy(v10, v5, sizeof(v10));
  sub_26AFD6644(__dst);
  return memcpy(a1, v10, 0x58uLL);
}

uint64_t sub_26AFD6494(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  v10 = a1[7];
  v11 = a1[8];
  v12 = a1[9];
  v13 = a1[10];
  v14 = *(a1 + 88);
  sub_26AFD659C(*a1, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
  result = a2;
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8;
  *(a2 + 48) = v9;
  *(a2 + 56) = v10;
  *(a2 + 64) = v11;
  *(a2 + 72) = v12;
  *(a2 + 80) = v13;
  *(a2 + 88) = v14 & 1;
  return result;
}

uint64_t sub_26AFD659C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (a12)
  {
    sub_26B078640();
    sub_26B078640();
  }
}

uint64_t sub_26AFD66B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (a12)
  {
  }
}

uint64_t *sub_26AFD679C(uint64_t *a1)
{
  v6 = 0;
  v7 = a1;
  sub_26AFD6494(a1, v5);
  updated = type metadata accessor for UpdateOptionsView(0);
  sub_26AFD67FC(a1, v1 + *(updated + 32));
  result = a1;
  sub_26AFD6644(a1);
  return result;
}

uint64_t sub_26AFD67FC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  v10 = a1[7];
  v11 = a1[8];
  v12 = a1[9];
  v13 = a1[10];
  v14 = *(a1 + 88);
  v15 = *a2;
  v16 = *(a2 + 8);
  v17 = *(a2 + 16);
  v18 = *(a2 + 24);
  v19 = *(a2 + 32);
  v20 = *(a2 + 40);
  v21 = *(a2 + 48);
  v22 = *(a2 + 56);
  v23 = *(a2 + 64);
  v24 = *(a2 + 72);
  v25 = *(a2 + 80);
  v26 = *(a2 + 88);
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8;
  *(a2 + 48) = v9;
  *(a2 + 56) = v10;
  *(a2 + 64) = v11;
  *(a2 + 72) = v12;
  *(a2 + 80) = v13;
  *(a2 + 88) = v14 & 1;
  sub_26AFD66B4(v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26);
  return a2;
}

void *sub_26AFD68F4@<X0>(void *a1@<X8>)
{
  v8 = 0;
  updated = type metadata accessor for UpdateOptionsView(0);
  memcpy(__dst, (v1 + *(updated + 36)), 0x59uLL);
  sub_26AFD6494(__dst, v7);
  memcpy(v6, __dst, sizeof(v6));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDFF8, &qword_26B08E3E8);
  sub_26B078A10();
  memcpy(v10, v5, sizeof(v10));
  sub_26AFD6644(__dst);
  return memcpy(a1, v10, 0x58uLL);
}

uint64_t *sub_26AFD6A00(uint64_t *a1)
{
  v6 = 0;
  v7 = a1;
  sub_26AFD6494(a1, v5);
  updated = type metadata accessor for UpdateOptionsView(0);
  sub_26AFD67FC(a1, v1 + *(updated + 36));
  result = a1;
  sub_26AFD6644(a1);
  return result;
}

uint64_t UpdateOptionsView.init(representing:action:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31 = a4;
  v28 = a1;
  v30 = a2;
  v32 = a3;
  v41 = 0;
  v40 = 0;
  v38 = 0;
  v39 = 0;
  updated = type metadata accessor for UpdateOptionsView(0);
  v15 = (*(*(updated - 1) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](updated);
  v33 = &v15 - v15;
  v41 = &v15 - v15;
  v40 = v28;
  v38 = v4;
  v39 = v5;
  v16 = *(v6 + 20);
  swift_getKeyPath();
  sub_26B078A30();
  v7 = updated;
  v8 = v37;
  v9 = v33 + v16;
  *v9 = v36[35];
  *(v9 + 8) = v8 & 1;
  v18 = v7[6];
  swift_getKeyPath();
  v17 = v36;
  sub_26B078A30();
  v19 = v42;
  v20 = 273;
  memcpy(v42, v17, 0x111uLL);
  memcpy((v33 + v18), v42, 0x111uLL);
  v22 = updated[8];
  swift_getKeyPath();
  v21 = &v35;
  sub_26B078A30();
  v23 = __dst;
  v27 = 89;
  memcpy(__dst, v21, 0x59uLL);
  memcpy((v33 + v22), __dst, 0x59uLL);
  v25 = updated[9];
  swift_getKeyPath();
  v24 = &v34;
  sub_26B078A30();
  v26 = v44;
  memcpy(v44, v24, v27);
  memcpy((v33 + v25), v26, v27);
  sub_26AFD4C20(v28);

  v10 = v33;
  v11 = v31;
  v12 = v32;
  v13 = (v33 + updated[7]);
  *v13 = v30;
  v13[1] = v12;
  sub_26AFDD854(v10, v11);

  return sub_26AFDDE44(v33);
}

uint64_t UpdateOptionsView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v16 = a1;
  v35 = sub_26AFDE104;
  v17 = MEMORY[0x277CDE8F8];
  v45 = 0;
  v44 = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE000, &qword_26B08E4A8);
  v19 = (*(*(v18 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v18);
  v32 = v5 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE008, &qword_26B08E4B0);
  v21 = (*(*(v20 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v20);
  v22 = v5 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE010, &qword_26B08E4B8);
  v24 = *(v23 - 8);
  v25 = v23 - 8;
  v26 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v23);
  v27 = v5 - v26;
  v28 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5 - v26);
  v29 = v5 - v28;
  v30 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5 - v28);
  v31 = v5 - v30;
  v45 = v5 - v30;
  v44 = v1;
  v33 = &v38;
  v39 = v1;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE018, &qword_26B08E4C0);
  sub_26AFDE10C();
  sub_26B079800();
  v36 = sub_26AFD52CC();
  v37 = ReactiveUIManager.isBusy.getter();

  if (v37)
  {
    v15 = 1;
  }

  else
  {
    updated = UpdateOptionsView.presentedDescriptor.getter();
    v11 = ReactiveDescriptor.currentState.getter();

    v14 = &v43;
    v43 = v11;
    v12 = &v42;
    v42 = 5;
    v13 = type metadata accessor for SUUIStatefulDescriptorState(0);
    sub_26AE9B8C0();
    v15 = sub_26B07A790();
  }

  v5[1] = v15;
  sub_26AFDE194();
  sub_26B0796A0();
  sub_26AFDE22C(v32);
  v6 = sub_26AFDE468();
  sub_26AFD7CE4();
  sub_26B079510();
  sub_26AFDE510(v22);
  v40 = v20;
  v41 = v6;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_26AE9463C(v29, v23, v31);
  v9 = *(v24 + 8);
  v8 = v24 + 8;
  v9(v29, v23);
  (*(v24 + 16))(v27, v31, v23);
  sub_26AE94B4C(v27, v23, v16);
  v9(v27, v23);
  return (v9)(v31, v23);
}

uint64_t sub_26AFD71BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v15 = 0;
  v14 = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE018, &qword_26B08E4C0);
  v7 = *(*(v10 - 8) + 64);
  v6 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10);
  v12 = &v6 - v6;
  v8 = v6;
  MEMORY[0x28223BE20](v3);
  v13 = &v6 - v8;
  v15 = &v6 - v8;
  v14 = a1;
  sub_26AFD72F4(v4);
  v11 = sub_26AFDE10C();
  sub_26AE9463C(v12, v10, v13);
  sub_26AFE49A8(v12);
  sub_26AFE4BE4(v13, v12);
  sub_26AE94B4C(v12, v10, v9);
  sub_26AFE49A8(v12);
  return sub_26AFE49A8(v13);
}

uint64_t sub_26AFD72F4@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v72 = 0;
  v71 = 0;
  v70 = 0;
  v69 = 0;
  v58 = 0;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE068, &qword_26B08E500);
  v25 = (*(*(v24 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v10 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE070, &qword_26B08E508);
  v28 = (*(*(v27 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v27 - 8);
  v29 = &v10 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE058, &unk_26B08E4F0);
  v31 = *(v30 - 8);
  v32 = v31;
  v34 = *(v31 + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v36 = (v34 + 15) & 0xFFFFFFFFFFFFFFF0;
  v33 = &v10 - v36;
  MEMORY[0x28223BE20](&v10 - v36);
  v35 = &v10 - v36;
  MEMORY[0x28223BE20](v2);
  v37 = &v10 - v36;
  v72 = &v10 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE078, &qword_26B08E510);
  v40 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38 - 8);
  v42 = (v40 + 15) & 0xFFFFFFFFFFFFFFF0;
  v39 = &v10 - v42;
  MEMORY[0x28223BE20](&v10 - v42);
  v41 = &v10 - v42;
  MEMORY[0x28223BE20](v3);
  v43 = &v10 - v42;
  v71 = &v10 - v42;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE040, &qword_26B08E4D8);
  v44 = (*(*(v50 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v50 - 8);
  v51 = &v10 - v44;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE048, &qword_26B08E4E0);
  v45 = v53;
  v46 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53 - 8);
  v48 = (v46 + 15) & 0xFFFFFFFFFFFFFFF0;
  v55 = &v10 - v48;
  v47 = &v10 - v48;
  MEMORY[0x28223BE20](v4);
  v52 = &v10 - v48;
  v49 = &v10 - v48;
  v70 = &v10 - v48;
  v69 = v1;
  sub_26AFD7D08(v5);
  v68 = 10;
  sub_26AFDE784();
  View.suuiIdentifiable(_:)();
  sub_26AFDE9D4(v51);
  v54 = sub_26AFDEAF0();
  sub_26AE9463C(v55, v53, v52);
  sub_26AFDEB98(v55);
  updated = UpdateOptionsView.presentedDescriptor.getter();
  v57 = ReactiveDescriptor.shouldOfferInstallTonight.getter();

  if (v57)
  {
    sub_26AFD8118(v26);
    v63 = 11;
    sub_26AFDEDB8();
    View.suuiIdentifiable(_:)();
    sub_26AFDF76C(v26);
    v16 = &v10;
    MEMORY[0x28223BE20](&v10);
    v15 = &v10 - 4;
    *(&v10 - 2) = v6;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE0A8, &qword_26B08E518);
    v18 = sub_26AFDED10();
    v19 = sub_26AFDEF80();
    sub_26B079410();
    sub_26AFDF890(v29);
    v59 = v27;
    v60 = v17;
    v61 = v18;
    v62 = v19;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_26AE9463C(v35, v30, v37);
    v21 = *(v32 + 8);
    v22 = (v32 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v21(v35, v30);
    v58 = v35;
    v14 = *(v32 + 16);
    v13 = v32 + 16;
    v14(v33, v37, v30);
    sub_26AE94B4C(v33, v30, v35);
    v21(v33, v30);
    v14(v39, v35, v30);
    (*(v32 + 56))(v39, 0, 1, v30);
    sub_26AF09CCC(v39, v30, v41);
    sub_26AFDF0A0(v39);
    sub_26AFDF154(v41, v43);
    v21(v35, v30);
    v21(v37, v30);
  }

  else
  {
    v7 = *(v32 + 56);
    v12 = 1;
    v7(v39, 1, 1, v30);
    v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DE0A8, &qword_26B08E518);
    v11 = sub_26AFDED10();
    v8 = sub_26AFDEF80();
    v67[2] = v27;
    v67[3] = v10;
    v67[4] = v11;
    v67[5] = v8;
    swift_getOpaqueTypeConformance2();
    sub_26AF09CCC(v39, v30, v41);
    sub_26AFDF0A0(v39);
    sub_26AFDF154(v41, v43);
  }

  sub_26AFDF288(v49, v47);
  v67[0] = v47;
  sub_26AFDF520(v43, v41);
  v67[1] = v41;
  v66[0] = v45;
  v66[1] = v38;
  v64 = v54;
  v65 = sub_26AFDF654();
  sub_26AFD49C4(v67, 2uLL, v66, v23);
  sub_26AFDF0A0(v41);
  sub_26AFDEB98(v47);
  sub_26AFDF0A0(v43);
  return sub_26AFDEB98(v49);
}

uint64_t sub_26AFD7D08@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v20 = sub_26AFDFE7C;
  v18 = sub_26AFDFEE0;
  v40 = 0;
  v39 = 0;
  updated = type metadata accessor for UpdateOptionsView(0);
  v7 = *(updated - 8);
  v13 = v7;
  v14 = *(v7 + 64);
  v8 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](updated);
  v16 = &v7 - v8;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE030, &qword_26B08E4C8);
  v24 = *(v26 - 8);
  v25 = v26 - 8;
  v9 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v26);
  v27 = &v7 - v9;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE038, &qword_26B08E4D0);
  v10 = (*(*(v28 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v28);
  v30 = &v7 - v10;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE040, &qword_26B08E4D8);
  v11 = (*(*(v32 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v32);
  v34 = &v7 - v11;
  v12 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v7 - v11);
  v35 = &v7 - v12;
  v40 = &v7 - v12;
  v39 = v1;
  sub_26AFDD854(v1, v4);
  v15 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v17 = swift_allocObject();
  sub_26AFDFD48(v16, v17 + v15);
  v19 = &v36;
  v37 = v1;
  sub_26AFDFEE8();
  sub_26B079900();
  v21 = v41;
  sub_26AFD63C8(v41);
  v22 = v42;
  sub_26AEFE298(v21, v42);
  v23 = v38;
  memcpy(v38, v22, 0x61uLL);
  v5 = sub_26AFDE8D4();
  MEMORY[0x26D66C890](v23, v26, &unk_287B944B0, v5);
  sub_26AEFF178(v23);
  (*(v24 + 8))(v27, v26);
  v29 = sub_26AFDA518();
  sub_26AFDE82C();
  View.analyticsForButtonTap(_:)(v29, v28);
  sub_26AFDFF64(v30);
  v33 = sub_26AFDE784();
  sub_26AE9463C(v34, v32, v35);
  sub_26AFDE9D4(v34);
  sub_26AFE004C(v35, v34);
  sub_26AE94B4C(v34, v32, v31);
  sub_26AFDE9D4(v34);
  return sub_26AFDE9D4(v35);
}

uint64_t sub_26AFD8118@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v20 = sub_26AFE05B4;
  v18 = sub_26AFE0618;
  v40 = 0;
  v39 = 0;
  updated = type metadata accessor for UpdateOptionsView(0);
  v7 = *(updated - 8);
  v13 = v7;
  v14 = *(v7 + 64);
  v8 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](updated);
  v16 = &v7 - v8;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE030, &qword_26B08E4C8);
  v24 = *(v26 - 8);
  v25 = v26 - 8;
  v9 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v26);
  v27 = &v7 - v9;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE0C8, &qword_26B08E520);
  v10 = (*(*(v28 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v28);
  v30 = &v7 - v10;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE068, &qword_26B08E500);
  v11 = (*(*(v32 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v32);
  v34 = &v7 - v11;
  v12 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v7 - v11);
  v35 = &v7 - v12;
  v40 = &v7 - v12;
  v39 = v1;
  sub_26AFDD854(v1, v4);
  v15 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v17 = swift_allocObject();
  sub_26AFDFD48(v16, v17 + v15);
  v19 = &v36;
  v37 = v1;
  sub_26AFDFEE8();
  sub_26B079900();
  v21 = v41;
  sub_26AFD68F4(v41);
  v22 = v42;
  sub_26AEF7B1C(v21, v42);
  v23 = v38;
  memcpy(v38, v22, 0x61uLL);
  v5 = sub_26AFDE8D4();
  MEMORY[0x26D66C890](v23, v26, &unk_287B942C0, v5);
  sub_26AEF87E8(v23);
  (*(v24 + 8))(v27, v26);
  v29 = sub_26AFDB604();
  sub_26AFDEE60();
  View.analyticsForButtonTap(_:)(v29, v28);
  sub_26AFE0620(v30);
  v33 = sub_26AFDEDB8();
  sub_26AE9463C(v34, v32, v35);
  sub_26AFDF76C(v34);
  sub_26AFE0708(v35, v34);
  sub_26AE94B4C(v34, v32, v31);
  sub_26AFDF76C(v34);
  return sub_26AFDF76C(v35);
}

uint64_t sub_26AFD8528@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v15 = 0;
  v14 = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE0A8, &qword_26B08E518);
  v7 = *(*(v10 - 8) + 64);
  v6 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10);
  v12 = &v6 - v6;
  v8 = v6;
  MEMORY[0x28223BE20](v3);
  v13 = &v6 - v8;
  v15 = &v6 - v8;
  v14 = a1;
  sub_26AFD8660(v4);
  v11 = sub_26AFDEF80();
  sub_26AE9463C(v12, v10, v13);
  sub_26AFE0930(v12);
  sub_26AFE0C98(v13, v12);
  sub_26AE94B4C(v12, v10, v9);
  sub_26AFE0930(v12);
  return sub_26AFE0930(v13);
}

uint64_t sub_26AFD8660@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v51 = 0;
  v95 = 0;
  v94 = 0;
  v93 = 0;
  v92 = 0;
  v91 = 0;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE0E8, &qword_26B08E528);
  v47 = *(v46 - 8);
  v48 = v47;
  v49 = (*(v47 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v50 = &v12 - v49;
  v95 = &v12 - v49;
  v52 = sub_26B079040();
  v53 = *(v52 - 8);
  v54 = v53;
  MEMORY[0x28223BE20](v51);
  v55 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for UpdateOptionsView(v3);
  v56 = *(updated - 8);
  v57 = v56;
  v58 = *(v56 + 64);
  MEMORY[0x28223BE20](updated - 8);
  v59 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE100, &qword_26B08E530);
  v61 = *(v60 - 8);
  v62 = v61;
  v63 = (*(v61 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v60 - 8);
  v64 = &v12 - v63;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE108, &qword_26B08E538);
  v66 = *(v65 - 8);
  v67 = v66;
  v68 = *(v66 + 64);
  MEMORY[0x28223BE20](v65 - 8);
  v70 = (v68 + 15) & 0xFFFFFFFFFFFFFFF0;
  v69 = &v12 - v70;
  MEMORY[0x28223BE20](&v12 - v70);
  v71 = &v12 - v70;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE110, &qword_26B08E540);
  v77 = *(*(v72 - 8) + 64);
  MEMORY[0x28223BE20](v72 - 8);
  v79 = (v77 + 15) & 0xFFFFFFFFFFFFFFF0;
  v73 = &v12 - v79;
  MEMORY[0x28223BE20](v6);
  v74 = &v12 - v79;
  MEMORY[0x28223BE20](v7);
  v75 = &v12 - v79;
  MEMORY[0x28223BE20](&v12 - v79);
  v76 = &v12 - v79;
  v94 = &v12 - v79;
  MEMORY[0x28223BE20](&v12 - v79);
  v78 = &v12 - v79;
  MEMORY[0x28223BE20](&v12 - v79);
  v80 = &v12 - v79;
  v93 = &v12 - v79;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE0A8, &qword_26B08E518);
  v83 = *(*(v81 - 8) + 64);
  MEMORY[0x28223BE20](v81 - 8);
  v85 = (v83 + 15) & 0xFFFFFFFFFFFFFFF0;
  v82 = &v12 - v85;
  MEMORY[0x28223BE20](&v12 - v85);
  v84 = &v12 - v85;
  MEMORY[0x28223BE20](&v12 - v85);
  v86 = &v12 - v85;
  v92 = &v12 - v85;
  v91 = v1;
  if (sub_26AFDB7DC())
  {
    sub_26AFDD854(v44, v59);
    v24 = *(v57 + 80);
    v25 = (v24 + 16) & ~v24;
    v27 = swift_allocObject();
    sub_26AFDFD48(v59, v27 + v25);
    v31 = &v12;
    MEMORY[0x28223BE20](&v12);
    v28 = &v12 - 4;
    *(&v12 - 2) = v8;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DBFC8, &unk_26B088180);
    v26 = v29;
    v30 = sub_26AEB3370();
    sub_26B079900();
    sub_26AFDC050();
    v33 = sub_26AFE12C0();
    v32 = v33;
    v34 = sub_26AFE1348(v9);
    sub_26B0793E0();
    v35 = *(v54 + 8);
    v36 = (v54 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v35(v55, v52);
    v37 = *(v62 + 8);
    v38 = (v62 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v37(v64, v60);
    v39 = UpdateOptionsView.presentedDescriptor.getter();
    v40 = ReactiveDescriptor.role.getter();

    v90[9] = v40;
    v90[8] = 0;
    v42 = type metadata accessor for SUUIStatefulDescriptorRole(0);
    v41 = v42;
    v43 = sub_26AF2D17C();
    if (sub_26B07A790())
    {
      v23 = 13;
    }

    else
    {
      v23 = 20;
    }

    v13 = v23;
    v90[4] = v60;
    v90[5] = v52;
    v90[6] = v32;
    v90[7] = v34;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    View.analyticsForButtonTap(_:)(v13, v65);
    v15 = *(v67 + 8);
    v16 = (v67 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v15(v71, v65);
    v17 = sub_26AFE13C8();
    sub_26AE9463C(v78, v72, v80);
    sub_26AFE14E8(v78);
    sub_26AFDD854(v44, v59);
    v18 = (v24 + 16) & ~v24;
    v19 = swift_allocObject();
    sub_26AFDFD48(v59, v19 + v18);
    v20 = &v12;
    MEMORY[0x28223BE20](&v12);
    *(&v12 - 2) = v10;
    sub_26B079900();
    sub_26AFDC050();
    sub_26B0793E0();
    v35(v55, v52);
    v37(v64, v60);
    v21 = UpdateOptionsView.presentedDescriptor.getter();
    v22 = ReactiveDescriptor.role.getter();

    v90[3] = v22;
    v90[2] = 0;
    if (sub_26B07A790())
    {
      v12 = 12;
    }

    else
    {
      v12 = 19;
    }

    View.analyticsForButtonTap(_:)(v12, v65);
    v15(v69, v65);
    sub_26AE9463C(v75, v72, v76);
    sub_26AFE14E8(v75);
    sub_26AFE1930(v80, v74);
    v90[0] = v74;
    sub_26AFE1930(v76, v73);
    v90[1] = v73;
    v89[0] = v72;
    v89[1] = v72;
    v87 = v17;
    v88 = v17;
    sub_26AFD49C4(v90, 2uLL, v89, v50);
    sub_26AFE14E8(v73);
    sub_26AFE14E8(v74);
    sub_26AFE1A10(v50, v82);
    (*(v48 + 56))(v82, 0, 1, v46);
    sub_26AFDF018();
    sub_26AF09CCC(v82, v46, v84);
    sub_26AFE0930(v82);
    sub_26AFE0A88(v84, v86);
    sub_26AFE1BB4(v50);
    sub_26AFE14E8(v76);
    sub_26AFE14E8(v80);
  }

  else
  {
    (*(v48 + 56))(v82, 1, 1, v46);
    sub_26AFDF018();
    sub_26AF09CCC(v82, v46, v84);
    sub_26AFE0930(v82);
    sub_26AFE0A88(v84, v86);
  }

  sub_26AFE0C98(v86, v84);
  sub_26AFDEF80();
  sub_26AE94B4C(v84, v81, v45);
  sub_26AFE0930(v84);
  return sub_26AFE0930(v86);
}

uint64_t sub_26AFD9498(uint64_t a1)
{
  v45 = a1;
  v46 = sub_26AFE489C;
  v47 = sub_26AFE4950;
  v48 = sub_26AFE48D4;
  v49 = sub_26AFE4908;
  v50 = sub_26AFE499C;
  v72 = 0;
  v68 = 0;
  v69 = 0;
  v51 = 0;
  v59 = 0;
  v52 = sub_26B078580();
  v53 = *(v52 - 8);
  v54 = v52 - 8;
  v55 = (*(v53 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v52);
  v56 = v19 - v55;
  v72 = a1;
  updated = UpdateOptionsView.presentedDescriptor.getter();
  v58 = ReactiveDescriptor.currentState.getter();

  v62 = &v71;
  v71 = v58;
  v60 = &v70;
  v70 = 4;
  v61 = type metadata accessor for SUUIStatefulDescriptorState(v59);
  sub_26AE9B8C0();
  if (sub_26B07A790())
  {
    v43 = sub_26B079D00("Install Now", 11, 1);
  }

  else
  {
    v43 = sub_26B079D00("Update Now", 10, 1);
  }

  v44 = v2;
  v29 = v2;
  v28 = v43;
  v68 = v43;
  v69 = v2;
  sub_26B078550();
  sub_26B078640();
  v31 = 32;
  v32 = 7;
  v3 = swift_allocObject();
  v4 = v29;
  v33 = v3;
  *(v3 + 16) = v28;
  *(v3 + 24) = v4;
  v41 = sub_26B078570();
  v42 = sub_26B07A2A0();
  v30 = 17;
  v35 = swift_allocObject();
  *(v35 + 16) = 32;
  v36 = swift_allocObject();
  *(v36 + 16) = 8;
  v5 = swift_allocObject();
  v6 = v33;
  v34 = v5;
  *(v5 + 16) = v46;
  *(v5 + 24) = v6;
  v7 = swift_allocObject();
  v8 = v34;
  v38 = v7;
  *(v7 + 16) = v47;
  *(v7 + 24) = v8;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00, &unk_26B088A40);
  v37 = sub_26B07A760();
  v39 = v9;

  v10 = v35;
  v11 = v39;
  *v39 = v48;
  v11[1] = v10;

  v12 = v36;
  v13 = v39;
  v39[2] = v49;
  v13[3] = v12;

  v14 = v38;
  v15 = v39;
  v39[4] = v50;
  v15[5] = v14;
  sub_26AEA3B2C();

  if (os_log_type_enabled(v41, v42))
  {
    v16 = v51;
    v21 = sub_26B07A420();
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0, &unk_26B087440);
    v22 = sub_26AEA3B70(0, v20, v20);
    v23 = sub_26AEA3B70(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v24 = &v67;
    v67 = v21;
    v25 = &v66;
    v66 = v22;
    v26 = &v65;
    v65 = v23;
    sub_26AEA3BC4(2, &v67);
    sub_26AEA3BC4(1, v24);
    v63 = v48;
    v64 = v35;
    sub_26AEA3BD8(&v63, v24, v25, v26);
    v27 = v16;
    if (v16)
    {

      __break(1u);
    }

    else
    {
      v63 = v49;
      v64 = v36;
      sub_26AEA3BD8(&v63, &v67, &v66, &v65);
      v19[1] = 0;
      v63 = v50;
      v64 = v38;
      sub_26AEA3BD8(&v63, &v67, &v66, &v65);
      _os_log_impl(&dword_26AE88000, v41, v42, "User Action: Clicked %s Action in primaryUpdateButton in UpdateOptionsView", v21, 0xCu);
      sub_26AEA3C24(v22, 0, v20);
      sub_26AEA3C24(v23, 1, MEMORY[0x277D84F70] + 8);
      sub_26B07A400();
    }
  }

  else
  {
  }

  v17 = MEMORY[0x277D82BD8](v41);
  (*(v53 + 8))(v56, v52, v17);
  sub_26AFD9C38();
}

uint64_t sub_26AFD9C38()
{
  v8 = 0;
  v3 = *(v0 + *(type metadata accessor for UpdateOptionsView(0) + 28));

  UpdateOptionsView.presentedDescriptor.getter();
  v4 = ReactiveDescriptor.currentState.getter();

  v7 = v4;
  v6 = 4;
  type metadata accessor for SUUIStatefulDescriptorState(0);
  sub_26AE9B8C0();
  if (sub_26B07A790())
  {
    v2 = 4;
  }

  else
  {
    v2 = 1;
  }

  v5 = v2;
  v3(&v5);
}

uint64_t sub_26AFD9D3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  memset(__b, 0, 0x79uLL);
  v25 = a1;
  sub_26AFD54BC(v26);
  memcpy(__dst, v26, sizeof(__dst));
  sub_26AEF7684(__dst, v23);
  sub_26AFE456C(v26);
  v19 = sub_26AFD9EF8();
  v20 = v3;
  v21 = v4;
  v22 = v5;
  v8 = v3;
  v9 = v4;
  v10 = v5;
  v6 = sub_26AFDA2C0();
  v15 = v19;
  v16 = v8;
  v17 = v9 & 1;
  v18 = v10;
  sub_26AFDA42C(__dst, v19, v8, v9 & 1, v10, v6 & 1, v27);
  memcpy(v14, v27, 0x79uLL);
  sub_26AFDFEE8();
  sub_26AE9463C(v14, &unk_287B9B860, __b);
  sub_26AFE2064(v14);
  memcpy(v29, __b, 0x79uLL);
  sub_26AFE1E74(v29, v13);
  memcpy(v12, v29, 0x79uLL);
  sub_26AE94B4C(v12, &unk_287B9B860, a2);
  sub_26AFE2064(v12);
  return sub_26AFE2064(__b);
}

uint64_t sub_26AFD9EF8()
{
  UpdateOptionsView.presentedDescriptor.getter();
  ReactiveDescriptor.currentState.getter();

  type metadata accessor for SUUIStatefulDescriptorState(0);
  sub_26AE9B8C0();
  if (sub_26B07A790())
  {
    sub_26B079D00("Installing…", 13, 0);
    sub_26B078E10();
    v0 = sub_26B02D0D0();
    MEMORY[0x277D82BE0](*v0);
    return sub_26B0792C0();
  }

  else
  {
    UpdateOptionsView.presentedDescriptor.getter();
    ReactiveDescriptor.currentState.getter();

    if (sub_26B07A790())
    {
      sub_26B079D00("Install Now", 11, 1);
    }

    else
    {
      sub_26B079D00("Update Now", 10, 1);
    }

    sub_26B078E10();
    v1 = sub_26B02D0D0();
    MEMORY[0x277D82BE0](*v1);
    return sub_26B0792C0();
  }
}

uint64_t sub_26AFDA2C0()
{
  v12 = v0;
  sub_26AFD52CC();
  ReactiveUIManager.currentInitiatedAction.getter(&v11);
  v5 = v11;

  v10 = v5;
  v9 = 1;
  if (static UpdateAction.== infix(_:_:)(&v10, &v9))
  {
    v4 = 1;
  }

  else
  {
    sub_26AFD52CC();
    ReactiveUIManager.currentInitiatedAction.getter(&v8);
    v3 = v8;

    v7 = v3;
    v6 = 4;
    v4 = static UpdateAction.== infix(_:_:)(&v7, &v6);
  }

  if (v4)
  {
    v2 = 1;
  }

  else
  {
    UpdateOptionsView.presentedDescriptor.getter();
    ReactiveDescriptor.currentState.getter();

    type metadata accessor for SUUIStatefulDescriptorState(0);
    sub_26AE9B8C0();
    v2 = sub_26B07A790();
  }

  return v2 & 1;
}

void *sub_26AFDA42C@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, void *a7@<X8>)
{
  v16[16] = a2;
  v16[17] = a3;
  v17 = a4;
  v18 = a5;
  memcpy(__dst, a1, sizeof(__dst));
  memcpy(v15, __dst, sizeof(v15));
  memcpy(v16, v15, 0x58uLL);
  v16[11] = a2;
  v16[12] = a3;
  LOBYTE(v16[13]) = a4 & 1;
  v16[14] = a5;
  LOBYTE(v16[15]) = a6;
  return memcpy(a7, v16, 0x79uLL);
}

uint64_t sub_26AFDA518()
{
  UpdateOptionsView.presentedDescriptor.getter();
  ReactiveDescriptor.role.getter();

  type metadata accessor for SUUIStatefulDescriptorRole(0);
  sub_26AF2D17C();
  if (sub_26B07A790())
  {
    type metadata accessor for SUUIStatefulDescriptorState(0);
    UpdateOptionsView.presentedDescriptor.getter();
    ReactiveDescriptor.currentState.getter();

    sub_26AFE1CC0();
    if (sub_26B079D40())
    {
      return 15;
    }

    else
    {
      return 14;
    }
  }

  else
  {
    type metadata accessor for SUUIStatefulDescriptorState(0);
    UpdateOptionsView.presentedDescriptor.getter();
    ReactiveDescriptor.currentState.getter();

    sub_26AFE1CC0();
    if (sub_26B079D40())
    {
      return 22;
    }

    else
    {
      return 21;
    }
  }
}

uint64_t sub_26AFDA6F0(uint64_t a1)
{
  v48 = a1;
  v49 = sub_26AFE4750;
  v50 = sub_26AFE4804;
  v51 = sub_26AFE4788;
  v52 = sub_26AFE47BC;
  v53 = sub_26AFE4850;
  v78 = 0;
  v72 = 0;
  v73 = 0;
  v54 = 0;
  v62 = 0;
  v55 = sub_26B078580();
  v56 = *(v55 - 8);
  v57 = v55 - 8;
  v58 = (*(v56 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v55);
  v59 = v19 - v58;
  v78 = a1;
  updated = UpdateOptionsView.presentedDescriptor.getter();
  v61 = ReactiveDescriptor.currentState.getter();

  v65 = &v77;
  v77 = v61;
  v63 = &v76;
  v76 = 4;
  v64 = type metadata accessor for SUUIStatefulDescriptorState(v62);
  v66 = sub_26AE9B8C0();
  if (sub_26B07A790())
  {
    v47 = 1;
  }

  else
  {
    v45 = UpdateOptionsView.presentedDescriptor.getter();
    v46 = ReactiveDescriptor.currentState.getter();

    v75 = v46;
    v74 = 5;
    v47 = sub_26B07A790();
  }

  if (v47)
  {
    v43 = sub_26B079D00("Install Tonight", 15, 1);
  }

  else
  {
    v43 = sub_26B079D00("Update Tonight", 14, 1);
  }

  v44 = v2;
  v29 = v2;
  v28 = v43;
  v72 = v43;
  v73 = v2;
  sub_26B078550();
  sub_26B078640();
  v31 = 32;
  v32 = 7;
  v3 = swift_allocObject();
  v4 = v29;
  v33 = v3;
  *(v3 + 16) = v28;
  *(v3 + 24) = v4;
  v41 = sub_26B078570();
  v42 = sub_26B07A2A0();
  v30 = 17;
  v35 = swift_allocObject();
  *(v35 + 16) = 32;
  v36 = swift_allocObject();
  *(v36 + 16) = 8;
  v5 = swift_allocObject();
  v6 = v33;
  v34 = v5;
  *(v5 + 16) = v49;
  *(v5 + 24) = v6;
  v7 = swift_allocObject();
  v8 = v34;
  v38 = v7;
  *(v7 + 16) = v50;
  *(v7 + 24) = v8;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00, &unk_26B088A40);
  v37 = sub_26B07A760();
  v39 = v9;

  v10 = v35;
  v11 = v39;
  *v39 = v51;
  v11[1] = v10;

  v12 = v36;
  v13 = v39;
  v39[2] = v52;
  v13[3] = v12;

  v14 = v38;
  v15 = v39;
  v39[4] = v53;
  v15[5] = v14;
  sub_26AEA3B2C();

  if (os_log_type_enabled(v41, v42))
  {
    v16 = v54;
    v21 = sub_26B07A420();
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0, &unk_26B087440);
    v22 = sub_26AEA3B70(0, v20, v20);
    v23 = sub_26AEA3B70(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v24 = &v71;
    v71 = v21;
    v25 = &v70;
    v70 = v22;
    v26 = &v69;
    v69 = v23;
    sub_26AEA3BC4(2, &v71);
    sub_26AEA3BC4(1, v24);
    v67 = v51;
    v68 = v35;
    sub_26AEA3BD8(&v67, v24, v25, v26);
    v27 = v16;
    if (v16)
    {

      __break(1u);
    }

    else
    {
      v67 = v52;
      v68 = v36;
      sub_26AEA3BD8(&v67, &v71, &v70, &v69);
      v19[1] = 0;
      v67 = v53;
      v68 = v38;
      sub_26AEA3BD8(&v67, &v71, &v70, &v69);
      _os_log_impl(&dword_26AE88000, v41, v42, "User Action: Clicked %s Action in secondaryUpdateButton in UpdateOptionsView", v21, 0xCu);
      sub_26AEA3C24(v22, 0, v20);
      sub_26AEA3C24(v23, 1, MEMORY[0x277D84F70] + 8);
      sub_26B07A400();
    }
  }

  else
  {
  }

  v17 = MEMORY[0x277D82BD8](v41);
  (*(v56 + 8))(v59, v55, v17);
  sub_26AFDAF3C();
}

uint64_t sub_26AFDAF3C()
{
  v8 = 0;
  v3 = *(v0 + *(type metadata accessor for UpdateOptionsView(0) + 28));

  UpdateOptionsView.presentedDescriptor.getter();
  v4 = ReactiveDescriptor.currentState.getter();

  v7 = v4;
  v6 = 4;
  type metadata accessor for SUUIStatefulDescriptorState(0);
  sub_26AE9B8C0();
  if (sub_26B07A790())
  {
    v2 = 5;
  }

  else
  {
    v2 = 2;
  }

  v5 = v2;
  v3(&v5);
}

uint64_t sub_26AFDB040@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  memset(__b, 0, 0x79uLL);
  v25 = a1;
  sub_26AFD54BC(v26);
  memcpy(__dst, v27, sizeof(__dst));
  sub_26AEF7684(__dst, v23);
  sub_26AFE456C(v26);
  v19 = sub_26AFDB200();
  v20 = v3;
  v21 = v4;
  v22 = v5;
  v8 = v3;
  v9 = v4;
  v10 = v5;
  v6 = sub_26AFDB504();
  v15 = v19;
  v16 = v8;
  v17 = v9 & 1;
  v18 = v10;
  sub_26AFDA42C(__dst, v19, v8, v9 & 1, v10, v6 & 1, v28);
  memcpy(v14, v28, 0x79uLL);
  sub_26AFDFEE8();
  sub_26AE9463C(v14, &unk_287B9B860, __b);
  sub_26AFE2064(v14);
  memcpy(v30, __b, 0x79uLL);
  sub_26AFE1E74(v30, v13);
  memcpy(v12, v30, 0x79uLL);
  sub_26AE94B4C(v12, &unk_287B9B860, a2);
  sub_26AFE2064(v12);
  return sub_26AFE2064(__b);
}

uint64_t sub_26AFDB200()
{
  UpdateOptionsView.presentedDescriptor.getter();
  ReactiveDescriptor.currentState.getter();

  type metadata accessor for SUUIStatefulDescriptorState(0);
  sub_26AE9B8C0();
  if (sub_26B07A790())
  {
    v2 = 1;
  }

  else
  {
    UpdateOptionsView.presentedDescriptor.getter();
    ReactiveDescriptor.currentState.getter();

    v2 = sub_26B07A790();
  }

  if (v2)
  {
    sub_26B079D00("Install Tonight", 15, 1);
  }

  else
  {
    sub_26B079D00("Update Tonight", 14, 1);
  }

  sub_26B078E10();
  v0 = sub_26B02D0D0();
  MEMORY[0x277D82BE0](*v0);
  return sub_26B0792C0();
}

uint64_t sub_26AFDB504()
{
  v7 = v0;
  sub_26B07A760();
  *v1 = 5;
  v1[1] = 2;
  v1[2] = 3;
  sub_26AEA3B2C();
  v6 = v2;
  sub_26AFD52CC();
  ReactiveUIManager.currentInitiatedAction.getter(&v5);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE140, &qword_26B08E558);
  sub_26AFE1D40();
  sub_26AEB0008();
  v4 = sub_26B07A010();
  sub_26AFE1DC8(&v6);
  return v4 & 1;
}

uint64_t sub_26AFDB604()
{
  UpdateOptionsView.presentedDescriptor.getter();
  ReactiveDescriptor.role.getter();

  type metadata accessor for SUUIStatefulDescriptorRole(0);
  sub_26AF2D17C();
  if (sub_26B07A790())
  {
    type metadata accessor for SUUIStatefulDescriptorState(0);
    UpdateOptionsView.presentedDescriptor.getter();
    ReactiveDescriptor.currentState.getter();

    sub_26AFE1CC0();
    if (sub_26B079D40())
    {
      return 16;
    }

    else
    {
      return 13;
    }
  }

  else
  {
    type metadata accessor for SUUIStatefulDescriptorState(0);
    UpdateOptionsView.presentedDescriptor.getter();
    ReactiveDescriptor.currentState.getter();

    sub_26AFE1CC0();
    if (sub_26B079D40())
    {
      return 23;
    }

    else
    {
      return 20;
    }
  }
}

uint64_t sub_26AFDB7DC()
{
  UpdateOptionsView.presentedDescriptor.getter();
  ReactiveDescriptor.currentState.getter();

  type metadata accessor for SUUIStatefulDescriptorState(0);
  sub_26AFE1DF4();
  if (sub_26B079D70())
  {
    LOBYTE(v1) = 0;
  }

  else
  {
    UpdateOptionsView.presentedDescriptor.getter();
    ReactiveDescriptor.currentState.getter();

    v1 = sub_26B079D70() ^ 1;
  }

  return v1 & 1;
}

uint64_t sub_26AFDB8F0(uint64_t a1)
{
  v24 = a1;
  v31 = 0;
  v40 = 0;
  v23 = 0;
  v25 = sub_26B078580();
  v26 = *(v25 - 8);
  v27 = v26;
  MEMORY[0x28223BE20](v24);
  v28 = v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v2;
  sub_26B078550();
  v33 = sub_26B078570();
  v29 = v33;
  v32 = sub_26B07A2A0();
  v30 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00, &unk_26B088A40);
  v34 = sub_26B07A760();
  if (os_log_type_enabled(v33, v32))
  {
    v3 = v23;
    v14 = sub_26B07A420();
    v10 = v14;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0, &unk_26B087440);
    v12 = 0;
    v15 = sub_26AEA3B70(0, v11, v11);
    v13 = v15;
    v16 = sub_26AEA3B70(v12, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v38 = v14;
    v37 = v15;
    v36 = v16;
    v17 = 0;
    v18 = &v38;
    sub_26AEA3BC4(0, &v38);
    sub_26AEA3BC4(v17, v18);
    v35 = v34;
    v19 = v7;
    MEMORY[0x28223BE20](v7);
    v20 = &v7[-6];
    v7[-4] = v4;
    v7[-3] = &v37;
    v7[-2] = &v36;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB10, &qword_26B088A50);
    sub_26AE9CC18();
    sub_26B079FF0();
    v22 = v3;
    if (v3)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_26AE88000, v29, v30, "User Action: Clicked 'Update Tonight' Action in secondaryAction in UpdateOptionsView", v10, 2u);
      v8 = 0;
      sub_26AEA3C24(v13, 0, v11);
      sub_26AEA3C24(v16, v8, MEMORY[0x277D84F70] + 8);
      sub_26B07A400();

      v9 = v22;
    }
  }

  else
  {

    v9 = v23;
  }

  (*(v27 + 8))(v28, v25);
  v5 = (v24 + *(type metadata accessor for UpdateOptionsView(0) + 28));
  v7[0] = *v5;
  v7[1] = v5[1];

  v39 = 2;
  (v7[0])(&v39);
}

uint64_t sub_26AFDBCCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v37 = 0;
  v36 = 0;
  v15 = 0;
  v9 = (*(*(sub_26B078300() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v17 = &v9 - v9;
  v3 = sub_26B079DE0();
  v10 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v14 = &v9 - v10;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DBFC8, &unk_26B088180);
  v23 = *(v29 - 8);
  v24 = v29 - 8;
  v11 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v29);
  v27 = &v9 - v11;
  v12 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](&v9 - v11);
  v28 = &v9 - v12;
  v37 = &v9 - v12;
  v36 = a1;
  v13 = 1;
  sub_26B079D00("Update Tonight", 14, 1, v5);
  sub_26B079D80();
  v16 = *sub_26B02D0D0();
  MEMORY[0x277D82BE0](v16);
  sub_26AEFB5C4();
  v33[2] = 0;
  v33[3] = 0;
  v34 = 0;
  v35 = v13 & 1;
  v6 = sub_26B079E40();
  v22 = v33;
  v33[0] = v6;
  v33[1] = v7;
  v18 = v38;
  sub_26AFD54BC(v38);
  v19 = __dst;
  memcpy(__dst, v18 + 11, sizeof(__dst));
  sub_26AEF7684(__dst, v32);
  sub_26AFE456C(v18);
  v20 = __dst[4];
  v21 = __dst[5];
  sub_26B078640();
  sub_26AEF788C(v19);
  sub_26AE95974();
  sub_26B079890();
  v26 = sub_26AEB3370();
  sub_26AE9463C(v27, v29, v28);
  v31 = *(v23 + 8);
  v30 = v23 + 8;
  v31(v27, v29);
  (*(v23 + 16))(v27, v28, v29);
  sub_26AE94B4C(v27, v29, v25);
  v31(v27, v29);
  return (v31)(v28, v29);
}

uint64_t sub_26AFDC068(uint64_t a1)
{
  v24 = a1;
  v31 = 0;
  v40 = 0;
  v23 = 0;
  v25 = sub_26B078580();
  v26 = *(v25 - 8);
  v27 = v26;
  MEMORY[0x28223BE20](v24);
  v28 = v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v2;
  sub_26B078550();
  v33 = sub_26B078570();
  v29 = v33;
  v32 = sub_26B07A2A0();
  v30 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00, &unk_26B088A40);
  v34 = sub_26B07A760();
  if (os_log_type_enabled(v33, v32))
  {
    v3 = v23;
    v14 = sub_26B07A420();
    v10 = v14;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0, &unk_26B087440);
    v12 = 0;
    v15 = sub_26AEA3B70(0, v11, v11);
    v13 = v15;
    v16 = sub_26AEA3B70(v12, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v38 = v14;
    v37 = v15;
    v36 = v16;
    v17 = 0;
    v18 = &v38;
    sub_26AEA3BC4(0, &v38);
    sub_26AEA3BC4(v17, v18);
    v35 = v34;
    v19 = v7;
    MEMORY[0x28223BE20](v7);
    v20 = &v7[-6];
    v7[-4] = v4;
    v7[-3] = &v37;
    v7[-2] = &v36;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB10, &qword_26B088A50);
    sub_26AE9CC18();
    sub_26B079FF0();
    v22 = v3;
    if (v3)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_26AE88000, v29, v30, "User Action: Clicked 'Download Only' Action in secondaryAction in UpdateOptionsView", v10, 2u);
      v8 = 0;
      sub_26AEA3C24(v13, 0, v11);
      sub_26AEA3C24(v16, v8, MEMORY[0x277D84F70] + 8);
      sub_26B07A400();

      v9 = v22;
    }
  }

  else
  {

    v9 = v23;
  }

  (*(v27 + 8))(v28, v25);
  v5 = (v24 + *(type metadata accessor for UpdateOptionsView(0) + 28));
  v7[0] = *v5;
  v7[1] = v5[1];

  v39 = 3;
  (v7[0])(&v39);
}

uint64_t sub_26AFDC444@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v37 = 0;
  v36 = 0;
  v15 = 0;
  v9 = (*(*(sub_26B078300() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v17 = &v9 - v9;
  v3 = sub_26B079DE0();
  v10 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v14 = &v9 - v10;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DBFC8, &unk_26B088180);
  v23 = *(v29 - 8);
  v24 = v29 - 8;
  v11 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v29);
  v27 = &v9 - v11;
  v12 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](&v9 - v11);
  v28 = &v9 - v12;
  v37 = &v9 - v12;
  v36 = a1;
  v13 = 1;
  sub_26B079D00("Download Only", 13, 1, v5);
  sub_26B079D80();
  v16 = *sub_26B02D0D0();
  MEMORY[0x277D82BE0](v16);
  sub_26AEFB5C4();
  v33[2] = 0;
  v33[3] = 0;
  v34 = 0;
  v35 = v13 & 1;
  v6 = sub_26B079E40();
  v22 = v33;
  v33[0] = v6;
  v33[1] = v7;
  v18 = v38;
  sub_26AFD54BC(v38);
  v19 = __dst;
  memcpy(__dst, v18 + 11, sizeof(__dst));
  sub_26AEF7684(__dst, v32);
  sub_26AFE456C(v18);
  v20 = __dst[2];
  v21 = __dst[3];
  sub_26B078640();
  sub_26AEF788C(v19);
  sub_26AE95974();
  sub_26B079890();
  v26 = sub_26AEB3370();
  sub_26AE9463C(v27, v29, v28);
  v31 = *(v23 + 8);
  v30 = v23 + 8;
  v31(v27, v29);
  (*(v23 + 16))(v27, v28, v29);
  sub_26AE94B4C(v27, v29, v25);
  v31(v27, v29);
  return (v31)(v28, v29);
}

uint64_t sub_26AFDC84C()
{
  v2 = *(v0 + 88);
  sub_26AE95D28(v2, *(v0 + 96), *(v0 + 104) & 1);
  sub_26B078640();
  return v2;
}

uint64_t sub_26AFDC8DC@<X0>(uint64_t a1@<X8>)
{
  v12 = a1;
  v7 = sub_26AFE1FD4;
  v20 = 0;
  __src[0] = v21;
  __src[1] = 121;
  memcpy(v21, v1, 0x79uLL);
  memcpy(__dst, v21, sizeof(__dst));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE158, &qword_26B08E560);
  v5 = (*(*(v13 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v13);
  v15 = (__src - v5);
  v6 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](__src - v5);
  v16 = (__src - v6);
  v20 = __src - v6;
  sub_26AFE1E74(v1, &v19);
  v8 = &v17;
  v18 = v1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE160, &qword_26B08E568);
  v10 = sub_26AFE1FDC();
  sub_26AF5C6C0();
  sub_26B0799A0();
  sub_26AFE2064(v11);
  v14 = sub_26AFE20F0();
  sub_26AE9463C(v15, v13, v16);
  sub_26AFE2178(v15);
  sub_26AFE238C(v16, v15);
  sub_26AE94B4C(v15, v13, v12);
  sub_26AFE2178(v15);
  return sub_26AFE2178(v16);
}

uint64_t sub_26AFDCAA4@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = &v65;
  v44 = &v59;
  v49 = a1;
  v26 = a2;
  v41 = 0;
  v64 = 0;
  v63 = 0;
  v62 = 0;
  memset(v61, 0, sizeof(v61));
  v51 = 0;
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v68 = a1[3];
  v67 = v4;
  v66 = v3;
  v65 = v2;
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  *&v71[9] = *(a1 + 105);
  *v71 = v7;
  v70 = v6;
  v69 = v5;
  v76 = v68;
  v75 = v67;
  v74 = v66;
  v73 = v65;
  *(v79 + 9) = *&v71[9];
  v79[0] = v7;
  v78 = v6;
  v77 = v5;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE188, &qword_26B08E580);
  v28 = *(v27 - 8);
  v29 = v28;
  v31 = *(v28 + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v33 = (v31 + 15) & 0xFFFFFFFFFFFFFFF0;
  v30 = &v18 - v33;
  MEMORY[0x28223BE20](&v18 - v33);
  v32 = &v18 - v33;
  MEMORY[0x28223BE20](v8);
  v34 = &v18 - v33;
  v64 = &v18 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE1B8, &qword_26B08E5B8);
  v37 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v49);
  v39 = (v37 + 15) & 0xFFFFFFFFFFFFFFF0;
  v36 = &v18 - v39;
  MEMORY[0x28223BE20](v9);
  v38 = &v18 - v39;
  MEMORY[0x28223BE20](v10);
  v40 = &v18 - v39;
  v63 = &v18 - v39;
  sub_26AFE1E74(v11, &v58);
  v50 = v49;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE1E0, &qword_26B08EA08);
  v43 = sub_26AFE31A0();
  sub_26B005488();
  sub_26B079940();
  sub_26AFE2064(v49);
  v12 = *v44;
  v81 = v44[1];
  v80 = v12;
  v13 = v44[2];
  v14 = v44[3];
  v15 = v44[4];
  v85 = v60;
  v84 = v15;
  v83 = v14;
  v82 = v13;
  v56[1] = v81;
  v56[0] = v80;
  v57 = v60;
  v56[4] = v15;
  v56[3] = v14;
  v56[2] = v13;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE1F0, &qword_26B08EA10);
  v45 = v46;
  v47 = sub_26AFE3228();
  v48 = v56;
  sub_26AE9463C(v56, v46, v61);
  sub_26AFE32B0(v48);
  v72 = *(v49 + 120);
  if (v72 == 1)
  {
    sub_26AFE1E74(v49, v52);
    v23 = &v18;
    MEMORY[0x28223BE20](&v18);
    v20 = (&v18 - 4);
    *(&v18 - 2) = v16;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE210, &qword_26B08EA18);
    v22 = sub_26AFE3BF8();
    sub_26B005488();
    sub_26B079940();
    sub_26AFE2064(v49);
    v24 = sub_26AFE32F8();
    sub_26AE9463C(v32, v27, v34);
    sub_26AFE3C80(v32);
    v51 = v32;
    sub_26AFE3DBC(v34, v30);
    sub_26AE94B4C(v30, v27, v32);
    sub_26AFE3C80(v30);
    sub_26AFE3DBC(v32, v36);
    (*(v29 + 56))(v36, 0, 1, v27);
    sub_26AF09CCC(v36, v27, v38);
    sub_26AFE3380(v36);
    sub_26AFE350C(v38, v40);
    sub_26AFE3C80(v32);
    sub_26AFE3C80(v34);
  }

  else
  {
    (*(v29 + 56))(v36, 1, 1, v27);
    sub_26AFE32F8();
    sub_26AF09CCC(v36, v27, v38);
    sub_26AFE3380(v36);
    sub_26AFE350C(v38, v40);
  }

  v19 = v61;
  v18 = v54;
  sub_26AFE37CC(v61, v54);
  v55[0] = v18;
  sub_26AFE3888(v40, v38);
  v55[1] = v38;
  v53[0] = v45;
  v53[1] = v35;
  v52[16] = v47;
  v52[17] = sub_26AFE3B58();
  sub_26AFD49C4(v55, 2uLL, v53, v26);
  sub_26AFE3380(v38);
  sub_26AFE32B0(v18);
  sub_26AFE3380(v40);
  return sub_26AFE32B0(v19);
}

uint64_t sub_26AFDD0D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = 0;
  v26 = 0;
  memset(v22, 0, 32);
  v18 = 0;
  v19 = 0;
  v27 = a1;
  v23 = sub_26B079970();
  v24 = v2 & 1;
  v7 = MEMORY[0x277CE1180];
  sub_26AE9463C(&v23, MEMORY[0x277CE1180], &v25);
  v28 = *(a1 + 88);
  v29 = *(a1 + 104);
  sub_26AFE44E4(&v28, v21);
  v20[0] = v28;
  v20[1] = v29;
  v6 = MEMORY[0x277CE0BD8];
  sub_26AE9463C(v20, MEMORY[0x277CE0BD8], v22);
  sub_26AE95B40(v20);
  v16 = sub_26B079970();
  v17 = v3 & 1;
  sub_26AE9463C(&v16, v7, &v18);
  v13 = v25;
  v14 = v26;
  v15[0] = &v13;
  sub_26AFE44E4(v22, v12);
  v15[1] = v12;
  v10 = v18;
  v11 = v19;
  v15[2] = &v10;
  v9[0] = v7;
  v9[1] = v6;
  v9[2] = v7;
  sub_26AFD49C4(v15, 3uLL, v9, a2);
  sub_26AE95B40(v12);
  return sub_26AE95B40(v22);
}

uint64_t sub_26AFDD2EC@<X0>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v23 = a1;
  v49 = 0;
  v48 = 0;
  v14 = &v46;
  v46 = 0;
  v47 = 0;
  v10 = 0;
  v18 = sub_26B078A00();
  v15 = *(v18 - 8);
  v16 = v18 - 8;
  v7 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v18);
  v17 = &v7 - v7;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE1A0, &qword_26B08FE70);
  v19 = *(v22 - 8);
  v20 = v22 - 8;
  v8 = (*(v19 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v22);
  v21 = &v7 - v8;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE1A8, &unk_26B08E5A0);
  v9 = (*(*(v26 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v26);
  v28 = &v7 - v9;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE1B0, &qword_26B08E5B0);
  v12 = *(*(v30 - 8) + 64);
  v11 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10);
  v35 = &v7 - v11;
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v36 = &v7 - v13;
  v49 = &v7 - v13;
  v48 = v4;
  v44 = sub_26B079970();
  v45 = v5 & 1;
  v29 = MEMORY[0x277CE1180];
  v31 = MEMORY[0x277CE1170];
  sub_26AE9463C(&v44, MEMORY[0x277CE1180], v14);
  sub_26B078A60();
  (*(v15 + 104))(v17, *MEMORY[0x277CDF440], v18);
  sub_26AFE3FB8();
  sub_26B079420();
  (*(v15 + 8))(v17, v18);
  (*(v19 + 8))(v21, v22);
  v27 = sub_26B079160();
  v24 = __dst;
  memcpy(__dst, v23, sizeof(__dst));
  sub_26AEF7684(__dst, v43);
  v25 = __dst[6];
  sub_26AEF788C(v24);
  sub_26AFE4040();
  sub_26B079680();
  sub_26AFE40E8(v28);
  v32 = sub_26AFE41DC();
  sub_26AE9463C(v35, v30, v36);
  sub_26AFE4280(v35);
  v40 = v46;
  v41 = v47;
  v34 = v42;
  v42[0] = &v40;
  sub_26AFE4374(v36, v35);
  v42[1] = v35;
  v39[0] = v29;
  v39[1] = v30;
  v37 = v31;
  v38 = v32;
  sub_26AFD49C4(v34, 2uLL, v39, v33);
  sub_26AFE4280(v35);
  return sub_26AFE4280(v36);
}

uint64_t sub_26AFDD854(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE20, &unk_26B08D230);
  (*(*(v2 - 8) + 16))(a2, a1);
  updated = type metadata accessor for UpdateOptionsView(0);
  v19 = updated[5];
  v20 = *(a1 + v19);
  v21 = *(a1 + v19 + 8);

  v3 = a2 + v19;
  *v3 = v20;
  *(v3 + 8) = v21 & 1;
  v22 = updated[6];
  v40 = *(a1 + v22);
  v41 = *(a1 + v22 + 8);
  v42 = *(a1 + v22 + 16);
  v43 = *(a1 + v22 + 24);
  v44 = *(a1 + v22 + 32);
  v45 = *(a1 + v22 + 40);
  v46 = *(a1 + v22 + 48);
  v23 = *(a1 + v22 + 56);
  v24 = *(a1 + v22 + 64);
  v47 = *(a1 + v22 + 72);
  v39 = *(a1 + v22 + 80);
  v4 = *(a1 + v22 + 88);
  v5 = *(a1 + v22 + 96);
  v6 = *(a1 + v22 + 104);
  v7 = *(a1 + v22 + 112);
  v8 = *(a1 + v22 + 120);
  v9 = *(a1 + v22 + 128);
  v10 = *(a1 + v22 + 136);
  v11 = *(a1 + v22 + 144);
  v12 = *(a1 + v22 + 152);
  v13 = *(a1 + v22 + 160);
  v25 = *(a1 + v22 + 168);
  v26 = *(a1 + v22 + 176);
  v27 = *(a1 + v22 + 184);
  v28 = *(a1 + v22 + 192);
  v29 = *(a1 + v22 + 200);
  v30 = *(a1 + v22 + 208);
  v31 = *(a1 + v22 + 216);
  v32 = *(a1 + v22 + 224);
  v33 = *(a1 + v22 + 232);
  v34 = *(a1 + v22 + 240);
  v35 = *(a1 + v22 + 248);
  v36 = *(a1 + v22 + 256);
  v37 = *(a1 + v22 + 264);
  v38 = *(a1 + v22 + 272);
  sub_26AFD5850(v40, v41, v42, v43, v44, v45, v46, v23, v24, v47, v39, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38);
  v14 = a2 + v22;
  *v14 = v40;
  *(v14 + 8) = v41;
  *(v14 + 16) = v42;
  *(v14 + 24) = v43;
  *(v14 + 32) = v44;
  *(v14 + 40) = v45;
  *(v14 + 48) = v46;
  *(v14 + 56) = v23;
  *(v14 + 64) = v24;
  *(v14 + 72) = v47;
  *(v14 + 80) = v39;
  *(v14 + 88) = v4;
  *(v14 + 96) = v5;
  *(v14 + 104) = v6;
  *(v14 + 112) = v7;
  *(v14 + 120) = v8;
  *(v14 + 128) = v9;
  *(v14 + 136) = v10;
  *(v14 + 144) = v11;
  *(v14 + 152) = v12;
  *(v14 + 160) = v13;
  *(v14 + 168) = v25;
  *(v14 + 176) = v26;
  *(v14 + 184) = v27;
  *(v14 + 192) = v28;
  *(v14 + 200) = v29;
  *(v14 + 208) = v30;
  *(v14 + 216) = v31;
  *(v14 + 224) = v32;
  *(v14 + 232) = v33;
  *(v14 + 240) = v34;
  *(v14 + 248) = v35;
  *(v14 + 256) = v36;
  *(v14 + 264) = v37;
  *(v14 + 272) = v38 & 1;
  v48 = updated[7];
  v49 = *(a1 + v48);
  v50 = *(a1 + v48 + 8);

  v15 = (a2 + v48);
  *v15 = v49;
  v15[1] = v50;
  v51 = updated[8];
  v52 = *(a1 + v51);
  v53 = *(a1 + v51 + 8);
  v54 = *(a1 + v51 + 16);
  v55 = *(a1 + v51 + 24);
  v56 = *(a1 + v51 + 32);
  v57 = *(a1 + v51 + 40);
  v58 = *(a1 + v51 + 48);
  v59 = *(a1 + v51 + 56);
  v60 = *(a1 + v51 + 64);
  v61 = *(a1 + v51 + 72);
  v62 = *(a1 + v51 + 80);
  v63 = *(a1 + v51 + 88);
  sub_26AFD659C(v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63);
  v16 = a2 + v51;
  *v16 = v52;
  *(v16 + 8) = v53;
  *(v16 + 16) = v54;
  *(v16 + 24) = v55;
  *(v16 + 32) = v56;
  *(v16 + 40) = v57;
  *(v16 + 48) = v58;
  *(v16 + 56) = v59;
  *(v16 + 64) = v60;
  *(v16 + 72) = v61;
  *(v16 + 80) = v62;
  *(v16 + 88) = v63 & 1;
  v66 = updated[9];
  v67 = *(a1 + v66);
  v68 = *(a1 + v66 + 8);
  v69 = *(a1 + v66 + 16);
  v70 = *(a1 + v66 + 24);
  v71 = *(a1 + v66 + 32);
  v72 = *(a1 + v66 + 40);
  v73 = *(a1 + v66 + 48);
  v74 = *(a1 + v66 + 56);
  v75 = *(a1 + v66 + 64);
  v76 = *(a1 + v66 + 72);
  v77 = *(a1 + v66 + 80);
  v78 = *(a1 + v66 + 88);
  sub_26AFD659C(v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78);
  result = a2;
  v18 = a2 + v66;
  *v18 = v67;
  *(v18 + 8) = v68;
  *(v18 + 16) = v69;
  *(v18 + 24) = v70;
  *(v18 + 32) = v71;
  *(v18 + 40) = v72;
  *(v18 + 48) = v73;
  *(v18 + 56) = v74;
  *(v18 + 64) = v75;
  *(v18 + 72) = v76;
  *(v18 + 80) = v77;
  *(v18 + 88) = v78 & 1;
  return result;
}

uint64_t sub_26AFDDE44(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE20, &unk_26B08D230);
  (*(*(v1 - 8) + 8))(a1);
  updated = type metadata accessor for UpdateOptionsView(0);

  v2 = a1 + updated[6];
  sub_26AFD5C30(*v2, *(v2 + 8), *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), *(v2 + 64), *(v2 + 72), *(v2 + 80), *(v2 + 88), *(v2 + 96), *(v2 + 104), *(v2 + 112), *(v2 + 120), *(v2 + 128), *(v2 + 136), *(v2 + 144), *(v2 + 152), *(v2 + 160), *(v2 + 168), *(v2 + 176), *(v2 + 184), *(v2 + 192), *(v2 + 200), *(v2 + 208), *(v2 + 216), *(v2 + 224), *(v2 + 232), *(v2 + 240), *(v2 + 248), *(v2 + 256), *(v2 + 264), *(v2 + 272));

  v3 = a1 + updated[8];
  sub_26AFD66B4(*v3, *(v3 + 8), *(v3 + 16), *(v3 + 24), *(v3 + 32), *(v3 + 40), *(v3 + 48), *(v3 + 56), *(v3 + 64), *(v3 + 72), *(v3 + 80), *(v3 + 88));
  v4 = a1 + updated[9];
  sub_26AFD66B4(*v4, *(v4 + 8), *(v4 + 16), *(v4 + 24), *(v4 + 32), *(v4 + 40), *(v4 + 48), *(v4 + 56), *(v4 + 64), *(v4 + 72), *(v4 + 80), *(v4 + 88));
  return a1;
}

unint64_t sub_26AFDE10C()
{
  v2 = qword_2803DE020;
  if (!qword_2803DE020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DE018, &qword_26B08E4C0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE020);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AFDE194()
{
  v2 = qword_2803DE028;
  if (!qword_2803DE028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DE000, &qword_26B08E4A8);
    sub_26AFDE10C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE028);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AFDE22C(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE030, &qword_26B08E4C8);
  (*(*(v1 - 8) + 8))(a1);
  v4 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE038, &qword_26B08E4D0) + 36);

  sub_26AEF7A44(*(v4 + 88), *(v4 + 96) & 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE040, &qword_26B08E4D8);
  sub_26AF072D8();
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE048, &qword_26B08E4E0) + 36);
  v2 = sub_26B079100();
  (*(*(v2 - 8) + 8))(a1 + v5);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE050, &qword_26B08E4E8) + 48);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE058, &unk_26B08E4F0);
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(a1 + v6, 1))
  {
    (*(v9 + 8))(a1 + v6, v8);
  }

  return a1;
}

unint64_t sub_26AFDE468()
{
  v2 = qword_2803DE060;
  if (!qword_2803DE060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DE008, &qword_26B08E4B0);
    sub_26AFDE194();
    sub_26AE9C354();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE060);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AFDE510(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE030, &qword_26B08E4C8);
  (*(*(v1 - 8) + 8))(a1);
  v4 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE038, &qword_26B08E4D0) + 36);

  sub_26AEF7A44(*(v4 + 88), *(v4 + 96) & 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE040, &qword_26B08E4D8);
  sub_26AF072D8();
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE048, &qword_26B08E4E0) + 36);
  v2 = sub_26B079100();
  (*(*(v2 - 8) + 8))(a1 + v5);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE050, &qword_26B08E4E8) + 48);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE058, &unk_26B08E4F0);
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(a1 + v6, 1))
  {
    (*(v9 + 8))(a1 + v6, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE008, &qword_26B08E4B0);

  return a1;
}

unint64_t sub_26AFDE784()
{
  v2 = qword_2803DE080;
  if (!qword_2803DE080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DE040, &qword_26B08E4D8);
    sub_26AFDE82C();
    sub_26AF2C5CC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE080);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AFDE82C()
{
  v2 = qword_2803DE088;
  if (!qword_2803DE088)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DE038, &qword_26B08E4D0);
    sub_26AFDE8D4();
    sub_26AFDE95C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE088);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AFDE8D4()
{
  v2 = qword_2803DE090;
  if (!qword_2803DE090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DE030, &qword_26B08E4C8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE090);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AFDE95C()
{
  v2 = qword_2803DE098;
  if (!qword_2803DE098)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE098);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AFDE9D4(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE030, &qword_26B08E4C8);
  (*(*(v1 - 8) + 8))(a1);
  v3 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE038, &qword_26B08E4D0) + 36);

  sub_26AEF7A44(*(v3 + 88), *(v3 + 96) & 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE040, &qword_26B08E4D8);
  sub_26AF072D8();
  return a1;
}

unint64_t sub_26AFDEAF0()
{
  v2 = qword_2803DE0A0;
  if (!qword_2803DE0A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DE048, &qword_26B08E4E0);
    sub_26AFDE784();
    sub_26AE95850();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE0A0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AFDEB98(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE030, &qword_26B08E4C8);
  (*(*(v1 - 8) + 8))(a1);
  v4 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE038, &qword_26B08E4D0) + 36);

  sub_26AEF7A44(*(v4 + 88), *(v4 + 96) & 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE040, &qword_26B08E4D8);
  sub_26AF072D8();
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE048, &qword_26B08E4E0) + 36);
  v2 = sub_26B079100();
  (*(*(v2 - 8) + 8))(a1 + v5);
  return a1;
}

unint64_t sub_26AFDED10()
{
  v2 = qword_2803DE0B0;
  if (!qword_2803DE0B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DE070, &qword_26B08E508);
    sub_26AFDEDB8();
    sub_26AE95850();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE0B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AFDEDB8()
{
  v2 = qword_2803DE0B8;
  if (!qword_2803DE0B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DE068, &qword_26B08E500);
    sub_26AFDEE60();
    sub_26AF2C5CC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE0B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AFDEE60()
{
  v2 = qword_2803DE0C0;
  if (!qword_2803DE0C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DE0C8, &qword_26B08E520);
    sub_26AFDE8D4();
    sub_26AFDEF08();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE0C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AFDEF08()
{
  v2 = qword_2803DE0D0;
  if (!qword_2803DE0D0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE0D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AFDEF80()
{
  v2 = qword_2803DE0D8;
  if (!qword_2803DE0D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DE0A8, &qword_26B08E518);
    sub_26AFDF018();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE0D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AFDF018()
{
  v2 = qword_2803DE0E0;
  if (!qword_2803DE0E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DE0E8, &qword_26B08E528);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE0E0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AFDF0A0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE058, &unk_26B08E4F0);
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

void *sub_26AFDF154(const void *a1, void *a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE058, &unk_26B08E4F0);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE078, &qword_26B08E510);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_26AFDF288(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE030, &qword_26B08E4C8);
  (*(*(v2 - 8) + 16))(a2, a1);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE038, &qword_26B08E4D0);
  v14 = a1 + *(v3 + 36);
  v17 = a2 + *(v3 + 36);
  *v17 = *v14;
  *(v17 + 8) = *(v14 + 8);
  *(v17 + 16) = *(v14 + 16);
  v8 = *(v14 + 24);
  sub_26B078640();
  *(v17 + 24) = v8;
  *(v17 + 32) = *(v14 + 32);
  v9 = *(v14 + 40);
  sub_26B078640();
  *(v17 + 40) = v9;
  *(v17 + 48) = *(v14 + 48);
  v10 = *(v14 + 56);

  *(v17 + 56) = v10;
  v11 = *(v14 + 64);

  *(v17 + 64) = v11;
  v12 = *(v14 + 72);

  *(v17 + 72) = v12;
  v13 = *(v14 + 80);

  *(v17 + 80) = v13;
  v15 = *(v14 + 88);
  v16 = *(v14 + 96);
  sub_26AEF79D8(v15, v16 & 1);
  *(v17 + 88) = v15;
  *(v17 + 96) = v16 & 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE040, &qword_26B08E4D8);
  v5 = a1 + *(v4 + 36);
  v20 = a2 + *(v4 + 36);
  *v20 = *v5;
  v18 = *(v5 + 8);
  v19 = *(v5 + 16);
  sub_26AF07734();
  *(v20 + 8) = v18;
  *(v20 + 16) = v19 & 1;
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE048, &qword_26B08E4E0) + 36);
  v6 = sub_26B079100();
  (*(*(v6 - 8) + 16))(a2 + v21, a1 + v21);
  return a2;
}

void *sub_26AFDF520(const void *a1, void *a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE058, &unk_26B08E4F0);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE078, &qword_26B08E510);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

unint64_t sub_26AFDF654()
{
  v2 = qword_2803DE0F0;
  if (!qword_2803DE0F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DE078, &qword_26B08E510);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DE070, &qword_26B08E508);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DE0A8, &qword_26B08E518);
    sub_26AFDED10();
    sub_26AFDEF80();
    swift_getOpaqueTypeConformance2();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE0F0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AFDF76C(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE030, &qword_26B08E4C8);
  (*(*(v1 - 8) + 8))(a1);
  v3 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE0C8, &qword_26B08E520) + 36);

  sub_26AEF7A44(*(v3 + 88), *(v3 + 96) & 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE068, &qword_26B08E500);
  sub_26AF072D8();
  return a1;
}

uint64_t sub_26AFDF890(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE030, &qword_26B08E4C8);
  (*(*(v1 - 8) + 8))(a1);
  v4 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE0C8, &qword_26B08E520) + 36);

  sub_26AEF7A44(*(v4 + 88), *(v4 + 96) & 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE068, &qword_26B08E500);
  sub_26AF072D8();
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE070, &qword_26B08E508) + 36);
  v2 = sub_26B079100();
  (*(*(v2 - 8) + 8))(a1 + v5);
  return a1;
}

uint64_t sub_26AFDFA08()
{
  updated = type metadata accessor for UpdateOptionsView(0);
  v1 = *(*(updated - 1) + 80);
  v7 = (v1 + 16) & ~v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE20, &unk_26B08D230);
  (*(*(v2 - 8) + 8))();

  v3 = v0 + v7 + updated[6];
  sub_26AFD5C30(*v3, *(v3 + 8), *(v3 + 16), *(v3 + 24), *(v3 + 32), *(v3 + 40), *(v3 + 48), *(v3 + 56), *(v3 + 64), *(v3 + 72), *(v3 + 80), *(v3 + 88), *(v3 + 96), *(v3 + 104), *(v3 + 112), *(v3 + 120), *(v3 + 128), *(v3 + 136), *(v3 + 144), *(v3 + 152), *(v3 + 160), *(v3 + 168), *(v3 + 176), *(v3 + 184), *(v3 + 192), *(v3 + 200), *(v3 + 208), *(v3 + 216), *(v3 + 224), *(v3 + 232), *(v3 + 240), *(v3 + 248), *(v3 + 256), *(v3 + 264), *(v3 + 272));

  v4 = v0 + v7 + updated[8];
  sub_26AFD66B4(*v4, *(v4 + 8), *(v4 + 16), *(v4 + 24), *(v4 + 32), *(v4 + 40), *(v4 + 48), *(v4 + 56), *(v4 + 64), *(v4 + 72), *(v4 + 80), *(v4 + 88));
  v5 = v0 + v7 + updated[9];
  sub_26AFD66B4(*v5, *(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 32), *(v5 + 40), *(v5 + 48), *(v5 + 56), *(v5 + 64), *(v5 + 72), *(v5 + 80), *(v5 + 88));
  return swift_deallocObject();
}

uint64_t sub_26AFDFD48(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE20, &unk_26B08D230);
  (*(*(v2 - 8) + 32))(a2, a1);
  updated = type metadata accessor for UpdateOptionsView(0);
  v3 = a1 + updated[5];
  v4 = a2 + updated[5];
  *v4 = *v3;
  *(v4 + 8) = *(v3 + 8);
  memcpy((a2 + updated[6]), (a1 + updated[6]), 0x111uLL);
  v5 = (a1 + updated[7]);
  v6 = *v5;
  v7 = v5[1];
  v8 = (a2 + updated[7]);
  *v8 = v6;
  v8[1] = v7;
  memcpy((a2 + updated[8]), (a1 + updated[8]), 0x59uLL);
  memcpy((a2 + updated[9]), (a1 + updated[9]), 0x59uLL);
  return a2;
}