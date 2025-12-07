_BYTE **sub_1D20B7B98(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_1D20B7BA8(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_1D20B7C1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D20B7C84(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D20B7CE4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D20B7D40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D20B7DA8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D20B7E10(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

id sub_1D20B7E6C(id a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7250, &qword_1D21149C0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v14 - v3;
  v5 = sub_1D2112F9C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2112ADC();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1D20B829C(v4);
LABEL_4:
    sub_1D20B316C();
    swift_allocError();
    *v12 = 1;
    swift_willThrow();
    return a1;
  }

  (*(v6 + 32))(v8, v4, v5);
  v9 = objc_allocWithZone(MEMORY[0x1E696AC68]);
  v10 = sub_1D2112F2C();
  v11 = sub_1D21137BC();
  a1 = [v9 initWithURL:v10 statusCode:200 HTTPVersion:v11 headerFields:0];

  (*(v6 + 8))(v8, v5);
  if (!a1)
  {
    goto LABEL_4;
  }

  return a1;
}

id static MockURLResponder.urlResponse(to:)(id a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7250, &qword_1D21149C0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v14 - v3;
  v5 = sub_1D2112F9C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2112ADC();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1D20B829C(v4);
LABEL_4:
    sub_1D20B316C();
    swift_allocError();
    *v12 = 1;
    swift_willThrow();
    return a1;
  }

  (*(v6 + 32))(v8, v4, v5);
  v9 = objc_allocWithZone(MEMORY[0x1E696AC68]);
  v10 = sub_1D2112F2C();
  v11 = sub_1D21137BC();
  a1 = [v9 initWithURL:v10 statusCode:200 HTTPVersion:v11 headerFields:0];

  (*(v6 + 8))(v8, v5);
  if (!a1)
  {
    goto LABEL_4;
  }

  return a1;
}

uint64_t sub_1D20B829C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7250, &qword_1D21149C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static MockURLResponder.configResponse()()
{
  v0 = sub_1D211381C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D211380C();
  v4 = sub_1D21137DC();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  if (v6 >> 60 == 15)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1D20B840C()
{
  if (qword_1EE083DE8 != -1)
  {
    swift_once();
  }

  v0 = sub_1D211362C();
  __swift_project_value_buffer(v0, qword_1EE0874C0);
  v1 = sub_1D21135FC();
  v2 = sub_1D2113A7C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1D209F000, v1, v2, "MockURLResponder default empty response being send. Check your code if this intentional!", v3, 2u);
    MEMORY[0x1D3896EB0](v3, -1, -1);
  }

  return 0;
}

uint64_t static MockURLResponder.respond(to:)()
{
  if (qword_1EE083DE8 != -1)
  {
    swift_once();
  }

  v0 = sub_1D211362C();
  __swift_project_value_buffer(v0, qword_1EE0874C0);
  v1 = sub_1D21135FC();
  v2 = sub_1D2113A7C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1D209F000, v1, v2, "MockURLResponder default empty response being send. Check your code if this intentional!", v3, 2u);
    MEMORY[0x1D3896EB0](v3, -1, -1);
  }

  return 0;
}

uint64_t MockNetworkError.hashValue.getter()
{
  v1 = *v0;
  sub_1D2113ECC();
  MEMORY[0x1D38967E0](v1);
  return sub_1D2113F1C();
}

uint64_t sub_1D20B86C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1D2112B1C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2112ABC();
  (*(v4 + 8))(v6, v3);
  return 1;
}

uint64_t sub_1D20B878C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D2112B1C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

id sub_1D20B87F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1D2112B1C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  sub_1D2112ABC();
  sub_1D20B878C(v7, v9);
  v10 = *(v4 + 8);
  v10(v7, v3);
  v11 = sub_1D2112A9C();
  v10(v9, v3);

  return v11;
}

id sub_1D20B8928()
{
  v1 = v0;
  v2 = *MEMORY[0x1E69E7D40] & *v0;
  v3 = sub_1D2112B1C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v39 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v39 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7250, &qword_1D21149C0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v39 - v14;
  result = [v1 client];
  if (result)
  {
    v17 = result;
    v43 = v2;
    v18 = [v1 request];
    sub_1D2112ABC();

    sub_1D2112ADC();
    v19 = v12;
    v20 = *(v4 + 8);
    v20(v19, v3);
    v21 = sub_1D2112F9C();
    v22 = *(v21 - 8);
    if ((*(v22 + 48))(v15, 1, v21) == 1)
    {
      sub_1D20B829C(v15);
    }

    else
    {
      v41 = v7;
      v42 = v20;
      v23 = sub_1D2112F1C();
      v25 = v24;
      (*(v22 + 8))(v15, v21);
      v46 = v23;
      v47 = v25;
      v44 = 0xD000000000000013;
      v45 = 0x80000001D211A9E0;
      sub_1D20B99F0();
      LOBYTE(v23) = sub_1D2113B6C();

      if ((v23 & 1) == 0 || (sub_1D20B8E80() & 1) == 0)
      {
        v26 = v43;
        v27 = *(v43 + 80);
        v28 = [v1 request];
        sub_1D2112ABC();

        v29 = *(v26 + 88);
        v40 = (*(v29 + 8))(v10, v27, v29);
        v43 = v30;
        v31 = v42;
        v42(v10, v3);
        v32 = [v1 &off_1E83F6278];
        v33 = v41;
        sub_1D2112ABC();

        v34 = (*(v29 + 16))(v33, v27, v29);
        v31(v33, v3);
        [v17 URLProtocol:v1 didReceiveResponse:v34 cacheStoragePolicy:2];
        objc_opt_self();
        v35 = swift_dynamicCastObjCClass();
        if (v35)
        {
          if ([v35 statusCode] == 304)
          {
            sub_1D20B98A4(v40, v43);
          }

          else
          {
            v36 = v40;
            v37 = v43;
            v38 = sub_1D2112FFC();
            [v17 URLProtocol:v1 didLoadData:v38];
            sub_1D20B98A4(v36, v37);
          }
        }

        else
        {

          sub_1D20B98A4(v40, v43);
        }
      }
    }

    [v17 URLProtocolDidFinishLoading_];
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1D20B8E38(void *a1)
{
  v1 = a1;
  sub_1D20B8928();
}

uint64_t sub_1D20B8E80()
{
  v1 = v0;
  v2 = *v0;
  v3 = *MEMORY[0x1E69E7D40];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7250, &qword_1D21149C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v31 - v5;
  v7 = sub_1D2112B1C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D2112F9C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v34 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = (*(*((v3 & v2) + 0x58) + 24))();
  v16 = v15;
  v17 = [v1 request];
  sub_1D2112ABC();

  sub_1D2112ADC();
  (*(v8 + 8))(v10, v7);
  if ((*(v12 + 48))(v6, 1, v11) == 1)
  {
    sub_1D20B98A4(v14, v16);
    sub_1D20B829C(v6);
  }

  else
  {
    v32 = v14;
    v33 = v16;
    v18 = v34;
    (*(v12 + 32))(v34, v6, v11);
    v19 = [v1 client];
    if (v19)
    {
      v20 = v19;
      v21 = objc_allocWithZone(MEMORY[0x1E696AC68]);
      v22 = sub_1D2112F2C();
      v23 = sub_1D21137BC();
      v24 = [v21 initWithURL:v22 statusCode:200 HTTPVersion:v23 headerFields:0];

      v25 = v32;
      if (v24)
      {
        [v20 URLProtocol:v1 didReceiveResponse:v24 cacheStoragePolicy:2];
        v26 = v18;
        v27 = v33;
        v28 = sub_1D2112FFC();
        [v20 URLProtocol:v1 didLoadData:v28];
        sub_1D20B98A4(v25, v27);

        swift_unknownObjectRelease();
        (*(v12 + 8))(v26, v11);
        return 1;
      }

      (*(v12 + 8))(v18, v11);
      swift_unknownObjectRelease();
      v30 = v25;
    }

    else
    {
      (*(v12 + 8))(v18, v11);
      v30 = v32;
    }

    sub_1D20B98A4(v30, v33);
  }

  return 0;
}

id sub_1D20B927C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v7 = sub_1D2112B1C();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2112ABC();
  v10 = a4;
  swift_unknownObjectRetain();
  v11 = sub_1D20B98F8(v9, a4, a5);

  swift_unknownObjectRelease();
  return v11;
}

id sub_1D20B9344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for MockURLProtocol(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

id NSURLSession.init<A>(mockResponder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_opt_self() ephemeralSessionConfiguration];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7438, &qword_1D2115468);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D2114850;
  *(v6 + 32) = type metadata accessor for MockURLProtocol(0, a2, a3, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7440, &qword_1D2115470);
  v8 = sub_1D21139DC();

  [v5 setProtocolClasses_];

  v9 = [swift_getObjCClassFromMetadata() sessionWithConfiguration_];
  v10 = objc_opt_self();
  [v10 registerClass_];

  return v9;
}

uint64_t sub_1D20B94F0()
{
  v0 = sub_1D211381C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D211380C();
  v4 = sub_1D21137DC();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  if (v6 >> 60 == 15)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1D20B95F8(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

unint64_t sub_1D20B9660()
{
  result = qword_1EC6C7448[0];
  if (!qword_1EC6C7448[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC6C7448);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MockNetworkError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MockNetworkError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1D20B98A4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

id sub_1D20B98F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v4;
  v9 = *MEMORY[0x1E69E7D40];
  v10 = sub_1D2112A9C();
  v12 = type metadata accessor for MockURLProtocol(0, *((v9 & v8) + 0x50), *((v9 & v8) + 0x58), v11);
  v16.receiver = v4;
  v16.super_class = v12;
  v13 = objc_msgSendSuper2(&v16, sel_initWithRequest_cachedResponse_client_, v10, a2, a3);

  v14 = sub_1D2112B1C();
  (*(*(v14 - 8) + 8))(a1, v14);
  return v13;
}

unint64_t sub_1D20B99F0()
{
  result = qword_1EE084440;
  if (!qword_1EE084440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE084440);
  }

  return result;
}

uint64_t sub_1D20B9AB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C74D0, ".z");
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v13 - v7;
  sub_1D20C721C(a1, a2, 365, 30, &v14, &v13 - v7);
  v9 = sub_1D2112E7C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  v11(v8, 0, 1, v9);
  (*(v10 + 32))(a3, v8, v9);
  return (v11)(a3, 0, 1, v9);
}

uint64_t sub_1D20B9DA0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C74D0, ".z");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D20B9E08()
{
  if (v0[3])
  {
    v1 = v0[2];
  }

  else
  {
    v7 = *v0;
    v8 = v0[1];

    MEMORY[0x1D38961A0](46, 0xE100000000000000);
    v2 = sub_1D20CF5BC();
    v3 = !v2;
    if (v2)
    {
      v4 = 1685025392;
    }

    else
    {
      v4 = 24945;
    }

    if (v3)
    {
      v5 = 0xE200000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }

    MEMORY[0x1D38961A0](v4, v5);

    MEMORY[0x1D38961A0](46, 0xE100000000000000);
    MEMORY[0x1D38961A0](0x45687361686F6567, 0xEB00000000676174);
    v1 = v7;
    v0[2] = v7;
    v0[3] = v8;
  }

  return v1;
}

uint64_t sub_1D20B9EF4()
{
  if (v0[5])
  {
    v1 = v0[4];
  }

  else
  {
    v1 = sub_1D20B9F58(v0);
    v0[4] = v1;
    v0[5] = v2;
  }

  return v1;
}

uint64_t sub_1D20B9F58(uint64_t *a1)
{
  v6 = *a1;

  MEMORY[0x1D38961A0](46, 0xE100000000000000);
  v1 = sub_1D20CF5BC();
  v2 = !v1;
  if (v1)
  {
    v3 = 1685025392;
  }

  else
  {
    v3 = 24945;
  }

  if (v2)
  {
    v4 = 0xE200000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  MEMORY[0x1D38961A0](v3, v4);

  MEMORY[0x1D38961A0](46, 0xE100000000000000);
  MEMORY[0x1D38961A0](0xD000000000000011, 0x80000001D211AA00);
  return v6;
}

uint64_t sub_1D20BA004()
{
  v0 = sub_1D211319C();
  __swift_allocate_value_buffer(v0, qword_1EC6CE820);
  __swift_project_value_buffer(v0, qword_1EC6CE820);
  return sub_1D211313C();
}

uint64_t sub_1D20BA058()
{
  v0 = sub_1D211319C();
  __swift_allocate_value_buffer(v0, qword_1EC6CE838);
  v1 = __swift_project_value_buffer(v0, qword_1EC6CE838);
  if (qword_1EC6C7158 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1EC6CE820);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1D20BA18C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7248, &qword_1D2114A80);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v52 - v1;
  v3 = sub_1D211362C();
  v53 = *(v3 - 8);
  v54 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D211319C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v59 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v52 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v52 - v13;
  if (qword_1EC6C7160 != -1)
  {
    swift_once();
  }

  v55 = v2;
  v15 = __swift_project_value_buffer(v6, qword_1EC6CE838);
  v16 = *(v7 + 16);
  v58 = v15;
  v16(v14);
  if (qword_1EC6C7158 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v6, qword_1EC6CE820);
  (v16)(v12, v17, v6);
  v18 = sub_1D211315C();
  v19 = v7 + 8;
  v20 = v12;
  v21 = *(v7 + 8);
  v21(v20, v6);
  v21(v14, v6);
  v56 = v6;
  v57 = v21;
  if (v18)
  {
    sub_1D211361C();
    v22 = sub_1D21135FC();
    v23 = sub_1D2113A7C();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1D209F000, v22, v23, "Mocked guidance forecast response time was not configured", v24, 2u);
      v25 = v24;
      v19 = v7 + 8;
      v6 = v56;
      MEMORY[0x1D3896EB0](v25, -1, -1);
    }

    (*(v53 + 8))(v5, v54);
    v21 = v57;
  }

  (v16)(v14, v58, v6);
  v26 = v55;
  sub_1D20FB87C(v55);
  v54 = v14;
  v58 = v19;
  v21(v14, v6);
  result = (*(v7 + 48))(v26, 1, v6);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v7 + 32))(v59, v26, v6);
    v28 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
    [v28 setFormatOptions_];
    v29 = sub_1D21130EC();
    v30 = [v28 stringFromDate_];

    v55 = sub_1D21137CC();
    v32 = v31;

    v60 = MEMORY[0x1E69E7CC0];
    sub_1D20DC784(0, 48, 0);
    v33 = 0;
    v34 = v60;
    do
    {
      do
      {
        v66 = 0;
        MEMORY[0x1D3896EC0](&v66, 8);
      }

      while (0x20000000000001 * v66 < 0x1FFFFFFFFFF801);
      v35 = (v66 * 0x20000000000001uLL) >> 64;
      v60 = v34;
      v37 = *(v34 + 16);
      v36 = *(v34 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_1D20DC784((v36 > 1), v37 + 1, 1);
        v34 = v60;
      }

      ++v33;
      *(v34 + 16) = v37 + 1;
      *(v34 + 8 * v37 + 32) = vcvtd_n_f64_u64(v35, 0x35uLL) + 0.0;
    }

    while (v33 != 48);
    v38 = v32;
    v39 = v54;
    sub_1D211311C();
    v40 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
    [v40 setFormatOptions_];
    v41 = sub_1D21130EC();
    v42 = [v40 stringFromDate_];

    v43 = sub_1D21137CC();
    v45 = v44;

    v46 = v39;
    v47 = v56;
    v48 = v57;
    v57(v46, v56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C74D8, &qword_1D2115680);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_1D2114850;
    v50 = v55;
    *(v49 + 32) = v55;
    *(v49 + 40) = v38;
    *(v49 + 48) = v43;
    *(v49 + 56) = v45;
    *(v49 + 64) = xmmword_1D2114860;
    sub_1D2112B7C();
    swift_allocObject();

    sub_1D2112B6C();
    v60 = 0x4D30335450;
    v61 = 0xE500000000000000;
    v62 = v50;
    v63 = v38;
    v64 = v34;
    v65 = v49;
    sub_1D20BAB1C();
    v51 = sub_1D2112B5C();

    v48(v59, v47);
    return v51;
  }

  return result;
}

id sub_1D20BA864(id a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7250, &qword_1D21149C0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v16 - v4;
  v6 = sub_1D2112F9C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D20CE7A8(&unk_1F4D9E5C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C73B8, &qword_1D2115380);
  swift_arrayDestroy();
  sub_1D2112ADC();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {

    sub_1D20B829C(v5);
LABEL_4:
    sub_1D20B316C();
    swift_allocError();
    *v14 = 1;
    swift_willThrow();
    return a1;
  }

  v16[1] = v1;
  (*(v7 + 32))(v9, v5, v6);
  v10 = objc_allocWithZone(MEMORY[0x1E696AC68]);
  v11 = sub_1D2112F2C();
  v12 = sub_1D21137BC();
  v13 = sub_1D21136FC();

  a1 = [v10 initWithURL:v11 statusCode:200 HTTPVersion:v12 headerFields:v13];

  (*(v7 + 8))(v9, v6);
  if (!a1)
  {
    goto LABEL_4;
  }

  return a1;
}

unint64_t sub_1D20BAB1C()
{
  result = qword_1EC6C74E0;
  if (!qword_1EC6C74E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C74E0);
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

char *sub_1D20BABD4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
LABEL_7:
    v14 = sub_1D211384C();

    return v14;
  }

  v15 = MEMORY[0x1E69E7CC0];
  result = sub_1D20DC7C4(0, v2, 0);
  v6 = *(a2 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = a1 + 32;
    do
    {
      v9 = *(v8 + v7);
      v10 = *(a2 + 32 + v7 % v6);
      v12 = *(v15 + 16);
      v11 = *(v15 + 24);
      v13 = v12 + 1;
      if (v12 >= v11 >> 1)
      {
        sub_1D20DC7C4((v11 > 1), v13, 1);
        v13 = v12 + 1;
      }

      ++v7;
      *(v15 + 16) = v13;
      *(v15 + v12 + 32) = v10 ^ v9;
    }

    while (v2 != v7);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D20BACF8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C74E8, &qword_1D2115690);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v43 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C74F0, &qword_1D2115698);
  v45 = *(v4 - 8);
  v46 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v43 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C74F8, &qword_1D21156A0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v43 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7500, &qword_1D21156A8);
  sub_1D211341C();
  v14 = 0x1E83F6000uLL;
  v48 = v0;
  v15 = [v0 allHeaderFields];
  v16 = sub_1D211371C();

  strcpy(v49, "Cache-Control");
  v49[7] = -4864;
  sub_1D2113BCC();
  if (*(v16 + 16) && (v17 = sub_1D20E459C(v50), (v18 & 1) != 0))
  {
    sub_1D20B7E10(*(v16 + 56) + 32 * v17, v51);
    sub_1D20BC128(v50);

    if (swift_dynamicCast())
    {
      sub_1D211395C();
      v47 = v7;

      sub_1D20BC17C();
      sub_1D211340C();
      v7 = v47;
      sub_1D211342C();
      v44 = *(v8 + 8);
      v44(v11, v7);

      v38 = v45;
      v37 = v46;
      v14 = 0x1E83F6000;
      if ((*(v45 + 48))(v3, 1, v46) == 1)
      {
        sub_1D20A862C(v3, &qword_1EC6C74E8, &qword_1D2115690);
      }

      else
      {
        v43 = v8 + 8;
        (*(v38 + 32))(v6, v3, v37);
        swift_getKeyPath();
        sub_1D211344C();

        v39 = MEMORY[0x1D3896140](v50[0], v50[1], v50[2], v50[3]);
        v41 = v40;

        v50[0] = 0;
        v42 = sub_1D20BC1E0(v39, v41, v50);

        (*(v38 + 8))(v6, v37);
        if (v42)
        {
          v44(v13, v47);
          return v50[0];
        }

        v7 = v47;
        v14 = 0x1E83F6000;
      }
    }
  }

  else
  {

    sub_1D20BC128(v50);
  }

  if (qword_1EE083DE8 != -1)
  {
    swift_once();
  }

  v19 = sub_1D211362C();
  __swift_project_value_buffer(v19, qword_1EE0874C0);
  v20 = sub_1D21135FC();
  v21 = sub_1D2113A7C();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = v14;
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_1D209F000, v20, v21, "Unable to generate max age value based on response.", v23, 2u);
    v24 = v23;
    v14 = v22;
    MEMORY[0x1D3896EB0](v24, -1, -1);
  }

  v25 = v48;
  v26 = sub_1D21135FC();
  v27 = sub_1D2113A7C();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v47 = v7;
    v48 = v13;
    v29 = v28;
    v30 = swift_slowAlloc();
    v50[0] = v30;
    *v29 = 136380675;
    v31 = [v25 *(v14 + 2216)];
    sub_1D211371C();

    v32 = sub_1D211372C();
    v34 = v33;

    v35 = sub_1D20B75F0(v32, v34, v50);

    *(v29 + 4) = v35;
    _os_log_impl(&dword_1D209F000, v26, v27, "%{private}s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v30);
    MEMORY[0x1D3896EB0](v30, -1, -1);
    MEMORY[0x1D3896EB0](v29, -1, -1);

    (*(v8 + 8))(v48, v47);
  }

  else
  {

    (*(v8 + 8))(v13, v7);
  }

  return 0;
}

uint64_t sub_1D20BB444@<X0>(uint64_t a1@<X8>)
{
  sub_1D20BACF8();
  if (v2)
  {
    if (qword_1EE083DE8 != -1)
    {
      swift_once();
    }

    v3 = sub_1D211362C();
    __swift_project_value_buffer(v3, qword_1EE0874C0);
    v4 = sub_1D21135FC();
    v5 = sub_1D2113A7C();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1D209F000, v4, v5, "Unable to retrieve max age value from response.", v6, 2u);
      MEMORY[0x1D3896EB0](v6, -1, -1);
    }

    v7 = 1;
  }

  else
  {
    sub_1D211312C();
    v7 = 0;
  }

  v8 = sub_1D211319C();
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, v7, 1, v8);
}

uint64_t sub_1D20BB58C()
{
  v1 = v0;
  v2 = [v0 allHeaderFields];
  v3 = sub_1D211371C();

  sub_1D2113BCC();
  if (*(v3 + 16) && (v4 = sub_1D20E459C(v22), (v5 & 1) != 0))
  {
    sub_1D20B7E10(*(v3 + 56) + 32 * v4, v23);
    sub_1D20BC128(v22);

    if (swift_dynamicCast())
    {
      return 1734440005;
    }
  }

  else
  {

    sub_1D20BC128(v22);
  }

  if (qword_1EE083DE8 != -1)
  {
    swift_once();
  }

  v7 = sub_1D211362C();
  __swift_project_value_buffer(v7, qword_1EE0874C0);
  v8 = sub_1D21135FC();
  v9 = sub_1D2113A7C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22[0] = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_1D20B75F0(1734440005, 0xE400000000000000, v22);
    _os_log_impl(&dword_1D209F000, v8, v9, "Unable to retrieve %s header from response.", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x1D3896EB0](v11, -1, -1);
    MEMORY[0x1D3896EB0](v10, -1, -1);
  }

  v12 = v1;
  v13 = sub_1D21135FC();
  v14 = sub_1D2113A7C();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v22[0] = v16;
    *v15 = 136380675;
    v17 = [v12 allHeaderFields];
    sub_1D211371C();

    v18 = sub_1D211372C();
    v20 = v19;

    v21 = sub_1D20B75F0(v18, v20, v22);

    *(v15 + 4) = v21;
    _os_log_impl(&dword_1D209F000, v13, v14, "%{private}s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x1D3896EB0](v16, -1, -1);
    MEMORY[0x1D3896EB0](v15, -1, -1);
  }

  return 0;
}

void sub_1D20BB8E8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7248, &qword_1D2114A80);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v16 - v4;
  v6 = sub_1D211319C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D20BACF8();
  if ((v10 & 1) == 0)
  {
    v11 = MEMORY[0x1D3896910]();
    sub_1D20BBB90(a1, v5);
    if (v1)
    {
      objc_autoreleasePoolPop(v11);
      __break(1u);
      return;
    }

    objc_autoreleasePoolPop(v11);
    if ((*(v7 + 48))(v5, 1, v6) != 1)
    {
      (*(v7 + 32))(v9, v5, v6);
      sub_1D21130DC();
      (*(v7 + 8))(v9, v6);
      return;
    }

    sub_1D20A862C(v5, &qword_1EC6C7248, &qword_1D2114A80);
  }

  if (qword_1EE083DE8 != -1)
  {
    swift_once();
  }

  v12 = sub_1D211362C();
  __swift_project_value_buffer(v12, qword_1EE0874C0);
  v13 = sub_1D21135FC();
  v14 = sub_1D2113A7C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    MEMORY[0x1D3896EB0](v15, -1, -1);
  }

  sub_1D211318C();
}

