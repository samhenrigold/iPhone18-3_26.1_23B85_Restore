void sub_1A436B6E8(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v7 = a1;
  v6 = [v7 appContentController];
  [v6 *a4];
}

uint64_t sub_1A436B7A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A524A274();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MapOptionsChooseMapView(0);
  v9 = *(v8 + 20);
  *(a2 + v9) = swift_getKeyPath();
  v10 = MEMORY[0x1E697DCB8];
  sub_1A437049C(0, &qword_1EB128A50, MEMORY[0x1E697E730], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v11 = *(v8 + 24);
  *(a2 + v11) = swift_getKeyPath();
  sub_1A437049C(0, &qword_1EB128A38, sub_1A3EBE398, v10);
  swift_storeEnumTagMultiPayload();
  v13[1] = 0x4020000000000000;
  (*(v5 + 104))(v7, *MEMORY[0x1E6980F30], v4);
  sub_1A3F185D4();
  result = sub_1A52480B4();
  *a2 = sub_1A41C6230;
  *(a2 + 8) = a1;
  *(a2 + 16) = 0;
  return result;
}

uint64_t type metadata accessor for MapOptionsChooseMapView(uint64_t a1)
{
  result = qword_1EB1BA9E0;
  if (!qword_1EB1BA9E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 sub_1A436B9D0@<Q0>(uint64_t a1@<X8>)
{
  v3 = sub_1A5249944();
  MEMORY[0x1EEE9AC00](v3);
  sub_1A436BC7C(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A5249584();
  v15 = v1;
  LODWORD(v16) = 0;
  sub_1A4370718(&qword_1EB122340, MEMORY[0x1E697FCB0], MEMORY[0x1E697FCC8]);
  sub_1A524EE64();
  sub_1A436BD10(0);
  sub_1A4370718(&qword_1EB138A60, sub_1A436BD10, MEMORY[0x1E6981F48]);
  sub_1A5247CC4();
  sub_1A524BC04();
  sub_1A5248AD4();
  (*(v6 + 32))(a1, v8, v5);
  sub_1A436D280(0, &qword_1EB138A68, sub_1A436BC7C, MEMORY[0x1E697EC00], MEMORY[0x1E697E830]);
  v10 = a1 + *(v9 + 36);
  v11 = v21;
  *(v10 + 64) = v20;
  *(v10 + 80) = v11;
  *(v10 + 96) = v22;
  v12 = v17;
  *v10 = v16;
  *(v10 + 16) = v12;
  result = v19;
  *(v10 + 32) = v18;
  *(v10 + 48) = result;
  return result;
}

void sub_1A436BC7C(uint64_t a1)
{
  if (!qword_1EB1388E8)
  {
    sub_1A436BD10(255);
    sub_1A4370718(&qword_1EB138A60, sub_1A436BD10, MEMORY[0x1E6981F48]);
    v1 = sub_1A5247CD4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1388E8);
    }
  }
}

void sub_1A436BD44(uint64_t a1)
{
  if (!qword_1EB1388F8)
  {
    sub_1A436BDB4(255);
    sub_1A436CB6C(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB1388F8);
    }
  }
}

void sub_1A436BDFC(uint64_t a1)
{
  if (!qword_1EB138908)
  {
    sub_1A436BE90(255);
    sub_1A4370718(&qword_1EB138A28, sub_1A436BE90, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B784();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB138908);
    }
  }
}

void sub_1A436BEC4(uint64_t a1)
{
  if (!qword_1EB138918)
  {
    sub_1A436BF28(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB138918);
    }
  }
}

void sub_1A436C03C(uint64_t a1)
{
  if (!qword_1EB138940)
  {
    sub_1A436C110(255);
    sub_1A52489A4();
    sub_1A436C364();
    sub_1A4370718(&qword_1EB122F70, MEMORY[0x1E697C248], MEMORY[0x1E697C240]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB138940);
    }
  }
}

void sub_1A436C158(uint64_t a1)
{
  if (!qword_1EB138950)
  {
    sub_1A436C1EC(255);
    sub_1A436CABC(&qword_1EB138968, sub_1A436C1EC, sub_1A436C2B4);
    v1 = sub_1A524B764();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB138950);
    }
  }
}

void sub_1A436C220(uint64_t a1)
{
  if (!qword_1EB138960)
  {
    sub_1A3FA9EEC(255, &qword_1EB128580, MEMORY[0x1E6981748], MEMORY[0x1E697F578], MEMORY[0x1E697E830]);
    sub_1A5249F54();
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB138960);
    }
  }
}

unint64_t sub_1A436C2B4()
{
  result = qword_1EB138970;
  if (!qword_1EB138970)
  {
    sub_1A436C220(255);
    sub_1A3E44C04();
    sub_1A4370718(&qword_1EB127710, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB138970);
  }

  return result;
}

unint64_t sub_1A436C364()
{
  result = qword_1EB138978;
  if (!qword_1EB138978)
  {
    sub_1A436C110(255);
    sub_1A4370718(&qword_1EB138980, sub_1A436C158, MEMORY[0x1E697D680]);
    sub_1A4370718(&qword_1EB127710, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB138978);
  }

  return result;
}

void sub_1A436C444(uint64_t a1)
{
  if (!qword_1EB138988)
  {
    sub_1A436D280(255, &qword_1EB138990, sub_1A436C4E0, MEMORY[0x1E69805C0], MEMORY[0x1E697E830]);
    sub_1A436C848();
    v1 = sub_1A5248AE4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB138988);
    }
  }
}

void sub_1A436C4E0(uint64_t a1)
{
  if (!qword_1EB138998)
  {
    sub_1A436C574(255);
    sub_1A4370718(&qword_1EB1389E8, sub_1A436C574, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B894();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB138998);
    }
  }
}

void sub_1A436C5A8(uint64_t a1)
{
  if (!qword_1EB1389A8)
  {
    sub_1A436C610(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB1389A8);
    }
  }
}

void sub_1A436C6D0(uint64_t a1)
{
  if (!qword_1EB1389C8)
  {
    sub_1A436C764(255);
    sub_1A4370718(&qword_1EB1389E0, sub_1A436C764, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B784();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1389C8);
    }
  }
}

void sub_1A436C798(uint64_t a1)
{
  if (!qword_1EB1389D8)
  {
    sub_1A436C800(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB1389D8);
    }
  }
}

unint64_t sub_1A436C848()
{
  result = qword_1EB1389F0;
  if (!qword_1EB1389F0)
  {
    sub_1A436D280(255, &qword_1EB138990, sub_1A436C4E0, MEMORY[0x1E69805C0], MEMORY[0x1E697E830]);
    sub_1A4370718(&qword_1EB1389F8, sub_1A436C4E0, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1389F0);
  }

  return result;
}

void sub_1A436C930(uint64_t a1)
{
  if (!qword_1EB138A00)
  {
    sub_1A436C9C4(255);
    sub_1A436CABC(&qword_1EB138A18, sub_1A436C9C4, sub_1A436CB38);
    v1 = sub_1A5248AE4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB138A00);
    }
  }
}

void sub_1A436C9F8(uint64_t a1)
{
  if (!qword_1EB138A10)
  {
    sub_1A5248A14();
    sub_1A4370718(&qword_1EB128090, MEMORY[0x1E697EAF0], MEMORY[0x1E697EAD0]);
    v1 = sub_1A5249954();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB138A10);
    }
  }
}

uint64_t sub_1A436CABC(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
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

void sub_1A436CBA0(uint64_t a1)
{
  if (!qword_1EB138A38)
  {
    sub_1A436CC2C(255);
    sub_1A437087C(255, &qword_1EB1276F0, MEMORY[0x1E69E6370], MEMORY[0x1E6980B20]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB138A38);
    }
  }
}

void sub_1A436CC2C(uint64_t a1)
{
  if (!qword_1EB138A40)
  {
    sub_1A436CDB0(255);
    sub_1A3EC1A14(255);
    sub_1A436CEB4(255);
    sub_1A52489A4();
    sub_1A4370718(&qword_1EB138A58, sub_1A436CEB4, MEMORY[0x1E697D680]);
    sub_1A4370718(&qword_1EB122F70, MEMORY[0x1E697C248], MEMORY[0x1E697C240]);
    swift_getOpaqueTypeConformance2();
    sub_1A4370718(&qword_1EB126FC0, sub_1A3EC1A14, MEMORY[0x1E69E5FB8]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB138A40);
    }
  }
}

void sub_1A436CDB0(uint64_t a1)
{
  if (!qword_1EB138A48)
  {
    sub_1A436CEB4(255);
    sub_1A52489A4();
    sub_1A4370718(&qword_1EB138A58, sub_1A436CEB4, MEMORY[0x1E697D680]);
    sub_1A4370718(&qword_1EB122F70, MEMORY[0x1E697C248], MEMORY[0x1E697C240]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB138A48);
    }
  }
}

void sub_1A436CEB4(uint64_t a1)
{
  if (!qword_1EB138A50)
  {
    sub_1A436CF10();
    v1 = sub_1A524B764();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB138A50);
    }
  }
}

unint64_t sub_1A436CF10()
{
  result = qword_1EB1BA950[0];
  if (!qword_1EB1BA950[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1BA950);
  }

  return result;
}

