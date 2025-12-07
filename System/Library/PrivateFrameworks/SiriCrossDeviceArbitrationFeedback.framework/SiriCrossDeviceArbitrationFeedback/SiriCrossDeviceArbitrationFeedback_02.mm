uint64_t sub_266A8EA2C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1DB8, "h9");
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v7 - v3;
  v5 = sub_266ABD7A4();
  (*(*(v5 - 8) + 16))(v4, a1, v5);
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v5);
  swift_beginAccess();
  FeedbackPreferences.UserFeedback.lastPromptedDate.setter(v4);
  return swift_endAccess();
}

unint64_t sub_266A8EB58(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_266A8EB7C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1DB8, "h9");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_266A8EBE4(unint64_t a1)
{
  if (sub_266A6AF8C(a1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B21A8, &unk_266AC2C10);
    v2 = sub_266ABDE84();
  }

  else
  {
    v2 = MEMORY[0x277D84FA0];
  }

  v18 = sub_266A6AF84(a1);
  if (v18)
  {
    v3 = 0;
    v4 = v2 + 56;
    v17 = a1 & 0xC000000000000001;
    while (1)
    {
      sub_266A8EB58(v3, v17 == 0, a1);
      result = v17 ? MEMORY[0x26D5E8780](v3, a1) : *(a1 + 32 + 8 * v3);
      v6 = result;
      v7 = __OFADD__(v3++, 1);
      if (v7)
      {
        break;
      }

      result = sub_266ABDDC4();
      v8 = ~(-1 << *(v2 + 32));
      while (1)
      {
        v9 = result & v8;
        v10 = (result & v8) >> 6;
        v11 = *(v4 + 8 * v10);
        v12 = 1 << (result & v8);
        if ((v12 & v11) == 0)
        {
          break;
        }

        sub_266A8ED8C();
        v13 = *(*(v2 + 48) + 8 * v9);
        v14 = sub_266ABDDD4();

        if (v14)
        {

          goto LABEL_17;
        }

        result = v9 + 1;
      }

      *(v4 + 8 * v10) = v12 | v11;
      *(*(v2 + 48) + 8 * v9) = v6;
      v15 = *(v2 + 16);
      v7 = __OFADD__(v15, 1);
      v16 = v15 + 1;
      if (v7)
      {
        goto LABEL_20;
      }

      *(v2 + 16) = v16;
LABEL_17:
      if (v3 == v18)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:

    return v2;
  }

  return result;
}

unint64_t sub_266A8ED8C()
{
  result = qword_280BB6BF8;
  if (!qword_280BB6BF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280BB6BF8);
  }

  return result;
}

uint64_t sub_266A8EDE4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x65736963657270 && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_266ABE1C4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_266A8EE74(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x65636E6174736964 && a2 == 0xE800000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_266ABE1C4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_266A8EF08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266A8EDE4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_266A8EF34(uint64_t a1)
{
  v2 = sub_266A8F23C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266A8EF70(uint64_t a1)
{
  v2 = sub_266A8F23C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266A8EFB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266A8EE74(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_266A8EFDC(uint64_t a1)
{
  v2 = sub_266A8F290();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266A8F018(uint64_t a1)
{
  v2 = sub_266A8F290();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DistanceFromUser.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B21B0, &qword_266AC2C40);
  OUTLINED_FUNCTION_1_0();
  v14 = v3;
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v4);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B21B8, &qword_266AC2C48);
  OUTLINED_FUNCTION_1_0();
  v9 = v8;
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v10);
  v12 = &v14 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266A8F23C();
  sub_266ABE2C4();
  sub_266A8F290();
  sub_266ABE0C4();
  sub_266ABE134();
  (*(v14 + 8))(v6, v2);
  return (*(v9 + 8))(v12, v7);
}

unint64_t sub_266A8F23C()
{
  result = qword_2800B21C0;
  if (!qword_2800B21C0)
  {
    result = swift_getWitnessTable(byte_266AC2F34, &type metadata for DistanceFromUser.CodingKeys, v0, v1);
    atomic_store(result, &qword_2800B21C0);
  }

  return result;
}

unint64_t sub_266A8F290()
{
  result = qword_2800B21C8;
  if (!qword_2800B21C8)
  {
    result = swift_getWitnessTable(aE_0, &type metadata for DistanceFromUser.PreciseCodingKeys, v0, v1);
    atomic_store(result, &qword_2800B21C8);
  }

  return result;
}

uint64_t DistanceFromUser.hash(into:)()
{
  v1 = *v0;
  MEMORY[0x26D5E8B00](0);
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  return MEMORY[0x26D5E8B40](*&v2);
}

uint64_t DistanceFromUser.hashValue.getter()
{
  v1 = *v0;
  sub_266ABE244();
  MEMORY[0x26D5E8B00](0);
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x26D5E8B40](*&v2);
  return sub_266ABE2A4();
}

void DistanceFromUser.init(from:)(void *a1@<X0>, void *a2@<X8>)
{
  v40 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B21D0, &qword_266AC2C50);
  OUTLINED_FUNCTION_1_0();
  v39 = v5;
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v6);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B21D8, &unk_266AC2C58);
  OUTLINED_FUNCTION_1_0();
  v38 = v10;
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v11);
  v13 = &v35 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266A8F23C();
  sub_266ABE2B4();
  if (v2)
  {
    goto LABEL_8;
  }

  v36 = v8;
  v37 = a1;
  v35 = v4;
  v15 = v39;
  v14 = v40;
  v16 = sub_266ABE0B4();
  sub_266A86550(v16, 0);
  v19 = v9;
  if (v17 == v18 >> 1)
  {
LABEL_7:
    v27 = sub_266ABDEF4();
    swift_allocError();
    v29 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1F78, &qword_266AC1AA0);
    *v29 = &type metadata for DistanceFromUser;
    sub_266ABDFF4();
    sub_266ABDEE4();
    (*(*(v27 - 8) + 104))(v29, *MEMORY[0x277D84160], v27);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v38 + 8))(v13, v19);
    a1 = v37;
LABEL_8:
    v34 = a1;
    goto LABEL_9;
  }

  if (v17 < (v18 >> 1))
  {
    v20 = v9;
    sub_266A86BCC();
    v22 = v21;
    v24 = v23;
    swift_unknownObjectRelease();
    if (v22 == v24 >> 1)
    {
      sub_266A8F290();
      v25 = v36;
      v26 = v20;
      sub_266ABDFE4();
      v30 = v35;
      sub_266ABE064();
      v31 = v38;
      v33 = v32;
      swift_unknownObjectRelease();
      (*(v15 + 8))(v25, v30);
      (*(v31 + 8))(v13, v26);
      *v14 = v33;
      v34 = v37;
LABEL_9:
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      return;
    }

    v19 = v9;
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_266A8F7E0(uint64_t a1)
{
  v2 = *v1;
  sub_266ABE244();
  MEMORY[0x26D5E8B00](0);
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  MEMORY[0x26D5E8B40](*&v3);
  return sub_266ABE2A4();
}

unint64_t sub_266A8F848()
{
  result = qword_2800B21E0;
  if (!qword_2800B21E0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DistanceFromUser, &type metadata for DistanceFromUser, v0, v1);
    atomic_store(result, &qword_2800B21E0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DistanceFromUser(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for DistanceFromUser(uint64_t result, int a2, int a3)
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

_BYTE *sub_266A8F910(_BYTE *result, int a2, int a3)
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

unint64_t sub_266A8F9C0()
{
  result = qword_2800B21E8;
  if (!qword_2800B21E8)
  {
    result = swift_getWitnessTable(byte_266AC2E04, &type metadata for DistanceFromUser.PreciseCodingKeys, v0, v1);
    atomic_store(result, &qword_2800B21E8);
  }

  return result;
}

unint64_t sub_266A8FA18()
{
  result = qword_2800B21F0;
  if (!qword_2800B21F0)
  {
    result = swift_getWitnessTable("\rrw\x1B0h", &type metadata for DistanceFromUser.CodingKeys, v0, v1);
    atomic_store(result, &qword_2800B21F0);
  }

  return result;
}

unint64_t sub_266A8FA70()
{
  result = qword_2800B21F8;
  if (!qword_2800B21F8)
  {
    result = swift_getWitnessTable(asc_266AC2D74, &type metadata for DistanceFromUser.PreciseCodingKeys, v0, v1);
    atomic_store(result, &qword_2800B21F8);
  }

  return result;
}

unint64_t sub_266A8FAC8()
{
  result = qword_2800B2200;
  if (!qword_2800B2200)
  {
    result = swift_getWitnessTable("=~w\x1Bti", &type metadata for DistanceFromUser.PreciseCodingKeys, v0, v1);
    atomic_store(result, &qword_2800B2200);
  }

  return result;
}

unint64_t sub_266A8FB20()
{
  result = qword_2800B2208;
  if (!qword_2800B2208)
  {
    result = swift_getWitnessTable(aU_0, &type metadata for DistanceFromUser.CodingKeys, v0, v1);
    atomic_store(result, &qword_2800B2208);
  }

  return result;
}

unint64_t sub_266A8FB78()
{
  result = qword_2800B2210;
  if (!qword_2800B2210)
  {
    result = swift_getWitnessTable(byte_266AC2E54, &type metadata for DistanceFromUser.CodingKeys, v0, v1);
    atomic_store(result, &qword_2800B2210);
  }

  return result;
}

id static NSBundle.feedback.getter()
{
  type metadata accessor for UserFeedbackController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];

  return v1;
}

uint64_t sub_266A8FC2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ParticipantModel(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v6);
  v11 = &v15 - v10;
  v12 = 0;
  v13 = *(a1 + 16);
  while (1)
  {
    if (v13 == v12)
    {
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return result;
    }

    sub_266A6E9E4(a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v12, v8);
    if (v8[112] == 3)
    {
      break;
    }

    ++v12;
    result = sub_266A6A63C(v8);
  }

  sub_266A7977C(v8, v11);
  *(a2 + 24) = v4;
  *(a2 + 32) = sub_266A81304();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_266A7977C(v11, boxed_opaque_existential_1);
}

id sub_266A8FD8C(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_266ABD7D4();
  v4 = [v2 initWithNSUUID_];

  sub_266ABD7F4();
  OUTLINED_FUNCTION_1_4();
  (*(v5 + 8))(a1);
  return v4;
}

uint64_t sub_266A8FE1C(uint64_t a1)
{
  *v12 = *(v1 + 16);
  FeedbackPreferences.UserFeedback.promptFrequency.getter(&v11);
  if (!v11)
  {
    return 0;
  }

  sub_266A6FFD8(a1, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1C78, &unk_266AC0F90);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v3 = v11;
  v12[0] = v11;
  v4 = sub_266A8FFB4();
  v12[0] = v3;
  v5 = sub_266A90038(v12, 2);
  v12[0] = v3;
  sub_266A90120(v12, v5, v4);

  if (qword_2800B1AE8 != -1)
  {
    OUTLINED_FUNCTION_0_4(&qword_2800B1AE8);
  }

  v6 = sub_266ABD8D4();
  __swift_project_value_buffer(v6, qword_2800BD108);
  v7 = sub_266ABD8C4();
  v8 = sub_266ABDD54();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_266A65000, v7, v8, "#feedback #scda FeedbackSELFInstrumentationService - Tracked notification dismissed", v9, 2u);
    MEMORY[0x26D5E9280](v9, -1, -1);
  }

  return 1;
}

id sub_266A8FFB4()
{
  RequestModel.firstParticipantId.getter();
  v1 = v0;
  v3 = v2;
  v4 = [objc_allocWithZone(MEMORY[0x277D56D30]) init];
  if (v4)
  {
    sub_266A9078C(v1, v3, v4);
  }

  else
  {
  }

  return v4;
}

id sub_266A90038(void *a1, uint64_t a2)
{
  v3 = v2;
  *&v13 = *a1;
  RequestModel.firstParticipantId.getter();
  v6 = v5;
  v8 = v7;
  v9 = [objc_allocWithZone(MEMORY[0x277D56D20]) init];
  if (v9)
  {
    sub_266A9078C(v6, v8, v9);
    v13 = *(v3 + 16);
    v10 = v9;
    FeedbackPreferences.UserFeedback.dataCollectionGroup.getter(&v12);
    [v10 setDataCollectionGroup_];
  }

  else
  {
  }

  [v9 setUserFeedbackStatus_];
  return v9;
}

void sub_266A90120(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v48 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1DC0, &unk_266AC12F0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &isa - v6;
  v8 = sub_266ABD7F4();
  v49 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &isa - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &isa - v12;
  v14 = *a1;
  v15 = 0x279BD9000uLL;
  v16 = [objc_allocWithZone(MEMORY[0x277D56CA0]) init];
  if (v16)
  {
    v17 = v16;
    [v16 setUserFeedbackParticipantCollectionReported_];
    v47 = objc_opt_self();
    [objc_msgSend(v47 sharedStream)];
    swift_unknownObjectRelease();
    v18 = [objc_allocWithZone(MEMORY[0x277D56CA0]) init];
    if (v18)
    {
      v19 = v18;
      v45 = v11;
      sub_266ABD7E4();
      v46 = sub_266ABD7C4();
      isa = v49[1].isa;
      (isa)(v13, v8);
      sub_266A94EF0(v14, v20, v21, v22, v23, v24, v25, v26, isa, v45, v46, v47, v48, v49, v50, *(&v50 + 1), v51, v52, v53, v54[0], v54[1], v54[2], v55, v56, v57, v58);
      sub_266A95358();
      v28 = v27;

      if (v28)
      {
        sub_266A8FC2C(v28, &v50);

        if (v52)
        {
          sub_266A79964(&v50, v54);
          v29 = v55;
          v30 = v56;
          __swift_project_boxed_opaque_existential_1(v54, v55);
          (*(v30 + 144))(v29, v30);
          if (v31)
          {

            __swift_destroy_boxed_opaque_existential_1Tm(v54);
            v15 = 0x279BD9000;
          }

          else
          {
            __swift_destroy_boxed_opaque_existential_1Tm(v54);
            v15 = 0x279BD9000uLL;
          }
        }

        else
        {
          sub_266A90738(&v50, &qword_2800B1C48, &unk_266AC1310);
        }
      }

      v39 = [objc_allocWithZone(MEMORY[0x277D56CA8]) *(v15 + 3936)];
      if (v39)
      {
        v40 = v39;
        sub_266ABD7B4();

        if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
        {

          sub_266A90738(v7, &qword_2800B1DC0, &unk_266AC12F0);
        }

        else
        {
          v41 = v49;
          v42 = v45;
          (v49[4].isa)(v45, v7, v8);
          sub_266A906F4();
          (v41[2].isa)(v13, v42, v8);
          v43 = sub_266A8FD8C(v13);
          [v40 setCdaId_];

          [v19 setEventMetadata_];
          (isa)(v42, v8);
        }
      }

      else
      {
      }

      [v19 setUserFeedbackCompleted_];
      [objc_msgSend(v47 sharedStream)];
      swift_unknownObjectRelease();

      return;
    }

    if (qword_2800B1AE8 != -1)
    {
      OUTLINED_FUNCTION_0_4(&qword_2800B1AE8);
    }

    v35 = sub_266ABD8D4();
    __swift_project_value_buffer(v35, qword_2800BD108);
    v49 = sub_266ABD8C4();
    v36 = sub_266ABDD64();
    if (os_log_type_enabled(v49, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_266A65000, v49, v36, "#feedback FeedbackSELFInstrumentationService - Unable to create feedback CDAClientEvent", v37, 2u);
      MEMORY[0x26D5E9280](v37, -1, -1);
    }
  }

  else
  {
    if (qword_2800B1AE8 != -1)
    {
      OUTLINED_FUNCTION_0_4(&qword_2800B1AE8);
    }

    v32 = sub_266ABD8D4();
    __swift_project_value_buffer(v32, qword_2800BD108);
    v49 = sub_266ABD8C4();
    v33 = sub_266ABDD64();
    if (os_log_type_enabled(v49, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_266A65000, v49, v33, "#feedback FeedbackSELFInstrumentationService - Unable to create participation CDAClientEvent", v34, 2u);
      MEMORY[0x26D5E9280](v34, -1, -1);
    }
  }

  v38 = v49;
}

unint64_t sub_266A906F4()
{
  result = qword_2800B1DC8;
  if (!qword_2800B1DC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800B1DC8);
  }

  return result;
}

uint64_t sub_266A90738(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_1_4();
  (*(v4 + 8))(a1);
  return a1;
}

void sub_266A9078C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_266ABDA74();

  [a3 setSurveyId_];
}

uint64_t Participation.description.getter()
{
  result = 7237463;
  switch(*v0)
  {
    case 1:
      result = 0x73694D207261654ELL;
      break;
    case 2:
      result = 1953722188;
      break;
    case 3:
      return result;
    default:
      result = 0x20746F4E20646944;
      break;
  }

  return result;
}

SiriCrossDeviceArbitrationFeedback::Participation_optional __swiftcall Participation.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

BOOL static Participation.< infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  switch(*a1)
  {
    case 1:
      if (!*a2)
      {
        goto LABEL_6;
      }

      goto LABEL_3;
    case 2:
      return v2 < 2;
    case 3:
      if (v2 >= 3)
      {
        goto LABEL_3;
      }

LABEL_6:
      result = 1;
      break;
    default:
LABEL_3:
      result = 0;
      break;
  }

  return result;
}

unint64_t sub_266A90940()
{
  result = qword_2800B2218;
  if (!qword_2800B2218)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Participation, &type metadata for Participation, v0, v1);
    atomic_store(result, &qword_2800B2218);
  }

  return result;
}

BOOL sub_266A909A4(unsigned __int8 a1, char a2)
{
  switch(a2)
  {
    case 1:
      if (!a1)
      {
        goto LABEL_6;
      }

      goto LABEL_3;
    case 2:
      return a1 > 1u;
    case 3:
      if (a1 >= 3u)
      {
        goto LABEL_3;
      }

LABEL_6:
      result = 0;
      break;
    default:
LABEL_3:
      result = 1;
      break;
  }

  return result;
}

BOOL sub_266A90A08(char a1, unsigned __int8 a2)
{
  switch(a1)
  {
    case 1:
      if (!a2)
      {
        goto LABEL_6;
      }

      goto LABEL_3;
    case 2:
      return a2 > 1u;
    case 3:
      if (a2 >= 3u)
      {
        goto LABEL_3;
      }

LABEL_6:
      result = 0;
      break;
    default:
LABEL_3:
      result = 1;
      break;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Participation(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

BOOL sub_266A90B48(unsigned __int8 a1, char a2)
{
  switch(a2)
  {
    case 1:
      if (!a1)
      {
        goto LABEL_6;
      }

      goto LABEL_3;
    case 2:
      return a1 < 2u;
    case 3:
      if (a1 >= 3u)
      {
        goto LABEL_3;
      }

LABEL_6:
      result = 1;
      break;
    default:
LABEL_3:
      result = 0;
      break;
  }

  return result;
}

double sub_266A90BE4@<D0>(_OWORD *a3@<X8>)
{
  v5 = sub_266ABDA74();
  v6 = [v3 objectForKey_];

  if (v6)
  {
    sub_266ABDE14();

    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_266A90C78(uint64_t a1, uint64_t a2)
{
  v3 = sub_266ABDA74();
  v4 = [v2 stringForKey_];

  if (!v4)
  {
    return 0;
  }

  v5 = sub_266ABDA84();

  return v5;
}

uint64_t sub_266A90CF8(uint64_t a1, uint64_t a2)
{
  v3 = sub_266ABDA74();
  v4 = [v2 arrayForKey_];

  if (!v4)
  {
    return 0;
  }

  v5 = sub_266ABDC24();

  return v5;
}

uint64_t sub_266A90D78(uint64_t a1, uint64_t a2)
{
  v3 = sub_266ABDA74();
  v4 = [v2 dictionaryForKey_];

  if (!v4)
  {
    return 0;
  }

  v5 = sub_266ABD9A4();

  return v5;
}

id sub_266A90E08(uint64_t a1, uint64_t a2)
{
  v3 = sub_266ABDA74();
  v4 = [v2 longLongForKey_];

  return v4;
}

double sub_266A90E50(uint64_t a1, uint64_t a2)
{
  v3 = sub_266ABDA74();
  [v2 doubleForKey_];
  v5 = v4;

  return v5;
}

id sub_266A90EA0(uint64_t a1, uint64_t a2)
{
  v3 = sub_266ABDA74();
  v4 = [v2 BOOLForKey_];

  return v4;
}

void sub_266A90EE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_266A915A4(a1, v11);
  v4 = v12;
  if (v12)
  {
    v5 = __swift_project_boxed_opaque_existential_1(v11, v12);
    v6 = *(v4 - 8);
    MEMORY[0x28223BE20](v5);
    v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v8);
    v9 = sub_266ABE1B4();
    (*(v6 + 8))(v8, v4);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
  }

  else
  {
    v9 = 0;
  }

  v10 = sub_266ABDA74();
  [v3 setObject:v9 forKey:v10];
  swift_unknownObjectRelease();
}

void sub_266A9104C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v5 = sub_266ABDA74();
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_266ABDA74();
  [v4 setString:v5 forKey:v6];
}

void sub_266A910D8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >> 60 == 15)
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_266ABD6D4();
  }

  v6 = sub_266ABDA74();
  [v4 setData:v5 forKey:v6];
}

void sub_266A9116C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v4 = sub_266ABDC14();
  }

  else
  {
    v4 = 0;
  }

  v5 = sub_266ABDA74();
  [v3 setArray:v4 forKey:v5];
}

void sub_266A91204(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v4 = sub_266ABD994();
  }

  else
  {
    v4 = 0;
  }

  v5 = sub_266ABDA74();
  [v3 setDictionary:v4 forKey:v5];
}

void sub_266A912AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_266ABDA74();
  [v3 setLongLong:a1 forKey:v5];
}

