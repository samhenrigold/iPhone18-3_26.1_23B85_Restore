double sub_1D2573ECC@<D0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1[3];
  v15 = a1[2];
  v16 = v6;
  v17 = *(a1 + 64);
  v7 = a1[1];
  v13 = *a1;
  v14 = v7;
  v8 = swift_allocObject();
  v9 = a1[3];
  *(v8 + 48) = a1[2];
  *(v8 + 64) = v9;
  *(v8 + 80) = *(a1 + 64);
  v10 = a1[1];
  *(v8 + 16) = *a1;
  *(v8 + 32) = v10;
  sub_1D25745D4(a1, v12);
  sub_1D256FDF0(a2, 0, 0, sub_1D25748D0, v8, a3);

  return result;
}

double sub_1D2573F90(__int128 *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAE0, &qword_1D2894120);
  sub_1D2877308();
  sub_1D2309CF4(0);

  return result;
}

unint64_t sub_1D2574004()
{
  result = qword_1EC6DDE78;
  if (!qword_1EC6DDE78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DDE80, &qword_1D28942D0);
    sub_1D2574088();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DDE78);
  }

  return result;
}

unint64_t sub_1D2574088()
{
  result = qword_1EC6DDE88;
  if (!qword_1EC6DDE88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DDE90, &qword_1D28942D8);
    sub_1D2574114();
    sub_1D257447C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DDE88);
  }

  return result;
}

unint64_t sub_1D2574114()
{
  result = qword_1EC6DDE98;
  if (!qword_1EC6DDE98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DDEA0, &qword_1D28942E0);
    sub_1D2574198();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DDE98);
  }

  return result;
}

unint64_t sub_1D2574198()
{
  result = qword_1EC6DDEA8;
  if (!qword_1EC6DDEA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DDEB0, &qword_1D28942E8);
    sub_1D2574224();
    sub_1D257430C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DDEA8);
  }

  return result;
}

unint64_t sub_1D2574224()
{
  result = qword_1ED89D630;
  if (!qword_1ED89D630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DDEB8, &qword_1D28942F0);
    sub_1D2574A80(&qword_1ED8A6B58, MEMORY[0x1E69A0818], MEMORY[0x1E69A0810]);
    sub_1D22BB9D8(&qword_1ED89D3E8, &qword_1EC6DDEC0, &qword_1D28942F8, MEMORY[0x1E697C7C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D630);
  }

  return result;
}

unint64_t sub_1D257430C()
{
  result = qword_1EC6DDEC8;
  if (!qword_1EC6DDEC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DDED0, &qword_1D2894300);
    sub_1D22BB9D8(&qword_1ED89D3E8, &qword_1EC6DDEC0, &qword_1D28942F8, MEMORY[0x1E697C7C8]);
    sub_1D25743C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DDEC8);
  }

  return result;
}

unint64_t sub_1D25743C4()
{
  result = qword_1ED89DD60;
  if (!qword_1ED89DD60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DDED8, &qword_1D2894308);
    sub_1D22BB9D8(&qword_1ED89D3F0, &qword_1EC6DDEE0, &qword_1D2894310, MEMORY[0x1E697C7C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DD60);
  }

  return result;
}

unint64_t sub_1D257447C()
{
  result = qword_1EC6DDEE8;
  if (!qword_1EC6DDEE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DDEF0, &qword_1D2894318);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DDEF8, &qword_1D2894320);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DDEB0, &qword_1D28942E8);
    type metadata accessor for ComposingView(255);
    sub_1D2574A80(&qword_1ED8A4B70, type metadata accessor for ComposingView, &unk_1D289E418);
    swift_getOpaqueTypeConformance2();
    sub_1D2574198();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DDEE8);
  }

  return result;
}

uint64_t sub_1D257460C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL sub_1D257466C@<W0>(_BYTE *a1@<X8>)
{
  result = sub_1D25726D8();
  *a1 = result;
  return result;
}

uint64_t objectdestroy_17Tm()
{
  swift_unknownObjectRelease();

  sub_1D22EE66C(*(v0 + 56), *(v0 + 64));

  return swift_deallocObject();
}

double sub_1D2574720(char *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE890, &qword_1D287F9F0);
  sub_1D2877318();
  return result;
}

uint64_t sub_1D2574780(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ComposingViewModel.AvailabilityStatus(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_1D25747E4@<D0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ComposingViewModel.AvailabilityStatus(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 81) & ~*(v3 + 80));

  return sub_1D2573ECC((v1 + 16), v4, a1);
}

uint64_t objectdestroyTm_18()
{

  sub_1D22EE66C(*(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

double sub_1D25748D0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE890, &qword_1D287F9F0);
  sub_1D2877318();
  return result;
}

unint64_t sub_1D257493C()
{
  result = qword_1EC6DDF50;
  if (!qword_1EC6DDF50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DDF40, &unk_1D2894398);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE6C0, &unk_1D2884AD0);
    sub_1D28756D8();
    sub_1D22BB9D8(&qword_1ED89D158, &qword_1EC6DE6C0, &unk_1D2884AD0, MEMORY[0x1E697D680]);
    sub_1D2574A80(&qword_1EC6D7920, MEMORY[0x1E697C4D0], MEMORY[0x1E697C4C8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DDF50);
  }

  return result;
}

uint64_t sub_1D2574A80(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D2574AC8(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_1D2870F78();
  }

  return v2;
}

void sub_1D2574B18()
{
  sub_1D28716B8();

  sub_1D25723B8();
}

__n128 sub_1D2574BAC@<Q0>(uint64_t a2@<X8>)
{
  v3 = sub_1D2877848();
  v5 = v4;
  sub_1D2574D30(&v22);
  v32 = v26;
  v33[0] = *v27;
  *(v33 + 9) = *&v27[9];
  v28 = v22;
  v29 = v23;
  v30 = v24;
  v31 = v25;
  v34[0] = v22;
  v34[1] = v23;
  v34[2] = v24;
  v34[3] = v25;
  v34[4] = v26;
  v35[0] = *v27;
  *(v35 + 9) = *&v27[9];
  sub_1D2574E7C(&v28, &v15);
  sub_1D2574EEC(v34);
  v19 = v32;
  v20[0] = v33[0];
  *(v20 + 9) = *(v33 + 9);
  v15 = v28;
  v16 = v29;
  v17 = v30;
  v18 = v31;
  sub_1D2877848();
  sub_1D2875208();
  *&v21[55] = v25;
  *&v21[71] = v26;
  *&v21[87] = *v27;
  *&v21[103] = *&v27[16];
  *&v21[7] = v22;
  *&v21[23] = v23;
  *&v21[39] = v24;
  *a2 = v3;
  *(a2 + 8) = v5;
  v6 = v16;
  *(a2 + 16) = v15;
  *(a2 + 32) = v6;
  v7 = v17;
  v8 = v18;
  *(a2 + 105) = *(v20 + 9);
  v9 = v20[0];
  *(a2 + 80) = v19;
  *(a2 + 96) = v9;
  *(a2 + 48) = v7;
  *(a2 + 64) = v8;
  v10 = *v21;
  v11 = *&v21[64];
  *(a2 + 169) = *&v21[48];
  v12 = *&v21[16];
  *(a2 + 153) = *&v21[32];
  *(a2 + 137) = v12;
  *(a2 + 121) = v10;
  result = *&v21[80];
  v14 = *&v21[96];
  *(a2 + 232) = *&v21[111];
  *(a2 + 217) = v14;
  *(a2 + 201) = result;
  *(a2 + 185) = v11;
  return result;
}

double sub_1D2574D30@<D0>(uint64_t a1@<X8>)
{
  sub_1D2875798();
  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  v2 = qword_1ED8B0058;
  v3 = sub_1D2876668();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  KeyPath = swift_getKeyPath();
  v11 = sub_1D2876468();
  v12 = swift_getKeyPath();
  v13 = sub_1D2876338();
  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v9;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 1;
  *(a1 + 48) = v12;
  *(a1 + 56) = v11;
  *(a1 + 64) = v13;
  result = 0.0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 1;
  return result;
}

uint64_t sub_1D2574E7C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDF68, &qword_1D2894428);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D2574EEC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDF68, &qword_1D2894428);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D2574F54@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D28754C8();
  *a1 = result;
  return result;
}

unint64_t sub_1D2574FA8()
{
  result = qword_1EC6DDF70;
  if (!qword_1EC6DDF70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DDF78, &qword_1D2894490);
    sub_1D2575034();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DDF70);
  }

  return result;
}

unint64_t sub_1D2575034()
{
  result = qword_1EC6DDF80;
  if (!qword_1EC6DDF80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DDF88, &qword_1D2894498);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DDF80);
  }

  return result;
}

uint64_t PhotoGridViewModel.__allocating_init(servicesFetcher:sessionUndoManager:creationViewStyle:pickerMode:forwardingPhotoLibraryUpdatingDelegate:)(uint64_t a1, uint64_t a2, char *a3, _BYTE *a4, uint64_t a5, uint64_t a6)
{
  v10 = swift_allocObject();
  v20 = *a3;
  LOBYTE(a3) = *a4;
  *(v10 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v10 + 56) = 0;
  swift_unknownObjectWeakInit();
  *(v10 + 72) = 0;
  swift_unknownObjectWeakInit();
  *(v10 + 80) = 1;
  *(v10 + 97) = 1;
  v11 = OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__suggestedSelectedAssetID;
  v12 = sub_1D2871818();
  v13 = *(*(v12 - 8) + 56);
  v13(v10 + v11, 1, 1, v12);
  v14 = (v10 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__gridSize);
  *v14 = 0;
  v14[1] = 0;
  v15 = MEMORY[0x1E69E7CC0];
  *(v10 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__assets) = MEMORY[0x1E69E7CC0];
  v13(v10 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__gridScrollAssetID, 1, 1, v12);
  *(v10 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__filterFavorites) = 0;
  *(v10 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__viewIsEnabled) = 1;
  *(v10 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__gridElementViewModels[0]) = v15;
  *(v10 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__selectedExportableAssetsCache) = MEMORY[0x1E69E7CC8];
  sub_1D2871A18();
  *(v10 + 16) = a1;
  *(v10 + 88) = a2;
  *(v10 + 96) = a3;
  *(v10 + 24) = v20;
  *(v10 + 72) = a6;
  swift_unknownObjectWeakAssign();
  v16 = qword_1EC6D8B40;
  sub_1D2870F78();
  sub_1D2870F78();
  if (v16 != -1)
  {
    swift_once();
  }

  v17 = qword_1EC6D8B50;
  v18 = sub_1D2870F78();
  sub_1D2581C34(v18, v17);

  swift_unknownObjectRelease();

  return v10;
}

void sub_1D25752D4(char a1)
{
  if (*(v1 + 97) == (a1 & 1))
  {
    *(v1 + 97) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D25838BC(&qword_1EC6D8690, type metadata accessor for PhotoGridViewModel, &protocol conformance descriptor for PhotoGridViewModel);
    sub_1D28719D8();
  }
}

uint64_t PhotoGridViewModel.PickerMode.hashValue.getter()
{
  v1 = *v0;
  sub_1D28797D8();
  MEMORY[0x1D38A2260](v1);
  return sub_1D2879828();
}

uint64_t PhotoGridViewModel.init(servicesFetcher:sessionUndoManager:creationViewStyle:pickerMode:forwardingPhotoLibraryUpdatingDelegate:)(uint64_t a1, uint64_t a2, char *a3, char *a4, uint64_t a5, uint64_t a6)
{
  v19 = *a3;
  v9 = *a4;
  *(v6 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v6 + 56) = 0;
  swift_unknownObjectWeakInit();
  *(v6 + 72) = 0;
  swift_unknownObjectWeakInit();
  *(v6 + 80) = 1;
  *(v6 + 97) = 1;
  v10 = OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__suggestedSelectedAssetID;
  v11 = sub_1D2871818();
  v12 = *(*(v11 - 8) + 56);
  v12(v6 + v10, 1, 1, v11);
  v13 = (v6 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__gridSize);
  *v13 = 0;
  v13[1] = 0;
  v14 = MEMORY[0x1E69E7CC0];
  *(v6 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__assets) = MEMORY[0x1E69E7CC0];
  v12(v6 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__gridScrollAssetID, 1, 1, v11);
  *(v6 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__filterFavorites) = 0;
  *(v6 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__viewIsEnabled) = 1;
  *(v6 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__gridElementViewModels[0]) = v14;
  *(v6 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__selectedExportableAssetsCache) = MEMORY[0x1E69E7CC8];
  sub_1D2871A18();
  *(v6 + 16) = a1;
  *(v6 + 88) = a2;
  *(v6 + 96) = v9;
  *(v6 + 24) = v19;
  *(v6 + 72) = a6;
  swift_unknownObjectWeakAssign();
  v15 = qword_1EC6D8B40;
  sub_1D2870F78();
  sub_1D2870F78();
  if (v15 != -1)
  {
    swift_once();
  }

  v16 = qword_1EC6D8B50;
  v17 = sub_1D2870F78();
  sub_1D2581C34(v17, v16);

  swift_unknownObjectRelease();

  return v6;
}

void sub_1D25756D8(char a1)
{
  if (*(v1 + 80) == (a1 & 1))
  {
    *(v1 + 80) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D25838BC(&qword_1EC6D8690, type metadata accessor for PhotoGridViewModel, &protocol conformance descriptor for PhotoGridViewModel);
    sub_1D28719D8();
  }
}

void sub_1D25757E8(double a1, double a2)
{
  v3 = (v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__gridSize);
  if (*(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__gridSize) == a1 && *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__gridSize + 8) == a2)
  {
    *v3 = a1;
    v3[1] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D25838BC(&qword_1EC6D8690, type metadata accessor for PhotoGridViewModel, &protocol conformance descriptor for PhotoGridViewModel);
    sub_1D28719D8();
  }
}

double sub_1D2575914(unint64_t a1)
{
  v3 = OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__assets;
  v4 = sub_1D2870F68();
  v5 = sub_1D233875C(v4, a1);

  if (v5)
  {
    v6 = *(v1 + v3);
    *(v1 + v3) = a1;
    sub_1D25766C4(v6);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D25838BC(&qword_1EC6D8690, type metadata accessor for PhotoGridViewModel, &protocol conformance descriptor for PhotoGridViewModel);
    sub_1D28719D8();
  }

  return result;
}

uint64_t sub_1D2575AA4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70, &qword_1D2881410);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v13 - v8;
  v10 = *a2;
  swift_beginAccess();
  sub_1D22BD1D0(v4 + v10, v9, &qword_1EC6D8F70, &qword_1D2881410);
  LOBYTE(a2) = sub_1D2582D48(v9, a1);
  sub_1D22BD238(v9, &qword_1EC6D8F70, &qword_1D2881410);
  if (a2)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v13[-2] = v4;
    v13[-1] = a1;
    v13[2] = v4;
    sub_1D25838BC(&qword_1EC6D8690, type metadata accessor for PhotoGridViewModel, &protocol conformance descriptor for PhotoGridViewModel);
    sub_1D28719D8();
  }

  else
  {
    swift_beginAccess();
    sub_1D25187F4(a1, v4 + v10);
    swift_endAccess();
  }

  return sub_1D22BD238(a1, &qword_1EC6D8F70, &qword_1D2881410);
}

void sub_1D2575CB4(char a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + *a2) == (a1 & 1))
  {
    *(v4 + *a2) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D25838BC(&qword_1EC6D8690, type metadata accessor for PhotoGridViewModel, &protocol conformance descriptor for PhotoGridViewModel);
    sub_1D28719D8();
  }
}

double sub_1D2575DB8(unint64_t a1)
{
  v3 = OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__gridElementViewModels;
  v4 = sub_1D2870F68();
  v5 = sub_1D23389EC(v4, a1);

  if (v5)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D25838BC(&qword_1EC6D8690, type metadata accessor for PhotoGridViewModel, &protocol conformance descriptor for PhotoGridViewModel);
    sub_1D28719D8();
  }

  return result;
}

uint64_t PhotoGridViewModel.delegate.getter()
{
  swift_getKeyPath();
  sub_1D25838BC(&qword_1EC6D8690, type metadata accessor for PhotoGridViewModel, &protocol conformance descriptor for PhotoGridViewModel);
  sub_1D28719E8();

  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1D2575FD0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D25838BC(&qword_1EC6D8690, type metadata accessor for PhotoGridViewModel, &protocol conformance descriptor for PhotoGridViewModel);
  sub_1D28719E8();

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 40);
  *a2 = result;
  a2[1] = v5;
  return result;
}

double sub_1D2576094(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1D25838BC(&qword_1EC6D8690, type metadata accessor for PhotoGridViewModel, &protocol conformance descriptor for PhotoGridViewModel);
  sub_1D28719D8();

  return result;
}

uint64_t PhotoGridViewModel.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1D25838BC(&qword_1EC6D8690, type metadata accessor for PhotoGridViewModel, &protocol conformance descriptor for PhotoGridViewModel);
  sub_1D28719D8();

  return swift_unknownObjectRelease();
}

uint64_t sub_1D2576244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 40) = a3;
  return swift_unknownObjectWeakAssign();
}

void (*PhotoGridViewModel.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 40) = v1;
  swift_getKeyPath();
  v4[6] = OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel___observationRegistrar;
  *v4 = v1;
  v4[7] = sub_1D25838BC(&qword_1EC6D8690, type metadata accessor for PhotoGridViewModel, &protocol conformance descriptor for PhotoGridViewModel);
  sub_1D28719E8();

  *v4 = v1;
  swift_getKeyPath();
  sub_1D2871A08();

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 40);
  v4[3] = Strong;
  v4[4] = v6;
  return sub_1D25763F8;
}

void sub_1D25763F8(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 40) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  v4 = v3[5];
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  *v3 = v4;
  swift_getKeyPath();
  sub_1D28719F8();

  free(v3);
}

uint64_t sub_1D25764BC()
{
  swift_getKeyPath();
  sub_1D25838BC(&qword_1EC6D8690, type metadata accessor for PhotoGridViewModel, &protocol conformance descriptor for PhotoGridViewModel);
  sub_1D28719E8();

  return *(v0 + 80);
}

uint64_t sub_1D2576564()
{
  swift_getKeyPath();
  sub_1D25838BC(&qword_1EC6D8690, type metadata accessor for PhotoGridViewModel, &protocol conformance descriptor for PhotoGridViewModel);
  sub_1D28719E8();

  return *(v0 + 97);
}

double sub_1D2576618()
{
  swift_getKeyPath();
  sub_1D25838BC(&qword_1EC6D8690, type metadata accessor for PhotoGridViewModel, &protocol conformance descriptor for PhotoGridViewModel);
  sub_1D28719E8();

  return *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__gridSize);
}

double sub_1D25766C4(unint64_t a1)
{
  v2 = v1;
  swift_getKeyPath();
  sub_1D25838BC(&qword_1EC6D8690, type metadata accessor for PhotoGridViewModel, &protocol conformance descriptor for PhotoGridViewModel);
  sub_1D28719E8();

  v4 = sub_1D2870F68();
  LOBYTE(a1) = sub_1D233875C(v4, a1);

  if ((a1 & 1) == 0)
  {
    sub_1D2576804();
    sub_1D2575DB8(v6);
    v7 = OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__selectedExportableAssetsCache;
    swift_beginAccess();
    v8 = sub_1D2870F68();
    *(v2 + v7) = sub_1D2582A10(v8, sub_1D25836E4, v2);
  }

  return result;
}

void sub_1D2576804()
{
  v1 = v0;
  v27 = MEMORY[0x1E69E7CC8];
  swift_getKeyPath();
  v2 = OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel___observationRegistrar;
  v26 = v1;
  v24 = sub_1D25838BC(&qword_1EC6D8690, type metadata accessor for PhotoGridViewModel, &protocol conformance descriptor for PhotoGridViewModel);
  v25 = v2;
  sub_1D28719E8();

  v3 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__gridElementViewModels);
  if (v3 >> 62)
  {
LABEL_21:
    v17 = v3;
    v18 = sub_1D2879368();
    v3 = v17;
    v4 = v18;
    if (v18)
    {
      goto LABEL_3;
    }

LABEL_22:
    swift_getKeyPath();
    v26 = v1;
    sub_1D28719E8();

    sub_1D2870F78();
    v19 = sub_1D2870F68();
    sub_1D258212C(v19, &v27, v1);

    return;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_22;
  }

LABEL_3:
  if (v4 >= 1)
  {
    v22 = v3 & 0xC000000000000001;
    v23 = OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__assets;
    v5 = v3;
    sub_1D2870F68();
    v6 = v5;
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC8];
    v21 = v4;
    while (1)
    {
      if (v22)
      {
        v9 = MEMORY[0x1D38A1C30](v7);
      }

      else
      {
        v9 = *(v6 + 8 * v7 + 32);
        sub_1D2870F78();
      }

      swift_getKeyPath();
      v26 = v1;
      sub_1D28719E8();

      v11 = *(v1 + v23);
      v26 = *(v9 + 16);
      MEMORY[0x1EEE9AC00](v10);
      v20[2] = &v26;
      sub_1D2870F68();
      sub_1D2870F78();
      v12 = sub_1D286447C(sub_1D2583AF0, v20, v11);

      if (v12)
      {
        v13 = *(v9 + 16);
        if ((v8 & 0xC000000000000001) != 0)
        {
          if (v8 < 0)
          {
            v14 = v8;
          }

          else
          {
            v14 = v8 & 0xFFFFFFFFFFFFFF8;
          }

          sub_1D2870F78();
          sub_1D2870F78();
          v15 = sub_1D2879368();
          if (__OFADD__(v15, 1))
          {
            __break(1u);
            goto LABEL_21;
          }

          v8 = sub_1D257CEDC(v14, v15 + 1, &qword_1EC6DCB78, &qword_1D288E898, type metadata accessor for PhotoGridElementViewModel, sub_1D24E0D84);
          v27 = v8;
        }

        else
        {
          sub_1D2870F78();
          sub_1D2870F78();
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26 = v8;
        sub_1D24E84AC(v9, v13, isUniquelyReferenced_nonNull_native);

        v8 = v26;
        v27 = v26;
      }

      else
      {
      }

      ++v7;
      v6 = v5;
      if (v21 == v7)
      {

        goto LABEL_22;
      }
    }
  }

  __break(1u);
}

uint64_t sub_1D2576BB4(uint64_t a1)
{
  sub_1D2576C30();
  v5 = a1;
  v4[2] = &v5;
  LOBYTE(a1) = sub_1D286447C(sub_1D2583AF0, v4, v2);

  return a1 & 1;
}

void sub_1D2576C30()
{
  swift_getKeyPath();
  sub_1D25838BC(&qword_1EC6D8690, type metadata accessor for PhotoGridViewModel, &protocol conformance descriptor for PhotoGridViewModel);
  sub_1D28719E8();

  v1 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__gridElementViewModels);
  v11 = MEMORY[0x1E69E7CC0];
  if (v1 >> 62)
  {
LABEL_27:
    v2 = sub_1D2879368();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1D2870F68();
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1D38A1C30](v4, v1);
        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_14:
          __break(1u);
LABEL_15:
          v3 = MEMORY[0x1E69E7CC0];
          break;
        }
      }

      else
      {
        if (v4 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_27;
        }

        v5 = *(v1 + 8 * v4 + 32);
        sub_1D2870F78();
        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_14;
        }
      }

      swift_getKeyPath();
      sub_1D25838BC(&qword_1EC6DDF98, type metadata accessor for PhotoGridElementViewModel, &unk_1D2897C98);
      sub_1D28719E8();

      if (*(v5 + 49))
      {
        sub_1D2879228();
        sub_1D2879268();
        sub_1D2879278();
        sub_1D2879238();
      }

      else
      {
      }

      ++v4;
      if (v6 == v2)
      {
        goto LABEL_15;
      }
    }
  }

  v7 = sub_1D2870F78();
  v11 = sub_1D2581A08(v7, sub_1D27D3200, sub_1D2750AF4);
  sub_1D257D200(&v11);

  v8 = v11;
  if ((v11 & 0x8000000000000000) == 0 && (v11 & 0x4000000000000000) == 0)
  {
    v9 = *(v11 + 16);
    if (v9)
    {
      goto LABEL_19;
    }

LABEL_29:

    return;
  }

  v9 = sub_1D2879368();
  if (!v9)
  {
    goto LABEL_29;
  }

LABEL_19:
  v11 = v3;
  sub_1D2879258();
  if ((v9 & 0x8000000000000000) == 0)
  {
    v10 = 0;
    do
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1D38A1C30](v10, v8);
      }

      else
      {
        sub_1D2870F78();
      }

      ++v10;
      sub_1D2870F78();

      sub_1D2879228();
      sub_1D2879268();
      sub_1D2879278();
      sub_1D2879238();
    }

    while (v9 != v10);
    goto LABEL_29;
  }

  __break(1u);

  __break(1u);
}

double sub_1D2576FCC(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1D25838BC(&qword_1EC6D8690, type metadata accessor for PhotoGridViewModel, &protocol conformance descriptor for PhotoGridViewModel);
  sub_1D28719E8();

  sub_1D2870F68();
  return result;
}

double sub_1D2577070(uint64_t a1)
{
  v3 = sub_1D2871818();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v121 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94F0, &qword_1D2882EB0);
  MEMORY[0x1EEE9AC00](v7);
  v135 = &v121 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70, &qword_1D2881410);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v121 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v137 = &v121 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v138 = &v121 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60, &qword_1D28811F0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  MEMORY[0x1EEE9AC00](v17);
  MEMORY[0x1EEE9AC00](v18);
  MEMORY[0x1EEE9AC00](v19);
  MEMORY[0x1EEE9AC00](&v121 - v20);
  v139 = &v121 - v25;
  if (*(v1 + 96) == 2)
  {
    sub_1D2576C30();
    if (v26 >> 62)
    {
      goto LABEL_126;
    }

    v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_4;
  }

  v133 = v21;
  v131 = v24;
  v128 = v23;
  v132 = v22;
  v129 = v7;
  v126 = v6;
  v130 = v3;
  swift_getKeyPath();
  v155 = v1;
  v136 = sub_1D25838BC(&qword_1EC6D8690, type metadata accessor for PhotoGridViewModel, &protocol conformance descriptor for PhotoGridViewModel);
  sub_1D28719E8();

  v30 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__gridElementViewModels[0]);
  v155 = MEMORY[0x1E69E7CC0];
  if (v30 >> 62)
  {
    v31 = sub_1D2879368();
  }

  else
  {
    v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1D2870F68();
  v32 = MEMORY[0x1E69E7CC0];
  v134 = a1;
  v127 = v11;
  if (!v31)
  {
    goto LABEL_22;
  }

  v33 = 0;
  v148 = v4;
  v149 = v30 & 0xC000000000000001;
  a1 = v30 & 0xFFFFFFFFFFFFFF8;
  while (v149)
  {
    v34 = MEMORY[0x1D38A1C30](v33, v30);
    v35 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      goto LABEL_20;
    }

LABEL_15:
    swift_getKeyPath();
    v150 = v34;
    sub_1D25838BC(&qword_1EC6DDF98, type metadata accessor for PhotoGridElementViewModel, &unk_1D2897C98);
    sub_1D28719E8();

    if (*(v34 + 49) == 1 && (swift_getKeyPath(), v150 = v34, sub_1D28719E8(), , *(v34 + 56) > 0))
    {
      sub_1D2879228();
      sub_1D2879268();
      sub_1D2879278();
      sub_1D2879238();
    }

    else
    {
    }

    ++v33;
    if (v35 == v31)
    {
      goto LABEL_21;
    }
  }

  if (v33 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_123;
  }

  v34 = *(v30 + 8 * v33 + 32);
  sub_1D2870F78();
  v35 = v33 + 1;
  if (!__OFADD__(v33, 1))
  {
    goto LABEL_15;
  }

