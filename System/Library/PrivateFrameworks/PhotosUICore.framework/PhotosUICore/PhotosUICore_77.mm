uint64_t sub_1A45F94B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A45F9520(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A45F95A0(void *a1)
{
  v2 = v1;
  *(v2 + 16) = 0;
  sub_1A5241604();
  sub_1A3CA2488(0, &qword_1EB129FD8, &qword_1EB126CD0, 0x1E6978758, type metadata accessor for PhotoKitItemListManager);
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  memset(v6, 0, sizeof(v6));
  sub_1A3C52C70(0, &qword_1EB126CD0, 0x1E6978758);
  v4 = a1;
  sub_1A43FD8EC();
  PhotoKitItemListManager.__allocating_init(container:libraryFilterState:userData:options:sorter:fetchResultProvider:)(v4, 0, v7, v5, v6, 0, 0);
}

void sub_1A45F96B8(void *a1)
{
  sub_1A5241604();
  sub_1A3CA2488(0, &qword_1EB129FD8, &qword_1EB126CD0, 0x1E6978758, type metadata accessor for PhotoKitItemListManager);
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  memset(v4, 0, sizeof(v4));
  sub_1A3C52C70(0, &qword_1EB126CD0, 0x1E6978758);
  v2 = a1;
  sub_1A43FD8EC();
  PhotoKitItemListManager.__allocating_init(container:libraryFilterState:userData:options:sorter:fetchResultProvider:)(v2, 0, v5, v3, v4, 0, 0);
}

void sub_1A45F9800(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1A45F9868(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    sub_1A3CA2A44(255);
    v7 = v6;
    v8 = sub_1A3C57458(&qword_1EB129230, sub_1A3CA2A44, MEMORY[0x1E69C1F80]);
    v9 = sub_1A3C57458(&qword_1EB129238, sub_1A3CA2A44, MEMORY[0x1E69C1F68]);
    v12[0] = v7;
    v12[1] = MEMORY[0x1E6981E70];
    v12[2] = v8;
    v12[3] = v9;
    v12[4] = MEMORY[0x1E6981E60];
    v10 = a3(a1, v12);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1A45F99A0(uint64_t a1)
{
  if (!qword_1EB13E8E8)
  {
    sub_1A3CA2A44(255);
    sub_1A45F8C38(255, &qword_1EB13E8F0, sub_1A45F9AA0, MEMORY[0x1E69C2928], MEMORY[0x1E697F960]);
    sub_1A3C57458(&qword_1EB129238, sub_1A3CA2A44, MEMORY[0x1E69C1F68]);
    sub_1A45F9AD4();
    v1 = sub_1A5242A94();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13E8E8);
    }
  }
}

unint64_t sub_1A45F9AD4()
{
  result = qword_1EB13E900;
  if (!qword_1EB13E900)
  {
    sub_1A45F8C38(255, &qword_1EB13E8F0, sub_1A45F9AA0, MEMORY[0x1E69C2928], MEMORY[0x1E697F960]);
    sub_1A45F9BC8();
    sub_1A3C57458(&qword_1EB128FE0, MEMORY[0x1E69C2928], MEMORY[0x1E69C2920]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13E900);
  }

  return result;
}

unint64_t sub_1A45F9BC8()
{
  result = qword_1EB13E908;
  if (!qword_1EB13E908)
  {
    sub_1A45F9AA0(255);
    sub_1A3C57458(&qword_1EB1292A0, MEMORY[0x1E69C1E58], MEMORY[0x1E69C1E50]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13E908);
  }

  return result;
}

unint64_t sub_1A45F9C70()
{
  result = qword_1EB13E918;
  if (!qword_1EB13E918)
  {
    sub_1A45F9958(255);
    sub_1A3C57458(&qword_1EB124CF0, sub_1A45F8AEC, MEMORY[0x1E69C2918]);
    sub_1A3C57458(&unk_1EB13E920, sub_1A45F99A0, MEMORY[0x1E69C20C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13E918);
  }

  return result;
}

uint64_t sub_1A45F9D50@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LemonadeAlbumsFeature.DefaultFeedProvider(0) - 8);
  v4 = *(v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 16);

  return sub_1A45EEFBC(v4, a1);
}

void sub_1A45F9DF0(uint64_t a1)
{
  if (!qword_1EB13E930)
  {
    sub_1A45F9EA4(255);
    sub_1A3C57458(&qword_1EB13E998, sub_1A45F9EA4, &unk_1A534FE20);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13E930);
    }
  }
}

void sub_1A45F9EA4(uint64_t a1)
{
  if (!qword_1EB13E938)
  {
    sub_1A45F8C38(255, &qword_1EB13E940, sub_1A45F9F4C, MEMORY[0x1E697CBE8], MEMORY[0x1E697E830]);
    v3 = v2;
    v4 = sub_1A45FA4F8();
    v6 = type metadata accessor for LemonadeAlbumToolbarContent(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EB13E938);
    }
  }
}

void sub_1A45F9F4C(uint64_t a1, double a2)
{
  if (!qword_1EB13E948)
  {
    sub_1A45FB4EC(255, &qword_1EB13E950, sub_1A45FA138, &qword_1EB13E970, sub_1A45FA138);
    sub_1A45FA340(255, v2);
    sub_1A45FA138(255, v3);
    sub_1A5248644();
    sub_1A3C57458(&qword_1EB13E970, sub_1A45FA138, MEMORY[0x1E697CD28]);
    sub_1A3C57458(&qword_1EB13E978, MEMORY[0x1E697C150], MEMORY[0x1E697C148]);
    swift_getOpaqueTypeConformance2();
    sub_1A5243474();
    sub_1A3C57458(&qword_1EB124D90, MEMORY[0x1E69C24C8], MEMORY[0x1E69C24C0]);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v5)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13E948);
    }
  }
}

void sub_1A45FA138(uint64_t a1, double a2)
{
  if (!qword_1EB13E958)
  {
    sub_1A45FA270(255);
    sub_1A5243124();
    sub_1A5243474();
    sub_1A424B2FC();
    sub_1A3C57458(&qword_1EB124D90, MEMORY[0x1E69C24C8], MEMORY[0x1E69C24C0]);
    swift_getOpaqueTypeConformance2();
    sub_1A3C57458(&qword_1EB124DC8, MEMORY[0x1E69C23A0], MEMORY[0x1E69C2398]);
    v2 = sub_1A524A2F4();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB13E958);
    }
  }
}

void sub_1A45FA270(uint64_t a1)
{
  if (!qword_1EB13E960)
  {
    sub_1A5243474();
    sub_1A424B2FC();
    sub_1A3C57458(&qword_1EB124D90, MEMORY[0x1E69C24C8], MEMORY[0x1E69C24C0]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13E960);
    }
  }
}

void sub_1A45FA340(uint64_t a1, double a2)
{
  if (!qword_1EB13E980)
  {
    sub_1A45FB4EC(255, &qword_1EB13E950, sub_1A45FA138, &qword_1EB13E970, sub_1A45FA138);
    sub_1A5243474();
    sub_1A45FA138(255, v2);
    sub_1A5248644();
    sub_1A3C57458(&qword_1EB13E970, sub_1A45FA138, MEMORY[0x1E697CD28]);
    sub_1A3C57458(&qword_1EB13E978, MEMORY[0x1E697C150], MEMORY[0x1E697C148]);
    swift_getOpaqueTypeConformance2();
    sub_1A3C57458(&qword_1EB124D90, MEMORY[0x1E69C24C8], MEMORY[0x1E69C24C0]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v4)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13E980);
    }
  }
}

unint64_t sub_1A45FA4F8()
{
  result = qword_1EB13E988;
  if (!qword_1EB13E988)
  {
    sub_1A45F8C38(255, &qword_1EB13E940, sub_1A45F9F4C, MEMORY[0x1E697CBE8], MEMORY[0x1E697E830]);
    sub_1A45FB4EC(255, &qword_1EB13E950, sub_1A45FA138, &qword_1EB13E970, sub_1A45FA138);
    sub_1A45FA340(255, v1);
    sub_1A45FA138(255, v2);
    sub_1A5248644();
    sub_1A3C57458(&qword_1EB13E970, sub_1A45FA138, MEMORY[0x1E697CD28]);
    sub_1A3C57458(&qword_1EB13E978, MEMORY[0x1E697C150], MEMORY[0x1E697C148]);
    swift_getOpaqueTypeConformance2();
    sub_1A5243474();
    sub_1A3C57458(&qword_1EB124D90, MEMORY[0x1E69C24C8], MEMORY[0x1E69C24C0]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A3C57458(&qword_1EB127710, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13E988);
  }

  return result;
}

uint64_t sub_1A45FA79C(uint64_t a1, uint64_t a2)
{
  sub_1A3C6DC44(0, &qword_1EB1256B8, &qword_1EB1256C0, &protocol descriptor for LemonadeFeedContainerModel, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A45FA82C(uint64_t a1)
{
  sub_1A3C6DC44(0, &qword_1EB1256B8, &qword_1EB1256C0, &protocol descriptor for LemonadeFeedContainerModel, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1A45FA8B4()
{
  result = qword_1EB13E9A8;
  if (!qword_1EB13E9A8)
  {
    sub_1A45F8C38(255, &qword_1EB13E9A0, sub_1A45F9DF0, sub_1A424ADF0, MEMORY[0x1E697F960]);
    sub_1A45F9EA4(255);
    sub_1A3C57458(&qword_1EB13E998, sub_1A45F9EA4, &unk_1A534FE20);
    swift_getOpaqueTypeConformance2();
    sub_1A424AE74(255);
    sub_1A45FCE48(&qword_1EB128050, sub_1A424AE74, sub_1A3D6FEF0, MEMORY[0x1E697D7E8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13E9A8);
  }

  return result;
}

void sub_1A45FAA48(uint64_t a1)
{
  if (!qword_1EB13E9B0)
  {
    sub_1A45F8C38(255, &qword_1EB13E9A0, sub_1A45F9DF0, sub_1A424ADF0, MEMORY[0x1E697F960]);
    sub_1A45FA8B4();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13E9B0);
    }
  }
}

_OWORD *sub_1A45FAB38(void *a1, uint64_t a2, char a3)
{
  sub_1A3C52C70(0, &qword_1EB126A10, off_1E771E328);
  v6 = [swift_getObjCClassFromMetadata() sharedInstance];
  v7 = [v6 simulateEmptyShelves];

  if (!v7)
  {
    v11 = *(a2 + 40);
    if (v11)
    {
      v12 = MEMORY[0x1E69E7D40];
      v13 = *((*MEMORY[0x1E69E7D40] & *v11) + 0x1C8);
      v14 = v11;
      if (v13() == 2)
      {
        (*((*v12 & *v14) + 0x210))(v19);
        LOBYTE(v21[0]) = v19[0];
        LOBYTE(v20[0]) = 1;
        v15 = static PickerMode.== infix(_:_:)(v21, v20);

        v16 = !v15;
        goto LABEL_8;
      }
    }

    v16 = 1;
LABEL_8:
    type metadata accessor for LemonadeAlbumItemListManager(0);
    v17 = a1;

    sub_1A43FD8F4(v18, a1, v16 & 1, 1, 0, 1, a3 & 1);
  }

  sub_1A3CA2488(0, &qword_1EB129FD8, &qword_1EB126CD0, 0x1E6978758, type metadata accessor for PhotoKitItemListManager);
  v8 = *(a2 + 16);
  v22 = 0;
  memset(v21, 0, sizeof(v21));
  memset(v20, 0, sizeof(v20));
  sub_1A3C52C70(0, &qword_1EB126CD0, 0x1E6978758);
  v9 = v8;
  sub_1A43FD8EC();
  return PhotoKitItemListManager.__allocating_init(photoLibrary:libraryFilterState:userData:options:sorter:fetchResultProvider:)(v9, 0, v21);
}

uint64_t sub_1A45FAD80()
{
  v0 = sub_1A524C624();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A524C604();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1A52426E4();
  if (v6)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xE000000000000000;
  }

  sub_1A3D6FBA4();
  v9 = sub_1A5242724();
  if ((v10 & 1) == 0)
  {
    v11 = v9;
    if (sub_1A52426F4())
    {
      v12 = sub_1A5242694();
      v14 = v13;
      v15 = sub_1A52426A4();
      v17 = sub_1A45F8E30(v7, v8, v11, v12, v14 & 1, v15, v16 & 1);

      return v17;
    }
  }

  if (sub_1A52426F4())
  {
    v19 = 0xD000000000000034;
  }

  else
  {
    v20 = sub_1A5242724();
    if ((v21 & 1) == 0)
    {
      v24 = v20;
      sub_1A524C5F4();
      sub_1A524C5E4();
      sub_1A524C5D4();

      sub_1A524C5E4();
      v25[1] = v24;
      sub_1A524C5C4();
      sub_1A524C5E4();
      sub_1A524C614();
      v23 = sub_1A524C774();
      (*(v1 + 8))(v3, v0);
      return v23;
    }

    v19 = 0xD000000000000033;
  }

  sub_1A3C38BD4(v19);
  sub_1A3C6DC44(0, &qword_1EB12B110, &qword_1EB12B100, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1A52F8E10;
  *(v22 + 56) = MEMORY[0x1E69E6158];
  *(v22 + 64) = sub_1A3D710E8();
  *(v22 + 32) = v7;
  *(v22 + 40) = v8;
  v23 = sub_1A524C6B4();

  return v23;
}

void sub_1A45FB0A8(uint64_t a1, double a2)
{
  if (!qword_1EB13E9C8)
  {
    sub_1A45FB300(255, a2);
    sub_1A45FBA44(255, v2);
    sub_1A45FB4EC(255, &qword_1EB13E9D8, sub_1A45FB5E8, &qword_1EB13EA28, sub_1A45FB5E8);
    sub_1A45FB88C(255);
    sub_1A45FB5E8(255);
    sub_1A5248644();
    sub_1A3C57458(&qword_1EB13EA28, sub_1A45FB5E8, MEMORY[0x1E697CD28]);
    sub_1A3C57458(&qword_1EB13E978, MEMORY[0x1E697C150], MEMORY[0x1E697C148]);
    swift_getOpaqueTypeConformance2();
    sub_1A5242424();
    sub_1A3C57458(&qword_1EB124F48, MEMORY[0x1E69C1E30], MEMORY[0x1E69C1E28]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v4)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13E9C8);
    }
  }
}

void sub_1A45FB300(uint64_t a1, double a2)
{
  if (!qword_1EB13E9D0)
  {
    sub_1A45FB4EC(255, &qword_1EB13E9D8, sub_1A45FB5E8, &qword_1EB13EA28, sub_1A45FB5E8);
    sub_1A45FB88C(255);
    sub_1A45FB5E8(255);
    sub_1A5248644();
    sub_1A3C57458(&qword_1EB13EA28, sub_1A45FB5E8, MEMORY[0x1E697CD28]);
    sub_1A3C57458(&qword_1EB13E978, MEMORY[0x1E697C150], MEMORY[0x1E697C148]);
    swift_getOpaqueTypeConformance2();
    sub_1A5242424();
    sub_1A3C57458(&qword_1EB124F48, MEMORY[0x1E69C1E30], MEMORY[0x1E69C1E28]);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13E9D0);
    }
  }
}

void sub_1A45FB4EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1A5248644();
    sub_1A3C57458(a4, a5, MEMORY[0x1E697CD28]);
    sub_1A3C57458(&qword_1EB13E978, MEMORY[0x1E697C150], MEMORY[0x1E697C148]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v9)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

void sub_1A45FB5E8(uint64_t a1)
{
  if (!qword_1EB13E9E0)
  {
    sub_1A45FB698(255);
    sub_1A3C57458(&qword_1EB13EA20, sub_1A45FB698, MEMORY[0x1E6981F48]);
    v1 = sub_1A524A2F4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13E9E0);
    }
  }
}

void sub_1A45FB6CC(uint64_t a1)
{
  if (!qword_1EB13E9F0)
  {
    sub_1A45FE3B8(255, &qword_1EB13E9F8, &type metadata for LemonadeAlbumsCellStylePicker, MEMORY[0x1E69E6720]);
    sub_1A45FB778(255);
    sub_1A41C3F80(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB13E9F0);
    }
  }
}

void sub_1A45FB814(uint64_t a1)
{
  if (!qword_1EB13EA18)
  {
    sub_1A5243124();
    sub_1A524B9A4();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB13EA18);
    }
  }
}

void sub_1A45FB88C(uint64_t a1)
{
  if (!qword_1EB13EA30)
  {
    sub_1A45FB4EC(255, &qword_1EB13E9D8, sub_1A45FB5E8, &qword_1EB13EA28, sub_1A45FB5E8);
    sub_1A5242424();
    sub_1A45FB5E8(255);
    sub_1A5248644();
    sub_1A3C57458(&qword_1EB13EA28, sub_1A45FB5E8, MEMORY[0x1E697CD28]);
    sub_1A3C57458(&qword_1EB13E978, MEMORY[0x1E697C150], MEMORY[0x1E697C148]);
    swift_getOpaqueTypeConformance2();
    sub_1A3C57458(&qword_1EB124F48, MEMORY[0x1E69C1E30], MEMORY[0x1E69C1E28]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13EA30);
    }
  }
}

void sub_1A45FBA44(uint64_t a1, double a2)
{
  if (!qword_1EB13EA40)
  {
    sub_1A45FB300(255, a2);
    sub_1A5242424();
    sub_1A45FB4EC(255, &qword_1EB13E9D8, sub_1A45FB5E8, &qword_1EB13EA28, sub_1A45FB5E8);
    sub_1A45FB88C(255);
    sub_1A45FB5E8(255);
    sub_1A5248644();
    sub_1A3C57458(&qword_1EB13EA28, sub_1A45FB5E8, MEMORY[0x1E697CD28]);
    sub_1A3C57458(&qword_1EB13E978, MEMORY[0x1E697C150], MEMORY[0x1E697C148]);
    swift_getOpaqueTypeConformance2();
    sub_1A3C57458(&qword_1EB124F48, MEMORY[0x1E69C1E30], MEMORY[0x1E69C1E28]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13EA40);
    }
  }
}

uint64_t sub_1A45FBC98(uint64_t a1)
{
  result = sub_1A3C57458(&qword_1EB1259B0, type metadata accessor for LemonadeAlbumsFeature.ShelfProvider.CollectionContainerModel, &unk_1A534FB5C);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A45FBDD8()
{
  result = qword_1EB13EA48;
  if (!qword_1EB13EA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13EA48);
  }

  return result;
}

uint64_t sub_1A45FBE2C(uint64_t a1)
{
  result = sub_1A3C57458(&qword_1EB13EA50, type metadata accessor for LemonadeAlbumsFeature.CollectionContainerModel, &unk_1A534FCC8);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A45FBF78()
{
  result = qword_1EB139AB0;
  if (!qword_1EB139AB0)
  {
    sub_1A3CA2488(255, &qword_1EB125470, &qword_1EB126CD0, 0x1E6978758, type metadata accessor for PhotoKitItemListImplementation);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB139AB0);
  }

  return result;
}

