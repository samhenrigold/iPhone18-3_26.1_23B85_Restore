uint64_t SFAirDropReceive.Transfer.receiveID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SFAirDropReceive.Transfer(0) + 20);
  v4 = sub_1A99762C0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SFAirDropReceive.Transfer.displayPriority.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SFAirDropReceive.Transfer(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t SFAirDropReceive.Transfer.fileInfo.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for SFAirDropReceive.Transfer(0) + 40));
}

uint64_t SFAirDropReceive.Transfer.startDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SFAirDropReceive.Transfer(0) + 44);
  v4 = sub_1A9976230();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SFAirDropReceive.Transfer.activeInterfaceType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SFAirDropReceive.Transfer(0);
  *a1 = *(v1 + *(result + 60));
  return result;
}

uint64_t SFAirDropReceive.Transfer.init(receiveID:startDate:state:displayPriority:askRequest:isPreviewSensitive:askResponse:didAutoAccept:cancelAction:activeInterfaceType:presenter:networkMetrics:fileInfo:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, char *a11, uint64_t a12, uint64_t a13, uint64_t *a14)
{
  v20 = *a4;
  v28 = *a11;
  v30 = *a14;
  sub_1A97C36C8(a12, a9, type metadata accessor for SFAirDropClient.Identifier);
  v21 = type metadata accessor for SFAirDropReceive.Transfer(0);
  v22 = v21[5];
  v23 = sub_1A99762C0();
  (*(*(v23 - 8) + 32))(a9 + v22, a1, v23);
  v24 = v21[11];
  v25 = sub_1A9976230();
  (*(*(v25 - 8) + 32))(a9 + v24, a2, v25);
  sub_1A97C36C8(a3, a9 + v21[6], type metadata accessor for SFAirDropReceive.Transfer.State);
  *(a9 + v21[7]) = v20;
  sub_1A97C36C8(a5, a9 + v21[8], type metadata accessor for SFAirDropReceive.AskRequest);
  sub_1A97D8380(a7, a9 + v21[9], &qword_1EB3B1AE0, &qword_1A9992BA0);
  *(a9 + v21[12]) = a6;
  *(a9 + v21[13]) = a8;
  sub_1A97D8380(a10, a9 + v21[14], &qword_1EB3B1AE8, &qword_1A9992BA8);
  *(a9 + v21[15]) = v28;
  result = sub_1A97C36C8(a13, a9 + v21[16], type metadata accessor for SFAirDrop.NetworkMetrics);
  *(a9 + v21[10]) = v30;
  return result;
}

uint64_t SFAirDropReceive.Transfer.update(state:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for SFAirDropReceive.Transfer.State(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SFAirDropReceive.Transfer(0);
  if (*(v2 + v8[13]))
  {
    v9 = 1;
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    v9 = _s7Sharing16SFAirDropReceiveO8TransferV5StateO2eeoiySbAG_AGtFZ_0(a1, v7);
    sub_1A97C2220(v7, type metadata accessor for SFAirDropReceive.Transfer.State);
  }

  v10 = v8[5];
  v11 = sub_1A99762C0();
  (*(*(v11 - 8) + 16))(a2 + v10, v2 + v10, v11);
  v12 = v8[11];
  v13 = sub_1A9976230();
  (*(*(v13 - 8) + 16))(a2 + v12, v2 + v12, v13);
  sub_1A97D82C0(a1, a2 + v8[6], type metadata accessor for SFAirDropReceive.Transfer.State);
  v14 = *(v2 + v8[7]);
  sub_1A97D82C0(v2 + v8[8], a2 + v8[8], type metadata accessor for SFAirDropReceive.AskRequest);
  LOBYTE(v12) = *(v2 + v8[12]);
  sub_1A97C13A4(v2 + v8[9], a2 + v8[9], &qword_1EB3B1AE0, &qword_1A9992BA0);
  sub_1A97C13A4(v2 + v8[14], a2 + v8[14], &qword_1EB3B1AE8, &qword_1A9992BA8);
  v15 = *(v2 + v8[15]);
  sub_1A97D82C0(v2, a2, type metadata accessor for SFAirDropClient.Identifier);
  sub_1A97D82C0(v2 + v8[16], a2 + v8[16], type metadata accessor for SFAirDrop.NetworkMetrics);
  v16 = *(v2 + v8[10]);
  *(a2 + v8[7]) = v14;
  *(a2 + v8[12]) = v12;
  *(a2 + v8[13]) = v9 & 1;
  *(a2 + v8[15]) = v15;
  *(a2 + v8[10]) = v16;
}

uint64_t SFAirDropReceive.Transfer.update(fileInfo:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *a1;
  v6 = type metadata accessor for SFAirDropReceive.Transfer(0);
  v7 = v6[5];
  v8 = sub_1A99762C0();
  (*(*(v8 - 8) + 16))(a2 + v7, v3 + v7, v8);
  v9 = v6[11];
  v10 = sub_1A9976230();
  (*(*(v10 - 8) + 16))(a2 + v9, v3 + v9, v10);
  sub_1A97D82C0(v3 + v6[6], a2 + v6[6], type metadata accessor for SFAirDropReceive.Transfer.State);
  LOBYTE(v9) = *(v3 + v6[7]);
  sub_1A97D82C0(v3 + v6[8], a2 + v6[8], type metadata accessor for SFAirDropReceive.AskRequest);
  v11 = *(v3 + v6[12]);
  sub_1A97C13A4(v3 + v6[9], a2 + v6[9], &qword_1EB3B1AE0, &qword_1A9992BA0);
  v12 = *(v3 + v6[13]);
  sub_1A97C13A4(v3 + v6[14], a2 + v6[14], &qword_1EB3B1AE8, &qword_1A9992BA8);
  v13 = *(v3 + v6[15]);
  sub_1A97D82C0(v3, a2, type metadata accessor for SFAirDropClient.Identifier);
  sub_1A97D82C0(v3 + v6[16], a2 + v6[16], type metadata accessor for SFAirDrop.NetworkMetrics);
  *(a2 + v6[7]) = v9;
  *(a2 + v6[12]) = v11;
  *(a2 + v6[13]) = v12;
  *(a2 + v6[15]) = v13;
  *(a2 + v6[10]) = v5;
}

uint64_t SFAirDropReceive.Transfer.update(displayPriority:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = type metadata accessor for SFAirDropReceive.Transfer(0);
  v6 = v5[5];
  v7 = sub_1A99762C0();
  (*(*(v7 - 8) + 16))(a2 + v6, v2 + v6, v7);
  v8 = v5[11];
  v9 = sub_1A9976230();
  (*(*(v9 - 8) + 16))(a2 + v8, v2 + v8, v9);
  sub_1A97D82C0(v2 + v5[6], a2 + v5[6], type metadata accessor for SFAirDropReceive.Transfer.State);
  sub_1A97D82C0(v2 + v5[8], a2 + v5[8], type metadata accessor for SFAirDropReceive.AskRequest);
  LOBYTE(v8) = *(v2 + v5[12]);
  sub_1A97C13A4(v2 + v5[9], a2 + v5[9], &qword_1EB3B1AE0, &qword_1A9992BA0);
  v10 = *(v2 + v5[13]);
  sub_1A97C13A4(v2 + v5[14], a2 + v5[14], &qword_1EB3B1AE8, &qword_1A9992BA8);
  v11 = *(v2 + v5[15]);
  sub_1A97D82C0(v2, a2, type metadata accessor for SFAirDropClient.Identifier);
  sub_1A97D82C0(v2 + v5[16], a2 + v5[16], type metadata accessor for SFAirDrop.NetworkMetrics);
  v12 = *(v2 + v5[10]);
  *(a2 + v5[7]) = v4;
  *(a2 + v5[12]) = v8;
  *(a2 + v5[13]) = v10;
  *(a2 + v5[15]) = v11;
  *(a2 + v5[10]) = v12;
}

uint64_t SFAirDropReceive.Transfer.update(cancelAction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for SFAirDropReceive.Transfer(0);
  v7 = v6[5];
  v8 = sub_1A99762C0();
  (*(*(v8 - 8) + 16))(a2 + v7, v3 + v7, v8);
  v9 = v6[11];
  v10 = sub_1A9976230();
  (*(*(v10 - 8) + 16))(a2 + v9, v3 + v9, v10);
  sub_1A97D82C0(v3 + v6[6], a2 + v6[6], type metadata accessor for SFAirDropReceive.Transfer.State);
  LOBYTE(v9) = *(v3 + v6[7]);
  sub_1A97D82C0(v3 + v6[8], a2 + v6[8], type metadata accessor for SFAirDropReceive.AskRequest);
  v11 = *(v3 + v6[12]);
  sub_1A97C13A4(v3 + v6[9], a2 + v6[9], &qword_1EB3B1AE0, &qword_1A9992BA0);
  v12 = v6[14];
  v13 = *(v3 + v6[13]);
  sub_1A97D82C0(a1, a2 + v12, type metadata accessor for SFAirDrop.DeclineAction);
  v14 = type metadata accessor for SFAirDrop.DeclineAction(0);
  (*(*(v14 - 8) + 56))(a2 + v12, 0, 1, v14);
  LOBYTE(a1) = *(v3 + v6[15]);
  sub_1A97D82C0(v3, a2, type metadata accessor for SFAirDropClient.Identifier);
  sub_1A97D82C0(v3 + v6[16], a2 + v6[16], type metadata accessor for SFAirDrop.NetworkMetrics);
  v15 = *(v3 + v6[10]);
  *(a2 + v6[7]) = v9;
  *(a2 + v6[12]) = v11;
  *(a2 + v6[13]) = v13;
  *(a2 + v6[15]) = a1;
  *(a2 + v6[10]) = v15;
}

uint64_t SFAirDropReceive.Transfer.update(activeInterfaceType:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = type metadata accessor for SFAirDropReceive.Transfer(0);
  v6 = v5[5];
  v7 = sub_1A99762C0();
  (*(*(v7 - 8) + 16))(a2 + v6, v2 + v6, v7);
  v8 = v5[11];
  v9 = sub_1A9976230();
  (*(*(v9 - 8) + 16))(a2 + v8, v2 + v8, v9);
  sub_1A97D82C0(v2 + v5[6], a2 + v5[6], type metadata accessor for SFAirDropReceive.Transfer.State);
  LOBYTE(v8) = *(v2 + v5[7]);
  sub_1A97D82C0(v2 + v5[8], a2 + v5[8], type metadata accessor for SFAirDropReceive.AskRequest);
  v10 = *(v2 + v5[12]);
  sub_1A97C13A4(v2 + v5[9], a2 + v5[9], &qword_1EB3B1AE0, &qword_1A9992BA0);
  v11 = *(v2 + v5[13]);
  sub_1A97C13A4(v2 + v5[14], a2 + v5[14], &qword_1EB3B1AE8, &qword_1A9992BA8);
  sub_1A97D82C0(v2, a2, type metadata accessor for SFAirDropClient.Identifier);
  sub_1A97D82C0(v2 + v5[16], a2 + v5[16], type metadata accessor for SFAirDrop.NetworkMetrics);
  v12 = *(v2 + v5[10]);
  *(a2 + v5[7]) = v8;
  *(a2 + v5[12]) = v10;
  *(a2 + v5[13]) = v11;
  *(a2 + v5[15]) = v4;
  *(a2 + v5[10]) = v12;
}

uint64_t SFAirDropReceive.Transfer.update(askResponse:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for SFAirDropReceive.Transfer.State(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SFAirDropReceive.AskResponse(0);
  v10 = (*(*(v9 - 8) + 48))(a1, 1, v9);
  v11 = type metadata accessor for SFAirDropReceive.Transfer(0);
  if (v10 == 1)
  {
    sub_1A97D82C0(v3 + v11[6], v8, type metadata accessor for SFAirDropReceive.Transfer.State);
  }

  else
  {
    SFAirDropReceive.Transfer.State.answeredPermissionRequest()(v8);
  }

  type metadata accessor for SFAirDropReceive.Transfer(0);
  v12 = v11[5];
  v13 = sub_1A99762C0();
  (*(*(v13 - 8) + 16))(a2 + v12, v3 + v12, v13);
  v14 = v11[11];
  v15 = sub_1A9976230();
  (*(*(v15 - 8) + 16))(a2 + v14, v3 + v14, v15);
  v16 = *(v3 + v11[7]);
  sub_1A97D82C0(v3 + v11[8], a2 + v11[8], type metadata accessor for SFAirDropReceive.AskRequest);
  v17 = *(v3 + v11[12]);
  sub_1A97C13A4(a1, a2 + v11[9], &qword_1EB3B1AE0, &qword_1A9992BA0);
  v18 = *(v3 + v11[13]);
  sub_1A97C13A4(v3 + v11[14], a2 + v11[14], &qword_1EB3B1AE8, &qword_1A9992BA8);
  v19 = *(v3 + v11[15]);
  sub_1A97D82C0(v3, a2, type metadata accessor for SFAirDropClient.Identifier);
  sub_1A97D82C0(v3 + v11[16], a2 + v11[16], type metadata accessor for SFAirDrop.NetworkMetrics);
  v20 = *(v3 + v11[10]);
  sub_1A97C36C8(v8, a2 + v11[6], type metadata accessor for SFAirDropReceive.Transfer.State);
  *(a2 + v11[7]) = v16;
  *(a2 + v11[12]) = v17;
  *(a2 + v11[13]) = v18;
  *(a2 + v11[15]) = v19;
  *(a2 + v11[10]) = v20;
}

uint64_t SFAirDropReceive.Transfer.State.answeredPermissionRequest()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17A8, &unk_1A9999470);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v15 - v5;
  v7 = type metadata accessor for SFAirDropReceive.Transfer.State(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A97D82C0(v2, v9, type metadata accessor for SFAirDropReceive.Transfer.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2 && EnumCaseMultiPayload)
  {
    sub_1A97D82C0(v2, a1, type metadata accessor for SFAirDropReceive.Transfer.State);
    return sub_1A97C2220(v9, type metadata accessor for SFAirDropReceive.Transfer.State);
  }

  else
  {
    sub_1A97D8380(v9, v6, &qword_1EB3B17A8, &unk_1A9999470);
    v11 = sub_1A99762C0();
    (*(*(v11 - 8) + 32))(a1, v6, v11);
    v12 = v4[14];
    v13 = sub_1A9976230();
    (*(*(v13 - 8) + 32))(a1 + v12, &v6[v12], v13);
    sub_1A97D8380(&v6[v4[15]], a1 + v4[15], &qword_1EB3B17F0, &qword_1A9992A00);
    sub_1A97D8380(&v6[v4[16]], a1 + v4[16], &qword_1EB3B1AF0, &qword_1A9992BB0);
    *(a1 + v4[13]) = 1;
    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t SFAirDropReceive.Transfer.update(networkMetrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for SFAirDropReceive.Transfer(0);
  v7 = v6[5];
  v8 = sub_1A99762C0();
  (*(*(v8 - 8) + 16))(a2 + v7, v3 + v7, v8);
  v9 = v6[11];
  v10 = sub_1A9976230();
  (*(*(v10 - 8) + 16))(a2 + v9, v3 + v9, v10);
  sub_1A97D82C0(v3 + v6[6], a2 + v6[6], type metadata accessor for SFAirDropReceive.Transfer.State);
  LOBYTE(v9) = *(v3 + v6[7]);
  sub_1A97D82C0(v3 + v6[8], a2 + v6[8], type metadata accessor for SFAirDropReceive.AskRequest);
  v11 = *(v3 + v6[12]);
  sub_1A97C13A4(v3 + v6[9], a2 + v6[9], &qword_1EB3B1AE0, &qword_1A9992BA0);
  v12 = *(v3 + v6[13]);
  sub_1A97C13A4(v3 + v6[14], a2 + v6[14], &qword_1EB3B1AE8, &qword_1A9992BA8);
  v13 = *(v3 + v6[15]);
  sub_1A97D82C0(v3, a2, type metadata accessor for SFAirDropClient.Identifier);
  sub_1A97D82C0(a1, a2 + v6[16], type metadata accessor for SFAirDrop.NetworkMetrics);
  v14 = *(v3 + v6[10]);
  *(a2 + v6[7]) = v9;
  *(a2 + v6[12]) = v11;
  *(a2 + v6[13]) = v12;
  *(a2 + v6[15]) = v13;
  *(a2 + v6[10]) = v14;
}

unint64_t sub_1A97D0E94(char a1)
{
  result = 0x65746E6573657270;
  switch(a1)
  {
    case 1:
      result = 0x4965766965636572;
      break;
    case 2:
      result = 0x6574617473;
      break;
    case 3:
      result = 0x5079616C70736964;
      break;
    case 4:
      result = 0x65757165526B7361;
      break;
    case 5:
      result = 0x6F707365526B7361;
      break;
    case 6:
      result = 0x6F666E49656C6966;
      break;
    case 7:
      result = 0x7461447472617473;
      break;
    case 8:
      result = 0xD000000000000012;
      break;
    case 9:
      result = 0x416F747541646964;
      break;
    case 10:
      result = 0x63416C65636E6163;
      break;
    case 11:
      result = 0xD000000000000013;
      break;
    case 12:
      result = 0x4D6B726F7774656ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1A97D1044@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A97DC4C4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A97D1078(uint64_t a1)
{
  v2 = sub_1A97D83E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A97D10B4(uint64_t a1)
{
  v2 = sub_1A97D83E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFAirDropReceive.Transfer.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1AF8, &qword_1A9992BB8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A97D83E8();
  sub_1A9977AA0();
  LOBYTE(v11) = 0;
  type metadata accessor for SFAirDropClient.Identifier(0);
  sub_1A97D7900(&qword_1EB3B1B08, type metadata accessor for SFAirDropClient.Identifier, &protocol conformance descriptor for SFAirDropClient.Identifier);
  sub_1A99776E0();
  if (!v2)
  {
    v9 = type metadata accessor for SFAirDropReceive.Transfer(0);
    LOBYTE(v11) = 1;
    sub_1A99762C0();
    sub_1A97D7900(&unk_1EB3ACFC0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
    sub_1A99776E0();
    LOBYTE(v11) = 2;
    type metadata accessor for SFAirDropReceive.Transfer.State(0);
    sub_1A97D7900(&qword_1EB3B1B10, type metadata accessor for SFAirDropReceive.Transfer.State, &protocol conformance descriptor for SFAirDropReceive.Transfer.State);
    sub_1A99776E0();
    LOBYTE(v11) = *(v3 + v9[7]);
    v12 = 3;
    sub_1A97D843C();
    sub_1A99776E0();
    LOBYTE(v11) = 4;
    type metadata accessor for SFAirDropReceive.AskRequest(0);
    sub_1A97D7900(&qword_1EB3B1B20, type metadata accessor for SFAirDropReceive.AskRequest, &protocol conformance descriptor for SFAirDropReceive.AskRequest);
    sub_1A99776E0();
    LOBYTE(v11) = 5;
    type metadata accessor for SFAirDropReceive.AskResponse(0);
    sub_1A97D7900(&qword_1EB3B1B28, type metadata accessor for SFAirDropReceive.AskResponse, &protocol conformance descriptor for SFAirDropReceive.AskResponse);
    sub_1A9977680();
    v11 = *(v3 + v9[10]);
    v12 = 6;
    sub_1A97D8490();

    sub_1A9977680();

    LOBYTE(v11) = 7;
    sub_1A9976230();
    sub_1A97D7900(&qword_1EB3B0C58, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    sub_1A99776E0();
    LOBYTE(v11) = 8;
    sub_1A99776A0();
    LOBYTE(v11) = 9;
    sub_1A99776A0();
    LOBYTE(v11) = 10;
    type metadata accessor for SFAirDrop.DeclineAction(0);
    sub_1A97D7900(&qword_1EB3B1998, type metadata accessor for SFAirDrop.DeclineAction, &protocol conformance descriptor for SFAirDrop.DeclineAction);
    sub_1A9977680();
    LOBYTE(v11) = *(v3 + v9[15]);
    v12 = 11;
    sub_1A97D84E4();
    sub_1A9977680();
    LOBYTE(v11) = 12;
    type metadata accessor for SFAirDrop.NetworkMetrics(0);
    sub_1A97D7900(&qword_1EB3B1B40, type metadata accessor for SFAirDrop.NetworkMetrics, &protocol conformance descriptor for SFAirDrop.NetworkMetrics);
    sub_1A99776E0();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t SFAirDropReceive.Transfer.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v38 = type metadata accessor for SFAirDrop.NetworkMetrics(0);
  MEMORY[0x1EEE9AC00](v38);
  v39 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1AE8, &qword_1A9992BA8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v40 = &v34 - v5;
  v6 = sub_1A9976230();
  v45 = *(v6 - 8);
  v46 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v41 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1AE0, &qword_1A9992BA0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v42 = &v34 - v9;
  v44 = type metadata accessor for SFAirDropReceive.AskRequest(0);
  MEMORY[0x1EEE9AC00](v44);
  v43 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for SFAirDropReceive.Transfer.State(0);
  MEMORY[0x1EEE9AC00](v51);
  v49 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A99762C0();
  v47 = *(v12 - 8);
  v48 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SFAirDropClient.Identifier(0);
  MEMORY[0x1EEE9AC00](v15);
  v50 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1B48, &qword_1A9992BC0);
  v52 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v18 = &v34 - v17;
  v19 = type metadata accessor for SFAirDropReceive.Transfer(0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A97D83E8();
  v53 = v18;
  v22 = v55;
  sub_1A9977A70();
  if (v22)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v23 = v49;
  v36 = v19;
  v55 = a1;
  v35 = v21;
  LOBYTE(v56) = 0;
  sub_1A97D7900(&qword_1EB3B1B50, type metadata accessor for SFAirDropClient.Identifier, &protocol conformance descriptor for SFAirDropClient.Identifier);
  v24 = v50;
  sub_1A99775F0();
  v25 = v35;
  sub_1A97C36C8(v24, v35, type metadata accessor for SFAirDropClient.Identifier);
  LOBYTE(v56) = 1;
  sub_1A97D7900(&qword_1EB3AD060, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  v26 = v48;
  sub_1A99775F0();
  v27 = v36;
  (*(v47 + 32))(v25 + v36[5], v14, v26);
  LOBYTE(v56) = 2;
  sub_1A97D7900(&qword_1EB3B1B58, type metadata accessor for SFAirDropReceive.Transfer.State, &protocol conformance descriptor for SFAirDropReceive.Transfer.State);
  v51 = 0;
  sub_1A99775F0();
  sub_1A97C36C8(v23, v25 + v27[6], type metadata accessor for SFAirDropReceive.Transfer.State);
  v57 = 3;
  sub_1A97D8538();
  sub_1A99775F0();
  *(v25 + v27[7]) = v56;
  LOBYTE(v56) = 4;
  sub_1A97D7900(&qword_1EB3B1B68, type metadata accessor for SFAirDropReceive.AskRequest, &protocol conformance descriptor for SFAirDropReceive.AskRequest);
  v28 = v43;
  sub_1A99775F0();
  sub_1A97C36C8(v28, v25 + v27[8], type metadata accessor for SFAirDropReceive.AskRequest);
  type metadata accessor for SFAirDropReceive.AskResponse(0);
  LOBYTE(v56) = 5;
  sub_1A97D7900(&qword_1EB3B1B70, type metadata accessor for SFAirDropReceive.AskResponse, &protocol conformance descriptor for SFAirDropReceive.AskResponse);
  v29 = v42;
  sub_1A9977590();
  sub_1A97D8380(v29, v25 + v27[9], &qword_1EB3B1AE0, &qword_1A9992BA0);
  v57 = 6;
  sub_1A97D858C();
  sub_1A9977590();
  *(v25 + v27[10]) = v56;
  LOBYTE(v56) = 7;
  sub_1A97D7900(&qword_1EB3B0CE0, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  v30 = v41;
  v31 = v46;
  sub_1A99775F0();
  (*(v45 + 32))(v25 + v27[11], v30, v31);
  LOBYTE(v56) = 8;
  *(v25 + v36[12]) = sub_1A99775B0() & 1;
  LOBYTE(v56) = 9;
  v35[v36[13]] = sub_1A99775B0() & 1;
  type metadata accessor for SFAirDrop.DeclineAction(0);
  LOBYTE(v56) = 10;
  sub_1A97D7900(&qword_1EB3B1AD0, type metadata accessor for SFAirDrop.DeclineAction, &protocol conformance descriptor for SFAirDrop.DeclineAction);
  sub_1A9977590();
  sub_1A97D8380(v40, &v35[v36[14]], &qword_1EB3B1AE8, &qword_1A9992BA8);
  v57 = 11;
  sub_1A97D85E0();
  sub_1A9977590();
  v35[v36[15]] = v56;
  LOBYTE(v56) = 12;
  sub_1A97D7900(&qword_1EB3B1B88, type metadata accessor for SFAirDrop.NetworkMetrics, &protocol conformance descriptor for SFAirDrop.NetworkMetrics);
  sub_1A99775F0();
  (*(v52 + 8))(v53, v54);
  v32 = v35;
  sub_1A97C36C8(v39, &v35[v36[16]], type metadata accessor for SFAirDrop.NetworkMetrics);
  sub_1A97D82C0(v32, v37, type metadata accessor for SFAirDropReceive.Transfer);
  __swift_destroy_boxed_opaque_existential_0Tm(v55);
  return sub_1A97C2220(v32, type metadata accessor for SFAirDropReceive.Transfer);
}

BOOL SFAirDropReceive.Transfer.State.completedSuccessfully.getter()
{
  v1 = type metadata accessor for SFAirDropReceive.Transfer.State(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A97D82C0(v0, v3, type metadata accessor for SFAirDropReceive.Transfer.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = type metadata accessor for SFAirDropReceive.Transfer.State;
  if (EnumCaseMultiPayload == 15)
  {
    v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1788, &qword_1A9992998) + 48);

    sub_1A97C2220(&v3[v6], type metadata accessor for SFAirDropReceive.ItemDestination);
    v5 = type metadata accessor for SFAirDropReceive.Transfer.Metrics;
  }

  sub_1A97C2220(v3, v5);
  return EnumCaseMultiPayload == 15;
}

BOOL SFAirDropReceive.Transfer.State.sameCase(as:)(void *a1)
{
  v144 = a1;
  v1 = type metadata accessor for SFAirDropReceive.Transfer.State(0);
  v2 = MEMORY[0x1EEE9AC00](v1);
  v138 = (&v129 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = MEMORY[0x1EEE9AC00](v2);
  v139 = &v129 - v5;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v142 = &v129 - v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v137 = &v129 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v141 = (&v129 - v11);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v133 = &v129 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v140 = (&v129 - v15);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v130 = &v129 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v136 = &v129 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v134 = &v129 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v135 = &v129 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v132 = &v129 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v129 - v27;
  v29 = MEMORY[0x1EEE9AC00](v26);
  v129 = &v129 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v33 = &v129 - v32;
  v34 = MEMORY[0x1EEE9AC00](v31);
  v131 = &v129 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v38 = &v129 - v37;
  v39 = MEMORY[0x1EEE9AC00](v36);
  v41 = (&v129 - v40);
  v42 = MEMORY[0x1EEE9AC00](v39);
  v44 = &v129 - v43;
  v45 = MEMORY[0x1EEE9AC00](v42);
  v47 = &v129 - v46;
  v48 = MEMORY[0x1EEE9AC00](v45);
  v50 = &v129 - v49;
  v51 = MEMORY[0x1EEE9AC00](v48);
  v53 = &v129 - v52;
  MEMORY[0x1EEE9AC00](v51);
  v55 = &v129 - v54;
  sub_1A97D82C0(v144, &v129 - v54, type metadata accessor for SFAirDropReceive.Transfer.State);
  v144 = v55;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v66 = v144;
      v99 = v144[4];
      v100 = v144[5];
      v101 = v144[7];
      v102 = v144[8];

      sub_1A97B4368(v99, v100);
      sub_1A97B43C4(v101, v102);
      v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17E0, &unk_1A99929F0);
      v72 = *(v103 + 48);
      sub_1A97D82C0(v143, v41, type metadata accessor for SFAirDropReceive.Transfer.State);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_42;
      }

      goto LABEL_30;
    case 2u:
      sub_1A97D82C0(v143, v38, type metadata accessor for SFAirDropReceive.Transfer.State);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v78 = &qword_1EB3B17A8;
        v79 = &unk_1A9999470;
        sub_1A97B06FC(v38, &qword_1EB3B17A8, &unk_1A9999470);
        v89 = v144;
        goto LABEL_32;
      }

      v56 = v38;
      goto LABEL_62;
    case 3u:
      v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17D8, &qword_1A99929E8);
      v63 = v144;
      sub_1A97C2280(*(v144 + *(v94 + 48)), *(v144 + *(v94 + 48) + 8), *(v144 + *(v94 + 48) + 16));

      v58 = *(v94 + 80);
      v91 = v131;
      sub_1A97D82C0(v143, v131, type metadata accessor for SFAirDropReceive.Transfer.State);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        sub_1A97C2280(*(v91 + *(v94 + 48)), *(v91 + *(v94 + 48) + 8), *(v91 + *(v94 + 48) + 16));

        v95 = *(v94 + 80);
        v61 = type metadata accessor for SFAirDrop.DeclineAction;
        sub_1A97C2220(v91 + v95, type metadata accessor for SFAirDrop.DeclineAction);
        v93 = type metadata accessor for SFAirDropReceive.ItemDestination;
        goto LABEL_24;
      }

      sub_1A97C2220(v91, type metadata accessor for SFAirDropReceive.Transfer.State);
      sub_1A97C2220(v63 + v58, type metadata accessor for SFAirDrop.DeclineAction);
      v127 = type metadata accessor for SFAirDropReceive.ItemDestination;
      goto LABEL_65;
    case 4u:
      v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17D0, &qword_1A99929E0);
      v81 = v144;

      v82 = *(v80 + 80);
      sub_1A97D82C0(v143, v33, type metadata accessor for SFAirDropReceive.Transfer.State);
      if (swift_getEnumCaseMultiPayload() == 4)
      {

        sub_1A97C2220(&v33[*(v80 + 80)], type metadata accessor for SFAirDrop.DeclineAction);
        v62 = type metadata accessor for SFAirDropReceive.ItemDestination;
        sub_1A97C2220(v33, type metadata accessor for SFAirDropReceive.ItemDestination);
        sub_1A97C2220(v81 + v82, type metadata accessor for SFAirDrop.DeclineAction);
        v83 = v81;
        goto LABEL_26;
      }

      sub_1A97C2220(v33, type metadata accessor for SFAirDropReceive.Transfer.State);
      sub_1A97C2220(v81 + v82, type metadata accessor for SFAirDrop.DeclineAction);
      goto LABEL_60;
    case 5u:
      v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17C8, &qword_1A99929D8);
      v81 = v144;

      v87 = *(v112 + 64);
      v88 = v129;
      sub_1A97D82C0(v143, v129, type metadata accessor for SFAirDropReceive.Transfer.State);
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_53;
      }

      goto LABEL_44;
    case 6u:
      v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17C8, &qword_1A99929D8);
      v81 = v144;

      v87 = *(v112 + 64);
      v88 = v134;
      sub_1A97D82C0(v143, v134, type metadata accessor for SFAirDropReceive.Transfer.State);
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_53;
      }

LABEL_44:

      v122 = *(v112 + 64);
      goto LABEL_51;
    case 7u:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17C0, &qword_1A99929D0);
      v97 = v144;

      sub_1A97D82C0(v143, v28, type metadata accessor for SFAirDropReceive.Transfer.State);
      if (swift_getEnumCaseMultiPayload() == 7)
      {

        v98 = v28;
        goto LABEL_48;
      }

      v128 = v28;
      goto LABEL_70;
    case 8u:
      v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17B8, &qword_1A99929C8);
      v81 = v144;

      v87 = *(v86 + 80);
      v88 = v132;
      sub_1A97D82C0(v143, v132, type metadata accessor for SFAirDropReceive.Transfer.State);
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        goto LABEL_50;
      }

      goto LABEL_53;
    case 9u:
      v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17B8, &qword_1A99929C8);
      v81 = v144;

      v87 = *(v86 + 80);
      v88 = v135;
      sub_1A97D82C0(v143, v135, type metadata accessor for SFAirDropReceive.Transfer.State);
      if (swift_getEnumCaseMultiPayload() == 9)
      {
LABEL_50:

        v122 = *(v86 + 80);
LABEL_51:
        sub_1A97B06FC(v88 + v122, &qword_1EB3B17A8, &unk_1A9999470);
        sub_1A97C2220(v88, type metadata accessor for SFAirDropReceive.ItemDestination);
        sub_1A97B06FC(v81 + v87, &qword_1EB3B17A8, &unk_1A9999470);
        v83 = v81;
        v96 = type metadata accessor for SFAirDropReceive.ItemDestination;
        goto LABEL_52;
      }

