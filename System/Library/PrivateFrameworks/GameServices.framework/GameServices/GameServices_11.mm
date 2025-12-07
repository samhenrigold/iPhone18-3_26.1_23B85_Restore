uint64_t AchievementProgress.hashValue.getter()
{
  sub_1D8581B58();
  AchievementProgress.hash(into:)(v1);
  return sub_1D8581B98();
}

uint64_t AchievementProgress.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39300, &unk_1D8591030);
  OUTLINED_FUNCTION_363(v4);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v39 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A878, &qword_1D85A5068);
  OUTLINED_FUNCTION_1();
  v41 = v8;
  v42 = v9;
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_129();
  v11 = type metadata accessor for AchievementProgress(0);
  v12 = OUTLINED_FUNCTION_363(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_1();
  v15 = v14 - v13;
  v17 = *(v16 + 40);
  v18 = sub_1D8580EA8();
  v44 = v17;
  __swift_storeEnumTagSinglePayload(v15 + v17, 1, 1, v18);
  v19 = a1[3];
  v43 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_1D8551080();
  sub_1D8581BA8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v43);
    return sub_1D84F589C(v15 + v44, &qword_1ECA39300, &unk_1D8591030);
  }

  else
  {
    v39 = v7;
    v20 = OUTLINED_FUNCTION_150();
    __swift_instantiateConcreteTypeFromMangledNameV2(v20, v21);
    v47 = 0;
    OUTLINED_FUNCTION_2_0();
    sub_1D844A16C(v22, v23, &qword_1D8590B30, v24);
    OUTLINED_FUNCTION_164_1();
    OUTLINED_FUNCTION_172_1();
    v25 = v46;
    *v15 = v45;
    *(v15 + 8) = v25;
    v26 = OUTLINED_FUNCTION_150();
    __swift_instantiateConcreteTypeFromMangledNameV2(v26, v27);
    v47 = 1;
    OUTLINED_FUNCTION_2_0();
    sub_1D844A16C(v28, v29, &unk_1D8595FE0, v30);
    OUTLINED_FUNCTION_164_1();
    OUTLINED_FUNCTION_172_1();
    v31 = v46;
    *(v15 + 16) = v45;
    *(v15 + 24) = v31;
    OUTLINED_FUNCTION_157_1(2);
    sub_1D8581928();
    *(v15 + 32) = v32;
    OUTLINED_FUNCTION_157_1(3);
    *(v15 + 40) = sub_1D8581918() & 1;
    LOBYTE(v45) = 4;
    OUTLINED_FUNCTION_7_7();
    sub_1D855139C(v33, 255, v34, MEMORY[0x1E6969558]);
    v35 = v39;
    sub_1D85818E8();
    v36 = OUTLINED_FUNCTION_152_3();
    v37(v36);
    sub_1D8551010(v35, v15 + v44);
    sub_1D85510D4(v15, v40);
    __swift_destroy_boxed_opaque_existential_1(v43);
    return sub_1D8551138(v15);
  }
}

uint64_t sub_1D8550A98(uint64_t a1)
{
  sub_1D8581B58();
  AchievementProgress.hash(into:)(v2);
  return sub_1D8581B98();
}

unint64_t sub_1D8550E78()
{
  result = qword_1ECA53380;
  if (!qword_1ECA53380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA53380);
  }

  return result;
}

uint64_t sub_1D8550ECC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39AA8, &qword_1D859A9B0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D8550FA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39300, &unk_1D8591030);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8551010(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39300, &unk_1D8591030);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D8551080()
{
  result = qword_1ECA53388[0];
  if (!qword_1ECA53388[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA53388);
  }

  return result;
}

