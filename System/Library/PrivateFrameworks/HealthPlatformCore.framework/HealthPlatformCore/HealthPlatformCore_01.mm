uint64_t GenerationOperationToGeneratorAdaptor.__allocating_init(queue:pluginInfo:domain:context:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + OBJC_IVAR____TtC18HealthPlatformCore37GenerationOperationToGeneratorAdaptor_queue) = a1;
  v9 = OBJC_IVAR____TtC18HealthPlatformCore37GenerationOperationToGeneratorAdaptor_domain;
  v10 = sub_2287C9E70();
  (*(*(v10 - 8) + 32))(v8 + v9, a3, v10);
  v11 = OBJC_IVAR____TtC18HealthPlatformCore37GenerationOperationToGeneratorAdaptor_context;
  v12 = sub_2287C9ED0();
  (*(*(v12 - 8) + 32))(v8 + v11, a4, v12);
  sub_228706AD4(a2, v8 + OBJC_IVAR____TtC18HealthPlatformCore37GenerationOperationToGeneratorAdaptor_pluginInfo);
  return v8;
}

uint64_t GenerationOperationToGeneratorAdaptor.init(queue:pluginInfo:domain:context:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + OBJC_IVAR____TtC18HealthPlatformCore37GenerationOperationToGeneratorAdaptor_queue) = a1;
  v8 = OBJC_IVAR____TtC18HealthPlatformCore37GenerationOperationToGeneratorAdaptor_domain;
  v9 = sub_2287C9E70();
  (*(*(v9 - 8) + 32))(v4 + v8, a3, v9);
  v10 = OBJC_IVAR____TtC18HealthPlatformCore37GenerationOperationToGeneratorAdaptor_context;
  v11 = sub_2287C9ED0();
  (*(*(v11 - 8) + 32))(v4 + v10, a4, v11);
  sub_228706AD4(a2, v4 + OBJC_IVAR____TtC18HealthPlatformCore37GenerationOperationToGeneratorAdaptor_pluginInfo);
  return v4;
}

uint64_t GenerationOperationToGeneratorAdaptor.deinit()
{
  v1 = OBJC_IVAR____TtC18HealthPlatformCore37GenerationOperationToGeneratorAdaptor_domain;
  v2 = sub_2287C9E70();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC18HealthPlatformCore37GenerationOperationToGeneratorAdaptor_context;
  v4 = sub_2287C9ED0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC18HealthPlatformCore37GenerationOperationToGeneratorAdaptor_pluginInfo));

  return v0;
}

uint64_t GenerationOperationToGeneratorAdaptor.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC18HealthPlatformCore37GenerationOperationToGeneratorAdaptor_domain;
  v2 = sub_2287C9E70();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC18HealthPlatformCore37GenerationOperationToGeneratorAdaptor_context;
  v4 = sub_2287C9ED0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC18HealthPlatformCore37GenerationOperationToGeneratorAdaptor_pluginInfo));

  return swift_deallocClassInstance();
}

uint64_t sub_228718750()
{
  v1 = sub_2287C9ED0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  (*(v2 + 16))(v4, *v0 + OBJC_IVAR____TtC18HealthPlatformCore37GenerationOperationToGeneratorAdaptor_context, v1);
  sub_2287C9E80();
  (*(v2 + 8))(v4, v1);
  sub_2287010E4(v5 + OBJC_IVAR____TtC18HealthPlatformCore37GenerationOperationToGeneratorAdaptor_pluginInfo, &v12);
  v13 = *(v5 + OBJC_IVAR____TtC18HealthPlatformCore37GenerationOperationToGeneratorAdaptor_queue);
  v6 = v13;
  sub_228718330();
  v7 = v6;
  v8 = sub_2287CAF40();
  sub_228718384(v11);
  return v8;
}

uint64_t sub_2287188A4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC18HealthPlatformCore37GenerationOperationToGeneratorAdaptor_domain;
  swift_beginAccess();
  v5 = sub_2287C9E70();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t type metadata accessor for GenerationOperationToGeneratorAdaptor(uint64_t a1)
{
  result = qword_280DE21C0;
  if (!qword_280DE21C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_228718984(uint64_t a1)
{
  result = sub_2287C9E70();
  if (v2 <= 0x3F)
  {
    result = sub_2287C9ED0();
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

uint64_t sub_228718B24(uint64_t a1)
{
  result = sub_2287CB820();
  if (v2 <= 0x3F)
  {
    return swift_initClassMetadata2();
  }

  return result;
}

uint64_t sub_228718C1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for LegacyFeedItemContextChangePublisher.Inner(0, v9, v10, v11);
  (*(v6 + 16))(v8, a1, a2);
  sub_2287010E4(v3, &v17);
  sub_2287010E4(v3 + 40, v16);
  v13 = *(v3 + 80);
  swift_allocObject();
  v14 = sub_228718FD4(v8, &v17, v16, v13);
  v18 = v12;
  WitnessTable = swift_getWitnessTable();
  *&v17 = v14;
  sub_2287CAC80();
  return __swift_destroy_boxed_opaque_existential_0(&v17);
}

uint64_t sub_228718DEC()
{
  v1 = *v0;
  v2 = *(*v0 + 192);
  if (*(v0 + v2))
  {
    v3 = *(v0 + v2);
  }

  else
  {
    sub_2287010E4(v0 + v1[14], v7);
    v4 = swift_allocObject();
    swift_weakInit();
    v5 = swift_allocObject();
    v5[2] = v1[10];
    v5[3] = v1[11];
    v5[4] = v4;
    type metadata accessor for CommitRedirectingFeedItemContext();
    v3 = swift_allocObject();
    sub_228706AD4(v7, v3 + 16);
    *(v3 + 56) = sub_22871AAD0;
    *(v3 + 64) = v5;
    *(v0 + v2) = v3;
  }

  return v3;
}

uint64_t sub_228718F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    type metadata accessor for LegacyFeedItemContextChangePublisher.Inner(0, a3, a4, v7);
    swift_getWitnessTable();
    sub_2287CA070();
  }

  return result;
}

char *sub_228718FD4(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v5 = v4;
  v22 = a3;
  v23 = a4;
  v21 = a2;
  v19 = a1;
  v6 = *v4;
  v7 = *(v6 + 80);
  v20 = sub_2287CB820();
  v8 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v10 = &v19 - v9;
  v11 = *(v6 + 96);
  v12 = *(v7 - 8);
  v13 = *(v12 + 56);
  v13(&v5[v11], 1, 1, v7);
  v14 = *(*v5 + 104);
  sub_2287CA0F0();
  swift_allocObject();
  *&v5[v14] = sub_2287CA0E0();
  v15 = *(*v5 + 136);
  sub_2287C9AC0();
  swift_allocObject();
  *&v5[v15] = sub_2287C9AB0();
  *&v5[*(*v5 + 144)] = MEMORY[0x277D84F90];
  v16 = *(*v5 + 152);
  *&v5[v16] = sub_2287CACB0();
  v5[*(*v5 + 160)] = 0;
  v5[*(*v5 + 168)] = 0;
  v17 = &v5[*(*v5 + 176)];
  *v17 = 0;
  *(v17 + 1) = 0;
  *&v5[*(*v5 + 184)] = 0;
  *&v5[*(*v5 + 192)] = 0;
  (*(v12 + 32))(v10, v19, v7);
  v13(v10, 0, 1, v7);
  swift_beginAccess();
  (*(v8 + 40))(&v5[v11], v10, v20);
  swift_endAccess();
  sub_228706AD4(v21, &v5[*(*v5 + 112)]);
  sub_228706AD4(v22, &v5[*(*v5 + 120)]);
  *&v5[*(*v5 + 128)] = v23;
  return v5;
}

uint64_t sub_22871930C()
{
  v1 = *v0;
  v2 = sub_2287CBDD0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22871AADC(0, &qword_27D850B98, MEMORY[0x277D84C20], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - v7;
  v21 = v0;
  sub_22871AADC(0, &qword_280DE39A0, sub_22871AB40, MEMORY[0x277D84560]);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2287CCFF0;
  *(v9 + 32) = 0x6D65744964656566;
  *(v9 + 40) = 0xEF747865746E6F43;
  v10 = (v0 + *(v1 + 112));
  v11 = v10[3];
  v12 = __swift_project_boxed_opaque_existential_1(v10, v11);
  *(v9 + 72) = v11;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v9 + 48));
  (*(*(v11 - 8) + 16))(boxed_opaque_existential_0, v12, v11);
  *(v9 + 80) = 0x6E496E6967756C70;
  *(v9 + 88) = 0xEA00000000006F66;
  v14 = (v0 + *(*v0 + 120));
  v15 = v14[3];
  v16 = __swift_project_boxed_opaque_existential_1(v14, v15);
  *(v9 + 120) = v15;
  v17 = __swift_allocate_boxed_opaque_existential_0((v9 + 96));
  (*(*(v15 - 8) + 16))(v17, v16, v15);
  v18 = sub_2287CBDC0();
  (*(*(v18 - 8) + 56))(v8, 1, 1, v18);
  (*(v3 + 104))(v5, *MEMORY[0x277D84C38], v2);

  return sub_2287CBDE0();
}

void sub_228719654()
{
  v1 = *(*v0 + 80);
  v2 = sub_2287CB820();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12[-v4];
  sub_2287C9A90();
  v6 = *(*v0 + 160);
  swift_beginAccess();
  *(v0 + v6) = 1;
  v7 = v0 + *(*v0 + 176);
  v8 = *v7;
  *v7 = 0;
  *(v7 + 8) = 0;
  (*(*(v1 - 8) + 56))(v5, 1, 1, v1);
  v9 = *(*v0 + 96);
  swift_beginAccess();
  (*(v3 + 40))(v0 + v9, v5, v2);
  swift_endAccess();
  v10 = *(*v0 + 184);
  v11 = *(v0 + v10);
  *(v0 + v10) = 0;

  sub_2287C9AA0();
  if (v8)
  {
    [v8 cancel];
  }
}

uint64_t sub_228719850()
{
  sub_2287C9AC0();
  sub_22871AA88(&qword_280DE17C8, MEMORY[0x277D11D58], MEMORY[0x277D11D50]);

  sub_2287CA8F0();
}

uint64_t sub_228719920(uint64_t *a1)
{
  v2 = *(*a1 + 168);
  swift_beginAccess();
  *(a1 + v2) = 1;
  v3 = a1 + *(*a1 + 176);
  v4 = *v3;
  *v3 = 0;
  *(v3 + 1) = 0;

  v5 = *(*a1 + 184);
  v6 = *(a1 + v5);
  *(a1 + v5) = 0;

  swift_getWitnessTable();
  return sub_2287CA060();
}

uint64_t sub_228719A18(uint64_t (*a1)(char *, char *, uint64_t))
{
  v2 = v1;
  v4 = *v1;
  v5 = *(*v1 + 80);
  v6 = sub_2287CB820();
  v7 = *(v6 - 8);
  v46 = v6;
  v47 = v7;
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v43 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v43 - v14;
  sub_2287C9A90();
  v16 = *(*v1 + 160);
  swift_beginAccess();
  if (v1[v16])
  {
    return sub_2287C9AA0();
  }

  v44 = a1;
  v45 = v4;
  v17 = *v1;
  v18 = &v1[*(*v1 + 176)];
  if (*v18)
  {
LABEL_5:
    v32 = *(v17 + 152);
    swift_beginAccess();
    v33 = *&v2[v32];
    sub_2287CACC0();
    if (sub_2287CACA0())
    {
LABEL_17:
      swift_endAccess();
      swift_getWitnessTable();
      sub_2287CA060();
      return sub_2287C9AA0();
    }

    sub_2287CACC0();
    v34 = sub_2287CACA0();
    v35 = sub_2287CACC0();
    if ((v34 & 1) == 0)
    {
      v36 = v44;
      result = sub_2287CACA0();
      if ((result & 1) == 0)
      {
        if (((v33 | v36) & 0x8000000000000000) != 0)
        {
          __break(1u);
          goto LABEL_21;
        }

        v35 = v36 + v33;
        if (!__OFADD__(v33, v36))
        {
          if ((v35 & 0x8000000000000000) == 0)
          {
            goto LABEL_16;
          }

LABEL_21:
          __break(1u);
          return result;
        }
      }

      v35 = sub_2287CACC0();
    }

LABEL_16:
    *&v2[v32] = v35;
    goto LABEL_17;
  }

  sub_2287C9AA0();
  v19 = &v1[*(*v1 + 120)];
  v21 = *(v19 + 3);
  v20 = *(v19 + 4);
  v43 = __swift_project_boxed_opaque_existential_1(v19, v21);
  v22 = sub_228718DEC();
  v49[3] = type metadata accessor for CommitRedirectingFeedItemContext();
  v49[4] = sub_22871AA88(&qword_280DE2600, type metadata accessor for CommitRedirectingFeedItemContext, &unk_2287CE8F4);
  v49[0] = v22;
  v23 = (*(v20 + 40))(v49, v21, v20);
  v25 = v24;
  __swift_destroy_boxed_opaque_existential_0(v49);
  if (v23)
  {
    v49[0] = v23;
    swift_getKeyPath();
    v26 = v23;

    v27 = sub_2287C9660();

    v28 = *(*v2 + 184);
    v29 = *&v2[v28];
    *&v2[v28] = v27;

    sub_2287C9A90();
    v30 = *v18;
    *v18 = v23;
    v18[1] = v25;
    v31 = v26;

    sub_2287C9AA0();
    [*&v2[*(*v2 + 128)] addOperation_];
    sub_2287C9A90();

    v17 = *v2;
    goto LABEL_5;
  }

  v38 = *(*v2 + 96);
  swift_beginAccess();
  v39 = v46;
  v44 = *(v47 + 16);
  v44(v15, &v2[v38], v46);
  sub_2287C9A90();
  v43 = *(v5 - 8);
  (v43[7])(v13, 1, 1, v5);
  swift_beginAccess();
  (*(v47 + 40))(&v2[v38], v13, v39);
  swift_endAccess();
  sub_2287C9AA0();
  sub_2287CA0C0();
  v44(v10, v15, v39);
  v40 = v43;
  v41 = (v43[6])(v10, 1, v5);
  v42 = v47;
  if (v41 != 1)
  {
    v48 = 1;
    sub_2287CAC70();
    v42 = v40;
    v39 = v5;
  }

  (v42[1])(v10, v39);
  sub_2287CA0D0();
  return (*(v47 + 8))(v15, v46);
}

uint64_t sub_22871A004()
{
  v1 = *(*v0 + 96);
  v2 = sub_2287CB820();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_0((v0 + *(*v0 + 112)));
  __swift_destroy_boxed_opaque_existential_0((v0 + *(*v0 + 120)));

  return v0;
}