LABEL_20:
  __break(1u);
LABEL_21:
  v32 = v155;
  v4 = v148;
LABEL_22:

  if (v32 < 0 || (v32 & 0x4000000000000000) != 0)
  {
    v36 = sub_1D2879368();
  }

  else
  {
    v36 = *(v32 + 16);
  }

  a1 = MEMORY[0x1E69E7CA8];
  if (!v36)
  {
LABEL_114:

    v119 = v134;
    if (*(v134 + 56) != 1)
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      *(&v121 - 2) = v119;
      *(&v121 - 1) = 1;
      v150 = v119;
      sub_1D25838BC(&qword_1EC6DDF98, type metadata accessor for PhotoGridElementViewModel, &unk_1D2897C98);
      sub_1D28719D8();
LABEL_116:
    }

    return result;
  }

  v37 = 0;
  v38 = 0;
  v145 = v32 & 0xC000000000000001;
  v144 = v32 + 32;
  v125 = (v4 + 16);
  v124 = (v4 + 56);
  v123 = (v4 + 48);
  v121 = (v4 + 32);
  v122 = (v4 + 8);
  v143 = v36;
  v141 = v32;
  while (2)
  {
    if (v145)
    {
      v40 = MEMORY[0x1D38A1C30](v37, v32);
      v41 = __OFADD__(v37, 1);
      v42 = v37 + 1;
      if (v41)
      {
        goto LABEL_124;
      }
    }

    else
    {
      if (v37 >= *(v32 + 16))
      {
        goto LABEL_125;
      }

      v40 = *(v144 + 8 * v37);
      sub_1D2870F78();
      v41 = __OFADD__(v37, 1);
      v42 = v37 + 1;
      if (v41)
      {
        goto LABEL_124;
      }
    }

    v43 = *(v40 + 49);
    v149 = v42;
    if (v43 == 1)
    {
      v44 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v44);
      *(&v121 - 2) = v40;
      *(&v121 - 8) = 0;
      v150 = v40;
      sub_1D25838BC(&qword_1EC6DDF98, type metadata accessor for PhotoGridElementViewModel, &unk_1D2897C98);
      sub_1D28719D8();

      goto LABEL_84;
    }

    v146 = v38;
    *(v40 + 49) = 0;
    swift_getKeyPath();
    v150 = v40;
    sub_1D25838BC(&qword_1EC6DDF98, type metadata accessor for PhotoGridElementViewModel, &unk_1D2897C98);
    sub_1D28719E8();

    if (*(v40 + 49) != 1)
    {
      goto LABEL_83;
    }

    swift_getKeyPath();
    v150 = v40;
    sub_1D28719E8();

    v45 = *(v40 + 49);
    swift_getKeyPath();
    v148 = v40;
    if (v45 == 1)
    {
      v150 = v40;
      sub_1D28719E8();

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v47 = Strong;
        v48 = *(v40 + 16);
        sub_1D2577070(v40);
        if (*(v47 + 96))
        {
          v49 = sub_1D28785F8();
          v50 = *(v49 - 8);
          v51 = v139;
          (*(v50 + 56))(v139, 1, 1, v49);
          sub_1D2878568();
          swift_unknownObjectRetain();
          v52 = sub_1D2878558();
          v53 = swift_allocObject();
          v53[2] = v52;
          v53[3] = MEMORY[0x1E69E85E0];
          v53[4] = v47;
          v54 = v51;
          v55 = v133;
          sub_1D22BD1D0(v54, v133, &qword_1EC6D8E60, &qword_1D28811F0);
          LODWORD(v52) = (*(v50 + 48))(v55, 1, v49);
          sub_1D2870F78();
          if (v52 == 1)
          {
            sub_1D22BD238(v55, &qword_1EC6D8E60, &qword_1D28811F0);
          }

          else
          {
            sub_1D28785E8();
            (*(v50 + 8))(v55, v49);
          }

          v75 = v53[2];
          swift_unknownObjectRetain();

          if (v75)
          {
            swift_getObjectType();
            v76 = sub_1D28784F8();
            v78 = v77;
            swift_unknownObjectRelease();
          }

          else
          {
            v76 = 0;
            v78 = 0;
          }

          v38 = v146;
          v32 = v141;
          sub_1D22BD238(v139, &qword_1EC6D8E60, &qword_1D28811F0);
          v79 = swift_allocObject();
          *(v79 + 16) = &unk_1D2894890;
          *(v79 + 24) = v53;
          if (v78 | v76)
          {
            v156 = 0;
            v157 = 0;
            v158 = v76;
            v159 = v78;
          }

          a1 = MEMORY[0x1E69E7CA8];
          swift_task_create();
          goto LABEL_105;
        }

        v69 = swift_unknownObjectWeakLoadStrong();
        if (v69)
        {
          v70 = *(v69 + 56);
          v71 = *(*v48 + 160);
          v72 = *(v70 + OBJC_IVAR____TtC23ImagePlaygroundInternal24HomeAnimationCoordinator__transitionFlow);
          v147 = v69;
          if (v72)
          {
            v73 = swift_getKeyPath();
            MEMORY[0x1EEE9AC00](v73);
            *(&v121 - 2) = v70;
            *(&v121 - 8) = 0;
            v150 = v70;
            sub_1D25838BC(&qword_1ED89FD50, type metadata accessor for HomeAnimationCoordinator, &unk_1D2897B40);
            v74 = v146;
            sub_1D28719D8();
            v146 = v74;
          }

          else
          {
            *(v70 + OBJC_IVAR____TtC23ImagePlaygroundInternal24HomeAnimationCoordinator__transitionFlow) = 0;
          }

          v80 = v137;
          v81 = *v125;
          v142 = v48;
          v82 = v48 + v71;
          v83 = v138;
          v84 = v130;
          v81(v138, v82, v130);
          (*v124)(v83, 0, 1, v84);
          v85 = OBJC_IVAR____TtC23ImagePlaygroundInternal24HomeAnimationCoordinator__animatedAssetID;
          swift_beginAccess();
          v140 = v85;
          sub_1D22BD1D0(v70 + v85, v80, &qword_1EC6D8F70, &qword_1D2881410);
          v86 = *(v129 + 48);
          v87 = v135;
          sub_1D22BD1D0(v80, v135, &qword_1EC6D8F70, &qword_1D2881410);
          sub_1D22BD1D0(v83, v87 + v86, &qword_1EC6D8F70, &qword_1D2881410);
          v88 = v80;
          v89 = *v123;
          if ((*v123)(v87, 1, v84) == 1)
          {
            sub_1D22BD238(v88, &qword_1EC6D8F70, &qword_1D2881410);
            if (v89(v87 + v86, 1, v84) == 1)
            {
              sub_1D22BD238(v87, &qword_1EC6D8F70, &qword_1D2881410);
              v40 = v148;
              goto LABEL_95;
            }

LABEL_92:
            sub_1D22BD238(v87, &qword_1EC6D94F0, &qword_1D2882EB0);
            v40 = v148;
            goto LABEL_93;
          }

          v90 = v127;
          sub_1D22BD1D0(v87, v127, &qword_1EC6D8F70, &qword_1D2881410);
          if (v89(v87 + v86, 1, v84) == 1)
          {
            sub_1D22BD238(v137, &qword_1EC6D8F70, &qword_1D2881410);
            (*v122)(v90, v84);
            goto LABEL_92;
          }

          v95 = v126;
          (*v121)(v126, v87 + v86, v84);
          sub_1D25838BC(&unk_1ED8A6CA0, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
          v96 = sub_1D2877F98();
          v97 = *v122;
          (*v122)(v95, v84);
          sub_1D22BD238(v137, &qword_1EC6D8F70, &qword_1D2881410);
          v97(v127, v84);
          sub_1D22BD238(v87, &qword_1EC6D8F70, &qword_1D2881410);
          v40 = v148;
          if (v96)
          {
LABEL_95:
            v98 = v140;
            swift_beginAccess();
            v99 = v70 + v98;
            v93 = v138;
            sub_1D25187F4(v138, v99);
            swift_endAccess();
          }

          else
          {
LABEL_93:
            v91 = swift_getKeyPath();
            MEMORY[0x1EEE9AC00](v91);
            v92 = v138;
            *(&v121 - 2) = v70;
            *(&v121 - 1) = v92;
            v150 = v70;
            sub_1D25838BC(&qword_1ED89FD50, type metadata accessor for HomeAnimationCoordinator, &unk_1D2897B40);
            v93 = v92;
            v94 = v146;
            sub_1D28719D8();
            v146 = v94;
          }

          sub_1D22BD238(v93, &qword_1EC6D8F70, &qword_1D2881410);
          v100 = sub_1D28785F8();
          v101 = *(v100 - 8);
          v102 = v131;
          (*(v101 + 56))(v131, 1, 1, v100);
          sub_1D2878568();
          v103 = v147;
          swift_unknownObjectRetain();
          v104 = v142;
          sub_1D2870F78();
          v105 = sub_1D2878558();
          v106 = swift_allocObject();
          v106[2] = v105;
          v106[3] = MEMORY[0x1E69E85E0];
          v106[4] = v103;
          v106[5] = v104;
          v107 = v102;
          v108 = v128;
          sub_1D22BD1D0(v107, v128, &qword_1EC6D8E60, &qword_1D28811F0);
          LODWORD(v105) = (*(v101 + 48))(v108, 1, v100);
          sub_1D2870F78();
          if (v105 == 1)
          {
            sub_1D22BD238(v108, &qword_1EC6D8E60, &qword_1D28811F0);
          }

          else
          {
            sub_1D28785E8();
            (*(v101 + 8))(v108, v100);
          }

          v109 = v106[2];
          swift_unknownObjectRetain();

          if (v109)
          {
            swift_getObjectType();
            v110 = sub_1D28784F8();
            v112 = v111;
            swift_unknownObjectRelease();
          }

          else
          {
            v110 = 0;
            v112 = 0;
          }

          v38 = v146;
          v32 = v141;
          sub_1D22BD238(v131, &qword_1EC6D8E60, &qword_1D28811F0);
          v113 = swift_allocObject();
          *(v113 + 16) = &unk_1D28948D0;
          *(v113 + 24) = v106;
          if (v112 | v110)
          {
            v151 = 0;
            v152 = 0;
            v153 = v110;
            v154 = v112;
          }

          a1 = MEMORY[0x1E69E7CA8];
          swift_task_create();
          swift_unknownObjectRelease();
LABEL_105:
          swift_unknownObjectRelease();

LABEL_84:
          if (*(v40 + 56))
          {
            v39 = swift_getKeyPath();
            MEMORY[0x1EEE9AC00](v39);
            *(&v121 - 2) = v40;
            *(&v121 - 1) = 0;
            v150 = v40;
            sub_1D25838BC(&qword_1EC6DDF98, type metadata accessor for PhotoGridElementViewModel, &unk_1D2897C98);
            sub_1D28719D8();
          }

          v37 = v149;
          if (v149 == v143)
          {
            goto LABEL_114;
          }

          continue;
        }

        swift_unknownObjectRelease();
      }

LABEL_83:
      v38 = v146;
      v32 = v141;
      goto LABEL_84;
    }

    break;
  }

  v150 = v40;
  sub_1D28719E8();

  v140 = swift_unknownObjectWeakLoadStrong();
  if (!v140)
  {
    goto LABEL_83;
  }

  swift_getKeyPath();
  v150 = v40;
  sub_1D28719E8();

  v142 = *(v40 + 56);
  if (v142)
  {
    v56 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v56);
    *(&v121 - 2) = v40;
    *(&v121 - 1) = 0;
    v150 = v40;
    v57 = v146;
    sub_1D28719D8();
    v146 = v57;
  }

  a1 = MEMORY[0x1E69E7CC0];
  swift_getKeyPath();
  v58 = v140;
  v150 = v140;
  sub_1D28719E8();

  v59 = *(v58 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__gridElementViewModels[0]);
  v150 = a1;
  if (v59 >> 62)
  {
    v60 = sub_1D2879368();
  }

  else
  {
    v60 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1D2870F68();
  if (!v60)
  {
LABEL_59:

    if (a1 < 0 || (a1 & 0x4000000000000000) != 0)
    {
      v63 = sub_1D2879368();
      v40 = v148;
      if (v63)
      {
LABEL_62:
        v64 = 0;
        v147 = a1 & 0xC000000000000001;
        do
        {
          if (v147)
          {
            v65 = MEMORY[0x1D38A1C30](v64, a1);
            v66 = v64 + 1;
            if (__OFADD__(v64, 1))
            {
              goto LABEL_120;
            }
          }

          else
          {
            if (v64 >= *(a1 + 16))
            {
              goto LABEL_121;
            }

            v65 = *(a1 + 8 * v64 + 32);
            sub_1D2870F78();
            v66 = v64 + 1;
            if (__OFADD__(v64, 1))
            {
              goto LABEL_120;
            }
          }

          swift_getKeyPath();
          v150 = v65;
          sub_1D28719E8();

          v150 = v65;
          swift_getKeyPath();
          sub_1D2871A08();

          v67 = *(v65 + 56);
          v41 = __OFSUB__(v67, 1);
          v68 = v67 - 1;
          if (v41)
          {
            goto LABEL_122;
          }

          *(v65 + 56) = v68;
          v150 = v65;
          swift_getKeyPath();
          sub_1D28719F8();

          ++v64;
          v40 = v148;
        }

        while (v66 != v63);
      }
    }

    else
    {
      v63 = *(a1 + 16);
      v40 = v148;
      if (v63)
      {
        goto LABEL_62;
      }
    }

    v114 = v140;
    if (*(v140 + 96))
    {
      v115 = sub_1D28785F8();
      v116 = v132;
      (*(*(v115 - 8) + 56))(v132, 1, 1, v115);
      sub_1D2878568();
      swift_unknownObjectRetain();
      v117 = sub_1D2878558();
      v118 = swift_allocObject();
      v118[2] = v117;
      v118[3] = MEMORY[0x1E69E85E0];
      v118[4] = v114;
      sub_1D22AE01C(0, 0, v116, &unk_1D2897D70, v118);
    }

    swift_unknownObjectRelease();
    a1 = MEMORY[0x1E69E7CA8];
    v38 = v146;
    v32 = v141;
    goto LABEL_84;
  }

  v61 = 0;
  v147 = v59 & 0xC000000000000001;
  while (v147)
  {
    v62 = MEMORY[0x1D38A1C30](v61, v59);
    a1 = v61 + 1;
    if (__OFADD__(v61, 1))
    {
      goto LABEL_118;
    }

LABEL_52:
    swift_getKeyPath();
    v160 = v62;
    sub_1D28719E8();

    if (*(v62 + 49) == 1 && (swift_getKeyPath(), v160 = v62, sub_1D28719E8(), , v142 < *(v62 + 56)))
    {
      sub_1D2879228();
      sub_1D2879268();
      sub_1D2879278();
      sub_1D2879238();
    }

    else
    {
    }

    ++v61;
    if (a1 == v60)
    {
      a1 = v150;
      goto LABEL_59;
    }
  }

  if (v61 >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_119;
  }

  v62 = *(v59 + 8 * v61 + 32);
  sub_1D2870F78();
  a1 = v61 + 1;
  if (!__OFADD__(v61, 1))
  {
    goto LABEL_52;
  }

LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  v27 = sub_1D2879368();
LABEL_4:

  if (*(a1 + 56) != v27)
  {
    v29 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v29);
    *(&v121 - 2) = a1;
    *(&v121 - 1) = v27;
    v155 = a1;
    sub_1D25838BC(&qword_1EC6DDF98, type metadata accessor for PhotoGridElementViewModel, &unk_1D2897C98);
    sub_1D28719D8();
    goto LABEL_116;
  }

  return result;
}

double sub_1D25789F0(uint64_t a1)
{
  swift_getKeyPath();
  sub_1D25838BC(&qword_1EC6DDF98, type metadata accessor for PhotoGridElementViewModel, &unk_1D2897C98);
  sub_1D28719E8();

  v18 = *(a1 + 56);
  if (v18)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D28719D8();
  }

  swift_getKeyPath();
  sub_1D25838BC(&qword_1EC6D8690, type metadata accessor for PhotoGridViewModel, &protocol conformance descriptor for PhotoGridViewModel);
  sub_1D28719E8();

  v4 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__gridElementViewModels[0]);
  v19 = MEMORY[0x1E69E7CC0];
  if (v4 >> 62)
  {
    goto LABEL_36;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
  sub_1D2870F68();
  if (!v5)
  {
    v9 = MEMORY[0x1E69E7CC0];
    goto LABEL_20;
  }

  v6 = 0;
  while ((v4 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x1D38A1C30](v6, v4);
    v8 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_17;
    }

LABEL_12:
    swift_getKeyPath();
    sub_1D28719E8();

    if (*(v7 + 49) == 1 && (swift_getKeyPath(), sub_1D28719E8(), , v18 < *(v7 + 56)))
    {
      sub_1D2879228();
      sub_1D2879268();
      sub_1D2879278();
      sub_1D2879238();
    }

    else
    {
    }

    ++v6;
    if (v8 == v5)
    {
      goto LABEL_18;
    }
  }

  if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_33;
  }

  v7 = *(v4 + 8 * v6 + 32);
  sub_1D2870F78();
  v8 = v6 + 1;
  if (!__OFADD__(v6, 1))
  {
    goto LABEL_12;
  }

LABEL_17:
  __break(1u);
LABEL_18:
  v9 = v19;
LABEL_20:

  if (v9 < 0 || (v9 & 0x4000000000000000) != 0)
  {
    v10 = sub_1D2879368();
    if (v10)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v10 = *(v9 + 16);
    if (v10)
    {
LABEL_23:
      v11 = 0;
      do
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x1D38A1C30](v11, v9);
          v13 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            goto LABEL_32;
          }
        }

        else
        {
          if (v11 >= *(v9 + 16))
          {
            goto LABEL_34;
          }

          v12 = *(v9 + 8 * v11 + 32);
          sub_1D2870F78();
          v13 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
LABEL_32:
            __break(1u);
LABEL_33:
            __break(1u);
LABEL_34:
            __break(1u);
LABEL_35:
            __break(1u);
LABEL_36:
            v5 = sub_1D2879368();
            goto LABEL_5;
          }
        }

        swift_getKeyPath();
        v4 = OBJC_IVAR____TtC23ImagePlaygroundInternal25PhotoGridElementViewModel___observationRegistrar;
        sub_1D28719E8();

        v19 = v12;
        swift_getKeyPath();
        sub_1D2871A08();

        v14 = *(v12 + 56);
        v15 = __OFSUB__(v14, 1);
        v16 = v14 - 1;
        if (v15)
        {
          goto LABEL_35;
        }

        *(v12 + 56) = v16;
        v19 = v12;
        swift_getKeyPath();
        sub_1D28719F8();

        ++v11;
      }

      while (v13 != v10);
    }
  }

  return result;
}

uint64_t sub_1D2578E94@<X0>(uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  swift_getKeyPath();
  sub_1D25838BC(&qword_1EC6D8690, type metadata accessor for PhotoGridViewModel, &protocol conformance descriptor for PhotoGridViewModel);
  sub_1D28719E8();

  v6 = *a2;
  swift_beginAccess();
  return sub_1D22BD1D0(v3 + v6, a3, &qword_1EC6D8F70, &qword_1D2881410);
}

uint64_t sub_1D2578F80@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X4>, uint64_t a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1D25838BC(&qword_1EC6D8690, type metadata accessor for PhotoGridViewModel, &protocol conformance descriptor for PhotoGridViewModel);
  sub_1D28719E8();

  v7 = *a3;
  swift_beginAccess();
  return sub_1D22BD1D0(v6 + v7, a4, &qword_1EC6D8F70, &qword_1D2881410);
}

uint64_t sub_1D2579084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70, &qword_1D2881410);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v15 - v12;
  sub_1D22BD1D0(a1, &v15 - v12, &qword_1EC6D8F70, &qword_1D2881410);
  return sub_1D2575AA4(v13, a5, a6, a7);
}

uint64_t sub_1D2579150(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  swift_beginAccess();
  sub_1D25187F4(a2, a1 + v5);
  return swift_endAccess();
}

uint64_t sub_1D25791CC(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1D25838BC(&qword_1EC6D8690, type metadata accessor for PhotoGridViewModel, &protocol conformance descriptor for PhotoGridViewModel);
  sub_1D28719E8();

  return *(v2 + *a2);
}

uint64_t sub_1D257927C()
{
  v1 = v0;
  swift_getKeyPath();
  sub_1D25838BC(&qword_1EC6D8690, type metadata accessor for PhotoGridViewModel, &protocol conformance descriptor for PhotoGridViewModel);
  sub_1D28719E8();

  v2 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__filterFavorites);
  swift_getKeyPath();
  if (v2 == 1)
  {
    sub_1D28719E8();

    v1 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__gridElementViewModels[0]);
    v11 = MEMORY[0x1E69E7CC0];
    if (v1 >> 62)
    {
      goto LABEL_22;
    }

    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    sub_1D2870F68();
    if (v3)
    {
      v4 = 0;
      while (1)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x1D38A1C30](v4, v1);
          v5 = v6;
          v7 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
LABEL_15:
            __break(1u);
            goto LABEL_16;
          }
        }

        else
        {
          if (v4 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_22:
            v3 = sub_1D2879368();
            goto LABEL_4;
          }

          v5 = *(v1 + 8 * v4 + 32);
          v6 = sub_1D2870F78();
          v7 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_15;
          }
        }

        v8 = *(v5 + 16);
        MEMORY[0x1EEE9AC00](v6);
        sub_1D22BCFD0(0, &qword_1EC6D74E0, 0x1E6978630);
        swift_getKeyPath();
        sub_1D2583618();
        sub_1D28719E8();

        if (*(v8 + *(*v8 + 208)))
        {
          sub_1D2879228();
          sub_1D2879268();
          sub_1D2879278();
          sub_1D2879238();
        }

        else
        {
        }

        ++v4;
        if (v7 == v3)
        {
          v9 = v11;
          goto LABEL_19;
        }
      }
    }

    v9 = MEMORY[0x1E69E7CC0];
LABEL_19:
  }

  else
  {
LABEL_16:
    sub_1D28719E8();

    v9 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__gridElementViewModels[0]);
    sub_1D2870F68();
  }

  return v9;
}

uint64_t sub_1D2579574()
{
  v1[15] = v0;
  sub_1D2878568();
  v1[16] = sub_1D2878558();
  v3 = sub_1D28784F8();
  v1[17] = v3;
  v1[18] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1D257960C, v3, v2);
}

uint64_t sub_1D257960C()
{
  v1 = v0[15];
  sub_1D2576C30();
  v3 = v2;
  v4 = OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__selectedExportableAssetsCache;
  v0[19] = v2;
  v0[20] = v4;
  swift_beginAccess();
  v5 = swift_task_alloc();
  *(v5 + 16) = v3;
  v6 = sub_1D2870F68();
  v7 = sub_1D2582A10(v6, sub_1D25830E0, v5);

  *(v1 + v4) = v7;

  v0[11] = MEMORY[0x1E69E7CC0];
  if (v3 >> 62)
  {
    result = sub_1D2879368();
    v0[21] = result;
    if (result)
    {
      goto LABEL_3;
    }
  }

  else
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0[21] = result;
    if (result)
    {
LABEL_3:
      if (result < 1)
      {
        __break(1u);
        return result;
      }

      v9 = 0;
      v10 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        v0[22] = v9;
        v0[23] = v10;
        v11 = v0[19];
        if ((v11 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x1D38A1C30]();
        }

        else
        {
          v12 = *(v11 + 8 * v9 + 32);
          sub_1D2870F78();
        }

        v0[24] = v12;
        v13 = v0[20];
        v14 = v0[15];
        swift_beginAccess();
        v15 = *(v14 + v13);
        if ((v15 & 0xC000000000000001) != 0)
        {
          sub_1D2870F78();
          v16 = sub_1D2879378();

          if (!v16)
          {
            goto LABEL_19;
          }

          v0[14] = v16;
          sub_1D2878C28();
          swift_dynamicCast();
          v17 = v0[13];
          if (!v17)
          {
            goto LABEL_19;
          }
        }

        else if (!*(v15 + 16) || (v18 = sub_1D25D0B54(v12), (v19 & 1) == 0) || (v17 = *(*(v15 + 56) + 8 * v18)) == 0)
        {
LABEL_19:
          swift_endAccess();
          v21 = swift_task_alloc();
          v0[25] = v21;
          *v21 = v0;
          v21[1] = sub_1D2579970;

          return sub_1D23F4380(v12);
        }

        swift_endAccess();
        v20 = v17;
        MEMORY[0x1D38A0E30]();
        if (*((v0[11] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[11] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D2878428();
        }

        sub_1D2878488();

        v10 = v0[11];
        v9 = v0[22] + 1;
        if (v9 == v0[21])
        {
          goto LABEL_24;
        }
      }
    }
  }

  v10 = MEMORY[0x1E69E7CC0];
LABEL_24:

  v22 = v0[1];

  return v22(v10);
}

uint64_t sub_1D2579970(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 208) = a1;

  v3 = *(v2 + 144);
  v4 = *(v2 + 136);

  return MEMORY[0x1EEE6DFA0](sub_1D2579A98, v4, v3);
}