LABEL_53:
      sub_1A97C2220(v88, type metadata accessor for SFAirDropReceive.Transfer.State);
      sub_1A97B06FC(v81 + v87, &qword_1EB3B17A8, &unk_1A9999470);
LABEL_60:
      v125 = type metadata accessor for SFAirDropReceive.ItemDestination;
      v126 = v81;
      goto LABEL_71;
    case 0xAu:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17B0, &qword_1A99929C0);
      v97 = v144;

      v123 = v136;
      sub_1A97D82C0(v143, v136, type metadata accessor for SFAirDropReceive.Transfer.State);
      if (swift_getEnumCaseMultiPayload() == 10)
      {

        v98 = v123;
LABEL_48:
        sub_1A97C2220(v98, type metadata accessor for SFAirDropReceive.ItemDestination);
        v83 = v97;
        v96 = type metadata accessor for SFAirDropReceive.ItemDestination;
        goto LABEL_52;
      }

      v128 = v123;
LABEL_70:
      sub_1A97C2220(v128, type metadata accessor for SFAirDropReceive.Transfer.State);
      v125 = type metadata accessor for SFAirDropReceive.ItemDestination;
      v126 = v97;
      goto LABEL_71;
    case 0xBu:
      v66 = v144;
      v67 = v144[4];
      v68 = v144[5];
      v69 = v144[7];
      v70 = v144[8];

      sub_1A97B4368(v67, v68);
      sub_1A97B43C4(v69, v70);
      v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17A0, &unk_1A99929B0);
      v72 = *(v71 + 48);
      v41 = v140;
      sub_1A97D82C0(v143, v140, type metadata accessor for SFAirDropReceive.Transfer.State);
      if (swift_getEnumCaseMultiPayload() == 11)
      {
        v73 = v41[4];
        v74 = v41[5];
        v75 = v41[7];
        v76 = v41[8];

        sub_1A97B4368(v73, v74);
        sub_1A97B43C4(v75, v76);
        v77 = *(v71 + 48);
        v78 = &qword_1EB3B17A8;
        v79 = &unk_1A9999470;
        goto LABEL_31;
      }

      sub_1A97C2220(v41, type metadata accessor for SFAirDropReceive.Transfer.State);
      v120 = &qword_1EB3B17A8;
      v121 = &unk_1A9999470;
      goto LABEL_58;
    case 0xCu:
      sub_1A97C2220(v144, type metadata accessor for SFAirDropReceive.Transfer.State);
      v64 = v133;
      sub_1A97D82C0(v143, v133, type metadata accessor for SFAirDropReceive.Transfer.State);
      v65 = swift_getEnumCaseMultiPayload() == 12;
      goto LABEL_12;
    case 0xDu:
      v66 = v144;
      v116 = v144[4];
      v117 = v144[5];
      v118 = v144[7];
      v119 = v144[8];

      sub_1A97B4368(v116, v117);
      sub_1A97B43C4(v118, v119);
      v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1790, &qword_1A99929A0);
      v72 = *(v103 + 48);
      v41 = v141;
      sub_1A97D82C0(v143, v141, type metadata accessor for SFAirDropReceive.Transfer.State);
      if (swift_getEnumCaseMultiPayload() == 13)
      {
LABEL_30:
        v104 = v41[4];
        v105 = v41[5];
        v106 = v41[7];
        v107 = v41[8];

        sub_1A97B4368(v104, v105);
        sub_1A97B43C4(v106, v107);
        v77 = *(v103 + 48);
        v78 = &qword_1EB3B1798;
        v79 = &qword_1A99929A8;
LABEL_31:
        sub_1A97B06FC(v41 + v77, v78, v79);
        v89 = (v66 + v72);
LABEL_32:
        v108 = v78;
        v109 = v79;
        goto LABEL_33;
      }

LABEL_42:
      sub_1A97C2220(v41, type metadata accessor for SFAirDropReceive.Transfer.State);
      v120 = &qword_1EB3B1798;
      v121 = &qword_1A99929A8;
LABEL_58:
      sub_1A97B06FC(v66 + v72, v120, v121);
      return 0;
    case 0xEu:
      sub_1A97C2220(v144, type metadata accessor for SFAirDropReceive.Transfer.State);
      v64 = v137;
      sub_1A97D82C0(v143, v137, type metadata accessor for SFAirDropReceive.Transfer.State);
      v65 = swift_getEnumCaseMultiPayload() == 14;
LABEL_12:
      v84 = v65;
      v85 = v64;
      goto LABEL_37;
    case 0xFu:
      v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1788, &qword_1A9992998);
      v58 = *(v90 + 48);
      v63 = v144;

      v91 = v142;
      sub_1A97D82C0(v143, v142, type metadata accessor for SFAirDropReceive.Transfer.State);
      if (swift_getEnumCaseMultiPayload() == 15)
      {
        v92 = *(v90 + 48);

        v61 = type metadata accessor for SFAirDropReceive.ItemDestination;
        sub_1A97C2220(v91 + v92, type metadata accessor for SFAirDropReceive.ItemDestination);
        v93 = type metadata accessor for SFAirDropReceive.Transfer.Metrics;
LABEL_24:
        v62 = v93;
        sub_1A97C2220(v91, v93);
        goto LABEL_25;
      }

      sub_1A97C2220(v91, type metadata accessor for SFAirDropReceive.Transfer.State);
      sub_1A97C2220(v63 + v58, type metadata accessor for SFAirDropReceive.ItemDestination);
      v127 = type metadata accessor for SFAirDropReceive.Transfer.Metrics;
LABEL_65:
      v125 = v127;
      v126 = v63;
      goto LABEL_71;
    case 0x10u:
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1780, &qword_1A9992990);
      v58 = *(v57 + 48);
      v59 = v139;
      sub_1A97D82C0(v143, v139, type metadata accessor for SFAirDropReceive.Transfer.State);
      if (swift_getEnumCaseMultiPayload() != 16)
      {
        sub_1A97C2220(v59, type metadata accessor for SFAirDropReceive.Transfer.State);
        v111 = v144;
        sub_1A97C2220(v144 + v58, type metadata accessor for SFAirDropReceive.Failure);
        v124 = type metadata accessor for SFAirDropReceive.Transfer.Metrics;
        goto LABEL_68;
      }

      v60 = *(v57 + 48);
      v61 = type metadata accessor for SFAirDropReceive.Failure;
      sub_1A97C2220(v59 + v60, type metadata accessor for SFAirDropReceive.Failure);
      v62 = type metadata accessor for SFAirDropReceive.Transfer.Metrics;
      sub_1A97C2220(v59, type metadata accessor for SFAirDropReceive.Transfer.Metrics);
      v63 = v144;
LABEL_25:
      sub_1A97C2220(v63 + v58, v61);
      v83 = v63;
LABEL_26:
      v96 = v62;
LABEL_52:
      sub_1A97C2220(v83, v96);
      return 1;
    case 0x11u:
      v111 = v138;
      sub_1A97D82C0(v143, v138, type metadata accessor for SFAirDropReceive.Transfer.State);
      if (swift_getEnumCaseMultiPayload() == 17)
      {
        return 1;
      }

      v124 = type metadata accessor for SFAirDropReceive.Transfer.State;
LABEL_68:
      v125 = v124;
      v126 = v111;
LABEL_71:
      sub_1A97C2220(v126, v125);
      return 0;
    case 0x12u:
      sub_1A97D82C0(v143, v53, type metadata accessor for SFAirDropReceive.Transfer.State);
      v114 = swift_getEnumCaseMultiPayload() == 18;
      v115 = v53;
      goto LABEL_55;
    case 0x13u:
      sub_1A97D82C0(v143, v50, type metadata accessor for SFAirDropReceive.Transfer.State);
      v114 = swift_getEnumCaseMultiPayload() == 19;
      v115 = v50;
      goto LABEL_55;
    case 0x14u:
      sub_1A97D82C0(v143, v47, type metadata accessor for SFAirDropReceive.Transfer.State);
      v84 = swift_getEnumCaseMultiPayload() == 20;
      v85 = v47;
LABEL_37:
      sub_1A97C2220(v85, type metadata accessor for SFAirDropReceive.Transfer.State);
      return v84;
    case 0x15u:
      v113 = v130;
      sub_1A97D82C0(v143, v130, type metadata accessor for SFAirDropReceive.Transfer.State);
      v114 = swift_getEnumCaseMultiPayload() == 21;
      v115 = v113;
LABEL_55:
      sub_1A97C2220(v115, type metadata accessor for SFAirDropReceive.Transfer.State);
      return v114;
    default:
      sub_1A97D82C0(v143, v44, type metadata accessor for SFAirDropReceive.Transfer.State);
      if (swift_getEnumCaseMultiPayload())
      {
        v56 = v44;
LABEL_62:
        sub_1A97C2220(v56, type metadata accessor for SFAirDropReceive.Transfer.State);
        sub_1A97B06FC(v144, &qword_1EB3B17A8, &unk_1A9999470);
        return 0;
      }

      else
      {
        sub_1A97B06FC(v44, &qword_1EB3B17A8, &unk_1A9999470);
        v89 = v144;
        v108 = &qword_1EB3B17A8;
        v109 = &unk_1A9999470;
LABEL_33:
        sub_1A97B06FC(v89, v108, v109);
        return 1;
      }
  }
}

uint64_t sub_1A97D3974@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6C6F686563616C70 && a2 == 0xEF734C5255726564)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A99777E0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A97D3A04(uint64_t a1)
{
  v2 = sub_1A97D8634();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A97D3A40(uint64_t a1)
{
  v2 = sub_1A97D8634();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFAirDropReceive.FileInfo.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1B90, &qword_1A9992BC8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A97D8634();

  sub_1A9977AA0();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1908, &qword_1A99A3580);
  sub_1A97D8128(&qword_1EB3B1910, &qword_1EB3B1918, MEMORY[0x1E6968FB8], MEMORY[0x1E69E6300]);
  sub_1A99776E0();

  return (*(v4 + 8))(v6, v3);
}

uint64_t SFAirDropReceive.FileInfo.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1BA0, &unk_1A9992BD0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A97D8634();
  sub_1A9977A70();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1908, &qword_1A99A3580);
    sub_1A97D8128(&qword_1EB3B1AA8, &qword_1EB3B1AB0, MEMORY[0x1E6968FD0], MEMORY[0x1E69E6330]);
    sub_1A99775F0();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t SFAirDropReceive.Transfer.didReceiverAccept.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1AE0, &qword_1A9992BA0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v17 - v2;
  v4 = type metadata accessor for SFAirDropReceive.AskResponse(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v17 - v9;
  v11 = type metadata accessor for SFAirDropReceive.Transfer(0);
  sub_1A97C13A4(v0 + *(v11 + 36), v3, &qword_1EB3B1AE0, &qword_1A9992BA0);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1A97B06FC(v3, &qword_1EB3B1AE0, &qword_1A9992BA0);
  }

  else
  {
    sub_1A97C36C8(v3, v10, type metadata accessor for SFAirDropReceive.AskResponse);
    sub_1A97C36C8(v10, v8, type metadata accessor for SFAirDropReceive.AskResponse);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1BA8, &qword_1A9997320);
    if (!(*(*(v12 - 8) + 48))(v8, 3, v12))
    {
      v14 = &v8[*(v12 + 48)];
      v15 = *(v14 + 1);
      v16 = *(v14 + 2);
      sub_1A97C2220(v8, type metadata accessor for SFAirDropReceive.ItemDestination);
      sub_1A97D8688(v15, v16);
      return 1;
    }

    sub_1A97C2220(v8, type metadata accessor for SFAirDropReceive.AskResponse);
  }

  return 0;
}

uint64_t sub_1A97D4074()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17E8, &unk_1A99A4890);
  MEMORY[0x1EEE9AC00](v1);
  v3 = (v21 - v2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1798, &qword_1A99929A8);
  sub_1A97C13A4(v0 + *(v4 + 60), v3, &qword_1EB3B17E8, &unk_1A99A4890);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {

    v9 = v3[2];
    v10 = v3[3];

    v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17F8, &qword_1A9992A08) + 80);
    strcpy(v21, "prompt: ");
    BYTE1(v21[1]) = 0;
    WORD1(v21[1]) = 0;
    HIDWORD(v21[1]) = -402653184;
    MEMORY[0x1AC5895B0](v9, v10);

    v12 = v21[0];
    v13 = v3 + v11;
LABEL_8:
    sub_1A97C2220(v13, type metadata accessor for SFAirDrop.DeclineAction);
    return v12;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v14 = *v3;
    v15 = v3[1];
    v16 = v3[2];
    v17 = v3[3];

    v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17F8, &qword_1A9992A08) + 80);
    strcpy(v21, "alert: ");
    v21[1] = 0xE700000000000000;
    MEMORY[0x1AC5895B0](v14, v15);

    MEMORY[0x1AC5895B0](23328, 0xE200000000000000);
    MEMORY[0x1AC5895B0](v16, v17);

    MEMORY[0x1AC5895B0](93, 0xE100000000000000);
    v12 = v21[0];
    v13 = v3 + v18;
    goto LABEL_8;
  }

  v6 = *v3;
  v21[0] = 0;
  v21[1] = 0xE000000000000000;
  sub_1A99772B0();

  strcpy(v21, "intervention: ");
  HIBYTE(v21[1]) = -18;
  if (v6)
  {
    if (v6 == 1)
    {
      v7 = 0xE800000000000000;
      v8 = 0x657669656365722ELL;
    }

    else
    {
      v7 = 0xE90000000000006FLL;
      v8 = 0x666E4965726F6D2ELL;
    }
  }

  else
  {
    v7 = 0xE500000000000000;
    v8 = 0x646E65732ELL;
  }

  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1E58, &unk_1A9994A90) + 48);
  MEMORY[0x1AC5895B0](v8, v7);

  v12 = v21[0];
  sub_1A97B06FC(v3 + v19, &qword_1EB3B1E60, &qword_1A99A58E0);
  return v12;
}

uint64_t sub_1A97D4358()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17F0, &qword_1A9992A00);
  MEMORY[0x1EEE9AC00](v1);
  v3 = (v21 - v2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17A8, &unk_1A9999470);
  sub_1A97C13A4(v0 + *(v4 + 60), v3, &qword_1EB3B17F0, &qword_1A9992A00);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {

    v9 = v3[2];
    v10 = v3[3];

    v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1800, &qword_1A9992A10) + 80);
    strcpy(v21, "prompt: ");
    BYTE1(v21[1]) = 0;
    WORD1(v21[1]) = 0;
    HIDWORD(v21[1]) = -402653184;
    MEMORY[0x1AC5895B0](v9, v10);

    v12 = v21[0];
    v13 = v3 + v11;
LABEL_8:
    sub_1A97C2220(v13, type metadata accessor for SFAirDrop.DeclineAction);
    return v12;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v14 = *v3;
    v15 = v3[1];
    v16 = v3[2];
    v17 = v3[3];

    v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1800, &qword_1A9992A10) + 80);
    strcpy(v21, "alert: ");
    v21[1] = 0xE700000000000000;
    MEMORY[0x1AC5895B0](v14, v15);

    MEMORY[0x1AC5895B0](23328, 0xE200000000000000);
    MEMORY[0x1AC5895B0](v16, v17);

    MEMORY[0x1AC5895B0](93, 0xE100000000000000);
    v12 = v21[0];
    v13 = v3 + v18;
    goto LABEL_8;
  }

  v6 = *v3;
  v21[0] = 0;
  v21[1] = 0xE000000000000000;
  sub_1A99772B0();

  strcpy(v21, "intervention: ");
  HIBYTE(v21[1]) = -18;
  if (v6)
  {
    if (v6 == 1)
    {
      v7 = 0xE800000000000000;
      v8 = 0x657669656365722ELL;
    }

    else
    {
      v7 = 0xE90000000000006FLL;
      v8 = 0x666E4965726F6D2ELL;
    }
  }

  else
  {
    v7 = 0xE500000000000000;
    v8 = 0x646E65732ELL;
  }

  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1E48, &qword_1A9994A80) + 48);
  MEMORY[0x1AC5895B0](v8, v7);

  v12 = v21[0];
  sub_1A97B06FC(v3 + v19, &qword_1EB3B1E50, &qword_1A9994A88);
  return v12;
}

uint64_t sub_1A97D463C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1E18, &unk_1A9994A50);
  MEMORY[0x1EEE9AC00](v1);
  v3 = (v21 - v2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1E20, &qword_1A99A4860);
  sub_1A97C13A4(v0 + *(v4 + 60), v3, &qword_1EB3B1E18, &unk_1A9994A50);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {

    v9 = v3[2];
    v10 = v3[3];

    v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1E28, &unk_1A9994A60) + 80);
    strcpy(v21, "prompt: ");
    BYTE1(v21[1]) = 0;
    WORD1(v21[1]) = 0;
    HIDWORD(v21[1]) = -402653184;
    MEMORY[0x1AC5895B0](v9, v10);

    v12 = v21[0];
    v13 = v3 + v11;
LABEL_8:
    sub_1A97C2220(v13, type metadata accessor for SFAirDrop.DeclineAction);
    return v12;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v14 = *v3;
    v15 = v3[1];
    v16 = v3[2];
    v17 = v3[3];

    v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1E28, &unk_1A9994A60) + 80);
    strcpy(v21, "alert: ");
    v21[1] = 0xE700000000000000;
    MEMORY[0x1AC5895B0](v14, v15);

    MEMORY[0x1AC5895B0](23328, 0xE200000000000000);
    MEMORY[0x1AC5895B0](v16, v17);

    MEMORY[0x1AC5895B0](93, 0xE100000000000000);
    v12 = v21[0];
    v13 = v3 + v18;
    goto LABEL_8;
  }

  v6 = *v3;
  v21[0] = 0;
  v21[1] = 0xE000000000000000;
  sub_1A99772B0();

  strcpy(v21, "intervention: ");
  HIBYTE(v21[1]) = -18;
  if (v6)
  {
    if (v6 == 1)
    {
      v7 = 0xE800000000000000;
      v8 = 0x657669656365722ELL;
    }

    else
    {
      v7 = 0xE90000000000006FLL;
      v8 = 0x666E4965726F6D2ELL;
    }
  }

  else
  {
    v7 = 0xE500000000000000;
    v8 = 0x646E65732ELL;
  }

  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1E30, &qword_1A99A5920) + 48);
  MEMORY[0x1AC5895B0](v8, v7);

  v12 = v21[0];
  sub_1A97B06FC(v3 + v19, &qword_1EB3B1E38, &qword_1A9994A70);
  return v12;
}

uint64_t sub_1A97D4920()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1DF0, &qword_1A9994A28);
  MEMORY[0x1EEE9AC00](v1);
  v3 = (v21 - v2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1DF8, &unk_1A9994A30);
  sub_1A97C13A4(v0 + *(v4 + 60), v3, &qword_1EB3B1DF0, &qword_1A9994A28);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {

    v9 = v3[2];
    v10 = v3[3];

    v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1E00, &unk_1A99A48A0) + 80);
    strcpy(v21, "prompt: ");
    BYTE1(v21[1]) = 0;
    WORD1(v21[1]) = 0;
    HIDWORD(v21[1]) = -402653184;
    MEMORY[0x1AC5895B0](v9, v10);

    v12 = v21[0];
    v13 = v3 + v11;
LABEL_8:
    sub_1A97C2220(v13, type metadata accessor for SFAirDrop.DeclineAction);
    return v12;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v14 = *v3;
    v15 = v3[1];
    v16 = v3[2];
    v17 = v3[3];

    v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1E00, &unk_1A99A48A0) + 80);
    strcpy(v21, "alert: ");
    v21[1] = 0xE700000000000000;
    MEMORY[0x1AC5895B0](v14, v15);

    MEMORY[0x1AC5895B0](23328, 0xE200000000000000);
    MEMORY[0x1AC5895B0](v16, v17);

    MEMORY[0x1AC5895B0](93, 0xE100000000000000);
    v12 = v21[0];
    v13 = v3 + v18;
    goto LABEL_8;
  }

  v6 = *v3;
  v21[0] = 0;
  v21[1] = 0xE000000000000000;
  sub_1A99772B0();

  strcpy(v21, "intervention: ");
  HIBYTE(v21[1]) = -18;
  if (v6)
  {
    if (v6 == 1)
    {
      v7 = 0xE800000000000000;
      v8 = 0x657669656365722ELL;
    }

    else
    {
      v7 = 0xE90000000000006FLL;
      v8 = 0x666E4965726F6D2ELL;
    }
  }

  else
  {
    v7 = 0xE500000000000000;
    v8 = 0x646E65732ELL;
  }

  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1E08, &unk_1A9994A40) + 48);
  MEMORY[0x1AC5895B0](v8, v7);

  v12 = v21[0];
  sub_1A97B06FC(v3 + v19, &qword_1EB3B1E10, &qword_1A99A58B0);
  return v12;
}

unint64_t sub_1A97D4C04()
{
  result = qword_1EB3B1810;
  if (!qword_1EB3B1810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1810);
  }

  return result;
}

