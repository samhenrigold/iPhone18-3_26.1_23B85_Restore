uint64_t sub_1C49C9010(uint64_t a1)
{
  v1 = 1;
  switch(*(a1 + 16))
  {
    case 1:
      sub_1C44044FC();
      goto LABEL_6;
    case 2:
      goto LABEL_7;
    case 3:
    case 6:
      sub_1C4405CE0();
      goto LABEL_6;
    case 4:
      sub_1C440AC5C();
      sub_1C441DD90();
      goto LABEL_6;
    case 5:
      sub_1C44070E4();
      goto LABEL_6;
    default:
LABEL_6:
      v1 = sub_1C4F02938();
LABEL_7:

      return v1 & 1;
  }
}

uint64_t sub_1C49C9114()
{
  sub_1C44044FC();
  switch(*(v0 + 16))
  {
    case 1:
      v1 = 1;
      goto LABEL_8;
    case 2:
      sub_1C4408D0C();
      goto LABEL_7;
    case 3:
    case 6:
      sub_1C4405CE0();
      goto LABEL_7;
    case 4:
      sub_1C441DD90();
      sub_1C440AC5C();
      goto LABEL_7;
    case 5:
      sub_1C44070E4();
      goto LABEL_7;
    default:
LABEL_7:
      v1 = sub_1C4F02938();
LABEL_8:

      return v1 & 1;
  }
}

uint64_t sub_1C49C9234(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1C45E872C(a1, a2, a3);
  }

  return a1;
}

unint64_t sub_1C49C9248()
{
  result = qword_1EDDEFF80;
  if (!qword_1EDDEFF80)
  {
    sub_1C4572308(&qword_1EC0C0CE0, &unk_1C4F40610);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDEFF80);
  }

  return result;
}

uint64_t sub_1C49C92AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C49C936C(uint64_t a1)
{
  if (a1)
  {
    v2 = a1;
  }

  else
  {
    sub_1C456902C(&qword_1EC0B8B00, &qword_1C4F0DF30);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1C4F0D130;
    v3 = type metadata accessor for StoredLocationVisitSignal();
    v4 = swift_allocObject();
    *(v4 + 16) = 0;
    *(v4 + 24) = 0;
    *(v2 + 56) = v3;
    *(v2 + 64) = sub_1C49C9C30(qword_1EDDF2F08, 255, type metadata accessor for StoredLocationVisitSignal, &unk_1C4F55B8C);
    *(v2 + 32) = v4;
  }

  *(v1 + 16) = v2;
  return v1;
}

uint64_t sub_1C49C9438(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4[2] = a1;
  v4[3] = sub_1C49C2D4C(sub_1C49C9B68, v4, v2);
  v4[4] = sub_1C49C96C8;
  v4[5] = 0;

  sub_1C456902C(&qword_1EC0BDB40, &unk_1C4F30E20);
  sub_1C456902C(&qword_1EC0B8B40, &unk_1C4F0DF70);
  sub_1C4401CBC(qword_1EDDF3168, &qword_1EC0BDB40, &unk_1C4F30E20, &protocol conformance descriptor for OrderedMergeAsyncSequence<A>);
  return sub_1C4F02848();
}

void sub_1C49C954C(void *a1@<X0>, void *a3@<X8>)
{
  sub_1C4409678(a1, a1[3]);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v10 - v7;
  sub_1C4AFD318();
  if (v3)
  {

    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    AsyncSequence.toAnySessionAsyncSequence()(AssociatedTypeWitness, *(AssociatedConformanceWitness + 8), &v10);
    *a3 = v10;
    (*(v6 + 8))(v8, AssociatedTypeWitness);
  }
}

uint64_t sub_1C49C96C8(void *a1, void *a2)
{
  v4 = sub_1C4EF9CD8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - v9;
  v11 = a1[3];
  v12 = a1[4];
  sub_1C4409678(a1, v11);
  (*(v12 + 16))(v11, v12);
  v13 = a2[3];
  v14 = a2[4];
  sub_1C4409678(a2, v13);
  (*(v14 + 16))(v13, v14);
  LOBYTE(a1) = sub_1C4EF9C18();
  v15 = *(v5 + 8);
  v15(v7, v4);
  v15(v10, v4);
  return a1 & 1;
}

uint64_t sub_1C49C9848(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C49C986C, 0, 0);
}

uint64_t sub_1C49C986C()
{
  sub_1C49C98CC(*(v0 + 24), *(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C49C98CC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  sub_1C4409678(a1, v4);
  v6 = *(v5 + 32);
  v18[3] = swift_getAssociatedTypeWitness();
  sub_1C4422F90(v18);
  v6(v4, v5);
  sub_1C442B870(v18, v17);
  if (swift_dynamicCast())
  {
    sub_1C49C2CB8(__src);
    sub_1C442B870(v18, v17);
    swift_dynamicCast();
    v7 = a1[3];
    v8 = a1[4];
    sub_1C4409678(a1, v7);
    (*(v8 + 16))(v7, v8);
    v9 = a1[3];
    v10 = a1[4];
    sub_1C4409678(a1, v9);
    v11 = *(v10 + 24);
    v12 = sub_1C456902C(&qword_1EC0B8B40, &unk_1C4F0DF70);
    v11(v9, v10);
    memcpy((a2 + *(v12 + 32)), __src, 0x50uLL);
    v13 = a2;
    v14 = 0;
    v15 = v12;
  }

  else
  {
    v15 = sub_1C456902C(&qword_1EC0B8B40, &unk_1C4F0DF70);
    v13 = a2;
    v14 = 1;
  }

  sub_1C440BAA8(v13, v14, 1, v15);
  return sub_1C440962C(v18);
}

uint64_t sub_1C49C9B10(uint64_t a1, uint64_t a2)
{
  result = sub_1C49C9C30(qword_1EDDF3408, a2, type metadata accessor for LifeEventLocationProvider, &unk_1C4F406EC);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C49C9B84(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1C44A7DA0;

  return sub_1C49C9848(a1, a2, v2);
}

uint64_t sub_1C49C9C30(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1C49C9C78(uint64_t a1, _BYTE *a2)
{
  *(v3 + 96) = a1;
  *(v3 + 104) = v2;
  v5 = type metadata accessor for Fuser(0);
  sub_1C43FBD18(v5);
  *(v3 + 112) = sub_1C43FBE7C();
  v6 = type metadata accessor for Linker(0);
  sub_1C43FBD18(v6);
  *(v3 + 120) = sub_1C43FBE7C();
  v7 = type metadata accessor for Source(0);
  *(v3 + 128) = v7;
  sub_1C43FBD18(v7);
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 144) = swift_task_alloc();
  v8 = type metadata accessor for PhaseStores(0);
  sub_1C43FBD18(v8);
  *(v3 + 152) = swift_task_alloc();
  *(v3 + 160) = swift_task_alloc();
  v9 = *(type metadata accessor for Configuration(0) - 8);
  *(v3 + 168) = v9;
  *(v3 + 176) = *(v9 + 64);
  *(v3 + 184) = sub_1C43FBE7C();
  *(v3 + 233) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1C49C9DEC, 0, 0);
}

uint64_t sub_1C49C9DEC()
{
  v1 = *(v0 + 233);
  v2 = *(v0 + 184);
  v3 = *(v0 + 168);
  v4 = *(v0 + 96);
  sub_1C4430B24(v4, v2, type metadata accessor for Configuration);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  *(v0 + 192) = v6;
  sub_1C4409954(v2, v6 + v5);
  type metadata accessor for LifeEventDeltaDateRangeProvider();
  v7 = swift_allocObject();
  *(v0 + 200) = v7;
  *(v7 + 16) = sub_1C49CA570;
  *(v7 + 24) = v6;
  type metadata accessor for LifeEventProvider();
  sub_1C4430B24(v4, v2, type metadata accessor for Configuration);

  v8 = sub_1C49CA620(v2);
  type metadata accessor for LifeEventDeltaProvider();
  v9 = swift_allocObject();
  *(v0 + 208) = v9;
  *(v9 + 16) = v7;
  *(v9 + 24) = v8;
  switch(v1)
  {
    case 2:

      goto LABEL_4;
    default:
      v10 = sub_1C4F02938();

      if (v10)
      {
LABEL_4:
        v11 = *(v0 + 96);
        v12 = type metadata accessor for LifeEventDeltaSourceIngestor(0);
        *(v0 + 40) = v12;
        *(v0 + 48) = sub_1C49CA5D8(&qword_1EDDDFD20, type metadata accessor for LifeEventDeltaSourceIngestor, &unk_1C4F40B00);
        v13 = sub_1C4422F90((v0 + 16));
        sub_1C4419C4C();
        sub_1C4430B24(v11, v14 + v15, v16);
        v17 = qword_1EDDFED08;

        if (v17 != -1)
        {
          sub_1C442CDF0(&qword_1EDDFED08);
        }

        v18 = sub_1C442B738(*(v0 + 128), qword_1EDDFED10);
        sub_1C440739C(v18);
        *(v13 + *(v12 + 20)) = 2;
        *(v13 + *(v12 + 28)) = v9;
      }

      else
      {
        v19 = *(v0 + 160);
        sub_1C4419C4C();
        sub_1C4430B24(v20, v19, v21);
        *(v0 + 40) = type metadata accessor for LifeEventSourceIngestor(0);
        *(v0 + 48) = sub_1C49CA5D8(&qword_1EDDE1EA8, type metadata accessor for LifeEventSourceIngestor, &unk_1C4F40B28);
        sub_1C4422F90((v0 + 16));
        sub_1C49CE18C();
      }

      sub_1C4419C4C();
      sub_1C4430B24(v22, v23, v24);
      if (qword_1EDDFED08 != -1)
      {
        sub_1C442CDF0(&qword_1EDDFED08);
      }

      v25 = *(v0 + 233);
      v26 = *(v0 + 144);
      v27 = *(v0 + 152);
      v28 = *(v0 + 136);
      v29 = *(v0 + 96);
      v30 = sub_1C442B738(*(v0 + 128), qword_1EDDFED10);
      *(v0 + 216) = v30;
      sub_1C4430B24(v30, v26, type metadata accessor for Source);
      sub_1C442E860(v0 + 16, v0 + 56);
      sub_1C4430B24(v30, v28, type metadata accessor for Source);
      sub_1C4419C4C();
      sub_1C4430B24(v29, v27, v31);
      *(v0 + 232) = v25;
      v32 = swift_task_alloc();
      *(v0 + 224) = v32;
      *v32 = v0;
      v32[1] = sub_1C49CA204;

      return Linker.init(source:stores:pipelineType:)();
  }
}

uint64_t sub_1C49CA204()
{

  return MEMORY[0x1EEE6DFA0](sub_1C49CA300, 0, 0);
}

uint64_t sub_1C49CA300()
{
  v19 = v0;
  v1 = *(v0 + 233);
  v2 = *(v0 + 152);
  v3 = *(v0 + 160);
  v4 = *(v0 + 112);
  v15 = *(v0 + 144);
  v16 = *(v0 + 120);
  v5 = *(v0 + 96);
  v17 = *(v0 + 104);
  sub_1C440739C(*(v0 + 216));
  sub_1C4419C4C();
  sub_1C4430B24(v5, v2, v6);
  Fuser.init(source:stores:pipelineType:)();

  sub_1C44857CC(v5);
  sub_1C440962C((v0 + 16));
  v18 = v1;
  v7 = *(v0 + 80);
  v8 = *(v0 + 88);
  v9 = sub_1C4418280(v0 + 56, v7);
  v10 = *(v7 - 8);
  v11 = sub_1C43FBE7C();
  (*(v10 + 16))(v11, v9, v7);
  v12 = sub_1C4487AD8(v3, v15, v11, v16, v4, &v18, v17, v7, v8);
  sub_1C440962C((v0 + 56));

  v13 = *(v0 + 8);

  return v13(v12);
}

uint64_t type metadata accessor for LifeEventPhase(uint64_t a1)
{
  result = qword_1EDDF7BF0;
  if (!qword_1EDDF7BF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C49CA570@<X0>(char *a1@<X8>)
{
  v3 = type metadata accessor for Configuration(0);
  sub_1C43FBD18(v3);
  return sub_1C49C2E0C(v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80)), a1);
}

uint64_t sub_1C49CA5D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_1C49CA620(uint64_t a1)
{
  v2 = type metadata accessor for Configuration(0);
  v3 = sub_1C43FBD18(v2);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  v6 = v5 - v4;
  sub_1C44F920C();
  if (static NSUserDefaults.mockLifeEvents.getter())
  {
    v7 = type metadata accessor for LifeEventActivityProviderDemo();
    v8 = swift_allocObject();
    v9 = &unk_1EC0C0D28;
    v10 = type metadata accessor for LifeEventActivityProviderDemo;
    v11 = &unk_1C4F4046C;
  }

  else
  {
    sub_1C44EE514(a1, v6, type metadata accessor for Configuration);
    v7 = type metadata accessor for LifeEventActivityProvider();
    swift_allocObject();
    v8 = LifeEventActivityProvider.init(config:activitySignals:)(v6, 0);
    v9 = &unk_1EDDF34D8;
    v10 = type metadata accessor for LifeEventActivityProvider;
    v11 = &unk_1C4F401C0;
  }

  v25[3] = v7;
  v25[4] = sub_1C4498F00(v9, v10, v11);
  v25[0] = v8;
  v12 = type metadata accessor for LifeEventLocationProvider();
  swift_allocObject();
  v13 = sub_1C49C936C(0);
  sub_1C442E860(v25, v24);
  v23[3] = v12;
  v14 = sub_1C4498F00(&qword_1EDDF3400, type metadata accessor for LifeEventLocationProvider, &unk_1C4F40708);
  v23[4] = v14;
  v23[0] = v13;
  type metadata accessor for LifeEventProvider();
  v15 = swift_allocObject();
  sub_1C4418280(v23, v12);
  sub_1C43FCE64();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBCC4();
  v19 = (v18 - v17);
  (*(v20 + 16))(v18 - v17);
  v21 = *v19;
  v15[5] = v12;
  v15[6] = v14;
  v15[2] = v21;
  sub_1C441D670(v24, (v15 + 7));
  sub_1C440962C(v23);
  sub_1C4467948(a1);
  sub_1C440962C(v25);
  return v15;
}

uint64_t sub_1C49CA8D0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v7 = v2[5];
  v6 = v2[6];
  sub_1C4409678(v2 + 2, v7);
  v8 = *(v6 + 8);
  swift_getAssociatedTypeWitness();
  sub_1C43FBCE0();
  v10 = MEMORY[0x1EEE9AC00](v9);
  result = (*(v8 + 24))(a1, v7, v8, v10);
  if (!v3)
  {
    sub_1C456902C(&qword_1EC0C0D10, &qword_1C4F40928);
    if (swift_dynamicCast())
    {
      sub_1C441D670(v21, v22);
      v13 = v2[10];
      v12 = v2[11];
      sub_1C4409678(v2 + 7, v13);
      v14 = *(v12 + 8);
      sub_1C440F8F8();
      swift_getAssociatedTypeWitness();
      sub_1C43FBCE0();
      v16 = MEMORY[0x1EEE9AC00](v15);
      (*(v14 + 24))(a1, v13, v14, v16);
      sub_1C456902C(&qword_1EC0C0D20, &unk_1C4F40930);
      if (swift_dynamicCast())
      {
        sub_1C441D670(v20, v21);
        sub_1C442E860(v22, v20);
        sub_1C442E860(v21, v19);
        sub_1C49CAB90(v20, v19, a2);
        sub_1C440962C(v21);
      }

      else
      {
        sub_1C49CCA34();
        swift_allocError();
        *v18 = 1;
        swift_willThrow();
      }

      return sub_1C440962C(v22);
    }

    else
    {
      sub_1C49CCA34();
      swift_allocError();
      *v17 = 0;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1C49CAB90@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  a3[10] = MEMORY[0x1E69E7CC0];
  sub_1C4409678(a1, a1[3]);
  sub_1C43FCE64();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBCC4();
  v8 = sub_1C4410F7C(v7);
  v9(v8);
  sub_1C440F8F8();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  a3[3] = AssociatedTypeWitness;
  a3[4] = sub_1C4404508(AssociatedTypeWitness, v11, AssociatedTypeWitness);
  sub_1C4422F90(a3);
  sub_1C4F019A8();
  sub_1C4409678(a2, a2[3]);
  sub_1C43FCE64();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBCC4();
  v14 = sub_1C4410F7C(v13);
  v15(v14);
  sub_1C440F8F8();
  v16 = swift_getAssociatedTypeWitness();
  a3[8] = v16;
  a3[9] = sub_1C4404508(v16, v17, v16);
  sub_1C4422F90(a3 + 5);
  sub_1C4F019A8();
  sub_1C440962C(a2);
  return sub_1C440962C(a1);
}

uint64_t sub_1C49CAD98(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_1C49CADD8(uint64_t result, int a2, int a3)
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

uint64_t sub_1C49CAE60()
{
  sub_1C43FBCD4();
  v1[10] = v2;
  v1[11] = v0;
  v3 = sub_1C456902C(&qword_1EC0C0D08, &unk_1C4F55BC0);
  sub_1C43FBD18(v3);
  v1[12] = sub_1C43FBE7C();
  v4 = sub_1C456902C(&qword_1EC0B8B40, &unk_1C4F0DF70);
  v1[13] = v4;
  sub_1C43FCF7C(v4);
  v1[14] = v5;
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v6 = sub_1C456902C(&qword_1EC0C0C10, &qword_1C4F40270);
  sub_1C43FBD18(v6);
  v1[23] = sub_1C43FBE7C();
  v7 = sub_1C456902C(&qword_1EC0B8420, &unk_1C4F0DDC0);
  v1[24] = v7;
  sub_1C43FBD18(v7);
  v1[25] = sub_1C43FBE7C();

  return MEMORY[0x1EEE6DFA0](sub_1C49CAFFC, 0, 0);
}

uint64_t sub_1C49CAFFC()
{
  v1 = sub_1C4418280(v0[11] + 40, *(v0[11] + 64));
  v0[26] = sub_1C440BDA0(v1, v2, v3, MEMORY[0x1E69E85C8]);
  v4 = sub_1C4F01F48();
  v0[27] = v4;
  sub_1C43FCF7C(v4);
  v0[28] = v5;
  v6 = sub_1C43FBE7C();
  v0[29] = v6;
  swift_task_alloc();
  sub_1C43FBE70();
  v0[30] = v7;
  *v7 = v8;
  v7[1] = sub_1C49CB124;

  return MEMORY[0x1EEE6D8C8](v6);
}

uint64_t sub_1C49CB124()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v2 = *v1;
  sub_1C43FBDAC();
  *v3 = v2;

  if (v0)
  {

    v4 = sub_1C49CBF98;
  }

  else
  {
    v4 = sub_1C49CB22C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1C49CB22C()
{
  v1 = v0[29];
  v2 = v0[26];
  if (sub_1C44157D4(v1, 1, v2) == 1)
  {
    (*(v0[28] + 8))(v1, v0[27]);

    sub_1C44102A4(v0[23], v3, v4, v0[24]);
LABEL_5:
    v8 = v0[10];
    sub_1C4420C3C(v0[23], &qword_1EC0C0C10, &qword_1C4F40270);
    v9 = sub_1C456902C(&qword_1EC0B8D40, &unk_1C4F0F040);
    sub_1C44102A4(v8, v10, v11, v9);
    sub_1C44073C4();

    sub_1C43FC1B0();

    return v12();
  }

  v0[5] = v2;
  v5 = sub_1C4422F90(v0 + 2);
  (*(*(v2 - 8) + 32))(v5, v1, v2);

  v6 = sub_1C441EDB0();
  sub_1C43FF360(v6);
  if (v7)
  {
    goto LABEL_5;
  }

  v14 = v0[11];
  sub_1C44CD9E0(v0[23], v0[25], &qword_1EC0B8420, &unk_1C4F0DDC0);
  v15 = *(v14 + 80);
  v16 = *(v15 + 16);
  if (v16)
  {
    v55 = v14;
    v17 = v0[25];
    v18 = v0[14];
    v57 = v0[13];
    v19 = *(v0[24] + 28);
    sub_1C4EF9CD8();
    v54 = v15;
    v61 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v20 = v15 + v61;
    v21 = MEMORY[0x1E69E7CC0];
    v22 = *(v18 + 72);
    v59 = v19;
    v60 = MEMORY[0x1E69E7CC0];
    v56 = v17;
    v58 = v22;
    while (1)
    {
      sub_1C4460050(v20, v0[22], &qword_1EC0B8B40, &unk_1C4F0DF70);
      sub_1C4419C64();
      sub_1C4498F00(&qword_1EDDFCD70, v23, MEMORY[0x1E6969548]);
      if ((sub_1C4F01068() & 1) == 0 && (sub_1C4F01068() & 1) == 0)
      {
        break;
      }

      v24 = sub_1C4EF9C08();
      v25 = v0[22];
      if (v24)
      {
        sub_1C4460050(v25, v0[19], &qword_1EC0B8B40, &unk_1C4F0DF70);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C43FCEC0();
          sub_1C458A85C();
          v21 = v39;
        }

        if (*(v21 + 16) >= *(v21 + 24) >> 1)
        {
          sub_1C442FF30();
          v21 = v40;
        }

LABEL_27:
        v22 = &qword_1EC0B8B40;
        v31 = sub_1C4420C3C(v0[22], &qword_1EC0B8B40, &unk_1C4F0DF70);
        sub_1C44174B8(v31, v32, v33, v34, v35, v36, v37, v38, v54, v55, v56, v57, v58, v59, v60, v61);
        goto LABEL_28;
      }

      sub_1C4420C3C(v25, &qword_1EC0B8B40, &unk_1C4F0DF70);
LABEL_28:
      v20 += v22;
      if (!--v16)
      {

        v14 = v55;
        v45 = v60;
        goto LABEL_32;
      }
    }

    sub_1C4460050(v0[22], v0[21], &qword_1EC0B8B40, &unk_1C4F0DF70);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v26 = v60;
    }

    else
    {
      sub_1C43FCEC0();
      sub_1C458A85C();
      v26 = v41;
    }

    v27 = *(v26 + 16);
    if (v27 >= *(v26 + 24) >> 1)
    {
      sub_1C458A85C();
      v26 = v42;
    }

    v28 = v0[21];
    v29 = v0[22];
    v30 = v0[20];
    *(v26 + 16) = v27 + 1;
    v60 = v26;
    sub_1C44CD9E0(v28, v26 + v61 + v27 * v22, &qword_1EC0B8B40, &unk_1C4F0DF70);
    sub_1C4460050(v29, v30, &qword_1EC0B8B40, &unk_1C4F0DF70);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C43FCEC0();
      sub_1C458A85C();
      v21 = v43;
    }

    if (*(v21 + 16) >= *(v21 + 24) >> 1)
    {
      sub_1C442FF30();
      v21 = v44;
    }

    goto LABEL_27;
  }

  v45 = MEMORY[0x1E69E7CC0];
  v21 = MEMORY[0x1E69E7CC0];
LABEL_32:
  *(v14 + 80) = v21;
  v0[31] = v45;
  v0[32] = v21;
  v46 = sub_1C4418280(v0[11], *(v0[11] + 24));
  v0[33] = sub_1C440BDA0(v46, v47, v48, MEMORY[0x1E69E85C8]);
  v49 = sub_1C4F01F48();
  v0[34] = v49;
  sub_1C43FCF7C(v49);
  v0[35] = v50;
  v0[36] = sub_1C43FBE7C();
  swift_task_alloc();
  sub_1C43FBE70();
  v0[37] = v51;
  *v51 = v52;
  v53 = sub_1C44007FC(v51);

  return MEMORY[0x1EEE6D8C8](v53);
}

uint64_t sub_1C49CB7EC()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v2 = *v1;
  sub_1C43FBDAC();
  *v3 = v2;

  if (v0)
  {

    v4 = sub_1C49CC0B4;
  }

  else
  {
    v4 = sub_1C49CB8F4;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1C49CB8F4()
{
  v4 = v1[36];
  v5 = v1[33];
  if (sub_1C44157D4(v4, 1, v5) == 1)
  {
    (*(v1[35] + 8))(v4, v1[34]);

    sub_1C44102A4(v1[12], v6, v7, v1[13]);
LABEL_5:
    sub_1C4420C3C(v1[12], &qword_1EC0C0D08, &unk_1C4F55BC0);
    goto LABEL_6;
  }

  v2 = v1[12];
  v0 = v1[13];
  v1[9] = v5;
  v8 = sub_1C4422F90(v1 + 6);
  (*(*(v5 - 8) + 32))(v8, v4, v5);

  v9 = sub_1C441EDB0();
  sub_1C43FF360(v9);
  if (v10)
  {
    goto LABEL_5;
  }

  sub_1C44CD9E0(v1[12], v1[18], &qword_1EC0B8B40, &unk_1C4F0DF70);
  sub_1C4EF9CD8();
  sub_1C4419C64();
  sub_1C4498F00(v34, v35, MEMORY[0x1E6969548]);
  v36 = sub_1C4F01068();
  if (v36 & 1) != 0 || (sub_1C4F01068())
  {
    v37 = sub_1C4EF9C08();
    v5 = v1[18];
    if (v37)
    {
      v0 = v1[17];
      v38 = v1[14];
      v39 = v1[11];
      v2 = &qword_1EC0B8B40;
      v3 = &unk_1C4F0DF70;
      sub_1C4460050(v1[18], v0, &qword_1EC0B8B40, &unk_1C4F0DF70);
      sub_1C4588C04();
      v40 = *(*(v39 + 80) + 16);
      sub_1C4589838();
      sub_1C4420C3C(v5, &qword_1EC0B8B40, &unk_1C4F0DF70);
      v41 = *(v39 + 80);
      *(v41 + 16) = v40 + 1;
      sub_1C44CD9E0(v0, v41 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v40, &qword_1EC0B8B40, &unk_1C4F0DF70);
      *(v39 + 80) = v41;
LABEL_6:
      v11 = sub_1C441E55C();
      sub_1C43FBCE0();
      v13 = *(v12 + 16);
      v13(v2, v0, v11);
      v14 = sub_1C456902C(&qword_1EC0B8D40, &unk_1C4F0F040);
      v15 = sub_1C440D5D0(v14);
      (v13)(v15);
      sub_1C4419C64();
      v18 = sub_1C4498F00(v16, v17, MEMORY[0x1E6969570]);
      v70 = sub_1C4409F04(v18);
      v71 = v19;
      sub_1C44066FC();
      sub_1C4F02858();
      sub_1C441B9C0();

      sub_1C44066FC();
      sub_1C4405128(v20, v21, v22, v23, v24);
      sub_1C441B9C0();

      v25 = sub_1C49CC31C(v3);

      v26 = (v2 + *(v5 + 32));
      v27 = type metadata accessor for ActivityEventWithLocations(0);
      sub_1C4460050(v0, v26 + *(v27 + 24), &qword_1EC0B8420, &unk_1C4F0DDC0);
      if (qword_1EDDF7888 != -1)
      {
        sub_1C4412018(&qword_1EDDF7888);
      }

      v28 = v1[25];
      v29 = v1[10];
      v30 = type metadata accessor for SourceIdPrefix(0);
      v31 = sub_1C442B738(v30, &qword_1EDE2D5D8);
      sub_1C440AE78(v31);
      sub_1C4420C3C(v28, &qword_1EC0B8420, &unk_1C4F0DDC0);
      *v26 = v70;
      v26[1] = v71;
      v26[2] = v25;
      sub_1C440BAA8(v29, 0, 1, v5);
      sub_1C44073C4();

      sub_1C43FC1B0();
      sub_1C440405C();

      __asm { BRAA            X1, X16 }
    }

    sub_1C4420C3C(v1[18], &qword_1EC0B8B40, &unk_1C4F0DF70);
  }

  else
  {
    sub_1C4460050(v1[18], v1[16], &qword_1EC0B8B40, &unk_1C4F0DF70);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v43 = v1[32];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1C43FCEC0();
      sub_1C458A85C();
      v43 = v65;
    }

    v44 = *(v43 + 16);
    if (v44 >= *(v43 + 24) >> 1)
    {
      sub_1C458A85C();
      v43 = v66;
    }

    v45 = v1[18];
    v47 = v1[15];
    v46 = v1[16];
    v48 = v1[14];
    v49 = v1[11];
    *(v43 + 16) = v44 + 1;
    v50 = (*(v48 + 80) + 32) & ~*(v48 + 80);
    v51 = *(v48 + 72);
    sub_1C44CD9E0(v46, v43 + v50 + v51 * v44, &qword_1EC0B8B40, &unk_1C4F0DF70);
    *(v49 + 80) = v43;
    sub_1C4460050(v45, v47, &qword_1EC0B8B40, &unk_1C4F0DF70);
    v52 = swift_isUniquelyReferenced_nonNull_native();
    v53 = v1[31];
    if ((v52 & 1) == 0)
    {
      sub_1C43FCEC0();
      sub_1C458A85C();
      v53 = v67;
    }

    v54 = *(v53 + 16);
    if (v54 >= *(v53 + 24) >> 1)
    {
      sub_1C458A85C();
      v53 = v68;
    }

    v55 = v1[15];
    sub_1C4420C3C(v1[18], &qword_1EC0B8B40, &unk_1C4F0DF70);
    *(v53 + 16) = v54 + 1;
    sub_1C44CD9E0(v55, v53 + v50 + v54 * v51, &qword_1EC0B8B40, &unk_1C4F0DF70);
    v1[31] = v53;
    v1[32] = v43;
  }

  v56 = sub_1C4418280(v1[11], *(v1[11] + 24));
  v1[33] = sub_1C440BDA0(v56, v57, v58, MEMORY[0x1E69E85C8]);
  v59 = sub_1C4F01F48();
  v1[34] = v59;
  sub_1C43FCF7C(v59);
  v1[35] = v60;
  v1[36] = sub_1C43FBE7C();
  swift_task_alloc();
  sub_1C43FBE70();
  v1[37] = v61;
  *v61 = v62;
  sub_1C44007FC(v61);
  sub_1C440405C();

  return MEMORY[0x1EEE6D8C8](v63);
}

uint64_t sub_1C49CBF98()
{

  sub_1C44102A4(v0[23], v1, v2, v0[24]);
  v3 = v0[10];
  sub_1C4420C3C(v0[23], &qword_1EC0C0C10, &qword_1C4F40270);
  v4 = sub_1C456902C(&qword_1EC0B8D40, &unk_1C4F0F040);
  sub_1C44102A4(v3, v5, v6, v4);
  sub_1C44073C4();

  sub_1C43FC1B0();

  return v7();
}

void sub_1C49CC0B4()
{

  sub_1C44102A4(v2[12], v5, v6, v2[13]);
  sub_1C4420C3C(v2[12], &qword_1EC0C0D08, &unk_1C4F55BC0);
  v7 = sub_1C441E55C();
  sub_1C43FBCE0();
  v9 = *(v8 + 16);
  v9(v3, v1, v7);
  v10 = sub_1C456902C(&qword_1EC0B8D40, &unk_1C4F0F040);
  v11 = sub_1C440D5D0(v10);
  (v9)(v11);
  sub_1C4419C64();
  v14 = sub_1C4498F00(v12, v13, MEMORY[0x1E6969570]);
  v30 = sub_1C4409F04(v14);
  v31 = v15;
  sub_1C44066FC();
  sub_1C4F02858();
  sub_1C441B9C0();

  sub_1C44066FC();
  sub_1C4405128(v16, v17, v18, v19, v20);
  sub_1C441B9C0();

  v21 = sub_1C49CC31C(v4);

  v22 = (v3 + *(v0 + 32));
  v23 = type metadata accessor for ActivityEventWithLocations(0);
  sub_1C4460050(v1, v22 + *(v23 + 24), &qword_1EC0B8420, &unk_1C4F0DDC0);
  if (qword_1EDDF7888 != -1)
  {
    sub_1C4412018(&qword_1EDDF7888);
  }

  v24 = v2[25];
  v25 = v2[10];
  v26 = type metadata accessor for SourceIdPrefix(0);
  v27 = sub_1C442B738(v26, &qword_1EDE2D5D8);
  sub_1C440AE78(v27);
  sub_1C4420C3C(v24, &qword_1EC0B8420, &unk_1C4F0DDC0);
  *v22 = v30;
  v22[1] = v31;
  v22[2] = v21;
  sub_1C440BAA8(v25, 0, 1, v0);
  sub_1C44073C4();

  sub_1C43FC1B0();
  sub_1C440405C();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1C49CC31C(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0B8B40, &unk_1C4F0DF70);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v23 - v5;
  v7 = *(a1 + 16);
  if (!v7)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v8 = &v6[*(v3 + 32)];
  v9 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v10 = MEMORY[0x1E69E7CC0];
  v23 = *(v4 + 72);
  do
  {
    sub_1C4460050(v9, v6, &qword_1EC0B8B40, &unk_1C4F0DF70);
    sub_1C4460050(v8 + 40, &v26, &qword_1EC0B97A0, &qword_1C4F0F7D0);
    v11 = *(&v27 + 1);
    sub_1C4420C3C(&v26, &qword_1EC0B97A0, &qword_1C4F0F7D0);
    if (v11)
    {
      sub_1C4420C3C(v6, &qword_1EC0B8B40, &unk_1C4F0DF70);
    }

    else
    {
      sub_1C480BC20(v8, v24);
      sub_1C4420C3C(v6, &qword_1EC0B8B40, &unk_1C4F0DF70);
      v26 = v24[0];
      v27 = v24[1];
      v28 = v25;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_1C43FCEC0();
        sub_1C458A7F0(v17, v18, v19, v10);
        v10 = v20;
      }

      v13 = *(v10 + 16);
      v12 = *(v10 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1C458A7F0(v12 > 1, v13 + 1, 1, v10);
        v10 = v21;
      }

      *(v10 + 16) = v13 + 1;
      v14 = v10 + 40 * v13;
      v15 = v26;
      v16 = v27;
      *(v14 + 64) = v28;
      *(v14 + 32) = v15;
      *(v14 + 48) = v16;
    }

    v9 += v23;
    --v7;
  }

  while (v7);
  return v10;
}

uint64_t sub_1C49CC554@<X0>(uint64_t a1@<X8>)
{
  sub_1C49CA8C4(a1);

  return sub_1C49855C0(v1);
}

uint64_t sub_1C49CC580()
{
  sub_1C43FBCD4();
  swift_task_alloc();
  sub_1C43FBE70();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_1C49CC610;

  return sub_1C49CAE60();
}

uint64_t sub_1C49CC610()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v1 = *v0;
  sub_1C43FBDAC();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1C49CC6F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1C49CC7C0;

  return (sub_1C4982028)(a1, a2, a3);
}