unint64_t sub_1D2579A98()
{
  v1 = v0[26];
  if (!v1)
  {
    sub_1D2579FD0(v0[24]);

    v5 = v0[23];
    goto LABEL_24;
  }

  v2 = v1;
  MEMORY[0x1D38A0E30]();
  if (*((v0[11] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[11] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D2878428();
  }

  v3 = v0[20];
  v4 = v0[15];
  sub_1D2878488();
  v5 = v0[11];
  swift_beginAccess();
  v6 = *(v4 + v3);
  v7 = v0[24];
  if ((v6 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v8 = *(v4 + v3);
    }

    else
    {
      v8 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    sub_1D2870F78();
    v9 = v2;
    result = sub_1D2879368();
    if (__OFADD__(result, 1))
    {
      goto LABEL_46;
    }

    v11 = v0[20];
    v12 = v0[15];
    *(v12 + v11) = sub_1D257CEDC(v8, result + 1, &qword_1EC6DCB48, &qword_1D28947C0, MEMORY[0x1E696E4E0], sub_1D24E107C);
    v7 = v0[24];
  }

  else
  {
    sub_1D2870F78();
    v13 = v2;
  }

  v8 = v0[20];
  v14 = v0[15];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v14 + v8);
  v0[12] = v16;
  *(v14 + v8) = 0x8000000000000000;
  result = sub_1D25D0B54(v7);
  v18 = *(v16 + 16);
  v19 = (v17 & 1) == 0;
  v20 = __OFADD__(v18, v19);
  v21 = v18 + v19;
  if (v20)
  {
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    v43 = result;
    sub_1D24EF384();
    result = v43;
    goto LABEL_19;
  }

  LOBYTE(v8) = v17;
  if (*(v16 + 24) < v21)
  {
    v22 = v0[24];
    sub_1D24E107C(v21, isUniquelyReferenced_nonNull_native);
    result = sub_1D25D0B54(v22);
    if ((v8 & 1) != (v23 & 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE550, &qword_1D2895E10);

      return sub_1D28796E8();
    }

    goto LABEL_19;
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_47;
  }

LABEL_19:
  v24 = v0[12];
  v25 = v0[24];
  if (v8)
  {
    v26 = v24[7];
    v27 = *(v26 + 8 * result);
    *(v26 + 8 * result) = v2;
  }

  else
  {
    v24[(result >> 6) + 8] |= 1 << result;
    *(v24[6] + 8 * result) = v25;
    *(v24[7] + 8 * result) = v2;
    v28 = v24[2];
    v20 = __OFADD__(v28, 1);
    v29 = v28 + 1;
    if (v20)
    {
      __break(1u);
      return result;
    }

    v24[2] = v29;
  }

  *(v0[15] + v0[20]) = v24;
  swift_endAccess();

LABEL_24:
  v30 = v0[22] + 1;
  if (v30 == v0[21])
  {
LABEL_25:

    v31 = v0[1];

    return v31(v5);
  }

  while (1)
  {
    v0[22] = v30;
    v0[23] = v5;
    v32 = v0[19];
    if ((v32 & 0xC000000000000001) != 0)
    {
      v33 = MEMORY[0x1D38A1C30]();
    }

    else
    {
      v33 = *(v32 + 8 * v30 + 32);
      sub_1D2870F78();
    }

    v0[24] = v33;
    v34 = v0[20];
    v35 = v0[15];
    swift_beginAccess();
    v36 = *(v35 + v34);
    if ((v36 & 0xC000000000000001) == 0)
    {
      break;
    }

    sub_1D2870F78();
    v37 = sub_1D2879378();

    if (!v37)
    {
      goto LABEL_42;
    }

    v0[14] = v37;
    sub_1D2878C28();
    swift_dynamicCast();
    v38 = v0[13];
    if (!v38)
    {
      goto LABEL_42;
    }

LABEL_38:
    swift_endAccess();
    v41 = v38;
    MEMORY[0x1D38A0E30]();
    if (*((v0[11] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[11] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D2878428();
    }

    sub_1D2878488();

    v5 = v0[11];
    v30 = v0[22] + 1;
    if (v30 == v0[21])
    {
      goto LABEL_25;
    }
  }

  if (*(v36 + 16))
  {
    v39 = sub_1D25D0B54(v33);
    if (v40)
    {
      v38 = *(*(v36 + 56) + 8 * v39);
      if (v38)
      {
        goto LABEL_38;
      }
    }
  }

LABEL_42:
  swift_endAccess();
  v42 = swift_task_alloc();
  v0[25] = v42;
  *v42 = v0;
  v42[1] = sub_1D2579970;

  return sub_1D23F4380(v33);
}

void sub_1D2579FD0(uint64_t a1)
{
  v3 = sub_1D2871818();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v21 = v1;
  sub_1D25838BC(&qword_1EC6D8690, type metadata accessor for PhotoGridViewModel, &protocol conformance descriptor for PhotoGridViewModel);
  sub_1D28719E8();

  v7 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__gridElementViewModels[0]);
  v21 = MEMORY[0x1E69E7CC0];
  if (v7 >> 62)
  {
LABEL_27:
    v8 = sub_1D2879368();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = *(*a1 + 160);
  sub_1D2870F68();
  if (v8)
  {
    v10 = 0;
    v19 = v7 & 0xFFFFFFFFFFFFFF8;
    v20 = v7 & 0xC000000000000001;
    v17 = (v4 + 8);
    v18 = (v4 + 16);
    v16[1] = v9;
    while (1)
    {
      if (v20)
      {
        v4 = MEMORY[0x1D38A1C30](v10, v7);
        v11 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
LABEL_14:
          __break(1u);
LABEL_15:
          v13 = v21;
          goto LABEL_17;
        }
      }

      else
      {
        if (v10 >= *(v19 + 16))
        {
          __break(1u);
          goto LABEL_27;
        }

        v4 = *(v7 + 8 * v10 + 32);
        sub_1D2870F78();
        v11 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_14;
        }
      }

      (*v18)(v6, *(v4 + 16) + *(**(v4 + 16) + 160), v3);
      v12 = _s23ImagePlaygroundInternal0A10GenerationV07PreviewA0V2eeoiySbAE_AEtFZ_0();
      (*v17)(v6, v3);
      if (v12)
      {
        sub_1D2879228();
        sub_1D2879268();
        sub_1D2879278();
        sub_1D2879238();
      }

      else
      {
      }

      ++v10;
      if (v11 == v8)
      {
        goto LABEL_15;
      }
    }
  }

  v13 = MEMORY[0x1E69E7CC0];
LABEL_17:

  if (v13 < 0 || (v13 & 0x4000000000000000) != 0)
  {
    if (!sub_1D2879368())
    {
      goto LABEL_29;
    }
  }

  else if (!*(v13 + 16))
  {
    goto LABEL_29;
  }

  if ((v13 & 0xC000000000000001) != 0)
  {
    v14 = MEMORY[0x1D38A1C30](0, v13);
  }

  else
  {
    if (!*(v13 + 16))
    {
      __break(1u);
      return;
    }

    v14 = *(v13 + 32);
    sub_1D2870F78();
  }

  if (*(v14 + 49) == 1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v16[-2] = v14;
    LOBYTE(v16[-1]) = 0;
    v21 = v14;
    sub_1D25838BC(&qword_1EC6DDF98, type metadata accessor for PhotoGridElementViewModel, &unk_1D2897C98);
    sub_1D28719D8();

    return;
  }

  *(v14 + 49) = 0;
  sub_1D25E4D94(0);
LABEL_29:
}

double sub_1D257A414(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60, &qword_1D28811F0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v20 - v8;
  if (qword_1EC6D8B40 != -1)
  {
    swift_once();
  }

  v10 = qword_1EC6D8B50;
  type metadata accessor for DuplicateAssetOperation();
  v11 = swift_allocObject();
  v11[3] = a1;
  v11[4] = 0;
  v11[2] = v10;
  v12 = *(v3 + 88);
  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = a3;
  v13[4] = v11;
  v14 = sub_1D28785F8();
  (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  sub_1D2878568();
  swift_retain_n();
  v15 = v10;
  sub_1D2870F68();
  sub_1D22A58B8(a2, a3);
  sub_1D2870F78();
  sub_1D2870F78();
  v16 = sub_1D2878558();
  v17 = swift_allocObject();
  v18 = MEMORY[0x1E69E85E0];
  *(v17 + 16) = v16;
  *(v17 + 24) = v18;
  *(v17 + 32) = v11;
  *(v17 + 40) = &off_1EEC2D748;
  *(v17 + 48) = 1;
  *(v17 + 56) = v12;
  *(v17 + 64) = sub_1D258360C;
  *(v17 + 72) = v13;
  sub_1D22AE01C(0, 0, v9, &unk_1D288CB00, v17);

  return result;
}

void sub_1D257A644(void *a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v8 = sub_1D2873CB8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v12 = a1;
    sub_1D2872528();
    v13 = a1;
    v14 = sub_1D2873CA8();
    v15 = sub_1D2878A18();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      v18 = a1;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v19;
      *v17 = v19;
      _os_log_impl(&dword_1D226E000, v14, v15, "Cannot duplicate asset with error: %@", v16, 0xCu);
      sub_1D22BD238(v17, qword_1EC6DA930, &qword_1D287E870);
      MEMORY[0x1D38A3520](v17, -1, -1);
      MEMORY[0x1D38A3520](v16, -1, -1);
    }

    (*(v9 + 8))(v11, v8);
    if (qword_1EC6D8968 != -1)
    {
      swift_once();
    }

    sub_1D25428EC(a1);
  }

  else if (a2 && *(a4 + 32))
  {
    sub_1D22A58B8(a2, a3);
    v20 = sub_1D2870F68();
    a2(v20);

    sub_1D22A576C(a2, a3);
  }
}

void sub_1D257A8B4(uint64_t a1)
{
  v3 = sub_1D2871818();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v19 = v1;
  sub_1D25838BC(&qword_1EC6D8690, type metadata accessor for PhotoGridViewModel, &protocol conformance descriptor for PhotoGridViewModel);
  sub_1D28719E8();

  v7 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__gridElementViewModels[0]);
  v19 = MEMORY[0x1E69E7CC0];
  if (v7 >> 62)
  {
LABEL_26:
    v8 = sub_1D2879368();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = *(*a1 + 160);
  sub_1D2870F68();
  if (v8)
  {
    v10 = 0;
    v17 = v7 & 0xFFFFFFFFFFFFFF8;
    v18 = v7 & 0xC000000000000001;
    v15 = (v4 + 8);
    v16 = (v4 + 16);
    v14 = v9;
    while (1)
    {
      if (v18)
      {
        v4 = MEMORY[0x1D38A1C30](v10, v7);
        v11 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
LABEL_14:
          __break(1u);
LABEL_15:
          v13 = v19;
          goto LABEL_17;
        }
      }

      else
      {
        if (v10 >= *(v17 + 16))
        {
          __break(1u);
          goto LABEL_26;
        }

        v4 = *(v7 + 8 * v10 + 32);
        sub_1D2870F78();
        v11 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_14;
        }
      }

      (*v16)(v6, *(v4 + 16) + *(**(v4 + 16) + 160), v3);
      v12 = _s23ImagePlaygroundInternal0A10GenerationV07PreviewA0V2eeoiySbAE_AEtFZ_0();
      (*v15)(v6, v3);
      if (v12)
      {
        sub_1D2879228();
        sub_1D2879268();
        sub_1D2879278();
        sub_1D2879238();
      }

      else
      {
      }

      ++v10;
      if (v11 == v8)
      {
        goto LABEL_15;
      }
    }
  }

  v13 = MEMORY[0x1E69E7CC0];
LABEL_17:

  if (v13 < 0 || (v13 & 0x4000000000000000) != 0)
  {
    if (!sub_1D2879368())
    {
      goto LABEL_24;
    }
  }

  else if (!*(v13 + 16))
  {
LABEL_24:

    return;
  }

  if ((v13 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1D38A1C30](0, v13);
    goto LABEL_23;
  }

  if (*(v13 + 16))
  {
    sub_1D2870F78();
LABEL_23:

    sub_1D25E3F68();
    goto LABEL_24;
  }

  __break(1u);
}

void sub_1D257AC10(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70, &qword_1D2881410);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v25 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60, &qword_1D28811F0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v25 - v7;
  if (*(v1 + 96))
  {
    v9 = sub_1D28785F8();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
    sub_1D2878568();
    sub_1D2870F78();
    v10 = v1;
    v11 = sub_1D2878558();
    v12 = swift_allocObject();
    v13 = MEMORY[0x1E69E85E0];
    v12[2] = v11;
    v12[3] = v13;
    v12[4] = v10;
    sub_1D22AE01C(0, 0, v8, &unk_1D2894828, v12);
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v15 = Strong;
      v16 = *(Strong + 56);
      v17 = *(*a1 + 160);
      if (*(v16 + OBJC_IVAR____TtC23ImagePlaygroundInternal24HomeAnimationCoordinator__transitionFlow))
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath);
        v25[-2] = v16;
        LOBYTE(v25[-1]) = 0;
        v25[1] = v16;
        sub_1D25838BC(&qword_1ED89FD50, type metadata accessor for HomeAnimationCoordinator, &unk_1D2897B40);
        sub_1D28719D8();
      }

      else
      {
        *(v16 + OBJC_IVAR____TtC23ImagePlaygroundInternal24HomeAnimationCoordinator__transitionFlow) = 0;
      }

      v19 = sub_1D2871818();
      v20 = *(v19 - 8);
      (*(v20 + 16))(v5, a1 + v17, v19);
      (*(v20 + 56))(v5, 0, 1, v19);
      sub_1D25E2EEC(v5);
      v21 = sub_1D28785F8();
      (*(*(v21 - 8) + 56))(v8, 1, 1, v21);
      sub_1D2878568();
      swift_unknownObjectRetain();
      sub_1D2870F78();
      v22 = sub_1D2878558();
      v23 = swift_allocObject();
      v24 = MEMORY[0x1E69E85E0];
      v23[2] = v22;
      v23[3] = v24;
      v23[4] = v15;
      v23[5] = a1;
      sub_1D22AE01C(0, 0, v8, &unk_1D2894858, v23);

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1D257B008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v4[7] = sub_1D2878568();
  v4[8] = sub_1D2878558();
  v5 = swift_task_alloc();
  v4[9] = v5;
  *v5 = v4;
  v5[1] = sub_1D257B0B8;

  return sub_1D2579574();
}

uint64_t sub_1D257B0B8(uint64_t a1)
{
  *(*v1 + 80) = a1;

  v3 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D2583AD4, v3, v2);
}

uint64_t sub_1D257B1FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v4[7] = sub_1D2878568();
  v4[8] = sub_1D2878558();
  v5 = swift_task_alloc();
  v4[9] = v5;
  *v5 = v4;
  v5[1] = sub_1D257B2AC;

  return sub_1D2579574();
}

uint64_t sub_1D257B2AC(uint64_t a1)
{
  *(*v1 + 80) = a1;

  v3 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D257B3F0, v3, v2);
}

uint64_t sub_1D257B3F0()
{
  v1 = v0[6];

  swift_getKeyPath();
  v0[5] = v1;
  sub_1D25838BC(&qword_1EC6D8690, type metadata accessor for PhotoGridViewModel, &protocol conformance descriptor for PhotoGridViewModel);
  sub_1D28719E8();

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = v0[10];
  if (Strong)
  {
    v4 = v0[6];
    v5 = *(v4 + 40);
    ObjectType = swift_getObjectType();
    (*(v5 + 8))(v4, v3, ObjectType, v5);
    swift_unknownObjectRelease();
  }

  v7 = v0[1];

  return v7();
}

void sub_1D257B540(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1D25838BC(&qword_1EC6D8690, type metadata accessor for PhotoGridViewModel, &protocol conformance descriptor for PhotoGridViewModel);
  sub_1D28719E8();

  v5 = *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__gridElementViewModels[0]);
  if (v5 >> 62)
  {
LABEL_25:
    v6 = sub_1D2879368();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1D2870F68();
  if (v6)
  {
    v7 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1D38A1C30](v7, v5);
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
LABEL_17:
          __break(1u);
          goto LABEL_18;
        }
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_25;
        }

        v8 = *(v5 + 8 * v7 + 32);
        sub_1D2870F78();
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_17;
        }
      }

      if (sub_1D28717B8() == a1 && v10 == a2)
      {
        break;
      }

      v12 = sub_1D2879618();

      if (v12)
      {
        goto LABEL_20;
      }

      ++v7;
      if (v9 == v6)
      {
        goto LABEL_18;
      }
    }

LABEL_20:

    if (*(v8 + 49) == 1)
    {
      *(v8 + 49) = 1;
      sub_1D2870F78();
      sub_1D25E4D94(1);
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1D25838BC(&qword_1EC6DDF98, type metadata accessor for PhotoGridElementViewModel, &unk_1D2897C98);
      sub_1D2870F78();
      sub_1D28719D8();
    }
  }

  else
  {
LABEL_18:
  }
}

void sub_1D257B83C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1D25838BC(&qword_1EC6D8690, type metadata accessor for PhotoGridViewModel, &protocol conformance descriptor for PhotoGridViewModel);
  sub_1D28719E8();

  v5 = *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__gridElementViewModels[0]);
  if (v5 >> 62)
  {
LABEL_25:
    v6 = sub_1D2879368();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1D2870F68();
  if (v6)
  {
    v7 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1D38A1C30](v7, v5);
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
LABEL_17:
          __break(1u);
          goto LABEL_18;
        }
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_25;
        }

        v8 = *(v5 + 8 * v7 + 32);
        sub_1D2870F78();
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_17;
        }
      }

      if (sub_1D28717B8() == a1 && v10 == a2)
      {
        break;
      }

      v12 = sub_1D2879618();

      if (v12)
      {
        goto LABEL_20;
      }

      ++v7;
      if (v9 == v6)
      {
        goto LABEL_18;
      }
    }

LABEL_20:

    if (*(v8 + 49))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1D25838BC(&qword_1EC6DDF98, type metadata accessor for PhotoGridElementViewModel, &unk_1D2897C98);
      sub_1D2870F78();
      sub_1D28719D8();
    }

    else
    {
      *(v8 + 49) = 0;
      sub_1D2870F78();
      sub_1D25E4D94(0);
    }
  }

  else
  {
LABEL_18:
  }
}

void sub_1D257BB30(uint64_t a1)
{
  v28 = sub_1D2871818();
  v3 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v27 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  if (v5)
  {
    v30 = "ImagePlaygroundGridViewDelete";
    v6 = *(v1 + 16);
    v29 = objc_opt_self();
    v7 = type metadata accessor for InputAnalyticsHelper();
    v26 = (v3 + 8);
    v8 = *MEMORY[0x1E69DDAC8];
    v24 = *MEMORY[0x1E69DDBC0];
    v25 = v8;
    do
    {
      swift_beginAccess();
      v10 = *(v6 + 16);
      if (*(v10 + 16) && (v11 = sub_1D25D0574(v7), (v12 & 1) != 0))
      {
        sub_1D22D7044(*(v10 + 56) + 40 * v11, &v32);
        swift_endAccess();
        sub_1D22D79FC(&v32, v31);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA520, &unk_1D28842B0);
        swift_dynamicCast();
      }

      else
      {
        swift_endAccess();
        v13 = swift_allocObject();
        *(v13 + 16) = 0;
        v14 = v27;
        sub_1D2871808();
        v15 = sub_1D28717B8();
        v17 = v16;
        (*v26)(v14, v28);
        *(v13 + 24) = v15;
        *(v13 + 32) = v17;
        *(v13 + 40) = 0;
        *(v13 + 48) = 0;
        v18 = objc_opt_self();
        v19 = [v18 defaultCenter];
        [v19 addObserver:v13 selector:sel_didEnterBackground name:v25 object:0];

        v20 = [v18 defaultCenter];
        [v20 addObserver:v13 selector:sel_didEnterForeground name:v24 object:0];

        v33 = v7;
        v34 = &off_1F4DC3E28;
        *&v32 = v13;
        swift_beginAccess();
        sub_1D2870F78();
        sub_1D25CDC34(&v32, v7);
        swift_endAccess();
      }

      v21 = sub_1D2878068();
      v22 = sub_1D2878068();
      v23 = sub_1D2878068();
      if (sub_1D2418030(MEMORY[0x1E69E7CC8]))
      {
        type metadata accessor for IAPayloadKey(0);
        sub_1D22BCFD0(0, &qword_1ED89CC48, 0x1E69E58C0);
        sub_1D25838BC(&qword_1ED89CDD0, type metadata accessor for IAPayloadKey, &unk_1D287E68C);
        v9 = sub_1D2877E78();
      }

      else
      {
        v9 = 0;
      }

      [v29 asyncSendSignal:v22 toChannel:v21 withNullableUniqueStringID:v23 withPayload:{v9, v24}];

      --v5;
    }

    while (v5);
  }
}

double sub_1D257BF28(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60, &qword_1D28811F0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v18 - v5;
  sub_1D23C7CA8();
  v7 = sub_1D2878068();
  v8 = sub_1D2878068();
  v9 = sub_1D25D7060(MEMORY[0x1E69E7CC0]);
  v10 = sub_1D2878068();
  v11 = sub_1D2418030(v9);

  if (v11)
  {
    type metadata accessor for IAPayloadKey(0);
    sub_1D22BCFD0(0, &qword_1ED89CC48, 0x1E69E58C0);
    sub_1D25838BC(&qword_1ED89CDD0, type metadata accessor for IAPayloadKey, &unk_1D287E68C);
    v12 = sub_1D2877E78();
  }

  else
  {
    v12 = 0;
  }

  [objc_opt_self() asyncSendSignal:v8 toChannel:v7 withNullableUniqueStringID:v10 withPayload:v12];

  v13 = sub_1D28785F8();
  (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
  sub_1D2878568();
  sub_1D2870F68();
  sub_1D2870F78();
  v14 = sub_1D2878558();
  v15 = swift_allocObject();
  v16 = MEMORY[0x1E69E85E0];
  v15[2] = v14;
  v15[3] = v16;
  v15[4] = a1;
  v15[5] = v2;
  sub_1D22AE01C(0, 0, v6, &unk_1D2894938, v15);

  return result;
}

uint64_t sub_1D257C1BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_1D2878568();
  v4[3] = sub_1D2878558();
  v6 = sub_1D28784F8();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D257C254, v6, v5);
}

uint64_t sub_1D257C254()
{
  if (qword_1EC6D8B40 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC6D8B50;
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_1D257C338;
  v3 = *(v0 + 16);

  return sub_1D27EE2BC(v3, v1);
}

uint64_t sub_1D257C338()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return MEMORY[0x1EEE6DFA0](sub_1D22ADFBC, v3, v2);
}

double sub_1D257C458(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60, &qword_1D28811F0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v15 - v5;
  v15[0] = sub_1D22BCFD0(0, &qword_1EC6D74E0, 0x1E6978630);
  v15[1] = &protocol witness table for PHAsset;
  swift_getKeyPath();
  v15[3] = a1;
  sub_1D2583618();
  sub_1D28719E8();

  v7 = *(a1 + *(*a1 + 208));
  type metadata accessor for FavoriteAssetOperation();
  v8 = swift_allocObject();
  *(v8 + 24) = a1;
  *(v8 + 32) = 0;
  *(v8 + 16) = (v7 & 1) == 0;
  v9 = *(v2 + 88);
  v10 = sub_1D28785F8();
  (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
  sub_1D2878568();
  swift_retain_n();
  swift_retain_n();
  sub_1D2870F78();
  v11 = sub_1D2878558();
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E85E0];
  *(v12 + 16) = v11;
  *(v12 + 24) = v13;
  *(v12 + 32) = v8;
  *(v12 + 40) = &off_1EEC2D558;
  *(v12 + 48) = 1;
  *(v12 + 56) = v9;
  *(v12 + 64) = sub_1D2583864;
  *(v12 + 72) = a1;
  sub_1D22AE01C(0, 0, v6, &unk_1D2894A90, v12);

  return result;
}

void sub_1D257C698(void *a1, uint64_t a2)
{
  v3 = sub_1D2873CB8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v7 = a1;
    sub_1D28724F8();
    v8 = a1;
    sub_1D2870F78();
    v9 = sub_1D2873CA8();
    v10 = sub_1D2878A18();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = v21;
      *v11 = 136315394;
      sub_1D2871818();
      sub_1D25838BC(&qword_1ED8A6C90, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v12 = sub_1D28795C8();
      v14 = sub_1D23D7C84(v12, v13, &v22);

      *(v11 + 4) = v14;
      *(v11 + 12) = 2112;
      v15 = a1;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 14) = v16;
      v17 = v20;
      *v20 = v16;
      _os_log_impl(&dword_1D226E000, v9, v10, "Failed to favorite asset: %s error: %@", v11, 0x16u);
      sub_1D22BD238(v17, qword_1EC6DA930, &qword_1D287E870);
      MEMORY[0x1D38A3520](v17, -1, -1);
      v18 = v21;
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x1D38A3520](v18, -1, -1);
      MEMORY[0x1D38A3520](v11, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
    if (qword_1EC6D8968 != -1)
    {
      swift_once();
    }

    sub_1D25428EC(a1);
  }
}

uint64_t PhotoGridViewModel.deinit()
{

  sub_1D22729C0(v0 + 32);
  sub_1D22729C0(v0 + 48);
  sub_1D22729C0(v0 + 64);

  sub_1D22BD238(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__suggestedSelectedAssetID, &qword_1EC6D8F70, &qword_1D2881410);

  sub_1D22BD238(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__gridScrollAssetID, &qword_1EC6D8F70, &qword_1D2881410);

  v1 = OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel___observationRegistrar;
  v2 = sub_1D2871A28();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t PhotoGridViewModel.__deallocating_deinit()
{
  PhotoGridViewModel.deinit();

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall PhotoGridViewModel.photoLibrary(didUpdate:)(Swift::OpaquePointer didUpdate)
{
  v3 = sub_1D2870F68();
  v6 = sub_1D2581A08(v3, sub_1D27D3200, sub_1D27507B8);
  sub_1D257D184(&v6);
  sub_1D2575914(v6);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v1 + 72);
    ObjectType = swift_getObjectType();
    (*(v4 + 8))(didUpdate._rawValue, ObjectType, v4);

    swift_unknownObjectRelease();
  }
}

uint64_t sub_1D257CBBC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D25838BC(&qword_1EC6DDFA0, type metadata accessor for PhotoGridElementContextualMenuViewModel, &unk_1D28979E0);
  sub_1D28719E8();

  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 32);
  *a2 = result;
  a2[1] = v5;
  return result;
}

double sub_1D257CC6C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1D25838BC(&qword_1EC6DDFA0, type metadata accessor for PhotoGridElementContextualMenuViewModel, &unk_1D28979E0);
  sub_1D28719D8();

  return result;
}

void sub_1D257CD3C(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D25838BC(&qword_1EC6DDF98, type metadata accessor for PhotoGridElementViewModel, &unk_1D2897C98);
  sub_1D28719E8();

  *a2 = *(v3 + 56);
}

void sub_1D257CE0C(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D25838BC(&qword_1EC6DDF98, type metadata accessor for PhotoGridElementViewModel, &unk_1D2897C98);
  sub_1D28719E8();

  *a2 = *(v3 + 64);
}

