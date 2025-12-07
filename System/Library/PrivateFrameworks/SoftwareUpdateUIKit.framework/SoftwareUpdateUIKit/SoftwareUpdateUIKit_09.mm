uint64_t sub_26AFDFE7C()
{
  v1 = *(type metadata accessor for UpdateOptionsView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_26AFD9498(v2);
}

unint64_t sub_26AFDFEE8()
{
  v2 = qword_2803DE0F8;
  if (!qword_2803DE0F8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE0F8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AFDFF64(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE030, &qword_26B08E4C8);
  (*(*(v1 - 8) + 8))(a1);
  v3 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE038, &qword_26B08E4D0) + 36);

  sub_26AEF7A44(*(v3 + 88), *(v3 + 96) & 1);
  return a1;
}

uint64_t sub_26AFE004C(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE030, &qword_26B08E4C8);
  (*(*(v2 - 8) + 16))(a2, a1);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE038, &qword_26B08E4D0);
  v13 = a1 + *(v3 + 36);
  v16 = a2 + *(v3 + 36);
  *v16 = *v13;
  *(v16 + 8) = *(v13 + 8);
  *(v16 + 16) = *(v13 + 16);
  v7 = *(v13 + 24);
  sub_26B078640();
  *(v16 + 24) = v7;
  *(v16 + 32) = *(v13 + 32);
  v8 = *(v13 + 40);
  sub_26B078640();
  *(v16 + 40) = v8;
  *(v16 + 48) = *(v13 + 48);
  v9 = *(v13 + 56);

  *(v16 + 56) = v9;
  v10 = *(v13 + 64);

  *(v16 + 64) = v10;
  v11 = *(v13 + 72);

  *(v16 + 72) = v11;
  v12 = *(v13 + 80);

  *(v16 + 80) = v12;
  v14 = *(v13 + 88);
  v15 = *(v13 + 96);
  sub_26AEF79D8(v14, v15 & 1);
  *(v16 + 88) = v14;
  *(v16 + 96) = v15 & 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE040, &qword_26B08E4D8);
  v5 = a1 + *(v4 + 36);
  v20 = a2 + *(v4 + 36);
  *v20 = *v5;
  v18 = *(v5 + 8);
  v19 = *(v5 + 16);
  sub_26AF07734();
  result = a2;
  *(v20 + 8) = v18;
  *(v20 + 16) = v19 & 1;
  return result;
}

uint64_t sub_26AFE0274()
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

uint64_t sub_26AFE05B4()
{
  v1 = *(type metadata accessor for UpdateOptionsView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_26AFDA6F0(v2);
}

uint64_t sub_26AFE0620(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE030, &qword_26B08E4C8);
  (*(*(v1 - 8) + 8))(a1);
  v3 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE0C8, &qword_26B08E520) + 36);

  sub_26AEF7A44(*(v3 + 88), *(v3 + 96) & 1);
  return a1;
}

uint64_t sub_26AFE0708(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE030, &qword_26B08E4C8);
  (*(*(v2 - 8) + 16))(a2, a1);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE0C8, &qword_26B08E520);
  v13 = a1 + *(v3 + 36);
  v16 = a2 + *(v3 + 36);
  *v16 = *v13;
  *(v16 + 8) = *(v13 + 8);
  *(v16 + 16) = *(v13 + 16);
  v7 = *(v13 + 24);
  sub_26B078640();
  *(v16 + 24) = v7;
  *(v16 + 32) = *(v13 + 32);
  v8 = *(v13 + 40);
  sub_26B078640();
  *(v16 + 40) = v8;
  *(v16 + 48) = *(v13 + 48);
  v9 = *(v13 + 56);

  *(v16 + 56) = v9;
  v10 = *(v13 + 64);

  *(v16 + 64) = v10;
  v11 = *(v13 + 72);

  *(v16 + 72) = v11;
  v12 = *(v13 + 80);

  *(v16 + 80) = v12;
  v14 = *(v13 + 88);
  v15 = *(v13 + 96);
  sub_26AEF79D8(v14, v15 & 1);
  *(v16 + 88) = v14;
  *(v16 + 96) = v15 & 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE068, &qword_26B08E500);
  v5 = a1 + *(v4 + 36);
  v20 = a2 + *(v4 + 36);
  *v20 = *v5;
  v18 = *(v5 + 8);
  v19 = *(v5 + 16);
  sub_26AF07734();
  result = a2;
  *(v20 + 8) = v18;
  *(v20 + 16) = v19 & 1;
  return result;
}

uint64_t sub_26AFE0930(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE0E8, &qword_26B08E528);
  if (!(*(*(v1 - 8) + 48))(a1, 1))
  {
    v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE108, &qword_26B08E538) - 8) + 8);
    (v3)(a1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE110, &qword_26B08E540);
    sub_26AF072D8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE118, &unk_26B08E548);
    v3();
    sub_26AF072D8();
  }

  return a1;
}

char *sub_26AFE0A88(char *a1, char *a2)
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE0E8, &qword_26B08E528);
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(a1, 1))
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE0A8, &qword_26B08E518);
    memcpy(a2, a1, *(*(v7 - 8) + 64));
  }

  else
  {
    v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE108, &qword_26B08E538) - 8) + 32);
    (v9)(a2, a1);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE110, &qword_26B08E540);
    v2 = &a2[*(v11 + 36)];
    v3 = &a1[*(v11 + 36)];
    *v2 = *v3;
    v2[16] = v3[16];
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE118, &unk_26B08E548);
    v10 = &a2[*(v4 + 48)];
    v12 = &a1[*(v4 + 48)];
    v9();
    v5 = &v10[*(v11 + 36)];
    v6 = &v12[*(v11 + 36)];
    *v5 = *v6;
    v5[16] = v6[16];
    (*(v16 + 56))(a2, 0, 1, v15);
  }

  return a2;
}

char *sub_26AFE0C98(char *a1, char *a2)
{
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE0E8, &qword_26B08E528) - 8);
  if ((*(v19 + 48))(a1, 1))
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE0A8, &qword_26B08E518);
    memcpy(a2, a1, *(*(v5 - 8) + 64));
  }

  else
  {
    v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE108, &qword_26B08E538) - 8) + 16);
    (v10)(a2, a1);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE110, &qword_26B08E540);
    v9 = &a2[*(v13 + 36)];
    v2 = &a1[*(v13 + 36)];
    *v9 = *v2;
    v7 = *(v2 + 1);
    v8 = v2[16];
    sub_26AF07734();
    *(v9 + 1) = v7;
    v9[16] = v8 & 1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE118, &unk_26B08E548);
    v11 = &a2[*(v3 + 48)];
    v12 = &a1[*(v3 + 48)];
    v10();
    v16 = &v11[*(v13 + 36)];
    v4 = &v12[*(v13 + 36)];
    *v16 = *v4;
    v14 = *(v4 + 1);
    v15 = v4[16];
    sub_26AF07734();
    *(v16 + 1) = v14;
    v16[16] = v15 & 1;
    (*(v19 + 56))(a2, 0);
  }

  return a2;
}

uint64_t sub_26AFE0F14()
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

uint64_t sub_26AFE1254()
{
  v1 = *(type metadata accessor for UpdateOptionsView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_26AFDB8F0(v2);
}

unint64_t sub_26AFE12C0()
{
  v2 = qword_2803DE120;
  if (!qword_2803DE120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DE100, &qword_26B08E530);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE120);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AFE1348(double a1)
{
  v3 = qword_2803DE128;
  if (!qword_2803DE128)
  {
    sub_26B079040();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE128);
    return WitnessTable;
  }

  return v3;
}

unint64_t sub_26AFE13C8()
{
  v3 = qword_2803DE130;
  if (!qword_2803DE130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DE110, &qword_26B08E540);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DE100, &qword_26B08E530);
    sub_26B079040();
    sub_26AFE12C0();
    sub_26AFE1348(v0);
    swift_getOpaqueTypeConformance2();
    sub_26AF2C5CC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE130);
    return WitnessTable;
  }

  return v3;
}

uint64_t sub_26AFE14E8(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE108, &qword_26B08E538);
  (*(*(v1 - 8) + 8))(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE110, &qword_26B08E540);
  sub_26AF072D8();
  return a1;
}

uint64_t sub_26AFE1584()
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

uint64_t sub_26AFE18C4()
{
  v1 = *(type metadata accessor for UpdateOptionsView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_26AFDC068(v2);
}

uint64_t sub_26AFE1930(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE108, &qword_26B08E538);
  (*(*(v2 - 8) + 16))(a2, a1);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE110, &qword_26B08E540);
  v4 = a1 + *(v3 + 36);
  v9 = a2 + *(v3 + 36);
  *v9 = *v4;
  v7 = *(v4 + 8);
  v8 = *(v4 + 16);
  sub_26AF07734();
  result = a2;
  *(v9 + 8) = v7;
  *(v9 + 16) = v8 & 1;
  return result;
}

uint64_t sub_26AFE1A10(uint64_t a1, uint64_t a2)
{
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE108, &qword_26B08E538) - 8) + 16);
  (v10)(a2, a1);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE110, &qword_26B08E540);
  v2 = a1 + *(v13 + 36);
  v8 = a2 + *(v13 + 36);
  *v8 = *v2;
  v6 = *(v2 + 8);
  v7 = *(v2 + 16);
  sub_26AF07734();
  *(v8 + 8) = v6;
  *(v8 + 16) = v7 & 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE118, &unk_26B08E548);
  v12 = a2 + *(v3 + 48);
  v11 = a1 + *(v3 + 48);
  v10();
  v4 = *(v13 + 36);
  v16 = v12 + v4;
  *(v12 + v4) = *(v11 + v4);
  v14 = *(v11 + v4 + 8);
  v15 = *(v11 + v4 + 16);
  sub_26AF07734();
  result = a2;
  *(v16 + 8) = v14;
  *(v16 + 16) = v15 & 1;
  return result;
}

uint64_t sub_26AFE1BB4(uint64_t a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE108, &qword_26B08E538) - 8) + 8);
  (v2)(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE110, &qword_26B08E540);
  sub_26AF072D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE118, &unk_26B08E548);
  v2();
  sub_26AF072D8();
  return a1;
}

unint64_t sub_26AFE1CC0()
{
  v2 = qword_2803DE138;
  if (!qword_2803DE138)
  {
    type metadata accessor for SUUIStatefulDescriptorState(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE138);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AFE1D40()
{
  v2 = qword_2803DE148;
  if (!qword_2803DE148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DE140, &qword_26B08E558);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE148);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AFE1DF4()
{
  v2 = qword_2803DE150;
  if (!qword_2803DE150)
  {
    type metadata accessor for SUUIStatefulDescriptorState(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE150);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AFE1E74(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 16) = *(a1 + 16);
  v3 = *(a1 + 24);
  sub_26B078640();
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  v4 = *(a1 + 40);
  sub_26B078640();
  *(a2 + 40) = v4;
  *(a2 + 48) = *(a1 + 48);
  v5 = *(a1 + 56);

  *(a2 + 56) = v5;
  v6 = *(a1 + 64);

  *(a2 + 64) = v6;
  v7 = *(a1 + 72);

  *(a2 + 72) = v7;
  v8 = *(a1 + 80);

  *(a2 + 80) = v8;
  v9 = *(a1 + 88);
  v10 = *(a1 + 96);
  v11 = *(a1 + 104);
  sub_26AE95D28(v9, v10, v11 & 1);
  *(a2 + 88) = v9;
  *(a2 + 96) = v10;
  *(a2 + 104) = v11 & 1;
  v13 = *(a1 + 112);
  sub_26B078640();
  result = a2;
  *(a2 + 112) = v13;
  *(a2 + 120) = *(a1 + 120);
  return result;
}

unint64_t sub_26AFE1FDC()
{
  v2 = qword_2803DE168;
  if (!qword_2803DE168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DE160, &qword_26B08E568);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE168);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AFE2064(uint64_t a1)
{

  sub_26AE95AFC(*(a1 + 88), *(a1 + 96), *(a1 + 104) & 1);

  return a1;
}

unint64_t sub_26AFE20F0()
{
  v2 = qword_2803DE170;
  if (!qword_2803DE170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DE158, &qword_26B08E560);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE170);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AFE2178(uint64_t a1)
{
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE178, &qword_26B08E570) + 44);
  sub_26AE95AFC(*(a1 + v10 + 40), *(a1 + v10 + 48), *(a1 + v10 + 56) & 1);

  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE180, &qword_26B08E578) + 48);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE188, &qword_26B08E580);
  if (!(*(*(v1 - 8) + 48))(a1 + v10 + v11, 1))
  {
    v5 = a1 + v10 + v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE190, &qword_26B08E588) + 44);
    v6 = v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE198, &unk_26B08E590) + 48);
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE1A0, &qword_26B08FE70);
    (*(*(v2 - 8) + 8))(v6);
    v7 = v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE1A8, &unk_26B08E5A0) + 36);

    v8 = v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC700, &unk_26B089FC0) + 28);
    v3 = sub_26B078A00();
    (*(*(v3 - 8) + 8))(v8);
  }

  return a1;
}

_OWORD *sub_26AFE238C(_OWORD *a1, _OWORD *a2)
{
  *a2 = *a1;
  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE178, &qword_26B08E570) + 44);
  v29 = a2 + v24;
  *v29 = *(a1 + v24);
  v29[16] = *(a1 + v24 + 16);
  *(v29 + 3) = *(a1 + v24 + 24);
  v29[32] = *(a1 + v24 + 32);
  v25 = *(a1 + v24 + 40);
  v26 = *(a1 + v24 + 48);
  v27 = *(a1 + v24 + 56);
  sub_26AE95D28(v25, v26, v27 & 1);
  *(v29 + 5) = v25;
  *(v29 + 6) = v26;
  v29[56] = v27 & 1;
  v28 = *(a1 + v24 + 64);
  sub_26B078640();
  *(v29 + 8) = v28;
  *(v29 + 9) = *(a1 + v24 + 72);
  v29[80] = *(a1 + v24 + 80);
  v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE180, &qword_26B08E578) + 48);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE188, &qword_26B08E580);
  v32 = *(v31 - 8);
  if ((*(v32 + 48))(a1 + v24 + v30, 1))
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE1B8, &qword_26B08E5B8);
    memcpy(a2 + v24 + v30, a1 + v24 + v30, *(*(v9 - 8) + 64));
  }

  else
  {
    v11 = a1 + v24 + v30;
    v21 = a2 + v24 + v30;
    *v21 = *v11;
    v21[16] = v11[16];
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE190, &qword_26B08E588);
    v12 = &v21[*(v2 + 44)];
    v13 = &v11[*(v2 + 44)];
    *v12 = *v13;
    v12[8] = v13[8];
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE198, &unk_26B08E590);
    v19 = &v12[*(v3 + 48)];
    v20 = &v13[*(v3 + 48)];
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE1A0, &qword_26B08FE70);
    (*(*(v4 - 8) + 16))(v19, v20);
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE1A8, &unk_26B08E5A0);
    v15 = &v19[*(v5 + 36)];
    v16 = &v20[*(v5 + 36)];
    v14 = *v16;

    *v15 = v14;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC700, &unk_26B089FC0);
    v18 = &v15[*(v6 + 28)];
    v17 = &v16[*(v6 + 28)];
    v7 = sub_26B078A00();
    (*(*(v7 - 8) + 16))(v18, v17);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE1B0, &qword_26B08E5B0);
    memcpy(&v19[*(v8 + 36)], &v20[*(v8 + 36)], 0x29uLL);
    (*(v32 + 56))(v21, 0, 1, v31);
  }

  return a2;
}

uint64_t sub_26AFE2840(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE20, &unk_26B08D230);
  if (a2 == *(*(v9 - 8) + 84))
  {
    return (*(*(v9 - 8) + 48))(a1, a2, v9);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v4 = -1;
    if (*(a1 + *(a3 + 28)) < 0x100000000uLL)
    {
      v4 = *(a1 + *(a3 + 28));
    }

    return (v4 + 1);
  }

  else
  {
    __break(1u);
  }

  return v5;
}

uint64_t sub_26AFE298C(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE20, &unk_26B08D230);
  if (a3 == *(*(result - 8) + 84))
  {
    return (*(*(result - 8) + 56))(a1, a2, a2, result);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 28)) = a2 - 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_26AFE2A88(uint64_t a1)
{
  v7 = sub_26AFA65BC(319);
  if (v1 <= 0x3F)
  {
    v7 = sub_26AE96B4C(319);
    if (v2 <= 0x3F)
    {
      v7 = sub_26AFE2C00(319);
      if (v3 <= 0x3F)
      {
        v7 = sub_26AE96D98();
        if (v4 <= 0x3F)
        {
          v7 = sub_26AFE2C94(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v7;
}

unint64_t sub_26AFE2C00(uint64_t a1)
{
  v5 = qword_2803DE1D0;
  if (!qword_2803DE1D0)
  {
    v4 = sub_26B078A20();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_2803DE1D0);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_26AFE2C94(uint64_t a1)
{
  v5 = qword_2803DE1D8;
  if (!qword_2803DE1D8)
  {
    v4 = sub_26B078A20();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_2803DE1D8);
      return v2;
    }
  }

  return v5;
}

uint64_t sub_26AFE2D64(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 121))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 24)))
      {
        v3 = *(a1 + 24);
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

uint64_t sub_26AFE2E7C(uint64_t result, int a2, int a3)
{
  v3 = (result + 121);
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 80) = 0;
    *(result + 72) = 0;
    *(result + 64) = 0;
    *(result + 104) = 0;
    *(result + 96) = 0;
    *(result + 112) = 0;
    *(result + 120) = 0;
    *(result + 56) = 0;
    *(result + 48) = 0;
    *(result + 40) = 0;
    *(result + 32) = 0;
    *(result + 24) = 0;
    *(result + 16) = 0;
    *(result + 8) = 0;
    *result = a2 + 0x80000000;
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
      *(result + 24) = (a2 - 1);
    }
  }

  return result;
}

uint64_t sub_26AFE307C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DE008, &qword_26B08E4B0);
  sub_26AFDE468();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_26AFE31A0()
{
  v2 = qword_2803DE1E8;
  if (!qword_2803DE1E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DE1E0, &qword_26B08EA08);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE1E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AFE3228()
{
  v2 = qword_2803DE1F8;
  if (!qword_2803DE1F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DE1F0, &qword_26B08EA10);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE1F8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AFE32B0(uint64_t a1)
{
  sub_26AE95AFC(*(a1 + 40), *(a1 + 48), *(a1 + 56) & 1);

  return a1;
}

unint64_t sub_26AFE32F8()
{
  v2 = qword_2803DE200;
  if (!qword_2803DE200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DE188, &qword_26B08E580);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE200);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AFE3380(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE188, &qword_26B08E580);
  if (!(*(*(v1 - 8) + 48))(a1, 1))
  {
    v5 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE190, &qword_26B08E588) + 44);
    v6 = v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE198, &unk_26B08E590) + 48);
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE1A0, &qword_26B08FE70);
    (*(*(v2 - 8) + 8))(v6);
    v7 = v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE1A8, &unk_26B08E5A0) + 36);

    v8 = v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC700, &unk_26B089FC0) + 28);
    v3 = sub_26B078A00();
    (*(*(v3 - 8) + 8))(v8);
  }

  return a1;
}

_BYTE *sub_26AFE350C(_BYTE *a1, _BYTE *a2)
{
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE188, &qword_26B08E580);
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(a1, 1))
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE1B8, &qword_26B08E5B8);
    memcpy(a2, a1, *(*(v9 - 8) + 64));
  }

  else
  {
    *a2 = *a1;
    a2[16] = a1[16];
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE190, &qword_26B08E588);
    v11 = &a2[*(v2 + 44)];
    v12 = &a1[*(v2 + 44)];
    *v11 = *v12;
    v11[8] = v12[8];
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE198, &unk_26B08E590);
    v17 = &v11[*(v3 + 48)];
    v18 = &v12[*(v3 + 48)];
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE1A0, &qword_26B08FE70);
    (*(*(v4 - 8) + 32))(v17, v18);
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE1A8, &unk_26B08E5A0);
    v13 = &v17[*(v5 + 36)];
    v14 = &v18[*(v5 + 36)];
    *v13 = *v14;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC700, &unk_26B089FC0);
    v16 = v13 + *(v6 + 28);
    v15 = v14 + *(v6 + 28);
    v7 = sub_26B078A00();
    (*(*(v7 - 8) + 32))(v16, v15);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE1B0, &qword_26B08E5B0);
    memcpy(&v17[*(v8 + 36)], &v18[*(v8 + 36)], 0x29uLL);
    (*(v22 + 56))(a2, 0, 1, v21);
  }

  return a2;
}

uint64_t sub_26AFE37CC(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  sub_26AE95D28(v3, v4, v5 & 1);
  *(a2 + 40) = v3;
  *(a2 + 48) = v4;
  *(a2 + 56) = v5 & 1;
  v7 = *(a1 + 64);
  sub_26B078640();
  result = a2;
  *(a2 + 64) = v7;
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 80) = *(a1 + 80);
  return result;
}

_BYTE *sub_26AFE3888(_BYTE *a1, _BYTE *a2)
{
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE188, &qword_26B08E580);
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(a1, 1))
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE1B8, &qword_26B08E5B8);
    memcpy(a2, a1, *(*(v9 - 8) + 64));
  }

  else
  {
    *a2 = *a1;
    a2[16] = a1[16];
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE190, &qword_26B08E588);
    v11 = &a2[*(v2 + 44)];
    v12 = &a1[*(v2 + 44)];
    *v11 = *v12;
    v11[8] = v12[8];
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE198, &unk_26B08E590);
    v18 = &v11[*(v3 + 48)];
    v19 = &v12[*(v3 + 48)];
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE1A0, &qword_26B08FE70);
    (*(*(v4 - 8) + 16))(v18, v19);
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE1A8, &unk_26B08E5A0);
    v14 = &v18[*(v5 + 36)];
    v15 = &v19[*(v5 + 36)];
    v13 = *v15;

    *v14 = v13;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC700, &unk_26B089FC0);
    v17 = v14 + *(v6 + 28);
    v16 = v15 + *(v6 + 28);
    v7 = sub_26B078A00();
    (*(*(v7 - 8) + 16))(v17, v16);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE1B0, &qword_26B08E5B0);
    memcpy(&v18[*(v8 + 36)], &v19[*(v8 + 36)], 0x29uLL);
    (*(v23 + 56))(a2, 0, 1, v22);
  }

  return a2;
}

unint64_t sub_26AFE3B58()
{
  v2 = qword_2803DE208;
  if (!qword_2803DE208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DE1B8, &qword_26B08E5B8);
    sub_26AFE32F8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE208);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AFE3BF8()
{
  v2 = qword_2803DE218;
  if (!qword_2803DE218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DE210, &qword_26B08EA18);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE218);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AFE3C80(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE190, &qword_26B08E588) + 44);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE198, &unk_26B08E590) + 48);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE1A0, &qword_26B08FE70);
  (*(*(v1 - 8) + 8))();
  v6 = a1 + v4 + v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE1A8, &unk_26B08E5A0) + 36);

  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC700, &unk_26B089FC0) + 28);
  v2 = sub_26B078A00();
  (*(*(v2 - 8) + 8))(v6 + v7);
  return a1;
}

uint64_t sub_26AFE3DBC(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE190, &qword_26B08E588);
  v10 = a1 + *(v2 + 44);
  v8 = a2 + *(v2 + 44);
  *v8 = *v10;
  *(v8 + 8) = *(v10 + 8);
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE198, &unk_26B08E590) + 48);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE1A0, &qword_26B08FE70);
  (*(*(v3 - 8) + 16))();
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE1A8, &unk_26B08E5A0) + 36);
  v14 = (v10 + v9 + v11);
  v12 = *v14;

  *(v8 + v9 + v11) = v12;
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC700, &unk_26B089FC0) + 28);
  v4 = sub_26B078A00();
  (*(*(v4 - 8) + 16))(v8 + v9 + v11 + v13, &v14[v13]);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE1B0, &qword_26B08E5B0);
  memcpy((v8 + v9 + *(v5 + 36)), (v10 + v9 + *(v5 + 36)), 0x29uLL);
  return a2;
}

unint64_t sub_26AFE3FB8()
{
  v2 = qword_2803DE680;
  if (!qword_2803DE680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DE1A0, &qword_26B08FE70);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE680);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AFE4040()
{
  v2 = qword_2803DE220;
  if (!qword_2803DE220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DE1A8, &unk_26B08E5A0);
    sub_26AFE3FB8();
    sub_26AEF8994();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE220);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AFE40E8(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE1A0, &qword_26B08FE70);
  (*(*(v1 - 8) + 8))(a1);
  v4 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE1A8, &unk_26B08E5A0) + 36);

  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC700, &unk_26B089FC0) + 28);
  v2 = sub_26B078A00();
  (*(*(v2 - 8) + 8))(v4 + v5);
  return a1;
}

unint64_t sub_26AFE41DC()
{
  v2 = qword_2803DE228;
  if (!qword_2803DE228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DE1B0, &qword_26B08E5B0);
    sub_26AFE4040();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE228);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AFE4280(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE1A0, &qword_26B08FE70);
  (*(*(v1 - 8) + 8))(a1);
  v4 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE1A8, &unk_26B08E5A0) + 36);

  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC700, &unk_26B089FC0) + 28);
  v2 = sub_26B078A00();
  (*(*(v2 - 8) + 8))(v4 + v5);
  return a1;
}

uint64_t sub_26AFE4374(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE1A0, &qword_26B08FE70);
  (*(*(v2 - 8) + 16))(a2, a1);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE1A8, &unk_26B08E5A0) + 36);
  v7 = *(a1 + v6);

  *(a2 + v6) = v7;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC700, &unk_26B089FC0) + 28);
  v3 = sub_26B078A00();
  (*(*(v3 - 8) + 16))(a2 + v6 + v8, a1 + v6 + v8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE1B0, &qword_26B08E5B0);
  memcpy((a2 + *(v4 + 36)), (a1 + *(v4 + 36)), 0x29uLL);
  return a2;
}

uint64_t sub_26AFE44E4(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  sub_26AE95D28(*a1, v4, v5 & 1);
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  v8 = *(a1 + 24);
  sub_26B078640();
  result = a2;
  *(a2 + 24) = v8;
  return result;
}

void *sub_26AFE456C(void *a1)
{

  MEMORY[0x277D82BD8](a1[22]);
  MEMORY[0x277D82BD8](a1[23]);

  return a1;
}

uint64_t sub_26AFE49A8(uint64_t a1)
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

uint64_t sub_26AFE4BE4(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE030, &qword_26B08E4C8);
  (*(*(v2 - 8) + 16))(a2, a1);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE038, &qword_26B08E4D0);
  v15 = a1 + *(v3 + 36);
  v18 = a2 + *(v3 + 36);
  *v18 = *v15;
  *(v18 + 8) = *(v15 + 8);
  *(v18 + 16) = *(v15 + 16);
  v9 = *(v15 + 24);
  sub_26B078640();
  *(v18 + 24) = v9;
  *(v18 + 32) = *(v15 + 32);
  v10 = *(v15 + 40);
  sub_26B078640();
  *(v18 + 40) = v10;
  *(v18 + 48) = *(v15 + 48);
  v11 = *(v15 + 56);

  *(v18 + 56) = v11;
  v12 = *(v15 + 64);

  *(v18 + 64) = v12;
  v13 = *(v15 + 72);

  *(v18 + 72) = v13;
  v14 = *(v15 + 80);

  *(v18 + 80) = v14;
  v16 = *(v15 + 88);
  v17 = *(v15 + 96);
  sub_26AEF79D8(v16, v17 & 1);
  *(v18 + 88) = v16;
  *(v18 + 96) = v17 & 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE040, &qword_26B08E4D8);
  v5 = a1 + *(v4 + 36);
  v21 = a2 + *(v4 + 36);
  *v21 = *v5;
  v19 = *(v5 + 8);
  v20 = *(v5 + 16);
  sub_26AF07734();
  *(v21 + 8) = v19;
  *(v21 + 16) = v20 & 1;
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE048, &qword_26B08E4E0) + 36);
  v6 = sub_26B079100();
  (*(*(v6 - 8) + 16))(a2 + v22, a1 + v22);
  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE050, &qword_26B08E4E8) + 48);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE058, &unk_26B08E4F0);
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(a1 + v24, 1))
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE078, &qword_26B08E510);
    memcpy((a2 + v24), (a1 + v24), *(*(v7 - 8) + 64));
  }

  else
  {
    (*(v27 + 16))();
    (*(v27 + 56))(a2 + v24, 0, 1, v26);
  }

  return a2;
}

