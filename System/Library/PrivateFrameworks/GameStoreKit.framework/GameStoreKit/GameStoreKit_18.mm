uint64_t type metadata accessor for InviteFriendsSearchPageIntent(uint64_t a1)
{
  result = qword_27F21D9E8;
  if (!qword_27F21D9E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E7D414C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21D9C8, &qword_24F959E38);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24E7D41B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InviteFriendsSearchPageIntent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E7D4254(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D9B8, &qword_24F959E30);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E7D3E30();
  sub_24F92D128();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D9C8, &qword_24F959E38);
  sub_24E7D414C(&qword_27F21D9D0, MEMORY[0x277D837D8], MEMORY[0x277D21AD0]);
  sub_24F92CD48();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_24E7D43E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D9C8, &qword_24F959E38);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24E7D446C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D9C8, &qword_24F959E38);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_24E7D44E8(uint64_t a1)
{
  sub_24E7D4554();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_24E7D4554()
{
  if (!qword_27F21D9F8)
  {
    v0 = sub_24F928128();
    if (!v1)
    {
      atomic_store(v0, &qword_27F21D9F8);
    }
  }
}

unint64_t sub_24E7D45B8()
{
  result = qword_27F21DA00;
  if (!qword_27F21DA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21DA00);
  }

  return result;
}

unint64_t sub_24E7D4610()
{
  result = qword_27F21DA08;
  if (!qword_27F21DA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21DA08);
  }

  return result;
}

unint64_t sub_24E7D4668()
{
  result = qword_27F21DA10;
  if (!qword_27F21DA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21DA10);
  }

  return result;
}

uint64_t GameLibraryRefsDataIntentImplementation.perform(_:objectGraph:)(uint64_t a1)
{
  v1[12] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DA18, &unk_24F9762F0);
  v1[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DA20, qword_24F95A020);
  v1[14] = swift_task_alloc();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2142C0, &unk_24F93C710);
  v3 = swift_task_alloc();
  v1[15] = v3;
  *v3 = v1;
  v3[1] = sub_24E7D47EC;

  return MEMORY[0x28217F228](v1 + 7, v2, v2);
}

uint64_t sub_24E7D47EC()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_24E7D4C38;
  }

  else
  {
    v2 = sub_24E7D4900;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E7D4900()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  sub_24F920538();
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v5 = v0[5];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v5);
  v6 = sub_24F920728();
  (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
  v7 = sub_24F920398();
  (*(*(v7 - 8) + 56))(v1, 1, 1, v7);
  v8 = *v3;
  v9 = v3[1];
  v10 = swift_task_alloc();
  v0[17] = v10;
  *v10 = v0;
  v10[1] = sub_24E7D4A8C;
  v11 = v0[13];
  v12 = v0[14];

  return sub_24F6F70F8(v12, v11, 0, 1, v8, v9, v5, v4);
}

uint64_t sub_24E7D4A8C(uint64_t a1)
{
  v4 = *v2;
  v4[18] = v1;

  v5 = v4[14];
  v6 = v4[13];
  if (v1)
  {
    sub_24E601704(v6, &qword_27F21DA18, &unk_24F9762F0);
    sub_24E601704(v5, &qword_27F21DA20, qword_24F95A020);
    v7 = sub_24E7D4D2C;
  }

  else
  {
    v4[19] = a1;
    sub_24E601704(v6, &qword_27F21DA18, &unk_24F9762F0);
    sub_24E601704(v5, &qword_27F21DA20, qword_24F95A020);
    v7 = sub_24E7D4CA4;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_24E7D4C38()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E7D4CA4()
{
  v1 = v0[19];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_24E7D4D2C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_24E7D4DA4()
{
  result = qword_27F21A568;
  if (!qword_27F21A568)
  {
    type metadata accessor for GameLibraryRefsDataIntent(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A568);
  }

  return result;
}

uint64_t sub_24E7D4DFC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_24E67D244;

  return GameLibraryRefsDataIntentImplementation.perform(_:objectGraph:)(a2);
}

uint64_t InviteFriendsSearchPageIntentImplementation.perform(_:objectGraph:)(uint64_t a1, uint64_t a2)
{
  v2[32] = a1;
  v2[33] = a2;
  v3 = sub_24F92A708();
  v2[34] = v3;
  v2[35] = *(v3 - 8);
  v2[36] = swift_task_alloc();
  v2[37] = type metadata accessor for InviteFriendsSearchShelfIntent(0);
  v2[38] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24E7D4F9C, 0, 0);
}

uint64_t sub_24E7D4F9C()
{
  v1 = v0;
  v2 = v0[37];
  v3 = v0[38];
  v5 = v0[35];
  v4 = v0[36];
  v6 = v0[33];
  v68 = v0[34];
  v7 = v0[32];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D9C8, &qword_24F959E38);
  (*(*(v8 - 8) + 16))(v3, v6, v8);
  v9._countAndFlagsBits = 0xD000000000000032;
  v9._object = 0x800000024FA47680;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v11 = localizedString(_:comment:)(v9, v10);
  v12._countAndFlagsBits = 0xD000000000000020;
  v12._object = 0x800000024FA476C0;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  v14 = localizedString(_:comment:)(v12, v13);
  sub_24ECA2424(v1 + 2);
  *(v3 + v2[5]) = v11;
  *(v3 + v2[6]) = xmmword_24F95A0B0;
  *(v3 + v2[7]) = v14;
  v15 = v3 + v2[8];
  *(v15 + 32) = 0;
  *v15 = 0u;
  *(v15 + 16) = 0u;
  sub_24E7D5870((v1 + 2), v15);
  v16 = (v3 + v2[9]);
  *v16 = 0;
  v16[1] = 0;
  sub_24F92A6F8();
  (*(v5 + 16))(v7, v4, v68);
  v17 = type metadata accessor for Page(0);
  sub_24F928808();
  if (qword_27F20FF08 != -1)
  {
    swift_once();
  }

  v19 = v1[37];
  v18 = v1[38];
  v20 = xmmword_27F39ACF8;
  v21 = xmmword_27F39AD08;
  v67 = byte_27F39AD18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213810, &unk_24F93B390);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_24F93DE60;
  *(v22 + 56) = v19;
  *(v22 + 64) = sub_24E7D5A88(&unk_27F22D130, type metadata accessor for InviteFriendsSearchShelfIntent, &protocol conformance descriptor for InviteFriendsSearchShelfIntent);
  v65 = v22;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v22 + 32));
  sub_24E7D5980(v18, boxed_opaque_existential_1);
  v24 = v17[20];
  v25 = qword_27F211660;

  if (v25 != -1)
  {
    swift_once();
  }

  v66 = v1[38];
  v62 = v1[35];
  v63 = v1[34];
  v64 = v1[36];
  v26 = v1[32];
  v27 = (v26 + v24);
  v29 = qword_27F39ED88;
  v28 = unk_27F39ED90;
  v30 = type metadata accessor for HeaderPresentation.HeaderLabel(0);
  v31 = v30[5];
  v32 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
  v33 = *(*(v32 - 8) + 56);
  v34 = v32;
  v33(v27 + v31, 1, 1);
  v35 = v30[7];
  v36 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
  (*(*(v36 - 8) + 56))(v27 + v35, 1, 1, v36);
  v1[11] = 0;
  *(v1 + 9) = 0u;
  *(v1 + 7) = 0u;
  *v27 = v29;
  v27[1] = v28;
  *(v27 + v30[6]) = 2;
  *(v27 + v30[8]) = 2;
  v37 = v27 + v30[9];
  *v37 = 0;
  *(v37 + 4) = 256;
  v38 = v27 + v30[10];
  *v38 = 0u;
  *(v38 + 16) = 0u;
  *(v38 + 32) = 0;

  sub_24E7D5870((v1 + 7), v38);
  v39 = *(*(v30 - 1) + 56);
  v39(v27, 0, 1, v30);
  v40 = type metadata accessor for HeaderPresentation(0);
  v39((v27 + v40[5]), 1, 1, v30);
  v39((v27 + v40[6]), 1, 1, v30);
  v41 = v27 + v40[7];
  *(v41 + 6) = 0;
  *(v41 + 1) = 0u;
  *(v41 + 2) = 0u;
  *v41 = 0u;
  v41[56] = -1;
  v42 = v27 + v40[8];
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218348, &qword_24F948480);
  v44 = v43[12];
  v60 = v43[16];
  v61 = v43[20];
  (v33)(v42, 1, 1, v34);
  (v33)(&v42[v44], 1, 1, v34);
  v42[v60] = 0;
  v45 = type metadata accessor for JSColor(0);
  (*(*(v45 - 8) + 56))(&v42[v61], 1, 1, v45);
  v46 = type metadata accessor for HeaderPresentation.HeaderStyle(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v46 - 8) + 56))(v42, 0, 1, v46);
  *(v27 + v40[9]) = 7;
  *(v27 + v40[10]) = 2;
  *(v27 + v40[11]) = 2;
  *(v27 + v40[12]) = 2;
  (*(*(v40 - 1) + 56))(v27, 0, 1, v40);
  v47 = v17[24];
  v48 = type metadata accessor for Page.Background(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v48 - 8) + 56))(v26 + v47, 0, 1, v48);
  v1[16] = 0;
  *(v1 + 6) = 0u;
  *(v1 + 7) = 0u;
  *(v1 + 19) = 0u;
  v1[21] = 0;
  *(v1 + 17) = 0u;
  *(v1 + 12) = 0u;
  v1[26] = 0;
  *(v1 + 11) = 0u;
  *(v1 + 29) = 0u;
  v1[31] = 0;
  *(v1 + 27) = 0u;
  (*(v62 + 8))(v64, v63);
  v49 = (v26 + v17[5]);
  *v49 = 0xD000000000000013;
  v49[1] = 0x800000024FA476F0;
  v50 = (v26 + v17[7]);
  *v50 = 0;
  v50[1] = 0xE000000000000000;
  *(v26 + v17[8]) = 1;
  *(v26 + v17[9]) = 1;
  v51 = v26 + v17[10];
  *v51 = v20;
  *(v51 + 16) = v21;
  *(v51 + 32) = v67;
  *(v26 + v17[11]) = 0;
  *(v26 + v17[12]) = v65;
  v52 = MEMORY[0x277D84F90];
  *(v26 + v17[13]) = MEMORY[0x277D84F90];
  *(v26 + v17[14]) = 2;
  *(v26 + v17[15]) = 7;
  *(v26 + v17[16]) = v52;
  *(v26 + v17[17]) = v52;
  *(v26 + v17[18]) = v52;
  *(v26 + v17[19]) = v52;
  *(v26 + v17[21]) = 0;
  *(v26 + v17[22]) = 3;
  v53 = (v26 + v17[23]);
  *v53 = 0;
  v53[1] = 0;
  *(v26 + v17[25]) = 3;
  *(v26 + v17[26]) = v52;
  v54 = v26 + v17[27];
  *(v54 + 32) = 0;
  *v54 = 0u;
  *(v54 + 16) = 0u;
  sub_24E7D5870((v1 + 12), v54);
  v55 = v26 + v17[28];
  *(v55 + 32) = 0;
  *v55 = 0u;
  *(v55 + 16) = 0u;
  sub_24E7D5870((v1 + 17), v55);
  v56 = v26 + v17[29];
  *(v56 + 32) = 0;
  *v56 = 0u;
  *(v56 + 16) = 0u;
  sub_24E7D5870((v1 + 22), v56);
  v57 = v26 + v17[30];
  *(v57 + 32) = 0;
  *v57 = 0u;
  *(v57 + 16) = 0u;
  sub_24E7D5870((v1 + 27), v57);
  *(v26 + v17[31]) = 0;
  *(v26 + v17[32]) = 0;
  sub_24E7D59E4(v66);
  (*(*(v17 - 1) + 56))(v26, 0, 1, v17);

  v58 = v1[1];

  return v58();
}

uint64_t sub_24E7D5870(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F21B590, &unk_24F93BE30);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E7D58E0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24E614970;

  return InviteFriendsSearchPageIntentImplementation.perform(_:objectGraph:)(a1, a2);
}

uint64_t sub_24E7D5980(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InviteFriendsSearchShelfIntent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E7D59E4(uint64_t a1)
{
  v2 = type metadata accessor for InviteFriendsSearchShelfIntent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E7D5A88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t GameLibraryArcadeChicletMetadataIntent.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88, &unk_24F93A430);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93DE60;
  *(inited + 32) = 0x726579616C70;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 72) = type metadata accessor for Player(0);
  *(inited + 80) = sub_24E61C064(&qword_27F215388, &protocol conformance descriptor for Player);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  sub_24E70D960(v2, boxed_opaque_existential_1);
  v6 = sub_24E607E40(inited);
  swift_setDeallocating();
  sub_24E6383E8(inited + 32);
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v6;
  return result;
}

uint64_t sub_24E7D5C48(uint64_t a1)
{
  v2 = sub_24E7D6330();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E7D5C84(uint64_t a1)
{
  v2 = sub_24E7D6330();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GameLibraryArcadeChicletMetadataIntent.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DA28, &qword_24F95A180);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E7D6330();
  sub_24F92D128();
  type metadata accessor for Player(0);
  sub_24E61C064(&qword_27F213E28, &protocol conformance descriptor for Player);
  sub_24F92CD48();
  return (*(v3 + 8))(v5, v2);
}

uint64_t GameLibraryArcadeChicletMetadataIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v4 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v4);
  v17 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DA38, &qword_24F95A188);
  v15 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for GameLibraryArcadeChicletMetadataIntent(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E7D6330();
  sub_24F92D108();
  if (!v2)
  {
    v12 = v16;
    sub_24E61C064(&qword_27F213E38, &protocol conformance descriptor for Player);
    v13 = v17;
    sub_24F92CC68();
    (*(v15 + 8))(v8, v6);
    sub_24E7D63D0(v13, v11, type metadata accessor for Player);
    sub_24E7D63D0(v11, v12, type metadata accessor for GameLibraryArcadeChicletMetadataIntent);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_24E7D60BC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DA28, &qword_24F95A180);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E7D6330();
  sub_24F92D128();
  type metadata accessor for Player(0);
  sub_24E61C064(&qword_27F213E28, &protocol conformance descriptor for Player);
  sub_24F92CD48();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_24E7D6220@<X0>(unint64_t *a1@<X8>)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88, &unk_24F93A430);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93DE60;
  *(inited + 32) = 0x726579616C70;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 72) = type metadata accessor for Player(0);
  *(inited + 80) = sub_24E61C064(&qword_27F215388, &protocol conformance descriptor for Player);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  sub_24E70D960(v2, boxed_opaque_existential_1);
  v6 = sub_24E607E40(inited);
  swift_setDeallocating();
  sub_24E6383E8(inited + 32);
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v6;
  return result;
}

unint64_t sub_24E7D6330()
{
  result = qword_27F21DA30;
  if (!qword_27F21DA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21DA30);
  }

  return result;
}

uint64_t type metadata accessor for GameLibraryArcadeChicletMetadataIntent(uint64_t a1)
{
  result = qword_27F21DA40;
  if (!qword_27F21DA40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E7D63D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E7D644C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Player(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24E7D64CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Player(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

unint64_t sub_24E7D6550()
{
  result = qword_27F21DA50;
  if (!qword_27F21DA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21DA50);
  }

  return result;
}

unint64_t sub_24E7D65A8()
{
  result = qword_27F21DA58;
  if (!qword_27F21DA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21DA58);
  }

  return result;
}

unint64_t sub_24E7D6600()
{
  result = qword_27F21DA60;
  if (!qword_27F21DA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21DA60);
  }

  return result;
}

uint64_t AddFriendButtonShelfConstructionIntent.pageID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t type metadata accessor for AddFriendButtonShelfConstructionIntent(uint64_t a1)
{
  result = qword_27F21DA80;
  if (!qword_27F21DA80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t AddFriendButtonShelfConstructionIntent.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88, &unk_24F93A430);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 32) = 0x444965676170;
  *(inited + 40) = 0xE600000000000000;
  v4 = *v1;
  v5 = v1[1];
  v6 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v6;
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  *(inited + 88) = 0x726579616C70;
  *(inited + 96) = 0xE600000000000000;
  v7 = *(type metadata accessor for AddFriendButtonShelfConstructionIntent(0) + 20);
  *(inited + 128) = type metadata accessor for Player(0);
  *(inited + 136) = sub_24E61C064(&qword_27F215388, &protocol conformance descriptor for Player);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 104));
  sub_24E7D6FE4(v1 + v7, boxed_opaque_existential_1, type metadata accessor for Player);

  v9 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0, &unk_24F93A440);
  swift_arrayDestroy();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v9;
  return result;
}

uint64_t sub_24E7D68BC(uint64_t a1)
{
  v2 = sub_24E7D6F90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E7D68F8(uint64_t a1)
{
  v2 = sub_24E7D6F90();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AddFriendButtonShelfConstructionIntent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DA68, &qword_24F95A3D0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E7D6F90();
  sub_24F92D128();
  v8[15] = 0;
  sub_24F92CD08();
  if (!v1)
  {
    type metadata accessor for AddFriendButtonShelfConstructionIntent(0);
    v8[14] = 1;
    type metadata accessor for Player(0);
    sub_24E61C064(&qword_27F213E28, &protocol conformance descriptor for Player);
    sub_24F92CD48();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t AddFriendButtonShelfConstructionIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v18 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v18);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DA78, &qword_24F95A3D8);
  v17 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v7 = &v14 - v6;
  v8 = type metadata accessor for AddFriendButtonShelfConstructionIntent(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E7D6F90();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = v8;
  v11 = v17;
  v21 = 0;
  *v10 = sub_24F92CC28();
  v10[1] = v12;
  v20 = 1;
  sub_24E61C064(&qword_27F213E38, &protocol conformance descriptor for Player);
  sub_24F92CC68();
  (*(v11 + 8))(v7, v19);
  sub_24E61C0A8(v5, v10 + *(v15 + 20));
  sub_24E7D6FE4(v10, v16, type metadata accessor for AddFriendButtonShelfConstructionIntent);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24E7D704C(v10);
}

unint64_t sub_24E7D6E10@<X0>(uint64_t a1@<X1>, unint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88, &unk_24F93A430);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 32) = 0x444965676170;
  *(inited + 40) = 0xE600000000000000;
  v6 = *v2;
  v7 = v2[1];
  v8 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v8;
  *(inited + 48) = v6;
  *(inited + 56) = v7;
  *(inited + 88) = 0x726579616C70;
  *(inited + 96) = 0xE600000000000000;
  v9 = *(a1 + 20);
  *(inited + 128) = type metadata accessor for Player(0);
  *(inited + 136) = sub_24E61C064(&qword_27F215388, &protocol conformance descriptor for Player);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 104));
  sub_24E7D6FE4(v2 + v9, boxed_opaque_existential_1, type metadata accessor for Player);

  v11 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0, &unk_24F93A440);
  swift_arrayDestroy();
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a2[4] = result;
  *a2 = v11;
  return result;
}

unint64_t sub_24E7D6F90()
{
  result = qword_27F21DA70;
  if (!qword_27F21DA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21DA70);
  }

  return result;
}

uint64_t sub_24E7D6FE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E7D704C(uint64_t a1)
{
  v2 = type metadata accessor for AddFriendButtonShelfConstructionIntent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E7D70BC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Player(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24E7D717C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Player(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_24E7D7234()
{
  result = qword_27F21DA90;
  if (!qword_27F21DA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21DA90);
  }

  return result;
}

unint64_t sub_24E7D728C()
{
  result = qword_27F21DA98;
  if (!qword_27F21DA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21DA98);
  }

  return result;
}

unint64_t sub_24E7D72E4()
{
  result = qword_27F21DAA0;
  if (!qword_27F21DAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21DAA0);
  }

  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_24E7D7354(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 49))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_24E7D73B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_24E7D7438(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = type metadata accessor for ButtonGroupItemType(0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[8];

  return v15(v16, a2, v14);
}

uint64_t sub_24E7D75D0(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for ButtonGroupItemType(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[8];

  return v15(v16, a2, a2, v14);
}

uint64_t type metadata accessor for ButtonGroupItem(uint64_t a1)
{
  result = qword_27F21DAA8;
  if (!qword_27F21DAA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E7D77A0(uint64_t a1)
{
  sub_24E61C7D0(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ButtonGroupItemType(319);
    if (v2 <= 0x3F)
    {
      sub_24E65B038(319, &qword_27F213EA0, &qword_27F213EA8, &unk_24F93D030);
      if (v3 <= 0x3F)
      {
        sub_24E65B038(319, &qword_27F215458, &qword_27F215460, &qword_24F942C00);
        if (v4 <= 0x3F)
        {
          sub_24E61C938(319);
          if (v5 <= 0x3F)
          {
            sub_24E7CA640();
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

uint64_t sub_24E7D78B4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v3 - 8);
  v37 = v35 - v4;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v39);
  v38 = v35 - v5;
  v6 = type metadata accessor for ButtonGroupItemType(0);
  MEMORY[0x28223BE20](v6);
  v8 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DAC0, &qword_24F95A710);
  v10 = *(v9 - 8);
  v40 = v9;
  v41 = v10;
  MEMORY[0x28223BE20](v9);
  v12 = v35 - v11;
  v13 = type metadata accessor for ButtonGroupItem(0);
  MEMORY[0x28223BE20](v13);
  v15 = v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = &v15[*(v16 + 24)];
  v50 = 0;
  v48 = 0u;
  v49 = 0u;
  *v17 = 0u;
  *(v17 + 16) = 0u;
  *(v17 + 32) = 0;
  v44 = v17;
  sub_24E61DA68(&v48, v17, qword_27F21B590, &unk_24F93BE30);
  v18 = *(v13 + 28);
  v19 = sub_24F92A6D8();
  v20 = *(*(v19 - 8) + 56);
  v47 = v18;
  v20(&v15[v18], 1, 1, v19);
  v21 = *(v13 + 32);
  v22 = sub_24F929608();
  v23 = *(*(v22 - 8) + 56);
  v45 = v21;
  v23(&v15[v21], 1, 1, v22);
  v24 = a1[3];
  v46 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  sub_24E7D82E0();
  v42 = v12;
  v25 = v43;
  sub_24F92D108();
  if (v25)
  {
    v27 = v44;
    __swift_destroy_boxed_opaque_existential_1(v46);
    v28 = v45;
    sub_24E601704(v27, qword_27F24EC90, &unk_24F93C1D0);
    sub_24E601704(&v15[v47], &qword_27F215440, &unk_24F942BD0);
    return sub_24E601704(&v15[v28], &qword_27F213E68, &unk_24F93BC80);
  }

  else
  {
    v35[1] = v22;
    v43 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
    v51 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DC0]);
    v26 = v40;
    sub_24F92CC68();
    v29 = v49;
    *v15 = v48;
    *(v15 + 1) = v29;
    *(v15 + 4) = v50;
    LOBYTE(v48) = 1;
    sub_24E7D8398(&qword_27F21DAD0, type metadata accessor for ButtonGroupItemType, &unk_24F963530);
    sub_24F92CC68();
    v30 = v43;
    sub_24E7D8334(v8, &v15[*(v43 + 20)]);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    v51 = 2;
    sub_24E61D970();
    sub_24F92CC68();
    sub_24E61DA68(&v48, v44, qword_27F24EC90, &unk_24F93C1D0);
    LOBYTE(v48) = 3;
    sub_24E65CAA0();
    v31 = v38;
    sub_24F92CC68();
    sub_24E61DA68(v31, &v15[v47], &qword_27F215440, &unk_24F942BD0);
    LOBYTE(v48) = 4;
    sub_24E7D8398(&qword_27F213F48, MEMORY[0x277D21F70], MEMORY[0x277D21F88]);
    v32 = v37;
    sub_24F92CC18();
    sub_24E61DA68(v32, &v15[v45], &qword_27F213E68, &unk_24F93BC80);
    LOBYTE(v48) = 5;
    v33 = sub_24F92CBD8();
    (*(v41 + 8))(v42, v26);
    v15[*(v30 + 36)] = v33;
    sub_24E7D83E0(v15, v36);
    __swift_destroy_boxed_opaque_existential_1(v46);
    return sub_24E7D8444(v15, type metadata accessor for ButtonGroupItem);
  }
}

uint64_t sub_24E7D7FF0()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x4D747865746E6F63;
  v4 = 0xD000000000000011;
  if (v1 != 4)
  {
    v4 = 0xD000000000000017;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 1701869940;
  if (v1 != 1)
  {
    v5 = 0x6575676573;
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

uint64_t sub_24E7D80A0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24E7D85BC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24E7D80C8(uint64_t a1)
{
  v2 = sub_24E7D82E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E7D8104(uint64_t a1)
{
  v2 = sub_24E7D82E0();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_24E7D8140@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24E60169C(v2 + *(a1 + 24), v6, qword_27F24EC90, &unk_24F93C1D0);
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  *(a2 + 32) = v7;
  return result;
}

uint64_t sub_24E7D819C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 28), &v9 - v6, &qword_27F215440, &unk_24F942BD0);
  return sub_24E68039C(v7, a2);
}

unint64_t sub_24E7D82E0()
{
  result = qword_27F21DAC8;
  if (!qword_27F21DAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21DAC8);
  }

  return result;
}

uint64_t sub_24E7D8334(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ButtonGroupItemType(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E7D8398(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24E7D83E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ButtonGroupItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E7D8444(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24E7D84B8()
{
  result = qword_27F21DAD8;
  if (!qword_27F21DAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21DAD8);
  }

  return result;
}

unint64_t sub_24E7D8510()
{
  result = qword_27F21DAE0;
  if (!qword_27F21DAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21DAE0);
  }

  return result;
}

unint64_t sub_24E7D8568()
{
  result = qword_27F21DAE8;
  if (!qword_27F21DAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21DAE8);
  }

  return result;
}

uint64_t sub_24E7D85BC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4D747865746E6F63 && a2 == 0xEB00000000756E65 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000017 && 0x800000024FA47710 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_24F92CE08();

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

double sub_24E7D87BC()
{
  result = 0.0;
  xmmword_27F39ACF8 = 0u;
  xmmword_27F39AD08 = 0u;
  byte_27F39AD18 = 2;
  return result;
}

uint64_t sub_24E7D87D8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  if (v5 == 2 || (v5 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DB48, &qword_24F95AA00);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24F93FC20;
    *(inited + 32) = v1;
    *(inited + 40) = v2;
    *(inited + 48) = v3;
    *(inited + 56) = v4;
    if (v1 && *(v1 + 16) || v2 && *(v2 + 16) || v3 && *(v3 + 16))
    {
    }

    else
    {

      swift_bridgeObjectRetain_n();

      if (!v4)
      {
        return 1;
      }

      v8 = *(v4 + 16);

      if (!v8)
      {
        return 1;
      }
    }
  }

  return 0;
}

unint64_t sub_24E7D88F0()
{
  v1 = *v0;
  v2 = 0x676E696C69617274;
  v3 = 0x49676E696461656CLL;
  v4 = 0x6974616D6F747561;
  if (v1 != 3)
  {
    v4 = 0x42656E6F44646461;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24E7D89BC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24E7D9428(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24E7D89E4(uint64_t a1)
{
  v2 = sub_24E7D8D08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E7D8A20(uint64_t a1)
{
  v2 = sub_24E7D8D08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PageToolbarItemGroups.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DAF0, &qword_24F95A830);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v13 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[3];
  v15 = v1[2];
  v16 = v8;
  v14 = v10;
  v13[3] = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E7D8D08();

  sub_24F92D128();
  v18 = v9;
  v17 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DB00, &qword_24F95A838);
  sub_24E7D9150(&qword_27F21DB08, &qword_27F21DB10, &protocol conformance descriptor for PageToolbarItem, MEMORY[0x277D83948]);
  sub_24F92CCF8();
  if (v2)
  {
  }

  else
  {
    v11 = v15;

    v18 = v16;
    v17 = 1;
    sub_24F92CCF8();
    v18 = v11;
    v17 = 2;
    sub_24F92CCF8();
    v18 = v14;
    v17 = 3;
    sub_24F92CCF8();
    LOBYTE(v18) = 4;
    sub_24F92CCB8();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_24E7D8D08()
{
  result = qword_27F21DAF8;
  if (!qword_27F21DAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21DAF8);
  }

  return result;
}

uint64_t PageToolbarItemGroups.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DB18, &qword_24F95A840);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E7D8D08();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DB00, &qword_24F95A838);
  v18 = 0;
  sub_24E7D9150(&qword_27F21DB20, &qword_27F21DB28, &protocol conformance descriptor for PageToolbarItem, MEMORY[0x277D83978]);
  sub_24F92CC18();
  v17 = v19;
  v18 = 1;
  sub_24F92CC18();
  v15 = 0;
  v16 = v19;
  v18 = 2;
  sub_24F92CC18();
  v14 = v19;
  v18 = 3;
  sub_24F92CC18();
  v9 = v19;
  LOBYTE(v19) = 4;
  v11 = sub_24F92CBD8();
  (*(v6 + 8))(v8, v5);
  v12 = v16;
  *a2 = v17;
  *(a2 + 8) = v12;
  *(a2 + 16) = v14;
  *(a2 + 24) = v9;
  *(a2 + 32) = v11;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_24E7D9150(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21DB00, &qword_24F95A838);
    sub_24E7D91D8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24E7D91D8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PageToolbarItem(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24E7D924C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 33))
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

uint64_t sub_24E7D92A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_24E7D9324()
{
  result = qword_27F21DB30;
  if (!qword_27F21DB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21DB30);
  }

  return result;
}

unint64_t sub_24E7D937C()
{
  result = qword_27F21DB38;
  if (!qword_27F21DB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21DB38);
  }

  return result;
}

unint64_t sub_24E7D93D4()
{
  result = qword_27F21DB40;
  if (!qword_27F21DB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21DB40);
  }

  return result;
}

