uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for LocalIFSessionClient(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for LocalIFSessionClient(uint64_t result, int a2, int a3)
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

uint64_t sub_22366F784(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2236242EC;

  return sub_22366D6E4(a1, v4);
}

uint64_t sub_22366F83C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2236242EC;

  return sub_22366DF70(a1, v4);
}

uint64_t sub_22366F8F4(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_22366F9AC(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_223727208();
      swift_allocObject();
      sub_2237271D8();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_223727318();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

void *sub_22366FA4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_22366DDD4(sub_22366FBC8, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_22366FAB4(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_223661270(result, a2);
  }

  return result;
}

uint64_t sub_22366FAC8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_223727208();
  swift_allocObject();
  result = sub_2237271B8();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_223727318();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_22366FB44(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_223727208();
  swift_allocObject();
  result = sub_2237271B8();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_22366FBE8()
{
  sub_22366E5FC(v0[5], v0[4]);
  sub_22366FDD0(&unk_281329528, type metadata accessor for IntelligenceFlowSessionBridge.Error, protocol conformance descriptor for IntelligenceFlowSessionBridge.Error);
  v1 = sub_22372B6C8();
  v2 = v0[4];
  if (v1)
  {
    sub_223640240(v0[4], type metadata accessor for IntelligenceFlowSessionBridge.Error);
  }

  else
  {
    swift_allocError();
    sub_22366E5FC(v2, v3);
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_22366FCFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22366FD64(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 8u)
  {
  }

  return result;
}

unint64_t sub_22366FD7C()
{
  result = qword_27D08ED18;
  if (!qword_27D08ED18)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RemoteIntelligenceError, &type metadata for RemoteIntelligenceError, v0, v1);
    atomic_store(result, &qword_27D08ED18);
  }

  return result;
}

uint64_t sub_22366FDD0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

__n128 IFSessionMetadata.init(conversationSessionID:languageCode:userID:clientAuditToken:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for IFSessionMetadata(0);
  v13 = a6 + v12[7];
  *v13 = 0u;
  *(v13 + 16) = 0u;
  *(v13 + 32) = 1;
  v14 = sub_223727408();
  (*(*(v14 - 8) + 32))(a6, a1, v14);
  v15 = (a6 + v12[5]);
  *v15 = a2;
  v15[1] = a3;
  v16 = v12[6];
  v17 = sub_22372A548();
  (*(*(v17 - 8) + 32))(a6 + v16, a4, v17);
  result = *a5;
  v19 = *(a5 + 16);
  *v13 = *a5;
  *(v13 + 16) = v19;
  *(v13 + 32) = *(a5 + 32);
  return result;
}

uint64_t SessionCreationSemantics.hashValue.getter()
{
  v1 = *v0;
  sub_22372B7A8();
  MEMORY[0x223DE8200](v1);
  return sub_22372B7C8();
}

unint64_t sub_22366FFE8()
{
  result = qword_27D08ED20;
  if (!qword_27D08ED20)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SessionCreationSemantics, &type metadata for SessionCreationSemantics, v0, v1);
    atomic_store(result, &qword_27D08ED20);
  }

  return result;
}

void sub_223670064(uint64_t a1)
{
  sub_223727408();
  if (v1 <= 0x3F)
  {
    sub_22372A548();
    if (v2 <= 0x3F)
    {
      sub_223670108(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_223670108(uint64_t a1)
{
  if (!qword_281328D78)
  {
    type metadata accessor for audit_token_t(255);
    v1 = sub_22372B3A8();
    if (!v2)
    {
      atomic_store(v1, &qword_281328D78);
    }
  }
}

uint64_t dispatch thunk of IntelligenceFlowClientProvider.openSession(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22366F28C;

  return v9(a1, a2, a3);
}

uint64_t sub_2236702C0()
{
  if (*v0)
  {
    return 1682532722;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t sub_2236702F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x8000000223734E10 == a2 || (sub_22372B6E8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 1682532722 && a2 == 0xE400000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_22372B6E8();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_2236703E0(uint64_t a1)
{
  v2 = sub_223671834();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22367041C(uint64_t a1)
{
  v2 = sub_223671834();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RemoteIntelligenceSessionClientMessage.sessionClientMessage.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_28132B710;
  v4 = sub_223727D38();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RemoteIntelligenceSessionClientMessage.init(build:)(void (*a1)(char *), uint64_t a2)
{
  v37 = a2;
  v38 = a1;
  v35 = *v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08ED38, &qword_22372E568);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v34 - v5;
  v7 = sub_223727D38();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v36 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for RemoteIntelligenceSessionClientMessage.Builder(0);
  v12 = (v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_223727408();
  v17 = *(*(v16 - 8) + 56);
  v17(v15, 1, 1, v16);
  v17(&v15[v12[7]], 1, 1, v16);
  v18 = v12[8];
  (*(v8 + 56))(&v15[v18], 1, 1, v7);
  v19 = v12[9];
  sub_2237273F8();
  v17(&v15[v19], 0, 1, v16);
  v15[v12[10]] = 2;
  v38(v15);
  sub_223634890(&v15[v18], v6, &qword_27D08ED38, &qword_22372E568);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_223626478(v6, &qword_27D08ED38, &qword_22372E568);
    if (qword_27D08E2D0 != -1)
    {
      swift_once();
    }

    v20 = sub_22372AC98();
    __swift_project_value_buffer(v20, qword_27D097088);
    v21 = sub_22372AC88();
    v22 = sub_22372B278();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v40[0] = v24;
      *v23 = 136446210;
      v40[1] = v35;
      swift_getMetatypeMetadata();
      v25 = sub_22372B038();
      v27 = sub_223623274(v25, v26, v40);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_223620000, v21, v22, "Could not build %{public}s: Builder has missing required fields", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      MEMORY[0x223DE8A80](v24, -1, -1);
      MEMORY[0x223DE8A80](v23, -1, -1);
    }

    sub_223670A74(v15);
    type metadata accessor for RemoteIntelligenceSessionClientMessage(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    v29 = v36;
    (*(v8 + 32))(v36, v6, v7);
    v30 = v39;
    (*(v8 + 16))(v39 + qword_28132B710, v29, v7);
    v31 = sub_223634890(&v15[v19], v30 + qword_28132B708, &unk_27D08E530, &unk_22372CB10);
    MEMORY[0x28223BE20](v31, v32);
    *(&v34 - 2) = v15;
    v33 = RemoteIntelligenceSessionMessage.init(build:)(sub_22367182C);
    (*(v8 + 8))(v29, v7);
    sub_223670A74(v15);
    return v33;
  }
}

uint64_t sub_223670A74(uint64_t a1)
{
  v2 = type metadata accessor for RemoteIntelligenceSessionClientMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_223670AF0(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  sub_223651744(a2, a1);
  LOBYTE(v2) = *(v2 + *(type metadata accessor for RemoteIntelligenceSessionClientMessage.Builder(0) + 32));
  result = type metadata accessor for RemoteIntelligenceSessionMessage.Builder(0);
  *(a1 + *(result + 20)) = v2;
  return result;
}

uint64_t RemoteIntelligenceSessionClientMessage.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v23 - v5;
  v7 = sub_223727D38();
  v23 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v24 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08ED40, &qword_22372E570);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v23 - v13;
  v15 = a1[3];
  v25 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_223671834();
  sub_22372B7D8();
  if (v1)
  {
    v22 = v27;
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    type metadata accessor for RemoteIntelligenceSessionClientMessage(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v16 = v23;
    v17 = v11;
    LOBYTE(v26[0]) = 0;
    sub_2236719AC(&qword_27D08EAE8, MEMORY[0x277D1CE68], MEMORY[0x277D1CE78]);
    v18 = v24;
    sub_22372B648();
    (*(v16 + 32))(v27 + qword_28132B710, v18, v7);
    v20 = sub_223727408();
    LOBYTE(v26[0]) = 1;
    sub_2236719AC(&qword_27D08ED50, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
    sub_22372B648();
    (*(*(v20 - 8) + 56))(v6, 0, 1, v20);
    sub_223671888(v6, v27 + qword_28132B708);
    v21 = v25;
    sub_223623934(v25, v26);
    v22 = RemoteIntelligenceSessionMessage.init(from:)(v26);
    (*(v17 + 8))(v14, v10);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
  }

  return v22;
}

uint64_t sub_223670F94(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08ED58, &qword_22372E578);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223671834();
  sub_22372B7E8();
  v11 = 0;
  sub_223727D38();
  sub_2236719AC(&qword_27D08ED60, MEMORY[0x277D1CE68], MEMORY[0x277D1CE70]);
  sub_22372B6A8();
  if (!v1)
  {
    v10 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
    sub_2236718F8();
    sub_22372B6A8();
    sub_22370D2DC(a1);
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t RemoteIntelligenceSessionClientMessage.Builder.optedInToDataSharing.setter(char a1)
{
  result = type metadata accessor for RemoteIntelligenceSessionClientMessage.Builder(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t sub_223671560()
{
  v1 = qword_28132B710;
  v2 = sub_223727D38();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return sub_223626478(v0 + qword_28132B708, &unk_27D08E530, &unk_22372CB10);
}

uint64_t RemoteIntelligenceSessionClientMessage.deinit()
{
  v0 = sub_223727548();
  v1 = qword_28132B758;
  v2 = sub_223727408();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + qword_28132B760, v2);
  v4 = qword_28132B710;
  v5 = sub_223727D38();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  sub_223626478(v0 + qword_28132B708, &unk_27D08E530, &unk_22372CB10);
  return v0;
}

uint64_t RemoteIntelligenceSessionClientMessage.__deallocating_deinit()
{
  v0 = sub_223727548();
  v1 = qword_28132B758;
  v2 = sub_223727408();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + qword_28132B760, v2);
  v4 = qword_28132B710;
  v5 = sub_223727D38();
  v6 = *(*(v5 - 8) + 8);

  v6(v0 + v4, v5);
  sub_223626478(v0 + qword_28132B708, &unk_27D08E530, &unk_22372CB10);

  return swift_deallocClassInstance();
}

unint64_t sub_223671834()
{
  result = qword_27D08ED48;
  if (!qword_27D08ED48)
  {
    result = swift_getWitnessTable("eϰ^", &type metadata for RemoteIntelligenceSessionClientMessage.CodingKeys, v0, v1);
    atomic_store(result, &qword_27D08ED48);
  }

  return result;
}

uint64_t sub_223671888(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2236718F8()
{
  result = qword_27D08ED68;
  if (!qword_27D08ED68)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D08E530, &unk_22372CB10);
    v4[0] = sub_2236719AC(&unk_28132B610, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
    result = swift_getWitnessTable(MEMORY[0x277D84F40], v3, v4);
    atomic_store(result, &qword_27D08ED68);
  }

  return result;
}

uint64_t sub_2236719AC(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2236719F4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

void sub_223671A5C(uint64_t a1)
{
  sub_223727D38();
  if (v1 <= 0x3F)
  {
    sub_223671C88(319, &qword_28132B5F0, MEMORY[0x277CC95F0]);
    if (v2 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

void sub_223671BB0(uint64_t a1)
{
  sub_223671C88(319, &qword_28132B5F0, MEMORY[0x277CC95F0]);
  if (v1 <= 0x3F)
  {
    sub_223671C88(319, &qword_27D08ED80, MEMORY[0x277D1CE68]);
    if (v2 <= 0x3F)
    {
      sub_223671CDC();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_223671C88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22372B3A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_223671CDC()
{
  if (!qword_281328DB0)
  {
    v0 = sub_22372B3A8();
    if (!v1)
    {
      atomic_store(v0, &qword_281328DB0);
    }
  }
}

unint64_t sub_223671D40()
{
  result = qword_27D08ED88;
  if (!qword_27D08ED88)
  {
    result = swift_getWitnessTable(asc_22372E69C, &type metadata for RemoteIntelligenceSessionClientMessage.CodingKeys, v0, v1);
    atomic_store(result, &qword_27D08ED88);
  }

  return result;
}

unint64_t sub_223671D98()
{
  result = qword_27D08ED90;
  if (!qword_27D08ED90)
  {
    result = swift_getWitnessTable(byte_22372E60C, &type metadata for RemoteIntelligenceSessionClientMessage.CodingKeys, v0, v1);
    atomic_store(result, &qword_27D08ED90);
  }

  return result;
}

unint64_t sub_223671DF0()
{
  result = qword_27D08ED98;
  if (!qword_27D08ED98)
  {
    result = swift_getWitnessTable(byte_22372E634, &type metadata for RemoteIntelligenceSessionClientMessage.CodingKeys, v0, v1);
    atomic_store(result, &qword_27D08ED98);
  }

  return result;
}

uint64_t IntelligenceFlowSessionControllerDelegateWrapper.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t IntelligenceFlowSessionControllerDelegateWrapper.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  return result;
}

uint64_t sub_223671E88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 40) = a3;
  *(v4 + 48) = v3;
  return MEMORY[0x2822009F8](sub_223671EA8, 0, 0);
}

uint64_t sub_223671EA8()
{
  v1 = v0[6];
  swift_beginAccess();
  v2 = *(v1 + 16);
  v0[7] = v2;
  swift_unownedRetainStrong();
  if (v2)
  {
    v3 = swift_task_alloc();
    v0[8] = v3;
    *v3 = v0;
    v3[1] = sub_223671F98;
    v4 = v0[5];

    return sub_22363AB04(v4);
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_223671F98()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t IntelligenceFlowSessionControllerDelegateWrapper.__deallocating_deinit()
{
  swift_unownedRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_223672100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 40) = a3;
  *(v4 + 48) = v3;
  return MEMORY[0x2822009F8](sub_223672120, 0, 0);
}

uint64_t sub_223672120()
{
  v1 = v0[6];
  swift_beginAccess();
  v2 = *(v1 + 16);
  v0[7] = v2;
  swift_unownedRetainStrong();
  if (v2)
  {
    v3 = swift_task_alloc();
    v0[8] = v3;
    *v3 = v0;
    v3[1] = sub_223675320;
    v4 = v0[5];

    return sub_22363AB04(v4);
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_22367222C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v17 = a4;
  v21 = swift_allocObject();
  sub_223672304(a1, a2, a3, v17, a5, a6, a7, a8, v23, a10, a11, a12, a13, a14);
  return v21;
}

void *sub_223672304(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v15 = v14;
  v62 = a8;
  v79 = a7;
  v64 = a4;
  v80 = a11;
  v81 = a2;
  v18 = sub_22372A8F8();
  v73 = *(v18 - 8);
  v74 = v18;
  v20 = MEMORY[0x28223BE20](v18, v19);
  v72 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20, v22);
  v65 = &v61 - v24;
  v26 = MEMORY[0x28223BE20](v23, v25);
  v66 = &v61 - v27;
  v29 = MEMORY[0x28223BE20](v26, v28);
  v67 = &v61 - v30;
  v32 = MEMORY[0x28223BE20](v29, v31);
  v68 = &v61 - v33;
  v35 = MEMORY[0x28223BE20](v32, v34);
  v75 = &v61 - v36;
  MEMORY[0x28223BE20](v35, v37);
  v71 = &v61 - v38;
  swift_defaultActor_initialize();
  v39 = OBJC_IVAR____TtC24RequestDispatcherBridges29IntelligenceFlowSessionBridge_conversationSessionInfo;
  v40 = sub_22372A3B8();
  (*(*(v40 - 8) + 56))(v14 + v39, 1, 1, v40);
  v41 = MEMORY[0x277D84F90];
  *(v14 + OBJC_IVAR____TtC24RequestDispatcherBridges29IntelligenceFlowSessionBridge_externalAgentEventPublishers) = MEMORY[0x277D84F90];
  *(v14 + OBJC_IVAR____TtC24RequestDispatcherBridges29IntelligenceFlowSessionBridge_postponedExternalAgentEventPublishers) = v41;
  *(v14 + OBJC_IVAR____TtC24RequestDispatcherBridges29IntelligenceFlowSessionBridge_genAIPreWarmInitiated) = 0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(&v82);
  sub_22372A838();
  sub_2236241E8(&v82, v14 + OBJC_IVAR____TtC24RequestDispatcherBridges29IntelligenceFlowSessionBridge_sessionsManager);
  sub_22372A828();
  v14[14] = a3;
  v14[15] = a12;
  v63 = a12;
  v14[16] = a5;
  v14[17] = a13;
  v42 = type metadata accessor for IntelligenceFlowSessionBridge(0);
  sub_223728478();
  type metadata accessor for IntelligenceFlowSessionBridge.Error(0);
  v43 = sub_223674BEC(qword_281329478, type metadata accessor for IntelligenceFlowSessionBridge, protocol conformance descriptor for IntelligenceFlowSessionBridge);
  sub_223674BEC(&unk_28132B598, MEMORY[0x277D5CB48], MEMORY[0x277D5CDA8]);
  v44 = sub_223674BEC(&unk_281329528, type metadata accessor for IntelligenceFlowSessionBridge.Error, protocol conformance descriptor for IntelligenceFlowSessionBridge.Error);
  v77 = a3;
  swift_unknownObjectRetain();
  v45 = a5;
  v46 = v75;
  v78 = v45;
  swift_unknownObjectRetain();
  v69 = v42;
  v47 = v76;
  sub_22372A918();
  v70 = v44;
  if (v47)
  {
    v48 = v46;
    v50 = v73;
    v49 = v74;
    v51 = *(v73 + 32);
    v52 = v71;
    v51(v71, v48, v74);
    v53 = v72;
    v51(v72, v52, v49);
    (*(v50 + 16))(a14, v53, v49);
    swift_storeEnumTagMultiPayload();
    swift_willThrowTypedImpl();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    (*(v50 + 8))(v53, v49);
    __swift_destroy_boxed_opaque_existential_1Tm(&v82);
  }

  else
  {
    sub_223728038();
    sub_223674BEC(&qword_28132B5B8, MEMORY[0x277D5CB18], MEMORY[0x277D5CDA8]);
    sub_22372A918();
    sub_223728068();
    sub_223674BEC(&qword_28132B5B0, MEMORY[0x277D5CB28], MEMORY[0x277D5CDA8]);
    v76 = v43;
    sub_22372A918();
    sub_223727E88();
    sub_223674BEC(&unk_28132B5D0, MEMORY[0x277D5CAD0], MEMORY[0x277D5CDA8]);
    sub_22372A918();
    sub_223728918();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EAD0, &qword_22372CA80);
    sub_223674BEC(&qword_28132B578, MEMORY[0x277D5CBE0], MEMORY[0x277D5CDA8]);
    sub_22372A918();
    if (v64)
    {
      type metadata accessor for IFSessionService.Context();
      v55 = swift_unknownObjectRetain();
      v56 = sub_223657840(v55, v62, v63);
      swift_beginAccess();
      if (!qword_28132B7D8)
      {
        v85 = v56;
        sub_223675170();
        sub_22372AB78();
      }

      if (qword_281328E50 != -1)
      {
        swift_once();
      }

      v57 = sub_22372AC98();
      __swift_project_value_buffer(v57, qword_28132B668);
      v58 = sub_22372AC88();
      v59 = sub_22372B268();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        *v60 = 0;
        _os_log_impl(&dword_223620000, v58, v59, "Not starting Remote gateway", v60, 2u);
        MEMORY[0x223DE8A80](v60, -1, -1);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      __swift_destroy_boxed_opaque_existential_1Tm(&v82);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1Tm(&v82);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }
  }

  return v15;
}

void *sub_223672C88(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = &unk_22372EA28;
  *(v2 + 24) = a1;

  return &unk_22372EA38;
}

void *sub_223672D00(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = &unk_22372EA08;
  *(v2 + 24) = a1;

  return &unk_22372EA18;
}

void *sub_223672D78(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = &unk_22372E9E8;
  *(v2 + 24) = a1;

  return &unk_22372E9F8;
}

uint64_t sub_223672DF0()
{
  sub_22366E5FC(v0[3], v0[2]);

  v1 = v0[1];

  return v1();
}

void *sub_223672E60(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = &unk_22372E9C8;
  *(v2 + 24) = a1;

  return &unk_22372E9D8;
}

uint64_t sub_223672ED8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_223624EA4;

  return sub_223673DC4(a1);
}

void *sub_223672F70(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = &unk_22372E9A8;
  *(v2 + 24) = a1;

  return &unk_22372E9B8;
}

uint64_t sub_223672FE8(uint64_t *a1, int *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = *a1;
  v8 = (a2 + *a2);
  v6 = swift_task_alloc();
  *(v4 + 24) = v6;
  *v6 = v4;
  v6[1] = sub_2236730E0;

  return v8(v5);
}

uint64_t sub_2236730E0()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    **(v2 + 16) = v0;
  }

  v4 = *(v3 + 8);

  return v4();
}

uint64_t _s24RequestDispatcherBridges29IntelligenceFlowSessionBridgeC12setupContext21subscriptionRegistrarACxh_q_htAC5ErrorOYKc04SiriaB00g5SetupI0RzAH0g12SubscriptionK0R_r0_lufC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v44 = a7;
  v50 = a6;
  v51 = a5;
  v53 = a3;
  v54 = a4;
  v52 = a2;
  v49 = a1;
  v7 = type metadata accessor for IntelligenceFlowSessionBridge.Error(0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v55 = v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22372AC98();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v48 = v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EDA0, &qword_22372E730);
  v16 = MEMORY[0x28223BE20](v14, v15);
  v47 = v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v18);
  v20 = v43 - v19;
  if (qword_281328E50 != -1)
  {
    swift_once();
  }

  v21 = v10;
  v22 = __swift_project_value_buffer(v10, qword_28132B668);
  v23 = sub_22372AC88();
  v24 = sub_22372B268();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v56[0] = v26;
    *v25 = 136446210;
    *(v25 + 4) = sub_223623274(0xD000000000000029, 0x8000000223734E50, v56);
    _os_log_impl(&dword_223620000, v23, v24, "%{public}s Using LocalIntelligenceFlowClientProvider", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    MEMORY[0x223DE8A80](v26, -1, -1);
    MEMORY[0x223DE8A80](v25, -1, -1);
  }

  v27 = *(v14 + 36);
  v45 = v14;
  v28 = v11;
  v29 = *(v11 + 16);
  v30 = v20;
  v29(&v20[v27], v22, v21);
  *v20 = 0;
  v46 = type metadata accessor for IntelligenceFlowSessionControllerDelegateWrapper();
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  v43[1] = v31 + 16;
  v32 = v47;
  sub_223634890(v20, v47, &qword_27D08EDA0, &qword_22372E730);
  v33 = v48;
  v29(v48, v22, v21);
  v34 = type metadata accessor for IntelligenceFlowSessionController(0);
  v35 = swift_allocObject();

  swift_defaultActor_initialize();
  *(v35 + 208) = 0;
  *(v35 + 112) = 0u;
  *(v35 + 128) = 0u;
  *(v35 + 144) = 0u;
  swift_unknownObjectWeakInit();
  *(v35 + 184) = v45;
  *(v35 + 192) = &protocol witness table for LocalIntelligenceFlowClientProvider<A>;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v35 + 160));
  sub_2236747E4(v32, boxed_opaque_existential_1);
  *(v35 + 208) = &protocol witness table for IntelligenceFlowSessionControllerDelegateWrapper;
  swift_unknownObjectWeakAssign();

  (*(v28 + 32))(v35 + OBJC_IVAR____TtC24RequestDispatcherBridges33IntelligenceFlowSessionController_logger, v33, v21);
  v37 = sub_223674BEC(&qword_2813291E8, type metadata accessor for IntelligenceFlowSessionController, protocol conformance descriptor for IntelligenceFlowSessionController);

  v38 = v55;
  v42 = v37;
  v39 = v56[4];
  v40 = sub_22367222C(v49, v52, v35, 1, v31, v53, v54, v34, v46, v51, v50, v42, &protocol witness table for IntelligenceFlowSessionControllerDelegateWrapper, v55);
  sub_223626478(v30, &qword_27D08EDA0, &qword_22372E730);
  if (v39)
  {

    sub_22366E5FC(v38, v44);
  }

  else
  {
    swift_beginAccess();

    swift_unownedRelease();
    *(v31 + 16) = v40;
    swift_endAccess();
    swift_unownedRetain();
  }

  return v40;
}

uint64_t sub_22367371C()
{
  sub_22366E5FC(v0[18], v0[17]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2236737C4()
{
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  sub_22372A398();
  v1 = swift_task_alloc();
  v0[61] = v1;
  *v1 = v0;
  v1[1] = sub_223673888;
  v2 = v0[60];
  v3 = v0[45];

  return sub_223646C78(v3, v2);
}

uint64_t sub_223673888()
{
  v2 = *v1;
  v3 = *(*v1 + 360);
  v4 = *(*v1 + 352);
  v5 = *(*v1 + 344);
  *(*v1 + 496) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 312);
  if (v0)
  {
    v7 = sub_223673B9C;
  }

  else
  {
    v7 = sub_223673AD4;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_223673A10()
{
  (*(v0[50] + 8))(v0[51], v0[49]);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);

  v1 = v0[1];

  return v1();
}

uint64_t sub_223673AD4()
{
  v2 = v0[50];
  v1 = v0[51];
  v3 = v0[49];

  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);

  v4 = v0[1];

  return v4();
}

uint64_t sub_223673B9C()
{
  if (qword_281328E50 != -1)
  {
    swift_once();
  }

  v1 = v0[62];
  v2 = sub_22372AC98();
  __swift_project_value_buffer(v2, qword_28132B668);
  v3 = v1;
  v4 = sub_22372AC88();
  v5 = sub_22372B278();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[62];
  v9 = v0[50];
  v8 = v0[51];
  v10 = v0[49];
  if (v6)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v7;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_223620000, v4, v5, "Publishing external agent outcome failed with error: %@", v11, 0xCu);
    sub_223626478(v12, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v12, -1, -1);
    MEMORY[0x223DE8A80](v11, -1, -1);
  }

  else
  {
  }

  (*(v9 + 8))(v8, v10);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);

  v15 = v0[1];

  return v15();
}

uint64_t sub_223673DC4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_2237287C8();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_223673E84, v1, 0);
}

uint64_t sub_223673E84()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  sub_2237287D8();
  v4 = (*(v2 + 88))(v1, v3);
  v5 = *MEMORY[0x277D5CB88];
  (*(v2 + 8))(v1, v3);
  if (v4 == v5 && (v6 = v0[3], v7 = OBJC_IVAR____TtC24RequestDispatcherBridges29IntelligenceFlowSessionBridge_genAIPreWarmInitiated, v0[7] = OBJC_IVAR____TtC24RequestDispatcherBridges29IntelligenceFlowSessionBridge_genAIPreWarmInitiated, (*(v6 + v7) & 1) == 0))
  {
    if (qword_281328E50 != -1)
    {
      swift_once();
    }

    v10 = sub_22372AC98();
    __swift_project_value_buffer(v10, qword_28132B668);
    v11 = sub_22372AC88();
    v12 = sub_22372B268();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_223620000, v11, v12, "AJAX routing detected - initiating GenAI prewarming", v13, 2u);
      MEMORY[0x223DE8A80](v13, -1, -1);
    }

    v14 = v0[3];

    v15 = *(v14 + 120);
    ObjectType = swift_getObjectType();
    v18 = (*(v15 + 96) + **(v15 + 96));
    v17 = swift_task_alloc();
    v0[8] = v17;
    *v17 = v0;
    v17[1] = sub_223674138;

    return v18(0xD000000000000069, 0x8000000223734FD0, ObjectType, v15);
  }

  else
  {

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_223674138(char a1)
{
  v2 = *(*v1 + 24);
  *(*v1 + 72) = a1;

  return MEMORY[0x2822009F8](sub_223674250, v2, 0);
}

uint64_t sub_223674250()
{
  *(*(v0 + 24) + *(v0 + 56)) = *(v0 + 72);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2236742C4()
{
  v2 = *v1;
  v2[18] = v0;

  __swift_destroy_boxed_opaque_existential_1Tm(v2 + 2);
  v3 = v2[11];
  if (v0)
  {
    v4 = sub_223674538;
  }

  else
  {
    v4 = sub_2236743F8;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2236743F8()
{
  v1 = v0[16] + 1;
  if (v1 == v0[14])
  {

    *(v0[11] + v0[12]) = MEMORY[0x277D84F90];

    v2 = v0[1];

    return v2();
  }

  else
  {
    v0[16] = v1;
    v4 = v0[15];
    v5 = v0[10];
    sub_223623934(v0[13] + 40 * v1 + 32, (v0 + 2));
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v6 = swift_task_alloc();
    v0[17] = v6;
    *v6 = v0;
    v6[1] = sub_2236742C4;
    v7 = v0[10];

    return sub_223646C78(v5 + v4, v7);
  }
}

uint64_t sub_223674538()
{
  if (qword_281328E50 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v2 = sub_22372AC98();
  __swift_project_value_buffer(v2, qword_28132B668);
  v3 = v1;
  v4 = sub_22372AC88();
  v5 = sub_22372B278();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[18];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_223620000, v4, v5, "Publishing external agent outcome failed with error: %@", v8, 0xCu);
    sub_223626478(v9, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v9, -1, -1);
    MEMORY[0x223DE8A80](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[16] + 1;
  if (v12 == v0[14])
  {

    *(v0[11] + v0[12]) = MEMORY[0x277D84F90];

    v13 = v0[1];

    return v13();
  }

  else
  {
    v0[16] = v12;
    v15 = v0[15];
    v16 = v0[10];
    sub_223623934(v0[13] + 40 * v12 + 32, (v0 + 2));
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v17 = swift_task_alloc();
    v0[17] = v17;
    *v17 = v0;
    v17[1] = sub_2236742C4;
    v18 = v0[10];

    return sub_223646C78(v16 + v15, v18);
  }
}

uint64_t sub_2236747E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EDA0, &qword_22372E730);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t IntelligenceFlowSessionBridge.deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_223626478(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges29IntelligenceFlowSessionBridge_conversationSessionInfo, &qword_27D08EDA8, &qword_22372E738);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC24RequestDispatcherBridges29IntelligenceFlowSessionBridge_sessionsManager));

  swift_defaultActor_destroy();
  return v0;
}

uint64_t IntelligenceFlowSessionBridge.__deallocating_deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_223626478(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges29IntelligenceFlowSessionBridge_conversationSessionInfo, &qword_27D08EDA8, &qword_22372E738);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC24RequestDispatcherBridges29IntelligenceFlowSessionBridge_sessionsManager));

  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t sub_223674970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v21 = a7;
  v14 = type metadata accessor for IntelligenceFlowSessionBridge.Error(0);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = _s24RequestDispatcherBridges29IntelligenceFlowSessionBridgeC12setupContext21subscriptionRegistrarACxh_q_htAC5ErrorOYKc04SiriaB00g5SetupI0RzAH0g12SubscriptionK0R_r0_lufC(a1, a2, a3, a4, a5, a6, v17);
  if (v7)
  {
    v19 = result;
    sub_22366E5FC(v17, v21);
    return v19;
  }

  return result;
}

