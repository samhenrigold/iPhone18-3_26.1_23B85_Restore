uint64_t sub_275ABEA64()
{
  result = MEMORY[0x277C86E00](0x697265746972432ELL, 0xE900000000000061);
  static ActivityStatusResponse.Activity.Criteria.protoMessageName = 0xD00000000000001FLL;
  unk_280A25D70 = 0x8000000275AF11B0;
  return result;
}

uint64_t *ActivityStatusResponse.Activity.Criteria.protoMessageName.unsafeMutableAddressor()
{
  if (qword_280A244D8 != -1)
  {
    swift_once();
  }

  return &static ActivityStatusResponse.Activity.Criteria.protoMessageName;
}

uint64_t static ActivityStatusResponse.Activity.Criteria.protoMessageName.getter()
{
  if (qword_280A244D8 != -1)
  {
    swift_once();
  }

  v0 = static ActivityStatusResponse.Activity.Criteria.protoMessageName;

  return v0;
}

uint64_t sub_275ABEB8C()
{
  v0 = sub_275AE5574();
  __swift_allocate_value_buffer(v0, static ActivityStatusResponse.Activity.Criteria._protobuf_nameMap);
  __swift_project_value_buffer(v0, static ActivityStatusResponse.Activity.Criteria._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24640, "ؠ");
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24648, &qword_275AEEA60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_275AE7E70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "intervalSecs";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_275AE5544();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "intervalTimeDelta";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  return sub_275AE5554();
}

uint64_t sub_275ABEDC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  while (1)
  {
    result = sub_275AE5344();
    if (v4 || (v7 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(0);
      sub_275AE53B4();
    }

    else if (result == 2)
    {
      a4(0);
      sub_275AE53E4();
    }
  }

  return result;
}

uint64_t sub_275ABEEF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  result = a5(v7, a1, a2, a3, a4);
  if (!v8)
  {
    a7(v7, a1, a2, a3, a6);
    return sub_275AE5284();
  }

  return result;
}

uint64_t sub_275ABF004()
{
  if (qword_280A244D8 != -1)
  {
    swift_once();
  }

  v0 = static ActivityStatusResponse.Activity.Criteria.protoMessageName;

  return v0;
}

uint64_t sub_275ABF09C(uint64_t a1, uint64_t a2)
{
  v4 = sub_275ADD244(&qword_280A25508, type metadata accessor for ActivityStatusResponse.Activity.Criteria, &protocol conformance descriptor for ActivityStatusResponse.Activity.Criteria);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_275ABF13C(uint64_t a1)
{
  sub_275ADD244(&qword_280A252B8, type metadata accessor for ActivityStatusResponse.Activity.Criteria, &protocol conformance descriptor for ActivityStatusResponse.Activity.Criteria);

  return sub_275AE5464();
}

uint64_t sub_275ABF1A8(uint64_t a1, uint64_t a2)
{
  sub_275ADD244(&qword_280A252B8, type metadata accessor for ActivityStatusResponse.Activity.Criteria, &protocol conformance descriptor for ActivityStatusResponse.Activity.Criteria);

  return sub_275AE5474();
}

uint64_t sub_275ABF27C()
{
  v0 = sub_275AE5574();
  __swift_allocate_value_buffer(v0, static ActivityClearRequest._protobuf_nameMap);
  __swift_project_value_buffer(v0, static ActivityClearRequest._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24640, "ؠ");
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24648, &qword_275AEEA60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_275AE78F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "cliActivity";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_275AE5544();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "delayedNotificationActivity";
  *(v10 + 1) = 27;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "mobileAssetDownloadActivity";
  *(v11 + 8) = 27;
  *(v11 + 16) = 2;
  v9();
  return sub_275AE5554();
}

uint64_t ActivityClearRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_275AE5344();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2 || result == 1)
    {
      type metadata accessor for ActivityClearRequest(0);
      sub_275AE5364();
    }
  }

  return result;
}

uint64_t ActivityClearRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_275ABF660(v3, a1, a2, a3, type metadata accessor for ActivityClearRequest);
  if (!v4)
  {
    sub_275ABF6DC(v3, a1, a2, a3, type metadata accessor for ActivityClearRequest);
    sub_275ABF758(v3, a1, a2, a3, type metadata accessor for ActivityClearRequest, 3);
    return sub_275AE5284();
  }

  return result;
}

uint64_t sub_275ABF660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if (*(a1 + *(result + 20)) != 2)
  {
    return sub_275AE54A4();
  }

  return result;
}

uint64_t sub_275ABF6DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if (*(a1 + *(result + 24)) != 2)
  {
    return sub_275AE54A4();
  }

  return result;
}

uint64_t sub_275ABF758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  result = a5(0);
  if (*(a1 + *(result + 28)) != 2)
  {
    return sub_275AE54A4();
  }

  return result;
}

uint64_t sub_275ABF824@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v5 = a1[6];
  *(a2 + a1[5]) = 2;
  *(a2 + v5) = 2;
  *(a2 + a1[7]) = 2;
  return result;
}

uint64_t sub_275ABF8B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_275ADD244(&qword_280A25500, type metadata accessor for ActivityClearRequest, &protocol conformance descriptor for ActivityClearRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_275ABF950(uint64_t a1)
{
  sub_275ADD244(&qword_280A252D0, type metadata accessor for ActivityClearRequest, &protocol conformance descriptor for ActivityClearRequest);

  return sub_275AE5464();
}

uint64_t sub_275ABF9BC(uint64_t a1, uint64_t a2)
{
  sub_275ADD244(&qword_280A252D0, type metadata accessor for ActivityClearRequest, &protocol conformance descriptor for ActivityClearRequest);

  return sub_275AE5474();
}

uint64_t sub_275ABFB1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_275ADD244(&qword_280A254F8, type metadata accessor for ActivityClearResponse, &protocol conformance descriptor for ActivityClearResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_275ABFBBC(uint64_t a1)
{
  sub_275ADD244(&qword_280A252E8, type metadata accessor for ActivityClearResponse, &protocol conformance descriptor for ActivityClearResponse);

  return sub_275AE5464();
}

uint64_t sub_275ABFC28(uint64_t a1, uint64_t a2)
{
  sub_275ADD244(&qword_280A252E8, type metadata accessor for ActivityClearResponse, &protocol conformance descriptor for ActivityClearResponse);

  return sub_275AE5474();
}

uint64_t sub_275ABFCCC()
{
  v0 = sub_275AE5574();
  __swift_allocate_value_buffer(v0, static GetBiomeStreamRequest._protobuf_nameMap);
  __swift_project_value_buffer(v0, static GetBiomeStreamRequest._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24640, "ؠ");
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24648, &qword_275AEEA60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_275AE78F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "startTsMillis";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_275AE5544();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "endTsMillis";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "streamType";
  *(v11 + 8) = 10;
  *(v11 + 16) = 2;
  v9();
  return sub_275AE5554();
}

uint64_t GetBiomeStreamRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_275AE5344();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 3)
    {
      sub_275ABFFF0(a1, v5, a2, a3);
    }

    else if (result == 2 || result == 1)
    {
      type metadata accessor for GetBiomeStreamRequest(0);
      sub_275AE53B4();
    }
  }

  return result;
}

uint64_t sub_275ABFFF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for GetBiomeStreamRequest(0);
  sub_275AE2784();
  return sub_275AE5374();
}

uint64_t GetBiomeStreamRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_275ABB868(v3, a1, a2, a3, type metadata accessor for GetBiomeStreamRequest);
  if (!v4)
  {
    sub_275AB87F8(v3, a1, a2, a3, type metadata accessor for GetBiomeStreamRequest, 2);
    sub_275AC0118(v3, a1, a2, a3);
    return sub_275AE5284();
  }

  return result;
}

uint64_t sub_275AC0118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for GetBiomeStreamRequest(0);
  if ((*(a1 + *(result + 28) + 9) & 1) == 0)
  {
    sub_275AE2784();
    return sub_275AE54B4();
  }

  return result;
}

uint64_t sub_275AC0204@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v5 = a1[6];
  v6 = a2 + a1[5];
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = a2 + v5;
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = a2 + a1[7];
  *v8 = 0;
  *(v8 + 8) = 256;
  return result;
}

uint64_t sub_275AC02AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_275ADD244(&qword_280A254F0, type metadata accessor for GetBiomeStreamRequest, &protocol conformance descriptor for GetBiomeStreamRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_275AC034C(uint64_t a1)
{
  sub_275ADD244(&qword_280A25300, type metadata accessor for GetBiomeStreamRequest, &protocol conformance descriptor for GetBiomeStreamRequest);

  return sub_275AE5464();
}

uint64_t sub_275AC03B8(uint64_t a1, uint64_t a2)
{
  sub_275ADD244(&qword_280A25300, type metadata accessor for GetBiomeStreamRequest, &protocol conformance descriptor for GetBiomeStreamRequest);

  return sub_275AE5474();
}

uint64_t sub_275AC0438()
{
  v0 = sub_275AE5574();
  __swift_allocate_value_buffer(v0, static GetBiomeStreamRequest.StreamType._protobuf_nameMap);
  __swift_project_value_buffer(v0, static GetBiomeStreamRequest.StreamType._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24640, "ؠ");
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24648, &qword_275AEEA60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_275AE78F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "NO_TYPE";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_275AE5544();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "IND";
  *(v10 + 1) = 3;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "NOTIFICATION";
  *(v11 + 8) = 12;
  *(v11 + 16) = 2;
  v9();
  return sub_275AE5554();
}

uint64_t GetBiomeStreamResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_275AE5344();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_275AE53C4();
    }
  }

  return result;
}

uint64_t GetBiomeStreamResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (result = sub_275AE54F4(), !v4))
  {
    type metadata accessor for GetBiomeStreamResponse(0);
    return sub_275AE5284();
  }

  return result;
}

uint64_t sub_275AC08C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_275ADD244(&qword_280A254E8, type metadata accessor for GetBiomeStreamResponse, &protocol conformance descriptor for GetBiomeStreamResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_275AC0968(uint64_t a1)
{
  sub_275ADD244(&qword_280A25318, type metadata accessor for GetBiomeStreamResponse, &protocol conformance descriptor for GetBiomeStreamResponse);

  return sub_275AE5464();
}

uint64_t sub_275AC09D4(uint64_t a1, uint64_t a2)
{
  sub_275ADD244(&qword_280A25318, type metadata accessor for GetBiomeStreamResponse, &protocol conformance descriptor for GetBiomeStreamResponse);

  return sub_275AE5474();
}

uint64_t sub_275AC0A68(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void))
{
  if (((a5)(*a1, *a2, a3, a4) & 1) == 0)
  {
    return 0;
  }

  sub_275AE52A4();
  sub_275ADD244(&qword_280A24638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_275AE5664() & 1;
}

uint64_t sub_275AC0B48(uint64_t a1, uint64_t *a2)
{
  v3 = sub_275AE5574();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_275AE5564();
}

uint64_t sub_275AC0C3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_275ADD244(&qword_280A254E0, type metadata accessor for ActivityHistoryRequest, &protocol conformance descriptor for ActivityHistoryRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_275AC0CDC(uint64_t a1)
{
  sub_275ADD244(&qword_280A25330, type metadata accessor for ActivityHistoryRequest, &protocol conformance descriptor for ActivityHistoryRequest);

  return sub_275AE5464();
}

uint64_t sub_275AC0D48(uint64_t a1, uint64_t a2)
{
  sub_275ADD244(&qword_280A25330, type metadata accessor for ActivityHistoryRequest, &protocol conformance descriptor for ActivityHistoryRequest);

  return sub_275AE5474();
}

uint64_t sub_275AC0E78(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = v4;
  while (1)
  {
    result = sub_275AE5344();
    if (v5 || (v12 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(a1, v7, a2, a3);
    }
  }

  return result;
}

uint64_t sub_275AC0EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ActivityHistoryResponse(0);
  type metadata accessor for SystemActivityHistory_File(0);
  sub_275ADD244(&qword_281410900, type metadata accessor for SystemActivityHistory_File, &protocol conformance descriptor for SystemActivityHistory_File);
  return sub_275AE5404();
}

uint64_t sub_275AC0FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  result = a4(v4, a1, a2, a3);
  if (!v5)
  {
    return sub_275AE5284();
  }

  return result;
}

uint64_t sub_275AC103C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E88, &qword_275AEAC68);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for SystemActivityHistory_File(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ActivityHistoryResponse(0);
  sub_275A5F510(a1 + *(v12 + 20), v7, &qword_280A24E88, &qword_275AEAC68);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_275A5FE04(v7, &qword_280A24E88, &qword_275AEAC68);
  }

  sub_275A9ED50(v7, v11, type metadata accessor for SystemActivityHistory_File);
  sub_275ADD244(&qword_281410900, type metadata accessor for SystemActivityHistory_File, &protocol conformance descriptor for SystemActivityHistory_File);
  sub_275AE5534();
  return sub_275A9FCE4(v11, type metadata accessor for SystemActivityHistory_File);
}

uint64_t sub_275AC12B8@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v6 = *(a1 + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a3 + v6, 1, 1, v7);
}

uint64_t sub_275AC138C(uint64_t a1, uint64_t a2)
{
  v4 = sub_275ADD244(&qword_280A254D8, type metadata accessor for ActivityHistoryResponse, &protocol conformance descriptor for ActivityHistoryResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_275AC142C(uint64_t a1)
{
  sub_275ADD244(&qword_280A25348, type metadata accessor for ActivityHistoryResponse, &protocol conformance descriptor for ActivityHistoryResponse);

  return sub_275AE5464();
}

uint64_t sub_275AC1498(uint64_t a1, uint64_t a2)
{
  sub_275ADD244(&qword_280A25348, type metadata accessor for ActivityHistoryResponse, &protocol conformance descriptor for ActivityHistoryResponse);

  return sub_275AE5474();
}

uint64_t sub_275AC1540()
{
  v0 = sub_275AE5574();
  __swift_allocate_value_buffer(v0, static ShadowEvaluationRequest._protobuf_nameMap);
  __swift_project_value_buffer(v0, static ShadowEvaluationRequest._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24640, "ؠ");
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24648, &qword_275AEEA60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_275AE7220;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "startDays";
  *(v4 + 8) = 9;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_275AE5544();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 2;
  *v8 = "endDays";
  *(v8 + 8) = 7;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "labelDurationInDays";
  *(v10 + 1) = 19;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "dummyData";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "numOffsets";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "modelNames";
  *(v16 + 1) = 10;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "skipPublishMetrics";
  *(v18 + 1) = 18;
  v18[16] = 2;
  v7();
  return sub_275AE5554();
}

uint64_t ShadowEvaluationRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_275AE5344();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    if (result <= 3)
    {
      if (result == 1 || result == 2 || result == 3)
      {
LABEL_2:
        type metadata accessor for ShadowEvaluationRequest(0);
        sub_275AE53B4();
      }
    }

    else if (result > 5)
    {
      if (result == 6)
      {
        sub_275AE53C4();
      }

      else if (result == 7)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (result != 4)
      {
        goto LABEL_2;
      }

LABEL_15:
      type metadata accessor for ShadowEvaluationRequest(0);
      sub_275AE5364();
    }
  }
}

uint64_t ShadowEvaluationRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_275AB87F8(v3, a1, a2, a3, type metadata accessor for ShadowEvaluationRequest, 1);
  if (!v4)
  {
    sub_275AB7AE8(v3, a1, a2, a3, type metadata accessor for ShadowEvaluationRequest, 2);
    sub_275AC1B5C(v3, a1, a2, a3, type metadata accessor for ShadowEvaluationRequest, 3);
    sub_275AC1BE0(v3, a1, a2, a3);
    sub_275AC1C58(v3, a1, a2, a3);
    if (*(*v3 + 16))
    {
      sub_275AE54F4();
    }

    sub_275AC1CD0(v3, a1, a2, a3, type metadata accessor for ShadowEvaluationRequest);
    type metadata accessor for ShadowEvaluationRequest(0);
    return sub_275AE5284();
  }

  return result;
}

uint64_t sub_275AC1B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  result = a5(0);
  if ((*(a1 + *(result + 32) + 8) & 1) == 0)
  {
    return sub_275AE54E4();
  }

  return result;
}

uint64_t sub_275AC1BE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ShadowEvaluationRequest(0);
  if (*(a1 + *(result + 36)) != 2)
  {
    return sub_275AE54A4();
  }

  return result;
}

uint64_t sub_275AC1C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ShadowEvaluationRequest(0);
  if ((*(a1 + *(result + 40) + 8) & 1) == 0)
  {
    return sub_275AE54E4();
  }

  return result;
}

uint64_t sub_275AC1CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if (*(a1 + *(result + 44)) != 2)
  {
    return sub_275AE54A4();
  }

  return result;
}

uint64_t sub_275AC1D94@<X0>(int *a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  result = _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v5 = a1[7];
  v6 = a2 + a1[6];
  *v6 = 0;
  v6[8] = 1;
  v7 = a2 + v5;
  *v7 = 0;
  v7[8] = 1;
  v8 = a1[9];
  v9 = a2 + a1[8];
  *v9 = 0;
  v9[8] = 1;
  *(a2 + v8) = 2;
  v10 = a1[11];
  v11 = a2 + a1[10];
  *v11 = 0;
  v11[8] = 1;
  *(a2 + v10) = 2;
  return result;
}

uint64_t sub_275AC1E68(uint64_t a1, uint64_t a2)
{
  v4 = sub_275ADD244(&qword_280A254D0, type metadata accessor for ShadowEvaluationRequest, &protocol conformance descriptor for ShadowEvaluationRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_275AC1F08(uint64_t a1)
{
  sub_275ADD244(&qword_280A25360, type metadata accessor for ShadowEvaluationRequest, &protocol conformance descriptor for ShadowEvaluationRequest);

  return sub_275AE5464();
}

uint64_t sub_275AC1F74(uint64_t a1, uint64_t a2)
{
  sub_275ADD244(&qword_280A25360, type metadata accessor for ShadowEvaluationRequest, &protocol conformance descriptor for ShadowEvaluationRequest);

  return sub_275AE5474();
}

uint64_t sub_275AC201C()
{
  v0 = sub_275AE5574();
  __swift_allocate_value_buffer(v0, static ShadowEvaluationResponse._protobuf_nameMap);
  __swift_project_value_buffer(v0, static ShadowEvaluationResponse._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24640, "ؠ");
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24648, &qword_275AEEA60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_275AE78F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "dummyData";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_275AE5544();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "modelPerformanceMetrics";
  *(v10 + 1) = 23;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "delayPerformanceMetrics";
  *(v11 + 8) = 23;
  *(v11 + 16) = 2;
  v9();
  return sub_275AE5554();
}

uint64_t ShadowEvaluationResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_275AE5344();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2)
    {
      sub_275AE53C4();
    }

    else if (result == 1)
    {
      type metadata accessor for ShadowEvaluationResponse(0);
      sub_275AE5364();
    }
  }

  return result;
}

uint64_t sub_275AC2384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), void (*a6)(void))
{
  result = a5(v6, a1, a2, a3, a4, 1);
  if (!v7)
  {
    if (*(*v6 + 16))
    {
      sub_275AE54F4();
    }

    if (*(v6[1] + 16))
    {
      sub_275AE54F4();
    }

    a6(0);
    return sub_275AE5284();
  }

  return result;
}

uint64_t sub_275AC24B4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  a2[1] = v4;
  result = _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  *(a2 + *(a1 + 28)) = 2;
  return result;
}

uint64_t sub_275AC2548(uint64_t a1, uint64_t a2)
{
  v4 = sub_275ADD244(&qword_280A254C8, type metadata accessor for ShadowEvaluationResponse, &protocol conformance descriptor for ShadowEvaluationResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_275AC25E8(uint64_t a1)
{
  sub_275ADD244(&qword_280A25378, type metadata accessor for ShadowEvaluationResponse, &protocol conformance descriptor for ShadowEvaluationResponse);

  return sub_275AE5464();
}

uint64_t sub_275AC2654(uint64_t a1, uint64_t a2)
{
  sub_275ADD244(&qword_280A25378, type metadata accessor for ShadowEvaluationResponse, &protocol conformance descriptor for ShadowEvaluationResponse);

  return sub_275AE5474();
}

uint64_t DeleteDaemonStateRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_275AE5344();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result == 1)
      {
        sub_275AC2818(a1, v5, a2, a3, type metadata accessor for DeleteDaemonStateRequest, sub_275AE2730, &type metadata for DeleteDaemonStateRequest.StateCategory);
      }

      result = sub_275AE5344();
    }
  }

  return result;
}

uint64_t sub_275AC2818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t a7)
{
  a5(0);
  a6();
  return sub_275AE5374();
}

uint64_t DeleteDaemonStateRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_275AC2928(v3, a1, a2, a3, type metadata accessor for DeleteDaemonStateRequest, sub_275AE2730, &type metadata for DeleteDaemonStateRequest.StateCategory);
  if (!v4)
  {
    return sub_275AE5284();
  }

  return result;
}

uint64_t sub_275AC2928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(uint64_t, uint64_t), uint64_t a7)
{
  result = a5(0);
  if ((*(a1 + *(result + 20) + 9) & 1) == 0)
  {
    a6(result, v10);
    return sub_275AE54B4();
  }

  return result;
}

uint64_t sub_275AC2A2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v5 = a2 + *(a1 + 20);
  *v5 = 0;
  *(v5 + 8) = 256;
  return result;
}

uint64_t sub_275AC2AB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_275ADD244(&qword_280A254C0, type metadata accessor for DeleteDaemonStateRequest, &protocol conformance descriptor for DeleteDaemonStateRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_275AC2B54(uint64_t a1)
{
  sub_275ADD244(&qword_281410C10, type metadata accessor for DeleteDaemonStateRequest, &protocol conformance descriptor for DeleteDaemonStateRequest);

  return sub_275AE5464();
}

uint64_t sub_275AC2BC0(uint64_t a1, uint64_t a2)
{
  sub_275ADD244(&qword_281410C10, type metadata accessor for DeleteDaemonStateRequest, &protocol conformance descriptor for DeleteDaemonStateRequest);

  return sub_275AE5474();
}

uint64_t sub_275AC2C40()
{
  v0 = sub_275AE5574();
  __swift_allocate_value_buffer(v0, static DeleteDaemonStateRequest.StateCategory._protobuf_nameMap);
  __swift_project_value_buffer(v0, static DeleteDaemonStateRequest.StateCategory._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24640, "ؠ");
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24648, &qword_275AEEA60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_275AE9490;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "NOT_SET";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_275AE5544();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "NOTIFICATION";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "PFL_AND_PET";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "MOBILE_ASSET";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 4;
  *v15 = "IND_XPC_BACKOFF";
  *(v15 + 8) = 15;
  *(v15 + 16) = 2;
  v9();
  return sub_275AE5554();
}

uint64_t sub_275AC2F7C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_275AE5574();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24640, "ؠ");
  v8 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24648, &qword_275AEEA60) - 8);
  v9 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_275AE7E30;
  v11 = v10 + v9 + v8[14];
  *(v10 + v9) = 1;
  *v11 = a3;
  *(v11 + 8) = a4;
  *(v11 + 16) = 2;
  v12 = *MEMORY[0x277D21870];
  v13 = sub_275AE5544();
  (*(*(v13 - 8) + 104))(v11, v12, v13);
  return sub_275AE5554();
}

uint64_t sub_275AC319C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  result = a5(v5, a1, a2, a3, a4);
  if (!v6)
  {
    return sub_275AE5284();
  }

  return result;
}

