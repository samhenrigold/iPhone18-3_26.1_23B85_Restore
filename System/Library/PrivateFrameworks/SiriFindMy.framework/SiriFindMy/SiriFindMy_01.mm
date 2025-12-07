void sub_266C2136C(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v53 = a3;
  v5 = sub_266DA74AC();
  v51 = *(v5 - 8);
  v52 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Location(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v49 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9A98, &qword_266DAE3F8);
  MEMORY[0x28223BE20](v15);
  v17 = v49 - v16;
  sub_266C186BC(a1, v49 - v16, &qword_2800C9A98, &qword_266DAE3F8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = a2;
    v19 = *v17;
    if (v19 == 1)
    {
      if (qword_2800C9148 != -1)
      {
        swift_once();
      }

      v20 = sub_266DA94AC();
      __swift_project_value_buffer(v20, qword_2800C9A30);
      v21 = sub_266DA948C();
      v22 = sub_266DAAAEC();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_266C08000, v21, v22, "Resolving location failed due to geoCodingFailed (location not valid)", v23, 2u);
        MEMORY[0x26D5F2480](v23, -1, -1);
      }

      type metadata accessor for SetGeoFenceLocationResolutionResult();
      v24 = sub_266DA2674(1);
    }

    else
    {
      if (qword_2800C9148 != -1)
      {
        swift_once();
      }

      v37 = sub_266DA94AC();
      __swift_project_value_buffer(v37, qword_2800C9A30);
      v38 = sub_266DA948C();
      v39 = sub_266DAAAEC();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v57 = v41;
        *v40 = 136315138;
        v56 = v19;
        v42 = sub_266DAA72C();
        v44 = sub_266C22A3C(v42, v43, &v57);

        *(v40 + 4) = v44;
        _os_log_impl(&dword_266C08000, v38, v39, "Resolving location failed with %s", v40, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v41);
        MEMORY[0x26D5F2480](v41, -1, -1);
        MEMORY[0x26D5F2480](v40, -1, -1);
      }

      type metadata accessor for SetGeoFenceLocationResolutionResult();
      v24 = [swift_getObjCClassFromMetadata() unsupported];
    }

    v45 = v24;
    v18();
    goto LABEL_22;
  }

  type metadata accessor for LabeledLocationResult(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_266C234EC(v17, v14);
    type metadata accessor for SetGeoFenceLocationResolutionResult();
    type metadata accessor for SpeakableLocation();
    sub_266C23434(v14, v12, type metadata accessor for Location);
    v46 = sub_266D6CE4C(v12);
    v47 = sub_266DA4F44(v46);

    (a2)(v47);
    sub_266C23494(v14, type metadata accessor for Location);
    return;
  }

  if (EnumCaseMultiPayload != 1)
  {
    type metadata accessor for SetGeoFenceLocationResolutionResult();
    v45 = sub_266DA2674(1);
    a2();
LABEL_22:

    return;
  }

  v26 = *v17;
  v27 = *(v26 + 16);
  if (v27)
  {
    v50 = a2;
    v57 = MEMORY[0x277D84F90];
    sub_266DAAE8C();
    v28 = type metadata accessor for SpeakableLocation();
    v29 = *(v9 + 80);
    v49[1] = v26;
    v30 = v26 + ((v29 + 32) & ~v29);
    v54 = *(v9 + 72);
    v55 = v28;
    v31 = v52;
    v32 = (v51 + 8);
    do
    {
      sub_266C23434(v30, v14, type metadata accessor for Location);
      sub_266C23434(v14, v12, type metadata accessor for Location);
      sub_266DA749C();
      v33 = sub_266DA747C();
      v35 = v34;
      (*v32)(v7, v31);
      sub_266D6CEE8(v12, v33, v35);
      sub_266C23494(v14, type metadata accessor for Location);
      sub_266DAAE6C();
      sub_266DAAE9C();
      sub_266DAAEAC();
      sub_266DAAE7C();
      v30 += v54;
      --v27;
    }

    while (v27);

    v36 = v57;
    a2 = v50;
  }

  else
  {

    v36 = MEMORY[0x277D84F90];
  }

  type metadata accessor for SetGeoFenceLocationResolutionResult();
  v48 = sub_266DA4FA8(v36);

  (a2)(v48);
}

void sub_266C219D8(void *a1, uint64_t a2, void (**a3)(void, void))
{
  if (qword_2800C9148 != -1)
  {
    swift_once();
  }

  v5 = sub_266DA94AC();
  __swift_project_value_buffer(v5, qword_2800C9A30);
  v6 = a1;
  v7 = sub_266DA948C();
  v8 = sub_266DAAB0C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136315138;
    v11 = v6;
    v12 = [v11 description];
    v13 = sub_266DAA70C();
    v15 = v14;

    v16 = sub_266C22A3C(v13, v15, &v19);

    *(v9 + 4) = v16;
    _os_log_impl(&dword_266C08000, v7, v8, "Intent to confirm: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x26D5F2480](v10, -1, -1);
    MEMORY[0x26D5F2480](v9, -1, -1);
  }

  v17 = objc_allocWithZone(type metadata accessor for SetGeoFenceIntentResponse());
  v18 = SetGeoFenceIntentResponse.init(code:userActivity:)(1, 0);
  (a3)[2](a3, v18);

  _Block_release(a3);
}

void sub_266C21BBC(void *a1, void (*a2)(void))
{
  if (qword_2800C9148 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_2800C9148);
  }

  v4 = sub_266DA94AC();
  __swift_project_value_buffer(v4, qword_2800C9A30);
  v5 = a1;
  v6 = sub_266DA948C();
  v7 = sub_266DAAB0C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = OUTLINED_FUNCTION_14_0();
    v9 = OUTLINED_FUNCTION_13_0();
    v18 = v9;
    *v8 = 136315138;
    v10 = v5;
    v11 = [v10 description];
    v12 = sub_266DAA70C();
    v14 = v13;

    v15 = sub_266C22A3C(v12, v14, &v18);

    *(v8 + 4) = v15;
    _os_log_impl(&dword_266C08000, v6, v7, "Intent to confirm: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_6_1();
  }

  v16 = objc_allocWithZone(type metadata accessor for SetGeoFenceIntentResponse());
  v17 = SetGeoFenceIntentResponse.init(code:userActivity:)(1, 0);
  a2();
}

void sub_266C21D80(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC10SiriFindMy24SetGeoFenceIntentHandler_deviceState), *(a2 + OBJC_IVAR____TtC10SiriFindMy24SetGeoFenceIntentHandler_deviceState + 24));
  _Block_copy(a3);
  if (sub_266DA7B2C())
  {
    if (qword_2800C9148 != -1)
    {
      swift_once();
    }

    v6 = sub_266DA94AC();
    __swift_project_value_buffer(v6, qword_2800C9A30);
    v7 = sub_266DA948C();
    v8 = sub_266DAAB0C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_266C08000, v7, v8, "Device is locked, attempting to unlock before handling the intent.", v9, 2u);
      MEMORY[0x26D5F2480](v9, -1, -1);
    }

    v10 = [objc_allocWithZone(type metadata accessor for SetGeoFenceIntentResponse()) init];
    [v10 _setRequiresAuthentication_];
    (a3)[2](a3, v10);
  }

  else
  {
    v11 = swift_allocObject();
    *(v11 + 16) = sub_266C23320;
    *(v11 + 24) = v5;

    sub_266C3441C();
  }

  _Block_release(a3);
}

void sub_266C21F98(uint64_t a1, void (*a2)(id), uint64_t a3)
{
  __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC10SiriFindMy24SetGeoFenceIntentHandler_deviceState), *(v3 + OBJC_IVAR____TtC10SiriFindMy24SetGeoFenceIntentHandler_deviceState + 24));
  if (sub_266DA7B2C())
  {
    if (qword_2800C9148 != -1)
    {
      OUTLINED_FUNCTION_0_3(&qword_2800C9148);
    }

    v6 = sub_266DA94AC();
    __swift_project_value_buffer(v6, qword_2800C9A30);
    v7 = sub_266DA948C();
    v8 = sub_266DAAB0C();
    if (OUTLINED_FUNCTION_16_0(v8))
    {
      v9 = OUTLINED_FUNCTION_11();
      *v9 = 0;
      _os_log_impl(&dword_266C08000, v7, v8, "Device is locked, attempting to unlock before handling the intent.", v9, 2u);
      OUTLINED_FUNCTION_6_1();
    }

    v11 = [objc_allocWithZone(type metadata accessor for SetGeoFenceIntentResponse()) init];
    [v11 _setRequiresAuthentication_];
    a2(v11);
  }

  else
  {
    v10 = swift_allocObject();
    *(v10 + 16) = a2;
    *(v10 + 24) = a3;

    sub_266C3441C();
  }
}

void sub_266C2216C(__int16 a1, void (*a2)(void))
{
  if (qword_2800C9148 != -1)
  {
    swift_once();
  }

  v4 = sub_266DA94AC();
  __swift_project_value_buffer(v4, qword_2800C9A30);
  v5 = sub_266DA948C();
  v6 = sub_266DAAB0C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v23 = v8;
    *v7 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B00, &qword_266DAE468);
    v9 = sub_266DAA72C();
    v11 = a2;
    v12 = sub_266C22A3C(v9, v10, &v23);

    *(v7 + 4) = v12;
    a2 = v11;
    _os_log_impl(&dword_266C08000, v5, v6, "Set geo fence finished with: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x26D5F2480](v8, -1, -1);
    MEMORY[0x26D5F2480](v7, -1, -1);
  }

  if ((a1 & 0x100) != 0)
  {
    v13 = sub_266DA948C();
    v14 = sub_266DAAAEC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v23 = v16;
      *v15 = 136315138;
      v17 = sub_266DAA72C();
      v19 = sub_266C22A3C(v17, v18, &v23);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_266C08000, v13, v14, "Setting geo fence failed with: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x26D5F2480](v16, -1, -1);
      MEMORY[0x26D5F2480](v15, -1, -1);
    }

    v20 = 5;
  }

  else
  {
    v20 = 4;
  }

  v21 = objc_allocWithZone(type metadata accessor for SetGeoFenceIntentResponse());
  v22 = SetGeoFenceIntentResponse.init(code:userActivity:)(v20, 0);
  a2();
}

void sub_266C22444(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(v9, v10, v8);
  _Block_release(v8);
}

id sub_266C224D0(id a1, char a2)
{
  if ((a2 & 1) == 0 || (v3 = [a1 sharesLocation]) != 0 && (v4 = v3, v5 = objc_msgSend(v3, sel_BOOLValue), v4, v5))
  {
    type metadata accessor for SetGeoFenceFriendResolutionResult();
    return sub_266DA5B28(a1);
  }

  else
  {
    if (qword_2800C9148 != -1)
    {
      OUTLINED_FUNCTION_0_3(&qword_2800C9148);
    }

    v7 = sub_266DA94AC();
    __swift_project_value_buffer(v7, qword_2800C9A30);
    v8 = sub_266DA948C();
    v9 = sub_266DAAB0C();
    if (OUTLINED_FUNCTION_16_0(v9))
    {
      v10 = OUTLINED_FUNCTION_11();
      *v10 = 0;
      _os_log_impl(&dword_266C08000, v8, v9, "The resolved friend does not share their location with us, so we are not able to set a fence on them.", v10, 2u);
      OUTLINED_FUNCTION_6_1();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_266DAE3B0;
    *(inited + 32) = a1;
    type metadata accessor for SetGeoFenceFriendResolutionResult();
    v12 = a1;
    v13 = sub_266C6A318(inited);
    swift_setDeallocating();
    sub_266C6F074();
    return sub_266C6AA38(4, v13);
  }
}

id SetGeoFenceIntentHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SetGeoFenceIntentHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SetGeoFenceIntentHandler(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_266C22738@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_266C23434(a1, a2, type metadata accessor for LabeledLocationResult);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9A98, &qword_266DAE3F8);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_266C227A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 24) = 0;
}

uint64_t sub_266C227EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_266C186BC(a1, a2, &qword_2800C9AF0, &unk_266DAF8E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9AF8, &qword_266DAE460);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_266C22854@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 8) = 0;
}

uint64_t sub_266C22868(uint64_t a1, char a2, uint64_t a3, uint64_t (*a4)(uint64_t *))
{
  v8 = a1;
  v9 = a2;
  swift_beginAccess();
  if (*(a3 + 16))
  {

    sub_266DA969C();
  }

  OUTLINED_FUNCTION_17_0(a3 + 16, &v7);
  *(a3 + 16) = 0;

  return a4(&v8);
}

uint64_t sub_266C22904(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  swift_beginAccess();
  if (*(a2 + 16))
  {

    sub_266DA969C();
  }

  OUTLINED_FUNCTION_17_0(a2 + 16, &v7);
  *(a2 + 16) = 0;

  return a3(a1);
}

uint64_t sub_266C229A0(__int16 a1, uint64_t a2, uint64_t (*a3)(__int16 *))
{
  v7 = a1 & 0x1FF;
  swift_beginAccess();
  if (*(a2 + 16))
  {

    sub_266DA969C();
  }

  OUTLINED_FUNCTION_17_0(a2 + 16, v6);
  *(a2 + 16) = 0;

  return a3(&v7);
}