SoftwareUpdateUIKit::DeepLinkAction_optional sub_26AFE4FD8(uint64_t a1, void *a2)
{
  sub_26B078640();
  v2._countAndFlagsBits = a1;
  v2._object = a2;
  return DeepLinkAction.init(rawValue:)(v2);
}

uint64_t DeepLinkAction.rawValue.getter()
{
  if (*v0)
  {
    return sub_26B079D00("SUSUIUpdateTonightAction", 24, 1);
  }

  else
  {
    return sub_26B079D00("SUSUIUpdateNowAction", 20, 1);
  }
}

SoftwareUpdateUIKit::DeepLinkAction_optional __swiftcall DeepLinkAction.init(rawValue:)(Swift::String rawValue)
{
  v4 = v1;
  sub_26B07A760();
  *v2 = "SUSUIUpdateNowAction";
  *(v2 + 8) = 20;
  *(v2 + 16) = 2;
  *(v2 + 24) = "SUSUIUpdateTonightAction";
  *(v2 + 32) = 24;
  *(v2 + 40) = 2;
  sub_26AEA3B2C();
  v5 = sub_26B07A6B0();

  if (v5)
  {
    if (v5 != 1)
    {

      *v4 = 2;
      return result;
    }

    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  *v4 = v6;
}

uint64_t sub_26AFE5324@<X0>(uint64_t *a1@<X8>)
{
  result = DeepLinkAction.rawValue.getter();
  *a1 = result;
  a1[1] = v2;
  return result;
}

unint64_t sub_26AFE536C()
{
  v2 = qword_2803DE230;
  if (!qword_2803DE230)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE230);
    return WitnessTable;
  }

  return v2;
}

uint64_t getEnumTagSinglePayload for DeepLinkAction(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for DeepLinkAction(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26AFE57CC()
{
  v2 = qword_2803DE238;
  if (!qword_2803DE238)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE238);
    return WitnessTable;
  }

  return v2;
}

void *EnvironmentValues.platform.setter(void *a1)
{
  v6 = a1;
  v5 = v1;
  sub_26AF9F28C(a1, v4);
  sub_26AFE57CC();
  sub_26B078D50();
  return sub_26AF9DC30(a1);
}

uint64_t EnvironmentValues.reactivePlatform.getter()
{
  sub_26AFE5900();
  sub_26B078D40();
  return v1;
}

unint64_t sub_26AFE5900()
{
  v2 = qword_2803DE240;
  if (!qword_2803DE240)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE240);
    return WitnessTable;
  }

  return v2;
}

uint64_t EnvironmentValues.reactivePlatform.setter(uint64_t a1)
{

  sub_26AFE5900();
  sub_26B078D50();
}

uint64_t EnvironmentValues.reactiveManager.getter()
{
  sub_26AFE5A38();
  sub_26B078D40();
  return v1;
}

unint64_t sub_26AFE5A38()
{
  v2 = qword_2803DE248;
  if (!qword_2803DE248)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE248);
    return WitnessTable;
  }

  return v2;
}

uint64_t EnvironmentValues.reactiveManager.setter(uint64_t a1)
{

  sub_26AFE5A38();
  sub_26B078D50();
}

uint64_t EnvironmentValues.reactiveAnalytics.getter()
{
  sub_26AFE5B70();
  sub_26B078D40();
  return v1;
}

unint64_t sub_26AFE5B70()
{
  v2 = qword_2803DE250;
  if (!qword_2803DE250)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE250);
    return WitnessTable;
  }

  return v2;
}

uint64_t EnvironmentValues.reactiveAnalytics.setter(uint64_t a1)
{

  sub_26AFE5B70();
  sub_26B078D50();
}

uint64_t sub_26AFE5C64@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26AFE5C5C();
  *a1 = result;
  return result;
}

void (*EnvironmentValues.reactiveAnalytics.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = EnvironmentValues.reactiveAnalytics.getter();
  return sub_26AFE5D08;
}

void sub_26AFE5D08(uint64_t *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;

    EnvironmentValues.reactiveAnalytics.setter(v2);
    sub_26AF3ED48();
  }

  else
  {
    EnvironmentValues.reactiveAnalytics.setter(*a1);
  }
}

void sub_26AFE5D74(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0;
}

uint64_t (*EnvironmentValues.platform.modify(void *a1))()
{
  v4 = __swift_coroFrameAllocStub(0x58uLL, 3191);
  *a1 = v4;
  v4[10] = v1;
  EnvironmentValues.platform.getter();
  return sub_26AFE5E40;
}

void sub_26AFE5E40(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_26AF9F28C(v2, v2 + 5);
    EnvironmentValues.platform.setter(v2 + 5);
    sub_26AF9DC30(v2);
  }

  else
  {
    EnvironmentValues.platform.setter(v2);
  }

  free(v2);
}

uint64_t sub_26AFE5EC0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26AFE5EB8();
  *a1 = result;
  return result;
}

void (*EnvironmentValues.reactivePlatform.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = EnvironmentValues.reactivePlatform.getter();
  return sub_26AFE5F64;
}

void sub_26AFE5F64(uint64_t *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;

    EnvironmentValues.reactivePlatform.setter(v2);
    sub_26AF9DEAC();
  }

  else
  {
    EnvironmentValues.reactivePlatform.setter(*a1);
  }
}

uint64_t sub_26AFE5FD8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26AFE5FD0();
  *a1 = result;
  return result;
}

void (*EnvironmentValues.reactiveManager.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = EnvironmentValues.reactiveManager.getter();
  return sub_26AFE607C;
}

void sub_26AFE607C(uint64_t *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;

    EnvironmentValues.reactiveManager.setter(v2);
    sub_26AEECDD4(a1);
  }

  else
  {
    EnvironmentValues.reactiveManager.setter(*a1);
  }
}

uint64_t sub_26AFE60F0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26AFE60E8();
  *a1 = result;
  return result;
}

uint64_t EnvironmentValues.deepLinkRequest.getter()
{
  sub_26AFE61B4();
  sub_26B078D40();
  return v1;
}

unint64_t sub_26AFE61B4()
{
  v2 = qword_2803DE258;
  if (!qword_2803DE258)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE258);
    return WitnessTable;
  }

  return v2;
}

uint64_t EnvironmentValues.deepLinkRequest.setter(uint64_t a1)
{

  sub_26AFE61B4();
  sub_26B078D50();
}

void (*EnvironmentValues.deepLinkRequest.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = EnvironmentValues.deepLinkRequest.getter();
  return sub_26AFE62FC;
}

void sub_26AFE62FC(uint64_t *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;

    EnvironmentValues.deepLinkRequest.setter(v2);
    sub_26AEBB6D0(a1);
  }

  else
  {
    EnvironmentValues.deepLinkRequest.setter(*a1);
  }
}

unint64_t sub_26AFE642C()
{
  v2 = qword_2803DE260;
  if (!qword_2803DE260)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE260);
    return WitnessTable;
  }

  return v2;
}

uint64_t EnvironmentValues.deepLinkResponse.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  sub_26AEF6B90(*a1, v3);
  sub_26AFE642C();
  sub_26B078D50();
  return sub_26AEF6474(v2, v3);
}

uint64_t (*EnvironmentValues.deepLinkResponse.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  *(a1 + 16) = v1;
  EnvironmentValues.deepLinkResponse.getter();
  return sub_26AFE6598;
}

uint64_t sub_26AFE6598(uint64_t *a1, char a2)
{
  if (a2)
  {
    v4 = *a1;
    v5 = a1[1];
    sub_26AEF6B90(*a1, v5);
    v7[0] = v4;
    v7[1] = v5;
    EnvironmentValues.deepLinkResponse.setter(v7);
    return sub_26AF091A8(a1);
  }

  else
  {
    v2 = a1[1];
    v8[0] = *a1;
    v8[1] = v2;
    return EnvironmentValues.deepLinkResponse.setter(v8);
  }
}

void *sub_26AFE66BC@<X0>(void *a1@<X8>)
{
  v5 = v1;
  sub_26AFE6740();
  sub_26B078D40();
  memcpy(__dst, v4, sizeof(__dst));
  return memcpy(a1, __dst, 0x110uLL);
}

unint64_t sub_26AFE6740()
{
  v2 = qword_2803DE268;
  if (!qword_2803DE268)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE268);
    return WitnessTable;
  }

  return v2;
}

void *sub_26AFE67BC(void *a1)
{
  v7 = a1;
  v6 = v1;
  sub_26AFC4948(a1, v5);
  memcpy(__dst, a1, sizeof(__dst));
  sub_26AFE6740();
  sub_26B078D50();
  return sub_26AFE456C(a1);
}

void *View.withSUUIReactiveUpdateDialogs(manager:presentedDescriptor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = a3;
  v11 = a1;
  v10 = a2;
  v9 = v3;

  swift_unknownObjectRetain();
  ReactiveUpdateDialogsModifier.init(manager:presentedDescriptor:)(a1, a2, v8);
  v7[0] = v8[0];
  v7[1] = v8[1];
  MEMORY[0x26D66C890]();
  result = v7;
  sub_26AFE6B90(v7);
  return result;
}

uint64_t sub_26AFE6A9C()
{
  v2 = *v0;

  return v2;
}

uint64_t sub_26AFE6AD0()
{
  v2 = *(v0 + 8);
  swift_unknownObjectRetain();
  return v2;
}

uint64_t *ReactiveUpdateDialogsModifier.init(manager:presentedDescriptor:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = 0;
  v8 = 0;

  v7 = a1;
  swift_unknownObjectRetain();
  v8 = a2;
  sub_26AFE6BC8(&v7, a3);
  swift_unknownObjectRelease();

  result = &v7;
  sub_26AFE6B90(&v7);
  return result;
}

void *sub_26AFE6BC8(uint64_t *a1, void *a2)
{
  v4 = *a1;

  *a2 = v4;
  v6 = a1[1];
  swift_unknownObjectRetain();
  result = a2;
  a2[1] = v6;
  return result;
}

uint64_t ReactiveUpdateDialogsModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v19[1] = a1;
  v3 = v2;
  v23 = v3;
  v71 = 0;
  v70 = 0;
  v69 = 0;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE270, &qword_26B08F0C0);
  v20 = (*(*(v29 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v29);
  v31 = v19 - v20;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE278, &qword_26B08F0C8);
  v21 = (*(*(v32 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v32);
  v34 = v19 - v21;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE280, &qword_26B08F0D0);
  v22 = (*(*(v37 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v37);
  v39 = v19 - v22;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE288, &qword_26B08F0D8);
  v25 = *(*(v41 - 8) + 64);
  v24 = (v25 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v41);
  v43 = v19 - v24;
  v26 = (v25 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v19 - v24);
  v44 = v19 - v26;
  v71 = v19 - v26;
  v70 = a1;
  v35 = *(v5 + 8);
  v69 = v5;
  swift_unknownObjectRetain();
  v66 = sub_26AE9D030(v35);
  v67 = v6;
  v68 = v7;
  v28 = &v63;
  v63 = v66;
  v36 = 1;
  v64 = v6 & 1;
  v65 = v7;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE290, &qword_26B08F0E0);
  v8 = sub_26AFE71A0();
  MEMORY[0x26D66C890](v28, v27, &unk_287B905E0, v8);
  sub_26AE9F404(v28);
  swift_unknownObjectRetain();
  v60 = sub_26AFECC10(v35);
  v61 = v9;
  v62 = v10;
  v30 = &v57;
  v57 = v60;
  v58 = v9 & 1 & v36;
  v59 = v10;
  v11 = sub_26AFE7228();
  MEMORY[0x26D66C890](v30, v29, &unk_287B9BE88, v11);
  sub_26AFE7348(v30);
  sub_26AFE7380(v31);
  swift_unknownObjectRetain();
  v54 = sub_26AEEEB6C(v35);
  v55 = v12;
  v56 = v13;
  v33 = &v51;
  v51 = v54;
  v52 = v12 & 1 & v36;
  v53 = v13;
  v14 = sub_26AFE7424();
  MEMORY[0x26D66C890](v33, v32, &unk_287B94198, v14);
  sub_26AEF4420(v33);
  sub_26AFE7544(v34);
  swift_unknownObjectRetain();
  v48 = sub_26B022504(v35);
  v49 = v15;
  v50 = v16;
  v38 = &v45;
  v45 = v48;
  v46 = v15 & 1 & v36;
  v47 = v16;
  v17 = sub_26AFE7624();
  MEMORY[0x26D66C890](v38, v37, &unk_287B9C5A8, v17);
  sub_26AFE7744(v38);
  sub_26AFE777C(v39);
  v42 = sub_26AFE7898();
  sub_26AE9463C(v43, v41, v44);
  sub_26AFE79B8(v43);
  sub_26AFE7B10(v44, v43);
  sub_26AE94B4C(v43, v41, v40);
  sub_26AFE79B8(v43);
  return sub_26AFE79B8(v44);
}

unint64_t sub_26AFE71A0()
{
  v2 = qword_2803DE298;
  if (!qword_2803DE298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DE290, &qword_26B08F0E0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE298);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AFE7228()
{
  v2 = qword_2803DE2A0;
  if (!qword_2803DE2A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DE270, &qword_26B08F0C0);
    sub_26AFE71A0();
    sub_26AFE72D0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE2A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AFE72D0()
{
  v2 = qword_2803DE2A8;
  if (!qword_2803DE2A8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE2A8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AFE7380(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE290, &qword_26B08F0E0);
  (*(*(v1 - 8) + 8))(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE270, &qword_26B08F0C0);

  swift_unknownObjectRelease();
  return a1;
}

unint64_t sub_26AFE7424()
{
  v2 = qword_2803DE2B0;
  if (!qword_2803DE2B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DE278, &qword_26B08F0C8);
    sub_26AFE7228();
    sub_26AFE74CC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE2B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AFE74CC()
{
  v2 = qword_2803DE2B8;
  if (!qword_2803DE2B8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE2B8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AFE7544(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE290, &qword_26B08F0E0);
  (*(*(v1 - 8) + 8))(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE270, &qword_26B08F0C0);

  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE278, &qword_26B08F0C8);

  swift_unknownObjectRelease();
  return a1;
}

unint64_t sub_26AFE7624()
{
  v2 = qword_2803DE2C0;
  if (!qword_2803DE2C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DE280, &qword_26B08F0D0);
    sub_26AFE7424();
    sub_26AFE76CC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE2C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AFE76CC()
{
  v2 = qword_2803DE2C8;
  if (!qword_2803DE2C8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE2C8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AFE777C(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE290, &qword_26B08F0E0);
  (*(*(v1 - 8) + 8))(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE270, &qword_26B08F0C0);

  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE278, &qword_26B08F0C8);

  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE280, &qword_26B08F0D0);

  swift_unknownObjectRelease();
  return a1;
}

unint64_t sub_26AFE7898()
{
  v2 = qword_2803DE2D0;
  if (!qword_2803DE2D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DE288, &qword_26B08F0D8);
    sub_26AFE7624();
    sub_26AFE7940();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE2D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AFE7940()
{
  v2 = qword_2803DE2D8;
  if (!qword_2803DE2D8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE2D8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AFE79B8(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE290, &qword_26B08F0E0);
  (*(*(v1 - 8) + 8))(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE270, &qword_26B08F0C0);

  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE278, &qword_26B08F0C8);

  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE280, &qword_26B08F0D0);

  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE288, &qword_26B08F0D8);

  swift_unknownObjectRelease();
  return a1;
}

uint64_t sub_26AFE7B10(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE290, &qword_26B08F0E0);
  (*(*(v2 - 8) + 16))(a2, a1);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE270, &qword_26B08F0C0) + 36);
  v5 = *(a1 + v4);
  v6 = *(a1 + v4 + 8);

  v7 = a2 + v4;
  *v7 = v5;
  *(v7 + 8) = v6 & 1;
  v8 = *(a1 + v4 + 16);
  swift_unknownObjectRetain();
  *(v7 + 16) = v8;
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE278, &qword_26B08F0C8) + 36);
  v10 = *(a1 + v9);
  v11 = *(a1 + v9 + 8);

  v12 = a2 + v9;
  *v12 = v10;
  *(v12 + 8) = v11 & 1;
  v13 = *(a1 + v9 + 16);
  swift_unknownObjectRetain();
  *(v12 + 16) = v13;
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE280, &qword_26B08F0D0) + 36);
  v15 = *(a1 + v14);
  v16 = *(a1 + v14 + 8);

  v17 = a2 + v14;
  *v17 = v15;
  *(v17 + 8) = v16 & 1;
  v18 = *(a1 + v14 + 16);
  swift_unknownObjectRetain();
  *(v17 + 16) = v18;
  v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE288, &qword_26B08F0D8) + 36);
  v21 = *(a1 + v20);
  v22 = *(a1 + v20 + 8);

  v24 = a2 + v20;
  *v24 = v21;
  *(v24 + 8) = v22 & 1;
  v25 = *(a1 + v20 + 16);
  swift_unknownObjectRetain();
  result = a2;
  *(v24 + 16) = v25;
  return result;
}

uint64_t sub_26AFE7E4C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 16))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (*a1 < 0x100000000uLL)
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

uint64_t sub_26AFE7F90(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 - 1;
    }
  }

  return result;
}

uint64_t sub_26AFE818C()
{
  sub_26B078BF0();
  sub_26AFBE88C();
  return swift_getWitnessTable();
}

void *sub_26AFE820C@<X0>(void *a1@<X8>)
{
  memset(__b, 0, sizeof(__b));
  __b[0] = sub_26B079D00("", 0, 1);
  __b[1] = v1;
  memset(&__b[2], 0, 48);
  return memcpy(a1, __b, 0x40uLL);
}

uint64_t sub_26AFE8298(char a1)
{
  sub_26AFE87C0();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE2E0, &unk_26B08F2A0);
  sub_26B0787C0();
  return swift_endAccess();
}

uint64_t MockedComingSoonTip.titleText.getter()
{
  v2 = *v0;
  sub_26B078640();
  return v2;
}

uint64_t MockedComingSoonTip.titleText.setter(uint64_t a1, uint64_t a2)
{
  sub_26B078640();
  *v2 = a1;
  v2[1] = a2;
}

uint64_t MockedComingSoonTip.messageText.getter()
{
  v2 = *(v0 + 16);
  sub_26B078640();
  return v2;
}

uint64_t MockedComingSoonTip.messageText.setter(uint64_t a1, uint64_t a2)
{
  sub_26B078640();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t MockedComingSoonTip.learnMoreLink.getter()
{
  v2 = *(v0 + 32);
  sub_26B078640();
  return v2;
}

uint64_t MockedComingSoonTip.learnMoreLink.setter(uint64_t a1, uint64_t a2)
{
  sub_26B078640();
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t MockedComingSoonTip.imageSytemName.getter()
{
  v2 = *(v0 + 48);
  sub_26B078640();
  return v2;
}

uint64_t MockedComingSoonTip.imageSytemName.setter(uint64_t a1, uint64_t a2)
{
  sub_26B078640();
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
}

uint64_t sub_26AFE86DC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE2E0, &unk_26B08F2A0);
  __swift_allocate_value_buffer(v1, qword_2803E5710);
  __swift_project_value_buffer(v1, qword_2803E5710);
  sub_26B079D00("+shouldShowTip", 14, 1);
  sub_26B0786A0();
  sub_26B07A760();
  return sub_26B0787D0();
}

uint64_t sub_26AFE87C0()
{
  if (qword_2803DB490 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE2E0, &unk_26B08F2A0);
  return __swift_project_value_buffer(v0, qword_2803E5710);
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v5 = a2;
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v2 = swift_slowAlloc();
    *a2 = v2;
    return v2;
  }

  return v5;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    return *a2;
  }

  return v3;
}

uint64_t sub_26AFE892C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26AFE87C0();
  swift_beginAccess();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE2E0, &unk_26B08F2A0);
  (*(*(v1 - 8) + 16))(a1, v3);
  return swift_endAccess();
}

uint64_t sub_26AFE89BC(uint64_t a1)
{
  v9 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE2E0, &unk_26B08F2A0);
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v3 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10);
  v5 = &v2 - v3;
  v4 = sub_26AFE87C0();
  (*(v7 + 16))(v5, v9, v10);
  v6 = &v11;
  swift_beginAccess();
  (*(v7 + 40))(v4, v5, v10);
  swift_endAccess();
  return (*(v7 + 8))(v9, v10);
}

uint64_t sub_26AFE8B10()
{
  sub_26AFE87C0();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE2E0, &unk_26B08F2A0);
  sub_26B0787B0();
  swift_endAccess();
  return v1 & 1;
}

uint64_t MockedComingSoonTip.options.getter()
{
  v17 = MEMORY[0x277CE19C8];
  v22 = MEMORY[0x277CE19E8];
  v40 = 0;
  v39 = 0;
  memset(__b, 0, sizeof(__b));
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE2E8, &unk_26B08F520);
  v24 = *(v28 - 8);
  v25 = v28 - 8;
  v12 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v28);
  v26 = &v11 - v12;
  v13 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v11 - v12);
  v27 = &v11 - v13;
  v40 = &v11 - v13;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE2F0, &unk_26B08F2B0);
  v18 = *(v32 - 8);
  v19 = v32 - 8;
  v14 = (*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v32);
  v20 = &v11 - v14;
  v15 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v11 - v14);
  v31 = &v11 - v15;
  v39 = &v11 - v15;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[7];
  __b[0] = *v0;
  __b[1] = v3;
  __b[2] = v4;
  __b[3] = v5;
  __b[4] = v6;
  __b[5] = v7;
  __b[6] = v8;
  __b[7] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE2F8, &unk_26B08F530);
  v16 = sub_26B07A760();
  sub_26B078660();

  (*(v18 + 16))(v20, v31, v32);
  v23 = 1;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x26D66B860](v20, v32);
  v34 = *(v18 + 8);
  v33 = v18 + 8;
  v34(v20, v32);
  (*(v24 + 16))(v26, v27, v28);
  v36 = v32;
  v37 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v35 = sub_26B078670();
  v30 = *(v24 + 8);
  v29 = v24 + 8;
  v30(v26, v28);
  v30(v27, v28);
  v34(v31, v32);
  return v35;
}

uint64_t MockedComingSoonTip.title.getter()
{
  sub_26B078640();
  sub_26AE95974();
  return sub_26B0792E0();
}

uint64_t MockedComingSoonTip.message.getter()
{
  v4 = *(v0 + 24);
  sub_26B078640();
  if (!v4)
  {
    return 0;
  }

  sub_26B078640();
  sub_26AE95974();
  v2 = sub_26B0792E0();

  return v2;
}

uint64_t MockedComingSoonTip.image.getter()
{
  v8 = *(v0 + 48);
  v9 = *(v0 + 56);
  sub_26B078640();
  if (!v9)
  {
    return 0;
  }

  sub_26AF7E238();
  sub_26B078640();
  v1 = sub_26AFE92C8(v8, v9);
  v7 = v1;
  if (v1)
  {
    v5 = [v1 imageWithRenderingMode_];
    MEMORY[0x277D82BD8](v7);
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {

    return 0;
  }

  v3 = sub_26B079820();

  return v3;
}

id sub_26AFE92C8(uint64_t a1, uint64_t a2)
{
  v3 = sub_26B079DF0();
  v4 = [swift_getObjCClassFromMetadata() systemImageNamed_];
  MEMORY[0x277D82BD8](v3);

  return v4;
}

uint64_t MockedComingSoonTip.rules.getter()
{
  v20 = 0;
  v19 = sub_26AFE9570;
  v26 = v30;
  memset(v30, 0, sizeof(v30));
  v25 = &v28;
  v28 = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE2E0, &unk_26B08F2A0);
  v12 = *(v15 - 8);
  v13 = v15 - 8;
  v11 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v15);
  v18 = &v11 - v11;
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v30[1] = *v0;
  v30[2] = v1;
  v30[3] = v2;
  v30[4] = v3;
  v30[5] = v4;
  v30[6] = v5;
  v30[7] = v6;
  v30[8] = v7;
  v22 = sub_26B078770();
  v21 = sub_26B07A760();
  v17 = v8;
  v14 = sub_26AFE87C0();
  v16 = &v29;
  swift_beginAccess();
  (*(v12 + 16))(v18, v14, v15);
  swift_endAccess();
  sub_26B078780();
  sub_26AEA3B2C();
  v23 = v9;
  v24 = sub_26B078640();

  sub_26B078640();
  v30[0] = v24;
  v27 = sub_26B078640();

  sub_26B078640();
  v28 = v27;
  sub_26AFE9774(v25);
  sub_26AFE9774(v26);
  return v27;
}

uint64_t sub_26AFE9570@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v10 = a2;
  v9 = a1;
  v22 = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE308, &qword_26B08F3F0);
  v13 = *(v16 - 8);
  v14 = v16 - 8;
  v7 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v16);
  v15 = &v7 - v7;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE310, &qword_26B08F3F8);
  v17 = *(v20 - 8);
  v18 = v20 - 8;
  v8 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v9);
  v19 = &v7 - v8;
  v22 = v2;
  v12 = sub_26AFEA630();
  sub_26B078050();
  v21 = 1;
  sub_26B078040();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE320, &unk_26B08F400);
  v10[3] = v3;
  v4 = sub_26AFEA6B8();
  v5 = v10;
  v10[4] = v4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v5);
  sub_26AFEA888();
  sub_26B078030();
  (*(v13 + 8))(v15, v16);
  return (*(v17 + 8))(v19, v20);
}

uint64_t MockedComingSoonTip.actions.getter()
{
  v27 = sub_26AFEA090;
  v51 = 0;
  v50 = 0;
  v48 = 0;
  v49 = 0;
  v32 = 0;
  v28 = (*(*(sub_26B078300() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v29 = &v10[-v28 - 5];
  v1 = sub_26B079DE0();
  v30 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  v31 = &v10[-v30 - 5];
  v33 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC9E0, &qword_26B08F2C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v32);
  v34 = &v10[-v33 - 5];
  v35 = sub_26B0781B0();
  v37 = *(v35 - 8);
  v36 = v35 - 8;
  v38 = v37;
  v39 = *(v37 + 64);
  v40 = (v39 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v35);
  v41 = &v10[-v40 - 5];
  v42 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v10[-v40 - 5]);
  v43 = &v10[-v42 - 5];
  v51 = &v10[-v42 - 5];
  v44 = *(v0 + 32);
  v45 = *(v0 + 40);
  v50 = v0;
  sub_26B078640();
  if (!v45)
  {
    goto LABEL_7;
  }

  v25 = v44;
  v26 = v45;
  v24 = v45;
  v48 = v44;
  v49 = v45;
  sub_26B0781A0();
  v3 = (*(v37 + 48))(v34, 1, v35);
  if (v3 == 1)
  {
    sub_26AEC02C0(v34);

LABEL_7:
    v9 = 0;
    sub_26B0787A0();
    return sub_26B07A760();
  }

  v12 = v38;
  v15 = *(v37 + 32);
  v14 = v37 + 32;
  v15(v43, v34, v35);
  v17 = 0;
  v21 = sub_26B0787A0();
  v20 = sub_26B07A760();
  v16 = v4;
  *&v10[1] = 1;
  sub_26B079D00("Learn more…", 13, 0);
  sub_26B079D80();
  v11 = *sub_26B02D0D0();
  MEMORY[0x277D82BE0](v11);
  sub_26AEFB5C4();
  v46[2] = 0;
  v46[3] = 0;
  v47 = *v10 & 0x100;
  v5 = sub_26B079E40();
  v18 = v46;
  v46[0] = v5;
  v46[1] = v6;
  (*(v37 + 16))(v41, v43, v35);
  v13 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v19 = swift_allocObject();
  v15((v19 + v13), v41, v35);
  sub_26AE95974();
  sub_26B078790();
  sub_26AEA3B2C();
  v22 = v7;
  (*(v37 + 8))(v43, v35);

  return v22;
}

double sub_26AFE9D48(uint64_t a1)
{
  v11 = a1;
  v8 = "Fatal error";
  v9 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v10 = "SoftwareUpdateUIKit/MockedComingSoonTip.swift";
  v18 = 0;
  v12 = sub_26B0781B0();
  v13 = *(v12 - 8);
  v14 = v12 - 8;
  v15 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11);
  v16 = v3 - v15;
  v18 = v1;
  v17 = [objc_opt_self() defaultWorkspace];
  if (v17)
  {
    v7 = v17;
  }

  else
  {
    sub_26B07A650();
    __break(1u);
  }

  v6 = v7;
  (*(v13 + 16))(v16, v11, v12);
  v5 = sub_26B078180();
  (*(v13 + 8))(v16, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC2A8, ":N");
  sub_26B07A760();
  v3[1] = MEMORY[0x277D837D0];
  v3[2] = MEMORY[0x277D84F70] + 8;
  v3[3] = MEMORY[0x277D837E0];
  v3[4] = sub_26B079C90();
  v4 = sub_26B079C60();

  [v6 openSensitiveURL:v5 withOptions:v4];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  *&result = MEMORY[0x277D82BD8](v6).n128_u64[0];
  return result;
}