uint64_t sub_1A45FBFFC(uint64_t a1)
{
  result = sub_1A3C57458(&qword_1EB12A258, type metadata accessor for LemonadeAlbumsFeature.DefaultFeedProvider, &unk_1A534FD78);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A45FC18C(uint64_t a1)
{
  result = sub_1A3C57458(&qword_1EB13EA70, type metadata accessor for LemonadeAlbumsFeature.MacFeedProvider, &unk_1A534FDB0);
  *(a1 + 8) = result;
  return result;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1A45FC2AC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_1A45FC2F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A45FC34C(uint64_t a1)
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

void sub_1A45FC434(uint64_t a1)
{
  sub_1A3C52C70(319, &qword_1EB126BF0, 0x1E69789A8);
  if (v1 <= 0x3F)
  {
    sub_1A3CA2488(319, &unk_1EB120A60, &qword_1EB120A70, 0x1E6978760, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1A45F8804(319, &qword_1EB125A20, type metadata accessor for PickerConfiguration, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for LemonadeFeedBodyStyle(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1A45FC57C(uint64_t a1)
{
  sub_1A3C52C70(319, &qword_1EB126BF0, 0x1E69789A8);
  if (v1 <= 0x3F)
  {
    sub_1A3CA2488(319, &unk_1EB120A60, &qword_1EB120A70, 0x1E6978760, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for LemonadeFeedBodyStyle(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1A45FC654(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1A45FC6A0()
{
  result = qword_1EB122A88;
  if (!qword_1EB122A88)
  {
    sub_1A45F8C38(255, &qword_1EB122A80, sub_1A45F8AEC, sub_1A45F8DE0, MEMORY[0x1E697F960]);
    sub_1A3C57458(&qword_1EB124CF0, sub_1A45F8AEC, MEMORY[0x1E69C2918]);
    sub_1A3C57458(&qword_1EB1259C8, sub_1A45F8DE0, &unk_1A5329AA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122A88);
  }

  return result;
}

unint64_t sub_1A45FC7C4()
{
  result = qword_1EB13EA78;
  if (!qword_1EB13EA78)
  {
    sub_1A45F8C38(255, &qword_1EB13EA80, sub_1A45F97CC, sub_1A424B7F8, MEMORY[0x1E697F960]);
    sub_1A45A8F98();
    sub_1A424B894();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13EA78);
  }

  return result;
}

unint64_t sub_1A45FC888()
{
  result = qword_1EB13EA88;
  if (!qword_1EB13EA88)
  {
    sub_1A45F8C38(255, &unk_1EB13EA90, sub_1A45F9958, sub_1A43DC25C, MEMORY[0x1E697F960]);
    sub_1A45F9C70();
    sub_1A3C57458(&qword_1EB139A48, sub_1A43DC25C, &unk_1A536F5E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13EA88);
  }

  return result;
}

void sub_1A45FCA08(uint64_t a1)
{
  if (!qword_1EB13EAB0)
  {
    sub_1A45FE270(255, &qword_1EB127480, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
    sub_1A524B9A4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB13EAB0);
    }
  }
}

void sub_1A45FCAD8(uint64_t a1)
{
  if (!qword_1EB13EAC0)
  {
    sub_1A44A6464(255);
    sub_1A45FCBD8(255);
    sub_1A3C57458(&qword_1EB13AD70, sub_1A44A6464, MEMORY[0x1E6981F48]);
    sub_1A45FCE48(&qword_1EB13EB10, sub_1A45FCBD8, sub_1A45FCEB8, MEMORY[0x1E69819D0]);
    v1 = sub_1A524A2F4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13EAC0);
    }
  }
}

void sub_1A45FCBD8(uint64_t a1)
{
  if (!qword_1EB13EAD0)
  {
    sub_1A45FE3B8(255, &qword_1EB13EAD8, &type metadata for LemonadeAlbumsContentFilter, MEMORY[0x1E69E62F8]);
    sub_1A45FD620(255, &qword_1EB13EAE0, MEMORY[0x1E697F960]);
    sub_1A45FCD90(&qword_1EB13EAF8, &qword_1EB13EAD8, &type metadata for LemonadeAlbumsContentFilter);
    sub_1A45FCDF4();
    v1 = sub_1A524B9D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13EAD0);
    }
  }
}

void sub_1A45FCCFC(uint64_t a1)
{
  if (!qword_1EB13EAF0)
  {
    sub_1A3E429B4();
    sub_1A3C57458(&qword_1EB1274F0, sub_1A3E429B4, MEMORY[0x1E697D658]);
    v1 = sub_1A524B874();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13EAF0);
    }
  }
}

uint64_t sub_1A45FCD90(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1A45FE3B8(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A45FCDF4()
{
  result = qword_1EB13EB00;
  if (!qword_1EB13EB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13EB00);
  }

  return result;
}

uint64_t sub_1A45FCE48(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void), uint64_t a4)
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

unint64_t sub_1A45FCEB8()
{
  result = qword_1EB13EB18;
  if (!qword_1EB13EB18)
  {
    sub_1A45FD620(255, &qword_1EB13EAE0, MEMORY[0x1E697F960]);
    sub_1A45FCF54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13EB18);
  }

  return result;
}

unint64_t sub_1A45FCF54()
{
  result = qword_1EB13EB20;
  if (!qword_1EB13EB20)
  {
    sub_1A45FCCC8(255);
    sub_1A3C57458(&qword_1EB13EB28, sub_1A45FCCFC, MEMORY[0x1E697D6A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13EB20);
  }

  return result;
}

uint64_t sub_1A45FCFFC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  (*(*v1 + 288))();
  swift_getKeyPath();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  sub_1A45FE3B8(0, &qword_1EB13EAD8, &type metadata for LemonadeAlbumsContentFilter, MEMORY[0x1E69E62F8]);
  sub_1A45FD620(0, &qword_1EB13EAE0, MEMORY[0x1E697F960]);
  sub_1A45FCD90(&qword_1EB13EAF8, &qword_1EB13EAD8, &type metadata for LemonadeAlbumsContentFilter);
  sub_1A45FCDF4();
  sub_1A45FCEB8();

  return sub_1A524B9B4();
}

void sub_1A45FD174()
{
  v20 = sub_1A3C38BD4(0xD000000000000024);
  v21 = v2;
  sub_1A3D5F9DC();
  v3 = sub_1A524A464();
  v5 = v4;
  v7 = v6;
  (*(*v1 + 264))(&v20);
  v8 = v20;
  if (!LemonadeAlbumsContentFilter.isFilterApplied.getter())
  {
    goto LABEL_14;
  }

  v19 = v7;
  v9 = (*(*v1 + 288))();
  v10 = 0;
  v11 = *(v9 + 16);
  do
  {
    if (v11 == v10)
    {

      v7 = v19;
      goto LABEL_14;
    }

    if (v10 >= *(v9 + 16))
    {
      __break(1u);
      goto LABEL_16;
    }

    v12 = *(v9 + 8 * v10++ + 32);
    v20 = v12;
    v22 = v8;
    sub_1A43FED2C();
  }

  while ((sub_1A524E114() & 1) == 0);
  v20 = *sub_1A44E72F8();
  v22 = v12;
  sub_1A43FE604();
  if (sub_1A524C594())
  {
    v13 = 0xD00000000000002ELL;
LABEL_12:
    v7 = v19;

    v14 = sub_1A3C38BD4(v13);
    if (v15)
    {
      v20 = v14;
      v21 = v15;
      v16 = sub_1A524A464();
      sub_1A3E75E68(v16, v18, v17 & 1);
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

LABEL_14:
    sub_1A3E75E68(v3, v5, v7 & 1);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v20 = *sub_1A44E7304();
  v22 = v12;
  if (sub_1A524C594())
  {
    v13 = 0xD00000000000002FLL;
    goto LABEL_12;
  }

LABEL_16:
  sub_1A524E6E4();
  __break(1u);
}

void sub_1A45FD544(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
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

void sub_1A45FD620(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    sub_1A45FCCC8(255);
    v7 = a3(a1, v6, MEMORY[0x1E69E73E0]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1A45FD688@<X0>(_BYTE *a1@<X8>)
{
  if (LemonadeAlbumsContentFilter.isFilterApplied.getter())
  {
    sub_1A43FED2C();
    result = sub_1A524E114();
  }

  else
  {
    result = 0;
  }

  *a1 = result & 1;
  return result;
}

uint64_t sub_1A45FD6FC(unsigned __int8 *a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *a1;
  (*(*v2 + 264))(&v8);
  if (v4 == 1)
  {
    v8 = v3;
  }

  else
  {
    v7 = v3;
    v3 = v8;
    sub_1A43FED2C();
    sub_1A524E124();
    if ((sub_1A524E164() & 1) == 0)
    {
      sub_1A524E174();
      v3 = v8;
    }
  }

  v7 = v3;
  sub_1A43FED2C();
  sub_1A524E214();
  sub_1A43FE604();
  if (sub_1A524C594())
  {
    v5 = *sub_1A44E6F70();
    v8 = v5;
  }

  else
  {
    v5 = v8;
  }

  v7 = v5;
  return (*(*v2 + 272))(&v7);
}

void sub_1A45FD868(uint64_t a1, double a2)
{
  if (!qword_1EB13EB50)
  {
    sub_1A45FD910(255);
    sub_1A45FCE48(&qword_1EB13EB78, sub_1A45FD910, sub_1A45FCF54, MEMORY[0x1E69819D0]);
    v2 = sub_1A5248014();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB13EB50);
    }
  }
}

void sub_1A45FD910(uint64_t a1)
{
  if (!qword_1EB13EB58)
  {
    sub_1A45FE3B8(255, &qword_1EB13EB60, &type metadata for LemonadeAlbumCellStyle, MEMORY[0x1E69E62F8]);
    sub_1A45FCCC8(255);
    sub_1A45FCD90(&qword_1EB13EB68, &qword_1EB13EB60, &type metadata for LemonadeAlbumCellStyle);
    sub_1A45FD9E4();
    v1 = sub_1A524B9D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13EB58);
    }
  }
}

unint64_t sub_1A45FD9E4()
{
  result = qword_1EB13EB70;
  if (!qword_1EB13EB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13EB70);
  }

  return result;
}

uint64_t sub_1A45FDA38()
{
  (*(*v0 + 184))();
  swift_getKeyPath();
  sub_1A45FE3B8(0, &qword_1EB13EB60, &type metadata for LemonadeAlbumCellStyle, MEMORY[0x1E69E62F8]);
  sub_1A45FCCC8(0);
  sub_1A45FCD90(&qword_1EB13EB68, &qword_1EB13EB60, &type metadata for LemonadeAlbumCellStyle);
  sub_1A45FD9E4();
  sub_1A45FCF54();

  return sub_1A524B9B4();
}

void *sub_1A45FDB68@<X0>(BOOL *a1@<X8>)
{
  (*(**(v1 + 32) + 160))(&v6);
  sub_1A424D8DC();
  sub_1A524C9C4();
  result = sub_1A524C9C4();
  *a1 = v5 == v4;
  return result;
}

uint64_t objectdestroy_123Tm(uint64_t a1)
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

_BYTE *sub_1A45FDC6C(_BYTE *result)
{
  if (*result == 1)
  {
    v6 = v2;
    v7 = v3;
    v4 = *(v1 + 32);
    v5 = *(v1 + 40);
    return (*(*v4 + 168))(&v5);
  }

  return result;
}

unint64_t sub_1A45FDCD8()
{
  result = qword_1EB139AD8;
  if (!qword_1EB139AD8)
  {
    sub_1A3CA2488(255, &unk_1EB12A880, &qword_1EB126CD0, 0x1E6978758, type metadata accessor for PhotoKitItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB139AD8);
  }

  return result;
}

uint64_t objectdestroy_4Tm_3()
{

  sub_1A3C53AEC(*(v0 + 48), *(v0 + 56));
  sub_1A3C53AEC(*(v0 + 64), *(v0 + 72));

  return swift_deallocObject();
}

uint64_t sub_1A45FDDD8@<X0>(uint64_t *a1@<X8>)
{
  if (*(v1 + 32))
  {
    v3 = sub_1A44E6630();
    v4 = *(**v3 + 264);

    v4(&v9, v5);

    if (LemonadeAlbumsContentFilter.isFilterApplied.getter())
    {
      v6 = *(**v3 + 264);

      v6(&v9, v7);

      sub_1A44E7304();
      sub_1A43FED2C();
      sub_1A524E114();
    }
  }

  result = sub_1A524B544();
  *a1 = result;
  return result;
}

unint64_t sub_1A45FDF54()
{
  result = qword_1EB13EB90;
  if (!qword_1EB13EB90)
  {
    sub_1A45F8804(255, &qword_1EB13E9C0, sub_1A45FB0A8, MEMORY[0x1E69E6720]);
    sub_1A45FB300(255, v1);
    sub_1A45FBA44(255, v2);
    sub_1A45FB4EC(255, &qword_1EB13E9D8, sub_1A45FB5E8, &qword_1EB13EA28, sub_1A45FB5E8);
    sub_1A45FB88C(255);
    sub_1A45FB5E8(255);
    sub_1A5248644();
    sub_1A3C57458(&qword_1EB13EA28, sub_1A45FB5E8, MEMORY[0x1E697CD28]);
    sub_1A3C57458(&qword_1EB13E978, MEMORY[0x1E697C150], MEMORY[0x1E697C148]);
    swift_getOpaqueTypeConformance2();
    sub_1A5242424();
    sub_1A3C57458(&qword_1EB124F48, MEMORY[0x1E69C1E30], MEMORY[0x1E69C1E28]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13EB90);
  }

  return result;
}

void sub_1A45FE200(uint64_t a1)
{
  if (*(a1 + 16))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }
}

void sub_1A45FE270(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

double sub_1A45FE2C4()
{
  sub_1A45FE3B8(0, &qword_1EB12B260, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A52FC9F0;
  *(inited + 32) = sub_1A524C674();
  *(inited + 40) = v1;
  *(inited + 48) = sub_1A524C674();
  *(inited + 56) = v2;
  sub_1A3DD76A0(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_unknownObjectRetain();
  sub_1A5243104();
  return result;
}

void sub_1A45FE3B8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1A45FE408(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  sub_1A45FE5E0(0, &qword_1EB137738, type metadata accessor for LemonadeCollectionCustomizationViewModel);
  v8 = v3;
  sub_1A3CA2488(0, &qword_1EB13EBB0, &qword_1EB126AC0, 0x1E6978650, type metadata accessor for LemonadeCollectionCustomizationAlbumsModel);
  sub_1A45FE4E8();
  v4 = v3;
  j___s12PhotosUICore29lemonadeAlbumsShelfIdentifierAA08LemonadeeF0Ovg_0(&v7);
  v6 = v7;
  v5 = sub_1A4407D6C(&v8, &v6, 0, 0);
  sub_1A478C8F8(v5, a1);
}

unint64_t sub_1A45FE4E8()
{
  result = qword_1EB137730;
  if (!qword_1EB137730)
  {
    sub_1A3CA2488(255, &qword_1EB13EBB0, &qword_1EB126AC0, 0x1E6978650, type metadata accessor for LemonadeCollectionCustomizationAlbumsModel);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB137730);
  }

  return result;
}

unint64_t sub_1A45FE56C()
{
  result = qword_1EB13EBD0;
  if (!qword_1EB13EBD0)
  {
    sub_1A45FE5E0(255, &unk_1EB13EBC0, type metadata accessor for LemonadeCollectionCustomizationView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13EBD0);
  }

  return result;
}

void sub_1A45FE5E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!*a2)
  {
    sub_1A3CA2488(255, &qword_1EB13EBB0, &qword_1EB126AC0, 0x1E6978650, type metadata accessor for LemonadeCollectionCustomizationAlbumsModel);
    v7 = v6;
    v8 = sub_1A45FE4E8();
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

PXUIElementFreezer __swiftcall PXUIElementFreezer.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

void sub_1A45FEA48(char a1)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1;
    v5 = qword_1EB1C9FA0;
    v6 = v2;
    if (v5 != -1)
    {
      swift_once();
    }

    v7 = sub_1A5246F24();
    __swift_project_value_buffer(v7, qword_1EB1C9FA8);
    v8 = v6;
    v9 = sub_1A5246F04();
    v10 = sub_1A524D264();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      aBlock = swift_slowAlloc();
      *v11 = 136315138;
      v12 = v8;
      v13 = [v12 description];
      v14 = sub_1A524C674();
      v16 = v15;

      sub_1A3C2EF94(v14, v16, &aBlock);
    }

    v17 = *(v3 + 16);
    *(v3 + 16) = 0;

    if (a1)
    {
      v18 = 0.3;
    }

    else
    {
      v18 = 0.0;
    }

    v19 = objc_opt_self();
    v20 = swift_allocObject();
    *(v20 + 16) = v8;
    v30 = sub_1A3EF7388;
    v31 = v20;
    aBlock = MEMORY[0x1E69E9820];
    v27 = 1107296256;
    v28 = sub_1A3C2E0D0;
    v29 = &block_descriptor_222;
    v21 = _Block_copy(&aBlock);
    v22 = v8;

    v23 = swift_allocObject();
    *(v23 + 16) = v22;
    v30 = sub_1A3EF739C;
    v31 = v23;
    aBlock = MEMORY[0x1E69E9820];
    v27 = 1107296256;
    v28 = sub_1A3E01E70;
    v29 = &block_descriptor_12_6;
    v24 = _Block_copy(&aBlock);
    v25 = v22;

    [v19 animateWithDuration:v21 animations:v24 completion:v18];
    _Block_release(v24);
    _Block_release(v21);
  }
}

void sub_1A45FEDB4()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB1C9FA8);
  __swift_project_value_buffer(v0, qword_1EB1C9FA8);
  sub_1A5246EF4();
}

uint64_t sub_1A45FEE18(void *a1, double a2)
{
  v51 = sub_1A524BEE4();
  v3 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v5 = v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A524BF64();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A524BFC4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v41 - v16;
  if (!a1)
  {
    goto LABEL_9;
  }

  v50 = v11;
  v52 = v15;
  v18 = a1;
  v19 = [v18 snapshotViewAfterScreenUpdates_];
  if (!v19)
  {

LABEL_9:
    type metadata accessor for FrozenUIElement();
    v34 = swift_allocObject();
    *(v34 + 16) = 0;
    return v34;
  }

  v20 = v19;
  v45 = v9;
  v48 = v6;
  if (qword_1EB1C9FA0 != -1)
  {
    swift_once();
  }

  v46 = v7;
  v47 = v5;
  v49 = v3;
  v21 = sub_1A5246F24();
  __swift_project_value_buffer(v21, qword_1EB1C9FA8);
  v22 = v18;
  v23 = v20;
  v24 = sub_1A5246F04();
  v25 = sub_1A524D264();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    aBlock[0] = v42;
    *v26 = 136315650;
    v27 = v22;
    v28 = [v27 description];
    v29 = sub_1A524C674();
    v41[3] = v25;
    v30 = v29;
    v43 = v17;
    v32 = v31;

    sub_1A3C2EF94(v30, v32, aBlock);
  }

  v33 = [v23 layer];
  [v33 setZPosition_];

  v44 = v22;
  [v22 addSubview_];
  type metadata accessor for FrozenUIElement();
  v34 = swift_allocObject();
  *(v34 + 16) = v20;
  sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
  v43 = v23;
  v35 = sub_1A524D474();
  sub_1A524BFA4();
  sub_1A524C014();
  v50 = *(v50 + 8);
  (v50)(v13, v52);
  aBlock[4] = sub_1A45FF4F0;
  aBlock[5] = v34;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_15_5;
  v36 = _Block_copy(aBlock);

  v37 = v45;
  sub_1A524BF14();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1A3C29CE4(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1A3C38394(0);
  sub_1A3C29CE4(&qword_1EB12B1B0, sub_1A3C38394, MEMORY[0x1E69E6328]);
  v38 = v47;
  v39 = v51;
  sub_1A524E224();
  MEMORY[0x1A5908790](v17, v37, v38, v36);
  _Block_release(v36);

  (*(v49 + 8))(v38, v39);
  (*(v46 + 8))(v37, v48);
  (v50)(v17, v52);
  return v34;
}

uint64_t PhotosDynamicHeaderLegibilityOverlay.init(geometryModel:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for PhotosDynamicHeaderLegibilityOverlay(0);
  v6 = *(v5 + 20);
  *(a2 + v6) = swift_getKeyPath();
  v7 = MEMORY[0x1E697DCB8];
  sub_1A4600398(0, &qword_1EB128A70, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v8 = *(v5 + 24);
  *(a2 + v8) = swift_getKeyPath();
  sub_1A4600398(0, &unk_1EB128A40, sub_1A3DC7D88, v7);
  swift_storeEnumTagMultiPayload();

  return sub_1A3C34460(a1, a2);
}

uint64_t PhotosDynamicHeaderLegibilityOverlay.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v44 = a1;
  sub_1A46003FC(0);
  v4 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A460061C(0);
  v42 = *(v7 - 8);
  v43 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4600718(0);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3DC7D88(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45FFAC8(v17);
  sub_1A52436B4();
  sub_1A46008D4(v17, sub_1A3DC7D88);
  v18 = v1[3];
  v19 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v18);
  PhotosDynamicHeaderGeometryModel.mainContentCoveredFraction.getter(v18, v19);
  v21 = v20;
  v23 = v2[3];
  v22 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v23);
  (*(v22 + 56))(v45, v23, v22);
  v24 = v2[3];
  v25 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v24);
  (*(v25 + 16))(v24, v25);
  v26 = sub_1A45FFCC4();
  v27 = v2[3];
  v28 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v27);
  (*(v28 + 8))(v27, v28);
  v29 = v2[3];
  v30 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v29);
  if ((*(v30 + 48))(v29, v30))
  {
    *v6 = sub_1A524BC74();
    v6[1] = v31;
    sub_1A4600834(0);
    sub_1A45FFFB4(v2, v6 + *(v32 + 44), v21 * v26);
    v33 = sub_1A46006D0(&qword_1EB1215D0, sub_1A46003FC, MEMORY[0x1E6981880]);
    sub_1A524A724();
    sub_1A46008D4(v6, sub_1A46003FC);
    v45[0] = v4;
    v45[1] = v33;
    swift_getOpaqueTypeConformance2();
    v34 = v43;
    sub_1A524A724();
    (*(v42 + 8))(v9, v34);
    v35 = sub_1A5248874();
    v36 = sub_1A524A064();
    v37 = &v14[*(v11 + 36)];
    *v37 = v35;
    v37[8] = v36;
    v38 = v44;
    sub_1A3D13A28(v14, v44);
    v39 = 0;
    v40 = v38;
  }

  else
  {
    v39 = 1;
    v40 = v44;
  }

  return (*(v12 + 56))(v40, v39, 1, v11);
}

uint64_t sub_1A45FFAC8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A5249234();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4600398(0, &unk_1EB128A40, sub_1A3DC7D88, MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for PhotosDynamicHeaderLegibilityOverlay(0);
  sub_1A46029A0(v1 + *(v10 + 24), v9, &unk_1EB128A40, sub_1A3DC7D88);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1A45CBB08(v9, a1);
  }

  v12 = sub_1A524D254();
  v13 = sub_1A524A014();
  sub_1A5246DF4(v12, &dword_1A3C1C000, v13, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

  sub_1A5249224();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

double sub_1A45FFCC4()
{
  v18 = sub_1A5249234();
  v1 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x1E697DBD0];
  sub_1A4600398(0, &qword_1EB128A70, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17 - v6;
  v8 = sub_1A5247E04();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PhotosDynamicHeaderLegibilityOverlay(0);
  sub_1A46029A0(v0 + *(v12 + 20), v7, &qword_1EB128A70, v4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    v13 = sub_1A524D254();
    v14 = sub_1A524A014();
    sub_1A5246DF4(v13, &dword_1A3C1C000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();

    (*(v1 + 8))(v3, v18);
  }

  v15 = (*(v9 + 88))(v11, v8);
  result = 0.5;
  if (v15 != *MEMORY[0x1E697DBB8])
  {
    result = 1.0;
    if (v15 != *MEMORY[0x1E697DBA8])
    {
      (*(v9 + 8))(v11, v8, 1.0);
      return 1.0;
    }
  }

  return result;
}

uint64_t sub_1A45FFFB4@<X0>(void *a1@<X0>, uint64_t a2@<X8>, double a4@<D1>)
{
  v29[1] = a2;
  sub_1A4602934(0, &qword_1EB122B98, sub_1A4600498, MEMORY[0x1E69815C0], MEMORY[0x1E697F948]);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v29 - v7);
  sub_1A4600498(0);
  v29[0] = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A5243D04();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v29 - v17;
  v20 = a1[3];
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  if ((*(v19 + 40))(v20, v19))
  {
    sub_1A5243CF4();
    v21 = [objc_opt_self() blackColor];
    v22 = [v21 colorWithAlphaComponent_];

    v23 = sub_1A524B284();
    v24 = *(v13 + 16);
    v24(v15, v18, v12);
    v25 = v24(v11, v15, v12);
    sub_1A46004CC(0, v25);
    *&v11[*(v26 + 48)] = v23;
    v27 = *(v13 + 8);

    v27(v15, v12);
    sub_1A4602A20(v11, v8, sub_1A4600498);
    swift_storeEnumTagMultiPayload();
    sub_1A46006D0(&unk_1EB121390, sub_1A4600498, MEMORY[0x1E6981F48]);
    sub_1A5249744();

    sub_1A46008D4(v11, sub_1A4600498);
    return (v27)(v18, v12);
  }

  else
  {
    *v8 = sub_1A524B414();
    swift_storeEnumTagMultiPayload();
    sub_1A46006D0(&unk_1EB121390, sub_1A4600498, MEMORY[0x1E6981F48]);
    return sub_1A5249744();
  }
}

void sub_1A4600398(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A46003FC(uint64_t a1)
{
  if (!qword_1EB1215C8)
  {
    sub_1A4602934(255, &qword_1EB122580, sub_1A4600498, MEMORY[0x1E69815C0], MEMORY[0x1E697F960]);
    sub_1A4600534();
    v1 = sub_1A524B8B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1215C8);
    }
  }
}

void sub_1A46004CC(uint64_t a1, double a2)
{
  if (!qword_1EB124CF8)
  {
    sub_1A5243D04();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB124CF8);
    }
  }
}

unint64_t sub_1A4600534()
{
  result = qword_1EB122588;
  if (!qword_1EB122588)
  {
    sub_1A4602934(255, &qword_1EB122580, sub_1A4600498, MEMORY[0x1E69815C0], MEMORY[0x1E697F960]);
    sub_1A46006D0(&unk_1EB121390, sub_1A4600498, MEMORY[0x1E6981F48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122588);
  }

  return result;
}

void sub_1A460061C(uint64_t a1)
{
  if (!qword_1EB121FC0)
  {
    sub_1A46003FC(255);
    sub_1A46006D0(&qword_1EB1215D0, sub_1A46003FC, MEMORY[0x1E6981880]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB121FC0);
    }
  }
}

uint64_t sub_1A46006D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1A4600754(uint64_t a1)
{
  if (!qword_1EB121FB8)
  {
    sub_1A460061C(255);
    sub_1A46003FC(255);
    sub_1A46006D0(&qword_1EB1215D0, sub_1A46003FC, MEMORY[0x1E6981880]);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB121FB8);
    }
  }
}

void sub_1A4600834(uint64_t a1)
{
  if (!qword_1EB1243F0)
  {
    sub_1A4602934(255, &qword_1EB122580, sub_1A4600498, MEMORY[0x1E69815C0], MEMORY[0x1E697F960]);
    v1 = sub_1A52483B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1243F0);
    }
  }
}

uint64_t sub_1A46008D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A4600938(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for PhotosDynamicHeaderLegibilityOverlayPreview(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v12 - v6;
  type metadata accessor for PhotosDynamicHeaderLegibilityOverlayPreviewModel(0);
  sub_1A5247C74();
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  PhotosDynamicHeaderPreview.init(titleModel:banner:)(v14, v12, v16);
  v8 = v16[0];
  v9 = v16[1];
  sub_1A4602A20(v7, v4, type metadata accessor for PhotosDynamicHeaderLegibilityOverlayPreview);
  sub_1A4602A20(v4, a1, type metadata accessor for PhotosDynamicHeaderLegibilityOverlayPreview);
  sub_1A4601E08(0);
  v11 = a1 + *(v10 + 48);
  *v11 = v8;
  *(v11 + 8) = v9;
  *(v11 + 16) = xmmword_1A53503D0;

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4600B08(uint64_t a1)
{
  v2 = sub_1A46028E0();

  return MEMORY[0x1EEDD9FE8](a1, v2);
}

uint64_t sub_1A4600B54(uint64_t a1)
{
  v2 = sub_1A46028E0();

  return MEMORY[0x1EEDD9FE0](a1, v2);
}

uint64_t sub_1A4600BA0@<X0>(char *a1@<X8>)
{
  v77 = a1;
  v76 = sub_1A5243054();
  v84 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v75 = &v64 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v83 = &v64 - v3;
  v4 = type metadata accessor for PhotosDynamicHeaderLegibilityOverlay(0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v74 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v64 - v8);
  v10 = sub_1A5242434();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1A5242444();
  v15 = *(v14 - 8);
  v81 = v14;
  v82 = v15;
  MEMORY[0x1EEE9AC00](v14);
  v80 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v79 = &v64 - v19;
  (*(v11 + 104))(v13, *MEMORY[0x1E69C1E38], v10, v18);
  sub_1A5242454();
  sub_1A4600398(0, &qword_1EB13EC78, type metadata accessor for PhotosDynamicHeaderLegibilityOverlayPreviewModel, MEMORY[0x1E697DA80]);
  v21 = v20;
  sub_1A5247C84();
  v22 = v121;
  swift_getKeyPath();
  v121 = v22;
  sub_1A4602730();
  sub_1A52415D4();

  v23 = *(v22 + 16);

  v9[3] = type metadata accessor for PhotosDynamicHeaderMockGeometryModel(0);
  v9[4] = &protocol witness table for PhotosDynamicHeaderMockGeometryModel;
  *v9 = v23;
  v24 = *(v5 + 28);
  *(v9 + v24) = swift_getKeyPath();
  v78 = v9;
  v25 = MEMORY[0x1E697DCB8];
  sub_1A4600398(0, &qword_1EB128A70, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v26 = *(v5 + 32);
  *(v9 + v26) = swift_getKeyPath();
  sub_1A4600398(0, &unk_1EB128A40, sub_1A3DC7D88, v25);
  swift_storeEnumTagMultiPayload();
  sub_1A5247CA4();
  v27 = v121;
  v28 = v122;
  v29 = v123;
  swift_getKeyPath();
  v118 = v27;
  v119 = v28;
  v120 = v29;
  v69 = MEMORY[0x1E6981948];
  sub_1A4600398(0, &qword_1EB13ECB8, type metadata accessor for PhotosDynamicHeaderLegibilityOverlayPreviewModel, MEMORY[0x1E6981948]);
  sub_1A524B914();

  v72 = v117;
  v73 = v116;

  *&v65 = v21;
  sub_1A5247CA4();
  v30 = v121;
  v31 = v122;
  v32 = v123;
  swift_getKeyPath();
  v113 = v30;
  v114 = v31;
  v115 = v32;
  sub_1A524B914();

  v70 = v112;
  v71 = v111;

  sub_1A5247CA4();
  v33 = v121;
  v34 = v122;
  v35 = v123;
  swift_getKeyPath();
  v108 = v33;
  v109 = v34;
  v110 = v35;
  sub_1A524B914();

  v36 = v105;
  v37 = v106;
  v38 = v107;

  swift_getKeyPath();
  v102 = v36;
  v103 = v37;
  v104 = v38;
  sub_1A4600398(0, &qword_1EB13B798, type metadata accessor for PhotosDynamicHeaderMockGeometryModel, v69);
  sub_1A524B914();

  v68 = v99;
  v69 = v98;
  v66 = v101;
  v67 = v100;

  sub_1A5247CA4();
  v39 = v121;
  v40 = v122;
  v41 = v123;
  swift_getKeyPath();
  v95 = v39;
  v96 = v40;
  v97 = v41;
  sub_1A524B914();

  v42 = v92;
  v43 = v93;
  v44 = v94;

  swift_getKeyPath();
  v89 = v42;
  v90 = v43;
  v91 = v44;
  sub_1A524B914();

  v45 = v85;
  v46 = v86;
  v64 = v88;
  v65 = v87;

  v121 = v45;
  v122 = v46;
  v124 = v64;
  v123 = v65;
  v47 = v83;
  sub_1A5243044();
  v48 = v81;
  v49 = *(v82 + 16);
  v50 = v80;
  v49(v80, v79, v81);
  v73 = type metadata accessor for PhotosDynamicHeaderLegibilityOverlay;
  v51 = v74;
  sub_1A4602A20(v78, v74, type metadata accessor for PhotosDynamicHeaderLegibilityOverlay);
  v72 = *(v84 + 16);
  v52 = v75;
  v53 = v47;
  v54 = v76;
  v72(v75, v53, v76);
  v55 = v77;
  v56 = v49(v77, v50, v48);
  sub_1A460251C(0, v56);
  v58 = v57;
  v59 = v51;
  sub_1A4602A20(v51, &v55[*(v57 + 48)], v73);
  v72(&v55[*(v58 + 64)], v52, v54);
  v60 = *(v84 + 8);
  v60(v83, v54);
  sub_1A46008D4(v78, type metadata accessor for PhotosDynamicHeaderLegibilityOverlay);
  v61 = v81;
  v62 = *(v82 + 8);
  v62(v79, v81);
  v60(v52, v54);
  sub_1A46008D4(v59, type metadata accessor for PhotosDynamicHeaderLegibilityOverlay);
  return (v62)(v80, v61);
}

double sub_1A4601420@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A4602730();
  sub_1A52415D4();

  result = *(v3 + 24);
  *a2 = result;
  return result;
}

double sub_1A46014C0@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A4602730();
  sub_1A52415D4();

  result = *(v3 + 32);
  *a2 = result;
  return result;
}

double sub_1A4601560@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A4602730();
  sub_1A52415D4();

  *a2 = *(v3 + 16);

  return result;
}

double sub_1A4601608@<D0>(char *a2@<X8>)
{
  *a2 = sub_1A524BC74();
  *(a2 + 1) = v3;
  sub_1A4602480(0);
  sub_1A4600BA0(&a2[*(v4 + 44)]);
  v5 = sub_1A5248874();
  v6 = sub_1A524A064();
  sub_1A4602934(0, &qword_1EB13EC98, sub_1A46025A4, MEMORY[0x1E6980A38], MEMORY[0x1E697E830]);
  v8 = &a2[*(v7 + 36)];
  *v8 = v5;
  v8[8] = v6;
  v9 = sub_1A524BC54();
  v11 = v10;
  sub_1A4602638(0);
  v13 = &a2[*(v12 + 36)];
  result = 1.13817309e243;
  *v13 = xmmword_1A53503E0;
  v13[16] = 0;
  *(v13 + 3) = MEMORY[0x1E69E7CC0];
  *(v13 + 4) = v9;
  *(v13 + 5) = v11;
  return result;
}

uint64_t sub_1A46016EC()
{
  type metadata accessor for PhotosDynamicHeaderMockGeometryModel(0);
  *(v0 + 16) = PhotosDynamicHeaderMockGeometryModel.__allocating_init()();
  *(v0 + 24) = xmmword_1A53503F0;
  sub_1A5241604();
  swift_getKeyPath();
  sub_1A4602730();
  sub_1A52415D4();

  v1 = *(v0 + 16);
  swift_getKeyPath();

  sub_1A52415D4();

  v3.n128_u64[0] = *(v0 + 24);
  (*(*v1 + 304))(v2, v3);

  return v0;
}