uint64_t sub_1D85510D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AchievementProgress(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8551138(uint64_t a1)
{
  v2 = type metadata accessor for AchievementProgress(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D8551240(uint64_t a1)
{
  OUTLINED_FUNCTION_0_13();
  result = sub_1D855139C(v2, v3, v4, &protocol conformance descriptor for $DistributedAchievementServiceProtocol);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D85512FC()
{
  result = qword_1ECA3A890;
  if (!qword_1ECA3A890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3A890);
  }

  return result;
}

uint64_t sub_1D855139C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t dispatch thunk of AchievementServiceProtocol.describe(achievements:)()
{
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_296(v0, v1, v2);
  OUTLINED_FUNCTION_130_1();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_176(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_191(v4);
  v6 = OUTLINED_FUNCTION_310();

  return v7(v6);
}

uint64_t dispatch thunk of AchievementServiceProtocol.listAchievements(games:after:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_478();
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_28(v10, v11, v12, v13);
  OUTLINED_FUNCTION_54();
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_176(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_13(v15);
  OUTLINED_FUNCTION_471();

  return v21(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t dispatch thunk of AchievementServiceProtocol.getProgress(achievements:belongingTo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_478();
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_28(v10, v11, v12, v13);
  OUTLINED_FUNCTION_54();
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_176(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_13(v15);
  OUTLINED_FUNCTION_471();

  return v21(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t dispatch thunk of AchievementServiceProtocol.listFriends(having:after:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_478();
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_28(v10, v11, v12, v13);
  OUTLINED_FUNCTION_54();
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_176(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_13(v15);
  OUTLINED_FUNCTION_471();

  return v21(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t dispatch thunk of AchievementServiceProtocol.resetProgress(achievements:belongingTo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_478();
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_28(v10, v11, v12, v13);
  OUTLINED_FUNCTION_54();
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_176(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_13(v15);
  OUTLINED_FUNCTION_471();

  return v21(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t dispatch thunk of AchievementServiceProtocol.reveal(achievements:belongingTo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_478();
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_28(v10, v11, v12, v13);
  OUTLINED_FUNCTION_54();
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_176(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_13(v15);
  OUTLINED_FUNCTION_471();

  return v21(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t dispatch thunk of AchievementServiceProtocol.submit(progress:)()
{
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_296(v0, v1, v2);
  OUTLINED_FUNCTION_130_1();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_176(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_191(v4);
  v6 = OUTLINED_FUNCTION_310();

  return v7(v6);
}

uint64_t dispatch thunk of AchievementServiceProtocol.clearCache()()
{
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_129_0();
  OUTLINED_FUNCTION_54();
  v7 = (v2 + *v2);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_176(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_191(v4);

  return v7(v1, v0);
}

uint64_t sub_1D8551BEC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 169))
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

uint64_t sub_1D8551C2C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 168) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 169) = 1;
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

    *(result + 169) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1D8551CD0(uint64_t a1)
{
  sub_1D8449F34(319, &qword_1EE0E0088, &qword_1ECA38A18, &qword_1D8590940);
  if (v1 <= 0x3F)
  {
    sub_1D8449F34(319, &qword_1EE0E0098, &qword_1ECA3A328, &unk_1D85A2280);
    if (v2 <= 0x3F)
    {
      sub_1D847ECC0(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

_BYTE *storeEnumTagSinglePayload for AchievementProgress.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AchievementDescription.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF3)
  {
    if (a2 + 13 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 13) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 14;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v5 = v6 - 14;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AchievementDescription.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF2)
  {
    v6 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
          *result = a2 + 13;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D8551FF8()
{
  result = qword_1ECA53C90[0];
  if (!qword_1ECA53C90[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA53C90);
  }

  return result;
}

unint64_t sub_1D8552050()
{
  result = qword_1ECA53EA0[0];
  if (!qword_1ECA53EA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA53EA0);
  }

  return result;
}

unint64_t sub_1D85520A8()
{
  result = qword_1ECA53FB0;
  if (!qword_1ECA53FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA53FB0);
  }

  return result;
}

unint64_t sub_1D8552100()
{
  result = qword_1ECA53FB8[0];
  if (!qword_1ECA53FB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA53FB8);
  }

  return result;
}

unint64_t sub_1D8552158()
{
  result = qword_1ECA54040;
  if (!qword_1ECA54040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA54040);
  }

  return result;
}

unint64_t sub_1D85521B0()
{
  result = qword_1ECA54048[0];
  if (!qword_1ECA54048[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA54048);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_74_2(unint64_t *a1)
{

  return sub_1D844A16C(a1, v1, v2, &protocol conformance descriptor for Ref<A>);
}

uint64_t OUTLINED_FUNCTION_89_2()
{
  v1 = *(v0 + 128);
  *(v0 + 72) = *(v0 + 136);
  *(v0 + 40) = *(v0 + 216);
  return *(v1 + 16);
}

uint64_t OUTLINED_FUNCTION_98_4()
{
  *(v0 + 176) = $DistributedAchievementServiceProtocol.actorSystem.getter();

  return GameServicesActorSystem.makeInvocationEncoder()((v0 + 16));
}

uint64_t OUTLINED_FUNCTION_137_2()
{
  *(v0 + 88) = *(v0 + 104);
}

uint64_t OUTLINED_FUNCTION_141_2()
{
  v2 = v0[11];
  v0[5] = v0[10];
  v0[6] = v2;
}

uint64_t OUTLINED_FUNCTION_174_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1D8581038();
}

uint64_t OUTLINED_FUNCTION_179_1(uint64_t a1, uint64_t a2)
{

  return sub_1D8581028();
}

void __swiftcall ProfileSettings.init(gamesPrivacyVersion:gamesCrossUseVersion:)(GameServices::ProfileSettings *__return_ptr retstr, Swift::Int_optional gamesPrivacyVersion, Swift::Int_optional gamesCrossUseVersion)
{
  v4 = sub_1D8552684(gamesPrivacyVersion.value, gamesPrivacyVersion.is_nil);
  v5 = OUTLINED_FUNCTION_108_6();
  retstr->gdprVersion.value = 0;
  retstr->gdprVersion.is_nil = 1;
  *(&retstr->gamesPrivacyVersion.value + 7) = v4;
  BYTE6(retstr->gamesCrossUseVersion.value) = v7;
  *(&retstr->linkedDSID.value + 5) = v5;
  BYTE4(retstr[1].gdprVersion.value) = v6 & 1;
  *(&retstr[1].gamesPrivacyVersion.value + 3) = 0;
  BYTE2(retstr[1].gamesCrossUseVersion.value) = 1;
}

void __swiftcall ProfileSettings.init(gdprVersion:gamesPrivacyVersion:gamesCrossUseVersion:)(GameServices::ProfileSettings *__return_ptr retstr, Swift::Int_optional gdprVersion, Swift::Int_optional gamesPrivacyVersion, Swift::Int_optional gamesCrossUseVersion)
{
  is_nil = gamesPrivacyVersion.is_nil;
  value = gamesPrivacyVersion.value;
  v7 = sub_1D8552684(gdprVersion.value, gdprVersion.is_nil);
  v13 = v8 & 1;
  v9 = sub_1D8552684(value, is_nil);
  v10 = OUTLINED_FUNCTION_108_6();
  retstr->gdprVersion.value = v7;
  retstr->gdprVersion.is_nil = v13;
  *(&retstr->gamesPrivacyVersion.value + 7) = v9;
  BYTE6(retstr->gamesCrossUseVersion.value) = v12;
  *(&retstr->linkedDSID.value + 5) = v10;
  BYTE4(retstr[1].gdprVersion.value) = v11 & 1;
  *(&retstr[1].gamesPrivacyVersion.value + 3) = 0;
  BYTE2(retstr[1].gamesCrossUseVersion.value) = 1;
}

void __swiftcall ProfileSettings.init(gdprVersion:gamesPrivacyVersion:gamesCrossUseVersion:linkedDSID:)(GameServices::ProfileSettings *__return_ptr retstr, Swift::Int_optional gdprVersion, Swift::Int_optional gamesPrivacyVersion, Swift::Int_optional gamesCrossUseVersion, Swift::Int_optional linkedDSID)
{
  is_nil = linkedDSID.is_nil;
  value = linkedDSID.value;
  v7 = gamesCrossUseVersion.is_nil;
  v8 = gamesCrossUseVersion.value;
  v9 = gamesPrivacyVersion.is_nil;
  v10 = gamesPrivacyVersion.value;
  v12 = sub_1D8552684(gdprVersion.value, gdprVersion.is_nil);
  v19 = v13 & 1;
  v14 = sub_1D8552684(v10, v9);
  v18 = v15 & 1;
  v16 = sub_1D8552684(v8, v7);
  retstr->gdprVersion.value = v12;
  retstr->gdprVersion.is_nil = v19;
  *(&retstr->gamesPrivacyVersion.value + 7) = v14;
  BYTE6(retstr->gamesCrossUseVersion.value) = v18;
  *(&retstr->linkedDSID.value + 5) = v16;
  BYTE4(retstr[1].gdprVersion.value) = v17 & 1;
  *(&retstr[1].gamesPrivacyVersion.value + 3) = value;
  BYTE2(retstr[1].gamesCrossUseVersion.value) = is_nil;
}

uint64_t sub_1D8552684(uint64_t a1, char a2)
{
  v4 = sub_1D85810A8();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) == 0 && a1 < 0)
  {
    v10 = sub_1D85369C4();
    (*(v6 + 16))(v9, v10, v4);
    v11 = sub_1D8581088();
    v12 = sub_1D8581688();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1D8433000, v11, v12, "Attempting to set a notice version to an invalid value, which will be ignored.", v13, 2u);
      MEMORY[0x1DA719810](v13, -1, -1);
    }

    v14 = OUTLINED_FUNCTION_80();
    v15(v14);
    return 0;
  }

  return a1;
}

uint64_t static ProfileSettings.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 == *a2)
    {
      v8 = *(a2 + 8);
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      return 0;
    }
  }

  if (v3)
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (v2 == *(a2 + 16))
    {
      v9 = *(a2 + 24);
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  if (v5)
  {
    if (!*(a2 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (v4 == *(a2 + 32))
    {
      v10 = *(a2 + 40);
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  if (v7)
  {
    if ((*(a2 + 56) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v6 == *(a2 + 48))
    {
      v12 = *(a2 + 56);
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1D8552890(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_93_2();
  v6 = a1 == v4 && a2 == v5;
  if (v6 || (OUTLINED_FUNCTION_7(v4, v5) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v8 = a1 == 0xD000000000000013 && 0x80000001D8588B60 == a2;
    if (v8 || (OUTLINED_FUNCTION_7(0xD000000000000013, 0x80000001D8588B60) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v9 = OUTLINED_FUNCTION_95_4();
      v11 = v6 && v10 == a2;
      if (v11 || (OUTLINED_FUNCTION_7(v9, v10) & 1) != 0)
      {

        return 2;
      }

      else
      {
        v12 = OUTLINED_FUNCTION_57_3();
        if (v6 && a2 == v13)
        {

          return 3;
        }

        else
        {
          v15 = OUTLINED_FUNCTION_7(v12, 0xEA00000000004449);

          if (v15)
          {
            return 3;
          }

          else
          {
            return 4;
          }
        }
      }
    }
  }
}

void sub_1D8552994()
{
  OUTLINED_FUNCTION_93_2();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_186_1();
      break;
    default:
      return;
  }
}

uint64_t sub_1D8552A28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D8552890(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D8552A50()
{
  sub_1D8552C94();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D8552A88()
{
  sub_1D8552C94();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void ProfileSettings.encode(to:)()
{
  OUTLINED_FUNCTION_285();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A8A0, &qword_1D85A5D60);
  OUTLINED_FUNCTION_1();
  v6 = v5;
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_110();
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1D8552C94();
  sub_1D8581BB8();
  sub_1D85819C8();
  if (!v0)
  {
    OUTLINED_FUNCTION_378_0();
    OUTLINED_FUNCTION_232();
    sub_1D85819C8();
    OUTLINED_FUNCTION_232();
    sub_1D85819C8();
    OUTLINED_FUNCTION_232();
    sub_1D85819C8();
  }

  (*(v6 + 8))(v1, v4);
  OUTLINED_FUNCTION_284_0();
}

unint64_t sub_1D8552C94()
{
  result = qword_1ECA540D0;
  if (!qword_1ECA540D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA540D0);
  }

  return result;
}

uint64_t ProfileSettings.hash(into:)()
{
  v1 = v0[2];
  v2 = *(v0 + 24);
  v3 = v0[4];
  v4 = *(v0 + 40);
  v5 = v0[6];
  v6 = *(v0 + 56);
  if (*(v0 + 8) == 1)
  {
    sub_1D8581B78();
    if (!v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = *v0;
    sub_1D8581B78();
    MEMORY[0x1DA7191F0](v8);
    if (!v2)
    {
LABEL_3:
      sub_1D8581B78();
      MEMORY[0x1DA7191F0](v1);
      if (!v4)
      {
        goto LABEL_4;
      }

LABEL_8:
      sub_1D8581B78();
      if (!v6)
      {
        goto LABEL_5;
      }

      return sub_1D8581B78();
    }
  }

  sub_1D8581B78();
  if (v4)
  {
    goto LABEL_8;
  }

LABEL_4:
  sub_1D8581B78();
  MEMORY[0x1DA7191F0](v3);
  if (!v6)
  {
LABEL_5:
    sub_1D8581B78();
    return MEMORY[0x1DA7191F0](v5);
  }

  return sub_1D8581B78();
}

uint64_t ProfileSettings.hashValue.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_379(a1);
  ProfileSettings.hash(into:)();
  return sub_1D8581B98();
}

void ProfileSettings.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, char a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_285();
  v27 = v26;
  v29 = v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A8A8, &qword_1D85A5D68);
  OUTLINED_FUNCTION_1();
  v32 = v31;
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v50 - v34;
  __swift_project_boxed_opaque_existential_1(v27, v27[3]);
  v36 = sub_1D8552C94();
  OUTLINED_FUNCTION_88_2(&unk_1F5396D20, v37, v36);
  if (!v25)
  {
    OUTLINED_FUNCTION_64_1();
    v38 = sub_1D85818C8();
    v56 = v39 & 1;
    OUTLINED_FUNCTION_378_0();
    OUTLINED_FUNCTION_64_1();
    v40 = sub_1D85818C8();
    v55 = v41 & 1;
    OUTLINED_FUNCTION_64_1();
    v52 = sub_1D85818C8();
    v54 = v42 & 1;
    OUTLINED_FUNCTION_64_1();
    v43 = sub_1D85818C8();
    v45 = v44;
    v46 = *(v32 + 8);
    v51 = v43;
    v46(v35, v30);
    v53 = v45 & 1;
    v47 = v55;
    v48 = v54;
    *v29 = v38;
    *(v29 + 8) = v56;
    *(v29 + 16) = v40;
    *(v29 + 24) = v47;
    v49 = v51;
    *(v29 + 32) = v52;
    *(v29 + 40) = v48;
    *(v29 + 48) = v49;
    *(v29 + 56) = v45 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(v27);
  OUTLINED_FUNCTION_284_0();
}

uint64_t sub_1D8553038(uint64_t a1)
{
  sub_1D8581B58();
  ProfileSettings.hash(into:)();
  return sub_1D8581B98();
}

GameServices::OnboardingState::PrivacyInfo __swiftcall OnboardingState.PrivacyInfo.init(currentVersion:noticeAccepted:)(Swift::Int_optional currentVersion, Swift::Bool noticeAccepted)
{
  *v2 = currentVersion.value;
  *(v2 + 8) = currentVersion.is_nil;
  *(v2 + 9) = noticeAccepted;
  result.currentVersion = currentVersion;
  return result;
}

uint64_t sub_1D8553094(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x56746E6572727563 && a2 == 0xEE006E6F69737265;
  if (v4 || (OUTLINED_FUNCTION_7(0x56746E6572727563, 0xEE006E6F69737265) & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6341656369746F6ELL && a2 == 0xEE00646574706563)
  {

    return 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_7(0x6341656369746F6ELL, 0xEE00646574706563);

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

uint64_t sub_1D8553154(char a1)
{
  if (a1)
  {
    return 0x6341656369746F6ELL;
  }

  else
  {
    return 0x56746E6572727563;
  }
}

uint64_t sub_1D85531AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D8553094(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D85531D4()
{
  sub_1D8553390();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D855320C()
{
  sub_1D8553390();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void OnboardingState.PrivacyInfo.encode(to:)()
{
  OUTLINED_FUNCTION_285();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A8B0, &qword_1D85A5D70);
  OUTLINED_FUNCTION_1();
  v6 = v5;
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_110();
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1D8553390();
  sub_1D8581BB8();
  sub_1D85819C8();
  if (!v0)
  {
    OUTLINED_FUNCTION_378_0();
    OUTLINED_FUNCTION_232();
    sub_1D8581A18();
  }

  (*(v6 + 8))(v1, v4);
  OUTLINED_FUNCTION_284_0();
}

unint64_t sub_1D8553390()
{
  result = qword_1ECA540D8;
  if (!qword_1ECA540D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA540D8);
  }

  return result;
}

void OnboardingState.PrivacyInfo.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, __int16 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_285();
  a21 = v23;
  a22 = v24;
  v26 = v25;
  v28 = v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A8B8, &qword_1D85A5D78);
  OUTLINED_FUNCTION_1();
  v31 = v30;
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &a9 - v33;
  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  v35 = sub_1D8553390();
  OUTLINED_FUNCTION_88_2(&unk_1F5396C90, v36, v35);
  if (!v22)
  {
    HIBYTE(a12) = 0;
    OUTLINED_FUNCTION_64_1();
    v37 = sub_1D85818C8();
    v39 = v38;
    OUTLINED_FUNCTION_378_0();
    OUTLINED_FUNCTION_64_1();
    v40 = sub_1D8581918();
    (*(v31 + 8))(v34, v29);
    *v28 = v37;
    *(v28 + 8) = v39 & 1;
    *(v28 + 9) = v40 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(v26);
  OUTLINED_FUNCTION_284_0();
}

uint64_t OnboardingState.init(ref:gdprPrivacyInfo:gamesPrivacyInfo:gamesCrossUsePrivacyInfo:isDefaultNickname:isDefaultPrivacyVisibility:isDefaultContactsIntegrationConsent:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, char a5@<W4>, char a6@<W5>, char a7@<W6>, uint64_t a8@<X8>)
{
  v8 = *a1;
  v9 = a1[1];
  v10 = *a2;
  v11 = *(a2 + 8);
  v12 = *(a2 + 9);
  v13 = *a3;
  v14 = *(a3 + 9);
  v15 = *a4;
  result = *(a4 + 8);
  v17 = *(a4 + 9);
  v18 = *(a3 + 8);
  *a8 = v8;
  *(a8 + 8) = v9;
  *(a8 + 16) = v10;
  *(a8 + 24) = v11;
  *(a8 + 25) = v12;
  *(a8 + 32) = v13;
  *(a8 + 40) = v18;
  *(a8 + 41) = v14;
  *(a8 + 48) = v15;
  *(a8 + 56) = result;
  *(a8 + 57) = v17;
  *(a8 + 58) = a5;
  *(a8 + 59) = a6;
  *(a8 + 60) = a7;
  *(a8 + 64) = 0;
  *(a8 + 72) = 1;
  return result;
}

uint64_t OnboardingState.init(ref:gdprPrivacyInfo:gamesPrivacyInfo:gamesCrossUsePrivacyInfo:isDefaultNickname:isDefaultPrivacyVisibility:isDefaultContactsIntegrationConsent:linkedDSID:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, char a5@<W4>, char a6@<W5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10)
{
  v10 = *a1;
  v11 = a1[1];
  v12 = *a2;
  v13 = *(a2 + 8);
  v14 = *(a2 + 9);
  v15 = *a3;
  v16 = *(a3 + 8);
  v17 = *(a3 + 9);
  result = *a4;
  v19 = *(a4 + 8);
  v20 = *(a4 + 9);
  *a9 = v10;
  *(a9 + 8) = v11;
  *(a9 + 16) = v12;
  *(a9 + 24) = v13;
  *(a9 + 25) = v14;
  *(a9 + 32) = v15;
  *(a9 + 40) = v16;
  *(a9 + 41) = v17;
  *(a9 + 48) = result;
  *(a9 + 56) = v19;
  *(a9 + 57) = v20;
  *(a9 + 58) = a5;
  *(a9 + 59) = a6;
  *(a9 + 60) = a7;
  *(a9 + 64) = a8;
  *(a9 + 72) = a10 & 1;
  return result;
}

uint64_t sub_1D85536E4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6710642 && a2 == 0xE300000000000000;
  if (v3 || (OUTLINED_FUNCTION_7(6710642, 0xE300000000000000) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = OUTLINED_FUNCTION_84_2();
    v8 = a1 == v6 && a2 == v7;
    if (v8 || (OUTLINED_FUNCTION_7(v6, v7) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v9 = a1 == 0xD000000000000010 && 0x80000001D8588BA0 == a2;
      if (v9 || (OUTLINED_FUNCTION_7(0xD000000000000010, 0x80000001D8588BA0) & 1) != 0)
      {

        return 2;
      }

      else
      {
        v10 = a1 == 0xD000000000000018 && 0x80000001D8588BC0 == a2;
        if (v10 || (OUTLINED_FUNCTION_7(0xD000000000000018, 0x80000001D8588BC0) & 1) != 0)
        {

          return 3;
        }

        else
        {
          v11 = OUTLINED_FUNCTION_95_4();
          v13 = v3 && v12 == a2;
          if (v13 || (OUTLINED_FUNCTION_7(v11, v12) & 1) != 0)
          {

            return 4;
          }

          else
          {
            v14 = a1 == 0xD00000000000001ALL && 0x80000001D8588C00 == a2;
            if (v14 || (OUTLINED_FUNCTION_7(0xD00000000000001ALL, 0x80000001D8588C00) & 1) != 0)
            {

              return 5;
            }

            else
            {
              v15 = a1 == 0xD000000000000023 && 0x80000001D8588C20 == a2;
              if (v15 || (OUTLINED_FUNCTION_7(0xD000000000000023, 0x80000001D8588C20) & 1) != 0)
              {

                return 6;
              }

              else
              {
                v16 = OUTLINED_FUNCTION_57_3();
                if (v3 && a2 == v17)
                {

                  return 7;
                }

                else
                {
                  v19 = OUTLINED_FUNCTION_7(v16, 0xEA00000000004449);

                  if (v19)
                  {
                    return 7;
                  }

                  else
                  {
                    return 8;
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

void sub_1D85538CC(char a1)
{
  switch(a1)
  {
    case 1:
      OUTLINED_FUNCTION_84_2();
      break;
    case 2:
      OUTLINED_FUNCTION_186_1();
      break;
    default:
      return;
  }
}

uint64_t sub_1D85539D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D85536E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D85539FC()
{
  sub_1D8553D70();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D8553A34()
{
  sub_1D8553D70();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void OnboardingState.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_285();
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A8C0, &unk_1D85A5D80);
  OUTLINED_FUNCTION_1();
  v30 = v29;
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_110();
  __swift_project_boxed_opaque_existential_1(v27, v27[3]);
  sub_1D8553D70();

  sub_1D8581BB8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA389B8, &qword_1D8590B30);
  OUTLINED_FUNCTION_2_7();
  sub_1D85542B4(v32, v33);
  sub_1D8581A58();

  if (!v24)
  {
    v34 = sub_1D8553DC4();
    v37 = OUTLINED_FUNCTION_38_3(v34, v35, v36, &type metadata for OnboardingState.PrivacyInfo);
    v40 = OUTLINED_FUNCTION_38_3(v37, v38, v39, &type metadata for OnboardingState.PrivacyInfo);
    OUTLINED_FUNCTION_38_3(v40, v41, v42, &type metadata for OnboardingState.PrivacyInfo);
    OUTLINED_FUNCTION_232();
    sub_1D8581A18();
    OUTLINED_FUNCTION_232();
    sub_1D8581A18();
    OUTLINED_FUNCTION_232();
    sub_1D8581A18();
    OUTLINED_FUNCTION_232();
    sub_1D85819C8();
  }

  (*(v30 + 8))(v25, v28);
  OUTLINED_FUNCTION_284_0();
}

unint64_t sub_1D8553D70()
{
  result = qword_1ECA540E0[0];
  if (!qword_1ECA540E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA540E0);
  }

  return result;
}

unint64_t sub_1D8553DC4()
{
  result = qword_1ECA3A8C8;
  if (!qword_1ECA3A8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3A8C8);
  }

  return result;
}

void OnboardingState.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, __int16 a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_285();
  v26 = v25;
  v28 = v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A8D0, &qword_1D85A5D90);
  OUTLINED_FUNCTION_1();
  v31 = v30;
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v51 - v33;
  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  sub_1D8553D70();
  sub_1D8581BA8();
  if (v24)
  {
    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA389B8, &qword_1D8590B30);
    LOBYTE(v63[0]) = 0;
    OUTLINED_FUNCTION_1_8();
    sub_1D85542B4(v35, v36);
    sub_1D8581958();
    v37 = v64;
    v62 = v65;
    LOBYTE(v63[0]) = 1;
    sub_1D8554304();
    OUTLINED_FUNCTION_26_4(&type metadata for OnboardingState.PrivacyInfo);
    v61 = v37;
    OUTLINED_FUNCTION_71_1(v64);
    v83 = v38;
    LOBYTE(v63[0]) = 2;
    OUTLINED_FUNCTION_26_4(&type metadata for OnboardingState.PrivacyInfo);
    v59 = v37;
    OUTLINED_FUNCTION_71_1(v64);
    v82 = v39;
    LOBYTE(v63[0]) = 3;
    OUTLINED_FUNCTION_26_4(&type metadata for OnboardingState.PrivacyInfo);
    v57 = v37;
    OUTLINED_FUNCTION_71_1(v64);
    v81 = v40;
    v41 = OUTLINED_FUNCTION_47_1(4);
    v55 = v37;
    LOBYTE(v37) = OUTLINED_FUNCTION_47_1(5);
    v54 = OUTLINED_FUNCTION_47_1(6);
    v42 = sub_1D85818C8();
    v43 = v41 & 1;
    HIDWORD(v51) = v37 & 1;
    LOBYTE(v37) = v54 & 1;
    v44 = v42;
    v45 = v34;
    v47 = v46;
    (*(v31 + 8))(v45, v29);
    v48 = v47 & 1;
    v80 = v47 & 1;
    v63[0] = v61;
    v63[1] = v62;
    v63[2] = v60;
    v54 = v83;
    LOBYTE(v63[3]) = v83;
    BYTE1(v63[3]) = v59;
    v63[4] = v58;
    v53 = v82;
    LOBYTE(v63[5]) = v82;
    BYTE1(v63[5]) = v57;
    v63[6] = v56;
    v52 = v81;
    LOBYTE(v63[7]) = v81;
    v49 = v55;
    BYTE1(v63[7]) = v55;
    BYTE2(v63[7]) = v43;
    v50 = BYTE4(v51);
    BYTE3(v63[7]) = BYTE4(v51);
    BYTE4(v63[7]) = v37;
    v63[8] = v44;
    LOBYTE(v63[9]) = v48;
    memcpy(v28, v63, 0x49uLL);
    sub_1D8554358(v63, &v64);
    __swift_destroy_boxed_opaque_existential_1(v26);
    v64 = v61;
    v65 = v62;
    v66 = v60;
    v67 = v54;
    v68 = v59;
    v69 = v58;
    v70 = v53;
    v71 = v57;
    v72 = v56;
    v73 = v52;
    v74 = v49;
    v75 = v43;
    v76 = v50;
    v77 = v37;
    v78 = v44;
    v79 = v48;
    sub_1D8554390(&v64);
  }

  OUTLINED_FUNCTION_284_0();
}

uint64_t sub_1D85542B4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA389B8, &qword_1D8590B30);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D8554304()
{
  result = qword_1ECA3A8D8;
  if (!qword_1ECA3A8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3A8D8);
  }

  return result;
}

GameServices::AgeCategory_optional __swiftcall AgeCategory.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_416();
  v2 = sub_1D8581868();

  v4 = 4;
  if (v2 < 4)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t AgeCategory.rawValue.getter()
{
  result = 0x6E776F6E6B6E75;
  switch(*v0)
  {
    case 1:
      result = 0x746C756461;
      break;
    case 2:
      result = 0x656373656C6F6461;
      break;
    case 3:
      result = 0x646C696863;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D85544CC@<X0>(uint64_t *a1@<X8>)
{
  result = AgeCategory.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D85544F4()
{
  OUTLINED_FUNCTION_99();
  sub_1D855A904();
  OUTLINED_FUNCTION_102();
  return sub_1D8581438();
}

uint64_t sub_1D855453C()
{
  OUTLINED_FUNCTION_99();
  sub_1D855A904();
  OUTLINED_FUNCTION_102();
  return sub_1D85813E8();
}

uint64_t sub_1D8554580(unsigned __int8 a1, char a2)
{
  v2 = 0x746553746F6ELL;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x746553746F6ELL;
  switch(v4)
  {
    case 1:
      v5 = 0x74754F74706FLL;
      break;
    case 2:
      v3 = 0xE500000000000000;
      v5 = 0x6E4974706FLL;
      break;
    case 3:
      v3 = 0xE700000000000000;
      v5 = 0x64696C61766E69;
      break;
    default:
      break;
  }

  v6 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x74754F74706FLL;
      break;
    case 2:
      v6 = 0xE500000000000000;
      v2 = 0x6E4974706FLL;
      break;
    case 3:
      v6 = 0xE700000000000000;
      v2 = 0x64696C61766E69;
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
    v8 = sub_1D8581AB8();
  }

  return v8 & 1;
}

uint64_t sub_1D85546B0(unsigned __int8 a1, char a2)
{
  v2 = 0x656E6F7972657665;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x4F73646E65697266;
    }

    else
    {
      v4 = 0x796C6E4F656DLL;
    }

    if (v3 == 1)
    {
      v5 = 0xEB00000000796C6ELL;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  else
  {
    v5 = 0xE800000000000000;
    v4 = 0x656E6F7972657665;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x4F73646E65697266;
    }

    else
    {
      v2 = 0x796C6E4F656DLL;
    }

    if (a2 == 1)
    {
      v6 = 0xEB00000000796C6ELL;
    }

    else
    {
      v6 = 0xE600000000000000;
    }
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D8581AB8();
  }

  return v8 & 1;
}

uint64_t sub_1D85547B4(unsigned __int8 a1, char a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x6E776F6E6B6E75;
  switch(v4)
  {
    case 1:
      v3 = 0xE500000000000000;
      v5 = 0x746C756461;
      break;
    case 2:
      v5 = 0x656373656C6F6461;
      v3 = 0xEA0000000000746ELL;
      break;
    case 3:
      v3 = 0xE500000000000000;
      v5 = 0x646C696863;
      break;
    default:
      break;
  }

  v6 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE500000000000000;
      v2 = 0x746C756461;
      break;
    case 2:
      v2 = 0x656373656C6F6461;
      v6 = 0xEA0000000000746ELL;
      break;
    case 3:
      v6 = 0xE500000000000000;
      v2 = 0x646C696863;
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
    v8 = sub_1D8581AB8();
  }

  return v8 & 1;
}

uint64_t sub_1D8554934(uint64_t a1, uint64_t (*a2)(_BYTE *, uint64_t))
{
  OUTLINED_FUNCTION_379(a1);
  a2(v5, a1);
  return sub_1D8581B98();
}

uint64_t sub_1D8554984(uint64_t a1, char a2)
{
  sub_1D85812B8();
}

uint64_t sub_1D8554A2C(uint64_t a1, unsigned __int8 a2)
{
  sub_1D85812B8();
}

uint64_t sub_1D8554ABC(uint64_t a1, char a2)
{
  sub_1D85812B8();
}

uint64_t sub_1D8554BA0(uint64_t a1, char a2)
{
  sub_1D8581B58();
  sub_1D85812B8();

  return sub_1D8581B98();
}

uint64_t sub_1D8554C44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t))
{
  sub_1D8581B58();
  a3(v6, a2);
  return sub_1D8581B98();
}

GameServices::ProfilePrivacy_optional __swiftcall ProfilePrivacy.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_416();
  v2 = sub_1D8581868();

  v4 = 3;
  if (v2 < 3)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t ProfilePrivacy.rawValue.getter()
{
  v1 = 0x4F73646E65697266;
  if (*v0 != 1)
  {
    v1 = 0x796C6E4F656DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656E6F7972657665;
  }
}

uint64_t sub_1D8554D50@<X0>(uint64_t *a1@<X8>)
{
  result = ProfilePrivacy.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D8554D78()
{
  OUTLINED_FUNCTION_99();
  sub_1D855A8B0();
  OUTLINED_FUNCTION_102();
  return sub_1D8581438();
}

uint64_t sub_1D8554DC0()
{
  OUTLINED_FUNCTION_99();
  sub_1D855A8B0();
  OUTLINED_FUNCTION_102();
  return sub_1D85813E8();
}

GameServices::ContactsIntegrationConsent_optional __swiftcall ContactsIntegrationConsent.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_416();
  v2 = sub_1D8581868();

  v4 = 4;
  if (v2 < 4)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t ContactsIntegrationConsent.rawValue.getter()
{
  result = 0x746553746F6ELL;
  switch(*v0)
  {
    case 1:
      result = 0x74754F74706FLL;
      break;
    case 2:
      result = 0x6E4974706FLL;
      break;
    case 3:
      result = 0x64696C61766E69;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D8554EEC@<X0>(uint64_t *a1@<X8>)
{
  result = ContactsIntegrationConsent.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D8554F14()
{
  OUTLINED_FUNCTION_99();
  sub_1D855A85C();
  OUTLINED_FUNCTION_102();
  return sub_1D8581438();
}

uint64_t sub_1D8554F5C()
{
  OUTLINED_FUNCTION_99();
  sub_1D855A85C();
  OUTLINED_FUNCTION_102();
  return sub_1D85813E8();
}

void *static $DistributedOnboardingServiceProtocol.resolve(id:using:)(void *a1, uint64_t a2)
{
  type metadata accessor for $DistributedOnboardingServiceProtocol();
  type metadata accessor for GameServicesActorSystem(0);
  OUTLINED_FUNCTION_3_8();
  sub_1D8559B60(v5, 255, v6, &protocol conformance descriptor for GameServicesActorSystem);
  OUTLINED_FUNCTION_0_14();
  sub_1D8559B60(v7, v8, v9, &protocol conformance descriptor for $DistributedOnboardingServiceProtocol);
  v10 = sub_1D8580F48();
  v11 = v10;
  if (!v2 && !v10)
  {
    v11 = swift_distributedActor_remote_initialize();
    v12 = a1[1];
    v11[14] = *a1;
    v11[15] = v12;
    v11[16] = a2;
  }

  return v11;
}

uint64_t $DistributedOnboardingServiceProtocol.deinit()
{
  type metadata accessor for GameServicesActorSystem(0);
  OUTLINED_FUNCTION_3_8();
  sub_1D8559B60(v1, 255, v2, &protocol conformance descriptor for GameServicesActorSystem);
  sub_1D8580F68();

  swift_defaultActor_destroy();
  return v0;
}

uint64_t $DistributedOnboardingServiceProtocol.__deallocating_deinit()
{
  if (swift_distributed_actor_is_remote())
  {

    swift_defaultActor_destroy();
  }

  else
  {
    $DistributedOnboardingServiceProtocol.deinit();
  }

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1D8555224()
{
  sub_1D8581B58();
  type metadata accessor for $DistributedOnboardingServiceProtocol();
  OUTLINED_FUNCTION_0_14();
  sub_1D8559B60(v0, v1, v2, &protocol conformance descriptor for $DistributedOnboardingServiceProtocol);
  sub_1D85811E8();
  return sub_1D8581B98();
}

uint64_t $DistributedOnboardingServiceProtocol.__allocating_init(actorSystem:)(uint64_t a1)
{
  v2 = swift_allocObject();
  $DistributedOnboardingServiceProtocol.init(actorSystem:)(a1);
  return v2;
}

void *$DistributedOnboardingServiceProtocol.init(actorSystem:)(uint64_t a1)
{
  swift_defaultActor_initialize();
  v1[16] = a1;
  type metadata accessor for $DistributedOnboardingServiceProtocol();
  type metadata accessor for GameServicesActorSystem(0);
  OUTLINED_FUNCTION_3_8();
  sub_1D8559B60(v3, 255, v4, &protocol conformance descriptor for GameServicesActorSystem);
  OUTLINED_FUNCTION_0_14();
  sub_1D8559B60(v5, v6, v7, &protocol conformance descriptor for $DistributedOnboardingServiceProtocol);

  OUTLINED_FUNCTION_324();
  sub_1D8580F58();
  v1[14] = v9;
  v1[15] = v10;

  OUTLINED_FUNCTION_324();
  sub_1D8580F38();

  return v1;
}

uint64_t $DistributedOnboardingServiceProtocol.unownedExecutor.getter()
{
  if ((sub_1D8580FF8() & 1) == 0)
  {
    type metadata accessor for $DistributedOnboardingServiceProtocol();
    OUTLINED_FUNCTION_0_14();
    sub_1D8559B60(v1, v2, v3, &protocol conformance descriptor for $DistributedOnboardingServiceProtocol);
    OUTLINED_FUNCTION_151();
    return sub_1D8580F28();
  }

  return v0;
}

uint64_t sub_1D8555464@<X0>(uint64_t *a1@<X8>)
{
  result = $DistributedOnboardingServiceProtocol.actorSystem.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1D85554F0()
{
  type metadata accessor for $DistributedOnboardingServiceProtocol();
  OUTLINED_FUNCTION_0_14();
  sub_1D8559B60(v0, v1, v2, &protocol conformance descriptor for $DistributedOnboardingServiceProtocol);
  OUTLINED_FUNCTION_188();
  return sub_1D8580FC8();
}

uint64_t sub_1D8555554(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D8581B58();
  type metadata accessor for $DistributedOnboardingServiceProtocol();
  sub_1D85811E8();
  return sub_1D8581B98();
}

uint64_t sub_1D85555D0()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_50(&unk_1D85A6930);
  v5 = v1;
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_1D8442FA8;
  v3 = OUTLINED_FUNCTION_188();

  return v5(v3);
}

uint64_t sub_1D8555678(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = sub_1D8581018();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38DB0, &qword_1D8590D00);
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D85557A4);
}

uint64_t sub_1D85557A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_177();
  if ((swift_distributed_actor_is_remote() & 1) == 0)
  {
    OUTLINED_FUNCTION_50(&unk_1D85A6930);
    v16 = swift_task_alloc();
    v14[17] = v16;
    *v16 = v14;
    v16[1] = sub_1D84BFF10;
    OUTLINED_FUNCTION_207();

    __asm { BR              X2 }
  }

  v14[16] = $DistributedOnboardingServiceProtocol.actorSystem.getter();
  GameServicesActorSystem.makeInvocationEncoder()(v14 + 2);
  type metadata accessor for $DistributedOnboardingServiceProtocol();
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordGenericSubstitution<A>(_:)(v15);
  v19 = v14[8];
  v14[5] = v14[7];
  v14[6] = v19;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA389B8, &qword_1D8590B30);
  OUTLINED_FUNCTION_5_7();
  OUTLINED_FUNCTION_6_5(v20, v21, v22, v23, (v14 + 5));
  OUTLINED_FUNCTION_1_8();
  sub_1D85542B4(v24, v25);
  OUTLINED_FUNCTION_2_7();
  v28 = sub_1D85542B4(v26, v27);
  OUTLINED_FUNCTION_31(v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v29);
  GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
  if (v30)
  {

    v31 = OUTLINED_FUNCTION_49_0();
    v32(v31);
    OUTLINED_FUNCTION_331();

    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_207();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_184_0();
  sub_1D8581028();
  v35 = swift_task_alloc();
  v14[18] = v35;
  OUTLINED_FUNCTION_0_14();
  sub_1D8559B60(v36, v37, v38, &protocol conformance descriptor for $DistributedOnboardingServiceProtocol);
  OUTLINED_FUNCTION_217();
  *v35 = v39;
  v35[1] = sub_1D849BF18;
  OUTLINED_FUNCTION_80_2();
  OUTLINED_FUNCTION_207();

  return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v40, v41, v42, v43, v44, v45, v46);
}

uint64_t DistributedOnboardingServiceProtocol<>.refreshOnboarding(for:)()
{
  OUTLINED_FUNCTION_148();
  v3 = v2;
  v1[13] = v4;
  v1[14] = v0;
  v1[11] = v5;
  v1[12] = v6;
  v7 = sub_1D8581018();
  v1[15] = v7;
  OUTLINED_FUNCTION_39(v7);
  v1[16] = v8;
  v1[17] = OUTLINED_FUNCTION_332();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38DB0, &qword_1D8590D00);
  v1[18] = v9;
  OUTLINED_FUNCTION_39(v9);
  v1[19] = v10;
  v11 = OUTLINED_FUNCTION_332();
  v12 = *v3;
  v13 = v3[1];
  v1[20] = v11;
  v1[21] = v12;
  v1[22] = v13;
  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v14);
}

{
  OUTLINED_FUNCTION_148();
  sub_1D8580FA8();
  OUTLINED_FUNCTION_198();
  v0 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v0);
}

uint64_t sub_1D8555B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_177();
  if ((swift_distributed_actor_is_remote() & 1) == 0)
  {
    v14[9] = v14[14];
    v16 = OUTLINED_FUNCTION_38(v14[22]);
    OUTLINED_FUNCTION_97_2(v16);
    v17 = swift_task_alloc();
    v14[26] = v17;
    *v17 = v14;
    v17[1] = sub_1D84C0604;
    OUTLINED_FUNCTION_207();

    __asm { BRAA            X3, X16 }
  }

  v15 = v14[11];
  OUTLINED_FUNCTION_166();
  sub_1D8580F98();
  v14[23] = v14[10];
  GameServicesActorSystem.makeInvocationEncoder()(v14 + 2);
  OUTLINED_FUNCTION_90();
  if (v15)
  {
    OUTLINED_FUNCTION_342();

    goto LABEL_11;
  }

  v20 = v14[22];
  v14[7] = v14[21];
  v14[8] = v20;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA389B8, &qword_1D8590B30);
  OUTLINED_FUNCTION_5_7();
  OUTLINED_FUNCTION_6_5(v21, v22, v23, v24, (v14 + 7));
  OUTLINED_FUNCTION_1_8();
  sub_1D85542B4(v25, v26);
  OUTLINED_FUNCTION_2_7();
  v29 = sub_1D85542B4(v27, v28);
  OUTLINED_FUNCTION_31(v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v30);
  GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
  if (v31)
  {

    v32 = OUTLINED_FUNCTION_49_0();
    v33(v32);
    OUTLINED_FUNCTION_331();

LABEL_11:

    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_207();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_184_0();
  sub_1D8581028();
  v36 = swift_task_alloc();
  v14[24] = v36;
  *v36 = v14;
  v36[1] = sub_1D84C0468;
  OUTLINED_FUNCTION_68_1(v14[14]);
  OUTLINED_FUNCTION_207();

  return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v37, v38, v39, v40, v41, v42, v43);
}

uint64_t sub_1D8555EBC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a2;
  v8[2] = *a2;
  v8[3] = *(v9 - 8);
  v8[4] = swift_task_alloc();
  sub_1D8580F88();
  v10 = swift_task_alloc();
  v8[5] = v10;
  *v10 = v8;
  v10[1] = sub_1D8556044;

  return DistributedOnboardingServiceProtocol<>.refreshOnboarding(for:)();
}

uint64_t sub_1D8556044()
{
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_153();
  v1 = *v0;
  OUTLINED_FUNCTION_37();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_188();
  v4(v3);

  OUTLINED_FUNCTION_146();

  return v5();
}

uint64_t sub_1D85561A4()
{
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_50(&unk_1D85A6928);
  swift_task_alloc();
  OUTLINED_FUNCTION_168();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_373_0(v1);

  return v4(v3);
}

uint64_t sub_1D8556248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v5 = sub_1D8581018();
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38DB0, &qword_1D8590D00);
  v4[14] = v6;
  v4[15] = *(v6 - 8);
  v4[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8556374);
}

uint64_t sub_1D8556374()
{
  OUTLINED_FUNCTION_177();
  if (swift_distributed_actor_is_remote())
  {
    v1 = $DistributedOnboardingServiceProtocol.actorSystem.getter();
    OUTLINED_FUNCTION_105_5(v1);
    type metadata accessor for $DistributedOnboardingServiceProtocol();
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordGenericSubstitution<A>(_:)(v2);
    v8 = v0[9];
    v0[5] = v0[8];
    v0[6] = v8;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA389B8, &qword_1D8590B30);
    OUTLINED_FUNCTION_5_7();
    OUTLINED_FUNCTION_6_5(v9, v10, v11, v12, (v0 + 5));
    OUTLINED_FUNCTION_1_8();
    sub_1D85542B4(v13, v14);
    OUTLINED_FUNCTION_2_7();
    v17 = sub_1D85542B4(v15, v16);
    OUTLINED_FUNCTION_31(v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A8F0, &qword_1D85A5DB8);
    OUTLINED_FUNCTION_42_3();
    sub_1D8556F4C(v19, v20, MEMORY[0x1E69E7C88]);
    OUTLINED_FUNCTION_41_3();
    sub_1D8556F4C(v21, v22, MEMORY[0x1E69E7C70]);
    OUTLINED_FUNCTION_56();
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v23)
    {

      v24 = OUTLINED_FUNCTION_49_0();
      v25(v24);
      OUTLINED_FUNCTION_331();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_67_3();

      return v26();
    }

    else
    {
      OUTLINED_FUNCTION_184_0();
      sub_1D8581028();
      v28 = swift_task_alloc();
      v0[19] = v28;
      OUTLINED_FUNCTION_0_14();
      sub_1D8559B60(v29, v30, v31, &protocol conformance descriptor for $DistributedOnboardingServiceProtocol);
      OUTLINED_FUNCTION_217();
      *v28 = v32;
      OUTLINED_FUNCTION_34_2(v33);
      OUTLINED_FUNCTION_173();

      return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
    }
  }

  else
  {
    OUTLINED_FUNCTION_50(&unk_1D85A6928);
    swift_task_alloc();
    OUTLINED_FUNCTION_168();
    v0[18] = v3;
    *v3 = v4;
    OUTLINED_FUNCTION_420_0(v3);
    OUTLINED_FUNCTION_67_3();

    return v5();
  }
}

uint64_t sub_1D8556698()
{
  OUTLINED_FUNCTION_174();
  v1 = *v0;
  OUTLINED_FUNCTION_37();
  *v2 = v1;

  OUTLINED_FUNCTION_137();

  return v3();
}

uint64_t DistributedOnboardingServiceProtocol<>.describeOnboarding(for:)()
{
  OUTLINED_FUNCTION_148();
  v7 = OUTLINED_FUNCTION_455_0(v2, v3, v4, v5, v6);
  v1[16] = v7;
  OUTLINED_FUNCTION_39(v7);
  v1[17] = v8;
  v1[18] = OUTLINED_FUNCTION_332();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38DB0, &qword_1D8590D00);
  v1[19] = v9;
  OUTLINED_FUNCTION_39(v9);
  v1[20] = v10;
  v11 = OUTLINED_FUNCTION_332();
  v12 = *v0;
  v13 = v0[1];
  v1[21] = v11;
  v1[22] = v12;
  v1[23] = v13;
  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v14);
}

{
  OUTLINED_FUNCTION_148();
  sub_1D8580FA8();
  OUTLINED_FUNCTION_198();
  v0 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v0);
}

uint64_t sub_1D85568B8()
{
  if ((swift_distributed_actor_is_remote() & 1) == 0)
  {
    v0[9] = v0[15];
    OUTLINED_FUNCTION_38(v0[23]);
    OUTLINED_FUNCTION_54();
    swift_task_alloc();
    OUTLINED_FUNCTION_168();
    v0[27] = v2;
    *v2 = v3;
    v2[1] = sub_1D8556C38;
    OUTLINED_FUNCTION_46_2();
    OUTLINED_FUNCTION_169();

    __asm { BRAA            X4, X16 }
  }

  v1 = v0[12];
  OUTLINED_FUNCTION_166();
  sub_1D8580F98();
  OUTLINED_FUNCTION_106_4();
  OUTLINED_FUNCTION_90();
  if (v1)
  {
    OUTLINED_FUNCTION_342();

    goto LABEL_12;
  }

  v6 = v0[23];
  v0[7] = v0[22];
  v0[8] = v6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA389B8, &qword_1D8590B30);
  OUTLINED_FUNCTION_5_7();
  OUTLINED_FUNCTION_6_5(v7, v8, v9, v10, (v0 + 7));
  OUTLINED_FUNCTION_1_8();
  sub_1D85542B4(v11, v12);
  OUTLINED_FUNCTION_2_7();
  v15 = sub_1D85542B4(v13, v14);
  OUTLINED_FUNCTION_31(v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A8F0, &qword_1D85A5DB8);
  OUTLINED_FUNCTION_42_3();
  sub_1D8556F4C(v17, v18, MEMORY[0x1E69E7C88]);
  OUTLINED_FUNCTION_41_3();
  sub_1D8556F4C(v19, v20, MEMORY[0x1E69E7C70]);
  OUTLINED_FUNCTION_56();
  GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
  if (v21)
  {

    v22 = OUTLINED_FUNCTION_49_0();
    v23(v22);
    OUTLINED_FUNCTION_331();

LABEL_12:

    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_169();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_184_0();
  sub_1D8581028();
  swift_task_alloc();
  OUTLINED_FUNCTION_168();
  v0[25] = v26;
  *v26 = v27;
  OUTLINED_FUNCTION_37_1(v26);

  return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
}

uint64_t sub_1D8556C38()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  v3 = v2;
  OUTLINED_FUNCTION_16_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_37();
  *v6 = v5;
  *(v3 + 224) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149();

    return MEMORY[0x1EEE6DFA0](v7);
  }

  else
  {

    OUTLINED_FUNCTION_57();

    return v8();
  }
}

uint64_t sub_1D8556D64(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a2;
  v8[2] = *a2;
  v8[3] = *(v9 - 8);
  v8[4] = swift_task_alloc();
  sub_1D8580F88();
  v10 = swift_task_alloc();
  v8[5] = v10;
  *v10 = v8;
  v10[1] = sub_1D855A95C;

  return DistributedOnboardingServiceProtocol<>.describeOnboarding(for:)();
}

unint64_t sub_1D8556EF8()
{
  result = qword_1ECA3A900;
  if (!qword_1ECA3A900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3A900);
  }

  return result;
}

uint64_t sub_1D8556F4C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA3A8F0, &qword_1D85A5DB8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D8556FC4()
{
  result = qword_1ECA3A910;
  if (!qword_1ECA3A910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3A910);
  }

  return result;
}

uint64_t sub_1D8557018()
{
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_50(&unk_1D85A6920);
  swift_task_alloc();
  OUTLINED_FUNCTION_168();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_373_0(v1);

  return v4(v3);
}

uint64_t sub_1D85570BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v5 = sub_1D8581018();
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38DB0, &qword_1D8590D00);
  v4[14] = v6;
  v4[15] = *(v6 - 8);
  v4[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D85571E8);
}

uint64_t sub_1D85571E8()
{
  OUTLINED_FUNCTION_177();
  if (swift_distributed_actor_is_remote())
  {
    v1 = $DistributedOnboardingServiceProtocol.actorSystem.getter();
    OUTLINED_FUNCTION_105_5(v1);
    type metadata accessor for $DistributedOnboardingServiceProtocol();
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordGenericSubstitution<A>(_:)(v2);
    v8 = v0[9];
    v0[5] = v0[8];
    v0[6] = v8;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA389B8, &qword_1D8590B30);
    OUTLINED_FUNCTION_5_7();
    OUTLINED_FUNCTION_6_5(v9, v10, v11, v12, (v0 + 5));
    OUTLINED_FUNCTION_1_8();
    sub_1D85542B4(v13, v14);
    OUTLINED_FUNCTION_2_7();
    v17 = sub_1D85542B4(v15, v16);
    OUTLINED_FUNCTION_31(v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v18);
    sub_1D8556EF8();
    sub_1D8556FC4();
    OUTLINED_FUNCTION_56();
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v19)
    {

      v20 = OUTLINED_FUNCTION_49_0();
      v21(v20);
      OUTLINED_FUNCTION_331();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_67_3();

      return v22();
    }

    else
    {
      OUTLINED_FUNCTION_184_0();
      sub_1D8581028();
      v24 = swift_task_alloc();
      v0[19] = v24;
      OUTLINED_FUNCTION_0_14();
      sub_1D8559B60(v25, v26, v27, &protocol conformance descriptor for $DistributedOnboardingServiceProtocol);
      OUTLINED_FUNCTION_217();
      *v24 = v28;
      OUTLINED_FUNCTION_34_2(v29);
      OUTLINED_FUNCTION_173();

      return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
    }
  }

  else
  {
    OUTLINED_FUNCTION_50(&unk_1D85A6920);
    swift_task_alloc();
    OUTLINED_FUNCTION_168();
    v0[18] = v3;
    *v3 = v4;
    OUTLINED_FUNCTION_420_0(v3);
    OUTLINED_FUNCTION_67_3();

    return v5();
  }
}

uint64_t DistributedOnboardingServiceProtocol<>.describeOnboarding2(for:)()
{
  OUTLINED_FUNCTION_148();
  v7 = OUTLINED_FUNCTION_455_0(v2, v3, v4, v5, v6);
  v1[16] = v7;
  OUTLINED_FUNCTION_39(v7);
  v1[17] = v8;
  v1[18] = OUTLINED_FUNCTION_332();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38DB0, &qword_1D8590D00);
  v1[19] = v9;
  OUTLINED_FUNCTION_39(v9);
  v1[20] = v10;
  v11 = OUTLINED_FUNCTION_332();
  v12 = *v0;
  v13 = v0[1];
  v1[21] = v11;
  v1[22] = v12;
  v1[23] = v13;
  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v14);
}

{
  OUTLINED_FUNCTION_148();
  sub_1D8580FA8();
  OUTLINED_FUNCTION_198();
  v0 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v0);
}

uint64_t sub_1D85575BC()
{
  if ((swift_distributed_actor_is_remote() & 1) == 0)
  {
    v0[9] = v0[15];
    OUTLINED_FUNCTION_38(v0[23]);
    OUTLINED_FUNCTION_54();
    swift_task_alloc();
    OUTLINED_FUNCTION_168();
    v0[27] = v2;
    *v2 = v3;
    v2[1] = sub_1D85578EC;
    OUTLINED_FUNCTION_46_2();
    OUTLINED_FUNCTION_169();

    __asm { BRAA            X4, X16 }
  }

  v1 = v0[12];
  OUTLINED_FUNCTION_166();
  sub_1D8580F98();
  OUTLINED_FUNCTION_106_4();
  OUTLINED_FUNCTION_90();
  if (v1)
  {
    OUTLINED_FUNCTION_342();

    goto LABEL_12;
  }

  v6 = v0[23];
  v0[7] = v0[22];
  v0[8] = v6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA389B8, &qword_1D8590B30);
  OUTLINED_FUNCTION_5_7();
  OUTLINED_FUNCTION_6_5(v7, v8, v9, v10, (v0 + 7));
  OUTLINED_FUNCTION_1_8();
  sub_1D85542B4(v11, v12);
  OUTLINED_FUNCTION_2_7();
  v15 = sub_1D85542B4(v13, v14);
  OUTLINED_FUNCTION_31(v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v16);
  sub_1D8556EF8();
  sub_1D8556FC4();
  OUTLINED_FUNCTION_56();
  GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
  if (v17)
  {

    v18 = OUTLINED_FUNCTION_49_0();
    v19(v18);
    OUTLINED_FUNCTION_331();

LABEL_12:

    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_169();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_184_0();
  sub_1D8581028();
  swift_task_alloc();
  OUTLINED_FUNCTION_168();
  v0[25] = v22;
  *v22 = v23;
  OUTLINED_FUNCTION_37_1(v22);

  return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
}

uint64_t sub_1D85578EC()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  v3 = v2;
  OUTLINED_FUNCTION_16_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_37();
  *v6 = v5;
  *(v3 + 224) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149();

    return MEMORY[0x1EEE6DFA0](v7);
  }

  else
  {

    OUTLINED_FUNCTION_57();

    return v8();
  }
}

