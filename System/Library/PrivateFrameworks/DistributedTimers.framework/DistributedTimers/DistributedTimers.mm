uint64_t sub_24904C618()
{
  v0 = sub_249076D6C();
  __swift_allocate_value_buffer(v0, qword_27EECF878);
  __swift_project_value_buffer(v0, qword_27EECF878);
  sub_249050038();

  return sub_249076D5C();
}

void DTAnalyticsLogEvent(_:)(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v1 = 0xD000000000000021;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 40);
  if (v4 < 0)
  {
    v6 = *(a1 + 64);
    v33 = *a1;
    v34 = v2;
    v36 = *(a1 + 24);
    v35 = v3;
    v37 = v4 & 0x7FFFFFFFFFFFFFFFLL;
    v38 = *(a1 + 48);
    v39 = v6;
    DTAnalyticsTimerDetails.eventPayload.getter();
    v5 = &unk_24907C170;
  }

  else
  {
    LOBYTE(v33) = *a1;
    v34 = v2;
    v35 = v3;
    DTAnalyticsMonitorDetails.eventPayload.getter();
    v5 = "butedTimers.timer";
    v1 = 0xD000000000000023;
  }

  v7 = objc_opt_self();
  sub_24904D078();
  v8 = sub_249076DDC();
  v33 = 0;
  v9 = [v7 dataWithJSONObject:v8 options:0 error:&v33];

  v10 = v33;
  if (v9)
  {
    v11 = sub_249076B9C();
    v13 = v12;

    v14 = sub_24904DE90(v11, v13);
    if (!v15)
    {
      v31 = v11;
      v32 = v13;
      sub_24904E03C(v11, v13);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF0F8, &qword_249077F10);
      if (swift_dynamicCast())
      {
        sub_24904E194(v29, &v33);
        __swift_project_boxed_opaque_existential_1(&v33, v36);
        if (sub_24907716C())
        {
          sub_24904E140(v11, v13);
          __swift_project_boxed_opaque_existential_1(&v33, v36);
          sub_24907715C();
          v16 = *(&v29[0] + 1);
          v17 = *&v29[0];
          __swift_destroy_boxed_opaque_existential_1Tm(&v33);
          goto LABEL_14;
        }

        __swift_destroy_boxed_opaque_existential_1Tm(&v33);
      }

      else
      {
        v30 = 0;
        memset(v29, 0, sizeof(v29));
        sub_24904E0D8(v29);
      }

      v14 = sub_24904DB3C(v11, v13);
    }

    v17 = v14;
    v16 = v15;
    sub_24904E140(v11, v13);
  }

  else
  {
    v18 = v10;
    v19 = sub_249076B3C();

    swift_willThrow();
    v33 = 0x22726F727265227BLL;
    v34 = 0xE90000000000003ALL;
    swift_getErrorValue();
    v20 = sub_2490772EC();
    MEMORY[0x24C1EFD00](v20);

    MEMORY[0x24C1EFD00](125, 0xE100000000000000);

    v17 = v33;
    v16 = v34;
  }

LABEL_14:
  if (qword_27EECF870 != -1)
  {
    swift_once();
  }

  v21 = sub_249076D6C();
  __swift_project_value_buffer(v21, qword_27EECF878);

  v22 = sub_249076D4C();
  v23 = sub_249076FBC();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v33 = v25;
    *v24 = 136446466;
    *(v24 + 4) = sub_24904D594(v1, v5 | 0x8000000000000000, &v33);
    *(v24 + 12) = 2080;
    v26 = sub_24904D594(v17, v16, &v33);

    *(v24 + 14) = v26;
    _os_log_impl(&dword_24904B000, v22, v23, "Event: name=%{public}s, payload=%s", v24, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1F07B0](v25, -1, -1);
    MEMORY[0x24C1F07B0](v24, -1, -1);
  }

  else
  {
  }

  v27 = sub_249076E0C();

  v28 = sub_249076DDC();

  AnalyticsSendEvent();
}

unint64_t DTAnalyticsEvent.eventName.getter()
{
  if (*(v0 + 40) < 0)
  {
    return 0xD000000000000021;
  }

  else
  {
    return 0xD000000000000023;
  }
}

unint64_t DTAnalyticsEvent.eventPayload.getter()
{
  if ((*(v0 + 40) & 0x8000000000000000) != 0)
  {
    return DTAnalyticsTimerDetails.eventPayload.getter();
  }

  else
  {
    return DTAnalyticsMonitorDetails.eventPayload.getter();
  }
}

unint64_t DTAnalyticsMonitorDetails.eventPayload.getter()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF108, &qword_249077F20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249077EF0;
  strcpy((inited + 32), "accessoryType");
  *(inited + 46) = -4864;
  *(inited + 48) = sub_249076F7C();
  *(inited + 56) = 0x6E6F697461727564;
  *(inited + 64) = 0xEF73646E6F636553;
  *(inited + 72) = sub_24907734C();
  *(inited + 80) = 0x646F43726F727265;
  *(inited + 88) = 0xE900000000000065;
  if (v1)
  {
    [v1 code];
    *(inited + 96) = sub_249076F7C();
    *(inited + 104) = 0x6D6F44726F727265;
    *(inited + 112) = 0xEB000000006E6961;
    v3 = [v1 domain];
    sub_249076E1C();
  }

  else
  {
    *(inited + 96) = sub_249076F7C();
    *(inited + 104) = 0x6D6F44726F727265;
    *(inited + 112) = 0xEB000000006E6961;
  }

  v4 = sub_249076E0C();

  *(inited + 120) = v4;
  v5 = sub_24904E1F0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF110, &qword_249077F28);
  swift_arrayDestroy();
  return v5;
}

unint64_t DTAnalyticsTimerDetails.eventPayload.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF108, &qword_249077F20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249077F00;
  strcpy((inited + 32), "accessoryType");
  *(inited + 46) = -4864;
  sub_24904E2F4(v2, v3, v4, v5);
  *(inited + 48) = sub_249076F7C();
  *(inited + 56) = 0x6E6F69746361;
  *(inited + 64) = 0xE600000000000000;
  v11[0] = v2;
  v11[1] = v3;
  v11[2] = v4;
  v12 = v5;
  DTAnalyticsTimerAction.init(_:)(v11, &v13);
  *(inited + 72) = sub_249076F7C();
  *(inited + 80) = 0x646F43726F727265;
  *(inited + 88) = 0xE900000000000065;
  if (v1)
  {
    [v1 code];
    *(inited + 96) = sub_249076F7C();
    *(inited + 104) = 0x6D6F44726F727265;
    *(inited + 112) = 0xEB000000006E6961;
    v7 = [v1 domain];
    sub_249076E1C();
  }

  else
  {
    *(inited + 96) = sub_249076F7C();
    *(inited + 104) = 0x6D6F44726F727265;
    *(inited + 112) = 0xEB000000006E6961;
  }

  v8 = sub_249076E0C();

  *(inited + 120) = v8;
  *(inited + 128) = 0x734D747472;
  *(inited + 136) = 0xE500000000000000;
  *(inited + 144) = sub_24907734C();
  *(inited + 152) = 0x656372756F73;
  *(inited + 160) = 0xE600000000000000;
  *(inited + 168) = sub_249076E0C();
  v9 = sub_24904E1F0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF110, &qword_249077F28);
  swift_arrayDestroy();
  return v9;
}

unint64_t sub_24904D078()
{
  result = qword_27EECF0F0;
  if (!qword_27EECF0F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EECF0F0);
  }

  return result;
}

unint64_t sub_24904D0C4()
{
  if ((*(v0 + 40) & 0x8000000000000000) != 0)
  {
    return DTAnalyticsTimerDetails.eventPayload.getter();
  }

  else
  {
    return DTAnalyticsMonitorDetails.eventPayload.getter();
  }
}

DistributedTimers::DTAnalyticsAccessoryType_optional __swiftcall DTAnalyticsAccessoryType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

void DTAnalyticsTimerAction.init(_:)(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  if (v7 <= 4)
  {
    if (*(a1 + 24) <= 1u)
    {
      if (*(a1 + 24))
      {
        sub_24904E358(v4, v5, v6, 1u);
        v8 = 2;
      }

      else
      {
        sub_24904E358(v4, v5, v6, 0);
        v8 = 1;
      }
    }

    else if (v7 == 2)
    {
      sub_24904E358(v4, v5, v6, 2u);
      v8 = 3;
    }

    else if (v7 == 3)
    {
      sub_24904E358(v4, v5, v6, 3u);
      v8 = 4;
    }

    else
    {
      sub_24904E358(v4, v5, v6, 4u);
      v8 = 5;
    }
  }

  else
  {
    if (*(a1 + 24) <= 7u)
    {
      if (v7 != 5)
      {
        if (v7 == 6)
        {
          v8 = 7;
        }

        else
        {
          v8 = 8;
        }

        goto LABEL_28;
      }

      sub_24904E358(v4, v5, v6, 5u);
LABEL_24:
      v8 = 0;
      goto LABEL_28;
    }

    if (v7 == 8)
    {
      sub_24904E358(v4, v5, v6, 8u);
      v8 = 10;
      goto LABEL_28;
    }

    if (v7 == 9 || !(v6 | v5 | v4))
    {
      goto LABEL_24;
    }

    if (v6 | v5)
    {
      v9 = 0;
    }

    else
    {
      v9 = v4 == 1;
    }

    if (v9)
    {
      v8 = 6;
    }

    else
    {
      v8 = 9;
    }
  }

LABEL_28:
  *a2 = v8;
}

DistributedTimers::DTAnalyticsTimerAction_optional __swiftcall DTAnalyticsTimerAction.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 11;
  if (rawValue < 0xB)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_24904D2A8()
{
  v1 = *v0;
  sub_24907730C();
  MEMORY[0x24C1F01A0](v1);
  return sub_24907732C();
}

uint64_t sub_24904D320(uint64_t a1)
{
  v2 = *v1;
  sub_24907730C();
  MEMORY[0x24C1F01A0](v2);
  return sub_24907732C();
}

void *DTAnalyticsMonitorDetails.error.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void DTAnalyticsMonitorDetails.init(accessoryType:durationSeconds:error:)(char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a1;
  if (a3)
  {
    v8 = sub_249076B2C();
  }

  else
  {
    v8 = 0;
  }

  *a4 = v6;
  *(a4 + 8) = a2;
  *(a4 + 16) = v8;
}

void *DTAnalyticsTimerDetails.error.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

id DTAnalyticsTimerDetails.request.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  v5 = *(v1 + 40);
  *(a1 + 24) = v5;
  return sub_24904E2F4(v2, v3, v4, v5);
}

uint64_t DTAnalyticsTimerDetails.source.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