uint64_t sub_24E7D9428(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x800000024FA47730 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E696C69617274 && a2 == 0xED0000736D657449 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x49676E696461656CLL && a2 == 0xEC000000736D6574 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6974616D6F747561 && a2 == 0xEE00736D65744963 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x42656E6F44646461 && a2 == 0xED00006E6F747475)
  {

    return 4;
  }

  else
  {
    v5 = sub_24F92CE08();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_24E7D9614(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for RecordingAssociation(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[5] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212710, &unk_24F940700);
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[8];
      goto LABEL_3;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DB50, &qword_24F95AA08);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[10];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_24E7D97B8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for RecordingAssociation(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5] + 8) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212710, &unk_24F940700);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[8];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DB50, &qword_24F95AA08);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[10];

  return v16(v17, a2, a2, v15);
}

uint64_t type metadata accessor for RecordingFullScreenView(uint64_t a1)
{
  result = qword_27F21DB58;
  if (!qword_27F21DB58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E7D9994(uint64_t a1)
{
  type metadata accessor for RecordingAssociation(319);
  if (v1 <= 0x3F)
  {
    sub_24F928FD8();
    if (v2 <= 0x3F)
    {
      sub_24E600550(319);
      if (v3 <= 0x3F)
      {
        sub_24E7D9B18(319, &qword_27F22C060, MEMORY[0x277D7EC08], MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          sub_24E7D9B7C(319, &qword_27F254E10, MEMORY[0x277D839B0]);
          if (v5 <= 0x3F)
          {
            sub_24E7D9B18(319, &qword_27F21DB68, MEMORY[0x277CDDE90], MEMORY[0x277CE10B8]);
            if (v6 <= 0x3F)
            {
              sub_24E7D9B7C(319, &qword_27F236310, MEMORY[0x277D839F8]);
              if (v7 <= 0x3F)
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

void sub_24E7D9B18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_24E7D9B7C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_24F926F68();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_24E7D9BE4(double *a1, uint64_t a2)
{
  type metadata accessor for RecordingFullScreenView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A6F0, &unk_24F95ACB0);
  sub_24F926F38();
  sub_24F926F38();
  return sub_24F926F48();
}

uint64_t sub_24E7D9CD8(uint64_t a1, uint64_t a2)
{
  type metadata accessor for RecordingFullScreenView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A6F0, &unk_24F95ACB0);
  sub_24F926F38();
  return sub_24F926F48();
}

double sub_24E7D9D78(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for RecordingFullScreenView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  sub_24F923528();
  result = 50.0;
  if (v11 > 50.0)
  {
    v12 = sub_24F92B858();
    (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
    sub_24E7DCF2C(a2, &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    sub_24F92B7F8();
    v13 = sub_24F92B7E8();
    v14 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v15 = swift_allocObject();
    v16 = MEMORY[0x277D85700];
    *(v15 + 16) = v13;
    *(v15 + 24) = v16;
    sub_24E7DDB84(v6, v15 + v14, type metadata accessor for RecordingFullScreenView);
    sub_24EA998B8(0, 0, v9, &unk_24F95ACC8, v15);
  }

  return result;
}

uint64_t sub_24E7D9F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[17] = a4;
  v5 = sub_24F921B58();
  v4[18] = v5;
  v4[19] = *(v5 - 8);
  v4[20] = swift_task_alloc();
  sub_24F928AD8();
  v4[21] = swift_task_alloc();
  v6 = sub_24F92A6B8();
  v4[22] = v6;
  v4[23] = *(v6 - 8);
  v4[24] = swift_task_alloc();
  sub_24F92B7F8();
  v4[25] = sub_24F92B7E8();
  v8 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24E7DA0D8, v8, v7);
}

uint64_t sub_24E7DA0D8()
{

  sub_24F928A98();
  sub_24F92A698();
  sub_24F92A668();
  type metadata accessor for RecordingFullScreenView(0);
  sub_24F7695C8(v0 + 56);
  if (*(v0 + 80))
  {
    v2 = *(v0 + 184);
    v1 = *(v0 + 192);
    v3 = *(v0 + 176);
    v5 = *(v0 + 152);
    v4 = *(v0 + 160);
    v18 = *(v0 + 144);
    sub_24E612E28((v0 + 56), v0 + 16);
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    v6 = MEMORY[0x277D223D8];
    *(v0 + 120) = v3;
    *(v0 + 128) = v6;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 96));
    (*(v2 + 16))(boxed_opaque_existential_1, v1, v3);
    sub_24F76973C(v4);
    sub_24F9218A8();
    (*(v5 + 8))(v4, v18);
    (*(v2 + 8))(v1, v3);
    __swift_destroy_boxed_opaque_existential_1((v0 + 96));
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  else
  {
    sub_24E601704(v0 + 56, &unk_27F212740, &unk_24F940730);
    if (qword_27F211400 != -1)
    {
      swift_once();
    }

    v8 = sub_24F9220D8();
    __swift_project_value_buffer(v8, qword_27F39E850);
    v9 = sub_24F9220B8();
    v10 = sub_24F92BDB8();
    v11 = os_log_type_enabled(v9, v10);
    v13 = *(v0 + 184);
    v12 = *(v0 + 192);
    v14 = *(v0 + 176);
    if (v11)
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_24E5DD000, v9, v10, "Failed to dismiss full screen recording, missing performAction", v15, 2u);
      MEMORY[0x2530542D0](v15, -1, -1);
    }

    (*(v13 + 8))(v12, v14);
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_24E7DA388@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v18 = a1;
  v3 = type metadata accessor for RecordingFullScreenView(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DB70, &qword_24F95AA80);
  MEMORY[0x28223BE20](v7);
  v9 = (&v18 - v8);
  *v9 = sub_24F927618();
  v9[1] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DB78, &qword_24F95AA88);
  sub_24E7DA630(v2, v9 + *(v11 + 44));
  v12 = &v2[*(v4 + 44)];
  v13 = *v12;
  v14 = *(v12 + 1);
  v19 = v13;
  v20 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220, &qword_24F93F6B0);
  sub_24F926F58();
  sub_24E7DCF2C(v2, &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v16 = swift_allocObject();
  sub_24E7DDB84(&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for RecordingFullScreenView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DB80, &qword_24F95AA90);
  sub_24E602068(&qword_27F21DB88, &qword_27F21DB70, &qword_24F95AA80, MEMORY[0x277CE11A8]);
  sub_24E7DD004();
  sub_24F926958();

  return sub_24E601704(v9, &qword_27F21DB70, &qword_24F95AA80);
}

uint64_t sub_24E7DA630@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DBB8, &qword_24F95AAB8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v34 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DBC0, &qword_24F95AAC0);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v34 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v34 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DBC8, &qword_24F95AAC8);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v34 - v19;
  *v20 = sub_24F9249A8();
  *(v20 + 1) = 0;
  v20[16] = 1;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DBD0, &qword_24F95AAD0);
  sub_24E7DA9D4(a1, &v20[*(v21 + 44)]);
  *v14 = sub_24F924C88();
  *(v14 + 1) = 0;
  v14[16] = 1;
  v22 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DBD8, &qword_24F95AAD8) + 44)];
  *v8 = sub_24F9249A8();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DBE0, &qword_24F95AAE0);
  sub_24E7DC050(a1, &v8[*(v23 + 44)]);
  sub_24E60169C(v8, v5, &qword_27F21DBB8, &qword_24F95AAB8);
  sub_24E60169C(v5, v22, &qword_27F21DBB8, &qword_24F95AAB8);
  v24 = v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DBE8, &qword_24F95AAE8) + 48);
  *v24 = 0;
  *(v24 + 8) = 1;
  sub_24E601704(v8, &qword_27F21DBB8, &qword_24F95AAB8);
  sub_24E601704(v5, &qword_27F21DBB8, &qword_24F95AAB8);
  LOBYTE(v5) = sub_24F925808();
  sub_24F923318();
  v25 = &v14[*(v10 + 44)];
  *v25 = v5;
  *(v25 + 1) = v26;
  *(v25 + 2) = v27;
  *(v25 + 3) = v28;
  *(v25 + 4) = v29;
  v25[40] = 0;
  sub_24E60169C(v20, v17, &qword_27F21DBC8, &qword_24F95AAC8);
  v30 = v34;
  sub_24E60169C(v14, v34, &qword_27F21DBC0, &qword_24F95AAC0);
  v31 = v35;
  sub_24E60169C(v17, v35, &qword_27F21DBC8, &qword_24F95AAC8);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DBF0, &qword_24F95AAF0);
  sub_24E60169C(v30, v31 + *(v32 + 48), &qword_27F21DBC0, &qword_24F95AAC0);
  sub_24E601704(v14, &qword_27F21DBC0, &qword_24F95AAC0);
  sub_24E601704(v20, &qword_27F21DBC8, &qword_24F95AAC8);
  sub_24E601704(v30, &qword_27F21DBC0, &qword_24F95AAC0);
  return sub_24E601704(v17, &qword_27F21DBC8, &qword_24F95AAC8);
}

uint64_t sub_24E7DA9D4@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v148 = a2;
  v122 = sub_24F924EB8();
  v121 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v119 = &v109 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DCC0, &qword_24F95AC68);
  v125 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v123 = &v109 - v4;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DCC8, &unk_24F95AC70);
  v129 = *(v147 - 8);
  MEMORY[0x28223BE20](v147);
  v128 = &v109 - v5;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DCD0, &qword_24FA0F620);
  MEMORY[0x28223BE20](v116);
  v117 = &v109 - v6;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DCD8, &qword_24F95AC80);
  MEMORY[0x28223BE20](v152);
  v118 = &v109 - v7;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DCE0, &qword_24F95AC88);
  v120 = *(v145 - 8);
  MEMORY[0x28223BE20](v145);
  v149 = &v109 - v8;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DCE8, &qword_24F95AC90);
  v126 = *(v146 - 8);
  MEMORY[0x28223BE20](v146);
  v124 = &v109 - v9;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DCF0, &qword_24F95AC98);
  MEMORY[0x28223BE20](v143);
  v144 = &v109 - v10;
  v11 = type metadata accessor for RecordingFullScreenView(0);
  v134 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v150 = v12;
  v140 = &v109 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_24F924E98();
  MEMORY[0x28223BE20](v133);
  v132 = &v109 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_24F923568();
  v136 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v135 = &v109 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218B50, &qword_24F95ACA0);
  v139 = *(v151 - 8);
  MEMORY[0x28223BE20](v151);
  v138 = &v109 - v15;
  v113 = sub_24F91F6B8();
  v112 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v111 = &v109 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_24F9289E8();
  v130 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v18 = &v109 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v110 = &v109 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v109 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = (&v109 - v25);
  MEMORY[0x28223BE20](v27);
  v29 = (&v109 - v28);
  v30 = type metadata accessor for GSKVideo(0);
  MEMORY[0x28223BE20](v30);
  v32 = &v109 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = type metadata accessor for GSKVideoView(0);
  MEMORY[0x28223BE20](v141);
  v34 = &v109 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DCF8, &qword_24F95ACA8);
  v115 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v114 = &v109 - v35;
  if (a1[*(type metadata accessor for PhotosAsset(0) + 28)] == 1)
  {
    v149 = a1;
    sub_24F91F488();
    v36 = sub_24F91F4A8();
    v37 = *(v36 - 8);
    v38 = *(v37 + 48);
    v129 = v29;
    result = v38(v29, 1, v36);
    if (result != 1)
    {
      sub_24F91F488();
      result = v38(v26, 1, v36);
      if (result != 1)
      {
        v40 = v110;
        sub_24F928978();
        v41 = v30[9];
        v42 = sub_24F928698();
        v43 = *(*(v42 - 8) + 56);
        v43(&v32[v41], 1, 1, v42);
        v43(&v32[v30[10]], 1, 1, v42);
        v44 = &v32[v30[11]];
        v45 = v111;
        sub_24F91F6A8();
        v46 = sub_24F91F668();
        v48 = v47;
        (*(v112 + 8))(v45, v113);
        *v44 = v46;
        v44[1] = v48;
        (*(v37 + 32))(v32, v129, v36);
        (*(v130 + 32))(&v32[v30[5]], v40, v131);
        *&v32[v30[6]] = 5;
        *&v32[v30[7]] = 15;
        v49 = &v32[v30[8]];
        *v49 = 15;
        v49[8] = 0;
        v50 = v141;
        v51 = *(v141 + 20);
        v52 = type metadata accessor for VideoConfiguration(0);
        (*(*(v52 - 8) + 56))(&v34[v51], 1, 1, v52);
        v53 = sub_24F9238D8();
        v54 = &v34[v50[12]];
        type metadata accessor for GSKVideoPlaybackCoordinator(0);
        sub_24E7DDB3C(&qword_27F2141F0, type metadata accessor for GSKVideoPlaybackCoordinator, &unk_24F95FAB8);
        *v54 = sub_24F9243D8();
        v54[1] = v55;
        sub_24E7DDB84(v32, v34, type metadata accessor for GSKVideo);
        v34[v50[9]] = 1;
        *&v34[v50[10]] = v53;
        v34[v50[11]] = 0;
        *&v34[v50[6]] = 0x3FE8000000000000;
        *&v34[v50[7]] = 0x3FE0000000000000;
        v56 = &v34[v50[8]];
        *(v56 + 2) = 0u;
        *(v56 + 3) = 0u;
        *v56 = 0u;
        *(v56 + 1) = 0u;
        *(v56 + 32) = 5;
        sub_24F925228();
        v57 = v135;
        sub_24F923518();
        v58 = v140;
        sub_24E7DCF2C(v149, v140);
        v59 = (*(v134 + 80) + 16) & ~*(v134 + 80);
        v60 = swift_allocObject();
        sub_24E7DDB84(v58, v60 + v59, type metadata accessor for RecordingFullScreenView);
        sub_24E7DDB3C(&unk_27F236560, MEMORY[0x277CDD730], MEMORY[0x277CDD728]);
        sub_24E7DDB3C(&qword_27F2180A0, MEMORY[0x277CDD708], MEMORY[0x277CDD710]);
        v61 = v138;
        v62 = v137;
        sub_24F927278();

        (*(v136 + 8))(v57, v62);
        sub_24F9235A8();
        v63 = sub_24E7DDB3C(&qword_27F2141D8, type metadata accessor for GSKVideoView, &unk_24F949084);
        v64 = sub_24E602068(&qword_27F218C18, &qword_27F218B50, &qword_24F95ACA0, MEMORY[0x277CDFB18]);
        v65 = v114;
        v66 = v151;
        sub_24F9269D8();
        (*(v139 + 8))(v61, v66);
        sub_24E7DE0E0(v34);
        v67 = v115;
        v68 = v142;
        (*(v115 + 16))(v144, v65, v142);
        swift_storeEnumTagMultiPayload();
        v153 = v50;
        v154 = v66;
        v155 = v63;
        v156 = v64;
        swift_getOpaqueTypeConformance2();
        v69 = sub_24E7DD8EC();
        v153 = v152;
        v154 = v66;
        v155 = v69;
        v156 = v64;
        OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
        v71 = sub_24E602068(&qword_27F21DD28, &qword_27F21DCC8, &unk_24F95AC70, MEMORY[0x277CDF728]);
        v153 = v145;
        v154 = v147;
        v155 = OpaqueTypeConformance2;
        v156 = v71;
        swift_getOpaqueTypeConformance2();
        sub_24F924E28();
        return (*(v67 + 8))(v65, v68);
      }

      goto LABEL_9;
    }

    __break(1u);
  }

  else
  {
    sub_24F91F488();
    v72 = sub_24F91F4A8();
    result = (*(*(v72 - 8) + 48))(v23, 1, v72);
    if (result != 1)
    {
      sub_24F928978();
      v73 = v117;
      (*(v130 + 32))(v117, v18, v131);
      v74 = v73 + *(v116 + 36);
      *v74 = 0;
      *(v74 + 8) = 1;
      v75 = &a1[*(v11 + 44)];
      v76 = *v75;
      v77 = *(v75 + 1);
      v153 = v76;
      v154 = v77;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A6F0, &unk_24F95ACB0);
      sub_24F926F38();
      v78 = v157;
      sub_24F9278A8();
      v80 = v79;
      v82 = v81;
      v83 = v118;
      sub_24E6009C8(v73, v118, &qword_27F21DCD0, &qword_24FA0F620);
      v84 = (v83 + *(v152 + 36));
      *v84 = v78;
      v84[1] = v78;
      v84[2] = v80;
      v84[3] = v82;
      sub_24F925228();
      v85 = v135;
      sub_24F923518();
      v86 = v140;
      sub_24E7DCF2C(a1, v140);
      v133 = *(v134 + 80);
      v87 = (v133 + 16) & ~v133;
      v88 = swift_allocObject();
      v134 = type metadata accessor for RecordingFullScreenView;
      sub_24E7DDB84(v86, v88 + v87, type metadata accessor for RecordingFullScreenView);
      sub_24E7DDB3C(&unk_27F236560, MEMORY[0x277CDD730], MEMORY[0x277CDD728]);
      sub_24E7DDB3C(&qword_27F2180A0, MEMORY[0x277CDD708], MEMORY[0x277CDD710]);
      v89 = v138;
      v90 = v137;
      sub_24F927278();

      (*(v136 + 8))(v85, v90);
      sub_24F9235A8();
      v137 = sub_24E7DD8EC();
      v135 = MEMORY[0x277CDFB18];
      v136 = sub_24E602068(&qword_27F218C18, &qword_27F218B50, &qword_24F95ACA0, MEMORY[0x277CDFB18]);
      v91 = v151;
      sub_24F9269D8();
      (*(v139 + 8))(v89, v91);
      sub_24E601704(v83, &qword_27F21DCD8, &qword_24F95AC80);
      v92 = v119;
      sub_24F924EA8();
      sub_24E7DCF2C(a1, v86);
      v93 = swift_allocObject();
      sub_24E7DDB84(v86, v93 + v87, v134);
      sub_24E7DDB3C(&qword_27F21DD10, MEMORY[0x277CDE010], MEMORY[0x277CDE008]);
      sub_24E7DDA4C();
      v94 = v123;
      v95 = v122;
      sub_24F927278();

      (*(v121 + 8))(v92, v95);
      sub_24E7DCF2C(a1, v86);
      v96 = swift_allocObject();
      sub_24E7DDB84(v86, v96 + v87, v134);
      sub_24E602068(&qword_27F21DD20, &qword_27F21DCC0, &qword_24F95AC68, v135);
      v97 = v128;
      v98 = v127;
      sub_24F927268();

      (*(v125 + 8))(v94, v98);
      sub_24F9235A8();
      v153 = v152;
      v154 = v151;
      v99 = v136;
      v155 = v137;
      v156 = v136;
      v100 = swift_getOpaqueTypeConformance2();
      v101 = sub_24E602068(&qword_27F21DD28, &qword_27F21DCC8, &unk_24F95AC70, MEMORY[0x277CDF728]);
      v102 = v124;
      v103 = v145;
      v104 = v147;
      v105 = v149;
      sub_24F9269D8();
      v129[1](v97, v104);
      (*(v120 + 8))(v105, v103);
      v106 = v126;
      v107 = v146;
      (*(v126 + 16))(v144, v102, v146);
      swift_storeEnumTagMultiPayload();
      v108 = sub_24E7DDB3C(&qword_27F2141D8, type metadata accessor for GSKVideoView, &unk_24F949084);
      v153 = v141;
      v154 = v151;
      v155 = v108;
      v156 = v99;
      swift_getOpaqueTypeConformance2();
      v153 = v103;
      v154 = v104;
      v155 = v100;
      v156 = v101;
      swift_getOpaqueTypeConformance2();
      sub_24F924E28();
      return (*(v106 + 8))(v102, v107);
    }
  }

  __break(1u);
LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_24E7DC050@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v85 = a1;
  v87 = a2;
  v2 = type metadata accessor for RecordingFullScreenView(0);
  v83 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v84 = v3;
  v86 = &v76 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DBF8, &qword_24F95AAF8);
  MEMORY[0x28223BE20](v4);
  v6 = &v76 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DC00, &qword_24F95AB00);
  MEMORY[0x28223BE20](v7);
  v9 = &v76 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DC08, &qword_24F95AB08);
  v76 = *(v10 - 8);
  v77 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v76 - v11;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DC10, &qword_24F95AB10);
  MEMORY[0x28223BE20](v79);
  v14 = &v76 - v13;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DC18, &qword_24F95AB18);
  v78 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v81 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v80 = &v76 - v17;
  v18 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DC20, &unk_24F95AB20) + 36)];
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22DF30, &qword_24F958D50) + 28);
  v20 = *MEMORY[0x277CE1048];
  v21 = sub_24F926E78();
  (*(*(v21 - 8) + 104))(v18 + v19, v20, v21);
  *v18 = swift_getKeyPath();
  *v6 = 0xD000000000000013;
  *(v6 + 1) = 0x800000024FA40140;
  *(v6 + 8) = 1;
  v22 = sub_24F9259D8();
  KeyPath = swift_getKeyPath();
  v24 = &v6[*(v4 + 36)];
  *v24 = KeyPath;
  v24[1] = v22;
  sub_24E7DD170();
  sub_24F9268B8();
  sub_24E601704(v6, &qword_27F21DBF8, &qword_24F95AAF8);
  LOBYTE(v6) = sub_24F925808();
  sub_24F923318();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DC40, &qword_24F95AB98) + 36)];
  *v33 = v6;
  *(v33 + 1) = v26;
  *(v33 + 2) = v28;
  *(v33 + 3) = v30;
  *(v33 + 4) = v32;
  v33[40] = 0;
  v34 = sub_24F926D18();
  v35 = swift_getKeyPath();
  v36 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DC48, &qword_24F95ABD0) + 36)];
  *v36 = v35;
  v36[1] = v34;
  v37 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DC50, &unk_24F95ABD8) + 36)];
  sub_24F927438();
  LOBYTE(v35) = sub_24F925808();
  v37[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217870, &qword_24F949630) + 36)] = v35;
  *&v9[*(v7 + 36)] = 256;
  if (qword_27F211830 != -1)
  {
    swift_once();
  }

  v38 = sub_24F9248C8();
  __swift_project_value_buffer(v38, qword_27F39F078);
  sub_24E7DD33C();
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  sub_24E601704(v9, &qword_27F21DC00, &qword_24F95AB00);
  v88[3] = sub_24F9271D8();
  v88[4] = sub_24E7DDB3C(&qword_27F214E38, MEMORY[0x277CE1260], MEMORY[0x277CE1248]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v88);
  v40 = *MEMORY[0x277CE0118];
  v41 = sub_24F924B38();
  (*(*(v41 - 8) + 104))(boxed_opaque_existential_1, v40, v41);
  sub_24E60169C(v88, v14, &qword_27F21DC78, &qword_24F95ABE8);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DC80, &qword_24F95ABF0);
  v44 = v76;
  v43 = v77;
  (*(v76 + 16))(&v14[v42[9]], v12, v77);
  v45 = &v14[v42[10]];
  *v45 = sub_24F923398() & 1;
  *(v45 + 1) = v46;
  v45[16] = v47 & 1;
  v48 = &v14[v42[11]];
  *v48 = swift_getKeyPath();
  v48[8] = 0;
  v49 = v43;
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v50 = qword_27F24E488;
  v51 = sub_24F923398();
  v53 = v52;
  v55 = v54;
  v56 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DC88, &qword_24F95AC20) + 36)];
  *v56 = v50;
  v56[8] = v51 & 1;
  *(v56 + 2) = v53;
  v56[24] = v55 & 1;
  LOBYTE(v50) = sub_24F923398();
  v58 = v57;
  LOBYTE(v53) = v59;
  sub_24E601704(v88, &qword_27F21DC78, &qword_24F95ABE8);
  (*(v44 + 8))(v12, v49);
  v60 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DC90, &qword_24F95AC28) + 36)];
  *v60 = v50 & 1;
  *(v60 + 1) = v58;
  v60[16] = v53 & 1;
  v61 = sub_24F926D18();
  v62 = swift_getKeyPath();
  v63 = &v14[*(v79 + 36)];
  *v63 = v62;
  v63[1] = v61;
  v64 = v86;
  sub_24E7DCF2C(v85, v86);
  v65 = (*(v83 + 80) + 16) & ~*(v83 + 80);
  v66 = swift_allocObject();
  sub_24E7DDB84(v64, v66 + v65, type metadata accessor for RecordingFullScreenView);
  sub_24E7DD6EC();
  v67 = v80;
  sub_24F9262B8();

  sub_24E601704(v14, &qword_27F21DC10, &qword_24F95AB10);
  v68 = v78;
  v69 = *(v78 + 16);
  v71 = v81;
  v70 = v82;
  v69(v81, v67, v82);
  v72 = v87;
  *v87 = 0;
  *(v72 + 8) = 1;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DCB8, &qword_24F95AC60);
  v69(v72 + *(v73 + 48), v71, v70);
  v74 = *(v68 + 8);
  v74(v67, v70);
  return (v74)(v71, v70);
}