uint64_t sub_1D257CEDC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void), void (*a6)(unint64_t, uint64_t))
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v7 = sub_1D28793E8();
    v22 = v7;
    sub_1D2879358();
    for (; sub_1D2879388(); ++*(v22 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE550, &qword_1D2895E10);
      swift_dynamicCast();
      a5(0);
      swift_dynamicCast();
      v14 = *(v7 + 16);
      if (*(v7 + 24) <= v14)
      {
        a6(v14 + 1, 1);
      }

      v7 = v22;
      sub_1D28797D8();
      sub_1D2871818();
      sub_1D25838BC(&qword_1ED8A6CB0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      sub_1D2877F08();
      result = sub_1D2879828();
      v9 = v22 + 64;
      v10 = -1 << *(v22 + 32);
      v11 = result & ~v10;
      v12 = v11 >> 6;
      if (((-1 << v11) & ~*(v22 + 64 + 8 * (v11 >> 6))) != 0)
      {
        v13 = __clz(__rbit64((-1 << v11) & ~*(v22 + 64 + 8 * (v11 >> 6)))) | v11 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v15 = 0;
        v16 = (63 - v10) >> 6;
        do
        {
          if (++v12 == v16 && (v15 & 1) != 0)
          {
            __break(1u);
            return result;
          }

          v17 = v12 == v16;
          if (v12 == v16)
          {
            v12 = 0;
          }

          v15 |= v17;
          v18 = *(v9 + 8 * v12);
        }

        while (v18 == -1);
        v13 = __clz(__rbit64(~v18)) + (v12 << 6);
      }

      *(v9 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v22 + 48) + 8 * v13) = v21;
      *(*(v22 + 56) + 8 * v13) = v20;
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return v7;
}

uint64_t sub_1D257D184(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1D287015C(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1D257D450(v6);
  return sub_1D2879238();
}

uint64_t sub_1D257D200(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1D287015C(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v23[0] = v2 + 32;
  v23[1] = v4;
  v5 = sub_1D28795B8();
  if (v5 >= v4)
  {
    if (v4 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = (v2 + 32);
      v18 = v4;
      do
      {
        v20 = v9;
        v21 = v8;
        v11 = *(v2 + 32 + 8 * v9);
        v19 = v10;
        do
        {
          v12 = *v10;
          swift_getKeyPath();
          v22[0] = v11;
          sub_1D25838BC(&qword_1EC6DDF98, type metadata accessor for PhotoGridElementViewModel, &unk_1D2897C98);
          sub_1D2870F78();
          sub_1D2870F78();
          sub_1D28719E8();

          v13 = *(v11 + 56);
          swift_getKeyPath();
          v22[0] = v12;
          sub_1D28719E8();

          v14 = *(v12 + 56);

          if (v13 >= v14)
          {
            break;
          }

          v15 = *v10;
          v11 = v10[1];
          *v10 = v11;
          v10[1] = v15;
          --v10;
        }

        while (!__CFADD__(v8++, 1));
        v9 = v20 + 1;
        v10 = v19 + 1;
        v8 = v21 - 1;
      }

      while (v20 + 1 != v18);
    }
  }

  else
  {
    v6 = v5;
    if (v4 >= 2)
    {
      type metadata accessor for PhotoGridElementViewModel(0);
      v7 = sub_1D2878468();
      *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) = v4 >> 1;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v22[0] = ((v7 & 0xFFFFFFFFFFFFFF8) + 32);
    v22[1] = (v4 >> 1);
    sub_1D2580908(v22, v24, v23, v6);
    *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
  }

  return sub_1D2879238();
}

void sub_1D257D450(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1D28795B8();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE550, &qword_1D2895E10);
        v6 = sub_1D2878468();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_1D257E480(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1D257D560(0, v2, 1, a1);
  }
}

void sub_1D257D560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAE40, &unk_1D287EC70);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v120 = &v115 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v121 = &v115 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v125 = &v115 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v123 = &v115 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v131 = &v115 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v124 = &v115 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v128 = &v115 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v130 = &v115 - v23;
  v134 = sub_1D2871798();
  v24 = *(v134 - 8);
  MEMORY[0x1EEE9AC00](v134);
  v26 = &v115 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v127 = &v115 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v129 = &v115 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v132 = &v115 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v143 = &v115 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v142 = &v115 - v36;
  v116 = a2;
  if (a3 == a2)
  {
    return;
  }

  v37 = *a4;
  v38 = sub_1D22BCFD0(0, &qword_1EC6D74E0, 0x1E6978630);
  v149 = v38;
  v141 = (v24 + 16);
  v135 = (v24 + 56);
  v144 = (v24 + 48);
  v126 = (v24 + 32);
  v133 = v37;
  v39 = (v37 + 8 * a3 - 8);
  v40 = a1 - a3;
  v122 = v26;
  v140 = (v24 + 8);
LABEL_6:
  v119 = a3;
  v41 = *(v133 + 8 * a3);
  v117 = v40;
  v118 = v39;
  while (1)
  {
    v148 = v41;
    v145 = v39;
    v146 = v40;
    v42 = *v39;
    MEMORY[0x1EEE9AC00](v38);
    *(&v115 - 2) = v149;
    *(&v115 - 1) = &protocol witness table for PHAsset;
    swift_getKeyPath();
    v43 = *(*v41 + 224);
    v150 = v41;
    v44 = sub_1D2583618();
    sub_1D2870F78();
    sub_1D2870F78();
    v138 = v43;
    sub_1D28719E8();

    v45 = *(*v41 + 184);
    swift_beginAccess();
    v46 = *v141;
    v137 = v45;
    v47 = v41 + v45;
    v48 = v142;
    v49 = v134;
    v50 = v46(v142, v47, v134);
    MEMORY[0x1EEE9AC00](v50);
    *(&v115 - 2) = v149;
    *(&v115 - 1) = &protocol witness table for PHAsset;
    swift_getKeyPath();
    v51 = *(*v42 + 224);
    v150 = v42;
    v136 = v51;
    v147 = v44;
    sub_1D28719E8();

    v52 = *(*v42 + 184);
    swift_beginAccess();
    v53 = v143;
    v139 = v46;
    v46(v143, v42 + v52, v49);
    v54 = v140;
    v55 = sub_1D2871738();
    v56 = *v54;
    (*v54)(v53, v49);
    v57 = v48;
    v58 = v148;
    v59 = v56(v57, v49);
    if (v55)
    {
LABEL_30:

      v90 = v145;
      v91 = v146;
      goto LABEL_53;
    }

    MEMORY[0x1EEE9AC00](v59);
    *(&v115 - 2) = v149;
    *(&v115 - 1) = &protocol witness table for PHAsset;
    swift_getKeyPath();
    v150 = v58;
    sub_1D28719E8();

    v60 = v58 + v137;
    v61 = v142;
    v62 = v139;
    v63 = (v139)(v142, v60, v49);
    MEMORY[0x1EEE9AC00](v63);
    *(&v115 - 2) = v149;
    *(&v115 - 1) = &protocol witness table for PHAsset;
    swift_getKeyPath();
    v150 = v42;
    sub_1D28719E8();

    v64 = v42 + v52;
    v65 = v143;
    v62(v143, v64, v49);
    v66 = sub_1D2871748();
    v56(v65, v49);
    v67 = v56;
    v56(v61, v49);
    v68 = v148;
    if (v66)
    {
      goto LABEL_4;
    }

    v69 = v49;
    swift_beginAccess();
    v70 = v68[10];
    if (v70)
    {
      v71 = [v70 curationProperties];
      if (!v71)
      {
        goto LABEL_58;
      }

      v72 = v71;
      v73 = [v71 addedDate];

      v74 = v131;
      v75 = v129;
      if (v73)
      {
        v76 = v124;
        sub_1D2871768();

        v77 = 0;
      }

      else
      {
        v77 = 1;
        v76 = v124;
      }

      v147 = *v135;
      v147(v76, v77, 1, v69);
      v79 = v76;
      v78 = v130;
      sub_1D2583794(v79, v130);
      v80 = *v144;
      if ((*v144)(v78, 1, v69) != 1)
      {
        (*v126)(v132, v78, v69);
        goto LABEL_19;
      }
    }

    else
    {
      v78 = v130;
      v147 = *v135;
      v147(v130, 1, 1, v49);
      v74 = v131;
      v75 = v129;
    }

    sub_1D2871778();
    v80 = *v144;
    if ((*v144)(v78, 1, v69) != 1)
    {
      sub_1D22BD238(v78, &unk_1EC6DAE40, &unk_1D287EC70);
    }

LABEL_19:
    swift_beginAccess();
    v81 = v42[10];
    v139 = v80;
    if (v81)
    {
      v82 = [v81 curationProperties];
      if (!v82)
      {
        goto LABEL_59;
      }

      v83 = v82;
      v84 = [v82 addedDate];

      if (v84)
      {
        sub_1D2871768();

        v85 = 0;
      }

      else
      {
        v85 = 1;
      }

      v147(v74, v85, 1, v69);
      v87 = v74;
      v86 = v128;
      sub_1D2583794(v87, v128);
      v80 = v139;
      if (v139(v86, 1, v69) != 1)
      {
        (*v126)(v75, v86, v69);
        goto LABEL_29;
      }
    }

    else
    {
      v86 = v128;
      v147(v128, 1, 1, v69);
    }

    sub_1D2871778();
    if (v80(v86, 1, v69) != 1)
    {
      sub_1D22BD238(v86, &unk_1EC6DAE40, &unk_1D287EC70);
    }

LABEL_29:
    v88 = v132;
    v89 = sub_1D2871738();
    v67(v75, v69);
    v67(v88, v69);
    if (v89)
    {
      goto LABEL_30;
    }

    v92 = v68[10];
    if (v92)
    {
      v93 = [v92 curationProperties];
      v94 = v121;
      v95 = v134;
      if (!v93)
      {
        goto LABEL_60;
      }

      v96 = v93;
      v97 = [v93 addedDate];

      if (v97)
      {
        sub_1D2871768();

        v98 = 0;
      }

      else
      {
        v98 = 1;
      }

      v100 = v125;
      v147(v94, v98, 1, v95);
      v102 = v94;
      v99 = v123;
      sub_1D2583794(v102, v123);
      v101 = v139;
      if (v139(v99, 1, v95) != 1)
      {
        (*v126)(v127, v99, v95);
        v103 = v42[10];
        if (!v103)
        {
          goto LABEL_45;
        }

        goto LABEL_41;
      }
    }

    else
    {
      v99 = v123;
      v95 = v134;
      v147(v123, 1, 1, v134);
      v100 = v125;
      v101 = v139;
    }

    sub_1D2871778();
    if (v101(v99, 1, v95) != 1)
    {
      sub_1D22BD238(v99, &unk_1EC6DAE40, &unk_1D287EC70);
    }

    v103 = v42[10];
    if (!v103)
    {
LABEL_45:
      v147(v100, 1, 1, v95);
LABEL_48:
      v109 = v122;
      sub_1D2871778();
      if (v101(v100, 1, v95) != 1)
      {
        sub_1D22BD238(v100, &unk_1EC6DAE40, &unk_1D287EC70);
      }

      goto LABEL_51;
    }

LABEL_41:
    v104 = [v103 curationProperties];
    if (!v104)
    {
      goto LABEL_61;
    }

    v105 = v104;
    v106 = [v104 addedDate];

    if (v106)
    {
      v107 = v120;
      sub_1D2871768();

      v108 = 0;
    }

    else
    {
      v108 = 1;
      v107 = v120;
    }

    v100 = v125;
    v147(v107, v108, 1, v95);
    sub_1D2583794(v107, v100);
    v101 = v139;
    if (v139(v100, 1, v95) == 1)
    {
      goto LABEL_48;
    }

    v109 = v122;
    (*v126)(v122, v100, v95);
LABEL_51:
    v110 = v127;
    v111 = sub_1D2871748();
    v67(v109, v95);
    v67(v110, v95);
    if (v111)
    {
LABEL_4:

LABEL_5:
      a3 = v119 + 1;
      v39 = v118 + 1;
      v40 = v117 - 1;
      if (v119 + 1 == v116)
      {
        return;
      }

      goto LABEL_6;
    }

    v112 = MEMORY[0x1D389A250](v68 + *(*v68 + 160), v42 + *(*v42 + 160));

    v90 = v145;
    v91 = v146;
    if ((v112 & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_53:
    if (!v133)
    {
      break;
    }

    v113 = *v90;
    v41 = v90[1];
    *v90 = v41;
    v90[1] = v113;
    v39 = v90 - 1;
    v114 = __CFADD__(v91, 1);
    v40 = v91 + 1;
    if (v114)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
}

void sub_1D257E480(char **a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v311 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAE40, &unk_1D287EC70);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v321 = &v295 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v316 = &v295 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v320 = &v295 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v295 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v327 = &v295 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v322 = &v295 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v325 = &v295 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v328 = &v295 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v299 = &v295 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v300 = &v295 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v303 = &v295 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v302 = &v295 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v304 = &v295 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v305 = &v295 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v295 - v38;
  MEMORY[0x1EEE9AC00](v40);
  v309 = &v295 - v41;
  v42 = sub_1D2871798();
  MEMORY[0x1EEE9AC00](v42);
  MEMORY[0x1EEE9AC00](v43);
  v324 = &v295 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v326 = &v295 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v329 = &v295 - v48;
  MEMORY[0x1EEE9AC00](v49);
  MEMORY[0x1EEE9AC00](v50);
  v308 = &v295 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v295 - v53;
  MEMORY[0x1EEE9AC00](v55);
  v312 = &v295 - v56;
  MEMORY[0x1EEE9AC00](v57);
  v339 = &v295 - v58;
  MEMORY[0x1EEE9AC00](v59);
  v338 = &v295 - v64;
  v65 = a3[1];
  if (v65 < 1)
  {
    v67 = MEMORY[0x1E69E7CC0];
LABEL_192:
    v69 = *v311;
    if (!*v311)
    {
      goto LABEL_240;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_226:
      v67 = sub_1D269163C(v67);
    }

    v350 = v67;
    v290 = *(v67 + 16);
    if (v290 >= 2)
    {
      while (*a3)
      {
        v291 = *(v67 + 16 * v290);
        v292 = v67;
        v293 = *(v67 + 16 * (v290 - 1) + 32);
        v67 = *(v67 + 16 * (v290 - 1) + 40);
        sub_1D258110C((*a3 + 8 * v291), (*a3 + 8 * v293), (*a3 + 8 * v67), v69);
        if (v5)
        {
          goto LABEL_202;
        }

        if (v67 < v291)
        {
          goto LABEL_219;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v292 = sub_1D269163C(v292);
        }

        if (v290 - 2 >= *(v292 + 2))
        {
          goto LABEL_220;
        }

        v294 = &v292[16 * v290];
        *v294 = v291;
        *(v294 + 1) = v67;
        v350 = v292;
        sub_1D26915B0(v290 - 1);
        v67 = v350;
        v290 = *(v350 + 16);
        if (v290 <= 1)
        {
          goto LABEL_202;
        }
      }

      goto LABEL_234;
    }

LABEL_202:

    return;
  }

  v307 = v54;
  v301 = v63;
  v318 = v62;
  v66 = 0;
  v346 = (v61 + 16);
  v341 = (v61 + 8);
  v337 = (v61 + 56);
  v344 = (v61 + 48);
  v323 = (v61 + 32);
  v67 = MEMORY[0x1E69E7CC0];
  v306 = a4;
  v319 = v16;
  v310 = v39;
  v331 = v60;
  v295 = a3;
  while (1)
  {
    v69 = v66;
    v70 = v66 + 1;
    if (v66 + 1 >= v65)
    {
      goto LABEL_76;
    }

    v315 = v65;
    v71 = *a3;
    v72 = v66;
    v349 = *(*a3 + 8 * v70);
    v348 = *(v71 + 8 * v66);
    sub_1D2870F78();
    sub_1D2870F78();
    LODWORD(v314) = sub_1D2641BD4(&v349, &v348);
    if (v5)
    {

      return;
    }

    v70 = v72 + 2;
    v69 = v72;
    if (v72 + 2 < v315)
    {
      v297 = v67;
      v298 = 0;
      v73 = sub_1D22BCFD0(0, &qword_1EC6D74E0, 0x1E6978630);
      v296 = v72;
      v74 = (v71 + 8 * v72 + 16);
      v345 = v73;
      while (1)
      {
        v317 = v70;
        v76 = *(v74 - 1);
        v75 = *v74;
        v336 = v74;
        MEMORY[0x1EEE9AC00](v73);
        *(&v295 - 2) = v77;
        *(&v295 - 1) = &protocol witness table for PHAsset;
        swift_getKeyPath();
        v78 = *(*v75 + 224);
        v349 = v75;
        v347 = sub_1D2583618();
        sub_1D2870F78();
        sub_1D2870F78();
        v335 = v78;
        sub_1D28719E8();

        v79 = *(*v75 + 184);
        swift_beginAccess();
        v80 = *v346;
        v343 = v75;
        v334 = v79;
        v81 = v75 + v79;
        v82 = v338;
        v83 = v331;
        v84 = (v80)(v338, v81, v331);
        MEMORY[0x1EEE9AC00](v84);
        *(&v295 - 2) = v345;
        *(&v295 - 1) = &protocol witness table for PHAsset;
        swift_getKeyPath();
        v85 = *(*v76 + 224);
        v349 = v76;
        v333 = v85;
        sub_1D28719E8();

        v86 = *(*v76 + 184);
        swift_beginAccess();
        v342 = v76;
        v332 = v86;
        v87 = v76 + v86;
        v88 = v345;
        v89 = v339;
        v340 = v80;
        (v80)(v339, v87, v83);
        v90 = sub_1D2871738();
        v91 = *v341;
        (*v341)(v89, v83);
        v92 = v82;
        v93 = v82;
        v94 = v83;
        v95 = (v91)(v93, v83);
        if (v90)
        {

          v70 = v317;
          v73 = v88;
          if ((v314 & 1) == 0)
          {
            goto LABEL_75;
          }

          goto LABEL_10;
        }

        MEMORY[0x1EEE9AC00](v95);
        *(&v295 - 2) = v88;
        *(&v295 - 1) = &protocol witness table for PHAsset;
        swift_getKeyPath();
        v330 = v91;
        v96 = v343;
        v349 = v343;
        sub_1D28719E8();

        v97 = (v340)(v92, v96 + v334, v94);
        MEMORY[0x1EEE9AC00](v97);
        *(&v295 - 2) = v88;
        *(&v295 - 1) = &protocol witness table for PHAsset;
        swift_getKeyPath();
        v98 = v342;
        v349 = v342;
        sub_1D28719E8();
        v99 = v330;

        (v340)(v89, v98 + v332, v94);
        v100 = sub_1D2871748();
        v99(v89, v94);
        v99(v92, v94);
        v101 = v98;
        if ((v100 & 1) == 0)
        {
          break;
        }

        v70 = v317;
LABEL_14:
        v73 = v345;
        if (v314)
        {
          v5 = v298;
          a3 = v295;
          a4 = v306;
          v67 = v297;
          v69 = v296;
          if (v70 < v296)
          {
LABEL_225:
            __break(1u);
            goto LABEL_226;
          }

LABEL_68:
          if (v69 < v70)
          {
            v152 = 8 * v70 - 8;
            v153 = 8 * v69;
            v154 = v70;
            v155 = v69;
            do
            {
              if (v155 != --v154)
              {
                v157 = *a3;
                if (!*a3)
                {
                  goto LABEL_233;
                }

                v156 = *(v157 + v153);
                *(v157 + v153) = *(v157 + v152);
                *(v157 + v152) = v156;
              }

              ++v155;
              v152 -= 8;
              v153 += 8;
            }

            while (v155 < v154);
          }

          goto LABEL_76;
        }

LABEL_10:
        ++v70;
        v74 = v336 + 1;
        if (v315 == v70)
        {
          v70 = v315;
LABEL_65:
          v5 = v298;
          a3 = v295;
          a4 = v306;
          v67 = v297;
          v69 = v296;
          goto LABEL_66;
        }
      }

      v102 = v343;
      swift_beginAccess();
      v103 = v102;
      v104 = *(v102 + 80);
      if (v104)
      {
        v105 = [v104 curationProperties];
        if (!v105)
        {
          goto LABEL_236;
        }

        v106 = v105;
        v107 = [v105 addedDate];

        if (v107)
        {
          v108 = v305;
          sub_1D2871768();

          v109 = 0;
        }

        else
        {
          v109 = 1;
          v108 = v305;
        }

        v111 = v309;
        v112 = *v337;
        (*v337)(v108, v109, 1, v94);
        sub_1D2583794(v108, v111);
        v113 = *v344;
        if ((*v344)(v111, 1, v94) != 1)
        {
          (*v323)(v312, v111, v94);
          v110 = v112;
          goto LABEL_27;
        }

        v110 = v112;
      }

      else
      {
        v110 = *v337;
        v111 = v309;
        (*v337)(v309, 1, 1, v94);
      }

      sub_1D2871778();
      v113 = *v344;
      if ((*v344)(v111, 1, v94) != 1)
      {
        sub_1D22BD238(v111, &unk_1EC6DAE40, &unk_1D287EC70);
      }

LABEL_27:
      swift_beginAccess();
      v114 = v101[10];
      if (v114)
      {
        v115 = [v114 curationProperties];
        if (!v115)
        {
          goto LABEL_237;
        }

        v116 = v115;
        v117 = v103;
        v118 = [v115 addedDate];

        if (v118)
        {
          v119 = v304;
          sub_1D2871768();

          v120 = 0;
        }

        else
        {
          v120 = 1;
          v119 = v304;
        }

        v122 = v331;
        v110(v119, v120, 1, v331);
        v123 = v119;
        v121 = v310;
        sub_1D2583794(v123, v310);
        if (v113(v121, 1, v122) != 1)
        {
          v124 = v307;
          (*v323)(v307, v121, v122);
          goto LABEL_37;
        }
      }

      else
      {
        v121 = v310;
        v122 = v331;
        v110(v310, 1, 1, v331);
        v117 = v103;
      }

      v124 = v307;
      sub_1D2871778();
      if (v113(v121, 1, v122) != 1)
      {
        sub_1D22BD238(v310, &unk_1EC6DAE40, &unk_1D287EC70);
      }

LABEL_37:
      v125 = v312;
      v126 = sub_1D2871738();
      v127 = v330;
      v330(v124, v122);
      v127(v125, v122);
      if (v126)
      {

        v70 = v317;
        v73 = v345;
        if ((v314 & 1) == 0)
        {
LABEL_75:
          v5 = v298;
          a3 = v295;
          a4 = v306;
          v67 = v297;
          v69 = v296;
          goto LABEL_76;
        }

        goto LABEL_10;
      }

      v128 = v117[10];
      v70 = v317;
      if (v128)
      {
        v129 = [v128 curationProperties];
        v130 = v303;
        if (!v129)
        {
          goto LABEL_238;
        }

        v131 = v129;
        v132 = [v129 addedDate];

        if (v132)
        {
          v133 = v300;
          sub_1D2871768();

          v134 = 0;
        }

        else
        {
          v134 = 1;
          v133 = v300;
        }

        v136 = v331;
        v110(v133, v134, 1, v331);
        v137 = v133;
        v135 = v302;
        sub_1D2583794(v137, v302);
        if (v113(v135, 1, v136) != 1)
        {
          (*v323)(v308, v135, v136);
          goto LABEL_50;
        }
      }

      else
      {
        v135 = v302;
        v136 = v331;
        v110(v302, 1, 1, v331);
        v130 = v303;
      }

      sub_1D2871778();
      if (v113(v135, 1, v136) != 1)
      {
        sub_1D22BD238(v135, &unk_1EC6DAE40, &unk_1D287EC70);
      }

LABEL_50:
      v138 = v342[10];
      if (v138)
      {
        v139 = [v138 curationProperties];
        if (!v139)
        {
          goto LABEL_239;
        }

        v140 = v139;
        v141 = [v139 addedDate];

        if (v141)
        {
          v142 = v299;
          sub_1D2871768();

          v143 = 0;
        }

        else
        {
          v143 = 1;
          v142 = v299;
        }

        v144 = v331;
        v110(v142, v143, 1, v331);
        sub_1D2583794(v142, v130);
        if (v113(v130, 1, v144) != 1)
        {
          v145 = v301;
          (*v323)(v301, v130, v144);
          v146 = v144;
LABEL_60:
          v147 = v308;
          v148 = sub_1D2871748();
          v149 = v145;
          v150 = v330;
          v330(v149, v146);
          v150(v147, v146);
          if ((v148 & 1) == 0)
          {
            v151 = MEMORY[0x1D389A250](v117 + *(*v117 + 160), v342 + *(*v342 + 160));

            v73 = v345;
            if ((v314 ^ v151))
            {
              goto LABEL_65;
            }

            goto LABEL_10;
          }

          goto LABEL_14;
        }
      }

      else
      {
        v144 = v331;
        v110(v130, 1, 1, v331);
      }

      v145 = v301;
      sub_1D2871778();
      v146 = v144;
      if (v113(v130, 1, v144) != 1)
      {
        sub_1D22BD238(v130, &unk_1EC6DAE40, &unk_1D287EC70);
      }

      goto LABEL_60;
    }

LABEL_66:
    if (v314)
    {
      if (v70 < v69)
      {
        goto LABEL_225;
      }

      goto LABEL_68;
    }

LABEL_76:
    v158 = a3[1];
    if (v70 < v158)
    {
      if (__OFSUB__(v70, v69))
      {
        goto LABEL_222;
      }

      if (v70 - v69 < a4)
      {
        break;
      }
    }

LABEL_139:
    if (v70 < v69)
    {
      goto LABEL_221;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v67 = sub_1D2691650(0, *(v67 + 16) + 1, 1, v67);
    }

    v244 = *(v67 + 16);
    v243 = *(v67 + 24);
    v245 = v244 + 1;
    if (v244 >= v243 >> 1)
    {
      v67 = sub_1D2691650((v243 > 1), v244 + 1, 1, v67);
    }

    *(v67 + 16) = v245;
    v246 = v67 + 16 * v244;
    *(v246 + 32) = v69;
    *(v246 + 40) = v70;
    v247 = *v311;
    if (!*v311)
    {
      goto LABEL_235;
    }

    v248 = v70;
    if (v244)
    {
      while (1)
      {
        v249 = v245 - 1;
        if (v245 >= 4)
        {
          break;
        }

        if (v245 == 3)
        {
          v250 = *(v67 + 32);
          v251 = *(v67 + 40);
          v260 = __OFSUB__(v251, v250);
          v252 = v251 - v250;
          v253 = v260;
LABEL_159:
          if (v253)
          {
            goto LABEL_210;
          }

          v266 = (v67 + 16 * v245);
          v268 = *v266;
          v267 = v266[1];
          v269 = __OFSUB__(v267, v268);
          v270 = v267 - v268;
          v271 = v269;
          if (v269)
          {
            goto LABEL_213;
          }

          v272 = (v67 + 32 + 16 * v249);
          v274 = *v272;
          v273 = v272[1];
          v260 = __OFSUB__(v273, v274);
          v275 = v273 - v274;
          if (v260)
          {
            goto LABEL_216;
          }

          if (__OFADD__(v270, v275))
          {
            goto LABEL_217;
          }

          if (v270 + v275 >= v252)
          {
            if (v252 < v275)
            {
              v249 = v245 - 2;
            }

            goto LABEL_180;
          }

          goto LABEL_173;
        }

        v276 = (v67 + 16 * v245);
        v278 = *v276;
        v277 = v276[1];
        v260 = __OFSUB__(v277, v278);
        v270 = v277 - v278;
        v271 = v260;
LABEL_173:
        if (v271)
        {
          goto LABEL_212;
        }

        v279 = v67 + 16 * v249;
        v281 = *(v279 + 32);
        v280 = *(v279 + 40);
        v260 = __OFSUB__(v280, v281);
        v282 = v280 - v281;
        if (v260)
        {
          goto LABEL_215;
        }

        if (v282 < v270)
        {
          goto LABEL_3;
        }

LABEL_180:
        v287 = v249 - 1;
        if (v249 - 1 >= v245)
        {
          __break(1u);
LABEL_206:
          __break(1u);
LABEL_207:
          __break(1u);
LABEL_208:
          __break(1u);
LABEL_209:
          __break(1u);
LABEL_210:
          __break(1u);
LABEL_211:
          __break(1u);
LABEL_212:
          __break(1u);
LABEL_213:
          __break(1u);
LABEL_214:
          __break(1u);
LABEL_215:
          __break(1u);
LABEL_216:
          __break(1u);
LABEL_217:
          __break(1u);
LABEL_218:
          __break(1u);
LABEL_219:
          __break(1u);
LABEL_220:
          __break(1u);
LABEL_221:
          __break(1u);
LABEL_222:
          __break(1u);
LABEL_223:
          __break(1u);
          goto LABEL_224;
        }

        if (!*a3)
        {
          goto LABEL_232;
        }

        v288 = *(v67 + 32 + 16 * v287);
        v69 = *(v67 + 32 + 16 * v249 + 8);
        sub_1D258110C((*a3 + 8 * v288), (*a3 + 8 * *(v67 + 32 + 16 * v249)), (*a3 + 8 * v69), v247);
        if (v5)
        {
          goto LABEL_202;
        }

        if (v69 < v288)
        {
          goto LABEL_206;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v67 = sub_1D269163C(v67);
        }

        if (v287 >= *(v67 + 16))
        {
          goto LABEL_207;
        }

        v289 = v67 + 16 * v287;
        *(v289 + 32) = v288;
        *(v289 + 40) = v69;
        v350 = v67;
        sub_1D26915B0(v249);
        v67 = v350;
        v245 = *(v350 + 16);
        if (v245 <= 1)
        {
          goto LABEL_3;
        }
      }

      v254 = v67 + 32 + 16 * v245;
      v255 = *(v254 - 64);
      v256 = *(v254 - 56);
      v260 = __OFSUB__(v256, v255);
      v257 = v256 - v255;
      if (v260)
      {
        goto LABEL_208;
      }

      v259 = *(v254 - 48);
      v258 = *(v254 - 40);
      v260 = __OFSUB__(v258, v259);
      v252 = v258 - v259;
      v253 = v260;
      if (v260)
      {
        goto LABEL_209;
      }

      v261 = (v67 + 16 * v245);
      v263 = *v261;
      v262 = v261[1];
      v260 = __OFSUB__(v262, v263);
      v264 = v262 - v263;
      if (v260)
      {
        goto LABEL_211;
      }

      v260 = __OFADD__(v252, v264);
      v265 = v252 + v264;
      if (v260)
      {
        goto LABEL_214;
      }

      if (v265 >= v257)
      {
        v283 = (v67 + 32 + 16 * v249);
        v285 = *v283;
        v284 = v283[1];
        v260 = __OFSUB__(v284, v285);
        v286 = v284 - v285;
        if (v260)
        {
          goto LABEL_218;
        }

        if (v252 < v286)
        {
          v249 = v245 - 2;
        }

        goto LABEL_180;
      }

      goto LABEL_159;
    }

LABEL_3:
    v65 = a3[1];
    v66 = v248;
    v68 = v248 < v65;
    a4 = v306;
    if (!v68)
    {
      goto LABEL_192;
    }
  }

  if (__OFADD__(v69, a4))
  {
    goto LABEL_223;
  }

  if (v69 + a4 >= v158)
  {
    v159 = a3[1];
  }

  else
  {
    v159 = (v69 + a4);
  }

  if (v159 < v69)
  {
LABEL_224:
    __break(1u);
    goto LABEL_225;
  }

  if (v70 == v159)
  {
    goto LABEL_139;
  }

  v297 = v67;
  v298 = v5;
  v160 = *a3;
  v161 = sub_1D22BCFD0(0, &qword_1EC6D74E0, 0x1E6978630);
  v336 = v161;
  v330 = v160;
  v162 = v160 + 8 * v70 - 8;
  v296 = v69;
  v163 = (v69 - v70);
  v313 = v159;
LABEL_88:
  v317 = v70;
  v164 = v163;
  v165 = *(v330 + v70);
  v314 = v163;
  v315 = v162;
  v166 = v162;
  while (1)
  {
    v347 = v165;
    v343 = v164;
    v342 = v166;
    v167 = *v166;
    MEMORY[0x1EEE9AC00](v161);
    v168 = v336;
    *(&v295 - 2) = v336;
    *(&v295 - 1) = &protocol witness table for PHAsset;
    swift_getKeyPath();
    v169 = *(*v165 + 224);
    v349 = v165;
    v170 = sub_1D2583618();
    sub_1D2870F78();
    sub_1D2870F78();
    v334 = v169;
    sub_1D28719E8();

    v171 = *(*v165 + 184);
    swift_beginAccess();
    v172 = *v346;
    v333 = v171;
    v173 = v165 + v171;
    v174 = v338;
    v175 = v331;
    v176 = (v172)(v338, v173, v331);
    MEMORY[0x1EEE9AC00](v176);
    *(&v295 - 2) = v168;
    *(&v295 - 1) = &protocol witness table for PHAsset;
    swift_getKeyPath();
    v177 = *(*v167 + 224);
    v349 = v167;
    v332 = v177;
    v345 = v170;
    sub_1D28719E8();

    v178 = *(*v167 + 184);
    swift_beginAccess();
    v179 = v339;
    v335 = v172;
    (v172)(v339, v167 + v178, v175);
    LOBYTE(v171) = sub_1D2871738();
    v180 = *v341;
    (*v341)(v179, v175);
    v181 = v347;
    v182 = (v180)(v174, v175);
    if (v171)
    {
LABEL_112:

      goto LABEL_135;
    }

    MEMORY[0x1EEE9AC00](v182);
    v340 = v180;
    v183 = v336;
    *(&v295 - 2) = v336;
    *(&v295 - 1) = &protocol witness table for PHAsset;
    swift_getKeyPath();
    v349 = v181;
    sub_1D28719E8();

    v184 = v181 + v333;
    v185 = v338;
    v186 = v335;
    v187 = (v335)(v338, v184, v175);
    MEMORY[0x1EEE9AC00](v187);
    *(&v295 - 2) = v183;
    *(&v295 - 1) = &protocol witness table for PHAsset;
    swift_getKeyPath();
    v349 = v167;
    sub_1D28719E8();

    v188 = v339;
    v186(v339, v167 + v178, v175);
    v189 = sub_1D2871748();
    v190 = v188;
    v191 = v340;
    v340(v190, v175);
    v191(v185, v175);
    v192 = v347;
    if (v189)
    {
      goto LABEL_86;
    }

    swift_beginAccess();
    v193 = v192[10];
    v194 = v328;
    v345 = v167;
    if (v193)
    {
      v195 = [v193 curationProperties];
      if (!v195)
      {
        goto LABEL_229;
      }

      v196 = v195;
      v197 = [v195 addedDate];

      v198 = v327;
      v199 = v322;
      if (v197)
      {
        sub_1D2871768();

        v200 = 0;
      }

      else
      {
        v200 = 1;
      }

      v201 = *v337;
      (*v337)(v199, v200, 1, v175);
      sub_1D2583794(v199, v194);
      v202 = *v344;
      if ((*v344)(v194, 1, v175) != 1)
      {
        (*v323)(v329, v194, v175);
        goto LABEL_101;
      }
    }

    else
    {
      v201 = *v337;
      (*v337)(v328, 1, 1, v175);
      v198 = v327;
    }

    sub_1D2871778();
    v202 = *v344;
    if ((*v344)(v194, 1, v175) != 1)
    {
      sub_1D22BD238(v194, &unk_1EC6DAE40, &unk_1D287EC70);
    }

LABEL_101:
    v203 = v326;
    v204 = v345;
    swift_beginAccess();
    v205 = v204[10];
    v335 = v202;
    if (v205)
    {
      v206 = [v205 curationProperties];
      if (!v206)
      {
        goto LABEL_228;
      }

      v207 = v206;
      v208 = [v206 addedDate];

      if (v208)
      {
        sub_1D2871768();

        v209 = 0;
      }

      else
      {
        v209 = 1;
      }

      v211 = v201;
      v201(v198, v209, 1, v175);
      v212 = v198;
      v210 = v325;
      sub_1D2583794(v212, v325);
      v202 = v335;
      if (v335(v210, 1, v175) != 1)
      {
        (*v323)(v203, v210, v175);
        goto LABEL_111;
      }
    }

    else
    {
      v210 = v325;
      v211 = v201;
      v201(v325, 1, 1, v175);
    }

    sub_1D2871778();
    if (v202(v210, 1, v175) != 1)
    {
      sub_1D22BD238(v210, &unk_1EC6DAE40, &unk_1D287EC70);
    }

LABEL_111:
    v213 = v329;
    v214 = sub_1D2871738();
    v215 = v340;
    v340(v203, v175);
    v215(v213, v175);
    if (v214)
    {
      goto LABEL_112;
    }

    v216 = v192[10];
    if (v216)
    {
      v217 = [v216 curationProperties];
      v218 = v321;
      v219 = v316;
      v220 = v319;
      v221 = v331;
      if (!v217)
      {
        goto LABEL_230;
      }

      v222 = v217;
      v223 = [v217 addedDate];

      if (v223)
      {
        sub_1D2871768();

        v224 = 0;
      }

      else
      {
        v224 = 1;
      }

      v211(v219, v224, 1, v221);
      sub_1D2583794(v219, v220);
      v225 = v335;
      if (v335(v220, 1, v221) != 1)
      {
        (*v323)(v324, v220, v221);
        v227 = v320;
        goto LABEL_123;
      }
    }

    else
    {
      v220 = v319;
      v221 = v331;
      v211(v319, 1, 1, v331);
      v218 = v321;
      v225 = v335;
    }

    sub_1D2871778();
    v226 = v225(v220, 1, v221);
    v227 = v320;
    if (v226 != 1)
    {
      sub_1D22BD238(v220, &unk_1EC6DAE40, &unk_1D287EC70);
    }

LABEL_123:
    v228 = v345[10];
    if (!v228)
    {
      v211(v227, 1, 1, v221);
      v230 = v318;
LABEL_130:
      sub_1D2871778();
      v234 = v225(v227, 1, v221);
      v235 = v345;
      if (v234 != 1)
      {
        sub_1D22BD238(v227, &unk_1EC6DAE40, &unk_1D287EC70);
      }

      goto LABEL_133;
    }

    v229 = [v228 curationProperties];
    v230 = v318;
    if (!v229)
    {
      goto LABEL_231;
    }

    v231 = v229;
    v232 = [v229 addedDate];

    if (v232)
    {
      sub_1D2871768();

      v233 = 0;
    }

    else
    {
      v233 = 1;
    }

    v211(v218, v233, 1, v221);
    sub_1D2583794(v218, v227);
    v225 = v335;
    if (v335(v227, 1, v221) == 1)
    {
      goto LABEL_130;
    }

    (*v323)(v230, v227, v221);
    v235 = v345;
LABEL_133:
    v236 = v324;
    v237 = sub_1D2871748();
    v238 = v340;
    v340(v230, v221);
    v238(v236, v221);
    if (v237)
    {
LABEL_86:

LABEL_87:
      v70 = v317 + 1;
      v162 = v315 + 8;
      v163 = v314 - 1;
      if ((v317 + 1) == v313)
      {
        v70 = v313;
        v5 = v298;
        a3 = v295;
        v67 = v297;
        v69 = v296;
        goto LABEL_139;
      }

      goto LABEL_88;
    }

    v239 = MEMORY[0x1D389A250](v192 + *(*v192 + 160), v235 + *(*v235 + 160));

    if ((v239 & 1) == 0)
    {
      goto LABEL_87;
    }

LABEL_135:
    v240 = v343;
    if (!v330)
    {
      break;
    }

    v241 = v342;
    v242 = *v342;
    v165 = v342[1];
    *v342 = v165;
    v241[1] = v242;
    v166 = v241 - 1;
    v164 = v240 + 1;
    if (v240 == -1)
    {
      goto LABEL_87;
    }
  }

  __break(1u);
LABEL_228:
  __break(1u);
LABEL_229:
  __break(1u);
LABEL_230:
  __break(1u);
LABEL_231:
  __break(1u);
LABEL_232:
  __break(1u);
LABEL_233:
  __break(1u);
LABEL_234:
  __break(1u);
LABEL_235:
  __break(1u);
LABEL_236:
  __break(1u);
LABEL_237:
  __break(1u);
LABEL_238:
  __break(1u);
LABEL_239:
  __break(1u);
LABEL_240:
  __break(1u);
}

void sub_1D2580908(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = a1;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v9 = *v7;
    if (!*v7)
    {
      goto LABEL_126;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_120:
      v10 = sub_1D269163C(v10);
    }

    v85 = *(v10 + 2);
    if (v85 >= 2)
    {
      while (*v6)
      {
        v86 = *&v10[16 * v85];
        v87 = *&v10[16 * v85 + 24];
        sub_1D25814A4((*v6 + 8 * v86), (*v6 + 8 * *&v10[16 * v85 + 16]), (*v6 + 8 * v87), v9);
        if (v5)
        {
          goto LABEL_98;
        }

        if (v87 < v86)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1D269163C(v10);
        }

        if (v85 - 2 >= *(v10 + 2))
        {
          goto LABEL_114;
        }

        v88 = &v10[16 * v85];
        *v88 = v86;
        *(v88 + 1) = v87;
        sub_1D26915B0(v85 - 1);
        v85 = *(v10 + 2);
        if (v85 <= 1)
        {
          goto LABEL_98;
        }
      }

      goto LABEL_124;
    }

LABEL_98:

    return;
  }

  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v11 = v9++;
    v96 = v11;
    if (v9 < v8)
    {
      v98 = v8;
      v92 = v10;
      v93 = v5;
      v12 = *(*v6 + 8 * v9);
      v91 = 8 * v11;
      v13 = (*v6 + 8 * v11);
      v15 = *v13;
      v14 = v13 + 2;
      swift_getKeyPath();
      sub_1D25838BC(&qword_1EC6DDF98, type metadata accessor for PhotoGridElementViewModel, &unk_1D2897C98);
      sub_1D2870F78();
      sub_1D2870F78();
      sub_1D28719E8();

      v102 = *(v12 + 56);
      swift_getKeyPath();
      sub_1D28719E8();

      v100 = *(v15 + 56);

      v16 = (v11 + 2);
      while (1)
      {
        v9 = v98;
        if (v98 == v16)
        {
          break;
        }

        v18 = *(v14 - 1);
        v17 = *v14;
        swift_getKeyPath();
        sub_1D2870F78();
        sub_1D2870F78();
        sub_1D28719E8();

        v19 = *(v17 + 56);
        swift_getKeyPath();
        sub_1D28719E8();

        v20 = *(v18 + 56);

        ++v16;
        ++v14;
        if (v102 < v100 == v19 >= v20)
        {
          v9 = (v16 - 1);
          break;
        }
      }

      v10 = v92;
      v5 = v93;
      v6 = a3;
      v21 = v91;
      v7 = a1;
      if (v102 < v100)
      {
        v22 = v96;
        if (v9 < v96)
        {
          goto LABEL_117;
        }

        if (v96 < v9)
        {
          v23 = 8 * v9 - 8;
          v24 = v9;
          do
          {
            if (v22 != --v24)
            {
              v26 = *a3;
              if (!*a3)
              {
                goto LABEL_123;
              }

              v25 = *(v26 + v21);
              *(v26 + v21) = *(v26 + v23);
              *(v26 + v23) = v25;
            }

            ++v22;
            v23 -= 8;
            v21 += 8;
          }

          while (v22 < v24);
        }
      }
    }

    v27 = v6[1];
    if (v9 >= v27)
    {
      goto LABEL_36;
    }

    if (__OFSUB__(v9, v96))
    {
      goto LABEL_116;
    }

    if (v9 - v96 >= a4)
    {
LABEL_36:
      v29 = v96;
      goto LABEL_37;
    }

    if (__OFADD__(v96, a4))
    {
      goto LABEL_118;
    }

    if (v96 + a4 >= v27)
    {
      v28 = v6[1];
    }

    else
    {
      v28 = (v96 + a4);
    }

    if (v28 < v96)
    {
LABEL_119:
      __break(1u);
      goto LABEL_120;
    }

    v29 = v96;
    if (v9 != v28)
    {
      break;
    }