uint64_t sub_1A436CF64@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  sub_1A4370038(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A436CB6C(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  sub_1A436BDB4(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v22 - v16;
  sub_1A436D308(&v22 - v16);
  type metadata accessor for MapOptionsChooseMapViewModel(0);
  sub_1A4370718(&qword_1EB138A78, type metadata accessor for MapOptionsChooseMapViewModel, &unk_1A5376100);
  v18 = sub_1A5247EB4();
  sub_1A43701CC(v18 + OBJC_IVAR____TtC12PhotosUICore28MapOptionsChooseMapViewModel_mapAttribution, v5, sub_1A4370038);

  v24 = a1;
  sub_1A436F8E8(sub_1A437012C, v11);
  sub_1A43707F4(v5, sub_1A4370038);
  sub_1A4370158(v17, v14, sub_1A436BDB4);
  sub_1A4370158(v11, v8, sub_1A436CB6C);
  v19 = v23;
  sub_1A4370158(v14, v23, sub_1A436BDB4);
  sub_1A436BD44(0);
  sub_1A4370158(v8, v19 + *(v20 + 48), sub_1A436CB6C);
  sub_1A4370320(v11, sub_1A436CB6C);
  sub_1A4370320(v17, sub_1A436BDB4);
  sub_1A4370320(v8, sub_1A436CB6C);
  return sub_1A4370320(v14, sub_1A436BDB4);
}

void sub_1A436D280(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1A436D308@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  sub_1A436BE90(0);
  v43 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v39 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A436BF28(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v36 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v36 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v38 = &v36 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v37 = &v36 - v11;
  sub_1A437029C(0, &qword_1EB138AA0, sub_1A436BDFC, sub_1A436BE90, MEMORY[0x1E697F948]);
  v40 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v36 - v13;
  sub_1A436BDFC(0);
  v41 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1A52486A4();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v36 - v23;
  type metadata accessor for MapOptionsChooseMapView(0);
  sub_1A4248EC0(v24);
  (*(v19 + 104))(v21, *MEMORY[0x1E697E6C8], v18);
  sub_1A4370718(&qword_1EB1288D0, MEMORY[0x1E697E730], MEMORY[0x1E697E748]);
  v25 = sub_1A524C534();
  v26 = *(v19 + 8);
  v26(v21, v18);
  v26(v24, v18);
  if (v25)
  {
    v27 = v37;
    sub_1A436DAE0(0, v37);
    v28 = v38;
    sub_1A436DAE0(1uLL, v38);
    sub_1A4370158(v27, v7, sub_1A436BF28);
    v29 = v36;
    sub_1A4370158(v28, v36, sub_1A436BF28);
    v30 = v39;
    sub_1A4370158(v7, v39, sub_1A436BF28);
    sub_1A436BEC4(0);
    sub_1A4370158(v29, v30 + *(v31 + 48), sub_1A436BF28);
    sub_1A4370320(v29, sub_1A436BF28);
    sub_1A4370320(v7, sub_1A436BF28);
    sub_1A4370158(v30, v14, sub_1A436BE90);
    swift_storeEnumTagMultiPayload();
    sub_1A4370718(&qword_1EB138AB0, sub_1A436BDFC, MEMORY[0x1E69817F8]);
    sub_1A4370718(&qword_1EB138A28, sub_1A436BE90, MEMORY[0x1E6981F48]);
    sub_1A5249744();
    sub_1A4370320(v30, sub_1A436BE90);
    sub_1A4370320(v28, sub_1A436BF28);
    v32 = v27;
    v33 = sub_1A436BF28;
  }

  else
  {
    *v17 = sub_1A5249314();
    *(v17 + 1) = 0x4034000000000000;
    v17[16] = 0;
    sub_1A4370500(0, &qword_1EB138AA8, sub_1A436BE90, MEMORY[0x1E697E258], MEMORY[0x1E697E250]);
    sub_1A436D948(&v17[*(v34 + 44)]);
    sub_1A4370158(v17, v14, sub_1A436BDFC);
    swift_storeEnumTagMultiPayload();
    sub_1A4370718(&qword_1EB138AB0, sub_1A436BDFC, MEMORY[0x1E69817F8]);
    sub_1A4370718(&qword_1EB138A28, sub_1A436BE90, MEMORY[0x1E6981F48]);
    sub_1A5249744();
    v33 = sub_1A436BDFC;
    v32 = v17;
  }

  return sub_1A4370320(v32, v33);
}

uint64_t sub_1A436D948@<X0>(uint64_t a1@<X8>)
{
  sub_1A436BF28(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v16 - v12;
  sub_1A436DAE0(0, &v16 - v12);
  sub_1A436DAE0(1uLL, v10);
  sub_1A4370158(v13, v7, sub_1A436BF28);
  sub_1A4370158(v10, v4, sub_1A436BF28);
  sub_1A4370158(v7, a1, sub_1A436BF28);
  sub_1A436BEC4(0);
  sub_1A4370158(v4, a1 + *(v14 + 48), sub_1A436BF28);
  sub_1A4370320(v10, sub_1A436BF28);
  sub_1A4370320(v13, sub_1A436BF28);
  sub_1A4370320(v4, sub_1A436BF28);
  return sub_1A4370320(v7, sub_1A436BF28);
}

uint64_t sub_1A436DAE0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v145 = a2;
  sub_1A436C610(0);
  v141 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v143 = &v123 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v142 = &v123 - v8;
  v9 = sub_1A52489A4();
  v137 = *(v9 - 8);
  v138 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v136 = (&v123 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v131 = sub_1A5249524();
  v135 = *(v131 - 8);
  MEMORY[0x1EEE9AC00](v131);
  v12 = &v123 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for MapOptionsChooseMapView(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v123 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A436C158(0);
  v126 = *(v17 - 8);
  v127 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v123 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A436C110(0);
  v128 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v123 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A436C03C(0);
  v134 = v23;
  v132 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v130 = &v123 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A436C000(0);
  v129 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v149 = &v123 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A436BFB8(0);
  v125 = v27;
  MEMORY[0x1EEE9AC00](v27);
  v150 = &v123 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A436BF70(0);
  v139 = v29;
  MEMORY[0x1EEE9AC00](v29);
  v140 = &v123 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A43701CC(v3, v16, type metadata accessor for MapOptionsChooseMapView);
  v31 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v32 = (v15 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  sub_1A4370234(v16, v33 + v31, type metadata accessor for MapOptionsChooseMapView);
  *(v33 + v32) = a1;
  v151 = a1;
  sub_1A436C1EC(0);
  sub_1A436CABC(&qword_1EB138968, sub_1A436C1EC, sub_1A436C2B4);
  sub_1A524B704();
  v35 = *v3;
  v34 = *(v3 + 8);
  v144 = v3;
  LODWORD(v33) = *(v3 + 16);
  v36 = type metadata accessor for MapOptionsChooseMapViewModel(0);
  v37 = sub_1A4370718(&qword_1EB138A78, type metadata accessor for MapOptionsChooseMapViewModel, &unk_1A5376100);
  v148 = v33;
  v146 = v37;
  v147 = v36;
  sub_1A5247EB4();
  v38 = sub_1A4951D80();

  v39 = a1;
  if (v38 == a1)
  {
    sub_1A52494E4();
    v40 = v131;
  }

  else
  {
    *&v166 = MEMORY[0x1E69E7CC0];
    sub_1A4370718(&qword_1EB12EC88, MEMORY[0x1E697F5E0], MEMORY[0x1E697F5F0]);
    sub_1A3F37230(0);
    sub_1A4370718(&qword_1EB12EC98, sub_1A3F37230, MEMORY[0x1E69E6328]);
    v40 = v131;
    sub_1A524E224();
  }

  sub_1A4370718(&qword_1EB138980, sub_1A436C158, MEMORY[0x1E697D680]);
  v41 = v127;
  sub_1A524AAF4();
  (*(v135 + 8))(v12, v40);
  (*(v126 + 8))(v19, v41);
  v42 = v136;
  sub_1A5248994();
  sub_1A436C364();
  sub_1A4370718(&qword_1EB122F70, MEMORY[0x1E697C248], MEMORY[0x1E697C240]);
  v43 = v130;
  v44 = v138;
  sub_1A524A934();
  (*(v137 + 8))(v42, v44);
  sub_1A43707F4(v22, sub_1A436C110);
  v133 = v34;
  sub_1A5247EB4();
  v45 = sub_1A4951D80();

  v124 = v39;
  v46 = v45 != v39;
  v47 = v149;
  (*(v132 + 32))(v149, v43, v134);
  *(v47 + *(v129 + 36)) = v46;
  v48 = sub_1A5249574();
  v49 = v150 + *(v125 + 36);
  *v49 = v48;
  *(v49 + 8) = 0;
  *(v49 + 16) = 0;
  v50 = v49;
  v138 = v49;
  sub_1A4370500(0, &qword_1EB138AB8, sub_1A436C574, MEMORY[0x1E697E300], MEMORY[0x1E697E2F8]);
  v136 = (v50 + *(v51 + 44));
  v135 = sub_1A5249314();
  v159 = 1;
  *&v166 = PXMapOptionsMapStyle.title.getter(v39);
  *(&v166 + 1) = v52;
  sub_1A3D5F9DC();
  v53 = sub_1A524A464();
  v55 = v54;
  v57 = v56;
  v137 = v35;
  sub_1A524A0E4();
  v58 = sub_1A524A3C4();
  v60 = v59;
  v62 = v61;
  v64 = v63;

  sub_1A3E04DF4(v53, v55, v57 & 1);

  KeyPath = swift_getKeyPath();
  v66 = swift_getKeyPath();
  *&v160 = v58;
  *(&v160 + 1) = v60;
  LOBYTE(v161) = v62 & 1;
  *(&v161 + 1) = v174[0];
  DWORD1(v161) = *(v174 + 3);
  *(&v161 + 1) = v64;
  *&v162 = KeyPath;
  *(&v162 + 1) = 0x3FE3333333333333;
  *&v163 = v66;
  *(&v163 + 1) = 1;
  LOBYTE(v164) = 0;
  LOBYTE(v157) = 0;
  v155 = v162;
  v156 = v163;
  v153 = v160;
  v154 = v161;
  v173 = 1;
  *&v166 = v58;
  *(&v166 + 1) = v60;
  LOBYTE(v167) = v62 & 1;
  DWORD1(v167) = *(v174 + 3);
  *(&v167 + 1) = v174[0];
  *(&v167 + 1) = v64;
  *&v168 = KeyPath;
  *(&v168 + 1) = 0x3FE3333333333333;
  *&v169 = v66;
  *(&v169 + 1) = 1;
  LOBYTE(v170) = 0;
  sub_1A43701CC(&v160, v152, sub_1A436C800);
  sub_1A43707F4(&v166, sub_1A436C800);
  v162 = v155;
  v163 = v156;
  v160 = v153;
  v161 = v154;
  v164 = v157;
  v165 = 1;
  v168 = v155;
  v169 = v156;
  v166 = v153;
  v167 = v154;
  v170 = v157;
  v171 = 0;
  v172 = 1;
  sub_1A43701CC(&v160, v152, sub_1A436C764);
  sub_1A43707F4(&v166, sub_1A436C764);
  *&v158[39] = v162;
  *&v158[55] = v163;
  *&v158[71] = v164;
  v158[87] = v165;
  *&v158[7] = v160;
  *&v158[23] = v161;
  LOBYTE(v53) = v159;
  LOBYTE(v64) = sub_1A524A0C4();
  sub_1A5247BC4();
  v68 = v67;
  v70 = v69;
  v72 = v71;
  v74 = v73;
  v152[0] = 0;
  LOBYTE(KeyPath) = sub_1A524A054();
  sub_1A5247BC4();
  v76 = v75;
  v78 = v77;
  v80 = v79;
  v82 = v81;
  v83 = v142;
  v84 = &v142[*(v141 + 36)];
  sub_1A524BBD4();
  LOBYTE(v60) = sub_1A524A064();
  sub_1A41CD494(0);
  v84[*(v85 + 36)] = v60;
  v86 = *v158;
  *(v83 + 33) = *&v158[16];
  *(v83 + 17) = v86;
  v87 = *&v158[48];
  *(v83 + 81) = *&v158[64];
  v88 = *&v158[32];
  *(v83 + 65) = v87;
  *v83 = v135;
  *(v83 + 8) = 0;
  *(v83 + 16) = v53;
  *(v83 + 97) = *&v158[80];
  *(v83 + 49) = v88;
  *(v83 + 112) = v64;
  *(v83 + 120) = v68;
  *(v83 + 128) = v70;
  *(v83 + 136) = v72;
  *(v83 + 144) = v74;
  *(v83 + 152) = 0;
  *(v83 + 160) = KeyPath;
  *(v83 + 168) = v76;
  *(v83 + 176) = v78;
  *(v83 + 184) = v80;
  *(v83 + 192) = v82;
  *(v83 + 200) = 0;
  v89 = v143;
  sub_1A43701CC(v83, v143, sub_1A436C610);
  v90 = v136;
  *v136 = 0;
  *(v90 + 8) = 1;
  v91 = v90;
  sub_1A436C5A8(0);
  sub_1A43701CC(v89, v91 + *(v92 + 48), sub_1A436C610);
  sub_1A43707F4(v83, sub_1A436C610);
  sub_1A43707F4(v89, sub_1A436C610);
  sub_1A5247EB4();
  v93 = sub_1A4951D80();

  v94 = v124;
  LOBYTE(KeyPath) = v93 == v124;
  sub_1A436D280(0, &qword_1EB138990, sub_1A436C4E0, MEMORY[0x1E69805C0], MEMORY[0x1E697E830]);
  v96 = v138;
  *(v138 + *(v95 + 36)) = KeyPath;
  v97 = sub_1A524BC74();
  v99 = v98;
  sub_1A436C444(0);
  v101 = (v96 + *(v100 + 36));
  *v101 = v97;
  v101[1] = v99;
  v102 = v150;
  sub_1A437056C(v149, v150, sub_1A436C000);
  v103 = v140;
  v104 = &v140[*(v139 + 36)];
  v105 = *(sub_1A5248A14() + 20);
  v106 = *MEMORY[0x1E697F468];
  v107 = sub_1A52494A4();
  (*(*(v107 - 8) + 104))(&v104[v105], v106, v107);
  __asm { FMOV            V0.2D, #10.0 }

  *v104 = _Q0;
  sub_1A3E42C88(0);
  *&v104[*(v113 + 36)] = 256;
  sub_1A437056C(v102, v103, sub_1A436BFB8);
  v114 = sub_1A524BC74();
  v116 = v115;
  sub_1A436BF28(0);
  v118 = v145;
  v119 = v145 + *(v117 + 36);
  sub_1A436EBFC(v144, v94, v119);
  sub_1A436C930(0);
  v121 = (v119 + *(v120 + 36));
  *v121 = v114;
  v121[1] = v116;
  return sub_1A437056C(v103, v118, sub_1A436BF70);
}

uint64_t sub_1A436E8C8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A524B554();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A436C220(0);
  v9 = v8;
  v20[0] = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = objc_opt_self();
  PXMapOptionsMapStyle.imageName.getter(a1);
  v13 = sub_1A524C634();

  v14 = [v12 px:v13 imageNamed:?];

  if (v14)
  {
    v15 = v14;
    sub_1A524B524();
    (*(v5 + 104))(v7, *MEMORY[0x1E6981630], v4);
    v16 = sub_1A524B5C4();

    (*(v5 + 8))(v7, v4);
    v20[3] = v16;
    v20[4] = 0;
    v21 = 1;
    v20[1] = PXMapOptionsMapStyle.title.getter(a1);
    v20[2] = v17;
    sub_1A3FA9EEC(0, &qword_1EB128580, MEMORY[0x1E6981748], MEMORY[0x1E697F578], MEMORY[0x1E697E830]);
    sub_1A3E44C04();
    sub_1A3D5F9DC();
    sub_1A524AC94();

    sub_1A4370234(v11, a2, sub_1A436C220);
    return (*(v20[0] + 56))(a2, 0, 1, v9);
  }

  else
  {
    v19 = *(v20[0] + 56);

    return v19(a2, 1, 1, v9);
  }
}

uint64_t sub_1A436EBFC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_1A5248A14();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A436C9F8(0);
  v9 = v8;
  v37 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MapOptionsChooseMapViewModel(0);
  sub_1A4370718(&qword_1EB138A78, type metadata accessor for MapOptionsChooseMapViewModel, &unk_1A5376100);
  sub_1A5247EB4();
  v12 = sub_1A4951D80();

  if (v12 == a2)
  {
    v13 = *(v5 + 20);
    v14 = *MEMORY[0x1E697F468];
    v15 = sub_1A52494A4();
    (*(*(v15 - 8) + 104))(&v7[v13], v14, v15);
    __asm { FMOV            V0.2D, #10.0 }

    *v7 = _Q0;
    v21 = [objc_opt_self() systemBlueColor];
    v22 = sub_1A524B284();
    sub_1A5247EE4();
    v23 = MEMORY[0x1E697EAF0];
    sub_1A43701CC(v7, v11, MEMORY[0x1E697EAF0]);
    v24 = *&v38 * 0.5;
    v25 = &v11[*(v9 + 68)];
    sub_1A43701CC(v7, v25, v23);
    *(v25 + *(sub_1A5248A04() + 20)) = v24;
    sub_1A43705D4(0);
    v27 = v25 + *(v26 + 36);
    v28 = v39;
    *v27 = v38;
    *(v27 + 16) = v28;
    *(v27 + 32) = v40;
    sub_1A4370668(0);
    *(v25 + *(v29 + 52)) = v22;
    *(v25 + *(v29 + 56)) = 256;
    v30 = sub_1A524BC74();
    v32 = v31;
    sub_1A43707F4(v7, MEMORY[0x1E697EAF0]);
    sub_1A4370760(0);
    v34 = (v25 + *(v33 + 36));
    *v34 = v30;
    v34[1] = v32;
    sub_1A437056C(v11, a3, sub_1A436C9F8);
    return (*(v37 + 56))(a3, 0, 1, v9);
  }

  else
  {
    v36 = *(v37 + 56);

    return v36(a3, 1, 1, v9);
  }
}

void sub_1A436EFA0(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v71 = a1;
  v65 = a3;
  sub_1A3EC2854(0);
  v64 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v54 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v61 = &v52 - v6;
  v7 = sub_1A52486A4();
  v70 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v66 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v69 = &v52 - v10;
  sub_1A3EC1A14(0);
  v63 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v62 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1A52489A4();
  v68 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A436CEB4(0);
  v17 = v16;
  v67 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A436CDB0(0);
  v57 = v20;
  v56 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A436CC2C(0);
  v59 = *(v23 - 8);
  v60 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v58 = &v52 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MapOptionsChooseMapViewModel(0);
  sub_1A4370718(&qword_1EB138A78, type metadata accessor for MapOptionsChooseMapViewModel, &unk_1A5376100);
  v25 = v66;
  sub_1A5247EB4();
  v72 = v71;
  sub_1A436CF10();
  sub_1A524B704();
  sub_1A5248994();
  v26 = sub_1A4370718(&qword_1EB138A58, sub_1A436CEB4, MEMORY[0x1E697D680]);
  v27 = sub_1A4370718(&qword_1EB122F70, MEMORY[0x1E697C248], MEMORY[0x1E697C240]);
  v55 = v22;
  v53 = v27;
  sub_1A524A934();
  v28 = *(v68 + 8);
  v68 = v13;
  v29 = v13;
  v30 = v69;
  v28(v15, v29);
  v31 = *(v67 + 8);
  v67 = v17;
  v31(v19, v17);
  v32 = v70;
  v33 = *(v70 + 104);
  v33(v30, *MEMORY[0x1E697E6F8], v7);
  v33(v25, *MEMORY[0x1E697E728], v7);
  sub_1A4370718(&qword_1EB1288D0, MEMORY[0x1E697E730], MEMORY[0x1E697E748]);
  if (sub_1A524C544())
  {
    v34 = *(v32 + 32);
    v52 = v26;
    v35 = v61;
    v34(v61, v30, v7);
    v36 = v64;
    v34((v35 + *(v64 + 48)), v25, v7);
    v37 = v54;
    sub_1A43701CC(v35, v54, sub_1A3EC2854);
    v38 = *(v36 + 48);
    v39 = v62;
    v34(v62, v37, v7);
    v40 = *(v32 + 8);
    v40(v37 + v38, v7);
    sub_1A4370234(v35, v37, sub_1A3EC2854);
    v34((v39 + *(v63 + 36)), (v37 + *(v36 + 48)), v7);
    v40(v37, v7);
    v73 = v67;
    v74 = v68;
    v75 = v52;
    v76 = v53;
    swift_getOpaqueTypeConformance2();
    sub_1A4370718(&qword_1EB126FC0, sub_1A3EC1A14, MEMORY[0x1E69E5FB8]);
    v41 = v58;
    v42 = v57;
    v43 = v55;
    sub_1A524AB84();
    sub_1A43707F4(v39, sub_1A3EC1A14);
    (*(v56 + 8))(v43, v42);
    sub_1A437006C(0);
    v45 = *(v44 + 48);
    v46 = sub_1A5240E64();
    LOBYTE(v38) = (*(*(v46 - 8) + 48))(v71 + v45, 1, v46) == 1;
    KeyPath = swift_getKeyPath();
    v48 = swift_allocObject();
    *(v48 + 16) = v38;
    v49 = v65;
    (*(v59 + 32))(v65, v41, v60);
    sub_1A436CBA0(0);
    v51 = (v49 + *(v50 + 36));
    *v51 = KeyPath;
    v51[1] = sub_1A3E07024;
    v51[2] = v48;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1A436F828@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1A437006C(0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A43701CC(a1, v7, sub_1A437006C);
  v8 = *v7;
  result = sub_1A43707F4(v7 + *(v5 + 56), sub_1A3EE53E0);
  *a2 = v8;
  return result;
}

uint64_t sub_1A436F8E8@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X8>)
{
  sub_1A437006C(0);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4370038(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A43701CC(v2, v13, sub_1A4370038);
  v14 = 1;
  if ((*(v8 + 48))(v13, 1, v7) == 1)
  {
    goto LABEL_4;
  }

  sub_1A4370234(v13, v10, sub_1A437006C);
  a1(v10);
  if (!v3)
  {
    sub_1A43707F4(v10, sub_1A437006C);
    v14 = 0;
LABEL_4:
    sub_1A436CBA0(0);
    return (*(*(v15 - 8) + 56))(a2, v14, 1, v15);
  }

  result = sub_1A43707F4(v10, sub_1A437006C);
  __break(1u);
  return result;
}

id sub_1A436FB00(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v2 setAttributedText_];
  [v2 setNumberOfLines_];
  [v2 setTextAlignment_];
  [v2 setAdjustsFontForContentSizeCategory_];
  LODWORD(v3) = 1132068864;
  [v2 setContentCompressionResistancePriority:0 forAxis:v3];
  LODWORD(v4) = 1144750080;
  [v2 setContentHuggingPriority:1 forAxis:v4];
  [v2 setUserInteractionEnabled_];
  return v2;
}

id sub_1A436FBE4(uint64_t a1, int a2, id a3)
{
  result = [a3 systemLayoutSizeFittingSize_];
  *a1 = v5;
  *(a1 + 8) = v6;
  return result;
}

uint64_t sub_1A436FC24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A436FFE4();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1A436FC88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A436FFE4();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1A436FCEC(uint64_t a1)
{
  sub_1A436FFE4();
  sub_1A52496F4();
  __break(1u);
}

void sub_1A436FD40(uint64_t a1)
{
  sub_1A436FE54(319);
  if (v1 <= 0x3F)
  {
    sub_1A437049C(319, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
    if (v2 <= 0x3F)
    {
      sub_1A437049C(319, &qword_1EB1246E8, sub_1A3EBE398, MEMORY[0x1E697DCC0]);
      if (v3 <= 0x3F)
      {
        sub_1A431FAA8(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1A436FE54(uint64_t a1)
{
  if (!qword_1EB138A70)
  {
    type metadata accessor for MapOptionsChooseMapViewModel(255);
    sub_1A4370718(&qword_1EB138A78, type metadata accessor for MapOptionsChooseMapViewModel, &unk_1A5376100);
    v1 = sub_1A5247ED4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB138A70);
    }
  }
}

unint64_t sub_1A436FEE8()
{
  result = qword_1EB138A80;
  if (!qword_1EB138A80)
  {
    sub_1A436D280(255, &qword_1EB138A68, sub_1A436BC7C, MEMORY[0x1E697EC00], MEMORY[0x1E697E830]);
    sub_1A4370718(&qword_1EB138A88, sub_1A436BC7C, MEMORY[0x1E697DA90]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB138A80);
  }

  return result;
}

unint64_t sub_1A436FFE4()
{
  result = qword_1EB1BAAF0[0];
  if (!qword_1EB1BAAF0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1BAAF0);
  }

  return result;
}

void sub_1A437006C(uint64_t a1)
{
  if (!qword_1EB138A98)
  {
    sub_1A43700E0();
    sub_1A3EE53E0(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB138A98);
    }
  }
}

unint64_t sub_1A43700E0()
{
  result = qword_1EB126A40;
  if (!qword_1EB126A40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB126A40);
  }

  return result;
}

uint64_t sub_1A4370158(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A43701CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A4370234(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1A437029C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1A4370320(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_1A4370380()
{
  v1 = *(type metadata accessor for MapOptionsChooseMapView(0) - 8);
  v2 = *(v0 + ((*(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  type metadata accessor for MapOptionsChooseMapViewModel(0);
  sub_1A4370718(&qword_1EB138A78, type metadata accessor for MapOptionsChooseMapViewModel, &unk_1A5376100);
  sub_1A5247EB4();
  sub_1A4952078(v2);

  return result;
}

void sub_1A437049C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A4370500(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    v6 = sub_1A52483B4();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1A437056C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1A43705D4(uint64_t a1)
{
  if (!qword_1EB138AC0)
  {
    sub_1A5248A04();
    sub_1A4370718(&unk_1EB13D870, MEMORY[0x1E697EAB8], MEMORY[0x1E697EAB0]);
    v1 = sub_1A5248384();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB138AC0);
    }
  }
}

void sub_1A4370668(uint64_t a1)
{
  if (!qword_1EB138AC8)
  {
    sub_1A43705D4(255);
    sub_1A4370718(&qword_1EB138AD0, sub_1A43705D4, MEMORY[0x1E697E298]);
    v1 = sub_1A5247D54();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB138AC8);
    }
  }
}

uint64_t sub_1A4370718(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1A4370760(uint64_t a1)
{
  if (!qword_1EB138AD8)
  {
    sub_1A4370668(255);
    sub_1A3FA9EEC(255, &qword_1EB12CF60, MEMORY[0x1E6981E70], MEMORY[0x1E6981E60], MEMORY[0x1E697F930]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB138AD8);
    }
  }
}

uint64_t sub_1A43707F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A437087C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1A43708CC()
{
  swift_getKeyPath();
  sub_1A4373250(&qword_1EB1255C0, type metadata accessor for LemonadeSearchIndexingStatus, &unk_1A5333540);
  sub_1A52415D4();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A437097C(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A4373250(&qword_1EB1255C0, type metadata accessor for LemonadeSearchIndexingStatus, &unk_1A5333540);
  sub_1A52415D4();

  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

double sub_1A4370A60(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16) == a1 && *(v2 + 24) == a2;
  if (v5 || (sub_1A524EAB4() & 1) != 0)
  {
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A4373250(&qword_1EB1255C0, type metadata accessor for LemonadeSearchIndexingStatus, &unk_1A5333540);
    sub_1A52415C4();
  }

  return result;
}

void sub_1A4370BC0()
{
  swift_getKeyPath();
  sub_1A4373250(&qword_1EB1255C0, type metadata accessor for LemonadeSearchIndexingStatus, &unk_1A5333540);
  sub_1A52415D4();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A4370C70(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A4373250(&qword_1EB1255C0, type metadata accessor for LemonadeSearchIndexingStatus, &unk_1A5333540);
  sub_1A52415D4();

  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

double sub_1A4370D7C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32) == a1 && *(v2 + 40) == a2;
  if (v5 || (sub_1A524EAB4() & 1) != 0)
  {
    *(v2 + 32) = a1;
    *(v2 + 40) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A4373250(&qword_1EB1255C0, type metadata accessor for LemonadeSearchIndexingStatus, &unk_1A5333540);
    sub_1A52415C4();
  }

  return result;
}

uint64_t sub_1A4370EDC(uint64_t a1)
{
  sub_1A4370FD0();
  v1 = 1;
  if ((v2 & 1) == 0)
  {
    PhotosSearchAIStatus.status.getter(&v8);
    v7 = 1;
    if (!static SearchAIStatus.== infix(_:_:)(&v8, &v7))
    {
      sub_1A3C52C70(0, &qword_1EB120A48, off_1E771F5D8);
      v3 = [swift_getObjCClassFromMetadata() sharedInstance];
      v4 = [v3 forceIndexingFooter];

      if (v4)
      {
        return 1;
      }

      else
      {
        sub_1A3C52C70(0, &qword_1EB126A10, off_1E771E328);
        v5 = [swift_getObjCClassFromMetadata() sharedInstance];
        v1 = [v5 forceShowProcessingUI];
      }
    }
  }

  return v1;
}

void sub_1A4370FD0()
{
  sub_1A43710E0();
  v1 = v0 * 100.0;
  if ((LODWORD(v1) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 <= -9.2234e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v1 < 9.2234e18)
  {
    sub_1A3C52C70(0, &qword_1EB120A48, off_1E771F5D8);
    v2 = [swift_getObjCClassFromMetadata() sharedInstance];
    [v2 indexingBannerPercentageThreshold];

    return;
  }

LABEL_7:
  __break(1u);
}

BOOL sub_1A4371098()
{
  PhotosSearchAIStatus.status.getter(&v2);
  v1 = 1;
  return static SearchAIStatus.== infix(_:_:)(&v2, &v1);
}

void sub_1A43710E0()
{
  swift_getKeyPath();
  sub_1A4373250(&qword_1EB1255C0, type metadata accessor for LemonadeSearchIndexingStatus, &unk_1A5333540);
  sub_1A52415D4();

  v1 = *(v0 + 56);
  if (!v1 || (v2 = v1, sub_1A488C1D8(), sub_1A4371520(), sub_1A524C9C4(), sub_1A524C9C4(), v2, v6 != v5))
  {
    swift_getKeyPath();
    sub_1A52415D4();

    v3 = *(v0 + 56);
    if (v3)
    {
      v4 = v3;
      LemonadeFeatureAvailabilityMonitor.progress.getter();
    }
  }
}

void *sub_1A437125C()
{
  swift_getKeyPath();
  sub_1A4373250(&qword_1EB1255C0, type metadata accessor for LemonadeSearchIndexingStatus, &unk_1A5333540);
  sub_1A52415D4();

  v1 = *(v0 + 56);
  v2 = v1;
  return v1;
}

float sub_1A4371304()
{
  PhotosSearchAIStatus.status.getter(&v9);
  v8 = 1;
  if (static SearchAIStatus.== infix(_:_:)(&v9, &v8))
  {
    return 1.1;
  }

  sub_1A3C52C70(0, &qword_1EB120A48, off_1E771F5D8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [ObjCClassFromMetadata sharedInstance];
  v2 = [v1 forceIndexingFooter];

  if (v2)
  {
    return 1.1;
  }

  sub_1A3C52C70(0, &qword_1EB126A10, off_1E771E328);
  v3 = [swift_getObjCClassFromMetadata() sharedInstance];
  v4 = [v3 forceShowProcessingUI];

  if (v4)
  {
    return 1.1;
  }

  v6 = [ObjCClassFromMetadata sharedInstance];
  v7 = [v6 indexingBannerPercentageThreshold];

  return v7 / 100.0;
}

id sub_1A4371438@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A4373250(&qword_1EB1255C0, type metadata accessor for LemonadeSearchIndexingStatus, &unk_1A5333540);
  sub_1A52415D4();

  v4 = *(v3 + 56);
  *a2 = v4;

  return v4;
}

void sub_1A43714F0(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1A4371574(v1, v3);
}

unint64_t sub_1A4371520()
{
  result = qword_1EB125498;
  if (!qword_1EB125498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125498);
  }

  return result;
}

void sub_1A4371574(void *a1, double a2)
{
  v3 = v2;
  v5 = *(v2 + 56);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A4373250(&qword_1EB1255C0, type metadata accessor for LemonadeSearchIndexingStatus, &unk_1A5333540);
    sub_1A52415C4();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  type metadata accessor for LemonadeFeatureAvailabilityMonitor(0);
  v6 = v5;
  v7 = a1;
  v8 = sub_1A524DBF4();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v3 + 56);
LABEL_8:
  *(v3 + 56) = a1;
}

void sub_1A43716F4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 56);
  *(v1 + 56) = v2;
  v4 = v2;
}

void *sub_1A437172C()
{
  swift_getKeyPath();
  sub_1A4373250(&qword_1EB1255C0, type metadata accessor for LemonadeSearchIndexingStatus, &unk_1A5333540);
  sub_1A52415D4();

  swift_beginAccess();
  v1 = *(v0 + 72);
  v2 = v1;
  return v1;
}

id sub_1A43717E8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A4373250(&qword_1EB1255C0, type metadata accessor for LemonadeSearchIndexingStatus, &unk_1A5333540);
  sub_1A52415D4();

  swift_beginAccess();
  v4 = *(v3 + 72);
  *a2 = v4;

  return v4;
}

void sub_1A43718B4(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1A43718E4(v1);
}

void sub_1A43718E4(void *a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 72);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A4373250(&qword_1EB1255C0, type metadata accessor for LemonadeSearchIndexingStatus, &unk_1A5333540);
    sub_1A52415C4();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  type metadata accessor for LemonadeSearchIndexingStatusGenericEmptyStateViewModel(0);
  v5 = v4;
  v6 = a1;
  v7 = sub_1A524DBF4();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 72);
LABEL_8:
  *(v2 + 72) = a1;
}

uint64_t sub_1A4371A78()
{
  v0 = swift_allocObject();
  sub_1A4371AB0();
  return v0;
}

void *sub_1A4371AB0()
{
  v1 = v0;
  v0[2] = sub_1A3C38BD4(0xD000000000000024);
  v0[3] = v2;
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v4 = result;
    MobileGestalt_get_wapiCapability();

    v5 = sub_1A524C634();
    v6 = PXLocalizedString(v5);

    v7 = sub_1A524C674();
    v9 = v8;

    v1[4] = v7;
    v1[5] = v9;
    v1[6] = [objc_allocWithZone(off_1E77218E8) init];
    v1[7] = 0;
    type metadata accessor for PhotosSearchAIStatus(0);
    v1[8] = PhotosSearchAIStatus.__allocating_init()();
    v1[9] = 0;
    sub_1A5241604();
    sub_1A52415B4();
    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1A4371C04(void *a1)
{
  swift_allocObject();
  v2 = sub_1A4373054(a1);

  return v2;
}

void sub_1A4371C4C(void *a1)
{
  swift_getKeyPath();
  v6 = v1;
  sub_1A4373250(&qword_1EB1255C0, type metadata accessor for LemonadeSearchIndexingStatus, &unk_1A5333540);
  sub_1A52415D4();

  if (!*(v1 + 56))
  {
    type metadata accessor for LemonadeFeatureAvailabilityMonitor(0);
    v5 = 7;
    static LemonadeFeatureAvailabilityMonitor.sharedStatus(feature:for:)(&v5, a1);
    sub_1A4371574(v3, v4);
  }
}

void sub_1A4371D1C(uint64_t a1)
{
  v2 = sub_1A524C634();
  v3 = PXLocalizedString(v2);

  v4 = sub_1A524C674();
  v6 = v5;

  PhotosSearchAIStatus.status.getter(aBlock);
  v7 = aBlock[0];
  v8 = MobileGestalt_get_current_device();
  if (v8)
  {
    v9 = v8;
    MobileGestalt_get_wapiCapability();

    LOBYTE(aBlock[0]) = v7;
    v59[0] = 1;
    v10 = static SearchAIStatus.== infix(_:_:)(aBlock, v59);
    sub_1A4370FD0();
    if (v10)
    {
      if ((v11 & 1) == 0)
      {
        v21 = sub_1A3C38BD4(0xD000000000000029);
        sub_1A4370A60(v21, v22);
        v23 = sub_1A3C38BD4(0xD00000000000002DLL);
        sub_1A4370D7C(v23, v24);
        v19 = sub_1A524C634();
        v20 = PXLocalizedString(v19);
        goto LABEL_10;
      }
    }

    else if ((v11 & 1) == 0)
    {
      LOBYTE(aBlock[0]) = v7;
      v59[0] = 3;
      if (!static SearchAIStatus.== infix(_:_:)(aBlock, v59))
      {
        v40 = sub_1A3C38BD4(0xD000000000000024);
        sub_1A4370A60(v40, v41);
        v42 = sub_1A524C634();
        v43 = PXLocalizedString(v42);

        v44 = sub_1A524C674();
        v46 = v45;

        sub_1A4370D7C(v44, v46);
        v47 = sub_1A524C634();
        v48 = PXLocalizedString(v47);

        v30 = sub_1A524C674();
        v32 = v49;

        swift_getKeyPath();
        aBlock[0] = a1;
        sub_1A4373250(&qword_1EB1255C0, type metadata accessor for LemonadeSearchIndexingStatus, &unk_1A5333540);
        sub_1A52415D4();

        swift_beginAccess();
        v50 = *(a1 + 72);
        if (v50)
        {
          v57 = v4;
          swift_getKeyPath();
          aBlock[0] = v50;
          sub_1A4373250(&qword_1EB138AE0, type metadata accessor for LemonadeSearchIndexingStatusGenericEmptyStateViewModel, &unk_1A533355C);
          v51 = v50;
          sub_1A52415D4();

          v52 = OBJC_IVAR___PXLemonadeSearchIndexingStatusGenericEmptyStateViewModel__numberOfCollectionResults;
          swift_beginAccess();
          if (*&v51[v52] < 1)
          {

            v33 = 0;
            v34 = 0;
            v35 = 0;
            v36 = 0;
          }

          else
          {
            v53 = sub_1A524C634();
            v54 = PXLocalizedString(v53);

            v35 = sub_1A524C674();
            v36 = v55;

            swift_getKeyPath();
            aBlock[0] = v51;
            sub_1A52415D4();

            v56 = &v51[OBJC_IVAR___PXLemonadeSearchIndexingStatusGenericEmptyStateViewModel__actionHandler];
            swift_beginAccess();
            v33 = *v56;
            v34 = v56[1];
            sub_1A3C66EE8(v33, v34);
          }

          v4 = v57;
          goto LABEL_12;
        }

LABEL_11:
        v33 = 0;
        v34 = 0;
        v35 = 0;
        v36 = 0;
LABEL_12:
        v37 = *(a1 + 48);
        v38 = swift_allocObject();
        v38[2] = v4;
        v38[3] = v6;
        v38[4] = v30;
        v38[5] = v32;
        v38[6] = v35;
        v38[7] = v36;
        v38[8] = v33;
        v38[9] = v34;
        aBlock[4] = sub_1A4373544;
        aBlock[5] = v38;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1A3D59380;
        aBlock[3] = &block_descriptor_163;
        v39 = _Block_copy(aBlock);
        sub_1A3C66EE8(v33, v34);

        [v37 performChanges_];
        sub_1A3C784D4(v33, v34);
        _Block_release(v39);
        return;
      }

      v25 = sub_1A3C38BD4(0xD000000000000030);
      sub_1A4370A60(v25, v26);
      v27 = sub_1A3C38BD4(0xD00000000000002DLL);
      sub_1A4370D7C(v27, v28);
      v19 = sub_1A524C634();
      v20 = PXLocalizedString(v19);
LABEL_10:
      v29 = v20;

      v30 = sub_1A524C674();
      v32 = v31;

      goto LABEL_11;
    }

    v12 = sub_1A3C38BD4(0xD000000000000024);
    sub_1A4370A60(v12, v13);
    v14 = sub_1A524C634();
    v15 = PXLocalizedString(v14);

    v16 = sub_1A524C674();
    v18 = v17;

    sub_1A4370D7C(v16, v18);
    v19 = sub_1A524C634();
    v20 = PXLocalizedString(v19);
    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_1A437244C()
{
  swift_getKeyPath();
  v3 = v0;
  sub_1A4373250(&qword_1EB138AE0, type metadata accessor for LemonadeSearchIndexingStatusGenericEmptyStateViewModel, &unk_1A533355C);
  sub_1A52415D4();

  v1 = OBJC_IVAR___PXLemonadeSearchIndexingStatusGenericEmptyStateViewModel__numberOfCollectionResults;
  swift_beginAccess();
  return *(v3 + v1);
}

uint64_t sub_1A4372508()
{
  swift_getKeyPath();
  sub_1A4373250(&qword_1EB138AE0, type metadata accessor for LemonadeSearchIndexingStatusGenericEmptyStateViewModel, &unk_1A533355C);
  sub_1A52415D4();

  v1 = (v0 + OBJC_IVAR___PXLemonadeSearchIndexingStatusGenericEmptyStateViewModel__actionHandler);
  swift_beginAccess();
  v2 = *v1;
  sub_1A3C66EE8(*v1, v1[1]);
  return v2;
}

double (*sub_1A43725DC())()
{
  swift_allocObject();
  swift_weakInit();
  return sub_1A437349C;
}

double sub_1A4372634(uint64_t a1)
{
  sub_1A3DB4F20(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A524CCB4();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  sub_1A524CC54();

  v6 = sub_1A524CC44();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E85E0];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v5;

  sub_1A3EA52F4(0, 0, v3, &unk_1A5333658, v7);

  return result;
}

uint64_t sub_1A43727AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  sub_1A524CC54();
  v4[7] = sub_1A524CC44();
  v6 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A4372844, v6, v5);
}

uint64_t sub_1A4372844()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_1A52415B4();
  }

  **(v0 + 40) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A4372920()
{

  v1 = OBJC_IVAR____TtC12PhotosUICore28LemonadeSearchIndexingStatus___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_1A43729EC(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A4373250(&qword_1EB138AE0, type metadata accessor for LemonadeSearchIndexingStatusGenericEmptyStateViewModel, &unk_1A533355C);
  sub_1A52415D4();

  v4 = OBJC_IVAR___PXLemonadeSearchIndexingStatusGenericEmptyStateViewModel__numberOfCollectionResults;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

double sub_1A4372AD8(uint64_t a1)
{
  v3 = OBJC_IVAR___PXLemonadeSearchIndexingStatusGenericEmptyStateViewModel__numberOfCollectionResults;
  swift_beginAccess();
  if (*(v1 + v3) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A4373250(&qword_1EB138AE0, type metadata accessor for LemonadeSearchIndexingStatusGenericEmptyStateViewModel, &unk_1A533355C);
    sub_1A52415C4();
  }

  return result;
}

double sub_1A4372BF8@<D0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A4373250(&qword_1EB138AE0, type metadata accessor for LemonadeSearchIndexingStatusGenericEmptyStateViewModel, &unk_1A533355C);
  sub_1A52415D4();

  v4 = (v3 + OBJC_IVAR___PXLemonadeSearchIndexingStatusGenericEmptyStateViewModel__actionHandler);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  if (v5)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    *(v7 + 24) = v6;
    v8 = sub_1A3C7146C;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  *a2 = v8;
  a2[1] = v7;
  return sub_1A3C66EE8(v5, v6);
}

double sub_1A4372D04(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_1A3D6069C;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1A3C66EE8(v2, v3);
  sub_1A4373250(&qword_1EB138AE0, type metadata accessor for LemonadeSearchIndexingStatusGenericEmptyStateViewModel, &unk_1A533355C);
  sub_1A52415C4();
  sub_1A3C784D4(v5, v4);

  return result;
}

uint64_t sub_1A4372E60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a1 + OBJC_IVAR___PXLemonadeSearchIndexingStatusGenericEmptyStateViewModel__actionHandler);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a2;
  v5[1] = a3;
  sub_1A3C66EE8(a2, a3);
  return sub_1A3C784D4(v6, v7);
}

id sub_1A4372EDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = &v7[OBJC_IVAR___PXLemonadeSearchIndexingStatusGenericEmptyStateViewModel__actionHandler];
  *v8 = 0;
  v8[1] = 0;
  sub_1A5241604();
  *&v7[OBJC_IVAR___PXLemonadeSearchIndexingStatusGenericEmptyStateViewModel__numberOfCollectionResults] = a1;
  v9 = *v8;
  v10 = v8[1];
  sub_1A3C66EE8(a2, a3);
  sub_1A3C784D4(v9, v10);
  *v8 = a2;
  v8[1] = a3;
  v13.receiver = v7;
  v13.super_class = v3;
  v11 = objc_msgSendSuper2(&v13, sel_init);
  sub_1A3C784D4(a2, a3);
  return v11;
}

void *sub_1A4373054(void *a1)
{
  v2 = v1;
  v1[2] = sub_1A3C38BD4(0xD000000000000024);
  v1[3] = v4;
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v6 = result;
    MobileGestalt_get_wapiCapability();

    v7 = sub_1A524C634();
    v8 = PXLocalizedString(v7);

    v9 = sub_1A524C674();
    v11 = v10;

    v2[4] = v9;
    v2[5] = v11;
    v2[6] = [objc_allocWithZone(off_1E77218E8) init];
    v2[7] = 0;
    type metadata accessor for PhotosSearchAIStatus(0);
    v2[8] = PhotosSearchAIStatus.__allocating_init()();
    v2[9] = 0;
    sub_1A5241604();
    swift_getKeyPath();
    v15 = v2;
    sub_1A4373250(&qword_1EB1255C0, type metadata accessor for LemonadeSearchIndexingStatus, &unk_1A5333540);
    sub_1A52415D4();

    if (!v2[7])
    {
      type metadata accessor for LemonadeFeatureAvailabilityMonitor(0);
      v14 = 7;
      static LemonadeFeatureAvailabilityMonitor.sharedStatus(feature:for:)(&v14, a1);
      sub_1A4371574(v12, v13);
    }

    sub_1A52415B4();
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A4373250(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1A4373298()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR___PXLemonadeSearchIndexingStatusGenericEmptyStateViewModel__numberOfCollectionResults;
  swift_beginAccess();
  *(v2 + v3) = v1;
}

uint64_t sub_1A4373328(uint64_t a1)
{
  result = sub_1A5241614();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1A43733F4(uint64_t a1)
{
  result = sub_1A5241614();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1A43734A4(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A3D60150;

  return sub_1A43727AC(a1, v5, v6, v4);
}

void sub_1A4373544(void *a1)
{
  v3 = v1[7];
  v5 = v1[8];
  v4 = v1[9];
  v6 = sub_1A524C634();
  [a1 setTitle_];

  v7 = sub_1A524C634();
  [a1 setMessage_];

  if (v3)
  {
    v8 = sub_1A524C634();
  }

  else
  {
    v8 = 0;
  }

  [a1 setActionTitle_];

  if (v5)
  {
    v10[4] = v5;
    v10[5] = v4;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 1107296256;
    v10[2] = sub_1A3C2E0D0;
    v10[3] = &block_descriptor_46_5;
    v9 = _Block_copy(v10);
  }

  else
  {
    v9 = 0;
  }

  [a1 setAction_];
  _Block_release(v9);
}

uint64_t sub_1A43736C0(uint64_t a1, uint64_t a2)
{
  sub_1A3D63AC0(0, a2);
  sub_1A43737A0();
  v4 = v2;
  if (swift_dynamicCast())
  {
    if (*(&v10 + 1))
    {
      sub_1A3C34460(&v9, v12);
      v5 = v13;
      v6 = v14;
      __swift_project_boxed_opaque_existential_1(v12, v13);
      v7 = (*(v6 + 8))(a1, v5, v6);
      __swift_destroy_boxed_opaque_existential_0(v12);
      return v7;
    }
  }

  else
  {
    v11 = 0;
    v9 = 0u;
    v10 = 0u;
  }

  sub_1A4373804(&v9);
  return 0;
}

unint64_t sub_1A43737A0()
{
  result = qword_1EB138AF8;
  if (!qword_1EB138AF8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB138AF8);
  }

  return result;
}

uint64_t sub_1A4373804(uint64_t a1)
{
  sub_1A4373860(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1A4373860(uint64_t a1)
{
  if (!qword_1EB138B00)
  {
    sub_1A43737A0();
    v1 = sub_1A524DF24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB138B00);
    }
  }
}

uint64_t sub_1A43738B8(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v5 = a1;
  v7 = sub_1A43736C0(a3, v6);
  swift_unknownObjectRelease();

  return v7;
}

uint64_t sub_1A4373910(uint64_t a1, uint64_t a2)
{
  sub_1A3D63AC0(0, a2);
  sub_1A43737A0();
  v4 = v2;
  if (swift_dynamicCast())
  {
    if (*(&v9 + 1))
    {
      sub_1A3C34460(&v8, v11);
      v5 = v12;
      v6 = v13;
      __swift_project_boxed_opaque_existential_1(v11, v12);
      (*(v6 + 8))(a1, v5, v6);
      sub_1A524D794();
    }
  }

  else
  {
    v10 = 0;
    v8 = 0u;
    v9 = 0u;
  }

  sub_1A4373804(&v8);
  return 0;
}

uint64_t sub_1A4373A34(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v5 = a1;
  v7 = sub_1A4373910(a3, v6);
  swift_unknownObjectRelease();

  return v7 & 1;
}

uint64_t OneUpGroupActivityExitAction.description.getter()
{
  v1 = 0x657661656CLL;
  if (*v0 != 1)
  {
    v1 = 6581861;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6573756170;
  }
}

uint64_t OneUpGroupActivityExitAction.hashValue.getter()
{
  v1 = *v0;
  sub_1A524EC94();
  MEMORY[0x1A590A010](v1);
  return sub_1A524ECE4();
}

uint64_t sub_1A4373B60()
{
  v1 = 0x657661656CLL;
  if (*v0 != 1)
  {
    v1 = 6581861;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6573756170;
  }
}

uint64_t OneUpGroupActivity.metadata.getter()
{
  v0 = sub_1A5241994();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1A5241974();
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1A52419D4();
  sub_1A5241964();
  sub_1A52419B4();
  v2 = sub_1A524C634();
  v3 = PXLocalizedString(v2);

  v4 = sub_1A524C674();
  v6 = v5;

  MEMORY[0x1A58FCD30](v4, v6);
  sub_1A5241984();
  return sub_1A52419A4();
}

void OneUpGroupActivity.version.getter(_DWORD *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

_DWORD *OneUpGroupActivity.version.setter(_DWORD *result)
{
  v2 = result[1];
  *v1 = *result;
  v1[1] = v2;
  return result;
}

void OneUpGroupActivity.minimumCompatibleVersion.getter(_DWORD *a1@<X8>)
{
  v2 = *(v1 + 12);
  *a1 = *(v1 + 8);
  a1[1] = v2;
}

_DWORD *OneUpGroupActivity.minimumCompatibleVersion.setter(_DWORD *result)
{
  v2 = result[1];
  *(v1 + 8) = *result;
  *(v1 + 12) = v2;
  return result;
}

uint64_t *sub_1A4373D54()
{
  result = sub_1A3F67A3C();
  v1 = *(result + 1);
  v2 = *(result + 1);
  LOWORD(dword_1EB1BABE8) = *result;
  HIWORD(dword_1EB1BABE8) = v1;
  dword_1EB1BABEC = v2;
  return result;
}

uint64_t static OneUpGroupActivity.localMinimumCompatibleVersion.getter@<X0>(_DWORD *a1@<X8>)
{
  if (qword_1EB1BABE0 != -1)
  {
    v2 = a1;
    result = swift_once();
    a1 = v2;
  }

  v1 = dword_1EB1BABEC;
  *a1 = dword_1EB1BABE8;
  a1[1] = v1;
  return result;
}

uint64_t type metadata accessor for OneUpGroupActivity(uint64_t a1)
{
  result = qword_1EB1BB180;
  if (!qword_1EB1BB180)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OneUpGroupActivity.activeAssetMetadata.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for OneUpGroupActivity(0) + 28);

  return sub_1A4373F00(a1, v3);
}

uint64_t sub_1A4373F00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OneUpSharePlayAssetMetadata(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t OneUpGroupActivity.isPaused.setter(char a1)
{
  result = type metadata accessor for OneUpGroupActivity(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t OneUpGroupActivity.init(initialDataSource:initialIndexPath:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for OneUpGroupActivity(0);
  *(a6 + *(v12 + 32)) = 0;
  v13 = sub_1A3F67960();
  v14 = *(v13 + 1);
  *a6 = *v13;
  *(a6 + 4) = v14;
  v15 = sub_1A3F67A3C();
  v16 = *(v15 + 1);
  *(a6 + 8) = *v15;
  *(a6 + 12) = v16;
  *(a6 + 16) = [a1 identifier];
  *&v22 = a2;
  *(&v22 + 1) = a3;
  v23 = a4;
  v24 = a5;
  v17 = [a1 assetAtItemIndexPath_];
  v18 = swift_unknownObjectRetain();
  OneUpSharePlayOverridableAsset.init(asset:)(v18, &v22);
  v21 = v22;
  v19 = sub_1A3C5A374();
  OneUpSharePlayAssetMetadata.init(asset:includingTitleInfo:)(&v21, v19 & 1, a6 + *(v12 + 28));

  return swift_unknownObjectRelease();
}

uint64_t OneUpGroupActivity.isCompatibleWithCurrentVersion.getter()
{
  sub_1A3F67960();
  sub_1A3DC4364();
  if (sub_1A524C534())
  {
    v0 = 0;
  }

  else
  {
    if (qword_1EB1BABE0 != -1)
    {
      swift_once();
    }

    v0 = sub_1A524C534() ^ 1;
  }

  return v0 & 1;
}

unint64_t sub_1A437422C()
{
  v1 = *v0;
  v2 = 0x6E6F6973726576;
  v3 = 0xD00000000000001ELL;
  v4 = 0x6465737561507369;
  if (v1 == 3)
  {
    v4 = 0xD000000000000013;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000018;
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

uint64_t sub_1A43742D4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A4378518(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A43742FC(uint64_t a1)
{
  v2 = sub_1A43745D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A4374338(uint64_t a1)
{
  v2 = sub_1A43745D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t OneUpGroupActivity.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1A4374A3C(0, &qword_1EB138B08, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A43745D8();
  sub_1A524ED34();
  v10 = v3[1];
  v14 = *v3;
  v15 = v10;
  HIBYTE(v13) = 0;
  sub_1A3DC41B0();
  sub_1A524E9D4();
  if (!v2)
  {
    v11 = v3[3];
    v14 = v3[2];
    v15 = v11;
    HIBYTE(v13) = 1;
    sub_1A524E9D4();
    LOBYTE(v14) = 2;
    sub_1A524E9C4();
    type metadata accessor for OneUpGroupActivity(0);
    LOBYTE(v14) = 3;
    type metadata accessor for OneUpSharePlayAssetMetadata(0);
    sub_1A4374AA0(&qword_1EB131B78, type metadata accessor for OneUpSharePlayAssetMetadata, &protocol conformance descriptor for OneUpSharePlayAssetMetadata);
    sub_1A524E9D4();
    LOBYTE(v14) = 4;
    sub_1A524E9A4();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_1A43745D8()
{
  result = qword_1EB1BABF0[0];
  if (!qword_1EB1BABF0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1BABF0);
  }

  return result;
}

uint64_t OneUpGroupActivity.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v28 = type metadata accessor for OneUpSharePlayAssetMetadata(0);
  MEMORY[0x1EEE9AC00](v28);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4374A3C(0, &qword_1EB138B10, MEMORY[0x1E69E6F48]);
  v29 = v5;
  v27 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v24 - v6;
  v8 = type metadata accessor for OneUpGroupActivity(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A43745D8();
  v11 = v30;
  sub_1A524ED14();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v24 = v8;
  v25 = v4;
  v30 = a1;
  v12 = v27;
  v13 = v10;
  v31 = 0;
  sub_1A3DC42BC();
  v14 = v29;
  sub_1A524E8E4();
  v15 = v33;
  *v13 = v32;
  *(v13 + 1) = v15;
  v31 = 1;
  sub_1A524E8E4();
  v16 = v33;
  *(v13 + 2) = v32;
  *(v13 + 3) = v16;
  LOBYTE(v32) = 2;
  v17 = v13;
  *(v13 + 2) = sub_1A524E8D4();
  LOBYTE(v32) = 3;
  sub_1A4374AA0(&qword_1EB131B98, type metadata accessor for OneUpSharePlayAssetMetadata, &protocol conformance descriptor for OneUpSharePlayAssetMetadata);
  v18 = v25;
  sub_1A524E8E4();
  v19 = v24;
  sub_1A4374AE8(v18, v17 + *(v24 + 28));
  LOBYTE(v32) = 4;
  v20 = sub_1A524E8B4();
  v21 = v12;
  v22 = *(v19 + 32);
  (*(v21 + 8))(v7, v14);
  *(v17 + v22) = v20 & 1;
  sub_1A4378830(v17, v26, type metadata accessor for OneUpGroupActivity);
  __swift_destroy_boxed_opaque_existential_0(v30);
  return sub_1A4374B4C(v17, type metadata accessor for OneUpGroupActivity);
}

void sub_1A4374A3C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1A43745D8();
    v7 = a3(a1, &type metadata for OneUpGroupActivity.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1A4374AA0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A4374AE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OneUpSharePlayAssetMetadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A4374B4C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A4374BB0()
{
  sub_1A5241994();
  swift_task_alloc();
  sub_1A5241974();
  swift_task_alloc();
  sub_1A52419D4();
  sub_1A5241964();
  sub_1A52419B4();
  v1 = sub_1A524C634();
  v2 = PXLocalizedString(v1);

  v3 = sub_1A524C674();
  v5 = v4;

  MEMORY[0x1A58FCD30](v3, v5);
  sub_1A5241984();
  sub_1A52419A4();

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1A4374D08(uint64_t a1)
{
  v2 = sub_1A4374AA0(&unk_1EB1407E0, type metadata accessor for OneUpGroupActivity, &protocol conformance descriptor for OneUpGroupActivity);

  return MEMORY[0x1EEDC7548](a1, v2);
}

void sub_1A4374D84(_DWORD *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

void sub_1A4374D90(_DWORD *a1@<X8>)
{
  v2 = *(v1 + 12);
  *a1 = *(v1 + 8);
  a1[1] = v2;
}

uint64_t sub_1A4374D9C@<X0>(_DWORD *a1@<X8>)
{
  if (qword_1EB1BABE0 != -1)
  {
    v2 = a1;
    result = swift_once();
    a1 = v2;
  }

  v1 = dword_1EB1BABEC;
  *a1 = dword_1EB1BABE8;
  a1[1] = v1;
  return result;
}

uint64_t sub_1A4374EA8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1A4374AA0(&unk_1EB1407E0, type metadata accessor for OneUpGroupActivity, &protocol conformance descriptor for OneUpGroupActivity);
  *v5 = v2;
  v5[1] = sub_1A3D60150;

  return MEMORY[0x1EEDC7538](a1, a2, v6);
}

uint64_t sub_1A4374F8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  v8 = sub_1A4374AA0(&unk_1EB1407E0, type metadata accessor for OneUpGroupActivity, &protocol conformance descriptor for OneUpGroupActivity);
  *v7 = v3;
  v7[1] = sub_1A3CA8098;

  return MEMORY[0x1EEDC7530](a1, a2, a3, v8);
}

uint64_t sub_1A4375080(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = sub_1A4374AA0(&unk_1EB1407E0, type metadata accessor for OneUpGroupActivity, &protocol conformance descriptor for OneUpGroupActivity);
  *v3 = v1;
  v3[1] = sub_1A437515C;

  return MEMORY[0x1EEDC7540](a1, v4);
}

uint64_t sub_1A437515C(char a1)
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

uint64_t GroupSession<>.currentState.getter@<X0>(uint64_t *a1@<X8>)
{
  sub_1A43754B4(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - v8;
  sub_1A5241B04();
  (*(v4 + 16))(v6, v9, v3);
  v10 = (*(v4 + 88))(v6, v3);
  if (v10 == *MEMORY[0x1E696B2C0])
  {
    (*(v4 + 8))(v9, v3);
    result = (*(v4 + 96))(v6, v3);
    v12 = *v6;
LABEL_7:
    *a1 = v12;
    return result;
  }

  if (v10 == *MEMORY[0x1E696B2D0])
  {
    result = (*(v4 + 8))(v9, v3);
    v12 = 0;
    goto LABEL_7;
  }

  if (v10 == *MEMORY[0x1E696B2C8])
  {
    result = (*(v4 + 8))(v9, v3);
    v12 = 1;
    goto LABEL_7;
  }

  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

uint64_t GroupSession<>.stateChangePublisher.getter()
{
  v1 = *v0;
  sub_1A437565C(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5241B14();
  *(swift_allocObject() + 16) = v1;
  sub_1A4374AA0(&qword_1EB138B28, sub_1A437565C, MEMORY[0x1E695C068]);
  sub_1A5247A24();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1A4375690@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1A43754B4(0);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = (&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v6 + 16))(v9, a1, v5, v7);
  result = (*(v6 + 88))(v9, v5);
  if (result == *MEMORY[0x1E696B2C0])
  {
    result = (*(v6 + 96))(v9, v5);
    v11 = *v9;
LABEL_7:
    *a2 = v11;
    return result;
  }

  if (result == *MEMORY[0x1E696B2D0])
  {
    v11 = 0;
    goto LABEL_7;
  }

  if (result == *MEMORY[0x1E696B2C8])
  {
    v11 = 1;
    goto LABEL_7;
  }

  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

void (*sub_1A437584C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A5241B24();
  return sub_1A3D3D728;
}

uint64_t sub_1A43758C4()
{
  v1 = *v0;
  sub_1A437565C(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5241B14();
  *(swift_allocObject() + 16) = v1;
  sub_1A4374AA0(&qword_1EB138B28, sub_1A437565C, MEMORY[0x1E695C068]);
  sub_1A5247A24();

  return (*(v4 + 8))(v6, v3);
}

uint64_t GroupSessionMessenger.send<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_1A5241C04();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A4375B34, 0, 0);
}

uint64_t sub_1A4375B34()
{
  (*(v0[8] + 104))(v0[9], *MEMORY[0x1E696B350], v0[7]);
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_1A4375BFC;
  v2 = v0[9];
  v3 = v0[5];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[2];

  return MEMORY[0x1EEDC7410](v6, v2, v4, v5, v3);
}

uint64_t sub_1A4375BFC()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *v1;
  *(v5 + 88) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A4375DA4, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1A4375DA4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t GroupSessionMessenger.messagesStream<A>(of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1A5241BE4();
  swift_getTupleTypeMetadata2();
  v7 = sub_1A524CCE4();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17[-v8];
  v10 = sub_1A5241A54();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v17[-v12];
  sub_1A5241A64();
  v18 = a2;
  v19 = a3;
  v20 = a4;
  v21 = v13;
  swift_checkMetadataState();
  v14 = *MEMORY[0x1E69E8650];
  v15 = sub_1A524CCE4();
  (*(*(v15 - 8) + 104))(v9, v14, v15);
  sub_1A524CD64();
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_1A4376004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v36 = a4;
  v37 = a5;
  v38 = a2;
  v34 = a1;
  sub_1A5241BE4();
  swift_getTupleTypeMetadata2();
  v35 = sub_1A524CD14();
  v7 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v9 = &v31 - v8;
  v32 = &v31 - v8;
  v33 = a3;
  v10 = a3;
  v11 = sub_1A5241A54();
  v31 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v31 - v14;
  sub_1A3DB4F20(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1A524CCB4();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  (*(v12 + 16))(v15, v38, v11);
  v20 = v9;
  v21 = v35;
  (*(v7 + 16))(v20, a1, v35);
  v22 = (*(v12 + 80) + 56) & ~*(v12 + 80);
  v23 = (v13 + v22 + *(v7 + 80)) & ~*(v7 + 80);
  v24 = swift_allocObject();
  *(v24 + 2) = 0;
  *(v24 + 3) = 0;
  *(v24 + 4) = v10;
  v26 = v36;
  v25 = v37;
  *(v24 + 5) = v36;
  *(v24 + 6) = v25;
  (*(v12 + 32))(&v24[v22], v15, v31);
  (*(v7 + 32))(&v24[v23], v32, v21);
  v27 = sub_1A3D4D930(0, 0, v18, &unk_1A5333A58, v24);
  v28 = sub_1A3EE1368(v27, MEMORY[0x1E69E7CA8] + 8);

  v29 = swift_allocObject();
  v29[2] = v33;
  v29[3] = v26;
  v29[4] = v25;
  v29[5] = v28;
  return sub_1A524CCD4();
}

uint64_t sub_1A4376370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v10 = sub_1A5241BE4();
  v8[7] = v10;
  v8[8] = swift_getTupleTypeMetadata2();
  v8[9] = swift_task_alloc();
  v8[10] = *(v10 - 8);
  v8[11] = swift_task_alloc();
  v8[12] = *(a6 - 8);
  v8[13] = swift_task_alloc();
  v11 = sub_1A524CCC4();
  v8[14] = v11;
  v8[15] = *(v11 - 8);
  v8[16] = swift_task_alloc();
  v12 = sub_1A5241A04();
  v8[17] = v12;
  v8[18] = *(v12 - 8);
  v8[19] = swift_task_alloc();
  v8[20] = swift_getTupleTypeMetadata2();
  sub_1A524DF24();
  v8[21] = swift_task_alloc();
  v13 = sub_1A5241A44();
  v8[22] = v13;
  v8[23] = *(v13 - 8);
  v8[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A437666C, 0, 0);
}

uint64_t sub_1A437666C()
{
  sub_1A5241A54();
  sub_1A5241A34();
  v1 = swift_task_alloc();
  v0[25] = v1;
  WitnessTable = swift_getWitnessTable();
  *v1 = v0;
  v1[1] = sub_1A4376754;
  v3 = v0[21];
  v4 = v0[22];

  return MEMORY[0x1EEE6D8E0](v3, 0, 0, v4, WitnessTable);
}

uint64_t sub_1A4376754()
{

  if (!v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A4376864, 0, 0);
  }

  return result;
}

uint64_t sub_1A4376864()
{
  v1 = v0[21];
  if ((*(*(v0[20] - 8) + 48))(v1, 1, v0[20]) == 1)
  {
    (*(v0[23] + 8))(v0[24], v0[22]);
    sub_1A524CD14();
    sub_1A524CD04();

    v2 = v0[1];

    return v2();
  }

  else
  {
    v20 = v0[17];
    v21 = v0[16];
    v22 = v0[15];
    v23 = v0[14];
    v4 = v0[12];
    v5 = v0[13];
    v7 = v0[10];
    v6 = v0[11];
    v8 = v0[9];
    v16 = v0[8];
    v17 = v0[7];
    v18 = v0[18];
    v9 = v0[4];
    v19 = v0[19];
    (*(v18 + 32))();
    v10 = *(v4 + 32);
    v10(v5, v1, v9);
    sub_1A52419F4();
    v11 = *(v16 + 48);
    v10(v8, v5, v9);
    (*(v7 + 32))(v8 + v11, v6, v17);
    sub_1A524CD14();
    sub_1A524CCF4();
    (*(v22 + 8))(v21, v23);
    (*(v18 + 8))(v19, v20);
    v12 = swift_task_alloc();
    v0[25] = v12;
    WitnessTable = swift_getWitnessTable();
    *v12 = v0;
    v12[1] = sub_1A4376754;
    v14 = v0[21];
    v15 = v0[22];

    return MEMORY[0x1EEE6D8E0](v14, 0, 0, v15, WitnessTable);
  }
}

uint64_t sub_1A4376B4C@<X0>(uint64_t *a3@<X8>)
{
  swift_allocObject();
  result = sub_1A5241A24();
  *a3 = result;
  return result;
}

uint64_t sub_1A4376BA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1A3CA8098;

  return GroupSessionMessenger.send<A>(_:)(a1, a2, a3, a4);
}

uint64_t sub_1A4376C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1A3CA8098;

  return MEMORY[0x1EEDC7410](a1, a2, a3, a4, a5);
}

uint64_t GroupSessionJournal.attachmentsStream.getter()
{
  sub_1A4376F2C(0, &qword_1EB138B30, sub_1A4376F90, MEMORY[0x1E69E8658]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v10[-v3];
  v5 = sub_1A5241914();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A5241924();
  v11 = v8;
  sub_1A4376F90(0);
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8650], v1);
  sub_1A524CD64();
  return (*(v6 + 8))(v8, v5);
}

void sub_1A4376F2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A4376FC4(uint64_t a1, uint64_t a2)
{
  v25 = a1;
  v26 = a2;
  sub_1A4376F2C(0, &qword_1EB138BD0, sub_1A4376F90, MEMORY[0x1E69E8660]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v23 - v6;
  v24 = &v23 - v6;
  v8 = sub_1A5241914();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3DB4F20(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1A524CCB4();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  (*(v9 + 16))(v11, v26, v8);
  v16 = v7;
  v17 = v4;
  (*(v5 + 16))(v16, a1, v4);
  v18 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v19 = (v10 + *(v5 + 80) + v18) & ~*(v5 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + 24) = 0;
  (*(v9 + 32))(v20 + v18, v11, v8);
  (*(v5 + 32))(v20 + v19, v24, v17);
  v21 = sub_1A3D4D930(0, 0, v14, &unk_1A5333A40, v20);
  sub_1A3EE1368(v21, MEMORY[0x1E69E7CA8] + 8);

  return sub_1A524CCD4();
}

unint64_t sub_1A43772EC()
{
  result = qword_1EB138B40;
  if (!qword_1EB138B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB138B40);
  }

  return result;
}

void sub_1A43774A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for OneUpGroupActivity(255);
    v7 = sub_1A4374AA0(&unk_1EB1407E0, type metadata accessor for OneUpGroupActivity, &protocol conformance descriptor for OneUpGroupActivity);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1A4377620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  sub_1A4376F2C(0, &qword_1EB138BD8, sub_1A4376F90, MEMORY[0x1E69E8638]);
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v7 = sub_1A5241904();
  v5[10] = v7;
  v5[11] = *(v7 - 8);
  v5[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A437776C, 0, 0);
}

uint64_t sub_1A437776C()
{
  sub_1A52418F4();
  v1 = sub_1A4374AA0(&qword_1EB138BE0, MEMORY[0x1E696B238], MEMORY[0x1E696B240]);
  v2 = swift_task_alloc();
  *(v0 + 104) = v2;
  *v2 = v0;
  v2[1] = sub_1A4377854;
  v3 = *(v0 + 80);

  return MEMORY[0x1EEE6D8C8](v0 + 16, v3, v1);
}

uint64_t sub_1A4377854()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_1A4377B94;
  }

  else
  {
    v2 = sub_1A4377968;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A437798C()
{
  v1 = v0[15];
  if (v1)
  {
    v3 = v0[8];
    v2 = v0[9];
    v4 = v0[7];
    v0[4] = v1;
    sub_1A4376F2C(0, &qword_1EB138BD0, sub_1A4376F90, MEMORY[0x1E69E8660]);
    sub_1A524CCF4();
    (*(v3 + 8))(v2, v4);
    v5 = sub_1A4374AA0(&qword_1EB138BE0, MEMORY[0x1E696B238], MEMORY[0x1E696B240]);
    v6 = swift_task_alloc();
    v0[13] = v6;
    *v6 = v0;
    v6[1] = sub_1A4377854;
    v7 = v0[10];

    return MEMORY[0x1EEE6D8C8](v0 + 2, v7, v5);
  }

  else
  {
    (*(v0[11] + 8))(v0[12], v0[10]);
    sub_1A4376F2C(0, &qword_1EB138BD0, sub_1A4376F90, MEMORY[0x1E69E8660]);
    sub_1A524CD04();

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_1A4377B94()
{
  *(v0 + 24) = *(v0 + 112);
  sub_1A3DBD9A0();
  v1 = MEMORY[0x1E69E73E0];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x1E69E7410];

  return MEMORY[0x1EEE6C240](v2, v1, v3);
}

uint64_t sub_1A4377C14()
{
  sub_1A4376F2C(0, &qword_1EB138B30, sub_1A4376F90, MEMORY[0x1E69E8658]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v10[-v3];
  v5 = sub_1A5241914();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A5241924();
  v11 = v8;
  sub_1A4376F90(0);
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8650], v1);
  sub_1A524CD64();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1A4377DF4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A5241954();
  *a1 = result;
  return result;
}

uint64_t sub_1A4377E1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_1A3CA8098;

  return MEMORY[0x1EEDC7358](a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1A4377F18(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3CA8098;

  return MEMORY[0x1EEDC7360](a1);
}

uint64_t sub_1A4377FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1A3CA8098;

  return MEMORY[0x1EEDC7328](a1, a2, a3, a4);
}

uint64_t sub_1A4378078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1A3D60150;

  return MEMORY[0x1EEDC7318](a1, a2, a3, a4, a5);
}

uint64_t sub_1A4378144(uint64_t a1)
{
  result = sub_1A4374AA0(&qword_1EB138B88, MEMORY[0x1E696B228], MEMORY[0x1E696B230]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A43781D4(uint64_t a1)
{
  result = type metadata accessor for OneUpSharePlayAssetMetadata(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1A437829C(uint64_t a1)
{
  if (!qword_1EB138BA8)
  {
    sub_1A437565C(255);
    sub_1A4374AA0(&qword_1EB138B28, sub_1A437565C, MEMORY[0x1E695C068]);
    v1 = sub_1A52477F4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB138BA8);
    }
  }
}

void sub_1A437836C(uint64_t a1)
{
  if (!qword_1EB138BC0)
  {
    sub_1A5241BE4();
    sub_1A4374AA0(&qword_1EB138BC8, MEMORY[0x1E696B330], MEMORY[0x1E696B338]);
    v1 = sub_1A524CFA4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB138BC0);
    }
  }
}

unint64_t sub_1A4378414()
{
  result = qword_1EB1BB290[0];
  if (!qword_1EB1BB290[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1BB290);
  }

  return result;
}

unint64_t sub_1A437846C()
{
  result = qword_1EB1BB3A0;
  if (!qword_1EB1BB3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1BB3A0);
  }

  return result;
}

unint64_t sub_1A43784C4()
{
  result = qword_1EB1BB3A8[0];
  if (!qword_1EB1BB3A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1BB3A8);
  }

  return result;
}

uint64_t sub_1A4378518(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v4 || (sub_1A524EAB4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001A53B70A0 == a2 || (sub_1A524EAB4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001A53D3980 == a2 || (sub_1A524EAB4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001A53D39A0 == a2 || (sub_1A524EAB4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6465737561507369 && a2 == 0xE800000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1A524EAB4();

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

uint64_t sub_1A43786D0()
{
  v2 = *(sub_1A5241914() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  sub_1A4376F2C(0, &qword_1EB138BD0, sub_1A4376F90, MEMORY[0x1E69E8660]);
  v6 = (v4 + *(*(v5 - 8) + 80)) & ~*(*(v5 - 8) + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1A3D60150;

  return sub_1A4377620(v7, v8, v9, v0 + v3, v0 + v6);
}

uint64_t sub_1A4378830(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A4378898()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = *(sub_1A5241A54() - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  sub_1A5241BE4();
  swift_getTupleTypeMetadata2();
  v8 = *(sub_1A524CD14() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_1A3CA8098;

  return sub_1A4376370(v10, v11, v12, v0 + v6, v0 + v9, v2, v3, v4);
}

uint64_t sub_1A4378A60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31[1] = a2;
  v31[0] = type metadata accessor for GenerativeStoryBasicPromptInputView(0);
  MEMORY[0x1EEE9AC00](v31[0]);
  v4 = v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A437BE6C(0, &qword_1EB138C80, MEMORY[0x1E697F948]);
  v31[2] = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = v31 - v6;
  sub_1A4379434(0, &qword_1EB138C88, MEMORY[0x1E697F948]);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v31 - v9;
  sub_1A4379434(0, &qword_1EB138C00, MEMORY[0x1E697F960]);
  v31[3] = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v31 - v12;
  v14 = type metadata accessor for GenerativeStorySystemPromptInputView(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C56110(0, v17);
  v18 = [swift_getObjCClassFromMetadata() sharedInstance];
  v19 = [v18 promptEntryViewType];

  if (v19 == 2)
  {
    v33 = 0;
  }

  else
  {
    if (v19 == 1)
    {
      sub_1A437AE40(0, &qword_1EB121438, type metadata accessor for GenerativeStoryCreationViewModel, MEMORY[0x1E6981AA0]);
      sub_1A524BAA4();
      type metadata accessor for GenerativeStoryCreationViewModel(0);
      sub_1A437C0E0(&qword_1EB125388, type metadata accessor for GenerativeStoryCreationViewModel, &unk_1A53454B8);
      sub_1A524BAC4();
      v26 = &v4[*(v31[0] + 20)];
      *v26 = sub_1A5247C34() & 1;
      *(v26 + 1) = v27;
      v26[16] = v28 & 1;
      v24 = type metadata accessor for GenerativeStoryBasicPromptInputView;
      sub_1A437C018(v4, v10, type metadata accessor for GenerativeStoryBasicPromptInputView);
      swift_storeEnumTagMultiPayload();
      sub_1A437C0E0(&qword_1EB125240, type metadata accessor for GenerativeStorySystemPromptInputView, &unk_1A5326F30);
      sub_1A437962C();
      sub_1A5249744();
      sub_1A437BF20(v13, v7);
      swift_storeEnumTagMultiPayload();
      sub_1A437B8F4(0, &qword_1EB138C08, MEMORY[0x1E6981E70], MEMORY[0x1E6981E70], MEMORY[0x1E697F960]);
      sub_1A4379560();
      sub_1A4379684();
      sub_1A5249744();
      sub_1A437BFA0(v13);
      v25 = v4;
      return sub_1A437C080(v25, v24);
    }

    if (!v19)
    {
      sub_1A437AE40(0, &qword_1EB121438, type metadata accessor for GenerativeStoryCreationViewModel, MEMORY[0x1E6981AA0]);
      sub_1A524BAA4();
      v20 = a1 + *(type metadata accessor for GenerativeStoryPromptInputView(0) + 20);
      v21 = *(v20 + 8);
      v22 = *(v20 + 16);
      v23 = *v20;

      sub_1A42266F4(v23, v21, v22, v16);
      v24 = type metadata accessor for GenerativeStorySystemPromptInputView;
      sub_1A437C018(v16, v10, type metadata accessor for GenerativeStorySystemPromptInputView);
      swift_storeEnumTagMultiPayload();
      sub_1A437C0E0(&qword_1EB125240, type metadata accessor for GenerativeStorySystemPromptInputView, &unk_1A5326F30);
      sub_1A437962C();
      sub_1A5249744();
      sub_1A437BF20(v13, v7);
      swift_storeEnumTagMultiPayload();
      sub_1A437B8F4(0, &qword_1EB138C08, MEMORY[0x1E6981E70], MEMORY[0x1E6981E70], MEMORY[0x1E697F960]);
      sub_1A4379560();
      sub_1A4379684();
      sub_1A5249744();
      sub_1A437BFA0(v13);
      v25 = v16;
      return sub_1A437C080(v25, v24);
    }

    v33 = 1;
  }

  v30 = MEMORY[0x1E6981E70];
  sub_1A5249744();
  *v7 = v32;
  swift_storeEnumTagMultiPayload();
  sub_1A437B8F4(0, &qword_1EB138C08, v30, v30, MEMORY[0x1E697F960]);
  sub_1A4379560();
  sub_1A4379684();
  return sub_1A5249744();
}

void sub_1A43790D8()
{
  v0 = sub_1A524C634();
  v1 = PXMemoryCreationLocalizedString(v0);

  v2 = sub_1A524C674();
  v4 = v3;

  qword_1EB1EAE30 = v2;
  *algn_1EB1EAE38 = v4;
}

uint64_t *sub_1A4379150()
{
  if (qword_1EB163DB0 != -1)
  {
    swift_once();
  }

  return &qword_1EB1EAE30;
}

uint64_t sub_1A43791A0@<X0>(char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  type metadata accessor for GenerativeStoryCreationViewModel(0);
  sub_1A437C0E0(&qword_1EB125388, type metadata accessor for GenerativeStoryCreationViewModel, &unk_1A53454B8);
  sub_1A524BAC4();
  result = type metadata accessor for GenerativeStoryPromptInputView(0);
  v10 = a5 + *(result + 20);
  *v10 = a2;
  *(v10 + 8) = a3;
  *(v10 + 16) = a4;
  return result;
}

void sub_1A437929C(uint64_t a1)
{
  sub_1A437AE40(319, &qword_1EB121438, type metadata accessor for GenerativeStoryCreationViewModel, MEMORY[0x1E6981AA0]);
  if (v1 <= 0x3F)
  {
    sub_1A4222DB0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1A4379350(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void), uint64_t a4)
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

void sub_1A43793C0(uint64_t a1, double a2)
{
  if (!qword_1EB138BF0)
  {
    sub_1A437BE6C(255, &qword_1EB138BF8, MEMORY[0x1E697F960]);
    v2 = sub_1A524B514();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB138BF0);
    }
  }
}

void sub_1A4379434(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for GenerativeStorySystemPromptInputView(255);
    v7 = type metadata accessor for GenerativeStoryBasicPromptInputView(255);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1A43794C4(double a1)
{
  result = qword_1EB138C10;
  if (!qword_1EB138C10)
  {
    sub_1A437BE6C(255, &qword_1EB138BF8, MEMORY[0x1E697F960]);
    sub_1A4379560();
    sub_1A4379684();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB138C10);
  }

  return result;
}

unint64_t sub_1A4379560()
{
  result = qword_1EB138C18;
  if (!qword_1EB138C18)
  {
    sub_1A4379434(255, &qword_1EB138C00, MEMORY[0x1E697F960]);
    sub_1A437C0E0(&qword_1EB125240, type metadata accessor for GenerativeStorySystemPromptInputView, &unk_1A5326F30);
    sub_1A437962C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB138C18);
  }

  return result;
}

unint64_t sub_1A437962C()
{
  result = qword_1EB160C20[0];
  if (!qword_1EB160C20[0])
  {
    type metadata accessor for GenerativeStoryBasicPromptInputView(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB160C20);
  }

  return result;
}

unint64_t sub_1A4379684()
{
  result = qword_1EB138C20;
  if (!qword_1EB138C20)
  {
    sub_1A437B8F4(255, &qword_1EB138C08, MEMORY[0x1E6981E70], MEMORY[0x1E6981E70], MEMORY[0x1E697F960]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB138C20);
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A437AE40(0, &qword_1EB121438, type metadata accessor for GenerativeStoryCreationViewModel, MEMORY[0x1E6981AA0]);
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

void __swift_store_extra_inhabitant_indexTm_3(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1A437AE40(0, &qword_1EB121438, type metadata accessor for GenerativeStoryCreationViewModel, MEMORY[0x1E6981AA0]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }
}

void sub_1A437992C(uint64_t a1)
{
  sub_1A437AE40(319, &qword_1EB121438, type metadata accessor for GenerativeStoryCreationViewModel, MEMORY[0x1E6981AA0]);
  if (v1 <= 0x3F)
  {
    sub_1A437B8F4(319, &qword_1EB1249A0, MEMORY[0x1E69E6370], MEMORY[0x1E69E6380], MEMORY[0x1E697BDF0]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1A4379A28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v130 = a2;
  sub_1A437B8F4(0, &qword_1EB127450, MEMORY[0x1E6981748], MEMORY[0x1E6981710], MEMORY[0x1E697D670]);
  v128 = *(v3 - 8);
  v129 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v127 = v94 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v126 = v94 - v6;
  v7 = sub_1A5248524();
  v124 = *(v7 - 8);
  v125 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v122 = v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for GenerativeStoryBasicPromptInputView(0);
  v10 = v9 - 8;
  v119 = *(v9 - 8);
  v134 = *(v119 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v117 = v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_1A5247F04();
  v116 = *(v132 - 1);
  MEMORY[0x1EEE9AC00](v132);
  v112 = v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_1A5249E14();
  v111 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v105 = v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A437AE40(0, &qword_1EB121438, type metadata accessor for GenerativeStoryCreationViewModel, MEMORY[0x1E6981AA0]);
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v94 - v17;
  sub_1A437B8F4(0, &unk_1EB143960, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D7D0]);
  v20 = v19;
  v99 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = v94 - v21;
  sub_1A437B7C0(0);
  v101 = v23;
  v102 = *(v23 - 8);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = v94 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A437B690(0, v24);
  v103 = v27;
  v104 = *(v27 - 8);
  v28 = MEMORY[0x1EEE9AC00](v27);
  v98 = v94 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A437B528(0, v28);
  v107 = v30;
  v108 = *(v30 - 8);
  v31 = MEMORY[0x1EEE9AC00](v30);
  v100 = v94 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A437B390(0, v31);
  v113 = v33;
  v114 = *(v33 - 8);
  v34 = MEMORY[0x1EEE9AC00](v33);
  v133 = v94 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A437B1AC(0, v34);
  v118 = v36;
  v120 = *(v36 - 8);
  v37 = MEMORY[0x1EEE9AC00](v36);
  v109 = v94 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A437AF40(0, v37);
  v121 = v39 - 8;
  MEMORY[0x1EEE9AC00](v39 - 8);
  v123 = v94 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v115 = v94 - v42;
  sub_1A524BAB4();
  swift_getKeyPath();
  v106 = v15;
  sub_1A524BAD4();

  (*(v16 + 8))(v18, v15);
  sub_1A524BDD4();
  v43 = (a1 + *(v10 + 28));
  v97 = *v43;
  v96 = *(v43 + 1);
  v95 = v43[16];
  LOBYTE(v136) = v97;
  v137 = v96;
  LOBYTE(v138) = v95;
  sub_1A437B8F4(0, &qword_1EB1249A0, MEMORY[0x1E69E6370], MEMORY[0x1E69E6380], MEMORY[0x1E697BDF0]);
  v94[1] = v44;
  sub_1A5247C24();
  v45 = sub_1A437B870();
  sub_1A524B074();

  (*(v99 + 8))(v22, v20);
  v46 = v105;
  sub_1A5249E04();
  v136 = v20;
  v137 = v45;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v48 = sub_1A437C0E0(&qword_1EB138C78, MEMORY[0x1E697CA80], MEMORY[0x1E697CA78]);
  v49 = v98;
  v50 = v101;
  v51 = v110;
  sub_1A524AB44();
  v52 = v51;
  (*(v111 + 8))(v46, v51);
  (*(v102 + 8))(v26, v50);
  v53 = v112;
  sub_1A5247EF4();
  v136 = v50;
  v137 = v52;
  v138 = OpaqueTypeConformance2;
  v139 = v48;
  v54 = swift_getOpaqueTypeConformance2();
  v55 = v100;
  v56 = v103;
  sub_1A524A9D4();
  (*(v116 + 8))(v53, v132);
  (*(v104 + 8))(v49, v56);
  v131 = a1;
  v132 = type metadata accessor for GenerativeStoryBasicPromptInputView;
  v57 = v117;
  sub_1A437C018(a1, v117, type metadata accessor for GenerativeStoryBasicPromptInputView);
  v119 = *(v119 + 80);
  v58 = (v119 + 16) & ~v119;
  v59 = swift_allocObject();
  sub_1A437B948(v57, v59 + v58);
  v60 = v122;
  sub_1A5248514();
  v136 = v56;
  v137 = v54;
  v61 = swift_getOpaqueTypeConformance2();
  v62 = v107;
  sub_1A524B164();

  (*(v124 + 8))(v60, v125);
  (*(v108 + 8))(v55, v62);
  LOBYTE(v136) = v97;
  v137 = v96;
  LOBYTE(v138) = v95;
  sub_1A5247C04();
  v63 = v132;
  sub_1A437C018(a1, v57, v132);
  v64 = swift_allocObject();
  sub_1A437B948(v57, v64 + v58);
  v136 = v62;
  v137 = v61;
  v65 = swift_getOpaqueTypeConformance2();
  v66 = v109;
  v67 = v113;
  v68 = v133;
  sub_1A524B154();

  (*(v114 + 8))(v68, v67);
  v69 = v131;
  v70 = sub_1A524BAA4();
  LOBYTE(v56) = (*(*v136 + 584))(v70);

  LOBYTE(v135) = v56 & 1;
  sub_1A437C018(v69, v57, v63);
  v71 = swift_allocObject();
  sub_1A437B948(v57, v71 + v58);
  v136 = v67;
  v137 = MEMORY[0x1E69E6370];
  v138 = v65;
  v139 = MEMORY[0x1E69E6388];
  swift_getOpaqueTypeConformance2();
  v72 = v115;
  v73 = v118;
  sub_1A524B154();

  (*(v120 + 8))(v66, v73);
  v74 = v131;
  v75 = v132;
  sub_1A437C018(v131, v57, v132);
  v76 = swift_allocObject();
  sub_1A437B948(v57, v76 + v58);
  v77 = (v72 + *(v121 + 44));
  *v77 = sub_1A437C244;
  v77[1] = v76;
  v77[2] = 0;
  v77[3] = 0;
  sub_1A437C018(v74, v57, v75);
  v78 = swift_allocObject();
  sub_1A437B948(v57, v78 + v58);
  v79 = v126;
  sub_1A524B704();
  v80 = v123;
  sub_1A3CF4850(v72, v123, v81);
  v83 = v127;
  v82 = v128;
  v84 = *(v128 + 16);
  v85 = v129;
  v86 = v84(v127, v79, v129);
  v87 = v130;
  sub_1A3CF4850(v80, v130, v86);
  sub_1A437AEA4(0, v88);
  v84((v87 + *(v89 + 48)), v83, v85);
  v90 = *(v82 + 8);
  v91 = v90(v79, v85);
  sub_1A3CF48B4(v72, v91);
  v92 = v90(v83, v85);
  return sub_1A3CF48B4(v80, v92);
}

uint64_t sub_1A437A9E8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 416))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

void sub_1A437AAAC(uint64_t a1@<X8>)
{
  if (qword_1EB163DB0 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v2 = *algn_1EB1EAE38;
  *a1 = qword_1EB1EAE30;
  *(a1 + 8) = v2;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x1E69E7CC0];

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A437AB30()
{
  sub_1A437AE40(0, &qword_1EB124C88, MEMORY[0x1E69C1030], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v10 - v1;
  sub_1A437AE40(0, &qword_1EB121438, type metadata accessor for GenerativeStoryCreationViewModel, MEMORY[0x1E6981AA0]);
  sub_1A524BAA4();
  v3 = v11;
  v4 = sub_1A524BAA4();
  v5 = (*(*v11 + 416))(v4);
  v7 = v6;

  v8 = sub_1A5244854();
  (*(*(v8 - 8) + 56))(v2, 1, 1, v8);
  (*(*v3 + 1896))(v5, v7, v2);

  return sub_1A437BDE0(v2);
}

uint64_t sub_1A437AD18@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A524B544();
  *a1 = result;
  return result;
}

uint64_t sub_1A437AD60@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_1A5249314();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  sub_1A437ADA8(0);
  return sub_1A4379A28(v2, a2 + *(v4 + 44));
}

void sub_1A437ADA8(uint64_t a1)
{
  if (!qword_1EB138C28)
  {
    sub_1A437AE40(255, &qword_1EB138C30, sub_1A437AEA4, MEMORY[0x1E6981F40]);
    v1 = sub_1A52483B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB138C28);
    }
  }
}

void sub_1A437AE40(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A437AEA4(uint64_t a1, double a2)
{
  if (!qword_1EB138C38)
  {
    sub_1A437AF40(255, a2);
    sub_1A437B8F4(255, &qword_1EB127450, MEMORY[0x1E6981748], MEMORY[0x1E6981710], MEMORY[0x1E697D670]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB138C38);
    }
  }
}

void sub_1A437AF40(uint64_t a1, double a2)
{
  if (!qword_1EB138C40)
  {
    sub_1A437AFA0(255, a2);
    v2 = sub_1A5248804();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB138C40);
    }
  }
}

void sub_1A437AFA0(uint64_t a1, double a2)
{
  if (!qword_1EB138C48)
  {
    sub_1A437B1AC(255, a2);
    sub_1A437B390(255, v2);
    sub_1A437B528(255, v3);
    sub_1A437B690(255, v4);
    sub_1A437B7C0(255);
    sub_1A5249E14();
    sub_1A437B8F4(255, &unk_1EB143960, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D7D0]);
    sub_1A437B870();
    swift_getOpaqueTypeConformance2();
    sub_1A437C0E0(&qword_1EB138C78, MEMORY[0x1E697CA80], MEMORY[0x1E697CA78]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v6)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB138C48);
    }
  }
}

void sub_1A437B1AC(uint64_t a1, double a2)
{
  if (!qword_1EB138C50)
  {
    sub_1A437B390(255, a2);
    sub_1A437B528(255, v2);
    sub_1A437B690(255, v3);
    sub_1A437B7C0(255);
    sub_1A5249E14();
    sub_1A437B8F4(255, &unk_1EB143960, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D7D0]);
    sub_1A437B870();
    swift_getOpaqueTypeConformance2();
    sub_1A437C0E0(&qword_1EB138C78, MEMORY[0x1E697CA80], MEMORY[0x1E697CA78]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v5)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB138C50);
    }
  }
}

void sub_1A437B390(uint64_t a1, double a2)
{
  if (!qword_1EB138C58)
  {
    sub_1A437B528(255, a2);
    sub_1A437B690(255, v2);
    sub_1A437B7C0(255);
    sub_1A5249E14();
    sub_1A437B8F4(255, &unk_1EB143960, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D7D0]);
    sub_1A437B870();
    swift_getOpaqueTypeConformance2();
    sub_1A437C0E0(&qword_1EB138C78, MEMORY[0x1E697CA80], MEMORY[0x1E697CA78]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v4)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB138C58);
    }
  }
}

void sub_1A437B528(uint64_t a1, double a2)
{
  if (!qword_1EB138C60)
  {
    sub_1A437B690(255, a2);
    sub_1A437B7C0(255);
    sub_1A5249E14();
    sub_1A437B8F4(255, &unk_1EB143960, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D7D0]);
    sub_1A437B870();
    swift_getOpaqueTypeConformance2();
    sub_1A437C0E0(&qword_1EB138C78, MEMORY[0x1E697CA80], MEMORY[0x1E697CA78]);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB138C60);
    }
  }
}

void sub_1A437B690(uint64_t a1, double a2)
{
  if (!qword_1EB138C68)
  {
    sub_1A437B7C0(255);
    sub_1A5249E14();
    sub_1A437B8F4(255, &unk_1EB143960, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D7D0]);
    sub_1A437B870();
    swift_getOpaqueTypeConformance2();
    sub_1A437C0E0(&qword_1EB138C78, MEMORY[0x1E697CA80], MEMORY[0x1E697CA78]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB138C68);
    }
  }
}

void sub_1A437B7C0(uint64_t a1)
{
  if (!qword_1EB138C70)
  {
    sub_1A437B8F4(255, &unk_1EB143960, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D7D0]);
    sub_1A437B870();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB138C70);
    }
  }
}