void DTAnalyticsTimerDetails.init(accessoryType:error:request:rttMs:source:)(char *a1@<X0>, void *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v11 = *a1;
  v12 = *a3;
  v13 = *(a3 + 2);
  v14 = *(a3 + 24);
  if (a2)
  {
    v17 = *a3;
    v16 = sub_249076B2C();

    v12 = v17;
  }

  else
  {
    v16 = 0;
  }

  *a7 = v11;
  *(a7 + 8) = v16;
  *(a7 + 16) = v12;
  *(a7 + 32) = v13;
  *(a7 + 40) = v14;
  *(a7 + 48) = a4;
  *(a7 + 56) = a5;
  *(a7 + 64) = a6;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_24904D594(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_24904D660(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_24904EA54(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_24904D660(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_24904D76C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_2490770EC();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_24904D76C(uint64_t a1, unint64_t a2)
{
  v3 = sub_24904D7B8(a1, a2);
  sub_24904D8E8(&unk_285C1A810);
  return v3;
}

void *sub_24904D7B8(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_24904D9D4(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_2490770EC();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_249076E8C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_24904D9D4(v10, 0);
        result = sub_24907709C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_24904D8E8(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_24904DA48(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_24904D9D4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF710, &unk_2490784B0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_24904DA48(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF710, &unk_2490784B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_24904DB3C(uint64_t a1, unint64_t a2)
{
  sub_24904E03C(a1, a2);
  sub_24904DD14(a1, a2);
  v4 = sub_249076E4C();

  return v4;
}

uint64_t sub_24904DBA8@<X0>(uint64_t *a3@<X8>)
{
  result = sub_249076E4C();
  *a3 = result;
  a3[1] = v5;
  return result;
}

unint64_t sub_24904DBE4(uint64_t a1, uint64_t a2)
{
  sub_24907730C();
  sub_249076E5C();
  v4 = sub_24907732C();

  return sub_24904DC5C(a1, a2, v4);
}

unint64_t sub_24904DC5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_2490772BC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *sub_24904DD14(uint64_t a1, unint64_t a2)
{
  v4 = sub_249076BAC();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 != 2)
    {
LABEL_12:
      sub_24904E140(a1, a2);
      return MEMORY[0x277D84F90];
    }

    v12 = *(a1 + 16);
    v11 = *(a1 + 24);
    v10 = v11 - v12;
    if (!__OFSUB__(v11, v12))
    {
      if (v10)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v9)
    {
      goto LABEL_10;
    }

    v10 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v13 = sub_24904D9D4(v10, 0);
      v14 = sub_249076B6C();
      sub_24904E140(a1, a2);
      v15 = *(v5 + 8);
      v5 += 8;
      v15(v8, v4);
      result = v13;
      if (v14 == v10)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v16 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v10 = v16;
      if (!v16)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

uint64_t sub_24904DE90(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      return sub_249076E4C();
    }

    goto LABEL_10;
  }

  if (v2 != 2)
  {
    return sub_249076E4C();
  }

  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  a1 = sub_249076AEC();
  if (a1)
  {
    a1 = sub_249076B0C();
    if (__OFSUB__(v3, a1))
    {
      goto LABEL_18;
    }
  }

  if (__OFSUB__(v4, v3))
  {
    __break(1u);
LABEL_10:
    v5 = a1;
    if (a1 >> 32 >= a1)
    {
      if (!sub_249076AEC() || !__OFSUB__(v5, sub_249076B0C()))
      {
        goto LABEL_15;
      }

LABEL_19:
      __break(1u);
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_15:
  sub_249076AFC();
  return sub_249076E4C();
}

void sub_24904E03C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_24904E0D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF100, &qword_249077F18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24904E140(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_24904E194(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_24904E1F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF128, &qword_2490784A8);
    v3 = sub_24907714C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_24904DBE4(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

id sub_24904E2F4(id result, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 2u)
  {
    return result;
  }

  if (a4 > 4u)
  {
    if (a4 == 5 || a4 == 8)
    {
    }
  }

  else if (a4 == 3 || a4 == 4)
  {
    return result;
  }

  return result;
}

void sub_24904E358(void *a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 2u)
  {
    goto LABEL_5;
  }

  if (a4 > 4u)
  {
    if (a4 == 5 || a4 == 8)
    {
    }
  }

  else if (a4 == 3 || a4 == 4)
  {
LABEL_5:
  }
}

unint64_t sub_24904E3C0()
{
  result = qword_27EECF118;
  if (!qword_27EECF118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EECF118);
  }

  return result;
}

unint64_t sub_24904E418()
{
  result = qword_27EECF120;
  if (!qword_27EECF120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EECF120);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_17DistributedTimers9DTRequestO(uint64_t a1)
{
  if ((*(a1 + 24) & 0xFu) <= 9)
  {
    return *(a1 + 24) & 0xF;
  }

  else
  {
    return (*a1 + 10);
  }
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_24904E4B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1 >> 2;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_24904E508(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 56) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 72) = 1;
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
      *a1 = 4 * -a2;
      result = 0.0;
      *(a1 + 8) = 0u;
      *(a1 + 24) = 0u;
      *(a1 + 40) = 0u;
      *(a1 + 56) = 0u;
      return result;
    }

    *(a1 + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_24904E580(void *result, uint64_t a2)
{
  v2 = result[5] & 0xFLL | (a2 << 63);
  *result &= 3uLL;
  result[5] = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for DTAnalyticsAccessoryType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DTAnalyticsAccessoryType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for DTAnalyticsTimerAction(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DTAnalyticsTimerAction(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_24904E89C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_24904E8F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_24904E95C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24904E9A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_24904EA54(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
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

uint64_t DTError.message.getter()
{
  v1 = [v0 userInfo];
  v2 = sub_249076DEC();

  sub_249076CFC();
  v3 = sub_249076CCC();
  if (!*(v2 + 16))
  {

    goto LABEL_8;
  }

  v5 = sub_24904DBE4(v3, v4);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
LABEL_8:

    return 0;
  }

  sub_24904EA54(*(v2 + 56) + 32 * v5, v10);

  if (swift_dynamicCast())
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

id DTError.init(_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  ObjectType = swift_getObjectType();
  if (a5)
  {
    sub_249076CFC();
    v12 = sub_249076CCC();
    v14 = v13;
    v38 = MEMORY[0x277D837D0];
    *&v37 = a4;
    *(&v37 + 1) = a5;
    sub_24904F8FC(&v37, v36);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_24904FBC4(v36, v12, v14, isUniquelyReferenced_nonNull_native);
  }

  v16 = 0x278F86000;
  if (a6)
  {
    v33 = v6;
    v34 = a3;
    v17 = a6;
    v18 = sub_249076B2C();
    v31 = sub_249076E1C();
    v32 = v19;
    v20 = [v18 domain];
    if (!v20)
    {
      sub_249076E1C();
      v20 = sub_249076E0C();
    }

    v21 = [v18 code];
    v22 = [v18 userInfo];
    sub_249076DEC();

    v23 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v24 = sub_249076DDC();

    v16 = 0x278F86000uLL;
    v25 = [v23 initWithDomain:v20 code:v21 userInfo:v24];

    v38 = sub_24904F8B0();
    *&v37 = v25;
    sub_24904F8FC(&v37, v36);
    v26 = swift_isUniquelyReferenced_nonNull_native();
    sub_24904FBC4(v36, v31, v32, v26);

    v7 = v33;
    a3 = v34;
  }

  v27 = sub_249076E0C();

  v28 = sub_249076DDC();

  v39.receiver = v7;
  v39.super_class = ObjectType;
  v29 = objc_msgSendSuper2(&v39, *(v16 + 3704), v27, a3, v28);

  return v29;
}

id DTError.__allocating_init(_:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  return DTError.init(_:)(a1);
}

{
  v3 = objc_allocWithZone(v1);
  if (a1)
  {
    v12 = v3;
    v4 = a1;
    v5 = sub_249076B2C();
    v6 = [v5 domain];
    if (!v6)
    {
      sub_249076E1C();
      v6 = sub_249076E0C();
    }

    v7 = [v5 code];
    v8 = [v5 userInfo];
    sub_249076DEC();

    v9 = sub_249076DDC();

    v13.receiver = v12;
    v13.super_class = v1;
    v10 = objc_msgSendSuper2(&v13, sel_initWithDomain_code_userInfo_, v6, v7, v9);
  }

  else
  {
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v10;
}

id DTError.init(_:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_249076B2C();
  v5 = [v4 domain];
  if (!v5)
  {
    sub_249076E1C();
    v5 = sub_249076E0C();
  }

  v6 = [v4 code];
  v7 = [v4 userInfo];
  sub_249076DEC();

  v8 = sub_249076DDC();

  v12.receiver = v2;
  v12.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v12, sel_initWithDomain_code_userInfo_, v5, v6, v8);

  return v9;
}

{
  ObjectType = swift_getObjectType();
  if (a1)
  {
    v12 = ObjectType;
    v4 = a1;
    v5 = sub_249076B2C();
    v6 = [v5 domain];
    if (!v6)
    {
      sub_249076E1C();
      v6 = sub_249076E0C();
    }

    v7 = [v5 code];
    v8 = [v5 userInfo];
    sub_249076DEC();

    v9 = sub_249076DDC();

    v13.receiver = v1;
    v13.super_class = v12;
    v10 = objc_msgSendSuper2(&v13, sel_initWithDomain_code_userInfo_, v6, v7, v9);
  }

  else
  {
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v10;
}

uint64_t DTError.__allocating_init(from:)(void *a1)
{
  v3 = v1;
  v5 = sub_249076CFC();
  sub_24904FD14(a1, v10);
  v6 = sub_249076CDC();
  if (!v2)
  {
    v7 = v6;
    v8 = objc_allocWithZone(v3);
    v5 = DTError.init(_:)(v7);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v5;
}

void DTError.encode(to:)(uint64_t a1)
{
  v2 = objc_allocWithZone(sub_249076CFC());
  v3 = v1;
  v4 = sub_249076D0C();
  sub_249076CEC();
}

id DTError.__allocating_init(domain:code:userInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = sub_249076E0C();

  if (a4)
  {
    v9 = sub_249076DDC();
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_allocWithZone(v5) initWithDomain:v8 code:a3 userInfo:v9];

  return v10;
}

id DTError.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24904F7A0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = v2;
  sub_249076CFC();
  sub_24904FD14(a1, v12);
  v7 = sub_249076CDC();
  if (v3)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v9 = v7;
  v10 = objc_allocWithZone(v4);
  v11 = DTError.init(_:)(v9);
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *a2 = v11;
  return result;
}

void sub_24904F84C(uint64_t a1)
{
  v2 = *v1;
  v3 = objc_allocWithZone(sub_249076CFC());
  v4 = v2;
  v5 = sub_249076D0C();
  sub_249076CEC();
}

unint64_t sub_24904F8B0()
{
  result = qword_27EECF130;
  if (!qword_27EECF130)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EECF130);
  }

  return result;
}

_OWORD *sub_24904F8FC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_24904F90C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF138, &unk_249078540);
  v33 = v4;
  result = sub_24907713C();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_24904F8FC(v24, v34);
      }

      else
      {
        sub_24904EA54(v24, v34);
      }

      sub_24907730C();
      sub_249076E5C();
      result = sub_24907732C();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_24904F8FC(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

_OWORD *sub_24904FBC4(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_24904DBE4(a2, a3);
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
      sub_24904FE5C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_24904F90C(v16, a4 & 1);
    v11 = sub_24904DBE4(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_2490772DC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);

    return sub_24904F8FC(a1, v22);
  }

  else
  {
    sub_24904FDF0(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_24904FD14(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t dispatch thunk of DTError.__allocating_init(_:)()
{
  return (*(v0 + 88))();
}

{
  return (*(v0 + 96))();
}

_OWORD *sub_24904FDF0(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_24904F8FC(a4, (a5[7] + 32 * a1));
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

void *sub_24904FE5C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF138, &unk_249078540);
  v2 = *v0;
  v3 = sub_24907712C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_24904EA54(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_24904F8FC(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

uint64_t DTEndpoint.init(homeKitAccessoryID:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (a2)
  {
    v3 = result;
  }

  else
  {
    v3 = 0;
  }

  *a3 = v3;
  a3[1] = a2;
  return result;
}

uint64_t DTEndpoint.description.getter()
{
  if (v0[1])
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0x6C61636F6CLL;
  }

  return v1;
}

uint64_t DTEndpoint._homeKitAccessoryID.getter()
{
  if (v0[1])
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

uint64_t sub_24905011C()
{
  if (*v0)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x6C61636F6CLL;
  }
}

uint64_t sub_249050158@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C61636F6CLL && a2 == 0xE500000000000000;
  if (v6 || (sub_2490772BC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024907C4A0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2490772BC();

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

uint64_t sub_249050250(uint64_t a1)
{
  v2 = sub_2490598B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24905028C(uint64_t a1)
{
  v2 = sub_2490598B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2490502E0(uint64_t a1)
{
  v2 = sub_249059904();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24905031C(uint64_t a1)
{
  v2 = sub_249059904();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_249050364@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_249050394(uint64_t a1)
{
  v2 = sub_249059958();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2490503D0(uint64_t a1)
{
  v2 = sub_249059958();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DTEndpoint.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF140, &qword_249078550);
  v21 = *(v3 - 8);
  v22 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v16 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF148, &qword_249078558);
  v18 = *(v6 - 8);
  v19 = v6;
  MEMORY[0x28223BE20](v6);
  v17 = &v16 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF150, &qword_249078560);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  v12 = v1[1];
  v20 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2490598B0();
  sub_24907736C();
  if (v12)
  {
    v24 = 1;
    sub_249059904();
    sub_24907721C();
    v13 = v22;
    sub_24907723C();
    (*(v21 + 8))(v5, v13);
  }

  else
  {
    v23 = 0;
    sub_249059958();
    v15 = v17;
    sub_24907721C();
    (*(v18 + 8))(v15, v19);
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t DTEndpoint.hash(into:)(uint64_t a1)
{
  if (!*(v1 + 8))
  {
    return MEMORY[0x24C1F01A0](0);
  }

  MEMORY[0x24C1F01A0](1);

  return sub_249076E5C();
}

uint64_t DTEndpoint.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_24907730C();
  if (v1)
  {
    MEMORY[0x24C1F01A0](1);
    sub_249076E5C();
  }

  else
  {
    MEMORY[0x24C1F01A0](0);
  }

  return sub_24907732C();
}

uint64_t DTEndpoint.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v37 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF158, &qword_249078568);
  v35 = *(v3 - 8);
  v36 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v32 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF160, &qword_249078570);
  v34 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v32 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF168, &qword_249078578);
  v38 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v32 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2490598B0();
  v12 = v39;
  sub_24907735C();
  if (v12)
  {
    goto LABEL_7;
  }

  v33 = v6;
  v14 = v36;
  v13 = v37;
  v39 = a1;
  v15 = v11;
  v16 = sub_24907720C();
  if (*(v16 + 16) != 1)
  {
    v20 = sub_2490770DC();
    swift_allocError();
    v22 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF170, &unk_249078580);
    *v22 = &type metadata for DTEndpoint;
    sub_24907719C();
    sub_2490770CC();
    (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D84160], v20);
    swift_willThrow();
    (*(v38 + 8))(v11, v9);
    swift_unknownObjectRelease();
    a1 = v39;
LABEL_7:
    v27 = a1;
    return __swift_destroy_boxed_opaque_existential_1Tm(v27);
  }

  if (*(v16 + 32))
  {
    v41 = 1;
    sub_249059904();
    v17 = v5;
    sub_24907718C();
    v18 = v15;
    v19 = v38;
    v25 = v13;
    v26 = v17;
    v34 = v18;
    v29 = sub_2490771CC();
    v31 = v30;
    (*(v35 + 8))(v26, v14);
    (*(v19 + 8))(v34, v9);
    swift_unknownObjectRelease();
  }

  else
  {
    v40 = 0;
    sub_249059958();
    v23 = v8;
    sub_24907718C();
    v24 = v38;
    v25 = v13;
    (*(v34 + 1))(v23, v33);
    (*(v24 + 8))(v11, v9);
    swift_unknownObjectRelease();
    v29 = 0;
    v31 = 0;
  }

  *v25 = v29;
  v25[1] = v31;
  v27 = v39;
  return __swift_destroy_boxed_opaque_existential_1Tm(v27);
}

uint64_t sub_249050CD8()
{
  if (v0[1])
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0x6C61636F6CLL;
  }

  return v1;
}

uint64_t sub_249050D24()
{
  v1 = *(v0 + 8);
  sub_24907730C();
  if (v1)
  {
    MEMORY[0x24C1F01A0](1);
    sub_249076E5C();
  }

  else
  {
    MEMORY[0x24C1F01A0](0);
  }

  return sub_24907732C();
}

uint64_t sub_249050D94(uint64_t a1)
{
  if (!*(v1 + 8))
  {
    return MEMORY[0x24C1F01A0](0);
  }

  MEMORY[0x24C1F01A0](1);

  return sub_249076E5C();
}

uint64_t sub_249050E0C(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_24907730C();
  if (v2)
  {
    MEMORY[0x24C1F01A0](1);
    sub_249076E5C();
  }

  else
  {
    MEMORY[0x24C1F01A0](0);
  }

  return sub_24907732C();
}

const char *DTFeatures.feature.getter()
{
  v1 = "MoreDevices";
  if (*v0 != 1)
  {
    v1 = "ReplaceCoordination";
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return "AllowHH1";
  }
}

uint64_t DTFeatures.isEnabled.getter()
{
  v1 = *v0;
  v4[3] = &type metadata for DTFeatures;
  v4[4] = sub_2490599AC();
  LOBYTE(v4[0]) = v1;
  v2 = sub_249076C0C();
  __swift_destroy_boxed_opaque_existential_1Tm(v4);
  return v2 & 1;
}

uint64_t DTFeatures.hashValue.getter()
{
  v1 = *v0;
  sub_24907730C();
  MEMORY[0x24C1F01A0](v1);
  return sub_24907732C();
}

const char *sub_249050FCC()
{
  v1 = "MoreDevices";
  if (*v0 != 1)
  {
    v1 = "ReplaceCoordination";
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return "AllowHH1";
  }
}

DistributedTimers::DTPrefKey_optional __swiftcall DTPrefKey.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24907717C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t DTPrefKey.rawValue.getter()
{
  v1 = 0x67694D64756F6C63;
  if (*v0 != 1)
  {
    v1 = 0x73616369746C756DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_2490510F4(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xED00006465746172;
  v3 = 0x67694D64756F6C63;
  v4 = *a1;
  v5 = 0x73616369746C756DLL;
  v6 = 0xED00007469615774;
  if (v4 == 1)
  {
    v5 = 0x67694D64756F6C63;
    v6 = 0xED00006465746172;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000010;
  }

  if (v4)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0x800000024907C310;
  }

  if (*a2 != 1)
  {
    v3 = 0x73616369746C756DLL;
    v2 = 0xED00007469615774;
  }

  if (*a2)
  {
    v9 = v3;
  }

  else
  {
    v9 = 0xD000000000000010;
  }

  if (*a2)
  {
    v10 = v2;
  }

  else
  {
    v10 = 0x800000024907C310;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2490772BC();
  }

  return v11 & 1;
}

uint64_t sub_249051210()
{
  sub_24907730C();
  sub_249076E5C();

  return sub_24907732C();
}

uint64_t sub_2490512D0(uint64_t a1)
{
  sub_249076E5C();
}

uint64_t sub_24905137C(uint64_t a1)
{
  sub_24907730C();
  sub_249076E5C();

  return sub_24907732C();
}

void sub_249051444(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED00006465746172;
  v4 = 0x67694D64756F6C63;
  if (v2 != 1)
  {
    v4 = 0x73616369746C756DLL;
    v3 = 0xED00007469615774;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xD000000000000010;
  }

  if (v5)
  {
    v3 = 0x800000024907C310;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t DTRequest.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 24);
  if (v2 <= 4)
  {
    if (*(v0 + 24) <= 1u)
    {
      if (*(v0 + 24))
      {
        sub_2490770AC();

        v15[0] = 0xD000000000000010;
        v15[1] = 0x800000024907C420;
      }

      else
      {
        strcpy(v15, "addTimer: id=");
        HIWORD(v15[1]) = -4864;
      }
    }

    else
    {
      if (v2 == 2)
      {
        sub_2490770AC();

        v15[0] = 0xD000000000000010;
        v15[1] = 0x800000024907C400;
        v5 = [v1 identifier];
        goto LABEL_21;
      }

      if (v2 == 3)
      {
        sub_2490770AC();

        v15[0] = 0xD000000000000010;
        v15[1] = 0x800000024907C3E0;
      }

      else
      {
        sub_2490770AC();

        v15[0] = 0xD000000000000011;
        v15[1] = 0x800000024907C3C0;
      }
    }

    v5 = [v1 identifier];
LABEL_21:
    v10 = v5;
    v11 = sub_249076E1C();
    v13 = v12;

    MEMORY[0x24C1EFD00](v11, v13);
LABEL_25:

    return v15[0];
  }

  v3 = *(v0 + 8);
  if (*(v0 + 24) <= 7u)
  {
    if (v2 == 5)
    {
      strcpy(v15, "echo: '");
      v15[1] = 0xE700000000000000;
      MEMORY[0x24C1EFD00](v1, v3);
      MEMORY[0x24C1EFD00](39, 0xE100000000000000);
      return v15[0];
    }

    if (v2 == 6)
    {
      v15[0] = 0;
      v15[1] = 0xE000000000000000;
      sub_2490770AC();

      v4 = 0xEE00203A74726174;
    }

    else
    {
      v4 = 0xED0000203A706F74;
    }

    v15[0] = 0x53726F74696E6F6DLL;
    v15[1] = v4;
    strcpy(v16, "clientID=");
    WORD1(v16[1]) = 0;
    HIDWORD(v16[1]) = -385875968;
    v14 = sub_24907727C();
    MEMORY[0x24C1EFD00](v14);

    v7 = v16[0];
    goto LABEL_24;
  }

  v6 = *(v0 + 16);
  if (v2 == 8)
  {
    sub_2490770AC();

    strcpy(v16, "monitorEvent: ");
    HIBYTE(v16[1]) = -18;
    v15[0] = v1;
    v15[1] = v3;
    v15[2] = v6;
    v8 = DTMonitorEvent.description.getter();
    MEMORY[0x24C1EFD00](v8);

    return v16[0];
  }

  if (v2 == 9)
  {
    strcpy(v15, "diagnostics: ");
    HIWORD(v15[1]) = -4864;
    LOBYTE(v16[0]) = v1;
    v7 = DTDiagnosticsRequest.description.getter();
LABEL_24:
    MEMORY[0x24C1EFD00](v7);
    goto LABEL_25;
  }

  if (!(v6 | v3 | v1))
  {
    return 0x6174536863746566;
  }

  if (v1 != 1 || v6 | v3)
  {
    return 0xD000000000000010;
  }

  return 0x6D69546863746566;
}

uint64_t DTRequest.monitorID.getter()
{
  result = *v0;
  v2 = 1 << *(v0 + 24);
  if ((v2 & 0x33F) != 0 || (v2 & 0xC0) == 0)
  {
    return 0;
  }

  return result;
}

uint64_t DTRequest.isTargetable.getter()
{
  v1 = *(v0 + 24);
  if (v1 > 0xA)
  {
    return 0;
  }

  result = 1;
  if (((1 << v1) & 0xC3) == 0)
  {
    if (v1 != 10)
    {
      return 0;
    }

    if (*v0 != 1 || *(v0 + 8) != 0)
    {
      return 0;
    }
  }

  return result;
}

void DTRequest.setTargetAccessoryIfNeeded(defaultTargetID:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *v3;
  v4 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  if (a2)
  {
    if (*(v3 + 24) <= 3u)
    {
      v8 = a3;
      if (*(v3 + 24) > 1u)
      {
        if (v7 == 2)
        {
          DTTimer.setTargetAccessoryIfNeeded(defaultTargetID:)(a3, *&a1);
          *(v8 + 8) = 0;
          *(v8 + 16) = 0;
          *v8 = v10;
          v11 = 2;
        }

        else
        {
          DTTimer.setTargetAccessoryIfNeeded(defaultTargetID:)(a3, *&a1);
          *(v8 + 8) = 0;
          *(v8 + 16) = 0;
          *v8 = v14;
          v11 = 3;
        }
      }

      else
      {
        if (!*(v3 + 24))
        {
          DTTimer.setTargetAccessoryIfNeeded(defaultTargetID:)(a3, *&a1);
          *(v8 + 8) = 0;
          *(v8 + 16) = 0;
          *v8 = v9;
          *(v8 + 24) = 0;
          return;
        }

        DTTimer.setTargetAccessoryIfNeeded(defaultTargetID:)(a3, *&a1);
        *(v8 + 8) = 0;
        *(v8 + 16) = 0;
        *v8 = v13;
        v11 = 1;
      }

      goto LABEL_16;
    }

    if ((v7 - 5) >= 5 && v7 == 4)
    {
      v8 = a3;
      DTTimer.setTargetAccessoryIfNeeded(defaultTargetID:)(a3, *&a1);
      *(v8 + 8) = 0;
      *(v8 + 16) = 0;
      *v8 = v12;
      v11 = 4;
LABEL_16:
      *(v8 + 24) = v11;
      return;
    }
  }

  *a3 = v5;
  *(a3 + 8) = v4;
  *(a3 + 16) = v6;
  *(a3 + 24) = v7;

  sub_24904E2F4(v5, v4, v6, v7);
}

uint64_t sub_249051AD0(char a1)
{
  result = 0x72656D6954646461;
  switch(a1)
  {
    case 1:
      v3 = 0x657461647075;
      goto LABEL_8;
    case 2:
      v3 = 0x65766F6D6572;
      goto LABEL_8;
    case 3:
      v3 = 0x657A6F6F6E73;
LABEL_8:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6954000000000000;
      break;
    case 4:
      result = 0x547373696D736964;
      break;
    case 5:
      result = 0x6174536863746566;
      break;
    case 6:
      result = 0x6D69546863746566;
      break;
    case 7:
      result = 1869112165;
      break;
    case 8:
    case 9:
      result = 0x53726F74696E6F6DLL;
      break;
    case 10:
      result = 0xD000000000000010;
      break;
    case 11:
      result = 0x45726F74696E6F6DLL;
      break;
    case 12:
      result = 0x74736F6E67616964;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_249051C80(uint64_t a1)
{
  v2 = sub_249059F40();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_249051CBC(uint64_t a1)
{
  v2 = sub_249059F40();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_249051D00@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24905DFF8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_249051D34(uint64_t a1)
{
  v2 = sub_249059A00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_249051D70(uint64_t a1)
{
  v2 = sub_249059A00();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_249051DAC(uint64_t a1)
{
  v2 = sub_249059A54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_249051DE8(uint64_t a1)
{
  v2 = sub_249059A54();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_249051E24(uint64_t a1)
{
  v2 = sub_249059DF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_249051E60(uint64_t a1)
{
  v2 = sub_249059DF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_249051E9C(uint64_t a1)
{
  v2 = sub_249059CF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_249051ED8(uint64_t a1)
{
  v2 = sub_249059CF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_249051F14(uint64_t a1)
{
  v2 = sub_249059D9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_249051F50(uint64_t a1)
{
  v2 = sub_249059D9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_249051F8C(uint64_t a1)
{
  v2 = sub_249059D48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_249051FC8(uint64_t a1)
{
  v2 = sub_249059D48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_249052004(uint64_t a1)
{
  v2 = sub_249059AFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_249052040(uint64_t a1)
{
  v2 = sub_249059AFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24905207C(uint64_t a1)
{
  v2 = sub_249059BA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2490520B8(uint64_t a1)
{
  v2 = sub_249059BA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2490520F4(uint64_t a1)
{
  v2 = sub_249059CA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_249052130(uint64_t a1)
{
  v2 = sub_249059CA0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24905216C(uint64_t a1)
{
  v2 = sub_249059BF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2490521A8(uint64_t a1)
{
  v2 = sub_249059BF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2490521E4(uint64_t a1)
{
  v2 = sub_249059E98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_249052220(uint64_t a1)
{
  v2 = sub_249059E98();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24905225C(uint64_t a1)
{
  v2 = sub_249059E44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_249052298(uint64_t a1)
{
  v2 = sub_249059E44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2490522D4(uint64_t a1)
{
  v2 = sub_249059EEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_249052310(uint64_t a1)
{
  v2 = sub_249059EEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DTRequest.encode(to:)(void *a1)
{
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF180, "fI");
  v73 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v87 = &v57 - v3;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF188, &qword_2490785B0);
  v72 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v85 = &v57 - v4;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF190, &qword_2490785B8);
  v62 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v61 = &v57 - v5;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF198, &qword_2490785C0);
  v71 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v83 = &v57 - v6;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF1A0, &qword_2490785C8);
  v70 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v81 = &v57 - v7;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF1A8, &qword_2490785D0);
  v69 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v79 = &v57 - v8;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF1B0, &qword_2490785D8);
  v59 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v58 = &v57 - v9;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF1B8, &qword_2490785E0);
  v65 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v64 = &v57 - v10;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF1C0, &qword_2490785E8);
  v67 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v93 = &v57 - v11;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF1C8, &qword_2490785F0);
  v68 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v92 = &v57 - v12;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF1D0, &qword_2490785F8);
  v77 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v90 = &v57 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF1D8, &qword_249078600);
  v75 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v57 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF1E0, &qword_249078608);
  v74 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v57 - v18;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF1E8, &qword_249078610);
  v94 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v21 = &v57 - v20;
  v22 = v1[1];
  v95 = *v1;
  *&v89 = v1[2];
  *(&v89 + 1) = v22;
  v23 = *(v1 + 24);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_249059A00();
  v96 = v21;
  sub_24907736C();
  if (v23 <= 4)
  {
    v29 = v17;
    v30 = v14;
    v32 = v90;
    v31 = v91;
    v34 = v92;
    v33 = v93;
    if (v23 > 1)
    {
      if (v23 == 2)
      {
        LOBYTE(v98) = 2;
        sub_249059E98();
        v35 = v32;
        v36 = v96;
        v37 = v97;
        sub_24907721C();
        v98 = v95;
        type metadata accessor for DTTimer(0);
        sub_24905A090(&qword_27EECF208, type metadata accessor for DTTimer, &protocol conformance descriptor for DTTimer);
        v38 = v31;
        sub_24907725C();
        v39 = &v104;
      }

      else
      {
        if (v23 != 3)
        {
          LOBYTE(v98) = 4;
          sub_249059DF0();
          v46 = v96;
          v45 = v97;
          sub_24907721C();
          v98 = v95;
          type metadata accessor for DTTimer(0);
          sub_24905A090(&qword_27EECF208, type metadata accessor for DTTimer, &protocol conformance descriptor for DTTimer);
          v47 = v78;
          sub_24907725C();
          (*(v67 + 8))(v33, v47);
          return (*(v94 + 8))(v46, v45);
        }

        LOBYTE(v98) = 3;
        sub_249059E44();
        v35 = v34;
        v36 = v96;
        v37 = v97;
        sub_24907721C();
        v98 = v95;
        type metadata accessor for DTTimer(0);
        sub_24905A090(&qword_27EECF208, type metadata accessor for DTTimer, &protocol conformance descriptor for DTTimer);
        v38 = v76;
        sub_24907725C();
        v39 = &v99;
      }

      (*(*(v39 - 32) + 8))(v35, v38);
      return (*(v94 + 8))(v36, v37);
    }

    if (!v23)
    {
      LOBYTE(v98) = 0;
      sub_249059F40();
      v41 = v96;
      v40 = v97;
      sub_24907721C();
      v98 = v95;
      type metadata accessor for DTTimer(0);
      sub_24905A090(&qword_27EECF208, type metadata accessor for DTTimer, &protocol conformance descriptor for DTTimer);
      sub_24907725C();
      (*(v74 + 8))(v19, v29);
      return (*(v94 + 8))(v41, v40);
    }

    LOBYTE(v98) = 1;
    sub_249059EEC();
    v48 = v16;
    v49 = v96;
    v25 = v97;
    sub_24907721C();
    v98 = v95;
    type metadata accessor for DTTimer(0);
    sub_24905A090(&qword_27EECF208, type metadata accessor for DTTimer, &protocol conformance descriptor for DTTimer);
    sub_24907725C();
    (*(v75 + 8))(v48, v30);
    v50 = *(v94 + 8);
    v51 = v49;
    return v50(v51, v25);
  }

  if (v23 <= 7)
  {
    if (v23 == 5)
    {
      LOBYTE(v98) = 7;
      sub_249059CF4();
      v24 = v79;
      v26 = v96;
      v25 = v97;
      sub_24907721C();
      v27 = v80;
      sub_24907723C();
      v28 = &v100;
    }

    else if (v23 == 6)
    {
      LOBYTE(v98) = 8;
      sub_249059CA0();
      v24 = v81;
      v26 = v96;
      v25 = v97;
      sub_24907721C();
      v98 = v95;
      sub_249059C4C();
      v27 = v82;
      sub_24907725C();
      v28 = &v101;
    }

    else
    {
      LOBYTE(v98) = 9;
      sub_249059BF8();
      v24 = v83;
      v26 = v96;
      v25 = v97;
      sub_24907721C();
      v98 = v95;
      sub_249059C4C();
      v27 = v84;
      sub_24907725C();
      v28 = &v102;
    }

    goto LABEL_22;
  }

  if (v23 == 8)
  {
    LOBYTE(v98) = 11;
    sub_249059AFC();
    v43 = v85;
    v26 = v96;
    v25 = v97;
    sub_24907721C();
    v98 = v95;
    v99 = *(&v89 + 1);
    v100 = v89;
    sub_249059B50();
    v44 = v86;
    sub_24907725C();
    (*(v72 + 8))(v43, v44);
LABEL_23:
    v50 = *(v94 + 8);
    v51 = v26;
    return v50(v51, v25);
  }

  if (v23 == 9)
  {
    LOBYTE(v98) = 12;
    sub_249059A54();
    v24 = v87;
    v26 = v96;
    v25 = v97;
    sub_24907721C();
    LOBYTE(v98) = v95;
    sub_249059AA8();
    v27 = v88;
    sub_24907725C();
    v28 = &v103;
LABEL_22:
    (*(*(v28 - 32) + 8))(v24, v27);
    goto LABEL_23;
  }

  v53 = v96;
  v52 = v97;
  if (v89 | *(&v89 + 1) | v95)
  {
    if (v95 == 1 && v89 == 0)
    {
      LOBYTE(v98) = 6;
      sub_249059D48();
      v54 = v58;
      sub_24907721C();
      (*(v59 + 8))(v54, v60);
    }

    else
    {
      LOBYTE(v98) = 10;
      sub_249059BA4();
      v56 = v61;
      sub_24907721C();
      (*(v62 + 8))(v56, v63);
    }
  }

  else
  {
    LOBYTE(v98) = 5;
    sub_249059D9C();
    v55 = v64;
    sub_24907721C();
    (*(v65 + 8))(v55, v66);
  }

  return (*(v94 + 8))(v53, v52);
}

uint64_t DTRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v127 = a2;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF210, &qword_249078618);
  v115 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v120 = v86 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF218, &qword_249078620);
  v113 = *(v4 - 8);
  v114 = v4;
  MEMORY[0x28223BE20](v4);
  v126 = v86 - v5;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF220, &qword_249078628);
  v108 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v125 = v86 - v6;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF228, &qword_249078630);
  v109 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v121 = v86 - v7;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF230, &qword_249078638);
  v106 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v119 = v86 - v8;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF238, &qword_249078640);
  v104 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v124 = v86 - v9;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF240, &qword_249078648);
  v103 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v118 = v86 - v10;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF248, &qword_249078650);
  v100 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v116 = v86 - v11;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF250, &qword_249078658);
  v101 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v117 = v86 - v12;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF258, &qword_249078660);
  v98 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v123 = v86 - v13;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF260, &qword_249078668);
  v95 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v122 = v86 - v14;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF268, &qword_249078670);
  v92 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v16 = v86 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF270, &qword_249078678);
  v91 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = v86 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF278, &qword_249078680);
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = v86 - v22;
  v24 = a1[3];
  v132 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  sub_249059A00();
  v25 = v128;
  sub_24907735C();
  if (v25)
  {
LABEL_33:
    v54 = v132;
    return __swift_destroy_boxed_opaque_existential_1Tm(v54);
  }

  v88 = v19;
  v87 = v17;
  v89 = v16;
  v26 = v122;
  v27 = v123;
  v29 = v124;
  v28 = v125;
  v30 = v126;
  v90 = 0;
  v128 = v21;
  v31 = v127;
  v32 = sub_24907720C();
  if (*(v32 + 16) != 1 || (v33 = *(v32 + 32), v33 == 13))
  {
    v41 = sub_2490770DC();
    swift_allocError();
    v42 = v20;
    v44 = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF170, &unk_249078580);
    *v44 = &type metadata for DTRequest;
    sub_24907719C();
    sub_2490770CC();
    (*(*(v41 - 8) + 104))(v44, *MEMORY[0x277D84160], v41);
    swift_willThrow();
    (*(v128 + 8))(v23, v42);
LABEL_32:
    swift_unknownObjectRelease();
    goto LABEL_33;
  }

  v86[1] = v32;
  switch(v33)
  {
    case 1:
      LOBYTE(v129) = 1;
      sub_249059EEC();
      v68 = v89;
      v69 = v90;
      sub_24907718C();
      if (v69)
      {
        goto LABEL_31;
      }

      type metadata accessor for DTTimer(0);
      sub_24905A090(&qword_27EECF298, type metadata accessor for DTTimer, &protocol conformance descriptor for DTTimer);
      v70 = v93;
      sub_2490771EC();
      v71 = v128;
      (*(v92 + 8))(v68, v70);
      (*(v71 + 8))(v23, v20);
      swift_unknownObjectRelease();
      v37 = 0;
      v38 = 0;
      v40 = v129;
      v39 = 1;
      goto LABEL_37;
    case 2:
      LOBYTE(v129) = 2;
      sub_249059E98();
      v59 = v26;
      v60 = v90;
      sub_24907718C();
      if (v60)
      {
        goto LABEL_31;
      }

      type metadata accessor for DTTimer(0);
      sub_24905A090(&qword_27EECF298, type metadata accessor for DTTimer, &protocol conformance descriptor for DTTimer);
      v61 = v96;
      sub_2490771EC();
      (*(v95 + 8))(v59, v61);
      (*(v128 + 8))(v23, v20);
      swift_unknownObjectRelease();
      v37 = 0;
      v38 = 0;
      v40 = v129;
      v39 = 2;
      goto LABEL_37;
    case 3:
      LOBYTE(v129) = 3;
      sub_249059E44();
      v62 = v90;
      sub_24907718C();
      if (v62)
      {
        goto LABEL_31;
      }

      type metadata accessor for DTTimer(0);
      sub_24905A090(&qword_27EECF298, type metadata accessor for DTTimer, &protocol conformance descriptor for DTTimer);
      v63 = v99;
      sub_2490771EC();
      v64 = v128;
      (*(v98 + 8))(v27, v63);
      (*(v64 + 8))(v23, v20);
      swift_unknownObjectRelease();
      v37 = 0;
      v38 = 0;
      v40 = v129;
      v39 = 3;
      goto LABEL_37;
    case 4:
      LOBYTE(v129) = 4;
      sub_249059DF0();
      v48 = v117;
      v49 = v90;
      sub_24907718C();
      if (v49)
      {
        goto LABEL_31;
      }

      type metadata accessor for DTTimer(0);
      sub_24905A090(&qword_27EECF298, type metadata accessor for DTTimer, &protocol conformance descriptor for DTTimer);
      v50 = v102;
      sub_2490771EC();
      v51 = v128;
      (*(v101 + 8))(v48, v50);
      (*(v51 + 8))(v23, v20);
      swift_unknownObjectRelease();
      v37 = 0;
      v38 = 0;
      v40 = v129;
      v39 = 4;
      goto LABEL_37;
    case 5:
      LOBYTE(v129) = 5;
      sub_249059D9C();
      v72 = v116;
      v73 = v90;
      sub_24907718C();
      v40 = v73;
      if (v73)
      {
        goto LABEL_31;
      }

      (*(v100 + 8))(v72, v94);
      (*(v128 + 8))(v23, v20);
      swift_unknownObjectRelease();
      v37 = 0;
      v38 = 0;
      v39 = 10;
      goto LABEL_37;
    case 6:
      LOBYTE(v129) = 6;
      sub_249059D48();
      v74 = v118;
      v75 = v90;
      sub_24907718C();
      if (v75)
      {
        goto LABEL_31;
      }

      (*(v103 + 8))(v74, v97);
      (*(v128 + 8))(v23, v20);
      swift_unknownObjectRelease();
      v37 = 0;
      v38 = 0;
      v39 = 10;
      v40 = 1;
      goto LABEL_37;
    case 7:
      LOBYTE(v129) = 7;
      sub_249059CF4();
      v65 = v90;
      sub_24907718C();
      if (v65)
      {
        goto LABEL_31;
      }

      v66 = v20;
      v67 = v105;
      v40 = sub_2490771CC();
      v37 = v85;
      (*(v104 + 8))(v29, v67);
      (*(v128 + 8))(v23, v66);
      swift_unknownObjectRelease();
      v38 = 0;
      v39 = 5;
      goto LABEL_37;
    case 8:
      LOBYTE(v129) = 8;
      sub_249059CA0();
      v77 = v119;
      v78 = v90;
      sub_24907718C();
      if (v78)
      {
        goto LABEL_31;
      }

      sub_24905A03C();
      v82 = v107;
      sub_2490771EC();
      v83 = v128;
      (*(v106 + 8))(v77, v82);
      (*(v83 + 8))(v23, v20);
      swift_unknownObjectRelease();
      v37 = 0;
      v38 = 0;
      v40 = v129;
      v39 = 6;
      goto LABEL_37;
    case 9:
      LOBYTE(v129) = 9;
      sub_249059BF8();
      v55 = v121;
      v56 = v90;
      sub_24907718C();
      if (v56)
      {
        goto LABEL_31;
      }

      sub_24905A03C();
      v57 = v111;
      sub_2490771EC();
      v58 = v128;
      (*(v109 + 8))(v55, v57);
      (*(v58 + 8))(v23, v20);
      swift_unknownObjectRelease();
      v37 = 0;
      v38 = 0;
      v40 = v129;
      v39 = 7;
      goto LABEL_37;
    case 10:
      LOBYTE(v129) = 10;
      sub_249059BA4();
      v76 = v90;
      sub_24907718C();
      if (v76)
      {
        goto LABEL_31;
      }

      (*(v108 + 8))(v28, v110);
      (*(v128 + 8))(v23, v20);
      swift_unknownObjectRelease();
      v37 = 0;
      v38 = 0;
      v39 = 10;
      v40 = 2;
      goto LABEL_37;
    case 11:
      LOBYTE(v129) = 11;
      sub_249059AFC();
      v45 = v90;
      sub_24907718C();
      if (v45)
      {
        goto LABEL_31;
      }

      sub_249059FE8();
      v46 = v114;
      sub_2490771EC();
      v47 = v128;
      (*(v113 + 8))(v30, v46);
      (*(v47 + 8))(v23, v20);
      swift_unknownObjectRelease();
      v40 = v129;
      v37 = v130;
      v39 = 8;
      v38 = v131;
      goto LABEL_37;
    case 12:
      LOBYTE(v129) = 12;
      sub_249059A54();
      v52 = v120;
      v53 = v90;
      sub_24907718C();
      if (v53)
      {
        (*(v128 + 8))(v23, v20);
        swift_unknownObjectRelease();
        v54 = v132;
        return __swift_destroy_boxed_opaque_existential_1Tm(v54);
      }

      sub_249059F94();
      v80 = v112;
      sub_2490771EC();
      v81 = v128;
      (*(v115 + 8))(v52, v80);
      (*(v81 + 8))(v23, v20);
      swift_unknownObjectRelease();
      v37 = 0;
      v38 = 0;
      v40 = v129;
      v39 = 9;
      v84 = v132;
      goto LABEL_38;
    default:
      LOBYTE(v129) = 0;
      sub_249059F40();
      v34 = v88;
      v35 = v90;
      sub_24907718C();
      if (v35)
      {
LABEL_31:
        (*(v128 + 8))(v23, v20);
        goto LABEL_32;
      }

      type metadata accessor for DTTimer(0);
      sub_24905A090(&qword_27EECF298, type metadata accessor for DTTimer, &protocol conformance descriptor for DTTimer);
      v36 = v87;
      sub_2490771EC();
      (*(v91 + 8))(v34, v36);
      (*(v128 + 8))(v23, v20);
      swift_unknownObjectRelease();
      v37 = 0;
      v38 = 0;
      v39 = 0;
      v40 = v129;
LABEL_37:
      v84 = v132;
LABEL_38:
      *v31 = v40;
      *(v31 + 8) = v37;
      *(v31 + 16) = v38;
      *(v31 + 24) = v39;
      result = __swift_destroy_boxed_opaque_existential_1Tm(v84);
      break;
  }

  return result;
}

uint64_t DTRequestContext.endpoint.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t DTRequestContext.targetIDs.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

__n128 DTRequestContext.init(endpoint:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  a2[1].n128_u64[0] = 0;
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t DTRequestContext.description.getter()
{
  v1 = v0[1];
  v2 = v0[2];
  if (v1)
  {
    v3 = *v0;
  }

  else
  {
    v3 = 0x6C61636F6CLL;
  }

  if (v1)
  {
    v4 = v0[1];
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x24C1EFD00](v3, v4);

  result = 0x746E696F70646E65;
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF2A0, &qword_249078688);
    sub_24905ABF8(&qword_27EECF2A8, &qword_27EECF2A0, &qword_249078688, MEMORY[0x277D83958]);
    v6 = sub_249076DFC();
    MEMORY[0x24C1EFD00](v6);

    MEMORY[0x24C1EFD00](93, 0xE100000000000000);
    MEMORY[0x24C1EFD00](0x746567726174202CLL, 0xEB000000005B3D73);

    return 0x746E696F70646E65;
  }

  return result;
}

uint64_t sub_249054C44()
{
  if (*v0)
  {
    return 0x4449746567726174;
  }

  else
  {
    return 0x746E696F70646E65;
  }
}

uint64_t sub_249054C84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746E696F70646E65 && a2 == 0xE800000000000000;
  if (v6 || (sub_2490772BC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4449746567726174 && a2 == 0xE900000000000073)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2490772BC();

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

uint64_t sub_249054D68(uint64_t a1)
{
  v2 = sub_24905A120();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_249054DA4(uint64_t a1)
{
  v2 = sub_24905A120();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DTRequestContext.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF2B0, &qword_249078690);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - v5;
  v7 = *v1;
  v8 = v1[1];
  v11[0] = v1[2];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24905A120();

  sub_24907736C();
  v12 = v7;
  v13 = v8;
  v14 = 0;
  sub_24905A174();
  v9 = v11[1];
  sub_24907725C();

  if (!v9)
  {
    v12 = v11[0];
    v14 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF2A0, &qword_249078688);
    sub_24905A21C(&qword_27EECF2C0, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    sub_24907722C();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t DTRequestContext.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF2C8, &qword_249078698);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24905A120();
  sub_24907735C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v14 = 0;
  sub_24905A1C8();
  sub_2490771EC();
  v10 = v13[0];
  v9 = v13[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF2A0, &qword_249078688);
  v14 = 1;
  sub_24905A21C(&qword_27EECF2D8, MEMORY[0x277D83808], MEMORY[0x277D83978]);
  sub_2490771BC();
  (*(v6 + 8))(v8, v5);
  v11 = v13[0];
  *a2 = v10;
  a2[1] = v9;
  a2[2] = v11;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t DTDiagnosticsRequest.description.getter()
{
  v1 = *v0;
  v2 = v1 >> 6;
  if (v1 >> 6 > 1)
  {
    if (v2 != 2)
    {
      if (v1 == 192)
      {
        return 0x5574694B656D6F68;
      }

      else
      {
        return 2003789939;
      }
    }

    sub_2490770AC();

    v3 = 0xD000000000000013;
  }

  else if (v2)
  {
    sub_2490770AC();

    v3 = 0xD000000000000016;
  }

  else
  {
    sub_2490770AC();

    v3 = 0xD000000000000014;
  }

  v7 = v3;
  if (v1)
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (v1)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x24C1EFD00](v4, v5);

  return v7;
}

uint64_t sub_2490553B0()
{
  v1 = *v0;
  v2 = 0x4474694B656D6F68;
  v3 = 0x666E6F43636E7973;
  v4 = 0x7267694D636E7973;
  if (v1 != 3)
  {
    v4 = 2003789939;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x5574694B656D6F68;
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

uint64_t sub_24905546C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24905E43C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2490554A0(uint64_t a1)
{
  v2 = sub_24905A288();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2490554DC(uint64_t a1)
{
  v2 = sub_24905A288();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_249055518(uint64_t a1)
{
  v2 = sub_24905A42C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_249055554(uint64_t a1)
{
  v2 = sub_24905A42C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_249055590(uint64_t a1)
{
  v2 = sub_24905A3D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2490555CC(uint64_t a1)
{
  v2 = sub_24905A3D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_249055608(uint64_t a1)
{
  v2 = sub_24905A2DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_249055644(uint64_t a1)
{
  v2 = sub_24905A2DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_249055680(uint64_t a1)
{
  v2 = sub_24905A384();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2490556BC(uint64_t a1)
{
  v2 = sub_24905A384();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2490556F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2490772BC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_249055778(uint64_t a1)
{
  v2 = sub_24905A330();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2490557B4(uint64_t a1)
{
  v2 = sub_24905A330();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DTDiagnosticsRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF2E0, &qword_2490786A0);
  v37 = *(v3 - 8);
  v38 = v3;
  MEMORY[0x28223BE20](v3);
  v36 = &v32 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF2E8, &qword_2490786A8);
  v44 = *(v5 - 8);
  v45 = v5;
  MEMORY[0x28223BE20](v5);
  v43 = &v32 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF2F0, &qword_2490786B0);
  v41 = *(v7 - 8);
  v42 = v7;
  MEMORY[0x28223BE20](v7);
  v40 = &v32 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF2F8, &qword_2490786B8);
  v34 = *(v9 - 8);
  v35 = v9;
  MEMORY[0x28223BE20](v9);
  v33 = &v32 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF300, &qword_2490786C0);
  v39 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v32 - v12;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF308, &qword_2490786C8);
  v14 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v16 = &v32 - v15;
  v17 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24905A288();
  sub_24907736C();
  v18 = v17 >> 6;
  if (v17 >> 6 > 1)
  {
    if (v18 == 2)
    {
      v50 = 3;
      sub_24905A330();
      v21 = v43;
      v22 = v46;
      sub_24907721C();
      v23 = v45;
      sub_24907724C();
      (*(v44 + 8))(v21, v23);
      return (*(v14 + 8))(v16, v22);
    }

    else
    {
      v27 = (v14 + 8);
      if (v17 == 192)
      {
        v48 = 1;
        sub_24905A3D8();
        v28 = v33;
        v29 = v46;
        sub_24907721C();
        v31 = v34;
        v30 = v35;
      }

      else
      {
        v51 = 4;
        sub_24905A2DC();
        v28 = v36;
        v29 = v46;
        sub_24907721C();
        v31 = v37;
        v30 = v38;
      }

      (*(v31 + 8))(v28, v30);
      return (*v27)(v16, v29);
    }
  }

  else if (v18)
  {
    v49 = 2;
    sub_24905A384();
    v24 = v40;
    v25 = v46;
    sub_24907721C();
    v26 = v42;
    sub_24907724C();
    (*(v41 + 8))(v24, v26);
    return (*(v14 + 8))(v16, v25);
  }

  else
  {
    v47 = 0;
    sub_24905A42C();
    v19 = v46;
    sub_24907721C();
    sub_24907724C();
    (*(v39 + 8))(v13, v11);
    return (*(v14 + 8))(v16, v19);
  }
}

uint64_t DTDiagnosticsRequest.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v72 = a2;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF310, &qword_2490786D0);
  v64 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v71 = v56 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF318, &qword_2490786D8);
  v5 = *(v4 - 8);
  v66 = v4;
  v67 = v5;
  MEMORY[0x28223BE20](v4);
  v70 = v56 - v6;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF320, &qword_2490786E0);
  v65 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v69 = v56 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF328, &qword_2490786E8);
  v62 = *(v8 - 8);
  v63 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v56 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF330, &qword_2490786F0);
  v60 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = v56 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF338, &qword_2490786F8);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v56 - v16;
  v18 = a1[3];
  v74 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_24905A288();
  v19 = v73;
  sub_24907735C();
  if (!v19)
  {
    v20 = v13;
    v57 = v11;
    v58 = 0;
    v22 = v69;
    v21 = v70;
    v73 = v15;
    v24 = v71;
    v23 = v72;
    v59 = v17;
    v25 = sub_24907720C();
    v26 = *(v25 + 16);
    if (!v26 || ((v27 = *(v25 + 32), v26 == 1) ? (v28 = v27 == 5) : (v28 = 1), v28))
    {
      v29 = v14;
      v30 = sub_2490770DC();
      swift_allocError();
      v32 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF170, &unk_249078580);
      *v32 = &type metadata for DTDiagnosticsRequest;
      v33 = v59;
      sub_24907719C();
      sub_2490770CC();
      (*(*(v30 - 8) + 104))(v32, *MEMORY[0x277D84160], v30);
      swift_willThrow();
      (*(v73 + 8))(v33, v29);
LABEL_26:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1Tm(v74);
    }

    v56[1] = v25;
    if (v27 <= 1)
    {
      if (v27)
      {
        v76 = 1;
        sub_24905A3D8();
        v44 = v58;
        v45 = v59;
        sub_24907718C();
        if (!v44)
        {
          (*(v62 + 8))(v10, v63);
          (*(v73 + 8))(v45, v14);
          swift_unknownObjectRelease();
          *v23 = -64;
          return __swift_destroy_boxed_opaque_existential_1Tm(v74);
        }

        (*(v73 + 8))(v45, v14);
        goto LABEL_26;
      }

      v75 = 0;
      sub_24905A42C();
      v37 = v58;
      v38 = v59;
      sub_24907718C();
      if (v37)
      {
        (*(v73 + 8))(v38, v14);
        goto LABEL_26;
      }

      v51 = v57;
      v52 = v14;
      v53 = sub_2490771DC();
      (*(v60 + 8))(v20, v51);
      (*(v73 + 8))(v38, v52);
      swift_unknownObjectRelease();
      *v23 = v53 & 1;
    }

    else
    {
      v34 = v73;
      if (v27 == 2)
      {
        v39 = v73;
        v77 = 2;
        sub_24905A384();
        v40 = v58;
        v41 = v59;
        sub_24907718C();
        if (v40)
        {
          (*(v39 + 8))(v41, v14);
          goto LABEL_26;
        }

        v46 = v61;
        v54 = sub_2490771DC();
        (*(v65 + 8))(v22, v46);
        (*(v39 + 8))(v41, v14);
        swift_unknownObjectRelease();
        *v23 = v54 & 1 | 0x40;
      }

      else
      {
        v35 = v59;
        if (v27 != 3)
        {
          v42 = v73;
          v79 = 4;
          sub_24905A2DC();
          v43 = v58;
          sub_24907718C();
          if (!v43)
          {
            (*(v64 + 8))(v24, v68);
            (*(v42 + 8))(v35, v14);
            swift_unknownObjectRelease();
            *v23 = -63;
            return __swift_destroy_boxed_opaque_existential_1Tm(v74);
          }

          (*(v42 + 8))(v35, v14);
          goto LABEL_26;
        }

        v78 = 3;
        sub_24905A330();
        v36 = v58;
        sub_24907718C();
        if (v36)
        {
          (*(v34 + 8))(v35, v14);
          goto LABEL_26;
        }

        v47 = v34;
        v48 = v14;
        v49 = v66;
        v55 = sub_2490771DC();
        (*(v67 + 8))(v21, v49);
        (*(v47 + 8))(v35, v48);
        swift_unknownObjectRelease();
        *v23 = v55 & 1 | 0x80;
      }
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v74);
}

uint64_t DTMonitorContext.description.getter()
{
  v0 = sub_24907727C();
  MEMORY[0x24C1EFD00](v0);

  return 0x4449746E65696C63;
}

uint64_t sub_2490567B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4449746E65696C63 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2490772BC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_249056840(uint64_t a1)
{
  v2 = sub_24905A480();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24905687C(uint64_t a1)
{
  v2 = sub_24905A480();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DTMonitorContext.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF340, &qword_249078700);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24905A480();
  sub_24907736C();
  sub_24907726C();
  return (*(v3 + 8))(v5, v2);
}

uint64_t DTMonitorContext.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF348, &qword_249078708);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24905A480();
  sub_24907735C();
  if (!v2)
  {
    v9 = sub_2490771FC();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_249056B5C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF340, &qword_249078700);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24905A480();
  sub_24907736C();
  sub_24907726C();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_249056C94()
{
  v0 = sub_24907727C();
  MEMORY[0x24C1EFD00](v0);

  return 0x4449746E65696C63;
}

uint64_t DTMonitorEvent.init(clientID:eventType:timers:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t DTMonitorEvent.description.getter()
{
  v1 = *(v0 + 16);
  sub_2490770AC();

  v2 = sub_24907727C();
  MEMORY[0x24C1EFD00](v2);

  MEMORY[0x24C1EFD00](0x3D65707974202CLL, 0xE700000000000000);
  type metadata accessor for DTTimerClientEventType(0);
  sub_24905A090(&qword_27EECF350, type metadata accessor for DTTimerClientEventType, &protocol conformance descriptor for DTTimerClientEventType);
  v3 = sub_24907727C();
  MEMORY[0x24C1EFD00](v3);

  MEMORY[0x24C1EFD00](0x7372656D6974202CLL, 0xE90000000000003DLL);
  if (v1)
  {
    if (v1 >> 62)
    {
      sub_24907711C();
    }

    sub_24905A4E8();
    v4 = sub_24907701C();
    v6 = v5;
  }

  else
  {
    v6 = 0xE300000000000000;
    v4 = 7104878;
  }

  MEMORY[0x24C1EFD00](v4, v6);

  return 0x4449746E65696C63;
}

uint64_t sub_249056EDC()
{
  v1 = 0x707954746E657665;
  if (*v0 != 1)
  {
    v1 = 0x7372656D6974;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4449746E65696C63;
  }
}

uint64_t sub_249056F38@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24905E604(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_249056F6C(uint64_t a1)
{
  v2 = sub_24905A53C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_249056FA8(uint64_t a1)
{
  v2 = sub_24905A53C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DTMonitorEvent.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF360, &qword_249078710);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  v8 = *(v1 + 8);
  v12 = *(v1 + 16);
  v13 = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24905A53C();
  sub_24907736C();
  LOBYTE(v15) = 0;
  sub_24907726C();
  if (!v2)
  {
    v9 = v12;
    v15 = v13;
    v14 = 1;
    type metadata accessor for DTTimerClientEventType(0);
    sub_24905A090(&qword_27EECF368, type metadata accessor for DTTimerClientEventType, &protocol conformance descriptor for DTTimerClientEventType);
    sub_24907725C();
    v15 = v9;
    v14 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF370, &qword_249078718);
    sub_24905A590(&qword_27EECF378, &qword_27EECF208, &protocol conformance descriptor for DTTimer, MEMORY[0x277D83948]);
    sub_24907722C();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t DTMonitorEvent.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF380, &qword_249078720);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24905A53C();
  sub_24907735C();
  if (!v2)
  {
    LOBYTE(v15) = 0;
    v9 = sub_2490771FC();
    type metadata accessor for DTTimerClientEventType(0);
    v14 = 1;
    sub_24905A090(&qword_27EECF388, type metadata accessor for DTTimerClientEventType, &protocol conformance descriptor for DTTimerClientEventType);
    sub_2490771EC();
    v11 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF370, &qword_249078718);
    v14 = 2;
    sub_24905A590(&qword_27EECF390, &qword_27EECF298, &protocol conformance descriptor for DTTimer, MEMORY[0x277D83978]);
    sub_2490771BC();
    (*(v6 + 8))(v8, v5);
    v12 = v15;
    *a2 = v9;
    a2[1] = v11;
    a2[2] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_2490574FC(uint64_t a1)
{
  v2 = sub_24905A62C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_249057538(uint64_t a1)
{
  v2 = sub_24905A62C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DTAckResponse.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF398, &qword_249078728);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24905A62C();
  sub_24907736C();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_2490576D8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF398, &qword_249078728);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24905A62C();
  sub_24907736C();
  return (*(v3 + 8))(v5, v2);
}

uint64_t DTEchoResponse.message.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_24905785C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2490772BC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2490578E4(uint64_t a1)
{
  v2 = sub_24905A680();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_249057920(uint64_t a1)
{
  v2 = sub_24905A680();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_249057A98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6C46737574617473 && a2 == 0xEB00000000736761)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2490772BC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_249057B24(uint64_t a1)
{
  v2 = sub_24905A6D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_249057B60(uint64_t a1)
{
  v2 = sub_24905A6D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DTFetchStatusResponse.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF3B0, &qword_249078740);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24905A6D4();
  sub_24907736C();
  v9[1] = v7;
  type metadata accessor for DTTimerClientStatusFlags(0);
  sub_24905A090(&qword_27EECF3B8, type metadata accessor for DTTimerClientStatusFlags, &protocol conformance descriptor for DTTimerClientStatusFlags);
  sub_24907725C();
  return (*(v4 + 8))(v6, v3);
}

uint64_t DTFetchStatusResponse.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF3C0, &qword_249078748);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24905A6D4();
  sub_24907735C();
  if (!v2)
  {
    type metadata accessor for DTTimerClientStatusFlags(0);
    sub_24905A090(&qword_27EECF3C8, type metadata accessor for DTTimerClientStatusFlags, &protocol conformance descriptor for DTTimerClientStatusFlags);
    sub_2490771EC();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_249057F98(uint64_t a1)
{
  v2 = sub_24905A788();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_249057FD4(uint64_t a1)
{
  v2 = sub_24905A788();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_249058108@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7372656D6974 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2490772BC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24905818C(uint64_t a1)
{
  v2 = sub_24905A7DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2490581C8(uint64_t a1)
{
  v2 = sub_24905A7DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_249058248(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v13[0] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v13 - v9;
  v11 = *v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  (v13[0])();

  sub_24907736C();
  v13[3] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF370, &qword_249078718);
  sub_24905A590(&qword_27EECF378, &qword_27EECF208, &protocol conformance descriptor for DTTimer, MEMORY[0x277D83948]);
  sub_24907725C();

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_24905843C@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(void)@<X3>, void *a6@<X8>)
{
  v14 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v15 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v14 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_24907735C();
  if (!v6)
  {
    v12 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF370, &qword_249078718);
    sub_24905A590(&qword_27EECF390, &qword_27EECF298, &protocol conformance descriptor for DTTimer, MEMORY[0x277D83978]);
    sub_2490771EC();
    (*(v15 + 8))(v11, v9);
    *v12 = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_249058660()
{
  sub_24907730C();
  MEMORY[0x24C1F01A0](0);
  return sub_24907732C();
}

uint64_t sub_2490586A4(uint64_t a1)
{
  sub_24907730C();
  MEMORY[0x24C1F01A0](0);
  return sub_24907732C();
}

uint64_t sub_2490586F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x74757074756FLL && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2490772BC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24905877C(uint64_t a1)
{
  v2 = sub_24905A830();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2490587B8(uint64_t a1)
{
  v2 = sub_24905A830();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_249058838(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void), uint64_t a5)
{
  v13 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v12 - v9;
  v12 = *v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v13();
  sub_24907736C();
  sub_24907723C();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_2490589C4@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t *a6@<X8>)
{
  v20 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v19 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v18 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_24907735C();
  if (!v6)
  {
    v12 = v19;
    v13 = v20;
    v14 = sub_2490771CC();
    v16 = v15;
    (*(v12 + 8))(v11, v9);
    *v13 = v14;
    v13[1] = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_249058BA0(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(void), uint64_t a7)
{
  v15 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v14 - v11;
  v14 = *v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15();
  sub_24907736C();
  sub_24907723C();
  return (*(v10 + 8))(v12, v9);
}

uint64_t (*CUEnvironmentValues.cloudKitAutomaticallySync.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  *(a1 + 8) = sub_24905A884();
  sub_249076C8C();
  *(a1 + 16) = *(a1 + 17);
  return sub_249058DE0;
}

uint64_t CUEnvironmentValues.cloudKitContainer.getter()
{
  sub_24905A8D8();
  sub_249076C8C();
  return v1;
}

uint64_t sub_249058E30@<X0>(void *a1@<X8>)
{
  sub_24905A8D8();
  result = sub_249076C8C();
  *a1 = v3;
  return result;
}

uint64_t sub_249058E80(id *a1)
{
  v1 = *a1;
  sub_24905A8D8();
  v2 = v1;
  return sub_249076C9C();
}

void (*CUEnvironmentValues.cloudKitContainer.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_24905A8D8();
  sub_249076C8C();
  return sub_249058F78;
}

void sub_249058F78(uint64_t a1, char a2)
{
  v2 = *a1;
  *(a1 + 8) = *a1;
  if (a2)
  {
    v4 = v2;
    sub_249076C9C();
    v5 = *a1;
  }

  else
  {
    sub_249076C9C();
  }
}

void sub_24905900C()
{
  v0 = MobileGestalt_get_current_device();
  if (v0)
  {
    v1 = v0;
    deviceClassNumber = MobileGestalt_get_deviceClassNumber();

    byte_27EECFC98 = deviceClassNumber == 7;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_24905905C@<X0>(_BYTE *a1@<X8>)
{
  if (qword_27EECFC90 != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = byte_27EECFC98;
  return result;
}

uint64_t sub_2490590E0(uint64_t (*a1)(void), uint64_t a2)
{
  a1();
  sub_249076C8C();
  return v3;
}

uint64_t sub_249059148@<X0>(uint64_t (*a1)(void)@<X3>, _BYTE *a3@<X8>)
{
  a1();
  result = sub_249076C8C();
  *a3 = v5;
  return result;
}

uint64_t (*CUEnvironmentValues.cloudSyncEnabled.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  *(a1 + 8) = sub_24905A92C();
  sub_249076C8C();
  *(a1 + 16) = *(a1 + 17);
  return sub_2490592E4;
}

uint64_t sub_249059320()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF400, &qword_249078780);
  __swift_allocate_value_buffer(v0, qword_27EECFCA8);
  v1 = __swift_project_value_buffer(v0, qword_27EECFCA8);
  v2 = sub_249076B5C();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 1, v2);
}

uint64_t sub_2490593C0@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EECFCA0 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF400, &qword_249078780);
  v3 = __swift_project_value_buffer(v2, qword_27EECFCA8);

  return sub_24905A9D4(v3, a1);
}

uint64_t CUEnvironmentValues.databaseURL.getter()
{
  sub_24905A980();

  return sub_249076C8C();
}

uint64_t sub_2490594CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF400, &qword_249078780);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - v6;
  sub_24905A9D4(a1, &v9 - v6);
  sub_24905A9D4(v7, v5);
  sub_24905A980();
  sub_249076C9C();
  return sub_24905AA44(v7);
}

uint64_t CUEnvironmentValues.databaseURL.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF400, &qword_249078780);
  MEMORY[0x28223BE20](v2 - 8);
  sub_24905A9D4(a1, &v5 - v3);
  sub_24905A980();
  sub_249076C9C();
  return sub_24905AA44(a1);
}

void (*CUEnvironmentValues.databaseURL.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF400, &qword_249078780) - 8) + 64);
  if (v3)
  {
    v5[1] = swift_coroFrameAlloc();
    v5[2] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[1] = malloc(v6);
    v5[2] = malloc(v6);
    v7 = malloc(v6);
  }

  v5[3] = v7;
  v5[4] = sub_24905A980();
  sub_249076C8C();
  return sub_249059768;
}

void sub_249059768(uint64_t **a1, char a2)
{
  v3 = *a1;
  sub_24905A9D4((*a1)[3], (*a1)[2]);
  v4 = v3[3];
  v5 = v3[1];
  v6 = v3[2];
  if (a2)
  {
    sub_24905A9D4(v3[2], v3[1]);
    sub_249076C9C();
    sub_24905AA44(v6);
  }

  else
  {
    sub_249076C9C();
  }

  sub_24905AA44(v4);
  free(v4);
  free(v6);
  free(v5);

  free(v3);
}

uint64_t _s17DistributedTimers10DTEndpointO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (!v4)
  {
    if (!v5)
    {
      swift_bridgeObjectRelease_n();
      return 1;
    }

    return 0;
  }

  if (!v5)
  {
    return 0;
  }

  if (*a1 == *a2 && v4 == v5)
  {
    return 1;
  }

  return sub_2490772BC();
}

unint64_t sub_2490598B0()
{
  result = qword_27EECFCC0;
  if (!qword_27EECFCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EECFCC0);
  }

  return result;
}

unint64_t sub_249059904()
{
  result = qword_27EECFCC8;
  if (!qword_27EECFCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EECFCC8);
  }

  return result;
}

unint64_t sub_249059958()
{
  result = qword_27EECFCD0;
  if (!qword_27EECFCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EECFCD0);
  }

  return result;
}

unint64_t sub_2490599AC()
{
  result = qword_27EECF178;
  if (!qword_27EECF178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EECF178);
  }

  return result;
}

unint64_t sub_249059A00()
{
  result = qword_27EECFCD8;
  if (!qword_27EECFCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EECFCD8);
  }

  return result;
}

unint64_t sub_249059A54()
{
  result = qword_27EECFCE0;
  if (!qword_27EECFCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EECFCE0);
  }

  return result;
}

unint64_t sub_249059AA8()
{
  result = qword_27EECF1F0;
  if (!qword_27EECF1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EECF1F0);
  }

  return result;
}

unint64_t sub_249059AFC()
{
  result = qword_27EECFCE8;
  if (!qword_27EECFCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EECFCE8);
  }

  return result;
}

unint64_t sub_249059B50()
{
  result = qword_27EECF1F8;
  if (!qword_27EECF1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EECF1F8);
  }

  return result;
}

unint64_t sub_249059BA4()
{
  result = qword_27EECFCF0;
  if (!qword_27EECFCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EECFCF0);
  }

  return result;
}

unint64_t sub_249059BF8()
{
  result = qword_27EECFCF8;
  if (!qword_27EECFCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EECFCF8);
  }

  return result;
}

unint64_t sub_249059C4C()
{
  result = qword_27EECF200;
  if (!qword_27EECF200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EECF200);
  }

  return result;
}

unint64_t sub_249059CA0()
{
  result = qword_27EECFD00;
  if (!qword_27EECFD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EECFD00);
  }

  return result;
}