double SessionStartedMessage.intelligenceFlowMetadata.getter@<D0>(uint64_t a2@<X8>)
{
  sub_223729D58();
  v3 = sub_223728428();
  v5 = v4;
  v6 = type metadata accessor for IFSessionMetadata(0);
  sub_22372A528();
  v7 = a2 + *(v6 + 28);
  *v7 = 0u;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 1;
  v8 = (a2 + *(v6 + 20));
  *v8 = v3;
  v8[1] = v5;
  *v7 = 0u;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 1;
  sub_223728438();
  result = *&v10;
  *v7 = v10;
  *(v7 + 16) = v11;
  *(v7 + 32) = v12;
  return result;
}

double sub_223674AF8@<D0>(uint64_t a2@<X8>)
{
  sub_223729D58();
  v3 = sub_223728428();
  v5 = v4;
  v6 = type metadata accessor for IFSessionMetadata(0);
  sub_22372A528();
  v7 = a2 + *(v6 + 28);
  *v7 = 0u;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 1;
  v8 = (a2 + *(v6 + 20));
  *v8 = v3;
  v8[1] = v5;
  *v7 = 0u;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 1;
  sub_223728438();
  result = *&v10;
  *v7 = v10;
  *(v7 + 16) = v11;
  *(v7 + 32) = v12;
  return result;
}

uint64_t sub_223674BEC(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t dispatch thunk of IntelligenceFlowSessionControllerDelegateWrapper.sessionController(_:didEstablishSessionWithClientBox:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 120) + **(*v3 + 120));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_223624EA4;

  return v10(a1, a2, a3);
}

void sub_223674E08(uint64_t a1)
{
  sub_223674EEC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_223674EEC(uint64_t a1)
{
  if (!qword_28132B4F0)
  {
    sub_22372A3B8();
    v1 = sub_22372B3A8();
    if (!v2)
    {
      atomic_store(v1, &qword_28132B4F0);
    }
  }
}

uint64_t sub_223674F94(uint64_t a1)
{
  result = sub_22372A8F8();
  if (v2 <= 0x3F)
  {
    result = sub_22367501C();
    if (v3 <= 0x3F)
    {
      result = sub_223675080();
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_22367501C()
{
  result = qword_281328CE0;
  if (!qword_281328CE0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_281328CE0);
  }

  return result;
}

ValueMetadata *sub_223675080()
{
  result = qword_281329550[0];
  if (!qword_281329550[0])
  {
    result = &type metadata for RemoteIntelligenceError;
    atomic_store(&type metadata for RemoteIntelligenceError, qword_281329550);
  }

  return result;
}

uint64_t sub_2236750B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntelligenceFlowSessionBridge.Error(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_223675114(uint64_t a1)
{
  v2 = type metadata accessor for IntelligenceFlowSessionBridge.Error(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_223675170()
{
  result = qword_281329C60;
  if (!qword_281329C60)
  {
    result = swift_getWitnessTable(byte_22372D4B4, &type metadata for IFSessionService, v0, v1);
    atomic_store(result, &qword_281329C60);
  }

  return result;
}

uint64_t sub_2236751C4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2236242EC;

  return sub_223672ED8(a1);
}

uint64_t sub_22367525C(uint64_t *a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2236242EC;

  return sub_223672FE8(a1, v7, v6, a2);
}

uint64_t sub_22367532C(uint64_t a1)
{
  result = sub_22372AC98();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2236753D8(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v2[10] = *v1;
  v3 = *v1;
  v2[11] = *v1;
  v4 = sub_22372A548();
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EE40, &qword_22372EB28);
  v2[15] = swift_task_alloc();
  v5 = sub_223727408();
  v2[16] = v5;
  v2[17] = *(v5 - 8);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EE48, &unk_22372EB30);
  v2[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EE50, &qword_22372EB60);
  v2[23] = swift_task_alloc();
  v6 = sub_223727DD8();
  v2[24] = v6;
  v2[25] = *(v6 - 8);
  v2[26] = swift_task_alloc();
  v7 = *(v3 + 80);
  v2[27] = v7;
  v2[28] = *(v7 - 8);
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2236756EC, 0, 0);
}

uint64_t sub_2236756EC()
{
  v35 = v0;
  v1 = *(v0 + 216);
  v26 = *(v0 + 208);
  v31 = *(v0 + 200);
  v32 = *(v0 + 192);
  v28 = *(v0 + 184);
  v29 = *(v0 + 176);
  v30 = *(v0 + 120);
  v27 = *(v0 + 80);
  v2 = *(v0 + 72);
  v23 = *(v0 + 88);
  v24 = *(v0 + 64);
  v3 = *(v2 + 24);
  v25 = *(v2 + 32);
  v4 = type metadata accessor for IFSessionMetadata(0);
  *(v0 + 280) = *(v4 + 24);
  swift_unknownObjectRetain();
  v5 = sub_22372A518();
  v7 = v6;
  v8 = *(v2 + qword_27D0970B8);
  v9 = sub_2237275D8();
  v10 = objc_allocWithZone(v9);

  v34[3] = v9;
  v34[4] = &off_2836C4328;
  v34[0] = [v10 init];
  v11 = *(v23 + 88);
  (*(v11 + 16))(v3, v25, v5, v7, v8, v34, v1, v11);
  sub_223727DC8();
  *(v0 + 40) = v2;
  sub_2236291DC(*(v24 + *(v4 + 20)), *(v24 + *(v4 + 20) + 8), v27, &off_2836C5250, v28);
  v12 = sub_223727B98();
  (*(*(v12 - 8) + 56))(v28, 0, 1, v12);
  sub_223727DA8();
  sub_223629A60();
  v13 = sub_223727B68();
  (*(*(v13 - 8) + 56))(v29, 0, 1, v13);
  sub_223727D88();
  v14 = sub_2237273B8();
  v16 = v15;
  *(v0 + 248) = v15;
  (*(v31 + 16))(v30, v26, v32);
  (*(v31 + 56))(v30, 0, 1, v32);
  v17 = *(v11 + 8);
  *(v0 + 256) = v17;
  v33 = (*(v17 + 24) + **(v17 + 24));
  v18 = swift_task_alloc();
  *(v0 + 264) = v18;
  *v18 = v0;
  v18[1] = sub_223675A70;
  v19 = *(v0 + 216);
  v20 = *(v0 + 160);
  v21 = *(v0 + 120);

  return v33(v20, v14, v16, v21, v19, v17);
}

uint64_t sub_223675A70()
{
  v2 = *v1;
  *(*v1 + 272) = v0;

  sub_223676344(*(v2 + 120));

  if (v0)
  {
    v3 = sub_223675EC4;
  }

  else
  {
    v3 = sub_223675BC0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_223675BC0()
{
  v30 = *(v0 + 280);
  v31 = *(v0 + 256);
  v1 = *(v0 + 232);
  v3 = *(v0 + 216);
  v2 = *(v0 + 224);
  v26 = *(v0 + 240);
  v4 = *(v0 + 168);
  v27 = *(v0 + 152);
  v28 = *(v0 + 144);
  v6 = *(v0 + 128);
  v5 = *(v0 + 136);
  v7 = *(v0 + 104);
  v8 = *(v0 + 112);
  v29 = *(v0 + 96);
  v9 = *(v0 + 64);
  (*(v5 + 32))(v4, *(v0 + 160), v6);
  type metadata accessor for SessionClientBox(0);
  (*(v2 + 16))(v1, v26, v3);
  v10 = *(v5 + 16);
  v10(v27, v9, v6);
  v10(v28, v4, v6);
  (*(v7 + 16))(v8, v9 + v30, v29);
  v32 = sub_22362E4DC(v1, v27, v28, v8, v3, v31);
  if (qword_281328E50 != -1)
  {
    swift_once();
  }

  v11 = sub_22372AC98();
  __swift_project_value_buffer(v11, qword_28132B668);
  v12 = sub_22372AC88();
  v13 = sub_22372B268();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_223620000, v12, v13, "Set up Remote IF Session successfully", v14, 2u);
    MEMORY[0x223DE8A80](v14, -1, -1);
  }

  v15 = *(v0 + 240);
  v16 = *(v0 + 224);
  v25 = *(v0 + 216);
  v18 = *(v0 + 200);
  v17 = *(v0 + 208);
  v19 = *(v0 + 192);
  v20 = *(v0 + 168);
  v21 = *(v0 + 136);
  v22 = *(v0 + 128);

  (*(v21 + 8))(v20, v22);
  (*(v18 + 8))(v17, v19);
  (*(v16 + 8))(v15, v25);

  v23 = *(v0 + 8);

  return v23(v32);
}

uint64_t sub_223675EC4()
{
  v20 = v0;
  if (qword_281328E50 != -1)
  {
    swift_once();
  }

  v1 = v0[34];
  v2 = sub_22372AC98();
  __swift_project_value_buffer(v2, qword_28132B668);
  v3 = v1;
  v4 = sub_22372AC88();
  v5 = sub_22372B278();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = sub_22372B738();
    v10 = sub_223623274(v8, v9, &v19);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_223620000, v4, v5, "Failed to start IF Session: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x223DE8A80](v7, -1, -1);
    MEMORY[0x223DE8A80](v6, -1, -1);
  }

  v11 = v0[30];
  v13 = v0[27];
  v12 = v0[28];
  v15 = v0[25];
  v14 = v0[26];
  v16 = v0[24];
  swift_willThrow();
  (*(v15 + 8))(v14, v16);
  (*(v12 + 8))(v11, v13);

  v17 = v0[1];

  return v17();
}

uint64_t sub_223676138()
{
  swift_unknownObjectRelease();
  v1 = qword_27D0970B0;
  v2 = sub_22372AC98();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_2236761B0()
{
  sub_223676138();

  return swift_deallocClassInstance();
}

uint64_t sub_223676230@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = qword_27D0970B0;
  v5 = sub_22372AC98();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_2236762AC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22363FFE8;

  return sub_2236753D8(a1);
}

uint64_t sub_223676344(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EE40, &qword_22372EB28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t LocalIntelligenceFlowClientProvider.init(logger:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  *a2 = 0;
  v7 = *(type metadata accessor for LocalIntelligenceFlowClientProvider(0, a3, a4, a5) + 36);
  v8 = sub_22372AC98();
  v9 = *(*(v8 - 8) + 32);

  return v9(&a2[v7], a1, v8);
}

uint64_t LocalIntelligenceFlowClientProvider.logger.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_22372AC98();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2236764C8()
{
  (*(v0[35] + 8))(v0[37], v0[34]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_223676634()
{
  v22 = v0;
  v1 = v0[45];
  v2 = v1;
  v3 = sub_22372AC88();
  v4 = sub_22372B278();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v21[0] = v6;
    *v5 = 136446466;
    *(v5 + 4) = sub_223623274(0xD000000000000012, 0x8000000223735080, v21);
    *(v5 + 12) = 2080;
    swift_getErrorValue();
    v7 = sub_22372B738();
    v9 = sub_223623274(v7, v8, v21);

    *(v5 + 14) = v9;
    _os_log_impl(&dword_223620000, v3, v4, "%{public}s Failed to start IF Session: %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DE8A80](v6, -1, -1);
    MEMORY[0x223DE8A80](v5, -1, -1);
  }

  v20 = v0[37];
  v10 = v0[34];
  v11 = v0[35];
  v12 = v0[33];
  v13 = v0[30];
  v14 = v0[31];
  v15 = v0[28];
  v16 = v0[29];
  v17 = v0[27];
  swift_willThrow();
  (*(v15 + 8))(v16, v17);
  (*(v14 + 8))(v12, v13);
  (*(v11 + 8))(v20, v10);

  v18 = v0[1];

  return v18();
}

unint64_t sub_22367692C()
{
  result = qword_281328D70;
  if (!qword_281328D70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281328D70);
  }

  return result;
}

uint64_t sub_223676978@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EE78, &qword_22372EB80);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v15 - v4;
  v6 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v7 = sub_22372AFD8();
  v8 = [v6 initWithSuiteName_];

  if (v8)
  {
    v9 = sub_22372AFD8();
    v10 = [v8 stringForKey_];

    if (v10)
    {
      sub_22372AFE8();

      sub_223727D48();
      v11 = sub_223727D58();
      v12 = *(v11 - 8);
      if ((*(v12 + 48))(v5, 1, v11) != 1)
      {
        (*(v12 + 32))(a1, v5, v11);
        return (*(v12 + 56))(a1, 0, 1, v11);
      }

      sub_223626478(v5, &qword_27D08EE78, &qword_22372EB80);
    }

    else
    {
    }
  }

  v13 = sub_223727D58();
  return (*(*(v13 - 8) + 56))(a1, 1, 1, v13);
}

uint64_t sub_223676BC8(uint64_t a1)
{
  result = sub_22372AC98();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_223676C6C(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
LABEL_16:
    v5 = sub_22372B558();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      do
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x223DE7ED0](v6, a3);
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:

            return v7;
          }
        }

        else
        {
          if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v7 = *(a3 + 8 * v6 + 32);

          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_13;
          }
        }

        v12 = v7;
        v9 = a1(&v12);
        if (v3)
        {
          goto LABEL_14;
        }

        if (v9)
        {
          return v7;
        }

        ++v6;
      }

      while (v8 != v5);
    }
  }

  return 0;
}

void sub_223676D90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = a1;
  v33 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F6F0, &qword_223732CD0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v34 = &v31 - v6;
  v7 = sub_223729F08();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v31 - v14;
  v16 = *(v8 + 104);
  v16(&v31 - v14, *MEMORY[0x277D5CF30], v7);
  sub_223685890(&qword_28132B538, MEMORY[0x277D5CF58], MEMORY[0x277D5CF68]);
  v36 = a3;
  sub_22372B0F8();
  sub_22372B0F8();
  if (v38 == v39)
  {
    v35 = 1;
  }

  else
  {
    v35 = sub_22372B6E8();
  }

  v17 = *(v8 + 8);
  v17(v15, v7);

  v16(v12, *MEMORY[0x277D5CF40], v7);
  sub_22372B0F8();
  sub_22372B0F8();
  if (v38 == v39)
  {
    v17(v12, v7);

    v18 = v37;
  }

  else
  {
    v19 = sub_22372B6E8();
    v17(v12, v7);

    v18 = v37;
    if (((v19 | v35) & 1) == 0)
    {
      return;
    }
  }

  v20 = qword_28132A1A0;
  v21 = qword_28132B858;
  swift_beginAccess();
  v22 = v34;
  sub_223634890(v18 + v21, v34, &unk_27D08F6F0, &qword_223732CD0);
  LOBYTE(v21) = sub_223724934((v18 + v20), v22);
  sub_223626478(v22, &unk_27D08F6F0, &qword_223732CD0);
  if (v21)
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v23 = sub_22372AC98();
    __swift_project_value_buffer(v23, qword_28132B680);
    v24 = sub_22372AC88();
    v25 = sub_22372B268();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_223620000, v24, v25, "MUX: Copy user selection from previous request because Siri is prompting", v26, 2u);
      MEMORY[0x223DE8A80](v26, -1, -1);
    }

    sub_223677288(v32, v33);
  }

  else if (v35)
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v27 = sub_22372AC98();
    __swift_project_value_buffer(v27, qword_28132B680);
    v28 = sub_22372AC88();
    v29 = sub_22372B268();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_223620000, v28, v29, "MUX: Local request without Siri prompt. Creating new muxContext with the active user", v30, 2u);
      MEMORY[0x223DE8A80](v30, -1, -1);
    }

    sub_223677758(v32, v33);
  }
}

void sub_223677288(uint64_t a1, unint64_t a2)
{
  v3 = *(&v2[1].isa + qword_28132A200);
  if (v3)
  {
    v6 = *(&v2->isa + qword_28132A200);
    v7 = *(&v2->isa + qword_28132A1E8);
    v8 = OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_requestIdToMuxRequestContext;
    swift_beginAccess();
    v9 = *(v7 + v8);
    if (*(v9 + 16))
    {
      oslog = v2;

      v10 = sub_2236261A0(v6, v3);
      if (v11)
      {
        v12 = *(*(v9 + 56) + 8 * v10);

        if (qword_281328E58 != -1)
        {
          swift_once();
        }

        v13 = sub_22372AC98();
        __swift_project_value_buffer(v13, qword_28132B680);

        v14 = sub_22372AC88();
        v15 = sub_22372B268();

        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          v30 = v12;
          v17 = swift_slowAlloc();
          v34[0] = v17;
          *v16 = 136315394;
          v18 = sub_223623274(v6, v3, v34);

          *(v16 + 4) = v18;
          *(v16 + 12) = 2080;
          *(v16 + 14) = sub_223623274(a1, a2, v34);
          _os_log_impl(&dword_223620000, v14, v15, "MUX: Successfully copy muxRequestContext from previous requestId %s to new requestId %s", v16, 0x16u);
          swift_arrayDestroy();
          v19 = v17;
          v12 = v30;
          MEMORY[0x223DE8A80](v19, -1, -1);
          MEMORY[0x223DE8A80](v16, -1, -1);
        }

        else
        {
        }

        swift_beginAccess();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v33 = *(v7 + v8);
        *(v7 + v8) = 0x8000000000000000;
        sub_22368D88C(v12, a1, a2, isUniquelyReferenced_nonNull_native);

        *(v7 + v8) = v33;
        swift_endAccess();
        *(&oslog->isa + qword_28132A208) = v12;

        return;
      }
    }

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v23 = sub_22372AC98();
    __swift_project_value_buffer(v23, qword_28132B680);

    v24 = sub_22372AC88();
    v25 = sub_22372B268();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v34[0] = v27;
      *v26 = 136315138;
      v28 = sub_223623274(v6, v3, v34);

      *(v26 + 4) = v28;
      _os_log_impl(&dword_223620000, v24, v25, "MUX: Can not copy previous muxRequestContext to local request with prevRequestId %s due to nil prevMuxRequestContext", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      MEMORY[0x223DE8A80](v27, -1, -1);
      MEMORY[0x223DE8A80](v26, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v20 = sub_22372AC98();
    __swift_project_value_buffer(v20, qword_28132B680);
    osloga = sub_22372AC88();
    v21 = sub_22372B268();
    if (os_log_type_enabled(osloga, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_223620000, osloga, v21, "MUX: Can not copy previous muxRequestContext to local request due to no prevRequestId", v22, 2u);
      MEMORY[0x223DE8A80](v22, -1, -1);
    }
  }
}

void sub_223677758(uint64_t a1, uint64_t a2)
{
  v118 = a1;
  v119 = a2;
  v3 = sub_22372A3C8();
  v112 = *(v3 - 8);
  v113 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v111 = &v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_223727408();
  v107 = *(v108 - 1);
  MEMORY[0x28223BE20](v108, v6);
  v106 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EEA0, &qword_22372EC30);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v103 = (&v96 - v10);
  v114 = sub_22372A458();
  v117 = *(v114 - 8);
  v12 = MEMORY[0x28223BE20](v114, v11);
  v105 = &v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v14);
  v115 = &v96 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E990, &qword_22372FCF0);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v19 = &v96 - v18;
  v20 = sub_22372A298();
  v21 = *(v20 - 8);
  v23 = MEMORY[0x28223BE20](v20, v22);
  v102 = &v96 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v25);
  v27 = &v96 - v26;
  v28 = sub_22372A548();
  v120 = *(v28 - 8);
  v30 = MEMORY[0x28223BE20](v28, v29);
  v109 = &v96 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v30, v32);
  v104 = &v96 - v34;
  MEMORY[0x28223BE20](v33, v35);
  v37 = &v96 - v36;
  v116 = v2;
  v38 = *(v2 + qword_28132A1E8);
  v39 = OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_userSessionState;
  swift_beginAccess();
  v101 = *(v21 + 16);
  v101(v27, v38 + v39, v20);
  sub_22372A268();
  v40 = *(v21 + 8);
  v41 = v27;
  v42 = v120;
  v40(v41, v20);
  if ((*(v42 + 48))(v19, 1, v28) == 1)
  {
    sub_223626478(v19, &unk_27D08E990, &qword_22372FCF0);
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v43 = sub_22372AC98();
    __swift_project_value_buffer(v43, qword_28132B680);
    v44 = sub_22372AC88();
    v45 = sub_22372B278();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_223620000, v44, v45, "MUX: Request is a local request without activeUserSharedUserId which is unexpected", v46, 2u);
      MEMORY[0x223DE8A80](v46, -1, -1);
    }

    sub_223677288(v118, v119);
  }

  else
  {
    v47 = *(v42 + 32);
    v110 = v37;
    v100 = v28;
    v98 = v42 + 32;
    v97 = v47;
    v47(v37, v19, v28);
    v48 = v40;
    v49 = v102;
    v101(v102, v38 + v39, v20);
    v50 = v103;
    sub_22372A258();
    v48(v49, v20);
    v51 = v117;
    v52 = *(v117 + 48);
    v53 = v114;
    v54 = v52(v50, 1, v114);
    v99 = v38;
    if (v54 == 1)
    {
      v55 = *(v51 + 104);
      v55(v115, *MEMORY[0x277D5D230], v53);
      if (v52(v50, 1, v53) != 1)
      {
        sub_223626478(v50, &qword_27D08EEA0, &qword_22372EC30);
      }
    }

    else
    {
      (*(v51 + 32))(v115, v50, v53);
      v55 = *(v51 + 104);
    }

    v96 = v55;
    LODWORD(v101) = *MEMORY[0x277D5D238];
    v56 = v105;
    (v55)(v105);
    sub_22372A448();
    v57 = *(v51 + 8);
    v117 = v51 + 8;
    v57(v56, v53);
    v58 = v57;
    v103 = v57;
    type metadata accessor for MUXRequestContext();
    swift_allocObject();
    v59 = sub_22362A78C(v118, v119);

    v60 = v106;
    sub_2237273F8();
    v61 = sub_2237273B8();
    v102 = v61;
    v63 = v62;
    (*(v107 + 8))(v60, v108);
    *(v59 + 32) = v61;
    *(v59 + 40) = v63;
    v64 = v63;
    v65 = v59;

    v96(v56, v101, v53);
    LOBYTE(v59) = sub_22372A448();
    v58(v56, v53);
    v66 = v120;
    v67 = *(v120 + 16);
    v68 = v104;
    v69 = v100;
    v67(v104, v110, v100);
    v70 = v67;
    LODWORD(v107) = v59 & 1;
    type metadata accessor for MUXLocalRequestTRPCandidateContext(0);
    v71 = swift_allocObject();
    v72 = v109;
    v70(v109, v68, v69);
    LODWORD(v59) = sub_22372A418();
    v73 = *(v66 + 8);
    v120 = v66 + 8;
    v108 = v73;
    v73(v68, v69);
    *(v71 + OBJC_IVAR____TtC24RequestDispatcherBridges22MUXTRPCandidateContext_tcuMappedNLResponse) = 0;
    *(v71 + OBJC_IVAR____TtC24RequestDispatcherBridges22MUXTRPCandidateContext_tcuMappedNLRepetitions) = 0;
    *(v71 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlUserParses) = 0;
    v74 = OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlResponseStatusCode;
    v75 = sub_223727678();
    (*(*(v75 - 8) + 56))(v71 + v74, 1, 1, v75);
    v76 = OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlLanguageVariantResult;
    v77 = sub_223727758();
    (*(*(v77 - 8) + 56))(v71 + v76, 1, 1, v77);
    *(v71 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_candidateState) = 0;
    *(v71 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedForServerFallback) = 0;
    *(v71 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_serverUserSelectionPending) = 0;
    *(v71 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_isMitigated) = 0;
    v78 = OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlRerunStartTime;
    v79 = sub_22372AEE8();
    (*(*(v79 - 8) + 56))(v71 + v78, 1, 1, v79);
    v80 = v71 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlRerunTimeInMs;
    *v80 = 0;
    *(v80 + 8) = 1;
    v81 = v71 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedUserAttribute;
    v97(v71 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedUserAttribute, v72, v69);
    v82 = type metadata accessor for MUXUserAttributes(0);
    *(v81 + v82[5]) = 4;
    *(v81 + v82[6]) = 0;
    *(v81 + v82[8]) = v59;
    *(v81 + v82[7]) = 0;
    *(v81 + v82[9]) = 1;
    *(v81 + v82[10]) = v107;
    v83 = (v71 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_topLevelCandidateId);
    v84 = v102;
    *v83 = v102;
    v83[1] = v64;
    v85 = (v71 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId);
    *v85 = v84;
    v85[1] = v64;

    sub_2236B4024(v71);

    v86 = OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_requestIdToMuxRequestContext;
    v87 = v99;
    swift_beginAccess();
    v88 = v119;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v122 = *(v87 + v86);
    *(v87 + v86) = 0x8000000000000000;
    sub_22368D88C(v65, v118, v88, isUniquelyReferenced_nonNull_native);

    *(v87 + v86) = v122;
    swift_endAccess();
    v90 = v116;
    *(v116 + qword_28132A208) = v65;

    __swift_project_boxed_opaque_existential_1((v90 + qword_28132A1A0), *(v90 + qword_28132A1A0 + 24));
    v121[3] = v69;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v121);
    v92 = v110;
    v70(boxed_opaque_existential_1, v110, v69);
    v94 = v111;
    v93 = v112;
    v95 = v113;
    (*(v112 + 104))(v111, *MEMORY[0x277D5D1C0], v113);
    sub_22372A4B8();

    (*(v93 + 8))(v94, v95);
    v103(v115, v114);
    v108(v92, v69);
    sub_223626478(v121, &unk_27D08F750, &qword_22372C960);
  }
}

