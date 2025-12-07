uint64_t sub_221B1EEB8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_221BCC948();
  MEMORY[0x28223BE20](v7 - 8);
  Response = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformQueryResponse(0);
  MEMORY[0x28223BE20](Response);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v16 - v12;
  v18 = a1;
  v19 = a2;
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  sub_2219EBFC8(a1, a2);
  sub_221BCC938();
  sub_221AE8904(&unk_27CFBB150, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformQueryResponse, &unk_221BDC710);
  sub_221BCCB28();
  if (v3)
  {
    return sub_2219EC040(a1, a2);
  }

  sub_221B22BD0(v13, v10, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformQueryResponse);
  sub_221B08E78();
  sub_221B22C2C(v13, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformQueryResponse);
  result = sub_2219EC040(a1, a2);
  v15 = v21;
  *a3 = v20;
  *(a3 + 16) = v15;
  *(a3 + 32) = v22;
  return result;
}

uint64_t sub_221B1F0D4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_221BCC948();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = type metadata accessor for AppIntentsProtobuf_ClientMessages.ReleaseAsyncSequenceRequest(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v18 - v12;
  v21 = a1;
  v22 = a2;
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  sub_2219EBFC8(a1, a2);
  sub_221BCC938();
  sub_221AE8904(&unk_27CFBB120, type metadata accessor for AppIntentsProtobuf_ClientMessages.ReleaseAsyncSequenceRequest, &unk_221BDE358);
  sub_221BCCB28();
  if (v3)
  {
    return sub_2219EC040(a1, a2);
  }

  sub_221B22BD0(v13, v10, type metadata accessor for AppIntentsProtobuf_ClientMessages.ReleaseAsyncSequenceRequest);
  sub_221B0A020();
  sub_221B22C2C(v13, type metadata accessor for AppIntentsProtobuf_ClientMessages.ReleaseAsyncSequenceRequest);
  result = sub_2219EC040(a1, a2);
  v15 = v19;
  v16 = BYTE1(v19);
  v17 = *(&v19 + 1);
  *a3 = v18;
  *(a3 + 16) = v15;
  *(a3 + 17) = v16;
  *(a3 + 24) = v17;
  return result;
}

uint64_t sub_221B1F2FC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_221BCC948();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v17 - v12;
  v20 = a1;
  v21 = a2;
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  sub_2219EBFC8(a1, a2);
  sub_221BCC938();
  sub_221AE8904(&unk_27CFBB0F0, type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata, &unk_221BDD980);
  sub_221BCCB28();
  if (v3)
  {
    return sub_2219EC040(a1, a2);
  }

  sub_221B22BD0(v13, v10, type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata);
  sub_221AE9D08();
  sub_221B22C2C(v13, type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata);
  result = sub_2219EC040(a1, a2);
  v15 = v18;
  v16 = BYTE1(v18);
  *a3 = v17;
  *(a3 + 16) = v15;
  *(a3 + 17) = v16;
  return result;
}

uint64_t sub_221B1F518(uint64_t a1, unint64_t a2)
{
  v5 = sub_221BCC948();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for AppIntentsProtobuf_Action(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - v10;
  v24 = a1;
  v25 = a2;
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  sub_2219EBFC8(a1, a2);
  sub_221BCC938();
  sub_221AE8904(&unk_27CFBB050, type metadata accessor for AppIntentsProtobuf_Action, &unk_221BDAD48);
  sub_221BCCB28();
  if (!v2)
  {
    sub_221B22BD0(v11, v8, type metadata accessor for AppIntentsProtobuf_Action);
    sub_221AF2910(v8, v12, v13, v14, v15, v16, v17, v18, v20, *(&v20 + 1), v21, *(&v21 + 1), v22, v23, v24, v25, v26, v27, v28, v29);
    sub_221B22C2C(v11, type metadata accessor for AppIntentsProtobuf_Action);
  }

  return sub_2219EC040(a1, a2);
}

uint64_t sub_221B1F8F4(uint64_t a1, uint64_t a2)
{
  v3 = sub_221BCC908();
  MEMORY[0x28223BE20](v3 - 8);
  DeferredPropertyValueRequest = type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchDeferredPropertyValueRequest(0);
  MEMORY[0x28223BE20](DeferredPropertyValueRequest);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v11 - v8;
  sub_221BCC8F8();
  sub_221BCC8E8();
  sub_221AE8904(&unk_27CFBB520, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchDeferredPropertyValueRequest, &unk_221BDE790);
  result = sub_221BCCAF8();
  if (!v2)
  {
    sub_221B22BD0(v9, v6, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchDeferredPropertyValueRequest);
    sub_221AEFBF4();
    return sub_221B22C2C(v9, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchDeferredPropertyValueRequest);
  }

  return result;
}

uint64_t sub_221B1FAB0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_221BCC908();
  MEMORY[0x28223BE20](v4 - 8);
  DeferredPropertyValueResponse = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchDeferredPropertyValueResponse(0);
  MEMORY[0x28223BE20](DeferredPropertyValueResponse);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - v9;
  sub_221BCC8F8();
  sub_221BCC8E8();
  sub_221AE8904(&unk_27CFBB4F0, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchDeferredPropertyValueResponse, &unk_221BDC440);
  sub_221BCCAF8();
  if (!v2)
  {
    sub_221B22BD0(v10, v7, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchDeferredPropertyValueResponse);
    sub_221AF0564();
    v3 = v12;
    sub_221B22C2C(v10, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchDeferredPropertyValueResponse);
  }

  return v3;
}

uint64_t sub_221B1FC98(uint64_t a1, uint64_t a2)
{
  v3 = sub_221BCC908();
  MEMORY[0x28223BE20](v3 - 8);
  FileChunkRequest = type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchFileChunkRequest(0);
  MEMORY[0x28223BE20](FileChunkRequest);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v11 - v8;
  sub_221BCC8F8();
  sub_221BCC8E8();
  sub_221AE8904(&unk_27CFBB4C0, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchFileChunkRequest, &unk_221BDE1F0);
  result = sub_221BCCAF8();
  if (!v2)
  {
    sub_221B22BD0(v9, v6, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchFileChunkRequest);
    sub_221AF0E1C();
    return sub_221B22C2C(v9, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchFileChunkRequest);
  }

  return result;
}

uint64_t sub_221B2003C(uint64_t a1, uint64_t a2)
{
  v3 = sub_221BCC908();
  MEMORY[0x28223BE20](v3 - 8);
  OptionsForActionRequest = type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchOptionsForActionRequest(0);
  MEMORY[0x28223BE20](OptionsForActionRequest);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v11 - v8;
  sub_221BCC8F8();
  sub_221BCC8E8();
  sub_221AE8904(&unk_27CFBB430, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchOptionsForActionRequest, &unk_221BDE088);
  result = sub_221BCCAF8();
  if (!v2)
  {
    sub_221B22BD0(v9, v6, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchOptionsForActionRequest);
    sub_221AF250C();
    return sub_221B22C2C(v9, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchOptionsForActionRequest);
  }

  return result;
}

uint64_t sub_221B201F8(uint64_t a1, uint64_t a2)
{
  v3 = sub_221BCC908();
  MEMORY[0x28223BE20](v3 - 8);
  restarted = type metadata accessor for AppIntentsProtobuf_ClientMessages.RestartObservingEventRequest(0);
  MEMORY[0x28223BE20](restarted);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v11 - v8;
  sub_221BCC8F8();
  sub_221BCC8E8();
  sub_221AE8904(&unk_27CFBB3D0, type metadata accessor for AppIntentsProtobuf_ClientMessages.RestartObservingEventRequest, &unk_221BDDC50);
  result = sub_221BCCAF8();
  if (!v2)
  {
    sub_221B22BD0(v9, v6, type metadata accessor for AppIntentsProtobuf_ClientMessages.RestartObservingEventRequest);
    sub_221AF55AC();
    return sub_221B22C2C(v9, type metadata accessor for AppIntentsProtobuf_ClientMessages.RestartObservingEventRequest);
  }

  return result;
}

uint64_t sub_221B203B4(uint64_t a1, uint64_t a2)
{
  v3 = sub_221BCC908();
  MEMORY[0x28223BE20](v3 - 8);
  started = type metadata accessor for AppIntentsProtobuf_HostMessages.StartObservingEventResponse(0);
  MEMORY[0x28223BE20](started);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v11 - v8;
  sub_221BCC8F8();
  sub_221BCC8E8();
  sub_221AE8904(&unk_27CFBB370, type metadata accessor for AppIntentsProtobuf_HostMessages.StartObservingEventResponse, &unk_221BDB900);
  result = sub_221BCCAF8();
  if (!v2)
  {
    sub_221B22BD0(v9, v6, type metadata accessor for AppIntentsProtobuf_HostMessages.StartObservingEventResponse);
    sub_221AF66A0();
    return sub_221B22C2C(v9, type metadata accessor for AppIntentsProtobuf_HostMessages.StartObservingEventResponse);
  }

  return result;
}

uint64_t sub_221B20570(uint64_t a1, uint64_t a2)
{
  v3 = sub_221BCC908();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = type metadata accessor for AppIntentsProtobuf_ClientMessages.StopObservingEventRequest(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v11 - v8;
  sub_221BCC8F8();
  sub_221BCC8E8();
  sub_221AE8904(&unk_27CFBB340, type metadata accessor for AppIntentsProtobuf_ClientMessages.StopObservingEventRequest, &unk_221BDDDB8);
  result = sub_221BCCAF8();
  if (!v2)
  {
    sub_221B22BD0(v9, v6, type metadata accessor for AppIntentsProtobuf_ClientMessages.StopObservingEventRequest);
    sub_221AF6A68();
    return sub_221B22C2C(v9, type metadata accessor for AppIntentsProtobuf_ClientMessages.StopObservingEventRequest);
  }

  return result;
}

uint64_t sub_221B2072C(uint64_t a1, uint64_t a2)
{
  v3 = sub_221BCC908();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v11 - v8;
  sub_221BCC8F8();
  sub_221BCC8E8();
  sub_221AE8904(&unk_27CFBB310, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest, &unk_221BE0810);
  result = sub_221BCCAF8();
  if (!v2)
  {
    sub_221B22BD0(v9, v6, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest);
    sub_221AF7CB8();
    return sub_221B22C2C(v9, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest);
  }

  return result;
}

uint64_t sub_221B208E8(uint64_t a1, uint64_t a2)
{
  v3 = sub_221BCC908();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v11 - v8;
  sub_221BCC8F8();
  sub_221BCC8E8();
  sub_221AE8904(&unk_27CFBB2E0, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse, &unk_221BDD6B0);
  result = sub_221BCCAF8();
  if (!v2)
  {
    sub_221B22BD0(v9, v6, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse);
    sub_221AF9560();
    return sub_221B22C2C(v9, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse);
  }

  return result;
}

void sub_221B20AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_55_4();
  a19 = v21;
  a20 = v22;
  v23 = sub_221BCC908();
  v24 = OUTLINED_FUNCTION_8_1(v23);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_4_0();
  v25 = OUTLINED_FUNCTION_85_3();
  type metadata accessor for AppIntentsProtobuf_ClientMessages.ConfirmationResponse(v25);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_9_5();
  OUTLINED_FUNCTION_164();
  MEMORY[0x28223BE20](v27);
  v29 = &a9 - v28;
  sub_221BCC8F8();
  sub_221BCC8E8();
  OUTLINED_FUNCTION_29_9();
  sub_221AE8904(v30, v31, &unk_221BDFFA0);
  OUTLINED_FUNCTION_14();
  sub_221BCCAF8();
  if (!v20)
  {
    v32 = OUTLINED_FUNCTION_3_4();
    sub_221B22BD0(v32, v33, v34);
    sub_221AFF7DC();
    OUTLINED_FUNCTION_32_9();
    sub_221B22C2C(v29, v35);
  }

  OUTLINED_FUNCTION_53_5();
}

uint64_t sub_221B20C0C(uint64_t a1, uint64_t a2)
{
  v3 = sub_221BCC908();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = type metadata accessor for AppIntentsProtobuf_ClientMessages.ContinueInAppResponse(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v11 - v8;
  sub_221BCC8F8();
  sub_221BCC8E8();
  sub_221AE8904(&unk_27CFBB260, type metadata accessor for AppIntentsProtobuf_ClientMessages.ContinueInAppResponse, &unk_221BDFE38);
  result = sub_221BCCAF8();
  if (!v2)
  {
    sub_221B22BD0(v9, v6, type metadata accessor for AppIntentsProtobuf_ClientMessages.ContinueInAppResponse);
    sub_221AFFF9C();
    return sub_221B22C2C(v9, type metadata accessor for AppIntentsProtobuf_ClientMessages.ContinueInAppResponse);
  }

  return result;
}

uint64_t sub_221B20DC8(uint64_t a1, uint64_t a2)
{
  v3 = sub_221BCC908();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = type metadata accessor for AppIntentsProtobuf_ClientMessages.DisambiguationResponse(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v11 - v8;
  sub_221BCC8F8();
  sub_221BCC8E8();
  sub_221AE8904(&unk_27CFBB230, type metadata accessor for AppIntentsProtobuf_ClientMessages.DisambiguationResponse, &unk_221BE03D8);
  result = sub_221BCCAF8();
  if (!v2)
  {
    sub_221B22BD0(v9, v6, type metadata accessor for AppIntentsProtobuf_ClientMessages.DisambiguationResponse);
    sub_221B0071C();
    return sub_221B22C2C(v9, type metadata accessor for AppIntentsProtobuf_ClientMessages.DisambiguationResponse);
  }

  return result;
}

uint64_t sub_221B20F84(uint64_t a1, uint64_t a2)
{
  v3 = sub_221BCC908();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = type metadata accessor for AppIntentsProtobuf_ClientMessages.ChoiceResponse(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v11 - v8;
  sub_221BCC8F8();
  sub_221BCC8E8();
  sub_221AE8904(&unk_27CFBB200, type metadata accessor for AppIntentsProtobuf_ClientMessages.ChoiceResponse, &unk_221BE0270);
  result = sub_221BCCAF8();
  if (!v2)
  {
    sub_221B22BD0(v9, v6, type metadata accessor for AppIntentsProtobuf_ClientMessages.ChoiceResponse);
    sub_221B010E4();
    return sub_221B22C2C(v9, type metadata accessor for AppIntentsProtobuf_ClientMessages.ChoiceResponse);
  }

  return result;
}

uint64_t sub_221B21140(uint64_t a1, uint64_t a2)
{
  v3 = sub_221BCC908();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = type metadata accessor for AppIntentsProtobuf_ClientMessages.NeedsValueResponse(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v11 - v8;
  sub_221BCC8F8();
  sub_221BCC8E8();
  sub_221AE8904(&unk_27CFBB1B0, type metadata accessor for AppIntentsProtobuf_ClientMessages.NeedsValueResponse, &unk_221BE0108);
  result = sub_221BCCAF8();
  if (!v2)
  {
    sub_221B22BD0(v9, v6, type metadata accessor for AppIntentsProtobuf_ClientMessages.NeedsValueResponse);
    sub_221B01874();
    return sub_221B22C2C(v9, type metadata accessor for AppIntentsProtobuf_ClientMessages.NeedsValueResponse);
  }

  return result;
}

uint64_t sub_221B212FC(uint64_t a1, uint64_t a2)
{
  v3 = sub_221BCC908();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = type metadata accessor for AppIntentsProtobuf_ClientMessages.NeedsValueResponse(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v11 - v8;
  sub_221BCC8F8();
  sub_221BCC8E8();
  sub_221AE8904(&unk_27CFBB1B0, type metadata accessor for AppIntentsProtobuf_ClientMessages.NeedsValueResponse, &unk_221BE0108);
  result = sub_221BCCAF8();
  if (!v2)
  {
    sub_221B22BD0(v9, v6, type metadata accessor for AppIntentsProtobuf_ClientMessages.NeedsValueResponse);
    sub_221B02198();
    return sub_221B22C2C(v9, type metadata accessor for AppIntentsProtobuf_ClientMessages.NeedsValueResponse);
  }

  return result;
}

uint64_t sub_221B214B8(uint64_t a1, uint64_t a2)
{
  v3 = sub_221BCC908();
  MEMORY[0x28223BE20](v3 - 8);
  Request = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest(0);
  MEMORY[0x28223BE20](Request);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v11 - v8;
  sub_221BCC8F8();
  sub_221BCC8E8();
  sub_221AE8904(&unk_27CFBB180, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest, &unk_221BDFB68);
  result = sub_221BCCAF8();
  if (!v2)
  {
    sub_221B22BD0(v9, v6, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest);
    sub_221B02554();
    return sub_221B22C2C(v9, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest);
  }

  return result;
}

uint64_t sub_221B21674@<X0>(uint64_t a3@<X8>)
{
  v5 = sub_221BCC908();
  MEMORY[0x28223BE20](v5 - 8);
  Response = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformQueryResponse(0);
  MEMORY[0x28223BE20](Response);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v11 = &v14[-v10];
  sub_221BCC8F8();
  sub_221BCC8E8();
  sub_221AE8904(&unk_27CFBB150, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformQueryResponse, &unk_221BDC710);
  result = sub_221BCCAF8();
  if (!v3)
  {
    sub_221B22BD0(v11, v8, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformQueryResponse);
    sub_221B08E78();
    result = sub_221B22C2C(v11, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformQueryResponse);
    v13 = v15;
    *a3 = *&v14[8];
    *(a3 + 16) = v13;
    *(a3 + 32) = v16;
  }

  return result;
}

id sub_221B21A08(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_221BCC508();
  v7 = [v3 initWithSequenceIdentifier:v6 iteratorIdentifier:a2];

  v8 = sub_221BCC558();
  (*(*(v8 - 8) + 8))(a1, v8);
  return v7;
}

id sub_221B21AA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  if (a2)
  {
    v14 = sub_221BCD358();

    if (a4)
    {
LABEL_3:
      v15 = sub_221BCD358();

      goto LABEL_6;
    }
  }

  else
  {
    v14 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v15 = 0;
LABEL_6:
  v16 = sub_221BCC448();
  if (a8)
  {
    v17 = sub_221BCD358();
  }

  else
  {
    v17 = 0;
  }

  v18 = [v9 initWithContainerBundleIdentifier:v14 targetBundleIdentifier:v15 snippetModelData:v16 snippetModelBundleIdentifier:v17];

  sub_2219EC040(a5, a6);
  return v18;
}

id sub_221B21BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v7 = v6;
  if (!a2)
  {
    v11 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v12 = 0;
    goto LABEL_6;
  }

  v11 = sub_221BCD358();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v12 = sub_221BCD358();

LABEL_6:
  v13 = sub_221BCC448();
  v14 = [v7 initWithContainerBundleIdentifier:v11 targetBundleIdentifier:v12 viewData:v13];

  sub_2219EC040(a5, a6);
  return v14;
}

_BYTE *sub_221B21D0C(_BYTE *result)
{
  v2 = *(v1 + 17);
  *result = *(v1 + 16);
  result[1] = v2;
  return result;
}

void sub_221B21F94(uint64_t a1, uint64_t a2)
{
  v4 = sub_221BCC278();
  if (v4)
  {
    v5 = sub_221BCC2A8();
    if (__OFSUB__(a1, v5))
    {
LABEL_13:
      __break(1u);
      return;
    }

    v4 += a1 - v5;
  }

  v6 = __OFSUB__(a2, a1);
  v7 = a2 - a1;
  if (v6)
  {
    __break(1u);
    goto LABEL_13;
  }

  v8 = sub_221BCC298();
  if (v8 >= v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = v8;
  }

  v11 = v10 + v4;
  if (v4)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  sub_221B172B4(v4, v12, v9);
}

__n128 sub_221B220CC(__n128 *a1)
{
  result = v1[1];
  *a1 = result;
  return result;
}

uint64_t __swift_deallocate_boxed_opaque_existential_1(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x223DA4C00);
  }

  return result;
}

uint64_t sub_221B229DC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2_1();
  v4 = OUTLINED_FUNCTION_0_0();
  v5(v4);
  return a2;
}

uint64_t sub_221B22A38(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_29(a1, a2, a3, a4);
  OUTLINED_FUNCTION_2_1();
  v5 = OUTLINED_FUNCTION_0_0();
  v6(v5);
  return v4;
}

uint64_t sub_221B22AD8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_29(a1, a2, a3, a4);
  OUTLINED_FUNCTION_2_1();
  v5 = OUTLINED_FUNCTION_0_0();
  v6(v5);
  return v4;
}

uint64_t sub_221B22B3C()
{
  OUTLINED_FUNCTION_206_2();
  OUTLINED_FUNCTION_248_1();
  if (v6)
  {
    v5 = 0;
  }

  return sub_221AF1608(v0, v1, v2, v3, v5 | v4);
}

uint64_t sub_221B22B6C(uint64_t a1)
{
  OUTLINED_FUNCTION_248_1();
  if (v7)
  {
    v6 = 0;
  }

  return sub_221B0A37C(v1, v2, v3, v6 | v5, v4);
}

uint64_t sub_221B22BA0(uint64_t a1)
{
  OUTLINED_FUNCTION_248_1();
  if (v6)
  {
    v5 = 0;
  }

  return sub_221B0D76C(v1, v2, v3, v5 | v4);
}

uint64_t sub_221B22BD0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2_1();
  v4 = OUTLINED_FUNCTION_0_0();
  v5(v4);
  return a2;
}

uint64_t sub_221B22C2C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_9_16()
{

  return sub_221B22C2C(v0, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse);
}

void OUTLINED_FUNCTION_37_5()
{
  v2 = (v0 + *(v1 + 20));
  *v2 = 0;
  v2[1] = 0;
  *(v0 + *(v1 + 24)) = 0;
}

uint64_t OUTLINED_FUNCTION_38_6()
{

  return sub_221B22C2C(v0, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest);
}

uint64_t OUTLINED_FUNCTION_39_9()
{

  return sub_221B22C2C(v0, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformQueryResponse.Success);
}

uint64_t OUTLINED_FUNCTION_64_5()
{

  return sub_221B22C2C(v0, type metadata accessor for AppIntentsProtobuf_ClientMessages.StartObservingEventRequest);
}

uint64_t OUTLINED_FUNCTION_65_6()
{

  return sub_221B22C2C(v0, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchFileChunkRequest);
}

uint64_t OUTLINED_FUNCTION_66_4()
{

  return sub_221B22C2C(v0, type metadata accessor for AppIntentsProtobuf_ClientMessages.CreateAsyncIteratorRequest);
}

uint64_t OUTLINED_FUNCTION_67_5()
{

  return sub_221B22C2C(v0, type metadata accessor for AppIntentsProtobuf_FileDescriptor);
}

uint64_t OUTLINED_FUNCTION_68_4()
{

  return sub_221B22C2C(v0, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchOptionsForActionResponse);
}

uint64_t OUTLINED_FUNCTION_69_4()
{

  return sub_221B22C2C(v0, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse);
}

uint64_t OUTLINED_FUNCTION_71_4()
{

  return sub_221BCE1E8();
}

uint64_t OUTLINED_FUNCTION_76_3(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

void OUTLINED_FUNCTION_100_4()
{
  v2 = (v1 + *(v0 + 20));
  *v2 = 0;
  v2[1] = 0;
}

uint64_t OUTLINED_FUNCTION_105_5()
{

  return sub_221B22A38(v2, v0, v1, v3);
}

uint64_t OUTLINED_FUNCTION_113_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = a13;

  return __swift_mutable_project_boxed_opaque_existential_1(&a10, v14);
}

uint64_t OUTLINED_FUNCTION_125_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_221BCCB58();
}

uint64_t OUTLINED_FUNCTION_126_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_221BCCB58();
}

uint64_t OUTLINED_FUNCTION_128_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_221BCCB58();
}

uint64_t OUTLINED_FUNCTION_143_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_221BCCB58();
}

uint64_t OUTLINED_FUNCTION_152_4()
{
  v2 = *(v0 + 432);

  return sub_221B22C2C(v2, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIntentValue);
}

uint64_t OUTLINED_FUNCTION_155_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_221BCCB58();
}

uint64_t OUTLINED_FUNCTION_183_2()
{

  return sub_221B22C2C(v1, v0);
}

uint64_t OUTLINED_FUNCTION_184_1()
{

  return sub_2219A02E8(v0 + v2, v1, v3, v4);
}

uint64_t OUTLINED_FUNCTION_185_2@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 72) = v1;
  *(v2 - 88) = a1;

  return type metadata accessor for AppIntentsProtobuf_Error(0);
}

uint64_t OUTLINED_FUNCTION_187_2(uint64_t a1, uint64_t a2)
{
  *(a2 + 16) = v2;
  *(a2 + 24) = 0;
  *(a2 + 32) = v3;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_193_3(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 1;

  return swift_willThrow();
}

void OUTLINED_FUNCTION_194_2(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

void OUTLINED_FUNCTION_196_1(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

void OUTLINED_FUNCTION_219_3()
{
  *(v1 + 209) = v0;
  *v1 = *(v3 - 72);
  *(v1 + 8) = *(v2 + 416);
}

uint64_t OUTLINED_FUNCTION_220_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_221BCCB58();
}

uint64_t OUTLINED_FUNCTION_221_3()
{

  return sub_2219A1CC8(v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_222_3()
{

  return sub_2219A1CC8(v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_223_3(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = *(v5 - 96);

  return sub_2219A02E8(v4, v7, a3, a4);
}

uint64_t OUTLINED_FUNCTION_224_1()
{
}

uint64_t OUTLINED_FUNCTION_225_1()
{

  return sub_2219982C4(0, 2);
}

void OUTLINED_FUNCTION_229_1(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

uint64_t OUTLINED_FUNCTION_233_1(uint64_t result)
{
  v4 = v3 + *(result + 20);
  *v4 = v2;
  *(v4 + 8) = v1;
  return result;
}

void OUTLINED_FUNCTION_240_2()
{
  *(v5 - 120) = v3;
  *(v5 - 112) = v4;
  *(v5 - 104) = v0;
  *(v5 - 96) = v2;
  *(v5 - 88) = v1 & 1;
}

uint64_t OUTLINED_FUNCTION_249_2@<X0>(uint64_t a2@<X8>)
{
  *v2 = *(a2 - 256);

  return sub_221BCC8C8();
}

uint64_t OUTLINED_FUNCTION_250_2@<X0>(uint64_t a1@<X8>)
{

  return sub_2219A02E8(v2 + a1, v3, v4, v1);
}

uint64_t OUTLINED_FUNCTION_251_2()
{
}

uint64_t sub_221B23FB8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v12 = MEMORY[0x277D84F90];
    sub_2219A30F4(0, v1, 0);
    v2 = v12;
    v4 = a1 + 32;
    do
    {
      sub_221B223B4(v4, v11);
      v12 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_2219A30F4(v5 > 1, v6 + 1, 1);
        v2 = v12;
      }

      v9 = &type metadata for AppIntentsProtocol.PerformAction.DisambiguationRequest.ProvidedValue;
      v10 = &off_283518B58;
      *&v8 = swift_allocObject();
      sub_221B223B4(v11, v8 + 16);
      *(v2 + 16) = v6 + 1;
      sub_2219A1D64(&v8, v2 + 40 * v6 + 32);
      sub_221B2242C(v11);
      v4 += 96;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_221B240E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[21] = a4;
  v5[22] = v4;
  v5[19] = a2;
  v5[20] = a3;
  v5[18] = a1;
  return OUTLINED_FUNCTION_6_1();
}

uint64_t sub_221B24100()
{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 152);
  v2 = v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8348, &qword_221BD2E18) + 28);
  sub_221B24940(v2, v0 + 16, &qword_27CFB8320, &unk_221BD1D60);
  sub_221B24940(v2 + 40, v0 + 56, &unk_27CFBB7B0, &unk_221BE4C10);
  sub_221B24940(v2 + 80, v0 + 96, &unk_27CFB93B0, &qword_221BD1D70);
  *(v0 + 136) = *(v2 + 120);
  OUTLINED_FUNCTION_8_16();
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 184) = v3;
  *v3 = v4;
  v3[1] = sub_221B2427C;
  v5 = OUTLINED_FUNCTION_9_17();

  return v6(v5);
}

uint64_t sub_221B2427C()
{
  OUTLINED_FUNCTION_8_0();
  v3 = v2;
  OUTLINED_FUNCTION_21_0();
  v5 = v4;
  OUTLINED_FUNCTION_17_3();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_9_0();
  *v8 = v7;
  *(v5 + 192) = v0;

  if (v0)
  {
    sub_2219F6CCC(v5 + 16);
    v9 = sub_221B24458;
  }

  else
  {
    *(v5 + 137) = v3 & 1;
    sub_2219F6CCC(v5 + 16);
    v9 = sub_221B243A4;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_221B243A4()
{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 137);
  sub_221BCC558();
  OUTLINED_FUNCTION_0_29();
  v2 = OUTLINED_FUNCTION_0_0();
  v3(v2);
  v4 = *(v0 + 144);
  v5 = *(v0 + 192) != 0;
  v6 = v4 + *(type metadata accessor for AppIntentsProtocol.PerformAction.ActionConfirmationResponse(0) + 20);
  *v6 = v1;
  *(v6 + 8) = v5;
  OUTLINED_FUNCTION_25();

  return v7();
}

uint64_t sub_221B24458()
{
  OUTLINED_FUNCTION_8_0();
  sub_221BCC558();
  OUTLINED_FUNCTION_0_29();
  v1 = OUTLINED_FUNCTION_118_0();
  v2(v1);
  sub_221BCC328();
  OUTLINED_FUNCTION_213_0();
  v3 = *(v0 + 192) != 0;
  v4 = type metadata accessor for AppIntentsProtocol.PerformAction.ActionConfirmationResponse(0);
  OUTLINED_FUNCTION_4_21(v4);
  *(v5 + 8) = v3;
  OUTLINED_FUNCTION_25();

  return v6();
}

uint64_t sub_221B24510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[25] = a4;
  v5[26] = v4;
  v5[23] = a2;
  v5[24] = a3;
  v5[22] = a1;
  return OUTLINED_FUNCTION_6_1();
}

uint64_t sub_221B2452C()
{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 184);
  v2 = v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB93D0, &qword_221BD2E10) + 28);
  sub_221B24940(v2, v0 + 16, &qword_27CFB8320, &unk_221BD1D60);
  sub_2219A1B08(v2 + 40, v0 + 56);
  sub_221B24940(v2 + 80, v0 + 96, &qword_27CFB7F20, &qword_221BD2008);
  sub_221B24940(v2 + 120, v0 + 136, &unk_27CFB93B0, &qword_221BD1D70);
  OUTLINED_FUNCTION_8_16();
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 216) = v3;
  *v3 = v4;
  v3[1] = sub_221B246AC;
  v5 = OUTLINED_FUNCTION_9_17();

  return v6(v5);
}