unint64_t sub_1A437B870()
{
  result = qword_1EB141610;
  if (!qword_1EB141610)
  {
    sub_1A437B8F4(255, &unk_1EB143960, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D7D0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB141610);
  }

  return result;
}

void sub_1A437B8F4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t sub_1A437B948(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenerativeStoryBasicPromptInputView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_1A437B9AC()
{
  type metadata accessor for GenerativeStoryBasicPromptInputView(0);
  sub_1A437AE40(0, &qword_1EB121438, type metadata accessor for GenerativeStoryCreationViewModel, MEMORY[0x1E6981AA0]);
  sub_1A524BAA4();
  sub_1A437B8F4(0, &qword_1EB1249A0, MEMORY[0x1E69E6370], MEMORY[0x1E69E6380], MEMORY[0x1E697BDF0]);
  sub_1A5247C04();
  (*(*v2 + 592))(v1);

  return result;
}

uint64_t sub_1A437BB08()
{
  type metadata accessor for GenerativeStoryBasicPromptInputView(0);
  sub_1A437AE40(0, &qword_1EB121438, type metadata accessor for GenerativeStoryCreationViewModel, MEMORY[0x1E6981AA0]);
  v0 = sub_1A524BAA4();
  (*(*v2 + 584))(v0);

  sub_1A437B8F4(0, &qword_1EB1249A0, MEMORY[0x1E69E6370], MEMORY[0x1E69E6380], MEMORY[0x1E697BDF0]);
  return sub_1A5247C14();
}

uint64_t objectdestroyTm_47()
{
  v1 = *(type metadata accessor for GenerativeStoryBasicPromptInputView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  sub_1A437AE40(0, &qword_1EB121438, type metadata accessor for GenerativeStoryCreationViewModel, MEMORY[0x1E6981AA0]);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_1A437BDE0(uint64_t a1)
{
  sub_1A437AE40(0, &qword_1EB124C88, MEMORY[0x1E69C1030], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1A437BE6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A4379434(255, &qword_1EB138C00, MEMORY[0x1E697F960]);
    v7 = v6;
    sub_1A437B8F4(255, &qword_1EB138C08, MEMORY[0x1E6981E70], MEMORY[0x1E6981E70], MEMORY[0x1E697F960]);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1A437BF20(uint64_t a1, uint64_t a2)
{
  sub_1A4379434(0, &qword_1EB138C00, MEMORY[0x1E697F960]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A437BFA0(uint64_t a1)
{
  sub_1A4379434(0, &qword_1EB138C00, MEMORY[0x1E697F960]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A437C018(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A437C080(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A437C0E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1A437C128(uint64_t a1)
{
  if (!qword_1EB138C98)
  {
    sub_1A437AE40(255, &qword_1EB138C30, sub_1A437AEA4, MEMORY[0x1E6981F40]);
    sub_1A437C1BC();
    v1 = sub_1A524B784();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB138C98);
    }
  }
}

unint64_t sub_1A437C1BC()
{
  result = qword_1EB138CA0;
  if (!qword_1EB138CA0)
  {
    sub_1A437AE40(255, &qword_1EB138C30, sub_1A437AEA4, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB138CA0);
  }

  return result;
}

uint64_t sub_1A437C2C0@<X0>(uint64_t a1@<X8>)
{
  sub_1A3F930BC();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_1A437C32C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1A5243CC4();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_1A437C3B8@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  sub_1A438EBD4(a1, a5, type metadata accessor for LemonadeItemsLayoutSpec.Style);
  result = type metadata accessor for LemonadeFeedBodyStyle(0);
  *(a5 + *(result + 20)) = a2;
  v10 = a5 + *(result + 24);
  *v10 = a3;
  *(v10 + 8) = a4 & 1;
  return result;
}

uint64_t sub_1A437C42C(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for LemonadeFeedBodyStyle(0);

  return __swift_project_value_buffer(v4, a2);
}

uint64_t sub_1A437C488@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A3C47A98(0);
  v5 = *(v4 + 64);
  *a2 = sub_1A437C524;
  *(a2 + 8) = 0;
  *(a2 + 16) = 2;
  *(a2 + 24) = a1;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  sub_1A43A1960(a2 + v5);
  type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for LemonadeFeedBodyStyle(0);
  *(a2 + *(result + 20)) = 4;
  v7 = a2 + *(result + 24);
  *v7 = 0;
  *(v7 + 8) = 1;
  return result;
}

uint64_t sub_1A437C524(uint64_t a1)
{
  v2 = sub_1A5242D14();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x1E69C21F0])
  {
    return 13;
  }

  if (v7 == *MEMORY[0x1E69C2210])
  {
    return 3;
  }

  (*(v3 + 8))(v6, v2);
  return 1;
}

uint64_t sub_1A437C664()
{
  v0 = type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v8[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = type metadata accessor for LemonadeFeedBodyStyle(0);
  __swift_allocate_value_buffer(v3, qword_1EB1EBCE0);
  v4 = __swift_project_value_buffer(v3, qword_1EB1EBCE0);
  v5 = sub_1A3C4ED50(v4);
  v8[8] = 1;
  *v2 = xmmword_1A5333B70;
  v2[16] = 1;
  *(v2 + 3) = 1;
  v2[32] = 1;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;
  v2[88] = 2;
  v2[89] = v5;
  swift_storeEnumTagMultiPayload();
  result = sub_1A438EBD4(v2, v4, type metadata accessor for LemonadeItemsLayoutSpec.Style);
  *(v4 + *(v3 + 20)) = 5;
  v7 = v4 + *(v3 + 24);
  *v7 = 0;
  *(v7 + 8) = 1;
  return result;
}

uint64_t sub_1A437C80C(__n128 a1, uint64_t a2, uint64_t *a3)
{
  v24 = a1;
  v4 = type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LemonadeFeedBodyStyle(0);
  __swift_allocate_value_buffer(v7, a3);
  v8 = __swift_project_value_buffer(v7, a3);
  sub_1A439027C(0, &unk_1EB1202B0, MEMORY[0x1E6980D50], MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A52FC9F0;
  v10 = sub_1A524A054();
  *(inited + 32) = v10;
  v11 = sub_1A524A074();
  *(inited + 33) = v11;
  v12 = sub_1A524A0A4();
  sub_1A524A0A4();
  if (sub_1A524A0A4() != v10)
  {
    v12 = sub_1A524A0A4();
  }

  sub_1A524A0A4();
  if (sub_1A524A0A4() != v11)
  {
    v12 = sub_1A524A0A4();
  }

  v13 = sub_1A3C47918();
  v15 = v14;
  v16 = sub_1A3C47918();
  v18 = v17;
  v19 = sub_1A3C52D68();
  v25 = 1;
  *v6 = v24;
  v6[16] = 1;
  *(v6 + 3) = 0;
  v6[32] = 1;
  *(v6 + 5) = v13;
  *(v6 + 6) = v15;
  *(v6 + 7) = v16;
  *(v6 + 8) = v18;
  *(v6 + 9) = v19;
  *(v6 + 10) = v20;
  v6[88] = v21;
  v6[89] = v12;
  swift_storeEnumTagMultiPayload();
  result = sub_1A438EBD4(v6, v8, type metadata accessor for LemonadeItemsLayoutSpec.Style);
  *(v8 + *(v7 + 20)) = 0;
  v23 = v8 + *(v7 + 24);
  *v23 = 1;
  *(v23 + 8) = 0;
  return result;
}

uint64_t sub_1A437CA3C(uint64_t a1, unint64_t a2)
{
  v2 = 0x6C6C4120656553;
  if (a2 != 1)
  {
    v2 = a1;
  }

  if (a2)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  sub_1A437CA90(a1, a2);
  return v3;
}

void sub_1A437CA90(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }
}

uint64_t sub_1A437CAA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1A438DC04();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_1A437CB08()
{
  sub_1A437CB44();
  sub_1A5249244();
  return v1;
}

unint64_t sub_1A437CB44()
{
  result = qword_1EB15A710[0];
  if (!qword_1EB15A710[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB15A710);
  }

  return result;
}

uint64_t sub_1A437CBD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, unsigned __int8 a10, uint64_t a11, uint64_t a12)
{
  v104 = a7;
  v105 = a8;
  v107 = a6;
  v102 = a5;
  v100 = a4;
  v109 = a3;
  v106 = a2;
  v103 = a10;
  sub_1A43892B8(0, &qword_1EB138CA8, MEMORY[0x1E697DA80]);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v108 = &v87 - v16;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v92 = sub_1A5242854();
  v93 = sub_1A5247CB4();
  v91 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v90 = &v87 - v17;
  v97 = MEMORY[0x1E69C28B0];
  v96 = MEMORY[0x1E69E6720];
  sub_1A437DD40(0, &unk_1EB129000, MEMORY[0x1E69C28B0], MEMORY[0x1E69E6720]);
  v95 = *(v18 - 8);
  v19 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v94 = &v87 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v87 - v21;
  v24 = type metadata accessor for LemonadeFeedContents(0, a11, a12, v23);
  v25 = v24[13];
  v26 = swift_allocObject();
  *(v26 + 16) = a11;
  *(v26 + 24) = a12;
  v89 = v25;
  sub_1A437D838(sub_1A437DD38, v26, a11, a12);
  v27 = v24[15];
  sub_1A3E792C4(0, &qword_1EB1256B8, &qword_1EB1256C0, &protocol descriptor for LemonadeFeedContainerModel);
  v99 = v27;
  v98 = v28;
  sub_1A5247C74();
  v29 = (a9 + v24[16]);
  *v29 = sub_1A437D968(0, a11, a12);
  v29[1] = v30;
  v31 = (a9 + v24[17]);
  *v31 = sub_1A437D9CC(0, a11, a12);
  v31[1] = v32;
  v33 = (a9 + v24[18]);
  *v33 = sub_1A437DA78(0, a11, a12);
  v33[1] = v34;
  v35 = a9 + v24[20];
  LOBYTE(v112[0]) = 0;
  sub_1A524B694();
  v36 = v115;
  *v35 = v114;
  *(v35 + 8) = v36;
  v37 = a9 + v24[21];
  LOBYTE(v112[0]) = 0;
  sub_1A524B694();
  v38 = v115;
  *v37 = v114;
  *(v37 + 8) = v38;
  v39 = v24[22];
  *(a9 + v39) = swift_getKeyPath();
  v40 = MEMORY[0x1E697DCB8];
  sub_1A437DD40(0, &unk_1EB128A60, MEMORY[0x1E697BF90], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v41 = a9 + v24[23];
  *v41 = swift_getKeyPath();
  *(v41 + 8) = 0;
  v42 = a9 + v24[24];
  *v42 = swift_getKeyPath();
  *(v42 + 8) = 0;
  v43 = a9 + v24[25];
  *v43 = swift_getKeyPath();
  *(v43 + 40) = 0;
  v44 = a9 + v24[26];
  *v44 = swift_getKeyPath();
  *(v44 + 8) = 0;
  v45 = a9 + v24[27];
  *v45 = swift_getKeyPath();
  *(v45 + 8) = 0;
  v46 = a9 + v24[28];
  *v46 = swift_getKeyPath();
  *(v46 + 8) = 0;
  v47 = a9 + v24[29];
  *v47 = swift_getKeyPath();
  *(v47 + 8) = 0;
  v48 = v24[30];
  *(a9 + v48) = swift_getKeyPath();
  sub_1A437DD40(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], v40);
  swift_storeEnumTagMultiPayload();
  v49 = a9 + v24[31];
  *v49 = swift_getKeyPath();
  *(v49 + 8) = 0;
  v50 = a9 + v24[32];
  *v50 = swift_getKeyPath();
  *(v50 + 8) = 0;
  v51 = a9 + v24[33];
  *v51 = swift_getKeyPath();
  *(v51 + 8) = 0;
  v52 = v24[34];
  *(a9 + v52) = swift_getKeyPath();
  sub_1A437DD40(0, &unk_1EB128A40, sub_1A3DC7D88, v40);
  swift_storeEnumTagMultiPayload();
  v53 = v24[35];
  *(a9 + v53) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v54 = a9 + v24[36];
  *v54 = swift_getKeyPath();
  *(v54 + 8) = 0;
  v55 = a9 + v24[37];
  *v55 = swift_getKeyPath();
  *(v55 + 8) = 0;
  v56 = a9 + v24[38];
  *v56 = swift_getKeyPath();
  *(v56 + 8) = 0;
  v57 = v24[39];
  *(a9 + v57) = swift_getKeyPath();
  sub_1A437DD40(0, &qword_1EB128A88, type metadata accessor for LemonadeItemsLayoutSpec, v40);
  swift_storeEnumTagMultiPayload();
  v58 = a9 + v24[40];
  *v58 = swift_getKeyPath();
  *(v58 + 8) = 0;
  *(v58 + 16) = 0;
  *(v58 + 24) = 0;
  *(v58 + 32) = 0;
  v59 = a9 + v24[41];
  *v59 = swift_getKeyPath();
  *(v59 + 8) = 0;
  v60 = v24[42];
  *(a9 + v60) = swift_getKeyPath();
  sub_1A437DD40(0, &qword_1EB128A50, MEMORY[0x1E697E730], v40);
  swift_storeEnumTagMultiPayload();
  v61 = a9 + v24[43];
  *v61 = swift_getKeyPath();
  *(v61 + 8) = 0;
  v62 = a9 + v24[44];
  *v62 = swift_getKeyPath();
  *(v62 + 8) = 0;
  v63 = v24[45];
  *(a9 + v63) = swift_getKeyPath();
  sub_1A437DD40(0, &qword_1EB12F3F8, MEMORY[0x1E69C2998], v40);
  swift_storeEnumTagMultiPayload();
  v64 = *(a11 - 8);
  (*(v64 + 16))(a9, a1, a11);
  *(a9 + v24[9]) = v106;
  v65 = (*(a12 + 72))(a11, a12);
  v67 = v66;
  (*(a12 + 144))(a11, a12);
  v68 = *(a12 + 112);
  v106 = a1;
  v88 = a12;
  v68(&v114, a11, a12);
  v101 = v22;
  v69 = v94;
  v70 = v96;
  sub_1A438EB64(v22, v94, &unk_1EB129000, v97, v96);
  v71 = (*(v95 + 80) + 32) & ~*(v95 + 80);
  v72 = swift_allocObject();
  *(v72 + 16) = v65;
  *(v72 + 24) = v67;
  sub_1A437E3C0(v69, v72 + v71);
  sub_1A52434D4();
  sub_1A5247C74();
  sub_1A438EB64(v109, a9 + v24[10], &qword_1EB128FB0, MEMORY[0x1E69C2E30], v70);
  v73 = v100;
  if (v100)
  {
    v74 = swift_allocObject();
    v75 = v88;
    v74[2] = a11;
    v74[3] = v75;
    v74[4] = v73;

    v76 = v90;
    sub_1A5247C74();
    (*(v91 + 40))(a9 + v89, v76, v93);
  }

  v77 = a9 + v24[19];
  LOBYTE(v110[0]) = v102 & 1;
  sub_1A524B694();
  v78 = *(&v112[0] + 1);
  *v77 = v112[0];
  *(v77 + 8) = v78;
  v79 = (a9 + v24[11]);
  v80 = v105;
  *v79 = v104;
  v79[1] = v80;
  *(a9 + v24[12]) = v103 & 1;
  v81 = v107;
  sub_1A438EC3C(v107, v112, &qword_1EB1256B8, &qword_1EB1256C0, &protocol descriptor for LemonadeFeedContainerModel, sub_1A3E792C4);
  sub_1A438EC3C(&v114, v110, &qword_1EB1256B8, &qword_1EB1256C0, &protocol descriptor for LemonadeFeedContainerModel, sub_1A3E792C4);
  v82 = swift_allocObject();
  v83 = v112[1];
  *(v82 + 16) = v112[0];
  *(v82 + 32) = v83;
  *(v82 + 48) = v113;
  v84 = v110[1];
  *(v82 + 56) = v110[0];
  *(v82 + 72) = v84;
  *(v82 + 88) = v111;
  v85 = v108;
  sub_1A5247C74();

  sub_1A3EA8D18(v81, &qword_1EB1256B8, &qword_1EB1256C0, &protocol descriptor for LemonadeFeedContainerModel);
  sub_1A438E9F8(v109, &qword_1EB128FB0, MEMORY[0x1E69C2E30]);
  (*(v64 + 8))(v106, a11);
  sub_1A3EA8D18(&v114, &qword_1EB1256B8, &qword_1EB1256C0, &protocol descriptor for LemonadeFeedContainerModel);
  sub_1A438E9F8(v101, &unk_1EB129000, MEMORY[0x1E69C28B0]);
  return sub_1A437E5D0(v85, a9 + v99);
}

uint64_t sub_1A437D838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = a1;
  v8[5] = a2;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1A5242854();

  return sub_1A5247C74();
}

uint64_t sub_1A437D968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  sub_1A524DF24();
  sub_1A524B694();
  return v4;
}

uint64_t sub_1A437D9CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1A5243794();
  sub_1A524DF24();
  sub_1A524B694();
  return v4;
}

uint64_t sub_1A437DA78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  sub_1A52431C4();
  sub_1A524DF24();
  sub_1A524B694();
  return AssociatedTypeWitness;
}

void sub_1A437DB70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x1E69C28B0];
  v5 = MEMORY[0x1E69E6720];
  sub_1A437DD40(0, &unk_1EB129000, MEMORY[0x1E69C28B0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1A438EB64(a3, &v8 - v7, &unk_1EB129000, v4, v5);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A437DC68(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1A5242854();
  return sub_1A5242834();
}

void sub_1A437DD40(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A437DDA4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A5248C94();
  *a1 = result;
  return result;
}

uint64_t sub_1A437DDFC(uint64_t a1)
{
  v3 = sub_1A5249234();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1 + 112);
  v8 = *v7;
  if (*(v7 + 8) != 1)
  {

    v9 = sub_1A524D254();
    v10 = sub_1A524A014();
    sub_1A5246DF4(v9, &dword_1A3C1C000, v10, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v8, 0);
    (*(v4 + 8))(v6, v3);
    LOBYTE(v8) = v12[15];
  }

  return v8 & 1;
}

uint64_t sub_1A437DF50@<X0>(unint64_t *a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v22 = a4;
  v9 = sub_1A5249234();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1E697DCB8];
  sub_1A437DD40(0, a1, a2, MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v21 - v15;
  sub_1A438EB64(v8, &v21 - v15, a1, a2, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = a3(0);
    return (*(*(v17 - 8) + 32))(v22, v16, v17);
  }

  else
  {
    v19 = sub_1A524D254();
    v20 = sub_1A524A014();
    sub_1A5246DF4(v19, &dword_1A3C1C000, v20, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();

    return (*(v10 + 8))(v12, v9);
  }
}

uint64_t sub_1A437E174@<X0>(unint64_t *a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v21 = a4;
  v9 = sub_1A5249234();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1E697DCB8];
  sub_1A437DD40(0, a1, a2, MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v20 - v15;
  sub_1A438EB64(v8, &v20 - v15, a1, a2, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1A438EBD4(v16, v21, a3);
  }

  v18 = sub_1A524D254();
  v19 = sub_1A524A014();
  sub_1A5246DF4(v18, &dword_1A3C1C000, v19, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

  sub_1A5249224();
  swift_getAtKeyPath();

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1A437E368@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A5248D34();
  *a1 = result;
  return result;
}

uint64_t sub_1A437E3C0(uint64_t a1, uint64_t a2)
{
  sub_1A437DD40(0, &unk_1EB129000, MEMORY[0x1E69C28B0], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1A437E454()
{
  sub_1A437DD40(0, &unk_1EB129000, MEMORY[0x1E69C28B0], MEMORY[0x1E69E6720]);
  v2 = *(v1 - 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = v0 + ((*(v2 + 80) + 32) & ~*(v2 + 80));

  sub_1A437DB70(v3, v4, v5);
}

uint64_t sub_1A437E4F8@<X0>(uint64_t a1@<X8>)
{
  sub_1A438EC3C(v1 + 16, &v4, &qword_1EB1256B8, &qword_1EB1256C0, &protocol descriptor for LemonadeFeedContainerModel, sub_1A3E792C4);
  if (v5)
  {
    return sub_1A3C34460(&v4, a1);
  }

  result = sub_1A438EC3C(v1 + 56, a1, &qword_1EB1256B8, &qword_1EB1256C0, &protocol descriptor for LemonadeFeedContainerModel, sub_1A3E792C4);
  if (v5)
  {
    return sub_1A3EA8D18(&v4, &qword_1EB1256B8, &qword_1EB1256C0, &protocol descriptor for LemonadeFeedContainerModel);
  }

  return result;
}

uint64_t sub_1A437E5D0(uint64_t a1, uint64_t a2)
{
  sub_1A43892B8(0, &qword_1EB138CA8, MEMORY[0x1E697DA80]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A437E650@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 32))();
  *a1 = result;
  return result;
}

uint64_t sub_1A437E680()
{
  v0 = sub_1A5242D14();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10 - v5;
  sub_1A437DF50(&qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E69C2218], &v10 - v5);
  (*(v1 + 104))(v3, *MEMORY[0x1E69C2210], v0);
  v7 = sub_1A5242D04();
  v8 = *(v1 + 8);
  v8(v3, v0);
  v8(v6, v0);
  return v7 & 1;
}

uint64_t sub_1A437E7F4(uint64_t a1)
{
  v3 = sub_1A5249234();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v22 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A5242D14();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for LemonadeFeedStyleOptions(0);
  MEMORY[0x1EEE9AC00](v23);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A437DF50(&qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E69C2218], v9);
  v12 = *(a1 + 144);
  v24 = v1;
  v13 = v1 + v12;
  v14 = *v13;
  if (*(v13 + 8) == 1)
  {
    v25 = *v13;
  }

  else
  {

    v15 = sub_1A524D254();
    v16 = sub_1A524A014();
    v21 = v3;
    v17 = v16;
    sub_1A5246DF4(v15, &dword_1A3C1C000, v16, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    v18 = v22;
    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v14, 0);
    (*(v4 + 8))(v18, v21);
    LOBYTE(v14) = v25;
  }

  (*(v7 + 32))(v11, v9, v6);
  v11[*(v23 + 20)] = v14;
  (*(*(a1 + 24) + 120))(v11, *(a1 + 16));
  return sub_1A438EB04(v11, type metadata accessor for LemonadeFeedStyleOptions);
}

uint64_t sub_1A437EAFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v31 = a2;
  v32 = sub_1A52486A4();
  v30 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v29 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A5249234();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for LemonadeFeedBodyStyle(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for LemonadeItemsLayoutSpec(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A437E174(&qword_1EB128A88, type metadata accessor for LemonadeItemsLayoutSpec, type metadata accessor for LemonadeItemsLayoutSpec, v15);
  sub_1A437E7F4(a1);
  v16 = v2 + *(a1 + 144);
  v17 = *v16;
  if (*(v16 + 8) == 1)
  {
    v37 = *v16;
  }

  else
  {

    v18 = sub_1A524D254();
    v19 = sub_1A524A014();
    sub_1A5246DF4(v18, &dword_1A3C1C000, v19, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v17, 0);
    (*(v7 + 8))(v9, v6);
    LOBYTE(v17) = v37;
  }

  v36 = v17;
  v20 = v3 + *(a1 + 148);
  v21 = *v20;
  if (*(v20 + 8) == 1)
  {
    v35 = *v20;
  }

  else
  {

    v22 = sub_1A524D254();
    v23 = sub_1A524A014();
    sub_1A5246DF4(v22, &dword_1A3C1C000, v23, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v21, 0);
    (*(v7 + 8))(v9, v6);
    LOBYTE(v21) = v35;
  }

  v34 = v21;
  v24 = v29;
  sub_1A437DF50(&qword_1EB128A50, MEMORY[0x1E697E730], MEMORY[0x1E697E730], v29);
  v25 = sub_1A3C5A374();
  j___s12PhotosUICore29lemonadeAlbumsShelfIdentifierAA08LemonadeeF0Ovg_0(&v33);
  v26 = sub_1A3C5A374();
  sub_1A43A22CC(v12, &v36, v25, &v34, v24, &v33, v26 & 1, v31);
  (*(v30 + 8))(v24, v32);
  sub_1A438EB04(v15, type metadata accessor for LemonadeItemsLayoutSpec);
  return sub_1A438EB04(v12, type metadata accessor for LemonadeItemsLayoutSpec.Style);
}

void sub_1A437EF48(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1A5249234();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *MEMORY[0x1E69C2198];
  v10 = sub_1A5242C74();
  v11 = *(v10 - 8);
  v12 = *(v11 + 104);
  v24 = a2;
  v13 = a2;
  v14 = v12;
  v12(v13, v9, v10);
  v15 = v2 + *(a1 + 128);
  v16 = *v15;
  if (*(v15 + 8) == 1)
  {
    v17 = v16;
    if (!v16)
    {
      return;
    }
  }

  else
  {

    v18 = sub_1A524D254();
    v19 = sub_1A524A014();
    sub_1A5246DF4(v18, &dword_1A3C1C000, v19, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3D35BAC(v16, 0);
    v17 = (*(v6 + 8))(v8, v5);
    v16 = v26;
    if (!v26)
    {
      return;
    }
  }

  v20 = MEMORY[0x1E69E7D40];
  if ((*((*MEMORY[0x1E69E7D40] & *v16) + 0x1C8))(v17) == 2)
  {
    (*((*v20 & *v16) + 0x210))(&v25);

    v21 = v24;
    (*(v11 + 8))(v24, v10);
    if (v25)
    {
      v22 = MEMORY[0x1E69C2188];
    }

    else
    {
      v22 = MEMORY[0x1E69C2190];
    }

    v14(v21, *v22, v10);
  }

  else
  {
  }
}

uint64_t sub_1A437F1FC(uint64_t a1, double a2)
{
  v3 = sub_1A5243D54();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - v8;
  v10 = type metadata accessor for LemonadeFeedBodyStyle(0);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A437E7F4(a1);
  v14 = v13[*(v11 + 32) + 8];
  sub_1A438EB04(v13, type metadata accessor for LemonadeFeedBodyStyle);
  result = 0;
  if (v14 == 1)
  {
    sub_1A437EAFC(a1, v9);
    v16 = sub_1A5243D44();
    v17 = *(v4 + 8);
    v17(v9, v3);
    sub_1A437EAFC(a1, v6);
    v18 = sub_1A5243D34();
    result = (v17)(v6, v3);
    if (v18)
    {
      if (v16 != 0x8000000000000000 || v18 != -1)
      {
        return v16 / v18;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

double sub_1A437F3E8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for LemonadeFeedBodyStyle(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A5249234();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v2 + *(a1 + 152);
  v14 = *v13;
  if (*(v13 + 8) == 1)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v23[0] = v10;

  v15 = a1;
  v16 = a2;
  v17 = sub_1A524D254();
  v18 = sub_1A524A014();
  sub_1A5246DF4(v17, &dword_1A3C1C000, v18, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

  sub_1A5249224();
  swift_getAtKeyPath();
  v19 = sub_1A3F1B54C(v14, 0);
  (*(v9 + 8))(v12, v23[0], v19);
  v20 = v23[1];
  sub_1A437E7F4(v15);
  v21 = v7[*(v5 + 20)];
  sub_1A438EB04(v7, type metadata accessor for LemonadeFeedBodyStyle);
  sub_1A40B1C00(v21, v20, v16);

  return result;
}

uint64_t sub_1A437F5FC@<X0>(uint64_t a1@<X8>)
{
  v23[1] = a1;
  v1 = sub_1A5249A94();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v23[0] = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3DD0DCC(0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3DC7D88(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v23 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v23 - v15;
  sub_1A437E174(&unk_1EB128A40, sub_1A3DC7D88, sub_1A3DC7D88, v23 - v15);
  (*(v2 + 104))(v13, *MEMORY[0x1E697FF40], v1);
  (*(v2 + 56))(v13, 0, 1, v1);
  v17 = *(v5 + 56);
  sub_1A3F188F8(v16, v7);
  sub_1A3F188F8(v13, &v7[v17]);
  v18 = *(v2 + 48);
  if (v18(v7, 1, v1) != 1)
  {
    sub_1A3F188F8(v7, v10);
    if (v18(&v7[v17], 1, v1) != 1)
    {
      v20 = v23[0];
      (*(v2 + 32))(v23[0], &v7[v17], v1);
      sub_1A438DB60(&qword_1EB127B70, MEMORY[0x1E697FF50], MEMORY[0x1E697FF60]);
      v21 = sub_1A524C594();
      v22 = *(v2 + 8);
      v22(v20, v1);
      sub_1A438EB04(v13, sub_1A3DC7D88);
      sub_1A438EB04(v16, sub_1A3DC7D88);
      v22(v10, v1);
      sub_1A438EB04(v7, sub_1A3DC7D88);
      if (v21)
      {
        return sub_1A5247F44();
      }

      return sub_1A5247F54();
    }

    sub_1A438EB04(v13, sub_1A3DC7D88);
    sub_1A438EB04(v16, sub_1A3DC7D88);
    (*(v2 + 8))(v10, v1);
LABEL_6:
    sub_1A438EB04(v7, sub_1A3DD0DCC);
    return sub_1A5247F54();
  }

  sub_1A438EB04(v13, sub_1A3DC7D88);
  sub_1A438EB04(v16, sub_1A3DC7D88);
  if (v18(&v7[v17], 1, v1) != 1)
  {
    goto LABEL_6;
  }

  sub_1A438EB04(v7, sub_1A3DC7D88);
  return sub_1A5247F44();
}

uint64_t sub_1A437FA48(uint64_t a1)
{
  v3 = sub_1A5249234();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1A437DDFC(a1))
  {
    v7 = 1;
    return v7 & 1;
  }

  v8 = v1 + *(a1 + 128);
  v9 = *v8;
  if (*(v8 + 8) != 1)
  {

    v12 = sub_1A524D254();
    v13 = sub_1A524A014();
    sub_1A5246DF4(v12, &dword_1A3C1C000, v13, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3D35BAC(v9, 0);
    v10 = (*(v4 + 8))(v6, v3);
    v9 = v16;
    if (v16)
    {
      goto LABEL_5;
    }

LABEL_8:
    v7 = 0;
    return v7 & 1;
  }

  v10 = v9;
  if (!v9)
  {
    goto LABEL_8;
  }

LABEL_5:
  v11 = MEMORY[0x1E69E7D40];
  if ((*((*MEMORY[0x1E69E7D40] & *v9) + 0x1C8))(v10))
  {
    v7 = (*((*v11 & *v9) + 0x2A0))();
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_1A437FC48(uint64_t a1)
{
  v3 = sub_1A5249234();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + *(a1 + 132);
  v8 = *v7;
  if ((*(v7 + 8) & 1) == 0)
  {

    v9 = sub_1A524D254();
    v10 = sub_1A524A014();
    sub_1A5246DF4(v9, &dword_1A3C1C000, v10, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v8, 0);
    (*(v4 + 8))(v6, v3);
    v8 = v18;
  }

  if (v8 != *sub_1A41D5618())
  {
    v11 = v1 + *(a1 + 128);
    v12 = *v11;
    if (*(v11 + 8) == 1)
    {
      v13 = v12;
      if (!v12)
      {
        return v8;
      }

      goto LABEL_8;
    }

    v14 = sub_1A524D254();
    v15 = sub_1A524A014();
    sub_1A5246DF4(v14, &dword_1A3C1C000, v15, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3D35BAC(v12, 0);
    v13 = (*(v4 + 8))(v6, v3);
    v12 = v18;
    if (v18)
    {
LABEL_8:
      v8 = (*((*MEMORY[0x1E69E7D40] & *v12) + 0x2B8))(v13);
    }
  }

  return v8;
}

uint64_t sub_1A437FEA8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1A5249234();
  v20 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v1 + *(a1 + 72));
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = swift_getAssociatedConformanceWitness();
  *&v23 = AssociatedTypeWitness;
  *(&v23 + 1) = v8;
  *&v24 = AssociatedConformanceWitness;
  *(&v24 + 1) = v10;
  sub_1A52431C4();
  sub_1A524DF24();
  sub_1A524B6D4();
  sub_1A524B6A4();
  if (!v23)
  {
    return 0;
  }

  v11 = sub_1A5243164();

  v12 = v2 + *(a1 + 164);
  v13 = *v12;
  v14 = *(v12 + 8);
  if (*(v12 + 9) == 1)
  {
    if ((v14 & 1) == 0)
    {
      goto LABEL_8;
    }

    return v11;
  }

  v16 = sub_1A524D254();
  v17 = sub_1A524A014();
  sub_1A5246DF4(v16, &dword_1A3C1C000, v17, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

  sub_1A5249224();
  swift_getAtKeyPath();
  v18 = sub_1A3F1B4C4(v13, v14, 0);
  (*(v20 + 8))(v6, v4, v18);
  if (BYTE8(v23))
  {
    return v11;
  }

LABEL_8:
  *&v21 = v11;
  swift_getAssociatedTypeWitness();
  sub_1A524CB74();
  swift_getWitnessTable();
  sub_1A524D084();
  v21 = v23;
  v22 = v24;
  sub_1A524E0F4();
  swift_getWitnessTable();
  return sub_1A524CB84();
}

uint64_t sub_1A43801DC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v400 = a2;
  v3 = *(a1 + 16);
  v424 = *(a1 + 24);
  v4 = *(v424 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v399 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v398 = v304 - v5;
  v422 = a1;
  v6 = *(a1 - 8);
  v382 = a1 - 8;
  v418 = v6;
  MEMORY[0x1EEE9AC00](v7);
  v421 = v8;
  v415 = v304 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v395 = sub_1A5243D54();
  v394 = *(v395 - 8);
  MEMORY[0x1EEE9AC00](v395);
  v393 = v304 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v392 = sub_1A5247F64();
  v391 = *(v392 - 8);
  MEMORY[0x1EEE9AC00](v392);
  v390 = v304 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LemonadeFeedBodyStyle(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v389 = v304 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v419 = (v304 - v14);
  v15 = type metadata accessor for LemonadeItemsLayoutSpec(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v420 = v304 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v417 = v304 - v18;
  v388 = sub_1A52434D4();
  v387 = *(v388 - 8);
  MEMORY[0x1EEE9AC00](v388);
  v386 = v304 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v385 = sub_1A5244084();
  v384 = *(v385 - 8);
  MEMORY[0x1EEE9AC00](v385);
  v383 = v304 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v410 = sub_1A5249234();
  v411 = *(v410 - 8);
  MEMORY[0x1EEE9AC00](v410);
  v412 = v304 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v416 = swift_getAssociatedTypeWitness();
  v406 = sub_1A5248804();
  v22 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v414 = *(AssociatedConformanceWitness + 16);
  v23 = swift_getAssociatedTypeWitness();
  v408 = sub_1A524CB74();
  v24 = swift_getAssociatedTypeWitness();
  v25 = swift_getAssociatedConformanceWitness();
  *&v431 = v24;
  *(&v431 + 1) = v3;
  v432 = v25;
  v433 = v4;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  *&v431 = v24;
  *(&v431 + 1) = v3;
  v423 = v3;
  v432 = v25;
  v433 = v4;
  v27 = v4;
  v413 = v4;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v431 = OpaqueTypeMetadata2;
  *(&v431 + 1) = OpaqueTypeConformance2;
  v29 = swift_getOpaqueTypeMetadata2();
  *&v431 = OpaqueTypeMetadata2;
  *(&v431 + 1) = OpaqueTypeConformance2;
  v30 = swift_getOpaqueTypeConformance2();
  *&v431 = v29;
  *(&v431 + 1) = v30;
  v31 = swift_getOpaqueTypeMetadata2();
  *&v431 = v29;
  *(&v431 + 1) = v30;
  v32 = swift_getOpaqueTypeConformance2();
  *&v431 = v3;
  *(&v431 + 1) = v31;
  v432 = v27;
  v433 = v32;
  v33 = type metadata accessor for LemonadeItemDetailsNavigationButton(255, &v431);
  sub_1A5248804();
  v34 = sub_1A5249754();
  v35 = v408;
  WitnessTable = swift_getWitnessTable();
  v397 = v22;
  v37 = swift_getAssociatedConformanceWitness();
  v38 = swift_getWitnessTable();
  v439 = v38;
  v440 = MEMORY[0x1E697F568];
  v414 = MEMORY[0x1E697E858];
  v437 = swift_getWitnessTable();
  v438 = v38;
  v405 = MEMORY[0x1E697F968];
  v39 = swift_getWitnessTable();
  *&v431 = v35;
  *(&v431 + 1) = v23;
  v432 = v23;
  v433 = v34;
  v434 = WitnessTable;
  v435 = v37;
  v436 = v39;
  v403 = sub_1A5243E24();
  *&v431 = v35;
  *(&v431 + 1) = v23;
  v432 = v23;
  v433 = v33;
  v434 = WitnessTable;
  v435 = v37;
  v407 = v37;
  v436 = v38;
  v404 = sub_1A52420C4();
  sub_1A5249754();
  *&v431 = v35;
  *(&v431 + 1) = v23;
  v432 = v23;
  v433 = v34;
  v434 = WitnessTable;
  v435 = v37;
  v436 = v39;
  sub_1A5244124();
  *&v431 = v35;
  *(&v431 + 1) = v23;
  v432 = v23;
  v433 = v33;
  v434 = WitnessTable;
  v435 = v37;
  v436 = v38;
  sub_1A5242374();
  sub_1A5249754();
  swift_getAssociatedTypeWitness();
  sub_1A5248804();
  sub_1A5248804();
  sub_1A524DF24();
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  sub_1A5249754();
  sub_1A5249754();
  v40 = sub_1A5249754();
  v430[29] = swift_getAssociatedConformanceWitness();
  v430[30] = MEMORY[0x1E697EBF8];
  v41 = swift_getWitnessTable();
  v42 = swift_getWitnessTable();
  v43 = swift_getWitnessTable();
  v430[27] = v42;
  v430[28] = v43;
  v44 = swift_getWitnessTable();
  v45 = swift_getWitnessTable();
  v430[25] = v44;
  v430[26] = v45;
  v430[23] = swift_getWitnessTable();
  v430[24] = MEMORY[0x1E6981138];
  v46 = swift_getWitnessTable();
  v430[21] = v41;
  v430[22] = v46;
  v47 = swift_getWitnessTable();
  v317 = v40;
  v304[5] = v47;
  v48 = sub_1A524B894();
  v310 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v307 = v304 - v49;
  v50 = MEMORY[0x1E6980A08];
  sub_1A439027C(255, &qword_1EB1277C8, MEMORY[0x1E69E6370], MEMORY[0x1E6980A08]);
  v401 = sub_1A5248804();
  v308 = *(v401 - 8);
  MEMORY[0x1EEE9AC00](v401);
  v305 = v304 - v51;
  sub_1A439027C(255, &unk_1EB1277B0, MEMORY[0x1E69E6530], v50);
  v52 = sub_1A5248804();
  v309 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v306 = v304 - v53;
  v406 = MEMORY[0x1E69C2948];
  v54 = MEMORY[0x1E6980A08];
  sub_1A437DD40(255, &qword_1EB1279C0, MEMORY[0x1E69C2948], MEMORY[0x1E6980A08]);
  v55 = sub_1A5248804();
  v318 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v316 = v304 - v56;
  sub_1A3F1B2AC(255);
  v57 = sub_1A5248804();
  v322 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v321 = v304 - v58;
  v405 = MEMORY[0x1E69C24E0];
  sub_1A437DD40(255, &qword_1EB1279F0, MEMORY[0x1E69C24E0], v54);
  v59 = sub_1A5248804();
  v348 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v345 = v304 - v60;
  sub_1A439027C(255, &qword_1EB1279A8, MEMORY[0x1E69E7DE0], v50);
  v61 = sub_1A5248804();
  v362 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v416 = v304 - v62;
  v63 = sub_1A5248804();
  v365 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v363 = v304 - v64;
  v312 = v48;
  v65 = swift_getWitnessTable();
  v66 = sub_1A4383424(&qword_1EB1277D0, &qword_1EB1277C8, MEMORY[0x1E69E6370]);
  v304[0] = v65;
  v430[19] = v65;
  v430[20] = v66;
  v67 = swift_getWitnessTable();
  v68 = sub_1A4383424(&qword_1EB1277C0, &unk_1EB1277B0, MEMORY[0x1E69E6530]);
  v304[1] = v67;
  v430[17] = v67;
  v430[18] = v68;
  v311 = v52;
  v69 = swift_getWitnessTable();
  v70 = sub_1A4383488(&qword_1EB1279C8, &qword_1EB1279C0, v406);
  v304[2] = v69;
  v430[15] = v69;
  v430[16] = v70;
  v319 = v55;
  v71 = swift_getWitnessTable();
  v72 = sub_1A438DB60(&qword_1EB1279E8, sub_1A3F1B2AC, MEMORY[0x1E6980A18]);
  v304[3] = v71;
  v430[13] = v71;
  v430[14] = v72;
  v324 = v57;
  v73 = swift_getWitnessTable();
  v74 = sub_1A4383488(&qword_1EB1279F8, &qword_1EB1279F0, v405);
  v304[4] = v73;
  v430[11] = v73;
  v430[12] = v74;
  v351 = v59;
  v75 = swift_getWitnessTable();
  v76 = sub_1A4383424(&qword_1EB1279B0, &qword_1EB1279A8, MEMORY[0x1E69E7DE0]);
  v315 = v75;
  v430[9] = v75;
  v430[10] = v76;
  v364 = v61;
  v331 = swift_getWitnessTable();
  v430[7] = v331;
  v430[8] = v76;
  v77 = swift_getWitnessTable();
  *&v431 = v63;
  *(&v431 + 1) = v63;
  v432 = v77;
  v433 = v77;
  v406 = MEMORY[0x1E69C3078];
  v78 = swift_getOpaqueTypeMetadata2();
  v341 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v338 = v304 - v79;
  *&v431 = v63;
  *(&v431 + 1) = v63;
  v366 = v63;
  v432 = v77;
  v433 = v77;
  v336 = v77;
  v80 = swift_getOpaqueTypeConformance2();
  *&v431 = v78;
  *(&v431 + 1) = v80;
  v81 = swift_getOpaqueTypeMetadata2();
  v334 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v333 = v304 - v82;
  v337 = v83;
  v84 = sub_1A5248804();
  v344 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v340 = v304 - v85;
  v343 = v78;
  *&v431 = v78;
  *(&v431 + 1) = v80;
  v332 = v80;
  v327 = swift_getOpaqueTypeConformance2();
  v430[5] = v327;
  v430[6] = MEMORY[0x1E697E5D8];
  v86 = swift_getWitnessTable();
  *&v431 = v84;
  *(&v431 + 1) = v86;
  v87 = v86;
  v414 = v86;
  v88 = swift_getOpaqueTypeMetadata2();
  *&v431 = v84;
  *(&v431 + 1) = v87;
  v89 = swift_getOpaqueTypeConformance2();
  *&v431 = v88;
  *(&v431 + 1) = v89;
  v405 = swift_getOpaqueTypeMetadata2();
  swift_getAssociatedTypeWitness();
  v90 = sub_1A524DF24();
  v430[4] = swift_getAssociatedConformanceWitness();
  v91 = swift_getWitnessTable();
  *&v431 = v90;
  *(&v431 + 1) = v91;
  v92 = swift_getOpaqueTypeMetadata2();
  *&v431 = v88;
  *(&v431 + 1) = v89;
  v93 = swift_getOpaqueTypeConformance2();
  *&v431 = v90;
  *(&v431 + 1) = v91;
  v94 = v412;
  v95 = swift_getOpaqueTypeConformance2();
  v96 = v405;
  *&v431 = v405;
  *(&v431 + 1) = v92;
  v432 = v93;
  v433 = v95;
  v97 = swift_getOpaqueTypeMetadata2();
  *&v431 = v96;
  *(&v431 + 1) = v92;
  v432 = v93;
  v433 = v95;
  v98 = swift_getOpaqueTypeConformance2();
  *&v431 = v84;
  *(&v431 + 1) = v97;
  v99 = v414;
  v432 = v414;
  v433 = v98;
  v100 = swift_getOpaqueTypeMetadata2();
  v325 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v323 = v304 - v101;
  v346 = v84;
  *&v431 = v84;
  *(&v431 + 1) = v97;
  v313 = v97;
  v314 = v98;
  v432 = v99;
  v433 = v98;
  v102 = swift_getOpaqueTypeConformance2();
  *&v431 = v100;
  v103 = MEMORY[0x1E69E6530];
  *(&v431 + 1) = MEMORY[0x1E69E6530];
  v432 = v102;
  v433 = MEMORY[0x1E69E6550];
  v104 = MEMORY[0x1E69E6550];
  v105 = swift_getOpaqueTypeMetadata2();
  v339 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v335 = v304 - v106;
  sub_1A439027C(255, &qword_1EB126D60, v103, MEMORY[0x1E69E6720]);
  v108 = v107;
  v326 = v100;
  *&v431 = v100;
  *(&v431 + 1) = v103;
  v320 = v102;
  v432 = v102;
  v433 = v104;
  v109 = swift_getOpaqueTypeConformance2();
  v110 = sub_1A43834EC();
  *&v431 = v105;
  *(&v431 + 1) = v108;
  v432 = v109;
  v433 = v110;
  v111 = swift_getOpaqueTypeMetadata2();
  v355 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v402 = v304 - v112;
  v113 = sub_1A5243204();
  v342 = v105;
  *&v431 = v105;
  *(&v431 + 1) = v108;
  v328 = v108;
  v329 = v110;
  v330 = v109;
  v432 = v109;
  v433 = v110;
  v114 = swift_getOpaqueTypeConformance2();
  v115 = sub_1A438DB60(&unk_1EB129110, MEMORY[0x1E69C23C0], MEMORY[0x1E69C23C8]);
  *&v431 = v111;
  *(&v431 + 1) = v113;
  v432 = v114;
  v433 = v115;
  v116 = swift_getOpaqueTypeMetadata2();
  v356 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v354 = v304 - v117;
  v357 = v111;
  *&v431 = v111;
  *(&v431 + 1) = v113;
  v349 = v113;
  v352 = v114;
  v432 = v114;
  v433 = v115;
  v347 = v115;
  v118 = swift_getOpaqueTypeConformance2();
  v119 = AssociatedTypeWitness;
  v120 = *(swift_getAssociatedConformanceWitness() + 8);
  *&v431 = v116;
  *(&v431 + 1) = v119;
  v121 = v119;
  v432 = v118;
  v433 = v120;
  v122 = swift_getOpaqueTypeMetadata2();
  v367 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v403 = v304 - v123;
  v124 = sub_1A524DF24();
  v358 = v116;
  *&v431 = v116;
  *(&v431 + 1) = v121;
  v353 = v118;
  v432 = v118;
  v433 = v120;
  v350 = v120;
  v125 = swift_getOpaqueTypeConformance2();
  v430[3] = *(v407 + 8);
  v430[2] = swift_getWitnessTable();
  v126 = swift_getWitnessTable();
  *&v431 = v122;
  *(&v431 + 1) = v124;
  v432 = v125;
  v433 = v126;
  v127 = swift_getOpaqueTypeMetadata2();
  v369 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127);
  v404 = v304 - v128;
  v368 = v122;
  *&v431 = v122;
  *(&v431 + 1) = v124;
  v360 = v125;
  v432 = v125;
  v433 = v126;
  v129 = swift_getOpaqueTypeConformance2();
  *&v431 = v127;
  *(&v431 + 1) = v124;
  v432 = v129;
  v433 = v126;
  v130 = swift_getOpaqueTypeMetadata2();
  v371 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130);
  v406 = (v304 - v131);
  v370 = v127;
  *&v431 = v127;
  *(&v431 + 1) = v124;
  v359 = v124;
  v361 = v129;
  v432 = v129;
  v433 = v126;
  v405 = v126;
  v132 = swift_getOpaqueTypeConformance2();
  v374 = v130;
  *&v431 = v130;
  *(&v431 + 1) = MEMORY[0x1E69E6530];
  v432 = v132;
  v407 = v132;
  v433 = MEMORY[0x1E69E6550];
  v133 = swift_getOpaqueTypeMetadata2();
  v372 = *(v133 - 8);
  MEMORY[0x1EEE9AC00](v133);
  v408 = v304 - v134;
  v373 = v135;
  v136 = sub_1A5248804();
  v378 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136);
  v375 = v304 - v137;
  v379 = v138;
  v381 = sub_1A5248804();
  v380 = *(v381 - 8);
  MEMORY[0x1EEE9AC00](v381);
  v376 = v304 - ((v139 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v140);
  v377 = v304 - v142;
  v143 = v425 + *(v382 + 168);
  v144 = *(v143 + 8);
  v145 = v411;
  if ((*(v143 + 32) & 1) == 0)
  {
    v146 = *v143;
    v147 = *(v143 + 16);
    v148 = *(v143 + 24);

    v149 = sub_1A524D254();
    v150 = sub_1A524A014();
    sub_1A5246DF4(v149, &dword_1A3C1C000, v150, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3F1D444(v146, v144, v147, v148, 0);
    v141 = (*(v145 + 8))(v94, v410);
  }

  MEMORY[0x1EEE9AC00](v141);
  v151 = v424;
  v304[-4] = v423;
  v304[-3] = v151;
  v152 = v425;
  v304[-2] = v425;
  sub_1A5249574();
  v153 = v307;
  sub_1A524B884();
  swift_getKeyPath();
  v154 = v422;
  LOBYTE(v431) = sub_1A437FA48(v422) & 1;
  v155 = v305;
  v156 = v312;
  sub_1A524A964();

  (*(v310 + 8))(v153, v156);
  swift_getKeyPath();
  *&v431 = sub_1A437FC48(v154);
  v157 = v306;
  v158 = v401;
  sub_1A524A964();

  (*(v308 + 8))(v155, v158);
  swift_getKeyPath();
  v159 = v383;
  sub_1A437F3E8(v154, v383);
  v160 = v316;
  v161 = v311;
  sub_1A524A964();

  (*(v384 + 8))(v159, v385);
  (*(v309 + 8))(v157, v161);
  swift_getKeyPath();
  v431 = *(v152 + *(v154 + 68));
  v162 = swift_getAssociatedTypeWitness();
  v163 = swift_getAssociatedConformanceWitness();
  v401 = v162;
  v385 = v163;
  v164 = sub_1A5243794();
  sub_1A524DF24();
  sub_1A524B6D4();
  sub_1A524B6A4();
  v165 = v430[0];
  v166 = v345;
  if (v430[0])
  {
    v433 = v164;
    v167 = swift_getWitnessTable();
  }

  else
  {
    v167 = 0;
    *(&v431 + 1) = 0;
    v432 = 0;
    v433 = 0;
  }

  *&v431 = v165;
  v434 = v167;
  v168 = v321;
  v169 = v319;
  sub_1A524A964();

  (*(v318 + 8))(v160, v169);
  sub_1A3EA8D18(&v431, &qword_1EB129078, &qword_1EB129080, MEMORY[0x1E69C2558]);
  swift_getKeyPath();
  v170 = v422;
  sub_1A437DD40(0, &unk_1EB124990, MEMORY[0x1E69C24E0], MEMORY[0x1E697DA80]);
  v171 = v425;
  v172 = v386;
  sub_1A5247C84();
  v173 = v324;
  sub_1A524A964();

  (*(v387 + 8))(v172, v388);
  (*(v322 + 8))(v168, v173);
  swift_getKeyPath();
  sub_1A437E174(&qword_1EB128A88, type metadata accessor for LemonadeItemsLayoutSpec, type metadata accessor for LemonadeItemsLayoutSpec, v417);
  sub_1A437E7F4(v170);
  v174 = v171 + *(v170 + 144);
  v175 = *v174;
  v176 = v411;
  if (*(v174 + 8) == 1)
  {
    LOBYTE(v431) = *v174;
  }

  else
  {

    v177 = sub_1A524D254();
    v178 = sub_1A524A014();
    sub_1A5246DF4(v177, &dword_1A3C1C000, v178, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    v179 = v412;
    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v175, 0);
    (*(v176 + 8))(v179, v410);
    LOBYTE(v175) = v431;
  }

  LOBYTE(v430[0]) = v175;
  v180 = v419;
  v181 = v417;
  v182 = sub_1A43A27C4(v419, v430);
  sub_1A438EB04(v181, type metadata accessor for LemonadeItemsLayoutSpec);
  sub_1A438EB04(v180, type metadata accessor for LemonadeItemsLayoutSpec.Style);
  *&v431 = v182;
  v183 = v351;
  sub_1A524A964();

  (*(v348 + 8))(v166, v183);
  swift_getKeyPath();
  sub_1A437E174(&qword_1EB128A88, type metadata accessor for LemonadeItemsLayoutSpec, type metadata accessor for LemonadeItemsLayoutSpec, v420);
  v184 = v389;
  sub_1A437E7F4(v422);
  v185 = *v174;
  if (*(v174 + 8) == 1)
  {
    LOBYTE(v431) = *v174;
  }

  else
  {

    v186 = sub_1A524D254();
    v187 = sub_1A524A014();
    sub_1A5246DF4(v186, &dword_1A3C1C000, v187, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    v188 = v412;
    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v185, 0);
    (*(v176 + 8))(v188, v410);
    LOBYTE(v185) = v431;
  }

  LOBYTE(v430[0]) = v185;
  v189 = v420;
  sub_1A43A2984(v184, v430);
  v191 = v190;
  sub_1A438EB04(v189, type metadata accessor for LemonadeItemsLayoutSpec);
  sub_1A438EB04(v184, type metadata accessor for LemonadeItemsLayoutSpec.Style);
  *&v431 = v191;
  v192 = v363;
  v193 = v364;
  v194 = v416;
  sub_1A524A964();

  v195 = (*(v362 + 8))(v194, v193);
  v196 = MEMORY[0x1A590D320](v195);
  MEMORY[0x1EEE9AC00](v196);
  v197 = v423;
  v198 = v424;
  v304[-2] = v423;
  v304[-1] = v198;
  v199 = v338;
  v200 = v366;
  sub_1A524A584();
  (*(v365 + 8))(v192, v200);
  v201 = v390;
  v202 = v422;
  v203 = v425;
  sub_1A437F5FC(v390);
  v204 = v333;
  v205 = v343;
  sub_1A524A9F4();
  (*(v391 + 8))(v201, v392);
  (*(v341 + 8))(v199, v205);
  sub_1A524A074();
  sub_1A4387C74(v202);
  v206 = v340;
  v207 = v337;
  sub_1A524B0D4();
  v208 = (*(v334 + 8))(v204, v207);
  MEMORY[0x1EEE9AC00](v208);
  v304[-4] = v197;
  v304[-3] = v198;
  v304[-2] = v203;
  swift_checkMetadataState();
  v209 = v323;
  v210 = v346;
  sub_1A524A584();
  (*(v344 + 8))(v206, v210);
  v211 = v393;
  sub_1A437EAFC(v202, v393);
  v212 = sub_1A5243D44();
  (*(v394 + 8))(v211, v395);
  *&v431 = v212;
  v213 = v418;
  v214 = *(v418 + 16);
  v215 = v415;
  v417 = v418 + 16;
  v416 = v214;
  (v214)(v415, v203, v202);
  v216 = (*(v213 + 80) + 32) & ~*(v213 + 80);
  v420 = *(v213 + 80);
  v217 = swift_allocObject();
  *(v217 + 16) = v197;
  *(v217 + 24) = v198;
  v218 = *(v213 + 32);
  v414 = v216;
  v418 = v213 + 32;
  v419 = v218;
  (v218)(v217 + v216, v215, v202);
  v219 = v335;
  v220 = v326;
  sub_1A524B144();

  (*(v325 + 8))(v209, v220);
  v221 = v203 + *(v202 + 164);
  v222 = *v221;
  v223 = *(v221 + 8);
  if (*(v221 + 9) == 1)
  {
    v224 = v411;
    v225 = v412;
  }

  else
  {

    v226 = sub_1A524D254();
    v227 = sub_1A524A014();
    sub_1A5246DF4(v226, &dword_1A3C1C000, v227, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    v225 = v412;
    sub_1A5249224();
    swift_getAtKeyPath();
    v228 = sub_1A3F1B4C4(v222, v223, 0);
    v224 = v411;
    (*(v411 + 8))(v225, v410, v228);
    v222 = v431;
    LOBYTE(v223) = BYTE8(v431);
  }

  *&v431 = v222;
  BYTE8(v431) = v223 & 1;
  v229 = v415;
  v230 = v425;
  v231 = v422;
  (v416)(v415, v425, v422);
  v232 = v414;
  v233 = swift_allocObject();
  v234 = v424;
  *(v233 + 16) = v423;
  *(v233 + 24) = v234;
  (v419)(v233 + v232, v229, v231);
  swift_checkMetadataState();
  v235 = v342;
  sub_1A524B144();

  (*(v339 + 8))(v219, v235);
  v236 = (v230 + *(v231 + 124));
  v237 = *v236;
  LOBYTE(v232) = *(v236 + 8);

  if ((v232 & 1) == 0)
  {
    v238 = sub_1A524D254();
    v239 = sub_1A524A014();
    sub_1A5246DF4(v238, &dword_1A3C1C000, v239, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();

    (*(v224 + 8))(v225, v410);
    v237 = v431;
  }

  *&v431 = v237;
  v240 = v422;
  (v416)(v229, v425, v422);
  v241 = v414;
  v242 = swift_allocObject();
  v243 = v423;
  v244 = v424;
  *(v242 + 16) = v423;
  *(v242 + 24) = v244;
  (v419)(v242 + v241, v229, v240);
  swift_checkMetadataState();
  v245 = v354;
  v246 = v357;
  v247 = v402;
  sub_1A524B144();

  (*(v355 + 8))(v247, v246);
  v248 = v398;
  v249 = v425;
  (*(v413 + 88))(v243);
  (v416)(v229, v249, v240);
  v250 = swift_allocObject();
  v251 = v424;
  *(v250 + 16) = v243;
  *(v250 + 24) = v251;
  (v419)(v250 + v241, v229, v240);
  v252 = v358;
  v253 = AssociatedTypeWitness;
  sub_1A524B144();

  (*(v399 + 8))(v248, v253);
  (*(v356 + 8))(v245, v252);
  v254 = (v425 + *(v240 + 72));
  v256 = *v254;
  v255 = v254[1];
  v430[0] = *v254;
  v430[1] = v255;
  *&v431 = v401;
  *(&v431 + 1) = v397;
  v432 = v385;
  v433 = AssociatedConformanceWitness;
  sub_1A52431C4();
  sub_1A524DF24();
  sub_1A524B6D4();
  sub_1A524B6A4();
  if (v431)
  {
    v257 = sub_1A5243164();
  }

  else
  {
    v257 = 0;
  }

  *&v431 = v257;
  v258 = v415;
  v259 = v422;
  (v416)(v415, v425, v422);
  v260 = v414;
  v261 = swift_allocObject();
  v262 = v424;
  *(v261 + 16) = v423;
  *(v261 + 24) = v262;
  (v419)(v261 + v260, v258, v259);
  v263 = swift_checkMetadataState();
  v264 = v368;
  v413 = v263;
  v265 = v403;
  sub_1A524B144();

  (*(v367 + 8))(v265, v264);
  *&v431 = v256;
  *(&v431 + 1) = v255;
  sub_1A524B6A4();
  if (v430[0])
  {
    v266 = sub_1A5243164();
  }

  else
  {
    v266 = 0;
  }

  *&v431 = v266;
  v267 = v415;
  v268 = v425;
  v269 = v422;
  (v416)(v415);
  v270 = v414;
  v271 = swift_allocObject();
  v272 = v424;
  *(v271 + 16) = v423;
  *(v271 + 24) = v272;
  (v419)(v271 + v270, v267, v269);
  v273 = v370;
  v274 = v404;
  sub_1A524B144();

  (*(v369 + 8))(v274, v273);
  *&v431 = sub_1A4653A64();
  v275 = v267;
  v276 = v267;
  v277 = v416;
  (v416)(v276, v268, v269);
  v278 = swift_allocObject();
  v279 = v423;
  v280 = v424;
  *(v278 + 16) = v423;
  *(v278 + 24) = v280;
  (v419)(v278 + v270, v275, v269);
  v281 = v374;
  v282 = v406;
  sub_1A524B154();

  (*(v371 + 8))(v282, v281);
  v283 = v422;
  v277(v275, v425, v422);
  v284 = v414;
  v285 = swift_allocObject();
  v286 = v424;
  *(v285 + 16) = v279;
  *(v285 + 24) = v286;
  v287 = v283;
  (v419)(v285 + v284, v275, v283);
  *&v431 = v281;
  *(&v431 + 1) = MEMORY[0x1E69E6530];
  v432 = v407;
  v433 = MEMORY[0x1E69E6550];
  v288 = swift_getOpaqueTypeConformance2();
  v289 = v375;
  v290 = v373;
  v291 = v408;
  sub_1A524B134();

  (*(v372 + 8))(v291, v290);
  v292 = v415;
  (v416)(v415, v425, v287);
  v293 = swift_allocObject();
  *(v293 + 16) = v423;
  *(v293 + 24) = v286;
  (v419)(v293 + v284, v292, v287);
  v294 = MEMORY[0x1E69805D0];
  v428 = v288;
  v429 = MEMORY[0x1E69805D0];
  v295 = v379;
  v296 = swift_getWitnessTable();
  v297 = v376;
  sub_1A524A994();

  (*(v378 + 8))(v289, v295);
  v426 = v296;
  v427 = v294;
  v298 = v381;
  swift_getWitnessTable();
  v299 = v380;
  v300 = *(v380 + 16);
  v301 = v377;
  v300(v377, v297, v298);
  v302 = *(v299 + 8);
  v302(v297, v298);
  v300(v400, v301, v298);
  return (v302)(v301, v298);
}

uint64_t sub_1A4383424(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1A439027C(255, a2, a3, MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A4383488(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1A437DD40(255, a2, a3, MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A43834EC()
{
  result = qword_1EB126D50;
  if (!qword_1EB126D50)
  {
    sub_1A439027C(255, &qword_1EB126D60, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB126D50);
  }

  return result;
}

uint64_t sub_1A4383580@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v418 = a3;
  v407 = a1;
  v405 = a4;
  v5 = *(a3 + 8);
  swift_getAssociatedTypeWitness();
  v421 = *(swift_getAssociatedConformanceWitness() + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v415 = sub_1A524CB74();
  v7 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v443 = v7;
  *(&v443 + 1) = a2;
  v444 = AssociatedConformanceWitness;
  v445 = v5;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  *&v443 = v7;
  *(&v443 + 1) = a2;
  v444 = AssociatedConformanceWitness;
  v445 = v5;
  v414 = v5;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v443 = OpaqueTypeMetadata2;
  *(&v443 + 1) = OpaqueTypeConformance2;
  v11 = swift_getOpaqueTypeMetadata2();
  *&v443 = OpaqueTypeMetadata2;
  *(&v443 + 1) = OpaqueTypeConformance2;
  v12 = swift_getOpaqueTypeConformance2();
  *&v443 = v11;
  *(&v443 + 1) = v12;
  v13 = swift_getOpaqueTypeMetadata2();
  *&v443 = v11;
  *(&v443 + 1) = v12;
  v14 = swift_getOpaqueTypeConformance2();
  v420 = a2;
  *&v443 = a2;
  *(&v443 + 1) = v13;
  v444 = v5;
  v445 = v14;
  v15 = type metadata accessor for LemonadeItemDetailsNavigationButton(255, &v443);
  sub_1A5248804();
  v16 = sub_1A5249754();
  v17 = v415;
  WitnessTable = swift_getWitnessTable();
  v19 = swift_getAssociatedConformanceWitness();
  v451 = swift_getWitnessTable();
  v452 = MEMORY[0x1E697F568];
  v20 = v451;
  v449 = swift_getWitnessTable();
  v450 = v20;
  v408 = v20;
  v410 = v16;
  KeyPath = swift_getWitnessTable();
  *&v443 = v17;
  *(&v443 + 1) = AssociatedTypeWitness;
  v444 = AssociatedTypeWitness;
  v445 = v16;
  v412 = WitnessTable;
  v446 = WitnessTable;
  v447 = v19;
  v411 = v19;
  v448 = KeyPath;
  v21 = sub_1A5244124();
  *&v443 = v17;
  *(&v443 + 1) = AssociatedTypeWitness;
  v444 = AssociatedTypeWitness;
  v445 = v15;
  v446 = WitnessTable;
  v447 = v19;
  v448 = v20;
  v22 = sub_1A5242374();
  v23 = sub_1A5249754();
  v24 = swift_getAssociatedTypeWitness();
  v25 = sub_1A5248804();
  v26 = sub_1A5248804();
  v27 = sub_1A524DF24();
  swift_getTupleTypeMetadata2();
  v421 = sub_1A524BE24();
  v374 = *(v421 - 8);
  MEMORY[0x1EEE9AC00](v421);
  v373 = &v323 - v28;
  v368 = v24;
  v351 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v350 = &v323 - v30;
  v388 = v25;
  v354 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v352 = &v323 - v32;
  v372 = v26;
  v367 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v355 = &v323 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v353 = &v323 - v36;
  v375 = v27;
  v370 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v371 = &v323 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v385 = &v323 - v40;
  v386 = v22;
  v346 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v345 = &v323 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v344 = &v323 - v44;
  v45 = sub_1A5242C74();
  MEMORY[0x1EEE9AC00](v45 - 8);
  v363 = &v323 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v387 = v21;
  v349 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v348 = &v323 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v347 = &v323 - v50;
  v51 = sub_1A52440D4();
  v338 = *(v51 - 8);
  v339 = v51;
  MEMORY[0x1EEE9AC00](v51);
  v336 = &v323 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v53);
  v335 = &v323 - v54;
  v389 = v23;
  v396 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v369 = &v323 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v57);
  v395 = &v323 - v58;
  v59 = v415;
  *&v443 = v415;
  *(&v443 + 1) = AssociatedTypeWitness;
  v444 = AssociatedTypeWitness;
  v445 = v15;
  v366 = v15;
  v60 = v412;
  v61 = v411;
  v446 = v412;
  v447 = v411;
  v448 = v408;
  v62 = sub_1A52420C4();
  v343 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v342 = &v323 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v64);
  v341 = &v323 - v65;
  v66 = sub_1A5242C84();
  v377 = *(v66 - 8);
  v378 = v66;
  MEMORY[0x1EEE9AC00](v66);
  v337 = &v323 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v68);
  v360 = &v323 - v69;
  v70 = sub_1A5244094();
  v333 = *(v70 - 8);
  v334 = v70;
  MEMORY[0x1EEE9AC00](v70);
  v340 = &v323 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for LemonadeFeedContents(0, v420, v418, v72);
  v393 = *(v73 - 8);
  v383 = *(v393 + 64);
  MEMORY[0x1EEE9AC00](v73);
  v384 = &v323 - v74;
  sub_1A437DD40(0, &qword_1EB128FB0, MEMORY[0x1E69C2E30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v75 - 8);
  v329 = &v323 - v76;
  v77 = sub_1A5243D54();
  MEMORY[0x1EEE9AC00](v77 - 8);
  v406 = &v323 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v443 = v59;
  *(&v443 + 1) = AssociatedTypeWitness;
  v365 = AssociatedTypeWitness;
  v444 = AssociatedTypeWitness;
  v445 = v410;
  v446 = v60;
  v447 = v61;
  v448 = KeyPath;
  v79 = sub_1A5243E24();
  v332 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v331 = &v323 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v81);
  v330 = &v323 - v82;
  v382 = type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  MEMORY[0x1EEE9AC00](v382);
  v376 = &v323 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v84);
  v359 = &v323 - v85;
  v419 = v79;
  v404 = v62;
  v86 = sub_1A5249754();
  v364 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v362 = &v323 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v88);
  v361 = &v323 - v89;
  v381 = type metadata accessor for LemonadeFeedBodyStyle(0);
  MEMORY[0x1EEE9AC00](v381);
  v358 = &v323 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v91);
  v357 = &v323 - v92;
  MEMORY[0x1EEE9AC00](v93);
  v380 = &v323 - v94;
  v417 = v86;
  v95 = sub_1A5249754();
  v392 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v391 = &v323 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v97);
  v390 = &v323 - v98;
  v416 = v99;
  v100 = sub_1A5249754();
  v398 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v397 = &v323 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v102);
  v413 = &v323 - v103;
  v104 = swift_getAssociatedTypeWitness();
  v326 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v325 = &v323 - v105;
  v399 = v106;
  v107 = sub_1A5248804();
  v328 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v327 = &v323 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v109);
  v356 = &v323 - v110;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v111 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v111);
  v400 = v107;
  v403 = v100;
  v402 = sub_1A5249754();
  v401 = *(v402 - 8);
  MEMORY[0x1EEE9AC00](v402);
  v113 = &v323 - v112;
  v114 = v407;
  v443 = *(v407 + *(v73 + 64));
  sub_1A524DF24();
  sub_1A524B6D4();
  sub_1A524B6A4();
  if (v442[0])
  {
    v379 = v442[0];
    if ((*(v418 + 80))(v420))
    {
      sub_1A5245904();
    }

    swift_unknownObjectRelease();
  }

  v115 = sub_1A437FEA8(v73);
  v394 = v113;
  if (v115)
  {
    v116 = v115;
    v117 = v114;
    v118 = v380;
    sub_1A437E7F4(v73);
    v119 = v118 + *(v381 + 24);
    v120 = *v119;
    v121 = *(v119 + 8);
    sub_1A438EB04(v118, type metadata accessor for LemonadeFeedBodyStyle);
    if (v121)
    {
      v122 = v358;
      sub_1A437E7F4(v73);
      v123 = v376;
      sub_1A438EBD4(v122, v376, type metadata accessor for LemonadeItemsLayoutSpec.Style);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v125 = *v123;
      v126 = *(v123 + 8);
      v127 = v73;
      v128 = *(v123 + 16);
      v324 = v127;
      if (EnumCaseMultiPayload == 1)
      {
        sub_1A3D6D890(v125, v126, v128);
        sub_1A3C4208C(*(v123 + 24), *(v123 + 32), *(v123 + 40));
        sub_1A3C47A98(0);
        v129 = v117;
        v410 = *(v130 + 64);
        v442[0] = v116;
        MEMORY[0x1EEE9AC00](v130);
        v131 = v420;
        v132 = v418;
        KeyPath = swift_getKeyPath();
        sub_1A437EAFC(v127, v406);
        v445 = v127;
        v446 = swift_getWitnessTable();
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v443);
        v134 = v393;
        v135 = *(v393 + 16);
        v135(boxed_opaque_existential_1, v117, v127);
        v136 = v384;
        v135(v384, v129, v127);
        v137 = (*(v134 + 80) + 32) & ~*(v134 + 80);
        v138 = swift_allocObject();
        *(v138 + 16) = v131;
        *(v138 + 24) = v132;
        (*(v134 + 32))(v138 + v137, v136, v127);
        v139 = v345;
        sub_1A5242364();
        v140 = v386;
        v141 = swift_getWitnessTable();
        v142 = v346;
        v143 = *(v346 + 16);
        v144 = v344;
        v143(v344, v139, v140);
        v145 = *(v142 + 8);
        v145(v139, v140);
        v143(v139, v144, v140);
        v146 = v387;
        v147 = swift_getWitnessTable();
        sub_1A3DF4890(v139, v146, v140, v147, v141);
        v145(v139, v140);
        v145(v144, v140);
        (*(v377 + 8))(v376 + v410, v378);
      }

      else
      {
        v190 = *(v123 + 24);
        LODWORD(v380) = *(v123 + 32);
        v191 = *(v123 + 40);
        v192 = *(v123 + 48);
        v193 = *(v123 + 64);
        v408 = *(v123 + 56);
        v381 = v190;
        v382 = v193;
        sub_1A3C4208C(*(v123 + 72), *(v123 + 80), *(v123 + 88));
        sub_1A3F1BD68(v191, v192);
        sub_1A3D6D890(v125, v126, v128);
        v194 = v335;
        sub_1A437DF50(&qword_1EB12F3F8, MEMORY[0x1E69C2998], MEMORY[0x1E69C2998], v335);
        v196 = v338;
        v195 = v339;
        v197 = v336;
        (*(v338 + 104))(v336, *MEMORY[0x1E69C2978], v339);
        v198 = sub_1A52440C4();
        v199 = *(v196 + 8);
        v199(v197, v195);
        v200 = (v199)(v194, v195);
        if ((v198 & 1) == 0)
        {
          sub_1A43A19D8(v408, v382, v201);
        }

        v442[0] = v116;
        MEMORY[0x1EEE9AC00](v200);
        v379 = swift_getKeyPath();
        sub_1A437EAFC(v127, v406);
        sub_1A437EF48(v127, v363);
        v445 = v127;
        v446 = swift_getWitnessTable();
        v202 = __swift_allocate_boxed_opaque_existential_1(&v443);
        v203 = *(v393 + 16);
        v203(v202, v117, v127);
        LOBYTE(v441[0]) = *(*(v117 + *(v127 + 36)) + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_presentationContext);
        v453[0] = 3;
        if (static LemonadePresentationContext.== infix(_:_:)(v441, v453))
        {
          v378 = sub_1A524BC54();
        }

        else
        {
          v378 = 0;
        }

        v241 = v384;
        v242 = v324;
        v203(v384, v117, v324);
        v243 = v393;
        v244 = (*(v393 + 80) + 32) & ~*(v393 + 80);
        v245 = (v383 + v244 + 7) & 0xFFFFFFFFFFFFFFF8;
        v246 = swift_allocObject();
        v132 = v418;
        *(v246 + 16) = v420;
        *(v246 + 24) = v132;
        (*(v243 + 32))(v246 + v244, v241, v242);
        v247 = v246 + v245;
        *v247 = v381;
        *(v247 + 8) = v380;
        v248 = v348;
        sub_1A5244114();
        v249 = v387;
        v250 = swift_getWitnessTable();
        v251 = v349;
        v252 = *(v349 + 16);
        v253 = v347;
        v252(v347, v248, v249);
        v254 = *(v251 + 8);
        v254(v248, v249);
        v252(v248, v253, v249);
        v255 = v386;
        v256 = swift_getWitnessTable();
        sub_1A3DF4798(v248, v249, v255, v250, v256);
        v257 = sub_1A3F1BD68(v408, v382);
        (v254)(v248, v249, v257);
        v254(v253, v249);
      }

      v258 = v407;
      v259 = v420;
      v260 = (*(v132 + 88))(v420, v132);
      v261 = MEMORY[0x1E697EBF8];
      v262 = v372;
      if (v260)
      {
        v263 = v350;
        (*(v132 + 152))(*(v258 + *(v324 + 36)), v259, v132);
        sub_1A524BC74();
        v321 = v368;
        v322 = swift_getAssociatedConformanceWitness();
        v264 = v352;
        sub_1A524AFE4();
        (*(v351 + 8))(v263, v321);
        sub_1A524A074();
        v415 = v322;
        v426 = v322;
        v427 = v261;
        v265 = v388;
        v266 = swift_getWitnessTable();
        v267 = v355;
        sub_1A524B0D4();
        (*(v354 + 8))(v264, v265);
        v424 = v266;
        v425 = MEMORY[0x1E697E5D8];
        swift_getWitnessTable();
        v268 = v367;
        v269 = *(v367 + 16);
        v270 = v353;
        v269(v353, v267, v262);
        v271 = *(v268 + 8);
        v271(v267, v262);
        v269(v267, v270, v262);
        v271(v270, v262);
        v261 = MEMORY[0x1E697EBF8];
        v272 = v371;
        (*(v268 + 32))(v371, v267, v262);
        (*(v268 + 56))(v272, 0, 1, v262);
      }

      else
      {
        v272 = v371;
        (*(v367 + 56))(v371, 1, 1, v372);
        v415 = swift_getAssociatedConformanceWitness();
        v442[4] = v415;
        v442[5] = v261;
        v442[2] = swift_getWitnessTable();
        v442[3] = MEMORY[0x1E697E5D8];
        swift_getWitnessTable();
      }

      v273 = sub_1A524DF24();
      v274 = v385;
      (*(*(v273 - 8) + 16))(v385, v272, v273);
      v275 = v370;
      v412 = *(v370 + 8);
      v418 = v370 + 8;
      v276 = v375;
      v412(v272, v375);
      v277 = v396;
      v278 = v369;
      v279 = v389;
      (*(v396 + 16))(v369, v395);
      *&v443 = v278;
      (*(v275 + 16))(v272, v274, v276);
      *(&v443 + 1) = v272;
      v442[0] = v279;
      v442[1] = v276;
      v280 = swift_getWitnessTable();
      v281 = swift_getWitnessTable();
      v439 = v280;
      v440 = v281;
      v411 = MEMORY[0x1E697F968];
      v441[0] = swift_getWitnessTable();
      v437 = v415;
      v438 = v261;
      v435 = swift_getWitnessTable();
      v436 = MEMORY[0x1E697E5D8];
      v434 = swift_getWitnessTable();
      v441[1] = swift_getWitnessTable();
      v282 = v373;
      sub_1A3DF4988(&v443, 2uLL, v442);
      v283 = v412;
      v412(v272, v276);
      v284 = *(v277 + 8);
      v396 = v277 + 8;
      v284(v278, v279);
      v285 = swift_getWitnessTable();
      v286 = swift_getWitnessTable();
      v432 = v285;
      v433 = v286;
      v287 = v417;
      v288 = swift_getWitnessTable();
      v289 = v421;
      v290 = swift_getWitnessTable();
      v239 = v390;
      sub_1A3DF4890(v282, v287, v289, v288, v290);
      (*(v374 + 8))(v282, v289);
      v283(v385, v276);
      v284(v395, v389);
    }

    else
    {
      v396 = v120;
      v158 = v357;
      sub_1A437E7F4(v73);
      v159 = v158;
      v160 = v359;
      sub_1A438EBD4(v159, v359, type metadata accessor for LemonadeItemsLayoutSpec.Style);
      v161 = swift_getEnumCaseMultiPayload();
      v162 = *v160;
      v163 = *(v160 + 8);
      v164 = *(v160 + 16);
      if (v161 == 1)
      {
        sub_1A3D6D890(*v160, *(v160 + 8), *(v160 + 16));
        sub_1A3C4208C(*(v160 + 24), *(v160 + 32), *(v160 + 40));
        sub_1A3C47A98(0);
        v166 = v378;
        v167 = v377;
        v168 = v160 + *(v165 + 64);
        v169 = v360;
        v170 = (*(v377 + 32))(v360, v168, v378);
        v442[0] = v116;
        MEMORY[0x1EEE9AC00](v170);
        v171 = v420;
        v172 = v418;
        v410 = swift_getKeyPath();
        sub_1A437EAFC(v73, v406);
        (*(v167 + 16))(v337, v169, v166);
        sub_1A5242854();
        sub_1A5247CB4();
        v173 = v117;
        sub_1A5247C84();
        v411 = v443;
        v445 = v73;
        v446 = swift_getWitnessTable();
        v174 = __swift_allocate_boxed_opaque_existential_1(&v443);
        v175 = v393;
        v176 = *(v393 + 16);
        v176(v174, v173, v73);
        v177 = v384;
        v176(v384, v173, v73);
        v178 = (*(v175 + 80) + 32) & ~*(v175 + 80);
        v179 = swift_allocObject();
        *(v179 + 16) = v171;
        *(v179 + 24) = v172;
        (*(v175 + 32))(v179 + v178, v177, v73);
        v180 = v342;
        sub_1A52420B4();
        v181 = v404;
        v182 = swift_getWitnessTable();
        v183 = v343;
        v184 = *(v343 + 16);
        v185 = v341;
        v184(v341, v180, v181);
        v186 = *(v183 + 8);
        v186(v180, v181);
        v184(v180, v185, v181);
        v187 = v419;
        v188 = swift_getWitnessTable();
        v189 = v361;
        sub_1A3DF4890(v180, v187, v181, v188, v182);
        v186(v180, v181);
        v186(v185, v181);
        (*(v377 + 8))(v360, v378);
      }

      else
      {
        v395 = *(v160 + 24);
        LODWORD(v389) = *(v160 + 32);
        v204 = *(v160 + 48);
        v388 = *(v160 + 40);
        v205 = v160;
        v206 = v117;
        v207 = *(v205 + 56);
        v208 = *(v205 + 64);
        v209 = *(v205 + 72);
        v210 = *(v205 + 80);
        v211 = *(v205 + 88);
        LODWORD(v408) = *(v205 + 89);
        sub_1A3C4208C(v209, v210, v211);
        sub_1A3F1BD68(v207, v208);
        sub_1A3F1BD68(v388, v204);
        v212 = sub_1A3D6D890(v162, v163, v164);
        v442[0] = v116;
        MEMORY[0x1EEE9AC00](v212);
        v213 = v420;
        v388 = swift_getKeyPath();
        sub_1A437EAFC(v73, v406);
        sub_1A5242854();
        sub_1A5247CB4();
        sub_1A5247C84();
        v411 = v443;
        v445 = v73;
        v446 = swift_getWitnessTable();
        v214 = __swift_allocate_boxed_opaque_existential_1(&v443);
        v215 = v393;
        v216 = *(v393 + 16);
        v216(v214, v206, v73);
        sub_1A438EB64(v206 + *(v73 + 40), v329, &qword_1EB128FB0, MEMORY[0x1E69C2E30], MEMORY[0x1E69E6720]);
        v217 = v384;
        v216(v384, v206, v73);
        v218 = (*(v215 + 80) + 32) & ~*(v215 + 80);
        v219 = (v383 + v218 + 7) & 0xFFFFFFFFFFFFFFF8;
        v220 = swift_allocObject();
        v221 = v418;
        *(v220 + 16) = v213;
        *(v220 + 24) = v221;
        (*(v215 + 32))(v220 + v218, v217, v73);
        v222 = v220 + v219;
        *v222 = v395;
        *(v222 + 8) = v389;
        (*(v333 + 104))(v340, *MEMORY[0x1E69C2960], v334);
        sub_1A524BC84();
        v223 = v331;
        sub_1A5243E14();
        v224 = v419;
        v418 = swift_getWitnessTable();
        v225 = v332;
        v226 = *(v332 + 16);
        v227 = v330;
        v226(v330, v223, v224);
        v228 = *(v225 + 8);
        v228(v223, v224);
        v226(v223, v227, v224);
        v229 = v404;
        v230 = swift_getWitnessTable();
        v189 = v361;
        sub_1A3DF4798(v223, v224, v229, v418, v230);
        v228(v223, v224);
        v228(v227, v224);
      }

      v231 = swift_getWitnessTable();
      v232 = swift_getWitnessTable();
      v422 = v231;
      v423 = v232;
      v233 = v417;
      v234 = swift_getWitnessTable();
      v235 = v364;
      v236 = v362;
      (*(v364 + 16))(v362, v189, v233);
      v237 = v421;
      v238 = swift_getWitnessTable();
      v239 = v390;
      sub_1A3DF4798(v236, v233, v237, v234, v238);
      v240 = *(v235 + 8);
      v240(v236, v233);
      v240(v189, v233);
    }

    v154 = v413;
    v291 = swift_getWitnessTable();
    v292 = swift_getWitnessTable();
    v430 = v291;
    v431 = v292;
    v293 = swift_getWitnessTable();
    v294 = swift_getWitnessTable();
    v428 = v293;
    v429 = v294;
    v295 = v416;
    v296 = swift_getWitnessTable();
    v297 = v392;
    v298 = v391;
    (*(v392 + 16))(v391, v239, v295);
    sub_1A3DF4798(v298, v295, MEMORY[0x1E6981148], v296, MEMORY[0x1E6981138]);
    v299 = *(v297 + 8);
    v299(v298, v295);
    v299(v239, v295);
    v156 = MEMORY[0x1E6981138];
    v157 = MEMORY[0x1E697EBF8];
    v155 = v403;
  }

  else
  {
    v443 = xmmword_1A5305860;
    LOBYTE(v444) = 0;
    v445 = MEMORY[0x1E69E7CC0];
    v148 = swift_getWitnessTable();
    v149 = swift_getWitnessTable();
    v442[26] = v148;
    v442[27] = v149;
    v150 = swift_getWitnessTable();
    v151 = swift_getWitnessTable();
    v442[24] = v150;
    v442[25] = v151;
    v152 = v416;
    v153 = swift_getWitnessTable();
    v154 = v413;
    sub_1A3DF4890(&v443, v152, MEMORY[0x1E6981148], v153, MEMORY[0x1E6981138]);
    v155 = v403;
    v156 = MEMORY[0x1E6981138];
    v157 = MEMORY[0x1E697EBF8];
  }

  v300 = swift_getWitnessTable();
  v301 = swift_getWitnessTable();
  v442[22] = v300;
  v442[23] = v301;
  v302 = swift_getWitnessTable();
  v303 = swift_getWitnessTable();
  v442[20] = v302;
  v442[21] = v303;
  v442[18] = swift_getWitnessTable();
  v442[19] = v156;
  v304 = swift_getWitnessTable();
  v305 = v398;
  v306 = v397;
  (*(v398 + 16))(v397, v154, v155);
  v307 = swift_getAssociatedConformanceWitness();
  v442[16] = v307;
  v442[17] = v157;
  v308 = v400;
  v309 = swift_getWitnessTable();
  v310 = v394;
  sub_1A3DF4890(v306, v308, v155, v309, v304);
  v311 = *(v305 + 8);
  v311(v306, v155);
  v311(v413, v155);
  v442[14] = v307;
  v442[15] = MEMORY[0x1E697EBF8];
  v312 = swift_getWitnessTable();
  v313 = swift_getWitnessTable();
  v314 = swift_getWitnessTable();
  v442[12] = v313;
  v442[13] = v314;
  v315 = swift_getWitnessTable();
  v316 = swift_getWitnessTable();
  v442[10] = v315;
  v442[11] = v316;
  v442[8] = swift_getWitnessTable();
  v442[9] = v156;
  v317 = swift_getWitnessTable();
  v442[6] = v312;
  v442[7] = v317;
  v318 = v402;
  swift_getWitnessTable();
  v319 = v401;
  (*(v401 + 16))(v405, v310, v318);
  return (*(v319 + 8))(v310, v318);
}

uint64_t sub_1A4386624@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v52 = a1;
  v56 = a3;
  v4 = *(a2 + 16);
  v55 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v47 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = *(v6 + 24);
  v7 = *(v54 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v63 = AssociatedTypeWitness;
  v64 = v4;
  v65 = AssociatedConformanceWitness;
  v66 = v7;
  v10 = v7;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v63 = AssociatedTypeWitness;
  v64 = v4;
  v65 = AssociatedConformanceWitness;
  v66 = v7;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v63 = OpaqueTypeMetadata2;
  v64 = OpaqueTypeConformance2;
  v13 = swift_getOpaqueTypeMetadata2();
  v63 = OpaqueTypeMetadata2;
  v64 = OpaqueTypeConformance2;
  v14 = swift_getOpaqueTypeConformance2();
  v63 = v13;
  v64 = v14;
  v15 = swift_getOpaqueTypeMetadata2();
  v48 = v15;
  v63 = v13;
  v64 = v14;
  v46 = swift_getOpaqueTypeConformance2();
  v63 = v4;
  v64 = v15;
  v44 = v10;
  v65 = v10;
  v66 = v46;
  v16 = type metadata accessor for LemonadeItemDetailsNavigationButton(0, &v63);
  v50 = *(v16 - 8);
  v51 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v45 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v49 = &v41 - v19;
  v41 = v4;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v20 = swift_getAssociatedTypeWitness();
  v42 = v20;
  v43 = *(v20 - 8);
  v21 = v43;
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v41 - v25;
  v28 = v52;
  v27 = v53;
  sub_1A438B6EC(v52, a2);
  v30 = v29;
  swift_checkMetadataState();
  sub_1A5242604();
  (*(v21 + 16))(v23, v26, v20);
  v31 = v47;
  v32 = v41;
  (*(v55 + 16))(v47, v27, v41);
  v33 = *(v27 + *(a2 + 36));
  v57 = v32;
  v58 = v54;
  v59 = v27;
  v60 = v30;
  v61 = v26;
  v62 = v28;

  swift_unknownObjectRetain();
  v34 = v45;
  sub_1A472B100(v23, v31, v33, sub_1A439026C, v32, v45, v48, v44, v46);
  swift_unknownObjectRelease();
  v35 = v51;
  swift_getWitnessTable();
  v37 = v49;
  v36 = v50;
  v38 = *(v50 + 16);
  v38(v49, v34, v35);
  v39 = *(v36 + 8);
  v39(v34, v35);
  v38(v56, v37, v35);
  v39(v37, v35);
  return (*(v43 + 8))(v26, v42);
}

uint64_t sub_1A4386BB8@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v61 = a4;
  v55 = a1;
  v56 = a3;
  v59 = a7;
  sub_1A3DC7D88(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v60 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_1A5249234();
  v49 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v48 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1A5242D14();
  v57 = *(v13 - 8);
  v58 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a6 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v67 = AssociatedTypeWitness;
  v68 = a5;
  v69 = AssociatedConformanceWitness;
  v70 = v16;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v67 = AssociatedTypeWitness;
  v68 = a5;
  v69 = AssociatedConformanceWitness;
  v70 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v67 = OpaqueTypeMetadata2;
  v68 = OpaqueTypeConformance2;
  v21 = swift_getOpaqueTypeMetadata2();
  v67 = OpaqueTypeMetadata2;
  v68 = OpaqueTypeConformance2;
  v22 = swift_getOpaqueTypeConformance2();
  v67 = v21;
  v68 = v22;
  v23 = swift_getOpaqueTypeMetadata2();
  v67 = v21;
  v68 = v22;
  v24 = swift_getOpaqueTypeConformance2();
  v67 = a5;
  v68 = v23;
  v69 = v16;
  v70 = v24;
  v25 = type metadata accessor for LemonadeItemDetailsNavigationButton(0, &v67);
  v53 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v48 - v26;
  v51 = sub_1A5248804();
  v28 = sub_1A5249754();
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v52 = &v48 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v54 = &v48 - v32;
  v34 = type metadata accessor for LemonadeFeedContents(0, a5, a6, v33);
  sub_1A4386624(v55, v34, v27);
  v55 = v15;
  sub_1A437DF50(&qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E69C2218], v15);
  v35 = a2 + *(v34 + 144);
  v36 = *v35;
  if (*(v35 + 8) == 1)
  {
    LOBYTE(v67) = *v35;
  }

  else
  {

    v37 = sub_1A524D254();
    v38 = sub_1A524A014();
    sub_1A5246DF4(v37, &dword_1A3C1C000, v38, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    v39 = v48;
    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v36, 0);
    (*(v49 + 8))(v39, v50);
    LOBYTE(v36) = v67;
  }

  v66 = v36;
  v40 = v60;
  sub_1A437E174(&unk_1EB128A40, sub_1A3DC7D88, sub_1A3DC7D88, v60);
  WitnessTable = swift_getWitnessTable();
  v42 = v52;
  v43 = v55;
  sub_1A43A3C04(v56, v61 & 1, v55, &v66, v25, WitnessTable, v52);
  sub_1A438EB04(v40, sub_1A3DC7D88);
  (*(v57 + 8))(v43, v58);
  (*(v53 + 8))(v27, v25);
  v64 = WitnessTable;
  v65 = MEMORY[0x1E697F568];
  v62 = swift_getWitnessTable();
  v63 = WitnessTable;
  swift_getWitnessTable();
  v44 = *(v29 + 16);
  v45 = v54;
  v44(v54, v42, v28);
  v46 = *(v29 + 8);
  v46(v42, v28);
  v44(v59, v45, v28);
  return (v46)(v45, v28);
}

uint64_t sub_1A4387284@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, char *a4@<X8>)
{
  v8 = *(a3 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  v21[0] = a2;
  v21[1] = swift_getOpaqueTypeMetadata2();
  v21[2] = v8;
  v21[3] = swift_getOpaqueTypeConformance2();
  v9 = type metadata accessor for LemonadeItemDetailsNavigationButton(0, v21);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v21 - v14;
  v17 = type metadata accessor for LemonadeFeedContents(0, a2, a3, v16);
  sub_1A4386624(a1, v17, v12);
  swift_getWitnessTable();
  v18 = *(v10 + 16);
  v18(v15, v12, v9);
  v19 = *(v10 + 8);
  v19(v12, v9);
  v18(a4, v15, v9);
  return (v19)(v15, v9);
}

uint64_t sub_1A4387544@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(*(v2 + 24) + 8);
  swift_getAssociatedTypeWitness();
  sub_1A5248804();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1A524CB74();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  v19 = v3;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v21 = v4;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v7 = type metadata accessor for LemonadeItemDetailsNavigationButton(255, &v19);
  sub_1A5248804();
  v8 = sub_1A5249754();
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = swift_getWitnessTable();
  v28 = v11;
  v29 = MEMORY[0x1E697F568];
  v26 = swift_getWitnessTable();
  v27 = v11;
  v12 = swift_getWitnessTable();
  v19 = v6;
  OpaqueTypeMetadata2 = AssociatedTypeWitness;
  v21 = AssociatedTypeWitness;
  OpaqueTypeConformance2 = v8;
  v23 = WitnessTable;
  v24 = AssociatedConformanceWitness;
  v25 = v12;
  sub_1A5243E24();
  v19 = v6;
  OpaqueTypeMetadata2 = AssociatedTypeWitness;
  v21 = AssociatedTypeWitness;
  OpaqueTypeConformance2 = v7;
  v23 = WitnessTable;
  v24 = AssociatedConformanceWitness;
  v25 = v11;
  sub_1A52420C4();
  sub_1A5249754();
  v19 = v6;
  OpaqueTypeMetadata2 = AssociatedTypeWitness;
  v21 = AssociatedTypeWitness;
  OpaqueTypeConformance2 = v8;
  v23 = WitnessTable;
  v24 = AssociatedConformanceWitness;
  v25 = v12;
  sub_1A5244124();
  v19 = v6;
  OpaqueTypeMetadata2 = AssociatedTypeWitness;
  v21 = AssociatedTypeWitness;
  OpaqueTypeConformance2 = v7;
  v23 = WitnessTable;
  v24 = AssociatedConformanceWitness;
  v25 = v11;
  sub_1A5242374();
  sub_1A5249754();
  swift_getAssociatedTypeWitness();
  sub_1A5248804();
  sub_1A5248804();
  sub_1A524DF24();
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  sub_1A5249754();
  sub_1A5249754();
  sub_1A5249754();
  v19 = swift_getAssociatedConformanceWitness();
  OpaqueTypeMetadata2 = MEMORY[0x1E697EBF8];
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1A524B894();
  v13 = MEMORY[0x1E6980A08];
  sub_1A439027C(255, &qword_1EB1277C8, MEMORY[0x1E69E6370], MEMORY[0x1E6980A08]);
  sub_1A5248804();
  sub_1A439027C(255, &unk_1EB1277B0, MEMORY[0x1E69E6530], v13);
  sub_1A5248804();
  v14 = MEMORY[0x1E6980A08];
  sub_1A437DD40(255, &qword_1EB1279C0, MEMORY[0x1E69C2948], MEMORY[0x1E6980A08]);
  sub_1A5248804();
  sub_1A3F1B2AC(255);
  sub_1A5248804();
  sub_1A437DD40(255, &qword_1EB1279F0, MEMORY[0x1E69C24E0], v14);
  sub_1A5248804();
  sub_1A439027C(255, &qword_1EB1279A8, MEMORY[0x1E69E7DE0], v13);
  sub_1A5248804();
  v15 = sub_1A5248804();
  return (*(*(v15 - 8) + 16))(a2, a1, v15);
}

void sub_1A4387C74(uint64_t a1)
{
  sub_1A437DD40(0, &qword_1EB12F3F8, MEMORY[0x1E69C2998], MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v30 - v4;
  v6 = sub_1A52440D4();
  v7 = *(v6 - 8);
  v33 = v6;
  v34 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A5249234();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v1 + *(a1 + 172);
  v15 = *v14;
  if (*(v14 + 8) == 1)
  {
    v16 = v13;
    v17 = *v14;
    if (!v15)
    {
      return;
    }
  }

  else
  {

    v18 = sub_1A524D254();
    v31 = a1;
    v19 = v10;
    v20 = v11;
    v21 = v1;
    v22 = v9;
    v23 = v18;
    v24 = sub_1A524A014();
    v32 = v5;
    v25 = v24;
    v26 = v23;
    v9 = v22;
    v1 = v21;
    v11 = v20;
    v10 = v19;
    a1 = v31;
    sub_1A5246DF4(v26, &dword_1A3C1C000, v25, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    v5 = v32;
    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v15, 0);
    v16 = v13;
    (*(v11 + 8))(v13, v19);
    v17 = v35;
    if (!v35)
    {
      return;
    }
  }

  if (v17 != 1)
  {
    sub_1A438EB64(v1 + *(a1 + 180), v5, &qword_1EB12F3F8, MEMORY[0x1E69C2998], MEMORY[0x1E697DCB8]);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(v34 + 32))(v9, v5, v33);
    }

    else
    {
      v27 = sub_1A524D254();
      v28 = sub_1A524A014();
      sub_1A5246DF4(v27, &dword_1A3C1C000, v28, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

      sub_1A5249224();
      swift_getAtKeyPath();

      (*(v11 + 8))(v16, v10);
    }

    v29 = (*(v34 + 88))(v9, v33);
    if (v29 != *MEMORY[0x1E69C2990] && v29 != *MEMORY[0x1E69C2978] && v29 != *MEMORY[0x1E69C2980] && v29 != *MEMORY[0x1E69C2988])
    {
      sub_1A524E6E4();
      __break(1u);
    }
  }
}

uint64_t sub_1A43880E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v93 = a4;
  v86 = a2;
  v89 = a1;
  v91 = a5;
  v90 = sub_1A5249284();
  v88 = *(v90 - 1);
  MEMORY[0x1EEE9AC00](v90);
  v87 = v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v85 = sub_1A5248804();
  v84 = swift_getAssociatedTypeWitness();
  v83 = *(swift_getAssociatedConformanceWitness() + 16);
  v10 = swift_getAssociatedTypeWitness();
  v11 = sub_1A524CB74();
  v12 = swift_getAssociatedTypeWitness();
  v13 = v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v122 = v12;
  v123 = a3;
  v124 = AssociatedConformanceWitness;
  v125 = v13;
  v15 = v13;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v122 = v12;
  v123 = a3;
  v17 = a3;
  v94 = a3;
  v124 = AssociatedConformanceWitness;
  v125 = v15;
  v82 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v122 = OpaqueTypeMetadata2;
  v123 = OpaqueTypeConformance2;
  v19 = swift_getOpaqueTypeMetadata2();
  v122 = OpaqueTypeMetadata2;
  v123 = OpaqueTypeConformance2;
  v20 = swift_getOpaqueTypeConformance2();
  v122 = v19;
  v123 = v20;
  v21 = swift_getOpaqueTypeMetadata2();
  v122 = v19;
  v123 = v20;
  v22 = swift_getOpaqueTypeConformance2();
  v122 = v17;
  v123 = v21;
  v124 = v15;
  v125 = v22;
  v23 = type metadata accessor for LemonadeItemDetailsNavigationButton(255, &v122);
  sub_1A5248804();
  v24 = sub_1A5249754();
  WitnessTable = swift_getWitnessTable();
  v26 = swift_getAssociatedConformanceWitness();
  v27 = swift_getWitnessTable();
  v131 = v27;
  v132 = MEMORY[0x1E697F568];
  v83 = MEMORY[0x1E697E858];
  v129 = swift_getWitnessTable();
  v130 = v27;
  v84 = MEMORY[0x1E697F968];
  v28 = swift_getWitnessTable();
  v122 = v11;
  v123 = v10;
  v124 = v10;
  v125 = v24;
  v126 = WitnessTable;
  v127 = v26;
  v128 = v28;
  v80[1] = sub_1A5243E24();
  v122 = v11;
  v123 = v10;
  v124 = v10;
  v125 = v23;
  v126 = WitnessTable;
  v127 = v26;
  v128 = v27;
  v81 = sub_1A52420C4();
  v80[0] = sub_1A5249754();
  v122 = v11;
  v123 = v10;
  v124 = v10;
  v125 = v24;
  v126 = WitnessTable;
  v127 = v26;
  v128 = v28;
  sub_1A5244124();
  v122 = v11;
  v123 = v10;
  v124 = v10;
  v125 = v23;
  v126 = WitnessTable;
  v127 = v26;
  v128 = v27;
  sub_1A5242374();
  sub_1A5249754();
  swift_getAssociatedTypeWitness();
  sub_1A5248804();
  sub_1A5248804();
  sub_1A524DF24();
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  sub_1A5249754();
  sub_1A5249754();
  sub_1A5249754();
  v120 = swift_getAssociatedConformanceWitness();
  v121 = MEMORY[0x1E697EBF8];
  v29 = swift_getWitnessTable();
  v30 = swift_getWitnessTable();
  v31 = swift_getWitnessTable();
  v118 = v30;
  v119 = v31;
  v32 = swift_getWitnessTable();
  v33 = swift_getWitnessTable();
  v116 = v32;
  v117 = v33;
  v114 = swift_getWitnessTable();
  v115 = MEMORY[0x1E6981138];
  v34 = swift_getWitnessTable();
  v112 = v29;
  v113 = v34;
  swift_getWitnessTable();
  sub_1A524B894();
  v35 = MEMORY[0x1E6980A08];
  sub_1A439027C(255, &qword_1EB1277C8, MEMORY[0x1E69E6370], MEMORY[0x1E6980A08]);
  sub_1A5248804();
  sub_1A439027C(255, &unk_1EB1277B0, MEMORY[0x1E69E6530], v35);
  sub_1A5248804();
  v36 = MEMORY[0x1E69C2948];
  v37 = MEMORY[0x1E6980A08];
  sub_1A437DD40(255, &qword_1EB1279C0, MEMORY[0x1E69C2948], MEMORY[0x1E6980A08]);
  sub_1A5248804();
  sub_1A3F1B2AC(255);
  sub_1A5248804();
  v85 = MEMORY[0x1E69C24E0];
  sub_1A437DD40(255, &qword_1EB1279F0, MEMORY[0x1E69C24E0], v37);
  sub_1A5248804();
  sub_1A439027C(255, &qword_1EB1279A8, MEMORY[0x1E69E7DE0], v35);
  AssociatedTypeWitness = sub_1A5248804();
  v38 = sub_1A5248804();
  v39 = swift_getWitnessTable();
  v40 = sub_1A4383424(&qword_1EB1277D0, &qword_1EB1277C8, MEMORY[0x1E69E6370]);
  v110 = v39;
  v111 = v40;
  v41 = swift_getWitnessTable();
  v42 = sub_1A4383424(&qword_1EB1277C0, &unk_1EB1277B0, MEMORY[0x1E69E6530]);
  v108 = v41;
  v109 = v42;
  v43 = swift_getWitnessTable();
  v44 = sub_1A4383488(&qword_1EB1279C8, &qword_1EB1279C0, v36);
  v106 = v43;
  v107 = v44;
  v45 = swift_getWitnessTable();
  v46 = sub_1A438DB60(&qword_1EB1279E8, sub_1A3F1B2AC, MEMORY[0x1E6980A18]);
  v104 = v45;
  v105 = v46;
  v47 = swift_getWitnessTable();
  v48 = sub_1A4383488(&qword_1EB1279F8, &qword_1EB1279F0, v85);
  v102 = v47;
  v103 = v48;
  v49 = swift_getWitnessTable();
  v50 = sub_1A4383424(&qword_1EB1279B0, &qword_1EB1279A8, MEMORY[0x1E69E7DE0]);
  v100 = v49;
  v101 = v50;
  v98 = swift_getWitnessTable();
  v99 = v50;
  v51 = swift_getWitnessTable();
  v122 = v38;
  v123 = v38;
  v124 = v51;
  v125 = v51;
  v52 = swift_getOpaqueTypeMetadata2();
  v122 = v38;
  v123 = v38;
  v124 = v51;
  v125 = v51;
  v53 = swift_getOpaqueTypeConformance2();
  v122 = v52;
  v123 = v53;
  swift_getOpaqueTypeMetadata2();
  v54 = sub_1A5248804();
  v122 = v52;
  v123 = v53;
  v96 = swift_getOpaqueTypeConformance2();
  v97 = MEMORY[0x1E697E5D8];
  v55 = swift_getWitnessTable();
  v122 = v54;
  v123 = v55;
  v56 = swift_getOpaqueTypeMetadata2();
  v81 = *(v56 - 1);
  MEMORY[0x1EEE9AC00](v56);
  v58 = v80 - v57;
  v122 = v54;
  v123 = v55;
  v59 = swift_getOpaqueTypeConformance2();
  v85 = v56;
  v122 = v56;
  v123 = v59;
  v82 = v59;
  v60 = swift_getOpaqueTypeMetadata2();
  v83 = *(v60 - 8);
  v84 = v60;
  MEMORY[0x1EEE9AC00](v60);
  AssociatedTypeWitness = v80 - v61;
  v63 = type metadata accessor for LemonadeFeedContents(0, v94, v93, v62);
  v64 = v86;
  if ((sub_1A437E680() & 1) != 0 && (LOBYTE(v122) = *(*(v64 + *(v63 + 36)) + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_presentationContext), v133[0] = 3, !static LemonadePresentationContext.== infix(_:_:)(&v122, v133)))
  {
    v65 = MEMORY[0x1E697C428];
  }

  else
  {
    v65 = MEMORY[0x1E697C438];
  }

  v66 = v87;
  v67 = v88;
  v68 = v90;
  (*(v88 + 104))(v87, *v65, v90);
  swift_checkMetadataState();
  sub_1A524AF34();
  (*(v67 + 8))(v66, v68);
  v69 = *(*(*(v64 + *(v63 + 36)) + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext) + 16);
  type metadata accessor for LemonadeTransientCollectionSortingUtilities();
  v70 = sub_1A4A4C42C(v69);
  (*(*v70 + 120))(v70);

  v71 = v85;
  v72 = v82;
  sub_1A524AF24();
  v73 = (*(v81 + 8))(v58, v71);
  v90 = v80;
  MEMORY[0x1EEE9AC00](v73);
  v74 = v93;
  v80[-4] = v94;
  v80[-3] = v74;
  v80[-2] = v64;
  swift_getAssociatedTypeWitness();
  v75 = sub_1A524DF24();
  v95 = swift_getAssociatedConformanceWitness();
  v76 = swift_getWitnessTable();
  v122 = v75;
  v123 = v76;
  swift_getOpaqueTypeMetadata2();
  v122 = v71;
  v123 = v72;
  swift_getOpaqueTypeConformance2();
  v122 = v75;
  v123 = v76;
  swift_getOpaqueTypeConformance2();
  v77 = v84;
  v78 = AssociatedTypeWitness;
  sub_1A524B0E4();
  return (*(v83 + 8))(v78, v77);
}

uint64_t sub_1A4388F18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A5249234();
  v28 = *(v6 - 8);
  v29 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v27 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_1A524DF24();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v26 - v13;
  v32 = a2;
  v16 = type metadata accessor for LemonadeFeedContents(0, a2, a3, v15);
  v30 = *(a1 + *(v16 + 36));
  sub_1A43892B8(0, &qword_1EB138CA8, MEMORY[0x1E697DA80]);
  sub_1A5247C84();
  v17 = a1 + *(v16 + 176);
  v18 = *v17;
  if (*(v17 + 8) == 1)
  {
    v19 = v18;
  }

  else
  {

    v20 = sub_1A524D254();
    v21 = sub_1A524A014();
    sub_1A5246DF4(v20, &dword_1A3C1C000, v21, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    v22 = v27;
    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3D35BAC(v18, 0);
    (*(v28 + 8))(v22, v29);
    v19 = v34;
    v18 = v34;
  }

  (*(a3 + 136))(v30, v35, v18, v32, a3);

  sub_1A3EA8D18(v35, &qword_1EB1256B8, &qword_1EB1256C0, &protocol descriptor for LemonadeFeedContainerModel);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  WitnessTable = swift_getWitnessTable();
  (*(v9 + 16))(v14, v11, v8);
  v24 = *(v9 + 8);
  v24(v11, v8);
  MEMORY[0x1A5904CD0](v14, v8, WitnessTable);
  return (v24)(v14, v8);
}

void sub_1A43892B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A3E792C4(255, &qword_1EB1256B8, &qword_1EB1256C0, &protocol descriptor for LemonadeFeedContainerModel);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

double sub_1A4389330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for LemonadeFeedContents(0, *(v4 + 16), *(v4 + 24), a4);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1A5243794();
  sub_1A524DF24();
  sub_1A524B6D4();
  sub_1A524B6A4();
  if (v7)
  {
    sub_1A437F1FC(v5, result);
    sub_1A5243784();
  }

  return result;
}

double sub_1A438945C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A5249234();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LemonadeFeedContents(0, a2, a3, v10);
  v20 = *(a1 + *(v11 + 68));
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1A5243794();
  sub_1A524DF24();
  sub_1A524B6D4();
  sub_1A524B6A4();
  if (v19[1])
  {
    v13 = a1 + *(v11 + 164);
    v14 = *(v13 + 8);
    if (*(v13 + 9) != 1)
    {
      v15 = *v13;

      v16 = sub_1A524D254();
      v17 = sub_1A524A014();
      sub_1A5246DF4(v16, &dword_1A3C1C000, v17, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

      sub_1A5249224();
      swift_getAtKeyPath();
      v18 = sub_1A3F1B4C4(v15, v14, 0);
      (*(v7 + 8))(v9, v6, v18);
    }

    sub_1A5243764();
  }

  return result;
}

void sub_1A438969C(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for LemonadeFeedContents(0, *(v4 + 16), *(v4 + 24), a4);
  v8 = *a1;
  v9 = *a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  sub_1A52431C4();
  sub_1A524DF24();
  sub_1A524B6D4();
  sub_1A524B6A4();
  if (!AssociatedTypeWitness || (, v8 != v9))
  {
    sub_1A4389828(v7);
  }
}

uint64_t sub_1A4389828(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*(a1 + 24) + 8);

  sub_1A3C66934(v1, v3, v4);

  swift_getAssociatedTypeWitness();
  sub_1A524DF24();
  sub_1A524B6D4();
  swift_unknownObjectRetain();
  sub_1A524B6B4();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  sub_1A52431C4();
  swift_unknownObjectRetain();
  sub_1A5243174();
  sub_1A524DF24();
  sub_1A524B6D4();
  sub_1A524B6B4();
  sub_1A438A968(a1);
  return swift_unknownObjectRelease();
}

uint64_t sub_1A43899F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for LemonadeFeedContents(0, *(v4 + 16), *(v4 + 24), a4);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_1A524C594();
  if ((result & 1) == 0)
  {
    return sub_1A4389828(v5);
  }

  return result;
}

void *sub_1A4389AF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = swift_getAssociatedTypeWitness();
  v34 = *(v8 - 8);
  v35 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v33 = &v30 - v12;
  v14 = type metadata accessor for LemonadeFeedContents(0, a2, a3, v13);
  v15 = (a1 + v14[20]);
  v16 = *(v15 + 1);
  v32 = *v15;
  LOBYTE(v36) = v32;
  v37 = v16;
  sub_1A439027C(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  v18 = v17;
  result = sub_1A524B6A4();
  if ((v40 & 1) == 0)
  {
    v20 = (a1 + v14[11]);
    v21 = *v20;
    if (*v20)
    {
      v30 = v18;
      v31 = v21;
      v22 = v20[1];
      v40 = *(a1 + v14[18]);
      v23 = swift_getAssociatedTypeWitness();
      v24 = swift_getAssociatedConformanceWitness();

      v36 = AssociatedTypeWitness;
      v37 = v23;
      v38 = AssociatedConformanceWitness;
      v39 = v24;
      sub_1A52431C4();
      sub_1A524DF24();
      sub_1A524B6D4();
      sub_1A524B6A4();
      if (v36)
      {
        sub_1A52431B4();

        v26 = v33;
        v25 = v34;
        v27 = v35;
        (*(v34 + 32))(v33, v10, v35);
        v28 = v31;
        v29 = v31(v26);
        LOBYTE(v36) = v32;
        v37 = v16;
        LOBYTE(v40) = v29 & 1;

        sub_1A524B6B4();
        sub_1A3C33378(v28, v22);

        return (*(v25 + 8))(v26, v27);
      }

      else
      {
        return sub_1A3C33378(v31, v22);
      }
    }
  }

  return result;
}

uint64_t sub_1A4389E30(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t), uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for LemonadeFeedContents(0, v5, v6, a4) - 8);
  v8 = v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return a3(v8, v5, v6);
}

void *sub_1A4389EC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v21 = swift_getAssociatedTypeWitness();
  v8 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v20 - v12;
  v20 = a3;
  v15 = type metadata accessor for LemonadeFeedContents(0, a2, a3, v14);
  sub_1A438A1B8(v15);
  v26 = *(a1 + *(v15 + 72));
  v16 = swift_getAssociatedTypeWitness();
  v17 = swift_getAssociatedConformanceWitness();
  v22 = AssociatedTypeWitness;
  v23 = v16;
  v24 = AssociatedConformanceWitness;
  v25 = v17;
  sub_1A52431C4();
  sub_1A524DF24();
  sub_1A524B6D4();
  result = sub_1A524B6A4();
  if (v22)
  {
    sub_1A52431B4();

    v19 = v21;
    (*(v8 + 32))(v13, v10, v21);
    (*(v20 + 128))(v13, a2);
    return (*(v8 + 8))(v13, v19);
  }

  return result;
}

void *sub_1A438A134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for LemonadeFeedContents(0, v5, v6, a4) - 8);
  v8 = v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_1A4389EC8(v8, v5, v6);
}