uint64_t sub_26AFE9FC4()
{
  v2 = *(sub_26B0781B0() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

double sub_26AFEA090()
{
  v1 = *(sub_26B0781B0() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_26AFE9D48(v2);
}

uint64_t sub_26AFEA1EC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = sub_26AF91C40();
  result = MEMORY[0x26D66B7B0](a1, v2);
  *a2 = result;
  a2[1] = v4;
  return result;
}

unint64_t sub_26AFEA244()
{
  v2 = qword_2803DE300;
  if (!qword_2803DE300)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE300);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AFEA2FC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 64))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (*(a1 + 8) < 0x100000000uLL)
      {
        v3 = *(a1 + 8);
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

uint64_t sub_26AFEA43C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 - 1;
    }
  }

  return result;
}

unint64_t sub_26AFEA630()
{
  v2 = qword_2803DE318;
  if (!qword_2803DE318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DE310, &qword_26B08F3F8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE318);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AFEA6B8()
{
  v2 = qword_2803DE328;
  if (!qword_2803DE328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DE320, &unk_26B08F400);
    sub_26AFEA760();
    sub_26AFEA7E8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE328);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AFEA760()
{
  v2 = qword_2803DE330;
  if (!qword_2803DE330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DE310, &qword_26B08F3F8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE330);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AFEA7E8()
{
  v2 = qword_2803DE338;
  if (!qword_2803DE338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DE308, &qword_26B08F3F0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE338);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AFEA888()
{
  v2 = qword_2803DE340;
  if (!qword_2803DE340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DE308, &qword_26B08F3F0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE340);
    return WitnessTable;
  }

  return v2;
}

void sub_26AFEA910(uint64_t a1@<X8>)
{
  *&v6 = sub_26B079D00("sparkles", 8, 1);
  *(&v6 + 1) = v1;
  sub_26AFEB1E8();
  v4 = sub_26AFEAA1C();
  [v4 operatingSystemVersion];
  MEMORY[0x277D82BD8](v4);
  if (__OFADD__(v5, 1))
  {
    __break(1u);
  }

  else
  {
    *a1 = v6;
    *(a1 + 16) = v5 + 1;
  }
}

uint64_t sub_26AFEA9DC()
{
  v2 = *v0;
  sub_26B078640();
  return v2;
}

uint64_t ConstellationComingSoonTip.id.getter()
{
  v4[2] = 0;
  v4[0] = sub_26B07A740();
  v4[1] = v0;
  v1 = sub_26B079D00("preview", 7, 1);
  MEMORY[0x26D66D910](v1);

  sub_26B07A710();
  v2 = sub_26B079D00("-mini-tip-see-whats-new", 23, 1);
  MEMORY[0x26D66D910](v2);

  sub_26B078640();
  sub_26AEB9F6C(v4);
  return sub_26B079EB0();
}

uint64_t ConstellationComingSoonTip.image.getter()
{
  v5 = *v0;
  v6 = v0[1];
  sub_26AF7E238();
  sub_26B078640();
  v7 = sub_26AFE92C8(v5, v6);
  if (v7)
  {
    v3 = [v7 imageWithRenderingMode_];
    MEMORY[0x277D82BD8](v7);
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    return sub_26B079820();
  }

  else
  {
    return 0;
  }
}

void ConstellationComingSoonTip.options.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE348, &qword_26B08F410);
  sub_26B07A760();
  v1 = v0;
  v0[3] = sub_26B0786B0();
  v1[4] = MEMORY[0x277CE1A00];
  __swift_allocate_boxed_opaque_existential_1(v1);
  sub_26B0786C0();
  sub_26AEA3B2C();
}

uint64_t sub_26AFEAE20@<X0>(uint64_t *a1@<X8>)
{
  result = ConstellationComingSoonTip.id.getter();
  *a1 = result;
  a1[1] = v2;
  return result;
}

unint64_t sub_26AFEAE68()
{
  v2 = qword_2803DE350;
  if (!qword_2803DE350)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE350);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AFEAEF0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 8)))
      {
        v3 = *(a1 + 8);
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

uint64_t sub_26AFEB008(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 - 1;
    }
  }

  return result;
}

unint64_t sub_26AFEB1E8()
{
  v2 = qword_2803DE358;
  if (!qword_2803DE358)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2803DE358);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t UserDefaultsBasedComingSoonTip.options.getter()
{
  v9 = MEMORY[0x277CE19C8];
  v14 = MEMORY[0x277CE19E8];
  v31 = 0;
  v30 = 0;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE2E8, &unk_26B08F520);
  v16 = *(v20 - 8);
  v17 = v20 - 8;
  v4 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v20);
  v18 = &v3 - v4;
  v5 = (v0 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v3 - v4);
  v19 = &v3 - v5;
  v31 = &v3 - v5;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE2F0, &unk_26B08F2B0);
  v10 = *(v24 - 8);
  v11 = v24 - 8;
  v6 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v24);
  v12 = &v3 - v6;
  v7 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v3 - v6);
  v23 = &v3 - v7;
  v30 = &v3 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE2F8, &unk_26B08F530);
  v8 = sub_26B07A760();
  sub_26B078660();

  (*(v10 + 16))(v12, v23, v24);
  v15 = 1;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x26D66B860](v12, v24);
  v26 = *(v10 + 8);
  v25 = v10 + 8;
  v26(v12, v24);
  (*(v16 + 16))(v18, v19, v20);
  v28 = v24;
  v29 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v27 = sub_26B078670();
  v22 = *(v16 + 8);
  v21 = v16 + 8;
  v22(v18, v20);
  v22(v19, v20);
  v26(v23, v24);
  return v27;
}

uint64_t UserDefaultsBasedComingSoonTip.title.getter()
{
  v7 = [objc_opt_self() sharedDefaults];
  v8 = [v7 comingSoonTipTitle];
  if (v8)
  {
    sub_26B079E00();
    v5 = v0;
    MEMORY[0x277D82BD8](v8);
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    MEMORY[0x277D82BD8](v7);
    sub_26B078640();
    sub_26AE95974();
    v3 = sub_26B0792E0();

    return v3;
  }

  else
  {
    *&v1 = MEMORY[0x277D82BD8](v7).n128_u64[0];
    sub_26B079D00("", v1);
    sub_26B078E10();
    return sub_26B0792C0();
  }
}

uint64_t UserDefaultsBasedComingSoonTip.message.getter()
{
  v6 = [objc_opt_self() sharedDefaults];
  v7 = [v6 comingSoonTipMessage];
  if (v7)
  {
    sub_26B079E00();
    v4 = v0;
    MEMORY[0x277D82BD8](v7);
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  MEMORY[0x277D82BD8](v6);
  if (!v5)
  {
    return 0;
  }

  sub_26B078640();
  sub_26AE95974();
  v2 = sub_26B0792E0();

  return v2;
}

uint64_t UserDefaultsBasedComingSoonTip.image.getter()
{
  v12 = [objc_opt_self() sharedDefaults];
  v13 = [v12 comingSoonTipImageSystemName];
  if (v13)
  {
    v8 = sub_26B079E00();
    v9 = v0;
    MEMORY[0x277D82BD8](v13);
    v10 = v8;
    v11 = v9;
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  if (!v11)
  {
    MEMORY[0x277D82BD8](v12);
    return 0;
  }

  MEMORY[0x277D82BD8](v12);
  sub_26AF7E238();
  sub_26B078640();
  v1 = sub_26AFE92C8(v10, v11);
  v7 = v1;
  if (v1)
  {
    v5 = [v1 imageWithRenderingMode_];
    MEMORY[0x277D82BD8](v7);
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {

    return 0;
  }

  v3 = sub_26B079820();

  return v3;
}

uint64_t UserDefaultsBasedComingSoonTip.actions.getter()
{
  v36 = sub_26AFEC6A8;
  v59 = 0;
  v57 = 0;
  v58 = 0;
  v41 = 0;
  v37 = (*(*(sub_26B078300() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v38 = &v10[-v37 - 5];
  v0 = sub_26B079DE0();
  v39 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v0);
  v40 = &v10[-v39 - 5];
  v42 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC9E0, &qword_26B08F2C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v41);
  v43 = &v10[-v42 - 5];
  v44 = sub_26B0781B0();
  v46 = *(v44 - 8);
  v45 = v44 - 8;
  v47 = v46;
  v48 = *(v46 + 64);
  v49 = (v48 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v44);
  v50 = &v10[-v49 - 5];
  v51 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v10[-v49 - 5]);
  v52 = &v10[-v51 - 5];
  v59 = &v10[-v51 - 5];
  v53 = [objc_opt_self() sharedDefaults];
  v54 = [v53 comingSoonTipLearnMoreLink];
  if (v54)
  {
    v35 = v54;
    v30 = v54;
    v31 = sub_26B079E00();
    v32 = v2;
    MEMORY[0x277D82BD8](v30);
    v33 = v31;
    v34 = v32;
  }

  else
  {
    v33 = 0;
    v34 = 0;
  }

  v28 = v34;
  v29 = v33;
  if (!v34)
  {
    MEMORY[0x277D82BD8](v53);
LABEL_10:
    v9 = 0;
    sub_26B0787A0();
    return sub_26B07A760();
  }

  v26 = v29;
  v27 = v28;
  v25 = v28;
  v24 = v29;
  v57 = v29;
  v58 = v28;
  MEMORY[0x277D82BD8](v53);
  sub_26B0781A0();
  v3 = (*(v46 + 48))(v43, 1, v44);
  if (v3 == 1)
  {
    sub_26AEC02C0(v43);

    goto LABEL_10;
  }

  v12 = v47;
  v15 = *(v46 + 32);
  v14 = v46 + 32;
  v15(v52, v43, v44);
  v17 = 0;
  v21 = sub_26B0787A0();
  v20 = sub_26B07A760();
  v16 = v4;
  *&v10[1] = 1;
  sub_26B079D00("Learn more…", 13, 0);
  sub_26B079D80();
  v11 = *sub_26B02D0D0();
  MEMORY[0x277D82BE0](v11);
  sub_26AEFB5C4();
  v55[2] = 0;
  v55[3] = 0;
  v56 = *v10 & 0x100;
  v5 = sub_26B079E40();
  v18 = v55;
  v55[0] = v5;
  v55[1] = v6;
  (*(v46 + 16))(v50, v52, v44);
  v13 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v19 = swift_allocObject();
  v15((v19 + v13), v50, v44);
  sub_26AE95974();
  sub_26B078790();
  sub_26AEA3B2C();
  v22 = v7;
  (*(v46 + 8))(v52, v44);

  return v22;
}

double sub_26AFEC360(uint64_t a1)
{
  v11 = a1;
  v8 = "Fatal error";
  v9 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v10 = "SoftwareUpdateUIKit/UserDefaultsBasedComingSoonTip.swift";
  v18 = 0;
  v12 = sub_26B0781B0();
  v13 = *(v12 - 8);
  v14 = v12 - 8;
  v15 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11);
  v16 = v3 - v15;
  v18 = v1;
  v17 = [objc_opt_self() defaultWorkspace];
  if (v17)
  {
    v7 = v17;
  }

  else
  {
    sub_26B07A650();
    __break(1u);
  }

  v6 = v7;
  (*(v13 + 16))(v16, v11, v12);
  v5 = sub_26B078180();
  (*(v13 + 8))(v16, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC2A8, ":N");
  sub_26B07A760();
  v3[1] = MEMORY[0x277D837D0];
  v3[2] = MEMORY[0x277D84F70] + 8;
  v3[3] = MEMORY[0x277D837E0];
  v3[4] = sub_26B079C90();
  v4 = sub_26B079C60();

  [v6 openSensitiveURL:v5 withOptions:v4];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  *&result = MEMORY[0x277D82BD8](v6).n128_u64[0];
  return result;
}

uint64_t sub_26AFEC5DC()
{
  v2 = *(sub_26B0781B0() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

double sub_26AFEC6A8()
{
  v1 = *(sub_26B0781B0() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_26AFEC360(v2);
}

uint64_t sub_26AFEC804@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = sub_26AF91D88();
  result = MEMORY[0x26D66B7B0](a1, v2);
  *a2 = result;
  a2[1] = v4;
  return result;
}

unint64_t sub_26AFEC85C()
{
  v2 = qword_2803DE360;
  if (!qword_2803DE360)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE360);
    return WitnessTable;
  }

  return v2;
}

uint64_t getEnumTagSinglePayload for UserDefaultsBasedComingSoonTip(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    v6 = 1;
    if ((a2 + 1) >= 0x100)
    {
      if ((a2 + 1) >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v6 = v2;
    }

    if (v6 == 1)
    {
      v5 = *a1;
    }

    else if (v6 == 2)
    {
      v5 = *a1;
    }

    else
    {
      v5 = *a1;
    }

    if (v5)
    {
      v4 = v5 - 1;
    }

    else
    {
      v4 = -1;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

_BYTE *storeEnumTagSinglePayload for UserDefaultsBasedComingSoonTip(_BYTE *result, int a2, int a3)
{
  v5 = 0;
  if (a3)
  {
    v4 = 1;
    if ((a3 + 1) >= 0x100)
    {
      if ((a3 + 1) >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v4 = v3;
    }

    v5 = v4;
  }

  if (a2)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        *result = a2;
      }

      else if (v5 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }
  }

  else if (v5)
  {
    if (v5 == 1)
    {
      *result = 0;
    }

    else if (v5 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t sub_26AFECC10(uint64_t a1)
{
  v5 = 0;
  v6 = 0;
  v7 = 0;
  swift_getKeyPath();
  sub_26B078A30();

  v5 = v3;
  LOBYTE(v6) = v4 & 1;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v7 = a1;
  swift_unknownObjectRelease();
  sub_26AFE7348(&v5);
  return v3;
}

uint64_t sub_26AFECD1C(uint64_t a1, char a2, uint64_t a3)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DB510, &qword_26B086040);
  sub_26B078A10();

  return v4;
}

uint64_t sub_26AFECDF4(uint64_t a1, char a2)
{

  *v2 = a1;
  *(v2 + 8) = a2 & 1;
}

uint64_t sub_26AFECE7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v61 = a5;
  v32 = a1;
  v35 = MEMORY[0x277D85700];
  v38 = sub_26AFED7D8;
  v37 = sub_26AFED878;
  v41 = sub_26AFEE104;
  v43 = sub_26AFF0648;
  v58 = MEMORY[0x277CDEDF8];
  v91 = 0;
  v90 = 0;
  v87 = 0;
  v88 = 0;
  v89 = 0;
  v92 = a2;
  v93 = a3;
  v94 = a4;
  v45 = a2;
  LODWORD(v39) = a3;
  v46 = a4;
  v29 = 0;
  v22 = (*(*(sub_26B078300() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v28 = &v22 - v22;
  v5 = sub_26B079DE0();
  v23 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v26 = &v22 - v23;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE368, &qword_26B08F668);
  v59 = *(v65 - 8);
  v60 = v65 - 8;
  v25 = *(v59 + 64);
  v24 = (v25 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v32);
  v63 = &v22 - v24;
  v7 = MEMORY[0x28223BE20](v6);
  v64 = &v22 - v8;
  v91 = &v22 - v8;
  v90 = v9;
  v87 = v10;
  HIDWORD(v39) = 1;
  LOBYTE(v88) = v39 & 1;
  v89 = v46;
  sub_26B079D00("Use Cellular Data to Download?", 30, 1, v7);
  sub_26B079D80();
  v27 = *sub_26B02D0D0();
  MEMORY[0x277D82BE0](v27);
  sub_26AEFB5C4();
  v85[2] = 0;
  v85[3] = 0;
  v86 = *(&v39 + 3) & 0x100;
  v11 = sub_26B079E40();
  v49 = v85;
  v85[0] = v11;
  v85[1] = v12;

  swift_unknownObjectRetain();
  v30 = sub_26B07A130();
  v31 = sub_26B07A120();
  v33 = 7;
  v13 = swift_allocObject();
  v14 = v35;
  v15 = v39;
  v16 = BYTE4(v39);
  v17 = v45;
  v18 = v46;
  v36 = v13;
  *(v13 + 16) = v31;
  *(v13 + 24) = v14;
  *(v13 + 32) = v17;
  *(v13 + 40) = v15 & 1 & v16;
  *(v13 + 48) = v18;
  v34 = sub_26B07A120();
  v19 = swift_allocObject();
  v20 = v35;
  *(v19 + 16) = v34;
  *(v19 + 24) = v20;
  sub_26B0799F0();
  v47 = v82;
  v48 = v83;
  v40 = v84;

  swift_unknownObjectRetain();
  v42 = v71;
  v71[2] = v45;
  v72 = v39 & 1 & BYTE4(v39);
  v73 = v46;

  swift_unknownObjectRetain();
  v44 = v68;
  v68[2] = v45;
  v69 = v39 & 1 & BYTE4(v39);
  v70 = v46;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DE370, &unk_26B08F670);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC748, &qword_26B08A188);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE380, &qword_26B08F680);
  v54 = sub_26AFF0680();
  v55 = sub_26AE95974();
  v56 = sub_26AEFDA40();
  v57 = sub_26AFF0708();
  v51 = MEMORY[0x277D837D0];
  sub_26B0795E0();

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  sub_26AE9BCC0(v49);
  v74 = v50;
  v75 = v51;
  v76 = v52;
  v77 = v53;
  v78 = v54;
  v79 = v55;
  v80 = v56;
  v81 = v57;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_26AE9463C(v63, v65, v64);
  v67 = *(v59 + 8);
  v66 = v59 + 8;
  v67(v63, v65);
  (*(v59 + 16))(v63, v64, v65);
  sub_26AE94B4C(v63, v65, v61);
  v67(v63, v65);
  return (v67)(v64, v65);
}

uint64_t sub_26AFED52C@<X0>(uint64_t a1@<X2>, char a2@<W3>, uint64_t a3@<X4>, unsigned __int8 *a4@<X8>)
{
  v18 = a1;
  v19 = a2;
  v20 = a3;
  v15 = a1;
  v16 = a2 & 1;
  v17 = a3;

  v13 = a1;
  v14 = a2 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DB510, &qword_26B086040);
  sub_26B078A10();

  ReactiveUIManager.presentedDialog.getter(v11);
  if (v12 == 255)
  {
  }

  else
  {
    v6 = v11[0];
    if (v12 == 3)
    {

      swift_unknownObjectRelease();

      swift_getObjectType();
      swift_unknownObjectRetain();
      swift_getObjectType();
      v5 = [v6 isEqual_];
      swift_unknownObjectRelease();
      *a4 = v5;
      return swift_unknownObjectRelease();
    }

    sub_26AEA00D4(v11[0], v11[1], v11[2], v11[3], v11[4], v12);
  }

  *a4 = 0;
  return result;
}

uint64_t sub_26AFED788()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return swift_deallocObject();
}

uint64_t sub_26AFED884@<X0>(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v30 = a4;
  v49 = sub_26AFF0F40;
  v31 = sub_26AFF0FC0;
  v73 = 0;
  v70 = 0;
  v71 = 0;
  v72 = 0;
  v67 = 0;
  v74 = a1;
  v75 = a2;
  v76 = a3;
  v45 = a1;
  LODWORD(v46) = a2;
  v47 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC758, &unk_26B08F810);
  v32 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4);
  v48 = &v23 - v32;
  v44 = 0;
  v33 = (*(*(sub_26B078300() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v44);
  v43 = &v23 - v33;
  v5 = sub_26B079DE0();
  v34 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v41 = &v23 - v34;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDD20, &qword_26B0881A0);
  v55 = *(v57 - 8);
  v56 = v57 - 8;
  v40 = v55[8];
  v35 = (v40 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v57);
  v36 = &v23 - v35;
  v37 = (v40 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v23 - v35);
  v38 = &v23 - v37;
  v39 = (v40 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v23 - v37);
  v60 = &v23 - v39;
  v6 = MEMORY[0x28223BE20](&v23 - v39);
  v53 = &v23 - v7;
  v73 = &v23 - v7;
  v70 = v8;
  HIDWORD(v46) = 1;
  LOBYTE(v71) = v46 & 1;
  v72 = v47;
  sub_26B079D00("Cancel", 6, 1, v6);
  sub_26B079D80();
  v42 = *sub_26B02D0D0();
  MEMORY[0x277D82BE0](v42);
  sub_26AEFB5C4();
  v68[2] = 0;
  v68[3] = 0;
  v69 = *(&v46 + 3) & 0x100;
  v9 = sub_26B079E40();
  v51 = v68;
  v68[0] = v9;
  v68[1] = v10;
  sub_26B078970();
  v11 = sub_26B078980();
  (*(*(v11 - 8) + 56))(v48, 0, HIDWORD(v46));

  swift_unknownObjectRetain();
  v12 = swift_allocObject();
  v13 = v46;
  v14 = BYTE4(v46);
  v15 = v47;
  v50 = v12;
  *(v12 + 16) = v45;
  *(v12 + 24) = v13 & 1 & v14;
  *(v12 + 32) = v15;
  v52 = sub_26AE95974();
  sub_26B079910();
  v54 = sub_26AE9C224();
  sub_26AE9463C(v60, v57, v53);
  v58 = v55[1];
  v59 = v55 + 1;
  v58(v60, v57);
  v67 = v60;
  *&v25[1] = 1;
  sub_26B079D00("Continue", 8, 1);
  sub_26B079D80();
  v24 = *sub_26B02D0D0();
  MEMORY[0x277D82BE0](v24);
  sub_26AEFB5C4();
  v65[2] = 0;
  v65[3] = 0;
  v66 = *v25 & 0x100;
  v16 = sub_26B079E40();
  v26 = v65;
  v65[0] = v16;
  v65[1] = v17;

  swift_unknownObjectRetain();
  v18 = swift_allocObject();
  v19 = v46;
  v20 = v25[1];
  v21 = v47;
  *(v18 + 16) = v45;
  *(v18 + 24) = v19 & 1 & v20;
  *(v18 + 32) = v21;
  sub_26B079920();
  sub_26AE9463C(v38, v57, v60);
  v58(v38, v57);
  v28 = v55[2];
  v27 = v55 + 2;
  v28(v38, v53, v57);
  v29 = v64;
  v64[0] = v38;
  v28(v36, v60, v57);
  v64[1] = v36;
  v63[0] = v57;
  v63[1] = v57;
  v61 = v54;
  v62 = v54;
  sub_26AFD49C4(v29, 2uLL, v63, v30);
  v58(v36, v57);
  v58(v38, v57);
  v58(v60, v57);
  return (v58)(v53, v57);
}

uint64_t sub_26AFEE13C(uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  v62 = 0;
  v87 = 0;
  v86 = 0;
  v85 = 0;
  v71 = 0;
  v70 = 0;
  v49 = 0;
  v88 = a1;
  v89 = a2;
  v90 = a3;
  v57 = a1;
  v50 = a1;
  v58 = a2;
  v51 = a2;
  v52 = a3;
  v53 = sub_26B078580();
  v54 = *(v53 - 8);
  v55 = v54;
  v56 = *(v54 + 64);
  MEMORY[0x28223BE20](v53 - 8);
  v59 = v7 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = v57;
  LOBYTE(v86) = v58;
  v87 = v3;
  sub_26B078550();
  v64 = sub_26B078570();
  v60 = v64;
  v63 = sub_26B07A2A0();
  v61 = v63;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00, &unk_26B088A40);
  v65 = sub_26B07A760();
  if (os_log_type_enabled(v64, v63))
  {
    v4 = v49;
    v40 = sub_26B07A420();
    v36 = v40;
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0, &unk_26B087440);
    v38 = 0;
    v41 = sub_26AEA3B70(0, v37, v37);
    v39 = v41;
    v42 = sub_26AEA3B70(v38, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v69 = v40;
    v68 = v41;
    v67 = v42;
    v43 = 0;
    v44 = &v69;
    sub_26AEA3BC4(0, &v69);
    sub_26AEA3BC4(v43, v44);
    v66 = v65;
    v45 = v7;
    MEMORY[0x28223BE20](v7);
    v46 = &v7[-6];
    v7[-4] = v5;
    v7[-3] = &v68;
    v7[-2] = &v67;
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB10, &qword_26B088A50);
    sub_26AE9CC18();
    sub_26B079FF0();
    v48 = v4;
    if (v4)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_26AE88000, v60, v61, "User Action: Clicked 'Cancel' on the cellular data usage warning dialog.", v36, 2u);
      v34 = 0;
      sub_26AEA3C24(v39, 0, v37);
      sub_26AEA3C24(v42, v34, MEMORY[0x277D84F70] + 8);
      sub_26B07A400();

      v35 = v48;
    }
  }

  else
  {

    v35 = v49;
  }

  (*(v55 + 8))(v59, v53);

  v83 = v50;
  v84 = v51 & 1;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DB510, &qword_26B086040);
  sub_26B078A10();
  v27 = v82;

  ReactiveUIManager.presentedDialog.getter(v80);
  v28 = v80[0];
  v29 = v80[1];
  v30 = v80[2];
  v31 = v80[3];
  v32 = v80[4];
  v33 = v81;
  if (v81 != 255)
  {
    v20 = v28;
    v21 = v29;
    v22 = v30;
    v23 = v31;
    v24 = v32;
    v25 = v33;
    v14 = v25;
    v15 = v24;
    v16 = v23;
    v17 = v22;
    v18 = v21;
    v19 = v20;
    if (v25 == 3)
    {
      v10 = v19;
      v11 = v18;
      v12 = v17;
      v13 = v16;
      v9 = v16;
      v8 = v17;
      v7[2] = v19;
      v70 = v17;
      v71 = v16;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      v8(2);
    }

    else
    {
      sub_26AEA00D4(v19, v18, v17, v16, v15, v14);
    }
  }

  v78 = v50;
  v79 = v51 & 1;
  sub_26B078A10();
  v7[1] = v77;

  v72 = 0uLL;
  v73 = 0;
  v74 = 0;
  v75 = 0;
  v76 = -1;
  ReactiveUIManager.presentedDialog.setter(&v72);
}