uint64_t sub_24E7DC930(uint64_t a1)
{
  type metadata accessor for RecordingFullScreenView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220, &qword_24F93F6B0);
  return sub_24F926F48();
}

uint64_t sub_24E7DC9A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DBA0, &unk_24F95AA98);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v32 - v11;
  v13 = sub_24F91F4A8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v32 - v18;
  v20 = type metadata accessor for RecordingFullScreenView(0);
  v36 = a1;
  sub_24F91F488();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_24E601704(v12, &qword_27F228530, &unk_24F93C6E0);
    v21 = 1;
  }

  else
  {
    v32 = v20;
    v35 = a2;
    v22 = *(v14 + 32);
    v22(v19, v12, v13);
    (*(v14 + 16))(v16, v19, v13);
    (*(v14 + 56))(v9, 1, 1, v13);
    type metadata accessor for ShareSheetGenericMetadata();
    v23 = swift_allocObject();
    v34 = v6;
    v24 = v23;
    *(v23 + 16) = 0;
    *(v23 + 24) = 0xE000000000000000;
    type metadata accessor for ShareSheetData(0);
    *(v24 + 40) = 0;
    *(v24 + 48) = 0;
    *(v24 + 32) = 0;
    v25 = swift_allocObject();
    v22((v25 + OBJC_IVAR____TtC12GameStoreKit14ShareSheetData_url), v16, v13);
    sub_24E6009C8(v9, v25 + OBJC_IVAR____TtC12GameStoreKit14ShareSheetData_shortUrl, &qword_27F228530, &unk_24F93C6E0);
    *(v25 + OBJC_IVAR____TtC12GameStoreKit14ShareSheetData_metadata) = v24 | 0xC000000000000000;
    v26 = *(v36 + *(v20 + 24));
    type metadata accessor for ArtworkLoader();
    sub_24F928FD8();

    sub_24F92A758();
    v27 = v37;
    v37 = v25;
    v38 = MEMORY[0x277D84F90];
    v39 = 0;
    v40 = v26;
    v41 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DBB0, &qword_24F95AAB0);
    v33 = v19;
    sub_24F924AD8();
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_24F93A400;

    sub_24F924AC8();
    sub_24F924AB8();
    sub_24E8029C0(v28);
    swift_setDeallocating();
    a2 = v35;
    swift_arrayDestroy();
    swift_deallocClassInstance();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DB50, &qword_24F95AA08);
    v29 = v34;
    sub_24F926F58();
    sub_24E7DD0B4();
    sub_24F926648();

    sub_24E601704(v29, &qword_27F21DBA0, &unk_24F95AA98);

    (*(v14 + 8))(v33, v13);
    v21 = 0;
  }

  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DBA8, &qword_24F95AAA8);
  return (*(*(v30 - 8) + 56))(a2, v21, 1, v30);
}

uint64_t sub_24E7DCF2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecordingFullScreenView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E7DCF94@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RecordingFullScreenView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_24E7DC9A4(v4, a1);
}

unint64_t sub_24E7DD004()
{
  result = qword_27F21DB90;
  if (!qword_27F21DB90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21DB80, &qword_24F95AA90);
    sub_24E7DD0B4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21DB90);
  }

  return result;
}

unint64_t sub_24E7DD0B4()
{
  result = qword_27F21DB98;
  if (!qword_27F21DB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21DB98);
  }

  return result;
}

uint64_t sub_24E7DD108@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24F924808();
  *a1 = result;
  return result;
}

unint64_t sub_24E7DD170()
{
  result = qword_27F21DC28;
  if (!qword_27F21DC28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21DBF8, &qword_24F95AAF8);
    sub_24E7DD228();
    sub_24E602068(&unk_27F212AB0, &qword_27F236350, &qword_24F939870, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21DC28);
  }

  return result;
}

unint64_t sub_24E7DD228()
{
  result = qword_27F21DC30;
  if (!qword_27F21DC30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21DC20, &unk_24F95AB20);
    sub_24E7DD2E0();
    sub_24E602068(&qword_27F22DF40, &unk_27F22DF30, &qword_24F958D50, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21DC30);
  }

  return result;
}

unint64_t sub_24E7DD2E0()
{
  result = qword_27F21DC38;
  if (!qword_27F21DC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21DC38);
  }

  return result;
}

unint64_t sub_24E7DD33C()
{
  result = qword_27F21DC58;
  if (!qword_27F21DC58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21DC00, &qword_24F95AB00);
    sub_24E7DD3F4();
    sub_24E602068(&qword_27F2188E8, &qword_27F2188F0, &qword_24F949650, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21DC58);
  }

  return result;
}

unint64_t sub_24E7DD3F4()
{
  result = qword_27F21DC60;
  if (!qword_27F21DC60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21DC50, &unk_24F95ABD8);
    sub_24E7DD4AC();
    sub_24E602068(&qword_27F2188E0, &qword_27F217870, &qword_24F949630, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21DC60);
  }

  return result;
}

unint64_t sub_24E7DD4AC()
{
  result = qword_27F21DC68;
  if (!qword_27F21DC68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21DC48, &qword_24F95ABD0);
    sub_24E7DD564();
    sub_24E602068(&unk_27F2554A0, &qword_27F212B20, qword_24F94A180, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21DC68);
  }

  return result;
}

unint64_t sub_24E7DD564()
{
  result = qword_27F21DC70;
  if (!qword_27F21DC70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21DC40, &qword_24F95AB98);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21DBF8, &qword_24F95AAF8);
    sub_24E7DD170();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21DC70);
  }

  return result;
}

uint64_t sub_24E7DD634@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24F924808();
  *a1 = result;
  return result;
}

uint64_t sub_24E7DD68C()
{
  v1 = *(type metadata accessor for RecordingFullScreenView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_24E7DC930(v2);
}

unint64_t sub_24E7DD6EC()
{
  result = qword_27F21DC98;
  if (!qword_27F21DC98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21DC10, &qword_24F95AB10);
    sub_24E7DD7A4();
    sub_24E602068(&unk_27F2554A0, &qword_27F212B20, qword_24F94A180, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21DC98);
  }

  return result;
}

unint64_t sub_24E7DD7A4()
{
  result = qword_27F21DCA0;
  if (!qword_27F21DCA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21DC90, &qword_24F95AC28);
    sub_24E7DD830();
    sub_24E600F3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21DCA0);
  }

  return result;
}

unint64_t sub_24E7DD830()
{
  result = qword_27F21DCA8;
  if (!qword_27F21DCA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21DC88, &qword_24F95AC20);
    sub_24E602068(&qword_27F21DCB0, &qword_27F21DC80, &qword_24F95ABF0, &unk_24FA2648C);
    sub_24E600EE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21DCA8);
  }

  return result;
}

unint64_t sub_24E7DD8EC()
{
  result = qword_27F21DD00;
  if (!qword_27F21DD00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21DCD8, &qword_24F95AC80);
    sub_24E7DD978();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21DD00);
  }

  return result;
}

unint64_t sub_24E7DD978()
{
  result = qword_27F21DD08;
  if (!qword_27F21DD08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21DCD0, &qword_24FA0F620);
    sub_24E7DDB3C(&qword_27F214C28, MEMORY[0x277D21C48], MEMORY[0x277D7EEB8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21DD08);
  }

  return result;
}

unint64_t sub_24E7DDA4C()
{
  result = qword_27F21DD18;
  if (!qword_27F21DD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21DD18);
  }

  return result;
}

uint64_t sub_24E7DDAB8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for RecordingFullScreenView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_24E7DDB3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24E7DDB84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroyTm_11()
{
  v1 = type metadata accessor for RecordingFullScreenView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = v0 + ((v2 + 16) & ~v2);

  v4 = *(type metadata accessor for PhotosAsset(0) + 24);
  v5 = sub_24F91F648();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v3 + v4, 1, v5))
  {
    (*(v6 + 8))(v3 + v4, v5);
  }

  v7 = v3 + *(type metadata accessor for RecordingAssociation(0) + 20);
  v8 = type metadata accessor for Achievement(0);
  if (!(*(*(v8 - 1) + 48))(v7, 1, v8))
  {

    v9 = v8[7];
    v10 = sub_24F9289E8();
    v11 = *(v10 - 8);
    if (!(*(v11 + 48))(v7 + v9, 1, v10))
    {
      (*(v11 + 8))(v7 + v9, v10);
    }

    v12 = v8[8];
    type metadata accessor for AchievementProgressStatus(0);
    if (!swift_getEnumCaseMultiPayload())
    {
      (*(v6 + 8))(v7 + v12, v5);
    }

    v13 = v8[14];
    v14 = sub_24F920818();
    v15 = *(v14 - 8);
    if (!(*(v15 + 48))(v7 + v13, 1, v14))
    {
      (*(v15 + 8))(v7 + v13, v14);
    }
  }

  v16 = v3 + v1[7];
  if (*(v16 + 40))
  {
    if (*(v16 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1(v16);
    }
  }

  else
  {
  }

  v17 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212938, &qword_24F939770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = sub_24F921B58();
    (*(*(v18 - 8) + 8))(v3 + v17, v18);
  }

  else
  {
  }

  v19 = v3 + v1[10];
  v20 = sub_24F924AD8();
  (*(*(v20 - 8) + 8))(v19, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DB50, &qword_24F95AA08);

  return swift_deallocObject();
}

double sub_24E7DE070(uint64_t a1)
{
  v3 = *(type metadata accessor for RecordingFullScreenView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_24E7D9D78(a1, v4);
}

uint64_t sub_24E7DE0E0(uint64_t a1)
{
  v2 = type metadata accessor for GSKVideoView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E7DE13C()
{
  v1 = type metadata accessor for RecordingFullScreenView(0);
  v2 = *(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + ((v2 + 32) & ~v2);

  v4 = *(type metadata accessor for PhotosAsset(0) + 24);
  v5 = sub_24F91F648();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v3 + v4, 1, v5))
  {
    (*(v6 + 8))(v3 + v4, v5);
  }

  v7 = v3 + *(type metadata accessor for RecordingAssociation(0) + 20);
  v8 = type metadata accessor for Achievement(0);
  if (!(*(*(v8 - 1) + 48))(v7, 1, v8))
  {

    v9 = v8[7];
    v10 = sub_24F9289E8();
    v11 = *(v10 - 8);
    if (!(*(v11 + 48))(v7 + v9, 1, v10))
    {
      (*(v11 + 8))(v7 + v9, v10);
    }

    v12 = v8[8];
    type metadata accessor for AchievementProgressStatus(0);
    if (!swift_getEnumCaseMultiPayload())
    {
      (*(v6 + 8))(v7 + v12, v5);
    }

    v13 = v8[14];
    v14 = sub_24F920818();
    v15 = *(v14 - 8);
    if (!(*(v15 + 48))(v7 + v13, 1, v14))
    {
      (*(v15 + 8))(v7 + v13, v14);
    }
  }

  v16 = v3 + v1[7];
  if (*(v16 + 40))
  {
    if (*(v16 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1(v16);
    }
  }

  else
  {
  }

  v17 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212938, &qword_24F939770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = sub_24F921B58();
    (*(*(v18 - 8) + 8))(v3 + v17, v18);
  }

  else
  {
  }

  v19 = v3 + v1[10];
  v20 = sub_24F924AD8();
  (*(*(v20 - 8) + 8))(v19, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DB50, &qword_24F95AA08);

  return swift_deallocObject();
}

uint64_t sub_24E7DE5C8(uint64_t a1)
{
  v4 = *(type metadata accessor for RecordingFullScreenView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24E614970;

  return sub_24E7D9F5C(a1, v6, v7, v1 + v5);
}

uint64_t sub_24E7DE6B8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21DB70, &qword_24F95AA80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21DB80, &qword_24F95AA90);
  sub_24E602068(&qword_27F21DB88, &qword_27F21DB70, &qword_24F95AA80, MEMORY[0x277CE11A8]);
  sub_24E7DD004();
  return swift_getOpaqueTypeConformance2();
}

uint64_t ChallengeDetailHeaderShelfConstructionIntent.pageID.getter()
{
  v1 = *v0;

  return v1;
}

unint64_t ChallengeDetailHeaderShelfConstructionIntent.jsRepresentation(in:)@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08, &unk_24F93A2A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F95AD70;
  *(inited + 32) = 0x444965676170;
  *(inited + 40) = 0xE600000000000000;
  v4 = *v1;
  v5 = v1[1];
  v6 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v6;
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  *(inited + 88) = 0x676E656C6C616863;
  *(inited + 96) = 0xEF6C696174654465;
  v7 = type metadata accessor for ChallengeDetailHeaderShelfConstructionIntent(0);
  v8 = v7[5];
  *(inited + 128) = type metadata accessor for ChallengeDetail(0);
  *(inited + 136) = sub_24E7DF6D4(&qword_27F21DD30, type metadata accessor for ChallengeDetail, &protocol conformance descriptor for ChallengeDetail);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 104));
  sub_24E7DF78C(v1 + v8, boxed_opaque_existential_1, type metadata accessor for ChallengeDetail);
  *(inited + 144) = 0x616C506C61636F6CLL;
  *(inited + 152) = 0xEB00000000726579;
  v10 = v7[6];
  *(inited + 184) = type metadata accessor for Player(0);
  *(inited + 192) = sub_24E7DF6D4(&qword_27F215388, type metadata accessor for Player, &protocol conformance descriptor for Player);
  v11 = __swift_allocate_boxed_opaque_existential_1((inited + 160));
  sub_24E7DF78C(v1 + v10, v11, type metadata accessor for Player);
  *(inited + 200) = 0x6E49656D61477369;
  *(inited + 208) = 0xEF64656C6C617473;
  v12 = *(v1 + v7[7]);
  v13 = MEMORY[0x277D839B0];
  v14 = MEMORY[0x277D22598];
  *(inited + 240) = MEMORY[0x277D839B0];
  *(inited + 248) = v14;
  *(inited + 216) = v12;
  strcpy((inited + 256), "isUpdateNeeded");
  *(inited + 271) = -18;
  v15 = *(v1 + v7[8]);
  *(inited + 296) = v13;
  *(inited + 304) = v14;
  *(inited + 272) = v15;
  *(inited + 312) = 0xD00000000000001ALL;
  *(inited + 320) = 0x800000024FA47750;
  v16 = *(v1 + v7[9]);
  *(inited + 352) = v13;
  *(inited + 360) = v14;
  *(inited + 328) = v16;
  *(inited + 368) = 0x6F43657469766E69;
  *(inited + 376) = 0xEA00000000006564;
  v17 = (v1 + v7[10]);
  v18 = *v17;
  v19 = v17[1];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740, &qword_24F93EC10);
  *(inited + 408) = v20;
  v21 = sub_24E605DB4();
  *(inited + 384) = v18;
  *(inited + 392) = v19;
  *(inited + 416) = v21;
  *(inited + 424) = 0x4E72657469766E69;
  *(inited + 432) = 0xEB00000000656D61;
  v22 = (v1 + v7[11]);
  v23 = *v22;
  v24 = v22[1];
  *(inited + 464) = v20;
  *(inited + 472) = v21;
  *(inited + 440) = v23;
  *(inited + 448) = v24;
  strcpy((inited + 480), "pageBackground");
  *(inited + 495) = -18;
  v25 = v7[12];
  *(inited + 520) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8, &qword_24F95ADB0);
  *(inited + 528) = sub_24E7D17FC();
  v26 = __swift_allocate_boxed_opaque_existential_1((inited + 496));
  sub_24E7D14D8(v1 + v25, v26);

  v27 = sub_24E607D0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18, &unk_24F93A2B0);
  swift_arrayDestroy();
  v28 = sub_24E80FFAC(v27);

  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v28;
  return result;
}

uint64_t type metadata accessor for ChallengeDetailHeaderShelfConstructionIntent(uint64_t a1)
{
  result = qword_27F21DD50;
  if (!qword_27F21DD50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24E7DEC88(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x444965676170;
    v6 = 0x616C506C61636F6CLL;
    if (a1 != 2)
    {
      v6 = 0x6E49656D61477369;
    }

    if (a1)
    {
      v5 = 0x676E656C6C616863;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x6F43657469766E69;
    v2 = 0x4E72657469766E69;
    if (a1 != 7)
    {
      v2 = 0x6B63614265676170;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x6574616470557369;
    if (a1 != 4)
    {
      v3 = 0xD00000000000001ALL;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_24E7DEDF0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24E7DFD54(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24E7DEE18(uint64_t a1)
{
  v2 = sub_24E7DF618();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E7DEE54(uint64_t a1)
{
  v2 = sub_24E7DF618();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ChallengeDetailHeaderShelfConstructionIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8, &qword_24F95ADB0);
  MEMORY[0x28223BE20](v3 - 8);
  v33 = &v31 - v4;
  v35 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v35);
  v34 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ChallengeDetail(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DD38, &qword_24F95ADB8);
  v36 = *(v9 - 8);
  v37 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v31 - v10;
  v12 = type metadata accessor for ChallengeDetailHeaderShelfConstructionIntent(0);
  MEMORY[0x28223BE20](v12);
  v14 = (&v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = a1[3];
  v39 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_24E7DF618();
  v16 = v11;
  v17 = v38;
  sub_24F92D108();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(v39);
  }

  v18 = v36;
  v19 = v37;
  v48 = 0;
  *v14 = sub_24F92CC28();
  v14[1] = v20;
  v47 = 1;
  sub_24E7DF6D4(&qword_27F21DD48, type metadata accessor for ChallengeDetail, &protocol conformance descriptor for ChallengeDetail);
  sub_24F92CC68();
  sub_24E7DF66C(v8, v14 + v12[5], type metadata accessor for ChallengeDetail);
  v46 = 2;
  sub_24E7DF6D4(&qword_27F213E38, type metadata accessor for Player, &protocol conformance descriptor for Player);
  v21 = v34;
  sub_24F92CC68();
  sub_24E7DF66C(v21, v14 + v12[6], type metadata accessor for Player);
  v45 = 3;
  v22 = v18;
  *(v14 + v12[7]) = sub_24F92CC38() & 1;
  v44 = 4;
  *(v14 + v12[8]) = sub_24F92CC38() & 1;
  v43 = 5;
  *(v14 + v12[9]) = sub_24F92CC38() & 1;
  v42 = 6;
  v23 = sub_24F92CBC8();
  v24 = (v14 + v12[10]);
  *v24 = v23;
  v24[1] = v25;
  v41 = 7;
  v26 = sub_24F92CBC8();
  v27 = (v14 + v12[11]);
  *v27 = v26;
  v27[1] = v28;
  type metadata accessor for Page.Background(0);
  v40 = 8;
  sub_24E7DF6D4(&qword_27F21D930, type metadata accessor for Page.Background, &protocol conformance descriptor for Page.Background);
  v29 = v33;
  sub_24F92CC18();
  (*(v22 + 8))(v16, v19);
  sub_24E7DF71C(v29, v14 + v12[12]);
  sub_24E7DF78C(v14, v32, type metadata accessor for ChallengeDetailHeaderShelfConstructionIntent);
  __swift_destroy_boxed_opaque_existential_1(v39);
  return sub_24E7DF7F4(v14, type metadata accessor for ChallengeDetailHeaderShelfConstructionIntent);
}

unint64_t sub_24E7DF618()
{
  result = qword_27F21DD40;
  if (!qword_27F21DD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21DD40);
  }

  return result;
}

uint64_t sub_24E7DF66C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E7DF6D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24E7DF71C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8, &qword_24F95ADB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E7DF78C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E7DF7F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24E7DF868(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = type metadata accessor for ChallengeDetail(0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = type metadata accessor for Player(0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8, &qword_24F95ADB0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[12];

  return v15(v16, a2, v14);
}

uint64_t sub_24E7DF9F4(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for ChallengeDetail(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = type metadata accessor for Player(0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8, &qword_24F95ADB0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[12];

  return v15(v16, a2, a2, v14);
}

void sub_24E7DFB6C(uint64_t a1)
{
  type metadata accessor for ChallengeDetail(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Player(319);
    if (v2 <= 0x3F)
    {
      sub_24E6BCB04();
      if (v3 <= 0x3F)
      {
        sub_24E7D231C(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_24E7DFC50()
{
  result = qword_27F21DD60;
  if (!qword_27F21DD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21DD60);
  }

  return result;
}

unint64_t sub_24E7DFCA8()
{
  result = qword_27F21DD68;
  if (!qword_27F21DD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21DD68);
  }

  return result;
}

unint64_t sub_24E7DFD00()
{
  result = qword_27F21DD70[0];
  if (!qword_27F21DD70[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F21DD70);
  }

  return result;
}

uint64_t sub_24E7DFD54(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444965676170 && a2 == 0xE600000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E656C6C616863 && a2 == 0xEF6C696174654465 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x616C506C61636F6CLL && a2 == 0xEB00000000726579 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E49656D61477369 && a2 == 0xEF64656C6C617473 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6574616470557369 && a2 == 0xEE0064656465654ELL || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000024FA47750 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6F43657469766E69 && a2 == 0xEA00000000006564 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x4E72657469766E69 && a2 == 0xEB00000000656D61 || (sub_24F92CE08() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6B63614265676170 && a2 == 0xEE00646E756F7267)
  {

    return 8;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_24E7E0078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F928AD8();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_24F92A6B8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212890, &qword_24F939670);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v23 - v12;
  type metadata accessor for GameActivityDraftBuilder();
  sub_24F928F28();
  v14 = v28[0];
  swift_beginAccess();
  v15 = *(v14 + 16);
  if (v15)
  {
    sub_24E7E048C(a1, v13);
    v16 = type metadata accessor for Leaderboard(0);
    (*(*(v16 - 8) + 56))(v13, 0, 1, v16);
    KeyPath = swift_getKeyPath();
    v26 = v8;
    v27 = a2;
    v25 = &v23;
    MEMORY[0x28223BE20](KeyPath);
    *(&v23 - 2) = v15;
    *(&v23 - 1) = v13;
    v28[0] = v15;
    sub_24E7E0514(&qword_27F212898, type metadata accessor for GameActivityDraft, &protocol conformance descriptor for GameActivityDraft);
    v24 = v10;

    v10 = v24;
    sub_24F91FD78();

    v8 = v26;
    a2 = v27;

    sub_24E7E055C(v13);
  }

  sub_24F928A98();
  sub_24F92A678();
  sub_24F92A668();
  v28[3] = v7;
  v28[4] = MEMORY[0x277D223D8];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28);
  (*(v8 + 16))(boxed_opaque_existential_1, v10, v7);
  type metadata accessor for UpdateChallengeLeaderboardActionImplementation(0, a3, v19, v20);
  swift_getWitnessTable();
  v21 = sub_24F1489C4(v28, a2);

  (*(v8 + 8))(v10, v7);
  __swift_destroy_boxed_opaque_existential_1(v28);
  return v21;
}

uint64_t sub_24E7E048C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Leaderboard(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E7E0514(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24E7E055C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212890, &qword_24F939670);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E7E05D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 88) = a1;
  *(v3 + 96) = a3;
  v4 = *(a2 + 8);
  *(v3 + 104) = *a2;
  *(v3 + 112) = v4;
  *(v3 + 120) = *(a2 + 16);
  return MEMORY[0x2822009F8](sub_24E7E0608, 0, 0);
}

uint64_t sub_24E7E0608()
{
  *(v0 + 136) = sub_24F92B7F8();
  *(v0 + 144) = sub_24F92B7E8();
  v2 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24E7E06A0, v2, v1);
}

uint64_t sub_24E7E06A0()
{

  type metadata accessor for LocalPlayerProvider(0);
  sub_24F928F28();
  *(v0 + 152) = *(v0 + 72);

  return MEMORY[0x2822009F8](sub_24E7E0728, 0, 0);
}

uint64_t sub_24E7E0728(uint64_t a1)
{
  *(v1 + 160) = sub_24F92B7E8();
  v3 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24E7E07B4, v3, v2);
}

uint64_t sub_24E7E07B4()
{
  v1 = v0[19];

  swift_getKeyPath();
  v0[10] = v1;
  sub_24E69A53C();
  sub_24F91FD88();

  v2 = (v1 + OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__playerID);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];
  v0[21] = v3;

  v5 = swift_task_alloc();
  v0[22] = v5;
  *v5 = v0;
  v5[1] = sub_24E7E08E4;
  v6 = v0[15];
  v7 = v0[16];
  v8 = v0[13];
  v9 = v0[14];
  v10 = v0[12];

  return sub_24E7E0CDC((v0 + 2), v4, v3, v8, v9, v6, v7, v10);
}

uint64_t sub_24E7E08E4()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_24E7E0B44;
  }

  else
  {
    v2 = sub_24E7E0A18;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E7E0A18()
{
  v8 = *(v0 + 32);
  v9 = *(v0 + 16);
  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v1 = sub_24F9220D8();
  __swift_project_value_buffer(v1, qword_27F39E778);
  v2 = sub_24F9220B8();
  v3 = sub_24F92BD98();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24E5DD000, v2, v3, "ChallengesFriendComparisonDataIntentImplementation comparison data fetched", v4, 2u);
    MEMORY[0x2530542D0](v4, -1, -1);
  }

  v5 = *(v0 + 88);

  *v5 = v9;
  v5[1] = v8;
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_24E7E0B44()
{
  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 184);
  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E778);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 184);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_24E5DD000, v4, v5, "ChallengesFriendComparisonDataIntentImplementation failed to fetch comparison data: %@", v7, 0xCu);
    sub_24E601704(v8, &qword_27F227B20, &qword_24F944D30);
    MEMORY[0x2530542D0](v8, -1, -1);
    MEMORY[0x2530542D0](v7, -1, -1);
  }

  swift_willThrow();
  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_24E7E0CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[230] = a8;
  v8[229] = a7;
  v8[228] = a6;
  v8[227] = a5;
  v8[226] = a4;
  v8[225] = a3;
  v8[219] = a2;
  v8[213] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DDF8, &qword_24F95B110);
  v8[231] = swift_task_alloc();
  v9 = type metadata accessor for Challenge(0);
  v8[232] = v9;
  v8[233] = *(v9 - 8);
  v8[234] = swift_task_alloc();
  v8[235] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DE00, &qword_24F95B118);
  v8[236] = swift_task_alloc();
  v10 = type metadata accessor for ChallengesFriendComparisonData.WinComparison(0);
  v8[237] = v10;
  v8[238] = *(v10 - 8);
  v8[239] = swift_task_alloc();
  v8[240] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24E7E0E9C, 0, 0);
}