uint64_t sub_221B246AC()
{
  OUTLINED_FUNCTION_8_0();
  v3 = v2;
  OUTLINED_FUNCTION_21_0();
  v5 = v4;
  OUTLINED_FUNCTION_17_3();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_9_0();
  *v8 = v7;
  *(v5 + 224) = v0;

  if (v0)
  {
    sub_2219F6DF0(v5 + 16);
    v9 = sub_221B24888;
  }

  else
  {
    *(v5 + 232) = v3 & 1;
    sub_2219F6DF0(v5 + 16);
    v9 = sub_221B247D4;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_221B247D4()
{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 232);
  sub_221BCC558();
  OUTLINED_FUNCTION_0_29();
  v2 = OUTLINED_FUNCTION_0_0();
  v3(v2);
  v4 = *(v0 + 176);
  v5 = *(v0 + 224) != 0;
  v6 = v4 + *(type metadata accessor for AppIntentsProtocol.PerformAction.ConfirmationResponse(0) + 20);
  *v6 = v1;
  *(v6 + 8) = v5;
  OUTLINED_FUNCTION_25();

  return v7();
}

uint64_t sub_221B24888()
{
  OUTLINED_FUNCTION_8_0();
  sub_221BCC558();
  OUTLINED_FUNCTION_0_29();
  v1 = OUTLINED_FUNCTION_118_0();
  v2(v1);
  sub_221BCC328();
  OUTLINED_FUNCTION_213_0();
  v3 = *(v0 + 224) != 0;
  v4 = type metadata accessor for AppIntentsProtocol.PerformAction.ConfirmationResponse(0);
  OUTLINED_FUNCTION_4_21(v4);
  *(v5 + 8) = v3;
  OUTLINED_FUNCTION_25();

  return v6();
}

uint64_t sub_221B24940(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_0_29();
  v5 = OUTLINED_FUNCTION_0_0();
  v6(v5);
  return a2;
}

uint64_t sub_221B24998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[16] = a4;
  v5[17] = v4;
  v5[14] = a2;
  v5[15] = a3;
  v5[13] = a1;
  return OUTLINED_FUNCTION_6_1();
}

uint64_t sub_221B249B4()
{
  OUTLINED_FUNCTION_8_0();
  v1 = v0[14];
  v2 = v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8340, &unk_221BE57E0) + 28);
  sub_221B24940(v2, (v0 + 2), &qword_27CFB8320, &unk_221BD1D60);
  sub_2219A1B08(v2 + 40, (v0 + 7));
  v3 = *(v2 + 80);
  v0[18] = v3;
  v0[12] = sub_221B23FB8(v3);
  OUTLINED_FUNCTION_8_16();
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  v0[19] = v4;
  *v4 = v5;
  v4[1] = sub_221B24B0C;
  v6 = OUTLINED_FUNCTION_9_17();

  return v7(v6);
}

uint64_t sub_221B24B0C()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 160) = v5;
  *(v3 + 168) = v0;

  sub_2219F7094(v3 + 16);
  if (v0)
  {
    v6 = sub_221B24D3C;
  }

  else
  {
    v6 = sub_221B24C18;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_221B24C18()
{
  OUTLINED_FUNCTION_8_0();
  v1 = v0[20];
  v2 = *(v0[18] + 16);
  sub_221BCC558();
  OUTLINED_FUNCTION_0_29();
  v3 = OUTLINED_FUNCTION_0_0();
  result = v4(v3);
  if (v1 >= v2)
  {
    sub_2219A1218(result, v6, v7);
    v11 = swift_allocError();
    *v12 = 6;
    *(v12 + 8) = 0;
    *(v12 + 16) = 0;
    *(v12 + 24) = 0;
    *(v12 + 32) = 5;
    v10 = sub_221BCC328();

    v9 = 2;
  }

  else
  {
    v8 = v0[20];
    if (v8 < 0)
    {
      __break(1u);
      return result;
    }

    v9 = 0;
    v10 = *(v0[18] + 96 * v8 + 120);
  }

  v13 = v0[13];
  v14 = v13 + *(type metadata accessor for AppIntentsProtocol.PerformAction.DisambiguationResponse(0) + 20);
  *v14 = v10;
  *(v14 + 8) = v9;
  OUTLINED_FUNCTION_25();

  return v15();
}

uint64_t sub_221B24D3C()
{
  OUTLINED_FUNCTION_8_0();
  sub_221BCC558();
  OUTLINED_FUNCTION_0_29();
  v0 = OUTLINED_FUNCTION_118_0();
  v1(v0);
  sub_221BCC328();
  OUTLINED_FUNCTION_213_0();
  v2 = type metadata accessor for AppIntentsProtocol.PerformAction.DisambiguationResponse(0);
  OUTLINED_FUNCTION_4_21(v2);
  *(v3 + 8) = 2;
  OUTLINED_FUNCTION_25();

  return v4();
}

uint64_t sub_221B24DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[32] = a4;
  v5[33] = v4;
  v5[30] = a2;
  v5[31] = a3;
  v5[29] = a1;
  return OUTLINED_FUNCTION_6_1();
}

uint64_t sub_221B24E08()
{
  v1 = *(v0 + 240);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB93F0, &unk_221BD2E00);
  sub_221B256E0(v1 + *(v2 + 28), v0 + 16);
  sub_221B24940(v0 + 16, v0 + 192, &qword_27CFB8320, &unk_221BD1D60);
  v3 = *(v0 + 56);
  *(v0 + 272) = v3;
  v4 = *(v3 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v23 = v0;
    v25 = MEMORY[0x277D84F90];
    sub_2219A3134(0, v4, 0);
    v5 = v25;
    v6 = *(v25 + 16);
    v7 = 24 * v6 + 48;
    v8 = (v3 + 56);
    do
    {
      v10 = *(v8 - 2);
      v9 = *(v8 - 1);
      v11 = *v8;
      if (v11 == 2)
      {
        v12 = 2;
      }

      else
      {
        v12 = v11 & 1;
      }

      v13 = *(v25 + 24);

      if (v6 >= v13 >> 1)
      {
        sub_2219A3134((v13 > 1), v6 + 1, 1);
      }

      v8 += 32;
      *(v25 + 16) = v6 + 1;
      v14 = (v25 + v7);
      *(v14 - 2) = v10;
      *(v14 - 1) = v9;
      *v14 = v12;
      v7 += 24;
      ++v6;
      --v4;
    }

    while (v4);
    v0 = v23;
  }

  v24 = *(v0 + 256);
  sub_221B24940(v0 + 64, v0 + 152, &unk_27CFB93B0, &qword_221BD1D70);
  v15 = *(v0 + 192);
  *(v0 + 120) = *(v0 + 208);
  v16 = *(v0 + 224);
  *(v0 + 104) = v15;
  *(v0 + 136) = v16;
  *(v0 + 144) = v5;
  v22 = (*(v24 + 40) + **(v24 + 40));
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 280) = v17;
  *v17 = v18;
  v17[1] = sub_221B25074;
  v19 = *(v0 + 256);
  v20 = *(v0 + 248);

  return v22(v0 + 104, v20, v19);
}

uint64_t sub_221B25074()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 288) = v5;
  *(v3 + 296) = v0;

  sub_2219F6F6C(v3 + 104);
  if (v0)
  {
    v6 = sub_221B252AC;
  }

  else
  {
    v6 = sub_221B25180;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_221B25180()
{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 288);
  v2 = *(*(v0 + 272) + 16);
  sub_221BCC558();
  OUTLINED_FUNCTION_0_29();
  v3 = OUTLINED_FUNCTION_0_0();
  result = v4(v3);
  if (v1 >= v2)
  {
    sub_2219A1218(result, v6, v7);
    v10 = swift_allocError();
    *v11 = 5;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    *(v11 + 24) = 0;
    *(v11 + 32) = 5;
    sub_221BCC328();
    v12 = type metadata accessor for AppIntentsProtocol.PerformAction.ChoiceResponse(0);
    OUTLINED_FUNCTION_13_14(v12);
    sub_221B2573C(v0 + 16);
  }

  else
  {
    if ((*(v0 + 288) & 0x8000000000000000) != 0)
    {
      __break(1u);
      return result;
    }

    v8 = type metadata accessor for AppIntentsProtocol.PerformAction.ChoiceResponse(0);
    OUTLINED_FUNCTION_4_21(v8);
    *(v9 + 8) = 0;
    sub_221B2573C(v0 + 16);
  }

  OUTLINED_FUNCTION_25();

  return v13();
}

uint64_t sub_221B252AC()
{
  OUTLINED_FUNCTION_8_0();
  sub_221B2573C(v0 + 16);
  sub_221BCC558();
  OUTLINED_FUNCTION_0_29();
  v1 = OUTLINED_FUNCTION_118_0();
  v2(v1);
  sub_221BCC328();
  OUTLINED_FUNCTION_213_0();
  v3 = type metadata accessor for AppIntentsProtocol.PerformAction.ChoiceResponse(0);
  OUTLINED_FUNCTION_13_14(v3);
  OUTLINED_FUNCTION_25();

  return v4();
}

uint64_t sub_221B25358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB93A0, &unk_221BE4F60) + 28);
  v12 = (*(a4 + 48) + **(a4 + 48));
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  v4[4] = v9;
  *v9 = v10;
  v9[1] = sub_221B2549C;

  return v12(a2 + v8, a3, a4);
}

uint64_t sub_221B2549C()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_9_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_9_0();
  *v5 = v4;
  *(v6 + 40) = v0;

  if (v0)
  {
    v7 = sub_221B25634;
  }

  else
  {
    v7 = sub_221B255A0;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_221B255A0()
{
  OUTLINED_FUNCTION_1_5();
  sub_221BCC558();
  OUTLINED_FUNCTION_0_29();
  v1 = OUTLINED_FUNCTION_0_0();
  v2(v1);
  v3 = *(v0 + 16);
  *(v3 + *(type metadata accessor for AppIntentsProtocol.PerformAction.ContinueInAppResponse(0) + 20)) = 0;
  OUTLINED_FUNCTION_25();

  return v4();
}

uint64_t sub_221B25634()
{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 24);
  sub_221BCC558();
  OUTLINED_FUNCTION_0_29();
  v2 = OUTLINED_FUNCTION_118_0();
  v3(v2);
  sub_221BCC328();
  OUTLINED_FUNCTION_213_0();
  v4 = *(v0 + 16);
  *(v4 + *(type metadata accessor for AppIntentsProtocol.PerformAction.ContinueInAppResponse(0) + 20)) = v1;
  OUTLINED_FUNCTION_25();

  return v5();
}

uint64_t OUTLINED_FUNCTION_13_14(uint64_t result)
{
  v3 = v2 + *(result + 20);
  *v3 = v1;
  *(v3 + 8) = 1;
  return result;
}

uint64_t ActorTransactionOperation.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_221BCC558();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ActorTransactionOperation.name.getter()
{
  v1 = *(v0 + *(type metadata accessor for ActorTransactionOperation(0) + 20));

  return v1;
}

uint64_t type metadata accessor for ActorTransactionOperation(uint64_t a1)
{
  result = qword_27CFBBA18;
  if (!qword_27CFBBA18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_221B258FC(uint64_t a1)
{
  result = sub_221BCC558();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_221B25998()
{
  OUTLINED_FUNCTION_55_4();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = 0;
  v9 = *(v8 + 16);
  do
  {
    if (v9 == v7)
    {
      break;
    }

    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v2);
    OUTLINED_FUNCTION_18_4(v10);
    OUTLINED_FUNCTION_43_1();
    v6(v12 + *(v11 + 72) * v7++);
  }

  while (!v0);
  OUTLINED_FUNCTION_53_5();
}

void sub_221B25A5C(uint64_t a1)
{
  v2 = sub_2219A69A0();
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x223DA3BF0](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v6 = [v4 valueType];
    sub_221BBA264(&v16, v6, v7, v8, v9, v10, v11, v12, v14, v15);
    v13 = v16;
  }
}

void sub_221B25B3C(uint64_t a1, void *a2, uint64_t a3)
{
  v19[4] = a3;
  v5 = sub_2219A69A0();
  for (i = 0; v5 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x223DA3BF0](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v7 = *(a1 + 8 * i + 32);
    }

    v8 = v7;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    swift_beginAccess();
    v9 = v8;
    MEMORY[0x223DA3390]();
    if (*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_221BCD6B8();
    }

    sub_221BCD6F8();
    swift_endAccess();
    v10 = [v9 valueType];
    sub_221BBA264(v19, v10, v11, v12, v13, v14, v15, v16, v18, v19[0]);
    v17 = v19[0];
  }
}

void sub_221B25C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_55_4();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = sub_2219A69A0();
  while (1)
  {
    if (!v27)
    {
LABEL_11:
      OUTLINED_FUNCTION_53_5();
      return;
    }

    if (__OFSUB__(v27--, 1))
    {
      break;
    }

    if ((v24 & 0xC000000000000001) != 0)
    {
      v29 = MEMORY[0x223DA3BF0](v27, v24);
    }

    else
    {
      if ((v27 & 0x8000000000000000) != 0)
      {
        goto LABEL_13;
      }

      if (v27 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v29 = *(v24 + 32 + 8 * v27);
    }

    a10 = v29;
    v26(&a10);

    if (v20)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
}

uint64_t sub_221B25D60()
{
  sub_221B62018(v0 + qword_27CFBC788, v6, &qword_27CFB7FD0, &qword_221BD2888);
  v1 = v7;
  if (v7)
  {
    v2 = v8;
    __swift_project_boxed_opaque_existential_0(v6, v7);
    v3 = OUTLINED_FUNCTION_97_1();
    v1 = v4(v3, v2);
    __swift_destroy_boxed_opaque_existential_0(v6);
  }

  else
  {
    sub_2219EC58C(v6, &qword_27CFB7FD0);
  }

  return v1;
}

uint64_t sub_221B25E10(uint64_t a1)
{
  v2 = off_27CFBC778;
  swift_beginAccess();

  sub_221BB4AB4(v3, sub_221BB66AC, 0, &v2[v1]);
  return swift_endAccess();
}

uint64_t sub_221B2601C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB82F0, &qword_221BD2C40);
  OUTLINED_FUNCTION_8_1(v4);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_97_3();
  sub_221BCD7F8();
  OUTLINED_FUNCTION_108();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_268_1();
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v2;
  v10[5] = a1;

  OUTLINED_FUNCTION_153();
  sub_2219F7E3C();
}

uint64_t sub_221B260EC(void *a1)
{
  v2 = v1;
  if (qword_27CFB7378 != -1)
  {
    swift_once();
  }

  v4 = sub_221BCCD88();
  __swift_project_value_buffer(v4, qword_27CFDEDC8);

  v5 = sub_221BCCD68();
  v6 = sub_221BCDA68();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16[0] = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_2219A6360(*(v1 + *(*v1 + 112)), *(v1 + *(*v1 + 112) + 8), v16);
    *(v7 + 12) = 2080;
    sub_221BCC558();
    sub_221B62E9C(&qword_27CFB7A60, MEMORY[0x277CC95F0]);
    v9 = sub_221BCE168();
    v11 = v10;

    v12 = sub_2219A6360(v9, v11, v16);

    *(v7 + 14) = v12;
    _os_log_impl(&dword_221989000, v5, v6, "[%s] <%s> fail invoked", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DA4C00](v8, -1, -1);
    MEMORY[0x223DA4C00](v7, -1, -1);
  }

  else
  {
  }

  v13 = v2 + *(*v2 + 128);
  os_unfair_lock_lock(v13);
  if (*(v13 + 24))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
    sub_221BCD878();
  }

  os_unfair_lock_unlock(v13);
  v16[0] = a1;
  v17 = 1;
  v14 = a1;
  sub_221B2AAFC(v16);
  return sub_2219EC58C(v16, &qword_27CFB8090);
}

void sub_221B263B0(void *a1)
{
  v2 = v1;
  if (qword_27CFB7378 != -1)
  {
    swift_once();
  }

  v4 = sub_221BCCD88();
  __swift_project_value_buffer(v4, qword_27CFDEDC8);

  v5 = sub_221BCCD68();
  v6 = sub_221BCDA68();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_2219A6360(*(v1 + *(*v1 + 112)), *(v1 + *(*v1 + 112) + 8), &v15);
    *(v7 + 12) = 2080;
    sub_221BCC558();
    sub_221B62E9C(&qword_27CFB7A60, MEMORY[0x277CC95F0]);
    v9 = sub_221BCE168();
    v11 = v10;

    v12 = sub_2219A6360(v9, v11, &v15);

    *(v7 + 14) = v12;
    _os_log_impl(&dword_221989000, v5, v6, "[%s] <%s> fail invoked", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DA4C00](v8, -1, -1);
    MEMORY[0x223DA4C00](v7, -1, -1);
  }

  else
  {
  }

  v13 = v2 + *(*v2 + 128);
  os_unfair_lock_lock(v13);
  if (*(v13 + 24))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
    sub_221BCD878();
  }

  os_unfair_lock_unlock(v13);
  v14 = a1;
  sub_221B2ABF8(a1, 0, 0, 1);
}

void sub_221B26670(void *a1)
{
  v2 = v1;
  if (qword_27CFB7378 != -1)
  {
    swift_once();
  }

  v4 = sub_221BCCD88();
  __swift_project_value_buffer(v4, qword_27CFDEDC8);

  v5 = sub_221BCCD68();
  v6 = sub_221BCDA68();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15[0] = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_2219A6360(*(v1 + *(*v1 + 112)), *(v1 + *(*v1 + 112) + 8), v15);
    *(v7 + 12) = 2080;
    sub_221BCC558();
    sub_221B62E9C(&qword_27CFB7A60, MEMORY[0x277CC95F0]);
    v9 = sub_221BCE168();
    v11 = v10;

    v12 = sub_2219A6360(v9, v11, v15);

    *(v7 + 14) = v12;
    _os_log_impl(&dword_221989000, v5, v6, "[%s] <%s> fail invoked", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DA4C00](v8, -1, -1);
    MEMORY[0x223DA4C00](v7, -1, -1);
  }

  else
  {
  }

  v13 = v2 + *(*v2 + 128);
  os_unfair_lock_lock(v13);
  if (*(v13 + 24))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
    sub_221BCD878();
  }

  os_unfair_lock_unlock(v13);
  v15[0] = a1;
  memset(&v15[1], 0, 24);
  v16 = 0;
  v17 = 1;
  v14 = a1;
  sub_221B2AD24(v15);
}

void sub_221B27210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  OUTLINED_FUNCTION_277_1();
  v31 = v30;
  v66 = v32;
  v67 = v33;
  v65 = v34;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  OUTLINED_FUNCTION_1_6();
  v44 = *(v43 + 96);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(v45, v46);
  v48 = *(v47 - 8);
  (*(v48 + 16))(v29 + v44, v42, v47);
  OUTLINED_FUNCTION_1_6();
  v50 = (v29 + *(v49 + 104));
  *v50 = v31;
  v50[1] = a27;
  OUTLINED_FUNCTION_1_6();
  v52 = (v29 + *(v51 + 112));
  *v52 = v40;
  v52[1] = v38;
  OUTLINED_FUNCTION_1_6();
  v54 = *(v53 + 120);
  v55 = sub_221BCC558();
  (*(*(v55 - 8) + 16))(v29 + v54, v36, v55);
  OUTLINED_FUNCTION_1_6();
  v57 = v29 + *(v56 + 128);
  *v57 = 0;
  *(v57 + 8) = 1;
  *(v57 + 16) = 0;
  *(v57 + 24) = 0;

  OUTLINED_FUNCTION_1_6();
  *(v29 + *(v58 + 144)) = v65;

  v59 = OUTLINED_FUNCTION_420();
  v60(v59);
  (*(v48 + 8))(v42, v47);
  OUTLINED_FUNCTION_1_6();
  v62 = v29 + *(v61 + 152);
  *v62 = 0;
  *(v62 + 8) = 0;
  *(v62 + 16) = v66;
  *(v62 + 24) = v67;
  OUTLINED_FUNCTION_1_6();
  v64 = (v29 + *(v63 + 136));
  *v64 = a28;
  v64[1] = a29;
  OUTLINED_FUNCTION_276_0();
}

uint64_t sub_221B2741C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[3] = a1;
  return MEMORY[0x2822009F8](sub_221B27440, 0, 0);
}

uint64_t sub_221B274E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[3] = a1;
  return MEMORY[0x2822009F8](sub_221B2750C, 0, 0);
}

uint64_t sub_221B275B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[3] = a1;
  return MEMORY[0x2822009F8](sub_221B275D8, 0, 0);
}

uint64_t sub_221B27680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[3] = a1;
  return MEMORY[0x2822009F8](sub_221B276A4, 0, 0);
}

uint64_t sub_221B2774C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[3] = a1;
  return MEMORY[0x2822009F8](sub_221B27770, 0, 0);
}

void sub_221B27818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_55_4();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB82F0, &qword_221BD2C40);
  OUTLINED_FUNCTION_8_1(v28);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_156();
  if (*(v27 + 8) == 1)
  {
    if (qword_27CFB7378 != -1)
    {
      OUTLINED_FUNCTION_1_38();
      swift_once();
    }

    v30 = sub_221BCCD88();
    __swift_project_value_buffer(v30, qword_27CFDEDC8);

    v31 = sub_221BCCD68();
    sub_221BCDA78();
    v32 = OUTLINED_FUNCTION_174_4();
    if (os_log_type_enabled(v32, v33))
    {
      OUTLINED_FUNCTION_20_6();
      swift_slowAlloc();
      OUTLINED_FUNCTION_114_4();
      a10 = swift_slowAlloc();
      *v23 = 136315394;
      v34 = sub_2219A6360(*(v25 + *(*v25 + 112)), *(v25 + *(*v25 + 112) + 8), &a10);
      OUTLINED_FUNCTION_113_7(v34);
      v35 = *(*v25 + 120);
      v36 = sub_221BCC558();
      OUTLINED_FUNCTION_0_44();
      sub_221B62E9C(v37, v38);
      v39 = v25 + v35;
      sub_221BCE168();
      OUTLINED_FUNCTION_239_3();

      sub_2219A6360(v39, v36, &a10);
      OUTLINED_FUNCTION_223_4();

      *(v23 + 14) = v39;
      OUTLINED_FUNCTION_140_4();
      _os_log_impl(v40, v41, v42, v43, v44, v45);
      OUTLINED_FUNCTION_172_4();
      swift_arrayDestroy();
      v46 = OUTLINED_FUNCTION_9_10();
      MEMORY[0x223DA4C00](v46);
      v47 = OUTLINED_FUNCTION_74_3();
      MEMORY[0x223DA4C00](v47);
    }

    else
    {
    }

LABEL_12:
    OUTLINED_FUNCTION_53_5();
    return;
  }

  v48 = *v27 + 1;
  if (!__OFADD__(*v27, 1))
  {
    if (*(v27 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
      sub_221BCD878();
    }

    sub_221BCD7F8();
    OUTLINED_FUNCTION_108();
    __swift_storeEnumTagSinglePayload(v49, v50, v51, v52);
    v53 = swift_allocObject();
    v53[2] = 0;
    v53[3] = 0;
    v53[4] = v25;
    v53[5] = v48;
    v53[6] = v23;

    OUTLINED_FUNCTION_153();
    sub_2219F8C64();
    *v27 = v48;
    *(v27 + 8) = 0;
    *(v27 + 16) = v54;
    goto LABEL_12;
  }

  __break(1u);
}

uint64_t sub_221B27AD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[7] = a4;
  v8 = sub_221BCD7B8();
  v6[10] = v8;
  v6[11] = *(v8 - 8);
  v6[12] = swift_task_alloc();
  v6[4] = a6;

  return MEMORY[0x2822009F8](sub_221B27BA4, 0, 0);
}

uint64_t sub_221B27E34()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v5 = v4;
  *(v6 + 128) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_221B28424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[74] = a6;
  v6[73] = a5;
  v6[72] = a4;
  v8 = sub_221BCD7B8();
  v6[75] = v8;
  v6[76] = *(v8 - 8);
  v6[77] = swift_task_alloc();
  v6[69] = a6;

  return MEMORY[0x2822009F8](sub_221B284F4, 0, 0);
}

uint64_t sub_221B28790()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v5 = v4;
  *(v6 + 648) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_221B28E04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  v8 = sub_221BCD7B8();
  v6[11] = v8;
  v6[12] = *(v8 - 8);
  v6[13] = swift_task_alloc();
  v6[5] = a6;

  return MEMORY[0x2822009F8](sub_221B28ED0, 0, 0);
}

uint64_t sub_221B29160()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v5 = v4;
  *(v6 + 136) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_221B297B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[16] = a5;
  v6[17] = a6;
  v6[15] = a4;
  v8 = sub_221BCD7B8();
  v6[18] = v8;
  v6[19] = *(v8 - 8);
  v6[20] = swift_task_alloc();
  v6[12] = a6;

  return MEMORY[0x2822009F8](sub_221B29880, 0, 0);
}

uint64_t sub_221B29B14()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v5 = v4;
  *(v6 + 192) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_221B2A194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[7] = a4;
  v8 = sub_221BCD7B8();
  v6[10] = v8;
  v6[11] = *(v8 - 8);
  v6[12] = swift_task_alloc();
  v6[4] = a6;

  return MEMORY[0x2822009F8](sub_221B2A260, 0, 0);
}

uint64_t sub_221B2A4F0()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v5 = v4;
  *(v6 + 128) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_221B2AAFC(uint64_t a1)
{
  v2 = v1;
  v4 = v1 + *(*v1 + 128);
  os_unfair_lock_lock(v4);
  if (*(v4 + 16))
  {

    os_unfair_lock_unlock(v4);
  }

  else
  {
    v5 = *(v4 + 8);

    *(v4 + 8) = v5;
    *(v4 + 16) = 1;
    *(v4 + 24) = 0;
    os_unfair_lock_unlock(v4);
    sub_221A2D298();
    v6 = sub_221B2BDE0(a1);
    (*(v2 + *(*v2 + 136)))(v6);
  }
}

void sub_221B2ABF8(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = v4 + *(*v4 + 128);
  os_unfair_lock_lock(v10);
  if (*(v10 + 16))
  {

    os_unfair_lock_unlock(v10);
  }

  else
  {
    v11 = *(v10 + 8);

    *(v10 + 8) = v11;
    *(v10 + 16) = 1;
    *(v10 + 24) = 0;
    os_unfair_lock_unlock(v10);
    sub_221A2D298();
    v12 = sub_221B2BE80(a1, a2, a3, a4 & 1);
    (*(v5 + *(*v5 + 136)))(v12);
  }
}

void sub_221B2AD24(uint64_t a1)
{
  v2 = v1;
  v4 = v1 + *(*v1 + 128);
  os_unfair_lock_lock(v4);
  if (*(v4 + 16))
  {

    os_unfair_lock_unlock(v4);
  }

  else
  {
    v5 = *(v4 + 8);

    *(v4 + 8) = v5;
    *(v4 + 16) = 1;
    *(v4 + 24) = 0;
    os_unfair_lock_unlock(v4);
    sub_221A2D298();
    v6 = sub_221B2C038(a1);
    (*(v2 + *(*v2 + 136)))(v6);
  }
}

void sub_221B2AE20(uint64_t a1, uint64_t a2, char a3, void (*a4)(uint64_t, uint64_t, void))
{
  v6 = v4;
  OUTLINED_FUNCTION_1_6();
  v11 = v4 + *(v10 + 128);
  os_unfair_lock_lock(v11);
  if (*(v11 + 16))
  {
    OUTLINED_FUNCTION_445();

    os_unfair_lock_unlock(v12);
  }

  else
  {
    v14 = *(v11 + 8);

    *(v11 + 8) = v14;
    *(v11 + 16) = 1;
    *(v11 + 24) = 0;
    os_unfair_lock_unlock(v11);
    OUTLINED_FUNCTION_5_14();
    sub_221A2D298();
    OUTLINED_FUNCTION_5_14();
    a4(a1, a2, a3 & 1);
    OUTLINED_FUNCTION_5_14();
    (*(v6 + *(v15 + 136)))();
    OUTLINED_FUNCTION_445();
  }
}