void sub_266A91314(uint64_t a1, uint64_t a2, double a3)
{
  v5 = sub_266ABDA74();
  [v3 setDouble:v5 forKey:a3];
}

void sub_266A91374(char a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_266ABDA74();
  [v3 setBool:a1 & 1 forKey:v5];
}

uint64_t dispatch thunk of CloudKeyValueStore.set(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return (*(a5 + 88))(a1, a2, a3, a4);
}

{
  return (*(a5 + 112))(a1, a2, a3, a4);
}

{
  return (*(a5 + 120))(a1, a2, a3, a4);
}

{
  return (*(a5 + 128))(a1, a2, a3, a4);
}

{
  return (*(a5 + 144))(a1, a2, a3, a4);
}

uint64_t dispatch thunk of CloudKeyValueStore.set(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return (*(a6 + 96))(a1, a2, a3, a4, a5);
}

{
  return (*(a6 + 104))(a1, a2, a3, a4, a5);
}

void sub_266A91558(uint64_t a1, uint64_t a2)
{
  v3 = sub_266ABDA74();
  [v2 removeObjectForKey_];
}

uint64_t sub_266A915A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1C50, &qword_266AC0EE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t FeedbackPreferences.init(store:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  a3[2] = result;
  a3[3] = a2;
  return result;
}

uint64_t FeedbackPreferences.UserFeedback.lastPromptedDate.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1DB8, "h9");
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = OUTLINED_FUNCTION_1_5();
  v7 = v6(v5);
  sub_266A93510(a1, v4);
  v8 = sub_266ABD7A4();
  v9 = 0;
  if (__swift_getEnumTagSinglePayload(v4, 1, v8) != 1)
  {
    v9 = sub_266ABD714();
    (*(*(v8 - 8) + 8))(v4, v8);
  }

  v10 = OUTLINED_FUNCTION_40_0();
  [v7 setValue:v9 forKey:v10];

  swift_unknownObjectRelease();
  return sub_266A6CBB4(a1, &qword_2800B1DB8, "h9");
}

uint64_t FeedbackPreferences.UserFeedback.dataCollectionGroup.getter@<X0>(char *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = (*(v4 + 8))(*v1, v4);
  v6 = sub_266ABDA74();
  v7 = [v5 stringForKey_];

  if (!v7)
  {
    if (qword_280BB6C30 != -1)
    {
      OUTLINED_FUNCTION_10(&qword_280BB6C30);
    }

    v11 = sub_266ABD8D4();
    OUTLINED_FUNCTION_8_5(v11, qword_280BB7028);
    v12 = sub_266ABD8C4();
    v13 = sub_266ABDD54();
    if (OUTLINED_FUNCTION_14_0(v13))
    {
      v14 = OUTLINED_FUNCTION_19();
      *v14 = 0;
      _os_log_impl(&dword_266A65000, v12, v13, "#feedback Data Collection Group not set using default", v14, 2u);
      OUTLINED_FUNCTION_8();
    }

    v15 = (*(v4 + 16))(v3, v4);
    v16 = sub_266ABDA74();
    v17 = [v15 objectForKey_];

    if (v17)
    {
      sub_266ABDE14();
      swift_unknownObjectRelease();
    }

    else
    {
      v23 = 0u;
      v24 = 0u;
    }

    v25[0] = v23;
    v25[1] = v24;
    if (*(&v24 + 1))
    {
      result = swift_dynamicCast();
      if (result)
      {
        v18 = sub_266ABDAF4();
        v20 = v19;

        if (v18 == 0x7972726163 && v20 == 0xE500000000000000)
        {

LABEL_23:
          v10 = 1;
          goto LABEL_24;
        }

        v22 = sub_266ABE1C4();

        if (v22)
        {
          goto LABEL_23;
        }
      }
    }

    else
    {
      result = sub_266A6CBB4(v25, &qword_2800B1C50, &qword_266AC0EE0);
    }

    v10 = 0;
    goto LABEL_24;
  }

  sub_266ABDA84();

  v8 = sub_266ABDFD4();

  v10 = v8 == 1;
  if (v8 == 2)
  {
    v10 = 2;
  }

LABEL_24:
  *a1 = v10;
  return result;
}

__n128 FeedbackPreferences.userFeedback.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

__n128 FeedbackPreferences.userFeedback.setter(__n128 *a1)
{
  result = *a1;
  *v1 = *a1;
  return result;
}

id FeedbackPreferences.UserFeedback.isCollectionGroupConfigByProfile.getter()
{
  v0 = OUTLINED_FUNCTION_1_5();
  v2 = v1(v0);
  v3 = OUTLINED_FUNCTION_39();
  v4 = OUTLINED_FUNCTION_22_1();
  v6 = [v4 v5];

  return v6;
}

id FeedbackPreferences.UserFeedback.isCollectionIdentifierConfigByProfile.getter()
{
  v0 = OUTLINED_FUNCTION_1_5();
  v2 = v1(v0);
  v3 = sub_266ABDA74();
  v4 = OUTLINED_FUNCTION_22_1();
  v6 = [v4 v5];

  return v6;
}

id FeedbackPreferences.UserFeedback.isPromptFrequencyConfiguredByProfile.getter()
{
  v0 = OUTLINED_FUNCTION_1_5();
  v2 = v1(v0);
  v3 = OUTLINED_FUNCTION_39();
  v4 = OUTLINED_FUNCTION_22_1();
  v6 = [v4 v5];

  return v6;
}

void FeedbackPreferences.UserFeedback.promptFrequency.setter(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = sub_266ABD4F4();
  OUTLINED_FUNCTION_29_2(v3);
  sub_266ABD4E4();
  LOBYTE(v38) = v2;
  sub_266A93580();
  sub_266ABD4D4();

  v4 = *v1;
  v36 = *(v1[1] + 24);
  v37 = v1[1];
  (v36)(*v1);
  v6 = v5;
  ObjectType = swift_getObjectType();
  v8 = *(v6 + 104);
  v9 = OUTLINED_FUNCTION_5();
  sub_266A6CCDC(v9, v10);
  v11 = OUTLINED_FUNCTION_5();
  v8(v11);
  v12 = OUTLINED_FUNCTION_5();
  sub_266A6A5B4(v12, v13);
  swift_unknownObjectRelease();
  if (qword_280BB6C30 != -1)
  {
    OUTLINED_FUNCTION_10(&qword_280BB6C30);
  }

  v14 = sub_266ABD8D4();
  __swift_project_value_buffer(v14, qword_280BB7028);
  v15 = sub_266ABD8C4();
  v16 = sub_266ABDD54();
  if (OUTLINED_FUNCTION_14_0(v16))
  {
    OUTLINED_FUNCTION_25();
    v17 = OUTLINED_FUNCTION_33_2();
    v38 = v17;
    *ObjectType = 136315138;
    v18 = 0xE500000000000000;
    v19 = 0x726576654ELL;
    switch(v2)
    {
      case 1:
        v18 = 0xEC00000072756F48;
        v19 = OUTLINED_FUNCTION_4_5() & 0xFFFFFFFFFFFFLL | 0x206E000000000000;
        break;
      case 2:
        v18 = 0xEA00000000007961;
        v19 = OUTLINED_FUNCTION_4_5() & 0xFFFFFFFFFFFFLL | 0x4420000000000000;
        break;
      case 3:
        v18 = 0xED00007473657571;
        v19 = OUTLINED_FUNCTION_35_0();
        break;
      default:
        break;
    }

    v20 = sub_266A66D34(v19, v18, &v38);

    *(ObjectType + 4) = v20;
    OUTLINED_FUNCTION_21_3();
    _os_log_impl(v21, v22, v23, v24, v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_7_5();
  }

  else
  {
  }

  v36(v4, v37);
  v27 = v26;
  v28 = swift_getObjectType();
  LOBYTE(v27) = (*(v27 + 16))(v28, v27);
  swift_unknownObjectRelease();
  if (v27)
  {
    v29 = OUTLINED_FUNCTION_5();
    sub_266A6A5B4(v29, v30);
  }

  else
  {
    v31 = sub_266ABD8C4();
    v32 = sub_266ABDD64();
    if (OUTLINED_FUNCTION_14_0(v32))
    {
      v33 = OUTLINED_FUNCTION_19();
      *v33 = 0;
      _os_log_impl(&dword_266A65000, v31, v32, "#feedback Preferences -  Failed to synchronize frequency to preferences.", v33, 2u);
      OUTLINED_FUNCTION_8();
    }

    v34 = OUTLINED_FUNCTION_5();
    sub_266A6A5B4(v34, v35);
  }
}

void (*FeedbackPreferences.UserFeedback.promptFrequency.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v2 = a1 + 1;
  OUTLINED_FUNCTION_16_4();
  FeedbackPreferences.UserFeedback.promptFrequency.getter(v2);
  return sub_266A92094;
}

void sub_266A92094(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(a1 + 8);
    v2 = &v3;
  }

  else
  {
    v4 = *(a1 + 8);
    v2 = &v4;
  }

  FeedbackPreferences.UserFeedback.promptFrequency.setter(v2);
}

uint64_t sub_266A92110(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1DB8, "h9");
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_266A93510(a1, &v6 - v3);
  return FeedbackPreferences.UserFeedback.lastPromptedDate.setter(v4);
}

void (*FeedbackPreferences.UserFeedback.lastPromptedDate.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1DB8, "h9") - 8) + 64);
  a1[1] = __swift_coroFrameAllocStub(v3);
  a1[2] = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_16_4();
  FeedbackPreferences.UserFeedback.lastPromptedDate.getter(v4);
  return sub_266A92248;
}

void sub_266A92248(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2)
  {
    sub_266A93510(v3, v2);
    FeedbackPreferences.UserFeedback.lastPromptedDate.setter(v2);
    sub_266A6CBB4(v3, &qword_2800B1DB8, "h9");
  }

  else
  {
    FeedbackPreferences.UserFeedback.lastPromptedDate.setter(v3);
  }

  free(v3);

  free(v2);
}

void *sub_266A922C8@<X0>(__int128 *a1@<X0>, void *(*a2)(char *__return_ptr)@<X3>, _BYTE *a3@<X8>)
{
  v6 = *a1;
  result = a2(&v5);
  *a3 = v5;
  return result;
}

void FeedbackPreferences.UserFeedback.dataCollectionGroup.setter(unsigned __int8 *a1)
{
  v1 = OUTLINED_FUNCTION_1_5();
  v3 = v2(v1);
  v4 = sub_266ABDA74();

  OUTLINED_FUNCTION_2_4();
  v5 = sub_266ABDA74();
  [v3 setObject:v4 forKey:v5];
}

uint64_t (*FeedbackPreferences.UserFeedback.dataCollectionGroup.modify(uint64_t a1))()
{
  v2 = v1[1];
  *a1 = *v1;
  *(a1 + 8) = v2;
  FeedbackPreferences.UserFeedback.dataCollectionGroup.getter((a1 + 16));
  return sub_266A9247C;
}

void sub_266A9247C(void *a1)
{
  v3 = (*(a1[1] + 8))(*a1);
  v1 = sub_266ABDA74();

  OUTLINED_FUNCTION_2_4();
  v2 = sub_266ABDA74();
  [v3 setObject:v1 forKey:v2];
}

uint64_t FeedbackPreferences.UserFeedback.dataCollectionIdentifier.getter()
{
  v0 = OUTLINED_FUNCTION_1_5();
  v2 = v1(v0);
  v3 = OUTLINED_FUNCTION_12_3();
  v4 = [v2 stringForKey_];

  if (v4)
  {
    v5 = sub_266ABDA84();
  }

  else
  {
    if (qword_280BB6C30 != -1)
    {
      OUTLINED_FUNCTION_10(&qword_280BB6C30);
    }

    v6 = sub_266ABD8D4();
    OUTLINED_FUNCTION_8_5(v6, qword_280BB7028);
    v7 = sub_266ABD8C4();
    v8 = sub_266ABDD54();
    if (OUTLINED_FUNCTION_4_0(v8))
    {
      *OUTLINED_FUNCTION_19() = 0;
      OUTLINED_FUNCTION_10_4(&dword_266A65000, v9, v10, "#feedback Data Collection Identifier not set, using nil");
      OUTLINED_FUNCTION_8();
    }

    return 0;
  }

  return v5;
}

uint64_t sub_266A92670@<X0>(uint64_t *a1@<X8>)
{
  result = FeedbackPreferences.UserFeedback.dataCollectionIdentifier.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_266A926AC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  FeedbackPreferences.UserFeedback.dataCollectionIdentifier.setter(v1, v2);
}

void FeedbackPreferences.UserFeedback.dataCollectionIdentifier.setter(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = OUTLINED_FUNCTION_1_5();
    v4 = v3(v2);
    v5 = sub_266ABDA74();

    v8 = OUTLINED_FUNCTION_12_3();
    [v4 setObject:v5 forKey:?];
  }

  else
  {
    v6 = OUTLINED_FUNCTION_1_5();
    v5 = v7(v6);
    v8 = OUTLINED_FUNCTION_12_3();
    [v5 removeObjectForKey_];
  }
}

void (*FeedbackPreferences.UserFeedback.dataCollectionIdentifier.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  OUTLINED_FUNCTION_16_4();
  *a1 = FeedbackPreferences.UserFeedback.dataCollectionIdentifier.getter();
  a1[1] = v3;
  return sub_266A92824;
}

void sub_266A92824(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  if (a2)
  {

    FeedbackPreferences.UserFeedback.dataCollectionIdentifier.setter(v3, v2);
  }

  else
  {
    FeedbackPreferences.UserFeedback.dataCollectionIdentifier.setter(*a1, v2);
  }
}

void FeedbackPreferences.UserFeedback.cancelledFeedback.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_18_2();
  v11 = *(*(v10 + 8) + 8);
  v12 = OUTLINED_FUNCTION_5_4();
  v13 = (v11)(v12);
  v14 = OUTLINED_FUNCTION_15_3();
  v15 = [v13 dataForKey_];

  if (v15)
  {
    sub_266ABD6E4();

    v16 = sub_266ABD494();
    OUTLINED_FUNCTION_29_2(v16);
    sub_266ABD484();
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CF8, &qword_266AC20F0);
    v18 = OUTLINED_FUNCTION_3_6(&qword_2800B2040, MEMORY[0x277D83808]);
    OUTLINED_FUNCTION_14_2(v18, v19, v20, v21);
    if (v17)
    {

      if (qword_280BB6C30 != -1)
      {
        OUTLINED_FUNCTION_10(&qword_280BB6C30);
      }

      v22 = sub_266ABD8D4();
      OUTLINED_FUNCTION_8_5(v22, qword_280BB7028);
      v23 = v17;
      v24 = sub_266ABD8C4();
      v25 = sub_266ABDD64();

      if (os_log_type_enabled(v24, v25))
      {
        OUTLINED_FUNCTION_25();
        v26 = OUTLINED_FUNCTION_37_0();
        *v11 = 138412290;
        v27 = v17;
        v28 = _swift_stdlib_bridgeErrorToNSError();
        *(v11 + 4) = v28;
        *v26 = v28;
        OUTLINED_FUNCTION_21_3();
        _os_log_impl(v29, v30, v31, v32, v33, 0xCu);
        sub_266A6CBB4(v26, &unk_2800B2110, &unk_266AC20E0);
        OUTLINED_FUNCTION_8();
        v11 = a10;
        OUTLINED_FUNCTION_8();
      }

      v34 = OUTLINED_FUNCTION_5_4();
      v35 = (v11)(v34);
      v36 = OUTLINED_FUNCTION_15_3();
      v37 = OUTLINED_FUNCTION_22_1();
      [v37 v38];

      OUTLINED_FUNCTION_43();
    }

    else
    {
      OUTLINED_FUNCTION_43();
    }
  }

  else
  {
    if (qword_280BB6C30 != -1)
    {
      OUTLINED_FUNCTION_10(&qword_280BB6C30);
    }

    v39 = sub_266ABD8D4();
    OUTLINED_FUNCTION_8_5(v39, qword_280BB7028);
    v40 = sub_266ABD8C4();
    v41 = sub_266ABDD54();
    if (OUTLINED_FUNCTION_4_0(v41))
    {
      *OUTLINED_FUNCTION_19() = 0;
      OUTLINED_FUNCTION_10_4(&dword_266A65000, v42, v43, "#feedback No Submitted Feedback returning empty set.");
      OUTLINED_FUNCTION_8();
    }
  }

  OUTLINED_FUNCTION_19_2();
}

void FeedbackPreferences.UserFeedback.submittedFeedback.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_18_2();
  v11 = *(*(v10 + 8) + 8);
  v12 = OUTLINED_FUNCTION_5_4();
  v13 = (v11)(v12);
  v14 = OUTLINED_FUNCTION_15_3();
  v15 = [v13 dataForKey_];

  if (v15)
  {
    sub_266ABD6E4();

    v16 = sub_266ABD494();
    OUTLINED_FUNCTION_29_2(v16);
    sub_266ABD484();
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CF8, &qword_266AC20F0);
    v18 = OUTLINED_FUNCTION_3_6(&qword_2800B2040, MEMORY[0x277D83808]);
    OUTLINED_FUNCTION_14_2(v18, v19, v20, v21);
    if (v17)
    {

      if (qword_280BB6C30 != -1)
      {
        OUTLINED_FUNCTION_10(&qword_280BB6C30);
      }

      v22 = sub_266ABD8D4();
      OUTLINED_FUNCTION_8_5(v22, qword_280BB7028);
      v23 = v17;
      v24 = sub_266ABD8C4();
      v25 = sub_266ABDD64();

      if (os_log_type_enabled(v24, v25))
      {
        OUTLINED_FUNCTION_25();
        v26 = OUTLINED_FUNCTION_37_0();
        *v11 = 138412290;
        v27 = v17;
        v28 = _swift_stdlib_bridgeErrorToNSError();
        *(v11 + 4) = v28;
        *v26 = v28;
        OUTLINED_FUNCTION_21_3();
        _os_log_impl(v29, v30, v31, v32, v33, 0xCu);
        sub_266A6CBB4(v26, &unk_2800B2110, &unk_266AC20E0);
        OUTLINED_FUNCTION_8();
        v11 = a10;
        OUTLINED_FUNCTION_8();
      }

      v34 = OUTLINED_FUNCTION_5_4();
      v35 = (v11)(v34);
      v36 = OUTLINED_FUNCTION_15_3();
      v37 = OUTLINED_FUNCTION_22_1();
      [v37 v38];

      OUTLINED_FUNCTION_43();
    }

    else
    {
      OUTLINED_FUNCTION_43();
    }
  }

  else
  {
    if (qword_280BB6C30 != -1)
    {
      OUTLINED_FUNCTION_10(&qword_280BB6C30);
    }

    v39 = sub_266ABD8D4();
    OUTLINED_FUNCTION_8_5(v39, qword_280BB7028);
    v40 = sub_266ABD8C4();
    v41 = sub_266ABDD54();
    if (OUTLINED_FUNCTION_4_0(v41))
    {
      *OUTLINED_FUNCTION_19() = 0;
      OUTLINED_FUNCTION_10_4(&dword_266A65000, v42, v43, "#feedback No Submitted Feedback returning empty set.");
      OUTLINED_FUNCTION_8();
    }
  }

  OUTLINED_FUNCTION_19_2();
}

Swift::Void __swiftcall FeedbackPreferences.UserFeedback.clearSubmittedFeedback()()
{
  v0 = OUTLINED_FUNCTION_1_5();
  v2 = v1(v0);
  v3 = OUTLINED_FUNCTION_13_2();
  [v2 removeObjectForKey_];
}

unint64_t sub_266A934BC()
{
  result = qword_2800B2228;
  if (!qword_2800B2228)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UserFeedbackPromptFrequency, &type metadata for UserFeedbackPromptFrequency, v0, v1);
    atomic_store(result, &qword_2800B2228);
  }

  return result;
}

uint64_t sub_266A93510(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1DB8, "h9");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_266A93580()
{
  result = qword_2800B2230;
  if (!qword_2800B2230)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UserFeedbackPromptFrequency, &type metadata for UserFeedbackPromptFrequency, v0, v1);
    atomic_store(result, &qword_2800B2230);
  }

  return result;
}