uint64_t sub_1D8557A18(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a2;
  v8[2] = *a2;
  v8[3] = *(v9 - 8);
  v8[4] = swift_task_alloc();
  sub_1D8580F88();
  v10 = swift_task_alloc();
  v8[5] = v10;
  *v10 = v8;
  v10[1] = sub_1D855A95C;

  return DistributedOnboardingServiceProtocol<>.describeOnboarding2(for:)();
}

uint64_t sub_1D8557BAC()
{
  OUTLINED_FUNCTION_174();
  v2 = v1[1];
  *(v0 + 16) = *v1;
  *(v0 + 32) = v2;
  *(v0 + 48) = v1[2];
  *(v0 + 57) = *(v1 + 41);
  v4 = *v3;
  v5 = v3[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_168();
  *(v0 + 80) = v6;
  *v6 = v7;
  v6[1] = sub_1D8557C7C;

  return sub_1D8557D5C(v0 + 16, v4, v5);
}

uint64_t sub_1D8557C7C()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  v1 = *v0;
  OUTLINED_FUNCTION_37();
  *v2 = v1;

  OUTLINED_FUNCTION_146();

  return v3();
}

uint64_t sub_1D8557D5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[17] = a3;
  v4[18] = v3;
  v4[15] = a1;
  v4[16] = a2;
  v5 = sub_1D8581018();
  v4[19] = v5;
  v4[20] = *(v5 - 8);
  v4[21] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38DB0, &qword_1D8590D00);
  v4[22] = v6;
  v4[23] = *(v6 - 8);
  v4[24] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A918, &qword_1D85A5DE0);
  v4[25] = v7;
  v4[26] = *(v7 - 8);
  v4[27] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8557EF0);
}

uint64_t sub_1D8557EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_177();
  if ((swift_distributed_actor_is_remote() & 1) == 0)
  {
    OUTLINED_FUNCTION_50(&dword_1D85A6918);
    v16 = swift_task_alloc();
    *(v14 + 232) = v16;
    *v16 = v14;
    v16[1] = sub_1D85582A4;
    OUTLINED_FUNCTION_240();

    __asm { BR              X3 }
  }

  *(v14 + 224) = $DistributedOnboardingServiceProtocol.actorSystem.getter();
  GameServicesActorSystem.makeInvocationEncoder()((v14 + 80));
  v15 = type metadata accessor for $DistributedOnboardingServiceProtocol();
  GameServicesActorSystem.JSONInvocationEncoder.recordGenericSubstitution<A>(_:)(v15);
  v19 = *(v14 + 120);
  v21 = v19[1];
  v20 = v19[2];
  v22 = *v19;
  *(v14 + 57) = *(v19 + 41);
  *(v14 + 32) = v21;
  *(v14 + 48) = v20;
  *(v14 + 16) = v22;
  OUTLINED_FUNCTION_98_5();
  OUTLINED_FUNCTION_87_2(v23, v24, v25, v26, v14 + 16);
  sub_1D8559480();
  sub_1D85594D4();
  v27 = OUTLINED_FUNCTION_69_1();
  GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v27, v28);
  v29 = *(v14 + 136);
  *(v14 + 104) = *(v14 + 128);
  *(v14 + 112) = v29;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA389B8, &qword_1D8590B30);
  OUTLINED_FUNCTION_5_7();
  OUTLINED_FUNCTION_6_5(v30, v31, v32, v33, v14 + 104);
  OUTLINED_FUNCTION_1_8();
  sub_1D85542B4(v34, v35);
  OUTLINED_FUNCTION_2_7();
  sub_1D85542B4(v36, v37);
  v38 = OUTLINED_FUNCTION_69_1();
  GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v38, v39);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
  GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v40);
  GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
  if (v41)
  {
    v43 = *(v14 + 208);
    v42 = *(v14 + 216);
    v44 = *(v14 + 200);

    v45 = OUTLINED_FUNCTION_69_1();
    v46(v45);
    (*(v43 + 8))(v42, v44);

    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_240();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_184_0();
  sub_1D8581028();
  v49 = swift_task_alloc();
  *(v14 + 240) = v49;
  OUTLINED_FUNCTION_0_14();
  sub_1D8559B60(v50, v51, v52, &protocol conformance descriptor for $DistributedOnboardingServiceProtocol);
  OUTLINED_FUNCTION_217();
  *v49 = v53;
  v49[1] = sub_1D85583E0;
  OUTLINED_FUNCTION_80_2();
  OUTLINED_FUNCTION_240();

  return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v54, v55, v56, v57, v58, v59, v60);
}

uint64_t sub_1D85582A4()
{
  OUTLINED_FUNCTION_174();
  v1 = *v0;
  OUTLINED_FUNCTION_37();
  *v2 = v1;

  OUTLINED_FUNCTION_137();

  return v3();
}

uint64_t sub_1D85583E0()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 248) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1D85584D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_89_3();
  v12 = OUTLINED_FUNCTION_69_1();
  v13(v12);
  v14 = OUTLINED_FUNCTION_166();
  v15(v14);
  v16 = OUTLINED_FUNCTION_151();
  v17(v16);

  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_173();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_1D85585AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_89_3();
  v12 = OUTLINED_FUNCTION_69_1();
  v13(v12);
  v14 = OUTLINED_FUNCTION_166();
  v15(v14);
  v16 = OUTLINED_FUNCTION_151();
  v17(v16);

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_173();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t DistributedOnboardingServiceProtocol<>.setProfileSettings(_:for:)()
{
  OUTLINED_FUNCTION_148();
  v3 = v2;
  v1[30] = v4;
  v1[31] = v0;
  v1[28] = v5;
  v1[29] = v6;
  v1[27] = v7;
  v8 = sub_1D8581018();
  v1[32] = v8;
  OUTLINED_FUNCTION_39(v8);
  v1[33] = v9;
  v1[34] = OUTLINED_FUNCTION_332();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38DB0, &qword_1D8590D00);
  v1[35] = v10;
  OUTLINED_FUNCTION_39(v10);
  v1[36] = v11;
  v1[37] = OUTLINED_FUNCTION_332();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A918, &qword_1D85A5DE0);
  v1[38] = v12;
  OUTLINED_FUNCTION_39(v12);
  v1[39] = v13;
  v14 = OUTLINED_FUNCTION_332();
  v15 = *v3;
  v16 = v3[1];
  v1[40] = v14;
  v1[41] = v15;
  v1[42] = v16;
  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v17);
}

{
  OUTLINED_FUNCTION_148();
  sub_1D8580FA8();
  OUTLINED_FUNCTION_198();
  v0 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v0);
}

uint64_t sub_1D85587F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if ((swift_distributed_actor_is_remote() & 1) == 0)
  {
    v17 = *(v14 + 328);
    v16 = *(v14 + 336);
    v18 = *(v14 + 216);
    *(v14 + 200) = *(v14 + 248);
    v19 = *v18;
    v20 = v18[1];
    v21 = v18[2];
    *(v14 + 57) = *(v18 + 41);
    *(v14 + 32) = v20;
    *(v14 + 48) = v21;
    *(v14 + 16) = v19;
    *(v14 + 168) = v17;
    *(v14 + 176) = v16;
    OUTLINED_FUNCTION_54();
    swift_task_alloc();
    OUTLINED_FUNCTION_168();
    *(v14 + 368) = v22;
    *v22 = v23;
    v22[1] = sub_1D8558DF0;
    OUTLINED_FUNCTION_46_2();
    OUTLINED_FUNCTION_239();

    __asm { BRAA            X4, X16 }
  }

  v15 = *(v14 + 224);
  OUTLINED_FUNCTION_166();
  sub_1D8580F98();
  *(v14 + 344) = *(v14 + 208);
  GameServicesActorSystem.makeInvocationEncoder()((v14 + 144));
  GameServicesActorSystem.JSONInvocationEncoder.recordGenericSubstitution<A>(_:)(v15);
  v26 = *(v14 + 216);
  v28 = v26[1];
  v27 = v26[2];
  v29 = *v26;
  *(v14 + 121) = *(v26 + 41);
  *(v14 + 96) = v28;
  *(v14 + 112) = v27;
  *(v14 + 80) = v29;
  OUTLINED_FUNCTION_98_5();
  OUTLINED_FUNCTION_87_2(v30, v31, v32, v33, v14 + 80);
  sub_1D8559480();
  sub_1D85594D4();
  v34 = OUTLINED_FUNCTION_69_1();
  GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v34, v35);
  v36 = *(v14 + 336);
  *(v14 + 184) = *(v14 + 328);
  *(v14 + 192) = v36;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA389B8, &qword_1D8590B30);
  OUTLINED_FUNCTION_5_7();
  OUTLINED_FUNCTION_6_5(v37, v38, v39, v40, v14 + 184);
  OUTLINED_FUNCTION_1_8();
  sub_1D85542B4(v41, v42);
  OUTLINED_FUNCTION_2_7();
  sub_1D85542B4(v43, v44);
  v45 = OUTLINED_FUNCTION_69_1();
  GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v45, v46);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
  GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v47);
  GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
  if (v48)
  {
    v50 = *(v14 + 312);
    v49 = *(v14 + 320);
    v51 = *(v14 + 304);

    v52 = OUTLINED_FUNCTION_69_1();
    v53(v52);
    (*(v50 + 8))(v49, v51);

    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_239();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_184_0();
  sub_1D8581028();
  v56 = swift_task_alloc();
  *(v14 + 352) = v56;
  *v56 = v14;
  v56[1] = sub_1D8558C24;
  OUTLINED_FUNCTION_68_1(*(v14 + 248));
  OUTLINED_FUNCTION_239();

  return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v57, v58, v59, v60, v61, v62, v63);
}

uint64_t sub_1D8558C24()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 360) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1D8558D1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_76_3();
  v12 = OUTLINED_FUNCTION_69_1();
  v13(v12);
  v14 = OUTLINED_FUNCTION_166();
  v15(v14);
  v16 = OUTLINED_FUNCTION_151();
  v17(v16);

  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_173();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_1D8558DF0()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  v3 = v2;
  OUTLINED_FUNCTION_16_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_37();
  *v6 = v5;
  *(v3 + 376) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149();

    return MEMORY[0x1EEE6DFA0](v7);
  }

  else
  {

    OUTLINED_FUNCTION_57();

    return v8();
  }
}

uint64_t sub_1D8558F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_76_3();
  v12 = OUTLINED_FUNCTION_69_1();
  v13(v12);
  v14 = OUTLINED_FUNCTION_166();
  v15(v14);
  v16 = OUTLINED_FUNCTION_151();
  v17(v16);

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_173();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_1D8559000()
{
  OUTLINED_FUNCTION_174();

  OUTLINED_FUNCTION_146();

  return v0();
}

uint64_t sub_1D855907C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *a2;
  v8[2] = *a2;
  v8[3] = *(v10 - 8);
  v8[4] = swift_task_alloc();
  sub_1D8580F88();
  v11 = a2[1];
  v8[5] = v11;
  v8[6] = *(v11 - 8);
  v8[7] = swift_task_alloc();
  sub_1D8580F88();
  v12 = swift_task_alloc();
  v8[8] = v12;
  *v12 = v8;
  v12[1] = sub_1D85592B4;

  return DistributedOnboardingServiceProtocol<>.setProfileSettings(_:for:)();
}

uint64_t sub_1D85592B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_153();
  v14 = v13[4];
  v15 = v13[3];
  v16 = v13[2];
  v17 = *v12;
  OUTLINED_FUNCTION_37();
  *v18 = v17;

  (*(v15 + 8))(v14, v16);
  v19 = OUTLINED_FUNCTION_188();
  v20(v19);

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_173();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12);
}

unint64_t sub_1D8559480()
{
  result = qword_1ECA3A920;
  if (!qword_1ECA3A920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3A920);
  }

  return result;
}