unint64_t sub_266C22A3C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_266C22B00(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_266C23550(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_266C22B00(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_266C22C00(a5, a6);
    *a1 = v9;
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
    result = sub_266DAAE5C();
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

uint64_t sub_266C22C00(uint64_t a1, unint64_t a2)
{
  v3 = sub_266C22C4C(a1, a2);
  sub_266C22D64(&unk_28785BE30);
  return v3;
}

uint64_t sub_266C22C4C(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_266DAA81C())
  {
    result = sub_266CFACA8(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_266DAADDC();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_266DAAE5C();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_266C22D64(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_266C22E48(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_266C22E48(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B08, &unk_266DAE470);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

uint64_t sub_266C22F60(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_266DAA70C();

  return v4;
}

unint64_t sub_266C22FD4()
{
  result = qword_2800C9A80;
  if (!qword_2800C9A80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800C9A80);
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

unint64_t sub_266C23060()
{
  result = qword_2800C9A90;
  if (!qword_2800C9A90)
  {
    sub_266C22FD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9A90);
  }

  return result;
}

uint64_t sub_266C230E8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_266C23130(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_266C17E24(a1, a2, a3);
  }

  return a1;
}

uint64_t type metadata accessor for SetGeoFenceIntentHandler(uint64_t a1)
{
  result = qword_2800C9AE0;
  if (!qword_2800C9AE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_266C2319C(uint64_t a1)
{
  result = type metadata accessor for FindFriendSessionManager(319);
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

uint64_t objectdestroy_8Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroyTm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_266C233D0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_266C23434(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_266C23494(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_266C234EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Location(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_266C23550(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

id sub_266C235B0(id result, char a2)
{
  switch(a2)
  {
    case 0:
    case 2:
    case 3:
      result = result;
      break;
    case 1:
    case 4:

      break;
    default:
      return result;
  }

  return result;
}

void sub_266C235EC(id a1, char a2)
{
  switch(a2)
  {
    case 0:
    case 2:
    case 3:

      break;
    case 1:
    case 4:

      break;
    default:
      return;
  }
}

uint64_t OUTLINED_FUNCTION_0_3(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_5_1()
{

  JUMPOUT(0x26D5F2480);
}

void OUTLINED_FUNCTION_6_1()
{

  JUMPOUT(0x26D5F2480);
}

void OUTLINED_FUNCTION_7_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_11()
{

  return swift_slowAlloc();
}

BOOL OUTLINED_FUNCTION_12_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_13_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_14_0()
{

  return swift_slowAlloc();
}

BOOL OUTLINED_FUNCTION_16_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_17_0(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t sub_266C23798(unint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v106 = a4;
  v111 = a3;
  v114 = a2;
  v6 = sub_266DA947C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v105[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_266DAABDC();
  if (qword_2800C9128 != -1)
  {
LABEL_59:
    swift_once();
  }

  v10 = qword_28156EF98;
  sub_266DA946C();
  sub_266DA945C();
  v12 = *(v7 + 8);
  v11 = v7 + 8;
  *&v105[1] = v12;
  v12(v9, v6);
  v13 = sub_266DA948C();
  v14 = sub_266DAAB0C();
  v15 = os_log_type_enabled(v13, v14);
  v112 = v4;
  v109 = v6;
  *&v105[3] = v10;
  if (v15)
  {
    OUTLINED_FUNCTION_14_0();
    v16 = OUTLINED_FUNCTION_2_2();
    *&v119[0] = v16;
    *v6 = 136446210;
    *(v6 + 4) = sub_266C22A3C(7105601, 0xE300000000000000, v119);
    _os_log_impl(&dword_266C08000, v13, v14, "**** %{public}s Devices List ****", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    v4 = v112;
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_3_2();
  }

  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_0_4();
  *(v18 - 16) = v111;
  *(v18 - 8) = v4;
  sub_266CB7BEC(sub_266C24694, v19, a1);
  v20 = sub_266DA948C();
  v21 = sub_266DAAB0C();
  v22 = os_log_type_enabled(v20, v21);
  v107 = v9;
  if (v22)
  {
    OUTLINED_FUNCTION_14_0();
    v23 = OUTLINED_FUNCTION_2_2();
    *&v119[0] = v23;
    v104 = 136446210;
    *v105 = sub_266C22A3C(0x746C75736552, 0xE600000000000000, v119);
    OUTLINED_FUNCTION_5_2(&dword_266C08000, v24, v25, "**** %{public}s Devices List ****");
    __swift_destroy_boxed_opaque_existential_0(v23);
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_3_2();
  }

  v4 = &v104;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_0_4();
  v27 = v112;
  *(v28 - 16) = v111;
  *(v28 - 8) = v27;
  sub_266CB7BEC(sub_266C24B08, v29, v30);
  v110 = 0;
  v31 = 0;
  v32 = *(a1 + 16);
  v33 = (a1 + 32);
  v9 = MEMORY[0x277D84F90];
  v34 = (a1 + 32);
  v108 = v11;
  while (1)
  {
    if (v32 == v31)
    {
      goto LABEL_37;
    }

    v6 = v34[3];
    a1 = v34[4];
    __swift_project_boxed_opaque_existential_1(v34, v6);
    v35 = OUTLINED_FUNCTION_1_3();
    result = v36(v35, a1);
    if ((result & 1) == 0)
    {
      break;
    }

    ++v31;
    v34 += 5;
  }

  v38 = 0;
  v7 = 40;
LABEL_11:
  v39 = __OFADD__(v38, 1);
  v40 = v38 + 1;
  if (v39)
  {
    __break(1u);
    goto LABEL_61;
  }

  v113 = v40;
  while (1)
  {
    v41 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    if (v41 == v32)
    {
      break;
    }

    if (v41 >= v32)
    {
      goto LABEL_57;
    }

    v42 = &v33[5 * v41];
    v6 = v42[3];
    v9 = v42[4];
    __swift_project_boxed_opaque_existential_1(v42, v6);
    v43 = OUTLINED_FUNCTION_1_3();
    result = v44(v43, v9);
    ++v31;
    if ((result & 1) == 0)
    {
      v31 = v41;
      v38 = v113;
      goto LABEL_11;
    }
  }

  v9 = MEMORY[0x277D84F90];
  if (!v113)
  {
    goto LABEL_37;
  }

  *&v119[0] = MEMORY[0x277D84F90];
  v4 = v119;
  result = sub_266C387DC(0, v113 & ~(v113 >> 63), 0);
  v7 = 0;
  v9 = *&v119[0];
  v45 = v33;
  while (v32 != v7)
  {
    v6 = v45[3];
    a1 = v45[4];
    __swift_project_boxed_opaque_existential_1(v45, v6);
    v46 = OUTLINED_FUNCTION_1_3();
    result = v47(v46, a1);
    if ((result & 1) == 0)
    {
      goto LABEL_24;
    }

    ++v7;
    v45 += 5;
  }

  v7 = v32;
LABEL_24:
  if (v113 < 0)
  {
LABEL_61:
    __break(1u);
    return result;
  }

  v114 = 0;
  while (2)
  {
    if (v7 >= v32)
    {
      goto LABEL_58;
    }

    v48 = &v33[5 * v7];
    v49 = v48[3];
    v50 = v48[4];
    v4 = __swift_project_boxed_opaque_existential_1(v48, v49);
    v51 = (*(v50 + 80))(v49, v50);
    v53 = v52;
    *&v119[0] = v9;
    v54 = v9;
    v55 = *(v9 + 2);
    v56 = *(v54 + 3);
    v6 = v55 + 1;
    if (v55 >= v56 >> 1)
    {
      v4 = v119;
      sub_266C387DC((v56 > 1), v55 + 1, 1);
      v54 = *&v119[0];
    }

    ++v114;
    *(v54 + 2) = v6;
    v57 = &v54[16 * v55];
    *(v57 + 4) = v51;
    *(v57 + 5) = v53;
    v9 = v54;
    while (1)
    {
      a1 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }

      if (a1 == v32)
      {
        break;
      }

      if (a1 >= v32)
      {
        goto LABEL_54;
      }

      v58 = &v33[5 * a1];
      v6 = v58[3];
      v59 = v58[4];
      __swift_project_boxed_opaque_existential_1(v58, v6);
      v60 = OUTLINED_FUNCTION_1_3();
      ++v7;
      if ((v61(v60, v59) & 1) == 0)
      {
        v7 = a1;
        goto LABEL_36;
      }
    }

    v7 = v32;
LABEL_36:
    if (v114 != v113)
    {
      continue;
    }

    break;
  }

LABEL_37:
  *&v119[0] = MEMORY[0x277D84FA0];
  v62 = v110;
  v63 = sub_266C247F0(v9);

  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_0_4();
  v65 = v111;
  *(v66 - 16) = v111;
  v68 = sub_266C241C8(sub_266C24948, v67, v63);
  v114 = v62;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B10, &unk_266DB6F00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_266DAE4A0;
  v70 = v65[3];
  v71 = v65[4];
  __swift_project_boxed_opaque_existential_1(v65, v70);
  (*(v71 + 8))(v70, v71);
  v72 = sub_266C6A330(v68);

  *&v119[0] = inited;
  sub_266C37F90(v72);
  v6 = 0;
  v73 = *&v119[0];
  v7 = *(*&v119[0] + 16);
  v74 = *&v119[0] + 88;
  v9 = MEMORY[0x277D84F90];
LABEL_38:
  v75 = (v74 + (v6 << 6));
  v4 = v112;
  a1 = &unk_266DAE000;
  while (v7 != v6)
  {
    if (v6 >= *(v73 + 16))
    {
      goto LABEL_55;
    }

    v76 = *(v75 - 5);
    v122 = *(v75 - 7);
    v123 = v76;
    v124 = *(v75 - 3);
    v77 = *v75;
    v125 = *(v75 - 1);
    if (v77)
    {
      v119[0] = v122;
      v119[1] = v123;
      v119[2] = v124;
      v120 = v125;
      v121 = v77;
      sub_266C24964(v119, &v115);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_266CF9984(0, *(v9 + 2) + 1, 1, v9);
        v9 = v84;
      }

      v79 = *(v9 + 2);
      v78 = *(v9 + 3);
      if (v79 >= v78 >> 1)
      {
        sub_266CF9984(v78 > 1, v79 + 1, 1, v9);
        v9 = v85;
      }

      ++v6;
      v116 = v123;
      v117 = v124;
      v118 = v125;
      v80 = v122;
      v115 = v122;
      *(v9 + 2) = v79 + 1;
      v81 = &v9[64 * v79];
      v82 = v117;
      v83 = v118;
      *(v81 + 3) = v116;
      *(v81 + 4) = v82;
      *(v81 + 2) = v80;
      *(v81 + 10) = v83;
      *(v81 + 11) = v77;
      goto LABEL_38;
    }

    v75 += 8;
    ++v6;
  }

  v86 = sub_266DA948C();
  v87 = sub_266DAAB0C();
  if (os_log_type_enabled(v86, v87))
  {
    OUTLINED_FUNCTION_14_0();
    v88 = OUTLINED_FUNCTION_2_2();
    *&v119[0] = v88;
    *v6 = 136446210;
    *(v6 + 4) = sub_266C22A3C(0x7372656E774FLL, 0xE600000000000000, v119);
    OUTLINED_FUNCTION_5_2(&dword_266C08000, v89, v90, "**** %{public}s ****");
    __swift_destroy_boxed_opaque_existential_0(v88);
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_3_2();
  }

  v91 = v106;
  MEMORY[0x28223BE20](v92);
  OUTLINED_FUNCTION_0_4();
  v93 = v112;
  *(v94 - 16) = v112;
  sub_266CB7C40(sub_266C249C0, v95, v9);

  v96 = sub_266DA948C();
  v97 = sub_266DAAB0C();
  if (os_log_type_enabled(v96, v97))
  {
    OUTLINED_FUNCTION_14_0();
    v98 = OUTLINED_FUNCTION_2_2();
    *&v119[0] = v98;
    v104 = 136446210;
    *v105 = sub_266C22A3C(0x4D20796C696D6146, 0xEE00737265626D65, v119);
    _os_log_impl(&dword_266C08000, v96, v97, "**** %{public}s ****", &v104, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v98);
    v93 = v112;
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_3_2();
  }

  v99 = v109;
  MEMORY[0x28223BE20](v100);
  OUTLINED_FUNCTION_0_4();
  *(v101 - 16) = v93;
  sub_266CB7C40(sub_266C24B20, v102, v91);
  sub_266DAABCC();
  v103 = v107;
  sub_266DA946C();
  sub_266DA945C();
  return (*&v105[1])(v103, v99);
}

uint64_t sub_266C2414C(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a2[3];
  v5 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v4);
  return (*(v5 + 16))(v2, v3, v4, v5);
}

uint64_t sub_266C241C8(void (*a1)(__int128 *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = (a3 + 40);
  v7 = MEMORY[0x277D84F90];
  if (v5)
  {
    while (1)
    {
      v8 = *v6;
      v27[0] = *(v6 - 1);
      v27[1] = v8;

      a1(&v23, v27);
      if (v3)
      {
        break;
      }

      if (*(&v26 + 1))
      {
        v19 = v23;
        v20 = v24;
        v21 = v25;
        v22 = v26;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_266CF9984(0, *(v7 + 16) + 1, 1, v7);
          v7 = v13;
        }

        v10 = *(v7 + 16);
        v9 = *(v7 + 24);
        if (v10 >= v9 >> 1)
        {
          sub_266CF9984(v9 > 1, v10 + 1, 1, v7);
          v7 = v14;
        }

        v17 = v21;
        v18 = v22;
        v11 = v19;
        v16 = v20;
        *(v7 + 16) = v10 + 1;
        v12 = (v7 + (v10 << 6));
        v12[4] = v17;
        v12[5] = v18;
        v12[2] = v11;
        v12[3] = v16;
      }

      else
      {
        v19 = v23;
        v20 = v24;
        v21 = v25;
        v22 = v26;
        sub_266C24A30(&v19);
      }

      v6 += 2;
      if (!--v5)
      {
        return v7;
      }
    }
  }

  return v7;
}

void sub_266C2436C(void (*a1)(uint64_t *__return_ptr, id *), uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v13 = MEMORY[0x277D84F90];
  v6 = a4(a3);
  for (i = 0; v6 != i; ++i)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x26D5F1780](i, a3);
    }

    else
    {
      if (i >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v8 = *(a3 + 8 * i + 32);
    }

    v9 = v8;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      return;
    }

    v12 = v8;
    a1(&v11, &v12);
    if (v4)
    {

      return;
    }

    if (v11)
    {
      MEMORY[0x26D5F1270]();
      if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_266DAA95C();
      }

      sub_266DAA96C();
    }
  }
}

void sub_266C244C4(void *a1, void *a2)
{
  v3 = a2[3];
  v4 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v3);
  SFMContactDataProvider.ownerContact(of:)(a1, v3, v4);
  sub_266C233D0(a1, v14);
  sub_266C24A98(v15, v13);
  v5 = sub_266DA948C();
  v6 = sub_266DAAB0C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13[0] = v8;
    *v7 = 136446466;
    __swift_project_boxed_opaque_existential_1(v14, v14[3]);
    v9 = sub_266CDA8CC();
    v11 = v10;
    __swift_destroy_boxed_opaque_existential_0(v14);
    v12 = sub_266C22A3C(v9, v11, v13);

    *(v7 + 4) = v12;
    *(v7 + 12) = 1024;
    LODWORD(v12) = v16 != 0;
    sub_266C24A30(v15);
    *(v7 + 14) = v12;
    sub_266C24A30(v15);
    _os_log_impl(&dword_266C08000, v5, v6, "%{public}s ownerFound?: %{BOOL}d", v7, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x26D5F2480](v8, -1, -1);
    MEMORY[0x26D5F2480](v7, -1, -1);
  }

  else
  {
    sub_266C24A30(v15);
    sub_266C24A30(v15);

    __swift_destroy_boxed_opaque_existential_0(v14);
  }
}

void sub_266C246B0(__int128 *a1)
{
  v1 = a1[1];
  v11 = *a1;
  v12 = v1;
  v2 = a1[3];
  v13 = a1[2];
  v14 = v2;
  sub_266C24964(&v11, v10);
  v3 = sub_266DA948C();
  v4 = sub_266DAAB0C();
  sub_266C249DC(&v11);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136446210;
    v10[0] = v11;
    v10[1] = v12;
    v10[2] = v13;
    v10[3] = v14;
    v7 = SFMPerson.debugDescription.getter();
    v9 = sub_266C22A3C(v7, v8, &v15);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_266C08000, v3, v4, "%{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x26D5F2480](v6, -1, -1);
    MEMORY[0x26D5F2480](v5, -1, -1);
  }
}

uint64_t sub_266C247F0(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = *(result + 16);
  v4 = result + 40;
  v5 = MEMORY[0x277D84F90];
  v14 = result + 40;
LABEL_2:
  for (i = (v4 + 16 * v2); ; i += 2)
  {
    if (v3 == v2)
    {

      return v5;
    }

    if (v2 >= *(v1 + 16))
    {
      break;
    }

    v8 = *(i - 1);
    v7 = *i;
    swift_bridgeObjectRetain_n();
    v9 = sub_266C51548(v15);

    if (v9)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      v16 = v5;
      if ((result & 1) == 0)
      {
        result = sub_266C387DC(0, *(v5 + 16) + 1, 1);
        v5 = v16;
      }

      v11 = *(v5 + 16);
      v10 = *(v5 + 24);
      v12 = v11 + 1;
      if (v11 >= v10 >> 1)
      {
        result = sub_266C387DC((v10 > 1), v11 + 1, 1);
        v12 = v11 + 1;
        v5 = v16;
      }

      ++v2;
      *(v5 + 16) = v12;
      v13 = v5 + 16 * v11;
      *(v13 + 32) = v8;
      *(v13 + 40) = v7;
      v4 = v14;
      goto LABEL_2;
    }

    ++v2;
  }

  __break(1u);
  return result;
}

uint64_t sub_266C24A30(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B18, &qword_266DBFC40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_266C24A98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B18, &qword_266DBFC40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_2_2()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_3_2()
{

  JUMPOUT(0x26D5F2480);
}

void OUTLINED_FUNCTION_5_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

id CLLocation.init(_:)(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (*(a1 + 32))
  {
    v4 = 0.0;
  }

  else
  {
    v4 = *(a1 + 16);
  }

  if (*(a1 + 32))
  {
    v5 = -1.0;
  }

  else
  {
    v5 = *(a1 + 24);
  }

  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  type metadata accessor for Location(0);
  v7 = sub_266DA73FC();
  v8 = [v6 initWithCoordinate:v7 altitude:v2 horizontalAccuracy:v3 verticalAccuracy:0.0 timestamp:{v4, v5}];

  sub_266C24C6C(a1);
  return v8;
}

uint64_t sub_266C24C6C(uint64_t a1)
{
  v2 = type metadata accessor for Location(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_266C24CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_6();
  a19 = v22;
  a20 = v23;
  v24 = v20;
  v26 = v25;
  v27 = type metadata accessor for Location(0);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_0_5();
  v31 = v29 - v30;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_3_3();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B20, &unk_266DB1EC0);
  v34 = OUTLINED_FUNCTION_4_3(v33);
  MEMORY[0x28223BE20](v34);
  v36 = &a9 - v35;
  if (*(v26 + 8))
  {
    v37 = sub_266DAA6FC();
  }

  else
  {
    v37 = 0;
  }

  v38 = objc_allocWithZone(v24);
  v39 = sub_266DAA6FC();
  v40 = OUTLINED_FUNCTION_6_2();
  v42 = [v40 v41];

  v43 = *(v26 + 16);
  v44 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  v45 = v42;
  v46 = [v44 initWithBool_];
  v47 = OUTLINED_FUNCTION_6_2();
  [v47 v48];

  v49 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v50 = OUTLINED_FUNCTION_6_2();
  [v50 v51];

  v52 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v53 = OUTLINED_FUNCTION_6_2();
  [v53 v54];

  v55 = type metadata accessor for FriendLocation(0);
  sub_266C186BC(v26 + *(v55 + 32), v36, &qword_2800C9B20, &unk_266DB1EC0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v36, 1, v27);
  v57 = 0;
  if (EnumTagSinglePayload != 1)
  {
    sub_266C234EC(v36, v21);
    type metadata accessor for SpeakableLocation();
    sub_266C24F5C(v21, v31);
    v57 = sub_266D6CE4C(v31);
    OUTLINED_FUNCTION_1_4();
    sub_266C24FC0(v21, v58);
  }

  [v45 setLocation_];

  sub_266C24FC0(v26, type metadata accessor for FriendLocation);
  OUTLINED_FUNCTION_5();
}

uint64_t sub_266C24F5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Location(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_266C24FC0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_0();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_266C25018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_6();
  a19 = v23;
  a20 = v24;
  v25 = v21;
  sub_266DA746C();
  OUTLINED_FUNCTION_5_3();
  v27 = v26;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_0_5();
  v31 = v29 - v30;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_3_3();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B28, &qword_266DAE4B8);
  v34 = OUTLINED_FUNCTION_4_3(v33);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_0_5();
  v37 = v35 - v36;
  MEMORY[0x28223BE20](v38);
  v40 = &a9 - v39;
  v41 = [v25 location];
  if (v41 && (v42 = v41, v43 = [v41 location], v42, v43))
  {
    v44 = [v43 timestamp];

    sub_266DA744C();
    v45 = 0;
  }

  else
  {
    v45 = 1;
  }

  __swift_storeEnumTagSinglePayload(v40, v45, 1, v20);
  sub_266C186BC(v40, v37, &qword_2800C9B28, &qword_266DAE4B8);
  if (__swift_getEnumTagSinglePayload(v37, 1, v20) != 1)
  {
    v46 = OUTLINED_FUNCTION_7_1();
    v47(v46);
    sub_266DA741C();
    sub_266DA740C();
    v48 = *(v27 + 8);
    v48(v31, v20);
    v48(v22, v20);
  }

  sub_266C1825C(v40, &qword_2800C9B28, &qword_266DAE4B8);
  OUTLINED_FUNCTION_5();
}

void sub_266C25268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_6();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B20, &unk_266DB1EC0);
  v27 = OUTLINED_FUNCTION_4_3(v26);
  MEMORY[0x28223BE20](v27);
  v29 = &a9 - v28;
  v30 = v23;
  v31 = sub_266C22F3C(v30);
  v33 = v32;
  v34 = [v30 locateInProgress];
  if (v34)
  {
    v35 = v34;
    v36 = [v34 BOOLValue];
  }

  else
  {
    v36 = 1;
  }

  v37 = [v30 isProactiveLocation];
  if (v37)
  {
    v38 = v37;
    v39 = [v37 BOOLValue];
  }

  else
  {
    v39 = 0;
  }

  v40 = [v30 isInaccurate];
  if (v40)
  {
    v41 = v40;
    v42 = [v40 BOOLValue];
  }

  else
  {
    v42 = 1;
  }

  v43 = [v30 location];
  if (v43)
  {
    sub_266C5FF68(v43, v29);
  }

  else
  {

    v44 = type metadata accessor for Location(0);
    __swift_storeEnumTagSinglePayload(v29, 1, 1, v44);
  }

  v45 = type metadata accessor for FriendLocation(0);
  v46 = *(v45 + 32);
  v47 = type metadata accessor for Location(0);
  __swift_storeEnumTagSinglePayload(v25 + v46, 1, 1, v47);
  *v25 = v31;
  *(v25 + 8) = v33;
  *(v25 + 16) = v36;
  *(v25 + 17) = v39;
  *(v25 + 18) = v42;
  sub_266C25700(v29, v25 + v46);
  *(v25 + *(v45 + 36)) = 0;
  OUTLINED_FUNCTION_5();
}

void sub_266C25444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_6();
  a19 = v23;
  a20 = v24;
  sub_266DA746C();
  OUTLINED_FUNCTION_5_3();
  v26 = v25;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_0_5();
  v30 = v28 - v29;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_3_3();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B20, &unk_266DB1EC0);
  v33 = OUTLINED_FUNCTION_4_3(v32);
  MEMORY[0x28223BE20](v33);
  v35 = &a9 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B28, &qword_266DAE4B8);
  v37 = OUTLINED_FUNCTION_4_3(v36);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_0_5();
  v40 = v38 - v39;
  MEMORY[0x28223BE20](v41);
  v43 = &a9 - v42;
  v44 = type metadata accessor for FriendLocation(0);
  sub_266C186BC(v21 + *(v44 + 32), v35, &qword_2800C9B20, &unk_266DB1EC0);
  v45 = type metadata accessor for Location(0);
  if (__swift_getEnumTagSinglePayload(v35, 1, v45) == 1)
  {
    sub_266C1825C(v35, &qword_2800C9B20, &unk_266DB1EC0);
    v46 = 1;
  }

  else
  {
    (*(v26 + 16))(v43, &v35[*(v45 + 28)], v20);
    OUTLINED_FUNCTION_1_4();
    sub_266C24FC0(v35, v47);
    v46 = 0;
  }

  __swift_storeEnumTagSinglePayload(v43, v46, 1, v20);
  sub_266C186BC(v43, v40, &qword_2800C9B28, &qword_266DAE4B8);
  if (__swift_getEnumTagSinglePayload(v40, 1, v20) != 1)
  {
    v48 = OUTLINED_FUNCTION_7_1();
    v49(v48);
    sub_266DA741C();
    sub_266DA740C();
    v50 = *(v26 + 8);
    v50(v30, v20);
    v50(v22, v20);
  }

  sub_266C1825C(v43, &qword_2800C9B28, &qword_266DAE4B8);
  OUTLINED_FUNCTION_5();
}

uint64_t sub_266C25700(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B20, &unk_266DB1EC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_266C257EC()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800C9B30);
  v1 = __swift_project_value_buffer(v0, qword_2800C9B30);
  if (qword_28156F870 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_28156FCA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_266C258B4(uint64_t *a1)
{
  if (a1[3])
  {
    return 0;
  }

  v13[7] = v1;
  v13[8] = v2;
  v4 = *a1;
  if (*a1 == -1)
  {
    if (qword_2800C9150 != -1)
    {
      swift_once();
    }

    v9 = sub_266DA94AC();
    __swift_project_value_buffer(v9, qword_2800C9B30);
    v10 = sub_266DA948C();
    v11 = sub_266DAAB0C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_266C08000, v10, v11, "Current platform is explicitly unsupported.", v12, 2u);
      MEMORY[0x26D5F2480](v12, -1, -1);
    }

    return 1;
  }

  else
  {
    v5 = a1[1];
    v6 = a1[2];
    v7 = [objc_opt_self() processInfo];
    v13[0] = v4;
    v13[1] = v5;
    v13[2] = v6;
    v8 = [v7 isOperatingSystemAtLeastVersion_];

    if (v8)
    {
      return 0;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_266C25A20@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X4>, void *a6@<X5>, void *a7@<X6>, void *a8@<X7>, uint64_t a9@<X8>)
{
  v105 = a7;
  v106 = a8;
  v111 = a6;
  v112 = a2;
  v99 = a4;
  v97 = a3;
  v114 = a1;
  sub_266DAAB7C();
  OUTLINED_FUNCTION_1_5();
  v95 = v12;
  v96 = v11;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_0_6();
  v94 = v14 - v13;
  OUTLINED_FUNCTION_3_4();
  v92 = sub_266DAAB6C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_0_6();
  v93 = v17 - v16;
  OUTLINED_FUNCTION_3_4();
  v18 = sub_266DA9FDC();
  MEMORY[0x28223BE20](v18 - 8);
  OUTLINED_FUNCTION_0_6();
  v90 = v20 - v19;
  v21 = OUTLINED_FUNCTION_3_4();
  v91 = type metadata accessor for DeviceLocationDescriptionProvider(v21);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_0_6();
  v98 = (v24 - v23);
  v25 = OUTLINED_FUNCTION_3_4();
  v26 = type metadata accessor for GEOServicesReverseGeocoder(v25);
  v27 = MEMORY[0x28223BE20](v26 - 8);
  v89 = &v84 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v110 = &v84 - v29;
  OUTLINED_FUNCTION_3_4();
  sub_266DA750C();
  OUTLINED_FUNCTION_1_5();
  v108 = v31;
  v109 = v30;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_0_6();
  v107 = v33 - v32;
  OUTLINED_FUNCTION_3_4();
  v34 = sub_266DA926C();
  MEMORY[0x28223BE20](v34 - 8);
  OUTLINED_FUNCTION_0_6();
  type metadata accessor for FindDeviceAndPlaySoundIntent();
  type metadata accessor for FindDeviceAndPlaySoundIntentResponse();
  sub_266DA796C();
  type metadata accessor for FindDeviceAndPlaySoundCATsSimple(0);
  sub_266DA925C();
  v35 = sub_266DA91CC();
  sub_266DA7FEC();
  sub_266DA7E7C();
  swift_allocObject();
  v36 = sub_266DA7E6C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B48, &qword_266DAE520);
  swift_allocObject();
  v113 = sub_266DAA46C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B50, &qword_266DAE528);
  swift_allocObject();
  v37 = sub_266DAA2AC();
  if (qword_2800C93E0 != -1)
  {
    swift_once();
  }

  sub_266DA78BC();
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B58, &qword_266DB5D50);
  sub_266DA791C();
  sub_266C233D0(a5, v138);
  v38 = v114;
  sub_266C233D0(v114, v139);
  sub_266C233D0(v106, &v140);
  v139[5] = v35;
  v139[6] = v36;
  v103 = v36;
  sub_266C269D4();

  sub_266DA78FC();
  sub_266DA794C();
  sub_266C233D0(a5, v115);
  sub_266C233D0(v38, v123);
  sub_266C233D0(v141, v122);
  sub_266C233D0(v105, v137);
  __swift_mutable_project_boxed_opaque_existential_1(v115, *(&v115[1] + 1));
  __swift_mutable_project_boxed_opaque_existential_1(v137, v137[3]);
  v88 = &v84;
  OUTLINED_FUNCTION_1_5();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_0_6();
  v100 = a9;
  v42 = (v41 - v40);
  (*(v43 + 16))(v41 - v40);
  v104 = a5;
  v136[3] = &unk_287867FA0;
  v136[4] = &off_287867FB0;
  v134 = &type metadata for FMIPDeviceImageProvider;
  v135 = &off_287868930;
  *&v133 = v113;
  v101 = v37;
  *(&v133 + 1) = v37;
  v132[3] = &type metadata for DisambiguationTask.Parser;
  v132[4] = &off_2878672C8;
  v44 = swift_allocObject();
  v132[0] = v44;
  v45 = v42[1];
  v44[1] = *v42;
  v44[2] = v45;
  v44[3] = v42[2];
  _s22DisambiguationStrategyCMa();
  v46 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v136, &unk_287867FA0);
  __swift_mutable_project_boxed_opaque_existential_1(v132, &type metadata for DisambiguationTask.Parser);
  OUTLINED_FUNCTION_1_5();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_0_6();
  v50 = (v49 - v48);
  (*(v51 + 16))(v49 - v48);
  v130 = &unk_287867FA0;
  v131 = &off_287867FB0;
  v127 = &type metadata for DisambiguationTask.Parser;
  v128 = &off_2878672C8;
  v52 = swift_allocObject();
  *&v126 = v52;
  v53 = v50[1];
  v52[1] = *v50;
  v52[2] = v53;
  v52[3] = v50[2];
  *(v46 + 232) = 0;
  sub_266C0B0D8(&v129, v46 + 16);
  sub_266C0B0D8(v123, v46 + 56);
  sub_266C0B0D8(v122, v46 + 96);
  v54 = v103;
  *(v46 + 136) = v35;
  *(v46 + 144) = v54;
  sub_266C0B0D8(&v133, v46 + 152);
  v87 = v46;
  sub_266C0B0D8(&v126, v46 + 192);
  v55 = v35;

  v56 = v113;

  v57 = v101;

  __swift_destroy_boxed_opaque_existential_0(v132);
  __swift_destroy_boxed_opaque_existential_0(v136);
  __swift_destroy_boxed_opaque_existential_0(v137);
  __swift_destroy_boxed_opaque_existential_0(v115);
  *&v115[0] = v46;
  sub_266C26D14(&qword_2800C9B68, _s22DisambiguationStrategyCMa, &unk_266DAFB50);
  sub_266DA78DC();
  sub_266DA795C();
  sub_266C233D0(v104, v123);
  v58 = v114;
  sub_266C233D0(v114, v124);
  v124[10] = &type metadata for FMIPDeviceImageProvider;
  v124[11] = &off_287868930;
  v124[7] = v56;
  v124[8] = v57;
  sub_266C233D0(v111, &v125);
  v85 = v55;
  v124[5] = v55;
  v124[6] = v54;
  sub_266C26A78();

  v59 = sub_266DA78EC();
  v61 = v60;
  v88 = v60;
  sub_266C26ACC(v123, v115);
  v62 = swift_allocObject();
  v62[2] = v59;
  v62[3] = v61;
  memcpy(v62 + 4, v115, 0xB0uLL);

  sub_266DA792C();
  __swift_project_boxed_opaque_existential_1(v58, v58[3]);
  v63 = v107;
  sub_266DA7AFC();
  v64 = v109;
  v65 = *(v108 + 16);
  v66 = v110;
  v65(v110, v63, v109);
  sub_266C233D0(v112, &v115[2]);
  *&v115[0] = sub_266DAA70C();
  *(&v115[0] + 1) = v67;
  v115[1] = xmmword_266DAE510;
  sub_266C26B34(v115, v122);
  v86 = type metadata accessor for GEOServicesReverseGeocoder;
  v68 = v66;
  v69 = v89;
  sub_266C26DBC(v68, v89, type metadata accessor for GEOServicesReverseGeocoder);
  v70 = sub_266C26B90(v122, v69);
  sub_266C26CC0(v115);
  v71 = type metadata accessor for GeocodingUserLocationProvider();
  v72 = v98;
  v98[3] = v71;
  v72[4] = &off_2878624E0;
  *v72 = v70;
  v73 = v91;
  v65(v72 + *(v91 + 24), v63, v64);
  v89 = *(v73 + 28);
  v84 = sub_266C22FD4();
  v74 = v85;

  v75 = v90;
  sub_266DA9FBC();
  *&v115[0] = MEMORY[0x277D84F90];
  sub_266C26D14(&qword_28156EFC8, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC440, &qword_266DAF890);
  sub_266C230E8(&qword_28156EFE8, &qword_2800CC440, &qword_266DAF890, MEMORY[0x277D83970]);
  v76 = v93;
  sub_266DAAD0C();
  v77 = v94;
  (*(v95 + 104))(v94, *MEMORY[0x277D85260], v96);
  v78 = sub_266D689A4(0xD000000000000034, 0x8000000266DC16D0, v75, v76, v77, 0);
  *(v72 + v89) = v78;
  v72[5] = v74;
  v79 = v104;
  sub_266C233D0(v104, v115);
  v80 = v114;
  sub_266C233D0(v114, &v115[2] + 8);
  *&v115[7] = v73;
  *(&v115[7] + 1) = &off_287864B08;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v115[5] + 1);
  sub_266C26DBC(v72, boxed_opaque_existential_1, type metadata accessor for DeviceLocationDescriptionProvider);
  *(&v115[10] + 1) = &type metadata for SFMUserDefaultsSettingProvider;
  v116 = &protocol witness table for SFMUserDefaultsSettingProvider;
  v119 = &type metadata for FMIPDeviceImageProvider;
  v120 = &off_287868930;
  v117 = v113;
  v118 = v101;
  v82 = v106;
  sub_266C233D0(v106, &v121);
  *&v115[5] = v97;
  *&v115[8] = v74;
  *(&v115[8] + 1) = v103;
  sub_266C26E1C();
  sub_266DA78AC();
  sub_266DA790C();
  sub_266C26E70();
  sub_266DA78CC();
  sub_266DA793C();

  __swift_destroy_boxed_opaque_existential_0(v82);
  __swift_destroy_boxed_opaque_existential_0(v105);
  __swift_destroy_boxed_opaque_existential_0(v111);
  __swift_destroy_boxed_opaque_existential_0(v79);
  __swift_destroy_boxed_opaque_existential_0(v99);
  __swift_destroy_boxed_opaque_existential_0(v112);
  sub_266C26F6C(v110, v86);
  (*(v108 + 8))(v107, v109);
  sub_266C26EC4(v138);
  __swift_destroy_boxed_opaque_existential_0(v141);
  sub_266C26F18(v115);
  sub_266C26F6C(v72, type metadata accessor for DeviceLocationDescriptionProvider);
  sub_266C26FC4(v123);
  return __swift_destroy_boxed_opaque_existential_0(v80);
}