void sub_221B2AF34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_21();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = v22;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v110 = v36;
  v109 = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB82F0, &qword_221BD2C40);
  OUTLINED_FUNCTION_8_1(v38);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_156();
  v41 = (*(v22 + 16))(v35, v33);
  v42 = v40;
  if (v40 >> 62)
  {
    if (v40 >> 62 == 1)
    {
      if (qword_27CFB7378 != -1)
      {
        OUTLINED_FUNCTION_1_38();
        swift_once();
      }

      v43 = v42 & 0x3FFFFFFFFFFFFFFFLL;
      v44 = sub_221BCCD88();
      __swift_project_value_buffer(v44, qword_27CFDEDC8);
      OUTLINED_FUNCTION_97_1();

      v45 = sub_221BCCD68();
      v46 = sub_221BCDA68();
      if (os_log_type_enabled(v45, v46))
      {
        v107 = v43;
        v47 = OUTLINED_FUNCTION_68();
        OUTLINED_FUNCTION_19_6();
        v108 = v41;
        v105 = swift_slowAlloc();
        v111 = v105;
        *v47 = 136315650;
        OUTLINED_FUNCTION_5_14();
        v49 = OUTLINED_FUNCTION_208_3(*(v48 + 112));
        OUTLINED_FUNCTION_393_0(v49);
        v106 = v33;
        sub_221BCC558();
        OUTLINED_FUNCTION_0_44();
        sub_221B62E9C(v50, v51);
        v52 = sub_221BCE168();
        v54 = v53;

        v55 = sub_2219A6360(v52, v54, &v111);

        *(v47 + 14) = v55;
        v33 = v106;
        *(v47 + 22) = 2048;
        *(v47 + 24) = v106;
        OUTLINED_FUNCTION_429(&dword_221989000, v56, v57, "[%s] <%s#%ld> Error is transient, retrying when ready");
        OUTLINED_FUNCTION_436();
        OUTLINED_FUNCTION_29_1();
        MEMORY[0x223DA4C00]();
        v43 = v107;
        OUTLINED_FUNCTION_29_1();
        MEMORY[0x223DA4C00]();
      }

      else
      {
      }

      os_unfair_lock_lock(v29);
      if (*(v29 + 8))
      {

        v83 = sub_221BCCD68();
        sub_221BCDA78();

        if (OUTLINED_FUNCTION_104_0())
        {
          v84 = OUTLINED_FUNCTION_74_0();
          v85 = OUTLINED_FUNCTION_68();
          v111 = v85;
          *v84 = 136315138;
          OUTLINED_FUNCTION_5_14();
          *(v84 + 4) = OUTLINED_FUNCTION_208_3(*(v86 + 112));
          OUTLINED_FUNCTION_428(&dword_221989000, v87, v88, "[%s] ERROR: evaluateRetries called while retry task already pending");
          __swift_destroy_boxed_opaque_existential_0(v85);
          OUTLINED_FUNCTION_29_1();
          MEMORY[0x223DA4C00]();
          OUTLINED_FUNCTION_29_1();
          MEMORY[0x223DA4C00]();
        }
      }

      else
      {
        sub_221BCD7F8();
        OUTLINED_FUNCTION_108();
        __swift_storeEnumTagSinglePayload(v92, v93, v94, v95);
        OUTLINED_FUNCTION_49();
        v96 = swift_allocObject();
        v96[2] = 0;
        v96[3] = 0;
        v96[4] = v43;
        v96[5] = v31;
        v96[6] = v33;
        v96[7] = v110;

        OUTLINED_FUNCTION_153();
        sub_2219F8C64();
        *(v29 + 8) = v97;
      }

      os_unfair_lock_unlock(v29);
      sub_221B26B6C(v41, a22, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109);
    }

    else
    {
      if (qword_27CFB7378 != -1)
      {
        OUTLINED_FUNCTION_1_38();
        swift_once();
      }

      v71 = sub_221BCCD88();
      __swift_project_value_buffer(v71, qword_27CFDEDC8);
      OUTLINED_FUNCTION_97_1();

      v72 = sub_221BCCD68();
      v73 = sub_221BCDA68();
      if (os_log_type_enabled(v72, v73))
      {
        OUTLINED_FUNCTION_68();
        OUTLINED_FUNCTION_67_6();
        v111 = swift_slowAlloc();
        *v22 = 136315650;
        OUTLINED_FUNCTION_5_14();
        v75 = OUTLINED_FUNCTION_208_3(*(v74 + 112));
        OUTLINED_FUNCTION_327_0(v75);
        OUTLINED_FUNCTION_5_14();
        v77 = *(v76 + 120);
        sub_221BCC558();
        OUTLINED_FUNCTION_0_44();
        sub_221B62E9C(v78, v79);
        OUTLINED_FUNCTION_411();
        sub_221BCE168();
        OUTLINED_FUNCTION_40_4();

        v80 = OUTLINED_FUNCTION_194_3();
        sub_2219A6360(v80, v81, v82);
        OUTLINED_FUNCTION_124_2();

        *(v29 + 14) = v77;
        *(v29 + 22) = 2048;
        *(v29 + 24) = v33;
        _os_log_impl(&dword_221989000, v72, v73, "[%s] <%s#%ld> Error is immediately retryable", v29, 0x20u);
        OUTLINED_FUNCTION_136();
        OUTLINED_FUNCTION_29_1();
        MEMORY[0x223DA4C00]();
        OUTLINED_FUNCTION_29_1();
        MEMORY[0x223DA4C00]();
      }

      else
      {
      }

      sub_221B2601C(v110, v26);
    }

    OUTLINED_FUNCTION_22();
  }

  else
  {
    if (qword_27CFB7378 != -1)
    {
      OUTLINED_FUNCTION_1_38();
      swift_once();
    }

    v58 = sub_221BCCD88();
    __swift_project_value_buffer(v58, qword_27CFDEDC8);
    OUTLINED_FUNCTION_97_1();

    v59 = sub_221BCCD68();
    sub_221BCDA68();
    v60 = OUTLINED_FUNCTION_174_4();
    if (os_log_type_enabled(v60, v61))
    {
      OUTLINED_FUNCTION_68();
      OUTLINED_FUNCTION_114_4();
      v111 = swift_slowAlloc();
      *v24 = 136315650;
      OUTLINED_FUNCTION_5_14();
      v63 = OUTLINED_FUNCTION_208_3(*(v62 + 112));
      OUTLINED_FUNCTION_113_7(v63);
      OUTLINED_FUNCTION_5_14();
      sub_221BCC558();
      OUTLINED_FUNCTION_0_44();
      sub_221B62E9C(v64, v65);
      OUTLINED_FUNCTION_411();
      v66 = sub_221BCE168();

      v67 = OUTLINED_FUNCTION_142_4();
      sub_2219A6360(v67, v68, v69);
      OUTLINED_FUNCTION_171_0();

      *(v24 + 14) = v66;
      *(v24 + 22) = 2048;
      *(v24 + 24) = v33;
      _os_log_impl(&dword_221989000, v59, v29, "[%s] <%s#%ld> Error is not retryable", v24, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
      v70 = OUTLINED_FUNCTION_74_3();
      MEMORY[0x223DA4C00](v70);
    }

    else
    {
    }

    v28(v41);
    OUTLINED_FUNCTION_312_0();
    OUTLINED_FUNCTION_22();

    sub_221A2FEE4(v89, v90);
  }
}

void sub_221B2B610()
{
  OUTLINED_FUNCTION_21();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v76 = v6;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB82F0, &qword_221BD2C40);
  OUTLINED_FUNCTION_8_1(v13);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_156();
  v16 = (*(v0 + 16))(v12, v10);
  v17 = v15;
  if (v15 >> 62)
  {
    if (v15 >> 62 == 1)
    {
      v75 = v4;
      if (qword_27CFB7378 != -1)
      {
        OUTLINED_FUNCTION_1_38();
        swift_once();
      }

      v18 = v17 & 0x3FFFFFFFFFFFFFFFLL;
      v19 = sub_221BCCD88();
      __swift_project_value_buffer(v19, qword_27CFDEDC8);
      OUTLINED_FUNCTION_97_1();

      v20 = sub_221BCCD68();
      v21 = sub_221BCDA68();
      if (os_log_type_enabled(v20, v21))
      {
        v74 = v18;
        v22 = OUTLINED_FUNCTION_68();
        OUTLINED_FUNCTION_19_6();
        v77 = swift_slowAlloc();
        *v22 = 136315650;
        OUTLINED_FUNCTION_5_14();
        v24 = OUTLINED_FUNCTION_208_3(*(v23 + 112));
        OUTLINED_FUNCTION_393_0(v24);
        v73 = v10;
        v26 = *(v25 + 120);
        v27 = sub_221BCC558();
        OUTLINED_FUNCTION_0_44();
        sub_221B62E9C(v28, v29);
        sub_221BCE168();
        OUTLINED_FUNCTION_197_1();

        v30 = sub_2219A6360(v8 + v26, v27, &v77);

        *(v22 + 14) = v30;
        v10 = v73;
        *(v22 + 22) = 2048;
        *(v22 + 24) = v73;
        OUTLINED_FUNCTION_429(&dword_221989000, v31, v32, "[%s] <%s#%ld> Error is transient, retrying when ready");
        OUTLINED_FUNCTION_436();
        OUTLINED_FUNCTION_29_1();
        MEMORY[0x223DA4C00]();
        v18 = v74;
        OUTLINED_FUNCTION_29_1();
        MEMORY[0x223DA4C00]();
      }

      else
      {
      }

      os_unfair_lock_lock(v0);
      if (*(v0 + 8))
      {

        v57 = sub_221BCCD68();
        sub_221BCDA78();

        if (OUTLINED_FUNCTION_104_0())
        {
          v58 = v16;
          v59 = OUTLINED_FUNCTION_74_0();
          v60 = OUTLINED_FUNCTION_68();
          v77 = v60;
          *v59 = 136315138;
          OUTLINED_FUNCTION_5_14();
          *(v59 + 4) = OUTLINED_FUNCTION_208_3(*(v61 + 112));
          OUTLINED_FUNCTION_428(&dword_221989000, v62, v63, "[%s] ERROR: evaluateRetries called while retry task already pending");
          __swift_destroy_boxed_opaque_existential_0(v60);
          OUTLINED_FUNCTION_29_1();
          MEMORY[0x223DA4C00]();
          v16 = v58;
          OUTLINED_FUNCTION_29_1();
          MEMORY[0x223DA4C00]();
        }
      }

      else
      {
        sub_221BCD7F8();
        OUTLINED_FUNCTION_108();
        __swift_storeEnumTagSinglePayload(v67, v68, v69, v70);
        OUTLINED_FUNCTION_49();
        v71 = swift_allocObject();
        v71[2] = 0;
        v71[3] = 0;
        v71[4] = v18;
        v71[5] = v8;
        v71[6] = v10;
        v71[7] = v76;

        OUTLINED_FUNCTION_153();
        sub_2219F8C64();
        *(v0 + 8) = v72;
      }

      os_unfair_lock_unlock(v5);
      sub_221B26ED8(v16, v75);
    }

    else
    {
      if (qword_27CFB7378 != -1)
      {
        OUTLINED_FUNCTION_1_38();
        swift_once();
      }

      v45 = sub_221BCCD88();
      __swift_project_value_buffer(v45, qword_27CFDEDC8);
      OUTLINED_FUNCTION_97_1();

      v46 = sub_221BCCD68();
      v47 = sub_221BCDA68();
      if (os_log_type_enabled(v46, v47))
      {
        OUTLINED_FUNCTION_68();
        OUTLINED_FUNCTION_67_6();
        v77 = swift_slowAlloc();
        *v0 = 136315650;
        OUTLINED_FUNCTION_5_14();
        v49 = OUTLINED_FUNCTION_208_3(*(v48 + 112));
        OUTLINED_FUNCTION_327_0(v49);
        OUTLINED_FUNCTION_5_14();
        v51 = *(v50 + 120);
        sub_221BCC558();
        OUTLINED_FUNCTION_0_44();
        sub_221B62E9C(v52, v53);
        OUTLINED_FUNCTION_411();
        sub_221BCE168();
        OUTLINED_FUNCTION_40_4();

        v54 = OUTLINED_FUNCTION_194_3();
        sub_2219A6360(v54, v55, v56);
        OUTLINED_FUNCTION_124_2();

        *(v5 + 14) = v51;
        *(v5 + 22) = 2048;
        *(v5 + 24) = v10;
        _os_log_impl(&dword_221989000, v46, v47, "[%s] <%s#%ld> Error is immediately retryable", v5, 0x20u);
        OUTLINED_FUNCTION_136();
        OUTLINED_FUNCTION_29_1();
        MEMORY[0x223DA4C00]();
        OUTLINED_FUNCTION_29_1();
        MEMORY[0x223DA4C00]();
      }

      else
      {
      }

      sub_221B2601C(v76, v2);
    }

    OUTLINED_FUNCTION_22();
  }

  else
  {
    if (qword_27CFB7378 != -1)
    {
      OUTLINED_FUNCTION_1_38();
      swift_once();
    }

    v33 = sub_221BCCD88();
    __swift_project_value_buffer(v33, qword_27CFDEDC8);
    OUTLINED_FUNCTION_97_1();

    v34 = sub_221BCCD68();
    v35 = sub_221BCDA68();
    if (os_log_type_enabled(v34, v35))
    {
      OUTLINED_FUNCTION_68();
      OUTLINED_FUNCTION_114_4();
      v77 = swift_slowAlloc();
      *v2 = 136315650;
      OUTLINED_FUNCTION_5_14();
      v37 = OUTLINED_FUNCTION_208_3(*(v36 + 112));
      OUTLINED_FUNCTION_113_7(v37);
      OUTLINED_FUNCTION_5_14();
      sub_221BCC558();
      OUTLINED_FUNCTION_0_44();
      sub_221B62E9C(v38, v39);
      OUTLINED_FUNCTION_411();
      v40 = sub_221BCE168();

      v41 = OUTLINED_FUNCTION_142_4();
      sub_2219A6360(v41, v42, v43);
      OUTLINED_FUNCTION_171_0();

      *(v2 + 14) = v40;
      *(v2 + 22) = 2048;
      *(v2 + 24) = v10;
      _os_log_impl(&dword_221989000, v34, v35, "[%s] <%s#%ld> Error is not retryable", v2, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
      v44 = OUTLINED_FUNCTION_74_3();
      MEMORY[0x223DA4C00](v44);
    }

    else
    {
    }

    sub_221B26938(v16, v4);
    OUTLINED_FUNCTION_22();

    sub_221A2FEE4(v64, v65);
  }
}

uint64_t sub_221B2BCF4(void *a1, char a2)
{
  if (a2)
  {
    v2 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBC08, &qword_221BE5CD8);
    return sub_221BCD788();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBC08, &qword_221BE5CD8);

    return sub_221BCD798();
  }
}

uint64_t sub_221B2BD70(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    v3 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBB80, &qword_221BE5BA0);
    return sub_221BCD788();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBB80, &qword_221BE5BA0);
    return sub_221BCD798();
  }
}

uint64_t sub_221B2BDE0(uint64_t a1)
{
  sub_221B62018(a1, __src, &qword_27CFB8090, &unk_221BD2960);
  if (v4)
  {
    __dst[0] = __src[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB78F8, &qword_221BD19B0);
    return sub_221BCD788();
  }

  else
  {
    memcpy(__dst, __src, sizeof(__dst));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB78F8, &qword_221BD19B0);
    return sub_221BCD798();
  }
}

uint64_t sub_221B2BE80(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    v4 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7898, &qword_221BD1930);
    return sub_221BCD788();
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7898, &qword_221BD1930);
    return sub_221BCD798();
  }
}

uint64_t sub_221B2BF10(uint64_t a1)
{
  sub_221B62018(a1, v3, &qword_27CFBBB00, &unk_221BE56A0);
  if (v4)
  {
    v2[0] = *&v3[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB78F0, &qword_221BD0E10);
    return sub_221BCD788();
  }

  else
  {
    sub_22198B358(v3, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB78F0, &qword_221BD0E10);
    return sub_221BCD798();
  }
}

uint64_t sub_221B2BFA4(uint64_t a1)
{
  sub_221B62018(a1, v3, &qword_27CFB8000, &unk_221BD28B0);
  if (v4)
  {
    v2[0] = *&v3[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB78E8, &unk_221BD19A0);
    return sub_221BCD788();
  }

  else
  {
    sub_22198B358(v3, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB78E8, &unk_221BD19A0);
    return sub_221BCD798();
  }
}

uint64_t sub_221B2C038(uint64_t a1)
{
  v2 = *a1;
  if (*(a1 + 34))
  {
    v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBB68, &qword_221BE5A98);
    return sub_221BCD788();
  }

  else
  {
    v6 = *(a1 + 16);
    v5 = *(a1 + 24);

    sub_221998178(v6, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBB68, &qword_221BE5A98);
    return sub_221BCD798();
  }
}

uint64_t sub_221B2C0F8(void *a1, unint64_t a2, char a3)
{
  if (a3)
  {
    v3 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBCB0, &qword_221BE5F98);
    return sub_221BCD788();
  }

  else
  {
    sub_2219EBFB4(a1, a2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBCB0, &qword_221BE5F98);
    return sub_221BCD798();
  }
}

uint64_t sub_221B2C16C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[3] = a5;
  v8 = sub_221BCD7B8();
  v7[6] = v8;
  v7[7] = *(v8 - 8);
  v7[8] = swift_task_alloc();
  v9 = swift_task_alloc();
  v7[9] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
  v7[10] = v10;
  *v9 = v7;
  v9[1] = sub_221B2C29C;

  return MEMORY[0x282200430](v10);
}

uint64_t sub_221B2C29C()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v5 = v4;
  *(v6 + 88) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_221B2C88C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[3] = a5;
  v8 = sub_221BCD7B8();
  v7[6] = v8;
  v7[7] = *(v8 - 8);
  v7[8] = swift_task_alloc();
  v9 = swift_task_alloc();
  v7[9] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
  v7[10] = v10;
  *v9 = v7;
  v9[1] = sub_221B2C9BC;

  return MEMORY[0x282200430](v10);
}

uint64_t sub_221B2C9BC()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v5 = v4;
  *(v6 + 88) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_221B2CFA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[3] = a5;
  v8 = sub_221BCD7B8();
  v7[6] = v8;
  v7[7] = *(v8 - 8);
  v7[8] = swift_task_alloc();
  v9 = swift_task_alloc();
  v7[9] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
  v7[10] = v10;
  *v9 = v7;
  v9[1] = sub_221B2D0D0;

  return MEMORY[0x282200430](v10);
}

uint64_t sub_221B2D0D0()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v5 = v4;
  *(v6 + 88) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_221B2D6B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[3] = a5;
  v8 = sub_221BCD7B8();
  v7[6] = v8;
  v7[7] = *(v8 - 8);
  v7[8] = swift_task_alloc();
  v9 = swift_task_alloc();
  v7[9] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
  v7[10] = v10;
  *v9 = v7;
  v9[1] = sub_221B2D7E4;

  return MEMORY[0x282200430](v10);
}

uint64_t sub_221B2D7E4()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v5 = v4;
  *(v6 + 88) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_221B2DDC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[3] = a5;
  v8 = sub_221BCD7B8();
  v7[6] = v8;
  v7[7] = *(v8 - 8);
  v7[8] = swift_task_alloc();
  v9 = swift_task_alloc();
  v7[9] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
  v7[10] = v10;
  *v9 = v7;
  v9[1] = sub_221B2DEF8;

  return MEMORY[0x282200430](v10);
}

uint64_t sub_221B2DEF8()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v5 = v4;
  *(v6 + 88) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_221B2E4E8(uint64_t a1, char a2)
{
  result = 0x6C616974696E69;
  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_11_9();
      v3 = "invalidated(error: ";
      goto LABEL_5;
    case 2:
      OUTLINED_FUNCTION_11_9();
      v3 = "unavailable(error: ";
LABEL_5:
      MEMORY[0x223DA31F0](0xD000000000000013, (v3 - 32) | 0x8000000000000000);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
      sub_221BCE018();
      MEMORY[0x223DA31F0](41, 0xE100000000000000);
      result = v4;
      break;
    case 3:
      return result;
    default:
      result = 0x6C62616C69617661;
      break;
  }

  return result;
}

void sub_221B2E5F8()
{
  v1 = v0;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBBF8, &unk_221BE5CC0);
  v2 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v4 = &v33 - v3;
  v5 = &qword_27CFB76D8;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB76D8, &unk_221BE6980);
  v41 = *(v6 - 8);
  v42 = v6;
  MEMORY[0x28223BE20](v6);
  v45 = (&v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v46 = &v33 - v9;
  v10 = v1 + qword_27CFB8CD8;
  os_unfair_lock_lock((v1 + qword_27CFB8CD8));
  v11 = *(v10 + 8);

  os_unfair_lock_unlock(v10);
  v12 = v11 + 64;
  v13 = 1 << *(v11 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v11 + 64);
  v40 = qword_27CFB8CD0;
  v16 = v1 + *(*v1 + 144);
  v44 = v11;

  v39 = v16;
  swift_beginAccess();
  v17 = 0;
  v18 = (v13 + 63) >> 6;
  v38 = (v2 + 8);
  *&v19 = 136315394;
  v33 = v19;
  v34 = v4;
  v35 = v1;
  while (v15)
  {
    v20 = v45;
LABEL_10:
    v22 = v46;
    sub_221B62018(*(v44 + 56) + *(v41 + 72) * (__clz(__rbit64(v15)) | (v17 << 6)), v46, v5, &unk_221BE6980);
    sub_221B62018(v22, v20, v5, &unk_221BE6980);

    v23 = sub_221BCCD68();
    v24 = sub_221BCDA68();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v47 = v37;
      *v25 = v33;
      *(v25 + 4) = sub_2219A6360(*(v1 + 48), *(v1 + 56), &v47);
      *(v25 + 12) = 2080;
      v36 = *v20;
      v26 = v5;
      v27 = v20[1];

      sub_2219EC58C(v20, v26);
      v28 = sub_2219A6360(v36, v27, &v47);
      v5 = v26;

      *(v25 + 14) = v28;
      v1 = v35;
      _os_log_impl(&dword_221989000, v23, v24, "[%s] Updating stream %s", v25, 0x16u);
      v29 = v37;
      swift_arrayDestroy();
      MEMORY[0x223DA4C00](v29, -1, -1);
      v30 = v25;
      v4 = v34;
      MEMORY[0x223DA4C00](v30, -1, -1);
    }

    else
    {

      sub_2219EC58C(v20, v5);
    }

    v15 &= v15 - 1;
    v31 = *(v39 + 8);
    v47 = *v39;
    v48 = v31;
    sub_221B5D0C8(v47, v31);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBC00, &qword_221BE5CD0);
    v32 = v46;
    sub_221BCD818();
    (*v38)(v4, v43);
    sub_2219EC58C(v32, v5);
  }

  v20 = v45;
  while (1)
  {
    v21 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v21 >= v18)
    {

      return;
    }

    v15 = *(v12 + 8 * v21);
    ++v17;
    if (v15)
    {
      v17 = v21;
      goto LABEL_10;
    }
  }

  __break(1u);
}

uint64_t sub_221B2EAA4(uint64_t a1)
{
  v3 = *(*v1 + 144);
  swift_beginAccess();
  sub_221B61734(a1, v1 + v3, &qword_27CFBBBE8, &qword_221BE5CA8);
  swift_endAccess();
  sub_221B2E5F8();
  return sub_2219EC58C(a1, &qword_27CFBBBE8);
}

void *sub_221B2EB44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v34 = a7;
  v35 = a1;
  v37 = a4;
  v38 = a6;
  v31 = a2;
  v32 = a5;
  v36 = a3;
  v33 = *v7;
  v9 = sub_221BCDB18();
  v29 = *(v9 - 8);
  v30 = v9;
  MEMORY[0x28223BE20](v9);
  v28 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_221BCDAF8();
  MEMORY[0x28223BE20](v11);
  v12 = sub_221BCD1F8();
  MEMORY[0x28223BE20](v12 - 8);
  v27 = sub_2219A1D20(0, &qword_27CFBBC30, 0x277D85C78);
  v39[0] = 0;
  v39[1] = 0xE000000000000000;
  sub_221BCDE68();
  MEMORY[0x223DA31F0](0xD000000000000035, 0x8000000221BF0CC0);
  v39[5] = type metadata accessor for RemoteAppIntentsActor(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBC38, &qword_221BE5D70);
  v13 = sub_221BCD3D8();
  MEMORY[0x223DA31F0](v13);

  MEMORY[0x223DA31F0](62, 0xE100000000000000);
  sub_221BCD1D8();
  v39[0] = MEMORY[0x277D84F90];
  sub_221B62E9C(&qword_27CFBBC40, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBC48, &unk_221BE63C0);
  sub_221B61E70(&qword_27CFBBC50, &qword_27CFBBC48);
  v15 = v31;
  v14 = v32;
  sub_221BCDD18();
  (*(v29 + 104))(v28, *MEMORY[0x277D85260], v30);
  v16 = v34;
  v7[2] = sub_221BCDB58();
  v7[5] = 0;
  v39[0] = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7770, &qword_221BD0CD0);
  sub_221BCD3D8();
  sub_221BCCD78();
  v17 = v7 + qword_27CFB8CD8;
  v18 = sub_221BCC558();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB76D8, &unk_221BE6980);
  sub_221B62E9C(&qword_27CFB9420, MEMORY[0x277CC95F0]);
  v19 = sub_221BCD2C8();
  *v17 = 0;
  *(v17 + 1) = v19;
  v8[3] = v35;
  v8[4] = v15;
  v20 = v8 + *(*v8 + 144);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBBE8, &qword_221BE5CA8);
  __swift_storeEnumTagSinglePayload(&v20[*(v21 + 28)], 1, 1, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBBE0, &qword_221BE5CA0);
  swift_storeEnumTagMultiPayload();
  *v20 = 0;
  v20[8] = 3;
  v22 = v37;
  v8[6] = v36;
  v8[7] = v22;
  v8[8] = v14;

  v8[5] = sub_221B2F0E0(v8, v38, v16);

  v23 = *(v14 + 16);
  if (v23)
  {
    v24 = v14 + 32;
    do
    {
      sub_2219A1B08(v24, v39);
      __swift_project_boxed_opaque_existential_0(v39, v39[3]);
      v25 = swift_allocObject();
      swift_weakInit();

      sub_221A34874(sub_221B61D38, v25);

      __swift_destroy_boxed_opaque_existential_0(v39);

      v24 += 40;
      --v23;
    }

    while (v23);
  }

  return v8;
}

uint64_t sub_221B2F0E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBC20, &qword_221BE5D30);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v17 - v11;
  sub_221B74748(0x616E614D6C6C6143, 0xEB00000000726567);
  (*(v7 + 16))(v9, v12, v6);
  v13 = *(a1 + 48);
  v14 = *(a1 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBC70, &qword_221BE5D80);
  swift_allocObject();

  v15 = sub_221B32D3C(v9, v13, v14, a2, a3);

  (*(v7 + 8))(v12, v6);
  return v15;
}

uint64_t sub_221B2F28C(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_221B2F2E4();
  }

  return result;
}

uint64_t sub_221B2F2E4()
{
  v1 = sub_221BCD1B8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_221BCD1F8();
  v5 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[1] = *(v0 + 16);
  aBlock[4] = sub_221B61D40;
  v14 = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_221B7C464;
  aBlock[3] = &block_descriptor_687;
  v8 = _Block_copy(aBlock);

  sub_221BCD1D8();
  v12 = MEMORY[0x277D84F90];
  sub_221B62E9C(&qword_27CFBBC58, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBC60, &qword_221BE5D78);
  sub_221B61E70(&qword_27CFBBC68, &qword_27CFBBC60);
  sub_221BCDD18();
  MEMORY[0x223DA3890](0, v7, v4, v8);
  _Block_release(v8);
  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v11);
}

uint64_t sub_221B2F598(uint64_t a1, void *a2)
{
  v5 = sub_221BCC558();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v9 = *(v2 + 16);
  (*(v6 + 16))(aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5, v8);
  v10 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v2;
  (*(v6 + 32))(v11 + v10, aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  *(v11 + ((v7 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_221B61F98;
  *(v12 + 24) = v11;
  aBlock[4] = sub_221B62F28;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_221B67C2C;
  aBlock[3] = &block_descriptor_706;
  v13 = _Block_copy(aBlock);

  v14 = a2;

  dispatch_sync(v9, v13);
  _Block_release(v13);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
  }

  return result;
}

void sub_221B2F7D8(uint64_t a1, uint64_t a2, void *a3)
{
  v66 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBBD8, &qword_221BE5C98);
  MEMORY[0x28223BE20](v5 - 8);
  v60 = &v53[-v6];
  v7 = sub_221BCC558();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v64 = &v53[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v55 = &v53[-v11];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBC88, &qword_221BE5DC0);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = &v53[-v14];
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82B0, &unk_221BD2990);
  MEMORY[0x28223BE20](v59);
  v58 = &v53[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17);
  v61 = &v53[-v18];
  MEMORY[0x28223BE20](v19);
  v21 = &v53[-v20];
  v22 = *(*a1 + 144);
  v65 = a1;
  v23 = a1 + v22;
  swift_beginAccess();
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBBE8, &qword_221BE5CA8);
  v24 = *(v56 + 28);
  v67 = v8;
  v62 = *(v8 + 16);
  v63 = a2;
  v62(v21, a2, v7);
  __swift_storeEnumTagSinglePayload(v21, 0, 1, v7);
  v25 = *(v13 + 56);
  v57 = v23;
  sub_221B62018(v23 + v24, v15, &qword_27CFB82B0, &unk_221BD2990);
  sub_221B62018(v21, &v15[v25], &qword_27CFB82B0, &unk_221BD2990);
  if (__swift_getEnumTagSinglePayload(v15, 1, v7) == 1)
  {
    sub_2219EC58C(v21, &qword_27CFB82B0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(&v15[v25], 1, v7);
    v27 = v65;
    v28 = v66;
    if (EnumTagSinglePayload == 1)
    {
      sub_2219EC58C(v15, &qword_27CFB82B0);
LABEL_11:
      v50 = v60;
      *v60 = v28;
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBBE0, &qword_221BE5CA0);
      swift_storeEnumTagMultiPayload();
      __swift_storeEnumTagSinglePayload(v50, 0, 1, v51);
      v52 = v28;
      sub_221B2FF5C(v50);
      sub_2219EC58C(v50, &qword_27CFBBBD8);
      return;
    }

    goto LABEL_6;
  }

  v29 = v61;
  sub_221B62018(v15, v61, &qword_27CFB82B0, &unk_221BD2990);
  if (__swift_getEnumTagSinglePayload(&v15[v25], 1, v7) == 1)
  {
    sub_2219EC58C(v21, &qword_27CFB82B0);
    (*(v67 + 8))(v29, v7);
    v27 = v65;
    v28 = v66;
LABEL_6:
    sub_2219EC58C(v15, &qword_27CFBBC88);
    goto LABEL_7;
  }

  v47 = v67;
  v48 = v55;
  (*(v67 + 32))(v55, &v15[v25], v7);
  sub_221B62E9C(&qword_27CFB8AE0, MEMORY[0x277CC95F0]);
  v54 = sub_221BCD338();
  v49 = *(v47 + 8);
  v49(v48, v7);
  sub_2219EC58C(v21, &qword_27CFB82B0);
  v49(v29, v7);
  sub_2219EC58C(v15, &qword_27CFB82B0);
  v27 = v65;
  v28 = v66;
  if (v54)
  {
    goto LABEL_11;
  }

LABEL_7:
  v30 = v64;
  v62(v64, v63, v7);
  v31 = v28;

  v32 = sub_221BCCD68();
  v33 = sub_221BCDA98();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v69 = v35;
    *v34 = 136315906;
    *(v34 + 4) = sub_2219A6360(*(v27 + 48), *(v27 + 56), &v69);
    *(v34 + 12) = 2080;
    sub_221B62E9C(&qword_27CFB7A60, MEMORY[0x277CC95F0]);
    v36 = sub_221BCE168();
    v38 = v37;
    (*(v67 + 8))(v30, v7);
    v39 = sub_2219A6360(v36, v38, &v69);

    *(v34 + 14) = v39;
    *(v34 + 22) = 2080;
    v68 = v28;
    v40 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
    v41 = sub_221BCD3D8();
    v43 = sub_2219A6360(v41, v42, &v69);

    *(v34 + 24) = v43;
    *(v34 + 32) = 2080;
    sub_221B62018(v57 + *(v56 + 28), v58, &qword_27CFB82B0, &unk_221BD2990);
    v44 = sub_221BCD3D8();
    v46 = sub_2219A6360(v44, v45, &v69);

    *(v34 + 34) = v46;
    _os_log_impl(&dword_221989000, v32, v33, "[%s] Dropping actor %s unavailability update with error %s - mismatches current actor %s", v34, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x223DA4C00](v35, -1, -1);
    MEMORY[0x223DA4C00](v34, -1, -1);
  }

  else
  {

    (*(v67 + 8))(v30, v7);
  }
}