uint64_t _s7Sharing16SFAirDropReceiveO8TransferV5StateO2eeoiySbAG_AGtFZ_0(uint64_t a1, char *a2)
{
  v430 = a1;
  v431 = a2;
  v2 = type metadata accessor for SFAirDropReceive.Failure(0);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v405 = &v384 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v406 = &v384 - v5;
  v6 = type metadata accessor for SFAirDropReceive.Transfer.Metrics(0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v404 = &v384 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v418 = &v384 - v9;
  v10 = type metadata accessor for SFAirDrop.DeclineAction(0);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v409 = &v384 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v410 = &v384 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v416 = (&v384 - v16);
  MEMORY[0x1EEE9AC00](v15);
  v417 = &v384 - v17;
  v18 = type metadata accessor for SFAirDropReceive.ItemDestination(0);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v411 = &v384 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v412 = &v384 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v400 = &v384 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v408 = &v384 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v407 = &v384 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v397 = &v384 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v402 = &v384 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v401 = &v384 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v403 = &v384 - v36;
  MEMORY[0x1EEE9AC00](v35);
  v415 = &v384 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1798, &qword_1A99929A8);
  v39 = MEMORY[0x1EEE9AC00](v38 - 8);
  v398 = &v384 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x1EEE9AC00](v39);
  v399 = &v384 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v395 = &v384 - v44;
  MEMORY[0x1EEE9AC00](v43);
  v396 = &v384 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17A8, &unk_1A9999470);
  v47 = MEMORY[0x1EEE9AC00](v46 - 8);
  v392 = &v384 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x1EEE9AC00](v47);
  v393 = &v384 - v50;
  v51 = MEMORY[0x1EEE9AC00](v49);
  v394 = &v384 - v52;
  v53 = MEMORY[0x1EEE9AC00](v51);
  v414 = &v384 - v54;
  v55 = MEMORY[0x1EEE9AC00](v53);
  v391 = &v384 - v56;
  v57 = MEMORY[0x1EEE9AC00](v55);
  v413 = &v384 - v58;
  v59 = MEMORY[0x1EEE9AC00](v57);
  v389 = &v384 - v60;
  v61 = MEMORY[0x1EEE9AC00](v59);
  v390 = &v384 - v62;
  v63 = MEMORY[0x1EEE9AC00](v61);
  v387 = &v384 - v64;
  v65 = MEMORY[0x1EEE9AC00](v63);
  v388 = &v384 - v66;
  v67 = MEMORY[0x1EEE9AC00](v65);
  v386 = &v384 - v68;
  MEMORY[0x1EEE9AC00](v67);
  v385 = &v384 - v69;
  v70 = type metadata accessor for SFAirDropReceive.Transfer.State(0);
  v71 = MEMORY[0x1EEE9AC00](v70);
  *&v423 = &v384 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = MEMORY[0x1EEE9AC00](v71);
  v427 = &v384 - v74;
  v75 = MEMORY[0x1EEE9AC00](v73);
  v429 = &v384 - v76;
  v77 = MEMORY[0x1EEE9AC00](v75);
  v428 = &v384 - v78;
  v79 = MEMORY[0x1EEE9AC00](v77);
  v424 = &v384 - v80;
  v81 = MEMORY[0x1EEE9AC00](v79);
  v426 = &v384 - v82;
  v83 = MEMORY[0x1EEE9AC00](v81);
  *&v422 = &v384 - v84;
  v85 = MEMORY[0x1EEE9AC00](v83);
  *(&v422 + 1) = &v384 - v86;
  v87 = MEMORY[0x1EEE9AC00](v85);
  v425 = &v384 - v88;
  v89 = MEMORY[0x1EEE9AC00](v87);
  *(&v423 + 1) = &v384 - v90;
  v91 = MEMORY[0x1EEE9AC00](v89);
  v93 = &v384 - v92;
  v94 = MEMORY[0x1EEE9AC00](v91);
  v420 = &v384 - v95;
  v96 = MEMORY[0x1EEE9AC00](v94);
  v419 = &v384 - v97;
  v98 = MEMORY[0x1EEE9AC00](v96);
  v100 = &v384 - v99;
  v101 = MEMORY[0x1EEE9AC00](v98);
  v421 = &v384 - v102;
  v103 = MEMORY[0x1EEE9AC00](v101);
  v105 = &v384 - v104;
  v106 = MEMORY[0x1EEE9AC00](v103);
  v108 = &v384 - v107;
  MEMORY[0x1EEE9AC00](v106);
  v110 = &v384 - v109;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1E40, &qword_1A9994A78);
  v112 = MEMORY[0x1EEE9AC00](v111 - 8);
  v114 = &v384 - v113;
  v115 = &v384 + *(v112 + 56) - v113;
  sub_1A97D82C0(v430, &v384 - v113, type metadata accessor for SFAirDropReceive.Transfer.State);
  v116 = v431;
  v431 = v115;
  sub_1A97D82C0(v116, v115, type metadata accessor for SFAirDropReceive.Transfer.State);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1A97D82C0(v114, v108, type metadata accessor for SFAirDropReceive.Transfer.State);
      v290 = *(v108 + 3);
      v459 = *(v108 + 2);
      v460 = v290;
      v461 = *(v108 + 8);
      v291 = *(v108 + 1);
      v457 = *v108;
      v458 = v291;
      v292 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17E0, &unk_1A99929F0) + 48);
      v293 = v431;
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v357 = &qword_1EB3B1798;
        v358 = &qword_1A99929A8;
        v362 = &v108[v292];
        goto LABEL_105;
      }

      v294 = *(v293 + 3);
      v454 = *(v293 + 2);
      v455 = v294;
      v456 = *(v293 + 8);
      v295 = *(v293 + 1);
      v452 = *v293;
      v453 = v295;
      v155 = &qword_1EB3B1798;
      v156 = &qword_1A99929A8;
      v296 = v396;
      sub_1A97D8380(&v108[v292], v396, &qword_1EB3B1798, &qword_1A99929A8);
      v297 = &v293[v292];
      v298 = v395;
      sub_1A97D8380(v297, v395, &qword_1EB3B1798, &qword_1A99929A8);
      v449 = v459;
      v450 = v460;
      v451 = v461;
      v447 = v457;
      v448 = v458;
      v444 = v454;
      v445 = v455;
      v446 = v456;
      v442 = v452;
      v443 = v453;
      if (_s7Sharing9SFAirDropO11ContactInfoV2eeoiySbAE_AEtFZ_0(&v447, &v442))
      {
        v127 = sub_1A98E2B64(v296, v298);
        sub_1A97B44F8(&v452);
        sub_1A97B44F8(&v457);
        sub_1A97B06FC(v298, &qword_1EB3B1798, &qword_1A99929A8);
        v213 = v296;
        goto LABEL_67;
      }

      sub_1A97B44F8(&v452);
      sub_1A97B44F8(&v457);
      v149 = &qword_1EB3B1798;
      v150 = &qword_1A99929A8;
      sub_1A97B06FC(v298, &qword_1EB3B1798, &qword_1A99929A8);
      v359 = v296;
      goto LABEL_121;
    case 2u:
      sub_1A97D82C0(v114, v105, type metadata accessor for SFAirDropReceive.Transfer.State);
      v211 = v431;
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v155 = &qword_1EB3B17A8;
        v156 = &unk_1A9999470;
        v212 = v386;
        sub_1A97D8380(v211, v386, &qword_1EB3B17A8, &unk_1A9999470);
        v127 = sub_1A98E27A8(v105, v212);
        sub_1A97B06FC(v212, &qword_1EB3B17A8, &unk_1A9999470);
        v213 = v105;
        goto LABEL_67;
      }

      v118 = v105;
      goto LABEL_94;
    case 3u:
      v384 = v114;
      v245 = v421;
      sub_1A97D82C0(v114, v421, type metadata accessor for SFAirDropReceive.Transfer.State);
      v246 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17D8, &qword_1A99929E8);
      v247 = v246[12];
      v248 = *(v245 + v247);
      v250 = *(v245 + v247 + 16);
      v249 = *(v245 + v247 + 24);
      v429 = *(v245 + v247 + 8);
      v430 = v249;
      v251 = *(v245 + v247 + 32);
      v252 = v246[16];
      v253 = *(v245 + v252 + 8);
      v427 = *(v245 + v252);
      v254 = v246[20];
      v255 = v431;
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        sub_1A97C2220(v245 + v254, type metadata accessor for SFAirDrop.DeclineAction);

        sub_1A97C2280(v248, v429, v250);
        v353 = type metadata accessor for SFAirDropReceive.ItemDestination;
        v354 = v245;
        goto LABEL_98;
      }

      v424 = v248;
      v425 = v250;
      v428 = v251;
      v426 = v253;
      v256 = *(v255 + v247 + 8);
      *&v422 = *(v255 + v247);
      *(&v422 + 1) = v256;
      v257 = *(v255 + v247 + 24);
      *&v423 = *(v255 + v247 + 16);
      *(&v423 + 1) = v257;
      v258 = *(v255 + v247 + 32);
      v260 = *(v255 + v252);
      v259 = *(v255 + v252 + 8);
      v261 = v245;
      v262 = v415;
      sub_1A97C36C8(v255, v415, type metadata accessor for SFAirDropReceive.ItemDestination);
      v263 = v417;
      sub_1A97C36C8(v261 + v254, v417, type metadata accessor for SFAirDrop.DeclineAction);
      v264 = v255 + v254;
      v265 = v262;
      v266 = v416;
      sub_1A97C36C8(v264, v416, type metadata accessor for SFAirDrop.DeclineAction);
      v267 = _s7Sharing16SFAirDropReceiveO15ItemDestinationO2eeoiySbAE_AEtFZ_0(v261, v265);
      sub_1A97C2220(v261, type metadata accessor for SFAirDropReceive.ItemDestination);
      if ((v267 & 1) == 0)
      {
        sub_1A97C2220(v265, type metadata accessor for SFAirDropReceive.ItemDestination);
        sub_1A97C2280(v422, *(&v422 + 1), v423);
        sub_1A97C2280(v424, v429, v425);

        sub_1A97C2220(v266, type metadata accessor for SFAirDrop.DeclineAction);
        v361 = v263;
LABEL_130:
        v360 = type metadata accessor for SFAirDrop.DeclineAction;
        goto LABEL_131;
      }

      v431 = v259;
      v420 = v260;
      v268 = v424;
      v269 = v425;
      v270 = v429;
      *&v457 = v424;
      *(&v457 + 1) = v429;
      *&v458 = v425;
      *(&v458 + 1) = v430;
      *&v459 = v428;
      v271 = v422;
      v452 = v422;
      v272 = v423;
      v453 = v423;
      *&v454 = v258;
      LODWORD(v421) = _s7Sharing9SFAirDropO8ProgressO2eeoiySbAE_AEtFZ_0(&v457, &v452);
      sub_1A97C2280(v271, *(&v271 + 1), v272);
      sub_1A97C2280(v268, v270, v269);
      if ((v421 & 1) == 0)
      {
        sub_1A97C2220(v415, type metadata accessor for SFAirDropReceive.ItemDestination);

        sub_1A97C2220(v416, type metadata accessor for SFAirDrop.DeclineAction);
        v361 = v417;
        goto LABEL_130;
      }

      v273 = v384;
      v274 = v416;
      v275 = v417;
      v276 = v415;
      if (v427 == v420 && v426 == v431)
      {
      }

      else
      {
        v369 = sub_1A99777E0();

        if ((v369 & 1) == 0)
        {
LABEL_142:
          sub_1A97C2220(v276, type metadata accessor for SFAirDropReceive.ItemDestination);
          sub_1A97C2220(v274, type metadata accessor for SFAirDrop.DeclineAction);
          sub_1A97C2220(v275, type metadata accessor for SFAirDrop.DeclineAction);
          goto LABEL_143;
        }
      }

      if ((*v275 != *v274 || *(v275 + 8) != v274[1]) && (sub_1A99777E0() & 1) == 0)
      {
        goto LABEL_142;
      }

      v370 = *(v275 + 24);
      v371 = *(v275 + 32);
      v372 = *(v275 + 40);
      v373 = *(v275 + 48);
      *&v457 = *(v275 + 16);
      *(&v457 + 1) = v370;
      *&v458 = v371;
      *(&v458 + 1) = v372;
      LOBYTE(v459) = v373;
      v374 = v274;
      v375 = v274[2];
      v376 = v274[3];
      v377 = *(v374 + 32);
      v378 = *(v374 + 40);
      v379 = *(v374 + 48);
      *&v452 = v375;
      *(&v452 + 1) = v376;
      *&v453 = v377;
      *(&v453 + 1) = v378;
      LOBYTE(v454) = v379;
      sub_1A97DC908(v457, v370, v371, v372, v373);
      sub_1A97DC908(v375, v376, v377, v378, v379);
      LOBYTE(v375) = _s7Sharing9SFAirDropO19ButtonConfigurationO2eeoiySbAE_AEtFZ_0(&v457, &v452);
      sub_1A97C2220(v276, type metadata accessor for SFAirDropReceive.ItemDestination);
      sub_1A97DC96C(v452, *(&v452 + 1), v453, *(&v453 + 1), v454);
      sub_1A97DC96C(v457, *(&v457 + 1), v458, *(&v458 + 1), v459);
      sub_1A97C2220(v374, type metadata accessor for SFAirDrop.DeclineAction);
      sub_1A97C2220(v275, type metadata accessor for SFAirDrop.DeclineAction);
      if ((v375 & 1) == 0)
      {
LABEL_143:
        v368 = v273;
LABEL_158:
        sub_1A97C2220(v368, type metadata accessor for SFAirDropReceive.Transfer.State);
LABEL_159:
        v127 = 0;
        return v127 & 1;
      }

      v355 = v273;
LABEL_88:
      sub_1A97C2220(v355, type metadata accessor for SFAirDropReceive.Transfer.State);
      v127 = 1;
      return v127 & 1;
    case 4u:
      sub_1A97D82C0(v114, v100, type metadata accessor for SFAirDropReceive.Transfer.State);
      v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17D0, &qword_1A99929E0);
      v158 = v157[12];
      v159 = *&v100[v158];
      v160 = v157[16];
      v161 = *&v100[v160];
      v162 = v157[20];
      v163 = v431;
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        sub_1A97C2220(&v100[v162], type metadata accessor for SFAirDrop.DeclineAction);

        v325 = type metadata accessor for SFAirDropReceive.ItemDestination;
        v326 = v100;
        goto LABEL_109;
      }

      v164 = *(v163 + v158);
      v165 = *(v163 + v160);
      v166 = v403;
      sub_1A97C36C8(v163, v403, type metadata accessor for SFAirDropReceive.ItemDestination);
      v167 = v410;
      sub_1A97C36C8(&v100[v162], v410, type metadata accessor for SFAirDrop.DeclineAction);
      v168 = v163 + v162;
      v169 = v409;
      sub_1A97C36C8(v168, v409, type metadata accessor for SFAirDrop.DeclineAction);
      v170 = _s7Sharing16SFAirDropReceiveO15ItemDestinationO2eeoiySbAE_AEtFZ_0(v100, v166);
      sub_1A97C2220(v100, type metadata accessor for SFAirDropReceive.ItemDestination);
      if (v170)
      {
        v171 = sub_1A99054C0(v159, v164);

        if (v171 & 1) != 0 && v161 == v165 && (*v167 == *v169 && *(v167 + 8) == *(v169 + 8) || (sub_1A99777E0()))
        {
          v172 = *(v167 + 24);
          v173 = *(v167 + 32);
          v174 = *(v167 + 40);
          v175 = *(v167 + 48);
          *&v457 = *(v167 + 16);
          *(&v457 + 1) = v172;
          *&v458 = v173;
          *(&v458 + 1) = v174;
          LOBYTE(v459) = v175;
          v177 = *(v169 + 24);
          v178 = *(v169 + 32);
          v179 = *(v169 + 40);
          v180 = *(v169 + 48);
          *&v452 = *(v169 + 16);
          v176 = v452;
          *(&v452 + 1) = v177;
          *&v453 = v178;
          *(&v453 + 1) = v179;
          LOBYTE(v454) = v180;
          sub_1A97DC908(v457, v172, v173, v174, v175);
          sub_1A97DC908(v176, v177, v178, v179, v180);
          LOBYTE(v176) = _s7Sharing9SFAirDropO19ButtonConfigurationO2eeoiySbAE_AEtFZ_0(&v457, &v452);
          sub_1A97C2220(v166, type metadata accessor for SFAirDropReceive.ItemDestination);
          sub_1A97DC96C(v452, *(&v452 + 1), v453, *(&v453 + 1), v454);
          sub_1A97DC96C(v457, *(&v457 + 1), v458, *(&v458 + 1), v459);
          sub_1A97C2220(v169, type metadata accessor for SFAirDrop.DeclineAction);
          sub_1A97C2220(v167, type metadata accessor for SFAirDrop.DeclineAction);
          if ((v176 & 1) == 0)
          {
            goto LABEL_157;
          }

LABEL_87:
          v355 = v114;
          goto LABEL_88;
        }

        sub_1A97C2220(v166, type metadata accessor for SFAirDropReceive.ItemDestination);
      }

      else
      {
        sub_1A97C2220(v166, type metadata accessor for SFAirDropReceive.ItemDestination);
      }

      sub_1A97C2220(v169, type metadata accessor for SFAirDrop.DeclineAction);
      v366 = v167;
      v365 = type metadata accessor for SFAirDrop.DeclineAction;
      goto LABEL_156;
    case 5u:
      v301 = v419;
      sub_1A97D82C0(v114, v419, type metadata accessor for SFAirDropReceive.Transfer.State);
      v302 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17C8, &qword_1A99929D8);
      v303 = *(v302 + 48);
      v304 = *(v301 + v303);
      v305 = *(v302 + 64);
      v306 = v431;
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_73;
      }

      v430 = *(v306 + v303);
      v307 = v401;
      sub_1A97C36C8(v306, v401, type metadata accessor for SFAirDropReceive.ItemDestination);
      v308 = v388;
      sub_1A97D8380(v301 + v305, v388, &qword_1EB3B17A8, &unk_1A9999470);
      v309 = v306 + v305;
      v310 = v387;
      goto LABEL_70;
    case 6u:
      v301 = v420;
      sub_1A97D82C0(v114, v420, type metadata accessor for SFAirDropReceive.Transfer.State);
      v320 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17C8, &qword_1A99929D8);
      v321 = *(v320 + 48);
      v304 = *(v301 + v321);
      v305 = *(v320 + 64);
      v322 = v431;
      if (swift_getEnumCaseMultiPayload() != 6)
      {
LABEL_73:
        sub_1A97B06FC(v301 + v305, &qword_1EB3B17A8, &unk_1A9999470);

        v325 = type metadata accessor for SFAirDropReceive.ItemDestination;
        v326 = v301;
        goto LABEL_109;
      }

      v430 = *(v322 + v321);
      v307 = v402;
      sub_1A97C36C8(v322, v402, type metadata accessor for SFAirDropReceive.ItemDestination);
      v308 = v390;
      sub_1A97D8380(v301 + v305, v390, &qword_1EB3B17A8, &unk_1A9999470);
      v309 = v322 + v305;
      v310 = v389;
LABEL_70:
      sub_1A97D8380(v309, v310, &qword_1EB3B17A8, &unk_1A9999470);
      v323 = _s7Sharing16SFAirDropReceiveO15ItemDestinationO2eeoiySbAE_AEtFZ_0(v301, v307);
      sub_1A97C2220(v301, type metadata accessor for SFAirDropReceive.ItemDestination);
      if (v323)
      {
        v324 = sub_1A99054C0(v304, v430);

        if (v324)
        {
          v127 = sub_1A98E27A8(v308, v310);
          sub_1A97B06FC(v310, &qword_1EB3B17A8, &unk_1A9999470);
          sub_1A97B06FC(v308, &qword_1EB3B17A8, &unk_1A9999470);
          sub_1A97C2220(v307, type metadata accessor for SFAirDropReceive.ItemDestination);
          goto LABEL_113;
        }

        sub_1A97B06FC(v310, &qword_1EB3B17A8, &unk_1A9999470);
        v363 = v308;
      }

      else
      {

        sub_1A97B06FC(v310, &qword_1EB3B17A8, &unk_1A9999470);
        v363 = v308;
      }

      sub_1A97B06FC(v363, &qword_1EB3B17A8, &unk_1A9999470);
      v365 = type metadata accessor for SFAirDropReceive.ItemDestination;
      v366 = v307;
      goto LABEL_156;
    case 7u:
      sub_1A97D82C0(v114, v93, type metadata accessor for SFAirDropReceive.Transfer.State);
      v277 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17C0, &qword_1A99929D0);
      v278 = *(v277 + 48);
      v279 = *&v93[v278];
      v280 = *(v277 + 64);
      v281 = *&v93[v280];
      v282 = v431;
      if (swift_getEnumCaseMultiPayload() != 7)
      {

        v325 = type metadata accessor for SFAirDropReceive.ItemDestination;
        v326 = v93;
        goto LABEL_109;
      }

      v283 = *&v282[v278];
      v284 = *&v282[v280];
      v285 = v282;
      v286 = v397;
      sub_1A97C36C8(v285, v397, type metadata accessor for SFAirDropReceive.ItemDestination);
      v287 = _s7Sharing16SFAirDropReceiveO15ItemDestinationO2eeoiySbAE_AEtFZ_0(v93, v286);
      sub_1A97C2220(v93, type metadata accessor for SFAirDropReceive.ItemDestination);
      if ((v287 & 1) == 0)
      {
        sub_1A97C2220(v286, type metadata accessor for SFAirDropReceive.ItemDestination);

        goto LABEL_157;
      }

      v288 = sub_1A99054C0(v279, v283);

      sub_1A97C2220(v286, type metadata accessor for SFAirDropReceive.ItemDestination);
      if ((v288 & 1) == 0)
      {
        goto LABEL_157;
      }

      v289 = v281 == v284;
LABEL_54:
      v127 = v289;
      goto LABEL_113;
    case 8u:
      v384 = v114;
      v191 = *(&v423 + 1);
      sub_1A97D82C0(v114, *(&v423 + 1), type metadata accessor for SFAirDropReceive.Transfer.State);
      v339 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17B8, &qword_1A99929C8);
      v340 = v339[12];
      v341 = *(v191 + v340);
      v342 = v339[16];
      v343 = *(v191 + v342);
      v197 = v339[20];
      v344 = v431;
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        goto LABEL_85;
      }

      v345 = *(v344 + v340);
      v429 = *(v344 + v342);
      v430 = v345;
      v346 = v407;
      sub_1A97C36C8(v344, v407, type metadata accessor for SFAirDropReceive.ItemDestination);
      v201 = v413;
      sub_1A97D8380(v191 + v197, v413, &qword_1EB3B17A8, &unk_1A9999470);
      v347 = v344 + v197;
      v203 = v391;
      v204 = v346;
      sub_1A97D8380(v347, v391, &qword_1EB3B17A8, &unk_1A9999470);
      v348 = _s7Sharing16SFAirDropReceiveO15ItemDestinationO2eeoiySbAE_AEtFZ_0(v191, v346);
      sub_1A97C2220(v191, type metadata accessor for SFAirDropReceive.ItemDestination);
      if ((v348 & 1) == 0)
      {
        goto LABEL_100;
      }

      v349 = v429;
      v350 = sub_1A99054C0(v341, v430);

      v208 = v384;
      if ((v350 & 1) == 0)
      {

        sub_1A97B06FC(v203, &qword_1EB3B17A8, &unk_1A9999470);
        v352 = v413;
        goto LABEL_135;
      }

      v351 = sub_1A99054C0(v343, v349);

      v210 = v413;
      if (v351)
      {
        goto LABEL_28;
      }

      goto LABEL_84;
    case 9u:
      v384 = v114;
      v191 = v425;
      sub_1A97D82C0(v114, v425, type metadata accessor for SFAirDropReceive.Transfer.State);
      v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17B8, &qword_1A99929C8);
      v193 = v192[12];
      v194 = *(v191 + v193);
      v195 = v192[16];
      v196 = *(v191 + v195);
      v197 = v192[20];
      v198 = v431;
      if (swift_getEnumCaseMultiPayload() != 9)
      {
LABEL_85:
        sub_1A97B06FC(v191 + v197, &qword_1EB3B17A8, &unk_1A9999470);

        v353 = type metadata accessor for SFAirDropReceive.ItemDestination;
        v354 = v191;
        goto LABEL_98;
      }

      v199 = *(v198 + v193);
      v429 = *(v198 + v195);
      v430 = v199;
      v200 = v408;
      sub_1A97C36C8(v198, v408, type metadata accessor for SFAirDropReceive.ItemDestination);
      v201 = v414;
      sub_1A97D8380(v191 + v197, v414, &qword_1EB3B17A8, &unk_1A9999470);
      v202 = v198 + v197;
      v203 = v394;
      v204 = v200;
      sub_1A97D8380(v202, v394, &qword_1EB3B17A8, &unk_1A9999470);
      v205 = _s7Sharing16SFAirDropReceiveO15ItemDestinationO2eeoiySbAE_AEtFZ_0(v191, v200);
      sub_1A97C2220(v191, type metadata accessor for SFAirDropReceive.ItemDestination);
      if ((v205 & 1) == 0)
      {
LABEL_100:

        sub_1A97B06FC(v203, &qword_1EB3B17A8, &unk_1A9999470);
        sub_1A97B06FC(v201, &qword_1EB3B17A8, &unk_1A9999470);
        v360 = type metadata accessor for SFAirDropReceive.ItemDestination;
        v361 = v204;
        goto LABEL_131;
      }

      v206 = v429;
      v207 = sub_1A99054C0(v194, v430);

      v208 = v384;
      if (v207)
      {
        v209 = sub_1A99054C0(v196, v206);

        v210 = v414;
        if (v209)
        {
LABEL_28:
          v127 = sub_1A98E27A8(v210, v203);
          sub_1A97B06FC(v203, &qword_1EB3B17A8, &unk_1A9999470);
          sub_1A97B06FC(v210, &qword_1EB3B17A8, &unk_1A9999470);
          sub_1A97C2220(v204, type metadata accessor for SFAirDropReceive.ItemDestination);
          sub_1A97C2220(v208, type metadata accessor for SFAirDropReceive.Transfer.State);
          return v127 & 1;
        }

LABEL_84:
        sub_1A97B06FC(v203, &qword_1EB3B17A8, &unk_1A9999470);
        v352 = v210;
      }

      else
      {

        sub_1A97B06FC(v203, &qword_1EB3B17A8, &unk_1A9999470);
        v352 = v414;
      }