unint64_t sub_249059CF4()
{
  result = qword_27EECFD08;
  if (!qword_27EECFD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EECFD08);
  }

  return result;
}

unint64_t sub_249059D48()
{
  result = qword_27EECFD10;
  if (!qword_27EECFD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EECFD10);
  }

  return result;
}

unint64_t sub_249059D9C()
{
  result = qword_27EECFD18;
  if (!qword_27EECFD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EECFD18);
  }

  return result;
}

unint64_t sub_249059DF0()
{
  result = qword_27EECFD20;
  if (!qword_27EECFD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EECFD20);
  }

  return result;
}

unint64_t sub_249059E44()
{
  result = qword_27EECFD28;
  if (!qword_27EECFD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EECFD28);
  }

  return result;
}

unint64_t sub_249059E98()
{
  result = qword_27EECFD30;
  if (!qword_27EECFD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EECFD30);
  }

  return result;
}

unint64_t sub_249059EEC()
{
  result = qword_27EECFD38;
  if (!qword_27EECFD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EECFD38);
  }

  return result;
}

unint64_t sub_249059F40()
{
  result = qword_27EECFD40;
  if (!qword_27EECFD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EECFD40);
  }

  return result;
}

unint64_t sub_249059F94()
{
  result = qword_27EECF280;
  if (!qword_27EECF280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EECF280);
  }

  return result;
}

