uint64_t sub_22309F000()
{
  v1 = v0;
  if (qword_280D39048 != -1)
  {
    goto LABEL_34;
  }

  while (1)
  {
    swift_beginAccess();
    sub_2230A2E80(&xmmword_280D39050, &v35, &qword_27D055408, &qword_2230C4D78);
    v2 = *(&v36 + 1);
    sub_2230A2EE8(&v35, &qword_27D055408, &qword_2230C4D78);
    if (!v2)
    {
      v3 = type metadata accessor for GenerativeAssistantSettingsCascadeSync();
      v4 = swift_allocObject();
      *(&v36 + 1) = v3;
      v37 = &off_283671400;
      *&v35 = v4;
      swift_beginAccess();
      sub_2230A5B3C(&v35, &xmmword_280D39050);
      swift_endAccess();
    }

    sub_2230A2E80(&xmmword_280D39050, &v38, &qword_27D055408, &qword_2230C4D78);
    if (!*(&v39 + 1))
    {
      v24 = &qword_27D055408;
      v25 = &qword_2230C4D78;
      return sub_2230A2EE8(&v38, v24, v25);
    }

    sub_22309F744(&v38, &v35);
    sub_2230A2EE8(&v38, &qword_27D055408, &qword_2230C4D78);
    __swift_project_boxed_opaque_existential_0Tm(&v35, *(&v36 + 1));
    v5 = sub_22309F7F0();
    result = __swift_destroy_boxed_opaque_existential_0(&v35);
    if (!v5)
    {
      return result;
    }

    if (!*(v5 + 16))
    {
      break;
    }

    if (qword_280D38F60 != -1)
    {
      swift_once();
    }

    v7 = sub_2230C38A4();
    __swift_project_value_buffer(v7, qword_280D39220);

    v8 = sub_2230C3884();
    v9 = sub_2230C3EC4();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *&v38 = v11;
      *v10 = 136446466;
      *&v35 = v1;
      type metadata accessor for GenerativeAssistantSettingsSyncHandler();

      v12 = sub_2230C3DA4();
      v14 = sub_22309F9F4(v12, v13, &v38);

      *(v10 + 4) = v14;
      *(v10 + 12) = 2082;
      *(v10 + 14) = sub_22309F9F4(0x2868736572666572, 0xE900000000000029, &v38);
      _os_log_impl(&dword_22309D000, v8, v9, "%{public}s - %{public}s - pulling synced data", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DD5490](v11, -1, -1);
      MEMORY[0x223DD5490](v10, -1, -1);
    }

    v15 = 1 << *(v5 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v5 + 64);
    v18 = (v15 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v19 = 0;
    while (v17)
    {
LABEL_21:
      v21 = *(*(v5 + 48) + (__clz(__rbit64(v17)) | (v19 << 6)));
      if (*(v5 + 16) && (v22 = sub_2230A50D0(v21), (v23 & 1) != 0))
      {
        sub_2230A2E80(*(v5 + 56) + 32 * v22, &v35, &qword_27D0553D0, &qword_2230C4D28);
        v38 = v35;
        v39 = v36;
      }

      else
      {
        v38 = 0u;
        v39 = 0u;
      }

      v17 &= v17 - 1;
      LOBYTE(v35) = v21;
      sub_2230A45F8(&v38, &v35);
      sub_2230A2EE8(&v38, &qword_27D0553D0, &qword_2230C4D28);
    }

    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v20 >= v18)
      {

        return swift_bridgeObjectRelease_n();
      }

      v17 = *(v5 + 64 + 8 * v20);
      ++v19;
      if (v17)
      {
        v19 = v20;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_34:
    swift_once();
  }

  if (qword_280D38F60 != -1)
  {
    swift_once();
  }

  v26 = sub_2230C38A4();
  __swift_project_value_buffer(v26, qword_280D39220);

  v27 = sub_2230C3884();
  v28 = sub_2230C3EC4();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *&v38 = v30;
    *v29 = 136446466;
    *&v35 = v1;
    type metadata accessor for GenerativeAssistantSettingsSyncHandler();

    v31 = sub_2230C3DA4();
    v33 = sub_22309F9F4(v31, v32, &v38);

    *(v29 + 4) = v33;
    *(v29 + 12) = 2082;
    *(v29 + 14) = sub_22309F9F4(0x2868736572666572, 0xE900000000000029, &v38);
    _os_log_impl(&dword_22309D000, v27, v28, "%{public}s - %{public}s - clearing Montara settings.", v29, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DD5490](v30, -1, -1);
    MEMORY[0x223DD5490](v29, -1, -1);
  }

  v34 = MEMORY[0x277D839B0];
  *(&v39 + 1) = MEMORY[0x277D839B0];
  LOBYTE(v38) = 0;
  LOBYTE(v35) = 0;
  sub_2230A45F8(&v38, &v35);
  sub_2230A2EE8(&v38, &qword_27D0553D0, &qword_2230C4D28);
  *(&v39 + 1) = v34;
  LOBYTE(v38) = 1;
  LOBYTE(v35) = 2;
  sub_2230A45F8(&v38, &v35);
  sub_2230A2EE8(&v38, &qword_27D0553D0, &qword_2230C4D28);
  *(&v39 + 1) = v34;
  LOBYTE(v38) = 0;
  LOBYTE(v35) = 1;
  sub_2230A45F8(&v38, &v35);
  v24 = &qword_27D0553D0;
  v25 = &qword_2230C4D28;
  return sub_2230A2EE8(&v38, v24, v25);
}

id sub_22309F684(uint64_t a1, uint64_t a2)
{
  if (qword_280D39240)
  {

    sub_22309F000();
  }

  if (qword_280D38F68 != -1)
  {
    swift_once();
  }

  v2 = qword_280D39238;
  if (!qword_280D39238)
  {
    return 0;
  }

  v3 = sub_2230C3D74();
  v4 = [v2 BOOLForKey_];

  return v4;
}

uint64_t sub_22309F744(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *__swift_project_boxed_opaque_existential_0Tm(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_22309F7F0()
{
  if (qword_280D38F60 != -1)
  {
    swift_once();
  }

  v0 = sub_2230C38A4();
  __swift_project_value_buffer(v0, qword_280D39220);

  v1 = sub_2230C3884();
  v2 = sub_2230C3EC4();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136446466;
    type metadata accessor for GenerativeAssistantSettingsCascadeSync();

    v5 = sub_2230C3DA4();
    v7 = sub_22309F9F4(v5, v6, &v9);

    *(v3 + 4) = v7;
    *(v3 + 12) = 2082;
    *(v3 + 14) = sub_22309F9F4(0x2868736572666572, 0xE900000000000029, &v9);
    _os_log_impl(&dword_22309D000, v1, v2, "%{public}s - %{public}s - default implementation", v3, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DD5490](v4, -1, -1);
    MEMORY[0x223DD5490](v3, -1, -1);
  }

  return 0;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_22309F9F4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_22309FAC0(v11, 0, 0, 1, a1, a2);
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
    sub_22309FBCC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_22309FAC0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_22309FC74(a5, a6);
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
    result = sub_2230C3F44();
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

uint64_t sub_22309FBCC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
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

void *sub_22309FC74(uint64_t a1, unint64_t a2)
{
  v3 = sub_22309FCC0(a1, a2);
  sub_22309FE64(&unk_283670CE8);
  return v3;
}

void *sub_22309FCC0(uint64_t a1, unint64_t a2)
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

  v6 = sub_22309FDF0(v5, 0);
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

  result = sub_2230C3F44();
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
        v10 = sub_2230C3DE4();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_22309FDF0(v10, 0);
        result = sub_2230C3F14();
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

void *sub_22309FDF0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D055358, &qword_2230C4B68);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_22309FE64(uint64_t result)
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

  result = sub_2230A1A40(result, v11, 1, v3);
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

uint64_t sub_2230A0100()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2230A01F0()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 58, 7);
}

uint64_t sub_2230A0260()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D055520, &qword_2230C5828);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2230A03DC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2230A0440()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

id sub_2230A0488@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isEnabled];
  *a2 = result;
  return result;
}

uint64_t sub_2230A04BC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2230A04F4()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2230A0548()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2230A0638()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D055710, &qword_2230C61B8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2230A06D8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

GenerativeAssistantSettings::GenerativeAssistantSettingsIntentHelper::RequestType_optional __swiftcall GenerativeAssistantSettingsIntentHelper.RequestType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_2230A0784()
{
  v1 = *v0;
  sub_2230C4014();
  MEMORY[0x223DD4F90](v1);
  return sub_2230C4034();
}

uint64_t sub_2230A07CC(uint64_t a1)
{
  v2 = *v1;
  sub_2230C4014();
  MEMORY[0x223DD4F90](v2);
  return sub_2230C4034();
}

void static GenerativeAssistantSettingsIntentHelper.responseType(for:isExplicitRequest:partner:sessionId:withTamale:)(char *a1@<X0>, char a2@<W1>, uint64_t a4@<X3>, unint64_t a5@<X4>, char *x8_0@<X8>)
{
  v10 = *a1;
  if (qword_280D38F60 != -1)
  {
    swift_once();
  }

  v11 = sub_2230C38A4();
  __swift_project_value_buffer(v11, qword_280D39220);
  v12 = sub_2230C3884();
  v13 = sub_2230C3EC4();
  if (os_log_type_enabled(v12, v13))
  {
    v26 = v10;
    v14 = x8_0;
    v15 = a2;
    v16 = a4;
    v17 = a5;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v27 = v19;
    *v18 = 136446722;
    *(v18 + 4) = sub_22309F9F4(0xD000000000000027, 0x80000002230C4970, &v27);
    *(v18 + 12) = 2082;
    *(v18 + 14) = sub_22309F9F4(0xD000000000000041, 0x80000002230C6A70, &v27);
    *(v18 + 22) = 2082;
    type metadata accessor for GenerativeAssistantSettingsUserDefaults();
    v20 = static GenerativeAssistantSettingsUserDefaults.allUserDefaults()();
    v22 = sub_22309F9F4(v20, v21, &v27);

    *(v18 + 24) = v22;
    _os_log_impl(&dword_22309D000, v12, v13, "%{public}s.%{public}s: \n%{public}s", v18, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x223DD5490](v19, -1, -1);
    v23 = v18;
    a5 = v17;
    a4 = v16;
    a2 = v15;
    x8_0 = v14;
    v10 = v26;
    MEMORY[0x223DD5490](v23, -1, -1);
  }

  if (qword_280D39240)
  {

    sub_22309F000();
  }

  if (qword_280D38F68 != -1)
  {
    swift_once();
  }

  v24 = qword_280D39238;
  if (qword_280D39238)
  {
    v25 = sub_2230C3D74();
    LODWORD(v24) = [v24 BOOLForKey_];
  }

  v28 = v10;
  sub_2230A0AC4(&v28, a2 & 1, v24, a4, a5, x8_0);
}

void sub_2230A0AC4(unsigned __int8 *a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, unint64_t a5@<X4>, char *a6@<X8>)
{
  v44 = a4;
  v46 = a2;
  v47 = a3;
  v9 = sub_2230C3604();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = *a1;
  if (qword_280D38F60 != -1)
  {
    swift_once();
  }

  v13 = sub_2230C38A4();
  __swift_project_value_buffer(v13, qword_280D39220);
  v14 = sub_2230C3884();
  v15 = sub_2230C3EC4();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v42 = v10;
    v43 = v12;
    v18 = v9;
    v19 = a6;
    v20 = v17;
    v48 = v17;
    *v16 = 136446722;
    *(v16 + 4) = sub_22309F9F4(0xD000000000000027, 0x80000002230C4970, &v48);
    v21 = a5;
    *(v16 + 12) = 2082;
    *(v16 + 14) = sub_22309F9F4(0xD000000000000039, 0x80000002230C6AC0, &v48);
    *(v16 + 22) = 2082;
    type metadata accessor for GenerativeAssistantSettingsUserDefaults();
    v22 = static GenerativeAssistantSettingsUserDefaults.allUserDefaults()();
    v24 = sub_22309F9F4(v22, v23, &v48);

    *(v16 + 24) = v24;
    a5 = v21;
    _os_log_impl(&dword_22309D000, v14, v15, "%{public}s.%{public}s: \n%{public}s", v16, 0x20u);
    swift_arrayDestroy();
    v25 = v20;
    a6 = v19;
    v9 = v18;
    v10 = v42;
    v12 = v43;
    MEMORY[0x223DD5490](v25, -1, -1);
    MEMORY[0x223DD5490](v16, -1, -1);
  }

  if (v47)
  {
    if ((v45 - 1) >= 2)
    {
      if (v45)
      {
        if (a5)
        {
          sub_2230C37A4();
        }

        goto LABEL_37;
      }

      if (a5 && (MEMORY[0x223DD4700](v44, a5) & 1) != 0)
      {
LABEL_37:
        v39 = 3;
        goto LABEL_38;
      }
    }

    else
    {
      if (v46)
      {
        goto LABEL_37;
      }

      if (qword_280D39240)
      {

        sub_22309F000();
      }

      if (qword_280D38F68 != -1)
      {
        swift_once();
      }

      v26 = qword_280D39238;
      if (!qword_280D39238)
      {
        goto LABEL_37;
      }

      v27 = sub_2230C3D74();
      v28 = [v26 BOOLForKey_];

      if (!v28)
      {
        goto LABEL_37;
      }

      v29 = sub_2230C3784();

      if (v29)
      {
        goto LABEL_37;
      }
    }

    v39 = 1;
LABEL_38:
    *a6 = v39;
    return;
  }

  if (qword_280D39240)
  {

    sub_22309F000();
  }

  if (qword_280D38F68 != -1)
  {
    swift_once();
  }

  v30 = qword_280D39238;
  if (!qword_280D39238 || (v31 = sub_2230C3D74(), v32 = [v30 BOOLForKey_], v31, (v32 & 1) == 0))
  {
    if ((v46 & 1) == 0)
    {
      *a6 = 0;
      return;
    }

    goto LABEL_27;
  }

  if (v46)
  {
LABEL_27:
    v36 = sub_2230C3884();
    v37 = sub_2230C3EC4();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_22309D000, v36, v37, "Montara feature is currently disabled for this user", v38, 2u);
      MEMORY[0x223DD5490](v38, -1, -1);
    }

    v39 = 2;
    goto LABEL_38;
  }

  v33 = a6;
  if (v45 > 1)
  {
    if (v45 == 2)
    {
      type metadata accessor for GenerativeAssistantSettingsUserDefaults();
      sub_2230BB728();
      v40 = sub_2230C3D74();
      v35 = [v30 integerForKey_];

      static GenerativeAssistantSettingsUserDefaults.declineComposeViaSiriExpiration()(v12);
      goto LABEL_42;
    }

LABEL_41:
    type metadata accessor for GenerativeAssistantSettingsUserDefaults();
    sub_2230BB728();
    v41 = sub_2230C3D74();
    v35 = [v30 integerForKey_];

    static GenerativeAssistantSettingsUserDefaults.declineMediaQAExpiration()(v12);
    goto LABEL_42;
  }

  if (!v45)
  {
    goto LABEL_41;
  }

  type metadata accessor for GenerativeAssistantSettingsUserDefaults();
  sub_2230BB728();
  v34 = sub_2230C3D74();
  v35 = [v30 integerForKey_];

  static GenerativeAssistantSettingsUserDefaults.declineKnowledgeFallbackExpiration()(v12);
LABEL_42:
  sub_2230A1204(v35, v33);
  (*(v10 + 8))(v12, v9);
}

void static GenerativeAssistantSettingsIntentHelper.responseType(for:isExplicitRequest:sessionId:)(unsigned __int8 *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, unint64_t a4@<X3>, char *a5@<X8>)
{
  v11 = *a1;
  if (qword_280D39240)
  {

    sub_22309F000();
  }

  if (qword_280D38F68 != -1)
  {
    swift_once();
  }

  v9 = qword_280D39238;
  if (qword_280D39238)
  {
    v10 = sub_2230C3D74();
    LODWORD(v9) = [v9 BOOLForKey_];
  }

  sub_2230A0AC4(&v11, a2 & 1, v9, a3, a4, a5);
}

uint64_t sub_2230A1204@<X0>(uint64_t a1@<X0>, char *a3@<X8>)
{
  v5 = sub_2230C3604();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2230C35F4();
  if ((sub_2230A1F68() & 1) == 0 || a1 < 1 || (sub_2230C35C4() & 1) == 0)
  {
    if (a1 <= 1)
    {
      result = (*(v6 + 8))(v8, v5);
    }

    else
    {
      v11 = sub_2230C35C4();
      result = (*(v6 + 8))(v8, v5);
      if (v11)
      {
        v10 = 0;
        goto LABEL_10;
      }
    }

    v10 = 2;
    goto LABEL_10;
  }

  result = (*(v6 + 8))(v8, v5);
  v10 = 0;
LABEL_10:
  *a3 = v10;
  return result;
}

BOOL static GenerativeAssistantSettingsIntentHelper.shouldShowDisableConfirmRequestsConfirmation()()
{
  v50 = sub_2230C3674();
  v48 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v1 = &v40 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_2230C3684();
  v49 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v51 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_2230C3604();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v46 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v52 = &v40 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D055340, &qword_2230C58A0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v40 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v53 = &v40 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v40 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v40 - v20;
  type metadata accessor for GenerativeAssistantSettingsUserDefaults();
  static GenerativeAssistantSettingsUserDefaults.nextDisableConfirmRequestsConfirmationDate()(v21);
  v22 = *(v4 + 48);
  if (v22(v21, 1, v3) != 1)
  {
    sub_2230A1BF4(v21, v19);
    if (v22(v19, 1, v3) == 1)
    {
      sub_2230A1B8C(v19);
      goto LABEL_8;
    }

    v45 = v1;
    sub_2230C35D4();
    v1 = v45;
    v30 = v29;
    (*(v4 + 8))(v19, v3);
    if (v30 >= 0.0)
    {
      goto LABEL_8;
    }
  }

  v23 = *(_s27GenerativeAssistantSettings0abC12UserDefaultsC31consecutiveLLMConfirmationDatesSay10Foundation4DateVGyFZ_0() + 16);

  if (v23 < 3)
  {
LABEL_8:
    v27 = 0;
    goto LABEL_18;
  }

  v45 = v11;
  v24 = v53;
  static GenerativeAssistantSettingsUserDefaults.lastDeclineDate()(v53);
  v25 = v24;
  v26 = v22(v24, 1, v3);
  v27 = v26 == 1;
  sub_2230A1BF4(v25, v14);
  if (v22(v14, 1, v3) == 1)
  {
    v28 = v25;
LABEL_11:
    sub_2230A1B8C(v28);
    sub_2230A1B8C(v14);
    goto LABEL_18;
  }

  v43 = v26;
  v44 = v4;
  v41 = *(v4 + 32);
  v42 = v4 + 32;
  v41(v52, v14, v3);
  sub_2230C3664();
  v31 = v48;
  v32 = v50;
  (*(v48 + 104))(v1, *MEMORY[0x277CC9940], v50);
  v14 = v45;
  v33 = v51;
  sub_2230C3654();
  (*(v31 + 8))(v1, v32);
  (*(v49 + 8))(v33, v47);
  if (v22(v14, 1, v3) == 1)
  {
    (*(v44 + 8))(v52, v3);
    v28 = v53;
    goto LABEL_11;
  }

  v34 = v46;
  v41(v46, v14, v3);
  sub_2230C35D4();
  v36 = v35;
  v37 = *(v44 + 8);
  v37(v34, v3);
  v37(v52, v3);
  sub_2230A1B8C(v53);
  v27 = v36 < 0.0 || v43 == 1;
LABEL_18:
  sub_2230A1B8C(v21);
  return v27;
}