LABEL_37:
    if (v9 < v29)
    {
      goto LABEL_115;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_1D2691650(0, *(v10 + 2) + 1, 1, v10);
    }

    v39 = *(v10 + 2);
    v38 = *(v10 + 3);
    v40 = v39 + 1;
    if (v39 >= v38 >> 1)
    {
      v10 = sub_1D2691650((v38 > 1), v39 + 1, 1, v10);
    }

    *(v10 + 2) = v40;
    v41 = &v10[16 * v39];
    *(v41 + 4) = v96;
    *(v41 + 5) = v9;
    v42 = *v7;
    if (!*v7)
    {
      goto LABEL_125;
    }

    if (v39)
    {
      while (1)
      {
        v43 = v40 - 1;
        if (v40 >= 4)
        {
          break;
        }

        if (v40 == 3)
        {
          v44 = *(v10 + 4);
          v45 = *(v10 + 5);
          v54 = __OFSUB__(v45, v44);
          v46 = v45 - v44;
          v47 = v54;
LABEL_57:
          if (v47)
          {
            goto LABEL_104;
          }

          v60 = &v10[16 * v40];
          v62 = *v60;
          v61 = *(v60 + 1);
          v63 = __OFSUB__(v61, v62);
          v64 = v61 - v62;
          v65 = v63;
          if (v63)
          {
            goto LABEL_107;
          }

          v66 = &v10[16 * v43 + 32];
          v68 = *v66;
          v67 = *(v66 + 1);
          v54 = __OFSUB__(v67, v68);
          v69 = v67 - v68;
          if (v54)
          {
            goto LABEL_110;
          }

          if (__OFADD__(v64, v69))
          {
            goto LABEL_111;
          }

          if (v64 + v69 >= v46)
          {
            if (v46 < v69)
            {
              v43 = v40 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v70 = &v10[16 * v40];
        v72 = *v70;
        v71 = *(v70 + 1);
        v54 = __OFSUB__(v71, v72);
        v64 = v71 - v72;
        v65 = v54;
LABEL_71:
        if (v65)
        {
          goto LABEL_106;
        }

        v73 = &v10[16 * v43];
        v75 = *(v73 + 4);
        v74 = *(v73 + 5);
        v54 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v54)
        {
          goto LABEL_109;
        }

        if (v76 < v64)
        {
          goto LABEL_3;
        }

LABEL_78:
        v81 = v43 - 1;
        if (v43 - 1 >= v40)
        {
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
          goto LABEL_119;
        }

        if (!*v6)
        {
          goto LABEL_122;
        }

        v82 = *&v10[16 * v81 + 32];
        v83 = *&v10[16 * v43 + 40];
        sub_1D25814A4((*v6 + 8 * v82), (*v6 + 8 * *&v10[16 * v43 + 32]), (*v6 + 8 * v83), v42);
        if (v5)
        {
          goto LABEL_98;
        }

        if (v83 < v82)
        {
          goto LABEL_100;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1D269163C(v10);
        }

        if (v81 >= *(v10 + 2))
        {
          goto LABEL_101;
        }

        v84 = &v10[16 * v81];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        sub_1D26915B0(v43);
        v40 = *(v10 + 2);
        if (v40 <= 1)
        {
          goto LABEL_3;
        }
      }

      v48 = &v10[16 * v40 + 32];
      v49 = *(v48 - 64);
      v50 = *(v48 - 56);
      v54 = __OFSUB__(v50, v49);
      v51 = v50 - v49;
      if (v54)
      {
        goto LABEL_102;
      }

      v53 = *(v48 - 48);
      v52 = *(v48 - 40);
      v54 = __OFSUB__(v52, v53);
      v46 = v52 - v53;
      v47 = v54;
      if (v54)
      {
        goto LABEL_103;
      }

      v55 = &v10[16 * v40];
      v57 = *v55;
      v56 = *(v55 + 1);
      v54 = __OFSUB__(v56, v57);
      v58 = v56 - v57;
      if (v54)
      {
        goto LABEL_105;
      }

      v54 = __OFADD__(v46, v58);
      v59 = v46 + v58;
      if (v54)
      {
        goto LABEL_108;
      }

      if (v59 >= v51)
      {
        v77 = &v10[16 * v43 + 32];
        v79 = *v77;
        v78 = *(v77 + 1);
        v54 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v54)
        {
          goto LABEL_112;
        }

        if (v46 < v80)
        {
          v43 = v40 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v8 = v6[1];
    v7 = a1;
    if (v9 >= v8)
    {
      goto LABEL_88;
    }
  }

  v94 = v5;
  v104 = *v6;
  v30 = (*v6 + 8 * v9 - 8);
  v31 = v96 - v9;
  v97 = v28;
LABEL_29:
  v101 = v30;
  v103 = v9;
  v32 = *(v104 + 8 * v9);
  v99 = v31;
  while (1)
  {
    v33 = *v30;
    swift_getKeyPath();
    sub_1D25838BC(&qword_1EC6DDF98, type metadata accessor for PhotoGridElementViewModel, &unk_1D2897C98);
    sub_1D2870F78();
    sub_1D2870F78();
    sub_1D28719E8();

    v34 = *(v32 + 56);
    swift_getKeyPath();
    sub_1D28719E8();

    v35 = *(v33 + 56);

    if (v34 >= v35)
    {
LABEL_28:
      v9 = (v103 + 1);
      v30 = v101 + 1;
      v31 = v99 - 1;
      if (v103 + 1 != v97)
      {
        goto LABEL_29;
      }

      v9 = v97;
      v5 = v94;
      v6 = a3;
      v7 = a1;
      goto LABEL_36;
    }

    if (!v104)
    {
      break;
    }

    v36 = *v30;
    v32 = v30[1];
    *v30 = v32;
    v30[1] = v36;
    --v30;
    if (__CFADD__(v31++, 1))
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
}

uint64_t sub_1D258110C(char *__dst, char *__src, char *a3, char *a4)
{
  v5 = a4;
  v6 = a3;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v15 = &v5[8 * v10];
    if (v8 < 8 || __src >= v6)
    {
LABEL_21:
      v21 = v7;
      goto LABEL_53;
    }

    v16 = __src;
    while (1)
    {
      v45 = *v16;
      v44 = *v5;
      sub_1D2870F78();
      sub_1D2870F78();
      v17 = sub_1D2641BD4(&v45, &v44);
      if (v4)
      {

        v33 = v15 - v5 + 7;
        if (v15 - v5 >= 0)
        {
          v33 = v15 - v5;
        }

        if (v7 < v5 || v7 >= &v5[v33 & 0xFFFFFFFFFFFFFFF8] || v7 != v5)
        {
          v34 = 8 * (v33 >> 3);
          v35 = v7;
          goto LABEL_59;
        }

        return 1;
      }

      v18 = v17;

      if ((v18 & 1) == 0)
      {
        break;
      }

      v19 = v16;
      v20 = v7 == v16++;
      if (!v20)
      {
        goto LABEL_18;
      }

LABEL_19:
      v7 += 8;
      if (v5 >= v15 || v16 >= v6)
      {
        goto LABEL_21;
      }
    }

    v19 = v5;
    v20 = v7 == v5;
    v5 += 8;
    if (v20)
    {
      goto LABEL_19;
    }

LABEL_18:
    *v7 = *v19;
    goto LABEL_19;
  }

  v21 = __src;
  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v15 = &v5[8 * v13];
  if (v11 < 8 || v21 <= v7)
  {
LABEL_53:
    v39 = v15 - v5 + 7;
    if (v15 - v5 >= 0)
    {
      v39 = v15 - v5;
    }

    if (v21 >= v5 && v21 < &v5[v39 & 0xFFFFFFFFFFFFFFF8] && v21 == v5)
    {
      return 1;
    }

    v34 = 8 * (v39 >> 3);
    v35 = v21;
LABEL_59:
    v38 = v5;
LABEL_60:
    memmove(v35, v38, v34);
    return 1;
  }

  v43 = v5;
  v22 = -v5;
  v41 = -v5;
LABEL_28:
  v42 = v21;
  v23 = (v21 - 8);
  v24 = v15 + v22;
  v6 -= 8;
  v25 = v15;
  v26 = v15;
  while (1)
  {
    v27 = *--v26;
    v45 = v27;
    v28 = v23;
    v44 = *v23;
    sub_1D2870F78();
    sub_1D2870F78();
    v29 = sub_1D2641BD4(&v45, &v44);
    if (v4)
    {
      break;
    }

    v30 = v29;

    v31 = v6 + 8;
    if (v30)
    {
      v32 = v28;
      if (v31 != v42)
      {
        *v6 = *v28;
      }

      v5 = v43;
      v15 = v25;
      if (v25 <= v43 || (v21 = v32, v22 = v41, v32 <= v7))
      {
        v21 = v32;
        goto LABEL_53;
      }

      goto LABEL_28;
    }

    if (v31 != v25)
    {
      *v6 = *v26;
    }

    v24 -= 8;
    v6 -= 8;
    v25 = v26;
    v23 = v28;
    if (v26 <= v43)
    {
      v15 = v26;
      v21 = v42;
      v5 = v43;
      goto LABEL_53;
    }
  }

  if (v24 >= 0)
  {
    v36 = v24;
  }

  else
  {
    v36 = v24 + 7;
  }

  v37 = v36 >> 3;
  v35 = v42;
  v38 = v43;
  if (v42 < v43 || v42 >= v43 + (v36 & 0xFFFFFFFFFFFFFFF8))
  {
    memmove(v42, v43, 8 * v37);
    return 1;
  }

  if (v42 != v43)
  {
    v34 = 8 * v37;
    goto LABEL_60;
  }

  return 1;
}

uint64_t sub_1D25814A4(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a3;
  v5 = __dst;
  v6 = __src - __dst;
  v7 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v7 = __src - __dst;
  }

  v8 = v7 >> 3;
  v9 = a3 - __src;
  v10 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v10 = a3 - __src;
  }

  v11 = v10 >> 3;
  if (v8 >= v10 >> 3)
  {
    v23 = __src;
    if (a4 != __src || &__src[8 * v11] <= a4)
    {
      v24 = a4;
      memmove(a4, __src, 8 * v11);
      a4 = v24;
    }

    v39 = &a4[8 * v11];
    v13 = a4;
    if (v9 >= 8 && v23 > v5)
    {
      v36 = a4;
      v38 = v5;
LABEL_28:
      v33 = v23;
      v25 = v23 - 8;
      v4 -= 8;
      v26 = v39;
      v35 = v23 - 8;
      do
      {
        v27 = v4 + 8;
        v28 = *(v26 - 1);
        v26 -= 8;
        v29 = *v25;
        swift_getKeyPath();
        sub_1D25838BC(&qword_1EC6DDF98, type metadata accessor for PhotoGridElementViewModel, &unk_1D2897C98);
        sub_1D2870F78();
        sub_1D2870F78();
        sub_1D28719E8();

        v30 = *(v28 + 56);
        swift_getKeyPath();
        sub_1D28719E8();

        v31 = *(v29 + 56);

        if (v30 < v31)
        {
          if (v27 != v33)
          {
            *v4 = *v35;
          }

          v13 = v36;
          if (v39 <= v36 || (v23 = v35, v35 <= v38))
          {
            v23 = v35;
            goto LABEL_39;
          }

          goto LABEL_28;
        }

        if (v27 != v39)
        {
          *v4 = *v26;
        }

        v4 -= 8;
        v39 = v26;
        v25 = v35;
      }

      while (v26 > v36);
      v39 = v26;
      v23 = v33;
      v13 = v36;
    }
  }

  else
  {
    v13 = a4;
    if (a4 != __dst || &__dst[8 * v8] <= a4)
    {
      memmove(a4, __dst, 8 * v8);
    }

    v39 = &v13[8 * v8];
    if (v6 >= 8 && __src < v4)
    {
      v14 = __src;
      v34 = v4;
      while (1)
      {
        v37 = v5;
        v15 = *v14;
        v16 = *v13;
        v17 = v13;
        swift_getKeyPath();
        sub_1D25838BC(&qword_1EC6DDF98, type metadata accessor for PhotoGridElementViewModel, &unk_1D2897C98);
        sub_1D2870F78();
        sub_1D2870F78();
        sub_1D28719E8();

        v18 = *(v15 + 56);
        swift_getKeyPath();
        sub_1D28719E8();

        v19 = *(v16 + 56);

        if (v18 >= v19)
        {
          break;
        }

        v20 = v14;
        v21 = v37;
        v22 = v37 == v14;
        v14 += 8;
        if (!v22)
        {
          goto LABEL_17;
        }

LABEL_18:
        v5 = v21 + 8;
        if (v13 >= v39 || v14 >= v34)
        {
          goto LABEL_20;
        }
      }

      v20 = v13;
      v13 += 8;
      v21 = v37;
      if (v37 == v17)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v21 = *v20;
      goto LABEL_18;
    }

LABEL_20:
    v23 = v5;
  }

LABEL_39:
  if (v23 != v13 || v23 >= &v13[(v39 - v13 + (v39 - v13 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v23, v13, 8 * ((v39 - v13) / 8));
  }

  return 1;
}

void *sub_1D25818C8(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, id))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_1D2582728(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

unint64_t sub_1D2581A08(unint64_t a1, uint64_t (*a2)(uint64_t, void), uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v7 = sub_1D2879368();
  if (!v7)
  {
LABEL_7:

    return MEMORY[0x1E69E7CC0];
  }

  v8 = v7;
  v9 = a2(v7, 0);
  a3(v9 + 32, v8, a1);
  v11 = v10;

  result = v9;
  if (v11 != v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

double sub_1D2581AAC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for WeakPhotoLibraryUpdatingDelegate();
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + 24) = &off_1F4DC57C0;
  swift_unknownObjectWeakAssign();
  v5 = OBJC_IVAR____TtC23ImagePlaygroundInternal32GenerativePlaygroundPhotoLibrary_updatingDelegates;
  v6 = swift_beginAccess();
  MEMORY[0x1D38A0E30](v6);
  if (*((*(a2 + v5) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + v5) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D2878428();
  }

  sub_1D2878488();
  swift_endAccess();
  sub_1D23E0060();
  v7 = *(a2 + OBJC_IVAR____TtC23ImagePlaygroundInternal32GenerativePlaygroundPhotoLibrary_assets);
  swift_bridgeObjectRetain_n();
  v9[0] = sub_1D2581A08(v7, sub_1D27D3200, sub_1D27507B8);
  sub_1D257D184(v9);

  *(a1 + 16) = v9[0];

  return result;
}

double sub_1D2581C34(uint64_t a1, uint64_t a2)
{
  type metadata accessor for WeakPhotoLibraryUpdatingDelegate();
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + 24) = &protocol witness table for PhotoGridViewModel;
  swift_unknownObjectWeakAssign();
  v4 = OBJC_IVAR____TtC23ImagePlaygroundInternal32GenerativePlaygroundPhotoLibrary_updatingDelegates;
  v5 = swift_beginAccess();
  MEMORY[0x1D38A0E30](v5);
  if (*((*(a2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D2878428();
  }

  sub_1D2878488();
  swift_endAccess();
  sub_1D23E0060();
  v6 = sub_1D2870F68();
  PhotoGridViewModel.photoLibrary(didUpdate:)(v6);

  return result;
}

uint64_t type metadata accessor for PhotoGridViewModel(uint64_t a1)
{
  result = qword_1EC6D8678;
  if (!qword_1EC6D8678)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D2581DC0()
{
  result = qword_1EC6DDF90;
  if (!qword_1EC6DDF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DDF90);
  }

  return result;
}

void sub_1D2581E44(uint64_t a1)
{
  sub_1D24FEC8C(319);
  if (v1 <= 0x3F)
  {
    sub_1D2871A28();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

double sub_1D2581FA8(uint64_t a1, uint64_t a2)
{
  type metadata accessor for WeakPhotoLibraryUpdatingDelegate();
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + 24) = &off_1F4DD11E8;
  swift_unknownObjectWeakAssign();
  v4 = OBJC_IVAR____TtC23ImagePlaygroundInternal32GenerativePlaygroundPhotoLibrary_updatingDelegates;
  v5 = swift_beginAccess();
  MEMORY[0x1D38A0E30](v5);
  if (*((*(a2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D2878428();
  }

  sub_1D2878488();
  swift_endAccess();
  sub_1D23E0060();
  v6 = *(a2 + OBJC_IVAR____TtC23ImagePlaygroundInternal32GenerativePlaygroundPhotoLibrary_assets);
  swift_bridgeObjectRetain_n();
  v8[0] = sub_1D2581A08(v6, sub_1D27D3200, sub_1D27507B8);
  sub_1D257D184(v8);
  sub_1D2711D60(v8[0]);

  return result;
}

uint64_t sub_1D258212C(unint64_t a1, uint64_t *a2, uint64_t a3)
{
  v40 = a3;
  v36 = a2;
  v4 = a1;
  if (a1 >> 62)
  {
    goto LABEL_36;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  result = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v44 = MEMORY[0x1E69E7CC0];
    result = sub_1D2879258();
    if ((v5 & 0x8000000000000000) == 0)
    {
      v41 = v3;
      v7 = 0;
      v35 = v4 & 0xC000000000000001;
      v30 = v4 & 0xFFFFFFFFFFFFFF8;
      v8 = MEMORY[0x1E69E7CA8];
      v31 = v5;
      v32 = v4;
      while (1)
      {
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          v5 = sub_1D2879368();
          goto LABEL_3;
        }

        if (v35)
        {
          v10 = MEMORY[0x1D38A1C30](v7, v4);
        }

        else
        {
          if (v7 >= *(v30 + 16))
          {
            goto LABEL_35;
          }

          v10 = *(v4 + 8 * v7 + 32);
          sub_1D2870F78();
        }

        v11 = *v36;
        if ((*v36 & 0xC000000000000001) != 0)
        {
          if (v11 < 0)
          {
            v3 = *v36;
          }

          else
          {
            v3 = v11 & 0xFFFFFFFFFFFFFF8;
          }

          sub_1D2870F78();
          v12 = sub_1D2879378();

          if (!v12 || (v42 = v12, type metadata accessor for PhotoGridElementViewModel(0), swift_dynamicCast(), !v43))
          {
LABEL_25:
            v37 = v7;
            v39 = v7 + 1;
            v16 = v40;
            v17 = *(v40 + 16);
            type metadata accessor for PhotoGridElementViewModel(0);
            v18 = swift_allocObject();
            *(v18 + 32) = 0;
            swift_unknownObjectWeakInit();
            *(v18 + 48) = 0;
            *(v18 + 50) = 0;
            *(v18 + 56) = 0;
            *(v18 + 64) = 1;
            *(v18 + 72) = 0;
            *(v18 + 80) = 0;
            sub_1D2870F78();
            sub_1D2870F78();
            sub_1D2871A18();
            *(v18 + 40) = v17;
            v38 = v10;
            *(v18 + 16) = v10;
            KeyPath = swift_getKeyPath();
            MEMORY[0x1EEE9AC00](KeyPath);
            v20 = v8;
            v21 = OBJC_IVAR____TtC23ImagePlaygroundInternal25PhotoGridElementViewModel___observationRegistrar;
            v43 = v18;
            v22 = sub_1D25838BC(&qword_1EC6DDF98, type metadata accessor for PhotoGridElementViewModel, &unk_1D2897C98);
            v3 = v41;
            sub_1D28719D8();

            v23 = *(v16 + 96);
            v24 = *(v18 + 64) ^ ((v23 - 3) < 0xFFFFFFFE);
            v33 = v22;
            v34 = v21;
            if (v24)
            {
              v25 = swift_getKeyPath();
              MEMORY[0x1EEE9AC00](v25);
              v43 = v18;
              sub_1D28719D8();
              v41 = v3;

              v8 = v20;
              v9 = v39;
              v7 = v37;
            }

            else
            {
              v41 = v3;
              v26 = sub_1D25E46C4();
              if (!v23)
              {
                sub_1D2870F78();
              }

              v9 = v39;
              v7 = v37;
              LODWORD(v39) = (v23 - 3) < 0xFFFFFFFE;
              v27 = swift_getKeyPath();
              v37 = &v30;
              MEMORY[0x1EEE9AC00](v27);
              v43 = v26;
              sub_1D25838BC(&qword_1EC6DDFA0, type metadata accessor for PhotoGridElementContextualMenuViewModel, &unk_1D28979E0);
              v3 = v41;
              sub_1D28719D8();
              v41 = v3;
              v8 = v20;

              swift_unknownObjectRelease();
              *(v18 + 64) = v39;
            }

            v28 = *(v40 + 96) - 1;
            v5 = v31;
            if ((*(v18 + 48) ^ (v28 < 2)))
            {
              v29 = swift_getKeyPath();
              MEMORY[0x1EEE9AC00](v29);
              v43 = v18;
              v3 = v41;
              sub_1D28719D8();
              v41 = v3;
            }

            else
            {
              *(v18 + 48) = v28 < 2;
            }

            v4 = v32;
            goto LABEL_8;
          }
        }

        else
        {
          if (!*(v11 + 16))
          {
            goto LABEL_25;
          }

          v13 = sub_1D25D0B54(v10);
          if ((v14 & 1) == 0)
          {
            goto LABEL_25;
          }

          v15 = *(*(v11 + 56) + 8 * v13);
          sub_1D2870F78();
          if (!v15)
          {
            goto LABEL_25;
          }
        }

LABEL_8:
        sub_1D2879228();
        sub_1D2879268();
        sub_1D2879278();
        sub_1D2879238();
        v7 = (v7 + 1);
        if (v9 == v5)
        {
          return v44;
        }
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1D2582728(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, id))
{
  v21 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = *(*(a3 + 48) + 8 * v13);
    v15 = *(*(a3 + 56) + 8 * v13);
    sub_1D2870F78();
    v16 = v15;
    v17 = a4(v14, v16);

    if (v17)
    {
      *(a1 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v21++, 1))
      {
        __break(1u);
LABEL_15:
        sub_1D2626108(a1, a2, v21, a3);
        return;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_15;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_1D2582890(uint64_t a1, uint64_t (*a2)(uint64_t, id))
{
  v4 = a1;
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) > 0xD)
  {
    sub_1D2870F78();
    if (!swift_stdlib_isStackAllocationSafe())
    {
      v9 = swift_slowAlloc();
      sub_1D25818C8(v9, v6, v4, a2);
      MEMORY[0x1D38A3520](v9, -1, -1);
      return;
    }
  }

  MEMORY[0x1EEE9AC00](a1);
  v8 = v10 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v8, v7);
  sub_1D2582728(v8, v6, v4, a2);
  if (v2)
  {
    swift_willThrow();
  }
}

uint64_t sub_1D2582A10(uint64_t a1, uint64_t (*a2)(uint64_t, id), uint64_t a3)
{
  v3 = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1E69E7CC8];
    v25 = MEMORY[0x1E69E7CC8];
    v5 = sub_1D2879358();
    v6 = sub_1D2879388();
    if (v6)
    {
      v22 = v3;
      do
      {
        v24 = v6;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE550, &qword_1D2895E10);
        swift_dynamicCast();
        sub_1D2878C28();
        swift_dynamicCast();
        if (!v23)
        {
          break;
        }

        sub_1D2870F78();
        v7 = v24;
        v8 = v3(v23, v7);

        if (v8)
        {
          v9 = *(v4 + 16);
          if (*(v4 + 24) <= v9)
          {
            sub_1D24E107C(v9 + 1, 1);
          }

          v4 = v25;
          sub_1D28797D8();
          sub_1D2871818();
          sub_1D25838BC(&qword_1ED8A6CB0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
          sub_1D2877F08();
          result = sub_1D2879828();
          v11 = v25 + 64;
          v12 = -1 << *(v25 + 32);
          v13 = result & ~v12;
          v14 = v13 >> 6;
          if (((-1 << v13) & ~*(v25 + 64 + 8 * (v13 >> 6))) != 0)
          {
            v15 = __clz(__rbit64((-1 << v13) & ~*(v25 + 64 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
            v3 = v22;
          }

          else
          {
            v16 = 0;
            v17 = (63 - v12) >> 6;
            v3 = v22;
            do
            {
              if (++v14 == v17 && (v16 & 1) != 0)
              {
                __break(1u);
                return result;
              }

              v18 = v14 == v17;
              if (v14 == v17)
              {
                v14 = 0;
              }

              v16 |= v18;
              v19 = *(v11 + 8 * v14);
            }

            while (v19 == -1);
            v15 = __clz(__rbit64(~v19)) + (v14 << 6);
          }

          *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
          *(*(v25 + 48) + 8 * v15) = v23;
          *(*(v25 + 56) + 8 * v15) = v7;
          ++*(v25 + 16);
        }

        else
        {
        }

        v6 = sub_1D2879388();
      }

      while (v6);
    }

    sub_1D23EEDB0(v5 | 0x8000000000000000);
    return v4;
  }

  else
  {
    sub_1D2582890(a1, a2);
    v21 = v20;

    return v21;
  }
}

uint64_t sub_1D2582D48(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D2871818();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70, &qword_1D2881410);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94F0, &qword_1D2882EB0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v21 - v12;
  v15 = *(v14 + 56);
  sub_1D22BD1D0(a1, &v21 - v12, &qword_1EC6D8F70, &qword_1D2881410);
  sub_1D22BD1D0(a2, &v13[v15], &qword_1EC6D8F70, &qword_1D2881410);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1D22BD1D0(v13, v10, &qword_1EC6D8F70, &qword_1D2881410);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_1D25838BC(&unk_1ED8A6CA0, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v18 = sub_1D2877F98();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_1D22BD238(v13, &qword_1EC6D8F70, &qword_1D2881410);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1D22BD238(v13, &qword_1EC6D94F0, &qword_1D2882EB0);
    v17 = 1;
    return v17 & 1;
  }

  sub_1D22BD238(v13, &qword_1EC6D8F70, &qword_1D2881410);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1D25830E0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v5 = a1;
  v4[2] = &v5;
  return sub_1D286447C(sub_1D2583158, v4, v2) & 1;
}

uint64_t sub_1D2583190(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D22BDFF8;

  return sub_1D257B008(a1, v4, v5, v6);
}

uint64_t sub_1D2583244(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D22BDFF8;

  return sub_1D256B48C(a1, v4, v5, v7, v6);
}

uint64_t sub_1D2583320(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D22BC8FC;

  return sub_1D256B48C(a1, v4, v5, v7, v6);
}

uint64_t sub_1D25833E0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D22BC8FC;

  return sub_1D233BEF0(a1, v4);
}

void sub_1D2583498()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__gridElementViewModels) = *(v0 + 24);
  sub_1D2870F68();
}

__n128 sub_1D25834DC()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__gridSize) = result;
  return result;
}

uint64_t objectdestroy_49Tm(void (*a1)(void))
{
  swift_unknownObjectRelease();
  a1(*(v1 + 32));

  return swift_deallocObject();
}

uint64_t sub_1D258354C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D22BDFF8;

  return sub_1D257C1BC(a1, v4, v5, v6);
}

unint64_t sub_1D2583618()
{
  result = qword_1EC6DAE20;
  if (!qword_1EC6DAE20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC6DE550, &qword_1D2895E10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DAE20);
  }

  return result;
}

void sub_1D258368C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__assets);
  *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__assets) = *(v0 + 24);
  sub_1D2870F68();
  sub_1D25766C4(v2);
}