id sub_266C266CC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B90, &qword_266DBB6E0);
  v0 = sub_266DA7FBC();
  v1 = [v0 needsConfirmPlaySound];

  if (!v1)
  {
    return 0;
  }

  v2 = [v1 BOOLValue];

  return v2;
}

void *sub_266C2674C(void *__src, __int128 *a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  memcpy(v6 + 2, __src, 0xB0uLL);
  sub_266C0B0D8(a2, (v6 + 29));
  sub_266C0B0D8(a3, (v6 + 24));
  v6[34] = a4;
  v12 = (v6 + *(*v6 + 128));
  *v12 = a5;
  v12[1] = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9BC0, &unk_266DAE550);
  swift_storeEnumTagMultiPayload();
  return v6;
}

uint64_t sub_266C267FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v6 = a3(a1);
  if (v6)
  {
    __src[0] = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9BA8, &qword_266DAE540);
    swift_allocObject();
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9BB0, &qword_266DAE548);
    v8 = sub_266C230E8(&qword_2800C9BB8, &qword_2800C9BB0, &qword_266DAE548, MEMORY[0x277D5B820]);
    v9 = MEMORY[0x26D5EE030](__src, v7, v8);
  }

  else
  {
    v9 = 0;
  }

  sub_266C26ACC(a5, __src);
  sub_266DA7FEC();
  sub_266DA81BC();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B90, &qword_266DBB6E0);
  v10 = sub_266DA7FCC();
  v11 = sub_266DA7FBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B98, &qword_266DAE538);
  swift_allocObject();
  __src[0] = sub_266C2674C(__src, &v15, &v14, v9, v10, v11);
  sub_266C230E8(&qword_2800C9BA0, &qword_2800C9B98, &qword_266DAE538, &unk_266DB4E88);
  v12 = sub_266DA799C();

  return v12;
}

unint64_t sub_266C269D4()
{
  result = qword_2800C9B60;
  if (!qword_2800C9B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9B60);
  }

  return result;
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

unint64_t sub_266C26A78()
{
  result = qword_2800C9B70;
  if (!qword_2800C9B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9B70);
  }

  return result;
}

uint64_t sub_266C26B90(uint64_t a1, uint64_t a2)
{
  v15 = type metadata accessor for GEOServicesReverseGeocoder(0);
  v16 = &off_287868A70;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14);
  sub_266C27018(a2, boxed_opaque_existential_1);
  type metadata accessor for GeocodingUserLocationProvider();
  v5 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v14, v15);
  OUTLINED_FUNCTION_1_5();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_0_6();
  v9 = v8 - v7;
  (*(v10 + 16))(v8 - v7);
  sub_266C26B34(a1, v13);
  v11 = sub_266C2707C(v13, v9, v5);
  sub_266C26CC0(a1);
  __swift_destroy_boxed_opaque_existential_0(v14);
  return v11;
}

uint64_t sub_266C26D14(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_266C26DBC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

unint64_t sub_266C26E1C()
{
  result = qword_2800C9B78;
  if (!qword_2800C9B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9B78);
  }

  return result;
}

unint64_t sub_266C26E70()
{
  result = qword_2800C9B80;
  if (!qword_2800C9B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9B80);
  }

  return result;
}

uint64_t sub_266C26F6C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_266C27018(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GEOServicesReverseGeocoder(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_266C2707C(const void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B20, &unk_266DB1EC0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v12 - v7;
  v16 = &type metadata for AceUserLocationProvider;
  v17 = &off_287867C00;
  *&v15 = swift_allocObject();
  memcpy((v15 + 16), a1, 0x48uLL);
  v13 = type metadata accessor for GEOServicesReverseGeocoder(0);
  v14 = &off_287868A70;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  sub_266C27018(a2, boxed_opaque_existential_1);
  v10 = type metadata accessor for Location(0);
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B88, &qword_266DAE530);
  swift_allocObject();
  *(a3 + 96) = sub_266DA973C();
  *(a3 + 104) = 0;
  sub_266C0B0D8(&v15, a3 + 16);
  sub_266C0B0D8(&v12, a3 + 56);
  return a3;
}

uint64_t ProductNameConstants.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_266DAAF8C();

  *a3 = v4 != 0;
  return result;
}

SiriFindMy::DeviceTypeConstants_optional __swiftcall DeviceTypeConstants.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_266DAAF8C();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t DeviceTypeConstants.rawValue.getter()
{
  if (*v0)
  {
    return 0x746375646F7270;
  }

  else
  {
    return 0x73646F70726961;
  }
}

uint64_t sub_266C2736C@<X0>(uint64_t *a1@<X8>)
{
  result = DeviceTypeConstants.rawValue.getter();
  *a1 = result;
  a1[1] = 0xE700000000000000;
  return result;
}

unint64_t sub_266C273C8()
{
  result = qword_2800C9BC8;
  if (!qword_2800C9BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9BC8);
  }

  return result;
}