uint64_t sub_221B2FF5C(uint64_t a1)
{
  v2 = v1;
  v104 = sub_221BCC558();
  v103 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v102 = &v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_221BCCEE8();
  v110 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v105 = &v97 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v107 = &v97 - v7;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBBE0, &qword_221BE5CA0);
  MEMORY[0x28223BE20](v114);
  v108 = (&v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v113 = &v97 - v10;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBBE8, &qword_221BE5CA8);
  MEMORY[0x28223BE20](v111);
  v112 = &v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v97 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBBD8, &qword_221BE5C98);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v97 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v97 - v19;
  MEMORY[0x28223BE20](v21);
  v109 = &v97 - v22;
  MEMORY[0x28223BE20](v23);
  v25 = &v97 - v24;
  v26 = sub_221BCD238();
  v27 = *(v26 - 8);
  v28 = MEMORY[0x28223BE20](v26);
  v30 = (&v97 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = *(v2 + 16);
  *v30 = v31;
  (*(v27 + 104))(v30, *MEMORY[0x277D85200], v26, v28);
  v32 = v31;
  LOBYTE(v31) = sub_221BCD248();
  v34 = *(v27 + 8);
  v33 = v27 + 8;
  v34(v30, v26);
  if (v31)
  {
    sub_221B62018(a1, v25, &qword_27CFBBBD8, &qword_221BE5C98);
    v35 = *(*v2 + 144);
    swift_beginAccess();
    sub_221B62018(v2 + v35, v14, &qword_27CFBBBE8, &qword_221BE5CA8);
    LODWORD(v26) = v14[8];
    v36 = v25;
    if (v26 == 1)
    {

      v37 = sub_221BCCD68();
      v38 = sub_221BCDA98();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        *&__src[0] = v40;
        *v39 = 136315138;
        *(v39 + 4) = sub_2219A6360(*(v2 + 48), *(v2 + 56), __src);
        _os_log_impl(&dword_221989000, v37, v38, "[%s] In invalidated state, ignoring further updates", v39, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v40);
        MEMORY[0x223DA4C00](v40, -1, -1);
        MEMORY[0x223DA4C00](v39, -1, -1);
      }

      v41 = &qword_27CFBBBD8;
      v42 = v36;
      goto LABEL_6;
    }

    v33 = 0;
    v101 = *v14;
    v44 = *(v2 + 64);
    v45 = *(v44 + 16);
    for (i = v44 + 32; ; i += 40)
    {
      if (v45 == v33)
      {
        v120 = 0;
        v118 = 0u;
        v119 = 0u;
        goto LABEL_14;
      }

      if (v33 >= *(v44 + 16))
      {
        __break(1u);
        goto LABEL_49;
      }

      sub_2219A1B08(i, __src);
      if (*(*__swift_project_boxed_opaque_existential_0(__src, *(&__src[1] + 1)) + 40))
      {
        break;
      }

      ++v33;
      __swift_destroy_boxed_opaque_existential_0(__src);
    }

    sub_22198B358(__src, &v118);
LABEL_14:
    sub_221B62018(&v118, __dst, &qword_27CFBBBF0, &unk_221BE5CB0);
    v33 = v25;
    if (*(&__dst[1] + 1))
    {
      sub_22198B358(__dst, __src);
      v47 = *(*__swift_project_boxed_opaque_existential_0(__src, *(&__src[1] + 1)) + 40);
      if (v47)
      {
        v48 = v47;
        if (qword_27CFB73C0 != -1)
        {
          swift_once();
        }

        v49 = sub_221BCCD88();
        __swift_project_value_buffer(v49, qword_27CFDEE88);
        sub_2219A1B08(__src, __dst);

        v50 = v47;
        v51 = sub_221BCCD68();
        v52 = sub_221BCDA98();

        v53 = os_log_type_enabled(v51, v52);
        v54 = v113;
        if (v53)
        {
          v55 = swift_slowAlloc();
          v99 = v52;
          v56 = v55;
          v98 = swift_slowAlloc();
          v115 = swift_slowAlloc();
          v100 = v33;
          v57 = v115;
          *v56 = 136315650;
          *(v56 + 4) = sub_2219A6360(*(v2 + 48), *(v2 + 56), &v115);
          *(v56 + 12) = 2080;
          __swift_project_boxed_opaque_existential_0(__dst, *(&__dst[1] + 1));
          swift_getDynamicType();
          v58 = sub_221BCE478();
          v60 = v59;
          __swift_destroy_boxed_opaque_existential_0(__dst);
          v61 = sub_2219A6360(v58, v60, &v115);

          *(v56 + 14) = v61;
          *(v56 + 22) = 2112;
          v62 = v47;
          v63 = _swift_stdlib_bridgeErrorToNSError();
          *(v56 + 24) = v63;
          v64 = v98;
          *v98 = v63;
          _os_log_impl(&dword_221989000, v51, v99, "[%s] DistributedActorManager: %s reports %@", v56, 0x20u);
          sub_2219EC58C(v64, &unk_27CFB7630);
          MEMORY[0x223DA4C00](v64, -1, -1);
          swift_arrayDestroy();
          v65 = v57;
          v33 = v100;
          MEMORY[0x223DA4C00](v65, -1, -1);
          MEMORY[0x223DA4C00](v56, -1, -1);
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_0(__dst);
        }

        sub_221B5D0A4(v101, v26);
        v75 = v112;
        v73 = v110;
        v76 = v109;
        *v14 = v47;
        LOBYTE(v26) = 2;
        v14[8] = 2;
        __swift_destroy_boxed_opaque_existential_0(__src);
        v101 = v47;
        v72 = v111;
        v74 = v114;
        goto LABEL_34;
      }

      __swift_destroy_boxed_opaque_existential_0(__src);
    }

    else
    {
      sub_2219EC58C(__dst, &qword_27CFBBBF0);
    }

    if (qword_27CFB73C0 != -1)
    {
      goto LABEL_50;
    }
  }

  else
  {
LABEL_49:
    __break(1u);
LABEL_50:
    swift_once();
  }

  v66 = sub_221BCCD88();
  __swift_project_value_buffer(v66, qword_27CFDEE88);

  v67 = sub_221BCCD68();
  v68 = sub_221BCDA68();

  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    *&__src[0] = v70;
    *v69 = 136315138;
    *(v69 + 4) = sub_2219A6360(*(v2 + 48), *(v2 + 56), __src);
    _os_log_impl(&dword_221989000, v67, v68, "[%s] DistributedActorManager: No active error sources", v69, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v70);
    v71 = v70;
    v33 = v25;
    MEMORY[0x223DA4C00](v71, -1, -1);
    MEMORY[0x223DA4C00](v69, -1, -1);
  }

  v72 = v111;
  v73 = v110;
  v54 = v113;
  v74 = v114;
  if (v26 == 2)
  {
    sub_221B61EB0(v33, v17, &qword_27CFBBBD8, &qword_221BE5C98);
    if (__swift_getEnumTagSinglePayload(v17, 1, v74) == 1)
    {
      sub_221B62018(&v14[*(v72 + 32)], v20, &qword_27CFBBBE0, &qword_221BE5CA0);
      if (__swift_getEnumTagSinglePayload(v17, 1, v74) != 1)
      {
        sub_2219EC58C(v17, &qword_27CFBBBD8);
      }
    }

    else
    {
      sub_221B61EB0(v17, v20, &qword_27CFBBBE0, &qword_221BE5CA0);
    }

    __swift_storeEnumTagSinglePayload(v20, 0, 1, v74);
    sub_221B61EB0(v20, v33, &qword_27CFBBBD8, &qword_221BE5C98);
    LOBYTE(v26) = 2;
  }

  v75 = v112;
  v76 = v109;
LABEL_34:
  sub_221B62018(v33, v76, &qword_27CFBBBD8, &qword_221BE5C98);
  if (__swift_getEnumTagSinglePayload(v76, 1, v74) == 1)
  {
    v77 = &qword_27CFBBBD8;
    v78 = v76;
LABEL_38:
    sub_2219EC58C(v78, v77);
    goto LABEL_39;
  }

  sub_221B61EB0(v76, v54, &qword_27CFBBBE0, &qword_221BE5CA0);
  sub_221B61734(v54, &v14[*(v72 + 32)], &qword_27CFBBBE0, &qword_221BE5CA0);
  if (*(&v119 + 1))
  {
    v77 = &qword_27CFBBBE0;
    v78 = v54;
    goto LABEL_38;
  }

  v87 = v108;
  sub_221B62018(v54, v108, &qword_27CFBBBE0, &qword_221BE5CA0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      sub_2219EC58C(v54, &qword_27CFBBBE0);
      sub_2219EC58C(v33, &qword_27CFBBBD8);
      v41 = &qword_27CFBBBF0;
      v42 = &v118;
LABEL_6:
      sub_2219EC58C(v42, v41);
      v43 = v14;
      return sub_2219EC58C(v43, &qword_27CFBBBE8);
    }

    sub_2219EC58C(v54, &qword_27CFBBBE0);
    v89 = *v87;
    sub_221B5D0A4(v101, v26);
    *v14 = v89;
    v14[8] = 2;
  }

  else
  {
    v90 = v107;
    v91 = v106;
    (*(v73 + 32))(v107, v87, v106);
    v92 = v105;
    (*(v73 + 16))(v105, v90, v91);
    sub_221B93FD0(v92, __src);
    sub_221B940B8();
    memcpy(__dst, __src, sizeof(__dst));
    sub_221B616E0(__dst);
    v93 = v102;
    sub_221BCC548();
    v94 = (*(v2 + 24))(v107, v93);
    (*(v73 + 8))(v107, v106);
    sub_2219EC58C(v113, &qword_27CFBBBE0);
    sub_221B5D0A4(v101, v26);
    *v14 = v94;
    v14[8] = 0;
    v95 = *(v72 + 28);
    sub_2219EC58C(&v14[v95], &qword_27CFB82B0);
    v96 = v104;
    (*(v103 + 32))(&v14[v95], v93, v104);
    __swift_storeEnumTagSinglePayload(&v14[v95], 0, 1, v96);
  }

LABEL_39:

  v79 = sub_221BCCD68();
  v80 = sub_221BCDA98();

  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    *&__src[0] = v82;
    *v81 = 136315394;
    *(v81 + 4) = sub_2219A6360(*(v2 + 48), *(v2 + 56), __src);
    *(v81 + 12) = 2080;
    swift_beginAccess();
    sub_221B62018(v14, v75, &qword_27CFBBBE8, &qword_221BE5CA8);
    v83 = sub_221BCD3D8();
    v85 = sub_2219A6360(v83, v84, __src);

    *(v81 + 14) = v85;
    _os_log_impl(&dword_221989000, v79, v80, "[%s] Updated to %s", v81, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DA4C00](v82, -1, -1);
    MEMORY[0x223DA4C00](v81, -1, -1);
  }

  swift_beginAccess();
  sub_221B62018(v14, v75, &qword_27CFBBBE8, &qword_221BE5CA8);
  sub_221B2EAA4(v75);
  sub_2219EC58C(v33, &qword_27CFBBBD8);
  sub_2219EC58C(&v118, &qword_27CFBBBF0);
  v43 = v14;
  return sub_2219EC58C(v43, &qword_27CFBBBE8);
}

uint64_t sub_221B3100C(uint64_t a1)
{
  v3 = sub_221BCCEE8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v7 = *(v1 + 16);
  (*(v4 + 16))(aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3, v6);
  v8 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v1;
  (*(v4 + 32))(v9 + v8, aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_221B61ADC;
  *(v10 + 24) = v9;
  aBlock[4] = sub_221B62F28;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_221B67C2C;
  aBlock[3] = &block_descriptor_669;
  v11 = _Block_copy(aBlock);

  dispatch_sync(v7, v11);
  _Block_release(v11);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_221B31228(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBBD8, &qword_221BE5C98);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  v6 = sub_221BCCEE8();
  (*(*(v6 - 8) + 16))(v5, a2, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBBE0, &qword_221BE5CA0);
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v7);
  sub_221B2FF5C(v5);
  return sub_2219EC58C(v5, &qword_27CFBBBD8);
}

uint64_t sub_221B31344(void *a1)
{
  v3 = *(v1 + 16);
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_221B616B8;
  *(v5 + 24) = v4;
  v9[4] = sub_221B616C0;
  v9[5] = v5;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_221B67C2C;
  v9[3] = &block_descriptor_6;
  v6 = _Block_copy(v9);

  v7 = a1;

  dispatch_sync(v3, v6);
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_221B314AC(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBBD8, &qword_221BE5C98);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  *(&v9 - v4) = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBBE0, &qword_221BE5CA0);
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v6);
  v7 = a2;
  sub_221B2FF5C(v5);
  return sub_2219EC58C(v5, &qword_27CFBBBD8);
}

uint64_t sub_221B31598(void *a1)
{
  v3 = *(v1 + 16);
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_221B61AD4;
  *(v5 + 24) = v4;
  v9[4] = sub_221B62F28;
  v9[5] = v5;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_221B67C2C;
  v9[3] = &block_descriptor_659;
  v6 = _Block_copy(v9);

  v7 = a1;

  dispatch_sync(v3, v6);
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_221B31700(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBBE8, &qword_221BE5CA8);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - v5;
  v7 = *(v4 + 36);
  v8 = sub_221BCC558();
  __swift_storeEnumTagSinglePayload(&v6[v7], 1, 1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBBE0, &qword_221BE5CA0);
  swift_storeEnumTagMultiPayload();
  *v6 = a2;
  v6[8] = 1;
  v9 = a2;
  return sub_221B2EAA4(v6);
}

uint64_t sub_221B317EC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBBD8, &qword_221BE5C98);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v5 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBBE0, &qword_221BE5CA0);
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  sub_221B2FF5C(v2);
  return sub_2219EC58C(v2, &qword_27CFBBBD8);
}

uint64_t sub_221B318AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_221B318D4, 0, 0);
}

uint64_t sub_221B318D4()
{
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_164_2();
  if (v1)
  {
    OUTLINED_FUNCTION_109_4(qword_221BE5B88);
    OUTLINED_FUNCTION_389();
    swift_task_alloc();
    OUTLINED_FUNCTION_26_0();
    *(v2 + 64) = v6;
    *v6 = v7;
    v8 = OUTLINED_FUNCTION_70_8(v6);

    return v9(v8);
  }

  else
  {
    OUTLINED_FUNCTION_319_0(v3, v4, v5);
    OUTLINED_FUNCTION_15_0();
    v11 = swift_allocError();
    *v12 = 0xD00000000000001BLL;
    v12[1] = v0;
    OUTLINED_FUNCTION_71_5(v11, v12);
    swift_willThrow();
    OUTLINED_FUNCTION_25();

    return v13();
  }
}

uint64_t sub_221B319DC()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v5 = v4;
  *(v6 + 72) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_221B31AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_221B31AFC, 0, 0);
}

uint64_t sub_221B31AFC()
{
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_164_2();
  if (v1)
  {
    OUTLINED_FUNCTION_109_4(qword_221BE5760);
    OUTLINED_FUNCTION_389();
    swift_task_alloc();
    OUTLINED_FUNCTION_26_0();
    *(v2 + 64) = v6;
    *v6 = v7;
    v8 = OUTLINED_FUNCTION_70_8(v6);

    return v9(v8);
  }

  else
  {
    OUTLINED_FUNCTION_319_0(v3, v4, v5);
    OUTLINED_FUNCTION_15_0();
    v11 = swift_allocError();
    *v12 = 0xD00000000000001BLL;
    v12[1] = v0;
    OUTLINED_FUNCTION_71_5(v11, v12);
    swift_willThrow();
    OUTLINED_FUNCTION_25();

    return v13();
  }
}

uint64_t sub_221B31C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_221B31C2C, 0, 0);
}

uint64_t sub_221B31C2C()
{
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_164_2();
  if (v1)
  {
    OUTLINED_FUNCTION_109_4(qword_221BE5598);
    OUTLINED_FUNCTION_389();
    swift_task_alloc();
    OUTLINED_FUNCTION_26_0();
    *(v2 + 64) = v6;
    *v6 = v7;
    v8 = OUTLINED_FUNCTION_70_8(v6);

    return v9(v8);
  }

  else
  {
    OUTLINED_FUNCTION_319_0(v3, v4, v5);
    OUTLINED_FUNCTION_15_0();
    v11 = swift_allocError();
    *v12 = 0xD00000000000001BLL;
    v12[1] = v0;
    OUTLINED_FUNCTION_71_5(v11, v12);
    swift_willThrow();
    OUTLINED_FUNCTION_25();

    return v13();
  }
}

uint64_t sub_221B31D34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_221B31D5C, 0, 0);
}

uint64_t sub_221B31D5C()
{
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_164_2();
  if (v1)
  {
    OUTLINED_FUNCTION_109_4(qword_221BE5A80);
    OUTLINED_FUNCTION_389();
    swift_task_alloc();
    OUTLINED_FUNCTION_26_0();
    *(v2 + 64) = v6;
    *v6 = v7;
    v8 = OUTLINED_FUNCTION_70_8(v6);

    return v9(v8);
  }

  else
  {
    OUTLINED_FUNCTION_319_0(v3, v4, v5);
    OUTLINED_FUNCTION_15_0();
    v11 = swift_allocError();
    *v12 = 0xD00000000000001BLL;
    v12[1] = v0;
    OUTLINED_FUNCTION_71_5(v11, v12);
    swift_willThrow();
    OUTLINED_FUNCTION_25();

    return v13();
  }
}

uint64_t sub_221B31E64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_221B31E8C, 0, 0);
}

uint64_t sub_221B31E8C()
{
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_164_2();
  if (v1)
  {
    OUTLINED_FUNCTION_109_4(qword_221BE5F80);
    OUTLINED_FUNCTION_389();
    swift_task_alloc();
    OUTLINED_FUNCTION_26_0();
    *(v2 + 64) = v6;
    *v6 = v7;
    v8 = OUTLINED_FUNCTION_70_8(v6);

    return v9(v8);
  }

  else
  {
    OUTLINED_FUNCTION_319_0(v3, v4, v5);
    OUTLINED_FUNCTION_15_0();
    v11 = swift_allocError();
    *v12 = 0xD00000000000001BLL;
    v12[1] = v0;
    OUTLINED_FUNCTION_71_5(v11, v12);
    swift_willThrow();
    OUTLINED_FUNCTION_25();

    return v13();
  }
}

uint64_t sub_221B31F94()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v5 = v4;
  *(v6 + 72) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_221B3208C()
{
  OUTLINED_FUNCTION_1_5();

  OUTLINED_FUNCTION_4_3();

  return v0();
}

uint64_t sub_221B320E4()
{
  OUTLINED_FUNCTION_1_5();

  OUTLINED_FUNCTION_25();

  return v0();
}

uint64_t sub_221B32140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_221BCC558();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221B32208, 0, 0);
}

uint64_t sub_221B32208()
{
  OUTLINED_FUNCTION_384_0();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_87_4(v1);
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_58_9(v2, v3, v4, v5, v6, v7, v8, v9, v10, v11);
  OUTLINED_FUNCTION_10();
  v12 = swift_allocObject();
  OUTLINED_FUNCTION_185_3(v12);
  v13 = swift_task_alloc();
  OUTLINED_FUNCTION_176_3(v13);
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 104) = v14;
  *v14 = v15;
  OUTLINED_FUNCTION_264_0(v14);
  OUTLINED_FUNCTION_91_7();
  OUTLINED_FUNCTION_377_0();

  return MEMORY[0x282200830](v16, v17, v18, v19, v20, v21, v22, v23);
}

uint64_t sub_221B32300()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v6 = v5;
  *(v3 + 112) = v0;

  if (!v0)
  {
    OUTLINED_FUNCTION_392_0();
  }

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_221B3240C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_221BCC558();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221B324D4, 0, 0);
}

uint64_t sub_221B324D4()
{
  OUTLINED_FUNCTION_384_0();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_87_4(v1);
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_58_9(v2, v3, v4, v5, v6, v7, v8, v9, v10, v11);
  OUTLINED_FUNCTION_10();
  v12 = swift_allocObject();
  OUTLINED_FUNCTION_185_3(v12);
  v13 = swift_task_alloc();
  OUTLINED_FUNCTION_176_3(v13);
  v14 = swift_task_alloc();
  *(v0 + 104) = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8048, &qword_221BE5700);
  OUTLINED_FUNCTION_35_3();
  *v14 = v15;
  OUTLINED_FUNCTION_94_2();
  OUTLINED_FUNCTION_91_7();
  OUTLINED_FUNCTION_377_0();

  return MEMORY[0x282200830](v16, v17, v18, v19, v20, v21, v22, v23);
}

uint64_t sub_221B325D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_221BCC558();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221B326A0, 0, 0);
}

uint64_t sub_221B326A0()
{
  OUTLINED_FUNCTION_384_0();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_87_4(v1);
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_58_9(v2, v3, v4, v5, v6, v7, v8, v9, v10, v11);
  OUTLINED_FUNCTION_10();
  v12 = swift_allocObject();
  OUTLINED_FUNCTION_185_3(v12);
  v13 = swift_task_alloc();
  OUTLINED_FUNCTION_176_3(v13);
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 104) = v14;
  *v14 = v15;
  OUTLINED_FUNCTION_264_0(v14);
  OUTLINED_FUNCTION_91_7();
  OUTLINED_FUNCTION_377_0();

  return MEMORY[0x282200830](v16, v17, v18, v19, v20, v21, v22, v23);
}

uint64_t sub_221B32798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_221BCC558();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221B32860, 0, 0);
}

uint64_t sub_221B32860()
{
  OUTLINED_FUNCTION_384_0();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_87_4(v1);
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_58_9(v2, v3, v4, v5, v6, v7, v8, v9, v10, v11);
  OUTLINED_FUNCTION_10();
  v12 = swift_allocObject();
  OUTLINED_FUNCTION_185_3(v12);
  v13 = swift_task_alloc();
  OUTLINED_FUNCTION_176_3(v13);
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 104) = v14;
  *v14 = v15;
  OUTLINED_FUNCTION_264_0(v14);
  OUTLINED_FUNCTION_91_7();
  OUTLINED_FUNCTION_377_0();

  return MEMORY[0x282200830](v16, v17, v18, v19, v20, v21, v22, v23);
}

uint64_t sub_221B32958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_221BCC558();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221B32A20, 0, 0);
}

uint64_t sub_221B32A20()
{
  OUTLINED_FUNCTION_384_0();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_87_4(v1);
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_58_9(v2, v3, v4, v5, v6, v7, v8, v9, v10, v11);
  OUTLINED_FUNCTION_10();
  v12 = swift_allocObject();
  OUTLINED_FUNCTION_185_3(v12);
  v13 = swift_task_alloc();
  OUTLINED_FUNCTION_176_3(v13);
  v14 = swift_task_alloc();
  *(v0 + 104) = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8140, &qword_221BD2A80);
  OUTLINED_FUNCTION_35_3();
  *v14 = v15;
  OUTLINED_FUNCTION_94_2();
  OUTLINED_FUNCTION_91_7();
  OUTLINED_FUNCTION_377_0();

  return MEMORY[0x282200830](v16, v17, v18, v19, v20, v21, v22, v23);
}

uint64_t sub_221B32B24()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v6 = v5;
  *(v3 + 112) = v0;

  if (!v0)
  {
    OUTLINED_FUNCTION_392_0();
  }

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_221B32C30()
{
  OUTLINED_FUNCTION_1_5();
  (*(v0[8] + 8))(v0[9], v0[7]);

  OUTLINED_FUNCTION_4_3();

  return v1();
}

uint64_t sub_221B32CA4()
{
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_14_3();

  v0 = OUTLINED_FUNCTION_103_2();
  v1(v0);

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_253();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_221B32D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = a4;
  v30 = a5;
  v26 = a3;
  v27 = a2;
  v28 = a1;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBC20, &qword_221BE5D30);
  v9 = *(v31 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v31);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB82F0, &qword_221BD2C40);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v26 - v14;
  sub_221BCC558();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB76C8, &unk_221BE8C60);
  sub_221B62E9C(&qword_27CFB9420, MEMORY[0x277CC95F0]);
  v16 = sub_221BCD2C8();
  *(v5 + 48) = 0;
  *(v5 + 56) = v16;
  *(v5 + 64) = 0;
  *(v5 + 72) = 3;
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  v17 = v30;
  *(v5 + 32) = v29;
  *(v5 + 40) = v17;
  v18 = sub_221BCD7F8();
  __swift_storeEnumTagSinglePayload(v15, 1, 1, v18);
  v19 = v31;
  (*(v9 + 16))(v12, a1, v31);
  v20 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v21 = (v10 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  (*(v9 + 32))(v22 + v20, v12, v19);
  *(v22 + v21) = v5;
  v23 = (v22 + ((v21 + 15) & 0xFFFFFFFFFFFFFFF8));
  v24 = v26;
  *v23 = v27;
  v23[1] = v24;

  sub_2219F8C64();

  (*(v9 + 8))(v28, v19);
  return v5;
}

uint64_t sub_221B3300C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a4;
  v7[5] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBC28, &qword_221BE5D38);
  v7[8] = v8;
  v7[9] = *(v8 - 8);
  v7[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221B330DC, 0, 0);
}

uint64_t sub_221B330DC()
{
  OUTLINED_FUNCTION_1_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBC20, &qword_221BE5D30);
  sub_221BCD838();
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 88) = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_192_4(v1);
  OUTLINED_FUNCTION_65_7();

  return MEMORY[0x2822003E8](v3);
}

uint64_t sub_221B33178()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v1 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_221B3325C()
{
  OUTLINED_FUNCTION_67();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (v2 == 255)
  {
    (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));
    if (qword_27CFB7378 != -1)
    {
      OUTLINED_FUNCTION_1_38();
      swift_once();
    }

    v10 = sub_221BCCD88();
    __swift_project_value_buffer(v10, qword_27CFDEDC8);
    OUTLINED_FUNCTION_75();

    v11 = sub_221BCCD68();
    v12 = sub_221BCDA58();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = OUTLINED_FUNCTION_74_0();
      v20 = OUTLINED_FUNCTION_68();
      *v13 = 136315138;
      v14 = OUTLINED_FUNCTION_118();
      *(v13 + 4) = sub_2219A6360(v14, v15, v16);
      _os_log_impl(&dword_221989000, v11, v12, "[%s] CallManager update stream completed", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
      v17 = OUTLINED_FUNCTION_74_3();
      MEMORY[0x223DA4C00](v17);
    }

    OUTLINED_FUNCTION_4_3();

    return v18();
  }

  else
  {
    v3 = *(v0 + 40);
    os_unfair_lock_lock((v3 + 48));
    v4 = *(v3 + 64);
    *(v3 + 64) = v1;
    v5 = *(v3 + 72);
    *(v3 + 72) = v2;
    sub_221B5D0C8(v1, v2);
    sub_221B5D0A4(v4, v5);
    v6 = *(v3 + 56);

    os_unfair_lock_unlock((v3 + 48));
    sub_221B334A8(v1, v2, v6);
    sub_221B61B30(v1, v2);

    swift_task_alloc();
    OUTLINED_FUNCTION_26_0();
    *(v0 + 88) = v7;
    *v7 = v8;
    OUTLINED_FUNCTION_192_4(v7);
    OUTLINED_FUNCTION_65_7();

    return MEMORY[0x2822003E8](v9);
  }
}