uint64_t sub_24E7E0E9C()
{
  v1 = v0[229];
  v2 = [objc_opt_self() proxyForLocalPlayer];
  v3 = [v2 challengeServicePrivate];
  v0[241] = v3;

  v4 = sub_24F92B098();
  v0[242] = v4;
  v5 = sub_24F92B098();
  v0[243] = v5;
  if (v1)
  {
    v6 = sub_24F92B098();
  }

  else
  {
    v6 = 0;
  }

  v0[244] = v6;
  v0[162] = v0;
  v0[167] = v0 + 183;
  v0[163] = sub_24E7E1070;
  v7 = swift_continuation_init();
  v0[182] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DE08, &qword_24F95B120);
  v0[179] = v7;
  v0[175] = MEMORY[0x277D85DD0];
  v0[176] = 1107296256;
  v0[177] = sub_24E787F20;
  v0[178] = &block_descriptor_17;
  [v3 compareLeaderboardChallengeWithPlayerID:v4 otherPlayerID:v5 bundleID:v6 completionHandler:v0 + 175];

  return MEMORY[0x282200938](v0 + 162);
}

uint64_t sub_24E7E1070()
{
  v1 = *(*v0 + 1328);
  *(*v0 + 1960) = v1;
  if (v1)
  {
    v2 = sub_24E7E221C;
  }

  else
  {
    v2 = sub_24E7E1180;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E7E1180()
{
  v73 = v0;
  v1 = v0[244];
  v2 = v0[243];
  v3 = v0[242];
  v4 = v0[183];
  v0[246] = v4;
  swift_unknownObjectRelease();

  if (v4)
  {
    v5 = [v4 wonChallenges];
    v6 = [v5 comparisons];

    v67 = v0;
    v0[247] = sub_24E69A5C4(0, &qword_27F21DE18, 0x277D0C100);
    v7 = sub_24F92B5A8();

    if (v7 >> 62)
    {
      goto LABEL_44;
    }

    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    if (v8)
    {
      v72 = MEMORY[0x277D84F90];
      v9 = sub_24F4578E0(0, v8 & ~(v8 >> 63), 0);
      if (v8 < 0)
      {
        __break(1u);
        goto LABEL_58;
      }

      v13 = 0;
      v14 = v72;
      do
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x253052270](v13, v7);
        }

        else
        {
          v15 = *(v7 + 8 * v13 + 32);
        }

        v16 = v15;
        v17 = [v15 bundleID];
        v18 = sub_24F92B0D8();
        v20 = v19;

        v72 = v14;
        v22 = *(v14 + 16);
        v21 = *(v14 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_24F4578E0((v21 > 1), v22 + 1, 1);
          v14 = v72;
        }

        ++v13;
        *(v14 + 16) = v22 + 1;
        v23 = v14 + 16 * v22;
        *(v23 + 32) = v18;
        *(v23 + 40) = v20;
      }

      while (v8 != v13);
    }

    else
    {

      v14 = MEMORY[0x277D84F90];
    }

    v7 = sub_24F45D828(v14);

    v26 = v67;
    v67[189] = v7;
    v67[195] = MEMORY[0x277D84FA0];
    v27 = [v4 completedChallenges];
    v4 = [v27 details];

    v67[248] = sub_24E69A5C4(0, &qword_27F21DE20, 0x277D0C0C0);
    v28 = sub_24F92B5A8();

    v29 = MEMORY[0x277D84F90];
    if (v28 >> 62)
    {
      v30 = sub_24F92C738();
      if (v30)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v30 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v30)
      {
LABEL_20:
        v31 = 0;
        v68 = v30;
        v69 = v28 & 0xC000000000000001;
        v64 = v28 + 32;
        v65 = v28 & 0xFFFFFFFFFFFFFF8;
        v66 = v28;
        do
        {
          if (v69)
          {
            v32 = MEMORY[0x253052270](v31, v28);
            v33 = __OFADD__(v31, 1);
            v34 = v31 + 1;
            if (v33)
            {
              goto LABEL_41;
            }
          }

          else
          {
            if (v31 >= *(v65 + 16))
            {
              goto LABEL_43;
            }

            v32 = *(v64 + 8 * v31);
            v33 = __OFADD__(v31, 1);
            v34 = v31 + 1;
            if (v33)
            {
LABEL_41:
              __break(1u);
LABEL_42:
              __break(1u);
LABEL_43:
              __break(1u);
LABEL_44:
              v8 = sub_24F92C738();
              goto LABEL_4;
            }
          }

          v35 = v32;
          v36 = [v32 bundleID];
          v4 = sub_24F92B0D8();
          v7 = v37;

          sub_24ED7C5F0(&v72, v4, v7);

          v70 = v35;
          v38 = [v35 participants];
          sub_24E69A5C4(0, &qword_27F21DE28, 0x277D0C0F0);
          v39 = sub_24F92B5A8();

          if (v39 >> 62)
          {
            v40 = sub_24F92C738();
            v71 = v34;
            if (!v40)
            {
LABEL_40:

              v42 = v29;
              goto LABEL_21;
            }
          }

          else
          {
            v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
            v71 = v34;
            if (!v40)
            {
              goto LABEL_40;
            }
          }

          v72 = v29;
          sub_24F4578E0(0, v40 & ~(v40 >> 63), 0);
          if (v40 < 0)
          {
            goto LABEL_42;
          }

          v41 = 0;
          v42 = v72;
          do
          {
            if ((v39 & 0xC000000000000001) != 0)
            {
              v43 = MEMORY[0x253052270](v41, v39);
            }

            else
            {
              v43 = *(v39 + 8 * v41 + 32);
            }

            v44 = v43;
            v45 = [v43 playerID];
            v4 = sub_24F92B0D8();
            v7 = v46;

            v72 = v42;
            v48 = *(v42 + 16);
            v47 = *(v42 + 24);
            if (v48 >= v47 >> 1)
            {
              sub_24F4578E0((v47 > 1), v48 + 1, 1);
              v42 = v72;
            }

            ++v41;
            *(v42 + 16) = v48 + 1;
            v49 = v42 + 16 * v48;
            *(v49 + 32) = v4;
            *(v49 + 40) = v7;
          }

          while (v40 != v41);

          v28 = v66;
          v26 = v67;
          v29 = MEMORY[0x277D84F90];
LABEL_21:
          sub_24EAE9E40(v42);

          v31 = v71;
        }

        while (v71 != v68);
      }
    }

    v50 = v26[195];
    v26[249] = v50;
    v51 = *(v50 + 16);
    if (!v51)
    {
      v52 = MEMORY[0x277D84F90];
      goto LABEL_50;
    }

    v52 = sub_24EAE678C(*(v50 + 16), 0);
    v53 = sub_24EAE7C84(&v72, v52 + 4, v51, v50);
    v54 = v72;

    v9 = sub_24E6586B4(v54);
    if (v53 == v51)
    {
      v26 = v67;
LABEL_50:
      v55 = v26[230];
      v56 = swift_allocObject();
      v26[250] = v56;
      *(v56 + 16) = v52;
      *(v56 + 24) = 0;
      *(v56 + 32) = v55;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DE30, &qword_24FA1FBA0);
      swift_asyncLet_begin();
      v57 = v26[189];
      v26[251] = v57;
      v58 = *(v57 + 16);
      if (!v58)
      {
        v59 = MEMORY[0x277D84F90];
LABEL_54:
        v62 = v26[230];
        v63 = swift_allocObject();
        v26[252] = v63;
        *(v63 + 16) = v59;
        *(v63 + 24) = 0;
        *(v63 + 32) = v62;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DE38, &unk_24F95B150);
        swift_asyncLet_begin();
        v11 = sub_24E7E1964;
        v9 = (v26 + 2);
        v10 = v26 + 201;
        v12 = v26 + 170;

        return MEMORY[0x282200930](v9, v10, v11, v12);
      }

      v59 = sub_24EAE678C(*(v57 + 16), 0);
      v60 = sub_24EAE7C84(&v72, v59 + 4, v58, v57);
      v61 = v72;

      v9 = sub_24E6586B4(v61);
      if (v60 == v58)
      {
        v26 = v67;
        goto LABEL_54;
      }

LABEL_59:
      __break(1u);
      return MEMORY[0x282200930](v9, v10, v11, v12);
    }

LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  sub_24E7E36D8();
  swift_allocError();
  swift_willThrow();

  v24 = v0[1];

  return v24();
}

uint64_t sub_24E7E1964()
{
  v1[253] = v0;
  if (v0)
  {

    return MEMORY[0x282200920](v1 + 82, v1 + 207, sub_24E7E2300, v1 + 184);
  }

  else
  {
    v1[254] = v1[201];

    return MEMORY[0x282200930](v1 + 82, v1 + 207, sub_24E7E1A2C, v1 + 196);
  }
}

uint64_t sub_24E7E1A2C()
{
  *(v1 + 2040) = v0;
  if (v0)
  {

    return MEMORY[0x282200920](v1 + 656, v1 + 1656, sub_24E7E2428, v1 + 1616);
  }

  else
  {

    return MEMORY[0x2822009F8](sub_24E7E1AF0, 0, 0);
  }
}

uint64_t sub_24E7E1AF0()
{
  v54 = v0;
  v1 = v0[246];
  v52 = v0[207];

  v2 = [v1 completedChallengeCount];
  v44 = [v2 integerValue];

  v3 = [v1 completedChallengeGameCount];
  v43 = [v3 integerValue];

  v4 = [v1 wonChallenges];
  v5 = [v4 comparisons];

  v6 = sub_24F92B5A8();
  v7 = v6;
  if (v6 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v7 = v20)
  {
    v9 = 0;
    v47 = v7 & 0xFFFFFFFFFFFFFF8;
    v49 = v7 & 0xC000000000000001;
    v46 = v0[238];
    v51 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v49)
      {
        v10 = v7;
        v7 = MEMORY[0x253052270](v9);
      }

      else
      {
        if (v9 >= *(v47 + 16))
        {
          goto LABEL_18;
        }

        v10 = v7;
        v7 = *(v7 + 8 * v9 + 32);
      }

      v11 = v7;
      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      v13 = v0[237];
      v14 = v0[236];
      v53[0] = v7;
      sub_24E7E26D8(v53, v52, v14);

      if ((*(v46 + 48))(v14, 1, v13) == 1)
      {
        sub_24E601704(v0[236], &qword_27F21DE00, &qword_24F95B118);
      }

      else
      {
        v15 = v0[240];
        v16 = v0[239];
        sub_24E7E39A8(v0[236], v15, type metadata accessor for ChallengesFriendComparisonData.WinComparison);
        sub_24E7E39A8(v15, v16, type metadata accessor for ChallengesFriendComparisonData.WinComparison);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v51 = sub_24E617804(0, v51[2] + 1, 1, v51);
        }

        v18 = v51[2];
        v17 = v51[3];
        if (v18 >= v17 >> 1)
        {
          v51 = sub_24E617804((v17 > 1), v18 + 1, 1, v51);
        }

        v19 = v0[239];
        v51[2] = v18 + 1;
        sub_24E7E39A8(v19, v51 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v18, type metadata accessor for ChallengesFriendComparisonData.WinComparison);
      }

      ++v9;
      v7 = v10;
      if (v12 == i)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    v20 = v7;
    i = sub_24F92C738();
  }

  v51 = MEMORY[0x277D84F90];
LABEL_21:
  v21 = v0[246];

  v22 = [v21 completedChallenges];
  v23 = [v22 details];

  v24 = sub_24F92B5A8();
  v25 = v24;
  if (v24 >> 62)
  {
    goto LABEL_39;
  }

  for (j = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10); j; v25 = v40)
  {
    v27 = 0;
    v48 = v25 & 0xFFFFFFFFFFFFFF8;
    v50 = v25 & 0xC000000000000001;
    v45 = v0[233];
    v28 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v50)
      {
        v29 = v25;
        v25 = MEMORY[0x253052270](v27);
      }

      else
      {
        if (v27 >= *(v48 + 16))
        {
          goto LABEL_38;
        }

        v29 = v25;
        v25 = *(v25 + 8 * v27 + 32);
      }

      v30 = v25;
      v31 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      v32 = v0[254];
      v33 = v0[232];
      v34 = v0[231];
      v53[0] = v25;
      sub_24E7E2A74(v53, v52, v32, v34);

      if ((*(v45 + 48))(v34, 1, v33) == 1)
      {
        sub_24E601704(v0[231], &qword_27F21DDF8, &qword_24F95B110);
      }

      else
      {
        v35 = v0[235];
        v36 = v0[234];
        sub_24E7E39A8(v0[231], v35, type metadata accessor for Challenge);
        sub_24E7E39A8(v35, v36, type metadata accessor for Challenge);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v28 = sub_24E6177DC(0, v28[2] + 1, 1, v28);
        }

        v38 = v28[2];
        v37 = v28[3];
        if (v38 >= v37 >> 1)
        {
          v28 = sub_24E6177DC((v37 > 1), v38 + 1, 1, v28);
        }

        v39 = v0[234];
        v28[2] = v38 + 1;
        sub_24E7E39A8(v39, v28 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v38, type metadata accessor for Challenge);
      }

      ++v27;
      v25 = v29;
      if (v31 == j)
      {
        goto LABEL_41;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    v40 = v25;
    j = sub_24F92C738();
  }

  v28 = MEMORY[0x277D84F90];
LABEL_41:
  v41 = v0[213];

  *v41 = v44;
  v41[1] = v43;
  v41[2] = v51;
  v41[3] = v28;

  return MEMORY[0x282200920](v0 + 82, v0 + 207, sub_24E7E20E8, v0 + 214);
}

uint64_t sub_24E7E2140()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E7E221C(uint64_t a1)
{
  v2 = v1[244];
  v3 = v1[243];
  v4 = v1[242];
  swift_willThrow();
  swift_unknownObjectRelease();

  v5 = v1[1];

  return v5();
}

uint64_t sub_24E7E2358()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E7E2480()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E7E2550(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_24E7E3A7C;

  return sub_24E6473DC(a2, a3, a4);
}

uint64_t sub_24E7E2614(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_24E67D244;

  return sub_24E64768C(a2, a3, a4);
}

uint64_t sub_24E7E26D8@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Game(0);
  v7 = *(v6 - 8);
  *&v8 = MEMORY[0x28223BE20](v6 - 8).n128_u64[0];
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = [v11 bundleID];
  v13 = sub_24F92B0D8();
  v15 = v14;

  if (*(a2 + 16))
  {
    v16 = sub_24E76D644(v13, v15);
    v18 = v17;

    if (v18)
    {
      sub_24E7E38E0(*(a2 + 56) + *(v7 + 72) * v16, v10, type metadata accessor for Game);
      sub_24E7E38E0(v10, a3, type metadata accessor for Game);
      v19 = [v11 playerWinCount];
      v20 = [v19 integerValue];

      v21 = [v11 otherPlayerWinCount];
      v22 = [v21 integerValue];

      sub_24E7E3948(v10, type metadata accessor for Game);
      v23 = type metadata accessor for ChallengesFriendComparisonData.WinComparison(0);
      *(a3 + *(v23 + 20)) = v20;
      *(a3 + *(v23 + 24)) = v22;
      return (*(*(v23 - 8) + 56))(a3, 0, 1, v23);
    }
  }

  else
  {
  }

  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v25 = sub_24F9220D8();
  __swift_project_value_buffer(v25, qword_27F39E778);
  v26 = v11;
  v27 = sub_24F9220B8();
  v28 = sub_24F92BDB8();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v38 = v30;
    *v29 = 136315138;
    v31 = [v26 bundleID];
    v32 = sub_24F92B0D8();
    v34 = v33;

    v35 = sub_24E7620D4(v32, v34, &v38);

    *(v29 + 4) = v35;
    _os_log_impl(&dword_24E5DD000, v27, v28, "ChallengesFriendComparisonDataIntentImplementation winComparisons: Failed to find game for bundleID: %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v30);
    MEMORY[0x2530542D0](v30, -1, -1);
    MEMORY[0x2530542D0](v29, -1, -1);
  }

  v36 = type metadata accessor for ChallengesFriendComparisonData.WinComparison(0);
  return (*(*(v36 - 8) + 56))(a3, 1, 1, v36);
}

uint64_t sub_24E7E2A74@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v127 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212A08, &qword_24F9397D0);
  MEMORY[0x28223BE20](v8 - 8);
  v108 = &v101 - v9;
  v10 = type metadata accessor for Player(0);
  v120 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v123 = &v101 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v119 = &v101 - v13;
  MEMORY[0x28223BE20](v14);
  v122 = &v101 - v15;
  v16 = type metadata accessor for Challenge.Participant(0);
  v117 = *(v16 - 8);
  v118 = v16;
  MEMORY[0x28223BE20](v16);
  v116 = &v101 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v121 = &v101 - v19;
  v20 = sub_24F91F648();
  v113 = *(v20 - 8);
  v114 = v20;
  MEMORY[0x28223BE20](v20);
  v112 = &v101 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v22 - 8);
  v110 = &v101 - v23;
  v24 = type metadata accessor for Game(0);
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24 - 8);
  v111 = &v101 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v28 = MEMORY[0x28223BE20](v27).n128_u64[0];
  v109 = &v101 - v29;
  v30 = &off_279691000;
  v115 = *a1;
  v31 = [v115 bundleID];
  v32 = sub_24F92B0D8();
  v34 = v33;

  if (!*(a2 + 16))
  {

LABEL_26:
    if (qword_27F2113B8 != -1)
    {
      goto LABEL_37;
    }

    goto LABEL_27;
  }

  v35 = sub_24E76D644(v32, v34);
  v37 = v36;

  if ((v37 & 1) == 0)
  {
    goto LABEL_26;
  }

  v107 = v4;
  v38 = v109;
  sub_24E7E38E0(*(a2 + 56) + *(v25 + 72) * v35, v109, type metadata accessor for Game);
  v39 = v115;
  v40 = [v115 challengeVendorID];
  v105 = sub_24F92B0D8();
  v104 = v41;

  v42 = [v39 scheduledEndDate];
  v43 = v110;
  sub_24F91F608();

  (*(v113 + 56))(v43, 0, 1, v114);
  v44 = [v39 challengeID];
  v103 = sub_24F92B0D8();
  v102 = v45;

  v46 = [v39 endDate];
  sub_24F91F608();

  sub_24E7E38E0(v38, v111, type metadata accessor for Game);
  v47 = [v39 participants];
  sub_24E69A5C4(0, &qword_27F21DE28, 0x277D0C0F0);
  v30 = sub_24F92B5A8();

  if (v30 >> 62)
  {
    v48 = sub_24F92C738();
  }

  else
  {
    v48 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v106 = a4;
  if (!v48)
  {
    v126 = MEMORY[0x277D84F90];
LABEL_31:

    v87 = type metadata accessor for ChallengeDefinitionDetail(0);
    v88 = v108;
    (*(*(v87 - 8) + 56))(v108, 1, 1, v87);
    v89 = [v115 rank];
    v90 = v89;
    if (v89)
    {
      v91 = [v89 integerValue];
    }

    else
    {
      v91 = 0;
    }

    v92 = v105;
    v93 = v104;
    v94 = v90 == 0;
    sub_24E7E3948(v109, type metadata accessor for Game);
    v95 = type metadata accessor for Challenge(0);
    v96 = v106;
    sub_24E6009C8(v110, v106 + v95[13], &unk_27F22EC30, &qword_24F939880);
    v97 = v102;
    *v96 = v103;
    *(v96 + 1) = v97;
    *(v96 + 2) = v92;
    *(v96 + 3) = v93;
    (*(v113 + 32))(&v96[v95[6]], v112, v114);
    sub_24E7E39A8(v111, &v96[v95[7]], type metadata accessor for Game);
    *&v96[v95[8]] = v126;
    v98 = &v96[v95[9]];
    *v98 = 0;
    *(v98 + 1) = 0xE000000000000000;
    sub_24E6009C8(v88, &v96[v95[10]], &qword_27F212A08, &qword_24F9397D0);
    v99 = &v96[v95[11]];
    *v99 = 0;
    v99[8] = 0;
    v100 = &v96[v95[12]];
    *v100 = v91;
    v100[8] = v94;
    return (*(*(v95 - 1) + 56))(v96, 0, 1, v95);
  }

  v49 = 0;
  v124 = v30 & 0xFFFFFFFFFFFFFF8;
  v125 = v30 & 0xC000000000000001;
  v126 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v125)
    {
      v50 = MEMORY[0x253052270](v49, v30);
    }

    else
    {
      if (v49 >= *(v124 + 16))
      {
        goto LABEL_36;
      }

      v50 = *(v30 + 8 * v49 + 32);
    }

    v51 = v50;
    v52 = v49 + 1;
    if (__OFADD__(v49, 1))
    {
      break;
    }

    a4 = v30;
    v53 = [v50 playerID];
    v54 = sub_24F92B0D8();
    v56 = v55;

    if (*(v127 + 16))
    {
      v57 = v54;
      v58 = v127;
      v59 = sub_24E76D644(v57, v56);
      v61 = v60;

      if (v61)
      {
        v62 = *(v58 + 56) + *(v120 + 72) * v59;
        v63 = v119;
        sub_24E7E38E0(v62, v119, type metadata accessor for Player);
        v64 = v63;
        v65 = v122;
        sub_24E7E39A8(v64, v122, type metadata accessor for Player);
        sub_24E7E38E0(v65, v123, type metadata accessor for Player);
        v66 = [v51 rank];
        v67 = v66;
        if (v66)
        {
          v68 = [v66 integerValue];
        }

        else
        {
          v68 = 0;
        }

        sub_24E7E3948(v122, type metadata accessor for Player);
        v69 = v116;
        sub_24E7E39A8(v123, v116, type metadata accessor for Player);
        v70 = v69 + *(v118 + 20);
        *v70 = v68;
        *(v70 + 8) = v67 == 0;
        sub_24E7E39A8(v69, v121, type metadata accessor for Challenge.Participant);
        v30 = a4;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v126 = sub_24E61782C(0, v126[2] + 1, 1, v126);
        }

        v72 = v126[2];
        v71 = v126[3];
        if (v72 >= v71 >> 1)
        {
          v126 = sub_24E61782C((v71 > 1), v72 + 1, 1, v126);
        }

        v73 = v126;
        v126[2] = v72 + 1;
        sub_24E7E39A8(v121, v73 + ((*(v117 + 80) + 32) & ~*(v117 + 80)) + *(v117 + 72) * v72, type metadata accessor for Challenge.Participant);
        goto LABEL_9;
      }
    }

    else
    {
    }

    v30 = a4;
LABEL_9:
    ++v49;
    if (v52 == v48)
    {
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  swift_once();
LABEL_27:
  v74 = sub_24F9220D8();
  __swift_project_value_buffer(v74, qword_27F39E778);
  v75 = v115;
  v76 = sub_24F9220B8();
  v77 = sub_24F92BDB8();

  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v128 = v79;
    *v78 = 136315138;
    v80 = [v75 *(v30 + 2152)];
    v81 = sub_24F92B0D8();
    v83 = v82;

    v84 = sub_24E7620D4(v81, v83, &v128);

    *(v78 + 4) = v84;
    _os_log_impl(&dword_24E5DD000, v76, v77, "ChallengesFriendComparisonDataIntentImplementation completedChallenges: Failed to find game for bundleID: %s", v78, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v79);
    MEMORY[0x2530542D0](v79, -1, -1);
    MEMORY[0x2530542D0](v78, -1, -1);
  }

  v85 = type metadata accessor for Challenge(0);
  return (*(*(v85 - 8) + 56))(a4, 1, 1, v85);
}

uint64_t sub_24E7E3608(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24E614970;

  return sub_24E7E05D8(a1, a2, a3);
}

unint64_t sub_24E7E36D8()
{
  result = qword_27F21DE10;
  if (!qword_27F21DE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21DE10);
  }

  return result;
}

uint64_t sub_24E7E3730(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24E6541E4;

  return sub_24E7E2550(a1, v4, v5, v6);
}

uint64_t objectdestroyTm_12()
{

  return swift_deallocObject();
}

uint64_t sub_24E7E3828(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24E614970;

  return sub_24E7E2614(a1, v4, v5, v6);
}

uint64_t sub_24E7E38E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E7E3948(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24E7E39A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_24E7E3A24()
{
  result = qword_27F21DE40;
  if (!qword_27F21DE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21DE40);
  }

  return result;
}