uint64_t sub_1D20BBB90@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7248, &qword_1D2114A80);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v39 - v9;
  v11 = [a1 allHeaderFields];
  v12 = sub_1D211371C();

  v39[1] = 1702125892;
  v39[2] = 0xE400000000000000;
  sub_1D2113BCC();
  if (*(v12 + 16) && (v13 = sub_1D20E459C(v40), (v14 & 1) != 0))
  {
    sub_1D20B7E10(*(v12 + 56) + 32 * v13, v41);
    sub_1D20BC128(v40);

    if (swift_dynamicCast())
    {
      v15 = sub_1D20D58E0();
      v16 = sub_1D21137BC();

      v17 = [v15 dateFromString_];

      v39[0] = v2;
      if (v17)
      {
        sub_1D211316C();

        v18 = 0;
      }

      else
      {
        v18 = 1;
      }

      v36 = sub_1D211319C();
      v37 = *(v36 - 8);
      v38 = *(v37 + 56);
      v38(v8, v18, 1, v36);
      sub_1D20A84BC(v8, v10);
      if ((*(v37 + 48))(v10, 1, v36) != 1)
      {
        (*(v37 + 32))(a2, v10, v36);
        return (v38)(a2, 0, 1, v36);
      }

      sub_1D20A862C(v10, &qword_1EC6C7248, &qword_1D2114A80);
    }
  }

  else
  {

    sub_1D20BC128(v40);
  }

  if (qword_1EE083DE8 != -1)
  {
    swift_once();
  }

  v19 = sub_1D211362C();
  __swift_project_value_buffer(v19, qword_1EE0874C0);
  v20 = sub_1D21135FC();
  v21 = sub_1D2113A7C();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v40[0] = v23;
    *v22 = 136315138;
    *(v22 + 4) = sub_1D20B75F0(1702125892, 0xE400000000000000, v40);
    _os_log_impl(&dword_1D209F000, v20, v21, "Unable to retrieve %s header from response.", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x1D3896EB0](v23, -1, -1);
    MEMORY[0x1D3896EB0](v22, -1, -1);
  }

  v24 = a1;
  v25 = sub_1D21135FC();
  v26 = sub_1D2113A7C();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v40[0] = v28;
    *v27 = 136380675;
    v29 = [v24 allHeaderFields];
    sub_1D211371C();
    v42 = a2;

    v30 = sub_1D211372C();
    v32 = v31;

    v33 = sub_1D20B75F0(v30, v32, v40);

    *(v27 + 4) = v33;
    a2 = v42;
    _os_log_impl(&dword_1D209F000, v25, v26, "%{private}s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v28);
    MEMORY[0x1D3896EB0](v28, -1, -1);
    MEMORY[0x1D3896EB0](v27, -1, -1);
  }

  v34 = sub_1D211319C();
  return (*(*(v34 - 8) + 56))(a2, 1, 1, v34);
}

unint64_t sub_1D20BC17C()
{
  result = qword_1EE084488;
  if (!qword_1EE084488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6C74F8, &qword_1D21156A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE084488);
  }

  return result;
}

BOOL sub_1D20BC1E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v4 >= 0x21 || ((0x100003E01uLL >> v4) & 1) == 0)
      {
LABEL_10:
        v6 = _swift_stdlib_strtod_clocale();
        return v6 && *v6 == 0;
      }

      return 0;
    }
  }

  sub_1D2113C1C();
  if (!v3)
  {
    return v8;
  }

  return v5;
}

_BYTE *sub_1D20BC2D8@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_1D20BC358@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7250, &qword_1D21149C0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v15[-v3];
  v5 = sub_1D2112F9C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D20ECA00(v16);
  if (*(&v16[0] + 1) != 1)
  {
    v17 = v16[1];
    sub_1D20BD1B0(&v17, v15);
    sub_1D20A862C(v16, &qword_1EC6C7518, &unk_1D2116AB0);
    if (*(&v17 + 1))
    {
      sub_1D210CA58(v4);
      if ((*(v6 + 48))(v4, 1, v5) != 1)
      {
        (*(v6 + 32))(v8, v4, v5);
        sub_1D2112F3C();
        sub_1D20A862C(&v17, &qword_1EC6C7510, &unk_1D2115710);
        (*(v6 + 8))(v8, v5);
        v13 = 0;
        return (*(v6 + 56))(a1, v13, 1, v5);
      }

      sub_1D20A862C(&v17, &qword_1EC6C7510, &unk_1D2115710);
      sub_1D20A862C(v4, &qword_1EC6C7250, &qword_1D21149C0);
    }
  }

  if (qword_1EE083DE8 != -1)
  {
    swift_once();
  }

  v9 = sub_1D211362C();
  __swift_project_value_buffer(v9, qword_1EE0874C0);
  v10 = sub_1D21135FC();
  v11 = sub_1D2113A7C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1D209F000, v10, v11, "Unable to compute API Path for energy windows.", v12, 2u);
    MEMORY[0x1D3896EB0](v12, -1, -1);
  }

  v13 = 1;
  return (*(v6 + 56))(a1, v13, 1, v5);
}

uint64_t sub_1D20BC64C@<X0>(void (*a1)(char *, uint64_t)@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v89 = a3;
  v90 = a4;
  v86 = a1;
  v87 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7508, &unk_1D2116AA0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v83 = &v79 - v7;
  v8 = sub_1D2112B1C();
  v91 = *(v8 - 8);
  v92 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v81 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v84 = &v79 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7250, &qword_1D21149C0);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v88 = &v79 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v79 - v18;
  v20 = sub_1D2112F9C();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v82 = &v79 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v79 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24);
  v85 = &v79 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v79 - v29;
  sub_1D20BC358(v19);
  v31 = *(v21 + 48);
  if (v31(v19, 1, v20) != 1)
  {
    v80 = a5;
    v79 = *(v21 + 32);
    v79(v30, v19, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C73B0, &unk_1D2115420);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D2114850;
    *(inited + 32) = 0x644964697267;
    *(inited + 40) = 0xE600000000000000;
    *(inited + 48) = v86;
    *(inited + 56) = v87;

    v87 = v30;
    sub_1D2112F1C();
    sub_1D2112F7C();
    if (v31(v15, 1, v20) == 1)
    {

      sub_1D20A862C(v15, &qword_1EC6C7250, &qword_1D21149C0);
      v43 = v88;
      (*(v21 + 56))(v88, 1, 1, v20);
      v44 = v90;
    }

    else
    {
      v79(v26, v15, v20);
      v45 = v88;
      sub_1D20F108C(inited, 1, 0, v88);
      v43 = v45;

      v46 = *(v21 + 8);
      v46(v26, v20);
      v47 = v31(v45, 1, v20);
      v44 = v90;
      if (v47 != 1)
      {
        v86 = v46;
        v60 = v85;
        v79(v85, v45, v20);
        (*(v21 + 16))(v82, v60, v20);
        v61 = v84;
        sub_1D2112ACC();
        sub_1D2112A8C();
        if (sub_1D20CF7E0())
        {
          v62 = &unk_1F4D9E0E0;
        }

        else
        {
          v62 = &unk_1F4D9E120;
        }

        v63 = sub_1D20BABD4(v62, &unk_1F4D9E080);
        v65 = v64;
        sub_1D20CF7E0();
        v66 = v63;
        v67 = v83;
        sub_1D20D94F0(v66, v65, 49, 0xE100000000000000, v83);

        v50 = v91;
        v49 = v92;
        if ((*(v91 + 48))(v67, 1, v92) != 1)
        {
          v75 = v81;
          (*(v50 + 16))(v81, v67, v49);
          sub_1D2112AEC();
          sub_1D2112AEC();
          v76 = *(v50 + 8);
          v76(v67, v49);
          v77 = v80;
          (*(v50 + 32))(v80, v75, v49);
          sub_1D2112B0C();
          v76(v61, v49);
          v78 = v86;
          v86(v85, v20);
          v78(v87, v20);
          return (*(v50 + 56))(v77, 0, 1, v49);
        }

        v68 = v20;
        sub_1D20A862C(v67, &qword_1EC6C7508, &unk_1D2116AA0);
        v55 = v80;
        if (qword_1EE083DE8 != -1)
        {
          swift_once();
        }

        v69 = sub_1D211362C();
        __swift_project_value_buffer(v69, qword_1EE0874C0);

        v70 = sub_1D21135FC();
        v71 = sub_1D2113A7C();

        if (os_log_type_enabled(v70, v71))
        {
          v72 = swift_slowAlloc();
          v73 = swift_slowAlloc();
          v93[0] = v73;
          *v72 = 136315138;
          *(v72 + 4) = sub_1D20B75F0(v89, v44, v93);
          _os_log_impl(&dword_1D209F000, v70, v71, "Unable to create signed Energy Interval request | traceId: %s", v72, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v73);
          MEMORY[0x1D3896EB0](v73, -1, -1);
          MEMORY[0x1D3896EB0](v72, -1, -1);
        }

        (*(v50 + 8))(v84, v49);
        v74 = v86;
        v86(v85, v68);
        v74(v87, v68);
        return (*(v50 + 56))(v55, 1, 1, v49);
      }
    }

    v48 = v21;
    sub_1D20A862C(v43, &qword_1EC6C7250, &qword_1D21149C0);
    v50 = v91;
    v49 = v92;
    if (qword_1EE083DE8 != -1)
    {
      swift_once();
    }

    v51 = sub_1D211362C();
    __swift_project_value_buffer(v51, qword_1EE0874C0);

    v52 = sub_1D21135FC();
    v53 = sub_1D2113A7C();

    v54 = os_log_type_enabled(v52, v53);
    v55 = v80;
    v56 = v87;
    if (v54)
    {
      v57 = swift_slowAlloc();
      v90 = v20;
      v58 = v57;
      v59 = swift_slowAlloc();
      v93[0] = v59;
      *v58 = 136315138;
      *(v58 + 4) = sub_1D20B75F0(v89, v44, v93);
      _os_log_impl(&dword_1D209F000, v52, v53, "Unable to create Energy Interval URL with required query parameters | traceId: %s", v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v59);
      MEMORY[0x1D3896EB0](v59, -1, -1);
      MEMORY[0x1D3896EB0](v58, -1, -1);

      (*(v48 + 8))(v56, v90);
    }

    else
    {

      (*(v48 + 8))(v56, v20);
    }

    return (*(v50 + 56))(v55, 1, 1, v49);
  }

  sub_1D20A862C(v19, &qword_1EC6C7250, &qword_1D21149C0);
  if (qword_1EE083DE8 != -1)
  {
    swift_once();
  }

  v32 = sub_1D211362C();
  __swift_project_value_buffer(v32, qword_1EE0874C0);
  v33 = v90;

  v34 = sub_1D21135FC();
  v35 = sub_1D2113A7C();

  v36 = os_log_type_enabled(v34, v35);
  v38 = v91;
  v37 = v92;
  if (v36)
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v93[0] = v40;
    *v39 = 136315138;
    *(v39 + 4) = sub_1D20B75F0(v89, v33, v93);
    _os_log_impl(&dword_1D209F000, v34, v35, "Request URL for EnergyWindows API not found | traceId: %s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v40);
    MEMORY[0x1D3896EB0](v40, -1, -1);
    MEMORY[0x1D3896EB0](v39, -1, -1);
  }

  return (*(v38 + 56))(a5, 1, 1, v37);
}

