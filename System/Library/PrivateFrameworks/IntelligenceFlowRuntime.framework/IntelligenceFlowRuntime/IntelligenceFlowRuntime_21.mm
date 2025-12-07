uint64_t sub_22BD741AC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_22BB36C80(a1, a2, a3, a4);
  sub_22BB2F330();
  (*(v6 + 16))(v4, v5);
  return v4;
}

uint64_t sub_22BD74200()
{
  v0 = sub_22BDBB174();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22BDBB154();
  MEMORY[0x28223BE20](v4);
  v5 = sub_22BDBAA44();
  MEMORY[0x28223BE20](v5 - 8);
  sub_22BB6ECB0();
  sub_22BDBAA34();
  v7[1] = MEMORY[0x277D84F90];
  sub_22BB3B1D8(&unk_281428780, 255, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  sub_22BBE6DE0(&qword_27D8E3C48, &unk_22BDC0CD0);
  sub_22BD7454C();
  sub_22BDBB2B4();
  (*(v1 + 104))(v3, *MEMORY[0x277D85260], v0);
  sub_22BDBB1A4();
  objc_opt_self();
  result = swift_dynamicCastObjCClassUnconditional();
  qword_28142F3F8 = result;
  return result;
}

uint64_t sub_22BD74464()
{
  type metadata accessor for SessionControlActor();
  result = swift_allocObject();
  qword_28142F3F0 = result;
  return result;
}

uint64_t sub_22BD744D8()
{
  if (qword_28142A928 != -1)
  {
    swift_once();
  }
}

unint64_t sub_22BD7454C()
{
  result = qword_2814287E0;
  if (!qword_2814287E0)
  {
    sub_22BBEB2E0(&qword_27D8E3C48, &unk_22BDC0CD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814287E0);
  }

  return result;
}

uint64_t sub_22BD745B0(uint64_t a1)
{
  v1 = sub_22BDB5664();
  if (v2 <= 0x3F)
  {
    v1 = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      AssociatedTypeWitness = sub_22BDB96E4();
      if (v5 > 0x3F)
      {
        return AssociatedTypeWitness;
      }

      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      if (v6 > 0x3F)
      {
        return AssociatedTypeWitness;
      }

      sub_22BD758A0(319, &qword_2814287C0, MEMORY[0x277D857B8]);
      if (v7 > 0x3F)
      {
        return AssociatedTypeWitness;
      }

      sub_22BD758A0(319, &qword_2814287C8, MEMORY[0x277D85788]);
      if (v8 > 0x3F)
      {
        return AssociatedTypeWitness;
      }

      v9 = swift_getAssociatedTypeWitness();
      v11 = v10;
      swift_getAssociatedConformanceWitness();
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      if (v12 > 0x3F)
      {
        return AssociatedTypeWitness;
      }

      else if (v11 > 0x3F)
      {
        return v9;
      }

      else
      {
        v1 = swift_getAssociatedTypeWitness();
        if (v13 <= 0x3F)
        {
          return swift_initClassMetadata2();
        }
      }
    }
  }

  return v1;
}

uint64_t sub_22BD74940()
{
  v0 = sub_22BB30F68();
  type metadata accessor for SessionCoordinatorCommand(v0);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v1);
  sub_22BB30574();
  sub_22BB39070();
  sub_22BBE6DE0(&qword_27D8E63F0, &qword_22BDCEE10);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v2);
  sub_22BB31580();
  sub_22BB3182C();
  swift_storeEnumTagMultiPayload();
  sub_22BBE6DE0(&qword_27D8E6400, &unk_22BDCF250);
  sub_22BDBAF34();
  v3 = sub_22BB3AAD8();
  return v4(v3);
}

uint64_t sub_22BD74A58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_22BDB43D4();
  v4 = *(type metadata accessor for EventPayloadWithPreassignedID(0) + 20);
  sub_22BDB9B14();
  sub_22BB2F330();
  v6 = *(v5 + 16);

  return v6(a2 + v4, a1);
}

uint64_t sub_22BD74AD4()
{
  v0 = sub_22BB35760();
  type metadata accessor for SessionCoordinatorCommand.TransactionRequestPayload(v0);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v1);
  sub_22BB30574();
  sub_22BB39070();
  v2 = sub_22BB30AE4();
  sub_22BB388FC(v2, v3);
  sub_22BB37494();
  return sub_22BDBAC14();
}

uint64_t sub_22BD74B58(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  sub_22BBE6DE0(&qword_27D8E6778, &unk_22BDCED80);
  return sub_22BDBAC14();
}

uint64_t sub_22BD74C08()
{
  v1 = sub_22BB3A9D4();
  v3 = sub_22BBE6DE0(v1, v2);
  sub_22BB2F0C8(v3);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v4);
  sub_22BB69B9C(v5, v13);
  v6 = sub_22BDB43E4();
  v7 = sub_22BB3A190();
  if (sub_22BB3AA28(v7, v8, v6) == 1)
  {
    sub_22BB325EC(v0, &qword_27D8E3218, &qword_22BDBE390);
    return 7104878;
  }

  else
  {
    v9 = MEMORY[0x23189E350]();
    sub_22BB30474();
    v10 = sub_22BB2F324();
    v11(v10);
  }

  return v9;
}

uint64_t sub_22BD74CF8()
{
  sub_22BB30F68();
  v1 = sub_22BDB43E4();
  sub_22BB30444();
  MEMORY[0x28223BE20](v2);
  sub_22BB30574();
  sub_22BB39070();
  v3 = sub_22BBE6DE0(&qword_27D8E3218, &qword_22BDBE390);
  sub_22BB2F0C8(v3);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v4);
  sub_22BB36858();
  swift_projectBox();
  swift_beginAccess();
  sub_22BDB9B54();
  v5 = sub_22BB3A190();
  if (!sub_22BB3AA28(v5, v6, v7))
  {
    sub_22BDB9964();
    if (!sub_22BB3AA28(v0, 1, v1))
    {
      v10 = sub_22BB3A9D4();
      v11(v10);
      sub_22BB325EC(v0, &qword_27D8E3218, &qword_22BDBE390);
      v12 = swift_endAccess();
      v8 = MEMORY[0x23189E350](v12);
      v13 = sub_22BB3182C();
      v14(v13);
      return v8;
    }

    sub_22BB325EC(v0, &qword_27D8E3218, &qword_22BDBE390);
  }

  swift_endAccess();
  return 7104878;
}

uint64_t sub_22BD74EB4()
{
  v1 = sub_22BBE6DE0(&unk_27D8E69E0, &qword_22BDC1660);
  sub_22BB2F0C8(v1);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v2);
  v4 = &v20 - v3;
  v5 = sub_22BBE6DE0(&qword_27D8E3218, &qword_22BDBE390);
  sub_22BB2F0C8(v5);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v6);
  sub_22BB33230();
  v7 = sub_22BB37494();
  sub_22BB8AE8C(v7, v8, &unk_27D8E69E0, &qword_22BDC1660);
  v9 = sub_22BDB9B54();
  v10 = sub_22BB3A190();
  if (sub_22BB3AA28(v10, v11, v9) == 1)
  {
    v12 = &unk_27D8E69E0;
    v13 = &qword_22BDC1660;
    v14 = v4;
  }

  else
  {
    sub_22BDB9964();
    sub_22BB30474();
    v15 = sub_22BB2F3F0();
    v16(v15);
    v17 = sub_22BDB43E4();
    if (sub_22BB3AA28(v0, 1, v17) != 1)
    {
      MEMORY[0x23189E350]();
      sub_22BB30474();
      (*(v18 + 8))(v0, v17);
      return sub_22BB37494();
    }

    v12 = &qword_27D8E3218;
    v13 = &qword_22BDBE390;
    v14 = v0;
  }

  sub_22BB325EC(v14, v12, v13);
  return sub_22BB37494();
}

uint64_t sub_22BD75080()
{
  sub_22BB30F68();
  v0 = sub_22BDB9B04();
  sub_22BB30444();
  v2 = v1;
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  type metadata accessor for EventPayloadWithPreassignedID(0);
  sub_22BDB9AD4();
  (*(v2 + 104))(v6, *MEMORY[0x277D1E7E8], v0);
  v7 = sub_22BDB9AF4();
  v8 = *(v2 + 8);
  v9 = sub_22BB3182C();
  v8(v9);
  v10 = sub_22BB37074();
  v8(v10);
  return v7 & 1;
}

uint64_t sub_22BD751C0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_22BD751CC(uint64_t a1)
{
  sub_22BDB6034();
  sub_22BB30444();
  MEMORY[0x28223BE20](v3);
  sub_22BB30574();
  sub_22BB36858();
  v4 = sub_22BDB9B54();
  sub_22BB30444();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  sub_22BB30574();
  sub_22BB3ABC8();
  v8 = sub_22BDB8E84();
  sub_22BB30444();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  sub_22BB30574();
  v14 = v13 - v12;
  (*(v6 + 16))(v1, a1, v4);
  sub_22BDB8E64();
  sub_22BDB8E74();
  sub_22BDB6024();
  sub_22BB6914C(&qword_281428A70, MEMORY[0x277D1E148], MEMORY[0x277D1E140]);
  v16 = sub_22BDB6064();
  v17 = sub_22BB37074();
  v18(v17);
  (*(v10 + 8))(v14, v8);
  return v16;
}

uint64_t sub_22BD754C4()
{
  sub_22BB30F68();
  sub_22BDB9B14();
  sub_22BB30444();
  MEMORY[0x28223BE20](v0);
  sub_22BB30574();
  sub_22BB39070();
  sub_22BDB9B24();
  v1 = sub_22BDB9AE4();
  v2 = sub_22BB3182C();
  v3(v2);
  return v1;
}

void sub_22BD75588(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 16) && (sub_22BB72B1C(*a1, a1[1]), (v6 & 1) != 0))
  {
    v7 = 0;
    v8 = *(a2 + 36);
  }

  else
  {
    v5 = 0;
    v8 = 0;
    v7 = -1;
  }

  *a3 = v5;
  *(a3 + 8) = v8;
  *(a3 + 16) = v7;
}

uint64_t sub_22BD755E0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_22BB69FEC(a1, a1[3]);
  v3 = sub_22BB3A9D4();
  result = v4(v3);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_22BD75634()
{
  v1 = sub_22BB3A9D4();
  v3 = sub_22BBE6DE0(v1, v2);
  sub_22BB2F0C8(v3);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v4);
  sub_22BB69B9C(v5, v13);
  v6 = sub_22BDB43E4();
  v7 = sub_22BB3A190();
  if (sub_22BB3AA28(v7, v8, v6) == 1)
  {
    sub_22BB325EC(v0, &qword_27D8E3218, &qword_22BDBE390);
    return 4271950;
  }

  else
  {
    v9 = MEMORY[0x23189E350]();
    sub_22BB30474();
    v10 = sub_22BB2F324();
    v11(v10);
  }

  return v9;
}

uint64_t sub_22BD75744@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[2];
  result = sub_22BDB8444();
  *a2 = result;
  a2[1] = v5;
  a2[2] = v3;
  return result;
}

uint64_t sub_22BD7577C(char a1, uint64_t a2)
{
  if ((a1 & 1) == 0)
  {
    return 0;
  }

  os_unfair_lock_lock((a2 + 20));
  v3 = *(a2 + 16);
  os_unfair_lock_unlock((a2 + 20));
  return v3;
}

uint64_t sub_22BD757D4()
{
  sub_22BB35760();
  sub_22BDB5D14();
  sub_22BB30444();
  MEMORY[0x28223BE20](v0);
  sub_22BB30574();
  sub_22BB39070();
  v1 = sub_22BB3182C();
  v2(v1);
  sub_22BB37494();
  return sub_22BDBAC14();
}

void sub_22BD758A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for SessionCoordinatorCommand(255);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_22BD75920(uint64_t a1)
{
  sub_22BD759D8(319);
  if (v1 <= 0x3F)
  {
    sub_22BD75A58(319);
    if (v2 <= 0x3F)
    {
      sub_22BD75BA8(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for SessionCoordinatorInjectionRequest(319);
        if (v4 <= 0x3F)
        {
          sub_22BDB5D14();
          if (v5 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_22BD759D8(uint64_t a1)
{
  if (!qword_281429BD0)
  {
    type metadata accessor for SessionCoordinatorCommand.TransactionRequestPayload(255);
    sub_22BBEB2E0(&qword_27D8E2E78, qword_22BDBD600);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_281429BD0);
    }
  }
}

void sub_22BD75A58(uint64_t a1)
{
  if (!qword_281428820)
  {
    MEMORY[0x28223BE20](0);
    sub_22BBEB2E0(&qword_27D8E2F48, &unk_22BDBD950);
    sub_22BBEB2E0(&qword_27D8E3218, &qword_22BDBE390);
    sub_22BBEB2E0(&qword_27D8E6768, &qword_22BDCECD8);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_281428820);
    }
  }
}

void sub_22BD75BA8(uint64_t a1)
{
  if (!qword_281428980[0])
  {
    sub_22BDB98C4();
    sub_22BBEB2E0(&qword_27D8E3218, &qword_22BDBE390);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, qword_281428980);
    }
  }
}

void sub_22BD75C5C(uint64_t a1)
{
  if (!qword_281428808)
  {
    sub_22BBEB2E0(&qword_27D8E2F48, &unk_22BDBD950);
    type metadata accessor for SpanMetadata(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_281428808);
    }
  }
}

void sub_22BD75CDC(uint64_t a1)
{
  if (!qword_281428838)
  {
    sub_22BBEB2E0(&qword_27D8E6770, &unk_22BDCED00);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_281428838);
    }
  }
}

uint64_t sub_22BD75D54(uint64_t a1)
{
  result = sub_22BDB43E4();
  if (v2 <= 0x3F)
  {
    result = sub_22BDB9B14();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22BD75F1C@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_22BDB5664();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22BDB77D4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s23IntelligenceFlowRuntime0aB6DaemonV6logger2os6LoggerVvgZ_0();
  sub_22BB388FC(a1, v10);
  v15 = sub_22BDB77C4();
  v16 = sub_22BDBB0F4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v31[0] = v11;
    v18 = v17;
    v19 = swift_slowAlloc();
    v32 = a2;
    v33 = v19;
    v20 = v19;
    *v18 = 136315138;
    v21 = sub_22BDB5624();
    v31[1] = a3;
    v22 = a4;
    v24 = v23;
    sub_22BB698E8();
    v25 = sub_22BB32EE0(v21, v24, &v33);
    a4 = v22;

    *(v18 + 4) = v25;
    _os_log_impl(&dword_22BB2C000, v15, v16, "[SessionCoordinator %s] Forwarding SIGTERM.", v18, 0xCu);
    sub_22BB32FA4(v20);
    v26 = v20;
    a2 = v32;
    MEMORY[0x2318A6080](v26, -1, -1);
    MEMORY[0x2318A6080](v18, -1, -1);

    v27 = (*(v12 + 8))(v14, v31[0]);
  }

  else
  {

    sub_22BB698E8();
    v27 = (*(v12 + 8))(v14, v11);
  }

  a2(v27);
  v28 = *MEMORY[0x277D41D58];
  v29 = sub_22BDB64B4();
  return (*(*(v29 - 8) + 104))(a4, v28, v29);
}

uint64_t sub_22BD761F8@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D41D50];
  v3 = sub_22BDB64B4();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_22BD7626C@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result & 1;
  return result;
}

void *sub_22BD762A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = a3;
  v6[1] = a4;
  v5[2] = v6;
  return sub_22BD76778(sub_22BD76A74, v5, a1, a2);
}

uint64_t sub_22BD762F4(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v5 = v2;
  v19[2] = *MEMORY[0x277D85DE8];
  v7 = *v2;
  v6 = v2[1];
  switch(v6 >> 62)
  {
    case 1uLL:
      v12 = v6 & 0x3FFFFFFFFFFFFFFFLL;

      sub_22BB3531C(v7, v6);
      *v5 = xmmword_22BDCEAE0;
      sub_22BB3531C(0, 0xC000000000000000);
      v13 = v7 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_16;
      }

      if (v13 < v7)
      {
        goto LABEL_23;
      }

      if (sub_22BDB41E4() && __OFSUB__(v7, sub_22BDB4204()))
      {
        goto LABEL_24;
      }

      sub_22BDB4214();
      swift_allocObject();
      v14 = sub_22BDB41C4();

      v12 = v14;
LABEL_16:
      if (v13 < v7)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
      }

      v4 = sub_22BD767DC(v7, v7 >> 32, a1);

      v11 = v12 | 0x4000000000000000;
      if (v3)
      {
        goto LABEL_18;
      }

      goto LABEL_20;
    case 2uLL:
      v4 = v6 & 0x3FFFFFFFFFFFFFFFLL;

      sub_22BB3531C(v7, v6);
      v17 = v7;
      v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
      *v5 = xmmword_22BDCEAE0;
      sub_22BB3531C(0, 0xC000000000000000);
      sub_22BDB4274();
      v7 = v17;
      v10 = sub_22BD767DC(*(v17 + 16), *(v17 + 24), a1);
      if (v3)
      {
        v11 = v18 | 0x8000000000000000;
LABEL_18:
        *v5 = v7;
        v5[1] = v11;
      }

      else
      {
        v4 = v10;
        v11 = v18 | 0x8000000000000000;
LABEL_20:
        *v5 = v7;
        v5[1] = v11;
      }

      return v4;
    case 3uLL:
      memset(v19, 0, 15);
      a1(&v17, v19, v19);
      if (!v3)
      {
        return v17;
      }

      return v4;
    default:
      v4 = v7 >> 8;
      sub_22BB3531C(v7, v6);
      v19[0] = v7;
      LOWORD(v19[1]) = v6;
      BYTE2(v19[1]) = BYTE2(v6);
      BYTE3(v19[1]) = BYTE3(v6);
      BYTE4(v19[1]) = BYTE4(v6);
      BYTE5(v19[1]) = BYTE5(v6);
      BYTE6(v19[1]) = BYTE6(v6);
      a1(&v17, v19, v19 + BYTE6(v6));
      if (!v3)
      {
        v4 = v17;
      }

      v9 = LODWORD(v19[1]) | ((WORD2(v19[1]) | (BYTE6(v19[1]) << 16)) << 32);
      *v5 = v19[0];
      v5[1] = v9;
      return v4;
  }
}

uint64_t sub_22BD766B8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v4 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    v5 = 0xC000000000000000;
    goto LABEL_5;
  }

  if (v4 <= 14)
  {
    result = sub_22BDB4264();
    v5 = v7 & 0xFFFFFFFFFFFFFFLL;
  }

  else if (v4 >= 0x7FFFFFFF)
  {
    result = MEMORY[0x23189E250]();
    v5 = v8 | 0x8000000000000000;
  }

  else
  {
    result = MEMORY[0x23189E260]();
    v5 = v6 | 0x4000000000000000;
  }