BOOL sub_2230A190C(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_2230A1970(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_2230A19E4(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_22309F9F4(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

char *sub_2230A1A40(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D055358, &qword_2230C4B68);
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

_BYTE **sub_2230A1B34(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
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

uint64_t sub_2230A1B8C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D055340, &qword_2230C58A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2230A1BF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D055340, &qword_2230C58A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2230A1C68()
{
  result = qword_27D055348;
  if (!qword_27D055348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D055348);
  }

  return result;
}

unint64_t sub_2230A1CC0()
{
  result = qword_27D055350;
  if (!qword_27D055350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D055350);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GenerativeAssistantSettingsIntentHelper(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for GenerativeAssistantSettingsIntentHelper(_WORD *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for GenerativeAssistantSettingsDestination.Origin(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GenerativeAssistantSettingsDestination.Origin(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2230A1F68()
{
  sub_2230BB728();
  if (qword_280D38F68 != -1)
  {
    swift_once();
  }

  v0 = qword_280D39238;
  if (qword_280D39238)
  {
    v1 = sub_2230C3D74();
    v2 = [v0 integerForKey_];

    if (v2 > 1)
    {
      return 1;
    }

    sub_2230BB728();
    v3 = sub_2230C3D74();
    v4 = [v0 integerForKey_];

    if (v4 > 1)
    {
      return 1;
    }

    sub_2230BB728();
    v5 = sub_2230C3D74();
    v6 = [v0 integerForKey_];

    if (v6 > 1)
    {
      return 1;
    }
  }

  else
  {
    sub_2230BB728();
    sub_2230BB728();
  }

  return 0;
}

uint64_t sub_2230A20E4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0553A8, &qword_2230C4C00);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v25 - v3;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0553B8, &qword_2230C4C10);
  MEMORY[0x28223BE20](v28);
  v6 = &v25 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0553A0, &qword_2230C4BC0);
  v8 = MEMORY[0x28223BE20](v7);
  v27 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v25 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - v13;
  v15 = OBJC_IVAR____TtC27GenerativeAssistantSettings29ExternalAIAuthenticatorHelper__authenticationSession;
  *(v0 + v15) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0553C0, &qword_2230C4C48);
  swift_storeEnumTagMultiPayload();
  v16 = OBJC_IVAR____TtC27GenerativeAssistantSettings29ExternalAIAuthenticatorHelper__credentials;
  v17 = sub_2230C3914();
  v18 = *(v17 - 8);
  v19 = *(v18 + 56);
  v25 = v18 + 56;
  v26 = v19;
  v19(v14, 1, 1, v17);
  sub_2230A2E80(v14, v12, &qword_27D0553A0, &qword_2230C4BC0);
  sub_2230C3AF4();
  sub_2230A2EE8(v14, &qword_27D0553A0, &qword_2230C4BC0);
  sub_2230A2E10(v6, v1 + v16);
  *(v1 + OBJC_IVAR____TtC27GenerativeAssistantSettings29ExternalAIAuthenticatorHelper_isBusy) = 0;
  v20 = v1 + OBJC_IVAR____TtC27GenerativeAssistantSettings29ExternalAIAuthenticatorHelper_callbackURLScheme;
  strcpy((v1 + OBJC_IVAR____TtC27GenerativeAssistantSettings29ExternalAIAuthenticatorHelper_callbackURLScheme), "apple-chatgpt");
  *(v20 + 14) = -4864;
  sub_2230C3774();
  sub_2230C3764();
  sub_2230C3744();

  v21 = sub_2230C3984();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v4, 1, v21) == 1)
  {
    sub_2230A2EE8(v4, &qword_27D0553A8, &qword_2230C4C00);
    v23 = v27;
    v26(v27, 1, 1, v17);
  }

  else
  {
    v23 = v27;
    sub_2230C3944();
    (*(v22 + 8))(v4, v21);
  }

  sub_2230A2E80(v1 + OBJC_IVAR____TtC27GenerativeAssistantSettings29ExternalAIAuthenticatorHelper__credentials, v6, &qword_27D0553B8, &qword_2230C4C10);
  sub_2230A2E80(v23, v14, &qword_27D0553A0, &qword_2230C4BC0);
  sub_2230C3B04();
  sub_2230A2EE8(v6, &qword_27D0553B8, &qword_2230C4C10);
  sub_2230A2EE8(v23, &qword_27D0553A0, &qword_2230C4BC0);
  return v1;
}

uint64_t sub_2230A24E4()
{
  sub_2230A2EE8(v0 + OBJC_IVAR____TtC27GenerativeAssistantSettings29ExternalAIAuthenticatorHelper__authenticationSession, &qword_27D0553C8, &qword_2230C4C50);
  sub_2230A2EE8(v0 + OBJC_IVAR____TtC27GenerativeAssistantSettings29ExternalAIAuthenticatorHelper__credentials, &qword_27D0553B8, &qword_2230C4C10);

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for ExternalAIAuthenticatorHelper(uint64_t a1)
{
  result = qword_27D055380;
  if (!qword_27D055380)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2230A25E0(uint64_t a1)
{
  sub_2230A26C0(319);
  if (v1 <= 0x3F)
  {
    sub_2230A2718(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_2230A26C0(uint64_t a1)
{
  if (!qword_27D055390)
  {
    sub_2230C38B4();
    v1 = sub_2230C39F4();
    if (!v2)
    {
      atomic_store(v1, &qword_27D055390);
    }
  }
}

void sub_2230A2718(uint64_t a1)
{
  if (!qword_27D055398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0553A0, &qword_2230C4BC0);
    v1 = sub_2230C3B14();
    if (!v2)
    {
      atomic_store(v1, &qword_27D055398);
    }
  }
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

uint64_t sub_2230A27C4(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void sub_2230A2824(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
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

uint64_t sub_2230A2898()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0553A8, &qword_2230C4C00);
  *(v0 + 16) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2230A2930, 0, 0);
}

uint64_t sub_2230A2930()
{
  v1 = v0[2];
  sub_2230C3774();
  sub_2230C3764();
  sub_2230C3744();

  v2 = sub_2230C3984();
  v0[3] = v2;
  v3 = *(v2 - 8);
  v0[4] = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_2230A2EE8(v0[2], &qword_27D0553A8, &qword_2230C4C00);

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = swift_task_alloc();
    v0[5] = v6;
    *v6 = v0;
    v6[1] = sub_2230A2A98;

    return MEMORY[0x28213D120]();
  }
}

uint64_t sub_2230A2A98()
{
  v2 = *v1;
  v2[6] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2230A2BEC, 0, 0);
  }

  else
  {
    (*(v2[4] + 8))(v2[2], v2[3]);

    v3 = v2[1];

    return v3();
  }
}

uint64_t sub_2230A2BEC()
{
  v16 = v0;
  (*(v0[4] + 8))(v0[2], v0[3]);
  if (qword_27D055330 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = sub_2230C38A4();
  __swift_project_value_buffer(v2, qword_27D0572A8);
  v3 = v1;
  v4 = sub_2230C3884();
  v5 = sub_2230C3EB4();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[6];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v8 = 136446466;
    *(v8 + 4) = sub_22309F9F4(0xD000000000000013, 0x80000002230C6BA0, &v15);
    *(v8 + 12) = 2114;
    v11 = v7;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v12;
    *v9 = v12;
    _os_log_impl(&dword_22309D000, v4, v5, "%{public}s: ExternalAIAuthenticator.signOut() exception: %{public}@", v8, 0x16u);
    sub_2230A2EE8(v9, &qword_27D0553B0, &qword_2230C4C08);
    MEMORY[0x223DD5490](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x223DD5490](v10, -1, -1);
    MEMORY[0x223DD5490](v8, -1, -1);
  }

  else
  {
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_2230A2E10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0553B8, &qword_2230C4C10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2230A2E80(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2230A2EE8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2230A2F70(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0553D8, &qword_2230C4D30);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21 - v5;
  if (qword_280D38F60 != -1)
  {
    swift_once();
  }

  v7 = sub_2230C38A4();
  __swift_project_value_buffer(v7, qword_280D39220);

  v8 = sub_2230C3884();
  v9 = sub_2230C3EC4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v2;
    v22 = v11;
    *v10 = 136446722;
    type metadata accessor for GenerativeAssistantSettingsCascadeSync();

    v12 = sub_2230C3DA4();
    v14 = sub_22309F9F4(v12, v13, &v22);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2082;
    *(v10 + 14) = sub_22309F9F4(0x5F286574616E6F64, 0xEA0000000000293ALL, &v22);
    *(v10 + 22) = 2082;
    v15 = sub_2230C3D34();
    v17 = sub_22309F9F4(v15, v16, &v22);

    *(v10 + 24) = v17;
    _os_log_impl(&dword_22309D000, v8, v9, "%{public}s - %{public}s - preparing to donate. settings dictionary is:  %{public}s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x223DD5490](v11, -1, -1);
    MEMORY[0x223DD5490](v10, -1, -1);
  }

  v18 = sub_2230C3E84();
  (*(*(v18 - 8) + 56))(v6, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = a1;
  v19[5] = v2;

  sub_2230BEA64(0, 0, v6, &unk_2230C4D40, v19);
}

uint64_t sub_2230A325C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 152) = a4;
  *(v5 + 160) = a5;

  return MEMORY[0x2822009F8](sub_2230A32EC, 0, 0);
}

uint64_t sub_2230A32EC()
{
  v35 = v0;
  v34[1] = *MEMORY[0x277D85DE8];
  v1 = sub_2230A4104(v0[19]);
  v2 = objc_allocWithZone(MEMORY[0x277D210C8]);
  v3 = sub_2230A4CF0(v1);
  v0[21] = v3;
  v4 = v3;
  v5 = objc_allocWithZone(MEMORY[0x277D210D0]);
  v6 = sub_2230A4DD8(0x617261746E6F4DLL, 0xE700000000000000);
  v0[22] = v6;
  v22 = v6;
  v23 = objc_allocWithZone(MEMORY[0x277CF94C8]);
  v0[10] = 0;
  v24 = v4;
  v25 = v22;
  v26 = [v23 initWithContent:v24 metaContent:v25 error:v0 + 10];
  v0[23] = v26;
  v27 = v0[10];
  if (v26)
  {
    v28 = v27;

    v29 = objc_opt_self();
    sub_2230A5058();
    v30 = sub_2230C3DF4();
    v0[24] = v30;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_2230A37D0;
    v31 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0553E0, &qword_2230C4D50);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_2230A43CC;
    v0[13] = &block_descriptor;
    v0[14] = v31;
    [v29 fullSetDonationWithItemType:44530 descriptors:v30 completion:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    v32 = v27;
    v33 = sub_2230C3514();

    swift_willThrow();
    if (qword_280D38F60 != -1)
    {
      swift_once();
    }

    v7 = sub_2230C38A4();
    __swift_project_value_buffer(v7, qword_280D39220);

    v8 = v33;
    v9 = sub_2230C3884();
    v10 = sub_2230C3EB4();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = v0[20];
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v34[0] = v14;
      *v12 = 136446722;
      v0[10] = v11;
      type metadata accessor for GenerativeAssistantSettingsCascadeSync();

      v15 = sub_2230C3DA4();
      v17 = sub_22309F9F4(v15, v16, v34);

      *(v12 + 4) = v17;
      *(v12 + 12) = 2082;
      *(v12 + 14) = sub_22309F9F4(0x5F286574616E6F64, 0xEA0000000000293ALL, v34);
      *(v12 + 22) = 2114;
      v18 = v33;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 24) = v19;
      *v13 = v19;
      _os_log_impl(&dword_22309D000, v9, v10, "%{public}s - %{public}s unexpected exception %{public}@ caught while preparing store for use", v12, 0x20u);
      sub_2230A2EE8(v13, &qword_27D0553B0, &qword_2230C4C08);
      MEMORY[0x223DD5490](v13, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x223DD5490](v14, -1, -1);
      MEMORY[0x223DD5490](v12, -1, -1);
    }

    else
    {
    }

    v20 = v0[1];

    return v20();
  }
}

uint64_t sub_2230A37D0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 200) = v1;
  if (v1)
  {
    v2 = sub_2230A3E44;
  }

  else
  {
    v2 = sub_2230A390C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2230A390C()
{
  v49 = v0;
  v48[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 184);
  v2 = *(v0 + 144);

  *(v0 + 80) = 0;
  v3 = (v0 + 80);
  v4 = [v2 registerItem:v1 error:v0 + 80];
  v5 = *(v0 + 80);
  if (v4 && (*v3 = 0, v6 = v5, v7 = [v2 finish_], v5 = *v3, v7))
  {
    v8 = qword_280D38F60;
    v9 = v5;
    if (v8 != -1)
    {
      swift_once();
    }

    v10 = sub_2230C38A4();
    __swift_project_value_buffer(v10, qword_280D39220);

    v11 = sub_2230C3884();
    v12 = sub_2230C3EC4();

    v13 = os_log_type_enabled(v11, v12);
    v15 = *(v0 + 176);
    v14 = *(v0 + 184);
    if (v13)
    {
      v16 = *(v0 + 160);
      v46 = *(v0 + 168);
      v47 = *(v0 + 184);
      v17 = swift_slowAlloc();
      v45 = v15;
      v18 = swift_slowAlloc();
      v48[0] = v18;
      *v17 = 136446722;
      *(v0 + 80) = v16;
      type metadata accessor for GenerativeAssistantSettingsCascadeSync();

      v19 = sub_2230C3DA4();
      v21 = sub_22309F9F4(v19, v20, v48);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2082;
      *(v17 + 14) = sub_22309F9F4(0x5F286574616E6F64, 0xEA0000000000293ALL, v48);
      *(v17 + 22) = 2082;
      v22 = sub_2230C3D34();
      v24 = sub_22309F9F4(v22, v23, v48);

      *(v17 + 24) = v24;
      _os_log_impl(&dword_22309D000, v11, v12, "%{public}s - %{public}s - donation complete. settings dictionary is:  %{public}s", v17, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x223DD5490](v18, -1, -1);
      MEMORY[0x223DD5490](v17, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v26 = *(v0 + 176);
    v25 = *(v0 + 184);
    v27 = *(v0 + 168);
    v28 = v5;
    v29 = sub_2230C3514();

    swift_willThrow();
    if (qword_280D38F60 != -1)
    {
      swift_once();
    }

    v30 = sub_2230C38A4();
    __swift_project_value_buffer(v30, qword_280D39220);

    v31 = v29;
    v32 = sub_2230C3884();
    v33 = sub_2230C3EB4();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = *(v0 + 160);
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v48[0] = v37;
      *v35 = 136446722;
      *(v0 + 80) = v34;
      type metadata accessor for GenerativeAssistantSettingsCascadeSync();

      v38 = sub_2230C3DA4();
      v40 = sub_22309F9F4(v38, v39, v48);

      *(v35 + 4) = v40;
      *(v35 + 12) = 2082;
      *(v35 + 14) = sub_22309F9F4(0x5F286574616E6F64, 0xEA0000000000293ALL, v48);
      *(v35 + 22) = 2114;
      v41 = v29;
      v42 = _swift_stdlib_bridgeErrorToNSError();
      *(v35 + 24) = v42;
      *v36 = v42;
      _os_log_impl(&dword_22309D000, v32, v33, "%{public}s - %{public}s unexpected exception %{public}@ caught while preparing store for use", v35, 0x20u);
      sub_2230A2EE8(v36, &qword_27D0553B0, &qword_2230C4C08);
      MEMORY[0x223DD5490](v36, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x223DD5490](v37, -1, -1);
      MEMORY[0x223DD5490](v35, -1, -1);
    }

    else
    {
    }
  }

  v43 = *(v0 + 8);

  return v43();
}

uint64_t sub_2230A3E44()
{
  v22 = v0;
  v21[1] = *MEMORY[0x277D85DE8];
  v1 = v0[24];
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[21];
  swift_willThrow();

  v5 = v0[25];
  if (qword_280D38F60 != -1)
  {
    swift_once();
  }

  v6 = sub_2230C38A4();
  __swift_project_value_buffer(v6, qword_280D39220);

  v7 = v5;
  v8 = sub_2230C3884();
  v9 = sub_2230C3EB4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[20];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v21[0] = v13;
    *v11 = 136446722;
    v0[10] = v10;
    type metadata accessor for GenerativeAssistantSettingsCascadeSync();

    v14 = sub_2230C3DA4();
    v16 = sub_22309F9F4(v14, v15, v21);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2082;
    *(v11 + 14) = sub_22309F9F4(0x5F286574616E6F64, 0xEA0000000000293ALL, v21);
    *(v11 + 22) = 2114;
    v17 = v5;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 24) = v18;
    *v12 = v18;
    _os_log_impl(&dword_22309D000, v8, v9, "%{public}s - %{public}s unexpected exception %{public}@ caught while preparing store for use", v11, 0x20u);
    sub_2230A2EE8(v12, &qword_27D0553B0, &qword_2230C4C08);
    MEMORY[0x223DD5490](v12, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x223DD5490](v13, -1, -1);
    MEMORY[0x223DD5490](v11, -1, -1);
  }

  else
  {
  }

  v19 = v0[1];

  return v19();
}

uint64_t sub_2230A4104(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0553F0, &unk_2230C4D60);
    v2 = sub_2230C3F64();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_22309FBCC(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_2230A4CE0(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_2230A4CE0(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_2230A4CE0(v31, v32);
    result = sub_2230C3F04();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_2230A4CE0(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_2230A43CC(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_0Tm((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0553E8, &qword_2230C4D58);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x282200958](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v5);
  }
}

double sub_2230A44B4()
{
  qword_280D39070 = 0;
  result = 0.0;
  xmmword_280D39050 = 0u;
  unk_280D39060 = 0u;
  return result;
}

uint64_t sub_2230A44CC@<X0>(uint64_t a1@<X8>)
{
  if (qword_280D39048 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_2230A2E80(&xmmword_280D39050, v6, &qword_27D055408, &qword_2230C4D78);
  v2 = v7;
  sub_2230A2EE8(v6, &qword_27D055408, &qword_2230C4D78);
  if (!v2)
  {
    v3 = type metadata accessor for GenerativeAssistantSettingsCascadeSync();
    v4 = swift_allocObject();
    v7 = v3;
    v8 = &off_283671400;
    v6[0] = v4;
    swift_beginAccess();
    sub_2230A5B3C(v6, &xmmword_280D39050);
    swift_endAccess();
  }

  return sub_2230A2E80(&xmmword_280D39050, a1, &qword_27D055408, &qword_2230C4D78);
}

uint64_t sub_2230A45F8(uint64_t a1, char *a2)
{
  v3 = v2;
  v5 = *a2;
  if (qword_280D38F60 != -1)
  {
    swift_once();
  }

  v6 = sub_2230C38A4();
  __swift_project_value_buffer(v6, qword_280D39220);
  sub_2230A2E80(a1, v30, &qword_27D0553D0, &qword_2230C4D28);

  v7 = sub_2230C3884();
  v8 = sub_2230C3EC4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = v26;
    *v9 = 136446978;
    *&v28 = v3;
    type metadata accessor for GenerativeAssistantSettingsSyncHandler();

    v10 = sub_2230C3DA4();
    v12 = sub_22309F9F4(v10, v11, &v27);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2082;
    *(v9 + 14) = sub_22309F9F4(0xD000000000000018, 0x80000002230C6C70, &v27);
    *(v9 + 22) = 2082;
    LOBYTE(v28) = v5;
    v13 = sub_2230C3DA4();
    v15 = sub_22309F9F4(v13, v14, &v27);

    *(v9 + 24) = v15;
    *(v9 + 32) = 2082;
    sub_2230A2E80(v30, &v28, &qword_27D0553D0, &qword_2230C4D28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0553D0, &qword_2230C4D28);
    v16 = sub_2230C3DA4();
    v17 = v5;
    v19 = v18;
    sub_2230A2EE8(v30, &qword_27D0553D0, &qword_2230C4D28);
    v20 = sub_22309F9F4(v16, v19, &v27);
    v5 = v17;

    *(v9 + 34) = v20;
    _os_log_impl(&dword_22309D000, v7, v8, "%{public}s - %{public}s %{public}s =  %{public}s", v9, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x223DD5490](v26, -1, -1);
    MEMORY[0x223DD5490](v9, -1, -1);
  }

  else
  {

    sub_2230A2EE8(v30, &qword_27D0553D0, &qword_2230C4D28);
  }

  sub_2230A2E80(a1, &v28, &qword_27D0553D0, &qword_2230C4D28);
  if (!v29)
  {
    return sub_2230A2EE8(&v28, &qword_27D0553D0, &qword_2230C4D28);
  }

  sub_2230A4CE0(&v28, v30);
  v21 = *(v3 + 16);
  if (v21)
  {
    __swift_project_boxed_opaque_existential_0Tm(v30, v31);
    v22 = v21;
    v23 = sub_2230C3FA4();
    LOBYTE(v28) = v5;
    GenerativeAssistantSettingsUserDefaults.Key.rawValue.getter();
    v24 = sub_2230C3D74();

    [v22 setObject:v23 forKey:v24];

    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0(v30);
}

GenerativeAssistantSettings::GenerativeAssistantSettingsUserDefaults::Key_optional sub_2230A4978(uint64_t a1, uint64_t a2, void *a3)
{

  v5._countAndFlagsBits = a2;
  v5._object = a3;
  result.value = GenerativeAssistantSettingsUserDefaults.Key.init(rawValue:)(v5).value;
  if (v18[0] <= 2u)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0553F8, &qword_2230C6120);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2230C4C70;
    *(inited + 32) = 0x656C62616E457369;
    *(inited + 40) = 0xE900000000000064;
    if (qword_280D39240)
    {

      sub_22309F000();
    }

    if (qword_280D38F68 != -1)
    {
      swift_once();
    }

    v8 = qword_280D39238;
    if (qword_280D39238)
    {
      v9 = sub_2230C3D74();
      v10 = [v8 BOOLForKey_];
    }

    else
    {
      v10 = 0;
    }

    v11 = MEMORY[0x277D839B0];
    *(inited + 48) = v10;
    *(inited + 72) = v11;
    *(inited + 80) = 0xD000000000000016;
    *(inited + 88) = 0x80000002230C66F0;
    if (qword_280D39240)
    {

      sub_22309F000();
    }

    if (v8)
    {
      v12 = sub_2230C3D74();
      v13 = [v8 BOOLForKey_];
    }

    else
    {
      v13 = 0;
    }

    *(inited + 96) = v13;
    *(inited + 120) = v11;
    *(inited + 128) = 0x6F72507075746573;
    *(inited + 136) = 0xEB0000000074706DLL;
    if (qword_280D39240)
    {

      sub_22309F000();
    }

    if (v8)
    {
      v14 = sub_2230C3D74();
      v15 = [v8 BOOLForKey_];
    }

    else
    {
      v15 = 0;
    }

    *(inited + 168) = v11;
    *(inited + 144) = v15;
    v16 = sub_2230C3020(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D055400, &qword_2230C4D70);
    swift_arrayDestroy();
    sub_2230A44CC(v18);
    if (v19)
    {
      sub_22309F744(v18, v17);
      sub_2230A2EE8(v18, &qword_27D055408, &qword_2230C4D78);
      __swift_project_boxed_opaque_existential_0Tm(v17, v17[3]);
      sub_2230A2F70(v16);

      return __swift_destroy_boxed_opaque_existential_0(v17);
    }

    else
    {

      return sub_2230A2EE8(v18, &qword_27D055408, &qword_2230C4D78);
    }
  }

  return result;
}

uint64_t sub_2230A4C84()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

_OWORD *sub_2230A4CE0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

id sub_2230A4CF0(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = sub_2230C3D24();

  v7[0] = 0;
  v3 = [v1 initWithJSONDictionary:v2 error:v7];

  if (v3)
  {
    v4 = v7[0];
  }

  else
  {
    v5 = v7[0];
    sub_2230C3514();

    swift_willThrow();
  }

  return v3;
}

id sub_2230A4DD8(uint64_t a1, uint64_t a2)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = sub_2230C3D74();

  v8[0] = 0;
  v4 = [v2 initWithSourceItemIdentifier:v3 error:v8];

  if (v4)
  {
    v5 = v8[0];
  }

  else
  {
    v6 = v8[0];
    sub_2230C3514();

    swift_willThrow();
  }

  return v4;
}

uint64_t sub_2230A4EA4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2230A4F64;

  return sub_2230A325C(a1, v4, v5, v7, v6);
}

uint64_t sub_2230A4F64()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_2230A5058()
{
  result = qword_280D38E48[0];
  if (!qword_280D38E48[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_280D38E48);
  }

  return result;
}

unint64_t sub_2230A50D0(uint64_t a1)
{
  v1 = a1;
  sub_2230C4014();
  GenerativeAssistantSettingsUserDefaults.Key.rawValue.getter();
  sub_2230C3DC4();

  v2 = sub_2230C4034();

  return sub_2230A52F8(v1, v2);
}

unint64_t sub_2230A515C(uint64_t a1, uint64_t a2)
{
  sub_2230C4014();
  sub_2230C3DC4();
  v4 = sub_2230C4034();

  return sub_2230A5884(a1, a2, v4);
}

unint64_t sub_2230A51D4(uint64_t a1)
{
  v1 = a1;
  sub_2230C4014();
  sub_2230C3DC4();

  v2 = sub_2230C4034();

  return sub_2230A593C(v1, v2);
}

unint64_t sub_2230A52F8(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE900000000000064;
      v8 = 0x656C62616E457369;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0x6F72507075746573;
          v7 = 0xEB0000000074706DLL;
          break;
        case 2:
          v8 = 0xD000000000000016;
          v7 = 0x80000002230C66F0;
          break;
        case 3:
          v8 = 0xD000000000000013;
          v7 = 0x80000002230C6710;
          break;
        case 4:
          v8 = 0xD000000000000018;
          v7 = 0x80000002230C6730;
          break;
        case 5:
          v8 = 0xD00000000000001DLL;
          v7 = 0x80000002230C6750;
          break;
        case 6:
          v8 = 0xD000000000000022;
          v7 = 0x80000002230C6770;
          break;
        case 7:
          v8 = 0xD00000000000001ALL;
          v7 = 0x80000002230C67A0;
          break;
        case 8:
          v8 = 0xD00000000000001FLL;
          v7 = 0x80000002230C67C0;
          break;
        case 9:
          v8 = 0xD000000000000017;
          v7 = 0x80000002230C67E0;
          break;
        case 0xA:
          v8 = 0xD000000000000011;
          v7 = 0x80000002230C6800;
          break;
        case 0xB:
          v8 = 0xD000000000000014;
          v7 = 0x80000002230C6820;
          break;
        case 0xC:
          v8 = 0xD00000000000001CLL;
          v7 = 0x80000002230C6840;
          break;
        case 0xD:
          v8 = 0xD00000000000001FLL;
          v7 = 0x80000002230C6860;
          break;
        case 0xE:
          v8 = 0x6C6365447473616CLL;
          v7 = 0xEF65746144656E69;
          break;
        case 0xF:
          v8 = 0xD000000000000027;
          v7 = 0x80000002230C6890;
          break;
        case 0x10:
          v8 = 0xD00000000000002ALL;
          v7 = 0x80000002230C68C0;
          break;
        case 0x11:
          v8 = 0xD00000000000001BLL;
          v7 = 0x80000002230C68F0;
          break;
        case 0x12:
          v8 = 0xD000000000000018;
          v7 = 0x80000002230C6910;
          break;
        case 0x13:
          v8 = 0xD00000000000002ALL;
          v7 = 0x80000002230C6930;
          break;
        case 0x14:
          v8 = 0xD00000000000001ELL;
          v7 = 0x80000002230C6960;
          break;
        default:
          break;
      }

      v9 = 0x656C62616E457369;
      v10 = 0xE900000000000064;
      switch(a1)
      {
        case 1:
          v10 = 0xEB0000000074706DLL;
          if (v8 == 0x6F72507075746573)
          {
            goto LABEL_63;
          }

          goto LABEL_64;
        case 2:
          v10 = 0x80000002230C66F0;
          if (v8 != 0xD000000000000016)
          {
            goto LABEL_64;
          }

          goto LABEL_63;
        case 3:
          v10 = 0x80000002230C6710;
          if (v8 != 0xD000000000000013)
          {
            goto LABEL_64;
          }

          goto LABEL_63;
        case 4:
          v10 = 0x80000002230C6730;
          if (v8 != 0xD000000000000018)
          {
            goto LABEL_64;
          }

          goto LABEL_63;
        case 5:
          v10 = 0x80000002230C6750;
          if (v8 != 0xD00000000000001DLL)
          {
            goto LABEL_64;
          }

          goto LABEL_63;
        case 6:
          v10 = 0x80000002230C6770;
          if (v8 != 0xD000000000000022)
          {
            goto LABEL_64;
          }

          goto LABEL_63;
        case 7:
          v10 = 0x80000002230C67A0;
          if (v8 != 0xD00000000000001ALL)
          {
            goto LABEL_64;
          }

          goto LABEL_63;
        case 8:
          v9 = 0xD00000000000001FLL;
          v10 = 0x80000002230C67C0;
          goto LABEL_62;
        case 9:
          v10 = 0x80000002230C67E0;
          if (v8 != 0xD000000000000017)
          {
            goto LABEL_64;
          }

          goto LABEL_63;
        case 10:
          v10 = 0x80000002230C6800;
          if (v8 != 0xD000000000000011)
          {
            goto LABEL_64;
          }

          goto LABEL_63;
        case 11:
          v10 = 0x80000002230C6820;
          if (v8 != 0xD000000000000014)
          {
            goto LABEL_64;
          }

          goto LABEL_63;
        case 12:
          v10 = 0x80000002230C6840;
          if (v8 != 0xD00000000000001CLL)
          {
            goto LABEL_64;
          }

          goto LABEL_63;
        case 13:
          v10 = 0x80000002230C6860;
          if (v8 != 0xD00000000000001FLL)
          {
            goto LABEL_64;
          }

          goto LABEL_63;
        case 14:
          v10 = 0xEF65746144656E69;
          if (v8 != 0x6C6365447473616CLL)
          {
            goto LABEL_64;
          }

          goto LABEL_63;
        case 15:
          v10 = 0x80000002230C6890;
          if (v8 != 0xD000000000000027)
          {
            goto LABEL_64;
          }

          goto LABEL_63;
        case 16:
          v10 = 0x80000002230C68C0;
          if (v8 != 0xD00000000000002ALL)
          {
            goto LABEL_64;
          }

          goto LABEL_63;
        case 17:
          v10 = 0x80000002230C68F0;
          if (v8 != 0xD00000000000001BLL)
          {
            goto LABEL_64;
          }

          goto LABEL_63;
        case 18:
          v10 = 0x80000002230C6910;
          if (v8 != 0xD000000000000018)
          {
            goto LABEL_64;
          }

          goto LABEL_63;
        case 19:
          v10 = 0x80000002230C6930;
          if (v8 != 0xD00000000000002ALL)
          {
            goto LABEL_64;
          }

          goto LABEL_63;
        case 20:
          v10 = 0x80000002230C6960;
          if (v8 != 0xD00000000000001ELL)
          {
            goto LABEL_64;
          }

          goto LABEL_63;
        default:
LABEL_62:
          if (v8 != v9)
          {
            goto LABEL_64;
          }

LABEL_63:
          if (v7 == v10)
          {

            return v4;
          }

LABEL_64:
          v11 = sub_2230C3FB4();

          if (v11)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

unint64_t sub_2230A5884(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_2230C3FB4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_2230A593C(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v19 = ~v3;
    v5 = 0xE900000000000044;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v21 + 48) + v4);
      if (v7 <= 1)
      {
        if (*(*(v21 + 48) + v4))
        {
          v8 = 0x6C646E7542707061;
        }

        else
        {
          v8 = 0x496D616441707061;
        }

        if (*(*(v21 + 48) + v4))
        {
          v9 = 0xEB00000000444965;
        }

        else
        {
          v9 = 0xE900000000000044;
        }
      }

      else if (v7 == 2)
      {
        v8 = 0xD000000000000017;
        v9 = 0x80000002230C6A10;
      }

      else
      {
        if (v7 == 3)
        {
          v8 = 0xD000000000000013;
        }

        else
        {
          v8 = 0xD00000000000001ALL;
        }

        if (v7 == 3)
        {
          v9 = 0x80000002230C6A30;
        }

        else
        {
          v9 = 0x80000002230C6A50;
        }
      }

      v10 = 0xD000000000000017;
      v11 = 0xD00000000000001ALL;
      if (v6 == 3)
      {
        v11 = 0xD000000000000013;
        v12 = 0x80000002230C6A30;
      }

      else
      {
        v12 = 0x80000002230C6A50;
      }

      if (v6 != 2)
      {
        v10 = v11;
      }

      v13 = 0x80000002230C6A10;
      if (v6 != 2)
      {
        v13 = v12;
      }

      if (v6)
      {
        v14 = 0x6C646E7542707061;
      }

      else
      {
        v14 = 0x496D616441707061;
      }

      if (v6)
      {
        v5 = 0xEB00000000444965;
      }

      v15 = v6 <= 1 ? v14 : v10;
      v16 = v6 <= 1 ? v5 : v13;
      if (v8 == v15 && v9 == v16)
      {
        break;
      }

      v17 = sub_2230C3FB4();

      if ((v17 & 1) == 0)
      {
        v4 = (v4 + 1) & v19;
        v5 = 0xE900000000000044;
        if ((*(v20 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_2230A5B3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D055408, &qword_2230C4D78);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2230A5BAC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000044;
  v3 = 0xD000000000000013;
  v4 = 0x496D616441707061;
  v5 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v6 = 0x6C646E7542707061;
    }

    else
    {
      v6 = 0x496D616441707061;
    }

    if (v5)
    {
      v7 = 0xEB00000000444965;
    }

    else
    {
      v7 = 0xE900000000000044;
    }
  }

  else if (a1 == 2)
  {
    v7 = 0x80000002230C6A10;
    v6 = 0xD000000000000017;
  }

  else
  {
    if (a1 == 3)
    {
      v6 = 0xD000000000000013;
    }

    else
    {
      v6 = 0xD00000000000001ALL;
    }

    if (v5 == 3)
    {
      v7 = 0x80000002230C6A30;
    }

    else
    {
      v7 = 0x80000002230C6A50;
    }
  }

  if (a2 <= 1u)
  {
    v3 = 0x6C646E7542707061;
    v8 = 0xEB00000000444965;
    v9 = a2 == 0;
  }

  else
  {
    v2 = 0x80000002230C6A10;
    v4 = 0xD000000000000017;
    v8 = 0x80000002230C6A50;
    if (a2 == 3)
    {
      v8 = 0x80000002230C6A30;
    }

    else
    {
      v3 = 0xD00000000000001ALL;
    }

    v9 = a2 == 2;
  }

  if (v9)
  {
    v10 = v4;
  }

  else
  {
    v10 = v3;
  }

  if (v9)
  {
    v11 = v2;
  }

  else
  {
    v11 = v8;
  }

  if (v6 == v10 && v7 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_2230C3FB4();
  }

  return v12 & 1;
}

uint64_t sub_2230A5D28(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v11 = a1;
    v12 = 0xE000000000000000;
    v13 = 0x6F72507075746573;
    v14 = 0xEB0000000074706DLL;
    if (a1 != 2)
    {
      v13 = 0xD000000000000016;
      v14 = 0x80000002230C66F0;
    }

    if (a1)
    {
      v11 = 0x656C62616E457369;
      v12 = 0xE900000000000064;
    }

    if (a1 <= 1u)
    {
      v9 = v11;
    }

    else
    {
      v9 = v13;
    }

    if (v2 <= 1)
    {
      v10 = v12;
    }

    else
    {
      v10 = v14;
    }
  }

  else
  {
    v3 = 0xE600000000000000;
    v4 = 0x6E496E676973;
    v5 = 0xE700000000000000;
    v6 = 0x74754F6E676973;
    if (a1 != 7)
    {
      v6 = 0x5065646172677075;
      v5 = 0xEB000000006E616CLL;
    }

    if (a1 != 6)
    {
      v4 = v6;
      v3 = v5;
    }

    v7 = 0x43746E756F636361;
    v8 = 0xEF736C6F72746E6FLL;
    if (a1 != 4)
    {
      v7 = 0x6168437055746573;
      v8 = 0xEC00000054504774;
    }

    if (a1 <= 5u)
    {
      v9 = v7;
    }

    else
    {
      v9 = v4;
    }

    if (v2 <= 5)
    {
      v10 = v8;
    }

    else
    {
      v10 = v3;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v15 = 0xE900000000000064;
        if (v9 != 0x656C62616E457369)
        {
          goto LABEL_51;
        }
      }

      else
      {
        v15 = 0xE000000000000000;
        if (v9 != a2)
        {
          goto LABEL_51;
        }
      }

      goto LABEL_49;
    }

    if (a2 != 2)
    {
      v15 = 0x80000002230C66F0;
      if (v9 != 0xD000000000000016)
      {
        goto LABEL_51;
      }

      goto LABEL_49;
    }

    v16 = 0x6F72507075746573;
    v17 = 7630957;
    goto LABEL_46;
  }

  if (a2 > 5u)
  {
    if (a2 == 6)
    {
      v15 = 0xE600000000000000;
      if (v9 != 0x6E496E676973)
      {
        goto LABEL_51;
      }

      goto LABEL_49;
    }

    if (a2 == 7)
    {
      v15 = 0xE700000000000000;
      if (v9 != 0x74754F6E676973)
      {
        goto LABEL_51;
      }

      goto LABEL_49;
    }

    v16 = 0x5065646172677075;
    v17 = 7233900;
LABEL_46:
    v15 = v17 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
    if (v9 != v16)
    {
      goto LABEL_51;
    }

    goto LABEL_49;
  }

  if (a2 == 4)
  {
    v15 = 0xEF736C6F72746E6FLL;
    if (v9 != 0x43746E756F636361)
    {
      goto LABEL_51;
    }
  }

  else
  {
    v15 = 0xEC00000054504774;
    if (v9 != 0x6168437055746573)
    {
LABEL_51:
      v18 = sub_2230C3FB4();
      goto LABEL_52;
    }
  }

LABEL_49:
  if (v10 != v15)
  {
    goto LABEL_51;
  }

  v18 = 1;
LABEL_52:

  return v18 & 1;
}