void *sub_1A438A1B8(uint64_t a1)
{
  v3 = sub_1A5249234();
  v29 = *(v3 - 8);
  v30 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v28 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  v6 = *(*(a1 + 24) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = swift_getAssociatedTypeWitness();
  v32 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v28 - v13;
  v31 = a1;
  v15 = *(a1 + 72);
  v33 = v1;
  v38 = *(v1 + v15);
  v16 = swift_getAssociatedTypeWitness();
  v17 = swift_getAssociatedConformanceWitness();
  v34 = AssociatedTypeWitness;
  v35 = v16;
  v36 = AssociatedConformanceWitness;
  v37 = v17;
  sub_1A52431C4();
  sub_1A524DF24();
  sub_1A524B6D4();
  result = sub_1A524B6A4();
  if (v34)
  {
    sub_1A52431B4();

    v19 = v32;
    (*(v32 + 32))(v14, v11, v9);
    v20 = v33;
    (*(v6 + 160))(v14, v5, v6);
    v21 = v14;
    if (v22)
    {
      v23 = *(v20 + *(v31 + 116) + 8);

      if ((v23 & 1) == 0)
      {
        v24 = sub_1A524D254();
        v25 = v19;
        v26 = sub_1A524A014();
        sub_1A5246DF4(v24, &dword_1A3C1C000, v26, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

        v19 = v25;
        v27 = v28;
        sub_1A5249224();
        swift_getAtKeyPath();

        (*(v29 + 8))(v27, v30);
      }

      sub_1A5243E04();
    }

    return (*(v19 + 8))(v21, v9);
  }

  return result;
}

uint64_t sub_1A438A548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a1;
  v5 = sub_1A5249234();
  v23 = *(v5 - 8);
  v24 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E697BF90];
  v9 = MEMORY[0x1E697DCB8];
  sub_1A437DD40(0, &unk_1EB128A60, MEMORY[0x1E697BF90], MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v22 - v11;
  v13 = sub_1A5248284();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for LemonadeFeedContents(0, a2, a3, v17);
  sub_1A438EB64(v25 + *(v18 + 88), v12, &unk_1EB128A60, v8, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v14 + 32))(v16, v12, v13);
  }

  else
  {
    v19 = sub_1A524D254();
    v20 = sub_1A524A014();
    sub_1A5246DF4(v19, &dword_1A3C1C000, v20, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();

    (*(v23 + 8))(v7, v24);
  }

  sub_1A5248274();
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_1A438A80C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for LemonadeFeedContents(0, v5, v6, a4) - 8);
  v8 = v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_1A438A548(v8, v5, v6);
}