uint64_t sub_1D20BD1B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7510, &unk_1D2115710);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t HSGuidanceForecast.MockType.description.getter()
{
  v1 = 0xD000000000000010;
  v2 = *v0;
  v3 = 0xD000000000000021;
  if (v2 != 6)
  {
    v3 = 0xD000000000000029;
  }

  v4 = 0xD000000000000042;
  if (v2 != 4)
  {
    v4 = 0xD000000000000024;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000019;
  if (v2 != 2)
  {
    v5 = 0xD000000000000026;
  }

  if (*v0)
  {
    v1 = 0xD000000000000023;
  }

  if (*v0 > 1u)
  {
    v1 = v5;
  }

  if (*v0 <= 3u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t HSGuidanceForecast.MockType.hashValue.getter()
{
  v1 = *v0;
  sub_1D2113ECC();
  MEMORY[0x1D38967E0](v1);
  return sub_1D2113F1C();
}

unint64_t sub_1D20BD38C()
{
  v1 = 0xD000000000000010;
  v2 = *v0;
  v3 = 0xD000000000000021;
  if (v2 != 6)
  {
    v3 = 0xD000000000000029;
  }

  v4 = 0xD000000000000042;
  if (v2 != 4)
  {
    v4 = 0xD000000000000024;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000019;
  if (v2 != 2)
  {
    v5 = 0xD000000000000026;
  }

  if (*v0)
  {
    v1 = 0xD000000000000023;
  }

  if (*v0 > 1u)
  {
    v1 = v5;
  }

  if (*v0 <= 3u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t static HSGuidanceForecast.mockEnergyGuidanceFromDefaults(_:_:_:)@<X0>(char *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v117 = a3;
  v5 = type metadata accessor for HSGuidanceValue(0);
  v134 = *(v5 - 8);
  v135 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v125 = &v108 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7278, &unk_1D2115720);
  MEMORY[0x1EEE9AC00](v124);
  v123 = &v108 - v7;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7240, &unk_1D21149B0);
  MEMORY[0x1EEE9AC00](v143);
  v146 = (&v108 - v8);
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7280, &qword_1D21149E0);
  MEMORY[0x1EEE9AC00](v145);
  v137 = &v108 - v9;
  v110 = type metadata accessor for HSGuidanceError(0);
  v10 = MEMORY[0x1EEE9AC00](v110);
  v111 = (&v108 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v147 = (&v108 - v12);
  v114 = sub_1D2112C2C();
  v113 = *(v114 - 8);
  v13 = MEMORY[0x1EEE9AC00](v114);
  v115 = &v108 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v119 = &v108 - v15;
  v116 = type metadata accessor for HSGuidanceForecast(0);
  v16 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v112 = &v108 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7248, &qword_1D2114A80);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v136 = &v108 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v108 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v118 = &v108 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v108 - v26;
  v28 = sub_1D211319C();
  v29 = *(v28 - 8);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v149 = &v108 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v148 = &v108 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v141 = &v108 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v131 = &v108 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v144 = &v108 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v142 = &v108 - v41;
  MEMORY[0x1EEE9AC00](v40);
  v43 = &v108 - v42;
  v44 = *a1;
  v45 = dbl_1D2115AF0[v44];
  v126 = *(&off_1E83F6718 + v44);
  sub_1D20A8580(a2, v27, &qword_1EC6C7248, &qword_1D2114A80);
  v46 = *(v29 + 48);
  v47 = v46(v27, 1, v28);
  v138 = v46;
  v139 = v29 + 48;
  if (v47 == 1)
  {
    sub_1D211317C();
    if (v46(v27, 1, v28) != 1)
    {
      sub_1D20A862C(v27, &qword_1EC6C7248, &qword_1D2114A80);
    }
  }

  else
  {
    (*(v29 + 32))(v43, v27, v28);
  }

  v48 = *(v29 + 56);
  v49 = v118;
  v48(v118, 1, 1, v28);
  sub_1D20FE6E4(v147, v119);
  v132 = v48;
  v122 = v43;
  sub_1D20A8580(v49, v23, &qword_1EC6C7248, &qword_1D2114A80);
  v50 = v138(v23, 1, v28);
  v109 = v16;
  v133 = v29 + 56;
  if (v50 == 1)
  {
    sub_1D20A862C(v23, &qword_1EC6C7248, &qword_1D2114A80);
    v51 = v122;
    v52 = v146;
LABEL_10:
    v56 = *(v29 + 16);
    v147 = ((v29 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000);
    v140 = v56;
    v56(v144, v51, v28);
    sub_1D2112BFC();
    goto LABEL_11;
  }

  v53 = v142;
  (*(v29 + 32))(v142, v23, v28);
  v51 = v122;
  v54 = sub_1D211310C();
  v52 = v146;
  if ((v54 & 1) == 0)
  {
    (*(v29 + 8))(v53, v28);
    goto LABEL_10;
  }

  v55 = *(v29 + 16);
  v147 = ((v29 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000);
  v55(v144, v51, v28);
  v140 = v55;
  v55(v131, v53, v28);
  sub_1D2112BEC();
  (*(v29 + 8))(v53, v28);
LABEL_11:
  v57 = v137;
  v58 = v126;
  v130 = v44;
  sub_1D2112C0C();
  v59 = *(v143 + 36);
  sub_1D2112BDC();
  v60 = v145;
  v61 = v57 + *(v145 + 44);
  v62 = *(v124 + 48);
  v64 = *(v29 + 32);
  v63 = v29 + 32;
  (v64)(v61 + v62, v52, v28);
  v131 = *(v60 + 36);
  v142 = v64;
  (v64)(&v131[v57], v52 + v59, v28);
  v121 = *(v60 + 40);
  *(v57 + v121) = v45;
  v65 = v147;
  v140(v57, v61 + v62, v28);
  v66 = 0;
  *v61 = 0;
  v145 = v63 - 24;
  v143 = v63;
  v120 = (v63 + 8);
  v127 = v58 + 32;
  v146 = MEMORY[0x1E69E7CC0];
  *(v61 + 8) = 0;
  v67 = v125;
  v129 = v61;
  v128 = v62;
  v147 = v65;
  while (1)
  {
    v69 = v140;
    v68 = v141;
    v140(v141, v61 + v62, v28);
    sub_1D20C0CAC(&qword_1EE0843E0, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
    if (sub_1D211378C())
    {
      v70 = *v145;
      (*v145)(v68, v28);
      v71 = v136;
      v72 = v138;
      v132(v136, 1, 1, v28);
    }

    else
    {
      v73 = v123;
      sub_1D20A8580(v61, v123, &qword_1EC6C7278, &unk_1D2115720);
      v74 = *(v124 + 48);
      sub_1D20C0CAC(&qword_1EC6C7288, MEMORY[0x1E6969530], MEMORY[0x1E6969560]);
      v75 = v144;
      v76 = sub_1D2113B1C();
      v78 = v77;
      v70 = *v145;
      v79 = v73 + v74;
      v58 = v126;
      v67 = v125;
      (*v145)(v79, v28);
      *v61 = v76;
      *(v61 + 8) = v78 & 1;
      v80 = v75;
      v69 = v140;
      (*v120)(v61 + v62, v80, v28);
      v71 = v136;
      v81 = v132;
      (v142)(v136, v141, v28);
      v72 = v138;
      v81(v71, 0, 1, v28);
    }

    if (v72(v71, 1, v28) == 1)
    {
      sub_1D20A862C(v137, &qword_1EC6C7280, &qword_1D21149E0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C73F0, &unk_1D2115730);
      v92 = (type metadata accessor for HSCleanGuidanceThresholds(0) - 8);
      v93 = (*(*v92 + 80) + 32) & ~*(*v92 + 80);
      v94 = swift_allocObject();
      *(v94 + 16) = xmmword_1D2114850;
      v95 = v94 + v93;
      v96 = v113;
      v97 = v119;
      v98 = v114;
      (*(v113 + 16))(v95, v119, v114);
      *(v95 + v92[7]) = 0x3FE199999999999ALL;
      *(v95 + v92[8]) = 0x3FEC7AE147AE147BLL;

      sub_1D20A862C(v118, &qword_1EC6C7248, &qword_1D2114A80);
      v70(v122, v28);
      v99 = v116;
      v100 = *(v96 + 32);
      v101 = v112;
      v100(&v112[*(v116 + 24)], v97, v98);
      v100((v101 + *(v99 + 32)), v115, v98);
      *v101 = 0;
      *(v101 + 8) = v94;
      *(v101 + *(v99 + 28)) = v146;
      v102 = v117;
      sub_1D20BF464(v101, v117, type metadata accessor for HSGuidanceForecast);
      v103 = 0;
      v104 = v109;
      return (*(v104 + 56))(v102, v103, 1, v99);
    }

    v82 = v148;
    (v142)(v148, v71, v28);
    result = sub_1D20FDFE4(v82);
    if (v84)
    {

      v105 = v111;
      *v111 = 0xD00000000000001BLL;
      v105[1] = 0x80000001D211A5C0;
      swift_storeEnumTagMultiPayload();
      sub_1D20C0CAC(&qword_1EE083C08, type metadata accessor for HSGuidanceError, &protocol conformance descriptor for HSGuidanceError);
      swift_willThrowTypedImpl();

      v70(v148, v28);
      v106 = *(v113 + 8);
      v107 = v114;
      v106(v115, v114);
      v106(v119, v107);
      sub_1D20A862C(v118, &qword_1EC6C7248, &qword_1D2114A80);
      v70(v122, v28);
      sub_1D20A862C(v137, &qword_1EC6C7280, &qword_1D21149E0);
      v147 = v105;
      v102 = v117;
      v99 = v116;
      v104 = v109;
      sub_1D20BF408(v105);
      v103 = 1;
      return (*(v104 + 56))(v102, v103, 1, v99);
    }

    v85 = *(v58 + 16);
    if (!v85)
    {
      break;
    }

    v69(v149, v148, v28);
    if (v130 == 5 && !v66)
    {
      v86 = v144;
      sub_1D21130DC();
      v87 = v149;
      v70(v149, v28);
      (v142)(v87, v86, v28);
    }

    v69(v144, v149, v28);
    sub_1D2112BFC();
    *(v67 + *(v135 + 20)) = *(v127 + 8 * (v66 % v85));
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v146 = sub_1D20B720C(0, v146[2] + 1, 1, v146);
    }

    v89 = v146[2];
    v88 = v146[3];
    if (v89 >= v88 >> 1)
    {
      v146 = sub_1D20B720C((v88 > 1), v89 + 1, 1, v146);
    }

    v70(v149, v28);
    v70(v148, v28);
    v90 = v146;
    v146[2] = v89 + 1;
    result = sub_1D20BF464(v67, v90 + ((*(v134 + 80) + 32) & ~*(v134 + 80)) + *(v134 + 72) * v89, type metadata accessor for HSGuidanceValue);
    v91 = __OFADD__(v66++, 1);
    v61 = v129;
    v62 = v128;
    if (v91)
    {
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t static HSGuidanceForecast.generateGuidanceValues(from:calendar:intervalLength:date:)(char *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = a4;
  v7 = sub_1D2112E7C();
  v40 = *(v7 - 8);
  v41 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6C72A0, &qword_1D2115390);
  v10 = sub_1D21132CC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1D2115280;
  v15 = v14 + v13;
  v16 = *(v11 + 104);
  v16(v15, *MEMORY[0x1E6969A58], v10);
  v16(v15 + v12, *MEMORY[0x1E6969A88], v10);
  sub_1D20BFD3C(v14);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1D211324C();

  v17 = v9;
  v18 = sub_1D2112DCC();
  if (v19)
  {
    v20 = 0;
  }

  else
  {
    v20 = v18;
  }

  v21 = sub_1D2112E1C();
  v23 = 60 * v20;
  if ((v20 * 60) >> 64 != (60 * v20) >> 63)
  {
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v22)
  {
    v24 = 0;
  }

  else
  {
    v24 = v21;
  }

  v25 = __OFADD__(v23, v24);
  v26 = v23 + v24;
  if (v25)
  {
    goto LABEL_31;
  }

  if ((a3 + 59) < 0x77)
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
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if ((a3 + 119) <= 0x3B && v26 == 0x8000000000000000)
  {
    goto LABEL_35;
  }

  v27 = 86400 / a3;
  if (!(86400 / a3))
  {
    goto LABEL_33;
  }

  v28 = v26 / (a3 / 60);
  if (v28 == 0x8000000000000000 && v27 == -1)
  {
    goto LABEL_36;
  }

  v30 = *(a1 + 2);
  if (!v30)
  {
    (*(v40 + 8))(v9, v41);
    return MEMORY[0x1E69E7CC0];
  }

  v31 = v28 % v27 % v30;
  if (v31 < 0)
  {
    goto LABEL_34;
  }

  v43 = a1;
  v44 = a1 + 32;
  v32 = (2 * v31) | 1;
  v45 = v31;
  v46 = (2 * v30) | 1;

  sub_1D20C036C(v33, (a1 + 32), 0, v32);
  v17 = v43;
  a1 = v44;
  a3 = v45;
  a2 = v46;
  if ((v46 & 1) == 0)
  {
LABEL_20:
    sub_1D20BF4CC(v17, a1, a3, a2);
    v35 = v34;
    swift_unknownObjectRelease();
    (*(v40 + 8))(v9, v41);
    return v35;
  }

  sub_1D2113E3C();
  swift_unknownObjectRetain_n();
  v36 = swift_dynamicCastClass();
  if (!v36)
  {
    swift_unknownObjectRelease();
    v36 = MEMORY[0x1E69E7CC0];
  }

  v37 = *(v36 + 16);

  if (__OFSUB__(a2 >> 1, a3))
  {
    goto LABEL_37;
  }

  if (v37 != (a2 >> 1) - a3)
  {
LABEL_38:
    swift_unknownObjectRelease_n();
    goto LABEL_20;
  }

  v35 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v35)
  {
    swift_unknownObjectRelease();
    v35 = MEMORY[0x1E69E7CC0];
  }

  (*(v40 + 8))(v9, v41);
  swift_unknownObjectRelease();
  return v35;
}

uint64_t HSGuidanceForecast.MockInputs.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t HSGuidanceForecast.MockInputs.identifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t HSGuidanceForecast.MockInputs.values.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t HSGuidanceForecast.MockInputs.interval.setter(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  return result;
}

uint64_t HSGuidanceForecast.MockInputs.IntervalDuration.init(rawValue:)@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result > 3599)
  {
    if (result != 43200)
    {
      if (result == 3600)
      {
        *a2 = 2;
        return result;
      }

      goto LABEL_8;
    }

    *a2 = 3;
  }

  else
  {
    if (result != 900)
    {
      if (result == 1800)
      {
        *a2 = 1;
        return result;
      }

LABEL_8:
      *a2 = 4;
      return result;
    }

    *a2 = 0;
  }

  return result;
}

uint64_t sub_1D20BEBC4()
{
  v1 = *v0;
  sub_1D2113ECC();
  MEMORY[0x1D38967E0](qword_1D2115B30[v1]);
  return sub_1D2113F1C();
}

uint64_t sub_1D20BEC4C(uint64_t a1)
{
  v2 = *v1;
  sub_1D2113ECC();
  MEMORY[0x1D38967E0](qword_1D2115B30[v2]);
  return sub_1D2113F1C();
}

uint64_t sub_1D20BED68()
{
  v1 = 0x696669746E656469;
  v2 = 0x6C61767265746E69;
  if (*v0 != 2)
  {
    v2 = 0x746E4964696C6176;
  }

  if (*v0)
  {
    v1 = 0x7365756C6176;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D20BEDF0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D20C0AE8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D20BEE18(uint64_t a1)
{
  v2 = sub_1D20C05A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D20BEE54(uint64_t a1)
{
  v2 = sub_1D20C05A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HSGuidanceForecast.MockInputs.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7520, &unk_1D2115740);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - v5;
  v7 = *(v1 + 16);
  v14 = *(v1 + 24);
  v15 = v7;
  LODWORD(v7) = *(v1 + 32);
  v12 = *(v1 + 33);
  v13 = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D20C05A8();
  sub_1D2113F3C();
  v22 = 0;
  v8 = v16;
  sub_1D2113DBC();
  if (!v8)
  {
    v9 = v12;
    v17 = v15;
    v21 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7530, &qword_1D2117B10);
    sub_1D20C0650(&qword_1EC6C7538, MEMORY[0x1E69E63C0], MEMORY[0x1E69E6300]);
    sub_1D2113DEC();
    v20 = 2;
    sub_1D2113D9C();
    v19 = v9;
    v18 = 3;
    sub_1D20C05FC();
    sub_1D2113DAC();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t HSGuidanceForecast.MockInputs.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7548, &qword_1D2115750);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D20C05A8();
  sub_1D2113F2C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v28 = 0;
  v9 = sub_1D2113D4C();
  v11 = v10;
  v22 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7530, &qword_1D2117B10);
  v27 = 1;
  sub_1D20C0650(&qword_1EE083DB8, MEMORY[0x1E69E63E8], MEMORY[0x1E69E6330]);
  sub_1D2113D7C();
  v21 = v23;
  v26 = 2;
  v12 = sub_1D2113D2C();
  v19 = v13;
  v20 = v12;
  v24 = 3;
  sub_1D20C06BC();
  sub_1D2113D3C();
  (*(v6 + 8))(v8, v5);
  v15 = v25;
  v16 = v21;
  *a2 = v22;
  *(a2 + 8) = v11;
  v17 = v20;
  *(a2 + 16) = v16;
  *(a2 + 24) = v17;
  *(a2 + 32) = v19 & 1;
  *(a2 + 33) = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D20BF408(uint64_t a1)
{
  v2 = type metadata accessor for HSGuidanceError(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D20BF464(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1D20BF4CC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x1E69E7CC0];
      if (v4 != a3)
      {
LABEL_7:
        memcpy(v8 + 4, (a2 + 8 * a3), 8 * v5);
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7588, &qword_1D2115AD8);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 25;
      }

      v8[2] = v5;
      v8[3] = 2 * (v10 >> 3);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_1D20BF59C(uint64_t result)
{
  v2 = result;
  v3 = v1[3];
  v4 = v3 >> 1;
  if ((v3 & 1) == 0)
  {
    goto LABEL_10;
  }

  v5 = *v1;
  result = swift_isUniquelyReferenced_nonNull();
  *v1 = v5;
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

  v6 = v1[2];
  v7 = v4 - v6;
  if (__OFSUB__(v4, v6))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v8 = v1[1];
  sub_1D2113E3C();
  swift_unknownObjectRetain();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    swift_unknownObjectRelease();
    v9 = MEMORY[0x1E69E7CC0];
  }

  v10 = *(v9 + 16);
  if (v8 + 8 * v6 + 8 * v7 != v9 + 8 * v10 + 32)
  {

    goto LABEL_9;
  }

  v11 = *(v9 + 24);

  v12 = (v11 >> 1) - v10;
  v13 = __OFADD__(v7, v12);
  v7 += v12;
  if (!v13)
  {
LABEL_9:
    if (v7 >= v2)
    {
LABEL_17:
      *v1 = v5;
      return result;
    }

LABEL_10:
    v14 = v1[2];
    if (__OFSUB__(v4, v14))
    {
      __break(1u);
    }

    else
    {
      result = sub_1D20DC700(v4 - v14, v2);
      if (v4 >= v14)
      {
        v5 = result;
        v15 = result + 32;
        result = memcpy((result + 32), (v1[1] + 8 * v14), 8 * (v4 - v14));
        if (!__OFSUB__(0, v14))
        {
          v16 = *(v5 + 16);
          v13 = __OFADD__(v14, v16);
          v17 = v14 + v16;
          if (!v13)
          {
            if (v17 >= v14)
            {
              if ((v17 & 0x8000000000000000) == 0)
              {
                v18 = (2 * v17) | 1;
                result = swift_unknownObjectRelease();
                v1[1] = v15 - 8 * v14;
                v1[2] = v14;
                v1[3] = v18;
                goto LABEL_17;
              }

              goto LABEL_23;
            }

LABEL_22:
            __break(1u);
LABEL_23:
            __break(1u);
            goto LABEL_24;
          }

LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

LABEL_25:
  __break(1u);
  return result;
}

unint64_t sub_1D20BF714(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v6 = v4[2];
  v7 = v4[3] >> 1;
  result = v7 - v6;
  if (__OFSUB__(v7, v6))
  {
    __break(1u);
    goto LABEL_32;
  }

  v10 = *a1;
  v11 = *(*a1 + 16);
  v30 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v30)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v14 = v12 - a3;
  if (__OFSUB__(v12, a3))
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v15 = result - a2;
  if (__OFSUB__(result, a2))
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v30 = __OFSUB__(v15, v14);
  v16 = v15 - v14;
  if (v30)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v38 = v16;
  v18 = (v10 + 32);
  v19 = v10 + 32 + 8 * a2;
  v36 = v10;
  v37 = (v19 + 8 * a3);
  result = sub_1D20BFBDC(result);
  if (result)
  {
    v20 = result;
    v35 = a4;
    v21 = v4[2];
    v22 = (v4[1] + 8 * v21);
    v23 = &v22[8 * a2];
    if (v18 != v22 || v18 >= v23)
    {
      memmove(v18, v22, 8 * a2);
    }

    v35(v19, a3);
    v24 = &v23[8 * v38];
    if (v37 != v24 || v37 >= &v24[8 * v14])
    {
      memmove(v37, v24, 8 * v14);
    }

    *(v20 + 16) = 0;
  }

  else
  {
    v21 = v4[2];
    v26 = v21 + a2;
    if (__OFADD__(v21, a2))
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    if (v26 < v21)
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    if (__OFSUB__(v26, v21))
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v27 = v4[1];
    memcpy(v18, (v27 + 8 * v21), 8 * a2);
    result = (a4)(&v18[8 * a2], a3);
    v28 = v26 + v38;
    if (__OFADD__(v26, v38))
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v29 = v4[3] >> 1;
    v30 = __OFSUB__(v29, v28);
    v31 = v29 < v28;
    v32 = v29 - v28;
    if (v31)
    {
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    if (v30)
    {
LABEL_45:
      __break(1u);
      return result;
    }

    memcpy(v37, (v27 + 8 * v28), 8 * v32);
  }

  result = swift_unknownObjectRelease();
  if (__OFSUB__(0, v21))
  {
    goto LABEL_36;
  }

  result = v36;
  v33 = *(v36 + 16);
  v30 = __OFADD__(v21, v33);
  v34 = v21 + v33;
  if (v30)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v34 < v21)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v34 < 0)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  *v4 = v36;
  v4[1] = &v18[-8 * v21];
  v4[2] = v21;
  v4[3] = (2 * v34) | 1;
}

uint64_t sub_1D20BF948(uint64_t result)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = v3 >> 1;
  v5 = __OFSUB__(v3 >> 1, v2);
  v6 = (v3 >> 1) - v2;
  if (v5)
  {
    __break(1u);
    goto LABEL_12;
  }

  v7 = result - v6;
  if (__OFSUB__(result, v6))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (!v7)
  {
    return result;
  }

  sub_1D2113E3C();
  swift_unknownObjectRetain();
  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    result = MEMORY[0x1E69E7CC0];
  }

  v8 = *(result + 16);
  v5 = __OFADD__(v8, v7);
  v9 = v8 + v7;
  if (v5)
  {
    goto LABEL_13;
  }

  *(result + 16) = v9;

  v10 = v4 + v7;
  if (__OFADD__(v4, v7))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 0)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  *(v1 + 24) = v3 & 1 | (2 * v10);
  return result;
}

void *sub_1D20BFA00(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v8 = (a6 >> 1) - a5;
  if (__OFSUB__(a6 >> 1, a5))
  {
    __break(1u);
LABEL_28:
    if (v8 >= v7)
    {
      goto LABEL_21;
    }

LABEL_18:
    if (v8 + 0x4000000000000000 >= 0)
    {
      v8 *= 2;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_31;
  }

  v7 = a2;
  v6 = result;
  if ((a6 & 1) == 0)
  {
    goto LABEL_28;
  }

  sub_1D2113E3C();
  swift_unknownObjectRetain();
  v11 = swift_dynamicCastClass();
  if (!v11)
  {
    swift_unknownObjectRelease();
    v11 = MEMORY[0x1E69E7CC0];
  }

  v12 = *(v11 + 16);
  v13 = a4 + 8 * a5 + 8 * v8;
  if (v13 == v11 + 8 * v12 + 32)
  {
    v15 = *(v11 + 24);

    v16 = (v15 >> 1) - v12;
    v14 = v8 + v16;
    if (__OFADD__(v8, v16))
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }
  }

  else
  {

    v14 = v8;
  }

  swift_unknownObjectRetain();
  v17 = swift_dynamicCastClass();
  if (v14 < v7)
  {
    if (!v17)
    {
      swift_unknownObjectRelease();
      v17 = MEMORY[0x1E69E7CC0];
    }

    v18 = *(v17 + 16);
    if (v13 == v17 + 8 * v18 + 32)
    {
      v20 = *(v17 + 24);

      v21 = (v20 >> 1) - v18;
      v22 = __OFADD__(v8, v21);
      v8 += v21;
      if (v22)
      {
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }
    }

    else
    {
    }

    goto LABEL_18;
  }

  if (!v17)
  {
    swift_unknownObjectRelease();
    v17 = MEMORY[0x1E69E7CC0];
  }

  v19 = *(v17 + 16);
  if (v13 == v17 + 8 * v19 + 32)
  {
    v23 = *(v17 + 24);

    v24 = (v23 >> 1) - v19;
    v22 = __OFADD__(v8, v24);
    v8 += v24;
    if (!v22)
    {
      goto LABEL_21;
    }

LABEL_33:
    __break(1u);
    return result;
  }

LABEL_21:
  if (v8 <= v7)
  {
    v25 = v7;
  }

  else
  {
    v25 = v8;
  }

  return sub_1D20DC700(v6, v25);
}

uint64_t sub_1D20BFBDC(uint64_t a1)
{
  result = swift_isUniquelyReferenced_nonNull();
  if (!result)
  {
    return 0;
  }

  v6 = v1[2];
  v5 = v1[3];
  v7 = (v5 >> 1) - v6;
  if (__OFSUB__(v5 >> 1, v6))
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v8 = v1[1] + 8 * v6;
  if ((v5 & 1) == 0)
  {
    goto LABEL_8;
  }

  sub_1D2113E3C();
  swift_unknownObjectRetain();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    swift_unknownObjectRelease();
    v9 = MEMORY[0x1E69E7CC0];
  }

  v10 = *(v9 + 16);
  if (v8 + 8 * v7 != v9 + 8 * v10 + 32)
  {

LABEL_8:
    v11 = v7;
    goto LABEL_10;
  }

  v12 = *(v9 + 24);

  v13 = (v12 >> 1) - v10;
  v14 = __OFADD__(v7, v13);
  v11 = v7 + v13;
  if (v14)
  {
    __break(1u);
    return result;
  }

LABEL_10:
  if (v11 < a1)
  {
    return 0;
  }

  sub_1D2113E3C();
  swift_unknownObjectRetain();
  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    result = MEMORY[0x1E69E7CC0];
  }

  v15 = v8 - result - 25;
  if (v8 - result - 32 >= 0)
  {
    v15 = v8 - result - 32;
  }

  v14 = __OFADD__(v7, v15 >> 3);
  v5 = v7 + (v15 >> 3);
  if (v14)
  {
    goto LABEL_20;
  }

  v4 = *(result + 16);
  if (v5 < v4)
  {
LABEL_21:
    v16 = result;
    sub_1D20F2770(v5, v4, 0);
    return v16;
  }

  return result;
}

uint64_t sub_1D20BFD3C(uint64_t a1)
{
  v2 = sub_1D21132CC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7590, &unk_1D2115AE0);
    v9 = sub_1D2113BFC();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_1D20C0CAC(&qword_1EE083D90, MEMORY[0x1E6969AD0], MEMORY[0x1E6969AD8]);
      v16 = sub_1D211373C();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_1D20C0CAC(&qword_1EE083D88, MEMORY[0x1E6969AD0], MEMORY[0x1E6969AE0]);
          v23 = sub_1D21137AC();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

void *sub_1D20C005C(void *result)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = (v2 >> 1) - v3;
  if (__OFSUB__(v2 >> 1, v3))
  {
    goto LABEL_49;
  }

  v5 = result[4];
  v35 = result[3] >> 1;
  if (v5 == v35)
  {
    return result;
  }

  v31 = result[2];
  if (v5 < v31 || v5 >= v35)
  {
    goto LABEL_50;
  }

  v7 = v1;
  v8 = v5 + 1;
  v9 = *(result[1] + 8 * v5);
  v30 = result[1];
  while (!__OFADD__(v4, 1))
  {
    v36 = sub_1D20BFA00(v4, v4 + 1, *v7, v7[1], v3, v2);
    v11 = sub_1D20BFBC0();
    v12 = v7;
    sub_1D20BF714(&v36, v4, 0, v11);

    v3 = v7[2];
    v2 = v7[3];
    v13 = (v2 >> 1) - v3;
    if (__OFSUB__(v2 >> 1, v3))
    {
      goto LABEL_44;
    }

    v33 = v2 >> 1;
    v32 = v7[1];
    v14 = v32 + 8 * v3;
    if (v2)
    {
      v34 = v7[3];
      sub_1D2113E3C();
      swift_unknownObjectRetain();
      v15 = swift_dynamicCastClass();
      if (!v15)
      {
        swift_unknownObjectRelease();
        v15 = MEMORY[0x1E69E7CC0];
      }

      v16 = *(v15 + 16);
      if (v14 + 8 * v13 == v15 + 8 * v16 + 32)
      {
        v18 = *(v15 + 24);

        v19 = (v18 >> 1) - v16;
        v20 = __OFADD__(v13, v19);
        v17 = v13 + v19;
        if (v20)
        {
          goto LABEL_48;
        }

        v7 = v12;
      }

      else
      {

        v17 = v13;
      }

      v2 = v34;
      if (v4 >= v17)
      {
LABEL_33:
        v10 = 0;
        goto LABEL_34;
      }
    }

    else
    {
      v17 = (v2 >> 1) - v3;
      if (v4 >= v13)
      {
        goto LABEL_33;
      }
    }

    *(v14 + 8 * v4) = v9;
    v21 = v4 + 1;
    if (v8 != v35)
    {
      v22 = 0;
      while (1)
      {
        if (v8 < v31)
        {
          goto LABEL_42;
        }

        v23 = v22;
        if (v8 + v22 >= v35)
        {
          goto LABEL_42;
        }

        v9 = *(v30 + 8 * v8 + 8 * v22);
        if (!(v21 - v17 + v22))
        {
          break;
        }

        *(v32 + 8 * v4 + 8 * v3 + 8 + 8 * v22++) = v9;
        if (!(v8 - v35 + v23 + 1))
        {
          v9 = 0;
          v4 = v21 + v22;
          v8 = v35;
LABEL_31:
          v10 = v21 + v23 < v17;
          goto LABEL_34;
        }
      }

      v8 += v22 + 1;
      v4 = v17;
      goto LABEL_31;
    }

    v9 = 0;
    v10 = 1;
    v8 = v35;
    ++v4;
LABEL_34:
    v24 = v4 - v13;
    if (__OFSUB__(v4, v13))
    {
      goto LABEL_45;
    }

    if (v24)
    {
      v25 = v10;
      v26 = v2;
      sub_1D2113E3C();
      swift_unknownObjectRetain();
      result = swift_dynamicCastClass();
      if (!result)
      {
        swift_unknownObjectRelease();
        result = MEMORY[0x1E69E7CC0];
      }

      v27 = result[2];
      v20 = __OFADD__(v27, v24);
      v28 = v27 + v24;
      if (v20)
      {
        goto LABEL_46;
      }

      result[2] = v28;

      v29 = v33 + v24;
      if (__OFADD__(v33, v24))
      {
        goto LABEL_47;
      }

      if ((v29 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_42:
        __break(1u);
        break;
      }

      v2 = v26 & 1 | (2 * v29);
      v7[3] = v2;
      v10 = v25;
    }

    if (v10)
    {
      return result;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

void *sub_1D20C036C(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v30 = result;
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_35;
  }

  v8 = v4[2];
  v7 = v4[3];
  v9 = (v7 >> 1) - v8;
  if (__OFSUB__(v7 >> 1, v8))
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if ((v7 & 1) == 0)
  {
LABEL_8:
    v15 = v9;
    goto LABEL_10;
  }

  v12 = v4[1];
  sub_1D2113E3C();
  swift_unknownObjectRetain();
  v13 = swift_dynamicCastClass();
  if (!v13)
  {
    swift_unknownObjectRelease();
    v13 = MEMORY[0x1E69E7CC0];
  }

  v14 = *(v13 + 16);
  if (v12 + 8 * v8 + 8 * v9 != v13 + 8 * v14 + 32)
  {

    goto LABEL_8;
  }

  v16 = *(v13 + 24);

  v17 = (v16 >> 1) - v14;
  v18 = __OFADD__(v9, v17);
  v15 = v9 + v17;
  if (v18)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

LABEL_10:
  result = (v9 + v6);
  if (__OFADD__(v9, v6))
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v15 < result)
  {
    if (v15 + 0x4000000000000000 < 0)
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v19 = (2 * v15);
    if (v19 > result)
    {
      result = v19;
    }
  }

  result = sub_1D20BF59C(result);
  v21 = v4[2];
  v20 = v4[3];
  v22 = (v20 >> 1) - v21;
  if (__OFSUB__(v20 >> 1, v21))
  {
    goto LABEL_37;
  }

  v23 = (v4[1] + 8 * v21 + 8 * v22);
  if ((v20 & 1) == 0)
  {
LABEL_21:
    v26 = v22;
    goto LABEL_23;
  }

  sub_1D2113E3C();
  swift_unknownObjectRetain();
  v24 = swift_dynamicCastClass();
  if (!v24)
  {
    swift_unknownObjectRelease();
    v24 = MEMORY[0x1E69E7CC0];
  }

  v25 = *(v24 + 16);
  if (v23 != (v24 + 8 * v25 + 32))
  {

    goto LABEL_21;
  }

  v27 = *(v24 + 24);

  v28 = (v27 >> 1) - v25;
  v18 = __OFADD__(v22, v28);
  v26 = v22 + v28;
  if (v18)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

LABEL_23:
  v29 = v26 - v22;
  if (__OFSUB__(v26, v22))
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v5 == a3)
  {
    if (v6 <= 0)
    {
      v6 = 0;
      v5 = a3;
      goto LABEL_31;
    }

    goto LABEL_39;
  }

  if (v29 < v6)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  result = memcpy(v23, (a2 + 8 * a3), 8 * v6);
  if (v6 > 0)
  {
    result = (v22 + v6);
    if (__OFADD__(v22, v6))
    {
LABEL_44:
      __break(1u);
      return result;
    }

    result = sub_1D20BF948(result);
  }

LABEL_31:
  if (v6 == v29)
  {
    v32[0] = v30;
    v32[1] = a2;
    v32[2] = a3;
    v32[3] = a4;
    v32[4] = v5;
    return sub_1D20C005C(v32);
  }

  return result;
}

unint64_t sub_1D20C05A8()
{
  result = qword_1EC6C7528;
  if (!qword_1EC6C7528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7528);
  }

  return result;
}

unint64_t sub_1D20C05FC()
{
  result = qword_1EC6C7540;
  if (!qword_1EC6C7540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7540);
  }

  return result;
}

uint64_t sub_1D20C0650(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6C7530, &qword_1D2117B10);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D20C06BC()
{
  result = qword_1EC6C7550;
  if (!qword_1EC6C7550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7550);
  }

  return result;
}

unint64_t sub_1D20C0714()
{
  result = qword_1EC6C7558;
  if (!qword_1EC6C7558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7558);
  }

  return result;
}

unint64_t sub_1D20C076C()
{
  result = qword_1EC6C7560;
  if (!qword_1EC6C7560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7560);
  }

  return result;
}

uint64_t _s8MockTypeOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s8MockTypeOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D20C0924(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 34))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D20C096C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 34) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 34) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D20C09E4()
{
  result = qword_1EC6C7568;
  if (!qword_1EC6C7568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7568);
  }

  return result;
}

unint64_t sub_1D20C0A3C()
{
  result = qword_1EC6C7570;
  if (!qword_1EC6C7570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7570);
  }

  return result;
}

unint64_t sub_1D20C0A94()
{
  result = qword_1EC6C7578;
  if (!qword_1EC6C7578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7578);
  }

  return result;
}

uint64_t sub_1D20C0AE8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1D2113E2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7365756C6176 && a2 == 0xE600000000000000 || (sub_1D2113E2C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C61767265746E69 && a2 == 0xE800000000000000 || (sub_1D2113E2C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746E4964696C6176 && a2 == 0xED00006C61767265)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D2113E2C();

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

unint64_t sub_1D20C0C58()
{
  result = qword_1EC6C7580;
  if (!qword_1EC6C7580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7580);
  }

  return result;
}

uint64_t sub_1D20C0CAC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D20C0CFC(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 112) = a6;
  *(v7 + 120) = a7;
  *(v7 + 96) = a3;
  *(v7 + 104) = a5;
  *(v7 + 80) = a1;
  *(v7 + 88) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7598, &qword_1D2115B60);
  *(v7 + 128) = swift_task_alloc();
  v9 = type metadata accessor for HSGuidanceValue(0);
  *(v7 + 136) = v9;
  *(v7 + 144) = *(v9 - 8);
  *(v7 + 152) = swift_task_alloc();
  v10 = type metadata accessor for HSCleanGuidanceThresholds(0);
  *(v7 + 160) = v10;
  *(v7 + 168) = *(v10 - 8);
  *(v7 + 176) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7248, &qword_1D2114A80);
  *(v7 + 184) = swift_task_alloc();
  *(v7 + 192) = swift_task_alloc();
  *(v7 + 200) = swift_task_alloc();
  v11 = sub_1D211319C();
  *(v7 + 208) = v11;
  *(v7 + 216) = *(v11 - 8);
  *(v7 + 224) = swift_task_alloc();
  *(v7 + 232) = swift_task_alloc();
  *(v7 + 240) = swift_task_alloc();
  *(v7 + 248) = swift_task_alloc();
  *(v7 + 256) = swift_task_alloc();
  *(v7 + 264) = swift_task_alloc();
  *(v7 + 272) = swift_task_alloc();
  *(v7 + 280) = swift_task_alloc();
  *(v7 + 288) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C74D0, ".z");
  *(v7 + 296) = swift_task_alloc();
  *(v7 + 304) = type metadata accessor for NetworkError(0);
  *(v7 + 312) = swift_task_alloc();
  *(v7 + 320) = swift_task_alloc();
  *(v7 + 328) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7508, &unk_1D2116AA0);
  *(v7 + 336) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C75A8, &qword_1D2115B80);
  *(v7 + 344) = swift_task_alloc();
  v12 = sub_1D21131DC();
  *(v7 + 352) = v12;
  *(v7 + 360) = *(v12 - 8);
  *(v7 + 368) = swift_task_alloc();
  *(v7 + 432) = *a4;

  return MEMORY[0x1EEE6DFA0](sub_1D20C10BC, 0, 0);
}

uint64_t sub_1D20C10BC()
{
  v2 = v0[45];
  v1 = v0[46];
  v3 = v0[44];
  sub_1D21131CC();
  sub_1D21131AC();
  (*(v2 + 8))(v1, v3);
  v4 = sub_1D211382C();
  v6 = v5;

  v0[47] = v4;
  v0[48] = v6;
  v7 = swift_task_alloc();
  v0[49] = v7;
  *v7 = v0;
  v7[1] = sub_1D20C11C8;
  v8 = v0[14];

  return sub_1D20EF460(v8);
}

uint64_t sub_1D20C11C8()
{

  return MEMORY[0x1EEE6DFA0](sub_1D20C12C4, 0, 0);
}

uint64_t sub_1D20C12C4()
{
  v2 = *(v0 + 376);
  v1 = *(v0 + 384);
  v3 = *(v0 + 432);
  v4 = *(v0 + 344);
  v15 = *(v0 + 336);
  v5 = *(v0 + 96);
  v6 = *(v0 + 88);
  sub_1D20A8580(*(v0 + 104), v4, &qword_1EC6C75A8, &qword_1D2115B80);
  type metadata accessor for GuidanceForecastRequestBuilder(0);
  v7 = swift_allocObject();
  *(v0 + 400) = v7;
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  *(v7 + 32) = v3;
  sub_1D20B7DA8(v4, v7 + OBJC_IVAR____TtC12HomeServices30GuidanceForecastRequestBuilder_ratePlan, &qword_1EC6C75A8, &qword_1D2115B80);
  v8 = (v7 + OBJC_IVAR____TtC12HomeServices30GuidanceForecastRequestBuilder_requestId);
  *v8 = v2;
  v8[1] = v1;
  v9 = sub_1D2112B1C();
  (*(*(v9 - 8) + 56))(v15, 1, 1, v9);

  v10 = swift_task_alloc();
  *(v0 + 408) = v10;
  *v10 = v0;
  v10[1] = sub_1D20C1468;
  v12 = *(v0 + 328);
  v11 = *(v0 + 336);
  v13 = *(v0 + 112);

  return sub_1D20C2DAC(v0 + 16, v13, v11, v12);
}