double sub_1A4601814(uint64_t a1)
{
  if (*(v1 + 16) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A4602730();
    sub_1A52415C4();
  }

  return result;
}

void sub_1A4601918(double a1)
{
  if (*(v1 + 24) == a1)
  {
    *(v1 + 24) = a1;
    swift_getKeyPath();
    sub_1A4602730();
    sub_1A52415D4();

    v2 = *(v1 + 16);
    swift_getKeyPath();

    sub_1A52415D4();

    v4.n128_u64[0] = *(v1 + 24);
    (*(*v2 + 304))(v3, v4);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A4602730();
    sub_1A52415C4();
  }
}

void sub_1A4601AC8(double a1)
{
  if (*(v1 + 32) == a1)
  {
    *(v1 + 32) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A4602730();
    sub_1A52415C4();
  }
}

double sub_1A4601BB0()
{
  swift_getKeyPath();
  sub_1A4602730();
  sub_1A52415D4();

  return result;
}

double sub_1A4601C24()
{
  swift_getKeyPath();
  sub_1A4602730();
  sub_1A52415D4();

  return *(v0 + 24);
}

double sub_1A4601C94()
{
  swift_getKeyPath();
  sub_1A4602730();
  sub_1A52415D4();

  return *(v0 + 32);
}

uint64_t sub_1A4601D04()
{

  v1 = OBJC_IVAR____TtC12PhotosUICoreP33_DEBD531C94B85466E30779BA7F3EBEE548PhotosDynamicHeaderLegibilityOverlayPreviewModel___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1A4601DA8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PhotosDynamicHeaderLegibilityOverlayPreviewModel(0);
  v3 = swift_allocObject();
  result = sub_1A46016EC();
  *a1 = v3;
  return result;
}

void sub_1A4601E08(uint64_t a1)
{
  if (!qword_1EB13EC50)
  {
    type metadata accessor for PhotosDynamicHeaderLegibilityOverlayPreview(255);
    sub_1A4601E78(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB13EC50);
    }
  }
}

void sub_1A4601E78(uint64_t a1)
{
  if (!qword_1EB13EC58)
  {
    sub_1A4005524(255);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13EC58);
    }
  }
}

unint64_t sub_1A4601EF8()
{
  result = qword_1EB13EC60;
  if (!qword_1EB13EC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13EC60);
  }

  return result;
}

void sub_1A4601F90(uint64_t a1)
{
  sub_1A460208C();
  if (v1 <= 0x3F)
  {
    sub_1A4600398(319, &qword_1EB128A30, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
    if (v2 <= 0x3F)
    {
      sub_1A4600398(319, &qword_1EB124700, sub_1A3DC7D88, MEMORY[0x1E697DCC0]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1A460208C()
{
  result = qword_1EB125EA0;
  if (!qword_1EB125EA0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB125EA0);
  }

  return result;
}

uint64_t sub_1A4602108(uint64_t a1)
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

unint64_t sub_1A46021B8()
{
  result = qword_1EB123FA8;
  if (!qword_1EB123FA8)
  {
    sub_1A4600398(255, &qword_1EB123FB0, sub_1A4600718, MEMORY[0x1E69E6720]);
    sub_1A4602260();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123FA8);
  }

  return result;
}

unint64_t sub_1A4602260()
{
  result = qword_1EB123FC0;
  if (!qword_1EB123FC0)
  {
    sub_1A4600718(255);
    sub_1A460061C(255);
    sub_1A46003FC(255);
    sub_1A46006D0(&qword_1EB1215D0, sub_1A46003FC, MEMORY[0x1E6981880]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123FC0);
  }

  return result;
}

void sub_1A46023C8(uint64_t a1)
{
  sub_1A4600398(319, &qword_1EB13EC78, type metadata accessor for PhotosDynamicHeaderLegibilityOverlayPreviewModel, MEMORY[0x1E697DA80]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1A4602480(uint64_t a1)
{
  if (!qword_1EB13EC80)
  {
    sub_1A46024E8(255);
    v1 = sub_1A52483B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13EC80);
    }
  }
}

void sub_1A460251C(uint64_t a1, double a2)
{
  if (!qword_1EB13EC90)
  {
    sub_1A5242444();
    type metadata accessor for PhotosDynamicHeaderLegibilityOverlay(255);
    sub_1A5243054();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB13EC90);
    }
  }
}

void sub_1A46025A4(uint64_t a1)
{
  if (!qword_1EB13ECA0)
  {
    sub_1A46024E8(255);
    sub_1A46006D0(&qword_1EB13ECA8, sub_1A46024E8, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B8B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13ECA0);
    }
  }
}

void sub_1A4602638(uint64_t a1)
{
  if (!qword_1EB13ECB0)
  {
    sub_1A4602934(255, &qword_1EB13EC98, sub_1A46025A4, MEMORY[0x1E6980A38], MEMORY[0x1E697E830]);
    sub_1A46026D8();
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13ECB0);
    }
  }
}

void sub_1A46026D8()
{
  if (!qword_1EB122EA8)
  {
    v0 = sub_1A5248AE4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB122EA8);
    }
  }
}

unint64_t sub_1A4602730()
{
  result = qword_1EB1CA218;
  if (!qword_1EB1CA218)
  {
    type metadata accessor for PhotosDynamicHeaderLegibilityOverlayPreviewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1CA218);
  }

  return result;
}

double sub_1A4602788()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 32) = result;
  return result;
}

double sub_1A4602798()
{
  v1 = *(v0 + 16);
  *(v1 + 24) = *(v0 + 24);
  swift_getKeyPath();
  sub_1A4602730();
  sub_1A52415D4();

  v2 = *(v1 + 16);
  swift_getKeyPath();

  sub_1A52415D4();

  v4.n128_u64[0] = *(v1 + 24);
  (*(*v2 + 304))(v3, v4);

  return result;
}

void sub_1A46028A4()
{
  *(*(v0 + 16) + 16) = *(v0 + 24);
}

unint64_t sub_1A46028E0()
{
  result = qword_1EB13ECC0;
  if (!qword_1EB13ECC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13ECC0);
  }

  return result;
}

void sub_1A4602934(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1A46029A0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A4600398(0, a3, a4, MEMORY[0x1E697DCB8]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A4602A20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A4602A88()
{
  result = qword_1EB13ECC8;
  if (!qword_1EB13ECC8)
  {
    sub_1A4602638(255);
    sub_1A4602B38();
    sub_1A46006D0(&qword_1EB122EB0, sub_1A46026D8, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13ECC8);
  }

  return result;
}

unint64_t sub_1A4602B38()
{
  result = qword_1EB13ECD0;
  if (!qword_1EB13ECD0)
  {
    sub_1A4602934(255, &qword_1EB13EC98, sub_1A46025A4, MEMORY[0x1E6980A38], MEMORY[0x1E697E830]);
    sub_1A46006D0(&qword_1EB13ECD8, sub_1A46025A4, MEMORY[0x1E6981880]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13ECD0);
  }

  return result;
}

uint64_t PXPhotosBarsController.barItemIdentifiersToInvalidateForPhotosViewModelChange(_:)(uint64_t a1)
{
  v3 = MEMORY[0x1A590D320]();
  result = MEMORY[0x1E69E7CC0];
  if ((v3 & 1) == 0 && (a1 & 0x2000000000000000) != 0)
  {
    [v1 shouldUseCompactBarButtons];
    v5 = [v1 viewModel];
    [v5 chromeTitleFloatingFraction];

    sub_1A4603ED8();
  }

  return result;
}

id PXPhotosBarsController.shouldUseCompactBarButtons.getter()
{
  if ((MEMORY[0x1A590D320]() & 1) == 0)
  {
    sub_1A4603ED8();
  }

  return 0;
}

Swift::Void __swiftcall PXPhotosBarsController.configureNavigationItem(_:withTitle:)(UINavigationItem _, Swift::String_optional withTitle)
{
  sub_1A46049A4(0, &qword_1EB12B0D0, MEMORY[0x1E6968848]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1A5245BA4();
}

void sub_1A4603ED8()
{
  if (qword_1EB1590B0 != -1)
  {
    swift_once();
  }

  sub_1A5246664();
}

void sub_1A4604044()
{
  v1 = v0;
  v4 = 0;
  sub_1A3C52C70(0, &qword_1EB126A10, off_1E771E328);
  v2 = [swift_getObjCClassFromMetadata() sharedInstance];
  v3 = [v2 alwaysShowCurationToggleButton];

  if (v3)
  {
    v4 = 1;
    sub_1A46045A8(v1, &v4);
  }

  sub_1A4603ED8();
}

id sub_1A46047D4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = _s14AssociatedDataCMa_8();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1A46048A0()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB15B548);
  __swift_project_value_buffer(v0, qword_1EB15B548);
  sub_1A5246EF4();
}

uint64_t sub_1A4604904(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v5 = v2;
  return (*(*v3 + 160))(&v5);
}

uint64_t sub_1A460495C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1A46049A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A524DF24();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A4604A1C(uint64_t *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1A486B914();
    sub_1A42DC3CC();
    if (sub_1A524E114() & 1) != 0 || (sub_1A486B8E4(), (sub_1A524E114()) || (sub_1A486B8CC(), (sub_1A524E114()))
    {
      sub_1A4604044();
    }
  }
}

uint64_t sub_1A4604AFC(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = v2 + OBJC_IVAR____TtC12PhotosUICore23LemonadeInvitationModel_cellSpecs;
  sub_1A44AE480(v9);
  v4 = v9[3];
  *(v3 + 32) = v9[2];
  *(v3 + 48) = v4;
  *(v3 + 128) = v10;
  v5 = v9[7];
  *(v3 + 96) = v9[6];
  *(v3 + 112) = v5;
  v6 = v9[5];
  *(v3 + 64) = v9[4];
  *(v3 + 80) = v6;
  v7 = v9[1];
  *v3 = v9[0];
  *(v3 + 16) = v7;
  *(v2 + OBJC_IVAR____TtC12PhotosUICore23LemonadeInvitationModel__didFetchSharedAlbum) = 0;
  *(v2 + OBJC_IVAR____TtC12PhotosUICore23LemonadeInvitationModel__cachedSharedAlbum) = 0;
  sub_1A5241604();
  sub_1A3F72460(a1, v2 + OBJC_IVAR____TtC12PhotosUICore23LemonadeInvitationModel__item);
  return v2;
}

uint64_t sub_1A4604BCC(uint64_t a1)
{
  swift_getKeyPath();
  sub_1A4605F5C(&qword_1EB13ED00, type metadata accessor for LemonadeInvitationModel, &unk_1A53507F8);
  sub_1A52415C4();

  return sub_1A46054D8(a1, type metadata accessor for InvitationsItem);
}

uint64_t sub_1A4604CB0@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1A4605F5C(&qword_1EB13ED00, type metadata accessor for LemonadeInvitationModel, &unk_1A53507F8);
  sub_1A52415D4();

  v3 = OBJC_IVAR____TtC12PhotosUICore23LemonadeInvitationModel__item;
  swift_beginAccess();
  return sub_1A4605470(v5 + v3, a1, type metadata accessor for InvitationsItem);
}

uint64_t sub_1A4604D8C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A4605F5C(&qword_1EB13ED00, type metadata accessor for LemonadeInvitationModel, &unk_1A53507F8);
  sub_1A52415D4();

  v4 = OBJC_IVAR____TtC12PhotosUICore23LemonadeInvitationModel__item;
  swift_beginAccess();
  return sub_1A4605470(v3 + v4, a2, type metadata accessor for InvitationsItem);
}

uint64_t sub_1A4604E68(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for InvitationsItem(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A4605470(a1, v6, type metadata accessor for InvitationsItem);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_1A4605F5C(&qword_1EB13ED00, type metadata accessor for LemonadeInvitationModel, &unk_1A53507F8);
  sub_1A52415C4();

  return sub_1A46054D8(v6, type metadata accessor for InvitationsItem);
}

uint64_t sub_1A4604FB4(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC12PhotosUICore23LemonadeInvitationModel__item;
  swift_beginAccess();
  sub_1A46061E4(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t type metadata accessor for LemonadeInvitationModel(uint64_t a1)
{
  result = qword_1EB1CA470;
  if (!qword_1EB1CA470)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t (*sub_1A4605090(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
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
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC12PhotosUICore23LemonadeInvitationModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1A4605F5C(&qword_1EB13ED00, type metadata accessor for LemonadeInvitationModel, &unk_1A53507F8);
  sub_1A52415D4();

  *v4 = v1;
  swift_getKeyPath();
  sub_1A52415F4();

  swift_beginAccess();
  return sub_1A46051D8;
}

void sub_1A46051D8(void *a1)
{
  v1 = *a1;
  swift_endAccess();
  *v1 = v1[3];
  swift_getKeyPath();
  sub_1A52415E4();

  free(v1);
}

void *sub_1A46052B8()
{
  v1 = v0;
  if ((*(v0 + OBJC_IVAR____TtC12PhotosUICore23LemonadeInvitationModel__didFetchSharedAlbum) & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC12PhotosUICore23LemonadeInvitationModel__didFetchSharedAlbum) = 1;
    swift_getKeyPath();
    sub_1A4605F5C(&qword_1EB13ED00, type metadata accessor for LemonadeInvitationModel, &unk_1A53507F8);
    sub_1A52415D4();

    v2 = OBJC_IVAR____TtC12PhotosUICore23LemonadeInvitationModel__item;
    swift_beginAccess();
    v3 = *(v1 + v2);
    if (v3)
    {
      v4 = v3;
      v5 = [v4 albumGUID];
      if (!v5)
      {
        sub_1A524C674();
        v5 = sub_1A524C634();
      }

      v6 = objc_opt_self();
      v7 = [v4 photoLibrary];
      v8 = [v6 fetchSharedAlbumWithScopeIdentifier:v5 inPhotoLibrary:v7 allowPending:1];

      v9 = *(v1 + OBJC_IVAR____TtC12PhotosUICore23LemonadeInvitationModel__cachedSharedAlbum);
      *(v1 + OBJC_IVAR____TtC12PhotosUICore23LemonadeInvitationModel__cachedSharedAlbum) = v8;
    }
  }

  v10 = *(v1 + OBJC_IVAR____TtC12PhotosUICore23LemonadeInvitationModel__cachedSharedAlbum);
  v11 = v10;
  return v10;
}

uint64_t sub_1A4605470(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A46054D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A4605550(uint64_t (*a1)(uint64_t))
{
  v3 = type metadata accessor for InvitationsItem.InvitationType(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v12 = v1;
  sub_1A4605F5C(&qword_1EB13ED00, type metadata accessor for LemonadeInvitationModel, &unk_1A53507F8);
  sub_1A52415D4();

  v6 = v1 + OBJC_IVAR____TtC12PhotosUICore23LemonadeInvitationModel__item;
  swift_beginAccess();
  v7 = type metadata accessor for InvitationsItem(0);
  v8 = sub_1A4605470(v6 + *(v7 + 28), v5, type metadata accessor for InvitationsItem.InvitationType);
  v9 = a1(v8);
  sub_1A46054D8(v5, type metadata accessor for InvitationsItem.InvitationType);
  return v9;
}

uint64_t sub_1A46056CC@<X0>(char *a1@<X8>)
{
  v36 = a1;
  v2 = sub_1A5248714();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v37 = v1;
  sub_1A4605F5C(&qword_1EB13ED00, type metadata accessor for LemonadeInvitationModel, &unk_1A53507F8);
  sub_1A52415D4();

  v5 = OBJC_IVAR____TtC12PhotosUICore23LemonadeInvitationModel__item;
  swift_beginAccess();
  v6 = *(v1 + v5);
  if (v6)
  {
    v7 = v6;
    v8 = [v7 avatarConfiguration];
    v9 = [v8 email];
    if (v9)
    {
      v10 = v9;
      v11 = sub_1A524C674();
      v34 = v12;
      v35 = v11;
    }

    else
    {
      v34 = 0;
      v35 = 0;
    }

    v15 = [v8 phone];
    if (v15)
    {
      v16 = v15;
      v17 = sub_1A524C674();
      v19 = v18;
    }

    else
    {
      v17 = 0;
      v19 = 0;
    }

    v20 = [v8 firstName];
    if (v20)
    {
      v21 = v20;
      v22 = sub_1A524C674();
      v24 = v23;
    }

    else
    {
      v22 = 0;
      v24 = 0;
    }

    v25 = [v8 lastName];
    if (v25)
    {
      v27 = v25;
      v28 = sub_1A524C674();
      v30 = v29;
    }

    else
    {
      v28 = 0;
      v30 = 0;
    }

    sub_1A482211C(v26);
    v31 = sub_1A41F7694();
    v14 = v36;
    sub_1A481E150(v35, v34, v17, v19, v22, v24, v28, v30, v36, v31, v4);

    v13 = 0;
  }

  else
  {
    v13 = 1;
    v14 = v36;
  }

  v32 = type metadata accessor for ShareParticipantImageConfiguration(0);
  return (*(*(v32 - 8) + 56))(v14, v13, 1, v32);
}

uint64_t sub_1A4605984@<X0>(char *a1@<X8>)
{
  swift_getKeyPath();
  sub_1A4605F5C(&qword_1EB13ED00, type metadata accessor for LemonadeInvitationModel, &unk_1A53507F8);
  sub_1A52415D4();

  v3 = v1 + OBJC_IVAR____TtC12PhotosUICore23LemonadeInvitationModel__item;
  swift_beginAccess();
  if (*(v3 + 8))
  {
    v4 = [swift_unknownObjectRetain() owner];
    sub_1A3DEF360(v4, a1);
    swift_unknownObjectRelease();
    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for SharedLibraryOwnerImageConfiguration(0);
  return (*(*(v6 - 8) + 56))(a1, v5, 1, v6);
}

void *sub_1A4605AC4()
{
  swift_getKeyPath();
  sub_1A4605F5C(&qword_1EB13ED00, type metadata accessor for LemonadeInvitationModel, &unk_1A53507F8);
  sub_1A52415D4();

  v1 = v0 + OBJC_IVAR____TtC12PhotosUICore23LemonadeInvitationModel__item;
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = v2;
  return v2;
}

uint64_t sub_1A4605BE0()
{
  sub_1A46054D8(v0 + OBJC_IVAR____TtC12PhotosUICore23LemonadeInvitationModel__item, type metadata accessor for InvitationsItem);
  v1 = *(v0 + OBJC_IVAR____TtC12PhotosUICore23LemonadeInvitationModel_cellSpecs + 112);
  v8[6] = *(v0 + OBJC_IVAR____TtC12PhotosUICore23LemonadeInvitationModel_cellSpecs + 96);
  v8[7] = v1;
  v9 = *(v0 + OBJC_IVAR____TtC12PhotosUICore23LemonadeInvitationModel_cellSpecs + 128);
  v2 = *(v0 + OBJC_IVAR____TtC12PhotosUICore23LemonadeInvitationModel_cellSpecs + 48);
  v8[2] = *(v0 + OBJC_IVAR____TtC12PhotosUICore23LemonadeInvitationModel_cellSpecs + 32);
  v8[3] = v2;
  v3 = *(v0 + OBJC_IVAR____TtC12PhotosUICore23LemonadeInvitationModel_cellSpecs + 80);
  v8[4] = *(v0 + OBJC_IVAR____TtC12PhotosUICore23LemonadeInvitationModel_cellSpecs + 64);
  v8[5] = v3;
  v4 = *(v0 + OBJC_IVAR____TtC12PhotosUICore23LemonadeInvitationModel_cellSpecs + 16);
  v8[0] = *(v0 + OBJC_IVAR____TtC12PhotosUICore23LemonadeInvitationModel_cellSpecs);
  v8[1] = v4;
  sub_1A4605B8C(v8);

  v5 = OBJC_IVAR____TtC12PhotosUICore23LemonadeInvitationModel___observationRegistrar;
  v6 = sub_1A5241614();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return swift_deallocClassInstance();
}

uint64_t sub_1A4605DC0(uint64_t a1)
{
  swift_getKeyPath();
  sub_1A4605F5C(&qword_1EB13ED00, type metadata accessor for LemonadeInvitationModel, &unk_1A53507F8);
  sub_1A52415C4();

  return sub_1A46054D8(a1, type metadata accessor for InvitationsItem);
}

void (*sub_1A4605EA4(uint64_t **a1))(void *a1)
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
  v2[4] = sub_1A4605090(v2);
  return sub_1A3D3D728;
}

uint64_t sub_1A4605F5C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A4605FA8@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for InvitationsItem(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  swift_getKeyPath();
  v12[1] = v6;
  sub_1A4605F5C(&qword_1EB13ED00, type metadata accessor for LemonadeInvitationModel, &unk_1A53507F8);
  sub_1A52415D4();

  v7 = OBJC_IVAR____TtC12PhotosUICore23LemonadeInvitationModel__item;
  swift_beginAccess();
  sub_1A4605470(v6 + v7, v5, type metadata accessor for InvitationsItem);
  v8 = InvitationsItem.id.getter();
  v10 = v9;
  result = sub_1A46054D8(v5, type metadata accessor for InvitationsItem);
  *a1 = v8;
  a1[1] = v10;
  return result;
}

uint64_t sub_1A46060FC(uint64_t a1)
{
  result = type metadata accessor for InvitationsItem(319);
  if (v2 <= 0x3F)
  {
    result = sub_1A5241614();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1A46061E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InvitationsItem(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A4606264@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x58))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A460631C()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore27PXPinnedTitleViewController_shouldPinTitle;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A4606360(char a1)
{
  v3 = OBJC_IVAR____TtC12PhotosUICore27PXPinnedTitleViewController_shouldPinTitle;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id PXPinnedTitleViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1A524C634();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id PXPinnedTitleViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v3[OBJC_IVAR____TtC12PhotosUICore27PXPinnedTitleViewController_shouldPinTitle] = 1;
  if (a2)
  {
    v5 = sub_1A524C634();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for PXPinnedTitleViewController();
  v6 = objc_msgSendSuper2(&v8, sel_initWithNibName_bundle_, v5, a3);

  return v6;
}

id PXPinnedTitleViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id PXPinnedTitleViewController.init(coder:)(void *a1)
{
  v1[OBJC_IVAR____TtC12PhotosUICore27PXPinnedTitleViewController_shouldPinTitle] = 1;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for PXPinnedTitleViewController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id PXPinnedTitleViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PXPinnedTitleViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A4606838@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + class metadata base offset for PXPinnedTitleHostingController + 24))();
  *a2 = result & 1;
  return result;
}

void sub_1A4606928(char a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + class metadata base offset for PXPinnedTitleHostingController + 16);
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void *PXPinnedTitleHostingController.init(coder:rootView:)(uint64_t a1, uint64_t a2)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v2) + class metadata base offset for PXPinnedTitleHostingController);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  *(v2 + *(v7 + 16)) = 1;
  (*(v5 + 16))(&v13 - v8, v6);
  v9 = sub_1A5249604();
  v10 = *(v5 + 8);
  v11 = v9;
  v10(a2, v4);
  if (v9)
  {
  }

  return v9;
}

id PXPinnedTitleHostingController.init(coder:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *MEMORY[0x1E69E7D40] & *v4;
  *(v4 + *(v6 + class metadata base offset for PXPinnedTitleHostingController + 16)) = 1;
  v7 = type metadata accessor for PXPinnedTitleHostingController(0, *(v6 + class metadata base offset for PXPinnedTitleHostingController), *(v6 + class metadata base offset for PXPinnedTitleHostingController + 8), a4);
  v10.receiver = v4;
  v10.super_class = v7;
  v8 = objc_msgSendSuper2(&v10, sel_initWithCoder_, a1);

  if (v8)
  {
  }

  return v8;
}

uint64_t sub_1A4606D08@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + class metadata base offset for PXForcingInlinePinnedTitleHostingController + 32))();
  *a2 = result;
  return result;
}

uint64_t sub_1A4606DF4()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + class metadata base offset for PXForcingInlinePinnedTitleHostingController + 16);
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A4606E74(uint64_t a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + class metadata base offset for PXForcingInlinePinnedTitleHostingController + 16);
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A4606F9C@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + class metadata base offset for PXForcingInlinePinnedTitleHostingController + 56))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A460708C()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + class metadata base offset for PXForcingInlinePinnedTitleHostingController + 24);
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A460710C(char a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + class metadata base offset for PXForcingInlinePinnedTitleHostingController + 24);
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id sub_1A4607234(void *a1)
{
  v1 = a1;
  v5 = sub_1A4607278(v1, v2, v3, v4);

  return v5;
}

id sub_1A4607278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = MEMORY[0x1E69E7D40];
  v6 = type metadata accessor for PXForcingInlinePinnedTitleHostingController(0, *((*MEMORY[0x1E69E7D40] & *v4) + class metadata base offset for PXForcingInlinePinnedTitleHostingController), *((*MEMORY[0x1E69E7D40] & *v4) + class metadata base offset for PXForcingInlinePinnedTitleHostingController + 8), a4);
  v10.receiver = v4;
  v10.super_class = v6;
  v7 = objc_msgSendSuper2(&v10, sel_navigationItem);
  v8 = [v7 setLargeTitleDisplayMode_];
  [v7 setHidesBackButton_];
  return v7;
}

uint64_t sub_1A46073E4(uint64_t a1, uint64_t (*a2)(uint64_t), void *a3)
{
  v6 = v3;
  v8 = objc_allocWithZone(v3);
  v9 = a2(a1);
  (*(*(*(v6 + *a3) - 8) + 8))(a1);
  return v9;
}

void *PXForcingInlinePinnedTitleHostingController.init(coder:rootView:)(uint64_t a1, uint64_t a2)
{
  v5 = *((*MEMORY[0x1E69E7D40] & *v2) + class metadata base offset for PXForcingInlinePinnedTitleHostingController);
  v6 = *(v5 - 8);
  v7.n128_f64[0] = MEMORY[0x1EEE9AC00](a1);
  v9 = &v17 - v8;
  *(v2 + *(v10 + 16)) = 3;
  *(v2 + *((*v11 & *v2) + *(v12 + 3816) + 24)) = 1;
  (*(v6 + 16))(&v17 - v8, v7);
  v13 = PXPinnedTitleHostingController.init(coder:rootView:)(a1, v9);
  v14 = *(v6 + 8);
  v15 = v13;
  v14(a2, v5);
  if (v13)
  {
  }

  return v13;
}

id PXForcingInlinePinnedTitleHostingController.init(coder:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = MEMORY[0x1E69E7D40];
  v7 = *MEMORY[0x1E69E7D40] & *v4;
  *(v4 + *(v7 + class metadata base offset for PXForcingInlinePinnedTitleHostingController + 16)) = 3;
  *(v4 + *((*v6 & *v4) + class metadata base offset for PXForcingInlinePinnedTitleHostingController + 24)) = 1;
  v8 = type metadata accessor for PXForcingInlinePinnedTitleHostingController(0, *(v7 + class metadata base offset for PXForcingInlinePinnedTitleHostingController), *(v7 + class metadata base offset for PXForcingInlinePinnedTitleHostingController + 8), a4);
  v11.receiver = v4;
  v11.super_class = v8;
  v9 = objc_msgSendSuper2(&v11, sel_initWithCoder_, a1);

  if (v9)
  {
  }

  return v9;
}