unint64_t sub_266C27420()
{
  result = qword_2800C9BD0;
  if (!qword_2800C9BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9BD0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DeviceTypeConstants(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_266C27558(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_266C27600()
{
  result = sub_266DAA5AC();
  qword_28156FC98 = result;
  unk_28156FCA0 = v1;
  return result;
}

void sub_266C27634(uint64_t a1)
{
  v46 = sub_266DA74AC();
  v3 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v45 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  if (v5)
  {
    v39 = v1;
    v55 = MEMORY[0x277D84F90];
    sub_266C38868(0, v5, 0);
    v6 = v55;
    v9 = sub_266C293FC(a1);
    v10 = 0;
    v11 = a1 + 64;
    v43 = (v3 + 8);
    v44 = a1;
    v40 = a1 + 72;
    v41 = v5;
    v42 = a1 + 64;
    if ((v9 & 0x8000000000000000) == 0)
    {
      while (v9 < 1 << *(a1 + 32))
      {
        v12 = v9 >> 6;
        if ((*(v11 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
        {
          goto LABEL_36;
        }

        if (*(a1 + 36) != v7)
        {
          goto LABEL_37;
        }

        v47 = v8;
        v13 = *(*(a1 + 56) + 8 * v9);
        if (v13 >> 62)
        {
          v38 = v7;
          v14 = sub_266DAAD5C();
          v7 = v38;
        }

        else
        {
          v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v48 = v10;
        v49 = v7;
        if (v14)
        {
          if ((v13 & 0xC000000000000001) != 0)
          {
            v15 = v6;

            v17 = MEMORY[0x26D5F1780](0, v13);
          }

          else
          {
            if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_41;
            }

            v15 = v6;
            v16 = *(v13 + 32);

            v17 = v16;
          }

          v18 = v17;
        }

        else
        {
          v15 = v6;

          v18 = 0;
        }

        v50 = 1 << v9;
        v19 = [v18 deviceOwner];

        if (!v19)
        {
          sub_266C29814(0, &qword_2800C9BD8, 0x277CD3E90);
          v53 = 0u;
          v54 = 0u;
          v51 = 0u;
          v52 = 0u;
          sub_266C367A4();
          v19 = v20;
        }

        v21 = v45;
        sub_266DA749C();
        v22 = sub_266DA747C();
        v24 = v23;
        (*v43)(v21, v46);

        v6 = v15;
        v55 = v15;
        v26 = *(v15 + 16);
        v25 = *(v15 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_266C38868(v25 > 1, v26 + 1, 1);
          v6 = v55;
        }

        *(v6 + 16) = v26 + 1;
        v27 = v6 + 48 * v26;
        *(v27 + 32) = v22;
        *(v27 + 40) = v24;
        *(v27 + 48) = v19;
        *(v27 + 56) = 0;
        *(v27 + 64) = 258;
        *(v27 + 72) = v13;
        a1 = v44;
        v28 = 1 << *(v44 + 32);
        if (v9 >= v28)
        {
          goto LABEL_38;
        }

        v11 = v42;
        v29 = *(v42 + 8 * v12);
        if ((v29 & v50) == 0)
        {
          goto LABEL_39;
        }

        if (*(v44 + 36) != v49)
        {
          goto LABEL_40;
        }

        v30 = v29 & (-2 << (v9 & 0x3F));
        if (v30)
        {
          v28 = __clz(__rbit64(v30)) | v9 & 0x7FFFFFFFFFFFFFC0;
          v31 = v41;
        }

        else
        {
          v32 = v6;
          v33 = v12 << 6;
          v34 = v12 + 1;
          v31 = v41;
          v35 = (v40 + 8 * v12);
          while (v34 < (v28 + 63) >> 6)
          {
            v37 = *v35++;
            v36 = v37;
            v33 += 64;
            ++v34;
            if (v37)
            {
              sub_266C2943C(v9, v49, v47 & 1);
              v28 = __clz(__rbit64(v36)) + v33;
              goto LABEL_28;
            }
          }

          sub_266C2943C(v9, v49, v47 & 1);
LABEL_28:
          v6 = v32;
        }

        v10 = v48 + 1;
        if (v48 + 1 == v31)
        {
          return;
        }

        v8 = 0;
        v7 = *(a1 + 36);
        v9 = v28;
        if (v28 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

void sub_266C27A3C(uint64_t a1, char a2)
{
  v48 = sub_266DA74AC();
  v5 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v47 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (v7)
  {
    v40 = v2;
    v54 = MEMORY[0x277D84F90];
    sub_266C38868(0, v7, 0);
    v8 = v54;
    v11 = sub_266C293FC(a1);
    v12 = 0;
    v13 = a1 + 64;
    v45 = (v5 + 8);
    v46 = a1;
    v44 = a2 & 1;
    v41 = a1 + 72;
    v42 = v7;
    v43 = a1 + 64;
    if ((v11 & 0x8000000000000000) == 0)
    {
      do
      {
        if (v11 >= 1 << *(a1 + 32))
        {
          break;
        }

        v14 = v11 >> 6;
        if ((*(v13 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
        {
          goto LABEL_35;
        }

        if (*(a1 + 36) != v9)
        {
          goto LABEL_36;
        }

        v49 = v10;
        v15 = *(*(a1 + 56) + 8 * v11);
        if (v15 >> 62)
        {
          v39 = v9;
          v16 = sub_266DAAD5C();
          v9 = v39;
        }

        else
        {
          v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v50 = v12;
        v51 = v9;
        v52 = 1 << v11;
        if (v16)
        {
          if ((v15 & 0xC000000000000001) != 0)
          {

            v18 = MEMORY[0x26D5F1780](0, v15);
          }

          else
          {
            if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_40;
            }

            v17 = *(v15 + 32);

            v18 = v17;
          }

          v19 = sub_266C479D8(v18);
          if (v20)
          {
            v21 = v20;
            v53 = v19;
            goto LABEL_16;
          }
        }

        else
        {
        }

        v53 = 0;
        v21 = 0xE000000000000000;
LABEL_16:

        v22 = v47;
        sub_266DA749C();
        v23 = sub_266DA747C();
        v25 = v24;
        (*v45)(v22, v48);

        v54 = v8;
        v27 = *(v8 + 16);
        v26 = *(v8 + 24);
        v28 = v8;
        if (v27 >= v26 >> 1)
        {
          sub_266C38868(v26 > 1, v27 + 1, 1);
          v28 = v54;
        }

        *(v28 + 16) = v27 + 1;
        v29 = v28 + 48 * v27;
        *(v29 + 32) = v23;
        *(v29 + 40) = v25;
        *(v29 + 48) = v53;
        *(v29 + 56) = v21;
        *(v29 + 64) = 1;
        *(v29 + 65) = v44;
        *(v29 + 72) = v15;
        a1 = v46;
        v30 = 1 << *(v46 + 32);
        if (v11 >= v30)
        {
          goto LABEL_37;
        }

        v8 = v28;
        v13 = v43;
        v31 = *(v43 + 8 * v14);
        if ((v31 & v52) == 0)
        {
          goto LABEL_38;
        }

        if (*(v46 + 36) != v51)
        {
          goto LABEL_39;
        }

        v32 = v31 & (-2 << (v11 & 0x3F));
        if (v32)
        {
          v30 = __clz(__rbit64(v32)) | v11 & 0x7FFFFFFFFFFFFFC0;
          v33 = v42;
        }

        else
        {
          v34 = v14 << 6;
          v35 = v14 + 1;
          v33 = v42;
          v36 = (v41 + 8 * v14);
          while (v35 < (v30 + 63) >> 6)
          {
            v38 = *v36++;
            v37 = v38;
            v34 += 64;
            ++v35;
            if (v38)
            {
              sub_266C2943C(v11, v51, v49 & 1);
              v30 = __clz(__rbit64(v37)) + v34;
              goto LABEL_28;
            }
          }

          sub_266C2943C(v11, v51, v49 & 1);
        }

LABEL_28:
        v12 = v50 + 1;
        if (v50 + 1 == v33)
        {
          return;
        }

        v10 = 0;
        v9 = *(a1 + 36);
        v11 = v30;
      }

      while ((v30 & 0x8000000000000000) == 0);
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
  }
}

void sub_266C27E04(uint64_t a1)
{
  v46 = sub_266DA74AC();
  v3 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v45 = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  if (v5)
  {
    v39[1] = v1;
    v52 = MEMORY[0x277D84F90];
    sub_266C38868(0, v5, 0);
    v6 = v52;
    v8 = sub_266C293FC(a1);
    v10 = v9;
    v11 = 0;
    v12 = a1 + 64;
    v43 = (v3 + 8);
    v44 = a1;
    v40 = a1 + 72;
    v41 = v5;
    v42 = a1 + 64;
    if ((v8 & 0x8000000000000000) == 0)
    {
      do
      {
        if (v8 >= 1 << *(a1 + 32))
        {
          break;
        }

        v13 = v8 >> 6;
        if ((*(v12 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
        {
          goto LABEL_35;
        }

        if (*(a1 + 36) != v7)
        {
          goto LABEL_36;
        }

        v14 = *(*(a1 + 56) + 8 * v8);
        if (v14 >> 62)
        {
          v38 = v7;
          v15 = sub_266DAAD5C();
          v7 = v38;
        }

        else
        {
          v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v48 = v11;
        v49 = v7;
        v47 = v10;
        v50 = 1 << v8;
        if (v15)
        {
          if ((v14 & 0xC000000000000001) != 0)
          {

            v17 = MEMORY[0x26D5F1780](0, v14);
          }

          else
          {
            if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_40;
            }

            v16 = *(v14 + 32);

            v17 = v16;
          }

          v18 = sub_266CC58B0(v17);
          if (v19)
          {
            v20 = v19;
            v51 = v18;
            goto LABEL_16;
          }
        }

        else
        {
        }

        v51 = 0;
        v20 = 0xE000000000000000;
LABEL_16:

        v21 = v45;
        sub_266DA749C();
        v22 = sub_266DA747C();
        v24 = v23;
        (*v43)(v21, v46);

        v52 = v6;
        v26 = *(v6 + 16);
        v25 = *(v6 + 24);
        v27 = v6;
        if (v26 >= v25 >> 1)
        {
          sub_266C38868(v25 > 1, v26 + 1, 1);
          v27 = v52;
        }

        *(v27 + 16) = v26 + 1;
        v28 = v27 + 48 * v26;
        *(v28 + 32) = v22;
        *(v28 + 40) = v24;
        *(v28 + 48) = v51;
        *(v28 + 56) = v20;
        *(v28 + 64) = 256;
        *(v28 + 72) = v14;
        a1 = v44;
        v29 = 1 << *(v44 + 32);
        if (v8 >= v29)
        {
          goto LABEL_37;
        }

        v6 = v27;
        v12 = v42;
        v30 = *(v42 + 8 * v13);
        if ((v30 & v50) == 0)
        {
          goto LABEL_38;
        }

        if (*(v44 + 36) != v49)
        {
          goto LABEL_39;
        }

        v31 = v30 & (-2 << (v8 & 0x3F));
        if (v31)
        {
          v29 = __clz(__rbit64(v31)) | v8 & 0x7FFFFFFFFFFFFFC0;
          v32 = v41;
        }

        else
        {
          v33 = v13 << 6;
          v34 = v13 + 1;
          v32 = v41;
          v35 = (v40 + 8 * v13);
          while (v34 < (v29 + 63) >> 6)
          {
            v37 = *v35++;
            v36 = v37;
            v33 += 64;
            ++v34;
            if (v37)
            {
              sub_266C2943C(v8, v49, v47 & 1);
              v29 = __clz(__rbit64(v36)) + v33;
              goto LABEL_28;
            }
          }

          sub_266C2943C(v8, v49, v47 & 1);
        }

LABEL_28:
        v11 = v48 + 1;
        if (v48 + 1 == v32)
        {
          return;
        }

        v10 = 0;
        v7 = *(a1 + 36);
        v8 = v29;
      }

      while ((v29 & 0x8000000000000000) == 0);
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
  }
}

id sub_266C281C4(void *a1, uint64_t a2)
{
  [a1 setDeviceOwner_];

  return a1;
}

id sub_266C28208(uint64_t a1, uint64_t a2)
{
  v2 = OUTLINED_FUNCTION_0_8(a1, a2);
  sub_266C292DC(v2, v3, v4);

  return v6;
}

id sub_266C28240(uint64_t a1, uint64_t a2)
{
  v2 = OUTLINED_FUNCTION_0_8(a1, a2);
  sub_266C29334(v2, v3, v4);

  return v6;
}

uint64_t sub_266C28278(char a1)
{
  if (!a1)
  {
    return 0xD000000000000013;
  }

  if (a1 == 1)
  {
    return 0x614E656369766564;
  }

  return 0x72656E776FLL;
}

unint64_t sub_266C282D4(uint64_t a1, uint64_t a2)
{
  v2 = sub_266DAAF8C();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_266C28344@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_266C282D4(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_266C28374@<X0>(uint64_t *a1@<X8>)
{
  result = sub_266C28278(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_266C283A0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    if (a3 != 1)
    {
      if (a6 == 2)
      {
        sub_266C29814(0, &qword_28156EFA8, 0x277D82BB8);
        return sub_266DAABFC() & 1;
      }

      return 0;
    }

    if (a6 != 1)
    {
      return 0;
    }
  }

  else if (a6)
  {
    return 0;
  }

  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  return sub_266DAB17C();
}

uint64_t sub_266C2848C()
{
  v1 = *(v0 + 40);
  if (v1 >> 62)
  {
    v2 = sub_266DAAD5C();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2 != 1)
  {
    return 0;
  }

  result = sub_266C3A14C();
  if (result)
  {
    sub_266CB9F54();
    if ((v1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x26D5F1780](0, v1);
    }

    else
    {
      v4 = *(v1 + 32);
    }

    return sub_266C22F3C(v4);
  }

  return result;
}

uint64_t sub_266C28524()
{
  v2 = sub_266DA85BC();
  OUTLINED_FUNCTION_0_2();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_6();
  sub_266DA845C();
  swift_allocObject();
  v6 = sub_266DA844C();
  v7 = *(v0 + 40);
  if (sub_266C3A14C())
  {
    sub_266CB9F54();
    if ((v7 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x26D5F1780](0, v7);
    }

    else
    {
      v8 = *(v7 + 32);
    }

    v9 = v8;
    sub_266C2938C(v9);
    if (v10)
    {
      sub_266DA843C();
    }

    v11 = v9;
    sub_266C479D8(v11);
    if (v12)
    {
      sub_266DA843C();
    }

    v13 = [v11 deviceOwner];
    if (v13)
    {
      v14 = v13;
      sub_266DA895C();
      swift_allocObject();
      sub_266DA894C();
      v15 = [v14 displayName];
      sub_266DAA70C();

      sub_266DA893C();

      sub_266DA842C();
    }
  }

  else
  {
    v11 = 0;
  }

  swift_bridgeObjectRetain_n();
  sub_266DA858C();
  sub_266DA852C();
  (*(v4 + 8))(v1, v2);
  v16 = MEMORY[0x26D5EF140](v6);

  if (!v16)
  {

    return 1;
  }

  return v16;
}

uint64_t sub_266C287D8(unint64_t a1)
{

  v3 = sub_266C28A48(v2);

  v5 = sub_266C28CF8(v4, &selRef_deviceName);

  v7 = sub_266C28CF8(v6, &selRef_productNameSemantic);
  if (!v3[2] || (, sub_266D99E68(0), v9 = v8, , (v9 & 1) != 0) || !v3[2] || (, sub_266D99E68(0), v11 = v10, , (v11 & 1) != 0) || v3[2] < 2uLL)
  {

    v14 = v7[2];
    if (v14 && (v14 == 1 || (, sub_266D99E68(0), v16 = v15, , (v16 & 1) != 0)))
    {
      v17 = 1;
    }

    else
    {
      Array<A>.hasItems.getter(a1);
      v17 = v18;
    }

    sub_266C27A3C(v5, v17 & 1);
    v13 = v19;

    if ((v17 & 1) == 0)
    {
      sub_266C27E04(v7);
      v21 = v20;

      sub_266C38034(v13);
      return v21;
    }
  }

  else
  {

    sub_266C27634(v3);
    v13 = v12;
  }

  return v13;
}

uint64_t sub_266C28980()
{
  v2 = sub_266DA7F0C();
  OUTLINED_FUNCTION_0_2();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_6();
  v6 = *(v0 + 8);
  sub_266DA7EFC();
  v7 = sub_266D54DE8(v6, (v0 + 16), v1);
  (*(v4 + 8))(v1, v2);
  return v7 & 1;
}

void *sub_266C28A48(uint64_t a1)
{
  v2 = MEMORY[0x277D84F98];
  v29 = MEMORY[0x277D84F98];
  v3 = sub_266C3A14C();
  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {

      return v2;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x26D5F1780](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_27;
      }

      v5 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    v6 = v5;
    v7 = [v6 deviceOwner];
    if (v7)
    {
      v8 = v7;
      v9 = [v8 contactIdentifier];
      if (v9)
      {
        v10 = v9;
        v11 = sub_266DAA70C();
        v13 = v12;

        goto LABEL_13;
      }
    }

    else
    {
    }

    v11 = 0;
    v13 = 0;
LABEL_13:
    v15 = sub_266D99E68(v11);
    v16 = v2[2];
    v17 = (v14 & 1) == 0;
    if (__OFADD__(v16, v17))
    {
      goto LABEL_28;
    }

    v18 = v14;
    if (v2[3] < v16 + v17)
    {
      sub_266D2EA80();
      v2 = v29;
      v19 = sub_266D99E68(v11);
      if ((v18 & 1) != (v20 & 1))
      {
        goto LABEL_30;
      }

      v15 = v19;
    }

    if (v18)
    {

      v22 = (v2[7] + 8 * v15);
      MEMORY[0x26D5F1270](v21);
      if (*((*v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_266DAA95C();
      }

      sub_266DAA96C();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_266DAE3B0;
      *(v23 + 32) = v6;
      v2[(v15 >> 6) + 8] |= 1 << v15;
      v24 = (v2[6] + 16 * v15);
      *v24 = v11;
      v24[1] = v13;
      *(v2[7] + 8 * v15) = v23;
      v25 = v2[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        goto LABEL_29;
      }

      v2[2] = v27;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9BE0, &qword_266DAE760);
  result = sub_266DAB1FC();
  __break(1u);
  return result;
}

void *sub_266C28CF8(uint64_t a1, SEL *a2)
{
  v3 = MEMORY[0x277D84F98];
  v29 = MEMORY[0x277D84F98];
  v4 = sub_266C3A14C();
  for (i = 0; ; ++i)
  {
    if (v4 == i)
    {

      return v3;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x26D5F1780](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v6 = *(a1 + 8 * i + 32);
    }

    v7 = v6;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v8 = [v6 *a2];
    if (v8)
    {
      v9 = v8;
      v10 = sub_266DAA70C();
      v12 = v11;
    }

    else
    {
      v10 = 0;
      v12 = 0;
    }

    v14 = sub_266D99E68(v10);
    v15 = v3[2];
    v16 = (v13 & 1) == 0;
    if (__OFADD__(v15, v16))
    {
      goto LABEL_25;
    }

    v17 = v13;
    if (v3[3] < v15 + v16)
    {
      sub_266D2EA80();
      v3 = v29;
      v18 = sub_266D99E68(v10);
      if ((v17 & 1) != (v19 & 1))
      {
        goto LABEL_27;
      }

      v14 = v18;
    }

    if (v17)
    {

      v21 = (v3[7] + 8 * v14);
      MEMORY[0x26D5F1270](v20);
      if (*((*v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_266DAA95C();
      }

      sub_266DAA96C();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_266DAE3B0;
      *(v22 + 32) = v7;
      v3[(v14 >> 6) + 8] |= 1 << v14;
      v23 = (v3[6] + 16 * v14);
      *v23 = v10;
      v23[1] = v12;
      *(v3[7] + 8 * v14) = v22;
      v24 = v3[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_26;
      }

      v3[2] = v26;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9BE0, &qword_266DAE760);
  result = sub_266DAB1FC();
  __break(1u);
  return result;
}

void sub_266C28F78(uint64_t result)
{
  v1 = 0;
  v2 = *(result + 16);
  v3 = result - 16;
  v4 = MEMORY[0x277D84F90];
  v5 = MEMORY[0x277D84F90];
LABEL_2:
  v6 = (v3 + 48 * v1);
  while (v2 != v1)
  {
    if (v1 >= v2)
    {
      __break(1u);
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    v7 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_50;
    }

    v8 = *(v6 + 81);
    ++v1;
    v6 += 6;
    if (v8)
    {
      v9 = v6[1];
      v35 = *v6;
      v10 = v6[2];
      v11 = v6[3];
      v12 = *(v6 + 32);
      v13 = v6[5];

      sub_266C292B4(v10, v11, v12);

      v36 = v3;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_266C38868(0, *(v5 + 16) + 1, 1);
      }

      v15 = *(v5 + 16);
      v14 = *(v5 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_266C38868(v14 > 1, v15 + 1, 1);
      }

      *(v5 + 16) = v15 + 1;
      v16 = v5 + 48 * v15;
      *(v16 + 32) = v35;
      *(v16 + 40) = v9;
      *(v16 + 48) = v10;
      *(v16 + 56) = v11;
      *(v16 + 64) = v12;
      *(v16 + 65) = 1;
      v3 = v36;
      *(v16 + 72) = v13;
      v1 = v7;
      goto LABEL_2;
    }
  }

  v17 = *(v5 + 16);
  if (v17)
  {
    sub_266C388B4(0, v17, 0);
    v18 = *(v4 + 16);
    v19 = 64;
    do
    {
      v20 = *(v5 + v19);
      v21 = *(v4 + 24);
      if (v18 >= v21 >> 1)
      {
        sub_266C388B4((v21 > 1), v18 + 1, 1);
      }

      *(v4 + 16) = v18 + 1;
      *(v4 + v18 + 32) = v20;
      v19 += 48;
      ++v18;
      --v17;
    }

    while (v17);
  }

  else
  {

    v4 = MEMORY[0x277D84F90];
  }

  v22 = *(v4 + 16);
  if (!v22)
  {
LABEL_48:

    return;
  }

  v23 = 0;
  v24 = *(v4 + 32);
  while (v23 < *(v4 + 16))
  {
    v25 = v23 + 1;
    v26 = *(v4 + 32 + v23);
    v27 = 0x614E656369766564;
    if (v26 != 1)
    {
      v27 = 0x72656E776FLL;
    }

    v28 = 0xEA0000000000656DLL;
    if (v26 != 1)
    {
      v28 = 0xE500000000000000;
    }

    if (v26)
    {
      v29 = v27;
    }

    else
    {
      v29 = 0xD000000000000013;
    }

    if (v26)
    {
      v30 = v28;
    }

    else
    {
      v30 = 0x8000000266DC1020;
    }

    if (v24)
    {
      if (v24 == 1)
      {
        v31 = 0x614E656369766564;
      }

      else
      {
        v31 = 0x72656E776FLL;
      }

      if (v24 == 1)
      {
        v32 = 0xEA0000000000656DLL;
      }

      else
      {
        v32 = 0xE500000000000000;
      }
    }

    else
    {
      v31 = 0xD000000000000013;
      v32 = 0x8000000266DC1020;
    }

    if (v29 == v31 && v30 == v32)
    {
    }

    else
    {
      v34 = sub_266DAB17C();

      if ((v34 & 1) == 0)
      {
        goto LABEL_48;
      }
    }

    v23 = v25;
    if (v22 == v25)
    {
      goto LABEL_48;
    }
  }

LABEL_51:
  __break(1u);
}

id sub_266C292B4(id result, id a2, unsigned __int8 a3)
{
  if (a3 == 2)
  {
    return result;
  }

  if (a3 <= 1u)
  {
  }

  return result;
}

void sub_266C292DC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_266DAA6FC();
  [a3 setDeviceName_];
}

void sub_266C29334(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_266DAA6FC();
  [a3 setDeviceType_];
}

uint64_t sub_266C2938C(void *a1)
{
  v2 = [a1 productName];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_266DAA70C();

  return v3;
}

uint64_t sub_266C2943C(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_266C29454(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_266C29494(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DeviceDisambiguationType.Case(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for DeviceDisambiguationType.Case(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_266C29668(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_266C296A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_266C29720(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_266C29760(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_266C297C0()
{
  result = qword_2800C9BE8;
  if (!qword_2800C9BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9BE8);
  }

  return result;
}

uint64_t sub_266C29814(uint64_t a1, unint64_t *a2, void *a3)
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

void sub_266C29884(void *a1)
{
  v2 = sub_266DA746C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 coordinate];
  v7 = v6;
  [a1 coordinate];
  v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithGEOCoordinate_];
  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = v9;
  v11 = [a1 timestamp];
  sub_266DA744C();

  sub_266DA742C();
  v13 = v12;
  (*(v3 + 8))(v5, v2);
  [v10 setTimestamp_];
  [a1 horizontalAccuracy];
  [v10 setHorizontalAccuracy_];
  [a1 verticalAccuracy];
  [v10 setVerticalAccuracy_];
  [a1 course];
  [v10 setCourse_];
  [a1 courseAccuracy];
  [v10 setCourseAccuracy_];
  [a1 speed];
  [v10 setSpeed_];
  [a1 speedAccuracy];
  [v10 setSpeedAccuracy_];
  [a1 altitude];
  if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v14 <= -2147483650.0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v14 >= 2147483650.0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  [v10 setAltitude_];
  v15 = [a1 floor];
  if (!v15)
  {
    v17 = 0;
LABEL_11:
    [v10 setLevelOrdinal_];
    [v10 setReferenceFrame_];

    return;
  }

  v16 = v15;
  v17 = [v15 level];

  if (v17 >= 0xFFFFFFFF80000000)
  {
    if (v17 > 0x7FFFFFFF)
    {
      __break(1u);
LABEL_9:

      return;
    }

    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
}

uint64_t sub_266C29BAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_266DAA70C();
  if (a2)
  {
    if (v4 == a1 && v5 == a2)
    {

LABEL_17:

      return 1;
    }

    v7 = OUTLINED_FUNCTION_0_9(v4);

    if (v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v8 = sub_266DAA70C();
  if (a2)
  {
    if (v8 == a1 && v9 == a2)
    {

LABEL_27:

      return 2;
    }

    v11 = OUTLINED_FUNCTION_0_9(v8);

    if (v11)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v13 = sub_266DAA70C();
  if (a2)
  {
    if (v13 != a1 || v14 != a2)
    {
      OUTLINED_FUNCTION_0_9(v13);
    }
  }

  return 0;
}

uint64_t OUTLINED_FUNCTION_0_9(uint64_t a1)
{

  return sub_266DAB17C();
}

uint64_t sub_266C29D18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_266C29DCC;

  return MEMORY[0x2821B9CD8](a1, a2, a3);
}

uint64_t sub_266C29DCC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

BOOL sub_266C29EC0(uint64_t a1, uint64_t a2)
{
  v2 = sub_266DAAF8C();

  return v2 != 0;
}

BOOL sub_266C29F14@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_266C29EC0(*a1, a1[1]);
  *a2 = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for FindMyAttribute(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_266C2A00C()
{
  result = qword_2800C9BF0;
  if (!qword_2800C9BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9BF0);
  }

  return result;
}

uint64_t sub_266C2A070(uint64_t a1, uint64_t a2)
{
  v4 = sub_266C2A1FC();
  v5 = sub_266C2A250();
  v6 = sub_266C2A2A4();

  return MEMORY[0x2821C21F8](a1, a2, v4, v5, v6);
}

unint64_t sub_266C2A0E8()
{
  result = qword_2800C9BF8;
  if (!qword_2800C9BF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800C9C00, &qword_266DAEA98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9BF8);
  }

  return result;
}

unint64_t sub_266C2A150()
{
  result = qword_2800C9C08;
  if (!qword_2800C9C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9C08);
  }

  return result;
}

unint64_t sub_266C2A1A8()
{
  result = qword_2800C9C10;
  if (!qword_2800C9C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9C10);
  }

  return result;
}

unint64_t sub_266C2A1FC()
{
  result = qword_2800C9C18;
  if (!qword_2800C9C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9C18);
  }

  return result;
}

unint64_t sub_266C2A250()
{
  result = qword_2800C9C20;
  if (!qword_2800C9C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9C20);
  }

  return result;
}

unint64_t sub_266C2A2A4()
{
  result = qword_2800C9C28;
  if (!qword_2800C9C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9C28);
  }

  return result;
}

uint64_t sub_266C2A2F8()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800C9C30);
  v1 = __swift_project_value_buffer(v0, qword_2800C9C30);
  if (qword_28156F870 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_28156FCA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_266C2A3C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9C48, &unk_266DAEBA0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v33 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v33 - v11;
  v13 = type metadata accessor for ConfigurationFiles(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_266CBD110(0xD00000000000002ALL, 0x8000000266DC1730, a1);

  if (v16)
  {
    v17 = [v16 metadata];
    v18 = sub_266DAA6AC();

    v19 = sub_266CBD158(0x6E6F6973726576, 0xE700000000000000, v18);
    v21 = v20;

    v22 = &v15[*(v13 + 20)];
    *v22 = v19;
    v22[1] = v21;
    v23 = [v16 location];
    if (v23)
    {
      v24 = v23;
      sub_266DA734C();

      v25 = sub_266DA737C();
      v26 = 0;
    }

    else
    {
      v25 = sub_266DA737C();
      v26 = 1;
    }

    __swift_storeEnumTagSinglePayload(v7, v26, 1, v25);
    sub_266C2A7E8(v7, v10);
    sub_266DA737C();
    if (__swift_getEnumTagSinglePayload(v10, 1, v25) == 1)
    {

      sub_266C2A858(v10);
      v32 = 1;
    }

    else
    {
      sub_266CEEC60(v19, v21);

      (*(*(v25 - 8) + 8))(v10, v25);
      v32 = 0;
    }

    __swift_storeEnumTagSinglePayload(v12, v32, 1, v25);
    sub_266C2A7E8(v12, v15);
    sub_266C2A8C0(v15, a2);
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v13);
  }

  else
  {
    if (qword_2800C9160 != -1)
    {
      swift_once();
    }

    v27 = sub_266DA94AC();
    __swift_project_value_buffer(v27, qword_2800C9C30);
    v28 = sub_266DA948C();
    v29 = sub_266DAAAEC();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_266C08000, v28, v29, "Primary device files asset is missing.", v30, 2u);
      MEMORY[0x26D5F2480](v30, -1, -1);
    }

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v13);
  }
}

uint64_t type metadata accessor for ConfigurationFiles(uint64_t a1)
{
  result = qword_2800C9C50;
  if (!qword_2800C9C50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_266C2A7E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9C48, &unk_266DAEBA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_266C2A858(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9C48, &unk_266DAEBA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_266C2A8C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConfigurationFiles(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_266C2A94C(uint64_t a1)
{
  sub_266C2A9D0(319);
  if (v1 <= 0x3F)
  {
    sub_266C2AA28();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_266C2A9D0(uint64_t a1)
{
  if (!qword_2800C9C60)
  {
    sub_266DA737C();
    v1 = sub_266DAAC1C();
    if (!v2)
    {
      atomic_store(v1, &qword_2800C9C60);
    }
  }
}

void sub_266C2AA28()
{
  if (!qword_2800C9C68)
  {
    v0 = sub_266DAAC1C();
    if (!v1)
    {
      atomic_store(v0, &qword_2800C9C68);
    }
  }
}

uint64_t Snippets.PlaySoundResult.device.getter()
{
  OUTLINED_FUNCTION_2_3();
  memcpy(v1, v2, v3);
  OUTLINED_FUNCTION_2_3();
  memcpy(v4, v5, v6);
  return sub_266C2AAC4(v9, &v8);
}

void *Snippets.PlaySoundResult.device.setter(const void *a1)
{
  OUTLINED_FUNCTION_2_3();
  memcpy(v3, v4, v5);
  sub_266C2AB6C(v7);
  return memcpy(v1, a1, 0x58uLL);
}

uint64_t Snippets.PlaySoundResult.message.getter()
{
  v1 = *(v0 + 88);

  return v1;
}

uint64_t Snippets.PlaySoundResult.message.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return result;
}

void *Snippets.PlaySoundResult.init(device:message:)@<X0>(void *__src@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  result = memcpy(a4, __src, 0x58uLL);
  a4[11] = a2;
  a4[12] = a3;
  return result;
}

uint64_t static Snippets.PlaySoundResult.== infix(_:_:)(void *__src, void *a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  v4 = *(__src + 11);
  v5 = *(__src + 12);
  memcpy(v14, a2, sizeof(v14));
  v6 = a2[11];
  v7 = a2[12];
  memcpy(__srca, __src, sizeof(__srca));
  memcpy(v11, a2, sizeof(v11));
  sub_266C2AAC4(__dst, v16);
  sub_266C2AAC4(v14, v16);
  LOBYTE(a2) = static Snippets.Device.== infix(_:_:)(__srca, v11);
  memcpy(v15, v11, sizeof(v15));
  sub_266C2AB6C(v15);
  memcpy(v16, __srca, sizeof(v16));
  sub_266C2AB6C(v16);
  if (a2)
  {
    if (v4 == v6 && v5 == v7)
    {
      v9 = 1;
    }

    else
    {
      v9 = sub_266DAB17C();
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_266C2ADCC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656369766564 && a2 == 0xE600000000000000;
  if (v4 || (sub_266DAB17C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_266DAB17C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_266C2AE90(char a1)
{
  if (a1)
  {
    return 0x6567617373656DLL;
  }

  else
  {
    return 0x656369766564;
  }
}

uint64_t sub_266C2AED4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266C2ADCC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_266C2AEFC(uint64_t a1)
{
  v2 = sub_266C2B134();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266C2AF38(uint64_t a1)
{
  v2 = sub_266C2B134();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Snippets.PlaySoundResult.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9C70, &qword_266DAEBC8);
  OUTLINED_FUNCTION_0_2();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = v15 - v8;
  OUTLINED_FUNCTION_2_3();
  memcpy(v10, v11, v12);
  v13 = *(v1 + 88);
  v15[0] = *(v1 + 96);
  v15[1] = v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266C2AAC4(v18, v17);
  sub_266C2B134();
  sub_266DAB36C();
  OUTLINED_FUNCTION_3_5(v17);
  v18[111] = 0;
  sub_266C2B188();
  sub_266DAB11C();
  memcpy(v16, v17, sizeof(v16));
  sub_266C2AB6C(v16);
  if (!v2)
  {
    v18[110] = 1;
    sub_266DAB0EC();
  }

  return (*(v6 + 8))(v9, v4);
}

unint64_t sub_266C2B134()
{
  result = qword_2800C9C78;
  if (!qword_2800C9C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9C78);
  }

  return result;
}

unint64_t sub_266C2B188()
{
  result = qword_2800C9C80;
  if (!qword_2800C9C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9C80);
  }

  return result;
}

uint64_t Snippets.PlaySoundResult.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9C88, &qword_266DAEBD0);
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v4);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266C2B134();
  sub_266DAB34C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  __dst[111] = 0;
  sub_266C2B404();
  sub_266DAB05C();
  memcpy(__dst, v14, 0x58uLL);
  __dst[110] = 1;
  v5 = sub_266DAB01C();
  v7 = v6;
  v8 = OUTLINED_FUNCTION_0_10();
  v9(v8);
  OUTLINED_FUNCTION_3_5(v12);
  v12[11] = v5;
  v12[12] = v7;
  memcpy(a2, v12, 0x68uLL);
  sub_266C2B458(v12, v13);
  __swift_destroy_boxed_opaque_existential_0(a1);
  OUTLINED_FUNCTION_3_5(v13);
  v13[11] = v5;
  v13[12] = v7;
  return sub_266C2B490(v13);
}

unint64_t sub_266C2B404()
{
  result = qword_2800C9C90;
  if (!qword_2800C9C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9C90);
  }

  return result;
}

unint64_t sub_266C2B4C4()
{
  result = qword_2800C9C98;
  if (!qword_2800C9C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9C98);
  }

  return result;
}

unint64_t sub_266C2B51C()
{
  result = qword_2800C9CA0;
  if (!qword_2800C9CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9CA0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_266C2B5F0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 104))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_266C2B630(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *_s15PlaySoundResultV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_266C2B778()
{
  result = qword_2800C9CA8;
  if (!qword_2800C9CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9CA8);
  }

  return result;
}

unint64_t sub_266C2B7D0()
{
  result = qword_2800C9CB0;
  if (!qword_2800C9CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9CB0);
  }

  return result;
}

unint64_t sub_266C2B828()
{
  result = qword_2800C9CB8;
  if (!qword_2800C9CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9CB8);
  }

  return result;
}

void *OUTLINED_FUNCTION_3_5(void *a1)
{

  return memcpy(a1, (v1 - 176), 0x58uLL);
}

uint64_t static Snippets.Device.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v30 = *(a1 + 64);
  v31 = *(a1 + 56);
  v26 = *(a1 + 80);
  v27 = *(a1 + 72);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v11 = *(a2 + 40);
  v10 = *(a2 + 48);
  v28 = *(a2 + 64);
  v29 = *(a2 + 56);
  v12 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  v24 = *(a2 + 80);
  v25 = *(a2 + 72);
  if (!v12 && (sub_266DAB17C() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v7 && v3 == v8)
  {
    if (v4 != v9)
    {
      return 0;
    }
  }

  else
  {
    v14 = sub_266DAB17C();
    result = 0;
    if (v14 & 1) == 0 || ((v4 ^ v9))
    {
      return result;
    }
  }

  if (v5 >> 60 == 15)
  {
    if (v10 >> 60 == 15)
    {
      v16 = OUTLINED_FUNCTION_2_4();
      sub_266C2BAF0(v16, v17);
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  if (v10 >> 60 == 15)
  {
LABEL_18:
    v18 = OUTLINED_FUNCTION_2_4();
    sub_266C2BAF0(v18, v19);
    sub_266C2BAF0(v11, v10);
    return 0;
  }

  v20 = OUTLINED_FUNCTION_2_4();
  v21 = MEMORY[0x26D5EDD20](v20);
  sub_266C2BAF0(v11, v10);
  sub_266C2BAF0(v6, v5);
  if ((v21 & 1) == 0)
  {
    return 0;
  }

LABEL_22:
  v22 = v31 == v29 && v30 == v28;
  if (!v22 && (sub_266DAB17C() & 1) == 0)
  {
    return 0;
  }

  if (v27 == v25 && v26 == v24)
  {
    return 1;
  }

  return sub_266DAB17C();
}

uint64_t sub_266C2BA84(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_266C2BA98(a1, a2);
  }

  return a1;
}

uint64_t sub_266C2BA98(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_266C2BAF0(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_266C2BB04(result, a2);
  }

  return result;
}

uint64_t sub_266C2BB04(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t Snippets.Device.identifier.setter()
{
  OUTLINED_FUNCTION_6_3();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Snippets.Device.label.setter()
{
  OUTLINED_FUNCTION_6_3();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Snippets.Device.imageData.getter(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_4_4();
  sub_266C2BA84(v1, v2);
  return OUTLINED_FUNCTION_4_4();
}

uint64_t Snippets.Device.imageData.setter()
{
  OUTLINED_FUNCTION_6_3();
  result = sub_266C2BAF0(*(v1 + 40), *(v1 + 48));
  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t Snippets.Device.emphasisId.setter()
{
  OUTLINED_FUNCTION_6_3();

  *(v1 + 72) = v2;
  *(v1 + 80) = v0;
  return result;
}

uint64_t Snippets.Device.init(identifier:label:isItem:imageData:emphasisId:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v33 = a7;
  v34 = a8;
  v30 = a4;
  v31 = a10;
  v32 = a6;
  v15 = sub_266DA74AC();
  OUTLINED_FUNCTION_0_2();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);

  result = sub_266C2BAF0(0, 0xF000000000000000);
  v22 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v22 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v23 = a1;
  v24 = a2;
  if (!v22)
  {

    sub_266DA749C();
    v23 = sub_266DA747C();
    v24 = v25;
    result = (*(v17 + 8))(v20, v15);
  }

  *a9 = a1;
  *(a9 + 8) = a2;
  v26 = v30;
  *(a9 + 16) = a3;
  *(a9 + 24) = v26;
  *(a9 + 32) = a5 & 1;
  v27 = v33;
  *(a9 + 40) = v32;
  *(a9 + 48) = v27;
  *(a9 + 56) = v23;
  *(a9 + 64) = v24;
  v28 = v31;
  *(a9 + 72) = v34;
  *(a9 + 80) = v28;
  return result;
}

uint64_t sub_266C2BF1C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_266DAB17C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
    if (v6 || (sub_266DAB17C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6D6574497369 && a2 == 0xE600000000000000;
      if (v7 || (sub_266DAB17C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7461446567616D69 && a2 == 0xE900000000000061;
        if (v8 || (sub_266DAB17C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 25705 && a2 == 0xE200000000000000;
          if (v9 || (sub_266DAB17C() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x7369736168706D65 && a2 == 0xEA00000000006449)
          {

            return 5;
          }

          else
          {
            v11 = sub_266DAB17C();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_266C2C110(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 0x6C6562616CLL;
      break;
    case 2:
      result = 0x6D6574497369;
      break;
    case 3:
      result = 0x7461446567616D69;
      break;
    case 4:
      result = 25705;
      break;
    case 5:
      result = 0x7369736168706D65;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_266C2C1C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266C2BF1C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_266C2C1F0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_266C2C108();
  *a1 = result;
  return result;
}

uint64_t sub_266C2C218(uint64_t a1)
{
  v2 = sub_266C2C910();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266C2C254(uint64_t a1)
{
  v2 = sub_266C2C910();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Snippets.Device.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9CC0, &qword_266DAEE80);
  OUTLINED_FUNCTION_0_2();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = v17 - v7;
  v9 = *(v1 + 16);
  v20 = *(v1 + 24);
  v21 = v9;
  v25 = *(v1 + 32);
  v10 = *(v1 + 40);
  v18 = *(v1 + 48);
  v19 = v10;
  v11 = *(v1 + 56);
  v17[3] = *(v1 + 64);
  v17[4] = v11;
  v12 = *(v1 + 80);
  v17[1] = *(v1 + 72);
  v17[2] = v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266C2C910();
  sub_266DAB36C();
  LOBYTE(v23) = 0;
  v13 = v22;
  sub_266DAB0EC();
  if (!v13)
  {
    v15 = v18;
    v14 = v19;
    LOBYTE(v23) = 1;
    OUTLINED_FUNCTION_5_4();
    sub_266DAB0EC();
    LOBYTE(v23) = 2;
    OUTLINED_FUNCTION_5_4();
    sub_266DAB0FC();
    v23 = v14;
    v24 = v15;
    v26 = 3;
    sub_266C2BA84(v14, v15);
    sub_266C2C964();
    OUTLINED_FUNCTION_5_4();
    sub_266DAB0DC();
    sub_266C2BAF0(v23, v24);
    LOBYTE(v23) = 4;
    OUTLINED_FUNCTION_5_4();
    sub_266DAB0EC();
    LOBYTE(v23) = 5;
    OUTLINED_FUNCTION_5_4();
    sub_266DAB0EC();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t Snippets.Device.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9CD8, &qword_266DAEE88);
  OUTLINED_FUNCTION_0_2();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v27 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266C2C910();
  sub_266DAB34C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    return sub_266C2BAF0(0, 0xF000000000000000);
  }

  else
  {
    LOBYTE(v35) = 0;
    OUTLINED_FUNCTION_0_11();
    v11 = sub_266DAB01C();
    v33 = v12;
    LOBYTE(v35) = 1;
    OUTLINED_FUNCTION_0_11();
    v13 = sub_266DAB01C();
    v32 = v14;
    LOBYTE(v35) = 2;
    OUTLINED_FUNCTION_0_11();
    v46 = sub_266DAB02C();
    LOBYTE(__src[0]) = 3;
    sub_266C2C9B8();
    sub_266DAB00C();
    v31 = v13;
    v30 = a2;
    v15 = v35;
    v16 = v36;
    sub_266C2BAF0(0, 0xF000000000000000);
    LOBYTE(v35) = 4;
    OUTLINED_FUNCTION_0_11();
    v29 = sub_266DAB01C();
    v28 = v11;
    v18 = v17;
    v47 = 5;
    v19 = sub_266DAB01C();
    v46 &= 1u;
    v20 = v19;
    v21 = v10;
    v23 = v22;
    (*(v7 + 8))(v21, v5);
    v24 = v28;
    __src[0] = v28;
    v25 = v33;
    __src[1] = v33;
    __src[2] = v31;
    __src[3] = v32;
    LOBYTE(__src[4]) = v46;
    __src[5] = v15;
    __src[6] = v16;
    __src[7] = v29;
    __src[8] = v18;
    __src[9] = v20;
    __src[10] = v23;
    memcpy(v30, __src, 0x58uLL);
    sub_266C2AAC4(__src, &v35);
    __swift_destroy_boxed_opaque_existential_0(a1);
    v35 = v24;
    v36 = v25;
    v37 = v31;
    v38 = v32;
    v39 = v46;
    v40 = v15;
    v41 = v16;
    v42 = v29;
    v43 = v18;
    v44 = v20;
    v45 = v23;
    return sub_266C2AB6C(&v35);
  }
}

uint64_t sub_266C2C8B4@<X0>(uint64_t *a1@<X8>)
{
  result = Snippets.Device.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_266C2C910()
{
  result = qword_2800C9CC8;
  if (!qword_2800C9CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9CC8);
  }

  return result;
}

unint64_t sub_266C2C964()
{
  result = qword_2800C9CD0;
  if (!qword_2800C9CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9CD0);
  }

  return result;
}

unint64_t sub_266C2C9B8()
{
  result = qword_2800C9CE0;
  if (!qword_2800C9CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9CE0);
  }

  return result;
}

uint64_t sub_266C2CA28(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_266C2CA68(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s6DeviceV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s6DeviceV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_266C2CC34()
{
  result = qword_2800C9CE8;
  if (!qword_2800C9CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9CE8);
  }

  return result;
}

unint64_t sub_266C2CC8C()
{
  result = qword_2800C9CF0;
  if (!qword_2800C9CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9CF0);
  }

  return result;
}

unint64_t sub_266C2CCE4()
{
  result = qword_2800C9CF8;
  if (!qword_2800C9CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9CF8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_4()
{
  sub_266C2BA84(v3, v2);
  sub_266C2BA84(v1, v0);
  return v3;
}

unint64_t sub_266C2CDB0(uint64_t a1)
{
  v1 = a1;
  sub_266DAADFC();

  if (qword_2800C9308 != -1)
  {
    swift_once();
  }

  v2 = sub_266C2CEA4(v1);
  v4 = v3;
  v5 = sub_266DA750C();
  v6 = __swift_project_value_buffer(v5, qword_2800E6350);
  v7 = String.firstLetterCapitalized(with:)(v6, v2, v4);
  v9 = v8;

  MEMORY[0x26D5F1170](v7, v9);

  return 0xD000000000000012;
}

unint64_t sub_266C2CEA4(char a1)
{
  result = 0x794D646E6966;
  switch(a1)
  {
    case 1:
      result = 0x6F43794D646E6966;
      break;
    case 2:
      result = 0xD000000000000016;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0x7441794D646E6966;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0xD000000000000015;
      break;
    case 8:
      result = 0x6449794D646E6966;
      break;
    case 9:
      result = 0x6556794D646E6966;
      break;
    default:
      return result;
  }

  return result;
}

SiriFindMy::DevicePingError_optional __swiftcall DevicePingError.init(rawValue:)(Swift::Int rawValue)
{
  v2 = rawValue + 127;
  if ((rawValue - 73601) >= 6)
  {
    v2 = 6;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_266C2D028()
{
  result = qword_2800C9D00;
  if (!qword_2800C9D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9D00);
  }

  return result;
}

uint64_t sub_266C2D09C@<X0>(uint64_t *a1@<X8>)
{
  result = DevicePingError.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_266C2D0C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_266C2D204();
  v5 = sub_266C2D258();

  return MEMORY[0x2821FE2D0](a1, a2, v4, v5);
}

_BYTE *storeEnumTagSinglePayload for DevicePingError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_266C2D204()
{
  result = qword_2800C9D08;
  if (!qword_2800C9D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9D08);
  }

  return result;
}

unint64_t sub_266C2D258()
{
  result = qword_2800C9D10;
  if (!qword_2800C9D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9D10);
  }

  return result;
}

uint64_t sub_266C2D2AC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_266DA7EEC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v28[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v28[-v10];
  MEMORY[0x28223BE20](v9);
  v13 = &v28[-v12];
  v14 = (v5 + 16);
  v15 = *(v5 + 16);
  v15(&v28[-v12], a1, v4);
  v16 = (*(v5 + 88))(v13, v4);
  if (v16 != *MEMORY[0x277D5BE70])
  {
    if (v16 == *MEMORY[0x277D5BE80])
    {
      v15(v11, v13, v4);
      (*(v5 + 96))(v11, v4);
      v22 = *v11;
      v14 = &off_279C03000;
      DevicePingError.init(rawValue:)([*v11 errorCode]);
      v21 = v29;
      if (v29 != 6)
      {
        v25 = OUTLINED_FUNCTION_0_12();
        (off_279C03000)(v25);

        goto LABEL_13;
      }

      v23 = [v22 errorCode];
      if (*MEMORY[0x277D47CF8] == v23)
      {
        v24 = OUTLINED_FUNCTION_0_12();
        (off_279C03000)(v24);

        v21 = 1;
        goto LABEL_13;
      }
    }

    v26 = OUTLINED_FUNCTION_0_12();
    v14(v26);
LABEL_12:
    v21 = 5;
    goto LABEL_13;
  }

  v15(v8, v13, v4);
  (*(v5 + 96))(v8, v4);
  v17 = sub_266C5FE48(*v8);
  v19 = v18;
  v20 = OUTLINED_FUNCTION_0_12();
  v14(v20);
  if ((v19 & 1) != 0 || v17 != 103)
  {
    goto LABEL_12;
  }

  v21 = 4;
LABEL_13:
  result = (v14)(v13, v4);
  *a2 = v21;
  return result;
}

void sub_266C2D574(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_266DAAD4C();
    sub_266C33D4C();
    sub_266C33D90();
    sub_266DAAA4C();
    v1 = v24;
    v2 = v25;
    v3 = v26;
    v4 = v27;
    v5 = v28;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v9 = MEMORY[0x277D84F90];
  while (v1 < 0)
  {
    if (!sub_266DAAD6C() || (sub_266C33D4C(), swift_dynamicCast(), (v12 = v29) == 0))
    {
LABEL_24:
      sub_266C33DE8(v1);
      return;
    }

LABEL_17:
    v13 = v12;
    v14 = [v13 role];
    if (v14)
    {

      v15 = [v13 name];
      v22 = sub_266DAA70C();
      v23 = v16;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_266CF9AAC(0, *(v9 + 16) + 1, 1, v9);
        v9 = v20;
      }

      v18 = *(v9 + 16);
      v17 = *(v9 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_266CF9AAC(v17 > 1, v18 + 1, 1, v9);
        v9 = v21;
      }

      *(v9 + 16) = v18 + 1;
      v19 = v9 + 48 * v18;
      *(v19 + 32) = v22;
      *(v19 + 40) = v23;
      *(v19 + 48) = 0u;
      *(v19 + 64) = 0u;
    }

    else
    {
    }
  }

  v10 = v4;
  v11 = v5;
  if (v5)
  {
LABEL_13:
    v5 = (v11 - 1) & v11;
    v12 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v12)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v11 = *(v2 + 8 * v4);
    ++v10;
    if (v11)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_266C2D810@<X0>(void (*a1)(uint64_t *)@<X0>, void *a2@<X8>)
{
  result = v2[3];
  if (result)
  {
    v6 = v2[4];
    v7 = v2[2];
    v8 = *(v2 + 2);
    v9 = *v2;
    v10 = v8 & 1;
    v11 = v7;
    v12 = result;
    v13 = v6;

    a1(&v9);

    if (v3)
    {
      __break(1u);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  return result;
}

uint64_t sub_266C2D8D8()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_28156F880);
  v1 = __swift_project_value_buffer(v0, qword_28156F880);
  if (qword_28156F870 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_28156FCA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_266C2D9D4()
{
  OUTLINED_FUNCTION_6();
  v1 = v0;
  v3 = v2;
  v39 = sub_266DAA4CC();
  OUTLINED_FUNCTION_0_2();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_0_6();
  v9 = v8 - v7;
  v10 = sub_266DAA4FC();
  v11 = *(v10 + 16);
  if (v11)
  {
    v34 = v1;
    v35 = v3;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v14 = *(v12 + 64);
    v33 = v10;
    v15 = v10 + ((v14 + 32) & ~v14);
    v36 = *(v12 + 56);
    v37 = (v12 - 8);
    v38 = v13;
    v16 = MEMORY[0x277D84F90];
    while (1)
    {
      v17 = v39;
      v18 = v12;
      v38(v9, v15, v39);
      v19 = sub_266DAA49C();
      MEMORY[0x28223BE20](v19);
      *(&v33 - 2) = v9;
      sub_266D69554(sub_266C33EC0, (&v33 - 4), v19);
      OUTLINED_FUNCTION_17_1();

      (*v37)(v9, v17);
      v20 = *(v9 + 16);
      v21 = *(v16 + 16);
      v22 = v21 + v20;
      if (__OFADD__(v21, v20))
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v22 > *(v16 + 24) >> 1)
      {
        if (v21 <= v22)
        {
          v24 = v21 + v20;
        }

        else
        {
          v24 = v21;
        }

        sub_266CF9AAC(isUniquelyReferenced_nonNull_native, v24, 1, v16);
        v16 = v25;
      }

      if (*(v9 + 16))
      {
        if ((*(v16 + 24) >> 1) - *(v16 + 16) < v20)
        {
          goto LABEL_22;
        }

        swift_arrayInitWithCopy();

        if (v20)
        {
          v26 = *(v16 + 16);
          v27 = __OFADD__(v26, v20);
          v28 = v26 + v20;
          if (v27)
          {
            goto LABEL_23;
          }

          *(v16 + 16) = v28;
        }
      }

      else
      {

        if (v20)
        {
          goto LABEL_21;
        }
      }

      v15 += v36;
      --v11;
      v12 = v18;
      if (!v11)
      {

        v1 = v34;
        v3 = v35;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  else
  {

    v16 = MEMORY[0x277D84F90];
LABEL_19:
    v29 = sub_266DAA50C();
    v31 = v30;
    v32 = sub_266DAA51C();
    (*(*(v32 - 8) + 8))(v1, v32);
    *v3 = v29;
    v3[1] = v31;
    v3[2] = v16;
    OUTLINED_FUNCTION_5();
  }
}

uint64_t sub_266C2DC8C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];

  v5 = sub_266DAA4BC();
  v7 = v6;
  result = sub_266DAA4AC();
  *a2 = v4;
  a2[1] = v3;
  a2[2] = v5;
  a2[3] = v7;
  a2[4] = result;
  a2[5] = v9;
  return result;
}

void __swiftcall SyncDevice.init(name:ownerFirstName:ownerLastName:)(SiriFindMy::SyncDevice *__return_ptr retstr, Swift::String name, Swift::String_optional ownerFirstName, Swift::String_optional ownerLastName)
{
  retstr->name = name;
  retstr->ownerFirstName = ownerFirstName;
  retstr->ownerLastName = ownerLastName;
}

uint64_t sub_266C2DD08(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656B6F5468737570 && a2 == 0xE90000000000006ELL;
  if (v4 || (sub_266DAB17C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x69766544636E7973 && a2 == 0xEB00000000736563)
  {

    return 1;
  }

  else
  {
    v7 = sub_266DAB17C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_266C2DDDC(char a1)
{
  if (a1)
  {
    return 0x69766544636E7973;
  }

  else
  {
    return 0x656B6F5468737570;
  }
}

uint64_t sub_266C2DE28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266C2DD08(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_266C2DE50(uint64_t a1)
{
  v2 = sub_266C2E074();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266C2DE8C(uint64_t a1)
{
  v2 = sub_266C2E074();

  return MEMORY[0x2821FE720](a1, v2);
}

void SFMSyncDeviceData.encode(to:)()
{
  OUTLINED_FUNCTION_27();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9D18, &qword_266DAF2A0);
  OUTLINED_FUNCTION_0_2();
  v11 = v5;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v6);
  v8 = &v9 - v7;
  v10 = *(v0 + 16);
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_266C2E074();
  sub_266DAB36C();
  OUTLINED_FUNCTION_5_4();
  sub_266DAB0EC();
  if (!v1)
  {
    v12 = v10;
    OUTLINED_FUNCTION_15_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9D20, &qword_266DAF2A8);
    sub_266C2E310(&qword_28156F7F8, sub_266C2E0C8, MEMORY[0x277D83948]);
    OUTLINED_FUNCTION_5_4();
    sub_266DAB11C();
  }

  (*(v11 + 8))(v8, v4);
  OUTLINED_FUNCTION_26();
}

unint64_t sub_266C2E074()
{
  result = qword_28156FAA8;
  if (!qword_28156FAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28156FAA8);
  }

  return result;
}

unint64_t sub_266C2E0C8()
{
  result = qword_28156FAB0;
  if (!qword_28156FAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28156FAB0);
  }

  return result;
}

void SFMSyncDeviceData.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, __int16 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_27();
  v24 = v23;
  v26 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9D28, &qword_266DAF2B0);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_17();
  __swift_project_boxed_opaque_existential_1(v24, v24[3]);
  v28 = sub_266C2E074();
  OUTLINED_FUNCTION_14_1(&type metadata for SFMSyncDeviceData.CodingKeys, v29, v28);
  if (v22)
  {
    __swift_destroy_boxed_opaque_existential_0(v24);
  }

  else
  {
    OUTLINED_FUNCTION_20_0();
    v30 = sub_266DAB01C();
    v32 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9D20, &qword_266DAF2A8);
    OUTLINED_FUNCTION_15_1();
    sub_266C2E310(&unk_28156F000, sub_266C2E388, MEMORY[0x277D83978]);
    OUTLINED_FUNCTION_20_0();
    sub_266DAB05C();
    v33 = OUTLINED_FUNCTION_10_0();
    v34(v33);
    *v26 = v30;
    v26[1] = v32;
    v26[2] = v35;

    __swift_destroy_boxed_opaque_existential_0(v24);
  }

  OUTLINED_FUNCTION_26();
}

uint64_t sub_266C2E310(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800C9D20, &qword_266DAF2A8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_266C2E388()
{
  result = qword_28156F7D0;
  if (!qword_28156F7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28156F7D0);
  }

  return result;
}

uint64_t static SyncDevice.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v7 = a2[2];
  v6 = a2[3];
  v9 = a2[4];
  v8 = a2[5];
  v10 = *a1 == *a2 && a1[1] == a2[1];
  if (!v10 && (sub_266DAB17C() & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (!v6)
    {
      return 0;
    }

    v11 = v2 == v7 && v4 == v6;
    if (!v11 && (sub_266DAB17C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v5)
  {
    if (v8)
    {
      if (v3 == v9 && v5 == v8)
      {
        return 1;
      }

      OUTLINED_FUNCTION_4_4();
      if (sub_266DAB17C())
      {
        return 1;
      }
    }
  }

  else if (!v8)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_266C2E574(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_266DAB17C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x72694672656E776FLL && a2 == 0xEE00656D614E7473;
    if (v6 || (sub_266DAB17C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x73614C72656E776FLL && a2 == 0xED0000656D614E74)
    {

      return 2;
    }

    else
    {
      v8 = sub_266DAB17C();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_266C2E69C(char a1)
{
  if (!a1)
  {
    return 1701667182;
  }

  if (a1 == 1)
  {
    return 0x72694672656E776FLL;
  }

  return 0x73614C72656E776FLL;
}

uint64_t sub_266C2E70C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266C2E574(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_266C2E734@<X0>(_BYTE *a1@<X8>)
{
  result = sub_266C2E694();
  *a1 = result;
  return result;
}

uint64_t sub_266C2E75C(uint64_t a1)
{
  v2 = sub_266C2E958();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266C2E798(uint64_t a1)
{
  v2 = sub_266C2E958();

  return MEMORY[0x2821FE720](a1, v2);
}

void SyncDevice.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_27();
  v37 = v24;
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9D30, &qword_266DAF2B8);
  OUTLINED_FUNCTION_0_2();
  v29 = v28;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v30);
  v32 = v36 - v31;
  v33 = v23[2];
  v36[3] = v23[3];
  v36[4] = v33;
  v34 = v23[4];
  v36[1] = v23[5];
  v36[2] = v34;
  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  sub_266C2E958();
  sub_266DAB36C();
  v35 = v37;
  sub_266DAB0EC();
  if (!v35)
  {
    OUTLINED_FUNCTION_15_1();
    OUTLINED_FUNCTION_5_4();
    sub_266DAB09C();
    OUTLINED_FUNCTION_5_4();
    sub_266DAB09C();
  }

  (*(v29 + 8))(v32, v27);
  OUTLINED_FUNCTION_26();
}

unint64_t sub_266C2E958()
{
  result = qword_28156FAC8[0];
  if (!qword_28156FAC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28156FAC8);
  }

  return result;
}

uint64_t SyncDevice.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 40);
  sub_266DAA7BC();
  if (!v2)
  {
    sub_266DAB2CC();
    if (v3)
    {
      goto LABEL_3;
    }

    return sub_266DAB2CC();
  }

  sub_266DAB2CC();
  sub_266DAA7BC();
  if (!v3)
  {
    return sub_266DAB2CC();
  }

LABEL_3:
  sub_266DAB2CC();

  return sub_266DAA7BC();
}

uint64_t SyncDevice.hashValue.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);
  sub_266DAB2AC();
  sub_266DAA7BC();
  sub_266DAB2CC();
  if (v1)
  {
    sub_266DAA7BC();
  }

  sub_266DAB2CC();
  if (v2)
  {
    sub_266DAA7BC();
  }

  return sub_266DAB2DC();
}

void SyncDevice.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_27();
  v26 = v25;
  v28 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9D38, &qword_266DAF2C0);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_17();
  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  v30 = sub_266C2E958();
  OUTLINED_FUNCTION_14_1(&type metadata for SyncDevice.CodingKeys, v31, v30);
  if (v24)
  {
    __swift_destroy_boxed_opaque_existential_0(v26);
  }

  else
  {
    OUTLINED_FUNCTION_20_0();
    v32 = sub_266DAB01C();
    v43 = v33;
    OUTLINED_FUNCTION_15_1();
    OUTLINED_FUNCTION_20_0();
    v41 = sub_266DAAFCC();
    v42 = v34;
    v35 = sub_266DAAFCC();
    v37 = v36;
    v38 = v35;
    v39 = OUTLINED_FUNCTION_4_5();
    v40(v39);
    *v28 = v32;
    v28[1] = v43;
    v28[2] = v41;
    v28[3] = v42;
    v28[4] = v38;
    v28[5] = v37;

    __swift_destroy_boxed_opaque_existential_0(v26);
  }

  OUTLINED_FUNCTION_26();
}

uint64_t sub_266C2ED58(uint64_t a1)
{
  v2 = v1[1];
  v6 = *v1;
  v7 = v2;
  v3 = *(v1 + 2);
  v8 = *(v1 + 1);
  v9 = v3;
  sub_266DAB2AC();
  SyncDevice.hash(into:)(v5);
  return sub_266DAB2DC();
}

uint64_t FMIPSyncDeviceProvider.__allocating_init(fmipSiriController:)()
{
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_17_1();
  FMIPSyncDeviceProvider.init(fmipSiriController:)(v1);
  return v0;
}

void *FMIPSyncDeviceProvider.init(fmipSiriController:)(uint64_t a1)
{
  v1[2] = MEMORY[0x277D84FA0];
  v1[3] = [objc_allocWithZone(MEMORY[0x277D49698]) init];
  v1[7] = &type metadata for SFMUserDefaultsSettingProvider;
  v1[8] = &protocol witness table for SFMUserDefaultsSettingProvider;
  v1[9] = a1;
  return v1;
}

void sub_266C2EE78()
{
  OUTLINED_FUNCTION_6();
  v44 = v0;
  v48 = v1;
  v49 = v2;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9D40, &qword_266DAF2C8);
  OUTLINED_FUNCTION_0_2();
  v46 = v3;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v4);
  v41 = &v40 - v5;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9D48, &qword_266DAF2D0);
  OUTLINED_FUNCTION_0_2();
  v45 = v6;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v7);
  v9 = &v40 - v8;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9D50, &qword_266DAF2D8);
  OUTLINED_FUNCTION_0_2();
  v47 = v10;
  OUTLINED_FUNCTION_6_0();
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v40 - v13;
  sub_266C2FF3C(v12, v15, v16, v17, v18, v19, v20, v21, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51);
  sub_266C2F3B4(v22, v23, v24, v25, v26, v27, v28, v29, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v22, v51);
  v52 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9D58, &qword_266DAF2E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9D60, &qword_266DAF2E8);
  v31 = MEMORY[0x277CBCD90];
  sub_266C230E8(&qword_28156F830, &qword_2800C9D58, &qword_266DAF2E0, MEMORY[0x277CBCD90]);
  sub_266C230E8(&qword_28156F828, &qword_2800C9D60, &qword_266DAF2E8, v31);
  sub_266DA982C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9D68, &qword_266DAF2F0);
  v32 = MEMORY[0x277CBCC08];
  sub_266C230E8(&qword_28156F858, &qword_2800C9D50, &qword_266DAF2D8, MEMORY[0x277CBCC08]);
  v33 = v40;
  v34 = v41;
  sub_266DA984C();
  v35 = OUTLINED_FUNCTION_4_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(v35, v36);
  sub_266C230E8(&qword_28156F840, &qword_2800C9D40, &qword_266DAF2C8, v32);
  sub_266C230E8(&qword_28156F818, &qword_2800C9D70, &qword_266DAF2F8, MEMORY[0x277CBCE80]);
  v37 = v42;
  sub_266DA987C();
  (*(v46 + 8))(v34, v37);
  sub_266C230E8(&qword_28156F838, &qword_2800C9D48, &qword_266DAF2D0, MEMORY[0x277CBCC40]);
  v38 = v43;
  v39 = sub_266DA97EC();
  (*(v45 + 8))(v9, v38);
  v50 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9D78, &qword_266DAF300);
  sub_266C230E8(&qword_28156F820, &qword_2800C9D78, &qword_266DAF300, v31);
  sub_266DA994C();
  OUTLINED_FUNCTION_17_1();

  swift_beginAccess();
  sub_266DA968C();
  swift_endAccess();

  (*(v47 + 8))(v14, v33);
  OUTLINED_FUNCTION_5();
}

void sub_266C2F340(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v6 = a1[2];

  sub_266C380C8(v5);
  *a2 = v4;
  a2[1] = v3;
  a2[2] = v6;
}

void sub_266C2F3B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_6();
  a19 = v21;
  a20 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9DA0, &qword_266DAF828);
  OUTLINED_FUNCTION_0_2();
  v25 = v24;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v26);
  v28 = &a9 - v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9DA8, &qword_266DAF830);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_17();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9DB0, &qword_266DAF838);
  swift_allocObject();

  sub_266DA97AC();
  sub_266C2FCAC(sub_266C2FA68, 0);

  __swift_project_boxed_opaque_existential_1((v20 + 32), *(v20 + 56));
  v30 = OUTLINED_FUNCTION_11_0();
  v32 = v31(v30);
  v33 = swift_allocObject();
  *(v33 + 16) = v32 & 1;
  v34 = swift_allocObject();
  v34[2] = sub_266C33CD0;
  v34[3] = v33;
  v34[4] = sub_266C2FDBC;
  v34[5] = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9D20, &qword_266DAF2A8);
  v35 = MEMORY[0x277CBCC08];
  sub_266C230E8(&qword_28156F860, &qword_2800C9DA0, &qword_266DAF828, MEMORY[0x277CBCC08]);
  sub_266DA984C();

  (*(v25 + 8))(v28, v23);
  sub_266C230E8(&qword_28156F848, &qword_2800C9DA8, &qword_266DAF830, v35);
  sub_266DA97EC();
  v36 = OUTLINED_FUNCTION_19_0();
  v37(v36);
  OUTLINED_FUNCTION_5();
}

void sub_266C2F6A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = qword_28156F878;

  if (v7 != -1)
  {
    swift_once();
  }

  v8 = sub_266DA94AC();
  __swift_project_value_buffer(v8, qword_28156F880);
  v9 = sub_266DA948C();
  v10 = sub_266DAAB0C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_266C08000, v9, v10, "Fetching items from SPOwnerSession", v11, 2u);
    MEMORY[0x26D5F2480](v11, -1, -1);
  }

  v12 = *(a3 + 24);
  v13 = swift_allocObject();
  *(v13 + 16) = sub_266C33CEC;
  *(v13 + 24) = v6;
  v15[4] = sub_266C33D2C;
  v15[5] = v13;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 1107296256;
  v15[2] = sub_266C2F9E8;
  v15[3] = &block_descriptor;
  v14 = _Block_copy(v15);

  [v12 allBeaconsWithCompletion_];
  _Block_release(v14);
}

uint64_t sub_266C2F874(uint64_t a1, void (*a2)(void))
{
  if (qword_28156F878 != -1)
  {
    swift_once();
  }

  v4 = sub_266DA94AC();
  __swift_project_value_buffer(v4, qword_28156F880);

  v5 = sub_266DA948C();
  v6 = sub_266DAAB0C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v8 = sub_266DAAD5C();
    }

    else
    {
      v8 = *(a1 + 16);
    }

    *(v7 + 4) = v8;

    _os_log_impl(&dword_266C08000, v5, v6, "Found %ld beacons", v7, 0xCu);
    MEMORY[0x26D5F2480](v7, -1, -1);
  }

  else
  {
  }

  sub_266C2D574(a1);
  a2();
}

uint64_t sub_266C2F9E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_266C33D4C();
  sub_266C33D90();
  v3 = sub_266DAAA2C();

  v2(v3);
}

void sub_266C2FA68(uint64_t *a1)
{
  v1 = *a1;
  if (qword_28156F878 != -1)
  {
    swift_once();
  }

  v2 = sub_266DA94AC();
  __swift_project_value_buffer(v2, qword_28156F880);

  oslog = sub_266DA948C();
  v3 = sub_266DAAB0C();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = *(v1 + 16);

    _os_log_impl(&dword_266C08000, oslog, v3, "SyncDeviceProvider: found %ld items", v4, 0xCu);
    MEMORY[0x26D5F2480](v4, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_266C2FBAC(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_266C230E8(&qword_28156F810, &qword_2800C9DC8, &qword_266DAF850, MEMORY[0x277CBCEB0]);

  sub_266DA984C();
}

uint64_t sub_266C2FCAC(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9D20, &qword_266DAF2A8);
  sub_266C230E8(&qword_28156F808, &qword_2800C9DB0, &qword_266DAF838, MEMORY[0x277CBCEB0]);
  sub_266DA984C();
}

void (*sub_266C2FDBC(uint64_t *a1))(void *)
{
  v1 = *a1;
  if (qword_28156F878 != -1)
  {
    swift_once();
  }

  v2 = sub_266DA94AC();
  v3 = __swift_project_value_buffer(v2, qword_28156F880);
  v4 = sub_266DA948C();
  v5 = sub_266DAAB0C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_266C22A3C(0x736D657449, 0xE500000000000000, &v11);
    _os_log_impl(&dword_266C08000, v4, v5, "**** %{public}s ****", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x26D5F2480](v7, -1, -1);
    MEMORY[0x26D5F2480](v6, -1, -1);
  }

  MEMORY[0x28223BE20](v8);
  v10[2] = v3;
  return sub_266CB7CEC(sub_266C33EEC, v10, v1);
}

void sub_266C2FF3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_6();
  a19 = v21;
  a20 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9DB8, &qword_266DAF840);
  OUTLINED_FUNCTION_0_2();
  v25 = v24;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v26);
  v28 = &a9 - v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9DC0, &qword_266DAF848);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_17();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9DC8, &qword_266DAF850);
  swift_allocObject();

  sub_266DA97AC();
  sub_266C2FBAC(sub_266C30588, 0);

  __swift_project_boxed_opaque_existential_1((v20 + 32), *(v20 + 56));
  v30 = OUTLINED_FUNCTION_11_0();
  v32 = v31(v30);
  v33 = swift_allocObject();
  *(v33 + 16) = v32 & 1;
  v34 = swift_allocObject();
  v34[2] = sub_266C33DF8;
  v34[3] = v33;
  v34[4] = sub_266C306E4;
  v34[5] = 0;
  v35 = MEMORY[0x277CBCC08];
  sub_266C230E8(&qword_28156F868, &qword_2800C9DB8, &qword_266DAF840, MEMORY[0x277CBCC08]);

  sub_266DA984C();

  (*(v25 + 8))(v28, v23);
  sub_266C230E8(&qword_28156F850, &qword_2800C9DC0, &qword_266DAF848, v35);
  sub_266DA97EC();
  v36 = OUTLINED_FUNCTION_19_0();
  v37(v36);
  OUTLINED_FUNCTION_5();
}

uint64_t sub_266C30220(uint64_t a1, uint64_t a2)
{
  if (qword_28156F878 != -1)
  {
    swift_once();
  }

  v4 = sub_266DA94AC();
  __swift_project_value_buffer(v4, qword_28156F880);
  v5 = sub_266DA948C();
  v6 = sub_266DAAB0C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_266C08000, v5, v6, "Fetching devices from syncDevice endpoint", v7, 2u);
    MEMORY[0x26D5F2480](v7, -1, -1);
  }

  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;

  sub_266DAA2CC();
}

void sub_266C30364(uint64_t a1, void (*a2)(uint64_t *))
{
  v17 = a2;
  v3 = sub_266DAA51C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9DD0, &qword_266DAF858);
  MEMORY[0x28223BE20](v10);
  v12 = (&v16 - v11);
  sub_266C33E5C(a1, &v16 - v11, &qword_2800C9DD0, &qword_266DAF858);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v14 = *v12;
    v15 = 0uLL;
  }

  else
  {
    (*(v4 + 32))(v9, v12, v3);
    (*(v4 + 16))(v7, v9, v3);
    sub_266C2D9D4();
    v14 = v18;
    v16 = v19;
    (*(v4 + 8))(v9, v3);
    v15 = v16;
  }

  v18 = v14;
  v19 = v15;
  v20 = EnumCaseMultiPayload == 1;
  v17(&v18);
  sub_266C33B08(v18, v19, *(&v19 + 1), v20);
}

void sub_266C30588(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (qword_28156F878 != -1)
  {
    swift_once();
  }

  v2 = sub_266DA94AC();
  __swift_project_value_buffer(v2, qword_28156F880);

  oslog = sub_266DA948C();
  v3 = sub_266DAAB0C();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = *(v1 + 16);

    _os_log_impl(&dword_266C08000, oslog, v3, "SyncDeviceProvider: found %ld devices", v4, 0xCu);
    MEMORY[0x26D5F2480](v4, -1, -1);
  }

  else
  {
  }
}

