uint64_t sub_1C446F0D0(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1C446F0E4()
{

  if (*(v0 + 40))
  {
  }

  if (*(v0 + 72))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1C446F158(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1C446F170(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_1C456902C(a2, a3);
  sub_1C43FD3F8();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C446F1C4()
{
  sub_1C441B2E0();
  sub_1C441C090();

  v0(v1, &v3);
}

uint64_t sub_1C446F2A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v26 - v11;
  (*(a5 + 32))(&v30, a4, a5, v10);
  v13 = v32;
  v27 = *(&v31 + 1);
  v34 = v31;
  v33 = v30;
  v28[0] = v30;
  v28[1] = v31;
  v29 = v32;
  v14 = (*(a5 + 40))(a4, a5);
  v18 = sub_1C440B350(v14, v15, v16, v17, &unk_1C4FFEFA0);
  v22 = sub_1C440B350(v18, v19, v20, v21, &unk_1C4FFEFA8);
  v23 = type metadata accessor for StatusItem(0, AssociatedTypeWitness, v18, v22);
  WitnessTable = swift_getWitnessTable();
  sub_1C44701AC(v28, v12, a2, v26, v23, WitnessTable);
  (*(v9 + 8))(v12, AssociatedTypeWitness);
  sub_1C4471348(&v33);
  sub_1C44706BC(&v34);
  return sub_1C44239FC(v27, v13);
}

uint64_t sub_1C446F49C@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  result = sub_1C446F0D0(v6, v7);
  *a1 = v4;
  a1[1] = v3;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  return result;
}

uint64_t (*sub_1C446F538(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  if (v2)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = *(a1 + 16);
    *(v5 + 32) = *(a1 + 32);
    *(v5 + 40) = v2;
    *(v5 + 48) = v3;
    v6 = sub_1C44BAB1C;
  }

  else
  {
    v6 = 0;
  }

  sub_1C446F0D0(v2, v3);
  return v6;
}

uint64_t sub_1C446F5C8()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C446F600(uint64_t a1)
{
  result = sub_1C4EF98F8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

id _s24IntelligencePlatformCore24KnowledgeConstructionXPCC6ServerCAEycfc_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t sub_1C446F70C()
{
  sub_1C43FEAEC();
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v1[1] = sub_1C442F080;
  sub_1C445EB20();

  return v3();
}

uint64_t KnowledgeConstructionXPC.Server.runFastpassPipeline(with:)()
{
  sub_1C43FBCD4();
  v0[5] = v1;
  v0[6] = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v0[7] = swift_task_alloc();
  v2 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t type metadata accessor for Pipeline.StatusStore(uint64_t a1)
{
  result = qword_1EDDF0B38;
  if (!qword_1EDDF0B38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C446F8F4(uint64_t result)
{
  v1 = *(result + 16);
  v2 = MEMORY[0x1E69E7CC0];
  v3 = (result + 32);
  if (v1)
  {
    while (1)
    {
      v4 = *v3;
      v5 = *(*v3 + 16);
      v6 = *(v2 + 16);
      if (__OFADD__(v6, v5))
      {
        break;
      }

      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if (!swift_isUniquelyReferenced_nonNull_native() || v6 + v5 > *(v2 + 24) >> 1)
      {
        sub_1C446FA30();
        v2 = v7;
      }

      if (*(v4 + 16))
      {
        if ((*(v2 + 24) >> 1) - *(v2 + 16) < v5)
        {
          goto LABEL_16;
        }

        sub_1C456902C(&qword_1EC0B8A68, &unk_1C4F0DE90);
        swift_arrayInitWithCopy();

        if (v5)
        {
          v8 = *(v2 + 16);
          v9 = __OFADD__(v8, v5);
          v10 = v8 + v5;
          if (v9)
          {
            goto LABEL_17;
          }

          *(v2 + 16) = v10;
        }
      }

      else
      {

        if (v5)
        {
          goto LABEL_15;
        }
      }

      ++v3;
      if (!--v1)
      {
        return;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
  }
}

void sub_1C446FA30()
{
  sub_1C441581C();
  if ((v3 & 1) == 0 || (sub_1C441172C(), v4 == v5))
  {
LABEL_6:
    sub_1C442DD18();
    if (v2)
    {
      v6 = sub_1C456902C(&unk_1EC0C2E30, &qword_1C4F4E080);
      v7 = sub_1C44108A0(v6);
      sub_1C4418FDC(v7);
      if (v1)
      {
LABEL_8:
        v8 = sub_1C4412BE8();
        sub_1C445ECD8(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = sub_1C456902C(&qword_1EC0B8A68, &unk_1C4F0DE90);
    sub_1C43FEA6C(v11);
    goto LABEL_11;
  }

  sub_1C442B904();
  if (!v4)
  {
    sub_1C440A4D4();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1C446FB40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  sub_1C43FE96C();
  v12 = v11;
  v14 = v13;
  sub_1C4EFB1E8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBFDC();
  sub_1C440D420();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FEFC4(v17, v18, v19, v20, v21, v22, v23, v24, v41);
  sub_1C43FCDF8();
  v26 = v25;
  MEMORY[0x1EEE9AC00](v27);
  sub_1C4406E1C();
  sub_1C441DCFC();
  sub_1C456902C(v14, v12);
  sub_1C4EFAF88();
  if (!v10)
  {
    goto LABEL_7;
  }

  v28 = v10;
  sub_1C4EFA798();
  v29 = sub_1C447F088();

  v30 = *(v26 + 8);
  v31 = sub_1C43FCE84();
  v30(v31);
  if (v29 & 1) != 0 || (v32 = v10, sub_1C4EFAAC8(), v33 = sub_1C447F088(), v10, v34 = sub_1C43FCE84(), v30(v34), (v33))
  {

    v35 = sub_1C4778264();
    sub_1C43FFB2C(&type metadata for ErrorHandlingDatabasePoolError, v35);
    sub_1C4433CB8();
LABEL_7:
    sub_1C440431C();
    sub_1C43FBC80();
    return;
  }

  sub_1C442F1A4();
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  sub_1C441B920();
  if (!sub_1C440BCF8(v36, v37, v38))
  {

    goto LABEL_7;
  }

  v39 = sub_1C4403150();
  v40(v39);
  sub_1C44159C8(OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_databaseFileURL);
  __break(1u);
}

uint64_t sub_1C446FDA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4470D98();

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

uint64_t sub_1C446FE04@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1C456902C(&qword_1EC0C09E8, &qword_1C4F3FDB0);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C4409678(a1, a1[3]);
  sub_1C446C744();
  sub_1C4F02BC8();
  if (v2)
  {
    return sub_1C440962C(a1);
  }

  v6 = sub_1C4409E6C();
  v8 = v7;
  v15 = v6;
  LOBYTE(v16) = 1;
  v13 = sub_1C4409E6C();
  v14 = v9;
  sub_1C444C16C();
  sub_1C4F026C8();
  v10 = sub_1C43FBF04();
  v11(v10);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C44344B8(v16, v17);
  sub_1C440962C(a1);

  result = sub_1C4434000(v16, v17);
  *a2 = v15;
  a2[1] = v8;
  a2[2] = v13;
  a2[3] = v14;
  a2[4] = v16;
  a2[5] = v17;
  return result;
}

unint64_t sub_1C4470054()
{
  result = qword_1EDDFCEE8;
  if (!qword_1EDDFCEE8)
  {
    sub_1C4572308(&qword_1EC0B90E8, &qword_1C4F3DCF0);
    sub_1C450220C(&unk_1EDDFCD60, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFCEE8);
  }

  return result;
}

uint64_t sub_1C4470108@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v6 = a2(0);
  if (v5)
  {
    (*(*(v6 - 8) + 16))(a3, a1 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)), v6);
  }

  v7 = sub_1C442FDE8();

  return sub_1C440BAA8(v7, v8, v9, v10);
}

uint64_t sub_1C44701AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v12 = (*(a6 + 48))(a5, a6);
  if (v12)
  {
    v14 = v12;
    v15 = v13;
    v12(v7, a1, a2, a3, a4);
    return sub_1C44239FC(v14, v15);
  }

  else
  {
    if (a4)
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      MEMORY[0x1C6940010](46, 0xE100000000000000);
      v17 = sub_1C4407BD4();
      v19 = v18(v17);
      MEMORY[0x1C6940010](v19);

      swift_getAssociatedTypeWitness();
      sub_1C4400E98();
      swift_getAssociatedConformanceWitness();
      sub_1C4400E98();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      sub_1C4412548(a3, a4, v21, v22, v23, AssociatedConformanceWitness, v24, v25, a2);
    }

    else
    {
      v26 = sub_1C4407BD4();
      v28 = v27(v26);
      v30 = v29;
      swift_getAssociatedTypeWitness();
      sub_1C4400E98();
      swift_getAssociatedConformanceWitness();
      sub_1C4400E98();
      v31 = swift_getAssociatedConformanceWitness();
      sub_1C4412548(v28, v30, v32, v33, v34, v31, v35, v36, a2);
    }
  }
}

uint64_t sub_1C44703C4()
{
  v1 = *v0;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v1;
}

uint64_t KeyValueStore.store<A>(key:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21 = a2;
  sub_1C4470614(a4, a4);
  v12 = *(a4 - 8);
  swift_allocObject();
  v13 = sub_1C4F016A8();
  (*(v12 + 16))(v14, a3, a4);
  sub_1C4470680(v13, a4);
  v23 = v15;
  sub_1C4F017A8();
  v22 = a6;
  swift_getWitnessTable();
  v16 = sub_1C4EF96D8();
  v18 = v17;

  if (!v7)
  {
    MEMORY[0x1EEE9AC00](result);
    v20[2] = v6;
    v20[3] = a1;
    v20[4] = v21;
    v20[5] = v16;
    v20[6] = v18;

    sub_1C44652E0(sub_1C446C398, v20, sub_1C4418704);
    sub_1C4434000(v16, v18);
  }

  return result;
}

uint64_t sub_1C4470614(uint64_t a1, uint64_t a2)
{
  if (sub_1C446D0AC(a2, a2))
  {

    return sub_1C456902C(&unk_1EC0BADA0, &unk_1C4F0FD20);
  }

  else
  {

    return MEMORY[0x1EEE6AEE8]();
  }
}

uint64_t sub_1C44706BC(uint64_t a1)
{
  v2 = sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C4470724(uint64_t a1, void *a2)
{
  v3 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v23 - v4;
  if (qword_1EDDE1A10 != -1)
  {
    sub_1C4407344(&qword_1EDDE1A10);
  }

  v6 = sub_1C442B738(v3, qword_1EDE2CB88);
  swift_beginAccess();
  sub_1C4466EEC(v6, v5);
  v7 = type metadata accessor for Configuration(0);
  result = sub_1C44157D4(v5, 1, v7);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v9 = &v5[*(v7 + 20)];
    v10 = *v9;
    v11 = *(v9 + 1);
    sub_1C4467948(v5);
    if (qword_1EDDFEC88 != -1)
    {
      swift_once();
    }

    if ((xmmword_1EDDFEC90 & ~v10) == 0 && (*(&xmmword_1EDDFEC90 + 1) & v11) == *(&xmmword_1EDDFEC90 + 1))
    {
      if (qword_1EDDFA678 != -1)
      {
        sub_1C43FFCC0(&qword_1EDDFA678);
      }

      v19 = sub_1C4F00978();
      sub_1C43FCEE8(v19, qword_1EDE2DCD8);
      v20 = sub_1C4F00968();
      v21 = sub_1C4F01CF8();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = sub_1C43FCED0();
        sub_1C43FBD24(v22);
        _os_log_impl(&dword_1C43F8000, v20, v21, "KnowledgeConstructionXPC: service is in no-op mode.", v10, 2u);
        sub_1C43FE9D4();
      }
    }

    else
    {
      v13 = sub_1C44351C0();
      if (sub_1C446874C(v13, v14))
      {
        v15 = [objc_opt_self() interfaceWithProtocol_];
        sub_1C44059FC(v15, sel_setExportedInterface_);

        v16 = [objc_allocWithZone(type metadata accessor for KnowledgeConstructionXPC.Server()) init];
        sub_1C44059FC(v16, sel_setExportedObject_);

        v28 = sub_1C49AEF14;
        v29 = 0;
        aBlock = MEMORY[0x1E69E9820];
        v25 = 1107296256;
        v26 = sub_1C4833DD0;
        v27 = &unk_1F43F2B90;
        v17 = _Block_copy(&aBlock);
        sub_1C44059FC(v17, sel_setInterruptionHandler_);
        _Block_release(v17);
        v28 = sub_1C49AEF34;
        v29 = 0;
        aBlock = MEMORY[0x1E69E9820];
        v25 = 1107296256;
        v26 = sub_1C4833DD0;
        v27 = &unk_1F43F2BB8;
        v18 = _Block_copy(&aBlock);
        sub_1C44059FC(v18, sel_setInvalidationHandler_);
        _Block_release(v18);
        [a2 resume];
        return 1;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1C4470ABC()
{
  sub_1C43FEAEC();
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C4411F54(v1);

  return v4(v3);
}

uint64_t sub_1C4470B58(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1C442F080;

  return v6();
}

uint64_t sub_1C4470C40@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1C4468F24(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1C4470C88(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_1C43FFE30(sub_1C446DD70);
}

uint64_t sub_1C4470CA0()
{
  sub_1C447F304();
  sub_1C456902C(&qword_1EC0C40C0, &qword_1C4F57580);
  sub_1C4403200();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FF6CC();
  if (!v3)
  {
    swift_once();
  }

  v4 = sub_1C442B738(v0, v1);
  sub_1C44138E4(v4);
  v5 = sub_1C440FCB0();
  v6(v5);
  sub_1C4EFD698();
  v7 = sub_1C443F394();
  v8(v7);
  return v10;
}

unint64_t sub_1C4470D98()
{
  result = qword_1EDDFF8D8;
  if (!qword_1EDDFF8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFF8D8);
  }

  return result;
}

double sub_1C4470DEC@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1C446FE04(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

void sub_1C4470E30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a2)
  {

    sub_1C4434000(a5, a6);
  }
}

uint64_t type metadata accessor for InterprocessLockDescriptors(uint64_t a1)
{
  result = qword_1EDDF2300;
  if (!qword_1EDDF2300)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4470F24(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C4EFB1E8();
  MEMORY[0x1EEE9AC00](v2);
  MEMORY[0x1EEE9AC00](v3);
  return sub_1C4EFAF18();
}

uint64_t sub_1C44711B0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1C4EFB768();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[1] = 0;
  v9[2] = 0xE000000000000000;
  sub_1C4F02248();

  v9[4] = 0xD00000000000001ALL;
  v9[5] = 0x80000001C4F99AF0;
  swift_beginAccess();
  v9[7] = *a2;
  v7 = sub_1C4F02858();
  MEMORY[0x1C6940010](v7);

  MEMORY[0x1C6940010](41, 0xE100000000000000);
  sub_1C4EFB758();
  sub_1C4EFBFF8();
  (*(v4 + 8))(v6, v3);
}

unint64_t sub_1C447139C()
{
  result = qword_1EDDF89F8;
  if (!qword_1EDDF89F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF89F8);
  }

  return result;
}

uint64_t sub_1C44713F0@<X0>(uint64_t *a1@<X8>)
{
  result = PipelineType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C4471418()
{
  v2 = sub_1C4403FC0();
  v3 = type metadata accessor for Pipeline.StatusStore(v2);
  sub_1C43FBD18(v3);
  v5 = (*(v4 + 80) + 64) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = v1[7];
  v12 = swift_task_alloc();
  v13 = sub_1C43FC218(v12);
  *v13 = v14;
  v13[1] = sub_1C442F080;

  return sub_1C4471524(v0, v6, v7, v8, v9, v10, v11, v1 + v5);
}

uint64_t sub_1C4471524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6, uint64_t a7, uint64_t a8)
{
  v8[3] = a4;
  v8[4] = a5;
  v8[2] = a1;
  v12 = (a6 + *a6);
  v10 = swift_task_alloc();
  v8[5] = v10;
  *v10 = v8;
  v10[1] = sub_1C4AC2F14;

  return v12(a8);
}

uint64_t sub_1C4471624(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  v3 = swift_task_alloc();
  v2[10] = v3;
  *v3 = v2;
  v3[1] = sub_1C448B4DC;

  return sub_1C4480C54();
}

uint64_t type metadata accessor for PhaseStores(uint64_t a1)
{
  result = qword_1EDDF90D8;
  if (!qword_1EDDF90D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for RelationshipPhase(uint64_t a1)
{
  result = qword_1EDDE61A0;
  if (!qword_1EDDE61A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4471750(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C44717B8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FCE50();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C4471814(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C4471874(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C43FBE94();
  v4(v3);
  sub_1C43FBCE0();
  v5 = sub_1C43FBC98();
  v6(v5);
  return a2;
}

uint64_t sub_1C44718CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C43FBE94();
  v5(v4);
  sub_1C43FBCE0();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_1C4471928(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C4471988(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C43FBE94();
  v5(v4);
  sub_1C43FBCE0();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_1C44719E4(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C43FBE94();
  v4(v3);
  sub_1C43FBCE0();
  v5 = sub_1C43FBC98();
  v6(v5);
  return a2;
}

uint64_t sub_1C4471A3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C43FBE94();
  v5(v4);
  sub_1C43FBCE0();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_1C4471A98()
{
  sub_1C4404078();
  v1(0);
  sub_1C43FBCE0();
  v2 = sub_1C43FBC98();
  v3(v2);
  return v0;
}

uint64_t sub_1C4471AF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C43FBE94();
  v5(v4);
  sub_1C43FBCE0();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_1C4471B4C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C4471BAC(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C43FBE94();
  v4(v3);
  sub_1C43FCE50();
  v5 = sub_1C43FBC98();
  v6(v5);
  return a2;
}

uint64_t sub_1C4471C00(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C43FBE94();
  v5(v4);
  sub_1C43FCE50();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_1C4471C58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C4471CC8()
{

  return sub_1C4EF9368();
}

uint64_t sub_1C4471CE0()
{
  v2 = *(v0 - 392);
  v3 = *(v0 - 400);

  return sub_1C44239FC(v2, v3);
}

uint64_t sub_1C4471D00()
{
  v4 = v1 + *(v0 + 20);

  return sub_1C4471988(v2, v4);
}

void sub_1C4471D20()
{
  *(v1 + 14) = v0;
  *(v1 + 22) = 1024;
  *(v1 + 24) = 0;
}

uint64_t sub_1C4471D34(uint64_t a1)
{

  return sub_1C4EFF808();
}

uint64_t sub_1C4471DB8()
{

  return sub_1C4F02658();
}

uint64_t sub_1C4471DEC()
{
  v1 = sub_1C43FECE0();
  v2(v1);
  sub_1C43FBCE0();
  v3 = sub_1C43FBC98();
  v4(v3);
  return v0;
}

uint64_t sub_1C4471E40(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C43FBE94();
  v5(v4);
  sub_1C43FBCE0();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t sub_1C4471E9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C43FBE94();
  v5(v4);
  sub_1C43FBCE0();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t sub_1C4471EF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C43FBE94();
  v5(v4);
  sub_1C43FBCE0();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t sub_1C4471F54(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1C4471FB4()
{
  v2 = sub_1C43FECE0();
  v3(v2);
  sub_1C43FBCE0();
  (*(v4 + 32))(v0, v1);
  return v0;
}

uint64_t sub_1C447200C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C43FBE94();
  v5(v4);
  sub_1C43FBCE0();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t sub_1C4472068(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C43FBE94();
  v5(v4);
  sub_1C43FBCE0();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t sub_1C44720C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C447212C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C43FBE94();
  v5(v4);
  sub_1C43FBCE0();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t sub_1C4472188(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  v4 = sub_1C43FBC98();
  v5(v4);
  return a2;
}

uint64_t sub_1C44721E4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  v4 = sub_1C43FBC98();
  v5(v4);
  return a2;
}

uint64_t sub_1C4472240()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[4];
  v22 = v0[12];
  v23 = v0[5];
  v6 = v0[2];
  v7 = v0[3];
  sub_1C44717B8(v0[13], v0[9], type metadata accessor for Source);
  sub_1C4419288();
  sub_1C44717B8(v6, v1, v8);
  Fuser.init(source:stores:pipelineType:)();
  sub_1C44857CC(v6);
  v9 = (v7 + OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_sourceIngestor);
  *(v7 + OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_sourceIngestor + 24) = v3;
  v9[4] = sub_1C4472468();
  v10 = sub_1C4422F90(v9);
  sub_1C4485828(v4, v10, type metadata accessor for RelationshipFullSourceIngestor);
  sub_1C44002E8();
  sub_1C4485828(v2, v11, v12);
  sub_1C44002E8();
  sub_1C4485828(v22, v13, v14);
  sub_1C44002E8();
  sub_1C4485828(v23, v15, v16);
  sub_1C44002E8();
  sub_1C4485828(v5, v17, v18);
  *(v7 + OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_pipelineType) = 1;

  v19 = v0[1];
  v20 = v0[3];

  return v19(v20);
}

unint64_t sub_1C4472468()
{
  result = qword_1EDDDEE70;
  if (!qword_1EDDDEE70)
  {
    type metadata accessor for RelationshipFullSourceIngestor(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDEE70);
  }

  return result;
}

uint64_t sub_1C44724C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C4472508(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C4472550(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C4472598(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C44725E0()
{
  switch(*(v0 + 218))
  {
    case 2:

      goto LABEL_4;
    default:
      v1 = sub_1C4F02938();

      if (v1)
      {
LABEL_4:
        v2 = *(v0 + 192);
        v3 = *(v0 + 104);
        sub_1C4419288();
        sub_1C4471750(v4, v2, v5);
        *(v0 + 40) = type metadata accessor for CNContactDeltaSourceIngestor(0);
        *(v0 + 48) = sub_1C4475A90(&qword_1EDDF22C8, type metadata accessor for CNContactDeltaSourceIngestor, &unk_1C4F16E80);
        v6 = sub_1C4422F90((v0 + 16));
        sub_1C467EAD0(v2, v3, v6);
      }

      else
      {
        v7 = *(v0 + 104);
        sub_1C4419288();
        sub_1C4471750(v8, v9, v10);
        v11 = type metadata accessor for CNContactFullSourceIngestor(0);
        *(v0 + 40) = v11;
        *(v0 + 48) = sub_1C4475A90(&qword_1EDDE0908, type metadata accessor for CNContactFullSourceIngestor, &unk_1C4F16EA8);
        v12 = sub_1C4422F90((v0 + 16));
        *(v12 + v11[6]) = 1;
        v13 = v7;
        _s24IntelligencePlatformCore5StagePAAE11entityClass0aB006EntityF0Vvg_0();
        *(v12 + v11[10]) = 9;
        v14 = v11[12];
        v15 = sub_1C4EFF1C8();
        sub_1C440BAA8(v12 + v14, 1, 1, v15);
        if (qword_1EDDFED28 != -1)
        {
          sub_1C442C6A0(&qword_1EDDFED28);
        }

        v16 = *(v0 + 184);
        v17 = *(v0 + 160);
        v18 = *(v0 + 217);
        v19 = *(v0 + 104);
        sub_1C442B738(*(v0 + 136), &unk_1EDDFD088);
        sub_1C44068F0();
        sub_1C4471750(v21, v12 + v20, v22);
        sub_1C4419288();
        sub_1C4471750(v16, v12, v23);
        *(v12 + v11[7]) = v19;
        *(v12 + v11[8]) = v18;
        v24 = [objc_allocWithZone(MEMORY[0x1E695CD80]) init];
        [v24 setStyle_];
        *(v12 + v11[11]) = v24;
        v25 = sub_1C4EF9E48();
        sub_1C440BAA8(v17, 1, 1, v25);
        sub_1C4EFF1A8();
        v26 = *(v0 + 168);
        sub_1C44857CC(*(v0 + 184));
        sub_1C440BAA8(v26, 0, 1, v15);
        sub_1C447D15C(v26, v12 + v14);
      }

      sub_1C4419288();
      sub_1C4471750(v27, v28, v29);
      if (qword_1EDDFED28 != -1)
      {
        sub_1C442C6A0(&qword_1EDDFED28);
      }

      v30 = *(v0 + 218);
      v31 = *(v0 + 176);
      v33 = *(v0 + 144);
      v32 = *(v0 + 152);
      v34 = *(v0 + 96);
      v35 = sub_1C442B738(*(v0 + 136), &unk_1EDDFD088);
      *(v0 + 200) = v35;
      sub_1C4471750(v35, v32, type metadata accessor for Source);
      sub_1C442E860(v0 + 16, v0 + 56);
      sub_1C4471750(v35, v33, type metadata accessor for Source);
      sub_1C4419288();
      sub_1C4471750(v34, v31, v36);
      *(v0 + 216) = v30;
      v37 = swift_task_alloc();
      *(v0 + 208) = v37;
      *v37 = v0;
      v37[1] = sub_1C44808F8;

      return Linker.init(source:stores:pipelineType:)();
  }
}

uint64_t LocationMatcher.init(stores:source:pipelineType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a3;
  v8 = type metadata accessor for LocationMatcher(0);
  *(a4 + v8[8]) = 2;
  sub_1C440053C();
  v9 = sub_1C43FE99C();
  sub_1C44719E4(v9, v10);
  sub_1C43FD90C();
  sub_1C44719E4(a2, a4 + v11);
  v12 = v8[6];
  *(a4 + v12) = v7;
  *(a4 + v8[7]) = *(a1 + *(type metadata accessor for PhaseStores(0) + 28));

  *(a4 + v8[10]) = sub_1C4475694();
  switch(*(a4 + v12))
  {
    case 2:

      goto LABEL_4;
    default:
      v13 = sub_1C4F02938();

      if (v13)
      {
LABEL_4:
        v14 = 0;
      }

      else
      {
        if (qword_1EDDE57B0 != -1)
        {
          swift_once();
        }

        v14 = sub_1C4472C34(0x6F635F6C65646F6DLL, 0xEC0000006769666ELL);
      }

      sub_1C447EA28(a2, type metadata accessor for Source);
      result = sub_1C447EA28(a1, type metadata accessor for PhaseStores);
      *(a4 + v8[9]) = v14;
      return result;
  }
}

uint64_t sub_1C4472C34(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C4F00978();
  sub_1C43FCDF8();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBD08();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v36 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v36 - v10;
  swift_beginAccess();
  sub_1C43FE99C();
  sub_1C447D1CC();
  if (v40 == 1)
  {
    v38 = v4;
    sub_1C4423A0C(&v39, &qword_1EC0B8520, &unk_1C4F613E0);
    swift_endAccess();
    goto LABEL_7;
  }

  sub_1C447D27C(&v39, v42);
  swift_endAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v38 = v4;
    sub_1C447D2B4(v42);
LABEL_7:
    type metadata accessor for AddressLinkingModel();
    v13 = swift_allocObject();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v24 = sub_1C43FE99C();
    sub_1C447D2E4(v24, v25);
    swift_weakInit();
    v40 = 0;
    swift_beginAccess();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    sub_1C4476000();
    swift_endAccess();
    sub_1C4F00158();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    v26 = sub_1C4F00968();
    v27 = sub_1C4F01CC8();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v41[0] = swift_slowAlloc();
      *v28 = 136315394;
      v39 = v13;

      v29 = sub_1C4F01198();
      v37 = v2;
      v31 = sub_1C441D828(v29, v30, v41);

      *(v28 + 4) = v31;
      *(v28 + 12) = 2080;
      v32 = sub_1C43FE99C();
      *(v28 + 14) = sub_1C441D828(v32, v33, v34);
      _os_log_impl(&dword_1C43F8000, v26, v27, "AddressLinkingModel: caching model %s for %s", v28, 0x16u);
      swift_arrayDestroy();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();

      (*(v38 + 8))(v8, v37);
    }

    else
    {

      (*(v38 + 8))(v8, v2);
    }

    return v13;
  }

  v13 = Strong;
  sub_1C4F00158();

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v14 = sub_1C4F00968();
  v15 = sub_1C4F01CC8();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v41[0] = swift_slowAlloc();
    *v16 = 136315394;
    v39 = v13;
    type metadata accessor for AddressLinkingModel();
    v38 = v4;

    v17 = sub_1C4F01198();
    v19 = sub_1C441D828(v17, v18, v41);
    v37 = v2;
    v20 = v19;

    *(v16 + 4) = v20;
    *(v16 + 12) = 2080;
    v21 = sub_1C43FE99C();
    *(v16 + 14) = sub_1C441D828(v21, v22, v23);
    _os_log_impl(&dword_1C43F8000, v14, v15, "AddressLinkingModel: using cached model %s for %s", v16, 0x16u);
    swift_arrayDestroy();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();

    (*(v38 + 8))(v11, v37);
  }

  else
  {

    (*(v4 + 8))(v11, v2);
  }

  sub_1C447D2B4(v42);
  return v13;
}

unint64_t sub_1C447323C()
{
  result = qword_1EDDED1F0;
  if (!qword_1EDDED1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDED1F0);
  }

  return result;
}

void *sub_1C4473290(void *a1)
{
  v3 = sub_1C456902C(&qword_1EC0B8538, &qword_1C4F0CFF8);
  sub_1C43FCDF8();
  v5 = v4;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v11 - v7;
  v9 = sub_1C4409678(a1, a1[3]);
  sub_1C4475FAC();
  sub_1C4F02BC8();
  if (v1)
  {
    sub_1C440962C(a1);
  }

  else
  {
    sub_1C456902C(qword_1EC0C0740, &qword_1C4F0D000);
    sub_1C4473454(&qword_1EDDFCEF0, MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
    sub_1C4F026C8();
    (*(v5 + 8))(v8, v3);
    v9 = v11[1];
    sub_1C440962C(a1);
  }

  return v9;
}

void *sub_1C4473428@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1C4473290(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1C4473454(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1C4572308(qword_1EC0C0740, &qword_1C4F0D000);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ConfigData.CodingKeys(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x1C447355CLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ConfigData.CodingKeys(unsigned int *a1, int a2)
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

uint64_t sub_1C44735D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) && (sub_1C445FAA8(a1, a2), (v3 & 1) != 0))
  {
    sub_1C4434540();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  else
  {
    sub_1C4455358();
  }

  return sub_1C43FBC98();
}

uint64_t sub_1C4473620(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t))
{
  v7 = type metadata accessor for Configuration(0);
  sub_1C43FBD18(v7);
  return a3(a1, a2, v3 + ((*(v8 + 80) + 16) & ~*(v8 + 80)));
}

uint64_t *sub_1C44736B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = sub_1C4EFF948();
  sub_1C43FCDF8();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBCC4();
  v12 = v11 - v10;
  v13 = sub_1C4EFFAD8();
  sub_1C43FCDF8();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBCC4();
  v19 = v18 - v17;
  v20 = type metadata accessor for Configuration(0);
  v21 = sub_1C43FBD18(v20);
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBCC4();
  v24 = v23 - v22;
  sub_1C44098F0(a3, v23 - v22);
  (*(v15 + 16))(v19, a1, v13);
  (*(v8 + 16))(v12, a2, v6);
  type metadata accessor for InferenceSupportRemoteBackendInProcess();
  v25 = swift_allocObject();
  result = sub_1C447387C(v24, v19, v12);
  if (!v29)
  {
    *a4 = v25;
  }

  return result;
}

uint64_t *sub_1C447387C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1C4EFF948();
  sub_1C43FCDF8();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBCC4();
  v13 = v12 - v11;
  v14 = type metadata accessor for Configuration(0);
  v15 = sub_1C43FBD18(v14);
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBCC4();
  v18 = v17 - v16;
  sub_1C4EF9348();
  swift_allocObject();
  *(v3 + 24) = sub_1C4EF9338();
  type metadata accessor for AssetRegistryRemoteBackendInProcess(0);
  sub_1C44098F0(a1, v18);
  (*(v9 + 16))(v13, a3, v7);
  v19 = sub_1C4473AD0(v18, v13);
  if (v4)
  {
    (*(v9 + 8))(a3, v7);
    sub_1C4EFFAD8();
    sub_1C43FD3F8();
    (*(v20 + 8))(a2);
    sub_1C4467948(a1);

    swift_deallocPartialClassInstance();
  }

  else
  {
    v21 = v19;
    (*(v9 + 8))(a3, v7);
    sub_1C4EFFAD8();
    sub_1C43FD3F8();
    (*(v22 + 8))(a2);
    sub_1C4467948(a1);
    *(v3 + 16) = v21;
  }

  return v3;
}

uint64_t sub_1C4473AD0(uint64_t a1, uint64_t a2)
{
  v6 = type metadata accessor for Configuration(0);
  v7 = sub_1C43FBD18(v6);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  sub_1C43FFCB0();
  sub_1C4EF9348();
  swift_allocObject();
  v8 = sub_1C4EF9338();
  type metadata accessor for AssetRegistryFullServer();
  sub_1C44098F0(a1, v3);

  v9 = sub_1C4473C20(v3, v8);
  if (v2)
  {

    sub_1C4EFF948();
    sub_1C43FBCE0();
    (*(v10 + 8))(a2);
    sub_1C4467948(a1);
  }

  else
  {
    v11 = v9;
    sub_1C4467948(a1);
    a1 = swift_allocObject();
    sub_1C4485988(v11, a2, v8);
  }

  return a1;
}

uint64_t sub_1C4473C20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Configuration(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1C43FBCC4();
  v7 = v6 - v5;
  sub_1C4EFF9D8();

  v8 = sub_1C4EFF9B8();
  if (v2)
  {
    sub_1C4467948(a1);
  }

  else
  {
    v9 = v8;
    type metadata accessor for AssetRegistryOverrideStore();
    sub_1C44098F0(a1, v7);
    v10 = AssetRegistryOverrideStore.__allocating_init(config:)(v7);
    sub_1C4467948(a1);

    result = swift_allocObject();
    *(result + 16) = v9;
    *(result + 24) = v10;
  }

  return result;
}

uint64_t sub_1C4473D64()
{

  return sub_1C4F01578();
}

uint64_t sub_1C4473D84()
{
  v3 = *(v1 - 216);

  return sub_1C447E970(v0, v3);
}

uint64_t type metadata accessor for OrganizationMatcher(uint64_t a1)
{
  result = qword_1EDDF4AD8;
  if (!qword_1EDDF4AD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for TopicMatcher(uint64_t a1)
{
  result = qword_1EDDF89C8;
  if (!qword_1EDDF89C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PeopleMatcher.init(stores:source:pipelineType:)()
{
  sub_1C43FBCD4();
  v2 = v1;
  *(v0 + 24) = v3;
  *(v0 + 32) = v4;
  *(v0 + 16) = v5;
  v6 = sub_1C4F00008();
  *(v0 + 40) = v6;
  *(v0 + 48) = *(v6 - 8);
  *(v0 + 56) = swift_task_alloc();
  *(v0 + 64) = swift_task_alloc();
  *(v0 + 104) = *v2;
  v7 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C4473F70()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 16);
  sub_1C4419288();
  sub_1C4471A98();
  v3 = type metadata accessor for PeopleMatcher(0);
  *(v0 + 72) = v3;
  *(v0 + 96) = v3[5];
  sub_1C44068F0();
  sub_1C4471A98();
  *(v0 + 100) = v3[6];
  sub_1C4EFD4C8();
  *(v2 + v3[7]) = 2;
  *(v2 + v3[8]) = v1;
  type metadata accessor for Nicknames();
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *v4 = v0;
  v4[1] = sub_1C448A2A4;

  return sub_1C44860FC();
}

uint64_t sub_1C4474074()
{
  sub_1C4411B70();
  while (1)
  {
    result = sub_1C4F00378();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      v3 = sub_1C4406AC8();
      sub_1C44740C4(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t sub_1C44740C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for NicknameEntry(0);
  sub_1C4486968(qword_1EDDF80F8, type metadata accessor for NicknameEntry, &unk_1C4F466E8);
  return sub_1C4F003E8();
}

uint64_t sub_1C4474164(uint64_t a1, void *a2, int a3)
{
  v4 = v3;
  v33 = a3;
  v7 = sub_1C456902C(&qword_1EC0C6128, &qword_1C4F6A840);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v29 - v9;
  v11 = OBJC_IVAR____TtCCO24IntelligencePlatformCore10ViewUpdate12JobScheduler10JobTracker_continuations;
  if (*(*(a1 + OBJC_IVAR____TtCCO24IntelligencePlatformCore10ViewUpdate12JobScheduler10JobTracker_continuations) + 16))
  {
    goto LABEL_6;
  }

  if (qword_1EDDFD018 != -1)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v12 = sub_1C4F00978();
    sub_1C442B738(v12, qword_1EDE2DDF8);
    v13 = sub_1C4F00968();
    v14 = sub_1C4F01CE8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = v11;
      v16 = v4;
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1C43F8000, v13, v14, "ViewUpdate.JobScheduler/ExecutionLoop: Job continuations list is unexpectedly empty. Something else may have finished this job already. This is an error.", v17, 2u);
      v18 = v17;
      v4 = v16;
      v11 = v15;
      MEMORY[0x1C6942830](v18, -1, -1);
    }

LABEL_6:
    v19 = *(a1 + v11);
    v20 = *(v19 + 16);
    if (v20)
    {
      v30 = v11;
      v31 = a1;
      v32 = v4;
      v23 = *(v8 + 16);
      v21 = v8 + 16;
      v22 = v23;
      v24 = v19 + ((*(v21 + 64) + 32) & ~*(v21 + 64));
      v25 = *(v21 + 56);
      v29[1] = v19;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      do
      {
        v22(v10, v24, v7);
        v34 = a2;
        if (v33)
        {
          v26 = a2;
          sub_1C4F01808();
        }

        else
        {
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C4F01818();
        }

        (*(v21 - 8))(v10, v7);
        v24 += v25;
        --v20;
      }

      while (v20);

      v11 = v30;
      a1 = v31;
      v4 = v32;
    }

    *(a1 + v11) = MEMORY[0x1E69E7CC0];

    v8 = OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_jobs;
    swift_beginAccess();

    v11 = 0;
    a1 = sub_1C4474A5C((v4 + v8), a1);
    v27 = sub_1C4428DA0(*(v4 + v8));
    if (v27 >= a1)
    {
      break;
    }

    __break(1u);
LABEL_16:
    swift_once();
  }

  sub_1C44298CC(a1, v27);
  return swift_endAccess();
}

uint64_t sub_1C4474460()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = v2;
  sub_1C44001F0();
  *v4 = v3;
  v5 = *v1;
  sub_1C43FBDAC();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (v0)
  {
    v7 = *(v3 + 32);

    return MEMORY[0x1EEE6DFA0](sub_1C4CDBB1C, v7, 0);
  }

  else
  {

    sub_1C43FBDA0();

    return v8();
  }
}

uint64_t sub_1C4474580()
{

  sub_1C4420C3C(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate13ViewUpdateJob_metricsPayload, &qword_1EC0C6428, qword_1C4F6D7E8);
  sub_1C4463890(*(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate13ViewUpdateJob_viewQuery), *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate13ViewUpdateJob_viewQuery + 8));

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1C44745F0()
{
  sub_1C440962C((v0 + 16));
  sub_1C4463890(*(v0 + 56), *(v0 + 64));

  return v0;
}

uint64_t sub_1C447462C()
{
  sub_1C44745F0();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4474660()
{
  sub_1C4475B28();
  v9 = v1;
  sub_1C43FEAEC();
  sub_1C4475DF8();
  sub_1C4426F9C();
  sub_1C441CF44();
  if (v0)
  {
    sub_1C44BBF4C();
    sub_1C440FE6C();
    sub_1C4430798();
    sub_1C446073C(MEMORY[0x1E69E7CD0]);
    sub_1C4408120();
    v2 = swift_task_alloc();
    v3 = sub_1C447FAC0(v2);
    *v3 = v4;
    v5 = sub_1C4401314(v3);

    return v6(v5);
  }

  else
  {
    sub_1C43FBDA0();

    return v8();
  }
}

uint64_t sub_1C447476C()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v1 = *v0;
  sub_1C43FBDAC();
  *v2 = v1;

  v3 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C447486C()
{
  sub_1C43FBCD4();

  sub_1C43FBDA0();

  return v0();
}

uint64_t sub_1C44748C4()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v2 = *v1;
  sub_1C43FBDAC();
  *v3 = v2;
  *(v4 + 64) = v0;

  if (v0)
  {
    v5 = sub_1C4CE97E8;
  }

  else
  {

    v5 = sub_1C447486C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1C44749D4()
{
  sub_1C43FCF70();
  v1 = *(v0 + 16);
  v2 = *(v0 + 64);

  sub_1C4463890(v1, v2);
  v3 = *(v0 + 8);
  v4 = *(v0 + 56);

  return v3(v4);
}

uint64_t sub_1C4474A5C(unint64_t *a1, uint64_t a2)
{
  v5 = *a1;

  result = sub_1C4474C78(v5, a2);
  v8 = result;
  if (v2)
  {
    goto LABEL_36;
  }

  if (v7)
  {
    v8 = sub_1C4428DA0(v5);
LABEL_36:

    return v8;
  }

  v9 = result + 1;
  if (!__OFADD__(result, 1))
  {
    while (1)
    {
      if (v5 >> 62)
      {
        result = sub_1C4F02128();
      }

      else
      {
        result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v9 == result)
      {
        goto LABEL_36;
      }

      if ((v5 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x1C6940F90](v9, v5);
        result = swift_unknownObjectRelease();
        if (v16 != a2)
        {
          if (v8 != v9)
          {
            v12 = MEMORY[0x1C6940F90](v8, v5);
            v11 = MEMORY[0x1C6940F90](v9, v5);
            goto LABEL_16;
          }

LABEL_26:
          v15 = __OFADD__(v8++, 1);
          if (v15)
          {
            goto LABEL_40;
          }
        }
      }

      else
      {
        if ((v9 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
          break;
        }

        v10 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v9 >= v10)
        {
          goto LABEL_38;
        }

        v11 = *(v5 + 32 + 8 * v9);
        if (v11 != a2)
        {
          if (v8 != v9)
          {
            if ((v8 & 0x8000000000000000) != 0)
            {
              goto LABEL_41;
            }

            if (v8 >= v10)
            {
              goto LABEL_42;
            }

            v12 = *(v5 + 32 + 8 * v8);

LABEL_16:
            if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v5 & 0x8000000000000000) != 0 || (v5 & 0x4000000000000000) != 0)
            {
              v5 = sub_1C4836300();
              v13 = (v5 >> 62) & 1;
            }

            else
            {
              LODWORD(v13) = 0;
            }

            v14 = v5 & 0xFFFFFFFFFFFFFF8;
            *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = v11;

            if ((v5 & 0x8000000000000000) != 0 || v13)
            {
              result = sub_1C4836300();
              v5 = result;
              v14 = result & 0xFFFFFFFFFFFFFF8;
              if ((v9 & 0x8000000000000000) != 0)
              {
LABEL_35:
                __break(1u);
                goto LABEL_36;
              }
            }

            else if ((v9 & 0x8000000000000000) != 0)
            {
              goto LABEL_35;
            }

            if (v9 >= *(v14 + 16))
            {
              goto LABEL_43;
            }

            *(v14 + 8 * v9 + 32) = v12;

            *a1 = v5;
          }

          goto LABEL_26;
        }
      }

      v15 = __OFADD__(v9++, 1);
      if (v15)
      {
        goto LABEL_39;
      }
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1C4474C78(uint64_t a1, uint64_t a2)
{
  result = sub_1C4428DA0(a1);
  v5 = result;
  v6 = 0;
  while (1)
  {
    if (v5 == v6)
    {
      v9 = 0;
      goto LABEL_12;
    }

    if ((a1 & 0xC000000000000001) == 0)
    {
      break;
    }

    v8 = MEMORY[0x1C6940F90](v6, a1);
    result = swift_unknownObjectRelease();
    if (v8 == a2)
    {
LABEL_10:
      v9 = v6;
LABEL_12:

      return v9;
    }

LABEL_6:
    if (__OFADD__(v6++, 1))
    {
      goto LABEL_14;
    }
  }

  if (v6 < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    if (*(a1 + 8 * v6 + 32) == a2)
    {
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_1C4474D50()
{
  sub_1C44755A0();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4474DA8()
{
  sub_1C4474580();

  return MEMORY[0x1EEE6DEF0](v0);
}

char *sub_1C4474DD4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return sub_1C441904C(a3, result);
  }

  return result;
}

void sub_1C4474DF8(void *result, char a2)
{
  if (a2 != -1)
  {
    sub_1C44755E4(result, a2 & 1);
  }
}

uint64_t sub_1C4474E10()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1C4474E48(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C4474EA0()
{
  sub_1C43FCF70();
  sub_1C441246C();
  v4 = v3;
  sub_1C44001F0();
  *v5 = v4;
  v6 = *v2;
  sub_1C43FBDAC();
  *v7 = v6;
  *(v4 + 48) = v0;

  if (!v0)
  {
    *(v4 + 56) = v1;
  }

  sub_1C440C470();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C4474FA4()
{
  sub_1C43FCF70();
  sub_1C43FBDE4();
  v3 = v2;
  sub_1C44001F0();
  *v4 = v3;
  v5 = *v1;
  sub_1C43FBDAC();
  *v6 = v5;
  *(v3 + 88) = v0;

  if (v0)
  {
    v7 = sub_1C44150AC();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    sub_1C440962C((v3 + 16));
    v10 = sub_1C44355E0();

    return v11(v10);
  }
}

uint64_t sub_1C44750D0()
{
  sub_1C43FBCD4();
  v1 = v0[9];
  v2 = v0[5];
  sub_1C44128FC();
  sub_1C4474E48(v1, v3);

  v4 = v0[1];

  return v4(v2);
}

uint64_t sub_1C4475148()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = v2;
  sub_1C44001F0();
  *v4 = v3;
  v5 = *v1;
  sub_1C43FBDAC();
  *v6 = v5;
  *(v3 + 112) = v0;

  if (v0)
  {
    v7 = *(v3 + 56);
    v8 = sub_1C4CDBAA0;
  }

  else
  {
    v9 = *(v3 + 56);

    v8 = sub_1C44750D0;
    v7 = v9;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1C4475260()
{

  return sub_1C456902C(v0, v1);
}

uint64_t sub_1C4475294@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 192) = a1;
  *(v1 - 184) = 0xE100000000000000;
  return v1 - 192;
}

uint64_t sub_1C44752AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13)
{
  sub_1C441DFEC(a13, a11);
}

uint64_t sub_1C44752DC()
{
  v2 = *(v0 + 224);

  return sub_1C445A19C(v2);
}

uint64_t sub_1C44752FC@<X0>(char a1@<W8>)
{
  *(v1 - 112) = a1;

  return sub_1C4F02618();
}

uint64_t sub_1C4475320(uint64_t a1)
{

  return sub_1C4F02618();
}

uint64_t sub_1C4475344@<X0>(uint64_t a1@<X8>)
{

  return sub_1C4430900(v1, v2 + a1);
}

uint64_t sub_1C447535C()
{
}

uint64_t sub_1C44753A0(uint64_t result)
{
  *(v1 - 424) = result;
  *(v1 - 128) = result;
  return result;
}

uint64_t sub_1C44753B0()
{
}

uint64_t sub_1C44753CC()
{

  return swift_arrayDestroy();
}

uint64_t sub_1C44753F0()
{

  return sub_1C4EFEEF8();
}

void sub_1C4475420(void *a1@<X8>)
{
  *a1 = v1;
  a1[1] = v4;
  *(v2 + *(v3 + 44)) = v5;
}

__n128 sub_1C447544C()
{
  v2 = *(v0 + 32);
  *(v1 - 144) = *(v0 + 16);
  *(v1 - 128) = v2;
  result = *(v0 + 41);
  *(v1 - 119) = result;
  return result;
}

unint64_t sub_1C447546C()
{
  *(v2 - 88) = *(v0 + *(v1 + 24));
  *(v2 - 65) = 2;

  return sub_1C479852C();
}

uint64_t sub_1C44754B4()
{
  v2 = *(v0 - 312);
  v3 = *(v0 - 320);

  return sub_1C44239FC(v2, v3);
}

uint64_t sub_1C4475524()
{
  v1 = *(v0 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1C44755A0()
{
  sub_1C440962C((v0 + 16));
  sub_1C44128FC();
  sub_1C4474E48(v0 + v1, v2);

  return v0;
}

void sub_1C44755E4(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t *sub_1C4475624(uint64_t a1, uint64_t a2)
{
  *(v6 - 184) = v2;
  *(v6 - 176) = v5;
  *(v6 - 208) = a1;
  *(v6 - 200) = a2;
  *(v6 - 104) = v4;
  *(v6 - 96) = v3;

  return sub_1C4422F90((v6 - 128));
}

uint64_t sub_1C447581C()
{

  return sub_1C4EFD548();
}

double sub_1C4475850()
{
  result = 0.0;
  *(v0 - 160) = 0u;
  *(v0 - 144) = 0u;
  return result;
}

uint64_t sub_1C4475874(uint64_t a1, uint64_t a2)
{

  return sub_1C4EF9F28();
}

uint64_t sub_1C44758B8()
{

  return sub_1C4EFF888();
}

uint64_t sub_1C44758E8(uint64_t a1, _BYTE *a2, uint64_t a3, char a4)
{
  *(v5 + 104) = a3;
  *(v5 + 112) = v4;
  *(v5 + 217) = a4;
  *(v5 + 96) = a1;
  v7 = type metadata accessor for Fuser(0);
  sub_1C43FBD18(v7);
  *(v5 + 120) = sub_1C43FBE7C();
  v8 = type metadata accessor for Linker(0);
  sub_1C43FBD18(v8);
  *(v5 + 128) = sub_1C43FBE7C();
  v9 = type metadata accessor for Source(0);
  *(v5 + 136) = v9;
  sub_1C43FBD18(v9);
  *(v5 + 144) = swift_task_alloc();
  *(v5 + 152) = swift_task_alloc();
  v10 = sub_1C456902C(&unk_1EC0B7610, &unk_1C4F17610);
  sub_1C43FBD18(v10);
  *(v5 + 160) = sub_1C43FBE7C();
  v11 = sub_1C456902C(&qword_1EC0C2A90, &unk_1C4F16D30);
  sub_1C43FBD18(v11);
  *(v5 + 168) = sub_1C43FBE7C();
  v12 = type metadata accessor for PhaseStores(0);
  sub_1C43FBD18(v12);
  *(v5 + 176) = swift_task_alloc();
  *(v5 + 184) = swift_task_alloc();
  *(v5 + 192) = swift_task_alloc();
  *(v5 + 218) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1C44725E0, 0, 0);
}

uint64_t sub_1C4475A90(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C4475AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1C4F010B8();
}

uint64_t sub_1C4475B10()
{

  return sub_1C4F02458();
}

uint64_t sub_1C4475B74@<X0>(uint64_t a1@<X8>, void (*a2)(void)@<X2>)
{

  return sub_1C448D468(v4 + a1, v3 + v2, a2);
}

void sub_1C4475BB0()
{

  JUMPOUT(0x1C6940010);
}

uint64_t sub_1C4475BC8()
{

  return sub_1C4EFF878();
}

uint64_t sub_1C4475BE4(uint64_t a1)
{

  return sub_1C4F02858();
}

uint64_t sub_1C4475C04()
{
  sub_1C4409678((v0 + 16), *(v0 + 40));
  v1 = *(v0 + 40);
  sub_1C4409678((v0 + 16), v1);
  return v1;
}

uint64_t sub_1C4475C50()
{

  return swift_dynamicCast();
}

uint64_t sub_1C4475C70()
{

  return sub_1C4F022D8();
}

uint64_t sub_1C4475CA4()
{

  return swift_slowAlloc();
}

uint64_t sub_1C4475CC0()
{
  *(v1 - 152) = 4;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C4475CE8@<X0>(uint64_t a1@<X8>, void (*a2)(void)@<X2>)
{

  return sub_1C448D3B8(v4 + a1, v3 + v2, a2);
}

unint64_t sub_1C4475D00(float a1)
{
  *v3 = a1;

  return sub_1C441D828(v1, v2, (v4 - 104));
}

uint64_t sub_1C4475D8C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1C4F02BC8();
}

uint64_t sub_1C4475DD4(uint64_t a1)
{

  return sub_1C4EFB2F8();
}

void sub_1C4475DF8()
{
  v2 = (*(v0 + 64) + 24);

  os_unfair_lock_lock(v2);
}

uint64_t sub_1C4475E10()
{

  return sub_1C4EFBFF8();
}

uint64_t sub_1C4475E40@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  result = *(v2 - 184);
  *v3 = *(v2 - 192);
  v3[1] = result;
  return result;
}

void sub_1C4475E84()
{
  *(v6 - 200) = v5;
  *(v6 - 192) = v1;
  *(v6 - 112) = v0;
  *(v6 - 216) = v2;
  *(v6 - 208) = v3;
  *(v6 - 224) = v4;
  *(v6 - 65) = 0;
}

uint64_t type metadata accessor for LocationMatcher(uint64_t a1)
{
  result = qword_1EDDF6710;
  if (!qword_1EDDF6710)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1C4475EF8(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  v2 = [v1 initWithTypes:a1 error:v6];
  if (v2)
  {
    v3 = v6[0];
  }

  else
  {
    v4 = v6[0];
    sub_1C4EF97A8();

    swift_willThrow();
  }

  return v2;
}

unint64_t sub_1C4475FAC()
{
  result = qword_1EDDED208[0];
  if (!qword_1EDDED208[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDED208);
  }

  return result;
}

uint64_t sub_1C4476000()
{
  sub_1C4418CA4();
  if (*(v3 + 8))
  {
    sub_1C446C11C(v3);
    sub_1C445EA78();
    sub_1C4591F4C();

    return sub_1C446C11C(v13);
  }

  else
  {
    sub_1C447D27C(v3, v13);
    swift_isUniquelyReferenced_nonNull_native();
    sub_1C442EDD4();
    sub_1C447E144(v13, v2, v1, v5, v6, v7, v8, v9, v10, v11);

    *v0 = v12;
  }

  return result;
}

uint64_t sub_1C44760B0(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C43FBE94();
  v4(v3);
  sub_1C43FBCE0();
  v5 = sub_1C43FBC98();
  v6(v5);
  return a2;
}

uint64_t sub_1C4476108()
{
  sub_1C43FBCD4();
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  sub_1C43FC688(v1);
  v3 = sub_1C43FBC98();

  return sub_1C4471624(v3, v4);
}

uint64_t type metadata accessor for RelationshipFullSourceIngestor(uint64_t a1)
{
  result = qword_1EDDDEE50;
  if (!qword_1EDDDEE50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for Resolver(uint64_t a1)
{
  result = qword_1EDDF0A48;
  if (!qword_1EDDF0A48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C4476228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1C43FBDC8();
  sub_1C4404B08();
  v14 = *(v12 + 2573);
  v15 = *(v12 + 1584);
  v16 = *(v12 + 536);
  v17 = *(v12 + 528);
  sub_1C440F91C();
  sub_1C4471988(v18, v17);
  v19 = type metadata accessor for Linker(0);
  *(v12 + 1592) = v19;
  sub_1C4424D24();
  sub_1C4471988(v16, v17 + v20);
  *(v17 + *(v19 + 28)) = v14;
  sub_1C4471988(v16, v15);
  if (qword_1EDDFED28 != -1)
  {
    swift_once();
  }

  v21 = *(v12 + 1584);
  v22 = sub_1C442B738(*(v12 + 1304), &unk_1EDDFD088);
  v23 = v22[1];
  v24 = *v21;
  v25 = v21[1];
  v26 = *v22 == v24 && v23 == v25;
  if (v26 || (sub_1C44306B4(*v22, v23) & 1) != 0)
  {
    sub_1C441E0B0();
    v27 = *(v12 + 1576);
    v1380 = *(v12 + 1568);
    v28 = *(v12 + 1296);
    v1448 = *(v12 + 1024);
    v29 = *(v12 + 1016);
    v30 = *(v12 + 968);
    v1391 = *(v12 + 960);
    v31 = *(v12 + 544);
    v1323 = v31;
    v1330 = *(v12 + 1288);
    v32 = *(v12 + 536);
    sub_1C440741C();
    v1409 = v32;
    v1421 = v33;
    sub_1C447E970(v34, v35);
    sub_1C456902C(&qword_1EC0B8CE8, &unk_1C4F0E120);
    v36 = swift_allocObject();
    *(v12 + 1600) = v36;
    sub_1C4432614(v36, xmmword_1C4F17CF0);
    sub_1C4471988(v31, v28);
    _s24IntelligencePlatformCore15LocationMatcherV11entityClass0aB006EntityG0Vvg_0();
    v1389 = v12;
    sub_1C4471988(v32, v27);
    v37 = type metadata accessor for Blocker(0);
    v36[3].n128_u64[1] = v37;
    sub_1C4403494();
    v1372 = sub_1C4471C58(v38, v39, &protocol conformance descriptor for Blocker);
    v36[4].n128_u64[0] = v1372;
    v40 = sub_1C4422F90(&v36[2]);
    sub_1C440AEDC();
    v41 = sub_1C4424948();
    sub_1C4471988(v41, v42);
    v1359 = *(v30 + 16);
    v1359(v40 + v37[5], v29, v1391);
    sub_1C4471988(v27, v40 + v37[6]);
    *(v40 + v37[7]) = 0;
    sub_1C4471988(v28, v40 + v37[8]);
    sub_1C448177C();
    *(v40 + v37[9]) = v43;
    v44 = sub_1C44829A4(v27, v28);
    sub_1C447E970(v27, v1421);
    v1350 = *(v30 + 8);
    v1350(v29, v1391);
    *(v40 + v37[10]) = v44;
    *(v40 + v37[11]) = v1432;
    v45 = *(v28 + *(v1448 + 28));

    sub_1C447E970(v28, type metadata accessor for PhaseStores);
    *(v40 + v37[12]) = v45;
    v1309 = v37;
    *(v40 + v37[13]) = 0;
    sub_1C4471988(v1323, v28);
    sub_1C4471988(v1409, v27);
    _s24IntelligencePlatformCore15LocationMatcherV11entityClass0aB006EntityG0Vvg_0();
    v46 = type metadata accessor for PairGenerator(0);
    v36[6].n128_u64[0] = v46;
    sub_1C43FDB14();
    v1343 = sub_1C4471C58(v47, v48, &protocol conformance descriptor for PairGenerator);
    v36[6].n128_u64[1] = v1343;
    v49 = sub_1C4422F90(&v36[4].n128_i64[1]);
    sub_1C4450770(v49, v46[8]);
    v50 = sub_1C43FCE84();
    sub_1C4471988(v50, v51);
    sub_1C4472068(v27, v49 + v46[5]);
    (*(v30 + 32))(v49 + v46[6], v29, v1391);
    *(v49 + v46[7]) = v1432;
    sub_1C4475394();
    v53 = *(v28 + v52);

    sub_1C447E970(v28, type metadata accessor for PhaseStores);
    *(v49 + v46[9]) = v53;
    sub_1C4471988(v1323, v1330);
    sub_1C4471988(v1409, v1380);
    LOBYTE(v1452[0]) = v1432;
    v36[8].n128_u64[1] = type metadata accessor for LocationMatcher(0);
    sub_1C441CC08();
    v36[9].n128_u64[0] = sub_1C4471C58(v54, v55, &protocol conformance descriptor for LocationMatcher);
    v56 = sub_1C4422F90(&v36[7]);
    LocationMatcher.init(stores:source:pipelineType:)(v1330, v1380, v1452, v56);
    LOBYTE(v1380) = *(v12 + 2573);
    v81 = *(v12 + 1576);
    v1305 = *(v12 + 1560);
    v82 = *(v12 + 1296);
    v1302 = *(v12 + 1280);
    v1400 = *(v12 + 536);
    v1410 = *(v12 + 544);
    sub_1C44807E8();
    sub_1C4471988(v83, v82);
    _s24IntelligencePlatformCore19OrganizationMatcherV11entityClass0aB006EntityG0Vvg_0();
    sub_1C445E900();
    sub_1C4471988(v1400, v81);
    v36[11].n128_u64[0] = v1309;
    v36[11].n128_u64[1] = v1372;
    v84 = sub_1C4422F90(&v36[9].n128_i64[1]);
    sub_1C440AEDC();
    v85 = sub_1C44158DC();
    sub_1C4471988(v85, v86);
    v87 = sub_1C4459BC0(v1309[5]);
    (v1359)(v87);
    v88 = sub_1C44569C0();
    sub_1C4471988(v88, v89);
    sub_1C44691D4();
    sub_1C4471988(v82, v90);
    sub_1C448177C();
    sub_1C442A620(v91);
    v92 = sub_1C49E1CF0();
    v94 = sub_1C44829A4(v92, v93);
    sub_1C440741C();
    v1422 = v95;
    sub_1C447E970(v81, v96);
    v97 = sub_1C4414A08();
    (v1350)(v97);
    sub_1C49E19E8();
    *(v84 + v98) = v1380;
    sub_1C49E1BB4();
    sub_1C4410FD4();
    v1331 = v99;
    sub_1C447E970(v82, v99);
    sub_1C442578C();
    sub_1C4471988(v1410, v82);
    sub_1C49E1E40(v1400);
    _s24IntelligencePlatformCore19OrganizationMatcherV11entityClass0aB006EntityG0Vvg_0();
    v36[13].n128_u64[1] = v46;
    v36[14].n128_u64[0] = v1343;
    v100 = sub_1C4422F90(&v36[12]);
    sub_1C4441148(v100);
    v101 = sub_1C44158DC();
    sub_1C4471988(v101, v102);
    v103 = sub_1C44569C0();
    sub_1C4472068(v103, v104);
    sub_1C4459BC0(v46[6]);
    sub_1C49E19D8();
    v105();
    *(v84 + v46[7]) = v1380;
    sub_1C4475394();
    sub_1C49E1BB4();
    sub_1C4485FF0();
    *(v84 + v46[9]) = v94;
    v106 = type metadata accessor for OrganizationMatcher(0);
    v36[16].n128_u64[0] = v106;
    sub_1C445C1B8();
    v109 = sub_1C4471C58(v107, v108, &protocol conformance descriptor for OrganizationMatcher);
    v110 = sub_1C49E1DE0(v109);
    v111 = sub_1C43FD258();
    sub_1C4471988(v111, v112);
    sub_1C4471988(v1400, v110 + v106[5]);
    *(v110 + v106[7]) = 1056964608;
    *(v110 + v106[6]) = v1380;
    v113 = sub_1C43FD018();
    sub_1C4471988(v113, v114);
    sub_1C4EFD4A8();
    sub_1C4471988(v1400, v81);
    v36[18].n128_u64[1] = v1309;
    v36[19].n128_u64[0] = v1372;
    v115 = sub_1C4422F90(&v36[17]);
    v116 = sub_1C44158DC();
    sub_1C4471988(v116, v117);
    v118 = sub_1C4459BC0(v1309[5]);
    (v1359)(v118);
    v119 = sub_1C44569C0();
    sub_1C4471988(v119, v120);
    sub_1C44691D4();
    sub_1C4471988(v82, v121);
    sub_1C448177C();
    sub_1C442A620(v122);
    v123 = sub_1C49E1CF0();
    sub_1C44829A4(v123, v124);
    sub_1C447E970(v81, v1422);
    v125 = sub_1C4414A08();
    (v1350)(v125);
    sub_1C49E19E8();
    *(v115 + v126) = v1380;
    sub_1C49E1BB4();
    sub_1C447E970(v82, v1331);
    sub_1C442578C();
    sub_1C4471988(v1410, v82);
    sub_1C49E1E40(v1400);
    sub_1C4EFD4A8();
    v36[21].n128_u64[0] = v46;
    v36[21].n128_u64[1] = v1343;
    v127 = sub_1C4422F90(&v36[19].n128_i64[1]);
    sub_1C4441148(v127);
    v128 = sub_1C44158DC();
    sub_1C4471988(v128, v129);
    v130 = sub_1C44EB8C0();
    sub_1C4472068(v130, v131);
    sub_1C49E19D8();
    v132();
    *(v115 + v46[7]) = v1380;
    sub_1C4475394();
    sub_1C49E1BB4();
    sub_1C447E970(v82, v1331);
    *(v115 + v46[9]) = v81;
    sub_1C4471988(v1410, v82);
    sub_1C4471988(v1400, v81);
    v133 = type metadata accessor for TopicMatcher(0);
    v36[23].n128_u64[1] = v133;
    v36[24].n128_u64[0] = sub_1C4471C58(&qword_1EDDF89E0, type metadata accessor for TopicMatcher, &protocol conformance descriptor for TopicMatcher);
    v134 = sub_1C4422F90(&v36[22]);
    v135 = sub_1C449AEEC(v134);
    *(v135 + v136) = 2;
    sub_1C4EFD4A8();
    sub_1C4472068(v82, v134);
    sub_1C4472068(v81, v134 + *(v133 + 20));
    *(v134 + *(v133 + 24)) = v1380;
    sub_1C4471988(v1410, v82);
    sub_1C4EFD4C8();
    sub_1C4471988(v1400, v81);
    v36[26].n128_u64[0] = v1309;
    v36[26].n128_u64[1] = v1372;
    v137 = sub_1C4422F90(&v36[24].n128_i64[1]);
    v138 = sub_1C44158DC();
    sub_1C4471988(v138, v139);
    v140 = sub_1C44A14C0(v1309[5]);
    (v1359)(v140);
    v141 = sub_1C444AD48();
    sub_1C4471988(v141, v142);
    sub_1C44691D4();
    sub_1C4471988(v82, v143);
    sub_1C448177C();
    sub_1C442A620(v144);
    v145 = sub_1C43FD018();
    sub_1C44829A4(v145, v146);
    sub_1C447E970(v81, v1422);
    v147 = sub_1C4410428();
    (v1350)(v147);
    sub_1C49E19E8();
    *(v137 + v148) = v1380;
    sub_1C49E1BB4();
    sub_1C447E970(v82, v1331);
    sub_1C442578C();
    sub_1C4471988(v1410, v82);
    v149 = sub_1C43FCE84();
    sub_1C4471988(v149, v150);
    sub_1C4EFD4C8();
    v36[28].n128_u64[1] = v46;
    v36[29].n128_u64[0] = v1343;
    sub_1C4422F90(&v36[27]);
    sub_1C49E1BE4();
    sub_1C4450770(v151, v152);
    v153 = sub_1C44158DC();
    sub_1C4471988(v153, v154);
    v155 = sub_1C444AD48();
    sub_1C4472068(v155, v156);
    sub_1C49E19D8();
    v157();
    *(v137 + v46[7]) = v1380;
    sub_1C4475394();
    v159 = *(v82 + v158);

    sub_1C447E970(v82, v1331);
    *(v137 + v46[9]) = v159;
    sub_1C4471988(v1410, v1302);
    sub_1C4471988(v1400, v1305);
    *(v1389 + 2572) = v1380;
    v36[31].n128_u64[0] = type metadata accessor for PeopleMatcher(0);
    sub_1C43FF3E0();
    v36[31].n128_u64[1] = sub_1C4471C58(v160, v161, &protocol conformance descriptor for PeopleMatcher);
    sub_1C4422F90(&v36[29].n128_i64[1]);
    v162 = swift_task_alloc();
    *(v1389 + 1608) = v162;
    *v162 = v1389;
    v162[1] = sub_1C4487288;
LABEL_25:
    sub_1C43FEA3C();

    PeopleMatcher.init(stores:source:pipelineType:)();
    return;
  }

  if (qword_1EDDFD0D0 != -1)
  {
    swift_once();
  }

  v163 = sub_1C44008C8(*(v12 + 1304), qword_1EDDFD0D8);
  v165 = v26 && v164 == v25;
  if (v165 || (sub_1C44306B4(v163, v164) & 1) != 0)
  {
    sub_1C49E1CB0();
    v166 = *(v12 + 1296);
    v1392 = *(v12 + 1264);
    v1401 = *(v12 + 1544);
    v167 = *(v12 + 968);
    v1411 = *(v12 + 1024);
    v1423 = v167;
    v168 = *(v12 + 544);
    v169 = *(v12 + 536);
    sub_1C440741C();
    sub_1C447E970(v170, v171);
    v172 = sub_1C456902C(&qword_1EC0B8CE8, &unk_1C4F0E120);
    v173 = sub_1C49E1AD8(v172);
    *(v12 + 1624) = v173;
    sub_1C4432614(v173, xmmword_1C4F0F830);
    v175 = v174;
    sub_1C4471988(v168, v166);
    sub_1C4EFD4C8();
    sub_1C441346C();
    v176 = v169;
    v178 = v177;
    sub_1C4471988(v176, v14);
    v179 = type metadata accessor for Blocker(0);
    *(v12 + 1632) = v179;
    v173[3].n128_u64[1] = v179;
    sub_1C4403494();
    v182 = sub_1C4471C58(v180, v181, &protocol conformance descriptor for Blocker);
    *(v12 + 1640) = v182;
    v173[4].n128_u64[0] = v182;
    v183 = sub_1C4422F90(&v173[2]);
    sub_1C440AEDC();
    v184 = sub_1C43FD018();
    sub_1C4471988(v184, v185);
    v186 = v179[5];
    v187 = *(v167 + 16);
    v167 += 16;
    *(v12 + 1648) = v187;
    *(v12 + 1656) = v167 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v188 = sub_1C442F958(v186);
    v189(v188);
    sub_1C448875C();
    v190 = sub_1C442EC40();
    sub_1C4471988(v190, v191);
    sub_1C448177C();
    sub_1C49E1C10(v192);
    v193 = sub_1C4409D98();
    sub_1C44829A4(v193, v194);
    sub_1C49E1D08();
    *(v12 + 1664) = *(v1423 + 8);
    sub_1C44F0924();
    *(v12 + 1672) = v195;
    v196 = sub_1C441E0A4();
    v197(v196);
    *(v183 + v179[10]) = v175;
    sub_1C441680C(v179[11]);
    sub_1C441FE54();
    v1356 = v198;
    sub_1C447E970(v166, v199);
    sub_1C4457910();
    sub_1C49E1B54();
    sub_1C4EFD4C8();
    v200 = type metadata accessor for PairGenerator(0);
    *(v178 + 1680) = v200;
    sub_1C44289F0(v200);
    sub_1C43FDB14();
    v203 = sub_1C4471C58(v201, v202, &protocol conformance descriptor for PairGenerator);
    *(v178 + 1688) = v203;
    v204 = sub_1C49E1A18(v203);
    v205 = sub_1C441EDE4(v204);
    sub_1C4471988(v205, v206);
    v207 = sub_1C4488240();
    sub_1C4472068(v207, v208);
    *(v178 + 1696) = *(v1423 + 32);
    sub_1C49E19A4();
    *(v178 + 1704) = v209;
    v211 = sub_1C44BBCAC(v210);
    v212(v211);
    *(v1411 + *(v200 + 28)) = v1447;
    sub_1C445136C();
    sub_1C447E970(v166, v1356);
    v213 = sub_1C4414658();
    sub_1C4471988(v213, v1392);
    sub_1C4471988(v175, v1401);
    *(v178 + 2571) = v1447;
    *(v167 + 136) = type metadata accessor for PeopleMatcher(0);
    sub_1C43FF3E0();
    v216 = sub_1C4471C58(v214, v215, &protocol conformance descriptor for PeopleMatcher);
    sub_1C4488B14(v216);
    swift_task_alloc();
    sub_1C449F444();
    *(v178 + 1712) = v217;
    *v217 = v218;
    v217[1] = sub_1C49D4D44;
    goto LABEL_25;
  }

  if (qword_1EDDFD268 != -1)
  {
    swift_once();
  }

  v220 = sub_1C44008C8(*(v12 + 1304), &qword_1EDDFD270);
  v222 = v26 && v221 == v25;
  if (v222 || (sub_1C44306B4(v220, v221) & 1) != 0)
  {
    v1316 = v19;
    sub_1C441E0B0();
    v223 = *(v12 + 1576);
    v224 = *(v12 + 1296);
    v1390 = v12;
    v1393 = *(v12 + 1024);
    v225 = *(v12 + 1016);
    v226 = *(v12 + 968);
    v227 = *(v12 + 960);
    v1337 = *(v12 + 1528);
    v1344 = *(v12 + 936);
    v1324 = *(v12 + 1248);
    v1332 = *(v12 + 808);
    v1351 = *(v12 + 656);
    v228 = *(v12 + 544);
    v1449 = *(v12 + 536);
    sub_1C440741C();
    v1412 = v229;
    sub_1C447E970(v230, v231);
    v232 = sub_1C456902C(&qword_1EC0B8CE8, &unk_1C4F0E120);
    v233 = sub_1C49E1AD8(v232);
    sub_1C4432614(v233, xmmword_1C4F0F830);
    v235 = v234;
    sub_1C4471988(v228, v224);
    sub_1C4EFD3E8();
    sub_1C4471988(v1449, v223);
    v236 = type metadata accessor for Blocker(0);
    v233[3].n128_u64[1] = v236;
    sub_1C4403494();
    v1311 = sub_1C4471C58(v237, v238, &protocol conformance descriptor for Blocker);
    v1381 = v233;
    v233[4].n128_u64[0] = v1311;
    v239 = sub_1C4422F90(&v233[2]);
    sub_1C440AEDC();
    v240 = sub_1C4401D48();
    sub_1C4471988(v240, v241);
    v1439 = v226;
    v1307 = *(v226 + 16);
    v242 = sub_1C4459BC0(v236[5]);
    v243(v242);
    sub_1C445BC08();
    sub_1C4471988(v223, v244);
    sub_1C4422414();
    v245 = v235;
    sub_1C4471988(v224, v246);
    sub_1C448177C();
    sub_1C49E1A84(v247);
    v248 = sub_1C445852C();
    v250 = sub_1C44829A4(v248, v249);
    sub_1C447E970(v223, v1412);
    v1301 = *(v226 + 8);
    v251 = sub_1C4410428();
    v252(v251);
    *(v239 + v236[10]) = v250;
    *(v239 + v236[11]) = v1432;
    v253 = *(v224 + *(v1393 + 28));

    sub_1C441FE54();
    v1360 = v254;
    sub_1C447E970(v224, v255);
    *(v239 + v236[12]) = v253;
    sub_1C4495410();
    sub_1C4471988(v228, v224);
    sub_1C4471988(v1449, v223);
    sub_1C4EFD3E8();
    v256 = type metadata accessor for PairGenerator(0);
    v1381[12] = v256;
    sub_1C43FDB14();
    v1299 = sub_1C4471C58(v257, v258, &protocol conformance descriptor for PairGenerator);
    v1381[13] = v1299;
    v259 = sub_1C4422F90(v1381 + 9);
    v260 = sub_1C440CCE8(v259, v256[8]);
    sub_1C4471988(v260, v261);
    sub_1C4472068(v223, v259 + v256[5]);
    v1373 = *(v1439 + 32);
    v262 = sub_1C4459BC0(v256[6]);
    v263(v262);
    *(v259 + v256[7]) = v1432;
    sub_1C49E1E58();
    sub_1C447E970(v224, v1360);
    *(v259 + v256[9]) = v1432;
    sub_1C4471988(v228, v224);
    sub_1C4EFD3E8();
    v264 = type metadata accessor for IdentifierBasedMatcher(0);
    v1381[17] = v264;
    sub_1C44C1290();
    v1381[18] = sub_1C4471C58(v265, v266, &protocol conformance descriptor for IdentifierBasedMatcher);
    v267 = sub_1C4422F90(v1381 + 14);
    sub_1C4471988(v1449, v267 + v264[5]);
    *(v267 + v264[7]) = 1056964608;
    sub_1C4472068(v224, v267);
    v1373(v267 + v264[8], v225, v227);
    *(v267 + v264[6]) = v1432;
    sub_1C4471988(v228, v224);
    _s24IntelligencePlatformCore12EventMatcherV11entityClass0aB006EntityG0Vvg_0();
    sub_1C4471988(v1449, v223);
    v1381[22] = v236;
    v1381[23] = v1311;
    v268 = sub_1C4422F90(v1381 + 19);
    v269 = sub_1C4401D48();
    sub_1C4471988(v269, v270);
    v271 = sub_1C4459BC0(v236[5]);
    v1307(v271);
    sub_1C445BC08();
    sub_1C4471988(v223, v272);
    sub_1C4422414();
    sub_1C4471988(v224, v273);
    sub_1C448177C();
    sub_1C49E1A84(v274);
    v275 = sub_1C44829A4(v223, v224);
    sub_1C447E970(v223, v1412);
    v1301(v225, v227);
    *(v268 + v236[10]) = v275;
    *(v268 + v236[11]) = v1432;
    sub_1C49E1E58();
    sub_1C447E970(v224, v1360);
    *(v268 + v236[12]) = v275;
    v276 = v236[13];
    v68 = v1381;
    *(v268 + v276) = 0;
    sub_1C4471988(v228, v224);
    sub_1C4471988(v1449, v223);
    _s24IntelligencePlatformCore12EventMatcherV11entityClass0aB006EntityG0Vvg_0();
    v1381[27] = v256;
    v1381[28] = v1299;
    v277 = sub_1C4422F90(v1381 + 24);
    v278 = sub_1C440CCE8(v277, v256[8]);
    sub_1C4471988(v278, v279);
    sub_1C4472068(v223, v277 + v256[5]);
    v280 = sub_1C4459BC0(v256[6]);
    (v1373)(v280);
    *(v277 + v256[7]) = v1432;
    v281 = *(v224 + *(v1393 + 28));

    sub_1C447E970(v224, v1360);
    *(v277 + v256[9]) = v281;
    v282 = type metadata accessor for EventMatcher(0);
    v1381[32] = v282;
    sub_1C445876C();
    v1381[33] = sub_1C4471C58(v283, v284, &protocol conformance descriptor for EventMatcher);
    sub_1C4422F90(v1381 + 29);
    sub_1C44754D4();
    sub_1C4471988(v228, v285);
    v286 = sub_1C44158DC();
    sub_1C4471988(v286, v287);
    *(v277 + *(v282 + 20)) = v1432;
    sub_1C4471988(v228, v1324);
    sub_1C4471988(v1449, v1337);
    v1381[37] = v1332;
    sub_1C44174EC();
    v1381[38] = sub_1C4471C58(v288, v289, &protocol conformance descriptor for Resolver);
    sub_1C4422F90(v1381 + 34);
    *(v1344 + v1332[6]) = 4;
    sub_1C4471988(v1324, v1344);
    sub_1C4471988(v1337, v1344 + v1332[5]);
    *(v1344 + v1332[7]) = v1432;
    v290 = sub_1C4EF9E48();
    sub_1C44102A4(v1351, v291, v292, v290);
    sub_1C448895C();
    if (v245)
    {

      v293 = 1;
    }

    else
    {
      v293 = 0;
    }

    v19 = v1316;
    v294 = *(v1390 + 1248);
    sub_1C49E19C8();
    v67 = *(v1390 + 528);
    sub_1C440741C();
    sub_1C447E970(v295, v296);
    sub_1C441FE54();
    sub_1C447E970(v294, v297);
    sub_1C4EFF1C8();
    v298 = sub_1C49E18D8();
    sub_1C440BAA8(v298, v293, 1, v299);
    v300 = sub_1C448E070();
    sub_1C4482F3C(v300, v301);
    sub_1C440E538();
    v302 = sub_1C44333A0();
    sub_1C4472068(v302, v303);
    goto LABEL_14;
  }

  if (qword_1EDDFD068 != -1)
  {
    swift_once();
  }

  v304 = sub_1C44008C8(*(v12 + 1304), qword_1EDDFD070);
  v306 = v26 && v305 == v25;
  if (v306 || (sub_1C44306B4(v304, v305) & 1) != 0)
  {
    sub_1C49E1CB0();
    v307 = *(v12 + 1296);
    v1394 = *(v12 + 1240);
    v1402 = *(v12 + 1520);
    v308 = *(v12 + 968);
    v1413 = *(v12 + 1024);
    v1424 = v308;
    v309 = *(v12 + 544);
    v310 = *(v12 + 536);
    sub_1C440741C();
    sub_1C447E970(v311, v312);
    sub_1C456902C(&qword_1EC0B8CE8, &unk_1C4F0E120);
    v313 = swift_allocObject();
    *(v12 + 1728) = v313;
    sub_1C4432614(v313, xmmword_1C4F140B0);
    v315 = v314;
    sub_1C4471988(v309, v307);
    sub_1C4EFD4C8();
    sub_1C441346C();
    v316 = v310;
    v318 = v317;
    sub_1C4471988(v316, v14);
    v319 = type metadata accessor for Blocker(0);
    *(v12 + 1736) = v319;
    v313[3].n128_u64[1] = v319;
    sub_1C4403494();
    v322 = sub_1C4471C58(v320, v321, &protocol conformance descriptor for Blocker);
    *(v12 + 1744) = v322;
    v313[4].n128_u64[0] = v322;
    v323 = sub_1C4422F90(&v313[2]);
    sub_1C440AEDC();
    v324 = sub_1C43FD018();
    sub_1C4471988(v324, v325);
    v326 = v319[5];
    v327 = *(v308 + 16);
    v308 += 16;
    *(v12 + 1752) = v327;
    *(v12 + 1760) = v308 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v328 = sub_1C442F958(v326);
    v329(v328);
    sub_1C448875C();
    v330 = sub_1C442EC40();
    sub_1C4471988(v330, v331);
    sub_1C448177C();
    sub_1C49E1C10(v332);
    v333 = sub_1C4409D98();
    sub_1C44829A4(v333, v334);
    sub_1C49E1D08();
    *(v12 + 1768) = *(v1424 + 8);
    sub_1C44F0924();
    *(v12 + 1776) = v335;
    v336 = sub_1C441E0A4();
    v337(v336);
    *(v323 + v319[10]) = v315;
    sub_1C441680C(v319[11]);
    sub_1C441FE54();
    v1357 = v338;
    sub_1C447E970(v307, v339);
    sub_1C4457910();
    sub_1C49E1B54();
    sub_1C4EFD4C8();
    v340 = type metadata accessor for PairGenerator(0);
    *(v318 + 1784) = v340;
    sub_1C44289F0(v340);
    sub_1C43FDB14();
    v343 = sub_1C4471C58(v341, v342, &protocol conformance descriptor for PairGenerator);
    *(v318 + 1792) = v343;
    v344 = sub_1C49E1A18(v343);
    v345 = sub_1C441EDE4(v344);
    sub_1C4471988(v345, v346);
    v347 = sub_1C4488240();
    sub_1C4472068(v347, v348);
    *(v318 + 1800) = *(v1424 + 32);
    sub_1C49E19A4();
    *(v318 + 1808) = v349;
    v351 = sub_1C44BBCAC(v350);
    v352(v351);
    *(v1413 + *(v340 + 28)) = v1447;
    sub_1C445136C();
    sub_1C447E970(v307, v1357);
    v353 = sub_1C4414658();
    sub_1C4471988(v353, v1394);
    sub_1C4471988(v315, v1402);
    *(v318 + 2570) = v1447;
    *(v308 + 136) = type metadata accessor for PeopleMatcher(0);
    sub_1C43FF3E0();
    v356 = sub_1C4471C58(v354, v355, &protocol conformance descriptor for PeopleMatcher);
    sub_1C4488B14(v356);
    swift_task_alloc();
    sub_1C449F444();
    *(v318 + 1816) = v357;
    *v357 = v358;
    v357[1] = sub_1C49D5630;
    goto LABEL_25;
  }

  if (qword_1EDDFD110 != -1)
  {
    swift_once();
  }

  v359 = sub_1C44008C8(*(v12 + 1304), qword_1EDDFD118);
  v361 = v26 && v360 == v25;
  if (v361 || (sub_1C44306B4(v359, v360) & 1) != 0)
  {
    sub_1C441E0B0();
    v362 = *(v12 + 1576);
    v363 = *(v12 + 1296);
    v1366 = *(v12 + 1216);
    v1374 = *(v12 + 1496);
    sub_1C447CFFC();
    v1382 = v364;
    v365 = *(v12 + 544);
    v366 = *(v12 + 536);
    v1403 = v366;
    sub_1C440741C();
    v1414 = v367;
    v1425 = v365;
    sub_1C447E970(v368, v369);
    sub_1C456902C(&qword_1EC0B8CE8, &unk_1C4F0E120);
    v370 = swift_allocObject();
    *(v12 + 1832) = v370;
    sub_1C4432614(v370, xmmword_1C4F17CF0);
    v371 = v12;
    sub_1C4471988(v365, v363);
    _s24IntelligencePlatformCore15LocationMatcherV11entityClass0aB006EntityG0Vvg_0();
    sub_1C4418B34();
    sub_1C4471988(v366, v362);
    v372 = type metadata accessor for Blocker(0);
    *(v12 + 1840) = v372;
    v370[3].n128_u64[1] = v372;
    sub_1C4403494();
    v375 = sub_1C4471C58(v373, v374, &protocol conformance descriptor for Blocker);
    *(v12 + 1848) = v375;
    v1338 = v375;
    v370[4].n128_u64[0] = v375;
    sub_1C4422F90(&v370[2]);
    sub_1C440AEDC();
    v376 = sub_1C4404084();
    sub_1C4471988(v376, v377);
    v378 = *(v372 + 20);
    *(v12 + 1856) = *(v14 + 16);
    *(v12 + 1864) = (v14 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v379 = sub_1C4459BC0(v378);
    v1345 = v380;
    v380(v379);
    v381 = sub_1C444C020();
    sub_1C4471988(v381, v382);
    sub_1C44691D4();
    sub_1C4471988(v363, v383);
    sub_1C448177C();
    sub_1C442A620(v384);
    sub_1C44829A4(v362, v363);
    sub_1C447E970(v362, v1414);
    v385 = *(v1447 + 8);
    *(v12 + 1872) = v385;
    *(v12 + 1880) = (v1447 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v1325 = v385;
    v385(v24, v1382);
    sub_1C49E1A48();

    sub_1C441FE54();
    v1361 = v386;
    sub_1C447E970(v363, v387);
    sub_1C49E1C4C();
    sub_1C4471988(v365, v363);
    sub_1C4471988(v1403, v362);
    _s24IntelligencePlatformCore15LocationMatcherV11entityClass0aB006EntityG0Vvg_0();
    v388 = type metadata accessor for PairGenerator(0);
    *(v12 + 1888) = v388;
    v370[6].n128_u64[0] = v388;
    sub_1C43FDB14();
    v391 = sub_1C4471C58(v389, v390, &protocol conformance descriptor for PairGenerator);
    *(v12 + 1896) = v391;
    v1317 = v391;
    v370[6].n128_u64[1] = v391;
    v392 = sub_1C4422F90(&v370[4].n128_i64[1]);
    sub_1C4450770(v392, v388[8]);
    v393 = sub_1C4404084();
    sub_1C4471988(v393, v394);
    v395 = sub_1C444C020();
    v396 = v371;
    sub_1C4472068(v395, v397);
    v398 = v388[6];
    *(v371 + 1904) = *(v1447 + 32);
    *(v371 + 1912) = (v1447 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v399 = sub_1C4459BC0(v398);
    v1415 = v400;
    v400(v399);
    *(v392 + v388[7]) = v1432;
    sub_1C49E1D28();
    sub_1C447E970(v363, v1361);
    *(v392 + v388[9]) = v24;
    sub_1C4471988(v1425, v1366);
    sub_1C4471988(v1403, v1374);
    LOBYTE(v1452[0]) = v1432;
    v370[8].n128_u64[1] = type metadata accessor for LocationMatcher(0);
    sub_1C441CC08();
    v370[9].n128_u64[0] = sub_1C4471C58(v401, v402, &protocol conformance descriptor for LocationMatcher);
    v403 = sub_1C4422F90(&v370[7]);
    sub_1C4466D44(v403);
    if (!v363)
    {
      v1433 = *(v371 + 2573);
      v404 = *(v371 + 1576);
      v405 = *(v371 + 1296);
      v1383 = *(v371 + 1488);
      v406 = *(v371 + 1016);
      v407 = *(v371 + 960);
      v408 = *(v396 + 536);
      v1367 = *(v396 + 544);
      sub_1C440F91C();
      sub_1C4471988(v409, v405);
      sub_1C4EFD4C8();
      sub_1C441346C();
      sub_1C4471988(v408, v404);
      v370[11].n128_u64[0] = v372;
      v370[11].n128_u64[1] = v1338;
      sub_1C4422F90(&v370[9].n128_i64[1]);
      sub_1C440AEDC();
      v410 = sub_1C440C60C();
      sub_1C4471988(v410, v411);
      v412 = sub_1C49E19F8();
      v1345(v412);
      v413 = sub_1C44B9200();
      sub_1C4471988(v413, v414);
      sub_1C4426418();
      sub_1C4471988(v405, v415);
      sub_1C448177C();
      v417 = sub_1C49E1C88(v416);
      v418 = sub_1C44829A4(v417, v405);
      sub_1C440741C();
      sub_1C447E970(v404, v419);
      v1325(v406, v407);
      sub_1C44A837C();

      sub_1C441FE54();
      v1352 = v420;
      sub_1C447E970(v405, v421);
      sub_1C442A738();
      sub_1C4471988(v1367, v405);
      v422 = sub_1C49E1C74();
      sub_1C4471988(v422, v423);
      sub_1C4EFD4C8();
      v370[13].n128_u64[1] = v388;
      v370[14].n128_u64[0] = v1317;
      v424 = sub_1C4422F90(&v370[12]);
      v425 = sub_1C441D310(v424, v388[8]);
      sub_1C44F0C40(v425);
      v426 = sub_1C44AB274();
      sub_1C4472068(v426, v427);
      v428 = sub_1C447CC40(v388[6]);
      v1415(v428);
      *(v424 + v388[7]) = v1433;
      sub_1C49E1988();
      sub_1C447E970(v405, v1352);
      *(v424 + v388[9]) = v406;
      v429 = sub_1C443E3A8();
      sub_1C4471988(v429, v430);
      sub_1C4471988(v418, v1383);
      *(v396 + 2569) = v1433;
      v370[16].n128_u64[0] = type metadata accessor for PeopleMatcher(0);
      sub_1C43FF3E0();
      v433 = sub_1C4471C58(v431, v432, &protocol conformance descriptor for PeopleMatcher);
      sub_1C49E1DE0(v433);
      v434 = swift_task_alloc();
      *(v396 + 1920) = v434;
      *v434 = v396;
      v434[1] = sub_1C49D64A8;
      goto LABEL_25;
    }

    goto LABEL_55;
  }

  if (qword_1EDDFED08 != -1)
  {
    swift_once();
  }

  v435 = sub_1C44008C8(*(v12 + 1304), qword_1EDDFED10);
  v437 = v26 && v436 == v25;
  if (v437 || (sub_1C44306B4(v435, v436) & 1) != 0)
  {
    goto LABEL_71;
  }

  if (qword_1EDDFED40 != -1)
  {
    swift_once();
  }

  v438 = sub_1C44008C8(*(v12 + 1304), qword_1EDDFD2A8);
  v440 = v26 && v439 == v25;
  if (v440 || (sub_1C44306B4(v438, v439) & 1) != 0)
  {
LABEL_71:
    sub_1C441E0B0();
    v441 = *(v12 + 1576);
    v363 = *(v12 + 1296);
    v1384 = *(v12 + 1472);
    sub_1C447CFFC();
    v1395 = v442;
    v443 = *(v12 + 544);
    v1368 = v443;
    v444 = *(v12 + 536);
    sub_1C440741C();
    v1416 = v444;
    v1426 = v445;
    sub_1C447E970(v446, v447);
    *(v12 + 1936) = sub_1C456902C(&qword_1EC0B8CE8, &unk_1C4F0E120);
    v370 = swift_allocObject();
    *(v12 + 1944) = v370;
    sub_1C4432614(v370, xmmword_1C4F17D00);
    v448 = v12;
    sub_1C4471988(v443, v363);
    _s24IntelligencePlatformCore15LocationMatcherV11entityClass0aB006EntityG0Vvg_0();
    sub_1C4418B34();
    sub_1C4471988(v444, v441);
    v449 = type metadata accessor for Blocker(0);
    *(v12 + 1952) = v449;
    v370[3].n128_u64[1] = v449;
    sub_1C4403494();
    v452 = sub_1C4471C58(v450, v451, &protocol conformance descriptor for Blocker);
    *(v12 + 1960) = v452;
    v1339 = v452;
    v370[4].n128_u64[0] = v452;
    sub_1C4422F90(&v370[2]);
    sub_1C440AEDC();
    v453 = sub_1C4404084();
    sub_1C4471988(v453, v454);
    v455 = *(v449 + 20);
    *(v12 + 1968) = *(v14 + 16);
    *(v12 + 1976) = (v14 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v456 = sub_1C4459BC0(v455);
    v1346 = v457;
    v457(v456);
    v458 = sub_1C44EB8C0();
    sub_1C4471988(v458, v459);
    sub_1C44691D4();
    sub_1C4471988(v363, v460);
    sub_1C448177C();
    sub_1C442A620(v461);
    sub_1C44829A4(v441, v363);
    sub_1C447E970(v441, v1426);
    v462 = *(v1447 + 8);
    *(v12 + 1984) = v462;
    *(v12 + 1992) = (v1447 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v1326 = v462;
    v462(v24, v1395);
    sub_1C49E1A48();

    sub_1C441FE54();
    v1362 = v463;
    sub_1C447E970(v363, v464);
    sub_1C49E1C4C();
    v465 = sub_1C4422A18();
    sub_1C4471988(v465, v466);
    sub_1C4471988(v1416, v441);
    _s24IntelligencePlatformCore15LocationMatcherV11entityClass0aB006EntityG0Vvg_0();
    v467 = type metadata accessor for PairGenerator(0);
    *(v12 + 2000) = v467;
    v370[6].n128_u64[0] = v467;
    sub_1C43FDB14();
    v470 = sub_1C4471C58(v468, v469, &protocol conformance descriptor for PairGenerator);
    *(v12 + 2008) = v470;
    v1318 = v470;
    v370[6].n128_u64[1] = v470;
    v471 = sub_1C4422F90(&v370[4].n128_i64[1]);
    sub_1C4450770(v471, v467[8]);
    v472 = sub_1C4404084();
    sub_1C4471988(v472, v473);
    v474 = sub_1C44EB8C0();
    sub_1C4472068(v474, v475);
    v476 = v467[6];
    *(v448 + 2016) = *(v1447 + 32);
    v371 = v448;
    *(v448 + 2024) = (v1447 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v477 = sub_1C4459BC0(v476);
    v1427 = v478;
    v478(v477);
    *(v471 + v467[7]) = v1432;
    sub_1C49E1D28();
    sub_1C447E970(v363, v1362);
    *(v471 + v467[9]) = v24;
    sub_1C44805D4(v1368);
    sub_1C4471988(v1416, v1384);
    LOBYTE(v1452[0]) = v1432;
    v370[8].n128_u64[1] = type metadata accessor for LocationMatcher(0);
    sub_1C441CC08();
    v370[9].n128_u64[0] = sub_1C4471C58(v479, v480, &protocol conformance descriptor for LocationMatcher);
    v481 = sub_1C4422F90(&v370[7]);
    sub_1C4466D44(v481);
    if (!v363)
    {
      v1434 = *(v448 + 2573);
      v482 = *(v448 + 1576);
      v483 = *(v448 + 1296);
      v1385 = *(v448 + 1464);
      v484 = *(v448 + 1016);
      v485 = *(v448 + 960);
      v1363 = *(v448 + 536);
      v1369 = *(v448 + 544);
      sub_1C440F91C();
      sub_1C4471988(v486, v483);
      sub_1C4EFD4C8();
      sub_1C441346C();
      sub_1C4471988(v1363, v482);
      v370[11].n128_u64[0] = v449;
      v370[11].n128_u64[1] = v1339;
      sub_1C4422F90(&v370[9].n128_i64[1]);
      sub_1C440AEDC();
      v487 = sub_1C43FCE84();
      sub_1C4471988(v487, v488);
      v489 = sub_1C49E19F8();
      v1346(v489);
      v490 = sub_1C44B9200();
      sub_1C4471988(v490, v491);
      sub_1C4426418();
      sub_1C4471988(v483, v492);
      sub_1C448177C();
      v494 = sub_1C49E1C88(v493);
      v495 = sub_1C44829A4(v494, v483);
      sub_1C440741C();
      sub_1C447E970(v482, v496);
      v1326(v484, v485);
      sub_1C44A837C();

      sub_1C441FE54();
      v1353 = v497;
      sub_1C447E970(v483, v498);
      sub_1C442A738();
      sub_1C4471988(v1369, v483);
      v499 = sub_1C49E1C74();
      sub_1C4471988(v499, v500);
      sub_1C4EFD4C8();
      v370[13].n128_u64[1] = v467;
      v370[14].n128_u64[0] = v1318;
      v501 = sub_1C4422F90(&v370[12]);
      sub_1C4450770(v501, v467[8]);
      sub_1C44F0C40(v483);
      v502 = sub_1C44AB274();
      sub_1C4472068(v502, v503);
      v504 = sub_1C447CC40(v467[6]);
      v1427(v504);
      *(v501 + v467[7]) = v1434;
      v505 = *(v483 + *(v1438 + 28));

      sub_1C447E970(v483, v1353);
      *(v501 + v467[9]) = v505;
      v506 = sub_1C443E3A8();
      sub_1C4471988(v506, v507);
      sub_1C4471988(v495, v1385);
      *(v448 + 2568) = v1434;
      v370[16].n128_u64[0] = type metadata accessor for PeopleMatcher(0);
      sub_1C43FF3E0();
      v510 = sub_1C4471C58(v508, v509, &protocol conformance descriptor for PeopleMatcher);
      sub_1C49E1DE0(v510);
      v511 = swift_task_alloc();
      *(v448 + 2032) = v511;
      *v511 = v448;
      v511[1] = sub_1C49D7088;
      goto LABEL_25;
    }

LABEL_55:
    sub_1C47C41F8(&v370[7]);
    sub_1C44584F4();
LABEL_9:
    if (qword_1EDDFD028 != -1)
    {
      sub_1C43FE9B4(&qword_1EDDFD028);
    }

    v57 = sub_1C4F00978();
    sub_1C43FCEE8(v57, qword_1EDE2DE10);
    v58 = sub_1C4F01CD8();
    v59 = v363;
    v60 = sub_1C4F00968();

    if (os_log_type_enabled(v60, v58))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v1452[0] = v62;
      *v61 = 136315138;
      *(v371 + 512) = v363;
      v63 = v363;
      sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
      v64 = sub_1C4F01198();
      v66 = sub_1C441D828(v64, v65, v1452);

      *(v61 + 4) = v66;
      _os_log_impl(&dword_1C43F8000, v60, v58, "Linker could not construct children, creating empty list due to: %s", v61, 0xCu);
      sub_1C440962C(v62);
      sub_1C43FEA20();
      sub_1C43FBE2C();
    }

    v19 = *(v371 + 1592);
    v67 = *(v371 + 528);

    v68 = MEMORY[0x1E69E7CC0];
    goto LABEL_14;
  }

  if (qword_1EDDFD040 != -1)
  {
    swift_once();
  }

  v512 = v12;
  v513 = sub_1C44008C8(*(v12 + 1304), qword_1EDDFD048);
  v515 = v26 && v514 == v25;
  if (v515 || (sub_1C44306B4(v513, v514) & 1) != 0)
  {
    sub_1C4F024A8();
    sub_1C43FEA3C();
    return;
  }

  if (qword_1EDDFD130 != -1)
  {
    swift_once();
  }

  v516 = sub_1C44008C8(*(v12 + 1304), qword_1EDDFD138);
  v518 = v26 && v517 == v25;
  if (v518 || (sub_1C44306B4(v516, v517) & 1) != 0)
  {
    sub_1C4433D90();
    v519 = *(v12 + 1296);
    v520 = *(v12 + 960);
    sub_1C440741C();
    sub_1C447E970(v521, v522);
    sub_1C456902C(&qword_1EC0B8CE8, &unk_1C4F0E120);
    v523 = swift_allocObject();
    *(v12 + 2048) = v523;
    sub_1C4432614(v523, xmmword_1C4F140B0);
    v524 = sub_1C44CD058();
    sub_1C4471988(v524, v525);
    sub_1C4EFD4C8();
    sub_1C441346C();
    sub_1C49E1E28();
    v526 = type metadata accessor for Blocker(0);
    *(v12 + 2056) = v526;
    v523[3].n128_u64[1] = v526;
    sub_1C4403494();
    v529 = sub_1C4471C58(v527, v528, &protocol conformance descriptor for Blocker);
    *(v12 + 2064) = v529;
    sub_1C4495D4C(v529);
    sub_1C440AEDC();
    v530 = sub_1C43FD018();
    sub_1C4471988(v530, v531);
    sub_1C442AC28();
    *(v19 + 2072) = v532;
    sub_1C44CD914();
    *(v19 + 2080) = v533;
    v535 = sub_1C442F958(v534);
    v536(v535);
    sub_1C4485D80();
    sub_1C4423790();
    sub_1C4482D00();
    sub_1C448177C();
    sub_1C446202C(v537);
    sub_1C4488834();
    sub_1C49E1C04();
    *(v19 + 2088) = v538;
    sub_1C44F0924();
    *(v19 + 2096) = v539;
    v540 = sub_1C43FD2BC();
    v541(v540);
    sub_1C4402414();
    sub_1C441FE54();
    sub_1C447E970(v519, v542);
    sub_1C443F280();
    v543 = sub_1C4485BA4();
    sub_1C49E1DC8(v543);
    v544 = type metadata accessor for PairGenerator(0);
    *(v19 + 2104) = v544;
    sub_1C44289F0(v544);
    sub_1C43FDB14();
    v547 = sub_1C4471C58(v545, v546, &protocol conformance descriptor for PairGenerator);
    *(v19 + 2112) = v547;
    v548 = sub_1C49E1A18(v547);
    v549 = sub_1C441EDE4(v548);
    sub_1C49E1DF8(v549, v550);
    sub_1C447CE10();
    sub_1C441D730();
    *(v19 + 2120) = v551;
    sub_1C49E19A4();
    *(v19 + 2128) = v552;
    v554 = sub_1C44BBCAC(v553);
    v555(v554);
    sub_1C442F2B8();
    sub_1C4473D84();
    v556 = sub_1C4414658();
    sub_1C49E1E10(v556);
    sub_1C445AAE8();
    *(v19 + 2567) = v520;
    v523[8].n128_u64[1] = type metadata accessor for PeopleMatcher(0);
    sub_1C43FF3E0();
    v559 = sub_1C4471C58(v557, v558, &protocol conformance descriptor for PeopleMatcher);
    sub_1C4488B14(v559);
    swift_task_alloc();
    sub_1C449F444();
    *(v19 + 2136) = v560;
    *v560 = v561;
    v560[1] = sub_1C49D8924;
    goto LABEL_25;
  }

  if (qword_1EDDFD178 != -1)
  {
    swift_once();
  }

  v562 = sub_1C44008C8(*(v12 + 1304), &qword_1EDDFD180);
  v564 = v26 && v563 == v25;
  if (v564 || (sub_1C44306B4(v562, v563) & 1) != 0)
  {
    goto LABEL_110;
  }

  if (qword_1EDDFD0A8 != -1)
  {
    swift_once();
  }

  v565 = sub_1C44008C8(*(v12 + 1304), qword_1EDDFD0B0);
  v567 = v26 && v566 == v25;
  if (v567 || (sub_1C44306B4(v565, v566) & 1) != 0)
  {
    goto LABEL_110;
  }

  if (qword_1EDDFD218 != -1)
  {
    swift_once();
  }

  v568 = sub_1C44008C8(*(v12 + 1304), &qword_1EDDFD220);
  v570 = v26 && v569 == v25;
  if (v570 || (sub_1C44306B4(v568, v569) & 1) != 0)
  {
LABEL_110:
    sub_1C49E1A6C();
    v571 = *(v25 + 1296);
    v1404 = *(v25 + 1432);
    v572 = *(v25 + 960);
    v573 = *(v25 + 536);
    sub_1C440741C();
    v1440 = v574;
    sub_1C447E970(v575, v576);
    sub_1C456902C(&qword_1EC0B8CE8, &unk_1C4F0E120);
    v577 = swift_allocObject();
    *(v25 + 2152) = v577;
    sub_1C4432614(v577, xmmword_1C4F0D480);
    v578 = sub_1C440C60C();
    sub_1C4471988(v578, v579);
    sub_1C4EFD4C8();
    sub_1C441346C();
    sub_1C4471988(v573, v512);
    v577[3].n128_u64[1] = type metadata accessor for Blocker(0);
    sub_1C4403494();
    v582 = sub_1C4471C58(v580, v581, &protocol conformance descriptor for Blocker);
    sub_1C4495D4C(v582);
    sub_1C440AEDC();
    v583 = sub_1C43FD018();
    sub_1C4471988(v583, v584);
    sub_1C443E1E0();
    v585();
    sub_1C4482E1C();
    v586 = sub_1C442EC40();
    sub_1C4471988(v586, v587);
    sub_1C448177C();
    sub_1C49E1C10(v588);
    v589 = sub_1C43FD388();
    v591 = sub_1C44829A4(v589, v590);
    sub_1C447E970(v13, v1440);
    v592 = sub_1C441E0A4();
    v593(v592);
    sub_1C44C0474();
    sub_1C441FE54();
    sub_1C447E970(v571, v594);
    sub_1C49E1910();
    sub_1C49E1B78();
    sub_1C4EFD4C8();
    v595 = type metadata accessor for PairGenerator(0);
    sub_1C44289F0(v595);
    sub_1C43FDB14();
    v598 = sub_1C4471C58(v596, v597, &protocol conformance descriptor for PairGenerator);
    v599 = sub_1C49E1A18(v598);
    v600 = sub_1C4426CB8(v599, v595[8]);
    sub_1C4471988(v600, v599);
    sub_1C49E1B14(v595[5]);
    v601 = sub_1C49E1A30();
    v602(v601);
    *(v599 + v595[7]) = v1432;
    sub_1C445136C();
    sub_1C4473D84();
    sub_1C49E1AF0();
    sub_1C4471988(v572, v1404);
    *(v25 + 2566) = v1432;
    *(v591 + 136) = type metadata accessor for PeopleMatcher(0);
    sub_1C43FF3E0();
    v605 = sub_1C4471C58(v603, v604, &protocol conformance descriptor for PeopleMatcher);
    sub_1C4488B14(v605);
    v606 = swift_task_alloc();
    *(v25 + 2160) = v606;
    *v606 = v25;
    v606[1] = sub_1C4488BD4;
    goto LABEL_25;
  }

  if (qword_1EDDFED38 != -1)
  {
    swift_once();
  }

  v607 = sub_1C44008C8(*(v12 + 1304), qword_1EDDFD0F0);
  v609 = v26 && v608 == v25;
  if (v609 || (sub_1C44306B4(v607, v608) & 1) != 0)
  {
    sub_1C4433D90();
    v610 = *(v12 + 1296);
    v611 = *(v12 + 960);
    sub_1C440741C();
    sub_1C447E970(v612, v613);
    v614 = sub_1C456902C(&qword_1EC0B8CE8, &unk_1C4F0E120);
    v615 = sub_1C49E1AD8(v614);
    *(v12 + 2176) = v615;
    sub_1C4432614(v615, xmmword_1C4F0F830);
    v616 = sub_1C44CD058();
    sub_1C4471988(v616, v617);
    sub_1C4EFD4C8();
    sub_1C441346C();
    sub_1C49E1E28();
    v618 = type metadata accessor for Blocker(0);
    *(v12 + 2184) = v618;
    v615[3].n128_u64[1] = v618;
    sub_1C4403494();
    v621 = sub_1C4471C58(v619, v620, &protocol conformance descriptor for Blocker);
    *(v12 + 2192) = v621;
    sub_1C4495D4C(v621);
    sub_1C440AEDC();
    v622 = sub_1C43FD018();
    sub_1C4471988(v622, v623);
    sub_1C442AC28();
    *(v19 + 2200) = v624;
    sub_1C44CD914();
    *(v19 + 2208) = v625;
    v627 = sub_1C442F958(v626);
    v628(v627);
    sub_1C4485D80();
    sub_1C4423790();
    sub_1C4482D00();
    sub_1C448177C();
    sub_1C446202C(v629);
    sub_1C4488834();
    sub_1C49E1C04();
    *(v19 + 2216) = v630;
    sub_1C44F0924();
    *(v19 + 2224) = v631;
    v632 = sub_1C43FD2BC();
    v633(v632);
    sub_1C4402414();
    sub_1C441FE54();
    sub_1C447E970(v610, v634);
    sub_1C443F280();
    v635 = sub_1C4485BA4();
    sub_1C49E1DC8(v635);
    v636 = type metadata accessor for PairGenerator(0);
    *(v19 + 2232) = v636;
    sub_1C44289F0(v636);
    sub_1C43FDB14();
    v639 = sub_1C4471C58(v637, v638, &protocol conformance descriptor for PairGenerator);
    *(v19 + 2240) = v639;
    v640 = sub_1C49E1A18(v639);
    v641 = sub_1C441EDE4(v640);
    sub_1C49E1DF8(v641, v642);
    sub_1C447CE10();
    sub_1C441D730();
    *(v19 + 2248) = v643;
    sub_1C49E19A4();
    *(v19 + 2256) = v644;
    v646 = sub_1C44BBCAC(v645);
    v647(v646);
    sub_1C442F2B8();
    sub_1C4473D84();
    v648 = sub_1C4414658();
    sub_1C49E1E10(v648);
    sub_1C445AAE8();
    *(v19 + 2565) = v611;
    v615[8].n128_u64[1] = type metadata accessor for PeopleMatcher(0);
    sub_1C43FF3E0();
    v651 = sub_1C4471C58(v649, v650, &protocol conformance descriptor for PeopleMatcher);
    sub_1C4488B14(v651);
    swift_task_alloc();
    sub_1C449F444();
    *(v19 + 2264) = v652;
    *v652 = v653;
    v652[1] = sub_1C49D9504;
    goto LABEL_25;
  }

  if (qword_1EDDFD150 != -1)
  {
    swift_once();
  }

  v654 = sub_1C44008C8(*(v12 + 1304), qword_1EDDFD158);
  v656 = v26 && v655 == v25;
  if (v656 || (sub_1C44306B4(v654, v655) & 1) != 0)
  {
    v1386 = *(v12 + 2573);
    v657 = *(v12 + 1576);
    v1312 = *(v12 + 1400);
    v658 = *(v12 + 1296);
    v659 = *(v12 + 1016);
    v660 = *(v12 + 968);
    v1435 = *(v12 + 960);
    v661 = *(v12 + 544);
    v1375 = v661;
    v662 = *(v12 + 536);
    v1396 = v662;
    sub_1C440741C();
    v1441 = v663;
    sub_1C447E970(v664, v665);
    sub_1C456902C(&qword_1EC0B8CE8, &unk_1C4F0E120);
    v666 = swift_allocObject();
    *(v12 + 2280) = v666;
    sub_1C4432614(v666, xmmword_1C4F140B0);
    sub_1C4471988(v661, v658);
    sub_1C4EFCF28();
    sub_1C445E900();
    sub_1C4471988(v662, v657);
    v667 = type metadata accessor for Blocker(0);
    v666[3].n128_u64[1] = v667;
    sub_1C4403494();
    v1327 = sub_1C4471C58(v668, v669, &protocol conformance descriptor for Blocker);
    v670 = sub_1C4495D4C(v1327);
    sub_1C440AEDC();
    v671 = sub_1C4401D48();
    sub_1C4471988(v671, v672);
    v1340 = *(v660 + 16);
    v673 = sub_1C4459BC0(v667[5]);
    v674(v673);
    v675 = sub_1C444C020();
    sub_1C4471988(v675, v676);
    *(v670 + v667[7]) = 0;
    v677 = sub_1C44EB8C0();
    sub_1C4471988(v677, v678);
    sub_1C448177C();
    *(v670 + v667[9]) = v679;
    v680 = sub_1C44829A4(v657, v658);
    sub_1C447E970(v657, v1441);
    v1333 = *(v660 + 8);
    v681 = sub_1C4410428();
    v682(v681);
    *(v670 + v667[10]) = v680;
    *(v670 + v667[11]) = v1386;
    sub_1C49E1E58();
    sub_1C441FE54();
    v1364 = v683;
    sub_1C447E970(v658, v684);
    *(v670 + v667[12]) = v680;
    *(v670 + v667[13]) = 0;
    sub_1C4471988(v1375, v658);
    v685 = v657;
    v1303 = v657;
    sub_1C4471988(v1396, v657);
    sub_1C4EFCF28();
    v686 = type metadata accessor for PairGenerator(0);
    sub_1C44289F0(v686);
    sub_1C43FDB14();
    v1319 = sub_1C4471C58(v687, v688, &protocol conformance descriptor for PairGenerator);
    v689 = sub_1C49E1A18(v1319);
    v690 = sub_1C440CCE8(v689, v686[8]);
    sub_1C4471988(v690, v691);
    sub_1C4472068(v685, v689 + v686[5]);
    sub_1C4482EA0();
    v1358 = v692;
    v694 = sub_1C4459BC0(v693);
    v695(v694);
    *(v689 + v686[7]) = v1386;
    sub_1C4413F50();
    v697 = *(v658 + v696);

    sub_1C447E970(v658, v1364);
    *(v689 + v686[9]) = v697;
    sub_1C4471988(v1375, v658);
    sub_1C4471988(v1396, v1303);
    sub_1C4EFCF28();
    v698 = type metadata accessor for PassthroughMatcher(0);
    v1365[17] = v698;
    sub_1C442FF54();
    v701 = sub_1C4471C58(v699, v700, &protocol conformance descriptor for PassthroughMatcher);
    v702 = sub_1C4488B14(v701);
    sub_1C4472068(v1303, v702);
    *(v702 + v698[5]) = v1386;
    sub_1C4472068(v658, v702 + v698[6]);
    v1358(v702 + v698[7], v659, v1435);
    sub_1C4471988(v1375, v658);
    _s24IntelligencePlatformCore15LocationMatcherV11entityClass0aB006EntityG0Vvg_0();
    sub_1C4471988(v1396, v1303);
    v1365[22] = v667;
    v1365[23] = v1327;
    v703 = sub_1C4422F90(v1365 + 19);
    v704 = sub_1C4401D48();
    sub_1C4471988(v704, v705);
    v706 = sub_1C4459BC0(v667[5]);
    v1340(v706);
    sub_1C4471988(v1303, v703 + v667[6]);
    *(v703 + v667[7]) = 0;
    v707 = sub_1C44EB8C0();
    sub_1C4471988(v707, v708);
    sub_1C4482D00();
    sub_1C448177C();
    *(v703 + v667[9]) = v709;
    v710 = sub_1C445852C();
    v712 = sub_1C44829A4(v710, v711);
    sub_1C447E970(v1303, v1441);
    v1333(v659, v1435);
    *(v703 + v667[10]) = v712;
    *(v703 + v667[11]) = v1386;
    v713 = *(v658 + *(v1435 + 28));

    sub_1C447E970(v658, v1364);
    *(v703 + v667[12]) = v713;
    *(v703 + v667[13]) = 0;
    sub_1C4471988(v1375, v658);
    v363 = v1396;
    sub_1C4471988(v1396, v1303);
    _s24IntelligencePlatformCore15LocationMatcherV11entityClass0aB006EntityG0Vvg_0();
    v1365[27] = v686;
    v1365[28] = v1319;
    v714 = sub_1C4422F90(v1365 + 24);
    v715 = sub_1C440CCE8(v714, v686[8]);
    sub_1C4471988(v715, v716);
    sub_1C49E1B14(v686[5]);
    v1358(v714 + v686[6], v659, v1435);
    *(v714 + v686[7]) = v1386;
    sub_1C4413F50();
    v718 = *(v658 + v717);

    sub_1C447E970(v658, v1364);
    v1442 = v686;
    *(v714 + v686[9]) = v718;
    sub_1C44A3AB8();
    sub_1C4471988(v719, v720);
    sub_1C4471988(v1396, v1312);
    LOBYTE(v1452[0]) = v1386;
    v1365[32] = type metadata accessor for LocationMatcher(0);
    sub_1C441CC08();
    v1365[33] = sub_1C4471C58(v721, v722, &protocol conformance descriptor for LocationMatcher);
    v723 = sub_1C4422F90(v1365 + 29);
    sub_1C4466D44(v723);
    if (!v1396)
    {
      v1428 = *(v512 + 2573);
      v724 = *(v512 + 1576);
      v1417 = *(v512 + 1392);
      v725 = *(v512 + 1296);
      v1397 = *(v512 + 1112);
      v726 = *(v512 + 1016);
      v727 = *(v512 + 960);
      v728 = *(v512 + 536);
      v1376 = v728;
      v1387 = *(v512 + 544);
      sub_1C440D610();
      sub_1C4471988(v729, v725);
      sub_1C4EFD4C8();
      sub_1C441346C();
      sub_1C4471988(v728, v724);
      v1365[37] = v667;
      v1365[38] = v1327;
      v730 = sub_1C4422F90(v1365 + 34);
      sub_1C440AEDC();
      v731 = sub_1C43FCE84();
      sub_1C4471988(v731, v732);
      v733 = sub_1C49E19F8();
      v1340(v733);
      v734 = sub_1C44B9200();
      sub_1C4471988(v734, v735);
      sub_1C4426418();
      sub_1C4471988(v725, v736);
      sub_1C448177C();
      *(v730 + v667[9]) = v737;
      v738 = sub_1C44829A4(v724, v725);
      sub_1C440741C();
      sub_1C447E970(v724, v739);
      v1333(v726, v727);
      *(v730 + v667[10]) = v738;
      *(v730 + v667[11]) = v1428;

      sub_1C441FE54();
      v1347 = v740;
      sub_1C447E970(v725, v741);
      sub_1C442A738();
      sub_1C4471988(v1387, v725);
      sub_1C49E1E40(v1376);
      sub_1C4EFD4C8();
      v1365[42] = v1442;
      v1365[43] = v1319;
      v742 = sub_1C4422F90(v1365 + 39);
      sub_1C4450770(v742, v1442[8]);
      sub_1C44F0C40(v725);
      v743 = sub_1C44AB274();
      sub_1C4472068(v743, v744);
      v745 = sub_1C447CC40(v1442[6]);
      (v1358)(v745);
      *(v742 + v1442[7]) = v1428;
      sub_1C4413F50();
      v747 = *(v725 + v746);

      sub_1C447E970(v725, v1347);
      *(v742 + v1442[9]) = v747;
      sub_1C4471988(v1387, v1397);
      sub_1C4471988(v1376, v1417);
      *(v512 + 2564) = v1428;
      v1365[47] = type metadata accessor for PeopleMatcher(0);
      sub_1C43FF3E0();
      v1365[48] = sub_1C4471C58(v748, v749, &protocol conformance descriptor for PeopleMatcher);
      sub_1C4422F90(v1365 + 44);
      v750 = swift_task_alloc();
      *(v512 + 2288) = v750;
      *v750 = v512;
      v750[1] = sub_1C49D9EF8;
      goto LABEL_25;
    }

    sub_1C47C41F8((v1365 + 29));
    sub_1C440962C(v1365 + 24);
    sub_1C440962C(v1365 + 19);
    sub_1C440962C(v1365 + 14);
    sub_1C44584F4();
    v371 = v512;
    goto LABEL_9;
  }

  if (qword_1EDDFD2F0 != -1)
  {
    swift_once();
  }

  v751 = sub_1C44008C8(*(v12 + 1304), qword_1EDDFD2F8);
  v753 = v26 && v752 == v25;
  if (v753 || (sub_1C44306B4(v751, v752) & 1) != 0)
  {
    v1377 = *(v12 + 2573);
    v754 = *(v12 + 1576);
    v1328 = *(v12 + 1376);
    v755 = *(v12 + 1296);
    v1313 = *(v12 + 1096);
    v756 = *(v12 + 1016);
    v1429 = *(v12 + 960);
    v1320 = *(v12 + 808);
    v1334 = *(v12 + 856);
    v1341 = *(v12 + 592);
    v757 = *(v12 + 544);
    v1405 = *(v12 + 1024);
    v1418 = v757;
    v1398 = *(v12 + 536);
    sub_1C440741C();
    v1443 = v759;
    v1450 = v758;
    sub_1C447E970(v760, v761);
    v762 = sub_1C456902C(&qword_1EC0B8CE8, &unk_1C4F0E120);
    v763 = sub_1C49E1AD8(v762);
    sub_1C4432614(v763, xmmword_1C4F0F830);
    sub_1C4471988(v757, v755);
    sub_1C4EFD538();
    sub_1C4424D24();
    sub_1C4471988(v1398, v754);
    v764 = type metadata accessor for Blocker(0);
    v763[3].n128_u64[1] = v764;
    sub_1C4403494();
    v1310 = sub_1C4471C58(v765, v766, &protocol conformance descriptor for Blocker);
    v1388 = v763;
    v763[4].n128_u64[0] = v1310;
    v767 = sub_1C4422F90(&v763[2]);
    sub_1C440AEDC();
    v768 = sub_1C4404084();
    sub_1C4471988(v768, v769);
    v1304 = *(v1450 + 16);
    v770 = sub_1C4459BC0(v764[5]);
    v771(v770);
    sub_1C445BC08();
    sub_1C4471988(v754, v772);
    sub_1C4422414();
    sub_1C4471988(v755, v773);
    sub_1C448177C();
    sub_1C49E1A84(v774);
    v775 = sub_1C44829A4(v754, v755);
    sub_1C447E970(v754, v1443);
    v1300 = *(v1450 + 8);
    v1300(v756, v1429);
    *(v767 + v764[10]) = v775;
    *(v767 + v764[11]) = v1377;
    v776 = *(v755 + *(v1405 + 28));

    sub_1C441FE54();
    v1370 = v777;
    sub_1C447E970(v755, v778);
    *(v767 + v764[12]) = v776;
    sub_1C4495410();
    sub_1C4471988(v1418, v755);
    sub_1C4471988(v1398, v754);
    v779 = v756;
    v1354 = v756;
    sub_1C4EFD538();
    v780 = type metadata accessor for PairGenerator(0);
    v763[6].n128_u64[0] = v780;
    v781 = v780;
    sub_1C43FDB14();
    v1298 = sub_1C4471C58(v782, v783, &protocol conformance descriptor for PairGenerator);
    v763[6].n128_u64[1] = v1298;
    sub_1C4422F90(&v763[4].n128_i64[1]);
    sub_1C49E1BE4();
    v786 = sub_1C440CCE8(v784, v785);
    sub_1C4471988(v786, v787);
    v788 = sub_1C444AD48();
    sub_1C4472068(v788, v789);
    sub_1C4482EA0();
    v1296 = v790;
    v790(v767 + v791, v779, v1429);
    v1294 = v781;
    *(v767 + v781[7]) = v1377;
    sub_1C4413F50();
    sub_1C49E1E58();
    sub_1C447E970(v755, v1370);
    *(v767 + v781[9]) = v1405;
    v792 = sub_1C43FD258();
    sub_1C4471988(v792, v793);
    v794 = v754;
    sub_1C49E1E40(v1398);
    v795 = type metadata accessor for SoftwareMatcher(0);
    v763[8].n128_u64[1] = v795;
    sub_1C43FC670();
    v763[9].n128_u64[0] = sub_1C4471C58(v796, v797, &protocol conformance descriptor for SoftwareMatcher);
    v798 = sub_1C4422F90(&v763[7]);
    sub_1C449AEEC(v798);
    sub_1C4EFD538();
    v799 = sub_1C4424948();
    sub_1C4472068(v799, v800);
    sub_1C4472068(v794, v798 + *(v795 + 20));
    *(v798 + *(v795 + 24)) = v1377;
    sub_1C4471988(v1418, v755);
    _s24IntelligencePlatformCore19OrganizationMatcherV11entityClass0aB006EntityG0Vvg_0();
    v801 = sub_1C445852C();
    sub_1C4471988(v801, v802);
    v763[11].n128_u64[0] = v764;
    v763[11].n128_u64[1] = v1310;
    v803 = sub_1C4422F90(&v763[9].n128_i64[1]);
    v804 = sub_1C440BB4C();
    sub_1C4471988(v804, v805);
    v806 = sub_1C4459BC0(v764[5]);
    v1304(v806);
    sub_1C44D4544();
    sub_1C4471988(v794, v807);
    *(v803 + v764[7]) = 0;
    v808 = sub_1C445BA88();
    sub_1C4471988(v808, v809);
    sub_1C49E1A60();
    sub_1C448177C();
    sub_1C447F854(v810);
    v811 = sub_1C4424948();
    v813 = sub_1C44829A4(v811, v812);
    sub_1C447E970(v794, v1443);
    v814 = sub_1C4410428();
    (v1300)(v814);
    *(v803 + v764[10]) = v813;
    *(v803 + v764[11]) = v1377;
    v815 = *(v755 + *(v1405 + 28));

    sub_1C447E970(v755, v1370);
    *(v803 + v764[12]) = v815;
    *(v803 + v764[13]) = 0;
    sub_1C4471988(v1418, v755);
    sub_1C4471988(v1398, v794);
    _s24IntelligencePlatformCore19OrganizationMatcherV11entityClass0aB006EntityG0Vvg_0();
    v763[13].n128_u64[1] = v781;
    v763[14].n128_u64[0] = v1298;
    v816 = sub_1C4422F90(&v763[12]);
    sub_1C4441148(v816);
    v817 = sub_1C43FE99C();
    sub_1C4471988(v817, v818);
    v819 = sub_1C44EB8C0();
    sub_1C4472068(v819, v820);
    v1296(v803 + v781[6], v1354, v1429);
    *(v803 + v781[7]) = v1377;
    sub_1C4413F50();
    v822 = *(v755 + v821);

    sub_1C447E970(v755, v1370);
    *(v803 + v1294[9]) = v822;
    v823 = type metadata accessor for OrganizationMatcher(0);
    v763[16].n128_u64[0] = v823;
    sub_1C445C1B8();
    v763[16].n128_u64[1] = sub_1C4471C58(v824, v825, &protocol conformance descriptor for OrganizationMatcher);
    v826 = sub_1C4422F90(&v763[14].n128_i64[1]);
    v827 = sub_1C4410CBC();
    sub_1C4471988(v827, v828);
    sub_1C4471988(v1398, v826 + v823[5]);
    *(v826 + v823[7]) = 1056964608;
    *(v826 + v823[6]) = v1377;
    sub_1C4471988(v1418, v1313);
    sub_1C44805D4(v1398);
    v763[18].n128_u64[1] = v1320;
    sub_1C44174EC();
    v763[19].n128_u64[0] = sub_1C4471C58(v829, v830, &protocol conformance descriptor for Resolver);
    sub_1C4422F90(&v763[17]);
    v1334[v1320[6]] = 4;
    sub_1C4471988(v1313, v1334);
    sub_1C4471988(v1328, &v1334[v1320[5]]);
    v1334[v1320[7]] = v1377;
    v831 = sub_1C4EF9E48();
    sub_1C44102A4(v1341, v832, v833, v831);
    sub_1C448895C();
    if (v1334)
    {

      v834 = 1;
    }

    else
    {
      v834 = 0;
    }

    v835 = *(v512 + 1096);
LABEL_140:
    sub_1C49E19C8();
    v67 = *(v512 + 528);
    sub_1C440741C();
    sub_1C447E970(v836, v837);
    sub_1C441FE54();
    sub_1C447E970(v835, v838);
    sub_1C4EFF1C8();
    v839 = sub_1C49E18D8();
    sub_1C440BAA8(v839, v834, 1, v840);
    v841 = sub_1C448E070();
    sub_1C4482F3C(v841, v842);
    sub_1C440E538();
    v843 = sub_1C44333A0();
LABEL_141:
    sub_1C4472068(v843, v844);
    v68 = v1388;
LABEL_14:
    sub_1C441FE54();
    sub_1C447E970(v69, v70);
    sub_1C440741C();
    sub_1C447E970(v71, v72);
    *(v67 + *(v19 + 24)) = v68;
    sub_1C44359B4();
    sub_1C49E1CD0();
    sub_1C49E1CC4();

    sub_1C43FBDA0();
    sub_1C43FEA3C();

    v74(v73, v74, v75, v76, v77, v78, v79, v80, a9, a10, a11, a12);
    return;
  }

  if (qword_1EDDFD240 != -1)
  {
    swift_once();
  }

  v845 = sub_1C44008C8(*(v12 + 1304), &qword_1EDDFD248);
  v847 = v26 && v846 == v25;
  if (v847 || (sub_1C44306B4(v845, v846) & 1) != 0)
  {
    sub_1C4433D90();
    v848 = *(v12 + 1296);
    v849 = *(v12 + 960);
    sub_1C440741C();
    sub_1C447E970(v850, v851);
    v852 = sub_1C456902C(&qword_1EC0B8CE8, &unk_1C4F0E120);
    v853 = sub_1C49E1AD8(v852);
    *(v12 + 2304) = v853;
    sub_1C4432614(v853, xmmword_1C4F0F830);
    v854 = sub_1C44CD058();
    sub_1C4471988(v854, v855);
    sub_1C4EFD4C8();
    sub_1C441346C();
    sub_1C49E1E28();
    v856 = type metadata accessor for Blocker(0);
    *(v12 + 2312) = v856;
    v853[3].n128_u64[1] = v856;
    sub_1C4403494();
    v859 = sub_1C4471C58(v857, v858, &protocol conformance descriptor for Blocker);
    *(v12 + 2320) = v859;
    sub_1C4495D4C(v859);
    sub_1C440AEDC();
    v860 = sub_1C43FD018();
    sub_1C4471988(v860, v861);
    sub_1C442AC28();
    *(v19 + 2328) = v862;
    sub_1C44CD914();
    *(v19 + 2336) = v863;
    v865 = sub_1C442F958(v864);
    v866(v865);
    sub_1C4485D80();
    sub_1C4423790();
    sub_1C4482D00();
    sub_1C448177C();
    sub_1C446202C(v867);
    sub_1C4488834();
    sub_1C49E1C04();
    *(v19 + 2344) = v868;
    sub_1C44F0924();
    *(v19 + 2352) = v869;
    v870 = sub_1C43FD2BC();
    v871(v870);
    sub_1C4402414();
    sub_1C441FE54();
    sub_1C447E970(v848, v872);
    sub_1C443F280();
    v873 = sub_1C4485BA4();
    sub_1C49E1DC8(v873);
    v874 = type metadata accessor for PairGenerator(0);
    *(v19 + 2360) = v874;
    sub_1C44289F0(v874);
    sub_1C43FDB14();
    v877 = sub_1C4471C58(v875, v876, &protocol conformance descriptor for PairGenerator);
    *(v19 + 2368) = v877;
    v878 = sub_1C49E1A18(v877);
    v879 = sub_1C441EDE4(v878);
    sub_1C49E1DF8(v879, v880);
    sub_1C447CE10();
    sub_1C441D730();
    *(v19 + 2376) = v881;
    sub_1C49E19A4();
    *(v19 + 2384) = v882;
    v884 = sub_1C44BBCAC(v883);
    v885(v884);
    sub_1C442F2B8();
    sub_1C4473D84();
    v886 = sub_1C4414658();
    sub_1C49E1E10(v886);
    sub_1C445AAE8();
    *(v19 + 2563) = v849;
    v853[8].n128_u64[1] = type metadata accessor for PeopleMatcher(0);
    sub_1C43FF3E0();
    v889 = sub_1C4471C58(v887, v888, &protocol conformance descriptor for PeopleMatcher);
    sub_1C4488B14(v889);
    swift_task_alloc();
    sub_1C449F444();
    *(v19 + 2392) = v890;
    *v890 = v891;
    v890[1] = sub_1C49DA550;
    goto LABEL_25;
  }

  if (qword_1EDDFD318 != -1)
  {
    swift_once();
  }

  v892 = sub_1C44008C8(*(v12 + 1304), qword_1EDDFD320);
  v894 = v26 && v893 == v25;
  if (v894 || (sub_1C44306B4(v892, v893) & 1) != 0)
  {
    v1436 = *(v12 + 2573);
    v895 = *(v12 + 1576);
    v896 = *(v12 + 1296);
    v1378 = *(v12 + 1024);
    v897 = *(v12 + 1016);
    v1444 = *(v12 + 960);
    v1451 = *(v12 + 968);
    v1335 = *(v12 + 1352);
    v1342 = *(v12 + 840);
    v1321 = *(v12 + 1072);
    v1329 = *(v12 + 808);
    v1348 = *(v12 + 576);
    v1406 = *(v12 + 544);
    v1419 = *(v12 + 536);
    sub_1C440741C();
    v1430 = v898;
    sub_1C447E970(v899, v900);
    sub_1C456902C(&qword_1EC0B8CE8, &unk_1C4F0E120);
    v901 = swift_allocObject();
    sub_1C4432614(v901, xmmword_1C4F0D480);
    sub_1C4471988(v1406, v896);
    sub_1C4EFD1E8();
    sub_1C44A180C();
    v902 = v895;
    sub_1C4471988(v1419, v895);
    v903 = type metadata accessor for Blocker(0);
    v901[3].n128_u64[1] = v903;
    sub_1C4403494();
    v1388 = v901;
    v901[4].n128_u64[0] = sub_1C4471C58(v904, v905, &protocol conformance descriptor for Blocker);
    v906 = sub_1C4422F90(&v901[2]);
    sub_1C440AEDC();
    v907 = v896;
    sub_1C4471988(v896, v906);
    (*(v1451 + 16))(v906 + v903[5], v897, v1444);
    sub_1C4471988(v902, v906 + v903[6]);
    *(v906 + v903[7]) = 0;
    v908 = sub_1C448E070();
    sub_1C4471988(v908, v909);
    sub_1C49E1A60();
    sub_1C448177C();
    *(v906 + v903[9]) = v910;
    v911 = sub_1C44829A4(v902, v896);
    sub_1C447E970(v902, v1430);
    (*(v1451 + 8))(v897, v1444);
    *(v906 + v903[10]) = v911;
    *(v906 + v903[11]) = v1436;
    v912 = *(v896 + *(v1378 + 28));

    sub_1C441FE54();
    v1371 = v913;
    sub_1C447E970(v907, v914);
    *(v906 + v903[12]) = v912;
    *(v906 + v903[13]) = 0;
    sub_1C4471988(v1406, v907);
    sub_1C4471988(v1419, v902);
    sub_1C4EFD1E8();
    v915 = type metadata accessor for PairGenerator(0);
    v1388[12] = v915;
    sub_1C43FDB14();
    v1388[13] = sub_1C4471C58(v916, v917, &protocol conformance descriptor for PairGenerator);
    v918 = sub_1C4422F90(v1388 + 9);
    v919 = sub_1C4426CB8(v918, v915[8]);
    sub_1C4471988(v919, v918);
    sub_1C4472068(v902, v918 + v915[5]);
    sub_1C4482EA0();
    v1314 = v920;
    v920(v918 + v921, v897, v1444);
    *(v918 + v915[7]) = v1436;
    v922 = *(v907 + *(v1378 + 28));

    sub_1C447E970(v907, v1371);
    *(v918 + v915[9]) = v922;
    v923 = sub_1C43FD388();
    sub_1C4471988(v923, v924);
    sub_1C4471988(v1419, v902);
    sub_1C4EFD1E8();
    v925 = type metadata accessor for PassthroughMatcher(0);
    v1388[17] = v925;
    sub_1C442FF54();
    v1388[18] = sub_1C4471C58(v926, v927, &protocol conformance descriptor for PassthroughMatcher);
    v928 = sub_1C4422F90(v1388 + 14);
    sub_1C4472068(v902, v928);
    *(v928 + v925[5]) = v1436;
    sub_1C4472068(v907, v928 + v925[6]);
    v1314(v928 + v925[7], v897, v1444);
    sub_1C4471988(v1406, v1321);
    sub_1C4471988(v1419, v1335);
    v1388[22] = v1329;
    sub_1C44174EC();
    v1388[23] = sub_1C4471C58(v929, v930, &protocol conformance descriptor for Resolver);
    sub_1C4422F90(v1388 + 19);
    v1342[v1329[6]] = 4;
    sub_1C4471988(v1321, v1342);
    sub_1C4471988(v1335, &v1342[v1329[5]]);
    v1342[v1329[7]] = v1436;
    v931 = sub_1C4EF9E48();
    sub_1C44102A4(v1348, v932, v933, v931);
    sub_1C448895C();
    if (v1342)
    {

      v834 = 1;
    }

    else
    {
      v834 = 0;
    }

    v835 = *(v512 + 1072);
    goto LABEL_140;
  }

  if (qword_1EDDFD340 != -1)
  {
    swift_once();
  }

  v934 = sub_1C44008C8(*(v12 + 1304), qword_1EDDFD348);
  v936 = v26 && v935 == v25;
  if (v936 || (sub_1C44306B4(v934, v935) & 1) != 0)
  {
    sub_1C4433D90();
    v937 = *(v12 + 1296);
    v938 = *(v12 + 960);
    sub_1C440741C();
    sub_1C447E970(v939, v940);
    v941 = sub_1C456902C(&qword_1EC0B8CE8, &unk_1C4F0E120);
    v942 = sub_1C49E1AD8(v941);
    *(v12 + 2408) = v942;
    sub_1C4432614(v942, xmmword_1C4F0F830);
    v943 = sub_1C44CD058();
    sub_1C4471988(v943, v944);
    sub_1C4EFD4C8();
    sub_1C441346C();
    sub_1C49E1E28();
    v945 = type metadata accessor for Blocker(0);
    *(v12 + 2416) = v945;
    v942[3].n128_u64[1] = v945;
    sub_1C4403494();
    v948 = sub_1C4471C58(v946, v947, &protocol conformance descriptor for Blocker);
    *(v12 + 2424) = v948;
    sub_1C4495D4C(v948);
    sub_1C440AEDC();
    v949 = sub_1C43FD018();
    sub_1C4471988(v949, v950);
    sub_1C442AC28();
    *(v19 + 2432) = v951;
    sub_1C44CD914();
    *(v19 + 2440) = v952;
    v954 = sub_1C442F958(v953);
    v955(v954);
    sub_1C4485D80();
    sub_1C4423790();
    sub_1C4482D00();
    sub_1C448177C();
    sub_1C446202C(v956);
    sub_1C4488834();
    sub_1C49E1C04();
    *(v19 + 2448) = v957;
    sub_1C44F0924();
    *(v19 + 2456) = v958;
    v959 = sub_1C43FD2BC();
    v960(v959);
    sub_1C4402414();
    sub_1C441FE54();
    sub_1C447E970(v937, v961);
    sub_1C443F280();
    v962 = sub_1C4485BA4();
    sub_1C49E1DC8(v962);
    v963 = type metadata accessor for PairGenerator(0);
    *(v19 + 2464) = v963;
    sub_1C44289F0(v963);
    sub_1C43FDB14();
    v966 = sub_1C4471C58(v964, v965, &protocol conformance descriptor for PairGenerator);
    *(v19 + 2472) = v966;
    v967 = sub_1C49E1A18(v966);
    v968 = sub_1C441EDE4(v967);
    sub_1C49E1DF8(v968, v969);
    sub_1C447CE10();
    sub_1C441D730();
    *(v19 + 2480) = v970;
    sub_1C49E19A4();
    *(v19 + 2488) = v971;
    v973 = sub_1C44BBCAC(v972);
    v974(v973);
    sub_1C442F2B8();
    sub_1C4473D84();
    v975 = sub_1C4414658();
    sub_1C49E1E10(v975);
    sub_1C445AAE8();
    *(v19 + 2562) = v938;
    v942[8].n128_u64[1] = type metadata accessor for PeopleMatcher(0);
    sub_1C43FF3E0();
    v978 = sub_1C4471C58(v976, v977, &protocol conformance descriptor for PeopleMatcher);
    sub_1C4488B14(v978);
    swift_task_alloc();
    sub_1C449F444();
    *(v19 + 2496) = v979;
    *v979 = v980;
    v979[1] = sub_1C49DAF10;
    goto LABEL_25;
  }

  if (qword_1EDDFD2C8 != -1)
  {
    swift_once();
  }

  v981 = sub_1C44008C8(*(v12 + 1304), qword_1EDDFD2D0);
  v983 = v26 && v982 == v25;
  if (v983 || (sub_1C44306B4(v981, v982) & 1) != 0)
  {
    sub_1C49E1A6C();
    v984 = *(v25 + 1296);
    v1407 = *(v25 + 1328);
    v985 = *(v25 + 960);
    v986 = *(v25 + 536);
    sub_1C440741C();
    v1445 = v987;
    sub_1C447E970(v988, v989);
    sub_1C456902C(&qword_1EC0B8CE8, &unk_1C4F0E120);
    v990 = swift_allocObject();
    *(v25 + 2512) = v990;
    sub_1C4432614(v990, xmmword_1C4F0D480);
    v991 = sub_1C440C60C();
    sub_1C4471988(v991, v992);
    sub_1C4EFD4C8();
    sub_1C441346C();
    sub_1C4471988(v986, v512);
    v990[3].n128_u64[1] = type metadata accessor for Blocker(0);
    sub_1C4403494();
    v995 = sub_1C4471C58(v993, v994, &protocol conformance descriptor for Blocker);
    sub_1C4495D4C(v995);
    sub_1C440AEDC();
    v996 = sub_1C43FD018();
    sub_1C4471988(v996, v997);
    sub_1C443E1E0();
    v998();
    sub_1C4482E1C();
    v999 = sub_1C442EC40();
    sub_1C4471988(v999, v1000);
    sub_1C448177C();
    sub_1C49E1C10(v1001);
    v1002 = sub_1C43FD388();
    v1004 = sub_1C44829A4(v1002, v1003);
    sub_1C447E970(v13, v1445);
    v1005 = sub_1C441E0A4();
    v1006(v1005);
    sub_1C44C0474();
    sub_1C441FE54();
    sub_1C447E970(v984, v1007);
    sub_1C49E1910();
    sub_1C49E1B78();
    sub_1C4EFD4C8();
    v1008 = type metadata accessor for PairGenerator(0);
    sub_1C44289F0(v1008);
    sub_1C43FDB14();
    v1011 = sub_1C4471C58(v1009, v1010, &protocol conformance descriptor for PairGenerator);
    v1012 = sub_1C49E1A18(v1011);
    v1013 = sub_1C4426CB8(v1012, v1008[8]);
    sub_1C4471988(v1013, v1012);
    sub_1C49E1B14(v1008[5]);
    v1014 = sub_1C49E1A30();
    v1015(v1014);
    *(v1012 + v1008[7]) = v1432;
    sub_1C445136C();
    sub_1C4473D84();
    sub_1C49E1AF0();
    sub_1C4471988(v985, v1407);
    *(v25 + 2561) = v1432;
    *(v1004 + 136) = type metadata accessor for PeopleMatcher(0);
    sub_1C43FF3E0();
    v1018 = sub_1C4471C58(v1016, v1017, &protocol conformance descriptor for PeopleMatcher);
    sub_1C4488B14(v1018);
    v1019 = swift_task_alloc();
    *(v25 + 2520) = v1019;
    *v1019 = v25;
    v1019[1] = sub_1C4489C4C;
    goto LABEL_25;
  }

  if (qword_1EDDFD288 != -1)
  {
    swift_once();
  }

  v1020 = sub_1C44008C8(*(v12 + 1304), &qword_1EDDFD290);
  v1022 = v26 && v1021 == v25;
  if (v1022 || (sub_1C44306B4(v1020, v1021) & 1) != 0)
  {
    goto LABEL_205;
  }

  if (qword_1EDDFD1F0 != -1)
  {
    swift_once();
  }

  v1023 = sub_1C44008C8(*(v12 + 1304), &qword_1EDDFD1F8);
  v1025 = v26 && v1024 == v25;
  if (v1025 || (sub_1C44306B4(v1023, v1024) & 1) != 0)
  {
    goto LABEL_205;
  }

  if (qword_1EDDFD1C8 != -1)
  {
    swift_once();
  }

  v1026 = sub_1C44008C8(*(v12 + 1304), &qword_1EDDFD1D0);
  v1028 = v26 && v1027 == v25;
  if (v1028 || (sub_1C44306B4(v1026, v1027) & 1) != 0)
  {
    goto LABEL_205;
  }

  if (qword_1EDDFD1A0 != -1)
  {
    swift_once();
  }

  v1029 = sub_1C44008C8(*(v12 + 1304), &qword_1EDDFD1A8);
  v1031 = v26 && v1030 == v25;
  if (v1031 || (sub_1C44306B4(v1029, v1030) & 1) != 0)
  {
LABEL_205:
    v1399 = *(v12 + 2573);
    v1032 = *(v12 + 1576);
    v1293 = *(v12 + 1312);
    v1033 = *(v12 + 1296);
    v1291 = *(v12 + 1032);
    v1034 = *(v12 + 1016);
    v1408 = *(v12 + 968);
    v1446 = *(v12 + 960);
    v1295 = *(v12 + 816);
    v1292 = *(v12 + 808);
    v1297 = *(v12 + 552);
    v1035 = *(v12 + 536);
    v1431 = v1035;
    v1437 = *(v12 + 544);
    sub_1C440741C();
    v1420 = v1036;
    sub_1C447E970(v1037, v1038);
    sub_1C456902C(&qword_1EC0B8CE8, &unk_1C4F0E120);
    v1039 = swift_allocObject();
    sub_1C4432614(v1039, xmmword_1C4F2C2A0);
    sub_1C4471988(v1437, v1033);
    sub_1C4EFCEF8();
    sub_1C441346C();
    sub_1C4471988(v1035, v1032);
    v1040 = type metadata accessor for Blocker(0);
    v1039[3].n128_u64[1] = v1040;
    sub_1C4403494();
    v1315 = sub_1C4471C58(v1041, v1042, &protocol conformance descriptor for Blocker);
    v1388 = v1039;
    v1039[4].n128_u64[0] = v1315;
    v1043 = sub_1C4422F90(&v1039[2]);
    sub_1C440AEDC();
    v1044 = sub_1C4410CBC();
    sub_1C4471988(v1044, v1045);
    v1349 = v1408[2];
    v1046 = sub_1C4459BC0(v1040[5]);
    v1047(v1046);
    sub_1C44D4544();
    v1048 = v1032;
    sub_1C4471988(v1032, v1049);
    v1050 = sub_1C441E57C();
    sub_1C4471988(v1050, v1051);
    sub_1C448177C();
    sub_1C447F854(v1052);
    v1355 = v1032;
    v1053 = sub_1C440C60C();
    v1055 = sub_1C44829A4(v1053, v1054);
    sub_1C447E970(v1048, v1420);
    v1336 = v1408[1];
    v1336(v1034, v1446);
    *(v1043 + v1040[10]) = v1055;
    *(v1043 + v1040[11]) = v1399;

    sub_1C441FE54();
    v1379 = v1056;
    sub_1C447E970(v1033, v1057);
    sub_1C443F6C8();
    *(v1043 + v1058) = 0;
    v1059 = sub_1C447E320();
    sub_1C4471988(v1059, v1060);
    sub_1C49E1D48();
    sub_1C4EFCEF8();
    v1061 = type metadata accessor for PairGenerator(0);
    v1388[12] = v1061;
    v1062 = v1061;
    sub_1C43FDB14();
    v1322 = sub_1C4471C58(v1063, v1064, &protocol conformance descriptor for PairGenerator);
    v1388[13] = v1322;
    sub_1C4422F90(v1388 + 9);
    sub_1C49E1BD8();
    v1067 = sub_1C4426CB8(v1065, v1066);
    sub_1C44805D4(v1067);
    sub_1C4472068(v1055, v1388 + v1062[5]);
    v1068 = v1408[4];
    v1069 = sub_1C4459BC0(v1062[6]);
    v1070(v1069);
    v1308 = v1062;
    *(v1388 + v1062[7]) = v1399;
    sub_1C4423C50();
    sub_1C447E970(v1033, v1379);
    sub_1C49E1BCC();
    v1071 = sub_1C4414A08();
    sub_1C4471988(v1071, v1072);
    v1073 = sub_1C4424948();
    sub_1C4471988(v1073, v1074);
    v1075 = type metadata accessor for WalletOrderMatcher(0);
    v1388[17] = v1075;
    v1076 = sub_1C4471C58(&qword_1EDDE5900, type metadata accessor for WalletOrderMatcher, &protocol conformance descriptor for WalletOrderMatcher);
    v1077 = sub_1C4488B14(v1076);
    sub_1C449AEEC(v1077);
    sub_1C4EFCEF8();
    sub_1C4472068(v1033, v1077);
    sub_1C4472068(v1055, v1077 + *(v1075 + 20));
    *(v1077 + *(v1075 + 24)) = v1399;
    v1078 = sub_1C4414A08();
    sub_1C4464B84(v1078, v1079);
    sub_1C4EFD428();
    sub_1C4471988(v1035, v1055);
    v1388[22] = v1040;
    v1388[23] = v1315;
    v1080 = sub_1C4422F90(v1388 + 19);
    sub_1C444197C(v1080);
    v1081 = sub_1C44AE8D4();
    v1349(v1081, v1034, v1446);
    v1082 = sub_1C44569C0();
    sub_1C4471988(v1082, v1083);
    *(v1075 + v1040[7]) = 0;
    v1084 = sub_1C444AD48();
    sub_1C4471988(v1084, v1085);
    sub_1C444C2D0();
    sub_1C448177C();
    sub_1C447F854(v1086);
    v1087 = sub_1C44CD058();
    sub_1C44829A4(v1087, v1088);
    sub_1C447E970(v1055, v1420);
    v1336(v1034, v1446);
    sub_1C4409F24();
    sub_1C44A1D94();
    v1089 = sub_1C443E3A8();
    sub_1C447E970(v1089, v1090);
    v1091 = sub_1C444FE74();
    sub_1C4464B84(v1091, v1092);
    sub_1C49E1CFC();
    sub_1C4471988(v1093, v1094);
    sub_1C4EFD428();
    v1388[27] = v1308;
    v1388[28] = v1322;
    sub_1C4422F90(v1388 + 24);
    sub_1C49E1BE4();
    v1097 = sub_1C4426CB8(v1095, v1096);
    sub_1C4471988(v1097, v1075);
    v1098 = sub_1C444C020();
    sub_1C4472068(v1098, v1099);
    sub_1C4460AB8();
    v1100();
    *(v1075 + v1308[7]) = v1399;
    sub_1C4423C50();
    v1101 = sub_1C443E3A8();
    sub_1C447E970(v1101, v1102);
    sub_1C49E1BCC();
    v1103 = sub_1C4409D98();
    sub_1C4471988(v1103, v1104);
    sub_1C49E1D48();
    sub_1C4EFD428();
    v1105 = type metadata accessor for PassthroughMatcher(0);
    v1388[32] = v1105;
    sub_1C442FF54();
    v1306 = sub_1C4471C58(v1106, v1107, &protocol conformance descriptor for PassthroughMatcher);
    v1388[33] = v1306;
    v1108 = sub_1C4422F90(v1388 + 29);
    v1109 = sub_1C440BB4C();
    sub_1C4472068(v1109, v1110);
    *(v1108 + *(v1105 + 20)) = v1399;
    v1111 = sub_1C444AD48();
    sub_1C4472068(v1111, v1112);
    sub_1C44A1C58();
    v1113();
    v1114 = sub_1C4409D98();
    sub_1C4464B84(v1114, v1115);
    _s24IntelligencePlatformCore19OrganizationMatcherV11entityClass0aB006EntityG0Vvg_0();
    sub_1C49E1CFC();
    sub_1C4471988(v1116, v1117);
    v1388[37] = v1040;
    v1388[38] = v1315;
    v1118 = sub_1C4422F90(v1388 + 34);
    sub_1C444197C(v1118);
    v1119 = sub_1C44AE8D4();
    v1349(v1119, v1034, v1446);
    v1120 = sub_1C444C020();
    sub_1C4471988(v1120, v1121);
    v1122 = sub_1C441E57C();
    sub_1C4471988(v1122, v1123);
    sub_1C444C2D0();
    sub_1C448177C();
    sub_1C447F854(v1124);
    v1125 = sub_1C43FCE84();
    sub_1C44829A4(v1125, v1126);
    sub_1C447E970(v1399, v1420);
    v1127 = sub_1C445CCD4();
    v1128(v1127);
    sub_1C4409F24();
    sub_1C44A1D94();
    v1129 = sub_1C443E3A8();
    sub_1C447E970(v1129, v1130);
    sub_1C443F6C8();
    *(v1108 + v1131) = 1;
    sub_1C4440D6C();
    sub_1C4471988(v1431, v1399);
    _s24IntelligencePlatformCore19OrganizationMatcherV11entityClass0aB006EntityG0Vvg_0();
    v1388[42] = v1308;
    v1388[43] = v1322;
    sub_1C4422F90(v1388 + 39);
    sub_1C49E1BD8();
    *(v1132 + v1133) = 1;
    v1134 = sub_1C4410CBC();
    sub_1C4471988(v1134, v1135);
    v1136 = sub_1C444C020();
    sub_1C4472068(v1136, v1137);
    v1068(v1108 + v1308[6], v1034, v1446);
    sub_1C441DDA4(v1308[7]);
    sub_1C447E970(v1033, v1379);
    *(v1108 + v1308[9]) = v1308;
    v1138 = sub_1C43FD388();
    sub_1C4471988(v1138, v1139);
    sub_1C4471988(v1431, v1355);
    _s24IntelligencePlatformCore19OrganizationMatcherV11entityClass0aB006EntityG0Vvg_0();
    v1388[47] = v1105;
    v1388[48] = v1306;
    v1140 = sub_1C4422F90(v1388 + 44);
    v1141 = sub_1C43FE99C();
    sub_1C4472068(v1141, v1142);
    *(v1140 + *(v1105 + 20)) = v1055;
    v1143 = sub_1C444AD48();
    sub_1C4472068(v1143, v1144);
    sub_1C4507B5C();
    sub_1C44A1C58();
    v1145();
    v1146 = sub_1C43FD388();
    sub_1C4471988(v1146, v1147);
    sub_1C4EFD4C8();
    sub_1C4471988(v1431, v1355);
    v1388[52] = v1040;
    v1388[53] = v1315;
    v1148 = sub_1C4422F90(v1388 + 49);
    sub_1C444197C(v1148);
    v1149 = sub_1C44AE8D4();
    v1349(v1149, v1034, v1446);
    sub_1C44D4544();
    sub_1C4471988(v1355, v1150);
    v1151 = sub_1C441E57C();
    sub_1C4471988(v1151, v1152);
    sub_1C444C2D0();
    sub_1C448177C();
    sub_1C447F854(v1153);
    v1154 = sub_1C4409D98();
    sub_1C44829A4(v1154, v1155);
    sub_1C447E970(v1355, v1420);
    v1336(v1034, v1446);
    sub_1C4409F24();
    sub_1C44A1D94();
    v1156 = sub_1C443E3A8();
    sub_1C447E970(v1156, v1157);
    v1158 = sub_1C444FE74();
    sub_1C4464B84(v1158, v1159);
    sub_1C4455954();
    sub_1C4471988(v1160, v1161);
    sub_1C4EFD4C8();
    v1388[57] = v1308;
    v1388[58] = v1322;
    sub_1C4422F90(v1388 + 54);
    sub_1C49E1BD8();
    v1164 = sub_1C4426CB8(v1162, v1163);
    sub_1C4471988(v1164, v1140);
    v1165 = sub_1C44EB8C0();
    sub_1C4472068(v1165, v1166);
    sub_1C44A14C0(v1308[6]);
    sub_1C4460AB8();
    v1167();
    sub_1C441DDA4(v1308[7]);
    v1168 = sub_1C443E3A8();
    sub_1C447E970(v1168, v1169);
    *(v1140 + v1308[9]) = v1308;
    v1170 = sub_1C4409D98();
    sub_1C4471988(v1170, v1171);
    sub_1C49E1D68();
    sub_1C4EFD4C8();
    v1388[62] = v1105;
    v1388[63] = v1306;
    v1172 = sub_1C4422F90(v1388 + 59);
    v1173 = sub_1C4401D48();
    sub_1C4472068(v1173, v1174);
    *(v1172 + *(v1105 + 20)) = v1446;
    v1175 = sub_1C444AD48();
    sub_1C4472068(v1175, v1176);
    sub_1C49E1BF0();
    sub_1C44A1C58();
    v1177();
    v1178 = sub_1C4409D98();
    sub_1C4471988(v1178, v1179);
    sub_1C4EFD218();
    sub_1C4471988(v1431, v1308);
    v1388[67] = v1040;
    v1388[68] = v1315;
    v1180 = sub_1C4422F90(v1388 + 64);
    sub_1C444197C(v1180);
    v1181 = sub_1C4459BC0(v1040[5]);
    (v1349)(v1181);
    sub_1C44D4544();
    sub_1C4471988(v1308, v1182);
    v1183 = sub_1C441E57C();
    sub_1C4471988(v1183, v1184);
    sub_1C448177C();
    sub_1C447F854(v1185);
    v1186 = sub_1C440C60C();
    sub_1C44829A4(v1186, v1187);
    sub_1C447E970(v1308, v1420);
    v1188 = sub_1C445CCD4();
    v1189(v1188);
    sub_1C4409F24();

    v1190 = sub_1C443E3A8();
    sub_1C447E970(v1190, v1191);
    v1192 = sub_1C444FE74();
    sub_1C4471988(v1192, v1193);
    sub_1C49E1D68();
    sub_1C4EFD218();
    v1388[72] = v1308;
    v1388[73] = v1322;
    sub_1C4422F90(v1388 + 69);
    sub_1C49E1BD8();
    v1196 = sub_1C4426CB8(v1194, v1195);
    sub_1C44805D4(v1196);
    v1197 = sub_1C44EB8C0();
    sub_1C4472068(v1197, v1198);
    sub_1C4460AB8();
    v1199();
    sub_1C441DDA4(v1308[7]);
    sub_1C447E970(v1033, v1379);
    *(v1172 + v1308[9]) = v1308;
    v1200 = sub_1C447E320();
    sub_1C4471988(v1200, v1201);
    sub_1C49E1CFC();
    sub_1C4471988(v1202, v1203);
    sub_1C4EFD218();
    v1388[77] = v1105;
    v1388[78] = v1306;
    v1204 = sub_1C4422F90(v1388 + 74);
    sub_1C44A3AB8();
    sub_1C4472068(v1205, v1206);
    *(v1204 + *(v1105 + 20)) = v1308;
    v1207 = sub_1C444AD48();
    sub_1C4472068(v1207, v1208);
    sub_1C44A1C58();
    v1209();
    sub_1C4440D6C();
    sub_1C4EFCEE8();
    sub_1C4471988(v1431, v1355);
    v1388[82] = v1040;
    v1388[83] = v1315;
    v1210 = sub_1C4422F90(v1388 + 79);
    sub_1C444197C(v1210);
    v1211 = sub_1C44AE8D4();
    v1349(v1211, v1420, v1446);
    v1212 = sub_1C44569C0();
    sub_1C4471988(v1212, v1213);
    v1214 = sub_1C441E57C();
    sub_1C4471988(v1214, v1215);
    sub_1C444C2D0();
    sub_1C448177C();
    sub_1C447F854(v1216);
    sub_1C44829A4(v1355, v1033);
    sub_1C447E970(v1355, v1420);
    v1336(v1034, v1446);
    sub_1C4409F24();
    sub_1C44A1D94();
    v1217 = sub_1C443E3A8();
    sub_1C447E970(v1217, v1218);
    sub_1C443F6C8();
    *(v1204 + v1219) = 1;
    sub_1C4440D6C();
    sub_1C4455954();
    sub_1C4471988(v1220, v1221);
    sub_1C4EFCEE8();
    v1388[87] = v1308;
    v1388[88] = v1322;
    sub_1C4422F90(v1388 + 84);
    sub_1C49E1BE4();
    *(v1222 + v1223) = 1;
    v1224 = sub_1C4410CBC();
    sub_1C4471988(v1224, v1225);
    v1226 = sub_1C444C020();
    sub_1C4472068(v1226, v1227);
    v1068(v1204 + v1308[6], v1034, v1446);
    sub_1C441DDA4(v1308[7]);
    sub_1C447E970(v1033, v1379);
    sub_1C49E1BCC();
    v1228 = sub_1C447E320();
    sub_1C4471988(v1228, v1229);
    sub_1C4471988(v1431, v1355);
    sub_1C4EFCEE8();
    v1388[92] = v1105;
    v1388[93] = v1306;
    v1230 = sub_1C4422F90(v1388 + 89);
    sub_1C44A3AB8();
    sub_1C4472068(v1231, v1232);
    *(v1230 + *(v1105 + 20)) = v1308;
    v1233 = sub_1C444AD48();
    sub_1C4472068(v1233, v1234);
    v1235 = sub_1C49E1BF0();
    (v1068)(v1235);
    v1236 = sub_1C447E320();
    sub_1C4471988(v1236, v1237);
    sub_1C4EFD4D8();
    sub_1C49E1CFC();
    sub_1C4471988(v1238, v1239);
    v1388[97] = v1040;
    v1388[98] = v1315;
    v1240 = sub_1C4422F90(v1388 + 94);
    sub_1C444197C(v1240);
    v1241 = sub_1C4459BC0(v1040[5]);
    (v1349)(v1241);
    v1242 = sub_1C444C020();
    sub_1C4471988(v1242, v1243);
    v1244 = sub_1C441E57C();
    sub_1C4471988(v1244, v1245);
    sub_1C444C2D0();
    sub_1C448177C();
    sub_1C447F854(v1246);
    v1247 = sub_1C43FCE84();
    sub_1C44829A4(v1247, v1248);
    sub_1C447E970(v1105, v1420);
    v1249 = sub_1C445CCD4();
    v1250(v1249);
    sub_1C4409F24();
    sub_1C44A1D94();
    v1251 = sub_1C443E3A8();
    sub_1C447E970(v1251, v1252);
    v1253 = sub_1C444FE74();
    sub_1C4471988(v1253, v1254);
    sub_1C4471988(v1431, v1105);
    sub_1C4EFD4D8();
    v1388[102] = v1308;
    v1388[103] = v1322;
    v1255 = sub_1C4422F90(v1388 + 99);
    v1256 = sub_1C4426CB8(v1255, v1308[8]);
    sub_1C4471988(v1256, v1255);
    sub_1C4472068(v1105, v1255 + v1308[5]);
    sub_1C4460AB8();
    v1257();
    *(v1255 + v1308[7]) = v1399;
    sub_1C4423C50();
    v1258 = sub_1C443E3A8();
    sub_1C447E970(v1258, v1259);
    sub_1C49E1BCC();
    v1260 = sub_1C447E320();
    sub_1C4471988(v1260, v1261);
    sub_1C4455954();
    sub_1C4471988(v1262, v1263);
    sub_1C4EFD4D8();
    v1388[107] = v1105;
    v1388[108] = v1306;
    v1264 = sub_1C4422F90(v1388 + 104);
    sub_1C44A3AB8();
    sub_1C4472068(v1265, v1266);
    *(v1264 + *(v1105 + 20)) = v1399;
    v1267 = sub_1C444AD48();
    sub_1C4472068(v1267, v1268);
    sub_1C4507B5C();
    sub_1C4460AB8();
    v1269();
    sub_1C4471988(v1437, v1291);
    sub_1C4471988(v1431, v1293);
    v1388[112] = v1292;
    sub_1C44174EC();
    v1388[113] = sub_1C4471C58(v1270, v1271, &protocol conformance descriptor for Resolver);
    v1272 = sub_1C4422F90(v1388 + 109);
    v1295[v1292[6]] = 4;
    sub_1C4471988(v1291, v1295);
    sub_1C4471988(v1293, &v1295[v1292[5]]);
    v1295[v1292[7]] = v1399;
    v1273 = sub_1C4EF9E48();
    sub_1C44102A4(v1297, v1274, v1275, v1273);
    sub_1C448895C();
    if (v1295)
    {

      v1276 = 1;
    }

    else
    {
      v1276 = 0;
    }

    v1277 = *(v512 + 1032);
    v1278 = *(v512 + 816);
    sub_1C49E19C8();
    v67 = *(v512 + 528);
    sub_1C440741C();
    sub_1C447E970(v1279, v1280);
    sub_1C441FE54();
    sub_1C447E970(v1277, v1281);
    sub_1C4EFF1C8();
    v1282 = sub_1C49E18D8();
    sub_1C440BAA8(v1282, v1276, 1, v1283);
    v1284 = sub_1C448E070();
    sub_1C4482F3C(v1284, v1285);
    sub_1C440E538();
    v843 = v1278;
    v844 = v1272;
    goto LABEL_141;
  }

  *(v12 + 2560) = *(v12 + 2573);
  v1286 = swift_task_alloc();
  *(v12 + 2536) = v1286;
  *v1286 = v12;
  v1286[1] = sub_1C49DB7FC;
  sub_1C43FEA3C();

  sub_1C49E0D78(v1287, v1288, v1289);
}

uint64_t sub_1C447CB3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1C447CB9C(uint64_t a1, uint64_t a2)
{
  v4 = (*(v2 - 120) + *(*(v2 - 136) + 44));
  *v4 = a1;
  v4[1] = a2;
  *(v2 - 65) = 8;

  return sub_1C444C16C();
}

uint64_t sub_1C447CBF0@<X0>(uint64_t a1@<X8>)
{
  v7 = *(v4 - 96);
  v6 = *(v4 - 88);
  *(a1 - 48) = v1;
  *(a1 - 40) = v7;
  *(a1 - 32) = v6;
  *(a1 - 24) = v2;
  *(a1 - 16) = v3;
}

uint64_t sub_1C447CC14(uint64_t a1)
{

  return sub_1C4420C3C(a1, v1, v2);
}

double sub_1C447CC68()
{
  *(v0 - 112) = 0;
  result = 0.0;
  *(v0 - 144) = 0u;
  *(v0 - 128) = 0u;
  return result;
}

uint64_t sub_1C447CCC4()
{

  return sub_1C4D4E63C(v0, type metadata accessor for WalletEmailOrderStructs.OrderPaymentRelationshipType);
}

void sub_1C447CCF8()
{
  v2 = (v1 + *(v0 + 32));
  *v2 = 0;
  v2[1] = 0;
}

void sub_1C447CD40(uint64_t a1)
{

  sub_1C44C9240(a1, v2, 1, v1);
}

uint64_t sub_1C447CD80@<X0>(uint64_t a1@<X8>)
{
  *(a1 - 256) = v1;

  return sub_1C46ACB44();
}

uint64_t sub_1C447CDD0(uint64_t a1)
{

  return sub_1C4F019A8();
}

uint64_t sub_1C447CDF0@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 256) = v1;
  *(v3 - 176) = a1 + 8;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C447CE10()
{
  v4 = v0 + *(v1 + 20);

  return sub_1C4472068(v2, v4);
}

uint64_t sub_1C447CE30()
{

  return sub_1C4EFD548();
}

void sub_1C447CEB4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_1C447CED4@<X0>(uint64_t a1@<X8>, void (*a2)(void)@<X2>)
{

  return sub_1C448D30C(v4 + a1, v3 + v2, a2);
}

uint64_t sub_1C447CEFC(uint64_t a1, uint64_t a2)
{

  return sub_1C4F026C8();
}

uint64_t *sub_1C447CF3C()
{
  STACK[0x328] = v0;
  *(v0 + 56) = *&STACK[0x300];

  return sub_1C4422F90((v0 + 32));
}

uint64_t sub_1C447CF5C()
{

  return sub_1C440962C((v0 + 160));
}

uint64_t sub_1C447CF8C()
{

  return swift_beginAccess();
}

void sub_1C447CFFC()
{
  v2 = *(v0 + 968);
  *(v1 - 120) = *(v0 + 1024);
  *(v1 - 112) = v2;
}

uint64_t sub_1C447D014()
{
  *(v1 - 184) = *(v0 + 400);

  return sub_1C44E3634(v1 - 240);
}

void sub_1C447D030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(v6 - 320);

  sub_1C44E7634(a1, a2, a3, a4, a5, a6, v8);
}

uint64_t sub_1C447D054()
{
}

uint64_t sub_1C447D0A8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v8 = v5 + *(v6 - 88);

  return sub_1C444088C(v4, v8, a3, a4);
}

uint64_t type metadata accessor for StandardEntityFusion(uint64_t a1)
{
  result = qword_1EDDF4640;
  if (!qword_1EDDF4640)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for ContactsPersonPhase(uint64_t a1)
{
  result = qword_1EDDF4D00;
  if (!qword_1EDDF4D00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C447D15C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0C2A90, &unk_1C4F16D30);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1C447D1CC()
{
  sub_1C441DC98();
  if (v4 && (v5 = v3, v6 = sub_1C445FAA8(v1, v2), (v7 & 1) != 0))
  {
    sub_1C447D220(*(v5 + 56) + 8 * v6, v0);
    v8 = 0;
  }

  else
  {
    *v0 = 0;
    v8 = 1;
  }

  *(v0 + 8) = v8;
}

uint64_t *sub_1C447D2E4(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = *v4;
  sub_1C4EF98F8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBCC4();
  v11 = v10 - v9;
  v4[14] = a1;
  v4[15] = a2;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = [objc_opt_self() bundleForClass_];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v14 = sub_1C4F01108();

  sub_1C447DC44(v14, 1852797802, 0xE400000000000000, v13);
  v16 = v15;

  if (!v16)
  {
    sub_1C4EFCEA8();
    sub_1C4418F74();
    v28 = sub_1C45776F4(v26, v27, MEMORY[0x1E69A9290]);
    v29 = sub_1C440F170(v28);
    sub_1C4416CB4(v29, v30);
    sub_1C440DD48();
    (*(v31 + 104))();
    swift_willThrow();

    goto LABEL_6;
  }

  sub_1C4EF9838();

  v17 = sub_1C447DCE0(v11);
  if (v3)
  {

LABEL_4:
    sub_1C4EFCEA8();
    sub_1C4418F74();
    v20 = sub_1C45776F4(v18, v19, MEMORY[0x1E69A9290]);
    v21 = sub_1C440F170(v20);
    sub_1C4416CB4(v21, v22);
    sub_1C440DD48();
    (*(v23 + 104))();
    swift_willThrow();

    v24 = sub_1C43FFB50();
    v25(v24);
    goto LABEL_6;
  }

  v33 = v17;
  if (!v17)
  {
    goto LABEL_4;
  }

  if (!*(v17 + 16))
  {

    goto LABEL_4;
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C445FAA8(0x5365727574616566, 0xEB00000000657A69);
  sub_1C4402A9C();
  if (v7 & 1) != 0 && (sub_1C44735D4(0x5365727574616566, 0xEB00000000657A69, v33), v34) && (v35 = sub_1C4F01108(), , v36 = [v35 integerValue], v35, v4[4] = v36, *(v33 + 16)) && (_s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0(), v37 = sub_1C440F190(), sub_1C445FAA8(v37, v38), sub_1C4402A9C(), (v35) && (v39 = sub_1C440F190(), sub_1C44735D4(v39, v40, v33), v41) && (v42 = sub_1C4F01108(), , v43 = objc_msgSend(v42, sel_integerValue), v42, v4[5] = v43, *(v33 + 16)) && (_s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0(), sub_1C445FAA8(0x6C6F687365726874, 0xE900000000000064), sub_1C4402A9C(), (v42) && (sub_1C44735D4(0x6C6F687365726874, 0xE900000000000064, v33), v44) && (v45 = sub_1C4F01108(), , objc_msgSend(v45, sel_floatValue), v47 = v46, v45, *(v4 + 12) = v47, *(v33 + 16)) && (_s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0(), sub_1C445FAA8(0x6E6F6973726576, 0xE700000000000000), sub_1C4402A9C(), (v45) && (v48 = sub_1C44735D4(0x6E6F6973726576, 0xE700000000000000, v33), v49))
  {
    v4[7] = v48;
    v4[8] = v49;
    if (*(v33 + 16) && (_s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0(), sub_1C445FAA8(1701667182, 0xE400000000000000), sub_1C4402A9C(), (v45 & 1) != 0) && (v50 = sub_1C44735D4(1701667182, 0xE400000000000000, v33), v51))
    {
      v4[9] = v50;
      v4[10] = v51;
      if (*(v33 + 16) && (_s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0(), v52 = sub_1C440F190(), sub_1C445FAA8(v52, v53), sub_1C4402A9C(), (v45 & 1) != 0) && (v54 = sub_1C440F190(), v56 = sub_1C44735D4(v54, v55, v33), v57))
      {
        v4[11] = v56;
        v4[12] = v57;
        if (*(v33 + 16))
        {
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C445FAA8(0x636F765F72616863, 0xEA00000000006261);
          sub_1C4402A9C();
          if (v45)
          {
            v85 = sub_1C44735D4(0x636F765F72616863, 0xEA00000000006261, v33);
            if (v58)
            {
              v59 = v58;
              if (*(v33 + 16) && (_s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0(), sub_1C445FAA8(0x61636F765F657062, 0xE900000000000062), sub_1C4402A9C(), (v45 & 1) != 0))
              {
                v84 = sub_1C44735D4(0x61636F765F657062, 0xE900000000000062, v33);
                v61 = v60;

                if (v61)
                {
                  sub_1C456902C(&qword_1EC0B8530, qword_1C4F0CF70);
                  inited = swift_initStackObject();
                  *(inited + 16) = xmmword_1C4F0CE60;
                  *(inited + 32) = 0x636F765F72616863;
                  *(inited + 40) = 0xEA00000000006261;
                  *(inited + 48) = v85;
                  *(inited + 56) = v59;
                  *(inited + 64) = 0x61636F765F657062;
                  *(inited + 72) = 0xE900000000000062;
                  *(inited + 80) = v84;
                  *(inited + 88) = v61;
                  sub_1C4F00F28();
                  v63 = sub_1C4EFE278();
                  sub_1C44099C4(v63);
                  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                  v4[13] = sub_1C4EFE268();
                  v86 = v4[14];
                  v87 = v4[15];
                  swift_bridgeObjectRetain_n();

                  MEMORY[0x1C6940010](0x726464612D29282DLL, 0xEB00000000737365);

                  v82 = sub_1C43FFB50();
                  v83(v82);
                  v4[2] = v86;
                  v4[3] = v87;
                  return v4;
                }
              }

              else
              {
              }
            }
          }
        }

        v72 = 1;
        v73 = 1;
      }

      else
      {

        v73 = 0;
        v72 = 1;
      }
    }

    else
    {

      v72 = 0;
      v73 = 0;
    }

    sub_1C4EFCEA8();
    sub_1C4418F74();
    v76 = sub_1C45776F4(v74, v75, MEMORY[0x1E69A9290]);
    v77 = sub_1C440F170(v76);
    sub_1C4416CB4(v77, v78);
    sub_1C440DD48();
    (*(v79 + 104))();
    swift_willThrow();

    v80 = sub_1C43FFB50();
    v81(v80);

    if (v72)
    {
    }

    if (v73)
    {
    }
  }

  else
  {

    sub_1C4EFCEA8();
    sub_1C4418F74();
    v66 = sub_1C45776F4(v64, v65, MEMORY[0x1E69A9290]);
    v67 = sub_1C440F170(v66);
    sub_1C4416CB4(v67, v68);
    sub_1C440DD48();
    (*(v69 + 104))();
    swift_willThrow();

    v70 = sub_1C43FFB50();
    v71(v70);
  }

LABEL_6:

  swift_deallocPartialClassInstance();
  return v4;
}

uint64_t sub_1C447DC44(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_1C4F01108();

  v7 = [a4 pathForResource:a1 ofType:v6];

  if (!v7)
  {
    return 0;
  }

  v8 = sub_1C4F01138();

  return v8;
}

uint64_t sub_1C447DCE0(uint64_t a1)
{
  v3 = sub_1C4EF98F8();
  sub_1C43FCDF8();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBCC4();
  v9 = v8 - v7;
  v10 = sub_1C4F00978();
  sub_1C43FCDF8();
  v35 = v11;
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBCC4();
  v15 = v14 - v13;
  v16 = sub_1C4EF9938();
  v36 = v15;
  if (v1)
  {
    sub_1C4F00158();
    (*(v5 + 16))(v9, a1, v3);
    v22 = v1;
    v23 = sub_1C4F00968();
    v24 = sub_1C4F01CD8();

    if (os_log_type_enabled(v23, v24))
    {
      v34 = v10;
      v25 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v25 = 136315394;
      sub_1C45776F4(&qword_1EDDFF9E8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      v26 = sub_1C4F02858();
      v28 = v27;
      (*(v5 + 8))(v9, v3);
      v29 = sub_1C441D828(v26, v28, &v37);

      *(v25 + 4) = v29;
      *(v25 + 12) = 2080;
      swift_getErrorValue();
      v30 = sub_1C4F02A38();
      v32 = sub_1C441D828(v30, v31, &v37);

      *(v25 + 14) = v32;
      _os_log_impl(&dword_1C43F8000, v23, v24, "Error: Unable to read file %s with error %s", v25, 0x16u);
      swift_arrayDestroy();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();

      (*(v35 + 8))(v36, v34);
    }

    else
    {

      (*(v5 + 8))(v9, v3);
      (*(v35 + 8))(v15, v10);
    }

    return 0;
  }

  else
  {
    v18 = v16;
    v19 = v17;
    v20 = sub_1C4EF9348();
    sub_1C44099C4(v20);
    sub_1C4EF9338();
    v21 = objc_autoreleasePoolPush();
    sub_1C447323C();
    sub_1C4EF9328();
    objc_autoreleasePoolPop(v21);

    sub_1C4434000(v18, v19);
    return v37;
  }
}

uint64_t type metadata accessor for AssetRegistryRemoteBackendInProcess(uint64_t a1)
{
  result = qword_1EDDFD458;
  if (!qword_1EDDFD458)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C447E144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C442F0C4();
  sub_1C444B080();
  v13 = v12;
  v15 = sub_1C440DFB8(v12, v14);
  sub_1C445FAA8(v15, v16);
  sub_1C442C5D8();
  if (v17)
  {
    __break(1u);
LABEL_13:
    result = sub_1C4F029F8();
    __break(1u);
    return result;
  }

  sub_1C4460A24();
  sub_1C456902C(&qword_1EC0B8DB8, &qword_1C4F0E350);
  sub_1C43FD314();
  if (sub_1C4F02458())
  {
    sub_1C444C21C();
    sub_1C44331E4();
    if (!v18)
    {
      goto LABEL_13;
    }
  }

  if (v11)
  {
    sub_1C4422220();

    return sub_1C4485A04(v19, v20);
  }

  else
  {
    v23 = sub_1C44158DC();
    sub_1C457DCCC(v23, v24, v10, v13, v25);
    sub_1C4422220();

    return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }
}

uint64_t sub_1C447E23C@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 232) = a1;
  v4 = v1[1];
  *(v2 - 128) = *v1;
  *(v2 - 120) = v4;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

void sub_1C447E260()
{
  *(v4 - 112) = v2;
  *(v4 - 104) = v1;
  *(v4 - 128) = v0;
  *(v4 - 120) = v3;
}

uint64_t sub_1C447E290()
{

  return sub_1C4EFEEF8();
}

uint64_t sub_1C447E2E8()
{

  return sub_1C4EF9368();
}

uint64_t sub_1C447E300()
{
  v2 = *(v0 - 656);
  v3 = *(v0 - 664);

  return sub_1C44239FC(v2, v3);
}

uint64_t sub_1C447E350()
{
  v3 = *(v1 - 88);

  return sub_1C4471BAC(v0, v3);
}

uint64_t sub_1C447E384()
{
}

uint64_t sub_1C447E3BC(uint64_t a1)
{

  return sub_1C4F02938();
}

uint64_t sub_1C447E3F4(uint64_t a1)
{
  *(v2 - 160) = v1;

  return sub_1C4F02778();
}

id sub_1C447E480(uint64_t a1, const char *a2)
{
  *(v4 - 272) = v3;

  return [v3 a2];
}

char *sub_1C447E4A0(uint64_t a1, uint64_t a2)
{

  return sub_1C461950C(v2 + 16, a2, v2);
}

uint64_t sub_1C447E4C8()
{

  return sub_1C4EFEEF8();
}

uint64_t sub_1C447E4E0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = (v3 + a3);
  *v4 = result;
  v4[1] = a2;
  return result;
}

uint64_t sub_1C447E514@<X0>(uint64_t a1@<X8>)
{
  sub_1C4F00318();
  result = type metadata accessor for NicknameEntry(0);
  v3 = (a1 + *(result + 20));
  *v3 = 0;
  v3[1] = 0;
  v4 = (a1 + *(result + 24));
  *v4 = 0;
  v4[1] = 0;
  return result;
}

uint64_t sub_1C447E558()
{
  sub_1C4411B70();
  while (1)
  {
    result = sub_1C4F00378();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v7 = sub_1C4406AC8();
      sub_1C44801DC(v7, v8, v9, v10);
    }

    else if (result == 1)
    {
      v3 = sub_1C4406AC8();
      sub_1C4480178(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t sub_1C447E5D8(uint64_t a1, _BYTE *a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v5 = type metadata accessor for Fuser(0);
  sub_1C43FBD18(v5);
  *(v3 + 32) = swift_task_alloc();
  v6 = type metadata accessor for Linker(0);
  sub_1C43FBD18(v6);
  *(v3 + 40) = swift_task_alloc();
  v7 = type metadata accessor for RelationshipFullSourceIngestor(0);
  *(v3 + 48) = v7;
  sub_1C43FBD18(v7);
  *(v3 + 56) = swift_task_alloc();
  v8 = type metadata accessor for Source(0);
  *(v3 + 64) = v8;
  sub_1C43FBD18(v8);
  *(v3 + 72) = swift_task_alloc();
  *(v3 + 80) = swift_task_alloc();
  v9 = type metadata accessor for PhaseStores(0);
  sub_1C43FBD18(v9);
  *(v3 + 88) = swift_task_alloc();
  *(v3 + 96) = swift_task_alloc();
  *(v3 + 121) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1C4480EA8, 0, 0);
}

uint64_t type metadata accessor for Fuser(uint64_t a1)
{
  result = qword_1EDDF0EA8;
  if (!qword_1EDDF0EA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C447E790(uint64_t a1, unint64_t a2)
{

  return sub_1C4498FD8(a1, a2, v2);
}

uint64_t sub_1C447E7AC(uint64_t a1)
{

  return sub_1C4EFF808();
}

uint64_t sub_1C447E7C4()
{

  return sub_1C4F02678();
}

void sub_1C447E810()
{
  sub_1C440962C(v0);

  JUMPOUT(0x1C6942830);
}

uint64_t sub_1C447E844()
{
  v3 = (v1 + *(v0 + 32));
  *v3 = 0;
  v3[1] = 0;

  return sub_1C4EFE658();
}

uint64_t sub_1C447E868(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C447E8C0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C447E918(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C447E970(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C447E9C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C447EA28(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C447EA80(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C447EAE0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C447EB38(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C447EB90(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FD3F8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C447EBE4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C447EC3C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C447EC94(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C447ECEC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C447ED44(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C447ED9C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C447EDF4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C447EE4C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C447EEA4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C447EF28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return swift_beginAccess();
}

id sub_1C447EF58()
{
  v6 = *(v0 + v4);
  v7 = *(v1 + v3);

  return [v7 (v2 + 3163)];
}

void sub_1C447EFA8()
{
  *(v2 - 144) = v1 + 16;
  *(v2 - 136) = v0;
  *(v2 - 128) = v1;
  *(v2 - 112) = v1 + 32;
}

uint64_t sub_1C447EFEC(uint64_t a1, uint64_t a2)
{

  return sub_1C4EFD5E8();
}

uint64_t sub_1C447F048@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3 + a3;
  *v4 = result;
  *(v4 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1C447F05C(uint64_t a1)
{
  type metadata accessor for EventStreamsEvent(a1);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_1C447F088()
{

  return sub_1C4EFAD68();
}

uint64_t sub_1C447F0A0()
{
  v5 = *(v3 - 176);

  return sub_1C44CDA30(v0, v5, v1, v2);
}

uint64_t sub_1C447F0D0(uint64_t a1, uint64_t a2)
{
  *(a2 + 16) = 1;
  *(v2 - 104) = a1;

  return swift_willThrow();
}

uint64_t sub_1C447F1E8()
{

  return sub_1C4A26040();
}

uint64_t sub_1C447F204()
{
  *(v0 - 128) = 0;
  *(v0 - 120) = 0xE000000000000000;

  return sub_1C4F02248();
}

uint64_t sub_1C447F224(void *a1)
{
  a1[2] = v1;
  a1[3] = v3;
  a1[4] = v2;
}

uint64_t sub_1C447F244()
{

  return sub_1C4EFEEF8();
}

uint64_t sub_1C447F268()
{
  v3 = *(v1 - 256);

  return sub_1C445FAA8(v0, v3);
}

uint64_t sub_1C447F2A4()
{
  v3 = *(v0 + 16);
  result = v1;
  *(v2 - 544) = v0 + 16;
  *(v2 - 552) = v3;
  return result;
}

uint64_t sub_1C447F344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  return sub_1C442B870(v6, va);
}

uint64_t sub_1C447F35C()
{

  return sub_1C4F00978();
}

__n128 sub_1C447F394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a23, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, __n128 a24, __int128 a25)
{
  result = a24;
  *(a1 + 16) = a24;
  *(a1 + 32) = a25;
  return result;
}

uint64_t sub_1C447F3B8()
{
  v1 = *(v0 + 40);
  sub_1C4409678((v0 + 16), v1);
  return v1;
}

uint64_t sub_1C447F400()
{
  v4 = *(v2 + 20);
  *(v3 - 360) = v0;
  return v1 + v4;
}

uint64_t sub_1C447F42C()
{
  v1 = *(v0 - 320);
  v2 = *(v0 - 128);
  result = *(v2 + v1);
  *(v2 + v1) = *(v0 - 112);
  return result;
}

uint64_t type metadata accessor for Blocker(uint64_t a1)
{
  result = qword_1EDDF0D40;
  if (!qword_1EDDF0D40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C447F500()
{

  return sub_1C4851984();
}

uint64_t sub_1C447F534()
{

  return sub_1C4EF93A8();
}

uint64_t sub_1C447F54C()
{
  v2 = *(v0 - 608);
  v3 = *(v0 - 616);

  return sub_1C44239FC(v2, v3);
}

uint64_t sub_1C447F56C()
{
  v3 = v0[77];
  *(v1 - 176) = v0[78];
  *(v1 - 168) = v3;
  v4 = v0[75];
  *(v1 - 160) = v0[76];
  *(v1 - 152) = v4;
  v5 = v0[73];
  *(v1 - 144) = v0[74];
  *(v1 - 136) = v5;
  v6 = v0[71];
  *(v1 - 128) = v0[72];
  *(v1 - 120) = v6;
  v7 = v0[69];
  *(v1 - 112) = v0[70];
  *(v1 - 104) = v7;
}

uint64_t sub_1C447F5B8()
{

  return type metadata accessor for PromoteConstructionPhase();
}

uint64_t sub_1C447F5DC()
{
  result = v1;
  *(v2 - 400) = *(v0 + 8);
  return result;
}

uint64_t sub_1C447F644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15)
{
  *(v16 - 96) = a1;
  *v15 = a15;
}

uint64_t sub_1C447F6A4@<X0>(uint64_t a1@<X8>)
{

  return sub_1C4430900(v1 + a1, v2);
}

unint64_t sub_1C447F6D0(uint64_t a1, unint64_t a2)
{

  return sub_1C441D828(a1, a2, (v2 - 88));
}

double sub_1C447F6E8()
{
  result = 0.0;
  *(v0 - 128) = 0u;
  *(v0 - 112) = 0u;
  return result;
}

uint64_t sub_1C447F6F4(uint64_t a1)
{

  return _s24IntelligencePlatformCore12EventMatcherV11entityClass0aB006EntityG0Vvg_0();
}

uint64_t sub_1C447F720()
{
}

uint64_t sub_1C447F7A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1C4F027E8();
}

uint64_t sub_1C447F7C8@<X0>(uint64_t a1@<X8>)
{

  return sub_1C4430900(v3 + v1, v2 + a1);
}

uint64_t sub_1C447F7E0()
{

  return sub_1C440BAA8(v1, 0, 1, v0);
}

void sub_1C447F800()
{

  sub_1C47E5C30();
}

uint64_t sub_1C447F818()
{

  return sub_1C4471FB4();
}

uint64_t sub_1C447F834()
{

  return sub_1C456902C(v1, v0);
}

unint64_t sub_1C447F860(float a1)
{
  *v1 = a1;

  return sub_1C441D828(v2, v3, (v4 - 176));
}

void *sub_1C447F8A0()
{

  return memcpy((v0 - 256), (v0 - 176), 0x48uLL);
}

uint64_t sub_1C447F8F8(uint64_t a1, uint64_t a2)
{

  return sub_1C4F02548();
}

uint64_t sub_1C447F910()
{

  return sub_1C456902C(v0, v1);
}

uint64_t sub_1C447F928()
{

  return swift_slowAlloc();
}

void sub_1C447F944(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0x16u);
}

id sub_1C447F964()
{

  return [v0 (v1 + 2296)];
}

uint64_t sub_1C447F9C0()
{
}

uint64_t sub_1C447F9DC(uint64_t a1)
{

  return sub_1C440BAA8(v1, 0, 1, a1);
}

uint64_t sub_1C447F9FC()
{

  return sub_1C44239FC(&unk_1C4F4E0D8, v0);
}

unint64_t sub_1C447FA64()
{

  return sub_1C4B9B1DC();
}

void sub_1C447FACC()
{
  sub_1C440962C(v0);

  JUMPOUT(0x1C6942830);
}

uint64_t sub_1C447FB54(uint64_t a1, uint64_t a2)
{

  return sub_1C4F026C8();
}

uint64_t sub_1C447FB94(double a1)
{
  v7 = (v1 + v4[8]);
  *v7 = v3;
  v7[1] = v2;
  v8 = (v1 + v4[10]);
  v9 = *(v5 - 112);
  *v8 = *(v5 - 120);
  v8[1] = v9;
  *(v1 + v4[11]) = a1;
  *(v1 + v4[12]) = *(v5 - 132);

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

void sub_1C447FBD4()
{
  v3 = (v1 + *(v0 + 32));
  *v3 = 0;
  v3[1] = 0;
  *(v2 - 200) = *(v0 + 36);
}

uint64_t type metadata accessor for PairGenerator(uint64_t a1)
{
  result = qword_1EDDF8030;
  if (!qword_1EDDF8030)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for PassthroughMatcher(uint64_t a1)
{
  result = qword_1EDDF4EC0;
  if (!qword_1EDDF4EC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C447FCA0()
{
  sub_1C43FCF70();
  v1 = *(v0 + 1080);
  v2 = *(v0 + 1056);
  v3 = *(v0 + 1048);
  v4 = *(v0 + 1008);
  *(v0 + 712) = *(v0 + 1064);
  sub_1C443F708();
  *(v0 + 720) = sub_1C4472508(v5, v6, &protocol conformance descriptor for PipelinePhase);
  *(v0 + 688) = v1;
  *(v0 + 1088) = sub_1C456902C(&qword_1EC0B8AA8, &unk_1C4F4E0E0);
  inited = swift_initStackObject();
  *(v0 + 1096) = inited;
  *(inited + 16) = xmmword_1C4F0D130;
  sub_1C441D670((v0 + 688), inited + 32);
  sub_1C441A2F4();
  sub_1C443113C(v4 + v2, v3);
  *(v0 + 1193) = 1;
  [objc_allocWithZone(MEMORY[0x1E695CE18]) init];
  v8 = sub_1C43FBE94();
  *(v0 + 1104) = type metadata accessor for ContactsPersonPhase(v8);
  sub_1C43FD23C();
  swift_allocObject();
  v9 = swift_task_alloc();
  *(v0 + 1112) = v9;
  *v9 = v0;
  sub_1C44C12B8(v9);
  v11 = sub_1C440F4D4(v10);

  return sub_1C44758E8(v11, v12, v3, 1);
}

uint64_t *sub_1C447FE10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = type metadata accessor for Configuration(0);
  sub_1C43FBD18(v7);
  return sub_1C44736B0(a1, a2, v3 + ((*(v8 + 80) + 16) & ~*(v8 + 80)), a3);
}

uint64_t AssetRegistryOverrideStore.__allocating_init(config:)(uint64_t a1)
{
  v3 = type metadata accessor for Configuration(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4430848(a1, v5, type metadata accessor for Configuration);
  type metadata accessor for KeyValueStore(0);
  swift_allocObject();
  v6 = KeyValueStore.init(config:domain:)(v5, 0xD000000000000017, 0x80000001C4F8A750);
  sub_1C4404B44();
  result = sub_1C4453C94();
  if (!v1)
  {
    result = swift_allocObject();
    *(result + 16) = v6;
  }

  return result;
}

uint64_t sub_1C447FFF4()
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (qword_1EDDFD028 != -1)
    {
      sub_1C43FE9B4(&qword_1EDDFD028);
    }

    v2 = sub_1C4F00978();
    sub_1C442B738(v2, qword_1EDE2DE10);
    v3 = sub_1C4F00968();
    v4 = sub_1C4F01CC8();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      v6 = "MatcherModel: re-using cached nicknames";
LABEL_10:
      _os_log_impl(&dword_1C43F8000, v3, v4, v6, v5, 2u);
      MEMORY[0x1C6942830](v5, -1, -1);
    }
  }

  else
  {
    type metadata accessor for Nicknames();
    sub_1C43FBDBC();
    v1 = swift_allocObject();
    sub_1C4486210();
    swift_weakAssign();
    if (qword_1EDDFD028 != -1)
    {
      sub_1C43FE9B4(&qword_1EDDFD028);
    }

    v7 = sub_1C4F00978();
    sub_1C442B738(v7, qword_1EDE2DE10);
    v3 = sub_1C4F00968();
    v4 = sub_1C4F01CC8();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      v6 = "MatcherModel: caching nicknames";
      goto LABEL_10;
    }
  }

  return v1;
}

uint64_t sub_1C4480248(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NicknameEntry(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1C44802AC()
{
  sub_1C456902C(&qword_1EC0BDE40, &qword_1C4F32288);
  sub_1C44493A8();
  sub_1C44263EC();
  if (v4)
  {
    v5 = sub_1C44323C4();
    if (v8)
    {
      v9 = v5 >= v7;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      sub_1C445FC08(v5, v6);
    }

    sub_1C4404F28();
    while (v3)
    {
      sub_1C43FEA58();
LABEL_15:
      sub_1C4851B5C();
      v16 = (v15 + 16 * v14);
      v17 = v16[1];
      v18 = (v0[6] + 16 * v14);
      *v18 = *v16;
      v18[1] = v17;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    v10 = v1;
    while (1)
    {
      v1 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v1 >= v2)
      {
        goto LABEL_17;
      }

      sub_1C4851B68();
      if (v11)
      {
        sub_1C43FCF1C();
        v3 = v13 & v12;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v0 = v0;
  }
}

uint64_t sub_1C448037C(uint64_t a1)
{

  return sub_1C4F01198();
}

uint64_t sub_1C44803A0(uint64_t a1)
{

  return sub_1C4EF93B8();
}

uint64_t sub_1C44803C0()
{
  v2 = *(v0 - 888);
  v3 = *(v0 - 896);

  return sub_1C44239FC(v2, v3);
}

uint64_t sub_1C44803E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1C440BAA8(v4, 1, 1, a4);
}

uint64_t sub_1C4480414()
{
  v3 = *(v1 - 120);

  return sub_1C4471BAC(v0, v3);
}

uint64_t sub_1C4480440(uint64_t a1)
{

  return sub_1C4F02938();
}

void *sub_1C4480460()
{

  return sub_1C4409678((v1 - 136), v0);
}

uint64_t sub_1C4480478()
{

  return sub_1C4EFEEF8();
}

uint64_t sub_1C4480490(uint64_t a1)
{

  return sub_1C4F027E8();
}

uint64_t sub_1C44804C0(uint64_t a1)
{
  *(v2 - 348) = v1;

  return sub_1C4F02858();
}

void sub_1C44804F8()
{
  *(v0 - 280) = 0;
  *(v0 - 184) = 0;
  *(v0 - 176) = 0;
  *(v0 - 272) = 0;
}

uint64_t sub_1C448053C()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

id sub_1C4480554()
{

  return v0;
}

void *sub_1C4480578()
{
  v2 = (*(v0 + 296) + 24);

  return memcpy((v0 + 88), v2, 0x48uLL);
}

uint64_t sub_1C44805D4(uint64_t a1)
{

  return sub_1C4471988(a1, v1);
}

unint64_t sub_1C44805EC()
{

  return sub_1C441D828(v1, v0, (v2 - 176));
}

uint64_t sub_1C4480620@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 248) = a1;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C4480668@<X0>(uint64_t a1@<X8>, void (*a2)(void)@<X2>)
{

  return sub_1C448D7C0(v3 + a1, v4 + v2, a2);
}

uint64_t sub_1C44806A4@<X0>(uint64_t a1@<X8>)
{

  return sub_1C4430900(v2, v1 + a1);
}

void sub_1C44806E0()
{

  sub_1C4B5B968(v0);
}

uint64_t sub_1C4480738@<X0>(uint64_t a1@<X8>)
{
  *(v2 + a1) = v1 & 1;

  return type metadata accessor for PhaseStores(0);
}

uint64_t sub_1C4480754()
{
  *(v0 - 88) = 0;

  return sub_1C4F027F8();
}

uint64_t sub_1C44807A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 - 120) = v3;

  return sub_1C4F02BC8();
}

void sub_1C44807C8()
{
  v5 = *(v3 - 176);

  sub_1C457E054(v5, v2, v0, v1);
}

void sub_1C4480820(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t sub_1C4480848(uint64_t a1)
{

  return sub_1C4440C6C(a1);
}

uint64_t sub_1C44808B4(uint64_t a1, uint64_t a2)
{

  return sub_1C4F02658();
}

uint64_t sub_1C44808F8()
{

  return MEMORY[0x1EEE6DFA0](sub_1C44878E0, 0, 0);
}

uint64_t sub_1C44809F4()
{
  sub_1C4415A68();
  sub_1C43FEAEC();
  v1 = *(v0 + 1120);
  sub_1C44A1824();
  *(v0 + 752) = v2;
  sub_1C4418510();
  *(v0 + 760) = sub_1C4472508(v3, v4, &protocol conformance descriptor for PipelinePhase);
  *(v0 + 728) = v1;
  inited = swift_initStackObject();
  *(v0 + 1128) = inited;
  *(inited + 16) = xmmword_1C4F0D130;
  sub_1C441D670((v0 + 728), inited + 32);
  sub_1C441A2F4();
  sub_1C442A990(v6, v7, v8);
  *(v0 + 1194) = 1;
  *(v0 + 1136) = type metadata accessor for PhotosPersonPhase(0);
  sub_1C43FD23C();
  swift_allocObject();
  v9 = swift_task_alloc();
  *(v0 + 1144) = v9;
  *v9 = v0;
  sub_1C44C12B8(v9);
  sub_1C440F4D4(v10);
  sub_1C4426C44();

  return sub_1C4487D4C(v11, v12);
}

uint64_t PipelineType.rawValue.getter()
{
  result = 0x6E776F6E6B6E75;
  switch(*v0)
  {
    case 1:
      result = 1819047270;
      break;
    case 2:
      result = 0x61746C6564;
      break;
    case 3:
      result = sub_1C44133C0();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4480BF4()
{

  if (*(v0 + 40))
  {
  }

  if (*(v0 + 64))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1C4480C54()
{
  v1[126] = v0;
  v1[127] = type metadata accessor for Source(0);
  v1[128] = swift_task_alloc();
  type metadata accessor for Configuration(0);
  v1[129] = swift_task_alloc();
  v1[130] = type metadata accessor for PhaseStores(0);
  v1[131] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4480D90, 0, 0);
}

uint64_t type metadata accessor for Source(uint64_t a1)
{
  result = qword_1EDDFFB50;
  if (!qword_1EDDFFB50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4480D90()
{
  sub_1C43FBCD4();
  *(v0 + 1056) = OBJC_IVAR____TtC24IntelligencePlatformCore8Pipeline_stores;
  sub_1C441A2F4();
  sub_1C443113C(v1 + v2, v3);
  *(v0 + 1192) = 1;
  *(v0 + 1064) = type metadata accessor for RelationshipPhase(0);
  sub_1C43FD23C();
  swift_allocObject();
  v4 = swift_task_alloc();
  *(v0 + 1072) = v4;
  *v4 = v0;
  sub_1C44C12B8(v4);
  v6 = sub_1C440F4D4(v5);

  return sub_1C447E5D8(v6, v7);
}

uint64_t type metadata accessor for Linker(uint64_t a1)
{
  result = qword_1EDDF0E10;
  if (!qword_1EDDF0E10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4480EA8()
{
  sub_1C4419288();
  sub_1C44717B8(v1, v2, v3);
  if (qword_1EDDFD318 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 121);
  v5 = *(v0 + 80);
  v6 = *(v0 + 88);
  v7 = *(v0 + 72);
  v9 = *(v0 + 48);
  v8 = *(v0 + 56);
  v10 = *(v0 + 16);
  v11 = sub_1C442B738(*(v0 + 64), qword_1EDDFD320);
  *(v0 + 104) = v11;
  sub_1C44717B8(v11, v5, type metadata accessor for Source);
  sub_1C44717B8(v10, v8 + *(v9 + 20), type metadata accessor for PhaseStores);
  *(v8 + *(v9 + 24)) = 1;
  sub_1C44717B8(v11, v8, type metadata accessor for Source);
  sub_1C44717B8(v11, v7, type metadata accessor for Source);
  sub_1C44717B8(v10, v6, type metadata accessor for PhaseStores);
  *(v0 + 120) = v4;
  v12 = swift_task_alloc();
  *(v0 + 112) = v12;
  *v12 = v0;
  v12[1] = sub_1C4482FAC;

  return Linker.init(source:stores:pipelineType:)();
}

uint64_t Linker.init(source:stores:pipelineType:)()
{
  sub_1C43FBCD4();
  v2 = v1;
  *(v0 + 544) = v3;
  *(v0 + 536) = v4;
  *(v0 + 528) = v5;
  v6 = sub_1C456902C(&unk_1EC0B7610, &unk_1C4F17610);
  sub_1C43FBD18(v6);
  *(v0 + 552) = sub_1C4488314();
  *(v0 + 560) = swift_task_alloc();
  *(v0 + 568) = swift_task_alloc();
  *(v0 + 576) = swift_task_alloc();
  *(v0 + 584) = swift_task_alloc();
  *(v0 + 592) = swift_task_alloc();
  *(v0 + 600) = swift_task_alloc();
  *(v0 + 608) = swift_task_alloc();
  *(v0 + 616) = swift_task_alloc();
  *(v0 + 624) = swift_task_alloc();
  *(v0 + 632) = swift_task_alloc();
  *(v0 + 640) = swift_task_alloc();
  *(v0 + 648) = swift_task_alloc();
  *(v0 + 656) = swift_task_alloc();
  *(v0 + 664) = swift_task_alloc();
  *(v0 + 672) = swift_task_alloc();
  v7 = sub_1C456902C(&qword_1EC0C2A90, &unk_1C4F16D30);
  sub_1C43FBD18(v7);
  *(v0 + 680) = sub_1C4488314();
  *(v0 + 688) = swift_task_alloc();
  *(v0 + 696) = swift_task_alloc();
  *(v0 + 704) = swift_task_alloc();
  *(v0 + 712) = swift_task_alloc();
  *(v0 + 720) = swift_task_alloc();
  *(v0 + 728) = swift_task_alloc();
  *(v0 + 736) = swift_task_alloc();
  *(v0 + 744) = swift_task_alloc();
  *(v0 + 752) = swift_task_alloc();
  *(v0 + 760) = swift_task_alloc();
  *(v0 + 768) = swift_task_alloc();
  *(v0 + 776) = swift_task_alloc();
  *(v0 + 784) = swift_task_alloc();
  *(v0 + 792) = swift_task_alloc();
  *(v0 + 800) = swift_task_alloc();
  v8 = type metadata accessor for Resolver(0);
  *(v0 + 808) = v8;
  sub_1C43FBD18(v8);
  *(v0 + 816) = sub_1C4488314();
  *(v0 + 824) = swift_task_alloc();
  *(v0 + 832) = swift_task_alloc();
  *(v0 + 840) = swift_task_alloc();
  *(v0 + 848) = swift_task_alloc();
  *(v0 + 856) = swift_task_alloc();
  *(v0 + 864) = swift_task_alloc();
  *(v0 + 872) = swift_task_alloc();
  *(v0 + 880) = swift_task_alloc();
  *(v0 + 888) = swift_task_alloc();
  *(v0 + 896) = swift_task_alloc();
  *(v0 + 904) = swift_task_alloc();
  *(v0 + 912) = swift_task_alloc();
  *(v0 + 920) = swift_task_alloc();
  *(v0 + 928) = swift_task_alloc();
  *(v0 + 936) = swift_task_alloc();
  *(v0 + 944) = swift_task_alloc();
  *(v0 + 952) = swift_task_alloc();
  v9 = sub_1C4EFD548();
  *(v0 + 960) = v9;
  *(v0 + 968) = *(v9 - 8);
  *(v0 + 976) = sub_1C4488314();
  *(v0 + 984) = swift_task_alloc();
  *(v0 + 992) = swift_task_alloc();
  *(v0 + 1000) = swift_task_alloc();
  *(v0 + 1008) = swift_task_alloc();
  *(v0 + 1016) = swift_task_alloc();
  v10 = type metadata accessor for PhaseStores(0);
  *(v0 + 1024) = v10;
  sub_1C43FBD18(v10);
  *(v0 + 1032) = sub_1C4488314();
  *(v0 + 1040) = swift_task_alloc();
  *(v0 + 1048) = swift_task_alloc();
  *(v0 + 1056) = swift_task_alloc();
  *(v0 + 1064) = swift_task_alloc();
  *(v0 + 1072) = swift_task_alloc();
  *(v0 + 1080) = swift_task_alloc();
  *(v0 + 1088) = swift_task_alloc();
  *(v0 + 1096) = swift_task_alloc();
  *(v0 + 1104) = swift_task_alloc();
  *(v0 + 1112) = swift_task_alloc();
  *(v0 + 1120) = swift_task_alloc();
  *(v0 + 1128) = swift_task_alloc();
  *(v0 + 1136) = swift_task_alloc();
  *(v0 + 1144) = swift_task_alloc();
  *(v0 + 1152) = swift_task_alloc();
  *(v0 + 1160) = swift_task_alloc();
  *(v0 + 1168) = swift_task_alloc();
  *(v0 + 1176) = swift_task_alloc();
  *(v0 + 1184) = swift_task_alloc();
  *(v0 + 1192) = swift_task_alloc();
  *(v0 + 1200) = swift_task_alloc();
  *(v0 + 1208) = swift_task_alloc();
  *(v0 + 1216) = swift_task_alloc();
  *(v0 + 1224) = swift_task_alloc();
  *(v0 + 1232) = swift_task_alloc();
  *(v0 + 1240) = swift_task_alloc();
  *(v0 + 1248) = swift_task_alloc();
  *(v0 + 1256) = swift_task_alloc();
  *(v0 + 1264) = swift_task_alloc();
  *(v0 + 1272) = swift_task_alloc();
  *(v0 + 1280) = swift_task_alloc();
  *(v0 + 1288) = swift_task_alloc();
  *(v0 + 1296) = swift_task_alloc();
  v11 = type metadata accessor for Source(0);
  *(v0 + 1304) = v11;
  sub_1C43FBD18(v11);
  *(v0 + 1312) = sub_1C4488314();
  *(v0 + 1320) = swift_task_alloc();
  *(v0 + 1328) = swift_task_alloc();
  *(v0 + 1336) = swift_task_alloc();
  *(v0 + 1344) = swift_task_alloc();
  *(v0 + 1352) = swift_task_alloc();
  *(v0 + 1360) = swift_task_alloc();
  *(v0 + 1368) = swift_task_alloc();
  *(v0 + 1376) = swift_task_alloc();
  *(v0 + 1384) = swift_task_alloc();
  *(v0 + 1392) = swift_task_alloc();
  *(v0 + 1400) = swift_task_alloc();
  *(v0 + 1408) = swift_task_alloc();
  *(v0 + 1416) = swift_task_alloc();
  *(v0 + 1424) = swift_task_alloc();
  *(v0 + 1432) = swift_task_alloc();
  *(v0 + 1440) = swift_task_alloc();
  *(v0 + 1448) = swift_task_alloc();
  *(v0 + 1456) = swift_task_alloc();
  *(v0 + 1464) = swift_task_alloc();
  *(v0 + 1472) = swift_task_alloc();
  *(v0 + 1480) = swift_task_alloc();
  *(v0 + 1488) = swift_task_alloc();
  *(v0 + 1496) = swift_task_alloc();
  *(v0 + 1504) = swift_task_alloc();
  *(v0 + 1512) = swift_task_alloc();
  *(v0 + 1520) = swift_task_alloc();
  *(v0 + 1528) = swift_task_alloc();
  *(v0 + 1536) = swift_task_alloc();
  *(v0 + 1544) = swift_task_alloc();
  *(v0 + 1552) = swift_task_alloc();
  *(v0 + 1560) = swift_task_alloc();
  *(v0 + 1568) = swift_task_alloc();
  *(v0 + 1576) = swift_task_alloc();
  *(v0 + 1584) = swift_task_alloc();
  *(v0 + 2573) = *v2;
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

void sub_1C448177C()
{
  sub_1C43FBD3C();
  v4 = v3;
  v5 = sub_1C4EFD548();
  sub_1C43FCDF8();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  sub_1C440A724();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C4402CA8();
  (*(v7 + 16))(v1, v0, v5);
  sub_1C4EFD4C8();
  sub_1C44189E4();
  sub_1C447CB3C(v10, v11, MEMORY[0x1E69A92E0]);
  v12 = sub_1C44021B8();
  v13 = *(v7 + 8);
  v13(v2, v5);
  if (v12)
  {
    v14 = sub_1C43FD024();
    (v13)(v14);
    sub_1C456902C(&qword_1EC0BA5A0, &qword_1C4F142F0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1C4F13950;
    sub_1C456902C(&unk_1EC0BE460, &qword_1C4F13B70);
    sub_1C43FBE94();
    v16 = sub_1C4EFEEF8();
    sub_1C43FCF7C(v16);
    sub_1C4485B60();
    v17 = swift_allocObject();
    sub_1C44AE010(v17, xmmword_1C4F0CE60);
    sub_1C4EFE478();
    sub_1C4EFE518();
    *(v15 + 56) = &type metadata for ContactHandleBlockingFunction;
    *(v15 + 64) = &protocol witness table for ContactHandleBlockingFunction;
    v18 = MEMORY[0x1E69E7CC0];
    *(v15 + 32) = MEMORY[0x1E69E7CC0];
    *(v15 + 40) = v17;
    sub_1C4485B60();
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1C4F0D130;
    sub_1C4EFE558();
    *(v15 + 96) = &type metadata for VisualIdentifierBlockingFunction;
    *(v15 + 104) = &protocol witness table for VisualIdentifierBlockingFunction;
    *(v15 + 72) = v18;
    *(v15 + 80) = v19;
    *(v15 + 88) = v4;
    sub_1C4485B60();
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1C4F0D130;

    sub_1C4EFE558();
    *(v15 + 136) = &type metadata for SimpleBlockingFunction;
    *(v15 + 144) = &protocol witness table for SimpleBlockingFunction;
    *(v15 + 112) = v18;
    *(v15 + 120) = v20;
    sub_1C4485B60();
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1C4F0F830;
    sub_1C4EFEBF8();
    sub_1C4EFE338();
    sub_1C4EFEE68();
    sub_1C4EFE328();
    sub_1C4EFE2C8();
    sub_1C4EFE348();
    sub_1C4EFE3A8();
    *(v15 + 176) = &type metadata for SimpleBlockingFunction;
    *(v15 + 184) = &protocol witness table for SimpleBlockingFunction;
    *(v15 + 152) = v21;
    *(v15 + 160) = v18;
    sub_1C4485B60();
    v22 = swift_allocObject();
    *(v22 + 16) = v66;
    sub_1C4EFE5D8();
    sub_1C4EFE9C8();
    *(v15 + 216) = &type metadata for SimpleBlockingFunction;
    *(v15 + 224) = &protocol witness table for SimpleBlockingFunction;
    *(v15 + 192) = v22;
    *(v15 + 200) = v18;
LABEL_5:
    sub_1C43FE9F0();
    return;
  }

  sub_1C4EFD4A8();
  sub_1C44021B8();
  v23 = sub_1C442F114();
  (v13)(v23);
  sub_1C4EFCF18();
  sub_1C44021B8();
  v24 = sub_1C442F114();
  (v13)(v24);
  sub_1C4EFD1C8();
  sub_1C44021B8();
  v25 = sub_1C442F114();
  (v13)(v25);
  sub_1C4EFD4E8();
  sub_1C44021B8();
  v26 = sub_1C442F114();
  (v13)(v26);
  _s24IntelligencePlatformCore15DocumentMatcherV11entityClass0aB006EntityG0Vvg_0();
  sub_1C44021B8();
  v27 = sub_1C442F114();
  (v13)(v27);
  _s24IntelligencePlatformCore15LocationMatcherV11entityClass0aB006EntityG0Vvg_0();
  sub_1C44021B8();
  v34 = sub_1C442F114();
  (v13)(v34);
  _s24IntelligencePlatformCore19OrganizationMatcherV11entityClass0aB006EntityG0Vvg_0();
  sub_1C44021B8();
  v35 = sub_1C442F114();
  (v13)(v35);
  sub_1C4EFD538();
  sub_1C44021B8();
  v36 = sub_1C442F114();
  (v13)(v36);
  _s24IntelligencePlatformCore12EventMatcherV11entityClass0aB006EntityG0Vvg_0();
  sub_1C44021B8();
  v37 = sub_1C442F114();
  (v13)(v37);
  if (v12 & 1) != 0 || (sub_1C4EFD1C8(), sub_1C44021B8(), v38 = sub_1C442F114(), (v13)(v38), sub_1C4EFCF28(), sub_1C44021B8(), v39 = sub_1C442F114(), (v13)(v39), sub_1C4EFCFB8(), v12 = v2, sub_1C4EFD0A8(), v40 = sub_1C4404CE0(), v13(v40, v5), sub_1C4404050(), sub_1C448285C(), v42 = v41, , (v42) || (sub_1C4EFCF18(), v12 = v2, sub_1C4EFD0A8(), v43 = sub_1C4404CE0(), v13(v43, v5), sub_1C4404050(), sub_1C448285C(), v45 = v44, , (v45) || (sub_1C4EFD3B8(), sub_1C44021B8(), v46 = sub_1C442F114(), (v13)(v46), (v2))
  {
    v28 = sub_1C43FD024();
    (v13)(v28);
    v29 = sub_1C456902C(&qword_1EC0BA5A0, &qword_1C4F142F0);
    v30 = sub_1C44331AC(v29);
    sub_1C44AE010(v30, xmmword_1C4F0D130);
    sub_1C456902C(&unk_1EC0BE460, &qword_1C4F13B70);
    sub_1C43FBE94();
    v31 = sub_1C4EFEEF8();
    sub_1C43FCF7C(v31);
    v32 = sub_1C443F558();
    sub_1C441AE54(v32);
    sub_1C4EFEBB8();
    v30[3].n128_u64[1] = &type metadata for SimpleBlockingFunction;
    v30[4].n128_u64[0] = &protocol witness table for SimpleBlockingFunction;
    v33 = MEMORY[0x1E69E7CC0];
    v30[2].n128_u64[0] = v12;
    v30[2].n128_u64[1] = v33;
    goto LABEL_5;
  }

  sub_1C4EFCF48();
  sub_1C44021B8();
  v47 = sub_1C442F114();
  (v13)(v47);
  sub_1C4EFD3E8();
  sub_1C44021B8();
  v48 = sub_1C442F114();
  (v13)(v48);
  sub_1C4EFD4E8();
  sub_1C44021B8();
  v49 = sub_1C442F114();
  (v13)(v49);
  sub_1C4EFCEC8();
  sub_1C44021B8();
  v50 = sub_1C442F114();
  (v13)(v50);
  sub_1C4EFCFC8();
  sub_1C44021B8();
  v51 = sub_1C442F114();
  (v13)(v51);
  sub_1C4EFD498();
  sub_1C44021B8();
  v52 = sub_1C442F114();
  (v13)(v52);
  sub_1C4EFD018();
  sub_1C44021B8();
  v53 = sub_1C442F114();
  (v13)(v53);
  sub_1C4EFCED8();
  sub_1C44021B8();
  v54 = sub_1C442F114();
  (v13)(v54);
  sub_1C4EFD1E8();
  sub_1C44021B8();
  v55 = sub_1C442F114();
  (v13)(v55);
  sub_1C4EFD0B8();
  sub_1C44021B8();
  v56 = sub_1C442F114();
  (v13)(v56);
  sub_1C4EFD428();
  sub_1C44021B8();
  v57 = sub_1C442F114();
  (v13)(v57);
  _s24IntelligencePlatformCore19OrganizationMatcherV11entityClass0aB006EntityG0Vvg_0();
  sub_1C44021B8();
  v58 = sub_1C442F114();
  (v13)(v58);
  sub_1C4EFD218();
  sub_1C44021B8();
  v59 = sub_1C442F114();
  (v13)(v59);
  sub_1C4EFCEE8();
  sub_1C44021B8();
  v60 = sub_1C442F114();
  (v13)(v60);
  sub_1C4EFD4D8();
  sub_1C44021B8();
  v61 = sub_1C442F114();
  (v13)(v61);
  sub_1C4EFCEF8();
  sub_1C44021B8();
  v62 = sub_1C442F114();
  (v13)(v62);
  sub_1C4F02248();
  MEMORY[0x1C6940010](0xD00000000000001ELL, 0x80000001C4F8ECC0);
  v63 = sub_1C4EFD3D8();
  MEMORY[0x1C6940010](v63);

  MEMORY[0x1C6940010](0xD000000000000021, 0x80000001C4F8ECE0);
  sub_1C4656C24("Fatal error", v64, v65, 0, 0xE000000000000000, "IntelligencePlatformCore/Blocker.swift");
  __break(1u);
}

void sub_1C448285C()
{
  sub_1C43FBD3C();
  sub_1C43FFB44();
  v1 = sub_1C4EFD548();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C440F400();
  if (*(v0 + 16))
  {
    sub_1C44586E0();
    v5 = sub_1C4403D94(v3, v4, MEMORY[0x1E69A92D8]);
    sub_1C442F8E4(v5);
    sub_1C440CAC8();
    sub_1C4475608();
    do
    {
      sub_1C4416780();
      if (!v6)
      {
        break;
      }

      v7 = sub_1C4461CA0();
      v8(v7);
      sub_1C44586E0();
      sub_1C4403D94(&qword_1EDDFCCD8, v9, MEMORY[0x1E69A92E0]);
      sub_1C442234C();
      sub_1C4F010B8();
      v10 = sub_1C443E188();
      v11(v10);
    }

    while ((v1 & 1) == 0);
  }

  sub_1C43FE9F0();
}

uint64_t sub_1C44829A4(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v6 = sub_1C4EFD548();
  sub_1C43FCDF8();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  sub_1C4408598();
  v11 = MEMORY[0x1EEE9AC00](v10);
  (*(v8 + 16))(&v30 - v12, v4, v6, v11);
  _s24IntelligencePlatformCore15LocationMatcherV11entityClass0aB006EntityG0Vvg_0();
  sub_1C44189E4();
  sub_1C447CB3C(v13, v14, MEMORY[0x1E69A92E0]);
  v15 = sub_1C44068D0();
  v16 = *(v8 + 8);
  v16(v3, v6);
  if (v15)
  {
    v17 = sub_1C4404050();
    (v16)(v17);
    v18 = sub_1C456902C(&qword_1EC0BA598, &unk_1C4F142E0);
    v19 = sub_1C44331AC(v18);
    *(v19 + 16) = xmmword_1C4F0D130;
    *(v19 + 56) = &type metadata for LocationGeoHashBlockingFunction;
    *(v19 + 64) = &protocol witness table for LocationGeoHashBlockingFunction;
  }

  else
  {
    sub_1C4EFCEF8();
    v20 = sub_1C44068D0();
    v16(v3, v6);
    v21 = sub_1C4404050();
    (v16)(v21);
    v19 = MEMORY[0x1E69E7CC0];
    if (v20)
    {
      v22 = sub_1C456902C(&qword_1EC0BA598, &unk_1C4F142E0);
      v23 = sub_1C44331AC(v22);
      v30 = xmmword_1C4F0D130;
      *(v23 + 16) = xmmword_1C4F0D130;
      v24 = *(a2 + *(type metadata accessor for PhaseStores(0) + 48));
      sub_1C456902C(&unk_1EC0BE460, &qword_1C4F13B70);
      v25 = sub_1C4EFEEF8();
      sub_1C43FCF7C(v25);
      v26 = swift_allocObject();
      *(v26 + 16) = v30;

      sub_1C4EFE558();
      *(v23 + 56) = &type metadata for WalletOrderBlockingFunction;
      *(v23 + 64) = &protocol witness table for WalletOrderBlockingFunction;
      v27 = swift_allocObject();
      *(v23 + 32) = v27;
      sub_1C448DE08();
      v27[2] = v19;
      v27[3] = v26;
      v27[4] = v24;
      v27[5] = v28;
      return v23;
    }
  }

  return v19;
}

uint64_t sub_1C4482C7C()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C4482CE8()
{

  return sub_1C48519DC(v1, v0);
}

uint64_t sub_1C4482D4C()
{
}

uint64_t sub_1C4482DB0@<X0>(uint64_t a1@<X8>)
{
  v5 = v3 + *(v2 + 36);

  return sub_1C449ED64(v1 + a1, v5);
}

uint64_t sub_1C4482DCC()
{

  return sub_1C4EFEEF8();
}

id sub_1C4482DFC(uint64_t a1)
{
  *(v2 + 4) = a1;
  *(v2 + 12) = 2112;

  return v1;
}

uint64_t sub_1C4482E1C()
{
  v4 = v2 + *(v1 + 24);

  return sub_1C4471988(v0, v4);
}

uint64_t sub_1C4482E7C()
{
  v3 = *(v0 + *(v1 + 28));

  return sub_1C448D934(v3);
}

void sub_1C4482EB0()
{

  JUMPOUT(0x1C6940010);
}

uint64_t sub_1C4482EF0()
{

  return sub_1C44CC80C(v1, v0, v2);
}

uint64_t sub_1C4482F3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0C2A90, &unk_1C4F16D30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4482FAC()
{

  return MEMORY[0x1EEE6DFA0](sub_1C4472240, 0, 0);
}

void Fuser.init(source:stores:pipelineType:)()
{
  sub_1C43FBD3C();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v504 = *MEMORY[0x1E69E9840];
  v8 = type metadata accessor for StandardEntityFusion(0);
  sub_1C43FCDF8();
  v488 = v9;
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBFDC();
  v494 = v11;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v12);
  v496 = (&v481 - v13);
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v14);
  v495 = (&v481 - v15);
  sub_1C4EFD548();
  sub_1C43FCDF8();
  v500 = v16;
  v501 = v17;
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBFDC();
  v493 = v18;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v19);
  v487 = (&v481 - v20);
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v481 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v481 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v490 = &v481 - v28;
  v29 = type metadata accessor for PhaseStores(0);
  MEMORY[0x1EEE9AC00](v29 - 8);
  sub_1C43FBCC4();
  v489 = v31 - v30;
  v32 = type metadata accessor for Source(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v33);
  sub_1C43FBCC4();
  v36 = (v35 - v34);
  v37 = *v1;
  sub_1C441FAA8();
  v498 = v3;
  sub_1C4471874(v3, v7);
  v38 = type metadata accessor for Fuser(0);
  sub_1C4432340();
  sub_1C4471874(v5, v7 + v39);
  v491 = v38;
  v492 = v7;
  v40 = *(v38 + 28);
  v499 = v37;
  *(v7 + v40) = v37;
  v497 = v5;
  sub_1C4471874(v5, v36);
  if (qword_1EDDFED28 != -1)
  {
    swift_once();
  }

  v41 = sub_1C442B738(v32, &unk_1EDDFD088);
  v42 = v41[1];
  v43 = *v36;
  v44 = v36[1];
  v45 = *v41 == *v36 && v42 == v44;
  if (v45 || (v46 = sub_1C44250D8(*v41, v42), (v46 & 1) != 0))
  {
    sub_1C440041C();
    v494 = v47;
    sub_1C4485404(v36, v48);
    sub_1C456902C(&qword_1EC0B8CE8, &unk_1C4F0E120);
    sub_1C442A404();
    v49 = swift_allocObject();
    sub_1C4419768(v49, xmmword_1C4F0D480);
    v50 = v498;
    v51 = v489;
    v495 = v52;
    sub_1C4471874(v498, v489);
    sub_1C442F1E4();
    _s24IntelligencePlatformCore15LocationMatcherV11entityClass0aB006EntityG0Vvg_0();
    v49[3].n128_u64[1] = v8;
    sub_1C442CAC0();
    v55 = sub_1C445E5E8(v53, v54, &protocol conformance descriptor for StandardEntityFusion);
    sub_1C44145B4(v55);
    v56 = sub_1C43FC3C0();
    sub_1C4471874(v56, v57);
    sub_1C4406F18();
    v493 = v58;
    v59 = sub_1C4422A94();
    sub_1C4485614(v59, v60);
    v61 = v8[5];
    v62 = v501 + 8;
    v496 = *(v501 + 4);
    v63 = sub_1C447F0C4(v61);
    v64(v63);
    v501 = v62;
    sub_1C4409CC8();
    sub_1C4471874(v50, v51);
    _s24IntelligencePlatformCore19OrganizationMatcherV11entityClass0aB006EntityG0Vvg_0();
    v49[6].n128_u64[0] = v8;
    v49[6].n128_u64[1] = v55;
    v488 = v55;
    sub_1C4422F90(&v49[4].n128_i64[1]);
    sub_1C442BB84();
    sub_1C4471874(v26, v65);
    v66 = sub_1C4422A94();
    v67 = v493;
    sub_1C4485614(v66, v68);
    v69 = sub_1C447F0C4(v8[5]);
    v496(v69);
    LOBYTE(v62) = v499;
    *(v44 + v8[7]) = v499;
    sub_1C4471874(v50, v51);
    sub_1C4EFD4A8();
    v49[8].n128_u64[1] = v8;
    v49[9].n128_u64[0] = v55;
    sub_1C4422F90(&v49[7]);
    sub_1C442BB84();
    v70 = v497;
    sub_1C4471874(v497, v71);
    v72 = sub_1C4422A94();
    sub_1C4485614(v72, v73);
    v74 = sub_1C447F0C4(v8[5]);
    v75 = v500;
    v76 = v496;
    v496(v74);
    *(v44 + v8[7]) = v62;
    v77 = v70;
    v78 = v498;
    v79 = v495;
    sub_1C4471874(v498, v51);
    sub_1C4EFD4C8();
    v80 = v488;
    v49[11].n128_u64[0] = v8;
    v49[11].n128_u64[1] = v80;
    sub_1C4422F90(&v49[9].n128_i64[1]);
    sub_1C4418444();
    sub_1C4471874(v77, v81);
    v82 = sub_1C43FD7E0();
    sub_1C4485614(v82, v83);
    v76(v67 + v8[5], v38, v75);
    sub_1C4422AEC();
    v84 = v78;
    v44 = v77;
    v85 = v79;
LABEL_19:
    sub_1C4485404(v84, v85);
LABEL_20:
    sub_1C440041C();
    sub_1C4485404(v44, v110);
    *(v492 + *(v491 + 24)) = v49;
    sub_1C43FE9F0();
    return;
  }

  if (qword_1EDDFD0D0 != -1)
  {
    v46 = swift_once();
  }

  v86 = sub_1C440AB64(v46, qword_1EDDFD0D8);
  v88 = v45 && v87 == v44;
  if (v88 || (v89 = sub_1C44250D8(v86, v87), (v89 & 1) != 0))
  {
    sub_1C440041C();
    v495 = v90;
    sub_1C4485404(v36, v91);
    v92 = sub_1C456902C(&qword_1EC0B8CE8, &unk_1C4F0E120);
    v49 = sub_1C4404370(v92);
    v93 = sub_1C4419768(v49, xmmword_1C4F0CE60);
    v496 = v94;
    sub_1C445FD38(v93, v95, v94);
    sub_1C442F1E4();
    sub_1C4EFD538();
    v49[3].n128_u64[1] = v8;
    sub_1C442CAC0();
    v98 = sub_1C445E5E8(v96, v97, &protocol conformance descriptor for StandardEntityFusion);
    v99 = sub_1C443F614(v98);
    v100 = sub_1C442DF64();
    sub_1C4471874(v100, v101);
    sub_1C4406F18();
    v494 = v102;
    sub_1C4401DD8();
    v103 = sub_1C4414B0C(v8[5]);
    v37 = v8;
LABEL_17:
    v104(v103);
    sub_1C4404344();
    sub_1C4EFD4C8();
LABEL_18:
    v49[6].n128_u64[0] = v37;
    v49[6].n128_u64[1] = v26;
    sub_1C4422F90(&v49[4].n128_i64[1]);
    v105 = sub_1C4434124();
    sub_1C4471874(v105, v106);
    v107 = sub_1C43FD7E0();
    sub_1C4485614(v107, v108);
    v109 = sub_1C442ABDC();
    (v501)(v109);
    v26[v37[7]] = v43;
    v84 = v99;
    v85 = v496;
    goto LABEL_19;
  }

  if (qword_1EDDFD268 != -1)
  {
    v89 = swift_once();
  }

  v111 = sub_1C440AB64(v89, &qword_1EDDFD270);
  v113 = v45 && v112 == v44;
  if (v113 || (v114 = sub_1C44250D8(v111, v112), (v114 & 1) != 0))
  {
    sub_1C440041C();
    v495 = v115;
    sub_1C4485404(v36, v116);
    v117 = sub_1C456902C(&qword_1EC0B8CE8, &unk_1C4F0E120);
    v49 = sub_1C4404370(v117);
    v118 = sub_1C4419768(v49, xmmword_1C4F0CE60);
    v496 = v119;
    sub_1C445FD38(v118, v120, v119);
    sub_1C442F1E4();
    sub_1C4EFD3E8();
    v49[3].n128_u64[1] = v8;
    sub_1C442CAC0();
    v123 = sub_1C445E5E8(v121, v122, &protocol conformance descriptor for StandardEntityFusion);
    v99 = sub_1C443F614(v123);
    v124 = sub_1C442DF64();
    sub_1C4471874(v124, v125);
    sub_1C4406F18();
    v494 = v126;
    sub_1C4401DD8();
    v127 = sub_1C4414B0C(v8[5]);
    v37 = v8;
    v128(v127);
    sub_1C4404344();
    _s24IntelligencePlatformCore12EventMatcherV11entityClass0aB006EntityG0Vvg_0();
    goto LABEL_18;
  }

  if (qword_1EDDFD068 != -1)
  {
LABEL_101:
    v114 = swift_once();
  }

  v129 = sub_1C440AB64(v114, qword_1EDDFD070);
  v131 = v45 && v130 == v44;
  if (v131 || (v132 = sub_1C44250D8(v129, v130), (v132 & 1) != 0))
  {
    sub_1C440041C();
    v494 = v133;
    sub_1C4485404(v36, v134);
    sub_1C456902C(&qword_1EC0B8CE8, &unk_1C4F0E120);
    v49 = swift_allocObject();
    sub_1C4419768(v49, xmmword_1C4F0C890);
    sub_1C4471874(v498, v489);
    sub_1C442F1E4();
    sub_1C4EFD4C8();
    v49[3].n128_u64[1] = v8;
    sub_1C442CAC0();
    v496 = sub_1C445E5E8(v135, v136, &protocol conformance descriptor for StandardEntityFusion);
    sub_1C44145B4(v496);
    v137 = sub_1C43FC3C0();
    sub_1C4471874(v137, v138);
    sub_1C4406F18();
    v495 = v139;
    v140 = sub_1C4422A94();
    sub_1C4485614(v140, v141);
    v142 = sub_1C443FC80();
    v143(v142);
    sub_1C4409CC8();
    v144 = sub_1C440C50C();
    sub_1C4471874(v144, v145);
    sub_1C4EFD538();
    sub_1C4416764();
    sub_1C442BB84();
    sub_1C4471874(v26, v146);
    v147 = sub_1C4422A94();
    sub_1C4485614(v147, v148);
    v149 = sub_1C447F0C4(v8[5]);
    (v501)(v149);
    *(v44 + v8[7]) = v499;
    v44 = v26;
    v150 = sub_1C440C50C();
    sub_1C4471874(v150, v151);
    _s24IntelligencePlatformCore15LocationMatcherV11entityClass0aB006EntityG0Vvg_0();
    v152 = v496;
    v49[8].n128_u64[1] = v8;
    v49[9].n128_u64[0] = v152;
    sub_1C4422F90(&v49[7]);
    v153 = sub_1C4434124();
    sub_1C4471874(v153, v154);
    v155 = sub_1C43FD7E0();
    sub_1C4485614(v155, v156);
    v157 = sub_1C442ABDC();
    (v501)(v157);
    v158 = v8[7];
LABEL_36:
    v26[v158] = v499;
    v84 = sub_1C44057DC();
    goto LABEL_19;
  }

  if (qword_1EDDFD110 != -1)
  {
    v132 = swift_once();
  }

  v159 = sub_1C440AB64(v132, qword_1EDDFD118);
  v161 = v45 && v160 == v44;
  if (v161 || (v162 = sub_1C44250D8(v159, v160), (v162 & 1) != 0))
  {
    sub_1C4432340();
    sub_1C4485404(v36, v163);
    sub_1C456902C(&qword_1EC0B8CE8, &unk_1C4F0E120);
    sub_1C442A404();
    v49 = swift_allocObject();
    sub_1C4419768(v49, xmmword_1C4F0D480);
    v496 = v164;
    v165 = v489;
    sub_1C4471874(v498, v489);
    sub_1C442F1E4();
    sub_1C4EFD4C8();
    v49[3].n128_u64[1] = v8;
    sub_1C442CAC0();
    v494 = sub_1C445E5E8(v166, v167, &protocol conformance descriptor for StandardEntityFusion);
    sub_1C44145B4(v494);
    v168 = sub_1C43FC3C0();
    sub_1C4471874(v168, v169);
    sub_1C4406F18();
    v493 = v170;
    v171 = sub_1C4422A94();
    sub_1C4485614(v171, v172);
    v173 = v8[5];
    v174 = v501 + 8;
    v495 = *(v501 + 4);
    v175 = sub_1C447F0C4(v173);
    v176 = v8;
    v177(v175);
    v501 = v174;
    sub_1C4409CC8();
    v178 = sub_1C440C50C();
    sub_1C4471874(v178, v179);
    _s24IntelligencePlatformCore15LocationMatcherV11entityClass0aB006EntityG0Vvg_0();
    v49[6].n128_u64[0] = v8;
    v180 = v494;
    v49[6].n128_u64[1] = v494;
    v181 = sub_1C4422F90(&v49[4].n128_i64[1]);
    v182 = v181 + v176[6];
    v488 = v43;
    sub_1C4471874(v26, v182);
    v183 = sub_1C4422A94();
    v184 = v493;
    sub_1C4485614(v183, v185);
    v186 = sub_1C447F0C4(v176[5]);
    v495(v186);
    LOBYTE(v174) = v499;
    *(v181 + v176[7]) = v499;
    v187 = sub_1C440C50C();
    v188 = v496;
    sub_1C4471874(v187, v189);
    sub_1C4EFCF28();
    v49[8].n128_u64[1] = v176;
    v49[9].n128_u64[0] = v180;
    v190 = sub_1C4422F90(&v49[7]);
    v191 = v497;
    sub_1C4471874(v497, v190 + v176[6]);
    v192 = sub_1C4422A94();
    sub_1C4485614(v192, v193);
    v194 = sub_1C447F0C4(v176[5]);
    v195 = v495;
    v495(v194);
    *(v190 + v176[7]) = v174;
    v44 = v191;
    v196 = v498;
    sub_1C4471874(v498, v165);
    sub_1C4EFD1C8();
    v197 = v494;
    v49[11].n128_u64[0] = v176;
    v49[11].n128_u64[1] = v197;
    sub_1C4422F90(&v49[9].n128_i64[1]);
    v198 = sub_1C4434124();
    sub_1C4471874(v198, v199);
    v200 = sub_1C43FD7E0();
    sub_1C4485614(v200, v201);
    v202 = sub_1C442ABDC();
    v195(v202);
    *(v184 + v176[7]) = v174;
    v84 = v196;
    v85 = v188;
    goto LABEL_19;
  }

  if (qword_1EDDFED08 != -1)
  {
    v162 = swift_once();
  }

  v203 = sub_1C440AB64(v162, qword_1EDDFED10);
  if (v45 && v204 == v44)
  {
    goto LABEL_59;
  }

  v206 = sub_1C44250D8(v203, v204);
  if (v206)
  {
    goto LABEL_59;
  }

  if (qword_1EDDFED40 != -1)
  {
    v206 = swift_once();
  }

  v207 = sub_1C440AB64(v206, qword_1EDDFD2A8);
  v209 = v45 && v208 == v44;
  if (v209 || (v210 = sub_1C44250D8(v207, v208), (v210 & 1) != 0))
  {
LABEL_59:
    sub_1C440041C();
    v211 = v36;
    v213 = v212;
    sub_1C4485404(v211, v214);
    sub_1C456902C(&qword_1EC0BDAC8, &qword_1C4F3E860);
    v215 = (*(v488 + 80) + 32) & ~*(v488 + 80);
    v216 = *(v488 + 9);
    v43 = swift_allocObject();
    v481 = xmmword_1C4F0D480;
    *(v43 + 16) = xmmword_1C4F0D480;
    v217 = v43 + v215;
    v488 = type metadata accessor for PhaseStores;
    v489 = v215;
    sub_1C4471874(v498, v43 + v215);
    _s24IntelligencePlatformCore15LocationMatcherV11entityClass0aB006EntityG0Vvg_0();
    v218 = v213;
    sub_1C4471874(v497, v217 + v8[6]);
    sub_1C4409CC8();
    v220 = v219;
    v221 = v216;
    v490 = v216;
    v222 = &v216[v217];
    sub_1C4471874(v498, v222);
    sub_1C4EFD4C8();
    v223 = v222 + v8[6];
    v32 = v497;
    v486 = v218;
    sub_1C4471874(v497, v223);
    *(v222 + v8[7]) = v220;
    v224 = v217 + 2 * v221;
    v225 = v498;
    sub_1C4471874(v498, v224);
    _s24IntelligencePlatformCore12EventMatcherV11entityClass0aB006EntityG0Vvg_0();
    sub_1C4471874(v32, v224 + v8[6]);
    LOBYTE(v218) = v499;
    *(v224 + v8[7]) = v499;
    v226 = v217 + 3 * v490;
    sub_1C4471874(v225, v226);
    sub_1C4EFD538();
    sub_1C4471874(v32, v226 + v8[6]);
    *(v226 + v8[7]) = v218;
    _s24IntelligencePlatformCore12EventMatcherV11entityClass0aB006EntityG0Vvg_0();
    v227 = sub_1C4EFD0A8();
    v36 = (v501 + 2);
    v482 = *(v501 + 1);
    v482(v26, v500);
    v38 = 0;
    v26 = (v227 + 56);
    v485 = v227;
    sub_1C440CC3C();
    v488 = (v36 + 1);
    v483 = v36;
    v486 = (v36 + 3);
    v484 = v227 + 56;
    v37 = v501;
    if (v32)
    {
      while (1)
      {
        v44 = v497;
LABEL_66:
        v229 = v500;
        (*(v37 + 2))(v23, *(v485 + 48) + *(v37 + 9) * (__clz(__rbit64(v32)) | (v38 << 6)), v500);
        sub_1C441FAA8();
        v230 = v495;
        sub_1C4471874(v498, v495);
        (*(v37 + 4))(v230 + v8[5], v23, v229);
        sub_1C4408A90();
        sub_1C4471874(v44, v230 + v231);
        sub_1C4422AEC();
        v232 = *(v43 + 24);
        if (*(v43 + 16) >= v232 >> 1)
        {
          sub_1C4461C7C(v232);
          v43 = v234;
        }

        sub_1C44409B0();
        sub_1C441EC30();
        sub_1C4485614(v495, v233);
      }
    }

    v44 = v497;
    while (1)
    {
      v228 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        __break(1u);
LABEL_100:
        __break(1u);
        goto LABEL_101;
      }

      if (v228 >= v227)
      {
        break;
      }

      v32 = *&v26[8 * v228];
      ++v38;
      if (v32)
      {
        v38 = v228;
        goto LABEL_66;
      }
    }

    v495 = v8;

    sub_1C456902C(&unk_1EC0BC650, &qword_1C4F30BB0);
    v235 = *(v501 + 9);
    v236 = (*(v501 + 80) + 32) & ~*(v501 + 80);
    v237 = swift_allocObject();
    *(v237 + 16) = v481;
    v238 = v237 + v236;
    sub_1C4EFCEC8();
    sub_1C4EFCFC8();
    sub_1C4EFD498();
    v501 = v235;
    sub_1C4EFD4E8();
    v38 = 4;
    v8 = v500;
    v32 = v499;
    v23 = v496;
    do
    {
      sub_1C441FAA8();
      sub_1C4471874(v498, v23);
      v239 = v495;
      v37 = *v488;
      (*v488)(&v23[*(v495 + 5)], v238, v8);
      sub_1C4408A90();
      sub_1C4471874(v44, &v23[v240]);
      v23[*(v239 + 28)] = v32;
      v242 = *(v43 + 16);
      v241 = *(v43 + 24);
      if (v242 >= v241 >> 1)
      {
        sub_1C458C108(v241 > 1, v242 + 1, 1, v43);
        v43 = v244;
      }

      *(v43 + 16) = v242 + 1;
      sub_1C441EC30();
      v23 = v496;
      sub_1C4485614(v496, v243);
      v238 += v501;
      --v38;
    }

    while (v38);
    swift_setDeallocating();
    sub_1C49E16E8();
    v36 = v487;
    sub_1C4EFCFB8();
    v245 = sub_1C4EFD0A8();
    v482(v36, v8);
    v26 = (v245 + 56);
    v496 = v245;
    sub_1C440CC3C();
    v487 = (v245 + 56);
    if (v32)
    {
      while (1)
      {
LABEL_78:
        v247 = v500;
        v248 = v493;
        (v37)(v493, *(v496 + 6) + (__clz(__rbit64(v32)) | (v38 << 6)) * v501, v500);
        sub_1C441FAA8();
        v249 = v494;
        sub_1C4471874(v498, v494);
        v250 = v495;
        (*v486)(&v249[*(v495 + 5)], v248, v247);
        sub_1C4408A90();
        sub_1C4471874(v44, &v249[v251]);
        v249[*(v250 + 28)] = v499;
        v252 = *(v43 + 24);
        if (*(v43 + 16) >= v252 >> 1)
        {
          sub_1C4461C7C(v252);
          v43 = v254;
        }

        sub_1C44409B0();
        sub_1C441EC30();
        sub_1C4485614(v494, v253);
      }
    }

    while (1)
    {
      v246 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        goto LABEL_100;
      }

      if (v246 >= v245)
      {
        break;
      }

      v32 = *&v26[8 * v246];
      ++v38;
      if (v32)
      {
        v38 = v246;
        goto LABEL_78;
      }
    }

    v49 = sub_1C4811F4C(v43);

    v84 = sub_1C44022F0();
    goto LABEL_19;
  }

  if (qword_1EDDFD130 != -1)
  {
    v210 = swift_once();
  }

  v255 = sub_1C440AB64(v210, qword_1EDDFD138);
  v257 = v45 && v256 == v44;
  if (v257 || (v258 = sub_1C44250D8(v255, v256), (v258 & 1) != 0))
  {
    sub_1C441D224();
    sub_1C4485404(v36, v259);
    sub_1C456902C(&qword_1EC0B8CE8, &unk_1C4F0E120);
    v49 = swift_allocObject();
    sub_1C4419768(v49, xmmword_1C4F0C890);
    sub_1C4471874(v498, v489);
    sub_1C442F1E4();
    sub_1C4EFD538();
    v49[3].n128_u64[1] = v8;
    sub_1C442CAC0();
    v496 = sub_1C445E5E8(v260, v261, &protocol conformance descriptor for StandardEntityFusion);
    sub_1C44145B4(v496);
    v262 = sub_1C43FC3C0();
    sub_1C4471874(v262, v263);
    sub_1C4406F18();
    v495 = v264;
    v265 = sub_1C4422A94();
    sub_1C4485614(v265, v266);
    v267 = sub_1C443FC80();
    v268(v267);
    sub_1C4409CC8();
    v269 = sub_1C440C50C();
    sub_1C4471874(v269, v270);
    sub_1C4EFD4C8();
    sub_1C4416764();
    sub_1C442BB84();
    sub_1C4471874(v26, v271);
    v272 = sub_1C4422A94();
    sub_1C4485614(v272, v273);
    v274 = sub_1C447F0C4(v8[5]);
    (v501)(v274);
    sub_1C4409CC8();
    v44 = v26;
    v275 = sub_1C440C50C();
    sub_1C4471874(v275, v276);
    sub_1C4EFCF48();
LABEL_90:
    v277 = v496;
    v49[8].n128_u64[1] = v8;
    v49[9].n128_u64[0] = v277;
    sub_1C4422F90(&v49[7]);
    sub_1C4418444();
    sub_1C4471874(v44, v278);
    v279 = sub_1C43FD7E0();
    sub_1C4485614(v279, v280);
    (v501)(&v26[v8[5]], v38, v500);
    v158 = v8[7];
    goto LABEL_36;
  }

  if (qword_1EDDFED38 != -1)
  {
    v258 = swift_once();
  }

  v281 = sub_1C440AB64(v258, qword_1EDDFD0F0);
  v283 = v45 && v282 == v44;
  if (v283 || (v284 = sub_1C44250D8(v281, v282), (v284 & 1) != 0))
  {
    sub_1C440041C();
    v495 = v285;
    sub_1C4485404(v36, v286);
    v287 = sub_1C456902C(&qword_1EC0B8CE8, &unk_1C4F0E120);
    v49 = sub_1C4404370(v287);
    v288 = sub_1C4419768(v49, xmmword_1C4F0CE60);
    v496 = v289;
    sub_1C445FD38(v288, v290, v289);
    sub_1C442F1E4();
    sub_1C4EFD4C8();
    sub_1C4418020();
    sub_1C442CAC0();
    v293 = sub_1C445E5E8(v291, v292, &protocol conformance descriptor for StandardEntityFusion);
    v99 = sub_1C443F614(v293);
    v294 = sub_1C442DF64();
    sub_1C4471874(v294, v295);
    sub_1C4406F18();
    v494 = v296;
    sub_1C4401DD8();
    v297 = sub_1C4414B0C(v8[5]);
    v298(v297);
    sub_1C4404344();
    sub_1C4EFCF48();
    goto LABEL_18;
  }

  if (qword_1EDDFD178 != -1)
  {
    v284 = swift_once();
  }

  v299 = sub_1C440AB64(v284, &qword_1EDDFD180);
  if (v45 && v300 == v44)
  {
    goto LABEL_123;
  }

  v302 = sub_1C44250D8(v299, v300);
  if (v302)
  {
    goto LABEL_123;
  }

  if (qword_1EDDFD0A8 != -1)
  {
    v302 = swift_once();
  }

  v303 = sub_1C440AB64(v302, qword_1EDDFD0B0);
  if (v45 && v304 == v44)
  {
    goto LABEL_123;
  }

  v306 = sub_1C44250D8(v303, v304);
  if (v306)
  {
    goto LABEL_123;
  }

  if (qword_1EDDFD218 != -1)
  {
    v306 = swift_once();
  }

  v307 = sub_1C440AB64(v306, &qword_1EDDFD220);
  if (v45 && v308 == v44)
  {
    goto LABEL_123;
  }

  v310 = sub_1C44250D8(v307, v308);
  if (v310)
  {
    goto LABEL_123;
  }

  if (qword_1EDDFD150 != -1)
  {
    v310 = swift_once();
  }

  v323 = sub_1C440AB64(v310, qword_1EDDFD158);
  v325 = v45 && v324 == v44;
  if (v325 || (v326 = sub_1C44250D8(v323, v324), (v326 & 1) != 0))
  {
    sub_1C441D224();
    sub_1C4485404(v36, v327);
    sub_1C456902C(&qword_1EC0B8CE8, &unk_1C4F0E120);
    v49 = swift_allocObject();
    sub_1C4419768(v49, xmmword_1C4F0C890);
    sub_1C4471874(v498, v489);
    sub_1C442F1E4();
    _s24IntelligencePlatformCore15LocationMatcherV11entityClass0aB006EntityG0Vvg_0();
    v49[3].n128_u64[1] = v8;
    sub_1C442CAC0();
    v496 = sub_1C445E5E8(v328, v329, &protocol conformance descriptor for StandardEntityFusion);
    sub_1C44145B4(v496);
    v330 = sub_1C43FC3C0();
    sub_1C4471874(v330, v331);
    sub_1C4406F18();
    v495 = v332;
    v333 = sub_1C4422A94();
    sub_1C4485614(v333, v334);
    v335 = sub_1C443FC80();
    v336(v335);
    sub_1C4409CC8();
    v337 = sub_1C440C50C();
    sub_1C4471874(v337, v338);
    sub_1C4EFD4C8();
    sub_1C4416764();
    sub_1C442BB84();
    sub_1C4471874(v26, v339);
    v340 = sub_1C4422A94();
    sub_1C4485614(v340, v341);
    v342 = sub_1C447F0C4(v8[5]);
    (v501)(v342);
    sub_1C4409CC8();
    v44 = v26;
    v343 = sub_1C440C50C();
    sub_1C4471874(v343, v344);
    sub_1C4EFCF28();
    goto LABEL_90;
  }

  if (qword_1EDDFD2F0 != -1)
  {
    v326 = swift_once();
  }

  v345 = sub_1C440AB64(v326, qword_1EDDFD2F8);
  v347 = v45 && v346 == v44;
  if (v347 || (v348 = sub_1C44250D8(v345, v346), (v348 & 1) != 0))
  {
    sub_1C440041C();
    v495 = v349;
    sub_1C4485404(v36, v350);
    v351 = sub_1C456902C(&qword_1EC0B8CE8, &unk_1C4F0E120);
    v49 = sub_1C4404370(v351);
    v352 = sub_1C4419768(v49, xmmword_1C4F0CE60);
    v496 = v353;
    sub_1C445FD38(v352, v354, v353);
    sub_1C442F1E4();
    sub_1C4EFD538();
    sub_1C4418020();
    sub_1C442CAC0();
    v357 = sub_1C445E5E8(v355, v356, &protocol conformance descriptor for StandardEntityFusion);
    v99 = sub_1C443F614(v357);
    v358 = sub_1C442DF64();
    sub_1C4471874(v358, v359);
    sub_1C4406F18();
    v494 = v360;
    sub_1C4401DD8();
    v361 = sub_1C4414B0C(v8[5]);
    v362(v361);
    sub_1C4404344();
    _s24IntelligencePlatformCore19OrganizationMatcherV11entityClass0aB006EntityG0Vvg_0();
    goto LABEL_18;
  }

  if (qword_1EDDFD240 != -1)
  {
    v348 = swift_once();
  }

  v363 = sub_1C440AB64(v348, &qword_1EDDFD248);
  v365 = v45 && v364 == v44;
  if (v365 || (v366 = sub_1C44250D8(v363, v364), (v366 & 1) != 0))
  {
    sub_1C440041C();
    v495 = v367;
    sub_1C4485404(v36, v368);
    v369 = sub_1C456902C(&qword_1EC0B8CE8, &unk_1C4F0E120);
    v49 = sub_1C4404370(v369);
    v370 = sub_1C4419768(v49, xmmword_1C4F0CE60);
    v496 = v371;
    sub_1C445FD38(v370, v372, v371);
    sub_1C442F1E4();
    sub_1C4EFCED8();
    sub_1C4418020();
    sub_1C442CAC0();
    v375 = sub_1C445E5E8(v373, v374, &protocol conformance descriptor for StandardEntityFusion);
    v99 = sub_1C443F614(v375);
    v376 = sub_1C442DF64();
    sub_1C4471874(v376, v377);
    sub_1C4406F18();
    v494 = v378;
    sub_1C4401DD8();
    v103 = sub_1C4414B0C(v8[5]);
    goto LABEL_17;
  }

  if (qword_1EDDFD318 != -1)
  {
    v366 = swift_once();
  }

  v379 = sub_1C440AB64(v366, qword_1EDDFD320);
  v381 = v45 && v380 == v44;
  if (v381 || (v382 = sub_1C44250D8(v379, v380), (v382 & 1) != 0))
  {
    sub_1C4432340();
    sub_1C4485404(v36, v383);
    sub_1C456902C(&qword_1EC0B8CE8, &unk_1C4F0E120);
    v312 = swift_allocObject();
    sub_1C4419768(v312, xmmword_1C4F0D130);
    v314 = v384;
    v315 = v498;
    v316 = v489;
    sub_1C4471874(v498, v489);
    v317 = v490;
    sub_1C4EFD1E8();
    goto LABEL_124;
  }

  if (qword_1EDDFD340 != -1)
  {
    v382 = swift_once();
  }

  v385 = sub_1C440AB64(v382, qword_1EDDFD348);
  v387 = v45 && v386 == v44;
  if (v387 || (v388 = sub_1C44250D8(v385, v386), (v388 & 1) != 0))
  {
    sub_1C440041C();
    v495 = v389;
    sub_1C4485404(v36, v390);
    v391 = sub_1C456902C(&qword_1EC0B8CE8, &unk_1C4F0E120);
    v49 = sub_1C4404370(v391);
    v392 = sub_1C4419768(v49, xmmword_1C4F0CE60);
    v496 = v393;
    sub_1C445FD38(v392, v394, v393);
    sub_1C442F1E4();
    sub_1C4EFD4C8();
    sub_1C4418020();
    sub_1C442CAC0();
    v397 = sub_1C445E5E8(v395, v396, &protocol conformance descriptor for StandardEntityFusion);
    v99 = sub_1C443F614(v397);
    v398 = sub_1C442DF64();
    sub_1C4471874(v398, v399);
    sub_1C4406F18();
    v494 = v400;
    sub_1C4401DD8();
    v401 = sub_1C4414B0C(v8[5]);
    v402(v401);
    sub_1C4404344();
    sub_1C4EFD538();
    goto LABEL_18;
  }

  if (qword_1EDDFD2C8 != -1)
  {
    v388 = swift_once();
  }

  v403 = sub_1C440AB64(v388, qword_1EDDFD2D0);
  v405 = v45 && v404 == v44;
  if (v405 || (v406 = sub_1C44250D8(v403, v404), (v406 & 1) != 0))
  {
LABEL_123:
    sub_1C4432340();
    sub_1C4485404(v36, v311);
    sub_1C456902C(&qword_1EC0B8CE8, &unk_1C4F0E120);
    v312 = swift_allocObject();
    sub_1C4419768(v312, xmmword_1C4F0D130);
    v314 = v313;
    v315 = v498;
    v316 = v489;
    sub_1C4471874(v498, v489);
    v317 = v490;
    sub_1C4EFD4C8();
LABEL_124:
    v312[3].n128_u64[1] = v8;
    sub_1C442CAC0();
    v312[4].n128_u64[0] = sub_1C445E5E8(v318, v319, &protocol conformance descriptor for StandardEntityFusion);
    v320 = sub_1C4422F90(&v312[2]);
    v321 = sub_1C442DF64();
    sub_1C4471874(v321, v322);
    sub_1C4406F18();
    sub_1C4485614(v316, v320);
    (*(v501 + 4))(v320 + v8[5], v317, v500);
    sub_1C4422AEC();
    v84 = v315;
    v49 = v312;
    v85 = v314;
    goto LABEL_19;
  }

  if (qword_1EDDFD288 != -1)
  {
    v406 = swift_once();
  }

  v407 = sub_1C440AB64(v406, &qword_1EDDFD290);
  if (v45 && v408 == v44)
  {
    goto LABEL_201;
  }

  v410 = sub_1C44250D8(v407, v408);
  if (v410)
  {
    goto LABEL_201;
  }

  if (qword_1EDDFD1F0 != -1)
  {
    v410 = swift_once();
  }

  v411 = sub_1C440AB64(v410, &qword_1EDDFD1F8);
  v413 = v45 && v412 == v44;
  if (v413 || (sub_1C44250D8(v411, v412) & 1) != 0)
  {
    goto LABEL_201;
  }

  if (qword_1EDDFD1C8 != -1)
  {
    swift_once();
  }

  v414 = sub_1C442B738(v32, &qword_1EDDFD1D0);
  v415 = *v414;
  v416 = v414[1];
  if (*v414 == v43 && v416 == v44)
  {
    goto LABEL_201;
  }

  v418 = sub_1C44250D8(*v414, v416);
  if (v418)
  {
    goto LABEL_201;
  }

  if (qword_1EDDFD1A0 != -1)
  {
    v418 = swift_once();
  }

  v419 = sub_1C440AB64(v418, &qword_1EDDFD1A8);
  v421 = v45 && v420 == v44;
  if (v421 || (sub_1C44250D8(v419, v420) & 1) != 0 || (sub_1C44250D8(v415, v416) & 1) != 0)
  {
LABEL_201:
    sub_1C4432340();
    v495 = v422;
    sub_1C4485404(v36, v422);
    sub_1C456902C(&qword_1EC0B8CE8, &unk_1C4F0E120);
    v49 = swift_allocObject();
    sub_1C4419768(v49, xmmword_1C4F0F830);
    v496 = v423;
    v424 = v498;
    v425 = v489;
    sub_1C4471874(v498, v489);
    v426 = v490;
    sub_1C4EFCEF8();
    v49[3].n128_u64[1] = v8;
    sub_1C442CAC0();
    v429 = sub_1C445E5E8(v427, v428, &protocol conformance descriptor for StandardEntityFusion);
    v49[4].n128_u64[0] = v429;
    v493 = v429;
    sub_1C4422F90(&v49[2]);
    sub_1C442BB84();
    v430 = v497;
    sub_1C4471874(v497, v431);
    sub_1C4406F18();
    v488 = v432;
    v433 = sub_1C4422A94();
    sub_1C4485614(v433, v434);
    v435 = v8[5];
    v436 = *(v501 + 4);
    v501 += 8;
    v494 = v436;
    (v436)(v44 + v435, v426, v500);
    sub_1C4409CC8();
    v438 = v437;
    sub_1C4471874(v424, v425);
    sub_1C4EFD428();
    v49[6].n128_u64[0] = v8;
    v49[6].n128_u64[1] = v429;
    sub_1C4422F90(&v49[4].n128_i64[1]);
    sub_1C442BB84();
    sub_1C4471874(v430, v439);
    v440 = sub_1C4422A94();
    sub_1C4485614(v440, v441);
    v442 = sub_1C440BD24();
    v494(v442);
    *(v44 + v8[7]) = v438;
    sub_1C4471874(v424, v425);
    _s24IntelligencePlatformCore19OrganizationMatcherV11entityClass0aB006EntityG0Vvg_0();
    v443 = v493;
    v49[8].n128_u64[1] = v8;
    v49[9].n128_u64[0] = v443;
    sub_1C4422F90(&v49[7]);
    sub_1C442BB84();
    sub_1C4471874(v497, v444);
    v445 = sub_1C4422A94();
    sub_1C4485614(v445, v446);
    v447 = sub_1C440BD24();
    v448 = v494;
    v494(v447);
    v449 = v499;
    *(v44 + v8[7]) = v499;
    sub_1C4471874(v498, v425);
    sub_1C4EFD4C8();
    v49[11].n128_u64[0] = v8;
    v49[11].n128_u64[1] = v443;
    sub_1C4422F90(&v49[9].n128_i64[1]);
    sub_1C442BB84();
    v450 = v497;
    v451 = v495;
    sub_1C4471874(v497, v452);
    v453 = sub_1C4422A94();
    sub_1C4485614(v453, v454);
    v455 = sub_1C440BD24();
    v448(v455);
    v456 = v448;
    *(v44 + v8[7]) = v449;
    v457 = v498;
    sub_1C4471874(v498, v425);
    sub_1C4EFD218();
    v458 = v493;
    v49[13].n128_u64[1] = v8;
    v49[14].n128_u64[0] = v458;
    sub_1C4422F90(&v49[12]);
    sub_1C442BB84();
    sub_1C4471874(v450, v459);
    v460 = sub_1C4422A94();
    sub_1C4485614(v460, v461);
    v462 = sub_1C440BD24();
    v456(v462);
    sub_1C4409CC8();
    v463 = v457;
    v464 = v496;
    sub_1C4471874(v463, v425);
    sub_1C4EFCEE8();
    v465 = v493;
    v49[16].n128_u64[0] = v8;
    v49[16].n128_u64[1] = v465;
    sub_1C4422F90(&v49[14].n128_i64[1]);
    v466 = sub_1C43FC3C0();
    sub_1C4471874(v466, v467);
    v468 = sub_1C4422A94();
    sub_1C4485614(v468, v469);
    v470 = sub_1C440BD24();
    v494(v470);
    v471 = v499;
    *(v44 + v8[7]) = v499;
    v44 = v451;
    v472 = v498;
    sub_1C4471874(v498, v425);
    sub_1C4EFD4D8();
    v473 = v493;
    v49[18].n128_u64[1] = v8;
    v49[19].n128_u64[0] = v473;
    sub_1C4422F90(&v49[17]);
    sub_1C4418444();
    sub_1C4471874(v451, v474);
    v475 = sub_1C43FD7E0();
    sub_1C4485614(v475, v476);
    (v494)(v451 + v8[5], v426, v500);
    *(v451 + v8[7]) = v471;
    v84 = v472;
    v85 = v464;
    goto LABEL_19;
  }

  LOBYTE(v502) = v499;
  v477 = sub_1C4813710(v497, v498, &v502);
  if (v477)
  {
    v49 = v477;
    v478 = sub_1C44022F0();
    sub_1C4485404(v478, v479);
    sub_1C440041C();
    sub_1C4485404(v36, v480);
    v44 = v497;
    goto LABEL_20;
  }

  v502 = 0;
  v503 = 0xE000000000000000;
  sub_1C4F02248();

  v502 = 0xD000000000000014;
  v503 = 0x80000001C4F9C2E0;
  MEMORY[0x1C6940010](*v497, v497[1]);
  MEMORY[0x1C6940010](0xD000000000000016, 0x80000001C4F9C300);
  sub_1C4F024A8();
  __break(1u);
}

uint64_t sub_1C4485354(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C44853AC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C4485404(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C448545C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C44854B4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C448550C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C4485564(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C44855BC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C4485614(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C43FBE94();
  v4(v3);
  sub_1C43FBCE0();
  v5 = sub_1C43FBC98();
  v6(v5);
  return a2;
}

uint64_t sub_1C448566C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C43FBE94();
  v5(v4);
  sub_1C43FBCE0();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t sub_1C44856C8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C43FBE94();
  v4(v3);
  sub_1C43FCE50();
  v5 = sub_1C43FBC98();
  v6(v5);
  return a2;
}

uint64_t sub_1C448571C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C43FBE94();
  v5(v4);
  sub_1C43FCE50();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t sub_1C4485774(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C43FBE94();
  v4(v3);
  sub_1C43FBCE0();
  v5 = sub_1C43FBC98();
  v6(v5);
  return a2;
}

uint64_t sub_1C44857CC(uint64_t a1)
{
  v2 = type metadata accessor for PhaseStores(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C4485828(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FCE50();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1C4485884()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 1080) = v3;

  v4 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C4485988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = OBJC_IVAR____TtC24IntelligencePlatformCore35AssetRegistryRemoteBackendInProcess_remoteOptions;
  sub_1C4EFF948();
  sub_1C43FBCE0();
  (*(v7 + 32))(v3 + v6, a2);
  *(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore35AssetRegistryRemoteBackendInProcess_jsonDecoder) = a3;
  return v3;
}

uint64_t sub_1C4485A60(uint64_t a1)
{

  return sub_1C4F01198();
}

uint64_t sub_1C4485A8C(uint64_t a1)
{

  return sub_1C44DDE2C();
}

uint64_t *sub_1C4485AA8@<X0>(uint64_t a1@<X8>)
{
  *(v5 - 176) = v2;
  *(v5 - 208) = v1;
  *(v5 - 200) = a1;
  *(v5 - 104) = v4;
  *(v5 - 96) = v3;

  return sub_1C4422F90((v5 - 128));
}

unint64_t sub_1C4485AC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);

  return sub_1C441D828(v18, v19, va);
}

uint64_t sub_1C4485B3C@<X0>(uint64_t a1@<X8>, void (*a2)(void)@<X2>)
{

  return sub_1C448D610(v4 + a1, v3 + v2, a2);
}

uint64_t sub_1C4485B54@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = v2;
  a2[1] = result;
  return result;
}

uint64_t sub_1C4485B6C(uint64_t a1)
{

  return sub_1C4F010B8();
}

uint64_t sub_1C4485BA4()
{
  v3 = *(v1 - 144);

  return sub_1C4471988(v3, v0);
}

void sub_1C4485C10(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 2u);
}

uint64_t sub_1C4485C48()
{

  return swift_arrayDestroy();
}

uint64_t sub_1C4485C68(uint64_t a1)
{
  *(a1 + 16) = v1;

  return swift_bridgeObjectRetain_n();
}

void sub_1C4485C98()
{

  JUMPOUT(0x1C6940F90);
}

uint64_t sub_1C4485CC8()
{
  *(v1 + *(v2 + 44)) = v4;
  *(v1 + *(v2 + 48)) = v0;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C4485D10()
{

  return swift_slowAlloc();
}

uint64_t sub_1C4485D40()
{

  return sub_1C4689020(v0, 10);
}

uint64_t sub_1C4485D60()
{
  v2 = *(v0 - 872);
  v3 = *(v0 - 880);

  return sub_1C44239FC(v2, v3);
}

uint64_t sub_1C4485D80()
{
  v4 = v1 + *(v0 + 24);

  return sub_1C4471988(v2, v4);
}

uint64_t sub_1C4485DA0()
{

  return swift_arrayInitWithTakeFrontToBack();
}

uint64_t sub_1C4485DE8(uint64_t a1)
{

  return sub_1C4F00968();
}

void sub_1C4485E14()
{

  JUMPOUT(0x1C6942830);
}

uint64_t sub_1C4485E34()
{

  return sub_1C4EFEC38();
}

uint64_t sub_1C4485E70()
{

  return sub_1C44DDD64(v0, v1, type metadata accessor for WalletTransactionOrderStructs.DateRelationshipType);
}

uint64_t sub_1C4485E9C(uint64_t a1)
{

  return sub_1C4F02458();
}

void sub_1C4485ED0()
{

  sub_1C45D689C();
}

uint64_t sub_1C4485EF4()
{

  return sub_1C4EFEEF8();
}

void sub_1C4485F24()
{
  v2 = *(v0 - 488);
}

unint64_t sub_1C4485F3C(uint64_t a1, unint64_t a2)
{

  return sub_1C441D828(a1, a2, (v2 - 128));
}

uint64_t sub_1C4485F54()
{
  *(v0 + 4) = v1;
  *(v0 + 12) = 2048;
}

uint64_t sub_1C4485F78(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2080;
  return result;
}

uint64_t sub_1C4485FD8()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_1C4485FF0()
{

  return sub_1C447E970(v0, v1);
}

unint64_t sub_1C448602C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return sub_1C441D828(a1, a2, va);
}

uint64_t sub_1C4486064(uint64_t a1, uint64_t a2)
{

  return sub_1C4F02658();
}

uint64_t type metadata accessor for PeopleMatcher(uint64_t a1)
{
  result = qword_1EDDF7F78;
  if (!qword_1EDDF7F78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4486118()
{
  if (qword_1EDDF0810 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDE2D338;
  *(v0 + 16) = qword_1EDE2D338;

  return MEMORY[0x1EEE6DFA0](sub_1C44861B0, v1, 0);
}

uint64_t sub_1C44861B0()
{
  v1 = sub_1C447FFF4();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1C4486210()
{
  v1 = v0;
  type metadata accessor for NicknameEntry(0);
  sub_1C43FCDF8();
  v54 = v3;
  v55 = v2;
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FBCC4();
  v6 = v5 - v4;
  v7 = sub_1C4F00348();
  MEMORY[0x1EEE9AC00](v7 - 8);
  sub_1C43FBCC4();
  v8 = type metadata accessor for NicknameData(0);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBCC4();
  v51 = v10 - v9;
  v11 = sub_1C4EF98F8();
  sub_1C43FCDF8();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v46 - v18;
  sub_1C44867F4();
  v20 = sub_1C4F01E88();
  v21 = sub_1C4486838(0x656D616E6B63696ELL, 0xE900000000000073, 7627108, 0xE300000000000000, v20);

  if (v21)
  {
    sub_1C4EF98C8();

    (*(v13 + 32))(v19, v16, v11);
    v22 = sub_1C4EF9938();
    v24 = v23;
    v49 = v11;
    v50 = v1;
    v60 = 0;
    v58 = 0u;
    v59 = 0u;
    v25 = v22;
    sub_1C44344B8(v22, v23);
    sub_1C4F00338();
    sub_1C44868CC();
    v26 = v51;
    v47 = v25;
    v48 = v24;
    sub_1C4F00418();
    v27 = 0;
    v28 = *v26;
    v56 = *(*v26 + 16);
    v29 = MEMORY[0x1E69E7CC8];
    v52 = v13;
    v53 = v19;
    while (1)
    {
      if (v56 == v27)
      {
        type metadata accessor for Nicknames.GuardedData();
        sub_1C43FBDBC();
        v43 = swift_allocObject();
        *(v43 + 16) = v29;
        sub_1C456902C(&qword_1EC0C1BF8, &qword_1C4F46810);
        v44 = swift_allocObject();
        *(v44 + 24) = 0;
        *(v44 + 16) = v43;
        sub_1C4434000(v47, v48);
        sub_1C4486BD0(v51, type metadata accessor for NicknameData);
        (*(v13 + 8))(v19, v49);
        result = v50;
        *(v50 + 16) = v44;
        return result;
      }

      if (v27 >= *(v28 + 16))
      {
        break;
      }

      v30 = v28;
      sub_1C4480248(v28 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v27, v6);
      v31 = v55;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v32 = sub_1C4663244();

      v33 = MEMORY[0x1E69E7CD0];
      if (v32)
      {
        v33 = v32;
      }

      v57 = v33;
      v34 = v6;
      v35 = (v6 + *(v31 + 24));
      if (v35[1])
      {
        v36 = *v35;
        v37 = v35[1];
      }

      else
      {
        v36 = 0;
        v37 = 0xE000000000000000;
      }

      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44869B4(&v58, v36, v37, v38, v39, v40, v41, v42, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, *(&v58 + 1), v59, *(&v59 + 1), v60, v61, v62, v63, v64, v65);

      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      swift_isUniquelyReferenced_nonNull_native();
      *&v58 = v29;
      sub_1C4486BA8();

      v29 = v58;
      v6 = v34;
      sub_1C4486BD0(v34, type metadata accessor for NicknameEntry);
      ++v27;
      v13 = v52;
      v19 = v53;
      v28 = v30;
    }

    __break(1u);
  }

  result = sub_1C4F024A8();
  __break(1u);
  return result;
}