uint64_t sub_266A935D4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_266A93614(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for FeedbackPreferences.UserFeedback(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for FeedbackPreferences.UserFeedback(uint64_t result, int a2, int a3)
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

uint64_t OUTLINED_FUNCTION_6_5(unint64_t *a1, uint64_t a2)
{
  v3 = MEMORY[0x277D83948];

  return sub_266A7250C(a1, a2, v3);
}

uint64_t OUTLINED_FUNCTION_26_2(uint64_t a1)
{
  *(v1 + 4) = a1;
  *(v1 + 12) = 2048;
}

void OUTLINED_FUNCTION_28_1()
{

  sub_266A6CFCC();
}

uint64_t OUTLINED_FUNCTION_29_2(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_39()
{

  return sub_266ABDA74();
}

uint64_t OUTLINED_FUNCTION_41(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return sub_266ABD4D4();
}

uint64_t sub_266A937E0(char a1, char a2)
{
  if (a1)
  {
    v2 = 3157554;
  }

  else
  {
    v2 = 3157553;
  }

  if (a2)
  {
    v3 = 3157554;
  }

  else
  {
    v3 = 3157553;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_266ABE1C4();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_266A93848(unsigned __int8 a1, uint64_t a2)
{
  v2 = 7759204;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x6E4F6576696CLL;
    }

    else
    {
      v4 = 6447468;
    }

    if (v3 == 1)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  else
  {
    v5 = 0xE300000000000000;
    v4 = 7759204;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x6E4F6576696CLL;
    }

    else
    {
      v2 = 6447468;
    }

    if (a2 == 1)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v6 = 0xE300000000000000;
    }
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_9_3(v4, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_266A9391C(char a1, uint64_t a2)
{
  v3 = 0xE200000000000000;
  v4 = 25705;
  switch(a1)
  {
    case 1:
      v4 = 0xD000000000000013;
      v5 = "1";
      goto LABEL_5;
    case 2:
      v4 = 0xD000000000000013;
      v5 = "dataCollectionGroup";
LABEL_5:
      v3 = v5 | 0x8000000000000000;
      break;
    case 3:
      v3 = 0xE700000000000000;
      v4 = 0x74736575716572;
      break;
    case 4:
      v4 = 0x657474696D627573;
      v3 = 0xE900000000000064;
      break;
    case 5:
      v4 = 0x75706E4972657375;
      v3 = 0xE900000000000074;
      break;
    case 6:
      v3 = 0xE700000000000000;
      v4 = 0x6E6F6973726576;
      break;
    default:
      break;
  }

  v6 = 0xE200000000000000;
  v7 = 25705;
  switch(a2)
  {
    case 1:
      v7 = 0xD000000000000013;
      v8 = "1";
      goto LABEL_13;
    case 2:
      v7 = 0xD000000000000013;
      v8 = "dataCollectionGroup";
LABEL_13:
      v6 = v8 | 0x8000000000000000;
      break;
    case 3:
      v6 = 0xE700000000000000;
      v7 = 0x74736575716572;
      break;
    case 4:
      v7 = 0x657474696D627573;
      v6 = 0xE900000000000064;
      break;
    case 5:
      v7 = 0x75706E4972657375;
      v6 = 0xE900000000000074;
      break;
    case 6:
      v6 = 0xE700000000000000;
      v7 = 0x6E6F6973726576;
      break;
    default:
      break;
  }

  if (v4 == v7 && v3 == v6)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_9_3(v4, a2, v7);
  }

  return v10 & 1;
}

uint64_t sub_266A93B24(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = a3(a1);
  v7 = v6;
  v8 = a3(a2);
  if (v5 == v8 && v7 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_9_3(v5, v9, v8);
  }

  return v11 & 1;
}

uint64_t sub_266A93BA8(char a1, uint64_t a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x654479627261656ELL;
  }

  else
  {
    v3 = 0x7069636974726170;
  }

  if (v2)
  {
    v4 = 0xEC00000073746E61;
  }

  else
  {
    v4 = 0xED00007365636976;
  }

  if (a2)
  {
    v5 = 0x654479627261656ELL;
  }

  else
  {
    v5 = 0x7069636974726170;
  }

  if (a2)
  {
    v6 = 0xED00007365636976;
  }

  else
  {
    v6 = 0xEC00000073746E61;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_9_3(v3, a2, v5);
  }

  return v8 & 1;
}

uint64_t sub_266A93C50(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x6449736469;
  v3 = 0xE500000000000000;
  v4 = a1;
  v5 = 0x6449736469;
  switch(v4)
  {
    case 1:
      v5 = 0x646C697562;
      break;
    case 2:
      v5 = 0x7275736F6C636E65;
      v3 = 0xEE00726F6C6F4365;
      break;
    case 3:
      v3 = 0xE600000000000000;
      v5 = 0x656C61636F6CLL;
      break;
    case 4:
      v3 = 0xE400000000000000;
      v5 = 1701667182;
      break;
    case 5:
      v5 = 0x54746375646F7270;
      v6 = 1936027769;
      goto LABEL_9;
    case 6:
      v5 = 0x6E61747369737361;
      v3 = 0xEB00000000644974;
      break;
    case 7:
      v3 = 0xE800000000000000;
      v5 = 0x6449686365657073;
      break;
    case 8:
      v3 = 0xE800000000000000;
      v5 = OUTLINED_FUNCTION_35_1();
      break;
    case 9:
      v5 = OUTLINED_FUNCTION_35_1();
      v6 = 1752392008;
LABEL_9:
      v3 = v6 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      break;
    default:
      break;
  }

  v7 = 0xE500000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x646C697562;
      break;
    case 2:
      v2 = 0x7275736F6C636E65;
      v7 = 0xEE00726F6C6F4365;
      break;
    case 3:
      v7 = 0xE600000000000000;
      v2 = 0x656C61636F6CLL;
      break;
    case 4:
      v7 = 0xE400000000000000;
      v2 = 1701667182;
      break;
    case 5:
      v2 = 0x54746375646F7270;
      v8 = 1936027769;
      goto LABEL_20;
    case 6:
      v2 = 0x6E61747369737361;
      v7 = 0xEB00000000644974;
      break;
    case 7:
      v7 = 0xE800000000000000;
      v2 = 0x6449686365657073;
      break;
    case 8:
      v7 = 0xE800000000000000;
      OUTLINED_FUNCTION_32_1();
      break;
    case 9:
      OUTLINED_FUNCTION_32_1();
      v8 = 1752392008;
LABEL_20:
      v7 = v8 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_9_3(v5, a2, v2);
  }

  return v10 & 1;
}

uint64_t sub_266A93E94(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x656E6F687069;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x656E6F687069;
  switch(v4)
  {
    case 1:
      v3 = 0xE400000000000000;
      v5 = 1684107369;
      break;
    case 2:
      v5 = 1685024873;
      v3 = 0xE400000000000000;
      break;
    case 3:
      v3 = 0xE500000000000000;
      v5 = 0x6863746177;
      break;
    case 4:
      v3 = 0xE700000000000000;
      v5 = 0x7674656C707061;
      break;
    case 5:
      v5 = 0x6363616F69647561;
      v3 = 0xEE0079726F737365;
      break;
    case 6:
      v3 = 0xE300000000000000;
      v5 = 6513005;
      break;
    case 7:
      v5 = 0x647974696C616572;
      v3 = 0xED00006563697665;
      break;
    case 8:
      v3 = 0xE700000000000000;
      v5 = 0x6E776F6E6B6E75;
      break;
    case 9:
      v5 = 0x6874666F656E6F6ELL;
      v3 = 0xEB00000000657365;
      break;
    default:
      break;
  }

  v6 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE400000000000000;
      v2 = 1684107369;
      break;
    case 2:
      v2 = 1685024873;
      v6 = 0xE400000000000000;
      break;
    case 3:
      v6 = 0xE500000000000000;
      v2 = 0x6863746177;
      break;
    case 4:
      v6 = 0xE700000000000000;
      v2 = 0x7674656C707061;
      break;
    case 5:
      v2 = 0x6363616F69647561;
      v6 = 0xEE0079726F737365;
      break;
    case 6:
      v6 = 0xE300000000000000;
      v2 = 6513005;
      break;
    case 7:
      v2 = 0x647974696C616572;
      v6 = 0xED00006563697665;
      break;
    case 8:
      v6 = 0xE700000000000000;
      v2 = 0x6E776F6E6B6E75;
      break;
    case 9:
      v2 = 0x6874666F656E6F6ELL;
      v6 = 0xEB00000000657365;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_9_3(v5, a2, v2);
  }

  return v8 & 1;
}

BOOL Request.isDirectTrigger.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(v4() + 16);

  if (v5 == 1)
  {
    v6 = (v4)(a1, a2);
    sub_266A79954(v6, v12);

    if (v13)
    {
      v7 = v14;
      __swift_project_boxed_opaque_existential_1(v12, v13);
      v8 = OUTLINED_FUNCTION_28_2();
      v9(v8, v7);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      return v11 == 1;
    }

    sub_266A6CBB4(v12, &qword_2800B1C48, &unk_266AC1310);
  }

  return 0;
}

uint64_t Request.winningDeviceName.getter()
{
  Request.winningDevices.getter();
  swift_getKeyPath();
  v1 = OUTLINED_FUNCTION_28_2();
  v2 = sub_266A949F0(v1, v0);

  return v2;
}

uint64_t RequestModel.hashValue.getter()
{
  v1 = *v0;
  sub_266ABE244();
  if (sub_266A95214(v1))
  {
    sub_266A9C670();
  }

  return sub_266ABE2A4();
}

void sub_266A9444C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11, ValueMetadata *a12, _UNKNOWN **a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  OUTLINED_FUNCTION_37_1();
  a34 = v35;
  a35 = v37;
  v38 = *(v36 + 16);
  if (v38)
  {
    v39 = v36;
    a23 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_3();
    sub_266A98BA8();
    v40 = a23;
    v41 = v39 + 32;
    do
    {
      sub_266A841B0(v41, &a14);
      a23 = v40;
      v42 = *(v40 + 16);
      if (v42 >= *(v40 + 24) >> 1)
      {
        sub_266A98BA8();
        v40 = a23;
      }

      a12 = &type metadata for ArbitrationModel;
      a13 = &protocol witness table for ArbitrationModel;
      *&a10 = swift_allocObject();
      sub_266A841B0(&a14, a10 + 16);
      *(v40 + 16) = v42 + 1;
      sub_266A6DBC4(&a10, v40 + 40 * v42 + 32);
      sub_266A8420C(&a14);
      v41 += 72;
      --v38;
    }

    while (v38);
  }

  OUTLINED_FUNCTION_38_1();
}

void sub_266A94558()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v3 = type metadata accessor for ParticipantModel(0);
  OUTLINED_FUNCTION_1_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_22_2();
  v7 = *(v2 + 16);
  if (v7)
  {
    v17 = MEMORY[0x277D84F90];
    sub_266A98BE8();
    v8 = v17;
    OUTLINED_FUNCTION_21_4();
    v10 = v2 + v9;
    v11 = *(v5 + 72);
    do
    {
      sub_266A6E9E4(v10, v0);
      v17 = v8;
      v12 = *(v8 + 16);
      if (v12 >= *(v8 + 24) >> 1)
      {
        sub_266A98BE8();
        v8 = v17;
      }

      v15 = v3;
      v16 = sub_266A81304();
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v14);
      sub_266A6E9E4(v0, boxed_opaque_existential_1);
      *(v8 + 16) = v12 + 1;
      sub_266A6DBC4(&v14, v8 + 40 * v12 + 32);
      sub_266A6A63C(v0);
      v10 += v11;
      --v7;
    }

    while (v7);
  }

  OUTLINED_FUNCTION_30();
}

void sub_266A946BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, ValueMetadata *a11, unint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_13_3();
  a24 = v25;
  a25 = v27;
  v28 = *(v26 + 16);
  if (v28)
  {
    v29 = v26;
    a13 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_3();
    sub_266A98C68();
    v30 = a13;
    v31 = (v29 + 48);
    do
    {
      v32 = *(v31 - 2);
      v33 = *(v31 - 1);
      v34 = *v31;
      a13 = v30;
      v35 = *(v30 + 16);
      if (v35 >= *(v30 + 24) >> 1)
      {
        OUTLINED_FUNCTION_33();
        sub_266A98C68();
        v30 = a13;
      }

      v31 += 3;
      a11 = &type metadata for BoostModel;
      v36 = sub_266A9CEB0();
      *&a9 = v32;
      *(&a9 + 1) = v33;
      a12 = v36;
      a10 = v34;
      *(v30 + 16) = v35 + 1;
      sub_266A6DBC4(&a9, v30 + 40 * v35 + 32);
      --v28;
    }

    while (v28);
  }

  OUTLINED_FUNCTION_14_3();
}

uint64_t sub_266A94794(uint64_t *a1)
{
  v2 = *(type metadata accessor for ParticipantModel(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_266AB5070(v3, v4, v5, v6);
    v3 = v7;
  }

  v8 = *(v3 + 16);
  v10[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v10[1] = v8;
  result = sub_266A9932C(v10);
  *a1 = v3;
  return result;
}

uint64_t sub_266A9483C(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_266AB5088(v2, v3, v4, v5);
    v2 = v6;
  }

  v7 = *(v2 + 16);
  v9[0] = v2 + 32;
  v9[1] = v7;
  result = sub_266A9945C(v9);
  *a1 = v2;
  return result;
}

double sub_266A948A8@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  (*(v4 + 112))(&v8, v3, v4);
  v5 = v9;
  v6 = v10;
  result = *&v8;
  *a2 = v8;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_266A94918(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a2, v6);
  v10[0] = v3;
  v10[1] = v2;
  v10[2] = v5;
  v10[3] = v4;
  v8 = *(v7 + 120);

  return v8(v10, v6, v7);
}

uint64_t sub_266A949AC@<X0>(uint64_t *a1@<X8>)
{
  result = DeviceName.guaranteed.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_266A949F0(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v15 = 0;
  v16 = 0xE000000000000000;
  v3 = result + 32;
  v4 = *(result + 16);
  v5 = 0x20646E61202CLL;
  if (v4 == 2)
  {
    v5 = 0x20646E6120;
  }

  v11 = v5;
  if (v4 == 2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  while (1)
  {
    v7 = 0uLL;
    v8 = v4;
    v9 = 0uLL;
    v10 = 0uLL;
    if (v2 == v4)
    {
      goto LABEL_10;
    }

    if (v2 >= v4)
    {
      break;
    }

    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      goto LABEL_19;
    }

    *&v13[0] = v2;
    sub_266A6FFD8(v3 + 40 * v2, v13 + 8);
    v7 = v13[0];
    v9 = v13[1];
    v10 = v13[2];
LABEL_10:
    v14[0] = v7;
    v14[1] = v9;
    v14[2] = v10;
    if (!v10)
    {
      return v15;
    }

    v2 = v8;
    v12 = v7;
    sub_266A6DBC4((v14 + 8), v13);
    if (v4 > 1)
    {
      if (v12 == v4 - 1)
      {
        MEMORY[0x26D5E83C0](v11, v6);
      }

      else if (v12 > 0)
      {
        MEMORY[0x26D5E83C0](8236, 0xE200000000000000);
      }
    }

    swift_getAtKeyPath();
    MEMORY[0x26D5E83C0]();

    result = __swift_destroy_boxed_opaque_existential_1Tm(v13);
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

void sub_266A94B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_13_3();
  v27 = 0;
  v28 = *(v26 + 16);
  if (v28 == 2)
  {
    v29 = 0x20646E6120;
  }

  else
  {
    v29 = 0x20646E61202CLL;
  }

  if (v28 == 2)
  {
    v30 = 0xE500000000000000;
  }

  else
  {
    v30 = 0xE600000000000000;
  }

  v31 = v26 + 40;
  while (v28 != v27)
  {
    if (v28 <= 1)
    {
    }

    else if (v28 - 1 == v27)
    {

      MEMORY[0x26D5E83C0](v29, v30);
    }

    else
    {

      if (v27)
      {
        MEMORY[0x26D5E83C0](8236, 0xE200000000000000);
      }
    }

    swift_getAtKeyPath();
    MEMORY[0x26D5E83C0](a9, a10);

    v31 += 16;
    ++v27;
  }

  OUTLINED_FUNCTION_14_3();
}

void sub_266A94EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_13_3();
  a25 = v26;
  a26 = v28;
  v29 = *(v27 + 16);
  if (v29)
  {
    v30 = MEMORY[0x277D84F90];
    v31 = v27 + 32;
    while (1)
    {
      sub_266A6FFD8(v31, &a10);
      v32 = a13;
      v33 = a14;
      __swift_project_boxed_opaque_existential_1(&a10, a13);
      v34 = (*(v33 + 24))(v32, v33);
      __swift_destroy_boxed_opaque_existential_1Tm(&a10);
      v35 = *(v34 + 16);
      v36 = *(v30 + 16);
      if (__OFADD__(v36, v35))
      {
        break;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v36 + v35 > *(v30 + 24) >> 1)
      {
        sub_266A986F0();
        v30 = v37;
      }

      if (*(v34 + 16))
      {
        OUTLINED_FUNCTION_19_3();
        if (v38 != v39)
        {
          goto LABEL_17;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CC0, &qword_266AC1290);
        swift_arrayInitWithCopy();

        if (v35)
        {
          v40 = *(v30 + 16);
          v39 = __OFADD__(v40, v35);
          v41 = v40 + v35;
          if (v39)
          {
            goto LABEL_18;
          }

          *(v30 + 16) = v41;
        }
      }

      else
      {

        if (v35)
        {
          goto LABEL_16;
        }
      }

      v31 += 40;
      if (!--v29)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
  }

  else
  {
LABEL_14:
    OUTLINED_FUNCTION_14_3();
  }
}

void Request.triggeredParticipants.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_13_3();
  a25 = v26;
  a26 = v27;
  v29 = (*(v28 + 16))();
  v30 = *(v29 + 16);
  if (v30)
  {
    v31 = MEMORY[0x277D84F90];
    v32 = v29 + 32;
    while (1)
    {
      sub_266A6FFD8(v32, &a10);
      v33 = a13;
      v34 = a14;
      __swift_project_boxed_opaque_existential_1(&a10, a13);
      v35 = (*(v34 + 24))(v33, v34);
      __swift_destroy_boxed_opaque_existential_1Tm(&a10);
      v36 = *(v35 + 16);
      v37 = *(v31 + 16);
      if (__OFADD__(v37, v36))
      {
        break;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v37 + v36 > *(v31 + 24) >> 1)
      {
        OUTLINED_FUNCTION_10_5();
        sub_266A986F0();
        v31 = v38;
      }

      if (*(v35 + 16))
      {
        OUTLINED_FUNCTION_19_3();
        if (v39 != v40)
        {
          goto LABEL_17;
        }

        v41 = OUTLINED_FUNCTION_11_4();
        __swift_instantiateConcreteTypeFromMangledNameV2(v41, v42);
        swift_arrayInitWithCopy();

        if (v36)
        {
          v43 = *(v31 + 16);
          v40 = __OFADD__(v43, v36);
          v44 = v43 + v36;
          if (v40)
          {
            goto LABEL_18;
          }

          *(v31 + 16) = v44;
        }
      }

      else
      {

        if (v36)
        {
          goto LABEL_16;
        }
      }

      v32 += 40;
      if (!--v30)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
  }

  else
  {
LABEL_14:

    OUTLINED_FUNCTION_14_3();
  }
}

uint64_t sub_266A95214(uint64_t a1)
{
  v2 = *(a1 + 16);
  v19 = MEMORY[0x277D84F90];
  v3 = OUTLINED_FUNCTION_3();
  sub_266A98B88(v3, v4, v5);
  v6 = v19;
  v7 = a1 + 32;
  if (v2)
  {
    while (1)
    {
      sub_266A6FFD8(v7, v18);
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2320, &unk_266AC35A8);
      if ((OUTLINED_FUNCTION_41_0(__src, v18, v8) & 1) == 0)
      {
        break;
      }

      memcpy(__dst, __src, sizeof(__dst));
      v19 = v6;
      OUTLINED_FUNCTION_20_4();
      if (v9)
      {
        OUTLINED_FUNCTION_30_3();
        sub_266A98B88(v12, v13, v14);
        v6 = v19;
      }

      v10 = OUTLINED_FUNCTION_36();
      memcpy(v10, v11, 0x48uLL);
      v7 += 40;
      if (!--v2)
      {
        return v6;
      }
    }

    memset(__src, 0, 72);
    return 0;
  }

  return v6;
}

void sub_266A95358()
{
  OUTLINED_FUNCTION_31();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CB0, &qword_266AC0FB8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v27[-v3];
  type metadata accessor for ParticipantModel(0);
  OUTLINED_FUNCTION_1_0();
  v6 = v5;
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v27[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v12 = &v27[-v11];
  v13 = *(v1 + 16);
  v28 = MEMORY[0x277D84F90];
  sub_266A98B68(0, v13, 0);
  v14 = v28;
  v15 = v1 + 32;
  if (v13)
  {
    while (1)
    {
      sub_266A6FFD8(v15, v27);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CC0, &qword_266AC1290);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_10_5();
      __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
      sub_266A7977C(v4, v12);
      sub_266A7977C(v12, v10);
      v28 = v14;
      v21 = *(v14 + 16);
      v20 = *(v14 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_266A98B68(v20 > 1, v21 + 1, 1);
        v14 = v28;
      }

      *(v14 + 16) = v21 + 1;
      OUTLINED_FUNCTION_21_4();
      sub_266A7977C(v10, v14 + v22 + *(v6 + 72) * v21);
      v15 += 40;
      if (!--v13)
      {
        goto LABEL_8;
      }
    }

    OUTLINED_FUNCTION_10_5();
    __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
    sub_266A6CBB4(v4, &qword_2800B1CB0, &qword_266AC0FB8);
  }

LABEL_8:
  OUTLINED_FUNCTION_30();
}

uint64_t sub_266A9559C(uint64_t a1)
{
  v2 = type metadata accessor for ParticipantModel(0);
  v101 = *(v2 - 1);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v92 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v98 = &v92 - v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v92 - v8;
  sub_266A94EF0(a1, v10, v11, v12, v13, v14, v15, v16, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104[0], v104[1], v104[2], v104[3], v104[4], v104[5]);
  v18 = v17;
  sub_266A95358();
  v20 = v19;

  v96 = v20;
  if (!v20)
  {
    return MEMORY[0x277D84F90];
  }

  v97 = v9;
  v21 = *(a1 + 16);
  v22 = MEMORY[0x277D84F90];
  if (!v21)
  {
LABEL_15:
    sub_266A70C04();
    v33 = v32;

    if (!v33)
    {
      sub_266A94558();
      v56 = v59;

      return v56;
    }

    v34 = sub_266A96DE4(v33);
    v35 = sub_266A96EBC(v34);
    v36 = *(v35 + 2);
    if (v36)
    {
      v37 = MEMORY[0x277D84F90];
      v105[0] = MEMORY[0x277D84F90];
      sub_266A98B68(0, v36, 0);
      v18 = v105[0];
      v102 = sub_266A6DA44();
      v38 = v36 - 1;
      for (i = 32; ; i += 168)
      {
        v40 = v35;
        memcpy(__dst, &v35[i], 0xA8uLL);
        *v5 = 0u;
        *(v5 + 1) = 0u;
        *(v5 + 4) = 0;
        v41 = v102;
        *(v5 + 9) = &type metadata for DeviceModel;
        *(v5 + 10) = v41;
        v42 = swift_allocObject();
        *(v5 + 6) = v42;
        memcpy((v42 + 16), __dst, 0xA8uLL);
        sub_266A6E078(__dst, v109);
        sub_266ABD6F4();
        v43 = v2[15];
        v44 = sub_266ABD7A4();
        __swift_storeEnumTagSinglePayload(&v5[v43], 1, 1, v44);
        v45 = &v5[v2[16]];
        *(v45 + 4) = 0;
        *v45 = 0u;
        *(v45 + 1) = 0u;
        *(v5 + 5) = v37;
        *(v5 + 11) = 0;
        *(v5 + 12) = 0;
        *(v5 + 13) = v37;
        *(v5 + 56) = 0;
        v5[114] = 1;
        *&v5[v2[12]] = v37;
        *&v5[v2[13]] = v37;
        v46 = &v5[v2[14]];
        *v46 = 0;
        *(v46 + 1) = 0;
        v47 = &v5[v2[17]];
        *v47 = 0;
        *(v47 + 1) = 0;
        v48 = &v5[v2[18]];
        *v48 = 0;
        *(v48 + 1) = 0;
        v5[v2[19]] = 0;
        v5[v2[20]] = 0;
        v5[v2[21]] = 0;
        v5[v2[22]] = 0;
        v49 = &v5[v2[23]];
        *v49 = 0;
        *(v49 + 1) = 0;
        v50 = &v5[v2[24]];
        *v50 = 0;
        v50[8] = 1;
        v51 = &v5[v2[25]];
        *v51 = 0;
        v51[8] = 1;
        v52 = &v5[v2[26]];
        *v52 = 0;
        *(v52 + 1) = 0;
        v53 = v18;
        v105[0] = v18;
        v55 = v18[2];
        v54 = v18[3];
        if (v55 >= v54 >> 1)
        {
          sub_266A98B68(v54 > 1, v55 + 1, 1);
          v53 = v105[0];
        }

        v53[2] = v55 + 1;
        v18 = v53;
        sub_266A7977C(v5, v53 + ((*(v101 + 80) + 32) & ~*(v101 + 80)) + *(v101 + 72) * v55);
        if (!v38)
        {
          break;
        }

        --v38;
        v37 = MEMORY[0x277D84F90];
        v35 = v40;
      }

      v57 = v97;
      v58 = v18;
    }

    else
    {

      v58 = MEMORY[0x277D84F90];
      v57 = v97;
    }

    v60 = 0;
    v61 = *(v58 + 16);
    v94 = v96 + 48;
    v95 = v61;
    v62 = MEMORY[0x277D84F90];
    v93 = v58;
LABEL_27:
    v100 = v62;
LABEL_28:
    if (v60 == v95)
    {

      __dst[0] = v96;
      sub_266A7FAB0(v62);

      sub_266A94794(__dst);

      sub_266A94558();
      v56 = v90;

      return v56;
    }

    if (v60 >= *(v58 + 16))
    {
      goto LABEL_104;
    }

    v63 = (*(v101 + 80) + 32) & ~*(v101 + 80);
    v64 = *(v101 + 72);
    v102 = v60 + 1;
    sub_266A6E9E4(v58 + v63 + v64 * v60, v57);
    v65 = 0;
    v18 = *(v96 + 16);
    v99 = v63;
    v66 = v94 + v63;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          do
          {
            if (v65 == v18)
            {
              sub_266A7977C(v57, v98);
              v62 = v100;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v108 = v62;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_266A98B68(0, *(v62 + 16) + 1, 1);
                v62 = v108;
              }

              v60 = v102;
              v89 = *(v62 + 16);
              v88 = *(v62 + 24);
              v18 = (v89 + 1);
              if (v89 >= v88 >> 1)
              {
                sub_266A98B68(v88 > 1, v89 + 1, 1);
                v62 = v108;
              }

              *(v62 + 16) = v18;
              sub_266A7977C(v98, v62 + v99 + v89 * v64);
              v58 = v93;
              goto LABEL_27;
            }

            v67 = v65;
            v65 = (v65 + 1);
            sub_266A6FFD8(v57 + 48, &v107);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1E00, &qword_266AC13A0);
          }

          while (!swift_dynamicCast());
          memcpy(v109, __dst, sizeof(v109));
          sub_266A6FFD8(v66 + v67 * v64, &v106);
          if (swift_dynamicCast())
          {
            break;
          }

          sub_266A72578(v109);
        }

        memcpy(v104, v105, sizeof(v104));
        v68 = v109[1];
        if (v109[1])
        {
          v69 = v104[1];
          if (v104[1])
          {
            v70 = v109[0];
            v71 = v104[0];
            goto LABEL_44;
          }
        }

        v68 = v109[14];
        if (v109[14])
        {
          v69 = v104[14];
          if (v104[14])
          {
            v70 = v109[13];
            v71 = v104[13];
            goto LABEL_44;
          }
        }

        v68 = v109[16];
        if (v109[16])
        {
          v69 = v104[16];
          if (v104[16])
          {
            v70 = v109[15];
            v71 = v104[15];
LABEL_44:
            if (v70 == v71 && v68 == v69)
            {
              goto LABEL_93;
            }

            goto LABEL_48;
          }
        }

        v74 = *(v109[12] + 16);
        if (v74 == *(v104[12] + 16))
        {
          break;
        }