uint64_t sub_24E7E3AA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24E7E3B74(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for LeaderboardActionButton(uint64_t a1)
{
  result = qword_27F21DE48;
  if (!qword_27F21DE48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E7E3C70(uint64_t a1)
{
  sub_24E61C7D0(319);
  if (v1 <= 0x3F)
  {
    sub_24E61C8D4(319);
    if (v2 <= 0x3F)
    {
      sub_24E61C938(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_24E7E3D20(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DF00, &qword_24F95B4B8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E7E55A0();
  sub_24F92D128();
  v8[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
  sub_24E602068(&qword_27F214040, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DB8]);
  sub_24F92CD48();
  if (!v1)
  {
    v8[14] = 1;
    sub_24F92CD08();
    v8[13] = 2;
    sub_24F92CD08();
    v8[12] = 3;
    sub_24F92CD18();
    v8[11] = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    sub_24E620EE4(&qword_27F214048, &qword_27F214050, MEMORY[0x277D21FD8], MEMORY[0x277D21D30]);
    sub_24F92CD48();
    type metadata accessor for LeaderboardActionButton(0);
    v8[10] = 5;
    sub_24F929608();
    sub_24E7E56B4(&qword_27F214058, MEMORY[0x277D21F70], MEMORY[0x277D21F78]);
    sub_24F92CCF8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24E7E4050@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v30 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DEF0, &qword_24F95B4B0);
  v33 = *(v7 - 8);
  v34 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v30 - v8;
  v10 = type metadata accessor for LeaderboardActionButton(0);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v13 + 5) = 0u;
  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  *(v13 + 6) = 0u;
  *(v13 + 14) = 0;
  v35 = v13 + 80;
  sub_24E61DA68(&v38, (v13 + 80), qword_27F21B590, &unk_24F93BE30);
  v14 = *(v11 + 44);
  v15 = sub_24F929608();
  v16 = *(*(v15 - 8) + 56);
  v37 = v14;
  v16(&v13[v14], 1, 1, v15);
  v17 = a1[3];
  v36 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_24E7E55A0();
  sub_24F92D108();
  if (v2)
  {
    v20 = v35;
    __swift_destroy_boxed_opaque_existential_1(v36);
    sub_24E601704(v20, qword_27F24EC90, &unk_24F93C1D0);
    return sub_24E601704(&v13[v37], &qword_27F213E68, &unk_24F93BC80);
  }

  else
  {
    v31 = v6;
    v18 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
    v41 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DC0]);
    v19 = v34;
    sub_24F92CC68();
    v21 = v39;
    *v13 = v38;
    *(v13 + 1) = v21;
    *(v13 + 4) = v40;
    LOBYTE(v38) = 1;
    v22 = sub_24F92CC28();
    v23 = v18;
    v24 = v35;
    *(v13 + 5) = v22;
    *(v13 + 6) = v25;
    LOBYTE(v38) = 2;
    *(v13 + 7) = sub_24F92CC28();
    *(v13 + 8) = v26;
    LOBYTE(v38) = 3;
    v27 = sub_24F92CC38();
    v30 = 0;
    v13[72] = v27 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    v41 = 4;
    sub_24E620EE4(&qword_27F213F38, &qword_27F213F40, MEMORY[0x277D21FD0], MEMORY[0x277D21D38]);
    sub_24F92CC68();
    sub_24E61DA68(&v38, v24, qword_27F24EC90, &unk_24F93C1D0);
    LOBYTE(v38) = 5;
    sub_24E7E56B4(&qword_27F213F48, MEMORY[0x277D21F70], MEMORY[0x277D21F88]);
    v28 = v31;
    sub_24F92CC18();
    (*(v23 + 8))(v9, v19);
    sub_24E61DA68(v28, &v13[v37], &qword_27F213E68, &unk_24F93BC80);
    sub_24E7E55F4(v13, v32);
    __swift_destroy_boxed_opaque_existential_1(v36);
    return sub_24E7E5658(v13);
  }
}

uint64_t sub_24E7E4610()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x72616D6972507369;
  v4 = 0x6575676573;
  if (v1 != 4)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x614E6C6F626D7973;
  if (v1 != 1)
  {
    v5 = 0x656C746974;
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

uint64_t sub_24E7E46C4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24E7E5A14(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24E7E46EC(uint64_t a1)
{
  v2 = sub_24E7E55A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E7E4728(uint64_t a1)
{
  v2 = sub_24E7E55A0();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_24E7E4764@<D0>(uint64_t a1@<X8>)
{
  sub_24E60169C(v1 + 80, v5, qword_27F24EC90, &unk_24F93C1D0);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

uint64_t sub_24E7E47EC@<X0>(void *a1@<X8>)
{
  *a1 = 2;
  v2 = *MEMORY[0x277D7EB30];
  v3 = sub_24F9218F8();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

unint64_t sub_24E7E48B8()
{
  result = qword_27F21DE58;
  if (!qword_27F21DE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21DE58);
  }

  return result;
}

uint64_t sub_24E7E490C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a2;
  v85 = sub_24F924B38();
  v81 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v79 = &v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2177F8, &unk_24F946410);
  MEMORY[0x28223BE20](v4);
  v6 = &v71 - v5;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DE70, &qword_24F9FE110);
  *&v73 = *(v74 - 1);
  MEMORY[0x28223BE20](v74);
  v8 = &v71 - v7;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DE78, &qword_24F95B3F0);
  MEMORY[0x28223BE20](v72);
  v10 = &v71 - v9;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DE80, &qword_24F95B3F8);
  MEMORY[0x28223BE20](v75);
  v12 = &v71 - v11;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DE88, &qword_24F95B400);
  v80 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v78 = &v71 - v13;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DE90, &qword_24F95B408);
  MEMORY[0x28223BE20](v77);
  v84 = &v71 - v14;
  *v10 = sub_24F9249A8();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v15 = *(a1 + 64);
  *&v87 = *(a1 + 56);
  *(&v87 + 1) = v15;
  sub_24E600AEC();

  sub_24F926EB8();
  v16 = sub_24F925A28();
  KeyPath = swift_getKeyPath();
  v18 = &v6[*(v4 + 36)];
  *v18 = KeyPath;
  v18[1] = v16;
  sub_24E6AFC48();
  sub_24F9268B8();
  sub_24E601704(v6, &qword_27F2177F8, &unk_24F946410);
  v76 = *(a1 + 72);
  if (v76 == 1)
  {
    v19 = sub_24F926C88();
  }

  else
  {
    v19 = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  }

  v20 = v19;
  v21 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DE98, &qword_24F95B440) + 44)];
  (*(v73 + 32))(v21, v8, v74);
  *&v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DEA0, &qword_24F95B448) + 36)] = v20;
  v22 = sub_24F925808();
  v23 = &v10[*(v72 + 36)];
  *v23 = v22;
  *(v23 + 8) = 0u;
  *(v23 + 24) = 0u;
  v23[40] = 1;
  sub_24F927618();
  sub_24F9242E8();
  sub_24E6009C8(v10, v12, &qword_27F21DE78, &qword_24F95B3F0);
  v24 = &v12[*(v75 + 36)];
  v25 = v92;
  *(v24 + 4) = v91;
  *(v24 + 5) = v25;
  *(v24 + 6) = v93;
  v26 = v88;
  *v24 = v87;
  *(v24 + 1) = v26;
  v27 = v90;
  *(v24 + 2) = v89;
  *(v24 + 3) = v27;
  sub_24E60169C(a1 + 80, v86, qword_27F24EC90, &unk_24F93C1D0);
  sub_24E601704(v86, qword_27F21B590, &unk_24F93BE30);
  v28 = v84;
  v29 = v85;
  v30 = v82;
  v31 = v80;
  if (qword_27F211830 != -1)
  {
    swift_once();
  }

  v32 = sub_24F9248C8();
  __swift_project_value_buffer(v32, qword_27F39F078);
  sub_24E7E53E4();
  v33 = v78;
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  sub_24E601704(v12, &qword_27F21DE80, &qword_24F95B3F8);
  v34 = v81;
  v35 = *(v81 + 104);
  v36 = v79;
  LODWORD(v75) = *MEMORY[0x277CE0118];
  v74 = v35;
  v35(v79);
  v37 = sub_24F924258();
  v86[3] = v37;
  v86[4] = sub_24E7E56B4(&qword_27F212868, MEMORY[0x277CDFC08], MEMORY[0x277CDFBE0]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v86);
  (*(v34 + 16))(boxed_opaque_existential_1 + *(v37 + 20), v36, v29);
  __asm { FMOV            V0.2D, #12.0 }

  v73 = _Q0;
  *boxed_opaque_existential_1 = _Q0;
  (*(v34 + 8))(v36, v29);
  sub_24E7E5528(v86, v28);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DED0, &qword_24F95B460);
  (*(v31 + 16))(v28 + v44[9], v33, v30);
  v45 = v30;
  v46 = v28 + v44[10];
  *v46 = sub_24F923398() & 1;
  *(v46 + 8) = v47;
  *(v46 + 16) = v48 & 1;
  v49 = v28 + v44[11];
  *v49 = swift_getKeyPath();
  *(v49 + 8) = 0;
  v50 = v28;
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v51 = qword_27F24E488;
  v52 = sub_24F923398();
  v54 = v53;
  v56 = v55;
  v57 = v50 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DED8, &qword_24F95B490) + 36);
  *v57 = v51;
  *(v57 + 8) = v52 & 1;
  *(v57 + 16) = v54;
  *(v57 + 24) = v56 & 1;
  LOBYTE(v51) = sub_24F923398();
  v59 = v58;
  LOBYTE(v54) = v60;
  sub_24E601704(v86, &qword_27F21DEC8, &qword_24F95B458);
  (*(v31 + 8))(v33, v45);
  v61 = v50 + *(v77 + 36);
  *v61 = v51 & 1;
  *(v61 + 8) = v59;
  *(v61 + 16) = v54 & 1;
  if (v76)
  {
    v62 = sub_24F925198();
  }

  else
  {
    v62 = sub_24F9251A8();
  }

  v63 = v62;
  v64 = v85;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DEE0, &qword_24F95B498);
  v66 = v83;
  v67 = (v83 + *(v65 + 36));
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DEE8, &unk_24F95B4A0);
  v69 = (v67 + *(v68 + 52));
  (v74)(v69 + *(v37 + 20), v75, v64);
  *v69 = v73;
  *v67 = v63;
  *(v67 + *(v68 + 56)) = 256;
  return sub_24E6009C8(v84, v66, &qword_27F21DE90, &qword_24F95B408);
}

uint64_t sub_24E7E524C(uint64_t a1)
{
  sub_24E7E48B8();

  return sub_24F9218E8();
}

unint64_t sub_24E7E52DC()
{
  result = qword_27F21DE68;
  if (!qword_27F21DE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21DE68);
  }

  return result;
}

unint64_t sub_24E7E53E4()
{
  result = qword_27F21DEA8;
  if (!qword_27F21DEA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21DE80, &qword_24F95B3F8);
    sub_24E7E5470();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21DEA8);
  }

  return result;
}

unint64_t sub_24E7E5470()
{
  result = qword_27F21DEB0;
  if (!qword_27F21DEB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21DE78, &qword_24F95B3F0);
    sub_24E602068(&qword_27F21DEB8, &qword_27F21DEC0, &qword_24F95B450, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21DEB0);
  }

  return result;
}

uint64_t sub_24E7E5528(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DEC8, &qword_24F95B458);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24E7E55A0()
{
  result = qword_27F21DEF8;
  if (!qword_27F21DEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21DEF8);
  }

  return result;
}

uint64_t sub_24E7E55F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LeaderboardActionButton(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E7E5658(uint64_t a1)
{
  v2 = type metadata accessor for LeaderboardActionButton(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E7E56B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24E7E5710()
{
  result = qword_27F21DF08;
  if (!qword_27F21DF08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21DEE0, &qword_24F95B498);
    sub_24E7E57C8();
    sub_24E602068(&qword_27F21DF28, &qword_27F21DEE8, &unk_24F95B4A0, MEMORY[0x277CE08B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21DF08);
  }

  return result;
}

unint64_t sub_24E7E57C8()
{
  result = qword_27F21DF10;
  if (!qword_27F21DF10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21DE90, &qword_24F95B408);
    sub_24E7E5854();
    sub_24E600F3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21DF10);
  }

  return result;
}

unint64_t sub_24E7E5854()
{
  result = qword_27F21DF18;
  if (!qword_27F21DF18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21DED8, &qword_24F95B490);
    sub_24E602068(&qword_27F21DF20, &qword_27F21DED0, &qword_24F95B460, &unk_24FA2648C);
    sub_24E600EE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21DF18);
  }

  return result;
}

unint64_t sub_24E7E5910()
{
  result = qword_27F21DF30;
  if (!qword_27F21DF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21DF30);
  }

  return result;
}

unint64_t sub_24E7E5968()
{
  result = qword_27F21DF38;
  if (!qword_27F21DF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21DF38);
  }

  return result;
}

unint64_t sub_24E7E59C0()
{
  result = qword_27F21DF40;
  if (!qword_27F21DF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21DF40);
  }

  return result;
}

uint64_t sub_24E7E5A14(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x614E6C6F626D7973 && a2 == 0xEA0000000000656DLL || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x72616D6972507369 && a2 == 0xE900000000000079 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_24F92CE08();

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

uint64_t sub_24E7E5C18@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v49 = a1;
  v3 = type metadata accessor for SwiftUIArtworkView(0);
  v42 = *(v3 - 1);
  MEMORY[0x28223BE20](v3);
  v43 = v4;
  v44 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DF68, &qword_24F95B648);
  MEMORY[0x28223BE20](v45);
  v47 = (&v38 - v5);
  v46 = type metadata accessor for SwiftUIArtworkView.SizedContent(0);
  MEMORY[0x28223BE20](v46);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DF70, &qword_24F95B650);
  MEMORY[0x28223BE20](v8);
  v48 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DF78, &qword_24F95B658);
  MEMORY[0x28223BE20](v10);
  v12 = &v38 - v11;
  v13 = type metadata accessor for SystemArtworkView(0);
  MEMORY[0x28223BE20](v13);
  v15 = (&v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *v1;
  v17 = *(*v1 + 24);
  v50 = *(*v1 + 16);
  v51 = v17;
  if (Artwork.URLTemplate.isSystemImage.getter())
  {
    *v15 = v16;
    v18 = *(v13 + 20);
    *(v15 + v18) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DFA8, &unk_24FA26630);
    swift_storeEnumTagMultiPayload();
    sub_24E7E9B64(v15, v12, type metadata accessor for SystemArtworkView);
    swift_storeEnumTagMultiPayload();
    sub_24E7E9A34(&qword_27F21DF98, type metadata accessor for SystemArtworkView, &unk_24F95B758);
    sub_24E7E9A7C();

    sub_24F924E28();
    return sub_24E7E9BF4(v15, type metadata accessor for SystemArtworkView);
  }

  else
  {
    v38 = v10;
    v39 = v12;
    v40 = v13;
    v41 = v8;
    v21 = *(v1 + 8);
    v20 = *(v1 + 16);
    v22 = *(v1 + 24);
    if (v22 == 1 && (v23 = *(v16 + 24), v50 = *(v16 + 16), v51 = v23, !Artwork.URLTemplate.isBundleImage.getter()))
    {
      v34 = v44;
      sub_24E7E9B64(v1, v44, type metadata accessor for SwiftUIArtworkView);
      v35 = (*(v42 + 80) + 16) & ~*(v42 + 80);
      v36 = swift_allocObject();
      sub_24E7EAFA8(v34, v36 + v35, type metadata accessor for SwiftUIArtworkView);
      v37 = v47;
      *v47 = sub_24E7E99B4;
      v37[1] = v36;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DF80, &qword_24F95B660);
      sub_24E7E9A34(&qword_27F21DF88, type metadata accessor for SwiftUIArtworkView.SizedContent, &unk_24F95B7A8);
      sub_24E602068(&qword_27F21DF90, &qword_27F21DF80, &qword_24F95B660, MEMORY[0x277CDF7D8]);
      v33 = v48;
      sub_24F924E28();
    }

    else
    {
      v24 = v3[6];
      v25 = v46;
      v26 = *(v46 + 24);
      v27 = sub_24F926E68();
      (*(*(v27 - 8) + 16))(&v7[v26], v2 + v24, v27);
      v28 = v2 + v3[7];
      v29 = *(v28 + 16);
      v30 = *(v2 + v3[8]);
      v31 = *(v2 + v3[9]);
      *v7 = v16;
      *(v7 + 1) = v21;
      *(v7 + 2) = v20;
      v7[24] = v22;
      v32 = &v7[v25[7]];
      *v32 = *v28;
      v32[16] = v29;
      v7[v25[8]] = v30;
      v7[v25[9]] = v31;
      sub_24E7E9B64(v7, v47, type metadata accessor for SwiftUIArtworkView.SizedContent);
      swift_storeEnumTagMultiPayload();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DF80, &qword_24F95B660);
      sub_24E7E9A34(&qword_27F21DF88, type metadata accessor for SwiftUIArtworkView.SizedContent, &unk_24F95B7A8);
      sub_24E602068(&qword_27F21DF90, &qword_27F21DF80, &qword_24F95B660, MEMORY[0x277CDF7D8]);
      v33 = v48;
      sub_24F924E28();
      sub_24E7E9BF4(v7, type metadata accessor for SwiftUIArtworkView.SizedContent);
    }

    sub_24E60169C(v33, v39, &qword_27F21DF70, &qword_24F95B650);
    swift_storeEnumTagMultiPayload();
    sub_24E7E9A34(&qword_27F21DF98, type metadata accessor for SystemArtworkView, &unk_24F95B758);
    sub_24E7E9A7C();
    sub_24F924E28();
    return sub_24E601704(v33, &qword_27F21DF70, &qword_24F95B650);
  }
}

__n128 sub_24E7E630C@<Q0>(char *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = *a1;

  sub_24F923998();
  v6 = v5;
  v8 = v7;
  v9 = type metadata accessor for SwiftUIArtworkView(0);
  v10 = v9[6];
  v11 = type metadata accessor for SwiftUIArtworkView.SizedContent(0);
  v12 = v11[6];
  v13 = sub_24F926E68();
  (*(*(v13 - 8) + 16))(a2 + v12, &a1[v10], v13);
  v14 = &a1[v9[7]];
  v15 = v14[1].n128_u8[0];
  v16 = a1[v9[8]];
  v17 = a1[v9[9]];
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v8;
  *(a2 + 24) = 0;
  v18 = (a2 + v11[7]);
  result = *v14;
  *v18 = *v14;
  v18[1].n128_u8[0] = v15;
  *(a2 + v11[8]) = v16;
  *(a2 + v11[9]) = v17;
  return result;
}

uint64_t sub_24E7E6410@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DFF0, &qword_24F95B7F8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DFF8, &qword_24F95B800);
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E000, &qword_24F95B808);
  MEMORY[0x28223BE20](v10);
  v12 = &v21 - v11;
  sub_24E7E6604(v1, v6);
  v13 = type metadata accessor for SwiftUIArtworkView.SizedContent(0);
  v15 = *(v1 + *(v13 + 32));
  if (v15 == 2)
  {
    LOBYTE(v15) = sub_24E7E6C64(v13, v14);
  }

  sub_24E6009C8(v6, v9, &qword_27F21DFF0, &qword_24F95B7F8);
  v9[*(v7 + 36)] = v15;
  v16 = v2[1];
  v17 = v2[2];
  v18 = *(v2 + 24);
  sub_24E6009C8(v9, v12, &qword_27F21DFF8, &qword_24F95B800);
  v19 = &v12[*(v10 + 36)];
  *v19 = v16;
  *(v19 + 1) = v17;
  v19[16] = v18;
  sub_24E6009C8(v12, a1, &qword_27F21E000, &qword_24F95B808);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E008, &qword_24F95B810);
  *(a1 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_24E7E6604@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v60 = type metadata accessor for BundleArtworkView(0);
  MEMORY[0x28223BE20](v60);
  v4 = &v48[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E010, &qword_24F95B818);
  MEMORY[0x28223BE20](v58);
  v6 = &v48[-v5];
  v7 = sub_24F91F6B8();
  v55 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v48[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v12 = &v48[-v11];
  v13 = type metadata accessor for RemoteArtworkView(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v48[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = a1[2];
  v56 = a1[1];
  v57 = v16;
  v17 = *(a1 + 24);
  if ((v17 & 1) != 0 || (v54 = *a1, v18 = *(v54 + 24), *&v62[0] = *(v54 + 16), *(&v62[0] + 1) = v18, Artwork.URLTemplate.isBundleImage.getter()))
  {
    v19 = *a1;
    v20 = type metadata accessor for SwiftUIArtworkView.SizedContent(0);
    v21 = *(v20 + 24);
    v22 = v60;
    v23 = *(v60 + 24);
    v24 = sub_24F926E68();
    (*(*(v24 - 8) + 16))(&v4[v23], a1 + v21, v24);
    v25 = *(a1 + *(v20 + 32));
    v27 = v56;
    v26 = v57;
    *v4 = v19;
    *(v4 + 1) = v27;
    *(v4 + 2) = v26;
    v4[24] = v17;
    v4[*(v22 + 28)] = v25;
    v28 = *(v22 + 32);
    *&v4[v28] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DFA8, &unk_24FA26630);
    swift_storeEnumTagMultiPayload();
    sub_24E7E9B64(v4, v6, type metadata accessor for BundleArtworkView);
    swift_storeEnumTagMultiPayload();
    sub_24E7E9A34(&qword_27F21E018, type metadata accessor for RemoteArtworkView, &unk_24F95B910);
    sub_24E7E9A34(&qword_27F21E020, type metadata accessor for BundleArtworkView, &unk_24F95B8C0);

    sub_24F924E28();
    v29 = type metadata accessor for BundleArtworkView;
    v30 = v4;
  }

  else
  {
    v31 = type metadata accessor for SwiftUIArtworkView.SizedContent(0);
    v32 = v31[6];
    v33 = v13[6];
    v34 = sub_24F926E68();
    (*(*(v34 - 8) + 16))(&v15[v33], a1 + v32, v34);
    v35 = v31[8];
    v36 = a1 + v31[7];
    v37 = *v36;
    v50 = *(v36 + 1);
    v51 = v37;
    LODWORD(v35) = *(a1 + v35);
    v49 = v36[16];
    v52 = *(a1 + v31[9]);
    v53 = v35;
    v38 = &v15[v13[10]];
    type metadata accessor for ArtworkLoader();
    sub_24E7E9A34(&qword_27F21E028, type metadata accessor for ArtworkLoader, &protocol conformance descriptor for ArtworkLoader);
    v39 = v54;

    *v38 = sub_24F9243D8();
    v38[1] = v40;
    v41 = v13[11];
    v61[0] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B9C0, &qword_24F95B820);
    sub_24F926F28();
    *&v15[v41] = v62[0];
    sub_24F91F6A8();
    v42 = v55;
    (*(v55 + 16))(v9, v12, v7);
    sub_24E7E9A34(&qword_27F2551B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    sub_24F92C7F8();
    (*(v42 + 8))(v12, v7);
    sub_24E65864C(v62, v61);
    sub_24F926F28();
    sub_24E6585F8(v62);
    v44 = v56;
    v43 = v57;
    *v15 = v39;
    *(v15 + 1) = v44;
    *(v15 + 2) = v43;
    v45 = &v15[v13[7]];
    v46 = v50;
    *v45 = v51;
    *(v45 + 1) = v46;
    v45[16] = v49;
    LOBYTE(v46) = v52;
    v15[v13[8]] = v53;
    v15[v13[9]] = v46;
    sub_24E7E9B64(v15, v6, type metadata accessor for RemoteArtworkView);
    swift_storeEnumTagMultiPayload();
    sub_24E7E9A34(&qword_27F21E018, type metadata accessor for RemoteArtworkView, &unk_24F95B910);
    sub_24E7E9A34(&qword_27F21E020, type metadata accessor for BundleArtworkView, &unk_24F95B8C0);
    sub_24F924E28();
    v29 = type metadata accessor for RemoteArtworkView;
    v30 = v15;
  }

  return sub_24E7E9BF4(v30, v29);
}

uint64_t sub_24E7E6C64(uint64_t a1, uint64_t a2)
{
  if (Artwork.Crop.preferredContentMode.getter() == 1)
  {
    return 0;
  }

  if (Artwork.Crop.preferredContentMode.getter() == 2)
  {
    return 1;
  }

  return 2;
}

uint64_t sub_24E7E6CD0@<X0>(uint64_t a1@<X8>)
{
  v121 = a1;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E140, &qword_24F95B9C8);
  MEMORY[0x28223BE20](v119);
  v120 = (&v95 - v2);
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E148, &qword_24F95B9D0);
  MEMORY[0x28223BE20](v116);
  v107 = &v95 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v108 = &v95 - v5;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E150, &qword_24F95B9D8);
  MEMORY[0x28223BE20](v114);
  v115 = &v95 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E038, &unk_24F95B830);
  MEMORY[0x28223BE20](v7 - 8);
  v102 = &v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v106 = &v95 - v10;
  v112 = sub_24F926E78();
  v110 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v98 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v101 = &v95 - v13;
  MEMORY[0x28223BE20](v14);
  v99 = &v95 - v15;
  MEMORY[0x28223BE20](v16);
  v105 = (&v95 - v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E100, &qword_24F95B9A0);
  MEMORY[0x28223BE20](v18 - 8);
  v109 = &v95 - v19;
  v20 = sub_24F926E08();
  v100 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = &v95 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E158, &qword_24F95B9E0);
  MEMORY[0x28223BE20](v111);
  v103 = &v95 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v104 = &v95 - v25;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E160, &qword_24F95B9E8);
  MEMORY[0x28223BE20](v118);
  v113 = &v95 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v27 - 8);
  v29 = &v95 - v28;
  v30 = sub_24F91F4A8();
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v33 = &v95 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = v1;
  v34 = *v1;

  sub_24F91F488();
  v35 = v30;

  if ((*(v31 + 48))(v29, 1, v30) == 1)
  {
    sub_24E601704(v29, &qword_27F228530, &unk_24F93C6E0);
LABEL_13:
    v52 = v120;
    *v120 = 0;
    *(v52 + 8) = 1;
    swift_storeEnumTagMultiPayload();
    sub_24E7EB448();
    return sub_24F924E28();
  }

  (*(v31 + 32))(v33, v29, v30);
  sub_24F91F438();
  v36 = v33;
  if (!v37)
  {
    (*(v31 + 8))(v33, v30);
    goto LABEL_13;
  }

  v38 = v117;
  v39 = *(v117 + 24);
  v97 = v31;
  v96 = v36;
  if ((v39 & 1) == 0)
  {
    v108 = v30;
    v102 = v117[2];
    if (qword_27F2103D8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v54 = qword_27F22B5B8;
    sub_24F926E98();
    v55 = v100;
    (*(v100 + 104))(v22, *MEMORY[0x277CE0FE0], v20);
    sub_24F926E88();

    (*(v55 + 8))(v22, v20);
    v56 = type metadata accessor for BundleArtworkView(0);
    v57 = *(v56 + 24);
    v58 = sub_24F926E68();
    v59 = *(v58 - 8);
    v60 = v38 + v57;
    v61 = v109;
    (*(v59 + 16))(v109, v60, v58);
    (*(v59 + 56))(v61, 0, 1, v58);
    v107 = sub_24F926E38();

    v62 = sub_24E601704(v61, &qword_27F21E100, &qword_24F95B9A0);
    v64 = *(v38 + *(v56 + 28));
    if (v64 == 2)
    {
      LOBYTE(v64) = sub_24E7E6C64(v62, v63);
    }

    sub_24F927618();
    sub_24F9238C8();
    *&v122[6] = v123;
    *&v122[22] = v124;
    *&v122[38] = v125;
    v65 = *(v34 + 96);
    v66 = v113;
    v67 = v110;
    if (v65 > 1)
    {
      v35 = v108;
      v69 = v112;
      if (v65 != 2)
      {
        v92 = v106;
        (*(v110 + 56))(v106, 1, 1, v112);
        v93 = v105;
        sub_24F769EA0(v105);
        v94 = (*(v67 + 48))(v92, 1, v69);
        if (v94 != 1)
        {
          sub_24E601704(v92, &qword_27F21E038, &unk_24F95B830);
        }

        goto LABEL_32;
      }

      v68 = MEMORY[0x277CE1048];
    }

    else
    {
      if (*(v34 + 96))
      {
        v68 = MEMORY[0x277CE1058];
      }

      else
      {
        v68 = MEMORY[0x277CE1050];
      }

      v35 = v108;
      v69 = v112;
    }

    v81 = v99;
    (*(v110 + 104))(v99, *v68, v69);
    v82 = *(v67 + 32);
    v83 = v106;
    v82(v106, v81, v69);
    (*(v67 + 56))(v83, 0, 1, v69);
    v93 = v105;
    v82(v105, v83, v69);
LABEL_32:
    KeyPath = swift_getKeyPath();
    v85 = v103;
    v86 = &v103[*(v111 + 36)];
    v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22DF30, &qword_24F958D50);
    (*(v67 + 32))(v86 + *(v87 + 28), v93, v69);
    *v86 = KeyPath;
    *v85 = v107;
    *(v85 + 8) = v64;
    *(v85 + 9) = 1;
    *(v85 + 56) = *&v122[46];
    *(v85 + 42) = *&v122[32];
    v88 = *v122;
    *(v85 + 26) = *&v122[16];
    *(v85 + 10) = v88;
    v89 = v104;
    sub_24E6009C8(v85, v104, &qword_27F21E158, &qword_24F95B9E0);
    sub_24E60169C(v89, v115, &qword_27F21E158, &qword_24F95B9E0);
    swift_storeEnumTagMultiPayload();
    sub_24E7EB4D4();
    sub_24E7EB724();
    sub_24F924E28();
    v78 = v89;
    v79 = &qword_27F21E158;
    v80 = &qword_24F95B9E0;
    goto LABEL_33;
  }

  if (qword_27F2103D8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v40 = qword_27F22B5B8;
  sub_24F926E98();
  v41 = *(type metadata accessor for BundleArtworkView(0) + 24);
  v42 = sub_24F926E68();
  v43 = *(v42 - 8);
  v44 = v117 + v41;
  v45 = v109;
  (*(v43 + 16))(v109, v44, v42);
  (*(v43 + 56))(v45, 0, 1, v42);
  v46 = sub_24F926E38();

  sub_24E601704(v45, &qword_27F21E100, &qword_24F95B9A0);
  v47 = *(v34 + 96);
  if (v47 > 1)
  {
    v49 = v112;
    v50 = v110;
    v51 = v101;
    if (v47 != 2)
    {
      v90 = v102;
      (*(v110 + 56))(v102, 1, 1, v112);
      sub_24F769EA0(v51);
      v91 = (*(v50 + 48))(v90, 1, v49);
      if (v91 != 1)
      {
        sub_24E601704(v90, &qword_27F21E038, &unk_24F95B830);
      }

      goto LABEL_27;
    }

    v48 = MEMORY[0x277CE1048];
  }

  else
  {
    if (*(v34 + 96))
    {
      v48 = MEMORY[0x277CE1058];
    }

    else
    {
      v48 = MEMORY[0x277CE1050];
    }

    v49 = v112;
    v50 = v110;
    v51 = v101;
  }

  v70 = v98;
  (*(v50 + 104))(v98, *v48, v49);
  v71 = *(v50 + 32);
  v72 = v102;
  v71(v102, v70, v49);
  (*(v50 + 56))(v72, 0, 1, v49);
  v71(v51, v72, v49);
LABEL_27:
  v73 = swift_getKeyPath();
  v74 = v107;
  v75 = &v107[*(v116 + 36)];
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22DF30, &qword_24F958D50);
  (*(v50 + 32))(v75 + *(v76 + 28), v51, v49);
  *v75 = v73;
  *v74 = v46;
  *(v74 + 8) = 1;
  v77 = v108;
  sub_24E6009C8(v74, v108, &qword_27F21E148, &qword_24F95B9D0);
  sub_24E60169C(v77, v115, &qword_27F21E148, &qword_24F95B9D0);
  swift_storeEnumTagMultiPayload();
  sub_24E7EB4D4();
  sub_24E7EB724();
  v66 = v113;
  sub_24F924E28();
  v78 = v77;
  v79 = &qword_27F21E148;
  v80 = &qword_24F95B9D0;