uint64_t sub_1C49CC7C0()
{
  sub_1C43FBDE4();
  v3 = v2;
  v4 = *v1;
  sub_1C43FBDAC();
  *v5 = v4;

  if (v0)
  {
    **(v3 + 16) = v0;
  }

  v6 = *(v4 + 8);

  return v6();
}

unint64_t sub_1C49CC8D8()
{
  result = qword_1EC0C0CF0;
  if (!qword_1EC0C0CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0CF0);
  }

  return result;
}

unint64_t sub_1C49CC92C()
{
  result = qword_1EC0C0CF8;
  if (!qword_1EC0C0CF8)
  {
    sub_1C4572308(&qword_1EC0B8D40, &unk_1C4F0F040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0CF8);
  }

  return result;
}

unint64_t sub_1C49CC990(uint64_t a1)
{
  result = sub_1C49CC8D8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C49CC9B8(uint64_t a1)
{
  result = sub_1C49CC9E0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C49CC9E0()
{
  result = qword_1EC0C0D00;
  if (!qword_1EC0C0D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0D00);
  }

  return result;
}

unint64_t sub_1C49CCA34()
{
  result = qword_1EC0C0D18;
  if (!qword_1EC0C0D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0D18);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LifeEventProvider.LifeEventProviderError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C49CCB68()
{
  result = qword_1EC0C0D30;
  if (!qword_1EC0C0D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0D30);
  }

  return result;
}

void sub_1C49CCC38()
{
  sub_1C43FBD3C();
  v149 = v1;
  v150 = v2;
  v155 = v3;
  v147 = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v157 = v0;
  v12 = v11;
  v13 = sub_1C456902C(&unk_1EC0C07E0, &unk_1C4F168F0);
  sub_1C43FBD18(v13);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v14);
  v146 = v133 - v15;
  sub_1C43FBE44();
  v145 = sub_1C4EFDE88();
  sub_1C43FCDF8();
  v143 = v16;
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FBD08();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v21);
  v154 = v133 - v22;
  sub_1C43FBE44();
  v144 = sub_1C4EFDE98();
  sub_1C43FCDF8();
  v142 = v23;
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FBCC4();
  v141 = v26 - v25;
  sub_1C43FBE44();
  sub_1C4F00978();
  sub_1C43FCDF8();
  v158 = v28;
  v159 = v27;
  MEMORY[0x1EEE9AC00](v27);
  sub_1C43FBD08();
  v31 = v29 - v30;
  MEMORY[0x1EEE9AC00](v32);
  sub_1C43FBF38();
  v152 = v33;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v34);
  sub_1C43FBF38();
  v148 = v35;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v36);
  v38 = v133 - v37;
  MEMORY[0x1EEE9AC00](v39);
  v41 = v133 - v40;
  sub_1C4F00158();
  v42 = sub_1C4F00968();
  v43 = sub_1C4F01CF8();
  v44 = os_log_type_enabled(v42, v43);
  v45 = &unk_1C4F0C000;
  v153 = v31;
  v156 = v10;
  if (v44)
  {
    v46 = sub_1C43FD084();
    v151 = v38;
    v136 = v12;
    v47 = v46;
    v48 = sub_1C43FFD34();
    v163[0] = v48;
    *v47 = 136315138;
    v160 = v10(0);
    sub_1C456902C(v8, v6);
    v49 = sub_1C4F01198();
    v51 = v8;
    v52 = v6;
    v53 = sub_1C441D828(v49, v50, v163);

    *(v47 + 4) = v53;
    v55 = v158;
    v54 = v159;
    v6 = v52;
    v8 = v51;
    _os_log_impl(&dword_1C43F8000, v42, v43, "<%s deleting life event(s)>", v47, 0xCu);
    sub_1C440962C(v48);
    sub_1C43FFD18();
    v12 = v136;
    v38 = v151;
    sub_1C43FBE2C();

    v56 = v55;
    v45 = &unk_1C4F0C000;
    v57 = *(v56 + 8);
    v57(v41, v54);
  }

  else
  {

    v57 = *(v158 + 8);
    v57(v41, v159);
  }

  if (!v12[2])
  {
    sub_1C4F00158();
    v103 = sub_1C4F00968();
    v104 = sub_1C4F01CF8();
    if (os_log_type_enabled(v103, v104))
    {
      v105 = sub_1C43FD084();
      v106 = sub_1C43FFD34();
      v163[0] = v106;
      *v105 = v45[458];
      v160 = v156(0);
      sub_1C456902C(v8, v6);
      v107 = sub_1C4F01198();
      v109 = sub_1C441D828(v107, v108, v163);

      *(v105 + 4) = v109;
      _os_log_impl(&dword_1C43F8000, v103, v104, "<%s No life events needed to delete>", v105, 0xCu);
      sub_1C440962C(v106);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    v57(v38, v159);
    goto LABEL_18;
  }

  v135 = v8;
  v136 = v6;
  v151 = v57;
  v164 = MEMORY[0x1E69E7CD0];
  v134 = v156(0);
  v58 = v157 + *(v134 + 24);
  v156 = *(v58 + *(type metadata accessor for PhaseStores(0) + 24));
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C45972E0();
  v133[1] = v59;
  sub_1C456902C(&unk_1EC0BE460, &qword_1C4F13B70);
  v60 = sub_1C4EFEEF8();
  sub_1C43FCF7C(v60);
  *(swift_allocObject() + 16) = xmmword_1C4F0D130;
  sub_1C4EFECB8();
  sub_1C4D504A4();
  v61 = v143;
  v62 = *(v143 + 104);
  v63 = v145;
  (v62)(v154, *MEMORY[0x1E69A95C0], v145);
  v64 = v137;
  sub_1C4413074();
  v62();
  v65 = v138;
  sub_1C4413074();
  v62();
  v66 = v139;
  sub_1C4413074();
  v62();
  v67 = v140;
  sub_1C4413074();
  v62();
  v131 = v67;
  v132 = 0;
  v68 = v141;
  v69 = v154;
  sub_1C4EFDCD8();

  v70 = *(v61 + 8);
  v70(v67, v63);
  v70(v66, v63);
  v70(v65, v63);
  v70(v64, v63);
  v70(v69, v63);
  v71 = sub_1C4EFD678();
  v72 = v146;
  v73 = sub_1C440BAA8(v146, 1, 1, v71);
  MEMORY[0x1EEE9AC00](v73);
  v131 = &v164;
  sub_1C48687E8(v68, v72, v147, &v133[-4]);
  sub_1C4420C3C(v72, &unk_1EC0C07E0, &unk_1C4F168F0);
  (*(v142 + 8))(v68, v144);
  v74 = v148;
  sub_1C4F00158();
  v75 = sub_1C4F00968();
  v76 = sub_1C4F01CC8();
  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    v163[0] = swift_slowAlloc();
    *v77 = 136315394;
    sub_1C444113C();
    v160 = v78;
    sub_1C4405E74();
    v79 = sub_1C4F01198();
    v81 = sub_1C441D828(v79, v80, v163);

    *(v77 + 4) = v81;
    *(v77 + 12) = 2080;
    swift_beginAccess();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v82 = sub_1C4F01AC8();
    v63 = v83;

    v84 = sub_1C441D828(v82, v63, v163);

    *(v77 + 14) = v84;
    _os_log_impl(&dword_1C43F8000, v75, v76, "<%s sourceIds:%s>", v77, 0x16u);
    swift_arrayDestroy();
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  v85 = v151;
  (v151)(v74, v159);
  swift_beginAccess();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C49CFC90();
  v87 = v86;
  v89 = v88;

  sub_1C49CD970(v87, v89);
  v90 = v152;
  sub_1C4F00158();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v91 = sub_1C4F00968();
  v92 = sub_1C4F01CF8();
  if (os_log_type_enabled(v91, v92))
  {
    v93 = sub_1C43FFD34();
    v63 = sub_1C43FFD34();
    *v93 = 136315650;
    sub_1C444113C();
    v161 = v95;
    v162 = v94;
    sub_1C4405E74();
    v96 = sub_1C4F01198();
    v98 = v89;
    v99 = sub_1C441D828(v96, v97, &v162);

    *(v93 + 4) = v99;
    *(v93 + 12) = 2048;
    v100 = *(v87 + 16);

    *(v93 + 14) = v100;
    v89 = v98;

    *(v93 + 22) = 2048;
    v101 = *(v98 + 16);

    *(v93 + 24) = v101;

    _os_log_impl(&dword_1C43F8000, v91, v92, "<%s Deleted event triples from eventKG: d:%ld, u:%ld>", v93, 0x20u);
    sub_1C440962C(v63);
    sub_1C43FFD18();
    sub_1C43FBE2C();

    v102 = v152;
  }

  else
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    v102 = v90;
  }

  v85(v102, v159);
  v110 = v153;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C49CFC90();
  v112 = v111;
  v114 = v113;

  sub_1C4681710(v112, v114);
  sub_1C4F00158();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v115 = sub_1C4F00968();
  v116 = sub_1C4F01CF8();
  if (os_log_type_enabled(v115, v116))
  {
    sub_1C43FFD34();
    v117 = sub_1C4415B1C();
    v157 = v89;
    v118 = v117;
    *v63 = 136315650;
    sub_1C444113C();
    v161 = v120;
    v162 = v119;
    sub_1C4405E74();
    v121 = sub_1C4F01198();
    v123 = sub_1C441D828(v121, v122, &v162);

    *(v63 + 4) = v123;
    *(v63 + 12) = 2048;
    v124 = *(v112 + 16);

    *(v63 + 14) = v124;

    *(v63 + 22) = 2048;
    v125 = *(v114 + 16);

    *(v63 + 24) = v125;

    _os_log_impl(&dword_1C43F8000, v115, v116, "<%s Deleted triples from stableKG: d:%ld, u:%ld>", v63, 0x20u);
    sub_1C440962C(v118);
    v89 = v157;
    sub_1C43FBE2C();
    sub_1C43FFD18();

    v126 = v153;
  }

  else
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    v126 = v110;
  }

  (v151)(v126, v159);
  v127 = *(v87 + 16);

  v128 = *(v112 + 16);

  if (__OFADD__(v127, v128))
  {
    __break(1u);
  }

  else
  {
    v129 = *(v89 + 16);

    v130 = *(v114 + 16);

    if (!__OFADD__(v129, v130))
    {
LABEL_18:
      sub_1C43FE9F0();
      return;
    }
  }

  __break(1u);
}

uint64_t sub_1C49CD970(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  v3[2] = &v4;
  v3[3] = a2;

  sub_1C446C37C(sub_1C49D1DB8, v3);
}

void sub_1C49CD9E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v68 = a3;
  v72 = type metadata accessor for ExpiredEventTriple(0);
  MEMORY[0x1EEE9AC00](v72);
  v66 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v64 - v9;
  v65 = sub_1C456902C(&qword_1EC0B8D38, &unk_1C4F0E180);
  v67 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v64 = &v64 - v11;
  v12 = type metadata accessor for EventTriple(0);
  v69 = *(v12 - 1);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = 0;
  v16 = *(a2 + 16);
  v70 = a2;
  v71 = v16;
  v73 = a1;
  while (v71 != v15)
  {
    v17 = v70 + ((*(v69 + 80) + 32) & ~*(v69 + 80));
    v18 = *(v69 + 72);
    v74 = v15;
    sub_1C448CEA4(v17 + v18 * v15, v14, type metadata accessor for EventTriple);
    v19 = sub_1C4EFF0C8();
    (*(*(v19 - 8) + 16))(v10, v14, v19);
    v20 = v12[5];
    v75 = v4;
    v21 = v72;
    v22 = *(v72 + 20);
    v23 = sub_1C4EFEEF8();
    v24 = *(*(v23 - 8) + 16);
    v24(&v10[v22], &v14[v20], v23);
    v25 = v12[6];
    v26 = v21[6];
    v27 = sub_1C4EFF8A8();
    (*(*(v27 - 8) + 16))(&v10[v26], &v14[v25], v27);
    v24(&v10[v21[7]], &v14[v12[7]], v23);
    v28 = &v14[v12[8]];
    v30 = *v28;
    v29 = *(v28 + 1);
    v31 = *&v14[v12[9]];
    v32 = v12[11];
    v33 = *&v14[v12[10]];
    v35 = *&v14[v32];
    v34 = *&v14[v32 + 8];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4EF9AE8();
    v36 = &v10[v21[8]];
    *v36 = v30;
    *(v36 + 1) = v29;
    *&v10[v21[9]] = v31;
    *&v10[v21[10]] = v33;
    v37 = &v10[v21[11]];
    *v37 = v35;
    *(v37 + 1) = v34;
    *&v10[v21[12]] = v38;
    sub_1C49D1BC8(&qword_1EDDE5BF8, type metadata accessor for ExpiredEventTriple, &protocol conformance descriptor for ExpiredEventTriple);
    v39 = v75;
    sub_1C4EFB6C8();
    v4 = v39;
    sub_1C44BCB34(v10, type metadata accessor for ExpiredEventTriple);
    if (v39)
    {
      sub_1C44BCB34(v14, type metadata accessor for EventTriple);
      return;
    }

    v15 = v74 + 1;
    sub_1C49D1BC8(&qword_1EDDEBC18, type metadata accessor for EventTriple, &protocol conformance descriptor for EventTriple);
    sub_1C4EFBA98();
    sub_1C44BCB34(v14, type metadata accessor for EventTriple);
  }

  v40 = 0;
  v71 = *(v68 + 16);
  v41 = v64;
  while (v71 != v40)
  {
    sub_1C4460050(v68 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v40, v41, &qword_1EC0B8D38, &unk_1C4F0E180);
    sub_1C49D1BC8(&qword_1EDDEBC18, type metadata accessor for EventTriple, &protocol conformance descriptor for EventTriple);
    sub_1C4EFBA98();
    if (v4 || (v74 = v40, v42 = sub_1C4EFF0C8(), v43 = v66, (*(*(v42 - 8) + 16))(v66, v41, v42), v44 = v12[5], v75 = 0, v45 = v72, v46 = *(v72 + 20), v47 = sub_1C4EFEEF8(), v48 = *(*(v47 - 8) + 16), v48(v43 + v46, v41 + v44, v47), v49 = v12[6], v50 = v45[6], v51 = sub_1C4EFF8A8(), (*(*(v51 - 8) + 16))(v43 + v50, v41 + v49, v51), v48(v43 + v45[7], v41 + v12[7], v47), v52 = (v41 + v12[8]), v53 = *v52, v54 = v52[1], v55 = *(v41 + v12[9]), v56 = v12[11], v57 = *(v41 + v12[10]), v59 = *(v41 + v56), v58 = *(v41 + v56 + 8), _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0(), _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0(), sub_1C4EF9AE8(), v60 = (v43 + v45[8]), *v60 = v53, v60[1] = v54, *(v43 + v45[9]) = v55, *(v43 + v45[10]) = v57, v61 = (v43 + v45[11]), *v61 = v59, v61[1] = v58, *(v43 + v45[12]) = v62, sub_1C49D1BC8(&qword_1EDDE5BF8, type metadata accessor for ExpiredEventTriple, &protocol conformance descriptor for ExpiredEventTriple), v63 = v75, sub_1C4EFB6C8(), v4 = v63, sub_1C44BCB34(v43, type metadata accessor for ExpiredEventTriple), v63))
    {
      sub_1C4420C3C(v41, &qword_1EC0B8D38, &unk_1C4F0E180);
      return;
    }

    sub_1C49D1BC8(&qword_1EDDEBC20, type metadata accessor for EventTriple, &protocol conformance descriptor for EventTriple);
    sub_1C4EFB6C8();
    sub_1C4420C3C(v41, &qword_1EC0B8D38, &unk_1C4F0E180);
    v40 = v74 + 1;
  }
}

void sub_1C49CE18C()
{
  sub_1C43FBD3C();
  v33 = v1;
  v34 = v0;
  v2 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  v8 = v7 - v6;
  v9 = sub_1C4EF9F68();
  sub_1C43FCDF8();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBCC4();
  v15 = v14 - v13;
  v16 = sub_1C4EF9F88();
  sub_1C43FCDF8();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBCC4();
  v22 = v21 - v20;
  v23 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C43FBD18(v23);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v33 - v25;
  sub_1C4EF9F58();
  (*(v11 + 104))(v15, *MEMORY[0x1E6969A48], v9);
  sub_1C4EF9CC8();
  sub_1C4EF9F28();
  (*(v4 + 8))(v8, v2);
  (*(v11 + 8))(v15, v9);
  (*(v18 + 8))(v22, v16);
  if (sub_1C44157D4(v26, 1, v2) == 1)
  {
    __break(1u);
  }

  else
  {
    v27 = v33;
    (*(v4 + 32))(v33, v26, v2);
    v28 = type metadata accessor for LifeEventSourceIngestor(0);
    v29 = v28[6];
    if (qword_1EDDFED08 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Source(0);
    sub_1C442B738(v30, qword_1EDDFED10);
    sub_1C44073E4();
    sub_1C448CEA4(v31, v27 + v29, v32);
    *(v27 + v28[7]) = 1;
    sub_1C49D18FC(v34, v27 + v28[5]);
    sub_1C43FE9F0();
  }
}

uint64_t sub_1C49CE4A8()
{
  sub_1C43FBCD4();
  v1[39] = v0;
  v2 = sub_1C4F00978();
  v1[40] = v2;
  sub_1C43FCF7C(v2);
  v1[41] = v3;
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v4 = sub_1C456902C(&qword_1EC0C0568, &unk_1C4F3E9D8);
  sub_1C43FBD18(v4);
  v1[44] = sub_1C43FBE7C();
  v5 = sub_1C456902C(&qword_1EC0B8D40, &unk_1C4F0F040);
  v1[45] = v5;
  sub_1C43FCF7C(v5);
  v1[46] = v6;
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v1[49] = swift_task_alloc();
  v7 = sub_1C4EF9CD8();
  v1[50] = v7;
  sub_1C43FCF7C(v7);
  v1[51] = v8;
  v1[52] = sub_1C43FBE7C();
  v9 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  sub_1C43FBD18(v9);
  v1[53] = sub_1C43FBE7C();
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C49CE680()
{
  v1 = v0[39];
  v0[34] = 0;
  v0[35] = 0;
  v2 = type metadata accessor for LifeEventDeltaSourceIngestor(0);
  v0[54] = v2;
  (*(*(*(v1 + *(v2 + 28)) + 16) + 16))();
  v3 = v0[52];
  v4 = v0[53];
  (*(v0[51] + 16))(v3, v4, v0[50]);
  sub_1C4420C3C(v4, &qword_1EC0B84B8, &unk_1C4F0D4F0);
  v5 = sub_1C49CF710(v3, 100);
  (*(v0[51] + 8))(v0[52], v0[50]);
  v9 = *(v5 + 16);
  v0[34] = v9;
  sub_1C49CCC38();

  v0[35] = v9;
  v0[55] = v9;
  sub_1C49C3B28(v0 + 2);
  sub_1C4985564((v0 + 2), (v0 + 13));
  v0[56] = MEMORY[0x1E69E7CC0];
  swift_task_alloc();
  sub_1C43FBE70();
  v0[57] = v6;
  *v6 = v7;
  sub_1C4403468(v6);

  return sub_1C49CAE60();
}

uint64_t sub_1C49CEB50()
{
  sub_1C43FBCD4();
  v2 = *v1;
  sub_1C43FBDAC();
  *v3 = v2;
  *(v2 + 464) = v0;

  if (v0)
  {
    sub_1C49855C0(v2 + 104);
  }

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C49CEC68()
{
  v41 = v0;
  v1 = *(v0 + 352);
  v37 = *(v0 + 360);
  if (sub_1C44157D4(v1, 1, v37) == 1)
  {
    v2 = *(v0 + 448);
    sub_1C49855C0(v0 + 104);
    sub_1C49855C0(v0 + 16);
    sub_1C4420C3C(v1, &qword_1EC0C0568, &unk_1C4F3E9D8);
    v3 = 0;
    v35 = v2;
    v36 = *(v2 + 16);
    v4 = *(v0 + 464);
    v5 = *(v0 + 440);
    for (i = v5; ; i = v38)
    {
      v34 = v5;
      v7 = i + 1;
      if (v36 == v3)
      {

        sub_1C4412038();

        sub_1C43FC1B0();
        goto LABEL_20;
      }

      if (v3 >= *(v35 + 16))
      {
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      sub_1C4460050(*(v0 + 448) + ((*(*(v0 + 368) + 80) + 32) & ~*(*(v0 + 368) + 80)) + *(*(v0 + 368) + 72) * v3, *(v0 + 376), &qword_1EC0B8D40, &unk_1C4F0F040);
      sub_1C4ACEE5C();
      if (v4)
      {
        break;
      }

      if ((*(v0 + 440) ^ v3) == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_24;
      }

      v8 = *(v0 + 376);
      v38 = v7;
      *(v0 + 272) = v7;
      v9 = (v8 + *(v37 + 32));
      v10 = type metadata accessor for ActivityEventWithLocations(0);
      v11 = v9[1];
      v12 = *v9;
      sub_1C4B0565C(v0 + 232);
      if (*(v0 + 256))
      {
        v13 = v3;
        sub_1C441D670((v0 + 232), v0 + 192);
        v15 = *(v0 + 216);
        v14 = *(v0 + 224);
        sub_1C4409678((v0 + 192), v15);
        v16 = (v9 + *(v10 + 28));
        v17 = v16[1];
        v39 = *v16;
        v40 = v17;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        MEMORY[0x1C6940010](58, 0xE100000000000000);
        MEMORY[0x1C6940010](v12, v11);
        v18 = v39;
        LOBYTE(v39) = 2;
        (*(v14 + 24))(v18, v40, &v39, v15, v14);

        sub_1C440962C((v0 + 192));
        v3 = v13;
      }

      else
      {
        sub_1C4420C3C(v0 + 232, &qword_1EC0C3480, &unk_1C4F40B58);
      }

      v19 = *(v0 + 376);
      type metadata accessor for PhaseStores(0);
      sub_1C4B46D4C();

      sub_1C4420C3C(v19, &qword_1EC0B8D40, &unk_1C4F0F040);
      v5 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        goto LABEL_25;
      }

      v4 = 0;
      ++v3;
      *(v0 + 280) = v5;
    }

    v31 = *(v0 + 312);
    sub_1C4420C3C(*(v0 + 376), &qword_1EC0B8D40, &unk_1C4F0F040);

    sub_1C49CF488(v31, (v0 + 280), (v0 + 272));

    sub_1C43FBDA0();
LABEL_20:

    return v30();
  }

  else
  {
    v21 = *(v0 + 384);
    v20 = *(v0 + 392);
    sub_1C44CD9E0(v1, v20, &qword_1EC0B8D40, &unk_1C4F0F040);
    sub_1C4460050(v20, v21, &qword_1EC0B8D40, &unk_1C4F0F040);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *(v0 + 448);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_26:
      sub_1C458C418();
      v23 = v32;
    }

    v24 = *(v23 + 16);
    if (v24 >= *(v23 + 24) >> 1)
    {
      sub_1C458C418();
      v23 = v33;
    }

    v25 = *(v0 + 384);
    v26 = *(v0 + 368);
    sub_1C4420C3C(*(v0 + 392), &qword_1EC0B8D40, &unk_1C4F0F040);
    *(v23 + 16) = v24 + 1;
    sub_1C44CD9E0(v25, v23 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v24, &qword_1EC0B8D40, &unk_1C4F0F040);
    *(v0 + 448) = v23;
    swift_task_alloc();
    sub_1C43FBE70();
    *(v0 + 456) = v27;
    *v27 = v28;
    sub_1C4403468(v27);

    return sub_1C49CAE60();
  }
}

void sub_1C49CF2A8()
{
  sub_1C49855C0((v0 + 2));
  v2 = v0[58];
  sub_1C4F00158();
  v3 = v2;
  v4 = sub_1C4F00968();
  v5 = sub_1C4F01CD8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[41];
    v20 = v0[42];
    v7 = v0[40];
    sub_1C43FD084();
    v8 = sub_1C4415B1C();
    v21 = v8;
    *v1 = 136315138;
    v0[36] = v2;
    v9 = v2;
    sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
    v10 = sub_1C4F01198();
    v12 = sub_1C441D828(v10, v11, &v21);

    *(v1 + 4) = v12;
    sub_1C4403218(&dword_1C43F8000, v13, v14, "Error getting delta events due to: %s");
    sub_1C440962C(v8);
    sub_1C43FBE2C();
    sub_1C43FFD18();

    (*(v6 + 8))(v20, v7);
  }

  else
  {
    v16 = v0[41];
    v15 = v0[42];
    v17 = v0[40];

    (*(v16 + 8))(v15, v17);
  }

  sub_1C4412038();

  sub_1C43FC1B0();
  sub_1C43FD0C0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1C49CF488(uint64_t a1, void *a2, void *a3)
{
  v6 = type metadata accessor for Pipeline.StatusStore(0);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for LifeEventDeltaSourceIngestor(0);
  sub_1C448CEA4(a1 + *(v10 + 24), v9, type metadata accessor for Configuration);
  v9[*(v7 + 28)] = 1;
  Pipeline.StatusStore.currentSessionId()();
  sub_1C44BCB34(v9, type metadata accessor for Pipeline.StatusStore);
  sub_1C4F00288();
  sub_1C456902C(&qword_1EC0BA6C0, &unk_1C4F14600);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D480;
  *(inited + 32) = 0x496E6F6973736573;
  *(inited + 40) = 0xE900000000000064;
  v12 = sub_1C4F01108();

  *(inited + 48) = v12;
  *(inited + 56) = 0x614E656372756F73;
  *(inited + 64) = 0xEA0000000000656DLL;
  sub_1C4461BB8(0, &qword_1EDDFA440, 0x1E696AEC0);
  *(inited + 72) = sub_1C4F01EF8();
  *(inited + 80) = 0x756F436E656B6174;
  *(inited + 88) = 0xEA0000000000746ELL;
  *(inited + 96) = sub_1C4F01B58();
  strcpy((inited + 104), "droppedCount");
  *(inited + 117) = 0;
  *(inited + 118) = -5120;
  result = *a3 - *a2;
  if (__OFSUB__(*a3, *a2))
  {
    __break(1u);
  }

  else
  {
    *(inited + 120) = sub_1C4F01B58();
    sub_1C4461BB8(0, qword_1EDDFCDD0, 0x1E69E58C0);
    sub_1C4F00F28();
    sub_1C4F00268();
  }

  return result;
}

uint64_t sub_1C49CF710(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C4EF9CD8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C4EFD548();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4EFCF18();
  v40 = sub_1C4EFD2F8();
  v12 = v11;
  (*(v8 + 8))(v10, v7);
  sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
  v13 = swift_allocObject();
  v39 = xmmword_1C4F0D130;
  *(v13 + 16) = xmmword_1C4F0D130;
  if (qword_1EDDFED08 != -1)
  {
LABEL_22:
    swift_once();
  }

  v14 = type metadata accessor for Source(0);
  v15 = sub_1C442B738(v14, qword_1EDDFED10);
  v17 = *v15;
  v16 = v15[1];
  *(v13 + 32) = v17;
  *(v13 + 40) = v16;
  v41 = MEMORY[0x1E69E7CD0];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EF9CC8();
  sub_1C4EF9AD8();
  v19 = v18;
  (*(v4 + 8))(v6, v3);
  sub_1C4EF9AD8();
  v21 = v20;
  v22 = v38[1] + *(type metadata accessor for LifeEventDeltaSourceIngestor(0) + 24);
  v3 = *(v22 + *(type metadata accessor for PhaseStores(0) + 24));
  v23 = MEMORY[0x1E69E7CC0];
  do
  {
    sub_1C456902C(&qword_1EC0BDB70, qword_1C4F31048);
    inited = swift_initStackObject();
    *(inited + 16) = v39;
    *(inited + 32) = v40;
    *(inited + 40) = v12;
    *(inited + 48) = 1;
    *(inited + 56) = 0;
    *(inited + 64) = v13;
    *(inited + 72) = 0;
    *(inited + 80) = 0;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4D522D0(&unk_1F43D6E20);
    v26 = sub_1C48770F0(inited, v25, a2, &v41, v21, v19);
    v21 = v27;
    v28 = v26;

    swift_setDeallocating();
    sub_1C49E1700();
    v29 = *(v28 + 16);
    v4 = *(v23 + 16);
    v6 = (v4 + v29);
    if (__OFADD__(v4, v29))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v6 > *(v23 + 24) >> 1)
    {
      if (v4 <= v6)
      {
        v31 = v4 + v29;
      }

      else
      {
        v31 = v4;
      }

      sub_1C44D45E4(isUniquelyReferenced_nonNull_native, v31, 1, v23);
      v23 = v32;
    }

    if (*(v28 + 16))
    {
      v4 = *(v23 + 16);
      v6 = ((*(v23 + 24) >> 1) - v4);
      sub_1C4EFF0C8();
      if (v6 < v29)
      {
        goto LABEL_20;
      }

      swift_arrayInitWithCopy();

      if (v29)
      {
        v33 = *(v23 + 16);
        v34 = __OFADD__(v33, v29);
        v35 = v33 + v29;
        if (v34)
        {
          goto LABEL_21;
        }

        *(v23 + 16) = v35;
      }
    }

    else
    {

      if (v29)
      {
        goto LABEL_19;
      }
    }

    v36 = *(v28 + 16);
  }

  while (v36 >= a2);

  swift_bridgeObjectRelease_n();

  return v23;
}

uint64_t sub_1C49CFB4C()
{
  sub_1C43FBCD4();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C496D910;

  return sub_1C49CE4A8();
}

void sub_1C49CFC90()
{
  sub_1C43FBD3C();
  v86 = v1;
  v87 = v2;
  v4 = v3;
  v5 = v0;
  v85 = v6;
  v7 = sub_1C456902C(&unk_1EC0C07E0, &unk_1C4F168F0);
  sub_1C43FBD18(v7);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  v84 = &v63 - v9;
  sub_1C43FBE44();
  sub_1C4EFDE18();
  sub_1C43FCDF8();
  v82 = v11;
  v83 = v10;
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBCC4();
  v80 = v13 - v12;
  sub_1C43FBE44();
  v14 = sub_1C4EFDE68();
  v15 = sub_1C43FBD18(v14);
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBCC4();
  v81 = v17 - v16;
  sub_1C43FBE44();
  v18 = sub_1C4EFDE88();
  sub_1C43FCDF8();
  v20 = v19;
  v88 = v19;
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBD08();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v25);
  sub_1C43FBF38();
  v90 = v26;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v27);
  sub_1C43FBF38();
  v89 = v28;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v30);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v32);
  sub_1C43FBF38();
  v34 = v33;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v63 - v36;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v63 - v39;
  v79 = sub_1C4EFDE98();
  sub_1C43FCDF8();
  v78 = v41;
  MEMORY[0x1EEE9AC00](v42);
  sub_1C43FBCC4();
  v72 = v44 - v43;
  v93 = MEMORY[0x1E69E7CC0];
  v94 = MEMORY[0x1E69E7CC0];
  v45 = *(v4(0) + 24);
  v71 = v0;
  v76 = *(v0 + v45 + *(type metadata accessor for PhaseStores(0) + 24));
  sub_1C456902C(&unk_1EC0BAC00, &unk_1C4F11680);
  v46 = type metadata accessor for Source(0);
  sub_1C43FCF7C(v46);
  v48 = (*(v47 + 80) + 32) & ~*(v47 + 80);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_1C4F0D130;
  sub_1C44073E4();
  sub_1C448CEA4(v5, v50 + v48, v51);
  SourceSet.init(arrayLiteral:)(&v92, v49);
  v65 = v92;
  v52 = *(v20 + 104);
  v67 = v40;
  sub_1C4400844();
  v52();
  v66 = v37;
  sub_1C4400844();
  v52();
  v53 = v34;
  v64 = v34;
  sub_1C4400844();
  v52();
  v54 = v68;
  sub_1C4400844();
  v52();
  v55 = v69;
  sub_1C4400844();
  v52();
  v56 = v70;
  sub_1C4400844();
  v52();
  v57 = *(v88 + 16);
  v57(v89, v40, v18);
  v57(v90, v37, v18);
  v57(v73, v53, v18);
  v57(v74, v54, v18);
  v57(v75, v55, v18);
  v57(v77, v56, v18);
  sub_1C444113C();
  v58 = v80;
  sub_1C43FEAF8();
  sub_1C4EFDD38();
  (*(v82 + 104))(v58, *MEMORY[0x1E69A95A8], v83);
  sub_1C4EFDE28();
  v59 = v72;
  sub_1C4EFDEA8();
  v60 = *(v88 + 8);
  v60(v56, v18);
  v60(v55, v18);
  v60(v54, v18);
  v60(v64, v18);
  v60(v66, v18);
  v60(v67, v18);
  v61 = sub_1C4EFD678();
  v62 = v84;
  sub_1C440BAA8(v84, 1, 1, v61);
  v91[2] = v85;
  v91[3] = v71;
  v91[4] = &v94;
  v91[5] = &v93;
  v87(v59, v62, v86, v91);
  sub_1C4420C3C(v62, &unk_1EC0C07E0, &unk_1C4F168F0);
  (*(v78 + 8))(v59, v79);
  sub_1C43FE9F0();
}