unint64_t sub_249059FE8()
{
  result = qword_27EECF288;
  if (!qword_27EECF288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EECF288);
  }

  return result;
}

unint64_t sub_24905A03C()
{
  result = qword_27EECF290;
  if (!qword_27EECF290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EECF290);
  }

  return result;
}

uint64_t sub_24905A090(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_24905A120()
{
  result = qword_27EECFD48;
  if (!qword_27EECFD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EECFD48);
  }

  return result;
}

unint64_t sub_24905A174()
{
  result = qword_27EECF2B8;
  if (!qword_27EECF2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EECF2B8);
  }

  return result;
}

unint64_t sub_24905A1C8()
{
  result = qword_27EECF2D0;
  if (!qword_27EECF2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EECF2D0);
  }

  return result;
}

uint64_t sub_24905A21C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EECF2A0, &qword_249078688);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24905A288()
{
  result = qword_27EECFD50;
  if (!qword_27EECFD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EECFD50);
  }

  return result;
}

unint64_t sub_24905A2DC()
{
  result = qword_27EECFD58;
  if (!qword_27EECFD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EECFD58);
  }

  return result;
}

unint64_t sub_24905A330()
{
  result = qword_27EECFD60;
  if (!qword_27EECFD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EECFD60);
  }

  return result;
}