uint64_t sub_2230A6024(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 1769105779;
  if (a1 == 2)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v4 = 0x54676E6974697277;
    v5 = 0xEC000000736C6F6FLL;
  }

  v6 = 0xD000000000000010;
  if (a1)
  {
    v3 = 0x80000002230C6990;
  }

  else
  {
    v6 = 0x54504774616863;
  }

  if (a1 <= 1u)
  {
    v7 = v6;
  }

  else
  {
    v7 = v4;
  }

  if (v2 <= 1)
  {
    v8 = v3;
  }

  else
  {
    v8 = v5;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v11 = 1769105779;
    }

    else
    {
      v11 = 0x54676E6974697277;
    }

    if (a2 == 2)
    {
      v10 = 0xE400000000000000;
    }

    else
    {
      v10 = 0xEC000000736C6F6FLL;
    }

    if (v7 != v11)
    {
      goto LABEL_31;
    }
  }

  else
  {
    if (a2)
    {
      v9 = 0xD000000000000010;
    }

    else
    {
      v9 = 0x54504774616863;
    }

    if (a2)
    {
      v10 = 0x80000002230C6990;
    }

    else
    {
      v10 = 0xE700000000000000;
    }

    if (v7 != v9)
    {
      goto LABEL_31;
    }
  }

  if (v8 != v10)
  {
LABEL_31:
    v12 = sub_2230C3FB4();
    goto LABEL_32;
  }

  v12 = 1;
LABEL_32:

  return v12 & 1;
}

uint64_t sub_2230A616C(uint64_t a1, unsigned __int8 a2)
{
  sub_2230C3DC4();
}

unint64_t sub_2230A62DC()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v6 = 0x6F72507075746573;
    if (v1 != 2)
    {
      v6 = 0xD000000000000016;
    }

    v7 = 0x656C62616E457369;
    if (!*v0)
    {
      v7 = *v0;
    }

    if (*v0 <= 1u)
    {
      return v7;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0x6E496E676973;
    v3 = 0x74754F6E676973;
    if (v1 != 7)
    {
      v3 = 0x5065646172677075;
    }

    if (v1 != 6)
    {
      v2 = v3;
    }

    v4 = 0x43746E756F636361;
    if (v1 != 4)
    {
      v4 = 0x6168437055746573;
    }

    if (*v0 <= 5u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t GenerativeAssistantSettingsDestination.fullURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D055410, &qword_2230C4D90);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v22 - v4;
  v6 = *v1;
  v22[0] = 0xD00000000000003DLL;
  v22[1] = 0x80000002230C6CC0;
  MEMORY[0x223DD4D40](63, 0xE100000000000000);
  MEMORY[0x223DD4D40](2003134838, 0xE400000000000000);
  MEMORY[0x223DD4D40](61, 0xE100000000000000);
  if (v6 <= 3)
  {
    v15 = 0xE000000000000000;
    v16 = 0xEB0000000074706DLL;
    v17 = 0x6F72507075746573;
    if (v6 != 2)
    {
      v17 = 0xD000000000000016;
      v16 = 0x80000002230C66F0;
    }

    v18 = 0x656C62616E457369;
    if (v6)
    {
      v15 = 0xE900000000000064;
    }

    else
    {
      v18 = v6;
    }

    if (v6 <= 1)
    {
      v13 = v18;
    }

    else
    {
      v13 = v17;
    }

    if (v6 <= 1)
    {
      v14 = v15;
    }

    else
    {
      v14 = v16;
    }
  }

  else
  {
    v7 = 0xE600000000000000;
    v8 = 0x6E496E676973;
    v9 = 0xE700000000000000;
    v10 = 0x74754F6E676973;
    if (v6 != 7)
    {
      v10 = 0x5065646172677075;
      v9 = 0xEB000000006E616CLL;
    }

    if (v6 != 6)
    {
      v8 = v10;
      v7 = v9;
    }

    v11 = 0xEF736C6F72746E6FLL;
    v12 = 0x43746E756F636361;
    if (v6 != 4)
    {
      v12 = 0x6168437055746573;
      v11 = 0xEC00000054504774;
    }

    if (v6 <= 5)
    {
      v13 = v12;
    }

    else
    {
      v13 = v8;
    }

    if (v6 <= 5)
    {
      v14 = v11;
    }

    else
    {
      v14 = v7;
    }
  }

  MEMORY[0x223DD4D40](v13, v14);

  sub_2230C3574();

  v19 = sub_2230C3594();
  v20 = *(v19 - 8);
  result = (*(v20 + 48))(v5, 1, v19);
  if (result != 1)
  {
    return (*(v20 + 32))(a1, v5, v19);
  }

  __break(1u);
  return result;
}