void *sub_1A438A890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for LemonadeFeedContents(0, *(v4 + 16), *(v4 + 24), a4);
  sub_1A439027C(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  result = sub_1A524B6A4();
  if (v7 == 1)
  {
    return sub_1A438A968(v5);
  }

  return result;
}

void *sub_1A438A968(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A5249234();
  v49 = *(v8 - 8);
  v50 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53[0] = *(v1 + *(a1 + 64));
  v11 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1A524DF24();
  sub_1A524B6D4();
  result = sub_1A524B6A4();
  if (v52)
  {
    v45 = v11;
    v46 = v6;
    v47 = v5;
    v48 = v52;
    v13 = (v1 + *(a1 + 108));
    v14 = *v13;
    v15 = *(v13 + 8);

    if ((v15 & 1) == 0)
    {
      v16 = sub_1A524D254();
      v17 = sub_1A524A014();
      sub_1A5246DF4(v16, &dword_1A3C1C000, v17, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

      sub_1A5249224();
      swift_getAtKeyPath();

      (*(v49 + 8))(v10, v50);
    }

    v18 = (v2 + *(a1 + 68));
    v19 = *v18;
    v41 = v18[1];
    v42 = v19;
    *&v53[0] = v19;
    *(&v53[0] + 1) = v41;
    v44 = v4;
    v40[1] = swift_getAssociatedConformanceWitness();
    sub_1A5243794();
    sub_1A524DF24();
    v40[2] = sub_1A524B6D4();
    sub_1A524B6A4();
    sub_1A5242FB4();

    if ((v15 & 1) == 0)
    {
      v20 = sub_1A524D254();
      v21 = sub_1A524A014();
      sub_1A5246DF4(v20, &dword_1A3C1C000, v21, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

      sub_1A5249224();
      swift_getAtKeyPath();

      (*(v49 + 8))(v10, v50);
      v14 = *&v53[0];
    }

    v43 = v14;
    sub_1A438B2A4(a1, v53);
    v22 = *(v2 + *(a1 + 104) + 8);

    if ((v22 & 1) == 0)
    {
      v24 = sub_1A524D254();
      v25 = sub_1A524A014();
      sub_1A5246DF4(v24, &dword_1A3C1C000, v25, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

      sub_1A5249224();
      swift_getAtKeyPath();

      (*(v49 + 8))(v10, v50);
    }

    v40[0] = sub_1A437F1FC(a1, v23);
    v26 = v2 + *(a1 + 164);
    v27 = *v26;
    v28 = *(v26 + 8);
    if (*(v26 + 9) != 1)
    {

      v29 = sub_1A524D254();
      v30 = sub_1A524A014();
      sub_1A5246DF4(v29, &dword_1A3C1C000, v30, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0], v40[0]);

      sub_1A5249224();
      swift_getAtKeyPath();
      v31 = sub_1A3F1B4C4(v27, v28, 0);
      (*(v49 + 8))(v10, v50, v31);
    }

    v32 = *(v2 + *(a1 + 36));
    v33 = v47;
    v34 = v44;
    (*(v47 + 16))(v7, v2, v44);
    v35 = (*(v33 + 80) + 32) & ~*(v33 + 80);
    v36 = (v46 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
    v37 = swift_allocObject();
    v38 = v45;
    *(v37 + 16) = v34;
    *(v37 + 24) = v38;
    (*(v33 + 32))(v37 + v35, v7, v34);
    *(v37 + v36) = v32;

    v39 = sub_1A5242F84();

    sub_1A3D5FAFC(v53);
    *&v53[0] = v42;
    *(&v53[0] + 1) = v41;
    v52 = v39;

    sub_1A524B6B4();

    return swift_unknownObjectRelease();
  }

  return result;
}

double sub_1A438AF88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A5249234();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LemonadeFeedContents(0, a2, a3, v10);
  v20 = *(a1 + v11[17]);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1A5243794();
  sub_1A524DF24();
  sub_1A524B6D4();
  sub_1A524B6A4();
  if (v19)
  {
    v13 = *(a1 + v11[27] + 8);

    if ((v13 & 1) == 0)
    {
      v14 = sub_1A524D254();
      v15 = sub_1A524A014();
      sub_1A5246DF4(v14, &dword_1A3C1C000, v15, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

      sub_1A5249224();
      swift_getAtKeyPath();

      (*(v7 + 8))(v9, v6);
    }

    sub_1A5242FB4();

    v16 = a1 + v11[21];
    v17 = *(v16 + 8);
    LOBYTE(v20) = *v16;
    *(&v20 + 1) = v17;
    LOBYTE(v19) = 1;
    sub_1A439027C(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);

    sub_1A524B6B4();
  }

  return result;
}

double sub_1A438B220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for LemonadeFeedContents(0, v5, v6, a4) - 8);
  v8 = v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_1A438AF88(v8, v5, v6);
}

void *sub_1A438B2A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1A5249234();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1A438EA68(v2 + *(a1 + 100), &v18);
  if (v21 == 1)
  {
    v22 = v18;
    v23 = v19;
    v24 = v20;
    if (*(&v19 + 1))
    {
LABEL_3:
      v10 = v23;
      *a2 = v22;
      *(a2 + 16) = v10;
      *(a2 + 32) = v24;
      return result;
    }
  }

  else
  {
    v11 = sub_1A524D254();
    v12 = sub_1A524A014();
    sub_1A5246DF4(v11, &dword_1A3C1C000, v12, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();

    result = (*(v6 + 8))(v8, v5);
    if (*(&v23 + 1))
    {
      goto LABEL_3;
    }
  }

  v13 = *(a1 + 16);
  v14 = *(*(a1 + 24) + 8);

  v15 = sub_1A3C66FE8(v2, v13, v14);
  v17 = v16;

  *&v18 = v15;
  *(&v18 + 1) = v17;
  result = sub_1A524E384();
  if (*(&v23 + 1))
  {
    return sub_1A3C2C7D8(&v22, &qword_1EB126538, MEMORY[0x1E69E69B8]);
  }

  return result;
}

BOOL sub_1A438B4C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1A437DD40(0, &qword_1EB1290B0, MEMORY[0x1E69C24E0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v22 - v10;
  v12 = type metadata accessor for LemonadeNavigationDestination(0);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a5 + 8);
  if ((*(v16 + 128))(a1, a4, v16, v13))
  {
    (*(v16 + 112))(a1, *(a3 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext), a4, v16);
    v17 = sub_1A52434D4();
    (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
    v18 = sub_1A3C30368();
    v19 = sub_1A4657324(v15, 0, v18 & 1, 0, 0, v11, 0, 0);
    sub_1A438E9F8(v11, &qword_1EB1290B0, MEMORY[0x1E69C24E0]);
    v20 = sub_1A3E78D28(v19);
    sub_1A3E00630(v19);
    sub_1A438EB04(v15, type metadata accessor for LemonadeNavigationDestination);
  }

  else
  {
    return 0;
  }

  return v20;
}

void sub_1A438B6EC(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  sub_1A52431C4();
  sub_1A524DF24();
  sub_1A524B6D4();
  sub_1A524B6A4();
  if (!AssociatedTypeWitness)
  {
    __break(1u);
    goto LABEL_5;
  }

  v3 = sub_1A52431A4();

  if (!v3)
  {
LABEL_5:
    __break(1u);
  }
}

uint64_t sub_1A438B828@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v58 = a6;
  v59 = a4;
  v57 = a3;
  v52 = a2;
  v60 = a7;
  v61 = a1;
  v8 = *(a6 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v55 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v44 - v10;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v62 = AssociatedTypeWitness;
  v63 = a5;
  v64 = AssociatedConformanceWitness;
  v65 = v8;
  v13 = AssociatedConformanceWitness;
  v45 = AssociatedConformanceWitness;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v56 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v44 = &v44 - v15;
  v62 = AssociatedTypeWitness;
  v63 = a5;
  v64 = v13;
  v65 = v8;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v62 = OpaqueTypeMetadata2;
  v63 = OpaqueTypeConformance2;
  v17 = OpaqueTypeMetadata2;
  v46 = OpaqueTypeMetadata2;
  v47 = OpaqueTypeConformance2;
  v18 = OpaqueTypeConformance2;
  v19 = swift_getOpaqueTypeMetadata2();
  v54 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v48 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v50 = &v44 - v22;
  v62 = v17;
  v63 = v18;
  v53 = swift_getOpaqueTypeConformance2();
  v62 = v19;
  v63 = v53;
  v23 = swift_getOpaqueTypeMetadata2();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v49 = &v44 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v51 = &v44 - v28;
  v29 = v52;
  (*(v8 + 104))(v52, a5, v8, v27);
  v30 = v44;
  sub_1A3D7194C(v29, a5, AssociatedTypeWitness, a5, v45, v8);
  (*(v55 + 8))(v11, AssociatedTypeWitness);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v31 = swift_getAssociatedTypeWitness();
  v65 = v31;
  v32 = __swift_allocate_boxed_opaque_existential_1(&v62);
  (*(*(v31 - 8) + 16))(v32, v57, v31);
  v33 = v48;
  v34 = v46;
  sub_1A524A534();
  (*(v56 + 8))(v30, v34);
  sub_1A3C2C7D8(&v62, &qword_1EB126130, MEMORY[0x1E69E7CA0] + 8);
  v35 = v50;
  sub_1A438BE20(v19, v50);
  v36 = *(v54 + 8);
  v36(v33, v19);
  v38 = type metadata accessor for LemonadeFeedContents(0, a5, v58, v37);
  sub_1A438BF14(v59, v38, &v62);
  v39 = v49;
  sub_1A524A5D4();
  sub_1A3EA8D18(&v62, &qword_1EB124F38, &qword_1EB124F40, MEMORY[0x1E69C1E98]);
  v36(v35, v19);
  v40 = *(v24 + 16);
  v41 = v51;
  v40(v51, v39, v23);
  v42 = *(v24 + 8);
  v42(v39, v23);
  v40(v60, v41, v23);
  return (v42)(v41, v23);
}

uint64_t sub_1A438BE20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v4 + 16);
  v8(v7, v5);
  (v8)(a2, v7, a1);
  return (*(v4 + 8))(v7, a1);
}