void sub_221B334A8(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  LOBYTE(v6) = a2;
  v55 = a1;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB76C8, &unk_221BE8C60);
  v56 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v52 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v52 - v13;
  v58 = type metadata accessor for RemoteAppIntentsActor(0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBC78, &qword_221BE5DB8);
  v60 = sub_221B61E70(&qword_27CFBBC80, &qword_27CFBBC78);
  KeyPath = swift_getKeyPath();

  v57 = a3;
  v16 = sub_221B36F90(a3, KeyPath);

  if (!v16[2])
  {

    return;
  }

  if (qword_27CFB7378 != -1)
  {
    goto LABEL_42;
  }

  while (2)
  {
    v17 = sub_221BCCD88();
    __swift_project_value_buffer(v17, qword_27CFDEDC8);

    v18 = v55;
    sub_221B5D0C8(v55, v6);

    v19 = sub_221BCCD68();
    v20 = sub_221BCDA58();

    sub_221B5D0A4(v18, v6);

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v61[0] = v53;
      *v21 = 136315650;
      *(v21 + 4) = sub_2219A6360(*(v4 + 16), *(v4 + 24), v61);
      *(v21 + 12) = 2080;
      v22 = v18;
      v23 = v6;
      v24 = sub_221B2E4E8(v22, v6);
      v26 = sub_2219A6360(v24, v25, v61);

      *(v21 + 14) = v26;
      *(v21 + 22) = 2080;
      v27 = sub_221BCC558();
      v28 = MEMORY[0x223DA33D0](v16, v27);
      v6 = v29;

      v30 = sub_2219A6360(v28, v6, v61);

      *(v21 + 24) = v30;
      _os_log_impl(&dword_221989000, v19, v20, "[%s] Applying state %s to %s", v21, 0x20u);
      v31 = v53;
      swift_arrayDestroy();
      MEMORY[0x223DA4C00](v31, -1, -1);
      MEMORY[0x223DA4C00](v21, -1, -1);
    }

    else
    {
      v23 = v6;
    }

    switch(v23)
    {
      case 1:
        v38 = v57 + 64;
        v39 = 1 << *(v57 + 32);
        v40 = -1;
        if (v39 < 64)
        {
          v40 = ~(-1 << v39);
        }

        v11 = v40 & *(v57 + 64);
        v4 = (v39 + 63) >> 6;

        i = 0;
        v16 = &unk_221BE8C60;
        v14 = v55;
        if (v11)
        {
          goto LABEL_21;
        }

        while (1)
        {
          do
          {
            v42 = i + 1;
            if (__OFADD__(i, 1))
            {
              __break(1u);
              goto LABEL_40;
            }

            if (v42 >= v4)
            {
              goto LABEL_38;
            }

            v11 = *(v38 + 8 * v42);
            ++i;
          }

          while (!v11);
          for (i = v42; ; v42 = i)
          {
            v43 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v44 = sub_221B62018(*(v57 + 56) + *(v56 + 72) * (v43 | (v42 << 6)), v8, &qword_27CFB76C8, &unk_221BE8C60);
            (*v8)(v44);
            (*(v8 + *(v54 + 36)))(v14);
            sub_2219EC58C(v8, &qword_27CFB76C8);
            if (!v11)
            {
              break;
            }

LABEL_21:
            ;
          }
        }

      case 2:
        v45 = v57 + 64;
        v46 = 1 << *(v57 + 32);
        v47 = -1;
        if (v46 < 64)
        {
          v47 = ~(-1 << v46);
        }

        v8 = v47 & *(v57 + 64);
        v4 = (v46 + 63) >> 6;

        j = 0;
        v16 = &unk_221BE8C60;
        v14 = v55;
        if (v8)
        {
          goto LABEL_31;
        }

LABEL_32:
        v49 = j + 1;
        if (__OFADD__(j, 1))
        {
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          swift_once();
          continue;
        }

        if (v49 < v4)
        {
          v8 = *(v45 + 8 * v49);
          ++j;
          if (v8)
          {
            for (j = v49; ; v49 = j)
            {
              v50 = __clz(__rbit64(v8));
              v8 &= v8 - 1;
              v51 = sub_221B62018(*(v57 + 56) + *(v56 + 72) * (v50 | (v49 << 6)), v11, &qword_27CFB76C8, &unk_221BE8C60);
              (*v11)(v51);
              (*(v11 + *(v54 + 40)))(v14);
              sub_2219EC58C(v11, &qword_27CFB76C8);
              if (!v8)
              {
                break;
              }

LABEL_31:
              ;
            }
          }

          goto LABEL_32;
        }

LABEL_38:

        return;
      case 3:
        return;
      default:
        v32 = v57 + 64;
        v33 = 1 << *(v57 + 32);
        v34 = -1;
        if (v33 < 64)
        {
          v34 = ~(-1 << v33);
        }

        v8 = v34 & *(v57 + 64);
        v4 = (v33 + 63) >> 6;

        k = 0;
        v16 = &unk_221BE8C60;
        if (v8)
        {
          goto LABEL_11;
        }

        while (2)
        {
          v36 = k + 1;
          if (__OFADD__(k, 1))
          {
            goto LABEL_41;
          }

          if (v36 < v4)
          {
            v8 = *(v32 + 8 * v36);
            ++k;
            if (v8)
            {
              for (k = v36; ; v36 = k)
              {
                v37 = __clz(__rbit64(v8));
                v8 &= v8 - 1;
                sub_221B62018(*(v57 + 56) + *(v56 + 72) * (v37 | (v36 << 6)), v14, &qword_27CFB76C8, &unk_221BE8C60);
                v11 = *(v14 + 2);

                sub_2219EC58C(v14, &qword_27CFB76C8);
                v61[0] = v55;
                (v11)(v61);

                if (!v8)
                {
                  break;
                }

LABEL_11:
                ;
              }
            }

            continue;
          }

          goto LABEL_38;
        }
    }
  }
}

void sub_221B33B40(void *a1, uint64_t a2, uint64_t a3)
{
  v63 = a2;
  v66 = a1;
  v4 = sub_221BCC558();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB76C8, &unk_221BE8C60);
  v8 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v64 = (&v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v62 = (&v58 - v11);
  MEMORY[0x28223BE20](v12);
  v61 = &v58 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v58 - v15;
  v17 = *(a3 + 16);
  v71 = MEMORY[0x277D84F90];
  sub_2219A3154(0, v17, 0);
  v18 = v71;
  v65 = v17;
  v58 = v8;
  v59 = a3;
  if (v17)
  {
    v19 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v69 = *(v8 + 72);
    v70 = v5;
    v20 = (v5 + 16);
    v68 = v5 + 32;
    v21 = v67;
    do
    {
      sub_221B62018(v19, v16, &qword_27CFB76C8, &unk_221BE8C60);
      (*v20)(v7, &v16[*(v21 + 32)], v4);
      sub_2219EC58C(v16, &qword_27CFB76C8);
      v71 = v18;
      v22 = v4;
      v24 = *(v18 + 16);
      v23 = *(v18 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_2219A3154(v23 > 1, v24 + 1, 1);
        v21 = v67;
        v18 = v71;
      }

      *(v18 + 16) = v24 + 1;
      (*(v70 + 32))(v18 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v24, v7, v22);
      v19 += v69;
      --v17;
      v4 = v22;
    }

    while (v17);
  }

  if (*(v18 + 16))
  {
    v25 = v4;
    if (qword_27CFB7378 != -1)
    {
      swift_once();
    }

    v26 = sub_221BCCD88();
    __swift_project_value_buffer(v26, qword_27CFDEDC8);
    v27 = v60;

    v28 = v66;
    v29 = v63;
    sub_221B5D0C8(v66, v63);

    v30 = sub_221BCCD68();
    v31 = sub_221BCDA58();

    sub_221B5D0A4(v28, v29);

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v71 = v33;
      *v32 = 136315650;
      *(v32 + 4) = sub_2219A6360(*(v27 + 16), *(v27 + 24), &v71);
      *(v32 + 12) = 2080;
      v34 = sub_221B2E4E8(v28, v29);
      v36 = sub_2219A6360(v34, v35, &v71);

      *(v32 + 14) = v36;
      *(v32 + 22) = 2080;
      v37 = MEMORY[0x223DA33D0](v18, v25);
      v39 = v38;

      v40 = sub_2219A6360(v37, v39, &v71);

      *(v32 + 24) = v40;
      _os_log_impl(&dword_221989000, v30, v31, "[%s] Applying state %s to %s", v32, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x223DA4C00](v33, -1, -1);
      MEMORY[0x223DA4C00](v32, -1, -1);
    }

    else
    {
    }

    v42 = v64;
    v41 = v65;
    v43 = v66;
    v44 = v29;
    v45 = v61;
    v46 = v62;
    switch(v44)
    {
      case 1:
        if (v65)
        {
          v50 = (v64 + *(v67 + 36));
          v51 = v59 + ((*(v58 + 80) + 32) & ~*(v58 + 80));
          v52 = *(v58 + 72);
          do
          {
            v53 = sub_221B62018(v51, v42, &qword_27CFB76C8, &unk_221BE8C60);
            (*v42)(v53);
            (*v50)(v43);
            sub_2219EC58C(v42, &qword_27CFB76C8);
            v51 += v52;
            --v41;
          }

          while (v41);
        }

        break;
      case 2:
        if (v65)
        {
          v54 = (v62 + *(v67 + 40));
          v55 = v59 + ((*(v58 + 80) + 32) & ~*(v58 + 80));
          v56 = *(v58 + 72);
          do
          {
            v57 = sub_221B62018(v55, v46, &qword_27CFB76C8, &unk_221BE8C60);
            (*v46)(v57);
            (*v54)(v43);
            sub_2219EC58C(v46, &qword_27CFB76C8);
            v55 += v56;
            --v41;
          }

          while (v41);
        }

        break;
      case 3:
        return;
      default:
        if (v65)
        {
          v47 = v59 + ((*(v58 + 80) + 32) & ~*(v58 + 80));
          v48 = *(v58 + 72);
          do
          {
            sub_221B62018(v47, v45, &qword_27CFB76C8, &unk_221BE8C60);
            v49 = *(v45 + 16);

            sub_2219EC58C(v45, &qword_27CFB76C8);
            v71 = v43;
            v49(&v71);

            v47 += v48;
            --v41;
          }

          while (v41);
        }

        break;
    }
  }

  else
  {
  }
}

uint64_t sub_221B341E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](sub_221B3420C, 0, 0);
}

uint64_t sub_221B3420C()
{
  OUTLINED_FUNCTION_8_0();
  v1 = OUTLINED_FUNCTION_390_0();
  OUTLINED_FUNCTION_51_7(v1);
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 72) = v2;
  *v2 = v3;
  OUTLINED_FUNCTION_264_0(v2);
  OUTLINED_FUNCTION_307_0();
  OUTLINED_FUNCTION_65_7();
  OUTLINED_FUNCTION_178_4();

  return MEMORY[0x2822008A0](v4);
}

uint64_t sub_221B342D4()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v6 = v5;
  *(v3 + 80) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_27_0();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_25();

    return v10();
  }
}

uint64_t sub_221B343F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](sub_221B34418, 0, 0);
}

uint64_t sub_221B34418()
{
  OUTLINED_FUNCTION_8_0();
  v1 = OUTLINED_FUNCTION_390_0();
  OUTLINED_FUNCTION_51_7(v1);
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8048, &qword_221BE5700);
  OUTLINED_FUNCTION_35_3();
  *v2 = v3;
  OUTLINED_FUNCTION_94_2();
  OUTLINED_FUNCTION_307_0();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_178_4();

  return MEMORY[0x2822008A0](v4);
}

uint64_t sub_221B344EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](sub_221B34514, 0, 0);
}

uint64_t sub_221B34514()
{
  OUTLINED_FUNCTION_8_0();
  v1 = OUTLINED_FUNCTION_390_0();
  OUTLINED_FUNCTION_51_7(v1);
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 72) = v2;
  *v2 = v3;
  OUTLINED_FUNCTION_264_0(v2);
  OUTLINED_FUNCTION_307_0();
  OUTLINED_FUNCTION_65_7();
  OUTLINED_FUNCTION_178_4();

  return MEMORY[0x2822008A0](v4);
}

uint64_t sub_221B345DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](sub_221B34604, 0, 0);
}

uint64_t sub_221B34604()
{
  OUTLINED_FUNCTION_8_0();
  v1 = OUTLINED_FUNCTION_390_0();
  OUTLINED_FUNCTION_51_7(v1);
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 72) = v2;
  *v2 = v3;
  OUTLINED_FUNCTION_264_0(v2);
  OUTLINED_FUNCTION_307_0();
  OUTLINED_FUNCTION_65_7();
  OUTLINED_FUNCTION_178_4();

  return MEMORY[0x2822008A0](v4);
}

uint64_t sub_221B346CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](sub_221B346F4, 0, 0);
}

uint64_t sub_221B346F4()
{
  OUTLINED_FUNCTION_8_0();
  v1 = OUTLINED_FUNCTION_390_0();
  OUTLINED_FUNCTION_51_7(v1);
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8140, &qword_221BD2A80);
  OUTLINED_FUNCTION_35_3();
  *v2 = v3;
  OUTLINED_FUNCTION_94_2();
  OUTLINED_FUNCTION_307_0();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_178_4();

  return MEMORY[0x2822008A0](v4);
}

uint64_t sub_221B347C8()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v6 = v5;
  *(v3 + 80) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_27_0();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_25();

    return v10();
  }
}

uint64_t sub_221B348E4()
{
  OUTLINED_FUNCTION_1_5();

  OUTLINED_FUNCTION_25();

  return v0();
}

uint64_t sub_221B34940(uint64_t a1, os_unfair_lock_s *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v53 = a6;
  v60 = a5;
  v63 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB76C8, &unk_221BE8C60);
  v10 = *(v9 - 8);
  v64 = v9 - 8;
  v65 = v10;
  MEMORY[0x28223BE20](v9 - 8);
  v56 = (&v52 - v11);
  v12 = sub_221BCC558();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v52 - v17;
  v58 = &v52 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBB80, &qword_221BE5BA0);
  v20 = MEMORY[0x28223BE20](v19);
  v61 = &v52 - v21;
  (*(v22 + 16))(v20);
  v23 = *&a2[6]._os_unfair_lock_opaque;
  v59 = *&a2[4]._os_unfair_lock_opaque;
  v55 = v23;
  v66 = *(v13 + 16);
  v62 = a3;
  v66(v18, a3, v12);
  v24 = *&a2[10]._os_unfair_lock_opaque;
  v57 = *&a2[8]._os_unfair_lock_opaque;
  v54 = v24;
  v25 = swift_allocObject();
  *(v25 + 16) = v60;
  *(v25 + 24) = a6;
  v26 = swift_allocObject();
  swift_weakInit();
  v66(v15, a3, v12);
  v27 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = v26;
  v29 = v15;
  v30 = a2;
  v31 = v56;
  (*(v13 + 32))(v28 + v27, v29, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBB88, &qword_221BE5BB8);
  swift_allocObject();
  v32 = v63;

  v33 = v55;

  v34 = v54;

  sub_221B27210(v61, v59, v33, v58, v32, v57, v34, &unk_221BE5BB0, v25, sub_221B62F08, v28, &qword_27CFBBB80, &qword_221BE5BA0, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66);
  v36 = v35;
  *v31 = sub_221B62F0C;
  v31[1] = v35;
  v31[2] = sub_221B61174;
  v31[3] = v35;
  v37 = v64;
  v66(v31 + *(v64 + 40), v35 + *(*v35 + 120), v12);
  v38 = (v31 + *(v37 + 44));
  *v38 = sub_221B6117C;
  v38[1] = v36;
  v39 = (v31 + *(v37 + 48));
  *v39 = sub_221B61198;
  v39[1] = v36;
  swift_retain_n();
  os_unfair_lock_lock(v30 + 12);
  sub_221B36700(&v30[14], v30, v62, v31, v40, v41, v42, v43, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63);
  v45 = v44;
  v47 = v46;
  os_unfair_lock_unlock(v30 + 12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBAE8, &unk_221BE55D8);
  v48 = (*(v65 + 80) + 32) & ~*(v65 + 80);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_221BD19E0;
  sub_221B62018(v31, v49 + v48, &qword_27CFB76C8, &unk_221BE8C60);
  sub_221B33B40(v45, v47, v49);
  sub_221B5D0A4(v45, v47);

  swift_setDeallocating();
  sub_221B58C10();
  return sub_2219EC58C(v31, &qword_27CFB76C8);
}

uint64_t sub_221B34E88(uint64_t a1, os_unfair_lock_s *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v53 = a6;
  v60 = a5;
  v63 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB76C8, &unk_221BE8C60);
  v10 = *(v9 - 8);
  v64 = v9 - 8;
  v65 = v10;
  MEMORY[0x28223BE20](v9 - 8);
  v56 = (&v52 - v11);
  v12 = sub_221BCC558();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v52 - v17;
  v58 = &v52 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB78F8, &qword_221BD19B0);
  v20 = MEMORY[0x28223BE20](v19);
  v61 = &v52 - v21;
  (*(v22 + 16))(v20);
  v23 = *&a2[6]._os_unfair_lock_opaque;
  v59 = *&a2[4]._os_unfair_lock_opaque;
  v55 = v23;
  v66 = *(v13 + 16);
  v62 = a3;
  v66(v18, a3, v12);
  v24 = *&a2[10]._os_unfair_lock_opaque;
  v57 = *&a2[8]._os_unfair_lock_opaque;
  v54 = v24;
  v25 = swift_allocObject();
  *(v25 + 16) = v60;
  *(v25 + 24) = a6;
  v26 = swift_allocObject();
  swift_weakInit();
  v66(v15, a3, v12);
  v27 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = v26;
  v29 = v15;
  v30 = a2;
  v31 = v56;
  (*(v13 + 32))(v28 + v27, v29, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBB50, &qword_221BE5788);
  swift_allocObject();
  v32 = v63;

  v33 = v55;

  v34 = v54;

  sub_221B27210(v61, v59, v33, v58, v32, v57, v34, &unk_221BE5780, v25, sub_221B62F08, v28, &qword_27CFB78F8, &qword_221BD19B0, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66);
  v36 = v35;
  *v31 = sub_221B62F0C;
  v31[1] = v35;
  v31[2] = sub_221B5DE44;
  v31[3] = v35;
  v37 = v64;
  v66(v31 + *(v64 + 40), v35 + *(*v35 + 120), v12);
  v38 = (v31 + *(v37 + 44));
  *v38 = sub_221B5DE4C;
  v38[1] = v36;
  v39 = (v31 + *(v37 + 48));
  *v39 = sub_221B5DE50;
  v39[1] = v36;
  swift_retain_n();
  os_unfair_lock_lock(v30 + 12);
  sub_221B36700(&v30[14], v30, v62, v31, v40, v41, v42, v43, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63);
  v45 = v44;
  v47 = v46;
  os_unfair_lock_unlock(v30 + 12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBAE8, &unk_221BE55D8);
  v48 = (*(v65 + 80) + 32) & ~*(v65 + 80);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_221BD19E0;
  sub_221B62018(v31, v49 + v48, &qword_27CFB76C8, &unk_221BE8C60);
  sub_221B33B40(v45, v47, v49);
  sub_221B5D0A4(v45, v47);

  swift_setDeallocating();
  sub_221B58C10();
  return sub_2219EC58C(v31, &qword_27CFB76C8);
}

uint64_t sub_221B353D0(uint64_t a1, os_unfair_lock_s *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v53 = a6;
  v60 = a5;
  v63 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB76C8, &unk_221BE8C60);
  v10 = *(v9 - 8);
  v64 = v9 - 8;
  v65 = v10;
  MEMORY[0x28223BE20](v9 - 8);
  v56 = (&v52 - v11);
  v12 = sub_221BCC558();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v52 - v17;
  v58 = &v52 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7898, &qword_221BD1930);
  v20 = MEMORY[0x28223BE20](v19);
  v61 = &v52 - v21;
  (*(v22 + 16))(v20);
  v23 = *&a2[6]._os_unfair_lock_opaque;
  v59 = *&a2[4]._os_unfair_lock_opaque;
  v55 = v23;
  v66 = *(v13 + 16);
  v62 = a3;
  v66(v18, a3, v12);
  v24 = *&a2[10]._os_unfair_lock_opaque;
  v57 = *&a2[8]._os_unfair_lock_opaque;
  v54 = v24;
  v25 = swift_allocObject();
  *(v25 + 16) = v60;
  *(v25 + 24) = a6;
  v26 = swift_allocObject();
  swift_weakInit();
  v66(v15, a3, v12);
  v27 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = v26;
  v29 = v15;
  v30 = a2;
  v31 = v56;
  (*(v13 + 32))(v28 + v27, v29, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBAE0, &qword_221BE55D0);
  swift_allocObject();
  v32 = v63;

  v33 = v55;

  v34 = v54;

  sub_221B27210(v61, v59, v33, v58, v32, v57, v34, &unk_221BE55C8, v25, sub_221B62F08, v28, &qword_27CFB7898, &qword_221BD1930, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66);
  v36 = v35;
  *v31 = sub_221B62F0C;
  v31[1] = v35;
  v31[2] = sub_221B5D06C;
  v31[3] = v35;
  v37 = v64;
  v66(v31 + *(v64 + 40), v35 + *(*v35 + 120), v12);
  v38 = (v31 + *(v37 + 44));
  *v38 = sub_221B5D074;
  v38[1] = v36;
  v39 = (v31 + *(v37 + 48));
  *v39 = sub_221B5D078;
  v39[1] = v36;
  swift_retain_n();
  os_unfair_lock_lock(v30 + 12);
  sub_221B36700(&v30[14], v30, v62, v31, v40, v41, v42, v43, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63);
  v45 = v44;
  v47 = v46;
  os_unfair_lock_unlock(v30 + 12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBAE8, &unk_221BE55D8);
  v48 = (*(v65 + 80) + 32) & ~*(v65 + 80);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_221BD19E0;
  sub_221B62018(v31, v49 + v48, &qword_27CFB76C8, &unk_221BE8C60);
  sub_221B33B40(v45, v47, v49);
  sub_221B5D0A4(v45, v47);

  swift_setDeallocating();
  sub_221B58C10();
  return sub_2219EC58C(v31, &qword_27CFB76C8);
}

uint64_t sub_221B35918(uint64_t a1, os_unfair_lock_s *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v53 = a6;
  v60 = a5;
  v63 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB76C8, &unk_221BE8C60);
  v10 = *(v9 - 8);
  v64 = v9 - 8;
  v65 = v10;
  MEMORY[0x28223BE20](v9 - 8);
  v56 = (&v52 - v11);
  v12 = sub_221BCC558();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v52 - v17;
  v58 = &v52 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBB68, &qword_221BE5A98);
  v20 = MEMORY[0x28223BE20](v19);
  v61 = &v52 - v21;
  (*(v22 + 16))(v20);
  v23 = *&a2[6]._os_unfair_lock_opaque;
  v59 = *&a2[4]._os_unfair_lock_opaque;
  v55 = v23;
  v66 = *(v13 + 16);
  v62 = a3;
  v66(v18, a3, v12);
  v24 = *&a2[10]._os_unfair_lock_opaque;
  v57 = *&a2[8]._os_unfair_lock_opaque;
  v54 = v24;
  v25 = swift_allocObject();
  *(v25 + 16) = v60;
  *(v25 + 24) = a6;
  v26 = swift_allocObject();
  swift_weakInit();
  v66(v15, a3, v12);
  v27 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = v26;
  v29 = v15;
  v30 = a2;
  v31 = v56;
  (*(v13 + 32))(v28 + v27, v29, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBB70, &qword_221BE5AB0);
  swift_allocObject();
  v32 = v63;

  v33 = v55;

  v34 = v54;

  sub_221B27210(v61, v59, v33, v58, v32, v57, v34, &unk_221BE5AA8, v25, sub_221B62F08, v28, &qword_27CFBBB68, &qword_221BE5A98, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66);
  v36 = v35;
  *v31 = sub_221B62F0C;
  v31[1] = v35;
  v31[2] = sub_221B60950;
  v31[3] = v35;
  v37 = v64;
  v66(v31 + *(v64 + 40), v35 + *(*v35 + 120), v12);
  v38 = (v31 + *(v37 + 44));
  *v38 = sub_221B60958;
  v38[1] = v36;
  v39 = (v31 + *(v37 + 48));
  *v39 = sub_221B6095C;
  v39[1] = v36;
  swift_retain_n();
  os_unfair_lock_lock(v30 + 12);
  sub_221B36700(&v30[14], v30, v62, v31, v40, v41, v42, v43, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63);
  v45 = v44;
  v47 = v46;
  os_unfair_lock_unlock(v30 + 12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBAE8, &unk_221BE55D8);
  v48 = (*(v65 + 80) + 32) & ~*(v65 + 80);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_221BD19E0;
  sub_221B62018(v31, v49 + v48, &qword_27CFB76C8, &unk_221BE8C60);
  sub_221B33B40(v45, v47, v49);
  sub_221B5D0A4(v45, v47);

  swift_setDeallocating();
  sub_221B58C10();
  return sub_2219EC58C(v31, &qword_27CFB76C8);
}

uint64_t sub_221B35E60(uint64_t a1, os_unfair_lock_s *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v53 = a6;
  v60 = a5;
  v63 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB76C8, &unk_221BE8C60);
  v10 = *(v9 - 8);
  v64 = v9 - 8;
  v65 = v10;
  MEMORY[0x28223BE20](v9 - 8);
  v56 = (&v52 - v11);
  v12 = sub_221BCC558();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v52 - v17;
  v58 = &v52 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBCB0, &qword_221BE5F98);
  v20 = MEMORY[0x28223BE20](v19);
  v61 = &v52 - v21;
  (*(v22 + 16))(v20);
  v23 = *&a2[6]._os_unfair_lock_opaque;
  v59 = *&a2[4]._os_unfair_lock_opaque;
  v55 = v23;
  v66 = *(v13 + 16);
  v62 = a3;
  v66(v18, a3, v12);
  v24 = *&a2[10]._os_unfair_lock_opaque;
  v57 = *&a2[8]._os_unfair_lock_opaque;
  v54 = v24;
  v25 = swift_allocObject();
  *(v25 + 16) = v60;
  *(v25 + 24) = a6;
  v26 = swift_allocObject();
  swift_weakInit();
  v66(v15, a3, v12);
  v27 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = v26;
  v29 = v15;
  v30 = a2;
  v31 = v56;
  (*(v13 + 32))(v28 + v27, v29, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBCB8, &qword_221BE5FB0);
  swift_allocObject();
  v32 = v63;

  v33 = v55;

  v34 = v54;

  sub_221B27210(v61, v59, v33, v58, v32, v57, v34, &unk_221BE5FA8, v25, sub_221B6289C, v28, &qword_27CFBBCB0, &qword_221BE5F98, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66);
  v36 = v35;
  *v31 = sub_221B628A0;
  v31[1] = v35;
  v31[2] = sub_221B628C4;
  v31[3] = v35;
  v37 = v64;
  v66(v31 + *(v64 + 40), v35 + *(*v35 + 120), v12);
  v38 = (v31 + *(v37 + 44));
  *v38 = sub_221B628CC;
  v38[1] = v36;
  v39 = (v31 + *(v37 + 48));
  *v39 = sub_221B628E8;
  v39[1] = v36;
  swift_retain_n();
  os_unfair_lock_lock(v30 + 12);
  sub_221B36700(&v30[14], v30, v62, v31, v40, v41, v42, v43, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63);
  v45 = v44;
  v47 = v46;
  os_unfair_lock_unlock(v30 + 12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBAE8, &unk_221BE55D8);
  v48 = (*(v65 + 80) + 32) & ~*(v65 + 80);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_221BD19E0;
  sub_221B62018(v31, v49 + v48, &qword_27CFB76C8, &unk_221BE8C60);
  sub_221B33B40(v45, v47, v49);
  sub_221B5D0A4(v45, v47);

  swift_setDeallocating();
  sub_221B58C10();
  return sub_2219EC58C(v31, &qword_27CFB76C8);
}

os_unfair_lock_s *sub_221B363A8(uint64_t a1)
{
  OUTLINED_FUNCTION_237_2();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    os_unfair_lock_lock(result + 12);
    OUTLINED_FUNCTION_207_4();
    sub_221B36428(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, vars0, vars8);
    os_unfair_lock_unlock(v2 + 12);
  }

  return result;
}

void sub_221B36428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_55_4();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v55 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBAD8, &unk_221BE55B0);
  OUTLINED_FUNCTION_8_1(v28);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v29);
  v54 = v53 - v30;
  v31 = sub_221BCC558();
  OUTLINED_FUNCTION_0_2();
  v33 = v32;
  MEMORY[0x28223BE20](v34);
  v36 = v53 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27CFB7378 != -1)
  {
    OUTLINED_FUNCTION_1_38();
    swift_once();
  }

  v37 = sub_221BCCD88();
  __swift_project_value_buffer(v37, qword_27CFDEDC8);
  (*(v33 + 16))(v36, v24, v31);

  v38 = sub_221BCCD68();
  v39 = sub_221BCDA58();

  if (os_log_type_enabled(v38, v39))
  {
    OUTLINED_FUNCTION_20_6();
    v40 = swift_slowAlloc();
    v53[1] = v20;
    v41 = v40;
    OUTLINED_FUNCTION_19_6();
    v42 = swift_slowAlloc();
    v53[0] = v24;
    a10 = v42;
    *v41 = 136315394;
    *(v41 + 4) = sub_2219A6360(*(v26 + 16), *(v26 + 24), &a10);
    *(v41 + 12) = 2080;
    OUTLINED_FUNCTION_0_44();
    sub_221B62E9C(v43, v44);
    sub_221BCE168();
    OUTLINED_FUNCTION_40_4();
    v45 = OUTLINED_FUNCTION_221();
    v46(v45);
    v47 = OUTLINED_FUNCTION_194_3();
    sub_2219A6360(v47, v48, v49);
    OUTLINED_FUNCTION_124_2();

    *(v41 + 14) = v36;
    _os_log_impl(&dword_221989000, v38, v39, "[%s] Removing <%s> from active calls", v41, 0x16u);
    swift_arrayDestroy();
    v24 = v53[0];
    OUTLINED_FUNCTION_29_1();
    MEMORY[0x223DA4C00]();
    OUTLINED_FUNCTION_29_1();
    MEMORY[0x223DA4C00]();
  }

  else
  {

    v50 = OUTLINED_FUNCTION_221();
    v51(v50);
  }

  v52 = v54;
  sub_2219A09DC(v24, v54);
  sub_2219EC58C(v52, &qword_27CFBBAD8);
  OUTLINED_FUNCTION_53_5();
}