unint64_t sub_1D85594D4()
{
  result = qword_1ECA3A928;
  if (!qword_1ECA3A928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3A928);
  }

  return result;
}

uint64_t sub_1D8559528()
{
  type metadata accessor for $DistributedOnboardingServiceProtocol();
  OUTLINED_FUNCTION_0_14();
  sub_1D8559B60(v0, v1, v2, &protocol conformance descriptor for $DistributedOnboardingServiceProtocol);
  v3 = OUTLINED_FUNCTION_188();

  return MEMORY[0x1EEE6CC98](v3);
}

uint64_t sub_1D855959C(uint64_t a1)
{
  type metadata accessor for $DistributedOnboardingServiceProtocol();
  OUTLINED_FUNCTION_0_14();
  sub_1D8559B60(v1, v2, v3, &protocol conformance descriptor for $DistributedOnboardingServiceProtocol);
  sub_1D843D180();
  return sub_1D8580FD8();
}

uint64_t sub_1D8559620@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for $DistributedOnboardingServiceProtocol();
  OUTLINED_FUNCTION_0_14();
  sub_1D8559B60(v4, v5, v6, &protocol conformance descriptor for $DistributedOnboardingServiceProtocol);
  sub_1D843EE3C();
  result = sub_1D8580FE8();
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1D85598A0()
{
  result = qword_1ECA3A930;
  if (!qword_1ECA3A930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3A930);
  }

  return result;
}

unint64_t sub_1D85598F8()
{
  result = qword_1ECA3A938;
  if (!qword_1ECA3A938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3A938);
  }

  return result;
}

unint64_t sub_1D8559950()
{
  result = qword_1ECA3A940;
  if (!qword_1ECA3A940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3A940);
  }

  return result;
}

unint64_t sub_1D85599A8()
{
  result = qword_1ECA3A948;
  if (!qword_1ECA3A948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3A948);
  }

  return result;
}

uint64_t sub_1D8559AA8(uint64_t a1)
{
  OUTLINED_FUNCTION_0_14();
  result = sub_1D8559B60(v2, v3, v4, &protocol conformance descriptor for $DistributedOnboardingServiceProtocol);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D8559B60(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1D8559BC4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 57))
  {
    return OUTLINED_FUNCTION_226(*a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D8559BE0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
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

  *(result + 57) = v3;
  return result;
}

uint64_t sub_1D8559C30(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 73))
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

uint64_t sub_1D8559C70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for OnboardingState.PrivacyInfo(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 10))
    {
      return OUTLINED_FUNCTION_226(*a1 + 254);
    }

    v3 = *(a1 + 9);
    v4 = v3 >= 2;
    v5 = (v3 + 2147483646) & 0x7FFFFFFF;
    if (!v4)
    {
      return OUTLINED_FUNCTION_226(-1);
    }
  }

  else
  {
    v5 = -1;
  }

  return OUTLINED_FUNCTION_226(v5);
}

uint64_t storeEnumTagSinglePayload for OnboardingState.PrivacyInfo(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 9) = a2 + 1;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ProfilePrivacy(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_282(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_280(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_281(result, v6);
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
          result = OUTLINED_FUNCTION_262(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

uint64_t dispatch thunk of OnboardingServiceProtocol.refreshOnboarding(for:)()
{
  OUTLINED_FUNCTION_204();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_97_2(v1);
  v10 = (v7 + *v7);
  v8 = swift_task_alloc();
  *(v0 + 16) = v8;
  *v8 = v0;
  v8[1] = sub_1D8442FA8;

  return v10(v6, v4, v2);
}

uint64_t dispatch thunk of OnboardingServiceProtocol.describeOnboarding(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_28(a1, a2, a3, a4);
  OUTLINED_FUNCTION_54();
  swift_task_alloc();
  OUTLINED_FUNCTION_168();
  *(v4 + 16) = v5;
  *v5 = v6;
  v5[1] = sub_1D8442F30;
  OUTLINED_FUNCTION_114_0();

  return v7();
}

uint64_t dispatch thunk of OnboardingServiceProtocol.describeOnboarding2(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_28(a1, a2, a3, a4);
  OUTLINED_FUNCTION_54();
  swift_task_alloc();
  OUTLINED_FUNCTION_168();
  *(v4 + 16) = v5;
  *v5 = v6;
  v5[1] = sub_1D8442F30;
  OUTLINED_FUNCTION_114_0();

  return v7();
}

uint64_t dispatch thunk of OnboardingServiceProtocol.setProfileSettings(_:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_28(a1, a2, a3, a4);
  OUTLINED_FUNCTION_54();
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1D8442F30;
  OUTLINED_FUNCTION_114_0();

  return v6();
}

_BYTE *sub_1D855A2EC(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_282(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_280(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_281(result, v6);
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
          result = OUTLINED_FUNCTION_262(result, a2 + 7);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1D855A3B4(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_282(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_280(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_281(result, v6);
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
          result = OUTLINED_FUNCTION_262(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

_BYTE *_s12GameServices11AgeCategoryOwst_0(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_282(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_280(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_281(result, v6);
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
          result = OUTLINED_FUNCTION_262(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D855A548()
{
  result = qword_1ECA55170[0];
  if (!qword_1ECA55170[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA55170);
  }

  return result;
}

unint64_t sub_1D855A5A0()
{
  result = qword_1ECA55380[0];
  if (!qword_1ECA55380[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA55380);
  }

  return result;
}

unint64_t sub_1D855A5F8()
{
  result = qword_1ECA55590[0];
  if (!qword_1ECA55590[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA55590);
  }

  return result;
}

unint64_t sub_1D855A650()
{
  result = qword_1ECA556A0;
  if (!qword_1ECA556A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA556A0);
  }

  return result;
}

unint64_t sub_1D855A6A8()
{
  result = qword_1ECA556A8[0];
  if (!qword_1ECA556A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA556A8);
  }

  return result;
}

unint64_t sub_1D855A700()
{
  result = qword_1ECA55730;
  if (!qword_1ECA55730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA55730);
  }

  return result;
}

unint64_t sub_1D855A758()
{
  result = qword_1ECA55738[0];
  if (!qword_1ECA55738[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA55738);
  }

  return result;
}

unint64_t sub_1D855A7B0()
{
  result = qword_1ECA557C0;
  if (!qword_1ECA557C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA557C0);
  }

  return result;
}

unint64_t sub_1D855A808()
{
  result = qword_1ECA557C8[0];
  if (!qword_1ECA557C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA557C8);
  }

  return result;
}

unint64_t sub_1D855A85C()
{
  result = qword_1ECA3A960;
  if (!qword_1ECA3A960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3A960);
  }

  return result;
}

unint64_t sub_1D855A8B0()
{
  result = qword_1ECA3A968;
  if (!qword_1ECA3A968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3A968);
  }

  return result;
}

unint64_t sub_1D855A904()
{
  result = qword_1ECA3A970;
  if (!qword_1ECA3A970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3A970);
  }

  return result;
}

void OUTLINED_FUNCTION_25_5(uint64_t a1@<X8>)
{
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 9) = v3;
}

void *OUTLINED_FUNCTION_26_4(uint64_t a1)
{

  return sub_1D8581958();
}

uint64_t OUTLINED_FUNCTION_34_2(uint64_t a1)
{
  *(v2 + 8) = v1;
  v9 = *(v3 + 56);
  v8[5] = v6;
  v8[6] = v7;
  v8[3] = a1;
  v8[4] = v4;
  v8[2] = v5;
  return v9;
}

uint64_t OUTLINED_FUNCTION_37_1(uint64_t a1)
{
  *(a1 + 8) = v1;
  result = *(v2 + 88);
  v8[5] = v6;
  v8[6] = v7;
  v8[3] = v3;
  v8[4] = v4;
  v8[2] = v5;
  return result;
}

uint64_t OUTLINED_FUNCTION_38_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1D8581A58();
}

uint64_t OUTLINED_FUNCTION_47_1@<X0>(char a1@<W8>)
{
  *(v1 - 192) = a1;

  return sub_1D8581918();
}

uint64_t OUTLINED_FUNCTION_76_3()
{
}

uint64_t OUTLINED_FUNCTION_87_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1D8581038();
}

uint64_t OUTLINED_FUNCTION_88_2(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1D8581BA8();
}

uint64_t OUTLINED_FUNCTION_89_3()
{
}

uint64_t OUTLINED_FUNCTION_106_4()
{
  v0[24] = v0[10];

  return GameServicesActorSystem.makeInvocationEncoder()(v0 + 2);
}

uint64_t OUTLINED_FUNCTION_108_6()
{

  return sub_1D8552684(v1, v0 & 1);
}

GameServices::Artwork::Size __swiftcall Artwork.Size.init(width:height:)(Swift::Double width, Swift::Double height)
{
  *v2 = width;
  v2[1] = height;
  result.height = height;
  result.width = width;
  return result;
}

__int128 *sub_1D855AC0C()
{
  if (_MergedGlobals_2 != -1)
  {
    OUTLINED_FUNCTION_4_6(&_MergedGlobals_2);
  }

  return &xmmword_1EE0E1270;
}

double static Artwork.Size.zero.getter@<D0>(_OWORD *a1@<X8>)
{
  if (_MergedGlobals_2 != -1)
  {
    OUTLINED_FUNCTION_4_6(&_MergedGlobals_2);
  }

  result = *&xmmword_1EE0E1270;
  *a1 = xmmword_1EE0E1270;
  return result;
}

uint64_t sub_1D855ACC4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6874646977 && a2 == 0xE500000000000000;
  if (v4 || (OUTLINED_FUNCTION_7(0x6874646977, 0xE500000000000000) & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746867696568 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_7(0x746867696568, 0xE600000000000000);

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

uint64_t sub_1D855AD6C(char a1)
{
  if (a1)
  {
    return 0x746867696568;
  }

  else
  {
    return 0x6874646977;
  }
}

uint64_t sub_1D855ADA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D855ACC4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D855ADD8()
{
  sub_1D855AF9C();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D855AE10()
{
  sub_1D855AF9C();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t Artwork.Size.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A978, &qword_1D85A6B70);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D855AF9C();
  sub_1D8581BB8();
  v10[15] = 0;
  OUTLINED_FUNCTION_232();
  sub_1D8581A28();
  if (!v1)
  {
    v10[14] = 1;
    OUTLINED_FUNCTION_232();
    sub_1D8581A28();
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_1D855AF9C()
{
  result = qword_1ECA55850;
  if (!qword_1ECA55850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA55850);
  }

  return result;
}

uint64_t Artwork.Size.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1DA719210](*&v1);
  if (v2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v2;
  }

  return MEMORY[0x1DA719210](*&v3);
}

uint64_t Artwork.Size.hashValue.getter(uint64_t a1)
{
  v2 = *v1;
  OUTLINED_FUNCTION_379(a1);
  if (v2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v2;
  }

  MEMORY[0x1DA719210](*&v3);
  v4 = OUTLINED_FUNCTION_7_8();
  MEMORY[0x1DA719210](v4);
  return sub_1D8581B98();
}

void Artwork.Size.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_21_5();
  a24 = v26;
  a25 = v27;
  v29 = v28;
  v31 = v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A980, &qword_1D85A6B78);
  OUTLINED_FUNCTION_1();
  v34 = v33;
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v35);
  v37 = &a9 - v36;
  __swift_project_boxed_opaque_existential_1(v29, v29[3]);
  sub_1D855AF9C();
  sub_1D8581BA8();
  if (!v25)
  {
    a15 = 0;
    sub_1D8581928();
    v39 = v38;
    a14 = 1;
    sub_1D8581928();
    v41 = v40;
    (*(v34 + 8))(v37, v32);
    *v31 = v39;
    v31[1] = v41;
  }

  __swift_destroy_boxed_opaque_existential_1(v29);
  OUTLINED_FUNCTION_20_2();
}

uint64_t sub_1D855B268(uint64_t a1)
{
  v2 = *v1;
  sub_1D8581B58();
  if (v2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v2;
  }

  MEMORY[0x1DA719210](*&v3);
  v4 = OUTLINED_FUNCTION_7_8();
  MEMORY[0x1DA719210](v4);
  return sub_1D8581B98();
}

uint64_t Artwork.ref.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

__n128 Artwork.sourceImageSize.getter@<Q0>(__n128 *a1@<X8>)
{
  result = v1[1];
  *a1 = result;
  return result;
}

__n128 Artwork.init(ref:sourceImageSize:backgroundColor:textColor1:textColor2:textColor3:textColor4:)@<Q0>(void *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __n128 a10, uint64_t a11, uint64_t a12)
{
  result = a10;
  v13 = a1[1];
  *a9 = *a1;
  *(a9 + 8) = v13;
  *(a9 + 16) = *a2;
  *(a9 + 32) = a3;
  *(a9 + 40) = a4;
  *(a9 + 48) = a5;
  *(a9 + 56) = a6;
  *(a9 + 64) = a7;
  *(a9 + 72) = a8;
  *(a9 + 80) = a10;
  *(a9 + 96) = a11;
  *(a9 + 104) = a12;
  return result;
}

uint64_t static Artwork.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7 = *(a1 + 48);
  v6 = *(a1 + 56);
  v8 = *(a1 + 72);
  v31 = *(a1 + 80);
  v39 = *(a1 + 88);
  v30 = *(a1 + 96);
  v35 = *(a1 + 104);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v12 = *(a2 + 32);
  v11 = *(a2 + 40);
  v14 = *(a2 + 48);
  v13 = *(a2 + 56);
  v32 = *(a2 + 64);
  v33 = *(a1 + 64);
  v38 = *(a2 + 80);
  v15 = *(a2 + 96);
  v36 = *(a2 + 72);
  v37 = *(a2 + 88);
  v34 = *(a2 + 104);
  v16 = sub_1D855B60C(*a1, *(a1 + 8), *a2, *(a2 + 8));
  result = 0;
  if ((v16 & 1) != 0 && v2 == v9 && v3 == v10)
  {
    if (v4)
    {
      if (!v11)
      {
        return 0;
      }

      v19 = v5 == v12 && v4 == v11;
      if (!v19 && (sub_1D8581AB8() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v11)
    {
      return 0;
    }

    if (v6)
    {
      if (!v13)
      {
        return 0;
      }

      v20 = v7 == v14 && v6 == v13;
      if (!v20 && (sub_1D8581AB8() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v13)
    {
      return 0;
    }

    if (v8)
    {
      v22 = v38;
      v21 = v39;
      v23 = v37;
      if (!v36)
      {
        return 0;
      }

      v24 = v15;
      v25 = v33 == v32 && v8 == v36;
      if (!v25 && (sub_1D8581AB8() & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      v24 = v15;
      v22 = v38;
      v21 = v39;
      v23 = v37;
      if (v36)
      {
        return 0;
      }
    }

    if (v21)
    {
      v27 = v34;
      v26 = v35;
      if (!v23)
      {
        return 0;
      }

      v28 = v31 == v22 && v21 == v23;
      if (!v28 && (sub_1D8581AB8() & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      v27 = v34;
      v26 = v35;
      if (v23)
      {
        return 0;
      }
    }

    if (v26)
    {
      if (v27)
      {
        v29 = v30 == v24 && v26 == v27;
        if (v29 || (sub_1D8581AB8() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v27)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_1D855B60C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA389C8, &qword_1D8590820);
  sub_1D855C99C(&qword_1ECA38A30, &protocol conformance descriptor for Ref<A>);
  sub_1D85813D8();
  sub_1D85813D8();
  if (v9 == v7 && v10 == v8)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1D8581AB8();
  }

  return v5 & 1;
}

uint64_t sub_1D855B6E8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6710642 && a2 == 0xE300000000000000;
  if (v3 || (OUTLINED_FUNCTION_7(6710642, 0xE300000000000000) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = OUTLINED_FUNCTION_11_5();
    v8 = a1 == v6 && a2 == v7;
    if (v8 || (OUTLINED_FUNCTION_7(v6, v7) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v9 = OUTLINED_FUNCTION_10_7();
      v11 = a1 == v9 && a2 == v10;
      if (v11 || (OUTLINED_FUNCTION_7(v9, v10) & 1) != 0)
      {

        return 2;
      }

      else
      {
        v12 = a1 == 0x6F6C6F4374786574 && a2 == 0xEA00000000003172;
        if (v12 || (OUTLINED_FUNCTION_7(0x6F6C6F4374786574, 0xEA00000000003172) & 1) != 0)
        {

          return 3;
        }

        else
        {
          v13 = a1 == 0x6F6C6F4374786574 && a2 == 0xEA00000000003272;
          if (v13 || (OUTLINED_FUNCTION_7(0x6F6C6F4374786574, 0xEA00000000003272) & 1) != 0)
          {

            return 4;
          }

          else
          {
            v14 = a1 == 0x6F6C6F4374786574 && a2 == 0xEA00000000003372;
            if (v14 || (OUTLINED_FUNCTION_7(0x6F6C6F4374786574, 0xEA00000000003372) & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x6F6C6F4374786574 && a2 == 0xEA00000000003472)
            {

              return 6;
            }

            else
            {
              v16 = OUTLINED_FUNCTION_7(0x6F6C6F4374786574, 0xEA00000000003472);

              if (v16)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1D855B880(char a1)
{
  result = 6710642;
  switch(a1)
  {
    case 1:
      result = OUTLINED_FUNCTION_11_5();
      break;
    case 2:
      result = OUTLINED_FUNCTION_10_7();
      break;
    case 3:
      result = 0x6F6C6F4374786574;
      break;
    case 4:
    case 5:
    case 6:
      result = OUTLINED_FUNCTION_19_3();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D855B964@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D855B6E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D855B998()
{
  sub_1D855BCA8();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D855B9D0()
{
  sub_1D855BCA8();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void Artwork.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_21_5();
  v46 = v26;
  v28 = v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A988, &qword_1D85A6B80);
  OUTLINED_FUNCTION_1();
  v31 = v30;
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v32);
  v34 = v45 - v33;
  v36 = *v25;
  v35 = v25[1];
  v37 = v25[2];
  v38 = v25[3];
  v39 = v25[4];
  v45[9] = v25[5];
  v45[10] = v39;
  v40 = v25[6];
  v45[7] = v25[7];
  v45[8] = v40;
  v41 = v25[9];
  v45[5] = v25[8];
  v45[6] = v41;
  v42 = v25[11];
  v45[3] = v25[10];
  v45[4] = v42;
  v43 = v25[13];
  v45[1] = v25[12];
  v45[2] = v43;
  __swift_project_boxed_opaque_existential_1(v28, v28[3]);
  sub_1D855BCA8();

  sub_1D8581BB8();
  v47 = v36;
  v48 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA389C8, &qword_1D8590820);
  sub_1D855C99C(&qword_1ECA389D0, &protocol conformance descriptor for Ref<A>);
  v44 = v46;
  sub_1D8581A58();
  if (v44)
  {
  }

  else
  {

    v47 = v37;
    v48 = v38;
    sub_1D855BCFC();
    OUTLINED_FUNCTION_232();
    sub_1D8581A58();
    OUTLINED_FUNCTION_9_6(2);
    OUTLINED_FUNCTION_232();
    sub_1D8581998();
    OUTLINED_FUNCTION_9_6(3);
    OUTLINED_FUNCTION_232();
    sub_1D8581998();
    OUTLINED_FUNCTION_9_6(4);
    OUTLINED_FUNCTION_232();
    sub_1D8581998();
    OUTLINED_FUNCTION_9_6(5);
    OUTLINED_FUNCTION_232();
    sub_1D8581998();
    OUTLINED_FUNCTION_9_6(6);
    OUTLINED_FUNCTION_232();
    sub_1D8581998();
  }

  (*(v31 + 8))(v34, v29);
  OUTLINED_FUNCTION_20_2();
}

unint64_t sub_1D855BCA8()
{
  result = qword_1ECA55858[0];
  if (!qword_1ECA55858[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA55858);
  }

  return result;
}

unint64_t sub_1D855BCFC()
{
  result = qword_1ECA3A990;
  if (!qword_1ECA3A990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3A990);
  }

  return result;
}

uint64_t Artwork.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 40);
  v4 = *(v1 + 56);
  v5 = *(v1 + 72);
  v6 = *(v1 + 88);
  v7 = *(v1 + 104);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA389C8, &qword_1D8590820);
  sub_1D855C99C(&qword_1ECA389E0, &protocol conformance descriptor for Ref<A>);
  sub_1D85811E8();
  if (v2 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v2;
  }

  MEMORY[0x1DA719210](*&v8);
  v9 = OUTLINED_FUNCTION_7_8();
  MEMORY[0x1DA719210](v9);
  if (v3)
  {
    OUTLINED_FUNCTION_414();
    sub_1D85812B8();
    if (v4)
    {
      goto LABEL_6;
    }
  }

  else
  {
    OUTLINED_FUNCTION_402();
    if (v4)
    {
LABEL_6:
      OUTLINED_FUNCTION_414();
      sub_1D85812B8();
      if (v5)
      {
        goto LABEL_7;
      }

      goto LABEL_12;
    }
  }

  OUTLINED_FUNCTION_402();
  if (v5)
  {
LABEL_7:
    OUTLINED_FUNCTION_414();
    sub_1D85812B8();
    if (v6)
    {
      goto LABEL_8;
    }

LABEL_13:
    OUTLINED_FUNCTION_402();
    if (v7)
    {
      goto LABEL_9;
    }

    return OUTLINED_FUNCTION_402();
  }

LABEL_12:
  OUTLINED_FUNCTION_402();
  if (!v6)
  {
    goto LABEL_13;
  }

LABEL_8:
  OUTLINED_FUNCTION_414();
  sub_1D85812B8();
  if (v7)
  {
LABEL_9:
    OUTLINED_FUNCTION_414();
    return sub_1D85812B8();
  }

  return OUTLINED_FUNCTION_402();
}

uint64_t Artwork.hashValue.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_379(a1);
  Artwork.hash(into:)(v2);
  return sub_1D8581B98();
}

void Artwork.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_21_5();
  v27 = v26;
  v29 = v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A998, &qword_1D85A6B88);
  OUTLINED_FUNCTION_1();
  v32 = v31;
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v51 - v34;
  __swift_project_boxed_opaque_existential_1(v27, v27[3]);
  sub_1D855BCA8();
  sub_1D8581BA8();
  if (v25)
  {
    __swift_destroy_boxed_opaque_existential_1(v27);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA389C8, &qword_1D8590820);
    LOBYTE(v60[0]) = 0;
    sub_1D855C99C(&qword_1ECA38A00, &protocol conformance descriptor for Ref<A>);
    sub_1D8581958();
    v37 = v61;
    v36 = v62;
    LOBYTE(v60[0]) = 1;
    sub_1D855C45C();
    sub_1D8581958();
    v38 = v61;
    v39 = v62;
    v56 = OUTLINED_FUNCTION_2_8(2);
    v59 = v40;
    v55 = OUTLINED_FUNCTION_2_8(3);
    v58 = v41;
    v54 = OUTLINED_FUNCTION_2_8(4);
    v57 = v42;
    v52 = OUTLINED_FUNCTION_2_8(5);
    v53 = v37;
    v44 = v43;
    v45 = sub_1D8581898();
    v46 = v35;
    v48 = v47;
    (*(v32 + 8))(v46, v30);
    v60[0] = v53;
    v60[1] = v36;
    v60[2] = v38;
    v60[3] = v39;
    v60[4] = v56;
    v49 = v59;
    v60[5] = v59;
    v60[6] = v55;
    v50 = v58;
    v60[7] = v58;
    v60[8] = v54;
    v60[9] = v57;
    v60[10] = v52;
    v60[11] = v44;
    v60[12] = v45;
    v60[13] = v48;
    memcpy(v29, v60, 0x70uLL);
    sub_1D847BC2C(v60, &v61);
    __swift_destroy_boxed_opaque_existential_1(v27);
    v61 = v53;
    v62 = v36;
    v63 = v38;
    v64 = v39;
    v65 = v56;
    v66 = v49;
    v67 = v55;
    v68 = v50;
    v69 = v54;
    v70 = v57;
    v71 = v52;
    v72 = v44;
    v73 = v45;
    v74 = v48;
    sub_1D847B824(&v61);
  }

  OUTLINED_FUNCTION_20_2();
}

uint64_t sub_1D855C420(uint64_t a1)
{
  sub_1D8581B58();
  Artwork.hash(into:)(v2);
  return sub_1D8581B98();
}

unint64_t sub_1D855C45C()
{
  result = qword_1ECA3A9A0;
  if (!qword_1ECA3A9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3A9A0);
  }

  return result;
}

unint64_t sub_1D855C4B4()
{
  result = qword_1ECA3A9A8;
  if (!qword_1ECA3A9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3A9A8);
  }

  return result;
}

uint64_t sub_1D855C514(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_1D855C554(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Artwork.Size(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return OUTLINED_FUNCTION_226(*a1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1D855C5E4(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          result = OUTLINED_FUNCTION_262(result, a2 + 6);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1D855C6B8(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_262(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D855C790()
{
  result = qword_1ECA55D60[0];
  if (!qword_1ECA55D60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA55D60);
  }

  return result;
}

unint64_t sub_1D855C7E8()
{
  result = qword_1ECA55F70[0];
  if (!qword_1ECA55F70[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA55F70);
  }

  return result;
}

unint64_t sub_1D855C840()
{
  result = qword_1ECA56080;
  if (!qword_1ECA56080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA56080);
  }

  return result;
}

unint64_t sub_1D855C898()
{
  result = qword_1ECA56088[0];
  if (!qword_1ECA56088[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA56088);
  }

  return result;
}

unint64_t sub_1D855C8F0()
{
  result = qword_1ECA56110;
  if (!qword_1ECA56110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA56110);
  }

  return result;
}

unint64_t sub_1D855C948()
{
  result = qword_1ECA56118[0];
  if (!qword_1ECA56118[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA56118);
  }

  return result;
}

uint64_t sub_1D855C99C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA389C8, &qword_1D8590820);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

GameServices::DataRefreshScope_optional __swiftcall DataRefreshScope.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D8581868();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t DataRefreshScope.rawValue.getter()
{
  v1 = 0x656C617473;
  if (*v0 != 1)
  {
    v1 = 0x676E697373696DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 7105633;
  }
}

uint64_t sub_1D855CB28@<X0>(uint64_t *a1@<X8>)
{
  result = DataRefreshScope.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1D855CB54()
{
  result = qword_1ECA3A9B0;
  if (!qword_1ECA3A9B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA3A9B8, &qword_1D85A6FF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3A9B0);
  }

  return result;
}

uint64_t sub_1D855CBC8()
{
  OUTLINED_FUNCTION_99();
  sub_1D855CFB0();
  OUTLINED_FUNCTION_102();
  return sub_1D8581438();
}

uint64_t sub_1D855CC10()
{
  OUTLINED_FUNCTION_99();
  sub_1D855CFB0();
  OUTLINED_FUNCTION_102();
  return sub_1D85813E8();
}

unint64_t sub_1D855CC58()
{
  result = qword_1ECA3A9C0;
  if (!qword_1ECA3A9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3A9C0);
  }

  return result;
}

uint64_t sub_1D855CCAC(unsigned __int8 a1, char a2)
{
  v2 = 7105633;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x656C617473;
    }

    else
    {
      v4 = 0x676E697373696DLL;
    }

    if (v3 == 1)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  else
  {
    v5 = 0xE300000000000000;
    v4 = 7105633;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x656C617473;
    }

    else
    {
      v2 = 0x676E697373696DLL;
    }

    if (a2 == 1)
    {
      v6 = 0xE500000000000000;
    }

    else
    {
      v6 = 0xE700000000000000;
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
    v8 = sub_1D8581AB8();
  }

  return v8 & 1;
}

uint64_t sub_1D855CDB8(uint64_t a1, unsigned __int8 a2)
{
  sub_1D85812B8();
}

_BYTE *storeEnumTagSinglePayload for DataRefreshScope(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1D855CF1C(uint64_t a1, char a2)
{
  sub_1D8581B58();
  sub_1D85812B8();

  return sub_1D8581B98();
}

unint64_t sub_1D855CFB0()
{
  result = qword_1ECA3A9C8;
  if (!qword_1ECA3A9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3A9C8);
  }

  return result;
}

uint64_t $DistributedAuthenticationServiceProtocol.id.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 120);
  *a1 = *(v1 + 112);
  a1[1] = v2;
}

void *static $DistributedAuthenticationServiceProtocol.resolve(id:using:)(void *a1, uint64_t a2)
{
  type metadata accessor for $DistributedAuthenticationServiceProtocol();
  type metadata accessor for GameServicesActorSystem(0);
  OUTLINED_FUNCTION_1_9();
  sub_1D855E8B0(v5, 255, v6, &protocol conformance descriptor for GameServicesActorSystem);
  OUTLINED_FUNCTION_0_16();
  sub_1D855E8B0(v7, v8, v9, &protocol conformance descriptor for $DistributedAuthenticationServiceProtocol);
  v10 = sub_1D8580F48();
  v11 = v10;
  if (!v2 && !v10)
  {
    v11 = swift_distributedActor_remote_initialize();
    v12 = a1[1];
    v11[14] = *a1;
    v11[15] = v12;
    v11[16] = a2;
  }

  return v11;
}

uint64_t $DistributedAuthenticationServiceProtocol.deinit()
{
  type metadata accessor for GameServicesActorSystem(0);
  OUTLINED_FUNCTION_1_9();
  sub_1D855E8B0(v1, 255, v2, &protocol conformance descriptor for GameServicesActorSystem);
  sub_1D8580F68();

  swift_defaultActor_destroy();
  return v0;
}

uint64_t $DistributedAuthenticationServiceProtocol.__deallocating_deinit()
{
  if (swift_distributed_actor_is_remote())
  {

    swift_defaultActor_destroy();
  }

  else
  {
    $DistributedAuthenticationServiceProtocol.deinit();
  }

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1D855D224()
{
  sub_1D8581B58();
  type metadata accessor for $DistributedAuthenticationServiceProtocol();
  OUTLINED_FUNCTION_0_16();
  sub_1D855E8B0(v0, v1, v2, &protocol conformance descriptor for $DistributedAuthenticationServiceProtocol);
  sub_1D85811E8();
  return sub_1D8581B98();
}

uint64_t $DistributedAuthenticationServiceProtocol.__allocating_init(actorSystem:)(uint64_t a1)
{
  v2 = swift_allocObject();
  $DistributedAuthenticationServiceProtocol.init(actorSystem:)(a1);
  return v2;
}

void *$DistributedAuthenticationServiceProtocol.init(actorSystem:)(uint64_t a1)
{
  swift_defaultActor_initialize();
  v1[16] = a1;
  type metadata accessor for $DistributedAuthenticationServiceProtocol();
  type metadata accessor for GameServicesActorSystem(0);
  OUTLINED_FUNCTION_1_9();
  sub_1D855E8B0(v3, 255, v4, &protocol conformance descriptor for GameServicesActorSystem);
  OUTLINED_FUNCTION_0_16();
  sub_1D855E8B0(v5, v6, v7, &protocol conformance descriptor for $DistributedAuthenticationServiceProtocol);

  OUTLINED_FUNCTION_324();
  sub_1D8580F58();
  v1[14] = v9;
  v1[15] = v10;

  OUTLINED_FUNCTION_324();
  sub_1D8580F38();

  return v1;
}

uint64_t $DistributedAuthenticationServiceProtocol.unownedExecutor.getter()
{
  if ((sub_1D8580FF8() & 1) == 0)
  {
    type metadata accessor for $DistributedAuthenticationServiceProtocol();
    OUTLINED_FUNCTION_0_16();
    sub_1D855E8B0(v1, v2, v3, &protocol conformance descriptor for $DistributedAuthenticationServiceProtocol);
    return sub_1D8580F28();
  }

  return v0;
}

uint64_t sub_1D855D468@<X0>(uint64_t *a1@<X8>)
{
  result = $DistributedAuthenticationServiceProtocol.actorSystem.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1D855D4F4(uint64_t a1)
{
  type metadata accessor for $DistributedAuthenticationServiceProtocol();
  OUTLINED_FUNCTION_0_16();
  sub_1D855E8B0(v1, v2, v3, &protocol conformance descriptor for $DistributedAuthenticationServiceProtocol);
  return sub_1D8580FC8();
}

uint64_t sub_1D855D55C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D8581B58();
  type metadata accessor for $DistributedAuthenticationServiceProtocol();
  sub_1D85811E8();
  return sub_1D8581B98();
}

uint64_t sub_1D855D5D8()
{
  OUTLINED_FUNCTION_148();
  v1 = OUTLINED_FUNCTION_16_6();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D84C2588;

  return v3();
}

uint64_t sub_1D855D668()
{
  v1[6] = v0;
  v2 = sub_1D8581018();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D855D728);
}

uint64_t sub_1D855D728()
{
  if (swift_distributed_actor_is_remote())
  {
    v0[10] = $DistributedAuthenticationServiceProtocol.actorSystem.getter();
    GameServicesActorSystem.makeInvocationEncoder()(v0 + 2);
    v1 = type metadata accessor for $DistributedAuthenticationServiceProtocol();
    GameServicesActorSystem.JSONInvocationEncoder.recordGenericSubstitution<A>(_:)(v1);
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38E10, &qword_1D8590D20);
    OUTLINED_FUNCTION_30();
    sub_1D855E4B4(v3, v4, v5, MEMORY[0x1E69E6330]);
    OUTLINED_FUNCTION_32();
    v9 = sub_1D855E4B4(v6, v7, v8, MEMORY[0x1E69E6300]);
    OUTLINED_FUNCTION_10(v9);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v10)
    {

      OUTLINED_FUNCTION_146();

      return v11();
    }

    else
    {
      OUTLINED_FUNCTION_15_3();
      v14 = swift_task_alloc();
      v0[12] = v14;
      OUTLINED_FUNCTION_0_16();
      sub_1D855E8B0(v15, v16, v17, &protocol conformance descriptor for $DistributedAuthenticationServiceProtocol);
      *v14 = v0;
      v14[1] = sub_1D855DA30;

      return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_16_6();
    v0[11] = v13;
    *v13 = v0;
    v13[1] = sub_1D84D20B4;

    return v18();
  }
}

uint64_t sub_1D855DA30()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  v2 = *v1;
  OUTLINED_FUNCTION_37();
  *v3 = v2;
  *(v4 + 104) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v5);
}

uint64_t sub_1D855DB30()
{
  OUTLINED_FUNCTION_174();

  v1 = OUTLINED_FUNCTION_74();
  v2(v1);
  OUTLINED_FUNCTION_331();

  v3 = *(v0 + 40);

  OUTLINED_FUNCTION_69_2();

  return v4(v3);
}

uint64_t sub_1D855DBCC()
{
  OUTLINED_FUNCTION_174();

  v0 = OUTLINED_FUNCTION_74();
  v1(v0);
  OUTLINED_FUNCTION_331();

  OUTLINED_FUNCTION_146();

  return v2();
}

uint64_t DistributedAuthenticationServiceProtocol<>.listLocalPlayers()()
{
  OUTLINED_FUNCTION_148();
  v1[10] = v2;
  v1[11] = v0;
  v1[8] = v3;
  v1[9] = v4;
  v5 = sub_1D8581018();
  v1[12] = v5;
  v1[13] = *(v5 - 8);
  v1[14] = swift_task_alloc();
  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v6);
}

{
  OUTLINED_FUNCTION_148();
  sub_1D8580FA8();

  return MEMORY[0x1EEE6DFA0](sub_1D855E730);
}

uint64_t sub_1D855DD1C()
{
  if (swift_distributed_actor_is_remote())
  {
    v1 = v0[8];
    sub_1D8580F98();
    v0[15] = v0[6];
    GameServicesActorSystem.makeInvocationEncoder()(v0 + 2);
    GameServicesActorSystem.JSONInvocationEncoder.recordGenericSubstitution<A>(_:)(v1);
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38E10, &qword_1D8590D20);
    OUTLINED_FUNCTION_30();
    sub_1D855E4B4(v3, v4, v5, MEMORY[0x1E69E6330]);
    OUTLINED_FUNCTION_32();
    v9 = sub_1D855E4B4(v6, v7, v8, MEMORY[0x1E69E6300]);
    OUTLINED_FUNCTION_10(v9);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v10)
    {

      OUTLINED_FUNCTION_146();

      return v11();
    }

    else
    {
      OUTLINED_FUNCTION_15_3();
      v18 = swift_task_alloc();
      v0[16] = v18;
      *v18 = v0;
      v18[1] = sub_1D855E08C;

      return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
    }
  }

  else
  {
    v13 = v0[10];
    v0[5] = v0[11];
    v14 = *(v13 + 16);
    OUTLINED_FUNCTION_11_6(v14);
    v19 = (v15 + *v15);
    v16 = swift_task_alloc();
    v0[18] = v16;
    *v16 = v0;
    v16[1] = sub_1D855E228;
    v17 = v0[8];

    return v19(v17, v14);
  }
}

uint64_t sub_1D855E08C()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  v2 = *v1;
  OUTLINED_FUNCTION_37();
  *v3 = v2;
  *(v4 + 136) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v5);
}

uint64_t sub_1D855E18C()
{
  OUTLINED_FUNCTION_174();

  v1 = OUTLINED_FUNCTION_74();
  v2(v1);
  OUTLINED_FUNCTION_331();

  v3 = *(v0 + 56);

  OUTLINED_FUNCTION_69_2();

  return v4(v3);
}

uint64_t sub_1D855E228()
{
  OUTLINED_FUNCTION_174();
  v3 = v2;
  OUTLINED_FUNCTION_153();
  v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_37();
  *v7 = v6;
  *(v5 + 152) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149();

    return MEMORY[0x1EEE6DFA0](v8);
  }

  else
  {

    v9 = *(v6 + 8);

    return v9(v3);
  }
}