void (*sub_266C306E4(uint64_t a1))(void *)
{
  v1 = *(a1 + 16);
  if (qword_28156F878 != -1)
  {
    swift_once();
  }

  v2 = sub_266DA94AC();
  v3 = __swift_project_value_buffer(v2, qword_28156F880);
  v4 = sub_266DA948C();
  v5 = sub_266DAAB0C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_266C22A3C(0x73656369766544, 0xE700000000000000, &v11);
    _os_log_impl(&dword_266C08000, v4, v5, "**** %{public}s ****", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x26D5F2480](v7, -1, -1);
    MEMORY[0x26D5F2480](v6, -1, -1);
  }

  MEMORY[0x28223BE20](v8);
  v10[2] = v3;
  return sub_266CB7CEC(sub_266C33EEC, v10, v1);
}

uint64_t FMIPSyncDeviceProvider.deinit()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 32));

  return v0;
}

uint64_t FMIPSyncDeviceProvider.__deallocating_deinit()
{
  FMIPSyncDeviceProvider.deinit();

  return MEMORY[0x2821FE8D8](v0, 80, 7);
}

void sub_266C3094C()
{
  OUTLINED_FUNCTION_6();
  v2 = v1;
  v3 = v0;
  v5 = v4;
  v7 = v6;
  v9 = *(v6 + 24);
  v8 = *(v6 + 32);
  v10 = __swift_mutable_project_boxed_opaque_existential_1(v6, v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_0_6();
  v13 = v12 - v11;
  (*(v14 + 16))(v12 - v11);
  v15 = v5[3];
  v16 = v5[4];
  v17 = __swift_mutable_project_boxed_opaque_existential_1(v5, v15);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_0_6();
  v20 = v19 - v18;
  (*(v21 + 16))(v19 - v18);
  v2(v13, v20, v3, v9, v15, v8, v16);
  __swift_destroy_boxed_opaque_existential_0(v5);
  __swift_destroy_boxed_opaque_existential_0(v7);
  OUTLINED_FUNCTION_5();
}

uint64_t CachingSyncDeviceProvider.__allocating_init()()
{
  v0 = sub_266DAA2EC();
  v1 = sub_266DAA2DC();
  type metadata accessor for FMIPSyncDeviceProvider();
  swift_allocObject();
  OUTLINED_FUNCTION_17_1();

  FMIPSyncDeviceProvider.init(fmipSiriController:)(v2);
  type metadata accessor for CachingSyncDeviceProvider();
  v3 = swift_allocObject();

  return sub_266C332B8(v0, v1, v3);
}

uint64_t sub_266C30B5C(uint64_t a1, uint64_t a2)
{
  v5 = v2[19];
  __swift_project_boxed_opaque_existential_1(v2 + 15, v2[18]);
  OUTLINED_FUNCTION_18_1();
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = v2;
  v7 = *(v5 + 8);

  v8 = OUTLINED_FUNCTION_12_1();
  v7(v8);
}

void sub_266C30C14(void *a1, uint64_t a2, char a3, void (*a4)(void **), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3)
  {
    if (qword_28156F878 != -1)
    {
      swift_once();
    }

    v11 = sub_266DA94AC();
    __swift_project_value_buffer(v11, qword_28156F880);
    v12 = a1;
    v13 = sub_266DA948C();
    v14 = sub_266DAAAEC();
    sub_266C33C64(a1, a2, 1);
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v24 = v16;
      *v15 = 136315138;
      v17 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800CA800, &unk_266DAFC10);
      v18 = sub_266DAA72C();
      v20 = sub_266C22A3C(v18, v19, &v24);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_266C08000, v13, v14, "Could not get push token due to %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x26D5F2480](v16, -1, -1);
      MEMORY[0x26D5F2480](v15, -1, -1);
    }

    v25 = 0;
    v26 = 0;
    v24 = a1;
    v27 = 1;
    v21 = a1;
    a4(&v24);
    sub_266C33B08(v24, v25, v26, v27);
  }

  else
  {
    sub_266C30E28(a1, a2, a4, a5, a5, a6, a7, a8, v22, v23, v24, v25);
  }
}