LABEL_89:
        sub_266A72578(v104);
        sub_266A72578(v109);
        v57 = v97;
      }

      if (v74 && v109[12] != v104[12])
      {
        v75 = (v109[12] + 40);
        v76 = (v104[12] + 40);
        do
        {
          v77 = *(v75 - 1) == *(v76 - 1) && *v75 == *v76;
          if (!v77 && (sub_266ABE1C4() & 1) == 0)
          {
            goto LABEL_89;
          }

          v75 += 2;
          v76 += 2;
        }

        while (--v74);
      }

      v78 = v109[10];
      v79 = v109[11];
      v80 = v104[10];
      v81 = v104[11];
      if (v109[9])
      {
        if (!v104[9])
        {
          goto LABEL_89;
        }

        v82 = v109[8] == v104[8] && v109[9] == v104[9];
        if (!v82 && (sub_266ABE1C4() & 1) == 0)
        {
          goto LABEL_89;
        }
      }

      else if (v104[9])
      {
        goto LABEL_89;
      }

      v83 = v78 == v80 && v79 == v81;
      if (!v83 && (sub_266ABE1C4() & 1) == 0)
      {
        goto LABEL_89;
      }

      if (v109[3])
      {
        if (!v104[3])
        {
          goto LABEL_89;
        }

        v84 = v109[2] == v104[2] && v109[3] == v104[3];
        if (!v84 && (sub_266ABE1C4() & 1) == 0)
        {
          goto LABEL_89;
        }
      }

      else if (v104[3])
      {
        goto LABEL_89;
      }

      v85 = v104[7];
      if (v109[7])
      {
        v57 = v97;
        if (v104[7])
        {
          if (v109[6] == v104[6] && v109[7] == v104[7])
          {
LABEL_93:
            sub_266A72578(v104);
            sub_266A72578(v109);
LABEL_94:
            sub_266A6A63C(v57);
            v58 = v93;
            v60 = v102;
            v62 = v100;
            goto LABEL_28;
          }

LABEL_48:
          v73 = sub_266ABE1C4();
          sub_266A72578(v104);
          sub_266A72578(v109);
          if (v73)
          {
            goto LABEL_94;
          }
        }

        else
        {
          sub_266A72578(v104);
          sub_266A72578(v109);
        }
      }

      else
      {
        sub_266A72578(v104);
        sub_266A72578(v109);
        v57 = v97;
        if (!v85)
        {
          goto LABEL_94;
        }
      }
    }
  }

  v23 = a1 + 32;
  while (1)
  {
    sub_266A6FFD8(v23, __dst);
    v18 = __dst[3];
    v24 = __dst[4];
    __swift_project_boxed_opaque_existential_1(__dst, __dst[3]);
    v25 = (*(v24 + 16))(v18, v24);
    v26 = *(v25 + 16);
    v27 = *(v22 + 16);
    if (__OFADD__(v27, v26))
    {
      break;
    }

    v18 = v25;
    if (!swift_isUniquelyReferenced_nonNull_native() || v27 + v26 > *(v22 + 24) >> 1)
    {
      sub_266A986F0();
      v22 = v28;
    }

    if (v18[2])
    {
      if ((*(v22 + 24) >> 1) - *(v22 + 16) < v26)
      {
        goto LABEL_105;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1E00, &qword_266AC13A0);
      swift_arrayInitWithCopy();

      if (v26)
      {
        v29 = *(v22 + 16);
        v30 = __OFADD__(v29, v26);
        v31 = v29 + v26;
        if (v30)
        {
          goto LABEL_106;
        }

        *(v22 + 16) = v31;
      }
    }

    else
    {

      if (v26)
      {
        goto LABEL_103;
      }
    }

    __swift_destroy_boxed_opaque_existential_1Tm(__dst);
    v23 += 40;
    if (!--v21)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  __break(1u);

  __break(1u);
  return result;
}

void Request.triggeredAndNearbyParticipants.getter()
{
  OUTLINED_FUNCTION_31();
  v1 = v0;
  v3 = v2;
  v100 = type metadata accessor for ParticipantModel(0);
  OUTLINED_FUNCTION_1_0();
  v98 = v4;
  v6 = MEMORY[0x28223BE20](v5);
  v96 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v90 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v90 - v11;
  (*(v1 + 32))(v3, v1);
  sub_266A95358();
  v14 = v13;

  v15 = MEMORY[0x277D84F90];
  v95 = v14;
  if (!v14)
  {
LABEL_100:
    OUTLINED_FUNCTION_30();
    return;
  }

  v16 = (*(v1 + 16))(v3, v1);
  v17 = *(v16 + 16);
  if (!v17)
  {
LABEL_15:

    sub_266A70C04();
    v32 = v31;

    v33 = MEMORY[0x277D84F90];
    if (!v32)
    {
      sub_266A94558();

      goto LABEL_100;
    }

    v34 = sub_266A96DE4(v32);
    v35 = sub_266A96EBC(v34);
    v23 = *(v35 + 2);
    if (v23)
    {
      v102[0] = v33;
      sub_266A98B68(0, v23, 0);
      v36 = 0;
      v37 = v102[0];
      v99 = v23 - 1;
      for (i = 32; ; i += 168)
      {
        if (v36 >= *(v35 + 2))
        {
          goto LABEL_104;
        }

        memcpy(v107, &v35[i], 0xA8uLL);
        *v12 = 0u;
        *(v12 + 1) = 0u;
        *(v12 + 4) = 0;
        *(v12 + 9) = &type metadata for DeviceModel;
        *(v12 + 10) = sub_266A6DA44();
        v39 = swift_allocObject();
        *(v12 + 6) = v39;
        memcpy((v39 + 16), v107, 0xA8uLL);
        v40 = v100;
        sub_266A6E078(v107, v106);
        sub_266A6E078(v107, v106);
        sub_266ABD6F4();
        v41 = v40[15];
        v42 = sub_266ABD7A4();
        __swift_storeEnumTagSinglePayload(&v12[v41], 1, 1, v42);
        v43 = &v12[v40[16]];
        *(v43 + 4) = 0;
        *v43 = 0u;
        *(v43 + 1) = 0u;
        sub_266A72578(v107);
        *(v12 + 5) = v33;
        *(v12 + 11) = 0;
        *(v12 + 12) = 0;
        *(v12 + 13) = v33;
        *(v12 + 56) = 0;
        v12[114] = 1;
        *&v12[v40[12]] = v33;
        *&v12[v40[13]] = v33;
        OUTLINED_FUNCTION_24_3(v40[14]);
        OUTLINED_FUNCTION_24_3(v40[17]);
        OUTLINED_FUNCTION_24_3(v40[18]);
        v12[v40[19]] = 0;
        v12[v40[20]] = 0;
        v12[v40[21]] = 0;
        v12[v40[22]] = 0;
        OUTLINED_FUNCTION_24_3(v40[23]);
        v44 = &v12[v40[24]];
        *v44 = 0;
        v44[8] = v45;
        v46 = &v12[v40[25]];
        *v46 = 0;
        v46[8] = v45;
        OUTLINED_FUNCTION_24_3(v40[26]);
        v102[0] = v37;
        v48 = *(v37 + 16);
        v47 = *(v37 + 24);
        v23 = (v48 + 1);
        if (v48 >= v47 >> 1)
        {
          OUTLINED_FUNCTION_14(v47);
          OUTLINED_FUNCTION_33();
          sub_266A98B68(v51, v52, v53);
          v37 = v102[0];
        }

        *(v37 + 16) = v23;
        OUTLINED_FUNCTION_21_4();
        sub_266A7977C(v12, v37 + v49 + *(v50 + 72) * v48);
        if (v99 == v36)
        {
          break;
        }

        ++v36;
        v33 = MEMORY[0x277D84F90];
      }
    }

    else
    {

      v37 = MEMORY[0x277D84F90];
    }

    v54 = 0;
    v55 = *(v37 + 16);
    v93 = v95 + 48;
    v94 = v55;
    v56 = MEMORY[0x277D84F90];
    v92 = v37;
LABEL_27:
    v57 = v54;
    if (v54 == v94)
    {

      v107[0] = v95;
      sub_266A7FAB0(v56);

      sub_266A94794(v107);

      sub_266A94558();

      goto LABEL_100;
    }

    if (v54 >= *(v37 + 16))
    {
      goto LABEL_103;
    }

    v58 = (*(v98 + 80) + 32) & ~*(v98 + 80);
    v59 = v37;
    v60 = *(v98 + 72);
    v99 = v56;
    v100 = v57 + 1;
    sub_266A6E9E4(v59 + v58 + v60 * v57, v10);
    v61 = 0;
    v23 = *(v95 + 16);
    v97 = v58;
    v62 = v93 + v58;
    while (1)
    {
      while (1)
      {
        do
        {
          if (v61 == v23)
          {
            sub_266A7977C(v10, v96);
            v56 = v99;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v105 = v56;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_266A98B68(0, *(v56 + 16) + 1, 1);
              v56 = v105;
            }

            v86 = *(v56 + 16);
            v85 = *(v56 + 24);
            v23 = (v86 + 1);
            if (v86 >= v85 >> 1)
            {
              OUTLINED_FUNCTION_14(v85);
              OUTLINED_FUNCTION_33();
              sub_266A98B68(v87, v88, v89);
              v56 = v105;
            }

            *(v56 + 16) = v23;
            sub_266A7977C(v96, v56 + v97 + v86 * v60);
            v37 = v92;
            v54 = v100;
            goto LABEL_27;
          }

          v63 = v61++;
          sub_266A6FFD8((v10 + 48), &v104);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1E00, &qword_266AC13A0);
        }

        while (!swift_dynamicCast());
        memcpy(v106, v107, sizeof(v106));
        sub_266A6FFD8(v62 + v63 * v60, &v103);
        if (swift_dynamicCast())
        {
          break;
        }

LABEL_91:
        sub_266A72578(v106);
      }

      memcpy(v101, v102, sizeof(v101));
      v64 = v106[1];
      if (v106[1])
      {
        v65 = v101[1];
        if (v101[1])
        {
          v66 = v106[0];
          v67 = v101[0];
          goto LABEL_42;
        }
      }

      v64 = v106[14];
      if (v106[14])
      {
        v65 = v101[14];
        if (v101[14])
        {
          v66 = v106[13];
          v67 = v101[13];
          goto LABEL_42;
        }
      }

      v64 = v106[16];
      if (v106[16])
      {
        v65 = v101[16];
        if (v101[16])
        {
          v66 = v106[15];
          v67 = v101[15];
LABEL_42:
          if (v66 == v67 && v64 == v65)
          {
            goto LABEL_97;
          }

          goto LABEL_46;
        }
      }

      v70 = *(v106[12] + 16);
      if (v70 == *(v101[12] + 16))
      {
        if (v70 && v106[12] != v101[12])
        {
          v71 = (v106[12] + 40);
          v72 = (v101[12] + 40);
          do
          {
            v73 = *(v71 - 1) == *(v72 - 1) && *v71 == *v72;
            if (!v73 && (sub_266ABE1C4() & 1) == 0)
            {
              goto LABEL_87;
            }

            v71 += 2;
            v72 += 2;
          }

          while (--v70);
        }

        v74 = v106[10];
        v75 = v106[11];
        v76 = v101[10];
        v77 = v101[11];
        if (v106[9])
        {
          if (!v101[9])
          {
            goto LABEL_87;
          }

          if (v106[8] != v101[8] || v106[9] != v101[9])
          {
            v91 = v101[11];
            v79 = sub_266ABE1C4();
            v77 = v91;
            if ((v79 & 1) == 0)
            {
              goto LABEL_87;
            }
          }
        }

        else if (v101[9])
        {
          goto LABEL_87;
        }

        v80 = v74 == v76 && v75 == v77;
        if (!v80 && (sub_266ABE1C4() & 1) == 0)
        {
          goto LABEL_87;
        }

        if (v106[3])
        {
          if (!v101[3])
          {
            goto LABEL_87;
          }

          v81 = v106[2] == v101[2] && v106[3] == v101[3];
          if (!v81 && (sub_266ABE1C4() & 1) == 0)
          {
            goto LABEL_87;
          }
        }

        else if (v101[3])
        {
          goto LABEL_87;
        }

        v82 = v101[7];
        if (v106[7])
        {
          if (!v101[7])
          {
            sub_266A72578(v101);
            goto LABEL_91;
          }

          if (v106[6] == v101[6] && v106[7] == v101[7])
          {
LABEL_97:
            sub_266A72578(v101);
            sub_266A72578(v106);
LABEL_98:
            sub_266A6A63C(v10);
            v37 = v92;
            v56 = v99;
            v54 = v100;
            goto LABEL_27;
          }

LABEL_46:
          v69 = sub_266ABE1C4();
          sub_266A72578(v101);
          sub_266A72578(v106);
          if (v69)
          {
            goto LABEL_98;
          }
        }

        else
        {
          sub_266A72578(v101);
          sub_266A72578(v106);
          if (!v82)
          {
            goto LABEL_98;
          }
        }
      }

      else
      {
LABEL_87:
        sub_266A72578(v101);
        sub_266A72578(v106);
      }
    }
  }

  v99 = v16;
  v18 = v16 + 32;
  while (1)
  {
    sub_266A6FFD8(v18, v107);
    v20 = v107[3];
    v19 = v107[4];
    __swift_project_boxed_opaque_existential_1(v107, v107[3]);
    v21 = (*(v19 + 16))(v20, v19);
    v22 = *(v21 + 16);
    v23 = *(v15 + 16);
    if (__OFADD__(v23, v22))
    {
      break;
    }

    v24 = v21;
    if (!swift_isUniquelyReferenced_nonNull_native() || &v23[v22] > *(v15 + 24) >> 1)
    {
      sub_266A986F0();
      v15 = v25;
    }

    if (*(v24 + 16))
    {
      OUTLINED_FUNCTION_19_3();
      if (v27 != v28)
      {
        goto LABEL_105;
      }

      v23 = (v15 + 40 * v26);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1E00, &qword_266AC13A0);
      swift_arrayInitWithCopy();

      if (v22)
      {
        v29 = *(v15 + 16);
        v28 = __OFADD__(v29, v22);
        v30 = v29 + v22;
        if (v28)
        {
          goto LABEL_106;
        }

        *(v15 + 16) = v30;
      }
    }

    else
    {

      if (v22)
      {
        goto LABEL_102;
      }
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v107);
    v18 += 40;
    if (!--v17)
    {
      goto LABEL_15;
    }
  }

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

  __break(1u);
}

BOOL Request.multipleDevicesResponded.getter(uint64_t a1, uint64_t a2)
{
  v2 = *((*(a2 + 16))(a1) + 16);

  return v2 > 1;
}

uint64_t Request.isClosestParticipant(participant:)(void *a1, uint64_t a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5 = OUTLINED_FUNCTION_16_0();
  v7 = v6(v5);
  if ((v7 & 0x100) != 0)
  {
    return 0;
  }

  v8 = v7;
  result = (*(a3 + 32))(a2, a3);
  v10 = result;
  v11 = 0;
  v12 = *(result + 16);
  for (i = result + 32; ; i += 40)
  {
    if (v12 == v11)
    {

      return 1;
    }

    if (v11 >= *(v10 + 16))
    {
      break;
    }

    v14 = sub_266A6FFD8(i, v40);
    v22 = OUTLINED_FUNCTION_27_3(v14, v15, v16, v17, v18, v19, v20, v21, v38, v40[0]);
    __swift_project_boxed_opaque_existential_1(v22, v23);
    v24 = OUTLINED_FUNCTION_18_3();
    v26 = v25(v24);
    if ((v26 & 0x100) != 0 || v8 < v26 || (v34 = OUTLINED_FUNCTION_27_3(v26, v27, v28, v29, v30, v31, v32, v33, v39, v40[0]), __swift_project_boxed_opaque_existential_1(v34, v35), v36 = OUTLINED_FUNCTION_18_3(), (v37(v36) & 0x100) != 0))
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v40);
      return 0;
    }

    result = __swift_destroy_boxed_opaque_existential_1Tm(v40);
    ++v11;
  }

  __break(1u);
  return result;
}

void sub_266A96B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_266A94EF0(a3, a2, a3, a4, a5, a6, a7, a8, v21, v22[0], v22[1], v22[2], v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, vars0, vars8);
  v11 = v10;
  v12 = *(v10 + 16);
  if (v12)
  {
    v13 = 0;
    v14 = v10 + 32;
    while (v13 < *(v11 + 16))
    {
      sub_266A6FFD8(v14, v22);
      v15 = v23;
      v16 = v24;
      __swift_project_boxed_opaque_existential_1(v22, v23);
      v17 = (*(v16 + 208))(v15, v16);
      if (v18)
      {
        if (v17 == a1 && v18 == a2)
        {

          __swift_destroy_boxed_opaque_existential_1Tm(v22);
LABEL_15:

          return;
        }

        v20 = sub_266ABE1C4();

        __swift_destroy_boxed_opaque_existential_1Tm(v22);
        if (v20)
        {
          goto LABEL_15;
        }
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v22);
      }

      ++v13;
      v14 += 40;
      if (v12 == v13)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:
  }
}