GenerativeAssistantSettings::GenerativeAssistantSettingsDestination::Origin_optional __swiftcall GenerativeAssistantSettingsDestination.Origin.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2230C3F74();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t GenerativeAssistantSettingsDestination.Origin.rawValue.getter()
{
  v1 = 0x54504774616863;
  v2 = 1769105779;
  if (*v0 != 2)
  {
    v2 = 0x54676E6974697277;
  }

  if (*v0)
  {
    v1 = 0xD000000000000010;
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

uint64_t sub_2230A6794()
{
  sub_2230C4014();
  sub_2230C3DC4();

  return sub_2230C4034();
}

uint64_t sub_2230A685C(uint64_t a1)
{
  sub_2230C3DC4();
}

uint64_t sub_2230A6910(uint64_t a1)
{
  sub_2230C4014();
  sub_2230C3DC4();

  return sub_2230C4034();
}

void sub_2230A69E0(unint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x54504774616863;
  v4 = 0xE400000000000000;
  v5 = 1769105779;
  if (*v1 != 2)
  {
    v5 = 0x54676E6974697277;
    v4 = 0xEC000000736C6F6FLL;
  }

  if (*v1)
  {
    v3 = 0xD000000000000010;
    v2 = 0x80000002230C6990;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

GenerativeAssistantSettings::GenerativeAssistantSettingsDestination_optional __swiftcall GenerativeAssistantSettingsDestination.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2230C3F74();

  v5 = 9;
  if (v3 < 9)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t GenerativeAssistantSettingsDestination.fullURL(origin:)(unsigned __int8 *a1)
{
  v2 = sub_2230C34F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_2230C3594();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13[15] = *v1;
  GenerativeAssistantSettingsDestination.fullURL.getter(v9);
  sub_2230C34E4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D055418, &qword_2230C4D98);
  v10 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_2230C4D80;
  (*(v3 + 16))(v11 + v10, v5, v2);
  sub_2230C3584();

  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

GenerativeAssistantSettings::GenerativeAssistantSettingsDestination_optional static GenerativeAssistantSettingsDestination.entityIdentifier(for:)(uint64_t a1, uint64_t a2)
{

  v4 = a1;
  v5 = a2;

  return GenerativeAssistantSettingsDestination.init(rawValue:)(*&v4);
}

GenerativeAssistantSettings::GenerativeAssistantSettingsDestination::Action_optional __swiftcall GenerativeAssistantSettingsDestination.Action.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2230C3F74();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t GenerativeAssistantSettingsDestination.Action.rawValue.getter()
{
  v1 = 0x6E496E676973;
  if (*v0 != 1)
  {
    v1 = 0x74754F6E676973;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6168437055746573;
  }
}

uint64_t sub_2230A6E68(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x6E496E676973;
  if (v2 != 1)
  {
    v4 = 0x74754F6E676973;
    v3 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6168437055746573;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xEC00000054504774;
  }

  v7 = 0xE600000000000000;
  v8 = 0x6E496E676973;
  if (*a2 != 1)
  {
    v8 = 0x74754F6E676973;
    v7 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6168437055746573;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xEC00000054504774;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2230C3FB4();
  }

  return v11 & 1;
}

uint64_t sub_2230A6F68()
{
  sub_2230C4014();
  sub_2230C3DC4();

  return sub_2230C4034();
}

uint64_t sub_2230A7010(uint64_t a1)
{
  sub_2230C3DC4();
}

uint64_t sub_2230A70A4(uint64_t a1)
{
  sub_2230C4014();
  sub_2230C3DC4();

  return sub_2230C4034();
}

void sub_2230A7154(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC00000054504774;
  v4 = 0xE600000000000000;
  v5 = 0x6E496E676973;
  if (v2 != 1)
  {
    v5 = 0x74754F6E676973;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6168437055746573;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_2230A71C8()
{
  result = qword_27D055420;
  if (!qword_27D055420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D055420);
  }

  return result;
}

unint64_t sub_2230A7220()
{
  result = qword_27D055428;
  if (!qword_27D055428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D055428);
  }

  return result;
}

unint64_t sub_2230A7284()
{
  result = qword_27D055430;
  if (!qword_27D055430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D055430);
  }

  return result;
}

uint64_t sub_2230A72D8()
{
  v1 = *v0;
  sub_2230C4014();
  sub_2230A616C(v3, v1);
  return sub_2230C4034();
}

uint64_t sub_2230A7328(uint64_t a1)
{
  v2 = *v1;
  sub_2230C4014();
  sub_2230A616C(v4, v2);
  return sub_2230C4034();
}

uint64_t sub_2230A7378@<X0>(uint64_t *a1@<X8>)
{
  result = GenerativeAssistantSettingsDestination.entityIdentifierString.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_2230A73A4()
{
  result = qword_27D055438;
  if (!qword_27D055438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D055440, &qword_2230C4F80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D055438);
  }

  return result;
}

GenerativeAssistantSettings::GenerativeAssistantSettingsDestination_optional sub_2230A741C(uint64_t a1, uint64_t a2)
{

  v4 = a1;
  v5 = a2;

  return GenerativeAssistantSettingsDestination.init(rawValue:)(*&v4);
}

uint64_t getEnumTagSinglePayload for GenerativeAssistantSettingsDestination(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GenerativeAssistantSettingsDestination(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GenerativeAssistantSettingsDestination.Action(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for GenerativeAssistantSettingsDestination.Action(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t GenerativeAssistantSettingsProvider.LLMProvider.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_2230C3F74();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_2230A779C()
{
  sub_2230C4014();
  sub_2230C3DC4();
  return sub_2230C4034();
}

uint64_t sub_2230A7808(uint64_t a1)
{
  sub_2230C4014();
  sub_2230C3DC4();
  return sub_2230C4034();
}

uint64_t sub_2230A7858@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_2230C3F74();

  *a2 = v3 != 0;
  return result;
}

uint64_t static GenerativeAssistantSettingsProvider.shared.getter()
{
  v0 = type metadata accessor for GenerativeAssistantSettingsProvider();

  return MEMORY[0x2821FEAF0](v0, &unk_280D38F10);
}

uint64_t sub_2230A791C(uint64_t a1, uint64_t a2)
{
  v2 = sub_2230C3724();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2230C3774();
  sub_2230C3764();
  sub_2230C3754();

  result = (*(v3 + 88))(v5, v2);
  if (result != *MEMORY[0x277D0D670])
  {
    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

uint64_t sub_2230A7A58(uint64_t (*a1)(void))
{
  sub_2230C3774();
  sub_2230C3764();
  v2 = a1();

  return v2;
}

uint64_t sub_2230A7AB4()
{
  sub_2230C3774();
  sub_2230C3764();
  sub_2230C3734();
}

Swift::String __swiftcall GenerativeAssistantSettingsProvider.LLMProvider.localizedDisplayName()()
{
  v0 = sub_2230C3644();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_2230C3524();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2230C3D64();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_2230C3534();
  MEMORY[0x28223BE20](v6 - 8);
  sub_2230C3D54();
  if (qword_27D055328 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_27D057290);
  (*(v2 + 16))(v4, v7, v1);
  sub_2230C3634();
  sub_2230C3544();
  v8 = sub_2230C3D94();
  result._object = v9;
  result._countAndFlagsBits = v8;
  return result;
}

unint64_t sub_2230A7D4C()
{
  result = qword_27D055448;
  if (!qword_27D055448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D055448);
  }

  return result;
}

GenerativeAssistantSettings::EnablementUIDismissType_optional __swiftcall EnablementUIDismissType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_2230A7E94(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t GenerativeAssistantSettingsOnboarding.init(enablementDelegate:requestType:)@<X0>(__int128 *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  *(a3 + 40) = 518;
  result = sub_2230A7E94(a1, a3);
  *(a3 + 40) = v4;
  return result;
}

uint64_t GenerativeAssistantSettingsOnboarding.init(enablementDelegate:isExplicitRequest:)@<X0>(__int128 *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *(a3 + 40) = 6;
  result = sub_2230A7E94(a1, a3);
  *(a3 + 41) = a2;
  return result;
}

uint64_t GenerativeAssistantSettingsOnboarding.init(enablementDelegate:requestType:isExplicitRequest:)@<X0>(__int128 *a1@<X0>, char *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v6 = *a2;
  *(a4 + 40) = 6;
  result = sub_2230A7E94(a1, a4);
  *(a4 + 40) = v6;
  *(a4 + 41) = a3;
  return result;
}

uint64_t GenerativeAssistantSettingsOnboarding.makeUIViewController(context:)()
{
  sub_22309F744(v0, v7);
  v1 = *(v0 + 40);
  v2 = *(v0 + 41);
  sub_2230C3804();
  sub_22309F744(v7, v6);
  v3 = swift_allocObject();
  sub_2230A7E94(v6, v3 + 16);
  *(v3 + 56) = v1;
  *(v3 + 57) = v2 & 1;
  v4 = sub_2230C37F4();
  __swift_destroy_boxed_opaque_existential_0(v7);
  return v4;
}

uint64_t sub_2230A8024()
{
  sub_22309F744(v0, v7);
  v1 = *(v0 + 40);
  v2 = *(v0 + 41);
  sub_2230C3804();
  sub_22309F744(v7, v6);
  v3 = swift_allocObject();
  sub_2230A7E94(v6, v3 + 16);
  *(v3 + 56) = v1;
  *(v3 + 57) = v2 & 1;
  v4 = sub_2230C37F4();
  __swift_destroy_boxed_opaque_existential_0(v7);
  return v4;
}

uint64_t sub_2230A8128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2230A8990();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_2230A818C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2230A8990();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_2230A820C(uint64_t a1)
{
  sub_2230A8990();
  sub_2230C3A94();
  __break(1u);
}

char *GenerativeAssistantEnablementNavigationController.__allocating_init(enablementDelegate:requestType:isExplicitRequest:)(void *a1, char *a2, char a3)
{
  v4 = v3;
  v7 = *a2;
  v8 = [objc_allocWithZone(v4) init];
  [v8 setModalInPresentation_];
  sub_2230C3804();
  sub_22309F744(a1, v13);
  v9 = swift_allocObject();
  sub_2230A7E94(v13, v9 + 16);
  *(v9 + 56) = v7;
  *(v9 + 57) = a3 & 1;
  v10 = sub_2230C37F4();
  __swift_destroy_boxed_opaque_existential_0(a1);
  v11 = *&v8[OBJC_IVAR____TtC27GenerativeAssistantSettings49GenerativeAssistantEnablementNavigationController_enablementNavigationController];
  *&v8[OBJC_IVAR____TtC27GenerativeAssistantSettings49GenerativeAssistantEnablementNavigationController_enablementNavigationController] = v10;

  return v8;
}

void sub_2230A8340()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for GenerativeAssistantEnablementNavigationController();
  objc_msgSendSuper2(&v7, sel_viewDidLoad);
  v1 = *&v0[OBJC_IVAR____TtC27GenerativeAssistantSettings49GenerativeAssistantEnablementNavigationController_enablementNavigationController];
  if (v1)
  {
    v2 = v1;
    [v0 addChildViewController_];
    v3 = [v0 view];
    if (v3)
    {
      v4 = v3;
      v5 = [v2 view];
      if (v5)
      {
        v6 = v5;
        [v4 addSubview_];

        [v2 didMoveToParentViewController_];
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

id GenerativeAssistantEnablementNavigationController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_2230C3D74();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id GenerativeAssistantEnablementNavigationController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC27GenerativeAssistantSettings49GenerativeAssistantEnablementNavigationController_enablementNavigationController] = 0;
  if (a2)
  {
    v5 = sub_2230C3D74();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for GenerativeAssistantEnablementNavigationController();
  v6 = objc_msgSendSuper2(&v8, sel_initWithNibName_bundle_, v5, a3);

  return v6;
}

id GenerativeAssistantEnablementNavigationController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id GenerativeAssistantEnablementNavigationController.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC27GenerativeAssistantSettings49GenerativeAssistantEnablementNavigationController_enablementNavigationController] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for GenerativeAssistantEnablementNavigationController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id GenerativeAssistantEnablementNavigationController.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for GenerativeAssistantEnablementNavigationController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_2230A87E4()
{
  result = qword_27D055458;
  if (!qword_27D055458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D055458);
  }

  return result;
}

unint64_t sub_2230A883C()
{
  result = qword_27D055460;
  if (!qword_27D055460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D055460);
  }

  return result;
}

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2230A88D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 42))
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

uint64_t sub_2230A891C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 42) = 1;
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

    *(result + 42) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2230A8990()
{
  result = qword_27D055468;
  if (!qword_27D055468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D055468);
  }

  return result;
}

BOOL static GenerativeAssistantSettingsController.available()()
{
  v0 = sub_2230C3714();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2230C3704();
  v4 = sub_2230C36D4();
  (*(v1 + 8))(v3, v0);
  return (v4 & 1) == 0;
}

id GenerativeAssistantSettingsController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_2230C3D74();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id GenerativeAssistantSettingsController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  sub_2230C3704();
  if (a2)
  {
    v6 = sub_2230C3D74();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v3;
  v9.super_class = type metadata accessor for GenerativeAssistantSettingsController(0);
  v7 = objc_msgSendSuper2(&v9, sel_initWithNibName_bundle_, v6, a3);

  return v7;
}

uint64_t type metadata accessor for GenerativeAssistantSettingsController(uint64_t a1)
{
  result = qword_27D055478;
  if (!qword_27D055478)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id GenerativeAssistantSettingsController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id GenerativeAssistantSettingsController.init(coder:)(void *a1)
{
  sub_2230C3704();
  v5.receiver = v1;
  v5.super_class = type metadata accessor for GenerativeAssistantSettingsController(0);
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id GenerativeAssistantSettingsController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GenerativeAssistantSettingsController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall GenerativeAssistantSettingsController.viewDidLoad()()
{
  v1 = v0;
  v2 = sub_2230C37E4();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_2230C3714();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for GenerativeAssistantSettingsController(0);
  v21.receiver = v1;
  v21.super_class = v7;
  objc_msgSendSuper2(&v21, sel_viewDidLoad);
  sub_2230C3704();
  v8 = sub_2230C36D4();
  (*(v4 + 8))(v6, v3);
  if ((v8 & 1) == 0)
  {
    sub_2230C37D4();
    v9 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D055470, &unk_2230C5440));
    v10 = sub_2230C3A24();
    v11 = [v10 view];
    if (v11)
    {
      v12 = v11;
      v13 = [v1 view];
      if (v13)
      {
        v14 = v13;
        [v13 addSubview_];

        v15 = [v1 view];
        if (v15)
        {
          v16 = v15;
          [v15 bounds];
          v18 = v17;
          v20 = v19;

          [v12 setFrame_];
          [v12 setAutoresizingMask_];
          [v1 addChildViewController_];
          [v10 didMoveToParentViewController_];

LABEL_7:
          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return;
    }

    v12 = v10;
    goto LABEL_7;
  }
}

uint64_t sub_2230A9258(uint64_t a1)
{
  result = sub_2230C3714();
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

uint64_t sub_2230A92E8(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2230AD860;

  return v7(a1, a2);
}

uint64_t sub_2230A9400(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 16) + **(a2 + 16));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2230A9518;

  return v7(a1, a2);
}

uint64_t sub_2230A9518(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

void sub_2230A9628(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D055520, &qword_2230C5828);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = aBlock - v7;
  v9 = [objc_opt_self() sharedInstance];
  (*(v5 + 16))(v8, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v8, v4);
  *(v11 + ((v6 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  aBlock[4] = sub_2230AD5C4;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2230A9B44;
  aBlock[3] = &block_descriptor_78;
  v12 = _Block_copy(aBlock);

  [v9 getAllIAPsForActiveAccountWithResultHandler_];
  _Block_release(v12);
}

unint64_t sub_2230A981C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a4;
  v4 = MEMORY[0x277D84F90];
  if (result)
  {
    v5 = result;
    v34 = a3;
    v6 = result & 0xFFFFFFFFFFFFFF8;
    if (result >> 62)
    {
      goto LABEL_19;
    }

    v7 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      do
      {
        v8 = 0;
        v35 = v5 & 0xC000000000000001;
        while (1)
        {
          if (v35)
          {
            v9 = MEMORY[0x223DD4EA0](v8, v5);
          }

          else
          {
            if (v8 >= *(v6 + 16))
            {
              goto LABEL_18;
            }

            v9 = *(v5 + 8 * v8 + 32);
          }

          v10 = v9;
          v11 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            break;
          }

          v12 = [v9 adamId];
          v13 = [v12 stringValue];

          v14 = sub_2230C3D84();
          v16 = v15;

          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_2230BA7FC(0, *(v4 + 16) + 1, 1, v4);
            v4 = result;
          }

          v18 = *(v4 + 16);
          v17 = *(v4 + 24);
          v19 = v18 + 1;
          if (v18 >= v17 >> 1)
          {
            result = sub_2230BA7FC((v17 > 1), v18 + 1, 1, v4);
            v4 = result;
          }

          *(v4 + 16) = v19;
          v20 = v4 + 16 * v18;
          *(v20 + 32) = v14;
          *(v20 + 40) = v16;
          ++v8;
          if (v11 == v7)
          {
            goto LABEL_21;
          }
        }

        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        result = sub_2230C3F54();
        v7 = result;
      }

      while (result);
    }

    v19 = *(v4 + 16);
    v21 = v4;
    if (v19)
    {
LABEL_21:
      v22 = 0;
      v23 = v4 + 40;
      v32 = v19 - 1;
      v21 = MEMORY[0x277D84F90];
      v33 = v4 + 40;
      do
      {
        v35 = v21;
        v24 = (v23 + 16 * v22);
        v25 = v22;
        while (1)
        {
          if (v25 >= *(v4 + 16))
          {
            __break(1u);
            return result;
          }

          v26 = *(v24 - 1);
          v27 = *v24;
          v22 = v25 + 1;
          v37[0] = v26;
          v37[1] = v27;
          MEMORY[0x28223BE20](result);
          v31[2] = v37;

          if (sub_2230AC5E8(sub_2230AD6C4, v31, v36))
          {
            break;
          }

          v24 += 2;
          ++v25;
          if (v19 == v22)
          {
            v21 = v35;
            goto LABEL_32;
          }
        }

        v21 = v35;
        result = swift_isUniquelyReferenced_nonNull_native();
        v38 = v21;
        if ((result & 1) == 0)
        {
          result = sub_2230BAAE0(0, *(v21 + 16) + 1, 1);
          v21 = v38;
        }

        v29 = *(v21 + 16);
        v28 = *(v21 + 24);
        if (v29 >= v28 >> 1)
        {
          result = sub_2230BAAE0((v28 > 1), v29 + 1, 1);
          v21 = v38;
        }

        *(v21 + 16) = v29 + 1;
        v30 = v21 + 16 * v29;
        *(v30 + 32) = v26;
        *(v30 + 40) = v27;
        v23 = v33;
      }

      while (v32 != v25);
    }

LABEL_32:
  }

  else
  {
    v21 = MEMORY[0x277D84F90];
  }

  v37[0] = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D055520, &qword_2230C5828);
  return sub_2230C3E44();
}

uint64_t sub_2230A9B44(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_2230AD67C(0, &qword_27D055528, 0x277CEC3A0);
    v4 = sub_2230C3E14();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t sub_2230A9BE8(char a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 32) = a5;
  *(v6 + 40) = a6;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 81) = a2;
  *(v6 + 80) = a1;
  return MEMORY[0x2822009F8](sub_2230A9C14, 0, 0);
}

uint64_t sub_2230A9C14()
{
  v1 = *(v0 + 24);
  v2 = sub_2230BDCC0(*(v0 + 32), *(v0 + 40), *(v0 + 80));
  v3 = [v1 arrayForKey_];
  *(v0 + 48) = v3;

  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_2230A9CEC;
  v5 = *(v0 + 16);
  v6 = *(v0 + 81);
  v7 = *(v0 + 80);

  return sub_2230AC694(v3, v7, v6, v5);
}

uint64_t sub_2230A9CEC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 64) = a1;
  *(v3 + 72) = v1;

  if (v1)
  {
    v4 = sub_2230A9F00;
  }

  else
  {

    v4 = sub_2230A9E08;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2230A9E08()
{
  sub_2230C3E04();
  v1 = *(v0 + 64);
  sub_2230AD3E8();
  swift_allocError();
  *v2 = 1;
  swift_willThrow();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2230A9F00()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2230A9F64()
{
  v2 = *v0;
  v3 = v0[1];
  v5 = v0[2];
  v4 = v0[3];
  v6 = swift_task_alloc();
  *(v1 + 24) = v6;
  *v6 = v1;
  v6[1] = sub_2230AA030;

  return sub_2230A9BE8(3, 1, v2, v3, v5, v4);
}

uint64_t sub_2230AA030(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 32) = a1;

    return MEMORY[0x2822009F8](sub_2230AA17C, 0, 0);
  }
}

uint64_t sub_2230AA17C()
{
  v1 = v0[4];
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[6] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D055518, &qword_2230C5820);
  *v3 = v0;
  v3[1] = sub_2230AA284;

  return MEMORY[0x2822007B8](v0 + 2, 0, 0, 0xD00000000000001DLL, 0x80000002230C6FB0, sub_2230AD5BC, v2, v4);
}

uint64_t sub_2230AA284()
{

  return MEMORY[0x2822009F8](sub_2230AA3B8, 0, 0);
}

uint64_t sub_2230AA3D4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2230C39B4();

  return v1;
}

uint64_t sub_2230AA448()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2230C39B4();
}

uint64_t sub_2230AA4C0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2230C39B4();

  return v1;
}

uint64_t sub_2230AA534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0553D8, &qword_2230C4D30);
  v4[3] = swift_task_alloc();
  v5 = swift_task_alloc();
  v4[4] = v5;
  *v5 = v4;
  v5[1] = sub_2230AA5FC;

  return sub_2230ACD94();
}

uint64_t sub_2230AA5FC(char a1)
{
  *(*v1 + 40) = a1;

  return MEMORY[0x2822009F8](sub_2230AA6FC, 0, 0);
}

uint64_t sub_2230AA6FC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  *(v1 + OBJC_IVAR____TtC27GenerativeAssistantSettings16SubscriptionInfo_isAppInstalled) = *(v0 + 40);
  v3 = sub_2230C3E84();
  v4 = *(*(v3 - 8) + 56);
  v4(v2, 1, 1, v3);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v1;

  sub_2230BEA64(0, 0, v2, &unk_2230C5780, v5);

  v4(v2, 1, 1, v3);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v1;

  sub_2230BEA64(0, 0, v2, &unk_2230C5790, v6);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_2230AA8A8()
{
  sub_22309F744(v0[7] + OBJC_IVAR____TtC27GenerativeAssistantSettings16SubscriptionInfo_appStoreDataSource, (v0 + 2));
  __swift_project_boxed_opaque_existential_0Tm(v0 + 2, v0[5]);
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_2230AA9E0;

  return (sub_2230A9F64)(&type metadata for AppStoreDaemonDataSource, &off_2836719E8);
}

uint64_t sub_2230AA9E0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_2230AAD78;
  }

  else
  {
    *(v4 + 80) = a1;
    v5 = sub_2230AAB08;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2230AAB08()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 56);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v3 = *(v1 + 16);

  v4 = *(v2 + OBJC_IVAR____TtC27GenerativeAssistantSettings16SubscriptionInfo_accountReportsPaidPlan);
  if (v4 == 2)
  {
    v5 = 0;
  }

  else if (v3)
  {
    if (v4)
    {
      v5 = 2;
    }

    else
    {
      if (qword_27D055338 != -1)
      {
        swift_once();
      }

      v6 = sub_2230C38A4();
      __swift_project_value_buffer(v6, qword_27D0572C0);
      v7 = sub_2230C3884();
      v8 = sub_2230C3EC4();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_22309D000, v7, v8, "Current ChatGPT account reports free plan, but has Apple IAP subscription. This is not supported and will default to free behavior. Please login with the ChatGPT account associated with this IAP subscription.", v9, 2u);
        MEMORY[0x223DD5490](v9, -1, -1);
      }

      v5 = 4;
    }
  }

  else if (v4)
  {
    v5 = 3;
  }

  else
  {
    v5 = 0;
  }

  *(v0 + 97) = v5;
  sub_2230C3E64();
  *(v0 + 88) = sub_2230C3E54();
  v11 = sub_2230C3E34();

  return MEMORY[0x2822009F8](sub_2230AACB8, v11, v10);
}

uint64_t sub_2230AACB8()
{
  v1 = *(v0 + 97);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 96) = v1;

  sub_2230C39C4();
  v2 = *(v0 + 8);
  v3 = *(v0 + 97);

  return v2(v3);
}

uint64_t sub_2230AAD78()
{
  v1 = *(v0 + 72);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  *(v0 + 97) = 1;
  sub_2230C3E64();
  *(v0 + 88) = sub_2230C3E54();
  v3 = sub_2230C3E34();

  return MEMORY[0x2822009F8](sub_2230AACB8, v3, v2);
}

uint64_t sub_2230AAE28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D055410, &qword_2230C4D90);
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2230AAEDC, 0, 0);
}

uint64_t sub_2230AAEDC()
{
  if (qword_27D055320 != -1)
  {
    swift_once();
  }

  *(v0 + 16) = 0xD000000000000011;
  *(v0 + 24) = 0x80000002230C6F30;
  *(v0 + 32) = xmmword_2230C54B0;
  *(v0 + 48) = 49;
  *(v0 + 56) = 0xE100000000000000;

  v2 = sub_2230B2D98(v1, (v0 + 16));
  v4 = v3;
  v6 = v5;
  v8 = v7;
  *(v0 + 96) = v2;
  *(v0 + 104) = v3;
  *(v0 + 112) = v7;
  v9 = swift_task_alloc();
  *(v0 + 120) = v9;
  *v9 = v0;
  v9[1] = sub_2230AB028;
  v10 = *(v0 + 88);

  return sub_2230BD768(v10, 4, 1, v2, v4, v6, v8);
}

uint64_t sub_2230AB028()
{
  v2 = *v1;

  v3 = *(v2 + 104);
  if (v0)
  {

    v4 = sub_2230AB3F4;
  }

  else
  {

    v4 = sub_2230AB1B8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2230AB1B8()
{
  v1 = *(v0 + 88);
  v2 = sub_2230C3594();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  sub_2230C3E64();
  *(v0 + 128) = sub_2230C3E54();
  v4 = sub_2230C3E34();

  return MEMORY[0x2822009F8](sub_2230AB290, v4, v3);
}

uint64_t sub_2230AB290()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];

  sub_2230AC4E8(v2, v1);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2230AC4E8(v1, v3);

  sub_2230C39C4();
  sub_2230AC558(v1);

  return MEMORY[0x2822009F8](sub_2230AB36C, 0, 0);
}