uint64_t sub_1D20C1468(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 416) = a1;
  *(v4 + 424) = v1;

  sub_1D20A862C(*(v3 + 336), &qword_1EC6C7508, &unk_1D2116AA0);
  if (v1)
  {
    v5 = sub_1D20C295C;
  }

  else
  {
    v5 = sub_1D20C15B4;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

void sub_1D20C15B4()
{
  v153 = v0;
  v1 = *(v0 + 37);
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v5 = *(v0 + 6);
  v4 = *(v0 + 7);

  sub_1D20B9AB8(v2, v3, v1);

  v6 = sub_1D2112E7C();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 48))(v1, 1, v6);
  v146 = v0;
  v9 = *(v0 + 37);
  if (v8 == 1)
  {

    v10 = &qword_1EC6C74D0;
    v11 = ".z";
    v12 = v9;
LABEL_3:
    sub_1D20A862C(v12, v10, v11);
LABEL_6:
    v16 = *(v0 + 52);
    sub_1D20C710C(qword_1EE0841B0, type metadata accessor for NetworkError, &protocol conformance descriptor for NetworkError);
    v17 = swift_allocError();
    *v18 = 1;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    goto LABEL_7;
  }

  v140 = v5;
  v13 = sub_1D2112E1C();
  v15 = v14;
  (*(v7 + 8))(v9, v6);
  if (v15)
  {

    goto LABEL_6;
  }

  v28 = objc_allocWithZone(MEMORY[0x1E696AC80]);

  v29 = [v28 init];
  [v29 setFormatOptions_];
  v30 = sub_1D21137BC();

  v31 = [v29 dateFromString_];

  if (v31)
  {
    sub_1D211316C();

    v32 = 0;
  }

  else
  {
    v32 = 1;
  }

  v34 = *(v0 + 26);
  v33 = *(v0 + 27);
  v36 = *(v0 + 24);
  v35 = *(v0 + 25);
  (*(v33 + 56))(v36, v32, 1, v34);
  sub_1D20B7DA8(v36, v35, &qword_1EC6C7248, &qword_1D2114A80);
  v37 = *(v33 + 48);
  if (v37(v35, 1, v34) == 1)
  {
    v38 = *(v0 + 25);

    v10 = &qword_1EC6C7248;
    v11 = &qword_1D2114A80;
    v12 = v38;
    goto LABEL_3;
  }

  v126 = v37;
  v39 = *(*(v0 + 27) + 32);
  (v39)(*(v0 + 36), *(v0 + 25), *(v0 + 26));
  v40 = v140;
  if ((v13 * 60) >> 64 != (60 * v13) >> 63)
  {
    goto LABEL_63;
  }

  v34 = *(v0 + 13);
  sub_1D21130DC();
  v41 = type metadata accessor for HSRatePlan(0);
  v125 = v39;
  if ((*(*(v41 - 8) + 48))(v34, 1, v41) == 1 && v4)
  {
    v42 = *(v4 + 2);
    if (v42)
    {
      v43 = *(v0 + 21);
      v147 = MEMORY[0x1E69E7CC0];

      v143 = v42;
      sub_1D20DC8A8(0, v42, 0);
      if (!*(v4 + 2))
      {
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
        goto LABEL_64;
      }

      v44 = v147;
      v45 = *(v0 + 53);
      v46 = *(v0 + 22);
      v47 = *(v4 + 5);
      v48 = *(v4 + 6);
      v49 = *(v4 + 7);
      v148 = *(v4 + 4);
      v149 = v47;
      v150 = v48;
      v151 = v49;
      v152 = *(v4 + 4);

      sub_1D20C68A4(&v148, v0 + 9, v46);
      if (v45)
      {
        v50 = *(v0 + 52);
        v144 = *(v0 + 36);
        v135 = *(v0 + 35);
        v51 = *(v0 + 26);
        v52 = *(v0 + 27);
        swift_bridgeObjectRelease_n();

        v53 = *(v52 + 8);
        v53(v135, v51);

        v17 = *(v0 + 9);
        v53(v144, v51);
        goto LABEL_7;
      }

      v34 = *(v147 + 16);
      v89 = *(v147 + 24);
      v15 = v34 + 1;
      if (v34 >= v89 >> 1)
      {
        sub_1D20DC8A8((v89 > 1), v34 + 1, 1);
        v44 = v147;
      }

      v90 = *(v0 + 22);
      *(v44 + 16) = v15;
      v91 = (*(v43 + 80) + 32) & ~*(v43 + 80);
      v92 = v43;
      v54 = v44;
      v138 = v91;
      v134 = *(v92 + 72);
      sub_1D20C6FB0(v90, v44 + v91 + v134 * v34, type metadata accessor for HSCleanGuidanceThresholds);
      if (v143 != 1)
      {
        v103 = v4 + 112;
        v104 = 1;
        while (v104 < *(v4 + 2))
        {
          v105 = *(v0 + 22);
          v106 = *(v103 - 3);
          v107 = *(v103 - 2);
          v108 = *(v103 - 1);
          v148 = *(v103 - 4);
          v149 = v106;
          v150 = v107;
          v151 = v108;
          v152 = *v103;

          sub_1D20C68A4(&v148, v0 + 9, v105);

          v109 = v54;
          v34 = *(v54 + 16);
          v110 = *(v54 + 24);
          v15 = v34 + 1;
          if (v34 >= v110 >> 1)
          {
            sub_1D20DC8A8((v110 > 1), v34 + 1, 1);
            v109 = v54;
          }

          ++v104;
          v111 = *(v0 + 22);
          *(v109 + 16) = v15;
          v54 = v109;
          sub_1D20C6FB0(v111, v109 + v138 + v134 * v34, type metadata accessor for HSCleanGuidanceThresholds);
          v103 += 3;
          if (v143 == v104)
          {
            goto LABEL_50;
          }
        }

        goto LABEL_62;
      }

LABEL_50:
      v40 = v140;

      v55 = 0;
    }

    else
    {
      v55 = *(v0 + 53);
      v54 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v54 = 0;
    v55 = *(v0 + 53);
  }

  v136 = v55;
  v134 = v54;

  v56 = *(v40 + 16);
  if (v56)
  {
    v4 = v0;
    v57 = *(v0 + 27);
    v58 = *(v0 + 21);
    v129 = *(v0 + 17);
    v130 = *(v0 + 18);
    v148 = MEMORY[0x1E69E7CC0];
    sub_1D20DC864(0, v56, 0);
    v59 = 0;
    v15 = v148;
    v127 = (v58 + 48);
    v60 = v134;
    v61 = *(v40 + 16);
    v128 = (v57 + 16);
    if (v61 >= v56)
    {
      v61 = v56;
    }

    v132 = (v57 + 8);
    v133 = v61;
    v131 = v56;
    while (v133 != v59)
    {
      if (v59 >= *(v40 + 16))
      {
        goto LABEL_61;
      }

      v62 = *(v40 + 8 * v59 + 32);
      sub_1D21130DC();
      sub_1D21130DC();
      if (v60)
      {
        v63 = *(v4 + 20);
        v64 = *(v4 + 16);
        *(swift_task_alloc() + 16) = vextq_s8(*(v4 + 16), *(v4 + 16), 8uLL);
        sub_1D20F9D84(sub_1D20C7200, v60, v64);

        if ((*v127)(v64, 1, v63) == 1)
        {
          v82 = *(v4 + 52);
          v137 = *(v4 + 35);
          v141 = *(v4 + 36);
          v83 = *(v4 + 33);
          v84 = *(v146 + 32);
          v85 = *(v146 + 26);
          v86 = *(v146 + 16);
          sub_1D20C710C(qword_1EE0841B0, type metadata accessor for NetworkError, &protocol conformance descriptor for NetworkError);
          v17 = swift_allocError();
          *v87 = 2;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          sub_1D20A862C(v86, &qword_1EC6C7598, &qword_1D2115B60);
          v88 = *v132;
          v0 = v146;
          (*v132)(v84, v85);
          v88(v83, v85);

          v88(v137, v85);

          v88(v141, v85);
          goto LABEL_7;
        }

        sub_1D20A862C(*(v4 + 16), &qword_1EC6C7598, &qword_1D2115B60);
      }

      v66 = *(v4 + 32);
      v65 = *(v4 + 33);
      v67 = *(v4 + 30);
      v68 = *(v4 + 26);
      v34 = v4;
      v69 = *(v4 + 19);
      v70 = *v128;
      (*v128)(*(v4 + 31), v65, v68);
      v70(v67, v66, v68);
      sub_1D2112BEC();
      *(v69 + *(v129 + 20)) = v62;
      v71 = *v132;
      (*v132)(v66, v68);
      v71(v65, v68);
      v148 = v15;
      v73 = *(v15 + 16);
      v72 = *(v15 + 24);
      if (v73 >= v72 >> 1)
      {
        sub_1D20DC864((v72 > 1), v73 + 1, 1);
        v15 = v148;
      }

      ++v59;
      v74 = *(v4 + 19);
      *(v15 + 16) = v73 + 1;
      sub_1D20C6FB0(v74, v15 + ((*(v130 + 80) + 32) & ~*(v130 + 80)) + *(v130 + 72) * v73, type metadata accessor for HSGuidanceValue);
      v40 = v140;
      v60 = v134;
      if (v131 == v59)
      {

        goto LABEL_42;
      }
    }

    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v15 = MEMORY[0x1E69E7CC0];
  v4 = v0;
LABEL_42:
  v76 = *(v4 + 52);
  v77 = MEMORY[0x1D3896910](v75);
  v34 = v136;
  sub_1D20BB8E8(v76);
  objc_autoreleasePoolPop(v77);
  v4 = v126;
  if (!v136)
  {
    if (qword_1EE084040 == -1)
    {
LABEL_44:
      v78 = *(v146 + 52);
      v79 = *(v146 + 23);
      sub_1D20CFDF8(0x258uLL, qword_1EE0874E0, *algn_1EE0874E8);
      v80 = sub_1D21130DC();
      v81 = MEMORY[0x1D3896910](v80);
      sub_1D20BBB90(v78, v79);
      objc_autoreleasePoolPop(v81);
      if (v34)
      {
        return;
      }

      v145 = v15;
      v93 = *(v146 + 26);
      v94 = *(v146 + 23);
      v95 = (v4)(v94, 1, v93);
      v142 = *(v146 + 52);
      if (v95 != 1)
      {
        v112 = *(v146 + 50);
        v124 = v146[432];
        v113 = *(v146 + 36);
        v114 = *(v146 + 35);
        v123 = *(v146 + 34);
        v116 = *(v146 + 30);
        v115 = *(v146 + 31);
        v122 = *(v146 + 29);
        v139 = *(v146 + 28);
        v117 = *(v146 + 27);
        v121 = *(v146 + 10);
        v125();
        v118 = *(v117 + 16);
        v118(v115, v113, v93);
        v118(v116, v114, v93);
        v119 = type metadata accessor for HSGuidanceForecast(0);
        sub_1D2112BEC();
        v118(v115, v139, v93);
        v118(v116, v122, v93);
        sub_1D2112BEC();

        swift_setDeallocating();

        sub_1D20A862C(v112 + OBJC_IVAR____TtC12HomeServices30GuidanceForecastRequestBuilder_ratePlan, &qword_1EC6C75A8, &qword_1D2115B80);

        swift_deallocClassInstance();
        v120 = *(v117 + 8);
        v120(v139, v93);
        v120(v122, v93);
        v120(v123, v93);
        v120(v114, v93);
        *v121 = v124;
        *(v121 + 8) = v134;
        *(v121 + *(v119 + 28)) = v145;
        v120(v113, v93);

        v27 = *(v146 + 1);
LABEL_11:

        v27();
        return;
      }

      v96 = *(v146 + 36);
      v97 = *(v146 + 35);
      v98 = *(v146 + 34);
      v99 = *(v146 + 29);
      v100 = *(v146 + 27);

      sub_1D20A862C(v94, &qword_1EC6C7248, &qword_1D2114A80);
      sub_1D20C710C(qword_1EE0841B0, type metadata accessor for NetworkError, &protocol conformance descriptor for NetworkError);
      v17 = swift_allocError();
      *v101 = 1;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      v102 = *(v100 + 8);
      v102(v99, v93);
      v102(v98, v93);
      v102(v97, v93);
      v0 = v146;
      v102(v96, v93);
LABEL_7:
      *(v0 + 8) = v17;
      v19 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C75A0, &qword_1D2115B70);
      v20 = swift_dynamicCast();
      v21 = *(v0 + 50);
      if (v20)
      {
        v22 = *(v0 + 39);
        v23 = *(v0 + 40);
        v24 = *(v0 + 15);

        sub_1D20C6FB0(v23, v22, type metadata accessor for NetworkError);
        sub_1D20AB1E4(v24);
        type metadata accessor for HSGuidanceError(0);
        sub_1D20C710C(&qword_1EE083C08, type metadata accessor for HSGuidanceError, &protocol conformance descriptor for HSGuidanceError);
        swift_willThrowTypedImpl();
        swift_setDeallocating();

        sub_1D20A862C(v21 + OBJC_IVAR____TtC12HomeServices30GuidanceForecastRequestBuilder_ratePlan, &qword_1EC6C75A8, &qword_1D2115B80);

        swift_deallocClassInstance();
        sub_1D20C6F38(v22);
        v25 = *(v0 + 8);
      }

      else
      {
        v26 = *(v0 + 15);

        *v26 = 0xD000000000000037;
        v26[1] = 0x80000001D211ACB0;
        type metadata accessor for HSGuidanceError(0);
        swift_storeEnumTagMultiPayload();
        sub_1D20C710C(&qword_1EE083C08, type metadata accessor for HSGuidanceError, &protocol conformance descriptor for HSGuidanceError);
        swift_willThrowTypedImpl();
        swift_setDeallocating();

        sub_1D20A862C(v21 + OBJC_IVAR____TtC12HomeServices30GuidanceForecastRequestBuilder_ratePlan, &qword_1EC6C75A8, &qword_1D2115B80);

        swift_deallocClassInstance();
        v25 = v17;
      }

      v27 = *(v0 + 1);
      goto LABEL_11;
    }

LABEL_64:
    swift_once();
    goto LABEL_44;
  }
}

uint64_t sub_1D20C295C()
{
  v1 = *(v0 + 328);
  sub_1D20C710C(qword_1EE0841B0, type metadata accessor for NetworkError, &protocol conformance descriptor for NetworkError);
  v2 = swift_allocError();
  sub_1D20C6FB0(v1, v3, type metadata accessor for NetworkError);
  *(v0 + 64) = v2;
  v4 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C75A0, &qword_1D2115B70);
  v5 = swift_dynamicCast();
  v6 = *(v0 + 400);
  if (v5)
  {
    v7 = *(v0 + 312);
    v8 = *(v0 + 320);
    v9 = *(v0 + 120);

    sub_1D20C6FB0(v8, v7, type metadata accessor for NetworkError);
    sub_1D20AB1E4(v9);
    type metadata accessor for HSGuidanceError(0);
    sub_1D20C710C(&qword_1EE083C08, type metadata accessor for HSGuidanceError, &protocol conformance descriptor for HSGuidanceError);
    swift_willThrowTypedImpl();
    swift_setDeallocating();

    sub_1D20A862C(v6 + OBJC_IVAR____TtC12HomeServices30GuidanceForecastRequestBuilder_ratePlan, &qword_1EC6C75A8, &qword_1D2115B80);

    swift_deallocClassInstance();
    sub_1D20C6F38(v7);
    v10 = *(v0 + 64);
  }

  else
  {
    v11 = *(v0 + 120);

    *v11 = 0xD000000000000037;
    v11[1] = 0x80000001D211ACB0;
    type metadata accessor for HSGuidanceError(0);
    swift_storeEnumTagMultiPayload();
    sub_1D20C710C(&qword_1EE083C08, type metadata accessor for HSGuidanceError, &protocol conformance descriptor for HSGuidanceError);
    swift_willThrowTypedImpl();
    swift_setDeallocating();

    sub_1D20A862C(v6 + OBJC_IVAR____TtC12HomeServices30GuidanceForecastRequestBuilder_ratePlan, &qword_1EC6C75A8, &qword_1D2115B80);

    swift_deallocClassInstance();
    v10 = v2;
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1D20C2DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[11] = v4;
  v5[12] = a4;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7508, &unk_1D2116AA0);
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v6 = sub_1D2112B1C();
  v5[15] = v6;
  v5[16] = *(v6 - 8);
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D20C2EC4, 0, 0);
}

uint64_t sub_1D20C2EC4()
{
  v36 = v0;
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[13];
  sub_1D20A8580(v0[10], v3, &qword_1EC6C7508, &unk_1D2116AA0);
  v4 = *(v2 + 48);
  if (v4(v3, 1, v1) == 1)
  {
    v5 = v0[15];
    v6 = v0[13];
    sub_1D20F6D64(v0[14]);
    if (v4(v6, 1, v5) != 1)
    {
      sub_1D20A862C(v0[13], &qword_1EC6C7508, &unk_1D2116AA0);
    }
  }

  else
  {
    v7 = v0[15];
    v8 = v0[16];
    v9 = v0[14];
    (*(v8 + 32))(v9, v0[13], v7);
    (*(v8 + 56))(v9, 0, 1, v7);
  }

  v11 = v0[14];
  v10 = v0[15];
  if (v4(v11, 1, v10) == 1)
  {
    v12 = v0[12];
    sub_1D20A862C(v11, &qword_1EC6C7508, &unk_1D2116AA0);
    *v12 = 0;
    type metadata accessor for NetworkError(0);
    swift_storeEnumTagMultiPayload();
    sub_1D20C710C(qword_1EE0841B0, type metadata accessor for NetworkError, &protocol conformance descriptor for NetworkError);
    swift_willThrowTypedImpl();

    v13 = v0[1];

    return v13();
  }

  else
  {
    (*(v0[16] + 32))(v0[18], v11, v10);
    if (qword_1EE083DD8 != -1)
    {
      swift_once();
    }

    v15 = v0[17];
    v16 = v0[18];
    v17 = v0[15];
    v18 = v0[16];
    v19 = sub_1D211362C();
    v0[19] = __swift_project_value_buffer(v19, qword_1EE0874A8);
    (*(v18 + 16))(v15, v16, v17);
    v20 = sub_1D21135FC();
    v21 = sub_1D2113A9C();
    v22 = os_log_type_enabled(v20, v21);
    v24 = v0[16];
    v23 = v0[17];
    v25 = v0[15];
    if (v22)
    {
      v26 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v35 = v34;
      *v26 = 136315138;
      sub_1D20C710C(&qword_1EE0843F0, MEMORY[0x1E6967EC8], MEMORY[0x1E6967EE0]);
      v27 = sub_1D2113E0C();
      v29 = v28;
      v30 = *(v24 + 8);
      v30(v23, v25);
      v31 = sub_1D20B75F0(v27, v29, &v35);

      *(v26 + 4) = v31;
      _os_log_impl(&dword_1D209F000, v20, v21, "Fetching request %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x1D3896EB0](v34, -1, -1);
      MEMORY[0x1D3896EB0](v26, -1, -1);
    }

    else
    {

      v30 = *(v24 + 8);
      v30(v23, v25);
    }

    v0[20] = v30;
    sub_1D20DB540(0xD00000000000001CLL, 0x80000001D211AC50, 0xD00000000000001DLL, 0x80000001D211AC70);
    v32 = swift_task_alloc();
    v0[21] = v32;
    *v32 = v0;
    v32[1] = sub_1D20C3384;
    v33 = v0[18];

    return MEMORY[0x1EEDC6260](v33, 0);
  }
}

uint64_t sub_1D20C3384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  *(*v4 + 176) = v3;

  if (v3)
  {
    v9 = sub_1D20C71FC;
  }

  else
  {
    v8[23] = a3;
    v8[24] = a2;
    v8[25] = a1;
    v9 = sub_1D20C34C0;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1D20C34C0()
{
  v1 = v0[23];
  sub_1D20C7064(v0[25], v0[24]);
  v58 = v1;
  v2 = v1;
  v3 = sub_1D21135FC();
  v4 = sub_1D2113A9C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1D209F000, v3, v4, "Successfully fetched response", v5, 2u);
    MEMORY[0x1D3896EB0](v5, -1, -1);
  }

  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6)
  {
    v16 = sub_1D21135FC();
    v17 = sub_1D2113A7C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1D209F000, v16, v17, "Unable to cast response to HTTPURLResponse", v18, 2u);
      MEMORY[0x1D3896EB0](v18, -1, -1);
    }

    v20 = v0[24];
    v19 = v0[25];
    v21 = v0[23];
    v22 = v0[20];
    v23 = v0[18];
    v24 = v0[15];
    v25 = v0[12];

    *v25 = 2;
    type metadata accessor for NetworkError(0);
    swift_storeEnumTagMultiPayload();
    sub_1D20C710C(qword_1EE0841B0, type metadata accessor for NetworkError, &protocol conformance descriptor for NetworkError);
    swift_willThrowTypedImpl();
    sub_1D20B98A4(v19, v20);
    sub_1D20C7018(v19, v20, v1, 0);

    v22(v23, v24);
    goto LABEL_14;
  }

  v7 = v6;
  sub_1D20DBA60(0xD000000000000011, 0x80000001D211AC90, [v6 statusCode], &unk_1F4D9F1A8);
  if ([v7 statusCode] != 200)
  {
    v27 = v0[24];
    v26 = v0[25];
    v28 = v0[23];
    v57 = v0[20];
    v29 = v0[18];
    v30 = v0[15];
    v31 = v0[12];
    *v31 = [v7 statusCode];
    type metadata accessor for NetworkError(0);
    swift_storeEnumTagMultiPayload();
    sub_1D20C710C(qword_1EE0841B0, type metadata accessor for NetworkError, &protocol conformance descriptor for NetworkError);
    swift_willThrowTypedImpl();

    sub_1D20B98A4(v26, v27);
    sub_1D20C7018(v26, v27, v1, 0);
    v57(v29, v30);
LABEL_14:

    v32 = v0[1];

    return v32();
  }

  v8 = sub_1D21135FC();
  v9 = sub_1D2113A9C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1D209F000, v8, v9, "Decoding response...", v10, 2u);
    MEMORY[0x1D3896EB0](v10, -1, -1);
  }

  v11 = v0[22];

  sub_1D2112B4C();
  swift_allocObject();
  sub_1D2112B3C();
  sub_1D20C71A8();
  sub_1D2112B2C();
  if (v11)
  {
    v13 = v0[24];
    v12 = v0[25];
    v14 = v0[23];
    v54 = v0[18];
    v56 = v0[20];
    v15 = v0[15];
    type metadata accessor for NetworkError(0);
    swift_storeEnumTagMultiPayload();
    sub_1D20C710C(qword_1EE0841B0, type metadata accessor for NetworkError, &protocol conformance descriptor for NetworkError);
    swift_willThrowTypedImpl();

    sub_1D20B98A4(v12, v13);

    sub_1D20C7018(v12, v13, v58, 0);

    v56(v54, v15);
    goto LABEL_14;
  }

  v34 = v0[3];
  v55 = v0[2];
  v35 = v0[5];
  v52 = v0[4];
  v36 = v0[6];
  v50 = v0[7];

  v53 = v34;

  v51 = v36;

  v37 = sub_1D21135FC();
  v38 = sub_1D2113A9C();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_1D209F000, v37, v38, "Successfully decoded response", v39, 2u);
    MEMORY[0x1D3896EB0](v39, -1, -1);
  }

  v40 = sub_1D21135FC();
  v41 = sub_1D2113A9C();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_1D209F000, v40, v41, "==== EK Fetching request complete ====", v42, 2u);
    MEMORY[0x1D3896EB0](v42, -1, -1);
  }

  v44 = v0[24];
  v43 = v0[25];
  v45 = v0[18];
  v49 = v0[20];
  v46 = v0[15];
  v47 = v0[8];
  sub_1D20B98A4(v43, v44);

  sub_1D20C7018(v43, v44, v1, 0);

  v49(v45, v46);
  *v47 = v55;
  v47[1] = v53;
  v47[2] = v52;
  v47[3] = v35;
  v47[4] = v51;
  v47[5] = v50;

  v48 = v0[1];

  return v48(v7);
}

uint64_t sub_1D20C3C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[11] = v4;
  v5[12] = a4;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7508, &unk_1D2116AA0);
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v6 = sub_1D2112B1C();
  v5[15] = v6;
  v5[16] = *(v6 - 8);
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D20C3D24, 0, 0);
}