Swift::Bool __swiftcall Request.hasParticipantId(id:)(Swift::String id)
{
  OUTLINED_FUNCTION_13_3();
  v23 = v1;
  v24 = v2;
  v4 = v3;
  v6 = v5;
  v9 = (*(v7 + 32))(v8, v7);
  v10 = v9;
  v11 = *(v9 + 16);
  if (v11)
  {
    v12 = 0;
    v13 = v9 + 32;
    while (v12 < *(v10 + 16))
    {
      sub_266A6FFD8(v13, &v21);
      __swift_project_boxed_opaque_existential_1(&v21, v22);
      v14 = OUTLINED_FUNCTION_5_3();
      v16 = v15(v14);
      if (v17)
      {
        if (v16 == v6 && v17 == v4)
        {

          __swift_destroy_boxed_opaque_existential_1Tm(&v21);
          goto LABEL_15;
        }

        v19 = sub_266ABE1C4();

        LOBYTE(v9) = __swift_destroy_boxed_opaque_existential_1Tm(&v21);
        if (v19)
        {
          goto LABEL_15;
        }
      }

      else
      {
        LOBYTE(v9) = __swift_destroy_boxed_opaque_existential_1Tm(&v21);
      }

      ++v12;
      v13 += 40;
      if (v11 == v12)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:

    OUTLINED_FUNCTION_14_3();
  }

  return v9;
}

uint64_t sub_266A96DE4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_266A9D110();
  result = MEMORY[0x26D5E85C0](v2, &type metadata for DeviceModel, v3);
  v5 = 0;
  v10 = result;
  v6 = *(a1 + 16);
  for (i = 32; ; i += 168)
  {
    if (v6 == v5)
    {

      return v10;
    }

    if (v5 >= *(a1 + 16))
    {
      break;
    }

    memcpy(__dst, (a1 + i), sizeof(__dst));
    ++v5;
    sub_266A6E078(__dst, v9);
    sub_266A9BAE4(v8, __dst);
    memcpy(v9, v8, sizeof(v9));
    result = sub_266A72578(v9);
  }

  __break(1u);
  return result;
}

char *sub_266A96EBC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_266A988E0(*(a1 + 16), 0);
  v4 = sub_266A9CF04(&v6, v3 + 32, v2, a1);
  sub_266A9D108(v6);
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t sub_266A96F4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 112);
  v3 = *(a2 + 112);
  if (v2 == v3)
  {
    if (v2 == 2)
    {
      sub_266A9D098(a1, &v22);
      v5 = v25;
      if (v25)
      {
        v6 = v26;
        __swift_project_boxed_opaque_existential_1(&v22, v25);
        LOBYTE(v5) = (*(v6 + 48))(v5, v6);
        __swift_destroy_boxed_opaque_existential_1Tm(&v22);
      }

      else
      {
        sub_266A6CBB4(&v22, &qword_2800B1CC8, &unk_266AC0FD0);
      }

      sub_266A9D098(a2, &v22);
      v13 = v25;
      if (v25)
      {
        v14 = v26;
        __swift_project_boxed_opaque_existential_1(&v22, v25);
        v15 = (*(v14 + 48))(v13, v14);
        __swift_destroy_boxed_opaque_existential_1Tm(&v22);
      }

      else
      {
        sub_266A6CBB4(&v22, &qword_2800B1CC8, &unk_266AC0FD0);
        v15 = 0;
      }

      v12 = v15 >= v5;
LABEL_21:
      v7 = !v12;
    }

    else
    {
      v8 = *(a1 + 72);
      v9 = *(a1 + 80);
      __swift_project_boxed_opaque_existential_1((a1 + 48), v8);
      (*(v9 + 112))(&v22, v8, v9);
      v10 = v23;
      if (v23)
      {
        v11 = v22;
      }

      else
      {
        v11 = v24;
      }

      v16 = *(a2 + 72);
      v17 = *(a2 + 80);
      __swift_project_boxed_opaque_existential_1((a2 + 48), v16);
      (*(v17 + 112))(&v27, v16, v17);
      v18 = v28;
      if (v28)
      {
        v19 = v27;
      }

      else
      {
        v19 = v29;
      }

      if (v11 == v19 && v10 == v18)
      {
        v7 = 0;
      }

      else
      {
        v7 = sub_266ABE1C4();
      }
    }
  }

  else
  {
    switch(*(a1 + 112))
    {
      case 1:
        if (*(a2 + 112))
        {
          goto LABEL_7;
        }

        goto LABEL_12;
      case 2:
        v12 = v3 >= 2;
        goto LABEL_21;
      case 3:
        if (v3 >= 3)
        {
          goto LABEL_7;
        }

LABEL_12:
        v7 = 1;
        break;
      default:
LABEL_7:
        v7 = 0;
        break;
    }
  }

  return v7 & 1;
}

void Request.userRequestedText.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_13_3();
  a25 = v27;
  a26 = v28;
  v30 = v29;
  v32 = v31;
  v33 = Request.winningParticipants.getter(v31, v29);
  v34 = *(v33 + 16);
  if (v34)
  {
    v64 = v26;
    v35 = v33 + 32;
    v36 = MEMORY[0x277D84F90];
    while (1)
    {
      sub_266A6FFD8(v35, &a10);
      v37 = a13;
      v38 = a14;
      v39 = __swift_project_boxed_opaque_existential_1(&a10, a13);
      v40 = (*(v38 + 112))(v37, v38);
      if (v41)
      {
        v42 = v40;
        OUTLINED_FUNCTION_25_1();
        if (v43)
        {
          __swift_destroy_boxed_opaque_existential_1Tm(&a10);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_21_0();
            sub_266A6CFCC();
            v36 = v47;
          }

          v45 = *(v36 + 16);
          v44 = *(v36 + 24);
          if (v45 >= v44 >> 1)
          {
            OUTLINED_FUNCTION_14(v44);
            sub_266A6CFCC();
            v36 = v48;
          }

          *(v36 + 16) = v45 + 1;
          v46 = v36 + 16 * v45;
          *(v46 + 32) = v42;
          *(v46 + 40) = v39;
          goto LABEL_12;
        }
      }

      __swift_destroy_boxed_opaque_existential_1Tm(&a10);
LABEL_12:
      v35 += 40;
      if (!--v34)
      {

        v26 = v64;
        goto LABEL_15;
      }
    }
  }

  v36 = MEMORY[0x277D84F90];
LABEL_15:
  if (*(v36 + 16))
  {
    goto LABEL_31;
  }

  v49 = (*(v30 + 32))(v32, v30);
  v50 = *(v49 + 16);
  if (v50)
  {
    v51 = v49 + 32;
    v52 = MEMORY[0x277D84F90];
    while (1)
    {
      sub_266A6FFD8(v51, &a10);
      __swift_project_boxed_opaque_existential_1(&a10, a13);
      v53 = OUTLINED_FUNCTION_16_0();
      v55 = v54(v53);
      if (v56)
      {
        v57 = v55;
        OUTLINED_FUNCTION_25_1();
        if (v58)
        {
          __swift_destroy_boxed_opaque_existential_1Tm(&a10);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_21_0();
            sub_266A6CFCC();
            v52 = v62;
          }

          v60 = *(v52 + 16);
          v59 = *(v52 + 24);
          if (v60 >= v59 >> 1)
          {
            OUTLINED_FUNCTION_14(v59);
            sub_266A6CFCC();
            v52 = v63;
          }

          *(v52 + 16) = v60 + 1;
          v61 = v52 + 16 * v60;
          *(v61 + 32) = v57;
          *(v61 + 40) = v26;
          goto LABEL_27;
        }
      }

      __swift_destroy_boxed_opaque_existential_1Tm(&a10);
LABEL_27:
      v51 += 40;
      if (!--v50)
      {

        goto LABEL_30;
      }
    }
  }

  v52 = MEMORY[0x277D84F90];
LABEL_30:
  if (*(v52 + 16))
  {
LABEL_31:
  }

  OUTLINED_FUNCTION_14_3();
}

uint64_t RequestModel.id.getter()
{
  v9[0] = *v0;

  sub_266A9483C(v9);
  v1 = *(v9[0] + 16);
  if (v1)
  {
    v2 = v9[0] + 32;
    do
    {
      sub_266A6FFD8(v2, v9);
      __swift_project_boxed_opaque_existential_1(v9, v9[3]);
      v3 = OUTLINED_FUNCTION_5_3();
      v5 = v4(v3);
      v7 = v6;

      MEMORY[0x26D5E83C0](v5, v7);

      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      v2 += 40;
      --v1;
    }

    while (v1);
  }

  return 0;
}

uint64_t sub_266A97738(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = (*(v4 + 8))(v3, v4);
  v7 = v6;
  v8 = a2[3];
  v9 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v8);
  if (v5 == (*(v9 + 8))(v8, v9) && v7 == v10)
  {

    v13 = 1;
  }

  else
  {
    v12 = sub_266ABE1C4();

    v13 = v12 ^ 1;
  }

  return v13 & 1;
}

uint64_t RequestModel.arbitrations.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

BOOL sub_266A979B8(uint64_t a1, uint64_t a2)
{
  sub_266ABDFD4();
  OUTLINED_FUNCTION_28_2();

  return v2 != 0;
}

BOOL sub_266A97A3C@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_266A979B8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_266A97A70(uint64_t a1@<X8>)
{
  strcpy(a1, "arbitrations");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

BOOL sub_266A97AB4@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266A979B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_266A97AEC(uint64_t a1)
{
  v2 = sub_266A9C6EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266A97B28(uint64_t a1)
{
  v2 = sub_266A9C6EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RequestModel.encode(to:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2260, &qword_266AC32B8);
  OUTLINED_FUNCTION_1_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = v13 - v6;
  v8 = sub_266A95214(*v1);
  if (v8)
  {
    v9 = v8;
    v10 = OUTLINED_FUNCTION_11_4();
    __swift_project_boxed_opaque_existential_1(v10, v11);
    sub_266A9C6EC();
    sub_266ABE2C4();
    v13[1] = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2248, &qword_266AC32B0);
    sub_266A9C794(&qword_2800B2268, sub_266A9C80C, MEMORY[0x277D83948]);
    sub_266ABE154();
    (*(v4 + 8))(v7, v2);
  }

  else
  {
    sub_266A829DC();
    swift_allocError();
    return swift_willThrow();
  }
}

uint64_t static RequestModel.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = sub_266A95214(*a1);
  v4 = sub_266A95214(v2);
  if (v3)
  {
    if (v4)
    {
      v5 = sub_266A839A8(v3, v4);
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    if (!v4)
    {
      v5 = 1;
      return v5 & 1;
    }

    v5 = 0;
  }

  return v5 & 1;
}

uint64_t RequestModel.hash(into:)()
{
  result = sub_266A95214(*v0);
  if (result)
  {
    OUTLINED_FUNCTION_28_2();
    sub_266A9C670();
  }

  return result;
}

uint64_t sub_266A98018(uint64_t a1)
{
  v2 = *v1;
  sub_266ABE244();
  if (sub_266A95214(v2))
  {
    sub_266A9C670();
  }

  return sub_266ABE2A4();
}

void sub_266A980BC()
{
  OUTLINED_FUNCTION_12_4();
  if (v4)
  {
    OUTLINED_FUNCTION_2_5();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_7_6();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_6();
    }
  }

  OUTLINED_FUNCTION_8_6();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1DF0, &qword_266AC6360);
    v7 = swift_allocObject();
    v8 = _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_29_3((v8 - 32) / 8);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v7 != v0 || v0 + 32 + 8 * v2 <= (v7 + 32))
    {
      memmove((v7 + 32), (v0 + 32), 8 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1DD8, &unk_266AC1300);
    swift_arrayInitWithCopy();
  }
}

void sub_266A981C8()
{
  OUTLINED_FUNCTION_12_4();
  if (v3)
  {
    OUTLINED_FUNCTION_2_5();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_7_6();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_6();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 2);
  if (v4 <= v7)
  {
    v8 = *(v0 + 2);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B22E0, &unk_266AC3570);
    v9 = swift_allocObject();
    v10 = _swift_stdlib_malloc_size(v9);
    *(v9 + 2) = v7;
    *(v9 + 3) = 2 * ((v10 - 32) / 16);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v7] <= v11)
    {
      memmove(v11, v12, 16 * v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v11, v12, 16 * v7);
  }
}