uint64_t sub_1D855E36C()
{
  OUTLINED_FUNCTION_174();

  v0 = OUTLINED_FUNCTION_74();
  v1(v0);
  OUTLINED_FUNCTION_331();

  OUTLINED_FUNCTION_146();

  return v2();
}

uint64_t sub_1D855E400(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  v4 = swift_task_alloc();
  *(v3 + 24) = v4;
  *v4 = v3;
  v4[1] = sub_1D84EAD60;

  return DistributedAuthenticationServiceProtocol<>.listLocalPlayers()();
}

uint64_t sub_1D855E4B4(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA38E10, &qword_1D8590D20);
    sub_1D85542B4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D855E53C(uint64_t *a1)
{
  v1 = *a1;
  type metadata accessor for $DistributedAuthenticationServiceProtocol();
  OUTLINED_FUNCTION_0_16();
  sub_1D855E8B0(v2, v3, v4, &protocol conformance descriptor for $DistributedAuthenticationServiceProtocol);

  return MEMORY[0x1EEE6CC98](v1);
}

uint64_t sub_1D855E5B4(uint64_t a1)
{
  type metadata accessor for $DistributedAuthenticationServiceProtocol();
  OUTLINED_FUNCTION_0_16();
  sub_1D855E8B0(v1, v2, v3, &protocol conformance descriptor for $DistributedAuthenticationServiceProtocol);
  sub_1D843D180();
  return sub_1D8580FD8();
}

uint64_t sub_1D855E638@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for $DistributedAuthenticationServiceProtocol();
  OUTLINED_FUNCTION_0_16();
  sub_1D855E8B0(v4, v5, v6, &protocol conformance descriptor for $DistributedAuthenticationServiceProtocol);
  sub_1D843EE3C();
  result = sub_1D8580FE8();
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1D855E7F8(uint64_t a1)
{
  OUTLINED_FUNCTION_0_16();
  result = sub_1D855E8B0(v2, v3, v4, &protocol conformance descriptor for $DistributedAuthenticationServiceProtocol);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D855E8B0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t dispatch thunk of AuthenticationServiceProtocol.listLocalPlayers()(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_11_6(a2);
  v8 = (v5 + *v5);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D84C4238;

  return v8(a1, a2);
}

uint64_t OUTLINED_FUNCTION_15_3()
{

  return sub_1D8581028();
}

uint64_t OUTLINED_FUNCTION_16_6()
{

  return swift_task_alloc();
}

uint64_t $DistributedPreferencesServiceProtocol.id.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 120);
  *a1 = *(v1 + 112);
  a1[1] = v2;
}

void *static $DistributedPreferencesServiceProtocol.resolve(id:using:)(void *a1, uint64_t a2)
{
  type metadata accessor for $DistributedPreferencesServiceProtocol();
  type metadata accessor for GameServicesActorSystem(0);
  OUTLINED_FUNCTION_2_9();
  sub_1D855FB34(v5, 255, v6, &protocol conformance descriptor for GameServicesActorSystem);
  OUTLINED_FUNCTION_0_17();
  sub_1D855FB34(v7, v8, v9, &protocol conformance descriptor for $DistributedPreferencesServiceProtocol);
  v10 = sub_1D8580F48();
  v11 = v10;
  if (!v2 && !v10)
  {
    v11 = swift_distributedActor_remote_initialize();
    v12 = a1[1];
    v11[14] = *a1;
    v11[15] = v12;
    v11[16] = a2;
  }

  return v11;
}

uint64_t $DistributedPreferencesServiceProtocol.deinit()
{
  type metadata accessor for GameServicesActorSystem(0);
  OUTLINED_FUNCTION_2_9();
  sub_1D855FB34(v1, 255, v2, &protocol conformance descriptor for GameServicesActorSystem);
  sub_1D8580F68();

  swift_defaultActor_destroy();
  return v0;
}