LABEL_135:
      sub_1A97B06FC(v352, &qword_1EB3B17A8, &unk_1A9999470);
      sub_1A97C2220(v204, type metadata accessor for SFAirDropReceive.ItemDestination);
      v368 = v208;
      goto LABEL_158;
    case 0xAu:
      v119 = *(&v422 + 1);
      sub_1A97D82C0(v114, *(&v422 + 1), type metadata accessor for SFAirDropReceive.Transfer.State);
      v327 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17B0, &qword_1A99929C0);
      v328 = *(v327 + 48);
      v329 = *(v119 + v328);
      v330 = *(v327 + 64);
      v331 = *(v119 + v330);
      v332 = v431;
      if (swift_getEnumCaseMultiPayload() != 10)
      {

        v356 = type metadata accessor for SFAirDropReceive.ItemDestination;
        goto LABEL_108;
      }

      v333 = *&v332[v328];
      v334 = *&v332[v330];
      v335 = v332;
      v336 = v400;
      sub_1A97C36C8(v335, v400, type metadata accessor for SFAirDropReceive.ItemDestination);
      v337 = _s7Sharing16SFAirDropReceiveO15ItemDestinationO2eeoiySbAE_AEtFZ_0(v119, v336);
      sub_1A97C2220(v119, type metadata accessor for SFAirDropReceive.ItemDestination);
      if (v337)
      {
        v338 = sub_1A99054C0(v329, v333);

        if (v338)
        {
          v127 = sub_1A99054C0(v331, v334);

          sub_1A97C2220(v336, type metadata accessor for SFAirDropReceive.ItemDestination);
          goto LABEL_113;
        }

        sub_1A97C2220(v336, type metadata accessor for SFAirDropReceive.ItemDestination);
      }

      else
      {
        sub_1A97C2220(v336, type metadata accessor for SFAirDropReceive.ItemDestination);
      }

      goto LABEL_157;
    case 0xBu:
      v142 = v422;
      sub_1A97D82C0(v114, v422, type metadata accessor for SFAirDropReceive.Transfer.State);
      v143 = *(v142 + 48);
      v459 = *(v142 + 32);
      v460 = v143;
      v461 = *(v142 + 64);
      v144 = *(v142 + 16);
      v457 = *v142;
      v458 = v144;
      v145 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17A0, &unk_1A99929B0) + 48);
      v146 = v431;
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        v357 = &qword_1EB3B17A8;
        v358 = &unk_1A9999470;
        goto LABEL_104;
      }

      v147 = *(v146 + 3);
      v454 = *(v146 + 2);
      v455 = v147;
      v456 = *(v146 + 8);
      v148 = *(v146 + 1);
      v452 = *v146;
      v453 = v148;
      v149 = &qword_1EB3B17A8;
      v150 = &unk_1A9999470;
      v151 = v142 + v145;
      v152 = v393;
      sub_1A97D8380(v151, v393, &qword_1EB3B17A8, &unk_1A9999470);
      v153 = &v146[v145];
      v154 = v392;
      sub_1A97D8380(v153, v392, &qword_1EB3B17A8, &unk_1A9999470);
      v449 = v459;
      v450 = v460;
      v451 = v461;
      v447 = v457;
      v448 = v458;
      v444 = v454;
      v445 = v455;
      v446 = v456;
      v442 = v452;
      v443 = v453;
      if (!_s7Sharing9SFAirDropO11ContactInfoV2eeoiySbAE_AEtFZ_0(&v447, &v442))
      {
        goto LABEL_95;
      }

      v127 = sub_1A98E27A8(v152, v154);
      sub_1A97B44F8(&v452);
      sub_1A97B44F8(&v457);
      v155 = &qword_1EB3B17A8;
      v156 = &unk_1A9999470;
      goto LABEL_66;
    case 0xCu:
      v181 = v426;
      sub_1A97D82C0(v114, v426, type metadata accessor for SFAirDropReceive.Transfer.State);
      v182 = *(v181 + 48);
      v459 = *(v181 + 32);
      v460 = v182;
      v461 = *(v181 + 64);
      v183 = *(v181 + 16);
      v457 = *v181;
      v458 = v183;
      v184 = v431;
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        goto LABEL_106;
      }

      v185 = *(v184 + 1);
      v186 = *(v184 + 3);
      v454 = *(v184 + 2);
      v455 = v186;
      v187 = *(v184 + 1);
      v452 = *v184;
      v453 = v187;
      v188 = *(v181 + 48);
      v449 = *(v181 + 32);
      v450 = v188;
      v189 = *(v181 + 16);
      v447 = *v181;
      v448 = v189;
      v190 = *(v184 + 3);
      v444 = v454;
      v445 = v190;
      v456 = *(v184 + 8);
      v451 = *(v181 + 64);
      v446 = *(v184 + 8);
      v442 = v452;
      v443 = v185;
      v127 = _s7Sharing9SFAirDropO11ContactInfoV2eeoiySbAE_AEtFZ_0(&v447, &v442);
      sub_1A97B44F8(&v452);
      sub_1A97B44F8(&v457);
      goto LABEL_113;
    case 0xDu:
      v142 = v424;
      sub_1A97D82C0(v114, v424, type metadata accessor for SFAirDropReceive.Transfer.State);
      v311 = *(v142 + 48);
      v459 = *(v142 + 32);
      v460 = v311;
      v461 = *(v142 + 64);
      v312 = *(v142 + 16);
      v457 = *v142;
      v458 = v312;
      v145 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1790, &qword_1A99929A0) + 48);
      v313 = v431;
      if (swift_getEnumCaseMultiPayload() != 13)
      {
        v357 = &qword_1EB3B1798;
        v358 = &qword_1A99929A8;
LABEL_104:
        v362 = v142 + v145;
LABEL_105:
        sub_1A97B06FC(v362, v357, v358);
LABEL_106:
        sub_1A97B44F8(&v457);
        goto LABEL_110;
      }

      v314 = *(v313 + 3);
      v454 = *(v313 + 2);
      v455 = v314;
      v456 = *(v313 + 8);
      v315 = *(v313 + 1);
      v452 = *v313;
      v453 = v315;
      v149 = &qword_1EB3B1798;
      v150 = &qword_1A99929A8;
      v316 = v142 + v145;
      v152 = v399;
      sub_1A97D8380(v316, v399, &qword_1EB3B1798, &qword_1A99929A8);
      v317 = &v313[v145];
      v154 = v398;
      sub_1A97D8380(v317, v398, &qword_1EB3B1798, &qword_1A99929A8);
      v449 = v459;
      v450 = v460;
      v451 = v461;
      v447 = v457;
      v448 = v458;
      v444 = v454;
      v445 = v455;
      v446 = v456;
      v442 = v452;
      v443 = v453;
      if (!_s7Sharing9SFAirDropO11ContactInfoV2eeoiySbAE_AEtFZ_0(&v447, &v442))
      {
LABEL_95:
        sub_1A97B44F8(&v452);
        sub_1A97B44F8(&v457);
        sub_1A97B06FC(v154, v149, v150);
        v359 = v152;
LABEL_121:
        sub_1A97B06FC(v359, v149, v150);
        goto LABEL_157;
      }

      v127 = sub_1A98E2B64(v152, v154);
      sub_1A97B44F8(&v452);
      sub_1A97B44F8(&v457);
      v155 = &qword_1EB3B1798;
      v156 = &qword_1A99929A8;
LABEL_66:
      sub_1A97B06FC(v154, v155, v156);
      v213 = v152;
LABEL_67:
      v318 = v155;
      v319 = v156;
      goto LABEL_112;
    case 0xEu:
      v128 = v428;
      sub_1A97D82C0(v114, v428, type metadata accessor for SFAirDropReceive.Transfer.State);
      v129 = *(v128 + 48);
      v454 = *(v128 + 32);
      v455 = v129;
      v456 = *(v128 + 64);
      v130 = *(v128 + 16);
      v452 = *v128;
      v453 = v130;
      v131 = *(v128 + 88);
      v132 = *(v128 + 120);
      v459 = *(v128 + 104);
      v460 = v132;
      v461 = *(v128 + 136);
      v457 = *(v128 + 72);
      v458 = v131;
      v133 = v431;
      if (swift_getEnumCaseMultiPayload() != 14)
      {
        sub_1A97D7A44(&v457);
        sub_1A97D7A44(&v452);
        goto LABEL_110;
      }

      v134 = *(v133 + 1);
      v135 = *(v133 + 3);
      v444 = *(v133 + 2);
      v445 = v135;
      v136 = *(v133 + 1);
      v442 = *v133;
      v443 = v136;
      v137 = *(v133 + 88);
      v138 = *(v133 + 120);
      v449 = *(v133 + 104);
      v450 = v138;
      v447 = *(v133 + 72);
      v448 = v137;
      v139 = *(v128 + 48);
      v439 = *(v128 + 32);
      v440 = v139;
      v140 = *(v128 + 16);
      v437 = *v128;
      v438 = v140;
      v141 = *(v133 + 3);
      v434 = v444;
      v435 = v141;
      v446 = *(v133 + 8);
      v451 = *(v133 + 17);
      v441 = *(v128 + 64);
      v436 = *(v133 + 8);
      v432 = v442;
      v433 = v134;
      if (_s7Sharing9SFAirDropO14ContactRequestO2eeoiySbAE_AEtFZ_0(&v437, &v432))
      {
        v439 = v459;
        v440 = v460;
        v441 = v461;
        v437 = v457;
        v438 = v458;
        v434 = v449;
        v435 = v450;
        v436 = v451;
        v432 = v447;
        v433 = v448;
        v127 = _s7Sharing9SFAirDropO14ContactRequestO2eeoiySbAE_AEtFZ_0(&v437, &v432);
        sub_1A97D7A44(&v442);
        sub_1A97D7A44(&v452);
        sub_1A97D7A44(&v447);
        sub_1A97D7A44(&v457);
        goto LABEL_113;
      }

      sub_1A97D7A44(&v447);
      sub_1A97D7A44(&v457);
      sub_1A97D7A44(&v442);
      sub_1A97D7A44(&v452);
      goto LABEL_157;
    case 0xFu:
      v384 = v114;
      v214 = v429;
      sub_1A97D82C0(v114, v429, type metadata accessor for SFAirDropReceive.Transfer.State);
      v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1788, &qword_1A9992998);
      v216 = v215[12];
      v217 = v215[16];
      v218 = *(v214 + v217 + 8);
      v427 = *(v214 + v217);
      v428 = v216;
      v430 = v218;
      v219 = v215[20];
      v220 = *(v214 + v219);
      v221 = v215[24];
      v222 = *(v214 + v221);
      v223 = v215[28];
      v224 = *(v214 + v223);
      v225 = v431;
      if (swift_getEnumCaseMultiPayload() != 15)
      {

        sub_1A97C2220(v214 + v428, type metadata accessor for SFAirDropReceive.ItemDestination);
        v353 = type metadata accessor for SFAirDropReceive.Transfer.Metrics;
        v354 = v214;
LABEL_98:
        sub_1A97C2220(v354, v353);
        v114 = v384;
LABEL_110:
        sub_1A97B06FC(v114, &qword_1EB3B1E40, &qword_1A9994A78);
        goto LABEL_159;
      }

      v424 = v224;
      v425 = v222;
      v426 = v220;
      v226 = *(v225 + v217 + 8);
      *&v423 = *(v225 + v217);
      *(&v423 + 1) = v226;
      v227 = *(v225 + v219);
      v228 = *(v225 + v221);
      v229 = *(v225 + v223);
      v230 = v418;
      sub_1A97C36C8(v225, v418, type metadata accessor for SFAirDropReceive.Transfer.Metrics);
      v231 = v428;
      v232 = v412;
      sub_1A97C36C8(v214 + v428, v412, type metadata accessor for SFAirDropReceive.ItemDestination);
      v233 = v225 + v231;
      v234 = v230;
      v235 = v411;
      sub_1A97C36C8(v233, v411, type metadata accessor for SFAirDropReceive.ItemDestination);
      v236 = _s7Sharing16SFAirDropReceiveO8TransferV7MetricsV2eeoiySbAG_AGtFZ_0(v214, v234);
      sub_1A97C2220(v214, type metadata accessor for SFAirDropReceive.Transfer.Metrics);
      if (!v236)
      {

        sub_1A97C2220(v235, type metadata accessor for SFAirDropReceive.ItemDestination);
        sub_1A97C2220(v232, type metadata accessor for SFAirDropReceive.ItemDestination);
        v360 = type metadata accessor for SFAirDropReceive.Transfer.Metrics;
        v361 = v234;
LABEL_131:
        sub_1A97C2220(v361, v360);
        v368 = v384;
        goto LABEL_158;
      }

      v237 = *(&v423 + 1);
      v238 = v227;
      v239 = v229;
      v240 = _s7Sharing16SFAirDropReceiveO15ItemDestinationO2eeoiySbAE_AEtFZ_0(v232, v235);
      v241 = v232;
      v114 = v384;
      if ((v240 & 1) == 0)
      {

        sub_1A97C2220(v235, type metadata accessor for SFAirDropReceive.ItemDestination);
        v367 = v241;
LABEL_155:
        sub_1A97C2220(v367, type metadata accessor for SFAirDropReceive.ItemDestination);
        v365 = type metadata accessor for SFAirDropReceive.Transfer.Metrics;
        v366 = v418;
        goto LABEL_156;
      }

      v242 = v228;
      v243 = v426;
      if (!v430)
      {
        v244 = v424;
        if (v237)
        {

LABEL_154:

          sub_1A97C2220(v235, type metadata accessor for SFAirDropReceive.ItemDestination);
          v367 = v412;
          goto LABEL_155;
        }

        goto LABEL_148;
      }

      v244 = v424;
      if (v237)
      {
        if (v427 == v423 && v430 == v237)
        {

          goto LABEL_148;
        }

        v380 = sub_1A99777E0();
        v114 = v384;

        if (v380)
        {
LABEL_148:
          v381 = sub_1A99054C0(v243, v238);

          if (v381)
          {
            v382 = sub_1A99054C0(v425, v242);

            if (v382)
            {
              v127 = sub_1A99054C0(v244, v239);

              sub_1A97C2220(v235, type metadata accessor for SFAirDropReceive.ItemDestination);
              sub_1A97C2220(v412, type metadata accessor for SFAirDropReceive.ItemDestination);
              sub_1A97C2220(v418, type metadata accessor for SFAirDropReceive.Transfer.Metrics);
              goto LABEL_113;
            }
          }

          else
          {
          }

          goto LABEL_153;
        }
      }

      else
      {
      }

LABEL_153:

      goto LABEL_154;
    case 0x10u:
      v119 = v427;
      sub_1A97D82C0(v114, v427, type metadata accessor for SFAirDropReceive.Transfer.State);
      v120 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1780, &qword_1A9992990) + 48);
      v121 = v431;
      if (swift_getEnumCaseMultiPayload() != 16)
      {
        sub_1A97C2220(v119 + v120, type metadata accessor for SFAirDropReceive.Failure);
        v356 = type metadata accessor for SFAirDropReceive.Transfer.Metrics;
LABEL_108:
        v325 = v356;
        v326 = v119;
LABEL_109:
        sub_1A97C2220(v326, v325);
        goto LABEL_110;
      }

      v122 = v404;
      sub_1A97C36C8(v121, v404, type metadata accessor for SFAirDropReceive.Transfer.Metrics);
      v123 = v406;
      sub_1A97C36C8(v119 + v120, v406, type metadata accessor for SFAirDropReceive.Failure);
      v124 = v121 + v120;
      v125 = v405;
      sub_1A97C36C8(v124, v405, type metadata accessor for SFAirDropReceive.Failure);
      v126 = _s7Sharing16SFAirDropReceiveO8TransferV7MetricsV2eeoiySbAG_AGtFZ_0(v119, v122);
      sub_1A97C2220(v119, type metadata accessor for SFAirDropReceive.Transfer.Metrics);
      if (v126)
      {
        v127 = _s7Sharing16SFAirDropReceiveO7FailureO2eeoiySbAE_AEtFZ_0(v123, v125);
        sub_1A97C2220(v125, type metadata accessor for SFAirDropReceive.Failure);
        sub_1A97C2220(v123, type metadata accessor for SFAirDropReceive.Failure);
        sub_1A97C2220(v122, type metadata accessor for SFAirDropReceive.Transfer.Metrics);
        goto LABEL_113;
      }

      sub_1A97C2220(v125, type metadata accessor for SFAirDropReceive.Failure);
      sub_1A97C2220(v123, type metadata accessor for SFAirDropReceive.Failure);
      v365 = type metadata accessor for SFAirDropReceive.Transfer.Metrics;
      v366 = v122;
LABEL_156:
      sub_1A97C2220(v366, v365);
LABEL_157:
      v368 = v114;
      goto LABEL_158;
    case 0x11u:
      v299 = v423;
      sub_1A97D82C0(v114, v423, type metadata accessor for SFAirDropReceive.Transfer.State);
      v300 = v431;
      if (swift_getEnumCaseMultiPayload() != 17)
      {
        goto LABEL_110;
      }

      v289 = *v299 == *v300;
      goto LABEL_54;
    case 0x12u:
      if (swift_getEnumCaseMultiPayload() != 18)
      {
        goto LABEL_110;
      }

      goto LABEL_87;
    case 0x13u:
      if (swift_getEnumCaseMultiPayload() == 19)
      {
        goto LABEL_87;
      }

      goto LABEL_110;
    case 0x14u:
      if (swift_getEnumCaseMultiPayload() != 20)
      {
        goto LABEL_110;
      }

      goto LABEL_87;
    case 0x15u:
      if (swift_getEnumCaseMultiPayload() != 21)
      {
        goto LABEL_110;
      }

      goto LABEL_87;
    default:
      sub_1A97D82C0(v114, v110, type metadata accessor for SFAirDropReceive.Transfer.State);
      v117 = v431;
      if (swift_getEnumCaseMultiPayload())
      {
        v118 = v110;
LABEL_94:
        sub_1A97B06FC(v118, &qword_1EB3B17A8, &unk_1A9999470);
        goto LABEL_110;
      }

      v364 = v385;
      sub_1A97D8380(v117, v385, &qword_1EB3B17A8, &unk_1A9999470);
      v127 = sub_1A98E27A8(v110, v364);
      sub_1A97B06FC(v364, &qword_1EB3B17A8, &unk_1A9999470);
      v213 = v110;
      v318 = &qword_1EB3B17A8;
      v319 = &unk_1A9999470;
LABEL_112:
      sub_1A97B06FC(v213, v318, v319);
LABEL_113:
      sub_1A97C2220(v114, type metadata accessor for SFAirDropReceive.Transfer.State);
      return v127 & 1;
  }
}

unint64_t sub_1A97D7804()
{
  result = qword_1EB3B18D8;
  if (!qword_1EB3B18D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B18D8);
  }

  return result;
}

unint64_t sub_1A97D7858()
{
  result = qword_1EB3B18E0;
  if (!qword_1EB3B18E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B18E0);
  }

  return result;
}

unint64_t sub_1A97D78AC()
{
  result = qword_1EB3B18E8;
  if (!qword_1EB3B18E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B18E8);
  }

  return result;
}

uint64_t sub_1A97D7900(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1A97D7948()
{
  result = qword_1EB3B1900;
  if (!qword_1EB3B1900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1900);
  }

  return result;
}

unint64_t sub_1A97D799C()
{
  result = qword_1EB3B1920;
  if (!qword_1EB3B1920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1920);
  }

  return result;
}

unint64_t sub_1A97D79F0()
{
  result = qword_1EB3AB970;
  if (!qword_1EB3AB970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3AB970);
  }

  return result;
}

unint64_t sub_1A97D7A98()
{
  result = qword_1EB3B1928;
  if (!qword_1EB3B1928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1928);
  }

  return result;
}

unint64_t sub_1A97D7AEC()
{
  result = qword_1EB3B1930;
  if (!qword_1EB3B1930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1930);
  }

  return result;
}

unint64_t sub_1A97D7B40()
{
  result = qword_1EB3B1940;
  if (!qword_1EB3B1940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1940);
  }

  return result;
}

unint64_t sub_1A97D7B94()
{
  result = qword_1EB3B1948;
  if (!qword_1EB3B1948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1948);
  }

  return result;
}

unint64_t sub_1A97D7BE8()
{
  result = qword_1EB3B1958;
  if (!qword_1EB3B1958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1958);
  }

  return result;
}

unint64_t sub_1A97D7C3C()
{
  result = qword_1EB3B1960;
  if (!qword_1EB3B1960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1960);
  }

  return result;
}

unint64_t sub_1A97D7C90()
{
  result = qword_1EB3B1968;
  if (!qword_1EB3B1968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1968);
  }

  return result;
}

unint64_t sub_1A97D7CE4()
{
  result = qword_1EB3B1970;
  if (!qword_1EB3B1970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1970);
  }

  return result;
}

unint64_t sub_1A97D7D38()
{
  result = qword_1EB3B1978;
  if (!qword_1EB3B1978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1978);
  }

  return result;
}

unint64_t sub_1A97D7D8C()
{
  result = qword_1EB3B1980;
  if (!qword_1EB3B1980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1980);
  }

  return result;
}

unint64_t sub_1A97D7DE0()
{
  result = qword_1EB3B1988;
  if (!qword_1EB3B1988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1988);
  }

  return result;
}

unint64_t sub_1A97D7E34()
{
  result = qword_1EB3B1990;
  if (!qword_1EB3B1990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1990);
  }

  return result;
}

unint64_t sub_1A97D7E88()
{
  result = qword_1EB3B19A0;
  if (!qword_1EB3B19A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B19A0);
  }

  return result;
}

unint64_t sub_1A97D7EDC()
{
  result = qword_1EB3B19A8;
  if (!qword_1EB3B19A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B19A8);
  }

  return result;
}

unint64_t sub_1A97D7F30()
{
  result = qword_1EB3B19B0;
  if (!qword_1EB3B19B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B19B0);
  }

  return result;
}

unint64_t sub_1A97D7F84()
{
  result = qword_1EB3B19B8;
  if (!qword_1EB3B19B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B19B8);
  }

  return result;
}

unint64_t sub_1A97D7FD8()
{
  result = qword_1EB3B19C0;
  if (!qword_1EB3B19C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B19C0);
  }

  return result;
}

unint64_t sub_1A97D802C()
{
  result = qword_1EB3B19C8;
  if (!qword_1EB3B19C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B19C8);
  }

  return result;
}

unint64_t sub_1A97D8080()
{
  result = qword_1EB3B19D0;
  if (!qword_1EB3B19D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B19D0);
  }

  return result;
}

unint64_t sub_1A97D80D4()
{
  result = qword_1EB3B19D8;
  if (!qword_1EB3B19D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B19D8);
  }

  return result;
}

uint64_t sub_1A97D8128(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3B1908, &qword_1A99A3580);
    sub_1A97D7900(a2, MEMORY[0x1E6968FB0], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A97D81C4()
{
  result = qword_1EB3AB968;
  if (!qword_1EB3AB968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3AB968);
  }

  return result;
}

unint64_t sub_1A97D8218()
{
  result = qword_1EB3B1AB8;
  if (!qword_1EB3B1AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1AB8);
  }

  return result;
}

unint64_t sub_1A97D826C()
{
  result = qword_1EB3B1AD8;
  if (!qword_1EB3B1AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1AD8);
  }

  return result;
}

uint64_t sub_1A97D82C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A97D8348(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A97D8380(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_1A97D83E8()
{
  result = qword_1EB3B1B00;
  if (!qword_1EB3B1B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1B00);
  }

  return result;
}

unint64_t sub_1A97D843C()
{
  result = qword_1EB3B1B18;
  if (!qword_1EB3B1B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1B18);
  }

  return result;
}

unint64_t sub_1A97D8490()
{
  result = qword_1EB3B1B30;
  if (!qword_1EB3B1B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1B30);
  }

  return result;
}

unint64_t sub_1A97D84E4()
{
  result = qword_1EB3B1B38;
  if (!qword_1EB3B1B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1B38);
  }

  return result;
}

unint64_t sub_1A97D8538()
{
  result = qword_1EB3B1B60;
  if (!qword_1EB3B1B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1B60);
  }

  return result;
}

unint64_t sub_1A97D858C()
{
  result = qword_1EB3B1B78;
  if (!qword_1EB3B1B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1B78);
  }

  return result;
}

unint64_t sub_1A97D85E0()
{
  result = qword_1EB3B1B80;
  if (!qword_1EB3B1B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1B80);
  }

  return result;
}

unint64_t sub_1A97D8634()
{
  result = qword_1EB3B1B98;
  if (!qword_1EB3B1B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1B98);
  }

  return result;
}

uint64_t sub_1A97D8688(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1A97B43C4(result, a2);
  }

  return result;
}

void sub_1A97D870C(uint64_t a1)
{
  type metadata accessor for SFAirDropClient.Identifier(319);
  if (v1 <= 0x3F)
  {
    sub_1A99762C0();
    if (v2 <= 0x3F)
    {
      type metadata accessor for SFAirDropReceive.Transfer.State(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for SFAirDropReceive.AskRequest(319);
        if (v4 <= 0x3F)
        {
          sub_1A97D88C0(319, &qword_1EB3AC5E0, type metadata accessor for SFAirDropReceive.AskResponse);
          if (v5 <= 0x3F)
          {
            sub_1A97D8914(319, &qword_1EB3AC568, &type metadata for SFAirDropReceive.FileInfo);
            if (v6 <= 0x3F)
            {
              sub_1A9976230();
              if (v7 <= 0x3F)
              {
                sub_1A97D88C0(319, &qword_1EB3AB988, type metadata accessor for SFAirDrop.DeclineAction);
                if (v8 <= 0x3F)
                {
                  sub_1A97D8914(319, &qword_1EB3AC508, &type metadata for SFNWInterfaceType);
                  if (v9 <= 0x3F)
                  {
                    type metadata accessor for SFAirDrop.NetworkMetrics(319);
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

void sub_1A97D88C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A99770A0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A97D8914(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1A99770A0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A97D8960(uint64_t a1)
{
  sub_1A97D8B30();
  if (v1 <= 0x3F)
  {
    sub_1A97D91D4(319, &qword_1EB3ABB28, &qword_1EB3B1798, &qword_1A99929A8, "receiverContact request ");
    if (v2 <= 0x3F)
    {
      sub_1A97D8C7C(319);
      if (v3 <= 0x3F)
      {
        sub_1A97D8D9C(319);
        if (v4 <= 0x3F)
        {
          sub_1A97D8EC4(319);
          if (v5 <= 0x3F)
          {
            sub_1A97D8F68(319);
            if (v6 <= 0x3F)
            {
              sub_1A97D8FF0(319);
              if (v7 <= 0x3F)
              {
                sub_1A97D9120(319);
                if (v8 <= 0x3F)
                {
                  sub_1A97D91D4(319, &qword_1EB3ABB48, &qword_1EB3B17A8, &unk_1A9999470, "senderContact permissionRequest ");
                  if (v9 <= 0x3F)
                  {
                    sub_1A97D91A4();
                    if (v10 <= 0x3F)
                    {
                      sub_1A97D91D4(319, &qword_1EB3ABB30, &qword_1EB3B1798, &qword_1A99929A8, "receiverContact permissionRequest ");
                      if (v11 <= 0x3F)
                      {
                        sub_1A97D9244();
                        if (v12 <= 0x3F)
                        {
                          sub_1A97D92A4(319);
                          if (v13 <= 0x3F)
                          {
                            sub_1A97D9404(319);
                            if (v14 <= 0x3F)
                            {
                              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
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

void sub_1A97D8B30()
{
  if (!qword_1EB3AB7D0[0])
  {
    sub_1A97D8B78(0);
    if (!v1)
    {
      atomic_store(v0, qword_1EB3AB7D0);
    }
  }
}

void sub_1A97D8B78(uint64_t a1)
{
  if (!qword_1EB3AB7C8)
  {
    v4[0] = type metadata accessor for SFAirDropReceive.ItemDestination(255);
    v4[1] = sub_1A97D7900(&qword_1EB3AC590, type metadata accessor for SFAirDropReceive.ItemDestination, &protocol conformance descriptor for SFAirDropReceive.ItemDestination);
    v4[2] = sub_1A97D7900(&qword_1EB3AC5A0, type metadata accessor for SFAirDropReceive.ItemDestination, &protocol conformance descriptor for SFAirDropReceive.ItemDestination);
    v4[3] = sub_1A97D7900(&qword_1EB3AC598, type metadata accessor for SFAirDropReceive.ItemDestination, &protocol conformance descriptor for SFAirDropReceive.ItemDestination);
    v2 = type metadata accessor for SFAirDrop.PermissionRequest(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1EB3AB7C8);
    }
  }
}

void sub_1A97D8C7C(uint64_t a1)
{
  if (!qword_1EB3AC5D8)
  {
    MEMORY[0x1EEE9AC00](a1);
    type metadata accessor for SFAirDropReceive.ItemDestination(255);
    type metadata accessor for SFAirDrop.DeclineAction(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB3AC5D8);
    }
  }
}

void sub_1A97D8D9C(uint64_t a1)
{
  if (!qword_1EB3AC5B0)
  {
    MEMORY[0x1EEE9AC00](a1);
    type metadata accessor for SFAirDropReceive.ItemDestination(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3B1908, &qword_1A99A3580);
    type metadata accessor for SFAirDrop.DeclineAction(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB3AC5B0);
    }
  }
}

void sub_1A97D8EC4(uint64_t a1)
{
  if (!qword_1EB3AC5C8)
  {
    type metadata accessor for SFAirDropReceive.ItemDestination(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3B1908, &qword_1A99A3580);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3B17A8, &unk_1A9999470);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB3AC5C8);
    }
  }
}

void sub_1A97D8F68(uint64_t a1)
{
  if (!qword_1EB3AC5A8)
  {
    type metadata accessor for SFAirDropReceive.ItemDestination(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3B1908, &qword_1A99A3580);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB3AC5A8);
    }
  }
}

void sub_1A97D8FF0(uint64_t a1)
{
  if (!qword_1EB3AC5C0)
  {
    MEMORY[0x1EEE9AC00](a1);
    type metadata accessor for SFAirDropReceive.ItemDestination(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3B1908, &qword_1A99A3580);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3B17A8, &unk_1A9999470);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB3AC5C0);
    }
  }
}

void sub_1A97D9120(uint64_t a1)
{
  if (!qword_1EB3AC5B8)
  {
    type metadata accessor for SFAirDropReceive.ItemDestination(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3B1908, &qword_1A99A3580);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB3AC5B8);
    }
  }
}

ValueMetadata *sub_1A97D91A4()
{
  result = qword_1EB3ABB38;
  if (!qword_1EB3ABB38)
  {
    result = &type metadata for SFAirDrop.ContactInfo;
    atomic_store(&type metadata for SFAirDrop.ContactInfo, &qword_1EB3ABB38);
  }

  return result;
}

void sub_1A97D91D4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1A97D9244()
{
  if (!qword_1EB3AB980)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB3AB980);
    }
  }
}

void sub_1A97D92A4(uint64_t a1)
{
  if (!qword_1EB3AC538)
  {
    MEMORY[0x1EEE9AC00](a1);
    type metadata accessor for SFAirDropReceive.Transfer.Metrics(255);
    type metadata accessor for SFAirDropReceive.ItemDestination(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3B1BB0, &qword_1A9992DD8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3B1908, &qword_1A99A3580);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB3AC538);
    }
  }
}

void sub_1A97D9404(uint64_t a1)
{
  if (!qword_1EB3AC530)
  {
    type metadata accessor for SFAirDropReceive.Transfer.Metrics(255);
    type metadata accessor for SFAirDropReceive.Failure(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB3AC530);
    }
  }
}

uint64_t sub_1A97D9484(uint64_t *a1, int a2)
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

uint64_t sub_1A97D94CC(uint64_t result, int a2, int a3)
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

uint64_t _s8TransferV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s8TransferV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s8TransferV5StateO10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEB)
  {
    goto LABEL_17;
  }

  if (a2 + 21 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 21) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 21;
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

      return (*a1 | (v4 << 8)) - 21;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 21;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x16;
  v8 = v6 - 22;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s8TransferV5StateO10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 21 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 21) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEB)
  {
    v4 = 0;
  }

  if (a2 > 0xEA)
  {
    v5 = ((a2 - 235) >> 8) + 1;
    *result = a2 + 21;
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
    *result = a2 + 21;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SFInterventionWorkflow(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SFInterventionWorkflow(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t _s8TransferV5StateO31CompletedSuccessfullyCodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s8TransferV5StateO31CompletedSuccessfullyCodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1A97D9BAC()
{
  result = qword_1EB3B1BB8;
  if (!qword_1EB3B1BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1BB8);
  }

  return result;
}

unint64_t sub_1A97D9C04()
{
  result = qword_1EB3B1BC0;
  if (!qword_1EB3B1BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1BC0);
  }

  return result;
}

unint64_t sub_1A97D9C5C()
{
  result = qword_1EB3B1BC8;
  if (!qword_1EB3B1BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1BC8);
  }

  return result;
}

unint64_t sub_1A97D9CB4()
{
  result = qword_1EB3B1BD0;
  if (!qword_1EB3B1BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1BD0);
  }

  return result;
}

unint64_t sub_1A97D9D0C()
{
  result = qword_1EB3B1BD8;
  if (!qword_1EB3B1BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1BD8);
  }

  return result;
}

unint64_t sub_1A97D9D64()
{
  result = qword_1EB3B1BE0;
  if (!qword_1EB3B1BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1BE0);
  }

  return result;
}

unint64_t sub_1A97D9DBC()
{
  result = qword_1EB3B1BE8;
  if (!qword_1EB3B1BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1BE8);
  }

  return result;
}