void sub_2236783E4(void *a1)
{
  v3 = v1;
  v5 = type metadata accessor for MUXUserAttributes(0);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v173 = v164 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22372A548();
  v9 = *(v8 - 8);
  v175 = v8;
  v176 = v9;
  v11 = MEMORY[0x28223BE20](v8, v10);
  v172 = v164 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v13);
  v174 = v164 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F920, qword_223730410);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v181 = v164 - v17;
  v18 = sub_223727678();
  v179 = *(v18 - 8);
  v180 = v18;
  MEMORY[0x28223BE20](v18, v19);
  v177 = v164 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EEB0, qword_22372FF80);
  MEMORY[0x28223BE20](v21 - 8, v22);
  v24 = v164 - v23;
  v182 = a1;
  v25 = sub_223728CF8();
  v27 = v26;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v28 = sub_22372AC98();
  v29 = __swift_project_value_buffer(v28, qword_28132B680);

  v30 = sub_22372AC88();
  v31 = sub_22372B268();

  v32 = os_log_type_enabled(v30, v31);
  v178 = v24;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v34 = v29;
    v35 = swift_slowAlloc();
    v185[0] = v35;
    *v33 = 136315138;
    *(v33 + 4) = sub_223623274(v25, v27, v185);
    _os_log_impl(&dword_223620000, v30, v31, "MUX: Handling MUXNLTRPCandidateMessage for trpId: %s.", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    v36 = v35;
    v29 = v34;
    MEMORY[0x223DE8A80](v36, -1, -1);
    MEMORY[0x223DE8A80](v33, -1, -1);
  }

  v37 = qword_28132A208;
  v38 = *(v3 + qword_28132A208);
  swift_beginAccess();
  v39 = *(v38 + 48);
  if (!*(v39 + 16))
  {
    goto LABEL_37;
  }

  v40 = sub_2236261A0(v25, v27);
  if ((v41 & 1) == 0)
  {

    goto LABEL_37;
  }

  v169 = v25;
  v42 = *(*(v39 + 56) + 8 * v40);

  v43 = type metadata accessor for MUXTRPCandidateContext(0);
  v44 = swift_dynamicCastClass();
  if (!v44)
  {

    v25 = v169;
LABEL_37:

    v78 = sub_22372AC88();
    v79 = sub_22372B278();

    if (os_log_type_enabled(v78, v79))
    {
      v80 = v25;
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v184[0] = v82;
      *v81 = 136315138;
      v83 = sub_223623274(v80, v27, v184);

      *(v81 + 4) = v83;
      _os_log_impl(&dword_223620000, v78, v79, "MUX: Could not find any TRP context for userLevelTRPCandidateId: %s.. ignoring MUXNLTRPCandidateMessage", v81, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v82);
      MEMORY[0x223DE8A80](v82, -1, -1);
      MEMORY[0x223DE8A80](v81, -1, -1);
    }

    else
    {
    }

LABEL_40:

    return;
  }

  v164[1] = v43;
  v170 = v44;
  v164[2] = v29;
  v164[0] = v37;
  v166 = v27;
  v167 = v3;
  v165 = v2;
  v168 = v42;

  v45 = sub_223728618();
  v46 = v45;
  v47 = v45 + 64;
  v48 = 1 << *(v45 + 32);
  v49 = -1;
  if (v48 < 64)
  {
    v49 = ~(-1 << v48);
  }

  v50 = v49 & *(v45 + 64);
  v51 = (v48 + 63) >> 6;

  v53 = 0;
  v54 = MEMORY[0x277D84F90];
  v171 = v52;
  while (v50)
  {
LABEL_18:
    v56 = *(*(v46 + 56) + 8 * (__clz(__rbit64(v50)) | (v53 << 6)));
    if (v56)
    {

      v57 = v56;
      v58 = sub_22372A1E8();
    }

    else
    {
      v58 = MEMORY[0x277D84F90];
    }

    v59 = *(v58 + 16);
    v60 = v54[2];
    v61 = v60 + v59;
    if (__OFADD__(v60, v59))
    {
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
      return;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v61 > v54[3] >> 1)
    {
      if (v60 <= v61)
      {
        v63 = v60 + v59;
      }

      else
      {
        v63 = v60;
      }

      v54 = sub_2237111F8(isUniquelyReferenced_nonNull_native, v63, 1, v54);
    }

    v50 &= v50 - 1;
    if (*(v58 + 16))
    {
      v64 = (v54[3] >> 1) - v54[2];
      sub_223727618();
      if (v64 < v59)
      {
        goto LABEL_77;
      }

      swift_arrayInitWithCopy();

      v46 = v171;
      if (v59)
      {
        v65 = v54[2];
        v66 = __OFADD__(v65, v59);
        v67 = v65 + v59;
        if (v66)
        {
          goto LABEL_78;
        }

        v54[2] = v67;
      }
    }

    else
    {

      v46 = v171;
      if (v59)
      {
        goto LABEL_76;
      }
    }
  }

  while (1)
  {
    v55 = v53 + 1;
    if (__OFADD__(v53, 1))
    {
      __break(1u);
      goto LABEL_74;
    }

    if (v55 >= v51)
    {
      break;
    }

    v50 = *(v47 + 8 * v55);
    ++v53;
    if (v50)
    {
      v53 = v55;
      goto LABEL_18;
    }
  }

  *(v170 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlUserParses) = v54;

  v68 = sub_223728618();
  sub_2236F5150(v68);
  v70 = v69;
  v72 = v71;

  if (v70 && (, v72))
  {
    v73 = v177;
    sub_22372A1F8();

    v75 = v178;
    v74 = v179;
    v76 = v73;
    v77 = v180;
    (*(v179 + 4))(v178, v76, v180);
  }

  else
  {
    v75 = v178;
    v74 = v179;
    v77 = v180;
    (*(v179 + 13))(v178, *MEMORY[0x277D5DBB0], v180);
  }

  v84 = v165;
  v85 = v167;
  (*(v74 + 7))(v75, 0, 1, v77);
  v86 = OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlResponseStatusCode;
  v87 = v170;
  swift_beginAccess();
  sub_2236719F4(v75, v87 + v86, &qword_27D08EEB0, qword_22372FF80);
  swift_endAccess();
  v88 = v181;
  sub_223727748();
  v89 = sub_223727758();
  (*(*(v89 - 8) + 56))(v88, 0, 1, v89);
  v90 = OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlLanguageVariantResult;
  swift_beginAccess();
  sub_2236719F4(v88, v87 + v90, &qword_27D08F920, qword_223730410);
  swift_endAccess();
  *(v87 + OBJC_IVAR____TtC24RequestDispatcherBridges22MUXTRPCandidateContext_tcuMappedNLResponse) = sub_223728618();

  *(v87 + OBJC_IVAR____TtC24RequestDispatcherBridges22MUXTRPCandidateContext_tcuMappedNLRepetitions) = sub_223728628();

  v91 = sub_223679638(v87);
  if (v84)
  {

LABEL_44:

    return;
  }

  if (!v91)
  {
    goto LABEL_52;
  }

  v92 = v91;
  v93 = swift_dynamicCastClass();
  if (!v93)
  {

LABEL_52:

    v118 = v166;

    v78 = sub_22372AC88();
    v119 = sub_22372B278();

    if (os_log_type_enabled(v78, v119))
    {
      v120 = swift_slowAlloc();
      v121 = swift_slowAlloc();
      v184[0] = v121;
      *v120 = 136315138;
      v122 = sub_223623274(v169, v118, v184);

      *(v120 + 4) = v122;
      _os_log_impl(&dword_223620000, v78, v119, "MUX: Post NL User Selection failed for userLevelTRPCandidateId: %s.", v120, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v121);
      MEMORY[0x223DE8A80](v121, -1, -1);
      MEMORY[0x223DE8A80](v120, -1, -1);
    }

    else
    {
    }

    goto LABEL_40;
  }

  v94 = v93;
  v95 = v174;
  v96 = v182;
  sub_223728D08();
  v97 = OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedUserAttribute;
  swift_beginAccess();
  v180 = v94;
  v98 = v94 + v97;
  v99 = v173;
  sub_22368509C(v98, v173);
  v100 = v175;
  v101 = v176;
  v102 = v172;
  (*(v176 + 32))(v172, v99, v175);
  v181 = v92;

  LOBYTE(v99) = sub_22372A538();
  v103 = *(v101 + 8);
  v103(v102, v100);
  v176 = v101 + 8;
  v179 = v103;
  v103(v95, v100);
  if (v99)
  {

    v104 = v166;

    v105 = v96;
    v106 = sub_22372AC88();
    v107 = sub_22372B288();

    if (os_log_type_enabled(v106, v107))
    {
      v108 = swift_slowAlloc();
      v182 = swift_slowAlloc();
      v183[0] = v182;
      *v108 = 136315394;
      v109 = v174;
      sub_223728D08();
      sub_223685890(&qword_28132B4E8, MEMORY[0x277D5D298], MEMORY[0x277D5D2C0]);
      LODWORD(v178) = v107;
      v110 = v175;
      v111 = sub_22372B6B8();
      v113 = v112;
      v179(v109, v110);
      v114 = sub_223623274(v111, v113, v183);

      *(v108 + 4) = v114;
      *(v108 + 12) = 2080;
      v115 = sub_223623274(v169, v104, v183);

      *(v108 + 14) = v115;
      _os_log_impl(&dword_223620000, v106, v178, "MUX: Since postNL user selected user is the same as the current user: %s, posting NLTRPCandidateMessage for userLevelTRPCandidateId: %s and proceeding to commit.", v108, 0x16u);
      v116 = v182;
      swift_arrayDestroy();
      MEMORY[0x223DE8A80](v116, -1, -1);
      v117 = v108;
      v85 = v167;
      MEMORY[0x223DE8A80](v117, -1, -1);
    }

    else
    {
    }

    v137 = sub_223729D38();
    v138 = v180;
    sub_22367B538(v180, v137);

    if (*(v85 + qword_28132A190))
    {
      v139 = v164[0];
      v140 = *(v138 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_topLevelCandidateId);
      v141 = *(v138 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_topLevelCandidateId + 8);

      sub_2236B477C(v140, v141, v138);

      v142 = *(*(v85 + v139) + 96);
      if (v142)
      {
        v143 = v142;
        sub_2236CD958(v143);
      }
    }

    else
    {

      sub_22367BB18(v138);
    }

    return;
  }

  v123 = v166;

  v124 = v96;
  v125 = sub_22372AC88();
  v126 = sub_22372B288();

  if (os_log_type_enabled(v125, v126))
  {
    v127 = swift_slowAlloc();
    v182 = swift_slowAlloc();
    v183[0] = v182;
    *v127 = 136315394;
    v128 = v126;
    v129 = v174;
    sub_223728D08();
    sub_223685890(&qword_28132B4E8, MEMORY[0x277D5D298], MEMORY[0x277D5D2C0]);
    v130 = v175;
    v131 = sub_22372B6B8();
    v133 = v132;
    v179(v129, v130);
    v134 = sub_223623274(v131, v133, v183);

    *(v127 + 4) = v134;
    *(v127 + 12) = 2080;
    v135 = sub_223623274(v169, v123, v183);

    *(v127 + 14) = v135;
    _os_log_impl(&dword_223620000, v125, v128, "MUX: Since postNL user selected user is NOT the same as the current user: %s, will not post NLTRPCandidateMessage for userLevelTRPCandidateId: %s.", v127, 0x16u);
    v136 = v182;
    swift_arrayDestroy();
    v85 = v167;
    MEMORY[0x223DE8A80](v136, -1, -1);
    MEMORY[0x223DE8A80](v127, -1, -1);
  }

  else
  {
  }

  v144 = v164[0];
  v145 = v170;
  v146 = *(v170 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_topLevelCandidateId);
  v147 = *(v170 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_topLevelCandidateId + 8);

  sub_2236B477C(v146, v147, v145);

  v148 = *(v85 + v144);
  v149 = *(v148 + 40);
  if (!v149 || ((v150 = v180, *(v148 + 32) != *(v180 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_topLevelCandidateId)) || v149 != *(v180 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_topLevelCandidateId + 8)) && (sub_22372B6E8() & 1) == 0)
  {
LABEL_74:

    goto LABEL_44;
  }

  v151 = sub_22372AC88();
  v152 = sub_22372B288();

  if (os_log_type_enabled(v151, v152))
  {
    v153 = swift_slowAlloc();
    v154 = swift_slowAlloc();
    v186 = v154;
    *v153 = 136315138;
    v155 = *(v85 + v164[0]);
    v156 = *(v155 + 40);
    v183[0] = *(v155 + 32);
    v183[1] = v156;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F970, &unk_223730550);
    v157 = sub_22372B038();
    v159 = sub_223623274(v157, v158, &v186);

    *(v153 + 4) = v159;
    v85 = v167;
    _os_log_impl(&dword_223620000, v151, v152, "MUX: Top-level trpId=%s has been selected, but selected user for that top-level TRP has changed.", v153, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v154);
    MEMORY[0x223DE8A80](v154, -1, -1);
    v160 = v153;
    v150 = v180;
    MEMORY[0x223DE8A80](v160, -1, -1);
  }

  v162 = *(v150 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId);
  v161 = *(v150 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId + 8);

  v163 = (v85 + qword_28132B868);
  *v163 = v162;
  v163[1] = v161;
}

uint64_t sub_223679638(uint64_t a1)
{
  v2 = v1;
  v270 = sub_22372AEE8();
  v274 = *(v270 - 8);
  v5 = MEMORY[0x28223BE20](v270, v4);
  v7 = &v239 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v239 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EE88, &qword_223730060);
  v13 = MEMORY[0x28223BE20](v11 - 8, v12);
  v269 = &v239 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v18 = &v239 - v17;
  MEMORY[0x28223BE20](v16, v19);
  v265 = &v239 - v20;
  v273 = sub_223729F08();
  v276 = *(v273 - 8);
  MEMORY[0x28223BE20](v273, v21);
  v266 = &v239 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v271 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F740, &unk_223731DC0);
  MEMORY[0x28223BE20](v271, v23);
  v272 = &v239 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08E9D0, &qword_22372D1E0);
  v27 = MEMORY[0x28223BE20](v25 - 8, v26);
  v268 = &v239 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v29);
  v275 = &v239 - v30;
  v31 = sub_22372A548();
  v280 = *(v31 - 8);
  v281 = v31;
  v33 = MEMORY[0x28223BE20](v31, v32);
  v264 = &v239 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33, v35);
  v278 = &v239 - v36;
  v285 = sub_22372A298();
  v283 = *(v285 - 1);
  MEMORY[0x28223BE20](v285, v37);
  v284 = (&v239 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F6F0, &qword_223732CD0);
  MEMORY[0x28223BE20](v39 - 8, v40);
  v292 = &v239 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E990, &qword_22372FCF0);
  v44 = MEMORY[0x28223BE20](v42 - 8, v43);
  v277 = &v239 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44, v46);
  v48 = &v239 - v47;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EE90, &unk_22372FF60);
  MEMORY[0x28223BE20](v49 - 8, v50);
  v282 = &v239 - v51;
  v52 = type metadata accessor for MUXUserAttributes(0);
  v54 = MEMORY[0x28223BE20](v52, v53);
  v56 = MEMORY[0x28223BE20](v54, v55);
  v58 = MEMORY[0x28223BE20](v56, v57);
  v63 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlUserParses);
  if (!v63)
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v84 = sub_22372AC98();
    __swift_project_value_buffer(v84, qword_28132B680);

    v85 = sub_22372AC88();
    v86 = sub_22372B278();

    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v289[0] = v88;
      *v87 = 136315138;
      v89 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId);
      v90 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId + 8);

      v91 = sub_223623274(v89, v90, v289);

      *(v87 + 4) = v91;
      _os_log_impl(&dword_223620000, v85, v86, "MUX: Should not be calling doPostNLUserSelection without nlParses for candidateId: %s, cannot proceed with post NL user selection.", v87, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v88);
      MEMORY[0x223DE8A80](v88, -1, -1);
      MEMORY[0x223DE8A80](v87, -1, -1);
    }

    return 0;
  }

  v245 = v7;
  v64 = *(v2 + qword_28132A1E0);
  if (!v64)
  {
    type metadata accessor for RequestControllerBridgeInternalErrors(0);
    sub_223685890(qword_28132A9A0, type metadata accessor for RequestControllerBridgeInternalErrors, byte_223731918);
    swift_allocError();
    sub_22372A778();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return v63;
  }

  v243 = v61;
  v240 = v60;
  v241 = v10;
  v239 = v18;
  v267 = &v239 - v59;
  v261 = v62;
  v262 = v58;
  sub_223623934(v2 + qword_28132A1F0, v289);
  v263 = v290;
  v256 = v291;
  v260 = __swift_project_boxed_opaque_existential_1(v289, v290);
  v244 = a1;
  v65 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId + 8);
  v258 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId);
  v255 = v65;
  v66 = qword_28132A208;
  v257 = *(*(v2 + qword_28132A208) + 72);
  v259 = v257;

  v67 = v64;

  v254 = sub_223727F08();
  v68 = qword_28132B8A8;
  swift_beginAccess();
  v242 = v68;
  v279 = v48;
  sub_223634890(v2 + v68, v48, &unk_27D08E990, &qword_22372FCF0);
  v252 = qword_28132A1A0;
  v69 = *(v2 + qword_28132A200 + 8);
  v253 = *(v2 + qword_28132A200);
  v251 = v69;
  v70 = v2;
  v71 = *(v2 + qword_28132A1E8);
  v72 = OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_requestIdToMuxRequestContext;
  swift_beginAccess();
  v249 = *(v71 + v72);
  v73 = qword_28132B858;
  swift_beginAccess();
  sub_223634890(v70 + v73, v292, &unk_27D08F6F0, &qword_223732CD0);

  v247 = v67;
  LOBYTE(v67) = sub_223727EF8();
  swift_beginAccess();
  v74 = v283;
  v75 = v284;
  (*(v283 + 16))();
  v246 = v66;
  v76 = *(*(v70 + v66) + 80);
  v77 = v256;
  v248 = *(v256 + 16);
  v250 = v76;
  v238 = v77;
  v237 = v263;
  v263 = v70;
  v78 = v282;
  v248(v258, v255, v63, v257, v254, v279, v70 + v252, v253, v251, v249, v292, v67 & 1, v75, v76, v237, v238);

  (*(v74 + 8))(v284, v285);
  sub_223626478(v292, &unk_27D08F6F0, &qword_223732CD0);
  sub_223626478(v279, &unk_27D08E990, &qword_22372FCF0);
  v79 = v262;
  if ((*(v261 + 48))(v78, 1) == 1)
  {
    sub_223626478(v78, &qword_27D08EE90, &unk_22372FF60);
    __swift_destroy_boxed_opaque_existential_1Tm(v289);
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v80 = sub_22372AC98();
    __swift_project_value_buffer(v80, qword_28132B680);
    v81 = sub_22372AC88();
    v82 = sub_22372B278();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      *v83 = 0;
      _os_log_impl(&dword_223620000, v81, v82, "MUX: selectPostNLUser: Something went wrong during post NL user selection. Was unable to select a user.", v83, 2u);
      MEMORY[0x223DE8A80](v83, -1, -1);
    }

    return 0;
  }

  sub_2236852F0(v78, v267);
  __swift_destroy_boxed_opaque_existential_1Tm(v289);
  v92 = *(v263 + v246);
  v94 = *(v244 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_topLevelCandidateId);
  v93 = *(v244 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_topLevelCandidateId + 8);
  v285 = (v244 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_topLevelCandidateId);
  swift_beginAccess();
  v95 = *(v92 + 56);
  if (*(v95 + 16))
  {

    v96 = sub_2236261A0(v94, v93);
    v98 = v97;

    v99 = v286;
    if (v98)
    {
      v100 = *(*(v95 + 56) + 8 * v96);

      MEMORY[0x28223BE20](v101, v102);
      v103 = v267;
      v237 = v267;
      v63 = sub_223676C6C(sub_223685A48, &v236, v100);

      if (v63)
      {
        v286 = v99;
        v104 = *(v103 + v79[6]);

        sub_2236B138C(v104);
        v105 = *(v103 + v79[5]);

        sub_2236B1508(v105);

        LODWORD(v105) = *(v103 + v79[8]);

        sub_2236B1684(v105);

        LOBYTE(v105) = *(v103 + v79[7]);

        sub_2236B1800(v105);

        LOBYTE(v105) = *(v103 + v79[9]);

        sub_2236B197C(v105);

        LOBYTE(v105) = *(v103 + v79[10]);

        sub_2236B1AF8(v105);

        goto LABEL_34;
      }
    }

    else
    {
    }
  }

  else
  {
    v99 = v286;
  }

  v106 = v281;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v107 = sub_22372AC98();
  v108 = __swift_project_value_buffer(v107, qword_28132B680);
  v109 = v267;
  v110 = v243;
  sub_22368509C(v267, v243);
  v292 = v108;
  v111 = sub_22372AC88();
  v112 = sub_22372B278();
  if (os_log_type_enabled(v111, v112))
  {
    v113 = swift_slowAlloc();
    v114 = swift_slowAlloc();
    v288[0] = v114;
    *v113 = 136315138;
    sub_223685890(&qword_28132B4E8, MEMORY[0x277D5D298], MEMORY[0x277D5D2C0]);
    v115 = sub_22372B6B8();
    v116 = v99;
    v118 = v117;
    sub_223685354(v110);
    v119 = sub_223623274(v115, v118, v288);
    v99 = v116;
    v106 = v281;

    *(v113 + 4) = v119;
    _os_log_impl(&dword_223620000, v111, v112, "MUX: selectPostNLUser: Could not find CandidateContext for selectedUserId: %s. Trying to use unknown user's candidate.", v113, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v114);
    v120 = v114;
    v109 = v267;
    MEMORY[0x223DE8A80](v120, -1, -1);
    MEMORY[0x223DE8A80](v113, -1, -1);
  }

  else
  {

    sub_223685354(v110);
  }

  v121 = v277;
  v122 = v246;
  v123 = v263;
  sub_223634890(v263 + v242, v277, &unk_27D08E990, &qword_22372FCF0);
  v124 = v280;
  if ((*(v280 + 48))(v121, 1, v106) == 1)
  {
    sub_223626478(v121, &unk_27D08E990, &qword_22372FCF0);
    v125 = sub_22372AC88();
    v126 = sub_22372B278();
    if (os_log_type_enabled(v125, v126))
    {
      v127 = swift_slowAlloc();
      *v127 = 0;
      _os_log_impl(&dword_223620000, v125, v126, "MUX: selectPostNLUser: sharedUserId of unknown user is nil. Will not post NL output. Request will time out.", v127, 2u);
      MEMORY[0x223DE8A80](v127, -1, -1);
    }

    v128 = v109;
LABEL_46:
    sub_223685354(v128);
    return 0;
  }

  (*(v124 + 32))(v278, v121, v106);
  v129 = *(v123 + v122);
  v131 = *v285;
  v130 = v285[1];
  swift_beginAccess();
  v132 = *(v129 + 56);
  if (!*(v132 + 16))
  {
    v152 = v109;
LABEL_42:
    v139 = v278;
LABEL_43:
    v154 = sub_22372AC88();
    v155 = sub_22372B278();
    if (os_log_type_enabled(v154, v155))
    {
      v156 = swift_slowAlloc();
      *v156 = 0;
      _os_log_impl(&dword_223620000, v154, v155, "MUX: selectPostNLUser: Could not find context for unknown user. Will not post NL output. Request will time out.", v156, 2u);
      MEMORY[0x223DE8A80](v156, -1, -1);
    }

    (*(v280 + 8))(v139, v281);
    v128 = v152;
    goto LABEL_46;
  }

  v133 = sub_2236261A0(v131, v130);
  v135 = v134;

  if ((v135 & 1) == 0)
  {

    v152 = v267;
    goto LABEL_42;
  }

  v136 = *(*(v132 + 56) + 8 * v133);

  MEMORY[0x28223BE20](v137, v138);
  v139 = v278;
  v237 = v278;
  v63 = sub_223676C6C(sub_2236853B0, &v236, v136);

  if (!v63)
  {
    v152 = v267;
    goto LABEL_43;
  }

  v286 = v99;

  sub_2236B138C(-1);

  sub_2236B1508(0);

  v140 = sub_22372A418();
  sub_2236B1684(v140);

  sub_2236B1800(1);

  sub_2236B197C(0);

  sub_2236B1AF8(0);

  (*(v280 + 8))(v139, v106);