void sub_1C49D03D0()
{
  sub_1C43FBD3C();
  sub_1C4415B38(v6, v7, v8, v9);
  v10 = sub_1C456902C(&qword_1EC0BAC10, &unk_1C4F0F030);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v11);
  v12 = sub_1C441EDD0();
  v13 = type metadata accessor for GraphTriple(v12);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBCC4();
  sub_1C4426C90(v15);
  v16 = objc_autoreleasePoolPush();
  v17 = sub_1C444FE50();
  sub_1C44223F4(v17, MEMORY[0x1E69E6158], v18, v17);

  objc_autoreleasePoolPop(v5);
  v19 = sub_1C4499940();
  if (*(sub_1C4A95434(v2, v19) + 2))
  {
    v20 = sub_1C447F1BC();
    sub_1C4B4AB30(v20, v21);

    if (*(v4 + *(v13 + 36)))
    {
      v22 = *(v10 + 48);
      sub_1C448CEA4(v1, v3, type metadata accessor for GraphTriple);
      sub_1C448CEA4(v4, v3 + v22, type metadata accessor for GraphTriple);
      sub_1C4588FA8();
      v23 = *(*v0 + 16);
      sub_1C4589B90();
      sub_1C440D5E8();
      *(*v0 + 16) = v23 + 1;
      sub_1C440082C();
      sub_1C44CD9E0(v3, v24 + v25 * v23, &qword_1EC0BAC10, &unk_1C4F0F030);
    }

    else
    {
      sub_1C4588D78();
      v26 = *(*v29 + 16);
      sub_1C4589968();
      sub_1C440D5E8();
      *(*v29 + 16) = v26 + 1;
      sub_1C440082C();
      sub_1C448CEA4(v1, v27 + v28 * v26, type metadata accessor for GraphTriple);
    }
  }

  else
  {
  }

  sub_1C43FE9F0();
}

void sub_1C49D061C()
{
  sub_1C43FBD3C();
  sub_1C4415B38(v6, v7, v8, v9);
  v10 = sub_1C456902C(&qword_1EC0B8D38, &unk_1C4F0E180);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v11);
  v12 = sub_1C441EDD0();
  v13 = type metadata accessor for EventTriple(v12);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBCC4();
  sub_1C4426C90(v15);
  v16 = objc_autoreleasePoolPush();
  v17 = sub_1C444FE50();
  sub_1C44223F4(v17, MEMORY[0x1E69E6158], v18, v17);

  objc_autoreleasePoolPop(v5);
  v19 = sub_1C4499940();
  if (*(sub_1C4A95434(v2, v19) + 2))
  {
    v20 = sub_1C447F1BC();
    sub_1C4B4AB70(v20, v21);

    if (*(v4 + *(v13 + 36)))
    {
      v22 = *(v10 + 48);
      sub_1C448CEA4(v1, v3, type metadata accessor for EventTriple);
      sub_1C448CEA4(v4, v3 + v22, type metadata accessor for EventTriple);
      sub_1C458900C();
      v23 = *(*v0 + 16);
      sub_1C4589BEC();
      sub_1C43FF398();
      *(*v0 + 16) = v23 + 1;
      sub_1C440082C();
      sub_1C44CD9E0(v3, v24 + v25 * v23, &qword_1EC0B8D38, &unk_1C4F0E180);
    }

    else
    {
      sub_1C4588F00();
      v26 = *(*v29 + 16);
      sub_1C4589AE8();
      sub_1C43FF398();
      *(*v29 + 16) = v26 + 1;
      sub_1C440082C();
      sub_1C448CEA4(v1, v27 + v28 * v26, type metadata accessor for EventTriple);
    }
  }

  else
  {
  }

  sub_1C43FE9F0();
}