unint64_t sub_1A97D9E14()
{
  result = qword_1EB3B1BF0;
  if (!qword_1EB3B1BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1BF0);
  }

  return result;
}

unint64_t sub_1A97D9E6C()
{
  result = qword_1EB3B1BF8;
  if (!qword_1EB3B1BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1BF8);
  }

  return result;
}

unint64_t sub_1A97D9EC4()
{
  result = qword_1EB3B1C00;
  if (!qword_1EB3B1C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1C00);
  }

  return result;
}

unint64_t sub_1A97D9F1C()
{
  result = qword_1EB3B1C08;
  if (!qword_1EB3B1C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1C08);
  }

  return result;
}

unint64_t sub_1A97D9F74()
{
  result = qword_1EB3B1C10;
  if (!qword_1EB3B1C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1C10);
  }

  return result;
}

unint64_t sub_1A97D9FCC()
{
  result = qword_1EB3B1C18;
  if (!qword_1EB3B1C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1C18);
  }

  return result;
}

unint64_t sub_1A97DA024()
{
  result = qword_1EB3B1C20;
  if (!qword_1EB3B1C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1C20);
  }

  return result;
}

unint64_t sub_1A97DA07C()
{
  result = qword_1EB3B1C28;
  if (!qword_1EB3B1C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1C28);
  }

  return result;
}

unint64_t sub_1A97DA0D4()
{
  result = qword_1EB3B1C30;
  if (!qword_1EB3B1C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1C30);
  }

  return result;
}

unint64_t sub_1A97DA12C()
{
  result = qword_1EB3B1C38;
  if (!qword_1EB3B1C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1C38);
  }

  return result;
}

unint64_t sub_1A97DA184()
{
  result = qword_1EB3B1C40;
  if (!qword_1EB3B1C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1C40);
  }

  return result;
}

unint64_t sub_1A97DA1DC()
{
  result = qword_1EB3B1C48;
  if (!qword_1EB3B1C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1C48);
  }

  return result;
}

unint64_t sub_1A97DA234()
{
  result = qword_1EB3B1C50;
  if (!qword_1EB3B1C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1C50);
  }

  return result;
}

unint64_t sub_1A97DA28C()
{
  result = qword_1EB3B1C58;
  if (!qword_1EB3B1C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1C58);
  }

  return result;
}

unint64_t sub_1A97DA2E4()
{
  result = qword_1EB3B1C60;
  if (!qword_1EB3B1C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1C60);
  }

  return result;
}

unint64_t sub_1A97DA33C()
{
  result = qword_1EB3B1C68;
  if (!qword_1EB3B1C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1C68);
  }

  return result;
}

unint64_t sub_1A97DA394()
{
  result = qword_1EB3B1C70;
  if (!qword_1EB3B1C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1C70);
  }

  return result;
}

unint64_t sub_1A97DA3EC()
{
  result = qword_1EB3B1C78;
  if (!qword_1EB3B1C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1C78);
  }

  return result;
}

unint64_t sub_1A97DA444()
{
  result = qword_1EB3B1C80;
  if (!qword_1EB3B1C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1C80);
  }

  return result;
}

unint64_t sub_1A97DA49C()
{
  result = qword_1EB3B1C88;
  if (!qword_1EB3B1C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1C88);
  }

  return result;
}

unint64_t sub_1A97DA4F4()
{
  result = qword_1EB3B1C90;
  if (!qword_1EB3B1C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1C90);
  }

  return result;
}

unint64_t sub_1A97DA54C()
{
  result = qword_1EB3B1C98;
  if (!qword_1EB3B1C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1C98);
  }

  return result;
}

unint64_t sub_1A97DA5A4()
{
  result = qword_1EB3B1CA0;
  if (!qword_1EB3B1CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1CA0);
  }

  return result;
}

unint64_t sub_1A97DA5FC()
{
  result = qword_1EB3B1CA8;
  if (!qword_1EB3B1CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1CA8);
  }

  return result;
}

unint64_t sub_1A97DA654()
{
  result = qword_1EB3B1CB0;
  if (!qword_1EB3B1CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1CB0);
  }

  return result;
}

unint64_t sub_1A97DA6AC()
{
  result = qword_1EB3B1CB8;
  if (!qword_1EB3B1CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1CB8);
  }

  return result;
}

unint64_t sub_1A97DA704()
{
  result = qword_1EB3B1CC0;
  if (!qword_1EB3B1CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1CC0);
  }

  return result;
}

unint64_t sub_1A97DA75C()
{
  result = qword_1EB3B1CC8;
  if (!qword_1EB3B1CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1CC8);
  }

  return result;
}

unint64_t sub_1A97DA7B4()
{
  result = qword_1EB3B1CD0;
  if (!qword_1EB3B1CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1CD0);
  }

  return result;
}

unint64_t sub_1A97DA80C()
{
  result = qword_1EB3B1CD8;
  if (!qword_1EB3B1CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1CD8);
  }

  return result;
}

unint64_t sub_1A97DA864()
{
  result = qword_1EB3B1CE0;
  if (!qword_1EB3B1CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1CE0);
  }

  return result;
}

unint64_t sub_1A97DA8BC()
{
  result = qword_1EB3B1CE8;
  if (!qword_1EB3B1CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1CE8);
  }

  return result;
}

unint64_t sub_1A97DA914()
{
  result = qword_1EB3B1CF0;
  if (!qword_1EB3B1CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1CF0);
  }

  return result;
}

unint64_t sub_1A97DA96C()
{
  result = qword_1EB3B1CF8;
  if (!qword_1EB3B1CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1CF8);
  }

  return result;
}

unint64_t sub_1A97DA9C4()
{
  result = qword_1EB3B1D00;
  if (!qword_1EB3B1D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1D00);
  }

  return result;
}

unint64_t sub_1A97DAA1C()
{
  result = qword_1EB3B1D08;
  if (!qword_1EB3B1D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1D08);
  }

  return result;
}

unint64_t sub_1A97DAA74()
{
  result = qword_1EB3B1D10;
  if (!qword_1EB3B1D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1D10);
  }

  return result;
}

unint64_t sub_1A97DAACC()
{
  result = qword_1EB3B1D18;
  if (!qword_1EB3B1D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1D18);
  }

  return result;
}

unint64_t sub_1A97DAB24()
{
  result = qword_1EB3B1D20;
  if (!qword_1EB3B1D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1D20);
  }

  return result;
}

unint64_t sub_1A97DAB7C()
{
  result = qword_1EB3B1D28;
  if (!qword_1EB3B1D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1D28);
  }

  return result;
}

unint64_t sub_1A97DABD4()
{
  result = qword_1EB3B1D30;
  if (!qword_1EB3B1D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1D30);
  }

  return result;
}

unint64_t sub_1A97DAC2C()
{
  result = qword_1EB3B1D38;
  if (!qword_1EB3B1D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1D38);
  }

  return result;
}

unint64_t sub_1A97DAC84()
{
  result = qword_1EB3B1D40;
  if (!qword_1EB3B1D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1D40);
  }

  return result;
}

unint64_t sub_1A97DACDC()
{
  result = qword_1EB3B1D48;
  if (!qword_1EB3B1D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1D48);
  }

  return result;
}

unint64_t sub_1A97DAD34()
{
  result = qword_1EB3B1D50;
  if (!qword_1EB3B1D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1D50);
  }

  return result;
}

unint64_t sub_1A97DAD8C()
{
  result = qword_1EB3B1D58;
  if (!qword_1EB3B1D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1D58);
  }

  return result;
}

unint64_t sub_1A97DADE4()
{
  result = qword_1EB3B1D60;
  if (!qword_1EB3B1D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1D60);
  }

  return result;
}

unint64_t sub_1A97DAE3C()
{
  result = qword_1EB3B1D68;
  if (!qword_1EB3B1D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1D68);
  }

  return result;
}

unint64_t sub_1A97DAE94()
{
  result = qword_1EB3B1D70;
  if (!qword_1EB3B1D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1D70);
  }

  return result;
}

unint64_t sub_1A97DAEEC()
{
  result = qword_1EB3B1D78;
  if (!qword_1EB3B1D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1D78);
  }

  return result;
}

unint64_t sub_1A97DAF44()
{
  result = qword_1EB3B1D80;
  if (!qword_1EB3B1D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1D80);
  }

  return result;
}

unint64_t sub_1A97DAF9C()
{
  result = qword_1EB3B1D88;
  if (!qword_1EB3B1D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1D88);
  }

  return result;
}

unint64_t sub_1A97DAFF4()
{
  result = qword_1EB3B1D90;
  if (!qword_1EB3B1D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1D90);
  }

  return result;
}

unint64_t sub_1A97DB04C()
{
  result = qword_1EB3B1D98;
  if (!qword_1EB3B1D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1D98);
  }

  return result;
}

unint64_t sub_1A97DB0A4()
{
  result = qword_1EB3B1DA0;
  if (!qword_1EB3B1DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1DA0);
  }

  return result;
}

unint64_t sub_1A97DB0FC()
{
  result = qword_1EB3B1DA8;
  if (!qword_1EB3B1DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1DA8);
  }

  return result;
}

unint64_t sub_1A97DB154()
{
  result = qword_1EB3B1DB0;
  if (!qword_1EB3B1DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1DB0);
  }

  return result;
}

unint64_t sub_1A97DB1AC()
{
  result = qword_1EB3B1DB8;
  if (!qword_1EB3B1DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1DB8);
  }

  return result;
}

unint64_t sub_1A97DB204()
{
  result = qword_1EB3B1DC0;
  if (!qword_1EB3B1DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1DC0);
  }

  return result;
}

unint64_t sub_1A97DB25C()
{
  result = qword_1EB3B1DC8;
  if (!qword_1EB3B1DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1DC8);
  }

  return result;
}

unint64_t sub_1A97DB2B4()
{
  result = qword_1EB3B1DD0;
  if (!qword_1EB3B1DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1DD0);
  }

  return result;
}

unint64_t sub_1A97DB30C()
{
  result = qword_1EB3B1DD8;
  if (!qword_1EB3B1DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1DD8);
  }

  return result;
}

unint64_t sub_1A97DB364()
{
  result = qword_1EB3B1DE0;
  if (!qword_1EB3B1DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1DE0);
  }

  return result;
}

unint64_t sub_1A97DB3BC()
{
  result = qword_1EB3B1DE8;
  if (!qword_1EB3B1DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1DE8);
  }

  return result;
}