uint64_t sub_22871A184()
{
  sub_22871A004();

  return swift_deallocClassInstance();
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_22871A214(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_22871A25C(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_22871A300@<X0>(uint64_t a2@<X8>)
{
  v4 = *(*v2 + 96);
  swift_beginAccess();
  v5 = sub_2287CB820();
  return (*(*(v5 - 8) + 16))(a2, v2 + v4, v5);
}

uint64_t sub_22871A39C(uint64_t a1, uint64_t a2)
{
  v4 = *(*v2 + 96);
  swift_beginAccess();
  v5 = sub_2287CB820();
  (*(*(v5 - 8) + 40))(v2 + v4, a1, v5);
  return swift_endAccess();
}

uint64_t sub_22871A51C(uint64_t a1)
{
  v3 = *(*v1 + 144);
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_22871A5F0()
{
  v1 = *(*v0 + 152);
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_22871A640(uint64_t a1)
{
  v3 = *(*v1 + 152);
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_22871A708()
{
  v1 = *(*v0 + 168);
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_22871A758(char a1)
{
  v3 = *(*v1 + 168);
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_22871A820()
{
  v1 = *(*v0 + 160);
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_22871A870(char a1)
{
  v3 = *(*v1 + 160);
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_22871AA1C(id *a1)
{
  v1 = *a1;
  result = [*a1 isFinished];
  if (result)
  {
    result = [v1 isCancelled];
    if ((result & 1) == 0)
    {

      return sub_228719850();
    }
  }

  return result;
}

uint64_t sub_22871AA88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_22871AADC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_22871AB40()
{
  if (!qword_280DE3A18)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280DE3A18);
    }
  }
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void sub_22871AC10(uint64_t a1)
{
  v28 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_2287CB920();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v34 = MEMORY[0x277D84F90];
    sub_2287132AC(0, v2 & ~(v2 >> 63), 0);
    v29 = v34;
    if (v28)
    {
      v3 = sub_2287CB8C0();
    }

    else
    {
      v3 = sub_2287CB890();
      v4 = *(a1 + 36);
    }

    v31 = v3;
    v32 = v4;
    v33 = v28 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v27 = v2;
      while (v5 < v2)
      {
        if (__OFADD__(v5++, 1))
        {
          goto LABEL_35;
        }

        v8 = v31;
        v9 = v32;
        v10 = v33;
        sub_2287BFFF0(v31, v32, v33, a1);
        v12 = v11;
        v13 = [v11 code];

        v14 = v29;
        v34 = v29;
        v16 = *(v29 + 16);
        v15 = *(v29 + 24);
        if (v16 >= v15 >> 1)
        {
          sub_2287132AC((v15 > 1), v16 + 1, 1);
          v14 = v34;
        }

        *(v14 + 16) = v16 + 1;
        *(v14 + 8 * v16 + 32) = v13;
        v29 = v14;
        if (v28)
        {
          if (!v10)
          {
            goto LABEL_40;
          }

          if (sub_2287CB8E0())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v27;
          sub_22871BAE4(0);
          v6 = sub_2287CB4A0();
          sub_2287CB980();
          v6(v30, 0);
          if (v5 == v27)
          {
LABEL_32:
            sub_228717DF8(v31, v32, v33);
            return;
          }
        }

        else
        {
          if (v10)
          {
            goto LABEL_41;
          }

          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v17 = 1 << *(a1 + 32);
          if (v8 >= v17)
          {
            goto LABEL_36;
          }

          v18 = v8 >> 6;
          v19 = *(a1 + 56 + 8 * (v8 >> 6));
          if (((v19 >> v8) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(a1 + 36) != v9)
          {
            goto LABEL_38;
          }

          v20 = v19 & (-2 << (v8 & 0x3F));
          if (v20)
          {
            v17 = __clz(__rbit64(v20)) | v8 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v21 = v18 << 6;
            v22 = v18 + 1;
            v23 = (a1 + 64 + 8 * v18);
            while (v22 < (v17 + 63) >> 6)
            {
              v25 = *v23++;
              v24 = v25;
              v21 += 64;
              ++v22;
              if (v25)
              {
                sub_228717DF8(v8, v9, 0);
                v17 = __clz(__rbit64(v24)) + v21;
                goto LABEL_31;
              }
            }

            sub_228717DF8(v8, v9, 0);
          }

LABEL_31:
          v26 = *(a1 + 36);
          v31 = v17;
          v32 = v26;
          v33 = 0;
          v2 = v27;
          if (v5 == v27)
          {
            goto LABEL_32;
          }
        }
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
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

void sub_22871AF54()
{
  v0 = sub_2287CB210();
  v1 = [objc_opt_self() featureWithName:v0 featureType:1];

  qword_280DE63E0 = v1;
}

void sub_22871AFC8()
{
  if (qword_280DE3820 != -1)
  {
    swift_once();
  }

  v0 = qword_280DE63E0;
  sub_228795C5C(684);
  v2 = v1;

  qword_280DE63E8 = v2;
}

uint64_t sub_22871B03C()
{
  v0 = sub_2287C9FA0();
  sub_22871AC10(v0);
  v2 = v1;

  v15 = v2;

  sub_22871B220(&v15);

  v3 = *(v15 + 2);
  if (v3)
  {
    v15 = MEMORY[0x277D84F90];
    sub_2287042D4(0, v3, 0);
    v4 = 32;
    v5 = v15;
    do
    {
      v6 = sub_2287CBCC0();
      v15 = v5;
      v9 = *(v5 + 2);
      v8 = *(v5 + 3);
      if (v9 >= v8 >> 1)
      {
        v11 = v6;
        v12 = v7;
        sub_2287042D4((v8 > 1), v9 + 1, 1);
        v7 = v12;
        v6 = v11;
        v5 = v15;
      }

      *(v5 + 2) = v9 + 1;
      v10 = &v5[16 * v9];
      *(v10 + 4) = v6;
      *(v10 + 5) = v7;
      v4 += 8;
      --v3;
    }

    while (v3);
  }

  else
  {

    v5 = MEMORY[0x277D84F90];
  }

  v15 = v5;
  sub_22871B354();
  sub_22871BBC4(&qword_280DE39F8, sub_22871B354, MEMORY[0x277D83958]);
  v13 = sub_2287CB1D0();

  return v13;
}

uint64_t sub_22871B220(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_22878A350(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_2287CBCB0();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_2287CB400();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_22871B3A4(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

void sub_22871B354()
{
  if (!qword_280DE3A00)
  {
    v0 = sub_2287CB450();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE3A00);
    }
  }
}

uint64_t sub_22871B3A4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_22878A1B0(v8);
      v8 = result;
    }

    v75 = (v8 + 16);
    v76 = *(v8 + 16);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = (v8 + 16 * v76);
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_22871B8F0((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_228722F14(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v29 = *(v8 + 24);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_228722F14((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v30;
    v31 = v8 + 32;
    v32 = (v8 + 32 + 16 * v5);
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 32);
          v34 = *(v8 + 40);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = (v8 + 16 * v30);
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = (v31 + 16 * v5);
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = (v8 + 16 * v30);
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = (v31 + 16 * v5);
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
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
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v70 = (v31 + 16 * (v5 - 1));
        v71 = *v70;
        v72 = (v31 + 16 * v5);
        v73 = v72[1];
        sub_22871B8F0((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = *(v8 + 16);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove((v31 + 16 * v5), v72 + 2, 16 * (v74 - 1 - v5));
        *(v8 + 16) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = v31 + 16 * v30;
      v38 = *(v37 - 64);
      v39 = *(v37 - 56);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 48);
      v41 = *(v37 - 40);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = (v8 + 16 * v30);
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = (v31 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_22871B8F0(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (v21 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

void sub_22871BAE4(uint64_t a1)
{
  if (!qword_27D850BA0)
  {
    sub_22871BB78();
    sub_22871BBC4(&qword_280DE3630, sub_22871BB78, MEMORY[0x277D85378]);
    v1 = sub_2287CB4B0();
    if (!v2)
    {
      atomic_store(v1, &qword_27D850BA0);
    }
  }
}

unint64_t sub_22871BB78()
{
  result = qword_280DE3638;
  if (!qword_280DE3638)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280DE3638);
  }

  return result;
}

uint64_t sub_22871BBC4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t *ProfileDashboardFeedPopulationManager.__allocating_init(healthExperienceStore:healthStore:engineNameOverride:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v9 = OBJC_IVAR____TtC18HealthPlatformCore37ProfileDashboardFeedPopulationManager____lazy_storage___pertinentChangeDomain;
  v10 = sub_2287CA1F0();
  (*(*(v10 - 8) + 56))(v8 + v9, 1, 1, v10);
  sub_2287010E4(a1, v15);
  type metadata accessor for ProfileDashboardRelevanceEngineCoordinator();
  swift_allocObject();
  v11 = a2;
  v12 = sub_2287542EC(v15, v11, a3, a4);

  sub_2287010E4(a1, v15);
  v13 = sub_22871DC94(v15, v11, v12, v8);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v13;
}

uint64_t *ProfileDashboardFeedPopulationManager.init(healthExperienceStore:healthStore:engineNameOverride:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtC18HealthPlatformCore37ProfileDashboardFeedPopulationManager____lazy_storage___pertinentChangeDomain;
  v11 = sub_2287CA1F0();
  (*(*(v11 - 8) + 56))(v5 + v10, 1, 1, v11);
  sub_2287010E4(a1, v16);
  type metadata accessor for ProfileDashboardRelevanceEngineCoordinator();
  swift_allocObject();
  v12 = a2;
  v13 = sub_2287542EC(v16, v12, a3, a4);

  sub_2287010E4(a1, v16);
  v14 = sub_22871DC94(v16, v12, v13, v5);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v14;
}

uint64_t sub_22871BE38@<X0>(uint64_t a1@<X8>)
{
  sub_22871EAA0(0, &qword_280DE17B8, MEMORY[0x277D12000], MEMORY[0x277D83D88]);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC18HealthPlatformCore37ProfileDashboardFeedPopulationManager____lazy_storage___pertinentChangeDomain;
  swift_beginAccess();
  sub_22871E978(v1 + v9, v8);
  v10 = sub_2287CA1F0();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_22871F058(v8, &qword_280DE17B8, MEMORY[0x277D12000]);
  sub_22871C048(v1);
  (*(v11 + 16))(v6, a1, v10);
  (*(v11 + 56))(v6, 0, 1, v10);
  swift_beginAccess();
  sub_22871EA0C(v6, v1 + v9);
  return swift_endAccess();
}

uint64_t sub_22871C048(uint64_t a1)
{
  v1 = (*(*a1 + 232))(a1);
  v2 = *(v1 + 16);
  if (!v2)
  {
LABEL_18:

    sub_22871EF80(0, &qword_280DE3850, MEMORY[0x277D11E90], MEMORY[0x277D84560]);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_2287CCFE0;
    *(v16 + 32) = sub_2287CB590();

    return sub_2287CA160();
  }

  v3 = v1 + 32;
  v4 = MEMORY[0x277D84F90];
  while (1)
  {
    ++v3;
    result = sub_2287CA5B0();
    v6 = *(result + 16);
    v7 = v4[2];
    v8 = v7 + v6;
    if (__OFADD__(v7, v6))
    {
      break;
    }

    v9 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v8 <= v4[3] >> 1)
    {
      if (*(v9 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v7 <= v8)
      {
        v11 = v7 + v6;
      }

      else
      {
        v11 = v7;
      }

      v4 = sub_22872300C(isUniquelyReferenced_nonNull_native, v11, 1, v4);
      if (*(v9 + 16))
      {
LABEL_14:
        v12 = (v4[3] >> 1) - v4[2];
        result = sub_2287C9B20();
        if (v12 < v6)
        {
          goto LABEL_23;
        }

        swift_arrayInitWithCopy();

        if (v6)
        {
          v13 = v4[2];
          v14 = __OFADD__(v13, v6);
          v15 = v13 + v6;
          if (v14)
          {
            goto LABEL_24;
          }

          v4[2] = v15;
        }

        goto LABEL_4;
      }
    }

    if (v6)
    {
      goto LABEL_22;
    }

LABEL_4:
    if (!--v2)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_22871C268()
{
  v0 = sub_2287CA1F0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_2287CA1D0())
  {
    v4 = 0;
  }

  else
  {
    sub_22871BE38(v3);
    v4 = sub_2287CA1E0();
    (*(v1 + 8))(v3, v0);
  }

  return v4 & 1;
}

uint64_t sub_22871C364(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v8 = v4[11];
  v9 = v4[12];
  __swift_project_boxed_opaque_existential_1(v4 + 8, v8);
  v10 = RelevanceEngineCoordinator.sortedElements(for:)(5, v8, v9);
  v11 = [a2 profileIdentifier];
  sub_22871C440(a1, v10, v11);

  return a4(v12);
}

uint64_t sub_22871C440(uint64_t a1, unint64_t a2, void *a3)
{
  v4 = v3;
  v216 = a1;
  v7 = sub_2287C9810();
  v217 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v192 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2287CAA50();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v200 = v192 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v197 = v192 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v196 = v192 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v206 = v192 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v214 = v192 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = v192 - v22;
  sub_2287CA9E0();
  swift_bridgeObjectRetain_n();
  v24 = a3;
  v25 = a2;
  v26 = sub_2287CAA40();
  LODWORD(a2) = sub_2287CB610();
  v208 = v24;

  LODWORD(v209) = a2;
  v27 = os_log_type_enabled(v26, a2);
  v28 = v25 >> 62;
  v199 = v4;
  v211 = v25;
  v212 = v9;
  v213 = v7;
  v210 = v10;
  v215 = v25 >> 62;
  v218 = v11;
  if (!v27)
  {

    swift_bridgeObjectRelease_n();
    v209 = v11[1];
    v209(v23, v10);
    v42 = v216;
    v31 = v4;
    v35 = v208;
    goto LABEL_6;
  }

  v205 = v23;
  v207 = v26;
  v29 = v9;
  v30 = v7;
  v7 = swift_slowAlloc();
  v31 = swift_slowAlloc();
  v219 = v31;
  *v7 = 136315650;
  v32 = sub_2287CBE60();
  v34 = sub_2287031D8(v32, v33, &v219);

  *(v7 + 4) = v34;
  *(v7 + 12) = 2080;
  v35 = v208;
  v36 = [v208 0x1FB55D678];
  sub_2287C97F0();

  sub_22871EC30(&qword_280DE3468, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v37 = sub_2287CBCC0();
  v39 = v38;
  (*(v217 + 8))(v29, v30);
  v40 = sub_2287031D8(v37, v39, &v219);

  *(v7 + 14) = v40;
  *(v7 + 22) = 2050;
  if (!v28)
  {
    v41 = *((v211 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_4;
  }

LABEL_86:
  v41 = sub_2287CB920();
LABEL_4:
  v42 = v216;
  v43 = v207;
  v44 = v205;
  v45 = v209;

  *(v7 + 24) = v41;

  _os_log_impl(&dword_2286FF000, v43, v45, "[%s]_%s: %{public}ld REElements retrieved from RelevanceEngine for profile dashboard", v7, 0x20u);
  swift_arrayDestroy();
  MEMORY[0x22AABFD90](v31, -1, -1);
  MEMORY[0x22AABFD90](v7, -1, -1);

  v209 = v218[1];
  v209(v44, v210);
  v31 = v199;
  v9 = v212;
  v7 = v213;
LABEL_6:
  v201 = static FeedPopulationManaging.fetchAndValidateFeedToPopulate(kind:managedObjectContext:associatedProfileIdentifier:)(5, v42, v35, v31);
  sub_22871EF80(0, &qword_280DE3850, MEMORY[0x277D11E90], MEMORY[0x277D84560]);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_2287CCFE0;
  *(v46 + 32) = v35;
  v47 = v35;
  v48 = NSManagedObjectContext.getEligibleFeedItems(for:sourceProfiles:)(5, v46);

  v49 = v214;
  sub_2287CA9E0();
  swift_bridgeObjectRetain_n();
  v50 = v47;
  v35 = sub_2287CAA40();
  v51 = sub_2287CB610();

  v52 = os_log_type_enabled(v35, v51);
  v53 = v48 >> 62;
  v216 = v48;
  v208 = (v48 >> 62);
  if (v52)
  {
    v54 = swift_slowAlloc();
    v55 = v9;
    v56 = v7;
    v57 = swift_slowAlloc();
    v219 = v57;
    *v54 = 136315906;
    v58 = sub_2287CBE60();
    v60 = sub_2287031D8(v58, v59, &v219);

    *(v54 + 4) = v60;
    *(v54 + 12) = 2080;
    v61 = [v50 identifier];
    sub_2287C97F0();

    sub_22871EC30(&qword_280DE3468, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v62 = sub_2287CBCC0();
    v64 = v63;
    (*(v217 + 8))(v55, v56);
    v65 = sub_2287031D8(v62, v64, &v219);

    *(v54 + 14) = v65;
    *(v54 + 22) = 2082;
    v66 = _s14HealthPlatform4FeedC4KindO0aB4CoreE13reSectionNameSSvg_0();
    v68 = sub_2287031D8(v66, v67, &v219);

    *(v54 + 24) = v68;
    *(v54 + 32) = 2050;
    if (v53)
    {
      v69 = sub_2287CB920();
    }

    else
    {
      v69 = *((v216 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v54 + 34) = v69;

    _os_log_impl(&dword_2286FF000, v35, v51, "[%s]_%s: Picking elements for a new %{public}s feed from %{public}ld Core Data elements", v54, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x22AABFD90](v57, -1, -1);
    MEMORY[0x22AABFD90](v54, -1, -1);

    v209(v214, v210);
    v31 = v199;
    v9 = v212;
    v7 = v213;
  }

  else
  {

    swift_bridgeObjectRelease_n();
    v209(v49, v210);
  }

  if (!v215)
  {
    v70 = *((v211 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_13;
  }

  while (1)
  {
    v70 = sub_2287CB920();
LABEL_13:
    v71 = MEMORY[0x277D84F90];
    if (v70)
    {
      v219 = MEMORY[0x277D84F90];
      sub_2287042D4(0, v70 & ~(v70 >> 63), 0);
      if (v70 < 0)
      {
        __break(1u);
LABEL_85:
        __break(1u);
        goto LABEL_86;
      }

      v72 = 0;
      v71 = v219;
      v73 = v211;
      v74 = v211 & 0xC000000000000001;
      do
      {
        if (v74)
        {
          v75 = MEMORY[0x22AABF120](v72);
        }

        else
        {
          v75 = *(v73 + 8 * v72 + 32);
        }

        v76 = v75;
        v77 = [v75 identifier];
        v78 = sub_2287CB220();
        v80 = v79;

        v219 = v71;
        v82 = *(v71 + 16);
        v81 = *(v71 + 24);
        if (v82 >= v81 >> 1)
        {
          sub_2287042D4((v81 > 1), v82 + 1, 1);
          v71 = v219;
        }

        ++v72;
        *(v71 + 16) = v82 + 1;
        v83 = v71 + 16 * v82;
        *(v83 + 32) = v78;
        *(v83 + 40) = v80;
        v73 = v211;
        v9 = v212;
        v7 = v213;
      }

      while (v70 != v72);
      v31 = v199;
    }

    v84 = v206;
    sub_2287CA9E0();
    v35 = v50;

    v85 = sub_2287CAA40();
    v86 = sub_2287CB610();

    v87 = os_log_type_enabled(v85, v86);
    v207 = v35;
    if (!v87)
    {
      break;
    }

    v88 = swift_slowAlloc();
    LODWORD(v214) = v86;
    v89 = v35;
    v35 = v88;
    v50 = v9;
    v9 = v7;
    v7 = swift_slowAlloc();
    v219 = v7;
    *v35 = 136315906;
    v90 = sub_2287CBE60();
    v92 = sub_2287031D8(v90, v91, &v219);

    *(v35 + 4) = v92;
    v31 = 2080;
    *(v35 + 12) = 2080;
    v93 = [v89 identifier];
    sub_2287C97F0();

    sub_22871EC30(&qword_280DE3468, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v94 = sub_2287CBCC0();
    v96 = v95;
    v97 = v217;
    (*(v217 + 8))(v50, v9);
    v98 = sub_2287031D8(v94, v96, &v219);

    *(v35 + 14) = v98;
    *(v35 + 22) = 2082;
    v99 = _s14HealthPlatform4FeedC4KindO0aB4CoreE13reSectionNameSSvg_0();
    v101 = sub_2287031D8(v99, v100, &v219);

    *(v35 + 24) = v101;
    *(v35 + 32) = 2080;
    v102 = MEMORY[0x22AABEA80](v71, MEMORY[0x277D837D0]);
    v104 = v103;

    v105 = sub_2287031D8(v102, v104, &v219);

    *(v35 + 34) = v105;
    _os_log_impl(&dword_2286FF000, v85, v214, "[%s]_%s: Picking feed of kind %{public}s from these ranked identifiers (the rest were dropped): %s", v35, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x22AABFD90](v7, -1, -1);
    MEMORY[0x22AABFD90](v35, -1, -1);

    v106 = v218;
    v209(v206, v210);
    v108 = v211;
    if (!v215)
    {
      goto LABEL_28;
    }

LABEL_25:
    v109 = sub_2287CB920();
    v110 = &qword_2287CD000;
    if (!v109)
    {
      goto LABEL_69;
    }

LABEL_29:
    v111 = 0;
    v205 = v211 & 0xFFFFFFFFFFFFFF8;
    v206 = (v211 & 0xC000000000000001);
    v204 = v211 + 32;
    v112 = v216 & 0xFFFFFFFFFFFFFF8;
    v217 = v216 & 0xFFFFFFFFFFFFFF8;
    if (v216 < 0)
    {
      v112 = v216;
    }

    v192[1] = v112;
    v215 = v216 & 0xC000000000000001;
    v202 = v106 + 1;
    v198 = (v97 + 8);
    *&v107 = v110[40];
    v195 = v107;
    *&v107 = 136315906;
    v193 = v107;
    v203 = v109;
    while (1)
    {
      if (v206)
      {
        v115 = MEMORY[0x22AABF120](v111, v211);
      }

      else
      {
        if (v111 >= *(v205 + 16))
        {
          goto LABEL_80;
        }

        v115 = *(v204 + 8 * v111);
      }

      v218 = v115;
      if (__OFADD__(v111, 1))
      {
        break;
      }

      v214 = v111 + 1;
      if (v208)
      {
        v116 = sub_2287CB920();
        if (v116)
        {
LABEL_41:
          v35 = 0;
          while (1)
          {
            if (v215)
            {
              v117 = MEMORY[0x22AABF120](v35, v216);
            }

            else
            {
              if (v35 >= *(v217 + 16))
              {
                goto LABEL_78;
              }

              v117 = *(v216 + 8 * v35 + 32);
            }

            v118 = v117;
            v50 = v35 + 1;
            if (__OFADD__(v35, 1))
            {
              break;
            }

            v119 = [v117 uniqueIdentifier];
            v120 = sub_2287CB220();
            v7 = v121;

            v9 = [v218 identifier];
            v122 = sub_2287CB220();
            v124 = v123;

            if (v120 == v122 && v7 == v124)
            {

LABEL_55:
              [v118 setSortOrder_];
              v126 = sub_2287CA600();
              v50 = v197;
              v7 = v196;
              v127 = v207;
              if (((1 << v126) & 0x17) != 0)
              {
                v128 = sub_22878883C();
                if (!v128)
                {
                  sub_2287CA9E0();
                  v31 = v127;
                  v35 = v118;
                  v129 = sub_2287CAA40();
                  v130 = sub_2287CB610();

                  if (os_log_type_enabled(v129, v130))
                  {
                    v7 = swift_slowAlloc();
                    v131 = swift_slowAlloc();
                    v219 = v131;
                    *v7 = v195;
                    v132 = sub_2287CBE60();
                    v134 = sub_2287031D8(v132, v133, &v219);

                    *(v7 + 4) = v134;
                    *(v7 + 12) = 2080;
                    v135 = [v31 identifier];
                    v136 = v212;
                    sub_2287C97F0();

                    sub_22871EC30(&qword_280DE3468, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
                    v137 = v213;
                    v138 = sub_2287CBCC0();
                    v140 = v139;
                    (*v198)(v136, v137);
                    v141 = sub_2287031D8(v138, v140, &v219);

                    *(v7 + 14) = v141;
                    *(v7 + 22) = 2080;
                    v142 = [v35 uniqueIdentifier];
                    v31 = sub_2287CB220();
                    v9 = v143;

                    v144 = sub_2287031D8(v31, v9, &v219);

                    *(v7 + 24) = v144;
                    _os_log_impl(&dword_2286FF000, v129, v130, "[%s]_%s: Section not found for feedItem %s", v7, 0x20u);
                    swift_arrayDestroy();
                    MEMORY[0x22AABFD90](v131, -1, -1);
                    MEMORY[0x22AABFD90](v7, -1, -1);
                  }

                  v209(v50, v210);
                  v114 = v214;
                  [v35 setFeedSection_];
                  sub_2287CA800();
                  [v35 setSectionSortOrder_];

LABEL_64:
                  goto LABEL_34;
                }
              }

              else
              {
                v145 = sub_2287CA600();
                v128 = sub_22878AD68(v145);
              }

              v146 = v128;
              sub_2287CA9E0();
              v147 = v127;
              v35 = v146;
              v148 = v118;
              v149 = sub_2287CAA40();
              v31 = sub_2287CB610();

              if (os_log_type_enabled(v149, v31))
              {
                v150 = swift_slowAlloc();
                v194 = swift_slowAlloc();
                v219 = v194;
                *v150 = v193;
                v151 = sub_2287CBE60();
                v153 = sub_2287031D8(v151, v152, &v219);

                *(v150 + 4) = v153;
                *(v150 + 12) = 2080;
                v154 = [v147 identifier];
                v155 = v212;
                sub_2287C97F0();

                sub_22871EC30(&qword_280DE3468, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
                v156 = v213;
                v157 = sub_2287CBCC0();
                v159 = v158;
                (*v198)(v155, v156);
                v160 = sub_2287031D8(v157, v159, &v219);

                *(v150 + 14) = v160;
                v50 = 2080;
                *(v150 + 22) = 2080;
                v161 = [v35 identifier];
                v162 = sub_2287CB220();
                v164 = v163;

                v165 = sub_2287031D8(v162, v164, &v219);

                *(v150 + 24) = v165;
                *(v150 + 32) = 2080;
                v166 = [v148 uniqueIdentifier];
                v9 = sub_2287CB220();
                v168 = v167;

                v169 = sub_2287031D8(v9, v168, &v219);

                *(v150 + 34) = v169;
                _os_log_impl(&dword_2286FF000, v149, v31, "[%s]_%s: Section %s found for feedItem %s", v150, 0x2Au);
                v170 = v194;
                swift_arrayDestroy();
                MEMORY[0x22AABFD90](v170, -1, -1);
                MEMORY[0x22AABFD90](v150, -1, -1);
              }

              v209(v7, v210);
              v114 = v214;
              [v35 addFeedItemsObject_];

              goto LABEL_64;
            }

            v31 = sub_2287CBD00();

            if (v31)
            {
              goto LABEL_55;
            }

            ++v35;
            if (v50 == v116)
            {
              goto LABEL_67;
            }
          }

          __break(1u);
LABEL_78:
          __break(1u);
          break;
        }
      }

      else
      {
        v116 = *(v217 + 16);
        if (v116)
        {
          goto LABEL_41;
        }
      }

LABEL_67:
      v171 = v200;
      sub_2287CA9E0();
      v172 = v207;
      v173 = v218;
      v174 = sub_2287CAA40();
      v7 = sub_2287CB610();

      if (os_log_type_enabled(v174, v7))
      {
        v35 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v175 = swift_slowAlloc();
        v219 = v175;
        *v35 = v195;
        v176 = sub_2287CBE60();
        v178 = sub_2287031D8(v176, v177, &v219);

        *(v35 + 4) = v178;
        *(v35 + 12) = 2080;
        v179 = [v172 identifier];
        v50 = v212;
        sub_2287C97F0();

        sub_22871EC30(&qword_280DE3468, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v180 = v213;
        v181 = sub_2287CBCC0();
        v9 = v182;
        (*v198)(v50, v180);
        v183 = sub_2287031D8(v181, v9, &v219);

        *(v35 + 14) = v183;
        *(v35 + 22) = 2112;
        *(v35 + 24) = v173;
        *v31 = v173;
        v184 = v173;
        _os_log_impl(&dword_2286FF000, v174, v7, "[%s]_%s: Item %@ was returned by the RelevanceEngine but is now deleted", v35, 0x20u);
        sub_2287038A4(v31);
        MEMORY[0x22AABFD90](v31, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x22AABFD90](v175, -1, -1);
        MEMORY[0x22AABFD90](v35, -1, -1);

        v113 = v200;
      }

      else
      {

        v113 = v171;
      }

      v209(v113, v210);
      v114 = v214;
LABEL_34:
      v111 = v114;
      if (v114 == v203)
      {
        goto LABEL_69;
      }
    }

    __break(1u);
LABEL_80:
    __break(1u);
  }

  v106 = v218;
  v209(v84, v210);
  v108 = v211;
  v97 = v217;
  if (v215)
  {
    goto LABEL_25;
  }

LABEL_28:
  v109 = *((v108 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v110 = &qword_2287CD000;
  if (v109)
  {
    goto LABEL_29;
  }

LABEL_69:

  v185 = [v201 sections];
  sub_2287C9B40();
  v186 = sub_2287CB580();

  if (v186 >> 62)
  {
    v187 = sub_2287CB920();
    if (v187)
    {
LABEL_71:
      if (v187 < 1)
      {
        goto LABEL_85;
      }

      for (i = 0; i != v187; ++i)
      {
        if ((v186 & 0xC000000000000001) != 0)
        {
          v189 = MEMORY[0x22AABF120](i, v186);
        }

        else
        {
          v189 = *(v186 + 8 * i + 32);
        }

        v190 = v189;
        sub_22878441C();
      }
    }
  }

  else
  {
    v187 = *((v186 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v187)
    {
      goto LABEL_71;
    }
  }
}

uint64_t ProfileDashboardFeedPopulationManager.deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  __swift_destroy_boxed_opaque_existential_0((v0 + 64));

  sub_22871F058(v0 + OBJC_IVAR____TtC18HealthPlatformCore37ProfileDashboardFeedPopulationManager____lazy_storage___pertinentChangeDomain, &qword_280DE17B8, MEMORY[0x277D12000]);
  return v0;
}

uint64_t ProfileDashboardFeedPopulationManager.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  __swift_destroy_boxed_opaque_existential_0((v0 + 64));

  sub_22871F058(v0 + OBJC_IVAR____TtC18HealthPlatformCore37ProfileDashboardFeedPopulationManager____lazy_storage___pertinentChangeDomain, &qword_280DE17B8, MEMORY[0x277D12000]);

  return swift_deallocClassInstance();
}

uint64_t *sub_22871DC94(void *a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v80 = a1;
  v65 = *a4;
  v8 = sub_2287CAA50();
  v78 = *(v8 - 8);
  v79 = v8;
  MEMORY[0x28223BE20](v8);
  v66 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = MEMORY[0x277D85248];
  sub_22871EAA0(0, &qword_280DE3628, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v67 = &v61 - v11;
  sub_22871EB04(0);
  v71 = v12;
  v72 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v68 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22871ECE0(0);
  v74 = v14;
  v75 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v69 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22871ED74(0);
  v17 = *(v16 - 8);
  v76 = v16;
  v77 = v17;
  MEMORY[0x28223BE20](v16);
  v73 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_2287CB6B0();
  v63 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v20 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_2287CB670();
  MEMORY[0x28223BE20](v21);
  v22 = sub_2287CB0E0();
  MEMORY[0x28223BE20](v22 - 8);
  v83[3] = type metadata accessor for ProfileDashboardRelevanceEngineCoordinator();
  v83[4] = &off_283BC19D0;
  v83[0] = a3;
  sub_22871EBD0();
  v61 = v23;
  swift_allocObject();
  a4[14] = sub_2287CAD00();
  a4[15] = 0;
  sub_2287010E4(a1, (a4 + 2));
  a4[7] = a2;
  sub_228703004(0, &qword_280DE39D0, 0x277D85C78);
  v24 = a2;
  v62 = v24;
  *&v82[0] = sub_2287CBE60();
  *(&v82[0] + 1) = v25;
  MEMORY[0x22AABE980](0x656C69666F72705FLL, 0xE90000000000002DLL);
  v26 = [v24 profileIdentifier];
  v27 = [v26 description];
  v28 = sub_2287CB220();
  v30 = v29;

  MEMORY[0x22AABE980](v28, v30);

  sub_2287CB0A0();
  *&v82[0] = MEMORY[0x277D84F90];
  sub_22871EC30(&qword_280DE39D8, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  sub_22871EAA0(0, &qword_280DE39F0, MEMORY[0x277D85230], MEMORY[0x277D83940]);
  sub_22871EFD0();
  sub_2287CB880();
  (*(v63 + 104))(v20, *MEMORY[0x277D85260], v64);
  v31 = sub_2287CB6D0();
  a4[13] = v31;
  sub_2287010E4(v83, (a4 + 8));
  *&v82[0] = a4[14];
  *&v81[0] = v31;
  v32 = sub_2287CB680();
  v33 = v67;
  (*(*(v32 - 8) + 56))(v67, 1, 1, v32);
  sub_22871EC30(&qword_280DE0120, sub_22871EBD0, MEMORY[0x277CBCE20]);
  sub_22871EC78();
  v34 = v31;

  v35 = v68;
  sub_2287CAFF0();
  sub_22871F058(v33, &qword_280DE3628, v70);

  v36 = swift_allocObject();
  v37 = v62;
  v38 = v65;
  *(v36 + 16) = v62;
  *(v36 + 24) = v38;
  sub_22871EC30(&qword_280DE02C8, sub_22871EB04, MEMORY[0x277CBCD60]);
  v39 = v37;
  v40 = v69;
  v41 = v71;
  sub_2287CAF10();

  (*(v72 + 8))(v35, v41);
  v42 = swift_allocObject();
  swift_weakInit();
  sub_2287010E4(v80, v82);
  sub_2287010E4(v83, v81);
  v43 = swift_allocObject();
  sub_228706AD4(v82, (v43 + 2));
  sub_228706AD4(v81, (v43 + 7));
  v43[12] = v42;
  v43[13] = v39;
  v43[14] = v38;
  sub_22871EE60(0);
  sub_22871EC30(&qword_280DE06A0, sub_22871ECE0, MEMORY[0x277D10DB8]);
  sub_22871EC30(&qword_280DE0690, sub_22871EE60, MEMORY[0x277D10DC8]);
  v44 = v39;
  v45 = v73;
  v46 = v74;
  sub_2287CB070();

  (*(v75 + 8))(v40, v46);
  v47 = swift_allocObject();
  *(v47 + 16) = v44;
  *(v47 + 24) = v38;
  sub_22871EC30(&unk_280DE03E8, sub_22871ED74, MEMORY[0x277CBCCE0]);
  v48 = v44;
  v49 = v76;
  v50 = sub_2287CB050();

  (*(v77 + 8))(v45, v49);
  a4[15] = v50;

  v51 = v66;
  sub_2287CA9E0();

  v52 = v51;
  v53 = sub_2287CAA40();
  v54 = sub_2287CB610();

  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    *&v82[0] = v56;
    *v55 = 136446210;
    *&v81[0] = a4;
    type metadata accessor for BaseFeedPopulationManager();

    v57 = sub_2287CB250();
    v59 = sub_2287031D8(v57, v58, v82);

    *(v55 + 4) = v59;
    _os_log_impl(&dword_2286FF000, v53, v54, "Ready: %{public}s", v55, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v56);
    MEMORY[0x22AABFD90](v56, -1, -1);
    MEMORY[0x22AABFD90](v55, -1, -1);
  }

  __swift_destroy_boxed_opaque_existential_0(v80);
  (*(v78 + 8))(v52, v79);
  __swift_destroy_boxed_opaque_existential_0(v83);
  return a4;
}

uint64_t type metadata accessor for ProfileDashboardFeedPopulationManager(uint64_t a1)
{
  result = qword_280DE0D30;
  if (!qword_280DE0D30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22871E844(uint64_t a1)
{
  sub_22871EAA0(319, &qword_280DE17B8, MEMORY[0x277D12000], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_22871E978(uint64_t a1, uint64_t a2)
{
  sub_22871EAA0(0, &qword_280DE17B8, MEMORY[0x277D12000], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22871EA0C(uint64_t a1, uint64_t a2)
{
  sub_22871EAA0(0, &qword_280DE17B8, MEMORY[0x277D12000], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_22871EAA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_22871EB04(uint64_t a1)
{
  if (!qword_280DE02C0)
  {
    sub_22871EBD0();
    sub_228703004(255, &qword_280DE39D0, 0x277D85C78);
    sub_22871EC30(&qword_280DE0120, sub_22871EBD0, MEMORY[0x277CBCE20]);
    sub_22871EC78();
    v1 = sub_2287CAC60();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE02C0);
    }
  }
}

void sub_22871EBD0()
{
  if (!qword_280DE0118)
  {
    v0 = sub_2287CAD10();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE0118);
    }
  }
}

uint64_t sub_22871EC30(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_22871EC78()
{
  result = qword_280DE3620;
  if (!qword_280DE3620)
  {
    sub_228703004(255, &qword_280DE39D0, 0x277D85C78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE3620);
  }

  return result;
}

void sub_22871ECE0(uint64_t a1)
{
  if (!qword_280DE0698)
  {
    sub_22871EB04(255);
    sub_22871EC30(&qword_280DE02C8, sub_22871EB04, MEMORY[0x277CBCD60]);
    v1 = sub_2287CAB10();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE0698);
    }
  }
}

void sub_22871ED74(uint64_t a1)
{
  if (!qword_280DE03E0)
  {
    sub_22871EE60(255);
    sub_22871ECE0(255);
    sub_22871EC30(&qword_280DE0690, sub_22871EE60, MEMORY[0x277D10DC8]);
    sub_22871EC30(&qword_280DE06A0, sub_22871ECE0, MEMORY[0x277D10DB8]);
    v1 = sub_2287CABC0();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE03E0);
    }
  }
}

void sub_22871EE60(uint64_t a1)
{
  if (!qword_280DE0688)
  {
    sub_22871EEF4(255);
    sub_22871EC30(&qword_280DE01B8, sub_22871EEF4, MEMORY[0x277CBCD90]);
    v1 = sub_2287CAB20();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE0688);
    }
  }
}

void sub_22871EEF4(uint64_t a1)
{
  if (!qword_280DE01B0)
  {
    sub_22871EF80(255, &qword_280DDFFE8, MEMORY[0x277D121B8], MEMORY[0x277D83940]);
    v1 = sub_2287CACD0();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE01B0);
    }
  }
}

void sub_22871EF80(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_22871EFD0()
{
  result = qword_280DE39E8;
  if (!qword_280DE39E8)
  {
    sub_22871EAA0(255, &qword_280DE39F0, MEMORY[0x277D85230], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE39E8);
  }

  return result;
}

uint64_t sub_22871F058(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_22871EAA0(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t static ModelTrainingScenario.make(from:)@<X0>(uint64_t *a3@<X8>)
{
  v44 = a3;
  v4 = type metadata accessor for ModelTrainingElement(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ModelTrainingCommand(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287C9510();
  swift_allocObject();
  v12 = sub_2287C9500();
  sub_22871F660();
  sub_2287C94F0();
  if (!v3)
  {
    v45 = v5;
    v48 = v4;
    v42[1] = 0;
    v42[2] = v12;
    v43 = v47[1];
    v13 = *(v47[0] + 16);
    v42[0] = v47[0];
    if (v13)
    {
      v14 = v47[0] + ((*(v9 + 80) + 32) & ~*(v9 + 80));
      v46 = *(v9 + 72);
      v15 = MEMORY[0x277D84F90];
      v16 = v45;
      do
      {
        sub_22872AA54(v14, v11, type metadata accessor for ModelTrainingCommand);
        v18 = *(v11 + 1);
        v19 = *(v11 + 2);

        sub_22872AABC(v11, type metadata accessor for ModelTrainingCommand);
        if (v19)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v15 = sub_228722DF0(0, *(v15 + 2) + 1, 1, v15);
          }

          v21 = *(v15 + 2);
          v20 = *(v15 + 3);
          if (v21 >= v20 >> 1)
          {
            v15 = sub_228722DF0((v20 > 1), v21 + 1, 1, v15);
          }

          *(v15 + 2) = v21 + 1;
          v17 = &v15[16 * v21];
          *(v17 + 4) = v18;
          *(v17 + 5) = v19;
          v16 = v45;
        }

        v14 += v46;
        --v13;
      }

      while (v13);
    }

    else
    {
      v15 = MEMORY[0x277D84F90];
      v16 = v45;
    }

    v22 = sub_22872A9BC(v15);

    v23 = v43;
    v24 = *(v43 + 16);
    v25 = MEMORY[0x277D84F90];
    if (v24)
    {
      v46 = v22;
      v47[0] = MEMORY[0x277D84F90];
      sub_2287042D4(0, v24, 0);
      v25 = v47[0];
      v26 = v23 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
      v27 = *(v16 + 72);
      do
      {
        sub_22872AA54(v26, v7, type metadata accessor for ModelTrainingElement);
        v28 = &v7[*(v48 + 56)];
        v29 = *v28;
        v30 = *(v28 + 1);

        sub_22872AABC(v7, type metadata accessor for ModelTrainingElement);
        v47[0] = v25;
        v32 = *(v25 + 16);
        v31 = *(v25 + 24);
        if (v32 >= v31 >> 1)
        {
          sub_2287042D4((v31 > 1), v32 + 1, 1);
          v25 = v47[0];
        }

        *(v25 + 16) = v32 + 1;
        v33 = v25 + 16 * v32;
        *(v33 + 32) = v29;
        *(v33 + 40) = v30;
        v26 += v27;
        --v24;
      }

      while (v24);
      v22 = v46;
    }

    v34 = sub_22872A9BC(v25);

    if (*(v34 + 16) <= *(v22 + 16) >> 3)
    {
      v47[0] = v22;
      sub_228724EF4(v34);

      v35 = v47[0];
    }

    else
    {
      v35 = sub_2287254B8(v34, v22);
    }

    v36 = v42[0];
    v37 = v43;
    if (!*(v35 + 16))
    {
      goto LABEL_25;
    }

    v38 = *(v35 + 16);
    if (v38)
    {
      v37 = sub_2287239AC(*(v35 + 16), 0);
      v36 = sub_228729F74(v47, v37 + 4, v38, v35);
      sub_22870B3D4(v47[0]);
      if (v36 != v38)
      {
        __break(1u);
LABEL_25:

        v40 = v44;
        *v44 = v36;
        v40[1] = v37;
        return result;
      }
    }

    else
    {

      v37 = MEMORY[0x277D84F90];
    }

    sub_22872AB1C();
    swift_allocError();
    *v41 = v37;
    *(v41 + 8) = 0;
    *(v41 + 16) = 1;
    swift_willThrow();
  }
}

uint64_t sub_22871F628(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_22871F660()
{
  result = qword_27D850BA8;
  if (!qword_27D850BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D850BA8);
  }

  return result;
}

void sub_22871F6B4(unint64_t a1)
{
  v1 = a1;
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_2287CB920();
  }

  else
  {
    v3 = *(a1 + 16);
  }

  v4 = sub_228703004(0, &qword_280DE3870, 0x277CCD7C8);
  v5 = sub_22872C220(&qword_280DE1970, &qword_280DE3870, 0x277CCD7C8);
  v18[1] = MEMORY[0x22AABEB60](v3, v4, v5);
  if (v2)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v1 = sub_2287CBB40() | 0x8000000000000000;
  }

  else
  {
    v9 = -1 << *(v1 + 32);
    v6 = v1 + 64;
    v7 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v1 + 64);
  }

  v12 = 0;
  while ((v1 & 0x8000000000000000) != 0)
  {
    if (!sub_2287CBB80() || (swift_dynamicCast(), (v17 = v18[0]) == 0))
    {
LABEL_21:
      sub_22870B3D4(v1);
      return;
    }

LABEL_11:
    sub_2287248CC(v18, v17);
  }

  v13 = v12;
  v14 = v8;
  v15 = v12;
  if (v8)
  {
LABEL_17:
    v16 = *(*(v1 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v16)
    {
      goto LABEL_21;
    }

    v17 = v16;
    v8 = (v14 - 1) & v14;
    v12 = v15;
    goto LABEL_11;
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= ((v7 + 64) >> 6))
    {
      goto LABEL_21;
    }

    v14 = *(v6 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
}

uint64_t sub_22871F8C0()
{
  v1 = *v0;
  sub_2287CBD80();
  MEMORY[0x22AABF460](v1);
  return sub_2287CBDB0();
}

uint64_t sub_22871F934(uint64_t a1)
{
  v2 = *v1;
  sub_2287CBD80();
  MEMORY[0x22AABF460](v2);
  return sub_2287CBDB0();
}

uint64_t sub_22871F978()
{
  if (*v0)
  {
    return 1635017060;
  }

  else
  {
    return 0x73646E616D6D6F63;
  }
}

uint64_t sub_22871F9AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x73646E616D6D6F63 && a2 == 0xE800000000000000;
  if (v6 || (sub_2287CBD00() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2287CBD00();

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

uint64_t sub_22871FAA0(uint64_t a1)
{
  v2 = sub_22872AB70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22871FADC(uint64_t a1)
{
  v2 = sub_22872AB70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ModelTrainingScenario.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v14 = a2;
  sub_22872C540(0, &qword_27D850BB8, sub_22872AB70, &type metadata for ModelTrainingScenario.CodingKeys, MEMORY[0x277D844C8]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22872AB70();
  sub_2287CBE20();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v9 = v6;
  v10 = v14;
  sub_22872C8E0(0, &qword_27D850BC8, type metadata accessor for ModelTrainingCommand, MEMORY[0x277D83940]);
  v15 = 0;
  sub_22872ABC4();
  sub_2287CBC70();
  v11 = v16;
  sub_22872C8E0(0, &qword_27D850BE0, type metadata accessor for ModelTrainingElement, MEMORY[0x277D83940]);
  v15 = 1;
  sub_22872AC9C();
  sub_2287CBC70();
  (*(v9 + 8))(v8, v5);
  v12 = v16;
  *v10 = v11;
  v10[1] = v12;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_22871FDF8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    v7 = 0;
    sub_2287CBA20();
    MEMORY[0x22AABE980](0xD000000000000034, 0x80000002287D06B0);
    v4 = MEMORY[0x22AABEA80](a1, MEMORY[0x277D837D0]);
    MEMORY[0x22AABE980](v4);
  }

  else
  {
    sub_2287CBA20();

    v7 = 0xD000000000000025;
    MEMORY[0x22AABE980](a1, a2);
  }

  return v7;
}

HealthPlatformCore::ModelTrainingCommand::Kind_optional __swiftcall ModelTrainingCommand.Kind.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2287CBC10();

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

uint64_t ModelTrainingCommand.Kind.rawValue.getter()
{
  if (*v0)
  {
    return 0x657461645F746573;
  }

  else
  {
    return 7364980;
  }
}

uint64_t sub_22871FF8C()
{
  sub_2287CBD80();
  sub_2287CB290();

  return sub_2287CBDB0();
}

uint64_t sub_228720008(uint64_t a1)
{
  sub_2287CB290();
}

uint64_t sub_228720070(uint64_t a1)
{
  sub_2287CBD80();
  sub_2287CB290();

  return sub_2287CBDB0();
}

uint64_t sub_2287200E8@<X0>(char *a2@<X8>)
{
  v3 = sub_2287CBC10();

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

  *a2 = v5;
  return result;
}

void sub_228720148(uint64_t *a1@<X8>)
{
  v2 = 7364980;
  if (*v1)
  {
    v2 = 0x657461645F746573;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_228720230(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x657461645F746573;
  }

  else
  {
    v3 = 7364980;
  }

  if (v2)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x657461645F746573;
  }

  else
  {
    v5 = 7364980;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2287CBD00();
  }

  return v8 & 1;
}

uint64_t ModelTrainingCommand.id.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t sub_228720378()
{
  v1 = 25705;
  if (*v0 != 1)
  {
    v1 = 1702125924;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_2287203B8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22872C0C4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2287203EC(uint64_t a1)
{
  v2 = sub_22872AE3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_228720428(uint64_t a1)
{
  v2 = sub_22872AE3C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ModelTrainingCommand.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  sub_22872C8E0(0, &qword_280DE3A98, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v19 = &v16 - v4;
  sub_22872C540(0, &qword_27D850BF8, sub_22872AE3C, &type metadata for ModelTrainingCommand.CodingKeys, MEMORY[0x277D844C8]);
  v20 = v5;
  v18 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  v8 = type metadata accessor for ModelTrainingCommand(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22872AE3C();
  v11 = v21;
  sub_2287CBE20();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v16 = v8;
  v21 = a1;
  v12 = v18;
  v13 = v19;
  v24 = 0;
  sub_22872AE90();
  sub_2287CBC70();
  *v10 = v25;
  v23 = 1;
  *(v10 + 1) = sub_2287CBC20();
  *(v10 + 2) = v14;
  sub_2287C97C0();
  v22 = 2;
  sub_22872AD74(&qword_280DE34B0, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  sub_2287CBC40();
  (*(v12 + 8))(v7, v20);
  sub_22872AFA8(v13, &v10[*(v16 + 24)], &qword_280DE3A98, MEMORY[0x277CC9578]);
  sub_22872AA54(v10, v17, type metadata accessor for ModelTrainingCommand);
  __swift_destroy_boxed_opaque_existential_0(v21);
  return sub_22872AABC(v10, type metadata accessor for ModelTrainingCommand);
}

uint64_t ModelTrainingElement.contentKind.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ModelTrainingElement(0) + 20);
  v4 = sub_2287C9B20();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ModelTrainingElement.dateSubmitted.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ModelTrainingElement(0) + 36);
  v4 = sub_2287C97C0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ModelTrainingElement.keywords.getter()
{
  type metadata accessor for ModelTrainingElement(0);
}

uint64_t ModelTrainingElement.uniqueIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for ModelTrainingElement(0) + 56));

  return v1;
}

unint64_t sub_228720B94(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x4B746E65746E6F63;
    v7 = 0x6574656C706D6F63;
    v8 = 0xD000000000000015;
    if (a1 != 3)
    {
      v8 = 0xD000000000000014;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (!a1)
    {
      v6 = 0xD000000000000014;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x6E656E696D6F7270;
    v2 = 0x706F6353656D6974;
    if (a1 != 9)
    {
      v2 = 0xD000000000000010;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x6D62755365746164;
    v4 = 0x7364726F7779656BLL;
    if (a1 != 6)
    {
      v4 = 0x647574696E67616DLL;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_228720D30(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_228720B94(*a1);
  v5 = v4;
  if (v3 == sub_228720B94(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2287CBD00();
  }

  return v8 & 1;
}

uint64_t sub_228720DB8()
{
  v1 = *v0;
  sub_2287CBD80();
  sub_228720B94(v1);
  sub_2287CB290();

  return sub_2287CBDB0();
}

uint64_t sub_228720E1C(uint64_t a1)
{
  sub_228720B94(*v1);
  sub_2287CB290();
}

uint64_t sub_228720E70(uint64_t a1)
{
  v2 = *v1;
  sub_2287CBD80();
  sub_228720B94(v2);
  sub_2287CB290();

  return sub_2287CBDB0();
}

unint64_t sub_228720ED0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22872C1D4(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_228720F00@<X0>(unint64_t *a1@<X8>)
{
  result = sub_228720B94(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_228720F48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22872C1D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_228720F7C(uint64_t a1)
{
  v2 = sub_22872AEE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_228720FB8(uint64_t a1)
{
  v2 = sub_22872AEE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t static ModelTrainingElement.make(from:)()
{
  sub_2287C9510();
  swift_allocObject();
  sub_2287C9500();
  type metadata accessor for ModelTrainingElement(0);
  sub_22872AD74(&qword_27D850BF0, type metadata accessor for ModelTrainingElement, &protocol conformance descriptor for ModelTrainingElement);
  sub_2287C94F0();
}

uint64_t ModelTrainingElement.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = MEMORY[0x277D83D88];
  sub_22872C8E0(0, &qword_280DE3400, MEMORY[0x277D11F48], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v49 = v46 - v5;
  sub_22872C8E0(0, &qword_280DE33E0, MEMORY[0x277D11FA8], v3);
  MEMORY[0x28223BE20](v6 - 8);
  v50 = v46 - v7;
  v8 = sub_2287C97C0();
  v54 = *(v8 - 8);
  v55 = v8;
  MEMORY[0x28223BE20](v8);
  v51 = v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22872C8E0(0, &qword_280DE33C8, MEMORY[0x277D12030], v3);
  MEMORY[0x28223BE20](v10 - 8);
  v52 = v46 - v11;
  sub_22872C8E0(0, &qword_280DE3398, MEMORY[0x277D12080], v3);
  MEMORY[0x28223BE20](v12 - 8);
  v53 = v46 - v13;
  v14 = sub_2287C9B20();
  v56 = *(v14 - 8);
  v57 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22872C540(0, &qword_27D850C10, sub_22872AEE4, &type metadata for ModelTrainingElement.CodingKeys, MEMORY[0x277D844C8]);
  v60 = v17;
  v58 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = v46 - v18;
  v20 = type metadata accessor for ModelTrainingElement(0);
  MEMORY[0x28223BE20](v20);
  v22 = v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22872AEE4();
  v59 = v19;
  v23 = v61;
  sub_2287CBE20();
  if (v23)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v61 = a1;
  v47 = v20;
  v24 = MEMORY[0x277D83B88];
  sub_22872C9D8(0, &qword_27D850C20, MEMORY[0x277D83B88], MEMORY[0x277D83940]);
  v62 = 0;
  sub_22872B028(&qword_27D850C28, &qword_27D850C20, v24);
  sub_2287CBC40();
  *v22 = v63;
  LOBYTE(v63) = 1;
  sub_22872AD74(&qword_27D850C30, MEMORY[0x277D11E28], MEMORY[0x277D11E48]);
  v25 = v57;
  sub_2287CBC70();
  v26 = v47;
  (*(v56 + 32))(&v22[v47[5]], v16, v25);
  LOBYTE(v63) = 2;
  v46[1] = 0;
  v27 = sub_2287CBC30();
  v28 = &v22[v26[6]];
  *v28 = v27;
  v28[8] = v29 & 1;
  sub_2287CA2E0();
  LOBYTE(v63) = 3;
  sub_22872AD74(&qword_280DE33A0, MEMORY[0x277D12080], MEMORY[0x277D12098]);
  v30 = v53;
  sub_2287CBC40();
  sub_22872AFA8(v30, &v22[v47[7]], &qword_280DE3398, MEMORY[0x277D12080]);
  sub_2287CA280();
  LOBYTE(v63) = 4;
  sub_22872AD74(&qword_27D850C38, MEMORY[0x277D12030], MEMORY[0x277D12040]);
  v31 = v52;
  sub_2287CBC40();
  v32 = v47;
  sub_22872AFA8(v31, &v22[v47[8]], &qword_280DE33C8, MEMORY[0x277D12030]);
  LOBYTE(v63) = 5;
  sub_22872AD74(&qword_280DE34B0, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  v33 = v51;
  v34 = v55;
  sub_2287CBC70();
  (*(v54 + 32))(&v22[v32[9]], v33, v34);
  v35 = MEMORY[0x277D837D0];
  sub_22872C9D8(0, &qword_280DE3A00, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  v62 = 6;
  sub_22872B028(&qword_27D850C40, &qword_280DE3A00, v35);
  sub_2287CBC40();
  *&v22[v32[10]] = v63;
  LOBYTE(v63) = 7;
  v36 = sub_2287CBC30();
  v37 = &v22[v47[11]];
  *v37 = v36;
  v37[8] = v38 & 1;
  sub_2287CA050();
  LOBYTE(v63) = 8;
  sub_22872AD74(&qword_280DE33E8, MEMORY[0x277D11FA8], MEMORY[0x277D11FB8]);
  v39 = v50;
  sub_2287CBC40();
  sub_22872AFA8(v39, &v22[v47[12]], &qword_280DE33E0, MEMORY[0x277D11FA8]);
  sub_2287C9F50();
  LOBYTE(v63) = 9;
  sub_22872AD74(&qword_280DE3408, MEMORY[0x277D11F48], MEMORY[0x277D11F58]);
  sub_2287CBC40();
  sub_22872AFA8(v49, &v22[v47[13]], &qword_280DE3400, MEMORY[0x277D11F48]);
  LOBYTE(v63) = 10;
  v40 = sub_2287CBC50();
  v42 = v41;
  (*(v58 + 8))(v59, v60);
  v43 = v48;
  v44 = &v22[v47[14]];
  *v44 = v40;
  v44[1] = v42;
  sub_22872AA54(v22, v43, type metadata accessor for ModelTrainingElement);
  __swift_destroy_boxed_opaque_existential_0(v61);
  return sub_22872AABC(v22, type metadata accessor for ModelTrainingElement);
}

void FeedItem.init(context:modelTrainingElement:)(void *a1, uint64_t (*a2)(uint64_t))
{
  v123 = a1;
  v3 = sub_2287CA140();
  v107 = *(v3 - 8);
  v108 = v3;
  MEMORY[0x28223BE20](v3);
  v106 = &v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x277D83D88];
  sub_22872C8E0(0, &qword_280DE3400, MEMORY[0x277D11F48], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v109 = &v87 - v7;
  v110 = sub_2287C9F50();
  v117 = *(v110 - 8);
  v8 = MEMORY[0x28223BE20](v110);
  v104 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v105 = &v87 - v10;
  v103 = sub_2287CA210();
  v102 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v101 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22872C8E0(0, &qword_280DE33E0, MEMORY[0x277D11FA8], v5);
  MEMORY[0x28223BE20](v12 - 8);
  v114 = &v87 - v13;
  v14 = sub_2287CA050();
  v115 = *(v14 - 8);
  v116 = v14;
  v15 = MEMORY[0x28223BE20](v14);
  v99 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v100 = &v87 - v17;
  v93 = sub_2287CA3E0();
  v92 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v91 = &v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_2287CA500();
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v96 = &v87 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22872C8E0(0, &qword_280DE3398, MEMORY[0x277D12080], v5);
  MEMORY[0x28223BE20](v20 - 8);
  v111 = &v87 - v21;
  v22 = sub_2287CA2E0();
  v112 = *(v22 - 8);
  v113 = v22;
  v23 = MEMORY[0x28223BE20](v22);
  v94 = &v87 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v95 = &v87 - v25;
  v90 = sub_2287CA4A0();
  v89 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v88 = &v87 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = MEMORY[0x277D12030];
  sub_22872C8E0(0, &qword_280DE33C8, MEMORY[0x277D12030], v5);
  MEMORY[0x28223BE20](v27 - 8);
  v121 = &v87 - v28;
  v29 = sub_2287C9B20();
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v32 = &v87 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22872C8E0(0, &qword_280DE3980, MEMORY[0x277CC88A8], v5);
  MEMORY[0x28223BE20](v33 - 8);
  v35 = &v87 - v34;
  v36 = sub_2287C97C0();
  v37 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v39 = &v87 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = "$_pertinentChangeDomain";
  v120 = "ModelTrainingStoryboard";
  v40 = type metadata accessor for ModelTrainingElement(0);
  v118 = *(a2 + v40[14]);
  (*(v37 + 16))(v39, a2 + v40[9], v36);
  v41 = sub_2287C9590();
  (*(*(v41 - 8) + 56))(v35, 1, 1, v41);
  (*(v30 + 16))(v32, a2 + v40[5], v29);
  v42 = v123;

  v43 = v40;
  v123 = v42;
  v44 = sub_2287CA7E0();
  sub_22872ADBC(a2 + v40[8], v121, &qword_280DE33C8, v122);
  v45 = v44;
  sub_2287CA7B0();

  v46 = *a2;
  v124 = v40;
  if (!v46)
  {
LABEL_19:
    v58 = a2 + v43[6];
    if ((v58[8] & 1) == 0 && *v58 >= 0.0)
    {
      v59 = v88;
      sub_2287CA4B0();
      v60 = v90;
      sub_2287CA730();
      (*(v89 + 8))(v59, v60);
    }

    v61 = v111;
    sub_22872ADBC(a2 + v43[7], v111, &qword_280DE3398, MEMORY[0x277D12080]);
    v62 = v112;
    v63 = v113;
    v64 = (*(v112 + 48))(v61, 1, v113);
    v66 = v116;
    v65 = v117;
    v67 = v115;
    if (v64 == 1)
    {
      sub_22872AF38(v61, &qword_280DE3398, MEMORY[0x277D12080]);
    }

    else
    {
      v68 = v95;
      (*(v62 + 32))(v95, v61, v63);
      (*(v62 + 16))(v94, v68, v63);
      v69 = v96;
      sub_2287CA510();
      v70 = v98;
      sub_2287CA730();
      v71 = v69;
      v43 = v124;
      (*(v97 + 8))(v71, v70);
      (*(v62 + 8))(v68, v63);
    }

    if (*(a2 + v43[10]))
    {

      sub_22872A9BC(v72);

      sub_2287CA780();
    }

    v73 = a2 + v43[11];
    if ((v73[8] & 1) == 0 && *v73 >= 0.0)
    {
      v74 = v91;
      sub_2287CA3F0();
      v75 = v93;
      sub_2287CA730();
      v76 = v74;
      v43 = v124;
      (*(v92 + 8))(v76, v75);
    }

    v77 = v114;
    sub_22872ADBC(a2 + v43[12], v114, &qword_280DE33E0, MEMORY[0x277D11FA8]);
    if ((*(v67 + 48))(v77, 1, v66) == 1)
    {
      sub_22872AF38(v77, &qword_280DE33E0, MEMORY[0x277D11FA8]);
    }

    else
    {
      v78 = v100;
      (*(v67 + 32))(v100, v77, v66);
      (*(v67 + 16))(v99, v78, v66);
      v79 = v101;
      sub_2287CA220();
      v80 = v103;
      sub_2287CA730();
      v81 = v79;
      v43 = v124;
      (*(v102 + 8))(v81, v80);
      (*(v67 + 8))(v78, v66);
    }

    v82 = v109;
    v83 = v110;
    sub_22872ADBC(a2 + v43[13], v109, &qword_280DE3400, MEMORY[0x277D11F48]);
    if ((*(v65 + 48))(v82, 1, v83) == 1)
    {

      sub_22872AABC(a2, type metadata accessor for ModelTrainingElement);
      sub_22872AF38(v82, &qword_280DE3400, MEMORY[0x277D11F48]);
    }

    else
    {
      v84 = v105;
      (*(v65 + 32))(v105, v82, v83);
      (*(v65 + 16))(v104, v84, v83);
      v85 = v106;
      sub_2287CA150();
      v86 = v108;
      sub_2287CA730();

      (*(v107 + 8))(v85, v86);
      (*(v65 + 8))(v84, v83);
      sub_22872AABC(a2, type metadata accessor for ModelTrainingElement);
    }

    return;
  }

  v122 = a2;
  v47 = *(v46 + 16);
  if (!v47)
  {
    v50 = MEMORY[0x277D84F90];
    v54 = *(MEMORY[0x277D84F90] + 16);
    v125 = MEMORY[0x277D84F90];
    v55 = MEMORY[0x277D84F90];
    if (v54)
    {
LABEL_12:
      v56 = objc_opt_self();
      v55 = MEMORY[0x277D84F90];
      v57 = 32;
      do
      {
        if ([v56 dataTypeWithCode_])
        {
          MEMORY[0x22AABEA50]();
          if (*((v125 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v125 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_2287CB3E0();
          }

          sub_2287CB420();
          v55 = v125;
        }

        v57 += 8;
        --v54;
      }

      while (v54);
    }

    sub_22872BEB8(v55, &qword_280DE3638, 0x277CCD720, &qword_280DE3630, sub_228724218);

    sub_2287CA760();
    a2 = v122;
    v43 = v124;
    goto LABEL_19;
  }

  v48 = 0;
  v49 = MEMORY[0x277D84F90];
  v50 = MEMORY[0x277D84F90];
  while (v48 < *(v46 + 16))
  {
    v51 = *(v46 + 32 + 8 * v48);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v50 = sub_228723040(0, *(v50 + 2) + 1, 1, v50);
    }

    v53 = *(v50 + 2);
    v52 = *(v50 + 3);
    v54 = v53 + 1;
    if (v53 >= v52 >> 1)
    {
      v50 = sub_228723040((v52 > 1), v53 + 1, 1, v50);
    }

    ++v48;
    *(v50 + 2) = v54;
    *&v50[8 * v53 + 32] = v51;
    if (v47 == v48)
    {
      v125 = v49;
      goto LABEL_12;
    }
  }

  __break(1u);
}

char *sub_228722DF0(char *result, int64_t a2, char a3, char *a4)
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
    sub_22872C9D8(0, &qword_280DE39A8, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_228722F14(char *result, int64_t a2, char a3, char *a4)
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
    sub_22872C5A8(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_228723040(char *result, int64_t a2, char a3, char *a4)
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
    sub_22872C8E0(0, &qword_280DE1818, type metadata accessor for _HKDataTypeCode, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_22872319C(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_22872C8E0(0, a5, a6, MEMORY[0x277D84560]);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_228723390(void *result, int64_t a2, char a3, void *a4)
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
    sub_22872C8E0(0, &qword_27D850CD8, sub_22872C270, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_22870CFB4();
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_228723510(void *result, int64_t a2, char a3, void *a4)
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
    sub_22872C48C(0, &qword_280DE1870, &qword_280DE3350, MEMORY[0x277D10D90], 1);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_22872C7C4(0, &qword_280DE3350, MEMORY[0x277D10D90], 1);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_228723670(void *result, int64_t a2, char a3, void *a4)
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
    sub_22872C8E0(0, &qword_280DE1838, sub_22872C748, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_22872C748(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2287238A0(char *result, int64_t a2, char a3, char *a4)
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
    sub_22872C9D8(0, &qword_280DDFE58, MEMORY[0x277D121B8], MEMORY[0x277D84560]);
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

void *sub_2287239AC(uint64_t a1, uint64_t a2)
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

  sub_22872C9D8(0, &qword_280DE39A8, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_228723A48(uint64_t a1, uint64_t a2)
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

  sub_22872C9D8(0, &qword_280DDFE58, MEMORY[0x277D121B8], MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void *sub_228723AD4(uint64_t a1, uint64_t a2)
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

  sub_22872C9D8(0, &qword_280DE3850, MEMORY[0x277D11E90], MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void *sub_228723B70(uint64_t a1, uint64_t a2)
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

  sub_22872C9D8(0, &qword_280DE1268, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_228723C14(uint64_t a1, uint64_t a2)
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

  sub_22872C48C(0, &qword_280DDFE50, qword_280DE1038, &protocol descriptor for FeedPopulationManaging, 0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

uint64_t sub_228723CA8(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_2287CB930();

    if (v9)
    {

      sub_228703004(0, &qword_280DE35F0, 0x277D444A0);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_2287CB920();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_2287252A0(v7, result + 1, &qword_280DE35C0, &qword_280DE35F0, 0x277D444A0, &qword_280DE35E8);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_2287268CC(v20 + 1, &qword_280DE35C0, &qword_280DE35F0, 0x277D444A0, &qword_280DE35E8);
    }

    v18 = v8;
    sub_228752010();

    *v3 = v19;
    goto LABEL_16;
  }

  sub_228703004(0, &qword_280DE35F0, 0x277D444A0);
  v11 = sub_2287CB7E0();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_228729B74(v18, v13, isUniquelyReferenced_nonNull_native, &qword_280DE35C0, &qword_280DE35F0, 0x277D444A0, &qword_280DE35E8);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_2287CB7F0();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_228723F40(_BYTE *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  sub_2287CBD80();
  _s14HealthPlatform4FeedC4KindO0aB4CoreE13reSectionNameSSvg_0();
  sub_2287CB290();

  v7 = sub_2287CBDB0();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = _s14HealthPlatform4FeedC4KindO0aB4CoreE13reSectionNameSSvg_0();
      v13 = v12;
      if (v11 == _s14HealthPlatform4FeedC4KindO0aB4CoreE13reSectionNameSSvg_0() && v13 == v14)
      {
        break;
      }

      v16 = sub_2287CBD00();

      if (v16)
      {
        goto LABEL_11;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_11:
    result = 0;
    LOBYTE(a2) = *(*(v6 + 48) + v9);
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_228729408(a2, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v19;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_2287240C8(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_2287CBD80();
  sub_2287CB290();
  v8 = sub_2287CBDB0();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_2287CBD00() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_2287295E0(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_228724218(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_2287CB930();

    if (v9)
    {

      sub_228703004(0, &qword_280DE3638, 0x277CCD720);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_2287CB920();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_2287252A0(v7, result + 1, &qword_280DE18E8, &qword_280DE3638, 0x277CCD720, &qword_280DE3630);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_2287268CC(v20 + 1, &qword_280DE18E8, &qword_280DE3638, 0x277CCD720, &qword_280DE3630);
    }

    v18 = v8;
    sub_228752010();

    *v3 = v19;
    goto LABEL_16;
  }

  sub_228703004(0, &qword_280DE3638, 0x277CCD720);
  v11 = sub_2287CB7E0();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_228729B74(v18, v13, isUniquelyReferenced_nonNull_native, &qword_280DE18E8, &qword_280DE3638, 0x277CCD720, &qword_280DE3630);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_2287CB7F0();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_2287244B0(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_2287C9B20();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_22872AD74(&qword_280DE3430, MEMORY[0x277D11E28], MEMORY[0x277D11E30]);
  v33 = a2;
  v11 = sub_2287CB1B0();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_22872AD74(&qword_280DE3428, MEMORY[0x277D11E28], MEMORY[0x277D11E38]);
      v21 = sub_2287CB200();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_228729760(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_228724790(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  sub_2287CBD80();
  sub_2287C9C90();
  v7 = sub_2287CBDB0();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = *(*(v6 + 48) + 8 * v9);
      v12 = sub_2287C9C80();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v16 = *(*(v6 + 48) + 8 * v9);
    *a1 = v16;
    v17 = v16;
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    v14 = a2;
    sub_228729A04(a2, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    return 1;
  }
}

uint64_t sub_2287248CC(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_2287CB930();

    if (v9)
    {

      sub_228703004(0, &qword_280DE3870, 0x277CCD7C8);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_2287CB920();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_2287252A0(v7, result + 1, &qword_280DE18E0, &qword_280DE3870, 0x277CCD7C8, &qword_280DE1970);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_2287268CC(v20 + 1, &qword_280DE18E0, &qword_280DE3870, 0x277CCD7C8, &qword_280DE1970);
    }

    v18 = v8;
    sub_228752010();

    *v3 = v19;
    goto LABEL_16;
  }

  sub_228703004(0, &qword_280DE3870, 0x277CCD7C8);
  v11 = sub_2287CB7E0();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_228729B74(v18, v13, isUniquelyReferenced_nonNull_native, &qword_280DE18E0, &qword_280DE3870, 0x277CCD7C8, &qword_280DE1970);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_2287CB7F0();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_228724B64(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_2287CB930();

    if (v9)
    {

      sub_228703004(0, &qword_280DE19B0, 0x277CCD8D8);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_2287CB920();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_2287252A0(v7, result + 1, &qword_27D850CD0, &qword_280DE19B0, 0x277CCD8D8, &qword_280DE19A8);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_2287268CC(v20 + 1, &qword_27D850CD0, &qword_280DE19B0, 0x277CCD8D8, &qword_280DE19A8);
    }

    v18 = v8;
    sub_228752010();

    *v3 = v19;
    goto LABEL_16;
  }

  sub_228703004(0, &qword_280DE19B0, 0x277CCD8D8);
  v11 = sub_2287CB7E0();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_228729B74(v18, v13, isUniquelyReferenced_nonNull_native, &qword_27D850CD0, &qword_280DE19B0, 0x277CCD8D8, &qword_280DE19A8);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_2287CB7F0();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_228724DFC(void *a1, uint64_t a2)
{
  v5 = *v2;
  sub_2287CBD80();
  MEMORY[0x22AABF460](a2);
  v6 = sub_2287CBDB0();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_228729D1C(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_228724EF4(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_2287260C0(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

void sub_228725020(uint64_t a1, uint64_t a2)
{
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (!sub_2287CB920())
    {
      return;
    }
  }

  else if (!*(*v2 + 16))
  {
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_2287CB8D0();
    sub_228703004(0, &qword_280DE3638, 0x277CCD720);
    sub_22872C220(&qword_280DE3630, &qword_280DE3638, 0x277CCD720);
    sub_2287CB4C0();
    a1 = v19;
    v4 = v20;
    v5 = v21;
    v6 = v22;
    v7 = v23;
  }

  else
  {
    v8 = -1 << *(a1 + 32);
    v4 = a1 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(a1 + 56);

    v6 = 0;
  }

  v11 = (v5 + 64) >> 6;
  if (a1 < 0)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v12 = v6;
    v13 = v7;
    v14 = v6;
    if (!v7)
    {
      break;
    }

LABEL_16:
    v15 = (v13 - 1) & v13;
    v16 = *(*(a1 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v16)
    {
LABEL_22:
      sub_22870B3D4(a1);
      return;
    }

    while (1)
    {
      v17 = sub_2287261FC(v16);

      v6 = v14;
      v7 = v15;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_18:
      if (sub_2287CB950())
      {
        sub_228703004(0, &qword_280DE3638, 0x277CCD720);
        swift_dynamicCast();
        v16 = v18;
        v14 = v6;
        v15 = v7;
        if (v18)
        {
          continue;
        }
      }

      goto LABEL_22;
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
      goto LABEL_22;
    }

    v13 = *(v4 + 8 * v14);
    ++v12;
    if (v13)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

uint64_t sub_2287252A0(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, void *a5, unint64_t *a6)
{
  if (a2)
  {
    sub_22872C854(0, a3, a4, a5, a6);
    v10 = sub_2287CB9E0();
    v23 = v10;
    sub_2287CB8D0();
    if (sub_2287CB950())
    {
      sub_228703004(0, a4, a5);
      do
      {
        swift_dynamicCast();
        v17 = *(v10 + 16);
        if (*(v10 + 24) <= v17)
        {
          sub_2287268CC(v17 + 1, a3, a4, a5, a6);
        }

        v10 = v23;
        result = sub_2287CB7E0();
        v12 = v23 + 56;
        v13 = -1 << *(v23 + 32);
        v14 = result & ~v13;
        v15 = v14 >> 6;
        if (((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6))) != 0)
        {
          v16 = __clz(__rbit64((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v18 = 0;
          v19 = (63 - v13) >> 6;
          do
          {
            if (++v15 == v19 && (v18 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v20 = v15 == v19;
            if (v15 == v19)
            {
              v15 = 0;
            }

            v18 |= v20;
            v21 = *(v12 + 8 * v15);
          }

          while (v21 == -1);
          v16 = __clz(__rbit64(~v21)) + (v15 << 6);
        }

        *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
        *(*(v23 + 48) + 8 * v16) = v22;
        ++*(v23 + 16);
      }

      while (sub_2287CB950());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v10;
}

uint64_t sub_2287254B8(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v66 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v53 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v57 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v61 = (a2 + 56);

  v15 = 0;
  v59 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_56;
      }

      if (v17 >= v12)
      {
        goto LABEL_53;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v60 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    sub_2287CBD80();

    sub_2287CB290();
    v23 = sub_2287CBDB0();
    v24 = -1 << *(v5 + 32);
    v2 = v23 & ~v24;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v59;
    v15 = v60;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v24;
  while (1)
  {
    v25 = (*(v5 + 48) + 16 * v2);
    v26 = *v25 == v22 && v25[1] == v21;
    if (v26 || (sub_2287CBD00() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v59;
  v27 = v60;
  v63 = v57;
  v64 = v60;
  v65 = v11;
  v62[0] = v59;
  v62[1] = v7;

  v29 = *(v5 + 32);
  v54 = ((1 << v29) + 63) >> 6;
  v14 = 8 * v54;
  if ((v29 & 0x3Fu) > 0xD)
  {
    goto LABEL_57;
  }

  while (1)
  {
    v55 = &v53;
    MEMORY[0x28223BE20](v28);
    v2 = &v53 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v61, v30);
    v31 = *(v2 + 8 * v8) & ~v4;
    v32 = *(v5 + 16);
    v58 = v2;
    *(v2 + 8 * v8) = v31;
    v33 = v32 - 1;
LABEL_23:
    v56 = v33;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v35 = v27;
    while (1)
    {
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v36 >= v12)
      {
        v5 = sub_2287B4B24(v58, v54, v56, v5);
        goto LABEL_51;
      }

      v11 = *(v7 + 8 * v36);
      ++v35;
      if (v11)
      {
        v27 = v36;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v37 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v38 = *(v3 + 48);
            v60 = v27;
            v39 = (v38 + ((v27 << 10) | (16 * v37)));
            v40 = *v39;
            v4 = v39[1];
            sub_2287CBD80();

            sub_2287CB290();
            v41 = sub_2287CBDB0();
            v42 = -1 << *(v5 + 32);
            v8 = v41 & ~v42;
            v2 = v8 >> 6;
            v43 = 1 << v8;
            if (((1 << v8) & v61[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v27 = v60;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v44 = (*(v5 + 48) + 16 * v8);
          if (*v44 != v40 || v44[1] != v4)
          {
            v46 = ~v42;
            while ((sub_2287CBD00() & 1) == 0)
            {
              v8 = (v8 + 1) & v46;
              v2 = v8 >> 6;
              v43 = 1 << v8;
              if (((1 << v8) & v61[v8 >> 6]) == 0)
              {
                v3 = v59;
                goto LABEL_45;
              }

              v47 = (*(v5 + 48) + 16 * v8);
              if (*v47 == v40 && v47[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v59;
          v34 = v58[v2];
          v58[v2] = v34 & ~v43;
          v26 = (v34 & v43) == 0;
          v27 = v60;
          if (!v26)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v33 = v56 - 1;
        if (__OFSUB__(v56, 1))
        {
          __break(1u);
        }

        if (v56 == 1)
        {

          v5 = MEMORY[0x277D84FA0];
          goto LABEL_51;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    v49 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v27 = v60;
  }

  v50 = swift_slowAlloc();
  memcpy(v50, v61, v49);
  v51 = v53;
  v52 = sub_2287272F8(v50, v54, v5, v2, v62);

  if (!v51)
  {

    MEMORY[0x22AABFD90](v50, -1, -1);
    v3 = v62[0];
    v57 = v63;
    v5 = v52;
LABEL_51:
    v13 = v3;
LABEL_53:
    sub_22870B3D4(v13);
    return v5;
  }

  result = MEMORY[0x22AABFD90](v50, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_228725A28(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v84 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v4 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_2287CB8D0();
    sub_228703004(0, &qword_280DE3638, 0x277CCD720);
    sub_22872C220(&qword_280DE3630, &qword_280DE3638, 0x277CCD720);
    sub_2287CB4C0();
    v4 = v79;
    v6 = v80;
    v7 = v81;
    v8 = v82;
    v9 = v83;
  }

  else
  {
    v10 = -1 << *(a1 + 32);
    v6 = a1 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a1 + 56);

    v8 = 0;
  }

  v74 = v4;
  v75 = v6;
  v76 = v7;
  v77 = v8;
  v65 = v7;
  v13 = (v7 + 64) >> 6;
  v71 = (v3 + 56);
  v78 = v9;
  v68 = v6;
  v69 = v4;
  for (i = v13; ; v13 = i)
  {
    if (v4 < 0)
    {
      v21 = sub_2287CB950();
      if (!v21)
      {
        goto LABEL_65;
      }

      v72 = v21;
      sub_228703004(0, &qword_280DE3638, 0x277CCD720);
      swift_dynamicCast();
      v19 = v73;
      v17 = v8;
      v2 = v9;
      if (!v73)
      {
        goto LABEL_65;
      }
    }

    else
    {
      v14 = v9;
      v15 = v8;
      if (v9)
      {
LABEL_20:
        v2 = (v14 - 1) & v14;
        v19 = *(*(v4 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
        v20 = v19;
        v17 = v15;
      }

      else
      {
        if (v13 <= (v8 + 1))
        {
          v16 = v8 + 1;
        }

        else
        {
          v16 = v13;
        }

        v17 = v16 - 1;
        v18 = v8;
        while (1)
        {
          v15 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            goto LABEL_67;
          }

          if (v15 >= v13)
          {
            break;
          }

          v14 = *(v6 + 8 * v15);
          ++v18;
          if (v14)
          {
            goto LABEL_20;
          }
        }

        v19 = 0;
        v2 = 0;
      }

      v74 = v4;
      v75 = v6;
      v76 = v65;
      v77 = v17;
      v78 = v2;
      if (!v19)
      {
LABEL_65:
        v54 = v4;
        goto LABEL_63;
      }
    }

    v22 = v19;
    v23 = sub_2287CB7E0();
    v24 = -1 << *(v3 + 32);
    v8 = v23 & ~v24;
    v4 = v8 >> 6;
    v15 = 1 << v8;
    if (((1 << v8) & v71[v8 >> 6]) != 0)
    {
      break;
    }

LABEL_10:

    v8 = v17;
    v9 = v2;
    v6 = v68;
    v4 = v69;
  }

  v25 = ~v24;
  v26 = sub_228703004(0, &qword_280DE3638, 0x277CCD720);
  v27 = *(*(v3 + 48) + 8 * v8);
  v70 = v26;
  while (1)
  {
    v28 = sub_2287CB7F0();

    if (v28)
    {
      break;
    }

    v8 = (v8 + 1) & v25;
    v4 = v8 >> 6;
    v15 = 1 << v8;
    if (((1 << v8) & v71[v8 >> 6]) == 0)
    {
      goto LABEL_10;
    }

    v27 = *(*(v3 + 48) + 8 * v8);
  }

  v30 = *(v3 + 32);
  v62 = ((1 << v30) + 63) >> 6;
  v5 = 8 * v62;
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_68;
  }

  while (2)
  {
    v63 = &v61;
    MEMORY[0x28223BE20](v29);
    v32 = &v61 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v32, v71, v31);
    v33 = *&v32[8 * v4] & ~v15;
    v34 = *(v3 + 16);
    v64 = v32;
    *&v32[8 * v4] = v33;
    v4 = v34 - 1;
    v36 = v68;
    v35 = v69;
    v37 = i;
LABEL_33:
    v66 = v4;
    while (v35 < 0)
    {
      v38 = sub_2287CB950();
      if (!v38)
      {
        goto LABEL_61;
      }

      v72 = v38;
      swift_dynamicCast();
      v39 = v73;
      if (!v73)
      {
        goto LABEL_61;
      }

LABEL_50:
      v44 = sub_2287CB7E0();
      v45 = v3;
      v46 = -1 << *(v3 + 32);
      v47 = v44 & ~v46;
      v48 = v47 >> 6;
      v49 = 1 << v47;
      if (((1 << v47) & v71[v47 >> 6]) != 0)
      {
        v50 = ~v46;
        while (1)
        {
          v8 = *(*(v45 + 48) + 8 * v47);
          v51 = sub_2287CB7F0();

          if (v51)
          {
            break;
          }

          v47 = (v47 + 1) & v50;
          v48 = v47 >> 6;
          v49 = 1 << v47;
          if (((1 << v47) & v71[v47 >> 6]) == 0)
          {
            goto LABEL_34;
          }
        }

        v52 = v64[v48];
        v64[v48] = v52 & ~v49;
        v53 = (v52 & v49) == 0;
        v3 = v45;
        v36 = v68;
        v35 = v69;
        v4 = v66;
        v37 = i;
        if (!v53)
        {
          v4 = v66 - 1;
          if (__OFSUB__(v66, 1))
          {
            __break(1u);
          }

          if (v66 == 1)
          {

            v3 = MEMORY[0x277D84FA0];
            goto LABEL_62;
          }

          goto LABEL_33;
        }
      }

      else
      {
LABEL_34:

        v3 = v45;
        v36 = v68;
        v35 = v69;
        v4 = v66;
        v37 = i;
      }
    }

    if (v2)
    {
      v15 = v17;
LABEL_48:
      v42 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v39 = *(*(v35 + 48) + ((v15 << 9) | (8 * v42)));
      v43 = v39;
      v41 = v15;
LABEL_49:
      v74 = v35;
      v75 = v36;
      v76 = v65;
      v77 = v41;
      v17 = v41;
      v78 = v2;
      if (!v39)
      {
LABEL_61:
        v3 = sub_2287B5088(v64, v62, v4, v3);
        goto LABEL_62;
      }

      goto LABEL_50;
    }

    if (v37 <= (v17 + 1))
    {
      v40 = v17 + 1;
    }

    else
    {
      v40 = v37;
    }

    v41 = v40 - 1;
    while (1)
    {
      v15 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v15 >= v37)
      {
        v39 = 0;
        v2 = 0;
        goto LABEL_49;
      }

      v2 = *(v36 + 8 * v15);
      ++v17;
      if (v2)
      {
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    v56 = v5;

    v57 = v56;
    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v58 = swift_slowAlloc();
  memcpy(v58, v71, v57);
  sub_228727530(v58, v62, v3, v8, &v74);
  v60 = v59;

  MEMORY[0x22AABFD90](v58, -1, -1);
  v3 = v60;
LABEL_62:
  v54 = v74;
LABEL_63:
  sub_22870B3D4(v54);
  return v3;
}

uint64_t sub_2287260C0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_2287CBD80();
  sub_2287CB290();
  v6 = sub_2287CBDB0();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_2287CBD00() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_228727AC0();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_2287290A4(v8);
  *v2 = v16;
  return v12;
}

uint64_t sub_2287261FC(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = a1;
    v6 = sub_2287CB960();

    if (v6)
    {
      v7 = sub_2287277CC(v4, v5);

      return v7;
    }

    return 0;
  }

  v9 = v1;
  sub_228703004(0, &qword_280DE3638, 0x277CCD720);
  v10 = sub_2287CB7E0();
  v11 = -1 << *(v3 + 32);
  v12 = v10 & ~v11;
  if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return 0;
  }

  v13 = ~v11;
  while (1)
  {
    v14 = *(*(v3 + 48) + 8 * v12);
    v15 = sub_2287CB7F0();

    if (v15)
    {
      break;
    }

    v12 = (v12 + 1) & v13;
    if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v9;
  v19 = *v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_228727C3C(&qword_280DE18E8, &qword_280DE3638, 0x277CCD720, &qword_280DE3630);
    v17 = v19;
  }

  v18 = *(*(v17 + 48) + 8 * v12);
  sub_228729268(v12);
  result = v18;
  *v9 = v19;
  return result;
}

uint64_t sub_2287263B4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_22872C540(0, &qword_280DDFE80, sub_22872C4EC, MEMORY[0x277D121B8], MEMORY[0x277D84098]);
  result = sub_2287CB9D0();
  v5 = result;
  if (*(v3 + 16))
  {
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
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      sub_2287CBD80();
      _s14HealthPlatform4FeedC4KindO0aB4CoreE13reSectionNameSSvg_0();
      sub_2287CB290();

      result = sub_2287CBDB0();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_22872664C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_22872C6F4(0, &qword_280DE35C8, MEMORY[0x277D837D0], MEMORY[0x277D837E0], MEMORY[0x277D84098]);
  result = sub_2287CB9D0();
  v5 = result;
  if (*(v3 + 16))
  {
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
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_2287CBD80();
      sub_2287CB290();
      result = sub_2287CBDB0();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2287268CC(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, unint64_t *a5)
{
  v6 = v5;
  v7 = *v5;
  sub_22872C854(0, a2, a3, a4, a5);
  result = sub_2287CB9D0();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 56);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    v16 = result + 56;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = *(*(v7 + 48) + 8 * (v18 | (v10 << 6)));
      result = sub_2287CB7E0();
      v22 = -1 << *(v9 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v16 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v16 + 8 * v24);
          if (v28 != -1)
          {
            v17 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v23) & ~*(v16 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v21;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v7 + 32);
    if (v29 >= 64)
    {
      bzero((v7 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v29;
    }

    *(v7 + 16) = 0;
  }

  *v6 = v9;
  return result;
}

uint64_t sub_228726AE8(uint64_t a1)
{
  v2 = v1;
  v36 = sub_2287C9B20();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_22872C3A4(0);
  result = sub_2287CB9D0();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_22872AD74(&qword_280DE3430, MEMORY[0x277D11E28], MEMORY[0x277D11E30]);
      result = sub_2287CB1B0();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_228726E38(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_22872C540(0, &unk_280DDFE88, sub_22872C350, MEMORY[0x277D11E90], MEMORY[0x277D84098]);
  result = sub_2287CB9D0();
  v5 = result;
  if (*(v3 + 16))
  {
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
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_2287CBD80();
      sub_2287C9C90();
      result = sub_2287CBDB0();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2287270B4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_22872C62C(0);
  result = sub_2287CB9D0();
  v5 = result;
  if (*(v3 + 16))
  {
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
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_2287CBD80();
      MEMORY[0x22AABF460](v17);
      result = sub_2287CBDB0();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t *sub_2287272F8(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v31 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v28 = v11 + 1;
          }

          else
          {
            v28 = (a5[2] + 64) >> 6;
          }

          a5[3] = v28 - 1;
          a5[4] = 0;

          return sub_2287B4B24(v31, a2, v30, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        sub_2287CBD80();

        sub_2287CB290();
        v19 = sub_2287CBDB0();
        v20 = -1 << *(a3 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v24 = (*(a3 + 48) + 16 * v21);
      if (*v24 != v18 || v24[1] != v17)
      {
        v26 = ~v20;
        while ((sub_2287CBD00() & 1) == 0)
        {
          v21 = (v21 + 1) & v26;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v27 = (*(a3 + 48) + 16 * v21);
          if (*v27 == v18 && v27[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v31[v22];
      v31[v22] = v10 & ~v23;
    }

    while ((v10 & v23) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v30 != 1)
      {
        continue;
      }

      return MEMORY[0x277D84FA0];
    }

    return result;
  }
}

void sub_228727530(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = a5;
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v33 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        if ((*v5 & 0x8000000000000000) != 0)
        {
          if (!sub_2287CB950())
          {
            goto LABEL_30;
          }

          sub_228703004(0, &qword_280DE3638, 0x277CCD720);
          swift_dynamicCast();
          v12 = v34;
          if (!v34)
          {
            goto LABEL_30;
          }
        }

        else
        {
          v9 = v5[3];
          v10 = v5[4];
          if (!v10)
          {
            v13 = (v5[2] + 64) >> 6;
            if (v13 <= v9 + 1)
            {
              v14 = v9 + 1;
            }

            else
            {
              v14 = (v5[2] + 64) >> 6;
            }

            v15 = v14 - 1;
            while (1)
            {
              v11 = v9 + 1;
              if (__OFADD__(v9, 1))
              {
                break;
              }

              if (v11 >= v13)
              {
                v12 = 0;
                v16 = 0;
                goto LABEL_18;
              }

              v10 = *(v5[1] + 8 * v11);
              ++v9;
              if (v10)
              {
                goto LABEL_17;
              }
            }

            __break(1u);
            goto LABEL_32;
          }

          v11 = v5[3];
LABEL_17:
          v16 = (v10 - 1) & v10;
          v12 = *(*(*v5 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
          v17 = v12;
          v15 = v11;
LABEL_18:
          v5[3] = v15;
          v5[4] = v16;
          if (!v12)
          {
LABEL_30:

            sub_2287B5088(a1, a2, v30, a3);
            return;
          }
        }

        v18 = sub_2287CB7E0();
        v19 = -1 << *(a3 + 32);
        v20 = v18 & ~v19;
        v21 = v20 >> 6;
        v22 = 1 << v20;
        if (((1 << v20) & *(v33 + 8 * (v20 >> 6))) == 0)
        {
          goto LABEL_3;
        }

        sub_228703004(0, &qword_280DE3638, 0x277CCD720);
        v23 = *(*(a3 + 48) + 8 * v20);
        v24 = sub_2287CB7F0();

        if (v24)
        {
          break;
        }

        v25 = ~v19;
        while (1)
        {
          v20 = (v20 + 1) & v25;
          v21 = v20 >> 6;
          v22 = 1 << v20;
          if (((1 << v20) & *(v33 + 8 * (v20 >> 6))) == 0)
          {
            break;
          }

          v26 = *(*(a3 + 48) + 8 * v20);
          v27 = sub_2287CB7F0();

          if (v27)
          {
            goto LABEL_24;
          }
        }

LABEL_3:

        v5 = a5;
      }

LABEL_24:

      v28 = a1[v21];
      a1[v21] = v28 & ~v22;
      v5 = a5;
    }

    while ((v28 & v22) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_32:
      __break(1u);
      return;
    }

    if (v30 != 1)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_2287277CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  v4 = sub_2287CB920();
  v5 = swift_unknownObjectRetain();
  v6 = sub_2287252A0(v5, v4, &qword_280DE18E8, &qword_280DE3638, 0x277CCD720, &qword_280DE3630);
  v15 = v6;

  v7 = sub_2287CB7E0();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    sub_228703004(0, &qword_280DE3638, 0x277CCD720);
    while (1)
    {
      v11 = *(*(v6 + 48) + 8 * v9);
      v12 = sub_2287CB7F0();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v13 = *(*(v6 + 48) + 8 * v9);
  sub_228729268(v9);
  result = sub_2287CB7F0();
  if (result)
  {
    *v3 = v15;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_228727954()
{
  v1 = v0;
  sub_22872C540(0, &qword_280DDFE80, sub_22872C4EC, MEMORY[0x277D121B8], MEMORY[0x277D84098]);
  v2 = *v0;
  v3 = sub_2287CB9C0();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_228727AC0()
{
  v1 = v0;
  sub_22872C6F4(0, &qword_280DE35C8, MEMORY[0x277D837D0], MEMORY[0x277D837E0], MEMORY[0x277D84098]);
  v2 = *v0;
  v3 = sub_2287CB9C0();
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
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_228727C3C(unint64_t *a1, unint64_t *a2, void *a3, unint64_t *a4)
{
  v5 = v4;
  sub_22872C854(0, a1, a2, a3, a4);
  v6 = *v4;
  v7 = sub_2287CB9C0();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 56 + 8 * v10)
    {
      result = memmove(result, (v6 + 56), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_17:
        v21 = v18 | (v12 << 6);
        v22 = *(*(v6 + 48) + 8 * v21);
        *(*(v8 + 48) + 8 * v21) = v22;
        result = v22;
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_19;
      }

      v20 = *(v6 + 56 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v5 = v8;
  }

  return result;
}

void *sub_228727D90()
{
  v1 = v0;
  v2 = sub_2287C9B20();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22872C3A4(0);
  v6 = *v0;
  v7 = sub_2287CB9C0();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 56 + 8 * v10)
    {
      result = memmove(result, (v6 + 56), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_21;
      }

      v19 = *(v6 + 56 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v8;
  }

  return result;
}

id sub_228727FB8()
{
  v1 = v0;
  sub_22872C540(0, &unk_280DDFE88, sub_22872C350, MEMORY[0x277D11E90], MEMORY[0x277D84098]);
  v2 = *v0;
  v3 = sub_2287CB9C0();
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
    v10 = *(v2 + 56);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_228728134()
{
  v1 = v0;
  sub_22872C62C(0);
  v2 = *v0;
  v3 = sub_2287CB9C0();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

uint64_t sub_228728268(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_22872C540(0, &qword_280DDFE80, sub_22872C4EC, MEMORY[0x277D121B8], MEMORY[0x277D84098]);
  result = sub_2287CB9D0();
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
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      sub_2287CBD80();
      _s14HealthPlatform4FeedC4KindO0aB4CoreE13reSectionNameSSvg_0();
      sub_2287CB290();

      result = sub_2287CBDB0();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
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
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_2287284D0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_22872C6F4(0, &qword_280DE35C8, MEMORY[0x277D837D0], MEMORY[0x277D837E0], MEMORY[0x277D84098]);
  result = sub_2287CB9D0();
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
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_2287CBD80();

      sub_2287CB290();
      result = sub_2287CBDB0();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_228728728(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, unint64_t *a5)
{
  v6 = v5;
  v7 = *v5;
  sub_22872C854(0, a2, a3, a4, a5);
  result = sub_2287CB9D0();
  v9 = result;
  if (*(v7 + 16))
  {
    v28 = v5;
    v10 = 0;
    v11 = 1 << *(v7 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v7 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(*(v7 + 48) + 8 * (v17 | (v10 << 6)));
      result = sub_2287CB7E0();
      v21 = -1 << *(v9 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v9 + 48) + 8 * v16) = v20;
      ++*(v9 + 16);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v14)
      {

        v6 = v28;
        goto LABEL_26;
      }

      v19 = *(v7 + 56 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v6 = v9;
  }

  return result;
}

uint64_t sub_228728930(uint64_t a1)
{
  v2 = v1;
  v33 = sub_2287C9B20();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_22872C3A4(0);
  v7 = sub_2287CB9D0();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_22872AD74(&qword_280DE3430, MEMORY[0x277D11E28], MEMORY[0x277D11E30]);
      result = sub_2287CB1B0();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_228728C40(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_22872C540(0, &unk_280DDFE88, sub_22872C350, MEMORY[0x277D11E90], MEMORY[0x277D84098]);
  result = sub_2287CB9D0();
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
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      sub_2287CBD80();
      v17 = v16;
      sub_2287C9C90();
      result = sub_2287CBDB0();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_228728E90(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_22872C62C(0);
  result = sub_2287CB9D0();
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
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      sub_2287CBD80();
      MEMORY[0x22AABF460](v16);
      result = sub_2287CBDB0();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
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
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

unint64_t sub_2287290A4(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_2287CB8A0();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_2287CBD80();

        sub_2287CB290();
        v10 = sub_2287CBDB0();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_228729268(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_2287CB8A0();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        v11 = sub_2287CB7E0();

        v12 = v11 & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = *(v3 + 48);
            v16 = (v15 + 8 * v2);
            v17 = (v15 + 8 * v6);
            if (v2 != v6 || v16 >= v17 + 1)
            {
              *v16 = *v17;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_228729408(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_2287263B4(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_228727954();
      goto LABEL_16;
    }

    sub_228728268(v7 + 1);
  }

  v9 = *v3;
  sub_2287CBD80();
  _s14HealthPlatform4FeedC4KindO0aB4CoreE13reSectionNameSSvg_0();
  sub_2287CB290();

  result = sub_2287CBDB0();
  v10 = -1 << *(v9 + 32);
  a2 = result & ~v10;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      v12 = _s14HealthPlatform4FeedC4KindO0aB4CoreE13reSectionNameSSvg_0();
      v14 = v13;
      if (v12 == _s14HealthPlatform4FeedC4KindO0aB4CoreE13reSectionNameSSvg_0() && v14 == v15)
      {
        goto LABEL_19;
      }

      v17 = sub_2287CBD00();

      if (v17)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v18 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + a2) = v6;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v18 + 16) = v21;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = sub_2287CBD20();
  __break(1u);
  return result;
}

uint64_t sub_2287295E0(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_22872664C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_228727AC0();
      goto LABEL_16;
    }

    sub_2287284D0(v8 + 1);
  }

  v10 = *v4;
  sub_2287CBD80();
  sub_2287CB290();
  result = sub_2287CBDB0();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_2287CBD00();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_2287CBD20();
  __break(1u);
  return result;
}

uint64_t sub_228729760(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_2287C9B20();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_228726AE8(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_228727D90();
      goto LABEL_12;
    }

    sub_228728930(v10 + 1);
  }

  v12 = *v3;
  sub_22872AD74(&qword_280DE3430, MEMORY[0x277D11E28], MEMORY[0x277D11E30]);
  v13 = sub_2287CB1B0();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_22872AD74(&qword_280DE3428, MEMORY[0x277D11E28], MEMORY[0x277D11E38]);
      v21 = sub_2287CB200();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_2287CBD20();
  __break(1u);
  return result;
}

void sub_228729A04(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_228726E38(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      sub_228727FB8();
      goto LABEL_12;
    }

    sub_228728C40(v7 + 1);
  }

  v9 = *v3;
  sub_2287CBD80();
  sub_2287C9C90();
  v10 = sub_2287CBDB0();
  v11 = -1 << *(v9 + 32);
  a2 = v10 & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    do
    {
      v13 = *(*(v9 + 48) + 8 * a2);
      v14 = sub_2287C9C80();

      if (v14)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v15 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + 8 * a2) = a1;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v15 + 16) = v18;
    return;
  }

  __break(1u);
LABEL_15:
  sub_2287CBD20();
  __break(1u);
}

void sub_228729B74(uint64_t a1, unint64_t a2, char a3, unint64_t *a4, unint64_t *a5, void *a6, unint64_t *a7)
{
  v10 = *(*v7 + 16);
  v11 = *(*v7 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v12 = a5;
    v13 = a6;
    sub_2287268CC(v10 + 1, a4, a5, a6, a7);
  }

  else
  {
    if (v11 > v10)
    {
      sub_228727C3C(a4, a5, a6, a7);
      goto LABEL_12;
    }

    v12 = a5;
    v13 = a6;
    sub_228728728(v10 + 1, a4, a5, a6, a7);
  }

  v14 = *v7;
  v15 = sub_2287CB7E0();
  v16 = -1 << *(v14 + 32);
  a2 = v15 & ~v16;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    sub_228703004(0, v12, v13);
    do
    {
      v18 = *(*(v14 + 48) + 8 * a2);
      v19 = sub_2287CB7F0();

      if (v19)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v20 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v20 + 48) + 8 * a2) = a1;
  v21 = *(v20 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v20 + 16) = v23;
    return;
  }

  __break(1u);
LABEL_15:
  sub_2287CBD20();
  __break(1u);
}

void sub_228729D1C(uint64_t result, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2287270B4(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_228728134();
      a2 = v7;
      goto LABEL_12;
    }

    sub_228728E90(v5 + 1);
  }

  v8 = *v3;
  sub_2287CBD80();
  MEMORY[0x22AABF460](result);
  v9 = sub_2287CBDB0();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    v12 = v9 & ~v10;
    type metadata accessor for HKDisplayCategoryIdentifier(0);
    a2 = v12;
    while (*(*(v8 + 48) + 8 * a2) != result)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = result;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return;
  }

  __break(1u);
LABEL_15:
  sub_2287CBD20();
  __break(1u);
}

void *sub_228729E78(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + (v14 | (v9 << 6)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_228729F74(void *result, void *a2, uint64_t a3, uint64_t a4)
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
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_22872A0CC(void *result, void *a2, uint64_t a3, uint64_t a4)
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
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 48) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}