LABEL_33:
  sub_24E601704(v78, v79, v80);
  sub_24E60169C(v66, v120, &qword_27F21E160, &qword_24F95B9E8);
  swift_storeEnumTagMultiPayload();
  sub_24E7EB448();
  sub_24F924E28();
  sub_24E601704(v66, &qword_27F21E160, &qword_24F95B9E8);
  return (*(v97 + 8))(v96, v35);
}

uint64_t sub_24E7E7C74(uint64_t a1)
{
  v2 = sub_24F926E78();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_24F924468();
}

uint64_t sub_24E7E7D40@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E030, &qword_24F95B828);
  MEMORY[0x28223BE20](v44);
  v3 = &v34 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E038, &unk_24F95B830);
  MEMORY[0x28223BE20](v4 - 8);
  v39 = &v34 - v5;
  v37 = sub_24F926E78();
  v41 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v42 = &v34 - v9;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF20, &qword_24F93CB70);
  MEMORY[0x28223BE20](v43);
  v38 = (&v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v40 = &v34 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v34 - v14;
  v16 = sub_24F91F4A8();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = v1;
  v20 = *v1;

  sub_24F91F488();

  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_24E601704(v15, &qword_27F228530, &unk_24F93C6E0);
LABEL_10:
    *v3 = 0;
    v3[8] = 1;
    swift_storeEnumTagMultiPayload();
    sub_24E62A864();
    return sub_24F924E28();
  }

  (*(v17 + 32))(v19, v15, v16);
  sub_24F91F438();
  if (!v21)
  {
    (*(v17 + 8))(v19, v16);
    goto LABEL_10;
  }

  v35 = sub_24F926E48();
  if (*(v20 + 96) > 1u)
  {
    v23 = v41;
    if (*(v20 + 96) != 2)
    {
      v33 = v39;
      v25 = v37;
      (*(v41 + 56))(v39, 1, 1, v37);
      type metadata accessor for SystemArtworkView(0);
      sub_24F769EA0(v42);
      if ((*(v23 + 48))(v33, 1, v25) != 1)
      {
        sub_24E601704(v33, &qword_27F21E038, &unk_24F95B830);
      }

      goto LABEL_14;
    }

    v22 = MEMORY[0x277CE1048];
  }

  else
  {
    if (*(v20 + 96))
    {
      v22 = MEMORY[0x277CE1058];
    }

    else
    {
      v22 = MEMORY[0x277CE1050];
    }

    v23 = v41;
  }

  v25 = v37;
  (*(v23 + 104))(v7, *v22, v37);
  v26 = *(v23 + 32);
  v27 = v39;
  v26(v39, v7, v25);
  (*(v23 + 56))(v27, 0, 1, v25);
  v26(v42, v27, v25);
LABEL_14:
  KeyPath = swift_getKeyPath();
  v29 = v38;
  v30 = (v38 + *(v43 + 36));
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22DF30, &qword_24F958D50);
  (*(v23 + 32))(v30 + *(v31 + 28), v42, v25);
  *v30 = KeyPath;
  *v29 = v35;
  v32 = v40;
  sub_24E6009C8(v29, v40, &qword_27F22DF20, &qword_24F93CB70);
  sub_24E60169C(v32, v3, &qword_27F22DF20, &qword_24F93CB70);
  swift_storeEnumTagMultiPayload();
  sub_24E62A864();
  sub_24F924E28();
  sub_24E601704(v32, &qword_27F22DF20, &qword_24F93CB70);
  return (*(v17 + 8))(v19, v16);
}

uint64_t sub_24E7E8360@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for RemoteArtworkView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E0C8, &qword_24F95B960);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = (&v30 - v12);
  v14 = v2[1];
  if (v14 <= 0.0 || (v15 = v2[2], v15 <= 0.0))
  {
    v18 = *(v10 + 56);

    return v18(a1, 1, 1, v11);
  }

  else
  {
    v31 = v4;
    v32 = v10;
    v33 = v9;
    v34 = a1;
    v17 = *(*v2 + 72);
    v16 = *(*v2 + 80);
    *&v36 = v17;
    *(&v36 + 1) = v16;
    if (Artwork.Crop.preferredContentMode.getter() == 1)
    {
      v30 = Artwork.config(_:mode:prefersLayeredImage:)(UIViewContentModeScaleAspectFit, 0, v14, v15);
    }

    else
    {
      *&v36 = v17;
      *(&v36 + 1) = v16;

      v30 = Artwork.config(using:cropCodeOverride:prefersLayeredImage:)(&v36, 0, v14, v15);
    }

    *v13 = sub_24F927618();
    v13[1] = v20;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E0D0, &qword_24F95B968);
    sub_24E7E8740(v2, v13 + *(v21 + 44));
    sub_24E7E9B64(v2, &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RemoteArtworkView);
    v22 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v23 = swift_allocObject();
    sub_24E7EAFA8(v7, v23 + v22, type metadata accessor for RemoteArtworkView);
    *(v23 + ((v22 + v6 + 7) & 0xFFFFFFFFFFFFFFF8)) = v30;
    v24 = (v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E0D8, &qword_24F95B970) + 36));
    *v24 = sub_24E7EB010;
    v24[1] = v23;
    v24[2] = 0;
    v24[3] = 0;
    v36 = *(v2 + *(v31 + 44));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E0E0, &qword_24F95B978);
    sub_24F926F38();
    v25 = v35;
    *(v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E0E8, &qword_24F95B980) + 36)) = v25;
    sub_24E7E9B64(v2, v7, type metadata accessor for RemoteArtworkView);
    v26 = swift_allocObject();
    sub_24E7EAFA8(v7, v26 + v22, type metadata accessor for RemoteArtworkView);
    v27 = v33;
    v28 = (v13 + *(v33 + 36));
    *v28 = 0;
    v28[1] = 0;
    v28[2] = sub_24E7EB0A0;
    v28[3] = v26;
    v29 = v34;
    sub_24E7EB100(v13, v34);
    return (*(v32 + 56))(v29, 0, 1, v27);
  }
}

uint64_t sub_24E7E8740@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E0F8, &qword_24F95B998);
  v56 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v55 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v53 = &v46 - v6;
  v7 = sub_24F926E08();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E100, &qword_24F95B9A0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v46 - v12;
  v14 = type metadata accessor for RemoteArtworkView(0);
  v15 = (a1 + v14[11]);
  v16 = *v15;
  v17 = v15[1];
  v67 = *v15;
  v68 = v17;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E0E0, &qword_24F95B978);
  sub_24F926F38();
  if (v62)
  {
    v46 = v17;
    v47 = v16;
    v48 = v3;
    v58 = v62;
    sub_24F926DD8();
    v18 = v14[6];
    v19 = sub_24F926E68();
    v20 = *(v19 - 8);
    (*(v20 + 16))(v13, a1 + v18, v19);
    (*(v20 + 56))(v13, 0, 1, v19);
    sub_24F926E38();

    sub_24E601704(v13, &qword_27F21E100, &qword_24F95B9A0);
    (*(v8 + 104))(v10, *MEMORY[0x277CE0FE0], v7);
    v61 = sub_24F926E88();

    v21 = (*(v8 + 8))(v10, v7);
    v23 = *(a1 + v14[8]);
    if (v23 == 2)
    {
      LOBYTE(v23) = sub_24E7E6C64(v21, v22);
    }

    sub_24F927618();
    sub_24F9238C8();
    v52 = v79;
    v24 = v80;
    v51 = v81;
    v25 = v82;
    v60 = v83;
    v59 = v84;

    LOBYTE(v67) = v24;
    LOBYTE(v62) = v25;
    v26 = v24;
    v58 = v25;
    v57 = v23;
    v49 = 1;
    v3 = v48;
    v16 = v47;
    v17 = v46;
  }

  else
  {
    v61 = 0;
    v52 = 0;
    v51 = 0;
    v60 = 0;
    v59 = 0;
    v49 = 0;
    v58 = 0;
    v26 = 0;
    v57 = 0;
  }

  v67 = v16;
  v68 = v17;
  sub_24F926F38();
  v27 = v62;
  if (v62)
  {
  }

  v28 = (a1 + v14[7]);
  if (*(v28 + 16))
  {
    v28 = a1 + 1;
    v29 = a1 + 2;
  }

  else
  {
    v29 = v28 + 1;
  }

  v30 = *v29;
  v31 = *v28;
  v76 = *a1;
  v77 = v31;
  v78 = v30;

  v32 = sub_24F927708();
  MEMORY[0x28223BE20](v32);
  *(&v46 - 16) = v27 != 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E108, &qword_24F95B9A8);
  sub_24E7EB33C();
  sub_24E7EB390();
  v33 = v53;
  sub_24F926B28();

  v34 = v56;
  v35 = *(v56 + 16);
  v36 = v55;
  v35(v55, v33, v3);
  *&v62 = v61;
  *(&v62 + 1) = v57;
  v37 = v52;
  *&v63 = v52;
  *(&v63 + 1) = v26;
  v50 = v26;
  v38 = v51;
  *&v64 = v51;
  *(&v64 + 1) = v58;
  *&v65 = v60;
  *(&v65 + 1) = v59;
  v39 = v49;
  v66 = v49;
  v40 = v54;
  *(v54 + 64) = v49;
  v41 = v65;
  *(v40 + 2) = v64;
  *(v40 + 3) = v41;
  v42 = v63;
  *v40 = v62;
  *(v40 + 1) = v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E130, &qword_24F95B9B8);
  v35(&v40[*(v43 + 48)], v36, v3);
  sub_24E60169C(&v62, &v67, &qword_27F21E138, &qword_24F95B9C0);
  v44 = *(v34 + 8);
  v44(v33, v3);
  v44(v36, v3);
  v67 = v61;
  v68 = v57;
  v69 = v37;
  v70 = v50;
  v71 = v38;
  v72 = v58;
  v73 = v60;
  v74 = v59;
  v75 = v39;
  return sub_24E601704(&v67, &qword_27F21E138, &qword_24F95B9C0);
}

uint64_t sub_24E7E8ED8@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = 1.0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E128, &qword_24F95B9B0);
  (*(*(v6 - 8) + 16))(a3, a1, v6);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E108, &qword_24F95B9A8);
  *(a3 + *(result + 36)) = v5;
  return result;
}

void sub_24E7E8F78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteArtworkView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v10[0] = *(a1 + *(v7 + 44));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E0E0, &qword_24F95B978);
  sub_24F926F38();
  if (v11)
  {
  }

  else if (*(a1 + *(v4 + 40)))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E0F0, &unk_24F95B988);
    sub_24F926F38();
    sub_24E7E9B64(a1, v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RemoteArtworkView);
    v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v9 = swift_allocObject();
    sub_24E7EAFA8(v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for RemoteArtworkView);
    ArtworkLoader.fetchArtwork(using:closestMatch:handlerKey:completionHandler:)(a2, 1, v10, sub_24E7EB29C, v9);

    sub_24E601704(v10, &qword_27F235830, &qword_24F93B8C0);
  }

  else
  {
    type metadata accessor for ArtworkLoader();
    sub_24E7E9A34(&qword_27F21E028, type metadata accessor for ArtworkLoader, &protocol conformance descriptor for ArtworkLoader);
    sub_24F9243C8();
    __break(1u);
  }
}

void *sub_24E7E91C0(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {
    v5 = result;
    type metadata accessor for RemoteArtworkView(0);
    v6 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E0E0, &qword_24F95B978);
    return sub_24F926F48();
  }

  return result;
}

uint64_t sub_24E7E9234(uint64_t a1)
{
  if (*(a1 + *(type metadata accessor for RemoteArtworkView(0) + 40)))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E0F0, &unk_24F95B988);
    sub_24F926F38();
    ArtworkLoader.forgetFetch(forHandlerKey:deprioritizingFetch:)(v2, 1);

    return sub_24E6585F8(v2);
  }

  else
  {
    type metadata accessor for ArtworkLoader();
    sub_24E7E9A34(&qword_27F21E028, type metadata accessor for ArtworkLoader, &protocol conformance descriptor for ArtworkLoader);
    result = sub_24F9243C8();
    __break(1u);
  }

  return result;
}

__n128 sub_24E7E9324@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214148, &qword_24F93C520);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v23[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v11 = &v23[-v10];
  sub_24E7E95E4(a1, v27);
  v25 = *&v27[0];
  v24 = BYTE8(v27[0]);
  v12 = BYTE9(v27[0]);
  _sSo6CGSizeV12GameStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
  v13 = sub_24F922348();
  v14 = *(v13 - 8);
  (*(v14 + 56))(v11, 0, 1, v13);
  v15 = *(a1 + 80);
  *&v27[0] = *(a1 + 72);
  *(&v27[0] + 1) = v15;
  v16 = Artwork.Crop.preferredContentMode.getter();
  sub_24E60169C(v11, v8, &qword_27F214148, &qword_24F93C520);
  v17 = (*(v14 + 48))(v8, 1, v13);
  if (v17 == 1)
  {
    sub_24E601704(v11, &qword_27F214148, &qword_24F93C520);
    sub_24E601704(v8, &qword_27F214148, &qword_24F93C520);
    v18 = 0;
  }

  else
  {
    sub_24F9222E8();
    v18 = v19;
    sub_24E601704(v11, &qword_27F214148, &qword_24F93C520);
    (*(v14 + 8))(v8, v13);
  }

  sub_24F927618();
  sub_24F9238C8();
  *&v26[6] = v27[0];
  *&v26[22] = v27[1];
  *&v26[38] = v27[2];
  *a2 = v25;
  *(a2 + 8) = v24;
  *(a2 + 9) = v12;
  *(a2 + 16) = v18;
  *(a2 + 24) = v17 == 1;
  *(a2 + 25) = v16 != 1;
  result = *v26;
  v21 = *&v26[16];
  v22 = *&v26[32];
  *(a2 + 72) = *&v26[46];
  *(a2 + 58) = v22;
  *(a2 + 42) = v21;
  *(a2 + 26) = result;
  return result;
}

void sub_24E7E95E4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 48);
  if (v3)
  {
    v4 = v3;
    sub_24F926BF8();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E220, &unk_24F95BAC0);
    sub_24E7EBBCC();
    sub_24F924E28();
  }

  else
  {
    sub_24F926C98();
    sub_24F925808();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E220, &unk_24F95BAC0);
    sub_24E7EBBCC();
    sub_24F924E28();
  }

  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 9) = v7;
}

void sub_24E7E9710(void **a1, void (*a2)(void **__return_ptr))
{
  a2(&v5);
  v3 = v5;
  v4 = *a1;
  if (v5)
  {

    v4 = v3;
  }

  *a1 = v4;
}

uint64_t sub_24E7E9768(uint64_t a1, uint64_t a2, double a3, double a4)
{
  result = 0;
  if (a3 > 0.0 && a4 > 0.0)
  {
    v9 = *(a1 + 72);
    v8 = *(a1 + 80);
    v11 = v9;
    v12 = v8;
    if (Artwork.Crop.preferredContentMode.getter() == 1)
    {
      return Artwork.config(_:mode:prefersLayeredImage:)(UIViewContentModeScaleAspectFit, 0, a3, a4);
    }

    else
    {
      v11 = v9;
      v12 = v8;

      v10 = Artwork.config(using:cropCodeOverride:prefersLayeredImage:)(&v11, 0, a3, a4);

      return v10;
    }
  }

  return result;
}

uint64_t sub_24E7E98CC()
{
  v1 = (type metadata accessor for SwiftUIArtworkView(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);

  v3 = v1[8];
  v4 = sub_24F926E68();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

double sub_24E7E99B4@<D0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SwiftUIArtworkView(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  *&result = sub_24E7E630C(v4, a1).n128_u64[0];
  return result;
}

uint64_t sub_24E7E9A34(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24E7E9A7C()
{
  result = qword_27F21DFA0;
  if (!qword_27F21DFA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21DF70, &qword_24F95B650);
    sub_24E7E9A34(&qword_27F21DF88, type metadata accessor for SwiftUIArtworkView.SizedContent, &unk_24F95B7A8);
    sub_24E602068(&qword_27F21DF90, &qword_27F21DF80, &qword_24F95B660, MEMORY[0x277CDF7D8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21DFA0);
  }

  return result;
}

uint64_t sub_24E7E9B64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E7E9BF4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_24E7E9C80(uint64_t a1)
{
  type metadata accessor for Artwork(319);
  if (v1 <= 0x3F)
  {
    sub_24E7E9FDC(319, &qword_27F21DF58, type metadata accessor for CGSize, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_24F926E68();
      if (v3 <= 0x3F)
      {
        sub_24E7EA96C(319, &qword_27F21DF60, MEMORY[0x277CDF400], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_24E7E9DA8(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DFC0, &unk_24F95B6B0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_24E7E9E78(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DFC0, &unk_24F95B6B0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24E7E9F28(uint64_t a1)
{
  type metadata accessor for Artwork(319);
  if (v1 <= 0x3F)
  {
    sub_24E7E9FDC(319, &qword_27F21DFD8, MEMORY[0x277CE1060], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24E7E9FDC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_24E7EA054()
{
  result = qword_27F21DFE0;
  if (!qword_27F21DFE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21DFE8, qword_24F95B708);
    sub_24E7E9A34(&qword_27F21DF98, type metadata accessor for SystemArtworkView, &unk_24F95B758);
    sub_24E7E9A7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21DFE0);
  }

  return result;
}

uint64_t sub_24E7EA1A4(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24F926E68();
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DFC0, &unk_24F95B6B0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_24E7EA2E8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_24F926E68();
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DFC0, &unk_24F95B6B0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_24E7EA418(uint64_t a1)
{
  type metadata accessor for Artwork(319);
  if (v1 <= 0x3F)
  {
    sub_24E7E9FDC(319, &qword_27F21DF58, type metadata accessor for CGSize, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_24F926E68();
      if (v3 <= 0x3F)
      {
        sub_24E7EA96C(319, &qword_27F21DF60, MEMORY[0x277CDF400], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_24E7E9FDC(319, &qword_27F21DFD8, MEMORY[0x277CE1060], MEMORY[0x277CDF468]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24F926E68();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_indexTm_0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_24F926E68();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24E7EA6E0(uint64_t a1)
{
  type metadata accessor for Artwork(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v2 <= 0x3F)
    {
      sub_24F926E68();
      if (v3 <= 0x3F)
      {
        sub_24E7E9FDC(319, &qword_27F21DF58, type metadata accessor for CGSize, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_24E7EA96C(319, &qword_27F21DF60, MEMORY[0x277CDF400], MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_24E7EA874(319);
            if (v6 <= 0x3F)
            {
              sub_24E7EA908(319);
              if (v7 <= 0x3F)
              {
                sub_24E7EA96C(319, &qword_27F21E070, MEMORY[0x277D84030], MEMORY[0x277CE10B8]);
                if (v8 <= 0x3F)
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

void sub_24E7EA874(uint64_t a1)
{
  if (!qword_27F21E060)
  {
    type metadata accessor for ArtworkLoader();
    sub_24E7E9A34(&qword_27F21E028, type metadata accessor for ArtworkLoader, &protocol conformance descriptor for ArtworkLoader);
    v1 = sub_24F9243E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F21E060);
    }
  }
}

void sub_24E7EA908(uint64_t a1)
{
  if (!qword_27F21E068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21B9C0, &qword_24F95B820);
    v1 = sub_24F926F68();
    if (!v2)
    {
      atomic_store(v1, &qword_27F21E068);
    }
  }
}

void sub_24E7EA96C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_24E7EA9C0()
{
  result = qword_27F21E078;
  if (!qword_27F21E078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21E008, &qword_24F95B810);
    sub_24E7EAA78();
    sub_24E602068(&qword_27F212A60, &qword_27F223340, &qword_24F939830, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E078);
  }

  return result;
}

unint64_t sub_24E7EAA78()
{
  result = qword_27F21E080;
  if (!qword_27F21E080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21E000, &qword_24F95B808);
    sub_24E7EAB04();
    sub_24E7EAD54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E080);
  }

  return result;
}

unint64_t sub_24E7EAB04()
{
  result = qword_27F21E088;
  if (!qword_27F21E088)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21DFF8, &qword_24F95B800);
    sub_24E7EAB90();
    sub_24E7EAD00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E088);
  }

  return result;
}

unint64_t sub_24E7EAB90()
{
  result = qword_27F21E090;
  if (!qword_27F21E090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21DFF0, &qword_24F95B7F8);
    sub_24E7EAC14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E090);
  }

  return result;
}

unint64_t sub_24E7EAC14()
{
  result = qword_27F21E098;
  if (!qword_27F21E098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21E0A0, &unk_24F95B8A8);
    sub_24E7E9A34(&qword_27F21E018, type metadata accessor for RemoteArtworkView, &unk_24F95B910);
    sub_24E7E9A34(&qword_27F21E020, type metadata accessor for BundleArtworkView, &unk_24F95B8C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E098);
  }

  return result;
}

unint64_t sub_24E7EAD00()
{
  result = qword_27F21E0A8;
  if (!qword_27F21E0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E0A8);
  }

  return result;
}

unint64_t sub_24E7EAD54()
{
  result = qword_27F21E0B0;
  if (!qword_27F21E0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E0B0);
  }

  return result;
}

unint64_t sub_24E7EADAC()
{
  result = qword_27F21E0B8;
  if (!qword_27F21E0B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21E0C0, &qword_24F95B8B8);
    sub_24E62A864();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E0B8);
  }

  return result;
}

uint64_t sub_24E7EAE70()
{
  v1 = (type metadata accessor for RemoteArtworkView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[8];
  v4 = sub_24F926E68();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  __swift_destroy_boxed_opaque_existential_1((v2 + v1[14]));

  return swift_deallocObject();
}

uint64_t sub_24E7EAFA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_24E7EB010()
{
  v1 = *(type metadata accessor for RemoteArtworkView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_24E7E8F78(v0 + v2, v3);
}

uint64_t sub_24E7EB0A0()
{
  v1 = *(type metadata accessor for RemoteArtworkView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_24E7E9234(v2);
}

uint64_t sub_24E7EB100(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E0C8, &qword_24F95B960);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_49Tm()
{
  v1 = (type metadata accessor for RemoteArtworkView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[8];
  v4 = sub_24F926E68();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  __swift_destroy_boxed_opaque_existential_1((v2 + v1[14]));

  return swift_deallocObject();
}

void *sub_24E7EB29C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(type metadata accessor for RemoteArtworkView(0) - 8);
  v10 = v4 + ((*(v9 + 80) + 16) & ~*(v9 + 80));

  return sub_24E7E91C0(a1, a2, a3, a4, v10);
}

unint64_t sub_24E7EB33C()
{
  result = qword_27F21E110;
  if (!qword_27F21E110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E110);
  }

  return result;
}

unint64_t sub_24E7EB390()
{
  result = qword_27F21E118;
  if (!qword_27F21E118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21E108, &qword_24F95B9A8);
    sub_24E602068(&qword_27F21E120, &qword_27F21E128, &qword_24F95B9B0, MEMORY[0x277CE0520]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E118);
  }

  return result;
}

unint64_t sub_24E7EB448()
{
  result = qword_27F21E168;
  if (!qword_27F21E168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21E160, &qword_24F95B9E8);
    sub_24E7EB4D4();
    sub_24E7EB724();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E168);
  }

  return result;
}

unint64_t sub_24E7EB4D4()
{
  result = qword_27F21E170;
  if (!qword_27F21E170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21E158, &qword_24F95B9E0);
    sub_24E7EB58C();
    sub_24E602068(&qword_27F22DF40, &unk_27F22DF30, &qword_24F958D50, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E170);
  }

  return result;
}

unint64_t sub_24E7EB58C()
{
  result = qword_27F21E178;
  if (!qword_27F21E178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21E180, &qword_24F95B9F0);
    sub_24E7EB618();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E178);
  }

  return result;
}

unint64_t sub_24E7EB618()
{
  result = qword_27F21E188;
  if (!qword_27F21E188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21E190, &qword_24F95B9F8);
    sub_24E7EB808(&qword_27F21E198, &qword_27F21E1A0, &qword_24F95BA00, sub_24E7EAD00);
    sub_24E7EB6D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E188);
  }

  return result;
}

unint64_t sub_24E7EB6D0()
{
  result = qword_27F21E1A8;
  if (!qword_27F21E1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E1A8);
  }

  return result;
}

unint64_t sub_24E7EB724()
{
  result = qword_27F21E1B0;
  if (!qword_27F21E1B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21E148, &qword_24F95B9D0);
    sub_24E7EB808(&qword_27F21E1B8, &qword_27F21E1C0, &qword_24F95BA08, sub_24E7EB6D0);
    sub_24E602068(&qword_27F22DF40, &unk_27F22DF30, &qword_24F958D50, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E1B0);
  }

  return result;
}

uint64_t sub_24E7EB808(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24E7EB8A0()
{
  result = qword_27F21E1C8;
  if (!qword_27F21E1C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21E1D0, &qword_24F95BA48);
    sub_24E7EB924();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E1C8);
  }

  return result;
}