uint64_t sub_1D20C3D24()
{
  v36 = v0;
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[13];
  sub_1D20A8580(v0[10], v3, &qword_1EC6C7508, &unk_1D2116AA0);
  v4 = *(v2 + 48);
  if (v4(v3, 1, v1) == 1)
  {
    v5 = v0[15];
    v6 = v0[13];
    sub_1D20F2B0C(v0[14]);
    if (v4(v6, 1, v5) != 1)
    {
      sub_1D20A862C(v0[13], &qword_1EC6C7508, &unk_1D2116AA0);
    }
  }

  else
  {
    v7 = v0[15];
    v8 = v0[16];
    v9 = v0[14];
    (*(v8 + 32))(v9, v0[13], v7);
    (*(v8 + 56))(v9, 0, 1, v7);
  }

  v11 = v0[14];
  v10 = v0[15];
  if (v4(v11, 1, v10) == 1)
  {
    v12 = v0[12];
    sub_1D20A862C(v11, &qword_1EC6C7508, &unk_1D2116AA0);
    *v12 = 0;
    type metadata accessor for NetworkError(0);
    swift_storeEnumTagMultiPayload();
    sub_1D20C710C(qword_1EE0841B0, type metadata accessor for NetworkError, &protocol conformance descriptor for NetworkError);
    swift_willThrowTypedImpl();

    v13 = v0[1];

    return v13();
  }

  else
  {
    (*(v0[16] + 32))(v0[18], v11, v10);
    if (qword_1EE083DD8 != -1)
    {
      swift_once();
    }

    v15 = v0[17];
    v16 = v0[18];
    v17 = v0[15];
    v18 = v0[16];
    v19 = sub_1D211362C();
    v0[19] = __swift_project_value_buffer(v19, qword_1EE0874A8);
    (*(v18 + 16))(v15, v16, v17);
    v20 = sub_1D21135FC();
    v21 = sub_1D2113A9C();
    v22 = os_log_type_enabled(v20, v21);
    v24 = v0[16];
    v23 = v0[17];
    v25 = v0[15];
    if (v22)
    {
      v26 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v35 = v34;
      *v26 = 136315138;
      sub_1D20C710C(&qword_1EE0843F0, MEMORY[0x1E6967EC8], MEMORY[0x1E6967EE0]);
      v27 = sub_1D2113E0C();
      v29 = v28;
      v30 = *(v24 + 8);
      v30(v23, v25);
      v31 = sub_1D20B75F0(v27, v29, &v35);

      *(v26 + 4) = v31;
      _os_log_impl(&dword_1D209F000, v20, v21, "Fetching request %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x1D3896EB0](v34, -1, -1);
      MEMORY[0x1D3896EB0](v26, -1, -1);
    }

    else
    {

      v30 = *(v24 + 8);
      v30(v23, v25);
    }

    v0[20] = v30;
    sub_1D20DB540(0xD00000000000001CLL, 0x80000001D211AC50, 0xD00000000000001DLL, 0x80000001D211AC70);
    v32 = swift_task_alloc();
    v0[21] = v32;
    *v32 = v0;
    v32[1] = sub_1D20C41E4;
    v33 = v0[18];

    return MEMORY[0x1EEDC6260](v33, 0);
  }
}

uint64_t sub_1D20C41E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  *(*v4 + 176) = v3;

  if (v3)
  {
    v9 = sub_1D20C4A68;
  }

  else
  {
    v8[23] = a3;
    v8[24] = a2;
    v8[25] = a1;
    v9 = sub_1D20C4320;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1D20C4320()
{
  v1 = v0[23];
  sub_1D20C7064(v0[25], v0[24]);
  v58 = v1;
  v2 = v1;
  v3 = sub_1D21135FC();
  v4 = sub_1D2113A9C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1D209F000, v3, v4, "Successfully fetched response", v5, 2u);
    MEMORY[0x1D3896EB0](v5, -1, -1);
  }

  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6)
  {
    v16 = sub_1D21135FC();
    v17 = sub_1D2113A7C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1D209F000, v16, v17, "Unable to cast response to HTTPURLResponse", v18, 2u);
      MEMORY[0x1D3896EB0](v18, -1, -1);
    }

    v20 = v0[24];
    v19 = v0[25];
    v21 = v0[23];
    v22 = v0[20];
    v23 = v0[18];
    v24 = v0[15];
    v25 = v0[12];

    *v25 = 2;
    type metadata accessor for NetworkError(0);
    swift_storeEnumTagMultiPayload();
    sub_1D20C710C(qword_1EE0841B0, type metadata accessor for NetworkError, &protocol conformance descriptor for NetworkError);
    swift_willThrowTypedImpl();
    sub_1D20B98A4(v19, v20);
    sub_1D20C7018(v19, v20, v1, 0);

    v22(v23, v24);
    goto LABEL_14;
  }

  v7 = v6;
  sub_1D20DBA60(0xD000000000000011, 0x80000001D211AC90, [v6 statusCode], &unk_1F4D9F1D0);
  if ([v7 statusCode] != 200)
  {
    v27 = v0[24];
    v26 = v0[25];
    v28 = v0[23];
    v57 = v0[20];
    v29 = v0[18];
    v30 = v0[15];
    v31 = v0[12];
    *v31 = [v7 statusCode];
    type metadata accessor for NetworkError(0);
    swift_storeEnumTagMultiPayload();
    sub_1D20C710C(qword_1EE0841B0, type metadata accessor for NetworkError, &protocol conformance descriptor for NetworkError);
    swift_willThrowTypedImpl();

    sub_1D20B98A4(v26, v27);
    sub_1D20C7018(v26, v27, v1, 0);
    v57(v29, v30);
LABEL_14:

    v32 = v0[1];

    return v32();
  }

  v8 = sub_1D21135FC();
  v9 = sub_1D2113A9C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1D209F000, v8, v9, "Decoding response...", v10, 2u);
    MEMORY[0x1D3896EB0](v10, -1, -1);
  }

  v11 = v0[22];

  sub_1D2112B4C();
  swift_allocObject();
  sub_1D2112B3C();
  sub_1D20C70B8();
  sub_1D2112B2C();
  if (v11)
  {
    v13 = v0[24];
    v12 = v0[25];
    v14 = v0[23];
    v54 = v0[18];
    v56 = v0[20];
    v15 = v0[15];
    type metadata accessor for NetworkError(0);
    swift_storeEnumTagMultiPayload();
    sub_1D20C710C(qword_1EE0841B0, type metadata accessor for NetworkError, &protocol conformance descriptor for NetworkError);
    swift_willThrowTypedImpl();

    sub_1D20B98A4(v12, v13);

    sub_1D20C7018(v12, v13, v58, 0);

    v56(v54, v15);
    goto LABEL_14;
  }

  v53 = v0[3];
  v55 = v0[2];
  v34 = v0[5];
  v52 = v0[4];
  v35 = v0[6];
  v36 = v0[7];

  v51 = v34;

  v50 = v36;

  v37 = sub_1D21135FC();
  v38 = sub_1D2113A9C();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_1D209F000, v37, v38, "Successfully decoded response", v39, 2u);
    MEMORY[0x1D3896EB0](v39, -1, -1);
  }

  v40 = sub_1D21135FC();
  v41 = sub_1D2113A9C();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_1D209F000, v40, v41, "==== EK Fetching request complete ====", v42, 2u);
    MEMORY[0x1D3896EB0](v42, -1, -1);
  }

  v44 = v0[24];
  v43 = v0[25];
  v45 = v0[18];
  v49 = v0[20];
  v46 = v0[15];
  v47 = v0[8];
  sub_1D20B98A4(v43, v44);

  sub_1D20C7018(v43, v44, v1, 0);

  v49(v45, v46);
  *v47 = v55;
  v47[1] = v53;
  v47[2] = v52;
  v47[3] = v51;
  v47[4] = v35;
  v47[5] = v50;

  v48 = v0[1];

  return v48(v7);
}

uint64_t sub_1D20C4A68()
{
  v1 = v0[22];
  v2 = v0[20];
  v3 = v0[18];
  v4 = v0[15];
  sub_1D20F5FDC(v1, v0[12]);
  type metadata accessor for NetworkError(0);
  sub_1D20C710C(qword_1EE0841B0, type metadata accessor for NetworkError, &protocol conformance descriptor for NetworkError);
  swift_willThrowTypedImpl();
  sub_1D20C7018(v1, 0, 0, 1);
  v2(v3, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1D20C4B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[14] = a5;
  v6[15] = a6;
  v6[12] = a3;
  v6[13] = a4;
  v6[10] = a1;
  v6[11] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7598, &qword_1D2115B60);
  v6[16] = swift_task_alloc();
  v7 = type metadata accessor for HSGuidanceValue(0);
  v6[17] = v7;
  v6[18] = *(v7 - 8);
  v6[19] = swift_task_alloc();
  v8 = type metadata accessor for HSCleanGuidanceThresholds(0);
  v6[20] = v8;
  v6[21] = *(v8 - 8);
  v6[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C74D0, ".z");
  v6[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7248, &qword_1D2114A80);
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  v9 = sub_1D211319C();
  v6[26] = v9;
  v6[27] = *(v9 - 8);
  v6[28] = swift_task_alloc();
  v6[29] = swift_task_alloc();
  v6[30] = swift_task_alloc();
  v6[31] = swift_task_alloc();
  v6[32] = swift_task_alloc();
  v6[33] = swift_task_alloc();
  v6[34] = type metadata accessor for NetworkError(0);
  v6[35] = swift_task_alloc();
  v6[36] = swift_task_alloc();
  v6[37] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7508, &unk_1D2116AA0);
  v6[38] = swift_task_alloc();
  v10 = sub_1D2112C2C();
  v6[39] = v10;
  v6[40] = *(v10 - 8);
  v6[41] = swift_task_alloc();
  v11 = sub_1D21131DC();
  v6[42] = v11;
  v6[43] = *(v11 - 8);
  v6[44] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D20C4F44, 0, 0);
}

uint64_t sub_1D20C4F44()
{
  v2 = v0[43];
  v1 = v0[44];
  v3 = v0[42];
  sub_1D21131CC();
  sub_1D21131AC();
  (*(v2 + 8))(v1, v3);
  v4 = sub_1D211382C();
  v6 = v5;

  v0[45] = v4;
  v0[46] = v6;
  v7 = swift_task_alloc();
  v0[47] = v7;
  *v7 = v0;
  v7[1] = sub_1D20C5050;
  v8 = v0[14];

  return sub_1D20EF460(v8);
}

uint64_t sub_1D20C5050()
{

  return MEMORY[0x1EEE6DFA0](sub_1D20C514C, 0, 0);
}

uint64_t sub_1D20C514C()
{
  v2 = v0[45];
  v1 = v0[46];
  v4 = v0[40];
  v3 = v0[41];
  v5 = v0[38];
  v6 = v0[39];
  v7 = v0[12];
  v8 = v0[11];
  (*(v4 + 16))(v3, v0[13], v6);
  type metadata accessor for GuidanceHistoryRequestBuilder(0);
  v9 = swift_allocObject();
  v0[48] = v9;
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;
  (*(v4 + 32))(v9 + OBJC_IVAR____TtC12HomeServices29GuidanceHistoryRequestBuilder_interval, v3, v6);
  v10 = (v9 + OBJC_IVAR____TtC12HomeServices29GuidanceHistoryRequestBuilder_requestId);
  *v10 = v2;
  v10[1] = v1;
  v11 = sub_1D2112B1C();
  (*(*(v11 - 8) + 56))(v5, 1, 1, v11);

  v12 = swift_task_alloc();
  v0[49] = v12;
  *v12 = v0;
  v12[1] = sub_1D20C52EC;
  v14 = v0[37];
  v13 = v0[38];
  v15 = v0[14];

  return sub_1D20C3C0C((v0 + 2), v15, v13, v14);
}

uint64_t sub_1D20C52EC(void *a1)
{
  v4 = *v2;
  *(*v2 + 400) = v1;

  v5 = *(v4 + 304);
  if (v1)
  {
    sub_1D20A862C(v5, &qword_1EC6C7508, &unk_1D2116AA0);
    v6 = sub_1D20C6484;
  }

  else
  {

    sub_1D20A862C(v5, &qword_1EC6C7508, &unk_1D2116AA0);
    v6 = sub_1D20C5454;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1D20C5454()
{
  v131 = v0;
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);
  v5 = objc_allocWithZone(MEMORY[0x1E696AC80]);

  v6 = [v5 init];
  [v6 setFormatOptions_];
  v7 = sub_1D21137BC();

  v8 = [v6 dateFromString_];

  if (v8)
  {
    sub_1D211316C();

    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  v11 = *(v0 + 208);
  v10 = *(v0 + 216);
  v13 = *(v0 + 192);
  v12 = *(v0 + 200);
  (*(v10 + 56))(v13, v9, 1, v11);
  sub_1D20B7DA8(v13, v12, &qword_1EC6C7248, &qword_1D2114A80);
  if ((*(v10 + 48))(v12, 1, v11) != 1)
  {
    v15 = *(v0 + 184);
    (*(*(v0 + 216) + 32))(*(v0 + 264), *(v0 + 200), *(v0 + 208));

    sub_1D20B9AB8(v1, v2, v15);

    v16 = sub_1D2112E7C();
    v17 = *(v16 - 8);
    v18 = (*(v17 + 48))(v15, 1, v16);
    v19 = *(v0 + 184);
    if (v18 == 1)
    {

      sub_1D20A862C(v19, &qword_1EC6C74D0, ".z");
LABEL_10:
      (*(*(v0 + 216) + 8))(*(v0 + 264), *(v0 + 208));
      goto LABEL_11;
    }

    v20 = sub_1D2112E1C();
    v22 = v21;
    (*(v17 + 8))(v19, v16);
    if (v22)
    {

      goto LABEL_10;
    }

    if ((v20 * 60) >> 64 != (60 * v20) >> 63)
    {
      goto LABEL_56;
    }

    sub_1D21130DC();
    v37 = *(v3 + 16);
    v117 = v4;
    if (v37)
    {
      v38 = *(v0 + 168);
      v125 = MEMORY[0x1E69E7CC0];

      sub_1D20DC8A8(0, v37, 0);
      if (*(v3 + 16))
      {
        v121 = v37;
        v39 = v125;
        v40 = *(v0 + 400);
        v41 = *(v0 + 176);
        v42 = *(v3 + 40);
        v43 = *(v3 + 48);
        v44 = *(v3 + 56);
        v126 = *(v3 + 32);
        v127 = v42;
        v128 = v43;
        v129 = v44;
        v130 = *(v3 + 64);

        sub_1D20C68A4(&v126, (v0 + 72), v41);
        if (v40)
        {
          v45 = *(v0 + 256);
          v122 = *(v0 + 264);
          v47 = *(v0 + 208);
          v46 = *(v0 + 216);
          swift_bridgeObjectRelease_n();

          v48 = *(v46 + 8);
          v48(v45, v47);

          v23 = *(v0 + 72);
          v48(v122, v47);
          goto LABEL_12;
        }

        v50 = *(v125 + 16);
        v49 = *(v125 + 24);
        if (v50 >= v49 >> 1)
        {
          sub_1D20DC8A8((v49 > 1), v50 + 1, 1);
          v39 = v125;
        }

        v51 = *(v0 + 176);
        *(v39 + 16) = v50 + 1;
        v119 = (*(v38 + 80) + 32) & ~*(v38 + 80);
        v120 = v39;
        v52 = v39 + v119;
        v53 = *(v38 + 72);
        sub_1D20C6FB0(v51, v52 + v53 * v50, type metadata accessor for HSCleanGuidanceThresholds);
        v4 = v117;
        if (v121 == 1)
        {
LABEL_28:

          goto LABEL_29;
        }

        v97 = (v3 + 112);
        v98 = 1;
        while (v98 < *(v3 + 16))
        {
          v99 = *(v0 + 176);
          v100 = *(v97 - 3);
          v101 = *(v97 - 2);
          v102 = *(v97 - 1);
          v126 = *(v97 - 4);
          v127 = v100;
          v128 = v101;
          v129 = v102;
          v130 = *v97;

          sub_1D20C68A4(&v126, (v0 + 72), v99);

          v103 = v120;
          v105 = *(v120 + 16);
          v104 = *(v120 + 24);
          if (v105 >= v104 >> 1)
          {
            sub_1D20DC8A8((v104 > 1), v105 + 1, 1);
            v103 = v120;
          }

          ++v98;
          v106 = *(v0 + 176);
          *(v103 + 16) = v105 + 1;
          v120 = v103;
          sub_1D20C6FB0(v106, v103 + v119 + v53 * v105, type metadata accessor for HSCleanGuidanceThresholds);
          v97 += 3;
          v4 = v117;
          if (v121 == v98)
          {
            goto LABEL_28;
          }
        }
      }

LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      swift_once();
LABEL_43:
      v84 = sub_1D211362C();
      __swift_project_value_buffer(v84, qword_1EE0874A8);

      v85 = sub_1D21135FC();
      v86 = sub_1D2113A9C();
      v124 = v2;
      if (os_log_type_enabled(v85, v86))
      {
        v87 = swift_slowAlloc();
        *v87 = 134217984;
        *(v87 + 4) = *(v2 + 16);

        _os_log_impl(&dword_1D209F000, v85, v86, "Number of Guidance points: %ld", v87, 0xCu);
        MEMORY[0x1D3896EB0](v87, -1, -1);
      }

      else
      {
      }

      v88 = *(v0 + 384);
      v107 = *(v0 + 320);
      v108 = *(v0 + 312);
      v89 = *(v0 + 256);
      v109 = *(v0 + 264);
      v90 = *(v0 + 224);
      v92 = *(v0 + 208);
      v91 = *(v0 + 216);
      v93 = *(v0 + 80);
      v94 = *(v91 + 16);
      (v94)(*(v0 + 232));
      v94(v90, v89, v92);
      sub_1D2112BEC();
      swift_setDeallocating();

      (*(v107 + 8))(v88 + OBJC_IVAR____TtC12HomeServices29GuidanceHistoryRequestBuilder_interval, v108);

      swift_deallocClassInstance();
      v95 = *(v91 + 8);
      v95(v89, v92);
      v96 = type metadata accessor for HSHistoricalGuidance(0);
      *(v93 + *(v96 + 20)) = v124;
      *(v93 + *(v96 + 24)) = v120;
      v95(v109, v92);

      v35 = *(v0 + 8);
      goto LABEL_16;
    }

    v120 = MEMORY[0x1E69E7CC0];
LABEL_29:

    v54 = *(v4 + 16);
    if (!v54)
    {

      v2 = MEMORY[0x1E69E7CC0];
LABEL_42:
      if (qword_1EE083DD8 == -1)
      {
        goto LABEL_43;
      }

      goto LABEL_57;
    }

    v55 = *(v0 + 216);
    v56 = *(v0 + 168);
    v111 = *(v0 + 136);
    v112 = *(v0 + 144);
    v126 = MEMORY[0x1E69E7CC0];
    sub_1D20DC864(0, v54, 0);
    v57 = 0;
    v2 = v126;
    v58 = *(v4 + 16);
    v110 = (v55 + 16);
    v114 = (v56 + 48);
    v115 = (v55 + 8);
    if (v58 >= v54)
    {
      v58 = v54;
    }

    v116 = v58;
    v113 = v54;
    while (v116 != v57)
    {
      if (v57 >= *(v4 + 16))
      {
        goto LABEL_54;
      }

      v123 = v2;
      v59 = v4;
      v60 = *(v0 + 240);
      v61 = *(v0 + 248);
      v62 = *(v0 + 160);
      v63 = *(v0 + 128);
      v64 = *(v59 + 8 * v57 + 32);
      sub_1D21130DC();
      sub_1D21130DC();
      v65 = swift_task_alloc();
      *(v65 + 16) = v61;
      *(v65 + 24) = v60;
      sub_1D20F9D84(sub_1D20C6F94, v120, v63);

      if ((*v114)(v63, 1, v62) == 1)
      {
        v76 = *(v0 + 264);
        v77 = *(v0 + 248);
        v78 = *(v0 + 256);
        v79 = *(v0 + 240);
        v80 = *(v0 + 208);
        v81 = *(v0 + 128);
        sub_1D20C710C(qword_1EE0841B0, type metadata accessor for NetworkError, &protocol conformance descriptor for NetworkError);
        v23 = swift_allocError();
        *v82 = 2;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        sub_1D20A862C(v81, &qword_1EC6C7598, &qword_1D2115B60);
        v83 = *v115;
        (*v115)(v79, v80);
        v83(v77, v80);

        v83(v78, v80);

        v83(v76, v80);
        goto LABEL_12;
      }

      v67 = *(v0 + 240);
      v66 = *(v0 + 248);
      v68 = *(v0 + 224);
      v69 = *(v0 + 208);
      v70 = *(v0 + 152);
      v118 = *(v0 + 128);
      v71 = *v110;
      (*v110)(*(v0 + 232), v66, v69);
      v71(v68, v67, v69);
      sub_1D2112BEC();
      *(v70 + *(v111 + 20)) = v64;
      sub_1D20A862C(v118, &qword_1EC6C7598, &qword_1D2115B60);
      v72 = *v115;
      (*v115)(v67, v69);
      v72(v66, v69);
      v2 = v123;
      v126 = v123;
      v74 = *(v123 + 16);
      v73 = *(v123 + 24);
      if (v74 >= v73 >> 1)
      {
        sub_1D20DC864((v73 > 1), v74 + 1, 1);
        v2 = v126;
      }

      ++v57;
      v75 = *(v0 + 152);
      *(v2 + 16) = v74 + 1;
      sub_1D20C6FB0(v75, v2 + ((*(v112 + 80) + 32) & ~*(v112 + 80)) + *(v112 + 72) * v74, type metadata accessor for HSGuidanceValue);
      v4 = v117;
      if (v113 == v57)
      {

        goto LABEL_42;
      }
    }

    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v14 = *(v0 + 200);

  sub_1D20A862C(v14, &qword_1EC6C7248, &qword_1D2114A80);
LABEL_11:
  sub_1D20C710C(qword_1EE0841B0, type metadata accessor for NetworkError, &protocol conformance descriptor for NetworkError);
  v23 = swift_allocError();
  *v24 = 1;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
LABEL_12:
  *(v0 + 64) = v23;
  v25 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C75A0, &qword_1D2115B70);
  v26 = swift_dynamicCast();
  v27 = *(v0 + 384);
  v28 = *(v0 + 312);
  v29 = *(v0 + 320);
  if (v26)
  {
    v30 = *(v0 + 280);
    v31 = *(v0 + 288);
    v32 = *(v0 + 120);

    sub_1D20C6FB0(v31, v30, type metadata accessor for NetworkError);
    sub_1D20AB1E4(v32);
    type metadata accessor for HSGuidanceError(0);
    sub_1D20C710C(&qword_1EE083C08, type metadata accessor for HSGuidanceError, &protocol conformance descriptor for HSGuidanceError);
    swift_willThrowTypedImpl();
    swift_setDeallocating();

    (*(v29 + 8))(v27 + OBJC_IVAR____TtC12HomeServices29GuidanceHistoryRequestBuilder_interval, v28);

    swift_deallocClassInstance();
    sub_1D20C6F38(v30);
    v33 = *(v0 + 64);
  }

  else
  {
    v34 = *(v0 + 120);

    *v34 = 0xD000000000000039;
    v34[1] = 0x80000001D211AC10;
    type metadata accessor for HSGuidanceError(0);
    swift_storeEnumTagMultiPayload();
    sub_1D20C710C(&qword_1EE083C08, type metadata accessor for HSGuidanceError, &protocol conformance descriptor for HSGuidanceError);
    swift_willThrowTypedImpl();
    swift_setDeallocating();

    (*(v29 + 8))(v27 + OBJC_IVAR____TtC12HomeServices29GuidanceHistoryRequestBuilder_interval, v28);

    swift_deallocClassInstance();
    v33 = v23;
  }

  v35 = *(v0 + 8);
LABEL_16:

  return v35();
}

uint64_t sub_1D20C6484()
{
  v1 = *(v0 + 296);
  sub_1D20C710C(qword_1EE0841B0, type metadata accessor for NetworkError, &protocol conformance descriptor for NetworkError);
  v2 = swift_allocError();
  sub_1D20C6FB0(v1, v3, type metadata accessor for NetworkError);
  *(v0 + 64) = v2;
  v4 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C75A0, &qword_1D2115B70);
  v5 = swift_dynamicCast();
  v6 = *(v0 + 384);
  v7 = *(v0 + 312);
  v8 = *(v0 + 320);
  if (v5)
  {
    v9 = *(v0 + 280);
    v10 = *(v0 + 288);
    v11 = *(v0 + 120);

    sub_1D20C6FB0(v10, v9, type metadata accessor for NetworkError);
    sub_1D20AB1E4(v11);
    type metadata accessor for HSGuidanceError(0);
    sub_1D20C710C(&qword_1EE083C08, type metadata accessor for HSGuidanceError, &protocol conformance descriptor for HSGuidanceError);
    swift_willThrowTypedImpl();
    swift_setDeallocating();

    (*(v8 + 8))(v6 + OBJC_IVAR____TtC12HomeServices29GuidanceHistoryRequestBuilder_interval, v7);

    swift_deallocClassInstance();
    sub_1D20C6F38(v9);
    v12 = *(v0 + 64);
  }

  else
  {
    v13 = *(v0 + 120);

    *v13 = 0xD000000000000039;
    v13[1] = 0x80000001D211AC10;
    type metadata accessor for HSGuidanceError(0);
    swift_storeEnumTagMultiPayload();
    sub_1D20C710C(&qword_1EE083C08, type metadata accessor for HSGuidanceError, &protocol conformance descriptor for HSGuidanceError);
    swift_willThrowTypedImpl();
    swift_setDeallocating();

    (*(v8 + 8))(v6 + OBJC_IVAR____TtC12HomeServices29GuidanceHistoryRequestBuilder_interval, v7);

    swift_deallocClassInstance();
    v12 = v2;
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1D20C68A4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v53 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7248, &qword_1D2114A80);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v57 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v58 = &v48 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v48 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v48 - v13;
  v15 = sub_1D211319C();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v52 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v51 = &v48 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v54 = &v48 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v59 = &v48 - v23;
  v24 = a1[2];
  v55 = a1[3];
  v56 = v24;
  v26 = a1[4];
  v25 = a1[5];
  v27 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
  [v27 setFormatOptions_];
  v28 = sub_1D21137BC();
  v29 = [v27 dateFromString_];

  if (v29)
  {
    sub_1D211316C();

    v30 = v16[7];
    v30(v12, 0, 1, v15);
  }

  else
  {
    v30 = v16[7];
    v30(v12, 1, 1, v15);
  }

  sub_1D20B7DA8(v12, v14, &qword_1EC6C7248, &qword_1D2114A80);
  v31 = v16[6];
  if (v31(v14, 1, v15) == 1)
  {
    goto LABEL_10;
  }

  v49 = a2;
  v50 = v16;
  v48 = v16[4];
  v48(v59, v14, v15);
  v32 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
  [v32 setFormatOptions_];
  v33 = sub_1D21137BC();
  v34 = [v32 dateFromString_];

  if (v34)
  {
    v35 = v57;
    sub_1D211316C();

    v36 = 0;
  }

  else
  {
    v36 = 1;
    v35 = v57;
  }

  v14 = v58;
  v37 = v50;
  v30(v35, v36, 1, v15);
  sub_1D20B7DA8(v35, v14, &qword_1EC6C7248, &qword_1D2114A80);
  if (v31(v14, 1, v15) == 1)
  {
    (v37[1])(v59, v15);
    a2 = v49;
LABEL_10:
    sub_1D20A862C(v14, &qword_1EC6C7248, &qword_1D2114A80);
    type metadata accessor for NetworkError(0);
    sub_1D20C710C(qword_1EE0841B0, type metadata accessor for NetworkError, &protocol conformance descriptor for NetworkError);
    v38 = swift_allocError();
    *v39 = 1;
    swift_storeEnumTagMultiPayload();
    result = swift_willThrow();
LABEL_11:
    *a2 = v38;
    return result;
  }

  v41 = v54;
  v48(v54, v14, v15);
  v42 = v59;
  if (sub_1D21130FC())
  {
    type metadata accessor for NetworkError(0);
    sub_1D20C710C(qword_1EE0841B0, type metadata accessor for NetworkError, &protocol conformance descriptor for NetworkError);
    v38 = swift_allocError();
    *v43 = 2;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v44 = v37[1];
    v44(v41, v15);
    result = (v44)(v42, v15);
    a2 = v49;
    goto LABEL_11;
  }

  v45 = v37[2];
  v45(v51, v42, v15);
  v45(v52, v41, v15);
  v46 = v53;
  sub_1D2112BEC();
  v47 = v37[1];
  v47(v41, v15);
  v47(v42, v15);
  result = type metadata accessor for HSCleanGuidanceThresholds(0);
  *(v46 + *(result + 20)) = v26;
  *(v46 + *(result + 24)) = v25;
  return result;
}

void *sub_1D20C6EE8(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_1D20C6F08@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1D20C6F38(uint64_t a1)
{
  v2 = type metadata accessor for NetworkError(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D20C6FB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1D20C7018(void *a1, unint64_t a2, void *a3, char a4)
{
  if (a4)
  {
  }

  else
  {
    sub_1D20B98A4(a1, a2);
    a1 = a3;
  }
}

void sub_1D20C7064(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

unint64_t sub_1D20C70B8()
{
  result = qword_1EE0837C0;
  if (!qword_1EE0837C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0837C0);
  }

  return result;
}

uint64_t sub_1D20C710C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D20C7154()
{
  if (sub_1D2112C1C())
  {
    return sub_1D2112C1C() & 1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1D20C71A8()
{
  result = qword_1EE083EE0;
  if (!qword_1EE083EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE083EE0);
  }

  return result;
}

uint64_t sub_1D20C721C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v136 = a5;
  v134 = a4;
  v133 = a3;
  v146 = a2;
  v144 = a1;
  v143 = a6;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C75B8, &qword_1D2115C40);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v137 = &v131[-v7];
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C75C0, &qword_1D2115C48);
  v139 = *(v140 - 8);
  MEMORY[0x1EEE9AC00](v140);
  v148 = &v131[-v8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C75C8, &qword_1D2115C50);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v131[-v10];
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C75D0, &unk_1D2115C58);
  v151 = *(v145 - 8);
  MEMORY[0x1EEE9AC00](v145);
  v135 = &v131[-v12];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7298, &unk_1D21149F0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v131[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C75D8, &qword_1D2115C68);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v131[-v17];
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C75E0, &qword_1D2115C70);
  v142 = *(v149 - 8);
  MEMORY[0x1EEE9AC00](v149);
  v20 = &v131[-v19];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C75E8, &qword_1D2115C78);
  v141 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v131[-v22];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C75F0, &qword_1D2115C80);
  sub_1D211341C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C75F8, &qword_1D2115C88);
  v24 = v143;
  v150 = v20;
  v25 = v144;
  sub_1D211341C();
  v26 = sub_1D21132EC();
  (*(*(v26 - 8) + 56))(v18, 1, 1, v26);
  v27 = sub_1D211335C();
  (*(*(v27 - 8) + 56))(v15, 1, 1, v27);
  v28 = v21;
  v29 = v146;
  sub_1D2112E6C();
  v30 = v147;
  sub_1D211343C();
  v138 = v23;
  if (v30)
  {

    (*(v151 + 56))(v11, 1, 1, v145);
    goto LABEL_4;
  }

  v31 = v151;
  v32 = v145;
  if ((*(v151 + 48))(v11, 1, v145) == 1)
  {
LABEL_4:
    v33 = v28;
    sub_1D20A862C(v11, &qword_1EC6C75C8, &qword_1D2115C50);
    v34 = v137;
    v35 = v149;
    v36 = v150;
    sub_1D211343C();
    v147 = 0;
    v37 = v139;
    v38 = v140;
    if ((*(v139 + 48))(v34, 1, v140) == 1)
    {
      sub_1D20A862C(v34, &qword_1EC6C75B8, &qword_1D2115C40);
      *&v159 = v25;
      *(&v159 + 1) = v29;
      sub_1D20C8704();
      swift_willThrowTypedImpl();
      v39 = sub_1D2112E7C();
      (*(*(v39 - 8) + 8))(v24, v39);
      (*(v142 + 8))(v36, v35);
      (*(v141 + 8))(v138, v33);

      v41 = v136;
      *v136 = v25;
      v41[1] = v29;
      return result;
    }

    (*(v37 + 32))(v148, v34, v38);
    swift_getKeyPath();
    sub_1D211344C();

    v156 = v159;
    v157 = v160;
    v158 = v161;
    v52 = v38;
    if (v161)
    {
      v154 = 44;
      v155 = 0xE100000000000000;
      v152 = 46;
      v153 = 0xE100000000000000;
      sub_1D20C8758();
      sub_1D20B99F0();
      v53 = sub_1D2113B2C();
      v55 = v54;

      LODWORD(v156) = 0;
      v56 = v147;
      v57 = sub_1D20C87AC(v53, v55, &v156);
      v147 = v56;

      v58 = v156;
      if (!v57)
      {
        v58 = 0;
      }

      LODWORD(v146) = v58;
      v59 = !v57;
    }

    else
    {
      LODWORD(v146) = 0;
      v59 = 1;
    }

    LODWORD(v145) = v59;
    swift_getKeyPath();
    sub_1D211344C();

    v156 = v159;
    v157 = v160;
    v158 = v161;
    if (v161)
    {
      v154 = 44;
      v155 = 0xE100000000000000;
      v152 = 46;
      v153 = 0xE100000000000000;
      sub_1D20C8758();
      sub_1D20B99F0();
      v60 = sub_1D2113B2C();
      v62 = v61;

      LODWORD(v156) = 0;
      v63 = v147;
      v64 = sub_1D20C87AC(v60, v62, &v156);
      v147 = v63;

      v65 = v156;
      if (!v64)
      {
        v65 = 0;
      }

      LODWORD(v144) = v65;
      v66 = !v64;
    }

    else
    {
      LODWORD(v144) = 0;
      v66 = 1;
    }

    LODWORD(v137) = v66;
    swift_getKeyPath();
    sub_1D211344C();

    v156 = v159;
    v157 = v160;
    v158 = v161;
    if (v161)
    {
      v154 = 44;
      v155 = 0xE100000000000000;
      v152 = 46;
      v153 = 0xE100000000000000;
      sub_1D20C8758();
      sub_1D20B99F0();
      v67 = sub_1D2113B2C();
      v69 = v68;

      LODWORD(v156) = 0;
      v70 = v147;
      v71 = sub_1D20C87AC(v67, v69, &v156);
      v147 = v70;

      if (v71)
      {
        v72 = *&v156;
      }

      else
      {
        v72 = 0.0;
      }

      v73 = !v71;
    }

    else
    {
      v72 = 0.0;
      v73 = 1;
    }

    swift_getKeyPath();
    sub_1D211344C();

    v156 = v159;
    v157 = v160;
    v158 = v161;
    if (v161)
    {
      v154 = 44;
      v155 = 0xE100000000000000;
      v152 = 46;
      v153 = 0xE100000000000000;
      sub_1D20C8758();
      sub_1D20B99F0();
      v74 = sub_1D2113B2C();
      v76 = v75;

      LODWORD(v156) = 0;
      v77 = v147;
      v78 = sub_1D20C87AC(v74, v76, &v156);
      v147 = v77;

      if (v78)
      {
        v79 = *&v156;
      }

      else
      {
        v79 = 0.0;
      }

      v80 = !v78;
    }

    else
    {
      v79 = 0.0;
      v80 = 1;
    }

    LODWORD(v136) = v80;
    v151 = v33;
    swift_getKeyPath();
    sub_1D211344C();

    v156 = v159;
    v157 = v160;
    v158 = v161;
    if (v161)
    {
      v154 = 44;
      v155 = 0xE100000000000000;
      v152 = 46;
      v153 = 0xE100000000000000;
      sub_1D20C8758();
      sub_1D20B99F0();
      v81 = sub_1D2113B2C();
      v83 = v82;

      LODWORD(v156) = 0;
      v84 = v147;
      v85 = sub_1D20C87AC(v81, v83, &v156);
      v147 = v84;

      if (v85)
      {
        v86 = *&v156;
      }

      else
      {
        v86 = 0.0;
      }

      v87 = !v85;
    }

    else
    {
      v86 = 0.0;
      v87 = 1;
    }

    LODWORD(v135) = v87;
    swift_getKeyPath();
    sub_1D211344C();

    v156 = v159;
    v157 = v160;
    v158 = v161;
    if (v161)
    {
      v154 = 44;
      v155 = 0xE100000000000000;
      v152 = 46;
      v153 = 0xE100000000000000;
      sub_1D20C8758();
      sub_1D20B99F0();
      v88 = sub_1D2113B2C();
      v90 = v89;

      LODWORD(v156) = 0;
      v91 = v147;
      v92 = sub_1D20C87AC(v88, v90, &v156);
      v147 = v91;

      v93 = *&v156;
      if (!v92)
      {
        v93 = 0.0;
      }

      v132 = v93;
      v94 = !v92;
      if (v145)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v132 = 0.0;
      v94 = 1;
      if (v145)
      {
LABEL_46:
        v95 = sub_1D2112DDC();
        v95(&v159, 0);
        goto LABEL_57;
      }
    }

    v96 = *&v146;
    v97 = sub_1D20C85EC(*&v146);
    v99 = sub_1D2112DDC();
    if (v97)
    {
      *v98 = v97;
      *(v98 + 8) = 0;
    }

    v99(&v159, 0);
    v100 = v96 - truncf(v96);
    if ((~v146 & 0x7F800000) == 0)
    {
      v100 = 0.0;
    }

    v101 = v100 * v133;
    if (v101 != 0.0)
    {
      if (v73)
      {
        v72 = v101;
      }

      v73 = 0;
    }

    v52 = v140;
LABEL_57:
    if (v137)
    {
      v102 = sub_1D2112DEC();
      v102(&v159, 0);
    }

    else
    {
      v103 = *&v144;
      v104 = sub_1D20C85EC(*&v144);
      v106 = sub_1D2112DEC();
      if (v104)
      {
        *v105 = v104;
        *(v105 + 8) = 0;
      }

      v106(&v159, 0);
      v107 = v103 - truncf(v103);
      if ((~v144 & 0x7F800000) == 0)
      {
        v107 = 0.0;
      }

      v108 = v107 * v134;
      v52 = v140;
      if (v108 != 0.0)
      {
        if (v73)
        {
          v72 = v108;
        }

        goto LABEL_68;
      }
    }

    if (v73)
    {
      v109 = sub_1D2112DAC();
      v110 = 1;
      v109(&v159, 0);
      goto LABEL_71;
    }

LABEL_68:
    v111 = sub_1D20C85EC(v72);
    v113 = sub_1D2112DAC();
    v110 = 0;
    if (v111)
    {
      *v112 = v111;
      *(v112 + 8) = 0;
    }

    v113(&v159, 0);
LABEL_71:
    if ((v110 & 1) != 0 || (LODWORD(v72) & 0x7F800000) == 0x7F800000 || (v114 = (v72 - truncf(v72)) * 24.0, v114 == 0.0))
    {
      if (v136)
      {
        v115 = sub_1D2112DBC();
        v116 = 1;
        v47 = v150;
        v115(&v159, 0);
        goto LABEL_81;
      }
    }

    else if (v136)
    {
      v79 = v114;
    }

    v47 = v150;
    v117 = sub_1D20C85EC(v79);
    v119 = sub_1D2112DBC();
    v116 = 0;
    if (v117)
    {
      *v118 = v117;
      *(v118 + 8) = 0;
    }

    v119(&v159, 0);
LABEL_81:
    if ((v116 & 1) != 0 || (LODWORD(v79) & 0x7F800000) == 0x7F800000 || (v120 = (v79 - truncf(v79)) * 60.0, v120 == 0.0))
    {
      if (v135)
      {
        v121 = sub_1D2112E0C();
        v122 = 1;
        v121(&v159, 0);
        goto LABEL_91;
      }
    }

    else if (v135)
    {
      v86 = v120;
    }

    v123 = sub_1D20C85EC(v86);
    v125 = sub_1D2112E0C();
    v122 = 0;
    if (v123)
    {
      *v124 = v123;
      *(v124 + 8) = 0;
    }

    v125(&v159, 0);
LABEL_91:
    if ((v122 & 1) != 0 || (LODWORD(v86) & 0x7F800000) == 0x7F800000 || (v126 = (v86 - truncf(v86)) * 60.0, v126 == 0.0))
    {
      if (v94)
      {
        v127 = sub_1D2112E3C();
        v51 = v149;
        v28 = v151;
LABEL_102:
        v23 = v138;
        v127(&v159, 0);
        (*(v139 + 8))(v148, v52);
LABEL_103:
        (*(v142 + 8))(v47, v51);
        return (*(v141 + 8))(v23, v28);
      }
    }

    else
    {
      v128 = v132;
      if (v94)
      {
        v128 = v126;
      }

      v132 = v128;
    }

    v129 = sub_1D20C85EC(roundf(v132));
    v127 = sub_1D2112E3C();
    v28 = v151;
    if (v129)
    {
      *v130 = v129;
      *(v130 + 8) = 0;
    }

    v51 = v149;
    goto LABEL_102;
  }

  (*(v31 + 32))(v135, v11, v32);
  swift_getKeyPath();
  v42 = v32;
  sub_1D211344C();

  v156 = v159;
  v157 = v160;
  v158 = v161;
  v154 = 44;
  v155 = 0xE100000000000000;
  v152 = 46;
  v153 = 0xE100000000000000;
  sub_1D20C8758();
  sub_1D20B99F0();
  v43 = sub_1D2113B2C();
  v45 = v44;

  LODWORD(v156) = 0;
  LOBYTE(v43) = sub_1D20C87AC(v43, v45, &v156);
  v147 = 0;

  v46 = 0.0;
  if (v43)
  {
    v46 = *&v156;
    if ((v156 & 0x7FFFFFFF) > 0x7F7FFFFF)
    {
      __break(1u);
      goto LABEL_105;
    }
  }

  v47 = v150;
  if (v46 <= -9.2234e18)
  {
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  if (v46 >= 9.2234e18)
  {
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  v48 = 7 * v46;
  if ((v46 * 7) >> 64 == v48 >> 63)
  {
    v50 = sub_1D2112DAC();
    if (v48)
    {
      *v49 = v48;
      *(v49 + 8) = 0;
    }

    v50(&v159, 0);
    (*(v151 + 8))(v135, v42);
    v51 = v149;
    goto LABEL_103;
  }

LABEL_107:
  __break(1u);
  return result;
}

uint64_t sub_1D20C85EC(float a1)
{
  v1 = truncf(a1);
  if ((LODWORD(a1) & 0x7FFFFFFFu) >= 0x7F800000)
  {
    v2 = a1 + 0.0;
  }

  else
  {
    v2 = v1;
  }

  if ((LODWORD(v2) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 <= -9.2234e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v2 < 9.2234e18)
  {
    return v2;
  }

LABEL_10:
  __break(1u);
  return result;
}

unint64_t sub_1D20C8654()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D2113C2C();

  MEMORY[0x1D38961A0](v1, v2);
  return 0xD000000000000022;
}

uint64_t sub_1D20C86D0(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D2113E2C();
  }
}