uint64_t $DistributedPreferencesServiceProtocol.__deallocating_deinit()
{
  if (swift_distributed_actor_is_remote())
  {

    swift_defaultActor_destroy();
  }

  else
  {
    $DistributedPreferencesServiceProtocol.deinit();
  }

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1D855ECC8()
{
  sub_1D8581B58();
  type metadata accessor for $DistributedPreferencesServiceProtocol();
  OUTLINED_FUNCTION_0_17();
  sub_1D855FB34(v0, v1, v2, &protocol conformance descriptor for $DistributedPreferencesServiceProtocol);
  sub_1D85811E8();
  return sub_1D8581B98();
}

uint64_t $DistributedPreferencesServiceProtocol.__allocating_init(actorSystem:)(uint64_t a1)
{
  v2 = swift_allocObject();
  $DistributedPreferencesServiceProtocol.init(actorSystem:)(a1);
  return v2;
}

void *$DistributedPreferencesServiceProtocol.init(actorSystem:)(uint64_t a1)
{
  swift_defaultActor_initialize();
  v1[16] = a1;
  type metadata accessor for $DistributedPreferencesServiceProtocol();
  type metadata accessor for GameServicesActorSystem(0);
  OUTLINED_FUNCTION_2_9();
  sub_1D855FB34(v3, 255, v4, &protocol conformance descriptor for GameServicesActorSystem);
  OUTLINED_FUNCTION_0_17();
  sub_1D855FB34(v5, v6, v7, &protocol conformance descriptor for $DistributedPreferencesServiceProtocol);

  OUTLINED_FUNCTION_324();
  sub_1D8580F58();
  v1[14] = v9;
  v1[15] = v10;

  OUTLINED_FUNCTION_324();
  sub_1D8580F38();

  return v1;
}

uint64_t $DistributedPreferencesServiceProtocol.unownedExecutor.getter()
{
  if ((sub_1D8580FF8() & 1) == 0)
  {
    type metadata accessor for $DistributedPreferencesServiceProtocol();
    OUTLINED_FUNCTION_0_17();
    sub_1D855FB34(v1, v2, v3, &protocol conformance descriptor for $DistributedPreferencesServiceProtocol);
    return sub_1D8580F28();
  }

  return v0;
}

uint64_t sub_1D855EF0C@<X0>(uint64_t *a1@<X8>)
{
  result = $DistributedPreferencesServiceProtocol.actorSystem.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1D855EF98(uint64_t a1)
{
  type metadata accessor for $DistributedPreferencesServiceProtocol();
  OUTLINED_FUNCTION_0_17();
  sub_1D855FB34(v1, v2, v3, &protocol conformance descriptor for $DistributedPreferencesServiceProtocol);
  return sub_1D8580FC8();
}

uint64_t sub_1D855F000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D8581B58();
  type metadata accessor for $DistributedPreferencesServiceProtocol();
  sub_1D85811E8();
  return sub_1D8581B98();
}

uint64_t sub_1D855F104(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = sub_1D855FB34(&qword_1ECA3AA08, a2, type metadata accessor for $DistributedPreferencesServiceProtocol, &protocol conformance descriptor for $DistributedPreferencesServiceProtocol);
  OUTLINED_FUNCTION_1_10();
  result = sub_1D855FB34(v3, v4, type metadata accessor for $DistributedPreferencesServiceProtocol, v5);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1D855F20C(uint64_t a1)
{
  OUTLINED_FUNCTION_0_17();
  result = sub_1D855FB34(v2, v3, v4, &protocol conformance descriptor for $DistributedPreferencesServiceProtocol);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D855F254(uint64_t *a1)
{
  v1 = *a1;
  type metadata accessor for $DistributedPreferencesServiceProtocol();
  OUTLINED_FUNCTION_0_17();
  sub_1D855FB34(v2, v3, v4, &protocol conformance descriptor for $DistributedPreferencesServiceProtocol);

  return MEMORY[0x1EEE6CC98](v1);
}

uint64_t sub_1D855F2CC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  type metadata accessor for $DistributedPreferencesServiceProtocol();
  sub_1D855FB34(&qword_1ECA3AA20, v2, type metadata accessor for $DistributedPreferencesServiceProtocol, &protocol conformance descriptor for $DistributedPreferencesServiceProtocol);
  sub_1D855FB34(&qword_1ECA3AA08, v3, type metadata accessor for $DistributedPreferencesServiceProtocol, &protocol conformance descriptor for $DistributedPreferencesServiceProtocol);
  *v1 = v0;
  v1[1] = sub_1D855F3E8;

  return DistributedAuthenticationServiceProtocol<>.listLocalPlayers()();
}

uint64_t sub_1D855F3E8(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_1D855F4E8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  type metadata accessor for $DistributedPreferencesServiceProtocol();
  sub_1D855FB34(&qword_1ECA3AA20, v2, type metadata accessor for $DistributedPreferencesServiceProtocol, &protocol conformance descriptor for $DistributedPreferencesServiceProtocol);
  OUTLINED_FUNCTION_1_10();
  sub_1D855FB34(v3, v4, type metadata accessor for $DistributedPreferencesServiceProtocol, v5);
  *v1 = v0;
  v1[1] = sub_1D855F5FC;

  return DistributedOnboardingServiceProtocol<>.refreshOnboarding(for:)();
}

uint64_t sub_1D855F5FC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1D855F6F0()
{
  OUTLINED_FUNCTION_206();
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  type metadata accessor for $DistributedPreferencesServiceProtocol();
  OUTLINED_FUNCTION_3_9();
  sub_1D855FB34(v3, v4, v1, &protocol conformance descriptor for $DistributedPreferencesServiceProtocol);
  OUTLINED_FUNCTION_1_10();
  sub_1D855FB34(v5, v6, v1, v7);
  OUTLINED_FUNCTION_6_6();
  *v2 = v8;
  OUTLINED_FUNCTION_4_7();

  return DistributedOnboardingServiceProtocol<>.describeOnboarding(for:)();
}

uint64_t sub_1D855F7E0()
{
  OUTLINED_FUNCTION_206();
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  type metadata accessor for $DistributedPreferencesServiceProtocol();
  OUTLINED_FUNCTION_3_9();
  sub_1D855FB34(v3, v4, v1, &protocol conformance descriptor for $DistributedPreferencesServiceProtocol);
  OUTLINED_FUNCTION_1_10();
  sub_1D855FB34(v5, v6, v1, v7);
  OUTLINED_FUNCTION_6_6();
  *v2 = v8;
  OUTLINED_FUNCTION_4_7();

  return DistributedOnboardingServiceProtocol<>.describeOnboarding2(for:)();
}

uint64_t sub_1D855F8D0()
{
  OUTLINED_FUNCTION_206();
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  type metadata accessor for $DistributedPreferencesServiceProtocol();
  OUTLINED_FUNCTION_3_9();
  sub_1D855FB34(v3, v4, v1, &protocol conformance descriptor for $DistributedPreferencesServiceProtocol);
  OUTLINED_FUNCTION_1_10();
  sub_1D855FB34(v5, v6, v1, v7);
  OUTLINED_FUNCTION_6_6();
  *v2 = v8;
  v2[1] = sub_1D855FB7C;

  return DistributedOnboardingServiceProtocol<>.setProfileSettings(_:for:)();
}

uint64_t sub_1D855F9D4(uint64_t a1)
{
  type metadata accessor for $DistributedPreferencesServiceProtocol();
  OUTLINED_FUNCTION_0_17();
  sub_1D855FB34(v1, v2, v3, &protocol conformance descriptor for $DistributedPreferencesServiceProtocol);
  sub_1D843D180();
  return sub_1D8580FD8();
}

uint64_t sub_1D855FA58@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for $DistributedPreferencesServiceProtocol();
  OUTLINED_FUNCTION_0_17();
  sub_1D855FB34(v4, v5, v6, &protocol conformance descriptor for $DistributedPreferencesServiceProtocol);
  sub_1D843EE3C();
  result = sub_1D8580FE8();
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1D855FB34(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void __swiftcall GameGenre.init(id:name:parentId:)(GameServices::GameGenre *__return_ptr retstr, Swift::String id, Swift::String name, Swift::String parentId)
{
  retstr->id = id;
  retstr->name = name;
  retstr->parentId = parentId;
}

uint64_t static GameGenre.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  v10 = *a1 == *a2 && a1[1] == a2[1];
  if (!v10 && (sub_1D8581AB8() & 1) == 0)
  {
    return 0;
  }

  v11 = v2 == v6 && v4 == v7;
  if (!v11 && (sub_1D8581AB8() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  OUTLINED_FUNCTION_194();

  return sub_1D8581AB8();
}

uint64_t sub_1D855FD00(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (OUTLINED_FUNCTION_7(25705, 0xE200000000000000) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701667182 && a2 == 0xE400000000000000;
    if (v6 || (OUTLINED_FUNCTION_7(1701667182, 0xE400000000000000) & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6449746E65726170 && a2 == 0xE800000000000000)
    {

      return 2;
    }

    else
    {
      OUTLINED_FUNCTION_7(0x6449746E65726170, 0xE800000000000000);
      OUTLINED_FUNCTION_369();
      OUTLINED_FUNCTION_274_2();
      if (v3)
      {
        return v8 + 1;
      }

      else
      {
        return v8;
      }
    }
  }
}

uint64_t sub_1D855FDD8(char a1)
{
  if (!a1)
  {
    return 25705;
  }

  if (a1 == 1)
  {
    return 1701667182;
  }

  return 0x6449746E65726170;
}

uint64_t sub_1D855FE24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D855FD00(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D855FE4C()
{
  sub_1D8560030();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D855FE84()
{
  sub_1D8560030();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void GameGenre.encode(to:)()
{
  OUTLINED_FUNCTION_285();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3AA28, &qword_1D85A77C8);
  OUTLINED_FUNCTION_1();
  v6 = v5;
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_110();
  OUTLINED_FUNCTION_260(v3, v3[3]);
  sub_1D8560030();
  OUTLINED_FUNCTION_359();
  sub_1D8581BB8();
  sub_1D8581A08();
  if (!v0)
  {
    OUTLINED_FUNCTION_232();
    sub_1D8581A08();
    OUTLINED_FUNCTION_232();
    sub_1D8581A08();
  }

  (*(v6 + 8))(v1, v4);
  OUTLINED_FUNCTION_220_2();
  OUTLINED_FUNCTION_284_0();
}

unint64_t sub_1D8560030()
{
  result = qword_1ECA56DA0;
  if (!qword_1ECA56DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA56DA0);
  }

  return result;
}

uint64_t GameGenre.hash(into:)(uint64_t a1)
{
  sub_1D85812B8();
  OUTLINED_FUNCTION_188();
  sub_1D85812B8();
  OUTLINED_FUNCTION_344_1();

  return sub_1D85812B8();
}

uint64_t GameGenre.hashValue.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_379(a1);
  OUTLINED_FUNCTION_397();
  sub_1D85812B8();
  sub_1D85812B8();
  sub_1D85812B8();
  return sub_1D8581B98();
}

void GameGenre.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_285();
  v27 = v26;
  v29 = v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3AA30, &qword_1D85A77D0);
  OUTLINED_FUNCTION_1();
  v32 = v31;
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_260(v27, v27[3]);
  v34 = sub_1D8560030();
  OUTLINED_FUNCTION_171_3(&type metadata for GameGenre.CodingKeys, v35, v34);
  if (v24)
  {
    __swift_destroy_boxed_opaque_existential_1(v27);
  }

  else
  {
    OUTLINED_FUNCTION_185_0();
    v36 = sub_1D8581908();
    v45 = v37;
    OUTLINED_FUNCTION_185_0();
    v43 = sub_1D8581908();
    v44 = v38;
    v39 = sub_1D8581908();
    v41 = v40;
    v42 = v39;
    (*(v32 + 8))(v25, v30);
    *v29 = v36;
    v29[1] = v45;
    v29[2] = v43;
    v29[3] = v44;
    v29[4] = v42;
    v29[5] = v41;

    __swift_destroy_boxed_opaque_existential_1(v27);
  }

  OUTLINED_FUNCTION_480();
  OUTLINED_FUNCTION_284_0();
}

uint64_t sub_1D85603B4(uint64_t a1)
{
  sub_1D8581B58();
  OUTLINED_FUNCTION_397();
  sub_1D85812B8();
  sub_1D85812B8();
  sub_1D85812B8();
  return sub_1D8581B98();
}

GameServices::GameFilters __swiftcall GameFilters.init(installedOnly:arcadeOnly:controllerSupportedOnly:leaderboardChallengesSupportedOnly:achievementsSupportedOnly:recentlyPlayed:challengeDefinitionsSupportedOnly:multiplayerActivitySupportedOnly:)(Swift::Bool installedOnly, Swift::Bool arcadeOnly, Swift::Bool controllerSupportedOnly, Swift::Bool leaderboardChallengesSupportedOnly, Swift::Bool achievementsSupportedOnly, Swift::Double_optional recentlyPlayed, Swift::Bool challengeDefinitionsSupportedOnly, Swift::Bool multiplayerActivitySupportedOnly)
{
  *(v8 + 7) = 1;
  *(v8 + 8) = 0;
  v9 = OUTLINED_FUNCTION_288_2(installedOnly, arcadeOnly, controllerSupportedOnly, leaderboardChallengesSupportedOnly, achievementsSupportedOnly, v8);
  *(v13 + 5) = v12;
  *(v13 + 6) = v14;
  result.genreIDs.value._rawValue = v10;
  result.installedOnly = v9;
  result.arcadeOnly = BYTE1(v9);
  result.controllerSupportedOnly = BYTE2(v9);
  result.leaderboardChallengesSupportedOnly = BYTE3(v9);
  result.achievementsSupportedOnly = BYTE4(v9);
  result.challengeDefinitionsSupportedOnly = BYTE5(v9);
  result.multiplayerActivitySupportedOnly = BYTE6(v9);
  result.unrestrictedOnly = HIBYTE(v9);
  result.genreIDs.is_nil = v11;
  return result;
}

void sub_1D8560468()
{
  BYTE7(xmmword_1EE0E1288) = 1;
  *(&xmmword_1EE0E1288 + 1) = 0;
  LODWORD(xmmword_1EE0E1288) = 0;
  *(&xmmword_1EE0E1288 + 3) = 0;
}

__int128 *sub_1D8560488()
{
  if (_MergedGlobals_3 != -1)
  {
    OUTLINED_FUNCTION_10_8();
    swift_once();
  }

  return &xmmword_1EE0E1288;
}

uint64_t GameFilters.genreIDs.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

GameServices::GameFilters __swiftcall GameFilters.init(installedOnly:arcadeOnly:controllerSupportedOnly:leaderboardChallengesSupportedOnly:achievementsSupportedOnly:recentlyPlayed:)(Swift::Bool installedOnly, Swift::Bool arcadeOnly, Swift::Bool controllerSupportedOnly, Swift::Bool leaderboardChallengesSupportedOnly, Swift::Bool achievementsSupportedOnly, Swift::Double_optional recentlyPlayed)
{
  OUTLINED_FUNCTION_288_2(installedOnly, arcadeOnly, controllerSupportedOnly, leaderboardChallengesSupportedOnly, achievementsSupportedOnly, v6);
  *(v7 + 5) = 0;
  OUTLINED_FUNCTION_178_2(v7);
  result.genreIDs.value._rawValue = v9;
  result.installedOnly = v8;
  result.arcadeOnly = BYTE1(v8);
  result.controllerSupportedOnly = BYTE2(v8);
  result.leaderboardChallengesSupportedOnly = BYTE3(v8);
  result.achievementsSupportedOnly = BYTE4(v8);
  result.challengeDefinitionsSupportedOnly = BYTE5(v8);
  result.multiplayerActivitySupportedOnly = BYTE6(v8);
  result.unrestrictedOnly = HIBYTE(v8);
  result.genreIDs.is_nil = v10;
  return result;
}

GameServices::GameFilters __swiftcall GameFilters.init(installedOnly:arcadeOnly:controllerSupportedOnly:leaderboardChallengesSupportedOnly:achievementsSupportedOnly:challengeDefinitionsSupportedOnly:multiplayerActivitySupportedOnly:)(Swift::Bool installedOnly, Swift::Bool arcadeOnly, Swift::Bool controllerSupportedOnly, Swift::Bool leaderboardChallengesSupportedOnly, Swift::Bool achievementsSupportedOnly, Swift::Bool challengeDefinitionsSupportedOnly, Swift::Bool multiplayerActivitySupportedOnly)
{
  OUTLINED_FUNCTION_288_2(installedOnly, arcadeOnly, controllerSupportedOnly, leaderboardChallengesSupportedOnly, achievementsSupportedOnly, v7);
  *(v9 + 5) = v8;
  *(v9 + 6) = v10;
  OUTLINED_FUNCTION_178_2(v9);
  result.genreIDs.value._rawValue = v12;
  result.installedOnly = v11;
  result.arcadeOnly = BYTE1(v11);
  result.controllerSupportedOnly = BYTE2(v11);
  result.leaderboardChallengesSupportedOnly = BYTE3(v11);
  result.achievementsSupportedOnly = BYTE4(v11);
  result.challengeDefinitionsSupportedOnly = BYTE5(v11);
  result.multiplayerActivitySupportedOnly = BYTE6(v11);
  result.unrestrictedOnly = HIBYTE(v11);
  result.genreIDs.is_nil = v13;
  return result;
}

GameServices::GameFilters __swiftcall GameFilters.init(installedOnly:arcadeOnly:controllerSupportedOnly:leaderboardChallengesSupportedOnly:achievementsSupportedOnly:recentlyPlayed:challengeDefinitionsSupportedOnly:)(Swift::Bool installedOnly, Swift::Bool arcadeOnly, Swift::Bool controllerSupportedOnly, Swift::Bool leaderboardChallengesSupportedOnly, Swift::Bool achievementsSupportedOnly, Swift::Double_optional recentlyPlayed, Swift::Bool challengeDefinitionsSupportedOnly)
{
  v8 = OUTLINED_FUNCTION_288_2(installedOnly, arcadeOnly, controllerSupportedOnly, leaderboardChallengesSupportedOnly, achievementsSupportedOnly, v7);
  *(v12 + 5) = v11;
  *(v12 + 6) = 256;
  *(v12 + 8) = 0;
  result.genreIDs.value._rawValue = v9;
  result.installedOnly = v8;
  result.arcadeOnly = BYTE1(v8);
  result.controllerSupportedOnly = BYTE2(v8);
  result.leaderboardChallengesSupportedOnly = BYTE3(v8);
  result.achievementsSupportedOnly = BYTE4(v8);
  result.challengeDefinitionsSupportedOnly = BYTE5(v8);
  result.multiplayerActivitySupportedOnly = BYTE6(v8);
  result.unrestrictedOnly = HIBYTE(v8);
  result.genreIDs.is_nil = v10;
  return result;
}

uint64_t static GameFilters.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  result = 0;
  if (*a1 == *a2 && ((a1[1] ^ a2[1]) & 1) == 0 && ((a1[2] ^ a2[2]) & 1) == 0 && ((a1[3] ^ a2[3]) & 1) == 0 && ((a1[4] ^ a2[4]) & 1) == 0 && ((a1[5] ^ a2[5]) & 1) == 0 && ((a1[6] ^ a2[6]) & 1) == 0 && ((a1[7] ^ a2[7]) & 1) == 0)
  {
    v4 = *(a1 + 1);
    v5 = *(a2 + 1);
    if (v4)
    {
      if (v5 && (sub_1D84C78BC(v4, v5) & 1) != 0)
      {
        return 1;
      }
    }

    else if (!v5)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_1D8560800()
{
  OUTLINED_FUNCTION_263_0();
  v2 = OUTLINED_FUNCTION_232_2();
  v4 = v1 == v2 && v0 == v3;
  if (v4 || (OUTLINED_FUNCTION_7(v2, v3) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = v1 == 0x6E4F656461637261 && v0 == 0xEA0000000000796CLL;
    if (v6 || (OUTLINED_FUNCTION_7(0x6E4F656461637261, 0xEA0000000000796CLL) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = v1 == 0xD000000000000017 && 0x80000001D8589380 == v0;
      if (v7 || (OUTLINED_FUNCTION_7(0xD000000000000017, 0x80000001D8589380) & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = v1 == 0xD000000000000022 && 0x80000001D85893A0 == v0;
        if (v8 || (OUTLINED_FUNCTION_7(0xD000000000000022, 0x80000001D85893A0) & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = v1 == 0xD000000000000019 && 0x80000001D85893D0 == v0;
          if (v9 || (OUTLINED_FUNCTION_7(0xD000000000000019, 0x80000001D85893D0) & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = v1 == 0xD000000000000021 && 0x80000001D85893F0 == v0;
            if (v10 || (OUTLINED_FUNCTION_7(0xD000000000000021, 0x80000001D85893F0) & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = v1 == 0xD000000000000020 && 0x80000001D8589420 == v0;
              if (v11 || (OUTLINED_FUNCTION_7(0xD000000000000020, 0x80000001D8589420) & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = v1 == 0xD000000000000010 && 0x80000001D8589450 == v0;
                if (v12 || (OUTLINED_FUNCTION_7(0xD000000000000010, 0x80000001D8589450) & 1) != 0)
                {

                  return 7;
                }

                else if (v1 == 0x73444965726E6567 && v0 == 0xE800000000000000)
                {

                  return 8;
                }

                else
                {
                  OUTLINED_FUNCTION_7(0x73444965726E6567, 0xE800000000000000);
                  OUTLINED_FUNCTION_369();
                  if (v1)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
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

uint64_t sub_1D8560A3C(uint64_t a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_232_2();
  switch(v3)
  {
    case 1:
      result = 0x6E4F656461637261;
      break;
    case 2:
      result = 0xD000000000000017;
      break;
    case 3:
      result = 0xD000000000000022;
      break;
    case 4:
      result = 0xD000000000000019;
      break;
    case 5:
      result = 0xD000000000000021;
      break;
    case 6:
      result = 0xD000000000000020;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0x73444965726E6567;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D8560B74@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D8560800();
  *a1 = result;
  return result;
}

uint64_t sub_1D8560B9C()
{
  sub_1D8571870();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D8560BD4()
{
  sub_1D8571870();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void GameFilters.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_285();
  v24 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3AA38, &unk_1D85A77D8);
  OUTLINED_FUNCTION_1();
  v26 = v25;
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_128();
  v35 = v20[4];
  v36 = v20[3];
  v33 = v20[6];
  v34 = v20[5];
  v28 = v20[7];
  v29 = v24[3];
  v30 = v24;
  v32 = v31;
  OUTLINED_FUNCTION_260(v30, v29);
  sub_1D8571870();
  sub_1D8581BB8();
  sub_1D8581A18();
  if (!v21)
  {
    OUTLINED_FUNCTION_165_3(1);
    sub_1D8581A18();
    OUTLINED_FUNCTION_165_3(2);
    sub_1D8581A18();
    OUTLINED_FUNCTION_165_3(3);
    OUTLINED_FUNCTION_159_1(v36);
    OUTLINED_FUNCTION_165_3(4);
    OUTLINED_FUNCTION_159_1(v35);
    OUTLINED_FUNCTION_165_3(5);
    OUTLINED_FUNCTION_159_1(v34);
    OUTLINED_FUNCTION_165_3(6);
    OUTLINED_FUNCTION_159_1(v33);
    OUTLINED_FUNCTION_165_3(7);
    OUTLINED_FUNCTION_159_1(v28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39CF0, &qword_1D85A4BA0);
    sub_1D843D820(&unk_1EE0E0040);
    sub_1D85819E8();
  }

  (*(v26 + 8))(v22, v32);
  OUTLINED_FUNCTION_220_2();
  OUTLINED_FUNCTION_284_0();
}

void GameFilters.hash(into:)()
{
  OUTLINED_FUNCTION_386();
  v1 = *(v0 + 8);
  sub_1D8581B78();
  sub_1D8581B78();
  sub_1D8581B78();
  sub_1D8581B78();
  sub_1D8581B78();
  sub_1D8581B78();
  sub_1D8581B78();
  sub_1D8581B78();
  if (v1)
  {
    sub_1D8581B78();
    OUTLINED_FUNCTION_388();

    sub_1D84E849C(v2, v3);
  }

  else
  {
    sub_1D8581B78();
    OUTLINED_FUNCTION_388();
  }
}

uint64_t GameFilters.hashValue.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_379(a1);
  GameFilters.hash(into:)();
  return sub_1D8581B98();
}

void GameFilters.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_285();
  v13 = v12;
  v15 = v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3AA40, &qword_1D85A77E8);
  OUTLINED_FUNCTION_1();
  v18 = v17;
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_128();
  v33 = v13;
  OUTLINED_FUNCTION_260(v13, v13[3]);
  v20 = sub_1D8571870();
  OUTLINED_FUNCTION_171_3(&type metadata for GameFilters.CodingKeys, v21, v20);
  if (v10)
  {
    OUTLINED_FUNCTION_78_3();
    OUTLINED_FUNCTION_276_1();
    __swift_destroy_boxed_opaque_existential_1(v13);
    v36 = 0;
    v37 = v16;
    v38 = v11;
    v39 = v18;
    OUTLINED_FUNCTION_275_2();
    v40 = 0;
  }

  else
  {
    v36 = 0;
    v32 = sub_1D8581918() & 1;
    v31 = OUTLINED_FUNCTION_46_3(1) & 1;
    v30 = OUTLINED_FUNCTION_46_3(2) & 1;
    v29 = OUTLINED_FUNCTION_46_3(3) & 1;
    v27 = v15;
    v28 = OUTLINED_FUNCTION_46_3(4) & 1;
    v22 = OUTLINED_FUNCTION_46_3(5) & 1;
    v23 = OUTLINED_FUNCTION_46_3(6) & 1;
    v24 = OUTLINED_FUNCTION_46_3(7) & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39CF0, &qword_1D85A4BA0);
    v35 = 8;
    sub_1D843D820(&unk_1EE0E0038);
    sub_1D85818E8();
    v25 = OUTLINED_FUNCTION_44_3();
    v26(v25);
    LOBYTE(v34) = v32;
    BYTE1(v34) = v31;
    BYTE2(v34) = v30;
    BYTE3(v34) = v29;
    BYTE4(v34) = v28;
    BYTE5(v34) = v22;
    BYTE6(v34) = v23;
    BYTE7(v34) = v24;
    *(&v34 + 1) = a10;
    *v27 = v34;
    sub_1D85604D0(&v34, &v36);
    __swift_destroy_boxed_opaque_existential_1(v33);
    v36 = v32;
    v37 = v31;
    v38 = v30;
    v39 = v29;
    OUTLINED_FUNCTION_275_2();
    v40 = a10;
  }

  sub_1D85718C4(&v36);
  OUTLINED_FUNCTION_480();
  OUTLINED_FUNCTION_284_0();
}

uint64_t sub_1D85613D0(uint64_t a1)
{
  sub_1D8581B58();
  GameFilters.hash(into:)();
  return sub_1D8581B98();
}

GameServices::GameSortDescriptor::Compared_optional __swiftcall GameSortDescriptor.Compared.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D8581868();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t GameSortDescriptor.Compared.rawValue.getter()
{
  v1 = 0x6573616863727570;
  if (*v0 != 1)
  {
    v1 = 0x796C746E65636572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_1D85614E8(unsigned __int8 a1, char a2)
{
  v2 = 1701667182;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x6573616863727570;
    }

    else
    {
      v4 = 0x796C746E65636572;
    }

    if (v3 == 1)
    {
      v5 = 0xEC00000065746144;
    }

    else
    {
      v5 = 0xEE00646579616C50;
    }
  }

  else
  {
    v5 = 0xE400000000000000;
    v4 = 1701667182;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x6573616863727570;
    }

    else
    {
      v2 = 0x796C746E65636572;
    }

    if (a2 == 1)
    {
      v6 = 0xEC00000065746144;
    }

    else
    {
      v6 = 0xEE00646579616C50;
    }
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D8581AB8();
  }

  return v8 & 1;
}

uint64_t sub_1D856161C(uint64_t a1)
{
  OUTLINED_FUNCTION_379(a1);
  v1 = OUTLINED_FUNCTION_298();
  MEMORY[0x1DA7191F0](v1);
  return sub_1D8581B98();
}

uint64_t sub_1D8561660(uint64_t a1, unsigned __int8 a2)
{
  sub_1D85812B8();
}

uint64_t sub_1D8561700(uint64_t a1)
{
  sub_1D8581B58();
  v1 = OUTLINED_FUNCTION_298();
  MEMORY[0x1DA7191F0](v1);
  return sub_1D8581B98();
}

uint64_t sub_1D8561740(uint64_t a1, char a2)
{
  sub_1D8581B58();
  sub_1D85812B8();

  return sub_1D8581B98();
}

uint64_t sub_1D85617F8@<X0>(uint64_t *a1@<X8>)
{
  result = GameSortDescriptor.Compared.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D8561820()
{
  OUTLINED_FUNCTION_99();
  sub_1D8576CE4();
  OUTLINED_FUNCTION_102();
  return sub_1D8581438();
}

uint64_t sub_1D8561868()
{
  OUTLINED_FUNCTION_99();
  sub_1D8576CE4();
  OUTLINED_FUNCTION_102();
  return sub_1D85813E8();
}

_BYTE *GameSortDescriptor.init(compared:order:)@<X0>(_BYTE *result@<X0>, char a2@<W1>, _BYTE *a3@<X8>)
{
  *a3 = *result;
  a3[1] = a2 & 1;
  return result;
}

uint64_t static GameSortDescriptor.== infix(_:_:)(unsigned __int8 *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a2[1];
  v5 = 0x6573616863727570;
  v6 = 0xEC00000065746144;
  if (v2 != 1)
  {
    v5 = 0x796C746E65636572;
    v6 = 0xEE00646579616C50;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701667182;
  }

  if (v2)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xE400000000000000;
  }

  v9 = 0x6573616863727570;
  v10 = 0xEC00000065746144;
  if (*a2 != 1)
  {
    v9 = 0x796C746E65636572;
    v10 = 0xEE00646579616C50;
  }

  if (*a2)
  {
    v11 = v9;
  }

  else
  {
    v11 = 1701667182;
  }

  if (*a2)
  {
    v12 = v10;
  }

  else
  {
    v12 = 0xE400000000000000;
  }

  if (v7 == v11 && v8 == v12)
  {
  }

  else
  {
    v14 = sub_1D8581AB8();

    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  return MEMORY[0x1EEDC5BA8](v3, v4);
}

uint64_t sub_1D8561A38()
{
  OUTLINED_FUNCTION_263_0();
  v3 = v1 == 0x64657261706D6F63 && v2 == 0xE800000000000000;
  if (v3 || (OUTLINED_FUNCTION_7(0x64657261706D6F63, 0xE800000000000000) & 1) != 0)
  {

    return 0;
  }

  else if (v1 == 0x726564726FLL && v0 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_7(0x726564726FLL, 0xE500000000000000);
    OUTLINED_FUNCTION_369();
    if (v1)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1D8561AD8(char a1)
{
  if (a1)
  {
    return 0x726564726FLL;
  }

  else
  {
    return 0x64657261706D6F63;
  }
}

uint64_t sub_1D8561B14@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D8561A38();
  *a1 = result;
  return result;
}

uint64_t sub_1D8561B3C()
{
  sub_1D85718F4();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D8561B74()
{
  sub_1D85718F4();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void GameSortDescriptor.encode(to:)()
{
  OUTLINED_FUNCTION_285();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3AA48, &qword_1D85A77F0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_110();
  v2 = OUTLINED_FUNCTION_69_1();
  OUTLINED_FUNCTION_260(v2, v3);
  sub_1D85718F4();
  OUTLINED_FUNCTION_359();
  OUTLINED_FUNCTION_217_1();
  sub_1D8581BB8();
  sub_1D8571948();
  OUTLINED_FUNCTION_94_3();
  sub_1D8581A58();
  if (!v0)
  {
    sub_1D857199C();
    OUTLINED_FUNCTION_94_3();
    sub_1D8581A58();
  }

  v4 = OUTLINED_FUNCTION_291();
  v5(v4);
  OUTLINED_FUNCTION_220_2();
  OUTLINED_FUNCTION_284_0();
}

uint64_t GameSortDescriptor.hash(into:)(uint64_t a1)
{
  sub_1D85812B8();

  return sub_1D8580F18();
}

uint64_t GameSortDescriptor.hashValue.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_379(a1);
  OUTLINED_FUNCTION_225_1();
  sub_1D85812B8();

  sub_1D8580F18();
  return sub_1D8581B98();
}

void GameSortDescriptor.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14)
{
  OUTLINED_FUNCTION_285();
  v16 = v15;
  v18 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3AA60, &qword_1D85A77F8);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_260(v16, v16[3]);
  sub_1D85718F4();
  sub_1D8581BA8();
  if (!v14)
  {
    sub_1D85719F0();
    OUTLINED_FUNCTION_272();
    sub_1D8581958();
    sub_1D8571A44();
    OUTLINED_FUNCTION_272();
    sub_1D8581958();
    v20 = OUTLINED_FUNCTION_89_4();
    v21(v20);
    *v18 = a14;
    v18[1] = a12;
  }

  __swift_destroy_boxed_opaque_existential_1(v16);
  OUTLINED_FUNCTION_284_0();
}

uint64_t sub_1D856202C(uint64_t a1)
{
  sub_1D8581B58();
  OUTLINED_FUNCTION_225_1();
  sub_1D85812B8();

  sub_1D8580F18();
  return sub_1D8581B98();
}

uint64_t _s12GameServices0A7FiltersV7defaultACvgZ_0@<X0>(_OWORD *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>, uint64_t a7@<X5>, uint64_t a8@<X6>, uint64_t a9@<X7>)
{
  if (_MergedGlobals_3 != -1)
  {
    OUTLINED_FUNCTION_10_8();
    a2 = swift_once();
  }

  *a1 = xmmword_1EE0E1288;
  return OUTLINED_FUNCTION_254_2(a2, a3, a4, a5, a6, a7, a8, a9, v11, v12);
}

__n128 ListGamesRequest.filters.setter(__n128 *a1)
{
  v4 = *(v1 + 16);
  sub_1D85718C4(&v4);
  result = *a1;
  *(v1 + 16) = *a1;
  return result;
}

void ListGamesRequest.sortDescriptor.getter(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 33);
  *a1 = *(v1 + 32);
  a1[1] = v2;
}

_BYTE *ListGamesRequest.sortDescriptor.setter(_BYTE *result)
{
  v2 = result[1];
  *(v1 + 32) = *result;
  *(v1 + 33) = v2;
  return result;
}

uint64_t ListGamesRequest.limit.setter(uint64_t result, char a2)
{
  *(v2 + 40) = result;
  *(v2 + 48) = a2 & 1;
  return result;
}

uint64_t ListGamesRequest.cursor.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *(v1 + 56) = v2;
  *(v1 + 64) = v3;
  return result;
}

uint64_t ListGamesRequest.init(player:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>, uint64_t a7@<X5>, uint64_t a8@<X6>, uint64_t a9@<X7>)
{
  v10 = *a1;
  v11 = a1[1];
  if (_MergedGlobals_3 != -1)
  {
    OUTLINED_FUNCTION_10_8();
    a1 = swift_once();
  }

  *(a2 + 16) = xmmword_1EE0E1288;
  *(a2 + 32) = 258;
  *(a2 + 40) = 0;
  *(a2 + 48) = 1;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *a2 = v10;
  *(a2 + 8) = v11;
  return OUTLINED_FUNCTION_254_2(a1, a3, a4, a5, a6, a7, a8, a9, v13, v14);
}

uint64_t sub_1D8562384()
{
  OUTLINED_FUNCTION_263_0();
  v2 = OUTLINED_FUNCTION_262_1();
  v4 = v4 && v3 == 0xE600000000000000;
  if (v4 || (OUTLINED_FUNCTION_7(v2, 0xE600000000000000) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = OUTLINED_FUNCTION_217_2();
    v7 = v4 && v0 == 0xE700000000000000;
    if (v7 || (OUTLINED_FUNCTION_7(v6, 0xE700000000000000) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v8 = OUTLINED_FUNCTION_233_1();
      v10 = v1 == v8 && v0 == v9;
      if (v10 || (OUTLINED_FUNCTION_7(v8, v9) & 1) != 0)
      {

        return 2;
      }

      else
      {
        v11 = v1 == 0x74696D696CLL && v0 == 0xE500000000000000;
        if (v11 || (OUTLINED_FUNCTION_7(0x74696D696CLL, 0xE500000000000000) & 1) != 0)
        {

          return 3;
        }

        else
        {
          v12 = v1 == 0x726F73727563 && v0 == 0xE600000000000000;
          if (v12 || (OUTLINED_FUNCTION_7(0x726F73727563, 0xE600000000000000) & 1) != 0)
          {

            return 4;
          }

          else
          {
            v13 = OUTLINED_FUNCTION_45_2();
            if (v1 == v13 && v0 == v14)
            {

              return 5;
            }

            else
            {
              OUTLINED_FUNCTION_7(v13, v14);
              OUTLINED_FUNCTION_369();
              if (v1)
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
}

uint64_t sub_1D85624C8(char a1)
{
  result = 0x726579616C70;
  switch(a1)
  {
    case 1:
      result = 0x737265746C6966;
      break;
    case 2:
      result = OUTLINED_FUNCTION_233_1();
      break;
    case 3:
      result = 0x74696D696CLL;
      break;
    case 4:
      result = 0x726F73727563;
      break;
    case 5:
      result = OUTLINED_FUNCTION_45_2();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D8562574@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D8562384();
  *a1 = result;
  return result;
}

uint64_t sub_1D856259C()
{
  sub_1D8571A98();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D85625D4()
{
  sub_1D8571A98();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void ListGamesRequest.encode(to:)()
{
  OUTLINED_FUNCTION_285();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3AA78, &unk_1D85A7800);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_110();
  v10 = *v0;
  v9 = v0[1];
  v15 = *(v0 + 1);
  OUTLINED_FUNCTION_260(v4, v4[3]);
  sub_1D8571A98();

  OUTLINED_FUNCTION_359();
  OUTLINED_FUNCTION_217_1();
  sub_1D8581BB8();
  *&v14 = v10;
  *(&v14 + 1) = v9;
  LOBYTE(v13) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA389B8, &qword_1D8590B30);
  OUTLINED_FUNCTION_1_1();
  sub_1D848211C(v11);
  sub_1D8581A58();
  if (v1)
  {
  }

  else
  {

    v14 = v15;
    OUTLINED_FUNCTION_338();
    sub_1D85604D0(&v15, &v13);
    sub_1D8508CD0();
    OUTLINED_FUNCTION_232();
    sub_1D8581A58();
    OUTLINED_FUNCTION_239_2();
    sub_1D8508E80();
    OUTLINED_FUNCTION_232();
    sub_1D8581A58();
    OUTLINED_FUNCTION_232();
    sub_1D85819D8();
    v12 = sub_1D8442B28();

    OUTLINED_FUNCTION_232();
    sub_1D85819E8();

    if (!v12)
    {
      OUTLINED_FUNCTION_232();
      sub_1D8581A18();
    }
  }

  (*(v7 + 8))(v2, v5);
  OUTLINED_FUNCTION_220_2();
  OUTLINED_FUNCTION_284_0();
}

void ListGamesRequest.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, __int16 a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_285();
  v25 = v24;
  v41 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3AA80, &qword_1D85A7810);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_129();
  if (_MergedGlobals_3 != -1)
  {
    OUTLINED_FUNCTION_10_8();
    swift_once();
  }

  v53 = xmmword_1EE0E1288;
  v54 = xmmword_1EE0E1288;
  OUTLINED_FUNCTION_260(v25, v25[3]);
  sub_1D85604D0(&v54, v43);
  sub_1D8571A98();
  sub_1D8581BA8();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_1(v25);
    v43[0] = v53;
    sub_1D85718C4(v43);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA389B8, &qword_1D8590B30);
    OUTLINED_FUNCTION_3();
    sub_1D848211C(v28);
    sub_1D8581958();
    v29 = *(&v43[0] + 1);
    v30 = *&v43[0];
    OUTLINED_FUNCTION_338();
    sub_1D8508BF8();
    OUTLINED_FUNCTION_135_3();
    sub_1D8581958();
    v51 = v52[1];
    v52[0] = v53;
    sub_1D85718C4(v52);
    v53 = v51;
    sub_1D8508DA8();
    OUTLINED_FUNCTION_135_3();
    sub_1D8581958();
    v39 = v43[0];
    v40 = BYTE1(v43[0]);
    LOBYTE(v43[0]) = 3;
    v38 = sub_1D85818D8();
    v55 = v31 & 1;
    LOBYTE(v42[0]) = 4;
    sub_1D8443BE4();
    OUTLINED_FUNCTION_135_3();
    sub_1D85818E8();
    v36 = *&v43[0];
    v37 = v30;
    v32 = *(&v43[0] + 1);

    v33 = sub_1D8581918();
    v34 = OUTLINED_FUNCTION_133_2();
    v35(v34);
    v42[0] = __PAIR128__(v29, v37);
    v42[1] = v51;
    LOBYTE(v42[2]) = v39;
    BYTE1(v42[2]) = v40;
    *(&v42[2] + 1) = v38;
    LOBYTE(v42[3]) = v55;
    *(&v42[3] + 1) = v36;
    *&v42[4] = v32;
    BYTE8(v42[4]) = v33 & 1;
    memcpy(v41, v42, 0x49uLL);
    sub_1D8571AEC(v42, v43);
    __swift_destroy_boxed_opaque_existential_1(v25);
    v43[0] = __PAIR128__(v29, v37);
    v43[1] = v51;
    v44 = v39;
    v45 = v40;
    v46 = v38;
    v47 = v55;
    v48 = v36;
    v49 = v32;
    v50 = v33 & 1;
    sub_1D8571B24(v43);
  }

  OUTLINED_FUNCTION_220_2();
  OUTLINED_FUNCTION_284_0();
}

GameServices::DescribeGamesRequest __swiftcall DescribeGamesRequest.init(games:)(GameServices::DescribeGamesRequest games)
{
  *(v1 + 8) = 0;
  *v1 = games.games._rawValue;
  return games;
}

uint64_t sub_1D8562D24()
{
  OUTLINED_FUNCTION_263_0();
  v3 = v1 == 0x73656D6167 && v2 == 0xE500000000000000;
  if (v3 || (OUTLINED_FUNCTION_7(0x73656D6167, 0xE500000000000000) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_45_2();
    if (v1 == v5 && v0 == v6)
    {

      return 1;
    }

    else
    {
      OUTLINED_FUNCTION_7(v5, v6);
      OUTLINED_FUNCTION_369();
      if (v1)
      {
        return 1;
      }

      else
      {
        return 2;
      }
    }
  }
}

uint64_t sub_1D8562DB0(char a1)
{
  if (a1)
  {
    return 0x7461446C61636F6CLL;
  }

  else
  {
    return 0x73656D6167;
  }
}

uint64_t sub_1D8562DF8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D8562D24();
  *a1 = result;
  return result;
}

uint64_t sub_1D8562E20()
{
  sub_1D8571B54();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D8562E58()
{
  sub_1D8571B54();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void DescribeGamesRequest.encode(to:)()
{
  OUTLINED_FUNCTION_285();
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3AA88, &qword_1D85A7818);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_110();
  OUTLINED_FUNCTION_260(v1, v1[3]);
  v3 = sub_1D8571B54();

  OUTLINED_FUNCTION_359();
  sub_1D8581BB8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA392E0, &qword_1D8591020);
  OUTLINED_FUNCTION_32();
  sub_1D8571BA8(v4);
  OUTLINED_FUNCTION_361();
  OUTLINED_FUNCTION_232();
  sub_1D8581A58();

  if (!v3)
  {
    OUTLINED_FUNCTION_94_3();
    sub_1D8581A18();
  }

  v5 = OUTLINED_FUNCTION_291();
  v6(v5);
  OUTLINED_FUNCTION_220_2();
  OUTLINED_FUNCTION_284_0();
}

void DescribeGamesRequest.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_285();
  v22 = v21;
  v24 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3AA90, &qword_1D85A7820);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_260(v22, v22[3]);
  sub_1D8571B54();
  sub_1D8581BA8();
  if (v20)
  {
    __swift_destroy_boxed_opaque_existential_1(v22);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA392E0, &qword_1D8591020);
    OUTLINED_FUNCTION_30();
    sub_1D8571BA8(v26);
    sub_1D8581958();
    v27 = sub_1D8581918();
    v28 = OUTLINED_FUNCTION_90_4();
    v29(v28);
    *v24 = a10;
    *(v24 + 8) = v27 & 1;

    __swift_destroy_boxed_opaque_existential_1(v22);
  }

  OUTLINED_FUNCTION_220_2();
  OUTLINED_FUNCTION_284_0();
}

__n128 ListGameGenreRequest.init(player:localDataOnly:filters:)@<Q0>(void *a1@<X0>, char a2@<W1>, __n128 *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a1[1];
  *a4 = *a1;
  *(a4 + 8) = v4;
  *(a4 + 16) = a2;
  result = *a3;
  *(a4 + 24) = *a3;
  return result;
}

uint64_t sub_1D856327C()
{
  OUTLINED_FUNCTION_263_0();
  v2 = OUTLINED_FUNCTION_262_1();
  v4 = v4 && v3 == 0xE600000000000000;
  if (v4 || (OUTLINED_FUNCTION_7(v2, 0xE600000000000000) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = OUTLINED_FUNCTION_45_2();
    v8 = v1 == v6 && v0 == v7;
    if (v8 || (OUTLINED_FUNCTION_7(v6, v7) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v9 = OUTLINED_FUNCTION_217_2();
      if (v4 && v0 == 0xE700000000000000)
      {

        return 2;
      }

      else
      {
        OUTLINED_FUNCTION_7(v9, 0xE700000000000000);
        OUTLINED_FUNCTION_369();
        OUTLINED_FUNCTION_274_2();
        if (v4)
        {
          return v11 + 1;
        }

        else
        {
          return v11;
        }
      }
    }
  }
}

uint64_t sub_1D8563324(char a1)
{
  if (!a1)
  {
    return 0x726579616C70;
  }

  if (a1 == 1)
  {
    return 0x7461446C61636F6CLL;
  }

  return 0x737265746C6966;
}

uint64_t sub_1D856338C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D856327C();
  *a1 = result;
  return result;
}

uint64_t sub_1D85633B4()
{
  sub_1D8571C38();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D85633EC()
{
  sub_1D8571C38();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void ListGameGenreRequest.encode(to:)()
{
  OUTLINED_FUNCTION_285();
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3AA98, &qword_1D85A7828);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_110();
  v5 = *v0;
  v6 = v0[1];
  v16 = *(v0 + 3);
  OUTLINED_FUNCTION_260(v3, v3[3]);
  sub_1D8571C38();

  OUTLINED_FUNCTION_359();
  sub_1D8581BB8();
  *&v15 = v5;
  *(&v15 + 1) = v6;
  v14 = 0;
  v7 = OUTLINED_FUNCTION_167();
  __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_1_1();
  sub_1D848211C(v9);
  sub_1D8581A58();

  if (v1)
  {
    v10 = OUTLINED_FUNCTION_291();
    v11(v10);
  }

  else
  {
    LOBYTE(v15) = 1;
    OUTLINED_FUNCTION_94_3();
    sub_1D8581A18();
    v15 = v16;
    sub_1D85604D0(&v16, &v14);
    sub_1D8508CD0();
    OUTLINED_FUNCTION_94_3();
    sub_1D8581A58();
    OUTLINED_FUNCTION_239_2();
    v12 = OUTLINED_FUNCTION_291();
    v13(v12);
  }

  OUTLINED_FUNCTION_220_2();
  OUTLINED_FUNCTION_284_0();
}

void ListGameGenreRequest.init(from:)()
{
  OUTLINED_FUNCTION_285();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3AAA0, &qword_1D85A7830);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_260(v2, v2[3]);
  v6 = sub_1D8571C38();
  OUTLINED_FUNCTION_171_3(&type metadata for ListGameGenreRequest.CodingKeys, v7, v6);
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA389B8, &qword_1D8590B30);
    OUTLINED_FUNCTION_3();
    sub_1D848211C(v8);
    OUTLINED_FUNCTION_185_0();
    sub_1D8581958();
    v9 = v18;
    LOBYTE(v18) = 1;
    OUTLINED_FUNCTION_185_0();
    v10 = sub_1D8581918();
    v15 = __PAIR128__(v19, v9);
    sub_1D8508BF8();
    OUTLINED_FUNCTION_185_0();
    sub_1D8581958();
    v11 = OUTLINED_FUNCTION_90_4();
    v12(v11);
    *&v23[7] = v22;
    v16 = __PAIR128__(v19, v9);
    v17[0] = v10 & 1;
    *&v17[1] = *v23;
    v13 = *(&v22 + 1);
    *&v17[16] = *(&v22 + 1);
    v14 = *v17;
    *v4 = __PAIR128__(v19, v9);
    *(v4 + 16) = v14;
    *(v4 + 32) = v13;
    sub_1D8571C8C(&v16, &v18);
    __swift_destroy_boxed_opaque_existential_1(v2);
    v18 = v9;
    v19 = *(&v15 + 1);
    v20 = v10 & 1;
    *v21 = *v23;
    *&v21[15] = *&v23[15];
    sub_1D8571CC4(&v18);
  }

  OUTLINED_FUNCTION_480();
  OUTLINED_FUNCTION_284_0();
}

void *static $DistributedGameLibraryServiceProtocol.resolve(id:using:)(void *a1, uint64_t a2)
{
  type metadata accessor for $DistributedGameLibraryServiceProtocol();
  type metadata accessor for GameServicesActorSystem(0);
  OUTLINED_FUNCTION_15_4();
  sub_1D8571D18(v5);
  OUTLINED_FUNCTION_0_18();
  sub_1D8571D18(v6);
  v7 = sub_1D8580F48();
  v8 = v7;
  if (!v2 && !v7)
  {
    v8 = swift_distributedActor_remote_initialize();
    v9 = a1[1];
    v8[14] = *a1;
    v8[15] = v9;
    v8[16] = a2;
  }

  return v8;
}

uint64_t $DistributedGameLibraryServiceProtocol.deinit()
{
  type metadata accessor for GameServicesActorSystem(0);
  OUTLINED_FUNCTION_15_4();
  sub_1D8571D18(v1);
  sub_1D8580F68();

  swift_defaultActor_destroy();
  return v0;
}

uint64_t $DistributedGameLibraryServiceProtocol.__deallocating_deinit()
{
  if (swift_distributed_actor_is_remote())
  {

    swift_defaultActor_destroy();
  }

  else
  {
    $DistributedGameLibraryServiceProtocol.deinit();
  }

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1D8563A9C()
{
  sub_1D8581B58();
  type metadata accessor for $DistributedGameLibraryServiceProtocol();
  OUTLINED_FUNCTION_0_18();
  sub_1D8571D18(v0);
  sub_1D85811E8();
  return sub_1D8581B98();
}

uint64_t $DistributedGameLibraryServiceProtocol.__allocating_init(actorSystem:)(uint64_t a1)
{
  v2 = swift_allocObject();
  $DistributedGameLibraryServiceProtocol.init(actorSystem:)(a1);
  return v2;
}

void *$DistributedGameLibraryServiceProtocol.init(actorSystem:)(uint64_t a1)
{
  swift_defaultActor_initialize();
  v1[16] = a1;
  type metadata accessor for $DistributedGameLibraryServiceProtocol();
  type metadata accessor for GameServicesActorSystem(0);
  OUTLINED_FUNCTION_15_4();
  sub_1D8571D18(v3);
  OUTLINED_FUNCTION_0_18();
  sub_1D8571D18(v4);

  OUTLINED_FUNCTION_324();
  sub_1D8580F58();
  v1[14] = v6;
  v1[15] = v7;

  OUTLINED_FUNCTION_298();
  OUTLINED_FUNCTION_324();
  sub_1D8580F38();

  return v1;
}

uint64_t $DistributedGameLibraryServiceProtocol.unownedExecutor.getter()
{
  if ((sub_1D8580FF8() & 1) == 0)
  {
    type metadata accessor for $DistributedGameLibraryServiceProtocol();
    OUTLINED_FUNCTION_0_18();
    sub_1D8571D18(v1);
    OUTLINED_FUNCTION_268_2();
    return sub_1D8580F28();
  }

  return v0;
}

uint64_t sub_1D8563CD8@<X0>(uint64_t *a1@<X8>)
{
  result = $DistributedGameLibraryServiceProtocol.actorSystem.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1D8563D64()
{
  OUTLINED_FUNCTION_366();
  type metadata accessor for $DistributedGameLibraryServiceProtocol();
  OUTLINED_FUNCTION_0_18();
  sub_1D8571D18(v0);
  OUTLINED_FUNCTION_188();
  return sub_1D8580FC8();
}

uint64_t sub_1D8563DC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D8581B58();
  type metadata accessor for $DistributedGameLibraryServiceProtocol();
  sub_1D85811E8();
  return sub_1D8581B98();
}

uint64_t sub_1D8563E40()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_366();
  OUTLINED_FUNCTION_50(&unk_1D85A99E8);
  v6 = v0;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_176(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_64(v2);

  return v6(v4);
}

uint64_t sub_1D8563ED4(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_1D8581018();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39578, &unk_1D85981A0);
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8563FFC);
}

uint64_t sub_1D8563FFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_177();
  if ((swift_distributed_actor_is_remote() & 1) == 0)
  {
    OUTLINED_FUNCTION_24(&unk_1D85A99E8);
    v14 = swift_task_alloc();
    v12[16] = v14;
    *v14 = v12;
    v14[1] = sub_1D85386B8;
    OUTLINED_FUNCTION_207_0(v12[7]);
    OUTLINED_FUNCTION_197();

    return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
  }

  v12[15] = OUTLINED_FUNCTION_265_0();
  OUTLINED_FUNCTION_354();
  type metadata accessor for $DistributedGameLibraryServiceProtocol();
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordGenericSubstitution<A>(_:)(v13);
  v12[5] = v12[7];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA392E0, &qword_1D8591020);
  v24 = OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_229(v24, v25, v26, v27, (v12 + 5));
  OUTLINED_FUNCTION_30();
  sub_1D8571BA8(v28);
  OUTLINED_FUNCTION_32();
  v30 = sub_1D8571BA8(v29);
  OUTLINED_FUNCTION_31(v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3AAB8, &qword_1D85A7848);
  sub_1D857205C();
  v32 = sub_1D85721B8();
  OUTLINED_FUNCTION_10(v32);
  GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
  if (v33)
  {

    v34 = OUTLINED_FUNCTION_49_0();
    v35(v34);
    OUTLINED_FUNCTION_331();

    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_197();

    return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
  }

  OUTLINED_FUNCTION_184_0();
  OUTLINED_FUNCTION_300_3(v36, v37);
  v38 = swift_task_alloc();
  v12[17] = v38;
  OUTLINED_FUNCTION_0_18();
  sub_1D8571D18(v39);
  OUTLINED_FUNCTION_168();
  *v38 = v40;
  v38[1] = sub_1D84A1480;
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_118_0();

  return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
}

uint64_t DistributedGameLibraryServiceProtocol<>.describe(games:)()
{
  OUTLINED_FUNCTION_148();
  v5 = OUTLINED_FUNCTION_371(v1, v2, v3, v4);
  v0[14] = v5;
  OUTLINED_FUNCTION_39(v5);
  v0[15] = v6;
  v0[16] = OUTLINED_FUNCTION_332();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39578, &unk_1D85981A0);
  v0[17] = v7;
  OUTLINED_FUNCTION_39(v7);
  v0[18] = v8;
  v0[19] = OUTLINED_FUNCTION_332();
  v9 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v9);
}

{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_250(v0, v1, v2);
  OUTLINED_FUNCTION_198();
  v3 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v3);
}

uint64_t sub_1D8564418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_185();
  if (swift_distributed_actor_is_remote())
  {
    v15 = v14[10];
    OUTLINED_FUNCTION_166();
    sub_1D8580F98();
    v14[20] = v14[6];
    OUTLINED_FUNCTION_355();
    OUTLINED_FUNCTION_90();
    if (v15)
    {
      OUTLINED_FUNCTION_342();

LABEL_12:

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_169();

      return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14);
    }

    v14[7] = v14[9];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA392E0, &qword_1D8591020);
    v27 = OUTLINED_FUNCTION_87_0();
    OUTLINED_FUNCTION_229(v27, v28, v29, v30, (v14 + 7));
    OUTLINED_FUNCTION_30();
    sub_1D8571BA8(v31);
    OUTLINED_FUNCTION_32();
    v33 = sub_1D8571BA8(v32);
    OUTLINED_FUNCTION_31(v33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3AAB8, &qword_1D85A7848);
    sub_1D857205C();
    v35 = sub_1D85721B8();
    OUTLINED_FUNCTION_10(v35);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v36)
    {

      v37 = OUTLINED_FUNCTION_49_0();
      v38(v37);
      OUTLINED_FUNCTION_331();

      goto LABEL_12;
    }

    OUTLINED_FUNCTION_184_0();
    OUTLINED_FUNCTION_300_3(v47, v48);
    swift_task_alloc();
    OUTLINED_FUNCTION_168();
    v14[21] = v49;
    *v49 = v50;
    v49[1] = sub_1D8547068;
    OUTLINED_FUNCTION_6_7();
    OUTLINED_FUNCTION_170();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    OUTLINED_FUNCTION_25_0();
    OUTLINED_FUNCTION_54();
    v52 = v16 + *v16;
    v17 = swift_task_alloc();
    v14[23] = v17;
    *v17 = v14;
    OUTLINED_FUNCTION_17(v17);
    OUTLINED_FUNCTION_169();

    return v21(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, v52, a12, a13, a14);
  }
}

uint64_t sub_1D8564774()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_366();
  OUTLINED_FUNCTION_50(&unk_1D85A99E0);
  v6 = v0;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_176(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_64(v2);

  return v6(v4);
}

uint64_t sub_1D8564808(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_1D8581018();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39578, &unk_1D85981A0);
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8564930);
}

uint64_t sub_1D8564930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_177();
  if ((swift_distributed_actor_is_remote() & 1) == 0)
  {
    OUTLINED_FUNCTION_24(&unk_1D85A99E0);
    v14 = swift_task_alloc();
    v12[16] = v14;
    *v14 = v12;
    v14[1] = sub_1D8576DB0;
    OUTLINED_FUNCTION_207_0(v12[7]);
    OUTLINED_FUNCTION_197();

    return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
  }

  v12[15] = OUTLINED_FUNCTION_265_0();
  OUTLINED_FUNCTION_354();
  type metadata accessor for $DistributedGameLibraryServiceProtocol();
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordGenericSubstitution<A>(_:)(v13);
  v12[5] = v12[7];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA392E0, &qword_1D8591020);
  v24 = OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_229(v24, v25, v26, v27, (v12 + 5));
  OUTLINED_FUNCTION_30();
  sub_1D8571BA8(v28);
  OUTLINED_FUNCTION_32();
  v30 = sub_1D8571BA8(v29);
  OUTLINED_FUNCTION_31(v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3AAB8, &qword_1D85A7848);
  sub_1D857205C();
  v32 = sub_1D85721B8();
  OUTLINED_FUNCTION_10(v32);
  GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
  if (v33)
  {

    v34 = OUTLINED_FUNCTION_49_0();
    v35(v34);
    OUTLINED_FUNCTION_331();

    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_197();

    return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
  }

  OUTLINED_FUNCTION_184_0();
  sub_1D8581028();
  v36 = swift_task_alloc();
  v12[17] = v36;
  OUTLINED_FUNCTION_0_18();
  sub_1D8571D18(v37);
  OUTLINED_FUNCTION_168();
  *v36 = v38;
  v36[1] = sub_1D8484458;
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_118_0();

  return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
}

uint64_t DistributedGameLibraryServiceProtocol<>.describe2(games:)()
{
  OUTLINED_FUNCTION_148();
  v5 = OUTLINED_FUNCTION_371(v1, v2, v3, v4);
  v0[14] = v5;
  OUTLINED_FUNCTION_39(v5);
  v0[15] = v6;
  v0[16] = OUTLINED_FUNCTION_332();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39578, &unk_1D85981A0);
  v0[17] = v7;
  OUTLINED_FUNCTION_39(v7);
  v0[18] = v8;
  v0[19] = OUTLINED_FUNCTION_332();
  v9 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v9);
}