LABEL_34:
  v141 = qword_28132B888;
  v142 = v263;
  swift_beginAccess();
  v144 = v275;
  v143 = v276;
  v145 = v273;
  (*(v276 + 104))(v275, *MEMORY[0x277D5CF40], v273);
  (*(v143 + 56))(v144, 0, 1, v145);
  v146 = v142 + v141;
  v147 = *(v271 + 48);
  v148 = v272;
  sub_223634890(v146, v272, &qword_27D08E9D0, &qword_22372D1E0);
  sub_223634890(v144, v148 + v147, &qword_27D08E9D0, &qword_22372D1E0);
  v149 = *(v143 + 48);
  if (v149(v148, 1, v145) == 1)
  {
    sub_223626478(v144, &qword_27D08E9D0, &qword_22372D1E0);
    v150 = v149(v148 + v147, 1, v145);
    v151 = v286;
    if (v150 == 1)
    {
      sub_223626478(v148, &qword_27D08E9D0, &qword_22372D1E0);
      goto LABEL_50;
    }

    goto LABEL_40;
  }

  v153 = v268;
  sub_223634890(v148, v268, &qword_27D08E9D0, &qword_22372D1E0);
  if (v149(v148 + v147, 1, v145) == 1)
  {
    sub_223626478(v275, &qword_27D08E9D0, &qword_22372D1E0);
    (*(v276 + 8))(v153, v145);
    v151 = v286;
LABEL_40:
    sub_223626478(v148, &qword_27D08F740, &unk_223731DC0);
LABEL_59:
    v203 = v267;
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v204 = sub_22372AC98();
    v205 = __swift_project_value_buffer(v204, qword_28132B680);
    v206 = sub_22372AC88();
    v207 = sub_22372B268();
    if (os_log_type_enabled(v206, v207))
    {
      v208 = swift_slowAlloc();
      v292 = v205;
      v209 = v208;
      v210 = swift_slowAlloc();
      v287[0] = v210;
      *v209 = 136315138;
      v211 = *(v63 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId);
      v212 = *(v63 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId + 8);

      v213 = v151;
      v214 = sub_223623274(v211, v212, v287);
      v203 = v267;

      *(v209 + 4) = v214;
      v151 = v213;
      _os_log_impl(&dword_223620000, v206, v207, "MUX: Post NL candidate already has passed all re-trigger checks, there is no need to re-trigger NL for this candidate ID: %s.", v209, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v210);
      MEMORY[0x223DE8A80](v210, -1, -1);
      MEMORY[0x223DE8A80](v209, -1, -1);
    }

    v165 = v241;
    v215 = OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlRerunStartTime;
    swift_beginAccess();
    v216 = v63 + v215;
    v217 = v269;
    sub_223634890(v216, v269, &qword_27D08EE88, &qword_223730060);
    v218 = v274;
    v219 = v270;
    if ((*(v274 + 48))(v217, 1, v270) == 1)
    {
      sub_223685354(v203);

      sub_223626478(v217, &qword_27D08EE88, &qword_223730060);
      return v63;
    }

    (*(v218 + 32))(v165, v217, v219);
    v220 = v245;
    sub_22372AED8();
    sub_223685890(&qword_27D08EE98, MEMORY[0x277D851E0], MEMORY[0x277D851E8]);
    if (sub_22372AFB8())
    {
      v221 = sub_22372AC88();
      v222 = sub_22372B278();
      if (os_log_type_enabled(v221, v222))
      {
        v223 = swift_slowAlloc();
        *v223 = 0;
        _os_log_impl(&dword_223620000, v221, v222, "MUX: Detected inconsistency in observed timestamps. Please alert Siri Orchestration | Client.", v223, 2u);
        MEMORY[0x223DE8A80](v223, -1, -1);
      }

      v224 = *(v274 + 8);
      v224(v245, v219);
      v224(v241, v219);
      sub_223685354(v267);
      return v63;
    }

    v292 = sub_22372AEC8();
    v225 = sub_22372AEC8();

    v226 = *(v218 + 8);
    v226(v220, v219);
    v226(v165, v219);
    sub_223685354(v267);
    if (v292 >= v225)
    {
      v227 = v63 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlRerunTimeInMs;
      *v227 = (v292 - v225) / 0xF4240;
      *(v227 + 8) = 0;
      goto LABEL_72;
    }

    __break(1u);
    goto LABEL_83;
  }

  v158 = v276;
  v159 = v266;
  (*(v276 + 32))(v266, v148 + v147, v145);
  sub_223685890(&unk_28132B540, MEMORY[0x277D5CF58], MEMORY[0x277D5CF60]);
  LODWORD(v292) = sub_22372AFC8();
  v160 = v153;
  v161 = *(v158 + 8);
  v161(v159, v145);
  sub_223626478(v275, &qword_27D08E9D0, &qword_22372D1E0);
  v161(v160, v145);
  sub_223626478(v148, &qword_27D08E9D0, &qword_22372D1E0);
  v151 = v286;
  if ((v292 & 1) == 0)
  {
    goto LABEL_59;
  }

LABEL_50:

  v163 = sub_2236853D0(v162);

  if ((v163 & 1) == 0)
  {
    goto LABEL_59;
  }

  type metadata accessor for MUXSpeechTRPCandidateContext(0);
  v164 = swift_dynamicCastClass();
  if (v164)
  {
    v165 = v164;
    v166 = qword_281328E58;

    if (v166 == -1)
    {
LABEL_53:
      v167 = sub_22372AC98();
      v168 = __swift_project_value_buffer(v167, qword_28132B680);
      v169 = sub_22372AC88();
      v170 = sub_22372B288();
      if (os_log_type_enabled(v169, v170))
      {
        v171 = swift_slowAlloc();
        v285 = swift_slowAlloc();
        v286 = v151;
        v287[0] = v285;
        *v171 = 136315394;
        v284 = v169;
        v173 = *(v63 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId);
        v172 = *(v63 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId + 8);

        v174 = sub_223623274(v173, v172, v287);
        v292 = v168;
        v175 = v174;

        *(v171 + 4) = v175;
        *(v171 + 12) = 2080;
        v176 = OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedUserAttribute;
        swift_beginAccess();
        v177 = v240;
        sub_22368509C(v63 + v176, v240);
        LODWORD(v283) = v170;
        v178 = v280;
        v179 = v281;
        v180 = v264;
        (*(v280 + 32))(v264, v177, v281);
        sub_223685890(&qword_28132B4E8, MEMORY[0x277D5D298], MEMORY[0x277D5D2C0]);
        v181 = sub_22372B6B8();
        v183 = v182;
        (*(v178 + 8))(v180, v179);
        v184 = sub_223623274(v181, v183, v287);

        *(v171 + 14) = v184;
        v169 = v284;
        _os_log_impl(&dword_223620000, v284, v283, "MUX: After examining post NL user selection results, it is necessary to retrigger NL for userLevelCandidateId: %s of user id: %s by posting TRPCandidateForPlannerMessage.", v171, 0x16u);
        v185 = v285;
        swift_arrayDestroy();
        MEMORY[0x223DE8A80](v185, -1, -1);
        MEMORY[0x223DE8A80](v171, -1, -1);
      }

      v186 = v267;
      if (*(v263 + qword_28132B8C0))
      {
        v292 = sub_22372A708();
        v188 = v187;
        v189 = OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedUserAttribute;
        swift_beginAccess();
        v190 = v165 + v189;
        v191 = v240;
        sub_22368509C(v190, v240);
        v192 = v280;
        v193 = v264;
        (*(v280 + 32))(v264, v191, v281);
        v194 = *(v165 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId);
        v195 = *(v165 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId + 8);
        v196 = *(v165 + OBJC_IVAR____TtC24RequestDispatcherBridges28MUXSpeechTRPCandidateContext_trpMessage);

        sub_223682D1C(v292, v188, v193, v194, v195, v196);

        (*(v192 + 8))(v193, v281);

        goto LABEL_57;
      }

      v233 = sub_22372AC88();
      v234 = sub_22372B278();
      if (os_log_type_enabled(v233, v234))
      {
        v235 = swift_slowAlloc();
        *v235 = 0;
        _os_log_impl(&dword_223620000, v233, v234, "MUX: Cannot retrigger as child request was not found. Request will time out.", v235, 2u);
        MEMORY[0x223DE8A80](v235, -1, -1);
      }

      else
      {
      }

      sub_223685354(v186);

      return 0;
    }

LABEL_83:
    swift_once();
    goto LABEL_53;
  }

LABEL_57:
  v197 = OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlRerunStartTime;
  swift_beginAccess();
  v198 = v265;
  sub_223634890(v63 + v197, v265, &qword_27D08EE88, &qword_223730060);
  v199 = v274;
  v200 = v270;
  v201 = (*(v274 + 48))(v198, 1, v270);
  sub_223626478(v198, &qword_27D08EE88, &qword_223730060);
  if (v201 == 1)
  {

    v202 = v239;
    sub_22372AED8();

    sub_223685354(v267);
    (*(v199 + 56))(v202, 0, 1, v200);
    swift_beginAccess();
    sub_2236719F4(v202, v63 + v197, &qword_27D08EE88, &qword_223730060);
    swift_endAccess();
LABEL_72:

    return v63;
  }

  v228 = v267;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v229 = sub_22372AC98();
  __swift_project_value_buffer(v229, qword_28132B680);
  v230 = sub_22372AC88();
  v231 = sub_22372B278();
  if (os_log_type_enabled(v230, v231))
  {
    v232 = swift_slowAlloc();
    *v232 = 0;
    _os_log_impl(&dword_223620000, v230, v231, "MUX: Detected a strange state where it looks like NL was re-triggered twice for the same candidate.", v232, 2u);
    MEMORY[0x223DE8A80](v232, -1, -1);
  }

  sub_223685354(v228);
  return v63;
}

void sub_22367B538(uint64_t a1, uint64_t a2)
{
  if (*(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges22MUXTRPCandidateContext_tcuMappedNLResponse) && *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges22MUXTRPCandidateContext_tcuMappedNLRepetitions))
  {
    MEMORY[0x28223BE20](a1, a2);
    v3 = objc_allocWithZone(sub_223728388());

    v4 = sub_2237282E8();

    if (v4)
    {
      sub_2236B1FA4(2u);
      *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_candidateState) = 2;
      if (qword_281328E58 != -1)
      {
        swift_once();
      }

      v5 = sub_22372AC98();
      __swift_project_value_buffer(v5, qword_28132B680);
      v6 = v4;

      v7 = sub_22372AC88();
      v8 = sub_22372B268();

      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v38[0] = v11;
        *v9 = 138412546;
        *(v9 + 4) = v6;
        *v10 = v4;
        *(v9 + 12) = 2080;
        v12 = a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId;
        v13 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId);
        v14 = *(v12 + 8);
        v15 = v6;

        v16 = sub_223623274(v13, v14, v38);

        *(v9 + 14) = v16;
        _os_log_impl(&dword_223620000, v7, v8, "MUX: Posting NLTRPCandidateMessage: %@ for trpID: %s.", v9, 0x16u);
        sub_223626478(v10, &unk_27D08F250, &unk_22372D1D0);
        MEMORY[0x223DE8A80](v10, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v11);
        MEMORY[0x223DE8A80](v11, -1, -1);
        MEMORY[0x223DE8A80](v9, -1, -1);
      }

      sub_22372A758();
      __swift_project_boxed_opaque_existential_1(v38, v38[3]);
      sub_223729D88();

      __swift_destroy_boxed_opaque_existential_1Tm(v38);
    }

    else
    {
      if (qword_281328E58 != -1)
      {
        swift_once();
      }

      v25 = sub_22372AC98();
      __swift_project_value_buffer(v25, qword_28132B680);

      v26 = sub_22372AC88();
      v27 = sub_22372B278();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v38[0] = v29;
        *v28 = 136315394;
        v30 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_topLevelCandidateId);
        v31 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_topLevelCandidateId + 8);

        v32 = sub_223623274(v30, v31, v38);

        *(v28 + 4) = v32;
        *(v28 + 12) = 2080;
        v33 = a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId;
        v34 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId);
        v35 = *(v33 + 8);

        v36 = sub_223623274(v34, v35, v38);

        *(v28 + 14) = v36;
        _os_log_impl(&dword_223620000, v26, v27, "MUX: NLTRPCandidateMessage could not be created for topLevelCandidateId: %s and userLevelCandidateId: %s.", v28, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DE8A80](v29, -1, -1);
        MEMORY[0x223DE8A80](v28, -1, -1);
      }
    }
  }

  else
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v17 = sub_22372AC98();
    __swift_project_value_buffer(v17, qword_28132B680);

    v37 = sub_22372AC88();
    v18 = sub_22372B288();

    if (os_log_type_enabled(v37, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v38[0] = v20;
      *v19 = 136315138;
      v21 = a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId;
      v22 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId);
      v23 = *(v21 + 8);

      v24 = sub_223623274(v22, v23, v38);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_223620000, v37, v18, "MUX: tcuMappedNLResponse/tcuMappedNLRepetitions not available for trpId: %s, cannot proceed with posting NLTRPCandidateMessage.", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      MEMORY[0x223DE8A80](v20, -1, -1);
      MEMORY[0x223DE8A80](v19, -1, -1);
    }

    else
    {
    }
  }
}

void sub_22367BB18(uint64_t a1)
{
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v3 = sub_22372AC98();
  __swift_project_value_buffer(v3, qword_28132B680);

  v4 = sub_22372AC88();
  v5 = sub_22372B268();

  v60 = v1;
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v61 = v7;
    *v6 = 136315138;
    v8 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId);
    v9 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId + 8);

    v10 = sub_223623274(v8, v9, &v61);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_223620000, v4, v5, "MUX: Attempting commit logic for candidateId: %s.", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x223DE8A80](v7, -1, -1);
    MEMORY[0x223DE8A80](v6, -1, -1);
  }

  v11 = OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_candidateState;
  if (*(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_candidateState) > 2u)
  {

    goto LABEL_17;
  }

  v12 = sub_22372B6E8();

  if (v12)
  {
LABEL_17:

    v18 = sub_22372AC88();
    v19 = sub_22372B268();

    if (!os_log_type_enabled(v18, v19))
    {
      goto LABEL_21;
    }

    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v61 = v21;
    *v20 = 136315138;
    v22 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId);
    v23 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId + 8);

    v24 = sub_223623274(v22, v23, &v61);

    *(v20 + 4) = v24;
    v25 = "MUX: Given Candidate ID : %s has already been finalized, no further action needed.";
    goto LABEL_19;
  }

  v13 = *(v59 + qword_28132A208);
  v14 = *(v13 + 40);
  if (!v14)
  {

    v18 = sub_22372AC88();
    v19 = sub_22372B268();

    if (!os_log_type_enabled(v18, v19))
    {
      goto LABEL_21;
    }

    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v61 = v21;
    *v20 = 136315138;
    v27 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId);
    v28 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId + 8);

    v29 = sub_223623274(v27, v28, &v61);

    *(v20 + 4) = v29;
    v25 = "MUX: Cannot commit for userLevelCandidateId  %s because endpoint signal does not seem to have arrived.";
    goto LABEL_19;
  }

  v15 = (a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_topLevelCandidateId);
  if (*(v13 + 32) != *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_topLevelCandidateId) || v14 != *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_topLevelCandidateId + 8))
  {
    v58 = *(v13 + 32);
    if ((sub_22372B6E8() & 1) == 0)
    {

      v18 = sub_22372AC88();
      v33 = sub_22372B288();

      if (!os_log_type_enabled(v18, v33))
      {

        goto LABEL_21;
      }

      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v61 = v35;
      *v34 = 136315650;
      v36 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId);
      v37 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId + 8);

      v38 = sub_223623274(v36, v37, &v61);

      *(v34 + 4) = v38;
      *(v34 + 12) = 2080;
      v40 = *v15;
      v39 = v15[1];

      v41 = sub_223623274(v40, v39, &v61);

      *(v34 + 14) = v41;
      *(v34 + 22) = 2080;
      v42 = sub_223623274(v58, v14, &v61);

      *(v34 + 24) = v42;
      _os_log_impl(&dword_223620000, v18, v33, "MUX: Cannot commit for userLevelCandidateId  %s because given Candidate's topLevelCandidateId: %s and selectedTopLevelCandidateId :%s do not match.", v34, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x223DE8A80](v35, -1, -1);
      v26 = v34;
      goto LABEL_20;
    }
  }

  if (!*(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlUserParses))
  {

    v18 = sub_22372AC88();
    v19 = sub_22372B288();

    if (!os_log_type_enabled(v18, v19))
    {
      goto LABEL_21;
    }

    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v61 = v21;
    *v20 = 136315138;
    v30 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId);
    v31 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId + 8);

    v32 = sub_223623274(v30, v31, &v61);

    *(v20 + 4) = v32;
    v25 = "MUX: nlUserParses not available for candidateId: %s, not committing.";
LABEL_19:
    _os_log_impl(&dword_223620000, v18, v19, v25, v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    MEMORY[0x223DE8A80](v21, -1, -1);
    v26 = v20;
LABEL_20:
    MEMORY[0x223DE8A80](v26, -1, -1);
    goto LABEL_21;
  }

  v17 = *(a1 + v11);
  if (v17 > 1)
  {
    v43 = v60;
    if (v17 == 2)
    {

      goto LABEL_33;
    }
  }

  else
  {
    v43 = v60;
  }

  v44 = sub_22372B6E8();

  if ((v44 & 1) == 0)
  {

    v18 = sub_22372AC88();
    v48 = sub_22372B288();

    if (os_log_type_enabled(v18, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v61 = v50;
      *v49 = 136315138;
      v51 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId);
      v52 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId + 8);

      v53 = sub_223623274(v51, v52, &v61);

      *(v49 + 4) = v53;
      v54 = "MUX: NL Results were not processed for candidateId: %s, not committing. This is unusual.";
LABEL_39:
      _os_log_impl(&dword_223620000, v18, v48, v54, v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v50);
      MEMORY[0x223DE8A80](v50, -1, -1);
      MEMORY[0x223DE8A80](v49, -1, -1);
    }

LABEL_21:

    return;
  }

LABEL_33:
  v45 = sub_223679638(a1);
  if (v43)
  {
    return;
  }

  if (!v45)
  {

    v18 = sub_22372AC88();
    v48 = sub_22372B278();

    if (!os_log_type_enabled(v18, v48))
    {
      goto LABEL_21;
    }

    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v61 = v50;
    *v49 = 136315138;
    v55 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId);
    v56 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId + 8);

    v57 = sub_223623274(v55, v56, &v61);

    *(v49 + 4) = v57;
    v54 = "MUX: Post NL User Selection failed for candidateId: %s, not committing.";
    goto LABEL_39;
  }

  type metadata accessor for MUXTRPCandidateContext(0);
  v46 = swift_dynamicCastClass();
  if (v46)
  {
    v47 = v46;

    sub_22368110C(v47);
  }

  else
  {
  }
}

void sub_22367C454(void *a1)
{
  v2 = v1;
  v4 = sub_22372A548();
  v126 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v121 = &v106 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_22372A3C8();
  v123 = *(v124 - 8);
  MEMORY[0x28223BE20](v124, v7);
  v122 = &v106 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_22372A298();
  v131 = *(v132 - 8);
  MEMORY[0x28223BE20](v132, v9);
  v130 = &v106 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E990, &qword_22372FCF0);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v136 = &v106 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F6F0, &qword_223732CD0);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v135 = &v106 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EE90, &unk_22372FF60);
  MEMORY[0x28223BE20](v17 - 8, v18);
  v129 = &v106 - v19;
  v128 = type metadata accessor for MUXUserAttributes(0);
  v127 = *(v128 - 8);
  v21 = MEMORY[0x28223BE20](v128, v20);
  v23 = &v106 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v24);
  v134 = &v106 - v25;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v125 = v23;
  v26 = sub_22372AC98();
  v27 = __swift_project_value_buffer(v26, qword_28132B680);
  v28 = a1;
  v133 = v27;
  v29 = sub_22372AC88();
  v30 = sub_22372B268();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v31 = 138412290;
    *(v31 + 4) = v28;
    *v32 = v28;
    v33 = v28;
    _os_log_impl(&dword_223620000, v29, v30, "MUX: received MultiUserTRPCandidateRequestMessage: %@", v31, 0xCu);
    sub_223626478(v32, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v32, -1, -1);
    MEMORY[0x223DE8A80](v31, -1, -1);
  }

  v34 = sub_223729D38();
  v36 = v35;
  v37 = sub_223728CF8();
  v39 = v38;
  v40 = sub_2237298A8();
  v41 = v140;
  sub_223681E7C(v34, v36, v37, v39, v40);
  if (v41)
  {
  }

  else
  {
    v109 = v28;
    v120 = 0;
    v107 = v4;

    sub_223623934(v2 + qword_28132A1F0, &v137);
    v118 = v138;
    v117 = v139;
    v119 = __swift_project_boxed_opaque_existential_1(&v137, v138);
    v42 = qword_28132A208;
    v113 = *(*(v2 + qword_28132A208) + 72);
    v43 = v113;
    v44 = qword_28132B858;
    swift_beginAccess();
    sub_223634890(v2 + v44, v135, &unk_27D08F6F0, &qword_223732CD0);
    v140 = (v2 + qword_28132A1A0);
    v45 = *(v2 + qword_28132A1E8);
    v46 = OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_requestIdToMuxRequestContext;
    swift_beginAccess();
    v47 = *(v45 + v46);
    v48 = *(v2 + qword_28132A200 + 8);
    v116 = *(v2 + qword_28132A200);
    v115 = v48;
    v49 = qword_28132B8A8;
    swift_beginAccess();
    sub_223634890(v2 + v49, v136, &unk_27D08E990, &qword_22372FCF0);
    v114 = v43;

    LOBYTE(v49) = sub_22367D204();
    v50 = OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_userSessionState;
    swift_beginAccess();
    v51 = v131;
    v52 = v130;
    v53 = v132;
    (*(v131 + 16))(v130, v45 + v50, v132);
    v108 = v42;
    v54 = *(*(v2 + v42) + 80);
    v110 = v2;
    v55 = v117;
    v111 = *(v117 + 8);
    v112 = v54;
    v105 = v55;
    v104 = v54;
    v56 = v129;
    v57 = v135;
    v58 = v136;
    v111(v113, v135, v140, v47, v116, v115, v136, v49 & 1, v52, v104, v118, v105);

    (*(v51 + 8))(v52, v53);
    sub_223626478(v58, &unk_27D08E990, &qword_22372FCF0);
    sub_223626478(v57, &unk_27D08F6F0, &qword_223732CD0);
    if ((*(v127 + 48))(v56, 1, v128) == 1)
    {
      sub_223626478(v56, &qword_27D08EE90, &unk_22372FF60);
      __swift_destroy_boxed_opaque_existential_1Tm(&v137);
      v59 = sub_22372AC88();
      v60 = sub_22372B278();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        *v61 = 0;
        _os_log_impl(&dword_223620000, v59, v60, "MUX: Something went wrong during user selection. Was unable to select a user.", v61, 2u);
        MEMORY[0x223DE8A80](v61, -1, -1);
      }
    }

    else
    {
      v62 = v56;
      v63 = v134;
      sub_2236852F0(v62, v134);
      __swift_destroy_boxed_opaque_existential_1Tm(&v137);
      v64 = sub_223728CF8();
      v66 = v65;
      v67 = *(v110 + v108);

      v68 = sub_22367D398(v64, v66, v63, v67);

      if (v68)
      {

        v69 = sub_223728CF8();
        v71 = v70;

        sub_2236B477C(v69, v71, v68);

        __swift_project_boxed_opaque_existential_1(v140, v140[3]);
        v72 = v107;
        v138 = v107;
        v73 = __swift_allocate_boxed_opaque_existential_1(&v137);
        v74 = OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedUserAttribute;
        swift_beginAccess();
        v75 = v125;
        sub_22368509C(v68 + v74, v125);
        v140 = *(v126 + 32);
        (v140)(v73, v75, v72);

        v76 = v123;
        v77 = v122;
        v78 = v124;
        (*(v123 + 104))(v122, *MEMORY[0x277D5D1C0], v124);
        sub_22372A4B8();
        (*(v76 + 8))(v77, v78);
        sub_223626478(&v137, &unk_27D08F750, &qword_22372C960);

        v79 = sub_22372AC88();
        v80 = sub_22372B268();

        if (os_log_type_enabled(v79, v80))
        {
          v81 = swift_slowAlloc();
          v136 = swift_slowAlloc();
          v137 = v136;
          *v81 = 136315650;
          v83 = *(v68 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_topLevelCandidateId);
          v82 = *(v68 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_topLevelCandidateId + 8);

          v84 = sub_223623274(v83, v82, &v137);
          v85 = v126;
          v86 = v84;

          *(v81 + 4) = v86;
          LODWORD(v135) = v80;
          v87 = v107;
          *(v81 + 12) = 2080;
          v89 = *(v68 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId);
          v88 = *(v68 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId + 8);

          v90 = sub_223623274(v89, v88, &v137);

          *(v81 + 14) = v90;
          *(v81 + 22) = 2080;
          v91 = v68 + v74;
          v92 = v125;
          sub_22368509C(v91, v125);
          v93 = v121;
          (v140)(v121, v92, v87);
          sub_223685890(&qword_28132B4E8, MEMORY[0x277D5D298], MEMORY[0x277D5D2C0]);
          v94 = sub_22372B6B8();
          v96 = v95;
          (*(v85 + 8))(v93, v87);
          v97 = sub_223623274(v94, v96, &v137);

          *(v81 + 24) = v97;
          _os_log_impl(&dword_223620000, v79, v135, "MUX: selectPreNLUser: For topLevelCandidateId: %s and userLevelCandidateId: %s), user: %s was chosen for running NL.", v81, 0x20u);
          v98 = v136;
          swift_arrayDestroy();
          MEMORY[0x223DE8A80](v98, -1, -1);
          MEMORY[0x223DE8A80](v81, -1, -1);
        }

        v99 = sub_223729D38();
        sub_22367DA44(v68, v99, v100);
      }

      else
      {
        v101 = sub_22372AC88();
        v102 = sub_22372B278();
        if (os_log_type_enabled(v101, v102))
        {
          v103 = swift_slowAlloc();
          *v103 = 0;
          _os_log_impl(&dword_223620000, v101, v102, "MUX: selectPreNLUser: Something went wrong when selecting the candidate context. Somehow couldn't find a trpCandidateContext. This is not expected to ever happen.", v103, 2u);
          MEMORY[0x223DE8A80](v103, -1, -1);
        }
      }

      sub_223685354(v134);
    }
  }
}

uint64_t sub_22367D204()
{
  v1 = *(v0 + qword_28132A1E0);
  if (v1)
  {
    v2 = v1;
    v3 = sub_223727EF8();
  }

  else
  {
    type metadata accessor for RequestControllerBridgeInternalErrors(0);
    sub_223685890(qword_28132A9A0, type metadata accessor for RequestControllerBridgeInternalErrors, byte_223731918);
    v4 = swift_allocError();
    sub_22372A778();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v5 = sub_22372AC98();
    __swift_project_value_buffer(v5, qword_28132B680);
    v2 = sub_22372AC88();
    v6 = sub_22372B278();
    if (os_log_type_enabled(v2, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_223620000, v2, v6, "MUX: Setting isRMVEnabled as false due to nil MuxContextMessage", v7, 2u);
      MEMORY[0x223DE8A80](v7, -1, -1);
    }

    v3 = 0;
  }

  return v3 & 1;
}

uint64_t sub_22367D398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E990, &qword_22372FCF0);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v76 = &v68 - v10;
  v11 = sub_22372A548();
  v12 = *(v11 - 8);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v16 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v14, v17);
  v20 = &v68 - v19;
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v68 - v22;
  v77 = v12;
  v78 = v24;
  v25 = *(v12 + 16);
  v25(&v68 - v22, a3);
  v26 = sub_2236B4B18(a1, a2, v23);
  if (!v26)
  {
    v70 = v25;
    v71 = a4;
    v73 = a1;
    v74 = v23;
    v31 = v77;
    v30 = v78;
    v72 = v16;
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v32 = sub_22372AC98();
    v33 = __swift_project_value_buffer(v32, qword_28132B680);
    v34 = v20;
    v35 = v30;
    v70(v20, v74, v30);
    v36 = a2;

    v70 = v33;
    v37 = sub_22372AC88();
    v38 = sub_22372B278();

    v39 = os_log_type_enabled(v37, v38);
    v40 = v73;
    if (v39)
    {
      v41 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v79[0] = v69;
      *v41 = 136315394;
      sub_223685890(&qword_28132B4E8, MEMORY[0x277D5D298], MEMORY[0x277D5D2C0]);
      v42 = sub_22372B6B8();
      v44 = v43;
      v45 = v34;
      v46 = *(v31 + 8);
      v46(v45, v35);
      v47 = sub_223623274(v42, v44, v79);

      *(v41 + 4) = v47;
      *(v41 + 12) = 2080;
      *(v41 + 14) = sub_223623274(v40, v36, v79);
      _os_log_impl(&dword_223620000, v37, v38, "MUX: Could not find TRPCandidateContext for selectedUserId: %s and topLevelTrpCandidateId: %s, meaning we are missing the selected user's ASR output. Trying to use unknown user's RC.", v41, 0x16u);
      v48 = v69;
      swift_arrayDestroy();
      MEMORY[0x223DE8A80](v48, -1, -1);
      MEMORY[0x223DE8A80](v41, -1, -1);

      v49 = v31;
    }

    else
    {

      v49 = v31;
      v50 = v34;
      v46 = *(v31 + 8);
      v46(v50, v35);
    }

    v51 = v72;
    v52 = v35;
    v53 = qword_28132B8A8;
    v54 = v75;
    swift_beginAccess();
    v55 = v54 + v53;
    v56 = v76;
    sub_223634890(v55, v76, &unk_27D08E990, &qword_22372FCF0);
    if ((*(v49 + 48))(v56, 1, v52) == 1)
    {
      sub_223626478(v56, &unk_27D08E990, &qword_22372FCF0);
      v57 = sub_22372AC88();
      v58 = sub_22372B278();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        *v59 = 0;
        _os_log_impl(&dword_223620000, v57, v58, "MUX: selectPreNLUser: sharedUserId of unknown user is nil. Will not post ASR output. Request will time out.", v59, 2u);
        MEMORY[0x223DE8A80](v59, -1, -1);
      }

      v46(v74, v52);
    }

    else
    {
      (*(v49 + 32))(v51, v56, v52);
      v60 = sub_2236B4B18(v73, v36, v51);
      if (v60)
      {
        v27 = v60;

        sub_2236B138C(-1);
        sub_2236B1508(0);
        v61 = sub_22372A418();
        sub_2236B1684(v61);
        sub_2236B1800(1);
        sub_2236B197C(0);
        sub_2236B1AF8(0);

        v46(v51, v52);
        v46(v74, v52);
        return v27;
      }

      v62 = sub_22372AC88();
      v63 = sub_22372B278();
      v64 = os_log_type_enabled(v62, v63);
      v65 = v74;
      if (v64)
      {
        v66 = swift_slowAlloc();
        *v66 = 0;
        _os_log_impl(&dword_223620000, v62, v63, "MUX: selectPreNLUser: Could not find trpCandidateContext for unknown user. Will not post ASR output. Request will time out.", v66, 2u);
        MEMORY[0x223DE8A80](v66, -1, -1);
      }

      v46(v51, v52);
      v46(v65, v52);
    }

    return 0;
  }

  v27 = v26;
  v28 = type metadata accessor for MUXUserAttributes(0);
  v29 = *(a3 + v28[6]);

  sub_2236B138C(v29);
  sub_2236B1508(*(a3 + v28[5]));
  sub_2236B1684(*(a3 + v28[8]));
  sub_2236B1800(*(a3 + v28[7]));
  sub_2236B197C(*(a3 + v28[9]));
  sub_2236B1AF8(*(a3 + v28[10]));

  (*(v77 + 8))(v23, v78);
  return v27;
}