unint64_t sub_1D20C8704()
{
  result = qword_1EC6C75B0;
  if (!qword_1EC6C75B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C75B0);
  }

  return result;
}

unint64_t sub_1D20C8758()
{
  result = qword_1EE083DD0;
  if (!qword_1EE083DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE083DD0);
  }

  return result;
}

BOOL sub_1D20C87AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v4 >= 0x21 || ((0x100003E01uLL >> v4) & 1) == 0)
      {
LABEL_10:
        v6 = _swift_stdlib_strtof_clocale();
        return v6 && *v6 == 0;
      }

      return 0;
    }
  }

  sub_1D2113C1C();
  if (!v3)
  {
    return v8;
  }

  return v5;
}

_BYTE *sub_1D20C88A4@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtof_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1D20C8930(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D20C8978(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t GridLookupError.hashValue.getter()
{
  v1 = *v0;
  sub_1D2113ECC();
  MEMORY[0x1D38967E0](v1);
  return sub_1D2113F1C();
}

unint64_t sub_1D20C8A50()
{
  result = qword_1EC6C7600;
  if (!qword_1EC6C7600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7600);
  }

  return result;
}

uint64_t sub_1D20C8AB4(uint64_t a1, double a2, double a3)
{
  *(v3 + 440) = a1;
  *(v3 + 424) = a2;
  *(v3 + 432) = a3;
  v4 = sub_1D2112F9C();
  *(v3 + 448) = v4;
  *(v3 + 456) = *(v4 - 8);
  *(v3 + 464) = swift_task_alloc();
  *(v3 + 472) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7250, &qword_1D21149C0);
  *(v3 + 480) = swift_task_alloc();
  *(v3 + 488) = swift_task_alloc();
  *(v3 + 496) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7248, &qword_1D2114A80);
  *(v3 + 504) = swift_task_alloc();
  v5 = sub_1D211319C();
  *(v3 + 512) = v5;
  *(v3 + 520) = *(v5 - 8);
  *(v3 + 528) = swift_task_alloc();
  *(v3 + 536) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D20C8CA0, 0, 0);
}

uint64_t sub_1D20C8CA0()
{
  v136 = v0;
  v135 = *MEMORY[0x1E69E9840];
  v2 = *(v0 + 424);
  v1 = *(v0 + 432);
  *(v0 + 400) = 0;
  MEMORY[0x1D3896EC0](v0 + 400, 8);
  v3 = *(v0 + 400);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C73A8, "J{");
  v4 = swift_allocObject();
  v5 = MEMORY[0x1E69E76D8];
  *(v4 + 16) = xmmword_1D2114850;
  v6 = MEMORY[0x1E69E7738];
  *(v4 + 56) = v5;
  *(v4 + 64) = v6;
  *(v4 + 32) = v3;
  v7 = sub_1D21137FC();
  v9 = v8;
  *(v0 + 544) = v7;
  *(v0 + 552) = v8;
  type metadata accessor for Geohash();
  inited = swift_initStackObject();
  *(inited + 16) = 0;
  *(inited + 24) = 0;
  v11 = sub_1D20E2D48(12, v2, v1);
  v13 = v12;
  swift_setDeallocating();

  v14 = sub_1D20E4A3C(2, v11, v13);
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v21 = MEMORY[0x1D3896140](v14, v16, v18, v20);
  v23 = v22;

  *(v0 + 560) = v21;
  *(v0 + 568) = v23;
  if (qword_1EE083D48 != -1)
  {
    swift_once();
  }

  v131 = qword_1EE087480;
  v132 = *algn_1EE087488;

  v24 = sub_1D20CF5BC();
  v25 = !v24;
  if (v24)
  {
    v26 = 1685025392;
  }

  else
  {
    v26 = 24945;
  }

  if (v25)
  {
    v27 = 0xE200000000000000;
  }

  else
  {
    v27 = 0xE400000000000000;
  }

  MEMORY[0x1D38961A0](v26, v27);

  MEMORY[0x1D38961A0](47, 0xE100000000000000);
  MEMORY[0x1D38961A0](v21, v23);
  *(v0 + 304) = v21;
  *(v0 + 312) = v23;
  *(v0 + 320) = 0u;
  *(v0 + 336) = 0u;
  *(v0 + 624) = 1;
  v28 = objc_opt_self();

  v29 = [v28 defaultManager];
  v30 = sub_1D21137BC();

  v31 = [v29 fileExistsAtPath:v30 isDirectory:v0 + 624];

  if (!v31)
  {

    if (qword_1EE0836C8 != -1)
    {
      swift_once();
    }

    v59 = sub_1D211362C();
    __swift_project_value_buffer(v59, qword_1EE087438);

    v60 = sub_1D21135FC();
    v61 = sub_1D2113A7C();

    if (!os_log_type_enabled(v60, v61))
    {
      goto LABEL_36;
    }

    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v131 = v63;
    *v62 = 136315138;
    *(v62 + 4) = sub_1D20B75F0(v7, v9, &v131);
    v64 = "Unable to find GeoHash 2 folder on disk. Proceed to fetch new file. | traceId: %s";
    goto LABEL_35;
  }

  sub_1D20B9EF4();
  v32 = sub_1D21137BC();

  v33 = sub_1D21137BC();
  v34 = CFPreferencesCopyAppValue(v32, v33);

  v35 = *(v0 + 520);
  v36 = *(v0 + 504);
  v37 = *(v0 + 512);
  if (!v34)
  {
    (*(v35 + 56))(v36, 1, 1, *(v0 + 512));
    goto LABEL_27;
  }

  *(v0 + 416) = v34;
  v38 = v36;
  v39 = swift_dynamicCast();
  (*(v35 + 56))(v38, v39 ^ 1u, 1, v37);
  if ((*(v35 + 48))(v38, 1, v37) == 1)
  {
LABEL_27:
    sub_1D20A862C(*(v0 + 504), &qword_1EC6C7248, &qword_1D2114A80);
    goto LABEL_28;
  }

  v40 = *(v0 + 528);
  v41 = *(v0 + 520);
  v42 = *(v0 + 512);
  (*(v41 + 32))(*(v0 + 536), *(v0 + 504), v42);
  sub_1D211317C();
  v43 = sub_1D21130FC();
  v44 = v40;
  v45 = *(v41 + 8);
  v45(v44, v42);
  if ((v43 & 1) == 0)
  {
    v45(*(v0 + 536), *(v0 + 512));
LABEL_28:
    sub_1D20B9E08();

    v65 = sub_1D21137BC();

    v66 = sub_1D21137BC();
    v67 = CFPreferencesCopyAppValue(v65, v66);

    if (v67)
    {
      *(v0 + 408) = v67;
      if (swift_dynamicCast())
      {
        v68 = *(v0 + 384);
        v69 = *(v0 + 392);
        v70 = 1;
LABEL_37:
        *(v0 + 584) = v69;
        *(v0 + 576) = v68;
        *(v0 + 625) = v70;
        v80 = swift_task_alloc();
        *(v0 + 592) = v80;
        *v80 = v0;
        v80[1] = sub_1D20C9D64;
        v81 = *(v0 + 440);

        return sub_1D20EF460(v81);
      }
    }

    v71 = MEMORY[0x1E69E6158];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7608, &unk_1D2115EB0);
    v72 = swift_initStackObject();
    *(v72 + 32) = 0x64496563617274;
    *(v72 + 16) = xmmword_1D2114850;
    *(v72 + 72) = v71;
    *(v72 + 40) = 0xE700000000000000;
    *(v72 + 48) = v7;
    *(v72 + 56) = v9;

    v73 = sub_1D20CE8BC(v72);
    swift_setDeallocating();
    sub_1D20A862C(v72 + 32, &qword_1EC6C73D8, &qword_1D21153A0);
    v74 = [objc_opt_self() processInfo];
    v75 = [v74 processName];

    v76 = sub_1D21137CC();
    v78 = v77;

    LOWORD(v131) = 514;
    BYTE2(v131) = 6;
    v132 = v76;
    v133 = v78;
    v134 = v73;
    static AutoBugCaptureManager.sendIssue(_:)(&v131);

    if (qword_1EE0836C8 != -1)
    {
      swift_once();
    }

    v79 = sub_1D211362C();
    __swift_project_value_buffer(v79, qword_1EE087438);

    v60 = sub_1D21135FC();
    v61 = sub_1D2113A7C();

    if (!os_log_type_enabled(v60, v61))
    {
LABEL_36:

      v70 = 0;
      v68 = 0;
      v69 = 0;
      goto LABEL_37;
    }

    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v131 = v63;
    *v62 = 136315138;
    *(v62 + 4) = sub_1D20B75F0(v7, v9, &v131);
    v64 = "Geohash folder exist, but no ETag for geohash stored in disk. | traceId: %s";