uint64_t sub_1A97DB410(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74616E6974736564 && a2 == 0xEB000000006E6F69;
  if (v4 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726566736E617274 && a2 == 0xEF734C5255646572 || (sub_1A99777E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73736572676F7270 && a2 == 0xE800000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x63416C65636E6163 && a2 == 0xEC0000006E6F6974)
  {

    return 3;
  }

  else
  {
    v6 = sub_1A99777E0();

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

uint64_t sub_1A97DB584(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64657461657263 && a2 == 0xE700000000000000;
  if (v4 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656363416F747561 && a2 == 0xEC00000064657470 || (sub_1A99777E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A99E3910 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001A99E3930 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000028 && 0x80000001A99E3950 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000026 && 0x80000001A99E3980 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x726566736E617274 && a2 == 0xEC000000676E6972 || (sub_1A99777E0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001A99E39B0 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000022 && 0x80000001A99E39D0 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000026 && 0x80000001A99E3A00 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6E6974726F706D69 && a2 == 0xE900000000000067 || (sub_1A99777E0() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001A99E3A30 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000021 && 0x80000001A99E3A50 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x676E696E65706FLL && a2 == 0xE700000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000020 && 0x80000001A99E3A80 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000025 && 0x80000001A99E3AB0 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001A99E3AE0 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000022 && 0x80000001A99E3B00 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001A99E3B30 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001A99E3B50 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x726566736E617274 && a2 == 0xEE0064656C696146 || (sub_1A99777E0() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001A99E3B70 == a2)
  {

    return 21;
  }

  else
  {
    v6 = sub_1A99777E0();

    if (v6)
    {
      return 21;
    }

    else
    {
      return 22;
    }
  }
}

uint64_t sub_1A97DBC50(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7363697274656DLL && a2 == 0xE700000000000000;
  if (v4 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74616E6974736564 && a2 == 0xEB000000006E6F69 || (sub_1A99777E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001A99E3B90 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x726566736E617274 && a2 == 0xEF734C5255646572 || (sub_1A99777E0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x646574726F706D69 && a2 == 0xEC000000734C5255 || (sub_1A99777E0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x525564656E65706FLL && a2 == 0xEA0000000000734CLL)
  {

    return 5;
  }

  else
  {
    v6 = sub_1A99777E0();

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

uint64_t sub_1A97DBE6C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74616E6974736564 && a2 == 0xEB000000006E6F69;
  if (v4 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726566736E617274 && a2 == 0xEF734C5255646572 || (sub_1A99777E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73736572676F7270 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A99777E0();

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

uint64_t sub_1A97DBF90(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74616E6974736564 && a2 == 0xEB000000006E6F69;
  if (v4 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726566736E617274 && a2 == 0xEF734C5255646572 || (sub_1A99777E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646574726F706D69 && a2 == 0xEC000000734C5255)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A99777E0();

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

uint64_t sub_1A97DC0B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74616E6974736564 && a2 == 0xEB000000006E6F69;
  if (v4 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73736572676F7270 && a2 == 0xE800000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001A99E3BD0 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x63416C65636E6163 && a2 == 0xEC0000006E6F6974)
  {

    return 3;
  }

  else
  {
    v6 = sub_1A99777E0();

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

uint64_t sub_1A97DC22C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74616E6974736564 && a2 == 0xEB000000006E6F69;
  if (v4 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726566736E617274 && a2 == 0xEF734C5255646572 || (sub_1A99777E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646574726F706D69 && a2 == 0xEC000000734C5255 || (sub_1A99777E0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74736575716572 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1A99777E0();

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

uint64_t sub_1A97DC3A0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74616E6974736564 && a2 == 0xEB000000006E6F69;
  if (v4 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726566736E617274 && a2 == 0xEF734C5255646572 || (sub_1A99777E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74736575716572 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A99777E0();

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

uint64_t sub_1A97DC4C4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x65746E6573657270 && a2 == 0xE900000000000072 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4965766965636572 && a2 == 0xE900000000000044 || (sub_1A99777E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x5079616C70736964 && a2 == 0xEF797469726F6972 || (sub_1A99777E0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65757165526B7361 && a2 == 0xEA00000000007473 || (sub_1A99777E0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6F707365526B7361 && a2 == 0xEB0000000065736ELL || (sub_1A99777E0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6F666E49656C6966 && a2 == 0xE800000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7461447472617473 && a2 == 0xE900000000000065 || (sub_1A99777E0() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001A99E3BF0 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x416F747541646964 && a2 == 0xED00007470656363 || (sub_1A99777E0() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x63416C65636E6163 && a2 == 0xEC0000006E6F6974 || (sub_1A99777E0() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001A99E3C10 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x4D6B726F7774656ELL && a2 == 0xEE00736369727465)
  {

    return 12;
  }

  else
  {
    v5 = sub_1A99777E0();

    if (v5)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}

void sub_1A97DC908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 < 2u)
  {

LABEL_4:

    return;
  }

  if (a5 == 2)
  {

    goto LABEL_4;
  }
}

void sub_1A97DC96C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 < 2u)
  {

LABEL_4:

    return;
  }

  if (a5 == 2)
  {

    goto LABEL_4;
  }
}

uint64_t sub_1A97DCA10(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 24);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1A9977A20();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v18 - v14;
  (*(v16 + 16))(&v18 - v14, a1, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v15, v9);
    return sub_1A9976B90();
  }

  else
  {
    (*(v4 + 32))(v7, v15, v3);
    return sub_1A9976BA0();
  }
}

uint64_t sub_1A97DCC4C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_1A967C4DC(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v2;
    sub_1A97E2BA4(v9, a2, isUniquelyReferenced_nonNull_native);
    v5 = sub_1A9977460();
    result = (*(*(v5 - 8) + 8))(a2, v5);
    *v2 = v8;
  }

  else
  {
    sub_1A97B06FC(a1, &qword_1EB3B1E80, &qword_1A9994F90);
    sub_1A97E2AC8(a2, v9);
    v7 = sub_1A9977460();
    (*(*(v7 - 8) + 8))(a2, v7);
    return sub_1A97B06FC(v9, &qword_1EB3B1E80, &qword_1A9994F90);
  }

  return result;
}

uint64_t sub_1A97DCD68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    sub_1A97E3308(a1, a2, a3, isUniquelyReferenced_nonNull_native);
    v9 = sub_1A99762C0();
    result = (*(*(v9 - 8) + 8))(a3, v9);
    *v3 = v22;
  }

  else
  {
    v11 = sub_1A97BCE34(a3);
    if (v12)
    {
      v13 = v11;
      v14 = swift_isUniquelyReferenced_nonNull_native();
      v15 = *v3;
      v23 = *v4;
      if (!v14)
      {
        sub_1A9827ADC();
        v15 = v23;
      }

      v16 = *(v15 + 48);
      v17 = sub_1A99762C0();
      v18 = *(v17 - 8);
      v19 = *(v18 + 8);
      v19(v16 + *(v18 + 72) * v13, v17);

      sub_1A98D5EA4(v13, v15);
      result = (v19)(a3, v17);
      *v4 = v15;
    }

    else
    {
      v20 = sub_1A99762C0();
      v21 = *(*(v20 - 8) + 8);

      return v21(a3, v20);
    }
  }

  return result;
}

id _SFXPCAsyncSequenceContainer.__allocating_init(name:containerRegistry:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v29 = &v26 - v7;
  v8 = sub_1A99762C0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v26 - v13;
  v28 = v3;
  v15 = objc_allocWithZone(v3);
  sub_1A99762B0();
  v16 = *(v9 + 16);
  v16(&v15[OBJC_IVAR____SFXPCAsyncSequenceContainer_uuid], v14, v8);
  v17 = &v15[OBJC_IVAR____SFXPCAsyncSequenceContainer_name];
  v26 = a1;
  *v17 = a1;
  v18 = v27;
  *(v17 + 1) = v27;

  *&v15[OBJC_IVAR____SFXPCAsyncSequenceContainer_sequences] = sub_1A97BE618(MEMORY[0x1E69E7CC0]);
  *&v15[OBJC_IVAR____SFXPCAsyncSequenceContainer_containerRegistry] = a3;
  if (a3)
  {
    v19 = sub_1A9976C00();
    (*(*(v19 - 8) + 56))(v29, 1, 1, v19);
    v16(v12, v14, v8);
    v20 = (*(v9 + 80) + 40) & ~*(v9 + 80);
    v21 = (v10 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
    v22 = swift_allocObject();
    *(v22 + 2) = 0;
    *(v22 + 3) = 0;
    *(v22 + 4) = a3;
    (*(v9 + 32))(&v22[v20], v12, v8);
    v23 = &v22[v21];
    *v23 = v26;
    v23[1] = v18;
    swift_retain_n();
    sub_1A97B4F40(0, 0, v29, &unk_1A9999B40, v22);

    (*(v9 + 8))(v14, v8);
  }

  else
  {
    (*(v9 + 8))(v14, v8);
  }

  v30.receiver = v15;
  v30.super_class = v28;
  v24 = objc_msgSendSuper2(&v30, sel_init);

  return v24;
}

uint64_t AsyncSequence<>.xpc.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v5, a1);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return SFXPCAsyncSequence.init<A>(_:)(v12, AssociatedTypeWitness, a1, a3, a4, a2, a5);
}

uint64_t SFXPCAsyncSequence.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v14 = *(a3 - 8);
  v15 = (*(v14 + 80) + 56) & ~*(v14 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = a2;
  *(v16 + 3) = a3;
  *(v16 + 4) = a4;
  *(v16 + 5) = a5;
  *(v16 + 6) = a6;
  result = (*(v14 + 32))(&v16[v15], a1, a3);
  *a7 = sub_1A97E43A8;
  a7[1] = v16;
  return result;
}

uint64_t sub_1A97DD470@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A97A95AC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1A97DD4A8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1A97DD4FC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

void *sub_1A97DD550@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v20 = a5;
  v13 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  v16 = swift_allocBox();
  (*(v13 + 16))(v15, a1, a3);
  sub_1A9976D30();
  result = swift_allocObject();
  result[2] = a2;
  result[3] = a3;
  v18 = v20;
  result[4] = a4;
  result[5] = v18;
  result[6] = a6;
  result[7] = v16;
  *a7 = &unk_1A9994FA0;
  a7[1] = result;
  return result;
}

uint64_t sub_1A97DD6AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a4;
  v7[7] = a7;
  v7[5] = a1;
  v7[8] = swift_getAssociatedTypeWitness();
  v7[9] = swift_projectBox();

  return MEMORY[0x1EEE6DFA0](sub_1A97DD748, 0, 0);
}

uint64_t sub_1A97DD748()
{
  swift_beginAccess();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v2 = swift_task_alloc();
  v0[10] = v2;
  *v2 = v0;
  v2[1] = sub_1A97DD82C;
  v3 = v0[8];
  v4 = v0[5];

  return MEMORY[0x1EEE6D8C8](v4, v3, AssociatedConformanceWitness);
}

uint64_t sub_1A97DD82C()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A97DD968, 0, 0);
  }

  else
  {
    swift_endAccess();
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1A97DD968()
{
  swift_endAccess();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t SFXPCAsyncSequence.encode(to:)(void *a1, void *a2)
{
  v72 = sub_1A99762C0();
  v65 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v71 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B1480, &unk_1A9994AB0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v74 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v76 = &v63 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v78 = &v63 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v63 - v13;
  v85 = sub_1A9977460();
  v89 = *(v85 - 8);
  v15 = MEMORY[0x1EEE9AC00](v85);
  v67 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v73 = &v63 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v77 = &v63 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v63 - v21;
  v23 = a2[2];
  v24 = a2[3];
  v70 = a2;
  v25 = a2[4];
  v69 = v24;
  v68 = v25;
  type metadata accessor for SFXPCAsyncSequence.CodingKeys(255, v23, v24, v25);
  swift_getWitnessTable();
  v83 = sub_1A9977710();
  v81 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v27 = &v63 - v26;
  v28 = v2[1];
  *&v66 = *v2;
  *(&v66 + 1) = v28;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v82 = v27;
  v29 = v89;
  sub_1A9977AA0();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v30 = v85;
  v31 = sub_1A9977A90();
  v75 = "rProtocol>24@_SFXPCError32";
  sub_1A9977450();
  v80 = v29[6];
  result = v80(v14, 1, v30);
  if (result == 1)
  {
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v79 = v29[4];
  v79(v22, v14, v30);
  if (*(v31 + 16) && (v33 = sub_1A97BCD7C(v22), (v34 & 1) != 0))
  {
    sub_1A97AF7EC(*(v31 + 56) + 32 * v33, &v87);
    v35 = v29[1];
    v35(v22, v30);
  }

  else
  {

    v35 = v29[1];
    v35(v22, v30);
    v87 = 0u;
    v88 = 0u;
  }

  v36 = v84;
  v37 = sub_1A97B64E8(&v87, 0, 0, 0xD000000000000054, 0x80000001A99E3C30, 43);
  if (v36)
  {
    sub_1A97B06FC(&v87, &qword_1EB3B0BA0, &unk_1A99923D0);
    return (*(v81 + 8))(v82, v83);
  }

  v64 = v37;
  v84 = v29 + 4;
  sub_1A97B06FC(&v87, &qword_1EB3B0BA0, &unk_1A99923D0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v38 = sub_1A9977A90();
  v63 = "amework/XPC/SFXPCBlock.swift";
  v39 = v78;
  sub_1A9977450();
  v40 = v80;
  result = v80(v39, 1, v30);
  if (result == 1)
  {
    goto LABEL_18;
  }

  v41 = v77;
  v79(v77, v39, v30);
  if (*(v38 + 16) && (v42 = sub_1A97BCD7C(v41), (v43 & 1) != 0))
  {
    sub_1A97AF7EC(*(v38 + 56) + 32 * v42, &v87);
    v35(v41, v30);
  }

  else
  {

    v35(v41, v30);
    v87 = 0u;
    v88 = 0u;
  }

  v78 = sub_1A97B6490(&v87, 0, 0, 0xD000000000000054, 0x80000001A99E3C30, 44);
  sub_1A97B06FC(&v87, &qword_1EB3B0BA0, &unk_1A99923D0);
  sub_1A9975E80();
  swift_allocObject();
  v44 = sub_1A9975E70();
  v45 = v76;
  sub_1A9977450();
  result = v40(v45, 1, v30);
  if (result == 1)
  {
    goto LABEL_19;
  }

  v77 = 0;
  v46 = v73;
  v47 = v79;
  v79(v73, v45, v30);
  *(&v88 + 1) = type metadata accessor for _SFXPCAsyncSequenceContainer(0);
  *&v87 = v64;
  v48 = v64;
  v89 = v44;
  v49 = sub_1A9975E60();
  sub_1A97DCC4C(&v87, v46);
  v49(v86, 0);
  v50 = v74;
  sub_1A9977450();
  result = v80(v50, 1, v30);
  if (result != 1)
  {
    v51 = v67;
    v47(v67, v50, v30);
    *(&v88 + 1) = type metadata accessor for _SFXPCBlockContainer(0);
    *&v87 = v78;
    v52 = v78;
    v53 = sub_1A9975E60();
    sub_1A97DCC4C(&v87, v51);
    v53(v86, 0);
    type metadata accessor for _SFEncodedDataAsyncSequence();
    v87 = v66;

    v54 = v70;
    WitnessTable = swift_getWitnessTable();
    v56 = swift_allocObject();
    sub_1A97E2278(&v87, v54, WitnessTable, v69, v68);
    v57 = v71;
    sub_1A99762B0();
    v58 = OBJC_IVAR____SFXPCAsyncSequenceContainer_sequences;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v86[0] = *&v48[v58];
    *&v48[v58] = 0x8000000000000000;
    sub_1A97E2FC4(v56, v57, isUniquelyReferenced_nonNull_native);
    *&v48[v58] = v86[0];
    swift_endAccess();
    sub_1A97C10E0(&unk_1EB3ACFC0, MEMORY[0x1E69695B0]);
    v60 = v82;
    v61 = v83;
    v62 = v72;
    sub_1A99776E0();

    (*(v65 + 8))(v57, v62);
    return (*(v81 + 8))(v60, v61);
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1A97DE3A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  sub_1A97E2278(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t SFXPCAsyncSequence.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v51 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B1480, &unk_1A9994AB0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v57 = &v44 - v10;
  v11 = sub_1A9977460();
  v54 = *(v11 - 8);
  v55 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v52 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_1A99762C0();
  v53 = *(v58 - 8);
  v13 = *(v53 + 64);
  v14 = MEMORY[0x1EEE9AC00](v58);
  MEMORY[0x1EEE9AC00](v14);
  v59 = &v44 - v15;
  v50 = a2;
  v48 = a3;
  v49 = a4;
  type metadata accessor for SFXPCAsyncSequence.CodingKeys(255, a2, a3, a4);
  swift_getWitnessTable();
  v16 = sub_1A9977630();
  v56 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v44 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v19 = v65;
  sub_1A9977A70();
  if (v19)
  {
    v21 = a1;
    return __swift_destroy_boxed_opaque_existential_0Tm(v21);
  }

  v20 = v57;
  v65 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A97C10E0(&qword_1EB3AD060, MEMORY[0x1E69695D0]);
  sub_1A99775F0();
  v47 = v18;
  v46 = v16;
  v23 = a1[3];
  v45 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  v24 = sub_1A9977A60();
  sub_1A9977450();
  v26 = v54;
  v25 = v55;
  result = (*(v54 + 48))(v20, 1, v55);
  if (result != 1)
  {
    v27 = v52;
    (*(v26 + 32))(v52, v20, v25);
    v28 = *(v24 + 16);
    v57 = v13;
    v29 = v46;
    v30 = v26;
    v31 = v47;
    if (v28)
    {
      v32 = sub_1A97BCD7C(v27);
      v33 = v56;
      if (v34)
      {
        sub_1A97AF7EC(*(v24 + 56) + 32 * v32, &v62);
        (*(v54 + 8))(v27, v55);
      }

      else
      {

        (*(v54 + 8))(v27, v55);
        v62 = 0u;
        v63 = 0u;
      }
    }

    else
    {

      (*(v30 + 8))(v27, v25);
      v62 = 0u;
      v63 = 0u;
      v33 = v56;
    }

    sub_1A97E4448(&v62, &v60);
    v35 = v53;
    v36 = v65;
    if (v61)
    {
      sub_1A97B06FC(&v62, &qword_1EB3B0BA0, &unk_1A99923D0);
      (*(v33 + 8))(v31, v29);
      sub_1A967C4DC(&v60, v64);
      sub_1A967C4DC(v64, &v62);
      v37 = *(v35 + 32);
      v38 = v58;
      v37(v36, v59, v58);
      v39 = (*(v35 + 80) + 72) & ~*(v35 + 80);
      v40 = swift_allocObject();
      v41 = v48;
      *(v40 + 16) = v50;
      *(v40 + 24) = v41;
      *(v40 + 32) = v49;
      sub_1A967C4DC(&v62, (v40 + 40));
      v37((v40 + v39), v36, v38);
      v42 = v51;
      *v51 = sub_1A97E44B8;
      v42[1] = v40;
    }

    else
    {
      sub_1A97B06FC(&v60, &qword_1EB3B0BA0, &unk_1A99923D0);
      sub_1A97BCDE0();
      swift_allocError();
      *v43 = 0xD00000000000001FLL;
      v43[1] = 0x80000001A99E3C90;
      v43[2] = 0xD000000000000054;
      v43[3] = 0x80000001A99E3C30;
      v43[4] = 56;
      v43[10] = 0x2000000000000000;
      swift_willThrow();
      sub_1A97B06FC(&v62, &qword_1EB3B0BA0, &unk_1A99923D0);
      (*(v35 + 8))(v59, v58);
      (*(v33 + 8))(v31, v29);
    }

    v21 = v45;
    return __swift_destroy_boxed_opaque_existential_0Tm(v21);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A97DEAB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  sub_1A97AF7EC(a1, &v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1768, &qword_1A9992958);
  if (swift_dynamicCast())
  {
    v21 = a3;
    v22 = a5;
    swift_getObjectType();
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1E68, qword_1A9994F38);
    MEMORY[0x1EEE9AC00](v11);
    v19[2] = a2;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1E70, &qword_1A9994F50);
    sub_1A984F72C(0xD000000000000020, 0x80000001A99E3DB0, sub_1A97E59CC, v19, v11, v12, &v23);
    swift_unknownObjectRelease();
    v20 = v23;
    v15 = v24;
    result = swift_allocObject();
    v17 = v22;
    *(result + 16) = v21;
    *(result + 24) = a4;
    *(result + 32) = v17;
    *(result + 40) = v20;
    *(result + 56) = v15;
    v18 = &unk_1A9994F60;
  }

  else
  {
    sub_1A9977400();
    sub_1A97BCDE0();
    v13 = swift_allocError();
    *v14 = 0;
    v14[1] = 0xE000000000000000;
    v14[2] = 0xD000000000000012;
    v14[3] = 0x80000001A99E31B0;
    v14[4] = 0;
    v14[5] = 0;
    v14[6] = 0xD000000000000054;
    v14[7] = 0x80000001A99E3C30;
    v14[8] = 59;
    v14[10] = 0xA000000000000000;
    swift_willThrow();
    result = swift_allocObject();
    *(result + 16) = a3;
    *(result + 24) = a4;
    *(result + 32) = a5;
    *(result + 40) = v13;
    v18 = &unk_1A9994F28;
  }

  *a6 = v18;
  a6[1] = result;
  return result;
}

uint64_t sub_1A97DED44@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v6 = sub_1A9976270();
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = v4;
  v7[4] = v5;
  aBlock[4] = sub_1A97E5D48;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A97DF0A0;
  aBlock[3] = &block_descriptor_112;
  v8 = _Block_copy(aBlock);

  [v2 xpcMakeAsyncIteratorFor:v6 completion:v8];
  _Block_release(v8);

  swift_beginAccess();
  v9 = *(v3 + 16);
  if (v9)
  {
    swift_beginAccess();
    v10 = *(v4 + 16);
    swift_beginAccess();
    v11 = *(v5 + 16);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();

    *a2 = v9;
    a2[1] = v10;
    a2[2] = v11;
  }

  else
  {
    sub_1A97BCDE0();
    swift_allocError();
    *v13 = xmmword_1A9994AA0;
    *(v13 + 16) = 0xD000000000000054;
    *(v13 + 24) = 0x80000001A99E3C30;
    *(v13 + 32) = 69;
    *(v13 + 80) = 0x2000000000000000;
    swift_willThrow();
  }

  return result;
}

uint64_t sub_1A97DEFD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  *(a4 + 16) = a1;
  swift_unknownObjectRelease();
  swift_beginAccess();
  *(a5 + 16) = a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  swift_beginAccess();
  *(a6 + 16) = a3;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_1A97DF0A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v7(a2, a3, a4);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t sub_1A97DF13C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[11] = a6;
  v7[12] = a7;
  v7[9] = a4;
  v7[10] = a5;
  v7[7] = a2;
  v7[8] = a3;
  v7[6] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A97DF168, 0, 0);
}

uint64_t sub_1A97DF168()
{
  v1 = *(v0 + 56);
  ObjectType = swift_getObjectType();
  *(v0 + 16) = v1;
  *(v0 + 40) = ObjectType;
  swift_unknownObjectRetain();
  v3 = sub_1A97B5B44(v0 + 16, 0, 0, 0xD000000000000054, 0x80000001A99E3C30, 73);
  *(v0 + 104) = v3;
  v4 = v3;
  v5 = *(v0 + 96);
  v7 = *(v0 + 64);
  v6 = *(v0 + 72);
  v8 = *(v0 + 56);
  v15 = *(v0 + 80);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v9 = swift_task_alloc();
  *(v0 + 112) = v9;
  *(v9 + 16) = v15;
  *(v9 + 32) = v5;
  *(v9 + 40) = v4;
  *(v9 + 48) = v8;
  *(v9 + 56) = v7;
  *(v9 + 64) = v6;
  v10 = swift_task_alloc();
  *(v0 + 120) = v10;
  v10[2] = v8;
  v10[3] = v7;
  v10[4] = v6;
  v11 = swift_task_alloc();
  *(v0 + 128) = v11;
  v12 = sub_1A99770A0();
  *v11 = v0;
  v11[1] = sub_1A97DF360;
  v13 = *(v0 + 48);

  return MEMORY[0x1EEE6DE18](v13, &unk_1A9994F70, v9, sub_1A97E5B98, v10, 0, 0, v12);
}

uint64_t sub_1A97DF360()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_1A97DF4E8;
  }

  else
  {

    v2 = sub_1A97DF484;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A97DF484()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A97DF4E8()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A97DF560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1A97DF58C, 0, 0);
}

uint64_t sub_1A97DF58C()
{
  v1 = *(v0 + 72);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = *(v0 + 32);
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1E78, &qword_1A9994F78);
  v7 = swift_allocObject();
  *(v0 + 80) = v7;
  *(v7 + 16) = *(v0 + 56);
  *(v7 + 32) = v1;
  *(v7 + 40) = v4;
  *(v7 + 48) = v3;
  *(v7 + 56) = v2;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v8 = swift_task_alloc();
  *(v0 + 88) = v8;
  sub_1A99770A0();
  *v8 = v0;
  v8[1] = sub_1A97DF710;
  v9 = *(v0 + 16);

  return sub_1A984F364(v9, 0xD00000000000001BLL, 0x80000001A99E3DE0, v6, sub_1A97E5BF0, v7, ObjectType, v6);
}

uint64_t sub_1A97DF710()
{
  v2 = *v1;
  *(v2 + 96) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A97DF84C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1A97DF84C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1A97DF8B0(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v25 = a7;
  v26 = a8;
  v24 = a4;
  sub_1A99770A0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
  v13 = sub_1A9976BB0();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v23 - v15;
  v17 = *a1;
  (*(v14 + 16))(&v23 - v15, a2, v13);
  v18 = (*(v14 + 80) + 64) & ~*(v14 + 80);
  v19 = swift_allocObject();
  v21 = v25;
  v20 = v26;
  *(v19 + 2) = a6;
  *(v19 + 3) = v21;
  *(v19 + 4) = v20;
  *(v19 + 5) = a3;
  *(v19 + 6) = v24;
  *(v19 + 7) = a5;
  (*(v14 + 32))(&v19[v18], v16, v13);
  aBlock[4] = sub_1A97E5C14;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A97E021C;
  aBlock[3] = &block_descriptor_0;
  v22 = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  [v17 xpcNextWithCompletion_];
  _Block_release(v22);
}

uint64_t sub_1A97DFAE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v23 = a6;
  v24 = a7;
  v21 = a4;
  v22 = a5;
  v20 = a2;
  sub_1A99770A0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
  v13 = sub_1A9977A20();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v19 - v15;
  v25 = a8;
  v26 = a9;
  v27 = a10;
  v28 = a3;
  v29 = a1;
  v30 = v20;
  v31 = v21;
  v32 = v22;
  v33 = v23;
  sub_1A9850590(sub_1A97E5D0C, &v19 - v15);
  v17 = sub_1A9976BB0();
  sub_1A97DCA10(v16, v17);
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_1A97DFC78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, unint64_t a6@<X6>, unint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t *a10)
{
  v71 = a7;
  v73 = a6;
  v74 = a3;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B1480, &unk_1A9994AB0);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = v63 - v19;
  v21 = sub_1A9977460();
  v22 = MEMORY[0x1EEE9AC00](v21);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v27 = v63 - v26;
  if (a1)
  {
    v28 = *(a1 + OBJC_IVAR____SFXPCError_domain);
    v29 = *(a1 + OBJC_IVAR____SFXPCError_domain + 8);
    v73 = *(a1 + OBJC_IVAR____SFXPCError_errorCode);
    v74 = v28;
    v30 = *(a1 + OBJC_IVAR____SFXPCError_internalLocalizedDescription + 8);
    v72 = *(a1 + OBJC_IVAR____SFXPCError_internalLocalizedDescription);
    v31 = *(a1 + OBJC_IVAR____SFXPCError_internalDebugDescription + 8);
    v71 = *(a1 + OBJC_IVAR____SFXPCError_internalDebugDescription);
    v80 = a10;
    v32 = *(a1 + OBJC_IVAR____SFXPCError_file + 8);
    v70 = *(a1 + OBJC_IVAR____SFXPCError_file);
    v33 = *(a1 + OBJC_IVAR____SFXPCError_line);
    v34 = *(a1 + OBJC_IVAR____SFXPCError_line + 8);
    v35 = *(a1 + OBJC_IVAR____SFXPCError_process);
    v36 = *(a1 + OBJC_IVAR____SFXPCError_process + 8);
    LOBYTE(v76) = v34;
    v37 = v34;
    sub_1A97BCDE0();
    v38 = swift_allocError();
    v39 = v73;
    *v40 = v74;
    v40[1] = v29;
    v41 = v71;
    v42 = v72;
    v40[2] = v39;
    v40[3] = v42;
    v40[4] = v30;
    v40[5] = v41;
    v43 = v70;
    v40[6] = v31;
    v40[7] = v43;
    v40[8] = v32;
    v40[9] = v33;
    v40[10] = v37 & 1 | 0xC000000000000000;
    v40[11] = v35;
    v40[12] = v36;
    swift_willThrow();
    *v80 = v38;
  }

  v67 = v18;
  v68 = v23;
  v66 = a5;
  v69 = a8;
  v70 = a2;
  v46 = v73;
  v45 = v74;
  if (v74 >> 60 == 15)
  {
    return (*(*(v73 - 8) + 56))(v69, 1, 1, v73);
  }

  v65 = v24;
  v80 = a10;
  v47 = v25;
  sub_1A9975E40();
  swift_allocObject();
  sub_1A97B40FC(v70, v45);
  sub_1A9975E30();
  sub_1A9977450();
  v48 = v68;
  v64 = *(v47 + 48);
  result = v64(v20, 1, v68);
  if (result == 1)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  v49 = *(v47 + 32);
  v63[1] = v47 + 32;
  v49(v27, v20, v48);
  if (a4)
  {
    ObjectType = swift_getObjectType();
    v51 = a4;
  }

  else
  {
    v51 = 0;
    ObjectType = 0;
    v77 = 0;
    v78 = 0;
  }

  v76 = v51;
  v79 = ObjectType;
  swift_unknownObjectRetain();
  v52 = sub_1A9975E20();
  sub_1A97DCC4C(&v76, v27);
  v52(v75, 0);
  v53 = v67;
  sub_1A9977450();
  result = v64(v53, 1, v48);
  if (result == 1)
  {
    goto LABEL_18;
  }

  v49(v65, v53, v48);
  v54 = v80;
  v55 = v70;
  v56 = v66;
  if (v66)
  {
    v57 = swift_getObjectType();
    v58 = v56;
  }

  else
  {
    v58 = 0;
    v57 = 0;
    v77 = 0;
    v78 = 0;
  }

  v59 = v69;
  v76 = v58;
  v79 = v57;
  swift_unknownObjectRetain();
  v60 = sub_1A9975E20();
  sub_1A97DCC4C(&v76, v65);
  v60(v75, 0);
  v61 = v74;
  v62 = v72;
  sub_1A9975E10();
  if (v62)
  {

    result = sub_1A97D8688(v55, v61);
    *v54 = v62;
  }

  else
  {
    (*(*(v46 - 8) + 56))(v59, 0, 1, v46);

    return sub_1A97D8688(v55, v61);
  }

  return result;
}

uint64_t sub_1A97E021C(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {

    v6 = v4;
    v4 = sub_1A9976070();
    v8 = v7;
  }

  else
  {

    v8 = 0xF000000000000000;
  }

  v9 = a3;
  v5(v4, v8, a3);

  sub_1A97D8688(v4, v8);
}

uint64_t sub_1A97E02E8(uint64_t a1)
{
  v2 = *(v1 + 16);
  swift_willThrow();
  v3 = v2;
  v4 = *(v1 + 8);

  return v4();
}

uint64_t SFXPCAsyncSequence.AsyncIterator.next()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A97E0380, 0, 0);
}

uint64_t sub_1A97E0380()
{
  v4 = (**(v0 + 24) + ***(v0 + 24));
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1A97E0474;
  v2 = *(v0 + 16);

  return v4(v2);
}

uint64_t sub_1A97E0474()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1A97E0568(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A97B2638;

  return SFXPCAsyncSequence.AsyncIterator.next()(a1);
}

uint64_t sub_1A97E0600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  v12 = swift_task_alloc();
  *(v6 + 32) = v12;
  *v12 = v6;
  v12[1] = sub_1A97E06D4;

  return MEMORY[0x1EEE6D8E0](a1, a2, a3, a5, a6);
}

uint64_t sub_1A97E06D4()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    **(v2 + 24) = *(v2 + 16);
  }

  v4 = *(v3 + 8);

  return v4();
}

uint64_t sub_1A97E080C()
{
  SFXPCAsyncSequence.makeAsyncIterator()();
}

uint64_t sub_1A97E0970(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a7;
  v8[10] = a8;
  v8[8] = a6;
  v11 = (a4 + *a4);
  v9 = swift_task_alloc();
  v8[11] = v9;
  *v9 = v8;
  v9[1] = sub_1A97E0A60;

  return v11();
}

uint64_t sub_1A97E0A60(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[12] = a1;
  v4[13] = a2;
  v4[14] = v2;

  if (v2)
  {
    v5 = sub_1A97E0C40;
  }

  else
  {
    v5 = sub_1A97E0B78;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1A97E0B78()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    *&Strong[OBJC_IVAR____SFXPCAsyncIterator_currentTask] = 0;
  }

  v3 = *(v0 + 96);
  v2 = *(v0 + 104);
  (*(v0 + 72))(v3, v2, 0);
  sub_1A97D8688(v3, v2);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1A97E0C40()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    *&Strong[OBJC_IVAR____SFXPCAsyncIterator_currentTask] = 0;
  }

  v2 = v0[14];
  v3 = v0[9];
  v4 = objc_allocWithZone(type metadata accessor for _SFXPCError());
  v5 = v2;
  v6 = sub_1A99195C8(v2);

  v3(0, 0xF000000000000000, v6);
  v7 = v0[1];

  return v7();
}

void sub_1A97E0DAC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >> 60 == 15)
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_1A9976060();
  }

  v6 = v5;
  (*(a4 + 16))(a4);
}

id _SFXPCAsyncSequenceContainer.init(name:containerRegistry:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1A97E4090(a1, a2, a3);

  return v3;
}

id sub_1A97E0F44(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v28 = a3;
  v29 = a4;
  ObjectType = swift_getObjectType();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = sub_1A99762C0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v26 - v16;
  v18 = *&v4[*a1];
  if (v18)
  {
    v19 = *a2;
    v27 = ObjectType;
    v20 = *(v12 + 16);
    v20(&v26 - v16, &v4[v19], v11);
    v21 = sub_1A9976C00();
    (*(*(v21 - 8) + 56))(v10, 1, 1, v21);
    v20(v15, v17, v11);
    v22 = (*(v12 + 80) + 40) & ~*(v12 + 80);
    v23 = swift_allocObject();
    v23[2] = 0;
    v23[3] = 0;
    v23[4] = v18;
    v24 = v23 + v22;
    ObjectType = v27;
    (*(v12 + 32))(v24, v15, v11);
    swift_retain_n();
    sub_1A97B4F40(0, 0, v10, v29, v23);

    (*(v12 + 8))(v17, v11);
  }

  v30.receiver = v4;
  v30.super_class = ObjectType;
  return objc_msgSendSuper2(&v30, sel_dealloc);
}

void _SFXPCAsyncSequenceContainer.xpcMakeAsyncIterator(for:completion:)(uint64_t a1, void (*a2)(id, Class, id), uint64_t a3)
{
  v4 = v3;
  v87 = a3;
  v88 = a2;
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B1480, &unk_1A9994AB0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v83 = &v74 - v10;
  v11 = sub_1A9977460();
  v84 = *(v11 - 8);
  v85 = v11;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v81 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v82 = &v74 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v74 - v16;
  v18 = sub_1A99762C0();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v74 - v23;
  v25 = OBJC_IVAR____SFXPCAsyncSequenceContainer_sequences;
  swift_beginAccess();
  v26 = *(v4 + v25);
  if (!*(v26 + 16) || (v27 = sub_1A97BCE34(a1), (v28 & 1) == 0))
  {
    swift_endAccess();
    v46 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v47 = sub_1A99767E0();
    v48 = [v46 initWithDomain:v47 code:0 userInfo:0];

    v49 = *(v4 + OBJC_IVAR____SFXPCAsyncSequenceContainer_containerRegistry);
    v50 = objc_allocWithZone(type metadata accessor for _SFXPCAsyncIterator(0));

    v51 = sub_1A97E4570(v48, 0, 1, v49);

    v88(v51, 0, 0);
LABEL_10:

    return;
  }

  v76 = v17;
  v78 = v9;
  v29 = *(*(v26 + 56) + 8 * v27);
  swift_endAccess();
  v30 = *(v4 + OBJC_IVAR____SFXPCAsyncSequenceContainer_name);
  v31 = *(v4 + OBJC_IVAR____SFXPCAsyncSequenceContainer_name + 8);
  v32 = *(v4 + OBJC_IVAR____SFXPCAsyncSequenceContainer_containerRegistry);
  v33 = objc_allocWithZone(ObjectType);
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  v77 = v29;

  sub_1A99762B0();
  v75 = *(v19 + 16);
  v75(&v33[OBJC_IVAR____SFXPCAsyncSequenceContainer_uuid], v24, v18);
  v34 = &v33[OBJC_IVAR____SFXPCAsyncSequenceContainer_name];
  v79 = v30;
  v80 = v31;
  *v34 = v30;
  v34[1] = v31;
  v35 = v33;

  *&v33[OBJC_IVAR____SFXPCAsyncSequenceContainer_sequences] = sub_1A97BE618(MEMORY[0x1E69E7CC0]);
  *&v33[OBJC_IVAR____SFXPCAsyncSequenceContainer_containerRegistry] = v32;
  if (v32)
  {
    v36 = sub_1A9976C00();
    v37 = v76;
    (*(*(v36 - 8) + 56))(v76, 1, 1, v36);
    v75(v22, v24, v18);
    v38 = (*(v19 + 80) + 40) & ~*(v19 + 80);
    v39 = (v20 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
    v40 = swift_allocObject();
    *(v40 + 2) = 0;
    *(v40 + 3) = 0;
    *(v40 + 4) = v32;
    (*(v19 + 32))(&v40[v38], v22, v18);
    v41 = &v40[v39];
    v43 = v79;
    v42 = v80;
    *v41 = v79;
    *(v41 + 1) = v42;
    swift_retain_n();
    sub_1A97B4F40(0, 0, v37, &unk_1A9994AD0, v40);

    (*(v19 + 8))(v24, v18);
    v44 = v32;
    v45 = v43;
  }

  else
  {
    (*(v19 + 8))(v24, v18);
    v42 = v80;

    v44 = 0;
    v45 = v79;
  }

  v92.receiver = v35;
  v52 = ObjectType;
  v92.super_class = ObjectType;
  v53 = objc_msgSendSuper2(&v92, sel_init);

  v79 = type metadata accessor for _SFXPCBlockContainer(0);
  v54 = objc_allocWithZone(v79);
  v76 = sub_1A97BE9E8(v45, v42, v44);
  v80 = v44;

  sub_1A9975E80();
  swift_allocObject();
  v55 = sub_1A9975E70();
  v56 = v83;
  sub_1A9977450();
  v57 = v84;
  v58 = v85;
  v59 = *(v84 + 48);
  if (v59(v56, 1, v85) == 1)
  {
    __break(1u);
  }

  else
  {
    v60 = *(v57 + 32);
    v61 = v82;
    v60(v82, v56, v58);
    v91 = v52;
    v90[0] = v53;
    ObjectType = v53;
    v62 = sub_1A9975E60();
    sub_1A97DCC4C(v90, v61);
    v62(v89, 0);
    v63 = v78;
    sub_1A9977450();
    if (v59(v63, 1, v58) != 1)
    {
      v64 = v81;
      v60(v81, v63, v58);
      v91 = v79;
      v90[0] = v76;
      v65 = v76;
      v66 = sub_1A9975E60();
      sub_1A97DCC4C(v90, v64);
      v66(v89, 0);
      v67 = (*(v77 + 16))(v55);
      v69 = v68;
      v70 = objc_allocWithZone(type metadata accessor for _SFXPCAsyncIterator(0));

      v71 = sub_1A97E4570(v67, v69, 0, v80);

      v72 = ObjectType;
      v73 = ObjectType;
      v51 = v65;
      v88(v71, v72, v65);

      goto LABEL_10;
    }
  }

  __break(1u);
}

id _SFXPCAsyncSequenceContainer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1A97E1C7C(uint64_t a1)
{
  *(v2 + 16) = a1;
  v5 = (*v1 + **v1);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1A97E1D68;

  return v5();
}

uint64_t sub_1A97E1D68(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;

  if (v2)
  {
    v8 = *(v7 + 8);

    return v8();
  }

  else
  {
    *(v6 + 32) = a2;
    *(v6 + 40) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1A97E1EC4, 0, 0);
  }
}

uint64_t sub_1A97E1EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = v4;
  v5[5] = a4;
  v5[3] = a1;
  if (a2)
  {
    swift_getObjectType();
    v6 = sub_1A9976B80();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v5[6] = v6;
  v5[7] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1A97E1F84, v6, v8);
}

uint64_t sub_1A97E1F84()
{
  v3 = (**(v0 + 32) + ***(v0 + 32));
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_1A97E2070;

  return v3();
}

uint64_t sub_1A97E2070(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 72) = v2;

  if (v2)
  {
    v7 = v6[6];
    v8 = v6[7];
    v9 = sub_1A97E21D8;
  }

  else
  {
    v6[10] = a2;
    v6[11] = a1;
    v9 = sub_1A97E21B0;
    v7 = 0;
    v8 = 0;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1A97E21D8()
{
  v1 = v0[9];
  v2 = v0[5];
  v0[2] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
  swift_willThrowTypedImpl();
  *v2 = v1;
  v3 = v0[1];

  return v3();
}

uint64_t sub_1A97E2278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a2 - 8);
  v12 = (*(v11 + 80) + 48) & ~*(v11 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = a2;
  *(v13 + 3) = a3;
  *(v13 + 4) = a4;
  *(v13 + 5) = a5;
  (*(v11 + 32))(&v13[v12], a1, a2);
  *(v5 + 16) = sub_1A97E5D54;
  *(v5 + 24) = v13;
  return v5;
}

void *sub_1A97E236C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  v15 = swift_allocBox();
  (*(v12 + 16))(v14, a2, a3);
  sub_1A9976D30();
  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a5;
  v16[5] = a6;
  v16[6] = v15;
  v16[7] = a1;

  return &unk_1A9994F88;
}

uint64_t sub_1A97E24CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a4;
  v6[8] = a6;
  v6[5] = a2;
  v6[6] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[9] = AssociatedTypeWitness;
  v8 = sub_1A99770A0();
  v6[10] = v8;
  v6[11] = *(v8 - 8);
  v6[12] = swift_task_alloc();
  v6[13] = *(AssociatedTypeWitness - 8);
  v6[14] = swift_task_alloc();
  v6[15] = swift_getAssociatedTypeWitness();
  v6[16] = swift_projectBox();

  return MEMORY[0x1EEE6DFA0](sub_1A97E2654, 0, 0);
}