void sub_22367DA44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for MUXSpeechTRPCandidateContext(0);
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = v4;

    sub_2236B1FA4(1u);
    *(v5 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_candidateState) = 1;
    v6 = *(v5 + OBJC_IVAR____TtC24RequestDispatcherBridges28MUXSpeechTRPCandidateContext_trpMessage);
    MEMORY[0x28223BE20](v7, v8);
    objc_allocWithZone(sub_223728CE8());
    v9 = v6;
    v10 = sub_223728C68();
    if (v10)
    {
      v11 = v10;

      if (qword_281328E58 != -1)
      {
        swift_once();
      }

      v12 = sub_22372AC98();
      __swift_project_value_buffer(v12, qword_28132B680);
      v13 = v11;
      v14 = sub_22372AC88();
      v15 = sub_22372B268();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        *v16 = 138412290;
        *(v16 + 4) = v13;
        *v17 = v11;
        v18 = v13;
        _os_log_impl(&dword_223620000, v14, v15, "MUX: Posted TRPCandidateRequestMessage: %@", v16, 0xCu);
        sub_223626478(v17, &unk_27D08F250, &unk_22372D1D0);
        MEMORY[0x223DE8A80](v17, -1, -1);
        MEMORY[0x223DE8A80](v16, -1, -1);
      }

      sub_22372A758();
      __swift_project_boxed_opaque_existential_1(v40, v40[3]);
      sub_223729D88();
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
      v19 = sub_22372A768();
      v21 = v20;
      v22 = v13;
      v23 = sub_223728CF8();
      v25 = v24;

      sub_2236C4060(v19, v21, v23, v25);
    }

    else
    {
      type metadata accessor for RequestControllerBridgeInternalErrors(0);
      sub_223685890(qword_28132A9A0, type metadata accessor for RequestControllerBridgeInternalErrors, byte_223731918);
      v29 = swift_allocError();
      *v30 = 0xD000000000000019;
      v30[1] = 0x8000000223735150;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      if (qword_281328E58 != -1)
      {
        swift_once();
      }

      v31 = sub_22372AC98();
      __swift_project_value_buffer(v31, qword_28132B680);

      v32 = sub_22372AC88();
      v33 = sub_22372B278();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v40[0] = v35;
        *v34 = 136315138;
        v36 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId);
        v37 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId + 8);

        v38 = sub_223623274(v36, v37, v40);

        *(v34 + 4) = v38;
        _os_log_impl(&dword_223620000, v32, v33, "MUX: Unable to post TRPCandidateMessage for trpId : %s", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v35);
        MEMORY[0x223DE8A80](v35, -1, -1);
        MEMORY[0x223DE8A80](v34, -1, -1);
      }
    }
  }

  else
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v26 = sub_22372AC98();
    __swift_project_value_buffer(v26, qword_28132B680);
    v39 = sub_22372AC88();
    v27 = sub_22372B268();
    if (os_log_type_enabled(v39, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_223620000, v39, v27, "MUX: Unable to post TRPCandidateRequestMessage. Request will time out", v28, 2u);
      MEMORY[0x223DE8A80](v28, -1, -1);
    }
  }
}

void sub_22367DFBC(void *a1)
{
  v3 = v1;
  v5 = sub_22372A548();
  v63 = *(v5 - 8);
  v64 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v62 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EEA8, &qword_22372EC48);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v59 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F6F0, &qword_223732CD0);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v59 - v14;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v16 = sub_22372AC98();
  v17 = __swift_project_value_buffer(v16, qword_28132B680);
  v18 = a1;
  v65 = v17;
  v19 = sub_22372AC88();
  v20 = sub_22372B268();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v21 = 138412290;
    *(v21 + 4) = v18;
    *v22 = v18;
    v23 = v18;
    _os_log_impl(&dword_223620000, v19, v20, "MUX: received MultiUserTextBasedRootTRPCandidateRequestMessage: %@", v21, 0xCu);
    sub_223626478(v22, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v22, -1, -1);
    MEMORY[0x223DE8A80](v21, -1, -1);
  }

  sub_22367E714(v18);
  if (!v2)
  {
    v24 = *(v3 + qword_28132A1E0);
    if (v24)
    {
      v61 = 0;
      v25 = qword_28132B858;
      swift_beginAccess();
      sub_223634890(v3 + v25, v15, &unk_27D08F6F0, &qword_223732CD0);
      v26 = *(v3 + qword_28132A1E8);
      v27 = OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_userSessionState;
      swift_beginAccess();
      v28 = sub_22372A298();
      v29 = *(v28 - 8);
      (*(v29 + 16))(v11, v26 + v27, v28);
      (*(v29 + 56))(v11, 0, 1, v28);
      v30 = v24;
      v31 = sub_22372A9F8();
      sub_223626478(v11, &qword_27D08EEA8, &qword_22372EC48);
      sub_223626478(v15, &unk_27D08F6F0, &qword_223732CD0);
      v32 = qword_28132A208;

      if (v31)
      {
        v33 = v31;
        v34 = sub_223728C08();
      }

      else
      {
        v33 = 0;
        v34 = 0;
      }

      sub_2236B3B58(v34);

      v35 = *(v3 + v32);
      v36 = *(v35 + 80);
      *(v35 + 80) = v31;
      v37 = v33;

      if (v31 && (v38 = v37, v39 = sub_223728C08(), v38, v39) && (v40 = [v39 userClassified], v39, v40))
      {
        v60 = v30;
        sub_22372AFE8();

        v41 = v62;
        sub_22372A508();

        v42 = sub_223728CF8();
        v44 = sub_2236B4B18(v42, v43, v41);

        if (v44)
        {
          v45 = sub_22372A768();
          v47 = v46;
          v48 = *(v44 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId);
          v49 = *(v44 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId + 8);

          sub_22367EB84(v45, v47, v41, v48, v49, v18);

          v50 = sub_223728CF8();
          sub_2236B477C(v50, v51, v44);
        }

        else
        {
          v56 = sub_22372AC88();
          v57 = sub_22372B278();
          if (os_log_type_enabled(v56, v57))
          {
            v58 = swift_slowAlloc();
            *v58 = 0;
            _os_log_impl(&dword_223620000, v56, v57, "MUX: Unable to retrieve MUXTextTRPCandidateContext. Request will timeout.", v58, 2u);
            MEMORY[0x223DE8A80](v58, -1, -1);
          }

          else
          {
          }
        }

        (*(v63 + 8))(v41, v64);
      }

      else
      {
        v52 = sub_22372AC88();
        v53 = sub_22372B278();
        if (os_log_type_enabled(v52, v53))
        {
          v54 = v30;
          v55 = swift_slowAlloc();
          *v55 = 0;
          _os_log_impl(&dword_223620000, v52, v53, "MUX: Unable to retrieve selected user id from UserIdentificationMessage. Request will timeout.", v55, 2u);
          MEMORY[0x223DE8A80](v55, -1, -1);
        }

        else
        {
        }
      }
    }

    else
    {
      type metadata accessor for RequestControllerBridgeInternalErrors(0);
      sub_223685890(qword_28132A9A0, type metadata accessor for RequestControllerBridgeInternalErrors, byte_223731918);
      swift_allocError();
      sub_22372A778();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }
  }
}

void sub_22367E714(void *a1)
{
  v4 = sub_22372A548();
  v6 = MEMORY[0x28223BE20](v4, v5);
  v9 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v1 + qword_28132A1E0);
  if (v10)
  {
    v40 = v7;
    v41 = v6;
    v11 = qword_281328E58;
    v42 = v10;
    if (v11 != -1)
    {
      swift_once();
    }

    v12 = sub_22372AC98();
    v13 = __swift_project_value_buffer(v12, qword_28132B680);
    v14 = a1;
    v39[1] = v13;
    v15 = sub_22372AC88();
    v16 = sub_22372B268();

    v17 = os_log_type_enabled(v15, v16);
    v43 = v2;
    if (v17)
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v44 = v19;
      *v18 = 136315394;
      v20 = sub_223728CF8();
      v22 = sub_223623274(v20, v21, &v44);

      *(v18 + 4) = v22;
      *(v18 + 12) = 2080;
      v23 = sub_223729D38();
      v25 = sub_223623274(v23, v24, &v44);

      *(v18 + 14) = v25;
      _os_log_impl(&dword_223620000, v15, v16, "MUX: updateRequestContext objects for TRP ID: %s and requestId: %s", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DE8A80](v19, -1, -1);
      MEMORY[0x223DE8A80](v18, -1, -1);
    }

    v26 = sub_223729CC8();
    v28 = v27;
    sub_223728D08();
    v29 = sub_223728CF8();
    sub_2236B3CB8(v26, v28, v9, v29, v30);

    (*(v40 + 8))(v9, v41);

    v31 = sub_22372AC88();
    v32 = sub_22372B268();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v44 = v34;
      *v33 = 136315138;

      v35 = sub_2236B2D5C();
      v37 = v36;

      v38 = sub_223623274(v35, v37, &v44);

      *(v33 + 4) = v38;
      _os_log_impl(&dword_223620000, v31, v32, "MUX: Created %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      MEMORY[0x223DE8A80](v34, -1, -1);
      MEMORY[0x223DE8A80](v33, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    type metadata accessor for RequestControllerBridgeInternalErrors(0);
    sub_223685890(qword_28132A9A0, type metadata accessor for RequestControllerBridgeInternalErrors, byte_223731918);
    swift_allocError();
    sub_22372A778();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }
}

void sub_22367EB84(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v14 = sub_22372A548();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40[4] = v7;
  v40[5] = a1;
  v40[6] = a2;
  v40[7] = a3;
  v40[8] = a6;
  v40[9] = a4;
  v40[10] = a5;
  v19 = objc_allocWithZone(sub_223729A18());
  v20 = sub_223729988();
  if (v20)
  {
    v21 = v20;
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v22 = sub_22372AC98();
    __swift_project_value_buffer(v22, qword_28132B680);
    (*(v15 + 16))(v18, a3, v14);

    v23 = sub_22372AC88();
    v24 = sub_22372B268();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v41[0] = v26;
      *v25 = 136315394;
      v27 = sub_22372A768();
      v29 = sub_223623274(v27, v28, v41);
      v40[1] = v7;
      v30 = v29;

      *(v25 + 4) = v30;
      *(v25 + 12) = 2080;
      v31 = sub_22372A518();
      v33 = v32;
      (*(v15 + 8))(v18, v14);
      v34 = sub_223623274(v31, v33, v41);

      *(v25 + 14) = v34;
      _os_log_impl(&dword_223620000, v23, v24, "MUX: Going to post TextBasedTRPCandidateForPlannerMessage for root request: %s  and selected UserId %s", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DE8A80](v26, -1, -1);
      MEMORY[0x223DE8A80](v25, -1, -1);
    }

    else
    {

      (*(v15 + 8))(v18, v14);
    }

    sub_22372A758();
    __swift_project_boxed_opaque_existential_1(v41, v41[3]);
    sub_223729D88();

    __swift_destroy_boxed_opaque_existential_1Tm(v41);
  }

  else
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v35 = sub_22372AC98();
    __swift_project_value_buffer(v35, qword_28132B680);

    v36 = sub_22372AC88();
    v37 = sub_22372B278();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v41[0] = v39;
      *v38 = 136315138;
      *(v38 + 4) = sub_223623274(a1, a2, v41);
      _os_log_impl(&dword_223620000, v36, v37, "MUX: Failed to create TextBasedTRPCandidateForPlannerMessage for root request: %s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v39);
      MEMORY[0x223DE8A80](v39, -1, -1);
      MEMORY[0x223DE8A80](v38, -1, -1);
    }
  }
}

void sub_22367EFB0(void *a1)
{
  v3 = v2;
  v4 = v1;
  v120 = sub_22372A298();
  v118 = *(v120 - 8);
  MEMORY[0x28223BE20](v120, v6);
  v117 = &v101 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E990, &qword_22372FCF0);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v115 = &v101 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EE90, &unk_22372FF60);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v116 = &v101 - v13;
  v114 = type metadata accessor for MUXUserAttributes(0);
  v112 = *(v114 - 8);
  MEMORY[0x28223BE20](v114, v14);
  v113 = &v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F6F0, &qword_223732CD0);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v19 = &v101 - v18;
  v20 = qword_28132A1A0;
  v21 = qword_28132B858;
  swift_beginAccess();
  v110 = v21;
  sub_223634890(&v4[v21], v19, &unk_27D08F6F0, &qword_223732CD0);
  v111 = v20;
  LODWORD(v122) = sub_223724934(&v4[v20], v19);
  v119 = v19;
  sub_223626478(v19, &unk_27D08F6F0, &qword_223732CD0);
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v22 = sub_22372AC98();
  v23 = __swift_project_value_buffer(v22, qword_28132B680);
  v24 = a1;
  v121 = v23;
  v25 = sub_22372AC88();
  v26 = sub_22372B268();

  v27 = os_log_type_enabled(v25, v26);
  v126 = v24;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v109 = swift_slowAlloc();
    v123[0] = v109;
    *v28 = 138412802;
    *(v28 + 4) = v24;
    *v29 = v24;
    *(v28 + 12) = 2080;
    v30 = v24;
    v31 = sub_223729D38();
    v33 = sub_223623274(v31, v32, v123);

    *(v28 + 14) = v33;
    v3 = v2;
    *(v28 + 22) = 1024;
    v34 = v122;
    *(v28 + 24) = v122 & 1;
    _os_log_impl(&dword_223620000, v25, v26, "MUX: received MultiUserRootTRPCandidateRequestMessage: %@ for requestId %s with isSiriPrompting = %{BOOL}d", v28, 0x1Cu);
    sub_223626478(v29, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v29, -1, -1);
    v35 = v109;
    __swift_destroy_boxed_opaque_existential_1Tm(v109);
    MEMORY[0x223DE8A80](v35, -1, -1);
    MEMORY[0x223DE8A80](v28, -1, -1);

    if (v34)
    {
LABEL_8:
      v37 = v126;
      v38 = v4;
      v39 = sub_223729D38();
      v41 = v40;
      v42 = sub_223728CF8();
      v44 = v43;
      v45 = sub_2237298C8();
      v46 = v38;
      sub_223681E7C(v39, v41, v42, v44, v45);
      if (v3)
      {
      }

      else
      {

        sub_2236DC060(v37, sub_22367FC3C, 0);
        v122 = 0;
        sub_223623934(&v38[qword_28132A1F0], v123);
        v47 = v125;
        v108 = v124;
        v109 = __swift_project_boxed_opaque_existential_1(v123, v124);
        v48 = qword_28132A208;
        v105 = *(*&v38[qword_28132A208] + 72);
        v49 = v105;
        sub_223634890(&v38[v110], v119, &unk_27D08F6F0, &qword_223732CD0);
        v50 = *&v38[qword_28132A1E8];
        v51 = OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_requestIdToMuxRequestContext;
        swift_beginAccess();
        v52 = v38;
        v53 = *(v50 + v51);
        v54 = *&v46[qword_28132A200 + 8];
        v110 = *&v46[qword_28132A200];
        v107 = v54;
        v55 = qword_28132B8A8;
        swift_beginAccess();
        v56 = &v46[v55];
        v57 = v115;
        sub_223634890(v56, v115, &unk_27D08E990, &qword_22372FCF0);
        v106 = v49;

        v58 = sub_22367D204();
        v59 = OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_userSessionState;
        swift_beginAccess();
        v60 = v118;
        v61 = v50 + v59;
        v62 = v117;
        (*(v118 + 16))(v117, v61, v120);
        v102 = v48;
        v63 = *(*&v52[v48] + 80);
        v103 = *(v47 + 8);
        v104 = v63;
        v100 = v63;
        v64 = v116;
        v65 = v119;
        v103(v105, v119, &v52[v111], v53, v110, v107, v57, v58 & 1, v62, v100, v108, v47);

        (*(v60 + 8))(v62, v120);
        sub_223626478(v57, &unk_27D08E990, &qword_22372FCF0);
        sub_223626478(v65, &unk_27D08F6F0, &qword_223732CD0);
        if ((*(v112 + 48))(v64, 1, v114) == 1)
        {
          sub_223626478(v64, &qword_27D08EE90, &unk_22372FF60);
          __swift_destroy_boxed_opaque_existential_1Tm(v123);
          v66 = sub_22372AC88();
          v67 = sub_22372B278();
          if (os_log_type_enabled(v66, v67))
          {
            v68 = swift_slowAlloc();
            *v68 = 0;
            _os_log_impl(&dword_223620000, v66, v67, "MUX: Something went wrong during preNL user selection. Was unable to select a user.", v68, 2u);
            MEMORY[0x223DE8A80](v68, -1, -1);
          }
        }

        else
        {
          v82 = v113;
          sub_2236852F0(v64, v113);
          __swift_destroy_boxed_opaque_existential_1Tm(v123);
          v83 = v126;
          v84 = sub_223728CF8();
          v86 = v85;
          v87 = *&v52[v102];

          v88 = sub_22367D398(v84, v86, v82, v87);

          if (v88)
          {
            v89 = sub_22372A768();
            v91 = v90;
            v92 = *(v88 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId);
            v93 = *(v88 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId + 8);

            v94 = v113;
            sub_22367FCA8(v89, v91, v113, v92, v93);

            sub_2236C574C(v83);

            v95 = sub_223728CF8();
            sub_2236B477C(v95, v96, v88);

            sub_223685354(v94);
          }

          else
          {
            v97 = sub_22372AC88();
            v98 = sub_22372B278();
            if (os_log_type_enabled(v97, v98))
            {
              v99 = swift_slowAlloc();
              *v99 = 0;
              _os_log_impl(&dword_223620000, v97, v98, "MUX: selectPreNLUser: Something went wrong when selecting the candidate context. Somehow couldn't find a trpCandidateContext. This is not expected to ever happen.", v99, 2u);
              MEMORY[0x223DE8A80](v99, -1, -1);
            }

            sub_223685354(v113);
          }
        }
      }

      return;
    }
  }

  else
  {

    if (v122)
    {
      goto LABEL_8;
    }
  }

  v36 = qword_28132A208;
  if (*(*&v4[qword_28132A208] + 72))
  {
    goto LABEL_8;
  }

  v69 = v126;
  v70 = sub_22372AC88();
  v71 = sub_22372B278();

  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v126 = v4;
    v74 = v73;
    v123[0] = v73;
    *v72 = 136315138;
    v75 = sub_223729D38();
    v77 = sub_223623274(v75, v76, v123);

    *(v72 + 4) = v77;
    _os_log_impl(&dword_223620000, v70, v71, "MUX: Caching MultiUserRootTRP and skipping processing because we have not received scores yet for requestId %s", v72, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v74);
    v78 = v74;
    v4 = v126;
    MEMORY[0x223DE8A80](v78, -1, -1);
    MEMORY[0x223DE8A80](v72, -1, -1);
  }

  v79 = *&v4[v36];
  v80 = *(v79 + 88);
  *(v79 + 88) = v69;
  v81 = v69;
}

uint64_t sub_22367FB08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v9 = (*(a3 + 200) + **(a3 + 200));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_223624EA4;

  return v9(a1, ObjectType, a3);
}

void *sub_22367FC3C(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_unknownObjectRetain();
  return &unk_22372EC40;
}

void sub_22367FCA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v35 = sub_22372A548();
  v10 = *(v35 - 1);
  MEMORY[0x28223BE20](v35, v11);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2237298C8();
  v15 = sub_22372A518();
  if (*(v14 + 16))
  {
    v34 = a5;
    v17 = sub_2236261A0(v15, v16);
    v19 = v18;

    if (v19)
    {
      v35 = *(*(v14 + 56) + 8 * v17);

      sub_223682D1C(a1, a2, a3, a4, v34, v35);
      v20 = v35;

      return;
    }
  }

  else
  {
  }

  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v21 = sub_22372AC98();
  __swift_project_value_buffer(v21, qword_28132B680);
  v22 = v35;
  (*(v10 + 16))(v13, a3, v35);

  v23 = sub_22372AC88();
  v24 = sub_22372B278();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v36 = v26;
    *v25 = 136315394;
    v27 = sub_22372A768();
    v29 = sub_223623274(v27, v28, &v36);

    *(v25 + 4) = v29;
    *(v25 + 12) = 2080;
    v30 = sub_22372A518();
    v32 = v31;
    (*(v10 + 8))(v13, v22);
    v33 = sub_223623274(v30, v32, &v36);

    *(v25 + 14) = v33;
    _os_log_impl(&dword_223620000, v23, v24, "MUX: can not access selectedUserLevelTRPCandidate from MultiUserRootTRPCandidateRequestMessage for root request: %s and selected userId %s.", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DE8A80](v26, -1, -1);
    MEMORY[0x223DE8A80](v25, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v13, v22);
  }
}

void sub_22367FFFC(void *a1)
{
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v3 = sub_22372AC98();
  __swift_project_value_buffer(v3, qword_28132B680);
  v4 = a1;
  v5 = sub_22372AC88();
  v6 = sub_22372B268();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v4;
    *v8 = v4;
    v9 = v4;
    _os_log_impl(&dword_223620000, v5, v6, "MUX: received message: %@", v7, 0xCu);
    sub_223626478(v8, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v8, -1, -1);
    MEMORY[0x223DE8A80](v7, -1, -1);
  }

  if (*(*(v1 + qword_28132A208) + 40))
  {
    v10 = sub_22372AC88();
    v11 = sub_22372B278();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_223620000, v10, v11, "MUX: Selected topLevelCandidateId should be nil at this point.", v12, 2u);
      MEMORY[0x223DE8A80](v12, -1, -1);
    }
  }

  else
  {
    v13 = sub_223729B58();
    sub_2236801F8(v13, v14);
  }
}

void sub_2236801F8(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v6 = sub_22372AC98();
  __swift_project_value_buffer(v6, qword_28132B680);

  v7 = sub_22372AC88();
  v8 = sub_22372B268();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v25[0] = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_223623274(a1, a2, v25);
    _os_log_impl(&dword_223620000, v7, v8, "MUX: Caching topLevel selected candidateId: %s in RequestContext.", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x223DE8A80](v10, -1, -1);
    MEMORY[0x223DE8A80](v9, -1, -1);
  }

  v11 = qword_28132A208;
  v12 = *(v3 + qword_28132A208);
  *(v12 + 32) = a1;
  *(v12 + 40) = a2;

  v13 = *(v3 + v11);
  swift_beginAccess();
  v14 = *(v13 + 64);
  if (!*(v14 + 16))
  {
    goto LABEL_10;
  }

  v15 = sub_2236261A0(a1, a2);
  if ((v16 & 1) == 0)
  {

LABEL_10:

    v18 = sub_22372AC88();
    v19 = sub_22372B278();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v26 = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_223623274(a1, a2, &v26);
      _os_log_impl(&dword_223620000, v18, v19, "MUX: No user was picked for topLevelCandidateId: %s. Cannot proceed.", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      MEMORY[0x223DE8A80](v21, -1, -1);
      MEMORY[0x223DE8A80](v20, -1, -1);
    }

    goto LABEL_19;
  }

  v17 = *(*(v14 + 56) + 8 * v15);

  if (*(v17 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_candidateState) <= 1u || *(v17 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_candidateState) == 2)
  {
    v22 = sub_22372B6E8();

    if ((v22 & 1) == 0)
    {
      sub_22367BB18(v17);

      return;
    }
  }

  else
  {
  }

  v18 = sub_22372AC88();
  v23 = sub_22372B278();
  if (os_log_type_enabled(v18, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_223620000, v18, v23, "MUX: Detected highly unusual state where ASR output seems to have been finalized before the StoppedListeningForSpeechContinuation message arrived", v24, 2u);
    MEMORY[0x223DE8A80](v24, -1, -1);
  }

LABEL_19:
}

void sub_223680618(void *a1)
{
  v3 = v1;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v5 = sub_22372AC98();
  __swift_project_value_buffer(v5, qword_28132B680);
  v6 = a1;
  v7 = sub_22372AC88();
  v8 = sub_22372B268();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    *(v9 + 4) = v6;
    *v10 = v6;
    v11 = v6;
    _os_log_impl(&dword_223620000, v7, v8, "MUX: received UserIdentificationMessage: %@", v9, 0xCu);
    sub_223626478(v10, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v10, -1, -1);
    MEMORY[0x223DE8A80](v9, -1, -1);
  }

  v12 = sub_223728C08();
  if (v12)
  {
    v13 = qword_28132A208;
    v14 = *(v3 + qword_28132A208);
    v15 = *(v14 + 72);
    *(v14 + 72) = v12;
    if (v15)
    {
      v16 = v12;

      v17 = *(v3 + v13);
      v18 = *(v17 + 80);
      *(v17 + 80) = v6;
      v19 = v6;

      v20 = *(*(v3 + v13) + 96);
      if (!v20)
      {
LABEL_18:

        return;
      }

      v21 = v20;
      sub_2236CD958(v21);
      if (!v2)
      {

        goto LABEL_18;
      }
    }

    else
    {
      v28 = *(v3 + v13);
      v29 = *(v28 + 80);
      *(v28 + 80) = v6;
      v30 = v12;
      v31 = v6;
      v16 = v30;

      v32 = *(*(v3 + v13) + 88);
      if (!v32)
      {
        goto LABEL_18;
      }

      v21 = v32;
      v33 = sub_22372AC88();
      v34 = sub_22372B268();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_223620000, v33, v34, "MUX: Replaying cached MultiUserRootTRPCandidateRequestMessage", v35, 2u);
        MEMORY[0x223DE8A80](v35, -1, -1);
      }

      sub_22367EFB0(v21);
      if (!v2)
      {
        v36 = *(v3 + v13);
        v37 = *(v36 + 88);
        *(v36 + 88) = 0;

        v38 = *(*(v3 + v13) + 96);
        if (v38)
        {
          v39 = v38;
          sub_2236CD958(v39);
        }
      }
    }

    return;
  }

  v22 = v6;
  v23 = sub_22372AC88();
  v24 = sub_22372B278();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v25 = 138412290;
    *(v25 + 4) = v22;
    *v26 = v22;
    v27 = v22;
    _os_log_impl(&dword_223620000, v23, v24, "MUX: Received User Identification message without voice ID score card: %@. This might be expected in the future, but for now this is unexpected.", v25, 0xCu);
    sub_223626478(v26, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v26, -1, -1);
    MEMORY[0x223DE8A80](v25, -1, -1);
  }
}