uint64_t sub_1A438BF14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v19 = a3;
  v5 = *(a2 + 16);
  v6 = *(*(a2 + 24) + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_1A524DF24();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - v10;
  v12 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v18 - v14;
  sub_1A438C17C(a1, a2);
  if ((*(v12 + 48))(v11, 1, AssociatedTypeWitness) == 1)
  {
    result = (*(v9 + 8))(v11, v8);
    v17 = v19;
    *(v19 + 32) = 0;
    *v17 = 0u;
    v17[1] = 0u;
  }

  else
  {
    (*(v12 + 32))(v15, v11, AssociatedTypeWitness);
    (*(v6 + 144))(v15, v5, v6);
    return (*(v12 + 8))(v15, AssociatedTypeWitness);
  }

  return result;
}

void *sub_1A438C17C(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v7);
  v14 = *(v3 + *(a2 + 72));
  v12[0] = AssociatedTypeWitness;
  v12[1] = swift_getAssociatedTypeWitness();
  v12[2] = AssociatedConformanceWitness;
  v13 = swift_getAssociatedConformanceWitness();
  sub_1A52431C4();
  sub_1A524DF24();
  sub_1A524B6D4();
  result = sub_1A524B6A4();
  if (AssociatedTypeWitness)
  {
    sub_1A52431B4();

    v9 = swift_getAssociatedTypeWitness();
    v13 = v9;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
    (*(*(v9 - 8) + 16))(boxed_opaque_existential_1, a1, v9);
    swift_getAssociatedConformanceWitness();
    sub_1A5246424();
  }

  __break(1u);
  return result;
}