unint64_t sub_24905A384()
{
  result = qword_27EECFD68;
  if (!qword_27EECFD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EECFD68);
  }

  return result;
}

unint64_t sub_24905A3D8()
{
  result = qword_27EECFD70;
  if (!qword_27EECFD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EECFD70);
  }

  return result;
}

unint64_t sub_24905A42C()
{
  result = qword_27EECFD78;
  if (!qword_27EECFD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EECFD78);
  }

  return result;
}

unint64_t sub_24905A480()
{
  result = qword_27EECFD80;
  if (!qword_27EECFD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EECFD80);
  }

  return result;
}

unint64_t sub_24905A4E8()
{
  result = qword_27EECF358;
  if (!qword_27EECF358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EECF358);
  }

  return result;
}

unint64_t sub_24905A53C()
{
  result = qword_27EECFD88;
  if (!qword_27EECFD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EECFD88);
  }

  return result;
}

uint64_t sub_24905A590(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EECF370, &qword_249078718);
    sub_24905A090(a2, type metadata accessor for DTTimer, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24905A62C()
{
  result = qword_27EECFD90;
  if (!qword_27EECFD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EECFD90);
  }

  return result;
}

unint64_t sub_24905A680()
{
  result = qword_27EECFD98;
  if (!qword_27EECFD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EECFD98);
  }

  return result;
}