void sub_2236809CC()
{
  v1 = v0;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v2 = sub_22372AC98();
  __swift_project_value_buffer(v2, qword_28132B680);
  v3 = sub_22372AC88();
  v4 = sub_22372B268();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_223620000, v3, v4, "MUX: Handling FlowPluginInfoMessage", v5, 2u);
    MEMORY[0x223DE8A80](v5, -1, -1);
  }

  v6 = sub_2237290A8();
  v8 = v7;
  v9 = *(v1 + qword_28132A208);
  swift_beginAccess();
  if (*(*(v9 + 48) + 16))
  {

    sub_2236261A0(v6, v8);
    if (v10)
    {

      type metadata accessor for MUXTRPCandidateContext(0);
      v11 = swift_dynamicCastClass();
      if (v11)
      {
        v12 = v11;

        v13 = sub_223728298();
        sub_223680CA4(v12, v13 & 1);

        return;
      }
    }

    else
    {
    }
  }

  v14 = sub_22372AC88();
  v15 = sub_22372B278();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v19 = v17;
    *v16 = 136315138;
    v18 = sub_223623274(v6, v8, &v19);

    *(v16 + 4) = v18;
    _os_log_impl(&dword_223620000, v14, v15, "MUX: handleFlowPluginInfoMessage: Unable to find candidate context for id: %s, this can affect Conversation.", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    MEMORY[0x223DE8A80](v17, -1, -1);
    MEMORY[0x223DE8A80](v16, -1, -1);
  }

  else
  {
  }
}

void sub_223680CA4(uint64_t a1, int a2)
{
  v31 = a2;
  v4 = type metadata accessor for MUXUserAttributes(0);
  MEMORY[0x28223BE20](v4, v5);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E990, &qword_22372FCF0);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08E9D0, &qword_22372D1E0);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = v30 - v14;
  v30[1] = sub_22372A768();
  v30[2] = v16;
  v17 = qword_28132B888;
  swift_beginAccess();
  v30[0] = v2;
  sub_223634890(v2 + v17, v15, &qword_27D08E9D0, &qword_22372D1E0);
  v18 = sub_223729F08();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v15, 1, v18) == 1)
  {
    __break(1u);
  }

  else
  {
    v20 = a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedUserAttribute;
    swift_beginAccess();
    sub_22368509C(v20, v7);
    v21 = sub_22372A548();
    v22 = *(v21 - 8);
    (*(v22 + 32))(v11, v7, v21);
    (*(v22 + 56))(v11, 0, 1, v21);
    v23 = sub_22372AA48();

    sub_223626478(v11, &unk_27D08E990, &qword_22372FCF0);
    (*(v19 + 8))(v15, v18);
    if (v23)
    {
      v24 = sub_22372A748();
      aBlock[4] = sub_223682B78;
      aBlock[5] = 0;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_22365AC5C;
      aBlock[3] = &block_descriptor_11;
      v25 = _Block_copy(aBlock);
      v26 = v23;
      [v24 handleCommand:v26 completion:v25];
      _Block_release(v25);
      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_281328E58 != -1)
      {
        swift_once();
      }

      v27 = sub_22372AC98();
      __swift_project_value_buffer(v27, qword_28132B680);
      v26 = sub_22372AC88();
      v28 = sub_22372B278();
      if (os_log_type_enabled(v26, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_223620000, v26, v28, "MUX: Could not send VoiceIdentificationSignal", v29, 2u);
        MEMORY[0x223DE8A80](v29, -1, -1);
      }
    }
  }
}

void sub_22368110C(uint64_t a1)
{
  v2 = sub_22372A3C8();
  v59 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v3);
  v58 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MUXUserAttributes(0);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_22372A548();
  v9 = *(v57 - 8);
  MEMORY[0x28223BE20](v57, v10);
  v56 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v12 = sub_22372AC98();
  v13 = __swift_project_value_buffer(v12, qword_28132B680);

  v60 = v13;
  v14 = sub_22372AC88();
  v15 = sub_22372B268();

  v16 = os_log_type_enabled(v14, v15);
  v61 = a1;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v62[0] = v18;
    *v17 = 136315138;
    v19 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId);
    v20 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId + 8);
    v55 = v2;

    v21 = sub_223623274(v19, v20, v62);
    a1 = v61;
    v2 = v55;

    *(v17 + 4) = v21;
    _os_log_impl(&dword_223620000, v14, v15, "MUX: Proceeding to post StoppedListeningForSpeechContinuation for given TRP Id: %s.", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    MEMORY[0x223DE8A80](v18, -1, -1);
    MEMORY[0x223DE8A80](v17, -1, -1);
  }

  v22 = OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedUserAttribute;
  swift_beginAccess();
  sub_22368509C(a1 + v22, v8);
  v23 = v56;
  v24 = v8;
  v25 = v57;
  (*(v9 + 32))(v56, v24, v57);
  __swift_project_boxed_opaque_existential_1((v64 + qword_28132A1A0), *(v64 + qword_28132A1A0 + 24));
  v63 = v25;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v62);
  (*(v9 + 16))(boxed_opaque_existential_1, v23, v25);
  v27 = v59;
  v28 = v58;
  (*(v59 + 104))(v58, *MEMORY[0x277D5D1C0], v2);
  sub_22372A4B8();
  v29 = v28;
  v30 = v61;
  (*(v27 + 8))(v29, v2);
  (*(v9 + 8))(v23, v25);
  sub_223626478(v62, &unk_27D08F750, &qword_22372C960);
  v31 = v64;
  v32 = *(v64 + qword_28132A208);
  v33 = (v30 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_topLevelCandidateId);
  v34 = *(v30 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_topLevelCandidateId + 8);
  *(v32 + 32) = *(v30 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_topLevelCandidateId);
  *(v32 + 40) = v34;

  sub_2236B1FA4(3u);
  *(v30 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_candidateState) = 3;
  v36 = *v33;
  v35 = v33[1];

  sub_2236B477C(v36, v35, v30);

  MEMORY[0x28223BE20](v37, v38);
  *(&v55 - 2) = v31;
  *(&v55 - 1) = v30;
  v39 = objc_allocWithZone(sub_223729B68());
  v40 = sub_223729AE8();
  if (v40)
  {
    v41 = v40;
    v42 = v40;
    v43 = sub_22372AC88();
    v44 = sub_22372B268();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *v45 = 138412290;
      *(v45 + 4) = v42;
      *v46 = v41;
      v47 = v42;
      _os_log_impl(&dword_223620000, v43, v44, "MUX: posting StoppedListeningForSpeechContinuation message: %@", v45, 0xCu);
      sub_223626478(v46, &unk_27D08F250, &unk_22372D1D0);
      MEMORY[0x223DE8A80](v46, -1, -1);
      MEMORY[0x223DE8A80](v45, -1, -1);
    }

    sub_22372A758();
    __swift_project_boxed_opaque_existential_1(v62, v63);
    sub_223729D88();

    __swift_destroy_boxed_opaque_existential_1Tm(v62);
  }

  else
  {

    v48 = sub_22372AC88();
    v49 = sub_22372B278();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v62[0] = v51;
      *v50 = 136315138;
      v52 = *(v30 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId);
      v53 = *(v30 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId + 8);

      v54 = sub_223623274(v52, v53, v62);

      *(v50 + 4) = v54;
      _os_log_impl(&dword_223620000, v48, v49, "MUX: Failed to create StoppedListeningForSpeechContinuationMessage for rcId: %s.", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v51);
      MEMORY[0x223DE8A80](v51, -1, -1);
      MEMORY[0x223DE8A80](v50, -1, -1);
    }
  }
}

uint64_t sub_223681814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v16 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9A0, &qword_223731970);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v16 - v9;
  v11 = *MEMORY[0x277D5CDD8];
  v12 = sub_223729DE8();
  v13 = *(v12 - 8);
  (*(v13 + 104))(v10, v11, v12);
  (*(v13 + 56))(v10, 0, 1, v12);
  sub_223729B18();
  sub_22372A728();
  sub_223729AF8();
  sub_22372A778();
  v14 = sub_223727408();
  (*(*(v14 - 8) + 56))(v6, 0, 1, v14);
  sub_223729B48();
  sub_22372A768();
  sub_223729B38();

  return sub_223729B28();
}

uint64_t sub_223681A20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v39 = a6;
  v40 = a7;
  v37[2] = a3;
  v38 = a5;
  v37[1] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08E978, &qword_22372D170);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v41 = v37 - v9;
  v10 = type metadata accessor for MUXUserAttributes(0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E990, &qword_22372FCF0);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v17 = v37 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  MEMORY[0x28223BE20](v18 - 8, v19);
  v21 = v37 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9A0, &qword_223731970);
  MEMORY[0x28223BE20](v22 - 8, v23);
  v25 = v37 - v24;
  v26 = *MEMORY[0x277D5CDE0];
  v27 = sub_223729DE8();
  v28 = *(v27 - 8);
  (*(v28 + 104))(v25, v26, v27);
  (*(v28 + 56))(v25, 0, 1, v27);
  sub_223728348();
  sub_22372A728();
  sub_2237282F8();
  sub_22372A778();
  v29 = sub_223727408();
  (*(*(v29 - 8) + 56))(v21, 0, 1, v29);
  sub_223728378();

  sub_223728368();
  v30 = v38;

  sub_223728308();

  sub_223728318();

  sub_223728338();
  v31 = v30 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedUserAttribute;
  swift_beginAccess();
  sub_22368509C(v31, v13);
  v32 = sub_22372A548();
  v33 = *(v32 - 8);
  (*(v33 + 32))(v17, v13, v32);
  (*(v33 + 56))(v17, 0, 1, v32);
  sub_223728358();
  v34 = v41;
  sub_22372A428();
  v35 = sub_22372A438();
  (*(*(v35 - 8) + 56))(v34, 0, 1, v35);
  return sub_223728328();
}

void sub_223681E7C(int64_t a1, NSObject *a2, uint64_t a3, int64_t a4, uint64_t a5)
{
  v7 = v6;
  v8 = v5;
  v119 = a5;
  v120 = a3;
  v12 = sub_22372A548();
  v121 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12, v13);
  v113 = v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v112 = v101 - v18;
  v20 = MEMORY[0x28223BE20](v17, v19);
  v22 = v101 - v21;
  MEMORY[0x28223BE20](v20, v23);
  v124 = v101 - v24;
  if (qword_281328E58 != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v25 = sub_22372AC98();
    v26 = __swift_project_value_buffer(v25, qword_28132B680);

    v126 = v26;
    v27 = sub_22372AC88();
    v28 = sub_22372B268();

    v29 = os_log_type_enabled(v27, v28);
    v123 = a4;
    v125 = v12;
    v109 = v22;
    if (v29)
    {
      v30 = a4;
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v127 = v32;
      *v31 = 136315394;
      *(v31 + 4) = sub_223623274(v120, v30, &v127);
      *(v31 + 12) = 2080;
      *(v31 + 14) = sub_223623274(a1, a2, &v127);
      _os_log_impl(&dword_223620000, v27, v28, "MUX: updateRequestContext objects for TRP ID: %s and requestId: %s", v31, 0x16u);
      swift_arrayDestroy();
      v33 = v32;
      v12 = v125;
      MEMORY[0x223DE8A80](v33, -1, -1);
      MEMORY[0x223DE8A80](v31, -1, -1);
    }

    v34 = *(v8 + qword_28132A1E0);
    if (!v34)
    {
      type metadata accessor for RequestControllerBridgeInternalErrors(0);
      sub_223685890(qword_28132A9A0, type metadata accessor for RequestControllerBridgeInternalErrors, byte_223731918);
      swift_allocError();
      sub_22372A778();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      return;
    }

    v110 = qword_28132A208;
    a2 = *(*(v8 + qword_28132A208) + 72);
    if (!a2)
    {
      break;
    }

    v108 = v8;
    v101[1] = v7;
    v22 = (v119 + 64);
    v35 = 1 << *(v119 + 32);
    v36 = -1;
    if (v35 < 64)
    {
      v36 = ~(-1 << v35);
    }

    v8 = v36 & *(v119 + 64);
    a1 = (v35 + 63) >> 6;
    v111 = v121 + 2;
    v122 = v121 + 1;
    v105 = v121 + 4;
    v104 = v34;
    v121 = a2;

    v37 = 0;
    *&v38 = 136315138;
    v103 = v38;
    *&v38 = 136315394;
    v102 = v38;
    v7 = v124;
    v106 = a1;
    v107 = v22;
    while (v8)
    {
      a4 = v37;
LABEL_16:
      v39 = __clz(__rbit64(v8)) | (a4 << 6);
      v40 = (*(v119 + 48) + 16 * v39);
      v42 = *v40;
      v41 = v40[1];
      v43 = *(*(v119 + 56) + 8 * v39);

      v116 = sub_223728CF8();
      v45 = v44;
      v118 = v43;

      sub_22372A508();
      v46 = [v121 spIdKnownUserScores];
      if (!v46)
      {
        __break(1u);
        return;
      }

      v47 = v46;
      sub_223685980();
      v48 = sub_22372AF58();

      if (*(v48 + 16))
      {
        v49 = sub_2236261A0(v42, v41);
        v51 = v50;

        if (v51)
        {
          v52 = *(*(v48 + 56) + 8 * v49);

          LODWORD(v117) = [v52 intValue];

          goto LABEL_26;
        }
      }

      else
      {
      }

      if ((sub_22372AA18() & 1) == 0)
      {
        v53 = v109;
        (v111->isa)(v109, v7, v12);
        v54 = sub_22372AC88();
        v55 = sub_22372B278();
        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          v117 = swift_slowAlloc();
          v127 = v117;
          *v56 = v103;
          sub_223685890(&qword_28132B4E8, MEMORY[0x277D5D298], MEMORY[0x277D5D2C0]);
          v57 = sub_22372B6B8();
          v59 = v58;
          (v122->isa)(v109, v12);
          v60 = sub_223623274(v57, v59, &v127);

          *(v56 + 4) = v60;
          _os_log_impl(&dword_223620000, v54, v55, "MUX: Encountered known userId: %s in speechPackage for which no VoiceIdScores are available. This can lead to issues for User Selection. Defaulting to -1 for now.", v56, 0xCu);
          v61 = v117;
          __swift_destroy_boxed_opaque_existential_1Tm(v117);
          MEMORY[0x223DE8A80](v61, -1, -1);
          MEMORY[0x223DE8A80](v56, -1, -1);
        }

        else
        {

          (v122->isa)(v53, v12);
        }
      }

      LODWORD(v117) = -1;
LABEL_26:
      v8 &= v8 - 1;
      v62 = v123;

      v63 = sub_22372AC88();
      v64 = sub_22372B268();

      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v127 = v66;
        *v65 = v102;
        v67 = sub_223623274(v116, v45, &v127);

        *(v65 + 4) = v67;
        *(v65 + 12) = 2080;
        *(v65 + 14) = sub_223623274(v120, v62, &v127);
        _os_log_impl(&dword_223620000, v63, v64, "MUX: Caching TRP ID: %s from Multi-user TRP ID: %s.", v65, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DE8A80](v66, -1, -1);
        MEMORY[0x223DE8A80](v65, -1, -1);
      }

      else
      {
      }

      v116 = *(v108 + v110);

      v115 = [v121 userIdentityClassification];
      sub_22372A418();
      v114 = sub_22372B308();
      v68 = v112;
      isa = v111->isa;
      v70 = v125;
      (v111->isa)(v112, v124, v125);
      type metadata accessor for MUXSpeechTRPCandidateContext(0);
      v71 = swift_allocObject();
      v72 = v118;
      *(v71 + OBJC_IVAR____TtC24RequestDispatcherBridges28MUXSpeechTRPCandidateContext_trpMessage) = v118;
      v73 = v113;
      isa(v113, v68, v70);
      v74 = v72;
      v75 = sub_223728CF8();
      v77 = v76;
      v118 = v122->isa;
      v118(v68, v70);
      *(v71 + OBJC_IVAR____TtC24RequestDispatcherBridges22MUXTRPCandidateContext_tcuMappedNLResponse) = 0;
      *(v71 + OBJC_IVAR____TtC24RequestDispatcherBridges22MUXTRPCandidateContext_tcuMappedNLRepetitions) = 0;
      *(v71 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlUserParses) = 0;
      v78 = OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlResponseStatusCode;
      v79 = sub_223727678();
      (*(*(v79 - 8) + 56))(v71 + v78, 1, 1, v79);
      v80 = OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlLanguageVariantResult;
      v81 = sub_223727758();
      (*(*(v81 - 8) + 56))(v71 + v80, 1, 1, v81);
      *(v71 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_candidateState) = 0;
      *(v71 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedForServerFallback) = 0;
      *(v71 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_serverUserSelectionPending) = 0;
      *(v71 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_isMitigated) = 0;
      v82 = OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlRerunStartTime;
      v83 = sub_22372AEE8();
      (*(*(v83 - 8) + 56))(v71 + v82, 1, 1, v83);
      v84 = v71 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlRerunTimeInMs;
      *v84 = 0;
      *(v84 + 8) = 1;
      v85 = v71 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedUserAttribute;
      (v105->isa)(v71 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedUserAttribute, v73, v70);
      v86 = type metadata accessor for MUXUserAttributes(0);
      *(v85 + v86[5]) = v115;
      *(v85 + v86[6]) = v117;
      *(v85 + v86[8]) = v114;
      *(v85 + v86[7]) = 0;
      *(v85 + v86[9]) = 2;
      *(v85 + v86[10]) = 2;
      v87 = (v71 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_topLevelCandidateId);
      v88 = v123;
      *v87 = v120;
      v87[1] = v88;
      v89 = (v71 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId);
      *v89 = v75;
      v89[1] = v77;

      sub_2236B4024(v71);

      a2 = sub_22372AC88();
      v90 = sub_22372B268();

      if (os_log_type_enabled(a2, v90))
      {
        v91 = swift_slowAlloc();
        v92 = swift_slowAlloc();
        v127 = v92;
        *v91 = v103;

        v93 = sub_2236B22BC();
        v117 = v74;
        v95 = v94;

        v96 = sub_223623274(v93, v95, &v127);

        *(v91 + 4) = v96;
        _os_log_impl(&dword_223620000, a2, v90, "MUX: Created %s", v91, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v92);
        MEMORY[0x223DE8A80](v92, -1, -1);
        MEMORY[0x223DE8A80](v91, -1, -1);
      }

      else
      {
      }

      v7 = v124;
      v12 = v125;
      v118(v124, v125);
      v37 = a4;
      a1 = v106;
      v22 = v107;
    }

    while (1)
    {
      a4 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      if (a4 >= a1)
      {

        return;
      }

      v8 = *&v22[8 * a4];
      ++v37;
      if (v8)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_37:
    swift_once();
  }

  v97 = v34;
  v98 = sub_22372AC88();
  v99 = sub_22372B278();
  if (os_log_type_enabled(v98, v99))
  {
    v100 = swift_slowAlloc();
    *v100 = 0;
    _os_log_impl(&dword_223620000, v98, v99, "MUX: updateRequestContext failed because latestVoiceIdScoreCard is nil", v100, 2u);
    MEMORY[0x223DE8A80](v100, -1, -1);
  }
}

void sub_223682B78(uint64_t a1, void *a2)
{
  if (qword_281328E68 != -1)
  {
    swift_once();
  }

  v3 = sub_22372AC98();
  __swift_project_value_buffer(v3, qword_28132B698);
  v4 = a2;
  oslog = sub_22372AC88();
  v5 = sub_22372B268();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    v8 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F990, &unk_22372FDA0);
    v9 = sub_22372B038();
    v11 = sub_223623274(v9, v10, &v13);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_223620000, oslog, v5, "MUX: Sent VoiceIdentificationSignal, error: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x223DE8A80](v7, -1, -1);
    MEMORY[0x223DE8A80](v6, -1, -1);
  }

  else
  {
  }
}

void sub_223682D1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v7 = v6;
  v61 = sub_22372A548();
  v14 = *(v61 - 8);
  v16 = MEMORY[0x28223BE20](v61, v15);
  v18 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v60 - v20;
  v62 = v7;
  v63 = a1;
  v64 = a2;
  v65 = a3;
  v66 = a4;
  v67 = a5;
  v68 = a6;
  v22 = objc_allocWithZone(sub_223729228());
  v23 = sub_2237291A8();
  if (v23)
  {
    v60 = v23;
    v24 = *(v7 + qword_28132A208);
    swift_beginAccess();
    if (*(*(v24 + 48) + 16))
    {

      sub_2236261A0(a4, a5);
      if (v25)
      {

        type metadata accessor for MUXTRPCandidateContext(0);
        v26 = swift_dynamicCastClass();
        if (v26)
        {
          v27 = v26;

          sub_2236B1FA4(1u);

          *(v27 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_candidateState) = 1;

LABEL_18:
          v46 = v61;
          if (qword_281328E58 != -1)
          {
            swift_once();
          }

          v47 = sub_22372AC98();
          __swift_project_value_buffer(v47, qword_28132B680);
          (*(v14 + 16))(v21, a3, v46);

          v48 = sub_22372AC88();
          v49 = sub_22372B268();

          if (os_log_type_enabled(v48, v49))
          {
            v50 = swift_slowAlloc();
            v51 = swift_slowAlloc();
            v69[0] = v51;
            *v50 = 136315394;
            v52 = sub_22372A768();
            v54 = sub_223623274(v52, v53, v69);

            *(v50 + 4) = v54;
            *(v50 + 12) = 2080;
            v55 = sub_22372A518();
            v57 = v56;
            (*(v14 + 8))(v21, v46);
            v58 = sub_223623274(v55, v57, v69);

            *(v50 + 14) = v58;
            _os_log_impl(&dword_223620000, v48, v49, "MUX: Going to post TRPCandidateForPlannerMessage for root request: %s  and selected UserId %s", v50, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x223DE8A80](v51, -1, -1);
            MEMORY[0x223DE8A80](v50, -1, -1);
          }

          else
          {

            (*(v14 + 8))(v21, v46);
          }

          sub_22372A758();
          __swift_project_boxed_opaque_existential_1(v69, v69[3]);
          v59 = v60;
          sub_223729D88();

          __swift_destroy_boxed_opaque_existential_1Tm(v69);
          return;
        }
      }

      else
      {
      }
    }

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v41 = sub_22372AC98();
    __swift_project_value_buffer(v41, qword_28132B680);

    v42 = sub_22372AC88();
    v43 = sub_22372B278();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v69[0] = v45;
      *v44 = 136315138;
      *(v44 + 4) = sub_223623274(a4, a5, v69);
      _os_log_impl(&dword_223620000, v42, v43, "MUX: Failed to update candidateState. MUXTRPCandidateContext for TRPCandidateId %s not found", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v45);
      MEMORY[0x223DE8A80](v45, -1, -1);
      MEMORY[0x223DE8A80](v44, -1, -1);
    }

    goto LABEL_18;
  }

  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v28 = sub_22372AC98();
  __swift_project_value_buffer(v28, qword_28132B680);
  v29 = v61;
  (*(v14 + 16))(v18, a3, v61);

  v30 = sub_22372AC88();
  v31 = sub_22372B278();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v69[0] = v33;
    *v32 = 136315394;
    v34 = sub_22372A768();
    v36 = sub_223623274(v34, v35, v69);

    *(v32 + 4) = v36;
    *(v32 + 12) = 2080;
    v37 = sub_22372A518();
    v39 = v38;
    (*(v14 + 8))(v18, v29);
    v40 = sub_223623274(v37, v39, v69);

    *(v32 + 14) = v40;
    _os_log_impl(&dword_223620000, v30, v31, "MUX: Failed to create TRPCandidateForPlannerMessage for root request: %s and selected userId %s", v32, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DE8A80](v33, -1, -1);
    MEMORY[0x223DE8A80](v32, -1, -1);
  }

  else
  {

    (*(v14 + 8))(v18, v29);
  }
}

uint64_t sub_22368340C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a6;
  v30 = a7;
  v27 = a3;
  v28 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E990, &qword_22372FCF0);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v27 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9A0, &qword_223731970);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v19 = &v27 - v18;
  v20 = *MEMORY[0x277D5CDC8];
  v21 = sub_223729DE8();
  v22 = *(v21 - 8);
  (*(v22 + 104))(v19, v20, v21);
  (*(v22 + 56))(v19, 0, 1, v21);
  sub_2237299B8();
  sub_22372A728();
  sub_223729998();
  sub_22372A778();
  v23 = sub_223727408();
  (*(*(v23 - 8) + 56))(v15, 0, 1, v23);
  sub_2237299E8();

  sub_2237299D8();
  v24 = sub_22372A548();
  v25 = *(v24 - 8);
  (*(v25 + 16))(v11, v28, v24);
  (*(v25 + 56))(v11, 0, 1, v24);
  sub_2237299C8();
  sub_223729CC8();
  sub_2237299F8();

  return sub_2237299A8();
}

uint64_t sub_2236836F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a6;
  v30 = a8;
  v27 = a3;
  v28 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E990, &qword_22372FCF0);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v27 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9A0, &qword_223731970);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v19 = &v27 - v18;
  v20 = *MEMORY[0x277D5CDD8];
  v21 = sub_223729DE8();
  v22 = *(v21 - 8);
  (*(v22 + 104))(v19, v20, v21);
  (*(v22 + 56))(v19, 0, 1, v21);
  sub_2237291E8();
  sub_22372A728();
  sub_2237291B8();
  sub_22372A778();
  v23 = sub_223727408();
  (*(*(v23 - 8) + 56))(v15, 0, 1, v23);
  sub_223729218();

  sub_223729208();
  v24 = sub_22372A548();
  v25 = *(v24 - 8);
  (*(v25 + 16))(v11, v28, v24);
  (*(v25 + 56))(v11, 0, 1, v24);
  sub_2237291F8();

  sub_2237291C8();
  sub_223728C58();
  return sub_2237291D8();
}

uint64_t sub_2236839E4()
{
  v1[17] = v0;
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E990, &qword_22372FCF0) - 8);
  v1[18] = v2;
  v1[19] = *(v2 + 64);
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v3 = sub_223727408();
  v1[22] = v3;
  v1[23] = *(v3 - 8);
  v1[24] = swift_task_alloc();
  v1[25] = type metadata accessor for MUXUserAttributes(0);
  v1[26] = swift_task_alloc();
  v4 = sub_22372A548();
  v1[27] = v4;
  v5 = *(v4 - 8);
  v1[28] = v5;
  v1[29] = *(v5 + 64);
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_223683BBC, 0, 0);
}