void sub_221B36700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_55_4();
  a19 = v21;
  a20 = v22;
  v63 = v24;
  v64 = v23;
  v26 = v25;
  v28 = v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBAD8, &unk_221BE55B0);
  OUTLINED_FUNCTION_8_1(v29);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v30);
  v62 = v58 - v31;
  v32 = sub_221BCC558();
  OUTLINED_FUNCTION_0_2();
  v34 = v33;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_9_5();
  v60 = v36 - v37;
  MEMORY[0x28223BE20](v38);
  v40 = v58 - v39;
  if (qword_27CFB7378 != -1)
  {
    OUTLINED_FUNCTION_1_38();
    swift_once();
  }

  v41 = sub_221BCCD88();
  __swift_project_value_buffer(v41, qword_27CFDEDC8);
  v42 = *(v34 + 16);
  v61 = v26;
  v59 = v42;
  v42(v40, v26, v32);

  v43 = sub_221BCCD68();
  v44 = sub_221BCDA58();

  if (os_log_type_enabled(v43, v44))
  {
    OUTLINED_FUNCTION_20_6();
    swift_slowAlloc();
    v58[1] = v20;
    OUTLINED_FUNCTION_67_6();
    v58[0] = swift_slowAlloc();
    a10 = v58[0];
    *v20 = 136315394;
    v45 = sub_2219A6360(*(v28 + 16), *(v28 + 24), &a10);
    OUTLINED_FUNCTION_327_0(v45);
    OUTLINED_FUNCTION_0_44();
    sub_221B62E9C(v46, v47);
    sub_221BCE168();
    OUTLINED_FUNCTION_40_4();
    (*(v34 + 8))(v40, v32);
    v48 = OUTLINED_FUNCTION_194_3();
    v51 = sub_2219A6360(v48, v49, v50);

    *(v20 + 14) = v51;
    _os_log_impl(&dword_221989000, v43, v44, "[%s] Enqueuing call <%s> to active calls", v20, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_29_1();
    MEMORY[0x223DA4C00]();
    OUTLINED_FUNCTION_29_1();
    MEMORY[0x223DA4C00]();
  }

  else
  {

    (*(v34 + 8))(v40, v32);
  }

  v52 = v60;
  v59(v60, v61, v32);
  v53 = v62;
  sub_221B62018(v63, v62, &qword_27CFB76C8, &unk_221BE8C60);
  v54 = OUTLINED_FUNCTION_0_0();
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(v54, v55);
  __swift_storeEnumTagSinglePayload(v53, 0, 1, v56);
  v57 = v64;
  sub_221BC5BD0(v53, v52);
  sub_221B5D0C8(*(v57 + 8), *(v57 + 16));
  OUTLINED_FUNCTION_53_5();
}

void sub_221B36A58()
{
  OUTLINED_FUNCTION_21();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBAD8, &unk_221BE55B0);
  v3 = OUTLINED_FUNCTION_8_1(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_9_5();
  v6 = v4 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v42 - v8;
  v10 = sub_221BCC558();
  OUTLINED_FUNCTION_0_2();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_237_2();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    if (qword_27CFB7378 != -1)
    {
      OUTLINED_FUNCTION_1_38();
      swift_once();
    }

    v18 = sub_221BCCD88();
    OUTLINED_FUNCTION_178(v18, qword_27CFDEDC8);
    (*(v12 + 16))(v15, v1, v10);

    v19 = sub_221BCCD68();
    v20 = sub_221BCDA58();

    if (os_log_type_enabled(v19, v20))
    {
      OUTLINED_FUNCTION_20_6();
      v21 = swift_slowAlloc();
      v45 = v9;
      v22 = v21;
      OUTLINED_FUNCTION_19_6();
      v43 = swift_slowAlloc();
      v46 = v43;
      *v22 = 136315394;
      v44 = v1;
      v23 = *(v17 + 16);

      v24 = OUTLINED_FUNCTION_70();
      sub_2219A6360(v24, v25, v26);
      OUTLINED_FUNCTION_97_1();

      *(v22 + 4) = v23;
      *(v22 + 12) = 2080;
      OUTLINED_FUNCTION_0_44();
      sub_221B62E9C(v27, v28);
      v29 = sub_221BCE168();
      v30 = OUTLINED_FUNCTION_14();
      v31(v30);
      v32 = OUTLINED_FUNCTION_0_0();
      sub_2219A6360(v32, v33, v34);
      OUTLINED_FUNCTION_66_2();

      *(v22 + 14) = v29;
      v1 = v44;
      _os_log_impl(&dword_221989000, v19, v20, "[%s] Cancelling <%s> (parent cancelled)", v22, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
      v9 = v45;
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
    }

    else
    {

      v35 = OUTLINED_FUNCTION_14();
      v36(v35);
    }

    os_unfair_lock_lock((v17 + 48));
    sub_221B36EB4((v17 + 56), v1, v9);
    os_unfair_lock_unlock((v17 + 48));
    sub_221B62018(v9, v6, &qword_27CFBBAD8, &unk_221BE55B0);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB76C8, &unk_221BE8C60);
    if (__swift_getEnumTagSinglePayload(v6, 1, v37) == 1)
    {
      sub_2219EC58C(v9, &qword_27CFBBAD8);

      sub_2219EC58C(v6, &qword_27CFBBAD8);
    }

    else
    {
      v38 = *(v6 + *(v37 + 36));

      sub_2219EC58C(v6, &qword_27CFB76C8);
      sub_221BCD7B8();
      OUTLINED_FUNCTION_76_4();
      sub_221B62E9C(v39, v40);
      OUTLINED_FUNCTION_15_0();
      v41 = swift_allocError();
      sub_221BCD268();
      v38(v41);

      sub_2219EC58C(v9, &qword_27CFBBAD8);
    }
  }

  OUTLINED_FUNCTION_22();
}

uint64_t sub_221B36EB4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  if (*(*a1 + 16) && (v5 = sub_221B9EA30(a2), (v6 & 1) != 0))
  {
    v7 = v5;
    v8 = *(v4 + 56);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB76C8, &unk_221BE8C60);
    OUTLINED_FUNCTION_2_1();
    sub_221B62018(v8 + *(v10 + 72) * v7, a3, &qword_27CFB76C8, &unk_221BE8C60);
    v11 = a3;
    v12 = 0;
    v13 = 1;
    v14 = v9;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB76C8, &unk_221BE8C60);
    OUTLINED_FUNCTION_108();
  }

  return __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
}

uint64_t sub_221B36F90(uint64_t a1, uint64_t a2)
{
  v49 = a2;
  v47 = sub_221BCC558();
  v3 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v38 = &v37 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB76C8, &unk_221BE8C60);
  v45 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v44 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v40 = &v37 - v11;
  MEMORY[0x28223BE20](v12);
  v39 = &v37 - v13;
  v14 = *(a1 + 16);
  v51 = MEMORY[0x277D84F90];
  sub_2219A3154(0, v14, 0);
  v15 = a1 + 64;
  v16 = v51;
  v17 = -1;
  v18 = -1 << *(a1 + 32);
  if (-v18 < 64)
  {
    v17 = ~(-1 << -v18);
  }

  v19 = v17 & *(a1 + 64);
  v20 = (63 - v18) >> 6;
  v48 = a1;
  v46 = v3;
  v43 = v14;
  if (v14)
  {
    v41 = v3 + 32;
    v42 = v5;

    v21 = 0;
    v14 = 0;
    v22 = v42;
    while (1)
    {
      v50 = v16;
      if (!v19)
      {
        break;
      }

LABEL_10:
      v24 = *(a1 + 56);
      v25 = v44;
      sub_221B62018(v24 + *(v45 + 72) * (__clz(__rbit64(v19)) | (v14 << 6)), v44, &qword_27CFB76C8, &unk_221BE8C60);
      swift_getAtKeyPath();
      sub_2219EC58C(v25, &qword_27CFB76C8);
      v16 = v50;
      v51 = v50;
      v27 = *(v50 + 16);
      v26 = *(v50 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_2219A3154(v26 > 1, v27 + 1, 1);
        v16 = v51;
      }

      ++v21;
      v19 &= v19 - 1;
      *(v16 + 16) = v27 + 1;
      v3 = v46;
      (*(v46 + 32))(v16 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v27, v22, v47);
      a1 = v48;
      if (v21 == v43)
      {
        goto LABEL_15;
      }
    }

    while (1)
    {
      v23 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v23 >= v20)
      {
        goto LABEL_27;
      }

      v19 = *(v15 + 8 * v23);
      ++v14;
      if (v19)
      {
        v14 = v23;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_15:
    v50 = v3 + 32;
    v28 = v38;
    if (v19)
    {
      goto LABEL_20;
    }

    while (1)
    {
      v29 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v29 >= v20)
      {

        return v16;
      }

      v19 = *(v15 + 8 * v29);
      ++v14;
      if (v19)
      {
        v14 = v29;
        do
        {
LABEL_20:
          v30 = *(a1 + 56) + *(v45 + 72) * (__clz(__rbit64(v19)) | (v14 << 6));
          v31 = v40;
          sub_221B62018(v30, v40, &qword_27CFB76C8, &unk_221BE8C60);
          v32 = v31;
          v33 = v39;
          sub_221B61EB0(v32, v39, &qword_27CFB76C8, &unk_221BE8C60);
          swift_getAtKeyPath();
          sub_2219EC58C(v33, &qword_27CFB76C8);
          v51 = v16;
          v35 = *(v16 + 16);
          v34 = *(v16 + 24);
          if (v35 >= v34 >> 1)
          {
            sub_2219A3154(v34 > 1, v35 + 1, 1);
            v16 = v51;
          }

          v19 &= v19 - 1;
          *(v16 + 16) = v35 + 1;
          (*(v46 + 32))(v16 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v35, v28, v47);
          a1 = v48;
        }

        while (v19);
      }
    }
  }

  __break(1u);
LABEL_27:

  __break(1u);
  return result;
}

uint64_t sub_221B3743C()
{
  OUTLINED_FUNCTION_8_0();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  *(v1 + 368) = v7;
  *(v1 + 240) = v8;
  *(v1 + 248) = v2;
  *(v1 + 224) = v9;
  *(v1 + 232) = v10;
  *(v1 + 216) = v11;
  *(v1 + 256) = *v2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB82F0, &qword_221BD2C40);
  OUTLINED_FUNCTION_8_1(v12);
  *(v1 + 264) = OUTLINED_FUNCTION_210();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBBA0, &qword_221BE5C28);
  OUTLINED_FUNCTION_8_1(v13);
  *(v1 + 272) = OUTLINED_FUNCTION_210();
  *(v1 + 280) = *v6;
  *(v1 + 370) = *(v6 + 16);
  *(v1 + 371) = *v4;
  *(v1 + 372) = v4[1];
  v14 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_221B37554()
{
  v105 = v0;
  v2 = *(v0 + 280);
  v1 = *(v0 + 288);
  v4 = *(v0 + 240);
  v3 = *(v0 + 248);
  v5 = *(v0 + 370);
  *(v3 + 112) = 0;
  *(v3 + 120) = 0;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBBA8, &qword_221BE5C30);
  OUTLINED_FUNCTION_10();
  v6 = swift_allocObject();
  *(v6 + 16) = MEMORY[0x277D84F90];
  *(v3 + 208) = 0;
  *(v3 + 216) = v6;
  v7 = sub_221BC5570(6);
  v9 = v8;
  v102 = v2;
  v103 = v1;
  v104 = v5;
  sub_2219EBEE4(v4, v0 + 16);
  v101[0] = 91;
  v101[1] = 0xE100000000000000;
  sub_221A1C70C(v2, v1, v5);
  v10 = OUTLINED_FUNCTION_17_6();
  MEMORY[0x223DA31F0](v10);
  MEMORY[0x223DA31F0](8285, 0xE200000000000000);
  _s15DeviceDiscoveryCMa(0);
  OUTLINED_FUNCTION_174_2();
  v11 = swift_allocObject();
  v12 = sub_221B6855C(&v102, v0 + 16, 91, 0xE100000000000000, v11);
  *(v0 + 296) = v12;
  v13 = v12;
  v95 = v3;
  LOBYTE(v3) = *(v0 + 372);
  LOBYTE(v4) = *(v0 + 371);
  v14 = *(v0 + 240);
  v15 = *(v0 + 248);
  v16 = *(v0 + 368);
  v18 = *(v0 + 224);
  v17 = *(v0 + 232);
  *(v15 + 32) = *(v0 + 216);
  *(v15 + 40) = v18;
  *(v15 + 48) = v13;
  sub_2219A1B08(v17, v15 + 56);
  v99 = v7;
  *(v15 + 96) = v7;
  *(v15 + 104) = v9;
  *(v15 + 128) = v4;
  *(v15 + 129) = v3;
  sub_2219EBEE4(v14, v15 + 136);
  *(v15 + 200) = v16;
  v19 = qword_27CFB73C0;

  v100 = v13;

  v98 = v9;

  if (v19 != -1)
  {
    OUTLINED_FUNCTION_4_22(&qword_27CFB73C0);
  }

  v21 = *(v0 + 280);
  v20 = *(v0 + 288);
  v22 = *(v0 + 240);
  v23 = *(v0 + 370);
  v24 = sub_221BCCD88();
  *(v0 + 304) = __swift_project_value_buffer(v24, qword_27CFDEE88);
  sub_2219EBEE4(v22, v0 + 80);
  sub_221A1C70C(v21, v20, v23);

  v25 = sub_221BCCD68();
  v26 = sub_221BCDA98();

  sub_2219A1B7C(v21, v20, v23);
  if (os_log_type_enabled(v25, v26))
  {
    v93 = v26;
    log = v25;
    v27 = OUTLINED_FUNCTION_296_1();
    v101[0] = swift_slowAlloc();
    *v27 = 136315906;
    v28 = *(v15 + 96);

    v29 = OUTLINED_FUNCTION_70();
    sub_2219A6360(v29, v30, v31);
    OUTLINED_FUNCTION_97_1();

    *(v27 + 4) = v28;
    *(v27 + 12) = 2080;
    sub_2219EBEE4(v0 + 80, v0 + 144);
    v32 = *(v0 + 200);
    if (v32)
    {
      v33 = *(v0 + 192);
      v102 = 0;
      v103 = 0xE000000000000000;
      sub_221BCDE68();

      v102 = 0xD00000000000001ALL;
      v103 = 0x8000000221BF0BB0;
      MEMORY[0x223DA31F0](v33, v32);
      MEMORY[0x223DA31F0](62, 0xE100000000000000);
      v35 = v102;
      v34 = v103;
    }

    else
    {
      v34 = 0xED00003E72657355;
      v35 = 0x746E65727275433CLL;
    }

    v37 = *(v0 + 280);
    v36 = *(v0 + 288);
    v38 = *(v0 + 216);
    v39 = *(v0 + 224);
    v40 = *(v0 + 370);
    sub_2219EBE90(v0 + 144);
    sub_2219EBE90(v0 + 80);
    v41 = sub_2219A6360(v35, v34, v101);

    *(v27 + 14) = v41;
    *(v27 + 22) = 2080;
    sub_2219A6360(v38, v39, v101);
    OUTLINED_FUNCTION_124_2();

    *(v27 + 24) = v34;
    *(v27 + 32) = 2080;
    v102 = v37;
    v103 = v36;
    v104 = v40;
    sub_221A1C70C(v37, v36, v40);
    v42 = IntentsServices.DevicePredicate.description.getter();
    sub_2219A1B7C(v102, v103, v104);
    v43 = OUTLINED_FUNCTION_70();
    sub_2219A6360(v43, v44, v45);
    OUTLINED_FUNCTION_97_1();

    *(v27 + 34) = v42;
    _os_log_impl(&dword_221989000, log, v93, "[%s] Initializing a remote dispatcher for: %s, clientLabel=%s, devicePredicate=%s", v27, 0x2Au);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_29_1();
    MEMORY[0x223DA4C00]();
    v46 = OUTLINED_FUNCTION_9_10();
    MEMORY[0x223DA4C00](v46);
  }

  else
  {

    sub_2219EBE90(v0 + 80);
  }

  if (qword_27CFB7268 != -1)
  {
    swift_once();
  }

  v47 = type metadata accessor for Entitlement.Validator(0);
  OUTLINED_FUNCTION_178(v47, qword_27CFBBA30);
  Entitlement.Validator.validate()();
  v48 = *(v0 + 370);
  v49 = *(v0 + 280);
  loga = *(v0 + 288);
  if (v50)
  {
    v51 = *(v0 + 232);
    v52 = *(v0 + 240);

    sub_2219A1B7C(v49, loga, v48);
    sub_2219EBE90(v52);
    __swift_destroy_boxed_opaque_existential_0(v51);

    OUTLINED_FUNCTION_25();

    return v53();
  }

  else
  {
    v90 = *(v0 + 272);
    v92 = *(v0 + 280);
    v55 = *(v0 + 248);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBBB0, &qword_221BE5C38);
    OUTLINED_FUNCTION_20_0();
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_221BD19E0;
    v57 = _s15WiFiErrorSourceCMa();
    OUTLINED_FUNCTION_268_1();
    swift_allocObject();
    OUTLINED_FUNCTION_124_2();

    v58 = sub_221A34414();
    *(v56 + 56) = v57;
    *(v56 + 64) = &off_283516968;
    *(v56 + 32) = v58;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBBB8, &qword_221BE5C40);
    OUTLINED_FUNCTION_174_2();
    swift_allocObject();
    OUTLINED_FUNCTION_171_0();

    swift_retain_n();
    v88 = sub_221B2EB44(sub_221B613B0, v55, v99, v98, v56, sub_221B613A8, v55);
    *(v0 + 312) = v88;
    *(v95 + 24) = v88;

    v59 = *(v15 + 96);
    *(v0 + 320) = v59;
    v60 = *(v15 + 104);
    *(v0 + 328) = v60;
    OUTLINED_FUNCTION_10();
    v94 = swift_allocObject();
    swift_weakInit();
    OUTLINED_FUNCTION_265_1();
    v91 = v48;
    v89 = swift_allocObject();
    v89[2] = v59;
    v89[3] = v60;
    v89[4] = v94;
    OUTLINED_FUNCTION_10();
    v61 = swift_allocObject();
    swift_weakInit();
    OUTLINED_FUNCTION_265_1();
    v62 = swift_allocObject();
    v62[2] = v59;
    v62[3] = v60;
    v62[4] = v61;
    OUTLINED_FUNCTION_10();
    v63 = swift_allocObject();
    swift_weakInit();
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBBC0, &qword_221BE5C48);
    v65 = swift_allocBox();
    v67 = v66;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBBC8, &qword_221BE5C50);
    OUTLINED_FUNCTION_108();
    __swift_storeEnumTagSinglePayload(v68, v69, v70, v71);
    *v67 = 0;
    v72 = *(v64 + 28);
    swift_bridgeObjectRetain_n();

    v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBBD0, &qword_221BE5C58);
    OUTLINED_FUNCTION_8_1(v73);
    bzero(v67 + v72, *(v74 + 64));
    sub_221B61EB0(v90, v67 + v72, &qword_27CFBBBA0, &qword_221BE5C28);
    v75 = sub_221BCD7F8();
    OUTLINED_FUNCTION_108();
    __swift_storeEnumTagSinglePayload(v76, v77, v78, v75);
    OUTLINED_FUNCTION_265_1();
    v79 = swift_allocObject();
    v79[2] = 0;
    v79[3] = 0;
    v79[4] = v65;

    OUTLINED_FUNCTION_153();
    sub_2219F7E3C();
    v81 = v80;
    *(v0 + 336) = v80;
    OUTLINED_FUNCTION_108();
    __swift_storeEnumTagSinglePayload(v82, v83, v84, v75);
    OUTLINED_FUNCTION_403();
    v85 = swift_allocObject();
    v85[2] = 0;
    v85[3] = 0;
    v85[4] = v88;
    v85[5] = v65;
    v85[6] = v99;
    v85[7] = v98;
    v85[8] = sub_221B613CC;
    v85[9] = v89;
    v85[10] = sub_221B61490;
    v85[11] = v63;
    v85[12] = sub_221B6144C;
    v85[13] = v62;

    OUTLINED_FUNCTION_153();
    sub_2219F7E3C();

    *(v95 + 16) = v81;

    sub_221B39BDC(v100);
    OUTLINED_FUNCTION_20_0();
    v86 = swift_allocObject();
    *(v0 + 344) = v86;
    *(v86 + 16) = v99;
    *(v86 + 24) = v98;
    *(v86 + 32) = v92;
    *(v86 + 40) = loga;
    *(v86 + 48) = v91;
    *(v86 + 56) = v100;
    *(v86 + 64) = v81;

    v87 = swift_task_alloc();
    *(v0 + 352) = v87;
    *v87 = v0;
    v87[1] = sub_221B38054;

    return sub_221B3A80C(sub_221B3A80C, 0x8AC7230489E80000, 0, &unk_221BE5C88, v86);
  }
}

uint64_t sub_221B38054()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v6 = v5;
  *(v3 + 360) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_221B38160()
{
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_14_3();
  v1 = *(v0 + 240);
  v2 = *(v0 + 232);

  sub_2219EBE90(v1);
  __swift_destroy_boxed_opaque_existential_0(v2);

  OUTLINED_FUNCTION_290_1();
  OUTLINED_FUNCTION_253();

  return v5(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_221B38210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_113_0();
  v17 = *(v16 + 360);

  *(v16 + 208) = v17;
  v18 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
  if (swift_dynamicCast())
  {

    v19 = sub_221B67D7C();
    sub_221B31344(v19);

    v20 = sub_221BCCD68();
    v21 = sub_221BCDA58();

    if (os_log_type_enabled(v20, v21))
    {
      a10 = *(v16 + 296);
      a11 = *(v16 + 240);
      a12 = *(v16 + 232);
      v22 = OUTLINED_FUNCTION_74_0();
      OUTLINED_FUNCTION_68();
      OUTLINED_FUNCTION_110_2();
      *v22 = 136315138;
      v23 = OUTLINED_FUNCTION_312_0();
      v26 = sub_2219A6360(v23, v24, v25);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_221989000, v20, v21, "[%s] Timed out waiting for device discovery in init(), returning non-connected instance", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      v27 = OUTLINED_FUNCTION_74_3();
      MEMORY[0x223DA4C00](v27);
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();

      sub_2219EBE90(a11);
      v28 = a12;
    }

    else
    {
      v40 = *(v16 + 240);
      v41 = *(v16 + 232);

      sub_2219EBE90(v40);
      v28 = v41;
    }

    __swift_destroy_boxed_opaque_existential_0(v28);

    OUTLINED_FUNCTION_290_1();
    OUTLINED_FUNCTION_28_0();

    return v44(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12, a13, a14, a15, a16);
  }

  else
  {
    v29 = *(v16 + 240);
    v30 = *(v16 + 232);

    sub_2219EBE90(v29);
    __swift_destroy_boxed_opaque_existential_0(v30);

    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_28_0();

    return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14, a15, a16);
  }
}

void *sub_221B384E4(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB82F0, &qword_221BD2C40);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &__dst[-1] - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBC98, &qword_221BE5DD0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &__dst[-1] - v8;
  v10 = sub_221BCD028();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &__dst[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &__dst[-1] - v15;
  __src[0] = a1;
  v17 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);
    sub_2219EC58C(v9, &qword_27CFBBC98);
LABEL_8:

    v22 = a1;
    return a1;
  }

  __swift_storeEnumTagSinglePayload(v9, 0, 1, v10);
  v18 = (*(v11 + 32))(v16, v9, v10);
  if ((sub_221BBEED0(v18) & 1) == 0)
  {
    (*(v11 + 8))(v16, v10);
    goto LABEL_8;
  }

  if (a2 <= 3)
  {
    (*(v11 + 8))(v16, v10);
    return 0;
  }

  v19 = (*(v11 + 104))(v13, *MEMORY[0x277CD8F10], v10);
  v20 = sub_221BBF060(v13, v19);
  v21 = *(v11 + 8);
  v21(v13, v10);
  if (!v20)
  {
    v21(v16, v10);
    goto LABEL_8;
  }

  sub_221B388D4();
  memcpy(__dst, __src, 0x50uLL);
  v25 = __dst[3];
  v24 = __dst[4];

  v26 = sub_221B616E0(__dst);
  sub_221A0E704(v26, v27, v28);
  a1 = swift_allocError();
  v30 = v29;
  *v29 = v25;
  v29[1] = v24;
  v31 = sub_221BCD7F8();
  v30[2] = 0;
  v30[3] = 0;
  *(v30 + 32) = 0;
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v31);
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  sub_2219F8C64();
  v21(v16, v10);
  return a1;
}

void sub_221B388D4()
{
  OUTLINED_FUNCTION_55_4();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBB90, &unk_221BE6390);
  OUTLINED_FUNCTION_8_1(v4);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_97_3();
  v6 = sub_221BCCEE8();
  OUTLINED_FUNCTION_0_2();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_9_5();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v28 - v14;
  os_unfair_lock_lock((v0 + 112));
  v16 = *(v0 + 120);
  v17 = v16;
  os_unfair_lock_unlock((v0 + 112));
  if (!v16)
  {
    v18 = *(v0 + 48);
    v19 = OBJC_IVAR____TtCC18AppIntentsServices26RemoteAppIntentsDispatcher15DeviceDiscovery__selectedEndpoint;
    OUTLINED_FUNCTION_237_2();
    swift_beginAccess();
    sub_221B62018(v18 + v19, v1, &qword_27CFBBB90, &unk_221BE6390);
    if (__swift_getEnumTagSinglePayload(v1, 1, v6) != 1)
    {
      v24 = OUTLINED_FUNCTION_258_1();
      v25(v24);
      v26 = OUTLINED_FUNCTION_308_0();
      v27(v26, v15, v6);
      sub_221B93FD0(v12, v3);
      (*(v8 + 8))(v15, v6);
      goto LABEL_5;
    }

    v20 = sub_2219EC58C(v1, &qword_27CFBBB90);
    sub_221A0E704(v20, v21, v22);
    OUTLINED_FUNCTION_15_0();
    swift_allocError();
    *v23 = 6;
    *(v23 + 8) = 0;
    *(v23 + 16) = 0;
    *(v23 + 24) = 0;
    *(v23 + 32) = 9;
  }

  swift_willThrow();
LABEL_5:
  OUTLINED_FUNCTION_53_5();
}

uint64_t sub_221B38AF8()
{
  v1 = sub_221BCDFC8();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221B38BB4, 0, 0);
}

uint64_t sub_221B38BB4()
{
  OUTLINED_FUNCTION_1_5();
  sub_221BCE258();
  OUTLINED_FUNCTION_58_4(&dword_221BE91A8);
  v5 = v0;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_286_0(v1);
  *v2 = v3;
  v2[1] = sub_221B38C68;
  OUTLINED_FUNCTION_236_1(0xD02AB486CEDC0000);
  OUTLINED_FUNCTION_27_0();

  return v5();
}

uint64_t sub_221B38C68()
{
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v6 = v5;
  *(v3 + 48) = v0;

  v7 = OUTLINED_FUNCTION_103_2();
  v8(v7);
  if (v0)
  {
    OUTLINED_FUNCTION_27_0();
    OUTLINED_FUNCTION_253();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {

    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_253();

    return v14(v13, v14, v15, v16, v17, v18, v19, v20);
  }
}

uint64_t sub_221B38DE0()
{
  OUTLINED_FUNCTION_1_5();

  OUTLINED_FUNCTION_25();

  return v0();
}

uint64_t sub_221B38E3C(uint64_t a1, uint64_t a2)
{
  sub_221BCCFE8();
  v4 = sub_221BCCFC8();
  v5 = sub_221B38EBC(a1, a2, v4);

  return v5;
}

uint64_t sub_221B38EBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v54 = a3;
  v56 = a2;
  v58 = a1;
  v55 = sub_221BCC558();
  v57 = *(v55 - 8);
  v5 = *(v57 + 64);
  MEMORY[0x28223BE20](v55);
  MEMORY[0x28223BE20](v6);
  v53 = &v43 - v7;
  v9 = v3[21];
  v8 = v3[22];
  __swift_project_boxed_opaque_existential_0(v3 + 18, v9);
  v10 = *(v8 + 8);
  v11 = sub_221BCCF68();
  v10(&v59, sub_221B3C2D8, 0, v11, v9, v8);
  if (!v4)
  {
    v12 = v3[13];
    v50 = v3[12];
    v51 = v59;
    v45 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    v46 = v12;
    v52 = 0;
    v13 = sub_221BCCEA8();
    v47 = v14;
    v48 = v13;
    v49 = type metadata accessor for RemoteAppIntentsActor(0);
    v15 = swift_allocObject();
    swift_weakInit();
    v16 = v57;
    v17 = v53;
    v18 = v55;
    v44 = *(v57 + 16);
    v44(v53, v56, v55);
    v19 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v20 = (v5 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
    v21 = swift_allocObject();
    v22 = v46;
    *(v21 + 16) = v50;
    *(v21 + 24) = v22;
    v23 = v18;
    v24 = v22;
    (*(v16 + 32))(v21 + v19, v17, v23);
    v25 = (v21 + v20);
    v26 = v47;
    *v25 = v48;
    v25[1] = v26;
    *(v21 + ((v20 + 23) & 0xFFFFFFFFFFFFFFF8)) = v15;
    sub_221B62E9C(&qword_27CFB90A8, type metadata accessor for RemoteAppIntentsActor);

    v27 = v52;
    v5 = sub_221BCC658();

    if (v27)
    {
    }

    else
    {
      v29 = v44;
      v52 = 0;
      v30 = v55;
      v31 = v56;
      if (qword_27CFB73C0 != -1)
      {
        swift_once();
      }

      v32 = sub_221BCCD88();
      __swift_project_value_buffer(v32, qword_27CFDEE88);
      v33 = v45;
      v29(v45, v31, v30);
      v34 = v24;

      v35 = sub_221BCCD68();
      v36 = sub_221BCDA98();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v59 = v38;
        *v37 = 136315394;
        *(v37 + 4) = sub_2219A6360(v50, v34, &v59);
        *(v37 + 12) = 2080;
        sub_221B62E9C(&qword_27CFB7A60, MEMORY[0x277CC95F0]);
        v39 = sub_221BCE168();
        v41 = v40;
        (*(v57 + 8))(v33, v30);
        v42 = sub_2219A6360(v39, v41, &v59);

        *(v37 + 14) = v42;
        _os_log_impl(&dword_221989000, v35, v36, "[%s] Remote actor %s created", v37, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DA4C00](v38, -1, -1);
        MEMORY[0x223DA4C00](v37, -1, -1);
      }

      else
      {

        (*(v57 + 8))(v33, v30);
      }
    }
  }

  return v5;
}