void sub_266C30E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_6();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_266C31288(&v57);
  v20 = v58;
  if (!v58)
  {
    if (qword_28156F878 != -1)
    {
      OUTLINED_FUNCTION_1_8(&qword_28156F878);
    }

    v31 = sub_266DA94AC();
    __swift_project_value_buffer(v31, qword_28156F880);
    v32 = sub_266DA948C();
    v33 = sub_266DAAB0C();
    if (!os_log_type_enabled(v32, v33))
    {
      goto LABEL_28;
    }

    v34 = swift_slowAlloc();
    *v34 = 0;
    v35 = "Could not find any syncDevices in cache, getting syncDevices from the inner sync device provider.";
    goto LABEL_27;
  }

  v21 = v57;
  v22 = v59;
  v23 = v57 == v19 && v58 == v17;
  if (v23 || (OUTLINED_FUNCTION_4_5(), (sub_266DAB17C() & 1) != 0))
  {
    if (qword_28156F878 != -1)
    {
      OUTLINED_FUNCTION_1_8(&qword_28156F878);
    }

    v24 = sub_266DA94AC();
    v25 = __swift_project_value_buffer(v24, qword_28156F880);

    v26 = sub_266DA948C();
    v27 = sub_266DAAB0C();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 134217984;
      *(v28 + 4) = *(v22 + 16);
      v29 = OUTLINED_FUNCTION_2_5();
      sub_266C33B58(v29, v30);
      _os_log_impl(&dword_266C08000, v26, v27, "Found %ld SyncDevices in cache.", v28, 0xCu);
      OUTLINED_FUNCTION_6_1();
    }

    else
    {
      v36 = OUTLINED_FUNCTION_2_5();
      sub_266C33B58(v36, v37);
    }

    v57 = v21;
    v58 = v20;
    v59 = v22;
    v60 = 0;

    v15(&v57);
    sub_266C33B08(v57, v58, v59, v60);
    v38 = v13[13];
    v39 = v13[14];
    __swift_project_boxed_opaque_existential_1(v13 + 10, v38);
    if ((*(v39 + 8))(v38, v39))
    {
      v40 = sub_266DA948C();
      v41 = sub_266DAAB0C();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v57 = v43;
        *v42 = 136446210;
        *(v42 + 4) = sub_266C22A3C(0x636E7953206C6C41, 0xEF73656369766544, &v57);
        _os_log_impl(&dword_266C08000, v40, v41, "**** %{public}s ****", v42, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v43);
        OUTLINED_FUNCTION_6_1();
        OUTLINED_FUNCTION_6_1();
      }

      MEMORY[0x28223BE20](v44);
      v56[2] = v25;
      sub_266CB7CEC(sub_266C33B9C, v56, v22);
      v45 = OUTLINED_FUNCTION_2_5();
      sub_266C33B58(v45, v46);
      OUTLINED_FUNCTION_5();
    }

    else
    {
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_5();

      sub_266C33B58(v47, v48);
    }

    return;
  }

  v50 = OUTLINED_FUNCTION_2_5();
  sub_266C33B58(v50, v51);
  if (qword_28156F878 != -1)
  {
    OUTLINED_FUNCTION_1_8(&qword_28156F878);
  }

  v52 = sub_266DA94AC();
  __swift_project_value_buffer(v52, qword_28156F880);
  v32 = sub_266DA948C();
  v33 = sub_266DAAAEC();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    v35 = "Cached push token is not equal to push token from FMIPCore, getting syncDevices from the inner sync device provider.";