unint64_t sub_24E7EB924()
{
  result = qword_27F21E1D8;
  if (!qword_27F21E1D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21E0C8, &qword_24F95B960);
    sub_24E7EB9B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E1D8);
  }

  return result;
}

unint64_t sub_24E7EB9B0()
{
  result = qword_27F21E1E0;
  if (!qword_27F21E1E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21E0E8, &qword_24F95B980);
    sub_24E7EBA68();
    sub_24E602068(&qword_27F21E200, &qword_27F21E208, &qword_24F95BA58, MEMORY[0x277CE0800]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E1E0);
  }

  return result;
}

unint64_t sub_24E7EBA68()
{
  result = qword_27F21E1E8;
  if (!qword_27F21E1E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21E0D8, &qword_24F95B970);
    sub_24E602068(&qword_27F21E1F0, &qword_27F21E1F8, &qword_24F95BA50, MEMORY[0x277CE11A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E1E8);
  }

  return result;
}

unint64_t sub_24E7EBB24()
{
  result = qword_27F21E210;
  if (!qword_27F21E210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21E218, &qword_24F95BA60);
    sub_24E7EB448();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E210);
  }

  return result;
}

unint64_t sub_24E7EBBCC()
{
  result = qword_27F21E228;
  if (!qword_27F21E228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21E220, &unk_24F95BAC0);
    sub_24E602068(&qword_27F21E230, &qword_27F21E238, &unk_24F9A9110, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E228);
  }

  return result;
}

unint64_t sub_24E7EBC88()
{
  result = qword_27F21E240;
  if (!qword_27F21E240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21E248, &qword_24F95BAD0);
    sub_24E7EBD14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E240);
  }

  return result;
}

unint64_t sub_24E7EBD14()
{
  result = qword_27F21E250;
  if (!qword_27F21E250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21E258, &qword_24F95BAD8);
    sub_24E7EBDA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E250);
  }

  return result;
}

unint64_t sub_24E7EBDA0()
{
  result = qword_27F21E260;
  if (!qword_27F21E260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21E268, &qword_24F95BAE0);
    sub_24E7EBE24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E260);
  }

  return result;
}

unint64_t sub_24E7EBE24()
{
  result = qword_27F21E270;
  if (!qword_27F21E270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21E278, &qword_24F95BAE8);
    sub_24E7EBBCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E270);
  }

  return result;
}

uint64_t sub_24E7EC070(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_24E7EC0B8(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

id sub_24E7EC110()
{
  v1 = *v0;
  v2 = v0[4];
  v3 = [objc_allocWithZone(MEMORY[0x277D757E0]) init];
  [v3 setNumberOfPages_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E290, &qword_24F95BC28);
  sub_24F925518();
  [v3 addTarget:v5 action:sel_updateCurrentPageWithSender_ forControlEvents:4096];

  [v3 setProgress_];
  return v3;
}

id sub_24E7EC1DC(void *a1)
{
  v3 = *v1;
  v4 = v1[3];
  v5 = v1[4];
  v9 = *(v1 + 1);
  v10 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F2180B8, &unk_24F947A88);
  MEMORY[0x25304CAF0](&v8, v6);
  [a1 setCurrentPage_];
  [a1 setNumberOfPages_];
  return [a1 setProgress_];
}

void *sub_24E7EC284@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = type metadata accessor for PageControl.Coordinator();
  v9 = objc_allocWithZone(v8);
  v10 = &v9[OBJC_IVAR____TtCV12GameStoreKit11PageControl11Coordinator_control];
  *v10 = v4;
  *(v10 + 1) = v3;
  *(v10 + 2) = v5;
  *(v10 + 3) = v6;
  *(v10 + 4) = v7;
  v13.receiver = v9;
  v13.super_class = v8;

  v11 = v7;
  result = objc_msgSendSuper2(&v13, sel_init);
  *a1 = result;
  return result;
}

uint64_t sub_24E7EC36C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24E7EC4B4();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_24E7EC3D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24E7EC4B4();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_24E7EC434(uint64_t a1)
{
  sub_24E7EC4B4();
  sub_24F924DC8();
  __break(1u);
}

unint64_t sub_24E7EC460()
{
  result = qword_27F21E288;
  if (!qword_27F21E288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E288);
  }

  return result;
}

unint64_t sub_24E7EC4B4()
{
  result = qword_27F21E298;
  if (!qword_27F21E298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E298);
  }

  return result;
}

uint64_t sub_24E7EC51C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8, &qword_24F95ADB0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for Game(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 2147483646)
  {
    v14 = *(a1 + a3[6] + 8);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    v15 = v14 - 1;
    if (v15 < 0)
    {
      v15 = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0, &unk_24F9549C0);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[7];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_24E7EC6CC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8, &qword_24F95ADB0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = type metadata accessor for Game(0);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[6] + 8) = a2;
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0, &unk_24F9549C0);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[7];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t type metadata accessor for LeaderboardsListPageIntent(uint64_t a1)
{
  result = qword_27F21E2A0;
  if (!qword_27F21E2A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E7EC8A8(uint64_t a1)
{
  sub_24E7EC9EC(319, &qword_27F21D948, type metadata accessor for Page.Background);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Game(319);
    if (v2 <= 0x3F)
    {
      sub_24E7EC99C();
      if (v3 <= 0x3F)
      {
        sub_24E7EC9EC(319, &qword_27F214988, type metadata accessor for Player);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24E7EC99C()
{
  if (!qword_27F21E2B0)
  {
    v0 = sub_24F92C4A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F21E2B0);
    }
  }
}

void sub_24E7EC9EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24F92C4A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_24E7ECA40@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08, &unk_24F93A2A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F942000;
  *(inited + 32) = 0x756F72676B636162;
  *(inited + 40) = 0xEA0000000000646ELL;
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8, &qword_24F95ADB0);
  *(inited + 80) = sub_24E7D17FC();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  v25 = v1;
  sub_24E60169C(v1, boxed_opaque_existential_1, &qword_27F21D8F8, &qword_24F95ADB0);
  *(inited + 88) = 1701667175;
  *(inited + 96) = 0xE400000000000000;
  v4 = type metadata accessor for LeaderboardsListPageIntent(0);
  v5 = v4[5];
  *(inited + 128) = type metadata accessor for Game(0);
  *(inited + 136) = sub_24E7EDC68(&qword_27F217960, type metadata accessor for Game, &protocol conformance descriptor for Game);
  v6 = __swift_allocate_boxed_opaque_existential_1((inited + 104));
  sub_24E7EDA28(v1 + v5, v6, type metadata accessor for Game);
  strcpy((inited + 144), "leaderboardSet");
  *(inited + 159) = -18;
  v7 = (v1 + v4[6]);
  v9 = *v7;
  v8 = v7[1];
  v11 = v7[2];
  v10 = v7[3];
  v12 = v7[4];
  v13 = v7[5];
  v23 = *v7;
  v24 = v13;
  v14 = v7[6];
  *(inited + 184) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E2E0, &qword_24F95BD40);
  *(inited + 192) = sub_24E7EDA90();
  v15 = swift_allocObject();
  *(inited + 160) = v15;
  v15[2] = v9;
  v15[3] = v8;
  v15[4] = v11;
  v15[5] = v10;
  v15[6] = v12;
  v15[7] = v13;
  v15[8] = v14;
  *(inited + 200) = 0x726579616C70;
  *(inited + 208) = 0xE600000000000000;
  v16 = v4[7];
  *(inited + 240) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0, &unk_24F9549C0);
  *(inited + 248) = sub_24E7EDBB4();
  v17 = __swift_allocate_boxed_opaque_existential_1((inited + 216));
  sub_24E60169C(v25 + v16, v17, &unk_27F23E1F0, &unk_24F9549C0);
  *(inited + 256) = 0xD000000000000010;
  *(inited + 264) = 0x800000024FA46670;
  v18 = *(v25 + v4[8]);
  v19 = MEMORY[0x277D22598];
  *(inited + 296) = MEMORY[0x277D839B0];
  *(inited + 304) = v19;
  *(inited + 272) = v18;
  sub_24E7ED984(v23, v8, v11, v10, v12, v24);
  v20 = sub_24E607D0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18, &unk_24F93A2B0);
  swift_arrayDestroy();
  v21 = sub_24E80FFAC(v20);

  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v21;
  return result;
}

uint64_t sub_24E7ECD74(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E2D0, &unk_24F95BD30);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E7ED87C();
  sub_24F92D128();
  LOBYTE(v19) = 0;
  type metadata accessor for Page.Background(0);
  sub_24E7EDC68(&qword_27F21D920, type metadata accessor for Page.Background, &protocol conformance descriptor for Page.Background);
  sub_24F92CCF8();
  if (!v2)
  {
    v9 = type metadata accessor for LeaderboardsListPageIntent(0);
    LOBYTE(v19) = 1;
    type metadata accessor for Game(0);
    sub_24E7EDC68(&qword_27F214950, type metadata accessor for Game, &protocol conformance descriptor for Game);
    sub_24F92CD48();
    v10 = (v3 + *(v9 + 24));
    v11 = v10[1];
    v12 = v10[2];
    v13 = v10[3];
    v14 = v10[4];
    v15 = v10[5];
    v16 = v10[6];
    v19 = *v10;
    v20 = v11;
    v21 = v12;
    v22 = v13;
    v23 = v14;
    v24 = v15;
    v25 = v16;
    v18[7] = 2;
    sub_24E7ED984(v19, v11, v12, v13, v14, v15);
    sub_24E7ED9D4();
    sub_24F92CCF8();
    sub_24E687F7C(v19, v20, v21, v22, v23, v24);
    LOBYTE(v19) = 3;
    type metadata accessor for Player(0);
    sub_24E7EDC68(&qword_27F213E28, type metadata accessor for Player, &protocol conformance descriptor for Player);
    sub_24F92CCF8();
    LOBYTE(v19) = 4;
    sub_24F92CD18();
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_24E7ED090(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0, &unk_24F9549C0);
  MEMORY[0x28223BE20](v3 - 8);
  v28 = &v26 - v4;
  v5 = type metadata accessor for Game(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8, &qword_24F95ADB0);
  MEMORY[0x28223BE20](v8 - 8);
  v29 = &v26 - v9;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E2B8, &qword_24F95BD28);
  v30 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v11 = &v26 - v10;
  v12 = type metadata accessor for LeaderboardsListPageIntent(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E7ED87C();
  v31 = v11;
  v15 = v33;
  sub_24F92D108();
  if (v15)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v16 = v7;
    v17 = v14;
    type metadata accessor for Page.Background(0);
    LOBYTE(v34) = 0;
    sub_24E7EDC68(&qword_27F21D930, type metadata accessor for Page.Background, &protocol conformance descriptor for Page.Background);
    v18 = v29;
    v19 = v32;
    v20 = v31;
    sub_24F92CC18();
    sub_24E6009C8(v18, v17, &qword_27F21D8F8, &qword_24F95ADB0);
    LOBYTE(v34) = 1;
    sub_24E7EDC68(&qword_27F214968, type metadata accessor for Game, &protocol conformance descriptor for Game);
    sub_24F92CC68();
    sub_24E636644(v16, v17 + v12[5]);
    v38 = 2;
    sub_24E7ED8D0();
    sub_24F92CC18();
    v21 = v30;
    v33 = 0;
    v22 = v37;
    v23 = v17 + v12[6];
    v24 = v35;
    *v23 = v34;
    *(v23 + 16) = v24;
    *(v23 + 32) = v36;
    *(v23 + 48) = v22;
    type metadata accessor for Player(0);
    LOBYTE(v34) = 3;
    sub_24E7EDC68(&qword_27F213E38, type metadata accessor for Player, &protocol conformance descriptor for Player);
    v25 = v28;
    sub_24F92CC18();
    sub_24E6009C8(v25, v17 + v12[7], &unk_27F23E1F0, &unk_24F9549C0);
    LOBYTE(v34) = 4;
    LOBYTE(v25) = sub_24F92CC38();
    (*(v21 + 8))(v20, v19);
    *(v17 + v12[8]) = v25 & 1;
    sub_24E7EDA28(v17, v27, type metadata accessor for LeaderboardsListPageIntent);
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_24E7ED924(v17, type metadata accessor for LeaderboardsListPageIntent);
  }
}

uint64_t sub_24E7ED6D0()
{
  v1 = *v0;
  v2 = 0x756F72676B636162;
  v3 = 0x6F6272656461656CLL;
  v4 = 0x726579616C70;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1701667175;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24E7ED774@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24E7EDDC8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24E7ED79C(uint64_t a1)
{
  v2 = sub_24E7ED87C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E7ED7D8(uint64_t a1)
{
  v2 = sub_24E7ED87C();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24E7ED87C()
{
  result = qword_27F21E2C0;
  if (!qword_27F21E2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E2C0);
  }

  return result;
}

unint64_t sub_24E7ED8D0()
{
  result = qword_27F21E2C8;
  if (!qword_27F21E2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E2C8);
  }

  return result;
}

uint64_t sub_24E7ED924(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_24E7ED984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_24E7ED9D4()
{
  result = qword_27F21E2D8;
  if (!qword_27F21E2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E2D8);
  }

  return result;
}

uint64_t sub_24E7EDA28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_24E7EDA90()
{
  result = qword_27F21E2E8;
  if (!qword_27F21E2E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21E2E0, &qword_24F95BD40);
    sub_24E7EDB14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E2E8);
  }

  return result;
}

unint64_t sub_24E7EDB14()
{
  result = qword_27F21E2F0;
  if (!qword_27F21E2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E2F0);
  }

  return result;
}

uint64_t sub_24E7EDB68()
{
  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

unint64_t sub_24E7EDBB4()
{
  result = qword_27F21E2F8;
  if (!qword_27F21E2F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F23E1F0, &unk_24F9549C0);
    sub_24E7EDC68(&qword_27F215388, type metadata accessor for Player, &protocol conformance descriptor for Player);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E2F8);
  }

  return result;
}

uint64_t sub_24E7EDC68(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24E7EDCC4()
{
  result = qword_27F21E300;
  if (!qword_27F21E300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E300);
  }

  return result;
}

unint64_t sub_24E7EDD1C()
{
  result = qword_27F21E308;
  if (!qword_27F21E308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E308);
  }

  return result;
}

unint64_t sub_24E7EDD74()
{
  result = qword_27F21E310;
  if (!qword_27F21E310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E310);
  }

  return result;
}

uint64_t sub_24E7EDDC8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x756F72676B636162 && a2 == 0xEA0000000000646ELL;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667175 && a2 == 0xE400000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F6272656461656CLL && a2 == 0xEE00746553647261 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x726579616C70 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA46670 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

id sub_24E7EDF8C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  MEMORY[0x28223BE20](v6 - 8);
  v74 = &v72 - v7;
  v8 = sub_24F9289E8();
  v9 = *(v8 - 8);
  v76 = v8;
  v77 = v9;
  MEMORY[0x28223BE20](v8);
  v73 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v72 - v12;
  MEMORY[0x28223BE20](v14);
  v78 = &v72 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v72 - v17;
  v19 = a1;
  v20 = [v19 bundleIdentifier];
  v21 = sub_24F92B0D8();
  v23 = v22;

  *a3 = v21;
  *(a3 + 8) = v23;
  v24 = [v19 adamID];
  v25 = [v24 stringValue];

  v26 = sub_24F92B0D8();
  v28 = v27;

  *(a3 + 16) = v26;
  *(a3 + 24) = v28;
  v29 = [v19 name];
  v30 = sub_24F92B0D8();
  v32 = v31;

  *(a3 + 32) = v30;
  *(a3 + 40) = v32;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  v75 = a2;
  sub_24E60169C(a2, v18, &unk_27F22EC30, &qword_24F939880);
  v33 = sub_24F91F648();
  v34 = *(v33 - 8);
  v35 = (*(v34 + 48))(v18, 1, v33);
  if (v35 == 1)
  {
    sub_24E601704(v18, &unk_27F22EC30, &qword_24F939880);
    v36 = 0.0;
  }

  else
  {
    sub_24F91F5E8();
    v36 = v37 * 1000.0;
    (*(v34 + 8))(v18, v33);
  }

  *(a3 + 64) = v36;
  *(a3 + 72) = v35 == 1;
  v38 = [v19 compatiblePlatforms];
  v39 = sub_24F92BAA8();

  *&v80 = 0x736F63616DLL;
  *(&v80 + 1) = 0xE500000000000000;
  sub_24F92C7F8();
  LOBYTE(v38) = sub_24F4D3620(&v82, v39);
  sub_24E6585F8(&v82);
  if (v38)
  {
    v40 = 2;
  }

  else
  {
    v40 = 0;
  }

  *&v80 = 7565161;
  *(&v80 + 1) = 0xE300000000000000;
  sub_24F92C7F8();
  v41 = sub_24F4D3620(&v82, v39);
  sub_24E6585F8(&v82);
  v42 = v40 & 0xFFFFFFFFFFFFFFFELL | v41 & 1;
  *&v80 = 0x6F7674656C707061;
  *(&v80 + 1) = 0xE900000000000073;
  sub_24F92C7F8();
  v43 = sub_24F4D3620(&v82, v39);
  sub_24E6585F8(&v82);
  if (v43)
  {
    v42 |= 4uLL;
  }

  *&v80 = 1936683640;
  *(&v80 + 1) = 0xE400000000000000;
  sub_24F92C7F8();
  v44 = sub_24F4D3620(&v82, v39);

  sub_24E6585F8(&v82);
  v45 = v42 | 8;
  if ((v44 & 1) == 0)
  {
    v45 = v42;
  }

  *(a3 + 96) = v45;
  *(a3 + 105) = [v19 isArcadeGame];
  result = [objc_opt_self() defaultWorkspace];
  v47 = v77;
  v48 = v78;
  if (result)
  {
    v49 = result;
    v50 = [v19 bundleIdentifier];

    v51 = v76;
    if (!v50)
    {
      sub_24F92B0D8();
      v50 = sub_24F92B098();
    }

    v52 = [v49 applicationIsInstalled_];

    *(a3 + 104) = v52;
    *(a3 + 106) = [v19 supportsAchievements];
    *(a3 + 107) = 0;
    *(a3 + 109) = [v19 supportsLeaderboardSets];
    *(a3 + 110) = [v19 supportsLeaderboards];
    sub_24F9289D8();
    v53 = [v19 artwork];
    if (v53)
    {
      v54 = v53;
      sub_24F3D7378(v54);

      sub_24E601704(v75, &unk_27F22EC30, &qword_24F939880);
      (*(v47 + 8))(v48, v51);
      (*(v47 + 32))(v48, v13, v51);
    }

    else
    {
      v55 = [v19 icons];
      if (v55)
      {
        v56 = v55;
        v57 = sub_24F92AE38();

        strcpy(v79, "template");
        BYTE1(v79[2]) = 0;
        HIWORD(v79[2]) = 0;
        v79[3] = -402653184;
        sub_24F92C7F8();
        if (*(v57 + 16) && (v58 = sub_24E76D934(&v82), (v59 & 1) != 0))
        {
          sub_24E643A9C(*(v57 + 56) + 32 * v58, &v80);
          sub_24E6585F8(&v82);

          if (*(&v81 + 1))
          {
            if (swift_dynamicCast())
            {
              strcpy(&v80, "{w}x{h}bb.png");
              HIWORD(v80) = -4864;
              strcpy(v79, "{w}x{h}{c}.{f}");
              HIBYTE(v79[3]) = -18;
              sub_24E600AEC();
              v60 = sub_24F92C568();
              v62 = v61;

              v63 = HIBYTE(v62) & 0xF;
              if ((v62 & 0x2000000000000000) == 0)
              {
                v63 = v60 & 0xFFFFFFFFFFFFLL;
              }

              if (v63)
              {
                sub_24F3E5448(MEMORY[0x277D84F90]);
                v64 = v74;
                sub_24F928948();

                sub_24E601704(v75, &unk_27F22EC30, &qword_24F939880);
                (*(v47 + 8))(v48, v51);
                (*(v47 + 56))(v64, 0, 1, v51);
                v65 = v73;
                (*(v47 + 32))(v73, v64, v51);
              }

              else
              {

                v71 = v74;
                (*(v47 + 56))(v74, 1, 1, v51);
                v65 = v73;
                sub_24F9289D8();

                sub_24E601704(v75, &unk_27F22EC30, &qword_24F939880);
                (*(v47 + 8))(v48, v51);
                if ((*(v47 + 48))(v71, 1, v51) != 1)
                {
                  sub_24E601704(v71, &qword_27F213FB0, &qword_24F93E6B0);
                }
              }

              (*(v47 + 32))(v48, v65, v51);
            }

            else
            {
              sub_24E601704(v75, &unk_27F22EC30, &qword_24F939880);
            }

            goto LABEL_29;
          }
        }

        else
        {

          sub_24E6585F8(&v82);
          v80 = 0u;
          v81 = 0u;
        }

        sub_24E601704(v75, &unk_27F22EC30, &qword_24F939880);
      }

      else
      {

        sub_24E601704(v75, &unk_27F22EC30, &qword_24F939880);
        v80 = 0u;
        v81 = 0u;
      }

      sub_24E601704(&v80, &qword_27F2129B0, &unk_24F945320);
    }

LABEL_29:
    v66 = type metadata accessor for Game(0);
    (*(v47 + 32))(a3 + v66[18], v48, v51);
    (*(v47 + 56))(a3 + v66[19], 1, 1, v51);
    *(a3 + 80) = 0;
    *(a3 + 88) = 1;
    v67 = (a3 + v66[20]);
    *v67 = 0;
    v67[1] = 0;
    v68 = v66[21];
    v69 = sub_24F920818();
    result = (*(*(v69 - 8) + 56))(a3 + v68, 1, 1, v69);
    v70 = (a3 + v66[22]);
    *v70 = 0;
    v70[1] = 0;
    return result;
  }

  __break(1u);
  return result;
}