uint64_t sub_221B393C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  sub_221BCD7D8();
  v4[7] = sub_221BCD7C8();
  v6 = sub_221BCD778();

  return MEMORY[0x2822009F8](sub_221B39460, v6, v5);
}

void sub_221B39460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_124_1();
  OUTLINED_FUNCTION_104();

  OUTLINED_FUNCTION_237_2();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v18 = Strong;
  if (Strong)
  {
    os_unfair_lock_lock(Strong + 52);
    sub_221BAAFE8(*&v18[54]._os_unfair_lock_opaque);
    v20 = v19;
    sub_2219A69A0();
    OUTLINED_FUNCTION_418();
    while (1)
    {
      if (v13 == v14)
      {

        os_unfair_lock_unlock(v18 + 52);

        goto LABEL_14;
      }

      if (v15)
      {
        v24 = OUTLINED_FUNCTION_63_3();
        v21 = MEMORY[0x223DA3BF0](v24);
      }

      else
      {
        if (v14 >= *(v16 + 16))
        {
          goto LABEL_18;
        }

        v21 = *(v20 + 8 * v14 + 32);
      }

      if (__OFADD__(v14, 1))
      {
        break;
      }

      v22 = *(v21 + 24);
      if (v22)
      {
        v23 = *(v21 + 32);

        v22(v21);

        sub_22198B60C(v22, v23);
      }

      else
      {
      }

      ++v14;
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }

  else
  {
LABEL_14:
    **(v12 + 40) = v18 == 0;
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_95_0();

    v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12);
  }
}

void sub_221B395B4()
{
  OUTLINED_FUNCTION_21();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB82F0, &qword_221BD2C40);
  OUTLINED_FUNCTION_8_1(v9);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_97_3();
  if (qword_27CFB73C0 != -1)
  {
    OUTLINED_FUNCTION_4_22(&qword_27CFB73C0);
  }

  v11 = sub_221BCCD88();
  OUTLINED_FUNCTION_178(v11, qword_27CFDEE88);

  v12 = sub_221BCCD68();
  v13 = sub_221BCDA98();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = OUTLINED_FUNCTION_74_0();
    v15 = OUTLINED_FUNCTION_68();
    v22 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_2219A6360(v8, v6, &v22);
    _os_log_impl(&dword_221989000, v12, v13, v2, v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    OUTLINED_FUNCTION_29_1();
    MEMORY[0x223DA4C00]();
    OUTLINED_FUNCTION_29_1();
    MEMORY[0x223DA4C00]();
  }

  v16 = sub_221BCD7F8();
  OUTLINED_FUNCTION_21_6(v0, v17, v18, v16);
  sub_221BCD7D8();
  OUTLINED_FUNCTION_75();

  v19 = sub_221BCD7C8();
  OUTLINED_FUNCTION_265_1();
  v20 = swift_allocObject();
  v21 = MEMORY[0x277D85700];
  v20[2] = v19;
  v20[3] = v21;
  v20[4] = v4;
  OUTLINED_FUNCTION_153();
  sub_2219F82D4();

  OUTLINED_FUNCTION_22();
}

uint64_t sub_221B39784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  sub_221BCD7D8();
  v4[7] = sub_221BCD7C8();
  v6 = sub_221BCD778();

  return MEMORY[0x2822009F8](sub_221B3981C, v6, v5);
}

void sub_221B3981C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_124_1();
  OUTLINED_FUNCTION_104();

  OUTLINED_FUNCTION_237_2();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v18 = Strong;
  if (Strong)
  {
    os_unfair_lock_lock(Strong + 52);
    sub_221BAAFE8(*&v18[54]._os_unfair_lock_opaque);
    v20 = v19;
    sub_2219A69A0();
    OUTLINED_FUNCTION_418();
    while (1)
    {
      if (v13 == v14)
      {

        os_unfair_lock_unlock(v18 + 52);

        goto LABEL_14;
      }

      if (v15)
      {
        v24 = OUTLINED_FUNCTION_63_3();
        v21 = MEMORY[0x223DA3BF0](v24);
      }

      else
      {
        if (v14 >= *(v16 + 16))
        {
          goto LABEL_18;
        }

        v21 = *(v20 + 8 * v14 + 32);
      }

      if (__OFADD__(v14, 1))
      {
        break;
      }

      v22 = *(v21 + 40);
      if (v22)
      {
        v23 = *(v21 + 48);

        v22(v21);

        sub_22198B60C(v22, v23);
      }

      else
      {
      }

      ++v14;
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }

  else
  {
LABEL_14:
    **(v12 + 40) = v18 == 0;
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_95_0();

    v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12);
  }
}

void sub_221B39970(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB82F0, &qword_221BD2C40);
  OUTLINED_FUNCTION_8_1(v4);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v5);
  v7 = &v26 - v6;
  if (qword_27CFB73C0 != -1)
  {
    OUTLINED_FUNCTION_4_22(&qword_27CFB73C0);
  }

  v8 = sub_221BCCD88();
  __swift_project_value_buffer(v8, qword_27CFDEE88);
  OUTLINED_FUNCTION_75();

  v9 = a1;
  v10 = sub_221BCCD68();
  v11 = sub_221BCDA78();

  if (os_log_type_enabled(v10, v11))
  {
    OUTLINED_FUNCTION_20_6();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = OUTLINED_FUNCTION_68();
    v27 = v14;
    *v12 = 136315394;
    *(v12 + 4) = sub_2219A6360(*(v2 + 96), *(v2 + 104), &v27);
    *(v12 + 12) = 2112;
    v15 = a1;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v16;
    *v13 = v16;
    _os_log_impl(&dword_221989000, v10, v11, "[%s] Invalidated with error: %@", v12, 0x16u);
    sub_2219EC58C(v13, &unk_27CFB7630);
    v17 = OUTLINED_FUNCTION_9_10();
    MEMORY[0x223DA4C00](v17);
    __swift_destroy_boxed_opaque_existential_0(v14);
    OUTLINED_FUNCTION_29_1();
    MEMORY[0x223DA4C00]();
    OUTLINED_FUNCTION_29_1();
    MEMORY[0x223DA4C00]();
  }

  os_unfair_lock_lock((v2 + 112));
  *(v2 + 120) = a1;
  v18 = a1;
  os_unfair_lock_unlock((v2 + 112));
  sub_221B67E48(1);
  v19 = sub_221BCD7F8();
  OUTLINED_FUNCTION_21_6(v7, v20, v21, v19);
  sub_221BCD7D8();
  OUTLINED_FUNCTION_75();

  v22 = a1;
  v23 = sub_221BCD7C8();
  OUTLINED_FUNCTION_268_1();
  v24 = swift_allocObject();
  v25 = MEMORY[0x277D85700];
  v24[2] = v23;
  v24[3] = v25;
  v24[4] = v2;
  v24[5] = a1;
  OUTLINED_FUNCTION_153();
  sub_2219F7E3C();

  OUTLINED_FUNCTION_445();
}

uint64_t sub_221B39BDC(uint64_t a1)
{
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = (a1 + OBJC_IVAR____TtCC18AppIntentsServices26RemoteAppIntentsDispatcher15DeviceDiscovery_onAttached);
  v4 = *(a1 + OBJC_IVAR____TtCC18AppIntentsServices26RemoteAppIntentsDispatcher15DeviceDiscovery_onAttached);
  v5 = *(a1 + OBJC_IVAR____TtCC18AppIntentsServices26RemoteAppIntentsDispatcher15DeviceDiscovery_onAttached + 8);
  *v3 = sub_221B61A5C;
  v3[1] = v2;

  sub_22198B60C(v4, v5);

  v6 = swift_allocObject();
  swift_weakInit();
  v7 = (a1 + OBJC_IVAR____TtCC18AppIntentsServices26RemoteAppIntentsDispatcher15DeviceDiscovery_onDetached);
  v8 = *(a1 + OBJC_IVAR____TtCC18AppIntentsServices26RemoteAppIntentsDispatcher15DeviceDiscovery_onDetached);
  v9 = *(a1 + OBJC_IVAR____TtCC18AppIntentsServices26RemoteAppIntentsDispatcher15DeviceDiscovery_onDetached + 8);
  *v7 = sub_221B61A64;
  v7[1] = v6;

  sub_22198B60C(v8, v9);

  v10 = swift_allocObject();
  swift_weakInit();
  v11 = (a1 + OBJC_IVAR____TtCC18AppIntentsServices26RemoteAppIntentsDispatcher15DeviceDiscovery_onFailed);
  v12 = *(a1 + OBJC_IVAR____TtCC18AppIntentsServices26RemoteAppIntentsDispatcher15DeviceDiscovery_onFailed);
  v13 = v11[1];
  *v11 = sub_221B61A6C;
  v11[1] = v10;

  sub_22198B60C(v12, v13);
}

uint64_t sub_221B39D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 272) = a7;
  *(v8 + 280) = a8;
  *(v8 + 105) = a6;
  *(v8 + 256) = a4;
  *(v8 + 264) = a5;
  *(v8 + 240) = a2;
  *(v8 + 248) = a3;
  *(v8 + 232) = a1;
  v9 = sub_221BCCD88();
  *(v8 + 288) = v9;
  *(v8 + 296) = *(v9 - 8);
  *(v8 + 304) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F58, &unk_221BD27E0);
  *(v8 + 312) = swift_task_alloc();
  *(v8 + 320) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F60, &qword_221BD6680);
  *(v8 + 328) = swift_task_alloc();
  *(v8 + 336) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221B39EA4, 0, 0);
}

uint64_t sub_221B39EA4()
{
  OUTLINED_FUNCTION_67();
  if (qword_27CFB73C0 != -1)
  {
    OUTLINED_FUNCTION_4_22(&qword_27CFB73C0);
  }

  v1 = __swift_project_value_buffer(*(v0 + 288), qword_27CFDEE88);
  *(v0 + 344) = v1;
  if (qword_27CFB7278 != -1)
  {
    v1 = swift_once();
  }

  v2 = *(v0 + 336);
  v4 = *(v0 + 256);
  v3 = *(v0 + 264);
  v5 = *(v0 + 105);
  OUTLINED_FUNCTION_194_0(v1, &qword_27CFDE610);
  v6 = swift_allocObject();
  *(v0 + 352) = v6;
  *(v6 + 16) = v4;
  *(v6 + 24) = v3;
  *(v6 + 32) = v5;
  sub_221BCCD08();
  OUTLINED_FUNCTION_143_4();
  v19 = *(v0 + 272);
  OUTLINED_FUNCTION_21_6(v2, v7, v8, v9);
  sub_221BCCCD8();
  OUTLINED_FUNCTION_108();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  v14 = swift_task_alloc();
  *(v0 + 360) = v14;
  *(v14 + 16) = v4;
  *(v14 + 24) = v3;
  *(v14 + 32) = v5;
  *(v14 + 40) = v19;
  sub_221A1C70C(v4, v3, v5);
  v15 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_221B3A004()
{
  OUTLINED_FUNCTION_230();
  v1 = v0[39];
  v2 = v0[40];
  (*(v0[37] + 16))(v0[38], v0[43], v0[36]);
  sub_221B62018((v0 + 14), (v0 + 19), qword_27CFB7A80, &unk_221BD2800);
  v3 = OUTLINED_FUNCTION_120();
  sub_221B62018(v3, v4, v5, v6);
  sub_221B62018(v2, v1, &qword_27CFB7F58, &unk_221BD27E0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8AD8, &unk_221BD66A0);
  OUTLINED_FUNCTION_174_2();
  swift_allocObject();

  OUTLINED_FUNCTION_396_0();
  OUTLINED_FUNCTION_63_3();
  v0[46] = sub_2219CBEFC();
  if (qword_27CFB7338 != -1)
  {
    OUTLINED_FUNCTION_93(&qword_27CFB7338);
  }

  v0[27] = v7;
  v0[28] = &off_28351D968;
  v8 = OUTLINED_FUNCTION_305_0();
  v0[47] = v8;
  OUTLINED_FUNCTION_395_0(v8);

  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  v0[48] = v9;
  *v9 = v10;
  v9[1] = sub_221B3A23C;
  OUTLINED_FUNCTION_201_0();
  OUTLINED_FUNCTION_10_16();
  OUTLINED_FUNCTION_109();

  return MEMORY[0x282200908](v11);
}

uint64_t sub_221B3A23C()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v6 = v5;

  if (v0)
  {
  }

  else
  {

    sub_2219EC58C(v3 + 192, qword_27CFB7A80);
  }

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_221B3A364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_67();
  v11 = *(v10 + 336);
  v12 = *(v10 + 320);

  sub_2219EC58C(v12, &qword_27CFB7F58);
  sub_2219EC58C(v11, &qword_27CFB7F60);
  sub_2219EC58C(v10 + 112, qword_27CFB7A80);

  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_152();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_221B3A454()
{
  OUTLINED_FUNCTION_1_5();

  return sub_2219EC58C(v0 + 192, qword_27CFB7A80);
}

unint64_t sub_221B3A4A8()
{
  sub_221BCDE68();

  v0 = IntentsServices.DevicePredicate.description.getter();
  MEMORY[0x223DA31F0](v0);

  return 0xD000000000000029;
}

uint64_t sub_221B3A540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 40) = a6;
  *(v7 + 48) = a7;
  *(v7 + 64) = a5;
  *(v7 + 24) = a3;
  *(v7 + 32) = a4;
  *(v7 + 16) = a2;
  return MEMORY[0x2822009F8](sub_221B3A56C, 0, 0);
}

uint64_t sub_221B3A56C()
{
  OUTLINED_FUNCTION_1_5();
  sub_221B3A724();
  sub_221B67C54();
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_221B3A620;

  return MEMORY[0x282200460]();
}

uint64_t sub_221B3A620()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v1 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_221B3A724()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FF0, &unk_221BD28A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_221BD19E0;
  *(inited + 32) = 0x7250656369766564;
  *(inited + 40) = 0xEF65746163696465;
  v1 = IntentsServices.DevicePredicate.description.getter();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v1;
  *(inited + 56) = v2;
  v3 = sub_221BCD2C8();
  sub_221B25E10(v3);
}

uint64_t sub_221B3A80C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_221B3A834, 0, 0);
}

uint64_t sub_221B3A834()
{
  OUTLINED_FUNCTION_8_0();
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *(v3 + 16) = *(v0 + 40);
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 64) = v4;
  *v4 = v5;
  OUTLINED_FUNCTION_264_0(v4);
  OUTLINED_FUNCTION_65_7();

  return MEMORY[0x2822008A0](v6);
}

uint64_t sub_221B3A924()
{

  sub_221B67E48(0);

  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  sub_2219EC58C(v0 + 120, &unk_27CFBBB98);
  sub_2219EBE90(v0 + 136);

  return v0;
}

uint64_t sub_221B3A9BC()
{
  sub_221B3A924();

  return MEMORY[0x2821FE8D8](v0, 224, 7);
}

void sub_221B3AA14()
{
  os_unfair_lock_lock((v0 + 112));
  v1 = *(v0 + 120);
  v2 = v1;
  os_unfair_lock_unlock((v0 + 112));
  if (v1)
  {
    sub_221A0E704(v3, v4, v5);
    OUTLINED_FUNCTION_15_0();
    swift_allocError();
    *v6 = v1;
    *(v6 + 8) = 0;
    *(v6 + 16) = 0;
    *(v6 + 24) = 0;
    *(v6 + 32) = 3;
    swift_willThrow();
  }
}

uint64_t sub_221B3AA8C()
{
  OUTLINED_FUNCTION_1_5();
  v1[29] = v2;
  v1[30] = v0;
  v3 = sub_221BCCD88();
  v1[31] = v3;
  OUTLINED_FUNCTION_18_4(v3);
  v1[32] = v4;
  v1[33] = OUTLINED_FUNCTION_210();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F58, &unk_221BD27E0);
  OUTLINED_FUNCTION_8_1(v5);
  v1[34] = OUTLINED_FUNCTION_372();
  v1[35] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F60, &qword_221BD6680);
  OUTLINED_FUNCTION_8_1(v6);
  v1[36] = OUTLINED_FUNCTION_372();
  v1[37] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_221B3ABA0()
{
  OUTLINED_FUNCTION_8_0();
  if (qword_27CFB73C0 != -1)
  {
    OUTLINED_FUNCTION_4_22(&qword_27CFB73C0);
  }

  v1 = __swift_project_value_buffer(v0[31], qword_27CFDEE88);
  v0[38] = v1;
  if (qword_27CFB7280 != -1)
  {
    v1 = swift_once();
  }

  v2 = v0[37];
  v3 = v0[30];
  OUTLINED_FUNCTION_194_0(v1, &qword_27CFDE670);
  v0[39] = *(v3 + 96);
  v0[40] = *(v3 + 104);
  sub_221BCCD08();
  OUTLINED_FUNCTION_143_4();
  OUTLINED_FUNCTION_21_6(v2, v4, v5, v6);
  sub_221BCCCD8();
  OUTLINED_FUNCTION_108();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  v11 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_221B3ACB0()
{
  OUTLINED_FUNCTION_200_0();
  (*(v0[32] + 16))(v0[33], v0[38], v0[31]);
  sub_221B62018((v0 + 14), (v0 + 19), qword_27CFB7A80, &unk_221BD2800);
  v1 = OUTLINED_FUNCTION_14();
  sub_221B62018(v1, v2, v3, v4);
  v5 = OUTLINED_FUNCTION_17_6();
  sub_221B62018(v5, v6, v7, v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBB78, &qword_221BE5B50);
  OUTLINED_FUNCTION_174_2();
  swift_allocObject();

  OUTLINED_FUNCTION_396_0();
  OUTLINED_FUNCTION_0_0();
  v0[41] = sub_2219CBEFC();
  if (qword_27CFB7338 != -1)
  {
    OUTLINED_FUNCTION_93(&qword_27CFB7338);
  }

  v0[27] = v9;
  v0[28] = &off_28351D968;
  v10 = OUTLINED_FUNCTION_305_0();
  v0[42] = v10;
  OUTLINED_FUNCTION_395_0(v10);

  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  v0[43] = v11;
  *v11 = v12;
  v11[1] = sub_221B3AED0;
  OUTLINED_FUNCTION_201_0();
  OUTLINED_FUNCTION_10_16();

  return MEMORY[0x282200908](v13);
}

uint64_t sub_221B3AED0()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v6 = v5;
  *(v3 + 352) = v0;

  if (!v0)
  {
    sub_2219EC58C(v3 + 192, qword_27CFB7A80);
  }

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_221B3B004()
{
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_14_3();
  v1 = *(v0 + 296);
  v2 = *(v0 + 280);

  sub_2219EC58C(v2, &qword_27CFB7F58);
  sub_2219EC58C(v1, &qword_27CFB7F60);
  sub_2219EC58C(v0 + 112, qword_27CFB7A80);

  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_253();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_221B3B0E0()
{
  OUTLINED_FUNCTION_1_5();
  v1 = *(v0 + 296);
  v2 = *(v0 + 280);

  sub_2219EC58C(v2, &qword_27CFB7F58);
  sub_2219EC58C(v1, &qword_27CFB7F60);
  OUTLINED_FUNCTION_207_4();
  sub_2219EC58C(v3, v4);
  OUTLINED_FUNCTION_207_4();
  sub_2219EC58C(v5, v6);
  v7 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_221B3B19C()
{
  OUTLINED_FUNCTION_8_0();

  OUTLINED_FUNCTION_25();

  return v0();
}

uint64_t sub_221B3B228(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2219EC5F0;

  return sub_221B3B38C(a1, a2, 0, &unk_221BE5B60, 0);
}

uint64_t sub_221B3B2F0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2219EC5F0;

  return sub_221A352B0();
}

uint64_t sub_221B3B38C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[7] = a5;
  v6[8] = v5;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  return MEMORY[0x2822009F8](sub_221B3B3B4, 0, 0);
}

uint64_t sub_221B3B3B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_383_0();
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_374();
  if (v13)
  {
LABEL_2:
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_382();

    return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
  }

  OUTLINED_FUNCTION_136_5();
  v29 = *(v28 + 24);
  v14[9] = v29;
  if (!v29)
  {
    OUTLINED_FUNCTION_319_0(v25, v26, v27);
    OUTLINED_FUNCTION_15_0();
    v48 = swift_allocError();
    *v49 = v15;
    v49[1] = v12;
    OUTLINED_FUNCTION_71_5(v48, v49);
    swift_willThrow();
    goto LABEL_2;
  }

  sub_221BCCFE8();
  OUTLINED_FUNCTION_75();

  v32 = OUTLINED_FUNCTION_370_0(v30, v31);
  OUTLINED_FUNCTION_360(v32);
  v33 = sub_221B25D60();
  v14[11] = v33;
  OUTLINED_FUNCTION_160_2(v33);
  v34 = swift_task_alloc();
  OUTLINED_FUNCTION_184_2(v34, v35, v36, v37, v38, v39, v40, v41, v42, v43);
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  v14[13] = v44;
  *v44 = v45;
  OUTLINED_FUNCTION_404(v44);
  OUTLINED_FUNCTION_54_8();
  OUTLINED_FUNCTION_298_0();

  return MEMORY[0x282200908](v46);
}

uint64_t sub_221B3B52C()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v6 = v5;
  *(v3 + 112) = v0;

  OUTLINED_FUNCTION_320();

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_221B3B654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[7] = a5;
  v6[8] = v5;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  return MEMORY[0x2822009F8](sub_221B3B67C, 0, 0);
}

uint64_t sub_221B3B67C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_383_0();
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_374();
  if (v13)
  {
LABEL_2:
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_382();

    return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
  }

  OUTLINED_FUNCTION_136_5();
  v29 = *(v28 + 24);
  v14[9] = v29;
  if (!v29)
  {
    OUTLINED_FUNCTION_319_0(v25, v26, v27);
    OUTLINED_FUNCTION_15_0();
    v49 = swift_allocError();
    *v50 = v15;
    v50[1] = v12;
    OUTLINED_FUNCTION_71_5(v49, v50);
    swift_willThrow();
    goto LABEL_2;
  }

  sub_221BCCFE8();

  v32 = OUTLINED_FUNCTION_370_0(v30, v31);
  OUTLINED_FUNCTION_360(v32);
  v33 = sub_221B25D60();
  v14[11] = v33;
  OUTLINED_FUNCTION_160_2(v33);
  v34 = swift_task_alloc();
  OUTLINED_FUNCTION_358_0(v34, v35, v36, v37, v38, v39, v40, v41, v42, v43);
  v44 = swift_task_alloc();
  v14[13] = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8048, &qword_221BE5700);
  OUTLINED_FUNCTION_234_2();
  *v44 = v45;
  OUTLINED_FUNCTION_241_2();
  OUTLINED_FUNCTION_24_10(v46);
  OUTLINED_FUNCTION_298_0();

  return MEMORY[0x282200908](v47);
}

uint64_t sub_221B3B814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[7] = a5;
  v6[8] = v5;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  return MEMORY[0x2822009F8](sub_221B3B83C, 0, 0);
}

uint64_t sub_221B3B83C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_383_0();
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_374();
  if (v13)
  {
LABEL_2:
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_382();

    return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
  }

  OUTLINED_FUNCTION_136_5();
  v29 = *(v28 + 24);
  v14[9] = v29;
  if (!v29)
  {
    OUTLINED_FUNCTION_319_0(v25, v26, v27);
    OUTLINED_FUNCTION_15_0();
    v48 = swift_allocError();
    *v49 = v15;
    v49[1] = v12;
    OUTLINED_FUNCTION_71_5(v48, v49);
    swift_willThrow();
    goto LABEL_2;
  }

  sub_221BCCFE8();
  OUTLINED_FUNCTION_75();

  v32 = OUTLINED_FUNCTION_370_0(v30, v31);
  OUTLINED_FUNCTION_360(v32);
  v33 = sub_221B25D60();
  v14[11] = v33;
  OUTLINED_FUNCTION_160_2(v33);
  v34 = swift_task_alloc();
  OUTLINED_FUNCTION_184_2(v34, v35, v36, v37, v38, v39, v40, v41, v42, v43);
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  v14[13] = v44;
  *v44 = v45;
  OUTLINED_FUNCTION_404(v44);
  OUTLINED_FUNCTION_54_8();
  OUTLINED_FUNCTION_298_0();

  return MEMORY[0x282200908](v46);
}

uint64_t sub_221B3B9B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[7] = a5;
  v6[8] = v5;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  return MEMORY[0x2822009F8](sub_221B3B9DC, 0, 0);
}

uint64_t sub_221B3B9DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_383_0();
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_374();
  if (v13)
  {
LABEL_2:
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_382();

    return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
  }

  OUTLINED_FUNCTION_136_5();
  v29 = *(v28 + 24);
  v14[9] = v29;
  if (!v29)
  {
    OUTLINED_FUNCTION_319_0(v25, v26, v27);
    OUTLINED_FUNCTION_15_0();
    v48 = swift_allocError();
    *v49 = v15;
    v49[1] = v12;
    OUTLINED_FUNCTION_71_5(v48, v49);
    swift_willThrow();
    goto LABEL_2;
  }

  sub_221BCCFE8();
  OUTLINED_FUNCTION_75();

  v32 = OUTLINED_FUNCTION_370_0(v30, v31);
  OUTLINED_FUNCTION_360(v32);
  v33 = sub_221B25D60();
  v14[11] = v33;
  OUTLINED_FUNCTION_160_2(v33);
  v34 = swift_task_alloc();
  OUTLINED_FUNCTION_184_2(v34, v35, v36, v37, v38, v39, v40, v41, v42, v43);
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  v14[13] = v44;
  *v44 = v45;
  OUTLINED_FUNCTION_404(v44);
  OUTLINED_FUNCTION_54_8();
  OUTLINED_FUNCTION_298_0();

  return MEMORY[0x282200908](v46);
}

uint64_t sub_221B3BB54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[7] = a5;
  v6[8] = v5;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  return MEMORY[0x2822009F8](sub_221B3BB7C, 0, 0);
}

uint64_t sub_221B3BB7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_383_0();
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_374();
  if (v13)
  {
LABEL_2:
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_382();

    return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
  }

  OUTLINED_FUNCTION_136_5();
  v29 = *(v28 + 24);
  v14[9] = v29;
  if (!v29)
  {
    OUTLINED_FUNCTION_319_0(v25, v26, v27);
    OUTLINED_FUNCTION_15_0();
    v49 = swift_allocError();
    *v50 = v15;
    v50[1] = v12;
    OUTLINED_FUNCTION_71_5(v49, v50);
    swift_willThrow();
    goto LABEL_2;
  }

  sub_221BCCFE8();

  v32 = OUTLINED_FUNCTION_370_0(v30, v31);
  OUTLINED_FUNCTION_360(v32);
  v33 = sub_221B25D60();
  v14[11] = v33;
  OUTLINED_FUNCTION_160_2(v33);
  v34 = swift_task_alloc();
  OUTLINED_FUNCTION_358_0(v34, v35, v36, v37, v38, v39, v40, v41, v42, v43);
  v44 = swift_task_alloc();
  v14[13] = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8140, &qword_221BD2A80);
  OUTLINED_FUNCTION_234_2();
  *v44 = v45;
  OUTLINED_FUNCTION_241_2();
  OUTLINED_FUNCTION_24_10(v46);
  OUTLINED_FUNCTION_298_0();

  return MEMORY[0x282200908](v47);
}

uint64_t sub_221B3BD14()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v6 = v5;
  *(v3 + 112) = v0;

  OUTLINED_FUNCTION_320();

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_221B3BE3C()
{
  OUTLINED_FUNCTION_1_5();

  OUTLINED_FUNCTION_4_3();

  return v0();
}

uint64_t sub_221B3BE94()
{
  OUTLINED_FUNCTION_1_5();

  OUTLINED_FUNCTION_25();

  return v0();
}

uint64_t sub_221B3BEF0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[7] = a5;
  v6[8] = v5;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  v6[9] = *a2;
  return MEMORY[0x2822009F8](sub_221B3BF40, 0, 0);
}

uint64_t sub_221B3BF40()
{
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_374();
  if (v1)
  {
LABEL_2:
    OUTLINED_FUNCTION_25();

    return v4();
  }

  OUTLINED_FUNCTION_136_5();
  v10 = *(v9 + 24);
  v2[10] = v10;
  if (!v10)
  {
    OUTLINED_FUNCTION_319_0(v6, v7, v8);
    OUTLINED_FUNCTION_15_0();
    v20 = swift_allocError();
    *v21 = v3;
    v21[1] = v0;
    OUTLINED_FUNCTION_71_5(v20, v21);
    swift_willThrow();
    goto LABEL_2;
  }

  v11 = v2[9];
  v12 = v2[5];
  sub_221BCCFE8();
  OUTLINED_FUNCTION_75();

  v2[11] = OUTLINED_FUNCTION_370_0(v13, v14);
  v15 = sub_221BB0710();
  v2[12] = v15;
  OUTLINED_FUNCTION_160_2(v15);
  v16 = swift_task_alloc();
  v2[13] = v16;
  *(v16 + 16) = *(v11 + 80);
  *(v16 + 24) = v10;
  *(v16 + 32) = v12;
  *(v16 + 40) = v22;
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  v2[14] = v17;
  *v17 = v18;
  OUTLINED_FUNCTION_404(v17);
  OUTLINED_FUNCTION_54_8();

  return MEMORY[0x282200908](v19);
}

uint64_t sub_221B3C0EC()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v6 = v5;
  *(v3 + 120) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_221B3C224()
{
  OUTLINED_FUNCTION_1_5();

  OUTLINED_FUNCTION_4_3();

  return v0();
}

uint64_t sub_221B3C27C()
{
  OUTLINED_FUNCTION_1_5();

  OUTLINED_FUNCTION_25();

  return v0();
}