uint64_t sub_223683BBC()
{
  v113 = v0;
  v1 = *(v0 + 136);
  v2 = qword_28132A208;
  *(v0 + 256) = qword_28132A208;
  v3 = *(v1 + v2);
  v5 = v3[4];
  v4 = v3[5];
  *(v0 + 264) = v4;
  if (!v4)
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v26 = sub_22372AC98();
    __swift_project_value_buffer(v26, qword_28132B680);

    v27 = sub_22372AC88();
    v28 = sub_22372B278();

    if (!os_log_type_enabled(v27, v28))
    {
      goto LABEL_18;
    }

    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v112 = v30;
    *v29 = 136315138;
    v31 = sub_22372A768();
    v33 = sub_223623274(v31, v32, &v112);

    *(v29 + 4) = v33;
    v34 = "Instrumentation: For requestContext with requestId %s, unable to find selectedTopLevelCandidateId, we lost the cache!";
    goto LABEL_17;
  }

  v6 = *(v1 + qword_28132A1E0);
  *(v0 + 272) = v6;
  if (!v6)
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v35 = sub_22372AC98();
    __swift_project_value_buffer(v35, qword_28132B680);

    v27 = sub_22372AC88();
    v28 = sub_22372B278();

    if (!os_log_type_enabled(v27, v28))
    {
      goto LABEL_18;
    }

    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v112 = v30;
    *v29 = 136315138;
    v36 = sub_22372A768();
    v38 = sub_223623274(v36, v37, &v112);

    *(v29 + 4) = v38;
    v34 = "Instrumentation: No MUXRequestContext for requestId %s, unable to log request completion.";
LABEL_17:
    _os_log_impl(&dword_223620000, v27, v28, v34, v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    MEMORY[0x223DE8A80](v30, -1, -1);
    MEMORY[0x223DE8A80](v29, -1, -1);
LABEL_18:

    goto LABEL_47;
  }

  swift_beginAccess();
  v7 = v3[8];
  v8 = *(v7 + 16);

  v9 = v6;
  if (v8)
  {

    v10 = sub_2236261A0(v5, v4);
    if (v11)
    {
      v108 = v5;
      v12 = *(v0 + 248);
      v13 = *(v0 + 224);
      v110 = *(v0 + 216);
      v14 = *(v0 + 208);
      v15 = *(*(v7 + 56) + 8 * v10);
      *(v0 + 280) = v15;

      v16 = OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedUserAttribute;
      *(v0 + 288) = OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedUserAttribute;
      swift_beginAccess();
      v109 = v15;
      v107 = v16;
      sub_22368509C(v15 + v16, v14);
      v17 = *(v13 + 32);
      *(v0 + 296) = v17;
      *(v0 + 304) = (v13 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      v17(v12, v14, v110);
      v111 = v9;
      v18 = sub_22372AA08();
      *(v0 + 312) = v18;
      v19 = *(v13 + 8);
      *(v0 + 320) = v19;
      *(v0 + 328) = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v19(v12, v110);
      if (v18)
      {
        v20 = [v18 loggableMultiUserSharedUserId];
        if (v20)
        {

          v21 = [v18 sharedUserId];
          if (v21)
          {
            v22 = v21;
            v23 = sub_22372AFE8();
            v25 = v24;
          }

          else
          {
            v23 = 0;
            v25 = 0;
          }

          v78 = [v18 loggableMultiUserSharedUserId];
          if (v78)
          {
            v79 = v78;
            v80 = sub_22372AFE8();
            v82 = v81;

            v83 = v111;
            if (v25)
            {
              if (v82)
              {
                if (v23 == v80 && v25 == v82)
                {

                  v84 = 1;
                }

                else
                {
                  v84 = sub_22372B6E8();
                }

                goto LABEL_54;
              }

              goto LABEL_43;
            }

            if (v82)
            {
              v84 = 0;
              goto LABEL_54;
            }
          }

          else
          {
            v83 = v111;
            if (v25)
            {
LABEL_43:
              v84 = 0;
LABEL_54:

              goto LABEL_55;
            }
          }

          v84 = 1;
LABEL_55:
          *(v0 + 376) = v84 & 1;
          v88 = *(v0 + 184);
          v87 = *(v0 + 192);
          v89 = *(v0 + 176);
          *(v0 + 336) = sub_22372A9E8();
          v90 = v83;
          sub_22372A778();
          v91 = sub_2237273B8();
          v93 = v92;
          *(v0 + 344) = v92;
          (*(v88 + 8))(v87, v89);
          v94 = [objc_allocWithZone(MEMORY[0x277CEF318]) init];
          *(v0 + 352) = v94;
          v95 = swift_task_alloc();
          *(v0 + 360) = v95;
          *v95 = v0;
          v95[1] = sub_223684884;

          return MEMORY[0x2821C5610](v6, v91, v93, v94);
        }

        v104 = v17;
        v106 = v19;
        if (qword_281328E58 != -1)
        {
          swift_once();
        }

        v65 = sub_22372AC98();
        __swift_project_value_buffer(v65, qword_28132B680);

        v50 = sub_22372AC88();
        v66 = sub_22372B278();

        if (os_log_type_enabled(v50, v66))
        {
          v67 = *(v0 + 248);
          v68 = *(v0 + 208);
          v96 = *(v0 + 216);
          loga = v50;
          v69 = swift_slowAlloc();
          v100 = swift_slowAlloc();
          v112 = v100;
          *v69 = 136315650;
          v70 = sub_22372A768();
          v98 = v66;
          v72 = sub_223623274(v70, v71, &v112);

          *(v69 + 4) = v72;
          *(v69 + 12) = 2080;
          sub_22368509C(v109 + v107, v68);
          v104(v67, v68, v96);
          sub_223685890(&qword_28132B4E8, MEMORY[0x277D5D298], MEMORY[0x277D5D2C0]);
          v73 = sub_22372B6B8();
          v75 = v74;
          v106(v67, v96);
          v76 = sub_223623274(v73, v75, &v112);

          *(v69 + 14) = v76;
          *(v69 + 22) = 2080;
          v77 = sub_223623274(v108, v4, &v112);

          *(v69 + 24) = v77;
          v64 = loga;
          _os_log_impl(&dword_223620000, loga, v98, "Instrumentation: For requestContext with requestId %s, unable to find loggable shared User Id for selected user id: %s and selectedTopLevelCandidateId %s.", v69, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x223DE8A80](v100, -1, -1);
          MEMORY[0x223DE8A80](v69, -1, -1);

          goto LABEL_33;
        }
      }

      else
      {
        v103 = v17;
        v105 = v19;
        if (qword_281328E58 != -1)
        {
          swift_once();
        }

        v49 = sub_22372AC98();
        __swift_project_value_buffer(v49, qword_28132B680);

        v50 = sub_22372AC88();
        v51 = sub_22372B278();

        if (os_log_type_enabled(v50, v51))
        {
          v52 = *(v0 + 248);
          v53 = *(v0 + 208);
          v54 = *(v0 + 216);
          log = v50;
          v55 = swift_slowAlloc();
          v99 = swift_slowAlloc();
          v112 = v99;
          *v55 = 136315650;
          v56 = sub_22372A768();
          v97 = v51;
          v58 = sub_223623274(v56, v57, &v112);

          *(v55 + 4) = v58;
          *(v55 + 12) = 2080;
          sub_22368509C(v109 + v107, v53);
          v103(v52, v53, v54);
          sub_223685890(&qword_28132B4E8, MEMORY[0x277D5D298], MEMORY[0x277D5D2C0]);
          v59 = sub_22372B6B8();
          v61 = v60;
          v105(v52, v54);
          v62 = sub_223623274(v59, v61, &v112);

          *(v55 + 14) = v62;
          *(v55 + 22) = 2080;
          v63 = sub_223623274(v108, v4, &v112);

          *(v55 + 24) = v63;
          v64 = log;
          _os_log_impl(&dword_223620000, log, v97, "Instrumentation: For requestContext with requestId %s, unable to find Home Member Info for selected user id: %s and selectedTopLevelCandidateId %s.", v55, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x223DE8A80](v99, -1, -1);
          MEMORY[0x223DE8A80](v55, -1, -1);

LABEL_33:

          goto LABEL_47;
        }
      }

LABEL_46:

      goto LABEL_47;
    }
  }

  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v39 = sub_22372AC98();
  __swift_project_value_buffer(v39, qword_28132B680);

  v40 = sub_22372AC88();
  v41 = sub_22372B278();

  if (!os_log_type_enabled(v40, v41))
  {

    goto LABEL_46;
  }

  v42 = swift_slowAlloc();
  v43 = v9;
  v44 = swift_slowAlloc();
  v112 = v44;
  *v42 = 136315394;
  v45 = sub_22372A768();
  v47 = sub_223623274(v45, v46, &v112);

  *(v42 + 4) = v47;
  *(v42 + 12) = 2080;
  v48 = sub_223623274(v5, v4, &v112);

  *(v42 + 14) = v48;
  _os_log_impl(&dword_223620000, v40, v41, "Instrumentation: For requestContext with requestId %s, unable to find selected RC Context for given selectedTopLevelCandidateId %s.", v42, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x223DE8A80](v44, -1, -1);
  MEMORY[0x223DE8A80](v42, -1, -1);

LABEL_47:

  v85 = *(v0 + 8);

  return v85();
}

uint64_t sub_223684884(uint64_t a1)
{
  v2 = *(*v1 + 352);
  v3 = *(*v1 + 272);
  *(*v1 + 368) = a1;

  return MEMORY[0x2822009F8](sub_2236849DC, 0, 0);
}

id sub_2236849DC(uint64_t a1)
{
  v80 = v1;
  v2 = v1[39];
  v3 = v1[35];
  v4 = v1[32];
  v5 = v1[25];
  v6 = v1[21];
  v7 = v1[17];
  v8 = v3 + v1[36];
  v78 = *(v7 + qword_28132A1D8);
  v9 = sub_22372A748();
  v75 = sub_22372A768();
  v77 = v10;
  if (*(v3 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlRerunTimeInMs + 8))
  {
    v11 = 0;
  }

  else
  {
    v11 = *(v3 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlRerunTimeInMs);
  }

  v74 = v11;
  v12 = *(*(v7 + v4) + 72);
  v13 = qword_28132B8A8;
  swift_beginAccess();
  sub_223634890(v7 + v13, v6, &unk_27D08E990, &qword_22372FCF0);
  v73 = v12;
  v76 = v12;
  v72 = sub_22372AA28();
  v14 = *(v8 + *(v5 + 20));
  result = [v2 sharedUserId];
  if (result)
  {
    v16 = result;
    v17 = v1[32];
    v18 = v1[17];

    sub_22372AFE8();

    sub_22372A508();
    v19 = sub_223727EF8();
    v20 = *(*(v18 + v17) + 80);
    if ([v9 respondsToSelector_])
    {
      v67 = v1[46];
      v64 = v1[42];
      v62 = *(v1 + 376);
      v63 = v1[37];
      v21 = v1[31];
      v66 = v19;
      v22 = v1[30];
      v24 = v1[27];
      v23 = v1[28];
      v59 = v24;
      v60 = v21;
      v26 = v1[20];
      v25 = v1[21];
      v70 = v25;
      v71 = v1[40];
      v57 = v26;
      v58 = v1[29];
      v61 = v14;
      v68 = v9;
      v28 = v1[18];
      v27 = v1[19];
      v65 = v20;
      v69 = v22;
      sub_22372A518();
      sub_223634890(v25, v26, &unk_27D08E990, &qword_22372FCF0);
      (*(v23 + 16))(v21, v22, v24);
      v29 = (*(v28 + 80) + 56) & ~*(v28 + 80);
      v30 = v29 + v27;
      v31 = (v30 + 9) & 0xFFFFFFFFFFFFFFF8;
      v32 = (v31 + 15) & 0xFFFFFFFFFFFFFFF8;
      v33 = (*(v23 + 80) + v32 + 8) & ~*(v23 + 80);
      v34 = (v33 + v58) & 0xFFFFFFFFFFFFFFF8;
      v35 = swift_allocObject();
      *(v35 + 2) = v78;
      *(v35 + 3) = v75;
      *(v35 + 4) = v77;
      *(v35 + 5) = v74;
      *(v35 + 6) = v73;
      sub_223685100(v57, &v35[v29]);
      v36 = &v35[v30];
      *v36 = v72 & 1;
      v36[1] = v62;
      *&v35[v31] = v61;
      *&v35[v32] = v64;
      v63(&v35[v33], v60, v24);
      v35[v33 + v58] = v66 & 1;
      *&v35[v34 + 8] = v20;
      *&v35[(v34 + 23) & 0xFFFFFFFFFFFFFFF8] = v67;
      v37 = v76;
      v38 = v65;

      v39 = sub_22372AFD8();

      v1[6] = sub_223685170;
      v1[7] = v35;
      v1[2] = MEMORY[0x277D85DD0];
      v1[3] = 1107296256;
      v1[4] = sub_22368503C;
      v1[5] = &block_descriptor_0;
      v40 = _Block_copy(v1 + 2);

      [v68 fetchDeviceAndUserIdsForSharedUserId:v39 withCallback:v40];
      _Block_release(v40);

      swift_unknownObjectRelease();
      v71(v69, v59);
      sub_223626478(v70, &unk_27D08E990, &qword_22372FCF0);
    }

    else
    {
      v41 = v1[40];
      v42 = v1[30];
      v43 = v1[27];
      v44 = v1[21];

      swift_unknownObjectRelease();
      v41(v42, v43);
      sub_223626478(v44, &unk_27D08E990, &qword_22372FCF0);
    }

    if (qword_27D08E2C8 != -1)
    {
      swift_once();
    }

    v45 = sub_22372AC98();
    __swift_project_value_buffer(v45, qword_27D097070);

    v46 = sub_22372AC88();
    v47 = sub_22372B268();

    v48 = os_log_type_enabled(v46, v47);
    v49 = v1[39];
    v50 = v1[34];
    if (v48)
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v79 = v52;
      *v51 = 136315138;
      v53 = sub_22372A768();
      v55 = sub_223623274(v53, v54, &v79);

      *(v51 + 4) = v55;
      _os_log_impl(&dword_223620000, v46, v47, "Instrumentation: Successfully logRequestCompleted() for requestId %s.", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v52);
      MEMORY[0x223DE8A80](v52, -1, -1);
      MEMORY[0x223DE8A80](v51, -1, -1);
    }

    else
    {
    }

    v56 = v1[1];

    return v56();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22368503C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_22368509C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MUXUserAttributes(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_223685100(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E990, &qword_22372FCF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_223685170(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E990, &qword_22372FCF0) - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = (v5 + 9) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_22372A548() - 8);
  v9 = (*(v8 + 80) + v7 + 8) & ~*(v8 + 80);
  v10 = v9 + *(v8 + 64);
  return sub_2236914C4(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), v1 + v4, *(v1 + v5), *(v1 + v5 + 1), *(v1 + v6), *(v1 + v7), v1 + v9, *(v1 + v10), *(v1 + (v10 & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + (((v10 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2236852F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MUXUserAttributes(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_223685354(uint64_t a1)
{
  v2 = type metadata accessor for MUXUserAttributes(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2236853D0(uint64_t a1)
{
  type metadata accessor for MUXTRPCandidateContext(0);
  if (!swift_dynamicCastClass())
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v12 = sub_22372AC98();
    __swift_project_value_buffer(v12, qword_28132B680);
    v13 = sub_22372AC88();
    v14 = sub_22372B278();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_223620000, v13, v14, "MUX: Re trigger is only for Speech Requests.", v15, 2u);
      MEMORY[0x223DE8A80](v15, -1, -1);
    }

    return 0;
  }

  if (*(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlUserParses))
  {
    return 0;
  }

  if (*(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_candidateState) - 2 < 2)
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v2 = sub_22372AC98();
    __swift_project_value_buffer(v2, qword_28132B680);

    v3 = sub_22372AC88();
    v4 = sub_22372B278();

    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_24;
    }

    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v31 = v6;
    *v5 = 136315138;
    v7 = a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId;
    v8 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId);
    v9 = *(v7 + 8);

    v10 = sub_223623274(v8, v9, &v31);

    *(v5 + 4) = v10;
    v11 = "MUX: Encountered highly unusual situation where rcId: %s should have NL results but does not. File a radar to Siri Orchestration.";
LABEL_23:
    _os_log_impl(&dword_223620000, v3, v4, v11, v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x223DE8A80](v6, -1, -1);
    MEMORY[0x223DE8A80](v5, -1, -1);
LABEL_24:

    return 0;
  }

  if (*(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_candidateState))
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v26 = sub_22372AC98();
    __swift_project_value_buffer(v26, qword_28132B680);

    v3 = sub_22372AC88();
    v4 = sub_22372B268();

    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_24;
    }

    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v31 = v6;
    *v5 = 136315138;
    v27 = a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId;
    v28 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId);
    v29 = *(v27 + 8);

    v30 = sub_223623274(v28, v29, &v31);

    *(v5 + 4) = v30;
    v11 = "MUX: NL has already been triggered for rcID: %s. Proceeding to wait for results.";
    goto LABEL_23;
  }

  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v16 = sub_22372AC98();
  __swift_project_value_buffer(v16, qword_28132B680);

  v17 = sub_22372AC88();
  v18 = sub_22372B268();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v31 = v20;
    *v19 = 136315138;
    v21 = a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId;
    v22 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId);
    v23 = *(v21 + 8);

    v24 = sub_223623274(v22, v23, &v31);

    *(v19 + 4) = v24;
    _os_log_impl(&dword_223620000, v17, v18, "MUX: NL needs to be triggered for topLevelId: %s as it was never triggered.", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x223DE8A80](v20, -1, -1);
    MEMORY[0x223DE8A80](v19, -1, -1);
  }

  return 1;
}

uint64_t sub_223685890(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2236858D8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_223624EA4;

  return sub_22367FB08(a1, v5, v4);
}

unint64_t sub_223685980()
{
  result = qword_27D08EAE0;
  if (!qword_27D08EAE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D08EAE0);
  }

  return result;
}

uint64_t LocalIFSessionClient.init(configuration:)(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = sub_22372AE98();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_223685B28, 0, 0);
}

uint64_t sub_223685B28()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  sub_223624E58();
  (*(v2 + 104))(v1, *MEMORY[0x277D851B8], v3);
  v5 = sub_22372B2F8();
  v0[9] = v5;
  (*(v2 + 8))(v1, v3);
  v6 = sub_223687724(&unk_281328D40, sub_223624E58, MEMORY[0x277D85270]);
  v7 = swift_task_alloc();
  v0[10] = v7;
  *(v7 + 16) = v4;
  v8 = swift_task_alloc();
  v0[11] = v8;
  v9 = sub_223727B18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EAD0, &qword_22372CA80);
  *v8 = v0;
  v8[1] = sub_223685CE4;

  return MEMORY[0x282200828](v0 + 2, v5, v6, 0, 0, &unk_22372EC60, v7, v9);
}

uint64_t sub_223685CE4()
{
  v2 = *(*v1 + 72);

  if (v0)
  {
    v3 = sub_223685EC8;
  }

  else
  {

    v3 = sub_223685E1C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_223685E1C()
{
  v1 = *(v0 + 40);
  **(v0 + 32) = *(v0 + 16);
  v2 = sub_223727E78();
  (*(*(v2 - 8) + 8))(v1, v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_223685EC8()
{
  v1 = *(v0 + 40);

  v2 = sub_223727E78();
  (*(*(v2 - 8) + 8))(v1, v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t LocalIFSessionClient.startSession(id:config:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a3;
  v5[6] = a4;
  v5[3] = a1;
  v5[4] = a2;
  v6 = sub_22372AE98();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v7 = swift_task_alloc();
  v8 = *v4;
  v5[9] = v7;
  v5[10] = v8;

  return MEMORY[0x2822009F8](sub_223686044, 0, 0);
}

uint64_t sub_223686044()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  v5 = *(v0 + 48);
  v13 = *(v0 + 32);
  sub_223624E58();
  (*(v4 + 104))(v1, *MEMORY[0x277D851B8], v3);
  v6 = sub_22372B2F8();
  *(v0 + 88) = v6;
  (*(v4 + 8))(v1, v3);
  v7 = sub_223687724(&unk_281328D40, sub_223624E58, MEMORY[0x277D85270]);
  v8 = swift_task_alloc();
  *(v0 + 96) = v8;
  *(v8 + 16) = v2;
  *(v8 + 24) = v13;
  *(v8 + 40) = v5;
  v9 = swift_task_alloc();
  *(v0 + 104) = v9;
  v10 = sub_223727408();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EAD0, &qword_22372CA80);
  *v9 = v0;
  v9[1] = sub_223686224;
  v11 = *(v0 + 24);

  return MEMORY[0x282200828](v11, v6, v7, 0, 0, &unk_22372EC80, v8, v10);
}

uint64_t sub_223686224()
{
  v2 = *(*v1 + 88);
  v3 = *v1;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_223686390, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_223686390()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t LocalIFSessionClient.endSession(id:)(uint64_t a1)
{
  v2[3] = a1;
  v3 = sub_22372AE98();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v4 = swift_task_alloc();
  v5 = *v1;
  v2[6] = v4;
  v2[7] = v5;

  return MEMORY[0x2822009F8](sub_2236864C4, 0, 0);
}

uint64_t sub_2236864C4()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[3];
  sub_223624E58();
  (*(v4 + 104))(v1, *MEMORY[0x277D851B8], v3);
  v6 = sub_22372B2F8();
  v0[8] = v6;
  (*(v4 + 8))(v1, v3);
  v7 = sub_223687724(&unk_281328D40, sub_223624E58, MEMORY[0x277D85270]);
  v8 = swift_task_alloc();
  v0[9] = v8;
  *(v8 + 16) = v2;
  *(v8 + 24) = v5;
  v9 = swift_task_alloc();
  v0[10] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EAD0, &qword_22372CA80);
  *v9 = v0;
  v9[1] = sub_223686684;
  v11 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200828](v10, v6, v7, 0, 0, &unk_22372EC98, v8, v11);
}

uint64_t sub_223686684()
{
  v2 = *(*v1 + 64);

  if (v0)
  {
    v3 = sub_223686820;
  }

  else
  {

    v3 = sub_2236867BC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2236867BC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_223686820()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t LocalIFSessionClient.send(message:)(uint64_t a1)
{
  v2[3] = a1;
  v3 = sub_22372AE98();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v4 = swift_task_alloc();
  v5 = *v1;
  v2[6] = v4;
  v2[7] = v5;

  return MEMORY[0x2822009F8](sub_223686954, 0, 0);
}

uint64_t sub_223686954()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[3];
  sub_223624E58();
  (*(v4 + 104))(v1, *MEMORY[0x277D851B8], v3);
  v6 = sub_22372B2F8();
  v0[8] = v6;
  (*(v4 + 8))(v1, v3);
  v7 = sub_223687724(&unk_281328D40, sub_223624E58, MEMORY[0x277D85270]);
  v8 = swift_task_alloc();
  v0[9] = v8;
  *(v8 + 16) = v2;
  *(v8 + 24) = v5;
  v9 = swift_task_alloc();
  v0[10] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EAD0, &qword_22372CA80);
  *v9 = v0;
  v9[1] = sub_22362C9A0;
  v11 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200828](v10, v6, v7, 0, 0, &unk_22372ECB0, v8, v11);
}

uint64_t LocalIFSessionClient.fetchSessionClientId()(uint64_t a1)
{
  v2[3] = a1;
  v3 = sub_22372AE98();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v4 = swift_task_alloc();
  v5 = *v1;
  v2[6] = v4;
  v2[7] = v5;

  return MEMORY[0x2822009F8](sub_223686BD8, 0, 0);
}

uint64_t sub_223686BD8()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  sub_223624E58();
  (*(v2 + 104))(v1, *MEMORY[0x277D851B8], v3);
  v4 = sub_22372B2F8();
  v0[8] = v4;
  (*(v2 + 8))(v1, v3);
  v5 = sub_223687724(&unk_281328D40, sub_223624E58, MEMORY[0x277D85270]);
  v6 = swift_task_alloc();
  v0[9] = v6;
  v7 = sub_223727408();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EAD0, &qword_22372CA80);
  *v6 = v0;
  v6[1] = sub_223686D84;
  v8 = v0[7];
  v9 = v0[3];

  return MEMORY[0x282200828](v9, v4, v5, 0, 0, &unk_22372ECC8, v8, v7);
}

uint64_t sub_223686D84()
{
  v2 = *(*v1 + 64);
  v3 = *v1;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_223686EE0, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_223686EE0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_223686F44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_223686F68, 0, 0);
}

uint64_t sub_223686F68()
{
  sub_223727AC8();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_223686FF4(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2236242EC;

  return sub_223686F44(a1, v2, a2);
}

uint64_t LocalIFSessionClient.subscribe()()
{
  v2 = sub_22372AE98();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v3 = swift_task_alloc();
  v4 = *v0;
  v1[6] = v3;
  v1[7] = v4;

  return MEMORY[0x2822009F8](sub_223687160, 0, 0);
}

uint64_t sub_223687160()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  sub_223624E58();
  (*(v2 + 104))(v1, *MEMORY[0x277D851B8], v3);
  v4 = sub_22372B2F8();
  v0[8] = v4;
  (*(v2 + 8))(v1, v3);
  v5 = sub_223687724(&unk_281328D40, sub_223624E58, MEMORY[0x277D85270]);
  v6 = swift_task_alloc();
  v0[9] = v6;
  v7 = sub_223727CE8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EAD0, &qword_22372CA80);
  *v6 = v0;
  v6[1] = sub_223687308;
  v8 = v0[7];

  return MEMORY[0x282200828](v0 + 2, v4, v5, 0, 0, &unk_22372ECE0, v8, v7);
}

uint64_t sub_223687308()
{
  v2 = *(*v1 + 64);

  if (v0)
  {
    v3 = sub_22368749C;
  }

  else
  {
    v3 = sub_223687430;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_223687430()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_22368749C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_223687500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_223687524, 0, 0);
}

uint64_t sub_223687524()
{
  **(v0 + 16) = sub_223727B08();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2236875B4(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2236242EC;

  return sub_223687500(a1, v2, a2);
}

unint64_t sub_223687660(uint64_t a1)
{
  result = sub_223687688();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_223687688()
{
  result = qword_2813296F8[0];
  if (!qword_2813296F8[0])
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LocalIFSessionClient, &type metadata for LocalIFSessionClient, v0, v1);
    atomic_store(result, qword_2813296F8);
  }

  return result;
}

uint64_t sub_223687724(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22368776C(uint64_t a1)
{
  v2[3] = a1;
  v3 = sub_22372AE98();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v4 = swift_task_alloc();
  v5 = *v1;
  v2[6] = v4;
  v2[7] = v5;

  return MEMORY[0x2822009F8](sub_223687830, 0, 0);
}

uint64_t sub_223687830()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  sub_223624E58();
  (*(v2 + 104))(v1, *MEMORY[0x277D851B8], v3);
  v4 = sub_22372B2F8();
  v0[8] = v4;
  (*(v2 + 8))(v1, v3);
  v5 = sub_223687724(&unk_281328D40, sub_223624E58, MEMORY[0x277D85270]);
  v6 = swift_task_alloc();
  v0[9] = v6;
  v7 = sub_223727408();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EAD0, &qword_22372CA80);
  *v6 = v0;
  v6[1] = sub_2236879DC;
  v8 = v0[7];
  v9 = v0[3];

  return MEMORY[0x282200828](v9, v4, v5, 0, 0, &unk_22372EDF0, v8, v7);
}

uint64_t sub_2236879DC()
{
  v2 = *(*v1 + 64);
  v3 = *v1;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_223688198, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_223687B38(uint64_t a1)
{
  v2[4] = a1;
  v3 = sub_22372AE98();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v4 = swift_task_alloc();
  v5 = *v1;
  v2[7] = v4;
  v2[8] = v5;

  return MEMORY[0x2822009F8](sub_223687BFC, 0, 0);
}

uint64_t sub_223687BFC()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  sub_223624E58();
  (*(v2 + 104))(v1, *MEMORY[0x277D851B8], v3);
  v4 = sub_22372B2F8();
  v0[9] = v4;
  (*(v2 + 8))(v1, v3);
  v5 = sub_223687724(&unk_281328D40, sub_223624E58, MEMORY[0x277D85270]);
  v6 = swift_task_alloc();
  v0[10] = v6;
  v7 = sub_223727CE8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EAD0, &qword_22372CA80);
  *v6 = v0;
  v6[1] = sub_223687DA4;
  v8 = v0[8];

  return MEMORY[0x282200828](v0 + 2, v4, v5, 0, 0, &unk_22372EDE8, v8, v7);
}