Swift::String __swiftcall Game.displayName()()
{
  if (v0[7])
  {
    v1 = v0[6];
    v2 = v0[7];
  }

  else
  {
    v1 = v0[4];
    v2 = v0[5];
  }

  v3 = v1;
  v4 = v2;
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

uint64_t Game.bundleID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Game.adamID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Game.name.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t Game.gamesDisplayName.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t Game.gameIcon.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Game(0) + 72);
  v4 = sub_24F9289E8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for Game(uint64_t a1)
{
  result = qword_27F21E380;
  if (!qword_27F21E380)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Game.rawMediaAPIResponse.getter()
{
  v1 = *(v0 + *(type metadata accessor for Game(0) + 80));

  return v1;
}

uint64_t Game.miniGamesDeepLink.getter()
{
  v1 = *(v0 + *(type metadata accessor for Game(0) + 88));

  return v1;
}

uint64_t sub_24E7EEEDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v274 = a2;
  v275 = a3;
  v250 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219030, &qword_24F94BAE8);
  MEMORY[0x28223BE20](v5 - 8);
  v254 = &v223 - v6;
  v247 = sub_24F921118();
  v246 = *(v247 - 8);
  MEMORY[0x28223BE20](v247);
  v245 = &v223 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v244 = &v223 - v9;
  v243 = sub_24F920788();
  v242 = *(v243 - 8);
  MEMORY[0x28223BE20](v243);
  v241 = &v223 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E3B0, &unk_24F95CD60);
  MEMORY[0x28223BE20](v11 - 8);
  v240 = &v223 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v239 = &v223 - v14;
  MEMORY[0x28223BE20](v15);
  v238 = &v223 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E3B8, &qword_24F95C0C8);
  MEMORY[0x28223BE20](v17 - 8);
  v233 = &v223 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v19 - 8);
  v249 = &v223 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v248 = &v223 - v22;
  MEMORY[0x28223BE20](v23);
  v252 = &v223 - v24;
  MEMORY[0x28223BE20](v25);
  v255 = &v223 - v26;
  v261 = sub_24F920818();
  v260 = *(v261 - 8);
  MEMORY[0x28223BE20](v261);
  v265 = &v223 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v264 = sub_24F9202F8();
  v262 = *(v264 - 8);
  MEMORY[0x28223BE20](v264);
  v259 = &v223 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v258 = &v223 - v30;
  v257 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C290, &qword_24F966880);
  v237 = *(v257 - 8);
  MEMORY[0x28223BE20](v257);
  v236 = &v223 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E3C0, &unk_24F98F830);
  MEMORY[0x28223BE20](v32 - 8);
  v263 = &v223 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v256 = &v223 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  MEMORY[0x28223BE20](v36 - 8);
  v253 = &v223 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v251 = &v223 - v39;
  MEMORY[0x28223BE20](v40);
  v42 = &v223 - v41;
  MEMORY[0x28223BE20](v43);
  v266 = &v223 - v44;
  v270 = sub_24F9289E8();
  v45 = *(v270 - 8);
  MEMORY[0x28223BE20](v270);
  v47 = &v223 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v50 = &v223 - v49;
  MEMORY[0x28223BE20](v51);
  v53 = &v223 - v52;
  v54 = sub_24F920258();
  v55 = *(v54 - 8);
  v272 = v54;
  v273 = v55;
  MEMORY[0x28223BE20](v54);
  v57 = &v223 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v58);
  v60 = &v223 - v59;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BCB8, &qword_24F953700);
  v268 = *(v61 - 8);
  v269 = v61;
  MEMORY[0x28223BE20](v61);
  v63 = &v223 - v62;
  sub_24F920318();
  v271 = v60;
  sub_24F920268();
  v64 = v267;
  v65 = sub_24F920F08();
  if (v64)
  {

    sub_24E601704(v274, &qword_27F21E3B0, &unk_24F95CD60);
    v67 = sub_24F920358();
    (*(*(v67 - 8) + 8))(a1, v67);
LABEL_41:
    (*(v273 + 8))(v271, v272);
    return (*(v268 + 8))(v63, v269);
  }

  v230 = v42;
  v224 = v50;
  v226 = v65;
  v232 = v66;
  v234 = a1;
  v228 = v57;
  v229 = v47;
  sub_24F9289D8();
  v68 = v45 + 56;
  v225 = *(v45 + 56);
  v225(v266, 1, 1, v270);
  v69 = sub_24F920ED8();
  v267 = v53;
  v235 = v45;
  v227 = v69;
  v231 = v70;
  v71 = v262;
  v72 = v259;
  v73 = v256;
  v74 = v234;
  MEMORY[0x253045CB0]();
  v75 = v230;
  sub_24F3D6C4C(v73, v230);
  v256 = v63;
  v76 = v235;
  v77 = v270;
  v78 = (*(v235 + 48))(v75, 1, v270);
  v223 = v68;
  if (v78 == 1)
  {
    sub_24E601704(v75, &qword_27F213FB0, &qword_24F93E6B0);
    if (qword_27F211400 != -1)
    {
      swift_once();
    }

    v79 = sub_24F9220D8();
    __swift_project_value_buffer(v79, qword_27F39E850);
    v80 = v232;

    v81 = sub_24F9220B8();
    v82 = sub_24F92BDB8();

    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v277 = v84;
      *v83 = 136315138;
      *(v83 + 4) = sub_24E7620D4(v226, v80, &v277);
      _os_log_impl(&dword_24E5DD000, v81, v82, "Icon Artwork is nil for a game with bundleID: %s", v83, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v84);
      MEMORY[0x2530542D0](v84, -1, -1);
      MEMORY[0x2530542D0](v83, -1, -1);
    }

    v85 = v223;
  }

  else
  {
    v86 = v71;
    v87 = v74;
    v88 = v72;
    v89 = v75;
    v90 = v267;
    (*(v76 + 8))(v267, v77);
    v91 = v89;
    v72 = v88;
    v74 = v87;
    v71 = v86;
    v85 = v223;
    (*(v76 + 32))(v90, v91, v77);
  }

  v92 = v257;
  type metadata accessor for ASKBagContract(0);
  sub_24F928EF8();
  v93 = v263;
  if (v277)
  {
    v257 = v277;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215720, &qword_24F940B20);
    sub_24F928FD8();
    sub_24F92A758();
    v94 = sub_24F927548();
    v95 = v264;
    if (v94)
    {
      v96 = v71;
      v97 = v74;
      v98 = v72;
      if (qword_27F210C08 != -1)
      {
        swift_once();
      }

      v99 = v236;
      sub_24F92A3B8();
      sub_24F92A408();
      (*(v237 + 8))(v99, v92);
      v72 = v98;
      v74 = v97;
      v71 = v96;
      v95 = v264;
      if (v276)
      {
        goto LABEL_16;
      }
    }

    v100 = v278;
    v101 = v279;
    __swift_project_boxed_opaque_existential_1(&v277, v278);
    LOBYTE(v276) = 31;
    v102 = v100;
    v93 = v263;
    if ((*(v101 + 8))(&v276, v102, v101))
    {
LABEL_16:
      sub_24F920298();
      v103 = v251;
      sub_24F3D6C4C(v93, v251);
      v109 = v235;
      v110 = v270;
      v111 = (*(v235 + 48))(v103, 1, v270);
      v263 = 0;
      if (v111 != 1)
      {
        v210 = v266;
        sub_24E601704(v266, &qword_27F213FB0, &qword_24F93E6B0);

        v211 = *(v109 + 32);
        v212 = v95;
        v213 = v224;
        v211(v224, v103, v110);
        v214 = v213;
        v95 = v212;
        v211(v210, v214, v110);
        v225(v210, 0, 1, v110);
        v108 = v258;
        v74 = v234;
        v71 = v262;
        goto LABEL_30;
      }

      sub_24E601704(v103, &qword_27F213FB0, &qword_24F93E6B0);
      v112 = v278;
      v113 = v279;
      __swift_project_boxed_opaque_existential_1(&v277, v278);
      LOBYTE(v276) = 32;
      if ((*(v113 + 8))(&v276, v112, v113))
      {
        v223 = v85;
        v71 = v262;
        if (qword_27F211400 != -1)
        {
          swift_once();
        }

        v114 = sub_24F9220D8();
        __swift_project_value_buffer(v114, qword_27F39E850);
        v115 = v232;

        v116 = sub_24F9220B8();
        v117 = sub_24F92BD98();

        if (os_log_type_enabled(v116, v117))
        {
          v118 = swift_slowAlloc();
          LODWORD(v251) = v117;
          v119 = v118;
          v120 = swift_slowAlloc();
          v276 = v120;
          *v119 = 136315138;
          v121 = sub_24E7620D4(v226, v115, &v276);

          *(v119 + 4) = v121;
          v72 = v259;
          v122 = v270;
          v123 = v235;
          v124 = v116;
          v125 = v266;
          v95 = v264;
          _os_log_impl(&dword_24E5DD000, v124, v251, "forcePrerenderedIcons is enabled, using existing Game Icon artwork for Prerendered Icon Artwork for a game with bundleID: %s", v119, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v120);
          MEMORY[0x2530542D0](v120, -1, -1);
          MEMORY[0x2530542D0](v119, -1, -1);

          sub_24E601704(v125, &qword_27F213FB0, &qword_24F93E6B0);
          v108 = v258;
        }

        else
        {

          v125 = v266;
          sub_24E601704(v266, &qword_27F213FB0, &qword_24F93E6B0);
          v122 = v270;
          v108 = v258;
          v123 = v235;
        }

        (*(v123 + 16))(v125, v267, v122);
        v225(v125, 0, 1, v122);
        v74 = v234;
        goto LABEL_30;
      }

      v74 = v234;
      v71 = v262;
      if (qword_27F211400 != -1)
      {
        swift_once();
      }

      v215 = sub_24F9220D8();
      __swift_project_value_buffer(v215, qword_27F39E850);
      v216 = v232;

      v217 = sub_24F9220B8();
      v218 = sub_24F92BDA8();

      if (os_log_type_enabled(v217, v218))
      {
        v219 = swift_slowAlloc();
        LODWORD(v251) = v218;
        v220 = v219;
        v221 = swift_slowAlloc();
        v276 = v221;
        *v220 = 136315138;
        v222 = sub_24E7620D4(v226, v216, &v276);

        *(v220 + 4) = v222;
        v72 = v259;
        v95 = v264;
        _os_log_impl(&dword_24E5DD000, v217, v251, "Prerendered Icon Artwork is nil for a game with bundleID: %s", v220, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v221);
        MEMORY[0x2530542D0](v221, -1, -1);
        MEMORY[0x2530542D0](v220, -1, -1);
      }

      else
      {
      }
    }

    else
    {
      v263 = 0;
    }

    v108 = v258;
LABEL_30:
    __swift_destroy_boxed_opaque_existential_1(&v277);
    goto LABEL_31;
  }

  v95 = v264;
  if (qword_27F211400 != -1)
  {
    swift_once();
  }

  v263 = 0;
  v104 = sub_24F9220D8();
  __swift_project_value_buffer(v104, qword_27F39E850);
  v105 = sub_24F9220B8();
  v106 = sub_24F92BD98();
  if (os_log_type_enabled(v105, v106))
  {
    v107 = swift_slowAlloc();
    *v107 = 0;
    _os_log_impl(&dword_24E5DD000, v105, v106, "Game.init(): ASKBagContract is not available in the object graph", v107, 2u);
    MEMORY[0x2530542D0](v107, -1, -1);
  }

  v108 = v258;
LABEL_31:
  sub_24F920308();
  sub_24F920238();
  sub_24E7F4B74(&qword_27F21E3C8, MEMORY[0x277D0C9F8], MEMORY[0x277D0CA08]);
  v126 = sub_24F92C678();
  v127 = *(v71 + 8);
  v127(v72, v95);
  v128 = v74;
  if (v126)
  {
    v129 = 2;
  }

  else
  {
    v129 = 0;
  }

  sub_24F920228();
  v130 = sub_24F92C678();
  v127(v72, v95);
  v131 = v129 & 0xFFFFFFFFFFFFFFFELL | v130 & 1;
  sub_24F920218();
  v132 = sub_24F92C678();
  v127(v72, v95);
  if (v132)
  {
    v131 |= 4uLL;
  }

  sub_24F9202E8();
  v133 = sub_24F92C678();
  v127(v72, v95);
  if (v133)
  {
    v134 = v131 | 8;
  }

  else
  {
    v134 = v131;
  }

  v127(v108, v95);
  v135 = sub_24F9201F8();
  v137 = v136;
  v138 = v265;
  sub_24F920278();
  v63 = v256;
  v139 = v263;
  v140 = sub_24F920F08();
  if (v139)
  {

    sub_24E601704(v274, &qword_27F21E3B0, &unk_24F95CD60);
    v142 = sub_24F920358();
    (*(*(v142 - 8) + 8))(v128, v142);
    (*(v260 + 8))(v138, v261);
    sub_24E601704(v266, &qword_27F213FB0, &qword_24F93E6B0);
    (*(v235 + 8))(v267, v270);
    goto LABEL_41;
  }

  v237 = v141;
  v251 = v140;
  v259 = v135;
  v262 = v137;
  v263 = 0;
  v236 = sub_24F920338();
  v232 = v144;
  v230 = sub_24F920348();
  v226 = v145;
  v146 = v238;
  sub_24E60169C(v274, v238, &qword_27F21E3B0, &unk_24F95CD60);
  v147 = sub_24F9207B8();
  v148 = *(v147 - 8);
  v149 = *(v148 + 48);
  v150 = v149(v146, 1, v147);
  v258 = v134;
  if (v150 == 1)
  {
    v151 = &qword_27F21E3B0;
    v152 = &unk_24F95CD60;
    v153 = v146;
  }

  else
  {
    v154 = v233;
    sub_24F920758();
    v155 = v154;
    (*(v148 + 8))(v146, v147);
    v156 = sub_24F920748();
    v157 = *(v156 - 8);
    if ((*(v157 + 48))(v155, 1, v156) != 1)
    {
      sub_24F920738();
      (*(v157 + 8))(v155, v156);
      v158 = 0;
      goto LABEL_48;
    }

    v151 = &qword_27F21E3B8;
    v152 = &qword_24F95C0C8;
    v153 = v155;
  }

  sub_24E601704(v153, v151, v152);
  v158 = 1;
LABEL_48:
  v159 = sub_24F91F648();
  v264 = *(v159 - 8);
  v160 = *(v264 + 56);
  v160(v255, v158, 1, v159);
  v161 = v274;
  v162 = v239;
  sub_24E60169C(v274, v239, &qword_27F21E3B0, &unk_24F95CD60);
  v163 = v149(v162, 1, v147);
  v257 = v159;
  if (v163 == 1)
  {
    sub_24E601704(v162, &qword_27F21E3B0, &unk_24F95CD60);
    v160(v252, 1, 1, v159);
    v164 = v250;
    v165 = v243;
  }

  else
  {
    v166 = v241;
    sub_24F920798();
    (*(v148 + 8))(v162, v147);
    sub_24F920778();
    v161 = v274;
    v167 = v166;
    v165 = v243;
    (*(v242 + 8))(v167, v243);
    v164 = v250;
  }

  v168 = v240;
  sub_24E60169C(v161, v240, &qword_27F21E3B0, &unk_24F95CD60);
  if (v149(v168, 1, v147) == 1)
  {
    sub_24E601704(v168, &qword_27F21E3B0, &unk_24F95CD60);
    LODWORD(v243) = 0;
  }

  else
  {
    v169 = v241;
    sub_24F920798();
    (*(v148 + 8))(v168, v147);
    LODWORD(v243) = sub_24F920768();
    (*(v242 + 8))(v169, v165);
  }

  v170 = v246;
  v171 = v245;
  v172 = v244;
  v173 = v228;
  sub_24F920288();
  sub_24F921108();
  sub_24E7F4B74(&qword_27F21E3D0, MEMORY[0x277D0D550], MEMORY[0x277D0D558]);
  v174 = v247;
  LODWORD(v246) = sub_24F92C678();
  v175 = *(v170 + 8);
  v175(v171, v174);
  v175(v172, v174);
  sub_24F920218();
  sub_24E7F4B74(&qword_27F21E3D8, MEMORY[0x277D0C9D0], MEMORY[0x277D0C9E8]);
  v176 = v272;
  LODWORD(v247) = sub_24F92C678();
  v177 = v273 + 8;
  v178 = *(v273 + 8);
  v178(v173, v176);
  sub_24F920248();
  LODWORD(v245) = sub_24F92C678();
  v178(v173, v176);
  sub_24F920208();
  LODWORD(v244) = sub_24F92C678();
  v178(v173, v176);
  sub_24F920238();
  LODWORD(v242) = sub_24F92C678();
  v178(v173, v176);
  sub_24F920228();
  LODWORD(v239) = sub_24F92C678();
  v273 = v177;
  v178(v173, v176);
  (*(v235 + 16))(v229, v267, v270);
  sub_24E60169C(v266, v253, &qword_27F213FB0, &qword_24F93E6B0);
  v179 = v260;
  v180 = v254;
  v181 = v261;
  (*(v260 + 16))(v254, v265, v261);
  (*(v179 + 56))(v180, 0, 1, v181);
  v241 = sub_24F9202A8();
  v240 = v182;
  v183 = v237;
  *v164 = v251;
  *(v164 + 8) = v183;
  v184 = v231;
  *(v164 + 16) = v227;
  *(v164 + 24) = v184;
  v185 = v232;
  *(v164 + 32) = v236;
  *(v164 + 40) = v185;
  v186 = v226;
  *(v164 + 48) = v230;
  *(v164 + 56) = v186;
  v187 = v255;
  v188 = v248;
  sub_24E60169C(v255, v248, &unk_27F22EC30, &qword_24F939880);
  v189 = v264;
  v190 = *(v264 + 48);
  v191 = v257;
  v192 = v190(v188, 1, v257);
  if (v192 == 1)
  {
    sub_24E601704(v188, &unk_27F22EC30, &qword_24F939880);
    v193 = 0.0;
  }

  else
  {
    sub_24F91F5E8();
    v193 = v194 * 1000.0;
    (*(v189 + 8))(v188, v191);
  }

  v195 = v249;
  *(v164 + 64) = v193;
  *(v164 + 72) = v192 == 1;
  v196 = v252;
  sub_24E60169C(v252, v195, &unk_27F22EC30, &qword_24F939880);
  v197 = v190(v195, 1, v191);
  if (v197 == 1)
  {

    sub_24E601704(v274, &qword_27F21E3B0, &unk_24F95CD60);
    v198 = sub_24F920358();
    (*(*(v198 - 8) + 8))(v234, v198);
    sub_24E601704(v196, &unk_27F22EC30, &qword_24F939880);
    sub_24E601704(v187, &unk_27F22EC30, &qword_24F939880);
    (*(v260 + 8))(v265, v261);
    sub_24E601704(v266, &qword_27F213FB0, &qword_24F93E6B0);
    v199 = v235;
    v200 = v270;
    (*(v235 + 8))(v267, v270);
    v178(v271, v272);
    (*(v268 + 8))(v256, v269);
    sub_24E601704(v195, &unk_27F22EC30, &qword_24F939880);
    v201 = 0.0;
  }

  else
  {
    sub_24F91F5E8();
    v203 = v202;

    sub_24E601704(v274, &qword_27F21E3B0, &unk_24F95CD60);
    v204 = sub_24F920358();
    (*(*(v204 - 8) + 8))(v234, v204);
    sub_24E601704(v196, &unk_27F22EC30, &qword_24F939880);
    sub_24E601704(v187, &unk_27F22EC30, &qword_24F939880);
    (*(v260 + 8))(v265, v261);
    sub_24E601704(v266, &qword_27F213FB0, &qword_24F93E6B0);
    v199 = v235;
    v200 = v270;
    (*(v235 + 8))(v267, v270);
    v178(v271, v272);
    (*(v268 + 8))(v256, v269);
    v201 = v203 * 1000.0;
    (*(v264 + 8))(v195, v191);
  }

  v205 = v262;
  *(v164 + 80) = v201;
  *(v164 + 88) = v197 == 1;
  *(v164 + 96) = v258;
  *(v164 + 104) = v243 & 1;
  *(v164 + 105) = v246 & 1;
  *(v164 + 106) = v247 & 1;
  *(v164 + 107) = v245 & 1;
  *(v164 + 108) = v244 & 1;
  *(v164 + 109) = v242 & 1;
  *(v164 + 110) = v239 & 1;
  v206 = type metadata accessor for Game(0);
  (*(v199 + 32))(v164 + v206[18], v229, v200);
  sub_24E6009C8(v253, v164 + v206[19], &qword_27F213FB0, &qword_24F93E6B0);
  v207 = (v164 + v206[20]);
  *v207 = v259;
  v207[1] = v205;
  result = sub_24E6009C8(v254, v164 + v206[21], &qword_27F219030, &qword_24F94BAE8);
  v208 = (v164 + v206[22]);
  v209 = v240;
  *v208 = v241;
  v208[1] = v209;
  return result;
}

void *Game.init(with:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v13 - v8;
  sub_24E69A5C4(0, &qword_27F21E318, 0x277CCAAC8);
  sub_24E69A5C4(0, &qword_27F235840, 0x277D0C060);
  result = sub_24F92BE38();
  if (v3)
  {
    return sub_24E627880(a1, a2);
  }

  if (result)
  {
    v11 = result;
    v12 = sub_24F91F648();
    (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
    sub_24E7EDF8C(v11, v9, a3);
    return sub_24E627880(a1, a2);
  }

  __break(1u);
  return result;
}

unint64_t Game.jsRepresentation(in:)@<X0>(uint64_t *a1@<X8>)
{
  v66 = a1;
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219030, &qword_24F94BAE8);
  MEMORY[0x28223BE20](v3 - 8);
  v63 = v61 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88, &unk_24F93A430);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_24F95BE60;
  *(v5 + 32) = 0x4449656C646E7562;
  v65 = v5 + 32;
  v6 = MEMORY[0x277D837D0];
  v7 = MEMORY[0x277D22580];
  v8 = *v1;
  v62 = v1[1];
  v9 = v62;
  *(v5 + 72) = MEMORY[0x277D837D0];
  *(v5 + 80) = v7;
  *(v5 + 40) = 0xE800000000000000;
  *(v5 + 48) = v8;
  *(v5 + 56) = v9;
  *(v5 + 88) = 0x44496D616461;
  *(v5 + 96) = 0xE600000000000000;
  v11 = v1[2];
  v10 = v1[3];
  v61[1] = v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740, &qword_24F93EC10);
  *(v5 + 128) = v12;
  v67 = v12;
  v13 = sub_24E7594F8(&qword_27F212F10, &unk_27F23B740, &qword_24F93EC10);
  *(v5 + 104) = v11;
  *(v5 + 112) = v10;
  *(v5 + 136) = v13;
  *(v5 + 144) = 1701667182;
  v14 = v2[4];
  v61[0] = v2[5];
  v15 = v61[0];
  *(v5 + 184) = v6;
  *(v5 + 192) = v7;
  *(v5 + 152) = 0xE400000000000000;
  *(v5 + 160) = v14;
  *(v5 + 168) = v15;
  *(v5 + 200) = 0xD000000000000010;
  *(v5 + 208) = 0x800000024FA47820;
  v16 = v2[6];
  v17 = v2[7];
  *(v5 + 240) = v12;
  *(v5 + 248) = v13;
  v18 = v13;
  *(v5 + 216) = v16;
  *(v5 + 224) = v17;
  strcpy((v5 + 256), "lastPlayedAt");
  *(v5 + 269) = 0;
  *(v5 + 270) = -5120;
  v19 = v2[8];
  LOBYTE(v7) = *(v2 + 72);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E320, &qword_24F95BE70);
  *(v5 + 296) = v20;
  v21 = sub_24E7594F8(&qword_27F21E328, &qword_27F21E320, &qword_24F95BE70);
  *(v5 + 272) = v19;
  *(v5 + 280) = v7;
  *(v5 + 304) = v21;
  *(v5 + 312) = 0x6564644165746164;
  v22 = v2[10];
  v23 = *(v2 + 88);
  *(v5 + 352) = v20;
  *(v5 + 360) = v21;
  *(v5 + 320) = 0xE900000000000064;
  *(v5 + 328) = v22;
  *(v5 + 336) = v23;
  *(v5 + 368) = 0xD000000000000013;
  *(v5 + 376) = 0x800000024FA47840;
  v24 = v2[12];
  *(v5 + 408) = &type metadata for SupportedPlatforms;
  v25 = sub_24E7F1CE4();
  *(v5 + 384) = v24;
  *(v5 + 416) = v25;
  *(v5 + 424) = 0x6C6174736E497369;
  *(v5 + 432) = 0xEB0000000064656CLL;
  v26 = *(v2 + 104);
  v27 = MEMORY[0x277D839B0];
  v28 = MEMORY[0x277D22598];
  *(v5 + 464) = MEMORY[0x277D839B0];
  *(v5 + 472) = v28;
  *(v5 + 440) = v26;
  *(v5 + 480) = 0x6564616372417369;
  *(v5 + 488) = 0xE800000000000000;
  v29 = *(v2 + 105);
  *(v5 + 520) = v27;
  *(v5 + 528) = v28;
  *(v5 + 496) = v29;
  *(v5 + 536) = 0xD000000000000014;
  *(v5 + 544) = 0x800000024FA47860;
  v30 = *(v2 + 106);
  *(v5 + 576) = v27;
  *(v5 + 584) = v28;
  *(v5 + 552) = v30;
  *(v5 + 592) = 0xD00000000000001CLL;
  *(v5 + 600) = 0x800000024FA47880;
  v31 = *(v2 + 107);
  *(v5 + 632) = v27;
  *(v5 + 640) = v28;
  *(v5 + 608) = v31;
  *(v5 + 648) = 0xD000000000000026;
  *(v5 + 656) = 0x800000024FA478A0;
  v32 = *(v2 + 108);
  *(v5 + 688) = v27;
  *(v5 + 696) = v28;
  *(v5 + 664) = v32;
  *(v5 + 704) = 0xD000000000000017;
  *(v5 + 712) = 0x800000024FA478D0;
  v33 = *(v2 + 109);
  *(v5 + 744) = v27;
  *(v5 + 752) = v28;
  *(v5 + 720) = v33;
  *(v5 + 760) = 0xD000000000000014;
  *(v5 + 768) = 0x800000024FA478F0;
  v34 = *(v2 + 110);
  *(v5 + 800) = v27;
  *(v5 + 808) = v28;
  *(v5 + 776) = v34;
  *(v5 + 816) = 0x6E6F6349656D6167;
  *(v5 + 824) = 0xE800000000000000;
  v35 = type metadata accessor for Game(0);
  v36 = v35[18];
  v37 = sub_24F9289E8();
  *(v5 + 856) = v37;
  *(v5 + 864) = sub_24E7F4B74(&qword_27F21E338, MEMORY[0x277D21C48], &protocol conformance descriptor for MediaArtwork);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v5 + 832));
  (*(*(v37 - 8) + 16))(boxed_opaque_existential_1, v2 + v36, v37);
  *(v5 + 872) = 0xD000000000000013;
  *(v5 + 880) = 0x800000024FA47910;
  v39 = v35[19];
  *(v5 + 912) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  *(v5 + 920) = sub_24E7F1D38();
  v40 = __swift_allocate_boxed_opaque_existential_1((v5 + 888));
  sub_24E60169C(v2 + v39, v40, &qword_27F213FB0, &qword_24F93E6B0);
  *(v5 + 928) = 0xD000000000000013;
  *(v5 + 936) = 0x800000024FA47930;
  v41 = (v2 + v35[20]);
  v42 = *v41;
  v43 = v41[1];
  *(v5 + 968) = v67;
  v44 = v63;
  v64 = v18;
  *(v5 + 976) = v18;
  *(v5 + 944) = v42;
  *(v5 + 952) = v43;
  strcpy((v5 + 984), "releaseState");
  *(v5 + 997) = 0;
  *(v5 + 998) = -5120;
  sub_24E60169C(v2 + v35[21], v44, &qword_27F219030, &qword_24F94BAE8);
  v45 = sub_24F920818();
  v46 = *(v45 - 8);
  v47 = (*(v46 + 48))(v44, 1, v45);

  if (v47 == 1)
  {
    sub_24E601704(v44, &qword_27F219030, &qword_24F94BAE8);
    v48 = 0;
    v49 = 0;
  }

  else
  {
    v50 = v44;
    v48 = sub_24F920808();
    v49 = v51;
    (*(v46 + 8))(v50, v45);
  }

  v52 = v67;
  *(v5 + 1024) = v67;
  v53 = v64;
  *(v5 + 1032) = v64;
  *(v5 + 1000) = v48;
  *(v5 + 1008) = v49;
  *(v5 + 1040) = 0xD000000000000011;
  *(v5 + 1048) = 0x800000024FA47950;
  v54 = (v2 + v35[22]);
  v56 = *v54;
  v55 = v54[1];
  *(v5 + 1080) = v52;
  *(v5 + 1088) = v53;
  *(v5 + 1056) = v56;
  *(v5 + 1064) = v55;

  v57 = sub_24E607E40(v5);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0, &unk_24F93A440);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  v59 = v66;
  v66[3] = v58;
  result = sub_24E6060B8();
  v59[4] = result;
  *v59 = v57;
  return result;
}