uint64_t sub_1A438C3FC(uint64_t a1, uint64_t a2, void (*a3)(char *, char *))
{
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v9 = sub_1A524DF24();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20[-v11];
  v13 = (v3 + *(a2 + 76));
  v14 = *v13;
  v15 = *(v13 + 1);
  v21[0] = v14;
  v22 = v15;
  sub_1A439027C(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  if (v20[15] == 1)
  {
    v16 = sub_1A438C17C(a1, a2);
    MEMORY[0x1EEE9AC00](v16);
    *&v20[-32] = v7;
    *&v20[-24] = v8;
    *&v20[-16] = v3;
    sub_1A3C7BE04(a3, &v20[-48], MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], v17, v21);
    (*(v10 + 8))(v12, v9);
    v18 = v21[0];
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

uint64_t sub_1A438C62C(uint64_t a1, uint64_t a2, void (*a3)(char *, char *))
{
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v9 = sub_1A524DF24();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v16[-v11];
  sub_1A438C17C(a1, a2);
  v17 = v7;
  v18 = v8;
  v19 = v3;
  sub_1A439027C(0, &qword_1EB120200, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6720]);
  sub_1A3C7BE04(a3, v16, MEMORY[0x1E69E73E0], v13, v14, &v20);
  (*(v10 + 8))(v12, v9);
  if (v20 == 1)
  {
    return 0;
  }

  else
  {
    return v20;
  }
}

uint64_t sub_1A438C7FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = a2;
  v34 = a1;
  v5 = *(a3 + 16);
  v6 = *(*(a3 + 24) + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_1A524DF24();
  v32 = *(v8 - 8);
  v33 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29 - v12;
  v35 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v29 - v18;
  v20 = (v3 + *(a3 + 76));
  v21 = *v20;
  v22 = *(v20 + 1);
  v37 = v21;
  v38 = v22;
  sub_1A439027C(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  if (v36 == 1)
  {
    v29 = v5;
    v30 = v6;
    sub_1A438C17C(v34, a3);
    v23 = v35[6];
    if (v23(v13, 1, AssociatedTypeWitness) == 1)
    {
      (*(v32 + 8))(v13, v33);
    }

    else
    {
      v24 = v13;
      v25 = v35[4];
      v25(v19, v24, AssociatedTypeWitness);
      sub_1A438C17C(v31, a3);
      if (v23(v10, 1, AssociatedTypeWitness) != 1)
      {
        v25(v16, v10, AssociatedTypeWitness);
        v26 = (*(v30 + 312))(v19, v16, v29);
        v28 = v35[1];
        v28(v16, AssociatedTypeWitness);
        v28(v19, AssociatedTypeWitness);
        return v26 & 1;
      }

      (v35[1])(v19, AssociatedTypeWitness);
      (*(v32 + 8))(v10, v33);
    }
  }

  v26 = 0;
  return v26 & 1;
}

uint64_t sub_1A438CBA0(uint64_t a1, uint64_t a2)
{
  v12 = a1;
  v3 = *(*(a2 + 24) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = &v11 - v6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = AssociatedTypeWitness;
  v14 = AssociatedConformanceWitness;
  v11 = MEMORY[0x1E69C30F0];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  sub_1A438B6EC(v12, a2);
  (*(v3 + 104))();
  swift_unknownObjectRelease();
  sub_1A524A674();
  (*(v5 + 8))(v7, AssociatedTypeWitness);
  v13 = AssociatedTypeWitness;
  v14 = AssociatedConformanceWitness;
  swift_getOpaqueTypeConformance2();
  return sub_1A524B8E4();
}

uint64_t sub_1A438CD9C(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1A5243794();
  sub_1A524DF24();
  sub_1A524B6D4();
  sub_1A524B6A4();
  if (v6)
  {
    v1 = sub_1A5243774();
  }

  else
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v3 = sub_1A524CAB4();
    if (sub_1A524CAF4())
    {
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v1 = sub_1A3F163C0(v3, AssociatedTypeWitness, AssociatedConformanceWitness);
    }

    else
    {

      return MEMORY[0x1E69E7CD0];
    }
  }

  return v1;
}

NSObject *sub_1A438CF50(uint64_t a1, uint64_t a2)
{
  v50 = a1;
  v49 = sub_1A5242334();
  v45 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v46 = v4;
  v47 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v48 = &v42 - v6;
  v7 = sub_1A5249234();
  v43 = *(v7 - 8);
  v44 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v42 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + 16);
  v10 = *(*(a2 + 24) + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = sub_1A524DF24();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v42 - v14;
  v16 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v42 - v18;
  v20 = v50;
  v50 = a2;
  sub_1A438C17C(v20, a2);
  if ((*(v16 + 48))(v15, 1, AssociatedTypeWitness) == 1)
  {
    (*(v13 + 8))(v15, v12);
LABEL_15:
    v34 = v48;
    sub_1A5242324();
    v30 = [objc_allocWithZone(MEMORY[0x1E696ACA0]) init];
    v35 = v45;
    v36 = v47;
    v37 = v49;
    (*(v45 + 16))(v47, v34, v49);
    v38 = (*(v35 + 80) + 16) & ~*(v35 + 80);
    v39 = swift_allocObject();
    (*(v35 + 32))(v39 + v38, v36, v37);
    sub_1A438DB60(&qword_1EB12E7B0, MEMORY[0x1E69C1DA8], MEMORY[0x1E69C1DA0]);
    sub_1A524D274();

    (*(v35 + 8))(v34, v37);
    return v30;
  }

  (*(v16 + 32))(v19, v15, AssociatedTypeWitness);
  if (!(*(v10 + 288))(v19, v9, v10))
  {
LABEL_14:
    (*(v16 + 8))(v19, AssociatedTypeWitness);
    goto LABEL_15;
  }

  objc_opt_self();
  v21 = swift_dynamicCastObjCClass();
  if (!v21)
  {
    swift_unknownObjectRelease();
    goto LABEL_14;
  }

  v22 = v21;
  v23 = [v21 objectReference];
  if (!v23)
  {
    (*(v16 + 8))(v19, AssociatedTypeWitness);
    swift_unknownObjectRelease();
    goto LABEL_15;
  }

  v24 = v23;
  v25 = *(v2 + *(v50 + 96) + 8);

  if ((v25 & 1) == 0)
  {
    v26 = sub_1A524D254();
    v27 = sub_1A524A014();
    sub_1A5246DF4(v26, &dword_1A3C1C000, v27, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    v28 = v42;
    sub_1A5249224();
    swift_getAtKeyPath();

    (*(v43 + 8))(v28, v44);
  }

  v29 = sub_1A5242344();

  if (v29)
  {
    v50 = v22;
    swift_unknownObjectRelease();
    v30 = [objc_allocWithZone(MEMORY[0x1E696ACA0]) initWithObject_];

    if ((v25 & 1) == 0)
    {
      v31 = sub_1A524D254();
      v32 = sub_1A524A014();
      sub_1A5246DF4(v31, &dword_1A3C1C000, v32, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

      v33 = v42;
      sub_1A5249224();
      swift_getAtKeyPath();

      (*(v43 + 8))(v33, v44);
    }

    swift_unknownObjectRetain();
    sub_1A5242354();

    swift_unknownObjectRelease_n();
  }

  else
  {
    v41 = PXDragAndDropItemProviderForObject(v22);
    if (v41)
    {
      v30 = v41;
      (*(v16 + 8))(v19, AssociatedTypeWitness);

      swift_unknownObjectRelease();
      return v30;
    }

    v30 = [objc_allocWithZone(MEMORY[0x1E696ACA0]) initWithObject_];

    swift_unknownObjectRelease();
  }

  (*(v16 + 8))(v19, AssociatedTypeWitness);
  return v30;
}

uint64_t sub_1A438D670(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v7 = sub_1A524DF24();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14[-v9];
  sub_1A438C17C(a1, a2);
  v15 = v5;
  v16 = v6;
  v17 = v2;
  sub_1A437DD40(0, &qword_1EB126EE0, MEMORY[0x1E69E8450], MEMORY[0x1E69E62F8]);
  sub_1A3C7BE04(sub_1A3F18A68, v14, MEMORY[0x1E69E73E0], v11, v12, &v18);
  (*(v8 + 8))(v10, v7);
  if (v18)
  {
    return v18;
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }
}

void sub_1A438D854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(*(v4 + *(a4 + 36)) + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext) + 16);
  sub_1A40B3388(a1, v8, a2, a3);
}

uint64_t sub_1A438D8D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v8 = *(a3 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v9 = sub_1A524DF24();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v15[-v11];
  sub_1A438C17C(a2, a3);
  v16 = v7;
  v17 = v8;
  v18 = v3;
  v19 = a1;
  sub_1A3C7BE04(sub_1A3F18A08, v15, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], v13, &v20);
  (*(v10 + 8))(v12, v9);
  return v20 & 1;
}

uint64_t sub_1A438DB60(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1A438DBAC()
{
  result = qword_1EB138CB0;
  if (!qword_1EB138CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB138CB0);
  }

  return result;
}

unint64_t sub_1A438DC04()
{
  result = qword_1EB138CB8;
  if (!qword_1EB138CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB138CB8);
  }

  return result;
}