uint64_t sub_26AFEE94C(uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  v62 = 0;
  v87 = 0;
  v86 = 0;
  v85 = 0;
  v71 = 0;
  v70 = 0;
  v49 = 0;
  v88 = a1;
  v89 = a2;
  v90 = a3;
  v57 = a1;
  v50 = a1;
  v58 = a2;
  v51 = a2;
  v52 = a3;
  v53 = sub_26B078580();
  v54 = *(v53 - 8);
  v55 = v54;
  v56 = *(v54 + 64);
  MEMORY[0x28223BE20](v53 - 8);
  v59 = v7 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = v57;
  LOBYTE(v86) = v58;
  v87 = v3;
  sub_26B078550();
  v64 = sub_26B078570();
  v60 = v64;
  v63 = sub_26B07A2A0();
  v61 = v63;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00, &unk_26B088A40);
  v65 = sub_26B07A760();
  if (os_log_type_enabled(v64, v63))
  {
    v4 = v49;
    v40 = sub_26B07A420();
    v36 = v40;
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0, &unk_26B087440);
    v38 = 0;
    v41 = sub_26AEA3B70(0, v37, v37);
    v39 = v41;
    v42 = sub_26AEA3B70(v38, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v69 = v40;
    v68 = v41;
    v67 = v42;
    v43 = 0;
    v44 = &v69;
    sub_26AEA3BC4(0, &v69);
    sub_26AEA3BC4(v43, v44);
    v66 = v65;
    v45 = v7;
    MEMORY[0x28223BE20](v7);
    v46 = &v7[-6];
    v7[-4] = v5;
    v7[-3] = &v68;
    v7[-2] = &v67;
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB10, &qword_26B088A50);
    sub_26AE9CC18();
    sub_26B079FF0();
    v48 = v4;
    if (v4)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_26AE88000, v60, v61, "User Action: Clicked 'Continue' on the cellular data usage warning dialog.", v36, 2u);
      v34 = 0;
      sub_26AEA3C24(v39, 0, v37);
      sub_26AEA3C24(v42, v34, MEMORY[0x277D84F70] + 8);
      sub_26B07A400();

      v35 = v48;
    }
  }

  else
  {

    v35 = v49;
  }

  (*(v55 + 8))(v59, v53);

  v83 = v50;
  v84 = v51 & 1;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DB510, &qword_26B086040);
  sub_26B078A10();
  v27 = v82;

  ReactiveUIManager.presentedDialog.getter(v80);
  v28 = v80[0];
  v29 = v80[1];
  v30 = v80[2];
  v31 = v80[3];
  v32 = v80[4];
  v33 = v81;
  if (v81 != 255)
  {
    v20 = v28;
    v21 = v29;
    v22 = v30;
    v23 = v31;
    v24 = v32;
    v25 = v33;
    v14 = v25;
    v15 = v24;
    v16 = v23;
    v17 = v22;
    v18 = v21;
    v19 = v20;
    if (v25 == 3)
    {
      v10 = v19;
      v11 = v18;
      v12 = v17;
      v13 = v16;
      v9 = v16;
      v8 = v17;
      v7[2] = v19;
      v70 = v17;
      v71 = v16;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      v8(0);
    }

    else
    {
      sub_26AEA00D4(v19, v18, v17, v16, v15, v14);
    }
  }

  v78 = v50;
  v79 = v51 & 1;
  sub_26B078A10();
  v7[1] = v77;

  v72 = 0uLL;
  v73 = 0;
  v74 = 0;
  v75 = 0;
  v76 = -1;
  ReactiveUIManager.presentedDialog.setter(&v72);
}

uint64_t sub_26AFEF158@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v289 = 0;
  v288 = 0;
  memset(__b, 0, 0x22uLL);
  memset(v286, 0, 0x21uLL);
  v284 = 0u;
  v285 = 0u;
  v272 = 0u;
  v273 = 0u;
  memset(v260, 0, 0x21uLL);
  memset(v249, 0, 0x22uLL);
  v237 = 0u;
  v238 = 0u;
  v225 = 0u;
  v226 = 0u;
  memset(v213, 0, 0x21uLL);
  v211 = 0u;
  v212 = 0u;
  v199 = 0u;
  v200 = 0u;
  memset(v187, 0, 0x21uLL);
  v175 = 0u;
  v176 = 0u;
  v163 = 0u;
  v164 = 0u;
  v315 = a1;
  v316 = a2;
  v317 = a3;
  v312 = a1;
  v313 = a2 & 1;
  v314 = a3;

  v305 = a1;
  v306 = a2 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DB510, &qword_26B086040);
  sub_26B078A10();

  ReactiveUIManager.presentedDialog.getter(&v299);
  v151 = v299;
  if (v304 == 255)
  {

LABEL_17:
    memset(v292, 0, sizeof(v292));
    v293 = -256;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE3A0, &unk_26B08F688);
    sub_26AFF07A0();
    sub_26AF09CCC(v292, v22, &v294);
    v23 = v294;
    v24 = v295;
    v25 = v296;
    v26 = v297;
    v27 = v298;
    sub_26AFF0CF0(v294, v295, v296, v297, v298);
    v307 = v23;
    v308 = v24;
    v309 = v25;
    v310 = v26;
    v311 = v27;
    v40 = v23;
    v41 = v24;
    v42 = v25;
    v43 = v26;
    v44 = v27;
    goto LABEL_18;
  }

  v146 = v300;
  if (v304 != 3)
  {
    sub_26AEA00D4(v299, v300, v301, v302, v303, v304);

    goto LABEL_17;
  }

  v289 = v299;
  v288 = v300;

  swift_getObjectType();
  swift_unknownObjectRetain();
  v145 = [v146 isDownloadFreeForCellular];
  swift_unknownObjectRelease();
  if (v145)
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v144 = [v151 isSplatUpdate];
    swift_unknownObjectRelease();
    if (v144)
    {
      HIBYTE(v133) = 1;
      sub_26B079D00("If you download the security response over your cellular network, additional usage fees may apply.", 98, 1);
      sub_26B078E10();
      v4 = sub_26B02D0D0();
      MEMORY[0x277D82BE0](*v4);
      v172 = 0;
      v173 = 0;
      v174 = v133 & 0x100;
      v168 = sub_26B0792C0();
      v169 = v5;
      v170 = v6;
      v171 = v7;
      v165[0] = v168;
      v165[1] = v5;
      v166 = v6 & 1;
      v167 = v7;
      v131 = MEMORY[0x277CE0BD8];
      v132 = MEMORY[0x277CE0BC8];
      sub_26AE9463C(v165, MEMORY[0x277CE0BD8], &v175);
      sub_26AE95B40(v165);
      v125 = v175;
      v126 = v176;
      v127 = *(&v176 + 1);
      sub_26AE95D28(v175, *(&v175 + 1), v176 & 1);
      sub_26B078640();
      v160 = v125;
      v161 = v126 & 1;
      v162 = v127;
      sub_26AE94B4C(&v160, v131, &v163);
      sub_26AE95B40(&v160);
      v128 = v163;
      v129 = v164;
      v130 = *(&v164 + 1);
      sub_26AE95D28(v163, *(&v163 + 1), v164 & 1);
      sub_26B078640();
      v152 = v128;
      v153 = v129 & 1;
      v154 = v130;
      sub_26AE94BB0(&v152, v131, v131, v132, v132, &v155);
      sub_26AE95B40(&v152);
      v135 = v155;
      v136 = v156;
      v137 = v157;
      v138 = v158;
      v134 = v159;
      sub_26AEB4364(v155, v156, v157, v158);
      v213[0] = v135;
      v213[1] = v136;
      v213[2] = v137;
      v213[3] = v138;
      LOBYTE(v213[4]) = v134 & 1;
      sub_26AE95B40(&v163);
      sub_26AE95B40(&v175);
      v139 = v135;
      v140 = v136;
      v141 = v137;
      v142 = v138;
      v143 = v134;
    }

    else
    {
      HIBYTE(v119) = 1;
      sub_26B079D00("If you download the update over your cellular network, additional usage fees may apply.", 87, 1);
      sub_26B078E10();
      v8 = sub_26B02D0D0();
      MEMORY[0x277D82BE0](*v8);
      v208 = 0;
      v209 = 0;
      v210 = v119 & 0x100;
      v204 = sub_26B0792C0();
      v205 = v9;
      v206 = v10;
      v207 = v11;
      v201[0] = v204;
      v201[1] = v9;
      v202 = v10 & 1;
      v203 = v11;
      v117 = MEMORY[0x277CE0BD8];
      v118 = MEMORY[0x277CE0BC8];
      sub_26AE9463C(v201, MEMORY[0x277CE0BD8], &v211);
      sub_26AE95B40(v201);
      v111 = v211;
      v112 = v212;
      v113 = *(&v212 + 1);
      sub_26AE95D28(v211, *(&v211 + 1), v212 & 1);
      sub_26B078640();
      v196 = v111;
      v197 = v112 & 1;
      v198 = v113;
      sub_26AE94B4C(&v196, v117, &v199);
      sub_26AE95B40(&v196);
      v114 = v199;
      v115 = v200;
      v116 = *(&v200 + 1);
      sub_26AE95D28(v199, *(&v199 + 1), v200 & 1);
      sub_26B078640();
      v188 = v114;
      v189 = v115 & 1;
      v190 = v116;
      sub_26AE94CA8(&v188, v117, v117, v118, v118, &v191);
      sub_26AE95B40(&v188);
      v121 = v191;
      v122 = v192;
      v123 = v193;
      v124 = v194;
      v120 = v195;
      sub_26AEB4364(v191, v192, v193, v194);
      v213[0] = v121;
      v213[1] = v122;
      v213[2] = v123;
      v213[3] = v124;
      LOBYTE(v213[4]) = v120 & 1;
      sub_26AE95B40(&v199);
      sub_26AE95B40(&v211);
      v139 = v121;
      v140 = v122;
      v141 = v123;
      v142 = v124;
      v143 = v120;
    }

    v185[0] = v139;
    v185[1] = v140;
    v185[2] = v141;
    v185[3] = v142;
    v186 = v143 & 1;
    v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCB40, &unk_26B08AC20);
    v98 = sub_26AEB349C();
    sub_26AE94B4C(v185, v97, v187);
    sub_26AEB450C(v185);
    v92 = v187[0];
    v93 = v187[1];
    v94 = v187[2];
    v95 = v187[3];
    v96 = v187[4];
    sub_26AEB4364(v187[0], v187[1], v187[2], v187[3]);
    v177[0] = v92;
    v177[1] = v93;
    v177[2] = v94;
    v177[3] = v95;
    v178 = v96 & 1;
    sub_26AE94BB0(v177, v97, v97, v98, v98, &v179);
    sub_26AEB450C(v177);
    v100 = v179;
    v101 = v180;
    v102 = v181;
    v103 = v182;
    v104 = v183;
    v99 = v184;
    sub_26AFF0D5C(v179, v180, v181, v182);
    __b[0] = v100;
    __b[1] = v101;
    __b[2] = v102;
    __b[3] = v103;
    LOBYTE(__b[4]) = v104;
    BYTE1(__b[4]) = v99 & 1;
    sub_26AEB450C(v187);
    sub_26AEB450C(v213);
    v105 = v100;
    v106 = v101;
    v107 = v102;
    v108 = v103;
    v109 = v104;
    v110 = v99;
  }

  else
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v91 = [v151 isSplatUpdate];
    swift_unknownObjectRelease();
    if (v91)
    {
      HIBYTE(v80) = 1;
      sub_26B079D00("If you download the security response over your cellular network, additional usage fees will apply.", 99, 1);
      sub_26B078E10();
      v12 = sub_26B02D0D0();
      MEMORY[0x277D82BE0](*v12);
      v234 = 0;
      v235 = 0;
      v236 = v80 & 0x100;
      v230 = sub_26B0792C0();
      v231 = v13;
      v232 = v14;
      v233 = v15;
      v227[0] = v230;
      v227[1] = v13;
      v228 = v14 & 1;
      v229 = v15;
      v78 = MEMORY[0x277CE0BD8];
      v79 = MEMORY[0x277CE0BC8];
      sub_26AE9463C(v227, MEMORY[0x277CE0BD8], &v237);
      sub_26AE95B40(v227);
      v72 = v237;
      v73 = v238;
      v74 = *(&v238 + 1);
      sub_26AE95D28(v237, *(&v237 + 1), v238 & 1);
      sub_26B078640();
      v222 = v72;
      v223 = v73 & 1;
      v224 = v74;
      sub_26AE94B4C(&v222, v78, &v225);
      sub_26AE95B40(&v222);
      v75 = v225;
      v76 = v226;
      v77 = *(&v226 + 1);
      sub_26AE95D28(v225, *(&v225 + 1), v226 & 1);
      sub_26B078640();
      v214 = v75;
      v215 = v76 & 1;
      v216 = v77;
      sub_26AE94BB0(&v214, v78, v78, v79, v79, &v217);
      sub_26AE95B40(&v214);
      v82 = v217;
      v83 = v218;
      v84 = v219;
      v85 = v220;
      v81 = v221;
      sub_26AEB4364(v217, v218, v219, v220);
      v286[0] = v82;
      v286[1] = v83;
      v286[2] = v84;
      v286[3] = v85;
      LOBYTE(v286[4]) = v81 & 1;
      sub_26AE95B40(&v225);
      sub_26AE95B40(&v237);
      v86 = v82;
      v87 = v83;
      v88 = v84;
      v89 = v85;
      v90 = v81;
    }

    else
    {
      HIBYTE(v66) = 1;
      sub_26B079D00("If you download the update over your cellular network, additional usage fees will apply.", 88, 1);
      sub_26B078E10();
      v16 = sub_26B02D0D0();
      MEMORY[0x277D82BE0](*v16);
      v281 = 0;
      v282 = 0;
      v283 = v66 & 0x100;
      v277 = sub_26B0792C0();
      v278 = v17;
      v279 = v18;
      v280 = v19;
      v274[0] = v277;
      v274[1] = v17;
      v275 = v18 & 1;
      v276 = v19;
      v64 = MEMORY[0x277CE0BD8];
      v65 = MEMORY[0x277CE0BC8];
      sub_26AE9463C(v274, MEMORY[0x277CE0BD8], &v284);
      sub_26AE95B40(v274);
      v58 = v284;
      v59 = v285;
      v60 = *(&v285 + 1);
      sub_26AE95D28(v284, *(&v284 + 1), v285 & 1);
      sub_26B078640();
      v269 = v58;
      v270 = v59 & 1;
      v271 = v60;
      sub_26AE94B4C(&v269, v64, &v272);
      sub_26AE95B40(&v269);
      v61 = v272;
      v62 = v273;
      v63 = *(&v273 + 1);
      sub_26AE95D28(v272, *(&v272 + 1), v273 & 1);
      sub_26B078640();
      v261 = v61;
      v262 = v62 & 1;
      v263 = v63;
      sub_26AE94CA8(&v261, v64, v64, v65, v65, &v264);
      sub_26AE95B40(&v261);
      v68 = v264;
      v69 = v265;
      v70 = v266;
      v71 = v267;
      v67 = v268;
      sub_26AEB4364(v264, v265, v266, v267);
      v286[0] = v68;
      v286[1] = v69;
      v286[2] = v70;
      v286[3] = v71;
      LOBYTE(v286[4]) = v67 & 1;
      sub_26AE95B40(&v272);
      sub_26AE95B40(&v284);
      v86 = v68;
      v87 = v69;
      v88 = v70;
      v89 = v71;
      v90 = v67;
    }

    v258[0] = v86;
    v258[1] = v87;
    v258[2] = v88;
    v258[3] = v89;
    v259 = v90 & 1;
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCB40, &unk_26B08AC20);
    v51 = sub_26AEB349C();
    sub_26AE94B4C(v258, v50, v260);
    sub_26AEB450C(v258);
    v45 = v260[0];
    v46 = v260[1];
    v47 = v260[2];
    v48 = v260[3];
    v49 = v260[4];
    sub_26AEB4364(v260[0], v260[1], v260[2], v260[3]);
    v250[0] = v45;
    v250[1] = v46;
    v250[2] = v47;
    v250[3] = v48;
    v251 = v49 & 1;
    sub_26AE94CA8(v250, v50, v50, v51, v51, &v252);
    sub_26AEB450C(v250);
    v53 = v252;
    v54 = v253;
    v55 = v254;
    v56 = v255;
    v57 = v256;
    v52 = v257;
    sub_26AFF0D5C(v252, v253, v254, v255);
    __b[0] = v53;
    __b[1] = v54;
    __b[2] = v55;
    __b[3] = v56;
    LOBYTE(__b[4]) = v57;
    BYTE1(__b[4]) = v52 & 1;
    sub_26AEB450C(v260);
    sub_26AEB450C(v286);
    v105 = v53;
    v106 = v54;
    v107 = v55;
    v108 = v56;
    v109 = v57;
    v110 = v52;
  }

  v246[0] = v105;
  v246[1] = v106;
  v246[2] = v107;
  v246[3] = v108;
  v247 = v109;
  v248 = v110 & 1;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE3A0, &unk_26B08F688);
  sub_26AFF07A0();
  sub_26AE94B4C(v246, v34, v249);
  sub_26AFF0EB0(v246);
  v30 = v249[0];
  v31 = v249[1];
  v32 = v249[2];
  v33 = v249[3];
  v29 = LOBYTE(v249[4]);
  v28 = BYTE1(v249[4]);
  sub_26AFF0D5C(v249[0], v249[1], v249[2], v249[3]);
  v239[0] = v30;
  v239[1] = v31;
  v239[2] = v32;
  v239[3] = v33;
  v240 = v29 | ((v28 & 1) << 8);
  sub_26AF09CCC(v239, v34, &v241);
  sub_26AFF0DD4(v239);
  v35 = v241;
  v36 = v242;
  v37 = v243;
  v38 = v244;
  v39 = v245;
  sub_26AFF0CF0(v241, v242, v243, v244, v245);
  v307 = v35;
  v308 = v36;
  v309 = v37;
  v310 = v38;
  v311 = v39;
  sub_26AFF0EB0(v249);
  sub_26AFF0EB0(__b);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v40 = v35;
  v41 = v36;
  v42 = v37;
  v43 = v38;
  v44 = v39;
LABEL_18:
  v290[0] = v40;
  v290[1] = v41;
  v290[2] = v42;
  v290[3] = v43;
  v291 = v44;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE380, &qword_26B08F680);
  sub_26AFF0708();
  sub_26AE94B4C(v290, v21, a4);
  sub_26AFF0DD4(v290);
  return sub_26AFF0DD4(&v307);
}

unint64_t sub_26AFF0680()
{
  v2 = qword_2803DE388;
  if (!qword_2803DE388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2803DE370, &unk_26B08F670);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE388);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AFF0708()
{
  v2 = qword_2803DE390;
  if (!qword_2803DE390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DE380, &qword_26B08F680);
    sub_26AFF07A0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE390);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AFF07A0()
{
  v2 = qword_2803DE398;
  if (!qword_2803DE398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DE3A0, &unk_26B08F688);
    sub_26AEB349C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE398);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AFF08D8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 16)))
      {
        v3 = *(a1 + 16);
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

uint64_t sub_26AFF09F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 - 1;
    }
  }

  return result;
}

uint64_t sub_26AFF0BD0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2803DE370, &unk_26B08F670);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC748, &qword_26B08A188);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DE380, &qword_26B08F680);
  sub_26AFF0680();
  sub_26AE95974();
  sub_26AEFDA40();
  sub_26AFF0708();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_26AFF0CF0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  if ((a5 & 0xFF00) != 0xFF00)
  {
    return sub_26AFF0D5C(result, a2, a3, a4);
  }

  return result;
}

uint64_t sub_26AFF0DD4(uint64_t a1)
{
  if ((*(a1 + 32) & 0xFF00) != 0xFF00)
  {
    sub_26AFF0E38(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24));
  }

  return a1;
}

uint64_t sub_26AFF0EF8()
{

  swift_unknownObjectRelease();
  return swift_deallocObject();
}

uint64_t sub_26AFF0F78()
{

  swift_unknownObjectRelease();
  return swift_deallocObject();
}

uint64_t AvailableUpdateView.init(presenting:isContentReady:onUpdateRequested:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  memset(__b, 0, 0x49uLL);
  swift_getKeyPath();
  sub_26B078A30();
  __b[0] = v17;
  LOBYTE(__b[1]) = v18 & 1;
  swift_getKeyPath();
  sub_26B078A30();
  __b[2] = v15;
  LOBYTE(__b[3]) = v16 & 1;

  __b[4] = a1;
  sub_26AEC1EF4(a2, a3);
  __b[7] = a2;
  __b[8] = a3;
  LOBYTE(__b[9]) = a4;
  sub_26AFF1250(a5);
  __b[5] = a5;
  __b[6] = a6;
  sub_26AF78EE4(__b, a7);
  sub_26AFF1284(a5);
  sub_26AED4828(a2, a3);

  return sub_26AF78E54(__b);
}

uint64_t sub_26AFF1250(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_26AFF1284(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_26AFF12B8(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v38 = a1;
  v39 = a2;
  v46 = a3;
  v47 = a4;
  v48 = a5;
  v40 = a6;
  v41 = "Fatal error";
  v42 = "Unexpectedly found nil while unwrapping an Optional value";
  v43 = "_Concurrency/arm64e-apple-ios.private.swiftinterface";
  v44 = 0;
  v57 = a6;
  v45 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCC00, &qword_26B087700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v48);
  v49 = &v10 - v45;

  v55 = v47;
  v56 = v48;
  sub_26AED6580(v46, v49);
  v50 = sub_26B07A160();
  v51 = *(v50 - 8);
  v52 = v50 - 8;
  if ((*(v51 + 48))(v49, 1) == 1)
  {
    sub_26AEA08A4(v49);
    v37 = 0;
  }

  else
  {
    v36 = sub_26B07A150();
    (*(v51 + 8))(v49, v50);
    v37 = v36;
  }

  v33 = v37 | 0x1000;
  v35 = *(v48 + 16);
  v34 = *(v48 + 24);
  swift_unknownObjectRetain();

  if (v35)
  {
    v31 = v35;
    v32 = v34;
    v25 = v34;
    v26 = v35;
    swift_getObjectType();
    v27 = sub_26B07A0C0();
    v28 = v6;
    swift_unknownObjectRelease();
    v29 = v27;
    v30 = v28;
  }

  else
  {
    v29 = 0;
    v30 = 0;
  }

  v23 = v30;
  v24 = v29;
  if (v39)
  {
    v21 = v38;
    v22 = v39;
    v7 = v44;
    v19 = sub_26B079EA0();
    sub_26AFF925C(v19 + 32, &v53);
    if (v7)
    {
      __break(1u);
    }

    v18 = v53;

    v20 = v18;
  }

  else
  {
    v20 = 0;
  }

  v17 = v20;
  if (v20)
  {
    v12 = v17;
    v13 = v17;
  }

  else
  {

    v14 = v55;
    v15 = v56;

    v16 = 0;
    if (v24 != 0 || v23 != 0)
    {
      v54[0] = 0;
      v54[1] = 0;
      v54[2] = v24;
      v54[3] = v23;
      v16 = v54;
    }

    v13 = swift_task_create();
  }

  v10 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD848, &unk_26B08E3C0);
  sub_26AFF9248();
  v11 = v8;

  return v11;
}

uint64_t sub_26AFF1804()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DBFB8, &qword_26B088140);
  sub_26B078A10();

  return v1;
}

uint64_t sub_26AFF1890()
{
  v2 = *v0;

  return v2;
}

uint64_t sub_26AFF18D4(uint64_t a1, char a2)
{

  *v2 = a1;
  *(v2 + 8) = a2 & 1;
}

uint64_t sub_26AFF1954()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DB510, &qword_26B086040);
  sub_26B078A10();

  return v1;
}

uint64_t sub_26AFF19E0()
{
  v2 = *(v0 + 16);

  return v2;
}

uint64_t sub_26AFF1A24(uint64_t a1, char a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2 & 1;
}

uint64_t AvailableUpdateView.presentedDescriptor.getter()
{
  v2 = *(v0 + 32);

  return v2;
}

uint64_t AvailableUpdateView.presentedDescriptor.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
}

uint64_t sub_26AFF1B68()
{
  v2 = *(v0 + 40);
  sub_26AFF1250(v2);
  return v2;
}

uint64_t sub_26AFF1BA8()
{
  v2 = *(v0 + 56);
  sub_26AEC1EF4(v2, *(v0 + 64));
  return v2;
}

uint64_t AvailableUpdateView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v18 = sub_26AFF28C0;
  v29 = MEMORY[0x277CDEB58];
  v46 = MEMORY[0x277CDE800];
  v62 = 0;
  v41 = 0;
  v39 = sub_26B078FF0();
  v36 = *(v39 - 8);
  v37 = v39 - 8;
  v6 = (*(v36 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v38 = &v5 - v6;
  v23 = sub_26B078F70();
  v20 = *(v23 - 8);
  v21 = v23 - 8;
  v7 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v23);
  v22 = &v5 - v7;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE3E8, &qword_26B08F880);
  v24 = *(v27 - 8);
  v25 = v27 - 8;
  v8 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v27);
  v26 = &v5 - v8;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE3F0, &qword_26B08F888);
  v31 = *(v34 - 8);
  v32 = v34 - 8;
  v9 = (*(v31 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v34);
  v33 = &v5 - v9;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE3F8, &qword_26B08F890);
  v10 = (*(*(v43 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v43);
  v40 = &v5 - v10;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE400, &qword_26B08F898);
  v50 = *(v53 - 8);
  v51 = v53 - 8;
  v11 = (*(v50 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v53);
  v52 = &v5 - v11;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE408, &qword_26B08F8A0);
  v12 = (*(*(v55 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v55);
  v57 = &v5 - v12;
  v13 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v5 - v12);
  v58 = &v5 - v13;
  v62 = &v5 - v13;
  v19 = __dst;
  v15 = 73;
  memcpy(__dst, v3, 0x49uLL);
  memcpy(v64, v14, sizeof(v64));
  sub_26AF78EE4(__dst, &v61);
  v16 = v59;
  v59[2] = v19;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE410, &qword_26B08F8A8);
  sub_26AFF28C8();
  sub_26B079240();
  sub_26AF78E54(v19);
  sub_26B078F60();
  v28 = sub_26AFF2950();
  sub_26AEAAAAC(v27);
  sub_26B079560();
  (*(v20 + 8))(v22, v23);
  (*(v24 + 8))(v26, v27);
  v60[1] = v27;
  v60[2] = v28;
  v45 = 1;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_26AEAABD4();
  sub_26B079600();
  (*(v31 + 8))(v33, v34);
  v35 = sub_26B079180();
  v44 = sub_26AFF29D8();
  sub_26AF0CF00();
  MEMORY[0x26D66C680](v35, 0x4030000000000000, 0, v38, v43, v44);
  (*(v36 + 8))(v38, v39);
  sub_26AFF2ACC(v40);
  v42 = __dst[4];

  v49 = v60;
  v60[0] = v42;
  v47 = type metadata accessor for ReactiveDescriptor(v41);
  v59[4] = v43;
  v59[5] = v44;
  v48 = swift_getOpaqueTypeConformance2();
  sub_26AEED5B8();
  sub_26B0795B0();

  (*(v50 + 8))(v52, v53);
  v56 = sub_26AFF2B34();
  sub_26AE9463C(v57, v55, v58);
  sub_26AFF2BBC(v57);
  sub_26AFF2C4C(v58, v57);
  sub_26AE94B4C(v57, v55, v54);
  sub_26AFF2BBC(v57);
  return sub_26AFF2BBC(v58);
}

