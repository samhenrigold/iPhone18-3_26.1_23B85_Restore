float sub_1C5695DE0(uint64_t (*a1)(void))
{
  v2 = v1 + *(a1(0) + 20);
  result = *v2;
  if (*(v2 + 4))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_1C5695E20@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  sub_1C584EFC0();
  result = a1(0);
  v5 = a2 + *(result + 20);
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = a2 + *(result + 24);
  *v6 = 0;
  *(v6 + 4) = 1;
  return result;
}

uint64_t sub_1C5695EA8(uint64_t a1, uint64_t a2)
{
  sub_1C584FEA0();
  sub_1C584F5F0();
  return sub_1C584FEF0();
}

uint64_t sub_1C5695F0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C5703CE0();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1C5695F58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C584FEA0();
  sub_1C584F5F0();
  return sub_1C584FEF0();
}

uint64_t sub_1C5696068()
{
  v1 = *(v0 + *(type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedLibrary(0) + 20));
  if (v1 == 3)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1C5696144(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 32));
  if (v2[1])
  {
    v3 = *v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_1C56961A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 32));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t sub_1C5696204(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 36));
  if (v2[1])
  {
    v3 = *v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_1C5696260(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 36));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t sub_1C56962C4@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC50, &qword_1C586B0C8);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v13 - v5;
  v7 = type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedTransitDeparture(0);
  sub_1C56466CC(v1 + *(v7 + 44), v6, &qword_1EC16EC50, &qword_1C586B0C8);
  v8 = type metadata accessor for MULocation(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1C56EC178(v6, a1, type metadata accessor for MULocation);
  }

  sub_1C584EFC0();
  v10 = a1 + *(v8 + 20);
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a1 + *(v8 + 24);
  *v11 = 0;
  *(v11 + 4) = 1;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C5625230(v6, &qword_1EC16EC50, &qword_1C586B0C8);
  }

  return result;
}

uint64_t sub_1C5696454()
{
  v1 = *(v0 + *(type metadata accessor for WebPlacecardBridge.MUUserInteractionPublisherGuideAction(0) + 20));
  if (v1 == 4)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1C56964B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C5703C8C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1C5696524@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC30, &qword_1C586B0A8);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v15 - v5;
  v7 = type metadata accessor for WebPlacecardBridge.MUUserInteractionAddPhotos(0);
  sub_1C56466CC(v1 + *(v7 + 20), v6, &qword_1EC16EC30, &qword_1C586B0A8);
  v8 = type metadata accessor for WebPlacecardBridge.MUWebMenuButtonBoundingBox(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1C56EC178(v6, a1, type metadata accessor for WebPlacecardBridge.MUWebMenuButtonBoundingBox);
  }

  sub_1C584EFC0();
  v10 = a1 + v8[5];
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a1 + v8[6];
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = a1 + v8[7];
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = a1 + v8[8];
  *v13 = 0;
  *(v13 + 4) = 1;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C5625230(v6, &qword_1EC16EC30, &qword_1C586B0A8);
  }

  return result;
}

uint64_t sub_1C569686C(float a1)
{
  result = type metadata accessor for MULocation(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t sub_1C56968BC(float a1)
{
  result = type metadata accessor for MULocation(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t sub_1C5696924@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x1E69E7CC0];
  v3 = a1(0);
  result = sub_1C584EFC0();
  v5 = (a2 + *(v3 + 24));
  *v5 = 0;
  v5[1] = 0;
  return result;
}

uint64_t sub_1C56969AC(char a1)
{
  result = type metadata accessor for MUUserPreferences(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t sub_1C56969DC(char a1)
{
  result = type metadata accessor for MUUserPreferences(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t sub_1C5696A0C(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 32));
  if (v2[4])
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

uint64_t sub_1C5696A48(int a1)
{
  result = type metadata accessor for MUUserPreferences(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t sub_1C5696A80(char a1)
{
  result = type metadata accessor for MUUserPreferences(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t sub_1C5696AB0(char a1)
{
  result = type metadata accessor for MUUserPreferences(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t sub_1C5696AE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C5703C38();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

unint64_t sub_1C5696B3C(unint64_t result)
{
  if (result >= 3)
  {
    return 3;
  }

  return result;
}

uint64_t sub_1C5696B4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C5703BE4();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

unint64_t sub_1C5696B98@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 3;
  if (result < 3)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

unint64_t *sub_1C5696BBC@<X0>(unint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_1C5696BF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C5703B90();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

unint64_t sub_1C5696C3C@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C562A134(a1);
  *a2 = result;
  return result;
}

unint64_t sub_1C5696C74@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C562A134(*a1);
  *a2 = result;
  return result;
}

int *sub_1C5696CA0@<X0>(uint64_t a1@<X8>)
{
  sub_1C584EFC0();
  result = type metadata accessor for MUUserPreferences(0);
  v3 = (a1 + result[5]);
  *v3 = 0;
  v3[1] = 0;
  *(a1 + result[6]) = 4;
  *(a1 + result[7]) = 3;
  v4 = a1 + result[8];
  *v4 = 0;
  *(v4 + 4) = 1;
  *(a1 + result[9]) = 2;
  *(a1 + result[10]) = 4;
  return result;
}

int *sub_1C5696DD8@<X0>(uint64_t a1@<X8>)
{
  sub_1C584EFC0();
  result = type metadata accessor for MUSendToDevice(0);
  v3 = (a1 + result[5]);
  *v3 = 0;
  v3[1] = 0;
  v4 = (a1 + result[6]);
  *v4 = 0;
  v4[1] = 0;
  v5 = (a1 + result[7]);
  *v5 = 0;
  v5[1] = 0;
  v6 = (a1 + result[8]);
  *v6 = 0;
  v6[1] = 0;
  return result;
}

uint64_t sub_1C5696E6C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC58, &unk_1C586B0D0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v16 - v6;
  v8 = *(type metadata accessor for WebPlacecardBridgeReply(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for WebPlacecardBridgeReply._StorageClass(0);
    v11 = swift_allocObject();
    v12 = v10;
    v10 = v11;
    sub_1C56C86F0(v12);
    *(v2 + v8) = v11;
  }

  sub_1C56EC178(a1, v7, type metadata accessor for WebPlacecardBridgeReply.MUContext);
  v13 = type metadata accessor for WebPlacecardBridgeReply.MUContext(0);
  (*(*(v13 - 8) + 56))(v7, 0, 1, v13);
  v14 = OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__context;
  swift_beginAccess();
  sub_1C56ECE38(v7, v10 + v14, &qword_1EC16EC58, &unk_1C586B0D0);
  return swift_endAccess();
}

int *sub_1C5697020@<X0>(uint64_t a1@<X8>)
{
  sub_1C584EFC0();
  result = type metadata accessor for WebPlacecardBridgeReply.MUAmpArtwork(0);
  v3 = (a1 + result[5]);
  *v3 = 0;
  v3[1] = 0;
  v4 = (a1 + result[6]);
  *v4 = 0;
  v4[1] = 0;
  v5 = (a1 + result[7]);
  *v5 = 0;
  v5[1] = 0;
  v6 = (a1 + result[8]);
  *v6 = 0;
  v6[1] = 0;
  v7 = (a1 + result[9]);
  *v7 = 0;
  v7[1] = 0;
  *(a1 + result[10]) = 2;
  return result;
}

uint64_t sub_1C5697094(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170A90, &unk_1C58783D0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v16 - v6;
  v8 = *(type metadata accessor for WebPlacecardBridgeReply(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for WebPlacecardBridgeReply._StorageClass(0);
    v11 = swift_allocObject();
    v12 = v10;
    v10 = v11;
    sub_1C56C86F0(v12);
    *(v2 + v8) = v11;
  }

  sub_1C56EC178(a1, v7, type metadata accessor for WebPlacecardBridgeReply.MUAmpArtwork);
  v13 = type metadata accessor for WebPlacecardBridgeReply.MUAmpArtwork(0);
  (*(*(v13 - 8) + 56))(v7, 0, 1, v13);
  v14 = OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__ampArtwork;
  swift_beginAccess();
  sub_1C56ECE38(v7, v10 + v14, &qword_1EC170A90, &unk_1C58783D0);
  return swift_endAccess();
}

uint64_t sub_1C5697200@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  v2 = type metadata accessor for WebPlacecardBridgeReply.MUAttributionData(0);
  result = sub_1C584EFC0();
  v4 = (a1 + v2[6]);
  *v4 = 0;
  v4[1] = 0;
  v5 = (a1 + v2[7]);
  *v5 = 0;
  v5[1] = 0;
  v6 = (a1 + v2[8]);
  *v6 = 0;
  v6[1] = 0;
  v7 = (a1 + v2[9]);
  *v7 = 0;
  v7[1] = 0;
  return result;
}

uint64_t sub_1C5697274(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC170A60, &qword_1C586B0E0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v16 - v6;
  v8 = *(type metadata accessor for WebPlacecardBridgeReply(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for WebPlacecardBridgeReply._StorageClass(0);
    v11 = swift_allocObject();
    v12 = v10;
    v10 = v11;
    sub_1C56C86F0(v12);
    *(v2 + v8) = v11;
  }

  sub_1C56EC178(a1, v7, type metadata accessor for WebPlacecardBridgeReply.MUAttributionData);
  v13 = type metadata accessor for WebPlacecardBridgeReply.MUAttributionData(0);
  (*(*(v13 - 8) + 56))(v7, 0, 1, v13);
  v14 = OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__attributionData;
  swift_beginAccess();
  sub_1C56ECE38(v7, v10 + v14, &unk_1EC170A60, &qword_1C586B0E0);
  return swift_endAccess();
}

uint64_t sub_1C56973E0@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC60, &qword_1C586B0E8);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v13 - v5;
  v7 = *(v1 + *(type metadata accessor for WebPlacecardBridgeReply(0) + 20));
  v8 = OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__refreshedMapItem;
  swift_beginAccess();
  sub_1C56466CC(v7 + v8, v6, &qword_1EC16EC60, &qword_1C586B0E8);
  v9 = type metadata accessor for WebPlacecardBridgeReply.MURefreshedMapItem(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1C56EC178(v6, a1, type metadata accessor for WebPlacecardBridgeReply.MURefreshedMapItem);
  }

  *a1 = MEMORY[0x1E69E7CC0];
  sub_1C584EFC0();
  v11 = (a1 + *(v9 + 24));
  *v11 = 0;
  v11[1] = 0;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1C5625230(v6, &qword_1EC16EC60, &qword_1C586B0E8);
  }

  return result;
}

uint64_t sub_1C569758C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC60, &qword_1C586B0E8);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v16 - v6;
  v8 = *(type metadata accessor for WebPlacecardBridgeReply(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for WebPlacecardBridgeReply._StorageClass(0);
    v11 = swift_allocObject();
    v12 = v10;
    v10 = v11;
    sub_1C56C86F0(v12);
    *(v2 + v8) = v11;
  }

  sub_1C56EC178(a1, v7, type metadata accessor for WebPlacecardBridgeReply.MURefreshedMapItem);
  v13 = type metadata accessor for WebPlacecardBridgeReply.MURefreshedMapItem(0);
  (*(*(v13 - 8) + 56))(v7, 0, 1, v13);
  v14 = OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__refreshedMapItem;
  swift_beginAccess();
  sub_1C56ECE38(v7, v10 + v14, &qword_1EC16EC60, &qword_1C586B0E8);
  return swift_endAccess();
}

uint64_t sub_1C5697788(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), void (*a5)(uint64_t), void *a6)
{
  v10 = v6;
  v13 = *(a3(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v6 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a4(0);
    v16 = swift_allocObject();
    v17 = v15;
    v15 = v16;
    a5(v17);
    *(v10 + v13) = v16;
  }

  v18 = (v15 + *a6);
  swift_beginAccess();
  *v18 = a1;
  v18[1] = a2;
}

uint64_t sub_1C569789C@<X0>(uint64_t a1@<X8>)
{
  sub_1C584EFC0();
  v2 = type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall(0);
  *(a1 + *(v2 + 20)) = 13;
  v3 = *(v2 + 24);
  v4 = type metadata accessor for WebPlacecardBridgeReply.MUWebMethodArguments(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1 + v3, 1, 1, v4);
}

uint64_t sub_1C5697924(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C5703B3C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

unint64_t sub_1C5697970@<X0>(_BYTE *a1@<X8>, unint64_t a2@<X0>)
{
  result = sub_1C56EC9C8(a2);
  *a1 = result;
  return result;
}

unint64_t sub_1C56979A8@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C56EC9C8(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1C56979D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C5703AE8();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1C5697A54(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C5703A94();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1C5697AA0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_1C56EC9D8(a2);
  *a1 = result;
  return result;
}

uint64_t sub_1C5697AEC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C56EC9D8(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1C5697B30(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C5703A40();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1C5697B7C@<X0>(_BYTE *a1@<X8>, unint64_t a2@<X0>)
{
  result = sub_1C56ECAD0(a2);
  *a1 = result;
  return result;
}

uint64_t sub_1C5697BB4@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C56ECAD0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1C5697C20(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC50, &qword_1C586B0C8);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v16 - v6;
  v8 = *(type metadata accessor for WebPlacecardBridgeReply.MUContext(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for WebPlacecardBridgeReply.MUContext._StorageClass(0);
    v11 = swift_allocObject();
    v12 = v10;
    v10 = v11;
    sub_1C56CD0F0(v12);
    *(v2 + v8) = v11;
  }

  sub_1C56EC178(a1, v7, type metadata accessor for MULocation);
  v13 = type metadata accessor for MULocation(0);
  (*(*(v13 - 8) + 56))(v7, 0, 1, v13);
  v14 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userLocation;
  swift_beginAccess();
  sub_1C56ECE38(v7, v10 + v14, &qword_1EC16EC50, &qword_1C586B0C8);
  return swift_endAccess();
}

uint64_t sub_1C5697EF4(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), void (*a4)(uint64_t), uint64_t *a5)
{
  v9 = v5;
  v11 = *(a2(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v5 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a3(0);
    v14 = swift_allocObject();
    v15 = v13;
    v13 = v14;
    a4(v15);
    *(v9 + v11) = v14;
  }

  v16 = *a5;
  swift_beginAccess();
  *(v13 + v16) = a1;
}

uint64_t sub_1C5698038(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC70, &qword_1C586B0F8);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v16 - v6;
  v8 = *(type metadata accessor for WebPlacecardBridgeReply.MUContext(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for WebPlacecardBridgeReply.MUContext._StorageClass(0);
    v11 = swift_allocObject();
    v12 = v10;
    v10 = v11;
    sub_1C56CD0F0(v12);
    *(v2 + v8) = v11;
  }

  sub_1C56EC178(a1, v7, type metadata accessor for WebPlacecardBridgeReply.MUUserData);
  v13 = type metadata accessor for WebPlacecardBridgeReply.MUUserData(0);
  (*(*(v13 - 8) + 56))(v7, 0, 1, v13);
  v14 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userData;
  swift_beginAccess();
  sub_1C56ECE38(v7, v10 + v14, &qword_1EC16EC70, &qword_1C586B0F8);
  return swift_endAccess();
}

uint64_t sub_1C569824C(char a1, uint64_t *a2)
{
  v4 = v2;
  v6 = *(type metadata accessor for WebPlacecardBridgeReply.MUContext(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for WebPlacecardBridgeReply.MUContext._StorageClass(0);
    v9 = swift_allocObject();
    v10 = v8;
    v8 = v9;
    sub_1C56CD0F0(v10);
    *(v4 + v6) = v9;
  }

  v11 = *a2;
  result = swift_beginAccess();
  *(v8 + v11) = a1 & 1;
  return result;
}

int *sub_1C5698308@<X0>(uint64_t a1@<X8>)
{
  sub_1C584EFC0();
  result = type metadata accessor for WebPlacecardBridgeReply.MUEtaProvider(0);
  v3 = (a1 + result[5]);
  *v3 = 0;
  v3[1] = 0;
  v4 = a1 + result[6];
  *v4 = 0;
  *(v4 + 4) = 1;
  v5 = (a1 + result[7]);
  *v5 = 0;
  v5[1] = 0;
  v6 = a1 + result[8];
  *v6 = 0;
  *(v6 + 4) = 1;
  return result;
}

uint64_t sub_1C5698370(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC78, &qword_1C586B100);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v16 - v6;
  v8 = *(type metadata accessor for WebPlacecardBridgeReply.MUContext(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for WebPlacecardBridgeReply.MUContext._StorageClass(0);
    v11 = swift_allocObject();
    v12 = v10;
    v10 = v11;
    sub_1C56CD0F0(v12);
    *(v2 + v8) = v11;
  }

  sub_1C56EC178(a1, v7, type metadata accessor for WebPlacecardBridgeReply.MUEtaProvider);
  v13 = type metadata accessor for WebPlacecardBridgeReply.MUEtaProvider(0);
  (*(*(v13 - 8) + 56))(v7, 0, 1, v13);
  v14 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__etaProvider;
  swift_beginAccess();
  sub_1C56ECE38(v7, v10 + v14, &qword_1EC16EC78, &qword_1C586B100);
  return swift_endAccess();
}

int *sub_1C56984DC@<X0>(uint64_t a1@<X8>)
{
  sub_1C584EFC0();
  result = type metadata accessor for WebPlacecardBridgeReply.MUDirectionsMetadata(0);
  *(a1 + result[5]) = 2;
  *(a1 + result[6]) = 2;
  *(a1 + result[7]) = 2;
  *(a1 + result[8]) = 2;
  *(a1 + result[9]) = 2;
  v3 = a1 + result[10];
  *v3 = 0;
  *(v3 + 4) = 1;
  v4 = (a1 + result[11]);
  *v4 = 0;
  v4[1] = 0;
  v5 = a1 + result[12];
  *v5 = 0;
  *(v5 + 4) = 1;
  return result;
}

uint64_t sub_1C5698564(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC80, &qword_1C586B108);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v16 - v6;
  v8 = *(type metadata accessor for WebPlacecardBridgeReply.MUContext(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for WebPlacecardBridgeReply.MUContext._StorageClass(0);
    v11 = swift_allocObject();
    v12 = v10;
    v10 = v11;
    sub_1C56CD0F0(v12);
    *(v2 + v8) = v11;
  }

  sub_1C56EC178(a1, v7, type metadata accessor for WebPlacecardBridgeReply.MUDirectionsMetadata);
  v13 = type metadata accessor for WebPlacecardBridgeReply.MUDirectionsMetadata(0);
  (*(*(v13 - 8) + 56))(v7, 0, 1, v13);
  v14 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__directionsMetadata;
  swift_beginAccess();
  sub_1C56ECE38(v7, v10 + v14, &qword_1EC16EC80, &qword_1C586B108);
  return swift_endAccess();
}

uint64_t sub_1C5698718@<X0>(char *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  v2 = type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions(0);
  sub_1C584EFC0();
  v3 = *(v2 + 24);
  v4 = type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions.MUAxIdArgs(0);
  result = (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  a1[*(v2 + 28)] = 2;
  return result;
}

uint64_t sub_1C56987B4(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC88, &qword_1C586B110);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v16 - v6;
  v8 = *(type metadata accessor for WebPlacecardBridgeReply.MUContext(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for WebPlacecardBridgeReply.MUContext._StorageClass(0);
    v11 = swift_allocObject();
    v12 = v10;
    v10 = v11;
    sub_1C56CD0F0(v12);
    *(v2 + v8) = v11;
  }

  sub_1C56EC178(a1, v7, type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions);
  v13 = type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions(0);
  (*(*(v13 - 8) + 56))(v7, 0, 1, v13);
  v14 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__debugOptions;
  swift_beginAccess();
  sub_1C56ECE38(v7, v10 + v14, &qword_1EC16EC88, &qword_1C586B110);
  return swift_endAccess();
}

uint64_t sub_1C56989E8(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC90, &qword_1C586B118);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v16 - v6;
  v8 = *(type metadata accessor for WebPlacecardBridgeReply.MUContext(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for WebPlacecardBridgeReply.MUContext._StorageClass(0);
    v11 = swift_allocObject();
    v12 = v10;
    v10 = v11;
    sub_1C56CD0F0(v12);
    *(v2 + v8) = v11;
  }

  sub_1C56EC178(a1, v7, type metadata accessor for WebPlacecardBridgeReply.MUPlaceItem);
  v13 = type metadata accessor for WebPlacecardBridgeReply.MUPlaceItem(0);
  (*(*(v13 - 8) + 56))(v7, 0, 1, v13);
  v14 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__placeItem;
  swift_beginAccess();
  sub_1C56ECE38(v7, v10 + v14, &qword_1EC16EC90, &qword_1C586B118);
  return swift_endAccess();
}

int *sub_1C5698B54@<X0>(uint64_t a1@<X8>)
{
  sub_1C584EFC0();
  result = type metadata accessor for WebPlacecardBridgeReply.MUPlacecardOfflineMapProvider(0);
  *(a1 + result[5]) = 2;
  v3 = a1 + result[6];
  *v3 = 0;
  *(v3 + 4) = 1;
  v4 = a1 + result[7];
  *v4 = 0;
  *(v4 + 4) = 1;
  v5 = a1 + result[8];
  *v5 = 0;
  *(v5 + 4) = 1;
  *(a1 + result[9]) = 6;
  v6 = (a1 + result[10]);
  *v6 = 0;
  v6[1] = 0;
  return result;
}

uint64_t sub_1C5698BD8(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC98, &qword_1C586B120);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v16 - v6;
  v8 = *(type metadata accessor for WebPlacecardBridgeReply.MUContext(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for WebPlacecardBridgeReply.MUContext._StorageClass(0);
    v11 = swift_allocObject();
    v12 = v10;
    v10 = v11;
    sub_1C56CD0F0(v12);
    *(v2 + v8) = v11;
  }

  sub_1C56EC178(a1, v7, type metadata accessor for WebPlacecardBridgeReply.MUPlacecardOfflineMapProvider);
  v13 = type metadata accessor for WebPlacecardBridgeReply.MUPlacecardOfflineMapProvider(0);
  (*(*(v13 - 8) + 56))(v7, 0, 1, v13);
  v14 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__placecardOfflineMapProvider;
  swift_beginAccess();
  sub_1C56ECE38(v7, v10 + v14, &qword_1EC16EC98, &qword_1C586B120);
  return swift_endAccess();
}

uint64_t sub_1C5698E1C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ECA0, &qword_1C586B128);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v16 - v6;
  v8 = *(type metadata accessor for WebPlacecardBridgeReply.MUContext(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for WebPlacecardBridgeReply.MUContext._StorageClass(0);
    v11 = swift_allocObject();
    v12 = v10;
    v10 = v11;
    sub_1C56CD0F0(v12);
    *(v2 + v8) = v11;
  }

  sub_1C56EC178(a1, v7, type metadata accessor for MUUserPreferences);
  v13 = type metadata accessor for MUUserPreferences(0);
  (*(*(v13 - 8) + 56))(v7, 0, 1, v13);
  v14 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userPreferences;
  swift_beginAccess();
  sub_1C56ECE38(v7, v10 + v14, &qword_1EC16ECA0, &qword_1C586B128);
  return swift_endAccess();
}

uint64_t sub_1C569901C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), void (*a5)(uint64_t))
{
  v8 = v5;
  v11 = *(a3(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v5 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a4(0);
    v14 = swift_allocObject();
    v15 = v13;
    v13 = v14;
    a5(v15);
    *(v8 + v11) = v14;
  }

  swift_beginAccess();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
}

uint64_t sub_1C56990DC(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for WebPlacecardBridgeReply.MUPlaceItem(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for WebPlacecardBridgeReply.MUPlaceItem._StorageClass(0);
    v7 = swift_allocObject();
    v8 = v6;
    v6 = v7;
    sub_1C56D36B8(v8);
    *(v2 + v4) = v7;
  }

  result = swift_beginAccess();
  *(v6 + 32) = a1 & 1;
  return result;
}

uint64_t sub_1C5699178(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for WebPlacecardBridgeReply.MUPlaceItem(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for WebPlacecardBridgeReply.MUPlaceItem._StorageClass(0);
    v9 = swift_allocObject();
    v10 = v8;
    v8 = v9;
    sub_1C56D36B8(v10);
    *(v3 + v6) = v9;
  }

  swift_beginAccess();
  *(v8 + 40) = a1;
  *(v8 + 48) = a2;
}

int *sub_1C569921C@<X0>(uint64_t a1@<X8>)
{
  sub_1C584EFC0();
  result = type metadata accessor for WebPlacecardBridgeReply.MUPlaceDataAvailability(0);
  *(a1 + result[5]) = 2;
  *(a1 + result[6]) = 2;
  *(a1 + result[7]) = 2;
  *(a1 + result[8]) = 2;
  *(a1 + result[9]) = 2;
  *(a1 + result[10]) = 2;
  return result;
}

uint64_t sub_1C569927C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ECA8, &qword_1C586B130);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v16 - v6;
  v8 = *(type metadata accessor for WebPlacecardBridgeReply.MUPlaceItem(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for WebPlacecardBridgeReply.MUPlaceItem._StorageClass(0);
    v11 = swift_allocObject();
    v12 = v10;
    v10 = v11;
    sub_1C56D36B8(v12);
    *(v2 + v8) = v11;
  }

  sub_1C56EC178(a1, v7, type metadata accessor for WebPlacecardBridgeReply.MUPlaceDataAvailability);
  v13 = type metadata accessor for WebPlacecardBridgeReply.MUPlaceDataAvailability(0);
  (*(*(v13 - 8) + 56))(v7, 0, 1, v13);
  v14 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply11MUPlaceItemP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__placeDataAvailability;
  swift_beginAccess();
  sub_1C56ECE38(v7, v10 + v14, &qword_1EC16ECA8, &qword_1C586B130);
  return swift_endAccess();
}

uint64_t sub_1C5699400@<X0>(void (*a1)(void)@<X0>, void *a2@<X8>)
{
  v3 = MEMORY[0x1E69E7CC0];
  *a2 = MEMORY[0x1E69E7CC0];
  a2[1] = v3;
  a2[2] = v3;
  a2[3] = v3;
  a1(0);
  return sub_1C584EFC0();
}

uint64_t sub_1C569944C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ECB0, &qword_1C586B138);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v16 - v6;
  v8 = *(type metadata accessor for WebPlacecardBridgeReply.MUPlaceItem(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for WebPlacecardBridgeReply.MUPlaceItem._StorageClass(0);
    v11 = swift_allocObject();
    v12 = v10;
    v10 = v11;
    sub_1C56D36B8(v12);
    *(v2 + v8) = v11;
  }

  sub_1C56EC178(a1, v7, type metadata accessor for WebPlacecardBridgeReply.MUContact);
  v13 = type metadata accessor for WebPlacecardBridgeReply.MUContact(0);
  (*(*(v13 - 8) + 56))(v7, 0, 1, v13);
  v14 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply11MUPlaceItemP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__contact;
  swift_beginAccess();
  sub_1C56ECE38(v7, v10 + v14, &qword_1EC16ECB0, &qword_1C586B138);
  return swift_endAccess();
}

uint64_t sub_1C56995B8(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC50, &qword_1C586B0C8);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v16 - v6;
  v8 = *(type metadata accessor for WebPlacecardBridgeReply.MUPlaceItem(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for WebPlacecardBridgeReply.MUPlaceItem._StorageClass(0);
    v11 = swift_allocObject();
    v12 = v10;
    v10 = v11;
    sub_1C56D36B8(v12);
    *(v2 + v8) = v11;
  }

  sub_1C56EC178(a1, v7, type metadata accessor for MULocation);
  v13 = type metadata accessor for MULocation(0);
  (*(*(v13 - 8) + 56))(v7, 0, 1, v13);
  v14 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply11MUPlaceItemP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__coordinates;
  swift_beginAccess();
  sub_1C56ECE38(v7, v10 + v14, &qword_1EC16EC50, &qword_1C586B0C8);
  return swift_endAccess();
}

uint64_t sub_1C56997FC(char a1)
{
  result = type metadata accessor for WebPlacecardBridgeReply.MUPlaceDataAvailability(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t sub_1C569982C(char a1)
{
  result = type metadata accessor for WebPlacecardBridgeReply.MUPlaceDataAvailability(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t sub_1C569985C(char a1)
{
  result = type metadata accessor for WebPlacecardBridgeReply.MUPlaceDataAvailability(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t sub_1C569988C(char a1)
{
  result = type metadata accessor for WebPlacecardBridgeReply.MUPlaceDataAvailability(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t sub_1C56998BC(char a1)
{
  result = type metadata accessor for WebPlacecardBridgeReply.MUPlaceDataAvailability(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t sub_1C56998EC(char a1)
{
  result = type metadata accessor for WebPlacecardBridgeReply.MUPlaceDataAvailability(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t sub_1C569997C(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for WebPlacecardBridgeReply.MUUserData(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for WebPlacecardBridgeReply.MUUserData._StorageClass(0);
    v7 = swift_allocObject();
    v8 = v6;
    v6 = v7;
    sub_1C56D726C(v8);
    *(v2 + v4) = v7;
  }

  result = swift_beginAccess();
  *(v6 + 16) = a1 & 1;
  return result;
}

uint64_t sub_1C5699A18(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for WebPlacecardBridgeReply.MUUserData(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for WebPlacecardBridgeReply.MUUserData._StorageClass(0);
    v7 = swift_allocObject();
    v8 = v6;
    v6 = v7;
    sub_1C56D726C(v8);
    *(v2 + v4) = v7;
  }

  swift_beginAccess();
  *(v6 + 24) = a1;
}

uint64_t sub_1C5699AD0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  sub_1C584EFC0();
  result = a1(0);
  v5 = (a2 + *(result + 20));
  *v5 = 0;
  v5[1] = 0;
  v6 = a2 + *(result + 24);
  *v6 = 0;
  *(v6 + 4) = 1;
  return result;
}

uint64_t sub_1C5699B24(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ECB8, &qword_1C586B140);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v16 - v6;
  v8 = *(type metadata accessor for WebPlacecardBridgeReply.MUUserData(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for WebPlacecardBridgeReply.MUUserData._StorageClass(0);
    v11 = swift_allocObject();
    v12 = v10;
    v10 = v11;
    sub_1C56D726C(v12);
    *(v2 + v8) = v11;
  }

  sub_1C56EC178(a1, v7, type metadata accessor for WebPlacecardBridgeReply.MURapsInReview);
  v13 = type metadata accessor for WebPlacecardBridgeReply.MURapsInReview(0);
  (*(*(v13 - 8) + 56))(v7, 0, 1, v13);
  v14 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply10MUUserDataP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__rapsInReview;
  swift_beginAccess();
  sub_1C56ECE38(v7, v10 + v14, &qword_1EC16ECB8, &qword_1C586B140);
  return swift_endAccess();
}

uint64_t sub_1C5699C90@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ECC0, &qword_1C586B148);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v15 - v5;
  v7 = *(v1 + *(type metadata accessor for WebPlacecardBridgeReply.MUUserData(0) + 20));
  v8 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply10MUUserDataP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__arpSuggestions;
  swift_beginAccess();
  sub_1C56466CC(v7 + v8, v6, &qword_1EC16ECC0, &qword_1C586B148);
  v9 = type metadata accessor for WebPlacecardBridgeReply.MUArpSuggestions(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1C56EC178(v6, a1, type metadata accessor for WebPlacecardBridgeReply.MUArpSuggestions);
  }

  sub_1C584EFC0();
  v11 = (a1 + v9[5]);
  *v11 = 0;
  v11[1] = 0;
  v12 = (a1 + v9[6]);
  *v12 = 0;
  v12[1] = 0;
  *(a1 + v9[7]) = 2;
  *(a1 + v9[8]) = 2;
  v13 = (a1 + v9[9]);
  *v13 = 0;
  v13[1] = 0;
  *(a1 + v9[10]) = 2;
  *(a1 + v9[11]) = 2;
  *(a1 + v9[12]) = 2;
  *(a1 + v9[13]) = 2;
  *(a1 + v9[14]) = 2;
  *(a1 + v9[15]) = 2;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1C5625230(v6, &qword_1EC16ECC0, &qword_1C586B148);
  }

  return result;
}

int *sub_1C5699E70@<X0>(uint64_t a1@<X8>)
{
  sub_1C584EFC0();
  result = type metadata accessor for WebPlacecardBridgeReply.MUArpSuggestions(0);
  v3 = (a1 + result[5]);
  *v3 = 0;
  v3[1] = 0;
  v4 = (a1 + result[6]);
  *v4 = 0;
  v4[1] = 0;
  *(a1 + result[7]) = 2;
  *(a1 + result[8]) = 2;
  v5 = (a1 + result[9]);
  *v5 = 0;
  v5[1] = 0;
  *(a1 + result[10]) = 2;
  *(a1 + result[11]) = 2;
  *(a1 + result[12]) = 2;
  *(a1 + result[13]) = 2;
  *(a1 + result[14]) = 2;
  *(a1 + result[15]) = 2;
  return result;
}

uint64_t sub_1C5699F04(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ECC0, &qword_1C586B148);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v16 - v6;
  v8 = *(type metadata accessor for WebPlacecardBridgeReply.MUUserData(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for WebPlacecardBridgeReply.MUUserData._StorageClass(0);
    v11 = swift_allocObject();
    v12 = v10;
    v10 = v11;
    sub_1C56D726C(v12);
    *(v2 + v8) = v11;
  }

  sub_1C56EC178(a1, v7, type metadata accessor for WebPlacecardBridgeReply.MUArpSuggestions);
  v13 = type metadata accessor for WebPlacecardBridgeReply.MUArpSuggestions(0);
  (*(*(v13 - 8) + 56))(v7, 0, 1, v13);
  v14 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply10MUUserDataP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__arpSuggestions;
  swift_beginAccess();
  sub_1C56ECE38(v7, v10 + v14, &qword_1EC16ECC0, &qword_1C586B148);
  return swift_endAccess();
}

uint64_t sub_1C569A160@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  sub_1C584EFC0();
  result = a1(0);
  v5 = (a2 + *(result + 20));
  *v5 = 0;
  v5[1] = 0;
  v6 = (a2 + *(result + 24));
  *v6 = 0;
  v6[1] = 0;
  return result;
}

uint64_t sub_1C569A1AC(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ECC8, &qword_1C586B150);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v16 - v6;
  v8 = *(type metadata accessor for WebPlacecardBridgeReply.MUUserData(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for WebPlacecardBridgeReply.MUUserData._StorageClass(0);
    v11 = swift_allocObject();
    v12 = v10;
    v10 = v11;
    sub_1C56D726C(v12);
    *(v2 + v8) = v11;
  }

  sub_1C56EC178(a1, v7, type metadata accessor for WebPlacecardBridgeReply.MUUserNote);
  v13 = type metadata accessor for WebPlacecardBridgeReply.MUUserNote(0);
  (*(*(v13 - 8) + 56))(v7, 0, 1, v13);
  v14 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply10MUUserDataP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__placeNote;
  swift_beginAccess();
  sub_1C56ECE38(v7, v10 + v14, &qword_1EC16ECC8, &qword_1C586B150);
  return swift_endAccess();
}

uint64_t sub_1C569A330(int a1)
{
  result = type metadata accessor for WebPlacecardBridgeReply.MUArpRating(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t sub_1C569A3C8(int a1)
{
  result = type metadata accessor for WebPlacecardBridgeReply.MUUserGuide(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

int *sub_1C569A400@<X0>(uint64_t a1@<X8>)
{
  sub_1C584EFC0();
  result = type metadata accessor for WebPlacecardBridgeReply.MUUserGuide(0);
  v3 = (a1 + result[5]);
  *v3 = 0;
  v3[1] = 0;
  v4 = (a1 + result[6]);
  *v4 = 0;
  v4[1] = 0;
  v5 = (a1 + result[7]);
  *v5 = 0;
  v5[1] = 0;
  v6 = a1 + result[8];
  *v6 = 0;
  *(v6 + 4) = 1;
  return result;
}

uint64_t sub_1C569A47C(int a1)
{
  result = type metadata accessor for WebPlacecardBridgeReply.MURapsInReview(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t sub_1C569A4E4(char a1)
{
  result = type metadata accessor for WebPlacecardBridgeReply.MUArpSuggestions(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t sub_1C569A514(char a1)
{
  result = type metadata accessor for WebPlacecardBridgeReply.MUArpSuggestions(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t sub_1C569A55C(char a1)
{
  result = type metadata accessor for WebPlacecardBridgeReply.MUArpSuggestions(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t sub_1C569A58C(char a1)
{
  result = type metadata accessor for WebPlacecardBridgeReply.MUArpSuggestions(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t sub_1C569A5BC(char a1)
{
  result = type metadata accessor for WebPlacecardBridgeReply.MUArpSuggestions(0);
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t sub_1C569A5EC(char a1)
{
  result = type metadata accessor for WebPlacecardBridgeReply.MUArpSuggestions(0);
  *(v1 + *(result + 52)) = a1;
  return result;
}

uint64_t sub_1C569A61C(char a1)
{
  result = type metadata accessor for WebPlacecardBridgeReply.MUArpSuggestions(0);
  *(v1 + *(result + 56)) = a1;
  return result;
}

uint64_t sub_1C569A64C(char a1)
{
  result = type metadata accessor for WebPlacecardBridgeReply.MUArpSuggestions(0);
  *(v1 + *(result + 60)) = a1;
  return result;
}

uint64_t sub_1C569A6C4(float a1)
{
  result = type metadata accessor for WebPlacecardBridgeReply.MUEtaProvider(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

float sub_1C569A714(uint64_t (*a1)(void))
{
  v2 = v1 + *(a1(0) + 32);
  result = *v2;
  if (*(v2 + 4))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_1C569A754(float a1)
{
  result = type metadata accessor for WebPlacecardBridgeReply.MUEtaProvider(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t sub_1C569A804(char a1)
{
  result = type metadata accessor for WebPlacecardBridgeReply.MUAmpArtwork(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t sub_1C569A8AC()
{
  v1 = *(v0 + *(type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall(0) + 20));
  if (v1 == 13)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1C569A8D8(char a1)
{
  result = type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

void sub_1C569A908(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ECD0, &qword_1C586B158);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v12 - v5;
  v7 = type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall(0);
  sub_1C56466CC(v1 + *(v7 + 24), v6, &qword_1EC16ECD0, &qword_1C586B158);
  v8 = type metadata accessor for WebPlacecardBridgeReply.MUWebMethodArguments(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) == 1)
  {
    sub_1C584EFC0();
    v10 = *(v8 + 20);
    if (qword_1EC176040 != -1)
    {
      swift_once();
    }

    *(a1 + v10) = qword_1EC176048;
    v11 = v9(v6, 1, v8);

    if (v11 != 1)
    {
      sub_1C5625230(v6, &qword_1EC16ECD0, &qword_1C586B158);
    }
  }

  else
  {
    sub_1C56EC178(v6, a1, type metadata accessor for WebPlacecardBridgeReply.MUWebMethodArguments);
  }
}

uint64_t sub_1C569AAB0(uint64_t a1)
{
  v3 = *(type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall(0) + 24);
  sub_1C5625230(v1 + v3, &qword_1EC16ECD0, &qword_1C586B158);
  sub_1C56EC178(a1, v1 + v3, type metadata accessor for WebPlacecardBridgeReply.MUWebMethodArguments);
  v4 = type metadata accessor for WebPlacecardBridgeReply.MUWebMethodArguments(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

BOOL sub_1C569AB68(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v17 - v11;
  v13 = a3(0);
  sub_1C56466CC(v4 + *(v13 + 24), v12, a1, a2);
  v14 = a4(0);
  v15 = (*(*(v14 - 8) + 48))(v12, 1, v14) != 1;
  sub_1C5625230(v12, a1, a2);
  return v15;
}

uint64_t sub_1C569AC7C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ECD8, &qword_1C586B160);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v16 - v6;
  v8 = *(type metadata accessor for WebPlacecardBridgeReply.MUWebMethodArguments(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for WebPlacecardBridgeReply.MUWebMethodArguments._StorageClass(0);
    v11 = swift_allocObject();
    v12 = v10;
    v10 = v11;
    sub_1C56DE4E8(v12);
    *(v2 + v8) = v11;
  }

  sub_1C56EC178(a1, v7, type metadata accessor for WebPlacecardBridgeReply.MUCardExpansionArgs);
  v13 = type metadata accessor for WebPlacecardBridgeReply.MUCardExpansionArgs(0);
  (*(*(v13 - 8) + 56))(v7, 0, 1, v13);
  v14 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__cardExpansion;
  swift_beginAccess();
  sub_1C56ECE38(v7, v10 + v14, &qword_1EC16ECD8, &qword_1C586B160);
  return swift_endAccess();
}

uint64_t sub_1C569ADE8(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC78, &qword_1C586B100);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v16 - v6;
  v8 = *(type metadata accessor for WebPlacecardBridgeReply.MUWebMethodArguments(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for WebPlacecardBridgeReply.MUWebMethodArguments._StorageClass(0);
    v11 = swift_allocObject();
    v12 = v10;
    v10 = v11;
    sub_1C56DE4E8(v12);
    *(v2 + v8) = v11;
  }

  sub_1C56EC178(a1, v7, type metadata accessor for WebPlacecardBridgeReply.MUEtaProvider);
  v13 = type metadata accessor for WebPlacecardBridgeReply.MUEtaProvider(0);
  (*(*(v13 - 8) + 56))(v7, 0, 1, v13);
  v14 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__etaProvider;
  swift_beginAccess();
  sub_1C56ECE38(v7, v10 + v14, &qword_1EC16EC78, &qword_1C586B100);
  return swift_endAccess();
}

uint64_t sub_1C569AF54(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC70, &qword_1C586B0F8);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v16 - v6;
  v8 = *(type metadata accessor for WebPlacecardBridgeReply.MUWebMethodArguments(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for WebPlacecardBridgeReply.MUWebMethodArguments._StorageClass(0);
    v11 = swift_allocObject();
    v12 = v10;
    v10 = v11;
    sub_1C56DE4E8(v12);
    *(v2 + v8) = v11;
  }

  sub_1C56EC178(a1, v7, type metadata accessor for WebPlacecardBridgeReply.MUUserData);
  v13 = type metadata accessor for WebPlacecardBridgeReply.MUUserData(0);
  (*(*(v13 - 8) + 56))(v7, 0, 1, v13);
  v14 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userData;
  swift_beginAccess();
  sub_1C56ECE38(v7, v10 + v14, &qword_1EC16EC70, &qword_1C586B0F8);
  return swift_endAccess();
}

uint64_t sub_1C569B0C0(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC80, &qword_1C586B108);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v16 - v6;
  v8 = *(type metadata accessor for WebPlacecardBridgeReply.MUWebMethodArguments(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for WebPlacecardBridgeReply.MUWebMethodArguments._StorageClass(0);
    v11 = swift_allocObject();
    v12 = v10;
    v10 = v11;
    sub_1C56DE4E8(v12);
    *(v2 + v8) = v11;
  }

  sub_1C56EC178(a1, v7, type metadata accessor for WebPlacecardBridgeReply.MUDirectionsMetadata);
  v13 = type metadata accessor for WebPlacecardBridgeReply.MUDirectionsMetadata(0);
  (*(*(v13 - 8) + 56))(v7, 0, 1, v13);
  v14 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__directionsMetadata;
  swift_beginAccess();
  sub_1C56ECE38(v7, v10 + v14, &qword_1EC16EC80, &qword_1C586B108);
  return swift_endAccess();
}

uint64_t sub_1C569B22C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ECE0, &qword_1C586B168);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v14 - v5;
  v7 = *(v1 + *(type metadata accessor for WebPlacecardBridgeReply.MUWebMethodArguments(0) + 20));
  v8 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__menuItemTap;
  swift_beginAccess();
  sub_1C56466CC(v7 + v8, v6, &qword_1EC16ECE0, &qword_1C586B168);
  v9 = type metadata accessor for WebPlacecardBridgeReply.MUMenuItemTapArgs(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1C56EC178(v6, a1, type metadata accessor for WebPlacecardBridgeReply.MUMenuItemTapArgs);
  }

  sub_1C584EFC0();
  v11 = (a1 + v9[5]);
  *v11 = 0;
  v11[1] = 0;
  v12 = (a1 + v9[6]);
  *v12 = 0;
  v12[1] = 0;
  *(a1 + v9[7]) = 3;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1C5625230(v6, &qword_1EC16ECE0, &qword_1C586B168);
  }

  return result;
}

int *sub_1C569B3E0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  sub_1C584EFC0();
  result = a1(0);
  v5 = (a2 + result[5]);
  *v5 = 0;
  v5[1] = 0;
  v6 = (a2 + result[6]);
  *v6 = 0;
  v6[1] = 0;
  *(a2 + result[7]) = 3;
  return result;
}

uint64_t sub_1C569B438(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ECE0, &qword_1C586B168);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v16 - v6;
  v8 = *(type metadata accessor for WebPlacecardBridgeReply.MUWebMethodArguments(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for WebPlacecardBridgeReply.MUWebMethodArguments._StorageClass(0);
    v11 = swift_allocObject();
    v12 = v10;
    v10 = v11;
    sub_1C56DE4E8(v12);
    *(v2 + v8) = v11;
  }

  sub_1C56EC178(a1, v7, type metadata accessor for WebPlacecardBridgeReply.MUMenuItemTapArgs);
  v13 = type metadata accessor for WebPlacecardBridgeReply.MUMenuItemTapArgs(0);
  (*(*(v13 - 8) + 56))(v7, 0, 1, v13);
  v14 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__menuItemTap;
  swift_beginAccess();
  sub_1C56ECE38(v7, v10 + v14, &qword_1EC16ECE0, &qword_1C586B168);
  return swift_endAccess();
}

uint64_t sub_1C569B5BC(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ECE8, &qword_1C586B170);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v16 - v6;
  v8 = *(type metadata accessor for WebPlacecardBridgeReply.MUWebMethodArguments(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for WebPlacecardBridgeReply.MUWebMethodArguments._StorageClass(0);
    v11 = swift_allocObject();
    v12 = v10;
    v10 = v11;
    sub_1C56DE4E8(v12);
    *(v2 + v8) = v11;
  }

  sub_1C56EC178(a1, v7, type metadata accessor for WebPlacecardBridgeReply.MUVGVehiclesArgs);
  v13 = type metadata accessor for WebPlacecardBridgeReply.MUVGVehiclesArgs(0);
  (*(*(v13 - 8) + 56))(v7, 0, 1, v13);
  v14 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__vgVehicles;
  swift_beginAccess();
  sub_1C56ECE38(v7, v10 + v14, &qword_1EC16ECE8, &qword_1C586B170);
  return swift_endAccess();
}

uint64_t sub_1C569B728(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC98, &qword_1C586B120);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v16 - v6;
  v8 = *(type metadata accessor for WebPlacecardBridgeReply.MUWebMethodArguments(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for WebPlacecardBridgeReply.MUWebMethodArguments._StorageClass(0);
    v11 = swift_allocObject();
    v12 = v10;
    v10 = v11;
    sub_1C56DE4E8(v12);
    *(v2 + v8) = v11;
  }

  sub_1C56EC178(a1, v7, type metadata accessor for WebPlacecardBridgeReply.MUPlacecardOfflineMapProvider);
  v13 = type metadata accessor for WebPlacecardBridgeReply.MUPlacecardOfflineMapProvider(0);
  (*(*(v13 - 8) + 56))(v7, 0, 1, v13);
  v14 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__placecardOfflineMapProvider;
  swift_beginAccess();
  sub_1C56ECE38(v7, v10 + v14, &qword_1EC16EC98, &qword_1C586B120);
  return swift_endAccess();
}

uint64_t sub_1C569B894@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ECF0, &qword_1C586B178);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v12 - v5;
  v7 = *(v1 + *(type metadata accessor for WebPlacecardBridgeReply.MUWebMethodArguments(0) + 20));
  v8 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__nativeUitap;
  swift_beginAccess();
  sub_1C56466CC(v7 + v8, v6, &qword_1EC16ECF0, &qword_1C586B178);
  v9 = type metadata accessor for WebPlacecardBridgeReply.MUNativeUITapArgs(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1C56EC178(v6, a1, type metadata accessor for WebPlacecardBridgeReply.MUNativeUITapArgs);
  }

  sub_1C584EFC0();
  *(a1 + *(v9 + 20)) = 3;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1C5625230(v6, &qword_1EC16ECF0, &qword_1C586B178);
  }

  return result;
}

uint64_t sub_1C569BA34(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ECF0, &qword_1C586B178);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v16 - v6;
  v8 = *(type metadata accessor for WebPlacecardBridgeReply.MUWebMethodArguments(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for WebPlacecardBridgeReply.MUWebMethodArguments._StorageClass(0);
    v11 = swift_allocObject();
    v12 = v10;
    v10 = v11;
    sub_1C56DE4E8(v12);
    *(v2 + v8) = v11;
  }

  sub_1C56EC178(a1, v7, type metadata accessor for WebPlacecardBridgeReply.MUNativeUITapArgs);
  v13 = type metadata accessor for WebPlacecardBridgeReply.MUNativeUITapArgs(0);
  (*(*(v13 - 8) + 56))(v7, 0, 1, v13);
  v14 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__nativeUitap;
  swift_beginAccess();
  sub_1C56ECE38(v7, v10 + v14, &qword_1EC16ECF0, &qword_1C586B178);
  return swift_endAccess();
}

uint64_t sub_1C569BBBC(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ECF8, &qword_1C586B180);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v16 - v6;
  v8 = *(type metadata accessor for WebPlacecardBridgeReply.MUWebMethodArguments(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for WebPlacecardBridgeReply.MUWebMethodArguments._StorageClass(0);
    v11 = swift_allocObject();
    v12 = v10;
    v10 = v11;
    sub_1C56DE4E8(v12);
    *(v2 + v8) = v11;
  }

  sub_1C56EC178(a1, v7, type metadata accessor for WebPlacecardBridgeReply.MUWebViewVisibilityArgs);
  v13 = type metadata accessor for WebPlacecardBridgeReply.MUWebViewVisibilityArgs(0);
  (*(*(v13 - 8) + 56))(v7, 0, 1, v13);
  v14 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__visibility;
  swift_beginAccess();
  sub_1C56ECE38(v7, v10 + v14, &qword_1EC16ECF8, &qword_1C586B180);
  return swift_endAccess();
}

uint64_t sub_1C569BD54@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  sub_1C584EFC0();
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a3 + v6, 1, 1, v7);
}

uint64_t sub_1C569BDE8(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ED00, &qword_1C586B188);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v16 - v6;
  v8 = *(type metadata accessor for WebPlacecardBridgeReply.MUWebMethodArguments(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for WebPlacecardBridgeReply.MUWebMethodArguments._StorageClass(0);
    v11 = swift_allocObject();
    v12 = v10;
    v10 = v11;
    sub_1C56DE4E8(v12);
    *(v2 + v8) = v11;
  }

  sub_1C56EC178(a1, v7, type metadata accessor for WebPlacecardBridgeReply.MUUserPreferencesArgs);
  v13 = type metadata accessor for WebPlacecardBridgeReply.MUUserPreferencesArgs(0);
  (*(*(v13 - 8) + 56))(v7, 0, 1, v13);
  v14 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userPreferences;
  swift_beginAccess();
  sub_1C56ECE38(v7, v10 + v14, &qword_1EC16ED00, &qword_1C586B188);
  return swift_endAccess();
}

uint64_t sub_1C569BF70(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ED08, &qword_1C586B190);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v16 - v6;
  v8 = *(type metadata accessor for WebPlacecardBridgeReply.MUWebMethodArguments(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for WebPlacecardBridgeReply.MUWebMethodArguments._StorageClass(0);
    v11 = swift_allocObject();
    v12 = v10;
    v10 = v11;
    sub_1C56DE4E8(v12);
    *(v2 + v8) = v11;
  }

  sub_1C56EC178(a1, v7, type metadata accessor for WebPlacecardBridgeReply.MUPerfMarkers);
  v13 = type metadata accessor for WebPlacecardBridgeReply.MUPerfMarkers(0);
  (*(*(v13 - 8) + 56))(v7, 0, 1, v13);
  v14 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__perfMarkers;
  swift_beginAccess();
  sub_1C56ECE38(v7, v10 + v14, &qword_1EC16ED08, &qword_1C586B190);
  return swift_endAccess();
}

uint64_t sub_1C569C0DC(float a1)
{
  result = type metadata accessor for WebPlacecardBridgeReply.MUCardExpansionArgs(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t sub_1C569C114(float a1)
{
  result = type metadata accessor for WebPlacecardBridgeReply.MUCardExpansionArgs(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t sub_1C569C14C(char a1)
{
  result = type metadata accessor for WebPlacecardBridgeReply.MUDirectionsMetadata(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t sub_1C569C17C(char a1)
{
  result = type metadata accessor for WebPlacecardBridgeReply.MUDirectionsMetadata(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t sub_1C569C1AC(char a1)
{
  result = type metadata accessor for WebPlacecardBridgeReply.MUDirectionsMetadata(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t sub_1C569C1DC(char a1)
{
  result = type metadata accessor for WebPlacecardBridgeReply.MUDirectionsMetadata(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t sub_1C569C20C(char a1)
{
  result = type metadata accessor for WebPlacecardBridgeReply.MUDirectionsMetadata(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t sub_1C569C23C(float a1)
{
  result = type metadata accessor for WebPlacecardBridgeReply.MUDirectionsMetadata(0);
  v4 = v1 + *(result + 40);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t sub_1C569C28C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 44));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t sub_1C569C2D8(float a1)
{
  result = type metadata accessor for WebPlacecardBridgeReply.MUDirectionsMetadata(0);
  v4 = v1 + *(result + 48);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t sub_1C569C328(uint64_t a1)
{
  v3 = *(type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions(0) + 24);
  sub_1C5625230(v1 + v3, &qword_1EC16ED10, &qword_1C586B198);
  sub_1C56EC178(a1, v1 + v3, type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions.MUAxIdArgs);
  v4 = type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions.MUAxIdArgs(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t sub_1C569C3E0(char a1)
{
  result = type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t sub_1C569C4B8(char a1)
{
  result = type metadata accessor for WebPlacecardBridgeReply.MUMenuItemTapArgs(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t sub_1C569C4E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C57039EC();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1C569C544(char a1)
{
  result = type metadata accessor for WebPlacecardBridgeReply.MUPlacecardOfflineMapProvider(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t sub_1C569C574(float a1)
{
  result = type metadata accessor for WebPlacecardBridgeReply.MUPlacecardOfflineMapProvider(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

float sub_1C569C5AC(uint64_t (*a1)(void))
{
  v2 = v1 + *(a1(0) + 28);
  result = *v2;
  if (*(v2 + 4))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_1C569C5EC(float a1)
{
  result = type metadata accessor for WebPlacecardBridgeReply.MUPlacecardOfflineMapProvider(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t sub_1C569C624(float a1)
{
  result = type metadata accessor for WebPlacecardBridgeReply.MUPlacecardOfflineMapProvider(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t sub_1C569C65C()
{
  v1 = *(v0 + *(type metadata accessor for WebPlacecardBridgeReply.MUPlacecardOfflineMapProvider(0) + 36));
  if (v1 == 6)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1C569C688(char a1)
{
  result = type metadata accessor for WebPlacecardBridgeReply.MUPlacecardOfflineMapProvider(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t sub_1C569C700@<X0>(_BYTE *a1@<X8>)
{
  *a1 = 2;
  v2 = type metadata accessor for WebPlacecardBridgeReply.MUFeatureFlag(0);
  result = sub_1C584EFC0();
  v4 = &a1[*(v2 + 24)];
  *v4 = 0;
  v4[1] = 0;
  v5 = &a1[*(v2 + 28)];
  *v5 = 0;
  v5[1] = 0;
  return result;
}

uint64_t sub_1C569C758(char a1)
{
  result = type metadata accessor for WebPlacecardBridgeReply.MUNativeUITapArgs(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t sub_1C569C788(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C5703998();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1C569C7E4(char a1)
{
  result = type metadata accessor for WebPlacecardBridgeReply.MUWebViewVisibilityArgs(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t sub_1C569C814@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ECA0, &qword_1C586B128);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v13 - v5;
  v7 = type metadata accessor for WebPlacecardBridgeReply.MUUserPreferencesArgs(0);
  sub_1C56466CC(v1 + *(v7 + 20), v6, &qword_1EC16ECA0, &qword_1C586B128);
  v8 = type metadata accessor for MUUserPreferences(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1C56EC178(v6, a1, type metadata accessor for MUUserPreferences);
  }

  sub_1C584EFC0();
  v10 = (a1 + v8[5]);
  *v10 = 0;
  v10[1] = 0;
  *(a1 + v8[6]) = 4;
  *(a1 + v8[7]) = 3;
  v11 = a1 + v8[8];
  *v11 = 0;
  *(v11 + 4) = 1;
  *(a1 + v8[9]) = 2;
  *(a1 + v8[10]) = 4;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C5625230(v6, &qword_1EC16ECA0, &qword_1C586B128);
  }

  return result;
}

uint64_t sub_1C569C9B4(uint64_t a1)
{
  v3 = *(type metadata accessor for WebPlacecardBridgeReply.MUUserPreferencesArgs(0) + 20);
  sub_1C5625230(v1 + v3, &qword_1EC16ECA0, &qword_1C586B128);
  sub_1C56EC178(a1, v1 + v3, type metadata accessor for MUUserPreferences);
  v4 = type metadata accessor for MUUserPreferences(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t sub_1C569CA6C(char a1)
{
  result = type metadata accessor for WebPlacecardBridgeReply.MUPerfMarkers(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t sub_1C569CAEC@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ED18, &qword_1C586B1A0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v13 - v5;
  v7 = type metadata accessor for WebBridgeReply(0);
  sub_1C56466CC(v1 + *(v7 + 24), v6, &qword_1EC16ED18, &qword_1C586B1A0);
  v8 = type metadata accessor for WebBridgeReply.MUWebBridgeReplyResult(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1C56EC178(v6, a1, type metadata accessor for WebBridgeReply.MUWebBridgeReplyResult);
  }

  sub_1C584EFC0();
  v10 = *(v8 + 20);
  v11 = type metadata accessor for WebBridgeReply.MUPerfMarkerResult(0);
  (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C5625230(v6, &qword_1EC16ED18, &qword_1C586B1A0);
  }

  return result;
}

uint64_t sub_1C569CCC0@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ED20, &qword_1C586B1A8);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v11 - v5;
  v7 = type metadata accessor for WebBridgeReply.MUWebBridgeReplyResult(0);
  sub_1C56466CC(v1 + *(v7 + 20), v6, &qword_1EC16ED20, &qword_1C586B1A8);
  v8 = type metadata accessor for WebBridgeReply.MUPerfMarkerResult(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1C56EC178(v6, a1, type metadata accessor for WebBridgeReply.MUPerfMarkerResult);
  }

  *a1 = MEMORY[0x1E69E7CC0];
  sub_1C584EFC0();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C5625230(v6, &qword_1EC16ED20, &qword_1C586B1A8);
  }

  return result;
}

uint64_t sub_1C569CE24()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC18F830);
  __swift_project_value_buffer(v0, qword_1EC18F830);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C5867980;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "MULibraryPlaceSavedStateUnknown";
  *(v6 + 8) = 31;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "MULibraryPlaceSavedStateSaved";
  *(v10 + 1) = 29;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "MULibraryPlaceSavedStateNotSaved";
  *(v11 + 8) = 32;
  *(v11 + 16) = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C569D058()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC18FAE0);
  __swift_project_value_buffer(v0, qword_1EC18FAE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1C586AE10;
  v4 = v26 + v3;
  v5 = v26 + v3 + v1[14];
  *(v26 + v3) = 0;
  *v5 = "MUVGChargingConnectorTypeNone";
  *(v5 + 8) = 29;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1C584F230();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v26 + v3 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "MUVGChargingConnectorTypeJ1772";
  *(v9 + 8) = 30;
  *(v9 + 16) = 2;
  v8();
  v10 = (v26 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "MUVGChargingConnectorTypeCCS1";
  *(v11 + 1) = 29;
  v11[16] = 2;
  v8();
  v12 = (v26 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "MUVGChargingConnectorTypeCCS2";
  *(v13 + 1) = 29;
  v13[16] = 2;
  v8();
  v14 = (v26 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "MUVGChargingConnectorTypeCHAdeMO";
  *(v15 + 1) = 32;
  v15[16] = 2;
  v8();
  v16 = (v26 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "MUVGChargingConnectorTypeGBT_AC";
  *(v17 + 1) = 31;
  v17[16] = 2;
  v8();
  v18 = (v26 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "MUVGChargingConnectorTypeGBT_DC";
  *(v19 + 1) = 31;
  v19[16] = 2;
  v8();
  v20 = (v26 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "MUVGChargingConnectorTypeNACS_DC";
  *(v21 + 1) = 32;
  v21[16] = 2;
  v8();
  v22 = v26 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "MUVGChargingConnectorTypeMennekes";
  *(v22 + 8) = 33;
  *(v22 + 16) = 2;
  v8();
  v23 = (v26 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "MUVGChargingConnectorTypeNACS_AC";
  *(v24 + 1) = 32;
  v24[16] = 2;
  v8();
  return sub_1C584F240();
}

uint64_t sub_1C569D428()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC18FAF8);
  __swift_project_value_buffer(v0, qword_1EC18FAF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C5867990;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "argument";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C569D5F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C584F050();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for WebPlacecardBridge(0);
        sub_1C5704178();
        sub_1C584F090();
      }

      else if (result == 2)
      {
        type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument(0);
        sub_1C56EF190(&qword_1EC16D660, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument, &unk_1C586D5D0);
        sub_1C584F0F0();
      }

      result = sub_1C584F050();
    }
  }

  return result;
}

uint64_t sub_1C569D714(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for WebPlacecardBridge(0);
  if (*(v3 + *(result + 24)) == 19)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    sub_1C5704178();
    result = sub_1C584F1A0();
    if (v4)
    {
      return result;
    }
  }

  if (*(*v3 + 16))
  {
    type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument(0);
    sub_1C56EF190(&qword_1EC16D660, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument, &unk_1C586D5D0);
    sub_1C584F210();
  }

  return sub_1C584EFB0();
}

uint64_t sub_1C569D850@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x1E69E7CC0];
  result = sub_1C584EFC0();
  *(a2 + *(a1 + 24)) = 19;
  return result;
}

uint64_t sub_1C569D908(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16FB60, type metadata accessor for WebPlacecardBridge, &unk_1C586D300);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C569D9A8(uint64_t a1)
{
  sub_1C56EF190(&qword_1EC16D460, type metadata accessor for WebPlacecardBridge, &unk_1C586D288);

  return sub_1C584F160();
}

uint64_t sub_1C569DA14(uint64_t a1, uint64_t a2)
{
  sub_1C56EF190(&qword_1EC16D460, type metadata accessor for WebPlacecardBridge, &unk_1C586D288);

  return sub_1C584F170();
}

uint64_t sub_1C569DA94()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC18FB10);
  __swift_project_value_buffer(v0, qword_1EC18FB10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_1C586AE20;
  v4 = v43 + v3;
  v5 = v43 + v3 + v1[14];
  *(v43 + v3) = 0;
  *v5 = "CONTEXT";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1C584F230();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v43 + v3 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "USER_INTERACTION";
  *(v9 + 8) = 16;
  *(v9 + 16) = 2;
  v8();
  v10 = (v43 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "INIT_UI_MENU_BUTTON";
  *(v11 + 1) = 19;
  v11[16] = 2;
  v8();
  v12 = (v43 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "GET_ICON";
  *(v13 + 1) = 8;
  v13[16] = 2;
  v8();
  v14 = (v43 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "GET_AMP_ARTWORK";
  *(v15 + 1) = 15;
  v15[16] = 2;
  v8();
  v16 = (v43 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "GET_ATTRIBUTION_DATA";
  *(v17 + 1) = 20;
  v17[16] = 2;
  v8();
  v18 = (v43 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "PAGE_RESIZED";
  *(v19 + 1) = 12;
  v19[16] = 2;
  v8();
  v20 = (v43 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "REFRESH_MAP_ITEM";
  *(v21 + 1) = 16;
  v21[16] = 2;
  v8();
  v22 = v43 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "LOG_WEB_BUNDLE_ERROR";
  *(v22 + 8) = 20;
  *(v22 + 16) = 2;
  v8();
  v23 = (v43 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "GET_TRANSIT_LABEL";
  *(v24 + 1) = 17;
  v24[16] = 2;
  v8();
  v25 = (v43 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "SEARCH_NEARBY_PLACES";
  *(v26 + 1) = 20;
  v26[16] = 2;
  v8();
  v27 = (v43 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "GET_ROUTE_SNAPSHOT";
  *(v28 + 1) = 18;
  v28[16] = 2;
  v8();
  v29 = (v43 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "SEND_ANALYTICS";
  *(v30 + 1) = 14;
  v30[16] = 2;
  v8();
  v31 = (v43 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "INIT_ACTION_BAR";
  *(v32 + 1) = 15;
  v32[16] = 2;
  v8();
  v33 = (v43 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "SHOW_STICKY_HEADER";
  *(v34 + 1) = 18;
  v34[16] = 2;
  v8();
  v35 = (v43 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "LOAD_COMPLETED";
  *(v36 + 1) = 14;
  v36[16] = 2;
  v8();
  v37 = v43 + v3 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 16;
  *v37 = "SET_INSETS_FOR_HEADER";
  *(v37 + 8) = 21;
  *(v37 + 16) = 2;
  v8();
  v38 = (v43 + v3 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 17;
  *v39 = "GET_WEBVIEW_IS_CURRENT";
  *(v39 + 1) = 22;
  v39[16] = 2;
  v8();
  v40 = (v43 + v3 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 18;
  *v41 = "INIT_TEXT_SELECTION_VIEW";
  *(v41 + 1) = 24;
  v41[16] = 2;
  v8();
  return sub_1C584F240();
}

uint64_t sub_1C569E08C()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC18FB28);
  __swift_project_value_buffer(v0, qword_1EC18FB28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C5867990;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "USER_INTERACTION_ARGUMENTS";
  *(v6 + 8) = 26;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "UI_MENU_BUTTON_ARGUMENTS";
  *(v10 + 1) = 24;
  v10[16] = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C569E278()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC18FB40);
  __swift_project_value_buffer(v0, qword_1EC18FB40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C5867980;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "TRANSIT_SCHEDULE";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "EV_CHARGER";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "PRELOAD";
  *(v11 + 8) = 7;
  *(v11 + 16) = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C569E4AC()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC18FB58);
  __swift_project_value_buffer(v0, qword_1EC18FB58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C586AE30;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "UNSPECIFIED";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 5;
  *v10 = "SHORT";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 6;
  *v12 = "SHORT_NAV";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 7;
  *v14 = "NO";
  *(v14 + 1) = 2;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 8;
  *v15 = "NO_WITH_TIME";
  *(v15 + 8) = 12;
  *(v15 + 16) = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C569E75C()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC18FB70);
  __swift_project_value_buffer(v0, qword_1EC18FB70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v112 = swift_allocObject();
  *(v112 + 16) = xmmword_1C586AE40;
  v4 = v112 + v3;
  v5 = v112 + v3 + v1[14];
  *(v112 + v3) = 0;
  *v5 = "UNKNOWN";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1C584F230();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v112 + v3 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "USER_GUIDE";
  *(v9 + 8) = 10;
  *(v9 + 16) = 2;
  v8();
  v10 = (v112 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "EXPLORE_GUIDES";
  *(v11 + 1) = 14;
  v11[16] = 2;
  v8();
  v12 = (v112 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "ARP_RATING";
  *(v13 + 1) = 10;
  v13[16] = 2;
  v8();
  v14 = (v112 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "ARP_SUGGESTIONS";
  *(v15 + 1) = 15;
  v15[16] = 2;
  v8();
  v16 = (v112 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "RAPS_IN_REVIEW";
  *(v17 + 1) = 14;
  v17[16] = 2;
  v8();
  v18 = (v112 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "REPORT_AN_ISSUE";
  *(v19 + 1) = 15;
  v19[16] = 2;
  v8();
  v20 = (v112 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "SHARE";
  *(v21 + 1) = 5;
  v21[16] = 2;
  v8();
  v22 = v112 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "CALL";
  *(v22 + 8) = 4;
  *(v22 + 16) = 2;
  v8();
  v23 = (v112 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "MESSAGE";
  *(v24 + 1) = 7;
  v24[16] = 2;
  v8();
  v25 = (v112 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "WEBSITE";
  *(v26 + 1) = 7;
  v26[16] = 2;
  v8();
  v27 = (v112 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "ACTION_GROUP";
  *(v28 + 1) = 12;
  v28[16] = 2;
  v8();
  v29 = (v112 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "DIRECTIONS";
  *(v30 + 1) = 10;
  v30[16] = 2;
  v8();
  v31 = (v112 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "FLYOVER";
  *(v32 + 1) = 7;
  v32[16] = 2;
  v8();
  v33 = (v112 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "OFFLINE_DOWNLOAD";
  *(v34 + 1) = 16;
  v34[16] = 2;
  v8();
  v35 = (v112 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "ADD_PHOTOS";
  *(v36 + 1) = 10;
  v36[16] = 2;
  v8();
  v37 = v112 + v3 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 16;
  *v37 = "ADD_TO_FAVORITES";
  *(v37 + 8) = 16;
  *(v37 + 16) = 2;
  v8();
  v38 = (v112 + v3 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 17;
  *v39 = "ADD_TO_GUIDES";
  *(v39 + 1) = 13;
  v39[16] = 2;
  v8();
  v40 = (v112 + v3 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 18;
  *v41 = "TAPPED_PHOTO";
  *(v41 + 1) = 12;
  v41[16] = 2;
  v8();
  v42 = (v112 + v3 + 19 * v2);
  v43 = v42 + v1[14];
  *v42 = 19;
  *v43 = "TAPPED_PHOTO_ALBUM";
  *(v43 + 1) = 18;
  v43[16] = 2;
  v8();
  v44 = (v112 + v3 + 20 * v2);
  v45 = v44 + v1[14];
  *v44 = 20;
  *v45 = "MORE_PLACES";
  *(v45 + 1) = 11;
  v45[16] = 2;
  v8();
  v46 = (v112 + v3 + 21 * v2);
  v47 = v46 + v1[14];
  *v46 = 21;
  *v47 = "MORE_PHOTOS";
  *(v47 + 1) = 11;
  v47[16] = 2;
  v8();
  v48 = (v112 + v3 + 22 * v2);
  v49 = v48 + v1[14];
  *v48 = 22;
  *v49 = "TAPPED_GUIDE";
  *(v49 + 1) = 12;
  v49[16] = 2;
  v8();
  v50 = (v112 + v3 + 23 * v2);
  v51 = v50 + v1[14];
  *v50 = 23;
  *v51 = "TAPPED_PLACE";
  *(v51 + 1) = 12;
  v51[16] = 2;
  v8();
  v52 = (v112 + v3 + 24 * v2);
  v53 = v52 + v1[14];
  *v52 = 24;
  *v53 = "INLINE_RAP_ENTRY";
  *(v53 + 1) = 16;
  v53[16] = 2;
  v8();
  v54 = (v112 + v3 + 25 * v2);
  v55 = v54 + v1[14];
  *v54 = 25;
  *v55 = "TAPPED_URL";
  *(v55 + 1) = 10;
  v55[16] = 2;
  v8();
  v56 = (v112 + v3 + 26 * v2);
  v57 = v56 + v1[14];
  *v56 = 26;
  *v57 = "TAPPED_ATTRIBUTION_URL";
  *(v57 + 1) = 22;
  v57[16] = 2;
  v8();
  v58 = (v112 + v3 + 27 * v2);
  v59 = v58 + v1[14];
  *v58 = 27;
  *v59 = "TAPPED_YOUR_PHOTOS";
  *(v59 + 1) = 18;
  v59[16] = 2;
  v8();
  v60 = (v112 + v3 + 28 * v2);
  v61 = v60 + v1[14];
  *v60 = 28;
  *v61 = "CONTACTS";
  *(v61 + 1) = 8;
  v61[16] = 2;
  v8();
  v62 = (v112 + v3 + 29 * v2);
  v63 = v62 + v1[14];
  *v62 = 29;
  *v63 = "FIND_MY";
  *(v63 + 1) = 7;
  v63[16] = 2;
  v8();
  v64 = (v112 + v3 + 30 * v2);
  v65 = v64 + v1[14];
  *v64 = 30;
  *v65 = "LOCATION";
  *(v65 + 1) = 8;
  v65[16] = 2;
  v8();
  v66 = (v112 + v3 + 31 * v2);
  v67 = v66 + v1[14];
  *v66 = 31;
  *v67 = "CLOSE";
  *(v67 + 1) = 5;
  v67[16] = 2;
  v8();
  v68 = v112 + v3 + 32 * v2 + v1[14];
  *(v4 + 32 * v2) = 32;
  *v68 = "REMOVE_FROM_FAVORITES";
  *(v68 + 8) = 21;
  *(v68 + 16) = 2;
  v8();
  v69 = (v112 + v3 + 33 * v2);
  v70 = v69 + v1[14];
  *v69 = 33;
  *v70 = "TAPPED_LIBRARY";
  *(v70 + 1) = 14;
  v70[16] = 2;
  v8();
  v71 = (v112 + v3 + 34 * v2);
  v72 = v71 + v1[14];
  *v71 = 34;
  *v72 = "TAPPED_NOTE";
  *(v72 + 1) = 11;
  v72[16] = 2;
  v8();
  v73 = (v112 + v3 + 35 * v2);
  v74 = v73 + v1[14];
  *v73 = 35;
  *v74 = "TAPPED_BROWSE_CATEGORY";
  *(v74 + 1) = 22;
  v74[16] = 2;
  v8();
  v75 = (v112 + v3 + 36 * v2);
  v76 = v75 + v1[14];
  *v75 = 36;
  *v76 = "ADD_PHOTO_FROM_LIBRARY";
  *(v76 + 1) = 22;
  v76[16] = 2;
  v8();
  v77 = (v112 + v3 + 37 * v2);
  v78 = v77 + v1[14];
  *v77 = 37;
  *v78 = "ADD_PHOTO_FROM_CAMERA";
  *(v78 + 1) = 21;
  v78[16] = 2;
  v8();
  v79 = (v112 + v3 + 38 * v2);
  v80 = v79 + v1[14];
  *v79 = 38;
  *v80 = "TAPPED_TRANSIT_DEPARTURE";
  *(v80 + 1) = 24;
  v80[16] = 2;
  v8();
  v81 = (v112 + v3 + 39 * v2);
  v82 = v81 + v1[14];
  *v81 = 39;
  *v82 = "CREATE_CUSTOM_ROUTE";
  *(v82 + 1) = 19;
  v82[16] = 2;
  v8();
  v83 = (v112 + v3 + 40 * v2);
  v84 = v83 + v1[14];
  *v83 = 40;
  *v84 = "OPEN_APP_CLIP";
  *(v84 + 1) = 13;
  v84[16] = 2;
  v8();
  v85 = (v112 + v3 + 41 * v2);
  v86 = v85 + v1[14];
  *v85 = 41;
  *v86 = "OPEN_EXTENSIONS";
  *(v86 + 1) = 15;
  v86[16] = 2;
  v8();
  v87 = (v112 + v3 + 42 * v2);
  v88 = v87 + v1[14];
  *v87 = 42;
  *v88 = "MARKED_LOCATION";
  *(v88 + 1) = 15;
  v88[16] = 2;
  v8();
  v89 = (v112 + v3 + 43 * v2);
  v90 = v89 + v1[14];
  *v89 = 43;
  *v90 = "MORE_GUIDES";
  *(v90 + 1) = 11;
  v90[16] = 2;
  v8();
  v91 = (v112 + v3 + 44 * v2);
  v92 = v91 + v1[14];
  *v91 = 44;
  *v92 = "TAPPED_TRANSIT_INCIDENT";
  *(v92 + 1) = 23;
  v92[16] = 2;
  v8();
  v93 = (v112 + v3 + 45 * v2);
  v94 = v93 + v1[14];
  *v93 = 45;
  *v94 = "PUBLISHER_GUIDE_ACTION";
  *(v94 + 1) = 22;
  v94[16] = 2;
  v8();
  v95 = (v112 + v3 + 46 * v2);
  v96 = v95 + v1[14];
  *v95 = 46;
  *v96 = "TAPPED_SAVE_TO_CONTACT";
  *(v96 + 1) = 22;
  v96[16] = 2;
  v8();
  v97 = (v112 + v3 + 47 * v2);
  v98 = v97 + v1[14];
  *v97 = 47;
  *v98 = "OPEN_PHOTO_VIEWER";
  *(v98 + 1) = 17;
  v98[16] = 2;
  v8();
  v99 = (v112 + v3 + 48 * v2);
  v100 = v99 + v1[14];
  *v99 = 48;
  *v100 = "COPY_COORDINATES";
  *(v100 + 1) = 16;
  v100[16] = 2;
  v8();
  v101 = (v112 + v3 + 49 * v2);
  v102 = v101 + v1[14];
  *v101 = 49;
  *v102 = "COPY_LINK";
  *(v102 + 1) = 9;
  v102[16] = 2;
  v8();
  v103 = (v112 + v3 + 50 * v2);
  v104 = v103 + v1[14];
  *v103 = 50;
  *v104 = "COPY_ADDRESS";
  *(v104 + 1) = 12;
  v104[16] = 2;
  v8();
  v105 = (v112 + v3 + 51 * v2);
  v106 = v105 + v1[14];
  *v105 = 51;
  *v106 = "SEND_TO_DEVICE";
  *(v106 + 1) = 14;
  v106[16] = 2;
  v8();
  v107 = (v112 + v3 + 52 * v2);
  v108 = v107 + v1[14];
  *v107 = 1000;
  *v108 = "OPEN_ANALYTICS_DEBUG";
  *(v108 + 1) = 20;
  v108[16] = 2;
  v8();
  v109 = (v112 + v3 + 53 * v2);
  v110 = v109 + v1[14];
  *v109 = 1001;
  *v110 = "TAPPED_SIMULATE_LOCATION";
  *(v110 + 1) = 24;
  v110[16] = 2;
  v8();
  return sub_1C584F240();
}

uint64_t sub_1C569F584()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC18FB88);
  __swift_project_value_buffer(v0, qword_1EC18FB88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C586AE50;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "DESTRUCTIVE";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "DISABLED";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "HIDDEN";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "KEEPS_MENU_PRESENTED";
  *(v14 + 1) = 20;
  v14[16] = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C569F7F0()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC18FBA0);
  __swift_project_value_buffer(v0, qword_1EC18FBA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C5867980;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "SMALL";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "MEDIUM";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "LARGE";
  *(v11 + 8) = 5;
  *(v11 + 16) = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C569FA24()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC18FBB8);
  __swift_project_value_buffer(v0, qword_1EC18FBB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C5867990;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "DEPARTURE_SEQUENCE";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "INACTIVE_LINE";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C569FC10()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC18FBD0);
  __swift_project_value_buffer(v0, qword_1EC18FBD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C5867990;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "UNIFIED_ACTION_ROW";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "UNIFIED_ACTION_ROW_MORE_MENU";
  *(v10 + 1) = 28;
  v10[16] = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C569FDFC()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC18FBE8);
  __swift_project_value_buffer(v0, qword_1EC18FBE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C5867980;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "MUPlaceCardActionTypeOfflineDownload";
  *(v6 + 8) = 36;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "MUPlaceCardActionTypeOfflineDownloadPause";
  *(v10 + 1) = 41;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "MUPlaceCardActionTypeOfflineDownloadManagement";
  *(v11 + 8) = 46;
  *(v11 + 16) = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56A0034()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC18FC00);
  __swift_project_value_buffer(v0, qword_1EC18FC00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1C586AE60;
  v4 = v18 + v3 + v1[14];
  *(v18 + v3) = 0;
  *v4 = "REPORT_HOURS";
  *(v4 + 8) = 12;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1C584F230();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v18 + v3 + v2 + v1[14];
  *(v18 + v3 + v2) = 1;
  *v8 = "REPORT_PHONE";
  *(v8 + 8) = 12;
  *(v8 + 16) = 2;
  v7();
  v9 = (v18 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "REPORT_WEBSITE";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v7();
  v11 = (v18 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "REPORT_ADDRESS";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v7();
  v13 = (v18 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "REPORT_SOMETHING_ELSE";
  *(v14 + 1) = 21;
  v14[16] = 2;
  v7();
  v15 = (v18 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "REPORT_SOMETHING_MISSING";
  *(v16 + 1) = 24;
  v16[16] = 2;
  v7();
  return sub_1C584F240();
}

uint64_t sub_1C56A0314()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC18FC18);
  __swift_project_value_buffer(v0, qword_1EC18FC18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C5867980;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "ADD_MARKED_LOCATION";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "REMOVE_MARKED_LOCATION";
  *(v10 + 1) = 22;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "EDIT_LOCATION_OF_MARKED_LOCATION";
  *(v11 + 8) = 32;
  *(v11 + 16) = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56A0548()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC18FC30);
  __swift_project_value_buffer(v0, qword_1EC18FC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1C586AE70;
  v4 = v38 + v3;
  v5 = v38 + v3 + v1[14];
  *(v38 + v3) = 1;
  *v5 = "type";
  *(v5 + 8) = 4;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1C584F230();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "icon_argument";
  *(v9 + 8) = 13;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "attribution_argument";
  *(v11 + 1) = 20;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "artwork_argument";
  *(v13 + 1) = 16;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "user_interaction_action";
  *(v15 + 1) = 23;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "web_menu_button";
  *(v17 + 1) = 15;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "page_resized_argument";
  *(v19 + 1) = 21;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "map_item_refresh_argument";
  *(v21 + 1) = 25;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "transit_label_argument";
  *(v22 + 8) = 22;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "nearby_places_argument";
  *(v24 + 1) = 22;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "route_snapshot_argument";
  *(v26 + 1) = 23;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "analytics_argument";
  *(v28 + 1) = 18;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "action_bar_argument";
  *(v30 + 1) = 19;
  v30[16] = 2;
  v8();
  v31 = (v4 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "sticky_header_argument";
  *(v32 + 1) = 22;
  v32[16] = 2;
  v8();
  v33 = (v4 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "header_insets_argument";
  *(v34 + 1) = 22;
  v34[16] = 2;
  v8();
  v35 = (v4 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "text_selection_view_argument";
  *(v36 + 1) = 28;
  v36[16] = 2;
  v8();
  return sub_1C584F240();
}

uint64_t sub_1C56A0A7C()
{
  type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument._StorageClass(0);
  v0 = swift_allocObject();
  *(v0 + 16) = 2;
  v1 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__iconArgument;
  v2 = type metadata accessor for WebPlacecardBridge.MUIconArgument(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__attributionArgument;
  v4 = type metadata accessor for WebPlacecardBridge.MUAttributionArgument(0);
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__artworkArgument;
  v6 = type metadata accessor for WebPlacecardBridge.MUAmpArtworkArgument(0);
  (*(*(v6 - 8) + 56))(v0 + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userInteractionAction;
  v8 = type metadata accessor for WebPlacecardBridge.MUUserInteractionAction(0);
  (*(*(v8 - 8) + 56))(v0 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__webMenuButton;
  v10 = type metadata accessor for WebPlacecardBridge.MUWebMenuButton(0);
  (*(*(v10 - 8) + 56))(v0 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__pageResizedArgument;
  v12 = type metadata accessor for WebPlacecardBridge.MUPageResizedArgument(0);
  (*(*(v12 - 8) + 56))(v0 + v11, 1, 1, v12);
  v13 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__mapItemRefreshArgument;
  refreshed = type metadata accessor for WebPlacecardBridge.MUMapItemRefreshArgument(0);
  (*(*(refreshed - 8) + 56))(v0 + v13, 1, 1, refreshed);
  v15 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__transitLabelArgument;
  v16 = type metadata accessor for WebPlacecardBridge.MUTransitLabelArgument(0);
  (*(*(v16 - 8) + 56))(v0 + v15, 1, 1, v16);
  v17 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__nearbyPlacesArgument;
  v18 = type metadata accessor for WebPlacecardBridge.MUNearbyPlacesArgument(0);
  (*(*(v18 - 8) + 56))(v0 + v17, 1, 1, v18);
  v19 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__routeSnapshotArgument;
  v20 = type metadata accessor for WebPlacecardBridge.MURouteSnapshotArgument(0);
  (*(*(v20 - 8) + 56))(v0 + v19, 1, 1, v20);
  v21 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__analyticsArgument;
  v22 = type metadata accessor for WebPlacecardBridge.MUAnalyticsArgument(0);
  (*(*(v22 - 8) + 56))(v0 + v21, 1, 1, v22);
  v23 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__actionBarArgument;
  v24 = type metadata accessor for WebPlacecardBridge.MUActionBarArgument(0);
  (*(*(v24 - 8) + 56))(v0 + v23, 1, 1, v24);
  v25 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__stickyHeaderArgument;
  v26 = type metadata accessor for WebPlacecardBridge.MUStickyHeaderArgument(0);
  (*(*(v26 - 8) + 56))(v0 + v25, 1, 1, v26);
  v27 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__headerInsetsArgument;
  v28 = type metadata accessor for WebPlacecardBridge.MUHeaderInsetsArgument(0);
  (*(*(v28 - 8) + 56))(v0 + v27, 1, 1, v28);
  v29 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__textSelectionViewArgument;
  v30 = type metadata accessor for WebPlacecardBridge.MUWebTextSelectionViewArgument(0);
  result = (*(*(v30 - 8) + 56))(v0 + v29, 1, 1, v30);
  qword_1EC1792D8 = v0;
  return result;
}

uint64_t sub_1C56A0EF8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EB70, &qword_1C586AFD8);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v144 = &v120 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EB68, &qword_1C586AFD0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v143 = &v120 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EB60, &qword_1C586AFC8);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v142 = &v120 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EB58, &qword_1C586AFC0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v141 = &v120 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EB50, &qword_1C586AFB8);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v140 = &v120 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EB48, &qword_1C586AFB0);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v139 = &v120 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EB40, &qword_1C586AFA8);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v138 = &v120 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EB38, &qword_1C586AFA0);
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v137 = &v120 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EB30, &qword_1C586AF98);
  MEMORY[0x1EEE9AC00](v27 - 8, v28);
  v136 = &v120 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EB28, &qword_1C586AF90);
  MEMORY[0x1EEE9AC00](v30 - 8, v31);
  v135 = &v120 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EB20, &qword_1C586AF88);
  MEMORY[0x1EEE9AC00](v33 - 8, v34);
  v134 = &v120 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EB18, &qword_1C586AF80);
  MEMORY[0x1EEE9AC00](v36 - 8, v37);
  v130 = &v120 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EB10, &qword_1C586AF78);
  MEMORY[0x1EEE9AC00](v39 - 8, v40);
  v126 = &v120 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EB08, &qword_1C586AF70);
  MEMORY[0x1EEE9AC00](v42 - 8, v43);
  v121 = &v120 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EB00, &qword_1C586AF68);
  MEMORY[0x1EEE9AC00](v45 - 8, v46);
  v48 = &v120 - v47;
  *(v1 + 16) = 2;
  v49 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__iconArgument;
  v50 = type metadata accessor for WebPlacecardBridge.MUIconArgument(0);
  (*(*(v50 - 8) + 56))(v1 + v49, 1, 1, v50);
  v51 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__attributionArgument;
  v52 = type metadata accessor for WebPlacecardBridge.MUAttributionArgument(0);
  (*(*(v52 - 8) + 56))(v1 + v51, 1, 1, v52);
  v53 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__artworkArgument;
  v54 = type metadata accessor for WebPlacecardBridge.MUAmpArtworkArgument(0);
  (*(*(v54 - 8) + 56))(v1 + v53, 1, 1, v54);
  v55 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userInteractionAction;
  v56 = type metadata accessor for WebPlacecardBridge.MUUserInteractionAction(0);
  (*(*(v56 - 8) + 56))(v1 + v55, 1, 1, v56);
  v57 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__webMenuButton;
  v120 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__webMenuButton;
  v58 = type metadata accessor for WebPlacecardBridge.MUWebMenuButton(0);
  (*(*(v58 - 8) + 56))(v1 + v57, 1, 1, v58);
  v59 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__pageResizedArgument;
  v122 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__pageResizedArgument;
  v60 = type metadata accessor for WebPlacecardBridge.MUPageResizedArgument(0);
  (*(*(v60 - 8) + 56))(v1 + v59, 1, 1, v60);
  v61 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__mapItemRefreshArgument;
  v123 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__mapItemRefreshArgument;
  refreshed = type metadata accessor for WebPlacecardBridge.MUMapItemRefreshArgument(0);
  (*(*(refreshed - 8) + 56))(v1 + v61, 1, 1, refreshed);
  v63 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__transitLabelArgument;
  v124 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__transitLabelArgument;
  v64 = type metadata accessor for WebPlacecardBridge.MUTransitLabelArgument(0);
  (*(*(v64 - 8) + 56))(v1 + v63, 1, 1, v64);
  v65 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__nearbyPlacesArgument;
  v125 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__nearbyPlacesArgument;
  v66 = type metadata accessor for WebPlacecardBridge.MUNearbyPlacesArgument(0);
  (*(*(v66 - 8) + 56))(v1 + v65, 1, 1, v66);
  v67 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__routeSnapshotArgument;
  v127 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__routeSnapshotArgument;
  v68 = type metadata accessor for WebPlacecardBridge.MURouteSnapshotArgument(0);
  (*(*(v68 - 8) + 56))(v1 + v67, 1, 1, v68);
  v69 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__analyticsArgument;
  v128 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__analyticsArgument;
  v70 = type metadata accessor for WebPlacecardBridge.MUAnalyticsArgument(0);
  (*(*(v70 - 8) + 56))(v1 + v69, 1, 1, v70);
  v71 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__actionBarArgument;
  v129 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__actionBarArgument;
  v72 = type metadata accessor for WebPlacecardBridge.MUActionBarArgument(0);
  (*(*(v72 - 8) + 56))(v1 + v71, 1, 1, v72);
  v73 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__stickyHeaderArgument;
  v131 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__stickyHeaderArgument;
  v74 = type metadata accessor for WebPlacecardBridge.MUStickyHeaderArgument(0);
  (*(*(v74 - 8) + 56))(v1 + v73, 1, 1, v74);
  v75 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__headerInsetsArgument;
  v132 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__headerInsetsArgument;
  v76 = type metadata accessor for WebPlacecardBridge.MUHeaderInsetsArgument(0);
  (*(*(v76 - 8) + 56))(v1 + v75, 1, 1, v76);
  v77 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__textSelectionViewArgument;
  v133 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__textSelectionViewArgument;
  v78 = type metadata accessor for WebPlacecardBridge.MUWebTextSelectionViewArgument(0);
  (*(*(v78 - 8) + 56))(v1 + v77, 1, 1, v78);
  swift_beginAccess();
  LOBYTE(v77) = *(a1 + 16);
  swift_beginAccess();
  *(v1 + 16) = v77;
  v79 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__iconArgument;
  swift_beginAccess();
  sub_1C56466CC(a1 + v79, v48, &qword_1EC16EB00, &qword_1C586AF68);
  swift_beginAccess();
  sub_1C56ECE38(v48, v1 + v49, &qword_1EC16EB00, &qword_1C586AF68);
  swift_endAccess();
  v80 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__attributionArgument;
  swift_beginAccess();
  v81 = v121;
  sub_1C56466CC(a1 + v80, v121, &qword_1EC16EB08, &qword_1C586AF70);
  swift_beginAccess();
  sub_1C56ECE38(v81, v1 + v51, &qword_1EC16EB08, &qword_1C586AF70);
  swift_endAccess();
  v82 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__artworkArgument;
  swift_beginAccess();
  v83 = v126;
  sub_1C56466CC(a1 + v82, v126, &qword_1EC16EB10, &qword_1C586AF78);
  swift_beginAccess();
  sub_1C56ECE38(v83, v1 + v53, &qword_1EC16EB10, &qword_1C586AF78);
  swift_endAccess();
  v84 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userInteractionAction;
  swift_beginAccess();
  v85 = v130;
  sub_1C56466CC(a1 + v84, v130, &qword_1EC16EB18, &qword_1C586AF80);
  swift_beginAccess();
  sub_1C56ECE38(v85, v1 + v55, &qword_1EC16EB18, &qword_1C586AF80);
  swift_endAccess();
  v86 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__webMenuButton;
  swift_beginAccess();
  v87 = v134;
  sub_1C56466CC(a1 + v86, v134, &qword_1EC16EB20, &qword_1C586AF88);
  v88 = v120;
  swift_beginAccess();
  sub_1C56ECE38(v87, v1 + v88, &qword_1EC16EB20, &qword_1C586AF88);
  swift_endAccess();
  v89 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__pageResizedArgument;
  swift_beginAccess();
  v90 = v135;
  sub_1C56466CC(a1 + v89, v135, &qword_1EC16EB28, &qword_1C586AF90);
  v91 = v122;
  swift_beginAccess();
  sub_1C56ECE38(v90, v1 + v91, &qword_1EC16EB28, &qword_1C586AF90);
  swift_endAccess();
  v92 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__mapItemRefreshArgument;
  swift_beginAccess();
  v93 = v136;
  sub_1C56466CC(a1 + v92, v136, &qword_1EC16EB30, &qword_1C586AF98);
  v94 = v123;
  swift_beginAccess();
  sub_1C56ECE38(v93, v1 + v94, &qword_1EC16EB30, &qword_1C586AF98);
  swift_endAccess();
  v95 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__transitLabelArgument;
  swift_beginAccess();
  v96 = v137;
  sub_1C56466CC(a1 + v95, v137, &qword_1EC16EB38, &qword_1C586AFA0);
  v97 = v124;
  swift_beginAccess();
  sub_1C56ECE38(v96, v1 + v97, &qword_1EC16EB38, &qword_1C586AFA0);
  swift_endAccess();
  v98 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__nearbyPlacesArgument;
  swift_beginAccess();
  v99 = v138;
  sub_1C56466CC(a1 + v98, v138, &qword_1EC16EB40, &qword_1C586AFA8);
  v100 = v125;
  swift_beginAccess();
  sub_1C56ECE38(v99, v1 + v100, &qword_1EC16EB40, &qword_1C586AFA8);
  swift_endAccess();
  v101 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__routeSnapshotArgument;
  swift_beginAccess();
  v102 = v139;
  sub_1C56466CC(a1 + v101, v139, &qword_1EC16EB48, &qword_1C586AFB0);
  v103 = v127;
  swift_beginAccess();
  sub_1C56ECE38(v102, v1 + v103, &qword_1EC16EB48, &qword_1C586AFB0);
  swift_endAccess();
  v104 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__analyticsArgument;
  swift_beginAccess();
  v105 = v140;
  sub_1C56466CC(a1 + v104, v140, &qword_1EC16EB50, &qword_1C586AFB8);
  v106 = v128;
  swift_beginAccess();
  sub_1C56ECE38(v105, v1 + v106, &qword_1EC16EB50, &qword_1C586AFB8);
  swift_endAccess();
  v107 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__actionBarArgument;
  swift_beginAccess();
  v108 = v141;
  sub_1C56466CC(a1 + v107, v141, &qword_1EC16EB58, &qword_1C586AFC0);
  v109 = v129;
  swift_beginAccess();
  sub_1C56ECE38(v108, v1 + v109, &qword_1EC16EB58, &qword_1C586AFC0);
  swift_endAccess();
  v110 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__stickyHeaderArgument;
  swift_beginAccess();
  v111 = v142;
  sub_1C56466CC(a1 + v110, v142, &qword_1EC16EB60, &qword_1C586AFC8);
  v112 = v131;
  swift_beginAccess();
  sub_1C56ECE38(v111, v1 + v112, &qword_1EC16EB60, &qword_1C586AFC8);
  swift_endAccess();
  v113 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__headerInsetsArgument;
  swift_beginAccess();
  v114 = v143;
  sub_1C56466CC(a1 + v113, v143, &qword_1EC16EB68, &qword_1C586AFD0);
  v115 = v132;
  swift_beginAccess();
  sub_1C56ECE38(v114, v1 + v115, &qword_1EC16EB68, &qword_1C586AFD0);
  swift_endAccess();
  v116 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__textSelectionViewArgument;
  swift_beginAccess();
  v117 = v144;
  sub_1C56466CC(a1 + v116, v144, &qword_1EC16EB70, &qword_1C586AFD8);

  v118 = v133;
  swift_beginAccess();
  sub_1C56ECE38(v117, v1 + v118, &qword_1EC16EB70, &qword_1C586AFD8);
  swift_endAccess();
  return v1;
}

uint64_t sub_1C56A1F90()
{
  sub_1C5625230(v0 + OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__iconArgument, &qword_1EC16EB00, &qword_1C586AF68);
  sub_1C5625230(v0 + OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__attributionArgument, &qword_1EC16EB08, &qword_1C586AF70);
  sub_1C5625230(v0 + OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__artworkArgument, &qword_1EC16EB10, &qword_1C586AF78);
  sub_1C5625230(v0 + OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userInteractionAction, &qword_1EC16EB18, &qword_1C586AF80);
  sub_1C5625230(v0 + OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__webMenuButton, &qword_1EC16EB20, &qword_1C586AF88);
  sub_1C5625230(v0 + OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__pageResizedArgument, &qword_1EC16EB28, &qword_1C586AF90);
  sub_1C5625230(v0 + OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__mapItemRefreshArgument, &qword_1EC16EB30, &qword_1C586AF98);
  sub_1C5625230(v0 + OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__transitLabelArgument, &qword_1EC16EB38, &qword_1C586AFA0);
  sub_1C5625230(v0 + OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__nearbyPlacesArgument, &qword_1EC16EB40, &qword_1C586AFA8);
  sub_1C5625230(v0 + OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__routeSnapshotArgument, &qword_1EC16EB48, &qword_1C586AFB0);
  sub_1C5625230(v0 + OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__analyticsArgument, &qword_1EC16EB50, &qword_1C586AFB8);
  sub_1C5625230(v0 + OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__actionBarArgument, &qword_1EC16EB58, &qword_1C586AFC0);
  sub_1C5625230(v0 + OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__stickyHeaderArgument, &qword_1EC16EB60, &qword_1C586AFC8);
  sub_1C5625230(v0 + OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__headerInsetsArgument, &qword_1EC16EB68, &qword_1C586AFD0);
  sub_1C5625230(v0 + OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__textSelectionViewArgument, &qword_1EC16EB70, &qword_1C586AFD8);

  return swift_deallocClassInstance();
}

uint64_t sub_1C56A21C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = *(type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v3 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument._StorageClass(0);
    v9 = swift_allocObject();
    sub_1C56A0EF8(v8);
    *(v5 + v6) = v9;
  }

  result = sub_1C584F050();
  if (!v4)
  {
    while ((v11 & 1) == 0)
    {
      switch(result)
      {
        case 1:
          swift_beginAccess();
          sub_1C5704124();
          sub_1C584F090();
          goto LABEL_24;
        case 2:
          swift_beginAccess();
          type metadata accessor for WebPlacecardBridge.MUIconArgument(0);
          v12 = type metadata accessor for WebPlacecardBridge.MUIconArgument;
          v13 = &unk_1C586F538;
          v14 = &qword_1EC16D828;
          goto LABEL_23;
        case 3:
          swift_beginAccess();
          type metadata accessor for WebPlacecardBridge.MUAttributionArgument(0);
          v12 = type metadata accessor for WebPlacecardBridge.MUAttributionArgument;
          v13 = &unk_1C586F240;
          v14 = &qword_1EC16D6E0;
          goto LABEL_23;
        case 4:
          swift_beginAccess();
          type metadata accessor for WebPlacecardBridge.MUAmpArtworkArgument(0);
          v12 = type metadata accessor for WebPlacecardBridge.MUAmpArtworkArgument;
          v13 = &unk_1C586F3D0;
          v14 = &qword_1EC16F450;
          goto LABEL_23;
        case 5:
          swift_beginAccess();
          type metadata accessor for WebPlacecardBridge.MUUserInteractionAction(0);
          v12 = type metadata accessor for WebPlacecardBridge.MUUserInteractionAction;
          v13 = &unk_1C586DE40;
          v14 = &qword_1EC16D5F8;
          goto LABEL_23;
        case 6:
          swift_beginAccess();
          type metadata accessor for WebPlacecardBridge.MUWebMenuButton(0);
          v12 = type metadata accessor for WebPlacecardBridge.MUWebMenuButton;
          v13 = &unk_1C586DFA8;
          v14 = &qword_1EC16D7D0;
          goto LABEL_23;
        case 7:
          swift_beginAccess();
          type metadata accessor for WebPlacecardBridge.MUPageResizedArgument(0);
          v12 = type metadata accessor for WebPlacecardBridge.MUPageResizedArgument;
          v13 = &unk_1C586F6A0;
          v14 = &qword_1EC16D6C8;
          goto LABEL_23;
        case 8:
          swift_beginAccess();
          type metadata accessor for WebPlacecardBridge.MUMapItemRefreshArgument(0);
          v12 = type metadata accessor for WebPlacecardBridge.MUMapItemRefreshArgument;
          v13 = &unk_1C586D738;
          v14 = &qword_1EC16D5E0;
          goto LABEL_23;
        case 9:
          swift_beginAccess();
          type metadata accessor for WebPlacecardBridge.MUTransitLabelArgument(0);
          v12 = type metadata accessor for WebPlacecardBridge.MUTransitLabelArgument;
          v13 = &unk_1C586DA08;
          v14 = &qword_1EC16F340;
          goto LABEL_23;
        case 10:
          swift_beginAccess();
          type metadata accessor for WebPlacecardBridge.MUNearbyPlacesArgument(0);
          v12 = type metadata accessor for WebPlacecardBridge.MUNearbyPlacesArgument;
          v13 = &unk_1C586D8A0;
          v14 = &qword_1EC16F328;
          goto LABEL_23;
        case 11:
          swift_beginAccess();
          type metadata accessor for WebPlacecardBridge.MURouteSnapshotArgument(0);
          v12 = type metadata accessor for WebPlacecardBridge.MURouteSnapshotArgument;
          v13 = &unk_1C586DB70;
          v14 = &qword_1EC16F358;
          goto LABEL_23;
        case 12:
          swift_beginAccess();
          type metadata accessor for WebPlacecardBridge.MUAnalyticsArgument(0);
          v12 = type metadata accessor for WebPlacecardBridge.MUAnalyticsArgument;
          v13 = &unk_1C586DCD8;
          v14 = &qword_1EC16D728;
          goto LABEL_23;
        case 13:
          swift_beginAccess();
          type metadata accessor for WebPlacecardBridge.MUActionBarArgument(0);
          v12 = type metadata accessor for WebPlacecardBridge.MUActionBarArgument;
          v13 = &unk_1C586E408;
          v14 = &qword_1EC16D740;
          goto LABEL_23;
        case 14:
          swift_beginAccess();
          type metadata accessor for WebPlacecardBridge.MUStickyHeaderArgument(0);
          v12 = type metadata accessor for WebPlacecardBridge.MUStickyHeaderArgument;
          v13 = &unk_1C5870ED8;
          v14 = &qword_1EC16D620;
          goto LABEL_23;
        case 15:
          swift_beginAccess();
          type metadata accessor for WebPlacecardBridge.MUHeaderInsetsArgument(0);
          v12 = type metadata accessor for WebPlacecardBridge.MUHeaderInsetsArgument;
          v13 = &unk_1C5871040;
          v14 = &qword_1EC16D650;
          goto LABEL_23;
        case 16:
          swift_beginAccess();
          type metadata accessor for WebPlacecardBridge.MUWebTextSelectionViewArgument(0);
          v12 = type metadata accessor for WebPlacecardBridge.MUWebTextSelectionViewArgument;
          v13 = &unk_1C586E110;
          v14 = &qword_1EC16F388;
LABEL_23:
          sub_1C56EF190(v14, v12, v13);
          sub_1C584F100();
LABEL_24:
          swift_endAccess();
          break;
        default:
          break;
      }

      result = sub_1C584F050();
    }
  }

  return result;
}

uint64_t sub_1C56A28A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = *(v5 + *(type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument(0) + 20));
  result = swift_beginAccess();
  if (*(v9 + 16) == 2)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    sub_1C5704124();
    result = sub_1C584F1A0();
    if (v4)
    {
      return result;
    }
  }

  sub_1C56A2AD8(v9, a1, a2, a3);
  sub_1C56A2D00(v9, a1, a2, a3);
  sub_1C56A2F28(v9, a1, a2, a3);
  sub_1C56A3150(v9, a1, a2, a3);
  sub_1C56A3378(v9, a1, a2, a3);
  sub_1C56A35A0(v9, a1, a2, a3);
  sub_1C56A37C8(v9, a1, a2, a3);
  sub_1C56A39F0(v9, a1, a2, a3);
  sub_1C56A3C18(v9, a1, a2, a3);
  sub_1C56A3E40(v9, a1, a2, a3);
  sub_1C56A4068(v9, a1, a2, a3);
  sub_1C56A4290(v9, a1, a2, a3);
  sub_1C56A44B8(v9, a1, a2, a3);
  sub_1C56A46E0(v9, a1, a2, a3);
  sub_1C56A4908(v9, a1, a2, a3);
  return sub_1C584EFB0();
}

uint64_t sub_1C56A2AD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EB00, &qword_1C586AF68);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for WebPlacecardBridge.MUIconArgument(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__iconArgument;
  swift_beginAccess();
  sub_1C56466CC(a1 + v14, v8, &qword_1EC16EB00, &qword_1C586AF68);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C5625230(v8, &qword_1EC16EB00, &qword_1C586AF68);
  }

  sub_1C56EC178(v8, v13, type metadata accessor for WebPlacecardBridge.MUIconArgument);
  sub_1C56EF190(&qword_1EC16D828, type metadata accessor for WebPlacecardBridge.MUIconArgument, &unk_1C586F538);
  sub_1C584F220();
  return sub_1C56EC248(v13, type metadata accessor for WebPlacecardBridge.MUIconArgument);
}

uint64_t sub_1C56A2D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EB08, &qword_1C586AF70);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for WebPlacecardBridge.MUAttributionArgument(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__attributionArgument;
  swift_beginAccess();
  sub_1C56466CC(a1 + v14, v8, &qword_1EC16EB08, &qword_1C586AF70);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C5625230(v8, &qword_1EC16EB08, &qword_1C586AF70);
  }

  sub_1C56EC178(v8, v13, type metadata accessor for WebPlacecardBridge.MUAttributionArgument);
  sub_1C56EF190(&qword_1EC16D6E0, type metadata accessor for WebPlacecardBridge.MUAttributionArgument, &unk_1C586F240);
  sub_1C584F220();
  return sub_1C56EC248(v13, type metadata accessor for WebPlacecardBridge.MUAttributionArgument);
}

uint64_t sub_1C56A2F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EB10, &qword_1C586AF78);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for WebPlacecardBridge.MUAmpArtworkArgument(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__artworkArgument;
  swift_beginAccess();
  sub_1C56466CC(a1 + v14, v8, &qword_1EC16EB10, &qword_1C586AF78);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C5625230(v8, &qword_1EC16EB10, &qword_1C586AF78);
  }

  sub_1C56EC178(v8, v13, type metadata accessor for WebPlacecardBridge.MUAmpArtworkArgument);
  sub_1C56EF190(&qword_1EC16F450, type metadata accessor for WebPlacecardBridge.MUAmpArtworkArgument, &unk_1C586F3D0);
  sub_1C584F220();
  return sub_1C56EC248(v13, type metadata accessor for WebPlacecardBridge.MUAmpArtworkArgument);
}

uint64_t sub_1C56A3150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EB18, &qword_1C586AF80);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for WebPlacecardBridge.MUUserInteractionAction(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userInteractionAction;
  swift_beginAccess();
  sub_1C56466CC(a1 + v14, v8, &qword_1EC16EB18, &qword_1C586AF80);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C5625230(v8, &qword_1EC16EB18, &qword_1C586AF80);
  }

  sub_1C56EC178(v8, v13, type metadata accessor for WebPlacecardBridge.MUUserInteractionAction);
  sub_1C56EF190(&qword_1EC16D5F8, type metadata accessor for WebPlacecardBridge.MUUserInteractionAction, &unk_1C586DE40);
  sub_1C584F220();
  return sub_1C56EC248(v13, type metadata accessor for WebPlacecardBridge.MUUserInteractionAction);
}

uint64_t sub_1C56A3378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EB20, &qword_1C586AF88);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for WebPlacecardBridge.MUWebMenuButton(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__webMenuButton;
  swift_beginAccess();
  sub_1C56466CC(a1 + v14, v8, &qword_1EC16EB20, &qword_1C586AF88);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C5625230(v8, &qword_1EC16EB20, &qword_1C586AF88);
  }

  sub_1C56EC178(v8, v13, type metadata accessor for WebPlacecardBridge.MUWebMenuButton);
  sub_1C56EF190(&qword_1EC16D7D0, type metadata accessor for WebPlacecardBridge.MUWebMenuButton, &unk_1C586DFA8);
  sub_1C584F220();
  return sub_1C56EC248(v13, type metadata accessor for WebPlacecardBridge.MUWebMenuButton);
}

uint64_t sub_1C56A35A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EB28, &qword_1C586AF90);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for WebPlacecardBridge.MUPageResizedArgument(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__pageResizedArgument;
  swift_beginAccess();
  sub_1C56466CC(a1 + v14, v8, &qword_1EC16EB28, &qword_1C586AF90);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C5625230(v8, &qword_1EC16EB28, &qword_1C586AF90);
  }

  sub_1C56EC178(v8, v13, type metadata accessor for WebPlacecardBridge.MUPageResizedArgument);
  sub_1C56EF190(&qword_1EC16D6C8, type metadata accessor for WebPlacecardBridge.MUPageResizedArgument, &unk_1C586F6A0);
  sub_1C584F220();
  return sub_1C56EC248(v13, type metadata accessor for WebPlacecardBridge.MUPageResizedArgument);
}

uint64_t sub_1C56A37C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EB30, &qword_1C586AF98);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  refreshed = type metadata accessor for WebPlacecardBridge.MUMapItemRefreshArgument(0);
  v10 = *(refreshed - 8);
  MEMORY[0x1EEE9AC00](refreshed, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__mapItemRefreshArgument;
  swift_beginAccess();
  sub_1C56466CC(a1 + v14, v8, &qword_1EC16EB30, &qword_1C586AF98);
  if ((*(v10 + 48))(v8, 1, refreshed) == 1)
  {
    return sub_1C5625230(v8, &qword_1EC16EB30, &qword_1C586AF98);
  }

  sub_1C56EC178(v8, v13, type metadata accessor for WebPlacecardBridge.MUMapItemRefreshArgument);
  sub_1C56EF190(&qword_1EC16D5E0, type metadata accessor for WebPlacecardBridge.MUMapItemRefreshArgument, &unk_1C586D738);
  sub_1C584F220();
  return sub_1C56EC248(v13, type metadata accessor for WebPlacecardBridge.MUMapItemRefreshArgument);
}

uint64_t sub_1C56A39F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EB38, &qword_1C586AFA0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for WebPlacecardBridge.MUTransitLabelArgument(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__transitLabelArgument;
  swift_beginAccess();
  sub_1C56466CC(a1 + v14, v8, &qword_1EC16EB38, &qword_1C586AFA0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C5625230(v8, &qword_1EC16EB38, &qword_1C586AFA0);
  }

  sub_1C56EC178(v8, v13, type metadata accessor for WebPlacecardBridge.MUTransitLabelArgument);
  sub_1C56EF190(&qword_1EC16F340, type metadata accessor for WebPlacecardBridge.MUTransitLabelArgument, &unk_1C586DA08);
  sub_1C584F220();
  return sub_1C56EC248(v13, type metadata accessor for WebPlacecardBridge.MUTransitLabelArgument);
}

uint64_t sub_1C56A3C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EB40, &qword_1C586AFA8);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for WebPlacecardBridge.MUNearbyPlacesArgument(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__nearbyPlacesArgument;
  swift_beginAccess();
  sub_1C56466CC(a1 + v14, v8, &qword_1EC16EB40, &qword_1C586AFA8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C5625230(v8, &qword_1EC16EB40, &qword_1C586AFA8);
  }

  sub_1C56EC178(v8, v13, type metadata accessor for WebPlacecardBridge.MUNearbyPlacesArgument);
  sub_1C56EF190(&qword_1EC16F328, type metadata accessor for WebPlacecardBridge.MUNearbyPlacesArgument, &unk_1C586D8A0);
  sub_1C584F220();
  return sub_1C56EC248(v13, type metadata accessor for WebPlacecardBridge.MUNearbyPlacesArgument);
}

uint64_t sub_1C56A3E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EB48, &qword_1C586AFB0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for WebPlacecardBridge.MURouteSnapshotArgument(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__routeSnapshotArgument;
  swift_beginAccess();
  sub_1C56466CC(a1 + v14, v8, &qword_1EC16EB48, &qword_1C586AFB0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C5625230(v8, &qword_1EC16EB48, &qword_1C586AFB0);
  }

  sub_1C56EC178(v8, v13, type metadata accessor for WebPlacecardBridge.MURouteSnapshotArgument);
  sub_1C56EF190(&qword_1EC16F358, type metadata accessor for WebPlacecardBridge.MURouteSnapshotArgument, &unk_1C586DB70);
  sub_1C584F220();
  return sub_1C56EC248(v13, type metadata accessor for WebPlacecardBridge.MURouteSnapshotArgument);
}

uint64_t sub_1C56A4068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EB50, &qword_1C586AFB8);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for WebPlacecardBridge.MUAnalyticsArgument(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__analyticsArgument;
  swift_beginAccess();
  sub_1C56466CC(a1 + v14, v8, &qword_1EC16EB50, &qword_1C586AFB8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C5625230(v8, &qword_1EC16EB50, &qword_1C586AFB8);
  }

  sub_1C56EC178(v8, v13, type metadata accessor for WebPlacecardBridge.MUAnalyticsArgument);
  sub_1C56EF190(&qword_1EC16D728, type metadata accessor for WebPlacecardBridge.MUAnalyticsArgument, &unk_1C586DCD8);
  sub_1C584F220();
  return sub_1C56EC248(v13, type metadata accessor for WebPlacecardBridge.MUAnalyticsArgument);
}

uint64_t sub_1C56A4290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EB58, &qword_1C586AFC0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for WebPlacecardBridge.MUActionBarArgument(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__actionBarArgument;
  swift_beginAccess();
  sub_1C56466CC(a1 + v14, v8, &qword_1EC16EB58, &qword_1C586AFC0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C5625230(v8, &qword_1EC16EB58, &qword_1C586AFC0);
  }

  sub_1C56EC178(v8, v13, type metadata accessor for WebPlacecardBridge.MUActionBarArgument);
  sub_1C56EF190(&qword_1EC16D740, type metadata accessor for WebPlacecardBridge.MUActionBarArgument, &unk_1C586E408);
  sub_1C584F220();
  return sub_1C56EC248(v13, type metadata accessor for WebPlacecardBridge.MUActionBarArgument);
}

uint64_t sub_1C56A44B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EB60, &qword_1C586AFC8);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for WebPlacecardBridge.MUStickyHeaderArgument(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__stickyHeaderArgument;
  swift_beginAccess();
  sub_1C56466CC(a1 + v14, v8, &qword_1EC16EB60, &qword_1C586AFC8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C5625230(v8, &qword_1EC16EB60, &qword_1C586AFC8);
  }

  sub_1C56EC178(v8, v13, type metadata accessor for WebPlacecardBridge.MUStickyHeaderArgument);
  sub_1C56EF190(&qword_1EC16D620, type metadata accessor for WebPlacecardBridge.MUStickyHeaderArgument, &unk_1C5870ED8);
  sub_1C584F220();
  return sub_1C56EC248(v13, type metadata accessor for WebPlacecardBridge.MUStickyHeaderArgument);
}

uint64_t sub_1C56A46E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EB68, &qword_1C586AFD0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for WebPlacecardBridge.MUHeaderInsetsArgument(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__headerInsetsArgument;
  swift_beginAccess();
  sub_1C56466CC(a1 + v14, v8, &qword_1EC16EB68, &qword_1C586AFD0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C5625230(v8, &qword_1EC16EB68, &qword_1C586AFD0);
  }

  sub_1C56EC178(v8, v13, type metadata accessor for WebPlacecardBridge.MUHeaderInsetsArgument);
  sub_1C56EF190(&qword_1EC16D650, type metadata accessor for WebPlacecardBridge.MUHeaderInsetsArgument, &unk_1C5871040);
  sub_1C584F220();
  return sub_1C56EC248(v13, type metadata accessor for WebPlacecardBridge.MUHeaderInsetsArgument);
}

uint64_t sub_1C56A4908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EB70, &qword_1C586AFD8);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for WebPlacecardBridge.MUWebTextSelectionViewArgument(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__textSelectionViewArgument;
  swift_beginAccess();
  sub_1C56466CC(a1 + v14, v8, &qword_1EC16EB70, &qword_1C586AFD8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C5625230(v8, &qword_1EC16EB70, &qword_1C586AFD8);
  }

  sub_1C56EC178(v8, v13, type metadata accessor for WebPlacecardBridge.MUWebTextSelectionViewArgument);
  sub_1C56EF190(&qword_1EC16F388, type metadata accessor for WebPlacecardBridge.MUWebTextSelectionViewArgument, &unk_1C586E110);
  sub_1C584F220();
  return sub_1C56EC248(v13, type metadata accessor for WebPlacecardBridge.MUWebTextSelectionViewArgument);
}

BOOL sub_1C56A4B30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebPlacecardBridge.MUWebTextSelectionViewArgument(0);
  v405 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v401 = &v398 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v403 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FDA8, &qword_1C5875FB8);
  MEMORY[0x1EEE9AC00](v403, v7);
  v9 = &v398 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EB70, &qword_1C586AFD8);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v404 = &v398 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v14);
  v406 = &v398 - v15;
  v412 = type metadata accessor for WebPlacecardBridge.MUHeaderInsetsArgument(0);
  v409 = *(v412 - 8);
  MEMORY[0x1EEE9AC00](v412, v16);
  v402 = &v398 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v407 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FDB0, &qword_1C5875FC0);
  MEMORY[0x1EEE9AC00](v407, v18);
  v414 = &v398 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EB68, &qword_1C586AFD0);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v408 = &v398 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v24);
  v411 = &v398 - v25;
  v420 = type metadata accessor for WebPlacecardBridge.MUStickyHeaderArgument(0);
  v416 = *(v420 - 8);
  MEMORY[0x1EEE9AC00](v420, v26);
  v410 = &v398 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v415 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FDB8, &qword_1C5875FC8);
  MEMORY[0x1EEE9AC00](v415, v28);
  v424 = &v398 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EB60, &qword_1C586AFC8);
  v32 = MEMORY[0x1EEE9AC00](v30 - 8, v31);
  v417 = &v398 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32, v34);
  v419 = &v398 - v35;
  v426 = type metadata accessor for WebPlacecardBridge.MUActionBarArgument(0);
  v422 = *(v426 - 8);
  MEMORY[0x1EEE9AC00](v426, v36);
  v413 = (&v398 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  v421 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FDC0, &qword_1C5875FD0);
  MEMORY[0x1EEE9AC00](v421, v38);
  v430 = &v398 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EB58, &qword_1C586AFC0);
  v42 = MEMORY[0x1EEE9AC00](v40 - 8, v41);
  v423 = (&v398 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v42, v44);
  v425 = &v398 - v45;
  v432 = type metadata accessor for WebPlacecardBridge.MUAnalyticsArgument(0);
  v428 = *(v432 - 8);
  MEMORY[0x1EEE9AC00](v432, v46);
  v418 = (&v398 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  v427 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FDC8, &qword_1C5875FD8);
  MEMORY[0x1EEE9AC00](v427, v48);
  v435 = &v398 - v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EB50, &qword_1C586AFB8);
  v52 = MEMORY[0x1EEE9AC00](v50 - 8, v51);
  v429 = (&v398 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v52, v54);
  v433 = &v398 - v55;
  v441 = type metadata accessor for WebPlacecardBridge.MURouteSnapshotArgument(0);
  v437 = *(v441 - 8);
  MEMORY[0x1EEE9AC00](v441, v56);
  v431 = &v398 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v436 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FDD0, &qword_1C5875FE0);
  MEMORY[0x1EEE9AC00](v436, v58);
  v446 = &v398 - v59;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EB48, &qword_1C586AFB0);
  v62 = MEMORY[0x1EEE9AC00](v60 - 8, v61);
  v438 = &v398 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v62, v64);
  v439 = &v398 - v65;
  v66 = type metadata accessor for WebPlacecardBridge.MUNearbyPlacesArgument(0);
  v444 = *(v66 - 8);
  v445 = v66;
  MEMORY[0x1EEE9AC00](v66, v67);
  v434 = &v398 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v442 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FDD8, &qword_1C5875FE8);
  MEMORY[0x1EEE9AC00](v442, v69);
  v447 = &v398 - v70;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EB40, &qword_1C586AFA8);
  v73 = MEMORY[0x1EEE9AC00](v71 - 8, v72);
  v443 = &v398 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v73, v75);
  v450 = &v398 - v76;
  v455 = type metadata accessor for WebPlacecardBridge.MUTransitLabelArgument(0);
  v453 = *(v455 - 8);
  MEMORY[0x1EEE9AC00](v455, v77);
  v440 = (&v398 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0));
  v452 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FDE0, &qword_1C5875FF0);
  MEMORY[0x1EEE9AC00](v452, v79);
  v454 = &v398 - v80;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EB38, &qword_1C586AFA0);
  v83 = MEMORY[0x1EEE9AC00](v81 - 8, v82);
  v449 = (&v398 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v83, v85);
  v456 = &v398 - v86;
  refreshed = type metadata accessor for WebPlacecardBridge.MUMapItemRefreshArgument(0);
  v459 = *(refreshed - 8);
  v460 = refreshed;
  MEMORY[0x1EEE9AC00](refreshed, v88);
  v451 = (&v398 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0));
  v458 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FDE8, &qword_1C5875FF8);
  MEMORY[0x1EEE9AC00](v458, v90);
  v461 = &v398 - v91;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EB30, &qword_1C586AF98);
  v94 = MEMORY[0x1EEE9AC00](v92 - 8, v93);
  v472 = (&v398 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v94, v96);
  v462 = &v398 - v97;
  v467 = type metadata accessor for WebPlacecardBridge.MUPageResizedArgument(0);
  v466 = *(v467 - 8);
  MEMORY[0x1EEE9AC00](v467, v98);
  v457 = &v398 - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0);
  v465 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FDF0, &qword_1C5876000);
  MEMORY[0x1EEE9AC00](v465, v100);
  v468 = &v398 - v101;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EB28, &qword_1C586AF90);
  v104 = MEMORY[0x1EEE9AC00](v102 - 8, v103);
  v463 = &v398 - ((v105 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v104, v106);
  v470 = &v398 - v107;
  v475 = type metadata accessor for WebPlacecardBridge.MUWebMenuButton(0);
  v474 = *(v475 - 8);
  MEMORY[0x1EEE9AC00](v475, v108);
  v464 = (&v398 - ((v109 + 15) & 0xFFFFFFFFFFFFFFF0));
  v473 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FDF8, &qword_1C5876008);
  MEMORY[0x1EEE9AC00](v473, v110);
  v476 = &v398 - v111;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EB20, &qword_1C586AF88);
  v114 = MEMORY[0x1EEE9AC00](v112 - 8, v113);
  v469 = (&v398 - ((v115 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v114, v116);
  v478 = &v398 - v117;
  v481 = type metadata accessor for WebPlacecardBridge.MUUserInteractionAction(0);
  v480 = *(v481 - 8);
  MEMORY[0x1EEE9AC00](v481, v118);
  v471 = &v398 - ((v119 + 15) & 0xFFFFFFFFFFFFFFF0);
  v479 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FCD0, &qword_1C5875EE0);
  MEMORY[0x1EEE9AC00](v479, v120);
  v482 = &v398 - v121;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EB18, &qword_1C586AF80);
  v124 = MEMORY[0x1EEE9AC00](v122 - 8, v123);
  v477 = &v398 - ((v125 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v124, v126);
  v490 = &v398 - v127;
  v488 = type metadata accessor for WebPlacecardBridge.MUAmpArtworkArgument(0);
  v487 = *(v488 - 8);
  MEMORY[0x1EEE9AC00](v488, v128);
  v483 = &v398 - ((v129 + 15) & 0xFFFFFFFFFFFFFFF0);
  v486 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FE00, &qword_1C5876010);
  MEMORY[0x1EEE9AC00](v486, v130);
  v489 = &v398 - v131;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EB10, &qword_1C586AF78);
  v134 = MEMORY[0x1EEE9AC00](v132 - 8, v133);
  v485 = &v398 - ((v135 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v134, v136);
  v492 = &v398 - v137;
  v496 = type metadata accessor for WebPlacecardBridge.MUAttributionArgument(0);
  v495 = *(v496 - 8);
  MEMORY[0x1EEE9AC00](v496, v138);
  v484 = &v398 - ((v139 + 15) & 0xFFFFFFFFFFFFFFF0);
  v494 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FE08, &qword_1C5876018);
  MEMORY[0x1EEE9AC00](v494, v140);
  v497 = &v398 - v141;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EB08, &qword_1C586AF70);
  v144 = MEMORY[0x1EEE9AC00](v142 - 8, v143);
  v491 = &v398 - ((v145 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v144, v146);
  v499 = &v398 - v147;
  v500 = type metadata accessor for WebPlacecardBridge.MUIconArgument(0);
  v148 = *(v500 - 8);
  MEMORY[0x1EEE9AC00](v500, v149);
  v493 = &v398 - ((v150 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FE10, &unk_1C5876020);
  MEMORY[0x1EEE9AC00](v151, v152);
  v154 = &v398 - v153;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EB00, &qword_1C586AF68);
  v157 = MEMORY[0x1EEE9AC00](v155 - 8, v156);
  v498 = &v398 - ((v158 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v157, v159);
  v161 = &v398 - v160;
  swift_beginAccess();
  v162 = *(a1 + 16);
  swift_beginAccess();
  v163 = *(a2 + 16);
  if (v162 == 2)
  {
    if (v163 != 2)
    {
      return 0;
    }

LABEL_6:
    v399 = v4;
    v400 = v9;
    v448 = a2;
    v165 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__iconArgument;
    swift_beginAccess();
    v166 = a1;
    v167 = a1 + v165;
    v168 = v448;
    sub_1C56466CC(v167, v161, &qword_1EC16EB00, &qword_1C586AF68);
    v169 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__iconArgument;
    swift_beginAccess();
    v170 = *(v151 + 48);
    sub_1C56466CC(v161, v154, &qword_1EC16EB00, &qword_1C586AF68);
    sub_1C56466CC(v168 + v169, &v154[v170], &qword_1EC16EB00, &qword_1C586AF68);
    v171 = *(v148 + 48);
    v172 = v500;
    if (v171(v154, 1, v500) == 1)
    {

      sub_1C5625230(v161, &qword_1EC16EB00, &qword_1C586AF68);
      if (v171(&v154[v170], 1, v172) == 1)
      {
        sub_1C5625230(v154, &qword_1EC16EB00, &qword_1C586AF68);
LABEL_13:
        v179 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__attributionArgument;
        swift_beginAccess();
        v180 = v499;
        sub_1C56466CC(a1 + v179, v499, &qword_1EC16EB08, &qword_1C586AF70);
        v181 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__attributionArgument;
        swift_beginAccess();
        v182 = *(v494 + 48);
        v183 = v497;
        sub_1C56466CC(v180, v497, &qword_1EC16EB08, &qword_1C586AF70);
        sub_1C56466CC(v168 + v181, v183 + v182, &qword_1EC16EB08, &qword_1C586AF70);
        v184 = *(v495 + 48);
        v185 = v496;
        if (v184(v183, 1, v496) == 1)
        {
          sub_1C5625230(v180, &qword_1EC16EB08, &qword_1C586AF70);
          if (v184(v183 + v182, 1, v185) == 1)
          {
            sub_1C5625230(v183, &qword_1EC16EB08, &qword_1C586AF70);
            goto LABEL_20;
          }
        }

        else
        {
          v186 = v491;
          sub_1C56466CC(v183, v491, &qword_1EC16EB08, &qword_1C586AF70);
          if (v184(v183 + v182, 1, v185) != 1)
          {
            v187 = v183 + v182;
            v188 = v484;
            sub_1C56EC178(v187, v484, type metadata accessor for WebPlacecardBridge.MUAttributionArgument);
            v189 = sub_1C56F0DFC(v186, v188);
            sub_1C56EC248(v188, type metadata accessor for WebPlacecardBridge.MUAttributionArgument);
            sub_1C5625230(v499, &qword_1EC16EB08, &qword_1C586AF70);
            sub_1C56EC248(v186, type metadata accessor for WebPlacecardBridge.MUAttributionArgument);
            sub_1C5625230(v183, &qword_1EC16EB08, &qword_1C586AF70);
            if ((v189 & 1) == 0)
            {
              goto LABEL_41;
            }

LABEL_20:
            v190 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__artworkArgument;
            swift_beginAccess();
            v191 = v492;
            sub_1C56466CC(a1 + v190, v492, &qword_1EC16EB10, &qword_1C586AF78);
            v192 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__artworkArgument;
            swift_beginAccess();
            v193 = *(v486 + 48);
            v194 = v489;
            sub_1C56466CC(v191, v489, &qword_1EC16EB10, &qword_1C586AF78);
            v195 = v168 + v192;
            v196 = v194;
            sub_1C56466CC(v195, v194 + v193, &qword_1EC16EB10, &qword_1C586AF78);
            v197 = *(v487 + 48);
            v198 = v194;
            v199 = v488;
            if (v197(v198, 1, v488) == 1)
            {
              sub_1C5625230(v191, &qword_1EC16EB10, &qword_1C586AF78);
              v200 = v197(v196 + v193, 1, v199);
              v201 = v490;
              if (v200 == 1)
              {
                sub_1C5625230(v196, &qword_1EC16EB10, &qword_1C586AF78);
LABEL_23:
                v202 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userInteractionAction;
                swift_beginAccess();
                sub_1C56466CC(a1 + v202, v201, &qword_1EC16EB18, &qword_1C586AF80);
                v203 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userInteractionAction;
                swift_beginAccess();
                v204 = *(v479 + 48);
                v205 = v201;
                v206 = v201;
                v207 = v482;
                sub_1C56466CC(v205, v482, &qword_1EC16EB18, &qword_1C586AF80);
                v208 = v168 + v203;
                v196 = v207;
                sub_1C56466CC(v208, v207 + v204, &qword_1EC16EB18, &qword_1C586AF80);
                v209 = *(v480 + 48);
                v210 = v207;
                v211 = v481;
                if (v209(v210, 1, v481) == 1)
                {
                  sub_1C5625230(v206, &qword_1EC16EB18, &qword_1C586AF80);
                  v212 = v209(v196 + v204, 1, v211);
                  v213 = v478;
                  if (v212 == 1)
                  {
                    sub_1C5625230(v196, &qword_1EC16EB18, &qword_1C586AF80);
                    goto LABEL_50;
                  }
                }

                else
                {
                  v229 = v477;
                  sub_1C56466CC(v196, v477, &qword_1EC16EB18, &qword_1C586AF80);
                  if (v209(v196 + v204, 1, v211) != 1)
                  {
                    v232 = v211;
                    v233 = v471;
                    sub_1C56EC178(v196 + v204, v471, type metadata accessor for WebPlacecardBridge.MUUserInteractionAction);
                    v234 = *(v232 + 20);
                    v235 = *(v229 + v234);
                    v236 = *(v233 + v234);
                    if (v235 != v236)
                    {

                      v237 = sub_1C56B1234(v235, v236);

                      if (!v237)
                      {
                        v265 = type metadata accessor for WebPlacecardBridge.MUUserInteractionAction;
                        sub_1C56EC248(v233, type metadata accessor for WebPlacecardBridge.MUUserInteractionAction);
                        v266 = &qword_1EC16EB18;
                        v267 = &qword_1C586AF80;
                        sub_1C5625230(v490, &qword_1EC16EB18, &qword_1C586AF80);
                        v268 = v477;
LABEL_65:
                        sub_1C56EC248(v268, v265);
                        v176 = v196;
                        v174 = v266;
                        v175 = v267;
                        goto LABEL_40;
                      }
                    }

                    sub_1C584EFD0();
                    sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
                    v238 = v477;
                    v239 = sub_1C584F620();
                    sub_1C56EC248(v233, type metadata accessor for WebPlacecardBridge.MUUserInteractionAction);
                    sub_1C5625230(v490, &qword_1EC16EB18, &qword_1C586AF80);
                    sub_1C56EC248(v238, type metadata accessor for WebPlacecardBridge.MUUserInteractionAction);
                    sub_1C5625230(v196, &qword_1EC16EB18, &qword_1C586AF80);
                    v213 = v478;
                    if ((v239 & 1) == 0)
                    {
                      goto LABEL_41;
                    }

LABEL_50:
                    v240 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__webMenuButton;
                    swift_beginAccess();
                    sub_1C56466CC(a1 + v240, v213, &qword_1EC16EB20, &qword_1C586AF88);
                    v241 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__webMenuButton;
                    swift_beginAccess();
                    v242 = *(v473 + 48);
                    v243 = v476;
                    sub_1C56466CC(v213, v476, &qword_1EC16EB20, &qword_1C586AF88);
                    sub_1C56466CC(v168 + v241, v243 + v242, &qword_1EC16EB20, &qword_1C586AF88);
                    v244 = *(v474 + 48);
                    v245 = v475;
                    if (v244(v243, 1, v475) == 1)
                    {
                      sub_1C5625230(v213, &qword_1EC16EB20, &qword_1C586AF88);
                      if (v244(v243 + v242, 1, v245) == 1)
                      {
                        sub_1C5625230(v243, &qword_1EC16EB20, &qword_1C586AF88);
                        v246 = v472;
                        goto LABEL_58;
                      }
                    }

                    else
                    {
                      v247 = v469;
                      sub_1C56466CC(v243, v469, &qword_1EC16EB20, &qword_1C586AF88);
                      v248 = v244(v243 + v242, 1, v245);
                      v246 = v472;
                      if (v248 != 1)
                      {
                        v249 = v243 + v242;
                        v250 = v464;
                        sub_1C56EC178(v249, v464, type metadata accessor for WebPlacecardBridge.MUWebMenuButton);
                        v251 = sub_1C56F1758(v247, v250);
                        sub_1C56EC248(v250, type metadata accessor for WebPlacecardBridge.MUWebMenuButton);
                        sub_1C5625230(v478, &qword_1EC16EB20, &qword_1C586AF88);
                        sub_1C56EC248(v247, type metadata accessor for WebPlacecardBridge.MUWebMenuButton);
                        sub_1C5625230(v243, &qword_1EC16EB20, &qword_1C586AF88);
                        if ((v251 & 1) == 0)
                        {
                          goto LABEL_41;
                        }

LABEL_58:
                        v252 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__pageResizedArgument;
                        swift_beginAccess();
                        v253 = v470;
                        sub_1C56466CC(a1 + v252, v470, &qword_1EC16EB28, &qword_1C586AF90);
                        v254 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__pageResizedArgument;
                        swift_beginAccess();
                        v255 = *(v465 + 48);
                        v196 = v468;
                        sub_1C56466CC(v253, v468, &qword_1EC16EB28, &qword_1C586AF90);
                        sub_1C56466CC(v168 + v254, v196 + v255, &qword_1EC16EB28, &qword_1C586AF90);
                        v256 = *(v466 + 48);
                        v257 = v467;
                        if (v256(v196, 1, v467) == 1)
                        {
                          sub_1C5625230(v253, &qword_1EC16EB28, &qword_1C586AF90);
                          if (v256(v196 + v255, 1, v257) == 1)
                          {
                            sub_1C5625230(v196, &qword_1EC16EB28, &qword_1C586AF90);
LABEL_61:
                            v258 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__mapItemRefreshArgument;
                            swift_beginAccess();
                            v259 = v462;
                            sub_1C56466CC(a1 + v258, v462, &qword_1EC16EB30, &qword_1C586AF98);
                            v260 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__mapItemRefreshArgument;
                            swift_beginAccess();
                            v261 = *(v458 + 48);
                            v262 = v461;
                            sub_1C56466CC(v259, v461, &qword_1EC16EB30, &qword_1C586AF98);
                            v243 = v262;
                            sub_1C56466CC(v168 + v260, v262 + v261, &qword_1EC16EB30, &qword_1C586AF98);
                            v263 = v460;
                            v264 = *(v459 + 48);
                            if (v264(v262, 1, v460) == 1)
                            {
                              sub_1C5625230(v259, &qword_1EC16EB30, &qword_1C586AF98);
                              if (v264(v262 + v261, 1, v263) == 1)
                              {
                                sub_1C5625230(v262, &qword_1EC16EB30, &qword_1C586AF98);
LABEL_81:
                                v280 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__transitLabelArgument;
                                swift_beginAccess();
                                v281 = v456;
                                sub_1C56466CC(a1 + v280, v456, &qword_1EC16EB38, &qword_1C586AFA0);
                                v282 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__transitLabelArgument;
                                swift_beginAccess();
                                v283 = *(v452 + 48);
                                v284 = v454;
                                sub_1C56466CC(v281, v454, &qword_1EC16EB38, &qword_1C586AFA0);
                                v243 = v284;
                                sub_1C56466CC(v168 + v282, v284 + v283, &qword_1EC16EB38, &qword_1C586AFA0);
                                v285 = *(v453 + 48);
                                v286 = v284;
                                v287 = v455;
                                if (v285(v286, 1, v455) == 1)
                                {
                                  sub_1C5625230(v281, &qword_1EC16EB38, &qword_1C586AFA0);
                                  if (v285(v243 + v283, 1, v287) == 1)
                                  {
                                    sub_1C5625230(v243, &qword_1EC16EB38, &qword_1C586AFA0);
                                    goto LABEL_84;
                                  }

                                  goto LABEL_89;
                                }

                                v296 = v449;
                                sub_1C56466CC(v243, v449, &qword_1EC16EB38, &qword_1C586AFA0);
                                if (v285(v243 + v283, 1, v287) == 1)
                                {
                                  sub_1C5625230(v456, &qword_1EC16EB38, &qword_1C586AFA0);
                                  sub_1C56EC248(v296, type metadata accessor for WebPlacecardBridge.MUTransitLabelArgument);
LABEL_89:
                                  v174 = &qword_1EC16FDE0;
                                  v175 = &qword_1C5875FF0;
                                  goto LABEL_56;
                                }

                                v297 = v440;
                                sub_1C56EC178(v243 + v283, v440, type metadata accessor for WebPlacecardBridge.MUTransitLabelArgument);
                                v298 = v243;
                                if (sub_1C56EA440(*v296, *v297))
                                {
                                  sub_1C584EFD0();
                                  sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
                                  v299 = sub_1C584F620();
                                  sub_1C5625230(v456, &qword_1EC16EB38, &qword_1C586AFA0);
                                  sub_1C56EC248(v297, type metadata accessor for WebPlacecardBridge.MUTransitLabelArgument);
                                  sub_1C56EC248(v296, type metadata accessor for WebPlacecardBridge.MUTransitLabelArgument);
                                  sub_1C5625230(v243, &qword_1EC16EB38, &qword_1C586AFA0);
                                  if ((v299 & 1) == 0)
                                  {
                                    goto LABEL_41;
                                  }

LABEL_84:
                                  v288 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__nearbyPlacesArgument;
                                  swift_beginAccess();
                                  v289 = v450;
                                  sub_1C56466CC(a1 + v288, v450, &qword_1EC16EB40, &qword_1C586AFA8);
                                  v290 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__nearbyPlacesArgument;
                                  swift_beginAccess();
                                  v291 = *(v442 + 48);
                                  v292 = v289;
                                  v293 = v447;
                                  sub_1C56466CC(v292, v447, &qword_1EC16EB40, &qword_1C586AFA8);
                                  sub_1C56466CC(v168 + v290, v293 + v291, &qword_1EC16EB40, &qword_1C586AFA8);
                                  v294 = v445;
                                  v295 = *(v444 + 48);
                                  if (v295(v293, 1, v445) == 1)
                                  {
                                    sub_1C5625230(v450, &qword_1EC16EB40, &qword_1C586AFA8);
                                    if (v295(v293 + v291, 1, v294) == 1)
                                    {
                                      sub_1C5625230(v293, &qword_1EC16EB40, &qword_1C586AFA8);
                                      goto LABEL_98;
                                    }
                                  }

                                  else
                                  {
                                    sub_1C56466CC(v293, v443, &qword_1EC16EB40, &qword_1C586AFA8);
                                    if (v295(v293 + v291, 1, v294) != 1)
                                    {
                                      v303 = v447;
                                      v304 = v447 + v291;
                                      v305 = v434;
                                      sub_1C56EC178(v304, v434, type metadata accessor for WebPlacecardBridge.MUNearbyPlacesArgument);
                                      v306 = v443;
                                      v307 = sub_1C56F0C00(v443, v305, type metadata accessor for WebPlacecardBridge.MUNearbyPlacesArgument);
                                      sub_1C56EC248(v305, type metadata accessor for WebPlacecardBridge.MUNearbyPlacesArgument);
                                      sub_1C5625230(v450, &qword_1EC16EB40, &qword_1C586AFA8);
                                      sub_1C56EC248(v306, type metadata accessor for WebPlacecardBridge.MUNearbyPlacesArgument);
                                      sub_1C5625230(v303, &qword_1EC16EB40, &qword_1C586AFA8);
                                      if ((v307 & 1) == 0)
                                      {
                                        goto LABEL_41;
                                      }

LABEL_98:
                                      v308 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__routeSnapshotArgument;
                                      swift_beginAccess();
                                      v309 = v439;
                                      sub_1C56466CC(a1 + v308, v439, &qword_1EC16EB48, &qword_1C586AFB0);
                                      v310 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__routeSnapshotArgument;
                                      v311 = v448;
                                      swift_beginAccess();
                                      v312 = *(v436 + 48);
                                      v313 = v309;
                                      v314 = v446;
                                      sub_1C56466CC(v313, v446, &qword_1EC16EB48, &qword_1C586AFB0);
                                      sub_1C56466CC(v311 + v310, v314 + v312, &qword_1EC16EB48, &qword_1C586AFB0);
                                      v315 = *(v437 + 48);
                                      if (v315(v314, 1, v441) == 1)
                                      {
                                        sub_1C5625230(v439, &qword_1EC16EB48, &qword_1C586AFB0);
                                        if (v315(v446 + v312, 1, v441) == 1)
                                        {
                                          sub_1C5625230(v446, &qword_1EC16EB48, &qword_1C586AFB0);
                                          goto LABEL_101;
                                        }

LABEL_106:
                                        v300 = &qword_1EC16FDD0;
                                        v301 = &qword_1C5875FE0;
                                        v302 = v446;
                                        goto LABEL_145;
                                      }

                                      v324 = v446;
                                      sub_1C56466CC(v446, v438, &qword_1EC16EB48, &qword_1C586AFB0);
                                      if (v315(v324 + v312, 1, v441) == 1)
                                      {
                                        sub_1C5625230(v439, &qword_1EC16EB48, &qword_1C586AFB0);
                                        sub_1C56EC248(v438, type metadata accessor for WebPlacecardBridge.MURouteSnapshotArgument);
                                        goto LABEL_106;
                                      }

                                      v325 = v431;
                                      sub_1C56EC178(v446 + v312, v431, type metadata accessor for WebPlacecardBridge.MURouteSnapshotArgument);
                                      v326 = *(v441 + 20);
                                      v327 = (v438 + v326);
                                      v328 = *(v438 + v326 + 8);
                                      v329 = (v325 + v326);
                                      v330 = v329[1];
                                      if (v328)
                                      {
                                        if (v330 && (*v327 == *v329 && v328 == v330 || (sub_1C584FDC0() & 1) != 0))
                                        {
LABEL_112:
                                          sub_1C584EFD0();
                                          sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
                                          v331 = v438;
                                          v332 = v431;
                                          v333 = sub_1C584F620();
                                          sub_1C5625230(v439, &qword_1EC16EB48, &qword_1C586AFB0);
                                          sub_1C56EC248(v332, type metadata accessor for WebPlacecardBridge.MURouteSnapshotArgument);
                                          sub_1C56EC248(v331, type metadata accessor for WebPlacecardBridge.MURouteSnapshotArgument);
                                          sub_1C5625230(v446, &qword_1EC16EB48, &qword_1C586AFB0);
                                          if ((v333 & 1) == 0)
                                          {
                                            goto LABEL_41;
                                          }

LABEL_101:
                                          v316 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__analyticsArgument;
                                          swift_beginAccess();
                                          v317 = v433;
                                          sub_1C56466CC(a1 + v316, v433, &qword_1EC16EB50, &qword_1C586AFB8);
                                          v318 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__analyticsArgument;
                                          v319 = v448;
                                          swift_beginAccess();
                                          v320 = *(v427 + 48);
                                          v321 = v317;
                                          v322 = v435;
                                          sub_1C56466CC(v321, v435, &qword_1EC16EB50, &qword_1C586AFB8);
                                          sub_1C56466CC(v319 + v318, v322 + v320, &qword_1EC16EB50, &qword_1C586AFB8);
                                          v323 = *(v428 + 48);
                                          if (v323(v322, 1, v432) == 1)
                                          {
                                            sub_1C5625230(v433, &qword_1EC16EB50, &qword_1C586AFB8);
                                            if (v323(v435 + v320, 1, v432) == 1)
                                            {
                                              sub_1C5625230(v435, &qword_1EC16EB50, &qword_1C586AFB8);
LABEL_120:
                                              v340 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__actionBarArgument;
                                              swift_beginAccess();
                                              v341 = v425;
                                              sub_1C56466CC(a1 + v340, v425, &qword_1EC16EB58, &qword_1C586AFC0);
                                              v342 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__actionBarArgument;
                                              v343 = v448;
                                              swift_beginAccess();
                                              v344 = *(v421 + 48);
                                              v345 = v341;
                                              v346 = v430;
                                              sub_1C56466CC(v345, v430, &qword_1EC16EB58, &qword_1C586AFC0);
                                              sub_1C56466CC(v343 + v342, v346 + v344, &qword_1EC16EB58, &qword_1C586AFC0);
                                              v347 = *(v422 + 48);
                                              if (v347(v346, 1, v426) == 1)
                                              {
                                                sub_1C5625230(v425, &qword_1EC16EB58, &qword_1C586AFC0);
                                                if (v347(v430 + v344, 1, v426) == 1)
                                                {
                                                  sub_1C5625230(v430, &qword_1EC16EB58, &qword_1C586AFC0);
                                                  goto LABEL_127;
                                                }
                                              }

                                              else
                                              {
                                                v348 = v430;
                                                sub_1C56466CC(v430, v423, &qword_1EC16EB58, &qword_1C586AFC0);
                                                if (v347(v348 + v344, 1, v426) != 1)
                                                {
                                                  v349 = v430;
                                                  v350 = v430 + v344;
                                                  v351 = v413;
                                                  sub_1C56EC178(v350, v413, type metadata accessor for WebPlacecardBridge.MUActionBarArgument);
                                                  v352 = v423;
                                                  v353 = sub_1C56F113C(v423, v351);
                                                  sub_1C56EC248(v351, type metadata accessor for WebPlacecardBridge.MUActionBarArgument);
                                                  sub_1C5625230(v425, &qword_1EC16EB58, &qword_1C586AFC0);
                                                  sub_1C56EC248(v352, type metadata accessor for WebPlacecardBridge.MUActionBarArgument);
                                                  sub_1C5625230(v349, &qword_1EC16EB58, &qword_1C586AFC0);
                                                  if ((v353 & 1) == 0)
                                                  {
                                                    goto LABEL_41;
                                                  }

LABEL_127:
                                                  v354 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__stickyHeaderArgument;
                                                  swift_beginAccess();
                                                  v355 = v419;
                                                  sub_1C56466CC(a1 + v354, v419, &qword_1EC16EB60, &qword_1C586AFC8);
                                                  v356 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__stickyHeaderArgument;
                                                  v357 = v448;
                                                  swift_beginAccess();
                                                  v358 = *(v415 + 48);
                                                  v359 = v355;
                                                  v360 = v424;
                                                  sub_1C56466CC(v359, v424, &qword_1EC16EB60, &qword_1C586AFC8);
                                                  sub_1C56466CC(v357 + v356, v360 + v358, &qword_1EC16EB60, &qword_1C586AFC8);
                                                  v361 = *(v416 + 48);
                                                  if (v361(v360, 1, v420) == 1)
                                                  {
                                                    sub_1C5625230(v419, &qword_1EC16EB60, &qword_1C586AFC8);
                                                    if (v361(v424 + v358, 1, v420) == 1)
                                                    {
                                                      sub_1C5625230(v424, &qword_1EC16EB60, &qword_1C586AFC8);
LABEL_130:
                                                      v362 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__headerInsetsArgument;
                                                      swift_beginAccess();
                                                      v363 = v411;
                                                      sub_1C56466CC(a1 + v362, v411, &qword_1EC16EB68, &qword_1C586AFD0);
                                                      v364 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__headerInsetsArgument;
                                                      v365 = v448;
                                                      swift_beginAccess();
                                                      v366 = *(v407 + 48);
                                                      v367 = v363;
                                                      v368 = v414;
                                                      sub_1C56466CC(v367, v414, &qword_1EC16EB68, &qword_1C586AFD0);
                                                      sub_1C56466CC(v365 + v364, v368 + v366, &qword_1EC16EB68, &qword_1C586AFD0);
                                                      v369 = *(v409 + 48);
                                                      if (v369(v368, 1, v412) == 1)
                                                      {
                                                        sub_1C5625230(v411, &qword_1EC16EB68, &qword_1C586AFD0);
                                                        if (v369(v414 + v366, 1, v412) == 1)
                                                        {
                                                          sub_1C5625230(v414, &qword_1EC16EB68, &qword_1C586AFD0);
LABEL_150:
                                                          v384 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__textSelectionViewArgument;
                                                          swift_beginAccess();
                                                          v385 = v406;
                                                          sub_1C56466CC(a1 + v384, v406, &qword_1EC16EB70, &qword_1C586AFD8);
                                                          v386 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__textSelectionViewArgument;
                                                          v387 = v448;
                                                          swift_beginAccess();
                                                          v388 = *(v403 + 48);
                                                          v389 = v385;
                                                          v390 = v400;
                                                          sub_1C56466CC(v389, v400, &qword_1EC16EB70, &qword_1C586AFD8);
                                                          sub_1C56466CC(v387 + v386, v390 + v388, &qword_1EC16EB70, &qword_1C586AFD8);
                                                          v391 = *(v405 + 48);
                                                          if (v391(v390, 1, v399) == 1)
                                                          {

                                                            sub_1C5625230(v406, &qword_1EC16EB70, &qword_1C586AFD8);
                                                            if (v391(&v400[v388], 1, v399) == 1)
                                                            {
                                                              sub_1C5625230(v400, &qword_1EC16EB70, &qword_1C586AFD8);
                                                              return 1;
                                                            }

                                                            goto LABEL_155;
                                                          }

                                                          v392 = v400;
                                                          sub_1C56466CC(v400, v404, &qword_1EC16EB70, &qword_1C586AFD8);
                                                          if (v391((v392 + v388), 1, v399) == 1)
                                                          {

                                                            sub_1C5625230(v406, &qword_1EC16EB70, &qword_1C586AFD8);
                                                            sub_1C56EC248(v404, type metadata accessor for WebPlacecardBridge.MUWebTextSelectionViewArgument);
LABEL_155:
                                                            sub_1C5625230(v400, &qword_1EC16FDA8, &qword_1C5875FB8);
                                                            return 0;
                                                          }

                                                          v393 = v400;
                                                          v394 = &v400[v388];
                                                          v395 = v401;
                                                          sub_1C56EC178(v394, v401, type metadata accessor for WebPlacecardBridge.MUWebTextSelectionViewArgument);
                                                          v396 = v404;
                                                          v397 = sub_1C56EF97C(v404, v395);

                                                          sub_1C56EC248(v395, type metadata accessor for WebPlacecardBridge.MUWebTextSelectionViewArgument);
                                                          sub_1C5625230(v406, &qword_1EC16EB70, &qword_1C586AFD8);
                                                          sub_1C56EC248(v396, type metadata accessor for WebPlacecardBridge.MUWebTextSelectionViewArgument);
                                                          sub_1C5625230(v393, &qword_1EC16EB70, &qword_1C586AFD8);
                                                          return (v397 & 1) != 0;
                                                        }

                                                        goto LABEL_141;
                                                      }

                                                      v375 = v414;
                                                      sub_1C56466CC(v414, v408, &qword_1EC16EB68, &qword_1C586AFD0);
                                                      if (v369(v375 + v366, 1, v412) == 1)
                                                      {
                                                        sub_1C5625230(v411, &qword_1EC16EB68, &qword_1C586AFD0);
                                                        sub_1C56EC248(v408, type metadata accessor for WebPlacecardBridge.MUHeaderInsetsArgument);
LABEL_141:
                                                        v300 = &qword_1EC16FDB0;
                                                        v301 = &qword_1C5875FC0;
                                                        v302 = v414;
                                                        goto LABEL_145;
                                                      }

                                                      v379 = v414;
                                                      v380 = v414 + v366;
                                                      v381 = v402;
                                                      sub_1C56EC178(v380, v402, type metadata accessor for WebPlacecardBridge.MUHeaderInsetsArgument);
                                                      v382 = v408;
                                                      v383 = sub_1C56F4268(v408, v381, type metadata accessor for WebPlacecardBridge.MUHeaderInsetsArgument);
                                                      sub_1C56EC248(v381, type metadata accessor for WebPlacecardBridge.MUHeaderInsetsArgument);
                                                      sub_1C5625230(v411, &qword_1EC16EB68, &qword_1C586AFD0);
                                                      sub_1C56EC248(v382, type metadata accessor for WebPlacecardBridge.MUHeaderInsetsArgument);
                                                      sub_1C5625230(v379, &qword_1EC16EB68, &qword_1C586AFD0);
                                                      if (v383)
                                                      {
                                                        goto LABEL_150;
                                                      }

LABEL_41:

                                                      return 0;
                                                    }

                                                    goto LABEL_135;
                                                  }

                                                  v370 = v424;
                                                  sub_1C56466CC(v424, v417, &qword_1EC16EB60, &qword_1C586AFC8);
                                                  if (v361(v370 + v358, 1, v420) == 1)
                                                  {
                                                    sub_1C5625230(v419, &qword_1EC16EB60, &qword_1C586AFC8);
                                                    sub_1C56EC248(v417, type metadata accessor for WebPlacecardBridge.MUStickyHeaderArgument);
LABEL_135:
                                                    v300 = &qword_1EC16FDB8;
                                                    v301 = &qword_1C5875FC8;
                                                    v302 = v424;
                                                    goto LABEL_145;
                                                  }

                                                  v371 = v410;
                                                  sub_1C56EC178(v424 + v358, v410, type metadata accessor for WebPlacecardBridge.MUStickyHeaderArgument);
                                                  v372 = *(v420 + 20);
                                                  v373 = *(v417 + v372);
                                                  v374 = *(v371 + v372);
                                                  if (v373 == 2)
                                                  {
                                                    if (v374 == 2)
                                                    {
                                                      goto LABEL_147;
                                                    }
                                                  }

                                                  else if (v374 != 2 && ((v373 ^ v374) & 1) == 0)
                                                  {
LABEL_147:
                                                    sub_1C584EFD0();
                                                    sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
                                                    v376 = v417;
                                                    v377 = v410;
                                                    v378 = sub_1C584F620();
                                                    sub_1C56EC248(v377, type metadata accessor for WebPlacecardBridge.MUStickyHeaderArgument);
                                                    sub_1C5625230(v419, &qword_1EC16EB60, &qword_1C586AFC8);
                                                    sub_1C56EC248(v376, type metadata accessor for WebPlacecardBridge.MUStickyHeaderArgument);
                                                    sub_1C5625230(v424, &qword_1EC16EB60, &qword_1C586AFC8);
                                                    if ((v378 & 1) == 0)
                                                    {
                                                      goto LABEL_41;
                                                    }

                                                    goto LABEL_130;
                                                  }

                                                  sub_1C56EC248(v410, type metadata accessor for WebPlacecardBridge.MUStickyHeaderArgument);
                                                  sub_1C5625230(v419, &qword_1EC16EB60, &qword_1C586AFC8);
                                                  sub_1C56EC248(v417, type metadata accessor for WebPlacecardBridge.MUStickyHeaderArgument);
                                                  v302 = v424;
                                                  v300 = &qword_1EC16EB60;
                                                  v301 = &qword_1C586AFC8;
                                                  goto LABEL_145;
                                                }

                                                sub_1C5625230(v425, &qword_1EC16EB58, &qword_1C586AFC0);
                                                sub_1C56EC248(v423, type metadata accessor for WebPlacecardBridge.MUActionBarArgument);
                                              }

                                              v300 = &qword_1EC16FDC0;
                                              v301 = &qword_1C5875FD0;
                                              v302 = v430;
LABEL_145:
                                              sub_1C5625230(v302, v300, v301);
                                              goto LABEL_41;
                                            }
                                          }

                                          else
                                          {
                                            v334 = v435;
                                            sub_1C56466CC(v435, v429, &qword_1EC16EB50, &qword_1C586AFB8);
                                            if (v323(v334 + v320, 1, v432) != 1)
                                            {
                                              v335 = v435;
                                              v336 = v435 + v320;
                                              v337 = v418;
                                              sub_1C56EC178(v336, v418, type metadata accessor for WebPlacecardBridge.MUAnalyticsArgument);
                                              v338 = v429;
                                              v339 = sub_1C56F0FF4(v429, v337);
                                              sub_1C56EC248(v337, type metadata accessor for WebPlacecardBridge.MUAnalyticsArgument);
                                              sub_1C5625230(v433, &qword_1EC16EB50, &qword_1C586AFB8);
                                              sub_1C56EC248(v338, type metadata accessor for WebPlacecardBridge.MUAnalyticsArgument);
                                              sub_1C5625230(v335, &qword_1EC16EB50, &qword_1C586AFB8);
                                              if ((v339 & 1) == 0)
                                              {
                                                goto LABEL_41;
                                              }

                                              goto LABEL_120;
                                            }

                                            sub_1C5625230(v433, &qword_1EC16EB50, &qword_1C586AFB8);
                                            sub_1C56EC248(v429, type metadata accessor for WebPlacecardBridge.MUAnalyticsArgument);
                                          }

                                          v300 = &qword_1EC16FDC8;
                                          v301 = &qword_1C5875FD8;
                                          v302 = v435;
                                          goto LABEL_145;
                                        }
                                      }

                                      else if (!v330)
                                      {
                                        goto LABEL_112;
                                      }

                                      sub_1C5625230(v439, &qword_1EC16EB48, &qword_1C586AFB0);
                                      sub_1C56EC248(v431, type metadata accessor for WebPlacecardBridge.MURouteSnapshotArgument);
                                      sub_1C56EC248(v438, type metadata accessor for WebPlacecardBridge.MURouteSnapshotArgument);
                                      v302 = v446;
                                      v300 = &qword_1EC16EB48;
                                      v301 = &qword_1C586AFB0;
                                      goto LABEL_145;
                                    }

                                    sub_1C5625230(v450, &qword_1EC16EB40, &qword_1C586AFA8);
                                    sub_1C56EC248(v443, type metadata accessor for WebPlacecardBridge.MUNearbyPlacesArgument);
                                    v293 = v447;
                                  }

                                  v300 = &qword_1EC16FDD8;
                                  v301 = &qword_1C5875FE8;
                                  v302 = v293;
                                  goto LABEL_145;
                                }

                                v230 = &qword_1EC16EB38;
                                v231 = &qword_1C586AFA0;
                                sub_1C5625230(v456, &qword_1EC16EB38, &qword_1C586AFA0);
                                sub_1C56EC248(v297, type metadata accessor for WebPlacecardBridge.MUTransitLabelArgument);
                                sub_1C56EC248(v296, type metadata accessor for WebPlacecardBridge.MUTransitLabelArgument);
                                v176 = v298;
                                goto LABEL_46;
                              }
                            }

                            else
                            {
                              sub_1C56466CC(v262, v246, &qword_1EC16EB30, &qword_1C586AF98);
                              if (v264(v262 + v261, 1, v263) != 1)
                              {
                                v277 = v262 + v261;
                                v278 = v451;
                                sub_1C56EC178(v277, v451, type metadata accessor for WebPlacecardBridge.MUMapItemRefreshArgument);
                                v279 = sub_1C56F0A18(v246, v278);
                                sub_1C56EC248(v278, type metadata accessor for WebPlacecardBridge.MUMapItemRefreshArgument);
                                sub_1C5625230(v462, &qword_1EC16EB30, &qword_1C586AF98);
                                sub_1C56EC248(v246, type metadata accessor for WebPlacecardBridge.MUMapItemRefreshArgument);
                                sub_1C5625230(v262, &qword_1EC16EB30, &qword_1C586AF98);
                                if ((v279 & 1) == 0)
                                {
                                  goto LABEL_41;
                                }

                                goto LABEL_81;
                              }

                              sub_1C5625230(v462, &qword_1EC16EB30, &qword_1C586AF98);
                              sub_1C56EC248(v246, type metadata accessor for WebPlacecardBridge.MUMapItemRefreshArgument);
                            }

                            v174 = &qword_1EC16FDE8;
                            v175 = &qword_1C5875FF8;
LABEL_56:
                            v176 = v243;
                            goto LABEL_40;
                          }

                          goto LABEL_68;
                        }

                        v269 = v463;
                        sub_1C56466CC(v196, v463, &qword_1EC16EB28, &qword_1C586AF90);
                        if (v256(v196 + v255, 1, v257) == 1)
                        {
                          sub_1C5625230(v470, &qword_1EC16EB28, &qword_1C586AF90);
                          sub_1C56EC248(v269, type metadata accessor for WebPlacecardBridge.MUPageResizedArgument);
LABEL_68:
                          v174 = &qword_1EC16FDF0;
                          v175 = &qword_1C5876000;
                          goto LABEL_39;
                        }

                        v270 = v457;
                        sub_1C56EC178(v196 + v255, v457, type metadata accessor for WebPlacecardBridge.MUPageResizedArgument);
                        v271 = *(v257 + 20);
                        v272 = (v269 + v271);
                        v273 = *(v269 + v271 + 4);
                        v274 = (v270 + v271);
                        v275 = *(v270 + v271 + 4);
                        if (v273)
                        {
                          if (!v275)
                          {
LABEL_71:
                            v265 = type metadata accessor for WebPlacecardBridge.MUPageResizedArgument;
                            sub_1C56EC248(v270, type metadata accessor for WebPlacecardBridge.MUPageResizedArgument);
                            v266 = &qword_1EC16EB28;
                            v267 = &qword_1C586AF90;
                            sub_1C5625230(v470, &qword_1EC16EB28, &qword_1C586AF90);
                            v268 = v269;
                            goto LABEL_65;
                          }
                        }

                        else
                        {
                          if (*v272 != *v274)
                          {
                            LOBYTE(v275) = 1;
                          }

                          if (v275)
                          {
                            goto LABEL_71;
                          }
                        }

                        sub_1C584EFD0();
                        sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
                        v276 = sub_1C584F620();
                        sub_1C56EC248(v270, type metadata accessor for WebPlacecardBridge.MUPageResizedArgument);
                        sub_1C5625230(v470, &qword_1EC16EB28, &qword_1C586AF90);
                        sub_1C56EC248(v269, type metadata accessor for WebPlacecardBridge.MUPageResizedArgument);
                        sub_1C5625230(v196, &qword_1EC16EB28, &qword_1C586AF90);
                        if ((v276 & 1) == 0)
                        {
                          goto LABEL_41;
                        }

                        goto LABEL_61;
                      }

                      sub_1C5625230(v478, &qword_1EC16EB20, &qword_1C586AF88);
                      sub_1C56EC248(v247, type metadata accessor for WebPlacecardBridge.MUWebMenuButton);
                    }

                    v174 = &qword_1EC16FDF8;
                    v175 = &qword_1C5876008;
                    goto LABEL_56;
                  }

                  sub_1C5625230(v490, &qword_1EC16EB18, &qword_1C586AF80);
                  sub_1C56EC248(v229, type metadata accessor for WebPlacecardBridge.MUUserInteractionAction);
                }

                v174 = &qword_1EC16FCD0;
                v175 = &qword_1C5875EE0;
LABEL_39:
                v176 = v196;
                goto LABEL_40;
              }

LABEL_28:
              v174 = &qword_1EC16FE00;
              v175 = &qword_1C5876010;
              goto LABEL_39;
            }

            v214 = v485;
            sub_1C56466CC(v196, v485, &qword_1EC16EB10, &qword_1C586AF78);
            v215 = v197(v196 + v193, 1, v199);
            v216 = v199;
            v201 = v490;
            if (v215 == 1)
            {
              sub_1C5625230(v492, &qword_1EC16EB10, &qword_1C586AF78);
              sub_1C56EC248(v214, type metadata accessor for WebPlacecardBridge.MUAmpArtworkArgument);
              goto LABEL_28;
            }

            v217 = v196 + v193;
            v218 = v214;
            v219 = v483;
            sub_1C56EC178(v217, v483, type metadata accessor for WebPlacecardBridge.MUAmpArtworkArgument);
            v220 = *(v216 + 20);
            v221 = (v218 + v220);
            v222 = *(v218 + v220 + 8);
            v223 = (v219 + v220);
            v224 = v223[1];
            if (v222)
            {
              v225 = v492;
              if (v224 && (*v221 == *v223 && v222 == v224 || (sub_1C584FDC0() & 1) != 0))
              {
LABEL_34:
                sub_1C584EFD0();
                sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
                v226 = v485;
                v227 = v483;
                v228 = sub_1C584F620();
                sub_1C5625230(v225, &qword_1EC16EB10, &qword_1C586AF78);
                sub_1C56EC248(v227, type metadata accessor for WebPlacecardBridge.MUAmpArtworkArgument);
                sub_1C56EC248(v226, type metadata accessor for WebPlacecardBridge.MUAmpArtworkArgument);
                sub_1C5625230(v196, &qword_1EC16EB10, &qword_1C586AF78);
                if ((v228 & 1) == 0)
                {
                  goto LABEL_41;
                }

                goto LABEL_23;
              }
            }

            else
            {
              v225 = v492;
              if (!v224)
              {
                goto LABEL_34;
              }
            }

            v230 = &qword_1EC16EB10;
            v231 = &qword_1C586AF78;
            sub_1C5625230(v225, &qword_1EC16EB10, &qword_1C586AF78);
            sub_1C56EC248(v483, type metadata accessor for WebPlacecardBridge.MUAmpArtworkArgument);
            sub_1C56EC248(v485, type metadata accessor for WebPlacecardBridge.MUAmpArtworkArgument);
            v176 = v196;
LABEL_46:
            v174 = v230;
            v175 = v231;
            goto LABEL_40;
          }

          sub_1C5625230(v499, &qword_1EC16EB08, &qword_1C586AF70);
          sub_1C56EC248(v186, type metadata accessor for WebPlacecardBridge.MUAttributionArgument);
        }

        v174 = &qword_1EC16FE08;
        v175 = &qword_1C5876018;
        v176 = v183;
LABEL_40:
        sub_1C5625230(v176, v174, v175);
        goto LABEL_41;
      }
    }

    else
    {
      v173 = v498;
      sub_1C56466CC(v154, v498, &qword_1EC16EB00, &qword_1C586AF68);
      if (v171(&v154[v170], 1, v172) != 1)
      {
        v177 = v493;
        sub_1C56EC178(&v154[v170], v493, type metadata accessor for WebPlacecardBridge.MUIconArgument);

        v178 = sub_1C56F2258(v173, v177);
        sub_1C56EC248(v177, type metadata accessor for WebPlacecardBridge.MUIconArgument);
        sub_1C5625230(v161, &qword_1EC16EB00, &qword_1C586AF68);
        sub_1C56EC248(v173, type metadata accessor for WebPlacecardBridge.MUIconArgument);
        a1 = v166;
        sub_1C5625230(v154, &qword_1EC16EB00, &qword_1C586AF68);
        if ((v178 & 1) == 0)
        {
          goto LABEL_41;
        }

        goto LABEL_13;
      }

      sub_1C5625230(v161, &qword_1EC16EB00, &qword_1C586AF68);
      sub_1C56EC248(v173, type metadata accessor for WebPlacecardBridge.MUIconArgument);
    }

    v174 = &qword_1EC16FE10;
    v175 = &unk_1C5876020;
    v176 = v154;
    goto LABEL_40;
  }

  result = 0;
  if (v163 != 2 && ((v163 ^ v162) & 1) == 0)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_1C56A8738(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16FB58, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument, &unk_1C586D648);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56A87D8(uint64_t a1)
{
  sub_1C56EF190(&qword_1EC16D660, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument, &unk_1C586D5D0);

  return sub_1C584F160();
}

uint64_t sub_1C56A8844(uint64_t a1, uint64_t a2)
{
  sub_1C56EF190(&qword_1EC16D660, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument, &unk_1C586D5D0);

  return sub_1C584F170();
}

uint64_t sub_1C56A8904()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC18FC48);
  __swift_project_value_buffer(v0, qword_1EC18FC48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C5867980;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "maps_id";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "refresh_reason";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "batch_maps_ids";
  *(v11 + 8) = 14;
  *(v11 + 16) = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56A8B14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for WebPlacecardBridge.MUMapItemRefreshArgument(0);
  v6 = result;
  if (*(v3 + *(result + 24) + 8))
  {
    result = sub_1C584F1F0();
    if (v4)
    {
      return result;
    }
  }

  else if (v4)
  {
    return result;
  }

  if (*(v3 + *(v6 + 28)) != 3)
  {
    sub_1C57040D0();
    sub_1C584F1A0();
  }

  if (*(*v3 + 16))
  {
    sub_1C584F1D0();
  }

  return sub_1C584EFB0();
}

uint64_t sub_1C56A8CC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16FB50, type metadata accessor for WebPlacecardBridge.MUMapItemRefreshArgument, &unk_1C586D7B0);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56A8D60(uint64_t a1)
{
  sub_1C56EF190(&qword_1EC16D5E0, type metadata accessor for WebPlacecardBridge.MUMapItemRefreshArgument, &unk_1C586D738);

  return sub_1C584F160();
}

uint64_t sub_1C56A8DCC(uint64_t a1, uint64_t a2)
{
  sub_1C56EF190(&qword_1EC16D5E0, type metadata accessor for WebPlacecardBridge.MUMapItemRefreshArgument, &unk_1C586D738);

  return sub_1C584F170();
}

uint64_t sub_1C56A8E4C()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC18FC60);
  __swift_project_value_buffer(v0, qword_1EC18FC60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C5867990;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "maps_id";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "category_id";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56A908C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16FB48, type metadata accessor for WebPlacecardBridge.MUNearbyPlacesArgument, &unk_1C586D918);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56A912C(uint64_t a1)
{
  sub_1C56EF190(&qword_1EC16F328, type metadata accessor for WebPlacecardBridge.MUNearbyPlacesArgument, &unk_1C586D8A0);

  return sub_1C584F160();
}

uint64_t sub_1C56A9198(uint64_t a1, uint64_t a2)
{
  sub_1C56EF190(&qword_1EC16F328, type metadata accessor for WebPlacecardBridge.MUNearbyPlacesArgument, &unk_1C586D8A0);

  return sub_1C584F170();
}

uint64_t sub_1C56A92EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16FB40, type metadata accessor for WebPlacecardBridge.MUTransitLabelArgument, &unk_1C586DA80);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56A938C(uint64_t a1)
{
  sub_1C56EF190(&qword_1EC16F340, type metadata accessor for WebPlacecardBridge.MUTransitLabelArgument, &unk_1C586DA08);

  return sub_1C584F160();
}

uint64_t sub_1C56A93F8(uint64_t a1, uint64_t a2)
{
  sub_1C56EF190(&qword_1EC16F340, type metadata accessor for WebPlacecardBridge.MUTransitLabelArgument, &unk_1C586DA08);

  return sub_1C584F170();
}

uint64_t sub_1C56A9520(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16FB38, type metadata accessor for WebPlacecardBridge.MURouteSnapshotArgument, &unk_1C586DBE8);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56A95C0(uint64_t a1)
{
  sub_1C56EF190(&qword_1EC16F358, type metadata accessor for WebPlacecardBridge.MURouteSnapshotArgument, &unk_1C586DB70);

  return sub_1C584F160();
}

uint64_t sub_1C56A962C(uint64_t a1, uint64_t a2)
{
  sub_1C56EF190(&qword_1EC16F358, type metadata accessor for WebPlacecardBridge.MURouteSnapshotArgument, &unk_1C586DB70);

  return sub_1C584F170();
}

uint64_t sub_1C56A96D8()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC18FCA8);
  __swift_project_value_buffer(v0, qword_1EC18FCA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C5867980;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "payload";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "session_type";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "daily_count_bucket_event_type";
  *(v11 + 8) = 29;
  *(v11 + 16) = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56A98F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t))
{
  while (1)
  {
    result = sub_1C584F050();
    if (v8 || (v14 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        a7(v7, a2, a3);
        break;
      case 2:
        a4(0);
        a5();
        sub_1C584F090();
        break;
      case 1:
        a4(0);
        sub_1C584F0D0();
        break;
    }
  }

  return result;
}

uint64_t sub_1C56A9A28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for WebPlacecardBridge.MUAnalyticsArgument(0);
  v6 = result;
  if (*(v3 + *(result + 24) + 8))
  {
    result = sub_1C584F1F0();
    if (v4)
    {
      return result;
    }
  }

  else if (v4)
  {
    return result;
  }

  if (*(v3 + *(v6 + 28)) != 5)
  {
    sub_1C570407C();
    sub_1C584F1A0();
  }

  if (*(*v3 + 16))
  {
    sub_1C584F1E0();
  }

  return sub_1C584EFB0();
}

uint64_t sub_1C56A9B44@<X0>(uint64_t a1@<X0>, char a2@<W2>, void *a3@<X8>)
{
  *a3 = MEMORY[0x1E69E7CC0];
  result = sub_1C584EFC0();
  v7 = *(a1 + 28);
  v8 = (a3 + *(a1 + 24));
  *v8 = 0;
  v8[1] = 0;
  *(a3 + v7) = a2;
  return result;
}

uint64_t sub_1C56A9C2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16FB30, type metadata accessor for WebPlacecardBridge.MUAnalyticsArgument, &unk_1C586DD50);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56A9CCC(uint64_t a1)
{
  sub_1C56EF190(&qword_1EC16D728, type metadata accessor for WebPlacecardBridge.MUAnalyticsArgument, &unk_1C586DCD8);

  return sub_1C584F160();
}

uint64_t sub_1C56A9D38(uint64_t a1, uint64_t a2)
{
  sub_1C56EF190(&qword_1EC16D728, type metadata accessor for WebPlacecardBridge.MUAnalyticsArgument, &unk_1C586DCD8);

  return sub_1C584F170();
}

uint64_t sub_1C56A9DB8()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC18FCC0);
  __swift_project_value_buffer(v0, qword_1EC18FCC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v63 = swift_allocObject();
  *(v63 + 16) = xmmword_1C586AE80;
  v4 = v63 + v3;
  v5 = v63 + v3 + v1[14];
  *(v63 + v3) = 1;
  *v5 = "user_interaction_type";
  *(v5 + 8) = 21;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADE8];
  v7 = sub_1C584F230();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "arp_suggestion_argument";
  *(v9 + 8) = 23;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "explore_guides_argument";
  *(v11 + 1) = 23;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "user_guide_argument";
  *(v13 + 1) = 19;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "arp_rating_argument";
  *(v15 + 1) = 19;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "inline_rap_argument";
  *(v17 + 1) = 19;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "photo_argument";
  *(v19 + 1) = 14;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "view_place_list_argument";
  *(v21 + 1) = 24;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "open_guide_argument";
  *(v22 + 8) = 19;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "open_place_argument";
  *(v24 + 1) = 19;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "url_argument";
  *(v26 + 1) = 12;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "attribution_url_argument";
  *(v28 + 1) = 24;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "tapped_library_argument";
  *(v30 + 1) = 23;
  v30[16] = 2;
  v8();
  v31 = (v4 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "browse_category_argument";
  *(v32 + 1) = 24;
  v32[16] = 2;
  v8();
  v33 = (v4 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "tapped_transit_departure_argument";
  *(v34 + 1) = 33;
  v34[16] = 2;
  v8();
  v35 = (v4 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "open_app_clip_argument";
  *(v36 + 1) = 22;
  v36[16] = 2;
  v8();
  v37 = v4 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 17;
  *v37 = "open_extension_argument";
  *(v37 + 8) = 23;
  *(v37 + 16) = 2;
  v8();
  v38 = (v4 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 18;
  *v39 = "offline_map_action_type_argument";
  *(v39 + 1) = 32;
  v39[16] = 2;
  v8();
  v40 = (v4 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 19;
  *v41 = "report_an_issue_type_argument";
  *(v41 + 1) = 29;
  v41[16] = 2;
  v8();
  v42 = (v4 + 19 * v2);
  v43 = v42 + v1[14];
  *v42 = 20;
  *v43 = "pin_action_type_argument";
  *(v43 + 1) = 24;
  v43[16] = 2;
  v8();
  v44 = (v4 + 20 * v2);
  v45 = v44 + v1[14];
  *v44 = 21;
  *v45 = "directions_contact_argument";
  *(v45 + 1) = 27;
  v45[16] = 2;
  v8();
  v46 = (v4 + 21 * v2);
  v47 = v46 + v1[14];
  *v46 = 22;
  *v47 = "view_guide_list_argument";
  *(v47 + 1) = 24;
  v47[16] = 2;
  v8();
  v48 = (v4 + 22 * v2);
  v49 = v48 + v1[14];
  *v48 = 23;
  *v49 = "add_to_guides_argument";
  *(v49 + 1) = 22;
  v49[16] = 2;
  v8();
  v50 = (v4 + 23 * v2);
  v51 = v50 + v1[14];
  *v50 = 24;
  *v51 = "tapped_transit_incident_argument";
  *(v51 + 1) = 32;
  v51[16] = 2;
  v8();
  v52 = (v4 + 24 * v2);
  v53 = v52 + v1[14];
  *v52 = 25;
  *v53 = "publisher_guide_action_argument";
  *(v53 + 1) = 31;
  v53[16] = 2;
  v8();
  v54 = (v4 + 25 * v2);
  v55 = v54 + v1[14];
  *v54 = 26;
  *v55 = "open_photo_viewer_argument";
  *(v55 + 1) = 26;
  v55[16] = 2;
  v8();
  v56 = (v4 + 26 * v2);
  v57 = v56 + v1[14];
  *v56 = 27;
  *v57 = "add_photos_argument";
  *(v57 + 1) = 19;
  v57[16] = 2;
  v8();
  v58 = (v4 + 27 * v2);
  v59 = v58 + v1[14];
  *v58 = 28;
  *v59 = "copy_argument";
  *(v59 + 1) = 13;
  v59[16] = 2;
  v8();
  v60 = (v4 + 28 * v2);
  v61 = v60 + v1[14];
  *v60 = 29;
  *v61 = "send_to_device_argument";
  *(v61 + 1) = 23;
  v61[16] = 2;
  v8();
  return sub_1C584F240();
}

uint64_t sub_1C56AA5EC()
{
  type metadata accessor for WebPlacecardBridge.MUUserInteractionAction._StorageClass(0);
  v0 = swift_allocObject();
  *(v0 + 16) = 54;
  v1 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__arpSuggestionArgument;
  v2 = type metadata accessor for WebPlacecardBridge.MUUserInteractionARPSuggestion(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__exploreGuidesArgument;
  v4 = type metadata accessor for WebPlacecardBridge.MUUserInteractionExploreGuide(0);
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userGuideArgument;
  v6 = type metadata accessor for WebPlacecardBridge.MUUserInteractionUserGuide(0);
  (*(*(v6 - 8) + 56))(v0 + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__arpRatingArgument;
  v8 = type metadata accessor for WebPlacecardBridge.MUUserInteractionARPRating(0);
  (*(*(v8 - 8) + 56))(v0 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__inlineRapArgument;
  v10 = type metadata accessor for WebPlacecardBridge.MUUserInteractionInlineRAPEntry(0);
  (*(*(v10 - 8) + 56))(v0 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__photoArgument;
  v12 = type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedPhoto(0);
  (*(*(v12 - 8) + 56))(v0 + v11, 1, 1, v12);
  v13 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__viewPlaceListArgument;
  v14 = type metadata accessor for WebPlacecardBridge.MUUserInteractionViewPlaceList(0);
  (*(*(v14 - 8) + 56))(v0 + v13, 1, 1, v14);
  v15 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__openGuideArgument;
  v16 = type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedGuide(0);
  (*(*(v16 - 8) + 56))(v0 + v15, 1, 1, v16);
  v17 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__openPlaceArgument;
  v18 = type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedPlace(0);
  (*(*(v18 - 8) + 56))(v0 + v17, 1, 1, v18);
  v19 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__urlArgument;
  v20 = type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedUrl(0);
  (*(*(v20 - 8) + 56))(v0 + v19, 1, 1, v20);
  v21 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__attributionURLArgument;
  v22 = type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedAttributionUrl(0);
  (*(*(v22 - 8) + 56))(v0 + v21, 1, 1, v22);
  v23 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__tappedLibraryArgument;
  v24 = type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedLibrary(0);
  (*(*(v24 - 8) + 56))(v0 + v23, 1, 1, v24);
  v25 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__browseCategoryArgument;
  v26 = type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedBrowseCategory(0);
  (*(*(v26 - 8) + 56))(v0 + v25, 1, 1, v26);
  v27 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__tappedTransitDepartureArgument;
  v28 = type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedTransitDeparture(0);
  (*(*(v28 - 8) + 56))(v0 + v27, 1, 1, v28);
  v29 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__openAppClipArgument;
  v30 = type metadata accessor for WebPlacecardBridge.MUUserInteractionOpenAppClip(0);
  (*(*(v30 - 8) + 56))(v0 + v29, 1, 1, v30);
  v31 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__openExtensionArgument;
  v32 = type metadata accessor for WebPlacecardBridge.MUUserInteractionOpenExtension(0);
  (*(*(v32 - 8) + 56))(v0 + v31, 1, 1, v32);
  *(v0 + OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__offlineMapActionTypeArgument) = 3;
  *(v0 + OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__reportAnIssueTypeArgument) = 6;
  *(v0 + OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__pinActionTypeArgument) = 3;
  v33 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__directionsContactArgument;
  v34 = type metadata accessor for MUContactLabeledValue(0);
  (*(*(v34 - 8) + 56))(v0 + v33, 1, 1, v34);
  v35 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__viewGuideListArgument;
  v36 = type metadata accessor for WebPlacecardBridge.MUUserInteractionViewGuideList(0);
  (*(*(v36 - 8) + 56))(v0 + v35, 1, 1, v36);
  v37 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__addToGuidesArgument;
  v38 = type metadata accessor for WebPlacecardBridge.MUUserInteractionAddToGuides(0);
  (*(*(v38 - 8) + 56))(v0 + v37, 1, 1, v38);
  v39 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__tappedTransitIncidentArgument;
  v40 = type metadata accessor for WebPlacecardBridge.MUUserInteractionActionTappedTransitIncident(0);
  (*(*(v40 - 8) + 56))(v0 + v39, 1, 1, v40);
  v41 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__publisherGuideActionArgument;
  v42 = type metadata accessor for WebPlacecardBridge.MUUserInteractionPublisherGuideAction(0);
  (*(*(v42 - 8) + 56))(v0 + v41, 1, 1, v42);
  v43 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__openPhotoViewerArgument;
  v44 = type metadata accessor for WebPlacecardBridge.MUUserInteractionOpenPhotoViewer(0);
  (*(*(v44 - 8) + 56))(v0 + v43, 1, 1, v44);
  v45 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__addPhotosArgument;
  v46 = type metadata accessor for WebPlacecardBridge.MUUserInteractionAddPhotos(0);
  (*(*(v46 - 8) + 56))(v0 + v45, 1, 1, v46);
  v47 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__copyArgument;
  v48 = type metadata accessor for WebPlacecardBridge.MUUserInteractionCopy(0);
  (*(*(v48 - 8) + 56))(v0 + v47, 1, 1, v48);
  v49 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__sendToDeviceArgument;
  v50 = type metadata accessor for WebPlacecardBridge.MUUserInteractionSendToDevice(0);
  result = (*(*(v50 - 8) + 56))(v0 + v49, 1, 1, v50);
  qword_1EC178E98 = v0;
  return result;
}

uint64_t sub_1C56AAD64(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC28, &qword_1C586B0A0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v255 = &v207 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC20, &qword_1C586B098);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v254 = &v207 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FEF0, &qword_1C586B090);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v253 = &v207 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC18, &qword_1C586B088);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v252 = &v207 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC10, &qword_1C586B080);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v251 = &v207 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC08, &qword_1C586B078);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v250 = &v207 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC00, &qword_1C586B070);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v249 = &v207 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EBF8, &qword_1C586B068);
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v248 = &v207 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DD98, &unk_1C5868560);
  MEMORY[0x1EEE9AC00](v27 - 8, v28);
  v247 = &v207 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EBF0, &unk_1C586B058);
  MEMORY[0x1EEE9AC00](v30 - 8, v31);
  v246 = &v207 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EBE8, &qword_1C586B050);
  MEMORY[0x1EEE9AC00](v33 - 8, v34);
  v245 = &v207 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EBE0, &qword_1C586B048);
  MEMORY[0x1EEE9AC00](v36 - 8, v37);
  v244 = &v207 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EBD8, &qword_1C586B040);
  MEMORY[0x1EEE9AC00](v39 - 8, v40);
  v243 = &v207 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EBD0, &qword_1C586B038);
  MEMORY[0x1EEE9AC00](v42 - 8, v43);
  v242 = &v207 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EBC8, &qword_1C586B030);
  MEMORY[0x1EEE9AC00](v45 - 8, v46);
  v241 = &v207 - v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EBC0, &qword_1C586B028);
  MEMORY[0x1EEE9AC00](v48 - 8, v49);
  v240 = &v207 - v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EBB8, &qword_1C586B020);
  MEMORY[0x1EEE9AC00](v51 - 8, v52);
  v239 = &v207 - v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EBB0, &qword_1C586B018);
  MEMORY[0x1EEE9AC00](v54 - 8, v55);
  v236 = &v207 - v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EBA8, &qword_1C586B010);
  MEMORY[0x1EEE9AC00](v57 - 8, v58);
  v232 = &v207 - v59;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EBA0, &qword_1C586B008);
  MEMORY[0x1EEE9AC00](v60 - 8, v61);
  v227 = &v207 - v62;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EB98, &qword_1C586B000);
  MEMORY[0x1EEE9AC00](v63 - 8, v64);
  v223 = &v207 - v65;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EB90, &qword_1C586AFF8);
  MEMORY[0x1EEE9AC00](v66 - 8, v67);
  v218 = &v207 - v68;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EB88, &qword_1C586AFF0);
  MEMORY[0x1EEE9AC00](v69 - 8, v70);
  v214 = &v207 - v71;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EB80, &qword_1C586AFE8);
  MEMORY[0x1EEE9AC00](v72 - 8, v73);
  v209 = &v207 - v74;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EB78, &qword_1C586AFE0);
  MEMORY[0x1EEE9AC00](v75 - 8, v76);
  v78 = &v207 - v77;
  *(v1 + 16) = 54;
  v79 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__arpSuggestionArgument;
  v80 = type metadata accessor for WebPlacecardBridge.MUUserInteractionARPSuggestion(0);
  (*(*(v80 - 8) + 56))(v1 + v79, 1, 1, v80);
  v81 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__exploreGuidesArgument;
  v82 = type metadata accessor for WebPlacecardBridge.MUUserInteractionExploreGuide(0);
  (*(*(v82 - 8) + 56))(v1 + v81, 1, 1, v82);
  v83 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userGuideArgument;
  v84 = type metadata accessor for WebPlacecardBridge.MUUserInteractionUserGuide(0);
  (*(*(v84 - 8) + 56))(v1 + v83, 1, 1, v84);
  v85 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__arpRatingArgument;
  v86 = type metadata accessor for WebPlacecardBridge.MUUserInteractionARPRating(0);
  (*(*(v86 - 8) + 56))(v1 + v85, 1, 1, v86);
  v87 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__inlineRapArgument;
  v208 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__inlineRapArgument;
  v88 = type metadata accessor for WebPlacecardBridge.MUUserInteractionInlineRAPEntry(0);
  (*(*(v88 - 8) + 56))(v1 + v87, 1, 1, v88);
  v89 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__photoArgument;
  v210 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__photoArgument;
  v90 = type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedPhoto(0);
  (*(*(v90 - 8) + 56))(v1 + v89, 1, 1, v90);
  v91 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__viewPlaceListArgument;
  v211 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__viewPlaceListArgument;
  v92 = type metadata accessor for WebPlacecardBridge.MUUserInteractionViewPlaceList(0);
  (*(*(v92 - 8) + 56))(v1 + v91, 1, 1, v92);
  v93 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__openGuideArgument;
  v212 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__openGuideArgument;
  v94 = type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedGuide(0);
  (*(*(v94 - 8) + 56))(v1 + v93, 1, 1, v94);
  v95 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__openPlaceArgument;
  v213 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__openPlaceArgument;
  v96 = type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedPlace(0);
  (*(*(v96 - 8) + 56))(v1 + v95, 1, 1, v96);
  v97 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__urlArgument;
  v215 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__urlArgument;
  v98 = type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedUrl(0);
  (*(*(v98 - 8) + 56))(v1 + v97, 1, 1, v98);
  v99 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__attributionURLArgument;
  v216 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__attributionURLArgument;
  v100 = type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedAttributionUrl(0);
  (*(*(v100 - 8) + 56))(v1 + v99, 1, 1, v100);
  v101 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__tappedLibraryArgument;
  v217 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__tappedLibraryArgument;
  v102 = type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedLibrary(0);
  (*(*(v102 - 8) + 56))(v1 + v101, 1, 1, v102);
  v103 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__browseCategoryArgument;
  v219 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__browseCategoryArgument;
  v104 = type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedBrowseCategory(0);
  (*(*(v104 - 8) + 56))(v1 + v103, 1, 1, v104);
  v105 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__tappedTransitDepartureArgument;
  v220 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__tappedTransitDepartureArgument;
  v106 = type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedTransitDeparture(0);
  (*(*(v106 - 8) + 56))(v1 + v105, 1, 1, v106);
  v107 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__openAppClipArgument;
  v221 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__openAppClipArgument;
  v108 = type metadata accessor for WebPlacecardBridge.MUUserInteractionOpenAppClip(0);
  (*(*(v108 - 8) + 56))(v1 + v107, 1, 1, v108);
  v109 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__openExtensionArgument;
  v222 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__openExtensionArgument;
  v110 = type metadata accessor for WebPlacecardBridge.MUUserInteractionOpenExtension(0);
  (*(*(v110 - 8) + 56))(v1 + v109, 1, 1, v110);
  v224 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__offlineMapActionTypeArgument;
  *(v1 + OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__offlineMapActionTypeArgument) = 3;
  v111 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__reportAnIssueTypeArgument;
  *(v1 + OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__reportAnIssueTypeArgument) = 6;
  v225 = v111;
  v226 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__pinActionTypeArgument;
  *(v1 + OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__pinActionTypeArgument) = 3;
  v112 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__directionsContactArgument;
  v228 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__directionsContactArgument;
  v113 = type metadata accessor for MUContactLabeledValue(0);
  (*(*(v113 - 8) + 56))(v1 + v112, 1, 1, v113);
  v114 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__viewGuideListArgument;
  v229 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__viewGuideListArgument;
  v115 = type metadata accessor for WebPlacecardBridge.MUUserInteractionViewGuideList(0);
  (*(*(v115 - 8) + 56))(v1 + v114, 1, 1, v115);
  v116 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__addToGuidesArgument;
  v230 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__addToGuidesArgument;
  v117 = type metadata accessor for WebPlacecardBridge.MUUserInteractionAddToGuides(0);
  (*(*(v117 - 8) + 56))(v1 + v116, 1, 1, v117);
  v118 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__tappedTransitIncidentArgument;
  v231 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__tappedTransitIncidentArgument;
  v119 = type metadata accessor for WebPlacecardBridge.MUUserInteractionActionTappedTransitIncident(0);
  (*(*(v119 - 8) + 56))(v1 + v118, 1, 1, v119);
  v120 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__publisherGuideActionArgument;
  v233 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__publisherGuideActionArgument;
  v121 = type metadata accessor for WebPlacecardBridge.MUUserInteractionPublisherGuideAction(0);
  (*(*(v121 - 8) + 56))(v1 + v120, 1, 1, v121);
  v122 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__openPhotoViewerArgument;
  v234 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__openPhotoViewerArgument;
  v123 = type metadata accessor for WebPlacecardBridge.MUUserInteractionOpenPhotoViewer(0);
  (*(*(v123 - 8) + 56))(v1 + v122, 1, 1, v123);
  v124 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__addPhotosArgument;
  v235 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__addPhotosArgument;
  v125 = type metadata accessor for WebPlacecardBridge.MUUserInteractionAddPhotos(0);
  (*(*(v125 - 8) + 56))(v1 + v124, 1, 1, v125);
  v126 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__copyArgument;
  v237 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__copyArgument;
  v127 = type metadata accessor for WebPlacecardBridge.MUUserInteractionCopy(0);
  (*(*(v127 - 8) + 56))(v1 + v126, 1, 1, v127);
  v128 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__sendToDeviceArgument;
  v238 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__sendToDeviceArgument;
  v129 = type metadata accessor for WebPlacecardBridge.MUUserInteractionSendToDevice(0);
  (*(*(v129 - 8) + 56))(v1 + v128, 1, 1, v129);
  swift_beginAccess();
  LOBYTE(v128) = *(a1 + 16);
  swift_beginAccess();
  *(v1 + 16) = v128;
  v130 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__arpSuggestionArgument;
  swift_beginAccess();
  sub_1C56466CC(a1 + v130, v78, &qword_1EC16EB78, &qword_1C586AFE0);
  swift_beginAccess();
  sub_1C56ECE38(v78, v1 + v79, &qword_1EC16EB78, &qword_1C586AFE0);
  swift_endAccess();
  v131 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__exploreGuidesArgument;
  swift_beginAccess();
  v132 = v209;
  sub_1C56466CC(a1 + v131, v209, &qword_1EC16EB80, &qword_1C586AFE8);
  swift_beginAccess();
  sub_1C56ECE38(v132, v1 + v81, &qword_1EC16EB80, &qword_1C586AFE8);
  swift_endAccess();
  v133 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userGuideArgument;
  swift_beginAccess();
  v134 = v214;
  sub_1C56466CC(a1 + v133, v214, &qword_1EC16EB88, &qword_1C586AFF0);
  swift_beginAccess();
  sub_1C56ECE38(v134, v1 + v83, &qword_1EC16EB88, &qword_1C586AFF0);
  swift_endAccess();
  v135 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__arpRatingArgument;
  swift_beginAccess();
  v136 = v218;
  sub_1C56466CC(a1 + v135, v218, &qword_1EC16EB90, &qword_1C586AFF8);
  swift_beginAccess();
  sub_1C56ECE38(v136, v1 + v85, &qword_1EC16EB90, &qword_1C586AFF8);
  swift_endAccess();
  v137 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__inlineRapArgument;
  swift_beginAccess();
  v138 = v223;
  sub_1C56466CC(a1 + v137, v223, &qword_1EC16EB98, &qword_1C586B000);
  v139 = v208;
  swift_beginAccess();
  sub_1C56ECE38(v138, v1 + v139, &qword_1EC16EB98, &qword_1C586B000);
  swift_endAccess();
  v140 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__photoArgument;
  swift_beginAccess();
  v141 = v227;
  sub_1C56466CC(a1 + v140, v227, &qword_1EC16EBA0, &qword_1C586B008);
  v142 = v210;
  swift_beginAccess();
  sub_1C56ECE38(v141, v1 + v142, &qword_1EC16EBA0, &qword_1C586B008);
  swift_endAccess();
  v143 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__viewPlaceListArgument;
  swift_beginAccess();
  v144 = v232;
  sub_1C56466CC(a1 + v143, v232, &qword_1EC16EBA8, &qword_1C586B010);
  v145 = v211;
  swift_beginAccess();
  sub_1C56ECE38(v144, v1 + v145, &qword_1EC16EBA8, &qword_1C586B010);
  swift_endAccess();
  v146 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__openGuideArgument;
  swift_beginAccess();
  v147 = v236;
  sub_1C56466CC(a1 + v146, v236, &qword_1EC16EBB0, &qword_1C586B018);
  v148 = v212;
  swift_beginAccess();
  sub_1C56ECE38(v147, v1 + v148, &qword_1EC16EBB0, &qword_1C586B018);
  swift_endAccess();
  v149 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__openPlaceArgument;
  swift_beginAccess();
  v150 = v239;
  sub_1C56466CC(a1 + v149, v239, &qword_1EC16EBB8, &qword_1C586B020);
  v151 = v213;
  swift_beginAccess();
  sub_1C56ECE38(v150, v1 + v151, &qword_1EC16EBB8, &qword_1C586B020);
  swift_endAccess();
  v152 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__urlArgument;
  swift_beginAccess();
  v153 = v240;
  sub_1C56466CC(a1 + v152, v240, &qword_1EC16EBC0, &qword_1C586B028);
  v154 = v215;
  swift_beginAccess();
  sub_1C56ECE38(v153, v1 + v154, &qword_1EC16EBC0, &qword_1C586B028);
  swift_endAccess();
  v155 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__attributionURLArgument;
  swift_beginAccess();
  v156 = v241;
  sub_1C56466CC(a1 + v155, v241, &qword_1EC16EBC8, &qword_1C586B030);
  v157 = v216;
  swift_beginAccess();
  sub_1C56ECE38(v156, v1 + v157, &qword_1EC16EBC8, &qword_1C586B030);
  swift_endAccess();
  v158 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__tappedLibraryArgument;
  swift_beginAccess();
  v159 = v242;
  sub_1C56466CC(a1 + v158, v242, &qword_1EC16EBD0, &qword_1C586B038);
  v160 = v217;
  swift_beginAccess();
  sub_1C56ECE38(v159, v1 + v160, &qword_1EC16EBD0, &qword_1C586B038);
  swift_endAccess();
  v161 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__browseCategoryArgument;
  swift_beginAccess();
  v162 = v243;
  sub_1C56466CC(a1 + v161, v243, &qword_1EC16EBD8, &qword_1C586B040);
  v163 = v219;
  swift_beginAccess();
  sub_1C56ECE38(v162, v1 + v163, &qword_1EC16EBD8, &qword_1C586B040);
  swift_endAccess();
  v164 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__tappedTransitDepartureArgument;
  swift_beginAccess();
  v165 = v244;
  sub_1C56466CC(a1 + v164, v244, &qword_1EC16EBE0, &qword_1C586B048);
  v166 = v220;
  swift_beginAccess();
  sub_1C56ECE38(v165, v1 + v166, &qword_1EC16EBE0, &qword_1C586B048);
  swift_endAccess();
  v167 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__openAppClipArgument;
  swift_beginAccess();
  v168 = v245;
  sub_1C56466CC(a1 + v167, v245, &qword_1EC16EBE8, &qword_1C586B050);
  v169 = v221;
  swift_beginAccess();
  sub_1C56ECE38(v168, v1 + v169, &qword_1EC16EBE8, &qword_1C586B050);
  swift_endAccess();
  v170 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__openExtensionArgument;
  swift_beginAccess();
  v171 = v246;
  sub_1C56466CC(a1 + v170, v246, &qword_1EC16EBF0, &unk_1C586B058);
  v172 = v222;
  swift_beginAccess();
  sub_1C56ECE38(v171, v1 + v172, &qword_1EC16EBF0, &unk_1C586B058);
  swift_endAccess();
  v173 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__offlineMapActionTypeArgument;
  swift_beginAccess();
  LOBYTE(v173) = *(a1 + v173);
  v174 = v224;
  swift_beginAccess();
  *(v1 + v174) = v173;
  v175 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__reportAnIssueTypeArgument;
  swift_beginAccess();
  LOBYTE(v175) = *(a1 + v175);
  v176 = v225;
  swift_beginAccess();
  *(v1 + v176) = v175;
  v177 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__pinActionTypeArgument;
  swift_beginAccess();
  LOBYTE(v177) = *(a1 + v177);
  v178 = v226;
  swift_beginAccess();
  *(v1 + v178) = v177;
  v179 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__directionsContactArgument;
  swift_beginAccess();
  v180 = v247;
  sub_1C56466CC(a1 + v179, v247, &qword_1EC16DD98, &unk_1C5868560);
  v181 = v228;
  swift_beginAccess();
  sub_1C56ECE38(v180, v1 + v181, &qword_1EC16DD98, &unk_1C5868560);
  swift_endAccess();
  v182 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__viewGuideListArgument;
  swift_beginAccess();
  v183 = v248;
  sub_1C56466CC(a1 + v182, v248, &qword_1EC16EBF8, &qword_1C586B068);
  v184 = v229;
  swift_beginAccess();
  sub_1C56ECE38(v183, v1 + v184, &qword_1EC16EBF8, &qword_1C586B068);
  swift_endAccess();
  v185 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__addToGuidesArgument;
  swift_beginAccess();
  v186 = v249;
  sub_1C56466CC(a1 + v185, v249, &qword_1EC16EC00, &qword_1C586B070);
  v187 = v230;
  swift_beginAccess();
  sub_1C56ECE38(v186, v1 + v187, &qword_1EC16EC00, &qword_1C586B070);
  swift_endAccess();
  v188 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__tappedTransitIncidentArgument;
  swift_beginAccess();
  v189 = v250;
  sub_1C56466CC(a1 + v188, v250, &qword_1EC16EC08, &qword_1C586B078);
  v190 = v231;
  swift_beginAccess();
  sub_1C56ECE38(v189, v1 + v190, &qword_1EC16EC08, &qword_1C586B078);
  swift_endAccess();
  v191 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__publisherGuideActionArgument;
  swift_beginAccess();
  v192 = v251;
  sub_1C56466CC(a1 + v191, v251, &qword_1EC16EC10, &qword_1C586B080);
  v193 = v233;
  swift_beginAccess();
  sub_1C56ECE38(v192, v1 + v193, &qword_1EC16EC10, &qword_1C586B080);
  swift_endAccess();
  v194 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__openPhotoViewerArgument;
  swift_beginAccess();
  v195 = v252;
  sub_1C56466CC(a1 + v194, v252, &qword_1EC16EC18, &qword_1C586B088);
  v196 = v234;
  swift_beginAccess();
  sub_1C56ECE38(v195, v1 + v196, &qword_1EC16EC18, &qword_1C586B088);
  swift_endAccess();
  v197 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__addPhotosArgument;
  swift_beginAccess();
  v198 = v253;
  sub_1C56466CC(a1 + v197, v253, &qword_1EC16FEF0, &qword_1C586B090);
  v199 = v235;
  swift_beginAccess();
  sub_1C56ECE38(v198, v1 + v199, &qword_1EC16FEF0, &qword_1C586B090);
  swift_endAccess();
  v200 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__copyArgument;
  swift_beginAccess();
  v201 = v254;
  sub_1C56466CC(a1 + v200, v254, &qword_1EC16EC20, &qword_1C586B098);
  v202 = v237;
  swift_beginAccess();
  sub_1C56ECE38(v201, v1 + v202, &qword_1EC16EC20, &qword_1C586B098);
  swift_endAccess();
  v203 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__sendToDeviceArgument;
  swift_beginAccess();
  v204 = v255;
  sub_1C56466CC(a1 + v203, v255, &qword_1EC16EC28, &qword_1C586B0A0);

  v205 = v238;
  swift_beginAccess();
  sub_1C56ECE38(v204, v1 + v205, &qword_1EC16EC28, &qword_1C586B0A0);
  swift_endAccess();
  return v1;
}

uint64_t sub_1C56AC9AC()
{
  sub_1C5625230(v0 + OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__arpSuggestionArgument, &qword_1EC16EB78, &qword_1C586AFE0);
  sub_1C5625230(v0 + OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__exploreGuidesArgument, &qword_1EC16EB80, &qword_1C586AFE8);
  sub_1C5625230(v0 + OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userGuideArgument, &qword_1EC16EB88, &qword_1C586AFF0);
  sub_1C5625230(v0 + OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__arpRatingArgument, &qword_1EC16EB90, &qword_1C586AFF8);
  sub_1C5625230(v0 + OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__inlineRapArgument, &qword_1EC16EB98, &qword_1C586B000);
  sub_1C5625230(v0 + OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__photoArgument, &qword_1EC16EBA0, &qword_1C586B008);
  sub_1C5625230(v0 + OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__viewPlaceListArgument, &qword_1EC16EBA8, &qword_1C586B010);
  sub_1C5625230(v0 + OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__openGuideArgument, &qword_1EC16EBB0, &qword_1C586B018);
  sub_1C5625230(v0 + OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__openPlaceArgument, &qword_1EC16EBB8, &qword_1C586B020);
  sub_1C5625230(v0 + OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__urlArgument, &qword_1EC16EBC0, &qword_1C586B028);
  sub_1C5625230(v0 + OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__attributionURLArgument, &qword_1EC16EBC8, &qword_1C586B030);
  sub_1C5625230(v0 + OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__tappedLibraryArgument, &qword_1EC16EBD0, &qword_1C586B038);
  sub_1C5625230(v0 + OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__browseCategoryArgument, &qword_1EC16EBD8, &qword_1C586B040);
  sub_1C5625230(v0 + OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__tappedTransitDepartureArgument, &qword_1EC16EBE0, &qword_1C586B048);
  sub_1C5625230(v0 + OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__openAppClipArgument, &qword_1EC16EBE8, &qword_1C586B050);
  sub_1C5625230(v0 + OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__openExtensionArgument, &qword_1EC16EBF0, &unk_1C586B058);
  sub_1C5625230(v0 + OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__directionsContactArgument, &qword_1EC16DD98, &unk_1C5868560);
  sub_1C5625230(v0 + OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__viewGuideListArgument, &qword_1EC16EBF8, &qword_1C586B068);
  sub_1C5625230(v0 + OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__addToGuidesArgument, &qword_1EC16EC00, &qword_1C586B070);
  sub_1C5625230(v0 + OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__tappedTransitIncidentArgument, &qword_1EC16EC08, &qword_1C586B078);
  sub_1C5625230(v0 + OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__publisherGuideActionArgument, &qword_1EC16EC10, &qword_1C586B080);
  sub_1C5625230(v0 + OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__openPhotoViewerArgument, &qword_1EC16EC18, &qword_1C586B088);
  sub_1C5625230(v0 + OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__addPhotosArgument, &qword_1EC16FEF0, &qword_1C586B090);
  sub_1C5625230(v0 + OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__copyArgument, &qword_1EC16EC20, &qword_1C586B098);
  sub_1C5625230(v0 + OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__sendToDeviceArgument, &qword_1EC16EC28, &qword_1C586B0A0);

  return swift_deallocClassInstance();
}

uint64_t sub_1C56ACD20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = *(type metadata accessor for WebPlacecardBridge.MUUserInteractionAction(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v3 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for WebPlacecardBridge.MUUserInteractionAction._StorageClass(0);
    v9 = swift_allocObject();
    sub_1C56AAD64(v8);
    *(v5 + v6) = v9;
  }

  while (1)
  {
    result = sub_1C584F050();
    if (v4 || (v11 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        swift_beginAccess();
        sub_1C5704028();
        goto LABEL_32;
      case 2:
        swift_beginAccess();
        type metadata accessor for WebPlacecardBridge.MUUserInteractionARPSuggestion(0);
        v12 = &qword_1EC16F3C8;
        v13 = type metadata accessor for WebPlacecardBridge.MUUserInteractionARPSuggestion;
        v14 = &unk_1C586E9D0;
        goto LABEL_36;
      case 3:
        swift_beginAccess();
        type metadata accessor for WebPlacecardBridge.MUUserInteractionExploreGuide(0);
        v12 = &qword_1EC16F3E0;
        v13 = type metadata accessor for WebPlacecardBridge.MUUserInteractionExploreGuide;
        v14 = &unk_1C586EB38;
        goto LABEL_36;
      case 4:
        swift_beginAccess();
        type metadata accessor for WebPlacecardBridge.MUUserInteractionUserGuide(0);
        v12 = &qword_1EC16F3F8;
        v13 = type metadata accessor for WebPlacecardBridge.MUUserInteractionUserGuide;
        v14 = &unk_1C586ECA0;
        goto LABEL_36;
      case 5:
        swift_beginAccess();
        type metadata accessor for WebPlacecardBridge.MUUserInteractionARPRating(0);
        v12 = &qword_1EC16F428;
        v13 = type metadata accessor for WebPlacecardBridge.MUUserInteractionARPRating;
        v14 = &unk_1C586EF70;
        goto LABEL_36;
      case 6:
        swift_beginAccess();
        type metadata accessor for WebPlacecardBridge.MUUserInteractionInlineRAPEntry(0);
        v12 = &qword_1EC16D500;
        v13 = type metadata accessor for WebPlacecardBridge.MUUserInteractionInlineRAPEntry;
        v14 = &unk_1C586F0D8;
        goto LABEL_36;
      case 7:
        swift_beginAccess();
        type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedPhoto(0);
        v12 = &qword_1EC16F488;
        v13 = type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedPhoto;
        v14 = &unk_1C586FAD8;
        goto LABEL_36;
      case 8:
        swift_beginAccess();
        type metadata accessor for WebPlacecardBridge.MUUserInteractionViewPlaceList(0);
        v12 = &qword_1EC16F4A0;
        v13 = type metadata accessor for WebPlacecardBridge.MUUserInteractionViewPlaceList;
        v14 = &unk_1C586FC68;
        goto LABEL_36;
      case 9:
        swift_beginAccess();
        type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedGuide(0);
        v12 = &qword_1EC16F410;
        v13 = type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedGuide;
        v14 = &unk_1C586EE08;
        goto LABEL_36;
      case 10:
        swift_beginAccess();
        type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedPlace(0);
        v12 = &qword_1EC16F4B8;
        v13 = type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedPlace;
        v14 = &unk_1C586FDD0;
        goto LABEL_36;
      case 11:
        swift_beginAccess();
        type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedUrl(0);
        v12 = &qword_1EC16D5B8;
        v13 = type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedUrl;
        v14 = &unk_1C586FF38;
        goto LABEL_36;
      case 12:
        swift_beginAccess();
        type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedAttributionUrl(0);
        v12 = &qword_1EC16F4D8;
        v13 = type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedAttributionUrl;
        v14 = &unk_1C58700A0;
        goto LABEL_36;
      case 13:
        swift_beginAccess();
        type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedLibrary(0);
        v12 = &qword_1EC16D528;
        v13 = type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedLibrary;
        v14 = &unk_1C5870208;
        goto LABEL_36;
      case 14:
        swift_beginAccess();
        type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedBrowseCategory(0);
        v12 = &qword_1EC16F4F8;
        v13 = type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedBrowseCategory;
        v14 = &unk_1C5870370;
        goto LABEL_36;
      case 15:
        swift_beginAccess();
        type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedTransitDeparture(0);
        v12 = &qword_1EC16F510;
        v13 = type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedTransitDeparture;
        v14 = &unk_1C58704D8;
        goto LABEL_36;
      case 16:
        swift_beginAccess();
        type metadata accessor for WebPlacecardBridge.MUUserInteractionOpenAppClip(0);
        v12 = &qword_1EC16F588;
        v13 = type metadata accessor for WebPlacecardBridge.MUUserInteractionOpenAppClip;
        v14 = &unk_1C5870C08;
        goto LABEL_36;
      case 17:
        swift_beginAccess();
        type metadata accessor for WebPlacecardBridge.MUUserInteractionOpenExtension(0);
        v12 = &qword_1EC16F5A0;
        v13 = type metadata accessor for WebPlacecardBridge.MUUserInteractionOpenExtension;
        v14 = &unk_1C5870D70;
        goto LABEL_36;
      case 18:
        swift_beginAccess();
        sub_1C5703ED8();
        goto LABEL_32;
      case 19:
        swift_beginAccess();
        sub_1C5703E84();
        goto LABEL_32;
      case 20:
        swift_beginAccess();
        sub_1C5703E30();
LABEL_32:
        sub_1C584F090();
        goto LABEL_37;
      case 21:
        swift_beginAccess();
        type metadata accessor for MUContactLabeledValue(0);
        v12 = &qword_1EC16EED0;
        v13 = type metadata accessor for MUContactLabeledValue;
        v14 = &unk_1C5871B80;
        goto LABEL_36;
      case 22:
        swift_beginAccess();
        type metadata accessor for WebPlacecardBridge.MUUserInteractionViewGuideList(0);
        v12 = &qword_1EC16F5F8;
        v13 = type metadata accessor for WebPlacecardBridge.MUUserInteractionViewGuideList;
        v14 = &unk_1C5871478;
        goto LABEL_36;
      case 23:
        swift_beginAccess();
        type metadata accessor for WebPlacecardBridge.MUUserInteractionAddToGuides(0);
        v12 = &qword_1EC16D580;
        v13 = type metadata accessor for WebPlacecardBridge.MUUserInteractionAddToGuides;
        v14 = &unk_1C58715E0;
        goto LABEL_36;
      case 24:
        swift_beginAccess();
        type metadata accessor for WebPlacecardBridge.MUUserInteractionActionTappedTransitIncident(0);
        v12 = &qword_1EC16F528;
        v13 = type metadata accessor for WebPlacecardBridge.MUUserInteractionActionTappedTransitIncident;
        v14 = &unk_1C5870640;
        goto LABEL_36;
      case 25:
        swift_beginAccess();
        type metadata accessor for WebPlacecardBridge.MUUserInteractionPublisherGuideAction(0);
        v12 = &qword_1EC16F540;
        v13 = type metadata accessor for WebPlacecardBridge.MUUserInteractionPublisherGuideAction;
        v14 = &unk_1C58707A8;
        goto LABEL_36;
      case 26:
        swift_beginAccess();
        type metadata accessor for WebPlacecardBridge.MUUserInteractionOpenPhotoViewer(0);
        v12 = &qword_1EC16F558;
        v13 = type metadata accessor for WebPlacecardBridge.MUUserInteractionOpenPhotoViewer;
        v14 = &unk_1C5870938;
        goto LABEL_36;
      case 27:
        swift_beginAccess();
        type metadata accessor for WebPlacecardBridge.MUUserInteractionAddPhotos(0);
        v12 = &qword_1EC16F570;
        v13 = type metadata accessor for WebPlacecardBridge.MUUserInteractionAddPhotos;
        v14 = &unk_1C5870AA0;
        goto LABEL_36;
      case 28:
        swift_beginAccess();
        type metadata accessor for WebPlacecardBridge.MUUserInteractionCopy(0);
        v12 = &qword_1EC16F5C8;
        v13 = type metadata accessor for WebPlacecardBridge.MUUserInteractionCopy;
        v14 = &unk_1C58711A8;
        goto LABEL_36;
      case 29:
        swift_beginAccess();
        type metadata accessor for WebPlacecardBridge.MUUserInteractionSendToDevice(0);
        v12 = &qword_1EC16F5E0;
        v13 = type metadata accessor for WebPlacecardBridge.MUUserInteractionSendToDevice;
        v14 = &unk_1C5871310;
LABEL_36:
        sub_1C56EF190(v12, v13, v14);
        sub_1C584F100();
LABEL_37:
        swift_endAccess();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C56AD7AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = *(v5 + *(type metadata accessor for WebPlacecardBridge.MUUserInteractionAction(0) + 20));
  result = swift_beginAccess();
  if (*(v9 + 16) == 54)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    sub_1C5704028();
    result = sub_1C584F1A0();
    if (v4)
    {
      return result;
    }
  }

  sub_1C56ADB64(v9, a1, a2, a3);
  sub_1C56ADD8C(v9, a1, a2, a3);
  sub_1C56ADFB4(v9, a1, a2, a3);
  sub_1C56AE1DC(v9, a1, a2, a3);
  sub_1C56AE404(v9, a1, a2, a3);
  sub_1C56AE62C(v9, a1, a2, a3);
  sub_1C56AE854(v9, a1, a2, a3);
  sub_1C56AEA7C(v9, a1, a2, a3);
  sub_1C56AECA4(v9, a1, a2, a3);
  sub_1C56AEECC(v9, a1, a2, a3);
  sub_1C56AF0F4(v9, a1, a2, a3);
  sub_1C56AF31C(v9, a1, a2, a3);
  sub_1C56AF544(v9, a1, a2, a3);
  sub_1C56AF76C(v9, a1, a2, a3);
  sub_1C56AF994(v9, a1, a2, a3);
  sub_1C56AFBBC(v9, a1, a2, a3);
  sub_1C56D8444(v9, a1, a2, a3, &OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__offlineMapActionTypeArgument, sub_1C5703ED8, 18, &type metadata for WebPlacecardBridge.MUUserInteractionOfflineMapActionType);
  sub_1C56AFDE4(v9, a1, a2, a3);
  sub_1C56D8444(v9, a1, a2, a3, &OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__pinActionTypeArgument, sub_1C5703E30, 20, &type metadata for WebPlacecardBridge.MUUserInteractionPinActionType);
  sub_1C56AFE88(v9, a1, a2, a3);
  sub_1C56B00B0(v9, a1, a2, a3);
  sub_1C56B02D8(v9, a1, a2, a3);
  sub_1C56B0500(v9, a1, a2, a3);
  sub_1C56B0728(v9, a1, a2, a3);
  sub_1C56B0950(v9, a1, a2, a3);
  sub_1C56B0B78(v9, a1, a2, a3);
  sub_1C56B0DA0(v9, a1, a2, a3);
  sub_1C56B0FC8(v9, a1, a2, a3);
  return sub_1C584EFB0();
}

uint64_t sub_1C56ADB64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EB78, &qword_1C586AFE0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for WebPlacecardBridge.MUUserInteractionARPSuggestion(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__arpSuggestionArgument;
  swift_beginAccess();
  sub_1C56466CC(a1 + v14, v8, &qword_1EC16EB78, &qword_1C586AFE0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C5625230(v8, &qword_1EC16EB78, &qword_1C586AFE0);
  }

  sub_1C56EC178(v8, v13, type metadata accessor for WebPlacecardBridge.MUUserInteractionARPSuggestion);
  sub_1C56EF190(&qword_1EC16F3C8, type metadata accessor for WebPlacecardBridge.MUUserInteractionARPSuggestion, &unk_1C586E9D0);
  sub_1C584F220();
  return sub_1C56EC248(v13, type metadata accessor for WebPlacecardBridge.MUUserInteractionARPSuggestion);
}

uint64_t sub_1C56ADD8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EB80, &qword_1C586AFE8);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for WebPlacecardBridge.MUUserInteractionExploreGuide(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__exploreGuidesArgument;
  swift_beginAccess();
  sub_1C56466CC(a1 + v14, v8, &qword_1EC16EB80, &qword_1C586AFE8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C5625230(v8, &qword_1EC16EB80, &qword_1C586AFE8);
  }

  sub_1C56EC178(v8, v13, type metadata accessor for WebPlacecardBridge.MUUserInteractionExploreGuide);
  sub_1C56EF190(&qword_1EC16F3E0, type metadata accessor for WebPlacecardBridge.MUUserInteractionExploreGuide, &unk_1C586EB38);
  sub_1C584F220();
  return sub_1C56EC248(v13, type metadata accessor for WebPlacecardBridge.MUUserInteractionExploreGuide);
}

uint64_t sub_1C56ADFB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EB88, &qword_1C586AFF0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for WebPlacecardBridge.MUUserInteractionUserGuide(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userGuideArgument;
  swift_beginAccess();
  sub_1C56466CC(a1 + v14, v8, &qword_1EC16EB88, &qword_1C586AFF0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C5625230(v8, &qword_1EC16EB88, &qword_1C586AFF0);
  }

  sub_1C56EC178(v8, v13, type metadata accessor for WebPlacecardBridge.MUUserInteractionUserGuide);
  sub_1C56EF190(&qword_1EC16F3F8, type metadata accessor for WebPlacecardBridge.MUUserInteractionUserGuide, &unk_1C586ECA0);
  sub_1C584F220();
  return sub_1C56EC248(v13, type metadata accessor for WebPlacecardBridge.MUUserInteractionUserGuide);
}

uint64_t sub_1C56AE1DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EB90, &qword_1C586AFF8);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for WebPlacecardBridge.MUUserInteractionARPRating(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__arpRatingArgument;
  swift_beginAccess();
  sub_1C56466CC(a1 + v14, v8, &qword_1EC16EB90, &qword_1C586AFF8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C5625230(v8, &qword_1EC16EB90, &qword_1C586AFF8);
  }

  sub_1C56EC178(v8, v13, type metadata accessor for WebPlacecardBridge.MUUserInteractionARPRating);
  sub_1C56EF190(&qword_1EC16F428, type metadata accessor for WebPlacecardBridge.MUUserInteractionARPRating, &unk_1C586EF70);
  sub_1C584F220();
  return sub_1C56EC248(v13, type metadata accessor for WebPlacecardBridge.MUUserInteractionARPRating);
}

uint64_t sub_1C56AE404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EB98, &qword_1C586B000);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for WebPlacecardBridge.MUUserInteractionInlineRAPEntry(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__inlineRapArgument;
  swift_beginAccess();
  sub_1C56466CC(a1 + v14, v8, &qword_1EC16EB98, &qword_1C586B000);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C5625230(v8, &qword_1EC16EB98, &qword_1C586B000);
  }

  sub_1C56EC178(v8, v13, type metadata accessor for WebPlacecardBridge.MUUserInteractionInlineRAPEntry);
  sub_1C56EF190(&qword_1EC16D500, type metadata accessor for WebPlacecardBridge.MUUserInteractionInlineRAPEntry, &unk_1C586F0D8);
  sub_1C584F220();
  return sub_1C56EC248(v13, type metadata accessor for WebPlacecardBridge.MUUserInteractionInlineRAPEntry);
}

uint64_t sub_1C56AE62C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EBA0, &qword_1C586B008);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedPhoto(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__photoArgument;
  swift_beginAccess();
  sub_1C56466CC(a1 + v14, v8, &qword_1EC16EBA0, &qword_1C586B008);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C5625230(v8, &qword_1EC16EBA0, &qword_1C586B008);
  }

  sub_1C56EC178(v8, v13, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedPhoto);
  sub_1C56EF190(&qword_1EC16F488, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedPhoto, &unk_1C586FAD8);
  sub_1C584F220();
  return sub_1C56EC248(v13, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedPhoto);
}

uint64_t sub_1C56AE854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EBA8, &qword_1C586B010);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for WebPlacecardBridge.MUUserInteractionViewPlaceList(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__viewPlaceListArgument;
  swift_beginAccess();
  sub_1C56466CC(a1 + v14, v8, &qword_1EC16EBA8, &qword_1C586B010);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C5625230(v8, &qword_1EC16EBA8, &qword_1C586B010);
  }

  sub_1C56EC178(v8, v13, type metadata accessor for WebPlacecardBridge.MUUserInteractionViewPlaceList);
  sub_1C56EF190(&qword_1EC16F4A0, type metadata accessor for WebPlacecardBridge.MUUserInteractionViewPlaceList, &unk_1C586FC68);
  sub_1C584F220();
  return sub_1C56EC248(v13, type metadata accessor for WebPlacecardBridge.MUUserInteractionViewPlaceList);
}

uint64_t sub_1C56AEA7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EBB0, &qword_1C586B018);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedGuide(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__openGuideArgument;
  swift_beginAccess();
  sub_1C56466CC(a1 + v14, v8, &qword_1EC16EBB0, &qword_1C586B018);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C5625230(v8, &qword_1EC16EBB0, &qword_1C586B018);
  }

  sub_1C56EC178(v8, v13, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedGuide);
  sub_1C56EF190(&qword_1EC16F410, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedGuide, &unk_1C586EE08);
  sub_1C584F220();
  return sub_1C56EC248(v13, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedGuide);
}

uint64_t sub_1C56AECA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EBB8, &qword_1C586B020);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedPlace(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__openPlaceArgument;
  swift_beginAccess();
  sub_1C56466CC(a1 + v14, v8, &qword_1EC16EBB8, &qword_1C586B020);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C5625230(v8, &qword_1EC16EBB8, &qword_1C586B020);
  }

  sub_1C56EC178(v8, v13, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedPlace);
  sub_1C56EF190(&qword_1EC16F4B8, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedPlace, &unk_1C586FDD0);
  sub_1C584F220();
  return sub_1C56EC248(v13, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedPlace);
}

uint64_t sub_1C56AEECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EBC0, &qword_1C586B028);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedUrl(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__urlArgument;
  swift_beginAccess();
  sub_1C56466CC(a1 + v14, v8, &qword_1EC16EBC0, &qword_1C586B028);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C5625230(v8, &qword_1EC16EBC0, &qword_1C586B028);
  }

  sub_1C56EC178(v8, v13, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedUrl);
  sub_1C56EF190(&qword_1EC16D5B8, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedUrl, &unk_1C586FF38);
  sub_1C584F220();
  return sub_1C56EC248(v13, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedUrl);
}

uint64_t sub_1C56AF0F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EBC8, &qword_1C586B030);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedAttributionUrl(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__attributionURLArgument;
  swift_beginAccess();
  sub_1C56466CC(a1 + v14, v8, &qword_1EC16EBC8, &qword_1C586B030);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C5625230(v8, &qword_1EC16EBC8, &qword_1C586B030);
  }

  sub_1C56EC178(v8, v13, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedAttributionUrl);
  sub_1C56EF190(&qword_1EC16F4D8, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedAttributionUrl, &unk_1C58700A0);
  sub_1C584F220();
  return sub_1C56EC248(v13, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedAttributionUrl);
}

uint64_t sub_1C56AF31C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EBD0, &qword_1C586B038);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedLibrary(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__tappedLibraryArgument;
  swift_beginAccess();
  sub_1C56466CC(a1 + v14, v8, &qword_1EC16EBD0, &qword_1C586B038);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C5625230(v8, &qword_1EC16EBD0, &qword_1C586B038);
  }

  sub_1C56EC178(v8, v13, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedLibrary);
  sub_1C56EF190(&qword_1EC16D528, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedLibrary, &unk_1C5870208);
  sub_1C584F220();
  return sub_1C56EC248(v13, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedLibrary);
}

uint64_t sub_1C56AF544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EBD8, &qword_1C586B040);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedBrowseCategory(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__browseCategoryArgument;
  swift_beginAccess();
  sub_1C56466CC(a1 + v14, v8, &qword_1EC16EBD8, &qword_1C586B040);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C5625230(v8, &qword_1EC16EBD8, &qword_1C586B040);
  }

  sub_1C56EC178(v8, v13, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedBrowseCategory);
  sub_1C56EF190(&qword_1EC16F4F8, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedBrowseCategory, &unk_1C5870370);
  sub_1C584F220();
  return sub_1C56EC248(v13, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedBrowseCategory);
}

uint64_t sub_1C56AF76C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EBE0, &qword_1C586B048);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedTransitDeparture(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__tappedTransitDepartureArgument;
  swift_beginAccess();
  sub_1C56466CC(a1 + v14, v8, &qword_1EC16EBE0, &qword_1C586B048);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C5625230(v8, &qword_1EC16EBE0, &qword_1C586B048);
  }

  sub_1C56EC178(v8, v13, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedTransitDeparture);
  sub_1C56EF190(&qword_1EC16F510, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedTransitDeparture, &unk_1C58704D8);
  sub_1C584F220();
  return sub_1C56EC248(v13, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedTransitDeparture);
}

uint64_t sub_1C56AF994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EBE8, &qword_1C586B050);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for WebPlacecardBridge.MUUserInteractionOpenAppClip(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__openAppClipArgument;
  swift_beginAccess();
  sub_1C56466CC(a1 + v14, v8, &qword_1EC16EBE8, &qword_1C586B050);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C5625230(v8, &qword_1EC16EBE8, &qword_1C586B050);
  }

  sub_1C56EC178(v8, v13, type metadata accessor for WebPlacecardBridge.MUUserInteractionOpenAppClip);
  sub_1C56EF190(&qword_1EC16F588, type metadata accessor for WebPlacecardBridge.MUUserInteractionOpenAppClip, &unk_1C5870C08);
  sub_1C584F220();
  return sub_1C56EC248(v13, type metadata accessor for WebPlacecardBridge.MUUserInteractionOpenAppClip);
}

uint64_t sub_1C56AFBBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EBF0, &unk_1C586B058);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for WebPlacecardBridge.MUUserInteractionOpenExtension(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__openExtensionArgument;
  swift_beginAccess();
  sub_1C56466CC(a1 + v14, v8, &qword_1EC16EBF0, &unk_1C586B058);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C5625230(v8, &qword_1EC16EBF0, &unk_1C586B058);
  }

  sub_1C56EC178(v8, v13, type metadata accessor for WebPlacecardBridge.MUUserInteractionOpenExtension);
  sub_1C56EF190(&qword_1EC16F5A0, type metadata accessor for WebPlacecardBridge.MUUserInteractionOpenExtension, &unk_1C5870D70);
  sub_1C584F220();
  return sub_1C56EC248(v13, type metadata accessor for WebPlacecardBridge.MUUserInteractionOpenExtension);
}

uint64_t sub_1C56AFDE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__reportAnIssueTypeArgument;
  result = swift_beginAccess();
  if (*(a1 + v5) != 6)
  {
    sub_1C5703E84();
    return sub_1C584F1A0();
  }

  return result;
}

uint64_t sub_1C56AFE88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DD98, &unk_1C5868560);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for MUContactLabeledValue(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__directionsContactArgument;
  swift_beginAccess();
  sub_1C56466CC(a1 + v14, v8, &qword_1EC16DD98, &unk_1C5868560);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C5625230(v8, &qword_1EC16DD98, &unk_1C5868560);
  }

  sub_1C56EC178(v8, v13, type metadata accessor for MUContactLabeledValue);
  sub_1C56EF190(&qword_1EC16EED0, type metadata accessor for MUContactLabeledValue, &unk_1C5871B80);
  sub_1C584F220();
  return sub_1C56EC248(v13, type metadata accessor for MUContactLabeledValue);
}

uint64_t sub_1C56B00B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EBF8, &qword_1C586B068);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for WebPlacecardBridge.MUUserInteractionViewGuideList(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__viewGuideListArgument;
  swift_beginAccess();
  sub_1C56466CC(a1 + v14, v8, &qword_1EC16EBF8, &qword_1C586B068);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C5625230(v8, &qword_1EC16EBF8, &qword_1C586B068);
  }

  sub_1C56EC178(v8, v13, type metadata accessor for WebPlacecardBridge.MUUserInteractionViewGuideList);
  sub_1C56EF190(&qword_1EC16F5F8, type metadata accessor for WebPlacecardBridge.MUUserInteractionViewGuideList, &unk_1C5871478);
  sub_1C584F220();
  return sub_1C56EC248(v13, type metadata accessor for WebPlacecardBridge.MUUserInteractionViewGuideList);
}

uint64_t sub_1C56B02D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC00, &qword_1C586B070);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for WebPlacecardBridge.MUUserInteractionAddToGuides(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__addToGuidesArgument;
  swift_beginAccess();
  sub_1C56466CC(a1 + v14, v8, &qword_1EC16EC00, &qword_1C586B070);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C5625230(v8, &qword_1EC16EC00, &qword_1C586B070);
  }

  sub_1C56EC178(v8, v13, type metadata accessor for WebPlacecardBridge.MUUserInteractionAddToGuides);
  sub_1C56EF190(&qword_1EC16D580, type metadata accessor for WebPlacecardBridge.MUUserInteractionAddToGuides, &unk_1C58715E0);
  sub_1C584F220();
  return sub_1C56EC248(v13, type metadata accessor for WebPlacecardBridge.MUUserInteractionAddToGuides);
}

uint64_t sub_1C56B0500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC08, &qword_1C586B078);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for WebPlacecardBridge.MUUserInteractionActionTappedTransitIncident(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__tappedTransitIncidentArgument;
  swift_beginAccess();
  sub_1C56466CC(a1 + v14, v8, &qword_1EC16EC08, &qword_1C586B078);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C5625230(v8, &qword_1EC16EC08, &qword_1C586B078);
  }

  sub_1C56EC178(v8, v13, type metadata accessor for WebPlacecardBridge.MUUserInteractionActionTappedTransitIncident);
  sub_1C56EF190(&qword_1EC16F528, type metadata accessor for WebPlacecardBridge.MUUserInteractionActionTappedTransitIncident, &unk_1C5870640);
  sub_1C584F220();
  return sub_1C56EC248(v13, type metadata accessor for WebPlacecardBridge.MUUserInteractionActionTappedTransitIncident);
}

uint64_t sub_1C56B0728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC10, &qword_1C586B080);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for WebPlacecardBridge.MUUserInteractionPublisherGuideAction(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__publisherGuideActionArgument;
  swift_beginAccess();
  sub_1C56466CC(a1 + v14, v8, &qword_1EC16EC10, &qword_1C586B080);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C5625230(v8, &qword_1EC16EC10, &qword_1C586B080);
  }

  sub_1C56EC178(v8, v13, type metadata accessor for WebPlacecardBridge.MUUserInteractionPublisherGuideAction);
  sub_1C56EF190(&qword_1EC16F540, type metadata accessor for WebPlacecardBridge.MUUserInteractionPublisherGuideAction, &unk_1C58707A8);
  sub_1C584F220();
  return sub_1C56EC248(v13, type metadata accessor for WebPlacecardBridge.MUUserInteractionPublisherGuideAction);
}

uint64_t sub_1C56B0950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC18, &qword_1C586B088);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for WebPlacecardBridge.MUUserInteractionOpenPhotoViewer(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__openPhotoViewerArgument;
  swift_beginAccess();
  sub_1C56466CC(a1 + v14, v8, &qword_1EC16EC18, &qword_1C586B088);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C5625230(v8, &qword_1EC16EC18, &qword_1C586B088);
  }

  sub_1C56EC178(v8, v13, type metadata accessor for WebPlacecardBridge.MUUserInteractionOpenPhotoViewer);
  sub_1C56EF190(&qword_1EC16F558, type metadata accessor for WebPlacecardBridge.MUUserInteractionOpenPhotoViewer, &unk_1C5870938);
  sub_1C584F220();
  return sub_1C56EC248(v13, type metadata accessor for WebPlacecardBridge.MUUserInteractionOpenPhotoViewer);
}

uint64_t sub_1C56B0B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FEF0, &qword_1C586B090);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for WebPlacecardBridge.MUUserInteractionAddPhotos(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__addPhotosArgument;
  swift_beginAccess();
  sub_1C56466CC(a1 + v14, v8, &qword_1EC16FEF0, &qword_1C586B090);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C5625230(v8, &qword_1EC16FEF0, &qword_1C586B090);
  }

  sub_1C56EC178(v8, v13, type metadata accessor for WebPlacecardBridge.MUUserInteractionAddPhotos);
  sub_1C56EF190(&qword_1EC16F570, type metadata accessor for WebPlacecardBridge.MUUserInteractionAddPhotos, &unk_1C5870AA0);
  sub_1C584F220();
  return sub_1C56EC248(v13, type metadata accessor for WebPlacecardBridge.MUUserInteractionAddPhotos);
}

uint64_t sub_1C56B0DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC20, &qword_1C586B098);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for WebPlacecardBridge.MUUserInteractionCopy(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__copyArgument;
  swift_beginAccess();
  sub_1C56466CC(a1 + v14, v8, &qword_1EC16EC20, &qword_1C586B098);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C5625230(v8, &qword_1EC16EC20, &qword_1C586B098);
  }

  sub_1C56EC178(v8, v13, type metadata accessor for WebPlacecardBridge.MUUserInteractionCopy);
  sub_1C56EF190(&qword_1EC16F5C8, type metadata accessor for WebPlacecardBridge.MUUserInteractionCopy, &unk_1C58711A8);
  sub_1C584F220();
  return sub_1C56EC248(v13, type metadata accessor for WebPlacecardBridge.MUUserInteractionCopy);
}

uint64_t sub_1C56B0FC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC28, &qword_1C586B0A0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for WebPlacecardBridge.MUUserInteractionSendToDevice(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__sendToDeviceArgument;
  swift_beginAccess();
  sub_1C56466CC(a1 + v14, v8, &qword_1EC16EC28, &qword_1C586B0A0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C5625230(v8, &qword_1EC16EC28, &qword_1C586B0A0);
  }

  sub_1C56EC178(v8, v13, type metadata accessor for WebPlacecardBridge.MUUserInteractionSendToDevice);
  sub_1C56EF190(&qword_1EC16F5E0, type metadata accessor for WebPlacecardBridge.MUUserInteractionSendToDevice, &unk_1C5871310);
  sub_1C584F220();
  return sub_1C56EC248(v13, type metadata accessor for WebPlacecardBridge.MUUserInteractionSendToDevice);
}

BOOL sub_1C56B1234(uint64_t a1, uint64_t a2)
{
  v708 = type metadata accessor for WebPlacecardBridge.MUUserInteractionSendToDevice(0);
  v706 = *(v708 - 8);
  MEMORY[0x1EEE9AC00](v708, v4);
  v6 = (&v642 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v705 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FCD8, &qword_1C5875EE8);
  MEMORY[0x1EEE9AC00](v705, v7);
  v9 = &v642 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC28, &qword_1C586B0A0);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v709 = (&v642 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12, v14);
  v707 = &v642 - v15;
  v16 = type metadata accessor for WebPlacecardBridge.MUUserInteractionCopy(0);
  v701 = *(v16 - 8);
  v702 = v16;
  MEMORY[0x1EEE9AC00](v16, v17);
  v703 = &v642 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v698 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FCE0, &qword_1C5875EF0);
  MEMORY[0x1EEE9AC00](v698, v19);
  v704 = &v642 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC20, &qword_1C586B098);
  v23 = MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v700 = &v642 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v25);
  v699 = &v642 - v26;
  v696 = type metadata accessor for WebPlacecardBridge.MUUserInteractionAddPhotos(0);
  v694 = *(v696 - 8);
  MEMORY[0x1EEE9AC00](v696, v27);
  v695 = &v642 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v691 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FCE8, &qword_1C5875EF8);
  MEMORY[0x1EEE9AC00](v691, v29);
  v697 = &v642 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FEF0, &qword_1C586B090);
  v33 = MEMORY[0x1EEE9AC00](v31 - 8, v32);
  v693 = &v642 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33, v35);
  v692 = &v642 - v36;
  v37 = type metadata accessor for WebPlacecardBridge.MUUserInteractionOpenPhotoViewer(0);
  v687 = *(v37 - 8);
  v688 = v37;
  MEMORY[0x1EEE9AC00](v37, v38);
  v689 = &v642 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v684 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FCF0, &qword_1C5875F00);
  MEMORY[0x1EEE9AC00](v684, v40);
  v690 = &v642 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC18, &qword_1C586B088);
  v44 = MEMORY[0x1EEE9AC00](v42 - 8, v43);
  v686 = &v642 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44, v46);
  v685 = &v642 - v47;
  v682 = type metadata accessor for WebPlacecardBridge.MUUserInteractionPublisherGuideAction(0);
  v680 = *(v682 - 8);
  MEMORY[0x1EEE9AC00](v682, v48);
  v681 = &v642 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v677 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FCF8, &qword_1C5875F08);
  MEMORY[0x1EEE9AC00](v677, v50);
  v683 = &v642 - v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC10, &qword_1C586B080);
  v54 = MEMORY[0x1EEE9AC00](v52 - 8, v53);
  v679 = &v642 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v54, v56);
  v678 = &v642 - v57;
  v673 = type metadata accessor for WebPlacecardBridge.MUUserInteractionActionTappedTransitIncident(0);
  v671 = *(v673 - 8);
  MEMORY[0x1EEE9AC00](v673, v58);
  v675 = (&v642 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0));
  v670 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FD00, &qword_1C5875F10);
  MEMORY[0x1EEE9AC00](v670, v60);
  v676 = &v642 - v61;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC08, &qword_1C586B078);
  v64 = MEMORY[0x1EEE9AC00](v62 - 8, v63);
  v674 = (&v642 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v64, v66);
  v672 = &v642 - v67;
  v68 = type metadata accessor for WebPlacecardBridge.MUUserInteractionAddToGuides(0);
  v666 = *(v68 - 8);
  v667 = v68;
  MEMORY[0x1EEE9AC00](v68, v69);
  v668 = &v642 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  v663 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FD08, &qword_1C5875F18);
  MEMORY[0x1EEE9AC00](v663, v71);
  v669 = &v642 - v72;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC00, &qword_1C586B070);
  v75 = MEMORY[0x1EEE9AC00](v73 - 8, v74);
  v665 = &v642 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v75, v77);
  v664 = &v642 - v78;
  v661 = type metadata accessor for WebPlacecardBridge.MUUserInteractionViewGuideList(0);
  v659 = *(v661 - 8);
  MEMORY[0x1EEE9AC00](v661, v79);
  v660 = (&v642 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0));
  v656 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FD10, &qword_1C5875F20);
  MEMORY[0x1EEE9AC00](v656, v81);
  v662 = &v642 - v82;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EBF8, &qword_1C586B068);
  v85 = MEMORY[0x1EEE9AC00](v83 - 8, v84);
  v658 = (&v642 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v85, v87);
  v657 = &v642 - v88;
  v89 = type metadata accessor for MUContactLabeledValue(0);
  v652 = *(v89 - 8);
  v653 = v89;
  MEMORY[0x1EEE9AC00](v89, v90);
  v654 = &v642 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
  v649 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FD18, &qword_1C5875F28);
  MEMORY[0x1EEE9AC00](v649, v92);
  v655 = &v642 - v93;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DD98, &unk_1C5868560);
  v96 = MEMORY[0x1EEE9AC00](v94 - 8, v95);
  v651 = &v642 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v96, v98);
  v650 = &v642 - v99;
  v715 = type metadata accessor for WebPlacecardBridge.MUUserInteractionOpenExtension(0);
  v714 = *(v715 - 8);
  MEMORY[0x1EEE9AC00](v715, v100);
  v648 = &v642 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0);
  v712 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FD20, &qword_1C5875F30);
  MEMORY[0x1EEE9AC00](v712, v102);
  v716 = &v642 - v103;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EBF0, &unk_1C586B058);
  v106 = MEMORY[0x1EEE9AC00](v104 - 8, v105);
  v647 = &v642 - ((v107 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v106, v108);
  v713 = &v642 - v109;
  v724 = type metadata accessor for WebPlacecardBridge.MUUserInteractionOpenAppClip(0);
  v718 = *(v724 - 8);
  MEMORY[0x1EEE9AC00](v724, v110);
  v646 = &v642 - ((v111 + 15) & 0xFFFFFFFFFFFFFFF0);
  v717 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FD28, &qword_1C5875F38);
  MEMORY[0x1EEE9AC00](v717, v112);
  v725 = &v642 - v113;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EBE8, &qword_1C586B050);
  v116 = MEMORY[0x1EEE9AC00](v114 - 8, v115);
  v711 = &v642 - ((v117 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v116, v118);
  v720 = &v642 - v119;
  v728 = type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedTransitDeparture(0);
  v723 = *(v728 - 8);
  MEMORY[0x1EEE9AC00](v728, v120);
  v710 = &v642 - ((v121 + 15) & 0xFFFFFFFFFFFFFFF0);
  v721 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FD30, &qword_1C5875F40);
  MEMORY[0x1EEE9AC00](v721, v122);
  v732 = &v642 - v123;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EBE0, &qword_1C586B048);
  v126 = MEMORY[0x1EEE9AC00](v124 - 8, v125);
  v722 = &v642 - ((v127 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v126, v128);
  v727 = &v642 - v129;
  v734 = type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedBrowseCategory(0);
  v731 = *(v734 - 8);
  MEMORY[0x1EEE9AC00](v734, v130);
  v719 = &v642 - ((v131 + 15) & 0xFFFFFFFFFFFFFFF0);
  v729 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FD38, &qword_1C5875F48);
  MEMORY[0x1EEE9AC00](v729, v132);
  v739 = &v642 - v133;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EBD8, &qword_1C586B040);
  v136 = MEMORY[0x1EEE9AC00](v134 - 8, v135);
  v730 = &v642 - ((v137 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v136, v138);
  v735 = &v642 - v139;
  v742 = type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedLibrary(0);
  v738 = *(v742 - 8);
  MEMORY[0x1EEE9AC00](v742, v140);
  v726 = &v642 - ((v141 + 15) & 0xFFFFFFFFFFFFFFF0);
  v737 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FD40, &qword_1C5875F50);
  MEMORY[0x1EEE9AC00](v737, v142);
  v746 = &v642 - v143;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EBD0, &qword_1C586B038);
  v146 = MEMORY[0x1EEE9AC00](v144 - 8, v145);
  v736 = &v642 - ((v147 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v146, v148);
  v741 = &v642 - v149;
  v749 = type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedAttributionUrl(0);
  v745 = *(v749 - 8);
  MEMORY[0x1EEE9AC00](v749, v150);
  v733 = (&v642 - ((v151 + 15) & 0xFFFFFFFFFFFFFFF0));
  v744 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FD48, &qword_1C5875F58);
  MEMORY[0x1EEE9AC00](v744, v152);
  v753 = &v642 - v153;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EBC8, &qword_1C586B030);
  v156 = MEMORY[0x1EEE9AC00](v154 - 8, v155);
  v743 = (&v642 - ((v157 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v156, v158);
  v748 = &v642 - v159;
  v755 = type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedUrl(0);
  v752 = *(v755 - 8);
  MEMORY[0x1EEE9AC00](v755, v160);
  v740 = &v642 - ((v161 + 15) & 0xFFFFFFFFFFFFFFF0);
  v750 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FD50, &qword_1C5875F60);
  MEMORY[0x1EEE9AC00](v750, v162);
  v760 = &v642 - v163;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EBC0, &qword_1C586B028);
  v166 = MEMORY[0x1EEE9AC00](v164 - 8, v165);
  v751 = &v642 - ((v167 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v166, v168);
  v754 = &v642 - v169;
  v758 = type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedPlace(0);
  v757 = *(v758 - 8);
  MEMORY[0x1EEE9AC00](v758, v170);
  v747 = &v642 - ((v171 + 15) & 0xFFFFFFFFFFFFFFF0);
  v756 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FD58, &qword_1C5875F68);
  MEMORY[0x1EEE9AC00](v756, v172);
  v763 = &v642 - v173;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EBB8, &qword_1C586B020);
  v176 = MEMORY[0x1EEE9AC00](v174 - 8, v175);
  v759 = &v642 - ((v177 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v176, v178);
  v762 = &v642 - v179;
  v768 = type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedGuide(0);
  v767 = *(v768 - 8);
  MEMORY[0x1EEE9AC00](v768, v180);
  v761 = &v642 - ((v181 + 15) & 0xFFFFFFFFFFFFFFF0);
  v766 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FD60, &qword_1C5875F70);
  MEMORY[0x1EEE9AC00](v766, v182);
  v769 = &v642 - v183;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EBB0, &qword_1C586B018);
  v186 = MEMORY[0x1EEE9AC00](v184 - 8, v185);
  v765 = &v642 - ((v187 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v186, v188);
  v771 = &v642 - v189;
  v774 = type metadata accessor for WebPlacecardBridge.MUUserInteractionViewPlaceList(0);
  v773 = *(v774 - 8);
  MEMORY[0x1EEE9AC00](v774, v190);
  v764 = (&v642 - ((v191 + 15) & 0xFFFFFFFFFFFFFFF0));
  v772 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FD68, &qword_1C5875F78);
  MEMORY[0x1EEE9AC00](v772, v192);
  v775 = &v642 - v193;
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EBA8, &qword_1C586B010);
  v196 = MEMORY[0x1EEE9AC00](v194 - 8, v195);
  v785 = (&v642 - ((v197 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v196, v198);
  v777 = &v642 - v199;
  v781 = type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedPhoto(0);
  v780 = *(v781 - 8);
  MEMORY[0x1EEE9AC00](v781, v200);
  v770 = &v642 - ((v201 + 15) & 0xFFFFFFFFFFFFFFF0);
  v779 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FD70, &qword_1C5875F80);
  MEMORY[0x1EEE9AC00](v779, v202);
  v782 = &v642 - v203;
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EBA0, &qword_1C586B008);
  v206 = MEMORY[0x1EEE9AC00](v204 - 8, v205);
  v776 = &v642 - ((v207 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v206, v208);
  v783 = &v642 - v209;
  v789 = type metadata accessor for WebPlacecardBridge.MUUserInteractionInlineRAPEntry(0);
  v788 = *(v789 - 8);
  MEMORY[0x1EEE9AC00](v789, v210);
  v778 = &v642 - ((v211 + 15) & 0xFFFFFFFFFFFFFFF0);
  v787 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FD78, &qword_1C5875F88);
  MEMORY[0x1EEE9AC00](v787, v212);
  v790 = &v642 - v213;
  v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EB98, &qword_1C586B000);
  v216 = MEMORY[0x1EEE9AC00](v214 - 8, v215);
  v784 = &v642 - ((v217 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v216, v218);
  v792 = &v642 - v219;
  v796 = type metadata accessor for WebPlacecardBridge.MUUserInteractionARPRating(0);
  v795 = *(v796 - 8);
  MEMORY[0x1EEE9AC00](v796, v220);
  v786 = &v642 - ((v221 + 15) & 0xFFFFFFFFFFFFFFF0);
  v794 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FD80, &qword_1C5875F90);
  MEMORY[0x1EEE9AC00](v794, v222);
  v797 = &v642 - v223;
  v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EB90, &qword_1C586AFF8);
  v226 = MEMORY[0x1EEE9AC00](v224 - 8, v225);
  v791 = &v642 - ((v227 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v226, v228);
  v798 = &v642 - v229;
  v803 = type metadata accessor for WebPlacecardBridge.MUUserInteractionUserGuide(0);
  v802 = *(v803 - 8);
  MEMORY[0x1EEE9AC00](v803, v230);
  v793 = &v642 - ((v231 + 15) & 0xFFFFFFFFFFFFFFF0);
  v801 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FD88, &qword_1C5875F98);
  MEMORY[0x1EEE9AC00](v801, v232);
  v804 = &v642 - v233;
  v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EB88, &qword_1C586AFF0);
  v236 = MEMORY[0x1EEE9AC00](v234 - 8, v235);
  v799 = &v642 - ((v237 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v236, v238);
  v805 = &v642 - v239;
  v810 = type metadata accessor for WebPlacecardBridge.MUUserInteractionExploreGuide(0);
  v809 = *(v810 - 8);
  MEMORY[0x1EEE9AC00](v810, v240);
  v800 = &v642 - ((v241 + 15) & 0xFFFFFFFFFFFFFFF0);
  v808 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FD90, &qword_1C5875FA0);
  MEMORY[0x1EEE9AC00](v808, v242);
  v812 = &v642 - v243;
  v244 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EB80, &qword_1C586AFE8);
  v246 = MEMORY[0x1EEE9AC00](v244 - 8, v245);
  v807 = &v642 - ((v247 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v246, v248);
  v811 = &v642 - v249;
  v250 = type metadata accessor for WebPlacecardBridge.MUUserInteractionARPSuggestion(0);
  v814 = *(v250 - 8);
  MEMORY[0x1EEE9AC00](v250, v251);
  v806 = &v642 - ((v252 + 15) & 0xFFFFFFFFFFFFFFF0);
  v253 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FD98, &qword_1C5875FA8);
  MEMORY[0x1EEE9AC00](v253, v254);
  v256 = &v642 - v255;
  v257 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EB78, &qword_1C586AFE0);
  v259 = MEMORY[0x1EEE9AC00](v257 - 8, v258);
  v813 = &v642 - ((v260 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v259, v261);
  v263 = &v642 - v262;
  swift_beginAccess();
  v264 = *(a1 + 16);
  swift_beginAccess();
  v265 = *(a2 + 16);
  if (v264 == 54)
  {
    if (v265 != 54)
    {
      return 0;
    }
  }

  else if (v265 == 54 || qword_1C5876030[v264] != qword_1C5876030[v265])
  {
    return 0;
  }

  v643 = v6;
  v644 = v9;
  v645 = a2;
  v266 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__arpSuggestionArgument;
  swift_beginAccess();
  v267 = a1;
  sub_1C56466CC(a1 + v266, v263, &qword_1EC16EB78, &qword_1C586AFE0);
  v268 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__arpSuggestionArgument;
  v269 = v645;
  swift_beginAccess();
  v270 = *(v253 + 48);
  sub_1C56466CC(v263, v256, &qword_1EC16EB78, &qword_1C586AFE0);
  sub_1C56466CC(v269 + v268, &v256[v270], &qword_1EC16EB78, &qword_1C586AFE0);
  v271 = *(v814 + 48);
  if (v271(v256, 1, v250) == 1)
  {

    sub_1C5625230(v263, &qword_1EC16EB78, &qword_1C586AFE0);
    if (v271(&v256[v270], 1, v250) == 1)
    {
      sub_1C5625230(v256, &qword_1EC16EB78, &qword_1C586AFE0);
      goto LABEL_14;
    }

LABEL_11:
    v273 = &qword_1EC16FD98;
    v274 = &qword_1C5875FA8;
LABEL_12:
    sub_1C5625230(v256, v273, v274);
    goto LABEL_100;
  }

  v272 = v813;
  sub_1C56466CC(v256, v813, &qword_1EC16EB78, &qword_1C586AFE0);
  if (v271(&v256[v270], 1, v250) == 1)
  {

    sub_1C5625230(v263, &qword_1EC16EB78, &qword_1C586AFE0);
    sub_1C56EC248(v272, type metadata accessor for WebPlacecardBridge.MUUserInteractionARPSuggestion);
    goto LABEL_11;
  }

  v275 = v806;
  sub_1C56EC178(&v256[v270], v806, type metadata accessor for WebPlacecardBridge.MUUserInteractionARPSuggestion);
  v276 = v267;

  v277 = sub_1C56F26E4(v272, v275);
  v278 = v272;
  sub_1C56EC248(v275, type metadata accessor for WebPlacecardBridge.MUUserInteractionARPSuggestion);
  sub_1C5625230(v263, &qword_1EC16EB78, &qword_1C586AFE0);
  a1 = v276;
  sub_1C56EC248(v278, type metadata accessor for WebPlacecardBridge.MUUserInteractionARPSuggestion);
  v269 = v645;
  sub_1C5625230(v256, &qword_1EC16EB78, &qword_1C586AFE0);
  if ((v277 & 1) == 0)
  {
    goto LABEL_100;
  }

LABEL_14:
  v279 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__exploreGuidesArgument;
  swift_beginAccess();
  v280 = v811;
  sub_1C56466CC(a1 + v279, v811, &qword_1EC16EB80, &qword_1C586AFE8);
  v281 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__exploreGuidesArgument;
  swift_beginAccess();
  v282 = *(v808 + 48);
  v283 = v812;
  sub_1C56466CC(v280, v812, &qword_1EC16EB80, &qword_1C586AFE8);
  sub_1C56466CC(v269 + v281, v283 + v282, &qword_1EC16EB80, &qword_1C586AFE8);
  v284 = *(v809 + 48);
  v285 = v810;
  if (v284(v283, 1, v810) == 1)
  {
    sub_1C5625230(v280, &qword_1EC16EB80, &qword_1C586AFE8);
    if (v284(v283 + v282, 1, v285) == 1)
    {
      sub_1C5625230(v283, &qword_1EC16EB80, &qword_1C586AFE8);
      goto LABEL_17;
    }

LABEL_25:
    sub_1C5625230(v283, &qword_1EC16FD90, &qword_1C5875FA0);
    goto LABEL_100;
  }

  v814 = a1;
  v300 = v807;
  sub_1C56466CC(v283, v807, &qword_1EC16EB80, &qword_1C586AFE8);
  if (v284(v283 + v282, 1, v285) == 1)
  {
    sub_1C5625230(v280, &qword_1EC16EB80, &qword_1C586AFE8);
    sub_1C56EC248(v300, type metadata accessor for WebPlacecardBridge.MUUserInteractionExploreGuide);
    goto LABEL_25;
  }

  v301 = v283 + v282;
  v302 = v300;
  v303 = v800;
  sub_1C56EC178(v301, v800, type metadata accessor for WebPlacecardBridge.MUUserInteractionExploreGuide);
  v304 = *(v285 + 20);
  v305 = (v302 + v304);
  v306 = *(v302 + v304 + 8);
  v307 = (v303 + v304);
  v308 = v307[1];
  if (!v306)
  {
    if (!v308)
    {
      goto LABEL_31;
    }

LABEL_38:
    sub_1C5625230(v280, &qword_1EC16EB80, &qword_1C586AFE8);
    sub_1C56EC248(v303, type metadata accessor for WebPlacecardBridge.MUUserInteractionExploreGuide);
    sub_1C56EC248(v807, type metadata accessor for WebPlacecardBridge.MUUserInteractionExploreGuide);
    sub_1C5625230(v283, &qword_1EC16EB80, &qword_1C586AFE8);
    goto LABEL_100;
  }

  if (!v308 || (*v305 != *v307 || v306 != v308) && (sub_1C584FDC0() & 1) == 0)
  {
    goto LABEL_38;
  }

LABEL_31:
  sub_1C584EFD0();
  sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v309 = v280;
  v310 = v807;
  v311 = sub_1C584F620();
  sub_1C5625230(v309, &qword_1EC16EB80, &qword_1C586AFE8);
  sub_1C56EC248(v303, type metadata accessor for WebPlacecardBridge.MUUserInteractionExploreGuide);
  sub_1C56EC248(v310, type metadata accessor for WebPlacecardBridge.MUUserInteractionExploreGuide);
  sub_1C5625230(v283, &qword_1EC16EB80, &qword_1C586AFE8);
  a1 = v814;
  if ((v311 & 1) == 0)
  {
    goto LABEL_100;
  }

LABEL_17:
  v286 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userGuideArgument;
  swift_beginAccess();
  v287 = v805;
  sub_1C56466CC(a1 + v286, v805, &qword_1EC16EB88, &qword_1C586AFF0);
  v288 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userGuideArgument;
  swift_beginAccess();
  v289 = *(v801 + 48);
  v290 = v804;
  sub_1C56466CC(v287, v804, &qword_1EC16EB88, &qword_1C586AFF0);
  sub_1C56466CC(v269 + v288, v290 + v289, &qword_1EC16EB88, &qword_1C586AFF0);
  v291 = *(v802 + 48);
  v292 = v803;
  if (v291(v290, 1, v803) == 1)
  {
    sub_1C5625230(v287, &qword_1EC16EB88, &qword_1C586AFF0);
    if (v291(v290 + v289, 1, v292) == 1)
    {
      sub_1C5625230(v290, &qword_1EC16EB88, &qword_1C586AFF0);
      goto LABEL_20;
    }

LABEL_35:
    v313 = &qword_1EC16FD88;
    v314 = &qword_1C5875F98;
LABEL_36:
    sub_1C5625230(v290, v313, v314);
    goto LABEL_100;
  }

  v312 = v799;
  sub_1C56466CC(v290, v799, &qword_1EC16EB88, &qword_1C586AFF0);
  if (v291(v290 + v289, 1, v292) == 1)
  {
    sub_1C5625230(v805, &qword_1EC16EB88, &qword_1C586AFF0);
    sub_1C56EC248(v312, type metadata accessor for WebPlacecardBridge.MUUserInteractionUserGuide);
    goto LABEL_35;
  }

  v315 = v292;
  v316 = v793;
  sub_1C56EC178(v290 + v289, v793, type metadata accessor for WebPlacecardBridge.MUUserInteractionUserGuide);
  v317 = *(v315 + 20);
  v318 = (v312 + v317);
  v319 = *(v312 + v317 + 8);
  v320 = (v316 + v317);
  v321 = v320[1];
  if (!v319)
  {
    v322 = v805;
    if (!v321)
    {
      goto LABEL_44;
    }

LABEL_50:
    sub_1C5625230(v322, &qword_1EC16EB88, &qword_1C586AFF0);
    sub_1C56EC248(v316, type metadata accessor for WebPlacecardBridge.MUUserInteractionUserGuide);
    sub_1C56EC248(v312, type metadata accessor for WebPlacecardBridge.MUUserInteractionUserGuide);
    sub_1C5625230(v290, &qword_1EC16EB88, &qword_1C586AFF0);
    goto LABEL_100;
  }

  v322 = v805;
  if (!v321 || (*v318 != *v320 || v319 != v321) && (sub_1C584FDC0() & 1) == 0)
  {
    goto LABEL_50;
  }

LABEL_44:
  sub_1C584EFD0();
  sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v323 = sub_1C584F620();
  sub_1C5625230(v322, &qword_1EC16EB88, &qword_1C586AFF0);
  sub_1C56EC248(v316, type metadata accessor for WebPlacecardBridge.MUUserInteractionUserGuide);
  sub_1C56EC248(v312, type metadata accessor for WebPlacecardBridge.MUUserInteractionUserGuide);
  sub_1C5625230(v290, &qword_1EC16EB88, &qword_1C586AFF0);
  if ((v323 & 1) == 0)
  {
    goto LABEL_100;
  }

LABEL_20:
  v293 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__arpRatingArgument;
  swift_beginAccess();
  v294 = v798;
  sub_1C56466CC(a1 + v293, v798, &qword_1EC16EB90, &qword_1C586AFF8);
  v295 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__arpRatingArgument;
  swift_beginAccess();
  v296 = *(v794 + 48);
  v297 = v797;
  sub_1C56466CC(v294, v797, &qword_1EC16EB90, &qword_1C586AFF8);
  v256 = v297;
  sub_1C56466CC(v269 + v295, v297 + v296, &qword_1EC16EB90, &qword_1C586AFF8);
  v298 = *(v795 + 48);
  v299 = v796;
  if (v298(v297, 1, v796) == 1)
  {
    sub_1C5625230(v294, &qword_1EC16EB90, &qword_1C586AFF8);
    if (v298(v297 + v296, 1, v299) == 1)
    {
      sub_1C5625230(v297, &qword_1EC16EB90, &qword_1C586AFF8);
      goto LABEL_52;
    }

    goto LABEL_48;
  }

  v324 = v791;
  sub_1C56466CC(v297, v791, &qword_1EC16EB90, &qword_1C586AFF8);
  if (v298(v297 + v296, 1, v299) == 1)
  {
    sub_1C5625230(v798, &qword_1EC16EB90, &qword_1C586AFF8);
    sub_1C56EC248(v324, type metadata accessor for WebPlacecardBridge.MUUserInteractionARPRating);
LABEL_48:
    v273 = &qword_1EC16FD80;
    v274 = &qword_1C5875F90;
    goto LABEL_12;
  }

  v325 = v297 + v296;
  v326 = v786;
  sub_1C56EC178(v325, v786, type metadata accessor for WebPlacecardBridge.MUUserInteractionARPRating);
  v327 = sub_1C56F08FC(v324, v326);
  sub_1C56EC248(v326, type metadata accessor for WebPlacecardBridge.MUUserInteractionARPRating);
  sub_1C5625230(v798, &qword_1EC16EB90, &qword_1C586AFF8);
  sub_1C56EC248(v324, type metadata accessor for WebPlacecardBridge.MUUserInteractionARPRating);
  sub_1C5625230(v297, &qword_1EC16EB90, &qword_1C586AFF8);
  if ((v327 & 1) == 0)
  {
    goto LABEL_100;
  }

LABEL_52:
  v328 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__inlineRapArgument;
  swift_beginAccess();
  v329 = v792;
  sub_1C56466CC(a1 + v328, v792, &qword_1EC16EB98, &qword_1C586B000);
  v330 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__inlineRapArgument;
  swift_beginAccess();
  v331 = *(v787 + 48);
  v290 = v790;
  sub_1C56466CC(v329, v790, &qword_1EC16EB98, &qword_1C586B000);
  sub_1C56466CC(v269 + v330, v290 + v331, &qword_1EC16EB98, &qword_1C586B000);
  v332 = *(v788 + 48);
  v333 = v789;
  if (v332(v290, 1, v789) == 1)
  {
    sub_1C5625230(v329, &qword_1EC16EB98, &qword_1C586B000);
    if (v332(v290 + v331, 1, v333) == 1)
    {
      sub_1C5625230(v290, &qword_1EC16EB98, &qword_1C586B000);
      v334 = v785;
      goto LABEL_55;
    }

    goto LABEL_60;
  }

  v342 = v784;
  sub_1C56466CC(v290, v784, &qword_1EC16EB98, &qword_1C586B000);
  if (v332(v290 + v331, 1, v333) == 1)
  {
    sub_1C5625230(v792, &qword_1EC16EB98, &qword_1C586B000);
    sub_1C56EC248(v342, type metadata accessor for WebPlacecardBridge.MUUserInteractionInlineRAPEntry);
LABEL_60:
    v313 = &qword_1EC16FD78;
    v314 = &qword_1C5875F88;
    goto LABEL_36;
  }

  v343 = v290 + v331;
  v344 = v778;
  sub_1C56EC178(v343, v778, type metadata accessor for WebPlacecardBridge.MUUserInteractionInlineRAPEntry);
  v345 = *(v333 + 20);
  v346 = *(v342 + v345);
  v347 = *(v344 + v345);
  if (v346 == 6)
  {
    v348 = v347 == 6;
  }

  else
  {
    v348 = v346 == v347;
  }

  v334 = v785;
  if (!v348)
  {
    sub_1C56EC248(v344, type metadata accessor for WebPlacecardBridge.MUUserInteractionInlineRAPEntry);
    sub_1C5625230(v792, &qword_1EC16EB98, &qword_1C586B000);
    sub_1C56EC248(v342, type metadata accessor for WebPlacecardBridge.MUUserInteractionInlineRAPEntry);
    sub_1C5625230(v290, &qword_1EC16EB98, &qword_1C586B000);
    goto LABEL_100;
  }

  sub_1C584EFD0();
  sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v350 = sub_1C584F620();
  sub_1C56EC248(v344, type metadata accessor for WebPlacecardBridge.MUUserInteractionInlineRAPEntry);
  sub_1C5625230(v792, &qword_1EC16EB98, &qword_1C586B000);
  sub_1C56EC248(v342, type metadata accessor for WebPlacecardBridge.MUUserInteractionInlineRAPEntry);
  sub_1C5625230(v290, &qword_1EC16EB98, &qword_1C586B000);
  if ((v350 & 1) == 0)
  {
    goto LABEL_100;
  }

LABEL_55:
  v335 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__photoArgument;
  swift_beginAccess();
  v336 = v783;
  sub_1C56466CC(a1 + v335, v783, &qword_1EC16EBA0, &qword_1C586B008);
  v337 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__photoArgument;
  swift_beginAccess();
  v338 = *(v779 + 48);
  v339 = v782;
  sub_1C56466CC(v336, v782, &qword_1EC16EBA0, &qword_1C586B008);
  v256 = v339;
  sub_1C56466CC(v269 + v337, v339 + v338, &qword_1EC16EBA0, &qword_1C586B008);
  v340 = *(v780 + 48);
  v341 = v781;
  if (v340(v339, 1, v781) == 1)
  {
    sub_1C5625230(v336, &qword_1EC16EBA0, &qword_1C586B008);
    if (v340(v339 + v338, 1, v341) == 1)
    {
      sub_1C5625230(v339, &qword_1EC16EBA0, &qword_1C586B008);
      goto LABEL_72;
    }

    goto LABEL_65;
  }

  v349 = v776;
  sub_1C56466CC(v339, v776, &qword_1EC16EBA0, &qword_1C586B008);
  if (v340(v339 + v338, 1, v341) == 1)
  {
    sub_1C5625230(v783, &qword_1EC16EBA0, &qword_1C586B008);
    sub_1C56EC248(v349, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedPhoto);
LABEL_65:
    v273 = &qword_1EC16FD70;
    v274 = &qword_1C5875F80;
    goto LABEL_12;
  }

  v351 = v339 + v338;
  v352 = v770;
  sub_1C56EC178(v351, v770, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedPhoto);
  v353 = sub_1C56F01D0(v349, v352);
  sub_1C56EC248(v352, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedPhoto);
  sub_1C5625230(v783, &qword_1EC16EBA0, &qword_1C586B008);
  sub_1C56EC248(v349, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedPhoto);
  sub_1C5625230(v339, &qword_1EC16EBA0, &qword_1C586B008);
  if ((v353 & 1) == 0)
  {
    goto LABEL_100;
  }

LABEL_72:
  v354 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__viewPlaceListArgument;
  swift_beginAccess();
  v355 = v777;
  sub_1C56466CC(a1 + v354, v777, &qword_1EC16EBA8, &qword_1C586B010);
  v356 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__viewPlaceListArgument;
  swift_beginAccess();
  v357 = *(v772 + 48);
  v358 = v775;
  sub_1C56466CC(v355, v775, &qword_1EC16EBA8, &qword_1C586B010);
  v256 = v358;
  sub_1C56466CC(v269 + v356, v358 + v357, &qword_1EC16EBA8, &qword_1C586B010);
  v359 = *(v773 + 48);
  v360 = v774;
  if (v359(v358, 1, v774) == 1)
  {
    sub_1C5625230(v355, &qword_1EC16EBA8, &qword_1C586B010);
    if (v359(v358 + v357, 1, v360) == 1)
    {
      sub_1C5625230(v358, &qword_1EC16EBA8, &qword_1C586B010);
      goto LABEL_79;
    }

    goto LABEL_77;
  }

  sub_1C56466CC(v358, v334, &qword_1EC16EBA8, &qword_1C586B010);
  if (v359(v358 + v357, 1, v360) == 1)
  {
    sub_1C5625230(v777, &qword_1EC16EBA8, &qword_1C586B010);
    sub_1C56EC248(v334, type metadata accessor for WebPlacecardBridge.MUUserInteractionViewPlaceList);
LABEL_77:
    v273 = &qword_1EC16FD68;
    v274 = &qword_1C5875F78;
    goto LABEL_12;
  }

  v361 = v358 + v357;
  v362 = v764;
  sub_1C56EC178(v361, v764, type metadata accessor for WebPlacecardBridge.MUUserInteractionViewPlaceList);
  v363 = sub_1C56EFD7C(v334, v362);
  sub_1C56EC248(v362, type metadata accessor for WebPlacecardBridge.MUUserInteractionViewPlaceList);
  sub_1C5625230(v777, &qword_1EC16EBA8, &qword_1C586B010);
  sub_1C56EC248(v334, type metadata accessor for WebPlacecardBridge.MUUserInteractionViewPlaceList);
  sub_1C5625230(v358, &qword_1EC16EBA8, &qword_1C586B010);
  if ((v363 & 1) == 0)
  {
    goto LABEL_100;
  }

LABEL_79:
  v364 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__openGuideArgument;
  swift_beginAccess();
  v365 = v771;
  sub_1C56466CC(a1 + v364, v771, &qword_1EC16EBB0, &qword_1C586B018);
  v366 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__openGuideArgument;
  swift_beginAccess();
  v367 = *(v766 + 48);
  v368 = v365;
  v369 = v769;
  sub_1C56466CC(v368, v769, &qword_1EC16EBB0, &qword_1C586B018);
  v256 = v369;
  sub_1C56466CC(v269 + v366, v369 + v367, &qword_1EC16EBB0, &qword_1C586B018);
  v370 = *(v767 + 48);
  v371 = v369;
  v372 = v768;
  if (v370(v371, 1, v768) == 1)
  {
    sub_1C5625230(v771, &qword_1EC16EBB0, &qword_1C586B018);
    if (v370(&v256[v367], 1, v372) == 1)
    {
      sub_1C5625230(v256, &qword_1EC16EBB0, &qword_1C586B018);
      goto LABEL_82;
    }

    goto LABEL_87;
  }

  v383 = v765;
  sub_1C56466CC(v256, v765, &qword_1EC16EBB0, &qword_1C586B018);
  if (v370(&v256[v367], 1, v372) == 1)
  {
    sub_1C5625230(v771, &qword_1EC16EBB0, &qword_1C586B018);
    sub_1C56EC248(v383, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedGuide);
LABEL_87:
    v273 = &qword_1EC16FD60;
    v274 = &qword_1C5875F70;
    goto LABEL_12;
  }

  v384 = v761;
  sub_1C56EC178(&v256[v367], v761, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedGuide);
  v385 = *(v372 + 20);
  v386 = (v383 + v385);
  v387 = *(v383 + v385 + 8);
  v388 = (v384 + v385);
  v389 = v388[1];
  if (!v387)
  {
    if (!v389)
    {
      goto LABEL_93;
    }

LABEL_99:
    sub_1C56EC248(v761, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedGuide);
    sub_1C5625230(v771, &qword_1EC16EBB0, &qword_1C586B018);
    sub_1C56EC248(v765, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedGuide);
    sub_1C5625230(v769, &qword_1EC16EBB0, &qword_1C586B018);
    goto LABEL_100;
  }

  if (!v389 || (*v386 != *v388 || v387 != v389) && (sub_1C584FDC0() & 1) == 0)
  {
    goto LABEL_99;
  }

LABEL_93:
  sub_1C584EFD0();
  sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v390 = v765;
  v391 = v761;
  v392 = sub_1C584F620();
  sub_1C56EC248(v391, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedGuide);
  sub_1C5625230(v771, &qword_1EC16EBB0, &qword_1C586B018);
  sub_1C56EC248(v390, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedGuide);
  sub_1C5625230(v769, &qword_1EC16EBB0, &qword_1C586B018);
  v269 = v645;
  if ((v392 & 1) == 0)
  {
    goto LABEL_100;
  }

LABEL_82:
  v373 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__openPlaceArgument;
  swift_beginAccess();
  v374 = a1;
  v375 = a1 + v373;
  v376 = v762;
  sub_1C56466CC(v375, v762, &qword_1EC16EBB8, &qword_1C586B020);
  v377 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__openPlaceArgument;
  swift_beginAccess();
  v378 = *(v756 + 48);
  v379 = v376;
  v380 = v763;
  sub_1C56466CC(v379, v763, &qword_1EC16EBB8, &qword_1C586B020);
  sub_1C56466CC(v269 + v377, v380 + v378, &qword_1EC16EBB8, &qword_1C586B020);
  v381 = *(v757 + 48);
  v382 = v758;
  if (v381(v380, 1, v758) == 1)
  {
    sub_1C5625230(v762, &qword_1EC16EBB8, &qword_1C586B020);
    if (v381(v380 + v378, 1, v382) == 1)
    {
      sub_1C5625230(v763, &qword_1EC16EBB8, &qword_1C586B020);
      goto LABEL_103;
    }

LABEL_97:
    v393 = &qword_1EC16FD58;
    v394 = &qword_1C5875F68;
    v395 = v763;
LABEL_151:
    sub_1C5625230(v395, v393, v394);
    goto LABEL_100;
  }

  sub_1C56466CC(v380, v759, &qword_1EC16EBB8, &qword_1C586B020);
  if (v381(v380 + v378, 1, v382) == 1)
  {
    sub_1C5625230(v762, &qword_1EC16EBB8, &qword_1C586B020);
    sub_1C56EC248(v759, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedPlace);
    goto LABEL_97;
  }

  v397 = v763;
  v398 = v763 + v378;
  v399 = v747;
  sub_1C56EC178(v398, v747, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedPlace);
  v400 = v759;
  v401 = sub_1C56F0F18(v759, v399, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedPlace);
  sub_1C56EC248(v399, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedPlace);
  sub_1C5625230(v762, &qword_1EC16EBB8, &qword_1C586B020);
  sub_1C56EC248(v400, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedPlace);
  sub_1C5625230(v397, &qword_1EC16EBB8, &qword_1C586B020);
  if ((v401 & 1) == 0)
  {
    goto LABEL_100;
  }

LABEL_103:
  v402 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__urlArgument;
  swift_beginAccess();
  v403 = v754;
  sub_1C56466CC(v374 + v402, v754, &qword_1EC16EBC0, &qword_1C586B028);
  v404 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__urlArgument;
  v405 = v645;
  swift_beginAccess();
  v406 = *(v750 + 48);
  v407 = v403;
  v408 = v760;
  sub_1C56466CC(v407, v760, &qword_1EC16EBC0, &qword_1C586B028);
  sub_1C56466CC(v405 + v404, v408 + v406, &qword_1EC16EBC0, &qword_1C586B028);
  v409 = *(v752 + 48);
  if (v409(v408, 1, v755) == 1)
  {
    sub_1C5625230(v754, &qword_1EC16EBC0, &qword_1C586B028);
    if (v409(v760 + v406, 1, v755) == 1)
    {
      sub_1C5625230(v760, &qword_1EC16EBC0, &qword_1C586B028);
      goto LABEL_110;
    }

    goto LABEL_108;
  }

  v410 = v760;
  sub_1C56466CC(v760, v751, &qword_1EC16EBC0, &qword_1C586B028);
  if (v409(v410 + v406, 1, v755) == 1)
  {
    sub_1C5625230(v754, &qword_1EC16EBC0, &qword_1C586B028);
    sub_1C56EC248(v751, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedUrl);
LABEL_108:
    v393 = &qword_1EC16FD50;
    v394 = &qword_1C5875F60;
    v395 = v760;
    goto LABEL_151;
  }

  v411 = v760;
  v412 = v760 + v406;
  v413 = v740;
  sub_1C56EC178(v412, v740, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedUrl);
  v414 = v751;
  v415 = sub_1C56F0484(v751, v413);
  sub_1C56EC248(v413, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedUrl);
  sub_1C5625230(v754, &qword_1EC16EBC0, &qword_1C586B028);
  sub_1C56EC248(v414, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedUrl);
  sub_1C5625230(v411, &qword_1EC16EBC0, &qword_1C586B028);
  if ((v415 & 1) == 0)
  {
    goto LABEL_100;
  }

LABEL_110:
  v416 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__attributionURLArgument;
  swift_beginAccess();
  v417 = v748;
  sub_1C56466CC(v374 + v416, v748, &qword_1EC16EBC8, &qword_1C586B030);
  v418 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__attributionURLArgument;
  v419 = v645;
  swift_beginAccess();
  v420 = *(v744 + 48);
  v421 = v417;
  v422 = v753;
  sub_1C56466CC(v421, v753, &qword_1EC16EBC8, &qword_1C586B030);
  sub_1C56466CC(v419 + v418, v422 + v420, &qword_1EC16EBC8, &qword_1C586B030);
  v423 = *(v745 + 48);
  if (v423(v422, 1, v749) == 1)
  {
    sub_1C5625230(v748, &qword_1EC16EBC8, &qword_1C586B030);
    if (v423(v753 + v420, 1, v749) == 1)
    {
      sub_1C5625230(v753, &qword_1EC16EBC8, &qword_1C586B030);
      goto LABEL_117;
    }

    goto LABEL_115;
  }

  v424 = v753;
  sub_1C56466CC(v753, v743, &qword_1EC16EBC8, &qword_1C586B030);
  if (v423(v424 + v420, 1, v749) == 1)
  {
    sub_1C5625230(v748, &qword_1EC16EBC8, &qword_1C586B030);
    sub_1C56EC248(v743, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedAttributionUrl);
LABEL_115:
    v393 = &qword_1EC16FD48;
    v394 = &qword_1C5875F58;
    v395 = v753;
    goto LABEL_151;
  }

  v425 = v753;
  v426 = v753 + v420;
  v427 = v733;
  sub_1C56EC178(v426, v733, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedAttributionUrl);
  v428 = v743;
  v429 = sub_1C56EF72C(v743, v427);
  sub_1C56EC248(v427, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedAttributionUrl);
  sub_1C5625230(v748, &qword_1EC16EBC8, &qword_1C586B030);
  sub_1C56EC248(v428, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedAttributionUrl);
  sub_1C5625230(v425, &qword_1EC16EBC8, &qword_1C586B030);
  if ((v429 & 1) == 0)
  {
    goto LABEL_100;
  }

LABEL_117:
  v430 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__tappedLibraryArgument;
  swift_beginAccess();
  v431 = v741;
  sub_1C56466CC(v374 + v430, v741, &qword_1EC16EBD0, &qword_1C586B038);
  v432 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__tappedLibraryArgument;
  v433 = v645;
  swift_beginAccess();
  v434 = *(v737 + 48);
  v435 = v431;
  v436 = v746;
  sub_1C56466CC(v435, v746, &qword_1EC16EBD0, &qword_1C586B038);
  sub_1C56466CC(v433 + v432, v436 + v434, &qword_1EC16EBD0, &qword_1C586B038);
  v437 = *(v738 + 48);
  if (v437(v436, 1, v742) == 1)
  {
    sub_1C5625230(v741, &qword_1EC16EBD0, &qword_1C586B038);
    if (v437(v746 + v434, 1, v742) == 1)
    {
      sub_1C5625230(v746, &qword_1EC16EBD0, &qword_1C586B038);
      goto LABEL_124;
    }

    goto LABEL_122;
  }

  v438 = v746;
  sub_1C56466CC(v746, v736, &qword_1EC16EBD0, &qword_1C586B038);
  if (v437(v438 + v434, 1, v742) == 1)
  {
    sub_1C5625230(v741, &qword_1EC16EBD0, &qword_1C586B038);
    sub_1C56EC248(v736, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedLibrary);
LABEL_122:
    v393 = &qword_1EC16FD40;
    v394 = &qword_1C5875F50;
    v395 = v746;
    goto LABEL_151;
  }

  v439 = v746;
  v440 = v746 + v434;
  v441 = v726;
  sub_1C56EC178(v440, v726, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedLibrary);
  v442 = v736;
  v443 = sub_1C56EFFC4(v736, v441);
  sub_1C56EC248(v441, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedLibrary);
  sub_1C5625230(v741, &qword_1EC16EBD0, &qword_1C586B038);
  sub_1C56EC248(v442, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedLibrary);
  sub_1C5625230(v439, &qword_1EC16EBD0, &qword_1C586B038);
  if ((v443 & 1) == 0)
  {
    goto LABEL_100;
  }

LABEL_124:
  v444 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__browseCategoryArgument;
  swift_beginAccess();
  v445 = v735;
  sub_1C56466CC(v374 + v444, v735, &qword_1EC16EBD8, &qword_1C586B040);
  v446 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__browseCategoryArgument;
  v447 = v645;
  swift_beginAccess();
  v448 = *(v729 + 48);
  v449 = v445;
  v450 = v739;
  sub_1C56466CC(v449, v739, &qword_1EC16EBD8, &qword_1C586B040);
  sub_1C56466CC(v447 + v446, v450 + v448, &qword_1EC16EBD8, &qword_1C586B040);
  v451 = *(v731 + 48);
  if (v451(v450, 1, v734) == 1)
  {
    sub_1C5625230(v735, &qword_1EC16EBD8, &qword_1C586B040);
    if (v451(v739 + v448, 1, v734) == 1)
    {
      sub_1C5625230(v739, &qword_1EC16EBD8, &qword_1C586B040);
      goto LABEL_131;
    }

    goto LABEL_129;
  }

  v452 = v739;
  sub_1C56466CC(v739, v730, &qword_1EC16EBD8, &qword_1C586B040);
  if (v451(v452 + v448, 1, v734) == 1)
  {
    sub_1C5625230(v735, &qword_1EC16EBD8, &qword_1C586B040);
    sub_1C56EC248(v730, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedBrowseCategory);
LABEL_129:
    v393 = &qword_1EC16FD38;
    v394 = &qword_1C5875F48;
    v395 = v739;
    goto LABEL_151;
  }

  v453 = v739;
  v454 = v739 + v448;
  v455 = v719;
  sub_1C56EC178(v454, v719, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedBrowseCategory);
  v456 = v730;
  v457 = sub_1C56F0F18(v730, v455, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedBrowseCategory);
  sub_1C56EC248(v455, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedBrowseCategory);
  sub_1C5625230(v735, &qword_1EC16EBD8, &qword_1C586B040);
  sub_1C56EC248(v456, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedBrowseCategory);
  sub_1C5625230(v453, &qword_1EC16EBD8, &qword_1C586B040);
  if ((v457 & 1) == 0)
  {
    goto LABEL_100;
  }

LABEL_131:
  v458 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__tappedTransitDepartureArgument;
  swift_beginAccess();
  v459 = v727;
  sub_1C56466CC(v374 + v458, v727, &qword_1EC16EBE0, &qword_1C586B048);
  v460 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__tappedTransitDepartureArgument;
  v461 = v645;
  swift_beginAccess();
  v462 = *(v721 + 48);
  v463 = v459;
  v464 = v732;
  sub_1C56466CC(v463, v732, &qword_1EC16EBE0, &qword_1C586B048);
  sub_1C56466CC(v461 + v460, v464 + v462, &qword_1EC16EBE0, &qword_1C586B048);
  v465 = *(v723 + 48);
  if (v465(v464, 1, v728) == 1)
  {
    sub_1C5625230(v727, &qword_1EC16EBE0, &qword_1C586B048);
    if (v465(v732 + v462, 1, v728) == 1)
    {
      sub_1C5625230(v732, &qword_1EC16EBE0, &qword_1C586B048);
      goto LABEL_138;
    }

    goto LABEL_136;
  }

  v466 = v732;
  sub_1C56466CC(v732, v722, &qword_1EC16EBE0, &qword_1C586B048);
  if (v465(v466 + v462, 1, v728) == 1)
  {
    sub_1C5625230(v727, &qword_1EC16EBE0, &qword_1C586B048);
    sub_1C56EC248(v722, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedTransitDeparture);
LABEL_136:
    v393 = &qword_1EC16FD30;
    v394 = &qword_1C5875F40;
    v395 = v732;
    goto LABEL_151;
  }

  v467 = v732;
  v468 = v732 + v462;
  v469 = v710;
  sub_1C56EC178(v468, v710, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedTransitDeparture);
  v470 = v722;
  v471 = sub_1C56EF1D8(v722, v469);
  sub_1C56EC248(v469, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedTransitDeparture);
  sub_1C5625230(v727, &qword_1EC16EBE0, &qword_1C586B048);
  sub_1C56EC248(v470, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedTransitDeparture);
  sub_1C5625230(v467, &qword_1EC16EBE0, &qword_1C586B048);
  if ((v471 & 1) == 0)
  {
    goto LABEL_100;
  }

LABEL_138:
  v472 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__openAppClipArgument;
  swift_beginAccess();
  v473 = v720;
  sub_1C56466CC(v374 + v472, v720, &qword_1EC16EBE8, &qword_1C586B050);
  v474 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__openAppClipArgument;
  v475 = v645;
  swift_beginAccess();
  v476 = *(v717 + 48);
  v477 = v473;
  v478 = v725;
  sub_1C56466CC(v477, v725, &qword_1EC16EBE8, &qword_1C586B050);
  sub_1C56466CC(v475 + v474, v478 + v476, &qword_1EC16EBE8, &qword_1C586B050);
  v479 = *(v718 + 48);
  if (v479(v478, 1, v724) == 1)
  {
    sub_1C5625230(v720, &qword_1EC16EBE8, &qword_1C586B050);
    if (v479(v725 + v476, 1, v724) == 1)
    {
      sub_1C5625230(v725, &qword_1EC16EBE8, &qword_1C586B050);
      goto LABEL_145;
    }

    goto LABEL_143;
  }

  v480 = v725;
  sub_1C56466CC(v725, v711, &qword_1EC16EBE8, &qword_1C586B050);
  if (v479(v480 + v476, 1, v724) == 1)
  {
    sub_1C5625230(v720, &qword_1EC16EBE8, &qword_1C586B050);
    sub_1C56EC248(v711, type metadata accessor for WebPlacecardBridge.MUUserInteractionOpenAppClip);
LABEL_143:
    v393 = &qword_1EC16FD28;
    v394 = &qword_1C5875F38;
    v395 = v725;
    goto LABEL_151;
  }

  v481 = v725;
  v482 = v725 + v476;
  v483 = v646;
  sub_1C56EC178(v482, v646, type metadata accessor for WebPlacecardBridge.MUUserInteractionOpenAppClip);
  v484 = v711;
  v485 = sub_1C56F0300(v711, v483, type metadata accessor for WebPlacecardBridge.MUUserInteractionOpenAppClip);
  sub_1C56EC248(v483, type metadata accessor for WebPlacecardBridge.MUUserInteractionOpenAppClip);
  sub_1C5625230(v720, &qword_1EC16EBE8, &qword_1C586B050);
  sub_1C56EC248(v484, type metadata accessor for WebPlacecardBridge.MUUserInteractionOpenAppClip);
  sub_1C5625230(v481, &qword_1EC16EBE8, &qword_1C586B050);
  if ((v485 & 1) == 0)
  {
LABEL_100:

    return 0;
  }

LABEL_145:
  v486 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__openExtensionArgument;
  swift_beginAccess();
  v487 = v713;
  sub_1C56466CC(v374 + v486, v713, &qword_1EC16EBF0, &unk_1C586B058);
  v488 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__openExtensionArgument;
  v489 = v645;
  swift_beginAccess();
  v490 = *(v712 + 48);
  v491 = v487;
  v492 = v716;
  sub_1C56466CC(v491, v716, &qword_1EC16EBF0, &unk_1C586B058);
  sub_1C56466CC(v489 + v488, v492 + v490, &qword_1EC16EBF0, &unk_1C586B058);
  v493 = *(v714 + 48);
  if (v493(v492, 1, v715) == 1)
  {
    sub_1C5625230(v713, &qword_1EC16EBF0, &unk_1C586B058);
    if (v493(v716 + v490, 1, v715) == 1)
    {
      sub_1C5625230(v716, &qword_1EC16EBF0, &unk_1C586B058);
      goto LABEL_154;
    }

    goto LABEL_150;
  }

  v494 = v716;
  sub_1C56466CC(v716, v647, &qword_1EC16EBF0, &unk_1C586B058);
  if (v493(v494 + v490, 1, v715) == 1)
  {
    sub_1C5625230(v713, &qword_1EC16EBF0, &unk_1C586B058);
    sub_1C56EC248(v647, type metadata accessor for WebPlacecardBridge.MUUserInteractionOpenExtension);
LABEL_150:
    v393 = &qword_1EC16FD20;
    v394 = &qword_1C5875F30;
    v395 = v716;
    goto LABEL_151;
  }

  v495 = v716;
  v496 = v716 + v490;
  v497 = v648;
  sub_1C56EC178(v496, v648, type metadata accessor for WebPlacecardBridge.MUUserInteractionOpenExtension);
  v498 = v647;
  v499 = sub_1C56F00B4(v647, v497);
  sub_1C56EC248(v497, type metadata accessor for WebPlacecardBridge.MUUserInteractionOpenExtension);
  sub_1C5625230(v713, &qword_1EC16EBF0, &unk_1C586B058);
  sub_1C56EC248(v498, type metadata accessor for WebPlacecardBridge.MUUserInteractionOpenExtension);
  sub_1C5625230(v495, &qword_1EC16EBF0, &unk_1C586B058);
  if ((v499 & 1) == 0)
  {
    goto LABEL_100;
  }

LABEL_154:
  v500 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__offlineMapActionTypeArgument;
  swift_beginAccess();
  v501 = *(v374 + v500);
  v502 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__offlineMapActionTypeArgument;
  v503 = v645;
  swift_beginAccess();
  v504 = *(v503 + v502);
  if (v501 == 3)
  {
    if (v504 != 3)
    {
      goto LABEL_100;
    }
  }

  else if (v504 == 3 || v501 != v504)
  {
    goto LABEL_100;
  }

  v505 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__reportAnIssueTypeArgument;
  swift_beginAccess();
  v506 = *(v374 + v505);
  v507 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__reportAnIssueTypeArgument;
  v508 = v645;
  swift_beginAccess();
  v509 = *(v508 + v507);
  if (v506 == 6)
  {
    if (v509 != 6)
    {
      goto LABEL_100;
    }
  }

  else if (v509 == 6 || v506 != v509)
  {
    goto LABEL_100;
  }

  v510 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__pinActionTypeArgument;
  swift_beginAccess();
  v511 = *(v374 + v510);
  v512 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__pinActionTypeArgument;
  v513 = v645;
  swift_beginAccess();
  v514 = *(v513 + v512);
  if (v511 == 3)
  {
    if (v514 != 3)
    {
      goto LABEL_100;
    }
  }

  else if (v514 == 3 || v511 != v514)
  {
    goto LABEL_100;
  }

  v515 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__directionsContactArgument;
  swift_beginAccess();
  v516 = v650;
  sub_1C56466CC(v374 + v515, v650, &qword_1EC16DD98, &unk_1C5868560);
  v517 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__directionsContactArgument;
  v518 = v645;
  swift_beginAccess();
  v519 = *(v649 + 48);
  v520 = v516;
  v521 = v655;
  sub_1C56466CC(v520, v655, &qword_1EC16DD98, &unk_1C5868560);
  sub_1C56466CC(v518 + v517, v521 + v519, &qword_1EC16DD98, &unk_1C5868560);
  v522 = *(v652 + 48);
  if (v522(v521, 1, v653) == 1)
  {
    sub_1C5625230(v650, &qword_1EC16DD98, &unk_1C5868560);
    if (v522(v655 + v519, 1, v653) == 1)
    {
      sub_1C5625230(v655, &qword_1EC16DD98, &unk_1C5868560);
      goto LABEL_176;
    }

    goto LABEL_174;
  }

  v523 = v655;
  sub_1C56466CC(v655, v651, &qword_1EC16DD98, &unk_1C5868560);
  if (v522(v523 + v519, 1, v653) == 1)
  {
    sub_1C5625230(v650, &qword_1EC16DD98, &unk_1C5868560);
    sub_1C56EC248(v651, type metadata accessor for MUContactLabeledValue);
LABEL_174:
    v393 = &qword_1EC16FD18;
    v394 = &qword_1C5875F28;
    v395 = v655;
    goto LABEL_151;
  }

  v524 = v655;
  v525 = v655 + v519;
  v526 = v654;
  sub_1C56EC178(v525, v654, type metadata accessor for MUContactLabeledValue);
  v527 = v651;
  v528 = sub_1C56F0300(v651, v526, type metadata accessor for MUContactLabeledValue);
  sub_1C56EC248(v526, type metadata accessor for MUContactLabeledValue);
  sub_1C5625230(v650, &qword_1EC16DD98, &unk_1C5868560);
  sub_1C56EC248(v527, type metadata accessor for MUContactLabeledValue);
  sub_1C5625230(v524, &qword_1EC16DD98, &unk_1C5868560);
  if ((v528 & 1) == 0)
  {
    goto LABEL_100;
  }

LABEL_176:
  v529 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__viewGuideListArgument;
  swift_beginAccess();
  v530 = v657;
  sub_1C56466CC(v374 + v529, v657, &qword_1EC16EBF8, &qword_1C586B068);
  v531 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__viewGuideListArgument;
  v532 = v645;
  swift_beginAccess();
  v533 = *(v656 + 48);
  v534 = v530;
  v535 = v662;
  sub_1C56466CC(v534, v662, &qword_1EC16EBF8, &qword_1C586B068);
  sub_1C56466CC(v532 + v531, v535 + v533, &qword_1EC16EBF8, &qword_1C586B068);
  v536 = *(v659 + 48);
  if (v536(v535, 1, v661) == 1)
  {
    sub_1C5625230(v657, &qword_1EC16EBF8, &qword_1C586B068);
    if (v536(v662 + v533, 1, v661) == 1)
    {
      sub_1C5625230(v662, &qword_1EC16EBF8, &qword_1C586B068);
      goto LABEL_183;
    }

    goto LABEL_181;
  }

  v537 = v662;
  sub_1C56466CC(v662, v658, &qword_1EC16EBF8, &qword_1C586B068);
  if (v536(v537 + v533, 1, v661) == 1)
  {
    sub_1C5625230(v657, &qword_1EC16EBF8, &qword_1C586B068);
    sub_1C56EC248(v658, type metadata accessor for WebPlacecardBridge.MUUserInteractionViewGuideList);
LABEL_181:
    v393 = &qword_1EC16FD10;
    v394 = &qword_1C5875F20;
    v395 = v662;
    goto LABEL_151;
  }

  v538 = v662;
  v539 = v662 + v533;
  v540 = v660;
  sub_1C56EC178(v539, v660, type metadata accessor for WebPlacecardBridge.MUUserInteractionViewGuideList);
  v541 = v658;
  v542 = sub_1C56EFEB0(v658, v540);
  sub_1C56EC248(v540, type metadata accessor for WebPlacecardBridge.MUUserInteractionViewGuideList);
  sub_1C5625230(v657, &qword_1EC16EBF8, &qword_1C586B068);
  sub_1C56EC248(v541, type metadata accessor for WebPlacecardBridge.MUUserInteractionViewGuideList);
  sub_1C5625230(v538, &qword_1EC16EBF8, &qword_1C586B068);
  if ((v542 & 1) == 0)
  {
    goto LABEL_100;
  }

LABEL_183:
  v543 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__addToGuidesArgument;
  swift_beginAccess();
  v544 = v664;
  sub_1C56466CC(v374 + v543, v664, &qword_1EC16EC00, &qword_1C586B070);
  v545 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__addToGuidesArgument;
  v546 = v645;
  swift_beginAccess();
  v547 = *(v663 + 48);
  v548 = v544;
  v549 = v669;
  sub_1C56466CC(v548, v669, &qword_1EC16EC00, &qword_1C586B070);
  sub_1C56466CC(v546 + v545, v549 + v547, &qword_1EC16EC00, &qword_1C586B070);
  v550 = *(v666 + 48);
  if (v550(v549, 1, v667) == 1)
  {
    sub_1C5625230(v664, &qword_1EC16EC00, &qword_1C586B070);
    if (v550(v669 + v547, 1, v667) == 1)
    {
      sub_1C5625230(v669, &qword_1EC16EC00, &qword_1C586B070);
      goto LABEL_190;
    }

    goto LABEL_188;
  }

  v551 = v669;
  sub_1C56466CC(v669, v665, &qword_1EC16EC00, &qword_1C586B070);
  if (v550(v551 + v547, 1, v667) == 1)
  {
    sub_1C5625230(v664, &qword_1EC16EC00, &qword_1C586B070);
    sub_1C56EC248(v665, type metadata accessor for WebPlacecardBridge.MUUserInteractionAddToGuides);
LABEL_188:
    v393 = &qword_1EC16FD08;
    v394 = &qword_1C5875F18;
    v395 = v669;
    goto LABEL_151;
  }

  v552 = v669;
  v553 = v669 + v547;
  v554 = v668;
  sub_1C56EC178(v553, v668, type metadata accessor for WebPlacecardBridge.MUUserInteractionAddToGuides);
  v555 = v665;
  v556 = sub_1C56F0B34(v665, v554, type metadata accessor for WebPlacecardBridge.MUUserInteractionAddToGuides);
  sub_1C56EC248(v554, type metadata accessor for WebPlacecardBridge.MUUserInteractionAddToGuides);
  sub_1C5625230(v664, &qword_1EC16EC00, &qword_1C586B070);
  sub_1C56EC248(v555, type metadata accessor for WebPlacecardBridge.MUUserInteractionAddToGuides);
  sub_1C5625230(v552, &qword_1EC16EC00, &qword_1C586B070);
  if ((v556 & 1) == 0)
  {
    goto LABEL_100;
  }

LABEL_190:
  v557 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__tappedTransitIncidentArgument;
  swift_beginAccess();
  v558 = v672;
  sub_1C56466CC(v374 + v557, v672, &qword_1EC16EC08, &qword_1C586B078);
  v559 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__tappedTransitIncidentArgument;
  v560 = v645;
  swift_beginAccess();
  v561 = *(v670 + 48);
  v562 = v558;
  v563 = v676;
  sub_1C56466CC(v562, v676, &qword_1EC16EC08, &qword_1C586B078);
  sub_1C56466CC(v560 + v559, v563 + v561, &qword_1EC16EC08, &qword_1C586B078);
  v564 = *(v671 + 48);
  if (v564(v563, 1, v673) == 1)
  {
    sub_1C5625230(v672, &qword_1EC16EC08, &qword_1C586B078);
    if (v564(v676 + v561, 1, v673) == 1)
    {
      sub_1C5625230(v676, &qword_1EC16EC08, &qword_1C586B078);
      goto LABEL_193;
    }

    goto LABEL_198;
  }

  v573 = v676;
  sub_1C56466CC(v676, v674, &qword_1EC16EC08, &qword_1C586B078);
  if (v564(v573 + v561, 1, v673) == 1)
  {
    sub_1C5625230(v672, &qword_1EC16EC08, &qword_1C586B078);
    sub_1C56EC248(v674, type metadata accessor for WebPlacecardBridge.MUUserInteractionActionTappedTransitIncident);
LABEL_198:
    v393 = &qword_1EC16FD00;
    v394 = &qword_1C5875F10;
    v395 = v676;
    goto LABEL_151;
  }

  v574 = v675;
  sub_1C56EC178(v676 + v561, v675, type metadata accessor for WebPlacecardBridge.MUUserInteractionActionTappedTransitIncident);
  if ((sub_1C56EA440(*v674, *v574) & 1) == 0)
  {
    sub_1C5625230(v672, &qword_1EC16EC08, &qword_1C586B078);
    sub_1C56EC248(v675, type metadata accessor for WebPlacecardBridge.MUUserInteractionActionTappedTransitIncident);
    sub_1C56EC248(v674, type metadata accessor for WebPlacecardBridge.MUUserInteractionActionTappedTransitIncident);
    v395 = v676;
    v393 = &qword_1EC16EC08;
    v394 = &qword_1C586B078;
    goto LABEL_151;
  }

  sub_1C584EFD0();
  sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v576 = v674;
  v575 = v675;
  v577 = sub_1C584F620();
  sub_1C5625230(v672, &qword_1EC16EC08, &qword_1C586B078);
  sub_1C56EC248(v575, type metadata accessor for WebPlacecardBridge.MUUserInteractionActionTappedTransitIncident);
  sub_1C56EC248(v576, type metadata accessor for WebPlacecardBridge.MUUserInteractionActionTappedTransitIncident);
  sub_1C5625230(v676, &qword_1EC16EC08, &qword_1C586B078);
  if ((v577 & 1) == 0)
  {
    goto LABEL_100;
  }

LABEL_193:
  v565 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__publisherGuideActionArgument;
  swift_beginAccess();
  v566 = v678;
  sub_1C56466CC(v374 + v565, v678, &qword_1EC16EC10, &qword_1C586B080);
  v567 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__publisherGuideActionArgument;
  v568 = v645;
  swift_beginAccess();
  v569 = *(v677 + 48);
  v570 = v566;
  v571 = v683;
  sub_1C56466CC(v570, v683, &qword_1EC16EC10, &qword_1C586B080);
  sub_1C56466CC(v568 + v567, v571 + v569, &qword_1EC16EC10, &qword_1C586B080);
  v572 = *(v680 + 48);
  if (v572(v571, 1, v682) == 1)
  {
    sub_1C5625230(v678, &qword_1EC16EC10, &qword_1C586B080);
    if (v572(v683 + v569, 1, v682) == 1)
    {
      sub_1C5625230(v683, &qword_1EC16EC10, &qword_1C586B080);
      goto LABEL_207;
    }

    goto LABEL_204;
  }

  v578 = v683;
  sub_1C56466CC(v683, v679, &qword_1EC16EC10, &qword_1C586B080);
  if (v572(v578 + v569, 1, v682) == 1)
  {
    sub_1C5625230(v678, &qword_1EC16EC10, &qword_1C586B080);
    sub_1C56EC248(v679, type metadata accessor for WebPlacecardBridge.MUUserInteractionPublisherGuideAction);
LABEL_204:
    v393 = &qword_1EC16FCF8;
    v394 = &qword_1C5875F08;
    v395 = v683;
    goto LABEL_151;
  }

  v579 = v683;
  v580 = v683 + v569;
  v581 = v681;
  sub_1C56EC178(v580, v681, type metadata accessor for WebPlacecardBridge.MUUserInteractionPublisherGuideAction);
  v582 = v679;
  v583 = sub_1C56EF828(v679, v581);
  sub_1C56EC248(v581, type metadata accessor for WebPlacecardBridge.MUUserInteractionPublisherGuideAction);
  sub_1C5625230(v678, &qword_1EC16EC10, &qword_1C586B080);
  sub_1C56EC248(v582, type metadata accessor for WebPlacecardBridge.MUUserInteractionPublisherGuideAction);
  sub_1C5625230(v579, &qword_1EC16EC10, &qword_1C586B080);
  if ((v583 & 1) == 0)
  {
    goto LABEL_100;
  }

LABEL_207:
  v584 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__openPhotoViewerArgument;
  swift_beginAccess();
  v585 = v685;
  sub_1C56466CC(v374 + v584, v685, &qword_1EC16EC18, &qword_1C586B088);
  v586 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__openPhotoViewerArgument;
  v587 = v645;
  swift_beginAccess();
  v588 = *(v684 + 48);
  v589 = v585;
  v590 = v690;
  sub_1C56466CC(v589, v690, &qword_1EC16EC18, &qword_1C586B088);
  sub_1C56466CC(v587 + v586, v590 + v588, &qword_1EC16EC18, &qword_1C586B088);
  v591 = *(v687 + 48);
  if (v591(v590, 1, v688) == 1)
  {
    sub_1C5625230(v685, &qword_1EC16EC18, &qword_1C586B088);
    if (v591(v690 + v588, 1, v688) == 1)
    {
      sub_1C5625230(v690, &qword_1EC16EC18, &qword_1C586B088);
      goto LABEL_214;
    }

    goto LABEL_212;
  }

  v592 = v690;
  sub_1C56466CC(v690, v686, &qword_1EC16EC18, &qword_1C586B088);
  if (v591(v592 + v588, 1, v688) == 1)
  {
    sub_1C5625230(v685, &qword_1EC16EC18, &qword_1C586B088);
    sub_1C56EC248(v686, type metadata accessor for WebPlacecardBridge.MUUserInteractionOpenPhotoViewer);
LABEL_212:
    v393 = &qword_1EC16FCF0;
    v394 = &qword_1C5875F00;
    v395 = v690;
    goto LABEL_151;
  }

  v593 = v690;
  v594 = v690 + v588;
  v595 = v689;
  sub_1C56EC178(v594, v689, type metadata accessor for WebPlacecardBridge.MUUserInteractionOpenPhotoViewer);
  v596 = v686;
  v597 = sub_1C56F0D30(v686, v595, type metadata accessor for WebPlacecardBridge.MUUserInteractionOpenPhotoViewer);
  sub_1C56EC248(v595, type metadata accessor for WebPlacecardBridge.MUUserInteractionOpenPhotoViewer);
  sub_1C5625230(v685, &qword_1EC16EC18, &qword_1C586B088);
  sub_1C56EC248(v596, type metadata accessor for WebPlacecardBridge.MUUserInteractionOpenPhotoViewer);
  sub_1C5625230(v593, &qword_1EC16EC18, &qword_1C586B088);
  if ((v597 & 1) == 0)
  {
    goto LABEL_100;
  }

LABEL_214:
  v598 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__addPhotosArgument;
  swift_beginAccess();
  v599 = v692;
  sub_1C56466CC(v374 + v598, v692, &qword_1EC16FEF0, &qword_1C586B090);
  v600 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__addPhotosArgument;
  v601 = v645;
  swift_beginAccess();
  v602 = *(v691 + 48);
  v603 = v599;
  v604 = v697;
  sub_1C56466CC(v603, v697, &qword_1EC16FEF0, &qword_1C586B090);
  sub_1C56466CC(v601 + v600, v604 + v602, &qword_1EC16FEF0, &qword_1C586B090);
  v605 = *(v694 + 48);
  if (v605(v604, 1, v696) == 1)
  {
    sub_1C5625230(v692, &qword_1EC16FEF0, &qword_1C586B090);
    if (v605(v697 + v602, 1, v696) == 1)
    {
      sub_1C5625230(v697, &qword_1EC16FEF0, &qword_1C586B090);
      goto LABEL_221;
    }

    goto LABEL_219;
  }

  v606 = v697;
  sub_1C56466CC(v697, v693, &qword_1EC16FEF0, &qword_1C586B090);
  if (v605(v606 + v602, 1, v696) == 1)
  {
    sub_1C5625230(v692, &qword_1EC16FEF0, &qword_1C586B090);
    sub_1C56EC248(v693, type metadata accessor for WebPlacecardBridge.MUUserInteractionAddPhotos);
LABEL_219:
    v393 = &qword_1EC16FCE8;
    v394 = &qword_1C5875EF8;
    v395 = v697;
    goto LABEL_151;
  }

  v607 = v697;
  v608 = v697 + v602;
  v609 = v695;
  sub_1C56EC178(v608, v695, type metadata accessor for WebPlacecardBridge.MUUserInteractionAddPhotos);
  v610 = v693;
  v611 = sub_1C56F05A0(v693, v609);
  sub_1C56EC248(v609, type metadata accessor for WebPlacecardBridge.MUUserInteractionAddPhotos);
  sub_1C5625230(v692, &qword_1EC16FEF0, &qword_1C586B090);
  sub_1C56EC248(v610, type metadata accessor for WebPlacecardBridge.MUUserInteractionAddPhotos);
  sub_1C5625230(v607, &qword_1EC16FEF0, &qword_1C586B090);
  if ((v611 & 1) == 0)
  {
    goto LABEL_100;
  }

LABEL_221:
  v612 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__copyArgument;
  swift_beginAccess();
  v613 = v699;
  sub_1C56466CC(v374 + v612, v699, &qword_1EC16EC20, &qword_1C586B098);
  v614 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__copyArgument;
  v615 = v645;
  swift_beginAccess();
  v616 = *(v698 + 48);
  v617 = v613;
  v618 = v704;
  sub_1C56466CC(v617, v704, &qword_1EC16EC20, &qword_1C586B098);
  sub_1C56466CC(v615 + v614, v618 + v616, &qword_1EC16EC20, &qword_1C586B098);
  v619 = *(v701 + 48);
  if (v619(v618, 1, v702) == 1)
  {
    sub_1C5625230(v699, &qword_1EC16EC20, &qword_1C586B098);
    if (v619(v704 + v616, 1, v702) == 1)
    {
      sub_1C5625230(v704, &qword_1EC16EC20, &qword_1C586B098);
      goto LABEL_228;
    }

    goto LABEL_226;
  }

  v620 = v704;
  sub_1C56466CC(v704, v700, &qword_1EC16EC20, &qword_1C586B098);
  if (v619(v620 + v616, 1, v702) == 1)
  {
    sub_1C5625230(v699, &qword_1EC16EC20, &qword_1C586B098);
    sub_1C56EC248(v700, type metadata accessor for WebPlacecardBridge.MUUserInteractionCopy);
LABEL_226:
    v393 = &qword_1EC16FCE0;
    v394 = &qword_1C5875EF0;
    v395 = v704;
    goto LABEL_151;
  }

  v621 = v704;
  v622 = v704 + v616;
  v623 = v703;
  sub_1C56EC178(v622, v703, type metadata accessor for WebPlacecardBridge.MUUserInteractionCopy);
  v624 = v700;
  v625 = sub_1C56F0F18(v700, v623, type metadata accessor for WebPlacecardBridge.MUUserInteractionCopy);
  sub_1C56EC248(v623, type metadata accessor for WebPlacecardBridge.MUUserInteractionCopy);
  sub_1C5625230(v699, &qword_1EC16EC20, &qword_1C586B098);
  sub_1C56EC248(v624, type metadata accessor for WebPlacecardBridge.MUUserInteractionCopy);
  sub_1C5625230(v621, &qword_1EC16EC20, &qword_1C586B098);
  if ((v625 & 1) == 0)
  {
    goto LABEL_100;
  }

LABEL_228:
  v626 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__sendToDeviceArgument;
  swift_beginAccess();
  v627 = v707;
  sub_1C56466CC(v374 + v626, v707, &qword_1EC16EC28, &qword_1C586B0A0);
  v628 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__sendToDeviceArgument;
  v629 = v645;
  swift_beginAccess();
  v630 = *(v705 + 48);
  v631 = v627;
  v632 = v644;
  sub_1C56466CC(v631, v644, &qword_1EC16EC28, &qword_1C586B0A0);
  sub_1C56466CC(v629 + v628, v632 + v630, &qword_1EC16EC28, &qword_1C586B0A0);
  v633 = *(v706 + 48);
  if (v633(v632, 1, v708) == 1)
  {

    sub_1C5625230(v707, &qword_1EC16EC28, &qword_1C586B0A0);
    if (v633(&v644[v630], 1, v708) == 1)
    {
      sub_1C5625230(v644, &qword_1EC16EC28, &qword_1C586B0A0);
      return 1;
    }

    goto LABEL_233;
  }

  v634 = v644;
  sub_1C56466CC(v644, v709, &qword_1EC16EC28, &qword_1C586B0A0);
  if (v633((v634 + v630), 1, v708) == 1)
  {

    sub_1C5625230(v707, &qword_1EC16EC28, &qword_1C586B0A0);
    sub_1C56EC248(v709, type metadata accessor for WebPlacecardBridge.MUUserInteractionSendToDevice);
LABEL_233:
    v635 = &qword_1EC16FCD8;
    v636 = &qword_1C5875EE8;
    v637 = v644;
LABEL_238:
    sub_1C5625230(v637, v635, v636);
    return 0;
  }

  v638 = v643;
  sub_1C56EC178(&v644[v630], v643, type metadata accessor for WebPlacecardBridge.MUUserInteractionSendToDevice);
  if ((sub_1C56EACE4(*v709, *v638) & 1) == 0)
  {

    sub_1C5625230(v707, &qword_1EC16EC28, &qword_1C586B0A0);
    sub_1C56EC248(v643, type metadata accessor for WebPlacecardBridge.MUUserInteractionSendToDevice);
    sub_1C56EC248(v709, type metadata accessor for WebPlacecardBridge.MUUserInteractionSendToDevice);
    v637 = v644;
    v635 = &qword_1EC16EC28;
    v636 = &qword_1C586B0A0;
    goto LABEL_238;
  }

  sub_1C584EFD0();
  sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v639 = v709;
  v640 = v643;
  v641 = sub_1C584F620();

  sub_1C5625230(v707, &qword_1EC16EC28, &qword_1C586B0A0);
  sub_1C56EC248(v640, type metadata accessor for WebPlacecardBridge.MUUserInteractionSendToDevice);
  sub_1C56EC248(v639, type metadata accessor for WebPlacecardBridge.MUUserInteractionSendToDevice);
  sub_1C5625230(v644, &qword_1EC16EC28, &qword_1C586B0A0);
  return (v641 & 1) != 0;
}

uint64_t sub_1C56B7320(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16FB28, type metadata accessor for WebPlacecardBridge.MUUserInteractionAction, &unk_1C586DEB8);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56B73C0(uint64_t a1)
{
  sub_1C56EF190(&qword_1EC16D5F8, type metadata accessor for WebPlacecardBridge.MUUserInteractionAction, &unk_1C586DE40);

  return sub_1C584F160();
}

uint64_t sub_1C56B742C(uint64_t a1, uint64_t a2)
{
  sub_1C56EF190(&qword_1EC16D5F8, type metadata accessor for WebPlacecardBridge.MUUserInteractionAction, &unk_1C586DE40);

  return sub_1C584F170();
}

uint64_t sub_1C56B74AC()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC18FCD8);
  __swift_project_value_buffer(v0, qword_1EC18FCD8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C5867980;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "menu_id";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "bounding_box";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "menu_item";
  *(v11 + 8) = 9;
  *(v11 + 16) = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56B76C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C584F050();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          type metadata accessor for WebPlacecardBridge.MUWebMenuItem(0);
          sub_1C56EF190(&qword_1EC16D838, type metadata accessor for WebPlacecardBridge.MUWebMenuItem, &unk_1C586E570);
          sub_1C584F0F0();
          break;
        case 2:
          type metadata accessor for WebPlacecardBridge.MUWebMenuButton(0);
          type metadata accessor for WebPlacecardBridge.MUWebMenuButtonBoundingBox(0);
          sub_1C56EF190(&qword_1EC16D598, type metadata accessor for WebPlacecardBridge.MUWebMenuButtonBoundingBox, &unk_1C586E868);
          sub_1C584F100();
          break;
        case 1:
          type metadata accessor for WebPlacecardBridge.MUWebMenuButton(0);
          sub_1C584F0D0();
          break;
      }

      result = sub_1C584F050();
    }
  }

  return result;
}

uint64_t sub_1C56B7858(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for WebPlacecardBridge.MUWebMenuButton(0);
  if (*(v3 + *(result + 24) + 8))
  {
    result = sub_1C584F1F0();
    if (v4)
    {
      return result;
    }
  }

  else if (v4)
  {
    return result;
  }

  sub_1C56B8058(v3, a1, a2, a3, type metadata accessor for WebPlacecardBridge.MUWebMenuButton, 2);
  if (*(*v3 + 16))
  {
    type metadata accessor for WebPlacecardBridge.MUWebMenuItem(0);
    sub_1C56EF190(&qword_1EC16D838, type metadata accessor for WebPlacecardBridge.MUWebMenuItem, &unk_1C586E570);
    sub_1C584F210();
  }

  return sub_1C584EFB0();
}

uint64_t sub_1C56B79A8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = MEMORY[0x1E69E7CC0];
  sub_1C584EFC0();
  v4 = *(a1 + 24);
  v5 = *(a1 + 28);
  v6 = &a2[v4];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = type metadata accessor for WebPlacecardBridge.MUWebMenuButtonBoundingBox(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(&a2[v5], 1, 1, v7);
}

uint64_t sub_1C56B7A88(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16FB20, type metadata accessor for WebPlacecardBridge.MUWebMenuButton, &unk_1C586E020);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56B7B28(uint64_t a1)
{
  sub_1C56EF190(&qword_1EC16D7D0, type metadata accessor for WebPlacecardBridge.MUWebMenuButton, &unk_1C586DFA8);

  return sub_1C584F160();
}

uint64_t sub_1C56B7B94(uint64_t a1, uint64_t a2)
{
  sub_1C56EF190(&qword_1EC16D7D0, type metadata accessor for WebPlacecardBridge.MUWebMenuButton, &unk_1C586DFA8);

  return sub_1C584F170();
}

uint64_t sub_1C56B7C14()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC18FCF0);
  __swift_project_value_buffer(v0, qword_1EC18FCF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C5867980;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "view_id";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "text";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "bounding_box";
  *(v11 + 8) = 12;
  *(v11 + 16) = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56B7E30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C584F050();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 3)
      {
        type metadata accessor for WebPlacecardBridge.MUWebTextSelectionViewArgument(0);
        type metadata accessor for WebPlacecardBridge.MUWebMenuButtonBoundingBox(0);
        sub_1C56EF190(&qword_1EC16D598, type metadata accessor for WebPlacecardBridge.MUWebMenuButtonBoundingBox, &unk_1C586E868);
        sub_1C584F100();
      }

      else if (result == 2 || result == 1)
      {
        type metadata accessor for WebPlacecardBridge.MUWebTextSelectionViewArgument(0);
        sub_1C584F0D0();
      }

      result = sub_1C584F050();
    }
  }

  return result;
}

uint64_t sub_1C56B7F68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for WebPlacecardBridge.MUWebTextSelectionViewArgument(0);
  v10 = result;
  if (*(v5 + *(result + 20) + 8))
  {
    result = sub_1C584F1F0();
    if (v4)
    {
      return result;
    }
  }

  else if (v4)
  {
    return result;
  }

  if (*(v5 + *(v10 + 24) + 8))
  {
    sub_1C584F1F0();
  }

  sub_1C56B8058(v5, a1, a2, a3, type metadata accessor for WebPlacecardBridge.MUWebTextSelectionViewArgument, 3);
  return sub_1C584EFB0();
}

uint64_t sub_1C56B8058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  v19[2] = a6;
  v19[3] = a3;
  v19[5] = a4;
  v19[1] = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC30, &qword_1C586B0A8);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = v19 - v10;
  v12 = type metadata accessor for WebPlacecardBridge.MUWebMenuButtonBoundingBox(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a5(0);
  sub_1C56466CC(a1 + *(v17 + 28), v11, &qword_1EC16EC30, &qword_1C586B0A8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_1C5625230(v11, &qword_1EC16EC30, &qword_1C586B0A8);
  }

  sub_1C56EC178(v11, v16, type metadata accessor for WebPlacecardBridge.MUWebMenuButtonBoundingBox);
  sub_1C56EF190(&qword_1EC16D598, type metadata accessor for WebPlacecardBridge.MUWebMenuButtonBoundingBox, &unk_1C586E868);
  sub_1C584F220();
  return sub_1C56EC248(v16, type metadata accessor for WebPlacecardBridge.MUWebMenuButtonBoundingBox);
}

uint64_t sub_1C56B827C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C584EFC0();
  v4 = a1[6];
  v5 = (a2 + a1[5]);
  *v5 = 0;
  v5[1] = 0;
  v6 = (a2 + v4);
  *v6 = 0;
  v6[1] = 0;
  v7 = a1[7];
  v8 = type metadata accessor for WebPlacecardBridge.MUWebMenuButtonBoundingBox(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(a2 + v7, 1, 1, v8);
}

uint64_t sub_1C56B8354(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16FB18, type metadata accessor for WebPlacecardBridge.MUWebTextSelectionViewArgument, &unk_1C586E188);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56B83F4(uint64_t a1)
{
  sub_1C56EF190(&qword_1EC16F388, type metadata accessor for WebPlacecardBridge.MUWebTextSelectionViewArgument, &unk_1C586E110);

  return sub_1C584F160();
}

uint64_t sub_1C56B8460(uint64_t a1, uint64_t a2)
{
  sub_1C56EF190(&qword_1EC16F388, type metadata accessor for WebPlacecardBridge.MUWebTextSelectionViewArgument, &unk_1C586E110);

  return sub_1C584F170();
}

uint64_t sub_1C56B84E0()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC18FD08);
  __swift_project_value_buffer(v0, qword_1EC18FD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1C586AE60;
  v4 = v18 + v3 + v1[14];
  *(v18 + v3) = 1;
  *v4 = "title";
  *(v4 + 8) = 5;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1C584F230();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v18 + v3 + v2 + v1[14];
  *(v18 + v3 + v2) = 2;
  *v8 = "symbol_name";
  *(v8 + 8) = 11;
  *(v8 + 16) = 2;
  v7();
  v9 = (v18 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "interaction_type";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v7();
  v11 = (v18 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "user_interaction";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v7();
  v13 = (v18 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "menu_item";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v7();
  v15 = (v18 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "item_id";
  *(v16 + 1) = 7;
  v16[16] = 2;
  v7();
  return sub_1C584F240();
}