uint64_t sub_2230AB36C()
{
  sub_2230AC558(*(v0 + 88));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2230AB3F4()
{
  v1 = *(v0 + 88);
  v2 = sub_2230C3594();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  sub_2230C3E64();
  *(v0 + 128) = sub_2230C3E54();
  v4 = sub_2230C3E34();

  return MEMORY[0x2822009F8](sub_2230AB290, v4, v3);
}

uint64_t sub_2230AB4CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 32) = a4;
  v5 = swift_task_alloc();
  *(v4 + 40) = v5;
  *v5 = v4;
  v5[1] = sub_2230AB560;

  return static SettingsRemoteLocalization.upgradeIAPString()();
}

uint64_t sub_2230AB560(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 48) = a1;
  *(v3 + 56) = a2;

  return MEMORY[0x2822009F8](sub_2230AB660, 0, 0);
}

uint64_t sub_2230AB660()
{
  sub_2230C3E64();
  *(v0 + 64) = sub_2230C3E54();
  v2 = sub_2230C3E34();

  return MEMORY[0x2822009F8](sub_2230AB6F4, v2, v1);
}

uint64_t sub_2230AB6F4()
{
  v1 = v0[7];
  v2 = v0[6];

  swift_getKeyPath();
  swift_getKeyPath();
  v0[2] = v2;
  v0[3] = v1;

  sub_2230C39C4();
  v3 = v0[1];

  return v3();
}

uint64_t sub_2230AB7B4()
{
  v1 = OBJC_IVAR____TtC27GenerativeAssistantSettings16SubscriptionInfo__subscriptionSource;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0554E0, &unk_2230C5CF0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC27GenerativeAssistantSettings16SubscriptionInfo__storeURL;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0554E8, &unk_2230C5750);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC27GenerativeAssistantSettings16SubscriptionInfo__upgradeCTAText;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0554F0, &qword_2230C5880);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC27GenerativeAssistantSettings16SubscriptionInfo_appStoreDataSource));
  sub_2230AC5C0(v0 + OBJC_IVAR____TtC27GenerativeAssistantSettings16SubscriptionInfo_subscriptionDelegate);
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v7, v8);
}

uint64_t type metadata accessor for SubscriptionInfo(uint64_t a1)
{
  result = qword_27D0554A0;
  if (!qword_27D0554A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2230AB968(uint64_t a1)
{
  sub_2230ABADC(319, &qword_27D0554B0, &qword_27D0554B8, &unk_2230C5550);
  if (v1 <= 0x3F)
  {
    sub_2230ABADC(319, &qword_27D0554C0, &qword_27D055410, &qword_2230C4D90);
    if (v2 <= 0x3F)
    {
      sub_2230ABADC(319, &qword_27D0554C8, &qword_27D0554D0, &qword_2230C5560);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_2230ABADC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_2230C39D4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for SubscriptionInfo.Source(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SubscriptionInfo.Source(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2230ABC84()
{
  result = qword_27D0554D8;
  if (!qword_27D0554D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0554D8);
  }

  return result;
}

uint64_t sub_2230ABCE4@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for SubscriptionInfo(0);
  result = sub_2230C3994();
  *a2 = result;
  return result;
}

void sub_2230ABD24(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D055538, &qword_2230C5840);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - v6;
  (*(v5 + 16))(aBlock - v6, a1, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, v7, v4);
  aBlock[4] = sub_2230AD7A8;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2230AC0E0;
  aBlock[3] = &block_descriptor_88;
  v10 = _Block_copy(aBlock);

  [a2 valueWithCompletion_];
  _Block_release(v10);
}

void sub_2230ABED4(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D055510, &qword_2230C57A8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - v6;
  (*(v5 + 16))(aBlock - v6, a1, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, v7, v4);
  aBlock[4] = sub_2230AD4EC;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2230AC0E0;
  aBlock[3] = &block_descriptor_0;
  v10 = _Block_copy(aBlock);

  [a2 valueWithCompletion_];
  _Block_release(v10);
}

uint64_t sub_2230AC084(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v8 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  return sub_2230C3E44();
}

uint64_t sub_2230AC0E0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);

  swift_unknownObjectRetain();
  v8 = a4;
  v7(a2, a3, a4);

  return swift_unknownObjectRelease();
}

uint64_t sub_2230AC16C@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2230C39B4();

  *a2 = v4;
  return result;
}

uint64_t sub_2230AC1EC(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2230C39C4();
}

uint64_t sub_2230AC260()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2230C39B4();
}

uint64_t sub_2230AC2DC(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D055410, &qword_2230C4D90);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - v7;
  sub_2230AC4E8(a1, &v10 - v7);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2230AC4E8(v8, v6);

  sub_2230C39C4();
  return sub_2230AC558(v8);
}

double sub_2230AC3E4@<D0>(_OWORD *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2230C39B4();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_2230AC464(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2230C39C4();
}

uint64_t sub_2230AC4E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D055410, &qword_2230C4D90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2230AC558(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D055410, &qword_2230C4D90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2230AC5E8(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_2230AC694(uint64_t a1, char a2, char a3, uint64_t a4)
{
  *(v4 + 97) = a3;
  *(v4 + 96) = a2;
  *(v4 + 64) = a1;
  *(v4 + 72) = a4;
  return MEMORY[0x2822009F8](sub_2230AC6BC, 0, 0);
}

uint64_t sub_2230AC6BC()
{
  v1 = v0[8];
  v2 = swift_task_alloc();
  v0[10] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[11] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D055530, &qword_2230C5838);
  *v3 = v0;
  v3[1] = sub_2230AC7C4;

  return MEMORY[0x2822007B8](v0 + 7, 0, 0, 0xD00000000000003BLL, 0x80000002230C6F50, sub_2230AD71C, v2, v4);
}

uint64_t sub_2230AC7C4()
{

  return MEMORY[0x2822009F8](sub_2230AC8DC, 0, 0);
}

uint64_t sub_2230AC8DC()
{
  if (*(v0 + 56))
  {
LABEL_2:
    v1 = *(v0 + 8);

    return v1();
  }

  if (*(v0 + 97))
  {
    if (*(*(v0 + 72) + 16))
    {
      v3 = sub_2230A51D4(*(v0 + 96));
      if (v4)
      {
        sub_2230AD43C(*(*(v0 + 72) + 56) + 40 * v3, v0 + 16);
        v5 = sub_2230C3EF4();
        sub_2230AD498(v0 + 16);
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          goto LABEL_2;
        }
      }
    }
  }

  sub_2230AD3E8();
  swift_allocError();
  *v6 = 0;
  swift_willThrow();
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_2230ACA14(uint64_t a1, char a2, char a3, uint64_t a4)
{
  *(v4 + 97) = a3;
  *(v4 + 96) = a2;
  *(v4 + 64) = a1;
  *(v4 + 72) = a4;
  return MEMORY[0x2822009F8](sub_2230ACA3C, 0, 0);
}

uint64_t sub_2230ACA3C()
{
  v1 = v0[8];
  v2 = swift_task_alloc();
  v0[10] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[11] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D055500, &qword_2230C57A0);
  *v3 = v0;
  v3[1] = sub_2230ACB44;

  return MEMORY[0x2822007B8](v0 + 7, 0, 0, 0xD00000000000003BLL, 0x80000002230C6F50, sub_2230AD3E0, v2, v4);
}

uint64_t sub_2230ACB44()
{

  return MEMORY[0x2822009F8](sub_2230ACC5C, 0, 0);
}

uint64_t sub_2230ACC5C()
{
  if (*(v0 + 56))
  {
LABEL_2:
    v1 = *(v0 + 8);

    return v1();
  }

  if (*(v0 + 97))
  {
    if (*(*(v0 + 72) + 16))
    {
      v3 = sub_2230A51D4(*(v0 + 96));
      if (v4)
      {
        sub_2230AD43C(*(*(v0 + 72) + 56) + 40 * v3, v0 + 16);
        v5 = sub_2230C3EF4();
        sub_2230AD498(v0 + 16);
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          goto LABEL_2;
        }
      }
    }
  }

  sub_2230AD3E8();
  swift_allocError();
  *v6 = 0;
  swift_willThrow();
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_2230ACDB0()
{
  if (qword_27D055320 != -1)
  {
    swift_once();
  }

  *(v0 + 16) = 0xD000000000000011;
  *(v0 + 24) = 0x80000002230C6F30;
  *(v0 + 32) = xmmword_2230C54B0;
  *(v0 + 48) = 49;
  *(v0 + 56) = 0xE100000000000000;

  v2 = sub_2230B2D98(v1, (v0 + 16));
  v4 = v3;
  *(v0 + 64) = v2;
  *(v0 + 72) = v3;
  *(v0 + 80) = v5;
  if (v5)
  {

    MEMORY[0x223DD4D40](47, 0xE100000000000000);
    MEMORY[0x223DD4D40](0x6C646E7542707061, 0xEB00000000444965);
    v6 = sub_2230C3D74();
  }

  else
  {
    v6 = sub_2230C3D74();
  }

  v7 = [v4 stringForKey_];
  *(v0 + 88) = v7;

  v8 = swift_task_alloc();
  *(v0 + 96) = v8;
  *v8 = v0;
  v8[1] = sub_2230ACF84;

  return sub_2230ACA14(v7, 1, 1, v2);
}

uint64_t sub_2230ACF84(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v5 = sub_2230AD1AC;
  }

  else
  {

    *(v4 + 112) = a1;
    v5 = sub_2230AD0B4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2230AD0B4(uint64_t a1, uint64_t a2)
{
  v4 = v2[13];
  v3 = v2[14];
  v5 = v2[9];
  sub_2230C3D84();

  sub_2230AD67C(0, &qword_27D0554F8, 0x277CC1E70);
  v6 = sub_2230C3ED4();

  if (v4)
  {
  }

  else
  {
  }

  v7 = v2[1];

  return v7(v4 == 0);
}

uint64_t sub_2230AD1AC()
{
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[9];

  v4 = v0[1];

  return v4(0);
}

uint64_t sub_2230AD238(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2230A4F64;

  return sub_2230AAE28(a1, v4, v5, v6);
}

uint64_t objectdestroyTm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2230AD32C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2230AD85C;

  return sub_2230AB4CC(a1, v4, v5, v6);
}

unint64_t sub_2230AD3E8()
{
  result = qword_27D055508;
  if (!qword_27D055508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D055508);
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2230AD524(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_2230AD56C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_2230AD5C4(unint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D055520, &qword_2230C5828) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_2230A981C(a1, a2, v2 + v6, v7);
}

uint64_t sub_2230AD67C(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_2230AD6C4(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_2230C3FB4() & 1;
  }
}

uint64_t objectdestroy_67Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

id sub_2230AD86C(void *a1)
{
  v1 = a1;
  v2 = sub_2230C3D74();
  v3 = [v1 BOOLForKey_];

  return v3;
}

uint64_t sub_2230AD8F0(uint64_t a1)
{
  v2 = v1;
  v34 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0553D8, &qword_2230C4D30);
  MEMORY[0x28223BE20](v3 - 8);
  v32 = &v29 - v4;
  v5 = sub_2230C3914();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v30 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D055678, &qword_2230C5AB0);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v29 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0553A0, &qword_2230C4BC0);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v31 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v29 - v15;
  swift_getKeyPath();
  swift_getKeyPath();
  v33 = v2;
  v17 = v6;
  sub_2230C39B4();

  v18 = *(v9 + 56);
  sub_2230A2E80(v34, v11, &qword_27D0553A0, &qword_2230C4BC0);
  sub_2230A2E80(v16, &v11[v18], &qword_27D0553A0, &qword_2230C4BC0);
  v19 = *(v6 + 48);
  if (v19(v11, 1, v5) == 1)
  {
    sub_2230A2EE8(v16, &qword_27D0553A0, &qword_2230C4BC0);
    if (v19(&v11[v18], 1, v5) == 1)
    {
      return sub_2230A2EE8(v11, &qword_27D0553A0, &qword_2230C4BC0);
    }

    goto LABEL_6;
  }

  v21 = v31;
  sub_2230A2E80(v11, v31, &qword_27D0553A0, &qword_2230C4BC0);
  if (v19(&v11[v18], 1, v5) == 1)
  {
    sub_2230A2EE8(v16, &qword_27D0553A0, &qword_2230C4BC0);
    (*(v17 + 8))(v21, v5);
LABEL_6:
    sub_2230A2EE8(v11, &qword_27D055678, &qword_2230C5AB0);
LABEL_7:
    v22 = sub_2230C3E84();
    v23 = v32;
    (*(*(v22 - 8) + 56))(v32, 1, 1, v22);
    v24 = swift_allocObject();
    v24[2] = 0;
    v24[3] = 0;
    v24[4] = v33;

    sub_2230BEA64(0, 0, v23, &unk_2230C5B08, v24);
  }

  v25 = &v11[v18];
  v26 = v30;
  (*(v17 + 32))(v30, v25, v5);
  sub_2230B2D50(&qword_27D055680, MEMORY[0x277CEAC40], MEMORY[0x277CEAC48]);
  v27 = sub_2230C3D44();
  v28 = *(v17 + 8);
  v28(v26, v5);
  sub_2230A2EE8(v16, &qword_27D0553A0, &qword_2230C4BC0);
  v28(v21, v5);
  result = sub_2230A2EE8(v11, &qword_27D0553A0, &qword_2230C4BC0);
  if ((v27 & 1) == 0)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_2230ADDBC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2230C39B4();
}

uint64_t sub_2230ADE34()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2230C39B4();

  return v1;
}

uint64_t sub_2230ADED0(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2230C39B4();

  return v3;
}

uint64_t sub_2230ADF3C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2230C39B4();

  return v1;
}

uint64_t sub_2230ADFB4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0553D8, &qword_2230C4D30);
  MEMORY[0x28223BE20](v2 - 8);
  v119 = &v93 - v3;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0556A0, &qword_2230C5CB8);
  v94 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v93 = &v93 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0555E8, &qword_2230C5898);
  v116 = *(v5 - 8);
  v117 = v5;
  MEMORY[0x28223BE20](v5);
  v115 = &v93 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0555D8, &qword_2230C5890);
  v113 = *(v7 - 8);
  v114 = v7;
  MEMORY[0x28223BE20](v7);
  v112 = &v93 - v8;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0555C8, &qword_2230C5888);
  v110 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v109 = &v93 - v9;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0554F0, &qword_2230C5880);
  v107 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v106 = &v93 - v10;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D055578, &qword_2230C5870);
  v104 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v103 = &v93 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0553A8, &qword_2230C4C00);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v93 - v13;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0553A0, &qword_2230C4BC0);
  v15 = MEMORY[0x28223BE20](v102);
  v101 = &v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v100 = &v93 - v17;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D055568, &qword_2230C5868);
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v96 = &v93 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0557D0, &qword_2230C5860);
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v93 - v22;
  if (qword_280D38F68 != -1)
  {
    v92 = v21;
    swift_once();
    v21 = v92;
  }

  v99 = v14;
  v120 = v21;
  v24 = qword_280D39238;
  if (qword_280D39238)
  {
    v25 = sub_2230C3D74();
    v26 = [v24 BOOLForKey_];
  }

  else
  {
    v26 = 0;
  }

  v27 = OBJC_IVAR____TtC27GenerativeAssistantSettings36GenerativeAssistantSettingsViewModel__isEnabled;
  LOBYTE(v126[0]) = v26;
  sub_2230C39A4();
  v28 = *(v20 + 32);
  v29 = v120;
  v28(v1 + v27, v23, v120);
  v118 = v24;
  if (v24)
  {
    v30 = sub_2230C3D74();
    v31 = [v24 0x2784D4E78];

    v32 = OBJC_IVAR____TtC27GenerativeAssistantSettings36GenerativeAssistantSettingsViewModel__useConfirmationPrompts;
    LOBYTE(v126[0]) = v31;
    sub_2230C39A4();
    v28(v1 + v32, v23, v29);
    v33 = sub_2230C3D74();
    v34 = [v24 0x2784D4E78];
  }

  else
  {
    v35 = OBJC_IVAR____TtC27GenerativeAssistantSettings36GenerativeAssistantSettingsViewModel__useConfirmationPrompts;
    LOBYTE(v126[0]) = 0;
    sub_2230C39A4();
    v28(v1 + v35, v23, v29);
    v34 = 0;
  }

  v36 = OBJC_IVAR____TtC27GenerativeAssistantSettings36GenerativeAssistantSettingsViewModel__setupPrompt;
  LOBYTE(v126[0]) = v34;
  sub_2230C39A4();
  v28(v1 + v36, v23, v29);
  v37 = OBJC_IVAR____TtC27GenerativeAssistantSettings36GenerativeAssistantSettingsViewModel__controlToHighlight;
  LOBYTE(v126[0]) = 9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D055628, &qword_2230C5968);
  v38 = v96;
  sub_2230C39A4();
  (*(v97 + 32))(v1 + v37, v38, v98);
  sub_2230C3774();
  sub_2230C3764();
  v39 = v99;
  sub_2230C3744();

  v40 = sub_2230C3984();
  v41 = *(v40 - 8);
  if ((*(v41 + 48))(v39, 1, v40) == 1)
  {
    sub_2230A2EE8(v39, &qword_27D0553A8, &qword_2230C4C00);
    v42 = sub_2230C3914();
    v43 = v100;
    (*(*(v42 - 8) + 56))(v100, 1, 1, v42);
  }

  else
  {
    v43 = v100;
    sub_2230C3944();
    (*(v41 + 8))(v39, v40);
  }

  v44 = OBJC_IVAR____TtC27GenerativeAssistantSettings36GenerativeAssistantSettingsViewModel__credentials;
  sub_2230A2E80(v43, v101, &qword_27D0553A0, &qword_2230C4BC0);
  v45 = v103;
  sub_2230C39A4();
  sub_2230A2EE8(v43, &qword_27D0553A0, &qword_2230C4BC0);
  (*(v104 + 32))(v1 + v44, v45, v105);
  v46 = OBJC_IVAR____TtC27GenerativeAssistantSettings36GenerativeAssistantSettingsViewModel__showingSignInFailureAlert;
  LOBYTE(v126[0]) = 0;
  sub_2230C39A4();
  v47 = v120;
  v28(v1 + v46, v23, v120);
  v48 = OBJC_IVAR____TtC27GenerativeAssistantSettings36GenerativeAssistantSettingsViewModel__showSignInFailedDueToWorkspaceRestriction;
  LOBYTE(v126[0]) = 0;
  sub_2230C39A4();
  v28(v1 + v48, v23, v47);
  v49 = OBJC_IVAR____TtC27GenerativeAssistantSettings36GenerativeAssistantSettingsViewModel__showingSignOutAlert;
  LOBYTE(v126[0]) = 0;
  sub_2230C39A4();
  v28(v1 + v49, v23, v47);
  v50 = OBJC_IVAR____TtC27GenerativeAssistantSettings36GenerativeAssistantSettingsViewModel__showManageSubscription;
  LOBYTE(v126[0]) = 0;
  sub_2230C39A4();
  v28(v1 + v50, v23, v47);
  v51 = OBJC_IVAR____TtC27GenerativeAssistantSettings36GenerativeAssistantSettingsViewModel__adamID;
  v126[0] = 0uLL;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0554D0, &qword_2230C5560);
  v52 = v106;
  sub_2230C39A4();
  (*(v107 + 32))(v1 + v51, v52, v108);
  v53 = OBJC_IVAR____TtC27GenerativeAssistantSettings36GenerativeAssistantSettingsViewModel__showRateLimitStatus;
  LOBYTE(v126[0]) = 0;
  sub_2230C39A4();
  v28(v1 + v53, v23, v47);
  v54 = OBJC_IVAR____TtC27GenerativeAssistantSettings36GenerativeAssistantSettingsViewModel__isRateLimited;
  LOBYTE(v126[0]) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D055648, &qword_2230C5970);
  v55 = v109;
  sub_2230C39A4();
  (*(v110 + 32))(v1 + v54, v55, v111);
  v56 = OBJC_IVAR____TtC27GenerativeAssistantSettings36GenerativeAssistantSettingsViewModel__userDisplayedRateLimit;
  LOBYTE(v126[0]) = 0;
  v57 = v112;
  sub_2230C39A4();
  (*(v113 + 32))(v1 + v56, v57, v114);
  v58 = OBJC_IVAR____TtC27GenerativeAssistantSettings36GenerativeAssistantSettingsViewModel__userAccountStatus;
  LOBYTE(v126[0]) = 0;
  v59 = v115;
  sub_2230C39A4();
  (*(v116 + 32))(v1 + v58, v59, v117);
  *(v1 + OBJC_IVAR____TtC27GenerativeAssistantSettings36GenerativeAssistantSettingsViewModel_lastKnownRateLimitState) = 3;
  v60 = OBJC_IVAR____TtC27GenerativeAssistantSettings36GenerativeAssistantSettingsViewModel_subscription;
  *(v1 + OBJC_IVAR____TtC27GenerativeAssistantSettings36GenerativeAssistantSettingsViewModel_subscription) = 0;
  v61 = OBJC_IVAR____TtC27GenerativeAssistantSettings36GenerativeAssistantSettingsViewModel_lastRateLimitResponseDate;
  v62 = sub_2230C3604();
  v63 = *(*(v62 - 8) + 56);
  v63(v1 + v61, 1, 1, v62);
  v63(v1 + OBJC_IVAR____TtC27GenerativeAssistantSettings36GenerativeAssistantSettingsViewModel_pendingRateLimitFetchStart, 1, 1, v62);
  swift_beginAccess();
  LOBYTE(aBlock[0]) = 0;
  sub_2230C39A4();
  swift_endAccess();
  if (qword_27D055320 != -1)
  {
    swift_once();
  }

  *&v126[0] = 0xD000000000000011;
  *(&v126[0] + 1) = 0x80000002230C6F30;
  v126[1] = xmmword_2230C54B0;
  v127 = 49;
  v128 = 0xE100000000000000;

  v65 = sub_2230B2D98(v64, v126);
  v67 = v66;
  v69 = v68;
  v71 = v70;
  v122 = &type metadata for AppStoreDaemonDataSource;
  v123 = &off_2836719E8;
  v72 = swift_allocObject();
  aBlock[0] = v72;
  v72[2] = v65;
  v72[3] = v67;
  v72[4] = v69;
  v72[5] = v71;
  type metadata accessor for SubscriptionInfo(0);
  v73 = swift_allocObject();
  v74 = __swift_mutable_project_boxed_opaque_existential_1(aBlock, &type metadata for AppStoreDaemonDataSource);
  MEMORY[0x28223BE20](v74);
  v76 = (&v93 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v77 + 16))(v76);
  v78 = sub_2230B3048(2, *v76, v76[1], v76[2], v76[3], v73);
  __swift_destroy_boxed_opaque_existential_0(aBlock);
  swift_beginAccess();
  v125 = v78;
  sub_2230C39A4();
  swift_endAccess();
  type metadata accessor for BillingInfo();
  v79 = swift_allocObject();
  swift_weakInit();
  *(v79 + 24) = 256;
  *(v79 + 26) = 0;
  *(v1 + OBJC_IVAR____TtC27GenerativeAssistantSettings36GenerativeAssistantSettingsViewModel_billingInfo) = v79;
  v80 = v118;
  if (v118)
  {
    swift_getKeyPath();
    v81 = v93;
    sub_2230C3554();

    swift_allocObject();
    swift_weakInit();
    sub_2230B3CE0();
    v82 = v95;
    v80 = sub_2230C39E4();

    (*(v94 + 8))(v81, v82);
  }

  *(v1 + v60) = v80;

  swift_getKeyPath();
  swift_getKeyPath();
  sub_2230C39B4();

  *(aBlock[0] + OBJC_IVAR____TtC27GenerativeAssistantSettings16SubscriptionInfo_subscriptionDelegate + 8) = &off_283671AA0;
  swift_unknownObjectWeakAssign();

  swift_weakAssign();
  v83 = sub_2230C3E84();
  v84 = v119;
  (*(*(v83 - 8) + 56))(v119, 1, 1, v83);
  v85 = swift_allocObject();
  v85[2] = 0;
  v85[3] = 0;
  v85[4] = v1;

  sub_2230BEA64(0, 0, v84, &unk_2230C5CC0, v85);

  v86 = [objc_opt_self() defaultCenter];
  v87 = *MEMORY[0x277D25CA0];
  v88 = [objc_opt_self() mainQueue];
  v123 = sub_2230B3CB0;
  v124 = v1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2230AF31C;
  v122 = &block_descriptor_1;
  v89 = _Block_copy(aBlock);

  v90 = [v86 addObserverForName:v87 object:0 queue:v88 usingBlock:v89];
  _Block_release(v89);
  swift_unknownObjectRelease();

  return v1;
}