uint64_t sub_1D2583794(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAE40, &unk_1D287EC70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D2583804()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  swift_beginAccess();
  *(v1 + 40) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t objectdestroy_108Tm()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D25838BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D2583904(uint64_t a1)
{
  v3 = sub_1D2873CB8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 96))
  {
    sub_1D2872658();
    v7 = sub_1D2873CA8();
    v8 = sub_1D2878A18();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1D226E000, v7, v8, "Cannot edit asset while in Picker Mode", v9, 2u);
      MEMORY[0x1D38A3520](v9, -1, -1);
    }

    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_1D2569550(a1);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1D2583B24(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (a2)
    {
      v4 = sub_1D28776F8();
      v5 = sub_1D2878468();
      *(v5 + 16) = a2;
      v6 = *(v4 - 8);
      v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v8 = *(v6 + 16);
      v8(v5 + v7, v3, v4);
      v9 = a2 - 1;
      if (a2 != 1)
      {
        v10 = *(v6 + 72);
        v11 = v5 + v10 + v7;
        do
        {
          v8(v11, v3, v4);
          v11 += v10;
          --v9;
        }

        while (v9);
      }
    }

    else
    {
      v5 = MEMORY[0x1E69E7CC0];
    }

    v12 = sub_1D28776F8();
    (*(*(v12 - 8) + 8))(v3, v12);
    return v5;
  }

  return result;
}

uint64_t sub_1D2583C80(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (a2)
    {
      v4 = type metadata accessor for VStackWithCenteredSubviewLayout.View(0);
      v5 = sub_1D2878468();
      *(v5 + 16) = a2;
      v6 = *(v4 - 8);
      v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      sub_1D258F0B8(v3, v5 + v7, type metadata accessor for VStackWithCenteredSubviewLayout.View);
      v8 = a2 - 1;
      if (a2 != 1)
      {
        v9 = *(v6 + 72);
        v10 = v5 + v9 + v7;
        do
        {
          sub_1D258F0B8(v3, v10, type metadata accessor for VStackWithCenteredSubviewLayout.View);
          v10 += v9;
          --v8;
        }

        while (v8);
      }
    }

    else
    {
      v5 = MEMORY[0x1E69E7CC0];
    }

    sub_1D258EF2C(v3, type metadata accessor for VStackWithCenteredSubviewLayout.View);
    return v5;
  }

  return result;
}

__n128 sub_1D2583DA0@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D258F070(&qword_1EC6D8690, type metadata accessor for PhotoGridViewModel, &protocol conformance descriptor for PhotoGridViewModel);
  sub_1D28719E8();

  result = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__gridSize);
  *a2 = result;
  return result;
}

void sub_1D2583F08(uint64_t *a1@<X0>, void *a3@<X4>, _BYTE *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1D258F070(&qword_1EC6D8690, type metadata accessor for PhotoGridViewModel, &protocol conformance descriptor for PhotoGridViewModel);
  sub_1D28719E8();

  *a4 = *(v6 + *a3);
}

double sub_1D2583FF8@<D0>(uint64_t *a1@<X0>, void *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1D258F070(&qword_1EC6D8690, type metadata accessor for PhotoGridViewModel, &protocol conformance descriptor for PhotoGridViewModel);
  sub_1D28719E8();

  *a4 = *(v6 + *a3);
  sub_1D2870F68();
  return result;
}

void sub_1D25840DC(double a1)
{
  if (a1 > 0.0)
  {
    v3 = type metadata accessor for PhotoGridView(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDFB0, &qword_1D2894B78);
    v4 = v1;
    sub_1D2877618();
    v5 = *(v7 + 96);

    if (!v5)
    {
      v6 = round(a1 / *(v4 + *(v3 + 56) + 16));
      if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v6 > -9.22337204e18)
      {
        if (v6 < 9.22337204e18)
        {
          return;
        }

LABEL_11:
        __break(1u);
        return;
      }

      __break(1u);
      goto LABEL_11;
    }
  }
}

uint64_t sub_1D25841E4@<X0>(uint64_t (*a1)(uint64_t a1)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v91 = a1;
  v85 = a3;
  v82 = sub_1D2875008();
  v81 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v90 = v4;
  v80 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70, &qword_1D2881410);
  MEMORY[0x1EEE9AC00](v89);
  v75 = &v61 - v5;
  v66 = type metadata accessor for PhotoGridView(0);
  v84 = *(v66 - 1);
  v6 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v66);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE010, &qword_1D2894CF8);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v61 - v9;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE018, &qword_1D2894D00);
  v63 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v12 = &v61 - v11;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE020, &qword_1D2894D08);
  v64 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v61 = &v61 - v13;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE028, &qword_1D2894D10);
  MEMORY[0x1EEE9AC00](v67);
  v15 = &v61 - v14;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE030, &qword_1D2894D18);
  v68 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v86 = &v61 - v16;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE038, &qword_1D2894D20);
  v72 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v87 = &v61 - v17;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE040, &qword_1D2894D28);
  v76 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v88 = &v61 - v18;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE048, &qword_1D2894D30);
  v77 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v73 = &v61 - v19;
  sub_1D2876318();
  v93 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE050, &qword_1D2894D38);
  sub_1D258D794();
  sub_1D28743A8();
  type metadata accessor for CGRect(0);
  v21 = v20;
  v92 = a2;
  sub_1D258F0B8(a2, &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PhotoGridView);
  v22 = *(v84 + 80);
  v23 = (v22 + 16) & ~v22;
  v83 = v6;
  v69 = v22;
  v24 = swift_allocObject();
  v70 = v23;
  v84 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D258EF8C(v84, v24 + v23, type metadata accessor for PhotoGridView);
  v25 = sub_1D22BB9D8(&qword_1EC6D7ED8, &qword_1EC6DE010, &qword_1D2894CF8, MEMORY[0x1E697BE60]);
  v60 = sub_1D258F070(&qword_1ED89CCE8, type metadata accessor for CGRect, MEMORY[0x1E695EF78]);
  sub_1D2876CA8();
  v26 = v61;

  (*(v8 + 8))(v10, v7);
  *&v94 = v7;
  *(&v94 + 1) = v21;
  *&v95 = v25;
  *(&v95 + 1) = v60;
  swift_getOpaqueTypeConformance2();
  v27 = v62;
  sub_1D2876B28();
  (*(v63 + 8))(v12, v27);
  LOBYTE(v12) = sub_1D2876328();
  v28 = sub_1D2876378();
  sub_1D2876378();
  if (sub_1D2876378() != v12)
  {
    v28 = sub_1D2876378();
  }

  v29 = sub_1D2874F98();
  (*(v64 + 32))(v15, v26, v65);
  v30 = v67;
  v31 = &v15[*(v67 + 36)];
  *v31 = v29;
  v31[8] = v28;
  swift_getKeyPath();
  v65 = sub_1D258DBD4();
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v100 = 0;
  sub_1D28768C8();

  sub_1D22BD238(v15, &qword_1EC6DE028, &qword_1D2894D10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDFB0, &qword_1D2894B78);
  sub_1D2877618();
  v32 = v94;
  swift_getKeyPath();
  *&v94 = v32;
  sub_1D258F070(&qword_1EC6D8690, type metadata accessor for PhotoGridViewModel, &protocol conformance descriptor for PhotoGridViewModel);
  sub_1D28719E8();

  v33 = OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__gridScrollAssetID;
  swift_beginAccess();
  v34 = v75;
  sub_1D22BD1D0(v32 + v33, v75, &qword_1EC6D8F70, &qword_1D2881410);

  v35 = v81;
  v36 = v80;
  v37 = v82;
  v66 = *(v81 + 16);
  v66(v80, v91, v82);
  v38 = (*(v35 + 80) + 16) & ~*(v35 + 80);
  v39 = swift_allocObject();
  v81 = *(v35 + 32);
  (v81)(v39 + v38, v36, v37);
  *&v94 = v30;
  *(&v94 + 1) = &type metadata for PhotoGridActions;
  *&v95 = v65;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v41 = sub_1D258E098(&qword_1EC6D8BC8, &unk_1ED8A6CA0, MEMORY[0x1E69695C8], MEMORY[0x1E69E7C80]);
  v42 = v71;
  v67 = OpaqueTypeConformance2;
  v65 = v41;
  v43 = v86;
  sub_1D2876F48();

  sub_1D22BD238(v34, &qword_1EC6D8F70, &qword_1D2881410);
  (*(v68 + 8))(v43, v42);
  if (qword_1EC6D7EC8 != -1)
  {
    swift_once();
  }

  v44 = sub_1D2874558();
  __swift_project_value_buffer(v44, qword_1EC6E3B10);
  v66(v36, v91, v37);
  v45 = swift_allocObject();
  (v81)(v45 + v38, v36, v37);
  *&v94 = v42;
  *(&v94 + 1) = v89;
  *&v95 = v67;
  *(&v95 + 1) = v65;
  v46 = swift_getOpaqueTypeConformance2();
  v47 = v74;
  v48 = v87;
  sub_1D2876E98();

  (*(v72 + 8))(v48, v47);
  if (qword_1ED89DF90 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v44, qword_1ED8B0040);
  v91 = type metadata accessor for PhotoGridView;
  v49 = v92;
  v50 = v84;
  sub_1D258F0B8(v92, v84, type metadata accessor for PhotoGridView);
  v51 = v70;
  v52 = swift_allocObject();
  sub_1D258EF8C(v50, v52 + v51, type metadata accessor for PhotoGridView);
  *&v94 = v47;
  *(&v94 + 1) = v46;
  swift_getOpaqueTypeConformance2();
  v53 = v73;
  v54 = v78;
  v55 = v88;
  sub_1D2876E98();

  (*(v76 + 8))(v55, v54);
  sub_1D258F0B8(v49, v50, v91);
  v56 = swift_allocObject();
  sub_1D258EF8C(v50, v56 + v51, type metadata accessor for PhotoGridView);
  v57 = v85;
  (*(v77 + 32))(v85, v53, v79);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE090, &qword_1D2894DD8);
  v59 = (v57 + *(result + 36));
  *v59 = sub_1D258DF44;
  v59[1] = v56;
  v59[2] = 0;
  v59[3] = 0;
  return result;
}