LABEL_35:
    _os_log_impl(&dword_1D209F000, v60, v61, v64, v62, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v63);
    MEMORY[0x1D3896EB0](v63, -1, -1);
    MEMORY[0x1D3896EB0](v62, -1, -1);
    goto LABEL_36;
  }

  v129 = v45;

  if (qword_1EE0836C8 != -1)
  {
    swift_once();
  }

  v46 = sub_1D211362C();
  __swift_project_value_buffer(v46, qword_1EE087438);

  v47 = sub_1D21135FC();
  v48 = sub_1D2113A9C();

  v49 = os_log_type_enabled(v47, v48);
  v128 = *(v0 + 536);
  v50 = *(v0 + 512);
  if (v49)
  {
    v127 = v46;
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v131 = v52;
    *v51 = 136315138;
    *(v51 + 4) = sub_1D20B75F0(v7, v9, &v131);
    _os_log_impl(&dword_1D209F000, v47, v48, "Geohash folder exist, and valid. Use local geohash tiles. Skipping fetching | traceId: %s", v51, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v52);
    MEMORY[0x1D3896EB0](v52, -1, -1);
    v53 = v51;
    v46 = v127;
    MEMORY[0x1D3896EB0](v53, -1, -1);
  }

  v129(v128, v50);
  v54 = sub_1D20E26DC(0xD000000000000029, 0x80000001D211AFA0, *(v0 + 424), *(v0 + 432));
  if (v55)
  {
    v56 = v55;
    v130 = v54;
LABEL_19:

    v57 = *(v0 + 8);

    return v57(v130, v56);
  }

  v82 = *(v0 + 480);
  v83 = *(v0 + 448);
  v84 = *(v0 + 456);
  sub_1D20E9C08(v82, *(v0 + 424), *(v0 + 432));
  if ((*(v84 + 48))(v82, 1, v83) == 1)
  {
    sub_1D20A862C(*(v0 + 480), &qword_1EC6C7250, &qword_1D21149C0);
    if (qword_1EE0836C8 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v46, qword_1EE087438);

    v85 = sub_1D21135FC();
    v86 = sub_1D2113A6C();

    if (os_log_type_enabled(v85, v86))
    {
      v87 = *(v0 + 552);
      v88 = *(v0 + 544);
      v90 = *(v0 + 424);
      v89 = *(v0 + 432);
      v91 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v131 = v92;
      *v91 = 134218498;
      *(v91 + 4) = v90;
      *(v91 + 12) = 2048;
      *(v91 + 14) = v89;
      *(v91 + 22) = 2080;
      *(v91 + 24) = sub_1D20B75F0(v88, v87, &v131);
      _os_log_impl(&dword_1D209F000, v85, v86, "Unable to locate matching geohash tile for coordinate %f:%f)\n| traceId: %s", v91, 0x20u);
      __swift_destroy_boxed_opaque_existential_1(v92);
      MEMORY[0x1D3896EB0](v92, -1, -1);
      MEMORY[0x1D3896EB0](v91, -1, -1);
    }

    v93 = sub_1D21135FC();
    v94 = sub_1D2113A7C();

    v95 = os_log_type_enabled(v93, v94);
    v96 = *(v0 + 552);
    if (v95)
    {
      v97 = *(v0 + 544);
      v98 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      v131 = v99;
      *v98 = 136315138;
      v100 = sub_1D20B75F0(v97, v96, &v131);

      *(v98 + 4) = v100;
      _os_log_impl(&dword_1D209F000, v93, v94, "Returning no grid information. This could be intentional as the region is not supported\n| traceId: %s", v98, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v99);
      MEMORY[0x1D3896EB0](v99, -1, -1);
      MEMORY[0x1D3896EB0](v98, -1, -1);
    }

    else
    {
    }

    sub_1D20CB890();
    swift_allocError();
    *v106 = 2;
    swift_willThrow();
  }

  else
  {
    v101 = *(v0 + 464);
    v103 = *(v0 + 424);
    v102 = *(v0 + 432);
    (*(*(v0 + 456) + 32))(v101, *(v0 + 480), *(v0 + 448));
    v104 = sub_1D20EAE00(v101, v103, v102);
    if (v105)
    {
      v56 = v105;
      v130 = v104;
      (*(*(v0 + 456) + 8))(*(v0 + 464), *(v0 + 448));
      goto LABEL_19;
    }

    if (qword_1EE0836C8 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v46, qword_1EE087438);

    v107 = sub_1D21135FC();
    v108 = sub_1D2113A7C();

    if (os_log_type_enabled(v107, v108))
    {
      v109 = *(v0 + 552);
      v110 = *(v0 + 544);
      v111 = swift_slowAlloc();
      v112 = swift_slowAlloc();
      v131 = v112;
      *v111 = 136315138;
      *(v111 + 4) = sub_1D20B75F0(v110, v109, &v131);
      _os_log_impl(&dword_1D209F000, v107, v108, "No Grid found for provided coordinates | traceId: %s", v111, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v112);
      MEMORY[0x1D3896EB0](v112, -1, -1);
      MEMORY[0x1D3896EB0](v111, -1, -1);
    }

    v113 = sub_1D21135FC();
    v114 = sub_1D2113A6C();

    v115 = os_log_type_enabled(v113, v114);
    v116 = *(v0 + 552);
    if (v115)
    {
      v117 = *(v0 + 544);
      v119 = *(v0 + 424);
      v118 = *(v0 + 432);
      v120 = swift_slowAlloc();
      v121 = swift_slowAlloc();
      v131 = v121;
      *v120 = 134218498;
      *(v120 + 4) = v119;
      *(v120 + 12) = 2048;
      *(v120 + 14) = v118;
      *(v120 + 22) = 2080;
      v122 = sub_1D20B75F0(v117, v116, &v131);

      *(v120 + 24) = v122;
      _os_log_impl(&dword_1D209F000, v113, v114, "Grid not found for coordinate %f:%f | traceId: %s", v120, 0x20u);
      __swift_destroy_boxed_opaque_existential_1(v121);
      MEMORY[0x1D3896EB0](v121, -1, -1);
      MEMORY[0x1D3896EB0](v120, -1, -1);
    }

    else
    {
    }

    v124 = *(v0 + 456);
    v123 = *(v0 + 464);
    v125 = *(v0 + 448);
    type metadata accessor for NetworkError(0);
    sub_1D20CB838();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v124 + 8))(v123, v125);
  }

  v126 = *(v0 + 8);

  return v126();
}

uint64_t sub_1D20C9D64()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  v1[75] = v3;
  *v3 = v2;
  v3[1] = sub_1D20C9F60;
  v4 = v1[73];
  v5 = v1[72];
  v6 = v1[71];
  v7 = v1[70];
  v8 = v1[69];
  v9 = v1[68];
  v10 = v1[62];
  v11 = v1[55];

  return sub_1D20DFABC(v10, v7, v6, v11, v5, v4, v9, v8);
}

uint64_t sub_1D20C9F60(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 608) = a1;
  *(v3 + 616) = v1;

  if (v1)
  {

    v4 = sub_1D20CB738;
  }

  else
  {
    v4 = sub_1D20CA0CC;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D20CA0CC()
{
  v169 = v0;
  v168 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 608);
  if (!v1)
  {
    v11 = *(v0 + 552);
    v12 = *(v0 + 544);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7608, &unk_1D2115EB0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D2114850;
    *(inited + 32) = 0x64496563617274;
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 40) = 0xE700000000000000;
    *(inited + 48) = v12;
    *(inited + 56) = v11;

    v14 = sub_1D20CE8BC(inited);
    swift_setDeallocating();
    sub_1D20A862C(inited + 32, &qword_1EC6C73D8, &qword_1D21153A0);
    v15 = [objc_opt_self() processInfo];
    v16 = [v15 processName];

    v17 = sub_1D21137CC();
    v19 = v18;

    LOWORD(v164) = 258;
    BYTE2(v164) = 7;
    v165 = v17;
    v166 = v19;
    v167 = v14;
    static AutoBugCaptureManager.sendIssue(_:)(&v164);

    if (qword_1EE0836C8 != -1)
    {
      swift_once();
    }

    v20 = sub_1D211362C();
    __swift_project_value_buffer(v20, qword_1EE087438);

    v21 = sub_1D21135FC();
    v22 = sub_1D2113A7C();

    v23 = os_log_type_enabled(v21, v22);
    v24 = *(v0 + 552);
    if (v23)
    {
      v25 = *(v0 + 544);
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v164 = v27;
      *v26 = 136315138;
      v28 = sub_1D20B75F0(v25, v24, &v164);

      *(v26 + 4) = v28;
      _os_log_impl(&dword_1D209F000, v21, v22, "Unknown error occurred while fetching geohash tile from server. | traceId: %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x1D3896EB0](v27, -1, -1);
      MEMORY[0x1D3896EB0](v26, -1, -1);
    }

    else
    {
    }

    v62 = *(v0 + 496);
    type metadata accessor for NetworkError(0);
    sub_1D20CB838();
    swift_allocError();
    *v63 = 2;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_55;
  }

  v2 = v1;
  v3 = [v2 statusCode];
  if (v3 == 304)
  {
    if (*(v0 + 625) == 1)
    {
      if (*(v0 + 584))
      {

        if (qword_1EE0836C8 != -1)
        {
          swift_once();
        }

        v29 = sub_1D211362C();
        __swift_project_value_buffer(v29, qword_1EE087438);

        v30 = sub_1D21135FC();
        v31 = sub_1D2113A9C();

        if (os_log_type_enabled(v30, v31))
        {
          v32 = *(v0 + 552);
          v33 = *(v0 + 544);
          v34 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          v164 = v35;
          *v34 = 136315138;
          *(v34 + 4) = sub_1D20B75F0(v33, v32, &v164);
          _os_log_impl(&dword_1D209F000, v30, v31, "Geohash file unmodified. Continue using locally stored geohash tile | traceId: %s", v34, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v35);
          MEMORY[0x1D3896EB0](v35, -1, -1);
          MEMORY[0x1D3896EB0](v34, -1, -1);
        }

        sub_1D20E1E64(v2, *(v0 + 560), *(v0 + 568));

        goto LABEL_27;
      }
    }

    else
    {
    }

    v120 = *(v0 + 552);
    v121 = *(v0 + 544);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7608, &unk_1D2115EB0);
    v122 = swift_allocObject();
    *(v122 + 32) = 0x64496563617274;
    *(v122 + 16) = xmmword_1D2115280;
    v123 = MEMORY[0x1E69E6158];
    *(v122 + 40) = 0xE700000000000000;
    *(v122 + 48) = v121;
    *(v122 + 56) = v120;
    *(v122 + 72) = v123;
    *(v122 + 80) = 0x737574617473;
    *(v122 + 88) = 0xE600000000000000;

    v124 = [v2 statusCode];
    *(v122 + 120) = MEMORY[0x1E69E6530];
    *(v122 + 96) = v124;
    v125 = sub_1D20CE8BC(v122);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C73D8, &qword_1D21153A0);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v126 = [objc_opt_self() processInfo];
    v127 = [v126 processName];

    v128 = sub_1D21137CC();
    v130 = v129;

    LOWORD(v164) = 258;
    BYTE2(v164) = 9;
    v165 = v128;
    v166 = v130;
    v167 = v125;
    static AutoBugCaptureManager.sendIssue(_:)(&v164);

    if (qword_1EE0836C8 != -1)
    {
      swift_once();
    }

    v131 = sub_1D211362C();
    __swift_project_value_buffer(v131, qword_1EE087438);

    v132 = sub_1D21135FC();
    v133 = sub_1D2113A7C();

    v134 = os_log_type_enabled(v132, v133);
    v135 = *(v0 + 552);
    if (v134)
    {
      v136 = *(v0 + 544);
      v137 = swift_slowAlloc();
      v138 = swift_slowAlloc();
      v164 = v138;
      *v137 = 136315138;
      v139 = sub_1D20B75F0(v136, v135, &v164);

      *(v137 + 4) = v139;
      _os_log_impl(&dword_1D209F000, v132, v133, "Error while trying to fetch new Geohash tile from server | traceId: %s", v137, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v138);
      MEMORY[0x1D3896EB0](v138, -1, -1);
      MEMORY[0x1D3896EB0](v137, -1, -1);
    }

    else
    {
    }

    v62 = *(v0 + 496);
    sub_1D20CB890();
    swift_allocError();
    *v140 = 1;
    goto LABEL_54;
  }

  if (v3 != 200)
  {
    v36 = *(v0 + 552);
    v37 = *(v0 + 544);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7608, &unk_1D2115EB0);
    v38 = swift_initStackObject();
    *(v38 + 32) = 0x64496563617274;
    *(v38 + 16) = xmmword_1D2115280;
    v39 = MEMORY[0x1E69E6158];
    *(v38 + 40) = 0xE700000000000000;
    *(v38 + 48) = v37;
    *(v38 + 56) = v36;
    *(v38 + 72) = v39;
    *(v38 + 80) = 0x737574617473;
    *(v38 + 88) = 0xE600000000000000;

    v40 = [v2 statusCode];
    *(v38 + 120) = MEMORY[0x1E69E6530];
    *(v38 + 96) = v40;
    v41 = sub_1D20CE8BC(v38);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C73D8, &qword_1D21153A0);
    swift_arrayDestroy();
    v42 = [objc_opt_self() processInfo];
    v43 = [v42 processName];

    v44 = sub_1D21137CC();
    v46 = v45;

    LOWORD(v164) = 258;
    BYTE2(v164) = 5;
    v165 = v44;
    v166 = v46;
    v167 = v41;
    static AutoBugCaptureManager.sendIssue(_:)(&v164);

    if (qword_1EE0836C8 != -1)
    {
      swift_once();
    }

    v47 = sub_1D211362C();
    __swift_project_value_buffer(v47, qword_1EE087438);

    v48 = sub_1D21135FC();
    v49 = sub_1D2113A7C();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = *(v0 + 552);
      v51 = *(v0 + 544);
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v164 = v53;
      *v52 = 136315138;
      *(v52 + 4) = sub_1D20B75F0(v51, v50, &v164);
      _os_log_impl(&dword_1D209F000, v48, v49, "Unknown error occurred while fetching geohash tile from server | traceId: %s", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v53);
      MEMORY[0x1D3896EB0](v53, -1, -1);
      MEMORY[0x1D3896EB0](v52, -1, -1);
    }

    v2 = v2;
    v54 = sub_1D21135FC();
    v55 = sub_1D2113A7C();

    v56 = os_log_type_enabled(v54, v55);
    v57 = *(v0 + 552);
    if (v56)
    {
      v58 = *(v0 + 544);
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v164 = v60;
      *v59 = 134218242;
      *(v59 + 4) = [v2 statusCode];

      *(v59 + 12) = 2080;
      v61 = sub_1D20B75F0(v58, v57, &v164);

      *(v59 + 14) = v61;
      _os_log_impl(&dword_1D209F000, v54, v55, "Status Code returned %ld | traceId %s", v59, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v60);
      MEMORY[0x1D3896EB0](v60, -1, -1);
      MEMORY[0x1D3896EB0](v59, -1, -1);
    }

    else
    {
    }

    v62 = *(v0 + 496);
    type metadata accessor for NetworkError(0);
    sub_1D20CB838();
    swift_allocError();
    *v90 = [v2 statusCode];
    swift_storeEnumTagMultiPayload();
    goto LABEL_54;
  }

  v5 = *(v0 + 488);
  v4 = *(v0 + 496);
  v6 = *(v0 + 448);
  v7 = *(v0 + 456);

  sub_1D20CB8E4(v4, v5);
  v8 = (*(v7 + 48))(v5, 1, v6);
  v9 = *(v0 + 568);
  if (v8 == 1)
  {
    v10 = *(v0 + 488);

    sub_1D20A862C(v10, &qword_1EC6C7250, &qword_1D21149C0);
LABEL_42:
    v99 = *(v0 + 552);
    v100 = *(v0 + 544);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7608, &unk_1D2115EB0);
    v101 = swift_allocObject();
    *(v101 + 32) = 0x64496563617274;
    *(v101 + 16) = xmmword_1D2115280;
    v102 = MEMORY[0x1E69E6158];
    *(v101 + 40) = 0xE700000000000000;
    *(v101 + 48) = v100;
    *(v101 + 56) = v99;
    *(v101 + 72) = v102;
    *(v101 + 80) = 0x737574617473;
    *(v101 + 88) = 0xE600000000000000;

    v103 = [v2 statusCode];
    *(v101 + 120) = MEMORY[0x1E69E6530];
    *(v101 + 96) = v103;
    v104 = sub_1D20CE8BC(v101);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C73D8, &qword_1D21153A0);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v105 = [objc_opt_self() processInfo];
    v106 = [v105 processName];

    v107 = sub_1D21137CC();
    v109 = v108;

    LOWORD(v164) = 514;
    BYTE2(v164) = 8;
    v165 = v107;
    v166 = v109;
    v167 = v104;
    static AutoBugCaptureManager.sendIssue(_:)(&v164);

    if (qword_1EE0836C8 != -1)
    {
      swift_once();
    }

    v110 = sub_1D211362C();
    __swift_project_value_buffer(v110, qword_1EE087438);

    v111 = sub_1D21135FC();
    v112 = sub_1D2113A7C();

    v113 = os_log_type_enabled(v111, v112);
    v114 = *(v0 + 552);
    if (v113)
    {
      v115 = *(v0 + 544);
      v116 = swift_slowAlloc();
      v117 = swift_slowAlloc();
      v164 = v117;
      *v116 = 136315138;
      v118 = sub_1D20B75F0(v115, v114, &v164);

      *(v116 + 4) = v118;
      _os_log_impl(&dword_1D209F000, v111, v112, "Error while creating geoHash tiles. | traceId: %s", v116, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v117);
      MEMORY[0x1D3896EB0](v117, -1, -1);
      MEMORY[0x1D3896EB0](v116, -1, -1);
    }

    else
    {
    }

    v62 = *(v0 + 496);
    sub_1D20CB890();
    swift_allocError();
    *v119 = 0;
LABEL_54:
    swift_willThrow();

LABEL_55:
    sub_1D20A862C(v62, &qword_1EC6C7250, &qword_1D21149C0);
LABEL_56:
    swift_willThrow();
LABEL_57:

    v141 = *(v0 + 8);

    return v141();
  }

  v64 = *(v0 + 560);
  v65 = *(v0 + 472);
  (*(*(v0 + 456) + 32))(v65, *(v0 + 488), *(v0 + 448));
  sub_1D20E0ED4(v65, v64, v9);
  if ((v66 & 1) == 0)
  {
    (*(*(v0 + 456) + 8))(*(v0 + 472), *(v0 + 448));

    goto LABEL_42;
  }

  v67 = *(v0 + 472);
  v68 = *(v0 + 448);
  v69 = *(v0 + 456);
  sub_1D20E1E64(v2, *(v0 + 560), *(v0 + 568));

  (*(v69 + 8))(v67, v68);
LABEL_27:
  sub_1D20A862C(*(v0 + 496), &qword_1EC6C7250, &qword_1D21149C0);
  v70 = *(v0 + 480);
  v71 = *(v0 + 448);
  v72 = *(v0 + 456);
  sub_1D20E9C08(v70, *(v0 + 424), *(v0 + 432));
  if ((*(v72 + 48))(v70, 1, v71) == 1)
  {
    sub_1D20A862C(*(v0 + 480), &qword_1EC6C7250, &qword_1D21149C0);
    if (qword_1EE0836C8 != -1)
    {
      swift_once();
    }

    v73 = sub_1D211362C();
    __swift_project_value_buffer(v73, qword_1EE087438);

    v74 = sub_1D21135FC();
    v75 = sub_1D2113A6C();

    if (os_log_type_enabled(v74, v75))
    {
      v76 = *(v0 + 552);
      v77 = *(v0 + 544);
      v79 = *(v0 + 424);
      v78 = *(v0 + 432);
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v164 = v81;
      *v80 = 134218498;
      *(v80 + 4) = v79;
      *(v80 + 12) = 2048;
      *(v80 + 14) = v78;
      *(v80 + 22) = 2080;
      *(v80 + 24) = sub_1D20B75F0(v77, v76, &v164);
      _os_log_impl(&dword_1D209F000, v74, v75, "Unable to locate matching geohash tile for coordinate %f:%f)\n| traceId: %s", v80, 0x20u);
      __swift_destroy_boxed_opaque_existential_1(v81);
      MEMORY[0x1D3896EB0](v81, -1, -1);
      MEMORY[0x1D3896EB0](v80, -1, -1);
    }

    v82 = sub_1D21135FC();
    v83 = sub_1D2113A7C();

    v84 = os_log_type_enabled(v82, v83);
    v85 = *(v0 + 552);
    if (v84)
    {
      v86 = *(v0 + 544);
      v87 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v164 = v88;
      *v87 = 136315138;
      v89 = sub_1D20B75F0(v86, v85, &v164);

      *(v87 + 4) = v89;
      _os_log_impl(&dword_1D209F000, v82, v83, "Returning no grid information. This could be intentional as the region is not supported\n| traceId: %s", v87, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v88);
      MEMORY[0x1D3896EB0](v88, -1, -1);
      MEMORY[0x1D3896EB0](v87, -1, -1);
    }

    else
    {
    }

    sub_1D20CB890();
    swift_allocError();
    *v142 = 2;
    goto LABEL_56;
  }

  v91 = *(v0 + 464);
  v93 = *(v0 + 424);
  v92 = *(v0 + 432);
  (*(*(v0 + 456) + 32))(v91, *(v0 + 480), *(v0 + 448));
  v94 = sub_1D20EAE00(v91, v93, v92);
  if (!v95)
  {
    if (qword_1EE0836C8 != -1)
    {
      swift_once();
    }

    v143 = sub_1D211362C();
    __swift_project_value_buffer(v143, qword_1EE087438);

    v144 = sub_1D21135FC();
    v145 = sub_1D2113A7C();

    if (os_log_type_enabled(v144, v145))
    {
      v146 = *(v0 + 552);
      v147 = *(v0 + 544);
      v148 = swift_slowAlloc();
      v149 = swift_slowAlloc();
      v164 = v149;
      *v148 = 136315138;
      *(v148 + 4) = sub_1D20B75F0(v147, v146, &v164);
      _os_log_impl(&dword_1D209F000, v144, v145, "No Grid found for provided coordinates | traceId: %s", v148, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v149);
      MEMORY[0x1D3896EB0](v149, -1, -1);
      MEMORY[0x1D3896EB0](v148, -1, -1);
    }

    v150 = sub_1D21135FC();
    v151 = sub_1D2113A6C();

    v152 = os_log_type_enabled(v150, v151);
    v153 = *(v0 + 552);
    if (v152)
    {
      v154 = *(v0 + 544);
      v156 = *(v0 + 424);
      v155 = *(v0 + 432);
      v157 = swift_slowAlloc();
      v158 = swift_slowAlloc();
      v164 = v158;
      *v157 = 134218498;
      *(v157 + 4) = v156;
      *(v157 + 12) = 2048;
      *(v157 + 14) = v155;
      *(v157 + 22) = 2080;
      v159 = sub_1D20B75F0(v154, v153, &v164);

      *(v157 + 24) = v159;
      _os_log_impl(&dword_1D209F000, v150, v151, "Grid not found for coordinate %f:%f | traceId: %s", v157, 0x20u);
      __swift_destroy_boxed_opaque_existential_1(v158);
      MEMORY[0x1D3896EB0](v158, -1, -1);
      MEMORY[0x1D3896EB0](v157, -1, -1);
    }

    else
    {
    }

    v161 = *(v0 + 456);
    v160 = *(v0 + 464);
    v162 = *(v0 + 448);
    type metadata accessor for NetworkError(0);
    sub_1D20CB838();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v161 + 8))(v160, v162);
    goto LABEL_57;
  }

  v96 = v95;
  v163 = v94;
  (*(*(v0 + 456) + 8))(*(v0 + 464), *(v0 + 448));

  v97 = *(v0 + 8);

  return v97(v163, v96);
}

uint64_t sub_1D20CB738(uint64_t a1)
{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

unint64_t sub_1D20CB838()
{
  result = qword_1EE0841B0[0];
  if (!qword_1EE0841B0[0])
  {
    type metadata accessor for NetworkError(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0841B0);
  }

  return result;
}

unint64_t sub_1D20CB890()
{
  result = qword_1EE083C10;
  if (!qword_1EE083C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE083C10);
  }

  return result;
}

uint64_t sub_1D20CB8E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7250, &qword_1D21149C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D20CB954()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E6959A48]) init];
  type metadata accessor for AppleAccountManager();
  result = swift_allocObject();
  *(result + 16) = v0;
  qword_1EE0874D8 = result;
  return result;
}

uint64_t sub_1D20CB9A8()
{
  v1 = [*(v0 + 16) aa_primaryAppleAccount];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 aa_personID];
    if (v3)
    {
      v4 = v3;
      v5 = sub_1D21137CC();

      return v5;
    }
  }

  else
  {
    if (qword_1EE083DE8 != -1)
    {
      swift_once();
    }

    v7 = sub_1D211362C();
    __swift_project_value_buffer(v7, qword_1EE0874C0);
    v2 = sub_1D21135FC();
    v8 = sub_1D2113A7C();
    if (os_log_type_enabled(v2, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1D209F000, v2, v8, "Unable to retrieve User Primary Apple Account information", v9, 2u);
      MEMORY[0x1D3896EB0](v9, -1, -1);
    }
  }

  return 0;
}

uint64_t sub_1D20CBAE4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D20CBB40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[59] = a3;
  v4[60] = a4;
  v4[57] = a1;
  v4[58] = a2;
  v4[61] = type metadata accessor for NetworkError(0);
  v4[62] = swift_task_alloc();
  v4[63] = swift_task_alloc();
  v5 = type metadata accessor for GridGuidance(0);
  v4[64] = v5;
  v4[65] = *(v5 - 8);
  v4[66] = swift_task_alloc();
  v4[67] = swift_task_alloc();
  v6 = sub_1D211319C();
  v4[68] = v6;
  v4[69] = *(v6 - 8);
  v4[70] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7508, &unk_1D2116AA0);
  v4[71] = swift_task_alloc();
  v7 = sub_1D2112B1C();
  v4[72] = v7;
  v4[73] = *(v7 - 8);
  v4[74] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D20CBD3C, 0, 0);
}

uint64_t sub_1D20CBD3C()
{
  v0[54] = 0;
  MEMORY[0x1D3896EC0](v0 + 54, 8);
  v1 = v0[54];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C73A8, "J{");
  v2 = swift_allocObject();
  v3 = MEMORY[0x1E69E76D8];
  *(v2 + 16) = xmmword_1D2114850;
  v4 = MEMORY[0x1E69E7738];
  *(v2 + 56) = v3;
  *(v2 + 64) = v4;
  *(v2 + 32) = v1;
  v0[75] = sub_1D21137FC();
  v0[76] = v5;
  v6 = swift_task_alloc();
  v0[77] = v6;
  *v6 = v0;
  v6[1] = sub_1D20CBE58;
  v7 = v0[60];

  return sub_1D20EF460(v7);
}

uint64_t sub_1D20CBE58()
{

  return MEMORY[0x1EEE6DFA0](sub_1D20CBF54, 0, 0);
}