uint64_t sub_2230AF19C(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  if (!swift_weakLoadStrong() || (swift_getKeyPath(), swift_getKeyPath(), sub_2230C39B4(), , , result = , v4 != v2))
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      swift_getKeyPath();
      swift_getKeyPath();

      sub_2230C39C4();
      type metadata accessor for GenerativeAssistantSettingsUserDefaults();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_2230C39B4();

      static GenerativeAssistantSettingsUserDefaults.setEnabled(_:)(v2);
    }
  }

  return result;
}

uint64_t sub_2230AF31C(uint64_t a1, uint64_t a2)
{
  v3 = sub_2230C34D4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_2230C34C4();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2230AF410()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0553D8, &qword_2230C4D30);
  MEMORY[0x28223BE20](v0 - 8);
  v31 = &v30 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0553A8, &qword_2230C4C00);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v30 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0553A0, &qword_2230C4BC0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v30 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v30 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v30 - v15;
  v17 = sub_2230C3714();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2230C3704();
  v21 = sub_2230C36F4();
  (*(v18 + 8))(v20, v17);
  if (v21)
  {
    sub_2230C3774();
    sub_2230C3764();
    sub_2230C3744();

    v22 = sub_2230C3984();
    v23 = *(v22 - 8);
    if ((*(v23 + 48))(v4, 1, v22) == 1)
    {
      sub_2230A2EE8(v4, &qword_27D0553A8, &qword_2230C4C00);
      v24 = sub_2230C3914();
      (*(*(v24 - 8) + 56))(v16, 1, 1, v24);
    }

    else
    {
      sub_2230C3944();
      (*(v23 + 8))(v4, v22);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_2230C39B4();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_2230A2E80(v16, v11, &qword_27D0553A0, &qword_2230C4BC0);

    sub_2230C39C4();
    sub_2230AD8F0(v14);
    sub_2230A2EE8(v14, &qword_27D0553A0, &qword_2230C4BC0);
    return sub_2230A2EE8(v16, &qword_27D0553A0, &qword_2230C4BC0);
  }

  else
  {
    v25 = sub_2230C3914();
    (*(*(v25 - 8) + 56))(v14, 1, 1, v25);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_2230C39B4();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_2230A2E80(v14, v8, &qword_27D0553A0, &qword_2230C4BC0);

    sub_2230C39C4();
    sub_2230AD8F0(v11);
    sub_2230A2EE8(v11, &qword_27D0553A0, &qword_2230C4BC0);
    sub_2230A2EE8(v14, &qword_27D0553A0, &qword_2230C4BC0);
    v26 = sub_2230C3E84();
    v27 = v31;
    (*(*(v26 - 8) + 56))(v31, 1, 1, v26);
    v28 = swift_allocObject();
    *(v28 + 16) = 0;
    *(v28 + 24) = 0;
    sub_2230BEA64(0, 0, v27, &unk_2230C5C68, v28);
  }
}

uint64_t sub_2230AF9CC()
{
  type metadata accessor for ExternalAIAuthenticatorHelper(0);
  swift_allocObject();
  *(v0 + 16) = sub_2230A20E4();
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_2230AFA8C;

  return sub_2230A2898();
}

uint64_t sub_2230AFA8C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_2230AFB9C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0553D8, &qword_2230C4D30);
  MEMORY[0x28223BE20](v2 - 8);
  v90 = &v80 - v3;
  v4 = sub_2230C3604();
  v5 = *(v4 - 8);
  v96 = v4;
  v97 = v5;
  MEMORY[0x28223BE20](v4);
  v84 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D055340, &qword_2230C58A0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v89 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v91 = &v80 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v80 - v12;
  v95 = sub_2230C38D4();
  v93 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v83 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D055688, &qword_2230C5BE8);
  MEMORY[0x28223BE20](v92);
  v94 = &v80 - v15;
  v87 = sub_2230C38F4();
  v86 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v85 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D055690, &qword_2230C5BF0);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v88 = &v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v98 = &v80 - v21;
  MEMORY[0x28223BE20](v20);
  v99 = &v80 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0553A0, &qword_2230C4BC0);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v26 = &v80 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v80 - v27;
  swift_getKeyPath();
  swift_getKeyPath();
  v29 = v1;
  sub_2230C39B4();

  v30 = sub_2230C3914();
  v31 = *(*(v30 - 8) + 48);
  v32 = v31(v28, 1, v30);
  sub_2230A2EE8(v28, &qword_27D0553A0, &qword_2230C4BC0);
  if (v32 == 1)
  {
    goto LABEL_2;
  }

  v82 = v13;
  swift_getKeyPath();
  swift_getKeyPath();
  v81 = v1;
  sub_2230C39B4();

  if (v31(v26, 1, v30))
  {
    sub_2230A2EE8(v26, &qword_27D0553A0, &qword_2230C4BC0);
    v41 = 1;
    v43 = v94;
    v42 = v95;
    v44 = v93;
    v45 = v99;
  }

  else
  {
    v50 = v85;
    sub_2230C3904();
    sub_2230A2EE8(v26, &qword_27D0553A0, &qword_2230C4BC0);
    v45 = v99;
    sub_2230C38E4();
    (*(v86 + 8))(v50, v87);
    v41 = 0;
    v43 = v94;
    v42 = v95;
    v44 = v93;
  }

  v51 = v98;
  v52 = *(v44 + 56);
  v52(v45, v41, 1, v42);
  (*(v44 + 104))(v51, *MEMORY[0x277CEAC20], v42);
  v52(v51, 0, 1, v42);
  v53 = *(v92 + 48);
  sub_2230A2E80(v45, v43, &qword_27D055690, &qword_2230C5BF0);
  sub_2230A2E80(v51, v43 + v53, &qword_27D055690, &qword_2230C5BF0);
  v54 = *(v44 + 48);
  if (v54(v43, 1, v42) == 1)
  {
    sub_2230A2EE8(v51, &qword_27D055690, &qword_2230C5BF0);
    sub_2230A2EE8(v45, &qword_27D055690, &qword_2230C5BF0);
    if (v54(v43 + v53, 1, v42) == 1)
    {
      sub_2230A2EE8(v43, &qword_27D055690, &qword_2230C5BF0);
      v29 = v81;
      v13 = v82;
      goto LABEL_2;
    }

LABEL_18:
    sub_2230A2EE8(v43, &qword_27D055688, &qword_2230C5BE8);
    return;
  }

  v55 = v88;
  sub_2230A2E80(v43, v88, &qword_27D055690, &qword_2230C5BF0);
  if (v54(v43 + v53, 1, v42) == 1)
  {
    sub_2230A2EE8(v98, &qword_27D055690, &qword_2230C5BF0);
    sub_2230A2EE8(v99, &qword_27D055690, &qword_2230C5BF0);
    (*(v44 + 8))(v55, v42);
    goto LABEL_18;
  }

  v66 = v43 + v53;
  v67 = v83;
  (*(v44 + 32))(v83, v66, v42);
  sub_2230B2D50(&qword_27D055698, MEMORY[0x277CEAC30], MEMORY[0x277CEAC38]);
  v68 = v55;
  v69 = sub_2230C3D44();
  v70 = *(v44 + 8);
  v70(v67, v42);
  sub_2230A2EE8(v98, &qword_27D055690, &qword_2230C5BF0);
  sub_2230A2EE8(v99, &qword_27D055690, &qword_2230C5BF0);
  v70(v68, v42);
  sub_2230A2EE8(v43, &qword_27D055690, &qword_2230C5BF0);
  v29 = v81;
  v13 = v82;
  if ((v69 & 1) == 0)
  {
    return;
  }

LABEL_2:
  v33 = OBJC_IVAR____TtC27GenerativeAssistantSettings36GenerativeAssistantSettingsViewModel_pendingRateLimitFetchStart;
  v34 = v29;
  swift_beginAccess();
  sub_2230A2E80(v29 + v33, v13, &qword_27D055340, &qword_2230C58A0);
  v35 = v96;
  v36 = v97;
  v37 = *(v97 + 48);
  v38 = v37(v13, 1, v96);
  sub_2230A2EE8(v13, &qword_27D055340, &qword_2230C58A0);
  if (v38 == 1)
  {
    v39 = OBJC_IVAR____TtC27GenerativeAssistantSettings36GenerativeAssistantSettingsViewModel_lastRateLimitResponseDate;
    swift_beginAccess();
    v40 = v91;
    sub_2230A2E80(v34 + v39, v91, &qword_27D055340, &qword_2230C58A0);
    if (v37(v40, 1, v35) == 1)
    {
      sub_2230A2EE8(v40, &qword_27D055340, &qword_2230C58A0);
LABEL_31:
      if (qword_27D055338 != -1)
      {
        swift_once();
      }

      v71 = sub_2230C38A4();
      __swift_project_value_buffer(v71, qword_27D0572C0);
      v72 = sub_2230C3884();
      v73 = sub_2230C3EA4();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        *v74 = 0;
        _os_log_impl(&dword_22309D000, v72, v73, "Starting rate limit fetch", v74, 2u);
        MEMORY[0x223DD5490](v74, -1, -1);
      }

      v75 = v89;
      sub_2230C35F4();
      v76 = *(v36 + 56);
      v76(v75, 0, 1, v35);
      swift_beginAccess();
      sub_2230B2B38(v75, v34 + v33);
      swift_endAccess();
      v76(v75, 1, 1, v35);
      swift_beginAccess();
      sub_2230B2B38(v75, v34 + v39);
      swift_endAccess();
      v77 = sub_2230C3E84();
      v78 = v90;
      (*(*(v77 - 8) + 56))(v90, 1, 1, v77);
      v79 = swift_allocObject();
      v79[2] = 0;
      v79[3] = 0;
      v79[4] = v34;

      sub_2230BEA64(0, 0, v78, &unk_2230C5C00, v79);

      return;
    }

    v56 = v84;
    (*(v36 + 32))(v84, v40, v35);
    sub_2230C35D4();
    v58 = fabs(v57);
    if (v58 >= 2.0)
    {
      (*(v36 + 8))(v56, v35);
      goto LABEL_31;
    }

    if (qword_27D055338 != -1)
    {
      swift_once();
    }

    v59 = sub_2230C38A4();
    __swift_project_value_buffer(v59, qword_27D0572C0);
    v60 = sub_2230C3884();
    v61 = sub_2230C3EA4();
    if (!os_log_type_enabled(v60, v61))
    {
LABEL_27:

      (*(v36 + 8))(v56, v35);
      return;
    }

    v62 = swift_slowAlloc();
    *v62 = 134349056;
    v63 = v58 * 1000.0;
    if (COERCE_UNSIGNED_INT64(v58 * 1000.0) >> 52 > 0x7FE)
    {
      __break(1u);
    }

    else if (v63 > -9.22337204e18)
    {
      if (v63 < 9.22337204e18)
      {
        *(v62 + 4) = v63;
        v64 = v61;
        v65 = v62;
        _os_log_impl(&dword_22309D000, v60, v64, "Quelling rate limit fetch that occurred only %{public}ldms ago.", v62, 0xCu);
        MEMORY[0x223DD5490](v65, -1, -1);
        goto LABEL_27;
      }

LABEL_38:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_38;
  }

  if (qword_27D055338 != -1)
  {
    swift_once();
  }

  v46 = sub_2230C38A4();
  __swift_project_value_buffer(v46, qword_27D0572C0);
  v47 = sub_2230C3884();
  v48 = sub_2230C3EA4();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    *v49 = 0;
    _os_log_impl(&dword_22309D000, v47, v48, "Rate limit fetch currently pending; quelling new request", v49, 2u);
    MEMORY[0x223DD5490](v49, -1, -1);
  }
}

uint64_t sub_2230B0980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D055340, &qword_2230C58A0);
  *(v4 + 72) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2230B0A1C, 0, 0);
}

uint64_t sub_2230B0A1C()
{
  *(v0 + 80) = sub_2230C3E64();
  *(v0 + 88) = sub_2230C3E54();
  v2 = sub_2230C3E34();

  return MEMORY[0x2822009F8](sub_2230B0AB4, v2, v1);
}

uint64_t sub_2230B0AB4()
{

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 120) = 0;

  sub_2230C39C4();
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_2230B0B98;

  return sub_2230B3570();
}

uint64_t sub_2230B0B98(char a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = sub_2230B1098;
  }

  else
  {
    *(v4 + 123) = a1;
    v5 = sub_2230B0CC4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2230B0CC4()
{
  v28 = v0;
  v1 = *(v0 + 123);
  *(v0 + 124) = v1;
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);
  v4 = sub_2230C3604();
  v5 = *(*(v4 - 8) + 56);
  v5(v2, 1, 1, v4);
  v6 = OBJC_IVAR____TtC27GenerativeAssistantSettings36GenerativeAssistantSettingsViewModel_pendingRateLimitFetchStart;
  swift_beginAccess();
  sub_2230B2B38(v2, v3 + v6);
  swift_endAccess();
  sub_2230C35F4();
  v5(v2, 0, 1, v4);
  v7 = OBJC_IVAR____TtC27GenerativeAssistantSettings36GenerativeAssistantSettingsViewModel_lastRateLimitResponseDate;
  swift_beginAccess();
  sub_2230B2B38(v2, v3 + v7);
  swift_endAccess();
  if (v1 == 2)
  {
    if (qword_27D055338 != -1)
    {
      swift_once();
    }

    v8 = sub_2230C38A4();
    __swift_project_value_buffer(v8, qword_27D0572C0);
    v9 = sub_2230C3884();
    v10 = sub_2230C3EB4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_22309D000, v9, v10, "Not updating rate limit state for invalid response; using prior state", v11, 2u);
      MEMORY[0x223DD5490](v11, -1, -1);
    }

    *(v0 + 112) = sub_2230C3E54();
    v12 = sub_2230C3E34();
    v14 = v13;
    v15 = sub_2230B138C;
  }

  else
  {
    if (v1)
    {
      v16 = 2;
    }

    else
    {
      v16 = 1;
    }

    *(*(v0 + 64) + OBJC_IVAR____TtC27GenerativeAssistantSettings36GenerativeAssistantSettingsViewModel_lastKnownRateLimitState) = v16;
    if (qword_27D055338 != -1)
    {
      swift_once();
    }

    v17 = sub_2230C38A4();
    __swift_project_value_buffer(v17, qword_27D0572C0);
    v18 = sub_2230C3884();
    v19 = sub_2230C3EA4();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v27 = v21;
      *v20 = 136446210;
      if (v1)
      {
        v22 = 0x646574696D694CLL;
      }

      else
      {
        v22 = 0x696D694C20746F4ELL;
      }

      if (v1)
      {
        v23 = 0xE700000000000000;
      }

      else
      {
        v23 = 0xEB00000000646574;
      }

      v24 = sub_22309F9F4(v22, v23, &v27);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_22309D000, v18, v19, "Updating rate limit state: %{public}s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x223DD5490](v21, -1, -1);
      MEMORY[0x223DD5490](v20, -1, -1);
    }

    *(v0 + 104) = sub_2230C3E54();
    v12 = sub_2230C3E34();
    v14 = v25;
    v15 = sub_2230B12BC;
  }

  return MEMORY[0x2822009F8](v15, v12, v14);
}

uint64_t sub_2230B1098()
{
  *(v0 + 124) = 2;
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = sub_2230C3604();
  v4 = *(*(v3 - 8) + 56);
  v4(v1, 1, 1, v3);
  v5 = OBJC_IVAR____TtC27GenerativeAssistantSettings36GenerativeAssistantSettingsViewModel_pendingRateLimitFetchStart;
  swift_beginAccess();
  sub_2230B2B38(v1, v2 + v5);
  swift_endAccess();
  sub_2230C35F4();
  v4(v1, 0, 1, v3);
  v6 = OBJC_IVAR____TtC27GenerativeAssistantSettings36GenerativeAssistantSettingsViewModel_lastRateLimitResponseDate;
  swift_beginAccess();
  sub_2230B2B38(v1, v2 + v6);
  swift_endAccess();
  if (qword_27D055338 != -1)
  {
    swift_once();
  }

  v7 = sub_2230C38A4();
  __swift_project_value_buffer(v7, qword_27D0572C0);
  v8 = sub_2230C3884();
  v9 = sub_2230C3EB4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_22309D000, v8, v9, "Not updating rate limit state for invalid response; using prior state", v10, 2u);
    MEMORY[0x223DD5490](v10, -1, -1);
  }

  *(v0 + 112) = sub_2230C3E54();
  v12 = sub_2230C3E34();

  return MEMORY[0x2822009F8](sub_2230B138C, v12, v11);
}

uint64_t sub_2230B12BC()
{
  v1 = *(v0 + 124);

  if (v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 122) = v2;

  sub_2230C39C4();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2230B138C()
{
  v1 = *(v0 + 64);

  v2 = *(v1 + OBJC_IVAR____TtC27GenerativeAssistantSettings36GenerativeAssistantSettingsViewModel_lastKnownRateLimitState);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 121) = v2;

  sub_2230C39C4();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2230B1458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v5 = sub_2230C38D4();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  v4[8] = swift_task_alloc();
  v6 = sub_2230C38F4();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v7 = sub_2230C3914();
  v4[12] = v7;
  v4[13] = *(v7 - 8);
  v4[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0553A0, &qword_2230C4BC0);
  v4[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2230B1614, 0, 0);
}

uint64_t sub_2230B1614()
{
  v0[16] = *(v0[4] + OBJC_IVAR____TtC27GenerativeAssistantSettings36GenerativeAssistantSettingsViewModel_billingInfo);

  v1 = swift_task_alloc();
  v0[17] = v1;
  *v1 = v0;
  v1[1] = sub_2230B16C0;

  return sub_2230B3DF8();
}

uint64_t sub_2230B16C0()
{

  return MEMORY[0x2822009F8](sub_2230B17D8, 0, 0);
}

uint64_t sub_2230B17D8()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[13];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2230C39B4();

  v4 = v0[2];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2230C39B4();

  v5 = (*(v3 + 48))(v1, 1, v2);
  v6 = v0[15];
  if (v5)
  {
    sub_2230A2EE8(v0[15], &qword_27D0553A0, &qword_2230C4BC0);
    v7 = 2;
  }

  else
  {
    v8 = v0[13];
    v9 = v0[11];
    v20 = v0[14];
    v21 = v0[12];
    v10 = v0[10];
    v11 = v0[7];
    v18 = v0[8];
    v19 = v0[9];
    v12 = v0[5];
    v13 = v0[6];
    (*(v8 + 16))(v20, v6);
    sub_2230A2EE8(v6, &qword_27D0553A0, &qword_2230C4BC0);
    sub_2230C3904();
    sub_2230C38E4();
    (*(v10 + 8))(v9, v19);
    (*(v13 + 104))(v11, *MEMORY[0x277CEAC28], v12);
    v14 = sub_2230C38C4();
    v15 = *(v13 + 8);
    v15(v11, v12);
    v15(v18, v12);
    (*(v8 + 8))(v20, v21);
    v7 = v14 & 1;
  }

  *(v4 + OBJC_IVAR____TtC27GenerativeAssistantSettings16SubscriptionInfo_accountReportsPaidPlan) = v7;

  swift_getKeyPath();
  swift_getKeyPath();
  sub_2230C39B4();

  v0[18] = v0[3];
  v16 = swift_task_alloc();
  v0[19] = v16;
  *v16 = v0;
  v16[1] = sub_2230B1AC4;

  return sub_2230AA888();
}

uint64_t sub_2230B1AC4(char a1)
{
  *(*v1 + 170) = a1;

  return MEMORY[0x2822009F8](sub_2230B1BE4, 0, 0);
}