uint64_t sub_26AFF22DC@<X0>(uint64_t *__src@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v39 = __src;
  v19 = MEMORY[0x277CDE8F8];
  v26 = sub_26AFF9F60;
  v21 = sub_26AFF9F68;
  v37 = MEMORY[0x277CDE668];
  v62 = 0;
  v61 = 0;
  __srca[0] = __dst;
  __srca[1] = 73;
  memcpy(__dst, __src, 0x49uLL);
  memcpy(v64, __dst, sizeof(v64));
  __srca[2] = 0;
  updated = type metadata accessor for AvailableUpdateProactiveSuggestionView(0);
  v12 = (*(*(updated - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v48 = __srca - v12;
  v13 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v50 = (__srca - v13);
  v62 = __srca - v13;
  v34 = sub_26B078C10();
  v27 = *(v34 - 8);
  v28 = v34 - 8;
  v14 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v34);
  v29 = __srca - v14;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE530, &qword_26B08FC38);
  v30 = *(v33 - 8);
  v31 = v33 - 8;
  v15 = (*(v30 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v33);
  v4 = __srca - v15;
  v32 = __srca - v15;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE538, &unk_26B08FC40);
  v41 = *(v51 - 8);
  v42 = v51 - 8;
  v16 = (*(v41 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v39);
  v49 = __srca - v16;
  v17 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6);
  v54 = __srca - v17;
  v61 = __srca - v17;
  sub_26AF78EE4(v7, &v60);
  v20 = v56;
  v56[2] = v39;
  sub_26AF78EE4(v39, &v59);
  v22 = v55;
  v55[2] = v39;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE450, &qword_26B08F8C8);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD170, &qword_26B08BF30);
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DE448, &qword_26B08F8C0);
  v8 = sub_26AFF65E4();
  v58[6] = v18;
  v58[7] = v8;
  v38 = 1;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v9 = sub_26AF6B948();
  sub_26AF0E3C4(v26, v20, v23, v24, OpaqueTypeConformance2, v9, v4);
  sub_26AF78E54(v39);
  sub_26AF78E54(v39);
  sub_26B078C00();
  v35 = sub_26AFF9F70();
  v36 = sub_26AF2C54C();
  sub_26B079400();
  (*(v27 + 8))(v29, v34);
  (*(v30 + 8))(v32, v33);
  v58[2] = v33;
  v58[3] = v34;
  v58[4] = v35;
  v58[5] = v36;
  v44 = swift_getOpaqueTypeConformance2();
  sub_26AE9463C(v49, v51, v54);
  v53 = *(v41 + 8);
  v52 = v41 + 8;
  v53(v49, v51);
  v40 = v39[4];

  sub_26AFAB67C(v40, v48);
  v45 = sub_26AFFA074();
  sub_26AE9463C(v48, updated, v50);
  sub_26AFB4CA8(v48);
  (*(v41 + 16))(v49, v54, v51);
  v47 = v58;
  v58[0] = v49;
  sub_26AFB4A80(v50, v48);
  v58[1] = v48;
  v57[0] = v51;
  v57[1] = updated;
  v56[4] = v44;
  v56[5] = v45;
  sub_26AFD49C4(v47, 2uLL, v57, v46);
  sub_26AFB4CA8(v48);
  v53(v49, v51);
  sub_26AFB4CA8(v50);
  return (v53)(v54, v51);
}

unint64_t sub_26AFF28C8()
{
  v2 = qword_2803DE418;
  if (!qword_2803DE418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DE410, &qword_26B08F8A8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE418);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AFF2950()
{
  v2 = qword_2803DE420;
  if (!qword_2803DE420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DE3E8, &qword_26B08F880);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE420);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AFF29D8()
{
  v2 = qword_2803DE428;
  if (!qword_2803DE428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DE3F8, &qword_26B08F890);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DE3E8, &qword_26B08F880);
    sub_26AFF2950();
    swift_getOpaqueTypeConformance2();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE428);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AFF2ACC(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE3F0, &qword_26B08F888);
  (*(*(v1 - 8) + 8))(a1);
  return a1;
}

unint64_t sub_26AFF2B34()
{
  v2 = qword_2803DE430;
  if (!qword_2803DE430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DE408, &qword_26B08F8A0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE430);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AFF2BBC(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE400, &qword_26B08F898);
  (*(*(v1 - 8) + 8))(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE408, &qword_26B08F8A0);

  return a1;
}

uint64_t sub_26AFF2C4C(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE400, &qword_26B08F898);
  (*(*(v2 - 8) + 16))(a2, a1);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE408, &qword_26B08F8A0) + 52);
  v7 = *(a1 + v6);

  result = a2;
  *(a2 + v6) = v7;
  return result;
}

uint64_t sub_26AFF2CFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13 = a2;
  v6 = a1;
  v10 = MEMORY[0x277CDE8F8];
  v24 = 0;
  v23 = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE450, &qword_26B08F8C8);
  v11 = *(v17 - 8);
  v12 = v17 - 8;
  v7 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v17);
  v15 = &v6 - v7;
  v8 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v6 - v7);
  v16 = &v6 - v8;
  v24 = &v6 - v8;
  v23 = v3;
  memcpy(__dst, v3, sizeof(__dst));
  sub_26AFF2F20(v15);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DE448, &qword_26B08F8C0);
  v4 = sub_26AFF65E4();
  v20 = v9;
  v21 = v4;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_26AE9463C(v15, v17, v16);
  v19 = *(v11 + 8);
  v18 = v11 + 8;
  v19(v15, v17);
  (*(v11 + 16))(v15, v16, v17);
  sub_26AE94B4C(v15, v17, v13);
  v19(v15, v17);
  return (v19)(v16, v17);
}

uint64_t sub_26AFF2F20@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v19 = sub_26AFF47BC;
  v29 = MEMORY[0x277CDE668];
  v38 = MEMORY[0x277CDE8F8];
  v51 = 0;
  v26 = sub_26B078FC0();
  v21 = *(v26 - 8);
  v22 = v26 - 8;
  v9 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v26);
  v23 = &v9 - v9;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE438, &qword_26B08F8B0);
  v10 = (*(*(v25 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v25);
  v24 = &v9 - v10;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE440, &qword_26B08F8B8);
  v31 = *(v34 - 8);
  v32 = v34 - 8;
  v11 = (*(v31 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v34);
  v33 = &v9 - v11;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE448, &qword_26B08F8C0);
  v12 = (*(*(v36 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v36);
  v35 = &v9 - v12;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE450, &qword_26B08F8C8);
  v40 = *(v46 - 8);
  v41 = v46 - 8;
  v13 = (*(v40 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v46);
  v44 = &v9 - v13;
  v14 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v9 - v13);
  v45 = &v9 - v14;
  v51 = &v9 - v14;
  v20 = __dst;
  v16 = 73;
  memcpy(__dst, v2, 0x49uLL);
  memcpy(v55, v15, sizeof(v55));
  sub_26AF78EE4(__dst, &v50);
  v17 = v49;
  v49[2] = v20;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE458, &qword_26B08F8D0);
  sub_26AFF47C4();
  sub_26B079800();
  sub_26AF78E54(v20);
  sub_26B078FB0();
  v27 = sub_26AFF484C();
  v28 = sub_26AEF909C();
  sub_26B079400();
  (*(v21 + 8))(v23, v26);
  sub_26AFF48E4(v24);
  v3 = sub_26AFF6584();
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v30 = v52;
  v52[0] = v4;
  v52[1] = v5;
  v52[2] = v6;
  v52[3] = v7;
  v53 = 0;
  v49[6] = v25;
  v49[7] = v26;
  v49[8] = v27;
  v49[9] = v28;
  v39 = 1;
  swift_getOpaqueTypeConformance2();
  sub_26B079480();
  (*(v31 + 8))(v33, v34);
  v37 = sub_26AFF65E4();
  sub_26AFD7CE4();
  sub_26B079510();
  sub_26AFF678C(v35);
  v49[4] = v36;
  v49[5] = v37;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_26AE9463C(v44, v46, v45);
  v48 = *(v40 + 8);
  v47 = v40 + 8;
  v48(v44, v46);
  (*(v40 + 16))(v44, v45, v46);
  sub_26AE94B4C(v44, v46, v42);
  v48(v44, v46);
  return (v48)(v45, v46);
}

uint64_t sub_26AFF34A4@<X0>(void *__src@<X0>, uint64_t a2@<X8>)
{
  v19 = __src;
  memcpy(__dst, __src, sizeof(__dst));
  v13[0] = sub_26AFF35B8();
  v13[1] = v2;
  v13[2] = v3;
  v13[3] = v4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD170, &qword_26B08BF30);
  sub_26AF6B948();
  sub_26AE9463C(v13, v11, &v15);
  sub_26AF6BCAC(v13);
  v6 = v15;
  v7 = v16;
  v8 = v17;
  v9 = v18;
  sub_26AF6BAA0(v15, v16, v17, v18);
  v12[0] = v6;
  v12[1] = v7;
  v12[2] = v8;
  v12[3] = v9;
  sub_26AE94B4C(v12, v11, a2);
  sub_26AF6BCAC(v12);
  return sub_26AF6BCAC(&v15);
}

uint64_t sub_26AFF35B8()
{
  v191 = 0;
  v181 = 0;
  v182 = 0;
  v163 = 0;
  v164 = 0;
  v144 = 0;
  v145 = 0;
  v124 = 0;
  v125 = sub_26B078E00();
  v126 = *(v125 - 8);
  v127 = v125 - 8;
  v128 = (*(v126 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v125);
  v129 = &v38 - v128;
  v130 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v38 - v128);
  v131 = &v38 - v130;
  v132 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v38 - v130);
  v133 = &v38 - v132;
  v134 = __dst;
  v135 = 73;
  memcpy(__dst, v0, 0x49uLL);
  v191 = v0;
  memcpy(v190, __dst, sizeof(v190));
  if (sub_26AFF5498())
  {
    memcpy(v189, __dst, sizeof(v189));
    v122 = sub_26AFF1954();
    v123 = ReactiveUIManager.isClearingSpaceForDownload.getter();

    if (v123)
    {
      v98 = v124;
      v99 = v124;
      v100 = v124;
      v101 = v124;
    }

    else
    {
      v120 = __dst;
      v114 = __dst[4];

      v115 = ReactiveDescriptor.currentState.getter();

      v118 = &v188;
      v188 = v115;
      v116 = &v187;
      v187 = 1;
      v117 = type metadata accessor for SUUIStatefulDescriptorState(0);
      v119 = sub_26AE9B8C0();
      v121 = sub_26B07A790();
      sub_26AF78EE4(v120, &v186);
      if (v121)
      {
        v113 = 1;
      }

      else
      {
        v111 = __dst[4];

        v112 = ReactiveDescriptor.currentState.getter();

        v185 = v112;
        v184 = 4;
        v113 = sub_26B07A790();
      }

      v110 = v113;
      sub_26AF78E54(__dst);
      if (v110)
      {
        v108 = __dst[4];

        v109 = ReactiveDescriptor.shouldOfferInstallTonight.getter();

        if (v109)
        {
          v106 = __dst[4];

          v107 = ReactiveDescriptor.currentState.getter();

          v175 = v107;
          v174 = 1;
          if (sub_26B07A790())
          {
            memcpy(v154, __dst, sizeof(v154));
            v104 = sub_26AFF67F4();
            v105 = v3;
            if (v3)
            {
              v102 = v104;
              v103 = v105;
              v93 = v105;
              v84 = v104;
              v144 = v104;
              v145 = v105;
              v82 = 129;
              sub_26B078DF0();
              v86 = 1;
              sub_26B079D00("If you select Update Tonight, ProductFamilyName will try to update when the device is locked and the battery has enough charge.\n\n", v82, 1);
              v83 = v4;
              sub_26B078DE0();

              sub_26B078DD0();
              v90 = 0;
              sub_26B079D00("");
              v85 = v5;
              sub_26B078DE0();

              (*(v126 + 16))(v131, v133, v125);
              (*(v126 + 32))(v129, v131, v125);
              (*(v126 + 8))(v133, v125);
              v92 = sub_26B078E20();
              v87 = v6;
              v88 = v7;
              v89 = v8;
              v91 = *sub_26B02D0D0();
              MEMORY[0x277D82BE0](v91);
              v140 = 0;
              v141 = 0;
              v142 = 0;
              v143 = v86 & 1;
              v136 = sub_26B0792C0();
              v137 = v9;
              v138 = v10;
              v139 = v11;
              v94 = v136;
              v95 = v9;
              v97 = v11;
              v96 = v10 & 1;

              v98 = v94;
              v99 = v95;
              v100 = v96;
              v101 = v97;
            }

            else
            {
              v76 = 1;
              sub_26B079D00("If you select Update Tonight, ProductFamilyName will try to update when the device is locked and the battery has enough charge.", 127, 1);
              v81 = sub_26B078E10();
              v77 = v12;
              v78 = v13;
              v79 = v14;
              v80 = *sub_26B02D0D0();
              MEMORY[0x277D82BE0](v80);
              v150 = 0;
              v151 = 0;
              v152 = 0;
              v153 = v76 & 1;
              v146 = sub_26B0792C0();
              v147 = v15;
              v148 = v16;
              v149 = v17;
              v98 = v146;
              v99 = v15;
              v100 = v16 & 1;
              v101 = v17;
            }
          }

          else
          {
            memcpy(v173, __dst, sizeof(v173));
            v74 = sub_26AFF67F4();
            v75 = v18;
            if (v18)
            {
              v72 = v74;
              v73 = v75;
              v67 = v75;
              v58 = v74;
              v163 = v74;
              v164 = v75;
              v56 = 130;
              sub_26B078DF0();
              v60 = 1;
              sub_26B079D00("If you select Install Tonight, ProductFamilyName will try to update when the device is locked and the battery has enough charge.\n\n", v56, 1);
              v57 = v19;
              sub_26B078DE0();

              sub_26B078DD0();
              v64 = 0;
              sub_26B079D00("");
              v59 = v20;
              sub_26B078DE0();

              (*(v126 + 16))(v131, v133, v125);
              (*(v126 + 32))(v129, v131, v125);
              (*(v126 + 8))(v133, v125);
              v66 = sub_26B078E20();
              v61 = v21;
              v62 = v22;
              v63 = v23;
              v65 = *sub_26B02D0D0();
              MEMORY[0x277D82BE0](v65);
              v159 = 0;
              v160 = 0;
              v161 = 0;
              v162 = v60 & 1;
              v155 = sub_26B0792C0();
              v156 = v24;
              v157 = v25;
              v158 = v26;
              v68 = v155;
              v69 = v24;
              v71 = v26;
              v70 = v25 & 1;

              v98 = v68;
              v99 = v69;
              v100 = v70;
              v101 = v71;
            }

            else
            {
              v50 = 1;
              sub_26B079D00("If you select Install Tonight, ProductFamilyName will try to update when the device is locked and the battery has enough charge.", 128, 1);
              v55 = sub_26B078E10();
              v51 = v27;
              v52 = v28;
              v53 = v29;
              v54 = *sub_26B02D0D0();
              MEMORY[0x277D82BE0](v54);
              v169 = 0;
              v170 = 0;
              v171 = 0;
              v172 = v50 & 1;
              v165 = sub_26B0792C0();
              v166 = v30;
              v167 = v31;
              v168 = v32;
              v98 = v165;
              v99 = v30;
              v100 = v31 & 1;
              v101 = v32;
            }
          }
        }

        else
        {
          memcpy(v183, __dst, sizeof(v183));
          v48 = sub_26AFF67F4();
          v49 = v33;
          if (v33)
          {
            v46 = v48;
            v47 = v49;
            v41 = v49;
            v39 = v48;
            v181 = v48;
            v182 = v49;
            sub_26B078640();
            v40 = v180;
            v180[0] = v39;
            v180[1] = v41;
            sub_26AE95974();
            v176 = sub_26B0792E0();
            v177 = v34;
            v178 = v35;
            v179 = v36;
            v42 = v176;
            v43 = v34;
            v45 = v36;
            v44 = v35 & 1;

            v98 = v42;
            v99 = v43;
            v100 = v44;
            v101 = v45;
          }

          else
          {
            v98 = v124;
            v99 = v124;
            v100 = v124;
            v101 = v124;
          }
        }
      }

      else
      {
        v98 = v124;
        v99 = v124;
        v100 = v124;
        v101 = v124;
      }
    }
  }

  else
  {
    v98 = v124;
    v99 = v124;
    v100 = v124;
    v101 = v124;
  }

  return v98;
}

uint64_t sub_26AFF4130@<X0>(uint64_t *__src@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v54 = __src;
  v46 = sub_26AFF7178;
  v22 = sub_26AFF86AC;
  v66 = 0;
  v65 = 0;
  v64 = 0;
  v57 = 0;
  __srca = __dst;
  __n = 73;
  memcpy(__dst, __src, 0x49uLL);
  memcpy(v68, __dst, sizeof(v68));
  v45 = 0;
  updated = type metadata accessor for UpdateOptionsView(0);
  v25 = (*(*(updated - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](updated);
  v26 = &v10 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE488, &unk_26B08F8F0);
  v28 = *(v27 - 8);
  v29 = v27 - 8;
  v30 = (*(v28 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v27);
  v31 = &v10 - v30;
  v32 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v10 - v30);
  v33 = &v10 - v32;
  v34 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v10 - v32);
  v35 = &v10 - v34;
  v66 = &v10 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE4A8, &qword_26B08FBD0);
  v37 = (*(*(v36 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v36);
  v38 = &v10 - v37;
  v39 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v10 - v37);
  v40 = &v10 - v39;
  v41 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v10 - v39);
  v42 = &v10 - v41;
  v65 = &v10 - v41;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE4B0, &qword_26B08FBD8);
  v43 = (*(*(v51 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v51);
  v53 = &v10 - v43;
  v44 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v10 - v43);
  v50 = &v10 - v44;
  v64 = &v10 - v44;
  v49 = sub_26B078E60();
  sub_26AF78EE4(v54, &v63);
  v47 = v56;
  v56[2] = v54;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE4B8, &qword_26B08FBE0);
  sub_26AFF7180();
  sub_26B079980();
  sub_26AF78E54(v54);
  v52 = sub_26AFF7208();
  sub_26AE9463C(v53, v51, v50);
  sub_26AFF7290(v53);
  memcpy(&v62, v54, __n);
  if (sub_26AFF5498())
  {
    v7 = v26;
    v14 = v54[4];

    sub_26AF78EE4(v54, &v58);
    v15 = swift_allocObject();
    memcpy((v15 + 16), v54, 0x49uLL);
    UpdateOptionsView.init(representing:action:)(v14, v22, v15, v7);
    v8 = sub_26AFF6524();
    v16 = *v8;
    v17 = v8[1];
    v18 = v8[2];
    v19 = v8[3];
    sub_26AFF74C8();
    sub_26B079670();
    sub_26AFDDE44(v26);
    v20 = sub_26AFF7424();
    sub_26AE9463C(v33, v27, v35);
    sub_26AFF86B4(v33);
    v57 = v33;
    sub_26AFF8974(v35, v31);
    sub_26AE94B4C(v31, v27, v33);
    sub_26AFF86B4(v31);
    sub_26AFF8974(v33, v38);
    (*(v28 + 56))(v38, 0, 1, v27);
    sub_26AF09CCC(v38, v27, v40);
    sub_26AFF7548(v38);
    sub_26AFF7884(v40, v42);
    sub_26AFF86B4(v33);
    sub_26AFF86B4(v35);
  }

  else
  {
    (*(v28 + 56))(v38, 1, 1, v27);
    sub_26AFF7424();
    sub_26AF09CCC(v38, v27, v40);
    sub_26AFF7548(v38);
    sub_26AFF7884(v40, v42);
  }

  sub_26AFF7AB8(v50, v53);
  v13 = v61;
  v61[0] = v53;
  sub_26AFF7E58(v42, v40);
  v61[1] = v40;
  v11 = v60;
  v60[0] = v51;
  v60[1] = v36;
  v12 = v59;
  v59[0] = v52;
  v59[1] = sub_26AFF857C();
  sub_26AFD49C4(v13, 2uLL, v11, v21);
  sub_26AFF7548(v40);
  sub_26AFF7290(v53);
  sub_26AFF7548(v42);
  return sub_26AFF7290(v50);
}

unint64_t sub_26AFF47C4()
{
  v2 = qword_2803DE460;
  if (!qword_2803DE460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DE458, &qword_26B08F8D0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE460);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AFF484C()
{
  v2 = qword_2803DE468;
  if (!qword_2803DE468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DE438, &qword_26B08F8B0);
    sub_26AFF47C4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE468);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AFF48E4(uint64_t a1)
{
  v52 = a1;
  v53 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE470, &qword_26B08F8D8) + 44);
  v54 = v52 + v53;

  sub_26AFB9674(*(v54 + 24), *(v54 + 32), *(v54 + 40), *(v54 + 48), *(v54 + 56) & 1);

  if (*(v52 + v53 + 104))
  {
    v51 = v52 + v53;
  }

  v46 = v52 + v53;

  v47 = v52 + v53 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE478, &qword_26B08F8E0) + 48);
  v48 = sub_26B079A30();
  v49 = *(v48 - 8);
  v50 = v48 - 8;
  if (!(*(v49 + 48))(v47, 1))
  {
    (*(v49 + 8))(v47, v48);
  }

  v45 = v52 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE480, &qword_26B08F8E8) + 48);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE488, &unk_26B08F8F0);
  if (!(*(*(v1 - 8) + 48))(v45, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE20, &unk_26B08D230);
    (*(*(v2 - 8) + 8))(v45);
    updated = type metadata accessor for UpdateOptionsView(0);

    v33 = v45 + updated[6];
    v3 = *v33;
    v4 = *(v33 + 8);
    v5 = *(v33 + 16);
    v6 = *(v33 + 24);
    v7 = *(v33 + 32);
    v8 = *(v33 + 40);
    v9 = *(v33 + 48);
    v10 = *(v33 + 56);
    v11 = *(v33 + 64);
    v34 = *(v33 + 72);
    v35 = *(v33 + 80);
    v36 = *(v33 + 88);
    v37 = *(v33 + 96);
    v38 = *(v33 + 104);
    v39 = *(v33 + 112);
    v12 = *(v33 + 120);
    v13 = *(v33 + 128);
    v14 = *(v33 + 136);
    v15 = *(v33 + 144);
    v16 = *(v33 + 152);
    v17 = *(v33 + 160);
    v18 = *(v33 + 168);
    v19 = *(v33 + 176);
    v20 = *(v33 + 184);
    v21 = *(v33 + 192);
    v22 = *(v33 + 200);
    v23 = *(v33 + 208);
    v24 = *(v33 + 216);
    v25 = *(v33 + 224);
    v26 = *(v33 + 232);
    v27 = *(v33 + 240);
    v28 = *(v33 + 248);
    v29 = *(v33 + 256);
    v30 = *(v33 + 264);
    v40 = *(v33 + 272);
    v41 = &v32;
    sub_26AFD5C30(v3, v4, v5, v6, v7, v8, v9, v10, v11, v34, v35, v36, v37, v38, v39, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v40);

    v42 = v45 + updated[8];
    sub_26AFD66B4(*v42, *(v42 + 8), *(v42 + 16), *(v42 + 24), *(v42 + 32), *(v42 + 40), *(v42 + 48), *(v42 + 56), *(v42 + 64), *(v42 + 72), *(v42 + 80), *(v42 + 88));
    v44 = v45 + updated[9];
    sub_26AFD66B4(*v44, *(v44 + 8), *(v44 + 16), *(v44 + 24), *(v44 + 32), *(v44 + 40), *(v44 + 48), *(v44 + 56), *(v44 + 64), *(v44 + 72), *(v44 + 80), *(v44 + 88));
  }

  return v52;
}

uint64_t sub_26AFF4DB4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v73 = a1;
  v90 = 0;
  v89 = 0;
  v88 = 0;
  v74 = 0;
  v61 = 0;
  v30 = sub_26B079A30();
  v31 = *(v30 - 8);
  v32 = v30 - 8;
  v33 = (*(v31 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v30);
  v34 = v20 - v33;
  v35 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v20 - v33);
  v36 = v20 - v35;
  v37 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v20 - v35);
  v38 = v20 - v37;
  v90 = v20 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE4E0, &unk_26B08FBE8);
  v40 = (*(*(v39 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v73);
  v41 = v20 - v40;
  v42 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v43 = v20 - v42;
  v44 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7);
  v45 = v20 - v44;
  v89 = v20 - v44;
  v88 = v8;
  v46 = *(v8 + 32);

  v47 = v73[7];
  v48 = v73[8];
  v49 = *(v73 + 72);
  sub_26AEC1EF4(v47, v48);
  v50 = v84;
  sub_26AFB9ED4(v46, v47, v48, v49, v84);
  v51 = v91;
  v52 = 113;
  memcpy(v91, v50, 0x71uLL);
  v56 = v83;
  memcpy(v83, v91, 0x71uLL);
  v53 = sub_26B079B20();
  v54 = v9;
  v10 = sub_26AFF9690();
  v55 = &v12;
  v12 = 0;
  v13 = 1;
  v14 = 0x7FF0000000000000;
  v15 = 0;
  v16 = v53;
  v17 = v54;
  v18 = &type metadata for UpdateSummaryView;
  v19 = v10;
  v57 = &v85;
  sub_26B079600();
  sub_26AFBE008(v56);
  v58 = v92;
  v59 = 232;
  memcpy(v92, v57, sizeof(v92));
  v66 = v82;
  memcpy(v82, v92, sizeof(v82));
  v60 = v73[4];

  v65 = &v81;
  v81 = v60;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE500, &qword_26B08FC28);
  v63 = type metadata accessor for ReactiveDescriptor(v61);
  v64 = sub_26AFF9708();
  sub_26AEED5B8();
  v67 = &v86;
  sub_26B0795B0();

  sub_26AFF97AC(v66);
  v68 = v93;
  v69 = 240;
  memcpy(v93, v67, sizeof(v93));
  v72 = v80;
  memcpy(v80, v93, sizeof(v80));
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE510, &qword_26B08FC30);
  v71 = sub_26AFF9848();
  sub_26AE9463C(v72, v70, v87);
  sub_26AFF98D0(v72);
  memcpy(v79, v73, sizeof(v79));
  if (sub_26AFF5498())
  {
    sub_26B079A20();
    v26 = sub_26AFF9978();
    sub_26AE9463C(v36, v30, v38);
    v27 = *(v31 + 8);
    v28 = v31 + 8;
    v27(v36, v30);
    v74 = v36;
    v25 = *(v31 + 16);
    v24 = v31 + 16;
    v25(v34, v38, v30);
    sub_26AE94B4C(v34, v30, v36);
    v27(v34, v30);
    v25(v41, v36, v30);
    (*(v31 + 56))(v41, 0, 1, v30);
    sub_26AF09CCC(v41, v30, v43);
    sub_26AFF99F8(v41);
    sub_26AFF9AA0(v43, v45);
    v27(v36, v30);
    v27(v38, v30);
  }

  else
  {
    (*(v31 + 56))(v41, 1, 1, v30);
    sub_26AFF9978();
    sub_26AF09CCC(v41, v30, v43);
    sub_26AFF99F8(v41);
    sub_26AFF9AA0(v43, v45);
  }

  v23 = v87;
  v22 = v77;
  sub_26AFF9BC8(v87, v77);
  v21 = v78;
  v78[0] = v22;
  sub_26AFF9DA0(v45, v43);
  v78[1] = v43;
  v20[0] = v76;
  v76[0] = v70;
  v76[1] = v39;
  v20[1] = v75;
  v75[0] = v71;
  v75[1] = sub_26AFF9EC8();
  sub_26AFD49C4(v21, 2uLL, v20[0], v29);
  sub_26AFF99F8(v43);
  sub_26AFF98D0(v22);
  sub_26AFF99F8(v45);
  return sub_26AFF98D0(v23);
}