{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_250(v0, v1, v2);
  OUTLINED_FUNCTION_198();
  v3 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v3);
}

uint64_t sub_1D8564D54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_185();
  if (swift_distributed_actor_is_remote())
  {
    v15 = v14[10];
    OUTLINED_FUNCTION_166();
    sub_1D8580F98();
    v14[20] = v14[6];
    OUTLINED_FUNCTION_355();
    OUTLINED_FUNCTION_90();
    if (v15)
    {
      OUTLINED_FUNCTION_342();

LABEL_12:

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_169();

      return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14);
    }

    v14[7] = v14[9];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA392E0, &qword_1D8591020);
    v27 = OUTLINED_FUNCTION_87_0();
    OUTLINED_FUNCTION_229(v27, v28, v29, v30, (v14 + 7));
    OUTLINED_FUNCTION_30();
    sub_1D8571BA8(v31);
    OUTLINED_FUNCTION_32();
    v33 = sub_1D8571BA8(v32);
    OUTLINED_FUNCTION_31(v33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3AAB8, &qword_1D85A7848);
    sub_1D857205C();
    v35 = sub_1D85721B8();
    OUTLINED_FUNCTION_10(v35);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v36)
    {

      v37 = OUTLINED_FUNCTION_49_0();
      v38(v37);
      OUTLINED_FUNCTION_331();

      goto LABEL_12;
    }

    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    swift_task_alloc();
    OUTLINED_FUNCTION_168();
    v14[21] = v47;
    *v47 = v48;
    v47[1] = sub_1D85650B8;
    OUTLINED_FUNCTION_6_7();
    OUTLINED_FUNCTION_170();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    OUTLINED_FUNCTION_25_0();
    OUTLINED_FUNCTION_54();
    v50 = v16 + *v16;
    v17 = swift_task_alloc();
    v14[23] = v17;
    *v17 = v14;
    OUTLINED_FUNCTION_17(v17);
    OUTLINED_FUNCTION_169();

    return v21(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, v50, a12, a13, a14);
  }
}