unint64_t sub_24905A6D4()
{
  result = qword_27EECFDA0;
  if (!qword_27EECFDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EECFDA0);
  }

  return result;
}

void sub_24905A73C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_24905A788()
{
  result = qword_27EECFDA8;
  if (!qword_27EECFDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EECFDA8);
  }

  return result;
}

unint64_t sub_24905A7DC()
{
  result = qword_27EECFDB0;
  if (!qword_27EECFDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EECFDB0);
  }

  return result;
}

unint64_t sub_24905A830()
{
  result = qword_27EECFDB8;
  if (!qword_27EECFDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EECFDB8);
  }

  return result;
}

unint64_t sub_24905A884()
{
  result = qword_27EECFDC0;
  if (!qword_27EECFDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EECFDC0);
  }

  return result;
}

unint64_t sub_24905A8D8()
{
  result = qword_27EECFDC8;
  if (!qword_27EECFDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EECFDC8);
  }

  return result;
}

unint64_t sub_24905A92C()
{
  result = qword_27EECFDD0;
  if (!qword_27EECFDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EECFDD0);
  }

  return result;
}

unint64_t sub_24905A980()
{
  result = qword_27EECFDD8[0];
  if (!qword_27EECFDD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EECFDD8);
  }

  return result;
}

uint64_t sub_24905A9D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF400, &qword_249078780);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24905AA44(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF400, &qword_249078780);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24905AAB0()
{
  result = qword_27EECF408;
  if (!qword_27EECF408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EECF408);
  }

  return result;
}

unint64_t sub_24905AB08()
{
  result = qword_27EECF410;
  if (!qword_27EECF410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EECF410);
  }

  return result;
}

unint64_t sub_24905AB60()
{
  result = qword_27EECF418;
  if (!qword_27EECF418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EECF418);
  }

  return result;
}

uint64_t sub_24905ABF8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24905AC80()
{
  result = qword_27EECF430;
  if (!qword_27EECF430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EECF430);
  }

  return result;
}

unint64_t sub_24905ACD4()
{
  result = qword_27EECF700;
  if (!qword_27EECF700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EECF700);
  }

  return result;
}

unint64_t sub_24905AD28()
{
  result = qword_27EECF438;
  if (!qword_27EECF438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EECF438);
  }

  return result;
}

unint64_t sub_24905ADBC()
{
  result = qword_27EECF440;
  if (!qword_27EECF440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EECF440);
  }

  return result;
}

unint64_t sub_24905AE10()
{
  result = qword_27EECF448;
  if (!qword_27EECF448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EECF448);
  }

  return result;
}

unint64_t sub_24905AE64()
{
  result = qword_27EECF450;
  if (!qword_27EECF450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EECF450);
  }

  return result;
}

unint64_t sub_24905AEF8()
{
  result = qword_27EECF458;
  if (!qword_27EECF458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EECF458);
  }

  return result;
}

unint64_t sub_24905AF4C()
{
  result = qword_27EECF460;
  if (!qword_27EECF460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EECF460);
  }

  return result;
}

unint64_t sub_24905AFA0()
{
  result = qword_27EECF468;
  if (!qword_27EECF468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EECF468);
  }

  return result;
}

unint64_t sub_24905B034()
{
  result = qword_27EECF470;
  if (!qword_27EECF470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EECF470);
  }

  return result;
}

unint64_t sub_24905B088()
{
  result = qword_27EECF478;
  if (!qword_27EECF478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EECF478);
  }

  return result;
}

unint64_t sub_24905B0DC()
{
  result = qword_27EECF480;
  if (!qword_27EECF480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EECF480);
  }

  return result;
}

unint64_t sub_24905B170()
{
  result = qword_27EECF488;
  if (!qword_27EECF488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EECF488);
  }

  return result;
}

unint64_t sub_24905B1C4()
{
  result = qword_27EECF750;
  if (!qword_27EECF750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EECF750);
  }

  return result;
}

unint64_t sub_24905B218()
{
  result = qword_27EECF490;
  if (!qword_27EECF490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EECF490);
  }

  return result;
}

uint64_t sub_24905B2AC(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = (a4)(a1, a2, a3);
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_24905B300()
{
  result = qword_27EECF498;
  if (!qword_27EECF498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EECF498);
  }

  return result;
}

unint64_t sub_24905B354()
{
  result = qword_27EECF4A0;
  if (!qword_27EECF4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EECF4A0);
  }

  return result;
}

unint64_t sub_24905B3A8()
{
  result = qword_27EECF4A8;
  if (!qword_27EECF4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EECF4A8);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_24905B424(uint64_t a1, unsigned int a2)
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

uint64_t sub_24905B474(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_24905B4C8(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_24905B4E0(void *result, int a2)
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

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_24905B54C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF6 && *(a1 + 25))
  {
    return (*a1 + 246);
  }

  v3 = *(a1 + 24);
  if (v3 <= 0xA)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_24905B594(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF5)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 246;
    if (a3 >= 0xF6)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF6)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_24905B5DC(uint64_t result, unsigned int a2)
{
  v2 = a2 - 10;
  if (a2 >= 0xA)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 10;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

uint64_t sub_24905B608(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t sub_24905B664(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DTDiagnosticsRequest(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7D)
  {
    goto LABEL_17;
  }

  if (a2 + 131 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 131) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 131;
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

      return (*a1 | (v4 << 8)) - 131;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 131;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 6) & 0xFFFFFF83 | (4 * ((*a1 >> 1) & 0x1F))) ^ 0x7F;
  if (v6 >= 0x7C)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for DTDiagnosticsRequest(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 131 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 131) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x7D)
  {
    v4 = 0;
  }

  if (a2 > 0x7C)
  {
    v5 = ((a2 - 125) >> 8) + 1;
    *result = a2 - 125;
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
    *result = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_24905B824(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >> 6;
  v3 = (v1 & 1) + 3;
  if (v2 == 3)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

_BYTE *sub_24905B850(_BYTE *result, unsigned int a2)
{
  if (a2 < 3)
  {
    *result = *result & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 & 1 ^ 0xC1;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DTMonitorContext(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DTMonitorContext(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

uint64_t sub_24905B950(uint64_t *a1, int a2)
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

uint64_t sub_24905B998(uint64_t result, int a2, int a3)
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

uint64_t sub_24905B9E4(uint64_t a1, int a2)
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

uint64_t sub_24905BA2C(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for DTDiagnosticsRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DTDiagnosticsRequest.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DTRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DTRequest.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for DTXPCRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DTXPCRequest.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t _s17DistributedTimers21DTFetchTimersResponseV10CodingKeysOwet_0(unsigned int *a1, int a2)
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

_WORD *_s17DistributedTimers21DTFetchTimersResponseV10CodingKeysOwst_0(_WORD *result, int a2, int a3)
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

unint64_t sub_24905C164()
{
  result = qword_27EED1860[0];
  if (!qword_27EED1860[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EED1860);
  }

  return result;
}

unint64_t sub_24905C1BC()
{
  result = qword_27EED1B70[0];
  if (!qword_27EED1B70[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EED1B70);
  }

  return result;
}

unint64_t sub_24905C214()
{
  result = qword_27EED1D80[0];
  if (!qword_27EED1D80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EED1D80);
  }

  return result;
}

unint64_t sub_24905C26C()
{
  result = qword_27EED1F90[0];
  if (!qword_27EED1F90[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EED1F90);
  }

  return result;
}

unint64_t sub_24905C2C4()
{
  result = qword_27EED22A0[0];
  if (!qword_27EED22A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EED22A0);
  }

  return result;
}

unint64_t sub_24905C31C()
{
  result = qword_27EED24B0[0];
  if (!qword_27EED24B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EED24B0);
  }

  return result;
}

unint64_t sub_24905C374()
{
  result = qword_27EED26C0[0];
  if (!qword_27EED26C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EED26C0);
  }

  return result;
}

unint64_t sub_24905C3CC()
{
  result = qword_27EED2AD0[0];
  if (!qword_27EED2AD0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EED2AD0);
  }

  return result;
}

unint64_t sub_24905C424()
{
  result = qword_27EED2CE0[0];
  if (!qword_27EED2CE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EED2CE0);
  }

  return result;
}

unint64_t sub_24905C47C()
{
  result = qword_27EED2EF0[0];
  if (!qword_27EED2EF0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EED2EF0);
  }

  return result;
}

unint64_t sub_24905C4D4()
{
  result = qword_27EED3100[0];
  if (!qword_27EED3100[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EED3100);
  }

  return result;
}

unint64_t sub_24905C52C()
{
  result = qword_27EED3310[0];
  if (!qword_27EED3310[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EED3310);
  }

  return result;
}

unint64_t sub_24905C584()
{
  result = qword_27EED3520[0];
  if (!qword_27EED3520[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EED3520);
  }

  return result;
}

unint64_t sub_24905C5DC()
{
  result = qword_27EED3730[0];
  if (!qword_27EED3730[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EED3730);
  }

  return result;
}

unint64_t sub_24905C634()
{
  result = qword_27EED3A40[0];
  if (!qword_27EED3A40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EED3A40);
  }

  return result;
}