BOOL sub_26AFF5498()
{
  memcpy(__dst, v0, 0x49uLL);
  v39 = v0;
  memcpy(v38, __dst, sizeof(v38));
  sub_26AFF1954();
  v20 = ReactiveUIManager.currentState.getter();

  v37 = v20;
  v36 = 4;
  type metadata accessor for SUUIStatefulUIState(0);
  sub_26AE9AD9C();
  if ((sub_26B079D70() & 1) == 0)
  {
    return 0;
  }

  v17 = ReactiveDescriptor.currentState.getter();

  v35 = v17;
  v34 = 1;
  type metadata accessor for SUUIStatefulDescriptorState(0);
  sub_26AFE1DF4();
  v18 = sub_26B079D70();
  sub_26AF78EE4(__dst, v33);
  if (v18)
  {
    LOBYTE(v16) = 0;
  }

  else
  {

    ReactiveDescriptor.currentState.getter();

    v16 = sub_26B079D70() ^ 1;
  }

  sub_26AF78E54(__dst);
  sub_26AF78EE4(__dst, v32);
  if (v16)
  {

    ReactiveDescriptor.currentState.getter();

    v15 = sub_26B079D70() ^ 1;
  }

  else
  {
    LOBYTE(v15) = 0;
  }

  sub_26AF78E54(__dst);
  if (v15)
  {
    return 0;
  }

  v14 = ReactiveDescriptor.hasAnyError.getter();

  if (v14)
  {
    return 0;
  }

  v11 = __dst[4];

  v12 = *(v11 + 24);
  MEMORY[0x277D82BE0](v12);

  v13 = [v12 downloadErrorPreventingUpdate];
  MEMORY[0x277D82BD8](v12);
  if (v13)
  {
    return 0;
  }

  v9 = ReactiveDescriptor.currentState.getter();

  v31 = v9;
  v30 = 4;
  sub_26AE9B8C0();
  v10 = sub_26B07A790();
  sub_26AF78EE4(__dst, v29);
  if ((v10 & 1) == 0)
  {
    v4 = 0;
    goto LABEL_26;
  }

  memcpy(v26, __dst, sizeof(v26));
  sub_26AFF1954();
  v7 = ReactiveUIManager.targetedDescriptor.getter();

  v8 = __dst[4];

  v24 = v7;
  v25 = v8;
  if (!v7)
  {
    if (!v25)
    {
      sub_26AF7E684();
      v6 = 1;
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  sub_26AF7E6B0(&v24, &v23);
  if (!v25)
  {

LABEL_23:
    sub_26AF7E5D0();
    v6 = 0;
    goto LABEL_22;
  }

  v22 = v23;
  v21 = v25;
  type metadata accessor for ReactiveDescriptor(0);
  v5 = static ReactiveDescriptor.== infix(_:_:)(v22, v21);

  sub_26AF7E684();
  v6 = v5;
LABEL_22:

  v4 = v6;
LABEL_26:
  sub_26AF78E54(__dst);
  sub_26AF78EE4(__dst, v28);
  if (v4)
  {
    memcpy(v27, __dst, sizeof(v27));
    sub_26AFF1954();
    updated = ReactiveUIManager.isTargetedUpdateScheduledForAutoInstall()();

    v3 = updated;
  }

  else
  {
    v3 = 0;
  }

  sub_26AF78E54(__dst);
  return !v3;
}

uint64_t sub_26AFF5A5C(uint64_t a1, uint64_t *a2)
{
  v13 = a1;
  v15 = a2;
  v18 = &unk_26B08FC00;
  v24 = 0;
  v23 = 0;
  v14 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCC00, &qword_26B087700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v13);
  v20 = &v12 - v14;
  v16 = *v2;
  v24 = v16;
  v23 = v3;
  sub_26B07A140();
  v17 = 0;
  v4 = sub_26B07A160();
  (*(*(v4 - 8) + 56))(v20, 0, 1);
  sub_26AF78EE4(v15, v22);
  v5 = swift_allocObject();
  v6 = v15;
  v19 = v5;
  v5[2] = 0;
  v5[3] = 0;
  memcpy(v5 + 4, v6, 0x49uLL);
  v7 = v17;
  v8 = v18;
  v9 = v19;
  v10 = v20;
  *(v19 + 105) = v16;
  v21 = sub_26AFF12B8(v7, v7, v10, v8, v9, MEMORY[0x277D84F78] + 8);
  sub_26AEA08A4(v20);
}

uint64_t sub_26AFF5BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 90) = a5;
  *(v5 + 224) = a4;
  *(v5 + 208) = v5;
  *(v5 + 216) = 0;
  *(v5 + 288) = 0;
  *(v5 + 192) = 0;
  *(v5 + 200) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCC00, &qword_26B087700);
  *(v5 + 232) = swift_task_alloc();
  *(v5 + 216) = a4;
  *(v5 + 288) = a5;

  return MEMORY[0x2822009F8](sub_26AFF5CE0, 0, 0);
}

uint64_t sub_26AFF5CE0()
{
  v1 = v0[28];
  v0[26] = v0;
  memcpy(v0 + 2, v1, 0x49uLL);
  v0[30] = sub_26B07A130();
  v0[31] = sub_26B07A120();
  v4 = sub_26B07A0C0();

  return MEMORY[0x2822009F8](sub_26AFF5D9C, v4, v2);
}

uint64_t sub_26AFF5D9C()
{
  v3 = *(v0 + 90);
  v4 = *(v0 + 224);
  *(v0 + 208) = v0;
  *(v0 + 256) = sub_26AFF1954();

  *(v0 + 89) = v3;
  v6 = *(v4 + 32);
  *(v0 + 264) = v6;

  v1 = swift_task_alloc();
  *(v5 + 272) = v1;
  *v1 = *(v5 + 208);
  v1[1] = sub_26AFF5EB4;

  return ReactiveUIManager.initiateUpdateAction(_:for:delegate:)(v5 + 176, (v0 + 89), v6, 0);
}

uint64_t sub_26AFF5EB4()
{
  v4 = *v1;
  *(v4 + 208) = *v1;
  *(v4 + 280) = v0;

  if (v0)
  {
    v2 = sub_26AFF6244;
  }

  else
  {

    v2 = sub_26AFF6048;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26AFF6048()
{
  v7 = MEMORY[0x277D85700];
  v12 = *(v0 + 232);
  __src = *(v0 + 224);
  *(v0 + 208) = v0;
  v11 = *(v0 + 176);
  v1 = *(v0 + 184);
  v9 = v1;
  *(v0 + 192) = v11;
  *(v0 + 200) = v1;
  v2 = sub_26B07A160();
  (*(*(v2 - 8) + 56))(v12, 1);
  sub_26AF78EE4(__src, v0 + 96);
  MEMORY[0x277D82BE0](v11);
  v6 = sub_26B07A120();
  v10 = swift_allocObject();
  *(v10 + 16) = v6;
  *(v10 + 24) = v7;
  memcpy((v10 + 32), __src, 0x49uLL);
  *(v10 + 112) = v11;
  *(v10 + 120) = v9;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE4F0, &qword_26B08FC20);
  sub_26AEBC0C4(0, 0, v12, &unk_26B08FC18, v10, v3);

  MEMORY[0x277D82BD8](v11);

  v4 = *(*(v0 + 208) + 8);

  return v4();
}

uint64_t sub_26AFF6244()
{
  *(v0 + 208) = v0;

  v1 = *(*(v0 + 208) + 8);

  return v1();
}

uint64_t sub_26AFF6304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 25) = a6;
  *(v6 + 64) = a5;
  *(v6 + 56) = a4;
  *(v6 + 48) = a1;
  *(v6 + 32) = v6;
  *(v6 + 40) = 0;
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  *(v6 + 40) = a4;
  *(v6 + 16) = a5;
  *(v6 + 24) = a6;
  sub_26B07A130();
  *(v6 + 72) = sub_26B07A120();
  v9 = sub_26B07A0C0();

  return MEMORY[0x2822009F8](sub_26AFF63D8, v9, v7);
}

uint64_t sub_26AFF63D8()
{
  v10 = v0;
  v1 = *(v0 + 56);
  *(v0 + 32) = v0;
  v7 = *(v1 + 40);
  sub_26AFF1250(v7);
  if (v7)
  {
    v2 = *(v6 + 25);
    v5 = *(v6 + 48);
    v8 = *(v6 + 64);
    v9 = v2;
    v7(&v8);
    *v5 = 0;
  }

  else
  {
    **(v6 + 48) = 1;
  }

  v3 = *(*(v6 + 32) + 8);

  return v3();
}

uint64_t *sub_26AFF6524()
{
  if (qword_2803DB4A0 != -1)
  {
    swift_once();
  }

  return &qword_2803DE3C8;
}

uint64_t *sub_26AFF6584()
{
  if (qword_2803DB498 != -1)
  {
    swift_once();
  }

  return &qword_2803DE3A8;
}

unint64_t sub_26AFF65E4()
{
  v2 = qword_2803DE490;
  if (!qword_2803DE490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DE448, &qword_26B08F8C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DE438, &qword_26B08F8B0);
    sub_26B078FC0();
    sub_26AFF484C();
    sub_26AEF909C();
    swift_getOpaqueTypeConformance2();
    sub_26AFF6704();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE490);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AFF6704()
{
  v2 = qword_2803DE498;
  if (!qword_2803DE498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DE4A0, &qword_26B08F900);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE498);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AFF678C(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE440, &qword_26B08F8B8);
  (*(*(v1 - 8) + 8))(a1);
  return a1;
}

uint64_t sub_26AFF67F4()
{
  v35 = 0;
  v32 = 0;
  v22 = 0;
  v16 = (*(*(sub_26B078300() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v17 = &v4[-v16];
  v1 = sub_26B079DE0();
  v18 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  v19 = &v4[-v18];
  memcpy(__dst, v0, 0x49uLL);
  v35 = v0;
  v20 = __dst[4];

  v21 = ReactiveDescriptor.currentState.getter();

  v25 = &v34;
  v34 = v21;
  v23 = &v33;
  v33 = 1;
  v24 = type metadata accessor for SUUIStatefulDescriptorState(v22);
  sub_26AE9B8C0();
  if (sub_26B07A790() & 1) != 0 && ((v12 = [objc_opt_self() sharedDefaults], v13 = objc_msgSend(v12, sel_shouldBypassSystemRootWarning), v32 = v13 & 1, MEMORY[0x277D82BD8](v12), memcpy(v31, __dst, sizeof(v31)), v14 = sub_26AFF1804(), v15 = sub_26B078500(), , (v15 & 1) == 0) ? (v11 = 0) : (v11 = v13), (v11 & 1) != 0 && (memcpy(v30, __dst, sizeof(v30)), v9 = sub_26AFF1804(), v10 = sub_26B078510(), , (v10)))
  {
    v5 = 1;
    sub_26B079D00("INTERNAL ONLY: Roots may be installed. Try the update again to receive the full replacement.", 92, 1);
    sub_26B079D80();
    v6 = *sub_26B02D0D0();
    MEMORY[0x277D82BE0](v6);
    sub_26AEFB5C4();
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = v5 & 1;
    v7 = sub_26B079E40();
    v8 = v2;
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  return v7;
}

void sub_26AFF6B30()
{
  sub_26B078990();
  qword_2803DE3A8 = v0;
  qword_2803DE3B0 = v1;
  qword_2803DE3B8 = v2;
  qword_2803DE3C0 = v3;
}

void sub_26AFF6B9C()
{
  sub_26B078990();
  qword_2803DE3C8 = v0;
  qword_2803DE3D0 = v1;
  qword_2803DE3D8 = v2;
  qword_2803DE3E0 = v3;
}

uint64_t get_enum_tag_for_layout_string_19SoftwareUpdateUIKit0B12ActionResultOIegn_Sg(void *a1)
{
  v2 = -1;
  if (*a1 < 0x100000000uLL)
  {
    v2 = *a1;
  }

  return (v2 + 1);
}

uint64_t sub_26AFF6DDC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 73))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 32)))
      {
        v3 = *(a1 + 32);
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

uint64_t sub_26AFF6EF4(uint64_t result, int a2, int a3)
{
  v3 = (result + 73);
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 48) = 0;
    *(result + 40) = 0;
    *(result + 32) = 0;
    *(result + 24) = 0;
    *(result + 16) = 0;
    *(result + 8) = 0;
    *result = a2 + 0x80000000;
    *(result + 64) = 0;
    *(result + 72) = 0;
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
      *(result + 32) = (a2 - 1);
    }
  }

  return result;
}

uint64_t sub_26AFF7108()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DE448, &qword_26B08F8C0);
  sub_26AFF65E4();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_26AFF7180()
{
  v2 = qword_2803DE4C0;
  if (!qword_2803DE4C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DE4B8, &qword_26B08FBE0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE4C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AFF7208()
{
  v2 = qword_2803DE4C8;
  if (!qword_2803DE4C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DE4B0, &qword_26B08FBD8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE4C8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AFF7290(uint64_t a1)
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE470, &qword_26B08F8D8) + 44);

  sub_26AFB9674(*(a1 + v6 + 24), *(a1 + v6 + 32), *(a1 + v6 + 40), *(a1 + v6 + 48), *(a1 + v6 + 56) & 1);

  if (*(a1 + v6 + 104))
  {
  }

  v2 = a1 + v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE478, &qword_26B08F8E0) + 48);
  v3 = sub_26B079A30();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v2, 1))
  {
    (*(v4 + 8))(v2, v3);
  }

  return a1;
}

unint64_t sub_26AFF7424()
{
  v2 = qword_2803DE4D0;
  if (!qword_2803DE4D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DE488, &unk_26B08F8F0);
    sub_26AFF74C8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE4D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AFF74C8()
{
  v2 = qword_2803DE4D8;
  if (!qword_2803DE4D8)
  {
    type metadata accessor for UpdateOptionsView(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE4D8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AFF7548(uint64_t a1)
{
  v45 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE488, &unk_26B08F8F0);
  if (!(*(*(v1 - 8) + 48))(v45, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE20, &unk_26B08D230);
    (*(*(v2 - 8) + 8))(v45);
    updated = type metadata accessor for UpdateOptionsView(0);

    v33 = v45 + updated[6];
    v3 = *v33;
    v4 = *(v33 + 8);
    v5 = *(v33 + 16);
    v6 = *(v33 + 24);
    v7 = *(v33 + 32);
    v8 = *(v33 + 40);
    v9 = *(v33 + 48);
    v10 = *(v33 + 56);
    v11 = *(v33 + 64);
    v34 = *(v33 + 72);
    v35 = *(v33 + 80);
    v36 = *(v33 + 88);
    v37 = *(v33 + 96);
    v38 = *(v33 + 104);
    v39 = *(v33 + 112);
    v12 = *(v33 + 120);
    v13 = *(v33 + 128);
    v14 = *(v33 + 136);
    v15 = *(v33 + 144);
    v16 = *(v33 + 152);
    v17 = *(v33 + 160);
    v18 = *(v33 + 168);
    v19 = *(v33 + 176);
    v20 = *(v33 + 184);
    v21 = *(v33 + 192);
    v22 = *(v33 + 200);
    v23 = *(v33 + 208);
    v24 = *(v33 + 216);
    v25 = *(v33 + 224);
    v26 = *(v33 + 232);
    v27 = *(v33 + 240);
    v28 = *(v33 + 248);
    v29 = *(v33 + 256);
    v30 = *(v33 + 264);
    v40 = *(v33 + 272);
    v41 = &v32;
    sub_26AFD5C30(v3, v4, v5, v6, v7, v8, v9, v10, v11, v34, v35, v36, v37, v38, v39, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v40);

    v42 = v45 + updated[8];
    sub_26AFD66B4(*v42, *(v42 + 8), *(v42 + 16), *(v42 + 24), *(v42 + 32), *(v42 + 40), *(v42 + 48), *(v42 + 56), *(v42 + 64), *(v42 + 72), *(v42 + 80), *(v42 + 88));
    v44 = v45 + updated[9];
    sub_26AFD66B4(*v44, *(v44 + 8), *(v44 + 16), *(v44 + 24), *(v44 + 32), *(v44 + 40), *(v44 + 48), *(v44 + 56), *(v44 + 64), *(v44 + 72), *(v44 + 80), *(v44 + 88));
  }

  return v45;
}

char *sub_26AFF7884(char *a1, char *a2)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE488, &unk_26B08F8F0);
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(a1, 1))
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE4A8, &qword_26B08FBD0);
    memcpy(a2, a1, *(*(v9 - 8) + 64));
  }

  else
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE20, &unk_26B08D230);
    (*(*(v2 - 8) + 32))(a2, a1);
    updated = type metadata accessor for UpdateOptionsView(0);
    v3 = &a2[updated[5]];
    v4 = &a1[updated[5]];
    *v3 = *v4;
    v3[8] = v4[8];
    memcpy(&a2[updated[6]], &a1[updated[6]], 0x111uLL);
    v5 = &a2[updated[7]];
    v6 = &a1[updated[7]];
    v7 = *v6;
    v8 = *(v6 + 1);
    *v5 = v7;
    *(v5 + 1) = v8;
    memcpy(&a2[updated[8]], &a1[updated[8]], 0x59uLL);
    memcpy(&a2[updated[9]], &a1[updated[9]], 0x59uLL);
    memcpy(&a2[*(v14 + 36)], &a1[*(v14 + 36)], 0x29uLL);
    (*(v15 + 56))(a2, 0, 1, v14);
  }

  return a2;
}

uint64_t sub_26AFF7AB8(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE470, &qword_26B08F8D8) + 44);
  v17 = *(a1 + v16);

  v26 = a2 + v16;
  *(a2 + v16) = v17;
  v18 = *(a1 + v16 + 8);
  v19 = *(a1 + v16 + 16);

  *(v26 + 8) = v18;
  *(v26 + 16) = v19 & 1;
  v20 = *(a1 + v16 + 24);
  v21 = *(a1 + v16 + 32);
  v22 = *(a1 + v16 + 40);
  v23 = *(a1 + v16 + 48);
  v24 = *(a1 + v16 + 56);
  sub_26AFB9610(v20, v21, v22, v23, v24 & 1);
  *(v26 + 24) = v20;
  *(v26 + 32) = v21;
  *(v26 + 40) = v22;
  *(v26 + 48) = v23;
  *(v26 + 56) = v24 & 1;
  *(v26 + 64) = *(a1 + v16 + 64);
  v25 = *(a1 + v16 + 72);

  *(v26 + 72) = v25;
  *(v26 + 80) = *(a1 + v16 + 80);
  v27 = *(a1 + v16 + 88);

  *(v26 + 88) = v27;
  if (*(a1 + v16 + 104))
  {
    v11 = *(a1 + v16 + 96);

    v13 = a2 + v16;
    *(a2 + v16 + 96) = v11;
    v12 = *(a1 + v16 + 104);

    *(v13 + 104) = v12;
    *(v13 + 112) = *(a1 + v16 + 112);
  }

  else
  {
    v2 = a2 + v16;
    *(v2 + 96) = *(a1 + v16 + 96);
    *(v2 + 112) = *(a1 + v16 + 112);
  }

  memcpy((a2 + v16 + 120), (a1 + v16 + 120), 0x70uLL);
  v6 = *(a1 + v16 + 232);

  *(a2 + v16 + 232) = v6;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE478, &qword_26B08F8E0);
  __dst = (a2 + v16 + *(v3 + 48));
  __src = (a1 + v16 + *(v3 + 48));
  v9 = sub_26B079A30();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(__src, 1))
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE4E0, &unk_26B08FBE8);
    memcpy(__dst, __src, *(*(v4 - 8) + 64));
  }

  else
  {
    (*(v10 + 16))(__dst, __src, v9);
    (*(v10 + 56))(__dst, 0, 1, v9);
  }

  return a2;
}

char *sub_26AFF7E58(char *a1, char *a2)
{
  v148 = a1;
  v147 = a2;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE488, &unk_26B08F8F0);
  v150 = *(v149 - 8);
  v151 = v149 - 8;
  if ((*(v150 + 48))(v148, 1))
  {
    v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE4A8, &qword_26B08FBD0);
    memcpy(v147, v148, *(*(v80 - 8) + 64));
  }

  else
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE20, &unk_26B08D230);
    (*(*(v2 - 8) + 16))(v147, v148);
    updated = type metadata accessor for UpdateOptionsView(0);
    v85 = &v147[*(updated + 20)];
    v3 = &v148[*(updated + 20)];
    v83 = *v3;
    v84 = v3[8];

    v4 = updated;
    v5 = v84;
    v6 = v85;
    v7 = v148;
    v8 = v147;
    *v85 = v83;
    v146 = 1;
    v6[8] = v5 & 1;
    v113 = &v8[*(v4 + 24)];
    v86 = &v7[*(v4 + 24)];
    v88 = *v86;
    v106 = *(v86 + 1);
    v107 = *(v86 + 2);
    v108 = *(v86 + 3);
    v109 = *(v86 + 4);
    v110 = *(v86 + 5);
    v89 = *(v86 + 6);
    v90 = *(v86 + 7);
    v91 = *(v86 + 8);
    v111 = *(v86 + 9);
    v112 = *(v86 + 10);
    v105 = *(v86 + 11);
    v9 = *(v86 + 12);
    v10 = *(v86 + 13);
    v11 = *(v86 + 14);
    v12 = *(v86 + 15);
    v13 = *(v86 + 16);
    v14 = *(v86 + 17);
    v15 = *(v86 + 18);
    v16 = *(v86 + 19);
    v17 = *(v86 + 20);
    v18 = *(v86 + 21);
    v92 = *(v86 + 22);
    v93 = *(v86 + 23);
    v94 = *(v86 + 24);
    v95 = *(v86 + 25);
    v96 = *(v86 + 26);
    v97 = *(v86 + 27);
    v98 = *(v86 + 28);
    v99 = *(v86 + 29);
    v100 = *(v86 + 30);
    v101 = *(v86 + 31);
    v102 = *(v86 + 32);
    v103 = *(v86 + 33);
    v104 = v86[272];
    v87 = &v82;
    sub_26AFD5850(v88, v106, v107, v108, v109, v110, v89, v90, v91, v111, v112, v105, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104);
    v19 = v89;
    v20 = v90;
    v21 = v91;
    v22 = v92;
    v23 = v93;
    v24 = v94;
    v25 = v95;
    v26 = v96;
    v27 = v97;
    v28 = v98;
    v29 = v99;
    v30 = v100;
    v31 = v101;
    v32 = v102;
    v33 = v103;
    v34 = v104;
    v35 = v105;
    *v113 = v88;
    *(v113 + 1) = v106;
    *(v113 + 2) = v107;
    *(v113 + 3) = v108;
    *(v113 + 4) = v109;
    *(v113 + 5) = v110;
    v36 = v111;
    *(v113 + 6) = v19;
    v37 = v112;
    *(v113 + 7) = v20;
    v38 = updated;
    *(v113 + 8) = v21;
    LOBYTE(v20) = v146;
    v39 = v113;
    *(v113 + 9) = v36;
    v40 = v147;
    *(v39 + 10) = v37;
    v41 = v148;
    *(v39 + 11) = v35;
    *(v39 + 12) = v9;
    *(v39 + 13) = v10;
    *(v39 + 14) = v11;
    *(v39 + 15) = v12;
    *(v39 + 16) = v13;
    *(v39 + 17) = v14;
    *(v39 + 18) = v15;
    *(v39 + 19) = v16;
    *(v39 + 20) = v17;
    *(v39 + 21) = v18;
    *(v39 + 22) = v22;
    *(v39 + 23) = v23;
    *(v39 + 24) = v24;
    *(v39 + 25) = v25;
    *(v39 + 26) = v26;
    *(v39 + 27) = v27;
    *(v39 + 28) = v28;
    *(v39 + 29) = v29;
    *(v39 + 30) = v30;
    *(v39 + 31) = v31;
    *(v39 + 32) = v32;
    *(v39 + 33) = v33;
    v39[272] = v34 & 1 & v20;
    v115 = &v40[*(v38 + 28)];
    v42 = &v41[*(v38 + 28)];
    v114 = *v42;
    v116 = *(v42 + 1);

    v43 = updated;
    v44 = v115;
    v45 = v116;
    v46 = v148;
    v47 = v147;
    *v115 = v114;
    *(v44 + 1) = v45;
    v130 = &v47[*(v43 + 32)];
    v117 = &v46[*(v43 + 32)];
    v118 = *v117;
    v119 = *(v117 + 1);
    v120 = *(v117 + 2);
    v121 = *(v117 + 3);
    v122 = *(v117 + 4);
    v123 = *(v117 + 5);
    v124 = *(v117 + 6);
    v125 = *(v117 + 7);
    v126 = *(v117 + 8);
    v127 = *(v117 + 9);
    v128 = *(v117 + 10);
    LOBYTE(v46) = v117[88];
    v129 = v46;
    sub_26AFD659C(v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v46);
    v48 = v119;
    v49 = v120;
    v50 = v121;
    v51 = v122;
    v52 = v123;
    v53 = v124;
    v54 = v125;
    v55 = v126;
    v56 = v127;
    v57 = v128;
    v58 = v129;
    v59 = v130;
    v60 = updated;
    v61 = v148;
    v62 = v147;
    v63 = v146;
    *v130 = v118;
    *(v59 + 1) = v48;
    *(v59 + 2) = v49;
    *(v59 + 3) = v50;
    *(v59 + 4) = v51;
    *(v59 + 5) = v52;
    *(v59 + 6) = v53;
    *(v59 + 7) = v54;
    *(v59 + 8) = v55;
    *(v59 + 9) = v56;
    *(v59 + 10) = v57;
    v59[88] = v58 & 1 & v63;
    v145 = &v62[*(v60 + 36)];
    v132 = &v61[*(v60 + 36)];
    v133 = *v132;
    v134 = *(v132 + 1);
    v135 = *(v132 + 2);
    v136 = *(v132 + 3);
    v137 = *(v132 + 4);
    v138 = *(v132 + 5);
    v139 = *(v132 + 6);
    v140 = *(v132 + 7);
    v141 = *(v132 + 8);
    v142 = *(v132 + 9);
    v143 = *(v132 + 10);
    v144 = v132[88];
    sub_26AFD659C(v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144);
    v64 = v134;
    v65 = v135;
    v66 = v136;
    v67 = v137;
    v68 = v138;
    v69 = v139;
    v70 = v140;
    v71 = v141;
    v72 = v142;
    v73 = v143;
    v74 = v144;
    v75 = v145;
    v76 = v148;
    v77 = v147;
    v78 = v146;
    v79 = v149;
    *v145 = v133;
    *(v75 + 1) = v64;
    *(v75 + 2) = v65;
    *(v75 + 3) = v66;
    *(v75 + 4) = v67;
    *(v75 + 5) = v68;
    *(v75 + 6) = v69;
    *(v75 + 7) = v70;
    *(v75 + 8) = v71;
    *(v75 + 9) = v72;
    *(v75 + 10) = v73;
    v75[88] = v74 & 1 & v78;
    memcpy(&v77[*(v79 + 36)], &v76[*(v79 + 36)], 0x29uLL);
    (*(v150 + 56))(v147, 0, v146, v149);
  }

  return v147;
}