uint64_t sub_223687DA4()
{
  v2 = *(*v1 + 72);

  if (v0)
  {
    v3 = sub_223687F3C;
  }

  else
  {
    v3 = sub_223687ECC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_223687ECC()
{
  **(v0 + 32) = *(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_223687F3C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t dispatch thunk of LocalIFSessionClientProtocol.init(configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2236242EC;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_2236880E4(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_223624EA4;

  return sub_223686F44(a1, v2, a2);
}

uint64_t sub_223688224(uint64_t *a1, void *a2)
{
  swift_beginAccess();
  v3 = *a1;

  return v3;
}

uint64_t sub_223688288(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  swift_beginAccess();
  *a3 = a1;
  *a4 = a2;
}

uint64_t sub_223688340(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t *a6)
{
  v9 = *a1;
  v8 = a1[1];
  swift_beginAccess();
  *a5 = v9;
  *a6 = v8;
}

unint64_t RemoteIFDispatchError.description.getter()
{
  v1 = v0;
  v2 = sub_223727408();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v27 - v9;
  v11 = type metadata accessor for RemoteIFDispatchError(0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2236911BC(v1, v14, type metadata accessor for RemoteIFDispatchError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        (*(v3 + 32))(v10, v14, v2);
        v27 = 0;
        v28 = 0xE000000000000000;
        sub_22372B458();
        v19 = "Failed to end IF session: ";
        v20 = 0xD00000000000003CLL;
LABEL_17:
        MEMORY[0x223DE7AD0](v20, v19 | 0x8000000000000000);
        goto LABEL_18;
      }

      (*(v3 + 32))(v10, v14, v2);
      v27 = 0;
      v28 = 0xE000000000000000;
      sub_22372B458();

      v17 = 0x80000002237352E0;
      v18 = 0xD000000000000026;
    }

    else if (EnumCaseMultiPayload)
    {
      (*(v3 + 32))(v10, v14, v2);
      v27 = 0;
      v28 = 0xE000000000000000;
      sub_22372B458();

      v17 = 0x8000000223735310;
      v18 = 0xD00000000000001DLL;
    }

    else
    {
      (*(v3 + 32))(v10, v14, v2);
      v27 = 0;
      v28 = 0xE000000000000000;
      sub_22372B458();

      v17 = 0x8000000223735330;
      v18 = 0xD000000000000021;
    }

LABEL_15:
    v27 = v18;
    v28 = v17;
LABEL_18:
    sub_223691224(&qword_28132B600, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v21 = sub_22372B6B8();
    MEMORY[0x223DE7AD0](v21);

    v16 = v27;
    (*(v3 + 8))(v10, v2);
    return v16;
  }

  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload != 6)
    {
      if (EnumCaseMultiPayload == 7)
      {
        return 0xD000000000000017;
      }

      else
      {
        return 0xD000000000000018;
      }
    }

    (*(v3 + 32))(v10, v14, v2);
    v27 = 0;
    v28 = 0xE000000000000000;
    sub_22372B458();
    v19 = "ErrorCallerSessionIDKey";
    v20 = 0xD000000000000039;
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload == 4)
  {
    (*(v3 + 32))(v10, v14, v2);
    v27 = 0;
    v28 = 0xE000000000000000;
    sub_22372B458();

    v17 = 0x8000000223735260;
    v18 = 0xD00000000000001ALL;
    goto LABEL_15;
  }

  v23 = v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08EEF8, &unk_22372EE28) + 48)];
  (*(v3 + 32))(v7, v14, v2);
  v27 = 0;
  v28 = 0xE000000000000000;
  sub_22372B458();
  MEMORY[0x223DE7AD0](0xD000000000000036, 0x8000000223735200);
  sub_223691224(&qword_28132B600, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v24 = sub_22372B6B8();
  MEMORY[0x223DE7AD0](v24);

  MEMORY[0x223DE7AD0](0xD000000000000019, 0x8000000223735240);
  if (v23)
  {
    v25 = 1702195828;
  }

  else
  {
    v25 = 0x65736C6166;
  }

  if (v23)
  {
    v26 = 0xE400000000000000;
  }

  else
  {
    v26 = 0xE500000000000000;
  }

  MEMORY[0x223DE7AD0](v25, v26);

  MEMORY[0x223DE7AD0](46, 0xE100000000000000);
  v16 = v27;
  (*(v3 + 8))(v7, v2);
  return v16;
}

uint64_t type metadata accessor for RemoteIFDispatchError(uint64_t a1)
{
  result = qword_2813295F8;
  if (!qword_2813295F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_223688998@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for RemoteIFDispatchError(0);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2236911BC(v2, v7, type metadata accessor for RemoteIFDispatchError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v9 = sub_223727408();
  v10 = *(v9 - 8);
  if (EnumCaseMultiPayload > 6)
  {
    v11 = 1;
  }

  else
  {
    (*(*(v9 - 8) + 32))(a1, v7, v9);
    v11 = 0;
  }

  return (*(v10 + 56))(a1, v11, 1, v9);
}

uint64_t RemoteIFDispatchError.errorCode.getter()
{
  v1 = type metadata accessor for RemoteIFDispatchError(0);
  MEMORY[0x28223BE20](v1, v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2236911BC(v0, v4, type metadata accessor for RemoteIFDispatchError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v9 = sub_223727408();
        (*(*(v9 - 8) + 8))(v4, v9);
        return 3;
      }

      else
      {
        v13 = sub_223727408();
        (*(*(v13 - 8) + 8))(v4, v13);
        return 5;
      }
    }

    else if (EnumCaseMultiPayload)
    {
      v12 = sub_223727408();
      (*(*(v12 - 8) + 8))(v4, v12);
      return 2;
    }

    else
    {
      v8 = sub_223727408();
      (*(*(v8 - 8) + 8))(v4, v8);
      return 1;
    }
  }

  else if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v10 = sub_223727408();
      (*(*(v10 - 8) + 8))(v4, v10);
      return 6;
    }

    else
    {
      v14 = sub_223727408();
      (*(*(v14 - 8) + 8))(v4, v14);
      return 7;
    }
  }

  else if (EnumCaseMultiPayload == 6)
  {
    v11 = sub_223727408();
    (*(*(v11 - 8) + 8))(v4, v11);
    return 8;
  }

  else
  {
    v6 = EnumCaseMultiPayload;
    result = 0;
    if (v6 != 7)
    {
      return 4;
    }
  }

  return result;
}

unint64_t RemoteIFDispatchError.errorUserInfo.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v15 - v2;
  v4 = sub_223727408();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22368F690(MEMORY[0x277D84F90]);
  sub_223688998(v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_223626478(v3, &unk_27D08E530, &unk_22372CB10);
  }

  else
  {
    (*(v5 + 32))(v8, v3, v4);
    swift_beginAccess();
    v10 = qword_27D08EEE0;
    v11 = off_27D08EEE8;
    v18 = v4;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v17);
    (*(v5 + 16))(boxed_opaque_existential_1, v8, v4);
    sub_223661514(&v17, v16);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = v9;
    sub_22368DAA4(v16, v10, v11, isUniquelyReferenced_nonNull_native);

    (*(v5 + 8))(v8, v4);
    return v15;
  }

  return v9;
}

unint64_t sub_223688FA0(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v4 = 0x4E6E6F6973736573;
    v5 = 0xD00000000000001BLL;
    if (a1 != 2)
    {
      v5 = 0xD000000000000022;
    }

    if (!a1)
    {
      v4 = 0xD000000000000014;
    }

    if (a1 <= 1u)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0xD000000000000015;
    if (a1 != 7)
    {
      v1 = 0xD000000000000010;
    }

    if (a1 == 6)
    {
      v1 = 0xD000000000000012;
    }

    v2 = 0x4D64696C61766E69;
    if (a1 != 4)
    {
      v2 = 0xD00000000000001CLL;
    }

    if (a1 <= 5u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_223689114(uint64_t a1)
{
  v2 = sub_22368F910();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223689150(uint64_t a1)
{
  v2 = sub_22368F910();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_223689194@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_223690E68(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2236891C8(uint64_t a1)
{
  v2 = sub_22368F7C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223689204(uint64_t a1)
{
  v2 = sub_22368F7C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_223689240(uint64_t a1)
{
  v2 = sub_22368F814();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22368927C(uint64_t a1)
{
  v2 = sub_22368F814();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2236892B8(uint64_t a1)
{
  v2 = sub_22368FA0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2236892F4(uint64_t a1)
{
  v2 = sub_22368FA0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_223689330(uint64_t a1)
{
  v2 = sub_22368F8BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22368936C(uint64_t a1)
{
  v2 = sub_22368F8BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2236893A8(uint64_t a1)
{
  v2 = sub_22368F9B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2236893E4(uint64_t a1)
{
  v2 = sub_22368F9B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22368942C(uint64_t a1)
{
  v2 = sub_22368FAB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223689468(uint64_t a1)
{
  v2 = sub_22368FAB4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2236894A4(uint64_t a1)
{
  v2 = sub_22368F964();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2236894E0(uint64_t a1)
{
  v2 = sub_22368F964();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22368951C()
{
  if (*v0)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0x655372656C6C6163;
  }
}

uint64_t sub_223689568@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x655372656C6C6163 && a2 == 0xEF44496E6F697373;
  if (v6 || (sub_22372B6E8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000002237354D0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22372B6E8();

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

uint64_t sub_223689654(uint64_t a1)
{
  v2 = sub_22368F868();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223689690(uint64_t a1)
{
  v2 = sub_22368F868();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2236896CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x655372656C6C6163 && a2 == 0xEF44496E6F697373)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_22372B6E8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_22368975C(uint64_t a1)
{
  v2 = sub_22368FA60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223689798(uint64_t a1)
{
  v2 = sub_22368FA60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RemoteIFDispatchError.encode(to:)(void *a1)
{
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EF08, &qword_22372EE38);
  v100 = *(v114 - 8);
  MEMORY[0x28223BE20](v114, v2);
  v112 = &v95 - v3;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EF10, &qword_22372EE40);
  v101 = *(v115 - 8);
  MEMORY[0x28223BE20](v115, v4);
  v113 = &v95 - v5;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EF18, &qword_22372EE48);
  v99 = *(v111 - 8);
  MEMORY[0x28223BE20](v111, v6);
  v110 = &v95 - v7;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EF20, &qword_22372EE50);
  v97 = *(v125 - 8);
  MEMORY[0x28223BE20](v125, v8);
  v124 = &v95 - v9;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EF28, &qword_22372EE58);
  v108 = *(v109 - 8);
  MEMORY[0x28223BE20](v109, v10);
  v107 = &v95 - v11;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EF30, &qword_22372EE60);
  v96 = *(v123 - 8);
  MEMORY[0x28223BE20](v123, v12);
  v122 = &v95 - v13;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EF38, &qword_22372EE68);
  v98 = *(v121 - 8);
  MEMORY[0x28223BE20](v121, v14);
  v120 = &v95 - v15;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EF40, &qword_22372EE70);
  v95 = *(v119 - 8);
  MEMORY[0x28223BE20](v119, v16);
  v118 = &v95 - v17;
  v18 = sub_223727408();
  v19 = *(v18 - 8);
  v126 = v18;
  v127 = v19;
  v21 = MEMORY[0x28223BE20](v18, v20);
  v106 = &v95 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21, v23);
  v116 = &v95 - v25;
  v27 = MEMORY[0x28223BE20](v24, v26);
  v105 = &v95 - v28;
  v30 = MEMORY[0x28223BE20](v27, v29);
  v117 = &v95 - v31;
  v33 = MEMORY[0x28223BE20](v30, v32);
  v35 = &v95 - v34;
  v37 = MEMORY[0x28223BE20](v33, v36);
  v39 = &v95 - v38;
  MEMORY[0x28223BE20](v37, v40);
  v42 = &v95 - v41;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EF48, &qword_22372EE78);
  v103 = *(v104 - 8);
  MEMORY[0x28223BE20](v104, v43);
  v102 = &v95 - v44;
  v45 = type metadata accessor for RemoteIFDispatchError(0);
  MEMORY[0x28223BE20](v45, v46);
  v48 = &v95 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EF50, &qword_22372EE80);
  v128 = *(v131 - 8);
  MEMORY[0x28223BE20](v131, v49);
  v51 = &v95 - v50;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22368F7C0();
  v132 = v51;
  sub_22372B7E8();
  sub_2236911BC(v129, v48, type metadata accessor for RemoteIFDispatchError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    v56 = v42;
    v57 = v39;
    v58 = v35;
    v59 = v118;
    v61 = v119;
    v60 = v120;
    v63 = v121;
    v62 = v122;
    v64 = v123;
    v65 = v124;
    v66 = v125;
    if (EnumCaseMultiPayload > 1)
    {
      v72 = v131;
      v73 = v126;
      v74 = v127;
      if (EnumCaseMultiPayload == 2)
      {
        v75 = v58;
        (*(v127 + 32))(v58, v48, v126);
        v136 = 3;
        sub_22368F9B8();
        sub_22372B678();
        sub_223691224(&unk_28132B610, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
        sub_22372B6A8();
        (*(v96 + 8))(v62, v64);
        (*(v74 + 8))(v75, v73);
        return (*(v128 + 8))(v132, v131);
      }

      v85 = v117;
      (*(v127 + 32))(v117, v48, v126);
      v138 = 5;
      sub_22368F910();
      sub_22372B678();
      sub_223691224(&unk_28132B610, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
      sub_22372B6A8();
      (*(v97 + 8))(v65, v66);
      (*(v74 + 8))(v85, v73);
    }

    else
    {
      v67 = v131;
      v69 = v126;
      v68 = v127;
      if (!EnumCaseMultiPayload)
      {
        v70 = v56;
        (*(v127 + 32))(v56, v48, v126);
        v134 = 1;
        sub_22368FA60();
        sub_22372B678();
        sub_223691224(&unk_28132B610, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
        sub_22372B6A8();
        (*(v95 + 8))(v59, v61);
        (*(v68 + 8))(v70, v69);
        return (*(v128 + 8))(v132, v67);
      }

      v84 = v57;
      (*(v127 + 32))(v57, v48, v126);
      v135 = 2;
      sub_22368FA0C();
      v72 = v67;
      sub_22372B678();
      sub_223691224(&unk_28132B610, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
      sub_22372B6A8();
      (*(v98 + 8))(v60, v63);
      (*(v68 + 8))(v84, v69);
    }

    return (*(v128 + 8))(v132, v72);
  }

  else
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload != 6)
      {
        if (EnumCaseMultiPayload == 7)
        {
          v133 = 0;
          sub_22368FAB4();
          v53 = v102;
          v54 = v131;
          v55 = v132;
          sub_22372B678();
          (*(v103 + 8))(v53, v104);
        }

        else
        {
          v137 = 4;
          sub_22368F964();
          v86 = v107;
          v54 = v131;
          v55 = v132;
          sub_22372B678();
          (*(v108 + 8))(v86, v109);
        }

        return (*(v128 + 8))(v55, v54);
      }

      v77 = v126;
      v76 = v127;
      v78 = v106;
      (*(v127 + 32))(v106, v48, v126);
      v143 = 8;
      sub_22368F814();
      v79 = v112;
      v80 = v131;
      v81 = v132;
      sub_22372B678();
      sub_223691224(&unk_28132B610, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
      v82 = v114;
      sub_22372B6A8();
      v83 = &v132;
LABEL_14:
      (*(*(v83 - 32) + 8))(v79, v82);
      (*(v76 + 8))(v78, v77);
      return (*(v128 + 8))(v81, v80);
    }

    if (EnumCaseMultiPayload == 4)
    {
      v77 = v126;
      v76 = v127;
      v78 = v105;
      (*(v127 + 32))(v105, v48, v126);
      v139 = 6;
      sub_22368F8BC();
      v79 = v110;
      v80 = v131;
      v81 = v132;
      sub_22372B678();
      sub_223691224(&unk_28132B610, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
      v82 = v111;
      sub_22372B6A8();
      v83 = &v131;
      goto LABEL_14;
    }

    LODWORD(v129) = v48[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08EEF8, &unk_22372EE28) + 48)];
    v88 = v126;
    v87 = v127;
    v89 = v116;
    (*(v127 + 32))(v116, v48, v126);
    v142 = 7;
    sub_22368F868();
    v90 = v113;
    v91 = v131;
    v92 = v132;
    sub_22372B678();
    v141 = 0;
    sub_223691224(&unk_28132B610, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
    v93 = v115;
    v94 = v130;
    sub_22372B6A8();
    if (v94)
    {
      (*(v101 + 8))(v90, v93);
      (*(v87 + 8))(v89, v88);
    }

    else
    {
      v140 = 1;
      sub_22372B698();
      (*(v101 + 8))(v90, v93);
      (*(v87 + 8))(v116, v88);
    }

    return (*(v128 + 8))(v92, v91);
  }
}

uint64_t RemoteIFDispatchError.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v143 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EFB0, &qword_22372EE88);
  v4 = *(v3 - 8);
  v133 = v3;
  v134 = v4;
  MEMORY[0x28223BE20](v3, v5);
  v141 = &v111 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EFB8, &qword_22372EE90);
  v135 = *(v7 - 8);
  v136 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v142 = &v111 - v9;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EFC0, &qword_22372EE98);
  v131 = *(v132 - 8);
  MEMORY[0x28223BE20](v132, v10);
  v149 = &v111 - v11;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EFC8, &qword_22372EEA0);
  v129 = *(v130 - 8);
  MEMORY[0x28223BE20](v130, v12);
  v148 = &v111 - v13;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EFD0, &qword_22372EEA8);
  v125 = *(v126 - 8);
  MEMORY[0x28223BE20](v126, v14);
  v147 = &v111 - v15;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EFD8, &qword_22372EEB0);
  v127 = *(v128 - 8);
  MEMORY[0x28223BE20](v128, v16);
  v146 = &v111 - v17;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EFE0, &qword_22372EEB8);
  v124 = *(v123 - 8);
  MEMORY[0x28223BE20](v123, v18);
  v140 = &v111 - v19;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EFE8, &qword_22372EEC0);
  v121 = *(v122 - 8);
  MEMORY[0x28223BE20](v122, v20);
  v139 = &v111 - v21;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EFF0, &qword_22372EEC8);
  v118 = *(v119 - 8);
  MEMORY[0x28223BE20](v119, v22);
  v138 = &v111 - v23;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EFF8, &unk_22372EED0);
  v150 = *(v145 - 8);
  MEMORY[0x28223BE20](v145, v24);
  v26 = &v111 - v25;
  v144 = type metadata accessor for RemoteIFDispatchError(0);
  v28 = MEMORY[0x28223BE20](v144, v27);
  v120 = &v111 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v28, v30);
  v137 = &v111 - v32;
  v34 = MEMORY[0x28223BE20](v31, v33);
  v117 = &v111 - v35;
  v37 = MEMORY[0x28223BE20](v34, v36);
  v39 = &v111 - v38;
  v41 = MEMORY[0x28223BE20](v37, v40);
  v43 = &v111 - v42;
  v45 = MEMORY[0x28223BE20](v41, v44);
  v47 = &v111 - v46;
  v49 = MEMORY[0x28223BE20](v45, v48);
  v51 = &v111 - v50;
  MEMORY[0x28223BE20](v49, v52);
  v54 = &v111 - v53;
  v55 = a1[3];
  v152 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v55);
  sub_22368F7C0();
  v56 = v151;
  sub_22372B7D8();
  if (v56)
  {
    goto LABEL_12;
  }

  v112 = v51;
  v113 = v47;
  v114 = v43;
  v115 = v39;
  v57 = v146;
  v58 = v147;
  v60 = v148;
  v59 = v149;
  v151 = 0;
  v116 = v54;
  v61 = v145;
  v62 = v26;
  v63 = sub_22372B668();
  v64 = v63;
  if (*(v63 + 16) != 1 || (v65 = *(v63 + 32), v65 == 9))
  {
    v70 = sub_22372B4B8();
    swift_allocError();
    v72 = v71;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F000, &qword_2237307D0);
    *v72 = v144;
    sub_22372B618();
    sub_22372B4A8();
    (*(*(v70 - 8) + 104))(v72, *MEMORY[0x277D84160], v70);
    swift_willThrow();
    (*(v150 + 8))(v62, v61);
LABEL_11:
    swift_unknownObjectRelease();
LABEL_12:
    v73 = v152;
    return __swift_destroy_boxed_opaque_existential_1Tm(v73);
  }

  if (*(v63 + 32) > 3u)
  {
    v66 = v143;
    if (*(v63 + 32) > 5u)
    {
      if (v65 != 6)
      {
        if (v65 == 7)
        {
          v162 = 7;
          sub_22368F868();
          v67 = v142;
          v68 = v151;
          sub_22372B608();
          if (!v68)
          {
            sub_223727408();
            v161 = 0;
            sub_223691224(&qword_27D08ED50, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
            v69 = v136;
            sub_22372B648();
            v160 = 1;
            v106 = v67;
            LODWORD(v151) = sub_22372B638();
            v107 = v135;
            v108 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08EEF8, &unk_22372EE28) + 48);
            (*(v107 + 8))(v106, v69);
            (*(v150 + 8))(v62, v61);
            swift_unknownObjectRelease();
            v109 = v137;
            v137[v108] = v151 & 1;
            swift_storeEnumTagMultiPayload();
            v110 = v109;
LABEL_42:
            v84 = v116;
            sub_2236378A8(v110, v116, type metadata accessor for RemoteIFDispatchError);
            goto LABEL_43;
          }

          goto LABEL_33;
        }

        v163 = 8;
        sub_22368F814();
        v91 = v141;
        v92 = v151;
        sub_22372B608();
        if (!v92)
        {
          v151 = v64;
          sub_223727408();
          sub_223691224(&qword_27D08ED50, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
          v100 = v120;
          v101 = v133;
          sub_22372B648();
          (*(v134 + 8))(v91, v101);
          (*(v150 + 8))(v62, v61);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v110 = v100;
          goto LABEL_42;
        }

LABEL_17:
        (*(v150 + 8))(v62, v61);
        swift_unknownObjectRelease();
        v73 = v152;
        return __swift_destroy_boxed_opaque_existential_1Tm(v73);
      }

      v159 = 6;
      sub_22368F8BC();
      v85 = v59;
      v86 = v151;
      sub_22372B608();
      if (!v86)
      {
        sub_223727408();
        sub_223691224(&qword_27D08ED50, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
        v87 = v117;
        v88 = v132;
        sub_22372B648();
        v104 = v87;
        (*(v131 + 8))(v85, v88);
        (*(v150 + 8))(v62, v61);
        swift_unknownObjectRelease();
LABEL_41:
        swift_storeEnumTagMultiPayload();
        v110 = v104;
        goto LABEL_42;
      }

      goto LABEL_33;
    }

    if (v65 != 4)
    {
      v158 = 5;
      sub_22368F910();
      v93 = v151;
      sub_22372B608();
      if (!v93)
      {
        sub_223727408();
        sub_223691224(&qword_27D08ED50, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
        v102 = v115;
        v103 = v130;
        sub_22372B648();
        v104 = v102;
        (*(v129 + 8))(v60, v103);
        (*(v150 + 8))(v62, v61);
        swift_unknownObjectRelease();
        goto LABEL_41;
      }

LABEL_33:
      (*(v150 + 8))(v62, v61);
      goto LABEL_11;
    }

    v157 = 4;
    sub_22368F964();
    v83 = v151;
    sub_22372B608();
    if (v83)
    {
      goto LABEL_33;
    }

    (*(v125 + 8))(v58, v126);
    (*(v150 + 8))(v62, v61);
    swift_unknownObjectRelease();
    v84 = v116;
LABEL_35:
    swift_storeEnumTagMultiPayload();
LABEL_43:
    v96 = v152;
    goto LABEL_44;
  }

  if (*(v63 + 32) > 1u)
  {
    v78 = v151;
    if (v65 == 2)
    {
      v155 = 2;
      sub_22368FA0C();
      v79 = v140;
      v80 = v62;
      sub_22372B608();
      if (v78)
      {
LABEL_27:
        (*(v150 + 8))(v80, v61);
        goto LABEL_11;
      }

      sub_223727408();
      sub_223691224(&qword_27D08ED50, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
      v81 = v113;
      v82 = v123;
      sub_22372B648();
      (*(v124 + 8))(v79, v82);
      (*(v150 + 8))(v80, v61);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v105 = v81;
    }

    else
    {
      v156 = 3;
      sub_22368F9B8();
      sub_22372B608();
      if (v78)
      {
        goto LABEL_17;
      }

      sub_223727408();
      sub_223691224(&qword_27D08ED50, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
      v97 = v114;
      v98 = v128;
      sub_22372B648();
      v99 = v150;
      (*(v127 + 8))(v57, v98);
      (*(v99 + 8))(v62, v61);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v105 = v97;
    }

    v84 = v116;
    sub_2236378A8(v105, v116, type metadata accessor for RemoteIFDispatchError);
    v96 = v152;
    v66 = v143;
  }

  else
  {
    v75 = v151;
    if (!*(v63 + 32))
    {
      v153 = 0;
      sub_22368FAB4();
      v76 = v138;
      v77 = v75;
      sub_22372B608();
      v66 = v143;
      if (v77)
      {
        goto LABEL_17;
      }

      (*(v118 + 8))(v76, v119);
      (*(v150 + 8))(v62, v61);
      swift_unknownObjectRelease();
      v84 = v116;
      goto LABEL_35;
    }

    v154 = 1;
    sub_22368FA60();
    v89 = v139;
    v80 = v62;
    v90 = v75;
    sub_22372B608();
    v66 = v143;
    if (v90)
    {
      goto LABEL_27;
    }

    sub_223727408();
    v151 = v64;
    sub_223691224(&qword_27D08ED50, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
    v94 = v112;
    v95 = v122;
    sub_22372B648();
    (*(v121 + 8))(v89, v95);
    (*(v150 + 8))(v80, v61);
    swift_unknownObjectRelease();
    v96 = v152;
    swift_storeEnumTagMultiPayload();
    v84 = v116;
    sub_2236378A8(v94, v116, type metadata accessor for RemoteIFDispatchError);
  }

LABEL_44:
  sub_2236378A8(v84, v66, type metadata accessor for RemoteIFDispatchError);
  return __swift_destroy_boxed_opaque_existential_1Tm(v96);
}

uint64_t sub_22368BD04()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 10;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22368BD38()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22368BD6C(uint64_t a1)
{
  v2 = sub_223691224(&qword_27D08F180, type metadata accessor for RemoteIFDispatchError, protocol conformance descriptor for RemoteIFDispatchError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22368BDD8(uint64_t a1)
{
  v2 = sub_223691224(&qword_27D08F180, type metadata accessor for RemoteIFDispatchError, protocol conformance descriptor for RemoteIFDispatchError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_22368BE7C()
{
  swift_beginAccess();
  v0 = qword_27D08EED0;

  return v0;
}

uint64_t sub_22368BED8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EA40, &qword_22372D700);
  result = sub_22372B588();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
      }

      result = sub_22372B798();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v30;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v30;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_22368C15C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F1D0, &qword_22372D7F8);
  v33 = v4;
  result = sub_22372B588();
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
        sub_223661514(v24, v34);
      }

      else
      {
        sub_2236227C8(v24, v34);
      }

      sub_22372B7A8();
      sub_22372B078();
      result = sub_22372B7C8();
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
      result = sub_223661514(v34, (*(v7 + 56) + 32 * v15));
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