uint64_t sub_1D25850E4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDFB0, &qword_1D2894B78);
  v100 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v99 = &v83 - v3;
  v91 = sub_1D2875C68();
  MEMORY[0x1EEE9AC00](v91);
  v90 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_1D28776E8();
  v5 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v7 = (&v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_1D28776F8();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE080, &unk_1D2894D68);
  v92 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v88 = &v83 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE078, &qword_1D2894D60);
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12);
  v89 = &v83 - v14;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE070, &qword_1D2894D58) - 8;
  MEMORY[0x1EEE9AC00](v95);
  v94 = &v83 - v15;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE068, &qword_1D2894D50) - 8;
  MEMORY[0x1EEE9AC00](v96);
  v86 = &v83 - v16;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE060, &qword_1D2894D48);
  MEMORY[0x1EEE9AC00](v102);
  v98 = &v83 - v17;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE058, &qword_1D2894D40);
  MEMORY[0x1EEE9AC00](v83);
  v84 = &v83 - v18;
  v19 = type metadata accessor for PhotoGridView(0);
  v20 = *(v19 + 20);
  sub_1D2877618();
  v21 = v109;
  swift_getKeyPath();
  *&v109 = v21;
  v101 = sub_1D258F070(&qword_1EC6D8690, type metadata accessor for PhotoGridViewModel, &protocol conformance descriptor for PhotoGridViewModel);
  sub_1D28719E8();

  v22 = *(v21 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__gridSize);

  *v7 = vextq_s8(*(a1 + *(v19 + 56) + 8), *(a1 + *(v19 + 56) + 8), 8uLL);
  (*(v5 + 104))(v7, *MEMORY[0x1E697D730], v87);
  sub_1D2877708();
  sub_1D25840DC(v22);
  sub_1D2583B24(v10, v23);
  v103 = a1;
  v24 = a1;
  sub_1D2875918();
  LODWORD(v109) = 0;
  sub_1D258F070(&qword_1ED89D4C0, MEMORY[0x1E697FCB0], MEMORY[0x1E697FCC8]);
  sub_1D2879968();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE0A0, &qword_1D2894E40);
  sub_1D258E200();
  v25 = v88;
  v26 = v20;
  sub_1D28779B8();
  sub_1D2877848();
  v27 = v86;
  sub_1D2875208();
  v28 = v89;
  (*(v92 + 32))(v89, v25, v93);
  v29 = (v28 + *(v13 + 44));
  v30 = v114;
  v29[4] = v113;
  v29[5] = v30;
  v29[6] = v115;
  v31 = v110;
  *v29 = v109;
  v29[1] = v31;
  v32 = v112;
  v29[2] = v111;
  v29[3] = v32;
  v33 = v99;
  v34 = v97;
  sub_1D2877628();
  swift_getKeyPath();
  sub_1D2877648();

  (*(v100 + 8))(v33, v34);
  v35 = v105;
  v36 = v106;
  v37 = v107;
  v38 = v108;
  v39 = swift_allocObject();
  v39[2] = v35;
  v39[3] = v36;
  v39[4] = v37;
  v39[5] = v38;
  v40 = v94;
  sub_1D22EC9BC(v28, v94, &qword_1EC6DE078, &qword_1D2894D60);
  v41 = v24;
  v42 = (v40 + *(v95 + 44));
  *v42 = sub_1D22A585C;
  v42[1] = 0;
  v42[2] = sub_1D2478FBC;
  v42[3] = v39;
  LOBYTE(v39) = sub_1D2876348();
  sub_1D2877618();

  sub_1D2874298();
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;
  sub_1D22EC9BC(v40, v27, &qword_1EC6DE070, &qword_1D2894D58);
  v51 = v27 + *(v96 + 44);
  *v51 = v39;
  *(v51 + 8) = v44;
  *(v51 + 16) = v46;
  *(v51 + 24) = v48;
  *(v51 + 32) = v50;
  *(v51 + 40) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD498, &qword_1D2894E50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D287F550;
  LOBYTE(v28) = sub_1D2876358();
  *(inited + 32) = v28;
  v53 = sub_1D2876328();
  *(inited + 33) = v53;
  v54 = sub_1D2876378();
  sub_1D2876378();
  if (sub_1D2876378() != v28)
  {
    v54 = sub_1D2876378();
  }

  sub_1D2876378();
  if (sub_1D2876378() != v53)
  {
    v54 = sub_1D2876378();
  }

  sub_1D2877618();

  sub_1D2874298();
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v63 = v98;
  v64 = sub_1D22EC9BC(v27, v98, &qword_1EC6DE068, &qword_1D2894D50);
  v65 = v63 + *(v102 + 36);
  *v65 = v54;
  *(v65 + 8) = v56;
  *(v65 + 16) = v58;
  *(v65 + 24) = v60;
  *(v65 + 32) = v62;
  *(v65 + 40) = 0;
  v96 = MEMORY[0x1D38A0390](v64, 0.5, 1.0, 0.0);
  sub_1D2877618();
  v66 = v105;
  swift_getKeyPath();
  v105 = v66;
  v100 = OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel___observationRegistrar;
  sub_1D28719E8();

  v67 = *(v66 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__assets);
  v105 = MEMORY[0x1E69E7CC0];
  if (v67 >> 62)
  {
LABEL_24:
    v68 = sub_1D2879368();
  }

  else
  {
    v68 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v99 = OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__filterFavorites;
  sub_1D2870F68();
  if (v68)
  {
    v94 = v26;
    v95 = v41;
    v69 = 0;
    v102 = v67 & 0xC000000000000001;
    v26 = v67 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v102)
      {
        v71 = MEMORY[0x1D38A1C30](v69, v67);
        v70 = v71;
        v72 = v69 + 1;
        if (__OFADD__(v69, 1))
        {
LABEL_19:
          __break(1u);
LABEL_20:
          v73 = v105;
          goto LABEL_22;
        }
      }

      else
      {
        if (v69 >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_24;
        }

        v70 = *(v67 + 8 * v69 + 32);
        v71 = sub_1D2870F78();
        v72 = v69 + 1;
        if (__OFADD__(v69, 1))
        {
          goto LABEL_19;
        }
      }

      v41 = &v83;
      MEMORY[0x1EEE9AC00](v71);
      sub_1D22BCFD0(0, &qword_1EC6D74E0, 0x1E6978630);
      swift_getKeyPath();
      v104 = v70;
      sub_1D22BB9D8(&qword_1EC6DAE20, &unk_1EC6DE550, &qword_1D2895E10, &protocol conformance descriptor for _PhotoAsset<A>);
      sub_1D28719E8();

      if ((*(v70 + *(*v70 + 208)) & 1) != 0 || (swift_getKeyPath(), v104 = v66, sub_1D28719E8(), , (v99[v66] & 1) == 0))
      {
        sub_1D2879228();
        sub_1D2879268();
        sub_1D2879278();
        sub_1D2879238();
      }

      else
      {
      }

      ++v69;
      if (v72 == v68)
      {
        goto LABEL_20;
      }
    }
  }

  v73 = MEMORY[0x1E69E7CC0];
LABEL_22:

  v74 = v84;
  v75 = sub_1D22EC9BC(v98, v84, &qword_1EC6DE060, &qword_1D2894D48);
  v76 = (v74 + *(v83 + 36));
  *v76 = v96;
  v76[1] = v73;
  v77 = MEMORY[0x1D38A0390](v75, 0.5, 1.0, 0.0);
  sub_1D2877618();
  v78 = v105;
  swift_getKeyPath();
  v105 = v78;
  sub_1D28719E8();

  v79 = *(v78 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__filterFavorites);

  v80 = v85;
  sub_1D22EC9BC(v74, v85, &qword_1EC6DE058, &qword_1D2894D40);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE050, &qword_1D2894D38);
  v82 = v80 + *(result + 36);
  *v82 = v77;
  *(v82 + 8) = v79;
  return result;
}

uint64_t sub_1D2585EDC(uint64_t a1)
{
  v2 = type metadata accessor for PhotoGridView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDFB0, &qword_1D2894B78);
  sub_1D2877618();
  v5 = sub_1D257927C();

  v11[5] = v5;
  swift_getKeyPath();
  sub_1D258F0B8(a1, v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PhotoGridView);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_1D258EF8C(v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for PhotoGridView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDFC8, &unk_1D2894BB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE0B0, &qword_1D2894EE8);
  sub_1D22BB9D8(&qword_1EC6D7588, &qword_1EC6DDFC8, &unk_1D2894BB0, MEMORY[0x1E69E6338]);
  sub_1D258F070(&qword_1ED8A6CB0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE0A8, &qword_1D2894E48);
  v9 = sub_1D22BB9D8(&unk_1EC6D7698, &qword_1EC6DE0A8, &qword_1D2894E48, MEMORY[0x1E6981810]);
  v11[1] = v8;
  v11[2] = MEMORY[0x1E69E6158];
  v11[3] = v9;
  v11[4] = MEMORY[0x1E69E6168];
  swift_getOpaqueTypeConformance2();
  return sub_1D2877578();
}

uint64_t sub_1D25861A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v108 = a2;
  v4 = sub_1D2871818();
  v105 = *(v4 - 8);
  v106 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v107 = &v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D2875628();
  v87 = *(v6 - 8);
  v88 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v86 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D2875678();
  v103 = *(v8 - 8);
  v104 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v100 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v101 = &v86 - v11;
  v12 = sub_1D2875788();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v99 = (&v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v102 = type metadata accessor for PhotoGridView(0);
  v14 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v96 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  KeyPath = &v86 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v92 = &v86 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v86 - v21;
  v24 = v23;
  v98 = v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v86 - v26;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE0A8, &qword_1D2894E48);
  MEMORY[0x1EEE9AC00](v114);
  v113 = &v86 - v28;
  v112 = *v2;
  v97 = v27;
  sub_1D258F0B8(v2, v27, type metadata accessor for PhotoGridView);
  v29 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v30 = (v24 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = *(v14 + 80);
  v32 = swift_allocObject();
  v95 = v32;
  sub_1D258EF8C(v27, v32 + v29, type metadata accessor for PhotoGridView);
  *(v32 + v30) = a1;
  sub_1D258F0B8(v2, v22, type metadata accessor for PhotoGridView);
  v33 = swift_allocObject();
  v94 = v33;
  sub_1D258EF8C(v22, v33 + v29, type metadata accessor for PhotoGridView);
  *(v33 + v30) = a1;
  v34 = a1;
  v35 = v92;
  sub_1D258F0B8(v2, v92, type metadata accessor for PhotoGridView);
  v36 = swift_allocObject();
  v93 = v36;
  v111 = type metadata accessor for PhotoGridView;
  sub_1D258EF8C(v35, v36 + v29, type metadata accessor for PhotoGridView);
  *(v36 + v30) = v34;
  v37 = v2;
  v38 = KeyPath;
  v110 = type metadata accessor for PhotoGridView;
  sub_1D258F0B8(v2, KeyPath, type metadata accessor for PhotoGridView);
  v90 = v31;
  v39 = swift_allocObject();
  v92 = v39;
  sub_1D258EF8C(v38, v39 + v29, type metadata accessor for PhotoGridView);
  *(v39 + v30) = v34;
  KeyPath = swift_getKeyPath();
  v135 = 0;
  v89 = swift_getKeyPath();
  v133 = 0;
  sub_1D2870F78();
  *&v117 = v34;
  type metadata accessor for PhotoGridElementViewModel(0);
  v109 = v34;
  swift_retain_n();
  sub_1D28772F8();
  v40 = *v136;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E3A10, &qword_1D2881580);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1D28809B0;
  *(v41 + 32) = v34;
  v42 = v37;
  v43 = v37;
  v115 = v37;
  v44 = v96;
  sub_1D258F0B8(v42, v96, type metadata accessor for PhotoGridView);
  v45 = swift_allocObject();
  sub_1D258EF8C(v44, v45 + v29, v111);
  *(v45 + v30) = v41;
  *v136 = v112;
  *&v136[8] = v40;
  *&v136[24] = KeyPath;
  LOBYTE(v137) = v135;
  *(&v137 + 1) = *v134;
  DWORD1(v137) = *&v134[3];
  *(&v137 + 1) = v89;
  LOBYTE(v138) = v133;
  *(&v138 + 1) = *v132;
  DWORD1(v138) = *&v132[3];
  *(&v138 + 1) = v41;
  *&v139 = sub_1D258EB28;
  *(&v139 + 1) = v45;
  LOWORD(v140) = 256;
  *(&v140 + 2) = v130;
  WORD3(v140) = v131;
  *(&v140 + 1) = sub_1D258E6AC;
  *&v141 = v95;
  *(&v141 + 1) = sub_1D258E7E0;
  *&v142 = v93;
  *(&v142 + 1) = sub_1D258E738;
  *&v143 = v94;
  *(&v143 + 1) = sub_1D258E7F8;
  *&v144 = v92;
  *(&v144 + 1) = sub_1D258C168;
  *&v145 = 0;
  *(&v145 + 1) = sub_1D258C1B4;
  *&v146 = 0;
  *(&v146 + 1) = sub_1D258C200;
  v147 = 0;
  v46 = v97;
  sub_1D258F0B8(v43, v97, v110);
  sub_1D2878568();
  v47 = v109;
  swift_retain_n();
  sub_1D2870F68();
  v48 = sub_1D2878558();
  v49 = (v90 + 32) & ~v90;
  v50 = (v49 + v98 + 7) & 0xFFFFFFFFFFFFFFF8;
  v51 = swift_allocObject();
  v52 = MEMORY[0x1E69E85E0];
  *(v51 + 16) = v48;
  *(v51 + 24) = v52;
  v53 = v46;
  v54 = v46;
  v55 = v111;
  sub_1D258EF8C(v54, v51 + v49, v111);
  *(v51 + v50) = v47;
  sub_1D258F0B8(v115, v53, v110);
  v56 = sub_1D2878558();
  v57 = swift_allocObject();
  *(v57 + 16) = v56;
  *(v57 + 24) = MEMORY[0x1E69E85E0];
  sub_1D258EF8C(v53, v57 + v49, v55);
  sub_1D2877528();
  v110 = *(&v117 + 1);
  v111 = v117;
  LODWORD(v98) = v118;
  v127 = v145;
  v128 = v146;
  v129 = v147;
  v123 = v141;
  v124 = v142;
  v125 = v143;
  v126 = v144;
  v119 = v137;
  v120 = v138;
  v121 = v139;
  v122 = v140;
  v117 = *v136;
  v118 = *&v136[16];
  sub_1D2870F78();
  sub_1D2875778();
  sub_1D2875768();
  v116 = 1;
  sub_1D2875748();
  sub_1D2875768();
  sub_1D28757A8();
  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  v58 = qword_1ED8B0058;
  v59 = sub_1D2876668();
  v96 = v60;
  v97 = v59;
  v62 = v61;
  v64 = v63;
  v99 = &v86;
  MEMORY[0x1EEE9AC00](v59);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE0B8, &unk_1D2894F48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE6C0, &unk_1D2884AD0);
  sub_1D22BB9D8(&qword_1EC6DE0C0, &qword_1EC6DE0B8, &unk_1D2894F48, &unk_1D2897600);
  sub_1D22BB9D8(&qword_1ED89D158, &qword_1EC6DE6C0, &unk_1D2884AD0, MEMORY[0x1E697D680]);
  v65 = v113;
  v66 = v97;
  sub_1D2876B08();

  sub_1D22BD238(v136, &qword_1EC6DE0B8, &unk_1D2894F48);
  v67 = v109;

  sub_1D22ED6E0(v66, v62, v64 & 1);

  v68 = v101;
  sub_1D2875668();
  v70 = v103;
  v69 = v104;
  (*(v103 + 16))(v100, v68, v104);
  sub_1D258F070(&qword_1ED89D6C8, MEMORY[0x1E697F260], MEMORY[0x1E697F258]);
  v71 = sub_1D2874988();
  (*(v70 + 8))(v68, v69);
  *&v65[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE0C8, &qword_1D2894F58) + 36)] = v71;
  v72 = *(v67 + 16);
  v73 = *(*v72 + 160);
  v74 = v105;
  v75 = *(v105 + 16);
  v76 = &v65[*(v114 + 52)];
  v77 = v106;
  v75(v76, v72 + v73, v106);
  v78 = v115 + *(v102 + 48);
  if (*(v78 + 8) == 1)
  {
    *&v117 = *v78;
    sub_1D2870F78();
  }

  else
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v79 = sub_1D28762E8();
    sub_1D2873BE8();

    v80 = v86;
    sub_1D2875618();
    swift_getAtKeyPath();

    (*(v87 + 8))(v80, v88);
  }

  v81 = v107;
  v75(v107, v72 + v73, v77);
  v82 = sub_1D28717B8();
  *&v117 = 0x6E61725464697247;
  *(&v117 + 1) = 0xEF2D6E6F69746973;
  MEMORY[0x1D38A0C50](v82);

  v83 = v117;
  (*(v74 + 8))(v81, v77);
  v117 = v83;
  sub_1D22BB9D8(&unk_1EC6D7698, &qword_1EC6DE0A8, &qword_1D2894E48, MEMORY[0x1E6981810]);
  v84 = v113;
  sub_1D2876CD8();

  return sub_1D22BD238(v84, &qword_1EC6DE0A8, &qword_1D2894E48);
}

void sub_1D2586F8C(void *a1@<X8>)
{
  sub_1D2874D38();
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
}

void sub_1D2586FBC(double *a1, double *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  v9 = a2[3];
  type metadata accessor for PhotoGridView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDFB0, &qword_1D2894B78);
  sub_1D2877618();
  v10 = *(v15 + 81);

  if ((v10 & 1) == 0)
  {
    v16.origin.x = v6;
    v16.origin.y = v7;
    v16.size.width = v8;
    v16.size.height = v9;
    MinY = CGRectGetMinY(v16);
    v12 = v2;
    v13 = MinY;
    v17.origin.x = v12;
    v17.origin.y = v3;
    v17.size.width = v4;
    v17.size.height = v5;
    v14 = CGRectGetMinY(v17) <= v13;
    sub_1D25870A0(v14, v6, v7, v8, v9);
  }
}