LABEL_27:
    _os_log_impl(&dword_266C08000, v32, v33, v35, v34, 2u);
    OUTLINED_FUNCTION_6_1();
  }

LABEL_28:

  OUTLINED_FUNCTION_5();

  sub_266C31318(v53, v54);
}

uint64_t sub_266C31288@<X0>(void *a1@<X8>)
{
  sub_266C3215C(&v3);
  v6 = v3;
  v7 = v4;
  v8 = v5;
  sub_266C2D810(sub_266C33C00, a1);
  return sub_266C33C20(v3, *(&v3 + 1), v4, *(&v4 + 1));
}

uint64_t sub_266C31318(uint64_t a1, uint64_t a2)
{
  v5 = v2[8];
  __swift_project_boxed_opaque_existential_1(v2 + 4, v2[7]);
  OUTLINED_FUNCTION_18_1();
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = a1;
  v6[4] = a2;
  v7 = *(v5 + 8);

  v8 = OUTLINED_FUNCTION_12_1();
  v7(v8);
}

uint64_t sub_266C313D0(uint64_t *a1, uint64_t a2, uint64_t (*a3)(void *))
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = *(a1 + 24);
  if ((v7 & 1) == 0)
  {
    if (qword_28156F878 != -1)
    {
      swift_once();
    }

    v9 = sub_266DA94AC();
    __swift_project_value_buffer(v9, qword_28156F880);

    v10 = sub_266DA948C();
    v11 = sub_266DAAB0C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 134217984;
      *(v12 + 4) = *(v6 + 16);
      sub_266C33B08(v4, v5, v6, 0);
      _os_log_impl(&dword_266C08000, v10, v11, "Caching %ld SyncDevices from inner provider", v12, 0xCu);
      MEMORY[0x26D5F2480](v12, -1, -1);
    }

    else
    {
      sub_266C33B08(v4, v5, v6, 0);
    }

    sub_266C31568(v4, v5, v6, *(a2 + 16), *(a2 + 24));
  }

  v14[0] = v4;
  v14[1] = v5;
  v14[2] = v6;
  v15 = v7;
  return (a3)(v14, a2);
}

uint64_t sub_266C31568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = sub_266DA746C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v18[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0) - 7];
  if ((a5 & 1) == 0)
  {
    sub_266DA741C();
    sub_266DA742C();
    v15 = v14;
    (*(v11 + 8))(v13, v10);
    a4 = v15;
  }

  v19 = a5 & 1;
  *&v20 = a4;
  BYTE8(v20) = a5 & 1;
  *(&v20 + 9) = *v18;
  HIDWORD(v20) = *&v18[3];
  v21 = a1;
  v22 = a2;
  v23 = a3;

  sub_266C32674(&v20);
}

void *CachingSyncDeviceProvider.deinit()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 4);

  __swift_destroy_boxed_opaque_existential_0(v0 + 10);
  __swift_destroy_boxed_opaque_existential_0(v0 + 15);
  return v0;
}

uint64_t CachingSyncDeviceProvider.__deallocating_deinit()
{
  CachingSyncDeviceProvider.deinit();

  return MEMORY[0x2821FE8D8](v0, 160, 7);
}

uint64_t SyncDevice.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v6 = v0[4];
  v5 = v0[5];

  sub_266DAADFC();
  OUTLINED_FUNCTION_6_4();
  MEMORY[0x26D5F1170](v1, v2);
  OUTLINED_FUNCTION_6_4();
  if (v3)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0;
  }

  if (v3)
  {
    v8 = v3;
  }

  else
  {
    v8 = 0xE000000000000000;
  }

  MEMORY[0x26D5F1170](v7, v8);

  OUTLINED_FUNCTION_6_4();
  if (v5)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0;
  }

  if (v5)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xE000000000000000;
  }

  MEMORY[0x26D5F1170](v9, v10);

  MEMORY[0x26D5F1170](62, 0xE100000000000000);
  return 0;
}