unint64_t sub_26AFF857C()
{
  v2 = qword_2803DE4E8;
  if (!qword_2803DE4E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DE4A8, &qword_26B08FBD0);
    sub_26AFF7424();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE4E8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AFF8614()
{

  if (*(v0 + 56))
  {
  }

  if (*(v2 + 80))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_26AFF86B4(uint64_t a1)
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

uint64_t sub_26AFF8974(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE20, &unk_26B08D230);
  (*(*(v2 - 8) + 16))(a2, a1);
  updated = type metadata accessor for UpdateOptionsView(0);
  v20 = updated[5];
  v21 = *(a1 + v20);
  v22 = *(a1 + v20 + 8);

  v3 = a2 + v20;
  *v3 = v21;
  *(v3 + 8) = v22 & 1;
  v23 = updated[6];
  v41 = *(a1 + v23);
  v42 = *(a1 + v23 + 8);
  v43 = *(a1 + v23 + 16);
  v44 = *(a1 + v23 + 24);
  v45 = *(a1 + v23 + 32);
  v46 = *(a1 + v23 + 40);
  v47 = *(a1 + v23 + 48);
  v24 = *(a1 + v23 + 56);
  v25 = *(a1 + v23 + 64);
  v48 = *(a1 + v23 + 72);
  v40 = *(a1 + v23 + 80);
  v4 = *(a1 + v23 + 88);
  v5 = *(a1 + v23 + 96);
  v6 = *(a1 + v23 + 104);
  v7 = *(a1 + v23 + 112);
  v8 = *(a1 + v23 + 120);
  v9 = *(a1 + v23 + 128);
  v10 = *(a1 + v23 + 136);
  v11 = *(a1 + v23 + 144);
  v12 = *(a1 + v23 + 152);
  v13 = *(a1 + v23 + 160);
  v26 = *(a1 + v23 + 168);
  v27 = *(a1 + v23 + 176);
  v28 = *(a1 + v23 + 184);
  v29 = *(a1 + v23 + 192);
  v30 = *(a1 + v23 + 200);
  v31 = *(a1 + v23 + 208);
  v32 = *(a1 + v23 + 216);
  v33 = *(a1 + v23 + 224);
  v34 = *(a1 + v23 + 232);
  v35 = *(a1 + v23 + 240);
  v36 = *(a1 + v23 + 248);
  v37 = *(a1 + v23 + 256);
  v38 = *(a1 + v23 + 264);
  v39 = *(a1 + v23 + 272);
  sub_26AFD5850(v41, v42, v43, v44, v45, v46, v47, v24, v25, v48, v40, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39);
  v14 = a2 + v23;
  *v14 = v41;
  *(v14 + 8) = v42;
  *(v14 + 16) = v43;
  *(v14 + 24) = v44;
  *(v14 + 32) = v45;
  *(v14 + 40) = v46;
  *(v14 + 48) = v47;
  *(v14 + 56) = v24;
  *(v14 + 64) = v25;
  *(v14 + 72) = v48;
  *(v14 + 80) = v40;
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
  *(v14 + 168) = v26;
  *(v14 + 176) = v27;
  *(v14 + 184) = v28;
  *(v14 + 192) = v29;
  *(v14 + 200) = v30;
  *(v14 + 208) = v31;
  *(v14 + 216) = v32;
  *(v14 + 224) = v33;
  *(v14 + 232) = v34;
  *(v14 + 240) = v35;
  *(v14 + 248) = v36;
  *(v14 + 256) = v37;
  *(v14 + 264) = v38;
  *(v14 + 272) = v39 & 1;
  v49 = updated[7];
  v50 = *(a1 + v49);
  v51 = *(a1 + v49 + 8);

  v15 = (a2 + v49);
  *v15 = v50;
  v15[1] = v51;
  v52 = updated[8];
  v53 = *(a1 + v52);
  v54 = *(a1 + v52 + 8);
  v55 = *(a1 + v52 + 16);
  v56 = *(a1 + v52 + 24);
  v57 = *(a1 + v52 + 32);
  v58 = *(a1 + v52 + 40);
  v59 = *(a1 + v52 + 48);
  v60 = *(a1 + v52 + 56);
  v61 = *(a1 + v52 + 64);
  v62 = *(a1 + v52 + 72);
  v63 = *(a1 + v52 + 80);
  v64 = *(a1 + v52 + 88);
  sub_26AFD659C(v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64);
  v16 = a2 + v52;
  *v16 = v53;
  *(v16 + 8) = v54;
  *(v16 + 16) = v55;
  *(v16 + 24) = v56;
  *(v16 + 32) = v57;
  *(v16 + 40) = v58;
  *(v16 + 48) = v59;
  *(v16 + 56) = v60;
  *(v16 + 64) = v61;
  *(v16 + 72) = v62;
  *(v16 + 80) = v63;
  *(v16 + 88) = v64 & 1;
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
  v17 = a2 + v66;
  *v17 = v67;
  *(v17 + 8) = v68;
  *(v17 + 16) = v69;
  *(v17 + 24) = v70;
  *(v17 + 32) = v71;
  *(v17 + 40) = v72;
  *(v17 + 48) = v73;
  *(v17 + 56) = v74;
  *(v17 + 64) = v75;
  *(v17 + 72) = v76;
  *(v17 + 80) = v77;
  *(v17 + 88) = v78 & 1;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE488, &unk_26B08F8F0);
  memcpy((a2 + *(v18 + 36)), (a1 + *(v18 + 36)), 0x29uLL);
  return a2;
}

uint64_t sub_26AFF8FA4()
{
  swift_unknownObjectRelease();

  if (*(v0 + 72))
  {
  }

  if (*(v2 + 96))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_26AFF9044(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 105);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_26AFF9120;

  return sub_26AFF5BF0(a1, v6, v7, v1 + 32, v8);
}

uint64_t sub_26AFF9120()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_26AFF925C@<X0>(uint64_t a1@<X0>, uint64_t *a7@<X8>)
{
  if (!a1)
  {
    sub_26B07A650();
    __break(1u);
  }

  result = swift_task_create();
  *a7 = result;
  return result;
}

uint64_t sub_26AFF93CC()
{
  swift_unknownObjectRelease();

  if (*(v0 + 72))
  {
  }

  if (*(v2 + 96))
  {
  }

  MEMORY[0x277D82BD8](*(v2 + 112));
  return swift_deallocObject();
}

uint64_t sub_26AFF9480(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 112);
  v9 = *(v1 + 120);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_26AFF9568;

  return sub_26AFF6304(a1, v6, v7, v1 + 32, v8, v9);
}

uint64_t sub_26AFF9568()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

unint64_t sub_26AFF9690()
{
  v2 = qword_2803DE4F8;
  if (!qword_2803DE4F8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE4F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AFF9708()
{
  v2 = qword_2803DE508;
  if (!qword_2803DE508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DE500, &qword_26B08FC28);
    sub_26AFF9690();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE508);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AFF97AC(uint64_t a1)
{

  sub_26AFB9674(*(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56) & 1);

  if (*(a1 + 104))
  {
  }

  return a1;
}

unint64_t sub_26AFF9848()
{
  v2 = qword_2803DE518;
  if (!qword_2803DE518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DE510, &qword_26B08FC30);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE518);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AFF98D0(uint64_t a1)
{

  sub_26AFB9674(*(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56) & 1);

  if (*(a1 + 104))
  {
  }

  return a1;
}

unint64_t sub_26AFF9978()
{
  v2 = qword_2803DE520;
  if (!qword_2803DE520)
  {
    sub_26B079A30();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE520);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AFF99F8(uint64_t a1)
{
  v3 = sub_26B079A30();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

void *sub_26AFF9AA0(const void *a1, void *a2)
{
  v6 = sub_26B079A30();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE4E0, &unk_26B08FBE8);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_26AFF9BC8(uint64_t *a1, uint64_t a2)
{
  v6 = *a1;

  *a2 = v6;
  v7 = a1[1];
  v8 = *(a1 + 16);

  *(a2 + 8) = v7;
  *(a2 + 16) = v8 & 1;
  v9 = a1[3];
  v10 = a1[4];
  v11 = a1[5];
  v12 = a1[6];
  v13 = *(a1 + 56);
  sub_26AFB9610(v9, v10, v11, v12, v13 & 1);
  *(a2 + 24) = v9;
  *(a2 + 32) = v10;
  *(a2 + 40) = v11;
  *(a2 + 48) = v12;
  *(a2 + 56) = v13 & 1;
  *(a2 + 64) = a1[8];
  v14 = a1[9];

  *(a2 + 72) = v14;
  *(a2 + 80) = a1[10];
  v17 = a1[11];

  *(a2 + 88) = v17;
  if (a1[13])
  {
    v4 = a1[12];

    *(a2 + 96) = v4;
    v5 = a1[13];

    *(a2 + 104) = v5;
  }

  else
  {
    *(a2 + 96) = *(a1 + 6);
  }

  *(a2 + 112) = *(a1 + 112);
  memcpy((a2 + 120), a1 + 15, 0x70uLL);
  v3 = a1[29];

  result = a2;
  *(a2 + 232) = v3;
  return result;
}

void *sub_26AFF9DA0(const void *a1, void *a2)
{
  v6 = sub_26B079A30();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE4E0, &unk_26B08FBE8);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

unint64_t sub_26AFF9EC8()
{
  v2 = qword_2803DE528;
  if (!qword_2803DE528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DE4E0, &unk_26B08FBE8);
    sub_26AFF9978();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE528);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AFF9F70()
{
  v2 = qword_2803DE540;
  if (!qword_2803DE540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DE530, &qword_26B08FC38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DE448, &qword_26B08F8C0);
    sub_26AFF65E4();
    swift_getOpaqueTypeConformance2();
    sub_26AF6B948();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE540);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AFFA074()
{
  v2 = qword_2803DE548;
  if (!qword_2803DE548)
  {
    type metadata accessor for AvailableUpdateProactiveSuggestionView(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE548);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AFFA0F4@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_unknownObjectRetain();
  swift_getObjectType();
  *a2 = [v3 progress];
  return swift_unknownObjectRelease();
}

uint64_t sub_26AFFA160@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v18 = a1;
  v30 = 0;
  v29 = 0;
  updated = type metadata accessor for UpdateStatusView(0);
  v15 = (*(*(updated - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v18);
  v20 = (&v14 - v15);
  v30 = &v14 - v15;
  v29 = v2;
  swift_getKeyPath();
  sub_26B078A30();
  v3 = v20;
  v4 = v24;
  v5 = v25;
  v6 = v26;
  v7 = v27;
  v8 = v28;
  *v20 = v23;
  v3[1] = v4;
  v3[2] = v5;
  v3[3] = v6;
  v3[4] = v7;
  v16 = 1;
  *(v3 + 40) = v8 & 1;
  swift_getKeyPath();
  sub_26B078A30();
  v9 = v16;
  v10 = v18;
  v11 = v20;
  v12 = v22;
  v20[6] = v21;
  *(v11 + 56) = v12 & 1 & v9;
  sub_26AFFA5D8(v10);
  sub_26AFC4778(v20, v19);
  return sub_26AFC4568(v20);
}

uint64_t type metadata accessor for UpdateStatusView(uint64_t a1)
{
  v2 = qword_2803DE5F0;
  if (!qword_2803DE5F0)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_26AFFA33C@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = *(v1 + 40);
  sub_26AFC0708(*v1, v4, v5, v6, v7, v8 & 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE558, &unk_26B08FCC8);
  sub_26B078A10();
  result = sub_26AFBE774(v3, v4, v5, v6, v7, v8 & 1);
  *a1 = v10;
  a1[1] = v11;
  a1[2] = v12;
  a1[3] = v13;
  a1[4] = v14;
  return result;
}

uint64_t sub_26AFFA488(uint64_t *a1)
{
  sub_26AFFE9D0(a1, v4);
  sub_26AFFEA68(a1, v2);
  return sub_26AFFEAE8(a1);
}

uint64_t sub_26AFFA4C8()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DB510, &qword_26B086040);
  sub_26B078A10();

  return v1;
}

uint64_t sub_26AFFA54C()
{
  v2 = *(v0 + 48);

  return v2;
}

uint64_t sub_26AFFA588(uint64_t a1, char a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2 & 1;
}

uint64_t sub_26AFFA644()
{
  v13 = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE20, &unk_26B08D230);
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10);
  v0 = &v4 - v5;
  v9 = &v4 - v5;
  v13 = v1;
  updated = type metadata accessor for UpdateStatusView(0);
  (*(v7 + 16))(v0, v6 + *(updated + 24), v10);
  sub_26B079AD0();
  v11 = v12;
  (*(v7 + 8))(v9, v10);
  return v11;
}

uint64_t sub_26AFFA770(uint64_t a1)
{

  type metadata accessor for UpdateStatusView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE20, &unk_26B08D230);
  sub_26B079AE0();
}

uint64_t sub_26AFFA800@<X0>(uint64_t a1@<X8>)
{
  v5[2] = a1;
  v10 = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE20, &unk_26B08D230);
  v6 = *(v9 - 8);
  v7 = v9 - 8;
  v5[0] = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v9);
  v1 = v5 - v5[0];
  v8 = v5 - v5[0];
  v10 = v2;
  updated = type metadata accessor for UpdateStatusView(0);
  (*(v6 + 16))(v1, v5[1] + *(updated + 24), v9);
  sub_26B079AF0();
  return (*(v6 + 8))(v8, v9);
}

uint64_t sub_26AFFA924@<X0>(uint64_t a1@<X8>)
{
  v4 = *(type metadata accessor for UpdateStatusView(0) + 24);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE20, &unk_26B08D230);
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_26AFFA9A0(uint64_t a1)
{
  v10 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE20, &unk_26B08D230);
  v7 = *(v9 - 8);
  v8 = v9 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v9);
  v6 = &v5 - v5;
  (*(v7 + 16))(v2);
  updated = type metadata accessor for UpdateStatusView(0);
  (*(v7 + 40))(v1 + *(updated + 24), v6, v9);
  return (*(v7 + 8))(v10, v9);
}

uint64_t sub_26AFFAAC8@<X0>(uint64_t a1@<X8>)
{
  v11 = a1;
  v7 = sub_26AFFEB30;
  v19 = 0;
  v18 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE560, &qword_26B08FCD8);
  v5 = (*(*(v12 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v12);
  v14 = &v4 - v5;
  v6 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v4 - v5);
  v15 = &v4 - v6;
  v19 = &v4 - v6;
  v18 = v1;
  v10 = sub_26B078E60();
  v8 = &v16;
  v17 = v1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE568, &qword_26B08FCE0);
  sub_26AFFEB38();
  sub_26B079980();
  v13 = sub_26AFFEBC0();
  sub_26AE9463C(v14, v12, v15);
  sub_26AFFEC48(v14);
  sub_26AFFEEAC(v15, v14);
  sub_26AE94B4C(v14, v12, v11);
  sub_26AFFEC48(v14);
  return sub_26AFFEC48(v15);
}

uint64_t sub_26AFFAC50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v103 = a2;
  v157 = a1;
  v104 = MEMORY[0x277CDE5E0];
  v224 = 0;
  v223 = 0;
  v222 = 0;
  v221 = 0;
  v220 = 0;
  v185 = 0;
  v105 = sub_26B079060();
  v106 = *(v105 - 8);
  v107 = v105 - 8;
  v108 = (*(v106 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v105);
  v109 = &v17 - v108;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE1A0, &qword_26B08FE70);
  v111 = *(v110 - 8);
  v112 = v110 - 8;
  v113 = (*(v111 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v110);
  v114 = &v17 - v113;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE620, &unk_26B08FE78);
  v116 = (*(*(v115 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v115);
  v117 = &v17 - v116;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE5B8, &qword_26B08FD20);
  v119 = *(v118 - 8);
  v120 = v118 - 8;
  v121 = (*(v119 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v118);
  v122 = &v17 - v121;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE5B0, &qword_26B08FD18);
  v124 = *(v123 - 8);
  v125 = v123 - 8;
  v126 = (*(v124 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v123);
  v127 = &v17 - v126;
  v128 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v17 - v126);
  v129 = &v17 - v128;
  v224 = &v17 - v128;
  v130 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v131 = &v17 - v130;
  v132 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v17 - v130);
  v133 = &v17 - v132;
  v223 = &v17 - v132;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DE5C0, qword_26B08FD28);
  v135 = (*(*(v134 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v134);
  v136 = &v17 - v135;
  v137 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v17 - v135);
  v138 = &v17 - v137;
  v139 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v17 - v137);
  v140 = &v17 - v139;
  v222 = &v17 - v139;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DB598, &qword_26B08FCF0);
  v142 = (*(*(v141 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v141);
  v156 = &v17 - v142;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE590, &qword_26B08FCF8);
  v144 = (*(*(v143 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v143);
  v145 = &v17 - v144;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE598, &qword_26B08FD00);
  v147 = (*(*(v146 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v146);
  v148 = &v17 - v147;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE5A0, &qword_26B08FD08);
  v150 = (*(*(v149 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v149);
  v151 = &v17 - v150;
  v152 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v17 - v150);
  v153 = &v17 - v152;
  v154 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v17 - v152);
  v155 = &v17 - v154;
  v221 = &v17 - v154;
  v220 = a1;
  v216 = sub_26AFFBDF4();
  v217 = v11;
  v218 = v12;
  v219 = v13;
  v158 = v213;
  v213[0] = v216;
  v213[1] = v11;
  v214 = v12 & 1;
  v215 = v13;
  v212 = 2;
  View.suuiIdentifiable(_:)();
  sub_26AE95B40(v158);
  v159 = sub_26AFFA644();
  v160 = ReactiveDescriptor.hasAnyError.getter();

  if (v160)
  {
    v91 = *v157;
    v92 = *(v157 + 8);
    v93 = *(v157 + 16);
    v94 = *(v157 + 24);
    v95 = *(v157 + 32);
    v96 = *(v157 + 40);
    sub_26AFC0708(v91, v92, v93, v94, v95, v96 & 1);
    v166 = v91;
    v167 = v92;
    v168 = v93;
    v169 = v94;
    v170 = v95;
    v171 = v96 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE558, &unk_26B08FCC8);
    sub_26B078A10();
    v97 = v161;
    v101 = v162;
    v98 = v163;
    v99 = v164;
    v100 = v165;
    sub_26AFBE774(v91, v92, v93, v94, v95, v96 & 1);

    v102 = v101;
  }

  else
  {
    v80 = *v157;
    v81 = *(v157 + 8);
    v82 = *(v157 + 16);
    v83 = *(v157 + 24);
    v84 = *(v157 + 32);
    v85 = *(v157 + 40);
    sub_26AFC0708(v80, v81, v82, v83, v84, v85 & 1);
    v206 = v80;
    v207 = v81;
    v208 = v82;
    v209 = v83;
    v210 = v84;
    v211 = v85 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE558, &unk_26B08FCC8);
    sub_26B078A10();
    v90 = v201;
    v86 = v202;
    v87 = v203;
    v88 = v204;
    v89 = v205;
    sub_26AFBE774(v80, v81, v82, v83, v84, v85 & 1);

    v102 = v90;
  }

  v61 = v102;
  sub_26AE958D0();
  sub_26B0794D0();

  sub_26AE95B88(v156);
  v63 = *v157;
  v64 = *(v157 + 8);
  v65 = *(v157 + 16);
  v66 = *(v157 + 24);
  v67 = *(v157 + 32);
  v68 = *(v157 + 40);
  v76 = 1;
  sub_26AFC0708(v63, v64, v65, v66, v67, v68 & 1);
  v195 = v63;
  v196 = v64;
  v197 = v65;
  v198 = v66;
  v199 = v67;
  v200 = v68 & 1;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE558, &unk_26B08FCC8);
  sub_26B078A10();
  v69 = v190;
  v70 = v191;
  v73 = v192;
  v71 = v193;
  v72 = v194;
  sub_26AFBE774(v63, v64, v65, v66, v67, v68 & 1);

  sub_26AFFF89C();
  sub_26B0795C0();

  sub_26AFFF944(v145);
  sub_26AFFFA24();
  sub_26B079710();
  sub_26AFFFACC(v148);
  v74 = sub_26AFFFBE8();
  sub_26AE9463C(v153, v149, v155);
  sub_26AFFFC90(v153);
  v77 = *(v157 + 48);
  v75 = *(v157 + 56);

  v188[3] = v77;
  v189 = v75 & 1 & v76;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DB510, &qword_26B086040);
  sub_26B078A10();
  v78 = v188[2];

  v79 = ReactiveUIManager.currentDownload.getter();

  if (v79)
  {
    v60 = v79;
    v56 = v79;
    KeyPath = swift_getKeyPath();
    ReactiveDownload.subscript.getter(KeyPath, v172);
    v58 = v172[0];

    v59 = v58;
  }

  else
  {
    v59 = 0;
  }

  v55 = v59;
  if (!v59)
  {
    goto LABEL_16;
  }

  v54 = v55;
  v53 = v55;
  v185 = v55;
  v14 = sub_26AFFD6A8();
  if ((v14 & 1) == 0)
  {
    swift_unknownObjectRelease();
LABEL_16:
    (*(v124 + 56))(v136, 1, 1, v123);
    sub_26AFFFDD4();
    sub_26AF09CCC(v136, v123, v138);
    sub_26B0000A4(v136);
    sub_26B00018C(v138, v140);
    goto LABEL_17;
  }

  swift_getObjectType();
  swift_unknownObjectRetain();
  [v53 normalizedPercentComplete];
  v46 = v15;
  swift_unknownObjectRelease();
  v47 = &v183;
  v183 = v46;
  v184 = 0;
  v49 = sub_26B000760();
  v48 = MEMORY[0x277D83A90];
  sub_26AFFDB74(MEMORY[0x277D83A90], v49, &v182);
  v181 = v182;
  sub_26B078A50();
  v50 = &v180;
  v180 = 3;
  sub_26AFE3FB8();
  View.suuiIdentifiable(_:)();
  (*(v111 + 8))(v114, v110);
  sub_26AFFDC6C();
  v51 = sub_26AFFFEF4();
  v52 = sub_26AFFFF9C();
  sub_26B0793B0();
  (*(v106 + 8))(v109, v105);
  sub_26B0007D8(v117);
  if (sub_26AFFDC84())
  {
    v34 = *v157;
    v35 = *(v157 + 8);
    v36 = *(v157 + 16);
    v37 = *(v157 + 24);
    v38 = *(v157 + 32);
    v39 = *(v157 + 40);
    sub_26AFC0708(v34, v35, v36, v37, v38, v39 & 1);
    v172[6] = v34;
    v172[7] = v35;
    v172[8] = v36;
    v172[9] = v37;
    v172[10] = v38;
    v173 = v39 & 1;
    sub_26B078A10();
    v40 = v172[1];
    v41 = v172[2];
    v42 = v172[3];
    v43 = v172[4];
    v44 = v172[5];
    sub_26AFBE774(v34, v35, v36, v37, v38, v39 & 1);

    v45 = v44;
  }

  else
  {
    v23 = *v157;
    v24 = *(v157 + 8);
    v25 = *(v157 + 16);
    v26 = *(v157 + 24);
    v27 = *(v157 + 32);
    v28 = *(v157 + 40);
    sub_26AFC0708(v23, v24, v25, v26, v27, v28 & 1);
    v178[6] = v23;
    v178[7] = v24;
    v178[8] = v25;
    v178[9] = v26;
    v178[10] = v27;
    v179 = v28 & 1;
    sub_26B078A10();
    v29 = v178[1];
    v30 = v178[2];
    v31 = v178[3];
    v33 = v178[4];
    v32 = v178[5];
    sub_26AFBE774(v23, v24, v25, v26, v27, v28 & 1);

    v45 = v33;
  }

  v21 = v178;
  v178[0] = v45;
  v174 = v115;
  v175 = v105;
  v176 = v51;
  v177 = v52;
  swift_getOpaqueTypeConformance2();
  sub_26B0795D0();
  sub_26B00089C();
  (*(v119 + 8))(v122, v118);
  v22 = sub_26AFFFDD4();
  sub_26AE9463C(v131, v123, v133);
  sub_26B0008C8(v131);
  sub_26B00096C(v133, v127);
  sub_26AE94B4C(v127, v123, v129);
  sub_26B0008C8(v127);
  sub_26B00096C(v129, v136);
  (*(v124 + 56))(v136, 0, 1, v123);
  sub_26AF09CCC(v136, v123, v138);
  sub_26B0000A4(v136);
  sub_26B00018C(v138, v140);
  sub_26B0008C8(v129);
  sub_26B0008C8(v133);
  swift_unknownObjectRelease();
LABEL_17:
  sub_26B0002E8(v155, v151);
  v20 = v188;
  v188[0] = v151;
  sub_26B000528(v140, v138);
  v188[1] = v138;
  v18 = v187;
  v187[0] = v149;
  v187[1] = v134;
  v19 = v186;
  v186[0] = v74;
  v186[1] = sub_26B0006C8();
  sub_26AFD49C4(v20, 2uLL, v18, v103);
  sub_26B0000A4(v138);
  sub_26AFFFC90(v151);
  sub_26B0000A4(v140);
  return sub_26AFFFC90(v155);
}

uint64_t sub_26AFFBDF4()
{
  v254 = 0;
  v253 = 0;
  v193 = 0;
  v189 = 0.0;
  v170 = 0;
  v259 = v0;
  sub_26AFFA644();
  v128 = ReactiveDescriptor.hasAnyError.getter();

  if (v128)
  {
    sub_26AFFA644();
    v126 = ReactiveDescriptor.isDownloaded.getter();

    if (v126)
    {
      sub_26B079D00("Unable to install", 17, 1);
    }

    else
    {
      sub_26B079D00("Unable to download", 18, 1);
    }

    sub_26B078E10();
    v1 = sub_26B02D0D0();
    MEMORY[0x277D82BE0](*v1);
    return sub_26B0792C0();
  }

  v122 = *(v127 + 48);
  v121 = *(v127 + 56);

  v257 = v122;
  v258 = v121 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DB510, &qword_26B086040);
  sub_26B078A10();

  v124 = ReactiveUIManager.targetedDescriptor.getter();

  v123 = sub_26AFFA644();

  v255 = v124;
  v256 = v123;
  if (!v124)
  {
    if (!v256)
    {
      sub_26AF7E684();
      v120 = 1;
      goto LABEL_12;
    }

    goto LABEL_14;
  }

  sub_26AF7E6B0(&v255, &v131);
  if (!v256)
  {

LABEL_14:
    sub_26AF7E5D0();
    v120 = 0;
    goto LABEL_12;
  }

  v130 = v131;
  v129 = v256;
  type metadata accessor for ReactiveDescriptor(0);
  v119 = static ReactiveDescriptor.== infix(_:_:)(v130, v129);

  sub_26AF7E684();
  v120 = v119;