uint64_t sub_1C49D0868()
{
  sub_1C43FBCD4();
  v1[43] = v0;
  v2 = sub_1C4F00978();
  v1[44] = v2;
  sub_1C43FCF7C(v2);
  v1[45] = v3;
  v1[46] = sub_1C43FBE7C();
  v4 = sub_1C456902C(&qword_1EC0B8D40, &unk_1C4F0F040);
  v1[47] = v4;
  sub_1C43FBD18(v4);
  v1[48] = sub_1C43FBE7C();
  v5 = sub_1C456902C(&qword_1EC0C0568, &unk_1C4F3E9D8);
  sub_1C43FBD18(v5);
  v1[49] = sub_1C43FBE7C();
  v6 = sub_1C456902C(&qword_1EC0B84B0, qword_1C4F0CDE0);
  v1[50] = v6;
  sub_1C43FBD18(v6);
  v1[51] = swift_task_alloc();
  v1[52] = swift_task_alloc();
  v7 = sub_1C4EF9CD8();
  v1[53] = v7;
  sub_1C43FCF7C(v7);
  v1[54] = v8;
  v1[55] = sub_1C43FBE7C();
  v9 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  v1[56] = v9;
  sub_1C43FBD18(v9);
  v1[57] = sub_1C43FBE7C();
  v10 = type metadata accessor for Configuration(0);
  sub_1C43FBD18(v10);
  v1[58] = sub_1C43FBE7C();
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1C49D0A4C()
{
  v19 = v0;
  v1 = *(v0 + 464);
  v2 = *(v0 + 344);
  *(v0 + 304) = 0;
  *(v0 + 312) = 0;
  type metadata accessor for LifeEventProvider();
  v3 = *(type metadata accessor for LifeEventSourceIngestor(0) + 20);
  *(v0 + 504) = v3;
  sub_1C448CEA4(v2 + v3, v1, type metadata accessor for Configuration);
  sub_1C49CA620(v1);
  sub_1C4EF9CC8();
  sub_1C49D1BC8(&qword_1EDDFCD70, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  result = sub_1C4F01088();
  if (result)
  {
    v5 = *(v0 + 456);
    v17 = *(v0 + 448);
    v7 = *(v0 + 432);
    v6 = *(v0 + 440);
    v9 = *(v0 + 416);
    v8 = *(v0 + 424);
    v10 = *(v0 + 400);
    v11 = *(v0 + 408);
    (*(v7 + 16))(v9, *(v0 + 344), v8);
    v12 = *(v7 + 32);
    v12(v9 + *(v10 + 48), v6, v8);
    sub_1C4460050(v9, v11, &qword_1EC0B84B0, qword_1C4F0CDE0);
    v13 = *(v10 + 48);
    v12(v5, v11, v8);
    v14 = *(v7 + 8);
    v14(v11 + v13, v8);
    sub_1C44CD9E0(v9, v11, &qword_1EC0B84B0, qword_1C4F0CDE0);
    v12(v5 + *(v17 + 36), v11 + *(v10 + 48), v8);
    v14(v11, v8);
    sub_1C49CA8D0(v5, __src);
    sub_1C4420C3C(*(v0 + 456), &qword_1EC0B84B8, &unk_1C4F0D4F0);

    memcpy((v0 + 16), __src, 0x58uLL);
    sub_1C4985564(v0 + 16, v0 + 104);
    *(v0 + 472) = 0;
    *(v0 + 480) = 0;
    swift_task_alloc();
    sub_1C43FBE70();
    *(v0 + 488) = v15;
    *v15 = v16;
    sub_1C43FDAE8(v15);

    return sub_1C49CAE60();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C49D0EA4()
{
  sub_1C43FBCD4();
  v2 = *v1;
  sub_1C43FBDAC();
  *v3 = v2;
  *(v4 + 496) = v0;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C49D0FA8()
{
  v28 = v0;
  v1 = *(v0 + 392);
  if (sub_1C44157D4(v1, 1, *(v0 + 376)) == 1)
  {
    sub_1C49855C0(v0 + 104);
    sub_1C4EF9AE8();
    sub_1C4645C44();
    sub_1C49855C0(v0 + 16);
    sub_1C441CBD8();

    sub_1C43FC1B0();
    goto LABEL_5;
  }

  v2 = *(v0 + 496);
  sub_1C44CD9E0(v1, *(v0 + 384), &qword_1EC0B8D40, &unk_1C4F0F040);
  result = sub_1C4ACEBEC();
  if (v2)
  {
    v4 = *(v0 + 384);
    sub_1C49855C0(v0 + 104);
    sub_1C49855C0(v0 + 16);
    sub_1C4420C3C(v4, &qword_1EC0B8D40, &unk_1C4F0F040);
    sub_1C4414D64();

    sub_1C43FBDA0();
LABEL_5:
    sub_1C43FD0C0();

    __asm { BRAA            X1, X16 }
  }

  v7 = *(v0 + 480);
  v8 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  v10 = *(v0 + 376);
  v9 = *(v0 + 384);
  *(v0 + 304) = v8;
  v11 = (v9 + *(v10 + 32));
  v12 = type metadata accessor for ActivityEventWithLocations(0);
  v13 = v11[1];
  v14 = *v11;
  sub_1C4B0565C(v0 + 232);
  if (*(v0 + 256))
  {
    sub_1C441D670((v0 + 232), v0 + 192);
    v21 = *(v0 + 216);
    v22 = *(v0 + 224);
    sub_1C4409678((v0 + 192), v21);
    v23 = (v11 + *(v12 + 28));
    v24 = v23[1];
    *(v0 + 288) = *v23;
    *(v0 + 296) = v24;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    MEMORY[0x1C6940010](58, 0xE100000000000000);
    v25 = *(v0 + 296);
    *(v0 + 272) = *(v0 + 288);
    *(v0 + 280) = v25;
    MEMORY[0x1C6940010](v14, v13);
    v26 = *(v0 + 272);
    v27 = *(v0 + 280);
    *(v0 + 508) = 1;
    (*(v22 + 24))(v26, v27, v0 + 508, v21, v22);

    sub_1C440962C((v0 + 192));
  }

  else
  {
    sub_1C4420C3C(v0 + 232, &qword_1EC0C3480, &unk_1C4F40B58);
  }

  v15 = *(v0 + 472);
  v16 = *(v0 + 384);
  type metadata accessor for PhaseStores(0);
  sub_1C4B46D4C();

  result = sub_1C4420C3C(v16, &qword_1EC0B8D40, &unk_1C4F0F040);
  v17 = v15 + 1;
  if (__OFADD__(v15, 1))
  {
    goto LABEL_18;
  }

  *(v0 + 312) = v17;
  *(v0 + 472) = v17;
  *(v0 + 480) = v8;
  swift_task_alloc();
  sub_1C43FBE70();
  *(v0 + 488) = v18;
  *v18 = v19;
  sub_1C43FDAE8(v18);
  sub_1C43FD0C0();

  return sub_1C49CAE60();
}

uint64_t sub_1C49D1448()
{
  sub_1C43FBCD4();
  *(v0 + 328) = *(v0 + 496);
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  swift_willThrowTypedImpl();
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1C49D14D0()
{
  sub_1C49855C0(v0 + 104);
  sub_1C49855C0(v0 + 16);
  sub_1C4414D64();

  sub_1C43FBDA0();

  return v1();
}

uint64_t sub_1C49D15A0(uint64_t a1, void *a2, void *a3)
{
  v6 = type metadata accessor for Pipeline.StatusStore(0);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for LifeEventSourceIngestor(0);
  sub_1C448CEA4(a1 + *(v10 + 20), v9, type metadata accessor for Configuration);
  v9[*(v7 + 28)] = 1;
  Pipeline.StatusStore.currentSessionId()();
  sub_1C44BCB34(v9, type metadata accessor for Pipeline.StatusStore);
  sub_1C4F00288();
  sub_1C456902C(&qword_1EC0BA6C0, &unk_1C4F14600);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D480;
  *(inited + 32) = 0x496E6F6973736573;
  *(inited + 40) = 0xE900000000000064;
  v12 = sub_1C4F01108();

  *(inited + 48) = v12;
  *(inited + 56) = 0x614E656372756F73;
  *(inited + 64) = 0xEA0000000000656DLL;
  sub_1C4461BB8(0, &qword_1EDDFA440, 0x1E696AEC0);
  *(inited + 72) = sub_1C4F01EF8();
  *(inited + 80) = 0x756F436E656B6174;
  *(inited + 88) = 0xEA0000000000746ELL;
  *(inited + 96) = sub_1C4F01B58();
  strcpy((inited + 104), "droppedCount");
  *(inited + 117) = 0;
  *(inited + 118) = -5120;
  result = *a3 - *a2;
  if (__OFSUB__(*a3, *a2))
  {
    __break(1u);
  }

  else
  {
    *(inited + 120) = sub_1C4F01B58();
    sub_1C4461BB8(0, qword_1EDDFCDD0, 0x1E69E58C0);
    sub_1C4F00F28();
    sub_1C4F00268();
  }

  return result;
}

uint64_t sub_1C49D1828()
{
  sub_1C43FBCD4();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C4707B70;

  return sub_1C49D0868();
}

uint64_t sub_1C49D18FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhaseStores(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C49D19A8(uint64_t a1)
{
  result = type metadata accessor for Source(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for PhaseStores(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for LifeEventDeltaProvider();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1C49D1A74(uint64_t a1)
{
  result = sub_1C4EF9CD8();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for PhaseStores(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for Source(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1C49D1B18(uint64_t a1)
{
  result = sub_1C49D1BC8(qword_1EDDE1EB0, type metadata accessor for LifeEventSourceIngestor, &unk_1C4F40A38);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C49D1B70(uint64_t a1)
{
  result = sub_1C49D1BC8(&qword_1EDDE1E98, type metadata accessor for LifeEventSourceIngestor, &unk_1C4F40A60);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C49D1BC8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C49D1C10(uint64_t a1)
{
  result = sub_1C49D1BC8(qword_1EDDDFD28, type metadata accessor for LifeEventDeltaSourceIngestor, &unk_1C4F40A98);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C49D1C68(uint64_t a1)
{
  result = sub_1C49D1BC8(&qword_1EDDDFD10, type metadata accessor for LifeEventDeltaSourceIngestor, &unk_1C4F40AC0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C49D1CC0(uint64_t a1)
{
  result = sub_1C49D1BC8(&qword_1EDDDFD18, type metadata accessor for LifeEventDeltaSourceIngestor, &unk_1C4F40ADC);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C49D1D18(uint64_t a1)
{
  result = sub_1C49D1BC8(&qword_1EDDE1EA0, type metadata accessor for LifeEventSourceIngestor, &unk_1C4F40A7C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C49D1E94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EDDFFAF0 != -1)
  {
    sub_1C4400128(&qword_1EDDFFAF0);
  }

  v5 = sub_1C4F00978();
  sub_1C43FCEE8(v5, qword_1EDE2E088);

  v6 = sub_1C4F00968();
  v7 = sub_1C4F01CF8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18[0] = v9;
    *v8 = 136315138;

    v10 = sub_1C4F01198();
    v12 = sub_1C441D828(v10, v11, v18);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_1C43F8000, v6, v7, "StorageSystemStore(%s): collecting statistics", v8, 0xCu);
    sub_1C440962C(v9);
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  v13 = MEMORY[0x1E69E7CC8];
  v22 = MEMORY[0x1E69E7CC8];
  v20 = 0;
  v21 = 1;
  MEMORY[0x1EEE9AC00](v14);
  sub_1C44325E8();
  sub_1C4465390(a3, a2);

  v15 = v22;
  v19 = sub_1C456902C(&qword_1EC0C0DA0, "֞\t");
  v18[0] = v15;
  sub_1C4410FBC();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  swift_isUniquelyReferenced_nonNull_native();
  sub_1C4412068();
  v16 = v13;
  if (v21)
  {
  }

  else
  {
    v19 = MEMORY[0x1E69E7360];
    v18[0] = v20;
    sub_1C4410FBC();
    swift_isUniquelyReferenced_nonNull_native();
    sub_1C442CE10();

    return v13;
  }

  return v16;
}

uint64_t sub_1C49D2120(uint64_t a1, uint64_t a2)
{
  if (qword_1EDDFFAF0 != -1)
  {
    sub_1C4400128(&qword_1EDDFFAF0);
  }

  v4 = sub_1C4F00978();
  sub_1C43FCEE8(v4, qword_1EDE2E088);

  v5 = sub_1C4F00968();
  v6 = sub_1C4F01CF8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17[0] = v8;
    *v7 = 136315138;

    v9 = sub_1C4F01198();
    v11 = sub_1C441D828(v9, v10, v17);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1C43F8000, v5, v6, "StorageSystemStore(%s): collecting statistics", v7, 0xCu);
    sub_1C440962C(v8);
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  v12 = MEMORY[0x1E69E7CC8];
  v21 = MEMORY[0x1E69E7CC8];
  v19 = 0;
  v20 = 1;
  MEMORY[0x1EEE9AC00](v13);
  sub_1C44325E8();
  sub_1C4465390(a2, a1);

  v14 = v21;
  v18 = sub_1C456902C(&qword_1EC0C0DA0, "֞\t");
  v17[0] = v14;
  sub_1C4410FBC();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  swift_isUniquelyReferenced_nonNull_native();
  sub_1C4412068();
  v15 = v12;
  if (v20)
  {
  }

  else
  {
    v18 = MEMORY[0x1E69E7360];
    v17[0] = v19;
    sub_1C4410FBC();
    swift_isUniquelyReferenced_nonNull_native();
    sub_1C442CE10();

    return v12;
  }

  return v15;
}

void sub_1C49D2384(uint64_t a1)
{
  v2 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C43FBCE0();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v19 - v4;
  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0(&qword_1EDDFA678);
  }

  v6 = sub_1C4F00978();
  sub_1C442B738(v6, qword_1EDE2DCD8);
  v7 = sub_1C4F00968();
  v8 = sub_1C4F01CF8();
  if (sub_1C43FEB2C(v8))
  {
    v9 = sub_1C43FCED0();
    *v9 = 0;
    _os_log_impl(&dword_1C43F8000, v7, v8, "LighthouseXPC: starting...", v9, 2u);
    sub_1C43FBE2C();
  }

  if (qword_1EDDEAB88 != -1)
  {
    sub_1C44073FC(&qword_1EDDEAB88);
  }

  sub_1C43FCEE8(v2, qword_1EDE2D248);
  sub_1C44098F0(a1, v5);
  v10 = type metadata accessor for Configuration(0);
  sub_1C440BAA8(v5, 0, 1, v10);
  swift_beginAccess();
  sub_1C45A6EE0(v5, v7);
  swift_endAccess();
  sub_1C45A6F50();
  v11 = sub_1C440F908();
  v13 = sub_1C49AA56C(v11, v12);
  v14 = qword_1EDE2D238;
  qword_1EDE2D238 = v13;
  v15 = v13;

  if (v15)
  {
    qword_1EDE2D240 = [objc_allocWithZone(type metadata accessor for LighthouseXPC.Delegate()) init];
    v16 = qword_1EDE2D240;
    swift_unknownObjectRelease();
    [v15 setDelegate:v16];

    [v15 resume];
  }

  else
  {
    v15 = sub_1C4F00968();
    v17 = sub_1C4F01CE8();
    if (sub_1C43FEB2C(v17))
    {
      v18 = sub_1C43FCED0();
      *v18 = 0;
      _os_log_impl(&dword_1C43F8000, v15, v17, "Failed to create Lighthouse XPC service", v18, 2u);
      sub_1C43FBE2C();
    }
  }
}

uint64_t sub_1C49D2608()
{
  v0 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C44F9918(v0, qword_1EDE2D248);
  v1 = sub_1C442B738(v0, qword_1EDE2D248);
  v2 = type metadata accessor for Configuration(0);

  return sub_1C440BAA8(v1, 1, 1, v2);
}

void sub_1C49D2684(uint64_t a1, void (**a2)(void, void, void))
{
  v3 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v9 - v4;
  if (qword_1EDDEAB88 != -1)
  {
    swift_once();
  }

  v6 = sub_1C442B738(v3, qword_1EDE2D248);
  swift_beginAccess();
  sub_1C4466EEC(v6, v5);
  v7 = type metadata accessor for Configuration(0);
  if (sub_1C44157D4(v5, 1, v7) == 1)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for GraphStore(0);
    swift_allocObject();
    GraphStore.init(config:)(v5);
    sub_1C49D2120(&OBJC_IVAR____TtC24IntelligencePlatformCore13GraphDatabase_pool, sub_1C49D3548);
    v8 = sub_1C4F00EC8();
    (a2)[2](a2, v8, 0);

    _Block_release(a2);
  }
}

void LighthouseXPC.Server.collectDBStats(completion:)(void (*a1)(void))
{
  v2 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C43FBCE0();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - v5;
  if (qword_1EDDEAB88 != -1)
  {
    v4 = sub_1C44073FC(&qword_1EDDEAB88);
  }

  sub_1C440AEA4(v4, qword_1EDE2D248);
  sub_1C4466EEC(v2, v6);
  v7 = type metadata accessor for Configuration(0);
  if (sub_1C44157D4(v6, 1, v7) == 1)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for GraphStore(0);
    swift_allocObject();
    sub_1C43FF3C0();
    if (v2)
    {
      if (qword_1EDDFA678 != -1)
      {
        sub_1C43FFCC0(&qword_1EDDFA678);
      }

      v8 = sub_1C4F00978();
      sub_1C43FCEE8(v8, qword_1EDE2DCD8);
      v9 = sub_1C4F00968();
      v10 = sub_1C4F01CD8();
      if (sub_1C43FEB2C(v10))
      {
        *sub_1C43FCED0() = 0;
        sub_1C4402B90(&dword_1C43F8000, v11, v12, "Lighthouse XPC Service: Stats: failed to create GraphStore");
        sub_1C43FBE2C();
      }

      sub_1C440E490();
      a1();
    }

    else
    {
      sub_1C4413454();
      sub_1C49D2120(v13, v14);
      sub_1C440E490();
      a1();
    }
  }
}

void sub_1C49D2AF8(uint64_t a1, void (**a2)(void, void, void))
{
  v3 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v9 - v4;
  if (qword_1EDDEAB88 != -1)
  {
    swift_once();
  }

  v6 = sub_1C442B738(v3, qword_1EDE2D248);
  swift_beginAccess();
  sub_1C4466EEC(v6, v5);
  v7 = type metadata accessor for Configuration(0);
  if (sub_1C44157D4(v5, 1, v7) == 1)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for GraphStore(0);
    swift_allocObject();
    GraphStore.init(config:)(v5);
    sub_1C487D36C();
    v8 = sub_1C4F00EC8();
    (a2)[2](a2, v8, 0);

    _Block_release(a2);
  }
}

void LighthouseXPC.Server.collectDBStatus(completion:)(void (*a1)(void))
{
  v2 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C43FBCE0();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - v5;
  if (qword_1EDDEAB88 != -1)
  {
    v4 = sub_1C44073FC(&qword_1EDDEAB88);
  }

  sub_1C440AEA4(v4, qword_1EDE2D248);
  sub_1C4466EEC(v2, v6);
  v7 = type metadata accessor for Configuration(0);
  if (sub_1C44157D4(v6, 1, v7) == 1)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for GraphStore(0);
    swift_allocObject();
    sub_1C43FF3C0();
    if (v2)
    {
      if (qword_1EDDFA678 != -1)
      {
        sub_1C43FFCC0(&qword_1EDDFA678);
      }

      v8 = sub_1C4F00978();
      sub_1C43FCEE8(v8, qword_1EDE2DCD8);
      v9 = sub_1C4F00968();
      v10 = sub_1C4F01CD8();
      if (sub_1C43FEB2C(v10))
      {
        *sub_1C43FCED0() = 0;
        sub_1C4402B90(&dword_1C43F8000, v11, v12, "Lighthouse XPC Service: Status: failed to create GraphStore");
        sub_1C43FBE2C();
      }

      sub_1C440E490();
      a1();
    }

    else
    {
      sub_1C487D36C();
      sub_1C440E490();
      a1();
    }
  }
}

void sub_1C49D2F44(void *a1, int a2, void *aBlock, void (*a4)(void))
{
  v6 = _Block_copy(aBlock);
  _Block_copy(v6);
  v7 = a1;
  a4();
  _Block_release(v6);
}

id LighthouseXPC.Server.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1C49D2FF4(uint64_t a1, void *a2)
{
  v3 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C43FBCE0();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - v6;
  if (qword_1EDDEAB88 != -1)
  {
    v5 = sub_1C44073FC(&qword_1EDDEAB88);
  }

  sub_1C440AEA4(v5, qword_1EDE2D248);
  sub_1C4466EEC(v3, v7);
  v8 = type metadata accessor for Configuration(0);
  result = sub_1C44157D4(v7, 1, v8);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v10 = &v7[*(v8 + 20)];
    v11 = *v10;
    v12 = *(v10 + 1);
    sub_1C4467948(v7);
    if (qword_1EDDFEC88 != -1)
    {
      swift_once();
    }

    if ((xmmword_1EDDFEC90 & ~v11) == 0 && (*(&xmmword_1EDDFEC90 + 1) & v12) == *(&xmmword_1EDDFEC90 + 1))
    {
      if (qword_1EDDFA678 != -1)
      {
        sub_1C43FFCC0(&qword_1EDDFA678);
      }

      v20 = sub_1C4F00978();
      sub_1C43FCEE8(v20, qword_1EDE2DCD8);
      v21 = sub_1C4F00968();
      v22 = sub_1C4F01CF8();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = sub_1C43FCED0();
        *v23 = 0;
        _os_log_impl(&dword_1C43F8000, v21, v22, "LighthouseXPC: service is in no-op mode.", v23, 2u);
        sub_1C43FBE2C();
      }
    }

    else
    {
      v14 = sub_1C440F908();
      if (sub_1C446874C(v14, v15))
      {
        v16 = [objc_opt_self() interfaceWithProtocol_];
        sub_1C44059FC(v16, sel_setExportedInterface_);

        v17 = [objc_allocWithZone(type metadata accessor for LighthouseXPC.Server()) init];
        sub_1C44059FC(v17, sel_setExportedObject_);

        v29 = sub_1C49D3340;
        v30 = 0;
        aBlock = MEMORY[0x1E69E9820];
        v26 = 1107296256;
        v27 = sub_1C4833DD0;
        v28 = &unk_1F43F3BF0;
        v18 = _Block_copy(&aBlock);
        sub_1C44059FC(v18, sel_setInterruptionHandler_);
        _Block_release(v18);
        v29 = sub_1C49D3360;
        v30 = 0;
        aBlock = MEMORY[0x1E69E9820];
        v26 = 1107296256;
        v27 = sub_1C4833DD0;
        v28 = &unk_1F43F3C18;
        v19 = _Block_copy(&aBlock);
        sub_1C44059FC(v19, sel_setInvalidationHandler_);
        _Block_release(v19);
        [a2 resume];
        return 1;
      }
    }

    return 0;
  }

  return result;
}

void sub_1C49D3380(uint64_t (*a1)(void), const char *a2)
{
  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0(&qword_1EDDFA678);
  }

  v4 = sub_1C4F00978();
  sub_1C43FCEE8(v4, qword_1EDE2DCD8);
  oslog = sub_1C4F00968();
  v5 = a1();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = sub_1C43FCED0();
    *v6 = 0;
    _os_log_impl(&dword_1C43F8000, oslog, v5, a2, v6, 2u);
    sub_1C43FBE2C();
  }
}

void sub_1C49D36C0(uint64_t a1)
{
  v5 = a1;
  v6 = *(a1 + 16);
  sub_1C440EFF8();
  if (__OFADD__(v7, v6))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1C449AE50(v7 + v6, 1);
  v1 = *v2;
  v8 = (*(*v2 + 24) >> 1) - *(*v2 + 16);
  sub_1C44ECA38();
  if (v9 < v6)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v9)
  {
    v11 = *(v1 + 16);
    v12 = __OFADD__(v11, v9);
    v13 = v11 + v9;
    if (v12)
    {
      __break(1u);
LABEL_13:
      v17 = (v10 + 64) >> 6;
      while (1)
      {
        v18 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_32;
        }

        if (v18 >= v17)
        {
          goto LABEL_7;
        }

        v19 = *(v8 + 8 * v18);
        ++v4;
        if (v19)
        {
          v15 = (v19 - 1) & v19;
          v16 = __clz(__rbit64(v19)) | (v18 << 6);
          v4 = v18;
          goto LABEL_18;
        }
      }
    }

    *(v1 + 16) = v13;
  }

  v5 = v30;
  if (v9 != v8)
  {
LABEL_7:
    v14 = sub_1C4404084();
    sub_1C449BB08(v14);
    *v2 = v1;
    return;
  }

LABEL_10:
  v3 = *(v1 + 16);
  v8 = v31;
  v10 = v32;
  v4 = v33;
  if (!v34)
  {
    goto LABEL_13;
  }

  v15 = (v34 - 1) & v34;
  v16 = __clz(__rbit64(v34)) | (v33 << 6);
  v17 = (v32 + 64) >> 6;
LABEL_18:
  v20 = (*(v5 + 48) + 16 * v16);
  v22 = *v20;
  v21 = v20[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
LABEL_19:
  v29 = *(v1 + 24) >> 1;
  if (v29 < v3 + 1)
  {
    sub_1C443D664();
    v1 = v28;
    v29 = *(v28 + 24) >> 1;
  }

  while (1)
  {
    if (v3 >= v29)
    {
      *(v1 + 16) = v3;
      goto LABEL_19;
    }

    v23 = (v1 + 32 + 16 * v3);
    *v23 = v22;
    v23[1] = v21;
    ++v3;
    if (!v15)
    {
      break;
    }

LABEL_27:
    sub_1C49E1CDC();
    v27 = (*(v5 + 48) + ((v25 << 10) | (16 * v26)));
    v22 = *v27;
    v21 = v27[1];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  while (1)
  {
    v24 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v24 >= v17)
    {
      *(v1 + 16) = v3;
      goto LABEL_7;
    }

    v15 = *(v8 + 8 * v24);
    ++v4;
    if (v15)
    {
      v4 = v24;
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
}

void sub_1C49D3924(uint64_t a1)
{
  v4 = sub_1C4405E94(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1C4B60888(v4, 1);
  sub_1C444345C();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_1C4416278();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = sub_1C456902C(&qword_1EC0B8848, &qword_1C4F40C80);
  sub_1C44606BC(v8);

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  sub_1C445AC08();
  if (!v5)
  {
    *(v3 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1C49D39CC(uint64_t a1)
{
  v4 = sub_1C4405E94(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1C4B608A0(v4, 1);
  sub_1C444345C();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_1C4416278();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = sub_1C456902C(&qword_1EC0B87E0, &qword_1C4F0DBD0);
  sub_1C44606BC(v8);

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  sub_1C445AC08();
  if (!v5)
  {
    *(v3 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1C49D3A70(uint64_t a1)
{
  v4 = sub_1C4405E94(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1C4B608B8(v4, 1);
  sub_1C444345C();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_1C4416278();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = sub_1C456902C(&qword_1EC0B8888, &qword_1C4F0E990);
  sub_1C44606BC(v8);

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  sub_1C445AC08();
  if (!v5)
  {
    *(v3 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1C49D3BB4(uint64_t a1)
{
  v3 = *(a1 + 16);
  sub_1C440EFF8();
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1C4B60948(v4 + v3, 1);
  v5 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_1C44A1EDC();
  if (v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  memcpy((v5 + 4 * v6 + 32), (a1 + 32), 4 * v3);

  if (!v3)
  {
LABEL_8:
    *v1 = v5;
    return;
  }

  v8 = *(v5 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v5 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1C49D3C64(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_12;
  }

  sub_1C440EFF8();
  if (__OFADD__(v9, v6))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v10 = v8;
  v11 = v7;
  sub_1C4B60948(v9 + v6, 1);
  v12 = *v4;
  if (v5 == v10)
  {
    if (v6 <= 0)
    {
LABEL_10:
      swift_unknownObjectRelease();
      *v4 = v12;
      return;
    }

    __break(1u);
  }

  sub_1C44A1EDC();
  if (v14 < v6)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  memcpy((v12 + 4 * v13 + 32), (v11 + 4 * v10), 4 * v6);
  if (v6 <= 0)
  {
    goto LABEL_10;
  }

  v15 = *(v12 + 16);
  v16 = __OFADD__(v15, v6);
  v17 = v15 + v6;
  if (!v16)
  {
    *(v12 + 16) = v17;
    goto LABEL_10;
  }

LABEL_14:
  __break(1u);
}

void sub_1C49D3DA0(uint64_t a1, void (*a2)(uint64_t, uint64_t))
{
  v4 = *(a1 + 16);
  v5 = *(*v2 + 16);
  if (__OFADD__(v5, v4))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  a2(v5 + v4, 1);
  v6 = *v2;
  if (!*(a1 + 16))
  {

    if (!v4)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_1C44A1EDC();
  if (v8 < v4)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  memcpy((v6 + 8 * v7 + 32), (a1 + 32), 8 * v4);

  if (!v4)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v9 = *(v6 + 16);
  v10 = __OFADD__(v9, v4);
  v11 = v9 + v4;
  if (!v10)
  {
    *(v6 + 16) = v11;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1C49D3E5C(uint64_t a1)
{
  v4 = sub_1C4EFD548();
  sub_1C43FCDF8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  v10 = v9 - v8;
  v11 = sub_1C456902C(&qword_1EC0B8568, &unk_1C4F319B0);
  v12 = sub_1C43FBD18(v11);
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBD08();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v52 - v18;
  v20 = *(a1 + 16);
  sub_1C440EFF8();
  if (__OFADD__(v21, v20))
  {
    __break(1u);
    goto LABEL_10;
  }

  v64 = v22;
  v65 = v10;
  sub_1C4B609F0(v21 + v20, 1);
  v2 = *v1;
  v10 = *(v6 + 72);
  v23 = (*(*v1 + 24) >> 1) - *(*v1 + 16);
  v63 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  sub_1C461A084();
  if (v24 < v20)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v24)
  {
    v27 = *(v2 + 16);
    v28 = __OFADD__(v27, v24);
    v29 = v27 + v24;
    if (v28)
    {
      __break(1u);
      goto LABEL_14;
    }

    *(v2 + 16) = v29;
  }

  if (v24 != v23)
  {
    sub_1C449BB08(v66);
LABEL_8:
    *v1 = v2;
    return;
  }

LABEL_11:
  v20 = *(v2 + 16);
  v25 = v67;
  v57 = v66;
  v26 = v68;
  v23 = v69;
  v55 = v67;
  v52[1] = v68;
  if (v70)
  {
    v30 = (v70 - 1) & v70;
    v31 = __clz(__rbit64(v70)) | (v69 << 6);
    v54 = (v68 + 64) >> 6;
LABEL_19:
    (*(v6 + 16))(v19, *(v57 + 48) + v31 * v10, v4);
    v34 = 0;
LABEL_20:
    sub_1C440BAA8(v19, v34, 1, v4);
    v56 = (v6 + 16);
    v52[2] = v6 + 8;
    v53 = (v6 + 32);
    v35 = v20;
    v58 = v15;
    v61 = v19;
    while (2)
    {
      v36 = v64;
      sub_1C44A2E4C(v19, v64);
      if (sub_1C44157D4(v36, 1, v4) != 1)
      {
        sub_1C49E1870(v36);
        v37 = *(v2 + 24);
        v60 = v37 >> 1;
        if ((v37 >> 1) < v35 + 1)
        {
          sub_1C458CB3C(v37 > 1, v35 + 1, 1, v2);
          v2 = v51;
          v60 = *(v51 + 24) >> 1;
        }

        v62 = v35;
        v59 = v2 + v63;
        v38 = v53;
        while (1)
        {
          v39 = sub_1C43FE990();
          sub_1C44A2E4C(v39, v40);
          if (sub_1C44157D4(v15, 1, v4) == 1)
          {
            break;
          }

          v41 = *v38;
          v42 = v65;
          v43 = sub_1C43FE990();
          v41(v43);
          v44 = v4;
          v45 = v62;
          if (v62 >= v60)
          {
            v49 = sub_1C43FE990();
            v50(v49);
            v4 = v44;
            v15 = v58;
            v19 = v61;
            goto LABEL_39;
          }

          sub_1C49E1870(v61);
          (v41)(v59 + v45 * v10, v42, v44);
          v4 = v44;
          if (!v30)
          {
            v19 = v61;
            v36 = v62;
            v15 = v58;
            while (1)
            {
              v46 = v23 + 1;
              if (__OFADD__(v23, 1))
              {
                break;
              }

              if (v46 >= v54)
              {
                v30 = 0;
                v48 = 1;
                goto LABEL_35;
              }

              v30 = *(v55 + 8 * v46);
              ++v23;
              if (v30)
              {
                v23 = v46;
                goto LABEL_34;
              }
            }

            __break(1u);
            goto LABEL_41;
          }

          v19 = v61;
          v36 = v62;
          v15 = v58;
LABEL_34:
          sub_1C4418084();
          (*v56)(v19, *(v57 + 48) + v47 * v10, v4);
          v48 = 0;
LABEL_35:
          v62 = v36 + 1;
          sub_1C440BAA8(v19, v48, 1, v4);
        }

        sub_1C49E1870(v15);
LABEL_39:
        v35 = v62;
        *(v2 + 16) = v62;
        continue;
      }

      break;
    }

LABEL_41:
    sub_1C49E1870(v19);
    sub_1C449BB08(v57);
    sub_1C49E1870(v36);
    goto LABEL_8;
  }

LABEL_14:
  v54 = (v26 + 64) >> 6;
  while (1)
  {
    v32 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v32 >= ((v26 + 64) >> 6))
    {
      v30 = 0;
      v34 = 1;
      goto LABEL_20;
    }

    v33 = *(v25 + 8 * v32);
    ++v23;
    if (v33)
    {
      v30 = (v33 - 1) & v33;
      v31 = __clz(__rbit64(v33)) | (v32 << 6);
      v23 = v32;
      goto LABEL_19;
    }
  }

  __break(1u);
}

uint64_t sub_1C49D4318(uint64_t a1)
{
  v3 = sub_1C4428DA0(a1);
  v4 = sub_1C4428DA0(*v1);
  v5 = __OFADD__(v4, v3);
  result = v4 + v3;
  if (v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_1C4429970(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1C4CD7160(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v10 < 1)
  {
LABEL_6:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_1C49D4418(uint64_t a1)
{
  v4 = sub_1C4405E94(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1C4B60A50(v4, 1);
  sub_1C444345C();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_1C4416278();
  if (v10 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1C44D3DF4(v3 + 72 * v9 + 32, v7, v8, &type metadata for EntityInteractionOccurrence);

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  sub_1C445AC08();
  if (!v5)
  {
    *(v3 + 16) = v11;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1C49D4544(uint64_t a1)
{
  v4 = sub_1C4405E94(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1C4B60A98(v4, 1);
  sub_1C444345C();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_1C4416278();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = sub_1C456902C(&qword_1EC0B8C30, &qword_1C4F0E068);
  sub_1C44606BC(v8);

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  sub_1C445AC08();
  if (!v5)
  {
    *(v3 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1C49D4750(uint64_t a1)
{
  v4 = sub_1C4405E94(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1C4B60B28(v4, 1);
  sub_1C444345C();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_1C4416278();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = sub_1C456902C(&qword_1EC0B8D20, &unk_1C4F40CC0);
  sub_1C44606BC(v8);

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  sub_1C445AC08();
  if (!v5)
  {
    *(v3 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_1C49D4838(uint64_t a1)
{
  v6 = v1;
  v7 = a1;
  v8 = sub_1C49E17D0(a1);
  v9 = sub_1C4428DA0(*v1);
  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (v10)
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1C4429970(result, 1);
  v2 = *v1;
  v3 = *v1 & 0xFFFFFFFFFFFFFF8;
  v12 = *(v3 + 0x10);
  v13 = (*(v3 + 0x18) >> 1) - v12;
  result = sub_1C461A700(&v26, (v3 + 8 * v12 + 32), (*((*v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1) - v12, v7);
  if (result < v8)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (result >= 1)
  {
    v14 = *(v3 + 16);
    v10 = __OFADD__(v14, result);
    v15 = v14 + result;
    if (v10)
    {
      __break(1u);
      goto LABEL_14;
    }

    *(v3 + 16) = v15;
  }

  if (result != v13)
  {
LABEL_7:
    result = sub_1C449BB08(v26);
    *v6 = v2;
    return result;
  }

LABEL_10:
  v7 = *(v3 + 16);
  v8 = v26;
  v3 = v27;
  v4 = v29;
  v24 = v28;
  v5 = v30;
  if (v26 < 0)
  {
LABEL_14:
    if (!sub_1C4F02148())
    {
      goto LABEL_7;
    }

    sub_1C45A2D54();
    result = swift_dynamicCast();
    v16 = v25;
    goto LABEL_22;
  }

  if (v30)
  {
LABEL_20:
    sub_1C49E1CDC();
    v16 = *(*(v8 + 48) + ((v18 << 9) | (8 * v19)));
    result = v16;
  }

  else
  {
    while (1)
    {
      v17 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_44;
      }

      if (v17 >= ((v28 + 64) >> 6))
      {
        break;
      }

      v5 = *(v27 + 8 * v17);
      ++v4;
      if (v5)
      {
        v4 = v17;
        goto LABEL_20;
      }
    }

    v16 = 0;
    v5 = 0;
  }

  v29 = v4;
  v30 = v5;
LABEL_22:
  if (!v16)
  {
    goto LABEL_7;
  }

LABEL_23:
  if (v7 + 1 > *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    result = sub_1C4F016D8();
  }

  v2 = *v6;
  v20 = *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
  v23 = *v6 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v7 >= v20)
    {
      *(v23 + 16) = v7;
      goto LABEL_23;
    }

    *(v23 + 32 + 8 * v7++) = v16;
    if ((v8 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (!sub_1C4F02148())
    {
      goto LABEL_41;
    }

    sub_1C45A2D54();
    result = swift_dynamicCast();
    v16 = v25;
LABEL_37:
    if (!v16)
    {
LABEL_41:
      *(v23 + 16) = v7;
      goto LABEL_7;
    }
  }

  if (v5)
  {
LABEL_33:
    v22 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v16 = *(*(v8 + 48) + ((v4 << 9) | (8 * v22)));
    result = v16;
LABEL_34:
    v26 = v8;
    v27 = v3;
    v28 = v24;
    v29 = v4;
    v30 = v5;
    goto LABEL_37;
  }

  while (1)
  {
    v21 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v21 >= ((v24 + 64) >> 6))
    {
      v16 = 0;
      v5 = 0;
      goto LABEL_34;
    }

    v5 = *(v3 + 8 * v21);
    ++v4;
    if (v5)
    {
      v4 = v21;
      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

void sub_1C49D4CB0(uint64_t a1)
{
  v4 = sub_1C4405E94(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1C4B60BD0(v4, 1);
  sub_1C444345C();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_1C4416278();
  if (v10 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1C44D3DF4(v3 + (v9 << 6) + 32, v7, v8, &type metadata for BasicProperty);

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  sub_1C445AC08();
  if (!v5)
  {
    *(v3 + 16) = v11;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_1C49D4D44()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v3 = v2;
  v4 = *v1;
  sub_1C43FBDAC();
  *v5 = v4;
  *(v6 + 1720) = v0;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C49D4E3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1C43FBDC8();
  sub_1C4404B08();
  v89 = v12[107].n128_u64[1];
  v86 = v12[106].n128_u64[0];
  v83 = v12[104].n128_u64[0];
  v82 = v12[103].n128_u64[0];
  LODWORD(v93) = v12[160].n128_u8[13];
  v13 = v12[98].n128_i64[1];
  v14 = v12[81].n128_i64[0];
  sub_1C49E1C9C();
  v88 = v12[59].n128_i64[0];
  v87 = v12[50].n128_i64[1];
  v15 = v12[102].n128_u64[0];
  sub_1C49E1A08(v12[105]);
  v16 = v12[33].n128_i64[1];
  sub_1C4425DD8();
  sub_1C4471988(v17, v14);
  sub_1C4EFD538();
  sub_1C441346C();
  v91 = v18;
  sub_1C4471988(v16, v13);
  v19 = sub_1C49E1DA8();
  sub_1C440AEDC();
  v20 = sub_1C43FE5F8();
  sub_1C4471988(v20, v21);
  v22 = sub_1C44341B0();
  v82(v22);
  v23 = sub_1C445BDD4();
  sub_1C4471988(v23, v24);
  sub_1C44252A4();
  v25 = sub_1C445BA88();
  sub_1C4471988(v25, v26);
  sub_1C49E1A60();
  sub_1C448177C();
  sub_1C44AB194(v27);
  v28 = sub_1C44829A4(v13, v14);
  sub_1C440741C();
  v92 = v29;
  sub_1C447E970(v13, v30);
  v31 = sub_1C441E0A4();
  v83(v31);
  *(v19 + *(v15 + 40)) = v28;
  sub_1C445BFC0();

  sub_1C441FE54();
  v84 = v32;
  sub_1C447E970(v14, v33);
  sub_1C443465C();
  v34 = sub_1C449DB04();
  sub_1C4471988(v34, v35);
  v36 = sub_1C4404C28();
  sub_1C4471988(v36, v37);
  sub_1C4EFD538();
  v38 = sub_1C49E1D88();
  v39 = sub_1C441D310(v38, v85[8]);
  sub_1C4471988(v39, v38);
  v40 = sub_1C445BDD4();
  sub_1C4472068(v40, v41);
  v42 = sub_1C447CC40(v85[6]);
  v86(v42);
  *(v38 + v85[7]) = v93;
  sub_1C49E1988();
  sub_1C447E970(v14, v84);
  sub_1C44888A0();
  v43 = sub_1C449DB04();
  sub_1C4471988(v43, v44);
  v45 = sub_1C4404C28();
  sub_1C4471988(v45, v46);
  v90[32] = type metadata accessor for SoftwareMatcher(0);
  sub_1C43FC670();
  v90[33] = sub_1C4471C58(v47, v48, &protocol conformance descriptor for SoftwareMatcher);
  v49 = sub_1C4422F90(v90 + 29);
  sub_1C440183C(v49);
  v50 = sub_1C43FE5F8();
  sub_1C4472068(v50, v51);
  v52 = sub_1C445BDD4();
  sub_1C4472068(v52, v53);
  sub_1C49E195C();
  sub_1C49E1B30();
  v90[37] = v87;
  sub_1C44174EC();
  v90[38] = sub_1C4471C58(v54, v55, &protocol conformance descriptor for Resolver);
  v56 = sub_1C4422F90(v90 + 34);
  sub_1C444B1FC(v56);
  v58 = sub_1C441AFB8(v88, v57);
  sub_1C4471988(v58, v59);
  v60 = sub_1C4422B5C();
  sub_1C4471988(v60, v61);
  *(v13 + *(v87 + 28)) = v93;
  v62 = sub_1C4EF9E48();
  sub_1C44803E0(v62, v63, v64, v62);
  sub_1C49E1AC0();
  if (v89)
  {
  }

  sub_1C446BCB0();
  v65 = v12[78].n128_i64[1];
  sub_1C4408D30();
  sub_1C447E970(v66, v67);
  sub_1C4410FD4();
  sub_1C447E970(v65, v68);
  v69 = sub_1C4EFF1C8();
  sub_1C4404528(v69);
  sub_1C440E538();
  sub_1C49E19B0();
  sub_1C4485FF0();
  v70 = sub_1C43FD258();
  sub_1C447E970(v70, v71);
  *(v91 + *(v92 + 24)) = v93;
  sub_1C4419C7C();
  sub_1C440EE38();
  sub_1C4400850(v72);

  sub_1C43FBDA0();
  sub_1C43FEA3C();

  return v74(v73, v74, v75, v76, v77, v78, v79, v80, a9, a10, a11, a12);
}

uint64_t sub_1C49D5630()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v3 = v2;
  v4 = *v1;
  sub_1C43FBDAC();
  *v5 = v4;
  *(v6 + 1824) = v0;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C49D5728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1C43FBDC8();
  sub_1C4404B08();
  v140 = *(v12 + 1824);
  v135 = *(v12 + 1800);
  v127 = *(v12 + 1768);
  v121 = *(v12 + 1752);
  v13 = *(v12 + 1728);
  v143 = *(v12 + 2573);
  v14 = *(v12 + 1576);
  v15 = *(v12 + 1296);
  v137 = *(v12 + 1232);
  v139 = *(v12 + 1512);
  v141 = *(v12 + 1024);
  v16 = *(v12 + 1016);
  v17 = *(v12 + 960);
  v129 = *(v12 + 544);
  v119 = *(v12 + 1736);
  v18 = *(v12 + 1736);
  v133 = *(v12 + 1784);
  v134 = *(v12 + 1784);
  v19 = *(v12 + 536);
  v125 = v19;
  sub_1C4488440();
  sub_1C4471988(v20, v15);
  _s24IntelligencePlatformCore15LocationMatcherV11entityClass0aB006EntityG0Vvg_0();
  sub_1C445E900();
  sub_1C4471988(v19, v14);
  *(v13 + 176) = v119;
  v21 = sub_1C4422F90((v13 + 152));
  sub_1C440AEDC();
  sub_1C4471988(v15, v21);
  v22 = sub_1C44341B0();
  v123 = v17;
  v121(v22);
  v23 = sub_1C44AB274();
  sub_1C4471988(v23, v24);
  sub_1C44252A4();
  sub_1C4471988(v15, v25);
  sub_1C448177C();
  sub_1C44AB194(v26);
  v27 = sub_1C44CD058();
  v29 = sub_1C44829A4(v27, v28);
  sub_1C440741C();
  sub_1C447E970(v14, v30);
  v31 = sub_1C441E0A4();
  v127(v31);
  *(v21 + v18[10]) = v29;
  sub_1C445BFC0();
  v32 = *(v15 + *(v141 + 28));

  sub_1C441FE54();
  v131 = v33;
  sub_1C447E970(v15, v34);
  *(v21 + v18[12]) = v32;
  *(v21 + v18[13]) = 0;
  v35 = v129;
  v36 = sub_1C43FD388();
  sub_1C4471988(v36, v37);
  sub_1C4455954();
  sub_1C4471988(v38, v39);
  _s24IntelligencePlatformCore15LocationMatcherV11entityClass0aB006EntityG0Vvg_0();
  *(v13 + 216) = v133;
  v40 = sub_1C4422F90((v13 + 192));
  v41 = sub_1C4426CB8(v40, v134[8]);
  sub_1C4471988(v41, v40);
  sub_1C4472068(v14, v40 + v134[5]);
  v135(v40 + v134[6], v16, v123);
  *(v40 + v134[7]) = v143;
  sub_1C445136C();
  sub_1C447E970(v15, v131);
  *(v40 + v134[9]) = v16;
  sub_1C4471988(v129, v137);
  sub_1C4471988(v125, v139);
  LOBYTE(v146[0]) = v143;
  *(v13 + 256) = type metadata accessor for LocationMatcher(0);
  sub_1C441CC08();
  *(v13 + 264) = sub_1C4471C58(v42, v43, &protocol conformance descriptor for LocationMatcher);
  v44 = sub_1C4422F90((v13 + 232));
  LocationMatcher.init(stores:source:pipelineType:)(v137, v139, v146, v44);
  if (v140)
  {
    v45 = *(v12 + 1728);
    sub_1C47C41F8(v13 + 232);
    sub_1C440962C((v13 + 192));
    sub_1C440962C((v13 + 152));
    sub_1C440962C((v45 + 112));
    sub_1C4414D90();
    if (qword_1EDDFD028 != -1)
    {
      sub_1C43FE9B4(&qword_1EDDFD028);
    }

    v46 = sub_1C4F00978();
    sub_1C43FCEE8(v46, qword_1EDE2DE10);
    v47 = sub_1C4F01CD8();
    v48 = v140;
    v49 = sub_1C4F00968();

    if (os_log_type_enabled(v49, v47))
    {
      sub_1C4401E44();
      v146[0] = sub_1C440E550();
      *v13 = 136315138;
      *v125 = v140;
      v50 = v140;
      v51 = sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
      v52 = sub_1C49E1944(v51);
      sub_1C441D828(v52, v53, v146);
      sub_1C4410930();
      *(v13 + 4) = v15;
      _os_log_impl(&dword_1C43F8000, v49, v47, "Linker could not construct children, creating empty list due to: %s", v13, 0xCu);
      sub_1C440AEF4();
      sub_1C43FEA20();
    }

    v54 = *(v12 + 1592);
    v55 = *(v12 + 544);
    v56 = *(v12 + 536);
    v57 = *(v12 + 528);

    v58 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v124 = *(v12 + 1800);
    v118 = *(v12 + 1768);
    v117 = *(v12 + 1752);
    v142 = *(v12 + 2573);
    v59 = *(v12 + 1576);
    v60 = *(v12 + 1296);
    v136 = *(v12 + 1024);
    v61 = *(v12 + 1016);
    v130 = *(v12 + 1504);
    v132 = *(v12 + 928);
    v126 = *(v12 + 1224);
    v128 = *(v12 + 808);
    v144 = *(v12 + 544);
    v62 = (*(v12 + 1728) + 296);
    v63 = *(v12 + 1728);
    v122 = sub_1C44885B0(v12 + 1736);
    v64 = *(v12 + 536);
    v138 = v64;
    sub_1C4471988(v65, v60);
    sub_1C4EFD538();
    sub_1C441346C();
    sub_1C4471988(v64, v59);
    *v62 = v116;
    v66 = sub_1C4422F90(&v63[17]);
    sub_1C440AEDC();
    v67 = sub_1C43FD018();
    sub_1C4471988(v67, v68);
    sub_1C443E1E0();
    v117();
    sub_1C4471988(v59, v66 + v35[6]);
    *(v66 + v35[7]) = 0;
    sub_1C4471988(v60, v66 + v35[8]);
    sub_1C448177C();
    *(v66 + v35[9]) = v69;
    v70 = sub_1C44829A4(v59, v60);
    sub_1C440741C();
    sub_1C447E970(v59, v71);
    v72 = sub_1C441E0A4();
    v118(v72);
    *(v66 + v35[10]) = v70;
    *(v66 + v35[11]) = v142;
    v73 = *(v60 + *(v136 + 28));

    sub_1C441FE54();
    v120 = v74;
    sub_1C447E970(v60, v75);
    *(v66 + v35[12]) = v73;
    *(v66 + v35[13]) = 0;
    sub_1C4471988(v144, v60);
    v76 = sub_1C4402E08();
    sub_1C4471988(v76, v77);
    sub_1C4EFD538();
    v63[21] = v122;
    v78 = sub_1C4422F90(&v63[19].n128_i64[1]);
    v79 = sub_1C4426CB8(v78, *(v122.n128_u64[0] + 32));
    sub_1C4471988(v79, v78);
    v80 = sub_1C445BDD4();
    sub_1C4472068(v80, v81);
    v82 = sub_1C447CC40(*(v122.n128_u64[0] + 24));
    v124(v82);
    *(v78 + *(v122.n128_u64[0] + 28)) = v142;
    sub_1C445136C();
    sub_1C447E970(v60, v120);
    *(v78 + *(v122.n128_u64[0] + 36)) = v61;
    sub_1C4471988(v144, v60);
    v83 = sub_1C4402E08();
    sub_1C4471988(v83, v84);
    v85 = type metadata accessor for SoftwareMatcher(0);
    v63[23].n128_u64[1] = v85;
    sub_1C43FC670();
    v63[24].n128_u64[0] = sub_1C4471C58(v86, v87, &protocol conformance descriptor for SoftwareMatcher);
    v88 = sub_1C4422F90(&v63[22]);
    sub_1C440183C(v88);
    sub_1C4472068(v60, v88);
    v89 = sub_1C445BDD4();
    sub_1C4472068(v89, v90);
    *(v88 + *(v85 + 24)) = v142;
    sub_1C4471988(v144, v126);
    sub_1C4471988(v138, v130);
    v63[26].n128_u64[0] = v128;
    sub_1C44174EC();
    v63[26].n128_u64[1] = sub_1C4471C58(v91, v92, &protocol conformance descriptor for Resolver);
    v145 = sub_1C4422F90(&v63[24].n128_i64[1]);
    v93 = sub_1C441AFB8(v132, v128[6]);
    sub_1C4471988(v93, v94);
    sub_1C4471988(v130, v126 + v128[5]);
    *(v126 + v128[7]) = v142;
    v95 = sub_1C4EF9E48();
    sub_1C44803E0(v95, v96, v97, v95);
    sub_1C49E1AC0();
    v58 = *(v12 + 1728);
    v54 = *(v12 + 1592);
    v98 = *(v12 + 1224);
    v99 = *(v12 + 928);
    v100 = *(v12 + 808);
    v101 = *(v12 + 776);
    v55 = *(v12 + 544);
    v56 = *(v12 + 536);
    v57 = *(v12 + 528);
    sub_1C440741C();
    sub_1C447E970(v102, v103);
    sub_1C441FE54();
    sub_1C447E970(v98, v104);
    v105 = sub_1C4EFF1C8();
    sub_1C440BAA8(v101, 0, 1, v105);
    sub_1C4482F3C(v101, v99 + *(v100 + 32));
    sub_1C440E538();
    sub_1C4472068(v99, v145);
  }

  sub_1C447E970(v55, type metadata accessor for PhaseStores);
  sub_1C440741C();
  sub_1C447E970(v56, v106);
  *(v57 + *(v54 + 24)) = v58;
  sub_1C4419C7C();
  sub_1C44806D0();

  sub_1C43FBDA0();
  sub_1C43FEA3C();

  return v108(v107, v108, v109, v110, v111, v112, v113, v114, a9, a10, a11, a12);
}

uint64_t sub_1C49D64A8()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v3 = v2;
  v4 = *v1;
  sub_1C43FBDAC();
  *v5 = v4;
  *(v6 + 1928) = v0;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1C49D65A0()
{
  sub_1C43FBDC8();
  sub_1C4404B08();
  v101 = *(v0 + 1928);
  v109 = *(v0 + 1904);
  v102 = *(v0 + 1888);
  v105 = *(v0 + 1896);
  v104 = *(v0 + 1872);
  v103 = *(v0 + 1856);
  v1 = *(v0 + 1848);
  v96 = v1;
  v2 = *(v0 + 1840);
  v111 = *(v0 + 1832);
  LODWORD(v113) = *(v0 + 2573);
  v3 = *(v0 + 1576);
  v99 = *(v0 + 1480);
  v4 = *(v0 + 1296);
  v97 = *(v0 + 1200);
  v110 = *(v0 + 1024);
  v5 = *(v0 + 1016);
  v6 = *(v0 + 960);
  v100 = *(v0 + 920);
  v98 = *(v0 + 808);
  v114 = *(v0 + 544);
  v7 = *(v0 + 536);
  v108 = v7;
  sub_1C4425DD8();
  sub_1C4471988(v8, v4);
  sub_1C4EFCF28();
  sub_1C441346C();
  sub_1C4471988(v7, v3);
  v111[37] = v2;
  v111[38] = v1;
  v9 = sub_1C4422F90(v111 + 34);
  sub_1C440AEDC();
  v10 = sub_1C43FE5F8();
  sub_1C4471988(v10, v11);
  v12 = sub_1C44341B0();
  v107 = v6;
  v103(v12);
  sub_1C4471988(v3, v9 + v2[6]);
  sub_1C44252A4();
  v13 = sub_1C445BA88();
  sub_1C4471988(v13, v14);
  sub_1C448177C();
  sub_1C44AB194(v15);
  v16 = sub_1C4424948();
  v18 = sub_1C44829A4(v16, v17);
  sub_1C440741C();
  v112 = v19;
  sub_1C447E970(v3, v20);
  v21 = sub_1C4410428();
  v104(v21);
  *(v9 + v2[10]) = v18;
  sub_1C445BFC0();
  sub_1C49E1B9C();
  sub_1C441FE54();
  v106 = v22;
  sub_1C447E970(v4, v23);
  *(v9 + v2[12]) = v6;
  *(v9 + v2[13]) = 0;
  v24 = sub_1C449DB04();
  sub_1C4471988(v24, v25);
  sub_1C4471988(v108, v3);
  sub_1C4EFCF28();
  v111[42] = v102;
  v111[43] = v105;
  v26 = sub_1C4422F90(v111 + 39);
  v27 = sub_1C441D310(v26, v102[8]);
  sub_1C4471988(v27, v26);
  sub_1C4472068(v3, v26 + v102[5]);
  v28 = sub_1C44BBE74(v102[6]);
  v29(v28);
  *(v26 + v102[7]) = v113;
  v30 = *(v4 + *(v110 + 28));

  sub_1C447E970(v4, v106);
  *(v26 + v102[9]) = v30;
  v31 = sub_1C449DB04();
  sub_1C4471988(v31, v32);
  sub_1C4471988(v108, v3);
  v33 = v5;
  sub_1C4EFCF28();
  v34 = type metadata accessor for PassthroughMatcher(0);
  v111[47] = v34;
  sub_1C442FF54();
  v95 = sub_1C4471C58(v35, v36, &protocol conformance descriptor for PassthroughMatcher);
  v111[48] = v95;
  v37 = sub_1C4422F90(v111 + 44);
  sub_1C4455954();
  sub_1C4472068(v38, v39);
  *(v37 + *(v34 + 20)) = v113;
  v40 = sub_1C445BA88();
  sub_1C4472068(v40, v41);
  v109(v37 + *(v34 + 28), v33, v107);
  v42 = sub_1C449DB04();
  sub_1C4471988(v42, v43);
  sub_1C4EFD1C8();
  sub_1C4471988(v108, v3);
  v111[52] = v2;
  v111[53] = v96;
  v44 = sub_1C4422F90(v111 + 49);
  v45 = sub_1C4422A18();
  sub_1C4471988(v45, v46);
  v47 = sub_1C44BBCAC(v2[5]);
  v103(v47);
  sub_1C4471988(v3, v44 + v2[6]);
  *(v44 + v2[7]) = 0;
  v48 = sub_1C4488240();
  sub_1C4471988(v48, v49);
  sub_1C49E1A60();
  sub_1C448177C();
  *(v44 + v2[9]) = v50;
  v51 = sub_1C4424948();
  v52 = v33;
  v54 = sub_1C44829A4(v51, v53);
  sub_1C447E970(v3, v112);
  (v104)(v52, v107);
  *(v44 + v2[10]) = v54;
  *(v44 + v2[11]) = v113;
  v55 = *(v4 + *(v110 + 28));

  sub_1C447E970(v4, v106);
  *(v44 + v2[12]) = v55;
  *(v44 + v2[13]) = 0;
  v56 = sub_1C449DB04();
  sub_1C4471988(v56, v57);
  sub_1C4471988(v108, v3);
  sub_1C4EFD1C8();
  v111[57] = v102;
  v111[58] = v105;
  v58 = sub_1C4422F90(v111 + 54);
  v59 = sub_1C441D310(v58, v102[8]);
  sub_1C4471988(v59, v58);
  sub_1C4472068(v3, v58 + v102[5]);
  v60 = sub_1C44BBE74(v102[6]);
  v61(v60);
  *(v58 + v102[7]) = v113;
  v62 = *(v4 + *(v110 + 28));

  v63 = sub_1C43FE5F8();
  sub_1C447E970(v63, v64);
  *(v58 + v102[9]) = v62;
  v65 = sub_1C449DB04();
  sub_1C4471988(v65, v66);
  sub_1C4471988(v108, v3);
  sub_1C4EFD1C8();
  v111[62] = v34;
  v111[63] = v95;
  v67 = sub_1C4422F90(v111 + 59);
  sub_1C4455954();
  sub_1C4472068(v68, v69);
  *(v67 + *(v34 + 20)) = v113;
  v70 = sub_1C4488240();
  sub_1C4472068(v70, v71);
  v72 = sub_1C44BBE74(*(v34 + 28));
  v73(v72);
  sub_1C4471988(v114, v97);
  sub_1C4471988(v108, v99);
  v111[67] = v98;
  sub_1C44174EC();
  v111[68] = sub_1C4471C58(v74, v75, &protocol conformance descriptor for Resolver);
  v76 = sub_1C4422F90(v111 + 64);
  sub_1C444B1FC(v76);
  v78 = sub_1C441AFB8(v100, v77);
  sub_1C4471988(v78, v79);
  v80 = sub_1C4422B5C();
  sub_1C4471988(v80, v81);
  v82 = sub_1C44886A8();
  sub_1C44803E0(v82, v83, v84, v82);
  sub_1C49E1AC0();
  if (v101)
  {
  }

  sub_1C446BCB0();
  v85 = *(v0 + 1200);
  sub_1C4408D30();
  sub_1C447E970(v86, v87);
  sub_1C4410FD4();
  sub_1C447E970(v85, v88);
  v89 = sub_1C4EFF1C8();
  sub_1C4404528(v89);
  sub_1C440E538();
  sub_1C49E19B0();
  sub_1C4485FF0();
  v90 = sub_1C43FD258();
  sub_1C447E970(v90, v91);
  *(v111 + *(v112 + 24)) = v113;
  sub_1C4419C7C();
  sub_1C442CE50(v92);

  sub_1C441BB34();
  sub_1C43FEA3C();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1C49D7088()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v3 = v2;
  v4 = *v1;
  sub_1C43FBDAC();
  *v5 = v4;
  *(v6 + 2040) = v0;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C49D7180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1C43FBDC8();
  sub_1C4404B08();
  v13 = v12;
  v240 = *(v12 + 2016);
  v237 = *(v12 + 2008);
  v231 = *(v12 + 2000);
  v250 = *(v12 + 1984);
  v232 = *(v12 + 1968);
  v14 = *(v12 + 1960);
  v15 = *(v12 + 1952);
  v16 = *(v12 + 1944);
  v257 = *(v12 + 2573);
  v17 = *(v12 + 1576);
  v18 = *(v12 + 1296);
  v262 = *(v12 + 1024);
  v19 = *(v12 + 1016);
  v227 = *(v12 + 1008);
  v242 = *(v12 + 968);
  v20 = *(v12 + 960);
  v265 = *(v12 + 536);
  v268 = *(v12 + 544);
  sub_1C440F91C();
  sub_1C4471988(v21, v18);
  _s24IntelligencePlatformCore12EventMatcherV11entityClass0aB006EntityG0Vvg_0();
  sub_1C4416B18();
  sub_1C4471988(v265, v17);
  v16[37] = v15;
  v16[38] = v14;
  v22 = sub_1C4422F90(v16 + 34);
  sub_1C440AEDC();
  v23 = sub_1C440BB4C();
  sub_1C4471988(v23, v24);
  v25 = sub_1C4459BC0(v15[5]);
  v259 = v20;
  v232(v25);
  sub_1C445BC08();
  sub_1C4471988(v17, v26);
  sub_1C4422414();
  sub_1C4471988(v18, v27);
  sub_1C448177C();
  sub_1C49E1A84(v28);
  v29 = sub_1C43FD2BC();
  v31 = sub_1C44829A4(v29, v30);
  sub_1C440741C();
  v247 = v32;
  sub_1C447E970(v17, v33);
  v34 = sub_1C4414A08();
  v250(v34);
  *(v22 + v15[10]) = v31;
  *(v22 + v15[11]) = v257;
  sub_1C49E1B9C();
  sub_1C441FE54();
  v228 = v35;
  sub_1C447E970(v18, v36);
  *(v22 + v15[12]) = v262;
  sub_1C4495410();
  v37 = sub_1C449DB04();
  sub_1C4471988(v37, v38);
  sub_1C4471988(v265, v17);
  _s24IntelligencePlatformCore12EventMatcherV11entityClass0aB006EntityG0Vvg_0();
  v16[42] = v231;
  v16[43] = v237;
  v39 = sub_1C4422F90(v16 + 39);
  v40 = sub_1C441D310(v39, v231[8]);
  sub_1C4471988(v40, v39);
  sub_1C4472068(v17, v39 + v231[5]);
  v41 = sub_1C4459BC0(v231[6]);
  v240(v41);
  *(v39 + v231[7]) = v257;
  sub_1C4475394();
  sub_1C49E1B9C();
  sub_1C447E970(v18, v228);
  *(v39 + v231[9]) = v231;
  v42 = type metadata accessor for EventMatcher(0);
  v16[47] = v42;
  sub_1C445876C();
  v16[48] = sub_1C4471C58(v43, v44, &protocol conformance descriptor for EventMatcher);
  v45 = sub_1C4422F90(v16 + 44);
  sub_1C4471988(v268, v45 + *(v42 + 24));
  sub_1C4471988(v265, v45);
  *(v45 + *(v42 + 20)) = v257;
  sub_1C4471988(v268, v18);
  sub_1C4EFD538();
  sub_1C4471988(v265, v17);
  v16[52] = v15;
  v16[53] = v14;
  v46 = sub_1C4422F90(v16 + 49);
  v47 = sub_1C440BB4C();
  sub_1C4471988(v47, v48);
  (v232)(v46 + v15[5], v19, v259);
  v49 = sub_1C444AD48();
  sub_1C4471988(v49, v50);
  sub_1C4422414();
  sub_1C4471988(v18, v51);
  sub_1C448177C();
  sub_1C49E1A84(v52);
  v53 = sub_1C44829A4(v17, v18);
  sub_1C447E970(v17, v247);
  (v250)(v19, v259);
  *(v46 + v15[10]) = v53;
  *(v46 + v15[11]) = v257;
  sub_1C49E1B9C();
  sub_1C447E970(v18, v228);
  *(v46 + v15[12]) = v53;
  sub_1C4495410();
  v54 = sub_1C449DB04();
  sub_1C4471988(v54, v55);
  sub_1C4471988(v265, v17);
  sub_1C4EFD538();
  v16[57] = v231;
  v16[58] = v237;
  v56 = sub_1C4422F90(v16 + 54);
  v57 = sub_1C441D310(v56, v231[8]);
  sub_1C4471988(v57, v56);
  sub_1C4472068(v17, v56 + v231[5]);
  v58 = sub_1C44A14C0(v231[6]);
  v240(v58);
  *(v56 + v231[7]) = v257;
  sub_1C49E1988();
  v59 = sub_1C43FE5F8();
  sub_1C447E970(v59, v60);
  *(v56 + v231[9]) = v17;
  v61 = sub_1C449DB04();
  sub_1C4471988(v61, v62);
  sub_1C4471988(v265, v17);
  v63 = type metadata accessor for SoftwareMatcher(0);
  v16[62] = v63;
  sub_1C43FC670();
  v16[63] = sub_1C4471C58(v64, v65, &protocol conformance descriptor for SoftwareMatcher);
  v66 = sub_1C4422F90(v16 + 59);
  sub_1C440183C(v66);
  v67 = sub_1C440BB4C();
  sub_1C4472068(v67, v68);
  sub_1C4472068(v17, v66 + *(v63 + 20));
  *(v66 + *(v63 + 24)) = v257;
  v13[65] = v16;
  _s24IntelligencePlatformCore12EventMatcherV11entityClass0aB006EntityG0Vvg_0();
  v69 = sub_1C4EFD0A8();
  (v250)(v227, v259);
  v70 = 0;
  sub_1C49E18E4();
  v269 = v13;
  if (v231)
  {
    while (1)
    {
LABEL_5:
      v244 = v13[252];
      v233 = v13[248];
      v73 = v13[246];
      v254 = *(v13 + 2573);
      v74 = v13[162];
      v249 = v13[197];
      v251 = v13[128];
      v223 = v13[127];
      v75 = v13[125];
      v76 = v13[120];
      v261 = v13[68];
      sub_1C4418084();
      v238 = sub_1C4475DB0();
      v266 = v13[67];
      v73(v75);
      inited = swift_initStackObject();
      sub_1C4432614(inited, xmmword_1C4F0C890);
      v78 = sub_1C43FBEF8();
      sub_1C4471988(v78, v79);
      v80 = sub_1C4404084();
      v73(v80);
      v229 = v73;
      sub_1C44A180C();
      sub_1C4471988(v266, v249);
      v13 = sub_1C447CF3C();
      sub_1C440AEDC();
      v81 = sub_1C445852C();
      sub_1C4471988(v81, v82);
      (v73)(v13 + v18[5], v223, v76);
      sub_1C4471988(v249, v13 + v18[6]);
      sub_1C49E1C60();
      sub_1C4471988(v74, v83);
      sub_1C448177C();
      *(v13 + v18[9]) = v84;
      v85 = sub_1C44829A4(v249, v74);
      sub_1C440741C();
      sub_1C447E970(v249, v86);
      v233(v223, v76);
      *(v13 + v18[10]) = v85;
      sub_1C44D47E0(v18[11]);
      sub_1C447F1D0();
      sub_1C447E970(v74, v87);
      sub_1C49E1AA8();
      sub_1C4471988(v261, v74);
      *(v227 + 96) = v238;
      v88 = sub_1C4422F90((v227 + 72));
      v18 = v238.n128_u64[0];
      sub_1C4471988(v266, v88 + *(v238.n128_u64[0] + 20));
      v229(v88 + *(v238.n128_u64[0] + 24), v75, v76);
      *(v88 + *(v238.n128_u64[0] + 32)) = 1;
      v89 = sub_1C44333A0();
      sub_1C4471988(v89, v90);
      *(v88 + *(v238.n128_u64[0] + 28)) = v254;
      sub_1C4413F50();
      v92 = *(v74 + v91);

      v93 = sub_1C43FE99C();
      sub_1C447E970(v93, v94);
      *(v88 + *(v238.n128_u64[0] + 36)) = v92;
      v95 = type metadata accessor for PassthroughMatcher(0);
      *(v227 + 136) = v95;
      sub_1C442FF54();
      *(v227 + 144) = sub_1C4471C58(&qword_1EDDF4ED8, v96, &protocol conformance descriptor for PassthroughMatcher);
      sub_1C4422F90((v227 + 112));
      sub_1C44754D4();
      sub_1C4471988(v261, v97);
      sub_1C4471988(v266, v251);
      v98 = sub_1C4507B5C();
      v244(v98, v75, v76);
      *(v251 + *(v95 + 20)) = v254;
      sub_1C440C5F0();
      sub_1C445CB4C(v227);
    }
  }

  while (1)
  {
    v72 = v70 + 1;
    if (__OFADD__(v70, 1))
    {
      __break(1u);
      goto LABEL_23;
    }

    if (v72 >= v71)
    {
      break;
    }

    ++v70;
    if (*(v69 + 56 + 8 * v72))
    {
      goto LABEL_5;
    }
  }

  v99 = v13[248];
  v100 = v13[124];
  v101 = v13[120];

  sub_1C4EFCFB8();
  v102 = sub_1C4EFD0A8();
  v99(v100, v101);
  v103 = 0;
  sub_1C49E18E4();
  while (1)
  {
    v105 = v103 + 1;
    if (__OFADD__(v103, 1))
    {
      break;
    }

    if (v105 >= v104)
    {
      v131 = v13[121];

      sub_1C456902C(&unk_1EC0BC650, &qword_1C4F30BB0);
      v132 = *(v242 + 72);
      v133 = (*(v131 + 80) + 32) & ~*(v131 + 80);
      v134 = swift_allocObject();
      *(v134 + 16) = xmmword_1C4F0D480;
      v135 = v134 + v133;
      sub_1C4EFCEC8();
      sub_1C4EFCFC8();
      sub_1C4EFD498();
      v221 = v132;
      sub_1C4EFD4E8();
      sub_1C45A323C();
      sub_1C45A323C();
      v136 = 4;
      do
      {
        v253 = v136;
        v256 = v135;
        v248 = v13[252];
        v235 = v13[248];
        v137 = v13[246];
        v236 = *(v13 + 2573);
        v224 = v13[197];
        v138 = v13[162];
        v260 = v13[128];
        v139 = v13[127];
        v140 = v13[122];
        v141 = v13[120];
        v264 = v13[68];
        v222 = *(v13 + 122);
        v142 = v13[244];
        v243 = *(v269 + 125);
        v246 = v269[250];
        v143 = v269[67];
        v241 = v140;
        v144 = v135;
        v145 = v141;
        v137(v140, v144);
        v146 = swift_initStackObject();
        sub_1C4432614(v146, xmmword_1C4F0C890);
        v147 = sub_1C49E1CF0();
        sub_1C4471988(v147, v148);
        v149 = sub_1C4414A08();
        v226 = v145;
        (v137)(v149);
        sub_1C441346C();
        sub_1C4471988(v143, v224);
        *(v146 + 56) = v222;
        v150 = sub_1C4422F90((v146 + 32));
        sub_1C440AEDC();
        sub_1C4471988(v138, v150);
        v151 = sub_1C44341B0();
        (v137)(v151);
        v152 = sub_1C44AB274();
        sub_1C4471988(v152, v153);
        sub_1C44252A4();
        sub_1C4471988(v138, v154);
        sub_1C448177C();
        sub_1C44AB194(v155);
        v156 = sub_1C49E1CF0();
        v158 = sub_1C44829A4(v156, v157);
        sub_1C440741C();
        sub_1C447E970(v224, v159);
        v235(v139, v226);
        *(v150 + v142[10]) = v158;
        *(v150 + v142[11]) = v236;
        v160 = *(v138 + *(v260 + 28));

        sub_1C447F1D0();
        sub_1C447E970(v138, v161);
        *(v150 + v142[12]) = v160;
        v162 = v142[13];
        v13 = v269;
        *(v150 + v162) = 0;
        sub_1C4471988(v264, v138);
        *(v146 + 96) = v243;
        v163 = sub_1C4422F90((v146 + 72));
        sub_1C4471988(v143, v163 + v246[5]);
        (v137)(v163 + v246[6], v241, v226);
        *(v163 + v246[8]) = 1;
        sub_1C4471988(v138, v163);
        *(v163 + v246[7]) = v236;
        v164 = *(v138 + *(v260 + 28));

        v165 = sub_1C44158DC();
        sub_1C447E970(v165, v166);
        *(v163 + v246[9]) = v164;
        v167 = type metadata accessor for PassthroughMatcher(0);
        *(v146 + 136) = v167;
        sub_1C442FF54();
        *(v146 + 144) = sub_1C4471C58(&qword_1EDDF4ED8, v168, &protocol conformance descriptor for PassthroughMatcher);
        sub_1C4422F90((v146 + 112));
        sub_1C44754D4();
        sub_1C4471988(v264, v169);
        sub_1C4471988(v143, v137);
        v170 = sub_1C44A14C0(*(v167 + 28));
        v248(v170);
        *(v137 + *(v167 + 20)) = v236;
        sub_1C440C5F0();
        sub_1C445CB4C(v146);
        v135 = v256 + v221;
        v136 = v253 - 1;
      }

      while (v253 != 1);
      v267 = v269[255];
      v171 = *(v269 + 2573);
      v172 = v269[182];
      v173 = v269[147];
      v174 = v269[113];
      v175 = v269[101];
      v176 = v269[79];
      v177 = v269[68];
      v178 = v269[67];
      swift_setDeallocating();
      sub_1C44953AC(MEMORY[0x1E69A92C8]);
      sub_1C4471988(v177, v173);
      sub_1C4471988(v178, v172);
      *(v174 + v175[6]) = 4;
      sub_1C4471988(v173, v174);
      sub_1C4471988(v172, v174 + v175[5]);
      *(v174 + v175[7]) = v171;
      v179 = sub_1C4EF9E48();
      sub_1C44102A4(v176, v180, v181, v179);
      sub_1C4EFF1A8();
      if (v267)
      {

        v182 = 1;
      }

      else
      {
        v182 = 0;
      }

      v183 = v269[147];
      v184 = v269[114];
      v185 = v269[112];
      sub_1C440741C();
      sub_1C447E970(v186, v187);
      sub_1C441FE54();
      sub_1C447E970(v183, v188);
      sub_1C4EFF1C8();
      v189 = sub_1C49E18D8();
      sub_1C440BAA8(v189, v182, 1, v190);
      v191 = sub_1C4488240();
      sub_1C4482F3C(v191, v192);
      sub_1C440E538();
      v193 = sub_1C4404C28();
      sub_1C4472068(v193, v194);
      sub_1C4460884();
      sub_1C4471988(v184, v185);
      v195 = v269[65];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_17;
    }

    ++v103;
    if (*(v102 + 56 + 8 * v105))
    {
      while (1)
      {
        v239 = v13[252];
        v230 = v13[248];
        v106 = v13[246];
        v258 = *(v13 + 2573);
        v225 = v13[197];
        v220 = v13[162];
        v252 = v13[128];
        v245 = v13[127];
        v107 = v13[123];
        v108 = v13[120];
        v109 = v13[68];
        v263 = v109;
        sub_1C4418084();
        v234 = sub_1C4475DB0();
        v110 = v13[67];
        v255 = v110;
        v106(v107);
        v111 = swift_initStackObject();
        sub_1C4432614(v111, xmmword_1C4F0C890);
        sub_1C4471988(v109, v220);
        v112 = sub_1C43FE99C();
        v106(v112);
        sub_1C442BD10();
        sub_1C4471988(v110, v225);
        v13 = sub_1C447CF3C();
        sub_1C440AEDC();
        sub_1C4471988(v220, v13);
        (v106)(v13 + v18[5], v245, v108);
        sub_1C4471988(v225, v13 + v18[6]);
        sub_1C49E1C60();
        sub_1C4471988(v220, v113);
        sub_1C448177C();
        *(v13 + v18[9]) = v114;
        v115 = sub_1C4402B58();
        v117 = sub_1C44829A4(v115, v116);
        sub_1C440741C();
        sub_1C447E970(v225, v118);
        v230(v245, v108);
        *(v13 + v18[10]) = v117;
        sub_1C44D47E0(v18[11]);
        sub_1C447F1D0();
        sub_1C447E970(v220, v119);
        sub_1C49E1AA8();
        sub_1C4471988(v263, v220);
        *(v227 + 96) = v234;
        v120 = sub_1C4422F90((v227 + 72));
        v18 = v234.n128_u64[0];
        sub_1C4471988(v255, v120 + *(v234.n128_u64[0] + 20));
        (v106)(v120 + *(v234.n128_u64[0] + 24), v107, v108);
        *(v120 + *(v234.n128_u64[0] + 32)) = 1;
        v121 = sub_1C44333A0();
        sub_1C4471988(v121, v122);
        *(v120 + *(v234.n128_u64[0] + 28)) = v258;
        sub_1C4413F50();
        v124 = *(v220 + v123);

        v125 = sub_1C43FE99C();
        sub_1C447E970(v125, v126);
        *(v120 + *(v234.n128_u64[0] + 36)) = v124;
        v127 = type metadata accessor for PassthroughMatcher(0);
        *(v227 + 136) = v127;
        sub_1C442FF54();
        *(v227 + 144) = sub_1C4471C58(&qword_1EDDF4ED8, v128, &protocol conformance descriptor for PassthroughMatcher);
        sub_1C4422F90((v227 + 112));
        sub_1C44754D4();
        sub_1C4471988(v263, v129);
        sub_1C4471988(v255, v252);
        v130 = sub_1C4507B5C();
        v239(v130, v107, v108);
        *(v252 + *(v127 + 20)) = v258;
        sub_1C440C5F0();
        sub_1C445CB4C(v227);
      }
    }
  }

LABEL_23:
  __break(1u);
LABEL_24:
  sub_1C458C04C();
  v195 = v218;
LABEL_17:
  v196 = *(v195 + 16);
  if (v196 >= *(v195 + 24) >> 1)
  {
    sub_1C458C04C();
    v195 = v219;
  }

  v197 = v269[199];
  v198 = v269[112];
  v199 = v269[68];
  v200 = v269[67];
  v201 = v269[66];
  v269[62] = v269[101];
  sub_1C44174EC();
  v269[63] = sub_1C4471C58(v202, v203, &protocol conformance descriptor for Resolver);
  sub_1C4422F90(v269 + 59);
  sub_1C4460884();
  sub_1C4471988(v198, v204);
  *(v195 + 16) = v196 + 1;
  sub_1C441D670((v269 + 59), v195 + 40 * v196 + 32);
  sub_1C447E970(v198, type metadata accessor for Resolver);
  sub_1C441FE54();
  sub_1C447E970(v199, v205);
  v206 = sub_1C4402B58();
  sub_1C447E970(v206, v207);
  sub_1C440741C();
  sub_1C447E970(v200, v208);
  *(v201 + *(v197 + 24)) = v195;
  sub_1C442E15C();
  sub_1C44806D0();
  sub_1C49E1CD0();
  sub_1C49E1CC4();
  sub_1C447F56C();

  sub_1C43FBDA0();
  sub_1C43FEA3C();

  return v210(v209, v210, v211, v212, v213, v214, v215, v216, a9, a10, a11, a12);
}

uint64_t sub_1C49D8924()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v3 = v2;
  v4 = *v1;
  sub_1C43FBDAC();
  *v5 = v4;
  *(v6 + 2144) = v0;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1C49D8A1C()
{
  sub_1C43FBDC8();
  sub_1C4404B08();
  v113 = v0[265];
  v108 = v0[268];
  v109 = v0[263];
  v112 = v0[264];
  v111 = v0[261];
  v110 = v0[259];
  v1 = v0[258];
  v104 = v1;
  v2 = v0[257];
  v116 = v0[256];
  sub_1C44F0CD8();
  v3 = v0[197];
  v4 = v0[162];
  v105 = v0[145];
  v120 = v0[128];
  v5 = v0[127];
  v6 = v0[120];
  v107 = v0[111];
  v106 = v0[101];
  v115 = v0[68];
  v7 = v0[67];
  v119 = v7;
  sub_1C4425DD8();
  sub_1C4471988(v8, v4);
  sub_1C4EFD538();
  sub_1C4418B34();
  v9 = v7;
  v10 = v3;
  sub_1C4471988(v9, v3);
  v116[22] = v2;
  v116[23] = v1;
  v11 = sub_1C4422F90(v116 + 19);
  sub_1C440AEDC();
  v12 = sub_1C43FBEF8();
  sub_1C4471988(v12, v13);
  v14 = v5;
  v110(v11 + v2[5], v5, v6);
  v15 = sub_1C445BDD4();
  v16 = v10;
  v103 = v10;
  sub_1C4471988(v15, v17);
  sub_1C44252A4();
  sub_1C4471988(v4, v18);
  sub_1C448177C();
  sub_1C44AB194(v19);
  v20 = sub_1C4402B58();
  v22 = sub_1C44829A4(v20, v21);
  sub_1C440741C();
  v118 = v23;
  sub_1C447E970(v16, v24);
  v111(v14, v6);
  *(v11 + v2[10]) = v22;
  *(v11 + v2[11]) = v117;

  sub_1C441FE54();
  v114 = v25;
  sub_1C447E970(v4, v26);
  sub_1C443465C();
  v27 = sub_1C4422A18();
  sub_1C4471988(v27, v28);
  sub_1C4471988(v119, v103);
  sub_1C4EFD538();
  v116[27] = v109;
  v116[28] = v112;
  v29 = sub_1C4422F90(v116 + 24);
  sub_1C44184D8(v29);
  v30 = sub_1C43FBEF8();
  sub_1C4471988(v30, v31);
  v32 = sub_1C445BDD4();
  sub_1C4472068(v32, v33);
  v113(v29 + v109[6], v14, v6);
  *(v29 + v109[7]) = v117;
  v34 = *(v4 + *(v120 + 28));

  sub_1C447E970(v4, v114);
  *(v29 + v109[9]) = v34;
  sub_1C4471988(v115, v4);
  sub_1C4471988(v119, v103);
  v35 = type metadata accessor for SoftwareMatcher(0);
  v116[32] = v35;
  sub_1C43FC670();
  v38 = sub_1C4471C58(v36, v37, &protocol conformance descriptor for SoftwareMatcher);
  v39 = sub_1C49E1DE0(v38);
  *(v39 + v35[7]) = 1056964608;
  sub_1C4EFD538();
  v40 = sub_1C44CD058();
  sub_1C4472068(v40, v41);
  sub_1C4472068(v103, v39 + v35[5]);
  *(v39 + v35[6]) = v117;
  v42 = sub_1C4410428();
  sub_1C4471988(v42, v43);
  sub_1C4EFCF48();
  sub_1C4471988(v119, v103);
  v116[37] = v2;
  v116[38] = v104;
  v44 = sub_1C4422F90(v116 + 34);
  v45 = sub_1C43FBEF8();
  sub_1C4471988(v45, v46);
  v47 = sub_1C44341B0();
  (v110)(v47);
  v48 = sub_1C448E070();
  sub_1C4471988(v48, v49);
  sub_1C44252A4();
  sub_1C4471988(v4, v50);
  sub_1C448177C();
  sub_1C44AB194(v51);
  v52 = sub_1C4422A18();
  v54 = sub_1C44829A4(v52, v53);
  sub_1C447E970(v103, v118);
  v55 = sub_1C441E0A4();
  (v111)(v55);
  *(v44 + v2[10]) = v54;
  *(v44 + v2[11]) = v117;

  sub_1C447E970(v4, v114);
  sub_1C443465C();
  sub_1C4471988(v115, v4);
  v56 = sub_1C4424948();
  sub_1C4471988(v56, v57);
  sub_1C4EFCF48();
  v116[42] = v109;
  v116[43] = v112;
  v58 = sub_1C4422F90(v116 + 39);
  sub_1C44184D8(v58);
  v59 = sub_1C43FBEF8();
  sub_1C4471988(v59, v60);
  v61 = sub_1C448E070();
  sub_1C4472068(v61, v62);
  v63 = sub_1C447CC40(v109[6]);
  (v113)(v63);
  sub_1C445A9B8(v109[7]);

  v64 = sub_1C4404C28();
  sub_1C447E970(v64, v65);
  sub_1C44888A0();
  v66 = sub_1C4402B58();
  sub_1C4471988(v66, v67);
  v68 = sub_1C4424948();
  sub_1C4471988(v68, v69);
  v70 = type metadata accessor for GroupMatcher(0);
  v116[47] = v70;
  sub_1C4495274();
  v116[48] = sub_1C4471C58(v71, v72, &protocol conformance descriptor for GroupMatcher);
  v73 = sub_1C4422F90(v116 + 44);
  sub_1C4EFCF48();
  *(v73 + v70[9]) = 1056964608;
  v74 = sub_1C43FBEF8();
  sub_1C4471988(v74, v75);
  v76 = sub_1C448E070();
  sub_1C4472068(v76, v77);
  sub_1C445A9B8(v70[6]);
  v79 = *(v4 + v78);

  sub_1C447E970(v4, v114);
  *(v73 + v70[7]) = v79;
  sub_1C4471988(v115, v105);
  sub_1C443E1E0();
  sub_1C4471988(v80, v81);
  v116[52] = v106;
  sub_1C44174EC();
  v116[53] = sub_1C4471C58(v82, v83, &protocol conformance descriptor for Resolver);
  v84 = sub_1C4422F90(v116 + 49);
  sub_1C444B1FC(v84);
  v86 = sub_1C441AFB8(v107, v85);
  sub_1C4471988(v86, v87);
  v88 = sub_1C4422B5C();
  sub_1C4471988(v88, v89);
  v90 = sub_1C44886A8();
  sub_1C44803E0(v90, v91, v92, v90);
  sub_1C49E1AC0();
  if (v108)
  {
  }

  sub_1C446BCB0();
  v93 = v0[145];
  sub_1C4408D30();
  sub_1C447E970(v94, v95);
  sub_1C4410FD4();
  sub_1C447E970(v93, v96);
  v97 = sub_1C4EFF1C8();
  sub_1C4404528(v97);
  sub_1C440E538();
  sub_1C49E19B0();
  sub_1C4485FF0();
  v98 = sub_1C43FD258();
  sub_1C447E970(v98, v99);
  *(v117 + *(v118 + 24)) = v119;
  sub_1C4419C7C();
  sub_1C442CE50(v100);

  sub_1C441BB34();
  sub_1C43FEA3C();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1C49D9504()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v3 = v2;
  v4 = *v1;
  sub_1C43FBDAC();
  *v5 = v4;
  *(v6 + 2272) = v0;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C49D95FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1C43FBDC8();
  sub_1C4404B08();
  v82 = *(v12 + 2272);
  v77 = *(v12 + 2248);
  v75 = *(v12 + 2216);
  v73 = *(v12 + 2200);
  v14 = *(v12 + 2176);
  LODWORD(v86) = *(v12 + 2573);
  v15 = *(v12 + 1576);
  v16 = *(v12 + 1296);
  v80 = *(v12 + 1408);
  v81 = *(v12 + 872);
  v78 = *(v12 + 1128);
  v79 = *(v12 + 808);
  v74 = *(v12 + 544);
  v76 = sub_1C44885B0(v12 + 2184);
  v17 = *(v12 + 536);
  v83 = v17;
  sub_1C44807E8();
  sub_1C4471988(v18, v16);
  sub_1C4EFCF48();
  sub_1C441346C();
  sub_1C4471988(v17, v15);
  *(v14 + 176) = v72;
  v19 = sub_1C4422F90((v14 + 152));
  sub_1C440AEDC();
  sub_1C4471988(v16, v19);
  v20 = sub_1C44341B0();
  v73(v20);
  v21 = sub_1C448E070();
  sub_1C4471988(v21, v22);
  sub_1C44252A4();
  sub_1C4471988(v16, v23);
  sub_1C448177C();
  sub_1C44AB194(v24);
  v25 = sub_1C4402E08();
  v27 = sub_1C44829A4(v25, v26);
  sub_1C440741C();
  v85 = v28;
  sub_1C447E970(v15, v29);
  v30 = sub_1C4414A08();
  v75(v30);
  *(v19 + *(v13 + 40)) = v27;
  sub_1C445BFC0();

  sub_1C441FE54();
  v84 = v31;
  sub_1C447E970(v16, v32);
  sub_1C443465C();
  sub_1C4471988(v74, v16);
  sub_1C4471988(v83, v15);
  sub_1C4EFCF48();
  *(v14 + 216) = v76;
  v33 = sub_1C4422F90((v14 + 192));
  sub_1C44184D8(v33);
  sub_1C44F0C40(v16);
  v34 = sub_1C448E070();
  sub_1C4472068(v34, v35);
  v36 = sub_1C447CC40(*(v76.n128_u64[0] + 24));
  v77(v36);
  sub_1C445A9B8(*(v76.n128_u64[0] + 28));

  sub_1C447E970(v16, v84);
  sub_1C44888A0();
  sub_1C4471988(v74, v16);
  sub_1C4471988(v83, v15);
  v37 = type metadata accessor for GroupMatcher(0);
  *(v14 + 256) = v37;
  sub_1C4495274();
  *(v14 + 264) = sub_1C4471C58(v38, v39, &protocol conformance descriptor for GroupMatcher);
  v40 = sub_1C4422F90((v14 + 232));
  sub_1C4EFCF48();
  *(v40 + v37[9]) = 1056964608;
  sub_1C4471988(v16, v40);
  v41 = sub_1C448E070();
  sub_1C4472068(v41, v42);
  sub_1C445A9B8(v37[6]);
  v44 = *(v16 + v43);

  sub_1C447E970(v16, v84);
  *(v40 + v37[7]) = v44;
  sub_1C4471988(v74, v78);
  sub_1C4471988(v83, v80);
  *(v14 + 296) = v79;
  sub_1C44174EC();
  *(v14 + 304) = sub_1C4471C58(v45, v46, &protocol conformance descriptor for Resolver);
  v47 = sub_1C4422F90((v14 + 272));
  sub_1C444B1FC(v47);
  v49 = sub_1C441AFB8(v81, v48);
  sub_1C4471988(v49, v50);
  v51 = sub_1C4422B5C();
  sub_1C4471988(v51, v52);
  v53 = sub_1C44886A8();
  sub_1C44803E0(v53, v54, v55, v53);
  sub_1C49E1AC0();
  if (v82)
  {
  }

  sub_1C446BCB0();
  v56 = *(v12 + 1128);
  sub_1C4408D30();
  sub_1C447E970(v57, v58);
  sub_1C4410FD4();
  sub_1C447E970(v56, v59);
  v60 = sub_1C4EFF1C8();
  sub_1C4404528(v60);
  sub_1C440E538();
  sub_1C49E19B0();
  sub_1C4485FF0();
  v61 = sub_1C43FD258();
  sub_1C447E970(v61, v62);
  *(v84 + *(v85 + 24)) = v86;
  sub_1C4412098();
  sub_1C442E15C();
  sub_1C44806D0();
  sub_1C49E1CD0();
  sub_1C49E1CC4();

  sub_1C43FBDA0();
  sub_1C43FEA3C();

  return v64(v63, v64, v65, v66, v67, v68, v69, v70, a9, a10, a11, a12);
}

uint64_t sub_1C49D9EF8()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v3 = v2;
  v4 = *v1;
  sub_1C43FBDAC();
  *v5 = v4;
  *(v6 + 2296) = v0;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1C49D9FF0()
{
  sub_1C43FBDC8();
  sub_1C4404B08();
  v1 = v0[285];
  sub_1C44F0CD8();
  v2 = v0[173];
  v3 = v0[138];
  v4 = v0[101];
  v24 = v0[91];
  v25 = v5;
  v6 = v0[67];
  sub_1C440D610();
  sub_1C4471988(v7, v3);
  sub_1C442BD10();
  sub_1C4471988(v6, v2);
  v1[52] = v4;
  sub_1C44174EC();
  v1[53] = sub_1C4471C58(v8, v9, &protocol conformance descriptor for Resolver);
  v10 = sub_1C4422F90(v1 + 49);
  sub_1C444B1FC(v10);
  sub_1C43FE710(v11);
  sub_1C4471D00();
  v12 = sub_1C4462804();
  sub_1C445FE04(v12);
  if (v4)
  {
  }

  sub_1C446BCB0();
  v13 = v0[138];
  sub_1C4408D30();
  sub_1C447E970(v14, v15);
  sub_1C4410FD4();
  sub_1C447E970(v13, v16);
  v17 = sub_1C4EFF1C8();
  sub_1C4404528(v17);
  sub_1C440E538();
  sub_1C49E19B0();
  sub_1C4485FF0();
  v18 = sub_1C43FD258();
  sub_1C447E970(v18, v19);
  *(v23 + *(v24 + 24)) = v25;
  sub_1C4419C7C();
  sub_1C442CE50(v20);

  sub_1C441BB34();
  sub_1C43FEA3C();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1C49DA550()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v3 = v2;
  v4 = *v1;
  sub_1C43FBDAC();
  *v5 = v4;
  *(v6 + 2400) = v0;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C49DA648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1C43FBDC8();
  sub_1C4404B08();
  v83 = *(v13 + 2400);
  v87 = *(v13 + 2376);
  v75 = *(v13 + 2344);
  v74 = *(v13 + 2328);
  v15 = *(v13 + 2304);
  LODWORD(v86) = *(v13 + 2573);
  v16 = *(v13 + 1576);
  v17 = *(v13 + 1296);
  v18 = *(v13 + 1016);
  v19 = *(v13 + 960);
  v81 = *(v13 + 1360);
  v82 = *(v13 + 848);
  v79 = *(v13 + 1080);
  v80 = *(v13 + 808);
  v84 = *(v13 + 544);
  v20 = sub_1C44885B0(v13 + 2312);
  sub_1C49E1A08(v20);
  v21 = *(v13 + 536);
  v88 = v21;
  sub_1C4488440();
  sub_1C4471988(v22, v17);
  sub_1C4EFCED8();
  sub_1C4416B18();
  sub_1C4471988(v21, v16);
  *(v15 + 176) = v73;
  v23 = sub_1C4422F90((v15 + 152));
  sub_1C440AEDC();
  v24 = sub_1C4402E08();
  sub_1C4471988(v24, v25);
  v85 = v19;
  v74(v23 + v14[5], v18, v19);
  sub_1C4471988(v16, v23 + v14[6]);
  *(v23 + v14[7]) = 0;
  sub_1C4471988(v17, v23 + v14[8]);
  sub_1C4482D00();
  sub_1C448177C();
  *(v23 + v14[9]) = v26;
  v27 = sub_1C44829A4(v16, v17);
  sub_1C440741C();
  sub_1C447E970(v16, v28);
  v75(v18, v19);
  *(v23 + v14[10]) = v27;
  *(v23 + v14[11]) = v86;
  v29 = *(v17 + *(v12 + 28));

  sub_1C441FE54();
  v76 = v30;
  sub_1C447E970(v17, v31);
  *(v23 + v14[12]) = v29;
  *(v23 + v14[13]) = 0;
  v32 = sub_1C43FE990();
  sub_1C4471988(v32, v33);
  sub_1C4471988(v88, v16);
  sub_1C4EFCED8();
  *(v15 + 216) = v77;
  v34 = sub_1C4422F90((v15 + 192));
  v35 = sub_1C441D310(v34, v78[8]);
  sub_1C4471988(v35, v34);
  sub_1C4472068(v16, v34 + v78[5]);
  (v87)(v34 + v78[6], v18, v85);
  *(v34 + v78[7]) = v86;
  sub_1C4413F50();
  sub_1C49E1B9C();
  sub_1C447E970(v17, v76);
  *(v34 + v78[9]) = v78;
  v36 = sub_1C43FE990();
  sub_1C4471988(v36, v37);
  sub_1C4EFCED8();
  v38 = type metadata accessor for IdentifierBasedMatcher(0);
  *(v15 + 256) = v38;
  sub_1C44C1290();
  *(v15 + 264) = sub_1C4471C58(v39, v40, &protocol conformance descriptor for IdentifierBasedMatcher);
  v41 = sub_1C4422F90((v15 + 232));
  sub_1C4471988(v88, v41 + v38[5]);
  *(v41 + v38[7]) = 1056964608;
  v42 = sub_1C4422A18();
  sub_1C4472068(v42, v43);
  v44 = sub_1C44BBCAC(v38[8]);
  (v87)(v44);
  *(v41 + v38[6]) = v86;
  sub_1C4471988(v84, v79);
  sub_1C4471988(v88, v81);
  *(v15 + 296) = v80;
  sub_1C44174EC();
  *(v15 + 304) = sub_1C4471C58(v45, v46, &protocol conformance descriptor for Resolver);
  v47 = sub_1C4422F90((v15 + 272));
  sub_1C444B1FC(v47);
  v49 = sub_1C441AFB8(v82, v48);
  sub_1C4471988(v49, v50);
  v51 = sub_1C4422B5C();
  sub_1C4471988(v51, v52);
  *(v79 + *(v80 + 28)) = v86;
  v53 = sub_1C4EF9E48();
  sub_1C44803E0(v53, v54, v55, v53);
  sub_1C49E1AC0();
  if (v83)
  {
  }

  sub_1C446BCB0();
  v56 = *(v13 + 1080);
  sub_1C4408D30();
  sub_1C447E970(v57, v58);
  sub_1C4410FD4();
  sub_1C447E970(v56, v59);
  v60 = sub_1C4EFF1C8();
  sub_1C4404528(v60);
  sub_1C440E538();
  sub_1C49E19B0();
  sub_1C4485FF0();
  v61 = sub_1C43FD258();
  sub_1C447E970(v61, v62);
  *(v86 + *(v87 + 24)) = v88;
  sub_1C4412098();
  sub_1C442E15C();
  sub_1C440EE38();
  sub_1C4400850(v63);

  sub_1C43FBDA0();
  sub_1C43FEA3C();

  return v65(v64, v65, v66, v67, v68, v69, v70, v71, a9, a10, a11, a12);
}

uint64_t sub_1C49DAF10()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v3 = v2;
  v4 = *v1;
  sub_1C43FBDAC();
  *v5 = v4;
  *(v6 + 2504) = v0;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C49DB008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1C43FBDC8();
  sub_1C4404B08();
  v89 = v12[156].n128_u64[1];
  v86 = v12[155].n128_u64[0];
  v83 = v12[153].n128_u64[0];
  v82 = v12[152].n128_u64[0];
  LODWORD(v93) = v12[160].n128_u8[13];
  v13 = v12[98].n128_i64[1];
  v14 = v12[81].n128_i64[0];
  sub_1C49E1C9C();
  v88 = v12[52].n128_i64[0];
  v87 = v12[50].n128_i64[1];
  v15 = v12[151].n128_u64[0];
  sub_1C49E1A08(v12[154]);
  v16 = v12[33].n128_i64[1];
  sub_1C4425DD8();
  sub_1C4471988(v17, v14);
  sub_1C4EFD538();
  sub_1C441346C();
  v91 = v18;
  sub_1C4471988(v16, v13);
  v19 = sub_1C49E1DA8();
  sub_1C440AEDC();
  v20 = sub_1C43FE5F8();
  sub_1C4471988(v20, v21);
  v22 = sub_1C44341B0();
  v82(v22);
  v23 = sub_1C445BDD4();
  sub_1C4471988(v23, v24);
  sub_1C44252A4();
  v25 = sub_1C445BA88();
  sub_1C4471988(v25, v26);
  sub_1C49E1A60();
  sub_1C448177C();
  sub_1C44AB194(v27);
  v28 = sub_1C44829A4(v13, v14);
  sub_1C440741C();
  v92 = v29;
  sub_1C447E970(v13, v30);
  v31 = sub_1C441E0A4();
  v83(v31);
  *(v19 + *(v15 + 40)) = v28;
  sub_1C445BFC0();

  sub_1C441FE54();
  v84 = v32;
  sub_1C447E970(v14, v33);
  sub_1C443465C();
  v34 = sub_1C449DB04();
  sub_1C4471988(v34, v35);
  v36 = sub_1C4404C28();
  sub_1C4471988(v36, v37);
  sub_1C4EFD538();
  v38 = sub_1C49E1D88();
  v39 = sub_1C441D310(v38, v85[8]);
  sub_1C4471988(v39, v38);
  v40 = sub_1C445BDD4();
  sub_1C4472068(v40, v41);
  v42 = sub_1C447CC40(v85[6]);
  v86(v42);
  *(v38 + v85[7]) = v93;
  sub_1C49E1988();
  sub_1C447E970(v14, v84);
  sub_1C44888A0();
  v43 = sub_1C449DB04();
  sub_1C4471988(v43, v44);
  v45 = sub_1C4404C28();
  sub_1C4471988(v45, v46);
  v90[32] = type metadata accessor for SoftwareMatcher(0);
  sub_1C43FC670();
  v90[33] = sub_1C4471C58(v47, v48, &protocol conformance descriptor for SoftwareMatcher);
  v49 = sub_1C4422F90(v90 + 29);
  sub_1C440183C(v49);
  v50 = sub_1C43FE5F8();
  sub_1C4472068(v50, v51);
  v52 = sub_1C445BDD4();
  sub_1C4472068(v52, v53);
  sub_1C49E195C();
  sub_1C49E1B30();
  v90[37] = v87;
  sub_1C44174EC();
  v90[38] = sub_1C4471C58(v54, v55, &protocol conformance descriptor for Resolver);
  v56 = sub_1C4422F90(v90 + 34);
  sub_1C444B1FC(v56);
  v58 = sub_1C441AFB8(v88, v57);
  sub_1C4471988(v58, v59);
  v60 = sub_1C4422B5C();
  sub_1C4471988(v60, v61);
  *(v13 + *(v87 + 28)) = v93;
  v62 = sub_1C4EF9E48();
  sub_1C44803E0(v62, v63, v64, v62);
  sub_1C49E1AC0();
  if (v89)
  {
  }

  sub_1C446BCB0();
  v65 = v12[66].n128_i64[0];
  sub_1C4408D30();
  sub_1C447E970(v66, v67);
  sub_1C4410FD4();
  sub_1C447E970(v65, v68);
  v69 = sub_1C4EFF1C8();
  sub_1C4404528(v69);
  sub_1C440E538();
  sub_1C49E19B0();
  sub_1C4485FF0();
  v70 = sub_1C43FD258();
  sub_1C447E970(v70, v71);
  *(v91 + *(v92 + 24)) = v93;
  sub_1C4419C7C();
  sub_1C440EE38();
  sub_1C4400850(v72);

  sub_1C43FBDA0();
  sub_1C43FEA3C();

  return v74(v73, v74, v75, v76, v77, v78, v79, v80, a9, a10, a11, a12);
}

uint64_t sub_1C49DB7FC()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = v2;
  sub_1C44001F0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 2544) = v5;
  *(v3 + 2552) = v0;

  if (v0)
  {
    sub_1C440741C();
    sub_1C447E970(v6, v7);
  }

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

void sub_1C49DB90C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1C43FBDC8();
  sub_1C4404B08();
  v13 = v12[318];
  if (v13)
  {
    v14 = v12[199];
    v15 = v12[67];
    v16 = v12[66];
    sub_1C441FE54();
    sub_1C447E970(v17, v18);
    sub_1C447E970(v15, type metadata accessor for Source);
    v19 = sub_1C4410428();
    sub_1C447E970(v19, v20);
    *(v16 + *(v14 + 24)) = v13;
    sub_1C4412098();
    sub_1C44359B4();
    sub_1C440EE38();
    sub_1C49E1CD0();
    sub_1C49E1CC4();
    sub_1C447F56C();

    sub_1C43FBDA0();
    sub_1C43FEA3C();

    v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12);
  }

  else
  {
    MEMORY[0x1C6940010](*v12[67], *(v12[67] + 8));
    MEMORY[0x1C6940010](0xD000000000000017, 0x80000001C4FAC0B0);
    sub_1C4F024A8();
    sub_1C43FEA3C();
  }
}

void sub_1C49DBE68()
{
  sub_1C43FBDC8();
  sub_1C4404B08();
  v5 = *(v1 + 1600);
  sub_1C47C41F8((v5 + 59));
  sub_1C440962C(v5 + 54);
  sub_1C440962C(v5 + 49);
  sub_1C440962C(v5 + 44);
  sub_1C440962C(v5 + 39);
  sub_1C440962C(v5 + 34);
  sub_1C440962C(v5 + 29);
  sub_1C440962C(v5 + 24);
  sub_1C440962C(v5 + 19);
  sub_1C440962C(v5 + 14);
  sub_1C4414D90();
  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4(&qword_1EDDFD028);
  }

  v6 = sub_1C4F00978();
  sub_1C43FCEE8(v6, qword_1EDE2DE10);
  sub_1C4F01CD8();
  sub_1C4480554();
  sub_1C4F00968();
  sub_1C44F19D0();
  if (sub_1C444AD54())
  {
    sub_1C4401E44();
    v7 = sub_1C440E550();
    sub_1C443DFB0(v7);
    sub_1C442A974(4.8149e-34);
    v8 = sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
    v9 = sub_1C49E1944(v8);
    sub_1C447F6D0(v9, v10);
    sub_1C4410930();
    *(v2 + 4) = v4;
    sub_1C4415A90();
    _os_log_impl(v11, v12, v13, v14, v15, 0xCu);
    sub_1C440AEF4();
    sub_1C43FEA20();
  }

  sub_1C443FE38();
  sub_1C441FE54();
  sub_1C447E970(v5, v16);
  sub_1C440741C();
  sub_1C447E970(v0, v17);
  *(v3 + *(v2 + 24)) = MEMORY[0x1E69E7CC0];
  sub_1C4419C7C();
  sub_1C442CE50(v18);

  sub_1C441BB34();
  sub_1C43FEA3C();

  __asm { BRAA            X1, X16 }
}

void sub_1C49DC3E4()
{
  sub_1C43FBDC8();
  sub_1C4404B08();
  v5 = *(v1 + 1624);
  sub_1C4405164();
  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4(&qword_1EDDFD028);
  }

  v6 = sub_1C4F00978();
  sub_1C43FCEE8(v6, qword_1EDE2DE10);
  sub_1C4F01CD8();
  sub_1C4480554();
  sub_1C4F00968();
  sub_1C44F19D0();
  if (sub_1C444AD54())
  {
    sub_1C4401E44();
    v7 = sub_1C440E550();
    sub_1C443DFB0(v7);
    sub_1C442A974(4.8149e-34);
    v8 = sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
    v9 = sub_1C49E1944(v8);
    sub_1C447F6D0(v9, v10);
    sub_1C4410930();
    *(v2 + 4) = v4;
    sub_1C4415A90();
    _os_log_impl(v11, v12, v13, v14, v15, 0xCu);
    sub_1C440AEF4();
    sub_1C43FEA20();
  }

  sub_1C443FE38();
  sub_1C441FE54();
  sub_1C447E970(v5, v16);
  sub_1C440741C();
  sub_1C447E970(v0, v17);
  *(v3 + *(v2 + 24)) = MEMORY[0x1E69E7CC0];
  sub_1C4419C7C();
  sub_1C442CE50(v18);

  sub_1C441BB34();
  sub_1C43FEA3C();

  __asm { BRAA            X1, X16 }
}

void sub_1C49DC910()
{
  sub_1C43FBDC8();
  sub_1C4404B08();
  v5 = *(v1 + 1728);
  sub_1C4405164();
  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4(&qword_1EDDFD028);
  }

  v6 = sub_1C4F00978();
  sub_1C43FCEE8(v6, qword_1EDE2DE10);
  sub_1C4F01CD8();
  sub_1C4480554();
  sub_1C4F00968();
  sub_1C44F19D0();
  if (sub_1C444AD54())
  {
    sub_1C4401E44();
    v7 = sub_1C440E550();
    sub_1C443DFB0(v7);
    sub_1C442A974(4.8149e-34);
    v8 = sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
    v9 = sub_1C49E1944(v8);
    sub_1C447F6D0(v9, v10);
    sub_1C4410930();
    *(v2 + 4) = v4;
    sub_1C4415A90();
    _os_log_impl(v11, v12, v13, v14, v15, 0xCu);
    sub_1C440AEF4();
    sub_1C43FEA20();
  }

  sub_1C443FE38();
  sub_1C441FE54();
  sub_1C447E970(v5, v16);
  sub_1C440741C();
  sub_1C447E970(v0, v17);
  *(v3 + *(v2 + 24)) = MEMORY[0x1E69E7CC0];
  sub_1C4419C7C();
  sub_1C442CE50(v18);

  sub_1C441BB34();
  sub_1C43FEA3C();

  __asm { BRAA            X1, X16 }
}

void sub_1C49DCE3C()
{
  sub_1C43FBDC8();
  sub_1C4404B08();
  v5 = *(v1 + 1832);
  sub_1C47C41F8((v5 + 29));
  sub_1C440962C(v5 + 24);
  sub_1C440962C(v5 + 19);
  sub_1C440962C(v5 + 14);
  sub_1C4414D90();
  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4(&qword_1EDDFD028);
  }

  v6 = sub_1C4F00978();
  sub_1C43FCEE8(v6, qword_1EDE2DE10);
  sub_1C4F01CD8();
  sub_1C4480554();
  sub_1C4F00968();
  sub_1C44F19D0();
  if (sub_1C444AD54())
  {
    sub_1C4401E44();
    v7 = sub_1C440E550();
    sub_1C443DFB0(v7);
    sub_1C442A974(4.8149e-34);
    v8 = sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
    v9 = sub_1C49E1944(v8);
    sub_1C447F6D0(v9, v10);
    sub_1C4410930();
    *(v2 + 4) = v4;
    sub_1C4415A90();
    _os_log_impl(v11, v12, v13, v14, v15, 0xCu);
    sub_1C440AEF4();
    sub_1C43FEA20();
  }

  sub_1C443FE38();
  sub_1C441FE54();
  sub_1C447E970(v5, v16);
  sub_1C440741C();
  sub_1C447E970(v0, v17);
  *(v3 + *(v2 + 24)) = MEMORY[0x1E69E7CC0];
  sub_1C4419C7C();
  sub_1C442CE50(v18);

  sub_1C441BB34();
  sub_1C43FEA3C();

  __asm { BRAA            X1, X16 }
}

void sub_1C49DD388()
{
  sub_1C43FBDC8();
  sub_1C4404B08();
  v5 = *(v1 + 2048);
  sub_1C4405164();
  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4(&qword_1EDDFD028);
  }

  v6 = sub_1C4F00978();
  sub_1C43FCEE8(v6, qword_1EDE2DE10);
  sub_1C4F01CD8();
  sub_1C4480554();
  sub_1C4F00968();
  sub_1C44F19D0();
  if (sub_1C444AD54())
  {
    sub_1C4401E44();
    v7 = sub_1C440E550();
    sub_1C443DFB0(v7);
    sub_1C442A974(4.8149e-34);
    v8 = sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
    v9 = sub_1C49E1944(v8);
    sub_1C447F6D0(v9, v10);
    sub_1C4410930();
    *(v2 + 4) = v4;
    sub_1C4415A90();
    _os_log_impl(v11, v12, v13, v14, v15, 0xCu);
    sub_1C440AEF4();
    sub_1C43FEA20();
  }

  sub_1C443FE38();
  sub_1C441FE54();
  sub_1C447E970(v5, v16);
  sub_1C440741C();
  sub_1C447E970(v0, v17);
  *(v3 + *(v2 + 24)) = MEMORY[0x1E69E7CC0];
  sub_1C4419C7C();
  sub_1C442CE50(v18);

  sub_1C441BB34();
  sub_1C43FEA3C();

  __asm { BRAA            X1, X16 }
}

void sub_1C49DD8B4()
{
  sub_1C43FBDC8();
  sub_1C4404B08();
  v5 = *(v1 + 2176);
  sub_1C4405164();
  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4(&qword_1EDDFD028);
  }

  v6 = sub_1C4F00978();
  sub_1C43FCEE8(v6, qword_1EDE2DE10);
  sub_1C4F01CD8();
  sub_1C4480554();
  sub_1C4F00968();
  sub_1C44F19D0();
  if (sub_1C444AD54())
  {
    sub_1C4401E44();
    v7 = sub_1C440E550();
    sub_1C443DFB0(v7);
    sub_1C442A974(4.8149e-34);
    v8 = sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
    v9 = sub_1C49E1944(v8);
    sub_1C447F6D0(v9, v10);
    sub_1C4410930();
    *(v2 + 4) = v4;
    sub_1C4415A90();
    _os_log_impl(v11, v12, v13, v14, v15, 0xCu);
    sub_1C440AEF4();
    sub_1C43FEA20();
  }

  sub_1C443FE38();
  sub_1C441FE54();
  sub_1C447E970(v5, v16);
  sub_1C440741C();
  sub_1C447E970(v0, v17);
  *(v3 + *(v2 + 24)) = MEMORY[0x1E69E7CC0];
  sub_1C4419C7C();
  sub_1C442CE50(v18);

  sub_1C441BB34();
  sub_1C43FEA3C();

  __asm { BRAA            X1, X16 }
}

void sub_1C49DDDE0()
{
  sub_1C43FBDC8();
  sub_1C4404B08();
  v5 = *(v1 + 2280);
  sub_1C47C41F8((v5 + 44));
  sub_1C440962C(v5 + 39);
  sub_1C440962C(v5 + 34);
  sub_1C440962C(v5 + 29);
  sub_1C440962C(v5 + 24);
  sub_1C440962C(v5 + 19);
  sub_1C440962C(v5 + 14);
  sub_1C4414D90();
  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4(&qword_1EDDFD028);
  }

  v6 = sub_1C4F00978();
  sub_1C43FCEE8(v6, qword_1EDE2DE10);
  sub_1C4F01CD8();
  sub_1C4480554();
  sub_1C4F00968();
  sub_1C44F19D0();
  if (sub_1C444AD54())
  {
    sub_1C4401E44();
    v7 = sub_1C440E550();
    sub_1C443DFB0(v7);
    sub_1C442A974(4.8149e-34);
    v8 = sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
    v9 = sub_1C49E1944(v8);
    sub_1C447F6D0(v9, v10);
    sub_1C4410930();
    *(v2 + 4) = v4;
    sub_1C4415A90();
    _os_log_impl(v11, v12, v13, v14, v15, 0xCu);
    sub_1C440AEF4();
    sub_1C43FEA20();
  }

  sub_1C443FE38();
  sub_1C441FE54();
  sub_1C447E970(v5, v16);
  sub_1C440741C();
  sub_1C447E970(v0, v17);
  *(v3 + *(v2 + 24)) = MEMORY[0x1E69E7CC0];
  sub_1C4419C7C();
  sub_1C442CE50(v18);

  sub_1C441BB34();
  sub_1C43FEA3C();

  __asm { BRAA            X1, X16 }
}

void sub_1C49DE344()
{
  sub_1C43FBDC8();
  sub_1C4404B08();
  v5 = *(v1 + 2304);
  sub_1C4405164();
  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4(&qword_1EDDFD028);
  }

  v6 = sub_1C4F00978();
  sub_1C43FCEE8(v6, qword_1EDE2DE10);
  sub_1C4F01CD8();
  sub_1C4480554();
  sub_1C4F00968();
  sub_1C44F19D0();
  if (sub_1C444AD54())
  {
    sub_1C4401E44();
    v7 = sub_1C440E550();
    sub_1C443DFB0(v7);
    sub_1C442A974(4.8149e-34);
    v8 = sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
    v9 = sub_1C49E1944(v8);
    sub_1C447F6D0(v9, v10);
    sub_1C4410930();
    *(v2 + 4) = v4;
    sub_1C4415A90();
    _os_log_impl(v11, v12, v13, v14, v15, 0xCu);
    sub_1C440AEF4();
    sub_1C43FEA20();
  }

  sub_1C443FE38();
  sub_1C441FE54();
  sub_1C447E970(v5, v16);
  sub_1C440741C();
  sub_1C447E970(v0, v17);
  *(v3 + *(v2 + 24)) = MEMORY[0x1E69E7CC0];
  sub_1C4419C7C();
  sub_1C442CE50(v18);

  sub_1C441BB34();
  sub_1C43FEA3C();

  __asm { BRAA            X1, X16 }
}

void sub_1C49DE870()
{
  sub_1C43FBDC8();
  sub_1C4404B08();
  v5 = *(v1 + 2408);
  sub_1C4405164();
  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4(&qword_1EDDFD028);
  }

  v6 = sub_1C4F00978();
  sub_1C43FCEE8(v6, qword_1EDE2DE10);
  sub_1C4F01CD8();
  sub_1C4480554();
  sub_1C4F00968();
  sub_1C44F19D0();
  if (sub_1C444AD54())
  {
    sub_1C4401E44();
    v7 = sub_1C440E550();
    sub_1C443DFB0(v7);
    sub_1C442A974(4.8149e-34);
    v8 = sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
    v9 = sub_1C49E1944(v8);
    sub_1C447F6D0(v9, v10);
    sub_1C4410930();
    *(v2 + 4) = v4;
    sub_1C4415A90();
    _os_log_impl(v11, v12, v13, v14, v15, 0xCu);
    sub_1C440AEF4();
    sub_1C43FEA20();
  }

  sub_1C443FE38();
  sub_1C441FE54();
  sub_1C447E970(v5, v16);
  sub_1C440741C();
  sub_1C447E970(v0, v17);
  *(v3 + *(v2 + 24)) = MEMORY[0x1E69E7CC0];
  sub_1C4419C7C();
  sub_1C442CE50(v18);

  sub_1C441BB34();
  sub_1C43FEA3C();

  __asm { BRAA            X1, X16 }
}

void sub_1C49DED9C()
{
  sub_1C43FBDC8();
  sub_1C4404B08();
  v5 = *(v1 + 2512);
  sub_1C4405164();
  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4(&qword_1EDDFD028);
  }

  v6 = sub_1C4F00978();
  sub_1C43FCEE8(v6, qword_1EDE2DE10);
  sub_1C4F01CD8();
  sub_1C4480554();
  sub_1C4F00968();
  sub_1C44F19D0();
  if (sub_1C444AD54())
  {
    sub_1C4401E44();
    v7 = sub_1C440E550();
    sub_1C443DFB0(v7);
    sub_1C442A974(4.8149e-34);
    v8 = sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
    v9 = sub_1C49E1944(v8);
    sub_1C447F6D0(v9, v10);
    sub_1C4410930();
    *(v2 + 4) = v4;
    sub_1C4415A90();
    _os_log_impl(v11, v12, v13, v14, v15, 0xCu);
    sub_1C440AEF4();
    sub_1C43FEA20();
  }

  sub_1C443FE38();
  sub_1C441FE54();
  sub_1C447E970(v5, v16);
  sub_1C440741C();
  sub_1C447E970(v0, v17);
  *(v3 + *(v2 + 24)) = MEMORY[0x1E69E7CC0];
  sub_1C4419C7C();
  sub_1C442CE50(v18);

  sub_1C441BB34();
  sub_1C43FEA3C();

  __asm { BRAA            X1, X16 }
}

void sub_1C49DF2C8()
{
  sub_1C43FBDC8();
  sub_1C4404B08();
  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4(&qword_1EDDFD028);
  }

  v5 = sub_1C4F00978();
  sub_1C43FCEE8(v5, qword_1EDE2DE10);
  sub_1C4F01CD8();
  sub_1C4480554();
  sub_1C4F00968();
  sub_1C44F19D0();
  if (sub_1C444AD54())
  {
    sub_1C4401E44();
    v6 = sub_1C440E550();
    sub_1C443DFB0(v6);
    sub_1C442A974(4.8149e-34);
    v7 = sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
    v8 = sub_1C49E1944(v7);
    sub_1C447F6D0(v8, v9);
    sub_1C4410930();
    *(v2 + 4) = v4;
    sub_1C4415A90();
    _os_log_impl(v10, v11, v12, v13, v14, 0xCu);
    sub_1C440AEF4();
    sub_1C43FEA20();
  }

  sub_1C443FE38();
  sub_1C441FE54();
  sub_1C447E970(v0, v15);
  sub_1C440741C();
  sub_1C447E970(v1, v16);
  *(v3 + *(v2 + 24)) = MEMORY[0x1E69E7CC0];
  sub_1C4419C7C();
  sub_1C442CE50(v17);

  sub_1C441BB34();
  sub_1C43FEA3C();

  __asm { BRAA            X1, X16 }
}

void sub_1C49DF7EC()
{
  sub_1C43FBDC8();
  sub_1C4404B08();
  v5 = *(v1 + 1944);
  sub_1C47C41F8((v5 + 29));
  sub_1C440962C(v5 + 24);
  sub_1C440962C(v5 + 19);
  sub_1C440962C(v5 + 14);
  sub_1C4414D90();
  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4(&qword_1EDDFD028);
  }

  v6 = sub_1C4F00978();
  sub_1C43FCEE8(v6, qword_1EDE2DE10);
  sub_1C4F01CD8();
  sub_1C4480554();
  sub_1C4F00968();
  sub_1C44F19D0();
  if (sub_1C444AD54())
  {
    sub_1C4401E44();
    v7 = sub_1C440E550();
    sub_1C443DFB0(v7);
    sub_1C442A974(4.8149e-34);
    v8 = sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
    v9 = sub_1C49E1944(v8);
    sub_1C447F6D0(v9, v10);
    sub_1C4410930();
    *(v2 + 4) = v4;
    sub_1C4415A90();
    _os_log_impl(v11, v12, v13, v14, v15, 0xCu);
    sub_1C440AEF4();
    sub_1C43FEA20();
  }

  sub_1C443FE38();
  sub_1C441FE54();
  sub_1C447E970(v5, v16);
  sub_1C440741C();
  sub_1C447E970(v0, v17);
  *(v3 + *(v2 + 24)) = MEMORY[0x1E69E7CC0];
  sub_1C4419C7C();
  sub_1C442CE50(v18);

  sub_1C441BB34();
  sub_1C43FEA3C();

  __asm { BRAA            X1, X16 }
}

void sub_1C49DFD38()
{
  sub_1C43FBDC8();
  sub_1C4404B08();
  v5 = *(v1 + 2152);
  sub_1C4405164();
  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4(&qword_1EDDFD028);
  }

  v6 = sub_1C4F00978();
  sub_1C43FCEE8(v6, qword_1EDE2DE10);
  sub_1C4F01CD8();
  sub_1C4480554();
  sub_1C4F00968();
  sub_1C44F19D0();
  if (sub_1C444AD54())
  {
    sub_1C4401E44();
    v7 = sub_1C440E550();
    sub_1C443DFB0(v7);
    sub_1C442A974(4.8149e-34);
    v8 = sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
    v9 = sub_1C49E1944(v8);
    sub_1C447F6D0(v9, v10);
    sub_1C4410930();
    *(v2 + 4) = v4;
    sub_1C4415A90();
    _os_log_impl(v11, v12, v13, v14, v15, 0xCu);
    sub_1C440AEF4();
    sub_1C43FEA20();
  }

  sub_1C443FE38();
  sub_1C441FE54();
  sub_1C447E970(v5, v16);
  sub_1C440741C();
  sub_1C447E970(v0, v17);
  *(v3 + *(v2 + 24)) = MEMORY[0x1E69E7CC0];
  sub_1C4419C7C();
  sub_1C442CE50(v18);

  sub_1C441BB34();
  sub_1C43FEA3C();

  __asm { BRAA            X1, X16 }
}

uint64_t Source.identifier(for:entityClass:isGraphIdentifier:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v99 = a4;
  v98 = a1;
  sub_1C4F00DD8();
  sub_1C43FCDF8();
  v90 = v11;
  v91 = v10;
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBCC4();
  v87 = v13 - v12;
  sub_1C4F00DC8();
  sub_1C43FCDF8();
  v92 = v15;
  v93 = v14;
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBD08();
  v88 = v16 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v89 = &v80 - v19;
  sub_1C4F01188();
  sub_1C43FCDF8();
  v96 = v21;
  v97 = v20;
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FBCC4();
  v95 = v23 - v22;
  v24 = sub_1C4EFD548();
  sub_1C43FCDF8();
  v26 = v25;
  MEMORY[0x1EEE9AC00](v27);
  sub_1C43FBD08();
  v85 = v28 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v80 - v31;
  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4(&qword_1EDDFD028);
  }

  v33 = sub_1C4F00978();
  v34 = sub_1C442B738(v33, qword_1EDE2DE10);
  v35 = *(v26 + 16);
  v94 = a3;
  v83 = v35;
  v84 = v26 + 16;
  v35(v32, a3, v24);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v82 = v34;
  v36 = sub_1C4F00968();
  v37 = sub_1C4F01CB8();

  v38 = os_log_type_enabled(v36, v37);
  v39 = a2;
  v86 = v24;
  if (v38)
  {
    v40 = swift_slowAlloc();
    v80 = v6;
    v41 = v40;
    v42 = swift_slowAlloc();
    v81 = a5;
    v100 = v42;
    *v41 = 136381187;
    v43 = v98;
    *(v41 + 4) = sub_1C441D828(v98, v39, &v100);
    *(v41 + 12) = 2080;
    sub_1C4471C58(&qword_1EDDFA220, MEMORY[0x1E69A92C8], MEMORY[0x1E69A92F8]);
    v44 = sub_1C4F02858();
    v45 = v24;
    v47 = v46;
    (*(v26 + 8))(v32, v45);
    v48 = sub_1C441D828(v44, v47, &v100);

    *(v41 + 14) = v48;
    *(v41 + 22) = 1024;
    *(v41 + 24) = v99 & 1;
    _os_log_impl(&dword_1C43F8000, v36, v37, "Source: generating identifier for: %{private}s : %s : %{BOOL}d", v41, 0x1Cu);
    swift_arrayDestroy();
    a5 = v81;
    sub_1C43FBE2C();
    v6 = v80;
    sub_1C43FBE2C();
  }

  else
  {

    v49 = sub_1C43FE99C();
    v50(v49);
    v43 = v98;
  }

  v51 = *v6;
  v52 = v6[1];
  v100 = v43;
  v101 = v39;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](v51, v52);
  v54 = v100;
  v53 = v101;
  v55 = v95;
  sub_1C4F01178();
  sub_1C4F01148();
  v57 = v56;
  (*(v96 + 8))(v55, v97);
  if (v57 >> 60 == 15)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v58 = sub_1C4F00968();
    v59 = sub_1C4F01CD8();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v100 = v61;
      *v60 = 136380675;
      v62 = sub_1C441D828(v54, v53, &v100);

      *(v60 + 4) = v62;
      _os_log_impl(&dword_1C43F8000, v58, v59, "Source: failed to encode identifier as UTF8 data: %{private}s", v60, 0xCu);
      sub_1C440962C(v61);
      sub_1C43FEA20();
      sub_1C43FBE2C();
    }

    else
    {
    }

    v77 = 1;
  }

  else
  {

    sub_1C4471C58(&qword_1EDDFEAD0, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
    v63 = v87;
    sub_1C4F00DB8();
    v64 = sub_1C4409D98();
    sub_1C44344B8(v64, v65);
    v66 = sub_1C4409D98();
    sub_1C4498FD8(v66, v67, v63);
    v68 = sub_1C4409D98();
    sub_1C441DFEC(v68, v69);
    v70 = v89;
    sub_1C4F00DA8();
    v71 = sub_1C4402E08();
    v72(v71);
    v83(v85, v94, v86);
    (*(v92 + 16))(v88, v70, v93);
    sub_1C440BB4C();
    sub_1C4EFF028();
    v73 = sub_1C4409D98();
    sub_1C441DFEC(v73, v74);
    v75 = sub_1C4404C28();
    v76(v75);
    v77 = 0;
  }

  v78 = sub_1C4EFF0C8();
  return sub_1C440BAA8(a5, v77, 1, v78);
}

uint64_t Linker.source.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for Linker(0);
  sub_1C441346C();
  return sub_1C4471988(v1 + v3, a1);
}

uint64_t Linker.pipelineType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Linker(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t sub_1C49E0A10()
{
  v1 = v0[7];
  result = type metadata accessor for Linker(0);
  if (!*(*(v1 + *(result + 24)) + 16))
  {
    __break(1u);
    goto LABEL_11;
  }

  result = sub_1C4499330(0);
  v0[8] = result;
  v0[9] = v3;
  v0[10] = v5;
  v0[11] = v4;
  if (v4 == v5 >> 1)
  {
    swift_unknownObjectRelease();
    sub_1C43FBDA0();

    return v6();
  }

  if (v4 >= (v5 >> 1))
  {
LABEL_11:
    __break(1u);
    return result;
  }

  sub_1C442E860(v3 + 40 * v4, (v0 + 2));
  sub_1C49E1C1C();
  v7 = swift_task_alloc();
  v0[12] = v7;
  *v7 = v0;
  v8 = sub_1C44553DC(v7);

  return ResumableStage.executeIfRequired(_:)(v8, v9, v10);
}

uint64_t sub_1C49E0B24()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = v2;
  sub_1C44001F0();
  *v4 = v3;
  v5 = *v1;
  sub_1C43FBDAC();
  *v6 = v5;
  *(v3 + 104) = v0;

  sub_1C440962C((v3 + 16));
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1C49E0C28()
{
  v1 = v0[10];
  v2 = v0[11] + 1;
  v0[11] = v2;
  if (v2 == v1 >> 1)
  {
    swift_unknownObjectRelease();
    sub_1C43FBDA0();

    v3();
  }

  else if (v2 >= (v1 >> 1))
  {
    __break(1u);
  }

  else
  {
    sub_1C442E860(v0[9] + 40 * v2, (v0 + 2));
    sub_1C49E1C1C();
    v4 = swift_task_alloc();
    v0[12] = v4;
    *v4 = v0;
    v5 = sub_1C44553DC(v4);

    ResumableStage.executeIfRequired(_:)(v5, v6, v7);
  }
}

uint64_t sub_1C49E0D1C()
{
  sub_1C43FBCD4();
  swift_unknownObjectRelease();
  sub_1C43FBDA0();

  return v0();
}

uint64_t sub_1C49E0D78(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *(v3 + 40) = a1;
  *(v3 + 48) = a2;
  type metadata accessor for Source(0);
  *(v3 + 56) = swift_task_alloc();
  *(v3 + 64) = swift_task_alloc();
  *(v3 + 97) = *a3;

  return MEMORY[0x1EEE6DFA0](sub_1C49E0E20, 0, 0);
}

uint64_t sub_1C49E0E20()
{
  if (qword_1EDDFDCF8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (qword_1EDDFF3C8)
  {
    v1 = *(v0 + 97);
    v2 = (*(off_1EDDFF3D0 + 1))();
    v4 = v3;
    *(v0 + 96) = v1;
    v15 = (*(v3 + 24) + **(v3 + 24));
    v5 = swift_task_alloc();
    *(v0 + 72) = v5;
    *v5 = v0;
    v5[1] = sub_1C49E10A4;
    v7 = *(v0 + 40);
    v6 = *(v0 + 48);

    return v15(v7, v6, v0 + 96, v2, v4);
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    v9 = sub_1C4F00978();
    sub_1C43FCEE8(v9, qword_1EDDFECB8);
    v10 = sub_1C4F00968();
    v11 = sub_1C4F01CF8();
    if (os_log_type_enabled(v10, v11))
    {
      *swift_slowAlloc() = 0;
      sub_1C43FFFD8(&dword_1C43F8000, v12, v13, "InternalPlugin: Linker: loadInternalSourceChildren: failed to load internal source children");
      sub_1C43FBE2C();
    }

    v14 = *(v0 + 8);

    return v14(0);
  }
}

uint64_t sub_1C49E10A4()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 80) = v4;
  *(v2 + 88) = v0;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C49E11A4()
{
  sub_1C4404B08();
  v29 = v0;
  v1 = v0[10];
  if (v1)
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    v2 = v0[8];
    v3 = v0[5];
    v4 = sub_1C4F00978();
    v5 = sub_1C442B738(v4, qword_1EDDFECB8);
    sub_1C441346C();
    sub_1C4471988(v3, v2);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v6 = sub_1C4F00968();
    v7 = sub_1C4F01CF8();
    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[8];
    if (v8)
    {
      v10 = v0[7];
      swift_slowAlloc();
      v28 = sub_1C440E550();
      *v5 = 134218242;
      *(v5 + 4) = *(v1 + 16);

      *(v5 + 12) = 2080;
      sub_1C4472068(v9, v10);
      v11 = *v10;
      v12 = v10[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C447E970(v10, type metadata accessor for Source);
      v13 = sub_1C441D828(v11, v12, &v28);

      *(v5 + 14) = v13;
      sub_1C4415A90();
      _os_log_impl(v14, v15, v16, v17, v18, 0x16u);
      sub_1C440AEF4();
      sub_1C43FEA20();
    }

    else
    {

      sub_1C440741C();
      sub_1C447E970(v9, v25);
    }

    v24 = v0[10];
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    v19 = sub_1C4F00978();
    sub_1C43FCEE8(v19, qword_1EDDFECB8);
    v20 = sub_1C4F00968();
    v21 = sub_1C4F01CF8();
    if (os_log_type_enabled(v20, v21))
    {
      *swift_slowAlloc() = 0;
      sub_1C43FFFD8(&dword_1C43F8000, v22, v23, "InternalPlugin: Linker: loadInternalSourceChildren: failed to load internal source children");
      sub_1C43FBE2C();
    }

    v24 = 0;
  }

  v26 = v0[1];

  return v26(v24);
}

uint64_t sub_1C49E142C()
{
  sub_1C43FBCD4();

  sub_1C43FBDA0();

  return v0();
}

uint64_t sub_1C49E14B4()
{
  sub_1C43FBCD4();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C442E8C4;

  return Linker.execute()();
}

uint64_t sub_1C49E15C4()
{
  swift_arrayDestroy();
  sub_1C4406518();

  return swift_deallocClassInstance();
}

uint64_t sub_1C49E1628()
{
  swift_arrayDestroy();
  sub_1C4406518();

  return swift_deallocClassInstance();
}

uint64_t sub_1C49E1690(uint64_t *a1, uint64_t *a2)
{
  sub_1C456902C(a1, a2);
  sub_1C43FCF8C();
  sub_1C4485C48();
  sub_1C4406518();

  return swift_deallocClassInstance();
}

uint64_t sub_1C49E1700()
{
  swift_arrayDestroy();
  sub_1C4406518();

  return swift_deallocClassInstance();
}

uint64_t sub_1C49E1754()
{
  swift_arrayDestroy();
  sub_1C4406518();

  return swift_deallocClassInstance();
}

uint64_t sub_1C49E17D0(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return sub_1C4F02128();
  }

  else
  {
    return *(a1 + 16);
  }
}

uint64_t sub_1C49E17F0(uint64_t a1)
{
  result = sub_1C4471C58(&qword_1EC0C0DA8, type metadata accessor for Linker, &protocol conformance descriptor for Linker);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C49E1870(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0B8568, &unk_1C4F319B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C49E1910()
{
  *(v2 + *(v1 + 48)) = v0;
  *(v2 + *(v1 + 52)) = 0;
  v6 = *(v4 - 176);

  return sub_1C4471988(v6, v3);
}

uint64_t sub_1C49E1944(uint64_t a1)
{

  return sub_1C4F01198();
}

uint64_t sub_1C49E195C()
{
  *(v1 + *(v0 + 24)) = v2;
  v5 = *(v3 - 96);
  v6 = *(v3 - 200);

  return sub_1C4471988(v5, v6);
}

uint64_t sub_1C49E1988()
{
}

uint64_t sub_1C49E19B0()
{
  v3 = *(v1 - 96);

  return sub_1C4472068(v0, v3);
}

__n128 sub_1C49E19C8()
{
  result = *STACK[0x318];
  *(v0 - 112) = result;
  return result;
}

uint64_t *sub_1C49E1A18(uint64_t a1)
{
  *(v1 + 104) = a1;

  return sub_1C4422F90((v1 + 72));
}

uint64_t sub_1C49E1AC0()
{

  return sub_1C4EFF1A8();
}

uint64_t sub_1C49E1AD8(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_1C49E1AF0()
{
  *(v2 + *(v3 + 36)) = v1;
  v6 = *(v4 - 160);

  return sub_1C4471988(v0, v6);
}

uint64_t sub_1C49E1B14@<X0>(uint64_t a1@<X8>)
{

  return sub_1C4472068(v1, v2 + a1);
}

uint64_t sub_1C49E1B30()
{
  v2 = *(v0 - 136);
  v3 = *(v0 - 184);

  return sub_1C4471988(v2, v3);
}

uint64_t sub_1C49E1B54()
{
  v3 = *(v1 - 184);

  return sub_1C4471988(v3, v0);
}

uint64_t sub_1C49E1B78()
{
  v2 = *(v0 - 184);
  v3 = *(v0 - 232);

  return sub_1C4471988(v2, v3);
}

uint64_t sub_1C49E1B9C()
{
}

uint64_t sub_1C49E1BB4()
{
}

void *sub_1C49E1C1C()
{
  result = sub_1C4409678((v0 + 16), *(v0 + 40));
  *(v0 + 112) = 3;
  return result;
}

unint64_t sub_1C49E1C88(uint64_t a1)
{
  *(v2 + *(v1 + 36)) = a1;
  STACK[0x318] = v3;
  return v3;
}

uint64_t sub_1C49E1D08()
{
  v3 = *(v1 - 120);

  return sub_1C447E970(v0, v3);
}

uint64_t sub_1C49E1D28()
{
}

uint64_t sub_1C49E1D48()
{
  v2 = *(v0 - 136);
  v3 = *(v0 - 216);

  return sub_1C4471988(v2, v3);
}

uint64_t sub_1C49E1D68()
{
  v2 = *(v0 - 136);
  v3 = *(v0 - 216);

  return sub_1C4471988(v2, v3);
}

uint64_t *sub_1C49E1D88()
{
  v2 = *(v0 - 128);
  *(v2 + 216) = *(v0 - 240);

  return sub_1C4422F90((v2 + 192));
}

uint64_t *sub_1C49E1DA8()
{
  *(v1 - 128) = v0;
  *(v0 + 176) = *&STACK[0x2E0];

  return sub_1C4422F90((v0 + 152));
}

uint64_t sub_1C49E1DC8(uint64_t a1)
{

  return sub_1C4EFD4C8();
}

uint64_t *sub_1C49E1DE0(uint64_t a1)
{
  *(v1 + 264) = a1;

  return sub_1C4422F90((v1 + 232));
}

uint64_t sub_1C49E1DF8(uint64_t a1, uint64_t a2)
{

  return sub_1C4471988(a1, a2);
}

uint64_t sub_1C49E1E10(uint64_t a1)
{
  v3 = *(v1 - 176);

  return sub_1C4471988(a1, v3);
}

uint64_t sub_1C49E1E28()
{

  return sub_1C4471988(v0, v1);
}

uint64_t sub_1C49E1E40(uint64_t a1)
{

  return sub_1C4471988(a1, v1);
}

uint64_t sub_1C49E1E58()
{
}

uint64_t sub_1C49E1E84()
{
  v2 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore12LinkingPhase_source);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](43, 0xE100000000000000);
  MEMORY[0x1C6940010](0xD000000000000014, 0x80000001C4FAC100);
  return v2;
}

uint64_t LinkingPhase.__allocating_init(stores:phaseSource:transformer:mapper:linker:fusion:shouldPatchNewlyConstructedGraph:)()
{
  sub_1C43FDB2C();
  v0 = swift_allocObject();
  LinkingPhase.init(stores:phaseSource:transformer:mapper:linker:fusion:shouldPatchNewlyConstructedGraph:)();
  return v0;
}

uint64_t LinkingPhase.init(stores:phaseSource:transformer:mapper:linker:fusion:shouldPatchNewlyConstructedGraph:)()
{
  sub_1C43FDB2C();
  v7 = v6;
  sub_1C44720C4(v8, v1 + OBJC_IVAR____TtC24IntelligencePlatformCore12LinkingPhase_source, type metadata accessor for Source);
  sub_1C44720C4(v7, v1 + OBJC_IVAR____TtC24IntelligencePlatformCore12LinkingPhase_stores, type metadata accessor for PhaseStores);
  sub_1C441D670(v5, v1 + OBJC_IVAR____TtC24IntelligencePlatformCore12LinkingPhase_transformer);
  sub_1C441D670(v4, v1 + OBJC_IVAR____TtC24IntelligencePlatformCore12LinkingPhase_mapper);
  sub_1C44720C4(v3, v1 + OBJC_IVAR____TtC24IntelligencePlatformCore12LinkingPhase_linker, type metadata accessor for Linker);
  sub_1C44720C4(v2, v1 + OBJC_IVAR____TtC24IntelligencePlatformCore12LinkingPhase_fusion, type metadata accessor for Fuser);
  *(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore12LinkingPhase_shouldPatchNewlyConstructedGraph) = v0;
  return v1;
}

uint64_t sub_1C49E2084()
{
  *(v1 + 216) = v0;
  sub_1C43FEAF8();
  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1C49E20B0()
{
  v1 = v0[27];
  v2 = OBJC_IVAR____TtC24IntelligencePlatformCore12LinkingPhase_transformer;
  sub_1C442E860(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore12LinkingPhase_transformer, (v0 + 2));
  v3 = v0[5];
  sub_1C4409678(v0 + 2, v3);
  sub_1C443262C();
  v4(v3);
  sub_1C440962C(v0 + 2);
  sub_1C442E860(v1 + v2, (v0 + 7));
  sub_1C4409678(v0 + 7, v0[10]);
  sub_1C442E860(v1 + v2, (v0 + 12));
  v5 = v0[15];
  sub_1C4409678(v0 + 12, v5);
  sub_1C440E56C();
  v6(v5);
  v7 = swift_task_alloc();
  v0[28] = v7;
  *v7 = v0;
  v7[1] = sub_1C49E223C;
  sub_1C4402234();

  return ResumableStage.executeIfRequired(_:)(v8, v9, v10);
}

uint64_t sub_1C49E223C()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = v2;
  sub_1C43FBE64();
  *v4 = v3;
  v5 = *v1;
  sub_1C43FBDAC();
  *v6 = v5;
  *(v3 + 232) = v0;

  if (!v0)
  {
    sub_1C440962C((v3 + 96));
  }

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C49E2340()
{
  v1 = v0[29];
  v2 = v0[27];
  sub_1C440962C(v0 + 7);
  v3 = (v2 + OBJC_IVAR____TtC24IntelligencePlatformCore12LinkingPhase_mapper);
  v4 = *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore12LinkingPhase_mapper + 24);
  sub_1C4409678((v2 + OBJC_IVAR____TtC24IntelligencePlatformCore12LinkingPhase_mapper), v4);
  sub_1C443262C();
  v5(v4);
  if (v1)
  {
    sub_1C43FC560();
    sub_1C4402234();

    __asm { BRAA            X1, X16 }
  }

  sub_1C4409678(v3, v3[3]);
  v8 = v3[3];
  sub_1C4409678(v3, v8);
  sub_1C440E56C();
  v9(v8);
  v10 = swift_task_alloc();
  v0[30] = v10;
  *v10 = v0;
  v10[1] = sub_1C49E24A8;
  sub_1C4402234();

  return ResumableStage.executeIfRequired(_:)(v11, v12, v13);
}

uint64_t sub_1C49E24A8()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FBE64();
  *v3 = v2;
  v4 = *v1;
  sub_1C43FBDAC();
  *v5 = v4;
  *(v6 + 248) = v0;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C49E25A4()
{
  v2 = *(v1 + 248);
  sub_1C4ACF534();
  if (v2)
  {
    sub_1C43FC560();

    return v3();
  }

  else
  {
    type metadata accessor for Linker(0);
    v5 = sub_1C4413484();
    *(v1 + 256) = v5;
    *v5 = v1;
    sub_1C43FC688(v5);

    return v6(v0);
  }
}

uint64_t sub_1C49E2690()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FBE64();
  *v3 = v2;
  v4 = *v1;
  sub_1C43FBDAC();
  *v5 = v4;
  *(v6 + 264) = v0;

  if (v0)
  {
    sub_1C43FBDA0();

    return v7();
  }

  else
  {
    sub_1C43FEAF8();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }
}

uint64_t sub_1C49E27A8()
{
  v2 = *(v1 + 264);
  sub_1C4ACF4DC();
  if (v2)
  {
    sub_1C43FC560();

    return v3();
  }

  else
  {
    type metadata accessor for Fuser(0);
    v5 = sub_1C4413484();
    *(v1 + 272) = v5;
    *v5 = v1;
    sub_1C43FC688(v5);

    return v6(v0);
  }
}

uint64_t sub_1C49E2894()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v2 = *v1;
  sub_1C43FBDAC();
  *v3 = v2;

  if (v0)
  {
    sub_1C43FBDA0();

    return v4();
  }

  else
  {
    sub_1C43FEAF8();

    return MEMORY[0x1EEE6DFA0](v6, v7, v8);
  }
}

uint64_t sub_1C49E29AC()
{
  if (*(*(v0 + 216) + OBJC_IVAR____TtC24IntelligencePlatformCore12LinkingPhase_shouldPatchNewlyConstructedGraph) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 280) = v1;
    *v1 = v0;
    v1[1] = sub_1C49E2AB0;

    return sub_1C46BC754();
  }

  else
  {
    sub_1C43FBDA0();

    return v3();
  }
}

uint64_t sub_1C49E2AB0()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FBE64();
  *v3 = v2;
  v4 = *v1;
  sub_1C43FBDAC();
  *v5 = v4;
  *(v6 + 288) = v0;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C49E2BAC()
{
  if (*(v0 + 200))
  {
    sub_1C441D670((v0 + 176), v0 + 136);
    v1 = *(v0 + 160);
    sub_1C4409678((v0 + 136), v1);
    v2 = swift_task_alloc();
    *(v0 + 296) = v2;
    *v2 = v0;
    sub_1C43FC688(v2);

    return sub_1C448F314(v1, v3);
  }

  else
  {
    sub_1C46BE56C(v0 + 176);
    sub_1C43FBDA0();

    return v5();
  }
}

uint64_t sub_1C49E2CAC()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FBE64();
  *v3 = v2;
  v4 = *v1;
  sub_1C43FBDAC();
  *v5 = v4;
  *(v6 + 304) = v0;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C49E2DA8()
{
  sub_1C43FBCD4();
  sub_1C440962C((v0 + 136));
  sub_1C43FBDA0();

  return v1();
}

uint64_t sub_1C49E2E04()
{
  sub_1C43FBCD4();
  sub_1C440962C((v0 + 96));
  sub_1C440962C((v0 + 56));
  sub_1C43FBDA0();

  return v1();
}

uint64_t sub_1C49E2E78()
{
  sub_1C43FBCD4();
  sub_1C440962C((v0 + 136));
  sub_1C43FBDA0();

  return v1();
}

uint64_t sub_1C49E2ED4()
{
  sub_1C442E860(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore12LinkingPhase_transformer, v4);
  v1 = v5;
  v2 = v6;
  sub_1C4409678(v4, v5);
  (*(v2 + 16))(v1, v2);
  return sub_1C440962C(v4);
}

uint64_t LinkingPhase.deinit()
{
  sub_1C4408D6C(OBJC_IVAR____TtC24IntelligencePlatformCore12LinkingPhase_source);
  sub_1C4408D6C(OBJC_IVAR____TtC24IntelligencePlatformCore12LinkingPhase_stores);
  sub_1C440962C((v0 + OBJC_IVAR____TtC24IntelligencePlatformCore12LinkingPhase_transformer));
  sub_1C440962C((v0 + OBJC_IVAR____TtC24IntelligencePlatformCore12LinkingPhase_mapper));
  sub_1C4408D6C(OBJC_IVAR____TtC24IntelligencePlatformCore12LinkingPhase_linker);
  sub_1C4408D6C(OBJC_IVAR____TtC24IntelligencePlatformCore12LinkingPhase_fusion);
  return v0;
}

uint64_t LinkingPhase.__deallocating_deinit()
{
  LinkingPhase.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1C49E3094()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C442E8C4;

  return sub_1C49E2084();
}

uint64_t sub_1C49E3148(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return ConstructionPhase.description.getter(a1, WitnessTable);
}

uint64_t sub_1C49E319C(uint64_t a1)
{
  result = sub_1C49E3270(&qword_1EC0C0DC0, &protocol conformance descriptor for LinkingPhase);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for LinkingPhase(uint64_t a1)
{
  result = qword_1EC0C0DD0;
  if (!qword_1EC0C0DD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C49E322C(uint64_t a1)
{
  result = sub_1C49E3270(&qword_1EC0C0DC8, &protocol conformance descriptor for LinkingPhase);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C49E3270(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LinkingPhase(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C49E32BC(uint64_t a1)
{
  result = type metadata accessor for Source(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for PhaseStores(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for Linker(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for Fuser(319);
        if (v5 <= 0x3F)
        {
          return swift_updateClassMetadata2();
        }
      }
    }
  }

  return result;
}

uint64_t dispatch thunk of LinkingPhase.run()()
{
  v4 = (*(*v0 + 176) + **(*v0 + 176));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  sub_1C43FC688(v2);

  return v4();
}

void sub_1C49E3590()
{
  if (qword_1EDDFA678 != -1)
  {
    swift_once();
  }

  v0 = sub_1C4F00978();
  sub_1C442B738(v0, qword_1EDE2DCD8);
  v1 = sub_1C4F00968();
  v2 = sub_1C4F01CF8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1C43F8000, v1, v2, "Link Connection Listener: Starting...", v3, 2u);
    MEMORY[0x1C6942830](v3, -1, -1);
  }

  v4 = [objc_opt_self() mainBundle];
  v5 = sub_1C4630D78(v4);
  if (!v6)
  {
    oslog = sub_1C4F00968();
    v15 = sub_1C4F01CD8();
    if (!os_log_type_enabled(oslog, v15))
    {
      goto LABEL_12;
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1C43F8000, oslog, v15, "Link Connection Listener: error getting bundle identifier", v12, 2u);
    goto LABEL_10;
  }

  v7 = v5;
  v8 = v6;
  sub_1C49E38F4();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v9 = sub_1C49E382C(v7, v8);
  v10 = qword_1EDE2D268;
  qword_1EDE2D268 = v9;

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  oslog = sub_1C4F00968();
  v11 = sub_1C4F01CF8();

  if (os_log_type_enabled(oslog, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v17 = v13;
    *v12 = 136315138;
    v14 = sub_1C441D828(v7, v8, &v17);

    *(v12 + 4) = v14;
    _os_log_impl(&dword_1C43F8000, oslog, v11, "Link Connection Listener: Started with bundle %s", v12, 0xCu);
    sub_1C440962C(v13);
    MEMORY[0x1C6942830](v13, -1, -1);
LABEL_10:
    MEMORY[0x1C6942830](v12, -1, -1);
    goto LABEL_12;
  }

LABEL_12:
}

id sub_1C49E382C(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1C4F01108();

  v4 = [v2 initWithBundleIdentifier_];

  return v4;
}

unint64_t sub_1C49E38F4()
{
  result = qword_1EDDDB8B8;
  if (!qword_1EDDDB8B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDDDB8B8);
  }

  return result;
}

uint64_t sub_1C49E3938@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C4EFF458();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == *MEMORY[0x1E69A9900])
  {
    v10 = 2;
LABEL_7:
    result = (*(v5 + 8))(a1, v4);
    v12 = 0;
    goto LABEL_8;
  }

  if (v9 == *MEMORY[0x1E69A98F0])
  {
    v10 = 1;
    goto LABEL_7;
  }

  if (v9 == *MEMORY[0x1E69A98E8])
  {
    v10 = 4;
    goto LABEL_7;
  }

  if (v9 == *MEMORY[0x1E69A98F8])
  {
    result = (*(v5 + 8))(a1, v4);
  }

  else
  {
    if (qword_1EDDFFAF0 != -1)
    {
      swift_once();
    }

    v13 = sub_1C4F00978();
    sub_1C442B738(v13, qword_1EDE2E088);
    v14 = sub_1C4F00968();
    v15 = sub_1C4F01CD8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1C43F8000, v14, v15, "LiveGlobalKnowledgeGraphClientSet: Unknown client", v16, 2u);
      MEMORY[0x1C6942830](v16, -1, -1);
    }

    v17 = *(v5 + 8);
    v17(a1, v4);
    result = (v17)(v8, v4);
  }

  v10 = 0;
  v12 = 1;
LABEL_8:
  *a2 = v10;
  *(a2 + 8) = v12;
  return result;
}

uint64_t LiveGlobalKnowledgeGraphClientSet.description.getter()
{
  v0 = sub_1C4F02858();
  MEMORY[0x1C6940010](v0);

  MEMORY[0x1C6940010](62, 0xE100000000000000);
  return 0x3A746E65696C433CLL;
}

unint64_t sub_1C49E3D08()
{
  result = qword_1EC0C0DE0;
  if (!qword_1EC0C0DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0DE0);
  }

  return result;
}

unint64_t sub_1C49E3D60()
{
  result = qword_1EC0C0DE8;
  if (!qword_1EC0C0DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0DE8);
  }

  return result;
}

unint64_t sub_1C49E3DC0()
{
  result = qword_1EC0C0DF0;
  if (!qword_1EC0C0DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0DF0);
  }

  return result;
}

unint64_t sub_1C49E3E18()
{
  result = qword_1EC0C0DF8;
  if (!qword_1EC0C0DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0DF8);
  }

  return result;
}

uint64_t sub_1C49E3E6C(uint64_t a1, uint64_t a2)
{
  sub_1C49E4278();
  sub_1C49E3D08();

  return sub_1C4EFBA18();
}

uint64_t sub_1C49E3EDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C49E4224();
  v7 = sub_1C49E3D08();
  v8 = MEMORY[0x1E69A0180];

  return MEMORY[0x1EEE09B48](a1, a2, a3, v6, v7, v8);
}

unint64_t sub_1C49E3F54()
{
  result = qword_1EC0C0E00;
  if (!qword_1EC0C0E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0E00);
  }

  return result;
}

unint64_t sub_1C49E3FB0()
{
  result = qword_1EC0C0E08;
  if (!qword_1EC0C0E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0E08);
  }

  return result;
}

IntelligencePlatformCore::LiveGlobalKnowledgeGraphClientSet sub_1C49E40B4@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = LiveGlobalKnowledgeGraphClientSet.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1C49E40F4@<X0>(uint64_t *a1@<X8>)
{
  result = LiveGlobalKnowledgeGraphClientSet.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C49E411C(uint64_t a1)
{
  v2 = sub_1C49E41D0();

  return MEMORY[0x1EEE09B08](a1, v2);
}

uint64_t sub_1C49E4168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C49E41D0();

  return MEMORY[0x1EEE09B18](a1, a2, a3, v6);
}

unint64_t sub_1C49E41D0()
{
  result = qword_1EC0C0E10;
  if (!qword_1EC0C0E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0E10);
  }

  return result;
}

unint64_t sub_1C49E4224()
{
  result = qword_1EC0C0E18;
  if (!qword_1EC0C0E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0E18);
  }

  return result;
}

unint64_t sub_1C49E4278()
{
  result = qword_1EC0C0E20;
  if (!qword_1EC0C0E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0E20);
  }

  return result;
}

uint64_t EntityClass.init(globalKGEntityType:)(uint64_t a1)
{
  v2 = sub_1C4EFA328();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - v6;
  v8 = *(v3 + 16);
  v8(&v20 - v6, a1, v2, v5);
  v9 = (*(v3 + 88))(v7, v2);
  if (v9 == *MEMORY[0x1E69BCF60])
  {
    if (sub_1C4EFA318() == 19)
    {
LABEL_3:
      sub_1C4EFCFA8();
      return (*(v3 + 8))(a1, v2);
    }

LABEL_5:
    sub_1C44120CC();

    v10 = sub_1C4419F14("got unexpected EntityType from PegasusApi: ");
    (v8)(v10);
    v11 = sub_1C4F01198();
    MEMORY[0x1C6940010](v11);

    sub_1C49E47AC();
    v12 = swift_allocError();
    sub_1C4407434(v12, v13);
    return (*(v3 + 8))(a1, v2);
  }

  if (v9 == *MEMORY[0x1E69BCF58])
  {
    goto LABEL_5;
  }

  if (v9 == *MEMORY[0x1E69BCFB8])
  {
    sub_1C4EFD4C8();
    return (*(v3 + 8))(a1, v2);
  }

  if (v9 == *MEMORY[0x1E69BCFC8])
  {
    _s24IntelligencePlatformCore15LocationMatcherV11entityClass0aB006EntityG0Vvg_0();
    return (*(v3 + 8))(a1, v2);
  }

  if (v9 == *MEMORY[0x1E69BCF98])
  {
    sub_1C4EFD3E8();
    return (*(v3 + 8))(a1, v2);
  }

  if (v9 == *MEMORY[0x1E69BCFE0])
  {
    sub_1C4EFCF58();
    return (*(v3 + 8))(a1, v2);
  }

  if (v9 == *MEMORY[0x1E69BCFF0])
  {
    sub_1C4EFCF38();
    return (*(v3 + 8))(a1, v2);
  }

  if (v9 == *MEMORY[0x1E69BCF68])
  {
    sub_1C4EFD198();
    return (*(v3 + 8))(a1, v2);
  }

  if (v9 == *MEMORY[0x1E69BCFF8])
  {
    sub_1C4EFD448();
    return (*(v3 + 8))(a1, v2);
  }

  if (v9 == *MEMORY[0x1E69BCF70])
  {
    sub_1C4EFD208();
    return (*(v3 + 8))(a1, v2);
  }

  if (v9 == *MEMORY[0x1E69BCFD8])
  {
    sub_1C4EFD408();
    return (*(v3 + 8))(a1, v2);
  }

  if (v9 == *MEMORY[0x1E69BCFA0])
  {
    _s24IntelligencePlatformCore5StagePAAE11entityClass0aB006EntityF0Vvg_0();
    return (*(v3 + 8))(a1, v2);
  }

  if (v9 == *MEMORY[0x1E69BCF78])
  {
    sub_1C4EFD238();
    return (*(v3 + 8))(a1, v2);
  }

  if (v9 == *MEMORY[0x1E69BCF80])
  {
    sub_1C4EFD298();
    return (*(v3 + 8))(a1, v2);
  }

  if (v9 == *MEMORY[0x1E69BCFB0])
  {
    sub_1C4EFD1B8();
    return (*(v3 + 8))(a1, v2);
  }

  if (v9 == *MEMORY[0x1E69BCFD0])
  {
    sub_1C4EFD3F8();
    return (*(v3 + 8))(a1, v2);
  }

  if (v9 == *MEMORY[0x1E69BCFC0])
  {
    sub_1C4EFD418();
    return (*(v3 + 8))(a1, v2);
  }

  if (v9 == *MEMORY[0x1E69BCF88])
  {
    sub_1C4EFD2D8();
    return (*(v3 + 8))(a1, v2);
  }

  if (v9 == *MEMORY[0x1E69BCFA8])
  {
    sub_1C4EFD018();
    return (*(v3 + 8))(a1, v2);
  }

  if (v9 == *MEMORY[0x1E69BCF90])
  {
    sub_1C4EFCED8();
    return (*(v3 + 8))(a1, v2);
  }

  if (v9 == *MEMORY[0x1E69BCFE8])
  {
    goto LABEL_3;
  }

  sub_1C44120CC();

  v15 = sub_1C4419F14("got unexpected EntityType from PegasusApi: ");
  (v8)(v15);
  v16 = sub_1C4F01198();
  MEMORY[0x1C6940010](v16);

  sub_1C49E47AC();
  v17 = swift_allocError();
  sub_1C4407434(v17, v18);
  v19 = *(v3 + 8);
  v19(a1, v2);
  return (v19)(v7, v2);
}

unint64_t sub_1C49E47AC()
{
  result = qword_1EC0C0E28;
  if (!qword_1EC0C0E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0E28);
  }

  return result;
}

uint64_t EntityPredicate.init(globalKGPropertyId:)(uint64_t a1)
{
  v2 = sub_1C4EFA338();
  sub_1C43FCDF8();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v24 - v8;
  v10 = *(v4 + 16);
  v10(&v24 - v8, a1, v2, v7);
  v11 = (*(v4 + 88))(v9, v2);
  if (v11 == *MEMORY[0x1E69BD010] || v11 == *MEMORY[0x1E69BD008])
  {
    sub_1C44120CC();

    v12 = sub_1C441FE6C("got unexpected PropertyID from PegasusApi: ");
    (v10)(v12);
    v13 = sub_1C4F01198();
    MEMORY[0x1C6940010](v13);

    v14 = v24;
    v15 = v25;
    sub_1C49E47AC();
    swift_allocError();
    *v16 = v14;
    *(v16 + 8) = v15;
    *(v16 + 16) = 2;
    swift_willThrow();
    return (*(v4 + 8))(a1, v2);
  }

  if (v11 == *MEMORY[0x1E69BD018])
  {
    sub_1C4EFEBB8();
    return (*(v4 + 8))(a1, v2);
  }

  if (v11 == *MEMORY[0x1E69BD058])
  {
    sub_1C4EFEBF8();
    return (*(v4 + 8))(a1, v2);
  }

  if (v11 == *MEMORY[0x1E69BD020])
  {
    sub_1C4EFEE08();
    return (*(v4 + 8))(a1, v2);
  }

  if (v11 == *MEMORY[0x1E69BD040])
  {
    sub_1C4EFEC48();
    return (*(v4 + 8))(a1, v2);
  }

  if (v11 == *MEMORY[0x1E69BD048])
  {
    sub_1C4EFEEC8();
    return (*(v4 + 8))(a1, v2);
  }

  if (v11 == *MEMORY[0x1E69BD060])
  {
    sub_1C4EFEC98();
    return (*(v4 + 8))(a1, v2);
  }

  if (v11 == *MEMORY[0x1E69BD068])
  {
    sub_1C4EFECB8();
    return (*(v4 + 8))(a1, v2);
  }

  if (v11 == *MEMORY[0x1E69BD070])
  {
    sub_1C4EFED58();
    return (*(v4 + 8))(a1, v2);
  }

  if (v11 == *MEMORY[0x1E69BD078])
  {
    sub_1C4EFEB38();
    return (*(v4 + 8))(a1, v2);
  }

  if (v11 == *MEMORY[0x1E69BD080])
  {
    sub_1C4EFE468();
    return (*(v4 + 8))(a1, v2);
  }

  if (v11 == *MEMORY[0x1E69BD0A8])
  {
    sub_1C4EFEE98();
    return (*(v4 + 8))(a1, v2);
  }

  if (v11 == *MEMORY[0x1E69BD0B0])
  {
    sub_1C4EFECA8();
    return (*(v4 + 8))(a1, v2);
  }

  if (v11 == *MEMORY[0x1E69BD0B8])
  {
    sub_1C4EFE508();
    return (*(v4 + 8))(a1, v2);
  }

  if (v11 == *MEMORY[0x1E69BD038])
  {
    sub_1C4EFEEA8();
    return (*(v4 + 8))(a1, v2);
  }

  if (v11 == *MEMORY[0x1E69BD028])
  {
    sub_1C4EFEC68();
    return (*(v4 + 8))(a1, v2);
  }

  if (v11 == *MEMORY[0x1E69BD030])
  {
    sub_1C4EFEC88();
    return (*(v4 + 8))(a1, v2);
  }

  if (v11 == *MEMORY[0x1E69BD050])
  {
    sub_1C4EFEEE8();
    return (*(v4 + 8))(a1, v2);
  }

  if (v11 == *MEMORY[0x1E69BD098])
  {
    sub_1C4EFE408();
    return (*(v4 + 8))(a1, v2);
  }

  if (v11 == *MEMORY[0x1E69BD090])
  {
    sub_1C4EFE6A8();
    return (*(v4 + 8))(a1, v2);
  }

  if (v11 == *MEMORY[0x1E69BD088])
  {
    sub_1C4EFE8E8();
    return (*(v4 + 8))(a1, v2);
  }

  if (v11 == *MEMORY[0x1E69BD000])
  {
    sub_1C4EFEDA8();
    return (*(v4 + 8))(a1, v2);
  }

  if (v11 == *MEMORY[0x1E69BD0A0])
  {
    sub_1C4EFEC58();
    return (*(v4 + 8))(a1, v2);
  }

  sub_1C44120CC();

  v18 = sub_1C441FE6C("got unexpected PropertyID from PegasusApi: ");
  (v10)(v18);
  v19 = sub_1C4F01198();
  MEMORY[0x1C6940010](v19);

  v20 = v24;
  v21 = v25;
  sub_1C49E47AC();
  swift_allocError();
  *v22 = v20;
  *(v22 + 8) = v21;
  *(v22 + 16) = 2;
  swift_willThrow();
  v23 = *(v4 + 8);
  v23(a1, v2);
  return (v23)(v9, v2);
}

uint64_t sub_1C49E4D3C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1C4EFEEF8();
  sub_1C43FCDF8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  (*(v6 + 16))(&v45 - v12, v2, v4, v11);
  sub_1C4EFEBB8();
  sub_1C49E5390();
  v13 = sub_1C44068D0();
  v14 = *(v6 + 8);
  v14(v9, v4);
  if (v13)
  {
    v15 = sub_1C4404050();
    (v14)(v15);
    v35 = *MEMORY[0x1E69BD018];
    sub_1C4EFA338();
    sub_1C43FCE50();
    v37 = *(v36 + 104);
    v38 = a1;
    v39 = v35;
  }

  else
  {
    sub_1C4EFEE08();
    sub_1C44068D0();
    v16 = sub_1C4417504();
    (v14)(v16);
    sub_1C4EFEC68();
    sub_1C44068D0();
    v17 = sub_1C4417504();
    (v14)(v17);
    sub_1C4EFEC88();
    sub_1C44068D0();
    v18 = sub_1C4417504();
    (v14)(v18);
    sub_1C4EFEC48();
    sub_1C44068D0();
    v19 = sub_1C4417504();
    (v14)(v19);
    sub_1C4EFEEC8();
    sub_1C44068D0();
    v20 = sub_1C4417504();
    (v14)(v20);
    sub_1C4EFEEE8();
    sub_1C44068D0();
    v21 = sub_1C4417504();
    (v14)(v21);
    sub_1C4EFEBF8();
    sub_1C44068D0();
    v22 = sub_1C4417504();
    (v14)(v22);
    sub_1C4EFEC98();
    sub_1C44068D0();
    v23 = sub_1C4417504();
    (v14)(v23);
    sub_1C4EFECB8();
    sub_1C44068D0();
    v24 = sub_1C4417504();
    (v14)(v24);
    sub_1C4EFED58();
    sub_1C44068D0();
    v25 = sub_1C4417504();
    (v14)(v25);
    sub_1C4EFEB38();
    sub_1C44068D0();
    v26 = sub_1C4417504();
    (v14)(v26);
    sub_1C4EFE468();
    sub_1C44068D0();
    v27 = sub_1C4417504();
    (v14)(v27);
    sub_1C4EFE8E8();
    sub_1C44068D0();
    v28 = sub_1C4417504();
    (v14)(v28);
    sub_1C4EFE408();
    sub_1C44068D0();
    v29 = sub_1C4417504();
    (v14)(v29);
    sub_1C4EFEE98();
    sub_1C44068D0();
    v30 = sub_1C4417504();
    (v14)(v30);
    sub_1C4EFECA8();
    sub_1C44068D0();
    v31 = sub_1C4417504();
    (v14)(v31);
    sub_1C4EFE508();
    sub_1C44068D0();
    v32 = sub_1C4417504();
    (v14)(v32);
    sub_1C4EFEEA8();
    sub_1C44068D0();
    v33 = sub_1C4417504();
    (v14)(v33);
    sub_1C4EFEDA8();
    sub_1C44068D0();
    v34 = sub_1C4417504();
    (v14)(v34);
    sub_1C4EFEC58();
    v41 = sub_1C44068D0();
    v14(v9, v4);
    v42 = sub_1C4404050();
    (v14)(v42);
    sub_1C4EFA338();
    sub_1C43FCE50();
    v37 = *(v43 + 104);
    if (v41)
    {
      v44 = MEMORY[0x1E69BD0A0];
    }

    else
    {
      v44 = MEMORY[0x1E69BD008];
    }

    v39 = *v44;
    v38 = a1;
  }

  return v37(v38, v39);
}

unint64_t sub_1C49E5390()
{
  result = qword_1EDDFCCB0;
  if (!qword_1EDDFCCB0)
  {
    sub_1C4EFEEF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFCCB0);
  }

  return result;
}

uint64_t sub_1C49E53EC@<X0>(uint64_t a1@<X8>)
{
  v117 = sub_1C4EFA338();
  v119 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117);
  v121 = v91 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_1C4EFEEF8();
  v118 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v115 = v91 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_1C4EFA458();
  v99 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v106 = v91 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C456902C(&qword_1EC0C0E48, &qword_1C4F41288);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v91 - v6;
  v109 = sub_1C4EFA308();
  v107 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v97 = v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v105 = v91 - v10;
  v98 = sub_1C4EFF428();
  v102 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v111 = v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C456902C(&qword_1EC0BF728, &qword_1C4F412D0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v108 = v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v91 - v15;
  v112 = sub_1C4EFF988();
  v110 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v104 = v91 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1C4EFF3B8();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = v91 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1C4F00978();
  v113 = *(v22 - 8);
  v114 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v24 = v91 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1C4EFA048();
  MEMORY[0x1EEE9AC00](v25 - 8);
  sub_1C4EFA3C8();
  sub_1C4EFA038();
  sub_1C4EFA3B8();
  v26 = sub_1C4EFA3A8();
  sub_1C4EFA028();
  v26(&v122, 0);
  v94 = a1;
  sub_1C4EFA398();
  sub_1C4F00168();
  v27 = v21;
  (*(v19 + 16))(v21, v120, v18);
  v28 = sub_1C4F00968();
  v29 = sub_1C4F01CC8();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v103 = swift_slowAlloc();
    v122 = v103;
    *v30 = 136315138;
    v31 = v104;
    LODWORD(v101) = v29;
    sub_1C4EFF398();
    v100 = sub_1C4EFF978();
    v33 = v32;
    (*(v110 + 8))(v31, v112);
    (*(v19 + 8))(v27, v18);
    v34 = v7;
    v35 = sub_1C441D828(v100, v33, &v122);

    *(v30 + 4) = v35;
    v7 = v34;
    _os_log_impl(&dword_1C43F8000, v28, v101, "LiveGlobalKnowledge.IdSearchRequest: client bundle id: %s", v30, 0xCu);
    v36 = v103;
    sub_1C440962C(v103);
    MEMORY[0x1C6942830](v36, -1, -1);
    MEMORY[0x1C6942830](v30, -1, -1);
  }

  else
  {

    (*(v19 + 8))(v21, v18);
  }

  (*(v113 + 8))(v24, v114);
  result = sub_1C4EFF388();
  v38 = 0;
  v40 = (result + 64);
  v39 = *(result + 64);
  v101 = result;
  v41 = 1 << *(result + 32);
  if (v41 < 64)
  {
    v42 = ~(-1 << v41);
  }

  else
  {
    v42 = -1;
  }

  v43 = v42 & v39;
  v44 = ((v41 + 63) >> 6);
  v100 = v102 + 16;
  v110 = v102 + 32;
  v96 = (v107 + 32);
  v95 = (v107 + 16);
  v113 = v118 + 8;
  v114 = v118 + 16;
  v112 = v119 + 32;
  v91[2] = v99 + 16;
  v91[1] = v99 + 8;
  v91[0] = v107 + 8;
  v45 = v98;
  v46 = v108;
  v107 = v16;
  v104 = (result + 64);
  v103 = v44;
  v92 = v7;
  while (1)
  {
    if (v43)
    {
      v47 = v7;
      v48 = v38;
LABEL_14:
      v49 = __clz(__rbit64(v43));
      v43 &= v43 - 1;
      v50 = v49 | (v48 << 6);
      v51 = v101;
      v52 = v102;
      v53 = v111;
      (*(v102 + 16))(v111, *(v101 + 48) + *(v102 + 72) * v50, v45);
      v54 = *(*(v51 + 56) + 8 * v50);
      v55 = sub_1C456902C(&qword_1EC0BF730, &unk_1C4F3A680);
      v56 = *(v55 + 48);
      v57 = *(v52 + 32);
      v46 = v108;
      v57(v108, v53, v45);
      *(v46 + v56) = v54;
      sub_1C440BAA8(v46, 0, 1, v55);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v16 = v107;
    }

    else
    {
      while (1)
      {
        v48 = v38 + 1;
        if (__OFADD__(v38, 1))
        {
          goto LABEL_36;
        }

        if (v48 >= v44)
        {
          break;
        }

        v43 = *&v40[8 * v48];
        ++v38;
        if (v43)
        {
          v47 = v7;
          v38 = v48;
          goto LABEL_14;
        }
      }

      v47 = v7;
      v90 = sub_1C456902C(&qword_1EC0BF730, &unk_1C4F3A680);
      sub_1C440BAA8(v46, 1, 1, v90);
      v43 = 0;
    }

    sub_1C49EA0B0(v46, v16);
    v58 = sub_1C456902C(&qword_1EC0BF730, &unk_1C4F3A680);
    if (sub_1C44157D4(v16, 1, v58) == 1)
    {
    }

    v59 = *&v16[*(v58 + 48)];
    v60 = v111;
    (*v110)(v111, v16, v45);
    v7 = v47;
    sub_1C49EA120(v60, v47);
    v61 = v47;
    v62 = v109;
    if (sub_1C44157D4(v61, 1, v109) == 1)
    {

      result = sub_1C4420C3C(v7, &qword_1EC0C0E48, &qword_1C4F41288);
      v40 = v104;
      v44 = v103;
    }

    else
    {
      v63 = *v96;
      v120 = v59;
      v64 = v105;
      v63(v105, v7, v62);
      sub_1C4EFA448();
      (*v95)(v97, v64, v62);
      sub_1C4EFA438();
      v65 = v120;
      v66 = v120 + 56;
      v67 = 1 << *(v120 + 32);
      if (v67 < 64)
      {
        v68 = ~(-1 << v67);
      }

      else
      {
        v68 = -1;
      }

      v69 = v68 & *(v120 + 56);
      v70 = (v67 + 63) >> 6;
      result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v71 = 0;
      v72 = MEMORY[0x1E69E7CC0];
      if (v69)
      {
        goto LABEL_26;
      }

      while (1)
      {
        v73 = v71 + 1;
        if (__OFADD__(v71, 1))
        {
          __break(1u);
LABEL_36:
          __break(1u);
          return result;
        }

        if (v73 >= v70)
        {
          break;
        }

        v69 = *(v66 + 8 * v73);
        ++v71;
        if (v69)
        {
          v71 = v73;
          do
          {
LABEL_26:
            v74 = v118;
            v75 = *(v65 + 48) + *(v118 + 72) * (__clz(__rbit64(v69)) | (v71 << 6));
            v77 = v115;
            v76 = v116;
            (*(v118 + 16))(v115, v75, v116);
            sub_1C49E4D3C(v121);
            (*(v74 + 8))(v77, v76);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1C458E8DC(0, *(v72 + 16) + 1, 1, v72);
              v72 = v80;
            }

            v79 = *(v72 + 16);
            v78 = *(v72 + 24);
            if (v79 >= v78 >> 1)
            {
              sub_1C458E8DC(v78 > 1, v79 + 1, 1, v72);
              v72 = v81;
            }

            v69 &= v69 - 1;
            *(v72 + 16) = v79 + 1;
            result = (*(v119 + 32))(v72 + ((*(v119 + 80) + 32) & ~*(v119 + 80)) + *(v119 + 72) * v79, v121, v117);
            v65 = v120;
          }

          while (v69);
        }
      }

      v82 = v106;
      sub_1C4EFA398();
      v83 = sub_1C4EFA388();
      v85 = v84;
      sub_1C4589490();
      v86 = *(*v85 + 16);
      sub_1C458A020();
      v87 = *v85;
      *(v87 + 16) = v86 + 1;
      v88 = v99;
      v89 = v93;
      (*(v99 + 16))(v87 + ((*(v99 + 80) + 32) & ~*(v99 + 80)) + *(v99 + 72) * v86, v82, v93);
      v83(&v122, 0);
      (*(v88 + 8))(v82, v89);
      result = (*v91[0])(v105, v109);
      v7 = v92;
      v45 = v98;
      v16 = v107;
      v46 = v108;
      v40 = v104;
      v44 = v103;
    }
  }
}

uint64_t LiveGlobalKnowledgeApi.callPegasusProxy(request:timeoutMs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a1;
  v5 = sub_1C4EFA3D8();
  sub_1C43FCDF8();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBCC4();
  v11 = v10 - v9;
  v12 = sub_1C456902C(&qword_1EC0C0E30, &qword_1C4F41110);
  sub_1C43FBD18(v12);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v21 - v14;
  v23 = MEMORY[0x1E69E7CD0];
  sub_1C4EFA4F8();
  swift_allocObject();
  sub_1C4EFA4E8();
  sub_1C49E53EC(v11);
  v16 = sub_1C49E6380(v15, v11, a3, &v23);
  (*(v7 + 8))(v11, v5);

  if (!v3)
  {
    v17 = sub_1C4EFA418();
    sub_1C43FBCE0();
    v19 = v22;
    (*(v18 + 32))(v22, v15, v17);
    sub_1C440BAA8(v19, 0, 1, v17);
  }

  return v16 & 1;
}

uint64_t sub_1C49E6380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v60 = sub_1C4F00978();
  sub_1C43FCDF8();
  v59 = v4;
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FD2D8();
  sub_1C43FCE30(v6);
  v7 = sub_1C456902C(&qword_1EC0C0E58, &qword_1C4F41290);
  sub_1C43FBD18(v7);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBC74();
  sub_1C43FCE30(v9);
  v69 = sub_1C456902C(&qword_1EC0C0E60, &qword_1C4F41298);
  sub_1C43FCDF8();
  v70 = v10;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBC74();
  sub_1C43FCE30(v12);
  v73 = sub_1C456902C(&qword_1EC0C0E68, &qword_1C4F412A0);
  sub_1C43FCDF8();
  v74 = v13;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBC74();
  sub_1C43FCE30(v15);
  sub_1C456902C(&qword_1EC0C0E70, &qword_1C4F412A8);
  sub_1C43FCDF8();
  v75 = v16;
  v76 = v17;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBC74();
  sub_1C43FCE30(v19);
  sub_1C456902C(&qword_1EC0C0E78, &unk_1C4F412B0);
  sub_1C43FCDF8();
  v77 = v20;
  v78 = v21;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FBC74();
  v71 = v23;
  sub_1C43FBE44();
  v83 = sub_1C4F00D48();
  sub_1C43FCDF8();
  v85 = v24;
  MEMORY[0x1EEE9AC00](v25);
  sub_1C43FD2D8();
  v84 = v26;
  sub_1C43FBE44();
  v79 = sub_1C4F01D98();
  sub_1C43FCDF8();
  v86 = v27;
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FD2D8();
  v64 = v29;
  sub_1C43FBE44();
  sub_1C4F01D58();
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v30);
  sub_1C43FBCC4();
  v31 = sub_1C4F00D88();
  v32 = sub_1C43FBD18(v31);
  MEMORY[0x1EEE9AC00](v32);
  sub_1C43FBCC4();
  v63 = dispatch_group_create();
  sub_1C4665684();
  sub_1C4F00D78();
  sub_1C49EA068(&qword_1EDDF0418, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  sub_1C456902C(&qword_1EC0B8498, &qword_1C4F0CD40);
  sub_1C4401CBC(&qword_1EDDF0608, &qword_1EC0B8498, &qword_1C4F0CD40, MEMORY[0x1E69E6328]);
  sub_1C4F020C8();
  v33 = *MEMORY[0x1E69E8090];
  v34 = *(v86 + 104);
  v34(v64, v33, v79);
  sub_1C44008EC();
  v82 = sub_1C4F01DC8();
  sub_1C4F00D78();
  sub_1C4F020C8();
  v34(v64, v33, v79);
  sub_1C44008EC();
  v35 = sub_1C4F01DC8();
  v62 = sub_1C4EFA418();
  v87 = swift_allocBox();
  v61 = v36;
  sub_1C4EFA408();
  v37 = swift_allocObject();
  *(v37 + 16) = 0;
  sub_1C43FBDBC();
  v38 = swift_allocObject();
  *(v38 + 16) = 0;
  v65 = (v38 + 16);
  dispatch_group_enter(v63);
  *v84 = a3;
  (*(v85 + 104))(v84, *MEMORY[0x1E69E7F38], v83);
  sub_1C4EFA4B8();
  sub_1C4401CBC(&qword_1EDDF0728, &qword_1EC0C0E60, &qword_1C4F41298, MEMORY[0x1E695BE48]);
  sub_1C4F00CB8();
  (*(v70 + 8))(v67, v69);
  v80 = v35;
  v39 = sub_1C4F01D68();
  sub_1C440BAA8(v72, 1, 1, v39);
  sub_1C4401CBC(&qword_1EC0C0E80, &qword_1EC0C0E68, &qword_1C4F412A0, MEMORY[0x1E695BDB8]);
  sub_1C49EA068(&unk_1EDDDB910, sub_1C4665684, MEMORY[0x1E69E8028]);
  sub_1C4F00CF8();
  sub_1C4420C3C(v72, &qword_1EC0C0E58, &qword_1C4F41290);
  (*(v74 + 8))(v66, v73);
  sub_1C43FBDBC();
  v40 = v38;
  *(swift_allocObject() + 16) = v63;
  sub_1C4401CBC(&qword_1EC0C0E88, &qword_1EC0C0E70, &qword_1C4F412A8, MEMORY[0x1E695BE98]);
  v41 = v63;
  sub_1C440F1BC();
  sub_1C4F00C38();

  (*(v76 + 8))(v68, v75);
  v42 = swift_allocObject();
  v42[2] = v37;
  v42[3] = a3;
  v42[4] = v40;
  v43 = swift_allocObject();
  *(v43 + 16) = v87;
  *(v43 + 24) = v40;
  sub_1C4401CBC(&qword_1EC0C0E90, &qword_1EC0C0E78, &unk_1C4F412B0, MEMORY[0x1E695BCC0]);
  swift_retain_n();

  v44 = sub_1C4F00C98();

  v45 = v41;
  (*(v78 + 8))(v71, v77);
  sub_1C4F00BA8();
  sub_1C4F01D48();
  sub_1C4A7EB20(v44);

  sub_1C440F1BC();
  swift_beginAccess();
  v46 = *v65;
  if (*v65)
  {
    v47 = v46;
    sub_1C4F00168();
    v48 = v46;
    v49 = sub_1C4F00968();
    v50 = sub_1C4F01CD8();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = v45;
      v53 = swift_slowAlloc();
      *v51 = 138412290;
      v54 = v46;
      v55 = _swift_stdlib_bridgeErrorToNSError();
      *(v51 + 4) = v55;
      *v53 = v55;
      _os_log_impl(&dword_1C43F8000, v49, v50, "LiveGlobalKnowledge IDSearch searchError: %@", v51, 0xCu);
      sub_1C4420C3C(v53, &qword_1EC0BDA00, &qword_1C4F10D30);
      v45 = v52;
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    (*(v59 + 8))(v58, v60);
    swift_willThrow();

    (*(v85 + 8))(v84, v83);
  }

  else
  {
    (*(v85 + 8))(v84, v83);

    sub_1C440F1BC();
    swift_beginAccess();
    (*(*(v62 - 8) + 16))(a1, v61);
    sub_1C440F1BC();
    swift_beginAccess();
    LOBYTE(v49) = *(v37 + 16);
  }

  return v49 & 1;
}