id sub_1A46077A8(void *a1, uint64_t (*a2)(void, void, void))
{
  v3 = a2(0, *((*MEMORY[0x1E69E7D40] & *v2) + *a1), *((*MEMORY[0x1E69E7D40] & *v2) + *a1 + 8));
  v5.receiver = v2;
  v5.super_class = v3;
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

uint64_t sub_1A4607840(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7D40];
  *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + class metadata base offset for PXForcingInlinePinnedTitleHostingController + 16)) = 3;
  *(v1 + *((*v2 & *v1) + class metadata base offset for PXForcingInlinePinnedTitleHostingController + 24)) = 1;
  return sub_1A3C79F58(a1);
}

void type metadata accessor for LargeTitleDisplayMode()
{
  if (!qword_1EB13ED20)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EB13ED20);
    }
  }
}

uint64_t sub_1A4607D38@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A5243834();
  v135 = *(v3 - 8);
  v136 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v137 = &v129 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C6B740(0, &unk_1EB129180, MEMORY[0x1E69C2060], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v134 = &v129 - v6;
  v144 = sub_1A5243EC4();
  v139 = *(v144 - 8);
  MEMORY[0x1EEE9AC00](v144);
  v138 = &v129 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A5244084();
  v156 = *(v8 - 8);
  v157 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v155 = &v129 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v150 = &v129 - v11;
  sub_1A4608F40(0);
  v145 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v167 = &v129 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v146 = (&v129 - v15);
  sub_1A4609F3C(0, v16);
  v148 = *(v17 - 8);
  v149 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v147 = &v129 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v165 = &v129 - v20;
  sub_1A4609490(0, &qword_1EB13EE48, sub_1A4609F9C, MEMORY[0x1E69C2928], MEMORY[0x1E697F948]);
  v142 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v143 = &v129 - v22;
  sub_1A460A04C(0);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v164 = &v129 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v163 = &v129 - v26;
  sub_1A460A094(0);
  v152 = v27;
  MEMORY[0x1EEE9AC00](v27);
  v168 = (&v129 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A460A1E4(0);
  v153 = *(v29 - 8);
  v154 = v29;
  MEMORY[0x1EEE9AC00](v29);
  v151 = &v129 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1A5249234();
  v130 = *(v31 - 8);
  v131 = v31;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v129 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A460A298(0);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v36 = &v129 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1A52404F4();
  MEMORY[0x1EEE9AC00](v37);
  v39 = v1[12];
  v38 = v1[13];
  v40 = v1[18];
  v41 = v1[19];
  v169 = v1;
  v166 = v39;
  v160 = v38;
  if (v41)
  {
    *&v172 = v40;
    *(&v172 + 1) = v41;
    swift_unknownObjectRetain();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v141 = v40;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v162 = 0;
  v42 = v169;
  v43 = v169[21];
  if (v43)
  {
    *&v172 = v169[20];
    *(&v172 + 1) = v43;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v140 = v169[20];
  v161 = 0;
  v44 = *(v169 + 3);
  v45 = v169[3];
  v158 = a1;
  if (v45 != 1)
  {
    v129 = v44;
    v47 = v169[2];
    v48 = *(v169 + 5);
    v132 = *(v169 + 7);
    v133 = v48;
    v49 = v169[9];
    type metadata accessor for LemonadeICloudLinkCell(0);
    v50 = v42;
    v51 = type metadata accessor for iCloudLinkParticipantImageConfiguration(0);
    sub_1A460C26C(&qword_1EB1248A0, MEMORY[0x1E697E7E0], MEMORY[0x1E697E7E0], &v36[*(v51 + 32)]);
    v52 = v42[23];
    if (*(v50 + 192) == 1)
    {
      v53 = v50[23];
    }

    else
    {

      v54 = sub_1A524D254();
      v55 = v36;
      v56 = sub_1A524A014();
      sub_1A5246DF4(v54, &dword_1A3C1C000, v56, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

      v36 = v55;
      sub_1A5249224();
      swift_getAtKeyPath();
      sub_1A3DD15BC(v52, 0);
      (*(v130 + 8))(v33, v131);
      v53 = v172;
    }

    *v36 = v47;
    *(v36 + 8) = v129;
    v57 = v132;
    *(v36 + 24) = v133;
    *(v36 + 40) = v57;
    *(v36 + 7) = v49;
    *&v36[*(v51 + 36)] = v53;
    (*(*(v51 - 8) + 56))(v36, 0, 1, v51);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v46 = type metadata accessor for iCloudLinkParticipantImageConfiguration(0);
  (*(*(v46 - 8) + 56))(v36, 1, 1, v46);
  v58 = _s12PhotosUICore0A17SearchBarPositionO03TabD0C30initialSuggestionViewAlignment7SwiftUI0J0Vvg_0();
  v59 = v168;
  *v168 = v58;
  v59[1] = v60;
  v61 = shouldUseNewCollectionsLayout()();
  v159 = v36;
  if (v61 && (v62 = v42[22]) != 0)
  {
    v170[0] = v42[22];
    *&v133 = v62;
    v63 = type metadata accessor for LemonadeiCloudLinkModel(0);
    v64 = sub_1A46098E0(&qword_1EB13EE58, type metadata accessor for LemonadeiCloudLinkModel, &unk_1A5364428);
    swift_retain_n();
    v65 = v166;
    swift_unknownObjectRetain();
    v66 = MEMORY[0x1E6981E70];
    v67 = MEMORY[0x1E6981E60];
    v68 = sub_1A41F7694();
    LODWORD(v139) = sub_1A3C5A374();
    v69 = sub_1A43C9BB4();
    v71 = v70;
    v72 = swift_allocObject();
    *(v72 + 16) = v69;
    *(v72 + 24) = v71;
    v73 = sub_1A43C9BD0();
    LemonadeMaterialTitleCell.init(_:glyphName:title:keyAsset:aspectRatio:alwaysShowGlyph:background:affordances:)(v170, 0, 0, 0, 0, v65, v139 & 1, sub_1A3F8B548, &v172, v68, v72, v73, v66, v63, v67, v64);
    v74 = v177;
    v75 = v143;
    *(v143 + 4) = v176;
    *(v75 + 5) = v74;
    v75[96] = v178;
    v76 = v173;
    *v75 = v172;
    *(v75 + 1) = v76;
    v77 = v175;
    *(v75 + 2) = v174;
    *(v75 + 3) = v77;
    swift_storeEnumTagMultiPayload();
    sub_1A460D5B8(&v172, v170, sub_1A4609F9C);
    sub_1A4609F9C(0);
    sub_1A46098E0(&qword_1EB13EEA0, sub_1A4609F9C, &protocol conformance descriptor for LemonadeMaterialTitleCell<A, B>);
    sub_1A46098E0(&qword_1EB128FE0, MEMORY[0x1E69C2928], MEMORY[0x1E69C2920]);
    v78 = v163;
    v36 = v159;
    sub_1A5249744();

    sub_1A460C538(&v172, sub_1A4609F9C);
  }

  else
  {
    v183 = 0u;
    v184 = 0u;
    v185 = 1;
    v79 = sub_1A52429A4();
    (*(*(v79 - 8) + 56))(v134, 1, 1, v79);
    (*(v135 + 104))(v137, *MEMORY[0x1E69C2678], v136);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v80 = v138;
    sub_1A5243ED4();
    v81 = v139;
    v82 = v144;
    (*(v139 + 16))(v143, v80, v144);
    swift_storeEnumTagMultiPayload();
    sub_1A4609F9C(0);
    sub_1A46098E0(&qword_1EB13EEA0, sub_1A4609F9C, &protocol conformance descriptor for LemonadeMaterialTitleCell<A, B>);
    sub_1A46098E0(&qword_1EB128FE0, MEMORY[0x1E69C2928], MEMORY[0x1E69C2920]);
    v78 = v163;
    sub_1A5249744();
    (*(v81 + 8))(v80, v82);
  }

  sub_1A460D480(0, &qword_1EB13EEA8, sub_1A460A128, MEMORY[0x1E697E330], MEMORY[0x1E697E320]);
  v144 = v168 + *(v83 + 44);
  v84 = v165;
  sub_1A5242CC4();
  v85 = sub_1A5249584();
  v86 = v146;
  *v146 = v85;
  *(v86 + 8) = 0;
  *(v86 + 16) = 1;
  sub_1A460D480(0, &qword_1EB13EEB0, sub_1A4608FFC, MEMORY[0x1E697E300], MEMORY[0x1E697E2F8]);
  sub_1A460A2EC(v36, v141, v162, v140, v161, v86 + *(v87 + 44));
  v88 = sub_1A524A064();
  v89 = v86 + *(v145 + 36);
  *v89 = v88;
  __asm { FMOV            V0.2D, #10.0 }

  *(v89 + 8) = _Q0;
  *(v89 + 24) = _Q0;
  *(v89 + 40) = 0;
  v95 = v164;
  sub_1A460D5B8(v78, v164, sub_1A460A04C);
  v96 = v147;
  v97 = v148;
  v98 = *(v148 + 16);
  v99 = v84;
  v100 = v149;
  v98(v147, v99, v149);
  sub_1A460D4EC(v86, v167, sub_1A4608F40);
  v101 = v95;
  v102 = v144;
  sub_1A460D5B8(v101, v144, sub_1A460A04C);
  sub_1A460A15C(0);
  v104 = v103;
  v98((v102 + *(v103 + 48)), v96, v100);
  v105 = v167;
  sub_1A460D4EC(v167, v102 + *(v104 + 64), sub_1A4608F40);
  sub_1A460C484(v86, sub_1A4608F40);
  v106 = *(v97 + 8);
  v106(v165, v100);
  sub_1A460C538(v163, sub_1A460A04C);
  sub_1A460C484(v105, sub_1A4608F40);
  v106(v96, v100);
  sub_1A460C538(v164, sub_1A460A04C);

  type metadata accessor for LemonadeICloudLinkCell(0);
  v107 = v169;
  v108 = v150;
  sub_1A460C26C(&qword_1EB128A90, MEMORY[0x1E69C2948], MEMORY[0x1E69C2948], v150);
  v109 = v155;
  sub_1A5243F24();
  v110 = v157;
  v111 = *(v156 + 8);
  v111(v108, v157);
  v112 = sub_1A46098E0(&qword_1EB13EE90, sub_1A460A094, MEMORY[0x1E6981880]);
  v114 = v151;
  v113 = v152;
  v115 = v168;
  sub_1A524A784();
  v111(v109, v110);
  sub_1A460C484(v115, sub_1A460A094);
  v116 = v107[9];
  v180 = v107[8];
  v181 = v116;
  v182 = v107[10];
  v117 = v107[5];
  v176 = v107[4];
  v177 = v117;
  v118 = v107[7];
  v178 = v107[6];
  v179 = v118;
  v119 = v107[1];
  v172 = *v107;
  v173 = v119;
  v120 = v107[3];
  v174 = v107[2];
  v175 = v120;
  v171[3] = &type metadata for iCloudLinkItem;
  v171[4] = sub_1A460C4E4();
  v121 = swift_allocObject();
  v171[0] = v121;
  v122 = v107[9];
  v121[9] = v107[8];
  v121[10] = v122;
  v121[11] = v107[10];
  v123 = v107[5];
  v121[5] = v107[4];
  v121[6] = v123;
  v124 = v107[7];
  v121[7] = v107[6];
  v121[8] = v124;
  v125 = v107[1];
  v121[1] = *v107;
  v121[2] = v125;
  v126 = v107[3];
  v121[3] = v107[2];
  v121[4] = v126;
  sub_1A41855E8(&v172, v170);
  v170[0] = v113;
  v170[1] = v112;
  swift_getOpaqueTypeConformance2();
  v127 = v154;
  sub_1A524A554();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  (*(v153 + 8))(v114, v127);
  __swift_destroy_boxed_opaque_existential_0(v171);
  return sub_1A460C538(v159, sub_1A460A298);
}

void sub_1A4608F68(uint64_t a1)
{
  if (!qword_1EB13ED30)
  {
    sub_1A4608FFC(255);
    sub_1A46098E0(&qword_1EB13EE40, sub_1A4608FFC, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B894();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13ED30);
    }
  }
}

void sub_1A4609030(uint64_t a1)
{
  if (!qword_1EB13ED40)
  {
    sub_1A46090B4(255);
    sub_1A4609AF0(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB13ED40);
    }
  }
}

void sub_1A46090B4(uint64_t a1)
{
  if (!qword_1EB13ED48)
  {
    sub_1A4609148(255);
    sub_1A46098E0(&qword_1EB13EE00, sub_1A4609148, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B784();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13ED48);
    }
  }
}

void sub_1A460917C(uint64_t a1)
{
  if (!qword_1EB13ED58)
  {
    sub_1A46091E4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB13ED58);
    }
  }
}

void sub_1A46091E4(uint64_t a1)
{
  if (!qword_1EB13ED60)
  {
    sub_1A4609278(255);
    sub_1A4609928(&qword_1EB13EDE8, sub_1A4609278, sub_1A46099A4);
    v1 = sub_1A524B894();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13ED60);
    }
  }
}

void sub_1A46092D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    v5 = sub_1A5248804();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A4609360(uint64_t a1, double a2)
{
  if (!qword_1EB13ED80)
  {
    sub_1A4609400(255, a2);
    sub_1A4609750(v2);
    sub_1A3FA9580();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v4)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13ED80);
    }
  }
}

void sub_1A4609490(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1A4609514(uint64_t a1)
{
  if (!qword_1EB13ED98)
  {
    sub_1A4609570();
    v1 = sub_1A52425B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13ED98);
    }
  }
}

unint64_t sub_1A4609570()
{
  result = qword_1EB1CA528[0];
  if (!qword_1EB1CA528[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1CA528);
  }

  return result;
}

void sub_1A46095C4(uint64_t a1)
{
  if (!qword_1EB13EDA0)
  {
    sub_1A4609658(255);
    sub_1A4609928(&qword_1EB13EDB8, sub_1A4609658, sub_1A460971C);
    v1 = sub_1A5248AE4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13EDA0);
    }
  }
}

void sub_1A460968C(uint64_t a1)
{
  if (!qword_1EB13EDB0)
  {
    sub_1A3FA9580();
    v1 = sub_1A52488F4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13EDB0);
    }
  }
}

unint64_t sub_1A4609750(double a1)
{
  result = qword_1EB13EDC8;
  if (!qword_1EB13EDC8)
  {
    sub_1A4609400(255, a1);
    sub_1A4609800(v2);
    sub_1A46098E0(&qword_1EB13EDE0, sub_1A46095C4, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13EDC8);
  }

  return result;
}

unint64_t sub_1A4609800(double a1)
{
  result = qword_1EB13EDD0;
  if (!qword_1EB13EDD0)
  {
    sub_1A4609448(255, a1);
    sub_1A46098E0(&qword_1EB13EDD8, sub_1A4609514, MEMORY[0x1E69C1ED8]);
    sub_1A46098E0(&qword_1EB1245F8, sub_1A3FA95D4, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13EDD0);
  }

  return result;
}

uint64_t sub_1A46098E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A4609928(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
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

unint64_t sub_1A46099A4()
{
  result = qword_1EB13EDF0;
  if (!qword_1EB13EDF0)
  {
    sub_1A46092AC(255);
    sub_1A4609A24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13EDF0);
  }

  return result;
}

unint64_t sub_1A4609A24()
{
  result = qword_1EB13EDF8;
  if (!qword_1EB13EDF8)
  {
    sub_1A4609338(255);
    sub_1A4609400(255, v1);
    sub_1A4609750(v2);
    sub_1A3FA9580();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13EDF8);
  }

  return result;
}

void sub_1A4609B24(uint64_t a1)
{
  if (!qword_1EB13EE10)
  {
    sub_1A4609BA4(255);
    sub_1A4609CEC(255, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13EE10);
    }
  }
}

void sub_1A4609BA4(uint64_t a1)
{
  if (!qword_1EB13EE18)
  {
    sub_1A4609C28(255);
    sub_1A4609D58();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13EE18);
    }
  }
}

void sub_1A4609C28(uint64_t a1)
{
  if (!qword_1EB13EE20)
  {
    sub_1A4609490(255, &qword_1EB12C9C0, sub_1A3DF14C0, sub_1A41E5550, MEMORY[0x1E697E830]);
    sub_1A4609CEC(255, &qword_1EB127820, &qword_1EB1276A0, MEMORY[0x1E6980F50]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13EE20);
    }
  }
}

void sub_1A4609CEC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1A460D688(255, a3, a4, MEMORY[0x1E69E6720]);
    v5 = sub_1A5249F44();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1A4609D58()
{
  result = qword_1EB13EE28;
  if (!qword_1EB13EE28)
  {
    sub_1A4609C28(255);
    sub_1A4609DF8();
    sub_1A4609EEC(&qword_1EB127830, &qword_1EB127820, &qword_1EB1276A0, MEMORY[0x1E6980F50]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13EE28);
  }

  return result;
}

unint64_t sub_1A4609DF8()
{
  result = qword_1EB13EE30;
  if (!qword_1EB13EE30)
  {
    sub_1A4609490(255, &qword_1EB12C9C0, sub_1A3DF14C0, sub_1A41E5550, MEMORY[0x1E697E830]);
    sub_1A405D614();
    sub_1A46098E0(&qword_1EB13EE38, sub_1A41E5550, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13EE30);
  }

  return result;
}

uint64_t sub_1A4609EEC(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A4609CEC(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A4609F3C(uint64_t a1, uint64_t a2)
{
  if (!qword_1EB13CEC0)
  {
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13CEC0);
    }
  }
}

void sub_1A4609F9C(uint64_t a1)
{
  if (!qword_1EB13EE50)
  {
    v2 = type metadata accessor for LemonadeiCloudLinkModel(255);
    v3 = sub_1A46098E0(&qword_1EB13EE58, type metadata accessor for LemonadeiCloudLinkModel, &unk_1A5364428);
    v6[0] = MEMORY[0x1E6981E70];
    v6[1] = v2;
    v6[2] = MEMORY[0x1E6981E60];
    v6[3] = v3;
    v4 = type metadata accessor for LemonadeMaterialTitleCell(a1, v6);
    if (!v5)
    {
      atomic_store(v4, &qword_1EB13EE50);
    }
  }
}

void sub_1A460A094(uint64_t a1)
{
  if (!qword_1EB13EE68)
  {
    sub_1A460A128(255);
    sub_1A46098E0(&qword_1EB13EE80, sub_1A460A128, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B8B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13EE68);
    }
  }
}

void sub_1A460A15C(uint64_t a1)
{
  if (!qword_1EB13EE78)
  {
    sub_1A460A04C(255);
    sub_1A4609F3C(255, v1);
    sub_1A4608F40(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB13EE78);
    }
  }
}

void sub_1A460A1E4(uint64_t a1)
{
  if (!qword_1EB13EE88)
  {
    sub_1A460A094(255);
    sub_1A46098E0(&qword_1EB13EE90, sub_1A460A094, MEMORY[0x1E6981880]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13EE88);
    }
  }
}