uint64_t sub_1D20CBF54()
{
  v32 = v0;
  v1 = v0[76];
  v2 = v0[75];
  v3 = v0[73];
  v4 = v0[72];
  v5 = v0[71];
  v7 = v0[58];
  v6 = v0[59];
  type metadata accessor for GridGuidanceSignalRequest();
  swift_initStackObject();
  sub_1D20DEF68(v7, v6, v2, v1, v5);
  if ((*(v3 + 48))(v5, 1, v4) == 1)
  {
    v8 = v0[76];
    v9 = v0[75];
    sub_1D20A862C(v0[71], &qword_1EC6C7508, &unk_1D2116AA0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7608, &unk_1D2115EB0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D2114850;
    *(inited + 32) = 0x64496563617274;
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 40) = 0xE700000000000000;
    *(inited + 48) = v9;
    *(inited + 56) = v8;

    v11 = sub_1D20CE8BC(inited);
    swift_setDeallocating();
    sub_1D20A862C(inited + 32, &qword_1EC6C73D8, &qword_1D21153A0);
    v12 = [objc_opt_self() processInfo];
    v13 = [v12 processName];

    v14 = sub_1D21137CC();
    v16 = v15;

    LOWORD(v31[0]) = 0;
    BYTE2(v31[0]) = 1;
    v31[1] = v14;
    v31[2] = v16;
    v31[3] = v11;
    static AutoBugCaptureManager.sendIssue(_:)(v31);

    if (qword_1EE083DE8 != -1)
    {
      swift_once();
    }

    v17 = sub_1D211362C();
    __swift_project_value_buffer(v17, qword_1EE0874C0);

    v18 = sub_1D21135FC();
    v19 = sub_1D2113A7C();

    v20 = os_log_type_enabled(v18, v19);
    v21 = v0[76];
    if (v20)
    {
      v22 = v0[75];
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v31[0] = v24;
      *v23 = 136315138;
      v25 = sub_1D20B75F0(v22, v21, v31);

      *(v23 + 4) = v25;
      _os_log_impl(&dword_1D209F000, v18, v19, "Unable generate request URL for Grid Guidance Signal. | traceId: %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x1D3896EB0](v24, -1, -1);
      MEMORY[0x1D3896EB0](v23, -1, -1);
    }

    else
    {
    }

    sub_1D20CB838();
    swift_allocError();
    *v28 = 0;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v29 = v0[1];

    return v29();
  }

  else
  {
    (*(v0[73] + 32))(v0[74], v0[71], v0[72]);
    v26 = swift_task_alloc();
    v0[78] = v26;
    *v26 = v0;
    v26[1] = sub_1D20CC3C4;
    v27 = v0[74];

    return MEMORY[0x1EEDC6260](v27, 0);
  }
}

uint64_t sub_1D20CC3C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[79] = a1;
  v5[80] = a2;
  v5[81] = a3;
  v5[82] = v3;

  if (v3)
  {
    v6 = sub_1D20CD9DC;
  }

  else
  {
    v6 = sub_1D20CC4E4;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1D20CC4E4()
{
  v178 = v0;
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  v2 = MEMORY[0x1E69E6158];
  v3 = 0x1E83F6000uLL;
  if (!v1)
  {
    v15 = *(v0 + 608);
    v16 = *(v0 + 600);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7608, &unk_1D2115EB0);
    inited = swift_initStackObject();
    *(inited + 32) = 0x64496563617274;
    *(inited + 16) = xmmword_1D2114850;
    *(inited + 72) = v2;
    *(inited + 40) = 0xE700000000000000;
    *(inited + 48) = v16;
    *(inited + 56) = v15;

    v18 = sub_1D20CE8BC(inited);
    swift_setDeallocating();
    sub_1D20A862C(inited + 32, &qword_1EC6C73D8, &qword_1D21153A0);
    v19 = [objc_opt_self() processInfo];
    v20 = [v19 processName];

    v21 = sub_1D21137CC();
    v23 = v22;

    LOWORD(v174) = 256;
    BYTE2(v174) = 2;
    v175 = v21;
    v176 = v23;
    v177 = v18;
    static AutoBugCaptureManager.sendIssue(_:)(&v174);

    if (qword_1EE083DE8 != -1)
    {
      swift_once();
    }

    v24 = sub_1D211362C();
    __swift_project_value_buffer(v24, qword_1EE0874C0);

    v25 = sub_1D21135FC();
    v26 = sub_1D2113A7C();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = *(v0 + 608);
      v28 = *(v0 + 600);
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v174 = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_1D20B75F0(v28, v27, &v174);
      _os_log_impl(&dword_1D209F000, v25, v26, "Unable to process Grid Guidance Signal Response. | traceId: %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x1D3896EB0](v30, -1, -1);
      MEMORY[0x1D3896EB0](v29, -1, -1);
    }

    v31 = *(v0 + 648);
    v32 = *(v0 + 640);
    v33 = *(v0 + 632);
    sub_1D20CB838();
    v8 = swift_allocError();
    *v34 = 2;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    sub_1D20B98A4(v33, v32);
    v14 = &loc_1D2114000;
    goto LABEL_23;
  }

  v4 = v1;
  v5 = *(v0 + 648);
  if ([v4 statusCode] != 200)
  {
    v35 = *(v0 + 608);
    v36 = *(v0 + 600);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7608, &unk_1D2115EB0);
    v37 = swift_initStackObject();
    *(v37 + 16) = xmmword_1D2115280;
    *(v37 + 32) = 0x64496563617274;
    *(v37 + 40) = 0xE700000000000000;
    *(v37 + 48) = v36;
    *(v37 + 56) = v35;
    *(v37 + 72) = v2;
    strcpy((v37 + 80), "responseStatus");
    *(v37 + 95) = -18;

    v38 = [v4 statusCode];
    *(v37 + 120) = MEMORY[0x1E69E6530];
    *(v37 + 96) = v38;
    v39 = sub_1D20CE8BC(v37);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C73D8, &qword_1D21153A0);
    swift_arrayDestroy();
    v40 = [objc_opt_self() processInfo];
    v41 = [v40 processName];

    v42 = sub_1D21137CC();
    v44 = v43;

    LOWORD(v174) = 256;
    BYTE2(v174) = 4;
    v175 = v42;
    v176 = v44;
    v177 = v39;
    static AutoBugCaptureManager.sendIssue(_:)(&v174);

    if (qword_1EE083DE8 != -1)
    {
      swift_once();
    }

    v45 = *(v0 + 648);
    v46 = sub_1D211362C();
    __swift_project_value_buffer(v46, qword_1EE0874C0);
    v47 = v45;

    v48 = sub_1D21135FC();
    v49 = sub_1D2113A7C();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = *(v0 + 648);
      v51 = *(v0 + 608);
      v52 = *(v0 + 600);
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v174 = v55;
      *v53 = 136315394;
      *(v53 + 4) = sub_1D20B75F0(v52, v51, &v174);
      *(v53 + 12) = 2112;
      *(v53 + 14) = v4;
      *v54 = v4;
      v56 = v50;
      _os_log_impl(&dword_1D209F000, v48, v49, "Unhandled response code received for Grid Guidance Request. | traceId: %s, %@", v53, 0x16u);
      sub_1D20A862C(v54, &qword_1EC6C7950, qword_1D21153D0);
      MEMORY[0x1D3896EB0](v54, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v55);
      v57 = v55;
      v2 = MEMORY[0x1E69E6158];
      MEMORY[0x1D3896EB0](v57, -1, -1);
      MEMORY[0x1D3896EB0](v53, -1, -1);
    }

    v58 = *(v0 + 648);
    v59 = *(v0 + 640);
    v60 = *(v0 + 632);
    sub_1D20CB838();
    v8 = swift_allocError();
    *v61 = [v4 statusCode];
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    sub_1D20B98A4(v60, v59);
    v3 = 0x1E83F6000;
    v14 = &loc_1D2114000;
    goto LABEL_23;
  }

  v6 = *(v0 + 656);
  sub_1D2112B4C();
  swift_allocObject();
  sub_1D2112B3C();
  sub_1D20CEB28();
  v7 = &loc_1D2114000;
  sub_1D2112B2C();
  v8 = v6;

  v3 = 0x1E83F6000uLL;
  if (v6)
  {
LABEL_4:
    *(v0 + 448) = v8;
    v9 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C75A0, &qword_1D2115B70);
    if (swift_dynamicCast())
    {
      v10 = *(v0 + 648);
      v11 = *(v0 + 640);
      v12 = *(v0 + 632);
      sub_1D20CEBE0(*(v0 + 496), type metadata accessor for NetworkError);
      swift_willThrow();

      v13 = v12;
      v14 = &loc_1D2114000;
      sub_1D20B98A4(v13, v11);
    }

    else
    {
      v62 = *(v0 + 608);
      v63 = *(v0 + 600);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7608, &unk_1D2115EB0);
      v64 = swift_allocObject();
      v65 = v7[133];
      *(v64 + 32) = 0x64496563617274;
      *(v64 + 16) = v65;
      *(v64 + 72) = v2;
      *(v64 + 40) = 0xE700000000000000;
      *(v64 + 48) = v63;
      *(v64 + 56) = v62;

      v66 = sub_1D20CE8BC(v64);
      swift_setDeallocating();
      sub_1D20A862C(v64 + 32, &qword_1EC6C73D8, &qword_1D21153A0);
      swift_deallocClassInstance();
      v67 = [objc_opt_self() processInfo];
      v68 = [v67 processName];

      v69 = sub_1D21137CC();
      v71 = v70;

      LOWORD(v174) = 256;
      BYTE2(v174) = 3;
      v175 = v69;
      v176 = v71;
      v177 = v66;
      static AutoBugCaptureManager.sendIssue(_:)(&v174);

      if (qword_1EE083DE8 != -1)
      {
        swift_once();
      }

      v72 = sub_1D211362C();
      __swift_project_value_buffer(v72, qword_1EE0874C0);

      v73 = sub_1D21135FC();
      v74 = sub_1D2113A7C();

      if (os_log_type_enabled(v73, v74))
      {
        v75 = *(v0 + 608);
        v76 = *(v0 + 600);
        v77 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        v174 = v78;
        *v77 = 136315138;
        *(v77 + 4) = sub_1D20B75F0(v76, v75, &v174);
        _os_log_impl(&dword_1D209F000, v73, v74, "Error while decoding Grid Guidance response from server | traceId: %s", v77, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v78);
        MEMORY[0x1D3896EB0](v78, -1, -1);
        MEMORY[0x1D3896EB0](v77, -1, -1);
      }

      v79 = *(v0 + 648);
      v80 = sub_1D21135FC();
      v81 = sub_1D2113A7C();

      if (os_log_type_enabled(v80, v81))
      {
        v82 = *(v0 + 648);
        v83 = swift_slowAlloc();
        v84 = swift_slowAlloc();
        v174 = v84;
        *v83 = 136315138;
        v85 = [v82 description];
        v86 = sub_1D21137CC();
        v88 = v87;

        v89 = sub_1D20B75F0(v86, v88, &v174);

        *(v83 + 4) = v89;
        _os_log_impl(&dword_1D209F000, v80, v81, "URL Response %s", v83, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v84);
        MEMORY[0x1D3896EB0](v84, -1, -1);
        MEMORY[0x1D3896EB0](v83, -1, -1);
      }

      v90 = *(v0 + 648);
      v91 = *(v0 + 640);
      v92 = *(v0 + 632);
      sub_1D20CB838();
      v93 = swift_allocError();
      *v94 = 1;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      sub_1D20B98A4(v92, v91);
      v8 = v93;
      v2 = MEMORY[0x1E69E6158];
      v14 = &loc_1D2114000;
      v3 = 0x1E83F6000uLL;
    }

LABEL_23:
    v95 = *(v0 + 608);
    v96 = *(v0 + 600);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7608, &unk_1D2115EB0);
    v97 = swift_initStackObject();
    v98 = v14[133];
    *(v97 + 32) = 0x64496563617274;
    *(v97 + 16) = v98;
    *(v97 + 72) = v2;
    *(v97 + 40) = 0xE700000000000000;
    *(v97 + 48) = v96;
    *(v97 + 56) = v95;

    v99 = v8;
    v100 = sub_1D20CE8BC(v97);
    swift_setDeallocating();
    sub_1D20A862C(v97 + 32, &qword_1EC6C73D8, &qword_1D21153A0);
    v101 = [objc_opt_self() *(v3 + 2096)];
    v102 = [v101 processName];

    v103 = sub_1D21137CC();
    v105 = v104;

    LOWORD(v174) = 256;
    BYTE2(v174) = 5;
    v175 = v103;
    v176 = v105;
    v177 = v100;
    static AutoBugCaptureManager.sendIssue(_:)(&v174);

    if (qword_1EE083DE8 != -1)
    {
      swift_once();
    }

    v106 = sub_1D211362C();
    __swift_project_value_buffer(v106, qword_1EE0874C0);

    v107 = v8;
    v108 = sub_1D21135FC();
    v109 = sub_1D2113A7C();

    v110 = os_log_type_enabled(v108, v109);
    v111 = *(v0 + 608);
    if (v110)
    {
      v112 = *(v0 + 600);
      v113 = swift_slowAlloc();
      v114 = swift_slowAlloc();
      v115 = swift_slowAlloc();
      v174 = v115;
      *v113 = 136315394;
      v116 = sub_1D20B75F0(v112, v111, &v174);

      *(v113 + 4) = v116;
      *(v113 + 12) = 2112;
      v117 = v8;
      v118 = _swift_stdlib_bridgeErrorToNSError();
      *(v113 + 14) = v118;
      *v114 = v118;
      _os_log_impl(&dword_1D209F000, v108, v109, "URLSession Error while trying to fetch Grid Guidance. | traceId: %s, %@", v113, 0x16u);
      sub_1D20A862C(v114, &qword_1EC6C7950, qword_1D21153D0);
      MEMORY[0x1D3896EB0](v114, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v115);
      MEMORY[0x1D3896EB0](v115, -1, -1);
      MEMORY[0x1D3896EB0](v113, -1, -1);
    }

    else
    {
    }

    *(v0 + 440) = v8;
    v119 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C75A0, &qword_1D2115B70);
    v120 = swift_dynamicCast();
    v121 = *(v0 + 592);
    v122 = *(v0 + 584);
    v123 = *(v0 + 576);
    if (v120)
    {
      v124 = *(v0 + 504);

      sub_1D20CEBE0(v124, type metadata accessor for NetworkError);
      swift_willThrow();
    }

    else
    {
      sub_1D20CB838();
      swift_allocError();
      sub_1D20F5FDC(v8, v125);
      swift_willThrow();
    }

    (*(v122 + 8))(v121, v123);

    v126 = *(v0 + 8);
    goto LABEL_32;
  }

  v128 = *(v0 + 408);
  v129 = *(v0 + 608);
  if (!*(v128 + 16))
  {
    v148 = *(v0 + 600);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7608, &unk_1D2115EB0);
    v149 = swift_allocObject();
    *(v149 + 32) = 0x64496563617274;
    *(v149 + 16) = xmmword_1D2114850;
    *(v149 + 72) = v2;
    *(v149 + 40) = 0xE700000000000000;
    *(v149 + 48) = v148;
    *(v149 + 56) = v129;

    v150 = sub_1D20CE8BC(v149);
    swift_setDeallocating();
    sub_1D20A862C(v149 + 32, &qword_1EC6C73D8, &qword_1D21153A0);
    swift_deallocClassInstance();
    v151 = [objc_opt_self() processInfo];
    v152 = [v151 processName];

    v153 = sub_1D21137CC();
    v155 = v154;

    LOWORD(v174) = 256;
    BYTE2(v174) = 0;
    v175 = v153;
    v176 = v155;
    v177 = v150;
    static AutoBugCaptureManager.sendIssue(_:)(&v174);

    if (qword_1EE0836C8 != -1)
    {
      swift_once();
    }

    v156 = sub_1D211362C();
    __swift_project_value_buffer(v156, qword_1EE087438);

    v157 = sub_1D21135FC();
    v158 = sub_1D2113A7C();

    if (os_log_type_enabled(v157, v158))
    {
      v159 = *(v0 + 608);
      v160 = *(v0 + 600);
      v161 = swift_slowAlloc();
      v162 = swift_slowAlloc();
      v174 = v162;
      *v161 = 136315138;
      *(v161 + 4) = sub_1D20B75F0(v160, v159, &v174);
      _os_log_impl(&dword_1D209F000, v157, v158, "No Guidance returned in response | traceId: %s", v161, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v162);
      MEMORY[0x1D3896EB0](v162, -1, -1);
      MEMORY[0x1D3896EB0](v161, -1, -1);
    }

    v7 = &loc_1D2114000;
    sub_1D20CB838();
    v8 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_4;
  }

  v169 = *(v0 + 392);
  v168 = *(v0 + 384);

  v130 = *(v128 + 16);
  if (v130)
  {
    v131 = *(v0 + 552);
    v172 = *(v0 + 512);
    v173 = *(v0 + 520);
    v170 = (v131 + 8);
    v171 = (v131 + 16);

    v132 = (v128 + 48);
    v133 = MEMORY[0x1E69E7CC0];
    do
    {
      v134 = *v132;
      v135 = objc_allocWithZone(MEMORY[0x1E696AC80]);

      v136 = [v135 init];
      [v136 setFormatOptions_];

      v137 = sub_1D21137BC();

      v138 = [v136 dateFromString_];

      if (v138)
      {
        v139 = *(v0 + 560);
        v140 = *(v0 + 544);
        v141 = *(v0 + 536);
        v142 = *(v0 + 528);
        sub_1D211316C();

        (*v171)(v141, v139, v140);
        sub_1D21130DC();

        *(v141 + *(v172 + 24)) = v134;
        sub_1D20CEB7C(v141, v142);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v133 = sub_1D20B7368(0, v133[2] + 1, 1, v133);
        }

        v144 = v133[2];
        v143 = v133[3];
        if (v144 >= v143 >> 1)
        {
          v133 = sub_1D20B7368((v143 > 1), v144 + 1, 1, v133);
        }

        v145 = *(v0 + 560);
        v146 = *(v0 + 544);
        v147 = *(v0 + 528);
        sub_1D20CEBE0(*(v0 + 536), type metadata accessor for GridGuidance);
        (*v170)(v145, v146);
        v133[2] = v144 + 1;
        sub_1D20CEC40(v147, v133 + ((*(v173 + 80) + 32) & ~*(v173 + 80)) + *(v173 + 72) * v144);
      }

      else
      {
      }

      v132 += 6;
      --v130;
    }

    while (v130);
  }

  else
  {

    v133 = MEMORY[0x1E69E7CC0];
  }

  v163 = *(v0 + 648);
  v164 = *(v0 + 592);
  v165 = *(v0 + 584);
  v166 = *(v0 + 576);
  v167 = *(v0 + 456);
  sub_1D20B98A4(*(v0 + 632), *(v0 + 640));

  (*(v165 + 8))(v164, v166);

  *v167 = v168;
  *(v167 + 8) = v169;
  *(v167 + 16) = 1;
  *(v167 + 24) = v133;

  v126 = *(v0 + 8);
LABEL_32:

  return v126();
}

uint64_t sub_1D20CD9DC()
{
  v35 = v0;
  v1 = v0[82];
  v2 = v0[76];
  v3 = v0[75];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7608, &unk_1D2115EB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D2114850;
  *(inited + 32) = 0x64496563617274;
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = v3;
  *(inited + 56) = v2;

  v5 = v1;
  v6 = sub_1D20CE8BC(inited);
  swift_setDeallocating();
  sub_1D20A862C(inited + 32, &qword_1EC6C73D8, &qword_1D21153A0);
  v7 = [objc_opt_self() processInfo];
  v8 = [v7 processName];

  v9 = sub_1D21137CC();
  v11 = v10;

  LOWORD(v34[0]) = 256;
  BYTE2(v34[0]) = 5;
  v34[1] = v9;
  v34[2] = v11;
  v34[3] = v6;
  static AutoBugCaptureManager.sendIssue(_:)(v34);

  if (qword_1EE083DE8 != -1)
  {
    swift_once();
  }

  v12 = sub_1D211362C();
  __swift_project_value_buffer(v12, qword_1EE0874C0);

  v13 = v1;
  v14 = sub_1D21135FC();
  v15 = sub_1D2113A7C();

  v16 = os_log_type_enabled(v14, v15);
  v17 = v0[76];
  if (v16)
  {
    v18 = v0[75];
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v34[0] = v21;
    *v19 = 136315394;
    v22 = sub_1D20B75F0(v18, v17, v34);

    *(v19 + 4) = v22;
    *(v19 + 12) = 2112;
    v23 = v1;
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v19 + 14) = v24;
    *v20 = v24;
    _os_log_impl(&dword_1D209F000, v14, v15, "URLSession Error while trying to fetch Grid Guidance. | traceId: %s, %@", v19, 0x16u);
    sub_1D20A862C(v20, &qword_1EC6C7950, qword_1D21153D0);
    MEMORY[0x1D3896EB0](v20, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x1D3896EB0](v21, -1, -1);
    MEMORY[0x1D3896EB0](v19, -1, -1);
  }

  else
  {
  }

  v0[55] = v1;
  v25 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C75A0, &qword_1D2115B70);
  v26 = swift_dynamicCast();
  v27 = v0[74];
  v28 = v0[73];
  v29 = v0[72];
  if (v26)
  {
    v30 = v0[63];

    sub_1D20CEBE0(v30, type metadata accessor for NetworkError);
    swift_willThrow();
  }

  else
  {
    sub_1D20CB838();
    swift_allocError();
    sub_1D20F5FDC(v1, v31);
    swift_willThrow();
  }

  (*(v28 + 8))(v27, v29);

  v32 = v0[1];

  return v32();
}

uint64_t sub_1D20CDE4C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7660, &qword_1D2116068);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - v5;
  v14 = *(v1 + 16);
  v11 = *(v1 + 24);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D20CEDF4();
  sub_1D2113F3C();
  v18 = 0;
  v7 = v12;
  sub_1D2113D8C();
  if (!v7)
  {
    v8 = v11;
    v17 = v14;
    v16 = 1;
    sub_1D20CEEF0();
    sub_1D2113DEC();
    v13 = v8;
    v15 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7648, &qword_1D2116060);
    sub_1D20CEF44(&qword_1EC6C7670, sub_1D20CEFBC, MEMORY[0x1E69E6300]);
    sub_1D2113DEC();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1D20CE068@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7630, &qword_1D2116058);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D20CEDF4();
  sub_1D2113F2C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = 0;
  v9 = sub_1D2113D1C();
  v11 = v10;
  v12 = v9;
  v18 = 1;
  sub_1D20CEE48();
  sub_1D2113D7C();
  v16 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7648, &qword_1D2116060);
  v17 = 2;
  sub_1D20CEF44(&qword_1EC6C7650, sub_1D20CEE9C, MEMORY[0x1E69E6330]);
  sub_1D2113D7C();
  (*(v6 + 8))(v8, v5);
  v14 = v15[1];
  *a2 = v12;
  *(a2 + 8) = v11;
  *(a2 + 16) = v16;
  *(a2 + 24) = v14;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D20CE308(void *a1, uint64_t a2, uint64_t a3, float a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7690, &qword_1D2116078);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D20CF30C();
  sub_1D2113F3C();
  v11[15] = 0;
  sub_1D2113DBC();
  if (!v4)
  {
    v11[14] = 1;
    sub_1D2113DDC();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1D20CE4A4()
{
  v1 = 0x636E657571657266;
  if (*v0 != 1)
  {
    v1 = 1635017060;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x64496C616E676973;
  }
}

uint64_t sub_1D20CE4FC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D20CF010(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D20CE524(uint64_t a1)
{
  v2 = sub_1D20CEDF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D20CE560(uint64_t a1)
{
  v2 = sub_1D20CEDF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D20CE5CC()
{
  if (*v0)
  {
    return 0x676E69746172;
  }

  else
  {
    return 0x7472617473;
  }
}

uint64_t sub_1D20CE600@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7472617473 && a2 == 0xE500000000000000;
  if (v6 || (sub_1D2113E2C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x676E69746172 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D2113E2C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1D20CE6E0(uint64_t a1)
{
  v2 = sub_1D20CF30C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D20CE71C(uint64_t a1)
{
  v2 = sub_1D20CF30C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1D20CE758(uint64_t a1@<X8>, void *a2@<X0>)
{
  v6 = sub_1D20CF130(a2);
  if (!v2)
  {
    *a1 = v4;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
  }
}

unint64_t sub_1D20CE7A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7618, &qword_1D2115F10);
    v3 = sub_1D2113CFC();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1D20E4570(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D20CE8BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C73D0, &qword_1D2115398);
    v3 = sub_1D2113CFC();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D20A8580(v4, &v13, &qword_1EC6C73D8, &qword_1D21153A0);
      v5 = v13;
      v6 = v14;
      result = sub_1D20E4570(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1D20B3388(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D20CE9EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7620, &qword_1D2115F18);
    v3 = sub_1D2113CFC();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D20A8580(v4, v13, &qword_1EC6C7628, &qword_1D2115F20);
      result = sub_1D20E459C(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_1D20B3388(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D20CEB28()
{
  result = qword_1EC6C7610;
  if (!qword_1EC6C7610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7610);
  }

  return result;
}

uint64_t sub_1D20CEB7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GridGuidance(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D20CEBE0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D20CEC40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GridGuidance(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy20_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_1D20CECB8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 20))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D20CED00(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 20) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 20) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D20CED5C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D20CEDA4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D20CEDF4()
{
  result = qword_1EC6C7638;
  if (!qword_1EC6C7638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7638);
  }

  return result;
}

unint64_t sub_1D20CEE48()
{
  result = qword_1EC6C7640;
  if (!qword_1EC6C7640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7640);
  }

  return result;
}

unint64_t sub_1D20CEE9C()
{
  result = qword_1EC6C7658;
  if (!qword_1EC6C7658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7658);
  }

  return result;
}

unint64_t sub_1D20CEEF0()
{
  result = qword_1EC6C7668;
  if (!qword_1EC6C7668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7668);
  }

  return result;
}

uint64_t sub_1D20CEF44(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6C7648, &qword_1D2116060);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}