uint64_t sub_2230B1BE4()
{
  sub_2230C3E64();
  *(v0 + 160) = sub_2230C3E54();
  v2 = sub_2230C3E34();

  return MEMORY[0x2822009F8](sub_2230B1C78, v2, v1);
}

uint64_t sub_2230B1C78()
{
  v1 = *(v0 + 170);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 168) = (v1 & 0xFE) != 2;

  sub_2230C39C4();
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 169) = v1 == 2;

  sub_2230C39C4();
  sub_2230AFB9C();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t GenerativeAssistantSettingsViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC27GenerativeAssistantSettings36GenerativeAssistantSettingsViewModel__isEnabled;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0557D0, &qword_2230C5860);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC27GenerativeAssistantSettings36GenerativeAssistantSettingsViewModel__useConfirmationPrompts, v2);
  v3(v0 + OBJC_IVAR____TtC27GenerativeAssistantSettings36GenerativeAssistantSettingsViewModel__setupPrompt, v2);
  v3(v0 + OBJC_IVAR____TtC27GenerativeAssistantSettings36GenerativeAssistantSettingsViewModel__showOnboarding, v2);
  v4 = OBJC_IVAR____TtC27GenerativeAssistantSettings36GenerativeAssistantSettingsViewModel__controlToHighlight;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D055568, &qword_2230C5868);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtC27GenerativeAssistantSettings36GenerativeAssistantSettingsViewModel__credentials;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D055578, &qword_2230C5870);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v3(v0 + OBJC_IVAR____TtC27GenerativeAssistantSettings36GenerativeAssistantSettingsViewModel__showingSignInFailureAlert, v2);
  v3(v0 + OBJC_IVAR____TtC27GenerativeAssistantSettings36GenerativeAssistantSettingsViewModel__showSignInFailedDueToWorkspaceRestriction, v2);
  v3(v0 + OBJC_IVAR____TtC27GenerativeAssistantSettings36GenerativeAssistantSettingsViewModel__showingSignOutAlert, v2);
  v8 = OBJC_IVAR____TtC27GenerativeAssistantSettings36GenerativeAssistantSettingsViewModel__subscriptionInfo;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0555A0, &qword_2230C5878);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v3(v0 + OBJC_IVAR____TtC27GenerativeAssistantSettings36GenerativeAssistantSettingsViewModel__showManageSubscription, v2);
  v10 = OBJC_IVAR____TtC27GenerativeAssistantSettings36GenerativeAssistantSettingsViewModel__adamID;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0554F0, &qword_2230C5880);
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  v3(v0 + OBJC_IVAR____TtC27GenerativeAssistantSettings36GenerativeAssistantSettingsViewModel__showRateLimitStatus, v2);
  v12 = OBJC_IVAR____TtC27GenerativeAssistantSettings36GenerativeAssistantSettingsViewModel__isRateLimited;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0555C8, &qword_2230C5888);
  (*(*(v13 - 8) + 8))(v0 + v12, v13);
  v14 = OBJC_IVAR____TtC27GenerativeAssistantSettings36GenerativeAssistantSettingsViewModel__userDisplayedRateLimit;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0555D8, &qword_2230C5890);
  (*(*(v15 - 8) + 8))(v0 + v14, v15);
  v16 = OBJC_IVAR____TtC27GenerativeAssistantSettings36GenerativeAssistantSettingsViewModel__userAccountStatus;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0555E8, &qword_2230C5898);
  (*(*(v17 - 8) + 8))(v0 + v16, v17);

  sub_2230A2EE8(v0 + OBJC_IVAR____TtC27GenerativeAssistantSettings36GenerativeAssistantSettingsViewModel_lastRateLimitResponseDate, &qword_27D055340, &qword_2230C58A0);
  sub_2230A2EE8(v0 + OBJC_IVAR____TtC27GenerativeAssistantSettings36GenerativeAssistantSettingsViewModel_pendingRateLimitFetchStart, &qword_27D055340, &qword_2230C58A0);
  return v0;
}

uint64_t GenerativeAssistantSettingsViewModel.__deallocating_deinit()
{
  GenerativeAssistantSettingsViewModel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2230B2204@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for GenerativeAssistantSettingsViewModel(0);
  result = sub_2230C3994();
  *a2 = result;
  return result;
}

uint64_t type metadata accessor for GenerativeAssistantSettingsViewModel(uint64_t a1)
{
  result = qword_27D055610;
  if (!qword_27D055610)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2230B2298(uint64_t a1)
{
  sub_2230B2644(319, &qword_27D0557C0, MEMORY[0x277D839B0]);
  if (v1 <= 0x3F)
  {
    sub_2230ABADC(319, &qword_27D055620, &qword_27D055628, &qword_2230C5968);
    if (v2 <= 0x3F)
    {
      sub_2230ABADC(319, &qword_27D055630, &qword_27D0553A0, &qword_2230C4BC0);
      if (v3 <= 0x3F)
      {
        sub_2230B2690(319, &qword_27D055638, type metadata accessor for SubscriptionInfo, MEMORY[0x277CBCED0]);
        if (v4 <= 0x3F)
        {
          sub_2230ABADC(319, &qword_27D0554C8, &qword_27D0554D0, &qword_2230C5560);
          if (v5 <= 0x3F)
          {
            sub_2230ABADC(319, &qword_27D055640, &qword_27D055648, &qword_2230C5970);
            if (v6 <= 0x3F)
            {
              sub_2230B2644(319, &qword_27D055650, &type metadata for RateLimitState);
              if (v7 <= 0x3F)
              {
                sub_2230B2644(319, &qword_27D055658, &type metadata for UserAccountStatus);
                if (v8 <= 0x3F)
                {
                  sub_2230B2690(319, &qword_27D055660, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
                  if (v9 <= 0x3F)
                  {
                    swift_updateClassMetadata2();
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

void sub_2230B2644(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_2230C39D4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2230B2690(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_2230B2718()
{
  result = qword_27D055668;
  if (!qword_27D055668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D055668);
  }

  return result;
}

unint64_t sub_2230B2770()
{
  result = qword_27D055670;
  if (!qword_27D055670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D055670);
  }

  return result;
}

uint64_t sub_2230B27C4@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2230C39B4();

  *a2 = v4;
  return result;
}

uint64_t sub_2230B2844(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2230C39C4();
}

uint64_t sub_2230B28C0(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_2230C39C4();
  type metadata accessor for GenerativeAssistantSettingsUserDefaults();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2230C39B4();

  return static GenerativeAssistantSettingsUserDefaults.setEnabled(_:)(v3);
}

uint64_t sub_2230B2998(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2230AD85C;

  return sub_2230B1458(a1, v4, v5, v6);
}

uint64_t sub_2230B2A4C@<X0>(_BYTE *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2230C39B4();

  *a4 = v6;
  return result;
}

uint64_t sub_2230B2AC8(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2230C39C4();
}

uint64_t sub_2230B2B38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D055340, &qword_2230C58A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2230B2BA8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2230AD85C;

  return sub_2230B0980(a1, v4, v5, v6);
}

uint64_t sub_2230B2C5C@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2230C39B4();

  *a2 = v4;
  return result;
}

uint64_t sub_2230B2CDC(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2230C39C4();
}

uint64_t sub_2230B2D50(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2230B2D98(uint64_t a1, _OWORD *a2)
{
  v22 = &type metadata for BagProvider.ChatGPTBagConfiguration;
  v23 = &off_283672190;
  v4 = swift_allocObject();
  v21[0] = v4;
  v5 = a2[1];
  v4[1] = *a2;
  v4[2] = v5;
  v4[3] = a2[2];
  __swift_project_boxed_opaque_existential_0Tm(v21, &type metadata for BagProvider.ChatGPTBagConfiguration);
  v6 = qword_27D055338;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = sub_2230C38A4();
  __swift_project_value_buffer(v7, qword_27D0572C0);
  sub_22309F744(v21, v20);
  v8 = sub_2230C3884();
  v9 = sub_2230C3E94();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v10 = 136315138;
    v12 = __swift_project_boxed_opaque_existential_0Tm(v20, v20[3]);
    if (v12[3])
    {
      v13 = v12[2];
      v14 = v12[3];
    }

    else
    {
      v14 = 0xE500000000000000;
      v13 = 0x3E6C696E3CLL;
    }

    __swift_destroy_boxed_opaque_existential_0(v20);
    v15 = sub_22309F9F4(v13, v14, &v19);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_22309D000, v8, v9, "creating bag for %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x223DD5490](v11, -1, -1);
    MEMORY[0x223DD5490](v10, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(v20);
  }

  __swift_project_boxed_opaque_existential_0Tm(v21, v22);
  __swift_project_boxed_opaque_existential_0Tm(v21, v22);

  v16 = sub_2230C3D74();

  v17 = sub_2230C3D74();

  [objc_opt_self() bagForProfile:v16 profileVersion:v17];

  __swift_destroy_boxed_opaque_existential_0(v21);
  return a1;
}

uint64_t sub_2230B3048(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v38 = a3;
  v39 = a4;
  v37 = a2;
  v44 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0553D8, &qword_2230C4D30);
  MEMORY[0x28223BE20](v8 - 8);
  v45 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0554F0, &qword_2230C5880);
  v42 = *(v10 - 8);
  v43 = v10;
  MEMORY[0x28223BE20](v10);
  v41 = &v37 - v11;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0554E8, &unk_2230C5750);
  v12 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v14 = &v37 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D055410, &qword_2230C4D90);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v37 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0554E0, &unk_2230C5CF0);
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v48[3] = &type metadata for AppStoreDaemonDataSource;
  v48[4] = &off_2836719E8;
  v25 = swift_allocObject();
  v48[0] = v25;
  v26 = v38;
  v25[2] = v37;
  v25[3] = v26;
  v25[4] = v39;
  v25[5] = a5;
  v27 = OBJC_IVAR____TtC27GenerativeAssistantSettings16SubscriptionInfo__subscriptionSource;
  LOBYTE(v46) = 5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0554B8, &unk_2230C5550);
  sub_2230C39A4();
  (*(v22 + 32))(a6 + v27, v24, v21);
  v28 = OBJC_IVAR____TtC27GenerativeAssistantSettings16SubscriptionInfo__storeURL;
  v29 = sub_2230C3594();
  (*(*(v29 - 8) + 56))(v20, 1, 1, v29);
  sub_2230A2E80(v20, v18, &qword_27D055410, &qword_2230C4D90);
  sub_2230C39A4();
  sub_2230A2EE8(v20, &qword_27D055410, &qword_2230C4D90);
  (*(v12 + 32))(a6 + v28, v14, v40);
  v30 = OBJC_IVAR____TtC27GenerativeAssistantSettings16SubscriptionInfo__upgradeCTAText;
  v46 = 0;
  v47 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0554D0, &qword_2230C5560);
  v31 = v41;
  sub_2230C39A4();
  (*(v42 + 32))(a6 + v30, v31, v43);
  v32 = OBJC_IVAR____TtC27GenerativeAssistantSettings16SubscriptionInfo_accountReportsPaidPlan;
  *(a6 + OBJC_IVAR____TtC27GenerativeAssistantSettings16SubscriptionInfo_accountReportsPaidPlan) = 2;
  *(a6 + OBJC_IVAR____TtC27GenerativeAssistantSettings16SubscriptionInfo_subscriptionDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(a6 + v32) = v44;
  *(a6 + OBJC_IVAR____TtC27GenerativeAssistantSettings16SubscriptionInfo_isAppInstalled) = 0;
  sub_22309F744(v48, a6 + OBJC_IVAR____TtC27GenerativeAssistantSettings16SubscriptionInfo_appStoreDataSource);
  v33 = sub_2230C3E84();
  v34 = v45;
  (*(*(v33 - 8) + 56))(v45, 1, 1, v33);
  v35 = swift_allocObject();
  v35[2] = 0;
  v35[3] = 0;
  v35[4] = a6;

  sub_2230BEA64(0, 0, v34, &unk_2230C5D00, v35);

  __swift_destroy_boxed_opaque_existential_0(v48);
  return a6;
}

uint64_t sub_2230B3570()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0553A8, &qword_2230C4C00);
  v0[2] = swift_task_alloc();
  v1 = sub_2230C3934();
  v0[3] = v1;
  v0[4] = *(v1 - 8);
  v0[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2230B3664, 0, 0);
}

uint64_t sub_2230B3664()
{
  v20 = v0;
  v1 = _s27GenerativeAssistantSettings0abC12UserDefaultsC20forcedRateLimitStateSbSgyFZ_0();
  if (v1 != 2)
  {
    v6 = v1;
    if (qword_27D055338 != -1)
    {
      swift_once();
    }

    v7 = sub_2230C38A4();
    __swift_project_value_buffer(v7, qword_27D0572C0);
    v8 = sub_2230C3884();
    v9 = sub_2230C3EC4();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v19 = v11;
      *v10 = 136446210;
      if (v6)
      {
        v12 = 1702195828;
      }

      else
      {
        v12 = 0x65736C6166;
      }

      if (v6)
      {
        v13 = 0xE400000000000000;
      }

      else
      {
        v13 = 0xE500000000000000;
      }

      v14 = sub_22309F9F4(v12, v13, &v19);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_22309D000, v8, v9, "!! You have a rate limit override set to: forceRateLimitState = %{public}s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x223DD5490](v11, -1, -1);
      MEMORY[0x223DD5490](v10, -1, -1);
    }

    v5 = v6 & 1;
    goto LABEL_15;
  }

  v2 = v0[2];
  sub_2230C3774();
  sub_2230C3764();
  sub_2230C3744();

  v3 = sub_2230C3984();
  v0[6] = v3;
  v4 = *(v3 - 8);
  v0[7] = v4;
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_2230A2EE8(v0[2], &qword_27D0553A8, &qword_2230C4C00);
    v5 = 2;
LABEL_15:

    v15 = v0[1];

    return v15(v5);
  }

  v17 = swift_task_alloc();
  v0[8] = v17;
  *v17 = v0;
  v17[1] = sub_2230B3958;
  v18 = v0[5];

  return MEMORY[0x28213D118](v18);
}

uint64_t sub_2230B3958()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_2230B3B28;
  }

  else
  {
    (*(v2[7] + 8))(v2[2], v2[6]);
    v3 = sub_2230B3A84;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2230B3A84()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = sub_2230C3924();
  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5(v4 & 1);
}

uint64_t sub_2230B3B28()
{
  (*(v0[7] + 8))(v0[2], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2230B3BB4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2230A4F64;

  return sub_2230AF9B0();
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2230B3CE0()
{
  result = qword_27D0556A8;
  if (!qword_27D0556A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0556A0, &qword_2230C5CB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0556A8);
  }

  return result;
}

uint64_t sub_2230B3D44(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2230AD85C;

  return sub_2230AA534(a1, v4, v5, v6);
}

uint64_t sub_2230B3DF8()
{
  v1[2] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0553D8, &qword_2230C4D30);
  v1[3] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0556B0, &qword_2230C5D68);
  v1[4] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0553A8, &qword_2230C4C00);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0553A0, &qword_2230C4BC0);
  v1[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2230B3F48, 0, 0);
}

uint64_t sub_2230B3F48()
{
  v36 = v0;
  v1 = v0[6];
  sub_2230C3774();
  sub_2230C3764();
  sub_2230C3744();

  v2 = sub_2230C3984();
  v0[8] = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 48);
  v5 = v4(v1, 1, v2);
  v6 = v0[6];
  v7 = v0[7];
  if (v5 == 1)
  {
    sub_2230A2EE8(v0[6], &qword_27D0553A8, &qword_2230C4C00);
    v8 = sub_2230C3914();
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
LABEL_4:
    sub_2230A2EE8(v0[7], &qword_27D0553A0, &qword_2230C4BC0);
    if (qword_27D055338 != -1)
    {
      swift_once();
    }

    v11 = sub_2230C38A4();
    __swift_project_value_buffer(v11, qword_27D0572C0);
    v12 = sub_2230C3884();
    v13 = sub_2230C3EC4();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_22309D000, v12, v13, "User is not logged in; not fetching billing plan changes", v14, 2u);
      MEMORY[0x223DD5490](v14, -1, -1);
    }

LABEL_9:

    v15 = v0[1];

    return v15();
  }

  sub_2230C3944();
  v9 = *(v3 + 8);
  v0[9] = v9;
  v0[10] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v6, v2);
  v10 = sub_2230C3914();
  if ((*(*(v10 - 8) + 48))(v7, 1, v10) == 1)
  {
    goto LABEL_4;
  }

  sub_2230A2EE8(v0[7], &qword_27D0553A0, &qword_2230C4BC0);
  if (qword_27D055338 != -1)
  {
    swift_once();
  }

  v17 = sub_2230C38A4();
  v0[11] = __swift_project_value_buffer(v17, qword_27D0572C0);
  v18 = sub_2230C3884();
  v19 = sub_2230C3EA4();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v35 = v21;
    *v20 = 136446210;
    *(v20 + 4) = sub_22309F9F4(0xD000000000000013, 0x80000002230C7330, &v35);
    _os_log_impl(&dword_22309D000, v18, v19, "%{public}s Fetching updated billing plan", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x223DD5490](v21, -1, -1);
    MEMORY[0x223DD5490](v20, -1, -1);
  }

  v22 = v0[5];
  sub_2230C3764();
  sub_2230C3744();

  if (v4(v22, 1, v2) == 1)
  {
    sub_2230A2EE8(v0[5], &qword_27D0553A8, &qword_2230C4C00);
    v23 = v0[4];
    v24 = sub_2230C38F4();
    (*(*(v24 - 8) + 56))(v23, 1, 1, v24);
    sub_2230A2EE8(v23, &qword_27D0556B0, &qword_2230C5D68);
    v25 = sub_2230C3884();
    v26 = sub_2230C3EA4();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v35 = v28;
      *v27 = 136446210;
      *(v27 + 4) = sub_22309F9F4(0xD000000000000013, 0x80000002230C7330, &v35);
      _os_log_impl(&dword_22309D000, v25, v26, "%{public}s Completed updating billing plan", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x223DD5490](v28, -1, -1);
      MEMORY[0x223DD5490](v27, -1, -1);
    }

    v29 = v0[2];
    v30 = v0[3];
    v31 = sub_2230C3E84();
    (*(*(v31 - 8) + 56))(v30, 1, 1, v31);
    v32 = swift_allocObject();
    v32[2] = 0;
    v32[3] = 0;
    v32[4] = v29;

    sub_2230BED24(0, 0, v30, &unk_2230C5D78, v32);

    goto LABEL_9;
  }

  v33 = swift_task_alloc();
  v0[12] = v33;
  *v33 = v0;
  v33[1] = sub_2230B45D8;
  v34 = v0[4];

  return MEMORY[0x28213D110](v34);
}

uint64_t sub_2230B45D8()
{
  v2 = *v1;

  if (v0)
  {

    v3 = sub_2230B4954;
  }

  else
  {
    (*(v2 + 72))(*(v2 + 40), *(v2 + 64));
    v3 = sub_2230B4700;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2230B4700()
{
  v14 = v0;
  v1 = v0[4];
  v2 = sub_2230C38F4();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  sub_2230A2EE8(v1, &qword_27D0556B0, &qword_2230C5D68);
  v3 = sub_2230C3884();
  v4 = sub_2230C3EA4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136446210;
    *(v5 + 4) = sub_22309F9F4(0xD000000000000013, 0x80000002230C7330, &v13);
    _os_log_impl(&dword_22309D000, v3, v4, "%{public}s Completed updating billing plan", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x223DD5490](v6, -1, -1);
    MEMORY[0x223DD5490](v5, -1, -1);
  }

  v7 = v0[2];
  v8 = v0[3];
  v9 = sub_2230C3E84();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v7;

  sub_2230BED24(0, 0, v8, &unk_2230C5D78, v10);

  v11 = v0[1];

  return v11();
}

uint64_t sub_2230B4954()
{
  v14 = v0;
  (*(v0 + 72))(*(v0 + 40), *(v0 + 64));
  v1 = *(v0 + 32);
  v2 = sub_2230C38F4();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  sub_2230A2EE8(v1, &qword_27D0556B0, &qword_2230C5D68);
  v3 = sub_2230C3884();
  v4 = sub_2230C3EA4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136446210;
    *(v5 + 4) = sub_22309F9F4(0xD000000000000013, 0x80000002230C7330, &v13);
    _os_log_impl(&dword_22309D000, v3, v4, "%{public}s Completed updating billing plan", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x223DD5490](v6, -1, -1);
    MEMORY[0x223DD5490](v5, -1, -1);
  }

  v7 = *(v0 + 16);
  v8 = *(v0 + 24);
  v9 = sub_2230C3E84();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v7;

  sub_2230BED24(0, 0, v8, &unk_2230C5D78, v10);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_2230B4BB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x2822009F8](sub_2230B4BD8, 0, 0);
}

uint64_t sub_2230B4BD8()
{
  sub_2230C3E64();
  *(v0 + 32) = sub_2230C3E54();
  v2 = sub_2230C3E34();

  return MEMORY[0x2822009F8](sub_2230B4C6C, v2, v1);
}

uint64_t sub_2230B4C6C()
{

  sub_2230B4D1C((v0 + 40));
  **(v0 + 16) = *(v0 + 40);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2230B4D1C@<X0>(BOOL *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0553A8, &qword_2230C4C00);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0553A0, &qword_2230C4BC0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v21 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = v21 - v14;
  result = swift_weakLoadStrong();
  v17 = result;
  if (result)
  {
    v21[1] = v2;
    sub_2230C3774();
    sub_2230C3764();
    sub_2230C3744();

    v18 = sub_2230C3984();
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v6, 1, v18) == 1)
    {
      sub_2230A2EE8(v6, &qword_27D0553A8, &qword_2230C4C00);
      v20 = sub_2230C3914();
      (*(*(v20 - 8) + 56))(v15, 1, 1, v20);
    }

    else
    {
      sub_2230C3944();
      (*(v19 + 8))(v6, v18);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_2230C39B4();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_2230B5370(v15, v10);

    sub_2230C39C4();
    sub_2230AD8F0(v13);

    sub_2230A2EE8(v13, &qword_27D0553A0, &qword_2230C4BC0);
    result = sub_2230A2EE8(v15, &qword_27D0553A0, &qword_2230C4BC0);
  }

  *a2 = v17 == 0;
  return result;
}