unint64_t sub_24905C68C()
{
  result = qword_27EED3C50[0];
  if (!qword_27EED3C50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EED3C50);
  }

  return result;
}

unint64_t sub_24905C6E4()
{
  result = qword_27EED3F60[0];
  if (!qword_27EED3F60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EED3F60);
  }

  return result;
}

unint64_t sub_24905C73C()
{
  result = qword_27EED4170[0];
  if (!qword_27EED4170[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EED4170);
  }

  return result;
}

unint64_t sub_24905C794()
{
  result = qword_27EED4380[0];
  if (!qword_27EED4380[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EED4380);
  }

  return result;
}

unint64_t sub_24905C7EC()
{
  result = qword_27EED4590[0];
  if (!qword_27EED4590[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EED4590);
  }

  return result;
}

unint64_t sub_24905C844()
{
  result = qword_27EED48A0[0];
  if (!qword_27EED48A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EED48A0);
  }

  return result;
}

unint64_t sub_24905C89C()
{
  result = qword_27EED4AB0[0];
  if (!qword_27EED4AB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EED4AB0);
  }

  return result;
}

unint64_t sub_24905C8F4()
{
  result = qword_27EED4CC0[0];
  if (!qword_27EED4CC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EED4CC0);
  }

  return result;
}

unint64_t sub_24905C94C()
{
  result = qword_27EED4ED0[0];
  if (!qword_27EED4ED0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EED4ED0);
  }

  return result;
}

unint64_t sub_24905C9A4()
{
  result = qword_27EED50E0[0];
  if (!qword_27EED50E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EED50E0);
  }

  return result;
}

unint64_t sub_24905C9FC()
{
  result = qword_27EED53F0;
  if (!qword_27EED53F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED53F0);
  }

  return result;
}

unint64_t sub_24905CA54()
{
  result = qword_27EED53F8[0];
  if (!qword_27EED53F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EED53F8);
  }

  return result;
}

unint64_t sub_24905CAAC()
{
  result = qword_27EED5480;
  if (!qword_27EED5480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED5480);
  }

  return result;
}

unint64_t sub_24905CB04()
{
  result = qword_27EED5488[0];
  if (!qword_27EED5488[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EED5488);
  }

  return result;
}

unint64_t sub_24905CB5C()
{
  result = qword_27EED5510;
  if (!qword_27EED5510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED5510);
  }

  return result;
}

unint64_t sub_24905CBB4()
{
  result = qword_27EED5518[0];
  if (!qword_27EED5518[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EED5518);
  }

  return result;
}

unint64_t sub_24905CC0C()
{
  result = qword_27EED55A0;
  if (!qword_27EED55A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED55A0);
  }

  return result;
}

unint64_t sub_24905CC64()
{
  result = qword_27EED55A8[0];
  if (!qword_27EED55A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EED55A8);
  }

  return result;
}

unint64_t sub_24905CCBC()
{
  result = qword_27EED5630;
  if (!qword_27EED5630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED5630);
  }

  return result;
}

unint64_t sub_24905CD14()
{
  result = qword_27EED5638[0];
  if (!qword_27EED5638[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EED5638);
  }

  return result;
}

unint64_t sub_24905CD6C()
{
  result = qword_27EED56C0;
  if (!qword_27EED56C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED56C0);
  }

  return result;
}

unint64_t sub_24905CDC4()
{
  result = qword_27EED56C8[0];
  if (!qword_27EED56C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EED56C8);
  }

  return result;
}

unint64_t sub_24905CE1C()
{
  result = qword_27EED5750;
  if (!qword_27EED5750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED5750);
  }

  return result;
}

unint64_t sub_24905CE74()
{
  result = qword_27EED5758[0];
  if (!qword_27EED5758[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EED5758);
  }

  return result;
}

unint64_t sub_24905CECC()
{
  result = qword_27EED57E0;
  if (!qword_27EED57E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED57E0);
  }

  return result;
}

unint64_t sub_24905CF24()
{
  result = qword_27EED57E8[0];
  if (!qword_27EED57E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EED57E8);
  }

  return result;
}

unint64_t sub_24905CF7C()
{
  result = qword_27EED5870;
  if (!qword_27EED5870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED5870);
  }

  return result;
}

unint64_t sub_24905CFD4()
{
  result = qword_27EED5878;
  if (!qword_27EED5878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED5878);
  }

  return result;
}

unint64_t sub_24905D02C()
{
  result = qword_27EED5900;
  if (!qword_27EED5900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED5900);
  }

  return result;
}

unint64_t sub_24905D084()
{
  result = qword_27EED5908[0];
  if (!qword_27EED5908[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EED5908);
  }

  return result;
}

unint64_t sub_24905D0DC()
{
  result = qword_27EED5990;
  if (!qword_27EED5990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED5990);
  }

  return result;
}

unint64_t sub_24905D134()
{
  result = qword_27EED5998[0];
  if (!qword_27EED5998[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EED5998);
  }

  return result;
}

unint64_t sub_24905D18C()
{
  result = qword_27EED5A20;
  if (!qword_27EED5A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED5A20);
  }

  return result;
}

unint64_t sub_24905D1E4()
{
  result = qword_27EED5A28[0];
  if (!qword_27EED5A28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EED5A28);
  }

  return result;
}

unint64_t sub_24905D23C()
{
  result = qword_27EED5AB0;
  if (!qword_27EED5AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED5AB0);
  }

  return result;
}

unint64_t sub_24905D294()
{
  result = qword_27EED5AB8[0];
  if (!qword_27EED5AB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EED5AB8);
  }

  return result;
}

unint64_t sub_24905D2EC()
{
  result = qword_27EED5B40;
  if (!qword_27EED5B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED5B40);
  }

  return result;
}

unint64_t sub_24905D344()
{
  result = qword_27EED5B48[0];
  if (!qword_27EED5B48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EED5B48);
  }

  return result;
}

unint64_t sub_24905D39C()
{
  result = qword_27EED5BD0;
  if (!qword_27EED5BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED5BD0);
  }

  return result;
}

unint64_t sub_24905D3F4()
{
  result = qword_27EED5BD8[0];
  if (!qword_27EED5BD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EED5BD8);
  }

  return result;
}

unint64_t sub_24905D44C()
{
  result = qword_27EED5C60;
  if (!qword_27EED5C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED5C60);
  }

  return result;
}

unint64_t sub_24905D4A4()
{
  result = qword_27EED5C68[0];
  if (!qword_27EED5C68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EED5C68);
  }

  return result;
}

unint64_t sub_24905D4FC()
{
  result = qword_27EED5CF0;
  if (!qword_27EED5CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED5CF0);
  }

  return result;
}

unint64_t sub_24905D554()
{
  result = qword_27EED5CF8[0];
  if (!qword_27EED5CF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EED5CF8);
  }

  return result;
}

unint64_t sub_24905D5AC()
{
  result = qword_27EED5D80;
  if (!qword_27EED5D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED5D80);
  }

  return result;
}

unint64_t sub_24905D604()
{
  result = qword_27EED5D88[0];
  if (!qword_27EED5D88[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EED5D88);
  }

  return result;
}

unint64_t sub_24905D65C()
{
  result = qword_27EED5E10;
  if (!qword_27EED5E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED5E10);
  }

  return result;
}

unint64_t sub_24905D6B4()
{
  result = qword_27EED5E18[0];
  if (!qword_27EED5E18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EED5E18);
  }

  return result;
}

unint64_t sub_24905D70C()
{
  result = qword_27EED5EA0;
  if (!qword_27EED5EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED5EA0);
  }

  return result;
}

unint64_t sub_24905D764()
{
  result = qword_27EED5EA8[0];
  if (!qword_27EED5EA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EED5EA8);
  }

  return result;
}

unint64_t sub_24905D7BC()
{
  result = qword_27EED5F30;
  if (!qword_27EED5F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED5F30);
  }

  return result;
}

unint64_t sub_24905D814()
{
  result = qword_27EED5F38[0];
  if (!qword_27EED5F38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EED5F38);
  }

  return result;
}

unint64_t sub_24905D86C()
{
  result = qword_27EED5FC0;
  if (!qword_27EED5FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED5FC0);
  }

  return result;
}

unint64_t sub_24905D8C4()
{
  result = qword_27EED5FC8[0];
  if (!qword_27EED5FC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EED5FC8);
  }

  return result;
}

unint64_t sub_24905D91C()
{
  result = qword_27EED6050;
  if (!qword_27EED6050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED6050);
  }

  return result;
}

unint64_t sub_24905D974()
{
  result = qword_27EED6058[0];
  if (!qword_27EED6058[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EED6058);
  }

  return result;
}

unint64_t sub_24905D9CC()
{
  result = qword_27EED60E0;
  if (!qword_27EED60E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED60E0);
  }

  return result;
}

unint64_t sub_24905DA24()
{
  result = qword_27EED60E8[0];
  if (!qword_27EED60E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EED60E8);
  }

  return result;
}

unint64_t sub_24905DA7C()
{
  result = qword_27EED6170;
  if (!qword_27EED6170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED6170);
  }

  return result;
}

unint64_t sub_24905DAD4()
{
  result = qword_27EED6178;
  if (!qword_27EED6178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED6178);
  }

  return result;
}

unint64_t sub_24905DB2C()
{
  result = qword_27EED6200;
  if (!qword_27EED6200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED6200);
  }

  return result;
}

unint64_t sub_24905DB84()
{
  result = qword_27EED6208[0];
  if (!qword_27EED6208[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EED6208);
  }

  return result;
}

unint64_t sub_24905DBDC()
{
  result = qword_27EED6290;
  if (!qword_27EED6290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED6290);
  }

  return result;
}

unint64_t sub_24905DC34()
{
  result = qword_27EED6298[0];
  if (!qword_27EED6298[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EED6298);
  }

  return result;
}

unint64_t sub_24905DC8C()
{
  result = qword_27EED6320;
  if (!qword_27EED6320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED6320);
  }

  return result;
}

unint64_t sub_24905DCE4()
{
  result = qword_27EED6328[0];
  if (!qword_27EED6328[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EED6328);
  }

  return result;
}

unint64_t sub_24905DD3C()
{
  result = qword_27EED63B0;
  if (!qword_27EED63B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED63B0);
  }

  return result;
}

unint64_t sub_24905DD94()
{
  result = qword_27EED63B8[0];
  if (!qword_27EED63B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EED63B8);
  }

  return result;
}

unint64_t sub_24905DDEC()
{
  result = qword_27EED6440;
  if (!qword_27EED6440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED6440);
  }

  return result;
}

unint64_t sub_24905DE44()
{
  result = qword_27EED6448[0];
  if (!qword_27EED6448[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EED6448);
  }

  return result;
}

unint64_t sub_24905DE9C()
{
  result = qword_27EED64D0;
  if (!qword_27EED64D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED64D0);
  }

  return result;
}

unint64_t sub_24905DEF4()
{
  result = qword_27EED64D8[0];
  if (!qword_27EED64D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EED64D8);
  }

  return result;
}

unint64_t sub_24905DF4C()
{
  result = qword_27EED6560;
  if (!qword_27EED6560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED6560);
  }

  return result;
}

unint64_t sub_24905DFA4()
{
  result = qword_27EED6568[0];
  if (!qword_27EED6568[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EED6568);
  }

  return result;
}