void sub_266C31864()
{

  v0 = sub_266DA948C();
  v1 = sub_266DAAB0C();

  if (os_log_type_enabled(v0, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v7 = v3;
    *v2 = 136446210;
    v4 = SyncDevice.description.getter();
    v6 = sub_266C22A3C(v4, v5, &v7);

    *(v2 + 4) = v6;
    _os_log_impl(&dword_266C08000, v0, v1, "%{public}s", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v3);
    MEMORY[0x26D5F2480](v3, -1, -1);
    MEMORY[0x26D5F2480](v2, -1, -1);
  }

  else
  {
  }
}

void sub_266C319DC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_266DA746C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v30[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  if (*(a1 + 8))
  {
    if (qword_28156F8A0 != -1)
    {
      swift_once();
    }

    v8 = sub_266DA94AC();
    __swift_project_value_buffer(v8, qword_28156F8A8);
    v9 = sub_266DA948C();
    v10 = sub_266DAAB0C();
    if (!os_log_type_enabled(v9, v10))
    {
      goto LABEL_14;
    }

    v11 = swift_slowAlloc();
    *v11 = 0;
    v12 = "Cache entry does not have an eviction time, so skipping eviction logic.";
    v13 = v10;
    v14 = v9;
    v15 = v11;
    v16 = 2;
LABEL_13:
    _os_log_impl(&dword_266C08000, v14, v13, v12, v15, v16);
    MEMORY[0x26D5F2480](v11, -1, -1);
LABEL_14:

    *a2 = *(a1 + 16);
    *(a2 + 8) = *(a1 + 24);
    sub_266C33E5C(a1, v30, &qword_2800C9D90, &unk_266DAF810);
    return;
  }

  v17 = *a1;
  sub_266DA745C();
  sub_266DA742C();
  v19 = v18;
  (*(v5 + 8))(v7, v4);
  if (v19 < v17)
  {
    if (qword_28156F8A0 != -1)
    {
      swift_once();
    }

    v20 = sub_266DA94AC();
    __swift_project_value_buffer(v20, qword_28156F8A8);
    v21 = sub_266DA948C();
    v22 = sub_266DAAB0C();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_266C08000, v21, v22, "Cached is still within cache TTL.", v23, 2u);
      MEMORY[0x26D5F2480](v23, -1, -1);
    }

    v9 = sub_266DA948C();
    v24 = sub_266DAAADC();
    if (!os_log_type_enabled(v9, v24))
    {
      goto LABEL_14;
    }

    v11 = swift_slowAlloc();
    *v11 = 134217984;
    *(v11 + 4) = v17 - v19;
    v12 = "Cache will expire in %f seconds.";
    v13 = v24;
    v14 = v9;
    v15 = v11;
    v16 = 12;
    goto LABEL_13;
  }

  if (qword_28156F8A0 != -1)
  {
    swift_once();
  }

  v25 = sub_266DA94AC();
  __swift_project_value_buffer(v25, qword_28156F8A8);
  v26 = sub_266DA948C();
  v27 = sub_266DAAB0C();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_266C08000, v26, v27, "Cached value is older than it's TTL, evicting it.", v28, 2u);
    MEMORY[0x26D5F2480](v28, -1, -1);
  }

  sub_266C32A6C();
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
}

uint64_t sub_266C31DA4(uint64_t a1, uint64_t a2)
{
  v5 = sub_266DA737C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 16) = 0xD00000000000001DLL;
  *(v2 + 24) = 0x8000000266DC1980;
  *(v2 + qword_28156FB58) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800CA7E0, &unk_266DB1E20);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_266DAE4A0;
  *(v9 + 56) = MEMORY[0x277D837D0];
  *(v9 + 64) = sub_266C33C74();
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;
  v10 = sub_266DAA71C();
  sub_266C31F1C(v10, v11);

  (*(v6 + 32))(v2 + qword_28156FB50, v8, v5);
  return v2;
}

uint64_t sub_266C31F1C(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9C48, &unk_266DAEBA0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13 - v3;
  v5 = sub_266DA737C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_opt_self() defaultManager];
  v10 = [v9 URLsForDirectory:13 inDomains:1];

  v11 = sub_266DAA93C();
  sub_266CB7A00(v11);

  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_266C2A858(v4);
    result = sub_266DAAF1C();
    __break(1u);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    sub_266DA733C();
    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

double sub_266C3215C@<D0>(uint64_t a1@<X8>)
{
  if ((*(v1 + qword_28156FB58) & 1) != 0 || (v3 = [objc_opt_self() defaultManager], sub_266DA735C(), v4 = sub_266DAA6FC(), , v5 = objc_msgSend(v3, sel_fileExistsAtPath_, v4), v3, v4, (v5 & 1) == 0))
  {
    if (qword_28156F8A0 != -1)
    {
      swift_once();
    }

    v6 = sub_266DA94AC();
    __swift_project_value_buffer(v6, qword_28156F8A8);

    v7 = sub_266DA948C();
    v8 = sub_266DAAB0C();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v20 = v10;
      *v9 = 136315138;
      v11 = sub_266DA735C();
      v13 = sub_266C22A3C(v11, v12, &v20);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_266C08000, v7, v8, "Cache file %s does not exist", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x26D5F2480](v10, -1, -1);
      MEMORY[0x26D5F2480](v9, -1, -1);
    }

    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  else
  {
    v14 = sub_266DA738C();
    v16 = v15;
    sub_266DA6FEC();
    swift_allocObject();
    sub_266DA6FDC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9D90, &unk_266DAF810);
    sub_266C230E8(&qword_28156F7E0, &qword_2800C9D90, &unk_266DAF810, &protocol conformance descriptor for CacheEntry<A>);
    sub_266DA6FCC();
    sub_266C2BB04(v14, v16);

    v17 = v21;
    v18 = v22;
    *a1 = v20;
    *(a1 + 8) = v17 & 1;
    *(a1 + 16) = v18;
    result = *&v23;
    *(a1 + 24) = v23;
  }

  return result;
}

uint64_t sub_266C32674(__int128 *a1)
{
  v2 = a1[1];
  v16 = *a1;
  v17 = v2;
  v18 = *(a1 + 4);
  sub_266DA701C();
  swift_allocObject();
  sub_266DA700C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9D90, &unk_266DAF810);
  sub_266C230E8(qword_28156FB60, &qword_2800C9D90, &unk_266DAF810, &protocol conformance descriptor for CacheEntry<A>);
  v3 = sub_266DA6FFC();
  v5 = v4;
  sub_266DA73DC();
  *(v1 + qword_28156FB58) = 0;
  if (qword_28156F8A0 != -1)
  {
    swift_once();
  }

  v6 = sub_266DA94AC();
  __swift_project_value_buffer(v6, qword_28156F8A8);

  v7 = sub_266DA948C();
  v8 = sub_266DAAB0C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136315138;
    v11 = sub_266DA735C();
    v13 = sub_266C22A3C(v11, v12, &v15);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_266C08000, v7, v8, "Wrote cache to %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x26D5F2480](v10, -1, -1);
    MEMORY[0x26D5F2480](v9, -1, -1);
  }

  sub_266C2BB04(v3, v5);
}

void sub_266C32A6C()
{
  v1 = v0;
  v25[1] = *MEMORY[0x277D85DE8];
  v2 = objc_opt_self();
  v3 = [v2 defaultManager];
  sub_266DA735C();
  v4 = sub_266DAA6FC();

  v5 = [v3 fileExistsAtPath_];

  if (v5)
  {
    *(v1 + qword_28156FB58) = 1;
    v6 = [v2 defaultManager];
    v7 = sub_266DA732C();
    v25[0] = 0;
    v8 = [v6 removeItemAtURL:v7 error:v25];

    v9 = v25[0];
    if (v8)
    {

      v10 = v9;
    }

    else
    {
      v11 = v25[0];
      v12 = sub_266DA72FC();

      swift_willThrow();
      if (qword_28156F8A0 != -1)
      {
        swift_once();
      }

      v13 = sub_266DA94AC();
      __swift_project_value_buffer(v13, qword_28156F8A8);

      v14 = v12;
      v15 = sub_266DA948C();
      v16 = sub_266DAAAFC();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v25[0] = v18;
        *v17 = 136315394;
        v19 = sub_266DA735C();
        v21 = sub_266C22A3C(v19, v20, v25);

        *(v17 + 4) = v21;
        *(v17 + 12) = 2082;
        swift_getErrorValue();
        v22 = sub_266DAB23C();
        v24 = sub_266C22A3C(v22, v23, v25);

        *(v17 + 14) = v24;
        _os_log_impl(&dword_266C08000, v15, v16, "Could not delete the cache file at %s due to %{public}s", v17, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x26D5F2480](v18, -1, -1);
        MEMORY[0x26D5F2480](v17, -1, -1);
      }

      else
      {
      }
    }
  }
}

uint64_t sub_266C32DA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t *)@<X3>, uint64_t *a5@<X8>)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  a4(&v9);
  v6 = v10;
  v7 = v11;
  *a5 = v9;
  a5[1] = v6;
  a5[2] = v7;
}

uint64_t sub_266C32E10(uint64_t a1, void (*a2)(uint64_t *))
{
  v3 = a1;
  a2(&v3);
}

uint64_t sub_266C32E60@<X0>(uint64_t a1@<X0>, char a2@<W1>, void (*a3)(uint64_t *)@<X2>, uint64_t a4@<X8>)
{
  v8 = a1;
  v9 = a2 & 1;
  a3(&v8);
  v5 = v8;
  v6 = v9;
  *a4 = v8;
  *(a4 + 8) = v6;

  return sub_266C33EE0(v5, v6);
}

uint64_t sub_266C32EC4(uint64_t a1, void (*a2)(uint64_t *))
{
  v4 = a1;
  a2(&v4);
  return a1;
}

uint64_t sub_266C32F04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t *)@<X3>, void (*a5)(uint64_t *)@<X5>, uint64_t *a6@<X8>)
{
  v11 = a1;
  v12 = a2;
  v13 = a3;
  if (a4(&v11))
  {
    a5(&v11);
  }

  v8 = v12;
  v9 = v13;
  *a6 = v11;
  a6[1] = v8;
  a6[2] = v9;
}

uint64_t sub_266C32F90(uint64_t a1, uint64_t (*a2)(uint64_t *), uint64_t a3, void (*a4)(uint64_t *))
{
  v6 = a1;
  if (a2(&v6))
  {
    a4(&v6);
  }
}

uint64_t sub_266C33068@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(uint64_t *)@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t *)@<X3>, uint64_t *a5@<X8>)
{
  result = sub_266C32F90(*a1, a2, a3, a4);
  *a5 = result;
  return result;
}

uint64_t sub_266C33094@<X0>(uint64_t *a1@<X0>, void (*a2)(uint64_t *)@<X1>, uint64_t *a3@<X8>)
{
  result = sub_266C32E10(*a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_266C330D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v24 = a7;
  v12 = *(a5 - 8);
  v13 = MEMORY[0x28223BE20](a1);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v13);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CachingSyncDeviceProvider();
  v20 = swift_allocObject();
  (*(v17 + 16))(v19, a1, a4);
  (*(v12 + 16))(v15, a2, a5);
  v21 = sub_266C333A8(v19, v15, v20, a4, a5, a6, v24);
  (*(v12 + 8))(a2, a5);
  (*(v17 + 8))(a1, a4);
  return v21;
}

uint64_t sub_266C332B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = type metadata accessor for FMIPSyncDeviceProvider();
  v12 = &protocol witness table for FMIPSyncDeviceProvider;
  *&v10 = a1;
  v8 = sub_266DAA2EC();
  v9 = &protocol witness table for FMIPSiriController;
  *&v7 = a2;
  *(a3 + 16) = 0x4122750000000000;
  *(a3 + 24) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9D98, &qword_266DAF820);
  swift_allocObject();
  *(a3 + 72) = sub_266C31DA4(0x69766564636E7973, 0xEE00617461646563);
  *(a3 + 104) = &type metadata for SFMUserDefaultsSettingProvider;
  *(a3 + 112) = &protocol witness table for SFMUserDefaultsSettingProvider;
  sub_266C0B0D8(&v10, a3 + 32);
  sub_266C0B0D8(&v7, a3 + 120);
  return a3;
}

uint64_t sub_266C333A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v20 = a4;
  v21 = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v19);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a1, a4);
  v17 = a5;
  v18 = a7;
  v14 = __swift_allocate_boxed_opaque_existential_1(&v16);
  (*(*(a5 - 8) + 32))(v14, a2, a5);
  *(a3 + 16) = 0x4122750000000000;
  *(a3 + 24) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9D98, &qword_266DAF820);
  swift_allocObject();
  *(a3 + 72) = sub_266C31DA4(0x69766564636E7973, 0xEE00617461646563);
  *(a3 + 104) = &type metadata for SFMUserDefaultsSettingProvider;
  *(a3 + 112) = &protocol witness table for SFMUserDefaultsSettingProvider;
  sub_266C0B0D8(&v19, a3 + 32);
  sub_266C0B0D8(&v16, a3 + 120);
  return a3;
}

unint64_t sub_266C33554()
{
  result = qword_28156F7D8;
  if (!qword_28156F7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28156F7D8);
  }

  return result;
}

uint64_t sub_266C335A8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_266C335E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SyncDevice.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SFMSyncDeviceData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_266C338F0()
{
  result = qword_2800C9D80;
  if (!qword_2800C9D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9D80);
  }

  return result;
}

unint64_t sub_266C33948()
{
  result = qword_2800C9D88;
  if (!qword_2800C9D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9D88);
  }

  return result;
}

unint64_t sub_266C339A0()
{
  result = qword_28156FAB8;
  if (!qword_28156FAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28156FAB8);
  }

  return result;
}

unint64_t sub_266C339F8()
{
  result = qword_28156FAC0;
  if (!qword_28156FAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28156FAC0);
  }

  return result;
}

unint64_t sub_266C33A50()
{
  result = qword_28156FA98;
  if (!qword_28156FA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28156FA98);
  }

  return result;
}

unint64_t sub_266C33AA8()
{
  result = qword_28156FAA0;
  if (!qword_28156FAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28156FAA0);
  }

  return result;
}

void sub_266C33B08(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  else
  {
  }
}

uint64_t sub_266C33B58(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

void sub_266C33BB8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  v3[0] = *a1;
  v3[1] = v2;
  v4 = *(a1 + 32);
  sub_266C319DC(v3, a2);
}

uint64_t sub_266C33C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
  }

  return result;
}

void sub_266C33C64(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_266C33C74()
{
  result = qword_28156F800;
  if (!qword_28156F800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28156F800);
  }

  return result;
}

uint64_t sub_266C33CEC(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v5 = a1;
  v6 = a2 & 1;
  return v3(&v5);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_266C33D4C()
{
  result = qword_28156F7F0;
  if (!qword_28156F7F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28156F7F0);
  }

  return result;
}

unint64_t sub_266C33D90()
{
  result = qword_28156F7E8;
  if (!qword_28156F7E8)
  {
    sub_266C33D4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28156F7E8);
  }

  return result;
}

uint64_t objectdestroy_32Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_266C33E5C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v5 = OUTLINED_FUNCTION_4_4();
  v6(v5);
  return a2;
}

uint64_t sub_266C33EE0(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_8(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_6_4()
{

  JUMPOUT(0x26D5F1170);
}

uint64_t OUTLINED_FUNCTION_14_1(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_266DAB34C();
}

uint64_t type metadata accessor for FindFriendSessionManager(uint64_t a1)
{
  result = qword_2800C9DF0;
  if (!qword_2800C9DF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_266C34080(uint64_t a1)
{
  result = sub_266C3412C();
  if (v2 <= 0x3F)
  {
    result = sub_266C22FD4();
    if (v3 <= 0x3F)
    {
      result = sub_266DAAB4C();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_266C3412C()
{
  result = qword_2800C9E00;
  if (!qword_2800C9E00)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_2800C9E00);
  }

  return result;
}

void sub_266C34174()
{
  OUTLINED_FUNCTION_6();
  v2 = v1;
  v24 = v3;
  sub_266DA947C();
  OUTLINED_FUNCTION_0_2();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_6_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9EE0, &qword_266DAF918);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_4_6();
  v9(v8);
  OUTLINED_FUNCTION_13_1();
  v10 = OUTLINED_FUNCTION_7_2();
  v11(v10);
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  v12 = OUTLINED_FUNCTION_5_5();
  v13(v12);
  if (qword_2800C9130 != -1)
  {
    OUTLINED_FUNCTION_1_9(&qword_2800C9130);
  }

  v14 = qword_2800C9818;
  v15 = sub_266DA946C();
  OUTLINED_FUNCTION_17_2(v15);
  v16 = OUTLINED_FUNCTION_11_1();
  v17(v16);
  OUTLINED_FUNCTION_10_1("Resolve Friend From Suggestions");
  *(v0 + 8) = &dword_266C08000;
  *(v0 + 16) = v14;
  v18 = v14;
  __swift_destroy_boxed_opaque_existential_0(v25);
  __swift_destroy_boxed_opaque_existential_0(&v26);
  OUTLINED_FUNCTION_26_0();
  v19 = swift_allocObject();
  *(v19 + 16) = v24;
  *(v19 + 24) = v2;
  OUTLINED_FUNCTION_15_2();
  v20 = swift_allocObject();
  OUTLINED_FUNCTION_12_2(v20);
  OUTLINED_FUNCTION_18_1();
  v21 = swift_allocObject();
  v21[2] = v5;
  v21[3] = sub_266C362E8;
  v21[4] = v19;
  OUTLINED_FUNCTION_0_13();
  sub_266C230E8(v22, &qword_2800C9EE0, &qword_266DAF918, v23);
  OUTLINED_FUNCTION_20_1();

  sub_266DA986C();

  sub_266C1825C(v0, &qword_2800C9EE0, &qword_266DAF918);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_18_2();

  OUTLINED_FUNCTION_5();
}

void sub_266C3441C()
{
  OUTLINED_FUNCTION_6();
  sub_266DA947C();
  OUTLINED_FUNCTION_0_2();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_6_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9ED0, &qword_266DAF910);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_6();
  v7(v6);
  OUTLINED_FUNCTION_13_1();
  v8 = OUTLINED_FUNCTION_7_2();
  v9(v8);
  __swift_project_boxed_opaque_existential_1(v24, v24[3]);
  v10 = OUTLINED_FUNCTION_5_5();
  v11(v10);
  sub_266CEF7D8();

  __swift_destroy_boxed_opaque_existential_0(v24);
  __swift_destroy_boxed_opaque_existential_0(&v25);
  if (qword_2800C9130 != -1)
  {
    OUTLINED_FUNCTION_1_9(&qword_2800C9130);
  }

  v12 = qword_2800C9818;
  v13 = sub_266DA946C();
  OUTLINED_FUNCTION_17_2(v13);
  v14 = OUTLINED_FUNCTION_11_1();
  v15(v14);
  OUTLINED_FUNCTION_10_1("Set Geo Fence");
  *(v0 + 8) = &dword_266C08000;
  *(v0 + 16) = v12;
  OUTLINED_FUNCTION_26_0();
  v16 = swift_allocObject();
  OUTLINED_FUNCTION_16_1(v16);
  OUTLINED_FUNCTION_15_2();
  v17 = swift_allocObject();
  OUTLINED_FUNCTION_12_2(v17);
  OUTLINED_FUNCTION_18_1();
  v18 = swift_allocObject();
  v18[2] = v3;
  v18[3] = sub_266C362CC;
  v18[4] = v1;
  OUTLINED_FUNCTION_0_13();
  sub_266C230E8(v19, v20, &qword_266DAF910, v21);
  OUTLINED_FUNCTION_20_1();
  v22 = v12;

  OUTLINED_FUNCTION_19_1(sub_266C23640, v23, sub_266C35FE8);

  sub_266C1825C(v0, &qword_2800C9ED0, &qword_266DAF910);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_18_2();

  OUTLINED_FUNCTION_5();
}

uint64_t sub_266C346B4()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800C9DD8);
  v1 = __swift_project_value_buffer(v0, qword_2800C9DD8);
  if (qword_28156F870 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_28156FCA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_266C3477C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v21 = a1;
  v20 = sub_266DAAB7C();
  v5 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_266DAAB6C();
  MEMORY[0x28223BE20](v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_266DA9FDC();
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_266C22FD4();
  v18 = "FindFriendSession";
  v19 = v14;
  sub_266DA9FBC();
  v22 = MEMORY[0x277D84F90];
  sub_266C3601C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC440, &qword_266DAF890);
  sub_266C230E8(&qword_28156EFE8, &qword_2800CC440, &qword_266DAF890, MEMORY[0x277D83970]);
  sub_266DAAD0C();
  (*(v5 + 104))(v7, *MEMORY[0x277D85260], v20);
  *(a2 + 24) = sub_266D689A4(0xD000000000000024, v18 | 0x8000000000000000, v13, v10, v7, 0);
  type metadata accessor for FindFriendSessionManager(0);
  sub_266DAAB3C();
  *a2 = a3;
  result = swift_allocObject();
  v16 = v21;
  *(result + 16) = sub_266C36074;
  *(result + 24) = v16;
  *(a2 + 8) = sub_266C360A0;
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_266C34A40@<X0>(uint64_t (*a1)(double)@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *(a2 + 24) = type metadata accessor for FMFCoreFindFriendSession();
  *(a2 + 32) = &off_287865E30;
  return a1(a3);
}