void sub_266A982D4()
{
  OUTLINED_FUNCTION_12_4();
  if (v4)
  {
    OUTLINED_FUNCTION_2_5();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_7_6();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_6();
    }
  }

  OUTLINED_FUNCTION_8_6();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B22B0, &qword_266AC3530);
    v7 = swift_allocObject();
    v8 = _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_29_3((v8 - 32) / 72);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = v7 + 32;
  v10 = v0 + 32;
  if (v1)
  {
    if (v7 != v0 || &v10[72 * v2] <= v9)
    {
      memmove(v9, v10, 72 * v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void *sub_266A983C8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1DD0, &unk_266AC6340);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[9 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 72 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_266A98500()
{
  OUTLINED_FUNCTION_12_4();
  if (v3)
  {
    OUTLINED_FUNCTION_2_5();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_7_6();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_6();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 16);
  v8 = sub_266A987E4(v7, v4);
  type metadata accessor for ParticipantModel(0);
  OUTLINED_FUNCTION_21_4();
  if (v1)
  {
    sub_266A98964(v0 + v9, v7, v8 + v9);
    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_266A985D0()
{
  OUTLINED_FUNCTION_12_4();
  if (v3)
  {
    OUTLINED_FUNCTION_2_5();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_7_6();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_6();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 2);
  if (v4 <= v7)
  {
    v8 = *(v0 + 2);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2308, &qword_266AC3590);
    v9 = swift_allocObject();
    v10 = _swift_stdlib_malloc_size(v9);
    *(v9 + 2) = v7;
    *(v9 + 3) = 2 * ((v10 - 32) / 48);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[48 * v7] <= v11)
    {
      memmove(v11, v12, 48 * v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_266A986F0()
{
  OUTLINED_FUNCTION_34_1();
  if (v7)
  {
    OUTLINED_FUNCTION_2_5();
    if (v9 != v10)
    {
      OUTLINED_FUNCTION_7_6();
      if (v9)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_6();
    }
  }

  else
  {
    v8 = v4;
  }

  v11 = *(v0 + 2);
  if (v8 <= v11)
  {
    v12 = *(v0 + 2);
  }

  else
  {
    v12 = v8;
  }

  if (v12)
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
    v14 = OUTLINED_FUNCTION_40_1(v13);
    v15 = _swift_stdlib_malloc_size(v14);
    OUTLINED_FUNCTION_31_2(v15);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  if (v3)
  {
    if (v14 != v0 || &v0[40 * v11 + 32] <= v14 + 32)
    {
      v17 = OUTLINED_FUNCTION_11_4();
      memmove(v17, v18, v19);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(v2, v1);
    OUTLINED_FUNCTION_11_4();
    swift_arrayInitWithCopy();
  }
}

void *sub_266A987E4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CD8, &unk_266AC0FE0);
  v4 = *(type metadata accessor for ParticipantModel(0) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_266A988E0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B22D0, &qword_266AC3558);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 168);
  return v4;
}

uint64_t sub_266A98964(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = type metadata accessor for ParticipantModel(0), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    type metadata accessor for ParticipantModel(0);

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void sub_266A98A38(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!isUniquelyReferenced_nonNull_native || a1 > *(v3 + 24) >> 1)
  {
    sub_266A986F0();
    *v1 = v5;
  }
}

uint64_t sub_266A98AD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    result = a3();
    *v3 = result;
  }

  return result;
}

char *sub_266A98B88(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_266A98E9C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_266A98CA8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_266A98FFC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_266A98CC8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_266A99104(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_266A98CE8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_266A99218(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_266A98D08()
{
  OUTLINED_FUNCTION_12_4();
  if (v3)
  {
    OUTLINED_FUNCTION_2_5();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_7_6();
      if (v5)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_6();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 16);
  if (v4 <= v7)
  {
    v8 = *(v0 + 16);
  }

  else
  {
    v8 = v4;
  }

  if (!v8)
  {
    v12 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CD8, &unk_266AC0FE0);
  v9 = *(type metadata accessor for ParticipantModel(0) - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  v13 = _swift_stdlib_malloc_size(v12);
  if (!v10)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v13 - v11 == 0x8000000000000000 && v10 == -1)
  {
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_29_3((v13 - v11) / v10);
LABEL_18:
  type metadata accessor for ParticipantModel(0);
  OUTLINED_FUNCTION_21_4();
  if (v1)
  {
    sub_266A98964(v0 + v15, v7, v12 + v15);
    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

char *sub_266A98E9C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B22B0, &qword_266AC3530);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[72 * v8] <= v12)
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_266A98FFC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B22A8, &qword_266AC3528);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_266A99104(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B22A0, &qword_266AC3520);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 160);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[160 * v8] <= v12)
    {
      memmove(v12, v13, 160 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_266A99218(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2298, &qword_266AC3518);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[96 * v8] <= v12)
    {
      memmove(v12, v13, 96 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_266A9932C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_266ABE184();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for ParticipantModel(0);
        v6 = sub_266ABDC74();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for ParticipantModel(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_266A99B8C(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_266A99560(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_266A9945C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_266ABE184();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2320, &unk_266AC35A8);
        v6 = sub_266ABDC74();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_266A9A998(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_266A999CC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_266A99560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for ParticipantModel(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v65 = &v46 - v13;
  result = MEMORY[0x28223BE20](v12);
  v17 = &v46 - v16;
  v48 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v55 = -v19;
    v56 = v18;
    v21 = a1 - a3;
    v47 = v19;
    v22 = v18 + v19 * a3;
    v53 = v8;
    v54 = v11;
    while (2)
    {
      v51 = v20;
      v52 = a3;
      v49 = v22;
      v50 = v21;
      v23 = v65;
      do
      {
        sub_266A6E9E4(v22, v17);
        sub_266A6E9E4(v20, v23);
        v24 = v17[112];
        v25 = *(v23 + 112);
        if (v24 != v25)
        {
          switch(v17[112])
          {
            case 1:
              v29 = v25 == 0;
              goto LABEL_32;
            case 2:
              v29 = v25 < 2;
              goto LABEL_32;
            case 3:
              sub_266A6A63C(v23);
              result = sub_266A6A63C(v17);
              if (v25 >= 3)
              {
                goto LABEL_36;
              }

              goto LABEL_33;
            default:
              sub_266A6A63C(v23);
              result = sub_266A6A63C(v17);
              goto LABEL_36;
          }
        }

        if (v24 == 2)
        {
          sub_266A9D098(v17, &v57);
          v26 = v60;
          if (v60)
          {
            v27 = v61;
            __swift_project_boxed_opaque_existential_1(&v57, v60);
            v28 = (*(v27 + 48))(v26, v27);
            v23 = v65;
            LOBYTE(v26) = v28;
            __swift_destroy_boxed_opaque_existential_1Tm(&v57);
          }

          else
          {
            sub_266A6CBB4(&v57, &qword_2800B1CC8, &unk_266AC0FD0);
          }

          sub_266A9D098(v23, &v57);
          v34 = v60;
          if (v60)
          {
            v35 = v61;
            __swift_project_boxed_opaque_existential_1(&v57, v60);
            v36 = *(v35 + 48);
            v37 = v35;
            v11 = v54;
            v38 = v36(v34, v37);
            __swift_destroy_boxed_opaque_existential_1Tm(&v57);
          }

          else
          {
            sub_266A6CBB4(&v57, &qword_2800B1CC8, &unk_266AC0FD0);
            v38 = 0;
          }

          v29 = v38 < v26;
        }

        else
        {
          v30 = *(v17 + 9);
          v31 = *(v17 + 10);
          __swift_project_boxed_opaque_existential_1(v17 + 6, v30);
          (*(v31 + 112))(&v57, v30, v31);
          v32 = v58;
          if (v58)
          {
            v33 = v57;
          }

          else
          {
            v33 = v59;
          }

          v39 = v65;

          v40 = v39[9];
          v41 = v39[10];
          __swift_project_boxed_opaque_existential_1(v39 + 6, v40);
          (*(v41 + 112))(&v62, v40, v41);
          v42 = v63;
          if (v63)
          {
            v43 = v62;
          }

          else
          {
            v43 = v64;
          }

          v44 = v33 == v43 && v32 == v42;
          v29 = v44 ? 0 : sub_266ABE1C4();
          v11 = v54;
        }

        v23 = v65;
LABEL_32:
        sub_266A6A63C(v23);
        result = sub_266A6A63C(v17);
        if ((v29 & 1) == 0)
        {
          break;
        }

LABEL_33:
        if (!v56)
        {
          __break(1u);
          return result;
        }

        sub_266A7977C(v22, v11);
        swift_arrayInitWithTakeFrontToBack();
        result = sub_266A7977C(v11, v20);
        v20 += v55;
        v22 += v55;
      }

      while (!__CFADD__(v21++, 1));
LABEL_36:
      a3 = v52 + 1;
      v20 = v51 + v47;
      v21 = v50 - 1;
      v22 = v49 + v47;
      if (v52 + 1 != v48)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_266A999CC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 40 * a3;
    v6 = result - a3;
    while (2)
    {
      v28 = a3;
      v20 = v6;
      v21 = v5;
      do
      {
        sub_266A6FFD8(v5, &v25);
        sub_266A6FFD8(v5 - 40, v22);
        v7 = v26;
        v8 = v27;
        __swift_project_boxed_opaque_existential_1(&v25, v26);
        v9 = (*(v8 + 8))(v7, v8);
        v11 = v10;
        v13 = v23;
        v12 = v24;
        __swift_project_boxed_opaque_existential_1(v22, v23);
        if (v9 == (*(v12 + 8))(v13, v12) && v11 == v14)
        {

          __swift_destroy_boxed_opaque_existential_1Tm(v22);
          result = __swift_destroy_boxed_opaque_existential_1Tm(&v25);
        }

        else
        {
          v16 = sub_266ABE1C4();

          __swift_destroy_boxed_opaque_existential_1Tm(v22);
          result = __swift_destroy_boxed_opaque_existential_1Tm(&v25);
          if (v16)
          {
            break;
          }
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        sub_266A6DBC4(v5, &v25);
        v17 = *(v5 - 24);
        *v5 = *(v5 - 40);
        *(v5 + 16) = v17;
        *(v5 + 32) = *(v5 - 8);
        result = sub_266A6DBC4(&v25, v5 - 40);
        v5 -= 40;
      }

      while (!__CFADD__(v6++, 1));
      a3 = v28 + 1;
      v5 = v21 + 40;
      v6 = v20 - 1;
      if (v28 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_266A99B8C(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v162 = a1;
  v6 = type metadata accessor for ParticipantModel(0);
  v172 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v166 = &v158 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v188 = &v158 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v158 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v158 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v158 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v175 = (&v158 - v21);
  v22 = MEMORY[0x28223BE20](v20);
  v160 = &v158 - v23;
  MEMORY[0x28223BE20](v22);
  v159 = &v158 - v27;
  v173 = a3;
  if (a3[1] < 1)
  {
    v30 = MEMORY[0x277D84F90];
LABEL_161:
    v188 = *v162;
    if (!v188)
    {
      goto LABEL_204;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = v174;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_163;
    }

    goto LABEL_198;
  }

  v28 = a3[1];
  v158 = a4;
  v29 = 0;
  v30 = MEMORY[0x277D84F90];
  v176 = v6;
  v177 = v16;
  v178 = v13;
  v170 = v19;
  while (1)
  {
    v31 = v29++;
    v163 = v31;
    if (v29 < v28)
    {
      v169 = v28;
      v32 = *v173;
      v33 = *(v172 + 72);
      v171 = v29;
      v34 = v31;
      v35 = v32 + v33 * v29;
      v36 = v159;
      sub_266A6E9E4(v35, v159);
      v37 = v32 + v33 * v34;
      v38 = v160;
      sub_266A6E9E4(v37, v160);
      v39 = v174;
      LODWORD(v179) = sub_266A96F4C(v36, v38);
      if (v39)
      {
        sub_266A6A63C(v38);
        sub_266A6A63C(v36);
LABEL_173:

        return;
      }

      v174 = 0;
      v161 = v30;
      sub_266A6A63C(v38);
      sub_266A6A63C(v36);
      v40 = (v163 + 2);
      v41 = v32 + v33 * (v163 + 2);
      v42 = v171;
      v43 = v169;
      while (1)
      {
        v30 = v40;
        if (v42 + 1 >= v43)
        {
          break;
        }

        v44 = v42;
        v45 = v175;
        sub_266A6E9E4(v41, v175);
        sub_266A6E9E4(v35, v19);
        v46 = *(v45 + 112);
        v47 = v19[112];
        if (v46 == v47)
        {
          if (v46 == 2)
          {
            sub_266A9D098(v175, &v180);
            v48 = v183;
            if (v183)
            {
              v49 = v184;
              __swift_project_boxed_opaque_existential_1(&v180, v183);
              v50 = *(v49 + 48);
              v51 = v49;
              v19 = v170;
              LOBYTE(v48) = v50(v48, v51);
              __swift_destroy_boxed_opaque_existential_1Tm(&v180);
            }

            else
            {
              sub_266A6CBB4(&v180, &qword_2800B1CC8, &unk_266AC0FD0);
            }

            sub_266A9D098(v19, &v180);
            v57 = v183;
            if (v183)
            {
              v58 = v184;
              __swift_project_boxed_opaque_existential_1(&v180, v183);
              v59 = *(v58 + 48);
              v60 = v58;
              v13 = v178;
              v61 = v59(v57, v60);
              __swift_destroy_boxed_opaque_existential_1Tm(&v180);
            }

            else
            {
              sub_266A6CBB4(&v180, &qword_2800B1CC8, &unk_266AC0FD0);
              v61 = 0;
            }

            v52 = v61 < v48;
          }

          else
          {
            v53 = v175[9];
            v54 = v175[10];
            __swift_project_boxed_opaque_existential_1(v175 + 6, v53);
            (*(v54 + 112))(&v180, v53, v54);
            v55 = v181;
            if (v181)
            {
              v171 = v180;
            }

            else
            {
              v171 = v182;
            }

            v63 = *(v170 + 9);
            v62 = *(v170 + 10);
            __swift_project_boxed_opaque_existential_1(v170 + 6, v63);
            (*(v62 + 112))(&v185, v63, v62);
            v64 = v186;
            if (v186)
            {
              v65 = v185;
            }

            else
            {
              v65 = v187;
            }

            if (v171 == v65 && v55 == v64)
            {
              v52 = 0;
            }

            else
            {
              v52 = sub_266ABE1C4();
            }

            v13 = v178;
          }

          v43 = v169;
          v19 = v170;
        }

        else
        {
          v52 = 0;
          switch(v46)
          {
            case 1:
              v52 = v47 == 0;
              break;
            case 2:
              v56 = v47 >= 2;
              goto LABEL_17;
            case 3:
              v56 = v47 >= 3;
LABEL_17:
              v52 = !v56;
              break;
            default:
              break;
          }
        }

        sub_266A6A63C(v19);
        sub_266A6A63C(v175);
        v41 += v33;
        v35 += v33;
        v42 = v44 + 1;
        v40 = v30 + 1;
        if ((v179 ^ v52))
        {
          goto LABEL_40;
        }
      }

      v42 = v43;
LABEL_40:
      v171 = v42;
      if (v179)
      {
        v29 = v171;
        v31 = v163;
        if (v171 < v163)
        {
          goto LABEL_197;
        }

        if (v163 >= v171)
        {
          v30 = v161;
          v16 = v177;
          goto LABEL_61;
        }

        if (v43 >= v30)
        {
          v67 = v30;
        }

        else
        {
          v67 = v43;
        }

        v68 = v33 * (v67 - 1);
        v69 = v33 * v67;
        v70 = v171;
        v71 = v163;
        v72 = v163 * v33;
        do
        {
          if (v71 != --v70)
          {
            v73 = *v173;
            if (!*v173)
            {
              goto LABEL_202;
            }

            sub_266A7977C(v73 + v72, v166);
            if (v72 < v68 || v73 + v72 >= (v73 + v69))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v72 != v68)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_266A7977C(v166, v73 + v68);
            v13 = v178;
          }

          ++v71;
          v68 -= v33;
          v69 -= v33;
          v72 += v33;
        }

        while (v71 < v70);
      }

      v30 = v161;
      v16 = v177;
      v29 = v171;
      v31 = v163;
    }

LABEL_61:
    v75 = v173[1];
    if (v29 < v75)
    {
      if (__OFSUB__(v29, v31))
      {
        goto LABEL_194;
      }

      if (v29 - v31 < v158)
      {
        break;
      }
    }

LABEL_108:
    if (v29 < v31)
    {
      goto LABEL_193;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_266A981C8();
      v30 = v149;
    }

    v106 = *(v30 + 2);
    v107 = v106 + 1;
    if (v106 >= *(v30 + 3) >> 1)
    {
      sub_266A981C8();
      v30 = v150;
    }

    *(v30 + 2) = v107;
    v108 = v30 + 32;
    v109 = &v30[16 * v106 + 32];
    *v109 = v163;
    *(v109 + 1) = v29;
    v179 = *v162;
    if (!v179)
    {
      goto LABEL_203;
    }

    if (v106)
    {
      while (1)
      {
        v110 = v107 - 1;
        v111 = &v108[16 * v107 - 16];
        v112 = &v30[16 * v107];
        if (v107 >= 4)
        {
          break;
        }

        if (v107 == 3)
        {
          v113 = *(v30 + 4);
          v114 = *(v30 + 5);
          v123 = __OFSUB__(v114, v113);
          v115 = v114 - v113;
          v116 = v123;
LABEL_128:
          if (v116)
          {
            goto LABEL_180;
          }

          v128 = *v112;
          v127 = *(v112 + 1);
          v129 = __OFSUB__(v127, v128);
          v130 = v127 - v128;
          v131 = v129;
          if (v129)
          {
            goto LABEL_183;
          }

          v132 = *(v111 + 1);
          v133 = v132 - *v111;
          if (__OFSUB__(v132, *v111))
          {
            goto LABEL_186;
          }

          if (__OFADD__(v130, v133))
          {
            goto LABEL_188;
          }

          if (v130 + v133 >= v115)
          {
            if (v115 < v133)
            {
              v110 = v107 - 2;
            }

            goto LABEL_150;
          }

          goto LABEL_143;
        }

        if (v107 < 2)
        {
          goto LABEL_182;
        }

        v135 = *v112;
        v134 = *(v112 + 1);
        v123 = __OFSUB__(v134, v135);
        v130 = v134 - v135;
        v131 = v123;
LABEL_143:
        if (v131)
        {
          goto LABEL_185;
        }

        v137 = *v111;
        v136 = *(v111 + 1);
        v123 = __OFSUB__(v136, v137);
        v138 = v136 - v137;
        if (v123)
        {
          goto LABEL_187;
        }

        if (v138 < v130)
        {
          goto LABEL_157;
        }

LABEL_150:
        if (v110 - 1 >= v107)
        {
          __break(1u);
LABEL_175:
          __break(1u);
LABEL_176:
          __break(1u);
LABEL_177:
          __break(1u);
LABEL_178:
          __break(1u);
LABEL_179:
          __break(1u);
LABEL_180:
          __break(1u);
LABEL_181:
          __break(1u);
LABEL_182:
          __break(1u);
LABEL_183:
          __break(1u);
LABEL_184:
          __break(1u);
LABEL_185:
          __break(1u);
LABEL_186:
          __break(1u);
LABEL_187:
          __break(1u);
LABEL_188:
          __break(1u);
LABEL_189:
          __break(1u);
LABEL_190:
          __break(1u);
LABEL_191:
          __break(1u);
LABEL_192:
          __break(1u);
LABEL_193:
          __break(1u);
LABEL_194:
          __break(1u);
LABEL_195:
          __break(1u);
          goto LABEL_196;
        }

        if (!*v173)
        {
          goto LABEL_200;
        }

        v142 = v30;
        v143 = &v108[16 * v110 - 16];
        v30 = *v143;
        v144 = &v108[16 * v110];
        v145 = *(v144 + 1);
        v146 = v174;
        sub_266A9B18C(*v173 + *(v172 + 72) * *v143, *v173 + *(v172 + 72) * *v144, *v173 + *(v172 + 72) * v145, v179);
        v174 = v146;
        if (v146)
        {
          goto LABEL_173;
        }

        if (v145 < v30)
        {
          goto LABEL_175;
        }

        v147 = *(v142 + 2);
        if (v110 > v147)
        {
          goto LABEL_176;
        }

        *v143 = v30;
        *(v143 + 1) = v145;
        if (v110 >= v147)
        {
          goto LABEL_177;
        }

        v107 = v147 - 1;
        sub_266AB36DC(v144 + 16, v147 - 1 - v110, &v108[16 * v110]);
        v30 = v142;
        *(v142 + 2) = v147 - 1;
        v148 = v147 > 2;
        v13 = v178;
        if (!v148)
        {
          goto LABEL_157;
        }
      }

      v117 = &v108[16 * v107];
      v118 = *(v117 - 8);
      v119 = *(v117 - 7);
      v123 = __OFSUB__(v119, v118);
      v120 = v119 - v118;
      if (v123)
      {
        goto LABEL_178;
      }

      v122 = *(v117 - 6);
      v121 = *(v117 - 5);
      v123 = __OFSUB__(v121, v122);
      v115 = v121 - v122;
      v116 = v123;
      if (v123)
      {
        goto LABEL_179;
      }

      v124 = *(v112 + 1);
      v125 = v124 - *v112;
      if (__OFSUB__(v124, *v112))
      {
        goto LABEL_181;
      }

      v123 = __OFADD__(v115, v125);
      v126 = v115 + v125;
      if (v123)
      {
        goto LABEL_184;
      }

      if (v126 >= v120)
      {
        v140 = *v111;
        v139 = *(v111 + 1);
        v123 = __OFSUB__(v139, v140);
        v141 = v139 - v140;
        if (v123)
        {
          goto LABEL_192;
        }

        if (v115 < v141)
        {
          v110 = v107 - 2;
        }

        goto LABEL_150;
      }

      goto LABEL_128;
    }

LABEL_157:
    v28 = v173[1];
    v16 = v177;
    v19 = v170;
    if (v29 >= v28)
    {
      goto LABEL_161;
    }
  }

  v76 = v31 + v158;
  if (__OFADD__(v31, v158))
  {
    goto LABEL_195;
  }

  if (v76 >= v75)
  {
    v76 = v173[1];
  }

  if (v76 < v31)
  {
LABEL_196:
    __break(1u);
LABEL_197:
    __break(1u);
LABEL_198:
    v30 = sub_266AB36C4(v30, v24, v25, v26);
LABEL_163:
    v152 = v30 + 16;
    v153 = *(v30 + 2);
    while (v153 >= 2)
    {
      if (!*v173)
      {
        goto LABEL_201;
      }

      v154 = v30;
      v30 += 16 * v153;
      v155 = *v30;
      v156 = &v152[2 * v153];
      v157 = *(v156 + 1);
      sub_266A9B18C(*v173 + *(v172 + 72) * *v30, *v173 + *(v172 + 72) * *v156, *v173 + *(v172 + 72) * v157, v188);
      if (v29)
      {
        break;
      }

      if (v157 < v155)
      {
        goto LABEL_189;
      }

      if (v153 - 2 >= *v152)
      {
        goto LABEL_190;
      }

      *v30 = v155;
      *(v30 + 1) = v157;
      v24 = *v152 - v153;
      if (*v152 < v153)
      {
        goto LABEL_191;
      }

      v153 = *v152 - 1;
      sub_266AB36DC(v156 + 16, v24, v156);
      *v152 = v153;
      v30 = v154;
    }

    goto LABEL_173;
  }

  if (v29 == v76)
  {
    goto LABEL_108;
  }

  v161 = v30;
  v77 = *(v172 + 72);
  v78 = *v173 + v77 * (v29 - 1);
  v79 = -v77;
  v80 = v31 - v29;
  v179 = *v173;
  v164 = v77;
  v81 = v179 + v29 * v77;
  v165 = v76;
LABEL_70:
  v171 = v29;
  v167 = v81;
  v168 = v80;
  v169 = v78;
  v82 = v80;
  while (1)
  {
    sub_266A6E9E4(v81, v16);
    sub_266A6E9E4(v78, v13);
    v83 = v16[112];
    v84 = v13[112];
    if (v83 != v84)
    {
      switch(v16[112])
      {
        case 1:
          v87 = v84 == 0;
          goto LABEL_101;
        case 2:
          v93 = v84 >= 2;
          goto LABEL_90;
        case 3:
          sub_266A6A63C(v13);
          sub_266A6A63C(v16);
          if (v84 >= 3)
          {
            goto LABEL_105;
          }

          goto LABEL_102;
        default:
          sub_266A6A63C(v13);
          sub_266A6A63C(v16);
          goto LABEL_105;
      }
    }

    if (v83 == 2)
    {
      sub_266A9D098(v16, &v180);
      v85 = v183;
      if (v183)
      {
        v86 = v184;
        __swift_project_boxed_opaque_existential_1(&v180, v183);
        LOBYTE(v85) = (*(v86 + 48))(v85, v86);
        __swift_destroy_boxed_opaque_existential_1Tm(&v180);
      }

      else
      {
        sub_266A6CBB4(&v180, &qword_2800B1CC8, &unk_266AC0FD0);
      }

      sub_266A9D098(v13, &v180);
      v94 = v183;
      if (v183)
      {
        v95 = v184;
        __swift_project_boxed_opaque_existential_1(&v180, v183);
        v96 = *(v95 + 48);
        v97 = v95;
        v13 = v178;
        v98 = v96(v94, v97);
        __swift_destroy_boxed_opaque_existential_1Tm(&v180);
      }

      else
      {
        sub_266A6CBB4(&v180, &qword_2800B1CC8, &unk_266AC0FD0);
        v98 = 0;
      }

      v16 = v177;
      v93 = v98 >= v85;
LABEL_90:
      v87 = !v93;
    }

    else
    {
      v88 = v16;
      v89 = *(v16 + 9);
      v90 = *(v16 + 10);
      __swift_project_boxed_opaque_existential_1(v88 + 6, v89);
      (*(v90 + 112))(&v180, v89, v90);
      v91 = v181;
      if (v181)
      {
        v92 = v180;
      }

      else
      {
        v92 = v182;
      }

      v99 = v13;
      v100 = *(v13 + 9);
      v101 = *(v99 + 10);
      __swift_project_boxed_opaque_existential_1(v99 + 6, v100);
      (*(v101 + 112))(&v185, v100, v101);
      v102 = v186;
      if (v186)
      {
        v103 = v185;
      }

      else
      {
        v103 = v187;
      }

      if (v92 == v103 && v91 == v102)
      {
        v87 = 0;
      }

      else
      {
        v87 = sub_266ABE1C4();
      }

      v13 = v178;

      v16 = v177;
    }

LABEL_101:
    sub_266A6A63C(v13);
    sub_266A6A63C(v16);
    if ((v87 & 1) == 0)
    {
LABEL_105:
      v29 = v171 + 1;
      v78 = v169 + v164;
      v80 = v168 - 1;
      v81 = v167 + v164;
      if (v171 + 1 == v165)
      {
        v29 = v165;
        v30 = v161;
        v31 = v163;
        goto LABEL_108;
      }

      goto LABEL_70;
    }

LABEL_102:
    if (!v179)
    {
      break;
    }

    v105 = v188;
    sub_266A7977C(v81, v188);
    swift_arrayInitWithTakeFrontToBack();
    sub_266A7977C(v105, v78);
    v78 += v79;
    v81 += v79;
    v56 = __CFADD__(v82++, 1);
    if (v56)
    {
      goto LABEL_105;
    }
  }

  __break(1u);
LABEL_200:
  __break(1u);
LABEL_201:
  __break(1u);
LABEL_202:
  __break(1u);
LABEL_203:
  __break(1u);
LABEL_204:
  __break(1u);
}

void sub_266A9A998(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = MEMORY[0x277D84F90];
    while (1)
    {
      v7 = v5;
      v8 = (v5 + 1);
      v109 = v5;
      if ((v5 + 1) < v4)
      {
        v9 = *a3;
        sub_266A6FFD8(*a3 + 40 * v8, &v120);
        sub_266A6FFD8(v9 + 40 * v7, v117);
        v10 = v123;
        LODWORD(v115) = sub_266A97738(&v120, v117);
        v123 = v10;
        if (v10)
        {
          __swift_destroy_boxed_opaque_existential_1Tm(v117);
          __swift_destroy_boxed_opaque_existential_1Tm(&v120);
LABEL_114:

          return;
        }

        v106 = v6;
        __swift_destroy_boxed_opaque_existential_1Tm(v117);
        __swift_destroy_boxed_opaque_existential_1Tm(&v120);
        v112 = 40 * v7;
        v11 = v9 + 40 * v7 + 80;
        v12 = v7 + 2;
        while (1)
        {
          v13 = v12;
          if (v8 + 1 >= v4)
          {
            break;
          }

          v14 = v8;
          sub_266A6FFD8(v11, &v120);
          sub_266A6FFD8(v11 - 40, v117);
          v15 = v121;
          v16 = v122;
          __swift_project_boxed_opaque_existential_1(&v120, v121);
          v17 = (*(v16 + 8))(v15, v16);
          v19 = v18;
          v21 = v118;
          v20 = v119;
          __swift_project_boxed_opaque_existential_1(v117, v118);
          if (v17 == (*(v20 + 8))(v21, v20) && v19 == v22)
          {
            v24 = 0;
          }

          else
          {
            v24 = sub_266ABE1C4();
          }

          __swift_destroy_boxed_opaque_existential_1Tm(v117);
          __swift_destroy_boxed_opaque_existential_1Tm(&v120);
          v11 += 40;
          v8 = v14 + 1;
          v12 = v13 + 1;
          if (((v115 ^ v24) & 1) == 0)
          {
            goto LABEL_16;
          }
        }

        v8 = v4;
LABEL_16:
        if (v115)
        {
          v25 = v109;
          v6 = v106;
          if (v8 < v109)
          {
            goto LABEL_139;
          }

          if (v109 >= v8)
          {
            v7 = v109;
          }

          else
          {
            if (v4 >= v13)
            {
              v26 = v13;
            }

            else
            {
              v26 = v4;
            }

            v27 = 40 * v26 - 40;
            v28 = v8;
            v29 = v112;
            do
            {
              if (v25 != --v28)
              {
                v30 = *a3;
                if (!*a3)
                {
                  goto LABEL_144;
                }

                v31 = v8;
                v32 = v30 + v29;
                v33 = v30 + v27;
                sub_266A6DBC4((v30 + v29), &v120);
                v34 = *(v33 + 32);
                v35 = *(v33 + 16);
                *v32 = *v33;
                *(v32 + 16) = v35;
                *(v32 + 32) = v34;
                sub_266A6DBC4(&v120, v33);
                v8 = v31;
              }

              ++v25;
              v27 -= 40;
              v29 += 40;
            }

            while (v25 < v28);
            v7 = v109;
          }
        }

        else
        {
          v7 = v109;
          v6 = v106;
        }
      }

      v36 = a3[1];
      if (v8 < v36)
      {
        if (__OFSUB__(v8, v7))
        {
          goto LABEL_136;
        }

        if (v8 - v7 < a4)
        {
          v37 = v7 + a4;
          if (__OFADD__(v7, a4))
          {
            goto LABEL_137;
          }

          if (v37 >= v36)
          {
            v37 = a3[1];
          }

          if (v37 >= v7)
          {
            if (v8 == v37)
            {
              goto LABEL_52;
            }

            v107 = v6;
            v38 = *a3;
            v39 = *a3 + 40 * v8;
            v40 = v7 - v8;
            v110 = v37;
LABEL_39:
            v113 = v39;
            v115 = v8;
            v111 = v40;
            while (1)
            {
              sub_266A6FFD8(v39, &v120);
              sub_266A6FFD8(v39 - 40, v117);
              v41 = v121;
              v42 = v122;
              __swift_project_boxed_opaque_existential_1(&v120, v121);
              v43 = (*(v42 + 8))(v41, v42);
              v45 = v44;
              v46 = v118;
              v47 = v119;
              __swift_project_boxed_opaque_existential_1(v117, v118);
              if (v43 == (*(v47 + 8))(v46, v47) && v45 == v48)
              {

                __swift_destroy_boxed_opaque_existential_1Tm(v117);
                __swift_destroy_boxed_opaque_existential_1Tm(&v120);
              }

              else
              {
                v50 = sub_266ABE1C4();

                __swift_destroy_boxed_opaque_existential_1Tm(v117);
                __swift_destroy_boxed_opaque_existential_1Tm(&v120);
                if (v50)
                {
                  goto LABEL_50;
                }
              }

              if (!v38)
              {
                break;
              }

              sub_266A6DBC4(v39, &v120);
              v51 = *(v39 - 24);
              *v39 = *(v39 - 40);
              *(v39 + 16) = v51;
              *(v39 + 32) = *(v39 - 8);
              sub_266A6DBC4(&v120, v39 - 40);
              v39 -= 40;
              if (__CFADD__(v40++, 1))
              {
LABEL_50:
                v8 = (v115 + 1);
                v39 = v113 + 40;
                v40 = v111 - 1;
                if (v115 + 1 == v110)
                {
                  v8 = v110;
                  v6 = v107;
                  v7 = v109;
                  goto LABEL_52;
                }

                goto LABEL_39;
              }
            }

            __break(1u);
LABEL_142:
            __break(1u);
LABEL_143:
            __break(1u);
LABEL_144:
            __break(1u);
            goto LABEL_145;
          }

LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          v6 = sub_266AB36C4(v6, a2, a3, a4);
LABEL_106:
          v97 = v6;
          v98 = (v6 + 16);
          for (i = *(v6 + 16); ; *v98 = i)
          {
            v6 = i - 2;
            if (i < 2)
            {
              break;
            }

            if (!*a3)
            {
              goto LABEL_143;
            }

            v100 = (v97 + 16 * i);
            v101 = *v100;
            v102 = &v98[2 * i];
            v103 = *(v102 + 1);
            v104 = v123;
            sub_266A9B640((*a3 + 40 * *v100), (*a3 + 40 * *v102), *a3 + 40 * v103, v115);
            v123 = v104;
            if (v104)
            {
              break;
            }

            if (v103 < v101)
            {
              goto LABEL_131;
            }

            if (v6 >= *v98)
            {
              goto LABEL_132;
            }

            *v100 = v101;
            v100[1] = v103;
            a2 = *v98 - i;
            if (*v98 < i)
            {
              goto LABEL_133;
            }

            i = *v98 - 1;
            sub_266AB36DC(v102 + 16, a2, v102);
          }

          goto LABEL_114;
        }
      }

LABEL_52:
      if (v8 < v7)
      {
        goto LABEL_135;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_266A981C8();
        v6 = v95;
      }

      v53 = *(v6 + 16);
      v54 = v53 + 1;
      v115 = v8;
      if (v53 >= *(v6 + 24) >> 1)
      {
        sub_266A981C8();
        v6 = v96;
      }

      *(v6 + 16) = v54;
      v55 = v6 + 32;
      v56 = (v6 + 32 + 16 * v53);
      *v56 = v109;
      v56[1] = v115;
      v114 = *a1;
      if (!*a1)
      {
LABEL_145:
        __break(1u);
        goto LABEL_146;
      }

      if (v53)
      {
        break;
      }

LABEL_101:
      v5 = v115;
      v4 = a3[1];
      if (v115 >= v4)
      {
        goto LABEL_104;
      }
    }

    while (1)
    {
      v57 = v54 - 1;
      v58 = (v55 + 16 * (v54 - 1));
      v59 = (v6 + 16 * v54);
      if (v54 >= 4)
      {
        break;
      }

      if (v54 == 3)
      {
        v60 = *(v6 + 32);
        v61 = *(v6 + 40);
        v70 = __OFSUB__(v61, v60);
        v62 = v61 - v60;
        v63 = v70;
LABEL_72:
        if (v63)
        {
          goto LABEL_122;
        }

        v75 = *v59;
        v74 = v59[1];
        v76 = __OFSUB__(v74, v75);
        v77 = v74 - v75;
        v78 = v76;
        if (v76)
        {
          goto LABEL_125;
        }

        v79 = v58[1];
        v80 = v79 - *v58;
        if (__OFSUB__(v79, *v58))
        {
          goto LABEL_128;
        }

        if (__OFADD__(v77, v80))
        {
          goto LABEL_130;
        }

        if (v77 + v80 >= v62)
        {
          if (v62 < v80)
          {
            v57 = v54 - 2;
          }

          goto LABEL_94;
        }

        goto LABEL_87;
      }

      if (v54 < 2)
      {
        goto LABEL_124;
      }

      v82 = *v59;
      v81 = v59[1];
      v70 = __OFSUB__(v81, v82);
      v77 = v81 - v82;
      v78 = v70;
LABEL_87:
      if (v78)
      {
        goto LABEL_127;
      }

      v84 = *v58;
      v83 = v58[1];
      v70 = __OFSUB__(v83, v84);
      v85 = v83 - v84;
      if (v70)
      {
        goto LABEL_129;
      }

      if (v85 < v77)
      {
        goto LABEL_101;
      }

LABEL_94:
      if (v57 - 1 >= v54)
      {
        __break(1u);
LABEL_117:
        __break(1u);
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
        __break(1u);
LABEL_127:
        __break(1u);
LABEL_128:
        __break(1u);
LABEL_129:
        __break(1u);
LABEL_130:
        __break(1u);
LABEL_131:
        __break(1u);
LABEL_132:
        __break(1u);
LABEL_133:
        __break(1u);
LABEL_134:
        __break(1u);
LABEL_135:
        __break(1u);
LABEL_136:
        __break(1u);
LABEL_137:
        __break(1u);
        goto LABEL_138;
      }

      if (!*a3)
      {
        goto LABEL_142;
      }

      v89 = v6;
      v90 = (v55 + 16 * (v57 - 1));
      v91 = *v90;
      v92 = v55 + 16 * v57;
      v6 = *(v92 + 8);
      v93 = v123;
      sub_266A9B640((*a3 + 40 * *v90), (*a3 + 40 * *v92), *a3 + 40 * v6, v114);
      v123 = v93;
      if (v93)
      {
        goto LABEL_114;
      }

      if (v6 < v91)
      {
        goto LABEL_117;
      }

      v94 = *(v89 + 16);
      if (v57 > v94)
      {
        goto LABEL_118;
      }

      *v90 = v91;
      v90[1] = v6;
      if (v57 >= v94)
      {
        goto LABEL_119;
      }

      v54 = v94 - 1;
      sub_266AB36DC((v92 + 16), v94 - 1 - v57, (v55 + 16 * v57));
      v6 = v89;
      *(v89 + 16) = v94 - 1;
      if (v94 <= 2)
      {
        goto LABEL_101;
      }
    }

    v64 = v55 + 16 * v54;
    v65 = *(v64 - 64);
    v66 = *(v64 - 56);
    v70 = __OFSUB__(v66, v65);
    v67 = v66 - v65;
    if (v70)
    {
      goto LABEL_120;
    }

    v69 = *(v64 - 48);
    v68 = *(v64 - 40);
    v70 = __OFSUB__(v68, v69);
    v62 = v68 - v69;
    v63 = v70;
    if (v70)
    {
      goto LABEL_121;
    }

    v71 = v59[1];
    v72 = v71 - *v59;
    if (__OFSUB__(v71, *v59))
    {
      goto LABEL_123;
    }

    v70 = __OFADD__(v62, v72);
    v73 = v62 + v72;
    if (v70)
    {
      goto LABEL_126;
    }

    if (v73 >= v67)
    {
      v87 = *v58;
      v86 = v58[1];
      v70 = __OFSUB__(v86, v87);
      v88 = v86 - v87;
      if (v70)
      {
        goto LABEL_134;
      }

      if (v62 < v88)
      {
        v57 = v54 - 2;
      }

      goto LABEL_94;
    }

    goto LABEL_72;
  }

  v6 = MEMORY[0x277D84F90];
LABEL_104:
  v115 = *a1;
  if (*a1)
  {
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_106;
    }

    goto LABEL_140;
  }

LABEL_146:
  __break(1u);
}

uint64_t sub_266A9B18C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = v4;
  v65 = a3;
  v67 = type metadata accessor for ParticipantModel(0);
  v9 = MEMORY[0x28223BE20](v67);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v56 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v56 - v14;
  result = MEMORY[0x28223BE20](v13);
  v19 = &v56 - v18;
  v21 = *(v20 + 72);
  if (!v21)
  {
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    return result;
  }

  v22 = a2 - a1;
  v23 = a2 - a1 == 0x8000000000000000 && v21 == -1;
  if (v23)
  {
    goto LABEL_65;
  }

  v24 = v65 - a2;
  if (v65 - a2 == 0x8000000000000000 && v21 == -1)
  {
    goto LABEL_66;
  }

  v26 = v22 / v21;
  v70 = a1;
  v69 = a4;
  v27 = v24 / v21;
  if (v22 / v21 >= v24 / v21)
  {
    v66 = v5;
    v62 = v12;
    v63 = v17;
    v64 = a1;
    sub_266A98964(a2, v24 / v21, a4);
    v34 = a4 + v27 * v21;
    v35 = -v21;
    v36 = v34;
    v37 = a4;
    v59 = -v21;
    v60 = a4;
LABEL_38:
    v38 = a2 + v35;
    v39 = v65;
    v57 = v36;
    v40 = v36;
    v61 = a2 + v35;
    while (1)
    {
      if (v34 <= v37)
      {
        v70 = a2;
        v68 = v40;
        goto LABEL_63;
      }

      if (a2 <= v64)
      {
        v70 = a2;
        v68 = v57;
        goto LABEL_63;
      }

      v41 = v39;
      v58 = v40;
      v42 = a2;
      v43 = v34;
      v44 = v34 + v35;
      v45 = v62;
      sub_266A6E9E4(v34 + v35, v62);
      v46 = v63;
      sub_266A6E9E4(v38, v63);
      v47 = v66;
      v48 = sub_266A96F4C(v45, v46);
      if (v47)
      {
        break;
      }

      v49 = v48;
      v50 = v41 + v35;
      sub_266A6A63C(v46);
      sub_266A6A63C(v45);
      v66 = 0;
      if (v49)
      {
        v53 = v41 < v42 || v50 >= v42;
        v65 = v41 + v35;
        if (v53)
        {
          a2 = v61;
          swift_arrayInitWithTakeFrontToBack();
          v36 = v58;
          v35 = v59;
          v37 = v60;
          v34 = v43;
        }

        else
        {
          v35 = v59;
          v36 = v58;
          v23 = v41 == v42;
          v37 = v60;
          v54 = v61;
          a2 = v61;
          v34 = v43;
          if (!v23)
          {
            v55 = v58;
            swift_arrayInitWithTakeBackToFront();
            a2 = v54;
            v36 = v55;
          }
        }

        goto LABEL_38;
      }

      v51 = v41 < v43 || v50 >= v43;
      a2 = v42;
      if (v51)
      {
        swift_arrayInitWithTakeFrontToBack();
        v39 = v41 + v35;
        v34 = v44;
        v40 = v44;
        v35 = v59;
        v37 = v60;
        v38 = v61;
      }

      else
      {
        v40 = v44;
        v23 = v43 == v41;
        v39 = v41 + v35;
        v34 = v44;
        v35 = v59;
        v37 = v60;
        v52 = v50;
        v38 = v61;
        if (!v23)
        {
          swift_arrayInitWithTakeBackToFront();
          v39 = v52;
          v34 = v44;
          v40 = v44;
        }
      }
    }

    sub_266A6A63C(v46);
    sub_266A6A63C(v45);
    v70 = v42;
    v68 = v58;
  }

  else
  {
    sub_266A98964(a1, v22 / v21, a4);
    v66 = a4 + v26 * v21;
    v68 = v66;
    while (a4 < v66 && a2 < v65)
    {
      sub_266A6E9E4(a2, v19);
      v29 = a4;
      sub_266A6E9E4(a4, v15);
      v30 = sub_266A96F4C(v19, v15);
      if (v5)
      {
        sub_266A6A63C(v15);
        sub_266A6A63C(v19);
        break;
      }

      v31 = v30;
      sub_266A6A63C(v15);
      sub_266A6A63C(v19);
      if (v31)
      {
        if (a1 < a2 || a1 >= a2 + v21)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v21;
      }

      else
      {
        a4 += v21;
        if (a1 < v29 || a1 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v29)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v69 = a4;
      }

      a1 += v21;
      v70 = a1;
    }
  }

LABEL_63:
  sub_266A9BA04(&v70, &v69, &v68);
  return 1;
}

uint64_t sub_266A9B640(char *__src, char *__dst, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = (__dst - __src) / 40;
  v9 = (a3 - __dst) / 40;
  if (v8 < v9)
  {
    if (a4 != __src || &__src[40 * v8] <= a4)
    {
      memmove(a4, __src, 40 * v8);
    }

    v11 = &v4[40 * v8];
    v60 = v5;
    while (1)
    {
      if (v4 >= v11 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_48;
      }

      sub_266A6FFD8(v6, v57);
      sub_266A6FFD8(v4, v54);
      v13 = v58;
      v14 = v59;
      __swift_project_boxed_opaque_existential_1(v57, v58);
      v15 = (*(v14 + 8))(v13, v14);
      v17 = v16;
      v18 = v55;
      v19 = v56;
      __swift_project_boxed_opaque_existential_1(v54, v55);
      if (v15 == (*(v19 + 8))(v18, v19) && v17 == v20)
      {

        __swift_destroy_boxed_opaque_existential_1Tm(v54);
        __swift_destroy_boxed_opaque_existential_1Tm(v57);
      }

      else
      {
        v22 = sub_266ABE1C4();

        __swift_destroy_boxed_opaque_existential_1Tm(v54);
        __swift_destroy_boxed_opaque_existential_1Tm(v57);
        if (v22)
        {
          v23 = v4;
          v24 = v7 == v4;
          v4 += 40;
          goto LABEL_20;
        }
      }

      v23 = v6;
      v24 = v7 == v6;
      v6 += 40;
LABEL_20:
      v5 = v60;
      if (!v24)
      {
        v25 = *v23;
        v26 = *(v23 + 1);
        *(v7 + 4) = *(v23 + 4);
        *v7 = v25;
        *(v7 + 1) = v26;
      }

      v7 += 40;
    }
  }

  if (a4 != __dst || &__dst[40 * v9] <= a4)
  {
    memmove(a4, __dst, 40 * v9);
  }

  v28 = &v4[40 * v9];
  v52 = v7;
LABEL_29:
  v29 = (v6 - 40);
  v30 = v5 - 40;
  v31 = (v28 - 40);
  v60 = v6;
  for (i = v6 - 40; ; v29 = i)
  {
    v11 = (v31 + 40);
    if (v31 + 40 <= v4 || v6 <= v7)
    {
      break;
    }

    v33 = v30;
    v34 = v4;
    sub_266A6FFD8(v31, v57);
    sub_266A6FFD8(v29, v54);
    v35 = v58;
    v36 = v59;
    __swift_project_boxed_opaque_existential_1(v57, v58);
    v37 = (*(v36 + 8))(v35, v36);
    v39 = v38;
    v41 = v55;
    v40 = v56;
    __swift_project_boxed_opaque_existential_1(v54, v55);
    if (v37 == (*(v40 + 8))(v41, v40) && v39 == v42)
    {
      v44 = 0;
    }

    else
    {
      v44 = sub_266ABE1C4();
    }

    v5 = v33;

    __swift_destroy_boxed_opaque_existential_1Tm(v54);
    __swift_destroy_boxed_opaque_existential_1Tm(v57);
    v4 = v34;
    v6 = v60;
    if ((v44 & 1) == 0)
    {
      v28 = (v31 + 40);
      v7 = v52;
      v6 = i;
      if ((v5 + 40) != v60)
      {
        v47 = *i;
        v48 = *(i + 1);
        *(v5 + 32) = *(i + 4);
        *v5 = v47;
        *(v5 + 16) = v48;
        v6 = i;
      }

      goto LABEL_29;
    }

    v7 = v52;
    if (v11 != (v5 + 40))
    {
      v45 = *v31;
      v46 = *(v31 + 16);
      *(v5 + 32) = *(v31 + 32);
      *v5 = v45;
      *(v5 + 16) = v46;
    }

    v30 = v5 - 40;
    v31 -= 40;
  }

LABEL_48:
  v49 = (v11 - v4) / 40;
  if (v6 != v4 || v6 >= &v4[40 * v49])
  {
    memmove(v6, v4, 40 * v49);
  }

  return 1;
}

uint64_t sub_266A9BA04(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for ParticipantModel(0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_20;
  }

  v9 = v4 + (v5 - v4) / v7 * v7;
  if (v3 < v4 || v3 >= v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

BOOL sub_266A9BAE4(void *a1, uint64_t *a2)
{
  v3 = v2;
  v6 = a2[14];
  memcpy(__dst, a2, sizeof(__dst));
  v7 = *v2;
  sub_266ABE244();
  sub_266ABE264();
  if (v6)
  {
    sub_266ABDB04();
  }

  if (a2[1])
  {
    sub_266ABE264();
    sub_266ABDB04();
  }

  else
  {
    sub_266ABE264();
  }

  v8 = sub_266ABE2A4();
  v9 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(v7 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      memcpy(v21, __dst, 0xA8uLL);
      __src[0] = *v3;
      sub_266A6E078(v21, v19);
      sub_266A9C014(v21, v10, isUniquelyReferenced_nonNull_native);
      *v3 = __src[0];
      memcpy(a1, __dst, 0xA8uLL);
      return v11 == 0;
    }

    v12 = *(v7 + 48) + 168 * v10;
    memcpy(v19, v12, sizeof(v19));
    memcpy(__src, v12, sizeof(__src));
    sub_266A6E078(v19, v17);
    LOBYTE(v12) = static DeviceModel.== infix(_:_:)(__src, __dst);
    memcpy(v21, __src, 0xA8uLL);
    sub_266A72578(v21);
    if (v12)
    {
      break;
    }

    v8 = v10 + 1;
  }

  memcpy(v17, __dst, sizeof(v17));
  sub_266A72578(v17);
  v14 = (*(v7 + 48) + 168 * v10);
  memcpy(__src, v14, sizeof(__src));
  memcpy(a1, v14, 0xA8uLL);
  sub_266A6E078(__src, v16);
  return v11 == 0;
}

uint64_t sub_266A9BD0C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2330, &qword_266AC35B8);
  result = sub_266ABDE74();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_31:

    *v2 = v5;
    return result;
  }

  v30 = v1;
  v31 = v3;
  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      sub_266AB3D70(0, (v29 + 63) >> 6, v7);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v30;
    *(v3 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = *(v3 + 48) + 168 * (v13 | (v6 << 6));
    v17 = *(v16 + 8);
    v32 = *v16;
    memcpy(__dst, (v16 + 16), sizeof(__dst));
    v19 = *(v16 + 104);
    v18 = *(v16 + 112);
    v33 = *(v16 + 120);
    v34 = *(v16 + 136);
    v35 = *(v16 + 152);
    sub_266ABE244();
    sub_266ABE264();
    if (v18)
    {
      sub_266ABDB04();
    }

    sub_266ABE264();
    if (v17)
    {
      sub_266ABDB04();
    }

    result = sub_266ABE2A4();
    v20 = -1 << *(v5 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = *(v5 + 48) + 168 * v23;
    *v28 = v32;
    *(v28 + 8) = v17;
    result = memcpy((v28 + 16), __dst, 0x58uLL);
    *(v28 + 104) = v19;
    *(v28 + 112) = v18;
    *(v28 + 120) = v33;
    *(v28 + 136) = v34;
    *(v28 + 152) = v35;
    ++*(v5 + 16);
    v3 = v31;
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = *(v12 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_25;
    }
  }

LABEL_33:
  __break(1u);
  return result;
}

void *sub_266A9C014(uint64_t *__src, unint64_t a2, char a3)
{
  v4 = v3;
  memcpy(__dst, __src, sizeof(__dst));
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_266A9BD0C(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_266A9C3B0(v8 + 1);
LABEL_10:
      v15 = __src[14];
      v16 = *v4;
      sub_266ABE244();
      sub_266ABE264();
      if (v15)
      {
        sub_266ABDB04();
      }

      if (__src[1])
      {
        sub_266ABE264();
        sub_266ABDB04();
      }

      else
      {
        sub_266ABE264();
      }

      v17 = sub_266ABE2A4();
      v18 = ~(-1 << *(v16 + 32));
      while (1)
      {
        a2 = v17 & v18;
        if (((*(v16 + 56 + (((v17 & v18) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v17 & v18)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v19 = *(v16 + 48) + 168 * a2;
        memcpy(v21, v19, sizeof(v21));
        memcpy(v20, v19, sizeof(v20));
        sub_266A6E078(v21, v22);
        LOBYTE(v19) = static DeviceModel.== infix(_:_:)(v20, __dst);
        memcpy(v22, v20, sizeof(v22));
        sub_266A72578(v22);
        if (v19)
        {
          goto LABEL_20;
        }

        v17 = a2 + 1;
      }
    }

    sub_266A9C228();
  }

LABEL_7:
  v10 = *v4;
  *(v10 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = memcpy((*(v10 + 48) + 168 * a2), __dst, 0xA8uLL);
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_20:
    result = sub_266ABE1E4();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

void *sub_266A9C228()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2330, &qword_266AC35B8);
  v2 = *v0;
  v3 = sub_266ABDE64();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; result = sub_266A6E078(__dst, v18))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = *(v2 + 48);
      v17 = 168 * (v13 | (v8 << 6));
      memcpy(__dst, (v16 + v17), 0xA8uLL);
      memmove((*(v4 + 48) + v17), (v16 + v17), 0xA8uLL);
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 56 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_266A9C3B0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2330, &qword_266AC35B8);
  result = sub_266ABDE74();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        memcpy(__dst, (*(v3 + 48) + 168 * (v12 | (v6 << 6))), 0xA8uLL);
        sub_266ABE244();
        if (__dst[14])
        {
          sub_266ABE264();
          sub_266A6E078(__dst, v23);
          sub_266ABDB04();
        }

        else
        {
          sub_266ABE264();
          sub_266A6E078(__dst, v23);
        }

        if (__dst[1])
        {
          sub_266ABE264();
          sub_266ABDB04();
        }

        else
        {
          sub_266ABE264();
        }

        result = sub_266ABE2A4();
        v15 = -1 << *(v5 + 32);
        v16 = result & ~v15;
        v17 = v16 >> 6;
        if (((-1 << v16) & ~*(v11 + 8 * (v16 >> 6))) == 0)
        {
          break;
        }

        v18 = __clz(__rbit64((-1 << v16) & ~*(v11 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
        *(v11 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
        result = memcpy((*(v5 + 48) + 168 * v18), __dst, 0xA8uLL);
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *(v11 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_27;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_31;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_31:
    *v2 = v5;
  }

  return result;
}

void sub_266A9C670()
{
  OUTLINED_FUNCTION_4_6();
  if (v0)
  {
    v3 = v2 + 32;
    do
    {
      sub_266A841B0(v3, v5);
      sub_266A95358();
      if (v4)
      {
        sub_266A9CB98(v1, v4);
      }

      sub_266A8420C(v5);
      v3 += 72;
      --v0;
    }

    while (v0);
  }
}

unint64_t sub_266A9C6EC()
{
  result = qword_2800B2240;
  if (!qword_2800B2240)
  {
    result = swift_getWitnessTable(aE_1, &type metadata for RequestModel.Keys, v0, v1);
    atomic_store(result, &qword_2800B2240);
  }

  return result;
}

unint64_t sub_266A9C740()
{
  result = qword_2800B2258;
  if (!qword_2800B2258)
  {
    result = swift_getWitnessTable("Q=w\x1BT=", &type metadata for ArbitrationModel, v0, v1);
    atomic_store(result, &qword_2800B2258);
  }

  return result;
}

uint64_t sub_266A9C794(unint64_t *a1, uint64_t (*a2)(void), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800B2248, &qword_266AC32B0);
    v8 = a2();
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_266A9C80C()
{
  result = qword_2800B2270;
  if (!qword_2800B2270)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ArbitrationModel, &type metadata for ArbitrationModel, v0, v1);
    atomic_store(result, &qword_2800B2270);
  }

  return result;
}

unint64_t sub_266A9C864()
{
  result = qword_2800B2278;
  if (!qword_2800B2278)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RequestModel, &type metadata for RequestModel, v0, v1);
    atomic_store(result, &qword_2800B2278);
  }

  return result;
}

uint64_t sub_266A9C958(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_266A9C998(uint64_t result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for RequestModel.Keys(_BYTE *result, int a2, int a3)
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

unint64_t sub_266A9CA94()
{
  result = qword_2800B2280;
  if (!qword_2800B2280)
  {
    result = swift_getWitnessTable(aLw, &type metadata for RequestModel.Keys, v0, v1);
    atomic_store(result, &qword_2800B2280);
  }

  return result;
}

unint64_t sub_266A9CAEC()
{
  result = qword_2800B2288;
  if (!qword_2800B2288)
  {
    result = swift_getWitnessTable(byte_266AC33D4, &type metadata for RequestModel.Keys, v0, v1);
    atomic_store(result, &qword_2800B2288);
  }

  return result;
}

unint64_t sub_266A9CB44()
{
  result = qword_2800B2290;
  if (!qword_2800B2290)
  {
    result = swift_getWitnessTable(byte_266AC33FC, &type metadata for RequestModel.Keys, v0, v1);
    atomic_store(result, &qword_2800B2290);
  }

  return result;
}

void sub_266A9CB98(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  MEMORY[0x26D5E8B00](v3);
  if (v3)
  {
    v4 = *(type metadata accessor for ParticipantModel(0) - 8);
    v5 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v6 = *(v4 + 72);
    do
    {
      ParticipantModel.hash(into:)();
      v5 += v6;
      --v3;
    }

    while (v3);
  }
}

void sub_266A9CC44()
{
  OUTLINED_FUNCTION_4_6();
  if (v0)
  {
    v2 = (v1 + 32);
    do
    {
      v3 = *v2++;
      MEMORY[0x26D5E8B00](v3);
      --v0;
    }

    while (v0);
  }
}

void sub_266A9CC84()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_4_6();
  if (v0)
  {
    v2 = v1 + 39;
    do
    {
      v3 = *(v2 - 6);
      v4 = *(v2 - 1);
      v2 += 8;
      sub_266ABE264();
      MEMORY[0x26D5E8B00](v3);
      sub_266ABE264();
      sub_266ABE264();
      sub_266ABE274();
      MEMORY[0x26D5E8B00](v4);
      sub_266ABE264();
      --v0;
    }

    while (v0);
  }

  OUTLINED_FUNCTION_30();
}

void sub_266A9CD14()
{
  OUTLINED_FUNCTION_4_6();
  if (v0)
  {
    v2 = (v1 + 32);
    do
    {
      memcpy(__dst, v2, sizeof(__dst));
      if (__dst[14])
      {
        sub_266ABE264();
        sub_266A6E078(__dst, v3);
        sub_266ABDB04();
      }

      else
      {
        sub_266ABE264();
        sub_266A6E078(__dst, v3);
      }

      if (__dst[1])
      {
        sub_266ABE264();
        sub_266ABDB04();
      }

      else
      {
        sub_266ABE264();
      }

      sub_266A72578(__dst);
      v2 += 168;
      --v0;
    }

    while (v0);
  }
}

void sub_266A9CDF0()
{
  OUTLINED_FUNCTION_4_6();
  if (v0)
  {
    v2 = (v1 + 48);
    do
    {
      v3 = *(v2 - 2);
      if ((v3 & 0x80000000) != 0)
      {
        MEMORY[0x26D5E8B00](1);
        MEMORY[0x26D5E8B00](v3);
        sub_266ABE284();
      }

      else
      {
        v5 = *(v2 - 1);
        v4 = *v2;
        MEMORY[0x26D5E8B00](0);
        MEMORY[0x26D5E8B00](v3);
        sub_266ABE284();
        if ((v5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v6 = v5;
        }

        else
        {
          v6 = 0;
        }

        MEMORY[0x26D5E8B40](v6);
        if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v7 = v4;
        }

        else
        {
          v7 = 0;
        }

        MEMORY[0x26D5E8B40](v7);
      }

      v2 += 3;
      --v0;
    }

    while (v0);
  }
}

unint64_t sub_266A9CEB0()
{
  result = qword_2800B22F8;
  if (!qword_2800B22F8)
  {
    result = swift_getWitnessTable("xF", &type metadata for BoostModel, v0, v1);
    atomic_store(result, &qword_2800B22F8);
  }

  return result;
}

void *sub_266A9CF04(void *result, char *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_21:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_21;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    v19 = -1 << *(a4 + 32);
    v14 = (63 - v7) >> 6;
    while (1)
    {
      if (v12 >= v10)
      {
        goto LABEL_24;
      }

      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_25;
      }

      if (!v9)
      {
        while (1)
        {
          v16 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v16 >= v14)
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_19;
          }

          v9 = *(v6 + 8 * v16);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v16 = v13;
LABEL_15:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 48) + 168 * (v17 | (v16 << 6)));
      memcpy(__dst, v18, 0xA8uLL);
      memmove(v11, v18, 0xA8uLL);
      if (v15 == v10)
      {
        break;
      }

      v11 += 168;
      result = sub_266A6E078(__dst, v20);
      v12 = v15;
      v13 = v16;
    }

    sub_266A6E078(__dst, v20);
    v13 = v16;
LABEL_19:
    v7 = v19;
    goto LABEL_21;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_266A9D098(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CC8, &unk_266AC0FD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_266A9D110()
{
  result = qword_2800B2328;
  if (!qword_2800B2328)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DeviceModel, &type metadata for DeviceModel, v0, v1);
    atomic_store(result, &qword_2800B2328);
  }

  return result;
}

void OUTLINED_FUNCTION_24_3(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

uint64_t OUTLINED_FUNCTION_39_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15)
{
  *(v16 + 16) = v15;

  return sub_266A6DBC4(&a15, v16 + v17 * v18 + 32);
}

uint64_t OUTLINED_FUNCTION_41_0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_dynamicCast();
}

id sub_266A9D1F4(uint64_t a1)
{
  result = [objc_allocWithZone(type metadata accessor for FeedbackServiceImpl()) init];
  qword_280BB6C70 = result;
  return result;
}

id FeedbackServiceImpl.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static FeedbackServiceImpl.sharedService.getter()
{
  if (qword_280BB6C68 != -1)
  {
    swift_once();
  }

  v1 = qword_280BB6C70;

  return v1;
}

uint64_t sub_266A9D3B8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback19FeedbackServiceImpl_delegate;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

char *sub_266A9D49C()
{
  v1 = v0 + OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback19FeedbackServiceImpl____lazy_storage___notificationService;
  v2 = *(v0 + OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback19FeedbackServiceImpl____lazy_storage___notificationService);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback19FeedbackServiceImpl____lazy_storage___notificationService);
  }

  else
  {
    v4 = type metadata accessor for LocalNotificationCenterImpl();
    v5 = objc_allocWithZone(v4);
    v15[3] = v4;
    v15[4] = &protocol witness table for LocalNotificationCenterImpl;
    v15[0] = sub_266A8B6B0(0);
    v6 = qword_280BB6C50;
    v7 = v15[0];
    if (v6 != -1)
    {
      OUTLINED_FUNCTION_3_7(&qword_280BB6C50);
    }

    v8 = qword_280BB6C58;
    objc_allocWithZone(type metadata accessor for UserNotificationServiceImpl());
    v9 = v8;
    v10 = sub_266A74D28(v15, 0, 0, v8);

    v11 = &v10[OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback27UserNotificationServiceImpl_delegate];
    swift_beginAccess();
    *(v11 + 1) = &protocol witness table for FeedbackServiceImpl;
    swift_unknownObjectWeakAssign();
    v12 = *v1;
    *v1 = v10;
    *(v1 + 8) = &protocol witness table for UserNotificationServiceImpl;
    v3 = v10;

    v2 = 0;
  }

  v13 = v2;
  return v3;
}

id sub_266A9D630(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback19FeedbackServiceImpl____lazy_storage___globals;
  if (*(v2 + OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback19FeedbackServiceImpl____lazy_storage___globals))
  {
    v4 = *(v2 + OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback19FeedbackServiceImpl____lazy_storage___globals);
  }

  else
  {
    if (qword_280BB6C50 != -1)
    {
      OUTLINED_FUNCTION_3_7(&qword_280BB6C50);
    }

    v5 = qword_280BB6C58;
    *(v2 + v3) = qword_280BB6C58;
    v4 = v5;
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v4;
}

void sub_266A9D88C()
{
  if (qword_280BB6C30 != -1)
  {
    OUTLINED_FUNCTION_10(&qword_280BB6C30);
  }

  v0 = sub_266ABD8D4();
  __swift_project_value_buffer(v0, qword_280BB7028);
  v1 = sub_266ABD8C4();
  v2 = sub_266ABDD54();
  if (OUTLINED_FUNCTION_14_0(v2))
  {
    v3 = OUTLINED_FUNCTION_25();
    v4 = OUTLINED_FUNCTION_23();
    v11 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_266A66D34(0xD00000000000001ALL, 0x8000000266ABFA80, &v11);
    OUTLINED_FUNCTION_17_3(&dword_266A65000, v5, v6, "#feedback FeedbackService - %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_8();
  }

  v10 = sub_266A9D49C();
  v8 = v7;
  ObjectType = swift_getObjectType();
  (*(v8 + 40))(ObjectType, v8);
}

id FeedbackServiceImpl.init()(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback19FeedbackServiceImpl_delegate] = 0;
  *&v1[OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback19FeedbackServiceImpl____lazy_storage___userfeedbackController] = 0;
  v2 = &v1[OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback19FeedbackServiceImpl____lazy_storage___notificationService];
  *v2 = 0;
  *(v2 + 1) = 0;
  *&v1[OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback19FeedbackServiceImpl____lazy_storage___globals] = 0;
  v4.receiver = v1;
  v4.super_class = type metadata accessor for FeedbackServiceImpl();
  return objc_msgSendSuper2(&v4, sel_init);
}

id FeedbackServiceImpl.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for FeedbackServiceImpl();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_266A9DB40(void *a1, uint64_t a2, void (**a3)(void))
{
  v6 = [a1 actionIdentifier];
  sub_266ABDA84();

  v7 = sub_266ABDFD4();

  if (!v7)
  {
    v15 = OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback19FeedbackServiceImpl_delegate;
    swift_beginAccess();
    v16 = *(a2 + v15);
    if (v16)
    {
      [v16 handleNotificationAction_];
    }

    if (qword_280BB6C30 != -1)
    {
      swift_once();
    }

    v17 = sub_266ABD8D4();
    __swift_project_value_buffer(v17, qword_280BB7028);
    v18 = sub_266ABD8C4();
    v19 = sub_266ABDD54();
    if (!os_log_type_enabled(v18, v19))
    {
      goto LABEL_15;
    }

    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v45 = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_266A66D34(0x6669636570736E75, 0xEB00000000646569, &v45);
    v22 = "#feedback FeedbackService - Setting launch action %s";
    goto LABEL_14;
  }

  v8 = [a1 actionIdentifier];
  v9 = sub_266ABDA84();
  v11 = v10;

  if (sub_266ABDA84() == v9 && v12 == v11)
  {

LABEL_17:

    if (qword_280BB6C30 != -1)
    {
      swift_once();
    }

    v23 = sub_266ABD8D4();
    __swift_project_value_buffer(v23, qword_280BB7028);
    v24 = sub_266ABD8C4();
    v25 = sub_266ABDD54();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_266A65000, v24, v25, "#feedback FeedbackService - notification dismissed", v26, 2u);
      MEMORY[0x26D5E9280](v26, -1, -1);
    }

    v27 = OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback19FeedbackServiceImpl_delegate;
    swift_beginAccess();
    v28 = *(a2 + v27);
    if (v28)
    {
      [v28 handleNotificationAction_];
    }

    goto LABEL_23;
  }

  v14 = sub_266ABE1C4();

  if (v14)
  {
    goto LABEL_17;
  }

  if (sub_266ABDA84() == v9 && v29 == v11)
  {
  }

  else
  {
    v31 = sub_266ABE1C4();

    if ((v31 & 1) == 0)
    {
      if (qword_280BB6C30 != -1)
      {
        swift_once();
      }

      v32 = sub_266ABD8D4();
      __swift_project_value_buffer(v32, qword_280BB7028);
      v33 = a1;
      v18 = sub_266ABD8C4();
      v19 = sub_266ABDD64();

      if (!os_log_type_enabled(v18, v19))
      {
        goto LABEL_15;
      }

      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v46[0] = v21;
      *v20 = 136315138;
      v34 = [v33 actionIdentifier];
      v35 = sub_266ABDA84();
      v37 = v36;

      v38 = sub_266A66D34(v35, v37, v46);

      *(v20 + 4) = v38;
      v22 = "#feedback FeedbackService - received unknown action %s on notification. Ignoring.";
LABEL_14:
      _os_log_impl(&dword_266A65000, v18, v19, v22, v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      MEMORY[0x26D5E9280](v21, -1, -1);
      MEMORY[0x26D5E9280](v20, -1, -1);
LABEL_15:

      goto LABEL_23;
    }
  }

  if (qword_280BB6C30 != -1)
  {
    swift_once();
  }

  v39 = sub_266ABD8D4();
  __swift_project_value_buffer(v39, qword_280BB7028);
  v40 = sub_266ABD8C4();
  v41 = sub_266ABDD54();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_266A65000, v40, v41, "#feedback FeedbackService - notification tapped without specific action", v42, 2u);
    MEMORY[0x26D5E9280](v42, -1, -1);
  }

  v43 = OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback19FeedbackServiceImpl_delegate;
  swift_beginAccess();
  v44 = *(a2 + v43);
  if (v44)
  {
    [v44 handleNotificationAction_];
  }

LABEL_23:
  a3[2](a3);
  _Block_release(a3);
}

uint64_t FeedbackServiceImpl.handle(response:completion:)(void *a1, uint64_t (*a2)(id))
{
  v3 = v2;
  v6 = [a1 actionIdentifier];
  sub_266ABDA84();

  v7 = sub_266ABDFD4();

  if (!v7)
  {
    v17 = OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback19FeedbackServiceImpl_delegate;
    OUTLINED_FUNCTION_6_6(v8);
    v18 = *(v3 + v17);
    if (v18)
    {
      [v18 handleNotificationAction_];
    }

    if (qword_280BB6C30 != -1)
    {
      OUTLINED_FUNCTION_10(&qword_280BB6C30);
    }

    v19 = sub_266ABD8D4();
    __swift_project_value_buffer(v19, qword_280BB7028);
    v20 = sub_266ABD8C4();
    v21 = sub_266ABDD54();
    if (!OUTLINED_FUNCTION_14_0(v21))
    {
      goto LABEL_15;
    }

    v22 = OUTLINED_FUNCTION_25();
    v23 = OUTLINED_FUNCTION_23();
    v56 = v23;
    *v22 = 136315138;
    *(v22 + 4) = sub_266A66D34(0x6669636570736E75, 0xEB00000000646569, &v56);
    v26 = "#feedback FeedbackService - Setting launch action %s";
    goto LABEL_14;
  }

  v9 = [a1 actionIdentifier];
  v10 = sub_266ABDA84();
  v12 = v11;

  v13 = sub_266ABDA84();
  if (v13 == v10 && v14 == v12)
  {

LABEL_17:

    if (qword_280BB6C30 != -1)
    {
      OUTLINED_FUNCTION_10(&qword_280BB6C30);
    }

    v28 = sub_266ABD8D4();
    __swift_project_value_buffer(v28, qword_280BB7028);
    v29 = sub_266ABD8C4();
    v30 = sub_266ABDD54();
    if (OUTLINED_FUNCTION_14_0(v30))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_18_4(&dword_266A65000, v31, v32, "#feedback FeedbackService - notification dismissed");
      OUTLINED_FUNCTION_7();
    }

    v33 = OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback19FeedbackServiceImpl_delegate;
    OUTLINED_FUNCTION_6_6(v34);
    v27 = *(v3 + v33);
    if (v27)
    {
      v27 = [v27 handleNotificationAction_];
    }

    return a2(v27);
  }

  v16 = OUTLINED_FUNCTION_16_5(v13);

  if (v16)
  {
    goto LABEL_17;
  }

  v36 = sub_266ABDA84();
  if (v36 == v10 && v37 == v12)
  {
  }

  else
  {
    v39 = OUTLINED_FUNCTION_16_5(v36);

    if ((v39 & 1) == 0)
    {
      if (qword_280BB6C30 != -1)
      {
        OUTLINED_FUNCTION_10(&qword_280BB6C30);
      }

      v40 = sub_266ABD8D4();
      __swift_project_value_buffer(v40, qword_280BB7028);
      v41 = a1;
      v20 = sub_266ABD8C4();
      v42 = sub_266ABDD64();

      if (!os_log_type_enabled(v20, v42))
      {
        goto LABEL_15;
      }

      v43 = OUTLINED_FUNCTION_25();
      v23 = OUTLINED_FUNCTION_23();
      v57[0] = v23;
      *v43 = 136315138;
      v44 = [v41 actionIdentifier];
      v45 = sub_266ABDA84();
      v47 = v46;

      v48 = sub_266A66D34(v45, v47, v57);

      *(v43 + 4) = v48;
      v26 = "#feedback FeedbackService - received unknown action %s on notification. Ignoring.";
LABEL_14:
      OUTLINED_FUNCTION_15_4(&dword_266A65000, v24, v25, v26);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_8();
LABEL_15:

      return a2(v27);
    }
  }

  if (qword_280BB6C30 != -1)
  {
    OUTLINED_FUNCTION_10(&qword_280BB6C30);
  }

  v49 = sub_266ABD8D4();
  __swift_project_value_buffer(v49, qword_280BB7028);
  v50 = sub_266ABD8C4();
  v51 = sub_266ABDD54();
  if (OUTLINED_FUNCTION_14_0(v51))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_18_4(&dword_266A65000, v52, v53, "#feedback FeedbackService - notification tapped without specific action");
    OUTLINED_FUNCTION_7();
  }

  v54 = OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback19FeedbackServiceImpl_delegate;
  OUTLINED_FUNCTION_6_6(v55);
  v27 = *(v3 + v54);
  if (v27)
  {
    v27 = [v27 handleNotificationAction_];
  }

  return a2(v27);
}