uint64_t sub_2230B503C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8D8](v0, 27, 7);
}

uint64_t sub_2230B5098()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2230C39B4();
}

uint64_t sub_2230B5114(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0553A0, &qword_2230C4BC0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v13 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v13 - v10;
  sub_2230B5370(a1, &v13 - v10);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2230C39B4();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_2230B5370(v11, v6);

  sub_2230C39C4();
  sub_2230AD8F0(v9);
  sub_2230A2EE8(v9, &qword_27D0553A0, &qword_2230C4BC0);
  return sub_2230A2EE8(v11, &qword_27D0553A0, &qword_2230C4BC0);
}

uint64_t sub_2230B52BC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2230A4F64;

  return sub_2230B4BB8(a1, v4, v5, v6);
}

uint64_t sub_2230B5370(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0553A0, &qword_2230C4BC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static GenerativeAssistantSettingsUserDefaults.allUserDefaults()()
{
  v0 = sub_2230C3604();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = 0;
  v42 = 0xE000000000000000;
  sub_2230C3F24();
  MEMORY[0x223DD4D40](0x656C62616E457369, 0xEC000000203D2064);
  if (qword_280D39240)
  {

    sub_22309F000();
  }

  if (qword_280D38F68 != -1)
  {
    swift_once();
  }

  v4 = qword_280D39238;
  if (qword_280D39238 && (v5 = sub_2230C3D74(), v6 = [v4 BOOLForKey_], v5, (v6 & 1) != 0))
  {
    v7 = 0xE400000000000000;
    v8 = 1702195828;
  }

  else
  {
    v7 = 0xE500000000000000;
    v8 = 0x65736C6166;
  }

  MEMORY[0x223DD4D40](v8, v7);

  MEMORY[0x223DD4D40](0xD000000000000010, 0x80000002230C7350);
  if (qword_280D39240)
  {

    sub_22309F000();
  }

  if (v4 && (v9 = sub_2230C3D74(), v10 = [v4 BOOLForKey_], v9, (v10 & 1) != 0))
  {
    v11 = 0xE400000000000000;
    v12 = 1702195828;
  }

  else
  {
    v11 = 0xE500000000000000;
    v12 = 0x65736C6166;
  }

  MEMORY[0x223DD4D40](v12, v11);

  MEMORY[0x223DD4D40](0xD00000000000001BLL, 0x80000002230C7370);
  if (qword_280D39240)
  {

    sub_22309F000();
  }

  if (v4 && (v13 = sub_2230C3D74(), v14 = [v4 BOOLForKey_], v13, (v14 & 1) != 0))
  {
    v15 = 0xE400000000000000;
    v16 = 1702195828;
  }

  else
  {
    v15 = 0xE500000000000000;
    v16 = 0x65736C6166;
  }

  MEMORY[0x223DD4D40](v16, v15);

  MEMORY[0x223DD4D40](0xD00000000000001FLL, 0x80000002230C7390);
  sub_2230BB728();
  if (v4)
  {
    v17 = sub_2230C3D74();
    v18 = [v4 integerForKey_];
  }

  else
  {
    v18 = 0;
  }

  v40 = v18;
  v19 = sub_2230C3F84();
  MEMORY[0x223DD4D40](v19);

  MEMORY[0x223DD4D40](0xD000000000000024, 0x80000002230C73B0);
  static GenerativeAssistantSettingsUserDefaults.declineComposeViaSiriExpiration()(v3);
  sub_2230BB934();
  v20 = sub_2230C3F84();
  MEMORY[0x223DD4D40](v20);

  v21 = *(v1 + 8);
  v21(v3, v0);
  MEMORY[0x223DD4D40](0xD000000000000018, 0x80000002230C73E0);
  sub_2230BB728();
  if (v4)
  {
    v22 = sub_2230C3D74();
    v23 = [v4 integerForKey_];
  }

  else
  {
    v23 = 0;
  }

  v40 = v23;
  v24 = sub_2230C3F84();
  MEMORY[0x223DD4D40](v24);

  MEMORY[0x223DD4D40](0xD00000000000001DLL, 0x80000002230C7400);
  static GenerativeAssistantSettingsUserDefaults.declineMediaQAExpiration()(v3);
  v25 = sub_2230C3F84();
  MEMORY[0x223DD4D40](v25);

  v21(v3, v0);
  MEMORY[0x223DD4D40](0xD000000000000022, 0x80000002230C7420);
  sub_2230BB728();
  if (v4)
  {
    v26 = sub_2230C3D74();
    v27 = [v4 integerForKey_];
  }

  else
  {
    v27 = 0;
  }

  v40 = v27;
  v28 = sub_2230C3F84();
  MEMORY[0x223DD4D40](v28);

  MEMORY[0x223DD4D40](0xD000000000000027, 0x80000002230C7450);
  static GenerativeAssistantSettingsUserDefaults.declineKnowledgeFallbackExpiration()(v3);
  v29 = sub_2230C3F84();
  MEMORY[0x223DD4D40](v29);

  v21(v3, v0);
  MEMORY[0x223DD4D40](0xD00000000000001CLL, 0x80000002230C7480);
  v30 = _s27GenerativeAssistantSettings0abC12UserDefaultsC23taperConfirmationDialogSbyFZ_0();
  v31 = (v30 & 1) == 0;
  if (v30)
  {
    v32 = 1702195828;
  }

  else
  {
    v32 = 0x65736C6166;
  }

  if (v31)
  {
    v33 = 0xE500000000000000;
  }

  else
  {
    v33 = 0xE400000000000000;
  }

  MEMORY[0x223DD4D40](v32, v33);

  MEMORY[0x223DD4D40](0xD000000000000016, 0x80000002230C74A0);
  v40 = _s27GenerativeAssistantSettings0abC12UserDefaultsC17confirmationCountSiyFZ_0();
  v34 = sub_2230C3F84();
  MEMORY[0x223DD4D40](v34);

  MEMORY[0x223DD4D40](0xD000000000000024, 0x80000002230C74C0);
  _s27GenerativeAssistantSettings0abC12UserDefaultsC31consecutiveLLMConfirmationDatesSay10Foundation4DateVGyFZ_0();
  v35 = MEMORY[0x223DD4D90]();
  v37 = v36;

  MEMORY[0x223DD4D40](v35, v37);

  return v41;
}

id static GenerativeAssistantSettingsUserDefaults.useConfirmationPrompts()()
{
  if (qword_280D39240)
  {

    sub_22309F000();
  }

  if (qword_280D38F68 != -1)
  {
    swift_once();
  }

  v0 = qword_280D39238;
  if (qword_280D39238)
  {
    v1 = sub_2230C3D74();
    v0 = [v0 BOOLForKey_];
  }

  return v0;
}

uint64_t static GenerativeAssistantSettingsUserDefaults.declineComposeViaSiriExpiration()@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D055340, &qword_2230C58A0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  sub_2230BB728();
  if (qword_280D38F68 != -1)
  {
    swift_once();
  }

  v5 = qword_280D39238;
  if (!qword_280D39238)
  {
    v14 = 0u;
    v15 = 0u;
LABEL_11:
    sub_2230A2EE8(&v14, &qword_27D0553D0, &qword_2230C4D28);
    v8 = sub_2230C3604();
    (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
    goto LABEL_12;
  }

  v6 = sub_2230C3D74();
  v7 = [v5 objectForKey_];

  if (v7)
  {
    sub_2230C3EE4();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14 = v12;
  v15 = v13;
  if (!*(&v13 + 1))
  {
    goto LABEL_11;
  }

  v8 = sub_2230C3604();
  v9 = swift_dynamicCast();
  v10 = *(v8 - 8);
  (*(v10 + 56))(v4, v9 ^ 1u, 1, v8);
  if ((*(v10 + 48))(v4, 1, v8) != 1)
  {
    return (*(v10 + 32))(a1, v4, v8);
  }

LABEL_12:
  sub_2230C35A4();
  sub_2230C3604();
  result = (*(*(v8 - 8) + 48))(v4, 1, v8);
  if (result != 1)
  {
    return sub_2230A2EE8(v4, &qword_27D055340, &qword_2230C58A0);
  }

  return result;
}

uint64_t static GenerativeAssistantSettingsUserDefaults.declineKnowledgeFallbackExpiration()@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D055340, &qword_2230C58A0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  sub_2230BB728();
  if (qword_280D38F68 != -1)
  {
    swift_once();
  }

  v5 = qword_280D39238;
  if (!qword_280D39238)
  {
    v14 = 0u;
    v15 = 0u;
LABEL_11:
    sub_2230A2EE8(&v14, &qword_27D0553D0, &qword_2230C4D28);
    v8 = sub_2230C3604();
    (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
    goto LABEL_12;
  }

  v6 = sub_2230C3D74();
  v7 = [v5 objectForKey_];

  if (v7)
  {
    sub_2230C3EE4();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14 = v12;
  v15 = v13;
  if (!*(&v13 + 1))
  {
    goto LABEL_11;
  }

  v8 = sub_2230C3604();
  v9 = swift_dynamicCast();
  v10 = *(v8 - 8);
  (*(v10 + 56))(v4, v9 ^ 1u, 1, v8);
  if ((*(v10 + 48))(v4, 1, v8) != 1)
  {
    return (*(v10 + 32))(a1, v4, v8);
  }

LABEL_12:
  sub_2230C35A4();
  sub_2230C3604();
  result = (*(*(v8 - 8) + 48))(v4, 1, v8);
  if (result != 1)
  {
    return sub_2230A2EE8(v4, &qword_27D055340, &qword_2230C58A0);
  }

  return result;
}

uint64_t static GenerativeAssistantSettingsUserDefaults.declineMediaQAExpiration()@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D055340, &qword_2230C58A0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  sub_2230BB728();
  if (qword_280D38F68 != -1)
  {
    swift_once();
  }

  v5 = qword_280D39238;
  if (!qword_280D39238)
  {
    v14 = 0u;
    v15 = 0u;
LABEL_11:
    sub_2230A2EE8(&v14, &qword_27D0553D0, &qword_2230C4D28);
    v8 = sub_2230C3604();
    (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
    goto LABEL_12;
  }

  v6 = sub_2230C3D74();
  v7 = [v5 objectForKey_];

  if (v7)
  {
    sub_2230C3EE4();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14 = v12;
  v15 = v13;
  if (!*(&v13 + 1))
  {
    goto LABEL_11;
  }

  v8 = sub_2230C3604();
  v9 = swift_dynamicCast();
  v10 = *(v8 - 8);
  (*(v10 + 56))(v4, v9 ^ 1u, 1, v8);
  if ((*(v10 + 48))(v4, 1, v8) != 1)
  {
    return (*(v10 + 32))(a1, v4, v8);
  }

LABEL_12:
  sub_2230C35A4();
  sub_2230C3604();
  result = (*(*(v8 - 8) + 48))(v4, 1, v8);
  if (result != 1)
  {
    return sub_2230A2EE8(v4, &qword_27D055340, &qword_2230C58A0);
  }

  return result;
}

uint64_t static GenerativeAssistantSettingsUserDefaults.nextDisableConfirmRequestsConfirmationDate()@<X0>(uint64_t a1@<X8>)
{
  if (qword_280D38F68 != -1)
  {
    swift_once();
  }

  v2 = qword_280D39238;
  if (qword_280D39238)
  {
    v3 = sub_2230C3D74();
    v4 = [v2 objectForKey_];

    if (v4)
    {
      sub_2230C3EE4();
      swift_unknownObjectRelease();
    }

    else
    {
      v9 = 0u;
      v10 = 0u;
    }

    v11 = v9;
    v12 = v10;
    if (*(&v10 + 1))
    {
      v5 = sub_2230C3604();
      v6 = swift_dynamicCast();
      return (*(*(v5 - 8) + 56))(a1, v6 ^ 1u, 1, v5);
    }
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  sub_2230A2EE8(&v11, &qword_27D0553D0, &qword_2230C4D28);
  v8 = sub_2230C3604();
  return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
}

uint64_t static GenerativeAssistantSettingsUserDefaults.lastDeclineDate()@<X0>(uint64_t a2@<X8>)
{
  sub_2230BB728();
  if (qword_280D38F68 != -1)
  {
    swift_once();
  }

  v3 = qword_280D39238;
  if (qword_280D39238)
  {
    v4 = sub_2230C3D74();
    v5 = [v3 objectForKey_];

    if (v5)
    {
      sub_2230C3EE4();
      swift_unknownObjectRelease();
    }

    else
    {
      v10 = 0u;
      v11 = 0u;
    }

    v12 = v10;
    v13 = v11;
    if (*(&v11 + 1))
    {
      v6 = sub_2230C3604();
      v7 = swift_dynamicCast();
      return (*(*(v6 - 8) + 56))(a2, v7 ^ 1u, 1, v6);
    }
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  sub_2230A2EE8(&v12, &qword_27D0553D0, &qword_2230C4D28);
  v9 = sub_2230C3604();
  return (*(*(v9 - 8) + 56))(a2, 1, 1, v9);
}

unint64_t GenerativeAssistantSettingsUserDefaults.Key.rawValue.getter()
{
  result = 0x656C62616E457369;
  switch(*v0)
  {
    case 1:
      result = 0x6F72507075746573;
      break;
    case 2:
      result = 0xD000000000000016;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0xD000000000000018;
      break;
    case 5:
      result = 0xD00000000000001DLL;
      break;
    case 6:
      result = 0xD000000000000022;
      break;
    case 7:
      result = 0xD00000000000001ALL;
      break;
    case 8:
    case 0xD:
      result = 0xD00000000000001FLL;
      break;
    case 9:
      result = 0xD000000000000017;
      break;
    case 0xA:
      result = 0xD000000000000011;
      break;
    case 0xB:
      result = 0xD000000000000014;
      break;
    case 0xC:
      result = 0xD00000000000001CLL;
      break;
    case 0xE:
      result = 0x6C6365447473616CLL;
      break;
    case 0xF:
      result = 0xD000000000000027;
      break;
    case 0x10:
    case 0x13:
      result = 0xD00000000000002ALL;
      break;
    case 0x11:
      result = 0xD00000000000001BLL;
      break;
    case 0x12:
      result = 0xD000000000000018;
      break;
    case 0x14:
      result = 0xD00000000000001ELL;
      break;
    default:
      return result;
  }

  return result;
}

GenerativeAssistantSettings::GenerativeAssistantSettingsUserDefaults::Key_optional __swiftcall GenerativeAssistantSettingsUserDefaults.Key.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2230C3FC4();

  v5 = 0;
  v6 = 3;
  switch(v3)
  {
    case 0:
      goto LABEL_11;
    case 1:
      v5 = 1;
      goto LABEL_11;
    case 2:
      v5 = 2;
LABEL_11:
      v6 = v5;
      break;
    case 3:
      break;
    case 4:
      v6 = 4;
      break;
    case 5:
      v6 = 5;
      break;
    case 6:
      v6 = 6;
      break;
    case 7:
      v6 = 7;
      break;
    case 8:
      v6 = 8;
      break;
    case 9:
      v6 = 9;
      break;
    case 10:
      v6 = 10;
      break;
    case 11:
      v6 = 11;
      break;
    case 12:
      v6 = 12;
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    default:
      v6 = 21;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t static GenerativeAssistantSettingsUserDefaults.setEnabled(_:)(char a1)
{
  v6 = MEMORY[0x277D839B0];
  LOBYTE(v5[0]) = a1;
  static GenerativeAssistantSettingsUserDefaults.set(_:forKey:)(v5, 0x656C62616E457369, 0xE900000000000064);
  sub_2230A2EE8(v5, &qword_27D0553D0, &qword_2230C4D28);
  if (a1)
  {
    sub_2230C3864();
    sub_2230C3854();
    sub_2230C3814();

    if (v4)
    {
      sub_2230A7E94(&v3, v5);
      sub_2230C3854();
      __swift_project_boxed_opaque_existential_0Tm(v5, v6);
      sub_2230C3874();
      sub_2230C3834();

      return __swift_destroy_boxed_opaque_existential_0(v5);
    }

    else
    {
      return sub_2230A2EE8(&v3, &qword_27D0556B8, &qword_2230C5E20);
    }
  }

  else
  {
    sub_2230C3864();
    sub_2230C3854();
    sub_2230C3824();
  }
}

uint64_t static GenerativeAssistantSettingsUserDefaults.setUseConfirmationPrompts(_:)(char a1)
{
  v3 = MEMORY[0x277D839B0];
  v2[0] = a1;
  static GenerativeAssistantSettingsUserDefaults.set(_:forKey:)(v2, 0xD000000000000016, 0x80000002230C66F0);
  return sub_2230A2EE8(v2, &qword_27D0553D0, &qword_2230C4D28);
}

uint64_t static GenerativeAssistantSettingsUserDefaults.setSetupPrompt(_:)(char a1)
{
  v3 = MEMORY[0x277D839B0];
  v2[0] = a1;
  static GenerativeAssistantSettingsUserDefaults.set(_:forKey:)(v2, 0x6F72507075746573, 0xEB0000000074706DLL);
  return sub_2230A2EE8(v2, &qword_27D0553D0, &qword_2230C4D28);
}

GenerativeAssistantSettings::RequestType_optional __swiftcall RequestType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 6;
  if (rawValue < 6)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

GenerativeAssistantSettings::ResponseType_optional __swiftcall ResponseType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

id sub_2230B6D88()
{
  result = sub_2230B6DA8();
  qword_280D39238 = result;
  return result;
}

id sub_2230B6DA8()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_2230C3D74();
  v2 = [v0 initWithSuiteName_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0553F8, &qword_2230C6120);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2230C5E10;
  *(inited + 32) = 0x656C62616E457369;
  v4 = MEMORY[0x277D839B0];
  *(inited + 40) = 0xE900000000000064;
  *(inited + 48) = 0;
  *(inited + 72) = v4;
  *(inited + 80) = 0x6F72507075746573;
  *(inited + 88) = 0xEB0000000074706DLL;
  *(inited + 96) = 1;
  *(inited + 120) = v4;
  *(inited + 128) = 0xD000000000000016;
  *(inited + 136) = 0x80000002230C66F0;
  *(inited + 144) = 1;
  *(inited + 168) = v4;
  *(inited + 176) = 0xD000000000000013;
  v5 = MEMORY[0x277D83B88];
  *(inited + 184) = 0x80000002230C6710;
  *(inited + 192) = 0;
  *(inited + 216) = v5;
  *(inited + 224) = 0xD000000000000018;
  *(inited + 232) = 0x80000002230C6730;
  v6 = sub_2230C3604();
  *(inited + 264) = v6;
  __swift_allocate_boxed_opaque_existential_0((inited + 240));
  sub_2230C35A4();
  *(inited + 272) = 0xD00000000000001DLL;
  *(inited + 280) = 0x80000002230C6750;
  *(inited + 288) = 0;
  *(inited + 312) = v5;
  *(inited + 320) = 0xD000000000000022;
  *(inited + 328) = 0x80000002230C6770;
  *(inited + 360) = v6;
  __swift_allocate_boxed_opaque_existential_0((inited + 336));
  sub_2230C35A4();
  *(inited + 368) = 0xD00000000000001ALL;
  *(inited + 376) = 0x80000002230C67A0;
  *(inited + 384) = 0;
  *(inited + 408) = v5;
  *(inited + 416) = 0xD00000000000001FLL;
  *(inited + 424) = 0x80000002230C67C0;
  *(inited + 456) = v6;
  __swift_allocate_boxed_opaque_existential_0((inited + 432));
  sub_2230C35A4();
  *(inited + 464) = 0xD000000000000017;
  *(inited + 472) = 0x80000002230C67E0;
  *(inited + 480) = 0;
  *(inited + 504) = v4;
  *(inited + 512) = 0xD000000000000011;
  *(inited + 520) = 0x80000002230C6800;
  *(inited + 552) = v5;
  *(inited + 528) = 0;
  *(inited + 560) = 0xD00000000000001FLL;
  *(inited + 568) = 0x80000002230C6860;
  *(inited + 600) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0556F8, &unk_2230C6128);
  *(inited + 576) = MEMORY[0x277D84F90];
  *(inited + 608) = 0xD000000000000027;
  *(inited + 616) = 0x80000002230C6890;
  *(inited + 648) = v5;
  *(inited + 624) = 0;
  *(inited + 656) = 0xD000000000000018;
  *(inited + 664) = 0x80000002230C6910;
  *(inited + 696) = v4;
  *(inited + 672) = 0;
  *(inited + 704) = 0xD00000000000002ALL;
  *(inited + 712) = 0x80000002230C6930;
  *(inited + 744) = v4;
  *(inited + 720) = 0;
  sub_2230C3020(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D055400, &qword_2230C4D70);
  swift_arrayDestroy();
  if (v2)
  {
    v7 = v2;
    v8 = sub_2230C3D24();

    [v7 registerDefaults_];
  }

  else
  {
  }

  v9 = qword_280D39240;
  if (qword_280D39240)
  {
    v10 = *(qword_280D39240 + 16);
  }

  else
  {
    type metadata accessor for GenerativeAssistantSettingsSyncHandler();
    v9 = swift_allocObject();
    v10 = 0;
    *(v9 + 16) = 0;
    qword_280D39240 = v9;
  }

  *(v9 + 16) = v2;
  v11 = v2;

  if (qword_280D39240)
  {

    sub_22309F000();
  }

  return v2;
}

uint64_t sub_2230B71B8()
{
  v0 = GenerativeAssistantSettingsUserDefaults.Key.rawValue.getter();
  v2 = v1;
  if (v0 == GenerativeAssistantSettingsUserDefaults.Key.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_2230C3FB4();
  }

  return v5 & 1;
}

uint64_t sub_2230B7254()
{
  sub_2230C4014();
  GenerativeAssistantSettingsUserDefaults.Key.rawValue.getter();
  sub_2230C3DC4();

  return sub_2230C4034();
}

uint64_t sub_2230B72BC(uint64_t a1)
{
  GenerativeAssistantSettingsUserDefaults.Key.rawValue.getter();
  sub_2230C3DC4();
}

uint64_t sub_2230B7320(uint64_t a1)
{
  sub_2230C4014();
  GenerativeAssistantSettingsUserDefaults.Key.rawValue.getter();
  sub_2230C3DC4();

  return sub_2230C4034();
}