uint64_t sub_1A97E2654()
{
  swift_beginAccess();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v2 = swift_task_alloc();
  v0[17] = v2;
  *v2 = v0;
  v2[1] = sub_1A97E2738;
  v3 = v0[15];
  v4 = v0[12];

  return MEMORY[0x1EEE6D8C8](v4, v3, AssociatedConformanceWitness);
}

uint64_t sub_1A97E2738()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_1A97E2A18;
  }

  else
  {
    swift_endAccess();
    v2 = sub_1A97E2854;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A97E2854()
{
  v1 = v0 + 13;
  v2 = v0[13];
  v3 = v0[12];
  v5 = v0 + 9;
  v4 = v0[9];
  if ((*(v2 + 48))(v3, 1, v4) == 1)
  {
    v6 = 0;
    v1 = v0 + 11;
    v5 = v0 + 10;
    v7 = 0xF000000000000000;
    v8 = v3;
LABEL_8:
    (*(*v1 + 8))(v8, *v5);

    v14 = v0[1];

    return v14(v6, v7);
  }

  v9 = v0[18];
  (*(v2 + 32))(v0[14], v3, v4);
  v10 = sub_1A9975E50();
  if (!v9)
  {
    v6 = v10;
    v7 = v11;
    v8 = v0[14];
    goto LABEL_8;
  }

  (*(v0[13] + 8))(v0[14], v0[9]);

  v12 = v0[1];

  return v12();
}

uint64_t sub_1A97E2A18()
{
  swift_endAccess();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A97E2A90()
{

  return swift_deallocClassInstance();
}

double sub_1A97E2AC8@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_1A97BCD7C(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1A98271C4();
      v9 = v13;
    }

    v10 = *(v9 + 48);
    v11 = sub_1A9977460();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    sub_1A967C4DC((*(v9 + 56) + 32 * v7), a2);
    sub_1A98D5BF0(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

_OWORD *sub_1A97E2BA4(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1A9977460();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1A97BCD7C(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1A98271C4();
      goto LABEL_7;
    }

    sub_1A9824A04(v17, a3 & 1);
    v23 = sub_1A97BCD7C(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_1A97E3C7C(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_1A9977880();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = (v20[7] + 32 * v14);
  __swift_destroy_boxed_opaque_existential_0Tm(v21);

  return sub_1A967C4DC(a1, v21);
}

uint64_t sub_1A97E2DD4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(void))
{
  v30 = a5;
  v31 = a6;
  v7 = v6;
  v32 = a1;
  v11 = sub_1A99762C0();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v6;
  v17 = sub_1A97BCE34(a3);
  v18 = v15[2];
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_15;
  }

  v21 = v16;
  v22 = v15[3];
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 >= v20 && (a4 & 1) == 0)
    {
      v30();
      goto LABEL_9;
    }

    v31();
    v23 = sub_1A97BCE34(a3);
    if ((v21 & 1) == (v24 & 1))
    {
      v17 = v23;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_1A9977880();
    __break(1u);
    return result;
  }

LABEL_9:
  v25 = v32;
  v26 = *v7;
  if (v21)
  {
    v27 = (v26[7] + 16 * v17);
    *v27 = v32;
    v27[1] = a2;
  }

  else
  {
    (*(v12 + 16))(v14, a3, v11);
    return sub_1A97E3D3C(v17, v14, v25, a2, v26);
  }
}

uint64_t sub_1A97E2FC4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1A99762C0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1A97BCE34(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1A98276F0();
      goto LABEL_7;
    }

    sub_1A98251A4(v17, a3 & 1);
    v22 = sub_1A97BCE34(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_1A97E3DFC(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_1A9977880();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

void sub_1A97E3190(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1A97BCEB8(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1A9825580(v16, a4 & 1);
      v11 = sub_1A97BCEB8(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_1A9977880();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_1A9827970();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7];
    v23 = *(v22 + 8 * v11);
    *(v22 + 8 * v11) = a1;

    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v25 = v21[2];
  v15 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v26;
}

uint64_t sub_1A97E3308(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v28 = a1;
  v9 = sub_1A99762C0();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  v15 = sub_1A97BCE34(a3);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      sub_1A9827ADC();
      goto LABEL_9;
    }

    sub_1A9825824(v18, a4 & 1);
    v21 = sub_1A97BCE34(a3);
    if ((v19 & 1) == (v22 & 1))
    {
      v15 = v21;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_1A9977880();
    __break(1u);
    return result;
  }

LABEL_9:
  v23 = v28;
  v24 = *v5;
  if (v19)
  {
    v25 = (v24[7] + 16 * v15);
    *v25 = v28;
    v25[1] = a2;
  }

  else
  {
    (*(v10 + 16))(v12, a3, v9);
    return sub_1A97E3D3C(v15, v12, v23, a2, v24);
  }
}

_OWORD *sub_1A97E34E4(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1A97BCF30(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1A9827D68();
      goto LABEL_7;
    }

    sub_1A9825C0C(v13, a3 & 1);
    v19 = sub_1A97BCF30(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1A97C1030(a2, v21);
      return sub_1A97E3EB4(v10, v21, a1, v16);
    }

LABEL_15:
    result = sub_1A9977880();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_0Tm(v17);

  return sub_1A967C4DC(a1, v17);
}

uint64_t sub_1A97E3630(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1A97BCEB8(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1A9825EC4(v16, a4 & 1);
      v11 = sub_1A97BCEB8(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_1A9977880();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1A9827F0C();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return swift_unknownObjectRelease();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

uint64_t sub_1A97E37AC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1A99762C0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1A97BCE34(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1A98282FC();
      goto LABEL_7;
    }

    sub_1A9826194(v17, a3 & 1);
    v28 = sub_1A97BCE34(a2);
    if ((v18 & 1) == (v29 & 1))
    {
      v14 = v28;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_1A97E3F30(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_1A9977880();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = sub_1A99763B0();
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

uint64_t sub_1A97E39B0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1A97BCEB8(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1A9826C64(v16, a4 & 1);
      v11 = sub_1A97BCEB8(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_1A9977880();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1A98287B8();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

_OWORD *sub_1A97E3B2C(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1A97BCEB8(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1A9828928();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1A9826F0C(v16, a4 & 1);
    v11 = sub_1A97BCEB8(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_1A9977880();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0Tm(v22);

    return sub_1A967C4DC(a1, v22);
  }

  else
  {
    sub_1A97E4024(v11, a2, a3, a1, v21);
  }
}

_OWORD *sub_1A97E3C7C(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1A9977460();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = sub_1A967C4DC(a3, (a4[7] + 32 * a1));
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_1A97E3D3C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = sub_1A99762C0();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

uint64_t sub_1A97E3DFC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1A99762C0();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

_OWORD *sub_1A97E3EB4(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_1A967C4DC(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

uint64_t sub_1A97E3F30(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1A99762C0();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = sub_1A99763B0();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

_OWORD *sub_1A97E4024(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1A967C4DC(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

id sub_1A97E4090(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a2;
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v27 = &v24 - v7;
  v8 = sub_1A99762C0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v24 - v13;
  sub_1A99762B0();
  v15 = *(v9 + 16);
  v15(&v3[OBJC_IVAR____SFXPCAsyncSequenceContainer_uuid], v14, v8);
  v16 = &v3[OBJC_IVAR____SFXPCAsyncSequenceContainer_name];
  v24 = a1;
  *v16 = a1;
  v17 = v25;
  *(v16 + 1) = v25;

  *&v3[OBJC_IVAR____SFXPCAsyncSequenceContainer_sequences] = sub_1A97BE618(MEMORY[0x1E69E7CC0]);
  *&v3[OBJC_IVAR____SFXPCAsyncSequenceContainer_containerRegistry] = a3;
  if (a3)
  {
    v18 = sub_1A9976C00();
    (*(*(v18 - 8) + 56))(v27, 1, 1, v18);
    v15(v12, v14, v8);
    v19 = (*(v9 + 80) + 40) & ~*(v9 + 80);
    v20 = (v10 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
    v21 = swift_allocObject();
    *(v21 + 2) = 0;
    *(v21 + 3) = 0;
    *(v21 + 4) = a3;
    (*(v9 + 32))(&v21[v19], v12, v8);
    v22 = &v21[v20];
    *v22 = v24;
    v22[1] = v17;
    swift_retain_n();
    sub_1A97B4F40(0, 0, v27, &unk_1A9994FA8, v21);

    (*(v9 + 8))(v14, v8);
  }

  else
  {
    (*(v9 + 8))(v14, v8);
  }

  v28.receiver = v3;
  v28.super_class = ObjectType;
  return objc_msgSendSuper2(&v28, sel_init);
}

uint64_t sub_1A97E4448(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B0BA0, &unk_1A99923D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A97E44B8@<X0>(void *a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = *(sub_1A99762C0() - 8);
  v7 = v1 + ((*(v6 + 80) + 72) & ~*(v6 + 80));

  return sub_1A97DEAB4((v1 + 5), v7, v3, v4, v5, a1);
}

id sub_1A97E4570(void *a1, uint64_t a2, int a3, uint64_t a4)
{
  v27 = a4;
  LODWORD(v28) = a3;
  ObjectType = swift_getObjectType();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v32 = &v27 - v8;
  v9 = sub_1A99762C0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v27 - v14;
  *&v4[OBJC_IVAR____SFXPCAsyncIterator_currentTask] = 0;
  sub_1A99762B0();
  v16 = *(v10 + 16);
  v16(&v4[OBJC_IVAR____SFXPCAsyncIterator_uuid], v15, v9);
  v17 = &v4[OBJC_IVAR____SFXPCAsyncIterator_iterator];
  v29 = a1;
  v30 = a2;
  *v17 = a1;
  *(v17 + 1) = a2;
  v18 = v27;
  v19 = v28;
  v20 = v28 & 1;
  v17[16] = v28 & 1;
  *&v4[OBJC_IVAR____SFXPCAsyncIterator_containerRegistry] = v18;
  if (v18)
  {
    v28 = 0x80000001A99E3D90;
    v21 = sub_1A9976C00();
    (*(*(v21 - 8) + 56))(v32, 1, 1, v21);
    v16(v13, v15, v9);
    v22 = (*(v10 + 80) + 40) & ~*(v10 + 80);
    v23 = (v11 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
    v24 = swift_allocObject();
    *(v24 + 2) = 0;
    *(v24 + 3) = 0;
    *(v24 + 4) = v18;
    (*(v10 + 32))(&v24[v22], v13, v9);
    v25 = &v24[v23];
    *v25 = 0xD000000000000012;
    *(v25 + 1) = v28;
    swift_retain_n();
    sub_1A97E5608(v29, v30, v20);

    sub_1A97B4F40(0, 0, v32, &unk_1A9994F08, v24);
  }

  else
  {
    sub_1A97E5608(v29, v30, v19 & 1);
  }

  (*(v10 + 8))(v15, v9);
  v33.receiver = v4;
  v33.super_class = ObjectType;
  return objc_msgSendSuper2(&v33, sel_init);
}

uint64_t sub_1A97E48C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1A97E491C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1A97E49AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_1A99762C0();
  if (v6 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1A97E4A84(uint64_t *a1, int a2)
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

uint64_t sub_1A97E4ACC(uint64_t result, int a2, int a3)
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

uint64_t sub_1A97E4B74(uint64_t a1, void (**a2)(void, void, void))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - v5;
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  v9 = *(a1 + OBJC_IVAR____SFXPCAsyncIterator_iterator);
  v8 = *(a1 + OBJC_IVAR____SFXPCAsyncIterator_iterator + 8);
  if (*(a1 + OBJC_IVAR____SFXPCAsyncIterator_iterator + 16))
  {
    v10 = objc_allocWithZone(type metadata accessor for _SFXPCError());
    _Block_copy(a2);
    sub_1A97E5608(v9, v8, 1);
    v11 = sub_1A99195C8(v9);
    (a2)[2](a2, 0, v11);

    sub_1A97E5618(v9, v8, 1);
  }

  else
  {
    v13 = sub_1A9976C00();
    (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = v9;
    v15[5] = v8;
    v15[6] = v14;
    v15[7] = sub_1A97E5600;
    v15[8] = v7;
    _Block_copy(a2);
    sub_1A97E5608(v9, v8, 0);

    *(a1 + OBJC_IVAR____SFXPCAsyncIterator_currentTask) = sub_1A97B4F40(0, 0, v6, &unk_1A9994EF8, v15);
  }
}

void sub_1A97E4DC8(uint64_t a1, uint64_t a2, void (**a3)(void, void, void, void))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B1480, &unk_1A9994AB0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v80 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v81 = &v71 - v9;
  v10 = sub_1A9977460();
  v82 = *(v10 - 8);
  v83 = v10;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v78 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v79 = &v71 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v71 - v15;
  v17 = sub_1A99762C0();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v71 - v22;
  v24 = OBJC_IVAR____SFXPCAsyncSequenceContainer_sequences;
  swift_beginAccess();
  v25 = *(a2 + v24);
  if (!*(v25 + 16) || (v26 = sub_1A97BCE34(a1), (v27 & 1) == 0))
  {
    swift_endAccess();
    v45 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v46 = sub_1A99767E0();
    v47 = [v45 initWithDomain:v46 code:0 userInfo:0];

    v48 = *(a2 + OBJC_IVAR____SFXPCAsyncSequenceContainer_containerRegistry);
    v49 = objc_allocWithZone(type metadata accessor for _SFXPCAsyncIterator(0));

    v50 = sub_1A97E4570(v47, 0, 1, v48);

    (a3)[2](a3, v50, 0, 0);
LABEL_10:

    return;
  }

  v72 = v16;
  v77 = a3;
  v28 = *(*(v25 + 56) + 8 * v26);
  swift_endAccess();
  v29 = *(a2 + OBJC_IVAR____SFXPCAsyncSequenceContainer_name);
  v30 = *(a2 + OBJC_IVAR____SFXPCAsyncSequenceContainer_name + 8);
  v31 = *(a2 + OBJC_IVAR____SFXPCAsyncSequenceContainer_containerRegistry);
  v76 = type metadata accessor for _SFXPCAsyncSequenceContainer(0);
  v32 = objc_allocWithZone(v76);
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  v73 = v28;

  sub_1A99762B0();
  v71 = *(v18 + 16);
  v71(&v32[OBJC_IVAR____SFXPCAsyncSequenceContainer_uuid], v23, v17);
  v33 = &v32[OBJC_IVAR____SFXPCAsyncSequenceContainer_name];
  v74 = v29;
  v75 = v30;
  *v33 = v29;
  v33[1] = v30;
  v34 = v32;

  *&v32[OBJC_IVAR____SFXPCAsyncSequenceContainer_sequences] = sub_1A97BE618(MEMORY[0x1E69E7CC0]);
  *&v32[OBJC_IVAR____SFXPCAsyncSequenceContainer_containerRegistry] = v31;
  if (v31)
  {
    v35 = sub_1A9976C00();
    v36 = v72;
    (*(*(v35 - 8) + 56))(v72, 1, 1, v35);
    v71(v21, v23, v17);
    v37 = (*(v18 + 80) + 40) & ~*(v18 + 80);
    v38 = (v19 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
    v39 = swift_allocObject();
    *(v39 + 2) = 0;
    *(v39 + 3) = 0;
    *(v39 + 4) = v31;
    (*(v18 + 32))(&v39[v37], v21, v17);
    v40 = &v39[v38];
    v42 = v74;
    v41 = v75;
    *v40 = v74;
    *(v40 + 1) = v41;
    swift_retain_n();
    sub_1A97B4F40(0, 0, v36, &unk_1A9994EE8, v39);

    (*(v18 + 8))(v23, v17);
    v43 = v31;
    v44 = v42;
  }

  else
  {
    (*(v18 + 8))(v23, v17);
    v41 = v75;

    v43 = 0;
    v44 = v74;
  }

  v51 = v76;
  v87.receiver = v34;
  v87.super_class = v76;
  v52 = objc_msgSendSuper2(&v87, sel_init);

  v74 = type metadata accessor for _SFXPCBlockContainer(0);
  v53 = objc_allocWithZone(v74);
  v72 = sub_1A97BE9E8(v44, v41, v43);
  v75 = v43;

  sub_1A9975E80();
  swift_allocObject();
  v54 = sub_1A9975E70();
  v55 = v81;
  sub_1A9977450();
  v56 = v82;
  v57 = v83;
  v58 = v82[6];
  if (v58(v55, 1, v83) == 1)
  {
    _Block_release(v77);
    __break(1u);
  }

  else
  {
    v59 = v56[4];
    v60 = v79;
    v59(v79, v55, v57);
    v86 = v51;
    v85[0] = v52;
    v82 = v52;
    v61 = sub_1A9975E60();
    sub_1A97DCC4C(v85, v60);
    v61(v84, 0);
    v62 = v80;
    sub_1A9977450();
    if (v58(v62, 1, v57) != 1)
    {
      v63 = v78;
      v59(v78, v62, v57);
      v86 = v74;
      v85[0] = v72;
      v64 = v72;
      v65 = sub_1A9975E60();
      sub_1A97DCC4C(v85, v63);
      v65(v84, 0);
      v66 = (*(v73 + 16))(v54);
      v68 = v67;
      v69 = objc_allocWithZone(type metadata accessor for _SFXPCAsyncIterator(0));

      v50 = sub_1A97E4570(v66, v68, 0, v75);

      v70 = v82;
      (*(v77 + 2))(v77, v50, v82, v64);

      goto LABEL_10;
    }
  }

  _Block_release(v77);
  __break(1u);
}

id sub_1A97E5608(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
  }
}

void sub_1A97E5618(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1A97E5628(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1A97B2638;

  return sub_1A97E0970(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t objectdestroy_11Tm()
{
  v1 = sub_1A99762C0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1A97E57D0(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1A99762C0() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1A97B2988;

  return sub_1A98141C4(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_1A97E590C(uint64_t a1)
{
  v4 = *(v1 + 40);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A97B2988;

  return sub_1A97E02C8(a1, v4);
}

uint64_t sub_1A97E59E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1A97B2988;

  return sub_1A97DF13C(a1, v7, v9, v8, v4, v5, v6);
}

uint64_t sub_1A97E5ABC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1A97B2638;

  return sub_1A97DF560(a1, v7, v8, v9, v10, v4, v5, v6);
}

uint64_t objectdestroy_84Tm()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A97E5C14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[2];
  v8 = v3[3];
  v9 = v3[4];
  sub_1A99770A0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
  v10 = *(sub_1A9976BB0() - 8);
  return sub_1A97DFAE0(a1, a2, a3, v3[5], v3[6], v3[7], v3 + ((*(v10 + 80) + 64) & ~*(v10 + 80)), v7, v8, v9);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1A97E5D94()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_1A97E5E54;

  return sub_1A97E24CC(v7, v6, v2, v3, v4, v5);
}

uint64_t sub_1A97E5E54(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t sub_1A97E5F60(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1A97B2988;

  return sub_1A97DD6AC(a1, v8, v4, v5, v6, v7, v9);
}

uint64_t SFAirDrop.NetworkMetrics.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1A9976230();
  v3 = *(*(v2 - 8) + 56);
  v3(a1, 1, 1, v2);
  v4 = type metadata accessor for SFAirDrop.NetworkMetrics(0);
  v3(a1 + v4[5], 1, 1, v2);
  v3(a1 + v4[6], 1, 1, v2);
  v3(a1 + v4[7], 1, 1, v2);
  v3(a1 + v4[8], 1, 1, v2);
  v3(a1 + v4[9], 1, 1, v2);
  v3(a1 + v4[10], 1, 1, v2);
  result = (v3)(a1 + v4[11], 1, 1, v2);
  *(a1 + v4[12]) = 0;
  *(a1 + v4[13]) = 0;
  *(a1 + v4[14]) = 0;
  v6 = (a1 + v4[15]);
  *v6 = 0;
  v6[1] = 0;
  v7 = (a1 + v4[16]);
  *v7 = 0;
  v7[1] = 0;
  return result;
}

uint64_t type metadata accessor for SFAirDrop.NetworkMetrics(uint64_t a1)
{
  result = qword_1EB3AB958;
  if (!qword_1EB3AB958)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A97E6230(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2A30, &unk_1A99983A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SFAirDrop.NetworkMetrics.helloSent.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SFAirDrop.NetworkMetrics(0) + 20);

  return sub_1A97E6230(v3, a1);
}

uint64_t SFAirDrop.NetworkMetrics.helloFinish.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SFAirDrop.NetworkMetrics(0) + 24);

  return sub_1A97E6230(v3, a1);
}

uint64_t SFAirDrop.NetworkMetrics.askStart.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SFAirDrop.NetworkMetrics(0) + 28);

  return sub_1A97E6230(v3, a1);
}

uint64_t SFAirDrop.NetworkMetrics.askSent.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SFAirDrop.NetworkMetrics(0) + 32);

  return sub_1A97E6230(v3, a1);
}

uint64_t SFAirDrop.NetworkMetrics.askFinish.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SFAirDrop.NetworkMetrics(0) + 36);

  return sub_1A97E6230(v3, a1);
}

uint64_t SFAirDrop.NetworkMetrics.uploadStart.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SFAirDrop.NetworkMetrics(0) + 40);

  return sub_1A97E6230(v3, a1);
}

uint64_t SFAirDrop.NetworkMetrics.uploadFinish.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SFAirDrop.NetworkMetrics(0) + 44);

  return sub_1A97E6230(v3, a1);
}

uint64_t SFAirDrop.NetworkMetrics.senderTLSCertDigest.getter()
{
  v1 = *(v0 + *(type metadata accessor for SFAirDrop.NetworkMetrics(0) + 60));

  return v1;
}

uint64_t SFAirDrop.NetworkMetrics.receiverTLSCertDigest.getter()
{
  v1 = *(v0 + *(type metadata accessor for SFAirDrop.NetworkMetrics(0) + 64));

  return v1;
}

Swift::Void __swiftcall SFAirDrop.NetworkMetrics.logStartHello()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2A30, &unk_1A99983A0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v5 - v2;
  sub_1A9976220();
  v4 = sub_1A9976230();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  sub_1A97E6628(v3, v0);
}

uint64_t sub_1A97E6628(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2A30, &unk_1A99983A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

Swift::Void __swiftcall SFAirDrop.NetworkMetrics.logSentHello()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2A30, &unk_1A99983A0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v6 - v2;
  sub_1A9976220();
  v4 = sub_1A9976230();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = type metadata accessor for SFAirDrop.NetworkMetrics(0);
  sub_1A97E6628(v3, v0 + *(v5 + 20));
}

Swift::Void __swiftcall SFAirDrop.NetworkMetrics.logFinishedHello()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2A30, &unk_1A99983A0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v6 - v2;
  sub_1A9976220();
  v4 = sub_1A9976230();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = type metadata accessor for SFAirDrop.NetworkMetrics(0);
  sub_1A97E6628(v3, v0 + *(v5 + 24));
}

Swift::Void __swiftcall SFAirDrop.NetworkMetrics.logStartAsk()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2A30, &unk_1A99983A0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v6 - v2;
  sub_1A9976220();
  v4 = sub_1A9976230();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = type metadata accessor for SFAirDrop.NetworkMetrics(0);
  sub_1A97E6628(v3, v0 + *(v5 + 28));
}

Swift::Void __swiftcall SFAirDrop.NetworkMetrics.logSentAsk()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2A30, &unk_1A99983A0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v6 - v2;
  sub_1A9976220();
  v4 = sub_1A9976230();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = type metadata accessor for SFAirDrop.NetworkMetrics(0);
  sub_1A97E6628(v3, v0 + *(v5 + 32));
}

Swift::Void __swiftcall SFAirDrop.NetworkMetrics.logFinishedAsk()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2A30, &unk_1A99983A0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v6 - v2;
  sub_1A9976220();
  v4 = sub_1A9976230();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = type metadata accessor for SFAirDrop.NetworkMetrics(0);
  sub_1A97E6628(v3, v0 + *(v5 + 36));
}

Swift::Void __swiftcall SFAirDrop.NetworkMetrics.logUploadStart(totalBytes:)(Swift::Int totalBytes)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2A30, &unk_1A99983A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v8 - v4;
  sub_1A9976220();
  v6 = sub_1A9976230();
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  v7 = type metadata accessor for SFAirDrop.NetworkMetrics(0);
  sub_1A97E6628(v5, v1 + *(v7 + 40));
  *(v1 + *(v7 + 48)) = totalBytes;
}

Swift::Void __swiftcall SFAirDrop.NetworkMetrics.logUploadFinish(urlCount:)(Swift::Int urlCount)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2A30, &unk_1A99983A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v8 - v4;
  sub_1A9976220();
  v6 = sub_1A9976230();
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  v7 = type metadata accessor for SFAirDrop.NetworkMetrics(0);
  sub_1A97E6628(v5, v1 + *(v7 + 44));
  *(v1 + *(v7 + 52)) = urlCount;
}

Swift::Void __swiftcall SFAirDrop.NetworkMetrics.log(senderTLSCertDigest:)(Swift::String senderTLSCertDigest)
{
  object = senderTLSCertDigest._object;
  countAndFlagsBits = senderTLSCertDigest._countAndFlagsBits;
  v4 = (v1 + *(type metadata accessor for SFAirDrop.NetworkMetrics(0) + 60));

  *v4 = countAndFlagsBits;
  v4[1] = object;
}

Swift::Void __swiftcall SFAirDrop.NetworkMetrics.log(receiverTLSCertDigest:)(Swift::String receiverTLSCertDigest)
{
  object = receiverTLSCertDigest._object;
  countAndFlagsBits = receiverTLSCertDigest._countAndFlagsBits;
  v4 = (v1 + *(type metadata accessor for SFAirDrop.NetworkMetrics(0) + 64));

  *v4 = countAndFlagsBits;
  v4[1] = object;
}

uint64_t SFAirDrop.NetworkMetrics.helloSentMS.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2A30, &unk_1A99983A0);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v24 - v5;
  v7 = sub_1A9976230();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v24 - v12;
  sub_1A97E6230(v0, v6);
  v14 = *(v8 + 48);
  if (v14(v6, 1, v7) == 1)
  {
    v15 = v6;
LABEL_5:
    sub_1A97B06FC(v15, &unk_1EB3B2A30, &unk_1A99983A0);
    return 0;
  }

  v16 = v6;
  v17 = *(v8 + 32);
  v17(v13, v16, v7);
  v18 = type metadata accessor for SFAirDrop.NetworkMetrics(0);
  sub_1A97E6230(v0 + *(v18 + 20), v4);
  if (v14(v4, 1, v7) == 1)
  {
    (*(v8 + 8))(v13, v7);
    v15 = v4;
    goto LABEL_5;
  }

  v17(v11, v4, v7);
  sub_1A99760D0();
  v21 = v20;
  v22 = *(v8 + 8);
  v22(v11, v7);
  result = (v22)(v13, v7);
  v23 = v21 * 1000.0;
  if (COERCE__INT64(fabs(v21 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v23 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v23 < 9.22337204e18)
  {
    return v23;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t SFAirDrop.NetworkMetrics.helloFinishedMS.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2A30, &unk_1A99983A0);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v24 - v5;
  v7 = sub_1A9976230();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v24 - v12;
  sub_1A97E6230(v0, v6);
  v14 = *(v8 + 48);
  if (v14(v6, 1, v7) == 1)
  {
    v15 = v6;
LABEL_5:
    sub_1A97B06FC(v15, &unk_1EB3B2A30, &unk_1A99983A0);
    return 0;
  }

  v16 = v6;
  v17 = *(v8 + 32);
  v17(v13, v16, v7);
  v18 = type metadata accessor for SFAirDrop.NetworkMetrics(0);
  sub_1A97E6230(v0 + *(v18 + 24), v4);
  if (v14(v4, 1, v7) == 1)
  {
    (*(v8 + 8))(v13, v7);
    v15 = v4;
    goto LABEL_5;
  }

  v17(v11, v4, v7);
  sub_1A99760D0();
  v21 = v20;
  v22 = *(v8 + 8);
  v22(v11, v7);
  result = (v22)(v13, v7);
  v23 = v21 * 1000.0;
  if (COERCE__INT64(fabs(v21 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v23 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v23 < 9.22337204e18)
  {
    return v23;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t SFAirDrop.NetworkMetrics.askSentMS.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2A30, &unk_1A99983A0);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v26 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v25 - v4;
  v6 = sub_1A9976230();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v25 - v11;
  v13 = type metadata accessor for SFAirDrop.NetworkMetrics(0);
  sub_1A97E6230(v0 + *(v13 + 28), v5);
  v14 = *(v7 + 48);
  if (v14(v5, 1, v6) == 1)
  {
    v15 = v5;
LABEL_5:
    sub_1A97B06FC(v15, &unk_1EB3B2A30, &unk_1A99983A0);
    return 0;
  }

  v16 = v5;
  v17 = *(v7 + 32);
  v17(v12, v16, v6);
  v18 = v0 + *(v13 + 32);
  v19 = v26;
  sub_1A97E6230(v18, v26);
  if (v14(v19, 1, v6) == 1)
  {
    (*(v7 + 8))(v12, v6);
    v15 = v19;
    goto LABEL_5;
  }

  v17(v10, v19, v6);
  sub_1A99760D0();
  v22 = v21;
  v23 = *(v7 + 8);
  v23(v10, v6);
  result = (v23)(v12, v6);
  v24 = v22 * 1000.0;
  if (COERCE__INT64(fabs(v22 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v24 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v24 < 9.22337204e18)
  {
    return v24;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t SFAirDrop.NetworkMetrics.askFinishedMS.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2A30, &unk_1A99983A0);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v26 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v25 - v4;
  v6 = sub_1A9976230();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v25 - v11;
  v13 = type metadata accessor for SFAirDrop.NetworkMetrics(0);
  sub_1A97E6230(v0 + *(v13 + 28), v5);
  v14 = *(v7 + 48);
  if (v14(v5, 1, v6) == 1)
  {
    v15 = v5;
LABEL_5:
    sub_1A97B06FC(v15, &unk_1EB3B2A30, &unk_1A99983A0);
    return 0;
  }

  v16 = v5;
  v17 = *(v7 + 32);
  v17(v12, v16, v6);
  v18 = v0 + *(v13 + 36);
  v19 = v26;
  sub_1A97E6230(v18, v26);
  if (v14(v19, 1, v6) == 1)
  {
    (*(v7 + 8))(v12, v6);
    v15 = v19;
    goto LABEL_5;
  }

  v17(v10, v19, v6);
  sub_1A99760D0();
  v22 = v21;
  v23 = *(v7 + 8);
  v23(v10, v6);
  result = (v23)(v12, v6);
  v24 = v22 * 1000.0;
  if (COERCE__INT64(fabs(v22 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v24 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v24 < 9.22337204e18)
  {
    return v24;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t SFAirDrop.NetworkMetrics.payload.getter()
{
  v1 = SFAirDrop.NetworkMetrics.helloSentMS.getter();
  v2 = MEMORY[0x1E69E7CC8];
  if (v1 >= 1)
  {
    SFAirDrop.NetworkMetrics.helloSentMS.getter();
    v3 = sub_1A9976E40();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1A97E3190(v3, 0x6E65536F6C6C6568, 0xEB00000000534D74, isUniquelyReferenced_nonNull_native);
  }

  if (SFAirDrop.NetworkMetrics.helloFinishedMS.getter() >= 1)
  {
    SFAirDrop.NetworkMetrics.helloFinishedMS.getter();
    v5 = sub_1A9976E40();
    v6 = swift_isUniquelyReferenced_nonNull_native();
    sub_1A97E3190(v5, 0x6E69466F6C6C6568, 0xEF534D6465687369, v6);
  }

  if (SFAirDrop.NetworkMetrics.askSentMS.getter() >= 1)
  {
    SFAirDrop.NetworkMetrics.askSentMS.getter();
    v7 = sub_1A9976E40();
    v8 = swift_isUniquelyReferenced_nonNull_native();
    sub_1A97E3190(v7, 0x4D746E65536B7361, 0xE900000000000053, v8);
  }

  if (SFAirDrop.NetworkMetrics.askFinishedMS.getter() >= 1)
  {
    SFAirDrop.NetworkMetrics.askFinishedMS.getter();
    v9 = sub_1A9976E40();
    v10 = swift_isUniquelyReferenced_nonNull_native();
    sub_1A97E3190(v9, 0x73696E69466B7361, 0xED0000534D646568, v10);
  }

  if (*(v0 + *(type metadata accessor for SFAirDrop.NetworkMetrics(0) + 56)))
  {
    v11 = sub_1A9976E40();
    v12 = swift_isUniquelyReferenced_nonNull_native();
    sub_1A97E3190(v11, 1769173874, 0xE400000000000000, v12);
  }

  v13 = sub_1A99767E0();

  v14 = swift_isUniquelyReferenced_nonNull_native();
  sub_1A97E3190(v13, 0xD000000000000013, 0x80000001A99E3ED0, v14);

  v15 = sub_1A99767E0();

  v16 = swift_isUniquelyReferenced_nonNull_native();
  sub_1A97E3190(v15, 0xD000000000000015, 0x80000001A99E3EF0, v16);
  return v2;
}

uint64_t SFAirDrop.NetworkMetrics.description.getter()
{
  sub_1A99772B0();
  MEMORY[0x1AC5895B0](0xD000000000000020, 0x80000001A99E3F10);
  v1 = type metadata accessor for SFAirDrop.NetworkMetrics(0);
  v2 = sub_1A9977730();
  MEMORY[0x1AC5895B0](v2);

  MEMORY[0x1AC5895B0](0xD000000000000011, 0x80000001A99E3F40);
  SFAirDrop.NetworkMetrics.helloSentMS.getter();
  v3 = sub_1A9977730();
  MEMORY[0x1AC5895B0](v3);

  MEMORY[0x1AC5895B0](0xD000000000000013, 0x80000001A99E3F60);
  SFAirDrop.NetworkMetrics.helloFinishedMS.getter();
  v4 = sub_1A9977730();
  MEMORY[0x1AC5895B0](v4);

  MEMORY[0x1AC5895B0](0x746E65536B736120, 0xED0000202D20534DLL);
  SFAirDrop.NetworkMetrics.askSentMS.getter();
  v5 = sub_1A9977730();
  MEMORY[0x1AC5895B0](v5);

  MEMORY[0x1AC5895B0](0xD000000000000011, 0x80000001A99E3F80);
  SFAirDrop.NetworkMetrics.askFinishedMS.getter();
  v6 = sub_1A9977730();
  MEMORY[0x1AC5895B0](v6);

  MEMORY[0x1AC5895B0](0xD000000000000017, 0x80000001A99E3FA0);
  v7 = (v0 + *(v1 + 60));
  if (v7[1])
  {
    v8 = *v7;
    v9 = v7[1];
  }

  else
  {
    v8 = 0x3E656E6F6E3CLL;
    v9 = 0xE600000000000000;
  }

  MEMORY[0x1AC5895B0](v8, v9);

  MEMORY[0x1AC5895B0](0xD000000000000019, 0x80000001A99E3FC0);
  v10 = (v0 + *(v1 + 64));
  if (v10[1])
  {
    v11 = *v10;
    v12 = v10[1];
  }

  else
  {
    v11 = 0x3E656E6F6E3CLL;
    v12 = 0xE600000000000000;
  }

  MEMORY[0x1AC5895B0](v11, v12);

  MEMORY[0x1AC5895B0](62, 0xE100000000000000);
  return 0;
}

unint64_t sub_1A97E7EC4(char a1)
{
  result = 0x6174536F6C6C6568;
  switch(a1)
  {
    case 1:
      result = 0x6E65536F6C6C6568;
      break;
    case 2:
      result = 0x6E69466F6C6C6568;
      break;
    case 3:
      result = 0x74726174536B7361;
      break;
    case 4:
      result = 0x746E65536B7361;
      break;
    case 5:
      result = 0x73696E69466B7361;
      break;
    case 6:
      result = 0x745364616F6C7075;
      break;
    case 7:
      result = 0x694664616F6C7075;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 0x525564616F6C7075;
      break;
    case 10:
      result = 1769173874;
      break;
    case 11:
      result = 0xD000000000000013;
      break;
    case 12:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1A97E806C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A97EA2A0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A97E8094(uint64_t a1)
{
  v2 = sub_1A97E9EF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A97E80D0(uint64_t a1)
{
  v2 = sub_1A97E9EF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFAirDrop.NetworkMetrics.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1E88, &qword_1A9994FB0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A97E9EF8();
  sub_1A9977AA0();
  v8[31] = 0;
  sub_1A9976230();
  sub_1A97EA6D8(&qword_1EB3B0C58, MEMORY[0x1E6969538]);
  sub_1A9977680();
  if (!v1)
  {
    type metadata accessor for SFAirDrop.NetworkMetrics(0);
    v8[30] = 1;
    sub_1A9977680();
    v8[29] = 2;
    sub_1A9977680();
    v8[28] = 3;
    sub_1A9977680();
    v8[27] = 4;
    sub_1A9977680();
    v8[26] = 5;
    sub_1A9977680();
    v8[25] = 6;
    sub_1A9977680();
    v8[24] = 7;
    sub_1A9977680();
    v8[15] = 8;
    sub_1A99776C0();
    v8[14] = 9;
    sub_1A99776C0();
    v8[13] = 10;
    sub_1A99776C0();
    v8[12] = 11;
    sub_1A9977650();
    v8[11] = 12;
    sub_1A9977650();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t SFAirDrop.NetworkMetrics.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a1;
  v60 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2A30, &unk_1A99983A0);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v62 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v64 = &v54 - v6;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v65 = &v54 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v73 = &v54 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v72 = &v54 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v70 = &v54 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v71 = &v54 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v74 = &v54 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1E98, &qword_1A9994FB8);
  v76 = *(v18 - 8);
  v77 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v80 = &v54 - v19;
  v20 = type metadata accessor for SFAirDrop.NetworkMetrics(0);
  v21 = (v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1A9976230();
  v25 = *(*(v24 - 8) + 56);
  v25(v23, 1, 1, v24);
  v69 = v21[7];
  v25(&v23[v69], 1, 1, v24);
  v68 = v21[8];
  v25(&v23[v68], 1, 1, v24);
  v67 = v21[9];
  v25(&v23[v67], 1, 1, v24);
  v66 = v21[10];
  v25(&v23[v66], 1, 1, v24);
  v63 = v21[11];
  v25(&v23[v63], 1, 1, v24);
  v61 = v21[12];
  v25(&v23[v61], 1, 1, v24);
  v26 = v21[13];
  v75 = v24;
  v25(&v23[v26], 1, 1, v24);
  v27 = v21[14];
  *&v23[v27] = 0;
  v28 = v21[15];
  *&v23[v28] = 0;
  v29 = v21[16];
  *&v23[v29] = 0;
  v30 = &v23[v21[17]];
  *v30 = 0;
  *(v30 + 1) = 0;
  v31 = v21[18];
  v79 = v23;
  v32 = &v23[v31];
  *v32 = 0;
  *(v32 + 1) = 0;
  __swift_project_boxed_opaque_existential_1(v81, v81[3]);
  sub_1A97E9EF8();
  v33 = v78;
  sub_1A9977A70();
  if (v33)
  {
    v34 = v79;
    __swift_destroy_boxed_opaque_existential_0Tm(v81);
    return sub_1A97E9F4C(v34);
  }

  else
  {
    v35 = v71;
    v78 = v26;
    v59 = v27;
    v36 = v72;
    v58 = v28;
    v57 = v29;
    v37 = v73;
    v56 = v30;
    v55 = v32;
    v94 = 0;
    sub_1A97EA6D8(&qword_1EB3B0CE0, MEMORY[0x1E6969558]);
    v38 = v74;
    sub_1A9977590();
    v39 = v38;
    v40 = v79;
    sub_1A97E6628(v39, v79);
    v93 = 1;
    sub_1A9977590();
    sub_1A97E6628(v35, v40 + v69);
    v92 = 2;
    v41 = v70;
    sub_1A9977590();
    sub_1A97E6628(v41, v40 + v68);
    v91 = 3;
    sub_1A9977590();
    sub_1A97E6628(v36, v40 + v67);
    v90 = 4;
    sub_1A9977590();
    sub_1A97E6628(v37, v40 + v66);
    v89 = 5;
    v42 = v65;
    sub_1A9977590();
    sub_1A97E6628(v42, v40 + v63);
    v88 = 6;
    v43 = v64;
    sub_1A9977590();
    sub_1A97E6628(v43, v40 + v61);
    v87 = 7;
    v44 = v62;
    sub_1A9977590();
    sub_1A97E6628(v44, v40 + v78);
    v86[0] = 8;
    *(v40 + v59) = sub_1A99775D0();
    v85 = 9;
    *&v79[v58] = sub_1A99775D0();
    v84 = 10;
    *&v79[v57] = sub_1A99775D0();
    v83 = 11;
    v46 = sub_1A9977550();
    v47 = v56;
    *v56 = v46;
    v47[1] = v48;
    v82 = 12;
    v49 = sub_1A9977550();
    v51 = v50;
    (*(v76 + 8))(v80, v77);
    v52 = v55;
    *v55 = v49;
    v52[1] = v51;
    v53 = v79;
    sub_1A97E9FA8(v79, v60);
    __swift_destroy_boxed_opaque_existential_0Tm(v81);
    return sub_1A97E9F4C(v53);
  }
}

BOOL _s7Sharing9SFAirDropO14NetworkMetricsV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A9976230();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v157 = &v139[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2A30, &unk_1A99983A0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v142 = &v139[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x1EEE9AC00](v8);
  v144 = &v139[-v11];
  v12 = MEMORY[0x1EEE9AC00](v10);
  v146 = &v139[-v13];
  v14 = MEMORY[0x1EEE9AC00](v12);
  v148 = &v139[-v15];
  v16 = MEMORY[0x1EEE9AC00](v14);
  v150 = &v139[-v17];
  v18 = MEMORY[0x1EEE9AC00](v16);
  v152 = &v139[-v19];
  v20 = MEMORY[0x1EEE9AC00](v18);
  v155 = &v139[-v21];
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v139[-v22];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1EB8, &unk_1A99A5F30);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v143 = &v139[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = MEMORY[0x1EEE9AC00](v25);
  v145 = &v139[-v28];
  v29 = MEMORY[0x1EEE9AC00](v27);
  v147 = &v139[-v30];
  v31 = MEMORY[0x1EEE9AC00](v29);
  v149 = &v139[-v32];
  v33 = MEMORY[0x1EEE9AC00](v31);
  v151 = &v139[-v34];
  v35 = MEMORY[0x1EEE9AC00](v33);
  v154 = &v139[-v36];
  v37 = MEMORY[0x1EEE9AC00](v35);
  v39 = &v139[-v38];
  v40 = MEMORY[0x1EEE9AC00](v37);
  v42 = &v139[-v41];
  v158 = v40;
  v43 = *(v40 + 48);
  sub_1A97E6230(a1, &v139[-v41]);
  sub_1A97E6230(a2, &v42[v43]);
  v44 = *(v5 + 48);
  v45 = (v44)(v42, 1, v4);
  v156 = v5 + 48;
  if (v45 == 1)
  {
    if ((v44)(&v42[v43], 1, v4) == 1)
    {
      v141 = v5;
      sub_1A97B06FC(v42, &unk_1EB3B2A30, &unk_1A99983A0);
      v153 = a2;
      goto LABEL_8;
    }

LABEL_6:
    v46 = v42;
LABEL_20:
    sub_1A97B06FC(v46, &qword_1EB3B1EB8, &unk_1A99A5F30);
    return 0;
  }

  sub_1A97E6230(v42, v23);
  if ((v44)(&v42[v43], 1, v4) == 1)
  {
    (*(v5 + 8))(v23, v4);
    goto LABEL_6;
  }

  v47 = &v42[v43];
  v48 = v157;
  (*(v5 + 32))(v157, v47, v4);
  sub_1A97EA6D8(&qword_1EB3B1EC0, MEMORY[0x1E6969550]);
  v140 = sub_1A99767A0();
  v141 = v5;
  v153 = a2;
  v49 = *(v5 + 8);
  v49(v48, v4);
  v49(v23, v4);
  sub_1A97B06FC(v42, &unk_1EB3B2A30, &unk_1A99983A0);
  if ((v140 & 1) == 0)
  {
    return 0;
  }

LABEL_8:
  v50 = type metadata accessor for SFAirDrop.NetworkMetrics(0);
  v51 = v50[5];
  v52 = *(v158 + 48);
  sub_1A97E6230(a1 + v51, v39);
  sub_1A97E6230(v153 + v51, v39 + v52);
  if ((v44)(v39, 1, v4) == 1)
  {
    if ((v44)(v39 + v52, 1, v4) != 1)
    {
LABEL_19:
      v46 = v39;
      goto LABEL_20;
    }

    v53 = v44;
    sub_1A97B06FC(v39, &unk_1EB3B2A30, &unk_1A99983A0);
  }

  else
  {
    v54 = v155;
    sub_1A97E6230(v39, v155);
    v55 = (v44)(v39 + v52, 1, v4);
    v56 = v141;
    if (v55 == 1)
    {
LABEL_12:
      (*(v56 + 8))(v54, v4);
      goto LABEL_19;
    }

    v53 = v44;
    v57 = v157;
    (*(v141 + 32))(v157, v39 + v52, v4);
    sub_1A97EA6D8(&qword_1EB3B1EC0, MEMORY[0x1E6969550]);
    v58 = sub_1A99767A0();
    v59 = v57;
    LOBYTE(v57) = v58;
    v60 = *(v56 + 8);
    v60(v59, v4);
    v60(v54, v4);
    sub_1A97B06FC(v39, &unk_1EB3B2A30, &unk_1A99983A0);
    if ((v57 & 1) == 0)
    {
      return 0;
    }
  }

  v61 = v50[6];
  v62 = *(v158 + 48);
  v39 = v154;
  sub_1A97E6230(a1 + v61, v154);
  sub_1A97E6230(v153 + v61, v39 + v62);
  v63 = v53;
  if (v53(v39, 1, v4) == 1)
  {
    if (v53(v39 + v62, 1, v4) != 1)
    {
      goto LABEL_19;
    }

    sub_1A97B06FC(v39, &unk_1EB3B2A30, &unk_1A99983A0);
  }

  else
  {
    v64 = v39;
    v65 = v39;
    v66 = v152;
    sub_1A97E6230(v64, v152);
    v67 = v63(v65 + v62, 1, v4);
    v68 = v141;
    if (v67 == 1)
    {
      goto LABEL_18;
    }

    v70 = *(v141 + 32);
    v155 = v63;
    v71 = v157;
    v70(v157, v65 + v62, v4);
    sub_1A97EA6D8(&qword_1EB3B1EC0, MEMORY[0x1E6969550]);
    v72 = v50;
    v73 = v71;
    v63 = v155;
    v74 = sub_1A99767A0();
    v75 = *(v68 + 8);
    v75(v73, v4);
    v75(v66, v4);
    v50 = v72;
    sub_1A97B06FC(v65, &unk_1EB3B2A30, &unk_1A99983A0);
    if ((v74 & 1) == 0)
    {
      return 0;
    }
  }

  v76 = v50[7];
  v77 = v158;
  v78 = *(v158 + 48);
  v79 = v151;
  sub_1A97E6230(a1 + v76, v151);
  sub_1A97E6230(v153 + v76, &v79[v78]);
  if (v63(v79, 1, v4) == 1)
  {
    if (v63(&v79[v78], 1, v4) == 1)
    {
      sub_1A97B06FC(v79, &unk_1EB3B2A30, &unk_1A99983A0);
      goto LABEL_30;
    }

LABEL_28:
    v46 = v79;
    goto LABEL_20;
  }

  v80 = v150;
  sub_1A97E6230(v79, v150);
  v81 = v63(&v79[v78], 1, v4);
  v82 = v141;
  if (v81 == 1)
  {
    (*(v141 + 8))(v80, v4);
    goto LABEL_28;
  }

  v83 = *(v141 + 32);
  v155 = v63;
  v84 = v157;
  v83(v157, &v79[v78], v4);
  sub_1A97EA6D8(&qword_1EB3B1EC0, MEMORY[0x1E6969550]);
  v154 = v50;
  v85 = v84;
  v63 = v155;
  v77 = v158;
  v86 = sub_1A99767A0();
  v87 = *(v82 + 8);
  v87(v85, v4);
  v87(v80, v4);
  v50 = v154;
  sub_1A97B06FC(v79, &unk_1EB3B2A30, &unk_1A99983A0);
  if ((v86 & 1) == 0)
  {
    return 0;
  }

LABEL_30:
  v88 = v50[8];
  v89 = *(v77 + 48);
  v39 = v149;
  sub_1A97E6230(a1 + v88, v149);
  sub_1A97E6230(v153 + v88, v39 + v89);
  if (v63(v39, 1, v4) != 1)
  {
    v90 = v39;
    v65 = v39;
    v66 = v148;
    sub_1A97E6230(v90, v148);
    v91 = v63(v65 + v89, 1, v4);
    v68 = v141;
    if (v91 != 1)
    {
      v92 = v65 + v89;
      v93 = v63;
      v94 = v157;
      (*(v141 + 32))(v157, v92, v4);
      sub_1A97EA6D8(&qword_1EB3B1EC0, MEMORY[0x1E6969550]);
      v154 = v50;
      v95 = v94;
      v63 = v93;
      v77 = v158;
      v96 = sub_1A99767A0();
      v97 = *(v68 + 8);
      v97(v95, v4);
      v97(v66, v4);
      v50 = v154;
      sub_1A97B06FC(v149, &unk_1EB3B2A30, &unk_1A99983A0);
      if ((v96 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_35;
    }

LABEL_18:
    (*(v68 + 8))(v66, v4);
    v39 = v65;
    goto LABEL_19;
  }

  if (v63(v39 + v89, 1, v4) != 1)
  {
    goto LABEL_19;
  }

  sub_1A97B06FC(v39, &unk_1EB3B2A30, &unk_1A99983A0);
LABEL_35:
  v98 = v50[9];
  v99 = *(v77 + 48);
  v100 = v147;
  sub_1A97E6230(a1 + v98, v147);
  sub_1A97E6230(v153 + v98, &v100[v99]);
  if (v63(v100, 1, v4) == 1)
  {
    if (v63(&v100[v99], 1, v4) == 1)
    {
      sub_1A97B06FC(v100, &unk_1EB3B2A30, &unk_1A99983A0);
      goto LABEL_42;
    }

LABEL_40:
    v46 = v100;
    goto LABEL_20;
  }

  v101 = v146;
  sub_1A97E6230(v100, v146);
  v102 = v63(&v100[v99], 1, v4);
  v103 = v141;
  if (v102 == 1)
  {
    (*(v141 + 8))(v101, v4);
    goto LABEL_40;
  }

  v104 = *(v141 + 32);
  v155 = v63;
  v105 = v157;
  v104(v157, &v100[v99], v4);
  sub_1A97EA6D8(&qword_1EB3B1EC0, MEMORY[0x1E6969550]);
  v106 = v50;
  v107 = v105;
  v63 = v155;
  v108 = sub_1A99767A0();
  v109 = *(v103 + 8);
  v109(v107, v4);
  v109(v101, v4);
  v50 = v106;
  sub_1A97B06FC(v100, &unk_1EB3B2A30, &unk_1A99983A0);
  if ((v108 & 1) == 0)
  {
    return 0;
  }

LABEL_42:
  v110 = v50[10];
  v111 = v158;
  v112 = *(v158 + 48);
  v39 = v145;
  sub_1A97E6230(a1 + v110, v145);
  sub_1A97E6230(v153 + v110, v39 + v112);
  if (v63(v39, 1, v4) == 1)
  {
    if (v63(v39 + v112, 1, v4) == 1)
    {
      sub_1A97B06FC(v39, &unk_1EB3B2A30, &unk_1A99983A0);
      goto LABEL_47;
    }

    goto LABEL_19;
  }

  v154 = v50;
  v54 = v144;
  sub_1A97E6230(v39, v144);
  v113 = v63(v39 + v112, 1, v4);
  v56 = v141;
  if (v113 == 1)
  {
    goto LABEL_12;
  }

  v114 = v63;
  v115 = v157;
  (*(v141 + 32))(v157, v39 + v112, v4);
  sub_1A97EA6D8(&qword_1EB3B1EC0, MEMORY[0x1E6969550]);
  v116 = v115;
  v63 = v114;
  v111 = v158;
  v117 = sub_1A99767A0();
  v118 = *(v56 + 8);
  v118(v116, v4);
  v118(v54, v4);
  sub_1A97B06FC(v39, &unk_1EB3B2A30, &unk_1A99983A0);
  v50 = v154;
  if ((v117 & 1) == 0)
  {
    return 0;
  }

LABEL_47:
  v154 = v50;
  v119 = v50[11];
  v120 = *(v111 + 48);
  v121 = v143;
  sub_1A97E6230(a1 + v119, v143);
  sub_1A97E6230(v153 + v119, &v121[v120]);
  if (v63(v121, 1, v4) == 1)
  {
    if (v63(&v121[v120], 1, v4) == 1)
    {
      sub_1A97B06FC(v121, &unk_1EB3B2A30, &unk_1A99983A0);
      goto LABEL_54;
    }

    goto LABEL_52;
  }

  sub_1A97E6230(v121, v142);
  if (v63(&v121[v120], 1, v4) == 1)
  {
    (*(v141 + 8))(v142, v4);
LABEL_52:
    v46 = v121;
    goto LABEL_20;
  }

  v122 = v121;
  v123 = v141;
  v124 = v157;
  (*(v141 + 32))(v157, v122 + v120, v4);
  sub_1A97EA6D8(&qword_1EB3B1EC0, MEMORY[0x1E6969550]);
  v125 = v142;
  v126 = sub_1A99767A0();
  v127 = *(v123 + 8);
  v127(v124, v4);
  v127(v125, v4);
  sub_1A97B06FC(v122, &unk_1EB3B2A30, &unk_1A99983A0);
  if ((v126 & 1) == 0)
  {
    return 0;
  }

LABEL_54:
  if (*(a1 + v154[12]) != *(v153 + v154[12]) || *(a1 + v154[13]) != *(v153 + v154[13]) || *(a1 + v154[14]) != *(v153 + v154[14]))
  {
    return 0;
  }

  v128 = v154[15];
  v129 = (a1 + v128);
  v130 = *(a1 + v128 + 8);
  v131 = v153;
  v132 = (v153 + v128);
  v133 = v132[1];
  if (v130)
  {
    if (!v133 || (*v129 != *v132 || v130 != v133) && (sub_1A99777E0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v133)
  {
    return 0;
  }

  v134 = v154[16];
  v135 = (a1 + v134);
  v136 = *(a1 + v134 + 8);
  v137 = (v131 + v134);
  v138 = v137[1];
  if (v136)
  {
    return v138 && (*v135 == *v137 && v136 == v138 || (sub_1A99777E0() & 1) != 0);
  }

  return !v138;
}