LABEL_12:

  v254 = v120 & 1;
  v116 = *(sub_26AFFA644() + 24);
  MEMORY[0x277D82BE0](v116);

  v117 = [v116 descriptor];
  MEMORY[0x277D82BD8](v116);
  swift_getObjectType();
  v118 = [v117 isSplatUpdate];
  v253 = v118 & 1;
  swift_unknownObjectRelease();
  if (v120 & 1) == 0 || (sub_26AFFDDD4())
  {
LABEL_59:
    v79 = *(v127 + 48);
    v78 = *(v127 + 56);

    v251[2] = v79;
    v252 = v78 & 1;
    sub_26B078A10();

    v80 = ReactiveUIManager.isClearingSpaceForDownload.getter();

    if (v80)
    {
      if (v118)
      {
        HIBYTE(v76) = 1;
        sub_26B079D00("Security Response Requested…", 30, 0);
        sub_26B078E10();
        v57 = sub_26B02D0D0();
        MEMORY[0x277D82BE0](*v57);
        v235 = 0;
        v236 = 0;
        v237 = v76 & 0x100;
        v231 = sub_26B0792C0();
        v232 = v58;
        v233 = v59;
        v234 = v60;
        return v231;
      }

      else
      {
        HIBYTE(v75) = 1;
        sub_26B079D00("Update Requested…", 19, 0);
        sub_26B078E10();
        v61 = sub_26B02D0D0();
        MEMORY[0x277D82BE0](*v61);
        v242 = 0;
        v243 = 0;
        v244 = v75 & 0x100;
        v238 = sub_26B0792C0();
        v239 = v62;
        v240 = v63;
        v241 = v64;
        return v238;
      }
    }

    else
    {
      v72 = objc_opt_self();
      sub_26AFFA644();
      KeyPath = swift_getKeyPath();
      ReactiveDescriptor.subscript.getter(KeyPath, v251);
      v74 = v251[0];

      if (v74 > 0x7FFFFFFFFFFFFFFFLL)
      {
        sub_26B07A650();
        __break(1u);
      }

      v70 = [v72 stringFromByteCount:v74 countStyle:2];
      v249 = sub_26B079E00();
      v250 = v65;
      sub_26AE95974();
      v245 = sub_26B0792E0();
      v246 = v66;
      v247 = v67;
      v248 = v68;
      v71 = v245;
      MEMORY[0x277D82BD8](v70);
      return v71;
    }
  }

  sub_26AFFA644();
  v115 = ReactiveDescriptor.currentState.getter();

  if (v115 >= 2)
  {
    if (v115 == 2)
    {
      v102 = *(v127 + 48);
      v101 = *(v127 + 56);

      v208 = v102;
      v209 = v101 & 1;
      sub_26B078A10();

      v103 = ReactiveUIManager.currentDownload.getter();
      if (v103)
      {
        v193 = v103;

        v100 = ReactiveDownload.phase.getter();
        if ((v14 & 1) != 0 || (v170 = v100, v169 = v100, v168 = 2, type metadata accessor for SUUIDownloadPhase(0), sub_26AE9BBC0(), v15 = sub_26B07A790(), (v15 & 1) == 0))
        {
          v95 = swift_getKeyPath();
          ReactiveDownload.subscript.getter(v95, &v192);
          v96 = v192;
          if (v192)
          {
            swift_getObjectType();
            [v96 normalizedPercentComplete];
            v92 = v24;
            swift_unknownObjectRelease();

            v93 = v92;
            v94 = 0;
          }

          else
          {

            v93 = 0.0;
            v94 = 1;
          }

          v190 = v93;
          v191 = v94 & 1;
          if (v94)
          {
            HIDWORD(v25) = 0;
            v91 = 0.0;
          }

          else
          {
            v91 = v190;
          }

          *&v25 = v91;
          v189 = v91;
          if (v91 < 0.005)
          {
            if (v118)
            {
              HIBYTE(v89) = 1;
              sub_26B079D00("Security Response Requested…", 30, 0, v25);
              sub_26B078E10();
              v26 = sub_26B02D0D0();
              MEMORY[0x277D82BE0](*v26);
              v175 = 0;
              v176 = 0;
              v177 = v89 & 0x100;
              v171 = sub_26B0792C0();
              v172 = v27;
              v173 = v28;
              v174 = v29;
              v90 = v171;
            }

            else
            {
              HIBYTE(v88) = 1;
              sub_26B079D00("Update Requested…", 19, 0, v25);
              sub_26B078E10();
              v30 = sub_26B02D0D0();
              MEMORY[0x277D82BE0](*v30);
              v182 = 0;
              v183 = 0;
              v184 = v88 & 0x100;
              v178 = sub_26B0792C0();
              v179 = v31;
              v180 = v32;
              v181 = v33;
              v90 = v178;
            }

            return v90;
          }

          else
          {
            v185 = sub_26AFFDDF0(v103, v118);
            v186 = v34;
            v187 = v35;
            v188 = v36;
            v87 = v185;

            return v87;
          }
        }

        else
        {
          if (v118)
          {
            HIBYTE(v98) = 1;
            sub_26B079D00("Preparing Security Response…", 30, 0);
            sub_26B078E10();
            v16 = sub_26B02D0D0();
            MEMORY[0x277D82BE0](*v16);
            v158 = 0;
            v159 = 0;
            v160 = v98 & 0x100;
            v154 = sub_26B0792C0();
            v155 = v17;
            v156 = v18;
            v157 = v19;
            v99 = v154;
          }

          else
          {
            HIBYTE(v97) = 1;
            sub_26B079D00("Preparing Update…", 19, 0);
            sub_26B078E10();
            v20 = sub_26B02D0D0();
            MEMORY[0x277D82BE0](*v20);
            v165 = 0;
            v166 = 0;
            v167 = v97 & 0x100;
            v161 = sub_26B0792C0();
            v162 = v21;
            v163 = v22;
            v164 = v23;
            v99 = v161;
          }

          return v99;
        }
      }

      else
      {

        if (v118)
        {
          HIBYTE(v85) = 1;
          sub_26B079D00("Security Response Requested…", 30, 0);
          sub_26B078E10();
          v37 = sub_26B02D0D0();
          MEMORY[0x277D82BE0](*v37);
          v198 = 0;
          v199 = 0;
          v200 = v85 & 0x100;
          v194 = sub_26B0792C0();
          v195 = v38;
          v196 = v39;
          v197 = v40;
          return v194;
        }

        else
        {
          HIBYTE(v84) = 1;
          sub_26B079D00("Update Requested…", 19, 0);
          sub_26B078E10();
          v41 = sub_26B02D0D0();
          MEMORY[0x277D82BE0](*v41);
          v205 = 0;
          v206 = 0;
          v207 = v84 & 0x100;
          v201 = sub_26B0792C0();
          v202 = v42;
          v203 = v43;
          v204 = v44;
          return v201;
        }
      }
    }

    if (v115 == 3)
    {
      HIBYTE(v83) = 1;
      sub_26B079D00("Paused", 6, 1);
      sub_26B078E10();
      v45 = sub_26B02D0D0();
      MEMORY[0x277D82BE0](*v45);
      v214 = 0;
      v215 = 0;
      v216 = v83 & 0x100;
      v210 = sub_26B0792C0();
      v211 = v46;
      v212 = v47;
      v213 = v48;
      return v210;
    }

    if (v115 == 4)
    {
      HIBYTE(v82) = 1;
      sub_26B079D00("Downloaded", 10, 1);
      sub_26B078E10();
      v49 = sub_26B02D0D0();
      MEMORY[0x277D82BE0](*v49);
      v221 = 0;
      v222 = 0;
      v223 = v82 & 0x100;
      v217 = sub_26B0792C0();
      v218 = v50;
      v219 = v51;
      v220 = v52;
      return v217;
    }

    if (v115 == 5)
    {
      HIBYTE(v81) = 1;
      sub_26B079D00("Installing…", 13, 0);
      sub_26B078E10();
      v53 = sub_26B02D0D0();
      MEMORY[0x277D82BE0](*v53);
      v228 = 0;
      v229 = 0;
      v230 = v81 & 0x100;
      v224 = sub_26B0792C0();
      v225 = v54;
      v226 = v55;
      v227 = v56;
      return v224;
    }

    sub_26B079D00("Unknown descriptor state", 24, 1);
    sub_26B07A660();
    __break(1u);
    goto LABEL_59;
  }

  v113 = *(v127 + 48);
  v112 = *(v127 + 56);

  v152[2] = v113;
  v153 = v112 & 1;
  sub_26B078A10();

  v114 = ReactiveUIManager.isClearingSpaceForDownload.getter();

  if (v114)
  {
    if (v118)
    {
      HIBYTE(v110) = 1;
      sub_26B079D00("Security Response Requested…", 30, 0);
      sub_26B078E10();
      v2 = sub_26B02D0D0();
      MEMORY[0x277D82BE0](*v2);
      v136 = 0;
      v137 = 0;
      v138 = v110 & 0x100;
      v132 = sub_26B0792C0();
      v133 = v3;
      v134 = v4;
      v135 = v5;
      return v132;
    }

    else
    {
      HIBYTE(v109) = 1;
      sub_26B079D00("Update Requested…", 19, 0);
      sub_26B078E10();
      v6 = sub_26B02D0D0();
      MEMORY[0x277D82BE0](*v6);
      v143 = 0;
      v144 = 0;
      v145 = v109 & 0x100;
      v139 = sub_26B0792C0();
      v140 = v7;
      v141 = v8;
      v142 = v9;
      return v139;
    }
  }

  else
  {
    v106 = objc_opt_self();
    sub_26AFFA644();
    v107 = swift_getKeyPath();
    ReactiveDescriptor.subscript.getter(v107, v152);
    v108 = v152[0];

    if (v108 > 0x7FFFFFFFFFFFFFFFLL)
    {
      sub_26B07A650();
      __break(1u);
    }

    v104 = [v106 stringFromByteCount:v108 countStyle:2];
    v150 = sub_26B079E00();
    v151 = v10;
    sub_26AE95974();
    v146 = sub_26B0792E0();
    v147 = v11;
    v148 = v12;
    v149 = v13;
    v105 = v146;
    MEMORY[0x277D82BD8](v104);
    return v105;
  }
}

uint64_t sub_26AFFD6A8()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DB510, &qword_26B086040);
  sub_26B078A10();

  v13 = ReactiveUIManager.currentDownload.getter();

  if (v13)
  {
    ReactiveDownload.phase.getter();
    v11 = v0;

    v12 = v11;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    v10 = 0;
  }

  else
  {
    type metadata accessor for SUUIDownloadPhase(0);
    sub_26AFFF364();
    v10 = sub_26B079D70();
  }

  if (v10)
  {
    v9 = 1;
  }

  else
  {

    sub_26B078A10();

    v8 = ReactiveUIManager.currentDownload.getter();

    if (v8)
    {
      ReactiveDownload.phase.getter();
      v6 = v1;

      v7 = v6;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      v5 = 0;
    }

    else
    {
      type metadata accessor for SUUIDownloadPhase(0);
      sub_26AFFF364();
      v5 = sub_26B079D70();
    }

    v9 = v5;
  }

  if (v9)
  {
    sub_26AFFA644();
    ReactiveDescriptor.currentState.getter();

    type metadata accessor for SUUIStatefulDescriptorState(0);
    sub_26AE9B8C0();
    if (sub_26B07A790())
    {
      v4 = 1;
    }

    else
    {
      sub_26AFFA644();
      ReactiveDescriptor.currentState.getter();

      v4 = sub_26B07A790();
    }

    v3 = v4;
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t sub_26AFFDB74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = a3;
  v9 = a1;
  v11 = a1;
  v10 = *(a2 + 8);
  v4 = MEMORY[0x277D84658];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10);
  v8 = &v4 - v5;
  swift_getAssociatedConformanceWitness();
  sub_26B07A7E0();
  return sub_26B07A6F0();
}

uint64_t sub_26AFFDC84()
{
  sub_26AFFA644();
  ReactiveDescriptor.currentState.getter();

  type metadata accessor for SUUIStatefulDescriptorState(0);
  sub_26AE9B8C0();
  if (sub_26B07A790())
  {
    v2 = 1;
  }

  else
  {
    sub_26AFFA644();
    v1 = ReactiveDescriptor.hasAnyError.getter();

    v2 = v1;
  }

  return v2 & 1;
}

uint64_t sub_26AFFDD70@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_unknownObjectRetain();
  swift_getObjectType();
  *a2 = [v3 downloadSize];
  return swift_unknownObjectRelease();
}

uint64_t sub_26AFFDDF0(uint64_t a1, char a2)
{
  v43 = 0;
  v34 = 0u;
  v35 = 0u;
  v45 = a1;
  v44 = a2 & 1;
  if (a2)
  {
    sub_26B079D00("Security Response Requested…", 30, 0);
    sub_26B078E10();
    v2 = sub_26B02D0D0();
    MEMORY[0x277D82BE0](*v2);
    LOWORD(v13) = 256;
    *&v30 = sub_26B0792C0();
  }

  else
  {
    HIBYTE(v29) = 1;
    sub_26B079D00("Update Requested…", 19, 0);
    sub_26B078E10();
    v6 = sub_26B02D0D0();
    MEMORY[0x277D82BE0](*v6);
    v40 = 0;
    v41 = 0;
    v42 = v29 & 0x100;
    LOWORD(v13) = v29 & 0x100;
    v36 = sub_26B0792C0();
    v37 = v3;
    v38 = v4;
    v39 = v5;
    *&v30 = v36;
  }

  *(&v30 + 1) = v3;
  v25 = v4;
  v26 = v3;
  v34 = v30;
  LOBYTE(v35) = v4 & 1;
  *(&v35 + 1) = v5;
  KeyPath = swift_getKeyPath();
  ReactiveDownload.subscript.getter(KeyPath, &v33);
  v28 = v33;
  if (v33)
  {

    swift_getObjectType();
    swift_unknownObjectRetain();
    [v28 phase];
    swift_unknownObjectRelease();
    type metadata accessor for SUUIDownloadPhase(0);
    sub_26AE9BBC0();
    v24 = sub_26B07A790();
    swift_unknownObjectRetain();
    if (v24)
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      [v28 percentComplete];
      v22 = v7;
      swift_unknownObjectRelease();
      v23 = v22 >= 1.0;
    }

    else
    {
      v23 = 0;
    }

    swift_unknownObjectRelease();
    if (v23)
    {
      if (a2)
      {
        sub_26B079D00("Preparing Security Response…", 30, 0);
      }

      else
      {
        sub_26B079D00("Preparing Update…", 19, 0);
      }

      sub_26B078E10();
      v8 = sub_26B02D0D0();
      MEMORY[0x277D82BE0](*v8);
      v21 = sub_26B0792C0();
      swift_unknownObjectRelease();
      sub_26AE95AFC(v30, v26, v25 & 1);

      return v21;
    }

    else
    {
      v19 = sub_26AFFE774(v28);
      if (v9)
      {
        swift_unknownObjectRelease();
        return v30;
      }

      else
      {
        sub_26AFFF3E4();
        v17 = sub_26AFFE8DC();
        [v17 setUnitsStyle_];
        type metadata accessor for Unit(0);
        sub_26B07A760();
        *v10 = 16;
        v10[1] = 32;
        v10[2] = 64;
        v10[3] = 128;
        sub_26AEA3B2C();
        sub_26AE9A974();
        sub_26B07A4C0();
        [v17 setAllowedUnits_];
        [v17 setMaximumUnitCount_];
        [v17 setIncludesApproximationPhrase_];
        [v17 setIncludesTimeRemainingPhrase_];
        [v17 setFormattingContext_];
        v18 = [v17 stringFromTimeInterval_];
        if (v18)
        {
          sub_26B079E00();
          v15 = v11;
          MEMORY[0x277D82BD8](v18);
          v16 = v15;
        }

        else
        {
          v16 = 0;
        }

        if (v16)
        {
          sub_26B078640();
          sub_26AE95974();
          v14 = sub_26B0792E0();

          MEMORY[0x277D82BD8](v17);
          swift_unknownObjectRelease();
          sub_26AE95AFC(v30, v26, v25 & 1);

          return v14;
        }

        else
        {
          MEMORY[0x277D82BD8](v17);
          swift_unknownObjectRelease();
          return v30;
        }
      }
    }
  }

  else
  {

    return v30;
  }
}

uint64_t sub_26AFFE774(void *a1)
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  [a1 timeRemaining];
  v7 = v1;
  swift_unknownObjectRelease();
  if (v7 < 0.0)
  {
    return 0;
  }

  if (v7 > 0.0 && v7 < 1.0)
  {
    return 0x3FF0000000000000;
  }

  if (v7 < 604800.0 && v7 > 0.0)
  {
    return *&v7;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26AFFE9D0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  sub_26AFC0708(*a1, v4, v5, v6, v7, v8 & 1);
  result = a2;
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8 & 1;
  return result;
}

uint64_t sub_26AFFEA68(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = *(a1 + 40);
  v9 = *a2;
  v10 = *(a2 + 8);
  v11 = *(a2 + 16);
  v12 = *(a2 + 24);
  v13 = *(a2 + 32);
  v14 = *(a2 + 40);
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8 & 1;
  sub_26AFBE774(v9, v10, v11, v12, v13, v14 & 1);
  return a2;
}

unint64_t sub_26AFFEB38()
{
  v2 = qword_2803DE570;
  if (!qword_2803DE570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DE568, &qword_26B08FCE0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE570);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AFFEBC0()
{
  v2 = qword_2803DE578;
  if (!qword_2803DE578)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DE560, &qword_26B08FCD8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE578);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AFFEC48(uint64_t a1)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DE580, &qword_26B08FCE8) + 44);
  sub_26AE95AFC(*(a1 + v5), *(a1 + v5 + 8), *(a1 + v5 + 16) & 1);

  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DB598, &qword_26B08FCF0) + 36);
  v1 = sub_26B079100();
  (*(*(v1 - 8) + 8))(a1 + v5 + v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE590, &qword_26B08FCF8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE598, &qword_26B08FD00);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE5A0, &qword_26B08FD08);

  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE5A8, &qword_26B08FD10) + 48);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE5B0, &qword_26B08FD18);
  if (!(*(*(v8 - 8) + 48))(a1 + v5 + v7, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE5B8, &qword_26B08FD20);
    (*(*(v2 - 8) + 8))();
  }

  return a1;
}

uint64_t sub_26AFFEEAC(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DE580, &qword_26B08FCE8) + 44);
  v16 = *(a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = *(a1 + v15 + 16);
  sub_26AE95D28(v16, v17, v18 & 1);
  v2 = a2 + v15;
  v29 = a2 + v15;
  *v2 = v16;
  *(v2 + 8) = v17;
  *(v2 + 16) = v18 & 1;
  v19 = *(a1 + v15 + 24);
  sub_26B078640();
  *(v29 + 24) = v19;
  v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DB598, &qword_26B08FCF0) + 36);
  v3 = sub_26B079100();
  (*(*(v3 - 8) + 16))(a2 + v15 + v20, a1 + v15 + v20);
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE590, &qword_26B08FCF8) + 36);
  v23 = (a1 + v15 + v21);
  v22 = *v23;

  *(v29 + v21) = v22;
  v24 = v23[1];

  *(a2 + v15 + v21 + 8) = v24;
  v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE598, &qword_26B08FD00) + 36);
  v27 = (a1 + v15 + v25);
  v26 = *v27;

  *(v29 + v25) = v26;
  v28 = v27[1];

  *(a2 + v15 + v25 + 8) = v28;
  v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE5A0, &qword_26B08FD08) + 36);
  v32 = (a1 + v15 + v30);
  v31 = *v32;

  v4 = a2 + v15 + v30;
  *v4 = v31;
  *(v4 + 8) = v32[1];
  *(v4 + 16) = *(v32 + 16);
  v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE5A8, &qword_26B08FD10) + 48);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE5B0, &qword_26B08FD18);
  v35 = *(v34 - 8);
  if ((*(v35 + 48))(a1 + v15 + v33, 1))
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DE5C0, qword_26B08FD28);
    memcpy((a2 + v15 + v33), (a1 + v15 + v33), *(*(v6 - 8) + 64));
  }

  else
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE5B8, &qword_26B08FD20);
    v10 = a2 + v15 + v33;
    (*(*(v5 - 8) + 16))();
    v11 = (v10 + *(v34 + 36));
    v9 = (a1 + v15 + v33 + *(v34 + 36));
    v8 = *v9;

    *v11 = v8;
    v12 = v9[1];

    v11[1] = v12;
    (*(v35 + 56))(v10, 0, 1, v34);
  }

  return a2;
}

unint64_t sub_26AFFF364()
{
  v2 = qword_2803DE5E0;
  if (!qword_2803DE5E0)
  {
    type metadata accessor for SUUIDownloadPhase(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE5E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AFFF3E4()
{
  v2 = qword_2803DE5E8;
  if (!qword_2803DE5E8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2803DE5E8);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_26AFFF470(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v3 = 255 - *(a1 + 40);
    if (v3 >= 0xFE)
    {
      v3 = -1;
    }

    return v3 + 1;
  }

  else
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE20, &unk_26B08D230);
    if (a2 == *(*(v5 - 8) + 84))
    {
      return (*(*(v5 - 8) + 48))(a1 + *(a3 + 24), a2, v5);
    }

    else
    {
      __break(1u);
    }
  }

  return v6;
}

uint64_t sub_26AFFF59C(uint64_t result, unsigned int a2, int a3, uint64_t a4)
{
  v4 = result;
  if (a3 == 254)
  {
    *(result + 40) = ~(a2 - 1);
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE20, &unk_26B08D230);
    if (a3 == *(*(result - 8) + 84))
    {
      return (*(*(result - 8) + 56))(v4 + *(a4 + 24), a2, a2, result);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

unint64_t sub_26AFFF694(uint64_t a1)
{
  v5 = sub_26AFFF798(319);
  if (v1 <= 0x3F)
  {
    v5 = sub_26AE96B4C(319);
    if (v2 <= 0x3F)
    {
      v5 = sub_26AFA65BC(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v5;
}

unint64_t sub_26AFFF798(uint64_t a1)
{
  v5 = qword_2803DE600;
  if (!qword_2803DE600)
  {
    v4 = sub_26B078A20();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_2803DE600);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_26AFFF89C()
{
  v2 = qword_2803DE628;
  if (!qword_2803DE628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DE590, &qword_26B08FCF8);
    sub_26AE958D0();
    sub_26AEF8D88();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE628);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AFFF944(uint64_t a1)
{
  sub_26AE95AFC(*a1, *(a1 + 8), *(a1 + 16) & 1);

  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DB598, &qword_26B08FCF0) + 36);
  v1 = sub_26B079100();
  (*(*(v1 - 8) + 8))(a1 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE590, &qword_26B08FCF8);

  return a1;
}

unint64_t sub_26AFFFA24()
{
  v2 = qword_2803DE640;
  if (!qword_2803DE640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DE598, &qword_26B08FD00);
    sub_26AFFF89C();
    sub_26AF1B88C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE640);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AFFFACC(uint64_t a1)
{
  sub_26AE95AFC(*a1, *(a1 + 8), *(a1 + 16) & 1);

  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DB598, &qword_26B08FCF0) + 36);
  v1 = sub_26B079100();
  (*(*(v1 - 8) + 8))(a1 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE590, &qword_26B08FCF8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE598, &qword_26B08FD00);

  return a1;
}

unint64_t sub_26AFFFBE8()
{
  v2 = qword_2803DE658;
  if (!qword_2803DE658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DE5A0, &qword_26B08FD08);
    sub_26AFFFA24();
    sub_26AFC4394();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE658);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AFFFC90(uint64_t a1)
{
  sub_26AE95AFC(*a1, *(a1 + 8), *(a1 + 16) & 1);

  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DB598, &qword_26B08FCF0) + 36);
  v1 = sub_26B079100();
  (*(*(v1 - 8) + 8))(a1 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE590, &qword_26B08FCF8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE598, &qword_26B08FD00);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE5A0, &qword_26B08FD08);

  return a1;
}

unint64_t sub_26AFFFDD4()
{
  v2 = qword_2803DE670;
  if (!qword_2803DE670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DE5B0, &qword_26B08FD18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DE620, &unk_26B08FE78);
    sub_26B079060();
    sub_26AFFFEF4();
    sub_26AFFFF9C();
    swift_getOpaqueTypeConformance2();
    sub_26B00001C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE670);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AFFFEF4()
{
  v2 = qword_2803DE678;
  if (!qword_2803DE678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DE620, &unk_26B08FE78);
    sub_26AFE3FB8();
    sub_26AE95850();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE678);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AFFFF9C()
{
  v2 = qword_2803DE688;
  if (!qword_2803DE688)
  {
    sub_26B079060();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE688);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26B00001C()
{
  v2 = qword_2803DE690;
  if (!qword_2803DE690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DE698, qword_26B08FE88);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE690);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26B0000A4(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE5B0, &qword_26B08FD18);
  if (!(*(*(v4 - 8) + 48))(a1, 1))
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE5B8, &qword_26B08FD20);
    (*(*(v1 - 8) + 8))(a1);
  }

  return a1;
}

char *sub_26B00018C(char *a1, char *a2)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE5B0, &qword_26B08FD18);
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(a1, 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DE5C0, qword_26B08FD28);
    memcpy(a2, a1, *(*(v3 - 8) + 64));
  }

  else
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE5B8, &qword_26B08FD20);
    (*(*(v2 - 8) + 32))(a2, a1);
    *&a2[*(v7 + 36)] = *&a1[*(v7 + 36)];
    (*(v8 + 56))();
  }

  return a2;
}

uint64_t sub_26B0002E8(uint64_t a1, uint64_t a2)
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
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE590, &qword_26B08FCF8) + 36);
  v11 = *(a1 + v10);

  *(a2 + v10) = v11;
  v12 = *(a1 + v10 + 8);

  *(a2 + v10 + 8) = v12;
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE598, &qword_26B08FD00) + 36);
  v14 = *(a1 + v13);

  *(a2 + v13) = v14;
  v15 = *(a1 + v13 + 8);

  *(a2 + v13 + 8) = v15;
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE5A0, &qword_26B08FD08) + 36);
  v19 = *(a1 + v18);

  result = a2;
  v4 = a2 + v18;
  *v4 = v19;
  *(v4 + 8) = *(a1 + v18 + 8);
  *(v4 + 16) = *(a1 + v18 + 16);
  return result;
}

char *sub_26B000528(char *a1, char *a2)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE5B0, &qword_26B08FD18);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(a1, 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DE5C0, qword_26B08FD28);
    memcpy(a2, a1, *(*(v3 - 8) + 64));
  }

  else
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE5B8, &qword_26B08FD20);
    (*(*(v2 - 8) + 16))(a2, a1);
    v7 = &a2[*(v11 + 36)];
    v6 = &a1[*(v11 + 36)];
    v5 = *v6;

    *v7 = v5;
    v8 = *(v6 + 1);

    *(v7 + 1) = v8;
    (*(v12 + 56))(a2, 0, 1, v11);
  }

  return a2;
}

unint64_t sub_26B0006C8()
{
  v2 = qword_2803DE6A0;
  if (!qword_2803DE6A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2803DE5C0, qword_26B08FD28);
    sub_26AFFFDD4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE6A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26B000760()
{
  v2 = qword_2803DE6A8;
  if (!qword_2803DE6A8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE6A8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26B0007D8(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE1A0, &qword_26B08FE70);
  (*(*(v1 - 8) + 8))(a1);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE620, &unk_26B08FE78) + 36);
  v2 = sub_26B079100();
  (*(*(v2 - 8) + 8))(a1 + v4);
  return a1;
}

uint64_t sub_26B0008C8(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE5B8, &qword_26B08FD20);
  (*(*(v1 - 8) + 8))(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE5B0, &qword_26B08FD18);

  return a1;
}

uint64_t sub_26B00096C(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE5B8, &qword_26B08FD20);
  (*(*(v2 - 8) + 16))(a2, a1);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE5B0, &qword_26B08FD18) + 36);
  v6 = *(a1 + v5);

  *(a2 + v5) = v6;
  v8 = *(a1 + v5 + 8);

  result = a2;
  *(a2 + v5 + 8) = v8;
  return result;
}

uint64_t View.editMenu(_:onPresent:onDismiss:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  sub_26AEB0BF0(a3, a4);
  sub_26AEB0BF0(a5, a6);
  type metadata accessor for EditMenu(255, a7, a8, a4);
  v10 = sub_26B078BF0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_26B0011C4(a7, v10);
  sub_26B079650();

  sub_26AEB3258(a3, a4);
  return sub_26AEB3258(a5, a6);
}

uint64_t sub_26B000C48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v44 = a9;
  v27 = a1;
  v33 = a2;
  v34 = a3;
  v35 = a4;
  v36 = a5;
  v37 = a6;
  v38 = a7;
  v47 = a8;
  v31 = a10;
  v39 = &unk_26B090074;
  v43 = MEMORY[0x277CDFAD8];
  v60 = 0;
  v59 = 0;
  v57 = 0;
  v58 = 0;
  v55 = 0;
  v56 = 0;
  v53 = 0;
  v54 = 0;
  v61 = a8;
  v30 = *(a8 - 8);
  v26 = a8 - 8;
  v24 = (*(v30 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a1);
  v32 = &v23 - v24;
  v40 = 0;
  v48 = type metadata accessor for EditMenu(0, v10, v11, v12);
  v25 = (*(*(v48 - 1) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v40);
  v13 = &v23 - v25;
  v41 = &v23 - v25;
  v49 = sub_26B078BF0();
  v29 = *(*(v49 - 8) + 64);
  v28 = (v29 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v32);
  v46 = &v23 - v28;
  v15 = MEMORY[0x28223BE20](v14);
  v50 = &v23 - v16;
  v60 = &v23 - v16;
  v59 = v17;
  v57 = v33;
  v58 = v34;
  v55 = v18;
  v56 = v19;
  v53 = v20;
  v54 = v21;
  (*(v30 + 16))(v15);

  sub_26AEB0BF0(v35, v36);
  sub_26AEB0BF0(v37, v38);
  sub_26B0010DC(v32, v33, v34, v35, v36, v37, v38, v47, v13, v31);
  WitnessTable = swift_getWitnessTable();
  sub_26AEAABD4();
  sub_26B079600();
  sub_26B002494(v41, v47, v48);
  v51 = WitnessTable;
  v52 = MEMORY[0x277CDFC60];
  v45 = swift_getWitnessTable();
  sub_26AE9463C(v46, v49, v50);
  sub_26B004734(v46, v47, v48);
  sub_26B004808(v50, v46, v47, v48, v49);
  sub_26AE94B4C(v46, v49, v44);
  sub_26B004734(v46, v47, v48);
  return sub_26B004734(v50, v47, v48);
}