void sub_1D25870A0(char a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat MaxY)
{
  v6 = v5;
  LOBYTE(v7) = a1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60, &qword_1D28811F0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v84 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v86 = &v80 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCAB8, &qword_1D28A11A0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v80 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0, &unk_1D287F0E0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v80 - v20;
  v22 = type metadata accessor for PhotoGridView(0);
  v23 = *(v22 + 20);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDFB0, &qword_1D2894B78);
  sub_1D2877618();
  v24 = v93;
  swift_getKeyPath();
  v93 = v24;
  v87 = sub_1D258F070(&qword_1EC6D8690, type metadata accessor for PhotoGridViewModel, &protocol conformance descriptor for PhotoGridViewModel);
  sub_1D28719E8();

  v25 = *(v24 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__gridSize);

  if (v25 <= 0.0)
  {
    return;
  }

  sub_1D2877618();
  v26 = v93;
  swift_getKeyPath();
  v93 = v26;
  sub_1D28719E8();

  v27 = *(v26 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__gridElementViewModels[0]);
  sub_1D2870F68();

  if (v27 >> 62)
  {
    goto LABEL_77;
  }

  v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

  if (v28 < 1)
  {
    return;
  }

  v94.origin.x = a2;
  v94.origin.y = a3;
  v94.size.width = a4;
  v94.size.height = MaxY;
  MinY = CGRectGetMinY(v94);
  v95.origin.x = a2;
  v95.origin.y = a3;
  v95.size.width = a4;
  v95.size.height = MaxY;
  MaxY = CGRectGetMaxY(v95);
  a3 = *(v6 + *(v22 + 56));
  if (MinY - a3 > 0.0)
  {
    a4 = MinY - a3;
  }

  else
  {
    a4 = 0.0;
  }

  sub_1D25840DC(v25);
  v22 = v30;
  sub_1D2877618();
  v31 = v93;
  swift_getKeyPath();
  v93 = v31;
  sub_1D28719E8();

  v32 = *(v31 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__gridElementViewModels[0]);
  sub_1D2870F68();

  if (v32 >> 62)
  {
    v33 = sub_1D2879368();
  }

  else
  {
    v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (__OFSUB__(v33, 1))
  {
    __break(1u);
    goto LABEL_80;
  }

  if (!v22)
  {
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  if (v33 == 0x8000000000000001 && v22 == -1)
  {
    goto LABEL_96;
  }

  v34 = (v25 + a3) / v22;
  a4 = a4 / v34;
  if (a4 <= -9.22337204e18)
  {
    goto LABEL_81;
  }

  if (a4 >= 9.22337204e18)
  {
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v35 = (MaxY - a3) / v34;
  if ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v35 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_83;
  }

  if (v35 <= -9.22337204e18)
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  if (v35 >= 9.22337204e18)
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  v36 = v23;
  if ((v33 - 1) / v22 >= v35)
  {
    v23 = v35;
  }

  else
  {
    v23 = (v33 - 1) / v22;
  }

  v83 = v36;
  sub_1D2877618();
  v37 = v93;
  swift_getKeyPath();
  v93 = v37;
  sub_1D28719E8();

  v38 = *(v37 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__gridElementViewModels[0]);
  sub_1D2870F68();

  if (!(v38 >> 62))
  {
    v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_25;
  }

LABEL_86:
  v39 = sub_1D2879368();
LABEL_25:

  v40 = v39 - 1;
  if (__OFSUB__(v39, 1))
  {
    __break(1u);
    goto LABEL_88;
  }

  v41 = a4;
  v42 = a4 * v22;
  if ((a4 * v22) >> 64 != v42 >> 63)
  {
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  v43 = v23 + 1;
  if (__OFADD__(v23, 1))
  {
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  v44 = v43 * v22;
  if ((v43 * v22) >> 64 != (v43 * v22) >> 63)
  {
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  v45 = v44 - 1;
  if (__OFSUB__(v44, 1))
  {
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  if (v40 >= v45)
  {
    v46 = v44 - 1;
  }

  else
  {
    v46 = v39 - 1;
  }

  v47 = __OFSUB__(v23, v41);
  v48 = v23 - v41;
  if (v47)
  {
    goto LABEL_92;
  }

  v49 = v48 + 1;
  if (__OFADD__(v48, 1))
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  v50 = v49 * v22;
  if ((v49 * v22) >> 64 != (v49 * v22) >> 63)
  {
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  if (v50 + 0x4000000000000000 < 0)
  {
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  v51 = 2 * v50;
  if (v7)
  {
    v23 = v83;
    if (v45 >= v40)
    {
      return;
    }

    if (!__OFADD__(v46, v51))
    {
      v7 = v46 + 1;
      if (v40 >= v46 + v51)
      {
        v52 = v46 + v51;
      }

      else
      {
        v52 = v39 - 1;
      }

      if (v52 >= v7)
      {
        goto LABEL_49;
      }

      return;
    }

LABEL_98:
    __break(1u);
    return;
  }

  v52 = v42 - 1;
  v23 = v83;
  if (v42 < 1)
  {
    return;
  }

  if (__OFSUB__(v42, v51))
  {
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  v7 = (v42 - v51) & ~((v42 - v51) >> 63);
  if (v52 >= v7)
  {
LABEL_49:
    v85 = v52;
    v82 = v16;
    v81 = v6;
    v80 = v18;
    while (1)
    {
      sub_1D2877618();
      v53 = v93;
      swift_getKeyPath();
      v93 = v53;
      sub_1D28719E8();

      v54 = *(v53 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__gridElementViewModels[0]);
      sub_1D2870F68();

      if ((v54 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x1D38A1C30](v7, v54);
      }

      else
      {
        if (v7 < 0)
        {
          __break(1u);
LABEL_75:
          __break(1u);
LABEL_76:
          __break(1u);
LABEL_77:
          v28 = sub_1D2879368();
          goto LABEL_4;
        }

        if (v7 >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_75;
        }

        v22 = *(v54 + 8 * v7 + 32);
        sub_1D2870F78();
      }

      v55 = *(v22 + 16);
      v56 = *(*v55 + 160);
      v57 = *(*(v55 + 7) + 16);
      v58 = sub_1D2871818();
      (*(*(v58 - 8) + 16))(v18, &v55[v56], v58);
      v18[*(v16 + 36)] = 0;
      swift_beginAccess();
      v59 = *(v57 + 16);
      if (*(v59 + 16) && (v60 = sub_1D25D0A7C(v18), (v61 & 1) != 0))
      {
        v62 = *(*(v59 + 56) + 8 * v60);
        swift_endAccess();
        v63 = sub_1D2870F78();
        sub_1D27190D8(v63);
        sub_1D22BD238(v18, &qword_1EC6DCAB8, &qword_1D28A11A0);
        v64 = *(*v62 + 112);
        swift_beginAccess();
        sub_1D258F0B8(v62 + v64, v21, type metadata accessor for PlaygroundImage);

        v65 = 0;
      }

      else
      {
        swift_endAccess();
        sub_1D22BD238(v18, &qword_1EC6DCAB8, &qword_1D28A11A0);
        v65 = 1;
      }

      v66 = type metadata accessor for PlaygroundImage(0);
      v67 = *(v66 - 8);
      (*(v67 + 56))(v21, v65, 1, v66);
      if ((*(v67 + 48))(v21, 1, v66) == 1)
      {
        v68 = v21;
        sub_1D22BD238(v21, &unk_1EC6DE5A0, &unk_1D287F0E0);
        v69 = sub_1D28785F8();
        v70 = *(v69 - 8);
        v71 = v86;
        (*(v70 + 56))(v86, 1, 1, v69);
        sub_1D2878568();
        sub_1D2870F78();
        v72 = sub_1D2878558();
        v73 = swift_allocObject();
        *(v73 + 16) = v72;
        *(v73 + 24) = MEMORY[0x1E69E85E0];
        *(v73 + 32) = v22;
        *(v73 + 40) = 0;
        v74 = v84;
        sub_1D22BD1D0(v71, v84, &qword_1EC6D8E60, &qword_1D28811F0);
        LODWORD(v72) = (*(v70 + 48))(v74, 1, v69);
        sub_1D2870F78();
        if (v72 == 1)
        {
          sub_1D22BD238(v74, &qword_1EC6D8E60, &qword_1D28811F0);
        }

        else
        {
          sub_1D28785E8();
          (*(v70 + 8))(v74, v69);
        }

        v75 = *(v73 + 16);
        swift_unknownObjectRetain();

        v21 = v68;
        if (v75)
        {
          swift_getObjectType();
          v76 = sub_1D28784F8();
          v78 = v77;
          swift_unknownObjectRelease();
        }

        else
        {
          v76 = 0;
          v78 = 0;
        }

        v18 = v80;
        sub_1D22BD238(v86, &qword_1EC6D8E60, &qword_1D28811F0);
        v79 = swift_allocObject();
        *(v79 + 16) = &unk_1D2894E30;
        *(v79 + 24) = v73;
        v23 = v83;
        if (v78 | v76)
        {
          v89 = 0;
          v90 = 0;
          v91 = v76;
          v92 = v78;
        }

        v6 = v81;
        swift_task_create();

        v16 = v82;
      }

      else
      {

        sub_1D22BD238(v21, &unk_1EC6DE5A0, &unk_1D287F0E0);
      }

      if (v85 == v7)
      {
        return;
      }

      v47 = __OFADD__(v7++, 1);
      if (v47)
      {
        goto LABEL_76;
      }
    }
  }
}

void *FocusedValues.photoGridActions.getter()
{
  sub_1D2587C8C();

  return sub_1D28749B8();
}

unint64_t sub_1D2587C8C()
{
  result = qword_1EC6D7E48;
  if (!qword_1EC6D7E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7E48);
  }

  return result;
}

__n128 sub_1D2587CE0@<Q0>(uint64_t a1@<X8>)
{
  sub_1D2587C8C();
  sub_1D28749B8();
  *(a1 + 64) = v7;
  *(a1 + 80) = v8;
  *(a1 + 96) = v9;
  *a1 = v3;
  *(a1 + 16) = v4;
  result = v6;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

uint64_t sub_1D2587D54(__int128 *a1)
{
  v1 = a1[3];
  v2 = a1[5];
  v20 = a1[4];
  v21 = v2;
  v3 = a1[1];
  v17[0] = *a1;
  v17[1] = v3;
  v4 = a1[3];
  v6 = *a1;
  v5 = a1[1];
  v18 = a1[2];
  v19 = v4;
  v7 = a1[5];
  v14 = v20;
  v15 = v7;
  v10 = v6;
  v11 = v5;
  v22 = *(a1 + 12);
  v16 = *(a1 + 12);
  v12 = v18;
  v13 = v1;
  sub_1D22BD1D0(v17, v9, &qword_1EC6DDFA8, &qword_1D2894AB0);
  sub_1D2587C8C();
  return sub_1D28749C8();
}

double sub_1D2587E54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D2877958();
  sub_1D2874BE8();

  return result;
}

uint64_t sub_1D2587EC8(uint64_t a1, uint64_t a2)
{
  sub_1D2877AD8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70, &qword_1D2881410);
  sub_1D258E098(&qword_1EC6DE098, &qword_1ED8A6CB0, MEMORY[0x1E69695B8], MEMORY[0x1E69E7C78]);
  return sub_1D2874FF8();
}

double sub_1D2587F84(uint64_t a1, uint64_t a2)
{
  v37 = a1;
  v38 = a2;
  v41 = sub_1D2877B48();
  v44 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1D2877B68();
  v42 = *(v3 - 8);
  v43 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v39 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1D2875008();
  v5 = *(v31 - 8);
  v32 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v30 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D2874578();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D2877BA8();
  v36 = v11;
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v34 = &v29 - v16;
  sub_1D22BCFD0(0, &qword_1ED89CD50, 0x1E69E9610);
  v35 = sub_1D2878AB8();
  sub_1D2877B88();
  sub_1D2877BC8();
  v33 = *(v12 + 8);
  v33(v14, v11);
  (*(v8 + 16))(v10, v37, v7);
  v17 = v30;
  v18 = v31;
  (*(v5 + 16))(v30, v38, v31);
  v19 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v20 = (v9 + *(v5 + 80) + v19) & ~*(v5 + 80);
  v21 = swift_allocObject();
  (*(v8 + 32))(v21 + v19, v10, v7);
  (*(v5 + 32))(v21 + v20, v17, v18);
  aBlock[4] = sub_1D258DFA4;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D23DFBA8;
  aBlock[3] = &block_descriptor_25;
  v22 = _Block_copy(aBlock);
  v23 = v39;
  sub_1D2877B58();
  v45 = MEMORY[0x1E69E7CC0];
  sub_1D258F070(&qword_1ED89CFE0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAE80, &qword_1D287EE00);
  sub_1D22BB9D8(&qword_1ED89CEB0, &unk_1EC6DAE80, &qword_1D287EE00, MEMORY[0x1E69E6328]);
  v25 = v40;
  v24 = v41;
  sub_1D2879088();
  v27 = v34;
  v26 = v35;
  MEMORY[0x1D38A1510](v34, v23, v25, v22);
  _Block_release(v22);

  (*(v44 + 8))(v25, v24);
  (*(v42 + 8))(v23, v43);
  v33(v27, v36);

  return result;
}

void sub_1D2588514()
{
  type metadata accessor for PhotoGridView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDFB0, &qword_1D2894B78);
  sub_1D2877618();
  swift_getKeyPath();
  sub_1D258F070(&qword_1EC6D8690, type metadata accessor for PhotoGridViewModel, &protocol conformance descriptor for PhotoGridViewModel);
  sub_1D28719E8();

  v0 = *(v6 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__gridElementViewModels[0]);
  sub_1D2870F68();

  if (!(v0 >> 62))
  {
    v1 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v1)
    {
      goto LABEL_3;
    }

LABEL_10:

    return;
  }

  v1 = sub_1D2879368();
  if (!v1)
  {
    goto LABEL_10;
  }

LABEL_3:
  v2 = __OFSUB__(v1, 1);
  v3 = v1 - 1;
  if (v2)
  {
    __break(1u);
    goto LABEL_13;
  }

  if ((v0 & 0xC000000000000001) != 0)
  {
LABEL_13:
    v4 = MEMORY[0x1D38A1C30](v3, v0);
    goto LABEL_8;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v3 < *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v4 = *(v0 + 8 * v3 + 32);
    sub_1D2870F78();
LABEL_8:

    v5 = *(v4 + 16);
    sub_1D2870F78();

    sub_1D2877618();
    sub_1D257A8B4(v5);

    return;
  }

  __break(1u);
}

uint64_t sub_1D25886D4(uint64_t a1)
{
  v16 = sub_1D2875628();
  v2 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDFD0, &qword_1D2894C30);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v15 - v6;
  v8 = sub_1D2875D78();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PhotoGridView(0);
  sub_1D22BD1D0(a1 + *(v12 + 52), v7, &qword_1EC6DDFD0, &qword_1D2894C30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    sub_1D2878A28();
    v13 = sub_1D28762E8();
    sub_1D2873BE8();

    sub_1D2875618();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v16);
  }

  sub_1D2875D68();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1D258895C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE000, &qword_1D2894C60);
  v81 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v80 = &v61 - v4;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE008, &qword_1D2894C68);
  v76 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v71 = &v61 - v5;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDFF8, &qword_1D2894C58);
  v70 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v69 = &v61 - v6;
  v74 = sub_1D2875C08();
  v68 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v66 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v67 = &v61 - v9;
  v10 = sub_1D2875628();
  v72 = *(v10 - 8);
  v73 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDFF0, &qword_1D2894C50);
  MEMORY[0x1EEE9AC00](v13);
  v75 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v78 = &v61 - v16;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDFE8, &qword_1D2894C48);
  MEMORY[0x1EEE9AC00](v82);
  v18 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v61 - v20;
  v22 = type metadata accessor for PhotoGridView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDFB0, &qword_1D2894B78);
  v23 = a1;
  sub_1D2877618();
  v24 = v84;
  swift_getKeyPath();
  v84 = v24;
  sub_1D258F070(&qword_1EC6D8690, type metadata accessor for PhotoGridViewModel, &protocol conformance descriptor for PhotoGridViewModel);
  sub_1D28719E8();

  v25 = v24[OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__viewIsEnabled];

  if (v25 == 1)
  {
    v65 = v18;
    v64 = v21;
    v63 = v13;
    v62 = v3;
    v26 = v23 + *(v22 + 36);
    if (*(v26 + 8) == 1)
    {
      v84 = *v26;
      sub_1D2870F78();
    }

    else
    {
      sub_1D2870F78();
      sub_1D2878A28();
      v32 = sub_1D28762E8();
      sub_1D2873BE8();

      sub_1D2875618();
      swift_getAtKeyPath();

      (*(v72 + 8))(v12, v73);
    }

    swift_getKeyPath();
    if (qword_1ED8A4928 != -1)
    {
      swift_once();
    }

    v84 = off_1ED8A4930;
    sub_1D258F070(&qword_1ED8A4920, type metadata accessor for DebugSettings, &protocol conformance descriptor for DebugSettings);
    sub_1D28719E8();
    sub_1D2870F78();
    if (os_variant_has_internal_ui())
    {
      sub_1D22BCFD0(0, &qword_1ED89CDA0, 0x1E695E000);
      v33 = sub_1D2878A58();
      v34 = sub_1D2878068();
      v35 = [v33 BOOLForKey_];

      if (v35)
      {
        v36 = v67;
        sub_1D2875BB8();
        v37 = v68;
        v38 = (*(v68 + 16))(v66, v36, v74);
        MEMORY[0x1EEE9AC00](v38);
        *(&v61 - 2) = v23;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB958, &qword_1D2894CC0);
        sub_1D22BB9D8(&qword_1EC6DB950, &qword_1EC6DB958, &qword_1D2894CC0, MEMORY[0x1E697D6A8]);
        v39 = v69;
        sub_1D28745C8();
        v40 = sub_1D22BB9D8(&qword_1EC6D7E98, &qword_1EC6DDFF8, &qword_1D2894C58, MEMORY[0x1E697BEF0]);
        v41 = v71;
        v42 = v77;
        MEMORY[0x1D389E720](v39, v77, v40);
        v44 = v75;
        v43 = v76;
        v45 = v79;
        (*(v76 + 16))(v75, v41, v79);
        (*(v43 + 56))(v44, 0, 1, v45);
        v84 = v42;
        v85 = v40;
        OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
        v47 = v78;
        MEMORY[0x1D389E750](v44, v45, OpaqueTypeConformance2);
        sub_1D22BD238(v44, &qword_1EC6DDFF0, &qword_1D2894C50);
        (*(v43 + 8))(v41, v45);
        (*(v70 + 8))(v39, v42);
        (*(v37 + 8))(v36, v74);
LABEL_13:
        v52 = v62;
        v53 = v81;
        v54 = sub_1D258D688();
        v55 = v80;
        v56 = v63;
        MEMORY[0x1D389E720](v47, v63, v54);
        v57 = v65;
        (*(v53 + 16))(v65, v55, v52);
        (*(v53 + 56))(v57, 0, 1, v52);
        v84 = v56;
        v85 = v54;
        v58 = swift_getOpaqueTypeConformance2();
        v21 = v64;
        MEMORY[0x1D389E750](v57, v52, v58);
        sub_1D22BD238(v57, &qword_1EC6DDFE8, &qword_1D2894C48);
        (*(v53 + 8))(v55, v52);
        v29 = &qword_1EC6DDFF0;
        v30 = &qword_1D2894C50;
        v31 = v47;
        goto LABEL_14;
      }
    }

    else
    {
    }

    v48 = v75;
    v49 = v79;
    (*(v76 + 56))(v75, 1, 1, v79);
    v50 = sub_1D22BB9D8(&qword_1EC6D7E98, &qword_1EC6DDFF8, &qword_1D2894C58, MEMORY[0x1E697BEF0]);
    v84 = v77;
    v85 = v50;
    v51 = swift_getOpaqueTypeConformance2();
    v47 = v78;
    MEMORY[0x1D389E750](v48, v49, v51);
    sub_1D22BD238(v48, &qword_1EC6DDFF0, &qword_1D2894C50);
    goto LABEL_13;
  }

  (*(v81 + 56))(v18, 1, 1, v3);
  v27 = sub_1D258D688();
  v84 = v13;
  v85 = v27;
  v28 = swift_getOpaqueTypeConformance2();
  MEMORY[0x1D389E750](v18, v3, v28);
  v29 = &qword_1EC6DDFE8;
  v30 = &qword_1D2894C48;
  v31 = v18;
LABEL_14:
  sub_1D22BD238(v31, v29, v30);
  v59 = sub_1D258D5C8();
  MEMORY[0x1D389E720](v21, v82, v59);
  return sub_1D22BD238(v21, &qword_1EC6DDFE8, &qword_1D2894C48);
}

uint64_t sub_1D2589480(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDFB0, &qword_1D2894B78);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7[-v4];
  type metadata accessor for PhotoGridView(0);
  sub_1D2877628();
  swift_getKeyPath();
  sub_1D2877648();

  (*(v3 + 8))(v5, v2);
  v8 = a1;
  return sub_1D28774A8();
}

uint64_t sub_1D25895DC@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for PhotoGridView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDFB0, &qword_1D2894B78);
  sub_1D2877618();
  swift_getKeyPath();
  sub_1D258F070(&qword_1EC6D8690, type metadata accessor for PhotoGridViewModel, &protocol conformance descriptor for PhotoGridViewModel);
  sub_1D28719E8();

  v2 = *(v8 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__filterFavorites);

  if (v2 == 1)
  {
    sub_1D2875798();
    if (qword_1ED89E0E8 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  sub_1D2875798();
  if (qword_1ED89E0E8 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_5:
  v3 = qword_1ED8B0058;
  result = sub_1D2876668();
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v7;
  return result;
}

double sub_1D2589800()
{
  type metadata accessor for PhotoGridView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDFB0, &qword_1D2894B78);
  sub_1D2877618();
  swift_getKeyPath();
  sub_1D258F070(&qword_1EC6D8690, type metadata accessor for PhotoGridViewModel, &protocol conformance descriptor for PhotoGridViewModel);
  sub_1D28719E8();

  return result;
}

void sub_1D25898D4(unint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60, &qword_1D28811F0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v22 - v3;
  if (a1 >> 62)
  {
    v5 = sub_1D2879368();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v23 = MEMORY[0x1E69E7CC0];
    sub_1D2879258();
    if (v5 < 0)
    {
      __break(1u);
      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = 0;
      do
      {
        v8 = v7 + 1;
        MEMORY[0x1D38A1C30]();
        sub_1D2870F78();
        swift_unknownObjectRelease();
        sub_1D2879228();
        sub_1D2879268();
        sub_1D2879278();
        sub_1D2879238();
        v7 = v8;
      }

      while (v5 != v8);
    }

    else
    {
      v9 = a1 + 32;
      do
      {
        v9 += 8;
        sub_1D2870F78();
        sub_1D2879228();
        sub_1D2879268();
        sub_1D2879278();
        sub_1D2879238();
        --v5;
      }

      while (v5);
    }

    v6 = v23;
  }

  v10 = [objc_opt_self() generalPasteboard];
  v11 = sub_1D28785F8();
  (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
  sub_1D2878568();
  v12 = v10;
  v13 = sub_1D2878558();
  v14 = swift_allocObject();
  v15 = MEMORY[0x1E69E85E0];
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = v6;
  v14[5] = v12;
  sub_1D22AE01C(0, 0, v4, &unk_1D2894F80, v14);

  type metadata accessor for PhotoGridView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDFB0, &qword_1D2894B78);
  sub_1D2877618();
  sub_1D23C7CA8();
  v16 = sub_1D2878068();
  v17 = sub_1D2878068();
  v18 = sub_1D25D7060(MEMORY[0x1E69E7CC0]);
  v19 = sub_1D2878068();
  v20 = sub_1D2418030(v18);

  if (v20)
  {
    type metadata accessor for IAPayloadKey(0);
    sub_1D22BCFD0(0, &qword_1ED89CC48, 0x1E69E58C0);
    sub_1D258F070(&qword_1ED89CDD0, type metadata accessor for IAPayloadKey, &unk_1D287E68C);
    v21 = sub_1D2877E78();
  }

  else
  {
    v21 = 0;
  }

  [objc_opt_self() asyncSendSignal:v17 toChannel:v16 withNullableUniqueStringID:v19 withPayload:v21];
}

void sub_1D2589CBC(unint64_t a1)
{
  type metadata accessor for PhotoGridView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDFB0, &qword_1D2894B78);
  sub_1D2877618();
  if (a1 >> 62)
  {
    v2 = sub_1D2879368();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v13 = MEMORY[0x1E69E7CC0];
    sub_1D2879258();
    if (v2 < 0)
    {
      __break(1u);
      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = 0;
      do
      {
        v5 = v4 + 1;
        MEMORY[0x1D38A1C30]();
        swift_beginAccess();
        sub_1D2870F78();
        swift_unknownObjectRelease();
        sub_1D2879228();
        sub_1D2879268();
        sub_1D2879278();
        sub_1D2879238();
        v4 = v5;
      }

      while (v2 != v5);
    }

    else
    {
      v6 = a1 + 32;
      do
      {
        v6 += 8;
        swift_beginAccess();
        sub_1D2870F78();
        sub_1D2879228();
        sub_1D2879268();
        sub_1D2879278();
        sub_1D2879238();
        --v2;
      }

      while (v2);
    }

    v3 = v13;
  }

  sub_1D257A414(v3, CGRectMake, 0);

  sub_1D2877618();
  sub_1D23C7CA8();
  v7 = sub_1D2878068();
  v8 = sub_1D2878068();
  v9 = sub_1D25D7060(MEMORY[0x1E69E7CC0]);
  v10 = sub_1D2878068();
  v11 = sub_1D2418030(v9);

  if (v11)
  {
    type metadata accessor for IAPayloadKey(0);
    sub_1D22BCFD0(0, &qword_1ED89CC48, 0x1E69E58C0);
    sub_1D258F070(&qword_1ED89CDD0, type metadata accessor for IAPayloadKey, &unk_1D287E68C);
    v12 = sub_1D2877E78();
  }

  else
  {
    v12 = 0;
  }

  [objc_opt_self() asyncSendSignal:v8 toChannel:v7 withNullableUniqueStringID:v10 withPayload:v12];
}

uint64_t sub_1D258A014(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E3A10, &qword_1D2881580);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D28809B0;
  *(inited + 32) = a2;
  sub_1D2870F78();
  a3(inited);
  swift_setDeallocating();
  return swift_arrayDestroy();
}

void sub_1D258A0C0(unint64_t a1)
{
  v2 = v1;
  v4 = sub_1D2871818();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v37 - v10;
  if (a1 >> 62)
  {
    v35 = v9;
    v36 = sub_1D2879368();
    v9 = v35;
    v12 = v36;
  }

  else
  {
    v12 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = MEMORY[0x1E69E7CC0];
  if (!v12)
  {
LABEL_16:
    v31 = sub_1D233DD14(v13);

    v32 = (v2 + *(type metadata accessor for PhotoGridView(0) + 24));
    v34 = *v32;
    v33 = v32[1];
    v40 = v34;
    v41 = v33;
    v39 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE0D0, &qword_1D2894F60);
    sub_1D2877318();
    return;
  }

  v14 = v9;
  v40 = MEMORY[0x1E69E7CC0];
  sub_1D23D8A14(0, v12 & ~(v12 >> 63), 0);
  if ((v12 & 0x8000000000000000) == 0)
  {
    v37[0] = v2;
    v13 = v40;
    v15 = v14;
    if ((v14 & 0xC000000000000001) != 0)
    {
      v16 = 0;
      v37[1] = v5 + 32;
      v38 = (v5 + 16);
      v17 = v4;
      do
      {
        v18 = v15;
        v19 = MEMORY[0x1D38A1C30](v16);
        swift_beginAccess();
        v20 = *(v19 + 16);
        v21 = *(*v20 + 160);
        swift_beginAccess();
        (*v38)(v11, v20 + v21, v17);
        swift_unknownObjectRelease();
        v40 = v13;
        v23 = *(v13 + 16);
        v22 = *(v13 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_1D23D8A14((v22 > 1), v23 + 1, 1);
          v13 = v40;
        }

        ++v16;
        *(v13 + 16) = v23 + 1;
        (*(v5 + 32))(v13 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v23, v11, v17);
        v15 = v18;
      }

      while (v12 != v16);
    }

    else
    {
      v24 = (v14 + 32);
      v25 = v4;
      do
      {
        v26 = *v24;
        swift_beginAccess();
        v27 = *(v26 + 16);
        v28 = *(*v27 + 160);
        swift_beginAccess();
        (*(v5 + 16))(v7, v27 + v28, v25);
        v40 = v13;
        v30 = *(v13 + 16);
        v29 = *(v13 + 24);
        if (v30 >= v29 >> 1)
        {
          sub_1D23D8A14((v29 > 1), v30 + 1, 1);
          v13 = v40;
        }

        *(v13 + 16) = v30 + 1;
        (*(v5 + 32))(v13 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v30, v7, v25);
        ++v24;
        --v12;
      }

      while (v12);
    }

    v2 = v37[0];
    goto LABEL_16;
  }

  __break(1u);
}

uint64_t sub_1D258A46C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 96) = a5;
  *(v6 + 104) = a6;
  *(v6 + 400) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A30, &qword_1D287EFC0);
  *(v6 + 112) = swift_task_alloc();
  v7 = sub_1D2872428();
  *(v6 + 120) = v7;
  *(v6 + 128) = *(v7 - 8);
  *(v6 + 136) = swift_task_alloc();
  v8 = sub_1D2872278();
  *(v6 + 144) = v8;
  *(v6 + 152) = *(v8 - 8);
  *(v6 + 160) = swift_task_alloc();
  v9 = sub_1D2873CB8();
  *(v6 + 168) = v9;
  *(v6 + 176) = *(v9 - 8);
  *(v6 + 184) = swift_task_alloc();
  v10 = sub_1D2872438();
  *(v6 + 192) = v10;
  *(v6 + 200) = *(v10 - 8);
  *(v6 + 208) = swift_task_alloc();
  *(v6 + 216) = swift_task_alloc();
  *(v6 + 224) = sub_1D2878568();
  *(v6 + 232) = sub_1D2878558();
  v12 = sub_1D28784F8();
  *(v6 + 240) = v12;
  *(v6 + 248) = v11;

  return MEMORY[0x1EEE6DFA0](sub_1D258A6C0, v12, v11);
}

uint64_t sub_1D258A6C0()
{
  if (*(v0 + 400) == 1)
  {
    *(v0 + 376) = *(type metadata accessor for PhotoGridView(0) + 20);
    *(v0 + 256) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDFB0, &qword_1D2894B78);
    sub_1D2877618();
    sub_1D23C7CA8();
    v1 = sub_1D2878068();
    v2 = sub_1D2878068();
    v3 = sub_1D25D7060(MEMORY[0x1E69E7CC0]);
    v4 = sub_1D2878068();
    v5 = sub_1D2418030(v3);

    if (v5)
    {
      type metadata accessor for IAPayloadKey(0);
      sub_1D22BCFD0(0, &qword_1ED89CC48, 0x1E69E58C0);
      sub_1D258F070(&qword_1ED89CDD0, type metadata accessor for IAPayloadKey, &unk_1D287E68C);
      v6 = sub_1D2877E78();
    }

    else
    {
      v6 = 0;
    }

    v7 = *(v0 + 104);
    [objc_opt_self() asyncSendSignal:v2 toChannel:v1 withNullableUniqueStringID:v4 withPayload:v6];

    if (v7 >> 62)
    {
      v9 = sub_1D2879368();
      *(v0 + 264) = v9;
      if (v9)
      {
LABEL_7:
        *(v0 + 380) = *MEMORY[0x1E696E450];
        *(v0 + 384) = *MEMORY[0x1E696E468];
        v10 = *(v0 + 104);
        *(v0 + 388) = *MEMORY[0x1E696E448];
        *(v0 + 392) = *MEMORY[0x1E696E460];
        *(v0 + 396) = *MEMORY[0x1E696E458];
        if ((v10 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x1D38A1C30](0);
        }

        else
        {
          if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return MEMORY[0x1EEE6DFA0](v9, v10, v8);
          }

          v11 = sub_1D2870F78();
        }

        *(v0 + 280) = v11;
        *(v0 + 288) = 1;
        *(v0 + 296) = *(v11 + 16);
        sub_1D2870F78();
        *(v0 + 304) = sub_1D2878558();
        v12 = sub_1D28784F8();
        v8 = v13;
        *(v0 + 312) = v12;
        *(v0 + 320) = v13;
        v9 = sub_1D258AA50;
        v10 = v12;

        return MEMORY[0x1EEE6DFA0](v9, v10, v8);
      }
    }

    else
    {
      v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      *(v0 + 264) = v9;
      if (v9)
      {
        goto LABEL_7;
      }
    }
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1D258AA50()
{
  v1 = v0[37];
  swift_beginAccess();
  v2 = *(v1 + 80);
  v0[41] = v2;
  if (v2)
  {
    __swift_project_boxed_opaque_existential_1((v0[37] + 16), *(v0[37] + 40));
    v3 = v2;
    v4 = swift_task_alloc();
    v0[42] = v4;
    *v4 = v0;
    v4[1] = sub_1D258ABAC;
    v5 = v0[27];

    return sub_1D23E4308(v5, v3);
  }

  else
  {

    sub_1D233F184();
    v7 = swift_allocError();
    *v8 = 0;
    swift_willThrow();

    v0[46] = v7;
    v9 = v0[30];
    v10 = v0[31];

    return MEMORY[0x1EEE6DFA0](sub_1D258B520, v9, v10);
  }
}

uint64_t sub_1D258ABAC()
{
  v2 = *v1;
  *(*v1 + 344) = v0;

  v3 = *(v2 + 320);
  v4 = *(v2 + 312);
  if (v0)
  {
    v5 = sub_1D258B4A4;
  }

  else
  {
    v5 = sub_1D258ACE8;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}