uint64_t sub_24905DFF8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72656D6954646461 && a2 == 0xE800000000000000;
  if (v4 || (sub_2490772BC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6954657461647075 && a2 == 0xEB0000000072656DLL || (sub_2490772BC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x695465766F6D6572 && a2 == 0xEB0000000072656DLL || (sub_2490772BC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6954657A6F6F6E73 && a2 == 0xEB0000000072656DLL || (sub_2490772BC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x547373696D736964 && a2 == 0xEC00000072656D69 || (sub_2490772BC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6174536863746566 && a2 == 0xEB00000000737574 || (sub_2490772BC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6D69546863746566 && a2 == 0xEB00000000737265 || (sub_2490772BC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 1869112165 && a2 == 0xE400000000000000 || (sub_2490772BC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x53726F74696E6F6DLL && a2 == 0xEC00000074726174 || (sub_2490772BC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x53726F74696E6F6DLL && a2 == 0xEB00000000706F74 || (sub_2490772BC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024907C3A0 == a2 || (sub_2490772BC() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x45726F74696E6F6DLL && a2 == 0xEC000000746E6576 || (sub_2490772BC() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x74736F6E67616964 && a2 == 0xEB00000000736369)
  {

    return 12;
  }

  else
  {
    v6 = sub_2490772BC();

    if (v6)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}

uint64_t sub_24905E43C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4474694B656D6F68 && a2 == 0xEC00000072656665;
  if (v4 || (sub_2490772BC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5574694B656D6F68 && a2 == 0xED00006574616470 || (sub_2490772BC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x666E6F43636E7973 && a2 == 0xED00006572756769 || (sub_2490772BC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7267694D636E7973 && a2 == 0xEB00000000657461 || (sub_2490772BC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 2003789939 && a2 == 0xE400000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_2490772BC();

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

uint64_t sub_24905E604(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449746E65696C63 && a2 == 0xE800000000000000;
  if (v4 || (sub_2490772BC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x707954746E657665 && a2 == 0xE900000000000065 || (sub_2490772BC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7372656D6974 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_2490772BC();

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

uint64_t DTTimer.description.getter()
{
  v1 = [v0 mtAlarm];
  if (!v1)
  {
    v5 = [v0 mtAlarmID];
    if (v5)
    {
      v6 = v5;
      v7 = sub_249076E1C();
      v9 = v8;

      v10 = 0x2C6D72616C61;
    }

    else
    {
      v12 = [v0 mtTimer];
      if (v12)
      {
        v2 = v12;
        v3 = MTTimer.summary.getter();
        goto LABEL_3;
      }

      v13 = [v0 mtTimerID];
      if (!v13)
      {
        return 63;
      }

      v14 = v13;
      v7 = sub_249076E1C();
      v9 = v15;

      v10 = 0x2C72656D6974;
    }

    v16 = v10 & 0xFFFFFFFFFFFFLL | 0x6920000000000000;
    MEMORY[0x24C1EFD00](v7, v9);

    return v16;
  }

  v2 = v1;
  v3 = MTAlarm.summary.getter();
LABEL_3:
  v4 = v3;

  return v4;
}

uint64_t MTAlarm.summary.getter()
{
  v1 = v0;
  v2 = sub_249076CBC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_249076BFC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = 0;
  v38 = 0xE000000000000000;
  sub_2490770AC();

  v37 = 0x69202C6D72616C61;
  v38 = 0xEA00000000003D64;
  v10 = [v0 alarmID];
  sub_249076BEC();

  sub_24905F6F4();
  v11 = sub_24907727C();
  MEMORY[0x24C1EFD00](v11);

  (*(v7 + 8))(v9, v6);
  MEMORY[0x24C1EFD00](0x3D72756F68202CLL, 0xE700000000000000);
  v35 = [v1 hour];
  v12 = sub_24907727C();
  MEMORY[0x24C1EFD00](v12);

  MEMORY[0x24C1EFD00](0x6574756E696D202CLL, 0xE90000000000003DLL);
  v35 = [v1 minute];
  v13 = sub_24907727C();
  MEMORY[0x24C1EFD00](v13);

  v35 = 0x656C62616E65202CLL;
  v36 = 0xEA00000000003D64;
  v14 = [v1 isEnabled];
  v15 = v14 == 0;
  if (v14)
  {
    v16 = 1702195828;
  }

  else
  {
    v16 = 0x65736C6166;
  }

  if (v15)
  {
    v17 = 0xE500000000000000;
  }

  else
  {
    v17 = 0xE400000000000000;
  }

  MEMORY[0x24C1EFD00](v16, v17);

  MEMORY[0x24C1EFD00](v35, v36);

  if ([v1 repeatSchedule])
  {
    MEMORY[0x24C1EFD00](0x746165706572202CLL, 0xEB000000005B3D73);
    sub_249076CAC();
    if ([v1 repeatSchedule])
    {
      sub_249076E3C();
    }

    if (([v1 repeatSchedule] & 2) != 0)
    {
      sub_249076E3C();
    }

    if (([v1 repeatSchedule] & 4) != 0)
    {
      sub_249076E3C();
    }

    if (([v1 repeatSchedule] & 8) != 0)
    {
      sub_249076E3C();
    }

    if (([v1 repeatSchedule] & 0x10) != 0)
    {
      sub_249076E3C();
    }

    if (([v1 repeatSchedule] & 0x20) != 0)
    {
      sub_249076E3C();
    }

    if (([v1 repeatSchedule] & 0x40) != 0)
    {
      sub_249076E3C();
    }

    MEMORY[0x24C1EFD00](93, 0xE100000000000000);
    (*(v3 + 8))(v5, v2);
  }

  v18 = [v1 title];
  if (v18)
  {
    v19 = v18;
    v20 = sub_249076E1C();
    v22 = v21;

    v35 = 0x3D656C746974202CLL;
    v36 = 0xE900000000000022;
    MEMORY[0x24C1EFD00](v20, v22);

    MEMORY[0x24C1EFD00](34, 0xE100000000000000);
    MEMORY[0x24C1EFD00](v35, v36);
  }

  v23 = MTAlarm.targetAccessory.getter();
  if (v24)
  {
    v35 = 0x746567726174202CLL;
    v36 = 0xE90000000000003DLL;
    MEMORY[0x24C1EFD00](v23);

    MEMORY[0x24C1EFD00](v35, v36);
  }

  v25 = [v1 sound];
  v26 = [v25 soundType];

  if (v26 == 2)
  {
    v35 = 0;
    v36 = 0xE000000000000000;
    sub_2490770AC();
    MEMORY[0x24C1EFD00](0x4449656E6F74202CLL, 0xE90000000000003DLL);
    v27 = [v1 sound];
    v28 = [v27 toneIdentifier];

    if (v28)
    {
      sub_249076E1C();

      v29 = sub_249076E6C();
    }

    else
    {
      v29 = 0;
    }

    v33 = v29;
    v34 = v28 == 0;
    sub_24907729C();
    MEMORY[0x24C1EFD00](0x202C736574796220, 0xEF3D656D756C6F76);
    v30 = [v1 sound];
    v31 = [v30 soundVolume];

    v33 = v31;
    sub_249063FF0(0, &qword_27EECF4E8, 0x277CCABB0);
    sub_249062E58();
    sub_24907729C();

    MEMORY[0x24C1EFD00](v35, v36);
  }

  return v37;
}

id MTTimer.summary.getter()
{
  v1 = v0;
  v2 = sub_24907728C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_249076BFC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = 0x69202C72656D6974;
  v36 = 0xEA00000000003D64;
  v10 = [v0 timerID];
  sub_249076BEC();

  sub_24905F6F4();
  v11 = sub_24907727C();
  MEMORY[0x24C1EFD00](v11);
  v12 = v1;

  (*(v7 + 8))(v9, v6);
  v33 = 0;
  v34 = 0xE000000000000000;
  MEMORY[0x24C1EFD00](0x697461727564202CLL, 0xEB000000003D6E6FLL);
  result = [v1 duration];
  if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  v15 = fabs(v14);
  if (v15 >= 1.84467441e19)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v32 = v15;
  v16 = *MEMORY[0x277D02A60];
  v17 = *(v3 + 104);
  v17(v5, v16, v2);
  sub_249062EC0();
  sub_2490772AC();
  v18 = *(v3 + 8);
  v30[1] = v3 + 8;
  v31 = v2;
  v18(v5, v2);
  MEMORY[0x24C1EFD00](v33, v34);

  v33 = 0;
  v34 = 0xE000000000000000;
  MEMORY[0x24C1EFD00](0x6E69616D6572202CLL, 0xE90000000000003DLL);
  result = [v12 remainingTime];
  if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v20 = fabs(v19);
  if (v20 >= 1.84467441e19)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v32 = v20;
  v21 = v31;
  v17(v5, v16, v31);
  sub_2490772AC();
  v18(v5, v21);
  MEMORY[0x24C1EFD00](v33, v34);

  v22 = [v12 title];
  if (v22)
  {
    v23 = v22;
    v24 = sub_249076E1C();
    v26 = v25;

    v33 = 0x3D656C746974202CLL;
    v34 = 0xE900000000000022;
    MEMORY[0x24C1EFD00](v24, v26);

    MEMORY[0x24C1EFD00](34, 0xE100000000000000);
    MEMORY[0x24C1EFD00](v33, v34);
  }

  v33 = 0x3D6574617473202CLL;
  v34 = 0xE800000000000000;
  v27 = MTTimerState.summary.getter([v12 state]);
  MEMORY[0x24C1EFD00](v27);

  MEMORY[0x24C1EFD00](v33, v34);

  v28 = MTTimer.targetAccessory.getter();
  if (v29)
  {
    v33 = 0x746567726174202CLL;
    v34 = 0xE90000000000003DLL;
    MEMORY[0x24C1EFD00](v28);

    MEMORY[0x24C1EFD00](v33, v34);
  }

  return v35;
}

unint64_t sub_24905F6F4()
{
  result = qword_27EECF4E0;
  if (!qword_27EECF4E0)
  {
    sub_249076BFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EECF4E0);
  }

  return result;
}

id sub_24905F764(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_249076E0C();

  return v5;
}

uint64_t sub_24905F7D4()
{
  v1 = [v0 mtAlarm];
  if (!v1)
  {
    v6 = [v0 mtAlarmID];
    if (!v6)
    {
      v8 = [v0 mtTimer];
      if (v8)
      {
        v2 = v8;
        v3 = [v8 timerIDString];
        goto LABEL_3;
      }

      v6 = [v0 mtTimerID];
      if (!v6)
      {
        return 63;
      }
    }

    v4 = v6;
    v5 = sub_249076E1C();
    goto LABEL_6;
  }

  v2 = v1;
  v3 = [v1 alarmIDString];
LABEL_3:
  v4 = v3;
  v5 = sub_249076E1C();

LABEL_6:
  return v5;
}

id sub_24905F910(void *a1, uint64_t a2, SEL *a3, const char **a4, void *a5)
{
  v8 = a1;
  v9 = [v8 *a3];
  if (v9)
  {
    v10 = *a4;
    v11 = v9;
    v12 = [v9 v10];

    sub_249076E1C();
LABEL_4:
    v14 = sub_249076E0C();

    goto LABEL_5;
  }

  v13 = *&v8[*a5 + 8];

  if (v13)
  {
    goto LABEL_4;
  }

  v14 = 0;
LABEL_5:

  return v14;
}

uint64_t DTTimer.isEqual(_:)(uint64_t a1)
{
  v2 = sub_2490643F8(a1, v27, &qword_27EECF500, &qword_24907B5E0);
  if (!v28)
  {
    sub_249064460(v27, &qword_27EECF500, &qword_24907B5E0);
    goto LABEL_8;
  }

  type metadata accessor for DTTimer(v2);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v7 = 0;
    return v7 & 1;
  }

  v3 = [v26 mtAlarm];
  if (v3)
  {
    v4 = v3;
    v5 = [v1 mtAlarm];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 isEqual_];

LABEL_6:
      return v7 & 1;
    }

    goto LABEL_8;
  }

  v9 = [v26 mtAlarmID];
  if (v9)
  {
    v10 = v9;
    v11 = sub_249076E1C();
    v13 = v12;

    v14 = [v1 mtAlarmID];
    if (v14)
    {
      goto LABEL_12;
    }

    goto LABEL_23;
  }

  v19 = [v26 mtTimer];
  if (v19)
  {
    v20 = v19;
    v21 = [v1 mtTimer];
    if (v21)
    {
      v22 = v21;
      v4 = v20;
      v7 = [v22 isEqual_];

      goto LABEL_6;
    }

    goto LABEL_8;
  }

  v23 = [v26 mtTimerID];
  if (!v23)
  {
LABEL_24:

    goto LABEL_8;
  }

  v24 = v23;
  v11 = sub_249076E1C();
  v13 = v25;

  v14 = [v1 mtTimerID];
  if (!v14)
  {
LABEL_23:

    goto LABEL_24;
  }

LABEL_12:
  v15 = v14;
  v16 = sub_249076E1C();
  v18 = v17;

  if (v11 == v16 && v13 == v18)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_2490772BC();
  }

  return v7 & 1;
}

void __swiftcall DTTimer.init()(DTTimer *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

uint64_t DTTimer.encode(to:)(void *a1)
{
  v2 = v1;
  v34 = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF508, &qword_24907B5E8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v31 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_249062F28();
  sub_24907736C();
  v8 = [v2 mtAlarm];
  if (!v8)
  {
    v19 = [v2 mtAlarmID];
    if (v19)
    {
      v20 = v19;
      sub_249076E1C();

      v21 = 1;
    }

    else
    {
      v22 = [v2 mtTimer];
      if (v22)
      {
        v9 = v22;
        v23 = objc_opt_self();
        v32 = 0;
        v24 = [v23 archivedDataWithRootObject:v9 requiringSecureCoding:1 error:&v32];
        v12 = v32;
        if (v24)
        {
          v25 = sub_249076B9C();
          v27 = v26;

          v32 = v25;
          v33 = v27;
          HIBYTE(v31) = 2;
          sub_249062F7C();
          sub_24907725C();
          (*(v5 + 8))(v7, v4);

          v16 = v25;
          v17 = v27;
          return sub_24904E140(v16, v17);
        }

        goto LABEL_11;
      }

      v29 = [v2 mtTimerID];
      if (!v29)
      {
        return (*(v5 + 8))(v7, v4);
      }

      v30 = v29;
      sub_249076E1C();

      v21 = 3;
    }

    LOBYTE(v32) = v21;
    sub_24907723C();
    (*(v5 + 8))(v7, v4);
  }

  v9 = v8;
  v10 = objc_opt_self();
  v32 = 0;
  v11 = [v10 archivedDataWithRootObject:v9 requiringSecureCoding:1 error:&v32];
  v12 = v32;
  if (v11)
  {
    v13 = sub_249076B9C();
    v15 = v14;

    v32 = v13;
    v33 = v15;
    HIBYTE(v31) = 0;
    sub_249062F7C();
    sub_24907725C();
    (*(v5 + 8))(v7, v4);

    v16 = v13;
    v17 = v15;
    return sub_24904E140(v16, v17);
  }

LABEL_11:
  v28 = v12;
  sub_249076B3C();

  swift_willThrow();
  return (*(v5 + 8))(v7, v4);
}

id DTTimer.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF520, &qword_24907B5F0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v24 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_249062F28();
  sub_24907735C();
  if (!v1)
  {
    v26 = 0;
    sub_249062FD0();
    sub_2490771BC();
    v9 = v25;
    if (v25 >> 60 == 15)
    {
      LOBYTE(v24) = 1;
      sub_2490771AC();
      if (v10)
      {
        v11 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        v12 = sub_249076E0C();

        v13 = [v11 initWithMTAlarmID_];
LABEL_8:
        v7 = v13;

LABEL_12:
        (*(v4 + 8))(v6, v3);
        __swift_destroy_boxed_opaque_existential_1Tm(a1);
        return v7;
      }

      v26 = 2;
      sub_2490771BC();
      v9 = v25;
      if (v25 >> 60 == 15)
      {
        LOBYTE(v24) = 3;
        sub_2490771AC();
        if (!v20)
        {
          v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
          goto LABEL_12;
        }

        v21 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        v12 = sub_249076E0C();

        v13 = [v21 initWithMTTimerID_];
        goto LABEL_8;
      }

      v14 = v24;
      sub_249063FF0(0, &qword_27EECF530, 0x277CCAAC8);
      sub_249063FF0(0, &qword_27EECF538, 0x277D29730);
      v23 = sub_249076FCC();
      if (v23)
      {
        v16 = v23;
        v17 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        v18 = sel_initWithMTTimer_;
        goto LABEL_11;
      }

      v7 = type metadata accessor for DTError();
      v22 = "Decode MTTimer failed";
    }

    else
    {
      v14 = v24;
      sub_249063FF0(0, &qword_27EECF530, 0x277CCAAC8);
      sub_249063FF0(0, &qword_27EECF540, 0x277D296D0);
      v15 = sub_249076FCC();
      if (v15)
      {
        v16 = v15;
        v17 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        v18 = sel_initWithMTAlarm_;
LABEL_11:
        v19 = v16;
        v7 = [v17 v18];
        sub_249063024(v14, v9);

        goto LABEL_12;
      }

      v7 = type metadata accessor for DTError();
      v22 = "Decode MTAlarm failed";
    }

    DTError.__allocating_init(_:_:_:)(3, 0xD000000000000015, (v22 - 32) | 0x8000000000000000, 0);
    swift_willThrow();
    sub_249063024(v14, v9);
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v7;
}