LABEL_5:
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_22BD76730(uint64_t result)
{
  if (result)
  {
    result = sub_22BDBB344();
    if ((v1 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_22BD76778(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v6 = a4 - a3;
    v7 = a3;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  result = a1(&v9, v7, v6);
  if (!v4)
  {
    return v9;
  }

  __break(1u);
  return result;
}

char *sub_22BD767DC(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_22BDB41E4();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_22BDB4204();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_22BDB41F4();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_22BD76890(uint64_t a1, uint64_t a2)
{
  sub_22BDBAAC4();
  sub_22BB6914C(&qword_2814288D8, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  return sub_22BDBAA84();
}

void *sub_22BD76964@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_22BD762A0(a1, a2, *a3, a3[1]);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
    a4[2] = v8;
    a4[3] = v9;
  }

  return result;
}

unint64_t sub_22BD769B8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_22BDBACD4();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x2318A4C80](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_22BD76A34@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_22BD76730(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_22BD76A94@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22BDB5664();
  sub_22BB30434(v3);
  v5 = v4;
  v7 = v6;
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  v11 = *(v9 + 8);

  return sub_22BD75F1C(v1 + v8, v10, v11, a1);
}

void sub_22BD76B54(uint64_t a1)
{
  sub_22BDB96E4();
  if (v1 <= 0x3F)
  {
    sub_22BD76C08();
    if (v2 <= 0x3F)
    {
      type metadata accessor for SessionCoordinatorResponseCallback(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22BD76C08()
{
  if (!qword_2814287A8)
  {
    v0 = sub_22BDBB0D4();
    if (!v1)
    {
      atomic_store(v0, &qword_2814287A8);
    }
  }
}

uint64_t sub_22BD76C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319, a2, a3);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22BD76D2C(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  do
  {
    if (!v6)
    {
      break;
    }

    --v6;
    v7 = *(sub_22BDB9B54() - 8);
    v8 = a1(a3 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v6);
    if (v3)
    {
      break;
    }
  }

  while ((v8 & 1) == 0);
  return v6;
}

uint64_t sub_22BD76E2C(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtCO23IntelligenceFlowRuntime29SessionCoordinatorConversions17ConversionContext_statementIdIsInert))
  {

    return sub_22BDB4C14();
  }

  else
  {
    sub_22BDB96C4();
    sub_22BDB98D4();
  }
}

uint64_t sub_22BD76EC0(uint64_t a1)
{
  result = sub_22BDB96E4();
  if (v2 <= 0x3F)
  {
    result = sub_22BDB9C14();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_22BD76FDC()
{
  v0 = sub_22BDB43E4();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = v10 - v5;
  sub_22BDB8F24();
  sub_22BDB4FF4();
  v7 = sub_22BDB43B4();
  v8 = *(v1 + 8);
  v8(v4, v0);
  v8(v6, v0);
  return v7 & 1;
}

unint64_t sub_22BD77168()
{
  result = qword_27D8E67B8;
  if (!qword_27D8E67B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E67B8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ClientMessageError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22BD7729C()
{
  result = qword_27D8E67C8;
  if (!qword_27D8E67C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E67C8);
  }

  return result;
}

uint64_t sub_22BD772F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 136) = v22;
  *(v6 + 144) = v5;
  *(v6 + 120) = v21;
  *(v6 + 104) = v20;
  *(v6 + 88) = v18;
  *(v6 + 96) = v19;
  *(v6 + 72) = v16;
  *(v6 + 80) = v17;
  *(v6 + 56) = a4;
  *(v6 + 64) = a5;
  *(v6 + 40) = a2;
  *(v6 + 48) = a3;
  *(v6 + 32) = a1;
  v7 = sub_22BDB77D4();
  *(v6 + 152) = v7;
  sub_22BB30434(v7);
  *(v6 + 160) = v8;
  *(v6 + 168) = sub_22BB30ACC();
  *(v6 + 176) = *(v19 - 8);
  *(v6 + 184) = sub_22BB30ACC();
  v9 = sub_22BDB43E4();
  *(v6 + 192) = v9;
  sub_22BB30434(v9);
  *(v6 + 200) = v10;
  *(v6 + 208) = sub_22BB30ACC();
  if (v16)
  {
    swift_getObjectType();
    v11 = sub_22BDBAE44();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  *(v6 + 216) = v11;
  *(v6 + 224) = v13;

  return MEMORY[0x2822009F8](sub_22BD774A0, v11, v13);
}

uint64_t sub_22BD774A0()
{
  v1 = *(*(v0 + 144) + OBJC_IVAR____TtC23IntelligenceFlowRuntime34SessionCoordinatorInjectionContext_fastCheckInjectionEnabledState);
  os_unfair_lock_lock((v1 + 20));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 20));
  if (v2 == 1)
  {
    v3 = sub_22BDB4144();
    *(v0 + 232) = 0;
    *(v0 + 240) = v3;
    *(v0 + 248) = v4;
    v5 = v3;
    v6 = v4;
    v7 = *(v0 + 208);
    v8 = *(v0 + 144);
    v9 = *(v0 + 64);
    v10 = *(v0 + 40);
    v60 = *(v0 + 96);
    v67 = *(v0 + 48);
    v46 = *(v0 + 128);
    v53 = *(v0 + 112);
    sub_22BDB43D4();
    v11 = swift_task_alloc();
    *(v0 + 256) = v11;
    *(v11 + 16) = v60;
    *(v11 + 32) = v53;
    *(v11 + 48) = v46;
    *(v11 + 64) = v8;
    *(v11 + 72) = v10;
    *(v11 + 80) = v67;
    *(v11 + 96) = v9;
    *(v11 + 104) = v7;
    *(v11 + 112) = v5;
    *(v11 + 120) = v6;
    v12 = swift_task_alloc();
    *(v0 + 264) = v12;
    v13 = sub_22BBE6DE0(&qword_27D8E67D0, qword_22BDCF188);
    *v12 = v0;
    v12[1] = sub_22BD777A4;
    v14 = *(v0 + 72);
    v15 = *(v0 + 80);

    return MEMORY[0x2822007B8](v0 + 16, v14, v15, 0xD00000000000003BLL, 0x800000022BDD4350, sub_22BD78AA0, v11, v13);
  }

  else
  {
    sub_22BB30B28();
    sub_22BB336D0(v16, v17, v18, v19);
    v20 = *(v0 + 184);
    v21 = *(v0 + 168);
    *(v0 + 208), v22, v23, v24, v25, v26, v27, v28, v45, v49, v52, v56, v59, v63, v66, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97;
    v20, v29, v30, v31, v32, v33, v34, v35, v47, v50, v54, v57, v61, v64, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98;
    v21, v36, v37, v38, v39, v40, v41, v42, v48, v51, v55, v58, v62, v65, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99;
    sub_22BB2F09C();

    return v43();
  }
}

uint64_t sub_22BD77B78(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, uint64_t a11)
{
  v72 = a4;
  v73 = a8;
  v68 = a7;
  v69 = a3;
  v70 = a5;
  v71 = a6;
  v63 = a1;
  v58 = a10;
  v12 = sub_22BDB43E4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for SessionCoordinatorCommand(0);
  MEMORY[0x28223BE20](v64);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22BBE6DE0(&qword_27D8E6400, &unk_22BDCF250);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v53 - v20;
  v22 = sub_22BBE6DE0(&qword_27D8E63F0, &qword_22BDCEE10);
  v60 = *(v22 - 8);
  v61 = v22;
  MEMORY[0x28223BE20](v22);
  v59 = &v53 - v23;
  v65 = v19;
  v24 = *(v19 + 16);
  v67 = v18;
  v24(v21, &a2[OBJC_IVAR____TtC23IntelligenceFlowRuntime34SessionCoordinatorInjectionContext_commandContinuation], v18);
  v25 = *(a2 + 2);
  v56 = *(a2 + 3);
  v57 = v25;
  v26 = *(a2 + 4);
  v55 = *(a2 + 5);
  v27 = *(a2 + 6);
  v66 = v13;
  v28 = *(v13 + 16);
  v62 = v15;
  v29 = v68;
  v68 = v12;
  v28(v15, v29, v12);

  v30 = sub_22BDBB484();
  if (v31)
  {
    v32 = v31;
    v54 = v30;
  }

  else
  {
    v54 = sub_22BDBB8F4();
    v32 = v33;
  }

  v34 = sub_22BDBB484();
  if (!v35)
  {
    v34 = sub_22BDBB8F4();
  }

  v36 = v34;
  v37 = v35;
  v38 = type metadata accessor for SessionCoordinatorInjectionRequest(0);
  v39 = v38[13];
  v40 = sub_22BBE6DE0(&qword_27D8E64C8, &qword_22BDCE3D0);
  (*(*(v40 - 8) + 16))(&v17[v39], v63, v40);
  v41 = v56;
  *v17 = v57;
  *(v17 + 1) = v41;
  v42 = v55;
  *(v17 + 2) = v26;
  *(v17 + 3) = v42;
  v44 = v69;
  v43 = v70;
  *(v17 + 4) = v27;
  *(v17 + 5) = v44;
  v45 = v71;
  *(v17 + 6) = v72;
  *(v17 + 7) = v43;
  *(v17 + 8) = v45;
  (*(v66 + 32))(&v17[v38[9]], v62, v68);
  v46 = &v17[v38[10]];
  *v46 = v54;
  v46[1] = v32;
  v47 = &v17[v38[11]];
  v48 = v73;
  *v47 = v73;
  v47[1] = a9;
  v49 = &v17[v38[12]];
  *v49 = v36;
  v49[1] = v37;
  swift_storeEnumTagMultiPayload();

  sub_22BB352C4(v48, a9);
  v50 = v59;
  v51 = v67;
  sub_22BDBAF34();
  (*(v65 + 8))(v21, v51);
  return (*(v60 + 8))(v50, v61);
}

uint64_t sub_22BD77FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 64) = v23;
  *(v9 + 72) = v8;
  *(v9 + 48) = v22;
  *(v9 + 32) = a3;
  *(v9 + 40) = a4;
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v11 = sub_22BDB77D4();
  *(v9 + 80) = v11;
  sub_22BB30434(v11);
  *(v9 + 88) = v12;
  *(v9 + 96) = sub_22BB30ACC();
  *(v9 + 104) = type metadata accessor for SessionCoordinatorCommand(0);
  *(v9 + 112) = sub_22BB30ACC();
  v13 = sub_22BBE6DE0(&qword_27D8E6400, &unk_22BDCF250);
  *(v9 + 120) = v13;
  sub_22BB30434(v13);
  *(v9 + 128) = v14;
  *(v9 + 136) = sub_22BB30ACC();
  v15 = sub_22BBE6DE0(&qword_27D8E63F0, &qword_22BDCEE10);
  *(v9 + 144) = v15;
  sub_22BB30434(v15);
  *(v9 + 152) = v16;
  *(v9 + 160) = sub_22BB30ACC();
  if (a8)
  {
    swift_getObjectType();
    v17 = sub_22BDBAE44();
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0;
  }

  return MEMORY[0x2822009F8](sub_22BD7818C, v17, v19);
}

uint64_t sub_22BD7818C()
{
  v1 = *(v0[9] + OBJC_IVAR____TtC23IntelligenceFlowRuntime34SessionCoordinatorInjectionContext_fastCheckInjectionEnabledState);
  os_unfair_lock_lock((v1 + 20));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 20));
  if (v2 == 1)
  {
    v10 = sub_22BDB4144();
    v67 = v11;
    v71 = v10;
    v12 = v0[9];
    (*(v0[16] + 16))(v0[17], v12 + OBJC_IVAR____TtC23IntelligenceFlowRuntime34SessionCoordinatorInjectionContext_commandContinuation, v0[15]);
    v59 = v12[3];
    v63 = v12[2];
    v13 = v12[4];
    v55 = v12[5];
    v14 = v12[6];

    v15 = sub_22BDBB484();
    if (!v16)
    {
      v15 = sub_22BDBB8F4();
    }

    v51 = v0[20];
    v18 = v0[16];
    v17 = v0[17];
    v20 = v0[14];
    v19 = v0[15];
    v21 = v0[4];
    v22 = v0[5];
    v23 = v0[2];
    v24 = v0[3];
    *v20 = v63;
    v20[1] = v59;
    v20[2] = v13;
    v20[3] = v55;
    v20[4] = v14;
    v20[5] = v23;
    v20[6] = v24;
    v20[7] = v21;
    v20[8] = v22;
    v20[9] = v15;
    v20[10] = v16;
    v20[11] = v71;
    v20[12] = v67;
    swift_storeEnumTagMultiPayload();

    sub_22BDBAF34();
    (*(v18 + 8))(v17, v19);
    (*(v0[19] + 8))(v0[20], v0[18]);
  }

  v25 = v0[17];
  v26 = v0[14];
  v27 = v0[12];
  v0[20], v3, v4, v5, v6, v7, v8, v9, v51, v55, v59, v63, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v0, v114;
  v25, v28, v29, v30, v31, v32, v33, v34, v52, v56, v60, v64, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v111, v115;
  v26, v35, v36, v37, v38, v39, v40, v41, v53, v57, v61, v65, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v112, v116;
  v27, v42, v43, v44, v45, v46, v47, v48, v54, v58, v62, v66, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v113, v117;
  sub_22BB2F09C();

  return v49();
}

void sub_22BD7846C(uint64_t a1)
{
  sub_22BD78528(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_22BD78528(uint64_t a1)
{
  if (!qword_2814287C8)
  {
    type metadata accessor for SessionCoordinatorCommand(255);
    v1 = sub_22BDBAF54();
    if (!v2)
    {
      atomic_store(v1, &qword_2814287C8);
    }
  }
}

uint64_t sub_22BD78580(uint64_t a1)
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

uint64_t sub_22BD785A4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 104))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_22BD785E4(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

void sub_22BD78674(uint64_t a1)
{
  sub_22BC05698();
  if (v1 <= 0x3F)
  {
    sub_22BDB43E4();
    if (v2 <= 0x3F)
    {
      sub_22BD78740(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22BD78740(uint64_t a1)
{
  if (!qword_2814287D8)
  {
    sub_22BBEB2E0(&qword_27D8E67D0, qword_22BDCF188);
    v1 = sub_22BDBAE64();
    if (!v2)
    {
      atomic_store(v1, &qword_2814287D8);
    }
  }
}

uint64_t sub_22BD787B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = swift_task_alloc();
  *(v5 + 16) = v6;
  *v6 = v5;
  v6[1] = sub_22BD78AEC;

  return sub_22BD772F0(a1, a2, a3, a4, a5);
}

uint64_t sub_22BD788BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = swift_task_alloc();
  *(v8 + 16) = v13;
  *v13 = v8;
  v13[1] = sub_22BD789B0;

  return sub_22BD77FB4(a1, a2, a3, a4, v14, v15, v16, a8);
}

uint64_t sub_22BD78AF0(uint64_t *a1)
{
  v1 = sub_22BDB7764();
  v18 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v16[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = sub_22BDB7734();
  v4 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = sub_22BDB7754();
  v7 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22BDB6104();
  v10 = sub_22BDB7744();
  sub_22BDB7774();
  v17 = sub_22BDBB1C4();
  if (sub_22BDBB244())
  {

    sub_22BDB77B4();

    v11 = v18;
    if ((*(v18 + 88))(v3, v1) == *MEMORY[0x277D85B00])
    {
      v12 = "[Error] Interval already ended";
    }

    else
    {
      (*(v11 + 8))(v3, v1);
      v12 = "";
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = sub_22BDB7714();
    _os_signpost_emit_with_name_impl(&dword_22BB2C000, v10, v17, v14, "Span", v12, v13, 2u);
    MEMORY[0x2318A6080](v13, -1, -1);
  }

  (*(v4 + 8))(v6, v20);
  return (*(v7 + 8))(v9, v19);
}

void sub_22BD78DF0(uint64_t a1)
{
  sub_22BDB43E4();
  if (v1 <= 0x3F)
  {
    type metadata accessor for SpanMetadata(319);
    if (v2 <= 0x3F)
    {
      sub_22BD78528(319);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_22BD78EFC(uint64_t a1)
{
  type metadata accessor for SessionCoordinatorCommand(0);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22BBE6DE0(&qword_27D8E63F0, &qword_22BDCEE10);
  sub_22BB30444();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v19 - v10;
  v12 = sub_22BBE6DE0(&qword_27D8E6540, &qword_22BDCE450);
  v13 = *(v12 + 48);
  v14 = *(v12 + 64);
  sub_22BDB98C4();
  sub_22BB2F330();
  (*(v15 + 16))(v5, a1);
  v16 = v1 + OBJC_IVAR____TtC23IntelligenceFlowRuntime34SessionCoordinatorResponseCallback_spanMetadata;
  *&v5[v13] = *(v1 + OBJC_IVAR____TtC23IntelligenceFlowRuntime34SessionCoordinatorResponseCallback_spanMetadata);
  v17 = type metadata accessor for SpanMetadata(0);
  sub_22BB956CC(v16 + *(v17 + 24), &v5[v14]);
  swift_storeEnumTagMultiPayload();
  sub_22BBE6DE0(&qword_27D8E6400, &unk_22BDCF250);
  sub_22BDBAF34();
  return (*(v8 + 8))(v11, v6);
}

uint64_t sub_22BD790CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a2;
  type metadata accessor for SessionCoordinatorCommand(0);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v6);
  v8 = (&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_22BBE6DE0(&qword_27D8E63F0, &qword_22BDCEE10);
  sub_22BB30444();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v18 - v13;
  v15 = (v8 + *(sub_22BBE6DE0(&qword_27D8E63F8, &qword_22BDCE220) + 48));
  v16 = *(sub_22BBE6DE0(&qword_27D8E6408, &qword_22BDCE240) + 48);
  *v8 = a1;
  sub_22BBBE904(v3 + OBJC_IVAR____TtC23IntelligenceFlowRuntime34SessionCoordinatorResponseCallback_spanMetadata, v8 + v16, type metadata accessor for SpanMetadata);
  type metadata accessor for SessionCoordinatorCommand.TransactionRequestPayload(0);
  swift_storeEnumTagMultiPayload();
  *v15 = v19;
  v15[1] = a3;
  swift_storeEnumTagMultiPayload();

  sub_22BBE6DE0(&qword_27D8E6400, &unk_22BDCF250);
  sub_22BDBAF34();
  return (*(v11 + 8))(v14, v9);
}

void sub_22BD792BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 && a5 && (sub_22BBC03CC(a1, a2, a4, a5) & 1) != 0)
  {

    sub_22BCEF9C0(a3, a6);
  }
}

uint64_t sub_22BD79348(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_22BD79360(uint64_t a1, unsigned int a2)
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

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22BD793B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
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

void *sub_22BD79408(void *result, int a2)
{
  if (a2 < 0)
  {
    result[1] = 0;
    result[2] = 0;
    *result = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

void sub_22BD79534(uint64_t a1)
{
  sub_22BDB5F24();
  if (v1 <= 0x3F)
  {
    sub_22BD79690(319, &qword_281428828, MEMORY[0x277D1E600], MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_22BDB7F64();
      if (v3 <= 0x3F)
      {
        type metadata accessor for DefaultEventLogSender(319);
        if (v4 <= 0x3F)
        {
          sub_22BDB9C14();
          if (v5 <= 0x3F)
          {
            type metadata accessor for SnippetStreamingRouter.Scoped(319);
            if (v6 <= 0x3F)
            {
              sub_22BD79690(319, &qword_28142DC10, MEMORY[0x277D1E3D8], MEMORY[0x277D41D28]);
              if (v7 <= 0x3F)
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

void sub_22BD79690(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_22BD7974C()
{
  sub_22BB31014();
  v2 = v1;
  v21 = v4;
  v22 = v3;
  v6 = v5(0);
  sub_22BB30444();
  v8 = v7;
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v9);
  v11 = &v21 - v10;
  v12 = 0;
  v13 = *(v2 + 16);
  while (1)
  {
    if (v13 == v12)
    {
      v17 = 1;
      v18 = v21;
      goto LABEL_9;
    }

    (*(v8 + 16))(v11, v2 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v12, v6);
    v14 = v22(v11);
    if (v0)
    {
      v19 = sub_22BB3ADA8();
      v20(v19);
      goto LABEL_10;
    }

    if (v14)
    {
      break;
    }

    v15 = sub_22BB3ADA8();
    v16(v15);
    ++v12;
  }

  v18 = v21;
  (*(v8 + 32))(v21, v11, v6);
  v17 = 0;
LABEL_9:
  sub_22BB336D0(v18, v17, 1, v6);
LABEL_10:
  sub_22BB376A8();
}

void sub_22BD799B0()
{
  sub_22BB31014();
  v3 = v2;
  v5 = v4;
  v15 = v6;
  v14 = v7(0);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v8);
  sub_22BB3721C();
  v9 = 0;
  v10 = *(v3 + 16);
  while (1)
  {
    if (v10 == v9)
    {
      v12 = 1;
      v13 = v15;
      goto LABEL_9;
    }

    sub_22BB33618();
    v11 = v5(v1);
    if (v0)
    {
      sub_22BB34698();
      goto LABEL_10;
    }

    if (v11)
    {
      break;
    }

    sub_22BB34698();
    ++v9;
  }

  v13 = v15;
  sub_22BB38958();
  v12 = 0;
LABEL_9:
  sub_22BB336D0(v13, v12, 1, v14);
LABEL_10:
  sub_22BB376A8();
}

uint64_t (*sub_22BD79B78@<X0>(uint64_t (*result)(__int128 *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>))(__int128 *)
{
  v4 = result;
  v6 = *(a2 + 16);
  v7 = a2 + 32;
  if (v6)
  {
    while (1)
    {
      sub_22BB69088(v7, v9);
      v8 = v4(v9);
      if (v3)
      {
        return sub_22BB32FA4(v9);
      }

      if (v8)
      {
        return sub_22BB382E8(v9, a3);
      }

      result = sub_22BB32FA4(v9);
      v7 += 40;
      if (!--v6)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_22BD79C30@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v25[2] = a2;
  v26 = a1;
  v25[0] = a4;
  v27 = sub_22BBE6DE0(&qword_27D8E6760, &unk_22BDCE9D0);
  v7 = MEMORY[0x28223BE20](v27);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v25[1] = v25 - v10;
  v11 = a3 + 64;
  v12 = 1 << *(a3 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a3 + 64);
  v15 = (v12 + 63) >> 6;
  v28 = a3;

  v17 = 0;
  if (v14)
  {
    while (1)
    {
      v18 = v9;
      v29 = v5;
      v19 = v17;
LABEL_9:
      sub_22BDB5F24();
      sub_22BB33618();
      type metadata accessor for SessionSwitchboard.SessionInfo(0);
      sub_22BB33618();
      v9 = v18;
      sub_22BC8D26C();
      v20 = v29;
      v21 = v26(v18);
      v5 = v20;
      if (v20)
      {
        sub_22BB58728(v18, &qword_27D8E6760, &unk_22BDCE9D0);
      }

      if (v21)
      {
        break;
      }

      v14 &= v14 - 1;
      result = sub_22BB58728(v18, &qword_27D8E6760, &unk_22BDCE9D0);
      v17 = v19;
      if (!v14)
      {
        goto LABEL_5;
      }
    }

    v24 = v25[0];
    sub_22BC8D26C();
    v22 = v24;
    v23 = 0;
    return sub_22BB336D0(v22, v23, 1, v27);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v19 >= v15)
      {

        v22 = v25[0];
        v23 = 1;
        return sub_22BB336D0(v22, v23, 1, v27);
      }

      v14 = *(v11 + 8 * v19);
      ++v17;
      if (v14)
      {
        v18 = v9;
        v29 = v5;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

void (*sub_22BD79F9C(uint64_t *a1))(uint64_t a1)
{
  v2 = sub_22BD7EA64(0x30uLL);
  *a1 = v2;
  v3 = sub_22BDB52C4();
  v2[4] = sub_22BD7EA64(*(*(v3 - 8) + 64));
  sub_22BB33618();
  v2[5] = sub_22BD7DEFC(v2);
  return sub_22BD7A058;
}

void sub_22BD7A058(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  v3 = sub_22BC541D0();
  v4(v3);
  sub_22BB35D94();
  sub_22BB34698();
  free(v2);

  free(v1);
}

uint64_t sub_22BD7A0B4()
{
  v0 = type metadata accessor for SessionCoordinatorCommand(0);
  MEMORY[0x28223BE20](v0);
  v1 = sub_22BBE6DE0(&qword_27D8E63F0, &qword_22BDCEE10);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v6 - v3;
  swift_storeEnumTagMultiPayload();
  sub_22BBE6DE0(&qword_27D8E6400, &unk_22BDCF250);
  sub_22BDBAF34();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_22BD7A21C()
{
  type metadata accessor for SessionSwitchboard();
  v0 = swift_allocObject();
  result = sub_22BD7A258();
  qword_28142F400 = v0;
  return result;
}

uint64_t sub_22BD7A258()
{
  sub_22BDB5F24();
  v1 = sub_22BB35760();
  type metadata accessor for SessionSwitchboard.SessionInfo(v1);
  sub_22BB3CC60(&qword_28142DC28, MEMORY[0x277D1D2C8], MEMORY[0x277D1D2D0]);
  *(v0 + 16) = sub_22BDBAB14();
  sub_22BDB52C4();
  sub_22BB32D54();
  sub_22BB3CC60(v2, v3, MEMORY[0x277D1CB30]);
  *(v0 + 24) = sub_22BDBAB14();
  return v0;
}

uint64_t sub_22BD7A334()
{
  sub_22BB2F0D4();
  sub_22BD7A0B4();
  v1 = *(v0 + 312);
  v2 = *(v0 + 320);

  return MEMORY[0x2822009F8](sub_22BD7A394, v1, v2);
}

uint64_t sub_22BD7A394()
{
  sub_22BB33EB8();
  v5 = sub_22BB34698();
  v8 = *(v1 + 400);
  v9 = (*(v1 + 392) - 1) & *(v1 + 392);
  if (v9)
  {
LABEL_7:
    while (1)
    {
      *(v1 + 392) = v9;
      *(v1 + 400) = v8;
      sub_22BB3DF00();
      sub_22BB37890();
      sub_22BB33618();
      sub_22BB31E54();
      sub_22BB38958();
      if (*(v0 + *(v2 + 28)))
      {
        break;
      }

      v9 &= v9 - 1;
      sub_22BB33EB8();
      v5 = sub_22BB34698();
      if (!v9)
      {
        goto LABEL_3;
      }
    }

    sub_22BB39808();
    sub_22BB3CEF4();
  }

  else
  {
LABEL_3:
    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v5 = *(v1 + 384);
      if (v10 >= (((1 << *(v1 + 452)) + 63) >> 6))
      {

        v11 = *(v1 + 96);
        sub_22BB31B88();
        swift_beginAccess();
        v12 = *(v11 + 16);
        *(v1 + 416) = v12;
        *(v1 + 453) = *(v12 + 32);
        sub_22BB52A10();
        v15 = v13 & v14;
        *(v1 + 448) = *MEMORY[0x277D1C8C0];

        v16 = &qword_27D8E6760;
        if (!v15)
        {
          goto LABEL_12;
        }

        while (1)
        {
          v3 = *(v1 + 232);
          v19 = *(v1 + 240);
          v15 &= v15 - 1;
          sub_22BB36720();
          sub_22BB33618();
          sub_22BB37890();
          sub_22BB33618();
          v16 = &qword_27D8E6760;
          v20 = &unk_22BDCE9D0;
          v4 = sub_22BBE6DE0(&qword_27D8E6760, &unk_22BDCE9D0);
          sub_22BB30E54();
          sub_22BB38958();
          sub_22BB31E54();
          sub_22BB38958();
          v21 = sub_22BB34914();
          sub_22BB336D0(v21, v22, v23, v24);
          while (1)
          {
            sub_22BB53CA0();
            sub_22BC8D26C();
            v25 = sub_22BBE6DE0(&qword_27D8E6760, &unk_22BDCE9D0);
            sub_22BB34F58(v25);
            if (v26)
            {
              sub_22BB36AB0();

              sub_22BDB63E4();
              sub_22BB32564();
              sub_22BB33618();
              v31 = sub_22BDB77C4();
              sub_22BDBB134();
              sub_22BB3E2A4();
              os_log_type_enabled(v31, v32);
              sub_22BB3B494();
              if (v33)
              {
                v193 = v4;
                sub_22BB354D0();
                v180 = v19;
                v19 = swift_slowAlloc();
                sub_22BB2F440();
                v167 = v3;
                v3 = swift_slowAlloc();
                v258 = v3;
                *v19 = 136446210;
                sub_22BB32D54();
                sub_22BB3CC60(v34, v35, MEMORY[0x277D1CB40]);
                v4 = sub_22BDBB684();
                v154 = &unk_22BDCE9D0;
                v20 = v36;
                sub_22BB35D94();
                sub_22BB34698();
                v37 = sub_22BB2F12C();
                sub_22BB32EE0(v37, v38, v39);
                sub_22BB36C3C();

                *(v19 + 4) = &qword_27D8E6760;
                sub_22BB3163C(&dword_22BB2C000, v40, v41, "SessionClient %{public}s deregistered.");
                sub_22BB32FA4(v3);
                v42 = sub_22BB94EFC();
                MEMORY[0x2318A6080](v42);
                v43 = sub_22BB6BC10();
                MEMORY[0x2318A6080](v43);

                v44 = sub_22BB588D0();
                sub_22BBB7A1C(v44, v45);
                v16 = &qword_27D8E6768;
                v46 = (qword_27D8E6768)(v180, v167);
              }

              else
              {

                v61 = sub_22BB588D0();
                sub_22BBB7A1C(v61, v62);
                sub_22BB35D94();
                sub_22BB34698();
                v63 = sub_22BB586F4();
                v46 = v65(v63, v64);
              }

              sub_22BB39248(v46, v47, v48, v49, v50, v51, v52, v53, v154, v167, v180, v193, v206, v219, v232, v245, v258, v271, v284, v297, v310, v323, v336, v349, v362, v1);
              &qword_27D8E6760, v66, v67, v68, v69, v70, v71, v72, v155, v168, v181, v194, v207, v220, v233, v246, v259, v272, v285, v298, v311, v324, v337, v350, v363;
              v16, v73, v74, v75, v76, v77, v78, v79, v156, v169, v182, v195, v208, v221, v234, v247, v260, v273, v286, v299, v312, v325, v338, v351, v364;
              0, v80, v81, v82, v83, v84, v85, v86, v157, v170, v183, v196, v209, v222, v235, v248, v261, v274, v287, v300, v313, v326, v339, v352, v365;
              v15, v87, v88, v89, v90, v91, v92, v93, v158, v171, v184, v197, v210, v223, v236, v249, v262, v275, v288, v301, v314, v327, v340, v353, v366;
              v19, v94, v95, v96, v97, v98, v99, v100, v159, v172, v185, v198, v211, v224, v237, v250, v263, v276, v289, v302, v315, v328, v341, v354, v367;
              v31, v101, v102, v103, v104, v105, v106, v107, v160, v173, v186, v199, v212, v225, v238, v251, v264, v277, v290, v303, v316, v329, v342, v355, v368;
              v3, v108, v109, v110, v111, v112, v113, v114, v161, v174, v187, v200, v213, v226, v239, v252, v265, v278, v291, v304, v317, v330, v343, v356, v369;
              v4, v115, v116, v117, v118, v119, v120, v121, v162, v175, v188, v201, v214, v227, v240, v253, v266, v279, v292, v305, v318, v331, v344, v357, v370;
              v20, v122, v123, v124, v125, v126, v127, v128, v163, v176, v189, v202, v215, v228, v241, v254, v267, v280, v293, v306, v319, v332, v345, v358, v371;
              v229, v129, v130, v131, v132, v133, v134, v135, v164, v177, v190, v203, v216, v229, v242, v255, v268, v281, v294, v307, v320, v333, v346, v359, v372;
              v243, v136, v137, v138, v139, v140, v141, v142, v165, v178, v191, v204, v217, v230, v243, v256, v269, v282, v295, v308, v321, v334, v347, v360, v373;
              v257, v143, v144, v145, v146, v147, v148, v149, v166, v179, v192, v205, v218, v231, v244, v257, v270, v283, v296, v309, v322, v335, v348, v361, v374;
              sub_22BB2F09C();
              sub_22BB3CEF4();

              __asm { BRAA            X1, X16 }
            }

            v3 = *(v1 + 248);
            v4 = *(v1 + 88);
            sub_22BB30E54();
            sub_22BB38958();
            sub_22BB31E54();
            sub_22BB38958();
            if (sub_22BDB43B4())
            {
              v54 = sub_22BB58B5C();
              v55(v54);
              sub_22BDB5144();
              v56 = sub_22BB3B144();
              v57(v56);
              sub_22BB31B20();
              sub_22BDB5744();
              sub_22BB32A48(&unk_22BDCE208);
              v58 = swift_task_alloc();
              *(v1 + 440) = v58;
              *v58 = v1;
              sub_22BB37E48(v58);
              sub_22BB3CEF4();

              __asm { BR              X1 }
            }

            sub_22BB309FC();
            sub_22BB34698();
            sub_22BB33EB8();
            sub_22BB34698();
            if (v15)
            {
              break;
            }

LABEL_12:
            while (1)
            {
              sub_22BB72258();
              if (v17 == v18)
              {
                break;
              }

              sub_22BB3B82C();
            }

            v19 = *(v1 + 240);
            v20 = &unk_22BDCE9D0;
            sub_22BBE6DE0(&qword_27D8E6760, &unk_22BDCE9D0);
            sub_22BB30B28();
            sub_22BB336D0(v27, v28, v29, v30);
            v15 = 0;
          }
        }
      }

      v9 = *(v5 + 8 * v10 + 64);
      ++v8;
      if (v9)
      {
        v8 = v10;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  return MEMORY[0x2822009F8](v5, v6, v7);
}

void sub_22BD7A910()
{
  sub_22BB31014();
  sub_22BDB77D4();
  sub_22BB30444();
  v32 = v3;
  v33 = v2;
  MEMORY[0x28223BE20](v2);
  sub_22BB30574();
  v6 = v5 - v4;
  sub_22BDB52C4();
  sub_22BB30444();
  MEMORY[0x28223BE20](v7);
  sub_22BB30C74();
  sub_22BB89D5C();
  MEMORY[0x28223BE20](v8);
  sub_22BB6C6EC();
  MEMORY[0x28223BE20](v9);
  sub_22BD7AD3C();
  if (!v0)
  {
    v31 = v1;
    sub_22BB32564();
    sub_22BB33618();
    sub_22BB31A60();
    swift_beginAccess();
    v11 = sub_22BD79F9C(&v34);
    if (*(v10 + 8))
    {
      v12 = v10;
      sub_22BB57FF8(sub_22BD91568);
      v13 = *(*(v12 + 40) + 16);
      v14 = sub_22BB32E04();
      sub_22BB5806C(v14, v15);
      *(*(v12 + 40) + 16) = v13 + 1;
      sub_22BB32564();
      sub_22BB33618();
    }

    v16 = sub_22BB68F7C();
    v11(v16);
    swift_endAccess();
    sub_22BB35D94();
    sub_22BB34698();
    sub_22BDB63E4();
    sub_22BB3A7A4();
    sub_22BB33618();
    sub_22BB33618();
    v17 = sub_22BDB77C4();
    v18 = sub_22BDBB134();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = sub_22BB3B778();
      v34 = sub_22BB3E490();
      *v19 = 136446466;
      sub_22BB32D54();
      sub_22BB3CC60(v20, v21, MEMORY[0x277D1CB40]);
      sub_22BDBB684();
      sub_22BB313B4();
      sub_22BB542F4();
      sub_22BB34698();
      v22 = sub_22BB7596C();
      sub_22BB32EE0(v22, v31, v23);
      sub_22BB313B4();

      *(v19 + 4) = v31;
      *(v19 + 12) = 2082;
      sub_22BDBB684();
      v25 = v24;
      sub_22BB34698();
      v26 = sub_22BB7596C();
      v28 = sub_22BB32EE0(v26, v25, v27);

      *(v19 + 14) = v28;
      _os_log_impl(&dword_22BB2C000, v17, v18, "SessionClient %{public}s registered to observe SessionClient %{public}s.", v19, 0x16u);
      swift_arrayDestroy();
      sub_22BB2F368();
      MEMORY[0x2318A6080]();
      sub_22BB2F368();
      MEMORY[0x2318A6080]();

      (*(v32 + 8))(v6, v33);
    }

    else
    {

      sub_22BB35860();
      sub_22BB34698();
      sub_22BB34698();
      v29 = sub_22BB720A0();
      v30(v29, v33);
    }
  }

  sub_22BB376A8();
}

void sub_22BD7AD3C()
{
  sub_22BB31014();
  v75 = v2;
  sub_22BDB52C4();
  sub_22BB2F330();
  MEMORY[0x28223BE20](v3);
  sub_22BB30C74();
  v6 = v4 - v5;
  MEMORY[0x28223BE20](v7);
  sub_22BB34360();
  MEMORY[0x28223BE20](v8);
  sub_22BB2F384();
  v71 = v9;
  sub_22BB30B70();
  v11 = MEMORY[0x28223BE20](v10);
  MEMORY[0x28223BE20](v11);
  sub_22BB2F384();
  v69 = v12;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v13);
  sub_22BB2F39C();
  sub_22BB2F120();
  sub_22BDB77D4();
  sub_22BB30444();
  v72 = v15;
  v73 = v14;
  MEMORY[0x28223BE20](v14);
  sub_22BB30C74();
  v18 = v16 - v17;
  MEMORY[0x28223BE20](v19);
  sub_22BB2F384();
  v21 = v20;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v22);
  sub_22BB2F39C();
  v70 = v23;
  sub_22BB89970();
  swift_beginAccess();
  if (*(*(v0 + 24) + 16))
  {
    sub_22BB3CB98();
    if (v24)
    {
      sub_22BB3711C();
      v26 = *(v25 + 8);
      v27 = *(v25 + 24);
      v28 = *(v25 + 32);
      swift_endAccess();
      sub_22BB89970();
      swift_beginAccess();
      v29 = v27;
      v30 = *(*(v0 + 24) + 16);

      if (!v30 || (sub_22BB3CB98(), (v31 & 1) == 0))
      {
        swift_endAccess();
        sub_22BDB63E4();
        sub_22BB33618();
        sub_22BB33618();
        v47 = sub_22BDB77C4();
        v48 = sub_22BDBB114();
        if (os_log_type_enabled(v47, v48))
        {
          v49 = sub_22BB3B778();
          v74 = sub_22BB3E490();
          *v49 = 136446466;
          sub_22BB32D54();
          sub_22BB3CC60(v50, v51, MEMORY[0x277D1CB40]);
          sub_22BDBB684();
          sub_22BB542F4();
          sub_22BB34698();
          v52 = sub_22BB6BD90();
          sub_22BB32EE0(v52, v26, v53);
          sub_22BB313B4();

          sub_22BB8DCFC();
          sub_22BDBB684();
          sub_22BB3E440();
          sub_22BB34698();
          v54 = sub_22BB6BD90();
          sub_22BB32EE0(v54, v26, v55);
          sub_22BB313B4();

          *(v49 + 14) = v71;
          _os_log_impl(&dword_22BB2C000, v47, v48, "SessionClient %{public}s is not allowed to observe unknown SessionClient %{public}s.", v49, 0x16u);
          swift_arrayDestroy();
          sub_22BB2F368();
          MEMORY[0x2318A6080]();
          sub_22BB2F368();
          MEMORY[0x2318A6080]();
        }

        else
        {

          sub_22BB34698();
          sub_22BB31F54();
          sub_22BB34698();
        }

        (*(v72 + 8))(v21, v73);
        LOBYTE(v74) = 1;
        sub_22BBB7088();
        swift_willThrowTypedImpl();

        goto LABEL_17;
      }

      sub_22BB3711C();
      v33 = *(v32 + 24);
      swift_endAccess();
      if (v33)
      {
        v34 = v69;
        if (!v29)
        {

          if (v28)
          {
            goto LABEL_22;
          }

LABEL_24:
          sub_22BDB63E4();
          sub_22BB3A7A4();
          sub_22BB33618();
          v56 = v34;
          sub_22BB33618();
          v57 = sub_22BDB77C4();
          sub_22BDBB114();
          sub_22BB3E2A4();
          if (os_log_type_enabled(v57, v58))
          {
            v59 = sub_22BB3B778();
            v74 = sub_22BB3E490();
            *v59 = 136446466;
            sub_22BB32D54();
            v62 = sub_22BB3CC60(v60, v61, MEMORY[0x277D1CB40]);
            sub_22BB32E04();
            v63 = sub_22BDBB684();
            sub_22BB73C04();
            sub_22BB34698();
            v64 = sub_22BB32EE0(v63, v56, &v74);

            *(v59 + 4) = v64;
            *(v59 + 12) = 2082;
            sub_22BB32E04();
            sub_22BDBB684();
            sub_22BB3E440();
            sub_22BB34698();
            v65 = sub_22BB6BD90();
            sub_22BB32EE0(v65, v62, v66);
            sub_22BB313B4();

            *(v59 + 14) = v56;
            _os_log_impl(&dword_22BB2C000, v57, v75, "SessionClient %{public}s is not allowed to observe SessionClient %{public}s.", v59, 0x16u);
            swift_arrayDestroy();
            sub_22BB2F368();
            MEMORY[0x2318A6080]();
            sub_22BB2F368();
            MEMORY[0x2318A6080]();

            (*(v72 + 8))(v70, v73);
          }

          else
          {

            sub_22BB35860();
            sub_22BB34698();
            sub_22BB34698();
            v67 = sub_22BB720A0();
            v68(v67, v73);
          }

          LOBYTE(v74) = 4;
          sub_22BBB7088();
          swift_willThrowTypedImpl();

LABEL_17:

          goto LABEL_18;
        }

        swift_bridgeObjectRetain_n();

        v35 = sub_22BDB4E44();

        if (v35)
        {

LABEL_29:

          goto LABEL_30;
        }
      }

      else
      {

        v34 = v69;
        if (!v29)
        {

          goto LABEL_29;
        }
      }

      if (v28)
      {
LABEL_22:

LABEL_30:

        goto LABEL_18;
      }

      goto LABEL_24;
    }
  }

  swift_endAccess();
  sub_22BDB63E4();
  sub_22BB3A7A4();
  sub_22BB33618();
  sub_22BB33618();
  v36 = sub_22BDB77C4();
  v37 = sub_22BDBB114();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = sub_22BB3B778();
    v74 = sub_22BB3E490();
    *v38 = 136446466;
    sub_22BB32D54();
    sub_22BB3CC60(v39, v40, MEMORY[0x277D1CB40]);
    sub_22BDBB684();
    v42 = v41;
    sub_22BB34698();
    v43 = sub_22BB6BD90();
    sub_22BB32EE0(v43, v42, v44);
    sub_22BB3935C();

    sub_22BB8DCFC();
    sub_22BDBB684();
    sub_22BB3E440();
    sub_22BB34698();
    v45 = sub_22BB6BD90();
    sub_22BB32EE0(v45, v1, v46);
    sub_22BB313B4();

    *(v38 + 14) = v6;
    _os_log_impl(&dword_22BB2C000, v36, v37, "Unknown SessionClient %{public}s is not allowed to observe SessionClient %{public}s.", v38, 0x16u);
    sub_22BB69568();
    sub_22BB2F368();
    MEMORY[0x2318A6080]();
    sub_22BB2F368();
    MEMORY[0x2318A6080]();
  }

  else
  {

    sub_22BB35860();
    sub_22BB34698();
    sub_22BB34698();
  }

  (*(v72 + 8))(v18, v73);
  LOBYTE(v74) = 1;
  sub_22BBB7088();
  swift_willThrowTypedImpl();
LABEL_18:
  sub_22BB376A8();
}

void sub_22BD7B758()
{
  sub_22BB31014();
  v4 = v3;
  sub_22BDB77D4();
  sub_22BB30444();
  v41 = v6;
  v42 = v5;
  MEMORY[0x28223BE20](v5);
  sub_22BB30574();
  sub_22BB3ABC8();
  sub_22BDB52C4();
  sub_22BB2F330();
  MEMORY[0x28223BE20](v7);
  sub_22BB30C74();
  sub_22BB89D5C();
  MEMORY[0x28223BE20](v8);
  sub_22BB6C6EC();
  MEMORY[0x28223BE20](v9);
  sub_22BD7AD3C();
  if (v0)
  {
    goto LABEL_9;
  }

  v39 = v4;
  v40 = v1;
  v37 = v2;
  v38 = v10;
  sub_22BB32564();
  sub_22BB33618();
  sub_22BB31A60();
  swift_beginAccess();
  v11 = sub_22BD79F9C(&v43);
  v13 = v11;
  if (!*(v12 + 8))
  {
    v18 = sub_22BB68F7C();
    v13(v18);
    swift_endAccess();
LABEL_6:
    sub_22BB35D94();
    sub_22BB34698();
    sub_22BDB63E4();
    sub_22BB3A7A4();
    v19 = v37;
    sub_22BB33618();
    sub_22BB33618();
    v20 = sub_22BDB77C4();
    v21 = sub_22BDBB134();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = sub_22BB3B778();
      LODWORD(v39) = v21;
      v23 = v22;
      v43 = sub_22BB3E490();
      *v23 = 136446466;
      sub_22BB32D54();
      sub_22BB3CC60(v24, v25, MEMORY[0x277D1CB40]);
      sub_22BDBB684();
      sub_22BB73C04();
      sub_22BB34698();
      v26 = sub_22BB7596C();
      v28 = sub_22BB32EE0(v26, v19, v27);

      *(v23 + 4) = v28;
      *(v23 + 12) = 2082;
      sub_22BDBB684();
      v30 = v29;
      sub_22BB34698();
      v31 = sub_22BB7596C();
      v33 = sub_22BB32EE0(v31, v30, v32);

      *(v23 + 14) = v33;
      _os_log_impl(&dword_22BB2C000, v20, v39, "SessionClient %{public}s deregistered to observe SessionClient %{public}s.", v23, 0x16u);
      sub_22BB69568();
      sub_22BB2F368();
      MEMORY[0x2318A6080]();
      sub_22BB2F368();
      MEMORY[0x2318A6080]();

      (*(v41 + 8))(v40, v42);
    }

    else
    {

      sub_22BB35860();
      sub_22BB34698();
      sub_22BB34698();
      v34 = sub_22BB720A0();
      v35(v34, v42);
    }

LABEL_9:
    sub_22BB376A8();
    return;
  }

  v14 = v12;
  v36 = &v36;
  MEMORY[0x28223BE20](v11);
  *(&v36 - 2) = v39;
  v15 = sub_22BD7E4E4(sub_22BD7DAD4, (&v36 - 4));
  v16 = *(*(v14 + 40) + 16);
  if (v16 >= v15)
  {
    sub_22BD7E8D0(v15, v16);
    v17 = sub_22BB68F7C();
    v13(v17);
    swift_endAccess();
    goto LABEL_6;
  }

  __break(1u);

  swift_endAccess();
  __break(1u);
}

uint64_t sub_22BD7BE5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_22BD7BE7C, 0, 0);
}

uint64_t sub_22BD7BE7C()
{
  sub_22BB2F35C();
  sub_22BD7F034();
  v1 = OBJC_IVAR____TtC23IntelligenceFlowRuntime20ClientSessionManager_clientProxy;
  *(v0 + 32) = v2;
  *(v0 + 40) = v1;
  if (qword_28142A928 != -1)
  {
    sub_22BB36324(&qword_28142A928);
  }

  sub_22BB72E68();
  sub_22BB32860();
  sub_22BB3CC60(v3, v4, &unk_22BDCEAB4);
  sub_22BD7F040();
  sub_22BB30AE4();
  sub_22BDBAE44();
  sub_22BB39694();
  v5 = sub_22BB72F98();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_22BD7BF50()
{
  sub_22BB2F0D4();
  sub_22BB36050();

  v0 = sub_22BB3758C();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

void sub_22BD7BFB0()
{
  if (*(v0 + 56))
  {
    sub_22BB2F0D4();

    sub_22BB32A48(MEMORY[0x277D1CED8]);
    v1 = swift_task_alloc();
    v2 = sub_22BB72038(v1);
    *v2 = v3;
    v4 = sub_22BB53E38(v2);

    v5(v4);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_22BD7C168()
{
  sub_22BB2F35C();
  v1 = v0[11];
  if (v0[9])
  {

    v1 = v0[9];
  }

  if (sub_22BDBB034())
  {
    if (v1)
    {
      swift_willThrow();
    }

    sub_22BB2F09C();

    return v2();
  }

  else
  {
    v0[9] = v1;
    v4 = swift_task_alloc();
    v0[10] = v4;
    sub_22BBE6DE0(&qword_27D8E62B8, &qword_22BDCDD50);
    sub_22BB95BC8();
    *v4 = v5;
    v6 = sub_22BB38268();

    return MEMORY[0x2822004D0](v6);
  }
}

uint64_t sub_22BD7C26C()
{
  sub_22BB2F0D4();

  sub_22BB2F09C();

  return v0();
}

uint64_t sub_22BD7C2C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_22BD7C2E8, 0, 0);
}

uint64_t sub_22BD7C2E8()
{
  sub_22BB2F35C();
  sub_22BD7F034();
  v1 = OBJC_IVAR____TtC23IntelligenceFlowRuntime20ClientSessionManager_clientProxy;
  *(v0 + 32) = v2;
  *(v0 + 40) = v1;
  if (qword_28142A928 != -1)
  {
    sub_22BB36324(&qword_28142A928);
  }

  sub_22BB72E68();
  sub_22BB32860();
  sub_22BB3CC60(v3, v4, &unk_22BDCEAB4);
  sub_22BD7F040();
  sub_22BB30AE4();
  sub_22BDBAE44();
  sub_22BB39694();
  v5 = sub_22BB72F98();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_22BD7C3BC()
{
  sub_22BB2F0D4();
  sub_22BB36050();

  v0 = sub_22BB3758C();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

void sub_22BD7C41C()
{
  if (*(v0 + 56))
  {
    sub_22BB2F0D4();

    sub_22BB32A48(MEMORY[0x277D1CED8]);
    v1 = swift_task_alloc();
    v2 = sub_22BB72038(v1);
    *v2 = v3;
    v4 = sub_22BB53E38(v2);

    v5(v4);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_22BD7C5B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_22BD7C5D8, 0, 0);
}

uint64_t sub_22BD7C5D8()
{
  sub_22BB2F35C();
  sub_22BD7F034();
  v1 = OBJC_IVAR____TtC23IntelligenceFlowRuntime20ClientSessionManager_clientProxy;
  *(v0 + 32) = v2;
  *(v0 + 40) = v1;
  if (qword_28142A928 != -1)
  {
    sub_22BB36324(&qword_28142A928);
  }

  sub_22BB72E68();
  sub_22BB32860();
  sub_22BB3CC60(v3, v4, &unk_22BDCEAB4);
  sub_22BD7F040();
  sub_22BB30AE4();
  sub_22BDBAE44();
  sub_22BB39694();
  v5 = sub_22BB72F98();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_22BD7C6AC()
{
  sub_22BB2F0D4();
  sub_22BB36050();

  v0 = sub_22BB3758C();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

void sub_22BD7C70C()
{
  if (*(v0 + 56))
  {
    sub_22BB2F0D4();

    sub_22BB32A48(MEMORY[0x277D1CED8]);
    v1 = swift_task_alloc();
    v2 = sub_22BB72038(v1);
    *v2 = v3;
    v4 = sub_22BB53E38(v2);

    v5(v4);
  }

  else
  {
    __break(1u);
  }
}

void sub_22BD7C7A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_22BB31014();
  v26 = v25;
  v44 = v27;
  v29 = v28;
  v30 = sub_22BBE6DE0(&qword_27D8E6808, &qword_22BDCF4D8);
  sub_22BB2F0C8(v30);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v31);
  v33 = &v43 - v32;
  sub_22BBE6DE0(&qword_27D8E6810, &qword_22BDCF4E0);
  sub_22BB2F330();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v34);
  sub_22BB3ABC8();
  v35 = sub_22BDB5F24();
  v36 = sub_22BB2F0C8(v35);
  MEMORY[0x28223BE20](v36);
  sub_22BB30574();
  v39 = v38 - v37;
  sub_22BB31B88();
  swift_beginAccess();
  v40 = *(v23 + 16);
  v45[2] = v29;

  sub_22BD79C30(sub_22BD7EFDC, v45, v40, v33);

  v41 = sub_22BBE6DE0(&qword_27D8E6760, &unk_22BDCE9D0);
  sub_22BB31814(v33, 1, v41);
  if (v42)
  {
    sub_22BB58728(v33, &qword_27D8E6808, &qword_22BDCF4D8);
    sub_22BBB7088();
    swift_willThrowTypedImpl();
  }

  else
  {
    v43 = v24;
    sub_22BB38958();
    sub_22BB31E54();
    sub_22BB38958();
    sub_22BB38958();
    sub_22BB33EB8();
    sub_22BB34698();
    sub_22BD7CA00(v39, v44, v26);
    sub_22BB309FC();
    sub_22BB34698();
  }

  sub_22BB376A8();
}

uint64_t sub_22BD7CA00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22BBE6DE0(&qword_27D8E67E8, &qword_22BDCF4B0);
  sub_22BB2F0C8(v6);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v7);
  sub_22BB3721C();
  v8 = type metadata accessor for SessionSwitchboard.SessionInfo(0);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v9);
  sub_22BB30574();
  sub_22BB345CC();
  sub_22BD7CB98();
  if (v3)
  {
    return v10;
  }

  sub_22BB89970();
  swift_beginAccess();
  sub_22BB52A38();
  sub_22BB35204();
  sub_22BB31814(v12, v13, v14);
  if (v15)
  {
    sub_22BB58728(v4, &qword_27D8E67E8, &qword_22BDCF4B0);
    swift_endAccess();
    sub_22BBB7088();
    swift_willThrowTypedImpl();
    return 0;
  }

  else
  {
    sub_22BB31E54();
    sub_22BB38958();
    swift_endAccess();
    v11 = *(v5 + *(v8 + 32));

    sub_22BB33EB8();
    sub_22BB34698();
  }

  return v11;
}

void sub_22BD7CB98()
{
  sub_22BB31014();
  v76 = v2;
  v3 = sub_22BDB5F24();
  v4 = sub_22BB2F0C8(v3);
  MEMORY[0x28223BE20](v4);
  sub_22BB30C74();
  sub_22BB34360();
  MEMORY[0x28223BE20](v5);
  sub_22BB2F384();
  v74 = v6;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v7);
  sub_22BB2F39C();
  v72 = v8;
  sub_22BB2F120();
  v79 = sub_22BDB77D4();
  sub_22BB30444();
  v77 = v9;
  MEMORY[0x28223BE20](v10);
  sub_22BB30C74();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  sub_22BB2F384();
  v75 = v15;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v16);
  sub_22BB2F39C();
  v73 = v17;
  v18 = sub_22BBE6DE0(&qword_27D8E67E8, &qword_22BDCF4B0);
  sub_22BB2F0C8(v18);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v19);
  v21 = &v71 - v20;
  type metadata accessor for SessionSwitchboard.SessionInfo(0);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v22);
  sub_22BB30574();
  sub_22BB89970();
  swift_beginAccess();
  sub_22BB52A38();
  sub_22BB35204();
  sub_22BB31814(v23, v24, v25);
  if (!v26)
  {
    sub_22BB31E54();
    sub_22BB38958();
    swift_endAccess();
    sub_22BB89970();
    swift_beginAccess();
    if (*(*(v0 + 24) + 16) && (sub_22BB3CB98(), (v38 & 1) != 0))
    {
      sub_22BB3711C();
      v40 = v39[1];
      v41 = v39[3];
      v43 = v39[5];
      v42 = v39[6];
      swift_endAccess();
      if (v41)
      {

        swift_bridgeObjectRetain_n();

        v44 = sub_22BDB4E44();

        if (v44)
        {
          sub_22BB33EB8();
          sub_22BB34698();

          goto LABEL_22;
        }
      }

      else
      {
      }

      v75 = v42;
      sub_22BDB63E4();
      sub_22BB36720();
      v56 = v72;
      sub_22BB33618();

      v57 = sub_22BDB77C4();
      v58 = sub_22BDBB114();

      if (os_log_type_enabled(v57, v58))
      {
        sub_22BB3B778();
        v74 = v40;
        v59 = sub_22BB3E030();
        v71 = v43;
        v78[0] = v59;
        *v56 = 136446466;
        v60 = sub_22BDB4E34();
        sub_22BB32EE0(v60, v61, v78);
        sub_22BB32EA4();

        sub_22BD7EFFC();
        MEMORY[0x23189FEB0]();
        v63 = v62;
        sub_22BB309FC();
        sub_22BB34698();
        v64 = sub_22BB6BD90();
        v66 = sub_22BB32EE0(v64, v63, v65);

        *(v56 + 14) = v66;
        sub_22BB3942C(&dword_22BB2C000, v67, v58, "Group %{public}s is not allowed to observe session %{public}s.");
        sub_22BB8ABD4();
        sub_22BB2F368();
        MEMORY[0x2318A6080]();
        v68 = sub_22BB6BC10();
        MEMORY[0x2318A6080](v68);

        (*(v77 + 8))(v73, v79);
      }

      else
      {

        sub_22BB309FC();
        sub_22BB34698();
        v69 = sub_22BB720A0();
        v70(v69, v79);
      }

      LOBYTE(v78[0]) = 4;
      sub_22BBB7088();
      swift_willThrowTypedImpl();
    }

    else
    {
      swift_endAccess();
      v45 = v75;
      sub_22BDB63E4();
      sub_22BB36720();
      sub_22BB33618();

      v46 = sub_22BDB77C4();
      v47 = sub_22BDBB114();

      if (os_log_type_enabled(v46, v47))
      {
        sub_22BB3B778();
        v78[0] = sub_22BB3E030();
        *v1 = 136446466;
        v48 = sub_22BDB4E34();
        sub_22BB32EE0(v48, v49, v78);
        sub_22BB32EA4();

        sub_22BD7EFFC();
        MEMORY[0x23189FEB0]();
        v51 = v50;
        sub_22BB309FC();
        sub_22BB34698();
        v52 = sub_22BB6BD90();
        v54 = sub_22BB32EE0(v52, v51, v53);

        *(v1 + 14) = v54;
        _os_log_impl(&dword_22BB2C000, v46, v47, "Group %{public}s is not allowed to observe session %{public}s because it has an unknown owning SessionClient.", v1, 0x16u);
        swift_arrayDestroy();
        sub_22BB2F368();
        MEMORY[0x2318A6080]();
        v55 = sub_22BB6BC10();
        MEMORY[0x2318A6080](v55);
      }

      else
      {

        sub_22BB309FC();
        sub_22BB34698();
      }

      (*(v77 + 8))(v45, v79);
      LOBYTE(v78[0]) = 1;
      sub_22BBB7088();
      swift_willThrowTypedImpl();
    }

    sub_22BB33EB8();
    sub_22BB34698();
    goto LABEL_22;
  }

  sub_22BB58728(v21, &qword_27D8E67E8, &qword_22BDCF4B0);
  swift_endAccess();
  sub_22BDB63E4();
  sub_22BB36720();
  sub_22BB33618();

  v27 = sub_22BDB77C4();
  v28 = sub_22BDBB114();

  if (os_log_type_enabled(v27, v28))
  {
    sub_22BB3B778();
    v78[0] = sub_22BB3E030();
    *v1 = 136446466;
    v29 = sub_22BDB4E34();
    sub_22BB32EE0(v29, v30, v78);
    sub_22BB32EA4();

    sub_22BD7EFFC();
    MEMORY[0x23189FEB0]();
    v32 = v31;
    sub_22BB309FC();
    sub_22BB34698();
    v33 = sub_22BB6BD90();
    v35 = sub_22BB32EE0(v33, v32, v34);

    *(v1 + 14) = v35;
    sub_22BB3942C(&dword_22BB2C000, v36, v28, "Group %{public}s is not allowed to observe session %{public}s.");
    sub_22BB8ABD4();
    sub_22BB2F368();
    MEMORY[0x2318A6080]();
    v37 = sub_22BB6BC10();
    MEMORY[0x2318A6080](v37);
  }

  else
  {

    sub_22BB309FC();
    sub_22BB34698();
  }

  (*(v77 + 8))(v13, v79);
  LOBYTE(v78[0]) = 0;
  sub_22BBB7088();
  swift_willThrowTypedImpl();
LABEL_22:
  sub_22BB376A8();
}

void sub_22BD7D328()
{
  sub_22BB31014();
  v40 = v2;
  v41 = v3;
  v4 = sub_22BDB5984();
  sub_22BB30444();
  v43 = v5;
  MEMORY[0x28223BE20](v6);
  sub_22BB30574();
  v39 = v8 - v7;
  v9 = sub_22BBE6DE0(&qword_27D8E67F0, &qword_22BDCF4B8) - 8;
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v10);
  sub_22BB3721C();
  v11 = sub_22BBE6DE0(&qword_27D8E6410, &unk_22BDCE250);
  v12 = sub_22BB2F0C8(v11);
  MEMORY[0x28223BE20](v12);
  sub_22BB30C74();
  v42 = v13 - v14;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v15);
  sub_22BB89D5C();
  MEMORY[0x28223BE20](v16);
  v18 = &v38 - v17;
  sub_22BBE6DE0(&qword_27D8E6760, &unk_22BDCE9D0);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v19);
  v21 = &v38 - v20;
  sub_22BC5E5C4();
  v40 = v21;
  type metadata accessor for SessionSwitchboard.SessionInfo(0);
  sub_22BC5E5C4();
  sub_22BB33EB8();
  sub_22BB34698();
  (*(v43 + 16))(v1, v41, v4);
  sub_22BB336D0(v1, 0, 1, v4);
  v22 = *(v9 + 56);
  sub_22BB3ADA8();
  sub_22BC5E5C4();
  sub_22BC5E5C4();
  sub_22BB8ACC0();
  sub_22BB31814(v23, v24, v25);
  if (!v32)
  {
    sub_22BC5E5C4();
    sub_22BB8ACC0();
    sub_22BB31814(v29, v30, v31);
    if (!v32)
    {
      v34 = v0 + v22;
      v35 = v39;
      (*(v43 + 32))(v39, v34, v4);
      sub_22BB3CC60(&qword_28142DC90, MEMORY[0x277D1CF60], MEMORY[0x277D1CF68]);
      v36 = v42;
      sub_22BDBABD4();
      v37 = *(v43 + 8);
      v37(v35, v4);
      sub_22BB58728(v1, &qword_27D8E6410, &unk_22BDCE250);
      sub_22BB58728(v18, &qword_27D8E6410, &unk_22BDCE250);
      v37(v36, v4);
      sub_22BB58728(v0, &qword_27D8E6410, &unk_22BDCE250);
      goto LABEL_10;
    }

    sub_22BB757AC(v1);
    sub_22BB757AC(v18);
    sub_22BB3AB38();
    v33(v42, v4);
LABEL_9:
    sub_22BB58728(v0, &qword_27D8E67F0, &qword_22BDCF4B8);
    goto LABEL_10;
  }

  sub_22BB757AC(v1);
  sub_22BB757AC(v18);
  sub_22BB8ACC0();
  sub_22BB31814(v26, v27, v28);
  if (!v32)
  {
    goto LABEL_9;
  }

  sub_22BB58728(v0, &qword_27D8E6410, &unk_22BDCE250);
LABEL_10:
  sub_22BB34698();
  sub_22BB376A8();
}

uint64_t sub_22BD7D788()
{

  return v0;
}

uint64_t sub_22BD7D7B0()
{
  sub_22BD7D788();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_22BD7D808(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_22BD7D848(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_22BD7D8A4(uint64_t a1)
{
  sub_22BDB52C4();
  if (v1 <= 0x3F)
  {
    sub_22BD7D9C0(319, &qword_28142DC80, MEMORY[0x277D1CF60], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_22BD7D9C0(319, &qword_2814288A0, MEMORY[0x277D1CB28], MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        sub_22BD7DA24(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_22BD7D9C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_22BD7DA24(uint64_t a1)
{
  if (!qword_28142ABF8)
  {
    v2 = sub_22BD7DA80();
    v4 = type metadata accessor for SessionCoordinator(a1, &type metadata for StandardSessionCoordinatorEffects, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &qword_28142ABF8);
    }
  }
}

unint64_t sub_22BD7DA80()
{
  result = qword_281428EB0[0];
  if (!qword_281428EB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281428EB0);
  }

  return result;
}

void sub_22BD7DB94(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_22BB36EC4(a1, a5 + 8 * (a1 >> 6));
  v10 = (*(v9 + 48) + 16 * v8);
  *v10 = v11;
  v10[1] = v12;
  v13 = *(v9 + 56);
  v14(0);
  sub_22BB2F330();
  (*(v15 + 32))(v13 + *(v15 + 72) * a1, a4);
  sub_22BB39384();
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v16;
  }
}

void sub_22BD7DC2C()
{
  sub_22BB3FE60();
  v3 = v2;
  sub_22BB34428(v2, v4, v5, v6);
  v7 = sub_22BB7047C();
  v8 = type metadata accessor for FeedbackLearning.CandidateParameter(v7);
  sub_22BB2F0C8(v8);
  sub_22BB38958();
  *(*(v0 + 56) + 8 * v3) = v1;
  sub_22BB39384();
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 16) = v9;
  }
}

void sub_22BD7DD0C()
{
  sub_22BB3FE60();
  v3 = v2;
  v5 = v4;
  sub_22BB34428(v4, v2, v6, v7);
  sub_22BB7047C();
  sub_22BDB43E4();
  sub_22BB2F330();
  (*(v8 + 32))(v1 + *(v8 + 72) * v5, v3);
  v9 = type metadata accessor for SessionCoordinatorInjectionRequest(0);
  sub_22BB2F0C8(v9);
  sub_22BB38958();
  sub_22BB39384();
  if (v11)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 16) = v10;
  }
}

void sub_22BD7DE20()
{
  sub_22BB3FE60();
  v4 = v3;
  v6 = v5;
  sub_22BB34428(v5, v3, v7, v8);
  sub_22BB7047C();
  sub_22BDB43E4();
  sub_22BB2F330();
  (*(v9 + 32))(v2 + *(v9 + 72) * v6, v4);
  *(*(v0 + 56) + 8 * v6) = v1;
  sub_22BB39384();
  if (v11)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 16) = v10;
  }
}

void (*sub_22BD7DEFC(void *a1))(uint64_t a1)
{
  v2 = sub_22BD7EA64(0x58uLL);
  *a1 = v2;
  v3 = sub_22BDB52C4();
  v4 = sub_22BD7EA64(*(*(v3 - 8) + 64));
  v2[8] = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_22BB33618();
  v2[9] = sub_22BD7E4BC(v2);
  v2[10] = sub_22BD7E054(v2 + 4, v4, isUniquelyReferenced_nonNull_native);
  return sub_22BD7DFD8;
}

void sub_22BD7DFD8(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 64);
  (*(*a1 + 80))();
  sub_22BB35D94();
  sub_22BB34698();
  v4 = sub_22BC541D0();
  v2(v4);
  free(v3);

  free(v1);
}

void (*sub_22BD7E054(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1, char a2)
{
  v4 = v3;
  v7 = sub_22BD7EA64(0xE0uLL);
  *a1 = v7;
  *(v7 + 21) = a2;
  *(v7 + 22) = v3;
  v8 = sub_22BDB52C4();
  *(v7 + 23) = v8;
  v9 = *(v8 - 8);
  *(v7 + 24) = v9;
  *(v7 + 25) = sub_22BD7EA64(*(v9 + 64));
  v10 = *v3;
  v11 = sub_22BB3CB98();
  v7[216] = v12 & 1;
  if (__OFADD__(*(v10 + 16), (v12 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v13 = v11;
  v14 = v12;
  sub_22BBE6DE0(&qword_27D8E67E0, &qword_22BDCF4A8);
  if (sub_22BDBB4A4())
  {
    v15 = sub_22BB3CB98();
    if ((v14 & 1) == (v16 & 1))
    {
      v13 = v15;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_22BDBB744();
    __break(1u);
    return result;
  }

LABEL_5:
  *(v7 + 26) = v13;
  if (v14)
  {
    v17 = *(*v4 + 56) + 56 * v13;
    v18 = *v17;
    v19 = *(v17 + 8);
    v20 = *(v17 + 16);
    v21 = *(v17 + 32);
    v22 = *(v17 + 40);
  }

  else
  {
    v18 = 0;
    v19 = 0;
    v21 = 0;
    v20 = 0uLL;
    v22 = 0uLL;
  }

  *(v7 + 14) = v18;
  *(v7 + 15) = v19;
  *(v7 + 8) = v20;
  *(v7 + 18) = v21;
  *(v7 + 152) = v22;
  return sub_22BD7E210;
}

void sub_22BD7E210(uint64_t **a1, char a2)
{
  v7 = *a1;
  v8 = (*a1)[14];
  v10 = v7[15];
  v9 = v7[16];
  v11 = v7[17];
  v12 = v7[18];
  v13 = v7[19];
  v14 = v7[20];
  if ((a2 & 1) == 0)
  {
    if (!v10)
    {
      if ((v7[27] & 1) == 0)
      {
        goto LABEL_15;
      }

      v2 = v8;
      sub_22BB35D94();
      v18 = v33;
      v3 = v34;
      sub_22BB8D29C();
      sub_22BB34698();
      sub_22BB32D54();
      sub_22BB3CC60(v35, v36, MEMORY[0x277D1CB30]);
      sub_22BB2F12C();
      sub_22BDBB4C4();
      goto LABEL_14;
    }

    v15 = *v7[22];
    v16 = v7[26];
    if ((v7[27] & 1) == 0)
    {
      sub_22BB35570();
      v18 = v37;
      sub_22BB8D29C();
      sub_22BB33618();
      v7[7] = v2;
      v7[8] = v10;
      v7[9] = v3;
      v7[10] = v4;
      *(v7 + 88) = v18 & 1;
      v7[12] = v5;
      v7[13] = v6;
      goto LABEL_13;
    }

LABEL_7:
    v19 = *(v15 + 56) + 56 * v16;
    *v19 = v8;
    *(v19 + 8) = v10;
    *(v19 + 16) = v9;
    *(v19 + 24) = v11;
    *(v19 + 32) = v12 & 1;
    *(v19 + 40) = v13;
    *(v19 + 48) = v14;
    goto LABEL_15;
  }

  if (v10)
  {
    v15 = *v7[22];
    v16 = v7[26];
    if ((v7[27] & 1) == 0)
    {
      sub_22BB35570();
      v18 = v17;
      sub_22BB8D29C();
      sub_22BB33618();
      *v7 = v2;
      v7[1] = v10;
      v7[2] = v3;
      v7[3] = v4;
      *(v7 + 32) = v18 & 1;
      v7[5] = v5;
      v7[6] = v6;
LABEL_13:
      sub_22BB3C90C();
LABEL_14:
      v14 = v6;
      v13 = v5;
      v11 = v4;
      v9 = v3;
      v8 = v2;
      v12 = v18;
      goto LABEL_15;
    }

    goto LABEL_7;
  }

  if (v7[27])
  {
    v20 = v8;
    sub_22BB35D94();
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;
    sub_22BB34698();
    sub_22BB32D54();
    sub_22BB3CC60(v31, v32, MEMORY[0x277D1CB30]);
    sub_22BB345A8();
    sub_22BDBB4C4();
    v14 = v30;
    v13 = v28;
    v11 = v26;
    v9 = v24;
    v8 = v20;
    v12 = v22;
  }

LABEL_15:
  v38 = v7[25];
  v40 = v7[14];
  v39 = v7[15];
  sub_22BD7EA98(v8, v10, v9, v11, v12, v13, v14);
  sub_22BBB7A1C(v40, v39);
  free(v38);

  free(v7);
}

uint64_t (*sub_22BD7E4BC(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_22BBC4C70;
}

char *sub_22BD7E4E4(uint64_t (*a1)(unint64_t), uint64_t a2)
{
  v4 = v2;
  v7 = sub_22BDB52C4();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v34 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v34 - v15;
  v17 = *v4;
  result = sub_22BD7E7EC(a1, a2, *v4);
  v41 = v3;
  if (!v3)
  {
    v36 = v11;
    v37 = v14;
    if (v19)
    {
      return *(v17 + 16);
    }

    else
    {
      v35 = v4;
      v20 = (result + 1);
      if (__OFADD__(result, 1))
      {
LABEL_29:
        __break(1u);
      }

      else
      {
        v21 = v17;
        v38 = v8;
        while (1)
        {
          v22 = *(v21 + 16);
          if (v20 == v22)
          {
            break;
          }

          if (v20 >= v22)
          {
            __break(1u);
LABEL_25:
            __break(1u);
LABEL_26:
            __break(1u);
LABEL_27:
            __break(1u);
LABEL_28:
            __break(1u);
            goto LABEL_29;
          }

          v39 = (*(v8 + 80) + 32) & ~*(v8 + 80);
          v40 = result;
          v23 = *(v8 + 72);
          v42 = v20;
          v24 = v23 * v20;
          sub_22BB33618();
          v25 = v41;
          v26 = a1;
          v27 = a1(v16);
          result = sub_22BB34698();
          v41 = v25;
          if (v25)
          {
            return result;
          }

          if (v27)
          {
            a1 = v26;
            v8 = v38;
            result = v40;
            v28 = v42;
          }

          else
          {
            result = v40;
            v28 = v42;
            if (v42 == v40)
            {
              a1 = v26;
            }

            else
            {
              if ((v40 & 0x8000000000000000) != 0)
              {
                goto LABEL_25;
              }

              v29 = *(v21 + 16);
              if (v40 >= v29)
              {
                goto LABEL_26;
              }

              v30 = v23 * v40;
              result = sub_22BB33618();
              if (v42 >= v29)
              {
                goto LABEL_27;
              }

              v31 = v24;
              sub_22BB33618();
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_22BD7DEE8(v21);
                v21 = v33;
              }

              a1 = v26;
              v32 = v21 + v39;
              sub_22BD7EA00(v36, v21 + v39 + v30);
              result = v37;
              if (v42 >= *(v21 + 16))
              {
                goto LABEL_28;
              }

              sub_22BD7EA00(v37, v32 + v31);
              v28 = v42;
              *v35 = v21;
              result = v40;
            }

            ++result;
            v8 = v38;
          }

          v20 = v28 + 1;
        }
      }
    }
  }

  return result;
}

uint64_t sub_22BD7E7EC(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  while (1)
  {
    if (v7 == v6)
    {
      return 0;
    }

    v8 = *(sub_22BDB52C4() - 8);
    result = a1(a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v6);
    if (v3)
    {
      return result;
    }

    if (result)
    {
      break;
    }

    ++v6;
  }

  return v6;
}

void sub_22BD7E8D0(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = a1 - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_22BD6F1C0(v4 - v6, 1);
  v8 = *v2;
  v9 = *(sub_22BDB52C4() - 8);
  v10 = v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v11 = *(v9 + 72);
  v12 = v10 + v11 * a1;
  swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return;
  }

  v13 = *(v8 + 16);
  if (__OFSUB__(v13, a2))
  {
    goto LABEL_16;
  }

  sub_22BD279D0(v10 + v11 * a2, v13 - a2, v12);
  v14 = *(v8 + 16);
  v15 = __OFADD__(v14, v7);
  v16 = v14 - v6;
  if (!v15)
  {
    *(v8 + 16) = v16;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
}

uint64_t sub_22BD7EA00(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BDB52C4();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *sub_22BD7EA64(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t sub_22BD7EA98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_22BD7EB1C()
{
  sub_22BB30F5C();
  sub_22BB35760();
  v0 = sub_22BDB5894();
  sub_22BB2F0C8(v0);
  sub_22BB3A9FC();
  v1 = swift_task_alloc();
  v2 = sub_22BB31BAC(v1);
  *v2 = v3;
  v4 = sub_22BB38EF4(v2);

  return sub_22BD7BE5C(v4, v5, v6, v7, v8);
}

uint64_t sub_22BD7EBDC()
{
  sub_22BB30F5C();
  sub_22BB35760();
  v0 = sub_22BDB5894();
  sub_22BB2F0C8(v0);
  sub_22BB3A9FC();
  v1 = swift_task_alloc();
  v2 = sub_22BB31BAC(v1);
  *v2 = v3;
  v4 = sub_22BB38EF4(v2);

  return sub_22BD7C5B8(v4, v5, v6, v7, v8);
}

uint64_t sub_22BD7EC9C()
{
  sub_22BB30F5C();
  sub_22BB35760();
  v0 = sub_22BDB5894();
  sub_22BB2F0C8(v0);
  sub_22BB3A9FC();
  v1 = swift_task_alloc();
  v2 = sub_22BB31BAC(v1);
  *v2 = v3;
  v4 = sub_22BB38EF4(v2);

  return sub_22BD7C2C8(v4, v5, v6, v7, v8);
}

uint64_t sub_22BD7ED5C()
{
  sub_22BB30F5C();
  sub_22BB35760();
  v0 = sub_22BDB5894();
  sub_22BB2F0C8(v0);
  sub_22BB3A9FC();
  v1 = swift_task_alloc();
  v2 = sub_22BB31BAC(v1);
  *v2 = v3;
  v4 = sub_22BB38EF4(v2);

  return sub_22BD7BE5C(v4, v5, v6, v7, v8);
}

uint64_t getEnumTagSinglePayload for SessionRoutingError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SessionRoutingError(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_22BD7EF84()
{
  result = qword_27D8E6818;
  if (!qword_27D8E6818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E6818);
  }

  return result;
}

uint64_t sub_22BD7F00C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v29 = v26[186];
  v30 = v26[182];
  v31 = v26[181];

  return a1, a2, a3, a4, a5, a6, a7, a8, a9, v29, v30, v31, v25, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25;
}

uint64_t sub_22BD7F040()
{
}

void sub_22BD7F058(uint64_t a1)
{
  sub_22BD7F17C(319, &qword_28142DD30, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_22BD7F17C(319, &qword_281428830, MEMORY[0x277D1E310], MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_22BD7F1E0(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22BD7F17C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_22BD7F1E0(uint64_t a1)
{
  if (!qword_2814287B8)
  {
    sub_22BBEB2E0(&qword_27D8E6820, &qword_22BDCF638);
    v1 = sub_22BDBB254();
    if (!v2)
    {
      atomic_store(v1, &qword_2814287B8);
    }
  }
}

uint64_t static ToolboxManager.toolboxes()()
{
  sub_22BDB8694();
  sub_22BB30444();
  v43 = v1;
  v44 = v0;
  MEMORY[0x28223BE20](v0);
  sub_22BB30574();
  v4 = v3 - v2;
  v5 = sub_22BDB77E4();
  MEMORY[0x28223BE20](v5 - 8);
  sub_22BB30574();
  v42 = sub_22BDB7814();
  sub_22BB30444();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  sub_22BB30574();
  v11 = v10 - v9;
  v12 = sub_22BDB80C4();
  sub_22BB30444();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  sub_22BB30574();
  v18 = v17 - v16;
  _s23IntelligenceFlowRuntime28StandardToolboxConfigurationV011makeMutableE08delegate22planGenerationDelegate0aB14PlannerSupport0hE0Cx_q_tKAG0eL0RzAG0e4PlankL0R_r0_lFfA__0();
  sub_22BDB7804();
  sub_22BDB77F4();
  sub_22BBE6DE0(&qword_27D8E6828, &qword_22BDCF640);
  v19 = (sub_22BBE6DE0(&qword_27D8E6830, &unk_22BDCF648) - 8);
  v20 = (*(*v19 + 80) + 32) & ~*(*v19 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_22BDBCBD0;
  v22 = (v21 + v20 + v19[14]);
  sub_22BDB80A4();
  sub_22BDB8684();
  (*(v43 + 8))(v4, v44);
  v23 = MEMORY[0x277D1D938];
  v22[3] = v12;
  v22[4] = v23;
  v31 = sub_22BB8B8A0(v22, v24, v25, v26, v27, v28, v29, v30);
  (*(v14 + 16))(v31, v18, v12);
  v22[8] = v42;
  v22[9] = sub_22BD7F604(&qword_281428AD8, MEMORY[0x277D1D528], MEMORY[0x277D1D520]);
  v39 = sub_22BB8B8A0(v22 + 5, v32, v33, v34, v35, v36, v37, v38);
  (*(v7 + 16))(v39, v11, v42);
  sub_22BDB57A4();
  sub_22BD7F604(&qword_28142DCC8, MEMORY[0x277D1CE90], MEMORY[0x277D1CE98]);
  v40 = sub_22BDBAB14();
  (*(v7 + 8))(v11, v42);
  (*(v14 + 8))(v18, v12);
  return v40;
}

uint64_t sub_22BD7F604(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_BYTE *storeEnumTagSinglePayload for ToolboxManager(_BYTE *result, int a2, int a3)
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

uint64_t sub_22BD7F700(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_22BD7F740(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22BD7F7A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_22BDB5664();
  v8 = sub_22BB2F0C8(v7);
  MEMORY[0x28223BE20](v8);
  sub_22BB30574();
  v11 = v10 - v9;
  sub_22BB6A204(a1, v10 - v9, MEMORY[0x277D1CE18]);
  v12 = *(v4 + 16);
  sub_22BB69088(a4, v14);

  return sub_22BB8DD28(v11, v12, v14);
}

uint64_t sub_22BD7F858@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = sub_22BD7F7A4(a1, a2, a3, a4);
  *a5 = result;
  return result;
}

uint64_t sub_22BD7F884()
{
  sub_22BB2F0D4();
  v1[5] = v2;
  v1[6] = v0;
  v3 = sub_22BDB5154();
  v1[7] = v3;
  sub_22BB30434(v3);
  v1[8] = v4;
  v1[9] = sub_22BB30ACC();
  v5 = sub_22BDB4354();
  sub_22BB2F0C8(v5);
  v1[10] = sub_22BB30ACC();
  v6 = sub_22BBE6DE0(&qword_27D8E3218, &qword_22BDBE390);
  sub_22BB2F0C8(v6);
  v1[11] = sub_22BB30ACC();
  v7 = sub_22BDB43E4();
  v1[12] = v7;
  sub_22BB30434(v7);
  v1[13] = v8;
  v1[14] = sub_22BB3307C();
  v1[15] = swift_task_alloc();
  v9 = sub_22BDB5F24();
  sub_22BB2F0C8(v9);
  v1[16] = sub_22BB30ACC();
  v10 = sub_22BDB5894();
  v1[17] = v10;
  sub_22BB30434(v10);
  v1[18] = v11;
  v1[19] = sub_22BB30ACC();
  v12 = sub_22BB355F0();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_22BD7FA38()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[13];
  v5 = v0[11];
  v4 = v0[12];
  v6 = v0[9];
  v7 = v0[8];
  v15 = v0[7];
  v8 = v0[6];
  v14 = v0[5];
  sub_22BB6A204(v8 + OBJC_IVAR____TtC23IntelligenceFlowRuntime15XPCClientAvatar_sessionId, v1, MEMORY[0x277D1D2C8]);
  (*(v3 + 32))(v2, v1, v4);
  sub_22BDB43D4();
  v9 = OBJC_IVAR____TtC23IntelligenceFlowRuntime15XPCClientAvatar_latestClientSentQueryEventId;
  swift_beginAccess();
  sub_22BB956CC(v8 + v9, v5);
  sub_22BDB5614();
  sub_22BDB4344();
  sub_22BDB5E34();
  sub_22BB2F330();
  (*(v10 + 16))(v6, v14);
  (*(v7 + 104))(v6, *MEMORY[0x277D1C758], v15);
  sub_22BDB5884();
  sub_22BB69FEC((v8 + OBJC_IVAR____TtC23IntelligenceFlowRuntime15XPCClientAvatar_clientReverseClientDistributor), *(v8 + OBJC_IVAR____TtC23IntelligenceFlowRuntime15XPCClientAvatar_clientReverseClientDistributor + 24));
  v11 = swift_task_alloc();
  v0[20] = v11;
  *v11 = v0;
  v11[1] = sub_22BD7FC44;
  v12 = v0[19];

  return sub_22BB91D64(v12);
}

uint64_t sub_22BD7FED8()
{
  sub_22BB2F0D4();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_22BDB9884();
  sub_22BB2F0C8(v3);
  v1[4] = sub_22BB30ACC();
  v4 = sub_22BDB5684();
  sub_22BB2F0C8(v4);
  v1[5] = sub_22BB30ACC();
  v5 = sub_22BDB5154();
  v1[6] = v5;
  sub_22BB30434(v5);
  v1[7] = v6;
  v1[8] = sub_22BB30ACC();
  v7 = sub_22BDB4354();
  sub_22BB2F0C8(v7);
  v1[9] = sub_22BB30ACC();
  v8 = sub_22BDB9D54();
  v1[10] = v8;
  sub_22BB30434(v8);
  v1[11] = v9;
  v1[12] = sub_22BB30ACC();
  v10 = sub_22BBE6DE0(&qword_27D8E3218, &qword_22BDBE390);
  sub_22BB2F0C8(v10);
  v1[13] = sub_22BB30ACC();
  v11 = sub_22BDB43E4();
  sub_22BB2F0C8(v11);
  v1[14] = sub_22BB3307C();
  v1[15] = swift_task_alloc();
  v12 = sub_22BDB5894();
  v1[16] = v12;
  sub_22BB30434(v12);
  v1[17] = v13;
  v1[18] = sub_22BB30ACC();
  v14 = sub_22BB355F0();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_22BD800CC()
{
  v1 = v0[12];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[7];
  v9 = v0[6];
  v8 = v0[10];
  v10 = v0[3];
  sub_22BDB98A4();
  sub_22BDB9874();
  sub_22BDB97D4();
  sub_22BDB9814();
  sub_22BDB97F4();
  sub_22BDB98B4();
  sub_22BDB9D44();
  (*(v2 + 8))(v1, v8);
  sub_22BDB9894();
  sub_22BDB5674();
  sub_22BDB5694();
  (*(v4 + 104))(v3, *MEMORY[0x277D1C698], v9);
  sub_22BDB5884();
  sub_22BB69FEC((v10 + OBJC_IVAR____TtC23IntelligenceFlowRuntime15XPCClientAvatar_clientReverseClientDistributor), *(v10 + OBJC_IVAR____TtC23IntelligenceFlowRuntime15XPCClientAvatar_clientReverseClientDistributor + 24));
  v5 = swift_task_alloc();
  v0[19] = v5;
  *v5 = v0;
  v5[1] = sub_22BD802A4;
  v6 = v0[18];

  return sub_22BB91D64(v6);
}

uint64_t sub_22BD80568@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22BDB84B4();
  sub_22BB30444();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  sub_22BB30574();
  v10 = v9 - v8;
  (*(v6 + 16))(v9 - v8, a1, v4);
  v11 = (*(v6 + 88))(v10, v4);
  if (v11 == *MEMORY[0x277D1DD48])
  {
    v12 = MEMORY[0x277D1C788];
LABEL_5:
    (*(v6 + 8))(a1, v4);
    v13 = *v12;
    sub_22BDB5094();
    sub_22BB2F330();
    return (*(v14 + 104))(a2, v13);
  }

  if (v11 == *MEMORY[0x277D1DD40])
  {
    v12 = MEMORY[0x277D1C780];
    goto LABEL_5;
  }

  result = sub_22BDBB6C4();
  __break(1u);
  return result;
}

void sub_22BD806E4(uint64_t a1)
{
  sub_22BDB5664();
  if (v1 <= 0x3F)
  {
    sub_22BC5F80C(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_22BD80830(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  v9 = sub_22BBE6DE0(&qword_27D8E2F80, &qword_22BDC0600);
  sub_22BB2F0C8(v9);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v10);
  sub_22BB31580();
  v11 = sub_22BDB9504();
  sub_22BB30444();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  sub_22BB30574();
  sub_22BB345CC();
  v15 = sub_22BB3A190();
  if (sub_22BB3AA28(v15, v16, v11) == 1)
  {
    sub_22BB58728(a1, &qword_27D8E2F80, &qword_22BDC0600);
    sub_22BB3AC54();
    sub_22BDB3A3C();

    return sub_22BB58728(v4, &qword_27D8E2F80, &qword_22BDC0600);
  }

  else
  {
    (*(v13 + 32))(v5, a1, v11);
    swift_isUniquelyReferenced_nonNull_native();
    v25 = *v6;
    v18 = sub_22BB52D78();
    sub_22BD851DC(v18, v19, a3, v20, v21, v22, v23, v24);

    *v6 = v25;
  }

  return result;
}

uint64_t sub_22BD80A04()
{
  sub_22BB35F54();
  v3 = sub_22BBE6DE0(&qword_27D8E64D8, &qword_22BDCE3E0);
  sub_22BB2F0C8(v3);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v4);
  v5 = sub_22BB334AC();
  type metadata accessor for SessionCoordinatorInjectionRequest(v5);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v6);
  sub_22BB30574();
  sub_22BB31580();
  v7 = sub_22BB3A190();
  if (sub_22BB3AA28(v7, v8, v9) == 1)
  {
    v10 = sub_22BB345A8();
    sub_22BB58728(v10, v11, &qword_22BDCE3E0);
    sub_22BDB3B38();
    sub_22BDB43E4();
    sub_22BB2F330();
    (*(v12 + 8))(v0);
    return sub_22BB58728(v2, &qword_27D8E64D8, &qword_22BDCE3E0);
  }

  else
  {
    sub_22BB345A8();
    sub_22BB5005C();
    swift_isUniquelyReferenced_nonNull_native();
    v14 = sub_22BB38298();
    sub_22BD854A0(v14, v15, v16);
    *v1 = v18;
    sub_22BDB43E4();
    sub_22BB2F330();
    return (*(v17 + 8))(v0);
  }
}

void sub_22BD80B94(uint64_t a1)
{
  v2 = v1;
  if (a1)
  {
    swift_isUniquelyReferenced_nonNull_native();
    v3 = sub_22BB38F3C();
    sub_22BD85364(v3, v4, v5, v6);

    *v1 = v22;
LABEL_5:
    sub_22BB588E0();
    return;
  }

  v7 = *v1;
  v8 = sub_22BB3AC54();
  sub_22BB72B1C(v8, v9);
  if (v10)
  {
    swift_isUniquelyReferenced_nonNull_native();
    sub_22BB34448();
    v11 = sub_22BBE6DE0(&qword_27D8E68E8, &qword_22BDCFBF8);
    v12 = sub_22BB2F694(v11);
    sub_22BB37E78(v12, v13, v14, v15, v16, v17, v18, v19, v21, v22);
    sub_22BBE6DE0(&qword_27D8E6558, &unk_22BDCFC00);
    sub_22BB97200();
    sub_22BDBB4C4();

    *v2 = v7;
    goto LABEL_5;
  }

  sub_22BB588E0();
}

uint64_t sub_22BD80CB4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_22BBE6DE0(&qword_27D8E6860, &qword_22BDCF7F8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  v9 = type metadata accessor for SnippetStreamingRouter.Entry(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_22BB3AA28(a1, 1, v12) == 1)
  {
    sub_22BB58728(a1, &qword_27D8E6860, &qword_22BDCF7F8);
    sub_22BDB38F8();
    sub_22BB67E48();
    return sub_22BB58728(v8, &qword_27D8E6860, &qword_22BDCF7F8);
  }

  else
  {
    sub_22BB5005C();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v3;
    sub_22BD85668(v11, a2, isUniquelyReferenced_nonNull_native);
    *v3 = v16;
    return sub_22BB67E48();
  }
}

double sub_22BD80E80@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_22BD8446C(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 40 * v6;

    sub_22BB69088(v8, a4);
  }

  else
  {
    *(a4 + 32) = 0;
    result = 0.0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  return result;
}

uint64_t sub_22BD80F04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  if (*(a3 + 16) && (v8 = sub_22BD8446C(a1, a2), (a2 & 1) != 0))
  {
    v9 = v8;
    v10 = *(a3 + 56);
    v11 = a4(0);
    sub_22BB2F330();
    (*(v12 + 16))(a5, v10 + *(v12 + 72) * v9, v11);
    v13 = sub_22BB36764();
  }

  else
  {
    (a4)(0, a2);
    v13 = sub_22BB31CB0();
  }

  return sub_22BB336D0(v13, v14, v15, v16);
}

double sub_22BD80FBC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_22BD8446C(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_22BB32FF0(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t sub_22BD81020(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_22BB72B1C(a1, a2);
  if (v4)
  {
    return sub_22BB6BC30(v3);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22BD81074(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 1;
  }

  v3 = sub_22BD8446C(a1, a2);
  if ((v4 & 1) == 0)
  {
    return 1;
  }

  sub_22BB6BC30(v3);
}

uint64_t sub_22BD810C0(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 1;
  }

  v2 = sub_22BB67B60(a1, FeedbackLearning.CandidateParameter.hash(into:), sub_22BD84A98);
  if ((v3 & 1) == 0)
  {
    return 1;
  }

  sub_22BB6BC30(v2);
}

uint64_t sub_22BD81174(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_22BBDAE68();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  sub_22BB6BC30(v2);
}

uint64_t sub_22BD811C0()
{
  sub_22BB5431C();
  if (v2 && (v3 = v1, sub_22BBDAE68(), (v5 & 1) != 0))
  {
    v6 = v4;
    v7 = *(v3 + 56);
    v8 = sub_22BDB4C34();
    sub_22BB2F330();
    (*(v9 + 16))(v0, v7 + *(v9 + 72) * v6, v8);
    v10 = v0;
    v11 = 0;
    v12 = 1;
    v13 = v8;
  }

  else
  {
    sub_22BDB4C34();
    v10 = sub_22BB31CB0();
  }

  return sub_22BB336D0(v10, v11, v12, v13);
}

uint64_t sub_22BD812B0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  sub_22BB5431C();
  if (v5 && (v4(), (v6 & 1) != 0))
  {
    a3(0);
    sub_22BB2F330();
    sub_22BB67A00();
    v7 = sub_22BB36764();
  }

  else
  {
    a3(0);
    v7 = sub_22BB31CB0();
  }

  return sub_22BB336D0(v7, v8, v9, v10);
}

uint64_t sub_22BD8135C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_22BD84660();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  sub_22BB6BC30(v2);
}

double sub_22BD813A8()
{
  sub_22BB5431C();
  if (v3 && (v4 = v2, sub_22BD84710(v1), (v6 & 1) != 0))
  {
    v7 = *(v4 + 56) + 80 * v5;

    sub_22BD5F464(v7, v0);
  }

  else
  {
    result = 0.0;
    v0[3] = 0u;
    v0[4] = 0u;
    v0[1] = 0u;
    v0[2] = 0u;
    *v0 = 0u;
  }

  return result;
}

uint64_t SnippetStreamingRouter.createScope()()
{
  type metadata accessor for SnippetStreamingRouter.Scoped(0);
  swift_allocObject();

  return SnippetStreamingRouter.Scoped.init(base:)(v0);
}

uint64_t sub_22BD81458()
{
  type metadata accessor for SnippetStreamingRouter(0);
  v0 = swift_allocObject();
  result = SnippetStreamingRouter.init()();
  qword_28142A0E0 = v0;
  return result;
}

uint64_t SnippetStreamingRouter.__allocating_init()()
{
  v0 = swift_allocObject();
  SnippetStreamingRouter.init()();
  return v0;
}

uint64_t static SnippetStreamingRouter.global.getter()
{
  if (qword_28142A0D8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_22BD81530(void *a1)
{
  sub_22BBE6DE0(&qword_27D8E68C8, &unk_22BDCFBC8);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v2);
  sub_22BB345CC();
  sub_22BB69FEC(a1, a1[3]);
  sub_22BD84A44();
  sub_22BDBB8A4();
  sub_22BDB43E4();
  sub_22BB35DAC();
  sub_22BB3CC18(v3, v4, MEMORY[0x277CC95F8]);
  sub_22BDBB664();
  v5 = sub_22BB52D78();
  return v6(v5);
}

uint64_t sub_22BD81680()
{
  sub_22BB35760();
  sub_22BDB43E4();
  sub_22BB35DAC();
  sub_22BB3CC18(v0, v1, MEMORY[0x277CC9600]);

  return sub_22BDBABB4();
}

uint64_t sub_22BD816F0()
{
  sub_22BDBB814();
  sub_22BDB43E4();
  sub_22BB35DAC();
  sub_22BB3CC18(v0, v1, MEMORY[0x277CC9600]);
  sub_22BDBABB4();
  return sub_22BDBB834();
}

uint64_t sub_22BD81768@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = sub_22BDB43E4();
  sub_22BB30444();
  v24 = v5;
  MEMORY[0x28223BE20](v6);
  sub_22BB30574();
  v27 = v8 - v7;
  v9 = sub_22BBE6DE0(&qword_27D8E68B8, &qword_22BDCFBC0);
  sub_22BB30444();
  v25 = v10;
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - v12;
  v14 = type metadata accessor for SnippetStreamingRouter.ScopeID(0);
  v15 = sub_22BB2F0C8(v14);
  MEMORY[0x28223BE20](v15);
  sub_22BB30574();
  v18 = v17 - v16;
  sub_22BB69FEC(a1, a1[3]);
  sub_22BD84A44();
  sub_22BDBB894();
  if (!v2)
  {
    v19 = v24;
    sub_22BB35DAC();
    sub_22BB3CC18(v20, v21, MEMORY[0x277CC9618]);
    sub_22BDBB5D4();
    (*(v25 + 8))(v13, v9);
    (*(v19 + 32))(v18, v27, v4);
    sub_22BB5005C();
  }

  return sub_22BB32FA4(a1);
}

uint64_t sub_22BD819C4(uint64_t a1)
{
  v2 = sub_22BD84A44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BD81A00(uint64_t a1)
{
  v2 = sub_22BD84A44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BD81A44(uint64_t a1)
{
  sub_22BDBB814();
  sub_22BDB43E4();
  sub_22BB3CC18(&qword_28142DD50, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_22BDBABB4();
  return sub_22BDBB834();
}

uint64_t SnippetStreamingRouter.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC23IntelligenceFlowRuntime22SnippetStreamingRouter_id;
  sub_22BDB43E4();
  sub_22BB2F330();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t SnippetStreamingRouter.init()()
{
  v1 = sub_22BDB43E4();
  sub_22BB30444();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  sub_22BB30574();
  v7 = v6 - v5;
  sub_22BDB43D4();
  (*(v3 + 32))(v0 + OBJC_IVAR____TtC23IntelligenceFlowRuntime22SnippetStreamingRouter_id, v7, v1);
  sub_22BDB5AB4();
  v8 = sub_22BB35760();
  type metadata accessor for SnippetStreamingRouter.Entry(v8);
  sub_22BB3CC18(&qword_28142DC58, MEMORY[0x277D1D080], MEMORY[0x277D1D088]);
  v9 = sub_22BDBAB14();
  v10 = v0 + OBJC_IVAR____TtC23IntelligenceFlowRuntime22SnippetStreamingRouter_contexts;
  *v10 = 0;
  *(v10 + 8) = v9;
  return v0;
}

void _s23IntelligenceFlowRuntime22SnippetStreamingRouterC13forwardUpdate_4withy0aB00dE6ClientC06StatusH0V_AC12CheckInProofVtAA0dE15ForwardingErrorOYKF(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v59 = a3;
  v55 = a1;
  v5 = sub_22BDB5AB4();
  v6 = sub_22BB2F0C8(v5);
  MEMORY[0x28223BE20](v6);
  sub_22BB30574();
  v51 = v8 - v7;
  sub_22BDB59A4();
  sub_22BB30444();
  v57 = v10;
  v58 = v9;
  MEMORY[0x28223BE20](v9);
  sub_22BB30574();
  v56 = v12 - v11;
  sub_22BDB59D4();
  sub_22BB30444();
  v53 = v14;
  v54 = v13;
  MEMORY[0x28223BE20](v13);
  sub_22BB30574();
  v17 = v16 - v15;
  sub_22BBE6DE0(&qword_27D8E6858, &qword_22BDCF7F0);
  sub_22BB30444();
  v52 = v18;
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v19);
  sub_22BB345CC();
  v20 = sub_22BBE6DE0(&qword_27D8E6860, &qword_22BDCF7F8);
  v21 = sub_22BB2F0C8(v20);
  MEMORY[0x28223BE20](v21);
  sub_22BB30C74();
  v50 = v22 - v23;
  MEMORY[0x28223BE20](v24);
  v26 = &v47 - v25;
  v27 = type metadata accessor for SnippetStreamingRouter.Entry(0);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v28);
  sub_22BB30574();
  v29 = v3 + OBJC_IVAR____TtC23IntelligenceFlowRuntime22SnippetStreamingRouter_contexts;
  os_unfair_lock_lock((v3 + OBJC_IVAR____TtC23IntelligenceFlowRuntime22SnippetStreamingRouter_contexts));
  v30 = sub_22BDB43B4();
  if ((v30 & 1) == 0)
  {
    v61 = 0;
    sub_22BD83DAC();
    goto LABEL_5;
  }

  v31 = type metadata accessor for SnippetStreamingRouter.CheckInProof(0);
  v32 = *(v29 + 8);
  v48 = *(v31 + 20);
  v49 = a2;
  sub_22BD812B0(a2 + v48, v32, type metadata accessor for SnippetStreamingRouter.Entry);
  if (sub_22BB3AA28(v26, 1, v27) == 1)
  {
    sub_22BB58728(v26, &qword_27D8E6860, &qword_22BDCF7F8);
    v60 = 1;
    sub_22BD83DAC();
LABEL_5:
    swift_willThrowTypedImpl();
    *v59 = v30 & 1;
    os_unfair_lock_unlock(v29);
    return;
  }

  sub_22BB5005C();
  v33 = *(v27 + 20);
  (*(v53 + 16))(v17, v55, v54);
  sub_22BBE6DE0(&qword_27D8E6870, &qword_22BDCF800);
  v59 = v33;
  sub_22BDBAF34();
  v34 = sub_22BB52D78();
  v35(v34);
  sub_22BDB59C4();
  v36 = sub_22BB37074();
  v38 = v37(v36);
  if (v38 == *MEMORY[0x277D1CFB8])
  {
    sub_22BB37408();
    v39 = sub_22BB37074();
    v40(v39);
  }

  else
  {
    if (v38 != *MEMORY[0x277D1CFA0] && v38 != *MEMORY[0x277D1CFB0] && v38 != *MEMORY[0x277D1CFA8])
    {
      sub_22BDBB6C4();
      __break(1u);
      return;
    }

    v43 = sub_22BB37074();
    v44(v43);
    sub_22BDBAF44();
    sub_22BB3257C();
    sub_22BB67A00();
    sub_22BB336D0(v50, 1, 1, v27);
    v45 = sub_22BB37074();
    sub_22BD80CB4(v45, v46);
    sub_22BB37408();
  }

  os_unfair_lock_unlock(v29);
}

uint64_t SnippetStreamingRouter.allocateContext()(uint64_t a1)
{
  v2 = sub_22BBE6DE0(&qword_27D8E6878, &qword_22BDCF808);
  sub_22BB2F0C8(v2);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v3);
  sub_22BB31580();
  v4 = type metadata accessor for SnippetStreamingRouter.ScopeID(0);
  sub_22BB336D0(v1, 1, 1, v4);
  sub_22BD82268();
  v6 = v5;
  sub_22BB58728(v1, &qword_27D8E6878, &qword_22BDCF808);
  return v6;
}

void sub_22BD82268()
{
  sub_22BB30F94();
  v51 = v0;
  v52 = v1;
  v53 = v2;
  v3 = sub_22BBE6DE0(&qword_27D8E6860, &qword_22BDCF7F8);
  sub_22BB2F0C8(v3);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v4);
  v49 = &v44 - v5;
  v6 = sub_22BBE6DE0(&qword_27D8E6930, &qword_22BDCFC60);
  sub_22BB30444();
  v8 = v7;
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v9);
  v11 = &v44 - v10;
  v12 = sub_22BBE6DE0(&qword_27D8E6938, &qword_22BDCFC68);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  sub_22BB30C74();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v44 - v18;
  v20 = sub_22BDB5AB4();
  v21 = sub_22BB2F0C8(v20);
  MEMORY[0x28223BE20](v21);
  sub_22BB30C74();
  v24 = v22 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v44 - v26;
  v28 = sub_22BBE6DE0(&qword_27D8E6940, &unk_22BDCFC70);
  sub_22BB2F0C8(v28);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v29);
  v50 = &v44 - v30;
  v48 = (v0 + OBJC_IVAR____TtC23IntelligenceFlowRuntime22SnippetStreamingRouter_contexts);
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC23IntelligenceFlowRuntime22SnippetStreamingRouter_contexts));
  v45 = v27;
  sub_22BDB43D4();
  sub_22BDB59D4();
  (*(v8 + 104))(v11, *MEMORY[0x277D85778], v6);
  v47 = v19;
  sub_22BDBAF04();
  (*(v8 + 8))(v11, v6);
  sub_22BB3257C();
  v46 = v31;
  sub_22BB67A00();
  sub_22BC5E5C4();
  v32 = *(v13 + 56);
  v33 = type metadata accessor for SnippetStreamingRouter.Entry(0);
  v34 = v49;
  sub_22BC5E5C4();
  *v34 = 0;
  v35 = *(v33 + 20);
  v36 = sub_22BBE6DE0(&qword_27D8E6870, &qword_22BDCF800);
  sub_22BB314BC();
  v38 = v37;
  (*(v37 + 32))(&v34[v35], v16 + v32, v36);
  sub_22BBE6DE0(&qword_27D8E6948, qword_22BDCFDF0);
  sub_22BB2F330();
  (*(v39 + 8))(v16);
  sub_22BB336D0(v34, 0, 1, v33);
  v40 = v48;
  sub_22BD80CB4(v34, v24);
  v41 = v45;
  sub_22BB67A00();
  sub_22BC8D26C();
  v42 = *(v13 + 56);
  type metadata accessor for SnippetStreamingStream(0);
  swift_allocObject();
  sub_22BD86680(v51, v41, v16);
  v43 = *(v38 + 8);

  v43(v16 + v42, v36);
  os_unfair_lock_unlock(v40);
  sub_22BB5005C();
  sub_22BB314EC();
}

uint64_t sub_22BD826EC(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for SnippetStreamingRouter.Entry(0);
  MEMORY[0x28223BE20](v2);
  v3 = sub_22BBE6DE0(&qword_27D8E6860, &qword_22BDCF7F8);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v10 - v7;
  sub_22BDB38F8();
  sub_22BC5E5C4();
  if (sub_22BB3AA28(v6, 1, v2) == 1)
  {
    sub_22BB58728(v8, &qword_27D8E6860, &qword_22BDCF7F8);
  }

  else
  {
    sub_22BB5005C();
    sub_22BBE6DE0(&qword_27D8E6870, &qword_22BDCF800);
    sub_22BDBAF44();
    sub_22BB67E48();
    v6 = v8;
  }

  return sub_22BB58728(v6, &qword_27D8E6860, &qword_22BDCF7F8);
}

Swift::Void __swiftcall SnippetStreamingRouter.deallocateAllContexts()()
{
  v1 = v0 + OBJC_IVAR____TtC23IntelligenceFlowRuntime22SnippetStreamingRouter_contexts;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC23IntelligenceFlowRuntime22SnippetStreamingRouter_contexts));
  sub_22BD82930((v1 + 8));

  os_unfair_lock_unlock(v1);
}

uint64_t sub_22BD82930(uint64_t *a1)
{
  v2 = sub_22BBE6DE0(&qword_27D8E6860, &qword_22BDCF7F8);
  MEMORY[0x28223BE20](v2 - 8);
  v40 = &v34 - v3;
  v46 = type metadata accessor for SnippetStreamingRouter.Entry(0);
  v44 = *(v46 - 8);
  v4 = MEMORY[0x28223BE20](v46);
  v48 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v38 = &v34 - v6;
  v35 = sub_22BDB5AB4();
  v43 = *(v35 - 8);
  v7 = MEMORY[0x28223BE20](v35);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = &v34 - v10;
  v11 = sub_22BBE6DE0(&qword_27D8E6910, &qword_22BDCFC48);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v42 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v41 = &v34 - v14;
  v36 = a1;
  v15 = *a1 + 64;
  v16 = 1 << *(*a1 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(*a1 + 64);
  v19 = (v16 + 63) >> 6;

  v21 = 0;
  v39 = result;
  v45 = result;
  v47 = v9;
  if (v18)
  {
LABEL_10:
    while (1)
    {
      v18 &= v18 - 1;
      sub_22BB67A00();
      sub_22BB67A00();
      v24 = sub_22BBE6DE0(&qword_27D8E6918, &qword_22BDCFC50);
      v25 = v42;
      sub_22BB5005C();
      sub_22BB5005C();
      sub_22BB336D0(v25, 0, 1, v24);
      v9 = v47;
LABEL_11:
      v26 = v41;
      sub_22BC8D26C();
      v27 = sub_22BBE6DE0(&qword_27D8E6918, &qword_22BDCFC50);
      if (sub_22BB3AA28(v26, 1, v27) == 1)
      {
      }

      sub_22BB5005C();
      sub_22BB5005C();
      sub_22BD844E0(v9);
      if (v28)
      {
        v29 = v36;
        swift_isUniquelyReferenced_nonNull_native();
        v49 = *v29;
        sub_22BBE6DE0(&qword_27D8E6920, &qword_22BDCFC58);
        sub_22BDBB4A4();
        v30 = v49;
        sub_22BB67E48();
        v31 = v40;
        sub_22BB5005C();
        sub_22BB3CC18(&qword_28142DC58, MEMORY[0x277D1D080], MEMORY[0x277D1D088]);
        sub_22BDBB4C4();
        sub_22BB67E48();
        v32 = 0;
        v45 = v30;
        *v29 = v30;
        v9 = v47;
      }

      else
      {
        sub_22BB67E48();
        v32 = 1;
        v31 = v40;
      }

      sub_22BB336D0(v31, v32, 1, v46);
      sub_22BB58728(v31, &qword_27D8E6860, &qword_22BDCF7F8);
      sub_22BBE6DE0(&qword_27D8E6870, &qword_22BDCF800);
      sub_22BDBAF44();
      result = sub_22BB67E48();
      if (!v18)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v22 = v42;
    while (1)
    {
      v23 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v23 >= v19)
      {
        v33 = sub_22BBE6DE0(&qword_27D8E6918, &qword_22BDCFC50);
        sub_22BB336D0(v22, 1, 1, v33);
        v18 = 0;
        goto LABEL_11;
      }

      v18 = *(v15 + 8 * v23);
      ++v21;
      if (v18)
      {
        v21 = v23;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

void _s23IntelligenceFlowRuntime22SnippetStreamingRouterC16checkIntoContextyAC12CheckInProofV0aB00deI2IDVAA0dejK5ErrorOYKF(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X8>)
{
  v8 = sub_22BB3B4B8(OBJC_IVAR____TtC23IntelligenceFlowRuntime22SnippetStreamingRouter_contexts);
  os_unfair_lock_lock(v8);
  sub_22BD8302C((v3 + 8), a1, v3, &v9, a3);
  if (v4)
  {
    *a2 = v9;
  }

  os_unfair_lock_unlock(v3);
}

uint64_t sub_22BD8302C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X3>, uint64_t a5@<X8>)
{
  v25 = a5;
  v9 = type metadata accessor for SnippetStreamingRouter.Entry(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  if (!*(*a1 + 16) || (v14 = sub_22BD844E0(a2), (v15 & 1) == 0))
  {
    *a4 = 0;
    v28 = 0;
    sub_22BD85A3C();
    return swift_willThrowTypedImpl();
  }

  v16 = v14;
  v23 = *(v13 + 36);
  v24 = a3;
  sub_22BD832A8(v14, v23, 0, v13);
  v17 = *v12;
  sub_22BB67E48();
  if (v17)
  {
    *a4 = 1;
    v27 = 1;
    sub_22BD85A3C();
    return swift_willThrowTypedImpl();
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    v26 = v13;
    sub_22BBE6DE0(&qword_27D8E6920, &qword_22BDCFC58);
    result = sub_22BDBB4B4();
    v13 = v26;
  }

  v19 = v24;
  if (v16 < 0 || v16 >= 1 << *(v13 + 32))
  {
    __break(1u);
    goto LABEL_15;
  }

  if (((*(v13 + 8 * (v16 >> 6) + 64) >> v16) & 1) == 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v23 == *(v13 + 36))
  {
    *(*(v13 + 56) + *(v10 + 72) * v16) = 1;
    *a1 = v13;
    type metadata accessor for SnippetStreamingRouter.CheckInProof(0);
    v20 = v25;
    sub_22BB67A00();
    v21 = OBJC_IVAR____TtC23IntelligenceFlowRuntime22SnippetStreamingRouter_id;
    v22 = sub_22BDB43E4();
    return (*(*(v22 - 8) + 16))(v20, v19 + v21, v22);
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_22BD832A8(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    type metadata accessor for SnippetStreamingRouter.Entry(0);
    return sub_22BB67A00();
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t SnippetStreamingRouter.contextIsCheckedIn(_:)(uint64_t a1)
{
  v3 = sub_22BB3B4B8(OBJC_IVAR____TtC23IntelligenceFlowRuntime22SnippetStreamingRouter_contexts);
  os_unfair_lock_lock(v3);
  sub_22BD833B8(&v1[2], a1, &v5);
  os_unfair_lock_unlock(v1);
  return v5;
}

uint64_t sub_22BD833B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = type metadata accessor for SnippetStreamingRouter.Entry(0) - 8;
  v7 = MEMORY[0x28223BE20](v6);
  result = MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  if (*(*a1 + 16) && (result = sub_22BD844E0(a2), (v11 & 1) != 0))
  {
    sub_22BB67A00();
    sub_22BB5005C();
    v12 = *v10;
    result = sub_22BB67E48();
  }

  else
  {
    v12 = 2;
  }

  *a3 = v12;
  return result;
}

uint64_t sub_22BD83520(uint64_t a1, uint64_t a2)
{
  v5 = sub_22BB3B4B8(OBJC_IVAR____TtC23IntelligenceFlowRuntime22SnippetStreamingRouter_contexts);
  os_unfair_lock_lock(v5);
  sub_22BD83588((v2 + 8), a1, a2, &v7);
  os_unfair_lock_unlock(v2);
  return v7;
}

uint64_t sub_22BD83588@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v21 = a3;
  v22 = a4;
  v6 = type metadata accessor for SnippetStreamingRouter.ScopeID(0);
  MEMORY[0x28223BE20](v6);
  v7 = sub_22BBE6DE0(&qword_27D8E6908, &qword_22BDCFC40);
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - v8;
  v10 = sub_22BBE6DE0(&qword_27D8E6860, &qword_22BDCF7F8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v21 - v11;
  v13 = sub_22BBE6DE0(&qword_27D8E6878, &qword_22BDCF808);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v21 - v15;
  sub_22BD812B0(a2, *a1, type metadata accessor for SnippetStreamingRouter.Entry);
  v17 = type metadata accessor for SnippetStreamingRouter.Entry(0);
  if (sub_22BB3AA28(v12, 1, v17))
  {
    sub_22BB58728(v12, &qword_27D8E6860, &qword_22BDCF7F8);
    sub_22BB336D0(v16, 1, 1, v6);
  }

  else
  {
    sub_22BC5E5C4();
    sub_22BB58728(v12, &qword_27D8E6860, &qword_22BDCF7F8);
  }

  v18 = *(v7 + 48);
  sub_22BC5E5C4();
  sub_22BC5E5C4();
  if (sub_22BB3AA28(v9, 1, v6) != 1)
  {
    sub_22BC5E5C4();
    if (sub_22BB3AA28(&v9[v18], 1, v6) != 1)
    {
      sub_22BB5005C();
      v20 = sub_22BDB43B4();
      sub_22BB67E48();
      sub_22BB58728(v16, &qword_27D8E6878, &qword_22BDCF808);
      sub_22BB67E48();
      result = sub_22BB58728(v9, &qword_27D8E6878, &qword_22BDCF808);
      goto LABEL_11;
    }

    sub_22BB58728(v16, &qword_27D8E6878, &qword_22BDCF808);
    sub_22BB67E48();
    goto LABEL_9;
  }

  sub_22BB58728(v16, &qword_27D8E6878, &qword_22BDCF808);
  if (sub_22BB3AA28(&v9[v18], 1, v6) != 1)
  {
LABEL_9:
    result = sub_22BB58728(v9, &qword_27D8E6908, &qword_22BDCFC40);
    v20 = 0;
    goto LABEL_11;
  }

  result = sub_22BB58728(v9, &qword_27D8E6878, &qword_22BDCF808);
  v20 = 1;
LABEL_11:
  *v22 = v20 & 1;
  return result;
}

uint64_t SnippetStreamingRouter.deinit()
{
  v1 = OBJC_IVAR____TtC23IntelligenceFlowRuntime22SnippetStreamingRouter_id;
  sub_22BDB43E4();
  sub_22BB2F330();
  (*(v2 + 8))(v0 + v1);
  sub_22BB58728(v0 + OBJC_IVAR____TtC23IntelligenceFlowRuntime22SnippetStreamingRouter_contexts + 8, &qword_27D8E6880, &qword_22BDCF810);
  return v0;
}

uint64_t SnippetStreamingRouter.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC23IntelligenceFlowRuntime22SnippetStreamingRouter_id;
  sub_22BDB43E4();
  sub_22BB2F330();
  (*(v2 + 8))(v0 + v1);
  sub_22BB58728(v0 + OBJC_IVAR____TtC23IntelligenceFlowRuntime22SnippetStreamingRouter_contexts + 8, &qword_27D8E6880, &qword_22BDCF810);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_22BD83B08(uint64_t a1, uint64_t *a2)
{
  result = SnippetStreamingRouter.allocateContext()(a1);
  *a2 = result;
  return result;
}

uint64_t SnippetStreamingRouter.CheckInProof.routerId.getter()
{
  sub_22BDB43E4();
  sub_22BB2F330();
  v0 = sub_22BB31F54();

  return v1(v0);
}

uint64_t SnippetStreamingRouter.CheckInProof.routerId.setter()
{
  sub_22BB35760();
  sub_22BDB43E4();
  sub_22BB2F330();
  v4 = *(v3 + 40);

  return v4(v1, v0, v2);
}

uint64_t SnippetStreamingRouter.CheckInProof.id.getter()
{
  type metadata accessor for SnippetStreamingRouter.CheckInProof(0);
  sub_22BB3257C();
  return sub_22BB67A00();
}

uint64_t SnippetStreamingRouter.CheckInProof.id.setter()
{
  v0 = sub_22BB35760();
  type metadata accessor for SnippetStreamingRouter.CheckInProof(v0);
  return sub_22BD85988();
}

void (*SnippetStreamingRouter.CheckInProof.id.modify())()
{
  v0 = sub_22BB35760();
  type metadata accessor for SnippetStreamingRouter.CheckInProof(v0);
  return nullsub_1;
}

unint64_t sub_22BD83DAC()
{
  result = qword_27D8E6868;
  if (!qword_27D8E6868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E6868);
  }

  return result;
}

unint64_t sub_22BD83EB4()
{
  result = qword_27D8E6890;
  if (!qword_27D8E6890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E6890);
  }

  return result;
}

unint64_t sub_22BD83F0C()
{
  result = qword_27D8E6898;
  if (!qword_27D8E6898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E6898);
  }

  return result;
}

uint64_t sub_22BD83F88(uint64_t a1)
{
  result = sub_22BDB43E4();
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

uint64_t sub_22BD84074(uint64_t a1)
{
  result = sub_22BDB43E4();
  if (v2 <= 0x3F)
  {
    result = sub_22BDB5AB4();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22BD8412C(uint64_t a1)
{
  result = sub_22BDB43E4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_22BD84198(uint64_t a1)
{
  sub_22BD8428C(319, &qword_2814287D0, MEMORY[0x277D1CFC0], MEMORY[0x277D85788]);
  if (v1 <= 0x3F)
  {
    sub_22BD8428C(319, &qword_28142A098, type metadata accessor for SnippetStreamingRouter.ScopeID, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22BD8428C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

_BYTE *sub_22BD842F0(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22BD843D0()
{
  result = qword_27D8E68A8;
  if (!qword_27D8E68A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E68A8);
  }

  return result;
}

unint64_t sub_22BD8446C(uint64_t a1, uint64_t a2)
{
  sub_22BDBB814();
  sub_22BDBAC54();
  sub_22BDBB834();
  v2 = sub_22BB3AC54();

  return sub_22BD847E4(v2, v3, v4);
}

unint64_t sub_22BD844E0(uint64_t a1)
{
  sub_22BDBB814();
  sub_22BDB43E4();
  sub_22BB35DAC();
  sub_22BB3CC18(v2, v3, MEMORY[0x277CC9600]);
  sub_22BDBABB4();
  v4 = sub_22BDBB834();

  return sub_22BD84898(a1, v4);
}

void sub_22BD84584()
{
  sub_22BB32888();
  sub_22BDB7B44();
  v0 = sub_22BB3CC18(&qword_27D8E3070, MEMORY[0x277D1D608], MEMORY[0x277D1D618]);
  v1 = sub_22BB69BE0(v0);
  sub_22BB38850(v1, v1, MEMORY[0x277D1D608], &qword_27D8E3078);
}

void sub_22BD84660()
{
  sub_22BB32888();
  sub_22BDB43E4();
  v0 = sub_22BB3CC18(&qword_28142DD50, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v1 = sub_22BB69BE0(v0);
  sub_22BB38850(v1, v1, MEMORY[0x277CC95F0], &unk_28142DD40);
}

void sub_22BD84710(uint64_t a1)
{
  sub_22BDB57A4();
  sub_22BB3CC18(&qword_28142DCC8, MEMORY[0x277D1CE90], MEMORY[0x277D1CE98]);
  sub_22BDBABA4();
  sub_22BD85028();
}

unint64_t sub_22BD847E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_22BDBB6D4() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_22BD84898(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_22BDB5AB4() - 8;
  MEMORY[0x28223BE20](v5);
  v6 = ~(-1 << *(v3 + 32));
  for (i = a2 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    sub_22BB67A00();
    sub_22BDB43E4();
    sub_22BB3CC18(&unk_28142DD40, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
    v8 = sub_22BDBABD4();
    sub_22BB67E48();
    if (v8)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_22BD84A44()
{
  result = qword_27D8E68C0;
  if (!qword_27D8E68C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E68C0);
  }

  return result;
}

unint64_t sub_22BD84A98(uint64_t a1, uint64_t a2)
{
  v42 = sub_22BDB4C34();
  v5 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v38 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22BBE6DE0(&qword_27D8E45D0, &qword_22BDCFC80);
  MEMORY[0x28223BE20](v7);
  v9 = &v35 - v8;
  v10 = type metadata accessor for FeedbackLearning.CandidateParameter(0);
  v11 = MEMORY[0x28223BE20](v10);
  v41 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v13);
  v16 = v2 + 64;
  v17 = -1 << *(v2 + 32);
  v18 = a2 & ~v17;
  if ((*(v2 + 64 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
  {
    v44 = v15;
    v45 = ~v17;
    v46 = *(v14 + 72);
    v40 = (v5 + 8);
    v36 = (v5 + 32);
    v37 = v7;
    v43 = v2 + 64;
    while (1)
    {
      sub_22BB67A00();
      v19 = &v9[*(v7 + 48)];
      sub_22BB67A00();
      sub_22BB67A00();
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
          v21 = a1;
          v22 = v41;
          sub_22BB67A00();
          v23 = *v22;
          v24 = v22[1];
          if (swift_getEnumCaseMultiPayload() != 1)
          {
            sub_22BB67E48();

            a1 = v21;
            v16 = v43;
            goto LABEL_18;
          }

          v25 = *v19;
          v26 = *(v19 + 1);
          if (v23 == v25 && v24 == v26)
          {

            sub_22BB67E48();
          }

          else
          {
            v28 = sub_22BDBB6D4();

            sub_22BB67E48();
            a1 = v21;
            v16 = v43;
            if ((v28 & 1) == 0)
            {
              goto LABEL_20;
            }
          }

          goto LABEL_24;
        case 2u:
          sub_22BB67E48();
          if (swift_getEnumCaseMultiPayload() == 2)
          {
            goto LABEL_24;
          }

          goto LABEL_18;
        case 3u:
          sub_22BB67E48();
          if (swift_getEnumCaseMultiPayload() == 3)
          {
            goto LABEL_24;
          }

          goto LABEL_18;
        default:
          v20 = v44;
          sub_22BB67A00();
          if (swift_getEnumCaseMultiPayload())
          {
            sub_22BB67E48();
            (*v40)(v20, v42);
LABEL_18:
            sub_22BB58728(v9, &qword_27D8E45D0, &qword_22BDCFC80);
          }

          else
          {
            v29 = v38;
            v30 = v42;
            (*v36)(v38, v19, v42);
            v39 = sub_22BDB4C04();
            v31 = *v40;
            v32 = v29;
            v7 = v37;
            (*v40)(v32, v30);
            sub_22BB67E48();
            v33 = v30;
            v16 = v43;
            v31(v44, v33);
            if (v39)
            {
LABEL_24:
              sub_22BB67E48();
              return v18;
            }

LABEL_20:
            sub_22BB67E48();
          }

          v18 = (v18 + 1) & v45;
          if (((*(v16 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
          {
            return v18;
          }

          break;
      }
    }
  }

  return v18;
}

void sub_22BD85028()
{
  sub_22BB30F94();
  v20 = v1;
  v21 = v2;
  v19 = v3;
  v5 = v4;
  v17 = v6;
  v8 = v7(0);
  sub_22BB30444();
  v10 = v9;
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v11);
  v13 = &v17 - v12;
  v22 = v0 + 64;
  v18 = v0;
  v14 = ~(-1 << *(v0 + 32));
  for (i = v5 & v14; ((1 << i) & *(v22 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v14)
  {
    (*(v10 + 16))(v13, *(v18 + 48) + *(v10 + 72) * i, v8);
    sub_22BB3CC18(v19, v20, v21);
    v16 = sub_22BDBABD4();
    (*(v10 + 8))(v13, v8);
    if (v16)
    {
      break;
    }
  }

  sub_22BB314EC();
}

uint64_t sub_22BD851DC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6, void (*a7)(void), void (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  sub_22BD8446C(a2, a3);
  sub_22BB363BC();
  if (v16)
  {
    __break(1u);
    goto LABEL_13;
  }

  v17 = v14;
  v18 = v15;
  sub_22BBE6DE0(a5, a6);
  if ((sub_22BDBB4A4() & 1) == 0)
  {
    goto LABEL_5;
  }

  v19 = sub_22BB52D78();
  v21 = sub_22BD8446C(v19, v20);
  if ((v18 & 1) != (v22 & 1))
  {
LABEL_13:
    result = sub_22BDBB744();
    __break(1u);
    return result;
  }

  v17 = v21;
LABEL_5:
  v23 = *v8;
  if (v18)
  {
    v24 = *(v23 + 56);
    a7(0);
    sub_22BB2F330();
    v26 = *(v25 + 40);
    v28 = v27;
    v29 = v24 + *(v25 + 72) * v17;

    return v26(v29, a1, v28);
  }

  else
  {
    a8(v17, a2, a3, a1, v23);
  }
}

uint64_t sub_22BD85364(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  sub_22BB72B1C(a2, a3);
  if (__OFADD__(*(v9 + 16), (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v10;
  v13 = v11;
  sub_22BBE6DE0(&qword_27D8E68E8, &qword_22BDCFBF8);
  if ((sub_22BDBB4A4() & 1) == 0)
  {
    goto LABEL_5;
  }

  sub_22BB72B1C(a2, a3);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_22BDBB744();
    __break(1u);
    return result;
  }

  v12 = v14;
LABEL_5:
  v16 = *v5;
  if (v13)
  {
    *(*(v16 + 56) + 8 * v12) = a1;
  }

  else
  {
    sub_22BB9703C(v12, a2, a3, a1, v16);
  }
}

void sub_22BD854A0(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_22BDB43E4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  sub_22BD84660();
  if (__OFADD__(*(v9 + 16), (v10 & 1) == 0))
  {
    __break(1u);
LABEL_9:
    sub_22BDBB744();
    __break(1u);
    return;
  }

  v11 = v10;
  sub_22BBE6DE0(&qword_27D8E68F0, &unk_22BDCFC10);
  if (sub_22BDBB4A4())
  {
    sub_22BD84660();
    if ((v11 & 1) != (v12 & 1))
    {
      goto LABEL_9;
    }
  }

  if (v11)
  {
    type metadata accessor for SessionCoordinatorInjectionRequest(0);
    sub_22BD85988();
  }

  else
  {
    (*(v6 + 16))(v8, a2, v5);
    sub_22BD7DD0C();
  }
}

void sub_22BD85668(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = sub_22BDB5AB4();
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  v11 = sub_22BD844E0(a2);
  if (__OFADD__(*(v10 + 16), (v12 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v13 = v11;
  v14 = v12;
  sub_22BBE6DE0(&qword_27D8E6920, &qword_22BDCFC58);
  if ((sub_22BDBB4A4() & 1) == 0)
  {
    goto LABEL_5;
  }

  v15 = sub_22BD844E0(a2);
  if ((v14 & 1) != (v16 & 1))
  {
LABEL_10:
    sub_22BDBB744();
    __break(1u);
    return;
  }

  v13 = v15;
LABEL_5:
  v17 = *v4;
  if (v14)
  {
    type metadata accessor for SnippetStreamingRouter.Entry(0);
    sub_22BD85988();
  }

  else
  {
    sub_22BB67A00();
    sub_22BD7DDCC(v13, v9, a1, v17);
  }
}

void sub_22BD85808()
{
  sub_22BB30F94();
  v4 = v3;
  sub_22BB35760();
  v5 = sub_22BDB43E4();
  sub_22BB30444();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  sub_22BB30574();
  sub_22BB345CC();
  sub_22BD84660();
  sub_22BB363BC();
  if (v11)
  {
    __break(1u);
    goto LABEL_11;
  }

  v12 = v9;
  v13 = v10;
  sub_22BBE6DE0(&qword_27D8E68F8, &unk_22BDCFC20);
  if ((sub_22BDBB4A4() & 1) == 0)
  {
    goto LABEL_5;
  }

  sub_22BD84660();
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_11:
    sub_22BDBB744();
    __break(1u);
    return;
  }

  v12 = v14;
LABEL_5:
  if (v13)
  {
    *(*(*v1 + 56) + 8 * v12) = v0;
    sub_22BB314EC();
  }

  else
  {
    (*(v7 + 16))(v2, v4, v5);
    sub_22BD7DE20();
    sub_22BB314EC();
  }
}

uint64_t sub_22BD85988()
{
  sub_22BB35F54();
  v1(0);
  sub_22BB2F330();
  v2 = sub_22BB31F54();
  v3(v2);
  return v0;
}

unint64_t sub_22BD85A3C()
{
  result = qword_27D8E6928;
  if (!qword_27D8E6928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E6928);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SnippetStreamingRouter.ScopeID.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_22BD85B40()
{
  result = qword_27D8E6950;
  if (!qword_27D8E6950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E6950);
  }

  return result;
}

unint64_t sub_22BD85B98()
{
  result = qword_27D8E6958;
  if (!qword_27D8E6958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E6958);
  }

  return result;
}

unint64_t sub_22BD85BF0()
{
  result = qword_27D8E6960;
  if (!qword_27D8E6960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E6960);
  }

  return result;
}

uint64_t SnippetStreamingRouter.Scoped.__allocating_init(base:)(uint64_t a1)
{
  v2 = swift_allocObject();
  SnippetStreamingRouter.Scoped.init(base:)(a1);
  return v2;
}

uint64_t SnippetStreamingRouter.Scoped.allocateContext()()
{
  v1 = sub_22BBE6DE0(&qword_27D8E6878, &qword_22BDCF808);
  sub_22BB2F0C8(v1);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v2);
  v4 = &v11 - v3;
  sub_22BBB74FC(v0 + OBJC_IVAR____TtCC23IntelligenceFlowRuntime22SnippetStreamingRouter6Scoped_scope, &v11 - v3);
  v5 = type metadata accessor for SnippetStreamingRouter.ScopeID(0);
  sub_22BB35DC4(v4, v6, v7, v5);
  sub_22BD82268();
  v9 = v8;
  sub_22BBB7914(v4);
  return v9;
}

void SnippetStreamingRouter.Scoped.deallocateContext(_:)(uint64_t a1)
{
  v4 = sub_22BBE6DE0(&qword_27D8E6878, &qword_22BDCF808);
  sub_22BB2F0C8(v4);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v5);
  sub_22BB32D6C();
  sub_22BBB74FC(v1 + OBJC_IVAR____TtCC23IntelligenceFlowRuntime22SnippetStreamingRouter6Scoped_scope, v2);
  v6 = type metadata accessor for SnippetStreamingRouter.ScopeID(0);
  v9 = sub_22BB35DC4(v2, v7, v8, v6);
  v10 = sub_22BD83520(v9, v2);
  sub_22BBB7914(v2);
  if (v10)
  {
    SnippetStreamingRouter.deallocateContext(_:)(a1);
  }
}

uint64_t SnippetStreamingRouter.Scoped.contextIsCheckedIn(_:)(uint64_t a1)
{
  v4 = sub_22BBE6DE0(&qword_27D8E6878, &qword_22BDCF808);
  sub_22BB2F0C8(v4);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v5);
  sub_22BB32D6C();
  sub_22BBB74FC(v1 + OBJC_IVAR____TtCC23IntelligenceFlowRuntime22SnippetStreamingRouter6Scoped_scope, v2);
  v6 = type metadata accessor for SnippetStreamingRouter.ScopeID(0);
  v9 = sub_22BB35DC4(v2, v7, v8, v6);
  v10 = sub_22BD83520(v9, v2);
  sub_22BBB7914(v2);
  if (v10)
  {
    return SnippetStreamingRouter.contextIsCheckedIn(_:)(a1);
  }

  else
  {
    return 2;
  }
}

uint64_t SnippetStreamingRouter.Scoped.deinit()
{

  sub_22BBB9714(v0 + OBJC_IVAR____TtCC23IntelligenceFlowRuntime22SnippetStreamingRouter6Scoped_scope);
  return v0;
}

unint64_t sub_22BD85F10()
{
  result = qword_27D8E6888;
  if (!qword_27D8E6888)
  {
    type metadata accessor for SnippetStreamingStream(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E6888);
  }

  return result;
}

uint64_t sub_22BD85F68(uint64_t a1, uint64_t *a2)
{
  result = SnippetStreamingRouter.Scoped.allocateContext()();
  *a2 = result;
  return result;
}

uint64_t sub_22BD86008(uint64_t a1)
{
  result = sub_22BDB43E4();
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

uint64_t sub_22BD860D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v14 = swift_task_alloc();
  *(v12 + 16) = v14;
  v15 = sub_22BBE6DE0(&qword_27D8E6968, &qword_22BDCFDE8);
  *v14 = v12;
  v14[1] = sub_22BD86CE8;

  return MEMORY[0x2822003F0](a1, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

uint64_t SnippetStreamingStream.Iterator.next()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v14 = swift_task_alloc();
  *(v12 + 16) = v14;
  v15 = sub_22BBE6DE0(&qword_27D8E6968, &qword_22BDCFDE8);
  *v14 = v12;
  v14[1] = sub_22BD8624C;

  return MEMORY[0x2822003F0](a1, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

uint64_t sub_22BD86338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v21 = swift_task_alloc();
  *(v12 + 16) = v21;
  *v21 = v12;
  v21[1] = sub_22BD863D0;

  return SnippetStreamingStream.Iterator.next()(a1, v14, v15, v16, v17, v18, v19, v20, a9, a10, a11, a12);
}

uint64_t sub_22BD864C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 24) = v7;
  *v7 = v3;
  v7[1] = sub_22BD8658C;

  return (sub_22BD860D4)(a1, a2, a3, v3 + 16);
}

uint64_t sub_22BD86680(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  sub_22BD86C84(a2, v3 + OBJC_IVAR____TtC23IntelligenceFlowRuntime22SnippetStreamingStream_id);
  v5 = OBJC_IVAR____TtC23IntelligenceFlowRuntime22SnippetStreamingStream_stream;
  v6 = sub_22BBE6DE0(&qword_27D8E6948, qword_22BDCFDF0);
  (*(*(v6 - 8) + 32))(v3 + v5, a3, v6);
  return v3;
}

uint64_t SnippetStreamingStream.deinit()
{
  v1 = v0;
  v2 = sub_22BDB5AB4();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC23IntelligenceFlowRuntime22SnippetStreamingStream_id;
  sub_22BD86870(v0 + OBJC_IVAR____TtC23IntelligenceFlowRuntime22SnippetStreamingStream_id, v4);

  SnippetStreamingRouter.deallocateContext(_:)(v4);

  sub_22BD868D4(v4);

  sub_22BD868D4(v0 + v5);
  v6 = OBJC_IVAR____TtC23IntelligenceFlowRuntime22SnippetStreamingStream_stream;
  v7 = sub_22BBE6DE0(&qword_27D8E6948, qword_22BDCFDF0);
  (*(*(v7 - 8) + 8))(v1 + v6, v7);
  return v1;
}

uint64_t sub_22BD86870(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BDB5AB4();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BD868D4(uint64_t a1)
{
  v2 = sub_22BDB5AB4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SnippetStreamingStream.__deallocating_deinit()
{
  SnippetStreamingStream.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

unint64_t sub_22BD8698C()
{
  result = qword_27D8E6980;
  if (!qword_27D8E6980)
  {
    type metadata accessor for SnippetStreamingStream.Iterator(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E6980);
  }

  return result;
}

uint64_t sub_22BD86A04()
{
  SnippetStreamingStream.makeAsyncIterator()();
}

void sub_22BD86A64(uint64_t a1)
{
  sub_22BDB43E4();
  if (v1 <= 0x3F)
  {
    sub_22BD86C24(319, &qword_27D8E6998, MEMORY[0x277D857B8]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_22BD86B9C(uint64_t a1)
{
  sub_22BD86C24(319, &qword_27D8E69B0, MEMORY[0x277D857A8]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_22BD86C24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_22BDB59D4();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_22BD86C84(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BDB5AB4();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BD86CEC()
{
  v1 = *(v0 + 112);

  return v1;
}

void sub_22BD86D1C()
{
  sub_22BB30F94();
  v65 = v0;
  v3 = v2;
  v64 = sub_22BBE6DE0(&qword_27D8E6A40, &qword_22BDD0190);
  sub_22BB30474();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v4);
  sub_22BB30BA8();
  v63 = v5;
  sub_22BB2F120();
  sub_22BDB77D4();
  sub_22BB30444();
  v67 = v7;
  v68 = v6;
  MEMORY[0x28223BE20](v6);
  sub_22BB30C74();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  sub_22BB2F39C();
  v66 = v12;
  v13 = sub_22BBE6DE0(&unk_27D8E69E0, &qword_22BDC1660);
  v14 = sub_22BB2F0C8(v13);
  MEMORY[0x28223BE20](v14);
  sub_22BB30C74();
  v17 = v15 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v58 - v19;
  v21 = sub_22BDB9B14();
  sub_22BB30444();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  sub_22BB30C74();
  v62 = v25 - v26;
  MEMORY[0x28223BE20](v27);
  sub_22BB34360();
  v29 = MEMORY[0x28223BE20](v28);
  v31 = &v58 - v30;
  MEMORY[0x28223BE20](v29);
  v33 = &v58 - v32;
  v34 = v3;
  sub_22BD39594(v3);
  v35 = sub_22BDB9B54();
  if (sub_22BB3AA28(v20, 1, v35) == 1)
  {
    sub_22BB6B75C(v20, &unk_27D8E69E0, &qword_22BDC1660);
    sub_22BDB6354();
    v36 = sub_22BDB77C4();
    v37 = sub_22BDBB104();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = sub_22BB37F30();
      sub_22BB360F0(v38);
      sub_22BB38F24(&dword_22BB2C000, v36, v37, "SpeechHandler interestedIn; false");
      sub_22BB30AF0();
    }

    (*(v67 + 8))(v10, v68);
  }

  else
  {
    sub_22BDB9B24();
    sub_22BB30474();
    v40 = *(v39 + 8);
    v61 = v39 + 8;
    v40(v20, v35);
    (*(v23 + 32))(v33, v31, v21);
    (*(v23 + 16))(v1, v33, v21);
    if ((*(v23 + 88))(v1, v21) == *MEMORY[0x277D1E758])
    {
      v59 = v40;
      v41 = v66;
      sub_22BDB6354();

      v42 = sub_22BDB77C4();
      v43 = sub_22BDBB104();

      v60 = v43;
      if (os_log_type_enabled(v42, v43))
      {
        v58 = v42;
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v69 = v45;
        *v44 = 136315138;
        sub_22BD39594(v34);
        v46 = sub_22BB2F3FC();
        if (sub_22BB3AA28(v46, v47, v35) == 1)
        {
          sub_22BB6B75C(v17, &unk_27D8E69E0, &qword_22BDC1660);
          v48 = 1;
          v49 = v63;
        }

        else
        {
          v51 = v62;
          sub_22BDB9B24();
          v59(v17, v35);
          v49 = v63;
          sub_22BDB9AC4();
          (*(v23 + 8))(v51, v21);
          v48 = 0;
        }

        v52 = sub_22BDB9254();
        sub_22BB336D0(v49, v48, 1, v52);
        v53 = sub_22BDBAC14();
        v55 = sub_22BB32EE0(v53, v54, &v69);

        *(v44 + 4) = v55;
        v56 = v58;
        _os_log_impl(&dword_22BB2C000, v58, v60, "SpeechHandler is interestedIn lastPayload: %s", v44, 0xCu);
        sub_22BB32FA4(v45);
        sub_22BB30AF0();
        sub_22BB30AF0();

        (*(v67 + 8))(v66, v68);
      }

      else
      {

        (*(v67 + 8))(v41, v68);
      }

      v57 = *(v23 + 8);

      v57(v33, v21);
      v57(v1, v21);
    }

    else
    {
      v50 = *(v23 + 8);
      v50(v33, v21);
      v50(v1, v21);
    }
  }

  sub_22BB314EC();
}

uint64_t SpeechHandler.deinit()
{

  swift_unknownObjectRelease();
  swift_defaultActor_destroy();
  return v0;
}

uint64_t SpeechHandler.__deallocating_deinit()
{
  SpeechHandler.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22BD873DC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = *v4;
  v10 = *sub_22BB69FEC(a4, a4[3]);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_22BB6A0B4;

  return sub_22BD89BB0(a1, a2, a3, v10, v9);
}

void sub_22BD874FC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_22BDB77D4();
  sub_22BB30444();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  sub_22BB30C74();
  v83 = v13 - v14;
  MEMORY[0x28223BE20](v15);
  sub_22BB2F39C();
  v77 = v16;
  sub_22BB2F120();
  sub_22BDB9B14();
  sub_22BB30444();
  v71 = v18;
  v72 = v17;
  MEMORY[0x28223BE20](v17);
  sub_22BB305A8();
  v70 = v19;
  sub_22BB2F120();
  v81 = sub_22BDB9B54();
  sub_22BB30444();
  v74 = v20;
  MEMORY[0x28223BE20](v21);
  sub_22BB305A8();
  v80 = v22;
  sub_22BB2F120();
  v84 = sub_22BDB4EB4();
  sub_22BB30444();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  sub_22BB30574();
  v28 = v27 - v26;
  v79 = sub_22BDB8D34();
  sub_22BB30444();
  v30 = v29;
  MEMORY[0x28223BE20](v31);
  sub_22BB30C74();
  v73 = v32 - v33;
  MEMORY[0x28223BE20](v34);
  sub_22BB2F39C();
  v75 = v6;
  v76 = v35;
  v36 = *&v6[OBJC_IVAR____TtC23IntelligenceFlowRuntime48SpeechHandlerLocalSpeechRecognizerClientDelegate_turnId];
  v37 = *&v6[OBJC_IVAR____TtC23IntelligenceFlowRuntime48SpeechHandlerLocalSpeechRecognizerClientDelegate_turnId + 8];
  v78 = a2;
  v38 = v36 == a2 && v37 == a3;
  if (v38 || (sub_22BDBB6D4() & 1) != 0)
  {
    v39 = sub_22BBC20A8(a6);
    v40 = MEMORY[0x277D84F90];
    v69 = v9;
    v68 = v11;
    if (v39)
    {
      v41 = v39;
      v88[0] = MEMORY[0x277D84F90];
      sub_22BD286C0(0, v39 & ~(v39 >> 63), 0);
      if ((v41 & 0x8000000000000000) == 0)
      {
        v42 = 0;
        v40 = v88[0];
        v82 = v30;
        while (1)
        {
          v43 = v42 + 1;
          if (__OFADD__(v42, 1))
          {
            break;
          }

          if ((a6 & 0xC000000000000001) != 0)
          {
            v44 = MEMORY[0x2318A5340](v42, a6);
          }

          else
          {
            if (v42 >= *((a6 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_25;
            }

            v44 = *(a6 + 8 * v42 + 32);
          }

          v45 = v44;
          sub_22BD8ADBC(v44);
          if (!v46)
          {
            goto LABEL_27;
          }

          [v45 confidenceScore];
          [v45 startTime];
          [v45 silenceStartTime];
          [v45 endTime];
          sub_22BDB4EA4();

          v88[0] = v40;
          v48 = *(v40 + 16);
          v47 = *(v40 + 24);
          if (v48 >= v47 >> 1)
          {
            sub_22BD286C0(v47 > 1, v48 + 1, 1);
            v40 = v88[0];
          }

          *(v40 + 16) = v48 + 1;
          (*(v24 + 32))(v40 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v48, v28, v84);
          ++v42;
          v30 = v82;
          if (v43 == v41)
          {
            goto LABEL_18;
          }
        }

        __break(1u);
LABEL_25:
        __break(1u);
      }

      __break(1u);
LABEL_27:
      __break(1u);
    }

    else
    {
LABEL_18:

      MEMORY[0x2318A2CF0](a2, a3, v40);
      v49 = OBJC_IVAR____TtC23IntelligenceFlowRuntime48SpeechHandlerLocalSpeechRecognizerClientDelegate_transcript;
      v86 = *(v30 + 16);
      v86(v70, v76, v79);
      (*(v71 + 104))(v70, *MEMORY[0x277D1E7B0], v72);
      sub_22BDB9714();
      (*(v71 + 8))(v70, v72);
      sub_22BB69FEC(&v75[OBJC_IVAR____TtC23IntelligenceFlowRuntime48SpeechHandlerLocalSpeechRecognizerClientDelegate_spanResponseCallback], *&v75[OBJC_IVAR____TtC23IntelligenceFlowRuntime48SpeechHandlerLocalSpeechRecognizerClientDelegate_spanResponseCallback + 24]);
      sub_22BBE6DE0(&qword_27D8E5FD0, &unk_22BDCEA40);
      v50 = sub_22BB36904();
      *(v50 + 16) = xmmword_22BDBCBD0;
      (*(v74 + 16))(&v75[v49 + v50], v80, v81);
      sub_22BB30A2C();
      sub_22BD790CC(v50, v51, 0);

      sub_22BDB6354();
      v86(v73, v76, v79);
      v52 = sub_22BDB77C4();
      v53 = sub_22BDBB104();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        v88[0] = v87;
        *v54 = 136315138;
        sub_22BD898D0();
        v55 = sub_22BDBB684();
        v56 = v30;
        v58 = v57;
        v59 = *(v56 + 8);
        v59(v73, v79);
        v60 = sub_22BB32EE0(v55, v58, v88);

        *(v54 + 4) = v60;
        _os_log_impl(&dword_22BB2C000, v52, v53, "Received speech partial result: %s", v54, 0xCu);
        sub_22BB32FA4(v87);
        sub_22BB30AF0();
        sub_22BB30AF0();

        (*(v68 + 8))(v77, v69);
        (*(v74 + 8))(v80, v81);
        v59(v76, v79);
      }

      else
      {

        v61 = *(v30 + 8);
        v61(v73, v79);
        (*(v68 + 8))(v77, v69);
        (*(v74 + 8))(v80, v81);
        v61(v76, v79);
      }
    }
  }

  else
  {
    v62 = v11;
    v63 = v9;
    sub_22BDB6354();

    v64 = v6;
    v65 = sub_22BDB77C4();
    v66 = sub_22BDBB114();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v88[0] = swift_slowAlloc();
      *v67 = 136315394;
      *(v67 + 4) = sub_22BB32EE0(v78, a3, v88);
      *(v67 + 12) = 2080;
      *(v67 + 14) = sub_22BB32EE0(v36, v37, v88);
      _os_log_impl(&dword_22BB2C000, v65, v66, "SpeechPartialResult requestId = %s does not match current turnId = %s", v67, 0x16u);
      swift_arrayDestroy();
      sub_22BB30AF0();
      sub_22BB30AF0();
    }

    (*(v62 + 8))(v83, v63);
  }
}

void sub_22BD87EBC()
{
  sub_22BB30F94();
  v126 = v0;
  v133 = v2;
  v3 = sub_22BBE6DE0(&unk_27D8E69E0, &qword_22BDC1660);
  sub_22BB2F0C8(v3);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v4);
  sub_22BB30BA8();
  v125 = v5;
  sub_22BB2F120();
  v6 = sub_22BDB9B14();
  sub_22BB30444();
  v121 = v7;
  MEMORY[0x28223BE20](v8);
  sub_22BB305A8();
  v120 = v9;
  sub_22BB2F120();
  sub_22BDB9B54();
  sub_22BB30444();
  v123 = v11;
  v124 = v10;
  MEMORY[0x28223BE20](v10);
  sub_22BB305A8();
  v122 = v12;
  v13 = sub_22BBE6DE0(&unk_27D8E69F0, &qword_22BDCDD08);
  sub_22BB2F0C8(v13);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v14);
  sub_22BB30BA8();
  v119 = v15;
  v16 = sub_22BBE6DE0(&qword_27D8E2F40, &qword_22BDCFFE0);
  sub_22BB2F0C8(v16);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v17);
  sub_22BB30BA8();
  v116 = v18;
  v19 = sub_22BBE6DE0(&unk_27D8E6A00, &qword_22BDCFFE8);
  sub_22BB2F0C8(v19);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v20);
  sub_22BB30BA8();
  v114 = v21;
  v22 = sub_22BBE6DE0(&qword_27D8E3218, &qword_22BDBE390);
  sub_22BB2F0C8(v22);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v23);
  sub_22BB30BA8();
  v113 = v24;
  v25 = sub_22BBE6DE0(&qword_27D8E6A10, &qword_22BDCDD10);
  sub_22BB2F0C8(v25);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v26);
  sub_22BB30BA8();
  v112 = v27;
  sub_22BB2F120();
  v110 = sub_22BDB8634();
  sub_22BB30444();
  v109 = v28;
  MEMORY[0x28223BE20](v29);
  sub_22BB305A8();
  v111 = v30;
  sub_22BB2F120();
  sub_22BDB9624();
  sub_22BB30444();
  v117 = v32;
  v118 = v31;
  MEMORY[0x28223BE20](v31);
  sub_22BB305A8();
  v115 = v33;
  sub_22BB2F120();
  v34 = sub_22BDB4C34();
  v35 = sub_22BB2F0C8(v34);
  MEMORY[0x28223BE20](v35);
  sub_22BB305A8();
  v108 = v36;
  v37 = sub_22BBE6DE0(&qword_27D8E6A18, &unk_22BDCFFF0);
  v38 = sub_22BB2F0C8(v37);
  MEMORY[0x28223BE20](v38);
  sub_22BB30C74();
  MEMORY[0x28223BE20](v39);
  v41 = &v108 - v40;
  sub_22BDB85B4();
  sub_22BB30444();
  v131 = v43;
  v132 = v42;
  MEMORY[0x28223BE20](v42);
  sub_22BB305A8();
  v129 = v44;
  sub_22BB2F120();
  v130 = sub_22BDB4EF4();
  sub_22BB30444();
  v128 = v45;
  MEMORY[0x28223BE20](v46);
  sub_22BB305A8();
  v127 = v47;
  sub_22BB2F120();
  v48 = sub_22BDB77D4();
  sub_22BB30444();
  v50 = v49;
  MEMORY[0x28223BE20](v51);
  sub_22BB30C74();
  sub_22BB34360();
  MEMORY[0x28223BE20](v52);
  sub_22BDB6354();
  v53 = sub_22BDB77C4();
  v54 = sub_22BDBB104();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = sub_22BB37F30();
    sub_22BB360F0(v55);
    sub_22BB38F24(&dword_22BB2C000, v53, v54, "SpeechHandler received TRP candidate package");
    sub_22BB30AF0();
  }

  v56 = *(v50 + 8);
  v57 = sub_22BB2F324();
  v56(v57);
  sub_22BD888B0();
  if (!v58)
  {
    goto LABEL_8;
  }

  v59 = v58;
  v60 = [v58 recognition];
  if (v60)
  {
    sub_22BD8978C(v60);
    if (v61)
    {
      v133 = v59;
      v62 = v127;
      sub_22BD8A650(v133);
      v63 = v62;
      v64 = v130;
      (*(v128 + 16))(v41, v63, v130);
      sub_22BB336D0(v41, 0, 1, v64);
      sub_22BB30B28();
      sub_22BB336D0(v65, v66, v67, v64);
      sub_22BDB4C14();
      v68 = v129;
      sub_22BDB85A4();
      v69 = v111;
      (*(v131 + 16))(v111, v68, v132);
      (*(v109 + 104))(v69, *MEMORY[0x277D1DDD8], v110);
      sub_22BDB8FB4();
      sub_22BB30B28();
      sub_22BB336D0(v70, v71, v72, v73);
      sub_22BDB43E4();
      sub_22BB30B28();
      sub_22BB336D0(v74, v75, v76, v77);
      sub_22BDB9464();
      sub_22BB30B28();
      sub_22BB336D0(v78, v79, v80, v81);
      sub_22BDB6204();
      sub_22BB30B28();
      sub_22BB336D0(v82, v83, v84, v85);
      sub_22BDB92B4();
      sub_22BB30B28();
      sub_22BB336D0(v86, v87, v88, v89);
      v90 = v115;
      sub_22BDB9604();
      v91 = OBJC_IVAR____TtC23IntelligenceFlowRuntime48SpeechHandlerLocalSpeechRecognizerClientDelegate_transcript;
      v93 = v117;
      v92 = v118;
      v94 = v120;
      (*(v117 + 16))(v120, v90, v118);
      v95 = v121;
      (*(v121 + 104))(v94, *MEMORY[0x277D1E858], v6);
      v96 = v126;
      v97 = v126 + v91;
      v98 = v122;
      sub_22BDB96F4();
      (*(v95 + 8))(v94, v6);
      sub_22BB69FEC((v96 + OBJC_IVAR____TtC23IntelligenceFlowRuntime48SpeechHandlerLocalSpeechRecognizerClientDelegate_spanResponseCallback), *(v96 + OBJC_IVAR____TtC23IntelligenceFlowRuntime48SpeechHandlerLocalSpeechRecognizerClientDelegate_spanResponseCallback + 24));
      sub_22BBE6DE0(&qword_27D8E5FD0, &unk_22BDCEA40);
      v99 = v123;
      v100 = sub_22BB36904();
      *(v100 + 16) = xmmword_22BDBCBD0;
      v101 = v124;
      (*(v99 + 16))(v100 + v97, v98, v124);
      sub_22BB30A2C();
      sub_22BD790CC(v100, v102, 0);

      (*(v93 + 8))(v90, v92);
      (*(v131 + 8))(v129, v132);
      (*(v128 + 8))(v127, v130);
      v103 = v125;
      (*(v99 + 32))(v125, v98, v101);
      sub_22BB336D0(v103, 0, 1, v101);
      v104 = OBJC_IVAR____TtC23IntelligenceFlowRuntime48SpeechHandlerLocalSpeechRecognizerClientDelegate_latestRequestEvent;
      swift_beginAccess();
      sub_22BD897FC(v103, v96 + v104);
      swift_endAccess();
LABEL_11:
      sub_22BB314EC();
      return;
    }

LABEL_8:
    sub_22BDB6354();
    v105 = sub_22BDB77C4();
    v106 = sub_22BDBB114();
    if (os_log_type_enabled(v105, v106))
    {
      v107 = sub_22BB37F30();
      *v107 = 0;
      _os_log_impl(&dword_22BB2C000, v105, v106, "No speech package found from TRP candidate package or utterance found in that package", v107, 2u);
      sub_22BB30AF0();
    }

    (v56)(v1, v48);
    goto LABEL_11;
  }

  __break(1u);
}

void sub_22BD888B0()
{
  sub_22BB30F94();
  sub_22BDB77D4();
  sub_22BB30444();
  MEMORY[0x28223BE20](v1);
  sub_22BB30574();
  v2 = sub_22BD8971C(v0);
  if (v2)
  {
    v3 = v2;
    if (sub_22BBC20A8(v2))
    {
      sub_22BD72584();
      if ((v3 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x2318A5340](0, v3);
      }

      else
      {
        v4 = *(v3 + 32);
      }

      v5 = v4;

      v6 = [v5 speechPackage];

      if (v6)
      {
        goto LABEL_13;
      }
    }

    else
    {
    }

    sub_22BDB6354();
    v7 = v0;
    v8 = sub_22BDB77C4();
    v9 = sub_22BDBB114();
    if (!os_log_type_enabled(v8, v9))
    {

      goto LABEL_12;
    }

    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136315138;
    v12 = sub_22BD8986C(v7);
    v14 = v13;

    if (v14)
    {
      v15 = sub_22BB32EE0(v12, v14, &v18);

      *(v10 + 4) = v15;
      _os_log_impl(&dword_22BB2C000, v8, v9, "Could not extract speech package from TRP ID: %s", v10, 0xCu);
      sub_22BB32FA4(v11);
      sub_22BB30AF0();
      sub_22BB30AF0();

LABEL_12:
      v16 = sub_22BB2F324();
      v17(v16);
LABEL_13:
      sub_22BB314EC();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_22BD88BBC()
{
  sub_22BB30F94();
  v2 = v0;
  v39 = sub_22BDB9B14();
  sub_22BB30444();
  v37 = v3;
  MEMORY[0x28223BE20](v4);
  sub_22BB305A8();
  v36 = v5;
  v6 = sub_22BBE6DE0(&unk_27D8E69E0, &qword_22BDC1660);
  sub_22BB2F0C8(v6);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v7);
  v9 = &v35 - v8;
  v10 = sub_22BDB9B54();
  sub_22BB30444();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  sub_22BB30C74();
  sub_22BB34360();
  MEMORY[0x28223BE20](v14);
  sub_22BB2F39C();
  v38 = v15;
  sub_22BB2F120();
  v16 = sub_22BDB77D4();
  sub_22BB30444();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  sub_22BB30574();
  v22 = v21 - v20;
  sub_22BDB6354();
  v23 = sub_22BDB77C4();
  v24 = sub_22BDBB104();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = sub_22BB37F30();
    v35 = v12;
    sub_22BB360F0(v25);
    sub_22BB38F24(&dword_22BB2C000, v23, v24, "SpeechHandler received continuity end");
    v12 = v35;
    sub_22BB30AF0();
  }

  (*(v18 + 8))(v22, v16);
  v26 = OBJC_IVAR____TtC23IntelligenceFlowRuntime48SpeechHandlerLocalSpeechRecognizerClientDelegate_latestRequestEvent;
  swift_beginAccess();
  sub_22BD892C0(v2 + v26, v9);
  if (sub_22BB3AA28(v9, 1, v10) == 1)
  {
    sub_22BB6B75C(v9, &unk_27D8E69E0, &qword_22BDC1660);
  }

  else
  {
    v27 = v38;
    (*(v12 + 32))(v38, v9, v10);
    v28 = v36;
    sub_22BDB8BD4();
    v29 = v37;
    v30 = v39;
    (*(v37 + 104))(v28, *MEMORY[0x277D1E790], v39);
    sub_22BDB9A54();
    (*(v29 + 8))(v28, v30);
    sub_22BB69FEC((v2 + OBJC_IVAR____TtC23IntelligenceFlowRuntime48SpeechHandlerLocalSpeechRecognizerClientDelegate_spanResponseCallback), *(v2 + OBJC_IVAR____TtC23IntelligenceFlowRuntime48SpeechHandlerLocalSpeechRecognizerClientDelegate_spanResponseCallback + 24));
    sub_22BBE6DE0(&qword_27D8E5FD0, &unk_22BDCEA40);
    v31 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_22BDBCBD0;
    (*(v12 + 16))(v32 + v31, v1, v10);
    sub_22BB30A2C();
    sub_22BD790CC(v32, v33, 0);

    v34 = *(v12 + 8);
    v34(v1, v10);
    v34(v27, v10);
  }

  sub_22BB314EC();
}

id sub_22BD8905C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SpeechHandlerLocalSpeechRecognizerClientDelegate(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for SpeechHandlerLocalSpeechRecognizerClientDelegate(uint64_t a1)
{
  result = qword_27D8E69C8;
  if (!qword_27D8E69C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22BD89188(uint64_t a1)
{
  sub_22BDB9774();
  if (v1 <= 0x3F)
  {
    sub_22BD89268(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_22BD89268(uint64_t a1)
{
  if (!qword_27D8E69D8)
  {
    sub_22BDB9B54();
    v1 = sub_22BDBB254();
    if (!v2)
    {
      atomic_store(v1, &qword_27D8E69D8);
    }
  }
}

uint64_t sub_22BD892C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BBE6DE0(&unk_27D8E69E0, &qword_22BDC1660);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_22BD89330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, double a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, char a15, char a16, char a17, uint64_t a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  v62 = sub_22BDBABE4();

  v60 = sub_22BDBABE4();

  v59 = sub_22BDBAD54();

  if (a11)
  {
    v58 = sub_22BDBABE4();
  }

  else
  {
    v58 = 0;
  }

  if (a13)
  {
    v57 = sub_22BDBABE4();
  }

  else
  {
    v57 = 0;
  }

  if (a18)
  {
    v56 = sub_22BDBAAD4();
  }

  else
  {
    v56 = 0;
  }

  if (a23)
  {
    v55 = sub_22BDBABE4();
  }

  else
  {
    v55 = 0;
  }

  if (a26)
  {
    v54 = sub_22BDBABE4();
  }

  else
  {
    v54 = 0;
  }

  if (a27)
  {
    sub_22BBED848(0, &qword_27D8E6A48, 0x277CEF130);
    v53 = sub_22BDBAD54();
  }

  else
  {
    v53 = 0;
  }

  if (a29)
  {
    v68 = sub_22BDBABE4();
  }

  else
  {
    v68 = 0;
  }

  if (a31)
  {
    v69 = sub_22BDBABE4();
  }

  else
  {
    v69 = 0;
  }

  if (a33)
  {
    v67 = sub_22BDBABE4();
  }

  else
  {
    v67 = 0;
  }

  v40 = a37;
  v41 = a21;
  v42 = a20;
  v43 = a17;
  v44 = a16;
  v45 = a15;
  v46 = a14;
  if (a39)
  {
    v47 = sub_22BDBABE4();

    v40 = a37;
    v42 = a20;
    v41 = a21;
    v43 = a17;
    v44 = a16;
    v45 = a15;
    v46 = a14;
  }

  else
  {
    v47 = 0;
  }

  LOBYTE(v52) = a35 & 1;
  LOBYTE(v51) = a24 & 1;
  BYTE3(v50) = v41 & 1;
  BYTE2(v50) = v42 & 1;
  LOWORD(v50) = a19 & 0x101;
  BYTE3(v49) = v43 & 1;
  BYTE2(v49) = v44 & 1;
  BYTE1(v49) = v45 & 1;
  LOBYTE(v49) = v46 & 1;
  v65 = [v61 initWithRequestId:v62 inputOrigin:v60 speechRecognitionTaskName:a5 speechRecognitionMode:a6 location:a7 jitGrammar:v59 overrideModelPath:a9 applicationName:v58 detectUtterances:v57 continuousListening:v49 shouldHandleCapitalization:v56 secureOfflineOnly:v50 maximumRecognitionDuration:v55 recognitionOverrides:v51 shouldStoreAudioOnDevice:v54 deliverEagerPackage:v53 enableEmojiRecognition:v68 enableAutoPunctuation:v69 UILanguage:v67 enableVoiceCommands:a34 dictationUIInteractionId:v52 sharedUserInfos:a36 prefixText:v40 postfixText:v47 selectedText:? powerContext:? shouldStartAudioCapture:? audioCaptureStartHostTime:? audioRecordType:? audioRecordDeviceId:?];

  return v65;
}

uint64_t sub_22BD8971C(void *a1)
{
  v1 = [a1 tcuList];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_22BBED848(0, &qword_27D8E6A20, 0x277D5D2F0);
  v3 = sub_22BDBAD64();

  return v3;
}

uint64_t sub_22BD8978C(void *a1)
{
  v2 = [a1 oneBestTranscript];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_22BDBABF4();

  return v3;
}

uint64_t sub_22BD897FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BBE6DE0(&unk_27D8E69E0, &qword_22BDC1660);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BD8986C(void *a1)
{
  v1 = [a1 trpCandidateId];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_22BDBABF4();

  return v3;
}

unint64_t sub_22BD898D0()
{
  result = qword_27D8E6A28;
  if (!qword_27D8E6A28)
  {
    sub_22BDB8D34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E6A28);
  }

  return result;
}

id sub_22BD89928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v19[3] = type metadata accessor for SessionCoordinatorResponseCallback(0);
  v19[4] = &off_283F80930;
  v19[0] = a4;
  v10 = OBJC_IVAR____TtC23IntelligenceFlowRuntime48SpeechHandlerLocalSpeechRecognizerClientDelegate_latestRequestEvent;
  v11 = sub_22BDB9B54();
  sub_22BB336D0(&a5[v10], 1, 1, v11);
  v12 = &a5[OBJC_IVAR____TtC23IntelligenceFlowRuntime48SpeechHandlerLocalSpeechRecognizerClientDelegate_turnId];
  *v12 = a1;
  *(v12 + 1) = a2;
  v13 = OBJC_IVAR____TtC23IntelligenceFlowRuntime48SpeechHandlerLocalSpeechRecognizerClientDelegate_transcript;
  v14 = sub_22BDB9774();
  v15 = *(v14 - 8);
  (*(v15 + 16))(&a5[v13], a3, v14);
  sub_22BB69088(v19, &a5[OBJC_IVAR____TtC23IntelligenceFlowRuntime48SpeechHandlerLocalSpeechRecognizerClientDelegate_spanResponseCallback]);
  v18.receiver = a5;
  v18.super_class = type metadata accessor for SpeechHandlerLocalSpeechRecognizerClientDelegate(0);
  v16 = objc_msgSendSuper2(&v18, sel_init);
  (*(v15 + 8))(a3, v14);
  sub_22BB32FA4(v19);
  return v16;
}

id sub_22BD89A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v16 = *a4;
  v17 = &off_283F80930;
  v15[0] = a4;
  v7 = objc_allocWithZone(type metadata accessor for SpeechHandlerLocalSpeechRecognizerClientDelegate(0));
  v8 = sub_22BB8D7AC(v15, v16);
  MEMORY[0x28223BE20](v8);
  v10 = (&v15[-1] - v9);
  (*(v11 + 16))(&v15[-1] - v9);
  v12 = sub_22BD89928(a1, a2, a3, *v10, v7);
  sub_22BB32FA4(v15);
  return v12;
}

uint64_t sub_22BD89BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[13] = a1;
  v5[14] = a5;
  sub_22BBE6DE0(&qword_27D8E2F40, &qword_22BDCFFE0);
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v8 = sub_22BDB9C84();
  v5[17] = v8;
  v5[18] = *(v8 - 8);
  v5[19] = swift_task_alloc();
  v9 = sub_22BDB9B14();
  v5[20] = v9;
  v5[21] = *(v9 - 8);
  v5[22] = swift_task_alloc();
  v10 = sub_22BDB8934();
  v5[23] = v10;
  v5[24] = *(v10 - 8);
  v5[25] = swift_task_alloc();
  v11 = sub_22BDB9774();
  v5[26] = v11;
  v5[27] = *(v11 - 8);
  v5[28] = swift_task_alloc();
  sub_22BBE6DE0(&unk_27D8E69E0, &qword_22BDC1660);
  v5[29] = swift_task_alloc();
  v12 = sub_22BDB9B54();
  v5[30] = v12;
  v5[31] = *(v12 - 8);
  v5[32] = swift_task_alloc();
  v13 = sub_22BDB77D4();
  v5[33] = v13;
  v5[34] = *(v13 - 8);
  v5[35] = swift_task_alloc();
  v5[36] = swift_task_alloc();
  v5[5] = type metadata accessor for SessionCoordinatorResponseCallback(0);
  v5[6] = &off_283F80930;
  v5[2] = a4;

  return MEMORY[0x2822009F8](sub_22BD89EF8, a5, 0);
}

uint64_t sub_22BD89EF8(uint64_t a1)
{
  sub_22BDB6354();
  v2 = sub_22BDB77C4();
  v3 = sub_22BDBB104();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = sub_22BB37F30();
    sub_22BB360F0(v4);
    sub_22BB38F24(&dword_22BB2C000, v2, v3, "SpeechHandler accept");
    sub_22BB30AF0();
  }

  v5 = v1[36];
  v6 = v1[33];
  v7 = v1[34];
  v351 = v1[30];
  v8 = v1[27];
  v9 = v1[28];
  v10 = v1[26];

  v11 = *(v7 + 8);
  v11(v5, v6);
  sub_22BDB96A4();
  v12 = sub_22BDB9744();
  (*(v8 + 8))(v9, v10);
  v1[12] = v12;
  sub_22BBE6DE0(&qword_27D8E2F48, &unk_22BDBD950);
  sub_22BB8F3FC();
  sub_22BDB9144();

  v13 = sub_22BB2F3FC();
  if (sub_22BB3AA28(v13, v14, v351) != 1)
  {
    v16 = v1[21];
    v15 = v1[22];
    v17 = v1[20];
    (*(v1[31] + 32))(v1[32], v1[29], v1[30]);
    sub_22BDB9B24();
    if ((*(v16 + 88))(v15, v17) != *MEMORY[0x277D1E758])
    {
      (*(v1[31] + 8))(v1[32], v1[30]);
      v31 = sub_22BB2F324();
      v32(v31);
      goto LABEL_11;
    }

    v19 = v1[24];
    v18 = v1[25];
    v21 = v1[22];
    v20 = v1[23];
    v23 = v1[18];
    v22 = v1[19];
    v24 = v1[17];
    (*(v1[21] + 96))(v21, v1[20]);
    (*(v19 + 32))(v18, v21, v20);
    sub_22BDB8904();
    if ((*(v23 + 88))(v22, v24) != *MEMORY[0x277D1E8F8])
    {
      v34 = v1[18];
      v33 = v1[19];
      v35 = v1[17];
      (*(v1[24] + 8))(v1[25], v1[23]);
      v36 = sub_22BB2F324();
      v37(v36);
      (*(v34 + 8))(v33, v35);
      goto LABEL_11;
    }

    (*(v1[18] + 8))(v1[19], v1[17]);
    v25 = sub_22BDB8924();
    v27 = v26;
    sub_22BDB88F4();
    v28 = sub_22BDB6204();
    v29 = sub_22BB2F3FC();
    if (sub_22BB3AA28(v29, v30, v28) == 1)
    {
      sub_22BB6B75C(v1[16], &qword_27D8E2F40, &qword_22BDCFFE0);
    }

    else
    {
      v126 = sub_22BDB61E4();
      v128 = v127;
      sub_22BB30474();
      v129 = sub_22BB2F324();
      v130(v129);
      if (v128)
      {
LABEL_19:
        sub_22BDB88F4();
        v131 = sub_22BB2F3FC();
        v133 = sub_22BB3AA28(v131, v132, v28);
        v134 = v1[15];
        if (v133 == 1)
        {
          sub_22BB6B75C(v1[15], &qword_27D8E2F40, &qword_22BDCFFE0);
          v135 = 0;
        }

        else
        {
          v135 = sub_22BDB61B4();
          sub_22BB30474();
          (*(v136 + 8))(v134, v28);
        }

        v350 = v1[30];
        v353 = v1[32];
        v137 = v1[28];
        v348 = v1[25];
        v349 = v1[31];
        v346 = v1[24];
        v347 = v1[23];
        v138 = v1[14];
        v139 = *MEMORY[0x277D24258];
        v140 = objc_allocWithZone(MEMORY[0x277D24248]);
        v141 = sub_22BD89330(v25, v27, v126, v128, 0, 0, v135, MEMORY[0x277D84F90], v139, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0);
        v142 = [v141 requestId];
        v143 = sub_22BDBABF4();
        v145 = v144;

        sub_22BDB96A4();
        sub_22BB69088((v1 + 2), (v1 + 7));
        v146 = v1[10];
        v147 = sub_22BB8D7AC((v1 + 7), v146);
        v148 = *(v146 - 8);
        v149 = swift_task_alloc();
        (*(v148 + 16))(v149, v147, v146);
        v150 = sub_22BD89A70(v143, v145, v137, *v149);
        sub_22BB32FA4(v1 + 7);
        v149, v151, v152, v153, v154, v155, v156, v157, v169, v180, v191, v202, v213, v224, v235, v246, v257, v268, v279, v290, v301, v312, v323, v334, v345;
        *(v138 + 136) = v150;
        swift_unknownObjectRelease();
        v158 = *(v138 + 128);
        [v158 setLocalSpeechRecognizerClientDelegate_];
        [v158 startSpeechRecognitionResultsWithSettings_];

        (*(v346 + 8))(v348, v347);
        (*(v349 + 8))(v353, v350);
        goto LABEL_14;
      }
    }

    v126 = 0;
    v128 = 0xE000000000000000;
    goto LABEL_19;
  }

  sub_22BB6B75C(v1[29], &unk_27D8E69E0, &qword_22BDC1660);
LABEL_11:
  sub_22BDB6354();
  v38 = sub_22BDB77C4();
  v39 = sub_22BDBB114();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = sub_22BB37F30();
    sub_22BB360F0(v40);
    sub_22BB38F24(&dword_22BB2C000, v38, v39, "No userTurnStarted event found in transcript, or turn is not speech");
    sub_22BB30AF0();
  }

  v41 = v1[35];
  v42 = v1[33];

  v11(v41, v42);
  sub_22BB69FEC(v1 + 2, v1[5]);
  sub_22BB30A2C();
  sub_22BD790CC(v43, v44, 0);
LABEL_14:
  v45 = v1[35];
  v46 = v1[36];
  v47 = v1[32];
  v49 = v1[28];
  v48 = v1[29];
  v50 = v1[25];
  v51 = v1[22];
  v52 = v1[19];
  v53 = v1[16];
  v352 = v1[15];
  sub_22BB32FA4(v1 + 2);
  v46, v54, v55, v56, v57, v58, v59, v60, v159, v170, v181, v192, v203, v214, v225, v236, v247, v258, v269, v280, v291, v302, v313, v324, v335;
  v45, v61, v62, v63, v64, v65, v66, v67, v160, v171, v182, v193, v204, v215, v226, v237, v248, v259, v270, v281, v292, v303, v314, v325, v336;
  v47, v68, v69, v70, v71, v72, v73, v74, v161, v172, v183, v194, v205, v216, v227, v238, v249, v260, v271, v282, v293, v304, v315, v326, v337;
  v48, v75, v76, v77, v78, v79, v80, v81, v162, v173, v184, v195, v206, v217, v228, v239, v250, v261, v272, v283, v294, v305, v316, v327, v338;
  v49, v82, v83, v84, v85, v86, v87, v88, v163, v174, v185, v196, v207, v218, v229, v240, v251, v262, v273, v284, v295, v306, v317, v328, v339;
  v50, v89, v90, v91, v92, v93, v94, v95, v164, v175, v186, v197, v208, v219, v230, v241, v252, v263, v274, v285, v296, v307, v318, v329, v340;
  v51, v96, v97, v98, v99, v100, v101, v102, v165, v176, v187, v198, v209, v220, v231, v242, v253, v264, v275, v286, v297, v308, v319, v330, v341;
  v52, v103, v104, v105, v106, v107, v108, v109, v166, v177, v188, v199, v210, v221, v232, v243, v254, v265, v276, v287, v298, v309, v320, v331, v342;
  v53, v110, v111, v112, v113, v114, v115, v116, v167, v178, v189, v200, v211, v222, v233, v244, v255, v266, v277, v288, v299, v310, v321, v332, v343;
  v352, v117, v118, v119, v120, v121, v122, v123, v168, v179, v190, v201, v212, v223, v234, v245, v256, v267, v278, v289, v300, v311, v322, v333, v344;
  v124 = v1[1];

  return v124();
}

void sub_22BD8A650(void *a1)
{
  sub_22BDB4EB4();
  sub_22BB30444();
  MEMORY[0x28223BE20](v2);
  sub_22BB30574();
  v5 = v4 - v3;
  sub_22BDB4E94();
  sub_22BB30444();
  MEMORY[0x28223BE20](v6);
  sub_22BB30574();
  v9 = v8 - v7;
  v52 = sub_22BDB4ED4();
  sub_22BB30444();
  MEMORY[0x28223BE20](v10);
  sub_22BB30574();
  v13 = v12 - v11;
  v49 = a1;
  v14 = [a1 recognition];
  if (!v14)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v15 = sub_22BD8AE20(v14);
  if (!v15)
  {
LABEL_61:
    __break(1u);
    return;
  }

  v16 = v15;
  v17 = sub_22BD6F19C(v15);
  if (!v17)
  {
    goto LABEL_47;
  }

  v66 = MEMORY[0x277D84F90];
  v54 = v17;
  sub_22BD28718(0, v17 & ~(v17 >> 63), 0);
  if (v54 < 0)
  {
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v18 = 0;
  v53 = v16 & 0xC000000000000001;
  v57 = v66;
  v51 = v16 & 0xFFFFFFFFFFFFFF8;
  v50 = v16 + 32;
  v59 = v13;
  v60 = v9;
  while (1)
  {
    if (__OFADD__(v18, 1))
    {
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    v56 = v18 + 1;
    if (v53)
    {
      v19 = MEMORY[0x2318A5340]();
    }

    else
    {
      if (v18 >= *(v51 + 16))
      {
        goto LABEL_56;
      }

      v19 = *(v50 + 8 * v18);
    }

    v55 = v19;
    v20 = sub_22BD8AE98(v19, &selRef_interpretations, &qword_27D8E6A50, 0x277CEF458);
    if (!v20)
    {
      goto LABEL_59;
    }

    v21 = v20;
    v58 = v20 & 0xFFFFFFFFFFFFFF8;
    if (v20 >> 62)
    {
      break;
    }

    v22 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v22)
    {
      goto LABEL_14;
    }

LABEL_44:

    sub_22BDB4E84();

    v43 = v57;
    v45 = *(v57 + 16);
    v44 = *(v57 + 24);
    if (v45 >= v44 >> 1)
    {
      sub_22BD28718(v44 > 1, v45 + 1, 1);
      v43 = v57;
    }

    *(v43 + 16) = v45 + 1;
    sub_22BB2F374();
    v57 = v46;
    (*(v48 + 32))(v46 + v47 + *(v48 + 72) * v45, v13, v52);
    v18 = v56;
    if (v56 == v54)
    {
      goto LABEL_47;
    }
  }

  v22 = sub_22BDBB4F4();
  if (!v22)
  {
    goto LABEL_44;
  }

LABEL_14:
  v65 = MEMORY[0x277D84F90];
  sub_22BD28770(0, v22 & ~(v22 >> 63), 0);
  if (v22 < 0)
  {
    goto LABEL_54;
  }

  v23 = 0;
  v61 = v22;
  while (1)
  {
    v24 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
      goto LABEL_51;
    }

    if ((v21 & 0xC000000000000001) != 0)
    {
      v25 = MEMORY[0x2318A5340]();
    }

    else
    {
      if (v23 >= *(v58 + 16))
      {
        goto LABEL_52;
      }

      v25 = *(v21 + 32 + 8 * v23);
    }

    v26 = v25;
    v27 = sub_22BD8AE98(v25, &selRef_tokens, &qword_27D8E6A38, 0x277CEF4B0);
    if (!v27)
    {
      goto LABEL_58;
    }

    v28 = v27;
    v63 = v27 & 0xFFFFFFFFFFFFFF8;
    v29 = v27 >> 62 ? sub_22BDBB4F4() : *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v29)
    {
      break;
    }

LABEL_38:
    sub_22BDB4E84();

    v40 = *(v65 + 16);
    v39 = *(v65 + 24);
    if (v40 >= v39 >> 1)
    {
      sub_22BD28770(v39 > 1, v40 + 1, 1);
    }

    *(v65 + 16) = v40 + 1;
    sub_22BB2F374();
    (*(v42 + 32))(v65 + v41 + *(v42 + 72) * v40, v9);
    v23 = v24;
    if (v24 == v61)
    {
      goto LABEL_44;
    }
  }

  v64 = MEMORY[0x277D84F90];
  sub_22BD286C0(0, v29 & ~(v29 >> 63), 0);
  if (v29 < 0)
  {
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v62 = v26;
  v30 = 0;
  while (1)
  {
    v31 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if ((v28 & 0xC000000000000001) != 0)
    {
      v32 = MEMORY[0x2318A5340](v30, v28);
    }

    else
    {
      if (v30 >= *(v63 + 16))
      {
        goto LABEL_49;
      }

      v32 = *(v28 + 8 * v30 + 32);
    }

    v33 = v32;
    sub_22BD8ADBC(v32);
    if (!v34)
    {
      goto LABEL_55;
    }

    [v33 confidenceScore];
    [v33 startTime];
    [v33 silenceStartTime];
    [v33 endTime];
    sub_22BDB4EA4();

    v36 = *(v64 + 16);
    v35 = *(v64 + 24);
    if (v36 >= v35 >> 1)
    {
      sub_22BD286C0(v35 > 1, v36 + 1, 1);
    }

    *(v64 + 16) = v36 + 1;
    sub_22BB2F374();
    (*(v38 + 32))(v64 + v37 + *(v38 + 72) * v36, v5);
    ++v30;
    if (v31 == v29)
    {

      v13 = v59;
      v9 = v60;
      v26 = v62;
      goto LABEL_38;
    }
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_47:

  sub_22BDB4E84();
}

uint64_t sub_22BD8ADBC(void *a1)
{
  v1 = [a1 text];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_22BDBABF4();

  return v3;
}

uint64_t sub_22BD8AE20(void *a1)
{
  v2 = [a1 phrases];

  if (!v2)
  {
    return 0;
  }

  sub_22BBED848(0, &unk_27D8E6A58, 0x277CEF478);
  v3 = sub_22BDBAD64();

  return v3;
}

uint64_t sub_22BD8AE98(void *a1, SEL *a2, unint64_t *a3, void *a4)
{
  v6 = [a1 *a2];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  sub_22BBED848(0, a3, a4);
  v8 = sub_22BDBAD64();

  return v8;
}

uint64_t StandardToolboxConfiguration.makeMutableToolbox<A, B>(delegate:planGenerationDelegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v34 = a2;
  v33[1] = a6;
  v33[2] = a5;
  v36 = a1;
  v9 = sub_22BDB9C14();
  v10 = sub_22BB2F0C8(v9);
  MEMORY[0x28223BE20](v10);
  sub_22BB30574();
  v11 = sub_22BBE6DE0(&qword_27D8E2E00, &qword_22BDBD450);
  v12 = sub_22BB2F0C8(v11);
  MEMORY[0x28223BE20](v12);
  v14 = v33 - v13;
  sub_22BB30418();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  sub_22BB30574();
  v20 = v19 - v18;
  sub_22BB30418();
  v22 = v21;
  MEMORY[0x28223BE20](v23);
  sub_22BB30574();
  v26 = v25 - v24;
  v27 = *v6;
  v28 = *(v22 + 16);
  v29 = v36;
  v36 = a3;
  v28(v26, v29, a3);
  (*(v16 + 16))(v20, v34, a4);
  v30 = sub_22BDB4254();
  sub_22BB336D0(v14, 1, 1, v30);
  v37 = v27;
  v31 = v35;
  sub_22BB69D0C();
  if (v31)
  {
    sub_22BD8B1B8(v14);
    (*(v16 + 8))(v20, a4);
    return (*(v22 + 8))(v26, v36);
  }

  else
  {
    sub_22BDB8534();
    return sub_22BDB8514();
  }
}

uint64_t sub_22BD8B1B8(uint64_t a1)
{
  v2 = sub_22BBE6DE0(&qword_27D8E2E00, &qword_22BDBD450);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t StandardToolboxConfiguration.makeQueryableToolbox(delegate:planGenerationDelegate:)(void *a1, void *a2)
{
  v5 = sub_22BDB9C14();
  v6 = sub_22BB2F0C8(v5);
  MEMORY[0x28223BE20](v6);
  sub_22BB30574();
  v9 = v8 - v7;
  v10 = sub_22BBE6DE0(&qword_27D8E2E00, &qword_22BDBD450);
  v11 = sub_22BB2F0C8(v10);
  MEMORY[0x28223BE20](v11);
  v13 = v32 - v12;
  v34 = *v2;
  v14 = a1[3];
  v32[2] = a1[4];
  v15 = sub_22BB69FEC(a1, v14);
  v16 = a2[3];
  v32[1] = a2[4];
  v33 = sub_22BB69FEC(a2, v16);
  sub_22BB30418();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  sub_22BB30574();
  v22 = v21 - v20;
  (*(v18 + 16))(v21 - v20, v15, v14);
  sub_22BB30418();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  sub_22BB30574();
  v28 = v27 - v26;
  (*(v24 + 16))(v27 - v26, v33, v16);
  v29 = sub_22BDB4254();
  sub_22BB336D0(v13, 1, 1, v29);
  v30 = v35;
  v36 = v34;
  v34 = v9;
  sub_22BB69D0C();
  if (v30)
  {
    sub_22BD8B1B8(v13);
    (*(v24 + 8))(v28, v16);
    return (*(v18 + 8))(v22, v14);
  }

  else
  {
    sub_22BDB8AF4();
    return sub_22BDB8AB4();
  }
}

uint64_t static StandardToolboxConfiguration.makeQueryableToolboxWithNoClientActions<A, B>(delegate:planGenerationDelegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v25[6] = MEMORY[0x277D84F90];
  v25[3] = a3;
  v25[4] = a5;
  v13 = sub_22BB8B8A0(v25, a2, a3, a4, a5, a6, a7, a8);
  (*(*(a3 - 8) + 16))(v13, a1, a3);
  v24[3] = a4;
  v24[4] = a6;
  v21 = sub_22BB8B8A0(v24, v14, v15, v16, v17, v18, v19, v20);
  (*(*(a4 - 8) + 16))(v21, a2, a4);
  v22 = StandardToolboxConfiguration.makeQueryableToolbox(delegate:planGenerationDelegate:)(v25, v24);

  sub_22BB32FA4(v24);
  sub_22BB32FA4(v25);
  return v22;
}

uint64_t static StandardToolboxConfiguration.makeMutableToolboxWithNoClientActions<A, B>(delegate:planGenerationDelegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = StandardToolboxConfiguration.makeMutableToolbox<A, B>(delegate:planGenerationDelegate:)(a1, a2, a3, a4, a5, a6);

  return v6;
}

uint64_t sub_22BD8B66C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtCC23IntelligenceFlowRuntime31TranscriptEntityQueryingService16ActiveQueryState_bookmark;
  *(v5 + OBJC_IVAR____TtCC23IntelligenceFlowRuntime31TranscriptEntityQueryingService16ActiveQueryState_bookmark) = 0;
  v24 = OBJC_IVAR____TtCC23IntelligenceFlowRuntime31TranscriptEntityQueryingService16ActiveQueryState_transaction;
  *(v5 + OBJC_IVAR____TtCC23IntelligenceFlowRuntime31TranscriptEntityQueryingService16ActiveQueryState_transaction) = 0;
  v11 = OBJC_IVAR____TtCC23IntelligenceFlowRuntime31TranscriptEntityQueryingService16ActiveQueryState_id;
  v12 = sub_22BDB43E4();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v5 + v11, a1, v12);
  v14 = OBJC_IVAR____TtCC23IntelligenceFlowRuntime31TranscriptEntityQueryingService16ActiveQueryState_query;
  v15 = sub_22BDB5EA4();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v5 + v14, a2, v15);
  *(v5 + OBJC_IVAR____TtCC23IntelligenceFlowRuntime31TranscriptEntityQueryingService16ActiveQueryState_publisher) = a3;
  *(v5 + v10) = a4;
  swift_unknownObjectRetain();
  v22 = a3;
  sub_22BDBB334();
  MEMORY[0x2318A4C40](0xD000000000000031, 0x800000022BDD48F0);
  sub_22BB32D80();
  sub_22BD8D7EC(v17, v18, MEMORY[0x277CC9628]);
  v19 = sub_22BDBB684();
  MEMORY[0x2318A4C40](v19);

  sub_22BDBAC24();

  v20 = os_transaction_create();

  swift_unknownObjectRelease();
  (*(v16 + 8))(a2, v15);
  (*(v13 + 8))(a1, v12);

  *(v5 + v24) = v20;
  swift_unknownObjectRelease();
  return v5;
}

uint64_t sub_22BD8B8C4()
{
  v1 = OBJC_IVAR____TtCC23IntelligenceFlowRuntime31TranscriptEntityQueryingService16ActiveQueryState_id;
  sub_22BDB43E4();
  sub_22BB31F70();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtCC23IntelligenceFlowRuntime31TranscriptEntityQueryingService16ActiveQueryState_query;
  sub_22BDB5EA4();
  sub_22BB31F70();
  (*(v4 + 8))(v0 + v3);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_22BD8B97C()
{
  sub_22BD8B8C4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void *sub_22BD8B9D4(uint64_t a1, uint64_t a2)
{
  swift_defaultActor_initialize();
  v2[14] = a1;
  v2[15] = a2;
  sub_22BDB43E4();
  type metadata accessor for TranscriptEntityQueryingService.ActiveQueryState(0);
  sub_22BB32D80();
  sub_22BD8D7EC(v5, v6, MEMORY[0x277CC9600]);
  v2[16] = sub_22BDBAB14();
  return v2;
}

void sub_22BD8BA68(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  sub_22BDB5EA4();
  sub_22BB30444();
  v38 = v4;
  v39 = v3;
  MEMORY[0x28223BE20](v3);
  sub_22BB30574();
  v37 = v6 - v5;
  v36 = sub_22BDB43E4();
  sub_22BB30444();
  v8 = v7;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v35 - v13;
  v15 = sub_22BBE6DE0(&qword_27D8E6A80, &unk_22BDC0E70);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  sub_22BDB43D4();
  v19 = [BiomeLibrary() Sage];
  swift_unknownObjectRelease();
  v20 = [v19 Transcript];
  swift_unknownObjectRelease();
  sub_22BDB5E94();
  v21 = sub_22BDB4354();
  sub_22BB336D0(v18, 1, 1, v21);
  v22 = objc_allocWithZone(MEMORY[0x277CF1A50]);
  sub_22BB31B88();
  v27 = sub_22BD8D64C(v23, v24, v25, v26, 0);
  v28 = [v20 publisherWithOptions_];

  v29 = *(v8 + 16);
  v30 = v35;
  v31 = v36;
  v29(v14, v35, v36);
  v29(v12, v30, v31);
  v32 = v37;
  (*(v38 + 16))(v37, a1, v39);
  type metadata accessor for TranscriptEntityQueryingService.ActiveQueryState(0);
  swift_allocObject();
  v33 = v28;
  sub_22BD8B66C(v12, v32, v33, 0);
  v34 = v40;
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v41 = *(v34 + 128);
  sub_22BD85808();
  *(v34 + 128) = v41;
  (*(v8 + 8))(v14, v31);
  swift_endAccess();
}

uint64_t sub_22BD8BDF0(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_22BDB77D4();
  sub_22BB30444();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  sub_22BB30574();
  v11 = v10 - v9;
  sub_22BB31B88();
  swift_beginAccess();
  v12 = v1[16];

  v13 = sub_22BD8135C(a1, v12);

  if (v13)
  {
    v42 = v7;
    v43 = v5;
    sub_22BB366B8();
    v14 = swift_allocObject();
    *(v14 + 16) = MEMORY[0x277D84F90];
    sub_22BB366B8();
    v45 = v4;
    v15 = swift_allocObject();
    *(v15 + 16) = 0;
    v16 = v2[15];
    v44 = v2[14];
    v17 = *(v13 + OBJC_IVAR____TtCC23IntelligenceFlowRuntime31TranscriptEntityQueryingService16ActiveQueryState_publisher);
    v18 = *(v13 + OBJC_IVAR____TtCC23IntelligenceFlowRuntime31TranscriptEntityQueryingService16ActiveQueryState_bookmark);
    v51 = sub_22BD8D630;
    v52 = v13;
    aBlock = MEMORY[0x277D85DD0];
    v48 = 1107296256;
    v49 = sub_22BD8C3E0;
    v50 = &unk_283F810D8;
    v46 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();
    v19 = v17;

    v20 = swift_allocObject();
    v20[2] = v13;
    v20[3] = v44;
    v20[4] = v16;
    v20[5] = v2;
    v20[6] = v14;
    v20[7] = v15;
    v20[8] = v45;
    v51 = sub_22BD8D638;
    v52 = v20;
    aBlock = MEMORY[0x277D85DD0];
    v48 = 1107296256;
    v49 = sub_22BD8CF70;
    v50 = &unk_283F81128;
    v21 = _Block_copy(&aBlock);

    v22 = [v19 drivableSinkWithBookmark:v18 completion:v46 shouldContinue:v21];
    _Block_release(v21);
    _Block_release(v46);

    swift_unknownObjectRelease();
    sub_22BB31B88();
    swift_beginAccess();
    v23 = *(v15 + 16);
    if (v23)
    {
      v24 = v23;
      _s23IntelligenceFlowRuntime0aB6DaemonV6logger2os6LoggerVvgZ_0();
      v25 = v23;
      v26 = sub_22BDB77C4();
      v27 = sub_22BDBB114();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        *v28 = 138412290;
        v30 = v23;
        v31 = _swift_stdlib_bridgeErrorToNSError();
        *(v28 + 4) = v31;
        *v29 = v31;
        _os_log_impl(&dword_22BB2C000, v26, v27, "Failed to read transcript: %@", v28, 0xCu);
        sub_22BB325EC(v29, &unk_27D8E6A70, &unk_22BDBCDB0);
        MEMORY[0x2318A6080](v29, -1, -1);
        MEMORY[0x2318A6080](v28, -1, -1);
      }

      (*(v42 + 8))(v11, v43);
      v32 = sub_22BDB5E74();
      sub_22BB33ED0();
      v35 = sub_22BD8D7EC(v33, v34, MEMORY[0x277D1D288]);
      sub_22BB3289C(v35);
      (*(*(v32 - 8) + 104))(v36, *MEMORY[0x277D1D270], v32);
      swift_willThrow();
    }

    else
    {

      sub_22BB31B88();
      swift_beginAccess();
      v32 = *(v14 + 16);
    }
  }

  else
  {
    v32 = sub_22BDB5E74();
    sub_22BB33ED0();
    v39 = sub_22BD8D7EC(v37, v38, MEMORY[0x277D1D288]);
    sub_22BB3289C(v39);
    (*(*(v32 - 8) + 104))(v40, *MEMORY[0x277D1D278], v32);
    swift_willThrow();
  }

  return v32;
}

uint64_t sub_22BD8C398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + OBJC_IVAR____TtCC23IntelligenceFlowRuntime31TranscriptEntityQueryingService16ActiveQueryState_bookmark) = a2;
  swift_unknownObjectRelease();

  return swift_unknownObjectRetain();
}

void sub_22BD8C3E0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v6 = a2;
  swift_unknownObjectRetain();
  v5(v6, a3);

  swift_unknownObjectRelease();
}

BOOL sub_22BD8C468(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v82 = a7;
  v77 = a6;
  v79 = a4;
  v75 = a3;
  v85 = a2;
  v8 = sub_22BDB77D4();
  v84 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v83 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22BDB4354();
  MEMORY[0x28223BE20](v10 - 8);
  v74 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_22BDB9D54();
  v70 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v67 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22BDB43E4();
  MEMORY[0x28223BE20](v13 - 8);
  v66 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22BDB58D4();
  v72 = *(v15 - 8);
  v73 = v15;
  MEMORY[0x28223BE20](v15);
  v69 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22BBE6DE0(&qword_27D8E2668, &unk_22BDBCCD0);
  MEMORY[0x28223BE20](v17 - 8);
  v76 = &v60 - v18;
  v80 = sub_22BDBA594();
  v68 = *(v80 - 8);
  v19 = MEMORY[0x28223BE20](v80);
  v64 = &v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v65 = &v60 - v21;
  v22 = sub_22BDB6054();
  MEMORY[0x28223BE20](v22 - 8);
  v23 = sub_22BDB8E84();
  v24 = *(v23 - 8);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v60 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v60 - v28;
  v81 = sub_22BDB9B54();
  v78 = *(v81 - 8);
  v30 = MEMORY[0x28223BE20](v81);
  v32 = &v60 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v34 = &v60 - v33;
  v35 = [a1 eventBody];
  if (!v35)
  {
    return 1;
  }

  v36 = v35;
  v37 = sub_22BD8D788(v35);
  if (v38 >> 60 == 15)
  {

    return 1;
  }

  v39 = v38;
  v61 = v36;
  v60 = v8;
  v88 = 0;
  v86 = 0u;
  v87 = 0u;
  v40 = v37;
  sub_22BB352C4(v37, v38);
  sub_22BDB6044();
  sub_22BD8D7EC(&qword_281428A70, MEMORY[0x277D1E148], MEMORY[0x277D1E140]);
  v62 = v40;
  v63 = v39;
  sub_22BDB6074();
  (*(v24 + 16))(v27, v29, v23);
  sub_22BDB99A4();
  (*(v24 + 8))(v29, v23);
  v42 = v78;
  v43 = v34;
  v44 = v81;
  (*(v78 + 32))(v34, v32, v81);
  v45 = v79;
  v46 = v80;
  if (v79)
  {
    v47 = sub_22BDB99F4();
    if (!v48)
    {
LABEL_13:

      sub_22BB94C90(v62, v63);
      (*(v42 + 8))(v34, v44);
      return 1;
    }

    if (v47 == v75 && v48 == v45)
    {
    }

    else
    {
      v50 = sub_22BDBB6D4();

      if ((v50 & 1) == 0)
      {
        goto LABEL_13;
      }
    }
  }

  v51 = v76;
  sub_22BD8CFC8(v76);
  if (sub_22BB3AA28(v51, 1, v46) == 1)
  {
    (*(v42 + 8))(v34, v44);

    sub_22BB94C90(v62, v63);
    sub_22BB325EC(v51, &qword_27D8E2668, &unk_22BDBCCD0);
    v52 = v77;
  }

  else
  {
    v53 = v42;
    v54 = v68;
    v55 = v65;
    (*(v68 + 32))(v65, v51, v46);
    sub_22BDB8F24();
    v56 = v67;
    sub_22BDB9B44();
    sub_22BDB9D44();
    (*(v70 + 8))(v56, v71);
    (*(v54 + 16))(v64, v55, v46);
    v57 = v69;
    sub_22BDB58C4();
    v52 = v77;
    swift_beginAccess();
    sub_22BD7DB1C();
    v58 = *(*(v52 + 16) + 16);
    sub_22BD7DB4C(v58);
    v59 = *(v52 + 16);
    *(v59 + 16) = v58 + 1;
    (*(v72 + 32))(v59 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v58, v57, v73);
    *(v52 + 16) = v59;
    swift_endAccess();

    sub_22BB94C90(v62, v63);
    (*(v54 + 8))(v55, v46);
    (*(v53 + 8))(v43, v81);
  }

  swift_beginAccess();
  return *(*(v52 + 16) + 16) < 0xFuLL;
}

uint64_t sub_22BD8CF70(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  LOBYTE(v3) = v3();

  return v3 & 1;
}

uint64_t sub_22BD8CFC8@<X0>(uint64_t a1@<X8>)
{
  sub_22BDB5404();
  sub_22BB30444();
  v38 = v2;
  v39 = v1;
  MEMORY[0x28223BE20](v1);
  sub_22BB30574();
  v5 = v4 - v3;
  sub_22BDB90B4();
  sub_22BB30444();
  v36 = v7;
  v37 = v6;
  MEMORY[0x28223BE20](v6);
  sub_22BB30574();
  v10 = v9 - v8;
  sub_22BDB4E24();
  sub_22BB30444();
  v34 = v12;
  v35 = v11;
  MEMORY[0x28223BE20](v11);
  sub_22BB30574();
  v15 = v14 - v13;
  v16 = sub_22BDB9B14();
  sub_22BB30444();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  sub_22BB30574();
  v22 = v21 - v20;
  v23 = sub_22BDB87F4();
  sub_22BB30444();
  v25 = v24;
  MEMORY[0x28223BE20](v26);
  sub_22BB30574();
  v29 = v28 - v27;
  sub_22BDB9B24();
  if ((*(v18 + 88))(v22, v16) != *MEMORY[0x277D1E798])
  {
    (*(v18 + 8))(v22, v16);
LABEL_6:
    v31 = 1;
    v30 = a1;
    goto LABEL_7;
  }

  (*(v18 + 96))(v22, v16);
  (*(v25 + 32))(v29, v22, v23);
  sub_22BDB87E4();
  sub_22BDB9094();
  (*(v36 + 8))(v10, v37);
  if ((*(v38 + 88))(v5, v39) != *MEMORY[0x277D1CBF0])
  {
    (*(v25 + 8))(v29, v23);
    (*(v38 + 8))(v5, v39);
    goto LABEL_6;
  }

  (*(v38 + 96))(v5, v39);
  (*(v34 + 32))(v15, v5, v35);
  v30 = a1;
  sub_22BDB4DF4();
  (*(v34 + 8))(v15, v35);
  (*(v25 + 8))(v29, v23);
  v31 = 0;
LABEL_7:
  v32 = sub_22BDBA594();
  return sub_22BB336D0(v30, v31, 1, v32);
}

uint64_t sub_22BD8D3C4()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_22BD8D3F4()
{
  sub_22BD8D3C4();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for TranscriptEntityQueryingService.ActiveQueryState(uint64_t a1)
{
  result = qword_2814291C8;
  if (!qword_2814291C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22BD8D498(uint64_t a1)
{
  result = sub_22BDB43E4();
  if (v2 <= 0x3F)
  {
    result = sub_22BDB5EA4();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_22BD8D57C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22BD8D5D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
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