uint64_t sub_1A460A2EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v55 = a5;
  v51 = a2;
  v52 = a4;
  v59 = a6;
  sub_1A4609C28(0);
  v54 = v8;
  MEMORY[0x1EEE9AC00](v8);
  sub_1A4609B24(0);
  v10 = *(v9 - 8);
  v60 = v9;
  v61 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v53 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4609AF0(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v58 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v57 = &v50 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v50 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v50 - v20;
  sub_1A46091E4(0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v50 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v50 - v26;
  sub_1A46090B4(0);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v56 = &v50 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v50 - v31;
  *v32 = sub_1A52492F4();
  *(v32 + 1) = 0;
  v32[16] = 1;
  sub_1A460D480(0, &qword_1EB13EF38, sub_1A4609148, MEMORY[0x1E697E258], MEMORY[0x1E697E250]);
  v34 = &v32[*(v33 + 44)];
  *v27 = sub_1A5249574();
  *(v27 + 1) = 0;
  v27[16] = 1;
  sub_1A460D480(0, &qword_1EB13EF40, sub_1A4609278, MEMORY[0x1E697E300], MEMORY[0x1E697E2F8]);
  sub_1A460AC14(a1, &v27[*(v35 + 44)]);
  sub_1A460D4EC(v27, v24, sub_1A46091E4);
  *v34 = 0;
  v34[8] = 1;
  sub_1A460917C(0);
  sub_1A460D4EC(v24, &v34[*(v36 + 48)], sub_1A46091E4);
  sub_1A460C484(v27, sub_1A46091E4);
  sub_1A460C484(v24, sub_1A46091E4);
  if (a3)
  {
    v37 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v37 = v51 & 0xFFFFFFFFFFFFLL;
    }

    if (v37)
    {
      v62 = v51;
      v63 = a3;
      sub_1A3D5F9DC();
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  v38 = v60;
  v39 = v61 + 56;
  v40 = *(v61 + 56);
  v40(v21, 1, 1, v60);
  if (v55)
  {
    v41 = HIBYTE(v55) & 0xF;
    if ((v55 & 0x2000000000000000) == 0)
    {
      v41 = v52 & 0xFFFFFFFFFFFFLL;
    }

    if (v41)
    {
      v62 = v52;
      v63 = v55;
      sub_1A3D5F9DC();
      v61 = v39;
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  v40(v18, 1, 1, v38);
  v42 = v56;
  sub_1A460D4EC(v32, v56, sub_1A46090B4);
  v43 = v57;
  sub_1A460D4EC(v21, v57, sub_1A4609AF0);
  v44 = v58;
  sub_1A460D4EC(v18, v58, sub_1A4609AF0);
  v45 = v59;
  sub_1A460D4EC(v42, v59, sub_1A46090B4);
  sub_1A4609030(0);
  v47 = v46;
  v48 = v45 + *(v46 + 48);
  *v48 = 0;
  *(v48 + 8) = 1;
  sub_1A460D4EC(v43, v45 + *(v46 + 64), sub_1A4609AF0);
  sub_1A460D4EC(v44, v45 + *(v47 + 80), sub_1A4609AF0);
  sub_1A460C484(v18, sub_1A4609AF0);
  sub_1A460C484(v21, sub_1A4609AF0);
  sub_1A460C484(v32, sub_1A46090B4);
  sub_1A460C484(v44, sub_1A4609AF0);
  sub_1A460C484(v43, sub_1A4609AF0);
  return sub_1A460C484(v42, sub_1A46090B4);
}

uint64_t sub_1A460AC14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a1;
  v70 = a2;
  v66 = sub_1A5241F84();
  v64 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v63 = &v60 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A52429A4();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4609400(0, v5);
  v71 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4609338(0);
  v62 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v65 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A46092AC(0);
  v72 = *(v13 - 8);
  v73 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v68 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v67 = &v60 - v16;
  sub_1A460A298(0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for iCloudLinkParticipantImageConfiguration(0);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v60 - v25;
  sub_1A460D5B8(v69, v19, sub_1A460A298);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_1A460C538(v19, sub_1A460A298);
    return (*(v72 + 56))(v70, 1, 1, v73);
  }

  else
  {
    v61 = v26;
    sub_1A460D554(v19, v26);
    sub_1A460D5B8(v26, v23, type metadata accessor for iCloudLinkParticipantImageConfiguration);
    (*(v4 + 104))(v7, *MEMORY[0x1E69C2050], v3);
    sub_1A4609570();
    sub_1A5242594();
    sub_1A4609448(0, v28);
    *&v10[*(v29 + 36)] = 256;
    v30 = sub_1A524BC74();
    v32 = v31;
    v33 = sub_1A524B434();
    sub_1A5247EE4();
    v34 = v80[13];
    v35 = v80[14];
    v36 = v80[15];
    v37 = v80[11];
    v38 = v80[12];
    v39 = sub_1A524BC74();
    *&v74 = v37;
    *(&v74 + 1) = v38;
    *&v75 = v34;
    *(&v75 + 1) = v35;
    *&v76 = v36;
    *(&v76 + 1) = v33;
    *&v77 = 256;
    *(&v77 + 1) = v39;
    *&v78 = v40;
    *(&v78 + 1) = v30;
    v79 = v32;
    v80[0] = v37;
    v41 = &v10[*(v71 + 36)];
    v42 = v77;
    *(v41 + 2) = v76;
    *(v41 + 3) = v42;
    *(v41 + 4) = v78;
    *(v41 + 10) = v32;
    v43 = v75;
    *v41 = v74;
    *(v41 + 1) = v43;
    v80[1] = v38;
    v80[2] = v34;
    v80[3] = v35;
    v80[4] = v36;
    v80[5] = v33;
    v80[6] = 256;
    v80[7] = v39;
    v80[8] = v40;
    v80[9] = v30;
    v80[10] = v32;
    sub_1A460D5B8(&v74, v82, sub_1A46095C4);
    sub_1A460C538(v80, sub_1A46095C4);
    v44 = v63;
    sub_1A5241F64();
    sub_1A4609750(v45);
    sub_1A3FA9580();
    v46 = v65;
    sub_1A524A4E4();
    (*(v64 + 8))(v44, v66);
    sub_1A460C538(v10, sub_1A4609400);
    sub_1A524BC74();
    sub_1A52481F4();
    v47 = &v46[*(v62 + 36)];
    v48 = v81[1];
    *v47 = v81[0];
    *(v47 + 1) = v48;
    *(v47 + 2) = v81[2];
    sub_1A524BC74();
    sub_1A5248AD4();
    sub_1A460C538(v61, type metadata accessor for iCloudLinkParticipantImageConfiguration);
    v49 = v46;
    v50 = v68;
    sub_1A460D620(v49, v68, sub_1A4609338);
    v51 = v73;
    v52 = (v50 + *(v73 + 36));
    v53 = v82[5];
    v52[4] = v82[4];
    v52[5] = v53;
    v52[6] = v82[6];
    v54 = v82[1];
    *v52 = v82[0];
    v52[1] = v54;
    v55 = v82[3];
    v52[2] = v82[2];
    v52[3] = v55;
    v56 = v50;
    v57 = v67;
    sub_1A460D620(v56, v67, sub_1A46092AC);
    v58 = v57;
    v59 = v70;
    sub_1A460D620(v58, v70, sub_1A46092AC);
    return (*(v72 + 56))(v59, 0, 1, v51);
  }
}

uint64_t sub_1A460B348@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1[9];
  *(a3 + 128) = a1[8];
  *(a3 + 144) = v4;
  *(a3 + 160) = a1[10];
  v5 = a1[5];
  *(a3 + 64) = a1[4];
  *(a3 + 80) = v5;
  v6 = a1[7];
  *(a3 + 96) = a1[6];
  *(a3 + 112) = v6;
  v7 = a1[1];
  *a3 = *a1;
  *(a3 + 16) = v7;
  v8 = a1[3];
  *(a3 + 32) = a1[2];
  *(a3 + 48) = v8;
  *(a3 + 176) = a2;
  *(a3 + 184) = swift_getKeyPath();
  *(a3 + 192) = 0;
  v9 = type metadata accessor for LemonadeICloudLinkCell(0);
  v10 = *(v9 + 28);
  *(a3 + v10) = swift_getKeyPath();
  v11 = MEMORY[0x1E697DCB8];
  sub_1A3C6B740(0, &qword_1EB128A90, MEMORY[0x1E69C2948], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v12 = *(v9 + 32);
  *(a3 + v12) = swift_getKeyPath();
  sub_1A3C6B740(0, &qword_1EB1248A0, MEMORY[0x1E697E7E0], v11);

  return swift_storeEnumTagMultiPayload();
}

void sub_1A460B480()
{
  sub_1A524E404();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A460B638(uint64_t a1)
{
  if (v1[1])
  {
    sub_1A524ECB4();
    sub_1A524C794();
    if (v1[3])
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1A524ECB4();
    if (v1[3])
    {
LABEL_3:
      sub_1A524ECB4();
      sub_1A524C794();
      if (v1[5])
      {
        goto LABEL_4;
      }

LABEL_8:
      sub_1A524ECB4();
      if (v1[7])
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

  sub_1A524ECB4();
  if (!v1[5])
  {
    goto LABEL_8;
  }

LABEL_4:
  sub_1A524ECB4();
  sub_1A524C794();
  if (v1[7])
  {
LABEL_5:
    sub_1A524ECB4();
    sub_1A524C794();
    goto LABEL_10;
  }

LABEL_9:
  sub_1A524ECB4();
LABEL_10:
  v2 = type metadata accessor for iCloudLinkParticipantImageConfiguration(0);
  sub_1A5248714();
  sub_1A46098E0(&qword_1EB13EF20, MEMORY[0x1E697E7E0], MEMORY[0x1E697E7F0]);
  sub_1A524C4B4();
  v3 = *(v1 + *(v2 + 36));
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  return MEMORY[0x1A590A040](*&v3);
}

uint64_t sub_1A460B7E0()
{
  sub_1A524EC94();
  sub_1A460B638(v1);
  return sub_1A524ECE4();
}

uint64_t sub_1A460B824(uint64_t a1)
{
  sub_1A524EC94();
  sub_1A460B638(v2);
  return sub_1A524ECE4();
}

void sub_1A460B864()
{
  sub_1A460CD30(0);
  type metadata accessor for iCloudLinkParticipantImageConfiguration(0);
  sub_1A460CCEC(qword_1EB1CA970, &unk_1A5350C14);
  v0 = sub_1A3DBB130();
  sub_1A3DBB140(sub_1A460B8E8, 0, v0);
}

uint64_t sub_1A460B8EC@<X0>(uint64_t a1@<X0>, void (*a2)(_BYTE *)@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  if (qword_1EB1CA500 != -1)
  {
    v8 = a1;
    v9 = a2;
    v10 = a3;
    v11 = a6;
    v12 = a5;
    swift_once();
    a1 = v8;
    a5 = v12;
    a6 = v11;
    a2 = v9;
    a3 = v10;
  }

  result = sub_1A3DBB330(a1, a2, a3, a5, a6);
  *a4 = result;
  return result;
}

void sub_1A460B988()
{
  if (qword_1EB1CA500 != -1)
  {
    swift_once();
  }

  sub_1A3DBB71C();
}

uint64_t sub_1A460B9F0()
{
  v0 = objc_opt_self();
  sub_1A3C52C70(0, &qword_1EB126660, 0x1E6978630);
  v1 = sub_1A524CA14();
  v2 = [v0 transientAssetCollectionWithAssets:v1 title:0];

  v3 = [objc_opt_self() invitationWithAssetCollection_];
  sub_1A4622A28(0, 0, 0, 0, 0x796E6E686F4ALL, 0xE600000000000000, 0x656573656C707041, 0xE900000000000064, v9, 0, 0);
  v4 = v3;
  v7.n128_u64[1] = 0x656C746974627553;
  *(&v6 + 1) = 0x656C746974627553;
  v7.n128_u64[0] = 0xEA00000000003120;
  *&v6 = 0xE500000000000000;
  sub_1A4622A98(v4, 0, v9, 0, 0, 0x5420726574736F50, 0xEC000000656C7469, 0x656C746954, v8, v6, v7, 0xEA00000000003220);
  sub_1A524A044();
  sub_1A46092D4(0, &qword_1EB13EEC0, sub_1A460C668, MEMORY[0x1E697E5E0]);
  sub_1A460C7A4();
  sub_1A5247D14();

  return sub_1A440594C(v8);
}

uint64_t sub_1A460BBF0@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v3 = type metadata accessor for LemonadeICloudLinkCell(0);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v67 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v66 = &v63 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v65 = &v63 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v69 = &v63 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v64 = &v63 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v63 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v63 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v63 - v21;
  v23 = a1[9];
  *(v22 + 8) = a1[8];
  *(v22 + 9) = v23;
  *(v22 + 10) = a1[10];
  v24 = a1[5];
  *(v22 + 4) = a1[4];
  *(v22 + 5) = v24;
  v25 = a1[7];
  *(v22 + 6) = a1[6];
  *(v22 + 7) = v25;
  v26 = a1[1];
  *v22 = *a1;
  *(v22 + 1) = v26;
  v27 = a1[3];
  *(v22 + 2) = a1[2];
  *(v22 + 3) = v27;
  *(v22 + 22) = 0;
  *(v22 + 23) = swift_getKeyPath();
  v22[192] = 0;
  v28 = *(v4 + 36);
  *&v22[v28] = swift_getKeyPath();
  v29 = MEMORY[0x1E697DCB8];
  sub_1A3C6B740(0, &qword_1EB128A90, MEMORY[0x1E69C2948], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v30 = *(v4 + 40);
  *&v22[v30] = swift_getKeyPath();
  sub_1A3C6B740(0, &qword_1EB1248A0, MEMORY[0x1E697E7E0], v29);
  swift_storeEnumTagMultiPayload();
  v31 = a1[9];
  *(v19 + 8) = a1[8];
  *(v19 + 9) = v31;
  *(v19 + 10) = a1[10];
  v32 = a1[5];
  *(v19 + 4) = a1[4];
  *(v19 + 5) = v32;
  v33 = a1[7];
  *(v19 + 6) = a1[6];
  *(v19 + 7) = v33;
  v34 = a1[1];
  *v19 = *a1;
  *(v19 + 1) = v34;
  v35 = a1[3];
  *(v19 + 2) = a1[2];
  *(v19 + 3) = v35;
  *(v19 + 22) = 0;
  *(v19 + 23) = swift_getKeyPath();
  v19[192] = 0;
  v36 = *(v4 + 36);
  *&v19[v36] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v37 = *(v4 + 40);
  *&v19[v37] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v38 = a1[9];
  *(v16 + 8) = a1[8];
  *(v16 + 9) = v38;
  *(v16 + 10) = a1[10];
  v39 = a1[5];
  *(v16 + 4) = a1[4];
  *(v16 + 5) = v39;
  v40 = a1[7];
  *(v16 + 6) = a1[6];
  *(v16 + 7) = v40;
  v41 = a1[1];
  *v16 = *a1;
  *(v16 + 1) = v41;
  v42 = a1[3];
  *(v16 + 2) = a1[2];
  *(v16 + 3) = v42;
  *(v16 + 22) = 0;
  *(v16 + 23) = swift_getKeyPath();
  v16[192] = 0;
  v43 = *(v4 + 36);
  *&v16[v43] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v44 = *(v4 + 40);
  *&v16[v44] = swift_getKeyPath();
  v45 = v16;
  v63 = v16;
  swift_storeEnumTagMultiPayload();
  v46 = a1[9];
  v47 = v64;
  *(v64 + 8) = a1[8];
  *(v47 + 144) = v46;
  *(v47 + 160) = a1[10];
  v48 = a1[5];
  *(v47 + 64) = a1[4];
  *(v47 + 80) = v48;
  v49 = a1[7];
  *(v47 + 96) = a1[6];
  *(v47 + 112) = v49;
  v50 = a1[1];
  *v47 = *a1;
  *(v47 + 16) = v50;
  v51 = a1[3];
  *(v47 + 32) = a1[2];
  *(v47 + 48) = v51;
  *(v47 + 176) = 0;
  *(v47 + 184) = swift_getKeyPath();
  *(v47 + 192) = 0;
  v52 = *(v4 + 36);
  *(v47 + v52) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v53 = *(v4 + 40);
  *(v47 + v53) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v54 = v69;
  sub_1A460D5B8(v22, v69, type metadata accessor for LemonadeICloudLinkCell);
  v55 = v65;
  sub_1A460D5B8(v19, v65, type metadata accessor for LemonadeICloudLinkCell);
  v56 = v45;
  v57 = v66;
  sub_1A460D5B8(v56, v66, type metadata accessor for LemonadeICloudLinkCell);
  v58 = v67;
  sub_1A460D5B8(v47, v67, type metadata accessor for LemonadeICloudLinkCell);
  v59 = v68;
  sub_1A460D5B8(v54, v68, type metadata accessor for LemonadeICloudLinkCell);
  sub_1A460C730(0);
  v61 = v60;
  sub_1A460D5B8(v55, v59 + *(v60 + 48), type metadata accessor for LemonadeICloudLinkCell);
  sub_1A460D5B8(v57, v59 + *(v61 + 64), type metadata accessor for LemonadeICloudLinkCell);
  sub_1A460D5B8(v58, v59 + *(v61 + 80), type metadata accessor for LemonadeICloudLinkCell);
  sub_1A41855E8(a1, v70);
  sub_1A41855E8(a1, v70);
  sub_1A41855E8(a1, v70);
  sub_1A41855E8(a1, v70);
  sub_1A460C538(v47, type metadata accessor for LemonadeICloudLinkCell);
  sub_1A460C538(v63, type metadata accessor for LemonadeICloudLinkCell);
  sub_1A460C538(v19, type metadata accessor for LemonadeICloudLinkCell);
  sub_1A460C538(v22, type metadata accessor for LemonadeICloudLinkCell);
  sub_1A460C538(v58, type metadata accessor for LemonadeICloudLinkCell);
  sub_1A460C538(v57, type metadata accessor for LemonadeICloudLinkCell);
  sub_1A460C538(v55, type metadata accessor for LemonadeICloudLinkCell);
  return sub_1A460C538(v69, type metadata accessor for LemonadeICloudLinkCell);
}

uint64_t sub_1A460C1D4(uint64_t a1)
{
  v2 = sub_1A460D3AC();

  return MEMORY[0x1EEDD9FE8](a1, v2);
}

uint64_t sub_1A460C220(uint64_t a1)
{
  v2 = sub_1A460D3AC();

  return MEMORY[0x1EEDD9FE0](a1, v2);
}

uint64_t sub_1A460C26C@<X0>(unint64_t *a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = sub_1A5249234();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C6B740(0, a1, a2, MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v21 - v15;
  sub_1A460D400(v8, &v21 - v15, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = a3(0);
    return (*(*(v17 - 8) + 32))(a4, v16, v17);
  }

  else
  {
    v19 = sub_1A524D254();
    v20 = sub_1A524A014();
    sub_1A5246DF4(v19, &dword_1A3C1C000, v20, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_1A460C484(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1A460C4E4()
{
  result = qword_1EB13EEB8;
  if (!qword_1EB13EEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13EEB8);
  }

  return result;
}

uint64_t sub_1A460C538(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_1A460C598@<D0>(uint64_t a1@<X8>)
{
  v4 = *(v2 + 16);
  *a1 = sub_1A5249574();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  sub_1A460D480(0, &qword_1EB13EF30, sub_1A460C6FC, MEMORY[0x1E697E300], MEMORY[0x1E697E2F8]);
  sub_1A460BBF0(v4, a1 + *(v5 + 44));
  LOBYTE(v4) = sub_1A524A064();
  sub_1A46092D4(0, &qword_1EB13EEC0, sub_1A460C668, MEMORY[0x1E697E5E0]);
  v7 = a1 + *(v6 + 36);
  *v7 = v4;
  result = 0.0;
  *(v7 + 8) = 0u;
  *(v7 + 24) = 0u;
  *(v7 + 40) = 1;
  return result;
}

void sub_1A460C668(uint64_t a1)
{
  if (!qword_1EB13EEC8)
  {
    sub_1A460C6FC(255);
    sub_1A46098E0(&qword_1EB13EEE0, sub_1A460C6FC, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B894();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13EEC8);
    }
  }
}

void sub_1A460C730(uint64_t a1)
{
  if (!qword_1EB13EED8)
  {
    type metadata accessor for LemonadeICloudLinkCell(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB13EED8);
    }
  }
}

unint64_t sub_1A460C7A4()
{
  result = qword_1EB13EEE8;
  if (!qword_1EB13EEE8)
  {
    sub_1A46092D4(255, &qword_1EB13EEC0, sub_1A460C668, MEMORY[0x1E697E5E0]);
    sub_1A46098E0(&qword_1EB13EEF0, sub_1A460C668, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13EEE8);
  }

  return result;
}

unint64_t sub_1A460C898()
{
  result = qword_1EB13EEF8;
  if (!qword_1EB13EEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13EEF8);
  }

  return result;
}

void sub_1A460C930(uint64_t a1)
{
  sub_1A3C6B740(319, &qword_1EB13EF00, type metadata accessor for LemonadeiCloudLinkModel, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1A460D688(319, &qword_1EB124830, MEMORY[0x1E69E7DE0], MEMORY[0x1E697DCC0]);
    if (v2 <= 0x3F)
    {
      sub_1A3C6B740(319, &qword_1EB124840, MEMORY[0x1E69C2948], MEMORY[0x1E697DCC0]);
      if (v3 <= 0x3F)
      {
        sub_1A3C6B740(319, &qword_1EB124710, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCC0]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1A460CAB8(uint64_t a1)
{
  if (!qword_1EB13EF10)
  {
    sub_1A46092D4(255, &qword_1EB13EEC0, sub_1A460C668, MEMORY[0x1E697E5E0]);
    sub_1A460C7A4();
    v1 = sub_1A5247D04();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13EF10);
    }
  }
}

void sub_1A460CB68(uint64_t a1)
{
  sub_1A460D688(319, &qword_1EB126FA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1A5248714();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1A460CC64()
{
  result = qword_1EB1CA8E0;
  if (!qword_1EB1CA8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1CA8E0);
  }

  return result;
}

uint64_t sub_1A460CCEC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for iCloudLinkParticipantImageConfiguration(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A460CD30(uint64_t a1)
{
  if (!qword_1EB13EF18)
  {
    v2 = type metadata accessor for iCloudLinkParticipantImageConfiguration(255);
    v3 = sub_1A460CCEC(qword_1EB1CA970, &unk_1A5350C14);
    v5 = type metadata accessor for PhotosAsyncImageProviderCache(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EB13EF18);
    }
  }
}

BOOL sub_1A460CDB0(uint64_t *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *a1 == *a2 && v4 == v5;
    if (!v6 && (sub_1A524EAB4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v7 = a1[3];
  v8 = a2[3];
  if (v7)
  {
    if (!v8 || (a1[2] != a2[2] || v7 != v8) && (sub_1A524EAB4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  v9 = a1[5];
  v10 = a2[5];
  if (v9)
  {
    if (!v10 || (a1[4] != a2[4] || v9 != v10) && (sub_1A524EAB4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  v11 = a1[7];
  v12 = a2[7];
  if (v11)
  {
    if (!v12 || (a1[6] != a2[6] || v11 != v12) && (sub_1A524EAB4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v12)
  {
    return 0;
  }

  v13 = type metadata accessor for iCloudLinkParticipantImageConfiguration(0);
  if (sub_1A5248704())
  {
    return *(a1 + *(v13 + 36)) == *(a2 + *(v13 + 36));
  }

  return 0;
}

void sub_1A460CF04(uint64_t *a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v14 = a2;
  v15 = a3;
  v6 = sub_1A5248714();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[4];
  v12[1] = a1[2];
  v12[2] = v10;
  v11 = a1[7];
  v12[3] = a1[6];
  v12[4] = v11;
  type metadata accessor for iCloudLinkParticipantImageConfiguration(0);
  (*(v7 + 104))(v9, *MEMORY[0x1E697E7D8], v6);
  v13 = sub_1A5248704();
  (*(v7 + 8))(v9, v6);
  PXSizeScale();
}

void sub_1A460D1EC(void *a1, void *a2, id a3)
{
  v4 = *(v3 + 16);
  if (a1)
  {
    if (a2)
    {
      v7 = a1;
      [a2 BOOLValue];
    }

    else
    {
      v9 = a1;
    }

    [a1 px_pixelSize];
    sub_1A524D9B4();
  }

  if (a3)
  {
    v8 = a3;
  }

  else
  {
    v10 = sub_1A5242584();
    sub_1A46098E0(&qword_1EB143160, MEMORY[0x1E69C1EC0], MEMORY[0x1E69C1EC8]);
    v8 = swift_allocError();
    (*(*(v10 - 8) + 104))(v11, *MEMORY[0x1E69C1EB0], v10);
    a3 = 0;
  }

  *&v13 = v8;
  v14 = 1;
  v12 = a3;
  v4(&v13);
}

unint64_t sub_1A460D3AC()
{
  result = qword_1EB13EF28;
  if (!qword_1EB13EF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13EF28);
  }

  return result;
}

uint64_t sub_1A460D400(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A3C6B740(0, a3, a4, MEMORY[0x1E697DCB8]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1A460D480(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
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

uint64_t sub_1A460D4EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A460D554(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for iCloudLinkParticipantImageConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A460D5B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A460D620(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1A460D688(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1A460D6DC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30[0] = a1;
  sub_1A3C4C344(0, &qword_1EB1292E0, MEMORY[0x1E69C1CC0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v30 - v4;
  v6 = type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a2 + 8) = 1;
  v9 = type metadata accessor for LemonadeSharedLibrarySuggestionsShelfProvider(0);
  v10 = v9[6];
  v11 = *MEMORY[0x1E69C2418];
  v12 = sub_1A5243334();
  (*(*(v12 - 8) + 104))(a2 + v10, v11, v12);
  v13 = v9[7];
  v14 = sub_1A3C47918();
  v16 = v15;
  v17 = sub_1A3C47918();
  v19 = v18;
  v20 = sub_1A3C4ED50(v17);
  v32 = 1;
  *v8 = xmmword_1A5317AE0;
  v8[16] = 1;
  *(v8 + 3) = 2;
  v8[32] = 1;
  *(v8 + 5) = v14;
  *(v8 + 6) = v16;
  *(v8 + 7) = v17;
  *(v8 + 8) = v19;
  *(v8 + 72) = xmmword_1A5317AF0;
  v8[88] = 0;
  v8[89] = v20;
  swift_storeEnumTagMultiPayload();
  sub_1A3C4ED54(v5);
  sub_1A3C52D78(v8, 0, v5, a2 + v13);
  v21 = v9[8];
  v22 = *MEMORY[0x1E69C2958];
  v23 = sub_1A5244094();
  (*(*(v23 - 8) + 104))(a2 + v21, v22, v23);
  *(a2 + v9[9]) = 1;
  v24 = v30[0];
  *a2 = v30[0];
  v25 = qword_1EB15C780;
  v26 = v24;
  v27 = v26;
  if (v25 != -1)
  {
    v26 = swift_once();
  }

  v28 = qword_1EB15C788;
  MEMORY[0x1EEE9AC00](v26);
  v30[-2] = v27;

  os_unfair_lock_lock((v28 + 24));
  sub_1A460E0DC((v28 + 16), &v31);
  os_unfair_lock_unlock((v28 + 24));

  v29 = v31;

  *(a2 + v9[10]) = v29;
}

void sub_1A460D9DC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext);
  v5 = *(v4 + 16);
  v6 = objc_opt_self();
  v16 = v5;
  v7 = [v6 sharedLibraryStatusProviderWithPhotoLibrary_];
  v8 = [v7 sharedLibrary];
  if (v8)
  {
    v9 = [v8 rule];
    v10 = [v9 personUUIDs];

    v11 = sub_1A524CA34();
    v12 = *(v11 + 16);

    v13 = v12 != 0;
  }

  else
  {
    v13 = 0;
  }

  *(a2 + 16) = 0x4026000000000000;
  *a2 = a1;
  *(a2 + 8) = v13;
  v14 = *(v4 + 16);
  *(swift_allocObject() + 16) = v14;
  type metadata accessor for LemonadeSharedLibrarySuggestionsShelfProvider.SharedLibrarySuggestionsPlaceholderView(0);
  sub_1A3C52C70(0, &qword_1EB1206D0, off_1E771F918);
  v15 = v14;

  sub_1A5247C74();
  *(swift_allocObject() + 16) = v15;
  type metadata accessor for SharedLibraryFilterViewModel(0);
  sub_1A5247C74();

  swift_unknownObjectRelease();
}

uint64_t sub_1A460DBFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LemonadeSharedLibrarySuggestionCell(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A460F690(0, &qword_1EB13EF48, sub_1A460E258, type metadata accessor for LemonadeSharedLibrarySuggestionCell, MEMORY[0x1E697F948]);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v29 - v8;
  if (shouldUseNewCollectionsLayout()())
  {
    v30 = a1;
    v10 = *(*a1 + 200);

    v29[0] = v10(v11);
    v12 = type metadata accessor for LemonadeSharedLibrarySuggestionModel(0);
    v13 = sub_1A460FD40(&qword_1EB13EF58, type metadata accessor for LemonadeSharedLibrarySuggestionModel, &unk_1A5303650);
    v29[1] = a2;
    v29[2] = v4;
    v14 = v13;
    v15 = MEMORY[0x1E6981E70];
    v16 = MEMORY[0x1E6981E60];
    v17 = sub_1A41F7694();
    v18 = sub_1A3C5A374();
    v19 = sub_1A43C9BB4();
    v21 = v20;
    v22 = swift_allocObject();
    *(v22 + 16) = v19;
    *(v22 + 24) = v21;
    v23 = sub_1A43C9BD0();
    LemonadeMaterialTitleCell.init(_:glyphName:title:keyAsset:aspectRatio:alwaysShowGlyph:background:affordances:)(&v30, 0, 0, 0, 0, v29[0], v18 & 1, sub_1A3F8B548, v31, v17, v22, v23, v15, v12, v16, v14);
    v24 = v31[5];
    *(v9 + 4) = v31[4];
    *(v9 + 5) = v24;
    v9[96] = v32;
    v25 = v31[1];
    *v9 = v31[0];
    *(v9 + 1) = v25;
    v26 = v31[3];
    *(v9 + 2) = v31[2];
    *(v9 + 3) = v26;
    swift_storeEnumTagMultiPayload();
    sub_1A460E258(0);
    sub_1A460FD40(&qword_1EB13EF60, sub_1A460E258, &protocol conformance descriptor for LemonadeMaterialTitleCell<A, B>);
    sub_1A460FD40(&qword_1EB13EF68, type metadata accessor for LemonadeSharedLibrarySuggestionCell, &unk_1A5352330);
    return sub_1A5249744();
  }

  else
  {

    sub_1A4633164(v28, v6);
    sub_1A460E308(v6, v9, type metadata accessor for LemonadeSharedLibrarySuggestionCell);
    swift_storeEnumTagMultiPayload();
    sub_1A460E258(0);
    sub_1A460FD40(&qword_1EB13EF60, sub_1A460E258, &protocol conformance descriptor for LemonadeMaterialTitleCell<A, B>);
    sub_1A460FD40(&qword_1EB13EF68, type metadata accessor for LemonadeSharedLibrarySuggestionCell, &unk_1A5352330);
    sub_1A5249744();
    return sub_1A4610220(v6, type metadata accessor for LemonadeSharedLibrarySuggestionCell);
  }
}

uint64_t sub_1A460E040()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1A460E078()
{
  v0 = [objc_opt_self() weakToStrongObjectsMapTable];
  sub_1A3C4A700(0);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v0;
  qword_1EB15C788 = result;
  return result;
}

id sub_1A460E0DC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *a1;
  result = [*a1 objectForKey_];
  if (!result)
  {
    type metadata accessor for LemonadeSharedLibrarySuggestionsShelfProvider.UnreadVisibilityMonitor(0, v7);
    v8 = swift_allocObject();
    *(v8 + 24) = 0;
    *(v8 + 16) = v4;
    [v5 setObject:v8 forKey:v4];
    result = v8;
  }

  *a2 = result;
  return result;
}

uint64_t sub_1A460E1A0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for SharedLibraryFilterViewModel(0);
  v4 = [objc_opt_self() sharedLibraryStatusProviderWithPhotoLibrary_];
  result = SharedLibraryFilterViewModel.__allocating_init(sharedLibraryStatusProvider:)(v4);
  *a2 = result;
  return result;
}

id sub_1A460E20C@<X0>(void *a1@<X8>)
{
  result = [objc_opt_self() sharedLibraryStatusProviderWithPhotoLibrary_];
  *a1 = result;
  return result;
}

void sub_1A460E258(uint64_t a1)
{
  if (!qword_1EB13EF50)
  {
    v2 = type metadata accessor for LemonadeSharedLibrarySuggestionModel(255);
    v3 = sub_1A460FD40(&qword_1EB13EF58, type metadata accessor for LemonadeSharedLibrarySuggestionModel, &unk_1A5303650);
    v6[0] = MEMORY[0x1E6981E70];
    v6[1] = v2;
    v6[2] = MEMORY[0x1E6981E60];
    v6[3] = v3;
    v4 = type metadata accessor for LemonadeMaterialTitleCell(a1, v6);
    if (!v5)
    {
      atomic_store(v4, &qword_1EB13EF50);
    }
  }
}

uint64_t sub_1A460E308(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1A460E370(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1A524C634();
  v5 = PXLocalizedSharedLibraryString(v4);

  v29 = sub_1A524C674();
  v7 = v6;

  v8 = sub_1A524C634();
  v9 = PXLocalizedSharedLibraryString(v8);

  v28 = sub_1A524C674();
  v11 = v10;

  v12 = sub_1A524C634();
  v13 = PXLocalizedSharedLibraryString(v12);

  v27 = sub_1A524C674();
  v15 = v14;

  v26 = sub_1A3C38BD4(0xD000000000000028);
  v17 = v16;
  type metadata accessor for LemonadeSharedLibrarySuggestionsShelfProvider.SharedLibrarySuggestionsPlaceholderView(0);
  sub_1A3C4C344(0, &qword_1EB124940, type metadata accessor for SharedLibraryFilterViewModel, MEMORY[0x1E697DA80]);
  v18 = sub_1A5247C84();
  v19 = (*(*v30 + 144))(v18);

  v20 = v19 == 0;
  if (v19)
  {
    v21 = v28;
  }

  else
  {
    v21 = v29;
  }

  if (!v20)
  {
    v7 = v11;
  }

  v22 = sub_1A5247C84();
  v23 = (*(*v30 + 144))(v22);

  if (v23)
  {
    v24 = v26;
  }

  else
  {
    v24 = v27;
  }

  if (!v23)
  {
    v17 = v15;
  }

  *a1 = sub_1A5249584();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_1A460F468(0);
  sub_1A460E630(v21, v7, v2, v24, v17, a1 + *(v25 + 44));
}

void sub_1A460E630(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v29 = a5;
  v27 = a4;
  v23[4] = a3;
  v32 = a6;
  v8 = type metadata accessor for LemonadeSharedLibrarySuggestionsShelfProvider.SharedLibrarySuggestionsPlaceholderView(0);
  v24 = *(v8 - 8);
  v23[5] = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v23[3] = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1A460F800;
  sub_1A460F7A4(0, &qword_1EB13EFA0, sub_1A460F800);
  v28 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10 - 8);
  v30 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v23[6] = v23 - v13;
  v26 = MEMORY[0x1E697D6D0];
  sub_1A460F7A4(0, &qword_1EB1239B0, MEMORY[0x1E697D6D0]);
  v23[2] = v14 - 8;
  MEMORY[0x1EEE9AC00](v14 - 8);
  v25 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v33 = v23 - v17;
  v18 = sub_1A524A204();
  v19 = MEMORY[0x1EEE9AC00](v18);
  sub_1A460F5C0(0, v19);
  v23[1] = v20 - 8;
  MEMORY[0x1EEE9AC00](v20 - 8);
  v34 = v23 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v35 = a1;
  v36 = a2;
  sub_1A3D5F9DC();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A460EDF8()
{
  v3 = sub_1A524A204();
  MEMORY[0x1EEE9AC00](v3);
  sub_1A3D5F9DC();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A460F024@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_1A5244094();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

void sub_1A460F11C(void **a1, uint64_t a2)
{
  v3 = *a1;
  type metadata accessor for SharedLibrarySuggestionsItemListManager(0);
  sub_1A4624674(v3, *(a2 + 24), 0xD000000000000011, 0x80000001A53E00A0, 3, 0, 1);
}

void sub_1A460F1B4()
{
  objc_opt_self();
  swift_dynamicCastObjCClassUnconditional();
  swift_unknownObjectRetain();
  sub_1A3DB5914();
}

uint64_t sub_1A460F254(uint64_t a1)
{
  if ((*(*a1 + 200))())
  {
    swift_getObjectType();
    v1 = sub_1A49C3BB0();
    swift_unknownObjectRelease();
    return v1;
  }

  else
  {

    return sub_1A3C38BD4(0xD000000000000026);
  }
}

id sub_1A460F300(id *a1)
{
  v1 = [*a1 displayCollection];

  return v1;
}

unint64_t sub_1A460F350(uint64_t a1)
{
  v2 = sub_1A460FD40(&qword_1EB129330, type metadata accessor for LemonadeSharedLibrarySuggestionsShelfProvider, &unk_1A5350DF4);

  return sub_1A42E6E80(a1, v2);
}

void sub_1A460F3BC(char a1)
{
  v3 = *(v1 + *(type metadata accessor for LemonadeSharedLibrarySuggestionsShelfProvider(0) + 40));
  *(v3 + 24) = a1;
  if (a1)
  {
    v4 = 1;
  }

  else
  {
    if ((*(v3 + 25) & 1) == 0)
    {
      return;
    }

    v5 = [*(v3 + 16) px_sharedLibrarySharingSuggestionsCountsManager];
    [v5 markAnyNotificationsAsRead];

    v6 = [*(v3 + 16) px_sharedLibrarySharingSuggestionsCountsManager];
    [v6 markAllSuggestionsAsRead];

    v4 = 0;
  }

  *(v3 + 25) = v4;
}

void sub_1A460F468(uint64_t a1)
{
  if (!qword_1EB13EF70)
  {
    sub_1A3C4C344(255, &qword_1EB13EF78, sub_1A460F500, MEMORY[0x1E6981F40]);
    v1 = sub_1A52483B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13EF70);
    }
  }
}

void sub_1A460F500(uint64_t a1, double a2)
{
  if (!qword_1EB13EF80)
  {
    sub_1A460F5C0(255, a2);
    sub_1A460F7A4(255, &qword_1EB1239B0, MEMORY[0x1E697D6D0]);
    sub_1A460F7A4(255, &qword_1EB13EFA0, sub_1A460F800);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB13EF80);
    }
  }
}

void sub_1A460F5C0(uint64_t a1, double a2)
{
  if (!qword_1EB13EF88)
  {
    sub_1A460F690(255, &qword_1EB13EF90, sub_1A460F714, sub_1A3EBB1B4, MEMORY[0x1E697E830]);
    sub_1A4610280(255, &unk_1EB127840, MEMORY[0x1E697E1E0], MEMORY[0x1E6980A08]);
    v2 = sub_1A5248804();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB13EF88);
    }
  }
}

void sub_1A460F690(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1A460F714(uint64_t a1)
{
  if (!qword_1EB13EF98)
  {
    sub_1A3C4C344(255, &qword_1EB12C9D0, MEMORY[0x1E6980FB8], MEMORY[0x1E6980A08]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13EF98);
    }
  }
}

void sub_1A460F7A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A5248804();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A460F800(uint64_t a1)
{
  if (!qword_1EB13EFA8)
  {
    sub_1A3EC43B0(255);
    sub_1A3FF8F74();
    v1 = sub_1A524B764();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13EFA8);
    }
  }
}

uint64_t sub_1A460F880(uint64_t a1)
{
  result = sub_1A460FD40(&qword_1EB129338, type metadata accessor for LemonadeSharedLibrarySuggestionsShelfProvider, &unk_1A5350E10);
  *(a1 + 8) = result;
  return result;
}

void sub_1A460F9F0(uint64_t a1)
{
  type metadata accessor for LemonadeNavigationContext(319);
  if (v1 <= 0x3F)
  {
    sub_1A3CB6B10(319, &qword_1EB13EFB0, &qword_1EB1206D0, off_1E771F918, MEMORY[0x1E697DA80]);
    if (v2 <= 0x3F)
    {
      sub_1A3C4C344(319, &qword_1EB124940, type metadata accessor for SharedLibraryFilterViewModel, MEMORY[0x1E697DA80]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1A460FB00()
{
  result = qword_1EB13EFC0;
  if (!qword_1EB13EFC0)
  {
    sub_1A460F690(255, &qword_1EB13EFC8, sub_1A460E258, type metadata accessor for LemonadeSharedLibrarySuggestionCell, MEMORY[0x1E697F960]);
    sub_1A460FD40(&qword_1EB13EF60, sub_1A460E258, &protocol conformance descriptor for LemonadeMaterialTitleCell<A, B>);
    sub_1A460FD40(&qword_1EB13EF68, type metadata accessor for LemonadeSharedLibrarySuggestionCell, &unk_1A5352330);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13EFC0);
  }

  return result;
}

void sub_1A460FC24(uint64_t a1)
{
  if (!qword_1EB13EFD8)
  {
    sub_1A3C4C344(255, &qword_1EB13EF78, sub_1A460F500, MEMORY[0x1E6981F40]);
    sub_1A460FCB8();
    v1 = sub_1A524B894();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13EFD8);
    }
  }
}

unint64_t sub_1A460FCB8()
{
  result = qword_1EB13EFE0;
  if (!qword_1EB13EFE0)
  {
    sub_1A3C4C344(255, &qword_1EB13EF78, sub_1A460F500, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13EFE0);
  }

  return result;
}

uint64_t sub_1A460FD40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A460FD88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LemonadeSharedLibrarySuggestionsShelfProvider.SharedLibrarySuggestionsPlaceholderView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1A460FDEC()
{
  type metadata accessor for LemonadeSharedLibrarySuggestionsShelfProvider.SharedLibrarySuggestionsPlaceholderView(0);
  sub_1A3C4C344(0, &qword_1EB124940, type metadata accessor for SharedLibraryFilterViewModel, MEMORY[0x1E697DA80]);
  v0 = sub_1A5247C84();
  v1 = (*(*v8 + 18))(v0);

  if (!v1)
  {
    sub_1A3CB6B10(0, &qword_1EB13EFB0, &qword_1EB1206D0, off_1E771F918, MEMORY[0x1E697DA80]);
    sub_1A5247C84();
    v3 = [objc_allocWithZone(PXSharedLibrarySuggestionsSettingsViewController) initWithSharedLibraryStatusProvider_];

    v4 = v3;
    v5 = [v4 navigationItem];
    v6 = sub_1A524C634();
    v7 = PXLocalizedSharedLibraryString(v6);

    if (!v7)
    {
      sub_1A524C674();
      v7 = sub_1A524C634();
    }

    [v5 setTitle_];

    [objc_allocWithZone(MEMORY[0x1E69DCCD8]) initWithRootViewController_];
    sub_1A4654ADC();
    PXPresentationEnvironmentForSender();
  }

  sub_1A5247C84();
  v2 = v8[3];

  [v2 setViewMode_];
}

uint64_t sub_1A4610158(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A460F7A4(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A46101C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1A460F7A4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1A4610220(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A4610280(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1A4610334()
{
  v1 = v0;
  sub_1A4610664(0);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = (&v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = [v0 assetCollectionReference];
  v7 = [v6 assetCollection];

  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (!v8)
  {
    swift_unknownObjectRelease();
    goto LABEL_7;
  }

  v9 = v8;
  v10 = [v1 presentationEnvironment];
  if (!v10)
  {
LABEL_7:
    result = sub_1A524E6E4();
    __break(1u);
    return result;
  }

  v11 = v10;
  sub_1A46106EC(0, &qword_1EB13F010, type metadata accessor for LemonadeCollectionCustomizationViewModel);
  sub_1A4610684(0);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v22 = sub_1A3EAAA08(v9, v11);
  HIBYTE(v21) = 1;
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = sub_1A4407D6C(&v22, &v21 + 7, sub_1A4610788, v12);
  sub_1A46107EC(0);
  v14 = v13;
  sub_1A478C8F8(v14, v5);
  v15 = PXSwiftUIHostingViewController.__allocating_init(rootView:)(v5);
  if (([v1 presentViewController_] & 1) == 0)
  {
    v16 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v17 = sub_1A524C634();
    v18 = [v16 initWithDomain:v17 code:1 userInfo:0];

    v19 = sub_1A5240B74();
    [v1 completeUserInteractionTaskWithSuccess:0 error:v19];
  }

  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

void sub_1A4610684(uint64_t a1)
{
  if (!qword_1EB13F000)
  {
    v2 = sub_1A3C52C70(255, &qword_1EB1265E0, 0x1E69788F0);
    v5 = type metadata accessor for LemonadeCollectionCustomizationMemoriesModel(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EB13F000);
    }
  }
}

void sub_1A46106EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A4610684(255);
    v7 = v6;
    v8 = sub_1A4611304(&qword_1EB13F008, sub_1A4610684, &unk_1A5304A9C);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1A4610788(char a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = a1 & 1;
    v4 = Strong;
    [Strong completeUserInteractionTaskWithSuccess:v3 error:0];
  }
}

void sub_1A46107EC(uint64_t a1)
{
  if (!qword_1EB13F018)
  {
    sub_1A4610664(255);
    v3 = v2;
    v4 = sub_1A4611304(&qword_1EB13F020, sub_1A4610664, &unk_1A535F870);
    v6 = type metadata accessor for PXSwiftUIHostingViewController(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EB13F018);
    }
  }
}

uint64_t sub_1A4610998@<X0>(void *a1@<X0>, uint64_t a3@<X8>)
{
  v5 = sub_1A5243834();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A43D0100(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v16[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a3 + 72) = 0;
  *(a3 + 56) = 0u;
  *(a3 + 40) = 0u;
  *(a3 + 24) = &_s12PhotosUICore26CustomMenuHeaderTitleModelVN_0;
  *(a3 + 32) = sub_1A46112B0();
  v12 = swift_allocObject();
  *a3 = v12;
  sub_1A3C341C8(a1, v12 + 16);
  v17 = 0u;
  v18 = 0u;
  v19 = 1;
  v13 = sub_1A52429A4();
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  (*(v6 + 104))(v8, *MEMORY[0x1E69C2678], v5);
  v16[3] = sub_1A5243EC4();
  v16[4] = sub_1A4611304(&qword_1EB128FE0, MEMORY[0x1E69C2928], MEMORY[0x1E69C2920]);
  __swift_allocate_boxed_opaque_existential_1(v16);
  sub_1A5243ED4();
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_1A3E79480(v16, a3 + 40);
}

id sub_1A4610DC4(__n128 a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PXPhotoKitMemoryCustomizeActionPerformer();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1A4610ED0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = v3[3];
  v6 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v5);
  return a3(v5, v6);
}

unint64_t sub_1A46111F4()
{
  result = qword_1EB1CAA50;
  if (!qword_1EB1CAA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1CAA50);
  }

  return result;
}

unint64_t sub_1A46112B0()
{
  result = qword_1EB1CAA58[0];
  if (!qword_1EB1CAA58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1CAA58);
  }

  return result;
}

uint64_t sub_1A4611304(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1A46113C4(void *a1)
{
  v1 = [a1 viewModel];
  v2 = [v1 isInSelectMode];

  return v2;
}

uint64_t type metadata accessor for GenerativeStoryDatePickerView(uint64_t a1)
{
  result = qword_1EB1CABE0;
  if (!qword_1EB1CABE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A461162C(double a1)
{
  sub_1A46118F0(0, a1);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A461239C(0, v5);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v18[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = v1;
  sub_1A4611954(0);
  sub_1A46122E8();
  sub_1A524A294();
  sub_1A524A074();
  v13 = sub_1A4615620(&qword_1EB13F0F8, sub_1A46118F0, MEMORY[0x1E697CCF0]);
  sub_1A524A984();
  (*(v4 + 8))(v7, v3);
  v14 = [objc_opt_self() currentDevice];
  [v14 userInterfaceIdiom];

  sub_1A46152FC(0, v15);
  v20 = v3;
  v21 = v13;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v20 = v9;
  v21 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_1A524A584();
  return (*(v10 + 8))(v12, v9);
}

void sub_1A46118F0(uint64_t a1, double a2)
{
  if (!qword_1EB13F028)
  {
    sub_1A4611954(255);
    sub_1A46122E8();
    v2 = sub_1A524A2A4();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB13F028);
    }
  }
}

void sub_1A4611954(uint64_t a1)
{
  if (!qword_1EB13F030)
  {
    sub_1A46119B8(255);
    v1 = sub_1A524BA74();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13F030);
    }
  }
}

void sub_1A46119EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A4611A50(uint64_t a1)
{
  if (!qword_1EB13F040)
  {
    sub_1A4612194(255, &qword_1EB130100, MEMORY[0x1E697D6A0]);
    sub_1A4611ADC(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB13F040);
    }
  }
}

void sub_1A4611B58(uint64_t a1)
{
  if (!qword_1EB13F058)
  {
    sub_1A4611BBC(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB13F058);
    }
  }
}

void sub_1A4611BE4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1A4611C3C(255, a3, a4);
    v5 = sub_1A524BE24();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A4611C3C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    sub_1A4611CB4(255);
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1A4611CB4(uint64_t a1)
{
  if (!qword_1EB13F070)
  {
    sub_1A4611D48(255);
    sub_1A4615620(&qword_1EB13F090, sub_1A4611D48, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B784();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13F070);
    }
  }
}

void sub_1A4611D7C(uint64_t a1)
{
  if (!qword_1EB13F080)
  {
    sub_1A4611DEC(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB13F080);
    }
  }
}

void sub_1A4611DEC(uint64_t a1)
{
  if (!qword_1EB13F088)
  {
    sub_1A3F1EA2C(255);
    sub_1A5249544();
    sub_1A3F1EC00();
    sub_1A4615620(&unk_1EB122DF0, MEMORY[0x1E697C540], MEMORY[0x1E697C538]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13F088);
    }
  }
}

void sub_1A4611EE8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1A461559C(255, a3, a4, sub_1A3F332F4, MEMORY[0x1E697E830]);
    v5 = sub_1A524DF24();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A4611F6C(uint64_t a1)
{
  if (!qword_1EB13F0A8)
  {
    sub_1A46120C0(255);
    sub_1A5249C24();
    v1 = MEMORY[0x1E697BDB8];
    sub_1A4612194(255, &qword_1EB12E8C8, MEMORY[0x1E697BDB8]);
    sub_1A46121F4(&qword_1EB12E8E0, &qword_1EB12E8C8, v1, MEMORY[0x1E697BDC8]);
    swift_getOpaqueTypeConformance2();
    sub_1A4615620(&qword_1EB12E8F0, MEMORY[0x1E697C900], MEMORY[0x1E697C8F0]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13F0A8);
    }
  }
}

void sub_1A46120C0(uint64_t a1)
{
  if (!qword_1EB13F0B0)
  {
    v1 = MEMORY[0x1E697BDB8];
    sub_1A4612194(255, &qword_1EB12E8C8, MEMORY[0x1E697BDB8]);
    sub_1A46121F4(&qword_1EB12E8E0, &qword_1EB12E8C8, v1, MEMORY[0x1E697BDC8]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13F0B0);
    }
  }
}

void sub_1A4612194(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E6981148], MEMORY[0x1E6981138]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1A46121F4(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, void, void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A4612194(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A4612288(uint64_t a1)
{
  if (!qword_1EB13F0D8)
  {
    type metadata accessor for GenerativeStoryOptionalYearDatePickerRepresentable(255);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13F0D8);
    }
  }
}

unint64_t sub_1A46122E8()
{
  result = qword_1EB13F0E0;
  if (!qword_1EB13F0E0)
  {
    sub_1A4611954(255);
    sub_1A4615620(&qword_1EB13F0E8, sub_1A46119B8, MEMORY[0x1E6981F48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13F0E0);
  }

  return result;
}

void sub_1A461239C(uint64_t a1, double a2)
{
  if (!qword_1EB13F0F0)
  {
    sub_1A46118F0(255, a2);
    sub_1A4615620(&qword_1EB13F0F8, sub_1A46118F0, MEMORY[0x1E697CCF0]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13F0F0);
    }
  }
}

uint64_t sub_1A4612450()
{
  sub_1A46119B8(0);
  sub_1A4615620(&qword_1EB13F0E8, sub_1A46119B8, MEMORY[0x1E6981F48]);
  return sub_1A524BA64();
}

uint64_t sub_1A46124F8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v63 = a2;
  sub_1A4612238(0);
  v62 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v52 = v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A461559C(0, &qword_1EB13F108, sub_1A4611B24, sub_1A4612238, MEMORY[0x1E697F948]);
  v56 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v60 = v49 - v6;
  sub_1A4611B24(0);
  v58 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v53 = v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4611BBC(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v49[2] = v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v49[1] = v49 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v51 = v49 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v50 = v49 - v16;
  sub_1A4611ADC(0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v61 = v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v59 = v49 - v20;
  sub_1A4612194(0, &qword_1EB130100, MEMORY[0x1E697D6A0]);
  v54 = v21;
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v57 = v49 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = v49 - v25;
  v27 = sub_1A524C634();
  v28 = PXMemoryCreationLocalizedString(v27);

  v29 = sub_1A524C674();
  v31 = v30;

  v68 = v29;
  v69 = v31;
  v32 = (a1 + *(type metadata accessor for GenerativeStoryDatePickerView(0) + 32));
  v33 = v32[1];
  LOBYTE(a1) = *(v32 + 16);
  v65 = *v32;
  v34 = v65;
  v66 = v33;
  v67 = a1;
  sub_1A4615544(0, &qword_1EB127320, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  v36 = v35;
  sub_1A524B924();
  sub_1A3D5F9DC();
  v55 = v26;
  sub_1A524B864();
  v65 = v34;
  v66 = v33;
  v67 = a1;
  MEMORY[0x1A5906C60](&v64, v36);
  if (v64 == 1)
  {
    sub_1A4612CBC(v50);
  }

  v37 = v52;
  sub_1A4613A74(v52);
  sub_1A4615840(v37, v60, sub_1A4612238);
  swift_storeEnumTagMultiPayload();
  v38 = MEMORY[0x1E6981F48];
  sub_1A4615620(&qword_1EB13F110, sub_1A4611B24, MEMORY[0x1E6981F48]);
  sub_1A4615620(&qword_1EB13F118, sub_1A4612238, v38);
  v39 = v59;
  sub_1A5249744();
  sub_1A46158A8(v37, sub_1A4612238);
  v40 = *(v22 + 16);
  v41 = v57;
  v43 = v54;
  v42 = v55;
  v40(v57, v55, v54);
  v44 = v61;
  sub_1A4615840(v39, v61, sub_1A4611ADC);
  v45 = v63;
  v40(v63, v41, v43);
  sub_1A4611A50(0);
  sub_1A4615840(v44, &v45[*(v46 + 48)], sub_1A4611ADC);
  sub_1A46158A8(v39, sub_1A4611ADC);
  v47 = *(v22 + 8);
  v47(v42, v43);
  sub_1A46158A8(v44, sub_1A4611ADC);
  return (v47)(v41, v43);
}

void sub_1A4612CBC(uint64_t a1@<X8>)
{
  v2 = v1;
  v50 = a1;
  sub_1A46115F8(0);
  v4 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v39[2] = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A461559C(0, &qword_1EB13F0A0, sub_1A4611F6C, sub_1A3F332F4, MEMORY[0x1E697E830]);
  v47 = *(v6 - 8);
  v48 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v39[1] = v39 - v7;
  sub_1A4611EC0(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v49 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v45 = v39 - v11;
  v12 = type metadata accessor for GenerativeStoryDatePickerView(0);
  v13 = v12 - 8;
  v44 = *(v12 - 8);
  v43 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1A5241144();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4611CB4(0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v46 = v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = v39 - v24;
  v42 = "tSheetDateRangeEndingDateTitle";
  v39[0] = *(v13 + 32);
  v39[3] = v4;
  MEMORY[0x1A5906C60](v4, v23);
  v26 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v27 = sub_1A524C634();
  [v26 setLocalizedDateFormatFromTemplate_];

  v28 = sub_1A5241074();
  v29 = [v26 stringFromDate_];

  v30 = sub_1A524C674();
  v40 = v31;
  v41 = v30;

  (*(v17 + 8))(v19, v16);
  v32 = v2;
  v33 = v2 + *(v13 + 52);
  v34 = *(v33 + 8);
  v54 = *v33;
  v55 = v34;
  sub_1A4615544(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6C4();
  v35 = v51;
  v36 = v52;
  LOBYTE(v2) = v53;
  v39[4] = v32;
  sub_1A4615E50(v32, v15, type metadata accessor for GenerativeStoryDatePickerView);
  v37 = (*(v44 + 80) + 16) & ~*(v44 + 80);
  v38 = swift_allocObject();
  sub_1A4615F18(v15, v38 + v37, type metadata accessor for GenerativeStoryDatePickerView);
  *v25 = sub_1A5249314();
  *(v25 + 1) = 0;
  v25[16] = 1;
  sub_1A46157D8(0);
  sub_1A4614C38(0xD000000000000040, v42 | 0x8000000000000000, v41, v40, sub_1A4615A04, v38, v35, v36, v2);
}

void sub_1A4613398(uint64_t a1@<X8>)
{
  v2 = v1;
  v50 = a1;
  sub_1A46115F8(0);
  v4 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v39[2] = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A461559C(0, &qword_1EB13F0A0, sub_1A4611F6C, sub_1A3F332F4, MEMORY[0x1E697E830]);
  v47 = *(v6 - 8);
  v48 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v39[1] = v39 - v7;
  sub_1A4611EC0(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v49 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v45 = v39 - v11;
  v12 = type metadata accessor for GenerativeStoryDatePickerView(0);
  v13 = v12 - 8;
  v44 = *(v12 - 8);
  v43 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1A5241144();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4611CB4(0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v46 = v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = v39 - v24;
  v42 = "tSheetDateRangeButtonTitle";
  v39[0] = *(v13 + 36);
  v39[3] = v4;
  MEMORY[0x1A5906C60](v4, v23);
  v26 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v27 = sub_1A524C634();
  [v26 setLocalizedDateFormatFromTemplate_];

  v28 = sub_1A5241074();
  v29 = [v26 stringFromDate_];

  v30 = sub_1A524C674();
  v40 = v31;
  v41 = v30;

  (*(v17 + 8))(v19, v16);
  v32 = v2;
  v33 = v2 + *(v13 + 56);
  v34 = *(v33 + 8);
  v54 = *v33;
  v55 = v34;
  sub_1A4615544(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6C4();
  v35 = v51;
  v36 = v52;
  LOBYTE(v2) = v53;
  v39[4] = v32;
  sub_1A4615E50(v32, v15, type metadata accessor for GenerativeStoryDatePickerView);
  v37 = (*(v44 + 80) + 16) & ~*(v44 + 80);
  v38 = swift_allocObject();
  sub_1A4615F18(v15, v38 + v37, type metadata accessor for GenerativeStoryDatePickerView);
  *v25 = sub_1A5249314();
  *(v25 + 1) = 0;
  v25[16] = 1;
  sub_1A46157D8(0);
  sub_1A4614C38(0xD00000000000003ELL, v42 | 0x8000000000000000, v41, v40, sub_1A4615668, v38, v35, v36, v2);
}

uint64_t sub_1A4613A74@<X0>(uint64_t a1@<X8>)
{
  sub_1A46115F8(0);
  v4 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v48[2] = v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for GenerativeStoryOptionalYearDatePickerRepresentable(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v48[7] = v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4612288(0);
  v48[6] = v8;
  MEMORY[0x1EEE9AC00](v8);
  v48[8] = v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A461559C(0, &qword_1EB13F0D0, sub_1A4612288, sub_1A3F332F4, MEMORY[0x1E697E830]);
  v57 = *(v10 - 8);
  v58 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v48[4] = v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v48[3] = v48 - v13;
  sub_1A4612260(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v59 = v48 - v18;
  v19 = type metadata accessor for GenerativeStoryDatePickerView(0);
  v54 = *(v19 - 8);
  v20 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v55 = v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_1A5241144();
  v21 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v23 = v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4611CB4(0);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v56 = v48 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v60 = (v48 - v28);
  v48[1] = *(v19 + 20);
  v48[5] = v4;
  v29 = MEMORY[0x1A5906C60](v4, v27);
  v30 = v1;
  result = (*(**v1 + 1184))(v29);
  if (result)
  {
    v50 = "tartingDateTitle";
    v32 = (*(*result + 888))(result);

    (*(*v32 + 192))(v23);

    v33 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
    v52 = a1;
    v51 = v16;
    v34 = sub_1A524C634();
    [v33 setLocalizedDateFormatFromTemplate_];

    v35 = sub_1A5241074();
    v36 = [v33 stringFromDate_];

    v49 = sub_1A524C674();
    v38 = v37;

    (*(v21 + 8))(v23, v53);
    v39 = v30 + *(v19 + 40);
    v40 = *(v39 + 8);
    v61 = *v39;
    v62 = v40;
    sub_1A4615544(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
    sub_1A524B6C4();
    v41 = v63;
    v42 = v30;
    LOBYTE(v32) = v64;
    v53 = v30;
    v43 = v55;
    sub_1A4615E50(v42, v55, type metadata accessor for GenerativeStoryDatePickerView);
    v44 = (*(v54 + 80) + 16) & ~*(v54 + 80);
    v45 = swift_allocObject();
    sub_1A4615F18(v43, v45 + v44, type metadata accessor for GenerativeStoryDatePickerView);
    v46 = sub_1A5249314();
    v47 = v60;
    *v60 = v46;
    v47[1] = 0;
    *(v47 + 16) = 1;
    sub_1A46157D8(0);
    sub_1A4614C38(0xD000000000000035, v50 | 0x8000000000000000, v49, v38, sub_1A4615D58, v45, v41, *(&v41 + 1), v32);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A4614454(uint64_t a1)
{
  sub_1A524A054();
  sub_1A461239C(0, v1);
  sub_1A46118F0(255, v2);
  sub_1A4615620(&qword_1EB13F0F8, sub_1A46118F0, MEMORY[0x1E697CCF0]);
  swift_getOpaqueTypeConformance2();
  return sub_1A524A984();
}

void sub_1A4614524(char *a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a1;
  v56 = a2;
  v2 = sub_1A5249C24();
  v66 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v65 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5249794();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v64 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4615908(0);
  v63 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v49 - v10;
  v12 = sub_1A5241144();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v49 - v17;
  sub_1A4615970(0);
  v58 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A46115F8(0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v49 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4612194(0, &qword_1EB12E8C8, MEMORY[0x1E697BDB8]);
  v59 = *(v25 - 8);
  v60 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v57 = &v49 - v26;
  sub_1A46120C0(0);
  v28 = v27;
  v62 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v61 = &v49 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1A5249434();
  v54 = v31;
  v55 = v30;
  v52 = v32;
  v53 = v33;
  v34 = v67;
  v67 = v24;
  sub_1A4615E50(v34, v24, sub_1A46115F8);
  sub_1A5241024();
  sub_1A5241104();
  sub_1A4615620(&unk_1EB134140, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  if (sub_1A524C544())
  {
    v51 = v2;
    v35 = *(v13 + 32);
    v35(v11, v18, v12);
    v50 = v28;
    v36 = v63;
    v35(&v11[*(v63 + 48)], v15, v12);
    sub_1A4615E50(v11, v8, sub_1A4615908);
    v37 = *(v36 + 48);
    v35(v21, v8, v12);
    v38 = *(v13 + 8);
    v38(&v8[v37], v12);
    sub_1A4615F18(v11, v8, sub_1A4615908);
    v35(&v21[*(v58 + 36)], &v8[*(v36 + 48)], v12);
    v38(v8, v12);
    sub_1A5249784();
    v39 = v57;
    sub_1A5247B74();
    v40 = sub_1A46121F4(&qword_1EB12E8E0, &qword_1EB12E8C8, MEMORY[0x1E697BDB8], MEMORY[0x1E697BDC8]);
    v41 = v60;
    v42 = v61;
    sub_1A524AA74();
    (*(v59 + 8))(v39, v41);
    v43 = v65;
    sub_1A5249C14();
    v68 = v41;
    v69 = v40;
    swift_getOpaqueTypeConformance2();
    sub_1A4615620(&qword_1EB12E8F0, MEMORY[0x1E697C900], MEMORY[0x1E697C8F0]);
    v44 = v56;
    v46 = v50;
    v45 = v51;
    sub_1A524AB64();
    (*(v66 + 8))(v43, v45);
    (*(v62 + 8))(v42, v46);
    sub_1A461559C(0, &qword_1EB13F0A0, sub_1A4611F6C, sub_1A3F332F4, MEMORY[0x1E697E830]);
    v48 = v44 + *(v47 + 36);
    *v48 = xmmword_1A5351130;
    *(v48 + 16) = xmmword_1A5351130;
    *(v48 + 32) = 0;
  }

  else
  {
    __break(1u);
  }
}

void sub_1A4614C38(uint64_t a1, void x1_0, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned __int8 a9)
{
  v37 = a7;
  v34 = a6;
  v30 = a4;
  v31 = a5;
  v29 = a2;
  v33 = a9;
  v10 = sub_1A5249544();
  v44 = *(v10 - 8);
  v45 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v43 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4612194(0, &qword_1EB127480, MEMORY[0x1E697D670]);
  v39 = *(v12 - 8);
  v40 = v12;
  MEMORY[0x1EEE9AC00](v12);
  sub_1A3F1EA2C(0);
  v41 = v13;
  MEMORY[0x1EEE9AC00](v13);
  sub_1A4611DEC(0);
  v32 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v42 = v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v17 = sub_1A524C634();
  v18 = PXMemoryCreationLocalizedString(v17);

  v19 = sub_1A524C674();
  v21 = v20;

  v46 = v19;
  v47 = v21;
  sub_1A3D5F9DC();
  v22 = sub_1A524A464();
  v35 = v23;
  v36 = v22;
  v28[3] = v24;
  v38 = v25;
  v46 = v29;
  v47 = a3;
  v26 = swift_allocObject();
  v27 = v31;
  *(v26 + 16) = v30;
  *(v26 + 24) = v27;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void *sub_1A4615190@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *a9 = a1;
  v17 = type metadata accessor for GenerativeStoryDatePickerView(0);
  sub_1A4615F18(a2, a9 + v17[5], sub_1A46115F8);
  sub_1A4615F18(a3, a9 + v17[6], sub_1A46115F8);
  sub_1A4615F18(a4, a9 + v17[7], sub_1A46115F8);
  v18 = a9 + v17[8];
  *v18 = a5;
  *(v18 + 1) = a6;
  v18[16] = a7;
  *(a9 + v17[9]) = a8;
  v19 = a9 + v17[10];
  sub_1A524B694();
  *v19 = v23;
  *(v19 + 1) = v24;
  v20 = a9 + v17[11];
  sub_1A524B694();
  *v20 = v23;
  *(v20 + 1) = v24;
  v21 = a9 + v17[12];
  result = sub_1A524B694();
  *v21 = v23;
  *(v21 + 1) = v24;
  return result;
}

void sub_1A46152FC(uint64_t a1, double a2)
{
  if (!qword_1EB13F100)
  {
    sub_1A461239C(255, a2);
    sub_1A46118F0(255, v2);
    sub_1A4615620(&qword_1EB13F0F8, sub_1A46118F0, MEMORY[0x1E697CCF0]);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v4)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13F100);
    }
  }
}

void sub_1A4615420(uint64_t a1)
{
  type metadata accessor for GenerativeStoryCreationViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_1A46115F8(319);
    if (v2 <= 0x3F)
    {
      sub_1A4615544(319, &qword_1EB127320, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for GenerativeStoryDisambiguationSelectedAssetsCountViewModel(319);
        if (v4 <= 0x3F)
        {
          sub_1A4615544(319, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1A4615544(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1A461559C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1A4615620(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1A4615668()
{
  type metadata accessor for GenerativeStoryDatePickerView(0);
  sub_1A4615544(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  if ((v1 & 1) == 0)
  {
    sub_1A524B6A4();
    if (v1 == 1)
    {
      sub_1A524B6B4();
    }
  }

  sub_1A524B6A4();
  sub_1A524B6B4();

  return result;
}

void sub_1A46157D8(uint64_t a1)
{
  if (!qword_1EB13F120)
  {
    sub_1A4611D48(255);
    v1 = sub_1A52483B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13F120);
    }
  }
}

uint64_t sub_1A4615840(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A46158A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A4615908(uint64_t a1)
{
  if (!qword_1EB13F128)
  {
    sub_1A5241144();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB13F128);
    }
  }
}

void sub_1A4615970(uint64_t a1)
{
  if (!qword_1EB13F130)
  {
    sub_1A5241144();
    sub_1A4615620(&unk_1EB134140, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
    v1 = sub_1A524C574();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13F130);
    }
  }
}

double sub_1A4615A04()
{
  type metadata accessor for GenerativeStoryDatePickerView(0);
  sub_1A4615544(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  if ((v1 & 1) == 0)
  {
    sub_1A524B6A4();
    if (v1 == 1)
    {
      sub_1A524B6B4();
    }
  }

  sub_1A524B6A4();
  sub_1A524B6B4();

  return result;
}

uint64_t objectdestroyTm_66()
{
  v1 = (type metadata accessor for GenerativeStoryDatePickerView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v2 + v1[7];

  sub_1A46115F8(0);
  v5 = v4;
  v6 = *(v4 + 32);
  v7 = sub_1A5241144();
  v8 = *(*(v7 - 8) + 8);
  v8(v3 + v6, v7);
  v9 = v2 + v1[8];

  v8(v9 + *(v5 + 32), v7);
  v10 = v2 + v1[9];

  v8(v10 + *(v5 + 32), v7);

  return swift_deallocObject();
}

double sub_1A4615D58()
{
  type metadata accessor for GenerativeStoryDatePickerView(0);
  sub_1A4615544(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);

  sub_1A524B6A4();
  sub_1A524B6B4();

  return result;
}

uint64_t sub_1A4615E50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A4615EB8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A4615F18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A4615F80(uint64_t a1, uint64_t a2)
{
  sub_1A461559C(0, &qword_1EB13F0D0, sub_1A4612288, sub_1A3F332F4, MEMORY[0x1E697E830]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id SectionsBlurController.__allocating_init(blurrableSectionsSource:)(uint64_t a1)
{
  v2 = objc_allocWithZone(v1);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  *&v2[OBJC_IVAR___PXSectionsBlurController_behavior] = 0;
  v5.receiver = v2;
  v5.super_class = v1;
  v3 = objc_msgSendSuper2(&v5, sel_init);
  swift_unknownObjectRelease();
  return v3;
}

id SectionsBlurController.init(blurrableSectionsSource:)(uint64_t a1)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  *&v1[OBJC_IVAR___PXSectionsBlurController_behavior] = 0;
  v4.receiver = v1;
  v4.super_class = type metadata accessor for SectionsBlurController();
  v2 = objc_msgSendSuper2(&v4, sel_init);
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_1A461621C()
{
  v1 = OBJC_IVAR___PXSectionsBlurController_behavior;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A46162B4(uint64_t a1)
{
  v3 = OBJC_IVAR___PXSectionsBlurController_behavior;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A4616304@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x68))();
  *a2 = result;
  return result;
}

unint64_t SectionsBlurController.Behavior.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

id SectionsBlurController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SectionsBlurController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SectionsBlurController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1A46165DC(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    PXEdgeInsetsInsetRect();
  }
}

unint64_t sub_1A46167E8()
{
  result = qword_1EB13F148;
  if (!qword_1EB13F148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13F148);
  }

  return result;
}

id sub_1A4616950(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v11 = *(v5 + 24);
  v12 = *(v5 + 32);
  v13 = *(v5 + 40);
  v30 = *(v5 + 48);
  v14 = *(v5 + 56);
  v15 = (*((*MEMORY[0x1E69E7D40] & **(v5 + 16)) + 0x68))();
  v16 = 0.0;
  if (v15 != 1)
  {
    if (v15)
    {
      result = sub_1A524EB44();
      __break(1u);
      return result;
    }

    v17 = [objc_opt_self() sharedInstance];
    [v17 blurFadeDistance];
    v29 = v18;

    v32.origin.x = a2;
    v32.origin.y = a3;
    rect = a4;
    v32.size.width = a4;
    v32.size.height = a5;
    MinY = CGRectGetMinY(v32);
    v33.origin.x = v11;
    v33.origin.y = v12;
    v33.size.width = v13;
    v33.size.height = v30;
    v20 = (MinY - (CGRectGetMaxY(v33) - v29)) / v29;
    v21 = v12;
    if (v20 > 1.0)
    {
      v20 = 1.0;
    }

    if (v20 < 0.0)
    {
      v16 = 0.0;
    }

    else
    {
      v16 = v20;
    }

    v22 = v11;
    v23 = v13;
    v24 = v30;
    v25 = v29 + CGRectGetMinY(*(&v21 - 1));
    v34.origin.x = a2;
    v34.origin.y = a3;
    v34.size.width = rect;
    v34.size.height = a5;
    v26 = (v25 - CGRectGetMaxY(v34)) / v29;
    if (v26 > 1.0)
    {
      v26 = 1.0;
    }

    if (v16 <= v26)
    {
      v16 = v26;
    }
  }

  return [v14 setBlurIntensity:a1 forSectionAt:v16];
}

void sub_1A4616B84(double a1)
{
  v2 = v1;
  sub_1A4616CE8(0, a1);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = (&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A4616DAC(0, &qword_1EB13F168, type metadata accessor for LemonadeCollectionCustomizationViewModel);
  sub_1A4616D08(0);
  v11 = LemonadeCollectionCustomizationFoldersModel.__allocating_init(collection:)([v1 collectionList]);
  HIBYTE(v10) = 1;
  v6 = sub_1A4407D6C(&v11, &v10 + 7, 0, 0);
  sub_1A4616E48(0, v7);
  v8 = v6;
  sub_1A478C8F8(v8, v5);
  v9 = PXSwiftUIHostingViewController.__allocating_init(rootView:)(v5);
  [v9 setModalPresentationStyle_];
  [v2 completeUserInteractionTaskWithSuccess:objc_msgSend(v2 error:{sel_presentViewController_, v9), 0}];
}

void sub_1A4616D08(uint64_t a1)
{
  if (!qword_1EB13F158)
  {
    v2 = sub_1A4616D60();
    v5 = type metadata accessor for LemonadeCollectionCustomizationFoldersModel(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EB13F158);
    }
  }
}

unint64_t sub_1A4616D60()
{
  result = qword_1EB120A70;
  if (!qword_1EB120A70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB120A70);
  }

  return result;
}

void sub_1A4616DAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A4616D08(255);
    v7 = v6;
    v8 = sub_1A4617164(&qword_1EB13F160, sub_1A4616D08, &protocol conformance descriptor for LemonadeCollectionCustomizationFoldersModel<A>);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1A4616E48(uint64_t a1, double a2)
{
  if (!qword_1EB13F170)
  {
    sub_1A4616CE8(255, a2);
    v4 = v3;
    v5 = sub_1A4617164(&qword_1EB13F178, sub_1A4616CE8, &unk_1A535F870);
    v7 = type metadata accessor for PXSwiftUIHostingViewController(a1, v4, v5, v6);
    if (!v8)
    {
      atomic_store(v7, &qword_1EB13F170);
    }
  }
}

id sub_1A4617130()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PXPhotoKitCollectionListCustomizeActionPerformer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A4617164(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static PXLemonadeWallpaperFeature.isFeatureAvailable.getter()
{
  v0 = sub_1A3C5C9EC();
  v1 = *((*MEMORY[0x1E69E7D40] & **v0) + 0xA0);
  v2 = *v0;
  LOBYTE(v1) = v1();

  return v1 & 1;
}

PXLemonadeWallpaperFeature __swiftcall PXLemonadeWallpaperFeature.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_1A461733C@<X0>(uint64_t a1@<X8>)
{
  sub_1A3C4C3A8(0, &qword_1EB1292E0, MEMORY[0x1E69C1CC0]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v21 - v3;
  v5 = type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (shouldUseNewCollectionsLayout()())
  {

    return sub_1A42E8184(3, 1, a1);
  }

  else
  {
    v9 = sub_1A3C47918();
    v11 = v10;
    v12 = sub_1A3C47918();
    v14 = v13;
    v15 = sub_1A3C52D68();
    v17 = v16;
    v21 = a1;
    v19 = v18;
    v20 = sub_1A3C4ED50(v15);
    v22 = 1;
    *v7 = sub_1A461750C;
    *(v7 + 1) = 0;
    v7[16] = 2;
    *(v7 + 3) = 0;
    v7[32] = 1;
    *(v7 + 5) = v9;
    *(v7 + 6) = v11;
    *(v7 + 7) = v12;
    *(v7 + 8) = v14;
    *(v7 + 9) = v15;
    *(v7 + 10) = v17;
    v7[88] = v19;
    v7[89] = v20;
    swift_storeEnumTagMultiPayload();
    sub_1A3C4ED54(v4);
    return sub_1A3C52D78(v7, 0, v4, v21);
  }
}

uint64_t sub_1A461750C(uint64_t a1)
{
  v2 = sub_1A5242D14();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  if ((*(v3 + 88))(v6, v2) == *MEMORY[0x1E69C21F8])
  {
    return 7;
  }

  (*(v3 + 8))(v6, v2);
  return 3;
}

void sub_1A4617628(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9[5] = a2;
  v3 = sub_1A5242D14();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[4] = *(*(a1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext) + 16);
  sub_1A3C38BD4(0xD00000000000001BLL);
  v7 = sub_1A3C38BD4(0xD00000000000001DLL);
  v9[2] = v8;
  v9[3] = v7;
  v9[1] = sub_1A3C38BD4(0xD000000000000028);
  sub_1A3C38BD4(0xD000000000000020);
  sub_1A52435C4();
  sub_1A4617848();
  (*(v4 + 8))(v6, v3);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4617848()
{
  v1 = v0;
  v2 = sub_1A5242D14();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x1E69C2200])
  {
    return 0x656E6F687069;
  }

  if (v7 == *MEMORY[0x1E69C21F8])
  {
    return 0x6E616C2E64617069;
  }

  if (v7 == *MEMORY[0x1E69C21F0])
  {
    return 0;
  }

  if (v7 == *MEMORY[0x1E69C21E8])
  {
    return 30324;
  }

  if (v7 == *MEMORY[0x1E69C2208])
  {
    return 0x746177656C707061;
  }

  if (v7 != *MEMORY[0x1E69C2210])
  {
    if (v7 != *MEMORY[0x1E69C21E0])
    {
      (*(v3 + 8))(v6, v2);
    }

    return 0;
  }

  return 0x702E6E6F69736976;
}

uint64_t sub_1A4617A50()
{
  v1 = sub_1A5241144();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A4617B0C, 0, 0);
}

uint64_t sub_1A4617B0C()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = [objc_opt_self() standardUserDefaults];
  sub_1A5241104();
  v5 = sub_1A5241074();
  (*(v2 + 8))(v1, v3);
  [v4 setValue:v5 forKey:*MEMORY[0x1E69C1730]];

  v6 = v0[1];

  return v6();
}

void sub_1A4617C54(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  if ([a1 px_isWallpaperSuggestionsVirtualCollection])
  {
    v9 = sub_1A42E6C64(a3, a4);
    *a5 = a2;
    a5[1] = v9;
    a5[2] = v10;
    v11 = type metadata accessor for LemonadeNavigationDestination(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v11 - 8) + 56))(a5, 0, 1, v11);
  }

  else
  {
    v12 = type metadata accessor for LemonadeNavigationDestination(0);
    v13 = *(*(v12 - 8) + 56);

    v13(a5, 1, 1, v12);
  }
}

double sub_1A4617D90@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v6 = sub_1A42E6C64(a2, a3);
  *a4 = a1;
  a4[1] = v6;
  a4[2] = v7;
  v8 = type metadata accessor for LemonadeNavigationDestination(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v8 - 8) + 56))(a4, 0, 1, v8);

  return result;
}

double sub_1A4617E48(char a1)
{
  sub_1A3C4C3A8(0, &qword_1EB12B270, MEMORY[0x1E69E85F0]);
  result = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v8 - v4;
  if (a1)
  {
    v6 = sub_1A524CCB4();
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
    v7 = swift_allocObject();
    *(v7 + 16) = 0;
    *(v7 + 24) = 0;
    sub_1A3D4D930(0, 0, v5, &unk_1A5351520, v7);
  }

  return result;
}

unint64_t sub_1A4617F70(uint64_t a1)
{
  v2 = sub_1A3C52190();

  return sub_1A42E6E80(a1, v2);
}

id sub_1A4617FAC(uint64_t a1)
{
  v1 = [*(a1 + 16) px_virtualCollections];
  v2 = [v1 wallpaperSuggestionsCollection];

  return v2;
}

uint64_t sub_1A4618004@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  *a2 = v7;
  v24 = *(type metadata accessor for LemonadeWallpaperFeature.FeedProvider(0) + 20);
  v8 = v7;
  v9 = sub_1A3C47918();
  v11 = v10;
  v12 = sub_1A3C47918();
  v14 = v13;
  v15 = sub_1A3C52D68();
  v17 = v16;
  v19 = v18;
  v20 = sub_1A3C4ED50(v15);
  v25 = 1;
  *v6 = sub_1A46183B4;
  *(v6 + 1) = 0;
  v6[16] = 2;
  *(v6 + 3) = 0;
  v6[32] = 1;
  *(v6 + 5) = v9;
  *(v6 + 6) = v11;
  *(v6 + 7) = v12;
  *(v6 + 8) = v14;
  *(v6 + 9) = v15;
  *(v6 + 10) = v17;
  v6[88] = v19;
  v6[89] = v20;
  swift_storeEnumTagMultiPayload();
  v21 = sub_1A3DC1AF8();
  return sub_1A437C3B8(v6, 0, v21, v22 & 1, a2 + v24);
}

uint64_t type metadata accessor for LemonadeWallpaperFeature.FeedProvider(uint64_t a1)
{
  result = qword_1EB183E68;
  if (!qword_1EB183E68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A46181A0()
{
  sub_1A524EC94();
  type metadata accessor for LemonadePhotoLibraryContext(0, v0);
  sub_1A46184FC(&qword_1EB12B6F8, type metadata accessor for LemonadePhotoLibraryContext, &protocol conformance descriptor for LemonadePhotoLibraryContext);
  sub_1A524C4B4();
  sub_1A524C794();
  return sub_1A524ECE4();
}

void sub_1A4618250(uint64_t a1, uint64_t a2)
{
  type metadata accessor for LemonadePhotoLibraryContext(0, a2);
  sub_1A46184FC(&qword_1EB12B6F8, type metadata accessor for LemonadePhotoLibraryContext, &protocol conformance descriptor for LemonadePhotoLibraryContext);
  sub_1A524C4B4();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4618308(uint64_t a1)
{
  sub_1A524EC94();
  type metadata accessor for LemonadePhotoLibraryContext(0, v1);
  sub_1A46184FC(&qword_1EB12B6F8, type metadata accessor for LemonadePhotoLibraryContext, &protocol conformance descriptor for LemonadePhotoLibraryContext);
  sub_1A524C4B4();
  sub_1A524C794();
  return sub_1A524ECE4();
}

uint64_t sub_1A46183B4(uint64_t a1)
{
  v2 = sub_1A5242D14();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  if ((*(v3 + 88))(v6, v2) == *MEMORY[0x1E69C2200])
  {
    return 3;
  }

  (*(v3 + 8))(v6, v2);
  return 16;
}

uint64_t sub_1A46184FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1A4618564()
{
  result = qword_1EB13F180;
  if (!qword_1EB13F180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13F180);
  }

  return result;
}

void sub_1A46186B0(uint64_t a1)
{
  if (!qword_1EB128EB0)
  {
    sub_1A3FD505C();
    sub_1A52458C4();
  }
}

uint64_t sub_1A4618728(uint64_t a1)
{
  result = sub_1A46184FC(&qword_1EB129EA8, type metadata accessor for LemonadeWallpaperFeature.FeedProvider, &unk_1A53513D4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A4618914@<X0>(void *a1@<X8>)
{

  return sub_1A41F8248(v2, a1);
}

uint64_t sub_1A4618950@<X0>(void *a2@<X8>)
{
  v3 = swift_unknownObjectRetain();
  sub_1A3D96070(v3, &v5);
  *a2 = v5;
  type metadata accessor for LemonadeNavigationDestination(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1A46189D0()
{
  sub_1A46184FC(&qword_1EB129EA0, type metadata accessor for LemonadeWallpaperFeature.FeedProvider, &unk_1A53513B8);

  return sub_1A3C47918();
}

id sub_1A4618A3C()
{
  v1 = [*(v0 + 16) px_virtualCollections];
  v2 = [v1 wallpaperSuggestionsCollection];

  return v2;
}

uint64_t sub_1A4618AF0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A3D60150;

  return sub_1A4617A50();
}

uint64_t static StoryKeyAssetLayoutUtilities.frameForKeyAsset(_:viewportSize:timeout:)(uint64_t a1, double a2, double a3, double a4)
{
  *(v4 + 104) = a3;
  *(v4 + 112) = a4;
  *(v4 + 96) = a2;
  *(v4 + 88) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A4618BC4, 0, 0);
}

uint64_t sub_1A4619008()
{

  return MEMORY[0x1EEE6DFA0](sub_1A4619120, 0, 0);
}

void sub_1A461913C(uint64_t a1, uint64_t a2, double a3, double a4, double a5)
{
  v26 = a2;
  v9 = sub_1A524BEE4();
  v29 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A524BF64();
  v27 = *(v12 - 8);
  v28 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4619F58(0);
  v16 = v15;
  v17 = *(v15 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  if (qword_1EB164F70 != -1)
  {
    swift_once();
  }

  v19 = qword_1EB164F78;
  (*(v17 + 16))(&v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v16);
  v20 = (*(v17 + 80) + 48) & ~*(v17 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v26;
  *(v21 + 24) = a3;
  *(v21 + 32) = a4;
  *(v21 + 40) = a5;
  (*(v17 + 32))(v21 + v20, &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v16);
  aBlock[4] = sub_1A4619FC0;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_225;
  v22 = _Block_copy(aBlock);
  v23 = v19;
  swift_unknownObjectRetain();
  sub_1A524BF14();
  v30 = MEMORY[0x1E69E7CC0];
  v24 = MEMORY[0x1E69E7F60];
  sub_1A3C29D2C(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1A3C29F88(0, &qword_1EB12B1C0, v24);
  sub_1A3C2A728(&qword_1EB12B1B0, &qword_1EB12B1C0, v24);
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v14, v11, v22);
  _Block_release(v22);

  (*(v29 + 8))(v11, v9);
  (*(v27 + 8))(v14, v28);
}

void sub_1A4619524(uint64_t a1, uint64_t a2, double a3, double a4, double a5)
{
  v17 = a2;
  sub_1A4619F58(0);
  v18 = *(v6 - 8);
  v19 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v15 = v7;
  v16 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1A3C52C70(0, &qword_1EB1207C8, off_1E7720368);
  v8 = qword_1EB164F70;
  swift_unknownObjectRetain();
  if (v8 != -1)
  {
    swift_once();
  }

  v9 = qword_1EB164F78;
  sub_1A3C48BDC(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v10 = swift_allocObject();
  v13 = xmmword_1A52F9790;
  *(v10 + 16) = xmmword_1A52F9790;
  *(v10 + 32) = a1;
  sub_1A3D435C4();
  swift_unknownObjectRetain();
  v11 = v9;
  sub_1A524CA14();

  PXDisplayAssetFetchResultFromArray();
}

uint64_t sub_1A4619C00()
{
  v8 = sub_1A524D464();
  v0 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v2 = v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A524D414();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1A524BF64();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7[1] = sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
  sub_1A524BF14();
  v9 = MEMORY[0x1E69E7CC0];
  v5 = MEMORY[0x1E69E8030];
  sub_1A3C29D2C(&qword_1EB126AD0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  sub_1A3C29F88(0, &qword_1EB126E40, v5);
  sub_1A3C2A728(&qword_1EB126E30, &qword_1EB126E40, v5);
  sub_1A524E224();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v8);
  result = sub_1A524D4B4();
  qword_1EB164F78 = result;
  return result;
}

void sub_1A4619E60(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_1A4619ED4()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB15B5A8);
  __swift_project_value_buffer(v0, qword_1EB15B5A8);
  sub_1A5246EF4();
}

void sub_1A4619F58(uint64_t a1)
{
  if (!qword_1EB120BA8)
  {
    type metadata accessor for CGRect(255);
    v1 = sub_1A524CBF4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB120BA8);
    }
  }
}

void sub_1A4619FC0()
{
  sub_1A4619F58(0);
  v2 = *(v1 - 8);
  v3 = *(v0 + 2);
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0 + ((*(v2 + 80) + 48) & ~*(v2 + 80));

  sub_1A4619524(v3, v7, v4, v5, v6);
}

void sub_1A461A02C(uint64_t a1)
{
  sub_1A4619F58(0);
  v26 = *(v1 + ((*(*(v3 - 8) + 64) + ((*(*(v3 - 8) + 80) + 24) & ~*(*(v3 - 8) + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  if (!a1)
  {
    sub_1A461A53C();
    v8 = swift_allocError();
    *v10 = 2;
    swift_willThrow();
    goto LABEL_5;
  }

  v4 = *(v1 + 16);
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  memset(v35, 0, 32);
  v35[32] = 1;
  v28 = 0u;
  v29 = 0u;
  v30 = 1;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 1;
  v27[2] = ObjectType;
  v27[3] = a1;
  v27[4] = v4;
  v27[5] = &v28;
  PXStoryTimeline.enumerateClips(in:rect:using:)(&v31, v35, sub_1A461A590, v27);
  v6 = v28;
  v7 = v29;
  v35[0] = v30;
  if (v30)
  {
    sub_1A461A53C();
    v8 = swift_allocError();
    *v9 = 1;
    swift_willThrow();
    swift_unknownObjectRelease();
LABEL_5:
    if (qword_1EB15B5A0 != -1)
    {
      swift_once();
    }

    v11 = sub_1A5246F24();
    __swift_project_value_buffer(v11, qword_1EB15B5A8);
    v12 = v8;
    v13 = sub_1A5246F04();
    v14 = sub_1A524D244();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      v17 = v8;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 4) = v18;
      *v16 = v18;
      _os_log_impl(&dword_1A3C1C000, v13, v14, "failed to compute frame for key asset: %@", v15, 0xCu);
      sub_1A3CB65E4(v16);
      MEMORY[0x1A590EEC0](v16, -1, -1);
      MEMORY[0x1A590EEC0](v15, -1, -1);
    }

    v31 = 0uLL;
    v32 = v26;
    sub_1A524CBE4();

    return;
  }

  v19 = *(&v29 + 1);
  if (qword_1EB15B5A0 != -1)
  {
    swift_once();
  }

  v20 = sub_1A5246F24();
  __swift_project_value_buffer(v20, qword_1EB15B5A8);
  v21 = sub_1A5246F04();
  v22 = sub_1A524D264();
  if (os_log_type_enabled(v21, v22))
  {
    buf = swift_slowAlloc();
    v27[0] = swift_slowAlloc();
    *buf = 136315138;
    v31 = v6;
    *&v32 = v7;
    *(&v32 + 1) = v19;
    type metadata accessor for CGRect(0);
    v23 = sub_1A524C714();
    sub_1A3C2EF94(v23, v24, v27);
  }

  v31 = v6;
  *&v32 = v7;
  *(&v32 + 1) = v19;
  sub_1A524CBE4();
  swift_unknownObjectRelease();
}

id sub_1A461A4A8(uint64_t a1, _BYTE *a2)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  result = [v4 isTimelineFinal];
  if (result)
  {
    *a2 = 1;
    v7 = [v4 timeline];
    v5();

    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t sub_1A461A53C()
{
  result = qword_1EB1CAD10;
  if (!qword_1EB1CAD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1CAD10);
  }

  return result;
}

void sub_1A461A590(double a1, double a2, double a3, double a4, uint64_t a5, void *a6, _BYTE *a7)
{
  if (a6[1] == 1)
  {
    v13 = *(v7 + 32);
    v14 = *(v7 + 40);
    v15 = [*(v7 + 24) clipWithIdentifier_];
    if (v15)
    {
      v16 = [v15 resource];
      swift_unknownObjectRelease();
      v17 = swift_dynamicCastObjCProtocolConditional();
      if (v17)
      {
        v18 = [objc_msgSend(v17 px_storyResourceDisplayAsset];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (v18)
        {
          *v14 = a1;
          *(v14 + 8) = a2;
          *(v14 + 16) = a3;
          *(v14 + 24) = a4;
          *(v14 + 32) = 0;
          *a7 = 1;
        }

        return;
      }

      swift_unknownObjectRelease();
    }

    sub_1A461A53C();
    v19 = swift_allocError();
    *v20 = 0;
    swift_willThrow();
    v21 = v19;
    if (qword_1EB15B5A0 != -1)
    {
      swift_once();
    }

    v22 = sub_1A5246F24();
    __swift_project_value_buffer(v22, qword_1EB15B5A8);
    v23 = v19;
    v24 = sub_1A5246F04();
    v25 = sub_1A524D244();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      v28 = v19;
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 4) = v29;
      *v27 = v29;
      _os_log_impl(&dword_1A3C1C000, v24, v25, "unexpected error occurred: %@", v26, 0xCu);
      sub_1A3CB65E4(v27);
      MEMORY[0x1A590EEC0](v27, -1, -1);
      MEMORY[0x1A590EEC0](v26, -1, -1);
    }

    else
    {
    }
  }
}

unint64_t sub_1A461A844()
{
  result = qword_1EB1CAD18[0];
  if (!qword_1EB1CAD18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1CAD18);
  }

  return result;
}

double sub_1A461A8B0(void *a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  *(v3 + 24) = v1;
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x58);
  v5 = a1;
  v6 = v1;
  v4(&unk_1A5351628, v3);

  return result;
}

uint64_t sub_1A461A968(uint64_t a1, uint64_t a2)
{
  v2[10] = a1;
  v2[11] = a2;
  type metadata accessor for PhotosUnifiedScrollTestDefinition(0);
  v2[12] = swift_task_alloc();
  sub_1A524CC54();
  v2[13] = sub_1A524CC44();
  v4 = sub_1A524CBC4();
  v2[14] = v4;
  v2[15] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1A461AA2C, v4, v3);
}

uint64_t sub_1A461AA2C()
{
  *(v0 + 48) = 0xD000000000000018;
  v1 = *(v0 + 80);
  *(v0 + 56) = 0x80000001A53E0950;
  v2 = [v1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v2)
  {
    sub_1A524E0B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  *(v0 + 16) = v6;
  *(v0 + 32) = v7;
  if (*(v0 + 40))
  {
    if (swift_dynamicCast())
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  else
  {

    sub_1A461B2A8(v0 + 16, sub_1A3C35B84);
  }

  sub_1A461B254();
  swift_allocError();
  *v3 = 0;
  v3[1] = 0;
  swift_willThrow();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1A461ACAC()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  v3 = *(v2 + 120);
  v4 = *(v2 + 112);
  if (v0)
  {
    v5 = sub_1A461AE70;
  }

  else
  {
    v5 = sub_1A461ADE8;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1A461ADE8()
{
  v1 = *(v0 + 96);

  sub_1A461B2A8(v1, type metadata accessor for PhotosUnifiedScrollTestDefinition);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A461AE70()
{
  v1 = *(v0 + 96);

  sub_1A461B2A8(v1, type metadata accessor for PhotosUnifiedScrollTestDefinition);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A461AEF8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A3CA8098;

  return sub_1A461A968(v2, v3);
}

id sub_1A461B07C(uint64_t a1)
{
  v3 = type metadata accessor for PhotosPPTTestRunner(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_allocWithZone(v1);
  sub_1A3DE0CA0(a1, v5);
  v7 = sub_1A3FA4E54(v5);
  sub_1A461B2A8(a1, type metadata accessor for PhotosPPTTestRunner);
  return v7;
}

id sub_1A461B130()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PerformanceBaselinePPTTests(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for PerformanceBaselinePPTTests(uint64_t a1)
{
  result = qword_1EB165E40;
  if (!qword_1EB165E40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A461B1BC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A3D60150;

  return sub_1A461A968(v2, v3);
}

unint64_t sub_1A461B254()
{
  result = qword_1EB165ED0;
  if (!qword_1EB165ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB165ED0);
  }

  return result;
}

uint64_t sub_1A461B2A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A461B308(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1A461B358(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1A461B3AC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

id sub_1A461B3D4()
{
  swift_getKeyPath();
  (*(*v0 + 440))();

  swift_beginAccess();
  v1 = v0[2];

  return v1;
}

uint64_t sub_1A461B464@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 160))();
  *a2 = result;
  return result;
}

void sub_1A461B504(void *a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = v1[2];
  sub_1A3C52C70(0, &qword_1EB13F2B0, 0x1E6978718);
  v5 = v4;
  v6 = sub_1A524DBF4();

  if (v6)
  {
    v7 = v2[2];
    v2[2] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v9.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    v10 = v2;
    v11 = a1;
    (*(*v2 + 448))(v9);
  }
}

uint64_t (*sub_1A461B648(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 440))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore27TimelineVFXEngineDataSource___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4622904(&qword_1EB1255D0, type metadata accessor for TimelineVFXEngineDataSource, &unk_1A53517B0);
  sub_1A52415F4();

  v4[7] = sub_1A3E0A030(v4);
  return sub_1A461B798;
}

uint64_t type metadata accessor for TimelineVFXEngineDataSource(uint64_t a1)
{
  result = qword_1EB165B30;
  if (!qword_1EB165B30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A461B7F0()
{
  swift_getKeyPath();
  (*(*v0 + 440))();

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A461B874@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 208))();
  *a2 = result;
  return result;
}

double sub_1A461B914(uint64_t a1)
{
  swift_beginAccess();
  if (v1[3])
  {
    if (a1)
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    goto LABEL_5;
  }

  if (a1)
  {
LABEL_5:
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 448))(v4);

    return result;
  }

  v1[3] = 0;

  return result;
}

uint64_t (*sub_1A461BA50(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 440))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore27TimelineVFXEngineDataSource___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4622904(&qword_1EB1255D0, type metadata accessor for TimelineVFXEngineDataSource, &unk_1A53517B0);
  sub_1A52415F4();

  v4[7] = sub_1A3DE36A4(v4);
  return sub_1A461BBA0;
}

void sub_1A461BBAC()
{
  swift_getKeyPath();
  (*(*v0 + 440))();

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A461BC30@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 256))();
  *a2 = result;
  return result;
}

double sub_1A461BCE0(uint64_t a1)
{
  swift_beginAccess();
  if (v1[4])
  {
    if (a1)
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    goto LABEL_5;
  }

  if (a1)
  {
LABEL_5:
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 448))(v4);

    return result;
  }

  v1[4] = 0;

  return result;
}

uint64_t (*sub_1A461BE1C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 440))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore27TimelineVFXEngineDataSource___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4622904(&qword_1EB1255D0, type metadata accessor for TimelineVFXEngineDataSource, &unk_1A53517B0);
  sub_1A52415F4();

  v4[7] = sub_1A4504FF8(v4);
  return sub_1A461BF6C;
}

void sub_1A461BF78()
{
  swift_getKeyPath();
  (*(*v0 + 440))();

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A461BFFC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 304))();
  *a2 = result;
  return result;
}

uint64_t (*sub_1A461C1D4(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 440))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore27TimelineVFXEngineDataSource___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4622904(&qword_1EB1255D0, type metadata accessor for TimelineVFXEngineDataSource, &unk_1A53517B0);
  sub_1A52415F4();

  v4[7] = sub_1A3DE3B2C(v4);
  return sub_1A461C324;
}

void sub_1A461C380()
{
  swift_getKeyPath();
  (*(*v0 + 440))();

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A461C404@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 352))();
  *a2 = result;
  return result;
}

uint64_t (*sub_1A461C5DC(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 440))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore27TimelineVFXEngineDataSource___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4622904(&qword_1EB1255D0, type metadata accessor for TimelineVFXEngineDataSource, &unk_1A53517B0);
  sub_1A52415F4();

  v4[7] = sub_1A461C330(v4);
  return sub_1A461C72C;
}

uint64_t sub_1A461C738()
{
  v0 = swift_allocObject();
  sub_1A461C770(v1);
  return v0;
}

void *sub_1A461C770(__n128 a1)
{
  v1[3] = 0;
  v1[4] = 0;
  v2 = MEMORY[0x1E69E7CC0];
  v1[5] = MEMORY[0x1E69E7CC0];
  if (v2 >> 62 && sub_1A524E2B4())
  {
    sub_1A4621DD0(MEMORY[0x1E69E7CC0], v6);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CD0];
  }

  v1[6] = v3;
  if (qword_1EB1579A8 != -1)
  {
    swift_once();
  }

  v4 = qword_1EB1579B0;
  sub_1A5246E74();
  sub_1A5241604();
  v1[2] = [objc_allocWithZone(MEMORY[0x1E6978718]) init];
  return v1;
}

uint64_t sub_1A461C84C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1A5246E54();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A461C918, 0, 0);
}

uint64_t sub_1A461C918(__n128 a1)
{
  v2 = v1[2];
  if (v2 >> 62)
  {
    if (sub_1A524E2B4())
    {
LABEL_3:
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  else if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  sub_1A5246E84();
  sub_1A5246E24();

  v3 = sub_1A5246E84();
  v4 = sub_1A524D664();
  v5 = sub_1A524DEC4();
  v6 = v1[3];
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    v8 = (*(*v6 + 256))();
    if (v8)
    {
      if (v8 >> 62)
      {
        v9 = sub_1A524E2B4();
      }

      else
      {
        v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }

    else
    {
      v9 = 0;
    }

    *(v7 + 4) = v9;

    v10 = sub_1A5246E34();
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v3, v4, v10, "Cancelled prewarm(placeholderAssets) – Empty Assets", "Existing Placeholder Asset Count %ld", v7, 0xCu);
    MEMORY[0x1A590EEC0](v7, -1, -1);
  }

  else
  {
  }

  (*(v1[5] + 8))(v1[6], v1[4]);

  v11 = v1[1];
  v12 = MEMORY[0x1E69E7CC0];

  return v11(v12);
}

uint64_t sub_1A461CDD0(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 72) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1A461CF28, 0, 0);
  }
}

uint64_t sub_1A461CF28()
{
  v1 = *(v0 + 72);
  v2 = *(v1 + 16);
  if (v2)
  {
    v9 = MEMORY[0x1E69E7CC0];
    sub_1A524E554();
    v3 = (v1 + 32);
    do
    {
      v4 = *v3++;
      v5 = v4;
      sub_1A524E514();
      sub_1A524E564();
      sub_1A524E574();
      sub_1A524E524();
      --v2;
    }

    while (v2);

    v6 = v9;
  }

  else
  {

    v6 = MEMORY[0x1E69E7CC0];
  }

  v7 = *(v0 + 8);

  return v7(v6);
}

uint64_t sub_1A461D038(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1A5246E54();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11.n128_f64[0] = MEMORY[0x1EEE9AC00](v10);
  v13 = v59 - v12;
  if (!(a1 >> 62))
  {
    v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
      goto LABEL_3;
    }

LABEL_73:
    sub_1A5246E84();
    sub_1A5246E24();

    v18 = sub_1A5246E84();
    LOBYTE(v28) = sub_1A524D664();
    if ((sub_1A524DEC4() & 1) == 0)
    {

      return (*(v7 + 8))(v9, v6);
    }

    v23 = swift_slowAlloc();
    *v23 = 134217984;
    v56 = (*(*v3 + 256))();
    if (!v56)
    {
      v57 = 0;
      goto LABEL_80;
    }

    if (!(v56 >> 62))
    {
      v57 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_77:

LABEL_80:
      *(v23 + 4) = v57;

      v58 = sub_1A5246E34();
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v18, v28, v58, "Cancelled update(assets) – Empty Assets", "Existing Asset Count %ld", v23, 0xCu);
      MEMORY[0x1A590EEC0](v23, -1, -1);

      return (*(v7 + 8))(v9, v6);
    }

LABEL_104:
    v57 = sub_1A524E2B4();
    goto LABEL_77;
  }

  if (!sub_1A524E2B4())
  {
    goto LABEL_73;
  }

  v14 = sub_1A524E2B4();
LABEL_3:
  v60 = v6;
  v61 = v13;
  v15 = *v3;
  v63 = a2;
  v62 = v14;
  if (v14 > 49)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v16 = (*(v15 + 304))(v11);
  v17 = v16;
  v18 = (v16 >> 62);
  if (v16 >> 62)
  {
    v19 = sub_1A524E2B4();
  }

  else
  {
    v19 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (__OFSUB__(50, v14))
  {
    __break(1u);
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  if (v19 >= 50 - v14)
  {
    v9 = 50 - v14;
  }

  else
  {
    v9 = v19;
  }

  if (v9 < 0)
  {
    goto LABEL_89;
  }

  if (v18)
  {
    if (v17 < 0)
    {
      v21 = v17;
    }

    else
    {
      v21 = v17 & 0xFFFFFFFFFFFFFF8;
    }

    if (sub_1A524E2B4() < 0)
    {
      __break(1u);
      __break(1u);
      swift_unknownObjectRelease_n();
      sub_1A4621CC0(v14, a2, v7, v21);
      swift_unknownObjectRelease();
      v64 = a1;
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    v20 = sub_1A524E2B4();
  }

  else
  {
    v20 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v20 >= v9)
  {
    if ((v17 & 0xC000000000000001) != 0)
    {
      if (v9)
      {
        sub_1A3C52C70(0, &qword_1EB126660, 0x1E6978630);
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

LABEL_90:
  __break(1u);
  swift_once();
  v22 = sub_1A5246F24();
  __swift_project_value_buffer(v22, qword_1EB15B6B0);
  v23 = sub_1A5246F04();
  v24 = sub_1A524D264();
  v25 = os_log_type_enabled(v23, v24);
  v26 = v62;
  if (v25)
  {
    v27 = swift_slowAlloc();
    *v27 = 134218240;
    *(v27 + 4) = v9;
    *(v27 + 12) = 2048;
    *(v27 + 14) = v26;
    _os_log_impl(&dword_1A3C1C000, v23, v24, "Added %ld additional assets to the incoming pool %ld assets", v27, 0x16u);
    MEMORY[0x1A590EEC0](v27, -1, -1);
  }

  v28 = v63;
  type metadata accessor for TimelineVFXEngineSpec(0);
  v29 = sub_1A4731C6C();
  LODWORD(v30) = v28;
  if (v28 <= 2u)
  {
    if (v28 >= 2u)
    {
      goto LABEL_39;
    }

    v31 = sub_1A4731C30();
    v32 = ceil(v29 + v29);
    if ((*&v32 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v32 > -9.22337204e18)
    {
      if (v32 < 9.22337204e18)
      {
        v30 = *v31;
        v33 = *v31 + v32;
        if (!__OFADD__(*v31, v32))
        {
          goto LABEL_47;
        }

        __break(1u);
        goto LABEL_34;
      }

LABEL_94:
      __break(1u);
      goto LABEL_95;
    }

    __break(1u);
    goto LABEL_94;
  }

LABEL_34:
  if (v30 != 3)
  {
    goto LABEL_43;
  }

  v34 = ceil(v29 * 5.0);
  if ((*&v34 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  if (v34 <= -9.22337204e18)
  {
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  if (v34 < 9.22337204e18)
  {
    goto LABEL_46;
  }

  __break(1u);
LABEL_39:
  v34 = ceil(v29 * 5.0);
  if ((*&v34 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_98;
  }

  if (v34 <= -9.22337204e18)
  {
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  if (v34 >= 9.22337204e18)
  {
    __break(1u);
LABEL_43:
    v34 = ceil(v29 * 9.0);
    if ((*&v34 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v34 > -9.22337204e18)
      {
        if (v34 < 9.22337204e18)
        {
          goto LABEL_46;
        }

        goto LABEL_103;
      }

LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
      goto LABEL_104;
    }

    goto LABEL_99;
  }

LABEL_46:
  v33 = v34;
LABEL_47:
  v35 = (*v3 + 304);
  v36 = *v35;
  v37 = (*v35)();
  if (v37 >> 62)
  {
    v38 = sub_1A524E2B4();
  }

  else
  {
    v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v59[2] = v33;
  if (v33 >= v38)
  {
    v33 = v38;
  }

  v40 = (v36)(v39);
  if (v33 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = v40;
    if (!(v40 >> 62))
    {
      if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v33)
      {
LABEL_54:
        if ((v9 & 0xC000000000000001) != 0 && v33)
        {
          sub_1A3C52C70(0, &qword_1EB126660, 0x1E6978630);
          _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
        }

        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

LABEL_86:
      __break(1u);
      swift_once();
      v41 = sub_1A5246F24();
      __swift_project_value_buffer(v41, qword_1EB15B6B0);

      v42 = sub_1A5246F04();
      v43 = sub_1A524D264();
      if (os_log_type_enabled(v42, v43))
      {
        v59[1] = v7;
        v44 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        *v44 = 134218754;
        v45 = v36();
        if (v45 >> 62)
        {
          v46 = sub_1A524E2B4();
        }

        else
        {
          v46 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v44 + 4) = v46;

        *(v44 + 12) = 2048;
        *(v44 + 14) = v62;
        *(v44 + 22) = 2080;
        v47 = sub_1A452A584(v63);
        sub_1A3C2EF94(v47, v48, &v64);
      }

      v50 = (v36)(v49);
      (*(*v3 + 264))(v50);
      sub_1A5246E84();
      v51 = v61;
      sub_1A5246E24();

      v28 = sub_1A5246E84();
      LOBYTE(v6) = sub_1A524D664();
      if ((sub_1A524DEC4() & 1) == 0)
      {

        return (*(v7 + 8))(v51, v60);
      }

      v23 = swift_slowAlloc();
      *v23 = 134217984;
      v52 = (*(*v3 + 256))();
      if (!v52)
      {
        v53 = 0;
        goto LABEL_69;
      }

      if (!(v52 >> 62))
      {
        v53 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_66:

LABEL_69:
        *(v23 + 4) = v53;

        v54 = sub_1A5246E34();
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v28, v6, v54, "Updated Assets", "Existing Asset Count %ld", v23, 0xCu);
        MEMORY[0x1A590EEC0](v23, -1, -1);

        return (*(v7 + 8))(v51, v60);
      }

LABEL_95:
      v53 = sub_1A524E2B4();
      v51 = v61;
      goto LABEL_66;
    }
  }

  result = sub_1A524E2B4();
  if ((result & 0x8000000000000000) == 0)
  {
    if (sub_1A524E2B4() >= v33)
    {
      goto LABEL_54;
    }

    goto LABEL_86;
  }

  __break(1u);
  return result;
}

void *sub_1A461DDB4(unint64_t a1)
{
  v3 = (*(*v1 + 352))();
  v5 = v3;
  if ((v3 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v6 = v3;
    }

    else
    {
      v6 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v7 = sub_1A524E2B4();
    v5 = sub_1A46203A4(v6, v7);
  }

  v52 = a1;
  v8 = sub_1A4620584(a1, v5, v4);
  v10 = v8;
  if ((v8 & 0xC000000000000001) != 0)
  {
    sub_1A524E274();
    sub_1A3C52C70(0, &qword_1EB126660, 0x1E6978630);
    sub_1A43085A8();
    sub_1A524CF84();
    v10 = v55;
    v11 = v56;
    v12 = v57;
    v13 = v58;
    v14 = v59;
  }

  else
  {
    v13 = 0;
    v15 = -1 << *(v8 + 32);
    v11 = v8 + 56;
    v12 = ~v15;
    v16 = -v15;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v14 = v17 & *(v8 + 56);
  }

  v18 = (v12 + 64) >> 6;
  if (v10 < 0)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v19 = v13;
    v20 = v14;
    v21 = v13;
    if (!v14)
    {
      while (1)
      {
        v21 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        if (v21 >= v18)
        {
          goto LABEL_23;
        }

        v20 = *(v11 + 8 * v21);
        ++v19;
        if (v20)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
      goto LABEL_32;
    }

LABEL_17:
    v22 = (v20 - 1) & v20;
    v23 = *(*(v10 + 48) + ((v21 << 9) | (8 * __clz(__rbit64(v20)))));
    if (!v23)
    {
      break;
    }

    while (1)
    {
      sub_1A3C52C70(0, &qword_1EB126860, off_1E771E0D0);
      v24 = [swift_getObjCClassFromMetadata() sharedInstance];
      v25 = [v24 vfxQualityUseBestCrop];

      sub_1A4622118(v23, v25, 360.0, 360.0);
      v27 = v26;
      v28 = (*(*v53 + 160))();
      sub_1A3C69BBC(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_1A52F9790;
      *(v29 + 32) = v23;
      sub_1A3C52C70(0, &qword_1EB126660, 0x1E6978630);
      v30 = v23;
      v31 = sub_1A524CA14();

      [v28 stopCachingImagesForAssets:v31 targetSize:0 contentMode:v27 options:{360.0, 360.0}];

      v13 = v21;
      v14 = v22;
      if ((v10 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_19:
      if (sub_1A524E304())
      {
        sub_1A3C52C70(0, &qword_1EB126660, 0x1E6978630);
        swift_dynamicCast();
        v23 = v54;
        v21 = v13;
        v22 = v14;
        if (v54)
        {
          continue;
        }
      }

      goto LABEL_23;
    }
  }

LABEL_23:
  sub_1A3C42540(v10);
  v9 = v52;
  if (!(v52 >> 62))
  {
    v32 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v32)
    {
      goto LABEL_25;
    }

LABEL_33:
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

LABEL_32:
  v49 = v9;
  v50 = sub_1A524E2B4();
  v9 = v49;
  v32 = v50;
  if (!v50)
  {
    goto LABEL_33;
  }

LABEL_25:
  v33 = v9;
  sub_1A3C52C70(0, &qword_1EB126860, off_1E771E0D0);
  result = swift_getObjCClassFromMetadata();
  v51 = result;
  if (v32 >= 1)
  {
    v35 = 0;
    v36 = v33;
    v37 = v33 & 0xC000000000000001;
    v38 = *(*v53 + 160);
    do
    {
      if (v37)
      {
        v39 = MEMORY[0x1A59097F0](v35);
      }

      else
      {
        v39 = *(v36 + 8 * v35 + 32);
      }

      v40 = v39;
      ++v35;
      v41 = [v51 sharedInstance];
      v42 = [v41 vfxQualityUseBestCrop];

      sub_1A4622118(v40, v42, 360.0, 360.0);
      v44 = v43;
      v45 = v38();
      sub_1A3C69BBC(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
      v46 = swift_allocObject();
      *(v46 + 16) = xmmword_1A52F9790;
      *(v46 + 32) = v40;
      sub_1A3C52C70(0, &qword_1EB126660, 0x1E6978630);
      v47 = v40;
      v48 = sub_1A524CA14();

      [v45 startCachingImagesForAssets:v48 targetSize:0 contentMode:v44 options:{360.0, 360.0}];

      v36 = v52;
    }

    while (v32 != v35);
    goto LABEL_33;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A461E398()
{
  v1 = sub_1A5246E54();
  v2 = *(v1 - 8);
  v3.n128_f64[0] = MEMORY[0x1EEE9AC00](v1);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*v0 + 264))(MEMORY[0x1E69E7CC0], v3);
  sub_1A5246E84();
  sub_1A5246E24();

  v6 = sub_1A5246E84();
  v7 = sub_1A524D664();
  if (sub_1A524DEC4())
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    v9 = (*(*v0 + 256))();
    if (v9)
    {
      if (v9 >> 62)
      {
        v13[1] = v9;
        v10 = sub_1A524E2B4();
      }

      else
      {
        v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }

    else
    {
      v10 = 0;
    }

    *(v8 + 4) = v10;

    v11 = sub_1A5246E34();
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v6, v7, v11, "Clear Assets", "Existing Asset Count %ld", v8, 0xCu);
    MEMORY[0x1A590EEC0](v8, -1, -1);
  }

  else
  {
  }

  return (*(v2 + 8))(v5, v1);
}