uint64_t sub_275AC3294(uint64_t a1, uint64_t a2)
{
  v4 = sub_275ADD244(&qword_280A254B8, type metadata accessor for DeleteDaemonStateResponse, &protocol conformance descriptor for DeleteDaemonStateResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_275AC3334(uint64_t a1)
{
  sub_275ADD244(&qword_281410AD0, type metadata accessor for DeleteDaemonStateResponse, &protocol conformance descriptor for DeleteDaemonStateResponse);

  return sub_275AE5464();
}

uint64_t sub_275AC33A0(uint64_t a1, uint64_t a2)
{
  sub_275ADD244(&qword_281410AD0, type metadata accessor for DeleteDaemonStateResponse, &protocol conformance descriptor for DeleteDaemonStateResponse);

  return sub_275AE5474();
}

uint64_t sub_275AC3474()
{
  v0 = sub_275AE5574();
  __swift_allocate_value_buffer(v0, static SubscriptionClientRequest._protobuf_nameMap);
  __swift_project_value_buffer(v0, static SubscriptionClientRequest._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24640, "ؠ");
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24648, &qword_275AEEA60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_275AEA800;
  v4 = v39 + v3;
  v5 = v39 + v3 + v1[14];
  *(v39 + v3) = 2;
  *v5 = "ping";
  *(v5 + 8) = 4;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_275AE5544();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 3;
  *v9 = "newOffer";
  *(v9 + 8) = 8;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 4;
  *v11 = "features";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 5;
  *v13 = "getState";
  *(v13 + 1) = 8;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 6;
  *v15 = "Data";
  *(v15 + 1) = 4;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 7;
  *v17 = "notificationPending";
  *(v17 + 1) = 19;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 9;
  *v19 = "setCliActivity";
  *(v19 + 1) = 14;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 11;
  *v21 = "displayDelayedOffer";
  *(v21 + 1) = 19;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 12;
  *v22 = "activityStatus";
  *(v22 + 8) = 14;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 13;
  *v24 = "activityClear";
  *(v24 + 1) = 13;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 14;
  *v26 = "getBiomeStream";
  *(v26 + 1) = 14;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 15;
  *v28 = "notificationStateWrite";
  *(v28 + 1) = 22;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 16;
  *v30 = "activityHistory";
  *(v30 + 1) = 15;
  v30[16] = 2;
  v8();
  v31 = (v4 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 17;
  *v32 = "mobileAssetDownload";
  *(v32 + 1) = 19;
  v32[16] = 2;
  v8();
  v33 = (v4 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 19;
  *v34 = "shadowEvaluation";
  *(v34 + 1) = 16;
  v34[16] = 2;
  v8();
  v35 = (v4 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 20;
  *v36 = "mobileAssetGetVersion";
  *(v36 + 1) = 21;
  v36[16] = 2;
  v8();
  v37 = v4 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 21;
  *v37 = "deleteDaemonState";
  *(v37 + 8) = 17;
  *(v37 + 16) = 2;
  v8();
  return sub_275AE5554();
}

uint64_t SubscriptionClientRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_275AE5344();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 2:
        sub_275AC3C78(v5, a1, a2, a3);
        break;
      case 3:
        sub_275AC4228(v5, a1, a2, a3);
        break;
      case 4:
        sub_275AC47E4(v5, a1, a2, a3);
        break;
      case 5:
        sub_275AC4DA0(v5, a1, a2, a3);
        break;
      case 6:
        sub_275AC535C(v5, a1, a2, a3);
        break;
      case 7:
        sub_275AC5918(v5, a1, a2, a3);
        break;
      case 9:
        sub_275AC5ED4(v5, a1, a2, a3);
        break;
      case 11:
        sub_275AC6490(v5, a1, a2, a3);
        break;
      case 12:
        sub_275AC6A4C(v5, a1, a2, a3);
        break;
      case 13:
        sub_275AC7008(v5, a1, a2, a3);
        break;
      case 14:
        sub_275AC75C4(v5, a1, a2, a3);
        break;
      case 15:
        sub_275AC7B80(v5, a1, a2, a3);
        break;
      case 16:
        sub_275AC813C(v5, a1, a2, a3);
        break;
      case 17:
        sub_275AC86F8(v5, a1, a2, a3);
        break;
      case 19:
        sub_275AC8CB4(v5, a1, a2, a3);
        break;
      case 20:
        sub_275AC9270(v5, a1, a2, a3);
        break;
      case 21:
        sub_275AC982C(v5, a1, a2, a3);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_275AC3C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for PingRequest(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v39 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C20, &qword_275AEAC70);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A25698, &qword_275AEEA70);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_275A5F510(a1, v12, &qword_280A24C20, &qword_275AEAC70);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_275A5FE04(v12, &qword_280A24C20, &qword_275AEAC70);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_275A9ED50(v12, v19, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
    sub_275A9ED50(v19, v17, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_275A9FCE4(v17, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
      v29 = v44;
    }

    else
    {
      sub_275A5FE04(v24, &qword_280A25698, &qword_275AEEA70);
      v31 = v39;
      sub_275A9ED50(v17, v39, type metadata accessor for PingRequest);
      sub_275A9ED50(v31, v24, type metadata accessor for PingRequest);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }
  }

  v32 = v42;
  sub_275ADD244(&qword_280A25088, type metadata accessor for PingRequest, &protocol conformance descriptor for PingRequest);
  v33 = v43;
  sub_275AE5404();
  if (v33)
  {
    return sub_275A5FE04(v24, &qword_280A25698, &qword_275AEEA70);
  }

  sub_275A5F510(v24, v32, &qword_280A25698, &qword_275AEEA70);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_275A5FE04(v24, &qword_280A25698, &qword_275AEEA70);
    return sub_275A5FE04(v32, &qword_280A25698, &qword_275AEEA70);
  }

  else
  {
    v35 = v40;
    sub_275A9ED50(v32, v40, type metadata accessor for PingRequest);
    if (v28 != 1)
    {
      sub_275AE5354();
    }

    sub_275A5FE04(v24, &qword_280A25698, &qword_275AEEA70);
    v36 = v38;
    sub_275A5FE04(v38, &qword_280A24C20, &qword_275AEAC70);
    sub_275A9ED50(v35, v36, type metadata accessor for PingRequest);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_275AC4228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for NewOfferRequest(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C20, &qword_275AEAC70);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A256A0, &qword_275AEEA78);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_275A5F510(a1, v12, &qword_280A24C20, &qword_275AEAC70);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_275A5FE04(v12, &qword_280A24C20, &qword_275AEAC70);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_275A9ED50(v12, v19, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
    sub_275A9ED50(v19, v17, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_275A5FE04(v24, &qword_280A256A0, &qword_275AEEA78);
      v31 = v40;
      sub_275A9ED50(v17, v40, type metadata accessor for NewOfferRequest);
      sub_275A9ED50(v31, v24, type metadata accessor for NewOfferRequest);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_275A9FCE4(v17, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_275ADD244(&qword_280A25058, type metadata accessor for NewOfferRequest, &protocol conformance descriptor for NewOfferRequest);
  v33 = v43;
  sub_275AE5404();
  if (v33)
  {
    return sub_275A5FE04(v24, &qword_280A256A0, &qword_275AEEA78);
  }

  sub_275A5F510(v24, v32, &qword_280A256A0, &qword_275AEEA78);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_275A5FE04(v24, &qword_280A256A0, &qword_275AEEA78);
    return sub_275A5FE04(v32, &qword_280A256A0, &qword_275AEEA78);
  }

  else
  {
    v35 = v39;
    sub_275A9ED50(v32, v39, type metadata accessor for NewOfferRequest);
    if (v28 != 1)
    {
      sub_275AE5354();
    }

    sub_275A5FE04(v24, &qword_280A256A0, &qword_275AEEA78);
    v36 = v38;
    sub_275A5FE04(v38, &qword_280A24C20, &qword_275AEAC70);
    sub_275A9ED50(v35, v36, type metadata accessor for NewOfferRequest);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_275AC47E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for FeaturesRequest(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C20, &qword_275AEAC70);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A256A8, &qword_275AEEA80);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_275A5F510(a1, v12, &qword_280A24C20, &qword_275AEAC70);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_275A5FE04(v12, &qword_280A24C20, &qword_275AEAC70);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_275A9ED50(v12, v19, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
    sub_275A9ED50(v19, v17, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_275A5FE04(v24, &qword_280A256A8, &qword_275AEEA80);
      v31 = v40;
      sub_275A9ED50(v17, v40, type metadata accessor for FeaturesRequest);
      sub_275A9ED50(v31, v24, type metadata accessor for FeaturesRequest);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_275A9FCE4(v17, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_275ADD244(&qword_280A250B8, type metadata accessor for FeaturesRequest, &protocol conformance descriptor for FeaturesRequest);
  v33 = v43;
  sub_275AE5404();
  if (v33)
  {
    return sub_275A5FE04(v24, &qword_280A256A8, &qword_275AEEA80);
  }

  sub_275A5F510(v24, v32, &qword_280A256A8, &qword_275AEEA80);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_275A5FE04(v24, &qword_280A256A8, &qword_275AEEA80);
    return sub_275A5FE04(v32, &qword_280A256A8, &qword_275AEEA80);
  }

  else
  {
    v35 = v39;
    sub_275A9ED50(v32, v39, type metadata accessor for FeaturesRequest);
    if (v28 != 1)
    {
      sub_275AE5354();
    }

    sub_275A5FE04(v24, &qword_280A256A8, &qword_275AEEA80);
    v36 = v38;
    sub_275A5FE04(v38, &qword_280A24C20, &qword_275AEAC70);
    sub_275A9ED50(v35, v36, type metadata accessor for FeaturesRequest);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_275AC4DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  StateRequest = type metadata accessor for GetStateRequest(0);
  v6 = *(StateRequest - 8);
  v7 = MEMORY[0x28223BE20](StateRequest);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C20, &qword_275AEAC70);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A256B0, &qword_275AEEA88);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = StateRequest;
  v26 = StateRequest;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_275A5F510(a1, v12, &qword_280A24C20, &qword_275AEAC70);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_275A5FE04(v12, &qword_280A24C20, &qword_275AEAC70);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_275A9ED50(v12, v19, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
    sub_275A9ED50(v19, v17, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_275A5FE04(v24, &qword_280A256B0, &qword_275AEEA88);
      v31 = v40;
      sub_275A9ED50(v17, v40, type metadata accessor for GetStateRequest);
      sub_275A9ED50(v31, v24, type metadata accessor for GetStateRequest);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_275A9FCE4(v17, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_275ADD244(&qword_280A250F8, type metadata accessor for GetStateRequest, &protocol conformance descriptor for GetStateRequest);
  v33 = v43;
  sub_275AE5404();
  if (v33)
  {
    return sub_275A5FE04(v24, &qword_280A256B0, &qword_275AEEA88);
  }

  sub_275A5F510(v24, v32, &qword_280A256B0, &qword_275AEEA88);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_275A5FE04(v24, &qword_280A256B0, &qword_275AEEA88);
    return sub_275A5FE04(v32, &qword_280A256B0, &qword_275AEEA88);
  }

  else
  {
    v35 = v39;
    sub_275A9ED50(v32, v39, type metadata accessor for GetStateRequest);
    if (v28 != 1)
    {
      sub_275AE5354();
    }

    sub_275A5FE04(v24, &qword_280A256B0, &qword_275AEEA88);
    v36 = v38;
    sub_275A5FE04(v38, &qword_280A24C20, &qword_275AEAC70);
    sub_275A9ED50(v35, v36, type metadata accessor for GetStateRequest);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_275AC535C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for DataRequest(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C20, &qword_275AEAC70);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A256B8, &qword_275AEEA90);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_275A5F510(a1, v12, &qword_280A24C20, &qword_275AEAC70);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_275A5FE04(v12, &qword_280A24C20, &qword_275AEAC70);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_275A9ED50(v12, v19, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
    sub_275A9ED50(v19, v17, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_275A5FE04(v24, &qword_280A256B8, &qword_275AEEA90);
      v31 = v40;
      sub_275A9ED50(v17, v40, type metadata accessor for DataRequest);
      sub_275A9ED50(v31, v24, type metadata accessor for DataRequest);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_275A9FCE4(v17, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_275ADD244(&qword_280A25128, type metadata accessor for DataRequest, &protocol conformance descriptor for DataRequest);
  v33 = v43;
  sub_275AE5404();
  if (v33)
  {
    return sub_275A5FE04(v24, &qword_280A256B8, &qword_275AEEA90);
  }

  sub_275A5F510(v24, v32, &qword_280A256B8, &qword_275AEEA90);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_275A5FE04(v24, &qword_280A256B8, &qword_275AEEA90);
    return sub_275A5FE04(v32, &qword_280A256B8, &qword_275AEEA90);
  }

  else
  {
    v35 = v39;
    sub_275A9ED50(v32, v39, type metadata accessor for DataRequest);
    if (v28 != 1)
    {
      sub_275AE5354();
    }

    sub_275A5FE04(v24, &qword_280A256B8, &qword_275AEEA90);
    v36 = v38;
    sub_275A5FE04(v38, &qword_280A24C20, &qword_275AEAC70);
    sub_275A9ED50(v35, v36, type metadata accessor for DataRequest);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_275AC5918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for NotificationPendingRequest(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C20, &qword_275AEAC70);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A256C0, &qword_275AEEA98);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_275A5F510(a1, v12, &qword_280A24C20, &qword_275AEAC70);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_275A5FE04(v12, &qword_280A24C20, &qword_275AEAC70);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_275A9ED50(v12, v19, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
    sub_275A9ED50(v19, v17, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_275A5FE04(v24, &qword_280A256C0, &qword_275AEEA98);
      v31 = v40;
      sub_275A9ED50(v17, v40, type metadata accessor for NotificationPendingRequest);
      sub_275A9ED50(v31, v24, type metadata accessor for NotificationPendingRequest);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_275A9FCE4(v17, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_275ADD244(&qword_280A25158, type metadata accessor for NotificationPendingRequest, &protocol conformance descriptor for NotificationPendingRequest);
  v33 = v43;
  sub_275AE5404();
  if (v33)
  {
    return sub_275A5FE04(v24, &qword_280A256C0, &qword_275AEEA98);
  }

  sub_275A5F510(v24, v32, &qword_280A256C0, &qword_275AEEA98);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_275A5FE04(v24, &qword_280A256C0, &qword_275AEEA98);
    return sub_275A5FE04(v32, &qword_280A256C0, &qword_275AEEA98);
  }

  else
  {
    v35 = v39;
    sub_275A9ED50(v32, v39, type metadata accessor for NotificationPendingRequest);
    if (v28 != 1)
    {
      sub_275AE5354();
    }

    sub_275A5FE04(v24, &qword_280A256C0, &qword_275AEEA98);
    v36 = v38;
    sub_275A5FE04(v38, &qword_280A24C20, &qword_275AEAC70);
    sub_275A9ED50(v35, v36, type metadata accessor for NotificationPendingRequest);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_275AC5ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for SetCliActivityRequest(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C20, &qword_275AEAC70);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A256C8, &qword_275AEEAA0);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_275A5F510(a1, v12, &qword_280A24C20, &qword_275AEAC70);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_275A5FE04(v12, &qword_280A24C20, &qword_275AEAC70);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_275A9ED50(v12, v19, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
    sub_275A9ED50(v19, v17, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_275A5FE04(v24, &qword_280A256C8, &qword_275AEEAA0);
      v31 = v40;
      sub_275A9ED50(v17, v40, type metadata accessor for SetCliActivityRequest);
      sub_275A9ED50(v31, v24, type metadata accessor for SetCliActivityRequest);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_275A9FCE4(v17, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_275ADD244(&qword_280A251B8, type metadata accessor for SetCliActivityRequest, &protocol conformance descriptor for SetCliActivityRequest);
  v33 = v43;
  sub_275AE5404();
  if (v33)
  {
    return sub_275A5FE04(v24, &qword_280A256C8, &qword_275AEEAA0);
  }

  sub_275A5F510(v24, v32, &qword_280A256C8, &qword_275AEEAA0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_275A5FE04(v24, &qword_280A256C8, &qword_275AEEAA0);
    return sub_275A5FE04(v32, &qword_280A256C8, &qword_275AEEAA0);
  }

  else
  {
    v35 = v39;
    sub_275A9ED50(v32, v39, type metadata accessor for SetCliActivityRequest);
    if (v28 != 1)
    {
      sub_275AE5354();
    }

    sub_275A5FE04(v24, &qword_280A256C8, &qword_275AEEAA0);
    v36 = v38;
    sub_275A5FE04(v38, &qword_280A24C20, &qword_275AEAC70);
    sub_275A9ED50(v35, v36, type metadata accessor for SetCliActivityRequest);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_275AC6490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for DisplayDelayedOfferRequest(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C20, &qword_275AEAC70);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A256D0, &qword_275AEEAA8);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_275A5F510(a1, v12, &qword_280A24C20, &qword_275AEAC70);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_275A5FE04(v12, &qword_280A24C20, &qword_275AEAC70);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_275A9ED50(v12, v19, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
    sub_275A9ED50(v19, v17, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_275A5FE04(v24, &qword_280A256D0, &qword_275AEEAA8);
      v31 = v40;
      sub_275A9ED50(v17, v40, type metadata accessor for DisplayDelayedOfferRequest);
      sub_275A9ED50(v31, v24, type metadata accessor for DisplayDelayedOfferRequest);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_275A9FCE4(v17, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_275ADD244(&qword_280A25248, type metadata accessor for DisplayDelayedOfferRequest, &protocol conformance descriptor for DisplayDelayedOfferRequest);
  v33 = v43;
  sub_275AE5404();
  if (v33)
  {
    return sub_275A5FE04(v24, &qword_280A256D0, &qword_275AEEAA8);
  }

  sub_275A5F510(v24, v32, &qword_280A256D0, &qword_275AEEAA8);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_275A5FE04(v24, &qword_280A256D0, &qword_275AEEAA8);
    return sub_275A5FE04(v32, &qword_280A256D0, &qword_275AEEAA8);
  }

  else
  {
    v35 = v39;
    sub_275A9ED50(v32, v39, type metadata accessor for DisplayDelayedOfferRequest);
    if (v28 != 1)
    {
      sub_275AE5354();
    }

    sub_275A5FE04(v24, &qword_280A256D0, &qword_275AEEAA8);
    v36 = v38;
    sub_275A5FE04(v38, &qword_280A24C20, &qword_275AEAC70);
    sub_275A9ED50(v35, v36, type metadata accessor for DisplayDelayedOfferRequest);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_275AC6A4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ActivityStatusRequest(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C20, &qword_275AEAC70);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A256D8, &qword_275AEEAB0);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_275A5F510(a1, v12, &qword_280A24C20, &qword_275AEAC70);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_275A5FE04(v12, &qword_280A24C20, &qword_275AEAC70);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_275A9ED50(v12, v19, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
    sub_275A9ED50(v19, v17, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_275A5FE04(v24, &qword_280A256D8, &qword_275AEEAB0);
      v31 = v40;
      sub_275A9ED50(v17, v40, type metadata accessor for ActivityStatusRequest);
      sub_275A9ED50(v31, v24, type metadata accessor for ActivityStatusRequest);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_275A9FCE4(v17, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_275ADD244(&qword_280A25278, type metadata accessor for ActivityStatusRequest, &protocol conformance descriptor for ActivityStatusRequest);
  v33 = v43;
  sub_275AE5404();
  if (v33)
  {
    return sub_275A5FE04(v24, &qword_280A256D8, &qword_275AEEAB0);
  }

  sub_275A5F510(v24, v32, &qword_280A256D8, &qword_275AEEAB0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_275A5FE04(v24, &qword_280A256D8, &qword_275AEEAB0);
    return sub_275A5FE04(v32, &qword_280A256D8, &qword_275AEEAB0);
  }

  else
  {
    v35 = v39;
    sub_275A9ED50(v32, v39, type metadata accessor for ActivityStatusRequest);
    if (v28 != 1)
    {
      sub_275AE5354();
    }

    sub_275A5FE04(v24, &qword_280A256D8, &qword_275AEEAB0);
    v36 = v38;
    sub_275A5FE04(v38, &qword_280A24C20, &qword_275AEAC70);
    sub_275A9ED50(v35, v36, type metadata accessor for ActivityStatusRequest);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_275AC7008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ActivityClearRequest(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C20, &qword_275AEAC70);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A256E0, &qword_275AEEAB8);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_275A5F510(a1, v12, &qword_280A24C20, &qword_275AEAC70);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_275A5FE04(v12, &qword_280A24C20, &qword_275AEAC70);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_275A9ED50(v12, v19, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
    sub_275A9ED50(v19, v17, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      sub_275A5FE04(v24, &qword_280A256E0, &qword_275AEEAB8);
      v31 = v40;
      sub_275A9ED50(v17, v40, type metadata accessor for ActivityClearRequest);
      sub_275A9ED50(v31, v24, type metadata accessor for ActivityClearRequest);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_275A9FCE4(v17, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_275ADD244(&qword_280A252D0, type metadata accessor for ActivityClearRequest, &protocol conformance descriptor for ActivityClearRequest);
  v33 = v43;
  sub_275AE5404();
  if (v33)
  {
    return sub_275A5FE04(v24, &qword_280A256E0, &qword_275AEEAB8);
  }

  sub_275A5F510(v24, v32, &qword_280A256E0, &qword_275AEEAB8);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_275A5FE04(v24, &qword_280A256E0, &qword_275AEEAB8);
    return sub_275A5FE04(v32, &qword_280A256E0, &qword_275AEEAB8);
  }

  else
  {
    v35 = v39;
    sub_275A9ED50(v32, v39, type metadata accessor for ActivityClearRequest);
    if (v28 != 1)
    {
      sub_275AE5354();
    }

    sub_275A5FE04(v24, &qword_280A256E0, &qword_275AEEAB8);
    v36 = v38;
    sub_275A5FE04(v38, &qword_280A24C20, &qword_275AEAC70);
    sub_275A9ED50(v35, v36, type metadata accessor for ActivityClearRequest);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_275AC75C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  BiomeStreamRequest = type metadata accessor for GetBiomeStreamRequest(0);
  v6 = *(BiomeStreamRequest - 8);
  v7 = MEMORY[0x28223BE20](BiomeStreamRequest);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C20, &qword_275AEAC70);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A256E8, &qword_275AEEAC0);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = BiomeStreamRequest;
  v26 = BiomeStreamRequest;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_275A5F510(a1, v12, &qword_280A24C20, &qword_275AEAC70);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_275A5FE04(v12, &qword_280A24C20, &qword_275AEAC70);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_275A9ED50(v12, v19, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
    sub_275A9ED50(v19, v17, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      sub_275A5FE04(v24, &qword_280A256E8, &qword_275AEEAC0);
      v31 = v40;
      sub_275A9ED50(v17, v40, type metadata accessor for GetBiomeStreamRequest);
      sub_275A9ED50(v31, v24, type metadata accessor for GetBiomeStreamRequest);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_275A9FCE4(v17, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_275ADD244(&qword_280A25300, type metadata accessor for GetBiomeStreamRequest, &protocol conformance descriptor for GetBiomeStreamRequest);
  v33 = v43;
  sub_275AE5404();
  if (v33)
  {
    return sub_275A5FE04(v24, &qword_280A256E8, &qword_275AEEAC0);
  }

  sub_275A5F510(v24, v32, &qword_280A256E8, &qword_275AEEAC0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_275A5FE04(v24, &qword_280A256E8, &qword_275AEEAC0);
    return sub_275A5FE04(v32, &qword_280A256E8, &qword_275AEEAC0);
  }

  else
  {
    v35 = v39;
    sub_275A9ED50(v32, v39, type metadata accessor for GetBiomeStreamRequest);
    if (v28 != 1)
    {
      sub_275AE5354();
    }

    sub_275A5FE04(v24, &qword_280A256E8, &qword_275AEEAC0);
    v36 = v38;
    sub_275A5FE04(v38, &qword_280A24C20, &qword_275AEAC70);
    sub_275A9ED50(v35, v36, type metadata accessor for GetBiomeStreamRequest);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_275AC7B80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for NotificationStateWriteRequest(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C20, &qword_275AEAC70);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A256F0, &qword_275AEEAC8);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_275A5F510(a1, v12, &qword_280A24C20, &qword_275AEAC70);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_275A5FE04(v12, &qword_280A24C20, &qword_275AEAC70);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_275A9ED50(v12, v19, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
    sub_275A9ED50(v19, v17, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      sub_275A5FE04(v24, &qword_280A256F0, &qword_275AEEAC8);
      v31 = v40;
      sub_275A9ED50(v17, v40, type metadata accessor for NotificationStateWriteRequest);
      sub_275A9ED50(v31, v24, type metadata accessor for NotificationStateWriteRequest);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_275A9FCE4(v17, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_275ADD244(&qword_280A25188, type metadata accessor for NotificationStateWriteRequest, &protocol conformance descriptor for NotificationStateWriteRequest);
  v33 = v43;
  sub_275AE5404();
  if (v33)
  {
    return sub_275A5FE04(v24, &qword_280A256F0, &qword_275AEEAC8);
  }

  sub_275A5F510(v24, v32, &qword_280A256F0, &qword_275AEEAC8);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_275A5FE04(v24, &qword_280A256F0, &qword_275AEEAC8);
    return sub_275A5FE04(v32, &qword_280A256F0, &qword_275AEEAC8);
  }

  else
  {
    v35 = v39;
    sub_275A9ED50(v32, v39, type metadata accessor for NotificationStateWriteRequest);
    if (v28 != 1)
    {
      sub_275AE5354();
    }

    sub_275A5FE04(v24, &qword_280A256F0, &qword_275AEEAC8);
    v36 = v38;
    sub_275A5FE04(v38, &qword_280A24C20, &qword_275AEAC70);
    sub_275A9ED50(v35, v36, type metadata accessor for NotificationStateWriteRequest);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_275AC813C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ActivityHistoryRequest(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C20, &qword_275AEAC70);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A256F8, &qword_275AEEAD0);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_275A5F510(a1, v12, &qword_280A24C20, &qword_275AEAC70);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_275A5FE04(v12, &qword_280A24C20, &qword_275AEAC70);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_275A9ED50(v12, v19, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
    sub_275A9ED50(v19, v17, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      sub_275A5FE04(v24, &qword_280A256F8, &qword_275AEEAD0);
      v31 = v40;
      sub_275A9ED50(v17, v40, type metadata accessor for ActivityHistoryRequest);
      sub_275A9ED50(v31, v24, type metadata accessor for ActivityHistoryRequest);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_275A9FCE4(v17, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_275ADD244(&qword_280A25330, type metadata accessor for ActivityHistoryRequest, &protocol conformance descriptor for ActivityHistoryRequest);
  v33 = v43;
  sub_275AE5404();
  if (v33)
  {
    return sub_275A5FE04(v24, &qword_280A256F8, &qword_275AEEAD0);
  }

  sub_275A5F510(v24, v32, &qword_280A256F8, &qword_275AEEAD0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_275A5FE04(v24, &qword_280A256F8, &qword_275AEEAD0);
    return sub_275A5FE04(v32, &qword_280A256F8, &qword_275AEEAD0);
  }

  else
  {
    v35 = v39;
    sub_275A9ED50(v32, v39, type metadata accessor for ActivityHistoryRequest);
    if (v28 != 1)
    {
      sub_275AE5354();
    }

    sub_275A5FE04(v24, &qword_280A256F8, &qword_275AEEAD0);
    v36 = v38;
    sub_275A5FE04(v38, &qword_280A24C20, &qword_275AEAC70);
    sub_275A9ED50(v35, v36, type metadata accessor for ActivityHistoryRequest);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_275AC86F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for MobileAssetDownloadRequest(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C20, &qword_275AEAC70);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A25700, &qword_275AEEAD8);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_275A5F510(a1, v12, &qword_280A24C20, &qword_275AEAC70);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_275A5FE04(v12, &qword_280A24C20, &qword_275AEAC70);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_275A9ED50(v12, v19, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
    sub_275A9ED50(v19, v17, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 13)
    {
      sub_275A5FE04(v24, &qword_280A25700, &qword_275AEEAD8);
      v31 = v40;
      sub_275A9ED50(v17, v40, type metadata accessor for MobileAssetDownloadRequest);
      sub_275A9ED50(v31, v24, type metadata accessor for MobileAssetDownloadRequest);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_275A9FCE4(v17, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_275ADD244(&qword_280A251E8, type metadata accessor for MobileAssetDownloadRequest, &protocol conformance descriptor for MobileAssetDownloadRequest);
  v33 = v43;
  sub_275AE5404();
  if (v33)
  {
    return sub_275A5FE04(v24, &qword_280A25700, &qword_275AEEAD8);
  }

  sub_275A5F510(v24, v32, &qword_280A25700, &qword_275AEEAD8);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_275A5FE04(v24, &qword_280A25700, &qword_275AEEAD8);
    return sub_275A5FE04(v32, &qword_280A25700, &qword_275AEEAD8);
  }

  else
  {
    v35 = v39;
    sub_275A9ED50(v32, v39, type metadata accessor for MobileAssetDownloadRequest);
    if (v28 != 1)
    {
      sub_275AE5354();
    }

    sub_275A5FE04(v24, &qword_280A25700, &qword_275AEEAD8);
    v36 = v38;
    sub_275A5FE04(v38, &qword_280A24C20, &qword_275AEAC70);
    sub_275A9ED50(v35, v36, type metadata accessor for MobileAssetDownloadRequest);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_275AC8CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ShadowEvaluationRequest(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C20, &qword_275AEAC70);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A25708, &qword_275AEEAE0);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_275A5F510(a1, v12, &qword_280A24C20, &qword_275AEAC70);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_275A5FE04(v12, &qword_280A24C20, &qword_275AEAC70);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_275A9ED50(v12, v19, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
    sub_275A9ED50(v19, v17, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 14)
    {
      sub_275A5FE04(v24, &qword_280A25708, &qword_275AEEAE0);
      v31 = v40;
      sub_275A9ED50(v17, v40, type metadata accessor for ShadowEvaluationRequest);
      sub_275A9ED50(v31, v24, type metadata accessor for ShadowEvaluationRequest);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_275A9FCE4(v17, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_275ADD244(&qword_280A25360, type metadata accessor for ShadowEvaluationRequest, &protocol conformance descriptor for ShadowEvaluationRequest);
  v33 = v43;
  sub_275AE5404();
  if (v33)
  {
    return sub_275A5FE04(v24, &qword_280A25708, &qword_275AEEAE0);
  }

  sub_275A5F510(v24, v32, &qword_280A25708, &qword_275AEEAE0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_275A5FE04(v24, &qword_280A25708, &qword_275AEEAE0);
    return sub_275A5FE04(v32, &qword_280A25708, &qword_275AEEAE0);
  }

  else
  {
    v35 = v39;
    sub_275A9ED50(v32, v39, type metadata accessor for ShadowEvaluationRequest);
    if (v28 != 1)
    {
      sub_275AE5354();
    }

    sub_275A5FE04(v24, &qword_280A25708, &qword_275AEEAE0);
    v36 = v38;
    sub_275A5FE04(v38, &qword_280A24C20, &qword_275AEAC70);
    sub_275A9ED50(v35, v36, type metadata accessor for ShadowEvaluationRequest);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_275AC9270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  VersionRequest = type metadata accessor for MobileAssetGetVersionRequest(0);
  v6 = *(VersionRequest - 8);
  v7 = MEMORY[0x28223BE20](VersionRequest);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C20, &qword_275AEAC70);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A25710, &qword_275AEEAE8);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = VersionRequest;
  v26 = VersionRequest;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_275A5F510(a1, v12, &qword_280A24C20, &qword_275AEAC70);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_275A5FE04(v12, &qword_280A24C20, &qword_275AEAC70);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_275A9ED50(v12, v19, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
    sub_275A9ED50(v19, v17, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 15)
    {
      sub_275A5FE04(v24, &qword_280A25710, &qword_275AEEAE8);
      v31 = v40;
      sub_275A9ED50(v17, v40, type metadata accessor for MobileAssetGetVersionRequest);
      sub_275A9ED50(v31, v24, type metadata accessor for MobileAssetGetVersionRequest);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_275A9FCE4(v17, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_275ADD244(&qword_280A25218, type metadata accessor for MobileAssetGetVersionRequest, &protocol conformance descriptor for MobileAssetGetVersionRequest);
  v33 = v43;
  sub_275AE5404();
  if (v33)
  {
    return sub_275A5FE04(v24, &qword_280A25710, &qword_275AEEAE8);
  }

  sub_275A5F510(v24, v32, &qword_280A25710, &qword_275AEEAE8);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_275A5FE04(v24, &qword_280A25710, &qword_275AEEAE8);
    return sub_275A5FE04(v32, &qword_280A25710, &qword_275AEEAE8);
  }

  else
  {
    v35 = v39;
    sub_275A9ED50(v32, v39, type metadata accessor for MobileAssetGetVersionRequest);
    if (v28 != 1)
    {
      sub_275AE5354();
    }

    sub_275A5FE04(v24, &qword_280A25710, &qword_275AEEAE8);
    v36 = v38;
    sub_275A5FE04(v38, &qword_280A24C20, &qword_275AEAC70);
    sub_275A9ED50(v35, v36, type metadata accessor for MobileAssetGetVersionRequest);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_275AC982C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for DeleteDaemonStateRequest(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C20, &qword_275AEAC70);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A25718, &unk_275AEEAF0);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_275A5F510(a1, v12, &qword_280A24C20, &qword_275AEAC70);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_275A5FE04(v12, &qword_280A24C20, &qword_275AEAC70);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_275A9ED50(v12, v19, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
    sub_275A9ED50(v19, v17, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 16)
    {
      sub_275A5FE04(v24, &qword_280A25718, &unk_275AEEAF0);
      v31 = v40;
      sub_275A9ED50(v17, v40, type metadata accessor for DeleteDaemonStateRequest);
      sub_275A9ED50(v31, v24, type metadata accessor for DeleteDaemonStateRequest);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_275A9FCE4(v17, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_275ADD244(&qword_281410C10, type metadata accessor for DeleteDaemonStateRequest, &protocol conformance descriptor for DeleteDaemonStateRequest);
  v33 = v43;
  sub_275AE5404();
  if (v33)
  {
    return sub_275A5FE04(v24, &qword_280A25718, &unk_275AEEAF0);
  }

  sub_275A5F510(v24, v32, &qword_280A25718, &unk_275AEEAF0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_275A5FE04(v24, &qword_280A25718, &unk_275AEEAF0);
    return sub_275A5FE04(v32, &qword_280A25718, &unk_275AEEAF0);
  }

  else
  {
    v35 = v39;
    sub_275A9ED50(v32, v39, type metadata accessor for DeleteDaemonStateRequest);
    if (v28 != 1)
    {
      sub_275AE5354();
    }

    sub_275A5FE04(v24, &qword_280A25718, &unk_275AEEAF0);
    v36 = v38;
    sub_275A5FE04(v38, &qword_280A24C20, &qword_275AEAC70);
    sub_275A9ED50(v35, v36, type metadata accessor for DeleteDaemonStateRequest);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t SubscriptionClientRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C20, &qword_275AEAC70);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v13 - v9;
  sub_275A5F510(v3, &v13 - v9, &qword_280A24C20, &qword_275AEAC70);
  v11 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) != 1)
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        sub_275ACA3D8(v3, a1, a2, a3);
        goto LABEL_27;
      case 2u:
        sub_275ACA610(v3, a1, a2, a3);
        goto LABEL_27;
      case 3u:
        sub_275ACA848(v3, a1, a2, a3);
        goto LABEL_27;
      case 4u:
        sub_275ACAA80(v3, a1, a2, a3);
        goto LABEL_27;
      case 5u:
        sub_275ACACB8(v3, a1, a2, a3);
        goto LABEL_27;
      case 6u:
        sub_275ACAEF0(v3, a1, a2, a3);
        goto LABEL_27;
      case 7u:
        sub_275ACB128(v3, a1, a2, a3);
        goto LABEL_27;
      case 8u:
        sub_275ACB360(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_9;
        }

        return sub_275A9FCE4(v10, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
      case 9u:
        sub_275ACB598(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_9;
        }

        return sub_275A9FCE4(v10, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
      case 0xAu:
        sub_275ACB7D0(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_9;
        }

        return sub_275A9FCE4(v10, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
      case 0xBu:
        sub_275ACBA08(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_9;
        }

        return sub_275A9FCE4(v10, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
      case 0xCu:
        sub_275ACBC40(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_9;
        }

        return sub_275A9FCE4(v10, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
      case 0xDu:
        sub_275ACBE78(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_9;
        }

        return sub_275A9FCE4(v10, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
      case 0xEu:
        sub_275ACC0B0(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_9;
        }

        return sub_275A9FCE4(v10, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
      case 0xFu:
        sub_275ACC2E8(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_9;
        }

        return sub_275A9FCE4(v10, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
      case 0x10u:
        sub_275ACC520(v3, a1, a2, a3);
        if (v4)
        {
          return sub_275A9FCE4(v10, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
        }

LABEL_9:
        sub_275A9FCE4(v10, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
        break;
      default:
        sub_275ACA1A4(v3, a1, a2, a3);
LABEL_27:
        result = sub_275A9FCE4(v10, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
        if (!v4)
        {
          break;
        }

        return result;
    }
  }

  type metadata accessor for SubscriptionClientRequest(0);
  return sub_275AE5284();
}

uint64_t sub_275ACA1A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C20, &qword_275AEAC70);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for PingRequest(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275A5F510(a1, v7, &qword_280A24C20, &qword_275AEAC70);
  v11 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_275A5FE04(v7, &qword_280A24C20, &qword_275AEAC70);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_275A9ED50(v7, v10, type metadata accessor for PingRequest);
    sub_275ADD244(&qword_280A25088, type metadata accessor for PingRequest, &protocol conformance descriptor for PingRequest);
    sub_275AE5534();
    return sub_275A9FCE4(v10, type metadata accessor for PingRequest);
  }

  result = sub_275A9FCE4(v7, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_275ACA3D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C20, &qword_275AEAC70);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for NewOfferRequest(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275A5F510(a1, v7, &qword_280A24C20, &qword_275AEAC70);
  v11 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_275A5FE04(v7, &qword_280A24C20, &qword_275AEAC70);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_275A9ED50(v7, v10, type metadata accessor for NewOfferRequest);
    sub_275ADD244(&qword_280A25058, type metadata accessor for NewOfferRequest, &protocol conformance descriptor for NewOfferRequest);
    sub_275AE5534();
    return sub_275A9FCE4(v10, type metadata accessor for NewOfferRequest);
  }

  result = sub_275A9FCE4(v7, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_275ACA610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C20, &qword_275AEAC70);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for FeaturesRequest(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275A5F510(a1, v7, &qword_280A24C20, &qword_275AEAC70);
  v11 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_275A5FE04(v7, &qword_280A24C20, &qword_275AEAC70);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_275A9ED50(v7, v10, type metadata accessor for FeaturesRequest);
    sub_275ADD244(&qword_280A250B8, type metadata accessor for FeaturesRequest, &protocol conformance descriptor for FeaturesRequest);
    sub_275AE5534();
    return sub_275A9FCE4(v10, type metadata accessor for FeaturesRequest);
  }

  result = sub_275A9FCE4(v7, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_275ACA848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C20, &qword_275AEAC70);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  StateRequest = type metadata accessor for GetStateRequest(0);
  MEMORY[0x28223BE20](StateRequest);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275A5F510(a1, v7, &qword_280A24C20, &qword_275AEAC70);
  v11 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_275A5FE04(v7, &qword_280A24C20, &qword_275AEAC70);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_275A9ED50(v7, v10, type metadata accessor for GetStateRequest);
    sub_275ADD244(&qword_280A250F8, type metadata accessor for GetStateRequest, &protocol conformance descriptor for GetStateRequest);
    sub_275AE5534();
    return sub_275A9FCE4(v10, type metadata accessor for GetStateRequest);
  }

  result = sub_275A9FCE4(v7, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_275ACAA80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C20, &qword_275AEAC70);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for DataRequest(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275A5F510(a1, v7, &qword_280A24C20, &qword_275AEAC70);
  v11 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_275A5FE04(v7, &qword_280A24C20, &qword_275AEAC70);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_275A9ED50(v7, v10, type metadata accessor for DataRequest);
    sub_275ADD244(&qword_280A25128, type metadata accessor for DataRequest, &protocol conformance descriptor for DataRequest);
    sub_275AE5534();
    return sub_275A9FCE4(v10, type metadata accessor for DataRequest);
  }

  result = sub_275A9FCE4(v7, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_275ACACB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C20, &qword_275AEAC70);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for NotificationPendingRequest(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275A5F510(a1, v7, &qword_280A24C20, &qword_275AEAC70);
  v11 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_275A5FE04(v7, &qword_280A24C20, &qword_275AEAC70);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_275A9ED50(v7, v10, type metadata accessor for NotificationPendingRequest);
    sub_275ADD244(&qword_280A25158, type metadata accessor for NotificationPendingRequest, &protocol conformance descriptor for NotificationPendingRequest);
    sub_275AE5534();
    return sub_275A9FCE4(v10, type metadata accessor for NotificationPendingRequest);
  }

  result = sub_275A9FCE4(v7, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_275ACAEF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C20, &qword_275AEAC70);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for SetCliActivityRequest(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275A5F510(a1, v7, &qword_280A24C20, &qword_275AEAC70);
  v11 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_275A5FE04(v7, &qword_280A24C20, &qword_275AEAC70);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 6)
  {
    sub_275A9ED50(v7, v10, type metadata accessor for SetCliActivityRequest);
    sub_275ADD244(&qword_280A251B8, type metadata accessor for SetCliActivityRequest, &protocol conformance descriptor for SetCliActivityRequest);
    sub_275AE5534();
    return sub_275A9FCE4(v10, type metadata accessor for SetCliActivityRequest);
  }

  result = sub_275A9FCE4(v7, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_275ACB128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C20, &qword_275AEAC70);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for DisplayDelayedOfferRequest(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275A5F510(a1, v7, &qword_280A24C20, &qword_275AEAC70);
  v11 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_275A5FE04(v7, &qword_280A24C20, &qword_275AEAC70);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 7)
  {
    sub_275A9ED50(v7, v10, type metadata accessor for DisplayDelayedOfferRequest);
    sub_275ADD244(&qword_280A25248, type metadata accessor for DisplayDelayedOfferRequest, &protocol conformance descriptor for DisplayDelayedOfferRequest);
    sub_275AE5534();
    return sub_275A9FCE4(v10, type metadata accessor for DisplayDelayedOfferRequest);
  }

  result = sub_275A9FCE4(v7, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_275ACB360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C20, &qword_275AEAC70);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ActivityStatusRequest(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275A5F510(a1, v7, &qword_280A24C20, &qword_275AEAC70);
  v11 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_275A5FE04(v7, &qword_280A24C20, &qword_275AEAC70);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 8)
  {
    sub_275A9ED50(v7, v10, type metadata accessor for ActivityStatusRequest);
    sub_275ADD244(&qword_280A25278, type metadata accessor for ActivityStatusRequest, &protocol conformance descriptor for ActivityStatusRequest);
    sub_275AE5534();
    return sub_275A9FCE4(v10, type metadata accessor for ActivityStatusRequest);
  }

  result = sub_275A9FCE4(v7, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_275ACB598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C20, &qword_275AEAC70);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ActivityClearRequest(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275A5F510(a1, v7, &qword_280A24C20, &qword_275AEAC70);
  v11 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_275A5FE04(v7, &qword_280A24C20, &qword_275AEAC70);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 9)
  {
    sub_275A9ED50(v7, v10, type metadata accessor for ActivityClearRequest);
    sub_275ADD244(&qword_280A252D0, type metadata accessor for ActivityClearRequest, &protocol conformance descriptor for ActivityClearRequest);
    sub_275AE5534();
    return sub_275A9FCE4(v10, type metadata accessor for ActivityClearRequest);
  }

  result = sub_275A9FCE4(v7, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_275ACB7D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C20, &qword_275AEAC70);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  BiomeStreamRequest = type metadata accessor for GetBiomeStreamRequest(0);
  MEMORY[0x28223BE20](BiomeStreamRequest);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275A5F510(a1, v7, &qword_280A24C20, &qword_275AEAC70);
  v11 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_275A5FE04(v7, &qword_280A24C20, &qword_275AEAC70);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 10)
  {
    sub_275A9ED50(v7, v10, type metadata accessor for GetBiomeStreamRequest);
    sub_275ADD244(&qword_280A25300, type metadata accessor for GetBiomeStreamRequest, &protocol conformance descriptor for GetBiomeStreamRequest);
    sub_275AE5534();
    return sub_275A9FCE4(v10, type metadata accessor for GetBiomeStreamRequest);
  }

  result = sub_275A9FCE4(v7, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_275ACBA08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C20, &qword_275AEAC70);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for NotificationStateWriteRequest(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275A5F510(a1, v7, &qword_280A24C20, &qword_275AEAC70);
  v11 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_275A5FE04(v7, &qword_280A24C20, &qword_275AEAC70);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 11)
  {
    sub_275A9ED50(v7, v10, type metadata accessor for NotificationStateWriteRequest);
    sub_275ADD244(&qword_280A25188, type metadata accessor for NotificationStateWriteRequest, &protocol conformance descriptor for NotificationStateWriteRequest);
    sub_275AE5534();
    return sub_275A9FCE4(v10, type metadata accessor for NotificationStateWriteRequest);
  }

  result = sub_275A9FCE4(v7, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_275ACBC40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C20, &qword_275AEAC70);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ActivityHistoryRequest(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275A5F510(a1, v7, &qword_280A24C20, &qword_275AEAC70);
  v11 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_275A5FE04(v7, &qword_280A24C20, &qword_275AEAC70);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 12)
  {
    sub_275A9ED50(v7, v10, type metadata accessor for ActivityHistoryRequest);
    sub_275ADD244(&qword_280A25330, type metadata accessor for ActivityHistoryRequest, &protocol conformance descriptor for ActivityHistoryRequest);
    sub_275AE5534();
    return sub_275A9FCE4(v10, type metadata accessor for ActivityHistoryRequest);
  }

  result = sub_275A9FCE4(v7, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_275ACBE78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C20, &qword_275AEAC70);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for MobileAssetDownloadRequest(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275A5F510(a1, v7, &qword_280A24C20, &qword_275AEAC70);
  v11 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_275A5FE04(v7, &qword_280A24C20, &qword_275AEAC70);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 13)
  {
    sub_275A9ED50(v7, v10, type metadata accessor for MobileAssetDownloadRequest);
    sub_275ADD244(&qword_280A251E8, type metadata accessor for MobileAssetDownloadRequest, &protocol conformance descriptor for MobileAssetDownloadRequest);
    sub_275AE5534();
    return sub_275A9FCE4(v10, type metadata accessor for MobileAssetDownloadRequest);
  }

  result = sub_275A9FCE4(v7, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_275ACC0B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C20, &qword_275AEAC70);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ShadowEvaluationRequest(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275A5F510(a1, v7, &qword_280A24C20, &qword_275AEAC70);
  v11 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_275A5FE04(v7, &qword_280A24C20, &qword_275AEAC70);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 14)
  {
    sub_275A9ED50(v7, v10, type metadata accessor for ShadowEvaluationRequest);
    sub_275ADD244(&qword_280A25360, type metadata accessor for ShadowEvaluationRequest, &protocol conformance descriptor for ShadowEvaluationRequest);
    sub_275AE5534();
    return sub_275A9FCE4(v10, type metadata accessor for ShadowEvaluationRequest);
  }

  result = sub_275A9FCE4(v7, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_275ACC2E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C20, &qword_275AEAC70);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  VersionRequest = type metadata accessor for MobileAssetGetVersionRequest(0);
  MEMORY[0x28223BE20](VersionRequest);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275A5F510(a1, v7, &qword_280A24C20, &qword_275AEAC70);
  v11 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_275A5FE04(v7, &qword_280A24C20, &qword_275AEAC70);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 15)
  {
    sub_275A9ED50(v7, v10, type metadata accessor for MobileAssetGetVersionRequest);
    sub_275ADD244(&qword_280A25218, type metadata accessor for MobileAssetGetVersionRequest, &protocol conformance descriptor for MobileAssetGetVersionRequest);
    sub_275AE5534();
    return sub_275A9FCE4(v10, type metadata accessor for MobileAssetGetVersionRequest);
  }

  result = sub_275A9FCE4(v7, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_275ACC520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C20, &qword_275AEAC70);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for DeleteDaemonStateRequest(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275A5F510(a1, v7, &qword_280A24C20, &qword_275AEAC70);
  v11 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_275A5FE04(v7, &qword_280A24C20, &qword_275AEAC70);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 16)
  {
    sub_275A9ED50(v7, v10, type metadata accessor for DeleteDaemonStateRequest);
    sub_275ADD244(&qword_281410C10, type metadata accessor for DeleteDaemonStateRequest, &protocol conformance descriptor for DeleteDaemonStateRequest);
    sub_275AE5534();
    return sub_275A9FCE4(v10, type metadata accessor for DeleteDaemonStateRequest);
  }

  result = sub_275A9FCE4(v7, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_275ACC808(uint64_t a1, uint64_t a2)
{
  v4 = sub_275ADD244(&qword_280A254B0, type metadata accessor for SubscriptionClientRequest, &protocol conformance descriptor for SubscriptionClientRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_275ACC8A8(uint64_t a1)
{
  sub_275ADD244(qword_281411C70, type metadata accessor for SubscriptionClientRequest, &protocol conformance descriptor for SubscriptionClientRequest);

  return sub_275AE5464();
}

uint64_t sub_275ACC914(uint64_t a1, uint64_t a2)
{
  sub_275ADD244(qword_281411C70, type metadata accessor for SubscriptionClientRequest, &protocol conformance descriptor for SubscriptionClientRequest);

  return sub_275AE5474();
}

uint64_t sub_275ACC9BC()
{
  v0 = sub_275AE5574();
  __swift_allocate_value_buffer(v0, static SubscriptionClientResponse._protobuf_nameMap);
  __swift_project_value_buffer(v0, static SubscriptionClientResponse._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24640, "ؠ");
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24648, &qword_275AEEA60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_275AEA810;
  v4 = v41 + v3;
  v5 = v41 + v3 + v1[14];
  *(v41 + v3) = 1;
  *v5 = "error";
  *(v5 + 8) = 5;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_275AE5544();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v41 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "ping";
  *(v9 + 8) = 4;
  *(v9 + 16) = 2;
  v8();
  v10 = (v41 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "newOffer";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v8();
  v12 = (v41 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "features";
  *(v13 + 1) = 8;
  v13[16] = 2;
  v8();
  v14 = (v41 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "getState";
  *(v15 + 1) = 8;
  v15[16] = 2;
  v8();
  v16 = (v41 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "Data";
  *(v17 + 1) = 4;
  v17[16] = 2;
  v8();
  v18 = (v41 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "notificationPending";
  *(v19 + 1) = 19;
  v19[16] = 2;
  v8();
  v20 = (v41 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 9;
  *v21 = "setCliActivity";
  *(v21 + 1) = 14;
  v21[16] = 2;
  v8();
  v22 = v41 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 11;
  *v22 = "displayDelayedOffer";
  *(v22 + 8) = 19;
  *(v22 + 16) = 2;
  v8();
  v23 = (v41 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 12;
  *v24 = "activityStatus";
  *(v24 + 1) = 14;
  v24[16] = 2;
  v8();
  v25 = (v41 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 13;
  *v26 = "activityClear";
  *(v26 + 1) = 13;
  v26[16] = 2;
  v8();
  v27 = (v41 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 14;
  *v28 = "getBiomeStream";
  *(v28 + 1) = 14;
  v28[16] = 2;
  v8();
  v29 = (v41 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 15;
  *v30 = "notificationStateWrite";
  *(v30 + 1) = 22;
  v30[16] = 2;
  v8();
  v31 = (v41 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 16;
  *v32 = "activityHistory";
  *(v32 + 1) = 15;
  v32[16] = 2;
  v8();
  v33 = (v41 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 17;
  *v34 = "mobileAssetDownload";
  *(v34 + 1) = 19;
  v34[16] = 2;
  v8();
  v35 = (v41 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 19;
  *v36 = "shadowEvaluation";
  *(v36 + 1) = 16;
  v36[16] = 2;
  v8();
  v37 = v41 + v3 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 20;
  *v37 = "mobileAssetGetVersion";
  *(v37 + 8) = 21;
  *(v37 + 16) = 2;
  v8();
  v38 = (v41 + v3 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 21;
  *v39 = "deleteDaemonState";
  *(v39 + 1) = 17;
  v39[16] = 2;
  v8();
  return sub_275AE5554();
}

uint64_t SubscriptionClientResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_275AE5344();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_275ACD214(v5, a1, a2, a3);
        break;
      case 2:
        sub_275ACD7C4(v5, a1, a2, a3);
        break;
      case 3:
        sub_275ACDD80(v5, a1, a2, a3);
        break;
      case 4:
        sub_275ACE33C(v5, a1, a2, a3);
        break;
      case 5:
        sub_275ACE8F8(v5, a1, a2, a3);
        break;
      case 6:
        sub_275ACEEB4(v5, a1, a2, a3);
        break;
      case 7:
        sub_275ACF470(v5, a1, a2, a3);
        break;
      case 9:
        sub_275ACFA2C(v5, a1, a2, a3);
        break;
      case 11:
        sub_275ACFFE8(v5, a1, a2, a3);
        break;
      case 12:
        sub_275AD05A4(v5, a1, a2, a3);
        break;
      case 13:
        sub_275AD0B60(v5, a1, a2, a3);
        break;
      case 14:
        sub_275AD111C(v5, a1, a2, a3);
        break;
      case 15:
        sub_275AD16D8(v5, a1, a2, a3);
        break;
      case 16:
        sub_275AD1C94(v5, a1, a2, a3);
        break;
      case 17:
        sub_275AD2250(v5, a1, a2, a3);
        break;
      case 19:
        sub_275AD280C(v5, a1, a2, a3);
        break;
      case 20:
        sub_275AD2DC8(v5, a1, a2, a3);
        break;
      case 21:
        sub_275AD3384(v5, a1, a2, a3);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_275ACD214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ErrorResponse(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v39 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by");
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A25600, &qword_275AEE9C8);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_275A5F510(a1, v12, &qword_280A24E60, "\by");
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_275A5FE04(v12, &qword_280A24E60, "\by");
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_275A9ED50(v12, v19, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
    sub_275A9ED50(v19, v17, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_275A9FCE4(v17, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
      v29 = v44;
    }

    else
    {
      sub_275A5FE04(v24, &qword_280A25600, &qword_275AEE9C8);
      v31 = v39;
      sub_275A9ED50(v17, v39, type metadata accessor for ErrorResponse);
      sub_275A9ED50(v31, v24, type metadata accessor for ErrorResponse);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }
  }

  v32 = v42;
  sub_275ADD244(&qword_280A24E58, type metadata accessor for ErrorResponse, &protocol conformance descriptor for ErrorResponse);
  v33 = v43;
  sub_275AE5404();
  if (v33)
  {
    return sub_275A5FE04(v24, &qword_280A25600, &qword_275AEE9C8);
  }

  sub_275A5F510(v24, v32, &qword_280A25600, &qword_275AEE9C8);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_275A5FE04(v24, &qword_280A25600, &qword_275AEE9C8);
    return sub_275A5FE04(v32, &qword_280A25600, &qword_275AEE9C8);
  }

  else
  {
    v35 = v40;
    sub_275A9ED50(v32, v40, type metadata accessor for ErrorResponse);
    if (v28 != 1)
    {
      sub_275AE5354();
    }

    sub_275A5FE04(v24, &qword_280A25600, &qword_275AEE9C8);
    v36 = v38;
    sub_275A5FE04(v38, &qword_280A24E60, "\by");
    sub_275A9ED50(v35, v36, type metadata accessor for ErrorResponse);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_275ACD7C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for PingResponse(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by");
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A25608, &qword_275AEE9D0);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_275A5F510(a1, v12, &qword_280A24E60, "\by");
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_275A5FE04(v12, &qword_280A24E60, "\by");
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_275A9ED50(v12, v19, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
    sub_275A9ED50(v19, v17, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_275A5FE04(v24, &qword_280A25608, &qword_275AEE9D0);
      v31 = v40;
      sub_275A9ED50(v17, v40, type metadata accessor for PingResponse);
      sub_275A9ED50(v31, v24, type metadata accessor for PingResponse);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_275A9FCE4(v17, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_275ADD244(&qword_280A250A0, type metadata accessor for PingResponse, &protocol conformance descriptor for PingResponse);
  v33 = v43;
  sub_275AE5404();
  if (v33)
  {
    return sub_275A5FE04(v24, &qword_280A25608, &qword_275AEE9D0);
  }

  sub_275A5F510(v24, v32, &qword_280A25608, &qword_275AEE9D0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_275A5FE04(v24, &qword_280A25608, &qword_275AEE9D0);
    return sub_275A5FE04(v32, &qword_280A25608, &qword_275AEE9D0);
  }

  else
  {
    v35 = v39;
    sub_275A9ED50(v32, v39, type metadata accessor for PingResponse);
    if (v28 != 1)
    {
      sub_275AE5354();
    }

    sub_275A5FE04(v24, &qword_280A25608, &qword_275AEE9D0);
    v36 = v38;
    sub_275A5FE04(v38, &qword_280A24E60, "\by");
    sub_275A9ED50(v35, v36, type metadata accessor for PingResponse);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_275ACDD80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for NewOfferResponse(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by");
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A25610, &qword_275AEE9D8);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_275A5F510(a1, v12, &qword_280A24E60, "\by");
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_275A5FE04(v12, &qword_280A24E60, "\by");
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_275A9ED50(v12, v19, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
    sub_275A9ED50(v19, v17, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_275A5FE04(v24, &qword_280A25610, &qword_275AEE9D8);
      v31 = v40;
      sub_275A9ED50(v17, v40, type metadata accessor for NewOfferResponse);
      sub_275A9ED50(v31, v24, type metadata accessor for NewOfferResponse);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_275A9FCE4(v17, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_275ADD244(&qword_280A25070, type metadata accessor for NewOfferResponse, &protocol conformance descriptor for NewOfferResponse);
  v33 = v43;
  sub_275AE5404();
  if (v33)
  {
    return sub_275A5FE04(v24, &qword_280A25610, &qword_275AEE9D8);
  }

  sub_275A5F510(v24, v32, &qword_280A25610, &qword_275AEE9D8);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_275A5FE04(v24, &qword_280A25610, &qword_275AEE9D8);
    return sub_275A5FE04(v32, &qword_280A25610, &qword_275AEE9D8);
  }

  else
  {
    v35 = v39;
    sub_275A9ED50(v32, v39, type metadata accessor for NewOfferResponse);
    if (v28 != 1)
    {
      sub_275AE5354();
    }

    sub_275A5FE04(v24, &qword_280A25610, &qword_275AEE9D8);
    v36 = v38;
    sub_275A5FE04(v38, &qword_280A24E60, "\by");
    sub_275A9ED50(v35, v36, type metadata accessor for NewOfferResponse);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_275ACE33C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for FeaturesResponse(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by");
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A25618, &qword_275AEE9E0);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_275A5F510(a1, v12, &qword_280A24E60, "\by");
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_275A5FE04(v12, &qword_280A24E60, "\by");
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_275A9ED50(v12, v19, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
    sub_275A9ED50(v19, v17, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_275A5FE04(v24, &qword_280A25618, &qword_275AEE9E0);
      v31 = v40;
      sub_275A9ED50(v17, v40, type metadata accessor for FeaturesResponse);
      sub_275A9ED50(v31, v24, type metadata accessor for FeaturesResponse);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_275A9FCE4(v17, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_275ADD244(&qword_280A250E0, type metadata accessor for FeaturesResponse, &protocol conformance descriptor for FeaturesResponse);
  v33 = v43;
  sub_275AE5404();
  if (v33)
  {
    return sub_275A5FE04(v24, &qword_280A25618, &qword_275AEE9E0);
  }

  sub_275A5F510(v24, v32, &qword_280A25618, &qword_275AEE9E0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_275A5FE04(v24, &qword_280A25618, &qword_275AEE9E0);
    return sub_275A5FE04(v32, &qword_280A25618, &qword_275AEE9E0);
  }

  else
  {
    v35 = v39;
    sub_275A9ED50(v32, v39, type metadata accessor for FeaturesResponse);
    if (v28 != 1)
    {
      sub_275AE5354();
    }

    sub_275A5FE04(v24, &qword_280A25618, &qword_275AEE9E0);
    v36 = v38;
    sub_275A5FE04(v38, &qword_280A24E60, "\by");
    sub_275A9ED50(v35, v36, type metadata accessor for FeaturesResponse);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_275ACE8F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  StateResponse = type metadata accessor for GetStateResponse(0);
  v6 = *(StateResponse - 8);
  v7 = MEMORY[0x28223BE20](StateResponse);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by");
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A25620, &qword_275AEE9E8);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = StateResponse;
  v26 = StateResponse;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_275A5F510(a1, v12, &qword_280A24E60, "\by");
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_275A5FE04(v12, &qword_280A24E60, "\by");
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_275A9ED50(v12, v19, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
    sub_275A9ED50(v19, v17, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_275A5FE04(v24, &qword_280A25620, &qword_275AEE9E8);
      v31 = v40;
      sub_275A9ED50(v17, v40, type metadata accessor for GetStateResponse);
      sub_275A9ED50(v31, v24, type metadata accessor for GetStateResponse);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_275A9FCE4(v17, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_275ADD244(&qword_280A25110, type metadata accessor for GetStateResponse, &protocol conformance descriptor for GetStateResponse);
  v33 = v43;
  sub_275AE5404();
  if (v33)
  {
    return sub_275A5FE04(v24, &qword_280A25620, &qword_275AEE9E8);
  }

  sub_275A5F510(v24, v32, &qword_280A25620, &qword_275AEE9E8);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_275A5FE04(v24, &qword_280A25620, &qword_275AEE9E8);
    return sub_275A5FE04(v32, &qword_280A25620, &qword_275AEE9E8);
  }

  else
  {
    v35 = v39;
    sub_275A9ED50(v32, v39, type metadata accessor for GetStateResponse);
    if (v28 != 1)
    {
      sub_275AE5354();
    }

    sub_275A5FE04(v24, &qword_280A25620, &qword_275AEE9E8);
    v36 = v38;
    sub_275A5FE04(v38, &qword_280A24E60, "\by");
    sub_275A9ED50(v35, v36, type metadata accessor for GetStateResponse);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_275ACEEB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for DataResponse(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by");
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A25628, &qword_275AEE9F0);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_275A5F510(a1, v12, &qword_280A24E60, "\by");
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_275A5FE04(v12, &qword_280A24E60, "\by");
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_275A9ED50(v12, v19, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
    sub_275A9ED50(v19, v17, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_275A5FE04(v24, &qword_280A25628, &qword_275AEE9F0);
      v31 = v40;
      sub_275A9ED50(v17, v40, type metadata accessor for DataResponse);
      sub_275A9ED50(v31, v24, type metadata accessor for DataResponse);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_275A9FCE4(v17, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_275ADD244(&qword_280A25140, type metadata accessor for DataResponse, &protocol conformance descriptor for DataResponse);
  v33 = v43;
  sub_275AE5404();
  if (v33)
  {
    return sub_275A5FE04(v24, &qword_280A25628, &qword_275AEE9F0);
  }

  sub_275A5F510(v24, v32, &qword_280A25628, &qword_275AEE9F0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_275A5FE04(v24, &qword_280A25628, &qword_275AEE9F0);
    return sub_275A5FE04(v32, &qword_280A25628, &qword_275AEE9F0);
  }

  else
  {
    v35 = v39;
    sub_275A9ED50(v32, v39, type metadata accessor for DataResponse);
    if (v28 != 1)
    {
      sub_275AE5354();
    }

    sub_275A5FE04(v24, &qword_280A25628, &qword_275AEE9F0);
    v36 = v38;
    sub_275A5FE04(v38, &qword_280A24E60, "\by");
    sub_275A9ED50(v35, v36, type metadata accessor for DataResponse);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_275ACF470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for NotificationPendingResponse(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by");
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A25630, &qword_275AEE9F8);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_275A5F510(a1, v12, &qword_280A24E60, "\by");
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_275A5FE04(v12, &qword_280A24E60, "\by");
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_275A9ED50(v12, v19, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
    sub_275A9ED50(v19, v17, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_275A5FE04(v24, &qword_280A25630, &qword_275AEE9F8);
      v31 = v40;
      sub_275A9ED50(v17, v40, type metadata accessor for NotificationPendingResponse);
      sub_275A9ED50(v31, v24, type metadata accessor for NotificationPendingResponse);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_275A9FCE4(v17, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_275ADD244(&qword_280A25170, type metadata accessor for NotificationPendingResponse, &protocol conformance descriptor for NotificationPendingResponse);
  v33 = v43;
  sub_275AE5404();
  if (v33)
  {
    return sub_275A5FE04(v24, &qword_280A25630, &qword_275AEE9F8);
  }

  sub_275A5F510(v24, v32, &qword_280A25630, &qword_275AEE9F8);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_275A5FE04(v24, &qword_280A25630, &qword_275AEE9F8);
    return sub_275A5FE04(v32, &qword_280A25630, &qword_275AEE9F8);
  }

  else
  {
    v35 = v39;
    sub_275A9ED50(v32, v39, type metadata accessor for NotificationPendingResponse);
    if (v28 != 1)
    {
      sub_275AE5354();
    }

    sub_275A5FE04(v24, &qword_280A25630, &qword_275AEE9F8);
    v36 = v38;
    sub_275A5FE04(v38, &qword_280A24E60, "\by");
    sub_275A9ED50(v35, v36, type metadata accessor for NotificationPendingResponse);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_275ACFA2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for SetCliActivityResponse(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by");
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A25638, &qword_275AEEA00);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_275A5F510(a1, v12, &qword_280A24E60, "\by");
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_275A5FE04(v12, &qword_280A24E60, "\by");
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_275A9ED50(v12, v19, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
    sub_275A9ED50(v19, v17, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_275A5FE04(v24, &qword_280A25638, &qword_275AEEA00);
      v31 = v40;
      sub_275A9ED50(v17, v40, type metadata accessor for SetCliActivityResponse);
      sub_275A9ED50(v31, v24, type metadata accessor for SetCliActivityResponse);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_275A9FCE4(v17, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_275ADD244(&qword_280A251D0, type metadata accessor for SetCliActivityResponse, &protocol conformance descriptor for SetCliActivityResponse);
  v33 = v43;
  sub_275AE5404();
  if (v33)
  {
    return sub_275A5FE04(v24, &qword_280A25638, &qword_275AEEA00);
  }

  sub_275A5F510(v24, v32, &qword_280A25638, &qword_275AEEA00);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_275A5FE04(v24, &qword_280A25638, &qword_275AEEA00);
    return sub_275A5FE04(v32, &qword_280A25638, &qword_275AEEA00);
  }

  else
  {
    v35 = v39;
    sub_275A9ED50(v32, v39, type metadata accessor for SetCliActivityResponse);
    if (v28 != 1)
    {
      sub_275AE5354();
    }

    sub_275A5FE04(v24, &qword_280A25638, &qword_275AEEA00);
    v36 = v38;
    sub_275A5FE04(v38, &qword_280A24E60, "\by");
    sub_275A9ED50(v35, v36, type metadata accessor for SetCliActivityResponse);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_275ACFFE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for DisplayDelayedOfferResponse(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by");
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A25640, &qword_275AEEA08);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_275A5F510(a1, v12, &qword_280A24E60, "\by");
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_275A5FE04(v12, &qword_280A24E60, "\by");
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_275A9ED50(v12, v19, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
    sub_275A9ED50(v19, v17, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_275A5FE04(v24, &qword_280A25640, &qword_275AEEA08);
      v31 = v40;
      sub_275A9ED50(v17, v40, type metadata accessor for DisplayDelayedOfferResponse);
      sub_275A9ED50(v31, v24, type metadata accessor for DisplayDelayedOfferResponse);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_275A9FCE4(v17, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_275ADD244(&qword_280A25260, type metadata accessor for DisplayDelayedOfferResponse, &protocol conformance descriptor for DisplayDelayedOfferResponse);
  v33 = v43;
  sub_275AE5404();
  if (v33)
  {
    return sub_275A5FE04(v24, &qword_280A25640, &qword_275AEEA08);
  }

  sub_275A5F510(v24, v32, &qword_280A25640, &qword_275AEEA08);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_275A5FE04(v24, &qword_280A25640, &qword_275AEEA08);
    return sub_275A5FE04(v32, &qword_280A25640, &qword_275AEEA08);
  }

  else
  {
    v35 = v39;
    sub_275A9ED50(v32, v39, type metadata accessor for DisplayDelayedOfferResponse);
    if (v28 != 1)
    {
      sub_275AE5354();
    }

    sub_275A5FE04(v24, &qword_280A25640, &qword_275AEEA08);
    v36 = v38;
    sub_275A5FE04(v38, &qword_280A24E60, "\by");
    sub_275A9ED50(v35, v36, type metadata accessor for DisplayDelayedOfferResponse);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_275AD05A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ActivityStatusResponse(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by");
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A25648, &qword_275AEEA10);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_275A5F510(a1, v12, &qword_280A24E60, "\by");
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_275A5FE04(v12, &qword_280A24E60, "\by");
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_275A9ED50(v12, v19, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
    sub_275A9ED50(v19, v17, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      sub_275A5FE04(v24, &qword_280A25648, &qword_275AEEA10);
      v31 = v40;
      sub_275A9ED50(v17, v40, type metadata accessor for ActivityStatusResponse);
      sub_275A9ED50(v31, v24, type metadata accessor for ActivityStatusResponse);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_275A9FCE4(v17, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_275ADD244(&qword_280A25290, type metadata accessor for ActivityStatusResponse, &protocol conformance descriptor for ActivityStatusResponse);
  v33 = v43;
  sub_275AE5404();
  if (v33)
  {
    return sub_275A5FE04(v24, &qword_280A25648, &qword_275AEEA10);
  }

  sub_275A5F510(v24, v32, &qword_280A25648, &qword_275AEEA10);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_275A5FE04(v24, &qword_280A25648, &qword_275AEEA10);
    return sub_275A5FE04(v32, &qword_280A25648, &qword_275AEEA10);
  }

  else
  {
    v35 = v39;
    sub_275A9ED50(v32, v39, type metadata accessor for ActivityStatusResponse);
    if (v28 != 1)
    {
      sub_275AE5354();
    }

    sub_275A5FE04(v24, &qword_280A25648, &qword_275AEEA10);
    v36 = v38;
    sub_275A5FE04(v38, &qword_280A24E60, "\by");
    sub_275A9ED50(v35, v36, type metadata accessor for ActivityStatusResponse);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_275AD0B60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ActivityClearResponse(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by");
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A25650, &qword_275AEEA18);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_275A5F510(a1, v12, &qword_280A24E60, "\by");
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_275A5FE04(v12, &qword_280A24E60, "\by");
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_275A9ED50(v12, v19, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
    sub_275A9ED50(v19, v17, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      sub_275A5FE04(v24, &qword_280A25650, &qword_275AEEA18);
      v31 = v40;
      sub_275A9ED50(v17, v40, type metadata accessor for ActivityClearResponse);
      sub_275A9ED50(v31, v24, type metadata accessor for ActivityClearResponse);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_275A9FCE4(v17, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_275ADD244(&qword_280A252E8, type metadata accessor for ActivityClearResponse, &protocol conformance descriptor for ActivityClearResponse);
  v33 = v43;
  sub_275AE5404();
  if (v33)
  {
    return sub_275A5FE04(v24, &qword_280A25650, &qword_275AEEA18);
  }

  sub_275A5F510(v24, v32, &qword_280A25650, &qword_275AEEA18);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_275A5FE04(v24, &qword_280A25650, &qword_275AEEA18);
    return sub_275A5FE04(v32, &qword_280A25650, &qword_275AEEA18);
  }

  else
  {
    v35 = v39;
    sub_275A9ED50(v32, v39, type metadata accessor for ActivityClearResponse);
    if (v28 != 1)
    {
      sub_275AE5354();
    }

    sub_275A5FE04(v24, &qword_280A25650, &qword_275AEEA18);
    v36 = v38;
    sub_275A5FE04(v38, &qword_280A24E60, "\by");
    sub_275A9ED50(v35, v36, type metadata accessor for ActivityClearResponse);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_275AD111C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  BiomeStreamResponse = type metadata accessor for GetBiomeStreamResponse(0);
  v6 = *(BiomeStreamResponse - 8);
  v7 = MEMORY[0x28223BE20](BiomeStreamResponse);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by");
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A25658, &qword_275AEEA20);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = BiomeStreamResponse;
  v26 = BiomeStreamResponse;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_275A5F510(a1, v12, &qword_280A24E60, "\by");
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_275A5FE04(v12, &qword_280A24E60, "\by");
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_275A9ED50(v12, v19, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
    sub_275A9ED50(v19, v17, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      sub_275A5FE04(v24, &qword_280A25658, &qword_275AEEA20);
      v31 = v40;
      sub_275A9ED50(v17, v40, type metadata accessor for GetBiomeStreamResponse);
      sub_275A9ED50(v31, v24, type metadata accessor for GetBiomeStreamResponse);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_275A9FCE4(v17, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_275ADD244(&qword_280A25318, type metadata accessor for GetBiomeStreamResponse, &protocol conformance descriptor for GetBiomeStreamResponse);
  v33 = v43;
  sub_275AE5404();
  if (v33)
  {
    return sub_275A5FE04(v24, &qword_280A25658, &qword_275AEEA20);
  }

  sub_275A5F510(v24, v32, &qword_280A25658, &qword_275AEEA20);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_275A5FE04(v24, &qword_280A25658, &qword_275AEEA20);
    return sub_275A5FE04(v32, &qword_280A25658, &qword_275AEEA20);
  }

  else
  {
    v35 = v39;
    sub_275A9ED50(v32, v39, type metadata accessor for GetBiomeStreamResponse);
    if (v28 != 1)
    {
      sub_275AE5354();
    }

    sub_275A5FE04(v24, &qword_280A25658, &qword_275AEEA20);
    v36 = v38;
    sub_275A5FE04(v38, &qword_280A24E60, "\by");
    sub_275A9ED50(v35, v36, type metadata accessor for GetBiomeStreamResponse);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_275AD16D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for NotificationStateWriteResponse(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by");
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A25660, &qword_275AEEA28);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_275A5F510(a1, v12, &qword_280A24E60, "\by");
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_275A5FE04(v12, &qword_280A24E60, "\by");
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_275A9ED50(v12, v19, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
    sub_275A9ED50(v19, v17, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      sub_275A5FE04(v24, &qword_280A25660, &qword_275AEEA28);
      v31 = v40;
      sub_275A9ED50(v17, v40, type metadata accessor for NotificationStateWriteResponse);
      sub_275A9ED50(v31, v24, type metadata accessor for NotificationStateWriteResponse);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_275A9FCE4(v17, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_275ADD244(&qword_280A251A0, type metadata accessor for NotificationStateWriteResponse, &protocol conformance descriptor for NotificationStateWriteResponse);
  v33 = v43;
  sub_275AE5404();
  if (v33)
  {
    return sub_275A5FE04(v24, &qword_280A25660, &qword_275AEEA28);
  }

  sub_275A5F510(v24, v32, &qword_280A25660, &qword_275AEEA28);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_275A5FE04(v24, &qword_280A25660, &qword_275AEEA28);
    return sub_275A5FE04(v32, &qword_280A25660, &qword_275AEEA28);
  }

  else
  {
    v35 = v39;
    sub_275A9ED50(v32, v39, type metadata accessor for NotificationStateWriteResponse);
    if (v28 != 1)
    {
      sub_275AE5354();
    }

    sub_275A5FE04(v24, &qword_280A25660, &qword_275AEEA28);
    v36 = v38;
    sub_275A5FE04(v38, &qword_280A24E60, "\by");
    sub_275A9ED50(v35, v36, type metadata accessor for NotificationStateWriteResponse);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_275AD1C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ActivityHistoryResponse(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by");
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A25668, &qword_275AEEA30);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_275A5F510(a1, v12, &qword_280A24E60, "\by");
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_275A5FE04(v12, &qword_280A24E60, "\by");
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_275A9ED50(v12, v19, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
    sub_275A9ED50(v19, v17, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 13)
    {
      sub_275A5FE04(v24, &qword_280A25668, &qword_275AEEA30);
      v31 = v40;
      sub_275A9ED50(v17, v40, type metadata accessor for ActivityHistoryResponse);
      sub_275A9ED50(v31, v24, type metadata accessor for ActivityHistoryResponse);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_275A9FCE4(v17, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_275ADD244(&qword_280A25348, type metadata accessor for ActivityHistoryResponse, &protocol conformance descriptor for ActivityHistoryResponse);
  v33 = v43;
  sub_275AE5404();
  if (v33)
  {
    return sub_275A5FE04(v24, &qword_280A25668, &qword_275AEEA30);
  }

  sub_275A5F510(v24, v32, &qword_280A25668, &qword_275AEEA30);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_275A5FE04(v24, &qword_280A25668, &qword_275AEEA30);
    return sub_275A5FE04(v32, &qword_280A25668, &qword_275AEEA30);
  }

  else
  {
    v35 = v39;
    sub_275A9ED50(v32, v39, type metadata accessor for ActivityHistoryResponse);
    if (v28 != 1)
    {
      sub_275AE5354();
    }

    sub_275A5FE04(v24, &qword_280A25668, &qword_275AEEA30);
    v36 = v38;
    sub_275A5FE04(v38, &qword_280A24E60, "\by");
    sub_275A9ED50(v35, v36, type metadata accessor for ActivityHistoryResponse);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_275AD2250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for MobileAssetDownloadResponse(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by");
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A25670, &qword_275AEEA38);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_275A5F510(a1, v12, &qword_280A24E60, "\by");
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_275A5FE04(v12, &qword_280A24E60, "\by");
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_275A9ED50(v12, v19, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
    sub_275A9ED50(v19, v17, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 14)
    {
      sub_275A5FE04(v24, &qword_280A25670, &qword_275AEEA38);
      v31 = v40;
      sub_275A9ED50(v17, v40, type metadata accessor for MobileAssetDownloadResponse);
      sub_275A9ED50(v31, v24, type metadata accessor for MobileAssetDownloadResponse);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_275A9FCE4(v17, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_275ADD244(&qword_280A25200, type metadata accessor for MobileAssetDownloadResponse, &protocol conformance descriptor for MobileAssetDownloadResponse);
  v33 = v43;
  sub_275AE5404();
  if (v33)
  {
    return sub_275A5FE04(v24, &qword_280A25670, &qword_275AEEA38);
  }

  sub_275A5F510(v24, v32, &qword_280A25670, &qword_275AEEA38);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_275A5FE04(v24, &qword_280A25670, &qword_275AEEA38);
    return sub_275A5FE04(v32, &qword_280A25670, &qword_275AEEA38);
  }

  else
  {
    v35 = v39;
    sub_275A9ED50(v32, v39, type metadata accessor for MobileAssetDownloadResponse);
    if (v28 != 1)
    {
      sub_275AE5354();
    }

    sub_275A5FE04(v24, &qword_280A25670, &qword_275AEEA38);
    v36 = v38;
    sub_275A5FE04(v38, &qword_280A24E60, "\by");
    sub_275A9ED50(v35, v36, type metadata accessor for MobileAssetDownloadResponse);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_275AD280C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ShadowEvaluationResponse(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by");
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A25678, &qword_275AEEA40);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_275A5F510(a1, v12, &qword_280A24E60, "\by");
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_275A5FE04(v12, &qword_280A24E60, "\by");
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_275A9ED50(v12, v19, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
    sub_275A9ED50(v19, v17, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 15)
    {
      sub_275A5FE04(v24, &qword_280A25678, &qword_275AEEA40);
      v31 = v40;
      sub_275A9ED50(v17, v40, type metadata accessor for ShadowEvaluationResponse);
      sub_275A9ED50(v31, v24, type metadata accessor for ShadowEvaluationResponse);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_275A9FCE4(v17, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_275ADD244(&qword_280A25378, type metadata accessor for ShadowEvaluationResponse, &protocol conformance descriptor for ShadowEvaluationResponse);
  v33 = v43;
  sub_275AE5404();
  if (v33)
  {
    return sub_275A5FE04(v24, &qword_280A25678, &qword_275AEEA40);
  }

  sub_275A5F510(v24, v32, &qword_280A25678, &qword_275AEEA40);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_275A5FE04(v24, &qword_280A25678, &qword_275AEEA40);
    return sub_275A5FE04(v32, &qword_280A25678, &qword_275AEEA40);
  }

  else
  {
    v35 = v39;
    sub_275A9ED50(v32, v39, type metadata accessor for ShadowEvaluationResponse);
    if (v28 != 1)
    {
      sub_275AE5354();
    }

    sub_275A5FE04(v24, &qword_280A25678, &qword_275AEEA40);
    v36 = v38;
    sub_275A5FE04(v38, &qword_280A24E60, "\by");
    sub_275A9ED50(v35, v36, type metadata accessor for ShadowEvaluationResponse);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_275AD2DC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  VersionResponse = type metadata accessor for MobileAssetGetVersionResponse(0);
  v6 = *(VersionResponse - 8);
  v7 = MEMORY[0x28223BE20](VersionResponse);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by");
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A25680, &qword_275AEEA48);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = VersionResponse;
  v26 = VersionResponse;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_275A5F510(a1, v12, &qword_280A24E60, "\by");
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_275A5FE04(v12, &qword_280A24E60, "\by");
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_275A9ED50(v12, v19, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
    sub_275A9ED50(v19, v17, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 16)
    {
      sub_275A5FE04(v24, &qword_280A25680, &qword_275AEEA48);
      v31 = v40;
      sub_275A9ED50(v17, v40, type metadata accessor for MobileAssetGetVersionResponse);
      sub_275A9ED50(v31, v24, type metadata accessor for MobileAssetGetVersionResponse);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_275A9FCE4(v17, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_275ADD244(&qword_280A25230, type metadata accessor for MobileAssetGetVersionResponse, &protocol conformance descriptor for MobileAssetGetVersionResponse);
  v33 = v43;
  sub_275AE5404();
  if (v33)
  {
    return sub_275A5FE04(v24, &qword_280A25680, &qword_275AEEA48);
  }

  sub_275A5F510(v24, v32, &qword_280A25680, &qword_275AEEA48);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_275A5FE04(v24, &qword_280A25680, &qword_275AEEA48);
    return sub_275A5FE04(v32, &qword_280A25680, &qword_275AEEA48);
  }

  else
  {
    v35 = v39;
    sub_275A9ED50(v32, v39, type metadata accessor for MobileAssetGetVersionResponse);
    if (v28 != 1)
    {
      sub_275AE5354();
    }

    sub_275A5FE04(v24, &qword_280A25680, &qword_275AEEA48);
    v36 = v38;
    sub_275A5FE04(v38, &qword_280A24E60, "\by");
    sub_275A9ED50(v35, v36, type metadata accessor for MobileAssetGetVersionResponse);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_275AD3384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for DeleteDaemonStateResponse(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by");
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A25688, &unk_275AEEA50);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_275A5F510(a1, v12, &qword_280A24E60, "\by");
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_275A5FE04(v12, &qword_280A24E60, "\by");
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_275A9ED50(v12, v19, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
    sub_275A9ED50(v19, v17, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 17)
    {
      sub_275A5FE04(v24, &qword_280A25688, &unk_275AEEA50);
      v31 = v40;
      sub_275A9ED50(v17, v40, type metadata accessor for DeleteDaemonStateResponse);
      sub_275A9ED50(v31, v24, type metadata accessor for DeleteDaemonStateResponse);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_275A9FCE4(v17, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_275ADD244(&qword_281410AD0, type metadata accessor for DeleteDaemonStateResponse, &protocol conformance descriptor for DeleteDaemonStateResponse);
  v33 = v43;
  sub_275AE5404();
  if (v33)
  {
    return sub_275A5FE04(v24, &qword_280A25688, &unk_275AEEA50);
  }

  sub_275A5F510(v24, v32, &qword_280A25688, &unk_275AEEA50);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_275A5FE04(v24, &qword_280A25688, &unk_275AEEA50);
    return sub_275A5FE04(v32, &qword_280A25688, &unk_275AEEA50);
  }

  else
  {
    v35 = v39;
    sub_275A9ED50(v32, v39, type metadata accessor for DeleteDaemonStateResponse);
    if (v28 != 1)
    {
      sub_275AE5354();
    }

    sub_275A5FE04(v24, &qword_280A25688, &unk_275AEEA50);
    v36 = v38;
    sub_275A5FE04(v38, &qword_280A24E60, "\by");
    sub_275A9ED50(v35, v36, type metadata accessor for DeleteDaemonStateResponse);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t SubscriptionClientResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by");
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v13 - v9;
  sub_275A5F510(v3, &v13 - v9, &qword_280A24E60, "\by");
  v11 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) != 1)
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        sub_275AD3F54(v3, a1, a2, a3);
        goto LABEL_28;
      case 2u:
        sub_275AD418C(v3, a1, a2, a3);
        goto LABEL_28;
      case 3u:
        sub_275AD43C4(v3, a1, a2, a3);
        goto LABEL_28;
      case 4u:
        sub_275AD45FC(v3, a1, a2, a3);
        goto LABEL_28;
      case 5u:
        sub_275AD4834(v3, a1, a2, a3);
        goto LABEL_28;
      case 6u:
        sub_275AD4A6C(v3, a1, a2, a3);
        goto LABEL_28;
      case 7u:
        sub_275AD4CA4(v3, a1, a2, a3);
        goto LABEL_28;
      case 8u:
        sub_275AD4EDC(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_8;
        }

        return sub_275A9FCE4(v10, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
      case 9u:
        sub_275AD5114(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_8;
        }

        return sub_275A9FCE4(v10, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
      case 0xAu:
        sub_275AD534C(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_8;
        }

        return sub_275A9FCE4(v10, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
      case 0xBu:
        sub_275AD5584(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_8;
        }

        return sub_275A9FCE4(v10, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
      case 0xCu:
        sub_275AD57BC(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_8;
        }

        return sub_275A9FCE4(v10, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
      case 0xDu:
        sub_275AD59F4(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_8;
        }

        return sub_275A9FCE4(v10, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
      case 0xEu:
        sub_275AD5C2C(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_8;
        }

        return sub_275A9FCE4(v10, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
      case 0xFu:
        sub_275AD5E64(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_8;
        }

        return sub_275A9FCE4(v10, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
      case 0x10u:
        sub_275AD609C(v3, a1, a2, a3);
        if (v4)
        {
          return sub_275A9FCE4(v10, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
        }

        goto LABEL_8;
      case 0x11u:
        sub_275AD62D4(v3, a1, a2, a3);
        if (v4)
        {
          return sub_275A9FCE4(v10, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
        }

LABEL_8:
        sub_275A9FCE4(v10, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
        break;
      default:
        sub_275AD3D20(v3, a1, a2, a3);
LABEL_28:
        result = sub_275A9FCE4(v10, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
        if (!v4)
        {
          break;
        }

        return result;
    }
  }

  type metadata accessor for SubscriptionClientResponse(0);
  return sub_275AE5284();
}

uint64_t sub_275AD3D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by");
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ErrorResponse(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275A5F510(a1, v7, &qword_280A24E60, "\by");
  v11 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_275A5FE04(v7, &qword_280A24E60, "\by");
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_275A9ED50(v7, v10, type metadata accessor for ErrorResponse);
    sub_275ADD244(&qword_280A24E58, type metadata accessor for ErrorResponse, &protocol conformance descriptor for ErrorResponse);
    sub_275AE5534();
    return sub_275A9FCE4(v10, type metadata accessor for ErrorResponse);
  }

  result = sub_275A9FCE4(v7, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_275AD3F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by");
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for PingResponse(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275A5F510(a1, v7, &qword_280A24E60, "\by");
  v11 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_275A5FE04(v7, &qword_280A24E60, "\by");
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_275A9ED50(v7, v10, type metadata accessor for PingResponse);
    sub_275ADD244(&qword_280A250A0, type metadata accessor for PingResponse, &protocol conformance descriptor for PingResponse);
    sub_275AE5534();
    return sub_275A9FCE4(v10, type metadata accessor for PingResponse);
  }

  result = sub_275A9FCE4(v7, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_275AD418C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by");
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for NewOfferResponse(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275A5F510(a1, v7, &qword_280A24E60, "\by");
  v11 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_275A5FE04(v7, &qword_280A24E60, "\by");
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_275A9ED50(v7, v10, type metadata accessor for NewOfferResponse);
    sub_275ADD244(&qword_280A25070, type metadata accessor for NewOfferResponse, &protocol conformance descriptor for NewOfferResponse);
    sub_275AE5534();
    return sub_275A9FCE4(v10, type metadata accessor for NewOfferResponse);
  }

  result = sub_275A9FCE4(v7, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_275AD43C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by");
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for FeaturesResponse(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275A5F510(a1, v7, &qword_280A24E60, "\by");
  v11 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_275A5FE04(v7, &qword_280A24E60, "\by");
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_275A9ED50(v7, v10, type metadata accessor for FeaturesResponse);
    sub_275ADD244(&qword_280A250E0, type metadata accessor for FeaturesResponse, &protocol conformance descriptor for FeaturesResponse);
    sub_275AE5534();
    return sub_275A9FCE4(v10, type metadata accessor for FeaturesResponse);
  }

  result = sub_275A9FCE4(v7, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_275AD45FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by");
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  StateResponse = type metadata accessor for GetStateResponse(0);
  MEMORY[0x28223BE20](StateResponse);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275A5F510(a1, v7, &qword_280A24E60, "\by");
  v11 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_275A5FE04(v7, &qword_280A24E60, "\by");
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_275A9ED50(v7, v10, type metadata accessor for GetStateResponse);
    sub_275ADD244(&qword_280A25110, type metadata accessor for GetStateResponse, &protocol conformance descriptor for GetStateResponse);
    sub_275AE5534();
    return sub_275A9FCE4(v10, type metadata accessor for GetStateResponse);
  }

  result = sub_275A9FCE4(v7, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_275AD4834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by");
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for DataResponse(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275A5F510(a1, v7, &qword_280A24E60, "\by");
  v11 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_275A5FE04(v7, &qword_280A24E60, "\by");
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_275A9ED50(v7, v10, type metadata accessor for DataResponse);
    sub_275ADD244(&qword_280A25140, type metadata accessor for DataResponse, &protocol conformance descriptor for DataResponse);
    sub_275AE5534();
    return sub_275A9FCE4(v10, type metadata accessor for DataResponse);
  }

  result = sub_275A9FCE4(v7, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_275AD4A6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by");
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for NotificationPendingResponse(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275A5F510(a1, v7, &qword_280A24E60, "\by");
  v11 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_275A5FE04(v7, &qword_280A24E60, "\by");
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 6)
  {
    sub_275A9ED50(v7, v10, type metadata accessor for NotificationPendingResponse);
    sub_275ADD244(&qword_280A25170, type metadata accessor for NotificationPendingResponse, &protocol conformance descriptor for NotificationPendingResponse);
    sub_275AE5534();
    return sub_275A9FCE4(v10, type metadata accessor for NotificationPendingResponse);
  }

  result = sub_275A9FCE4(v7, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_275AD4CA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by");
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for SetCliActivityResponse(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275A5F510(a1, v7, &qword_280A24E60, "\by");
  v11 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_275A5FE04(v7, &qword_280A24E60, "\by");
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 7)
  {
    sub_275A9ED50(v7, v10, type metadata accessor for SetCliActivityResponse);
    sub_275ADD244(&qword_280A251D0, type metadata accessor for SetCliActivityResponse, &protocol conformance descriptor for SetCliActivityResponse);
    sub_275AE5534();
    return sub_275A9FCE4(v10, type metadata accessor for SetCliActivityResponse);
  }

  result = sub_275A9FCE4(v7, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_275AD4EDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by");
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for DisplayDelayedOfferResponse(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275A5F510(a1, v7, &qword_280A24E60, "\by");
  v11 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_275A5FE04(v7, &qword_280A24E60, "\by");
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 8)
  {
    sub_275A9ED50(v7, v10, type metadata accessor for DisplayDelayedOfferResponse);
    sub_275ADD244(&qword_280A25260, type metadata accessor for DisplayDelayedOfferResponse, &protocol conformance descriptor for DisplayDelayedOfferResponse);
    sub_275AE5534();
    return sub_275A9FCE4(v10, type metadata accessor for DisplayDelayedOfferResponse);
  }

  result = sub_275A9FCE4(v7, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_275AD5114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by");
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ActivityStatusResponse(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275A5F510(a1, v7, &qword_280A24E60, "\by");
  v11 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_275A5FE04(v7, &qword_280A24E60, "\by");
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 9)
  {
    sub_275A9ED50(v7, v10, type metadata accessor for ActivityStatusResponse);
    sub_275ADD244(&qword_280A25290, type metadata accessor for ActivityStatusResponse, &protocol conformance descriptor for ActivityStatusResponse);
    sub_275AE5534();
    return sub_275A9FCE4(v10, type metadata accessor for ActivityStatusResponse);
  }

  result = sub_275A9FCE4(v7, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_275AD534C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by");
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ActivityClearResponse(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275A5F510(a1, v7, &qword_280A24E60, "\by");
  v11 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_275A5FE04(v7, &qword_280A24E60, "\by");
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 10)
  {
    sub_275A9ED50(v7, v10, type metadata accessor for ActivityClearResponse);
    sub_275ADD244(&qword_280A252E8, type metadata accessor for ActivityClearResponse, &protocol conformance descriptor for ActivityClearResponse);
    sub_275AE5534();
    return sub_275A9FCE4(v10, type metadata accessor for ActivityClearResponse);
  }

  result = sub_275A9FCE4(v7, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_275AD5584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by");
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  BiomeStreamResponse = type metadata accessor for GetBiomeStreamResponse(0);
  MEMORY[0x28223BE20](BiomeStreamResponse);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275A5F510(a1, v7, &qword_280A24E60, "\by");
  v11 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_275A5FE04(v7, &qword_280A24E60, "\by");
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 11)
  {
    sub_275A9ED50(v7, v10, type metadata accessor for GetBiomeStreamResponse);
    sub_275ADD244(&qword_280A25318, type metadata accessor for GetBiomeStreamResponse, &protocol conformance descriptor for GetBiomeStreamResponse);
    sub_275AE5534();
    return sub_275A9FCE4(v10, type metadata accessor for GetBiomeStreamResponse);
  }

  result = sub_275A9FCE4(v7, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_275AD57BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by");
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for NotificationStateWriteResponse(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275A5F510(a1, v7, &qword_280A24E60, "\by");
  v11 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_275A5FE04(v7, &qword_280A24E60, "\by");
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 12)
  {
    sub_275A9ED50(v7, v10, type metadata accessor for NotificationStateWriteResponse);
    sub_275ADD244(&qword_280A251A0, type metadata accessor for NotificationStateWriteResponse, &protocol conformance descriptor for NotificationStateWriteResponse);
    sub_275AE5534();
    return sub_275A9FCE4(v10, type metadata accessor for NotificationStateWriteResponse);
  }

  result = sub_275A9FCE4(v7, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_275AD59F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by");
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ActivityHistoryResponse(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275A5F510(a1, v7, &qword_280A24E60, "\by");
  v11 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_275A5FE04(v7, &qword_280A24E60, "\by");
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 13)
  {
    sub_275A9ED50(v7, v10, type metadata accessor for ActivityHistoryResponse);
    sub_275ADD244(&qword_280A25348, type metadata accessor for ActivityHistoryResponse, &protocol conformance descriptor for ActivityHistoryResponse);
    sub_275AE5534();
    return sub_275A9FCE4(v10, type metadata accessor for ActivityHistoryResponse);
  }

  result = sub_275A9FCE4(v7, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_275AD5C2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by");
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for MobileAssetDownloadResponse(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275A5F510(a1, v7, &qword_280A24E60, "\by");
  v11 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_275A5FE04(v7, &qword_280A24E60, "\by");
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 14)
  {
    sub_275A9ED50(v7, v10, type metadata accessor for MobileAssetDownloadResponse);
    sub_275ADD244(&qword_280A25200, type metadata accessor for MobileAssetDownloadResponse, &protocol conformance descriptor for MobileAssetDownloadResponse);
    sub_275AE5534();
    return sub_275A9FCE4(v10, type metadata accessor for MobileAssetDownloadResponse);
  }

  result = sub_275A9FCE4(v7, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_275AD5E64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by");
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ShadowEvaluationResponse(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275A5F510(a1, v7, &qword_280A24E60, "\by");
  v11 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_275A5FE04(v7, &qword_280A24E60, "\by");
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 15)
  {
    sub_275A9ED50(v7, v10, type metadata accessor for ShadowEvaluationResponse);
    sub_275ADD244(&qword_280A25378, type metadata accessor for ShadowEvaluationResponse, &protocol conformance descriptor for ShadowEvaluationResponse);
    sub_275AE5534();
    return sub_275A9FCE4(v10, type metadata accessor for ShadowEvaluationResponse);
  }

  result = sub_275A9FCE4(v7, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_275AD609C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by");
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  VersionResponse = type metadata accessor for MobileAssetGetVersionResponse(0);
  MEMORY[0x28223BE20](VersionResponse);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275A5F510(a1, v7, &qword_280A24E60, "\by");
  v11 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_275A5FE04(v7, &qword_280A24E60, "\by");
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 16)
  {
    sub_275A9ED50(v7, v10, type metadata accessor for MobileAssetGetVersionResponse);
    sub_275ADD244(&qword_280A25230, type metadata accessor for MobileAssetGetVersionResponse, &protocol conformance descriptor for MobileAssetGetVersionResponse);
    sub_275AE5534();
    return sub_275A9FCE4(v10, type metadata accessor for MobileAssetGetVersionResponse);
  }

  result = sub_275A9FCE4(v7, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_275AD62D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by");
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for DeleteDaemonStateResponse(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275A5F510(a1, v7, &qword_280A24E60, "\by");
  v11 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_275A5FE04(v7, &qword_280A24E60, "\by");
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 17)
  {
    sub_275A9ED50(v7, v10, type metadata accessor for DeleteDaemonStateResponse);
    sub_275ADD244(&qword_281410AD0, type metadata accessor for DeleteDaemonStateResponse, &protocol conformance descriptor for DeleteDaemonStateResponse);
    sub_275AE5534();
    return sub_275A9FCE4(v10, type metadata accessor for DeleteDaemonStateResponse);
  }

  result = sub_275A9FCE4(v7, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_275AD6558(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_275AE5B54();
  a1(0);
  sub_275ADD244(a2, a3, a4);
  sub_275AE5644();
  return sub_275AE5B74();
}

uint64_t sub_275AD65F8@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  (*(*(v3 - 8) + 56))(a2, 1, 1, v3);
  return _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
}

uint64_t sub_275AD66B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_275ADD244(&qword_280A254A8, type metadata accessor for SubscriptionClientResponse, &protocol conformance descriptor for SubscriptionClientResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_275AD6758(uint64_t a1)
{
  sub_275ADD244(&qword_281411B18, type metadata accessor for SubscriptionClientResponse, &protocol conformance descriptor for SubscriptionClientResponse);

  return sub_275AE5464();
}

uint64_t sub_275AD67C4(uint64_t a1, uint64_t a2)
{
  sub_275ADD244(&qword_281411B18, type metadata accessor for SubscriptionClientResponse, &protocol conformance descriptor for SubscriptionClientResponse);

  return sub_275AE5474();
}

uint64_t _s31iCloudSubscriptionOptimizerCore29NotificationStateWriteRequestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NotificationState(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v21[0] = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24660, &qword_275AEAC60);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A246E8, &qword_275AE7E08);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = v21 - v12;
  v14 = *(type metadata accessor for NotificationStateWriteRequest(0) + 20);
  v15 = *(v11 + 56);
  v21[1] = a1;
  sub_275A5F510(a1 + v14, v13, &qword_280A24660, &qword_275AEAC60);
  sub_275A5F510(a2 + v14, &v13[v15], &qword_280A24660, &qword_275AEAC60);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_275A5FE04(v13, &qword_280A24660, &qword_275AEAC60);
LABEL_9:
      sub_275AE52A4();
      sub_275ADD244(&qword_280A24638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_275AE5664();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_275A5F510(v13, v9, &qword_280A24660, &qword_275AEAC60);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_275A9FCE4(v9, type metadata accessor for NotificationState);
LABEL_6:
    sub_275A5FE04(v13, &qword_280A246E8, &qword_275AE7E08);
    goto LABEL_7;
  }

  v18 = v21[0];
  sub_275A9ED50(&v13[v15], v21[0], type metadata accessor for NotificationState);
  v19 = static NotificationState.== infix(_:_:)();
  sub_275A9FCE4(v18, type metadata accessor for NotificationState);
  sub_275A9FCE4(v9, type metadata accessor for NotificationState);
  sub_275A5FE04(v13, &qword_280A24660, &qword_275AEAC60);
  if (v19)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s31iCloudSubscriptionOptimizerCore27NotificationPendingResponseV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NotificationPendingResponse(0);
  v5 = *(v4 + 20);
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 == 2)
  {
    if (v7 != 2)
    {
      return 0;
    }
  }

  else if (v7 == 2 || ((v6 ^ v7) & 1) != 0)
  {
    return 0;
  }

  v8 = *(v4 + 24);
  v9 = (a1 + v8);
  v10 = *(a1 + v8 + 8);
  v11 = (a2 + v8);
  v12 = *(a2 + v8 + 8);
  if (v10)
  {
    if (!v12)
    {
      return 0;
    }
  }

  else
  {
    if (*v9 != *v11)
    {
      LOBYTE(v12) = 1;
    }

    if (v12)
    {
      return 0;
    }
  }

  sub_275AE52A4();
  sub_275ADD244(&qword_280A24638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_275AE5664() & 1;
}

uint64_t sub_275AD6C98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = *(a3(0) + 20);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 8);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  sub_275AE52A4();
  sub_275ADD244(&qword_280A24638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_275AE5664() & 1;
}

uint64_t _s31iCloudSubscriptionOptimizerCore26DisplayDelayedOfferRequestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DisplayDelayedOfferRequest(0);
  v5 = *(v4 + 20);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = sub_275AE5AC4();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = *(v4 + 24);
  v14 = *(a1 + v13);
  v15 = *(a2 + v13);
  if (v14 != 2)
  {
    if (v15 != 2 && ((v14 ^ v15) & 1) == 0)
    {
      goto LABEL_16;
    }

    return 0;
  }

  if (v15 != 2)
  {
    return 0;
  }

LABEL_16:
  sub_275AE52A4();
  sub_275ADD244(&qword_280A24638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_275AE5664() & 1;
}

uint64_t _s31iCloudSubscriptionOptimizerCore24ShadowEvaluationResponseV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *(type metadata accessor for ShadowEvaluationResponse(0) + 28);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 == 2)
  {
    if (v6 != 2)
    {
      return 0;
    }
  }

  else if (v6 == 2 || ((v5 ^ v6) & 1) != 0)
  {
    return 0;
  }

  if (sub_275A9515C(*a1, *a2) & 1) != 0 && (sub_275A9515C(a1[1], a2[1]))
  {
    sub_275AE52A4();
    sub_275ADD244(&qword_280A24638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return sub_275AE5664() & 1;
  }

  return 0;
}

uint64_t _s31iCloudSubscriptionOptimizerCore24DeleteDaemonStateRequestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for DeleteDaemonStateRequest(0) + 20);
  v5 = (a1 + v4);
  v6 = *(a1 + v4 + 9);
  v7 = a2 + v4;
  v8 = *(a2 + v4 + 9);
  if (v6)
  {
    if (v8)
    {
LABEL_3:
      sub_275AE52A4();
      sub_275ADD244(&qword_280A24638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      return sub_275AE5664() & 1;
    }
  }

  else if ((v8 & 1) == 0)
  {
    v10 = *v5;
    v11 = *v7;
    if (*(v7 + 8))
    {
      if (v11 <= 1)
      {
        if (v11)
        {
          if (v10 == 1)
          {
            goto LABEL_3;
          }
        }

        else if (!v10)
        {
          goto LABEL_3;
        }
      }

      else if (v11 == 2)
      {
        if (v10 == 2)
        {
          goto LABEL_3;
        }
      }

      else if (v11 == 3)
      {
        if (v10 == 3)
        {
          goto LABEL_3;
        }
      }

      else if (v10 == 4)
      {
        goto LABEL_3;
      }
    }

    else if (v10 == v11)
    {
      goto LABEL_3;
    }
  }

  return 0;
}

uint64_t _s31iCloudSubscriptionOptimizerCore23ShadowEvaluationRequestV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for ShadowEvaluationRequest(0);
  v5 = v4[6];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 8);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = v4[7];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = *(a2 + v10 + 8);
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (*v11 != *v13)
    {
      LOBYTE(v14) = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  v15 = v4[8];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = *(a2 + v15 + 8);
  if (v17)
  {
    if (!v19)
    {
      return 0;
    }
  }

  else
  {
    if (*v16 != *v18)
    {
      LOBYTE(v19) = 1;
    }

    if (v19)
    {
      return 0;
    }
  }

  v20 = v4[9];
  v21 = *(a1 + v20);
  v22 = *(a2 + v20);
  if (v21 == 2)
  {
    if (v22 != 2)
    {
      return 0;
    }
  }

  else if (v22 == 2 || ((v21 ^ v22) & 1) != 0)
  {
    return 0;
  }

  v23 = v4[10];
  v24 = (a1 + v23);
  v25 = *(a1 + v23 + 8);
  v26 = (a2 + v23);
  v27 = *(a2 + v23 + 8);
  if (v25)
  {
    if (!v27)
    {
      return 0;
    }
  }

  else
  {
    if (*v24 != *v26)
    {
      LOBYTE(v27) = 1;
    }

    if (v27)
    {
      return 0;
    }
  }

  v28 = v4;
  if ((sub_275A9515C(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v29 = v28[11];
  v30 = *(a1 + v29);
  v31 = *(a2 + v29);
  if (v30 == 2)
  {
    if (v31 == 2)
    {
      goto LABEL_37;
    }

    return 0;
  }

  if (v31 == 2 || ((v30 ^ v31) & 1) != 0)
  {
    return 0;
  }

LABEL_37:
  sub_275AE52A4();
  sub_275ADD244(&qword_280A24638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_275AE5664() & 1;
}

uint64_t _s31iCloudSubscriptionOptimizerCore23ActivityHistoryResponseV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SystemActivityHistory_File(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v23[0] = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E88, &qword_275AEAC68);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (v23 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A25720, &unk_275AEEB00);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = v23 - v12;
  v14 = *(type metadata accessor for ActivityHistoryResponse(0) + 20);
  v15 = *(v11 + 56);
  v23[1] = a1;
  sub_275A5F510(a1 + v14, v13, &qword_280A24E88, &qword_275AEAC68);
  sub_275A5F510(a2 + v14, &v13[v15], &qword_280A24E88, &qword_275AEAC68);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_275A5F510(v13, v9, &qword_280A24E88, &qword_275AEAC68);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v21 = v23[0];
      sub_275A9ED50(&v13[v15], v23[0], type metadata accessor for SystemActivityHistory_File);
      if (sub_275A95248(*v9, *v21))
      {
        sub_275AE52A4();
        sub_275ADD244(&qword_280A24638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v22 = sub_275AE5664();
        sub_275A9FCE4(v21, type metadata accessor for SystemActivityHistory_File);
        sub_275A9FCE4(v9, type metadata accessor for SystemActivityHistory_File);
        sub_275A5FE04(v13, &qword_280A24E88, &qword_275AEAC68);
        if (v22)
        {
          goto LABEL_4;
        }

LABEL_9:
        v17 = 0;
        return v17 & 1;
      }

      sub_275A9FCE4(v21, type metadata accessor for SystemActivityHistory_File);
      sub_275A9FCE4(v9, type metadata accessor for SystemActivityHistory_File);
      v18 = &qword_280A24E88;
      v19 = &qword_275AEAC68;
LABEL_8:
      sub_275A5FE04(v13, v18, v19);
      goto LABEL_9;
    }

    sub_275A9FCE4(v9, type metadata accessor for SystemActivityHistory_File);
LABEL_7:
    v18 = &qword_280A25720;
    v19 = &unk_275AEEB00;
    goto LABEL_8;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_7;
  }

  sub_275A5FE04(v13, &qword_280A24E88, &qword_275AEAC68);
LABEL_4:
  sub_275AE52A4();
  sub_275ADD244(&qword_280A24638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v17 = sub_275AE5664();
  return v17 & 1;
}

uint64_t _s31iCloudSubscriptionOptimizerCore22SetCliActivityResponseV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CliActivityState(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v21[0] = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24668, &qword_275AE7970);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A246E0, &qword_275AE7E00);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = v21 - v12;
  v14 = *(type metadata accessor for SetCliActivityResponse(0) + 20);
  v15 = *(v11 + 56);
  v21[1] = a1;
  sub_275A5F510(a1 + v14, v13, &qword_280A24668, &qword_275AE7970);
  sub_275A5F510(a2 + v14, &v13[v15], &qword_280A24668, &qword_275AE7970);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_275A5FE04(v13, &qword_280A24668, &qword_275AE7970);
LABEL_9:
      sub_275AE52A4();
      sub_275ADD244(&qword_280A24638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_275AE5664();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_275A5F510(v13, v9, &qword_280A24668, &qword_275AE7970);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_275A9FCE4(v9, type metadata accessor for CliActivityState);
LABEL_6:
    sub_275A5FE04(v13, &qword_280A246E0, &qword_275AE7E00);
    goto LABEL_7;
  }

  v18 = v21[0];
  sub_275A9ED50(&v13[v15], v21[0], type metadata accessor for CliActivityState);
  v19 = static CliActivityState.== infix(_:_:)();
  sub_275A9FCE4(v18, type metadata accessor for CliActivityState);
  sub_275A9FCE4(v9, type metadata accessor for CliActivityState);
  sub_275A5FE04(v13, &qword_280A24668, &qword_275AE7970);
  if (v19)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s31iCloudSubscriptionOptimizerCore22ActivityStatusResponseV0E0V2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityStatusResponse.Activity.Criteria(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24DA0, &qword_275AEA460);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v38 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24DA8, &qword_275AEA468);
  MEMORY[0x28223BE20](v11);
  v13 = &v38 - v12;
  v14 = type metadata accessor for ActivityStatusResponse.Activity(0);
  v15 = v14[5];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = v18[1];
  if (v17)
  {
    if (!v19)
    {
      goto LABEL_31;
    }

    if (*v16 != *v18 || v17 != v19)
    {
      v21 = v14;
      v22 = sub_275AE5AC4();
      v14 = v21;
      if ((v22 & 1) == 0)
      {
        goto LABEL_31;
      }
    }
  }

  else if (v19)
  {
    goto LABEL_31;
  }

  v23 = v14[6];
  v24 = (a1 + v23);
  v25 = *(a1 + v23 + 9);
  v26 = (a2 + v23);
  v27 = *(a2 + v23 + 9);
  if (v25)
  {
    if ((v27 & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  else
  {
    if (v27)
    {
      goto LABEL_31;
    }

    v33 = *v24;
    v34 = *v26;
    if (v26[1])
    {
      if (v34)
      {
        if (v34 == 1)
        {
          if (v33 != 1)
          {
            goto LABEL_31;
          }
        }

        else if (v33 != 2)
        {
          goto LABEL_31;
        }
      }

      else if (v33)
      {
        goto LABEL_31;
      }
    }

    else if (v33 != v34)
    {
      goto LABEL_31;
    }
  }

  v28 = v14[7];
  v29 = *(v11 + 48);
  sub_275A5F510(a1 + v28, v13, &qword_280A24DA0, &qword_275AEA460);
  v30 = a2 + v28;
  v31 = v29;
  sub_275A5F510(v30, &v13[v29], &qword_280A24DA0, &qword_275AEA460);
  v32 = *(v5 + 48);
  if (v32(v13, 1, v4) != 1)
  {
    sub_275A5F510(v13, v10, &qword_280A24DA0, &qword_275AEA460);
    if (v32(&v13[v31], 1, v4) == 1)
    {
      sub_275A9FCE4(v10, type metadata accessor for ActivityStatusResponse.Activity.Criteria);
      goto LABEL_23;
    }

    sub_275A9ED50(&v13[v31], v7, type metadata accessor for ActivityStatusResponse.Activity.Criteria);
    v35 = sub_275AD7DF4(v10, v7, type metadata accessor for ActivityStatusResponse.Activity.Criteria);
    sub_275A9FCE4(v7, type metadata accessor for ActivityStatusResponse.Activity.Criteria);
    sub_275A9FCE4(v10, type metadata accessor for ActivityStatusResponse.Activity.Criteria);
    sub_275A5FE04(v13, &qword_280A24DA0, &qword_275AEA460);
    if (v35)
    {
      goto LABEL_27;
    }

LABEL_31:
    v36 = 0;
    return v36 & 1;
  }

  if (v32(&v13[v31], 1, v4) != 1)
  {
LABEL_23:
    sub_275A5FE04(v13, &qword_280A24DA8, &qword_275AEA468);
    goto LABEL_31;
  }

  sub_275A5FE04(v13, &qword_280A24DA0, &qword_275AEA460);
LABEL_27:
  sub_275AE52A4();
  sub_275ADD244(&qword_280A24638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v36 = sub_275AE5664();
  return v36 & 1;
}

uint64_t sub_275AD7DF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  v6 = *(v5 + 20);
  v7 = (a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = *(a2 + v6 + 8);
  if (v8)
  {
    if (!v10)
    {
      return 0;
    }
  }

  else
  {
    if (*v7 != *v9)
    {
      LOBYTE(v10) = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  v11 = *(v5 + 24);
  v12 = (a1 + v11);
  v13 = *(a1 + v11 + 8);
  v14 = (a2 + v11);
  v15 = v14[1];
  if (v13)
  {
    if (!v15)
    {
      return 0;
    }

    v16 = *v12 == *v14 && v13 == v15;
    if (!v16 && (sub_275AE5AC4() & 1) == 0)
    {
      return 0;
    }

LABEL_14:
    sub_275AE52A4();
    sub_275ADD244(&qword_280A24638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return sub_275AE5664() & 1;
  }

  if (!v15)
  {
    goto LABEL_14;
  }

  return 0;
}

uint64_t _s31iCloudSubscriptionOptimizerCore21GetBiomeStreamRequestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  BiomeStreamRequest = type metadata accessor for GetBiomeStreamRequest(0);
  v5 = BiomeStreamRequest[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 8);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = BiomeStreamRequest[6];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = *(a2 + v10 + 8);
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (*v11 != *v13)
    {
      LOBYTE(v14) = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  v15 = BiomeStreamRequest[7];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 9);
  v18 = (a2 + v15);
  v19 = *(a2 + v15 + 9);
  if ((v17 & 1) == 0)
  {
    if (v19)
    {
      return 0;
    }

    v21 = *v16;
    v22 = *v18;
    if (v18[1])
    {
      if (!v22)
      {
        if (!v21)
        {
          goto LABEL_15;
        }

        return 0;
      }

      if (v22 == 1)
      {
        if (v21 != 1)
        {
          return 0;
        }
      }

      else if (v21 != 2)
      {
        return 0;
      }
    }

    else if (v21 != v22)
    {
      return 0;
    }

LABEL_15:
    sub_275AE52A4();
    sub_275ADD244(&qword_280A24638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return sub_275AE5664() & 1;
  }

  if (v19)
  {
    goto LABEL_15;
  }

  return 0;
}

uint64_t _s31iCloudSubscriptionOptimizerCore20ActivityClearRequestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityClearRequest(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 == 2)
  {
    if (v7 != 2)
    {
      return 0;
    }
  }

  else if (v7 == 2 || ((v6 ^ v7) & 1) != 0)
  {
    return 0;
  }

  v8 = v4[6];
  v9 = *(a1 + v8);
  v10 = *(a2 + v8);
  if (v9 == 2)
  {
    if (v10 != 2)
    {
      return 0;
    }
  }

  else if (v10 == 2 || ((v9 ^ v10) & 1) != 0)
  {
    return 0;
  }

  v11 = v4[7];
  v12 = *(a1 + v11);
  v13 = *(a2 + v11);
  if (v12 == 2)
  {
    if (v13 != 2)
    {
      return 0;
    }
  }

  else if (v13 == 2 || ((v12 ^ v13) & 1) != 0)
  {
    return 0;
  }

  sub_275AE52A4();
  sub_275ADD244(&qword_280A24638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_275AE5664() & 1;
}

uint64_t _s31iCloudSubscriptionOptimizerCore16NewOfferResponseV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for QuotaServerState(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24658, &unk_275AE7960);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v44 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A246F0, qword_275AE7E10);
  MEMORY[0x28223BE20](v11);
  v13 = &v44 - v12;
  v14 = type metadata accessor for NewOfferResponse(0);
  v15 = v14[5];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 9);
  v18 = a2 + v15;
  v19 = *(a2 + v15 + 9);
  if (v17)
  {
    if ((v19 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else
  {
    if (v19)
    {
      goto LABEL_24;
    }

    v25 = *v16;
    v26 = *v18;
    if (*(v18 + 8))
    {
      if (v26 <= 2)
      {
        if (v26)
        {
          if (v26 == 1)
          {
            if (v25 != 1)
            {
              goto LABEL_24;
            }
          }

          else if (v25 != 2)
          {
            goto LABEL_24;
          }
        }

        else if (v25)
        {
          goto LABEL_24;
        }
      }

      else if (v26 > 4)
      {
        if (v26 == 5)
        {
          if (v25 != 5)
          {
            goto LABEL_24;
          }
        }

        else if (v25 != 6)
        {
          goto LABEL_24;
        }
      }

      else if (v26 == 3)
      {
        if (v25 != 3)
        {
          goto LABEL_24;
        }
      }

      else if (v25 != 4)
      {
        goto LABEL_24;
      }
    }

    else if (v25 != v26)
    {
      goto LABEL_24;
    }
  }

  v20 = v14[6];
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 8);
  v23 = (a2 + v20);
  v24 = *(a2 + v20 + 8);
  if (v22)
  {
    if (!v24)
    {
      goto LABEL_24;
    }
  }

  else
  {
    if (*v21 != *v23)
    {
      LOBYTE(v24) = 1;
    }

    if (v24)
    {
      goto LABEL_24;
    }
  }

  v27 = v14[7];
  v28 = a1;
  v29 = *(v11 + 48);
  v44 = v28;
  v45 = v14;
  sub_275A5F510(v28 + v27, v13, &qword_280A24658, &unk_275AE7960);
  sub_275A5F510(a2 + v27, &v13[v29], &qword_280A24658, &unk_275AE7960);
  v30 = *(v5 + 48);
  if (v30(v13, 1, v4) != 1)
  {
    sub_275A5F510(v13, v10, &qword_280A24658, &unk_275AE7960);
    if (v30(&v13[v29], 1, v4) != 1)
    {
      sub_275A9ED50(&v13[v29], v7, type metadata accessor for QuotaServerState);
      v33 = static QuotaServerState.== infix(_:_:)();
      sub_275A9FCE4(v7, type metadata accessor for QuotaServerState);
      sub_275A9FCE4(v10, type metadata accessor for QuotaServerState);
      sub_275A5FE04(v13, &qword_280A24658, &unk_275AE7960);
      if ((v33 & 1) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_31;
    }

    sub_275A9FCE4(v10, type metadata accessor for QuotaServerState);
LABEL_23:
    sub_275A5FE04(v13, &qword_280A246F0, qword_275AE7E10);
    goto LABEL_24;
  }

  if (v30(&v13[v29], 1, v4) != 1)
  {
    goto LABEL_23;
  }

  sub_275A5FE04(v13, &qword_280A24658, &unk_275AE7960);
LABEL_31:
  v34 = v45[8];
  v35 = (v44 + v34);
  v36 = *(v44 + v34 + 8);
  v37 = (a2 + v34);
  v38 = *(a2 + v34 + 8);
  if (v36)
  {
    if (!v38)
    {
      goto LABEL_24;
    }
  }

  else
  {
    if (*v35 != *v37)
    {
      LOBYTE(v38) = 1;
    }

    if (v38)
    {
      goto LABEL_24;
    }
  }

  v39 = v45[9];
  v40 = (v44 + v39);
  v41 = *(v44 + v39 + 8);
  v42 = (a2 + v39);
  v43 = v42[1];
  if (v41)
  {
    if (!v43 || (*v40 != *v42 || v41 != v43) && (sub_275AE5AC4() & 1) == 0)
    {
      goto LABEL_24;
    }

LABEL_55:
    sub_275AE52A4();
    sub_275ADD244(&qword_280A24638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v31 = sub_275AE5664();
    return v31 & 1;
  }

  if (!v43)
  {
    goto LABEL_55;
  }

LABEL_24:
  v31 = 0;
  return v31 & 1;
}

uint64_t _s31iCloudSubscriptionOptimizerCore16GetStateResponseV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DaemonState(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27[0] = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E80, &qword_275AEAC58);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A25728, &unk_275AEEB10);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = v27 - v12;
  v14 = *(type metadata accessor for GetStateResponse(0) + 20);
  v15 = *(v11 + 56);
  v27[1] = a1;
  sub_275A5F510(a1 + v14, v13, &qword_280A24E80, &qword_275AEAC58);
  sub_275A5F510(a2 + v14, &v13[v15], &qword_280A24E80, &qword_275AEAC58);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_275A5FE04(v13, &qword_280A24E80, &qword_275AEAC58);
LABEL_12:
      sub_275AE52A4();
      sub_275ADD244(&qword_280A24638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v19 = sub_275AE5664();
      return v19 & 1;
    }

    goto LABEL_6;
  }

  sub_275A5F510(v13, v9, &qword_280A24E80, &qword_275AEAC58);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_275A9FCE4(v9, type metadata accessor for DaemonState);
LABEL_6:
    v17 = &qword_280A25728;
    v18 = &unk_275AEEB10;
LABEL_7:
    sub_275A5FE04(v13, v17, v18);
    goto LABEL_8;
  }

  v20 = v27[0];
  sub_275A9ED50(&v13[v15], v27[0], type metadata accessor for DaemonState);
  v21 = *(v4 + 20);
  v22 = *&v9[v21];
  v23 = *(v20 + v21);
  if (v22 != v23)
  {

    v24 = sub_275A5D96C(v22, v23);

    if (!v24)
    {
      sub_275A9FCE4(v20, type metadata accessor for DaemonState);
      sub_275A9FCE4(v9, type metadata accessor for DaemonState);
      v17 = &qword_280A24E80;
      v18 = &qword_275AEAC58;
      goto LABEL_7;
    }
  }

  sub_275AE52A4();
  sub_275ADD244(&qword_280A24638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v25 = sub_275AE5664();
  sub_275A9FCE4(v20, type metadata accessor for DaemonState);
  sub_275A9FCE4(v9, type metadata accessor for DaemonState);
  sub_275A5FE04(v13, &qword_280A24E80, &qword_275AEAC58);
  if (v25)
  {
    goto LABEL_12;
  }

LABEL_8:
  v19 = 0;
  return v19 & 1;
}

uint64_t _s31iCloudSubscriptionOptimizerCore16FeaturesResponseV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *(type metadata accessor for FeaturesResponse(0) + 24);
  v5 = (a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  v8 = *(a2 + v4 + 8);
  if (v6)
  {
    if (!v8)
    {
      return 0;
    }
  }

  else
  {
    if (*v5 != *v7)
    {
      LOBYTE(v8) = 1;
    }

    if (v8)
    {
      return 0;
    }
  }

  if (sub_275A9701C(*a1, *a2))
  {
    sub_275AE52A4();
    sub_275ADD244(&qword_280A24638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return sub_275AE5664() & 1;
  }

  return 0;
}

uint64_t _s31iCloudSubscriptionOptimizerCore15NewOfferRequestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for QuotaServerState(0);
  v58 = *(v4 - 8);
  v59 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24658, &unk_275AE7960);
  MEMORY[0x28223BE20](v7 - 8);
  v56 = &v52 - v8;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A246F0, qword_275AE7E10);
  MEMORY[0x28223BE20](v57);
  v10 = &v52 - v9;
  v11 = type metadata accessor for LitmusInfo(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24650, &qword_275AEAC50);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v52 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A246F8, &qword_275AEEB30);
  MEMORY[0x28223BE20](v18);
  v20 = &v52 - v19;
  v21 = type metadata accessor for NewOfferRequest(0);
  v22 = *(v21 + 20);
  v23 = (a1 + v22);
  v24 = *(a1 + v22 + 8);
  v25 = (a2 + v22);
  v26 = *(a2 + v22 + 8);
  if (v24)
  {
    if (!v26)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (*v23 != *v25)
    {
      LOBYTE(v26) = 1;
    }

    if (v26)
    {
      goto LABEL_14;
    }
  }

  v52 = v6;
  v53 = v10;
  v27 = *(v21 + 24);
  v28 = *(v18 + 48);
  v54 = a1;
  v55 = v21;
  sub_275A5F510(a1 + v27, v20, &qword_280A24650, &qword_275AEAC50);
  v29 = a2 + v27;
  v30 = a2;
  sub_275A5F510(v29, &v20[v28], &qword_280A24650, &qword_275AEAC50);
  v31 = *(v12 + 48);
  if (v31(v20, 1, v11) == 1)
  {
    if (v31(&v20[v28], 1, v11) == 1)
    {
      sub_275A5FE04(v20, &qword_280A24650, &qword_275AEAC50);
      goto LABEL_17;
    }

LABEL_12:
    v32 = &qword_280A246F8;
    v33 = &qword_275AEEB30;
    v34 = v20;
LABEL_13:
    sub_275A5FE04(v34, v32, v33);
    goto LABEL_14;
  }

  sub_275A5F510(v20, v17, &qword_280A24650, &qword_275AEAC50);
  if (v31(&v20[v28], 1, v11) == 1)
  {
    sub_275A9FCE4(v17, type metadata accessor for LitmusInfo);
    goto LABEL_12;
  }

  sub_275A9ED50(&v20[v28], v14, type metadata accessor for LitmusInfo);
  v37 = static LitmusInfo.== infix(_:_:)();
  sub_275A9FCE4(v14, type metadata accessor for LitmusInfo);
  sub_275A9FCE4(v17, type metadata accessor for LitmusInfo);
  sub_275A5FE04(v20, &qword_280A24650, &qword_275AEAC50);
  if ((v37 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_17:
  v38 = *(v55 + 28);
  v39 = (v54 + v38);
  v40 = *(v54 + v38 + 8);
  v41 = (a2 + v38);
  v42 = *(a2 + v38 + 8);
  if (v40)
  {
    v43 = v53;
    if (!v42)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (*v39 != *v41)
    {
      LOBYTE(v42) = 1;
    }

    v43 = v53;
    if (v42)
    {
      goto LABEL_14;
    }
  }

  v44 = *(v55 + 32);
  v45 = *(v57 + 48);
  sub_275A5F510(v54 + v44, v43, &qword_280A24658, &unk_275AE7960);
  sub_275A5F510(v30 + v44, v43 + v45, &qword_280A24658, &unk_275AE7960);
  v46 = v59;
  v47 = *(v58 + 48);
  if (v47(v43, 1, v59) == 1)
  {
    if (v47(v43 + v45, 1, v46) == 1)
    {
      sub_275A5FE04(v43, &qword_280A24658, &unk_275AE7960);
LABEL_30:
      sub_275AE52A4();
      sub_275ADD244(&qword_280A24638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v35 = sub_275AE5664();
      return v35 & 1;
    }

    goto LABEL_28;
  }

  v48 = v56;
  sub_275A5F510(v43, v56, &qword_280A24658, &unk_275AE7960);
  if (v47(v43 + v45, 1, v46) == 1)
  {
    sub_275A9FCE4(v48, type metadata accessor for QuotaServerState);
LABEL_28:
    v32 = &qword_280A246F0;
    v33 = qword_275AE7E10;
    v34 = v43;
    goto LABEL_13;
  }

  v49 = v43 + v45;
  v50 = v52;
  sub_275A9ED50(v49, v52, type metadata accessor for QuotaServerState);
  v51 = static QuotaServerState.== infix(_:_:)();
  sub_275A9FCE4(v50, type metadata accessor for QuotaServerState);
  sub_275A9FCE4(v48, type metadata accessor for QuotaServerState);
  sub_275A5FE04(v43, &qword_280A24658, &unk_275AE7960);
  if (v51)
  {
    goto LABEL_30;
  }

LABEL_14:
  v35 = 0;
  return v35 & 1;
}

uint64_t _s31iCloudSubscriptionOptimizerCore15FeaturesRequestV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *(type metadata accessor for FeaturesRequest(0) + 28);
  v5 = (a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  v8 = *(a2 + v4 + 8);
  if (v6)
  {
    if (!v8)
    {
      return 0;
    }
  }

  else
  {
    if (*v5 != *v7)
    {
      LOBYTE(v8) = 1;
    }

    if (v8)
    {
      return 0;
    }
  }

  if (sub_275A9515C(*a1, *a2) & 1) != 0 && (sub_275A9515C(a1[1], a2[1]))
  {
    sub_275AE52A4();
    sub_275ADD244(&qword_280A24638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return sub_275AE5664() & 1;
  }

  return 0;
}

uint64_t _s31iCloudSubscriptionOptimizerCore14FeatureDetailsV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeatureDetails(0);
  v5 = *(v4 + 20);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = sub_275AE5AC4();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = *(v4 + 24);
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = v16[1];
  if (v15)
  {
    if (v17)
    {
      v18 = *v14 == *v16 && v15 == v17;
      if (v18 || (sub_275AE5AC4() & 1) != 0)
      {
        goto LABEL_17;
      }
    }
  }

  else if (!v17)
  {
LABEL_17:
    sub_275AE52A4();
    sub_275ADD244(&qword_280A24638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return sub_275AE5664() & 1;
  }

  return 0;
}

uint64_t _s31iCloudSubscriptionOptimizerCore12DataResponseV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  if ((sub_275A9515C(*a1, *a2) & 1) == 0 || (sub_275A9515C(a1[1], a2[1]) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for DataResponse(0);
  v5 = *(v4 + 28);
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 == 2)
  {
    if (v7 != 2)
    {
      return 0;
    }
  }

  else if (v7 == 2 || ((v6 ^ v7) & 1) != 0)
  {
    return 0;
  }

  v8 = *(v4 + 32);
  v9 = *(a1 + v8);
  v10 = *(a2 + v8);
  if (v9 == 2)
  {
    if (v10 != 2)
    {
      return 0;
    }
  }

  else if (v10 == 2 || ((v9 ^ v10) & 1) != 0)
  {
    return 0;
  }

  sub_275AE52A4();
  sub_275ADD244(&qword_280A24638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_275AE5664() & 1;
}

uint64_t sub_275AD9540(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = *(a3(0) + 20);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (v9)
    {
      v10 = *v6 == *v8 && v7 == v9;
      if (v10 || (sub_275AE5AC4() & 1) != 0)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!v9)
  {
LABEL_8:
    sub_275AE52A4();
    sub_275ADD244(&qword_280A24638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return sub_275AE5664() & 1;
  }

  return 0;
}

uint64_t _s31iCloudSubscriptionOptimizerCore11DataRequestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DataRequest(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 8);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = v4[6];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = *(a2 + v10 + 8);
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (*v11 != *v13)
    {
      LOBYTE(v14) = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  v15 = v4[7];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = *(a2 + v15 + 8);
  if (v17)
  {
    if (!v19)
    {
      return 0;
    }
  }

  else
  {
    if (*v16 != *v18)
    {
      LOBYTE(v19) = 1;
    }

    if (v19)
    {
      return 0;
    }
  }

  v20 = v4[8];
  v21 = *(a1 + v20);
  v22 = *(a2 + v20);
  if (v21 == 2)
  {
    if (v22 != 2)
    {
      return 0;
    }
  }

  else if (v22 == 2 || ((v21 ^ v22) & 1) != 0)
  {
    return 0;
  }

  v23 = v4[9];
  v24 = (a1 + v23);
  v25 = *(a1 + v23 + 8);
  v26 = (a2 + v23);
  v27 = *(a2 + v23 + 8);
  if (v25)
  {
    if (!v27)
    {
      return 0;
    }
  }

  else
  {
    if (*v24 != *v26)
    {
      LOBYTE(v27) = 1;
    }

    if (v27)
    {
      return 0;
    }
  }

  v28 = v4[10];
  v29 = *(a1 + v28);
  v30 = *(a2 + v28);
  if (v29 == 2)
  {
    if (v30 != 2)
    {
      return 0;
    }
  }

  else if (v30 == 2 || ((v29 ^ v30) & 1) != 0)
  {
    return 0;
  }

  v31 = v4[11];
  v32 = *(a1 + v31);
  v33 = *(a2 + v31);
  if (v32 == 2)
  {
    if (v33 != 2)
    {
      return 0;
    }
  }

  else if (v33 == 2 || ((v32 ^ v33) & 1) != 0)
  {
    return 0;
  }

  sub_275AE52A4();
  sub_275ADD244(&qword_280A24638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_275AE5664() & 1;
}

uint64_t _s31iCloudSubscriptionOptimizerCore0B14ClientResponseV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by");
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A255F8, "\b>");
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_275A5F510(a1, &v20 - v13, &qword_280A24E60, "\by");
  sub_275A5F510(a2, &v14[v15], &qword_280A24E60, "\by");
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_275A5FE04(v14, &qword_280A24E60, "\by");
LABEL_9:
      type metadata accessor for SubscriptionClientResponse(0);
      sub_275AE52A4();
      sub_275ADD244(&qword_280A24638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_275AE5664();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_275A5F510(v14, v10, &qword_280A24E60, "\by");
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_275A9FCE4(v10, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
LABEL_6:
    sub_275A5FE04(v14, &qword_280A255F8, "\b>");
    goto LABEL_7;
  }

  sub_275A9ED50(&v14[v15], v7, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
  v18 = _s31iCloudSubscriptionOptimizerCore0B14ClientResponseV10OneOf_TypeO21__derived_enum_equalsySbAE_AEtFZ_0(v10, v7);
  sub_275A9FCE4(v7, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
  sub_275A9FCE4(v10, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
  sub_275A5FE04(v14, &qword_280A24E60, "\by");
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s31iCloudSubscriptionOptimizerCore0B14ClientResponseV10OneOf_TypeO21__derived_enum_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v188 = a2;
  v189 = a1;
  v173 = type metadata accessor for DeleteDaemonStateResponse(0);
  MEMORY[0x28223BE20](v173);
  v175 = (&v151 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  VersionResponse = type metadata accessor for MobileAssetGetVersionResponse(0);
  MEMORY[0x28223BE20](VersionResponse);
  v174 = (&v151 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for ShadowEvaluationResponse(0);
  MEMORY[0x28223BE20](v4 - 8);
  v170 = (&v151 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v169 = type metadata accessor for MobileAssetDownloadResponse(0);
  MEMORY[0x28223BE20](v169);
  v172 = &v151 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ActivityHistoryResponse(0);
  MEMORY[0x28223BE20](v7 - 8);
  v166 = (&v151 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for NotificationStateWriteResponse(0);
  MEMORY[0x28223BE20](v9 - 8);
  v168 = &v151 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  BiomeStreamResponse = type metadata accessor for GetBiomeStreamResponse(0);
  MEMORY[0x28223BE20](BiomeStreamResponse);
  v167 = (&v151 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for ActivityClearResponse(0);
  MEMORY[0x28223BE20](v12 - 8);
  v165 = &v151 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = type metadata accessor for ActivityStatusResponse(0);
  MEMORY[0x28223BE20](v151);
  v164 = (&v151 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for DisplayDelayedOfferResponse(0);
  MEMORY[0x28223BE20](v15 - 8);
  v163 = &v151 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for SetCliActivityResponse(0);
  MEMORY[0x28223BE20](v17 - 8);
  v162 = &v151 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for NotificationPendingResponse(0);
  MEMORY[0x28223BE20](v19 - 8);
  v161 = &v151 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DataResponse(0);
  MEMORY[0x28223BE20](v21 - 8);
  v160 = (&v151 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  StateResponse = type metadata accessor for GetStateResponse(0);
  MEMORY[0x28223BE20](StateResponse - 8);
  v158 = &v151 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for FeaturesResponse(0);
  MEMORY[0x28223BE20](v25 - 8);
  v157 = (&v151 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = type metadata accessor for NewOfferResponse(0);
  MEMORY[0x28223BE20](v27 - 8);
  v156 = &v151 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = type metadata accessor for PingResponse(0);
  MEMORY[0x28223BE20](v155);
  v159 = (&v151 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v153 = type metadata accessor for ErrorResponse(0);
  MEMORY[0x28223BE20](v153);
  v154 = (&v151 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  v32 = MEMORY[0x28223BE20](v31);
  v187 = (&v151 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = MEMORY[0x28223BE20](v32);
  v186 = (&v151 - v35);
  v36 = MEMORY[0x28223BE20](v34);
  v183 = (&v151 - v37);
  v38 = MEMORY[0x28223BE20](v36);
  v185 = (&v151 - v39);
  v40 = MEMORY[0x28223BE20](v38);
  v180 = (&v151 - v41);
  v42 = MEMORY[0x28223BE20](v40);
  v181 = (&v151 - v43);
  v44 = MEMORY[0x28223BE20](v42);
  v184 = (&v151 - v45);
  v46 = MEMORY[0x28223BE20](v44);
  v179 = (&v151 - v47);
  v48 = MEMORY[0x28223BE20](v46);
  v182 = (&v151 - v49);
  v50 = MEMORY[0x28223BE20](v48);
  v178 = (&v151 - v51);
  v52 = MEMORY[0x28223BE20](v50);
  v176 = &v151 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v56 = &v151 - v55;
  v57 = MEMORY[0x28223BE20](v54);
  v59 = (&v151 - v58);
  v60 = MEMORY[0x28223BE20](v57);
  v62 = &v151 - v61;
  v63 = MEMORY[0x28223BE20](v60);
  v65 = (&v151 - v64);
  v66 = MEMORY[0x28223BE20](v63);
  v68 = &v151 - v67;
  v69 = MEMORY[0x28223BE20](v66);
  v177 = (&v151 - v70);
  MEMORY[0x28223BE20](v69);
  v72 = (&v151 - v71);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A25730, &unk_275AEEB20);
  v74 = MEMORY[0x28223BE20](v73 - 8);
  v76 = &v151 - v75;
  v77 = *(v74 + 56);
  sub_275A9FC7C(v189, &v151 - v75, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
  v189 = v77;
  sub_275A9FC7C(v188, &v76[v77], type metadata accessor for SubscriptionClientResponse.OneOf_Type);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v72 = v177;
      sub_275A9FC7C(v76, v177, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
      v115 = v189;
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v79 = type metadata accessor for PingResponse;
        goto LABEL_83;
      }

      v81 = v159;
      sub_275A9ED50(&v76[v115], v159, type metadata accessor for PingResponse);
      v116 = *(v155 + 20);
      v117 = (v72 + v116);
      v118 = *(v72 + v116 + 8);
      v119 = (v81 + v116);
      v120 = v119[1];
      if (v118)
      {
        if (!v120 || (*v117 != *v119 || v118 != v120) && (sub_275AE5AC4() & 1) == 0)
        {
          goto LABEL_106;
        }
      }

      else if (v120)
      {
LABEL_106:
        v137 = type metadata accessor for PingResponse;
        goto LABEL_117;
      }

      sub_275AE52A4();
      sub_275ADD244(&qword_280A24638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      if (sub_275AE5664())
      {
        v95 = type metadata accessor for PingResponse;
        goto LABEL_114;
      }

      goto LABEL_106;
    case 2u:
      sub_275A9FC7C(v76, v68, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
      v105 = v189;
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v106 = v156;
        sub_275A9ED50(&v76[v105], v156, type metadata accessor for NewOfferResponse);
        StateResponseV2eeoiySbAC_ACtFZ_0 = _s31iCloudSubscriptionOptimizerCore16NewOfferResponseV2eeoiySbAC_ACtFZ_0(v68, v106);
        sub_275A9FCE4(v106, type metadata accessor for NewOfferResponse);
        v100 = v68;
        v107 = type metadata accessor for NewOfferResponse;
        goto LABEL_64;
      }

      v134 = type metadata accessor for NewOfferResponse;
      v135 = v68;
      goto LABEL_84;
    case 3u:
      sub_275A9FC7C(v76, v65, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
      v110 = v189;
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v111 = v157;
        sub_275A9ED50(&v76[v110], v157, type metadata accessor for FeaturesResponse);
        StateResponseV2eeoiySbAC_ACtFZ_0 = _s31iCloudSubscriptionOptimizerCore16FeaturesResponseV2eeoiySbAC_ACtFZ_0(v65, v111);
        v99 = type metadata accessor for FeaturesResponse;
        sub_275A9FCE4(v111, type metadata accessor for FeaturesResponse);
        v100 = v65;
        goto LABEL_63;
      }

      v134 = type metadata accessor for FeaturesResponse;
      v135 = v65;
      goto LABEL_84;
    case 4u:
      sub_275A9FC7C(v76, v62, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
      v96 = v189;
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v97 = v158;
        sub_275A9ED50(&v76[v96], v158, type metadata accessor for GetStateResponse);
        StateResponseV2eeoiySbAC_ACtFZ_0 = _s31iCloudSubscriptionOptimizerCore16GetStateResponseV2eeoiySbAC_ACtFZ_0(v62, v97);
        v99 = type metadata accessor for GetStateResponse;
        sub_275A9FCE4(v97, type metadata accessor for GetStateResponse);
        v100 = v62;
        goto LABEL_63;
      }

      v134 = type metadata accessor for GetStateResponse;
      v135 = v62;
      goto LABEL_84;
    case 5u:
      sub_275A9FC7C(v76, v59, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
      v127 = v189;
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v128 = v160;
        sub_275A9ED50(&v76[v127], v160, type metadata accessor for DataResponse);
        StateResponseV2eeoiySbAC_ACtFZ_0 = _s31iCloudSubscriptionOptimizerCore12DataResponseV2eeoiySbAC_ACtFZ_0(v59, v128);
        v99 = type metadata accessor for DataResponse;
        sub_275A9FCE4(v128, type metadata accessor for DataResponse);
        v100 = v59;
        goto LABEL_63;
      }

      v134 = type metadata accessor for DataResponse;
      v135 = v59;
      goto LABEL_84;
    case 6u:
      sub_275A9FC7C(v76, v56, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
      v131 = v189;
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        v113 = v161;
        sub_275A9ED50(&v76[v131], v161, type metadata accessor for NotificationPendingResponse);
        StateResponseV2eeoiySbAC_ACtFZ_0 = _s31iCloudSubscriptionOptimizerCore27NotificationPendingResponseV2eeoiySbAC_ACtFZ_0(v56, v113);
        v114 = type metadata accessor for NotificationPendingResponse;
        goto LABEL_56;
      }

      v136 = type metadata accessor for NotificationPendingResponse;
      goto LABEL_80;
    case 7u:
      v56 = v176;
      sub_275A9FC7C(v76, v176, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
      v112 = v189;
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        v113 = v162;
        sub_275A9ED50(&v76[v112], v162, type metadata accessor for SetCliActivityResponse);
        StateResponseV2eeoiySbAC_ACtFZ_0 = _s31iCloudSubscriptionOptimizerCore22SetCliActivityResponseV2eeoiySbAC_ACtFZ_0(v56, v113);
        v114 = type metadata accessor for SetCliActivityResponse;
LABEL_56:
        v99 = v114;
        sub_275A9FCE4(v113, v114);
        v100 = v56;
        goto LABEL_63;
      }

      v136 = type metadata accessor for SetCliActivityResponse;
LABEL_80:
      v134 = v136;
      v135 = v56;
      goto LABEL_84;
    case 8u:
      v72 = v178;
      sub_275A9FC7C(v76, v178, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
      v133 = v189;
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        v102 = v163;
        sub_275A9ED50(&v76[v133], v163, type metadata accessor for DisplayDelayedOfferResponse);
        sub_275AE52A4();
        sub_275ADD244(&qword_280A24638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        StateResponseV2eeoiySbAC_ACtFZ_0 = sub_275AE5664();
        v103 = type metadata accessor for DisplayDelayedOfferResponse;
        goto LABEL_61;
      }

      v79 = type metadata accessor for DisplayDelayedOfferResponse;
      goto LABEL_83;
    case 9u:
      v72 = v182;
      sub_275A9FC7C(v76, v182, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
      v104 = v189;
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        v79 = type metadata accessor for ActivityStatusResponse;
        goto LABEL_83;
      }

      v81 = v164;
      sub_275A9ED50(&v76[v104], v164, type metadata accessor for ActivityStatusResponse);
      if (sub_275A96938(*v72, *v81))
      {
        sub_275AE52A4();
        sub_275ADD244(&qword_280A24638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        if (sub_275AE5664())
        {
          v95 = type metadata accessor for ActivityStatusResponse;
          goto LABEL_114;
        }
      }

      v137 = type metadata accessor for ActivityStatusResponse;
      goto LABEL_117;
    case 0xAu:
      v72 = v179;
      sub_275A9FC7C(v76, v179, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
      v132 = v189;
      if (swift_getEnumCaseMultiPayload() == 10)
      {
        v102 = v165;
        sub_275A9ED50(&v76[v132], v165, type metadata accessor for ActivityClearResponse);
        sub_275AE52A4();
        sub_275ADD244(&qword_280A24638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        StateResponseV2eeoiySbAC_ACtFZ_0 = sub_275AE5664();
        v103 = type metadata accessor for ActivityClearResponse;
        goto LABEL_61;
      }

      v79 = type metadata accessor for ActivityClearResponse;
      goto LABEL_83;
    case 0xBu:
      v72 = v184;
      sub_275A9FC7C(v76, v184, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
      v94 = v189;
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        v79 = type metadata accessor for GetBiomeStreamResponse;
        goto LABEL_83;
      }

      v81 = v167;
      sub_275A9ED50(&v76[v94], v167, type metadata accessor for GetBiomeStreamResponse);
      if (sub_275A9515C(*v72, *v81))
      {
        sub_275AE52A4();
        sub_275ADD244(&qword_280A24638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        if (sub_275AE5664())
        {
          v95 = type metadata accessor for GetBiomeStreamResponse;
          goto LABEL_114;
        }
      }

      v137 = type metadata accessor for GetBiomeStreamResponse;
      goto LABEL_117;
    case 0xCu:
      v72 = v181;
      sub_275A9FC7C(v76, v181, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
      v101 = v189;
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        v79 = type metadata accessor for NotificationStateWriteResponse;
        goto LABEL_83;
      }

      v102 = v168;
      sub_275A9ED50(&v76[v101], v168, type metadata accessor for NotificationStateWriteResponse);
      sub_275AE52A4();
      sub_275ADD244(&qword_280A24638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      StateResponseV2eeoiySbAC_ACtFZ_0 = sub_275AE5664();
      v103 = type metadata accessor for NotificationStateWriteResponse;
LABEL_61:
      v99 = v103;
      v130 = v102;
      goto LABEL_62;
    case 0xDu:
      v72 = v180;
      sub_275A9FC7C(v76, v180, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
      v129 = v189;
      if (swift_getEnumCaseMultiPayload() == 13)
      {
        v109 = v166;
        sub_275A9ED50(&v76[v129], v166, type metadata accessor for ActivityHistoryResponse);
        StateResponseV2eeoiySbAC_ACtFZ_0 = _s31iCloudSubscriptionOptimizerCore23ActivityHistoryResponseV2eeoiySbAC_ACtFZ_0(v72, v109);
        v103 = type metadata accessor for ActivityHistoryResponse;
        goto LABEL_53;
      }

      v79 = type metadata accessor for ActivityHistoryResponse;
      goto LABEL_83;
    case 0xEu:
      v72 = v185;
      sub_275A9FC7C(v76, v185, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
      v87 = v189;
      if (swift_getEnumCaseMultiPayload() != 14)
      {
        v79 = type metadata accessor for MobileAssetDownloadResponse;
        goto LABEL_83;
      }

      v88 = v172;
      sub_275A9ED50(&v76[v87], v172, type metadata accessor for MobileAssetDownloadResponse);
      v89 = *(v169 + 20);
      v90 = (v72 + v89);
      v91 = *(v72 + v89 + 8);
      v92 = (v88 + v89);
      v93 = *(v88 + v89 + 8);
      if (v91)
      {
        if (!v93)
        {
LABEL_14:
          sub_275A9FCE4(v88, type metadata accessor for MobileAssetDownloadResponse);
          goto LABEL_98;
        }
      }

      else
      {
        if (*v90 != *v92)
        {
          LOBYTE(v93) = 1;
        }

        if (v93)
        {
          goto LABEL_14;
        }
      }

      sub_275AE52A4();
      sub_275ADD244(&qword_280A24638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v143 = sub_275AE5664();
      sub_275A9FCE4(v88, type metadata accessor for MobileAssetDownloadResponse);
      if (v143)
      {
        v144 = type metadata accessor for MobileAssetDownloadResponse;
        v145 = v72;
        goto LABEL_115;
      }

LABEL_98:
      v146 = type metadata accessor for MobileAssetDownloadResponse;
      v147 = v72;
LABEL_118:
      sub_275A9FCE4(v147, v146);
      sub_275A9FCE4(v76, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
LABEL_119:
      StateResponseV2eeoiySbAC_ACtFZ_0 = 0;
      return StateResponseV2eeoiySbAC_ACtFZ_0 & 1;
    case 0xFu:
      v72 = v183;
      sub_275A9FC7C(v76, v183, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
      v108 = v189;
      if (swift_getEnumCaseMultiPayload() != 15)
      {
        v79 = type metadata accessor for ShadowEvaluationResponse;
        goto LABEL_83;
      }

      v109 = v170;
      sub_275A9ED50(&v76[v108], v170, type metadata accessor for ShadowEvaluationResponse);
      StateResponseV2eeoiySbAC_ACtFZ_0 = _s31iCloudSubscriptionOptimizerCore24ShadowEvaluationResponseV2eeoiySbAC_ACtFZ_0(v72, v109);
      v103 = type metadata accessor for ShadowEvaluationResponse;
LABEL_53:
      v99 = v103;
      v130 = v109;
LABEL_62:
      sub_275A9FCE4(v130, v103);
      v100 = v72;
LABEL_63:
      v107 = v99;
LABEL_64:
      sub_275A9FCE4(v100, v107);
      sub_275A9FCE4(v76, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
      return StateResponseV2eeoiySbAC_ACtFZ_0 & 1;
    case 0x10u:
      v72 = v186;
      sub_275A9FC7C(v76, v186, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
      v80 = v189;
      if (swift_getEnumCaseMultiPayload() != 16)
      {
        v79 = type metadata accessor for MobileAssetGetVersionResponse;
        goto LABEL_83;
      }

      v81 = v174;
      sub_275A9ED50(&v76[v80], v174, type metadata accessor for MobileAssetGetVersionResponse);
      v82 = *(VersionResponse + 20);
      v83 = (v72 + v82);
      v84 = *(v72 + v82 + 8);
      v85 = (v81 + v82);
      v86 = v85[1];
      if (v84)
      {
        if (!v86 || (*v83 != *v85 || v84 != v86) && (sub_275AE5AC4() & 1) == 0)
        {
          goto LABEL_102;
        }
      }

      else if (v86)
      {
        goto LABEL_102;
      }

      sub_275AE52A4();
      sub_275ADD244(&qword_280A24638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      if (sub_275AE5664())
      {
        v95 = type metadata accessor for MobileAssetGetVersionResponse;
        goto LABEL_114;
      }

LABEL_102:
      v137 = type metadata accessor for MobileAssetGetVersionResponse;
      goto LABEL_117;
    case 0x11u:
      v72 = v187;
      sub_275A9FC7C(v76, v187, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
      v121 = v189;
      if (swift_getEnumCaseMultiPayload() != 17)
      {
        v79 = type metadata accessor for DeleteDaemonStateResponse;
        goto LABEL_83;
      }

      v81 = v175;
      sub_275A9ED50(&v76[v121], v175, type metadata accessor for DeleteDaemonStateResponse);
      v122 = *(v173 + 20);
      v123 = (v72 + v122);
      v124 = *(v72 + v122 + 8);
      v125 = (v81 + v122);
      v126 = v125[1];
      if (v124)
      {
        if (!v126 || (*v123 != *v125 || v124 != v126) && (sub_275AE5AC4() & 1) == 0)
        {
          goto LABEL_110;
        }
      }

      else if (v126)
      {
        goto LABEL_110;
      }

      sub_275AE52A4();
      sub_275ADD244(&qword_280A24638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      if (sub_275AE5664())
      {
        v95 = type metadata accessor for DeleteDaemonStateResponse;
        goto LABEL_114;
      }

LABEL_110:
      v137 = type metadata accessor for DeleteDaemonStateResponse;
      goto LABEL_117;
    default:
      sub_275A9FC7C(v76, v72, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
      v78 = v189;
      if (swift_getEnumCaseMultiPayload())
      {
        v79 = type metadata accessor for ErrorResponse;
LABEL_83:
        v134 = v79;
        v135 = v72;
LABEL_84:
        sub_275A9FCE4(v135, v134);
        sub_275A5FE04(v76, &qword_280A25730, &unk_275AEEB20);
        goto LABEL_119;
      }

      v81 = v154;
      sub_275A9ED50(&v76[v78], v154, type metadata accessor for ErrorResponse);
      v138 = *(v153 + 20);
      v139 = (v72 + v138);
      v140 = *(v72 + v138 + 8);
      v141 = (v81 + v138);
      v142 = v141[1];
      if (v140)
      {
        if (!v142 || (*v139 != *v141 || v140 != v142) && (sub_275AE5AC4() & 1) == 0)
        {
          goto LABEL_116;
        }
      }

      else if (v142)
      {
        goto LABEL_116;
      }

      sub_275AE52A4();
      sub_275ADD244(&qword_280A24638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      if (sub_275AE5664())
      {
        v95 = type metadata accessor for ErrorResponse;
LABEL_114:
        v148 = v95;
        sub_275A9FCE4(v81, v95);
        v145 = v72;
        v144 = v148;
LABEL_115:
        sub_275A9FCE4(v145, v144);
        sub_275A9FCE4(v76, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
        StateResponseV2eeoiySbAC_ACtFZ_0 = 1;
        return StateResponseV2eeoiySbAC_ACtFZ_0 & 1;
      }

LABEL_116:
      v137 = type metadata accessor for ErrorResponse;
LABEL_117:
      v149 = v137;
      sub_275A9FCE4(v81, v137);
      v147 = v72;
      v146 = v149;
      goto LABEL_118;
  }
}

uint64_t _s31iCloudSubscriptionOptimizerCore0B13ClientRequestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C20, &qword_275AEAC70);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A25690, &qword_275AEEA68);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_275A5F510(a1, &v20 - v13, &qword_280A24C20, &qword_275AEAC70);
  sub_275A5F510(a2, &v14[v15], &qword_280A24C20, &qword_275AEAC70);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_275A5FE04(v14, &qword_280A24C20, &qword_275AEAC70);
LABEL_9:
      type metadata accessor for SubscriptionClientRequest(0);
      sub_275AE52A4();
      sub_275ADD244(&qword_280A24638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_275AE5664();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_275A5F510(v14, v10, &qword_280A24C20, &qword_275AEAC70);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_275A9FCE4(v10, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
LABEL_6:
    sub_275A5FE04(v14, &qword_280A25690, &qword_275AEEA68);
    goto LABEL_7;
  }

  sub_275A9ED50(&v14[v15], v7, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
  v18 = _s31iCloudSubscriptionOptimizerCore0B13ClientRequestV10OneOf_TypeO21__derived_enum_equalsySbAE_AEtFZ_0(v10, v7);
  sub_275A9FCE4(v7, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
  sub_275A9FCE4(v10, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
  sub_275A5FE04(v14, &qword_280A24C20, &qword_275AEAC70);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s31iCloudSubscriptionOptimizerCore0B13ClientRequestV10OneOf_TypeO21__derived_enum_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v164 = a2;
  v165 = a1;
  v2 = type metadata accessor for DeleteDaemonStateRequest(0);
  MEMORY[0x28223BE20](v2 - 8);
  v151 = (&v133 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  VersionRequest = type metadata accessor for MobileAssetGetVersionRequest(0);
  MEMORY[0x28223BE20](VersionRequest - 8);
  v152 = &v133 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ShadowEvaluationRequest(0);
  MEMORY[0x28223BE20](v6 - 8);
  v149 = (&v133 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v147 = type metadata accessor for MobileAssetDownloadRequest(0);
  MEMORY[0x28223BE20](v147);
  v150 = &v133 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ActivityHistoryRequest(0);
  MEMORY[0x28223BE20](v9 - 8);
  v148 = &v133 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for NotificationStateWriteRequest(0);
  MEMORY[0x28223BE20](v11 - 8);
  v146 = (&v133 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  BiomeStreamRequest = type metadata accessor for GetBiomeStreamRequest(0);
  MEMORY[0x28223BE20](BiomeStreamRequest - 8);
  v145 = (&v133 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for ActivityClearRequest(0);
  MEMORY[0x28223BE20](v15 - 8);
  v143 = (&v133 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = type metadata accessor for ActivityStatusRequest(0);
  MEMORY[0x28223BE20](v17 - 8);
  v144 = &v133 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DisplayDelayedOfferRequest(0);
  MEMORY[0x28223BE20](v19 - 8);
  v142 = (&v133 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = type metadata accessor for SetCliActivityRequest(0);
  MEMORY[0x28223BE20](v21 - 8);
  v141 = &v133 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for NotificationPendingRequest(0);
  MEMORY[0x28223BE20](v23 - 8);
  v140 = &v133 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for DataRequest(0);
  MEMORY[0x28223BE20](v25 - 8);
  v138 = (&v133 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  StateRequest = type metadata accessor for GetStateRequest(0);
  MEMORY[0x28223BE20](StateRequest - 8);
  v139 = &v133 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for FeaturesRequest(0);
  MEMORY[0x28223BE20](v29 - 8);
  v137 = (&v133 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = type metadata accessor for NewOfferRequest(0);
  MEMORY[0x28223BE20](v31 - 8);
  v136 = &v133 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = type metadata accessor for PingRequest(0);
  MEMORY[0x28223BE20](v134);
  v135 = &v133 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  v35 = MEMORY[0x28223BE20](v34);
  v161 = (&v133 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = MEMORY[0x28223BE20](v35);
  v162 = &v133 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v159 = (&v133 - v40);
  v41 = MEMORY[0x28223BE20](v39);
  v163 = (&v133 - v42);
  v43 = MEMORY[0x28223BE20](v41);
  v160 = &v133 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v158 = (&v133 - v46);
  v47 = MEMORY[0x28223BE20](v45);
  v156 = (&v133 - v48);
  v49 = MEMORY[0x28223BE20](v47);
  v155 = (&v133 - v50);
  v51 = MEMORY[0x28223BE20](v49);
  v157 = &v133 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v153 = (&v133 - v54);
  v55 = MEMORY[0x28223BE20](v53);
  v57 = &v133 - v56;
  v58 = MEMORY[0x28223BE20](v55);
  v154 = &v133 - v59;
  v60 = MEMORY[0x28223BE20](v58);
  v62 = (&v133 - v61);
  v63 = MEMORY[0x28223BE20](v60);
  v65 = &v133 - v64;
  v66 = MEMORY[0x28223BE20](v63);
  v68 = (&v133 - v67);
  v69 = MEMORY[0x28223BE20](v66);
  v71 = &v133 - v70;
  MEMORY[0x28223BE20](v69);
  v73 = &v133 - v72;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A25738, &unk_275AEEB38);
  v75 = MEMORY[0x28223BE20](v74 - 8);
  v77 = &v133 - v76;
  v78 = *(v75 + 56);
  sub_275A9FC7C(v165, &v133 - v76, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
  v165 = v78;
  sub_275A9FC7C(v164, &v77[v78], type metadata accessor for SubscriptionClientRequest.OneOf_Type);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_275A9FC7C(v77, v71, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
      v104 = v165;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v105 = v136;
        sub_275A9ED50(&v77[v104], v136, type metadata accessor for NewOfferRequest);
        BiomeStreamRequestV2eeoiySbAC_ACtFZ_0 = _s31iCloudSubscriptionOptimizerCore15NewOfferRequestV2eeoiySbAC_ACtFZ_0(v71, v105);
        v96 = type metadata accessor for NewOfferRequest;
        sub_275A9FCE4(v105, type metadata accessor for NewOfferRequest);
        v97 = v71;
        goto LABEL_37;
      }

      v120 = type metadata accessor for NewOfferRequest;
      goto LABEL_60;
    case 2u:
      sub_275A9FC7C(v77, v68, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
      v94 = v165;
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v95 = v137;
        sub_275A9ED50(&v77[v94], v137, type metadata accessor for FeaturesRequest);
        BiomeStreamRequestV2eeoiySbAC_ACtFZ_0 = _s31iCloudSubscriptionOptimizerCore15FeaturesRequestV2eeoiySbAC_ACtFZ_0(v68, v95);
        v96 = type metadata accessor for FeaturesRequest;
        sub_275A9FCE4(v95, type metadata accessor for FeaturesRequest);
        v97 = v68;
        goto LABEL_37;
      }

      v80 = type metadata accessor for FeaturesRequest;
      v81 = v68;
      goto LABEL_61;
    case 3u:
      sub_275A9FC7C(v77, v65, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
      v99 = v165;
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v100 = v139;
        sub_275A9ED50(&v77[v99], v139, type metadata accessor for GetStateRequest);
        sub_275AE52A4();
        v91 = v77;
        sub_275ADD244(&qword_280A24638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        BiomeStreamRequestV2eeoiySbAC_ACtFZ_0 = sub_275AE5664();
        v101 = type metadata accessor for GetStateRequest;
        sub_275A9FCE4(v100, type metadata accessor for GetStateRequest);
        v102 = v65;
        goto LABEL_41;
      }

      v80 = type metadata accessor for GetStateRequest;
      v81 = v65;
      goto LABEL_61;
    case 4u:
      sub_275A9FC7C(v77, v62, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
      v88 = v165;
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v83 = v138;
        sub_275A9ED50(&v77[v88], v138, type metadata accessor for DataRequest);
        BiomeStreamRequestV2eeoiySbAC_ACtFZ_0 = _s31iCloudSubscriptionOptimizerCore11DataRequestV2eeoiySbAC_ACtFZ_0(v62, v83);
        v85 = type metadata accessor for DataRequest;
        goto LABEL_36;
      }

      v119 = type metadata accessor for DataRequest;
      goto LABEL_58;
    case 5u:
      v71 = v154;
      sub_275A9FC7C(v77, v154, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
      v106 = v165;
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v90 = v140;
        sub_275A9ED50(&v77[v106], v140, type metadata accessor for NotificationPendingRequest);
        sub_275AE52A4();
        v91 = v77;
        sub_275ADD244(&qword_280A24638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        BiomeStreamRequestV2eeoiySbAC_ACtFZ_0 = sub_275AE5664();
        v92 = type metadata accessor for NotificationPendingRequest;
        goto LABEL_40;
      }

      v120 = type metadata accessor for NotificationPendingRequest;
      goto LABEL_60;
    case 6u:
      sub_275A9FC7C(v77, v57, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
      v114 = v165;
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        v115 = v141;
        sub_275A9ED50(&v77[v114], v141, type metadata accessor for SetCliActivityRequest);
        BiomeStreamRequestV2eeoiySbAC_ACtFZ_0 = sub_275AD7DF4(v57, v115, type metadata accessor for SetCliActivityRequest);
        v91 = v77;
        sub_275A9FCE4(v115, type metadata accessor for SetCliActivityRequest);
        v102 = v57;
        v116 = type metadata accessor for SetCliActivityRequest;
        goto LABEL_42;
      }

      v80 = type metadata accessor for SetCliActivityRequest;
      v81 = v57;
      goto LABEL_61;
    case 7u:
      v62 = v153;
      sub_275A9FC7C(v77, v153, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
      v103 = v165;
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        v83 = v142;
        sub_275A9ED50(&v77[v103], v142, type metadata accessor for DisplayDelayedOfferRequest);
        BiomeStreamRequestV2eeoiySbAC_ACtFZ_0 = _s31iCloudSubscriptionOptimizerCore26DisplayDelayedOfferRequestV2eeoiySbAC_ACtFZ_0(v62, v83);
        v85 = type metadata accessor for DisplayDelayedOfferRequest;
        goto LABEL_36;
      }

      v119 = type metadata accessor for DisplayDelayedOfferRequest;
      goto LABEL_58;
    case 8u:
      v71 = v157;
      sub_275A9FC7C(v77, v157, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
      v118 = v165;
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        v90 = v144;
        sub_275A9ED50(&v77[v118], v144, type metadata accessor for ActivityStatusRequest);
        sub_275AE52A4();
        v91 = v77;
        sub_275ADD244(&qword_280A24638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        BiomeStreamRequestV2eeoiySbAC_ACtFZ_0 = sub_275AE5664();
        v92 = type metadata accessor for ActivityStatusRequest;
        goto LABEL_40;
      }

      v120 = type metadata accessor for ActivityStatusRequest;
      goto LABEL_60;
    case 9u:
      v62 = v155;
      sub_275A9FC7C(v77, v155, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
      v93 = v165;
      if (swift_getEnumCaseMultiPayload() == 9)
      {
        v83 = v143;
        sub_275A9ED50(&v77[v93], v143, type metadata accessor for ActivityClearRequest);
        BiomeStreamRequestV2eeoiySbAC_ACtFZ_0 = _s31iCloudSubscriptionOptimizerCore20ActivityClearRequestV2eeoiySbAC_ACtFZ_0(v62, v83);
        v85 = type metadata accessor for ActivityClearRequest;
        goto LABEL_36;
      }

      v119 = type metadata accessor for ActivityClearRequest;
      goto LABEL_58;
    case 0xAu:
      v62 = v156;
      sub_275A9FC7C(v77, v156, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
      v117 = v165;
      if (swift_getEnumCaseMultiPayload() == 10)
      {
        v83 = v145;
        sub_275A9ED50(&v77[v117], v145, type metadata accessor for GetBiomeStreamRequest);
        BiomeStreamRequestV2eeoiySbAC_ACtFZ_0 = _s31iCloudSubscriptionOptimizerCore21GetBiomeStreamRequestV2eeoiySbAC_ACtFZ_0(v62, v83);
        v85 = type metadata accessor for GetBiomeStreamRequest;
        goto LABEL_36;
      }

      v119 = type metadata accessor for GetBiomeStreamRequest;
      goto LABEL_58;
    case 0xBu:
      v62 = v158;
      sub_275A9FC7C(v77, v158, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
      v87 = v165;
      if (swift_getEnumCaseMultiPayload() == 11)
      {
        v83 = v146;
        sub_275A9ED50(&v77[v87], v146, type metadata accessor for NotificationStateWriteRequest);
        BiomeStreamRequestV2eeoiySbAC_ACtFZ_0 = _s31iCloudSubscriptionOptimizerCore29NotificationStateWriteRequestV2eeoiySbAC_ACtFZ_0(v62, v83);
        v85 = type metadata accessor for NotificationStateWriteRequest;
        goto LABEL_36;
      }

      v119 = type metadata accessor for NotificationStateWriteRequest;
      goto LABEL_58;
    case 0xCu:
      v71 = v160;
      sub_275A9FC7C(v77, v160, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
      v89 = v165;
      if (swift_getEnumCaseMultiPayload() == 12)
      {
        v90 = v148;
        sub_275A9ED50(&v77[v89], v148, type metadata accessor for ActivityHistoryRequest);
        sub_275AE52A4();
        v91 = v77;
        sub_275ADD244(&qword_280A24638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        BiomeStreamRequestV2eeoiySbAC_ACtFZ_0 = sub_275AE5664();
        v92 = type metadata accessor for ActivityHistoryRequest;
        goto LABEL_40;
      }

      v120 = type metadata accessor for ActivityHistoryRequest;
      goto LABEL_60;
    case 0xDu:
      v62 = v163;
      sub_275A9FC7C(v77, v163, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
      v107 = v165;
      if (swift_getEnumCaseMultiPayload() != 13)
      {
        v119 = type metadata accessor for MobileAssetDownloadRequest;
        goto LABEL_58;
      }

      v108 = v150;
      sub_275A9ED50(&v77[v107], v150, type metadata accessor for MobileAssetDownloadRequest);
      v109 = *(v147 + 20);
      v110 = (v62 + v109);
      v111 = *(v62 + v109 + 8);
      v112 = (v108 + v109);
      v113 = *(v108 + v109 + 8);
      if (v111)
      {
        if (!v113)
        {
LABEL_31:
          sub_275A9FCE4(v108, type metadata accessor for MobileAssetDownloadRequest);
          goto LABEL_75;
        }
      }

      else
      {
        if (*v110 != *v112)
        {
          LOBYTE(v113) = 1;
        }

        if (v113)
        {
          goto LABEL_31;
        }
      }

      sub_275AE52A4();
      sub_275ADD244(&qword_280A24638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v128 = sub_275AE5664();
      sub_275A9FCE4(v108, type metadata accessor for MobileAssetDownloadRequest);
      if (v128)
      {
        v129 = type metadata accessor for MobileAssetDownloadRequest;
        v130 = v62;
        goto LABEL_79;
      }

LABEL_75:
      v131 = type metadata accessor for MobileAssetDownloadRequest;
      v132 = v62;
LABEL_81:
      sub_275A9FCE4(v132, v131);
      sub_275A9FCE4(v77, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
      goto LABEL_62;
    case 0xEu:
      v62 = v159;
      sub_275A9FC7C(v77, v159, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
      v86 = v165;
      if (swift_getEnumCaseMultiPayload() == 14)
      {
        v83 = v149;
        sub_275A9ED50(&v77[v86], v149, type metadata accessor for ShadowEvaluationRequest);
        BiomeStreamRequestV2eeoiySbAC_ACtFZ_0 = _s31iCloudSubscriptionOptimizerCore23ShadowEvaluationRequestV2eeoiySbAC_ACtFZ_0(v62, v83);
        v85 = type metadata accessor for ShadowEvaluationRequest;
        goto LABEL_36;
      }

      v119 = type metadata accessor for ShadowEvaluationRequest;
      goto LABEL_58;
    case 0xFu:
      v71 = v162;
      sub_275A9FC7C(v77, v162, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
      v98 = v165;
      if (swift_getEnumCaseMultiPayload() == 15)
      {
        v90 = v152;
        sub_275A9ED50(&v77[v98], v152, type metadata accessor for MobileAssetGetVersionRequest);
        sub_275AE52A4();
        v91 = v77;
        sub_275ADD244(&qword_280A24638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        BiomeStreamRequestV2eeoiySbAC_ACtFZ_0 = sub_275AE5664();
        v92 = type metadata accessor for MobileAssetGetVersionRequest;
LABEL_40:
        v101 = v92;
        sub_275A9FCE4(v90, v92);
        v102 = v71;
LABEL_41:
        v116 = v101;
LABEL_42:
        sub_275A9FCE4(v102, v116);
        sub_275A9FCE4(v91, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
        return BiomeStreamRequestV2eeoiySbAC_ACtFZ_0 & 1;
      }

      v120 = type metadata accessor for MobileAssetGetVersionRequest;
LABEL_60:
      v80 = v120;
      v81 = v71;
      goto LABEL_61;
    case 0x10u:
      v62 = v161;
      sub_275A9FC7C(v77, v161, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
      v82 = v165;
      if (swift_getEnumCaseMultiPayload() == 16)
      {
        v83 = v151;
        sub_275A9ED50(&v77[v82], v151, type metadata accessor for DeleteDaemonStateRequest);
        BiomeStreamRequestV2eeoiySbAC_ACtFZ_0 = _s31iCloudSubscriptionOptimizerCore24DeleteDaemonStateRequestV2eeoiySbAC_ACtFZ_0(v62, v83);
        v85 = type metadata accessor for DeleteDaemonStateRequest;
LABEL_36:
        v96 = v85;
        sub_275A9FCE4(v83, v85);
        v97 = v62;
LABEL_37:
        sub_275A9FCE4(v97, v96);
        sub_275A9FCE4(v77, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
        return BiomeStreamRequestV2eeoiySbAC_ACtFZ_0 & 1;
      }

      v119 = type metadata accessor for DeleteDaemonStateRequest;
LABEL_58:
      v80 = v119;
      v81 = v62;
      goto LABEL_61;
    default:
      sub_275A9FC7C(v77, v73, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
      v79 = v165;
      if (!swift_getEnumCaseMultiPayload())
      {
        v122 = v135;
        sub_275A9ED50(&v77[v79], v135, type metadata accessor for PingRequest);
        v123 = *(v134 + 20);
        v124 = &v73[v123];
        v125 = *&v73[v123 + 8];
        v126 = (v122 + v123);
        v127 = v126[1];
        if (v125)
        {
          if (!v127 || (*v124 != *v126 || v125 != v127) && (sub_275AE5AC4() & 1) == 0)
          {
            goto LABEL_80;
          }
        }

        else if (v127)
        {
          goto LABEL_80;
        }

        sub_275AE52A4();
        sub_275ADD244(&qword_280A24638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        if (sub_275AE5664())
        {
          sub_275A9FCE4(v122, type metadata accessor for PingRequest);
          v130 = v73;
          v129 = type metadata accessor for PingRequest;
LABEL_79:
          sub_275A9FCE4(v130, v129);
          sub_275A9FCE4(v77, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
          BiomeStreamRequestV2eeoiySbAC_ACtFZ_0 = 1;
          return BiomeStreamRequestV2eeoiySbAC_ACtFZ_0 & 1;
        }

LABEL_80:
        sub_275A9FCE4(v122, type metadata accessor for PingRequest);
        v132 = v73;
        v131 = type metadata accessor for PingRequest;
        goto LABEL_81;
      }

      v80 = type metadata accessor for PingRequest;
      v81 = v73;
LABEL_61:
      sub_275A9FCE4(v81, v80);
      sub_275A5FE04(v77, &qword_280A25738, &unk_275AEEB38);
LABEL_62:
      BiomeStreamRequestV2eeoiySbAC_ACtFZ_0 = 0;
      return BiomeStreamRequestV2eeoiySbAC_ACtFZ_0 & 1;
  }
}

uint64_t sub_275ADD244(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_275ADD290()
{
  result = qword_280A24FE0;
  if (!qword_280A24FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A24FE0);
  }

  return result;
}

unint64_t sub_275ADD2E8()
{
  result = qword_280A24FE8;
  if (!qword_280A24FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A24FE8);
  }

  return result;
}

unint64_t sub_275ADD340()
{
  result = qword_280A24FF0;
  if (!qword_280A24FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A24FF0);
  }

  return result;
}

unint64_t sub_275ADD3C8()
{
  result = qword_280A25008;
  if (!qword_280A25008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A25008);
  }

  return result;
}

unint64_t sub_275ADD420()
{
  result = qword_280A25010;
  if (!qword_280A25010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A25010);
  }

  return result;
}

unint64_t sub_275ADD478()
{
  result = qword_280A25018;
  if (!qword_280A25018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A25018);
  }

  return result;
}

unint64_t sub_275ADD500()
{
  result = qword_281410C28;
  if (!qword_281410C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281410C28);
  }

  return result;
}

unint64_t sub_275ADD558()
{
  result = qword_281410C18;
  if (!qword_281410C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281410C18);
  }

  return result;
}

unint64_t sub_275ADD5B0()
{
  result = qword_281410C20;
  if (!qword_281410C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281410C20);
  }

  return result;
}

void sub_275AE0384(uint64_t a1)
{
  sub_275AE52A4();
  if (v1 <= 0x3F)
  {
    sub_275AE1E64(319, &qword_28140FF68, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_275AE04F8(319, &qword_281412450, type metadata accessor for LitmusInfo, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_275AE1E64(319, &qword_28140FF48, MEMORY[0x277D84A28], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_275AE04F8(319, &qword_281412150, type metadata accessor for QuotaServerState, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_275AE04F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_275AE0584(uint64_t a1)
{
  sub_275AE52A4();
  if (v1 <= 0x3F)
  {
    sub_275AE1E64(319, &qword_280A24CC8, &type metadata for NewOfferAction, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_275AE1E64(319, &qword_28140FF48, MEMORY[0x277D84A28], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_275AE04F8(319, &qword_281412150, type metadata accessor for QuotaServerState, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_275AE1E64(319, &qword_28140FF88, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_275AE0718(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  sub_275AE52A4();
  if (v7 <= 0x3F)
  {
    sub_275AE1E64(319, a4, a5, MEMORY[0x277D83D88]);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_275AE0854(uint64_t a1)
{
  sub_275AE52A4();
  if (v1 <= 0x3F)
  {
    sub_275AE1E64(319, &qword_28140FF88, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_275AE0924(uint64_t a1)
{
  sub_275AE04F8(319, &qword_280A253B8, type metadata accessor for FeatureDetails, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_275AE52A4();
    if (v2 <= 0x3F)
    {
      sub_275AE1E64(319, &qword_28140FF48, MEMORY[0x277D84A28], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_275AE0AAC(uint64_t a1)
{
  sub_275AE52A4();
  if (v1 <= 0x3F)
  {
    sub_275AE1E64(319, &qword_28140FF48, MEMORY[0x277D84A28], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_275AE1E64(319, &qword_280A24A58, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_275AE0BC8(uint64_t a1)
{
  sub_275AE1E64(319, &qword_280A24A40, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_275AE52A4();
    if (v2 <= 0x3F)
    {
      sub_275AE1E64(319, &qword_280A24A58, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_275AE0D20(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5, unint64_t *a6, uint64_t a7)
{
  sub_275AE52A4();
  if (v11 <= 0x3F)
  {
    sub_275AE1E64(319, a4, a5, MEMORY[0x277D83D88]);
    if (v12 <= 0x3F)
    {
      sub_275AE1E64(319, a6, a7, MEMORY[0x277D83D88]);
      if (v13 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_275AE10C8(uint64_t a1)
{
  sub_275AE52A4();
  if (v1 <= 0x3F)
  {
    sub_275AE1E64(319, &qword_28140FF88, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_275AE1E64(319, &qword_280A25438, &type metadata for ActivityStatusResponse.Activity.Status, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_275AE04F8(319, &qword_280A25440, type metadata accessor for ActivityStatusResponse.Activity.Criteria, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_136Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_275AE52A4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      v11 = ((v10 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v11 = -2;
    }

    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_index_137Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_275AE52A4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 2;
  }

  return result;
}

void sub_275AE13E4(uint64_t a1)
{
  sub_275AE52A4();
  if (v1 <= 0x3F)
  {
    sub_275AE1E64(319, &qword_280A24A58, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_275AE14E4(uint64_t a1)
{
  sub_275AE52A4();
  if (v1 <= 0x3F)
  {
    sub_275AE1E64(319, &qword_28140FF48, MEMORY[0x277D84A28], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_275AE1E64(319, &qword_280A25478, &type metadata for GetBiomeStreamRequest.StreamType, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_100Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v10 = sub_275AE52A4();
  v11 = *(v10 - 8);
  if (*(v11 + 84) == a2)
  {
    v12 = *(v11 + 48);

    return v12(a1, a2, v10);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v15 = *(*(v14 - 8) + 48);
    v16 = a1 + *(a3 + 20);

    return v15(v16, a2, v14);
  }
}

uint64_t __swift_store_extra_inhabitant_index_101Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v12 = sub_275AE52A4();
  v13 = *(v12 - 8);
  if (*(v13 + 84) == a3)
  {
    v14 = *(v13 + 56);

    return v14(a1, a2, a2, v12);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v17 = *(*(v16 - 8) + 56);
    v18 = a1 + *(a4 + 20);

    return v17(v18, a2, a2, v16);
  }
}

void sub_275AE18C8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_275AE52A4();
  if (v7 <= 0x3F)
  {
    sub_275AE04F8(319, a4, a5, MEMORY[0x277D83D88]);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_275AE19A0(uint64_t a1)
{
  sub_275AE1E64(319, &qword_280A24A40, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_275AE52A4();
    if (v2 <= 0x3F)
    {
      sub_275AE1E64(319, &qword_28140FF48, MEMORY[0x277D84A28], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_275AE1E64(319, &qword_280A24A58, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_64Tm(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_275AE52A4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_index_65Tm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_275AE52A4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_275AE1C60(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  sub_275AE1E64(319, &qword_280A24A40, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  if (v7 <= 0x3F)
  {
    sub_275AE52A4();
    if (v8 <= 0x3F)
    {
      sub_275AE1E64(319, a4, a5, MEMORY[0x277D83D88]);
      if (v9 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_91Tm(uint64_t a1, uint64_t a2)
{
  v4 = sub_275AE52A4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_index_92Tm(uint64_t a1, uint64_t a2)
{
  v4 = sub_275AE52A4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_275AE1E64(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_275AE52A4();
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

uint64_t __swift_store_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_275AE52A4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_275AE20E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  result = a7(319, a4, a5, a6);
  if (v8 <= 0x3F)
  {
    result = sub_275AE52A4();
    if (v9 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_275AE2178(uint64_t a1)
{
  result = type metadata accessor for PingRequest(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for NewOfferRequest(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for FeaturesRequest(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for GetStateRequest(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for DataRequest(319);
          if (v6 <= 0x3F)
          {
            result = type metadata accessor for NotificationPendingRequest(319);
            if (v7 <= 0x3F)
            {
              result = type metadata accessor for SetCliActivityRequest(319);
              if (v8 <= 0x3F)
              {
                result = type metadata accessor for DisplayDelayedOfferRequest(319);
                if (v9 <= 0x3F)
                {
                  result = type metadata accessor for ActivityStatusRequest(319);
                  if (v10 <= 0x3F)
                  {
                    result = type metadata accessor for ActivityClearRequest(319);
                    if (v11 <= 0x3F)
                    {
                      result = type metadata accessor for GetBiomeStreamRequest(319);
                      if (v12 <= 0x3F)
                      {
                        result = type metadata accessor for NotificationStateWriteRequest(319);
                        if (v13 <= 0x3F)
                        {
                          result = type metadata accessor for ActivityHistoryRequest(319);
                          if (v14 <= 0x3F)
                          {
                            result = type metadata accessor for MobileAssetDownloadRequest(319);
                            if (v15 <= 0x3F)
                            {
                              result = type metadata accessor for ShadowEvaluationRequest(319);
                              if (v16 <= 0x3F)
                              {
                                result = type metadata accessor for MobileAssetGetVersionRequest(319);
                                if (v17 <= 0x3F)
                                {
                                  result = type metadata accessor for DeleteDaemonStateRequest(319);
                                  if (v18 <= 0x3F)
                                  {
                                    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                                    return 0;
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

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_377Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a2)
  {
    v10 = *(v9 + 48);

    return v10(a1, a2, v8);
  }

  else
  {
    v12 = sub_275AE52A4();
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 20);

    return v13(v14, a2, v12);
  }
}

uint64_t __swift_store_extra_inhabitant_index_378Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v11 = *(v10 - 8);
  if (*(v11 + 84) == a3)
  {
    v12 = *(v11 + 56);

    return v12(a1, a2, a2, v10);
  }

  else
  {
    v14 = sub_275AE52A4();
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 20);

    return v15(v16, a2, a2, v14);
  }
}

uint64_t sub_275AE257C(uint64_t a1)
{
  result = type metadata accessor for ErrorResponse(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for PingResponse(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for NewOfferResponse(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for FeaturesResponse(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for GetStateResponse(319);
          if (v6 <= 0x3F)
          {
            result = type metadata accessor for DataResponse(319);
            if (v7 <= 0x3F)
            {
              result = type metadata accessor for NotificationPendingResponse(319);
              if (v8 <= 0x3F)
              {
                result = type metadata accessor for SetCliActivityResponse(319);
                if (v9 <= 0x3F)
                {
                  result = type metadata accessor for DisplayDelayedOfferResponse(319);
                  if (v10 <= 0x3F)
                  {
                    result = type metadata accessor for ActivityStatusResponse(319);
                    if (v11 <= 0x3F)
                    {
                      result = type metadata accessor for ActivityClearResponse(319);
                      if (v12 <= 0x3F)
                      {
                        result = type metadata accessor for GetBiomeStreamResponse(319);
                        if (v13 <= 0x3F)
                        {
                          result = type metadata accessor for NotificationStateWriteResponse(319);
                          if (v14 <= 0x3F)
                          {
                            result = type metadata accessor for ActivityHistoryResponse(319);
                            if (v15 <= 0x3F)
                            {
                              result = type metadata accessor for MobileAssetDownloadResponse(319);
                              if (v16 <= 0x3F)
                              {
                                result = type metadata accessor for ShadowEvaluationResponse(319);
                                if (v17 <= 0x3F)
                                {
                                  result = type metadata accessor for MobileAssetGetVersionResponse(319);
                                  if (v18 <= 0x3F)
                                  {
                                    result = type metadata accessor for DeleteDaemonStateResponse(319);
                                    if (v19 <= 0x3F)
                                    {
                                      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                                      return 0;
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

  return result;
}

unint64_t sub_275AE2730()
{
  result = qword_281410C30[0];
  if (!qword_281410C30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281410C30);
  }

  return result;
}

unint64_t sub_275AE2784()
{
  result = qword_280A255E8;
  if (!qword_280A255E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A255E8);
  }

  return result;
}

unint64_t sub_275AE27D8()
{
  result = qword_280A255F0;
  if (!qword_280A255F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A255F0);
  }

  return result;
}

uint64_t XpcSubscriptionClientConnection.__allocating_init(onError:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for XpcSubscriptionClientConnection();
  v4 = swift_allocObject();
  XpcSubscriptionClientConnection.init(forServiceName:onError:)(0xD000000000000031, 0x8000000275AEF080, a1, a2);
  return v4;
}

uint64_t sub_275AE2BD8()
{
  v0 = type metadata accessor for Logger(0);
  v1 = MEMORY[0x28223BE20](v0);
  v3 = (v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_allocate_value_buffer(v1, qword_280A25740);
  v4 = __swift_project_value_buffer(v0, qword_280A25740);
  v7[1] = type metadata accessor for XpcSubscriptionClientConnection();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A25770, "z=");
  *v3 = sub_275AE56E4();
  v3[1] = v5;

  sub_275AE5594();
  return sub_275A7B5F0(v3, v4);
}

uint64_t XpcSubscriptionClientConnection.__allocating_init(forServiceName:onError:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  XpcSubscriptionClientConnection.init(forServiceName:onError:)(a1, a2, a3, a4);
  return v8;
}

uint64_t *XpcSubscriptionClientConnection.init(forServiceName:onError:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  v8 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v9 = sub_275AE5674();

  v10 = [v8 initWithMachServiceName:v9 options:0];

  v4[2] = v10;
  v11 = objc_opt_self();
  v12 = v10;
  v13 = [v11 interfaceWithProtocol_];
  [v12 setRemoteObjectInterface_];

  [v4[2] resume];
  v14 = v4[2];
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = v7;
  v21[4] = sub_275AE336C;
  v21[5] = v15;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 1107296256;
  v21[2] = sub_275AE316C;
  v21[3] = &block_descriptor_2;
  v16 = _Block_copy(v21);
  v17 = v14;

  v18 = [v17 remoteObjectProxyWithErrorHandler_];
  _Block_release(v16);

  sub_275AE59A4();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A25758, &qword_275AEEB48);
  if (swift_dynamicCast())
  {
    v19 = v21[7];

    v4[3] = v19;
  }

  else
  {
    sub_275AE3390();
    swift_allocError();
    swift_willThrow();

    type metadata accessor for XpcSubscriptionClientConnection();
    swift_deallocPartialClassInstance();
  }

  return v4;
}

uint64_t sub_275AE3034(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (qword_280A24548 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger(0);
  __swift_project_value_buffer(v4, qword_280A25740);
  sub_275AE5A14();
  MEMORY[0x277C86E00](0xD00000000000001ALL, 0x8000000275AF1630);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A25810, &unk_275AE93E0);
  sub_275AE5A44();
  MEMORY[0x277C86E00](46, 0xE100000000000000);
  sub_275A7B8C0(3u, 0, 0xE000000000000000);

  return a2(a1);
}

void sub_275AE316C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t XpcSubscriptionClientConnection.XpcError.hashValue.getter()
{
  sub_275AE5B54();
  MEMORY[0x277C871E0](0);
  return sub_275AE5B74();
}

uint64_t sub_275AE3258()
{
  sub_275AE5B54();
  MEMORY[0x277C871E0](0);
  return sub_275AE5B74();
}

uint64_t sub_275AE32C4(uint64_t a1)
{
  sub_275AE5B54();
  MEMORY[0x277C871E0](0);
  return sub_275AE5B74();
}

uint64_t XpcSubscriptionClientConnection.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_275AE3390()
{
  result = qword_280A25760;
  if (!qword_280A25760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A25760);
  }

  return result;
}

unint64_t sub_275AE33E8()
{
  result = qword_280A25768;
  if (!qword_280A25768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A25768);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for XpcSubscriptionClientConnection.XpcError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for XpcSubscriptionClientConnection.XpcError(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_275AE3564(uint64_t a1, void *a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v11 = type metadata accessor for Logger(0);
  MEMORY[0x28223BE20](v11);
  a3(0);
  sub_275AE4600(a4, a5, a6);
  v12 = sub_275AE5454();
  v14 = v13;
  v15 = objc_allocWithZone(MEMORY[0x277CBEA90]);
  sub_275A9CC80(v12, v14);
  v16 = sub_275AE5154();
  v17 = [v15 initWithData_];

  sub_275A785F8(v12, v14);
  v18 = sub_275AE5674();
  [a2 encodeObject:v17 forKey:v18];

  return sub_275A785F8(v12, v14);
}

uint64_t sub_275AE3860@<X0>(uint64_t (*a1)(void)@<X1>, unint64_t *a2@<X2>, uint64_t (*a3)(uint64_t)@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for Logger(0);
  MEMORY[0x28223BE20](v10);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_275AE5304();
  MEMORY[0x28223BE20](v13 - 8);
  sub_275A9CFE0();
  v14 = sub_275AE5924();
  if (v14)
  {
    v15 = v14;
    v21[1] = v12;
    v16 = a1(0);
    v17 = v15;
    sub_275A9C4A4(v17);
    v24 = 0;
    v22 = 0u;
    v23 = 0u;
    sub_275AE52F4();
    sub_275AE4600(a2, a3, a4);
    sub_275AE5444();

    return (*(*(v16 - 8) + 56))(a5, 0, 1, v16);
  }

  else
  {
    if (qword_280A243F0 != -1)
    {
      swift_once();
    }

    v18 = __swift_project_value_buffer(v10, qword_280A24E18);
    sub_275AE4538(v18, v12, type metadata accessor for Logger);
    sub_275A7B8C0(3u, 0xD000000000000030, 0x8000000275AF10C0);
    sub_275AE45A0(v12, type metadata accessor for Logger);
    v19 = a1(0);
    return (*(*(v19 - 8) + 56))(a5, 1, 1, v19);
  }
}

id XpcSubscriptionClientRequest.__allocating_init(withProto:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  sub_275AE4538(a1, v3 + OBJC_IVAR___ISOXpcSubscriptionClientRequest_proto, type metadata accessor for SubscriptionClientRequest);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_275AE45A0(a1, type metadata accessor for SubscriptionClientRequest);
  return v4;
}

uint64_t sub_275AE3CCC()
{
  v0 = type metadata accessor for Logger(0);
  v1 = MEMORY[0x28223BE20](v0);
  v3 = (v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_allocate_value_buffer(v1, qword_280A25780);
  v4 = __swift_project_value_buffer(v0, qword_280A25780);
  v7[1] = type metadata accessor for XpcSubscriptionClientRequest(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A25818, "^=");
  *v3 = sub_275AE56E4();
  v3[1] = v5;

  sub_275AE5594();
  return sub_275AE4648(v3, v4, type metadata accessor for Logger);
}

id XpcSubscriptionClientRequest.init(withProto:)(uint64_t a1)
{
  sub_275AE4538(a1, v1 + OBJC_IVAR___ISOXpcSubscriptionClientRequest_proto, type metadata accessor for SubscriptionClientRequest);
  v5.receiver = v1;
  v5.super_class = type metadata accessor for XpcSubscriptionClientRequest(0);
  v3 = objc_msgSendSuper2(&v5, sel_init);
  sub_275AE45A0(a1, type metadata accessor for SubscriptionClientRequest);
  return v3;
}

uint64_t type metadata accessor for XpcSubscriptionClientRequest(uint64_t a1)
{
  result = qword_281411E98;
  if (!qword_281411E98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id XpcSubscriptionClientRequest.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A25798, &qword_275AEEC50);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = type metadata accessor for SubscriptionClientRequest(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275AE3860(type metadata accessor for SubscriptionClientRequest, qword_281411C70, type metadata accessor for SubscriptionClientRequest, &protocol conformance descriptor for SubscriptionClientRequest, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_275AE41E0(v6);
    if (qword_280A24550 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger(0);
    __swift_project_value_buffer(v11, qword_280A25780);
    sub_275A7B8C0(3u, 0xD000000000000025, 0x8000000275AF1650);

    type metadata accessor for XpcSubscriptionClientRequest(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    sub_275AE4648(v6, v10, type metadata accessor for SubscriptionClientRequest);
    sub_275AE4648(v10, v2 + OBJC_IVAR___ISOXpcSubscriptionClientRequest_proto, type metadata accessor for SubscriptionClientRequest);
    v13 = type metadata accessor for XpcSubscriptionClientRequest(0);
    v15.receiver = v2;
    v15.super_class = v13;
    v14 = objc_msgSendSuper2(&v15, sel_init);

    return v14;
  }
}

uint64_t sub_275AE41E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A25798, &qword_275AEEC50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id XpcSubscriptionClientRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id XpcSubscriptionClientRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for XpcSubscriptionClientRequest(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_275AE44A8(uint64_t a1)
{
  result = type metadata accessor for SubscriptionClientRequest(319);
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

uint64_t sub_275AE4538(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_275AE45A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_275AE4600(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_275AE4648(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id XpcSubscriptionClientResponse.__allocating_init(fromProto:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  sub_275AE4CF0(a1, v3 + OBJC_IVAR___ISOXpcSubscriptionClientResponse_proto, type metadata accessor for SubscriptionClientResponse);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_275AE4D58(a1, type metadata accessor for SubscriptionClientResponse);
  return v4;
}

uint64_t sub_275AE4740()
{
  v0 = type metadata accessor for Logger(0);
  v1 = MEMORY[0x28223BE20](v0);
  v3 = (v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_allocate_value_buffer(v1, qword_280A25880);
  v4 = __swift_project_value_buffer(v0, qword_280A25880);
  v7[1] = type metadata accessor for SubscriptionClientResponse(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A258A8, "<=");
  *v3 = sub_275AE56E4();
  v3[1] = v5;

  sub_275AE5594();
  return sub_275AE500C(v3, v4, type metadata accessor for Logger);
}

id XpcSubscriptionClientResponse.init(fromProto:)(uint64_t a1)
{
  sub_275AE4CF0(a1, v1 + OBJC_IVAR___ISOXpcSubscriptionClientResponse_proto, type metadata accessor for SubscriptionClientResponse);
  v5.receiver = v1;
  v5.super_class = type metadata accessor for XpcSubscriptionClientResponse(0);
  v3 = objc_msgSendSuper2(&v5, sel_init);
  sub_275AE4D58(a1, type metadata accessor for SubscriptionClientResponse);
  return v3;
}

uint64_t type metadata accessor for XpcSubscriptionClientResponse(uint64_t a1)
{
  result = qword_281411E88;
  if (!qword_281411E88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id XpcSubscriptionClientResponse.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A25898, &qword_275AEEC90);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v18 - v8;
  v10 = type metadata accessor for SubscriptionClientResponse(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275AE3818(v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_275AE4C88(v9);
    if (qword_280A24558 != -1)
    {
      swift_once();
    }

    v14 = __swift_project_value_buffer(v4, qword_280A25880);
    sub_275AE4CF0(v14, v6, type metadata accessor for Logger);
    sub_275A7B8C0(3u, 0xD000000000000025, 0x8000000275AF1740);

    sub_275AE4D58(v6, type metadata accessor for Logger);
    type metadata accessor for XpcSubscriptionClientResponse(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    sub_275AE500C(v9, v13, type metadata accessor for SubscriptionClientResponse);
    sub_275AE500C(v13, v2 + OBJC_IVAR___ISOXpcSubscriptionClientResponse_proto, type metadata accessor for SubscriptionClientResponse);
    v16 = type metadata accessor for XpcSubscriptionClientResponse(0);
    v18.receiver = v2;
    v18.super_class = v16;
    v17 = objc_msgSendSuper2(&v18, sel_init);

    return v17;
  }
}

uint64_t sub_275AE4C88(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A25898, &qword_275AEEC90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_275AE4CF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_275AE4D58(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id XpcSubscriptionClientResponse.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id XpcSubscriptionClientResponse.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for XpcSubscriptionClientResponse(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_275AE4F7C(uint64_t a1)
{
  result = type metadata accessor for SubscriptionClientResponse(319);
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

uint64_t sub_275AE500C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}