uint64_t sub_1D85650B8()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 176) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1D85651B0()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_153();
  v3 = v2;
  OUTLINED_FUNCTION_62();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_37();
  *v6 = v5;
  *(v3 + 192) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149();

    return MEMORY[0x1EEE6DFA0](v7);
  }

  else
  {

    v8 = OUTLINED_FUNCTION_56_0();

    return v9(v8);
  }
}

uint64_t sub_1D85652E8()
{
  OUTLINED_FUNCTION_174();
  v1 = *(v0 + 8);
  OUTLINED_FUNCTION_24(&unk_1D85A99D8);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_176(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_64(v3);

  return v7(v5, v1);
}

uint64_t sub_1D8565388(uint64_t a1, char a2)
{
  *(v3 + 49) = a2;
  *(v3 + 64) = a1;
  *(v3 + 72) = v2;
  v4 = sub_1D8581018();
  *(v3 + 80) = v4;
  *(v3 + 88) = *(v4 - 8);
  *(v3 + 96) = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3AAF8, &qword_1D85A7878);
  *(v3 + 104) = v5;
  *(v3 + 112) = *(v5 - 8);
  *(v3 + 120) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D85654B4);
}

uint64_t sub_1D85654B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_177();
  if (swift_distributed_actor_is_remote())
  {
    *(v12 + 128) = OUTLINED_FUNCTION_265_0();
    OUTLINED_FUNCTION_354();
    type metadata accessor for $DistributedGameLibraryServiceProtocol();
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordGenericSubstitution<A>(_:)(v13);
    v24 = *(v12 + 49);
    *(v12 + 40) = *(v12 + 64);
    *(v12 + 48) = v24;

    OUTLINED_FUNCTION_24_2();
    OUTLINED_FUNCTION_25_6(v25, v26, v27, v28, v12 + 40);
    sub_1D8572630();
    v29 = sub_1D8572684();
    OUTLINED_FUNCTION_31(v29);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3AAB8, &qword_1D85A7848);
    sub_1D857205C();
    v31 = sub_1D85721B8();
    OUTLINED_FUNCTION_10(v31);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v32)
    {

      v33 = OUTLINED_FUNCTION_49_0();
      v34(v33);
      OUTLINED_FUNCTION_331();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_197();

      return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12);
    }

    else
    {
      OUTLINED_FUNCTION_184_0();
      sub_1D8581028();
      v43 = swift_task_alloc();
      *(v12 + 144) = v43;
      OUTLINED_FUNCTION_0_18();
      sub_1D8571D18(v44);
      OUTLINED_FUNCTION_168();
      *v43 = v45;
      v43[1] = sub_1D85658C8;
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_118_0();

      return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
    }
  }

  else
  {
    OUTLINED_FUNCTION_24(&unk_1D85A99D8);
    v14 = swift_task_alloc();
    *(v12 + 136) = v14;
    *v14 = v12;
    v14[1] = sub_1D8565794;
    OUTLINED_FUNCTION_207_0(*(v12 + 64));
    OUTLINED_FUNCTION_197();

    return v17(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
  }
}

uint64_t sub_1D8565794()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_320();
  v3 = *v2;
  OUTLINED_FUNCTION_37();
  *v4 = v3;

  v6 = *(v3 + 8);
  if (!v1)
  {
    v5 = v0;
  }

  return v6(v5);
}

uint64_t sub_1D85658C8()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 152) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1D85659C0()
{
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_332_0();
  v0 = OUTLINED_FUNCTION_77();
  v1(v0);
  v2 = OUTLINED_FUNCTION_80();
  v3(v2);
  OUTLINED_FUNCTION_331();

  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_511();

  return v6(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t DistributedGameLibraryServiceProtocol<>.describe(with:)()
{
  OUTLINED_FUNCTION_148();
  v3 = v2;
  *(v1 + 112) = v4;
  *(v1 + 120) = v0;
  *(v1 + 96) = v5;
  *(v1 + 104) = v6;
  v7 = sub_1D8581018();
  *(v1 + 128) = v7;
  OUTLINED_FUNCTION_39(v7);
  *(v1 + 136) = v8;
  *(v1 + 144) = OUTLINED_FUNCTION_332();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3AAF8, &qword_1D85A7878);
  *(v1 + 152) = v9;
  OUTLINED_FUNCTION_39(v9);
  *(v1 + 160) = v10;
  v11 = OUTLINED_FUNCTION_332();
  v12 = *v3;
  *(v1 + 168) = v11;
  *(v1 + 176) = v12;
  *(v1 + 49) = *(v3 + 8);
  v13 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v13);
}

{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_250(v0, v1, v2);
  OUTLINED_FUNCTION_198();
  v3 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v3);
}

uint64_t sub_1D8565B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_185();
  if (swift_distributed_actor_is_remote())
  {
    v15 = *(v14 + 96);
    OUTLINED_FUNCTION_166();
    sub_1D8580F98();
    *(v14 + 184) = *(v14 + 80);
    OUTLINED_FUNCTION_355();
    OUTLINED_FUNCTION_90();
    if (v15)
    {
      OUTLINED_FUNCTION_342();

LABEL_12:

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_169();

      return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14);
    }

    v28 = *(v14 + 49);
    *(v14 + 56) = *(v14 + 176);
    *(v14 + 64) = v28;

    OUTLINED_FUNCTION_24_2();
    OUTLINED_FUNCTION_25_6(v29, v30, v31, v32, v14 + 56);
    sub_1D8572630();
    v33 = sub_1D8572684();
    OUTLINED_FUNCTION_31(v33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3AAB8, &qword_1D85A7848);
    sub_1D857205C();
    v35 = sub_1D85721B8();
    OUTLINED_FUNCTION_10(v35);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v36)
    {

      v37 = OUTLINED_FUNCTION_49_0();
      v38(v37);
      OUTLINED_FUNCTION_331();

      goto LABEL_12;
    }

    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    swift_task_alloc();
    OUTLINED_FUNCTION_168();
    *(v14 + 192) = v47;
    *v47 = v48;
    v47[1] = sub_1D8565EBC;
    OUTLINED_FUNCTION_6_7();
    OUTLINED_FUNCTION_170();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    v16 = *(v14 + 49);
    *(v14 + 72) = *(v14 + 120);
    *(v14 + 40) = *(v14 + 176);
    *(v14 + 48) = v16;
    OUTLINED_FUNCTION_54();
    v50 = v17 + *v17;
    v18 = swift_task_alloc();
    *(v14 + 208) = v18;
    *v18 = v14;
    v18[1] = sub_1D856605C;
    OUTLINED_FUNCTION_169();

    return v22(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, v50, a12, a13, a14);
  }
}

uint64_t sub_1D8565EBC()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 200) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1D8565FB4()
{
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_295_2();
  v0 = OUTLINED_FUNCTION_77();
  v1(v0);
  v2 = OUTLINED_FUNCTION_80();
  v3(v2);
  OUTLINED_FUNCTION_331();

  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_511();

  return v6(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1D856605C()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_153();
  v3 = v2;
  OUTLINED_FUNCTION_62();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_37();
  *v6 = v5;
  *(v3 + 216) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149();

    return MEMORY[0x1EEE6DFA0](v7);
  }

  else
  {

    v8 = OUTLINED_FUNCTION_56_0();

    return v9(v8);
  }
}

uint64_t sub_1D8566194()
{
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_295_2();
  v0 = OUTLINED_FUNCTION_77();
  v1(v0);
  v2 = OUTLINED_FUNCTION_80();
  v3(v2);
  OUTLINED_FUNCTION_331();

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_511();

  return v5(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1D856623C()
{
  OUTLINED_FUNCTION_148();

  OUTLINED_FUNCTION_146();

  return v0();
}

uint64_t sub_1D85662A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_225();
  OUTLINED_FUNCTION_185();
  OUTLINED_FUNCTION_193_2();
  OUTLINED_FUNCTION_24(&unk_1D85A99D0);
  swift_task_alloc();
  OUTLINED_FUNCTION_168();
  *(v14 + 16) = v15;
  *v15 = v16;
  OUTLINED_FUNCTION_100_4(v15);
  OUTLINED_FUNCTION_170();

  return v25(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1D8566340(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 160) = v19;
  *(v9 + 168) = v8;
  *(v9 + 144) = a8;
  *(v9 + 152) = v18;
  *(v9 + 128) = a5;
  *(v9 + 136) = a7;
  *(v9 + 99) = a6;
  *(v9 + 100) = a4;
  *(v9 + 112) = a2;
  *(v9 + 120) = a3;
  *(v9 + 104) = a1;
  v10 = sub_1D8581018();
  *(v9 + 176) = v10;
  *(v9 + 184) = *(v10 - 8);
  *(v9 + 192) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38DB0, &qword_1D8590D00);
  *(v9 + 200) = v11;
  *(v9 + 208) = *(v11 - 8);
  *(v9 + 216) = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38CB0, &unk_1D8590C60);
  *(v9 + 224) = v12;
  *(v9 + 232) = *(v12 - 8);
  *(v9 + 240) = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A220, &unk_1D85A7890);
  *(v9 + 248) = v13;
  *(v9 + 256) = *(v13 - 8);
  *(v9 + 264) = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A228, &unk_1D859F330);
  *(v9 + 272) = v14;
  *(v9 + 280) = *(v14 - 8);
  *(v9 + 288) = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A230, &unk_1D85A78A0);
  *(v9 + 296) = v15;
  *(v9 + 304) = *(v15 - 8);
  *(v9 + 312) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8566628);
}

uint64_t sub_1D8566628()
{
  OUTLINED_FUNCTION_211_2();
  OUTLINED_FUNCTION_289_1();
  if ((swift_distributed_actor_is_remote() & 1) == 0)
  {
    OUTLINED_FUNCTION_50(&unk_1D85A99D0);
    swift_task_alloc();
    OUTLINED_FUNCTION_168();
    *(v0 + 328) = v2;
    *v2 = v3;
    OUTLINED_FUNCTION_117_3(v2);
    OUTLINED_FUNCTION_284();

    __asm { BR              X8 }
  }

  *(v0 + 320) = OUTLINED_FUNCTION_265_0();
  OUTLINED_FUNCTION_354();
  type metadata accessor for $DistributedGameLibraryServiceProtocol();
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordGenericSubstitution<A>(_:)(v1);
  v6 = *(v0 + 112);
  v7 = *(v0 + 120);
  *(v0 + 40) = v6;
  *(v0 + 48) = v7;
  sub_1D8508B60(v6, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A238, &unk_1D859F340);
  OUTLINED_FUNCTION_69_5();
  OUTLINED_FUNCTION_132_1();
  sub_1D8581038();
  sub_1D8508B74();
  v8 = sub_1D8508C4C();
  OUTLINED_FUNCTION_31(v8);
  *(v0 + 97) = *(v0 + 100);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A260, &qword_1D85A78B0);
  v9 = OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_172_2(v9, v10, v11, v12, v0 + 97);
  sub_1D8508D24();
  v13 = sub_1D8508DFC();
  OUTLINED_FUNCTION_31(v13);
  OUTLINED_FUNCTION_189_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A288, &qword_1D859F350);
  OUTLINED_FUNCTION_71_2();
  OUTLINED_FUNCTION_60_2(v14, v15, v16, v17, v0 + 88);
  OUTLINED_FUNCTION_137_0(&unk_1ECA3A290);
  v18 = OUTLINED_FUNCTION_136_2(&unk_1ECA3A298, MEMORY[0x1E69E6818]);
  OUTLINED_FUNCTION_31(v18);
  v19 = *(v0 + 144);
  *(v0 + 56) = *(v0 + 136);
  *(v0 + 64) = v19;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38CB8, &unk_1D8596010);
  v20 = OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_214(v20, v21, v22, v23, v0 + 56);
  sub_1D84751F0();
  v24 = sub_1D8475274();
  OUTLINED_FUNCTION_31(v24);
  v25 = *(v0 + 160);
  *(v0 + 72) = *(v0 + 152);
  *(v0 + 80) = v25;

  v26 = OUTLINED_FUNCTION_167();
  __swift_instantiateConcreteTypeFromMangledNameV2(v26, v27);
  v28 = OUTLINED_FUNCTION_14_5();
  OUTLINED_FUNCTION_173_2(v28, v29, v30, v31, v0 + 72);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_160_0();
  sub_1D848211C(v32);
  OUTLINED_FUNCTION_1_1();
  sub_1D848211C(v33);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_155();
  GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v34, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
  v36 = MEMORY[0x1E69E7288];
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v37);
  v38 = OUTLINED_FUNCTION_269_0();
  v39 = OUTLINED_FUNCTION_26(&unk_1ECA3AB18);
  v40 = OUTLINED_FUNCTION_25(&unk_1ECA3AB20);
  OUTLINED_FUNCTION_10(v40);
  GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
  if (v41)
  {
    OUTLINED_FUNCTION_121_4();
    v42 = OUTLINED_FUNCTION_140_3();
    v43(v42);
    MEMORY[0x200FFFC0E00]();
    (*(v39 + 8))();
    (*(v38 + 8))();
    (*(v36 + 8))();
    OUTLINED_FUNCTION_331();

    v44 = OUTLINED_FUNCTION_202_4();
    OUTLINED_FUNCTION_242_0(v44);

    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_284();

    return v45();
  }

  else
  {
    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v48 = swift_task_alloc();
    *(v0 + 336) = v48;
    OUTLINED_FUNCTION_0_18();
    sub_1D8571D18(v49);
    OUTLINED_FUNCTION_217();
    *v48 = v50;
    v48[1] = sub_1D8566D78;
    OUTLINED_FUNCTION_337();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_266_2();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }
}

uint64_t sub_1D8566BCC()
{
  v1 = *v0;
  OUTLINED_FUNCTION_37();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1D8566D78()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 344) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t DistributedGameLibraryServiceProtocol<>.listGameHistories(by:sortBy:upTo:after:belongingTo:)()
{
  OUTLINED_FUNCTION_536();
  OUTLINED_FUNCTION_204();
  v9 = OUTLINED_FUNCTION_136_4(v1, v2, v3, v4, v5, v6, v7, v8);
  v0[27] = v9;
  OUTLINED_FUNCTION_39(v9);
  v0[28] = v10;
  v0[29] = OUTLINED_FUNCTION_332();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38DB0, &qword_1D8590D00);
  v0[30] = v11;
  OUTLINED_FUNCTION_39(v11);
  v0[31] = v12;
  v0[32] = OUTLINED_FUNCTION_332();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38CB0, &unk_1D8590C60);
  v0[33] = v13;
  OUTLINED_FUNCTION_39(v13);
  v0[34] = v14;
  v0[35] = OUTLINED_FUNCTION_332();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A220, &unk_1D85A7890);
  v0[36] = v15;
  OUTLINED_FUNCTION_39(v15);
  v0[37] = v16;
  v0[38] = OUTLINED_FUNCTION_332();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A228, &unk_1D859F330);
  v0[39] = v17;
  OUTLINED_FUNCTION_39(v17);
  v0[40] = v18;
  v0[41] = OUTLINED_FUNCTION_332();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A230, &unk_1D85A78A0);
  v0[42] = v19;
  OUTLINED_FUNCTION_39(v19);
  v0[43] = v20;
  v21 = OUTLINED_FUNCTION_332();
  OUTLINED_FUNCTION_147_1(v21);
  OUTLINED_FUNCTION_64_0();
  OUTLINED_FUNCTION_535();
  return OUTLINED_FUNCTION_523(v22);
}