uint64_t sub_221B3C2D8@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBC90, &qword_221BE5DC8);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v8 - v4;
  MEMORY[0x223DA4440](v3);
  swift_unknownObjectRetain();
  sub_221BCD008();
  v6 = sub_221BCD018();
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_2219EC58C(v5, &qword_27CFBBC90);
  }

  else
  {
    sub_221BCCFF8();
    (*(*(v6 - 8) + 8))(v5, v6);
  }

  nw_parameters_set_application_id();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_221BCCF68();
  result = sub_221BCCF78();
  *a1 = result;
  return result;
}

uint64_t sub_221B3C424(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  v37 = a5;
  v38 = a7;
  v36 = a2;
  v11 = sub_221BCC558();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27CFB73C0 != -1)
  {
    swift_once();
  }

  v15 = sub_221BCCD88();
  __swift_project_value_buffer(v15, qword_27CFDEE88);
  (*(v12 + 16))(v14, a4, v11);

  v16 = a1;
  v17 = sub_221BCCD68();
  v18 = sub_221BCDA78();

  if (os_log_type_enabled(v17, v18))
  {
    v35 = a4;
    v19 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v39[0] = v34;
    *v19 = 136315906;
    *(v19 + 4) = sub_2219A6360(v36, a3, v39);
    *(v19 + 12) = 2080;
    sub_221B62E9C(&qword_27CFB7A60, MEMORY[0x277CC95F0]);
    v20 = sub_221BCE168();
    v22 = v21;
    (*(v12 + 8))(v14, v11);
    v23 = sub_2219A6360(v20, v22, v39);

    *(v19 + 14) = v23;
    *(v19 + 22) = 2080;
    *(v19 + 24) = sub_2219A6360(v37, a6, v39);
    *(v19 + 32) = 2112;
    if (a1)
    {
      v24 = a1;
      v25 = _swift_stdlib_bridgeErrorToNSError();
      v26 = v25;
    }

    else
    {
      v25 = 0;
      v26 = 0;
    }

    *(v19 + 34) = v25;
    v27 = v33;
    *v33 = v26;
    _os_log_impl(&dword_221989000, v17, v18, "[%s] Remote actor %s with endpoint %s invalidated: %@", v19, 0x2Au);
    sub_2219EC58C(v27, &unk_27CFB7630);
    MEMORY[0x223DA4C00](v27, -1, -1);
    v28 = v34;
    swift_arrayDestroy();
    MEMORY[0x223DA4C00](v28, -1, -1);
    MEMORY[0x223DA4C00](v19, -1, -1);

    a4 = v35;
  }

  else
  {

    (*(v12 + 8))(v14, v11);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v30 = *(result + 24);

    if (v30)
    {
      if (a1)
      {
        v31 = a1;
        sub_221B2F598(a4, a1);
      }
    }
  }

  return result;
}

uint64_t sub_221B3C800(uint64_t result)
{
  if (*(result + 24) == 1)
  {
    v2 = v1;
    if (qword_27CFB73C0 != -1)
    {
      swift_once();
    }

    v3 = sub_221BCCD88();
    __swift_project_value_buffer(v3, qword_27CFDEE88);

    v4 = sub_221BCCD68();
    v5 = sub_221BCDA78();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v12 = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_2219A6360(*(v2 + 96), *(v2 + 104), &v12);
      _os_log_impl(&dword_221989000, v4, v5, "[%s] Local intent dispatching not supported. Use a local dispatcher.", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x223DA4C00](v7, -1, -1);
      MEMORY[0x223DA4C00](v6, -1, -1);
    }

    sub_221A0E704(v8, v9, v10);
    swift_allocError();
    *v11 = 7;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    *(v11 + 24) = 0;
    *(v11 + 32) = 9;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_221B3C988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_2219EC5F0;

  return sub_221B318AC(a1, a3, a4, a5);
}

uint64_t sub_221B3CA64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_2219EC5F0;

  return sub_221B31AD4(a1, a3, a4, a5);
}

uint64_t sub_221B3CB40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_2219EC5F0;

  return sub_221B31C04(a1, a3, a4, a5);
}

uint64_t sub_221B3CC1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_2219EC5F0;

  return sub_221B31D34(a1, a3, a4, a5);
}

uint64_t sub_221B3CCF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_2219EC5F0;

  return sub_221B31E64(a1, a3, a4, a5);
}

uint64_t sub_221B3CDD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_2219EC5F0;

  return sub_221A309FC(a1, a3, a4, a5, a6);
}

uint64_t sub_221B3CEA4()
{
  type metadata accessor for RemoteAppIntentsDispatcherFacade();
  OUTLINED_FUNCTION_20_0();
  swift_allocObject();
  v2 = OUTLINED_FUNCTION_97_1();
  sub_221B71A20(v2);
  OUTLINED_FUNCTION_55_1();

  os_unfair_lock_lock(v0 + 52);
  sub_221B3CF0C(v1);
  os_unfair_lock_unlock(v0 + 52);
  return v1;
}

uint64_t sub_221B3CF50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = swift_projectBox();

  return MEMORY[0x2822009F8](sub_221B3CFC0, 0, 0);
}

uint64_t sub_221B3CFC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_8_0();
  v18 = *(v17 + 24);
  v19 = swift_task_alloc();
  *(OUTLINED_FUNCTION_414(v19) + 16) = v18;
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v17 + 40) = v20;
  *v20 = v21;
  OUTLINED_FUNCTION_264_0(v20);
  OUTLINED_FUNCTION_307_0();
  OUTLINED_FUNCTION_65_7();

  return MEMORY[0x2822007B8](v22, v23, v24, 0xD00000000000003ELL, v25, v26, v16, v27, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_221B3D0A0()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v1 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v2 = v1;

  OUTLINED_FUNCTION_25();

  return v3();
}

void sub_221B3D19C(uint64_t a1, os_unfair_lock_t lock)
{
  os_unfair_lock_lock(lock);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBBC0, &qword_221BE5C48) + 28);
  sub_2219EC58C(lock + v4, &qword_27CFBBBA0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBBC8, &qword_221BE5C50);
  (*(*(v5 - 8) + 16))(lock + v4, a1, v5);
  __swift_storeEnumTagSinglePayload(lock + v4, 0, 1, v5);

  os_unfair_lock_unlock(lock);
}

uint64_t sub_221B3D274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 96) = v16;
  *(v8 + 64) = v14;
  *(v8 + 80) = v15;
  *(v8 + 48) = a7;
  *(v8 + 56) = a8;
  *(v8 + 32) = a4;
  *(v8 + 40) = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBBC8, &qword_221BE5C50);
  *(v8 + 104) = v9;
  *(v8 + 112) = *(v9 - 8);
  *(v8 + 120) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBC20, &qword_221BE5D30);
  *(v8 + 128) = v10;
  *(v8 + 136) = *(v10 - 8);
  *(v8 + 144) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBC28, &qword_221BE5D38);
  *(v8 + 152) = v11;
  *(v8 + 160) = *(v11 - 8);
  *(v8 + 168) = swift_task_alloc();
  *(v8 + 176) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBBC0, &qword_221BE5C48);
  *(v8 + 184) = swift_projectBox();

  return MEMORY[0x2822009F8](sub_221B3D450, 0, 0);
}

uint64_t sub_221B3D450()
{
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_14_3();
  sub_221B74748(0xD000000000000013, 0x8000000221BE5360);
  sub_221BCD838();
  v1 = OUTLINED_FUNCTION_103_2();
  v2(v1);
  *(v0 + 25) = 0;
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 192) = v3;
  *v3 = v4;
  OUTLINED_FUNCTION_189_3(v3);
  OUTLINED_FUNCTION_65_7();
  OUTLINED_FUNCTION_253();

  return MEMORY[0x2822003E8](v5);
}

uint64_t sub_221B3D528()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v1 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_221B3DAE0()
{
  sub_221BCE308();
  MEMORY[0x223DA4060](0);
  return sub_221BCE358();
}

uint64_t sub_221B3DB2C(uint64_t a1)
{
  sub_221BCE308();
  MEMORY[0x223DA4060](0);
  return sub_221BCE358();
}

uint64_t sub_221B3DB7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[10] = a5;
  v6[11] = v5;
  v6[8] = a3;
  v6[9] = a4;
  v6[6] = a1;
  v6[7] = a2;
  return OUTLINED_FUNCTION_6_1();
}

uint64_t sub_221B3DB98()
{
  OUTLINED_FUNCTION_384_0();
  v10 = v1;
  OUTLINED_FUNCTION_14_3();
  sub_221B3DE08(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), (v0 + 16));
  v2 = *(v0 + 24);
  *(v0 + 96) = *(v0 + 16);
  *(v0 + 104) = v2;
  v3 = *(v0 + 40);
  *(v0 + 112) = *(v0 + 32);
  *(v0 + 120) = v3;
  OUTLINED_FUNCTION_58_4(&unk_221BE89F8);
  v9 = v4;
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 128) = v5;
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_110_4(v5);

  return v9(v7);
}

uint64_t sub_221B3DC54()
{
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v5 = v4;
  *(v6 + 136) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_27_0();
    OUTLINED_FUNCTION_253();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_253();

    return v12(v11, v12, v13, v14, v15, v16, v17, v18);
  }
}

void sub_221B3DE08(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v6 = v5;
  memcpy(__dst, a2, 0xC4uLL);
  type metadata accessor for RemoteAppIntentsDispatcher.PerformAppIntentDelegateWrapper();
  OUTLINED_FUNCTION_265_1();
  swift_allocObject();
  v11 = sub_221B401B8(a3, a4);
  v12 = v11[2];
  sub_2219EB748(a1, v15);
  OUTLINED_FUNCTION_416();
  v13 = swift_allocObject();
  *(v13 + 16) = v6;
  v14 = v15[1];
  *(v13 + 24) = v15[0];
  *(v13 + 40) = v14;
  *(v13 + 56) = v16;
  memcpy((v13 + 64), __dst, 0xC4uLL);
  *(v13 + 264) = v11;
  swift_unknownObjectRetain();

  sub_2219EB864(__dst, v15);
  sub_221B43298(0, v12, &unk_221BE56D8, v13, a5);
}

uint64_t sub_221B3DF28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 56) = a2;
  *(v4 + 64) = v3;
  *(v4 + 48) = a1;
  *(v4 + 136) = *a3;
  *(v4 + 72) = *(a3 + 8);
  return OUTLINED_FUNCTION_6_1();
}

uint64_t sub_221B3DF50()
{
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_287_0();
  sub_221B3E18C(v1, v2, v3);
  OUTLINED_FUNCTION_419();
  OUTLINED_FUNCTION_58_4(&unk_221BE8A08);
  v9 = v4;
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 120) = v5;
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_110_4(v5);

  return v9(v7);
}

uint64_t sub_221B3DFFC()
{
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v5 = v4;
  *(v6 + 128) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_27_0();
    OUTLINED_FUNCTION_253();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_253();

    return v12(v11, v12, v13, v14, v15, v16, v17, v18);
  }
}

void sub_221B3E18C(uint64_t *a1@<X0>, char *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a2;
  v8 = *a1;
  v7 = a1[1];
  v9 = a1[2];
  v10 = a1[3];
  v19[0] = v8;
  v19[1] = v7;
  v19[2] = v9;
  v19[3] = v10;
  v20[0] = v6;
  v21 = *(a2 + 8);

  v11 = OUTLINED_FUNCTION_103_2();
  sub_221998178(v11, v12);
  sub_221B4BCE0(v19, (a1 + 4), v20, &v22);

  v13 = OUTLINED_FUNCTION_103_2();
  sub_2219982C4(v13, v14);
  v16 = v23;
  v15 = v24;
  sub_221B5D5F8(a1, v19);
  v17 = swift_allocObject();
  memcpy((v17 + 16), v19, 0xA2uLL);
  *(v17 + 184) = v3;
  OUTLINED_FUNCTION_49();
  v18 = swift_allocObject();
  *(v18 + 16) = v22;
  *(v18 + 32) = v16;
  *(v18 + 40) = v15;
  *(v18 + 48) = sub_221B5D654;
  *(v18 + 56) = v17;

  sub_221B43598(1, v15, &unk_221BE5678, v18, a3);
}

uint64_t sub_221B3E2C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 56) = a2;
  *(v4 + 64) = v3;
  *(v4 + 48) = a1;
  *(v4 + 136) = *a3;
  *(v4 + 72) = *(a3 + 8);
  return OUTLINED_FUNCTION_6_1();
}

uint64_t sub_221B3E2EC()
{
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_287_0();
  sub_221B3E528(v1, v2, v3);
  OUTLINED_FUNCTION_419();
  OUTLINED_FUNCTION_58_4(&unk_221BE8A18);
  v9 = v4;
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 120) = v5;
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_110_4(v5);

  return v9(v7);
}

uint64_t sub_221B3E398()
{
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v5 = v4;
  *(v6 + 128) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_27_0();
    OUTLINED_FUNCTION_253();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_253();

    return v12(v11, v12, v13, v14, v15, v16, v17, v18);
  }
}

void sub_221B3E528(uint64_t *a1@<X0>, char *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a2;
  v7 = *a1;
  v6 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  v17[0] = v7;
  v17[1] = v6;
  v18 = v8;
  v19 = v9;
  v15[0] = v5;
  v16 = *(a2 + 8);

  sub_221998178(v8, v9);
  sub_221B4BCE0(v17, (a1 + 4), v15, &v20);
  v10 = v18;
  v11 = v19;

  sub_2219982C4(v10, v11);
  v13 = v21;
  v12 = v22;
  OUTLINED_FUNCTION_49();
  v14 = swift_allocObject();
  *(v14 + 16) = v20;
  *(v14 + 32) = v13;
  *(v14 + 40) = v12;
  *(v14 + 48) = sub_221B4C054;
  *(v14 + 56) = 0;

  sub_221B43728(1, v12, &unk_221BE5478, v14, a3);
}

uint64_t sub_221B3E634(uint64_t a1, uint64_t a2)
{
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_2219EC5F0;

  return sub_221B3E6DC();
}

uint64_t sub_221B3E6DC()
{
  OUTLINED_FUNCTION_1_5();
  v3 = v2;
  *(v1 + 232) = v4;
  *(v1 + 240) = v0;
  v5 = sub_221BCCD88();
  *(v1 + 248) = v5;
  OUTLINED_FUNCTION_18_4(v5);
  *(v1 + 256) = v6;
  *(v1 + 264) = OUTLINED_FUNCTION_210();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F58, &unk_221BD27E0);
  OUTLINED_FUNCTION_8_1(v7);
  *(v1 + 272) = OUTLINED_FUNCTION_372();
  *(v1 + 280) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F60, &qword_221BD6680);
  OUTLINED_FUNCTION_8_1(v8);
  *(v1 + 288) = OUTLINED_FUNCTION_372();
  v9 = swift_task_alloc();
  v10 = *v3;
  v11 = v3[1];
  *(v1 + 296) = v9;
  *(v1 + 304) = v10;
  *(v1 + 312) = v11;
  *(v1 + 320) = *(v3 + 1);
  v12 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_221B3E804()
{
  OUTLINED_FUNCTION_271_1();
  OUTLINED_FUNCTION_67();
  v1 = *(*(v0 + 240) + 129);
  *(v0 + 105) = v1;
  if (qword_27CFB73C0 != -1)
  {
    OUTLINED_FUNCTION_4_22(&qword_27CFB73C0);
  }

  v2 = __swift_project_value_buffer(*(v0 + 248), qword_27CFDEE88);
  *(v0 + 336) = v2;
  if (qword_27CFB72E8 != -1)
  {
    v2 = swift_once();
  }

  v4 = *(v0 + 320);
  v3 = *(v0 + 328);
  v6 = *(v0 + 304);
  v5 = *(v0 + 312);
  v7 = *(v0 + 296);
  v8 = *(v0 + 240);
  OUTLINED_FUNCTION_194_0(v2, &qword_27CFDEB50);
  *(v0 + 344) = v8[12];
  *(v0 + 352) = v8[13];
  *(v0 + 360) = v8[4];
  *(v0 + 368) = v8[5];
  OUTLINED_FUNCTION_49();
  v9 = swift_allocObject();
  *(v0 + 376) = v9;
  *(v9 + 16) = v1;
  *(v9 + 24) = v6;
  *(v9 + 32) = v5;
  *(v9 + 40) = v4;
  *(v9 + 48) = v3;
  *(v9 + 56) = v8;
  sub_221BCCD08();
  OUTLINED_FUNCTION_143_4();
  OUTLINED_FUNCTION_21_6(v7, v10, v11, v12);
  sub_221BCCCD8();
  OUTLINED_FUNCTION_108();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  v17 = swift_task_alloc();
  *(v0 + 384) = v17;
  v17[2] = v6;
  v17[3] = v5;
  v17[4] = v4;
  v17[5] = v3;
  v17[6] = v8;

  v18 = OUTLINED_FUNCTION_118_0();
  sub_221998178(v18, v19);

  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_272_0();

  return MEMORY[0x2822009F8](v20, v21, v22);
}

uint64_t sub_221B3E994()
{
  OUTLINED_FUNCTION_423();
  OUTLINED_FUNCTION_353_0();
  v1 = OUTLINED_FUNCTION_308_0();
  v2(v1);
  sub_221B62018((v0 + 14), (v0 + 19), qword_27CFB7A80, &unk_221BD2800);
  v3 = OUTLINED_FUNCTION_3_4();
  sub_221B62018(v3, v4, v5, v6);
  v7 = OUTLINED_FUNCTION_312_0();
  sub_221B62018(v7, v8, v9, v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBB60, &qword_221BE5A40);
  OUTLINED_FUNCTION_174_2();
  swift_allocObject();
  OUTLINED_FUNCTION_252_2();

  OUTLINED_FUNCTION_247_1();
  OUTLINED_FUNCTION_112_5();
  v0[49] = sub_2219CBEFC();
  if (qword_27CFB7338 != -1)
  {
    OUTLINED_FUNCTION_93(&qword_27CFB7338);
  }

  v0[27] = v11;
  v0[28] = &off_28351D968;
  v12 = OUTLINED_FUNCTION_305_0();
  v0[50] = v12;
  OUTLINED_FUNCTION_395_0(v12);

  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  v0[51] = v13;
  *v13 = v14;
  v13[1] = sub_221B3EBC0;
  OUTLINED_FUNCTION_201_0();
  OUTLINED_FUNCTION_10_16();
  OUTLINED_FUNCTION_246_2();

  return MEMORY[0x282200908](v15);
}

uint64_t sub_221B3EBC0()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v6 = v5;
  *(v3 + 416) = v0;

  if (!v0)
  {
    sub_2219EC58C(v3 + 192, qword_27CFB7A80);
  }

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_221B3ECF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_67();
  v11 = *(v10 + 296);
  v12 = *(v10 + 280);

  sub_2219EC58C(v12, &qword_27CFB7F58);
  sub_2219EC58C(v11, &qword_27CFB7F60);
  sub_2219EC58C(v10 + 112, qword_27CFB7A80);

  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_152();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_221B3EDE4()
{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 296);
  v2 = *(v0 + 280);

  sub_2219EC58C(v2, &qword_27CFB7F58);
  sub_2219EC58C(v1, &qword_27CFB7F60);
  OUTLINED_FUNCTION_338_0(v0 + 112);
  OUTLINED_FUNCTION_338_0(v0 + 192);

  v3 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_221B3EEB4()
{
  OUTLINED_FUNCTION_8_0();

  OUTLINED_FUNCTION_25();

  return v0();
}

uint64_t sub_221B3EF58@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = v4[3];
  if (v5)
  {
    v7 = a1[2];
    v8 = a1[3];
    v9 = *a1;
    v10 = a1[1];
    v11 = v4[5];
    v20 = v4[4];
    v13 = v4[12];
    v12 = v4[13];
    v19[0] = v9;
    v19[1] = v10;
    v19[2] = v7;
    v19[3] = v8;
    v14 = type metadata accessor for RemoteAppNotificationStream(0);
    OUTLINED_FUNCTION_174_2();
    swift_allocObject();

    swift_retain_n();

    v15 = sub_221B74F7C(v5, v20, v11, v13, v12, v19);
    a4[3] = v14;
    a4[4] = sub_221B62E9C(&qword_27CFBBB58, type metadata accessor for RemoteAppNotificationStream);

    *a4 = v15;
  }

  else
  {
    sub_2219ACB94(a1, a2, a3);
    OUTLINED_FUNCTION_15_0();
    v17 = swift_allocError();
    *v18 = 0xD000000000000027;
    v18[1] = 0x8000000221BF0A50;
    OUTLINED_FUNCTION_71_5(v17, v18);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_221B3F0C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = swift_task_alloc();
  *(v6 + 16) = v7;
  *v7 = v6;
  v7[1] = sub_2219EC5F0;

  return sub_221B3F1B4();
}

uint64_t sub_221B3F1B4()
{
  OUTLINED_FUNCTION_1_5();
  v1[31] = v16;
  v1[32] = v0;
  v1[29] = v2;
  v1[30] = v3;
  v1[27] = v4;
  v1[28] = v5;
  v1[25] = v6;
  v1[26] = v7;
  v1[24] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F58, &unk_221BD27E0);
  OUTLINED_FUNCTION_8_1(v9);
  v1[33] = OUTLINED_FUNCTION_210();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F60, &qword_221BD6680);
  OUTLINED_FUNCTION_8_1(v10);
  v1[34] = OUTLINED_FUNCTION_210();
  v11 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_221B3F27C(__n128 a1)
{
  v2 = *(*(v1 + 256) + 129);
  if (qword_27CFB73C0 != -1)
  {
    OUTLINED_FUNCTION_4_22(&qword_27CFB73C0);
  }

  v3 = sub_221BCCD88();
  v4 = __swift_project_value_buffer(v3, qword_27CFDEE88);
  if (qword_27CFB72E0 != -1)
  {
    v4 = swift_once();
  }

  v26 = *(v1 + 272);
  v5 = *(v1 + 256);
  v6 = *(v1 + 232);
  v27 = *(v1 + 240);
  v28 = *(v1 + 248);
  v7 = *(v1 + 224);
  v25 = *(v1 + 216);
  v9 = *(v1 + 200);
  v8 = *(v1 + 208);
  OUTLINED_FUNCTION_194_0(v4, &qword_27CFDEAF0);
  v10 = OUTLINED_FUNCTION_285_1();
  sub_2219EB748(v10, v11);
  OUTLINED_FUNCTION_206_0();
  v12 = swift_allocObject();
  v13 = *(v1 + 128);
  *(v12 + 24) = *(v1 + 112);
  *(v1 + 280) = v12;
  *(v12 + 16) = v2;
  *(v12 + 40) = v13;
  *(v12 + 56) = *(v1 + 144);
  *(v12 + 64) = v9;
  *(v12 + 72) = v8;
  *(v12 + 80) = v7;
  *(v12 + 88) = v6;
  *(v12 + 96) = v5;
  *(v1 + 168) = 0u;
  *(v1 + 184) = 0;
  *(v1 + 152) = 0u;
  *(v1 + 105) = v2;
  v14 = sub_221BCCD08();
  OUTLINED_FUNCTION_21_6(v26, v15, v16, v14);
  sub_221BCCCD8();
  OUTLINED_FUNCTION_108();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  v21 = swift_task_alloc();
  *(v1 + 288) = v21;
  v21[2] = v25;
  v21[3] = v9;
  v21[4] = v8;
  v21[5] = v7;
  v21[6] = v6;
  v21[7] = v5;

  v22 = swift_task_alloc();
  *(v1 + 296) = v22;
  type metadata accessor for AppIntentFetchOptionsResult(0, v27, v28, v23);
  *v22 = v1;
  v22[1] = sub_221B3F50C;
  OUTLINED_FUNCTION_232();

  return sub_221BB0014();
}

uint64_t sub_221B3F50C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_21_0();
  v13 = v12;
  OUTLINED_FUNCTION_17_3();
  *v14 = v13;
  v16 = *(v15 + 272);
  v17 = *(v15 + 264);
  v18 = *v11;
  OUTLINED_FUNCTION_0_5();
  *v19 = v18;
  *(v13 + 304) = v10;

  sub_2219EC58C(v17, &qword_27CFB7F58);
  sub_2219EC58C(v16, &qword_27CFB7F60);
  sub_2219EC58C(v13 + 152, qword_27CFB7A80);
  if (v10)
  {
    OUTLINED_FUNCTION_99();
    OUTLINED_FUNCTION_152();

    return MEMORY[0x2822009F8](v20, v21, v22);
  }

  else
  {

    OUTLINED_FUNCTION_166();
    OUTLINED_FUNCTION_152();

    return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10);
  }
}

uint64_t sub_221B3F6E8()
{
  OUTLINED_FUNCTION_1_5();

  OUTLINED_FUNCTION_25();

  return v0();
}

uint64_t sub_221B3F74C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2219EC5F0;

  return sub_221B3DB7C(a1, a2, a3, a4, a5);
}

uint64_t sub_221B3F814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2219EC5F0;

  return sub_221B3DF28(a1, a2, a3);
}

uint64_t sub_221B3F8C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2219EC5F0;

  return sub_221B3E2C4(a1, a2, a3);
}

uint64_t sub_221B3F974(uint64_t a1, uint64_t a2)
{
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_2219EC5F0;

  return sub_221B3FA34();
}

uint64_t sub_221B3FA34()
{
  OUTLINED_FUNCTION_1_5();
  v1[33] = v2;
  v1[34] = v0;
  v1[31] = v3;
  v1[32] = v4;
  v1[30] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F58, &unk_221BD27E0);
  OUTLINED_FUNCTION_8_1(v6);
  v1[35] = OUTLINED_FUNCTION_210();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F60, &qword_221BD6680);
  OUTLINED_FUNCTION_8_1(v7);
  v1[36] = OUTLINED_FUNCTION_210();
  v8 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_221B3FAEC()
{
  OUTLINED_FUNCTION_113_0();
  if (qword_27CFB73C0 != -1)
  {
    OUTLINED_FUNCTION_4_22(&qword_27CFB73C0);
  }

  v1 = sub_221BCCD88();
  v2 = __swift_project_value_buffer(v1, qword_27CFDEE88);
  if (qword_27CFB72D8 != -1)
  {
    v2 = swift_once();
  }

  v3 = *(v0 + 288);
  v4 = *(v0 + 264);
  v5 = *(v0 + 272);
  v6 = *(v0 + 248);
  OUTLINED_FUNCTION_194_0(v2, &qword_27CFDEA90);
  sub_2219EAFE0(v6, v0 + 112);
  OUTLINED_FUNCTION_403();
  v7 = swift_allocObject();
  *(v0 + 296) = v7;
  memcpy((v7 + 16), (v0 + 112), 0x58uLL);
  *(v7 + 104) = v5;
  *(v0 + 216) = 0u;
  *(v0 + 232) = 0;
  *(v0 + 200) = 0u;
  *(v0 + 105) = *(v5 + 129);
  v8 = sub_221BCCD08();
  OUTLINED_FUNCTION_21_6(v3, v9, v10, v8);
  v11 = sub_221BCCCD8();
  OUTLINED_FUNCTION_102_5(v11);
  v12 = swift_task_alloc();
  *(v0 + 304) = v12;
  v12[2] = v4;
  v12[3] = v6;
  v12[4] = v5;

  v13 = swift_task_alloc();
  *(v0 + 312) = v13;
  sub_221BCDC98();
  *v13 = v0;
  v13[1] = sub_221B3FD20;
  OUTLINED_FUNCTION_232();
  OUTLINED_FUNCTION_28_0();

  return sub_221BB0014();
}

uint64_t sub_221B3FD20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_21_0();
  v13 = v12;
  OUTLINED_FUNCTION_17_3();
  *v14 = v13;
  v16 = *(v15 + 288);
  v17 = *(v15 + 280);
  v18 = *v11;
  OUTLINED_FUNCTION_0_5();
  *v19 = v18;
  *(v13 + 320) = v10;

  sub_2219EC58C(v17, &qword_27CFB7F58);
  sub_2219EC58C(v16, &qword_27CFB7F60);
  sub_2219EC58C(v13 + 200, qword_27CFB7A80);
  if (v10)
  {
    OUTLINED_FUNCTION_99();
    OUTLINED_FUNCTION_152();

    return MEMORY[0x2822009F8](v20, v21, v22);
  }

  else
  {

    OUTLINED_FUNCTION_166();
    OUTLINED_FUNCTION_152();

    return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10);
  }
}

uint64_t sub_221B3FEFC()
{
  OUTLINED_FUNCTION_1_5();

  OUTLINED_FUNCTION_25();

  return v0();
}

uint64_t sub_221B3FF7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_221BCD7D8();
  v5[4] = sub_221BCD7C8();
  v7 = sub_221BCD778();

  return MEMORY[0x2822009F8](sub_221B40014, v7, v6);
}

uint64_t sub_221B40014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_124_1();
  OUTLINED_FUNCTION_104();
  v13 = *(v12 + 16);

  os_unfair_lock_lock((v13 + 208));
  v33 = v13;
  sub_221BAAFE8(*(v13 + 216));
  v15 = v14;
  result = sub_2219A69A0();
  v17 = result;
  for (i = 0; v17 != i; ++i)
  {
    if ((v15 & 0xC000000000000001) != 0)
    {
      v24 = OUTLINED_FUNCTION_420();
      result = MEMORY[0x223DA3BF0](v24);
      v19 = result;
    }

    else
    {
      if (i >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      v19 = *(v15 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      return result;
    }

    v20 = *(v19 + 56);
    if (v20)
    {
      v21 = *(v12 + 24);

      v20(v19, v21);

      v22 = OUTLINED_FUNCTION_120();
      result = sub_22198B60C(v22, v23);
    }

    else
    {
    }
  }

  os_unfair_lock_unlock(v33 + 52);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_95_0();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, v33, a10, a11, a12);
}

double sub_221B40150@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 192);
  if (v2)
  {
    v3 = 0;
    v4 = *(v1 + 184);
  }

  else
  {
    v4 = 0;
    v3 = 2;
  }

  *a1 = 0;
  *(a1 + 8) = v4;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;

  return result;
}