uint64_t sub_1A438DCC4(uint64_t a1)
{
  result = sub_1A5242D14();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1A438DD60(uint64_t a1)
{
  result = type metadata accessor for LemonadeItemsLayoutSpec.Style(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12PhotosUICore26LemonadeFeedDisclosureTypeO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1A438DE0C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A438DE60(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_1A438DEBC(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

void sub_1A438DF14(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    type metadata accessor for LemonadeNavigationContext(319);
    if (v2 <= 0x3F)
    {
      sub_1A437DD40(319, &qword_1EB128FB0, MEMORY[0x1E69C2E30], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1A437DD40(319, &qword_1EB1201F0, sub_1A3C3637C, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          swift_getAssociatedTypeWitness();
          swift_getAssociatedConformanceWitness();
          swift_getAssociatedTypeWitness();
          swift_getAssociatedConformanceWitness();
          sub_1A5242854();
          sub_1A5247CB4();
          if (v5 <= 0x3F)
          {
            sub_1A437DD40(319, &unk_1EB124990, MEMORY[0x1E69C24E0], MEMORY[0x1E697DA80]);
            if (v6 <= 0x3F)
            {
              sub_1A43892B8(319, &qword_1EB138CA8, MEMORY[0x1E697DA80]);
              if (v7 <= 0x3F)
              {
                swift_getAssociatedTypeWitness();
                sub_1A524DF24();
                sub_1A524B6D4();
                if (v8 <= 0x3F)
                {
                  swift_getAssociatedConformanceWitness();
                  sub_1A5243794();
                  sub_1A524DF24();
                  sub_1A524B6D4();
                  if (v9 <= 0x3F)
                  {
                    sub_1A52431C4();
                    sub_1A524DF24();
                    sub_1A524B6D4();
                    if (v10 <= 0x3F)
                    {
                      sub_1A439027C(319, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
                      if (v11 <= 0x3F)
                      {
                        sub_1A437DD40(319, &qword_1EB124730, MEMORY[0x1E697BF90], MEMORY[0x1E697DCC0]);
                        if (v12 <= 0x3F)
                        {
                          sub_1A437DD40(319, &qword_1EB124880, MEMORY[0x1E69C1D78], MEMORY[0x1E697DCC0]);
                          if (v13 <= 0x3F)
                          {
                            sub_1A437DD40(319, &qword_1EB124878, MEMORY[0x1E69C1DB0], MEMORY[0x1E697DCC0]);
                            if (v14 <= 0x3F)
                            {
                              sub_1A438E904(319, &unk_1EB124670, &qword_1EB126538, MEMORY[0x1E69E69B8], MEMORY[0x1E697DCC0]);
                              if (v15 <= 0x3F)
                              {
                                sub_1A437DD40(319, &qword_1EB124838, MEMORY[0x1E69C29F0], MEMORY[0x1E697DCC0]);
                                if (v16 <= 0x3F)
                                {
                                  sub_1A437DD40(319, &qword_1EB124868, MEMORY[0x1E69C2320], MEMORY[0x1E697DCC0]);
                                  if (v17 <= 0x3F)
                                  {
                                    sub_1A439027C(319, &qword_1EB1246E0, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
                                    if (v18 <= 0x3F)
                                    {
                                      sub_1A437DD40(319, &qword_1EB124848, MEMORY[0x1E69C28E8], MEMORY[0x1E697DCC0]);
                                      if (v19 <= 0x3F)
                                      {
                                        sub_1A437DD40(319, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
                                        if (v20 <= 0x3F)
                                        {
                                          sub_1A437DD40(319, &qword_1EB124860, MEMORY[0x1E69C23C0], MEMORY[0x1E697DCC0]);
                                          if (v21 <= 0x3F)
                                          {
                                            sub_1A437DD40(319, &qword_1EB1247F8, sub_1A3F17950, MEMORY[0x1E697DCC0]);
                                            if (v22 <= 0x3F)
                                            {
                                              sub_1A439027C(319, &qword_1EB1246C0, MEMORY[0x1E69E6530], MEMORY[0x1E697DCC0]);
                                              if (v23 <= 0x3F)
                                              {
                                                sub_1A437DD40(319, &qword_1EB124700, sub_1A3DC7D88, MEMORY[0x1E697DCC0]);
                                                if (v24 <= 0x3F)
                                                {
                                                  sub_1A439027C(319, &unk_1EB1247A0, &type metadata for LemonadeHorizontalSizeClass, MEMORY[0x1E697DCC0]);
                                                  if (v25 <= 0x3F)
                                                  {
                                                    sub_1A439027C(319, &qword_1EB1247F0, &type metadata for LemonadeFeedZoomLevel, MEMORY[0x1E697DCC0]);
                                                    if (v26 <= 0x3F)
                                                    {
                                                      sub_1A439027C(319, &unk_1EB124808, &type metadata for LemonadeCellSpec, MEMORY[0x1E697DCC0]);
                                                      if (v27 <= 0x3F)
                                                      {
                                                        sub_1A437DD40(319, &qword_1EB1247D0, type metadata accessor for LemonadeItemsLayoutSpec, MEMORY[0x1E697DCC0]);
                                                        if (v28 <= 0x3F)
                                                        {
                                                          sub_1A439027C(319, &qword_1EB124800, &type metadata for LemonadeStackSpecs, MEMORY[0x1E697DCC0]);
                                                          if (v29 <= 0x3F)
                                                          {
                                                            sub_1A438E904(319, &qword_1EB1246B8, &qword_1EB126D60, MEMORY[0x1E69E6530], MEMORY[0x1E697DCC0]);
                                                            if (v30 <= 0x3F)
                                                            {
                                                              sub_1A437DD40(319, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
                                                              if (v31 <= 0x3F)
                                                              {
                                                                sub_1A439027C(319, &qword_1EB124758, &type metadata for LemonadeFeedContentsTopPaddingKind, MEMORY[0x1E697DCC0]);
                                                                if (v32 <= 0x3F)
                                                                {
                                                                  sub_1A437DD40(319, &qword_1EB1246B0, sub_1A3E05E50, MEMORY[0x1E697DCC0]);
                                                                  if (v33 <= 0x3F)
                                                                  {
                                                                    sub_1A437DD40(319, &qword_1EB12F438, MEMORY[0x1E69C2998], MEMORY[0x1E697DCC0]);
                                                                    if (v34 <= 0x3F)
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
  }
}