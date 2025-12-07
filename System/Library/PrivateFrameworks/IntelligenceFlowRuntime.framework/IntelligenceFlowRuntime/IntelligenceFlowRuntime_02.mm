uint64_t sub_22BB67A00()
{
  sub_22BB35F54();
  v1(0);
  sub_22BB2F330();
  v2 = sub_22BB31F54();
  v3(v2);
  return v0;
}

void sub_22BB67A6C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_22BDB52C4();
  sub_22BB314BC();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    sub_22BBE6DE0(&qword_27D8E6410, &unk_22BDCE250);
    sub_22BB314BC();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 20);
  }

  sub_22BB336D0(v11, a2, a2, v10);
}

uint64_t sub_22BB67B60(uint64_t a1, uint64_t (*a2)(void *), uint64_t (*a3)(uint64_t, uint64_t))
{
  sub_22BDBB814();
  a2(v8);
  v5 = sub_22BDBB834();

  return a3(a1, v5);
}

unint64_t sub_22BB67BE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BDB5F24() - 8;
  MEMORY[0x28223BE20](v4);
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    sub_22BB67A00();
    v7 = sub_22BDB43B4();
    sub_22BB67E48();
    if (v7)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_22BB67D50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22BDB52C4();
  sub_22BB314BC();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return sub_22BB3AA28(v9, a2, v8);
  }

  sub_22BBE6DE0(&qword_27D8E6410, &unk_22BDCE250);
  sub_22BB314BC();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 24));
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_22BB67E48()
{
  v1 = sub_22BB35760();
  v2(v1);
  sub_22BB2F330();
  (*(v3 + 8))(v0);
  return v0;
}

void sub_22BB67EF4()
{
  sub_22BB30F94();
  sub_22BB8ACCC();
  v5 = sub_22BBE6DE0(&qword_27D8E2978, &qword_22BDBD020);
  sub_22BB2F0C8(v5);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v6);
  v7 = sub_22BB3A4F8();
  sub_22BB369A8(v7);
  sub_22BB322B0();
  v8 = swift_allocObject();
  *(v8 + 16) = v4;
  *(v8 + 24) = v3;
  v9 = swift_allocObject();
  sub_22BB95BD8(v9);
  v10 = v0;
  sub_22BB352C4(v2, v1);
  sub_22BDBAFB4();

  sub_22BB39390();
  sub_22BB314EC();
}

uint64_t sub_22BB68010()
{
  sub_22BB2F35C();
  sub_22BB35210();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = sub_22BB31BAC(v2);
  *v3 = v4;
  v3[1] = sub_22BB3C48C;
  v5 = sub_22BB37834();

  return sub_22BB680A8(v5, v6, v7, v1);
}

uint64_t sub_22BB680A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v5 = sub_22BDB5764();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BB6816C, 0, 0);
}

uint64_t sub_22BB682A4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_22BB68328(uint64_t a1)
{
  v1 = sub_22BDB8774();
  sub_22BB30444();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  sub_22BB30574();
  v7 = v6 - v5;
  v8 = sub_22BDB77D4();
  sub_22BB30444();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  sub_22BB30574();
  v14 = v13 - v12;
  sub_22BDB6384();

  v15 = sub_22BDB77C4();
  v16 = sub_22BDBB104();

  if (os_log_type_enabled(v15, v16))
  {
    v25 = v8;
    v17 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v26 = v24;
    *v17 = 136315138;
    v18 = sub_22BDB9C34();
    v20 = v3;
    v21 = v1;
    v22 = sub_22BB32EE0(v18, v19, &v26);

    *(v17 + 4) = v22;
    v1 = v21;
    v3 = v20;
    _os_log_impl(&dword_22BB2C000, v15, v16, "CurareFSServiceSubscriber received event: %s", v17, 0xCu);
    sub_22BB32FA4(v24);
    sub_22BB30AF0();
    sub_22BB30AF0();

    (*(v10 + 8))(v14, v25);
  }

  else
  {

    (*(v10 + 8))(v14, v8);
  }

  sub_22BDB9C44();
  (*(v3 + 8))(v7, v1);
  return sub_22BDB9E14();
}

uint64_t sub_22BB685D8(uint64_t a1)
{
  sub_22BDB8774();
  sub_22BB30444();
  v80 = v3;
  v81 = v2;
  MEMORY[0x28223BE20](v2);
  sub_22BB30574();
  v79 = v5 - v4;
  v6 = sub_22BBE6DE0(&qword_27D8E6A80, &unk_22BDC0E70);
  MEMORY[0x28223BE20](v6 - 8);
  v82 = &v72 - v7;
  v8 = sub_22BDB5F24();
  MEMORY[0x28223BE20](v8 - 8);
  sub_22BB30574();
  v11 = v10 - v9;
  v12 = sub_22BDB77D4();
  sub_22BB30444();
  v14 = v13;
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v72 - v20;
  MEMORY[0x28223BE20](v19);
  sub_22BDB6384();

  v22 = sub_22BDB77C4();
  v23 = sub_22BDBB104();

  v24 = os_log_type_enabled(v22, v23);
  v83 = a1;
  v84 = v18;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v78 = v11;
    v27 = v12;
    v28 = v26;
    v87 = v26;
    *v25 = 136315138;
    v29 = sub_22BDB9C34();
    v31 = sub_22BB32EE0(v29, v30, &v87);

    *(v25 + 4) = v31;
    _os_log_impl(&dword_22BB2C000, v22, v23, "TaskStepLoggingSubscriber received event: %s", v25, 0xCu);
    sub_22BB32FA4(v28);
    v12 = v27;
    v32 = v85;
    v11 = v78;
    sub_22BB30AF0();
    sub_22BB30AF0();

    v33 = sub_22BB322D4();
    (v22)(v33);
  }

  else
  {

    v34 = sub_22BB322D4();
    (v22)(v34);
    v32 = v85;
  }

  sub_22BDB6384();
  v35 = sub_22BDB77C4();
  v36 = sub_22BDBB104();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_22BB2C000, v35, v36, "BiomeLibrarySageDev can not be imported", v37, 2u);
    sub_22BB30AF0();
  }

  (v22)(v21, v12);
  v38 = *(&v32->isa + OBJC_IVAR____TtC23IntelligenceFlowRuntime25TaskStepLoggingSubscriber_biomeSiriExecutionSource);
  if (v38)
  {
    v85 = v22;
    sub_22BB35ABC();
    v77 = v39;
    v78 = v14 + 8;
    sub_22BB38894(v32 + v39, v11, v40);
    v41 = v38;
    v42 = sub_22BDB4374();
    v44 = v43;
    v45 = sub_22BDB43E4();
    v46 = *(v45 - 8);
    v47 = *(v46 + 8);
    v75 = v46 + 8;
    v76 = v47;
    v47(v11, v45);
    v48 = v82;
    sub_22BDB9C54();
    v49 = sub_22BDB4354();
    sub_22BB336D0(v48, 0, 1, v49);
    v50 = objc_allocWithZone(MEMORY[0x277CF1488]);
    v51 = sub_22BB68CB4(v42, v44, 26, 0, 0xE000000000000000, 0, 0xE000000000000000, 0x7361542065676153, 0xE90000000000006BLL, 0, 0xE000000000000000, 0, 0xE000000000000000, v48);
    v82 = v41;
    [v41 sendEvent_];
    v52 = v84;
    sub_22BDB6384();

    v53 = sub_22BDB77C4();
    v54 = sub_22BDBB104();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v87 = v73;
      *v55 = 136315650;
      v86 = 26;
      type metadata accessor for BMSiriExecutionTaskStep(0);
      v56 = sub_22BDBAC14();
      v74 = v51;
      v58 = sub_22BB32EE0(v56, v57, &v87);

      *(v55 + 4) = v58;
      v72 = v12;
      *(v55 + 12) = 2080;
      v59 = v79;
      sub_22BDB9C44();
      v60 = sub_22BDB8764();
      v62 = v61;
      (*(v80 + 8))(v59, v81);
      v63 = sub_22BB32EE0(v60, v62, &v87);

      *(v55 + 14) = v63;
      *(v55 + 22) = 2080;
      sub_22BB35ABC();
      sub_22BB38894(v32 + v77, v11, v64);
      v65 = sub_22BDB4374();
      v67 = v66;
      v76(v11, v45);
      v68 = sub_22BB32EE0(v65, v67, &v87);

      *(v55 + 24) = v68;
      _os_log_impl(&dword_22BB2C000, v53, v54, "#TaskStepLoggingSubscriber - donated taskstep %s for %s event to BIOME for taskId: %s", v55, 0x20u);
      swift_arrayDestroy();
      sub_22BB30AF0();
      sub_22BB30AF0();

      v69 = v84;
      v70 = v72;
    }

    else
    {

      v69 = v52;
      v70 = v12;
    }

    (v85)(v69, v70);
  }

  return sub_22BDB9E14();
}

id sub_22BB68CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a2)
  {
    v17 = sub_22BDBABE4();

    if (a5)
    {
LABEL_3:
      v18 = sub_22BDBABE4();

      goto LABEL_6;
    }
  }

  else
  {
    v17 = 0;
    if (a5)
    {
      goto LABEL_3;
    }
  }

  v18 = 0;
LABEL_6:
  if (a7)
  {
    v19 = sub_22BDBABE4();
  }

  else
  {
    v19 = 0;
  }

  if (a9)
  {
    v20 = sub_22BDBABE4();
  }

  else
  {
    v20 = 0;
  }

  if (a11)
  {
    v21 = sub_22BDBABE4();

    if (a13)
    {
LABEL_14:
      v22 = sub_22BDBABE4();

      goto LABEL_17;
    }
  }

  else
  {
    v21 = 0;
    if (a13)
    {
      goto LABEL_14;
    }
  }

  v22 = 0;
LABEL_17:
  v23 = sub_22BDB4354();
  v24 = 0;
  if (sub_22BB3AA28(a14, 1, v23) != 1)
  {
    v24 = sub_22BDB4314();
    (*(*(v23 - 8) + 8))(a14, v23);
  }

  v25 = [v27 initWithTaskId:v17 taskStep:a3 statusReason:v18 slotValue:v19 intentName:v20 appBundleID:v21 interactionID:v22 absoluteTimestamp:v24];

  return v25;
}

uint64_t sub_22BB68F34(uint64_t a1, uint64_t a2)
{

  return sub_22BDBB5D4();
}

uint64_t sub_22BB69088(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_22BB690EC(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  sub_22BB30474();
  (*v3)(a2);
  return a2;
}

uint64_t sub_22BB6914C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22BB69194(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22BB69234(uint64_t a1)
{

  return sub_22BB336D0(v2, v1, 1, a1);
}

uint64_t sub_22BB69284()
{

  return _s23StatementStepEvaluationOMa(0);
}

uint64_t sub_22BB692AC()
{
  v3 = *(v1 - 104);

  return sub_22BB336D0(v3, 1, 1, v0);
}

uint64_t sub_22BB69338()
{

  return sub_22BD741AC(v0, v1, v2, v3);
}

uint64_t sub_22BB69358(uint64_t a1)
{

  return swift_getAssociatedTypeWitness();
}

void sub_22BB69380(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t sub_22BB693A0()
{

  return swift_slowAlloc();
}

id sub_22BB69508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_22BC151E4(a1, a2, a3, a4, 0, 0, v4);
}

uint64_t sub_22BB69568()
{

  return swift_arrayDestroy();
}

uint64_t sub_22BB69598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[11] = a5;
  v6[12] = v5;
  v6[9] = a3;
  v6[10] = a4;
  v6[7] = a1;
  v6[8] = a2;

  return sub_22BDBA354();
}

void sub_22BB695D0()
{

  JUMPOUT(0x2318A4C40);
}

uint64_t sub_22BB69718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{

  return a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25;
}

uint64_t sub_22BB69760(uint64_t result)
{
  *(result + 16) = sub_22BD5F660;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BB69778@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  *(v16 - 104) = v15;
  *(v16 - 96) = a2;
  *(v16 - 128) = a1;

  return sub_22BDB9B74();
}

uint64_t sub_22BB698E8()
{
  v1 = sub_22BB35760();
  v2(v1);
  sub_22BB31F70();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_22BB69974(uint64_t result, __n128 a2, __n128 a3)
{
  *(result + 16) = v3;
  *(result + 24) = a3;
  *(result + 40) = a2;
  return result;
}

uint64_t sub_22BB6999C(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_22BB69A90()
{

  return sub_22BDB8784();
}

uint64_t sub_22BB69AB0()
{

  return sub_22BB344AC(v0, _s24StatementExecutionResultOMa);
}

BOOL sub_22BB69B08(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void sub_22BB69B34()
{
  v2 = *(v0 + 3456);
  *(v1 - 160) = *(v0 + 3424);
  *(v1 - 152) = v2;
}

uint64_t sub_22BB69B78()
{
}

uint64_t sub_22BB69B9C@<X0>(uint64_t a1@<X8>, uint64_t a2)
{

  return sub_22BB8AE8C(v2, &a2 - a1, v3, v4);
}

uint64_t sub_22BB69BE0(uint64_t a1)
{

  return sub_22BDBABA4();
}

void sub_22BB69C08()
{
  sub_22BB32FA4(v0);

  JUMPOUT(0x2318A6080);
}

double sub_22BB69C3C(uint64_t a1)
{

  return sub_22BD813A8();
}

uint64_t sub_22BB69C9C(uint64_t result)
{
  *(result + 16) = sub_22BB89C80;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BB69D0C()
{
  v2 = sub_22BDB4C64();
  sub_22BB30418();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  sub_22BB30574();
  v8 = v7 - v6;
  v9 = sub_22BDBA014();
  sub_22BB30418();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  sub_22BB30574();
  v15 = v14 - v13;
  v16 = *v0;
  sub_22BDBA2E4();
  result = sub_22BDBA2D4();
  if (!v1)
  {
    v31 = v11;
    sub_22BDB9394();
    sub_22BDB9384();
    v18 = *(v16 + 16);
    if (v18)
    {
      v29 = v9;
      v30 = v8;
      v32 = MEMORY[0x277D84F90];
      sub_22BB69CB4(0, v18, 0);
      v20 = *(v4 + 16);
      v19 = v4 + 16;
      v21 = v16 + ((*(v19 + 64) + 32) & ~*(v19 + 64));
      v27 = *(v19 + 56);
      v28 = v20;
      v26 = (v19 - 8);
      do
      {
        v22 = v19;
        v28(v30, v21, v2);
        sub_22BDB4C44();
        v23 = v2;
        (*v26)(v30, v2);
        v25 = *(v32 + 16);
        v24 = *(v32 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_22BB69CB4(v24 > 1, v25 + 1, 1);
        }

        *(v32 + 16) = v25 + 1;
        (*(v31 + 32))(v32 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v25, v15, v29);
        v21 += v27;
        --v18;
        v2 = v23;
        v19 = v22;
      }

      while (v18);
    }

    return sub_22BDB9B74();
  }

  return result;
}

void *sub_22BB69FEC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t type metadata accessor for CurareFSServiceSubscriber(uint64_t a1)
{
  result = qword_281429C78;
  if (!qword_281429C78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22BB6A1A8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_22BB2F330();
  v4 = sub_22BB31F54();
  v5(v4);
  return a2;
}

uint64_t sub_22BB6A204(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_22BB2F330();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_22BB6A360@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_22BDB77D4();
  MEMORY[0x28223BE20](v2);
  sub_22BDB7594();
  sub_22BB8C540(qword_281428AE0, 255, MEMORY[0x277D20308], MEMORY[0x277D20300]);
  sub_22BDB75A4();
  a1[3] = &type metadata for BiomeIFRequestTelemetrySink;
  a1[4] = &off_283F80500;
  v3 = swift_allocObject();
  *a1 = v3;
  return sub_22BB382E8(&v5, v3 + 16);
}

uint64_t sub_22BB6A5FC()
{
  sub_22BB32FA4((v0 + 16));

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_22BB6A730()
{
  sub_22BB2F0D4();
  v1 = *(v0 + 56);
  *v1 = *(v0 + 88);
  sub_22BB382E8((v0 + 16), (v1 + 1));
  sub_22BB360FC();

  return v2();
}

void sub_22BB6AA38()
{
  sub_22BB69BFC();
  if ((v3 & 1) == 0 || (sub_22BB3665C(), v4 == v5))
  {
LABEL_6:
    sub_22BB31E6C();
    if (v2)
    {
      v6 = sub_22BBE6DE0(&qword_27D8E6AC0, &unk_22BDD0310);
      v7 = sub_22BB3A348(v6);
      sub_22BB3A7D8(v7);
      sub_22BB3B4C4(v8);
      if (v1)
      {
LABEL_8:
        v9 = sub_22BB328BC();
        sub_22BD2F750(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    sub_22BBE6DE0(&qword_27D8E64C0, &qword_22BDCE3C8);
    sub_22BB312FC();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  sub_22BB368F8();
  if (!v4)
  {
    sub_22BB30DA4();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_22BB6AD34()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_22BB6AD6C()
{
  sub_22BC5496C();
  v52 = v0[60];
  v1 = v0[54];
  v2 = v0[49];
  v3 = v0[43];
  v46 = v0[42];
  v47 = v0[44];
  v50 = v0[37];
  v51 = v0[41];
  v4 = v0[33];
  v40 = v0[32];
  v5 = v0[29];
  v53 = v0[30];
  v54 = v0[28];
  v6 = v0[22];
  v7 = v0[20];
  v41 = v0[21];
  v42 = v0[23];
  v8 = v0[18];
  v9 = v0[16];
  v48 = v0[19];
  v49 = v0[17];
  v44 = v0[12];
  v45 = v0[11];
  v43 = v0[7];
  sub_22BB32CE8();
  sub_22BB335C0(v10, v2);
  sub_22BBE6DE0(&qword_27D8E65F8, &qword_22BDCE568);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_22BDBCBD0;
  *(v11 + 56) = &type metadata for IFRequestTelemetryFilterOnlyPRToExecutorAndRG;
  *(v11 + 64) = &protocol witness table for IFRequestTelemetryFilterOnlyPRToExecutorAndRG;
  SessionPersistenceManager.init(id:transactionStreamFilters:)(v2, v11, v7);

  sub_22BB34070();
  sub_22BB3A518(v7, v9 + *(v12 + 160));
  v13 = *(v4 + *(v40 + 28));
  sub_22BB34070();
  *(v9 + *(v14 + 192)) = v13;
  sub_22BB34070();
  sub_22BB335C0(v4, v9 + *(v15 + 200));
  sub_22BB34070();
  (*(v6 + 16))(v9 + *(v16 + 128), v42, v41);

  v17 = sub_22BDBAB14();
  sub_22BB707F8(v9 + v1, (v0 + 2));
  *(v9 + v1) = v17;

  sub_22BB34070();
  *(v9 + *(v18 + 120)) = v43;
  sub_22BB34070();
  *(v9 + *(v19 + 184)) = v44;
  sub_22BB34070();
  (*(v3 + 16))(v9 + *(v20 + 168), v47, v46);
  sub_22BB34070();
  v52(v9 + *(v21 + 176), v51, v50);
  (*(v8 + 16))(v48, v45, v49);

  sub_22BBD0DBC();
  sub_22BB34070();
  v23 = v9 + *(v22 + 152);
  *v23 = v24 & 1;
  *(v23 + 1) = v25 & 1;
  *(v23 + 2) = v26 & 1;
  *(v23 + 8) = v27;
  sub_22BDB96A4();
  v28 = sub_22BDB9744();
  v29 = *(v5 + 8);
  v0[66] = v29;
  v0[67] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v29(v53, v54);
  v0[8] = v28;
  v30 = sub_22BC54704();
  sub_22BBE6DE0(v30, v31);
  sub_22BB31DE0();
  sub_22BB899C0(v32, &qword_27D8E2F48, &unk_22BDBD950);
  v33 = sub_22BDB90F4();

  sub_22BB34070();
  *(v9 + *(v34 + 144)) = v33;
  sub_22BB3E07C();

  return MEMORY[0x2822009F8](v35, v36, v37);
}

uint64_t SessionPersistenceManager.init(id:transactionStreamFilters:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_22BDB5664();
  v8 = sub_22BB2F0C8(v7);
  MEMORY[0x28223BE20](v8);
  sub_22BB30574();
  sub_22BDB77D4();
  sub_22BB30444();
  MEMORY[0x28223BE20](v9);
  sub_22BB30574();
  sub_22BB35D58();
  sub_22BB6A1A8(a1, a3, v10);
  v11 = [BiomeLibrary() IntelligenceFlow];
  sub_22BB371E4();
  swift_unknownObjectRelease();
  v12 = [v3 Transcript];
  swift_unknownObjectRelease();
  v13 = [v12 Datastream];
  sub_22BB371E4();
  swift_unknownObjectRelease();
  v14 = [v3 source];

  v15 = type metadata accessor for SessionPersistenceManager(0);
  *(a3 + v15[5]) = v14;
  sub_22BDB7594();
  sub_22BBBE8A4(qword_281428AE0, MEMORY[0x277D20308], MEMORY[0x277D20300]);
  sub_22BDB75A4();
  sub_22BB6B8A8(a1);
  v16 = swift_allocObject();
  result = sub_22BB382E8(v19, v16 + 16);
  v18 = a3 + v15[6];
  *v18 = v16;
  *(v18 + 8) = *&v19[5];
  *(v18 + 24) = &type metadata for BiomeIFRequestTelemetrySink;
  *(v18 + 32) = &off_283F80500;
  *(a3 + v15[7]) = a2;
  return result;
}

uint64_t sub_22BB6B560()
{
  sub_22BB32FA4((v0 + 16));

  return MEMORY[0x2821FE8E8](v0);
}

void sub_22BB6B598()
{

  sub_22BD8EBF4();
}

void *sub_22BB6B5D0()
{
  v2 = *(v0 + 40);

  return sub_22BB69FEC((v0 + 16), v2);
}

uint64_t sub_22BB6B5EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  *v16 = v20;
  v16[1] = v17;
  v16[2] = v15;
  v22 = (v16 + v18[6]);
  *v22 = a9;
  v22[1] = a10;
  v23 = (v16 + v18[7]);
  *v23 = a15;
  v23[1] = a11;
  *(v16 + v18[9]) = v19;
  *(v16 + v18[10]) = 0;
}

uint64_t sub_22BB6B650()
{

  return swift_slowAlloc();
}

uint64_t sub_22BB6B66C(uint64_t a1, uint64_t a2)
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_22BB6B6B8(uint64_t a1)
{

  return sub_22BCE1778();
}

__n128 sub_22BB6B6F0(__n128 *a1)
{
  result = *(v2 - 192);
  a1[1] = result;
  a1[2].n128_u64[0] = sub_22BB89C08;
  a1[2].n128_u64[1] = v1;
  return result;
}

uint64_t sub_22BB6B75C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_22BBE6DE0(a2, a3);
  sub_22BB30474();
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_22BB6B7B8()
{
  result = qword_281428A58;
  if (!qword_281428A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281428A58);
  }

  return result;
}

uint64_t sub_22BB6B80C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22BB6B854(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_22BBEB2E0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22BB6B8A8(uint64_t a1)
{
  v2 = sub_22BDB5664();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22BB6B904()
{
  result = qword_281428948;
  if (!qword_281428948)
  {
    sub_22BBEB2E0(&qword_27D8E3CD8, &qword_22BDC1018);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281428948);
  }

  return result;
}

void *sub_22BB6B968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  result = a13;
  *a13 = v13;
  return result;
}

uint64_t sub_22BB6B9FC()
{
  sub_22BB32FA4((v0 - 144));

  return sub_22BB32FA4((v0 - 104));
}

uint64_t sub_22BB6BA40(uint64_t a1, uint64_t a2)
{
  *v2 = a1;
  *(*(v3 - 80) + 8) = a2;

  return sub_22BDBA344();
}

unint64_t sub_22BB6BAA4()
{

  return sub_22BB32EE0(v0, v1, (v2 - 96));
}

uint64_t sub_22BB6BAC0()
{

  return swift_allocObject();
}

uint64_t sub_22BB6BB04()
{
  v3 = v0 + *(v2 - 128);
  v4 = *(*(v2 - 144) + 72);
  *(v2 - 136) = v4;
  return v3 + v4 * v1;
}

uint64_t sub_22BB6BB74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v31 = v26[58];
  v32 = v26[55];
  v33 = v26[54];
  v34 = v26[51];
  v35 = v26[50];
  v36 = v26[49];
  v37 = v26[48];
  v38 = v26[47];
  v39 = v26[46];
  v40 = v26[45];
  v41 = v26[42];
  v42 = v26[39];
  v43 = v26[36];
  v44 = v26[33];
  v29 = v26[27];
  *(v27 - 104) = v26[30];
  *(v27 - 96) = v29;

  return a1, a2, a3, a4, a5, a6, a7, a8, v25, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, a24, a25;
}

void sub_22BB6BC54()
{
  *(v3 + 16) = v0;
  v5 = v3 + 16 * v4;
  *(v5 + 32) = v2;
  *(v5 + 40) = v1;
}

uint64_t sub_22BB6BC64()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

void sub_22BB6BC90()
{

  sub_22BB8C414();
}

void sub_22BB6BD50(_WORD *a1@<X8>)
{
  *a1 = 258;
  *(v1 + 2200) = a1 + 1;
  *(v1 + 1192) = sub_22BB89C08;
}

uint64_t sub_22BB6BD9C()
{

  return sub_22BDB5154();
}

uint64_t sub_22BB6BDD0(uint64_t a1)
{
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  return v1;
}

uint64_t sub_22BB6BDF0()
{

  return swift_slowAlloc();
}

uint64_t sub_22BB6BE44()
{
  v5 = *(v3 - 104);

  return sub_22BD80EEC(v1, v0, v5, v2);
}

uint64_t sub_22BB6BEC8()
{

  return swift_task_alloc();
}

uint64_t sub_22BB6BEE0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_22BB36C80(a1, a2, a3, a4);
  sub_22BB2F330();
  v5 = sub_22BB31F54();
  v6(v5);
  return v4;
}

uint64_t sub_22BB6BF44(void *a1)
{
  sub_22BB69FEC(a1, a1[3]);
  sub_22BDB9E14();
  return sub_22BDB9E24();
}

uint64_t sub_22BB6BF88(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22BB6BF98(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22BB6BFA8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22BB6BFB8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22BB6C078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a4;
  v6 = a1;
  v7 = sub_22BDB57A4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22BDB5F24();
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22BDB8404();
  v16 = sub_22BB6C450(v14, v15, v6);

  if (v16)
  {
    sub_22BB335C0(a2, v13);
    v17 = *(a3 + OBJC_IVAR____TtC23IntelligenceFlowRuntime20ClientSessionManager_switchboard);
    type metadata accessor for SessionReverseClientDistributor(0);
    v18 = swift_allocObject();
    sub_22BB3A518(v13, v18 + OBJC_IVAR____TtC23IntelligenceFlowRuntime31SessionReverseClientDistributor_sessionId);
    *(v18 + OBJC_IVAR____TtC23IntelligenceFlowRuntime31SessionReverseClientDistributor_switchboard) = v17;
    v19 = type metadata accessor for XPCClientAvatarConfiguration();
    v20 = swift_allocObject();
    *(v20 + 16) = v18;
    v38 = v19;
    v39 = &off_281429730;
    v37[0] = v20;

    v21 = sub_22BB6C5EC(v37);
    sub_22BB325EC(v37, &qword_27D8E6618, &qword_22BDCE5A0);
  }

  else
  {
    v21 = MEMORY[0x277D84F90];
  }

  v22 = sub_22BDB8424();
  v24 = sub_22BB6C450(v22, v23, v6);

  if (v24)
  {
    (*(v8 + 16))(v10, v36, v7);
    v25 = (*(v8 + 88))(v10, v7);
    if (v25 == *MEMORY[0x277D1CE88])
    {
      v26 = &type metadata for StandardPlannerConfiguration;
      v27 = &off_281429750;
    }

    else
    {
      if (v25 != *MEMORY[0x277D1CE80])
      {

        sub_22BD5EA68();
        swift_allocError();
        *v34 = 2;
        swift_willThrow();
        return (*(v8 + 8))(v10, v7);
      }

      v26 = &type metadata for AgenticPlannerConfiguration;
      v27 = &off_2818A8118;
    }

    v38 = v26;
    v39 = v27;
    v28 = sub_22BB6C5EC(v37);
    sub_22BB325EC(v37, &qword_27D8E6618, &qword_22BDCE5A0);
  }

  else
  {
    v28 = MEMORY[0x277D84F90];
  }

  v29 = sub_22BDB8434();
  v31 = sub_22BB6C450(v29, v30, v6);

  if (v31)
  {
    v38 = &type metadata for ExecutorConfiguration;
    v39 = &off_28142A548;
    v32 = sub_22BB6C5EC(v37);
    sub_22BB325EC(v37, &qword_27D8E6618, &qword_22BDCE5A0);
  }

  else
  {
    v32 = MEMORY[0x277D84F90];
  }

  v40 = v21;
  sub_22BB3FF6C(v28);
  sub_22BB3FF6C(v32);
  return v40;
}

BOOL sub_22BB6C450(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v63 = sub_22BDB83A4();
  v6 = sub_22BB3DF20();
  v13 = sub_22BD61E90(v6, v7, MEMORY[0x277D1DD08], v8, v9, v10, v11, v12, a1, a2, v63);

  if (v13)
  {
    return 1;
  }

  v14 = sub_22BDB8404();
  v21 = sub_22BD61E90(v14, v15, MEMORY[0x277D1DD08], v16, v17, v18, v19, v20, a1, a2, v14);

  if (v21)
  {
    return 1;
  }

  sub_22BDB8424();
  sub_22BD63340();
  v30 = sub_22BD61E90(v23, v24, MEMORY[0x277D1DD08], v25, v26, v27, v28, v29, v55, v59, v64);

  if (v30)
  {
    return a3 & 1;
  }

  sub_22BDB8414();
  sub_22BD63340();
  v38 = sub_22BD61E90(v31, v32, MEMORY[0x277D1DD08], v33, v34, v35, v36, v37, v56, v60, v65);

  if (v38)
  {
    return a3 & 1;
  }

  sub_22BDB8434();
  sub_22BD63340();
  v46 = sub_22BD61E90(v39, v40, MEMORY[0x277D1DD08], v41, v42, v43, v44, v45, v57, v61, v66);

  if (v46)
  {
    return (a3 >> 1) & 1;
  }

  sub_22BDB83B4();
  sub_22BD63340();
  v54 = sub_22BD61E90(v47, v48, MEMORY[0x277D1DD08], v49, v50, v51, v52, v53, v58, v62, v67);

  if (v54)
  {
    return (a3 >> 1) & 1;
  }

  else
  {
    return (~a3 & 0x1F) == 0;
  }
}

uint64_t sub_22BB6C5A8()
{

  return sub_22BDBAF34();
}

uint64_t sub_22BB6C5EC(uint64_t a1)
{
  sub_22BB3CD70(a1, &v3, &qword_27D8E6618, &qword_22BDCE5A0);
  if (v4)
  {
    sub_22BB382E8(&v3, v5);
    sub_22BBE6DE0(&qword_27D8E6620, &qword_22BDCE5A8);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_22BDBCBD0;
    sub_22BB382E8(v5, v1 + 32);
  }

  else
  {
    sub_22BB325EC(&v3, &qword_27D8E6618, &qword_22BDCE5A0);
    return MEMORY[0x277D84F90];
  }

  return v1;
}

uint64_t sub_22BB6C6A0(uint64_t a1, uint64_t a2)
{

  return swift_dynamicCast();
}

uint64_t sub_22BB6C6D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v10 - 104) = v9;

  return swift_willThrow();
}

uint64_t sub_22BB6C73C()
{

  return sub_22BD5F4C0(v0 + 16);
}

char *sub_22BB6C7C4(char *result, int64_t a2, char a3, char *a4)
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
    sub_22BBE6DE0(&qword_27D8E6020, &qword_22BDCD550);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || &v13[v14] <= v12)
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

char *sub_22BB6C8C0(char *a1, int64_t a2, char a3)
{
  result = sub_22BB6C7C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_22BB6C90C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BDB5664();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BB6C970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22BB36BC0();
  sub_22BB35458();
  v13 = *(v12 + 896);
  v14 = *(v12 + 888);
  v15 = *(v12 + 880);
  v16 = *(v12 + 184);
  *v13 = 15;
  (*(v14 + 104))(v13, *MEMORY[0x277D85188], v15);
  sub_22BDB63E4();
  v17 = sub_22BDB6614();
  sub_22BB34ED4(v17);
  *(v12 + 936) = sub_22BDB65F4();
  if (v16)
  {
    v18 = *(v12 + 752);
    sub_22BB94F54(*(v12 + 184), *(v12 + 784));
    v19 = sub_22BB2F324();
    sub_22BB3CD70(v19, v20, v21, v22);
    v23 = 1;
    v24 = sub_22BB36B68();
    sub_22BB31814(v24, v25, v18);
    if (!v26)
    {
      v27 = sub_22BB97E2C();
      v28(v27);
      sub_22BDB9B34();
      sub_22BD63938();
      sub_22BDB5F04();
      v29 = sub_22BB2F3F0();
      v30(v29);
      v23 = 0;
    }

    sub_22BB325EC(*(v12 + 784), &unk_27D8E69E0, &qword_22BDC1660);
  }

  else
  {
    v23 = 1;
  }

  v31 = *(v12 + 632);
  sub_22BB336D0(*(v12 + 800), v23, 1, v31);
  v32 = sub_22BB3182C();
  sub_22BB6BEE0(v32, v33, &qword_27D8E6440, &qword_22BDCE290);
  v34 = sub_22BD62428();
  sub_22BB3CD70(v34, v35, v36, &qword_22BDCE290);
  v37 = sub_22BB3A840();
  v39 = sub_22BB3AA28(v37, v38, v31);
  v40 = *(v12 + 792);
  if (v39 == 1)
  {
    sub_22BDB43D4();
    sub_22BB36B74(v40);
    if (!v26)
    {
      sub_22BB325EC(*(v12 + 792), &qword_27D8E6440, &qword_22BDCE290);
    }
  }

  else
  {
    sub_22BB3A518(*(v12 + 792), *(v12 + 640));
  }

  v41 = *(v12 + 736);
  v1654 = *(v12 + 728);
  v42 = *(v12 + 192);
  v43 = *(v12 + 160);
  *(v12 + 40) = *v43;
  *(v12 + 56) = v43[1];
  *(v12 + 72) = v43[2];
  sub_22BB3FE9C(v12 + 40, v12 + 88);
  sub_22BB3FEF8(v12 + 56, v12 + 104);
  sub_22BB3CD70(v12 + 72, v12 + 120, &qword_27D8E6448, &qword_22BDCE298);
  sub_22BDB5654();
  sub_22BDB6124();
  sub_22BDB6104();
  sub_22BDB7744();
  sub_22BDB7704();
  v44 = sub_22BB313A8();
  v1658 = v45;
  v45(v44);
  sub_22BB32CE8();
  sub_22BB335C0(v41, v1654);

  v46 = sub_22BDB7744();
  sub_22BDBB1D4();

  if (sub_22BDBB244())
  {
    v47 = *(v12 + 560);
    v48 = *(v12 + 192);
    sub_22BB3B778();
    v1666[0] = sub_22BD62BD8();
    *v42 = 136315394;
    sub_22BB37DF4();
    sub_22BB335C0(v48 + v49, v47);
    sub_22BB3B194(&qword_28142DCF8, MEMORY[0x277D1CB28]);
    sub_22BDBB684();
    sub_22BC54A00();
    sub_22BB343F4();
    sub_22BB34648();
    v50 = sub_22BB2F12C();
    sub_22BB32EE0(v50, v51, v52);
    sub_22BB36C3C();

    *(v42 + 4) = v47;
    *(v42 + 12) = 2080;
    v53 = sub_22BDB5624();
    sub_22BB3093C();
    sub_22BB34648();
    v54 = sub_22BB3CB04();
    sub_22BB32EE0(v54, v55, v56);
    sub_22BB3935C();

    *(v42 + 14) = v53;
    sub_22BDB7714();
    sub_22BD6424C();
    _os_signpost_emit_with_name_impl(v57, v58, v59, v60, v61, v62, v42, 0x16u);
    sub_22BD62500();
    swift_arrayDestroy();
    sub_22BB30458();
    sub_22BB32238();
  }

  else
  {

    sub_22BB3093C();
    sub_22BB34648();
  }

  v63 = *(v12 + 592);
  v64 = *(v12 + 576);
  v65 = *(v12 + 568);
  v66 = *(v12 + 528);
  v1650 = *(v12 + 520);
  v1655 = *(v12 + 544);
  v67 = *(v12 + 192);
  v68 = *(v12 + 176);
  sub_22BB97BA8();
  v69 = sub_22BB345A8();
  v70(v69);
  v71 = sub_22BDB77A4();
  sub_22BB34ED4(v71);
  sub_22BB3A190();
  v1647 = sub_22BDB7794();
  *(v12 + 944) = v1647;
  (*(v64 + 8))(v63, v65);
  v72 = sub_22BB30AE4();
  v1658(v72);
  v73 = *(v66 + 16);
  *(v12 + 952) = v73;
  *(v12 + 960) = (v66 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v73(v1655, v68, v1650);
  v74 = OBJC_IVAR____TtC23IntelligenceFlowRuntime20ClientSessionManager_configuration;
  swift_beginAccess();
  v75 = sub_22BDB5B44();
  v76 = sub_22BB3AA28(v67 + v74, 1, v75);
  v77 = MEMORY[0x277D84F90];
  if (v76)
  {
    swift_endAccess();
    v78 = sub_22BDB57C4();
    if (v78)
    {
      v79 = v78;
    }

    else
    {
      v79 = v77;
    }
  }

  else
  {
    v79 = sub_22BDB5B24();
    swift_endAccess();
  }

  v80 = *(v12 + 480);
  MEMORY[0x23189F780]();
  sub_22BB36B74(v80);
  if (v26)
  {
    v81 = *(v12 + 480);
    swift_getKeyPath();
    sub_22BDB4BE4();

    sub_22BDB5784();
    sub_22BB2F164(v81);
    if (!v26)
    {
      sub_22BB325EC(*(v12 + 480), &qword_27D8E6438, &qword_22BDD0FE0);
    }
  }

  else
  {
    v82 = *(v12 + 496);
    (*(*(v12 + 504) + 32))(*(v12 + 488), *(v12 + 480), v82);
    v83 = sub_22BB72084();
    sub_22BB336D0(v83, v84, v85, v82);
  }

  v87 = *(v12 + 488);
  v86 = *(v12 + 496);
  sub_22BB36B74(v87);
  if (!v26)
  {
    v95 = *(v12 + 448);
    v94 = *(v12 + 456);
    (*(*(v12 + 504) + 32))(*(v12 + 512), v87, v86);
    sub_22BDB5844();
    if (sub_22BB3AA28(v95, 1, v94) == 1)
    {
      v96 = *(v12 + 448);
      sub_22BDB5824();
      v97 = sub_22BB2F164(v96);
      if (!v26)
      {
        v97 = sub_22BB325EC(*(v12 + 448), &qword_27D8E6430, &unk_22BDCE280);
      }
    }

    else
    {
      v97 = (*(*(v12 + 464) + 32))(*(v12 + 472), *(v12 + 448), *(v12 + 456));
    }

    MEMORY[0x23189F7D0](v97);
    sub_22BB35FA0();
    v98();
    v99 = sub_22BB2F0E0();
    v101 = v100(v99);
    v102 = *(v12 + 440);
    v103 = *(v12 + 416);
    v104 = *(v12 + 424);
    v1638 = v79;
    if (v101 == *MEMORY[0x277D1CEB0])
    {
      (*(v104 + 8))(v102, v103);
      v105 = 3;
    }

    else
    {
      v106 = *MEMORY[0x277D1CEA8];
      v107 = *(v104 + 8);
      v107(v102, v103);
      if (v101 == v106)
      {
        v105 = 1;
      }

      else
      {
        v107(*(v12 + 432), *(v12 + 416));
        v105 = 0;
      }
    }

    v108 = (*(v12 + 1041) & v105);
    _s23IntelligenceFlowRuntime0aB6DaemonV6logger2os6LoggerVvgZ_0();
    sub_22BB32CE8();
    v109 = sub_22BB2F0E0();
    sub_22BB335C0(v109, v110);
    v111 = sub_22BDB77C4();
    v112 = sub_22BDBB0F4();
    v113 = os_log_type_enabled(v111, v112);
    v114 = *(v12 + 864);
    v115 = *(v12 + 824);
    v116 = *(v12 + 816);
    v117 = *(v12 + 720);
    if (v113)
    {
      v1656 = v105;
      v118 = swift_slowAlloc();
      v119 = sub_22BB314C8();
      v1666[0] = v119;
      *v118 = 136315650;
      v1659 = v114;
      v1664 = v116;
      v116 = sub_22BDB5624();
      v120 = v108;
      v122 = v121;
      sub_22BB3093C();
      sub_22BB34648();
      sub_22BB32EE0(v116, v122, v1666);
      sub_22BB371E4();
      v108 = v120;

      *(v118 + 4) = v117;
      *(v118 + 12) = 256;
      *(v118 + 14) = v1656;
      *(v118 + 15) = 256;
      *(v118 + 17) = v120;
      _os_log_impl(&dword_22BB2C000, v111, v112, "SessionCoordinator %s: client requested participants %hhu. client effective participants %hhu", v118, 0x12u);
      sub_22BB32FA4(v119);
      sub_22BD62140();
      sub_22BB38680();

      v123 = *(v115 + 8);
      v123(v1659, v1664);
    }

    else
    {

      sub_22BB3093C();
      sub_22BB34648();
      v123 = *(v115 + 8);
      v124 = sub_22BB331D4();
      v123(v124, v125);
    }

    sub_22BB6C078(v108, *(v12 + 736), *(v12 + 192), *(v12 + 512));
    v1637 = v123;

    sub_22BDB57D4();
    v532 = sub_22BDB5564();
    v533 = sub_22BB2F3FC();
    v535 = sub_22BB3AA28(v533, v534, v532);
    if (v535 == 1)
    {
      sub_22BB325EC(*(v12 + 408), &qword_27D8E6428, &qword_22BDCE278);
    }

    else
    {
      v536 = sub_22BDB5554();
      sub_22BB30474();
      v537 = sub_22BB2F324();
      v538(v537);
      v539 = *(v536 + 16);
      if (v539)
      {
        v540 = *(v12 + 352);
        v1666[0] = MEMORY[0x277D84F90];
        sub_22BB6C76C(0, v539, 0);
        v541 = v1666[0];
        sub_22BB2F390();
        v543 = v536 + v542;
        v1649 = v544;
        v1642 = *(v540 + 72);
        do
        {
          v1665 = v541;
          v545 = sub_22BB3CB04();
          v1649(v545);
          sub_22BDB4F34();
          v546 = sub_22BDB4BD4();
          v547 = sub_22BB36B68();
          v549 = sub_22BB3AA28(v547, v548, v546);
          if (v549 == 1)
          {
            sub_22BB325EC(*(v12 + 336), &qword_27D8E6420, &qword_22BDCE270);
            v116 = 0;
            v550 = 0;
            v551 = 0;
            v552 = 0;
          }

          else
          {
            v116 = sub_22BDB4BC4();
            v550 = v553;
            v551 = v554;
            v552 = v555;
            sub_22BB30474();
            v556 = sub_22BB2F3F0();
            v557(v556);
          }

          *(v12 + 1008) = v116;
          *(v12 + 1016) = v550;
          *(v12 + 1024) = v551;
          *(v12 + 1032) = v552;
          *(v12 + 1040) = v549 == 1;
          sub_22BDB4F14();
          v558 = sub_22BDB5444();
          v559 = sub_22BB2F3FC();
          if (sub_22BB3AA28(v559, v560, v558) == 1)
          {
            sub_22BB325EC(*(v12 + 328), &qword_27D8E6D90, &unk_22BDD0C20);
          }

          else
          {
            sub_22BDB5424();
            sub_22BB30474();
            v561 = sub_22BB3182C();
            v562(v561);
          }

          v541 = v1665;
          sub_22BDB9644();
          v563 = sub_22BB30AE4();
          v564(v563);
          v1666[0] = v1665;
          v566 = *(v1665 + 16);
          v565 = *(v1665 + 24);
          if (v566 >= v565 >> 1)
          {
            v569 = sub_22BB2F158(v565);
            sub_22BB6C76C(v569, v566 + 1, 1);
            v541 = v1666[0];
          }

          *(v541 + 16) = v566 + 1;
          sub_22BB2F390();
          (*(v568 + 32))(v541 + v567 + *(v568 + 72) * v566);
          v543 += v1642;
          --v539;
        }

        while (v539);

LABEL_57:
        v570 = v1638;
        if (*(v541 + 16))
        {
          *(v12 + 1044) = sub_22BDB6444();
          *(v12 + 1052) = v571;
          *(v12 + 1060) = v572;
          *(v12 + 1068) = v573;
          *(v12 + 1076) = 0;
          sub_22BDB64A4();
          sub_22BDB6484();
          sub_22BDB9644();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_22BB305BC();
            sub_22BB6E3F8();
            v541 = v676;
          }

          v575 = *(v541 + 16);
          v574 = *(v541 + 24);
          if (v575 >= v574 >> 1)
          {
            sub_22BB2F138(v574);
            sub_22BB6E3F8();
            v541 = v677;
          }

          v576 = *(v12 + 392);
          v577 = *(v12 + 368);
          v578 = *(v12 + 376);
          *(v541 + 16) = v575 + 1;
          (*(v578 + 32))(v541 + ((*(v578 + 80) + 32) & ~*(v578 + 80)) + *(v578 + 72) * v575, v576, v577);
        }

        *(v12 + 968) = v541;
        sub_22BDB63E4();
        sub_22BB32CE8();
        v579 = sub_22BB30AE4();
        sub_22BB335C0(v579, v580);
        v581 = sub_22BDB77C4();
        v582 = sub_22BDBB134();
        if (os_log_type_enabled(v581, v582))
        {
          v1631 = v582;
          sub_22BB3B778();
          sub_22BB3E030();
          *v116 = 136446466;
          sub_22BDB5624();
          sub_22BB3093C();
          sub_22BB34648();
          v583 = sub_22BB30AE4();
          v586 = sub_22BB32EE0(v583, v584, v585);

          *(v116 + 4) = v586;
          v1633 = v116;
          *(v116 + 12) = 2082;
          v587 = *(v541 + 16);
          v588 = MEMORY[0x277D84F90];
          if (v587)
          {
            v589 = *(v12 + 376);
            v1666[0] = MEMORY[0x277D84F90];

            v590 = sub_22BB3B700();
            sub_22BB6C8C0(v590, v591, v592);
            v588 = v1666[0];
            v593 = v589 + 16;
            sub_22BB2F390();
            v595 = v541 + v594;
            v1644 = *(v593 + 56);
            v1646 = v596;
            v1652 = v581;
            do
            {
              v597 = sub_22BB345A8();
              v1646(v597);
              sub_22BDB9634();
              v598 = *(v12 + 1112);
              if (v598)
              {
                v1661 = 0;
              }

              else
              {
                v1661 = sub_22BDB6454();
              }

              v599 = sub_22BDB9654();
              if (v599)
              {
                v600 = sub_22BDB6494();
              }

              else
              {
                v600 = 0;
              }

              (*(v593 - 8))(*(v12 + 384), *(v12 + 368));
              v1666[0] = v588;
              v602 = *(v588 + 16);
              v601 = *(v588 + 24);
              if (v602 >= v601 >> 1)
              {
                v604 = sub_22BB2F158(v601);
                sub_22BB6C8C0(v604, v602 + 1, 1);
                v588 = v1666[0];
              }

              *(v588 + 16) = v602 + 1;
              v603 = v588 + 16 * v602;
              *(v603 + 32) = v1661;
              *(v603 + 36) = v598 & 1;
              *(v603 + 40) = v600;
              *(v603 + 44) = v599 == 0;
              v595 += v1644;
              --v587;
              v581 = v1652;
            }

            while (v587);

            v570 = v1638;
          }

          v606 = sub_22BBE6DE0(&qword_27D8E6460, &unk_22BDCE2F0);
          MEMORY[0x2318A4D50](v588, v606);

          v607 = sub_22BB331D4();
          sub_22BB32EE0(v607, v608, v609);
          sub_22BD63698();

          *(v1633 + 14) = v588;
          _os_log_impl(&dword_22BB2C000, v581, v1631, "SessionCoordinator %{public}s ID token chain: %{public}s.", v1633, 0x16u);
          swift_arrayDestroy();
          sub_22BB89BBC();
          sub_22BB32238();

          v605 = sub_22BB2F3F0();
        }

        else
        {

          sub_22BB3093C();
          sub_22BB34648();
          v605 = sub_22BB2F324();
        }

        v1637(v605);
        v610 = *(v12 + 288);
        sub_22BDB57F4();
        v611 = sub_22BB2F3FC();
        if (sub_22BB3AA28(v611, v612, v610) == 1)
        {
          v613 = *(v12 + 280);
          sub_22BDB5354();
          v614 = sub_22BB2F164(v613);
          if (!v26)
          {
            v614 = sub_22BB325EC(*(v12 + 280), &qword_27D8E6418, &unk_22BDCE260);
          }
        }

        else
        {
          v614 = (*(*(v12 + 296) + 32))(*(v12 + 320), *(v12 + 280), *(v12 + 288));
        }

        MEMORY[0x23189F300](v614);
        v615 = sub_22BB30AE4();
        v617 = v616(v615);
        v618 = *MEMORY[0x277D1CB58];
        v619 = MEMORY[0x277D1CB48];
        v620 = &unk_22BDCE000;
        if (v617 == v618)
        {
          sub_22BDB5314();
LABEL_95:
          *(v12 + 976) = OBJC_IVAR____TtC23IntelligenceFlowRuntime20ClientSessionManager_switchboard;

          sub_22BB40108();
          v649 = v648;
          *(v12 + 1042) = v648 & 1;

          if (v649)
          {
            sub_22BDB63E4();
            sub_22BB32CE8();
            v650 = sub_22BB30AE4();
            sub_22BB335C0(v650, v651);
            v652 = sub_22BDB77C4();
            sub_22BDBB134();
            sub_22BB93938();
            v654 = os_log_type_enabled(v652, v653);
            v655 = *(v12 + 832);
            v656 = *(v12 + 816);
            v657 = *(v12 + 688);
            if (v654)
            {
              sub_22BB31AD8();
              v1663 = v656;
              v658 = sub_22BB6B650();
              v1666[0] = v658;
              *v570 = v620[34];
              sub_22BDB5624();
              sub_22BC54A00();
              sub_22BB3093C();
              sub_22BB34648();
              sub_22BB32EE0(v619, v620, v1666);
              sub_22BB36C3C();

              *(v570 + 4) = v657;
              sub_22BD63B54(&dword_22BB2C000, v652, v618, "SessionCoordinator %{public}s has a side-channel debugger attached.");
              sub_22BB32FA4(v658);
              sub_22BB30458();
              MEMORY[0x2318A6080](v570, -1, -1);

              v659 = v655;
              v660 = v1663;
            }

            else
            {

              sub_22BB3093C();
              sub_22BB34648();
              v659 = sub_22BC54704();
            }

            (v1637)(v659, v660);
            v661 = *(v12 + 256);
            (*(*(v12 + 248) + 104))(v661, *v619, *(v12 + 240));
            MEMORY[0x23189F310](v661);
            sub_22BDB5314();
            sub_22BDB52F4();
          }

          sub_22BB32CE8();
          sub_22BB335C0(v662, v663);
          sub_22BB35FA0();
          v664();
          v665 = sub_22BBE6DE0(&qword_27D8E6458, &qword_22BDCE2D0);
          sub_22BB34ED4(v665);

          v666 = swift_task_alloc();
          *(v12 + 984) = v666;
          *v666 = v12;
          v666[1] = sub_22BBD1550;
          sub_22BB3487C(*(v12 + 680));
          sub_22BB33430();

          return v674(v667, v668, v669, v670, v671, v672, v673, v674, a9, a10, a11, a12);
        }

        if (v617 == *MEMORY[0x277D1CB48])
        {
          if ((*(v12 + 1041) & 4) != 0)
          {
            goto LABEL_95;
          }

          sub_22BDB63E4();
          sub_22BB32CE8();
          v621 = sub_22BB30AE4();
          sub_22BB335C0(v621, v622);
          v623 = sub_22BDB77C4();
          v624 = sub_22BDBB134();
          v625 = os_log_type_enabled(v623, v624);
          v626 = *(v12 + 848);
          v627 = *(v12 + 816);
          v628 = *(v12 + 704);
          if (v625)
          {
LABEL_87:
            v629 = sub_22BB31AD8();
            v1662 = v627;
            v630 = sub_22BB314C8();
            v1666[0] = v630;
            *v629 = 136446210;
            v631 = sub_22BDB5624();
            v1653 = v626;
            v633 = v632;
            sub_22BB3093C();
            sub_22BB34648();
            v634 = v631;
            v620 = &unk_22BDCE000;
            sub_22BB32EE0(v634, v633, v1666);
            sub_22BB371E4();

            *(v629 + 4) = v628;
            _os_log_impl(&dword_22BB2C000, v623, v624, "SessionCoordinator %{public}s client requested debugging, but was not properly entitled.", v629, 0xCu);
            sub_22BB32FA4(v630);
            sub_22BB30458();
            v635 = v629;
            v619 = MEMORY[0x277D1CB48];
            MEMORY[0x2318A6080](v635, -1, -1);

            v636 = v1653;
            v637 = v1662;
LABEL_92:
            (v1637)(v636, v637);
            v641 = *(v12 + 256);
            (*(*(v12 + 248) + 104))(v641, v618, *(v12 + 240));
            MEMORY[0x23189F310](v641);
            sub_22BDB5314();
LABEL_94:
            v570 = v1638;
            goto LABEL_95;
          }
        }

        else
        {
          if (v617 != *MEMORY[0x277D1CB50])
          {
            v618 = *(v12 + 296);
            sub_22BDB5354();
            v642 = sub_22BB2F3F0();
            v643(v642);
            LOBYTE(v618) = v618 + 32;
            v644 = sub_22BB2F324();
            v645(v644);
            v646 = sub_22BB331D4();
            v647(v646);
            goto LABEL_94;
          }

          if ((~*(v12 + 1041) & 0x14) == 0)
          {
            goto LABEL_95;
          }

          sub_22BDB63E4();
          sub_22BB32CE8();
          v638 = sub_22BB30AE4();
          sub_22BB335C0(v638, v639);
          v623 = sub_22BDB77C4();
          v624 = sub_22BDBB134();
          v640 = os_log_type_enabled(v623, v624);
          v626 = *(v12 + 840);
          v627 = *(v12 + 816);
          v628 = *(v12 + 696);
          if (v640)
          {
            goto LABEL_87;
          }
        }

        sub_22BB3093C();
        sub_22BB34648();
        v636 = sub_22BB31B54();
        goto LABEL_92;
      }
    }

    v541 = MEMORY[0x277D84F90];
    goto LABEL_57;
  }

  v88 = *(v12 + 736);
  v89 = *(v12 + 192);

  sub_22BB325EC(v87, &qword_27D8E6438, &qword_22BDD0FE0);
  v90 = sub_22BD5EA68();
  sub_22BB31A08(&type metadata for ClientSessionManager.SessionError, v90);
  *v91 = 2;
  swift_willThrow();
  v92 = sub_22BB33728();
  v93(v92);
  sub_22BB76C64(v1647, v89, v88);
  v126 = *(v12 + 896);
  v127 = *(v12 + 872);
  v128 = *(v12 + 864);
  v129 = *(v12 + 856);
  v130 = *(v12 + 848);
  v131 = *(v12 + 840);
  v132 = *(v12 + 808);
  v733 = *(v12 + 832);
  v788 = *(v12 + 800);
  v843 = *(v12 + 792);
  v898 = *(v12 + 784);
  v953 = *(v12 + 776);
  v1008 = *(v12 + 768);
  v133 = *(v12 + 736);
  v1063 = *(v12 + 744);
  v1118 = *(v12 + 728);
  v1173 = *(v12 + 720);
  v1228 = *(v12 + 712);
  v1283 = *(v12 + 704);
  v1338 = *(v12 + 696);
  v1393 = *(v12 + 688);
  v1448 = *(v12 + 680);
  v1503 = *(v12 + 672);
  v1558 = *(v12 + 640);
  sub_22BB71D94();
  v1613 = v135;
  v1614 = v134;
  sub_22BBD2288();
  v1615 = v137;
  v1616 = v136;
  v1617 = *(v12 + 560);
  v1618 = *(v12 + 544);
  v1619 = *(v12 + 536);
  v1620 = *(v12 + 512);
  v1621 = *(v12 + 488);
  v1622 = *(v12 + 480);
  v1623 = *(v12 + 472);
  v1624 = *(v12 + 448);
  v1625 = *(v12 + 440);
  v1626 = *(v12 + 432);
  v1627 = *(v12 + 408);
  v1628 = *(v12 + 400);
  v1629 = *(v12 + 392);
  v1630 = *(v12 + 384);
  v1632 = *(v12 + 360);
  v1634 = *(v12 + 336);
  v1635 = *(v12 + 328);
  v1636 = *(v12 + 320);
  v1639 = *(v12 + 312);
  v1640 = *(v12 + 304);
  v1641 = *(v12 + 280);
  v1643 = *(v12 + 272);
  v1645 = *(v12 + 264);
  v1648 = *(v12 + 256);
  v1651 = *(v12 + 232);
  v1657 = *(v12 + 208);
  v1660 = *(v12 + 200);

  sub_22BB3093C();
  sub_22BB34648();
  sub_22BB325EC(v132, &qword_27D8E6440, &qword_22BDCE290);
  sub_22BDB6604();

  v126, v138, v139, v140, v141, v142, v143, v144, v678, v733, v788, v843, v898, v953, v1008, v1063, v1118, v1173, v1228, v1283, v1338, v1393, v1448, v1503, v1558;
  v127, v145, v146, v147, v148, v149, v150, v151, v679, v734, v789, v844, v899, v954, v1009, v1064, v1119, v1174, v1229, v1284, v1339, v1394, v1449, v1504, v1559;
  v128, v152, v153, v154, v155, v156, v157, v158, v680, v735, v790, v845, v900, v955, v1010, v1065, v1120, v1175, v1230, v1285, v1340, v1395, v1450, v1505, v1560;
  v129, v159, v160, v161, v162, v163, v164, v165, v681, v736, v791, v846, v901, v956, v1011, v1066, v1121, v1176, v1231, v1286, v1341, v1396, v1451, v1506, v1561;
  v130, v166, v167, v168, v169, v170, v171, v172, v682, v737, v792, v847, v902, v957, v1012, v1067, v1122, v1177, v1232, v1287, v1342, v1397, v1452, v1507, v1562;
  v131, v173, v174, v175, v176, v177, v178, v179, v683, v738, v793, v848, v903, v958, v1013, v1068, v1123, v1178, v1233, v1288, v1343, v1398, v1453, v1508, v1563;
  v739, v180, v181, v182, v183, v184, v185, v186, v684, v739, v794, v849, v904, v959, v1014, v1069, v1124, v1179, v1234, v1289, v1344, v1399, v1454, v1509, v1564;
  v132, v187, v188, v189, v190, v191, v192, v193, v685, v740, v795, v850, v905, v960, v1015, v1070, v1125, v1180, v1235, v1290, v1345, v1400, v1455, v1510, v1565;
  v796, v194, v195, v196, v197, v198, v199, v200, v686, v741, v796, v851, v906, v961, v1016, v1071, v1126, v1181, v1236, v1291, v1346, v1401, v1456, v1511, v1566;
  v852, v201, v202, v203, v204, v205, v206, v207, v687, v742, v797, v852, v907, v962, v1017, v1072, v1127, v1182, v1237, v1292, v1347, v1402, v1457, v1512, v1567;
  v908, v208, v209, v210, v211, v212, v213, v214, v688, v743, v798, v853, v908, v963, v1018, v1073, v1128, v1183, v1238, v1293, v1348, v1403, v1458, v1513, v1568;
  v964, v215, v216, v217, v218, v219, v220, v221, v689, v744, v799, v854, v909, v964, v1019, v1074, v1129, v1184, v1239, v1294, v1349, v1404, v1459, v1514, v1569;
  v1020, v222, v223, v224, v225, v226, v227, v228, v690, v745, v800, v855, v910, v965, v1020, v1075, v1130, v1185, v1240, v1295, v1350, v1405, v1460, v1515, v1570;
  v1076, v229, v230, v231, v232, v233, v234, v235, v691, v746, v801, v856, v911, v966, v1021, v1076, v1131, v1186, v1241, v1296, v1351, v1406, v1461, v1516, v1571;
  v133, v236, v237, v238, v239, v240, v241, v242, v692, v747, v802, v857, v912, v967, v1022, v1077, v1132, v1187, v1242, v1297, v1352, v1407, v1462, v1517, v1572;
  v1133, v243, v244, v245, v246, v247, v248, v249, v693, v748, v803, v858, v913, v968, v1023, v1078, v1133, v1188, v1243, v1298, v1353, v1408, v1463, v1518, v1573;
  v1189, v250, v251, v252, v253, v254, v255, v256, v694, v749, v804, v859, v914, v969, v1024, v1079, v1134, v1189, v1244, v1299, v1354, v1409, v1464, v1519, v1574;
  v1245, v257, v258, v259, v260, v261, v262, v263, v695, v750, v805, v860, v915, v970, v1025, v1080, v1135, v1190, v1245, v1300, v1355, v1410, v1465, v1520, v1575;
  v1301, v264, v265, v266, v267, v268, v269, v270, v696, v751, v806, v861, v916, v971, v1026, v1081, v1136, v1191, v1246, v1301, v1356, v1411, v1466, v1521, v1576;
  v1357, v271, v272, v273, v274, v275, v276, v277, v697, v752, v807, v862, v917, v972, v1027, v1082, v1137, v1192, v1247, v1302, v1357, v1412, v1467, v1522, v1577;
  v1413, v278, v279, v280, v281, v282, v283, v284, v698, v753, v808, v863, v918, v973, v1028, v1083, v1138, v1193, v1248, v1303, v1358, v1413, v1468, v1523, v1578;
  v1469, v285, v286, v287, v288, v289, v290, v291, v699, v754, v809, v864, v919, v974, v1029, v1084, v1139, v1194, v1249, v1304, v1359, v1414, v1469, v1524, v1579;
  v1525, v292, v293, v294, v295, v296, v297, v298, v700, v755, v810, v865, v920, v975, v1030, v1085, v1140, v1195, v1250, v1305, v1360, v1415, v1470, v1525, v1580;
  v1581, v299, v300, v301, v302, v303, v304, v305, v701, v756, v811, v866, v921, v976, v1031, v1086, v1141, v1196, v1251, v1306, v1361, v1416, v1471, v1526, v1581;
  v1613, v306, v307, v308, v309, v310, v311, v312, v702, v757, v812, v867, v922, v977, v1032, v1087, v1142, v1197, v1252, v1307, v1362, v1417, v1472, v1527, v1582;
  v1614, v313, v314, v315, v316, v317, v318, v319, v703, v758, v813, v868, v923, v978, v1033, v1088, v1143, v1198, v1253, v1308, v1363, v1418, v1473, v1528, v1583;
  v1615, v320, v321, v322, v323, v324, v325, v326, v704, v759, v814, v869, v924, v979, v1034, v1089, v1144, v1199, v1254, v1309, v1364, v1419, v1474, v1529, v1584;
  v1616, v327, v328, v329, v330, v331, v332, v333, v705, v760, v815, v870, v925, v980, v1035, v1090, v1145, v1200, v1255, v1310, v1365, v1420, v1475, v1530, v1585;
  v1617, v334, v335, v336, v337, v338, v339, v340, v706, v761, v816, v871, v926, v981, v1036, v1091, v1146, v1201, v1256, v1311, v1366, v1421, v1476, v1531, v1586;
  v1618, v341, v342, v343, v344, v345, v346, v347, v707, v762, v817, v872, v927, v982, v1037, v1092, v1147, v1202, v1257, v1312, v1367, v1422, v1477, v1532, v1587;
  v1619, v348, v349, v350, v351, v352, v353, v354, v708, v763, v818, v873, v928, v983, v1038, v1093, v1148, v1203, v1258, v1313, v1368, v1423, v1478, v1533, v1588;
  v1620, v355, v356, v357, v358, v359, v360, v361, v709, v764, v819, v874, v929, v984, v1039, v1094, v1149, v1204, v1259, v1314, v1369, v1424, v1479, v1534, v1589;
  v1621, v362, v363, v364, v365, v366, v367, v368, v710, v765, v820, v875, v930, v985, v1040, v1095, v1150, v1205, v1260, v1315, v1370, v1425, v1480, v1535, v1590;
  v1622, v369, v370, v371, v372, v373, v374, v375, v711, v766, v821, v876, v931, v986, v1041, v1096, v1151, v1206, v1261, v1316, v1371, v1426, v1481, v1536, v1591;
  v1623, v376, v377, v378, v379, v380, v381, v382, v712, v767, v822, v877, v932, v987, v1042, v1097, v1152, v1207, v1262, v1317, v1372, v1427, v1482, v1537, v1592;
  v1624, v383, v384, v385, v386, v387, v388, v389, v713, v768, v823, v878, v933, v988, v1043, v1098, v1153, v1208, v1263, v1318, v1373, v1428, v1483, v1538, v1593;
  v1625, v390, v391, v392, v393, v394, v395, v396, v714, v769, v824, v879, v934, v989, v1044, v1099, v1154, v1209, v1264, v1319, v1374, v1429, v1484, v1539, v1594;
  v1626, v397, v398, v399, v400, v401, v402, v403, v715, v770, v825, v880, v935, v990, v1045, v1100, v1155, v1210, v1265, v1320, v1375, v1430, v1485, v1540, v1595;
  v1627, v404, v405, v406, v407, v408, v409, v410, v716, v771, v826, v881, v936, v991, v1046, v1101, v1156, v1211, v1266, v1321, v1376, v1431, v1486, v1541, v1596;
  v1628, v411, v412, v413, v414, v415, v416, v417, v717, v772, v827, v882, v937, v992, v1047, v1102, v1157, v1212, v1267, v1322, v1377, v1432, v1487, v1542, v1597;
  v1629, v418, v419, v420, v421, v422, v423, v424, v718, v773, v828, v883, v938, v993, v1048, v1103, v1158, v1213, v1268, v1323, v1378, v1433, v1488, v1543, v1598;
  v1630, v425, v426, v427, v428, v429, v430, v431, v719, v774, v829, v884, v939, v994, v1049, v1104, v1159, v1214, v1269, v1324, v1379, v1434, v1489, v1544, v1599;
  v1632, v432, v433, v434, v435, v436, v437, v438, v720, v775, v830, v885, v940, v995, v1050, v1105, v1160, v1215, v1270, v1325, v1380, v1435, v1490, v1545, v1600;
  v1634, v439, v440, v441, v442, v443, v444, v445, v721, v776, v831, v886, v941, v996, v1051, v1106, v1161, v1216, v1271, v1326, v1381, v1436, v1491, v1546, v1601;
  v1635, v446, v447, v448, v449, v450, v451, v452, v722, v777, v832, v887, v942, v997, v1052, v1107, v1162, v1217, v1272, v1327, v1382, v1437, v1492, v1547, v1602;
  v1636, v453, v454, v455, v456, v457, v458, v459, v723, v778, v833, v888, v943, v998, v1053, v1108, v1163, v1218, v1273, v1328, v1383, v1438, v1493, v1548, v1603;
  v1639, v460, v461, v462, v463, v464, v465, v466, v724, v779, v834, v889, v944, v999, v1054, v1109, v1164, v1219, v1274, v1329, v1384, v1439, v1494, v1549, v1604;
  v1640, v467, v468, v469, v470, v471, v472, v473, v725, v780, v835, v890, v945, v1000, v1055, v1110, v1165, v1220, v1275, v1330, v1385, v1440, v1495, v1550, v1605;
  v1641, v474, v475, v476, v477, v478, v479, v480, v726, v781, v836, v891, v946, v1001, v1056, v1111, v1166, v1221, v1276, v1331, v1386, v1441, v1496, v1551, v1606;
  v1643, v481, v482, v483, v484, v485, v486, v487, v727, v782, v837, v892, v947, v1002, v1057, v1112, v1167, v1222, v1277, v1332, v1387, v1442, v1497, v1552, v1607;
  v1645, v488, v489, v490, v491, v492, v493, v494, v728, v783, v838, v893, v948, v1003, v1058, v1113, v1168, v1223, v1278, v1333, v1388, v1443, v1498, v1553, v1608;
  v1648, v495, v496, v497, v498, v499, v500, v501, v729, v784, v839, v894, v949, v1004, v1059, v1114, v1169, v1224, v1279, v1334, v1389, v1444, v1499, v1554, v1609;
  v1651, v502, v503, v504, v505, v506, v507, v508, v730, v785, v840, v895, v950, v1005, v1060, v1115, v1170, v1225, v1280, v1335, v1390, v1445, v1500, v1555, v1610;
  v1657, v509, v510, v511, v512, v513, v514, v515, v731, v786, v841, v896, v951, v1006, v1061, v1116, v1171, v1226, v1281, v1336, v1391, v1446, v1501, v1556, v1611;
  v1660, v516, v517, v518, v519, v520, v521, v522, v732, v787, v842, v897, v952, v1007, v1062, v1117, v1172, v1227, v1282, v1337, v1392, v1447, v1502, v1557, v1612;
  sub_22BB2F09C();
  sub_22BB33430();

  return v524(v523, v524, v525, v526, v527, v528, v529, v530, a9, a10, a11, a12);
}

uint64_t sub_22BB6E3A8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22BDB4B54();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_22BB6E3F8()
{
  sub_22BB33EE8();
  if (v4)
  {
    sub_22BB30A44();
    if (v6 != v7)
    {
      sub_22BB3445C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22BB35DE4();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22BB36EDC(v2, v5, &qword_27D8E6018, &qword_22BDD0330);
  sub_22BB38F5C();
  sub_22BDB9664();
  sub_22BB314BC();
  sub_22BB2F390();
  if (v1)
  {
    v9 = sub_22BB32D98(v8);
    sub_22BD2788C(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BB32594();
  }
}

uint64_t sub_22BB6E4C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_22BDB5664();
  v6 = sub_22BB30434(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v18 = 0;
  v19 = 0xE000000000000000;
  sub_22BDBB334();

  v18 = 0xD000000000000024;
  v19 = 0x800000022BDD41F0;
  v11 = sub_22BDB5624();
  MEMORY[0x2318A4C40](v11);

  sub_22BB35D70();
  v12 = sub_22BB3AAD8();
  sub_22BB388FC(v12, v13);
  v14 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v15 = swift_allocObject();
  sub_22BB3D510(&v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  v16 = (v15 + ((v10 + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v16 = a2;
  v16[1] = a3;
  sub_22BDB64C4();
  sub_22BB58B50();
  swift_allocObject();

  return sub_22BDB64D4();
}

uint64_t sub_22BB6E65C()
{
  sub_22BDB5664();
  sub_22BB3A75C();
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  sub_22BDB43E4();
  sub_22BB31F70();
  (*(v3 + 8))(v2);
  sub_22BB3AE18();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_22BB6E74C()
{
  sub_22BB30F68();
  v0 = sub_22BDB5664();
  v1 = sub_22BB2F0C8(v0);
  MEMORY[0x28223BE20](v1);
  sub_22BB30574();
  sub_22BB33230();
  do
  {
    v7 = 0;
    MEMORY[0x2318A60A0](&v7, 8);
  }

  while (!v7);
  sub_22BB35D70();
  v2 = sub_22BB2F324();
  sub_22BB388FC(v2, v3);
  type metadata accessor for DefaultEventLogSender(0);
  sub_22BB58B50();
  swift_allocObject();
  v4 = sub_22BB30AE4();
  return sub_22BB6E7EC(v4, v5);
}

uint64_t sub_22BB6E7EC(uint64_t a1, uint64_t a2)
{
  v5 = sub_22BBE6DE0(&qword_27D8E3CC8, &qword_22BDC1008);
  sub_22BB34ED4(v5);
  *(v2 + 16) = sub_22BDB9ED4();
  sub_22BB6C90C(a1, v2 + OBJC_IVAR____TtC23IntelligenceFlowRuntime21DefaultEventLogSender_id);
  *(v2 + OBJC_IVAR____TtC23IntelligenceFlowRuntime21DefaultEventLogSender_eventParentID) = a2;
  sub_22BB408A4(a1, a2);
  sub_22BB6B8A8(a1);
  return v2;
}

uint64_t sub_22BB6E87C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for DefaultEventHandler(uint64_t a1)
{
  result = qword_28142A9F8;
  if (!qword_28142A9F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22BB6E934(uint64_t a1)
{
  sub_22BDBB174();
  sub_22BB30444();
  v15 = v4;
  v16 = v3;
  MEMORY[0x28223BE20](v3);
  sub_22BB30574();
  v7 = v6 - v5;
  v8 = sub_22BDBB154();
  MEMORY[0x28223BE20](v8);
  sub_22BB30574();
  v9 = sub_22BDBAA44();
  MEMORY[0x28223BE20](v9 - 8);
  sub_22BB30574();
  v13 = a1;
  sub_22BB6EC40(a1, v1 + OBJC_IVAR____TtC23IntelligenceFlowRuntime19DefaultEventHandler_subscriber);
  sub_22BB6ECB0();
  sub_22BDBB334();
  MEMORY[0x2318A4C40](0xD00000000000003ELL, 0x800000022BDD27C0);
  sub_22BBE6DE0(&qword_27D8E3C40, &qword_22BDC0FC0);
  sub_22BDB9DB4();
  sub_22BB6B80C(&qword_281428960, MEMORY[0x277CBCAD0], MEMORY[0x277CBCAE8]);
  v10 = sub_22BDBB684();
  MEMORY[0x2318A4C40](v10);

  sub_22BDBAA24();
  sub_22BB6B80C(&unk_281428780, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  sub_22BBE6DE0(&qword_27D8E3C48, &unk_22BDC0CD0);
  sub_22BB6B854(&qword_2814287E0, &qword_27D8E3C48, &unk_22BDC0CD0);
  sub_22BDBB2B4();
  (*(v15 + 104))(v7, *MEMORY[0x277D85260], v16);
  v11 = sub_22BDBB1A4();
  sub_22BB6ECF4(v13);
  result = v14;
  *(v14 + OBJC_IVAR____TtC23IntelligenceFlowRuntime19DefaultEventHandler_subscriptionQueue) = v11;
  return result;
}

uint64_t sub_22BB6EC40(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BBE6DE0(&qword_27D8E3C40, &qword_22BDC0FC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_22BB6ECB0()
{
  result = qword_281428778;
  if (!qword_281428778)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281428778);
  }

  return result;
}

uint64_t sub_22BB6ECF4(uint64_t a1)
{
  v2 = sub_22BBE6DE0(&qword_27D8E3C40, &qword_22BDC0FC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22BB6ED5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v83 = a3;
  v6 = sub_22BBE6DE0(&qword_27D8E3C80, &qword_22BDC0FB8);
  sub_22BB2F0C8(v6);
  sub_22BB30B9C();
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v71 - v9;
  v11 = *(a2 - 8);
  v12 = MEMORY[0x28223BE20](v8);
  v75 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  sub_22BB2F39C();
  v78 = v14;
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v71 - v17;
  MEMORY[0x28223BE20](v16);
  sub_22BB2F39C();
  v82 = v19;
  MEMORY[0x28223BE20](v20);
  sub_22BB2F39C();
  v81 = v21;
  v77 = v22;
  MEMORY[0x28223BE20](v23);
  sub_22BB2F39C();
  v86 = v24;
  v25 = sub_22BBE6DE0(&qword_27D8E3C40, &qword_22BDC0FC0);
  sub_22BB30474();
  v27 = MEMORY[0x28223BE20](v26);
  v76 = &v71 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v84 = (&v71 - v30);
  MEMORY[0x28223BE20](v29);
  sub_22BB2F39C();
  v85 = v31;
  sub_22BDB77D4();
  sub_22BB30444();
  v79 = v33;
  v80 = v32;
  MEMORY[0x28223BE20](v32);
  sub_22BB30574();
  sub_22BB36220();
  v34 = sub_22BDB77C4();
  v35 = sub_22BDBB104();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v73 = v18;
    v37 = v36;
    v38 = swift_slowAlloc();
    v74 = v11;
    v71 = v38;
    v88[0] = v38;
    *v37 = 136315138;
    v39 = sub_22BDBB8F4();
    v72 = a2;
    v41 = a1;
    v42 = v10;
    v43 = sub_22BB32EE0(v39, v40, v88);
    a2 = v72;

    *(v37 + 4) = v43;
    v10 = v42;
    a1 = v41;
    _os_log_impl(&dword_22BB2C000, v34, v35, "IN receive<S>(subscriber: S) %s", v37, 0xCu);
    sub_22BB32FA4(v71);
    v11 = v74;
    sub_22BB30AF0();
    sub_22BB30AF0();
  }

  (*(v79 + 8))(v3, v80);
  v44 = *(v11 + 16);
  v45 = v86;
  (v44)(v86, a1, a2);
  (v44)(v81, v45, a2);
  v46 = swift_dynamicCast();
  v47 = v84;
  if (v46)
  {
    sub_22BB336D0(v10, 0, 1, v25);
    v48 = v10;
    v49 = v76;
    sub_22BB6F6A4(v48, v76);
    sub_22BB6F6A4(v49, v47);
  }

  else
  {
    sub_22BB336D0(v10, 1, 1, v25);
    sub_22BB6B75C(v10, &qword_27D8E3C80, &qword_22BDC0FB8);
    sub_22BDB9D94();
    sub_22BDB9E54();
    sub_22BB38AB8();
    v44();
    *v47 = sub_22BDB9E64();
    sub_22BB38AB8();
    v44();
    v81 = sub_22BBE6DE0(&qword_27D8E3C88, &qword_22BDC0FC8);
    if (swift_dynamicCast())
    {
      sub_22BB36524();
      sub_22BB2F434();
      v50 = swift_allocObject();
      sub_22BB382E8(v87, v50 + 16);
      v51 = sub_22BCA3274;
    }

    else
    {
      sub_22BB30CD4();
      sub_22BB6B75C(v87, &qword_27D8E3C90, &qword_22BDC0FD0);
      swift_getDynamicType();
      v52 = sub_22BDBB8F4();
      v53 = a2;
      v55 = v54;
      sub_22BB322B0();
      v50 = swift_allocObject();
      *(v50 + 16) = v52;
      *(v50 + 24) = v55;
      a2 = v53;
      v51 = sub_22BCA2E50;
    }

    v47[1] = v51;
    v47[2] = v50;
    v56 = v82;
    sub_22BB38AB8();
    v44();
    v57 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v58 = swift_allocObject();
    v59 = v83;
    *(v58 + 16) = a2;
    *(v58 + 24) = v59;
    (*(v11 + 32))(v58 + v57, v56, a2);
    v47[3] = sub_22BCA3110;
    v47[4] = v58;
    sub_22BB38AB8();
    v44();
    sub_22BBE6DE0(&qword_27D8E3C98, &qword_22BDC0FD8);
    if (swift_dynamicCast())
    {
      sub_22BB36524();
      sub_22BB2F434();
      v60 = swift_allocObject();
      sub_22BB382E8(v87, v60 + 16);
      v61 = sub_22BCA326C;
    }

    else
    {
      sub_22BB30CD4();
      sub_22BB6B75C(v87, &qword_27D8E3CA0, &qword_22BDC0FE0);
      (v44)(v75, v86, a2);
      if (!swift_dynamicCast())
      {
        sub_22BB30CD4();
        sub_22BB6B75C(v87, &qword_27D8E3C90, &qword_22BDC0FD0);
        swift_getDynamicType();
        v62 = sub_22BDBB8F4();
        v64 = v63;
        sub_22BB322B0();
        v65 = swift_allocObject();
        *(v65 + 16) = v62;
        *(v65 + 24) = v64;
        v47[5] = sub_22BCA31C0;
        v47[6] = v65;
        goto LABEL_14;
      }

      sub_22BB36524();
      sub_22BB2F434();
      v60 = swift_allocObject();
      sub_22BB382E8(v87, v60 + 16);
      v61 = sub_22BCA321C;
    }

    v47[5] = v61;
    v47[6] = v60;
  }

LABEL_14:
  v66 = v85;
  sub_22BB6F6A4(v47, v85);
  (*(v11 + 8))(v86, a2);
  v67 = type metadata accessor for DefaultEventHandler(0);
  sub_22BB34ED4(v67);
  v88[0] = sub_22BB6E934(v66);
  sub_22BB33CB8();
  sub_22BB6E87C(v68, v69, &unk_22BDC0C6C);
  return sub_22BDB9EC4();
}

uint64_t sub_22BB6F5C4()
{
  sub_22BB30474();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80)));

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_22BB6F640()
{
  sub_22BB32FA4((v0 + 16));
  sub_22BB2F434();

  return MEMORY[0x2821FE8E8](v1);
}

uint64_t sub_22BB6F6A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BBE6DE0(&qword_27D8E3C40, &qword_22BDC0FC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BB6F738(uint64_t a1)
{
  v2 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC23IntelligenceFlowRuntime19DefaultEventHandler_subscriptionQueue);
  sub_22BB69088(a1, v9);
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  sub_22BB382E8(v9, v4 + 24);
  v5 = swift_allocObject();
  *(v5 + 16) = sub_22BB6BFC8;
  *(v5 + 24) = v4;
  aBlock[4] = sub_22BB6BFFC;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22BB6BFD4;
  aBlock[3] = &unk_283F76380;
  v6 = _Block_copy(aBlock);

  dispatch_sync(v3, v6);
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22BB6F8A8()
{

  sub_22BB32FA4((v0 + 24));

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_22BB6F8FC()
{

  return swift_allocObject();
}

uint64_t sub_22BB6FA18(uint64_t a1, uint64_t (*a2)(unint64_t), uint64_t a3)
{
  v5 = sub_22BB6FD88(a1, a2);
  v6 = *(a1 + 16);

  return sub_22BB6FB38(v5, v6, a1, a2);
}

uint64_t sub_22BB6FAB0(uint64_t a1)
{

  return swift_dynamicCast();
}

void sub_22BB6FAD4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

uint64_t sub_22BB6FB38(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(unint64_t))
{
  v6 = a2;
  if (a2 >= result)
  {
    if (result == a2)
    {
      return 0;
    }

    v7 = 1;
    v8 = a2;
    v6 = result;
  }

  else
  {
    v7 = -1;
    v8 = result;
  }

  v9 = 0;
  v10 = *(a3 + 16);
  while (2)
  {
    v11 = __OFADD__(v9, v7);
    v9 += v7;
    if (v11)
    {
LABEL_19:
      __break(1u);
    }

    else if (v6 != v10)
    {
      while (1)
      {
        v12 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          __break(1u);
LABEL_18:
          __break(1u);
          goto LABEL_19;
        }

        if (v12 == v10)
        {
          break;
        }

        if (v12 >= v10)
        {
          goto LABEL_18;
        }

        v13 = *(type metadata accessor for EventPayloadWithPreassignedID(0) - 8);
        result = a4(a3 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v12);
        ++v6;
        if (result)
        {
          v6 = v12;
          goto LABEL_15;
        }
      }

      v6 = v10;
LABEL_15:
      if (v6 != v8)
      {
        continue;
      }

      return v9;
    }

    break;
  }

  __break(1u);
  return result;
}

uint64_t sub_22BB6FC94()
{
  v2 = v0[312];
  v3 = v0[568];
  v4 = v0[544];

  return sub_22BB74044(v3, v2, v4);
}

uint64_t sub_22BB6FD00()
{

  return swift_arrayDestroy();
}

uint64_t sub_22BB6FD20(void *a1)
{
  sub_22BB69FEC(a1, v1);

  return sub_22BDB7604();
}

uint64_t sub_22BB6FD50()
{
  *(v1 + 1352) = sub_22BB89C7C;
  *(v1 + 1360) = v0;

  return sub_22BB67984((v1 + 1352), v1 + 1584, v1 + 1744, v1 + 1752);
}

uint64_t sub_22BB6FD88(uint64_t a1, uint64_t (*a2)(unint64_t))
{
  v4 = 0;
  v5 = *(a1 + 16);
  while (v5 != v4)
  {
    v6 = *(type metadata accessor for EventPayloadWithPreassignedID(0) - 8);
    if (a2(a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v4))
    {
      return v4;
    }

    ++v4;
  }

  return v5;
}

uint64_t sub_22BB6FE48()
{
  v3 = v0[171];
  v4 = v0[164];
  *(v1 - 192) = v0[163];
  v5 = v0[153];
  *(v1 - 152) = v0[133];
  *(v1 - 144) = v3;
  *(v1 - 168) = v0[130];
  *(v1 - 160) = v4;
  v6 = v0[80];
  *(v1 - 136) = v0[76];
  *(v1 - 128) = v6;
  *(v1 - 112) = v0[74];
  *(v1 - 104) = v5;
  *(v1 - 120) = v0[69];
  v7 = v0[67];
  *(v1 - 184) = v0[64];
  *(v1 - 176) = v7;
}

uint64_t sub_22BB6FEDC(uint64_t result)
{
  *(result + 16) = sub_22BB8AE80;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BB6FF00(uint64_t a1, uint64_t a2)
{
  *(v3 - 116) = v2;

  return sub_22BDBB514();
}

uint64_t sub_22BB6FF88()
{

  return sub_22BDB5D94();
}

void sub_22BB6FFE8()
{
  v2 = v0[401];
  *(v1 - 168) = v0[402];
  *(v1 - 160) = v2;
  *(v1 - 152) = v0[400];
}

uint64_t sub_22BB70000()
{
}

void sub_22BB70028()
{
  STACK[0x350] = v2;
  STACK[0x358] = v0;
  STACK[0x360] = v1;
  v4 = *(v3 - 144);
  v5 = *(v4 + 4328);
  v6 = v5[1];
  *(v3 - 168) = *v5;
  *(v4 + 4568) = v6;
}

uint64_t sub_22BB70090()
{

  return swift_slowAlloc();
}

uint64_t sub_22BB700AC@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

uint64_t sub_22BB7012C(uint64_t a1, uint64_t a2)
{

  return sub_22BBBEE60(v2, a2, v3, v4);
}

uint64_t sub_22BB70160(uint64_t result)
{
  *(result + 16) = sub_22BB8AE88;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BB70178(uint64_t a1)
{

  return _s23IntelligenceFlowRuntime0aB6DaemonV6logger2os6LoggerVvgZ_0();
}

unint64_t sub_22BB70194()
{
  result = qword_281428A48;
  if (!qword_281428A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281428A48);
  }

  return result;
}

uint64_t sub_22BB701E8()
{
}

uint64_t sub_22BB7021C()
{

  return sub_22BDB5D04();
}

uint64_t sub_22BB70270()
{

  return sub_22BDBAF34();
}

uint64_t sub_22BB70434(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = sub_22BB89C08;
  result = *(v3 - 152);
  *(v2 + 40) = result;
  *(v2 + 48) = sub_22BB89C08;
  return result;
}

uint64_t sub_22BB704B0()
{
  v3 = *(v0 + 4352);
  v4 = *(v0 + 2496);
  v5 = *(v1 - 152);

  return sub_22BB74044(v5, v4, v3);
}

void sub_22BB70530()
{
  STACK[0x468] = v0[473];
  v2 = v0[466];
  *(v1 - 256) = v0[465];
  *(v1 - 248) = v2;
}

uint64_t sub_22BB70588@<X0>(uint64_t a1@<X8>)
{

  return sub_22BB67984((a1 + 1080), a1 + 2104, a1 + 2072, a1 + 2064);
}

void sub_22BB705A8()
{
  sub_22BB30F94();
  v2 = v1;
  v3 = sub_22BDB77D4();
  sub_22BB30444();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  sub_22BB30574();
  v9 = v8 - v7;
  sub_22BDB63E4();

  v10 = sub_22BDB77C4();
  sub_22BDBB134();
  sub_22BB93938();
  if (os_log_type_enabled(v10, v11))
  {
    sub_22BB3B778();
    v22 = sub_22BB3E030();
    *v3 = 136446466;
    v12 = v2 + qword_28142AC88;
    sub_22BDB5624();
    sub_22BC54D78();

    v13 = sub_22BB3A19C();
    sub_22BB32EE0(v13, v14, v15);
    sub_22BB36C3C();

    *(v3 + 4) = v12;
    *(v3 + 12) = 2082;
    sub_22BB70194();
    v16 = sub_22BDBB684();
    v18 = sub_22BB32EE0(v16, v17, &v22);

    *(v3 + 14) = v18;
    _os_log_impl(&dword_22BB2C000, v10, v0, "[SessionCoordinator %{public}s] | [TX %{public}s] Finished preprocessing transaction.", v3, 0x16u);
    sub_22BB8ABD4();
    sub_22BB38680();
    sub_22BB30458();

    (*(v5 + 8))(v9, v3);
  }

  else
  {

    v19 = sub_22BC54704();
    v21(v19, v20);
  }

  sub_22BB314EC();
}

uint64_t sub_22BB707CC()
{
  STACK[0x458] = v1;
  *(v3 - 176) = ~v0;
  result = *(v2 + 3256);
  *(v3 - 160) = *(*(v2 + 3232) + 32);
  return result;
}

uint64_t sub_22BB707F8(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

void sub_22BB70820()
{
  sub_22BB30F94();
  v33 = v1;
  v31[2] = v3;
  v32 = v2;
  v31[1] = v4;
  sub_22BDB77D4();
  sub_22BB30444();
  v34 = v6;
  v35 = v5;
  MEMORY[0x28223BE20](v5);
  sub_22BB30574();
  v9 = v8 - v7;
  v10 = sub_22BBE6DE0(&qword_27D8E67E8, &qword_22BDCF4B0);
  sub_22BB2F0C8(v10);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v11);
  v13 = v31 - v12;
  v14 = sub_22BDB5F24();
  v15 = sub_22BB2F0C8(v14);
  MEMORY[0x28223BE20](v15);
  sub_22BB30C74();
  MEMORY[0x28223BE20](v16);
  v17 = sub_22BBE6DE0(&qword_27D8E6410, &unk_22BDCE250);
  sub_22BB2F0C8(v17);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v18);
  sub_22BB3721C();
  sub_22BB3ADA8();
  sub_22BC5E5C4();
  sub_22BB70C90();
  sub_22BB33618();
  sub_22BB32564();
  sub_22BB33618();
  v19 = type metadata accessor for SessionSwitchboard.SessionInfo(0);
  sub_22BC5E5C4();
  *&v13[v19[6]] = MEMORY[0x277D84F90];
  v13[v19[7]] = v33;
  *&v13[v19[8]] = v32;
  sub_22BB336D0(v13, 0, 1, v19);
  sub_22BB31A60();
  swift_beginAccess();

  sub_22BB712E8();
  swift_endAccess();
  sub_22BDB63E4();
  sub_22BB33618();
  v20 = sub_22BDB77C4();
  v21 = sub_22BDBB134();
  if (os_log_type_enabled(v20, v21))
  {
    sub_22BB354D0();
    v22 = swift_slowAlloc();
    sub_22BB2F440();
    v23 = swift_slowAlloc();
    v36 = v23;
    *v22 = 136446210;
    v24 = MEMORY[0x23189FEB0]();
    v26 = v25;
    sub_22BB309FC();
    sub_22BB34698();
    v27 = sub_22BB6BD90();
    sub_22BB32EE0(v27, v26, v28);
    sub_22BB3935C();

    *(v22 + 4) = v24;
    _os_log_impl(&dword_22BB2C000, v20, v21, "Session %{public}s registered.", v22, 0xCu);
    sub_22BB32FA4(v23);
    v29 = sub_22BB94EFC();
    MEMORY[0x2318A6080](v29);
    v30 = sub_22BB6BC10();
    MEMORY[0x2318A6080](v30);
  }

  else
  {

    sub_22BB309FC();
    sub_22BB34698();
  }

  (*(v34 + 8))(v9, v35);
  sub_22BB58728(v0, &qword_27D8E6410, &unk_22BDCE250);
  sub_22BB314EC();
}

uint64_t sub_22BB70BB0(uint64_t a1, uint64_t a2)
{

  return sub_22BBBEE60(v2, a2, v3, v4);
}

uint64_t sub_22BB70BD8(uint64_t a1, uint64_t a2)
{

  return sub_22BDBB5D4();
}

uint64_t sub_22BB70C1C(uint64_t a1, float a2)
{
  *v2 = a2;

  return sub_22BDB9B24();
}

void sub_22BB70C90()
{
  sub_22BB30F94();
  sub_22BB35760();
  sub_22BDB77D4();
  sub_22BB30444();
  v18[4] = v1;
  v18[5] = v0;
  MEMORY[0x28223BE20](v0);
  sub_22BB30574();
  sub_22BB345CC();
  v2 = sub_22BB2F12C();
  v4 = sub_22BBE6DE0(v2, v3);
  sub_22BB2F0C8(v4);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v5);
  v7 = v18 - v6;
  v8 = sub_22BDB5984();
  sub_22BB30444();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  sub_22BB30C74();
  MEMORY[0x28223BE20](v12);
  v14 = v18 - v13;
  sub_22BB30AE4();
  sub_22BC5E5C4();
  sub_22BB35204();
  if (sub_22BB3AA28(v15, v16, v17) == 1)
  {
    sub_22BB58728(v7, &qword_27D8E6410, &unk_22BDCE250);
  }

  else
  {
    (*(v10 + 32))(v14, v7, v8);
    sub_22BB7102C(v14);
    (*(v10 + 8))(v14, v8);
  }

  sub_22BB314EC();
}

uint64_t sub_22BB7102C(uint64_t a1)
{
  sub_22BB31B88();
  swift_beginAccess();

  v1 = sub_22BB710E4();

  if (v1)
  {
    sub_22BBB7088();
    swift_willThrowTypedImpl();
  }

  return 6;
}

uint64_t sub_22BB710E4()
{
  sub_22BB37860();
  v27 = v3;
  v26 = sub_22BBE6DE0(&qword_27D8E6760, &unk_22BDCE9D0);
  sub_22BB2F330();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v4);
  v6 = &v25 - v5;
  v7 = v2 + 64;
  v8 = 1 << *(v2 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v2 + 64);
  v11 = (v8 + 63) >> 6;
  v28 = v2;

  v13 = 0;
  while (v10)
  {
    v29 = v0;
LABEL_10:
    v15 = __clz(__rbit64(v10)) | (v13 << 6);
    v16 = v28;
    v17 = *(v28 + 48);
    v18 = sub_22BDB5F24();
    sub_22BB2F0C8(v18);
    sub_22BB6A1A8(v17 + *(v19 + 72) * v15, v6, MEMORY[0x277D1D2C8]);
    v20 = *(v16 + 56);
    v21 = type metadata accessor for SessionSwitchboard.SessionInfo(0);
    sub_22BB2F0C8(v21);
    sub_22BB6A1A8(v20 + *(v22 + 72) * v15, &v6[*(v26 + 48)], type metadata accessor for SessionSwitchboard.SessionInfo);
    v23 = v29;
    v24 = v27(v6);
    v0 = v23;
    result = sub_22BB58728(v6, &qword_27D8E6760, &unk_22BDCE9D0);
    if (v23)
    {
      goto LABEL_14;
    }

    v10 &= v10 - 1;
    if (v24)
    {
      v1 = 1;
LABEL_14:

      return v1 & 1;
    }
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
      v1 = 0;
      goto LABEL_14;
    }

    v10 = *(v7 + 8 * v14);
    ++v13;
    if (v10)
    {
      v29 = v0;
      v13 = v14;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22BB712E8()
{
  sub_22BB35F54();
  v2 = sub_22BBE6DE0(&qword_27D8E67E8, &qword_22BDCF4B0);
  sub_22BB2F0C8(v2);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v3);
  v4 = sub_22BB334AC();
  type metadata accessor for SessionSwitchboard.SessionInfo(v4);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v5);
  sub_22BB30574();
  sub_22BB31580();
  v6 = sub_22BB3A190();
  if (sub_22BB3AA28(v6, v7, v8) == 1)
  {
    v9 = sub_22BB345A8();
    sub_22BB58728(v9, v10, &qword_22BDCF4B0);
    sub_22BBAE0E0();
    sub_22BB312D4();
    return sub_22BB58728(v1, &qword_27D8E67E8, &qword_22BDCF4B0);
  }

  else
  {
    sub_22BB345A8();
    sub_22BB5005C();
    swift_isUniquelyReferenced_nonNull_native();
    v12 = sub_22BB38298();
    sub_22BB71420(v12, v13, v14);
    *v0 = v15;
    return sub_22BB312D4();
  }
}

void sub_22BB71420(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = sub_22BDB5F24();
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  v11 = sub_22BB67B60(a2, MEMORY[0x277D1D2C0], sub_22BB67BE0);
  if (__OFADD__(*(v10 + 16), (v12 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v13 = v11;
  v14 = v12;
  sub_22BBE6DE0(&qword_27D8E68D0, &qword_22BDCFBD8);
  if ((sub_22BDBB4A4() & 1) == 0)
  {
    goto LABEL_5;
  }

  v15 = sub_22BB67B60(a2, MEMORY[0x277D1D2C0], sub_22BB67BE0);
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
    type metadata accessor for SessionSwitchboard.SessionInfo(0);
    sub_22BD85988();
  }

  else
  {
    sub_22BB67A00();
    sub_22BD7DCB8(v13, v9, a1, v17);
  }
}

void sub_22BB7163C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void))
{
  sub_22BB34428(a1, a2, a3, a4);
  v10 = v9(0);
  sub_22BB2F0C8(v10);
  sub_22BB38958();
  v11 = a7(0);
  sub_22BB2F0C8(v11);
  sub_22BB38958();
  sub_22BB39384();
  if (v13)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v12;
  }
}

uint64_t sub_22BB71700()
{
  v1 = sub_22BDB43E4();
  sub_22BB30444();
  v3 = v2;
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_22BB717B8(uint64_t result, uint64_t a2)
{
  v2 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    goto LABEL_6;
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (*(a2 + 16) >= v2)
  {
    sub_22BDB9B54();
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_22BB71858()
{
  sub_22BB30F94();
  v2 = v1;
  v3 = sub_22BBE6DE0(&qword_27D8E6320, &qword_22BDCDD00);
  sub_22BB2F0C8(v3);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v4);
  v6 = &v48 - v5;
  v7 = type metadata accessor for StandardPlanner.StandardPlannerAction(0);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v8);
  sub_22BB30C74();
  MEMORY[0x28223BE20](v9);
  v11 = &v48 - v10;
  sub_22BDB9B14();
  sub_22BB30444();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  sub_22BB30C74();
  v17 = v15 - v16;
  MEMORY[0x28223BE20](v18);
  sub_22BB92338();
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v48 - v21;
  if (*(v2 + 16))
  {
    v49 = v20;
    v23 = sub_22BDB9B54();
    sub_22BB30434(v23);
    v24 = v49;
    sub_22BDB9B24();
    (*(v13 + 32))(v22, v0, v24);
    (*(v13 + 16))(v17, v22, v24);
    sub_22BB72FA8(v17, v6);
    sub_22BB31814(v6, 1, v7);
    if (v25)
    {
      (*(v13 + 8))(v22, v24);
      sub_22BB58728(v6, &qword_27D8E6320, &qword_22BDCDD00);
    }

    else
    {
      sub_22BBBE2AC();
      sub_22BBC0AFC();
      sub_22BB32E04();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      switch(EnumCaseMultiPayload)
      {
        case 1:
          sub_22BDB8424();
          goto LABEL_11;
        case 2:
          sub_22BDB8424();
          sub_22BB32434();
          sub_22BBC0BB8(v11, v27);
          v28 = sub_22BB330E0();
          v29(v28);
          break;
        case 3:
        case 5:
          sub_22BDB83D4();
          goto LABEL_15;
        case 4:
          sub_22BDB83E4();
          goto LABEL_15;
        case 6:
          sub_22BDB83F4();
LABEL_15:
          sub_22BBE6DE0(&qword_27D8E62C8, &unk_22BDCD9F0);
          v41 = sub_22BDB9254();
          sub_22BB30444();
          v43 = v42;
          sub_22BB8D274();
          v44 = swift_allocObject();
          *(v44 + 16) = xmmword_22BDBCBD0;
          (*(v43 + 104))(v44 + v0, *MEMORY[0x277D1E308], v41);
          sub_22BB32434();
          sub_22BBC0BB8(v11, v45);
          v46 = sub_22BB330E0();
          v47(v46);
          break;
        case 7:
          sub_22BB32434();
          sub_22BBC0BB8(v11, v38);
          v39 = sub_22BB330E0();
          v40(v39);
          break;
        default:
          sub_22BDB83C4();
LABEL_11:
          sub_22BBE6DE0(&qword_27D8E62C8, &unk_22BDCD9F0);
          v30 = sub_22BDB9254();
          sub_22BB30444();
          v32 = v31;
          sub_22BB8D274();
          v33 = swift_allocObject();
          *(v33 + 16) = xmmword_22BDBCBD0;
          (*(v32 + 104))(v33 + v0, *MEMORY[0x277D1E308], v30);
          sub_22BBC0BB8(v11, type metadata accessor for StandardPlanner.StandardPlannerAction);
          v34 = sub_22BB330E0();
          v35(v34);
          v36 = sub_22BB34FB8();
          sub_22BBC0BB8(v36, v37);
          break;
      }
    }
  }

  sub_22BB314EC();
}

void sub_22BB71DA0()
{
  sub_22BB3B094();
  v2 = v1;
  v3 = v0;
  if ((v1 & 1) == 0)
  {
    v4 = v1 >> 1;
    v5 = (v1 >> 1) - v0;
    if (!__OFSUB__(v1 >> 1, v0))
    {
      if (v5)
      {
        goto LABEL_4;
      }

LABEL_11:
      swift_unknownObjectRelease();
      goto LABEL_12;
    }

    __break(1u);
    goto LABEL_14;
  }

  sub_22BDBB6F4();
  swift_unknownObjectRetain_n();
  v6 = swift_dynamicCastClass();
  if (!v6)
  {
    swift_unknownObjectRelease();
    v6 = MEMORY[0x277D84F90];
  }

  v7 = *(v6 + 16);

  v4 = v2 >> 1;
  v8 = __OFSUB__(v2 >> 1, v3);
  v5 = (v2 >> 1) - v3;
  if (v8)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v7 == v5)
  {
    v9 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    if (v9)
    {
LABEL_12:
      sub_22BB36A24();
      return;
    }

    goto LABEL_11;
  }

LABEL_15:
  swift_unknownObjectRelease();
  if (!v5)
  {
    goto LABEL_11;
  }

LABEL_4:
  sub_22BD917AC(v5, 0);
  if (v4 != v3)
  {
    sub_22BDB9B54();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  __break(1u);
}

uint64_t sub_22BB71F1C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = v3 + *(v4 - 120);

  return sub_22BB325EC(v6, a2, a3);
}

uint64_t sub_22BB71F68(void *a1)
{
  sub_22BB69FEC(a1, v1);

  return sub_22BDB9B24();
}

BOOL sub_22BB71F98()
{

  return os_log_type_enabled(v0, v1);
}

unint64_t sub_22BB71FC8(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  *v7 = a1;

  return sub_22BB32EE0(v6, v5, va);
}

uint64_t sub_22BB7201C()
{

  return sub_22BDBB804();
}

uint64_t sub_22BB72114()
{
  *(v1 - 88) = v0;

  return swift_slowAlloc();
}

uint64_t sub_22BB72168()
{

  return swift_slowAlloc();
}

uint64_t sub_22BB72224(uint64_t a1)
{

  return sub_22BDB9B24();
}

uint64_t sub_22BB7226C(uint64_t a1)
{
  v105 = sub_22BDB90B4();
  sub_22BB30444();
  v126 = v2;
  MEMORY[0x28223BE20](v3);
  sub_22BB30574();
  v104 = v5 - v4;
  v117 = sub_22BDB5404();
  sub_22BB30444();
  v123 = v6;
  MEMORY[0x28223BE20](v7);
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v8);
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v9);
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v10);
  v100 = v97 - v11;
  v99 = sub_22BDB8D84();
  sub_22BB30444();
  v122 = v12;
  MEMORY[0x28223BE20](v13);
  sub_22BB30574();
  v98 = v15 - v14;
  v16 = sub_22BBE6DE0(&qword_27D8E3218, &qword_22BDBE390);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = v97 - v17;
  v115 = sub_22BDB87F4();
  sub_22BB30444();
  v121 = v19;
  MEMORY[0x28223BE20](v20);
  sub_22BB30574();
  v23 = v22 - v21;
  v24 = sub_22BDB9B14();
  sub_22BB30444();
  v26 = v25;
  v28 = MEMORY[0x28223BE20](v27);
  v30 = v97 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v32 = v97 - v31;
  v131 = sub_22BDB9B54();
  sub_22BB30444();
  MEMORY[0x28223BE20](v33);
  sub_22BB30574();
  v36 = v35 - v34;
  v37 = 0;
  v38 = *(a1 + 16);
  v127 = a1;
  v128 = v38;
  v125 = v39 + 16;
  v130 = (v26 + 88);
  v124 = *MEMORY[0x277D1E798];
  v113 = *MEMORY[0x277D1E7C0];
  v129 = v26 + 8;
  v118 = v26 + 96;
  v97[3] = v122 + 32;
  v97[2] = v122 + 8;
  v111 = v123 + 88;
  v112 = (v123 + 32);
  v110 = *MEMORY[0x277D1CBF0];
  v109 = *MEMORY[0x277D1CBE8];
  v108 = v123 + 8;
  v107 = v121 + 32;
  v97[1] = v126 + 8;
  v106 = v121 + 8;
  LODWORD(v122) = *MEMORY[0x277D1E718];
  LODWORD(v121) = *MEMORY[0x277D1E860];
  v126 = v39;
  v123 = v39 + 8;
  v120 = *MEMORY[0x277D1E868];
  v116 = v18;
  v119 = v30;
  v114 = v23;
  while (1)
  {
    if (v128 == v37)
    {
      return 0;
    }

    (*(v126 + 16))(v36, v127 + ((*(v126 + 80) + 32) & ~*(v126 + 80)) + *(v126 + 72) * v37, v131);
    sub_22BDB9B24();
    v40 = *v130;
    v41 = (*v130)(v32, v24);
    if (v41 == v124)
    {
      v42 = sub_22BB37810();
      v43(v42);
      sub_22BB30F88();
      v45 = v114;
      v44 = v115;
      v46(v114, v32, v115);
      sub_22BDB87D4();
      v47 = sub_22BDB43E4();
      if (sub_22BB3AA28(v18, 1, v47) == 1)
      {
        sub_22BB30F88();
        v48(v45, v44);
        sub_22BB325EC(v18, &qword_27D8E3218, &qword_22BDBE390);
      }

      else
      {
        sub_22BB325EC(v18, &qword_27D8E3218, &qword_22BDBE390);
        v67 = v44;
        v68 = v104;
        sub_22BDB87E4();
        v69 = v102;
        sub_22BDB9094();
        sub_22BB30F88();
        v70(v68, v105);
        sub_22BB30F88();
        v71(v45, v67);
        v72 = v103;
        v73 = v117;
        (*v112)(v103, v69, v117);
        v74 = sub_22BB2F564();
        v76 = v75(v74);
        sub_22BB30F88();
        v77 = v72;
        v18 = v116;
        v78(v77, v73);
        sub_22BB38E48();
        v80 = *(v79 - 256);
        if (v66 || v76 == v80)
        {
          goto LABEL_28;
        }
      }
    }

    else if (v41 == v113)
    {
      v49 = sub_22BB37810();
      v50(v49);
      sub_22BB30F88();
      v51 = v98;
      v52 = v99;
      v53(v98, v32, v99);
      v54 = v100;
      sub_22BDB8D44();
      sub_22BB30F88();
      v55(v51, v52);
      v56 = v101;
      v57 = v54;
      v58 = v117;
      (*v112)(v101, v57, v117);
      v59 = sub_22BB2F564();
      v61 = v60(v59);
      sub_22BB30F88();
      v62 = v56;
      v18 = v116;
      v63(v62, v58);
      sub_22BB38E48();
      v65 = *(v64 - 256);
      v66 = v66 || v61 == v65;
      if (v66)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v82 = sub_22BB37810();
      v83(v82);
    }

    sub_22BDB9B24();
    v84 = sub_22BB33728();
    v85 = (v40)(v84);
    if (v85 == v122)
    {
      break;
    }

    if (v85 == v121 || v85 == v120)
    {
      goto LABEL_28;
    }

    v87 = sub_22BB33728();
    v88(v87);
    v89 = sub_22BB3A70C();
    v90(v89);
    ++v37;
  }

  v92 = sub_22BB33728();
  v93(v92);
LABEL_28:
  v94 = sub_22BB3A70C();
  v95(v94);
  v91 = *v97[0];

  return v91;
}

void sub_22BB72B1C(uint64_t a1, uint64_t a2)
{
  sub_22BB97200();
  sub_22BDBABA4();
  v2 = sub_22BB3AC54();
  sub_22BB954FC(v2, v3, v4);
  sub_22BB588E0();
}

uint64_t SessionPersistenceManager.write(initiatedParticipant:initiatedSpanId:postingParticipant:postingSpanId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v27[0] = a6;
  v12 = sub_22BDB7574();
  sub_22BB30444();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  sub_22BB30574();
  v18 = v17 - v16;
  v19 = type metadata accessor for SessionPersistenceManager(0);
  sub_22BC7E3C4(v7 + *(v19 + 24), &v28, &qword_27D8E62F8, &qword_22BDCDB90);
  if (!v29)
  {
    return sub_22BB58728(&v28, &qword_27D8E62F8, &qword_22BDCDB90);
  }

  v20 = sub_22BB382E8(&v28, v30);
  MEMORY[0x28223BE20](v20);
  v27[-8] = v7;
  v27[-7] = a3;
  v27[-6] = a1;
  v27[-5] = a2;
  v27[-4] = v27[0];
  v27[-3] = a4;
  v27[-2] = v21;
  v22 = sub_22BDB76D4();
  MEMORY[0x28223BE20](v22);
  v27[-2] = v18;
  if (sub_22BBBFD28(sub_22BBBFD08, &v27[-4], v23))
  {
    v24 = v31;
    v25 = v32;
    sub_22BB69FEC(v30, v31);
    (*(v25 + 8))(v18, v24, v25);
  }

  (*(v14 + 8))(v18, v12);
  return sub_22BB32FA4(v30);
}

uint64_t sub_22BB72DE4(uint64_t result)
{
  *(result + 16) = sub_22BB89C80;
  *(result + 24) = v1;
  return result;
}

BOOL sub_22BB72E44()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_22BB72E68()
{
  *(v1 + 48) = v0;

  return type metadata accessor for SessionControlActor();
}

uint64_t sub_22BB72EB4()
{
}

unint64_t sub_22BB72EF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);

  return sub_22BB32EE0(v18, v19, va);
}

__n128 sub_22BB72F5C(__n128 *a1)
{
  result = *(v2 - 192);
  a1[1] = result;
  a1[2].n128_u64[0] = sub_22BB89C08;
  a1[2].n128_u64[1] = v1;
  return result;
}

uint64_t sub_22BB72FA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  v3 = sub_22BDB8B44();
  v65 = *(v3 - 8);
  v66 = v3;
  MEMORY[0x28223BE20](v3);
  v64 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22BDB8634();
  v70 = *(v5 - 8);
  v71 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v63 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v69 = &v61 - v8;
  v9 = sub_22BBE6DE0(&unk_27D8E69F0, &qword_22BDCDD08);
  MEMORY[0x28223BE20](v9 - 8);
  v75 = &v61 - v10;
  v74 = sub_22BDB92B4();
  v68 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v67 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22BBE6DE0(&qword_27D8E6A10, &qword_22BDCDD10);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v61 - v13;
  v15 = sub_22BDB8FB4();
  v73 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v72 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22BDB9624();
  v18 = *(v17 - 8);
  v76 = v17;
  v77 = v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_22BDB9B14();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for StandardPlanner.StandardPlannerAction(0);
  MEMORY[0x28223BE20](v25);
  v27 = &v61 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v24, a1, v21);
  v28 = (*(v22 + 88))(v24, v21);
  if (v28 == *MEMORY[0x277D1E700])
  {
    v29 = *(v22 + 8);
    v29(a1, v21);
    swift_storeEnumTagMultiPayload();
    v29(v24, v21);
    goto LABEL_19;
  }

  v62 = a1;
  if (v28 == *MEMORY[0x277D1E858])
  {
    (*(v22 + 96))(v24, v21);
    v30 = v76;
    v31 = v77;
    (*(v77 + 32))(v20, v24, v76);
    sub_22BDB95B4();
    if (sub_22BB3AA28(v14, 1, v15) == 1)
    {
      sub_22BB58728(v14, &qword_27D8E6A10, &qword_22BDCDD10);
      v32 = v75;
      sub_22BDB95C4();
      v33 = v74;
      if (sub_22BB3AA28(v32, 1, v74) == 1)
      {
        sub_22BB58728(v32, &unk_27D8E69F0, &qword_22BDCDD08);
        v34 = v69;
        sub_22BDB8DA4();
        v36 = v70;
        v35 = v71;
        (*(v70 + 88))(v34, v71);
        swift_storeEnumTagMultiPayload();
        (*(v36 + 8))(v34, v35);
        (*(v22 + 8))(v62, v21);
        (*(v77 + 8))(v20, v30);
        goto LABEL_19;
      }

      (*(v22 + 8))(v62, v21);
      (*(v77 + 8))(v20, v30);
      v43 = v67;
      v44 = *(v68 + 32);
      v44(v67, v32, v33);
      v44(v27, v43, v33);
      type metadata accessor for StandardPlanner.StandardPlannerAction.PlanGenerationAction(0);
    }

    else
    {
      (*(v22 + 8))(v62, v21);
      (*(v31 + 8))(v20, v30);
      v40 = v72;
      v41 = *(v73 + 32);
      v41(v72, v14, v15);
      v41(v27, v40, v15);
      type metadata accessor for StandardPlanner.StandardPlannerAction.PlanGenerationAction(0);
    }

    goto LABEL_17;
  }

  v37 = v28 == *MEMORY[0x277D1E6F8] || v28 == *MEMORY[0x277D1E708];
  v38 = v62;
  if (v37)
  {
    goto LABEL_12;
  }

  if (v28 == *MEMORY[0x277D1E770])
  {
    (*(v22 + 8))(v62, v21);
    (*(v22 + 96))(v24, v21);
    v42 = sub_22BDB97A4();
    (*(*(v42 - 8) + 32))(v27, v24, v42);
    goto LABEL_18;
  }

  if (v28 == *MEMORY[0x277D1E748] || v28 == *MEMORY[0x277D1E830])
  {
    goto LABEL_12;
  }

  if (v28 == *MEMORY[0x277D1E838])
  {
    v49 = *(v22 + 8);
    v49(v62, v21);
    swift_storeEnumTagMultiPayload();
    v49(v24, v21);
    goto LABEL_19;
  }

  if (v28 == *MEMORY[0x277D1E760] || v28 == *MEMORY[0x277D1E740] || v28 == *MEMORY[0x277D1E788])
  {
    goto LABEL_35;
  }

  if (v28 == *MEMORY[0x277D1E798])
  {
    goto LABEL_12;
  }

  if (v28 == *MEMORY[0x277D1E738])
  {
LABEL_35:
    v52 = *(v22 + 8);
    v52(v62, v21);
    v52(v24, v21);
    type metadata accessor for StandardPlanner.StandardPlannerAction.PlanGenerationAction(0);
LABEL_17:
    swift_storeEnumTagMultiPayload();
    goto LABEL_18;
  }

  if (v28 == *MEMORY[0x277D1E7D8])
  {
LABEL_12:
    v39 = *(v22 + 8);
    v39(v62, v21);
    v39(v24, v21);
LABEL_18:
    swift_storeEnumTagMultiPayload();
    goto LABEL_19;
  }

  if (v28 == *MEMORY[0x277D1E808] || v28 == *MEMORY[0x277D1E768])
  {
    goto LABEL_35;
  }

  if (v28 == *MEMORY[0x277D1E720] || v28 == *MEMORY[0x277D1E850])
  {
    goto LABEL_12;
  }

  if (v28 != *MEMORY[0x277D1E778])
  {
    v60 = *(v22 + 8);
    v60(v62, v21);
    v60(v24, v21);
    v46 = 1;
    v45 = v78;
    return sub_22BB336D0(v45, v46, 1, v25);
  }

  (*(v22 + 96))(v24, v21);
  v55 = v64;
  v56 = v65;
  (*(v65 + 32))(v64, v24, v66);
  v57 = v63;
  sub_22BDB8B34();
  v59 = v70;
  v58 = v71;
  (*(v70 + 88))(v57, v71);
  swift_storeEnumTagMultiPayload();
  (*(v59 + 8))(v57, v58);
  (*(v22 + 8))(v38, v21);
  (*(v56 + 8))(v55, v66);
LABEL_19:
  v45 = v78;
  sub_22BBBE2AC();
  v46 = 0;
  return sub_22BB336D0(v45, v46, 1, v25);
}

BOOL sub_22BB73AEC(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_22BB73B1C@<X0>(uint64_t a1@<X8>)
{

  return sub_22BB67984((a1 + 1048), a1 + 2032, a1 + 2040, a1 + 2048);
}

__n128 sub_22BB73B68(uint64_t a1)
{
  *(v2 + 184) = a1;
  v3 = *(v1 + 32);
  result = *(v1 + 16);
  *(a1 + 16) = *v1;
  *(a1 + 32) = result;
  *(a1 + 48) = v3;
  return result;
}

__n128 sub_22BB73BD0(uint64_t a1)
{
  result = *&STACK[0x390];
  *(a1 + 16) = *&STACK[0x390];
  *(a1 + 32) = sub_22BB89C08;
  return result;
}

id sub_22BB73C1C()
{
  v4 = *(v0 + 104);
  *(v1 + 14) = v4;
  *v2 = v4;

  return v4;
}

uint64_t sub_22BB73C54()
{
  type metadata accessor for SessionCoordinatorCommand(0);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v1);
  sub_22BB30574();
  sub_22BB33230();
  v2 = sub_22BB2F324();
  sub_22BB388FC(v2, v3);
  sub_22BB30AE4();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:

      v4 = *(sub_22BBE6DE0(&qword_27D8E6538, &qword_22BDCE448) + 64);

      sub_22BB52EF4();
      sub_22BB325EC(v0 + v4, &qword_27D8E3218, &qword_22BDBE390);
      break;
    case 2u:
      v5 = sub_22BBE6DE0(&qword_27D8E6540, &qword_22BDCE450);
      sub_22BB325EC(v0 + *(v5 + 64), &qword_27D8E3218, &qword_22BDBE390);
      sub_22BDB98C4();
      sub_22BB31F70();
      (*(v6 + 8))(v0);
      break;
    case 3u:
      sub_22BB52EF4();
      sub_22BB698E8();
      break;
    case 4u:
      sub_22BB698E8();
      sub_22BB52EF4();
      break;
    case 5u:
      sub_22BB698E8();
      break;
    case 6u:
      return sub_22BB37494();
    case 7u:
      sub_22BB52EF4();
      break;
    default:
      sub_22BBE6DE0(&qword_27D8E63F8, &qword_22BDCE220);

      sub_22BB52EF4();
      sub_22BB698E8();
      break;
  }

  return sub_22BB37494();
}

uint64_t sub_22BB73F58@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22BB73FA4()
{
  STACK[0x3E8] = v1;
  STACK[0x3F8] = v2;
  STACK[0x470] = v0;
  STACK[0x3F0] = v3;

  return sub_22BB67968(32);
}

uint64_t sub_22BB73FD0()
{

  return swift_task_alloc();
}

uint64_t sub_22BB73FE8()
{
  *(v1 - 176) = *(v0 + 4696);

  return swift_beginAccess();
}

uint64_t sub_22BB74044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_22BDB7764();
  v40 = *(v4 - 1);
  v41 = v4;
  MEMORY[0x28223BE20](v4);
  v38 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_22BDB7734();
  v6 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v8 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SessionCoordinatorCommand(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22BDB7754();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BDB6124();
  sub_22BB335C0(a3, v11);

  v16 = sub_22BDB7744();
  sub_22BDB7774();
  v39 = sub_22BDBB1C4();
  if (sub_22BDBB244())
  {
    v33[1] = v11;
    v34 = v15;
    v35 = v13;
    v36 = v12;
    v37 = v6;

    v17 = v38;
    sub_22BDB77B4();

    v19 = v40;
    v18 = v41;
    if ((*(v40 + 88))(v17, v41) == *MEMORY[0x277D85B00])
    {
      v20 = 0;
      v41 = "[Error] Interval already ended";
    }

    else
    {
      (*(v19 + 8))(v17, v18);
      v41 = "[SessionCoordinator %{public}s] | End processing command %{public}s.";
      v20 = 2;
    }

    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v43 = v23;
    *v22 = v20;
    *(v22 + 1) = v20;
    *(v22 + 2) = 2082;
    v24 = sub_22BDB5624();
    v26 = v25;

    v27 = sub_22BB32EE0(v24, v26, &v43);

    *(v22 + 4) = v27;
    *(v22 + 12) = 2082;
    v28 = sub_22BB73C54();
    v30 = v29;
    sub_22BB34648();
    v31 = sub_22BB32EE0(v28, v30, &v43);

    *(v22 + 14) = v31;
    v32 = sub_22BDB7714();
    _os_signpost_emit_with_name_impl(&dword_22BB2C000, v16, v39, v32, "CommandProcess", v41, v22, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2318A6080](v23, -1, -1);
    MEMORY[0x2318A6080](v22, -1, -1);

    (*(v37 + 8))(v8, v42);
    return (*(v35 + 8))(v34, v36);
  }

  else
  {

    (*(v6 + 8))(v8, v42);
    sub_22BB34648();
    return (*(v13 + 8))(v15, v12);
  }
}

id sub_22BB7453C()
{
  swift_getObjectType();
  sub_22BB35760();
  v2 = sub_22BDB52C4();
  v3 = sub_22BB30434(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22BBE6DE0(&qword_27D8E2978, &qword_22BDBD020);
  sub_22BB2F0C8(v9);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v10);
  v12 = &v21 - v11;
  v13 = OBJC_IVAR____TtCV23IntelligenceFlowRuntime23SessionXPCServiceServer6Server_sessionClientId;
  v14 = sub_22BDBAEF4();
  sub_22BB31B08(v12, v15, v16, v14);
  sub_22BB30AA0();
  sub_22BB33670(v1 + v13, v8, v17);
  v18 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  sub_22BB7478C(v8, v19 + v18);
  sub_22BCA20FC(0, 0, v12, &unk_22BDD0C58, v19);

  v21.receiver = v1;
  v21.super_class = v0;
  return objc_msgSendSuper2(&v21, sel_dealloc);
}

uint64_t sub_22BB746CC()
{
  v1 = sub_22BDB52C4();
  sub_22BB30434(v1);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  sub_22BDB43E4();
  sub_22BB31F70();
  (*(v4 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_22BB7478C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BDB52C4();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BB748A0()
{
  sub_22BB3156C();
  sub_22BB30F5C();
  sub_22BB35760();
  v0 = sub_22BDB52C4();
  sub_22BB2F0C8(v0);
  v1 = swift_task_alloc();
  v2 = sub_22BB31BAC(v1);
  *v2 = v3;
  v2[1] = sub_22BBF90EC;
  sub_22BB37834();
  sub_22BB3478C();

  return sub_22BB74968(v4, v5, v6, v7);
}

uint64_t sub_22BB74988()
{
  sub_22BB2F0D4();
  if (qword_28142AB50 != -1)
  {
    sub_22BB32DD0(&qword_28142AB50);
  }

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_22BBADC9C;
  sub_22BB3487C(*(v0 + 16));

  return sub_22BB74A3C();
}

uint64_t sub_22BB74A3C()
{
  sub_22BB2F35C();
  v1[11] = v2;
  v1[12] = v0;
  v3 = sub_22BDB52C4();
  v1[13] = v3;
  sub_22BB2F0C8(v3);
  v1[14] = sub_22BB30ACC();
  v4 = sub_22BDB77D4();
  v1[15] = v4;
  sub_22BB30434(v4);
  v1[16] = v5;
  v1[17] = sub_22BB30ACC();
  v6 = sub_22BDB5154();
  v1[18] = v6;
  sub_22BB30434(v6);
  v1[19] = v7;
  v1[20] = sub_22BB30ACC();
  v8 = sub_22BDB43E4();
  v1[21] = v8;
  sub_22BB30434(v8);
  v1[22] = v9;
  v1[23] = sub_22BB30ACC();
  v10 = sub_22BDB5764();
  v1[24] = v10;
  sub_22BB30434(v10);
  v1[25] = v11;
  v1[26] = sub_22BB30ACC();
  v12 = sub_22BDB5F24();
  sub_22BB30434(v12);
  v1[27] = v13;
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v14 = sub_22BBE6DE0(&qword_27D8E6808, &qword_22BDCF4D8);
  sub_22BB2F0C8(v14);
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v15 = type metadata accessor for SessionSwitchboard.SessionInfo(0);
  v1[32] = v15;
  sub_22BB30434(v15);
  v1[33] = v16;
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  if (qword_28142A928 != -1)
  {
    sub_22BB36324(&qword_28142A928);
  }

  v1[38] = qword_28142F3F0;
  type metadata accessor for SessionControlActor();
  sub_22BB32860();
  sub_22BB3CC60(v17, v18, &unk_22BDCEAB4);
  sub_22BD7F040();
  sub_22BB30AE4();
  v20 = sub_22BDBAE44();
  v1[39] = v20;
  v1[40] = v19;

  return MEMORY[0x2822009F8](sub_22BB74D7C, v20, v19);
}

uint64_t sub_22BB74D7C()
{
  v296 = v0;
  v4 = *(v0 + 88);
  swift_beginAccess();
  sub_22BB7538C(&v290);
  swift_endAccess();
  *(v0 + 328) = v290;
  v5 = v291;
  *(v0 + 336) = v291;
  *(v0 + 352) = v292;
  v6 = v293;
  *(v0 + 360) = v293;
  *(v0 + 376) = v294;
  if (!v5 || (LOWORD(v264) = v6, (v6 & 1) == 0))
  {
LABEL_13:
    v17 = *(v0 + 96);
    sub_22BB31B88();
    swift_beginAccess();
    v18 = *(v17 + 16);
    *(v0 + 416) = v18;
    *(v0 + 453) = *(v18 + 32);
    sub_22BB52A10();
    v21 = v19 & v20;
    *(v0 + 448) = *MEMORY[0x277D1C8C0];

    v22 = &qword_27D8E6760;
    if (!v21)
    {
      goto LABEL_15;
    }

    while (1)
    {
      v2 = *(v0 + 232);
      v25 = *(v0 + 240);
      v21 &= v21 - 1;
      sub_22BB36720();
      sub_22BB33618();
      sub_22BB37890();
      sub_22BB33618();
      v22 = &qword_27D8E6760;
      v26 = &unk_22BDCE9D0;
      v3 = sub_22BBE6DE0(&qword_27D8E6760, &unk_22BDCE9D0);
      sub_22BB30E54();
      sub_22BB38958();
      sub_22BB31E54();
      sub_22BB38958();
      v27 = sub_22BB34914();
      sub_22BB336D0(v27, v28, v29, v30);
      while (1)
      {
        sub_22BB53CA0();
        sub_22BC8D26C();
        v31 = sub_22BBE6DE0(&qword_27D8E6760, &unk_22BDCE9D0);
        sub_22BB34F58(v31);
        if (v32)
        {
          sub_22BB36AB0();

          sub_22BDB63E4();
          sub_22BB32564();
          sub_22BB33618();
          v37 = sub_22BDB77C4();
          sub_22BDBB134();
          sub_22BB3E2A4();
          os_log_type_enabled(v37, v38);
          sub_22BB3B494();
          if (v39)
          {
            v199 = v3;
            sub_22BB354D0();
            v186 = v25;
            v25 = swift_slowAlloc();
            sub_22BB2F440();
            v173 = v2;
            v2 = swift_slowAlloc();
            v290 = v2;
            *v25 = 136446210;
            sub_22BB32D54();
            sub_22BB3CC60(v40, v41, MEMORY[0x277D1CB40]);
            v3 = sub_22BDBB684();
            v160 = &unk_22BDCE9D0;
            v26 = v42;
            sub_22BB35D94();
            sub_22BB34698();
            v43 = sub_22BB2F12C();
            sub_22BB32EE0(v43, v44, v45);
            sub_22BB36C3C();

            *(v25 + 4) = &qword_27D8E6760;
            sub_22BB3163C(&dword_22BB2C000, v46, v47, "SessionClient %{public}s deregistered.");
            sub_22BB32FA4(v2);
            v48 = sub_22BB94EFC();
            MEMORY[0x2318A6080](v48);
            v49 = sub_22BB6BC10();
            MEMORY[0x2318A6080](v49);

            v50 = sub_22BB588D0();
            sub_22BBB7A1C(v50, v51);
            v22 = &qword_27D8E6768;
            v52 = (qword_27D8E6768)(v186, v173);
          }

          else
          {

            v67 = sub_22BB588D0();
            sub_22BBB7A1C(v67, v68);
            sub_22BB35D94();
            sub_22BB34698();
            v69 = sub_22BB586F4();
            v52 = v71(v69, v70);
          }

          sub_22BB39248(v52, v53, v54, v55, v56, v57, v58, v59, v160, v173, v186, v199, v212, v225, v238, v251, v264, v277, v290, v291, *(&v291 + 1), v292, v293, *(&v293 + 1), v294, v295);
          &qword_27D8E6760, v72, v73, v74, v75, v76, v77, v78, v161, v174, v187, v200, v213, v226, v239, v252, v265, v278, v290, v291, *(&v291 + 1), v292, v293, *(&v293 + 1), v294;
          v22, v79, v80, v81, v82, v83, v84, v85, v162, v175, v188, v201, v214, v227, v240, v253, v266, v279, v290, v291, *(&v291 + 1), v292, v293, *(&v293 + 1), v294;
          0, v86, v87, v88, v89, v90, v91, v92, v163, v176, v189, v202, v215, v228, v241, v254, v267, v280, v290, v291, *(&v291 + 1), v292, v293, *(&v293 + 1), v294;
          v21, v93, v94, v95, v96, v97, v98, v99, v164, v177, v190, v203, v216, v229, v242, v255, v268, v281, v290, v291, *(&v291 + 1), v292, v293, *(&v293 + 1), v294;
          v25, v100, v101, v102, v103, v104, v105, v106, v165, v178, v191, v204, v217, v230, v243, v256, v269, v282, v290, v291, *(&v291 + 1), v292, v293, *(&v293 + 1), v294;
          v37, v107, v108, v109, v110, v111, v112, v113, v166, v179, v192, v205, v218, v231, v244, v257, v270, v283, v290, v291, *(&v291 + 1), v292, v293, *(&v293 + 1), v294;
          v2, v114, v115, v116, v117, v118, v119, v120, v167, v180, v193, v206, v219, v232, v245, v258, v271, v284, v290, v291, *(&v291 + 1), v292, v293, *(&v293 + 1), v294;
          v3, v121, v122, v123, v124, v125, v126, v127, v168, v181, v194, v207, v220, v233, v246, v259, v272, v285, v290, v291, *(&v291 + 1), v292, v293, *(&v293 + 1), v294;
          v26, v128, v129, v130, v131, v132, v133, v134, v169, v182, v195, v208, v221, v234, v247, v260, v273, v286, v290, v291, *(&v291 + 1), v292, v293, *(&v293 + 1), v294;
          v235, v135, v136, v137, v138, v139, v140, v141, v170, v183, v196, v209, v222, v235, v248, v261, v274, v287, v290, v291, *(&v291 + 1), v292, v293, *(&v293 + 1), v294;
          v249, v142, v143, v144, v145, v146, v147, v148, v171, v184, v197, v210, v223, v236, v249, v262, v275, v288, v290, v291, *(&v291 + 1), v292, v293, *(&v293 + 1), v294;
          v263, v149, v150, v151, v152, v153, v154, v155, v172, v185, v198, v211, v224, v237, v250, v263, v276, v289, v290, v291, *(&v291 + 1), v292, v293, *(&v293 + 1), v294;
          sub_22BB2F09C();
          sub_22BB3AAA8();

          __asm { BRAA            X1, X16 }
        }

        v2 = *(v0 + 248);
        v3 = *(v0 + 88);
        sub_22BB30E54();
        sub_22BB38958();
        sub_22BB31E54();
        sub_22BB38958();
        if (sub_22BDB43B4())
        {
          v60 = sub_22BB58B5C();
          v61(v60);
          sub_22BDB5144();
          v62 = sub_22BB3B144();
          v63(v62);
          sub_22BB31B20();
          sub_22BDB5744();
          sub_22BB32A48(&unk_22BDCE208);
          v64 = swift_task_alloc();
          *(v0 + 440) = v64;
          *v64 = v0;
          sub_22BB37E48(v64);
          sub_22BB3AAA8();

          __asm { BR              X1 }
        }

        sub_22BB309FC();
        sub_22BB34698();
        sub_22BB33EB8();
        sub_22BB34698();
        if (v21)
        {
          break;
        }

LABEL_15:
        while (1)
        {
          sub_22BB72258();
          if (v23 == v24)
          {
            break;
          }

          sub_22BB3B82C();
        }

        v25 = *(v0 + 240);
        v26 = &unk_22BDCE9D0;
        sub_22BBE6DE0(&qword_27D8E6760, &unk_22BDCE9D0);
        sub_22BB30B28();
        sub_22BB336D0(v33, v34, v35, v36);
        v21 = 0;
      }
    }
  }

  v7 = *(v0 + 96);
  sub_22BB31B88();
  swift_beginAccess();
  v8 = *(v7 + 16);
  *(v0 + 384) = v8;
  *(v0 + 452) = *(v8 + 32);
  sub_22BB52A10();
  v11 = v9 & v10;

  v15 = 0;
  if (!v11)
  {
    goto LABEL_5;
  }

  do
  {
LABEL_9:
    *(v0 + 392) = v11;
    *(v0 + 400) = v15;
    sub_22BB3DF00();
    sub_22BB37890();
    sub_22BB33618();
    sub_22BB31E54();
    sub_22BB38958();
    if (*(v4 + *(v1 + 28)))
    {
      sub_22BB39808();
      sub_22BB3AAA8();

      return MEMORY[0x2822009F8](v12, v13, v14);
    }

    v11 &= v11 - 1;
    sub_22BB33EB8();
    v12 = sub_22BB34698();
  }

  while (v11);
LABEL_5:
  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    v12 = *(v0 + 384);
    if (v16 >= (((1 << *(v0 + 452)) + 63) >> 6))
    {

      goto LABEL_13;
    }

    v11 = *(v12 + 8 * v16 + 64);
    ++v15;
    if (v11)
    {
      v15 = v16;
      goto LABEL_9;
    }
  }

  __break(1u);
  return MEMORY[0x2822009F8](v12, v13, v14);
}

double sub_22BB7538C@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_22BB3CB98();
  if (v6)
  {
    v7 = v5;
    swift_isUniquelyReferenced_nonNull_native();
    v8 = *(*v2 + 24);
    v9 = sub_22BBE6DE0(&qword_27D8E67E0, &qword_22BDCF4A8);
    sub_22BB2F694(v9);
    sub_22BB37974();
    sub_22BDB52C4();
    sub_22BB2F330();
    sub_22BB34504(v8 + *(v10 + 72) * v7, MEMORY[0x277D1CB28]);
    v11 = *(v4 + 56) + 56 * v7;
    v12 = *(v11 + 8);
    v13 = *(v11 + 32);
    *a1 = *v11;
    *(a1 + 8) = v12;
    *(a1 + 16) = *(v11 + 16);
    *(a1 + 32) = v13;
    *(a1 + 40) = *(v11 + 40);
    sub_22BB754D8(&qword_28142DD08, 255, MEMORY[0x277D1CB28], MEMORY[0x277D1CB30]);
    sub_22BDBB4C4();
    *v2 = v4;
  }

  else
  {
    *(a1 + 48) = 0;
    result = 0.0;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
  }

  return result;
}

uint64_t sub_22BB754D8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_22BB7553C()
{
  *(v5 - 192) = v0;
  *(v5 - 184) = v3;
  *(v5 - 176) = v2;
  *(v5 - 168) = v4;
  *(v5 - 88) = v1;

  return sub_22BDBB5E4();
}

uint64_t sub_22BB75570()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_22BB755A0(uint64_t a1)
{
  *(v2 - 160) = v1;

  return sub_22BDB7774();
}

void sub_22BB75614()
{
}

uint64_t sub_22BB75658()
{
}

uint64_t sub_22BB75690(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_22BDBB8A4();
}

uint64_t sub_22BB756F4@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 4736) = a1;

  return sub_22BB721E4();
}

uint64_t sub_22BB75728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_22BDBB664();
}

uint64_t sub_22BB7574C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  return swift_willThrow();
}

uint64_t sub_22BB7577C()
{

  return swift_projectBox();
}

uint64_t sub_22BB757AC(uint64_t a1)
{

  return sub_22BB58728(a1, v1, v2);
}

uint64_t sub_22BB757D4()
{
  v2 = *(v0 - 144);
  *(v0 - 136) = *(v2 + 4240);
  *(v0 - 192) = *(v2 + 4224);
}

uint64_t sub_22BB7583C()
{

  return sub_22BDB5D84();
}

void sub_22BB75860()
{
  v2[584] = v0;
  v2[583] = v1;
  v2[582] = *(v3 - 152);
  v2[588] = *(v2[312] + v2[564]);
}

uint64_t sub_22BB75894(uint64_t result, uint64_t a2)
{
  *(v2 + 1336) = result;
  *(v2 + 1344) = a2;
  return result;
}

uint64_t sub_22BB758C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v28 = *(v25 + 1016);

  return a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, v28, a17, a18, a19, a20, a21, a22, a23, a24, a25;
}

void sub_22BB75978()
{
  *(v0 + 16) = v4;
  v5 = v0 + 16 * v1;
  *(v5 + 32) = v2;
  *(v5 + 40) = v3;
}

uint64_t sub_22BB75994(void x0_0, void x1_0, void x2_0, void a4, void a5, void a6, void a7, void a8, uint64_t a2, uint64_t a3)
{

  return swift_arrayDestroy();
}

uint64_t sub_22BB759E0()
{
  *(v5 - 224) = v2;
  *(v5 - 216) = v0;
  *(v5 - 208) = v1;
  *(v5 - 200) = v4;
  *(v5 - 88) = v3;

  return sub_22BDBB5E4();
}

uint64_t sub_22BB75AA8()
{
  sub_22BB2F0D4();
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_22BDB5664();
  sub_22BB30434(v3);
  v0[4] = v4;
  v0[5] = *(v5 + 64);
  v0[6] = swift_task_alloc();
  v6 = sub_22BBE6DE0(&qword_27D8E2978, &qword_22BDBD020);
  sub_22BB2F0C8(v6);
  v0[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BB75BAC, 0, 0);
}

uint64_t sub_22BB75D44()
{
  sub_22BDB5664();
  sub_22BB3A75C();
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  swift_unknownObjectRelease();

  sub_22BDB43E4();
  sub_22BB31F70();
  (*(v3 + 8))(v0 + v2);
  sub_22BB3AE18();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_22BB75E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22BB36BC0();
  sub_22BB35458();
  if (!*(v12 + 184))
  {
    v17 = *(v12 + 232);
    v13 = *(v12 + 216);
    (*(v12 + 952))(*(v12 + 536), *(v12 + 544), *(v12 + 520));
    sub_22BD63C70();
    sub_22BDB82A4();
    sub_22BBD1688(v17);
    v18 = sub_22BBC0248();
    v19(v18);
  }

  v20 = *(v12 + 272);
  sub_22BDB57F4();
  sub_22BB36B74(v20);
  if (v21)
  {
    v22 = *(v12 + 272);

    sub_22BB325EC(v22, &qword_27D8E6418, &unk_22BDCE260);
  }

  else
  {
    v23 = *(v12 + 296);
    v20 = sub_22BDB5324();
    v13 = v23 + 8;
    v24 = sub_22BB2F324();
    v25(v24);
    if (v20)
    {
      sub_22BB33430();

      return MEMORY[0x2822009F8](v26, v27, v28);
    }
  }

  HIDWORD(v788) = *(v12 + 1042);
  v679 = *(v12 + 976);
  v459 = *(v12 + 992);
  v514 = *(v12 + 912);
  v1397 = *(v12 + 896);
  v1398 = *(v12 + 872);
  v1399 = *(v12 + 864);
  v1400 = *(v12 + 856);
  v1401 = *(v12 + 848);
  v1402 = *(v12 + 840);
  v1403 = *(v12 + 832);
  v1396 = *(v12 + 808);
  v1404 = *(v12 + 800);
  v1405 = *(v12 + 792);
  v1406 = *(v12 + 784);
  v1407 = *(v12 + 776);
  v1408 = *(v12 + 768);
  v1409 = *(v12 + 744);
  v30 = *(v12 + 736);
  v1410 = *(v12 + 728);
  v1411 = *(v12 + 720);
  v1413 = *(v12 + 712);
  v1414 = *(v12 + 704);
  v1415 = *(v12 + 696);
  v1416 = *(v12 + 688);
  sub_22BD64108();
  v953 = v31;
  v1417 = v32;
  v1418 = *(v12 + 640);
  sub_22BB71D94();
  v1419 = v34;
  v1420 = v33;
  sub_22BBD2288();
  v1421 = v36;
  v1422 = v35;
  v1443 = *(v12 + 560);
  v569 = *(v12 + 544);
  sub_22BD647EC();
  v1394 = v38;
  v1395 = v37;
  v1283 = *(v12 + 504);
  v1338 = *(v12 + 496);
  v1393 = *(v12 + 512);
  v1424 = *(v12 + 488);
  v1425 = *(v12 + 480);
  v1118 = *(v12 + 464);
  v1173 = *(v12 + 456);
  v1228 = *(v12 + 472);
  sub_22BD6259C();
  v1008 = v39;
  v1436 = v40;
  v1437 = *(v12 + 304);
  v843 = *(v12 + 296);
  v898 = *(v12 + 288);
  sub_22BD62C80();
  v1063 = v41;
  sub_22BDBAEF4();
  v1412 = v13;
  sub_22BB30B28();
  sub_22BB336D0(v42, v43, v44, v45);
  sub_22BB366B8();
  v46 = swift_allocObject();
  swift_weakInit();
  sub_22BB32CE8();
  v624 = v47;
  v48 = sub_22BB34FB8();
  v49 = v14;
  sub_22BB335C0(v48, v50);
  v51 = qword_28142F3F0;
  sub_22BD63BA0();
  v52 = swift_allocObject();
  v52[2] = v51;
  v52[3] = v514;
  v52[4] = v46;
  sub_22BB2F5B0();
  sub_22BB3A518(v49, v53 + v20);
  *(v52 + v15) = v16;

  sub_22BB58138();

  v54 = *(v16 + v679);

  v55 = v569;
  sub_22BDB5854();
  sub_22BB37DF4();
  sub_22BB335C0(v16 + v56, v1443);
  sub_22BB3FBBC();
  sub_22BB70820();

  sub_22BB343F4();
  sub_22BB34648();
  sub_22BB325EC(v1444, &qword_27D8E6410, &unk_22BDCE250);
  v57 = [objc_opt_self() defaultCenter];
  sub_22BD64E50();
  v58 = sub_22BD63698();
  sub_22BB335C0(v58, v49);
  sub_22BDBB724();
  v59 = sub_22BB3E460();
  [v59 v60];
  swift_unknownObjectRelease();

  v61 = v1008;
  (*(v843 + 8))(v1008, v898);
  v62 = v1228;
  (*(v1118 + 8))(v1228, v1173);
  (*(v1283 + 8))(v1393, v1338);
  (*(v1394 + 8))(v569, v1395);
  sub_22BB335C0(v30, v1063);

  v63 = sub_22BB3A19C();
  sub_22BB76C64(v63, v64, v30);

  sub_22BB3093C();
  sub_22BB34648();
  sub_22BB325EC(v1396, &qword_27D8E6440, &qword_22BDCE290);
  sub_22BDB6604();

  v1397, v65, v66, v67, v68, v69, v70, v71, v459, v514, v569, v624, v679, v49, v788, v843, v898, v953, v1008, v1063, v1118, v1173, v1228, v1283, v1338;
  v1398, v72, v73, v74, v75, v76, v77, v78, v460, v515, v570, v625, v680, v734, v789, v844, v899, v954, v1009, v1064, v1119, v1174, v1229, v1284, v1339;
  v1399, v79, v80, v81, v82, v83, v84, v85, v461, v516, v571, v626, v681, v735, v790, v845, v900, v955, v1010, v1065, v1120, v1175, v1230, v1285, v1340;
  v1400, v86, v87, v88, v89, v90, v91, v92, v462, v517, v572, v627, v682, v736, v791, v846, v901, v956, v1011, v1066, v1121, v1176, v1231, v1286, v1341;
  v1401, v93, v94, v95, v96, v97, v98, v99, v463, v518, v573, v628, v683, v737, v792, v847, v902, v957, v1012, v1067, v1122, v1177, v1232, v1287, v1342;
  v1402, v100, v101, v102, v103, v104, v105, v106, v464, v519, v574, v629, v684, v738, v793, v848, v903, v958, v1013, v1068, v1123, v1178, v1233, v1288, v1343;
  v1403, v107, v108, v109, v110, v111, v112, v113, v465, v520, v575, v630, v685, v739, v794, v849, v904, v959, v1014, v1069, v1124, v1179, v1234, v1289, v1344;
  v1396, v114, v115, v116, v117, v118, v119, v120, v466, v521, v576, v631, v686, v740, v795, v850, v905, v960, v1015, v1070, v1125, v1180, v1235, v1290, v1345;
  v1404, v121, v122, v123, v124, v125, v126, v127, v467, v522, v577, v632, v687, v741, v796, v851, v906, v961, v1016, v1071, v1126, v1181, v1236, v1291, v1346;
  v1405, v128, v129, v130, v131, v132, v133, v134, v468, v523, v578, v633, v688, v742, v797, v852, v907, v962, v1017, v1072, v1127, v1182, v1237, v1292, v1347;
  v1406, v135, v136, v137, v138, v139, v140, v141, v469, v524, v579, v634, v689, v743, v798, v853, v908, v963, v1018, v1073, v1128, v1183, v1238, v1293, v1348;
  v1407, v142, v143, v144, v145, v146, v147, v148, v470, v525, v580, v635, v690, v744, v799, v854, v909, v964, v1019, v1074, v1129, v1184, v1239, v1294, v1349;
  v1408, v149, v150, v151, v152, v153, v154, v155, v471, v526, v581, v636, v691, v745, v800, v855, v910, v965, v1020, v1075, v1130, v1185, v1240, v1295, v1350;
  v1409, v156, v157, v158, v159, v160, v161, v162, v472, v527, v582, v637, v692, v746, v801, v856, v911, v966, v1021, v1076, v1131, v1186, v1241, v1296, v1351;
  v30, v163, v164, v165, v166, v167, v168, v169, v473, v528, v583, v638, v693, v747, v802, v857, v912, v967, v1022, v1077, v1132, v1187, v1242, v1297, v1352;
  v1410, v170, v171, v172, v173, v174, v175, v176, v474, v529, v584, v639, v694, v748, v803, v858, v913, v968, v1023, v1078, v1133, v1188, v1243, v1298, v1353;
  v1411, v177, v178, v179, v180, v181, v182, v183, v475, v530, v585, v640, v695, v749, v804, v859, v914, v969, v1024, v1079, v1134, v1189, v1244, v1299, v1354;
  v1413, v184, v185, v186, v187, v188, v189, v190, v476, v531, v586, v641, v696, v750, v805, v860, v915, v970, v1025, v1080, v1135, v1190, v1245, v1300, v1355;
  v1414, v191, v192, v193, v194, v195, v196, v197, v477, v532, v587, v642, v697, v751, v806, v861, v916, v971, v1026, v1081, v1136, v1191, v1246, v1301, v1356;
  v1415, v198, v199, v200, v201, v202, v203, v204, v478, v533, v588, v643, v698, v752, v807, v862, v917, v972, v1027, v1082, v1137, v1192, v1247, v1302, v1357;
  v1416, v205, v206, v207, v208, v209, v210, v211, v479, v534, v589, v644, v699, v753, v808, v863, v918, v973, v1028, v1083, v1138, v1193, v1248, v1303, v1358;
  v1417, v212, v213, v214, v215, v216, v217, v218, v480, v535, v590, v645, v700, v754, v809, v864, v919, v974, v1029, v1084, v1139, v1194, v1249, v1304, v1359;
  v755, v219, v220, v221, v222, v223, v224, v225, v481, v536, v591, v646, v701, v755, v810, v865, v920, v975, v1030, v1085, v1140, v1195, v1250, v1305, v1360;
  v1418, v226, v227, v228, v229, v230, v231, v232, v482, v537, v592, v647, v702, v756, v811, v866, v921, v976, v1031, v1086, v1141, v1196, v1251, v1306, v1361;
  v1419, v233, v234, v235, v236, v237, v238, v239, v483, v538, v593, v648, v703, v757, v812, v867, v922, v977, v1032, v1087, v1142, v1197, v1252, v1307, v1362;
  v1420, v240, v241, v242, v243, v244, v245, v246, v484, v539, v594, v649, v704, v758, v813, v868, v923, v978, v1033, v1088, v1143, v1198, v1253, v1308, v1363;
  v1421, v247, v248, v249, v250, v251, v252, v253, v485, v540, v595, v650, v705, v759, v814, v869, v924, v979, v1034, v1089, v1144, v1199, v1254, v1309, v1364;
  v1422, v254, v255, v256, v257, v258, v259, v260, v486, v541, v596, v651, v706, v760, v815, v870, v925, v980, v1035, v1090, v1145, v1200, v1255, v1310, v1365;
  v1443, v261, v262, v263, v264, v265, v266, v267, v487, v542, v597, v652, v707, v761, v816, v871, v926, v981, v1036, v1091, v1146, v1201, v1256, v1311, v1366;
  v55, v268, v269, v270, v271, v272, v273, v274, v488, v543, v598, v653, v708, v762, v817, v872, v927, v982, v1037, v1092, v1147, v1202, v1257, v1312, v1367;
  v1423, v275, v276, v277, v278, v279, v280, v281, v489, v544, v599, v654, v709, v763, v818, v873, v928, v983, v1038, v1093, v1148, v1203, v1258, v1313, v1368;
  v1393, v282, v283, v284, v285, v286, v287, v288, v490, v545, v600, v655, v710, v764, v819, v874, v929, v984, v1039, v1094, v1149, v1204, v1259, v1314, v1369;
  v1424, v289, v290, v291, v292, v293, v294, v295, v491, v546, v601, v656, v711, v765, v820, v875, v930, v985, v1040, v1095, v1150, v1205, v1260, v1315, v1370;
  v1425, v296, v297, v298, v299, v300, v301, v302, v492, v547, v602, v657, v712, v766, v821, v876, v931, v986, v1041, v1096, v1151, v1206, v1261, v1316, v1371;
  v62, v303, v304, v305, v306, v307, v308, v309, v493, v548, v603, v658, v713, v767, v822, v877, v932, v987, v1042, v1097, v1152, v1207, v1262, v1317, v1372;
  v1426, v310, v311, v312, v313, v314, v315, v316, v494, v549, v604, v659, v714, v768, v823, v878, v933, v988, v1043, v1098, v1153, v1208, v1263, v1318, v1373;
  v1427, v317, v318, v319, v320, v321, v322, v323, v495, v550, v605, v660, v715, v769, v824, v879, v934, v989, v1044, v1099, v1154, v1209, v1264, v1319, v1374;
  v1428, v324, v325, v326, v327, v328, v329, v330, v496, v551, v606, v661, v716, v770, v825, v880, v935, v990, v1045, v1100, v1155, v1210, v1265, v1320, v1375;
  v1429, v331, v332, v333, v334, v335, v336, v337, v497, v552, v607, v662, v717, v771, v826, v881, v936, v991, v1046, v1101, v1156, v1211, v1266, v1321, v1376;
  v1430, v338, v339, v340, v341, v342, v343, v344, v498, v553, v608, v663, v718, v772, v827, v882, v937, v992, v1047, v1102, v1157, v1212, v1267, v1322, v1377;
  v1431, v345, v346, v347, v348, v349, v350, v351, v499, v554, v609, v664, v719, v773, v828, v883, v938, v993, v1048, v1103, v1158, v1213, v1268, v1323, v1378;
  v1432, v352, v353, v354, v355, v356, v357, v358, v500, v555, v610, v665, v720, v774, v829, v884, v939, v994, v1049, v1104, v1159, v1214, v1269, v1324, v1379;
  v1433, v359, v360, v361, v362, v363, v364, v365, v501, v556, v611, v666, v721, v775, v830, v885, v940, v995, v1050, v1105, v1160, v1215, v1270, v1325, v1380;
  v1434, v366, v367, v368, v369, v370, v371, v372, v502, v557, v612, v667, v722, v776, v831, v886, v941, v996, v1051, v1106, v1161, v1216, v1271, v1326, v1381;
  v1435, v373, v374, v375, v376, v377, v378, v379, v503, v558, v613, v668, v723, v777, v832, v887, v942, v997, v1052, v1107, v1162, v1217, v1272, v1327, v1382;
  v61, v380, v381, v382, v383, v384, v385, v386, v504, v559, v614, v669, v724, v778, v833, v888, v943, v998, v1053, v1108, v1163, v1218, v1273, v1328, v1383;
  v1436, v387, v388, v389, v390, v391, v392, v393, v505, v560, v615, v670, v725, v779, v834, v889, v944, v999, v1054, v1109, v1164, v1219, v1274, v1329, v1384;
  v1437, v394, v395, v396, v397, v398, v399, v400, v506, v561, v616, v671, v726, v780, v835, v890, v945, v1000, v1055, v1110, v1165, v1220, v1275, v1330, v1385;
  v1438, v401, v402, v403, v404, v405, v406, v407, v507, v562, v617, v672, v727, v781, v836, v891, v946, v1001, v1056, v1111, v1166, v1221, v1276, v1331, v1386;
  v1439, v408, v409, v410, v411, v412, v413, v414, v508, v563, v618, v673, v728, v782, v837, v892, v947, v1002, v1057, v1112, v1167, v1222, v1277, v1332, v1387;
  v1440, v415, v416, v417, v418, v419, v420, v421, v509, v564, v619, v674, v729, v783, v838, v893, v948, v1003, v1058, v1113, v1168, v1223, v1278, v1333, v1388;
  v1441, v422, v423, v424, v425, v426, v427, v428, v510, v565, v620, v675, v730, v784, v839, v894, v949, v1004, v1059, v1114, v1169, v1224, v1279, v1334, v1389;
  v1442, v429, v430, v431, v432, v433, v434, v435, v511, v566, v621, v676, v731, v785, v840, v895, v950, v1005, v1060, v1115, v1170, v1225, v1280, v1335, v1390;
  v1412, v436, v437, v438, v439, v440, v441, v442, v512, v567, v622, v677, v732, v786, v841, v896, v951, v1006, v1061, v1116, v1171, v1226, v1281, v1336, v1391;
  v1444, v443, v444, v445, v446, v447, v448, v449, v513, v568, v623, v678, v733, v787, v842, v897, v952, v1007, v1062, v1117, v1172, v1227, v1282, v1337, v1392;
  sub_22BB360FC();
  sub_22BB33430();

  return v451(v450, v451, v452, v453, v454, v455, v456, v457, a9, a10, a11, a12);
}

uint64_t sub_22BB76518()
{
  swift_weakDestroy();
  sub_22BB366B8();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_22BB7654C()
{
  sub_22BDB5664();
  sub_22BB3A75C();
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  swift_unknownObjectRelease();

  sub_22BDB43E4();
  sub_22BB31F70();
  (*(v3 + 8))(v0 + v2);

  return MEMORY[0x2821FE8E8](v0);
}

void sub_22BB76660(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v8 = *(v6 - 176);

  _os_log_impl(a1, v8, v5, a4, v4, 0x16u);
}

uint64_t sub_22BB7669C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, char *a3@<X8>)
{
  v6 = sub_22BDBAEF4();
  sub_22BB30444();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  sub_22BB30574();
  v12 = v11 - v10;
  v13 = sub_22BDB41A4();
  sub_22BB30444();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  sub_22BB30574();
  v19 = v18 - v17;
  v20 = (*(v15 + 16))(v18 - v17, a1, v13);
  a2(v20);
  v21 = sub_22BDB4194();
  v22 = type metadata accessor for ToolboxRebuildTrigger(0);
  (*(v8 + 16))(&a3[*(v22 + 24)], v12, v6);
  *a3 = sub_22BDBABF4();
  *(a3 + 1) = v23;
  v24 = sub_22BB76868(v21);
  v26 = v25;

  (*(v8 + 8))(v12, v6);
  result = (*(v15 + 8))(v19, v13);
  *(a3 + 2) = v24;
  *(a3 + 3) = v26;
  return result;
}

uint64_t sub_22BB76868(uint64_t a1)
{
  v1 = 0x20737365636F7270;
  v2 = sub_22BDBABE4();
  v3 = sub_22BDBABF4();
  v5 = v4;

  if (v3 == sub_22BDBABF4() && v5 == v6)
  {
LABEL_34:

    return v1;
  }

  v8 = sub_22BDBB6D4();

  if (v8)
  {
    return v1;
  }

  if (qword_281428770 != -1)
  {
    swift_once();
  }

  v9 = sub_22BDBABF4();
  v11 = v10;
  if (v9 == sub_22BDBABF4() && v11 == v12)
  {

    return 0xD000000000000012;
  }

  v14 = sub_22BDBB6D4();

  if (v14)
  {
    return 0xD000000000000012;
  }

  v1 = 0x206E6F6973736573;
  v15 = sub_22BDBABE4();
  v16 = sub_22BDBABF4();
  v18 = v17;

  if (v16 == sub_22BDBABF4() && v18 == v19)
  {
    goto LABEL_34;
  }

  v21 = sub_22BDBB6D4();

  if ((v21 & 1) == 0)
  {
    v22 = sub_22BDBB1B4();
    v23 = sub_22BDBABF4();
    v25 = v24;

    if (v23 == sub_22BDBABF4() && v25 == v26)
    {
    }

    else
    {
      v28 = sub_22BDBB6D4();

      if ((v28 & 1) == 0)
      {
        v29 = sub_22BDBABE4();
        v30 = sub_22BDBABF4();
        v32 = v31;

        if (v30 == sub_22BDBABF4() && v32 == v33)
        {
        }

        else
        {
          v35 = sub_22BDBB6D4();

          if ((v35 & 1) == 0)
          {
            v36 = sub_22BDBABE4();
            v37 = sub_22BDBABF4();
            v39 = v38;

            if (v37 == sub_22BDBABF4() && v39 == v40)
            {
            }

            else
            {
              v42 = sub_22BDBB6D4();

              if ((v42 & 1) == 0)
              {
                return sub_22BDBABF4();
              }
            }

            return 0xD000000000000022;
          }
        }

        return 0xD00000000000001CLL;
      }
    }

    return 0xD000000000000017;
  }

  return v1;
}

uint64_t sub_22BB76C64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v47 = sub_22BDB52C4();
  MEMORY[0x28223BE20](v47);
  v46 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22BDB7764();
  v42 = *(v6 - 1);
  v43 = v6;
  MEMORY[0x28223BE20](v6);
  v41 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_22BDB7734();
  v8 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22BDB5664();
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22BDB7754();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BDB6124();
  sub_22BB335C0(a3, v13);

  v18 = sub_22BDB7744();
  sub_22BDB7774();
  v44 = sub_22BDBB1C4();
  v45 = a2;

  if (sub_22BDBB244())
  {
    v37 = v18;
    v38 = v15;
    v39 = v14;
    v40 = v8;

    v19 = v41;
    sub_22BDB77B4();

    v21 = v42;
    v20 = v43;
    if ((*(v42 + 88))(v19, v43) == *MEMORY[0x277D85B00])
    {
      v22 = 0;
      v43 = "[Error] Interval already ended";
    }

    else
    {
      (*(v21 + 8))(v19, v20);
      v43 = "[ClientSessionManager %s] Create Session %s End";
      v22 = 2;
    }

    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v49 = v25;
    *v24 = v22;
    *(v24 + 1) = v22;
    *(v24 + 2) = 2080;
    sub_22BB335C0(v45 + OBJC_IVAR____TtC23IntelligenceFlowRuntime20ClientSessionManager_sessionClientId, v46);
    sub_22BB3B194(&qword_28142DCF8, MEMORY[0x277D1CB28]);
    v26 = sub_22BDBB684();
    v28 = v27;
    sub_22BB34648();
    v29 = sub_22BB32EE0(v26, v28, &v49);

    *(v24 + 4) = v29;
    *(v24 + 12) = 2080;
    v30 = sub_22BDB5624();
    v32 = v31;
    sub_22BB34648();
    v33 = sub_22BB32EE0(v30, v32, &v49);

    *(v24 + 14) = v33;
    v34 = sub_22BDB7714();
    v35 = v37;
    _os_signpost_emit_with_name_impl(&dword_22BB2C000, v37, v44, v34, "SessionCreate", v43, v24, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2318A6080](v25, -1, -1);
    MEMORY[0x2318A6080](v24, -1, -1);

    (*(v40 + 8))(v10, v48);
    return (*(v38 + 8))(v17, v39);
  }

  else
  {

    (*(v8 + 8))(v10, v48);
    sub_22BB34648();
    return (*(v15 + 8))(v17, v14);
  }
}

uint64_t type metadata accessor for ToolboxRebuildTrigger(uint64_t a1)
{
  result = qword_28142A490;
  if (!qword_28142A490)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22BB774F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, void (**a11)(void, void), uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_22BC5496C();
  v31 = *(v30 + 176);
  *(v30 + 152) = MEMORY[0x277D84F90];
  sub_22BD64C28();
  v33 = *(v31 + *(v32 + 120));
  v34 = *(v33 + 16);
  if (v34)
  {
    v35 = *(v30 + 464);
    v36 = *(v30 + 440);
    v37 = *(v30 + 416);
    v38 = *(v30 + 168);
    type metadata accessor for SessionCoordinatorAcceptPayload(0);
    v39 = v33 + 32;
    v122 = *v38;
    v124 = (v37 + 104);
    v129 = *MEMORY[0x277D85778];
    v128 = v35;
    v121 = (v36 + 8);
    v40 = MEMORY[0x277D84F90];
    do
    {
      v133 = v34;
      v134 = v40;
      v41 = *(v30 + 480);
      v42 = *(v30 + 456);
      v43 = *(v30 + 424);
      v44 = *(v30 + 408);
      v132 = v39;
      v45 = *(v30 + 176);
      sub_22BB690EC(v39, v30 + 16);
      (*v124)(v43, v129, v44);
      sub_22BDBAF04();
      v46 = sub_22BB31B54();
      v47(v46);
      v48 = sub_22BDBAEF4();
      sub_22BB30B28();
      sub_22BB336D0(v49, v50, v51, v48);
      sub_22BB690EC(v30 + 16, v30 + 56);
      sub_22BB8E9F0();
      v52();
      v53 = (*(v128 + 80) + 80) & ~*(v128 + 80);
      v54 = swift_allocObject();
      *(v54 + 2) = 0;
      *(v54 + 3) = 0;
      *(v54 + 4) = v45;
      sub_22BB382E8((v30 + 56), (v54 + 40));
      (*(v128 + 32))(&v54[v53], v41, v42);
      sub_22BD62134();
      sub_22BB3CD70(v55, v56, v57, &qword_22BDBD020);
      v58 = sub_22BB3A190();
      sub_22BB3AA28(v58, v59, v48);
      sub_22BC54DB0();

      if (v53 == 1)
      {
        sub_22BD62218();
        sub_22BB325EC(v60, v61, v62);
      }

      else
      {
        sub_22BDBAEE4();
        sub_22BB30474();
        v63 = sub_22BB3A19C();
        v64(v63);
      }

      if (*(v54 + 2))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        sub_22BB3182C();
        v65 = sub_22BDBAE44();
        v67 = v66;
        swift_unknownObjectRelease();
      }

      else
      {
        v65 = 0;
        v67 = 0;
      }

      sub_22BB322B0();
      v68 = swift_allocObject();
      *(v68 + 16) = &unk_22BDCE378;
      *(v68 + 24) = v54;
      v69 = v67 | v65;
      if (v67 | v65)
      {
        v69 = v30 + 96;
        *(v30 + 96) = 0;
        *(v30 + 104) = 0;
        *(v30 + 112) = v65;
        *(v30 + 120) = v67;
      }

      v70 = *(v30 + 376);
      *(v30 + 128) = 1;
      *(v30 + 136) = v69;
      *(v30 + 144) = v122;
      swift_task_create();

      sub_22BD62218();
      sub_22BB325EC(v71, v72, v73);
      sub_22BB690EC(v30 + 16, v70);
      sub_22BB72044();
      v74();
      v40 = v134;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22BB305BC();
        sub_22BBB5FE4();
        v40 = v82;
      }

      v76 = *(v40 + 16);
      v75 = *(v40 + 24);
      if (v76 >= v75 >> 1)
      {
        sub_22BB2F138(v75);
        sub_22BBB5FE4();
        v40 = v83;
      }

      v77 = *(v30 + 376);
      (*v121)(*(v30 + 448), *(v30 + 432));
      v78 = sub_22BB30AE4();
      v79(v78);
      sub_22BB32FA4((v30 + 16));
      *(v40 + 16) = v76 + 1;
      sub_22BB2F390();
      sub_22BB6BEE0(v77, v40 + v80 + *(v81 + 72) * v76, &qword_27D8E6038, &qword_22BDD0300);
      *(v30 + 152) = v40;
      v39 = v132 + 40;
      v34 = v133 - 1;
    }

    while (v133 != 1);
    v31 = *(v30 + 176);
  }

  else
  {
    v129 = *MEMORY[0x277D85778];
    v40 = MEMORY[0x277D84F90];
  }

  *(v30 + 496) = v40;
  v84 = *(v30 + 328);
  v127 = *(v30 + 344);
  v125 = *(v30 + 384);
  v126 = *(v30 + 320);
  v85 = *(v30 + 280);
  v86 = *(v30 + 288);
  v87 = *(v30 + 272);
  v88 = *(v30 + 192);
  v131 = *(v30 + 200);
  v130 = *(v30 + 184);
  sub_22BDB43E4();
  v89 = sub_22BB35760();
  type metadata accessor for SessionCoordinatorInjectionRequest(v89);
  sub_22BB30DC4();
  sub_22BB3B194(v90, v91);
  *(v30 + 160) = sub_22BDBAB14();
  sub_22BDB9B54();
  (*(v85 + 104))(v86, v129, v87);
  sub_22BB9741C();
  sub_22BDBAF04();
  v92 = sub_22BB8E9D0();
  v93(v92);
  sub_22BDBAEF4();
  sub_22BB30B28();
  v123 = v94;
  sub_22BB336D0(v95, v96, v97, v94);
  v98 = sub_22BB3ACBC();
  v99(v98);
  v100 = (*(v84 + 80) + 40) & ~*(v84 + 80);
  v101 = swift_allocObject();
  *(v101 + 2) = 0;
  *(v101 + 3) = 0;
  *(v101 + 4) = v31;
  (*(v84 + 32))(&v101[v100], v127, v126);

  sub_22BBB6154(v125, &unk_22BDCE390, v101);
  sub_22BB325EC(v125, &qword_27D8E2978, &qword_22BDBD020);
  sub_22BDB5E34();
  (*(v88 + 104))(v131, v129, v130);
  sub_22BDBAF04();
  v102 = sub_22BD612F8();
  v103(v102);
  sub_22BD64C28();
  if (*(v31 + *(v104 + 152)) == 1)
  {
    v105 = *(v30 + 384);
    v106 = *(v30 + 176);
    sub_22BB30B28();
    sub_22BB336D0(v107, v108, v109, v123);
    sub_22BB97BA8();
    v110 = sub_22BB3B528();
    v111(v110);
    v112 = swift_allocObject();
    v112[2] = 0;
    v112[3] = 0;
    v112[4] = v106;
    sub_22BB35FA0();
    v113();

    sub_22BBB6154(v105, &unk_22BDCE3A8, v112);
    sub_22BB325EC(v105, &qword_27D8E2978, &qword_22BDBD020);
  }

  v114 = swift_task_alloc();
  *(v30 + 504) = v114;
  *v114 = v30;
  v114[1] = sub_22BBAB210;
  sub_22BB3E07C();

  return sub_22BB77EA4(v115, v116, v117, v118);
}

uint64_t sub_22BB77D24()
{
  sub_22BBE6DE0(&qword_27D8E64A8, &qword_22BDCE360);
  sub_22BB30444();
  swift_unknownObjectRelease();

  sub_22BB32FA4((v0 + 40));
  v1 = sub_22BB541E8();
  v2(v1);
  v3 = sub_22BBC20AC();

  return MEMORY[0x2821FE8E8](v3);
}

uint64_t sub_22BB77E10()
{

  sub_22BB322B0();

  return MEMORY[0x2821FE8E8](v0);
}

void sub_22BB77E48()
{

  JUMPOUT(0x2318A6080);
}

uint64_t sub_22BB77E74(uint64_t result)
{
  *(result + 16) = sub_22BB8AE80;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BB77EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[312] = v4;
  v5[311] = a4;
  v5[310] = a3;
  v5[309] = a2;
  v5[308] = a1;
  v6 = sub_22BDB5B84();
  v5[313] = v6;
  v5[314] = *(v6 - 8);
  v5[315] = swift_task_alloc();
  v7 = sub_22BDB5B64();
  v5[316] = v7;
  v5[317] = *(v7 - 8);
  v5[318] = swift_task_alloc();
  sub_22BBE6DE0(&qword_27D8E64D0, &qword_22BDCE3D8);
  v5[319] = swift_task_alloc();
  v8 = sub_22BDB5D44();
  v5[320] = v8;
  v5[321] = *(v8 - 8);
  v5[322] = swift_task_alloc();
  v9 = sub_22BDB5BC4();
  v5[323] = v9;
  v5[324] = *(v9 - 8);
  v5[325] = swift_task_alloc();
  v10 = sub_22BDB5CE4();
  v5[326] = v10;
  v5[327] = *(v10 - 8);
  v5[328] = swift_task_alloc();
  v11 = sub_22BDB5C64();
  v5[329] = v11;
  v5[330] = *(v11 - 8);
  v5[331] = swift_task_alloc();
  v12 = sub_22BDB5C84();
  v5[332] = v12;
  v5[333] = *(v12 - 8);
  v5[334] = swift_task_alloc();
  v13 = sub_22BDB5C34();
  v5[335] = v13;
  v5[336] = *(v13 - 8);
  v5[337] = swift_task_alloc();
  v14 = sub_22BDB5CC4();
  v5[338] = v14;
  v5[339] = *(v14 - 8);
  v5[340] = swift_task_alloc();
  v15 = sub_22BDB5CA4();
  v5[341] = v15;
  v5[342] = *(v15 - 8);
  v5[343] = swift_task_alloc();
  v16 = sub_22BDB5CF4();
  v5[344] = v16;
  v5[345] = *(v16 - 8);
  v5[346] = swift_task_alloc();
  sub_22BBE6DE0(&qword_27D8E64D8, &qword_22BDCE3E0);
  v5[347] = swift_task_alloc();
  v5[348] = swift_task_alloc();
  v17 = sub_22BBE6DE0(&qword_27D8E64A0, &qword_22BDCE358);
  v5[349] = v17;
  v5[350] = *(v17 - 8);
  v5[351] = swift_task_alloc();
  sub_22BBE6DE0(&qword_27D8E64E0, &qword_22BDCE3E8);
  v5[352] = swift_task_alloc();
  v5[353] = swift_task_alloc();
  v18 = sub_22BDB7764();
  v5[354] = v18;
  v5[355] = *(v18 - 8);
  v5[356] = swift_task_alloc();
  v5[357] = swift_task_alloc();
  sub_22BBE6DE0(&qword_27D8E64E8, &qword_22BDCE3F0);
  v5[358] = swift_task_alloc();
  v5[359] = type metadata accessor for SessionCoordinatorAcceptPayload(0);
  v5[360] = swift_task_alloc();
  v19 = sub_22BBE6DE0(&qword_27D8E64F0, &qword_22BDCE3F8);
  v5[361] = v19;
  v5[362] = *(v19 - 8);
  v5[363] = swift_task_alloc();
  type metadata accessor for SessionPersistenceManager(0);
  v5[364] = swift_task_alloc();
  sub_22BDB5F24();
  v5[365] = swift_task_alloc();
  v20 = *(sub_22BDB5664() - 8);
  v5[366] = v20;
  v5[367] = *(v20 + 64);
  v5[368] = swift_task_alloc();
  v5[369] = swift_task_alloc();
  v21 = sub_22BBE6DE0(&qword_27D8E6400, &unk_22BDCF250);
  v5[370] = v21;
  v5[371] = *(v21 - 8);
  v5[372] = swift_task_alloc();
  v5[373] = swift_task_alloc();
  v22 = sub_22BBE6DE0(&qword_27D8E6038, &qword_22BDD0300);
  v5[374] = v22;
  v23 = *(v22 - 8);
  v5[375] = v23;
  v5[376] = *(v23 + 64);
  v5[377] = swift_task_alloc();
  v5[378] = swift_task_alloc();
  v5[379] = swift_task_alloc();
  v24 = sub_22BDB9254();
  v5[380] = v24;
  v5[381] = *(v24 - 8);
  v5[382] = swift_task_alloc();
  sub_22BBE6DE0(&qword_27D8E64F8, &qword_22BDCE400);
  v5[383] = swift_task_alloc();
  v5[384] = swift_task_alloc();
  v25 = sub_22BBE6DE0(&qword_27D8E6500, &qword_22BDCE408);
  v5[385] = v25;
  v5[386] = *(v25 - 8);
  v5[387] = swift_task_alloc();
  v26 = sub_22BDB9B14();
  v5[388] = v26;
  v5[389] = *(v26 - 8);
  v5[390] = swift_task_alloc();
  v5[391] = swift_task_alloc();
  v27 = type metadata accessor for EventPayloadWithPreassignedID(0);
  v5[392] = v27;
  v5[393] = *(v27 - 8);
  v5[394] = swift_task_alloc();
  sub_22BDB8C54();
  v5[395] = swift_task_alloc();
  v28 = sub_22BDB5E04();
  v5[396] = v28;
  v5[397] = *(v28 - 8);
  v5[398] = swift_task_alloc();
  sub_22BDB5E34();
  v5[399] = swift_task_alloc();
  v29 = sub_22BBE6DE0(&qword_27D8E6508, &qword_22BDCE410);
  v5[400] = v29;
  v5[401] = *(v29 - 8);
  v5[402] = swift_task_alloc();
  v30 = sub_22BDB9B54();
  v5[403] = v30;
  v31 = *(v30 - 8);
  v5[404] = v31;
  v5[405] = *(v31 + 64);
  v5[406] = swift_task_alloc();
  v5[407] = swift_task_alloc();
  v5[408] = swift_task_alloc();
  v5[409] = swift_task_alloc();
  v5[410] = swift_task_alloc();
  v5[411] = swift_task_alloc();
  v5[412] = swift_task_alloc();
  v5[413] = swift_task_alloc();
  v32 = sub_22BDB43E4();
  v5[414] = v32;
  v5[415] = *(v32 - 8);
  v5[416] = swift_task_alloc();
  v5[417] = swift_task_alloc();
  v5[418] = sub_22BBE6DE0(&qword_27D8E6510, &qword_22BDCE418);
  v5[419] = swift_task_alloc();
  v5[420] = swift_task_alloc();
  v33 = type metadata accessor for SpanMetadata(0);
  v5[421] = v33;
  v34 = *(v33 - 8);
  v5[422] = v34;
  v5[423] = *(v34 + 64);
  v5[424] = swift_task_alloc();
  v5[425] = swift_task_alloc();
  v5[426] = swift_task_alloc();
  v5[427] = swift_task_alloc();
  v35 = sub_22BDB5D14();
  v5[428] = v35;
  v36 = *(v35 - 8);
  v5[429] = v36;
  v5[430] = *(v36 + 64);
  v5[431] = swift_task_alloc();
  v5[432] = swift_task_alloc();
  v5[433] = type metadata accessor for SessionCoordinatorInjectionRequest(0);
  v5[434] = swift_task_alloc();
  v5[435] = swift_task_alloc();
  v37 = sub_22BDB9774();
  v5[436] = v37;
  v5[437] = *(v37 - 8);
  v5[438] = swift_task_alloc();
  v5[439] = swift_task_alloc();
  v5[440] = swift_task_alloc();
  v38 = sub_22BDB96E4();
  v5[441] = v38;
  v5[442] = *(v38 - 8);
  v5[443] = swift_task_alloc();
  v5[444] = swift_task_alloc();
  v5[445] = swift_task_alloc();
  v5[446] = swift_task_alloc();
  sub_22BBE6DE0(&qword_27D8E6518, &unk_22BDCE420);
  v5[447] = swift_task_alloc();
  v5[448] = swift_task_alloc();
  v39 = sub_22BBE6DE0(&unk_27D8E69E0, &qword_22BDC1660);
  v5[449] = v39;
  v40 = *(v39 - 8);
  v5[450] = v40;
  v5[451] = *(v40 + 64);
  v5[452] = swift_task_alloc();
  v5[453] = swift_task_alloc();
  v5[454] = swift_task_alloc();
  v5[455] = swift_task_alloc();
  v5[456] = swift_task_alloc();
  v5[457] = swift_task_alloc();
  v5[458] = swift_task_alloc();
  v5[459] = swift_task_alloc();
  v5[460] = swift_task_alloc();
  v5[461] = swift_task_alloc();
  v41 = sub_22BDB98C4();
  v5[462] = v41;
  v5[463] = *(v41 - 8);
  v5[464] = swift_task_alloc();
  v42 = *(sub_22BBE6DE0(&qword_27D8E3218, &qword_22BDBE390) - 8);
  v5[465] = v42;
  v5[466] = *(v42 + 64);
  v5[467] = swift_task_alloc();
  v5[468] = swift_task_alloc();
  v5[469] = swift_task_alloc();
  v5[470] = swift_task_alloc();
  v5[471] = swift_task_alloc();
  v5[472] = swift_task_alloc();
  v5[473] = swift_task_alloc();
  v5[474] = swift_task_alloc();
  v5[475] = swift_task_alloc();
  v5[476] = swift_task_alloc();
  v5[477] = swift_task_alloc();
  v5[478] = swift_task_alloc();
  v43 = sub_22BDB77D4();
  v5[479] = v43;
  v5[480] = *(v43 - 8);
  v5[481] = swift_task_alloc();
  v5[482] = swift_task_alloc();
  v5[483] = swift_task_alloc();
  v5[484] = swift_task_alloc();
  v5[485] = swift_task_alloc();
  v5[486] = swift_task_alloc();
  v5[487] = swift_task_alloc();
  v5[488] = swift_task_alloc();
  v5[489] = swift_task_alloc();
  v5[490] = swift_task_alloc();
  v5[491] = swift_task_alloc();
  v5[492] = swift_task_alloc();
  v5[493] = swift_task_alloc();
  v5[494] = swift_task_alloc();
  v5[495] = swift_task_alloc();
  v5[496] = swift_task_alloc();
  v5[497] = swift_task_alloc();
  v5[498] = swift_task_alloc();
  v5[499] = swift_task_alloc();
  v5[500] = swift_task_alloc();
  v5[501] = swift_task_alloc();
  v5[502] = swift_task_alloc();
  v5[503] = swift_task_alloc();
  v5[504] = swift_task_alloc();
  v5[505] = swift_task_alloc();
  v5[506] = swift_task_alloc();
  v5[507] = swift_task_alloc();
  v5[508] = swift_task_alloc();
  v5[509] = swift_task_alloc();
  v5[510] = swift_task_alloc();
  v5[511] = swift_task_alloc();
  v5[512] = swift_task_alloc();
  v44 = type metadata accessor for SessionCoordinatorCommand.TransactionRequestPayload(0);
  v5[513] = v44;
  v45 = *(v44 - 8);
  v5[514] = v45;
  v5[515] = *(v45 + 64);
  v5[516] = swift_task_alloc();
  v5[517] = swift_task_alloc();
  v5[518] = swift_task_alloc();
  v46 = sub_22BDB7734();
  v5[519] = v46;
  v5[520] = *(v46 - 8);
  v5[521] = swift_task_alloc();
  v5[522] = swift_task_alloc();
  v5[523] = swift_task_alloc();
  v5[524] = swift_task_alloc();
  v5[525] = swift_task_alloc();
  v5[526] = swift_task_alloc();
  v5[527] = swift_task_alloc();
  v47 = sub_22BDB7754();
  v5[528] = v47;
  v5[529] = *(v47 - 8);
  v5[530] = swift_task_alloc();
  v5[531] = swift_task_alloc();
  v5[532] = swift_task_alloc();
  v5[533] = swift_task_alloc();
  v5[534] = swift_task_alloc();
  v5[535] = swift_task_alloc();
  sub_22BBE6DE0(&qword_27D8E6520, &qword_22BDCE430);
  v5[536] = swift_task_alloc();
  v5[537] = swift_task_alloc();
  v48 = type metadata accessor for SessionCoordinatorCommand(0);
  v5[538] = v48;
  v49 = *(v48 - 8);
  v5[539] = v49;
  v5[540] = *(v49 + 64);
  v5[541] = swift_task_alloc();
  v5[542] = swift_task_alloc();
  v5[543] = swift_task_alloc();
  v5[544] = swift_task_alloc();
  v50 = sub_22BBE6DE0(&qword_27D8E6528, &qword_22BDCE438);
  v5[545] = v50;
  v5[546] = *(v50 - 8);
  v5[547] = swift_task_alloc();
  v51 = sub_22BDB8774();
  v5[548] = v51;
  v5[549] = *(v51 - 8);
  v5[550] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BB79568, v4, 0);
}

void sub_22BB79568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22BB36BC0();
  sub_22BB35458();
  v14 = v12;
  sub_22BD631D0();
  v15 = v12[549];
  v16 = v12[547];
  v17 = v12[312];
  sub_22BD64C28();
  v19 = *(v18 + 192);
  v12[551] = sub_22BDB9C64();
  v21 = *(v15 + 104);
  v20 = v15 + 104;
  v12[552] = v21;
  v12[553] = v20 & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v22 = sub_22BB95BF8();
  v23(v22);
  v24 = sub_22BDB9C74();
  v12[554] = *(v17 + v19);
  sub_22BB72E80(v24);

  sub_22BD64C28();
  sub_22BBE6DE0(&qword_27D8E6530, &qword_22BDCE440);
  sub_22BDBAF64();
  v25 = sub_22BB89354(0);
  v12[197] = sub_22BB893E8(v25);
  sub_22BD62BCC();
  v12[555] = *(v26 + 152);
  sub_22BD62BCC();
  v12[556] = *(v27 + 128);
  sub_22BD62BCC();
  v12[557] = *(v28 + 120);
  sub_22BD62BCC();
  v12[558] = *(v29 + 136);
  sub_22BD62BCC();
  v12[559] = *(v30 + 176);
  v12[560] = qword_28142AC88;
  sub_22BD62BCC();
  v12[561] = *(v31 + 160);
  sub_22BD62BCC();
  v12[562] = *(v32 + 112);
  sub_22BD62BCC();
  v12[563] = *(v33 + 144);
  sub_22BD62BCC();
  v12[564] = *(v34 + 184);
  sub_22BB31B88();
  swift_beginAccess();
  sub_22BB31B88();
  swift_beginAccess();
  v35 = MEMORY[0x277D1D108];
  v36 = MEMORY[0x277D1D0E8];
  v37 = MEMORY[0x277D1D0F8];
  v38 = MEMORY[0x277D1D0F0];
  v39 = MEMORY[0x277D1D110];
  v40 = MEMORY[0x277D1D0C8];
  v41 = MEMORY[0x277D1D0D0];
  v42 = MEMORY[0x277D1D0D8];
  v43 = MEMORY[0x277D1D0E0];
  v44 = MEMORY[0x277D1D198];
  v45 = 0;
  v46 = MEMORY[0x277D1D178];
  *(v14 + 4796) = *MEMORY[0x277D1D100];
  *(v14 + 4800) = *v35;
  *(v14 + 4804) = *v36;
  *(v14 + 4808) = *v37;
  *(v14 + 4812) = *v38;
  *(v14 + 4816) = v39->isa;
  *(v14 + 4820) = *v40;
  *(v14 + 4824) = *v41;
  *(v14 + 4828) = *v42;
  *(v14 + 4832) = *v43;
  *(v14 + 4836) = *v44;
  *(v14 + 4840) = *v46;
  *(v14 + 4844) = *MEMORY[0x277D1D1B8];
  v47 = MEMORY[0x277D1D160];
  *(v14 + 4848) = *MEMORY[0x277D1D128];
  *(v14 + 4852) = *v47;
  *(v14 + 4856) = *MEMORY[0x277D1D138];
  v48 = MEMORY[0x277D1D120];
  *(v14 + 4860) = *MEMORY[0x277D1D1A0];
  *(v14 + 4864) = *v48;
  *(v14 + 4868) = *MEMORY[0x277D1D130];
  v49 = MEMORY[0x277D1D1A8];
  *(v14 + 4872) = *MEMORY[0x277D1D170];
  *(v14 + 4876) = *v49;
  *(v14 + 4880) = *MEMORY[0x277D1D1B0];
  v50 = MEMORY[0x277D1D168];
  *(v14 + 4884) = *MEMORY[0x277D1D188];
  *(v14 + 4888) = *v50;
  v51 = *MEMORY[0x277D1E868];
  *(v14 + 4792) = *MEMORY[0x277D1E868];
  *(v14 + 4892) = v51;
  *(v14 + 4896) = *MEMORY[0x277D1D158];
  *(v14 + 4900) = *MEMORY[0x277D1DE90];
  *(v14 + 4904) = *MEMORY[0x277D1D180];
  *(v14 + 4912) = *MEMORY[0x277D1D190];
  v6327 = *MEMORY[0x277D85B00];
  *(v14 + 4908) = *MEMORY[0x277D85B00];
  v6465 = v14;
  while (2)
  {
    *(v14 + 4924) = v6432;
    *(v14 + 4920) = v6435;
    *(v14 + 4916) = v6433;
    *(v14 + 4520) = v45;
    sub_22BD62D9C();
    sub_22BBBFF9C(v16);
    if (v165)
    {
      sub_22BB325EC(*(v14 + 4296), &qword_27D8E6520, &qword_22BDCE430);
      v2201 = swift_task_alloc();
      v2202 = sub_22BB980E8(v2201);
      *v2202 = v2203;
      sub_22BB6BE8C(v2202);
      sub_22BD63350();
      sub_22BB33430();

      MEMORY[0x2822003F0](v2204, v2205, v2206, v2207, v2208, v2209, v2210, v2211, a9, a10, a11, a12);
      return;
    }

    v52 = sub_22BD61F60();
    sub_22BB3A518(v52, v37);
    sub_22BDB6124();
    sub_22BB322B0();
    swift_allocObject();
    sub_22BB758D8();
    *(v53 + 16) = v54;
    *(v53 + 24) = v20;
    v55 = sub_22BB3B69C();
    sub_22BB335C0(v55, v56);
    sub_22BD62438();
    swift_allocObject();
    sub_22BD64D5C();
    v57 = sub_22BD64D74();
    sub_22BB3A518(v57, v58);

    sub_22BDB7724();
    v6456 = sub_22BDB7744();
    LODWORD(v6454) = sub_22BDBB1D4();
    sub_22BD616A8();
    v20 = swift_allocObject();
    sub_22BD6250C(v20);
    sub_22BD616A8();
    v59 = swift_allocObject();
    sub_22BBC0370(v59);
    sub_22BB322B0();
    swift_allocObject();
    sub_22BD5F7DC();
    *(v60 + 16) = v61;
    *(v60 + 24) = v16;
    sub_22BB322B0();
    v62 = swift_allocObject();
    sub_22BB3CEDC(v62);
    sub_22BD616A8();
    v63 = swift_allocObject();
    sub_22BD62B48(v63);
    sub_22BD616A8();
    v64 = swift_allocObject();
    sub_22BD64CFC(v64);
    sub_22BB322B0();
    v65 = swift_allocObject();
    sub_22BD601AC(v65);
    sub_22BB322B0();
    v45 = swift_allocObject();
    sub_22BB69C9C(v45);
    v66 = sub_22BBE6DE0(&qword_27D8E6548, &qword_22BDCE458);
    *(v14 + 4528) = v66;
    v6436 = v66;
    v37 = sub_22BB970B4(v66);
    sub_22BB3B5F8(v37);
    v67[4] = v68;
    v67[5] = v20;
    v67[6] = sub_22BB89C08;
    v67[7] = v13;
    v67[8] = sub_22BB89C68;
    v67[9] = v62;
    v67[10] = sub_22BB89C08;
    v67[11] = v17;
    v67[12] = sub_22BB89C08;
    v67[13] = v16;
    v67[14] = sub_22BB89C7C;
    v67[15] = v45;

    if (sub_22BDBB244())
    {
      sub_22BB73F58("CommandProcess", &v6473);
      sub_22BD62384();
      v69 = sub_22BD619F0();
      sub_22BD5F9D4(v69);
      *(v14 + 1440) = v20;
      v70 = sub_22BB39404();
      sub_22BB67984(v70, v71, v72, v73);
      if (!v6466)
      {
        *(v14 + 1432) = sub_22BB89C08;
        *(v14 + 1440) = v13;
        v74 = sub_22BB39404();
        sub_22BB67984(v74, v75, v76, v77);
        *(v14 + 1432) = sub_22BB89C68;
        *(v14 + 1440) = v62;
        v78 = sub_22BB39404();
        sub_22BB67984(v78, v79, v80, v81);
        *(v14 + 1432) = sub_22BB89C08;
        *(v14 + 1440) = v17;
        v82 = sub_22BB39404();
        sub_22BB67984(v82, v83, v84, v85);
        *(v14 + 1432) = sub_22BB89C08;
        *(v14 + 1440) = v16;
        v86 = sub_22BB39404();
        sub_22BB67984(v86, v87, v88, v89);
        *(v14 + 1432) = sub_22BB89C7C;
        *(v14 + 1440) = v45;
        v90 = sub_22BB39404();
        sub_22BB67984(v90, v91, v92, v93);
        sub_22BD63C54();

        sub_22BDB7714();
        sub_22BD61E34();
        sub_22BD62418();
        sub_22BD65380(v94, v95, v96, v97, v98, "[SessionCoordinator %{public}s] | Begin processing command %{public}s.");
        sub_22BD619D4();
        sub_22BD6193C();
        sub_22BB679C0();
      }

      goto LABEL_399;
    }

    sub_22BD61C8C();
    v99 = sub_22BBC49A8();
    sub_22BB92AA4();
    sub_22BD62218();
    v6404 = v100;
    v6398 = v101;
    v101();
    sub_22BB2F3FC();
    v6409 = v99;
    v102 = sub_22BDB7784();
    *(v14 + 4544) = v102;
    v103 = sub_22BD61AB0();
    v6415 = v104;
    v6423 = v16;
    (v104)(v103);
    v105 = *(v17 + 8);
    v17 += 8;
    v39 = v105;
    v106 = sub_22BB32E04();
    (v105)(v106);
    v107 = sub_22BB39368();
    sub_22BB335C0(v107, v37);
    sub_22BD63410();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        sub_22BD63900();
        v249 = sub_22BBE6DE0(&qword_27D8E6538, &qword_22BDCE448);
        sub_22BD60B44(v249);
        v6320 = v250;
        sub_22BB6BEE0(v102 + v251, v37, &qword_27D8E3218, &qword_22BDBE390);
        sub_22BDB63E4();
        sub_22BB322B0();
        v252 = swift_allocObject();
        sub_22BD5F704(v252);
        sub_22BB366B8();
        v253 = swift_allocObject();
        v6322 = v20;
        *(v253 + 16) = v20;
        sub_22BB322B0();
        swift_allocObject();
        sub_22BBC0500();
        *(v254 + 16) = v255;
        *(v254 + 24) = v253;

        v6458 = sub_22BDB77C4();
        LODWORD(v6454) = sub_22BDBB134();
        sub_22BD616A8();
        v256 = swift_allocObject();
        sub_22BD623EC(v256);
        sub_22BD616A8();
        v257 = swift_allocObject();
        sub_22BB97EE0(v257);
        sub_22BB322B0();
        swift_allocObject();
        sub_22BB3E0C4();
        *(v258 + 16) = v259;
        *(v258 + 24) = v252;
        sub_22BB322B0();
        swift_allocObject();
        sub_22BD648D8();
        sub_22BB3DEE8(v260);
        sub_22BD616A8();
        v261 = swift_allocObject();
        sub_22BD64C7C(v261);
        sub_22BD616A8();
        v262 = swift_allocObject();
        *(v262 + 16) = v13;
        sub_22BB322B0();
        swift_allocObject();
        sub_22BD5F77C();
        *(v263 + 16) = v264;
        *(v263 + 24) = v37;
        sub_22BB322B0();
        v265 = swift_allocObject();
        sub_22BB3DEE8(v265);
        v266 = sub_22BB97DF8();
        sub_22BB31444(v266);
        v267[4] = v268;
        v267[5] = v253;
        v267[6] = sub_22BB89C08;
        v267[7] = v257;
        v267[8] = sub_22BB89C7C;
        v267[9] = v14;
        v267[10] = sub_22BB89C08;
        v267[11] = v45;
        v267[12] = sub_22BB89C08;
        v267[13] = v262;
        v267[14] = sub_22BB89C7C;
        v267[15] = v265;
        sub_22BD640D8();

        v269 = sub_22BD612E8();
        if (os_log_type_enabled(v269, v270))
        {
          sub_22BB67968(22);
          v271 = sub_22BD62BD8();
          sub_22BD63440(v271);
          sub_22BD5FC78(v269);
          *(v20 + 1472) = v37;
          v272 = sub_22BD5F8D0();
          v273 = v6466;
          sub_22BB67984(v272, v274, v275, v276);
          if (!v6466)
          {

            sub_22BB6F924();
            *(v20 + 1472) = v257;
            v277 = sub_22BD5F8D0();
            sub_22BB67984(v277, v278, v279, v280);

            sub_22BB6FCD0();
            *(v20 + 1472) = v14;
            v281 = sub_22BD5F8D0();
            sub_22BB67984(v281, v282, v283, v284);

            sub_22BB6F924();
            *(v20 + 1472) = v45;
            v285 = sub_22BD5F8D0();
            sub_22BB67984(v285, v286, v287, v288);

            sub_22BB6F924();
            *(v20 + 1472) = v262;
            v289 = sub_22BD5F8D0();
            sub_22BB67984(v289, v290, v291, v292);

            sub_22BD60848();
            sub_22BD62094();

            sub_22BD61E34();
            sub_22BD62CB8();
            sub_22BD636C8(v293, v294, v295, "[SessionCoordinator %{public}s] | [TX %{public}s] Begin commit of transaction.");
            sub_22BD61EC8();
            sub_22BB77E48();
            sub_22BB679C0();
          }

          goto LABEL_319;
        }

        sub_22BB75884();

        v405 = sub_22BD633D4();
        v6324 = v406;
        v406(v405);
        v14 = v20;
        sub_22BD609DC();
        v6386 = v407;
        v408 = sub_22BD60CF4();
        v257(v408);
        sub_22BDB96A4();
        v411 = *(v262 + 8);
        v410 = (v262 + 8);
        v409 = v411;
        v412 = sub_22BB393C4();
        (v411)(v412);
        v413 = v253;
        sub_22BDB9744();
        v414 = sub_22BB89BAC();
        v273 = v6386;
        (v269)(v414, v6386);
        v6360 = sub_22BB954F8(v413);

        v415 = sub_22BD613BC();
        v6352 = v257;
        v257(v415);
        sub_22BBBE690();
        sub_22BDB96A4();
        v416 = sub_22BB393C4();
        v6337 = v411;
        (v411)(v416);
        v417 = sub_22BDB9744();
        v418 = sub_22BB30AE4();
        v6339 = v45;
        v6334 = v269;
        (v269)(v418);
        sub_22BB954F8(v417);
        sub_22BD63F10();
        v6378 = v411;
        if (v411 < v6360)
        {
          __break(1u);
          goto LABEL_387;
        }

        v420 = sub_22BB721E4();
        v6350 = v419;
        do
        {
          v6391 = v420;
          if (v419 == v420)
          {
            goto LABEL_66;
          }

          if (v419 < v420)
          {
            __break(1u);
LABEL_341:
            __break(1u);
LABEL_342:
            __break(1u);
LABEL_343:

            goto LABEL_349;
          }

          if (v420 >= v419)
          {
            goto LABEL_341;
          }

          sub_22BD62F70();
          v6387 = v421;
          sub_22BB500E4();
          sub_22BB971BC(v422);
          sub_22BD62C40();
          sub_22BDB9694();
          sub_22BD63698();
          sub_22BDB9734();
          v423 = sub_22BB70784();
          v424 = v6364;
          v6364 = v425;
          (v425)(v423, v424);
          v426 = sub_22BB97E58();
          v257(v426);
          swift_endAccess();
          v427 = sub_22BB97B0C();
          sub_22BB929E0(v427, v428, v429);
          sub_22BBE6DE0(&qword_27D8E6488, &qword_22BDCE338);
          v257 = v6378;
          sub_22BBB797C();
          sub_22BDBAF34();
          v430 = sub_22BB970E8();
          v431(v430, name);
          sub_22BD62F60();
          v273 = v6387;
          sub_22BD63B88();
          v432();
          sub_22BD63388();
          sub_22BDB96A4();
          v433 = sub_22BB30AE4();
          (v6337)(v433);
          v417 = v409;
          sub_22BDB9744();
          v434 = sub_22BD619C8();
          (v6334)(v434, v6458);
          sub_22BB954F8(v409);
          sub_22BD63F10();
          v6378 = v409;
          if (v409 < v6360)
          {
            goto LABEL_342;
          }

          sub_22BD60F34(v420);
          sub_22BDB9B24();
          v435 = sub_22BB53C48();
          v6364(v435);
          v410 += 11;
          v436 = sub_22BB30AE4();
          v437(v436);
          v438 = sub_22BD615B8();
          v439(v438);
          v419 = v6350;
        }

        while (v409 != v20);
        sub_22BD636E0();
        sub_22BD61894();
        sub_22BB53C48();
        sub_22BB9741C();
        sub_22BB71DA0();
        v6452 = v440;
LABEL_66:
        v441 = sub_22BD62F50() + 64;
        sub_22BB8EA20();
        v444 = v443 & v442;
        sub_22BD63CF8();
        v446 = (v445 >> 6);
        v6345 = v447;

        v448 = 0;
        v6367 = v441;
        v6364 = v446;
LABEL_67:
        v449 = &qword_27D8E6568;
        if (v444)
        {
LABEL_72:
          sub_22BD62F40();
          sub_22BD62F2C();
          v6385 = v444;
          v273 = *(*(v6345 + 48) + 8 * (v452 | (v451 << 6)));
          sub_22BB366A0();
          sub_22BB335C0(v453, v417);
          v449 = &qword_27D8E6568;
          v444 = sub_22BBE6DE0(&qword_27D8E6568, &unk_22BDCE460);
          *v409 = v273;
          sub_22BB31DC8();
          sub_22BD64614(v454);
          v455 = sub_22BD6108C();
          sub_22BB336D0(v455, v456, v457, v444);
        }

        else
        {
          while (1)
          {
            v450 = v448 + 1;
            if (__OFADD__(v448, 1))
            {
              __break(1u);

              goto LABEL_410;
            }

            if (v450 >= v446)
            {
              break;
            }

            v444 = *(v441 + 8 * v450);
            ++v448;
            if (v444)
            {
              v448 = v450;
              goto LABEL_72;
            }
          }

          v531 = sub_22BB331D4();
          sub_22BBE6DE0(v531, v532);
          v533 = sub_22BB3A190();
          sub_22BB336D0(v533, v534, 1, v535);
          v6385 = 0;
        }

        v458 = sub_22BB8EA40();
        sub_22BB6BEE0(v458, v459, &qword_27D8E64F8, &qword_22BDCE400);
        v460 = sub_22BB331D4();
        v417 = sub_22BBE6DE0(v460, v461);
        sub_22BB3329C();
        if (v165)
        {

          v6461 = sub_22BB954F8(v6452);
          if (v6461)
          {
            v441 = 0;
            while (1)
            {
              sub_22BD63A1C();
              isa = v273[2].isa;
              v763 = &v273[2];
              v444 = isa;
              v765 = v763[64];
              v766 = sub_22BB95BF8();
              isa(v766);
              v6385 = (v441 + 1);
              if (__OFADD__(v441, 1))
              {
                break;
              }

              v767 = sub_22BB707CC();
              v768(v767);
              sub_22BD636FC();
              sub_22BD63990();
              if (v769)
              {
                oslog = *(v448 + 3936);
                v770 = sub_22BB3AAD8();
                (v444)(v770);
                sub_22BB702C8();
                v771 = swift_allocObject();
                v772 = sub_22BB89B94(v771);
                v773(v772);
                sub_22BD63888();
                sub_22BDB63E4();
                sub_22BB322B0();
                swift_allocObject();
                sub_22BB758D8();
                *(v774 + 16) = v775;
                *(v774 + 24) = v441;
                sub_22BB322B0();
                swift_allocObject();
                sub_22BD60784();
                *(v776 + 16) = v777;
                *(v776 + 24) = v763;

                v6367 = v763;

                v6454 = sub_22BDB77C4();
                LODWORD(v6448) = sub_22BDBB134();
                sub_22BD616A8();
                v778 = swift_allocObject();
                sub_22BD61784(v778);
                sub_22BD616A8();
                v441 = swift_allocObject();
                sub_22BD62E20(v441);
                sub_22BB322B0();
                v779 = swift_allocObject();
                sub_22BBBE7C0(v779);
                sub_22BB322B0();
                v449 = swift_allocObject();
                sub_22BB69C9C(v449);
                sub_22BD616A8();
                v417 = swift_allocObject();
                sub_22BB6C06C(v417);
                sub_22BD616A8();
                v444 = swift_allocObject();
                *(v444 + 16) = v765;
                sub_22BB322B0();
                v780 = swift_allocObject();
                sub_22BBBEB28(v780);
                sub_22BB322B0();
                v781 = swift_allocObject();
                sub_22BB69C9C(v781);
                v782 = sub_22BB97DF8();
                sub_22BB348E0(v782);
                v783[4] = v784;
                v783[5] = v446;
                v783[6] = sub_22BB89C08;
                v783[7] = v441;
                v783[8] = sub_22BB89C7C;
                v783[9] = v449;
                v783[10] = sub_22BB89C08;
                v783[11] = v417;
                v783[12] = sub_22BB89C08;
                v783[13] = v444;
                v783[14] = sub_22BB89C7C;
                v783[15] = v781;

                v273 = sub_22BD620A0();
                if (os_log_type_enabled(v273, v785))
                {
                  sub_22BB67968(22);
                  v786 = sub_22BBBFF34();
                  *(v448 + 1608) = 0;
                  *(v448 + 1616) = v786;
                  sub_22BBBEB6C();
                  *(v448 + 1600) = v787;
                  *(v448 + 968) = sub_22BB89C08;
                  *(v448 + 976) = v446;
                  v788 = sub_22BD602FC();
                  sub_22BB67984(v788, v789, v790, v791);
                  if (!v6466)
                  {

                    *(v448 + 968) = sub_22BB89C08;
                    *(v448 + 976) = v441;
                    v792 = sub_22BD602FC();
                    sub_22BB67984(v792, v793, v794, v795);

                    *(v448 + 968) = sub_22BB89C7C;
                    *(v448 + 976) = v449;
                    v796 = sub_22BD602FC();
                    sub_22BB67984(v796, v797, v798, v799);

                    *(v448 + 968) = sub_22BB89C08;
                    *(v448 + 976) = v417;
                    v800 = sub_22BD602FC();
                    sub_22BB67984(v800, v801, v802, v803);

                    *(v448 + 968) = sub_22BB89C08;
                    *(v448 + 976) = v444;
                    v804 = sub_22BD602FC();
                    sub_22BB67984(v804, v805, v806, v807);

                    *(v448 + 968) = sub_22BB89C7C;
                    *(v448 + 976) = v781;
                    v808 = sub_22BD602FC();
                    sub_22BB67984(v808, v809, v810, v811);
                    sub_22BD63A4C();
                    sub_22BBBE830();
                    sub_22BD636C8(&dword_22BB2C000, v6454, v812, "[SessionCoordinator %{public}s] Event: %s");
                    sub_22BD62500();
                    swift_arrayDestroy();
                    sub_22BB30458();
                    sub_22BB679C0();
                  }

                  goto LABEL_356;
                }

                sub_22BD63594();

                (v6324)(v6364, v6345);
                (*(v765 + 8))(v6448, oslog);
              }

              else
              {
                sub_22BDB63E4();
                sub_22BB322B0();
                v813 = swift_allocObject();
                v814 = sub_22BD62AA0(v813);
                *(v814 + 16) = v815;
                *(v814 + 24) = v441;
                v816 = sub_22BB3AAD8();
                (v444)(v816);
                sub_22BD63970();
                v273 = swift_allocObject();
                sub_22BD63324(v273);
                sub_22BD64B28();
                (v409)();
                sub_22BB322B0();
                v817 = swift_allocObject();
                v818 = sub_22BD62A88(v817);
                *(v818 + 16) = v819;
                *(v818 + 24) = v273;
                v820 = sub_22BBBEC20();
                (v444)(v820);
                v6341 = swift_allocObject();
                v821 = sub_22BD63324(v6341);
                (v409)(v821);

                oslog = sub_22BDB77C4();
                LODWORD(v6367) = sub_22BDBB134();
                sub_22BD616A8();
                v822 = swift_allocObject();
                sub_22BB973E4(v822);
                sub_22BD616A8();
                v6448 = swift_allocObject();
                sub_22BD62CE4(v6448);
                sub_22BB322B0();
                swift_allocObject();
                sub_22BB9710C();
                *(v823 + 16) = v824;
                *(v823 + 24) = v6345;
                sub_22BB322B0();
                v825 = swift_allocObject();
                sub_22BB69C9C(v825);
                sub_22BD616A8();
                v826 = swift_allocObject();
                sub_22BD64AAC(v826);
                sub_22BD616A8();
                v417 = swift_allocObject();
                *(v417 + 16) = v449;
                sub_22BB322B0();
                swift_allocObject();
                sub_22BD6067C();
                *(v827 + 16) = v828;
                *(v827 + 24) = v6364;
                sub_22BB322B0();
                v446 = swift_allocObject();
                sub_22BB69C9C(v446);
                sub_22BD616A8();
                v829 = swift_allocObject();
                sub_22BD63D38(v829);
                sub_22BD616A8();
                v830 = swift_allocObject();
                *(v830 + 16) = v449;
                sub_22BB322B0();
                swift_allocObject();
                sub_22BD6073C();
                *(v831 + 16) = v832;
                *(v831 + 24) = v6341;
                sub_22BB322B0();
                v449 = swift_allocObject();
                sub_22BB960B8(v449);
                v833 = sub_22BD630D4();
                sub_22BB2F294(v833, xmmword_22BDCE140);
                v833[4].n128_u64[1] = v825;
                v833[5].n128_u64[0] = sub_22BB89C08;
                v833[5].n128_u64[1] = v14;
                v833[6].n128_u64[0] = sub_22BB89C08;
                v833[6].n128_u64[1] = v417;
                v833[7].n128_u64[0] = sub_22BB89C7C;
                v833[7].n128_u64[1] = v446;
                v833[8].n128_u64[0] = sub_22BB89C08;
                v833[8].n128_u64[1] = v273;
                v833[9].n128_u64[0] = sub_22BB89C08;
                v833[9].n128_u64[1] = v830;
                v833[10].n128_u64[0] = sub_22BB89C7C;
                v833[10].n128_u64[1] = v449;

                v6364 = v825;

                LODWORD(v444) = v14;

                sub_22BD64B08();
                if (os_log_type_enabled(oslog, v834))
                {
                  sub_22BB73FA4();
                  v835 = sub_22BB70090();
                  *(v448 + 1592) = 0;
                  *(v448 + 2456) = v835;
                  sub_22BB75908();
                  *(v448 + 1624) = v417;
                  *(v448 + 952) = sub_22BB89C08;
                  *(v448 + 960) = v6454;
                  v836 = sub_22BB971A8();
                  sub_22BB67984(v836, v837, v838, v839);
                  if (!v6466)
                  {

                    *(v448 + 952) = sub_22BB89C08;
                    *(v448 + 960) = v825;
                    v840 = sub_22BB971A8();
                    sub_22BB67984(v840, v841, v842, v843);

                    *(v448 + 952) = sub_22BB89C7C;
                    *(v448 + 960) = v833;
                    sub_22BD6122C();

                    *(v448 + 952) = sub_22BB89C08;
                    *(v448 + 960) = v14;
                    sub_22BD6122C();

                    *(v448 + 952) = sub_22BB89C08;
                    *(v448 + 960) = v6341;
                    sub_22BD6122C();

                    *(v448 + 952) = sub_22BB89C7C;
                    *(v448 + 960) = v446;
                    sub_22BD6122C();

                    *(v448 + 952) = sub_22BB89C08;
                    *(v448 + 960) = v6395;
                    sub_22BD6122C();

                    *(v448 + 952) = sub_22BB89C08;
                    *(v448 + 960) = v6345;
                    sub_22BD6122C();

                    *(v448 + 952) = sub_22BB89C7C;
                    *(v448 + 960) = v6339;
                    sub_22BD6122C();
                    sub_22BD63768();
                    sub_22BD6427C();
                    sub_22BD63B3C(&dword_22BB2C000, 0, v844, "[SessionCoordinator %{public}s] Event ID: %{public}s is %{public}s");
                    sub_22BD62500();
                    swift_arrayDestroy();
                    sub_22BB30458();
                    sub_22BB679C0();
                  }

LABEL_330:

                  goto LABEL_410;
                }

                sub_22BD6355C();

                v845 = v833->n128_u64[1];
                v409 = &v833->n128_i64[1];
                v6324 = v845;
                (v845)(v6341, v417);
                v846 = *(v825 + 8);
                v441 = v825 + 8;
                v846(v6367, v6345);
              }

              v14 = v448;
              v847 = v6466;
              sub_22BBC04D0();
              if (v165)
              {
                goto LABEL_147;
              }
            }

            __break(1u);

LABEL_368:

            goto LABEL_410;
          }

          v847 = v6466;
LABEL_147:
          v6277 = sub_22BB954F8(*(v14 + 2464));
          if (v6277)
          {
            sub_22BD64B90();
            v6287 = v953;
            v273 = &qword_27D8E6038;
            v6275 = v448;
            while (1)
            {
              sub_22BD632A8();
              sub_22BD618B8();
              sub_22BB954F0(v954);
              sub_22BB75920();
              sub_22BB3CD70(v955, v956, v957, &qword_22BDD0300);
              v6295 = v441 + 1;
              if (__OFADD__(v441, 1))
              {
                goto LABEL_394;
              }

              v958 = sub_22BB6FFCC();
              v960 = v417 + v959;
              sub_22BB970CC(v958);
              v961(v960, v448 + v6287, v409);
              v962 = sub_22BD60A8C();
              v964 = v963(v962);
              v409 = v965;
              if (*(v6320 + 16))
              {
                v966 = v6320;
                sub_22BB72B1C(v964, v965);
                sub_22BD63E60();
                if (v6320)
                {
                  v6285 = v441;
                  v6468 = v847;
                  v6280 = 0;
                  goto LABEL_156;
                }
              }

              else
              {
              }

              v967 = sub_22BD60CC4(*(v14 + 3024));
              v968(v967);
              sub_22BB366B8();
              v409 = swift_allocObject();
              *(v409 + 16) = v6320;
              v969 = sub_22BBC05B4();
              sub_22BD63CDC(v969);

              v417 = v14 + 80;
              v6337 = sub_22BBBFFC8();
              v448 = v970;
              v972 = v971;
              sub_22BD620D0();

              if (v444)
              {
                break;
              }

              v448 = v6275;
LABEL_171:
              v273 = &qword_27D8E6038;
              v449 = &qword_22BDD0300;
              sub_22BB325EC(*(v14 + 3024), &qword_27D8E6038, &qword_22BDD0300);
              ++v441;
              if (v6295 == v6277)
              {
                goto LABEL_172;
              }
            }

            v6285 = v441;
            v6468 = v847;
            v966 = v6337;
            v973 = sub_22BB3CB04();
            sub_22BD5EC9C(v973, v974, v975);
            v6280 = v972;
            sub_22BD6201C();
LABEL_156:
            v976 = sub_22BD61FCC();
            v6337 = v978;
            v6283 = v979;
            sub_22BB97FF0(v976, v978, v979, v977 & 1, v6320);
            sub_22BD62B9C();
            v980 = v847[175].isa;
            sub_22BDB63E4();
            sub_22BB322B0();
            v981 = swift_allocObject();
            v982 = sub_22BD62A04(v981);
            *(v982 + 16) = v983;
            *(v982 + 24) = v448;
            sub_22BB366B8();
            v984 = swift_allocObject();
            sub_22BB973F4(v984);
            sub_22BB322B0();
            v985 = swift_allocObject();
            v986 = sub_22BD629EC(v985);
            *(v986 + 16) = v987;
            *(v986 + 24) = v847;
            v988 = sub_22BD00E3C();
            sub_22BB3CD70(v988, v989, &qword_27D8E6038, &qword_22BDD0300);
            sub_22BD63CB4();
            swift_allocObject();
            sub_22BD64AFC();
            sub_22BD63CD0();
            sub_22BB6BEE0(v990, v991, v992, v993);
            sub_22BB322B0();
            v994 = swift_allocObject();
            sub_22BB976A8(v994);
            sub_22BB322B0();
            v995 = swift_allocObject();
            v6364 = v966;
            *(v995 + 16) = v966;
            *(v995 + 24) = v409;
            sub_22BB322B0();
            v996 = swift_allocObject();
            sub_22BB97D80(v996);
            sub_22BB366B8();
            v6325 = v980;
            *(swift_allocObject() + 16) = v980;
            sub_22BB322B0();
            v997 = swift_allocObject();
            sub_22BD60634(v997);
            sub_22BB3CD70(oslog, v6367, &qword_27D8E3218, &qword_22BDBE390);
            sub_22BD62264();
            sub_22BB92A98();
            v998 = swift_allocObject();
            sub_22BB9741C();
            sub_22BB6BEE0(v999, v1000, v1001, v1002);

            v6299 = sub_22BDB77C4();
            v6293 = sub_22BDBB134();
            sub_22BD616A8();
            v6372 = swift_allocObject();
            *(v6372 + 16) = 34;
            sub_22BD616A8();
            osloga = swift_allocObject();
            sub_22BB6FB2C(osloga);
            sub_22BB322B0();
            swift_allocObject();
            sub_22BB96B64();
            *(v1003 + 16) = v1004;
            *(v1003 + 24) = v6448;
            sub_22BB322B0();
            v1005 = swift_allocObject();
            v1006 = sub_22BD629BC(v1005);
            *(v1006 + 16) = v1007;
            *(v1006 + 24) = &qword_27D8E3218;
            sub_22BD616A8();
            v6449 = swift_allocObject();
            *(v6449 + 16) = 34;
            sub_22BD616A8();
            v6389 = swift_allocObject();
            *(v6389 + 16) = 8;
            sub_22BB322B0();
            swift_allocObject();
            sub_22BB97D10();
            *(v1008 + 16) = v1009;
            *(v1008 + 24) = v6454;
            sub_22BB322B0();
            v1010 = swift_allocObject();
            v1011 = sub_22BD629A4(v1010);
            *(v1011 + 16) = v1012;
            *(v1011 + 24) = v409;
            sub_22BD616A8();
            v6310 = swift_allocObject();
            *(v6310 + 16) = 34;
            sub_22BD616A8();
            v6307 = swift_allocObject();
            *(v6307 + 16) = 8;
            sub_22BB322B0();
            swift_allocObject();
            sub_22BB3AC60();
            *(v1013 + 16) = v1014;
            *(v1013 + 24) = v994;
            sub_22BB322B0();
            v1015 = swift_allocObject();
            sub_22BBC45B4(v1015);
            sub_22BD616A8();
            v1016 = swift_allocObject();
            *(v1016 + 16) = 34;
            sub_22BD616A8();
            v1017 = swift_allocObject();
            *(v1017 + 16) = 8;
            sub_22BB322B0();
            swift_allocObject();
            sub_22BD5F86C();
            *(v1018 + 16) = v1019;
            *(v1018 + 24) = v996;
            sub_22BB322B0();
            v1020 = swift_allocObject();
            v6289 = sub_22BB8AEF8(v1020);
            sub_22BD616A8();
            v6304 = swift_allocObject();
            *(v6304 + 16) = 34;
            sub_22BD616A8();
            v6347 = swift_allocObject();
            *(v6347 + 16) = 8;
            sub_22BB322B0();
            swift_allocObject();
            sub_22BB97D10();
            *(v1021 + 16) = v1022;
            *(v1021 + 24) = v997;
            sub_22BB322B0();
            v1023 = swift_allocObject();
            sub_22BB97474(v1023);
            sub_22BD616A8();
            v6297 = swift_allocObject();
            *(v6297 + 16) = 34;
            sub_22BD616A8();
            v6301 = swift_allocObject();
            *(v6301 + 16) = 8;
            v1024 = v1016;
            v6342 = v1016;
            sub_22BB322B0();
            swift_allocObject();
            sub_22BB97EBC();
            *(v1025 + 16) = v1026;
            *(v1025 + 24) = v998;
            sub_22BB322B0();
            v1027 = swift_allocObject();
            sub_22BB97474(v1027);
            v1028 = swift_allocObject();
            sub_22BB73BD0(v1028);
            sub_22BD60544(v6372);
            sub_22BB3FE84(osloga);
            v1028[9] = name;
            v1028[10] = sub_22BB89C08;
            v1028[11] = v6449;
            v1028[12] = sub_22BB89C08;
            sub_22BD6061C(v6389);
            sub_22BD625EC();
            sub_22BD62974();
            sub_22BBC052C();
            v1028[23] = v1016;
            v1028[24] = sub_22BB89C08;
            v1028[25] = v1017;
            v1028[26] = sub_22BB89C7C;
            v1028[27] = v996;
            v1028[28] = sub_22BB89C08;
            sub_22BD61974();
            sub_22BD62914();
            sub_22BD62EF4(v1029);

            sub_22BD65338();

            v1030 = v1027;

            if (os_log_type_enabled(v6299, v6293))
            {
              sub_22BB67968(62);
              v1031 = sub_22BD6449C();
              sub_22BB8A61C(v1031);
              *v6297 = 1538;
              MEMORY[0x6AA] = v6297 + 2;
              sub_22BB6B724();
              MEMORY[0x632] = v6372;
              v1032 = sub_22BB39218();
              sub_22BB67984(v1032, v1033, v1034, v1035);
              if (!v6468)
              {

                sub_22BB6B724();
                MEMORY[0x632] = osloga;
                v1036 = sub_22BB39218();
                sub_22BB67984(v1036, v1037, v1038, v1039);

                sub_22BB37EF8();
                MEMORY[0x632] = name;
                v1040 = sub_22BB39218();
                sub_22BB67984(v1040, v1041, v1042, v1043);

                sub_22BB6B724();
                MEMORY[0x632] = v6449;
                v1044 = sub_22BB39218();
                sub_22BB67984(v1044, v1045, v1046, v1047);

                sub_22BB6B724();
                MEMORY[0x632] = v6389;
                v1048 = sub_22BB39218();
                sub_22BB67984(v1048, v1049, v1050, v1051);

                sub_22BB37EF8();
                MEMORY[0x632] = v6454;
                v1052 = sub_22BB39218();
                sub_22BB67984(v1052, v1053, v1054, v1055);

                sub_22BB6B724();
                MEMORY[0x632] = v6310;
                v1056 = sub_22BB39218();
                sub_22BB67984(v1056, v1057, v1058, v1059);

                sub_22BB6B724();
                MEMORY[0x632] = v6307;
                v1060 = sub_22BB39218();
                sub_22BB67984(v1060, v1061, v1062, v1063);

                sub_22BB37EF8();
                MEMORY[0x632] = 34;
                v1064 = sub_22BB39218();
                sub_22BB67984(v1064, v1065, v1066, v1067);

                sub_22BB6B724();
                MEMORY[0x632] = v6342;
                v1068 = sub_22BB39218();
                sub_22BB67984(v1068, v1069, v1070, v1071);

                sub_22BB6B724();
                MEMORY[0x632] = v1017;
                v1072 = sub_22BB39218();
                sub_22BB67984(v1072, v1073, v1074, v1075);

                sub_22BB37EF8();
                MEMORY[0x632] = v6289;
                v1076 = sub_22BB39218();
                sub_22BB67984(v1076, v1077, v1078, v1079);

                sub_22BB6B724();
                MEMORY[0x632] = v6304;
                v1080 = sub_22BB39218();
                sub_22BB67984(v1080, v1081, v1082, v1083);

                sub_22BB6B724();
                MEMORY[0x632] = v6347;
                v1084 = sub_22BB39218();
                sub_22BB67984(v1084, v1085, v1086, v1087);

                sub_22BB37EF8();
                MEMORY[0x632] = v1024;
                v1088 = sub_22BB39218();
                sub_22BB67984(v1088, v1089, v1090, v1091);

                MEMORY[0x62A] = sub_22BB89C08;
                MEMORY[0x632] = v6297;
                v1092 = sub_22BB39218();
                sub_22BB67984(v1092, v1093, v1094, v1095);

                MEMORY[0x62A] = sub_22BB89C08;
                MEMORY[0x632] = v6301;
                v1096 = sub_22BB39218();
                sub_22BB67984(v1096, v1097, v1098, v1099);

                sub_22BB37EF8();
                MEMORY[0x632] = v1027;
                v1100 = sub_22BB39218();
                sub_22BB67984(v1100, v1101, v1102, v1103);
                sub_22BD62624();

                sub_22BD63EC8(&dword_22BB2C000, v6299, v6293, "[SessionCoordinator %{public}s] | [TX %{public}s] %{public}s (as %{public}s) notified. Span %{public}s spawned with request ID %{public}s.");
                sub_22BD62D5C();
                sub_22BB30458();
                sub_22BB679C0();
              }

              goto LABEL_349;
            }

            sub_22BB70000();

            v1104 = sub_22BD00AA4();
            v1105(v1104);
            v1106 = sub_22BD5FC9C();
            v6343 = v1107;
            v1107(v1106);
            sub_22BD60604();
            sub_22BB335C0(v6301 + v1027, v1028);
            sub_22BDB6104();
            v1108 = sub_22BB3AC54();
            sub_22BB335C0(v1108, v1109);
            sub_22BB58DFC();
            swift_allocObject();
            sub_22BB2F5B0();
            sub_22BD652D8(v1110);
            sub_22BB322B0();
            v1111 = swift_allocObject();
            sub_22BB3E2EC(v1111);
            sub_22BB366B8();
            v1112 = swift_allocObject();
            sub_22BD61A0C(v1112);
            sub_22BB322B0();
            v1113 = swift_allocObject();
            sub_22BD5F71C(v1113);
            sub_22BB322B0();
            v1114 = swift_allocObject();
            sub_22BD64ADC(v1114);
            sub_22BB322B0();
            v1115 = swift_allocObject();
            sub_22BB8ADD4(v1115);
            sub_22BDB7724();
            v6450 = sub_22BDB7744();
            sub_22BDBB1D4();
            sub_22BD616A8();
            v1116 = swift_allocObject();
            sub_22BD63318(v1116);
            sub_22BD616A8();
            v1117 = swift_allocObject();
            sub_22BB97EE0(v1117);
            sub_22BB322B0();
            v1118 = swift_allocObject();
            sub_22BB586D8(v1118);
            sub_22BB322B0();
            v1119 = swift_allocObject();
            v6455 = sub_22BB3DEE8(v1119);
            sub_22BD616A8();
            oslog = swift_allocObject();
            LOBYTE(oslog[2].isa) = v1030;
            sub_22BD616A8();
            v6367 = swift_allocObject();
            *(v6367 + 16) = v6301;
            sub_22BB322B0();
            swift_allocObject();
            sub_22BB756B0();
            *(v1120 + 16) = v1121;
            *(v1120 + 24) = v1113;
            sub_22BB322B0();
            v1122 = swift_allocObject();
            sub_22BB3DEE8(v1122);
            sub_22BD616A8();
            v1123 = swift_allocObject();
            *(v1123 + 16) = v1030;
            sub_22BD616A8();
            v1124 = swift_allocObject();
            sub_22BD64300(v1124);
            sub_22BB322B0();
            swift_allocObject();
            sub_22BD60724();
            *(v1125 + 16) = v1126;
            *(v1125 + 24) = v1112;
            sub_22BB322B0();
            v1127 = swift_allocObject();
            sub_22BB960B8(v1127);
            v1128 = sub_22BD630D4();
            v1129 = sub_22BBC2570(v1128, xmmword_22BDCE140);
            v1129[2].n128_u64[0] = v1130;
            v1129[2].n128_u64[1] = v1116;
            v1129[3].n128_u64[0] = sub_22BB89C08;
            v1129[3].n128_u64[1] = v1117;
            v1129[4].n128_u64[0] = sub_22BB89C7C;
            v1129[4].n128_u64[1] = v6455;
            v1129[5].n128_u64[0] = sub_22BB89C08;
            v1129[5].n128_u64[1] = oslog;
            v1129[6].n128_u64[0] = sub_22BB89C08;
            v1129[6].n128_u64[1] = v6367;
            v1129[7].n128_u64[0] = sub_22BB89C7C;
            v1129[7].n128_u64[1] = v1122;
            v1129[8].n128_u64[0] = sub_22BB89C08;
            v1129[8].n128_u64[1] = v1123;
            v1129[9].n128_u64[0] = sub_22BB89C08;
            v1129[9].n128_u64[1] = v1024;
            v1129[10].n128_u64[0] = sub_22BB89C7C;
            v1129[10].n128_u64[1] = v1127;

            name = v1117;

            sub_22BD652C0();

            if (sub_22BDBB244())
            {
              v6311 = v1122;
              sub_22BB73F58("Span", &v6473);
              v6302 = v6473;
              sub_22BB67968(32);
              v1131 = sub_22BB70090();
              sub_22BD641EC(v1131);
              sub_22BB35530(v6450);
              v1132 = sub_22BB3A2F8(v1116);
              sub_22BB67984(v1132, v1133, v1134, v1135);
              if (!v6468)
              {
                sub_22BB73F80();
                MEMORY[0x5F2] = v1117;
                v1136 = sub_22BB69324();
                sub_22BB67984(v1136, v1137, v1138, v1139);
                sub_22BB6F960();
                v1140 = sub_22BB3A2F8(v6455);
                sub_22BB67984(v1140, v1141, v1142, v1143);
                sub_22BB73F80();
                MEMORY[0x5F2] = oslog;
                v1144 = sub_22BB69324();
                sub_22BB67984(v1144, v1145, v1146, v1147);
                sub_22BB73F80();
                MEMORY[0x5F2] = oslog;
                v1148 = sub_22BB69324();
                sub_22BB67984(v1148, v1149, v1150, v1151);
                sub_22BB6F960();
                v1152 = sub_22BB3A2F8(v6311);
                sub_22BB67984(v1152, v1153, v1154, v1155);
                sub_22BB73F80();
                MEMORY[0x5F2] = v1123;
                v1156 = sub_22BB69324();
                sub_22BB67984(v1156, v1157, v1158, v1159);
                sub_22BB73F80();
                MEMORY[0x5F2] = v1024;
                v1160 = sub_22BB69324();
                sub_22BB67984(v1160, v1161, v1162, v1163);
                sub_22BB6F960();
                MEMORY[0x5F2] = v1127;
                v1164 = sub_22BB69324();
                sub_22BB67984(v1164, v1165, v1166, v1167);
                sub_22BD643E0();

                sub_22BDB7714();
                sub_22BD64840();
                sub_22BD63C7C(v1168, v1169, v1170, v1171, v6302, "[SessionCoordinator %{public}s] - Span %{public}s - Part: %{public}s");
                sub_22BD64420();
                sub_22BB2F194();
                sub_22BB679C0();
              }

              goto LABEL_399;
            }

            sub_22BB897F0();
            v6312 = v1172;
            v1173 = MEMORY[0xD62];
            sub_22BD64DA4();
            v6385 = v1174;
            sub_22BB4FE90();
            v6308 = v1175;
            sub_22BD631B0();
            v6305 = v1176;
            v14 = *(v6465 + 2920);
            sub_22BB89508(*(v6465 + 2912));
            v1177 = sub_22BB313A8();
            (v6398)(v1177);
            sub_22BB3A190();
            v1178 = sub_22BDB7784();
            v1179 = sub_22BB362AC();
            (v6415)(v1179);
            sub_22BB3FBBC();
            sub_22BB75770();
            v1180();
            v1181 = sub_22BB96DFC();
            sub_22BB3CD70(v1181, v1182, &qword_27D8E3218, &qword_22BDBE390);
            sub_22BB9766C();
            *v1183 = v6314;
            v1183[1] = v6316;
            sub_22BD64070(SLODWORD(oslog[4].isa));
            sub_22BB3B410();
            sub_22BB335C0(v6305, v14);
            sub_22BB366A0();
            sub_22BB335C0(v1173, v6312);
            v1184 = sub_22BBC01E4();
            v6343(v1184);

            sub_22BB35FA0();
            v6448 = v1178;
            v1188 = sub_22BBBED88(v1185, v1186, v1187, v1178);
            sub_22BB8B6A4();
            sub_22BD64FF0();
            sub_22BD63888();
            sub_22BB94F54(v6452, v1189);
            v1190 = sub_22BB3A190();
            v6454 = v1188;
            if (sub_22BB3AA28(v1190, v1191, v6385) == 1)
            {
              sub_22BB325EC(*(v6465 + 3624), &unk_27D8E69E0, &qword_22BDC1660);
            }

            else
            {
              sub_22BDB9AA4();
              sub_22BD63450();
              v1192 = sub_22BB3AC54();
              v1193(v1192);
              if (v6308)
              {
LABEL_167:
                sub_22BB6FA98();
                sub_22BB7581C();
                sub_22BD6264C();
                v6348 = *(v14 + 2864);
                v1194 = sub_22BD641D4();
                SessionPersistenceManager.write(initiatedParticipant:initiatedSpanId:postingParticipant:postingSpanId:)(v1194, v1195, v6325, v1196, v6308, v6322);

                sub_22BB387B8();
                sub_22BB34648();
                sub_22BD63B88();
                v1197();
                sub_22BD6379C();
                swift_storeEnumTagMultiPayload();

                sub_22BDBAF34();
                v1198 = sub_22BD632B8();
                v1199(v1198, v6343);
                sub_22BB366A0();
                sub_22BB335C0(v6367, v6348);
                sub_22BB331C8();
                sub_22BB336D0(v1200, v1201, v1202, oslog);
                sub_22BB3B574(v1188 + v1117, v14 + 544);
                sub_22BD63D1C();
                swift_endAccess();
                if (*(v6385 + v1188) == 1)
                {
                  v1203 = *(v14 + 4896);
                  name = *(v14 + 3216);
                  sub_22BB96D9C();
                  sub_22BB70244(v1204);
                  sub_22BD61744();
                  v1206 = *(v1205 + 3168);
                  sub_22BD63ADC();
                  sub_22BD63804();
                  sub_22BD61528();
                  sub_22BDB5D24();
                  v1207 = sub_22BD639D4();
                  v1208(v1207, v1203, v1206);
                  sub_22BB93D50();
                  sub_22BDB5E14();
                  sub_22BBE6DE0(&qword_27D8E6470, &qword_22BDCE320);
                  sub_22BBBFFBC();
                  sub_22BDBAF34();
                  v1209 = sub_22BB721D8();
                  sub_22BB50CF4(v1209, v6283, v6280);
                  v1210 = sub_22BB2F324();
                  sub_22BBBFEB0(v1210, v1211, v1212);

                  (*(v14 + 8))(name, v6385);
                  v14 = v6465;
                }

                else
                {
                  v1213 = sub_22BB721D8();
                  sub_22BB50CF4(v1213, v6283, v6280);
                  v1214 = sub_22BB53C48();
                  sub_22BBBFEB0(v1214, v1215, v1216);
                }

                v847 = v6468;
                v441 = v6285;
                v448 = v6275;
                v417 = *(v14 + 2984);
                v409 = *(v14 + 2960);
                v444 = *(v14 + 2952);
                sub_22BB33E70();
                sub_22BB34648();
                sub_22BB3093C();
                sub_22BB34648();
                v1217 = sub_22BBB4C24();
                v1218(v1217);
                goto LABEL_171;
              }
            }

            sub_22BDB83A4();
            sub_22BD63450();

            goto LABEL_167;
          }

LABEL_172:
          v6466 = v847;
          v1219 = *(v14 + 4272);
          sub_22BD62768();
          sub_22BDB6124();
          sub_22BB322B0();
          v1220 = swift_allocObject();
          sub_22BB3E014(v1220);
          sub_22BB366B8();
          v1221 = swift_allocObject();
          sub_22BB973F4(v1221);
          sub_22BB322B0();
          v1222 = swift_allocObject();
          sub_22BD601E4(v1222);
          sub_22BDB7724();
          v6454 = sub_22BDB7744();
          LODWORD(v6448) = sub_22BDBB1D4();
          sub_22BD616A8();
          v1223 = swift_allocObject();
          sub_22BB97E20(v1223);
          sub_22BD616A8();
          v1224 = swift_allocObject();
          sub_22BBC0370(v1224);
          sub_22BB322B0();
          v1225 = swift_allocObject();
          sub_22BB89D30(v1225);
          sub_22BB322B0();
          v1226 = swift_allocObject();
          sub_22BB3DEE8(v1226);
          sub_22BD616A8();
          swift_allocObject();
          sub_22BD648D8();
          *(v1227 + 16) = v273;
          sub_22BD616A8();
          v1228 = swift_allocObject();
          sub_22BB7564C(v1228);
          sub_22BB322B0();
          v1229 = swift_allocObject();
          sub_22BD6018C(v1229);
          sub_22BB322B0();
          v1230 = swift_allocObject();
          sub_22BD60264(v1230);
          v1231 = sub_22BB97DF8();
          sub_22BB34620(v1231);
          v1232[4] = v1233;
          v1232[5] = v1223;
          v1232[6] = sub_22BB89C08;
          v1232[7] = v448;
          v1232[8] = sub_22BB89C7C;
          v1232[9] = v1226;
          v1232[10] = sub_22BB89C08;
          v1232[11] = v14;
          v1232[12] = sub_22BB89C08;
          v1232[13] = v449;
          v1232[14] = sub_22BB89C7C;
          v1232[15] = v1230;

          if (sub_22BDBB244())
          {
            sub_22BB73F58("InstrumentationSend", &v6473);
            sub_22BD65428();
            v1234 = sub_22BD619F0();
            sub_22BD5F9A0(v1234);
            v847[174].isa = v273;
            v1235 = sub_22BB3CE1C();
            sub_22BB67984(v1235, v1236, v1237, v1238);
            if (!v847)
            {
              sub_22BB70508();
              MEMORY[0x570] = v448;
              v1239 = sub_22BB3CE1C();
              sub_22BB67984(v1239, v1240, v1241, v1242);
              MEMORY[0x568] = sub_22BB89C7C;
              MEMORY[0x570] = v1226;
              v1243 = sub_22BB3CE1C();
              sub_22BB67984(v1243, v1244, v1245, v1246);
              sub_22BB70508();
              MEMORY[0x570] = v14;
              v1247 = sub_22BB3CE1C();
              sub_22BB67984(v1247, v1248, v1249, v1250);
              sub_22BD60234();
              MEMORY[0x570] = v449;
              v1251 = sub_22BB3CE1C();
              sub_22BB67984(v1251, v1252, v1253, v1254);
              sub_22BD602A8();
              MEMORY[0x570] = v1230;
              v1255 = sub_22BB3CE1C();
              sub_22BB67984(v1255, v1256, v1257, v1258);

              sub_22BDB7714();
              sub_22BBBE830();
              sub_22BD62590();
              sub_22BD65410(v1259, v1260, v1261, v1262, v1231, "[SessionCoordinator %s] | [TX %s] Begin dispatch to instrumentation.");
              sub_22BD62D7C();
              sub_22BD6193C();
              sub_22BB679C0();
            }

            goto LABEL_399;
          }

          v1751 = sub_22BD609B4();
          (v6398)(v1751);
          sub_22BB3A190();
          v847[596].isa = sub_22BDB7784();
          v1752 = sub_22BB2F0E0();
          (v6415)(v1752);
          sub_22BB37074();
          sub_22BB75770();
          v1753();
          sub_22BD648C0();
          if (v1754)
          {
            if (v1754 < 1)
            {
              __break(1u);
              goto LABEL_407;
            }

            sub_22BD60DAC();
            oslog = *(v1755 + 16);
            do
            {
              sub_22BD60928();
              name = v1756;
              sub_22BD61C78();
              sub_22BB70244(v1757);
              v847 = *(v1758 + 4400);
              sub_22BB720E0();
              sub_22BD634D0();
              (oslog)();
              sub_22BD62C60();
              v1759 = sub_22BD615E4();
              v1760(v1759);
              v1761 = sub_22BD62454();
              v1223(v1761);
              v1762 = sub_22BDB9C74();
              sub_22BD654A0(v1762);

              sub_22BB6FB0C();
            }

            while (!v165);
          }

          sub_22BD60B30();
          if (v165)
          {
            v1763 = sub_22BD635CC();
            v1764 = v6466;
            sub_22BD44098(v1763);
            v6395 = v6466;
            if (v6466)
            {
              sub_22BD63BBC();
              sub_22BDB63E4();
              sub_22BB322B0();
              v1765 = swift_allocObject();
              sub_22BD6049C(v1765);
              sub_22BB366B8();
              *(swift_allocObject() + 16) = v6322;
              sub_22BB322B0();
              v1766 = swift_allocObject();
              sub_22BD60348(v1766);
              sub_22BB366B8();
              v1767 = swift_allocObject();
              sub_22BBC0200(v1767);
              v1768 = v6466;
              v6454 = sub_22BDB77C4();
              LODWORD(v6452) = sub_22BDBB114();
              sub_22BD616A8();
              v1769 = swift_allocObject();
              sub_22BD63B94(v1769);
              sub_22BD616A8();
              v6461 = swift_allocObject();
              sub_22BD612D8(v6461);
              sub_22BB322B0();
              v1770 = swift_allocObject();
              sub_22BB96D60(v1770);
              sub_22BB322B0();
              swift_allocObject();
              sub_22BD5F74C();
              *(v1771 + 16) = v1772;
              *(v1771 + 24) = v847;
              sub_22BD616A8();
              v1773 = swift_allocObject();
              *(v1773 + 16) = v449;
              sub_22BD616A8();
              v6472 = swift_allocObject();
              *(v6472 + 16) = v1764;
              sub_22BB322B0();
              v1774 = swift_allocObject();
              sub_22BBBE888(v1774);
              sub_22BB322B0();
              v1775 = swift_allocObject();
              sub_22BD6032C(v1775);
              sub_22BD616A8();
              v1776 = swift_allocObject();
              sub_22BD61B1C(v1776);
              sub_22BD616A8();
              v1226 = swift_allocObject();
              sub_22BB6FB2C(v1226);
              sub_22BB322B0();
              v1777 = swift_allocObject();
              sub_22BD60380(v1777);
              sub_22BB322B0();
              v1778 = swift_allocObject();
              sub_22BD603F0(v1778);
              sub_22BB322B0();
              v1779 = swift_allocObject();
              sub_22BD603B8(v1779);
              v1780 = sub_22BD630D4();
              v1781 = sub_22BBC2570(v1780, xmmword_22BDCE140);
              v1781[2].n128_u64[0] = v1782;
              v1781[2].n128_u64[1] = v1769;
              v1781[3].n128_u64[0] = sub_22BB89C08;
              v1781[3].n128_u64[1] = v6461;
              v1781[4].n128_u64[0] = sub_22BB89C7C;
              v1781[4].n128_u64[1] = v1765;
              v1781[5].n128_u64[0] = sub_22BB89C08;
              v1781[5].n128_u64[1] = v1773;
              v1781[6].n128_u64[0] = sub_22BB89C08;
              v1781[6].n128_u64[1] = v6472;
              v1781[7].n128_u64[0] = sub_22BB89C7C;
              v1781[7].n128_u64[1] = v847;
              v1781[8].n128_u64[0] = sub_22BB89C08;
              v1781[8].n128_u64[1] = v449;
              v1781[9].n128_u64[0] = sub_22BB89C08;
              v1781[9].n128_u64[1] = v1226;
              v1781[10].n128_u64[0] = sub_22BD5F648;
              v1781[10].n128_u64[1] = v1223;
              v6385 = v1769;

              v6448 = v1773;

              v1783 = sub_22BD60DFC();
              if (os_log_type_enabled(v1783, v1784))
              {
                sub_22BB67968(32);
                v1785 = sub_22BD63820();
                v1786 = sub_22BB3E490();
                *(v14 + 1784) = v1785;
                *(v14 + 1776) = v1786;
                sub_22BB75908();
                *(v14 + 1800) = v6472;
                sub_22BB3A8C8();
                *(v14 + 1328) = v6385;
                v1787 = sub_22BB397F4();
                sub_22BB67984(v1787, v1788, v1789, v1790);

                sub_22BB3A8C8();
                *(v14 + 1328) = v6461;
                v1791 = sub_22BB397F4();
                sub_22BB67984(v1791, v1792, v1793, v1794);

                *(v14 + 1320) = sub_22BB89C7C;
                *(v14 + 1328) = v1765;
                v1795 = sub_22BB397F4();
                sub_22BB67984(v1795, v1796, v1797, v1798);

                sub_22BB3A8C8();
                *(v14 + 1328) = v1773;
                v1799 = sub_22BB397F4();
                sub_22BB67984(v1799, v1800, v1801, v1802);

                sub_22BB3A8C8();
                *(v14 + 1328) = v6472;
                v1803 = sub_22BB397F4();
                sub_22BB67984(v1803, v1804, v1805, v1806);

                sub_22BD5F6D4();
                *(v14 + 1328) = v847;
                v1807 = sub_22BB397F4();
                sub_22BB67984(v1807, v1808, v1809, v1810);

                sub_22BB3A8C8();
                *(v14 + 1328) = v449;
                v1811 = sub_22BB397F4();
                sub_22BB67984(v1811, v1812, v1813, v1814);

                sub_22BB3A8C8();
                *(v14 + 1328) = v1226;
                v1815 = sub_22BB397F4();
                sub_22BB67984(v1815, v1816, v1817, v1818);

                sub_22BB70C3C();
                *(v14 + 1328) = v1223;
                v1819 = sub_22BB397F4();
                sub_22BB67984(v1819, v1820, v1821, v1822);
                sub_22BD62094();

                sub_22BD61B3C();
                sub_22BD64A08();
                sub_22BD646EC(v1823, v1824, v1825, "[SessionCoordinator %{public}s] | [TX %{public}s] Failed to encode to proto data for debugger: %{public}@");
                sub_22BB325EC(v1785, &unk_27D8E6A70, &unk_22BDBCDB0);
                sub_22BB38680();
                sub_22BD619D4();
                sub_22BD6193C();
                sub_22BB679C0();
              }

              sub_22BD64098();

              (*(v6472 + 8))(v6452, name);
            }

            else
            {
              sub_22BD61E00();
              name = v1934;
              sub_22BB97628();
              v6385 = v1935;
              sub_22BD619BC();
              sub_22BD65170(v1936);

              sub_22BD600B0();
              sub_22BD62EA8();
              v1937 = sub_22BD62428();
              sub_22BD594F8(v1937, v1938, v1939);
              sub_22BB3CD70(name, v448, &qword_27D8E3218, &qword_22BDBE390);
              sub_22BDB5D84();
              v1940 = sub_22BD633F4();
              v1941(v1940);
              sub_22BD63650();
              sub_22BDB5E14();
              sub_22BBE6DE0(&qword_27D8E6470, &qword_22BDCE320);
              sub_22BD62448();
              sub_22BDBAF34();
              v1942 = sub_22BBD1A5C();
              v1943(v1942);
              v14 = v6465;
            }

            v6466 = 0;
          }

          else
          {
          }

          sub_22BD62680();
          sub_22BDB6124();
          sub_22BB322B0();
          v2006 = swift_allocObject();
          sub_22BB977E8(v2006);
          sub_22BB366B8();
          v2007 = swift_allocObject();
          sub_22BB973F4(v2007);
          sub_22BB322B0();
          v2008 = swift_allocObject();
          sub_22BB77E74(v2008);

          v2009 = sub_22BDB7744();
          sub_22BB96D04(v2009);
          sub_22BDB7774();
          LODWORD(v6452) = sub_22BDBB1C4();
          sub_22BD616A8();
          v17 = swift_allocObject();
          sub_22BB97E20(v17);
          sub_22BD616A8();
          v2010 = swift_allocObject();
          sub_22BD62C10(v2010);
          sub_22BB322B0();
          swift_allocObject();
          sub_22BB3E0C4();
          *(v2011 + 16) = v2012;
          *(v2011 + 24) = v1223;
          sub_22BB322B0();
          v13 = swift_allocObject();
          sub_22BB3DEE8(v13);
          sub_22BD616A8();
          v2013 = swift_allocObject();
          sub_22BD64D08(v2013);
          sub_22BD616A8();
          v20 = swift_allocObject();
          *(v20 + 16) = v1226;
          sub_22BB322B0();
          swift_allocObject();
          sub_22BB756B0();
          *(v2014 + 16) = v2015;
          *(v2014 + 24) = v2008;
          sub_22BB322B0();
          v37 = swift_allocObject();
          sub_22BB3DEE8(v37);
          v2016 = sub_22BB97DF8();
          sub_22BB31444(v2016);
          v2017[4] = v2018;
          v2017[5] = v17;
          v2017[6] = sub_22BB89C08;
          v2017[7] = v2010;
          v2017[8] = sub_22BB89C7C;
          v2017[9] = v13;
          v2017[10] = sub_22BB89C08;
          v2017[11] = v1223;
          v2017[12] = sub_22BB89C08;
          v2017[13] = v20;
          v2017[14] = sub_22BB89C7C;
          v2017[15] = v37;

          v39 = v6461;
          if (sub_22BDBB244())
          {
            sub_22BD63674();
            sub_22BB73F58("InstrumentationSend", v2019);
            sub_22BD64F90();
            sub_22BDB77B4();

            v2020 = sub_22BB53C48();
            if (v2021(v2020) != v6461)
            {
              v2024 = sub_22BD61D04();
              v2025(v2024);
            }

            sub_22BB67968(22);
            v2026 = sub_22BD62464();
            sub_22BD64CB4(v2026);
            sub_22BD63FF8();
            *(v14 + 1848) = v2027;
            *(v14 + 1256) = sub_22BB89C08;
            *(v14 + 1264) = v6454;
            v2028 = sub_22BD5F6A8();
            sub_22BB67984(v2028, v2029, v2030, v2031);
            if (!v6466)
            {
              sub_22BBC3C0C();
              *(v14 + 1264) = v2010;
              v2032 = sub_22BD5F6A8();
              sub_22BB67984(v2032, v2033, v2034, v2035);
              sub_22BD606AC();
              *(v14 + 1264) = v13;
              v2036 = sub_22BD5F6A8();
              sub_22BB67984(v2036, v2037, v2038, v2039);
              sub_22BBC3C0C();
              *(v14 + 1264) = v6448;
              v2040 = sub_22BD5F6A8();
              sub_22BB67984(v2040, v2041, v2042, v2043);
              sub_22BBC3C0C();
              *(v14 + 1264) = v20;
              v2044 = sub_22BD5F6A8();
              sub_22BB67984(v2044, v2045, v2046, v2047);
              sub_22BD606AC();
              *(v14 + 1264) = v6385;
              v2048 = sub_22BD5F6A8();
              sub_22BB67984(v2048, v2049, v2050, v2051);
              sub_22BD63A7C();

              sub_22BDB7714();
              sub_22BD61B3C();
              sub_22BD64048(&dword_22BB2C000, v2052, v2053, v2054);
              sub_22BBBE764();
              sub_22BB2F194();
              sub_22BB679C0();
            }

            goto LABEL_399;
          }

          sub_22BD61D18();

          v2022 = sub_22BB313A8();
          (v6415)(v2022);
          sub_22BB75770();
          v2023();
          v45 = v6466;
          v16 = &qword_27D8E3218;
          v273 = v6320;
          if (v6350 == v6391)
          {
            sub_22BD6451C();

            sub_22BB705A8();
            v2055 = sub_22BB2F324();
            sub_22BB325EC(v2055, v2056, &qword_22BDBE390);
            goto LABEL_97;
          }

          sub_22BD62768();
          sub_22BDB63E4();
          sub_22BB322B0();
          v3452 = swift_allocObject();
          sub_22BD603D4(v3452);
          sub_22BB366B8();
          *(swift_allocObject() + 16) = v6322;
          sub_22BB322B0();
          v3453 = swift_allocObject();
          sub_22BBC02FC(v3453);
          sub_22BDB77C4();
          sub_22BDBB134();
          sub_22BD616A8();
          v3454 = swift_allocObject();
          sub_22BD632F8(v3454);
          sub_22BD616A8();
          v3455 = swift_allocObject();
          sub_22BBC0370(v3455);
          sub_22BB322B0();
          v3456 = swift_allocObject();
          sub_22BBBE7C0(v3456);
          sub_22BB322B0();
          v3457 = swift_allocObject();
          sub_22BB69C9C(v3457);
          sub_22BD616A8();
          v3458 = swift_allocObject();
          sub_22BD64D14(v3458);
          sub_22BD616A8();
          v3459 = swift_allocObject();
          *(v3459 + 16) = v6466;
          sub_22BB322B0();
          v3460 = swift_allocObject();
          sub_22BD602C4(v3460);
          sub_22BB322B0();
          v1230 = swift_allocObject();
          sub_22BB69C9C(v1230);
          v3461 = sub_22BB97DF8();
          sub_22BB72F5C(v3461);
          v3462[6] = sub_22BB89C08;
          v3462[7] = v13;
          v3462[8] = sub_22BB89C7C;
          v3462[9] = v3457;
          v3462[10] = sub_22BB89C08;
          v3462[11] = &qword_27D8E3218;
          v3462[12] = sub_22BB89C08;
          v3462[13] = v3459;
          v3462[14] = sub_22BB89C7C;
          v3462[15] = v1230;

          if (sub_22BD63B1C())
          {
            sub_22BB67968(22);
            v3463 = sub_22BD619F0();
            sub_22BD62E2C(v3463);
            sub_22BD641F8(v3464);
            v6473 = sub_22BB89C08;
            v6474 = v14;
            v3465 = sub_22BB58B08();
            sub_22BB67984(v3465, v3466, v3467, v3468);
            if (v6320)
            {
              goto LABEL_327;
            }

            v3568 = sub_22BB542B0();
            sub_22BB67984(v3568, v3569, v3570, v3571);

            v3583 = sub_22BB542B0();
            sub_22BB67984(v3583, v3584, v3585, v3586);

            v6473 = sub_22BB89C08;
            v6474 = &qword_27D8E3218;
            v3622 = sub_22BB542B0();
            sub_22BB67984(v3622, v3623, v3624, v3625);
LABEL_407:

            sub_22BB704E4();
            v6473 = v3629;
            v6474 = v3628;
            v3630 = sub_22BB542B0();
            sub_22BB67984(v3630, v3631, v3632, v3633);
            if (!v273)
            {

              v6473 = sub_22BB89C7C;
              v6474 = v1230;
              v3637 = sub_22BB542B0();
              sub_22BB67984(v3637, v3638, v3639, v3640);
              sub_22BD6324C();
              sub_22BD63120(&dword_22BB2C000, v3641, v3642, "[SessionCoordinator %{public}s] | [TX %{public}s] Terminate was encountered. Begin cleanup of session.");
              sub_22BD61EC8();
              sub_22BB77E48();
              sub_22BB679C0();
            }

            goto LABEL_368;
          }

          sub_22BD63270();

          v3485 = sub_22BD61704();
          v3487 = v3486(v3485);
          sub_22BD63AFC(v3487);
          sub_22BB322B0();
          v3488 = swift_allocObject();
          sub_22BB977E8(v3488);
          sub_22BB366B8();
          v3489 = swift_allocObject();
          sub_22BB973F4(v3489);
          sub_22BB322B0();
          v3490 = swift_allocObject();
          sub_22BD60A50(v3490);
          sub_22BDB7724();
          v3491 = sub_22BDB7744();
          sub_22BDBB1D4();
          sub_22BD616A8();
          v3492 = swift_allocObject();
          *(v3492 + 16) = 32;
          sub_22BD616A8();
          v3493 = swift_allocObject();
          sub_22BD631A4(v3493);
          sub_22BB322B0();
          swift_allocObject();
          sub_22BB3E0C4();
          *(v3494 + 16) = v3495;
          *(v3494 + 24) = &qword_27D8E3218;
          sub_22BB322B0();
          v3496 = swift_allocObject();
          sub_22BB3DEE8(v3496);
          sub_22BD616A8();
          v3497 = swift_allocObject();
          *(v3497 + 16) = 32;
          sub_22BD616A8();
          v3498 = swift_allocObject();
          sub_22BB894FC(v3498);
          sub_22BB322B0();
          swift_allocObject();
          sub_22BB756B0();
          *(v3499 + 16) = v3500;
          *(v3499 + 24) = v37;
          sub_22BB322B0();
          v3501 = swift_allocObject();
          sub_22BB3DEE8(v3501);
          v3502 = sub_22BB97DF8();
          sub_22BB31444(v3502);
          v3503[4] = v3504;
          v3503[5] = v3492;
          v3503[6] = sub_22BB89C08;
          v3503[7] = v3493;
          v3503[8] = sub_22BB89C7C;
          v3503[9] = v3496;
          v3503[10] = sub_22BB89C08;
          v3503[11] = v3497;
          v3503[12] = sub_22BB89C08;
          v3503[13] = v3459;
          v3503[14] = sub_22BB89C7C;
          v3503[15] = v3501;

          if (sub_22BDBB244())
          {
            sub_22BD63EB0("ODPWait");
            sub_22BD62384();
            v3505 = sub_22BBBFF34();
            sub_22BB3ADEC(v3505);
            v6473 = v3506;
            v6474 = v3492;
            v3507 = sub_22BB58B08();
            sub_22BB67984(v3507, v3508, v3509, v3510);
            if (!v6320)
            {
              v3511 = sub_22BB542B0();
              sub_22BB67984(v3511, v3512, v3513, v3514);
              v3515 = sub_22BB542B0();
              sub_22BB67984(v3515, v3516, v3517, v3518);
              v3519 = sub_22BB542B0();
              sub_22BB67984(v3519, v3520, v3521, v3522);
              v3523 = sub_22BB542B0();
              sub_22BB67984(v3523, v3524, v3525, v3526);
              v6473 = sub_22BB89C7C;
              v6474 = v3501;
              v3527 = sub_22BB542B0();
              sub_22BB67984(v3527, v3528, v3529, v3530);
              sub_22BB3E564();

              v3531 = sub_22BDB7714();
              sub_22BB40F38(&dword_22BB2C000, v3532, v3533, v3531, v3534, "[SessionCoordinator %s] | [TX %s] Notifying ODP about session end.");
              sub_22BD623A0();
              sub_22BB77E48();
              sub_22BB679C0();
            }

            goto LABEL_399;
          }

          sub_22BD6153C();
          v3539 = *(v6320 + 4400);
          sub_22BD61CA0();
          v3540 = sub_22BBBEAD0();
          (v6398)(v3540);
          sub_22BB3A190();
          v3541 = sub_22BDB7784();
          v3542 = sub_22BBBEBC4(v3541);
          (v6415)(v3542);
          sub_22BB757A0();
          sub_22BB75770();
          v3543();
          (v3497)(v3539, *MEMORY[0x277D1DE98], v3493);
          v3544 = sub_22BDB9C74();
          sub_22BD65518(v3544);

          sub_22BD65200(v3545);
          sub_22BB322B0();
          swift_allocObject();
          sub_22BD60428();
          *(v3546 + 16) = v3547;
          *(v3546 + 24) = v3491;
          sub_22BB366B8();
          *(swift_allocObject() + 16) = v6322;
          sub_22BB322B0();
          v3548 = swift_allocObject();
          sub_22BB6FEDC(v3548);

          v3549 = sub_22BDB7744();
          sub_22BB755A0(v3549);
          sub_22BDBB1C4();
          sub_22BD616A8();
          v3550 = swift_allocObject();
          sub_22BD63D94(v3550);
          sub_22BD616A8();
          v3551 = swift_allocObject();
          sub_22BD631A4(v3551);
          sub_22BB322B0();
          swift_allocObject();
          sub_22BB3E0C4();
          *(v3552 + 16) = v3553;
          *(v3552 + 24) = v3493;
          sub_22BB322B0();
          v3554 = swift_allocObject();
          sub_22BB3DEE8(v3554);
          sub_22BD616A8();
          v3555 = swift_allocObject();
          sub_22BD64AB8(v3555);
          sub_22BD616A8();
          v3556 = swift_allocObject();
          sub_22BB894FC(v3556);
          sub_22BB322B0();
          swift_allocObject();
          sub_22BB756B0();
          *(v3557 + 16) = v3558;
          *(v3557 + 24) = v3548;
          sub_22BB322B0();
          v3559 = swift_allocObject();
          sub_22BB8DCE0(v3559);
          v3560 = sub_22BB97DF8();
          sub_22BB6B6F0(v3560);
          v3561[6] = sub_22BB89C08;
          v3561[7] = v3551;
          v3561[8] = sub_22BB89C7C;
          v3561[9] = v3554;
          v3561[10] = sub_22BB89C08;
          v3561[11] = v3496;
          v3561[12] = sub_22BB89C08;
          v3561[13] = v3459;
          v3561[14] = sub_22BB89C7C;
          v3561[15] = v3548;

          if ((sub_22BDBB244() & 1) == 0)
          {
            sub_22BBC251C();

            v3573 = sub_22BD00E3C();
            (v6415)(v3573);
            sub_22BB53C48();
            sub_22BB75770();
            v3574();
            sub_22BD615F8();
            v3575 = swift_task_alloc();
            v3576 = sub_22BD624A8(v3575);
            *v3576 = v3577;
            sub_22BB37558(v3576);
            sub_22BB33430();

            sub_22BB75AA8();
            return;
          }

          sub_22BD614E4();
          sub_22BD63EB0("ODPWait");
          sub_22BB96BE8();
          sub_22BDB77B4();

          v3562 = sub_22BB53C48();
          if (v3563(v3562) != v6327)
          {
            v3587 = sub_22BD60E1C();
            v3588(v3587);
            sub_22BD647E0("[SessionCoordinator %s] | [TX %s] Finished notifying ODP about session end.");
          }

          sub_22BB67968(22);
          v3589 = sub_22BB97DCC();
          sub_22BD64B60(v3589);
          sub_22BB756D4();
          v6473 = sub_22BB89C08;
          v6474 = v3491;
          v3590 = sub_22BB58B08();
          sub_22BB67984(v3590, v3591, v3592, v3593);
          if (v6320 != -88)
          {
LABEL_399:
            sub_22BB33430();

            return;
          }

          v3594 = sub_22BB542B0();
          sub_22BB67984(v3594, v3595, v3596, v3597);
          v3598 = sub_22BB542B0();
          sub_22BB67984(v3598, v3599, v3600, v3601);
          v3602 = sub_22BB542B0();
          sub_22BB67984(v3602, v3603, v3604, v3605);
          v3606 = sub_22BB542B0();
          sub_22BB67984(v3606, v3607, v3608, v3609);
          v6473 = sub_22BB89C7C;
          v6474 = v3548;
          v3610 = sub_22BB542B0();
          sub_22BB67984(v3610, v3611, v3612, v3613);
LABEL_417:
          sub_22BB757D4();

          sub_22BDB7714();
          sub_22BD61424();
          sub_22BD6465C(v3643, v3644, v3645, v3646, v3647, v3648);

          sub_22BD619D4();
          sub_22BD6193C();
          sub_22BB679C0();
        }

        name = v448;
        sub_22BD62F1C();
        oslog = v462;
        sub_22BB31DC8();
        sub_22BB3A518(v463 + v464, v465);
        v6448 = sub_22BB954F8(v6452);
        v448 = 0;
        v273 = v6395;
        do
        {
          if (v6448 == v448)
          {
            v14 = v6465;
            sub_22BD634C0();
LABEL_87:
            v444 = v6385;
            sub_22BB33E70();
            sub_22BB34648();
            goto LABEL_67;
          }

          sub_22BB97C84();
          if (v466)
          {
            __break(1u);
            goto LABEL_319;
          }

          sub_22BD61B54();
          sub_22BB704CC();
          v468 = *(v467 + 3048);
          sub_22BB966E8(v467);
          v469 = sub_22BD61CC8();
          v471 = v470(v469);
          ++v448;
          sub_22BD63B6C(v471);
          ++v449;
          v472 = sub_22BB2F3F0();
          v473(v472);
          sub_22BB71FB0();
          sub_22BDB9AC4();
          v474 = sub_22BB58D10();
          v475(v474);
          v417 = swift_task_alloc();
          *(v417 + 16) = v444;
          v476 = sub_22BD5FBA4();
          sub_22BD65500(v476, v477, v478, v479, v480, v481, v482, v483, v3649, v3799, v3949, v4099, v4249, v4399, v4549, v4699, v4849, v4999, v5150, v5301, v5452, v5603, v5754, v5905, v6056);
          v484 = v468 + 8;
          v485 = sub_22BD62E38();
          v487 = v486(v485);
          v6466 = v6395;
        }

        while ((&unk_22BDCE460 & 1) == 0);
        sub_22BD61364(v487);
        sub_22BBCBF94();
        sub_22BB335C0(v444, v409);
        v448 = *(v449 + 80);
        sub_22BD61350();
        swift_allocObject();
        sub_22BB3E408();
        sub_22BB3A518(v409, v488 + v484);
        sub_22BB322B0();
        v489 = swift_allocObject();
        sub_22BD5F6BC(v489);
        v490 = sub_22BB500C0();
        sub_22BB335C0(v490, v491);
        sub_22BD62C1C();
        v492 = swift_allocObject();
        sub_22BD62E88(v492);
        sub_22BB322B0();
        v493 = swift_allocObject();
        sub_22BB96620(v493);
        LODWORD(v6454) = sub_22BDBB104();
        sub_22BD616A8();
        v494 = swift_allocObject();
        sub_22BB97E20(v494);
        sub_22BD616A8();
        v495 = swift_allocObject();
        sub_22BD62C10(v495);
        sub_22BB322B0();
        swift_allocObject();
        sub_22BB756B0();
        *(v496 + 16) = v497;
        *(v496 + 24) = v489;
        sub_22BB322B0();
        v498 = swift_allocObject();
        sub_22BB3DEE8(v498);
        sub_22BD616A8();
        v499 = swift_allocObject();
        sub_22BB75830(v499);
        sub_22BD616A8();
        v500 = swift_allocObject();
        sub_22BB96A88(v500);
        sub_22BB322B0();
        swift_allocObject();
        sub_22BB500CC();
        *(v501 + 16) = v502;
        *(v501 + 24) = v409;
        sub_22BB322B0();
        v441 = swift_allocObject();
        sub_22BB3DEE8(v441);
        v503 = sub_22BB97DF8();
        sub_22BB31444(v503);
        v504[4] = v505;
        v504[5] = v494;
        v504[6] = sub_22BB89C08;
        v504[7] = v495;
        v504[8] = sub_22BB89C7C;
        v504[9] = v498;
        v504[10] = sub_22BB89C08;
        v504[11] = v448;
        v504[12] = sub_22BB89C08;
        v504[13] = v484;
        v504[14] = sub_22BB89C7C;
        v504[15] = v441;
        sub_22BD64764();

        v506 = sub_22BD612E8();
        if (!os_log_type_enabled(v506, v507))
        {
          sub_22BD62028();

          v521 = sub_22BD62FF8();
          v6324(v521);
          v14 = v446;
          sub_22BD61DCC();
          sub_22BD634C0();
          v6466 = v522;
          if (v523)
          {
            sub_22BDBAFD4();
          }

          v417 = v446[312];
          sub_22BBC45D0(v6358);
          v524 = sub_22BD61D7C();
          v525 = sub_22BBC463C(v524, oslog);
          if (!sub_22BD6341C(v525, v526))
          {
            sub_22BD634B0();
            *(&v6395->isa + v527) = v528;
          }

          v529 = sub_22BD63DBC();
          (v417)(v529);
          v530 = sub_22BD64D68();
          (v409)(v530);
          goto LABEL_87;
        }

        sub_22BB67968(22);
        v508 = sub_22BB3E030();
        sub_22BD64E04(v508);
        sub_22BB897E4(v506);
        v446[206] = v509;
        sub_22BB384C8();
        v446[188] = v409;
        v510 = sub_22BD607FC();
        sub_22BB67984(v510, v511, v512, v513);
        if (!v6395)
        {
          sub_22BB75658();
          sub_22BB384C8();
          v446[188] = v495;
          v514 = sub_22BD607FC();
          sub_22BB67984(v514, v515, v516, v517);

          sub_22BD608D0();

          sub_22BD607E4();
          *(v484 + 1504) = v448;
          sub_22BD611FC();

          sub_22BD607E4();
          *(v484 + 1504) = v484;
          sub_22BD611FC();

          sub_22BD607CC();
          *(v484 + 1504) = v441;
          sub_22BD611FC();
          sub_22BD62094();

          sub_22BB96D8C();
          sub_22BD62CB8();
          sub_22BD636C8(v518, v519, v520, "SessionCoordinator found ongoing span to be terminated: %s for participant: %s", v3649, v3799);
          sub_22BD61EC8();
          sub_22BB77E48();
          sub_22BB679C0();
        }

LABEL_319:

LABEL_349:

LABEL_410:
        sub_22BB33430();

        return;
      case 2u:
        sub_22BD649A0();
        v6437 = *(v14 + 3816);
        sub_22BD62190();
        v108 = sub_22BBE6DE0(&qword_27D8E6540, &qword_22BDCE450);
        v109 = sub_22BD6362C(v108);
        v110(v109);
        sub_22BB6BEE0(v39 + v102, v6437, &qword_27D8E3218, &qword_22BDBE390);
        v111 = sub_22BD61AC0();
        v112(v111);
        sub_22BD64294();
        sub_22BDB96A4();
        v113 = sub_22BB38518();
        v114(v113);
        v115 = sub_22BDB9744();
        v17 += 8;
        v116 = sub_22BB97B18();
        v117(v116, v6452);
        *(v14 + 1872) = v115;
        v16 = sub_22BBE6DE0(&qword_27D8E2F48, &unk_22BDBD950);
        sub_22BB31DE0();
        sub_22BB69260();
        sub_22BB899C0(v118, v119, v120);
        v37 = v6454;
        sub_22BBBFFBC();
        sub_22BDB90D4();

        sub_22BBE6DE0(&qword_27D8E6560, &qword_22BDCE740);
        sub_22BB3329C();
        if (v165)
        {
          v128 = sub_22BB325EC(*(v14 + 3584), &qword_27D8E6518, &unk_22BDCE420);
          v129 = 1;
        }

        else
        {
          v126 = sub_22BB8EAD8();
          v128 = v127(v126);
          v129 = 0;
        }

        v130 = sub_22BB96DB0(v128, v129);
        v39 = &unk_27D8E69E0;
        sub_22BB3CD70(v130, v131, &unk_27D8E69E0, &qword_22BDC1660);
        v132 = sub_22BB36B74(v6454);
        if (v165)
        {
          sub_22BD6201C();
          v145 = sub_22BB325EC(v140, v141, v142);
          v146 = 1;
        }

        else
        {
          sub_22BB93D70(v132, v133, v134, v135, v136, v137, v138, v139, v3649);
          v143 = sub_22BD60A7C();
          v145 = v144(v143);
          v146 = 0;
        }

        v147 = sub_22BD60C28(v145, v146);
        v13 = &qword_22BDBE390;
        sub_22BB3CD70(v147, v148, &qword_27D8E3218, &qword_22BDBE390);
        v149 = sub_22BBBE174();
        sub_22BD63AAC(v149, v150);
        v151 = sub_22BB3A190();
        sub_22BB31814(v151, v152, v115);
        if (v165)
        {
          sub_22BD6493C();
          sub_22BB8E9F0();
          sub_22BB325EC(v153, v154, v155);
          sub_22BBBFF9C(&unk_27D8E69E0 + v45);
          if (!v165)
          {
            goto LABEL_24;
          }

          sub_22BB8E9F0();
          sub_22BB325EC(v156, v157, v158);
        }

        else
        {
          v159 = sub_22BD630F0();
          sub_22BD63AAC(v159, v160);
          sub_22BD618B8();
          sub_22BB3AA28(v161, v162, v163);
          v164 = *(v14 + 3744);
          sub_22BD64930();
          if (v165)
          {
            sub_22BD64924();
            v166 = sub_22BD00E3C();
            sub_22BB325EC(v166, v167, &qword_22BDBE390);
            ++v16;
            v168 = sub_22BB3627C();
            v169(v168);
LABEL_24:
            sub_22BB325EC(*(v14 + 3352), &qword_27D8E6510, &qword_22BDCE418);
LABEL_26:
            sub_22BD63100();
            v181 = sub_22BB6C8E0();
            sub_22BB325EC(v181, &unk_27D8E69E0, &qword_22BDC1660);
            v182 = sub_22BD6220C();
            sub_22BB325EC(v182, v183, &qword_22BDBE390);
            v184 = sub_22BB97688();
            v185(v184);
            v124 = sub_22BC54704();
LABEL_27:
            sub_22BB74044(v124, v125, v39);

            sub_22BB35CBC();
            sub_22BB34648();
            v45 = v6466;
            continue;
          }

          v16 = *(v14 + 3352);
          v20 = *(v14 + 3336);
          v170 = *(v14 + 3320);
          v171 = sub_22BBC0658();
          v172(v171);
          sub_22BB30DC4();
          v174 = sub_22BB3B194(&unk_28142DD40, v173);
          v39 = sub_22BB97518(v174);
          v175 = v170[1].isa;
          v17 = &v170[1];
          v176 = sub_22BB32E04();
          v175(v176);
          sub_22BB325EC(v164, &qword_27D8E3218, &qword_22BDBE390);
          v177 = sub_22BD6220C();
          v175(v177);
          sub_22BB8E9F0();
          sub_22BB325EC(v178, v179, v180);
          if ((v39 & 1) == 0)
          {
            goto LABEL_26;
          }
        }

        v347 = sub_22BD613E8();
        sub_22BB3CD70(v347, v348, &qword_27D8E3218, &qword_22BDBE390);
        sub_22BDB97E4();
        sub_22BDB9804();
        v16 = sub_22BB954F8(v16);
        v17 = 0;
        v45 = v6466;
        v13 = &qword_22BDC1660;
        v6452 = v16;
        while (2)
        {
          if (v17 == v16)
          {
            sub_22BD642AC();
          }

          else
          {
            v351 = *(v14 + 3000);
            v39 = *(v14 + 2816);
            v37 = *(v14 + 2464);
            v352 = sub_22BD617C4();
            sub_22BB954F0(v352);
            v353 = sub_22BD60908();
            v349 = sub_22BB3CD70(v353, v354, &qword_27D8E6038, &qword_22BDD0300);
            v355 = __OFADD__(v17++, 1);
            if (v355)
            {
              __break(1u);

              goto LABEL_367;
            }

            v350 = 0;
          }

          v356 = sub_22BD6124C(v349, v350);
          sub_22BB6BEE0(v356, v357, &qword_27D8E64E0, &qword_22BDCE3E8);
          sub_22BB3329C();
          if (!v165)
          {
            v358 = sub_22BD60AE8();
            v359(v358);
            sub_22BD651E8();
            sub_22BBE6DE0(&qword_27D8E64C0, &qword_22BDCE3C8);
            v360 = sub_22BB30F68();
            v361 = type metadata accessor for XPCClientAvatar(v360);
            if (sub_22BB6FAB0(v361))
            {
              sub_22BB97548();
              v362 = sub_22BB679CC();
              v363(v362);
              v16 = v6452;
              sub_22BB35464();
              swift_storeEnumTagMultiPayload();
              v364 = sub_22BB96D40();
              sub_22BBC11B4(v364);
              v365 = sub_22BD61F9C();
              v366(v365, v6456);
              v367 = sub_22BD63620();
              v13 = &qword_22BDC1660;
              v368 = v14;
              v14 = v6465;
              v45 = v6466;
              v369(v367, v368);
            }

            else
            {
              v370 = sub_22BD61BCC();
              v371(v370);
            }

            continue;
          }

          break;
        }

        v372 = sub_22BD613D0();
        sub_22BB325EC(v372, &unk_27D8E69E0, &qword_22BDC1660);
        v373 = sub_22BB313A8();
        sub_22BB325EC(v373, v374, &qword_22BDBE390);
        v375 = sub_22BD60A40();
        v376(v375);
LABEL_97:
        sub_22BB6FC94();
LABEL_98:

        sub_22BB35CBC();
        sub_22BB34648();
        continue;
      case 3u:
        v39 = (*(v14 + 2496) + *(v14 + 4440));
        sub_22BB3737C();
        sub_22BB3A518(v325, v326);
        sub_22BD6143C();
        sub_22BB6FC74();
        sub_22BD6233C();
        sub_22BD6462C();
        LODWORD(v6433) = v37;
        sub_22BD7577C(v37, v39);
        sub_22BD61FB4();

        sub_22BD6486C();
        if (v37)
        {
          v6438 = *(v14 + 4888);
          v17 = *(v14 + 3336);
          v13 = *(v14 + 3320);
          v6364 = *(v14 + 3312);
          sub_22BB6FFE8();
          v6410 = *(v14 + 3176);
          v6416 = *(v14 + 3168);
          v327 = sub_22BD60B0C();
          (v20)(v327);
          sub_22BD5FFD4();
          v328 = sub_22BD6108C();
          sub_22BB336D0(v328, v329, v330, v62);
          sub_22BB3B69C();
          sub_22BD80A04();
          v6391 = sub_22BDB8444();
          v6385 = v331;
          v332 = sub_22BDB8444();
          v334 = sub_22BD63008(v332, v333);
          (v20)(v334);
          sub_22BD60F68();

          v335 = sub_22BB53C48();
          sub_22BB352C4(v335, v336);

          sub_22BD61C08();
          sub_22BBBEBD8();
          (*(v6410 + 104))(v37, v6438, v6416);
          sub_22BD64360();
          sub_22BBE6DE0(&qword_27D8E6470, &qword_22BDCE320);
          sub_22BB6C5A8();
          sub_22BD61E28();
          v337(v37);
          sub_22BB32824();
          goto LABEL_90;
        }

        v37 = *(v14 + 4352);
        v17 = v102;
        sub_22BD61670();
        v547 = sub_22BBE6DE0(&qword_27D8E64C8, &qword_22BDCE3D0);
        sub_22BD63E28(v547);
        sub_22BB32824();
        sub_22BB34648();
        v548 = sub_22BB39478();
        sub_22BB74044(v548, v549, v37);
        v45 = v6466;
        goto LABEL_98;
      case 4u:
        sub_22BB96D4C();
        v39 = v296[1];
        v16 = v296[2];
        v37 = v296[3];
        v20 = v296[4];
        sub_22BB5837C();
        v17 = *(v297 + 80);
        sub_22BD61468();
        v299 = *(v298 + 8);
        sub_22BB71D80();
        sub_22BD6232C();
        if (v165)
        {
          v301 = 0;
        }

        v302 = v300 | v301;

        LODWORD(v6435) = v302;
        LOBYTE(v302) = sub_22BD7577C(v302, v299);

        if ((v302 & 1) == 0)
        {
          sub_22BB93D44();

          sub_22BB3531C(v6454, v6456);
          goto LABEL_12;
        }

        v1826 = sub_22BD622A0();
        sub_22BB89ADC(v1826, v1827);
        sub_22BD636B0();

        v20 = v17;

        sub_22BD635CC();

        v17 = v6456;
        v1828 = sub_22BD63E7C();
        sub_22BB352C4(v1828, v1829);
        sub_22BB93D90();
        sub_22BDB5D94();
        v1830 = sub_22BB96CC0();
        v1831(v1830);
        sub_22BDB5E14();
        sub_22BBE6DE0(&qword_27D8E6470, &qword_22BDCE320);
        v37 = v6398;
        sub_22BD61B48();
        v39 = v6385;
        sub_22BDBAF34();

        v1832 = sub_22BD63E7C();
        sub_22BB3531C(v1832, v1833);
        v1834 = sub_22BB9607C();
        v1835(v1834);
        v14 = v102;
        goto LABEL_96;
      case 5u:
        v121 = sub_22BB758A0();
        (v45)(v121);
        sub_22BD64948();
        if ((v122 & 1) == 0)
        {
          sub_22BD614A0();
          v123();
LABEL_12:
          v124 = sub_22BB3A9D4();
          goto LABEL_27;
        }

        sub_22BB7021C();
        v17 += 88;
        v338 = sub_22BB37074();
        if (v339(v338) == v102)
        {
          sub_22BB69B34();
          v6439 = v340;
          sub_22BD5F8B4();
          sub_22BB955CC();
          sub_22BB31234();
          sub_22BD61BE0();
          v13 = *(v341 + 2728);
          sub_22BB707B8();
          v6417 = v342;
          v343 = sub_22BD61400();
          v344(v343);
          v345 = sub_22BD60280();
          v346(v345);
          *(v45 + 2) = 1;
          sub_22BD62270();
          MEMORY[0x23189FC60]();
LABEL_95:
          v557 = sub_22BB5810C();
          MEMORY[0x23189FDB0](v557);
          v558 = sub_22BD63484();
          v559(v558);
          sub_22BDB5E14();
          sub_22BBE6DE0(&qword_27D8E6470, &qword_22BDCE320);
          v37 = v6439;
          sub_22BD62448();
          v39 = v6417;
          sub_22BDBAF34();
          v560 = sub_22BD61754();
          v561(v560);
          v562 = sub_22BD62DE8();
          v563(v562, v13);
          v564 = sub_22BD62480();
          v565(v564);
LABEL_96:
          v45 = v6466;
          goto LABEL_97;
        }

        sub_22BD64D38();
        if (v165)
        {
          sub_22BB69B34();
          v6439 = v550;
          sub_22BD5F8B4();
          sub_22BB955CC();
          sub_22BB31234();
          sub_22BB3E550();
          v13 = *(v551 + 2704);
          sub_22BB707B8();
          v6417 = v552;
          v553 = sub_22BD61400();
          v554(v553);
          v555 = sub_22BD60280();
          v556(v555);
          *(v45 + 2) = 0;
          sub_22BD62270();
          MEMORY[0x23189FC80]();
          goto LABEL_95;
        }

        sub_22BD64A80();
        if (v848)
        {
          sub_22BD60EAC();
          v849 = *(v14 + 2688);
          v16 = *(v14 + 2680);
          v850 = sub_22BC54A3C();
          v851(v850);
          v17 = &v849[4];
          v852 = sub_22BD60F04();
          v853(v852);
          v37 = sub_22BDB5BE4();
          sub_22BD44210(v37);
          if (!v6466)
          {
            sub_22BB701E8();
            sub_22BD5A87C(v16);
            sub_22BD64DC8();
            sub_22BBE6DE0(&qword_27D8E6558, &unk_22BDCFC00);
            sub_22BB97200();
            v1903 = sub_22BDBAB14();
            if (sub_22BD63E94(v1903))
            {
              sub_22BD64C10();
              do
              {
                sub_22BD618B8();
                sub_22BB954F0(v1904);
                sub_22BD65530();
                v1905 = sub_22BD60F9C();
                v1906(v1905);
                sub_22BD62E50();
                if (v62)
                {
                  sub_22BBC066C();
                  sub_22BD62584();
                  sub_22BD80B94(v1907);
                }

                sub_22BB954F8(v37);
                sub_22BBD1A4C();
              }

              while (!v165);
            }

            sub_22BD61DB8();
            name = v1908;
            sub_22BB36E60();
            v6385 = *(v14 + 3336);
            v6452 = *(v14 + 3200);
            sub_22BD64D8C();
            sub_22BD64D80();
            sub_22BD61280();
            v13 = sub_22BDB95A4();
            v1909 = sub_22BDB5C04();
            sub_22BD63E0C(v1909);
            sub_22BB702A8();

            sub_22BD46274(v20);
            sub_22BD64CA8();
            sub_22BBE6DE0(&qword_27D8E6538, &qword_22BDCE448);
            sub_22BB976D0();
            MEMORY[0] = sub_22BDB5BF4();
            MEMORY[8] = v1910;
            sub_22BD44F8C(v20);
            sub_22BD65488();
            sub_22BD634A0();
            swift_storeEnumTagMultiPayload();
            sub_22BB370B8();
            sub_22BD652A8(v1911, v1912);
            sub_22BB35CBC();
            sub_22BB34648();
            v16 = v6385;
            sub_22BD65398();
            v1913 = sub_22BB6FCB8();
            MEMORY[0x23189FDA0](v1913);
            v1914 = sub_22BD61DA4();
            v1915(v1914);
            sub_22BB6FCB8();
            sub_22BDB5E14();
            sub_22BBE6DE0(&qword_27D8E6470, &qword_22BDCE320);
            sub_22BD60A2C();
            v39 = v6409;
            sub_22BDBAF34();
            v1916 = sub_22BB9607C();
            v1917(v1916, v6452);
            v1918 = sub_22BD61D90();
            v1919(v1918);
            v1920 = sub_22BD60C18();
            v1921(v1920);

            v6395 = v45;
            goto LABEL_97;
          }

          sub_22BB8AEEC();
          sub_22BD651D0();
          sub_22BBE6DE0(qword_27D8E27F8, &unk_22BDBCE20);
          sub_22BB76654();
          v1683 = swift_dynamicCast();
          if (v1683)
          {
            sub_22BD651B8(v1683);
            sub_22BB322B0();
            v1684 = swift_allocObject();
            sub_22BD6002C(v1684);
            v1685 = sub_22BDB77C4();
            v17 = sub_22BDBB114();
            sub_22BD616A8();
            v1686 = swift_allocObject();
            sub_22BD60E0C(v1686);
            sub_22BD616A8();
            v1687 = swift_allocObject();
            sub_22BD617B4(v1687);
            sub_22BB322B0();
            v1688 = swift_allocObject();
            sub_22BB97500(v1688);
            sub_22BB322B0();
            v1689 = swift_allocObject();
            sub_22BD6040C(v1689);
            v1690 = sub_22BD6374C();
            v1691 = sub_22BBC2570(v1690, xmmword_22BDC2F20);
            v1691[2].n128_u64[0] = v1692;
            v1691[2].n128_u64[1] = v20;
            v1691[3].n128_u64[0] = sub_22BB89C08;
            v1691[3].n128_u64[1] = v16;
            v1691[4].n128_u64[0] = sub_22BB89C7C;
            v1691[4].n128_u64[1] = v37;

            if (sub_22BB72E44())
            {
              sub_22BB67968(12);
              v1693 = sub_22BB38198();
              sub_22BD64138(v1693);
              sub_22BB3A9B0(v1688);
              *(v14 + 1072) = v20;
              v1694 = sub_22BD5FBD4();
              sub_22BB67984(v1694, v1695, v1696, v1697);

              sub_22BB385A8();
              *(v14 + 1072) = v16;
              v1698 = sub_22BD5FBD4();
              sub_22BB67984(v1698, v1699, v1700, v1701);

              sub_22BBCC154();
              *(v14 + 1072) = v37;
              v1702 = sub_22BD5FBD4();
              sub_22BB67984(v1702, v1703, v1704, v1705);
              sub_22BBD1A28();

              sub_22BB337EC(&dword_22BB2C000, v1685, v17, "[SessionCoordinator %{public}s] | Injected events violate security policy.");
              sub_22BB30DDC();
              sub_22BB679C0();
            }

            sub_22BD624B8();

            v1851 = sub_22BB70554();
            v1852(v1851);
            sub_22BD62C34();
            sub_22BB3A738();
            sub_22BD60E9C();
            sub_22BB38BC4();
            v39 = *(v6465 + 2696);
            sub_22BD61C64();
            v6448 = v1853;
            v6452 = v1854;
            sub_22BB38E74();
            sub_22BB70778(v1855);
            MEMORY[0x23189FBE0]();
            v1856 = sub_22BB6A0A0();
            v1857(v1856);
            sub_22BD60C68();
            sub_22BDB5D34();
            v1858 = sub_22BB70294();
            v1859(v1858);
            sub_22BBBFFBC();
            sub_22BDB5E14();
            sub_22BBE6DE0(&qword_27D8E6470, &qword_22BDCE320);
            sub_22BD617A4();
            sub_22BDBAF34();
            v1860 = sub_22BD60E8C();
            v1861(v1860);
            v1862 = sub_22BD63FA8();
            v1863(v1862);
            v1864 = sub_22BD60C18();
            v1865(v1864);
            v1866 = *(v14 + 2056);
            goto LABEL_247;
          }

          sub_22BD65188();
          sub_22BDB63E4();
          sub_22BB322B0();
          v16 = swift_allocObject();
          sub_22BB3CF50(v16);
          sub_22BB366B8();
          v1706 = swift_allocObject();
          sub_22BD62774(v1706);
          sub_22BD640C0();
          v1707 = v6466;
          v6466 = sub_22BDB77C4();
          LODWORD(v6456) = sub_22BDBB114();
          sub_22BD616A8();
          v13 = swift_allocObject();
          sub_22BB97ED4(v13);
          sub_22BD616A8();
          v1708 = swift_allocObject();
          sub_22BD61698(v1708);
          sub_22BB322B0();
          swift_allocObject();
          sub_22BB3E0C4();
          *(v1709 + 16) = v1710;
          *(v1709 + 24) = v16;
          sub_22BB322B0();
          v1711 = swift_allocObject();
          sub_22BB3DEE8(v1711);
          sub_22BD616A8();
          v1712 = swift_allocObject();
          sub_22BD61B1C(v1712);
          sub_22BD616A8();
          v1713 = swift_allocObject();
          sub_22BD63400(v1713);
          sub_22BB322B0();
          swift_allocObject();
          sub_22BBBEBAC();
          *(v1714 + 16) = v1715;
          *(v1714 + 24) = v37;
          sub_22BB322B0();
          v1716 = swift_allocObject();
          sub_22BB3965C(v1716);
          sub_22BB322B0();
          v1717 = swift_allocObject();
          sub_22BB69760(v1717);
          v1718 = sub_22BB97DF8();
          sub_22BB31444(v1718);
          v1719[4] = v1720;
          v1719[5] = v13;
          v1719[6] = sub_22BB89C08;
          v1719[7] = v62;
          v1719[8] = sub_22BB89C7C;
          v1719[9] = v1711;
          v1719[10] = sub_22BB89C08;
          v1719[11] = v17;
          v1719[12] = sub_22BB89C08;
          v1719[13] = v20;
          v1719[14] = sub_22BD5F648;
          v1719[15] = v1717;
          sub_22BD65470();

          if (sub_22BD62224())
          {
            v6451 = v17;
            v1721 = sub_22BB67968(22);
            sub_22BD63870();
            v1722 = sub_22BD62730();
            sub_22BD64038(v1722);
            sub_22BB897E4(v1721);
            *(v14 + 2024) = v1723;
            *(v14 + 1000) = sub_22BB89C08;
            *(v14 + 1008) = v37;
            v1724 = sub_22BB72008();
            sub_22BB67984(v1724, v1725, v1726, v1727);

            sub_22BD604CC();
            *(v14 + 1008) = v62;
            v1728 = sub_22BB72008();
            sub_22BB67984(v1728, v1729, v1730, v1731);

            sub_22BD604E4();
            *(v14 + 1008) = v1711;
            v1732 = sub_22BB72008();
            sub_22BB67984(v1732, v1733, v1734, v1735);

            sub_22BD604CC();
            *(v14 + 1008) = v6451;
            v1736 = sub_22BB72008();
            sub_22BB67984(v1736, v1737, v1738, v1739);

            sub_22BD604CC();
            *(v14 + 1008) = v20;
            v1740 = sub_22BB72008();
            sub_22BB67984(v1740, v1741, v1742, v1743);

            sub_22BD604B4();
            *(v14 + 1008) = v1717;
            v1744 = sub_22BB72008();
            sub_22BB67984(v1744, v1745, v1746, v1747);
            sub_22BD61A18();

            sub_22BBD1A34();
            sub_22BB6F9C8();
            sub_22BD636C8(v1748, v1749, v1750, "[SessionCoordinator %{public}s] | Failed to decode proto data from debugger: %{public}@");
            sub_22BB325EC(v16, &unk_27D8E6A70, &unk_22BDBCDB0);
            sub_22BB89BBC();
            sub_22BB35808();
            sub_22BB679C0();
          }

          sub_22BB89F08(*(v14 + 3880));
          sub_22BD651A0();

          v1867 = sub_22BD6268C();
          v1868(v1867, v13);
          sub_22BD62C34();
          LODWORD(v6385) = *(v14 + 4848);
          sub_22BB34150();
          sub_22BD60954(v1869);
          v6429 = *(v14 + 2696);
          sub_22BD6477C();
          v6442 = v1870;
          sub_22BD60AC0();
          sub_22BD647D4(v1871);
          MEMORY[0x23189FBE0]();
          goto LABEL_249;
        }

        sub_22BD649AC();
        if (v1263)
        {
          v1264 = sub_22BD5F900();
          v1265(v1264);
          v1266 = sub_22BB6FF74();
          v1267(v1266);
          v1268 = sub_22BB8ADB4();
          v1269(v1268);
          sub_22BDB96A4();
          v1270 = sub_22BB53C48();
          v1271(v1270);
          sub_22BDB9744();
          v1272 = sub_22BD6161C();
          v1273(v1272);
          sub_22BD64734();
          v6395 = v6466;
          if (v6466)
          {
            sub_22BD63C38();
            sub_22BDB63E4();
            sub_22BB322B0();
            v1274 = swift_allocObject();
            sub_22BB977E8(v1274);
            sub_22BB366B8();
            v1275 = swift_allocObject();
            sub_22BBC0200(v1275);
            v1276 = v6466;
            v1277 = v20;
            v6469 = sub_22BDB77C4();
            sub_22BDBB114();
            sub_22BD616A8();
            v1278 = swift_allocObject();
            sub_22BD60E0C(v1278);
            sub_22BD616A8();
            v1279 = swift_allocObject();
            sub_22BD61698(v1279);
            sub_22BB322B0();
            v1280 = swift_allocObject();
            sub_22BB31A44(v1280);
            sub_22BB322B0();
            v1281 = swift_allocObject();
            sub_22BB3DEE8(v1281);
            sub_22BD616A8();
            v14 = swift_allocObject();
            sub_22BD61EB0(v14);
            sub_22BD616A8();
            v1282 = swift_allocObject();
            sub_22BD62B48(v1282);
            v16 = v6469;
            sub_22BB322B0();
            swift_allocObject();
            sub_22BBBEBAC();
            *(v1283 + 16) = v1284;
            *(v1283 + 24) = v37;
            sub_22BB322B0();
            v1285 = swift_allocObject();
            sub_22BB3965C(v1285);
            sub_22BB322B0();
            v1286 = swift_allocObject();
            sub_22BB69760(v1286);
            v1287 = sub_22BB97DF8();
            sub_22BB31444(v1287);
            v1288[4] = v1289;
            v1288[5] = v20;
            v1288[6] = sub_22BB89C08;
            v1288[7] = v62;
            v1288[8] = sub_22BB89C7C;
            v1288[9] = v1281;
            v1288[10] = sub_22BB89C08;
            v1288[11] = v14;
            v1288[12] = sub_22BB89C08;
            v1288[13] = v17;
            v1288[14] = sub_22BD5F648;
            v1288[15] = v1286;
            sub_22BD64764();

            if (sub_22BD62224())
            {
              sub_22BB67968(22);
              sub_22BBB5D38();
              v1290 = sub_22BD62BF4();
              v13[259] = v20;
              v13[258] = v1290;
              sub_22BD62374();
              v13[263] = v1286;
              v13[135] = sub_22BB89C08;
              v13[136] = v37;
              v1291 = sub_22BB6C714();
              sub_22BB67984(v1291, v1292, v1293, v1294);

              sub_22BB96064();
              v13[136] = v62;
              v1295 = sub_22BB6C714();
              sub_22BB67984(v1295, v1296, v1297, v1298);

              sub_22BD605BC();
              v13[136] = v1281;
              v1299 = sub_22BB6C714();
              sub_22BB67984(v1299, v1300, v1301, v1302);

              v13[135] = sub_22BB89C08;
              v13[136] = v14;
              v1303 = sub_22BB6C714();
              sub_22BB67984(v1303, v1304, v1305, v1306);

              sub_22BB96064();
              v13[136] = v17;
              v1307 = sub_22BB6C714();
              sub_22BB67984(v1307, v1308, v1309, v1310);

              v13[135] = sub_22BD5F648;
              v13[136] = v1286;
              v1311 = sub_22BB6C714();
              sub_22BB67984(v1311, v1312, v1313, v1314);
              sub_22BD62CF0();
              sub_22BBD1A34();
              sub_22BD64B84();
              sub_22BD636C8(v1315, v1316, v1317, "[SessionCoordinator %{public}s] Failed to encode to proto data for debugger: %{public}@");
              sub_22BB325EC(v20, &unk_27D8E6A70, &unk_22BDBCDB0);
              sub_22BB77E48();
              sub_22BB32FA4(v1290);
              sub_22BB89BBC();
              sub_22BB679C0();
            }

            sub_22BD61E14();
            v20 = v13[479];

            v1892 = sub_22BD6268C();
            v1893(v1892, v20);
            v6466 = v6395;
            LODWORD(v6391) = *(v13 + 1217);
            v6407 = *(v13 + 1213);
            sub_22BB9666C();
            sub_22BB9664C();
            v6402 = v1894;
            v39 = v13[334];
            sub_22BD64DD4();
            v6444 = v1895;
            sub_22BD6116C();
            MEMORY[0x23189FC40]();
            sub_22BB6FC88();
            sub_22BD64AA0();
            v1896();
            sub_22BD63938();
            sub_22BDB5D34();
            v1897 = sub_22BD62C28();
            v1898(v1897, v6407, v6402);
            sub_22BBBFFBC();
            sub_22BDB5E14();
            sub_22BBE6DE0(&qword_27D8E6470, &qword_22BDCE320);
            sub_22BD61834();

            v1899 = sub_22BB96A1C();
            v1900(v1899, v6448);
            (*(v62 + 8))(v39, v6444);
            v1901 = sub_22BB6B714();
            v1902(v1901);
            v45 = 0;
            sub_22BD64BF8();
          }

          else
          {
            sub_22BD64C4C();
            v6421 = v1881;
            sub_22BD6109C();
            v6443 = v13[402];
            sub_22BB8AD4C();
            v6414 = v1882;
            sub_22BD62288();
            v6430 = v1883;

            sub_22BD646D4();
            sub_22BB3FBBC();
            sub_22BDB5D64();
            v1884 = sub_22BD64DF8();
            v1885(v1884, v6421, v6414);
            sub_22BD62724();
            sub_22BDB5E14();
            sub_22BBE6DE0(&qword_27D8E6470, &qword_22BDCE320);
            v17 = v6443;
            v39 = v6430;
            sub_22BDBAF34();
            v1886 = sub_22BD633C4();
            v1887(v1886);
            v1888 = sub_22BB70264();
            v1889(v1888, v6448);
            v1890 = sub_22BD60C18();
            v1891(v1890);
            v45 = 0;
            v14 = v13;
          }

          goto LABEL_97;
        }

        sub_22BBC01F4();
        if (!v1472)
        {
          sub_22BD647A8();
          if (v1836)
          {
            sub_22BD5FA30();
            sub_22BB58D38();
            v6441 = v1837;
            v1838 = sub_22BC54A3C();
            v1839(v1838);
            v1840 = sub_22BD60294();
            v1841(v1840);
            sub_22BD653C8();
            v1842 = sub_22BBC055C();
            MEMORY[0x23189FDC0](v1842);
            v1843 = sub_22BD63484();
            v1844(v1843);
            sub_22BD642A0();
            sub_22BDB5E14();
            sub_22BBE6DE0(&qword_27D8E6470, &qword_22BDCE320);
            v37 = v6448;
            sub_22BB5810C();
            v39 = v6441;
            sub_22BDBAF34();
            v1845 = sub_22BD6160C();
            v1846(v1845);
            ++v16;
            v1847 = sub_22BB35464();
            v1848(v1847);
            v1849 = sub_22BD649D0();
          }

          else
          {
            sub_22BD64D50();
            if (!v1922)
            {
              sub_22BD64C9C();
              if (v2057)
              {
                v6445 = *(v14 + 4840);
                sub_22BB32468();
                v17 = *(v6465 + 2536);
                v13 = *(v6465 + 2528);
                v2058 = sub_22BB381B4();
                v2059(v2058);
                v2060 = sub_22BD601CC();
                v2061(v2060);
                sub_22BD63EF8();
                sub_22BD5FC18();

                sub_22BD62270();
                MEMORY[0x23189FB20]();
              }

              else
              {
                sub_22BD64C34();
                if (!v2099)
                {
                  sub_22BD64C1C();
                  if (v2129)
                  {
                    v6462 = *(v14 + 3464);
                    sub_22BB96B90();
                    v2131 = *(v14 + 2488);
                    v2132 = sub_22BC54A3C();
                    v2133(v2132);
                    v2134 = sub_22BB70250();
                    v2135(v2134);
                    sub_22BB71FB0();
                    sub_22BDB5BA4();
                    sub_22BD644B8();
                    v2136 = sub_22BD61590();
                    v2137(v2136);
                    v2138 = sub_22BB3A840();
                    sub_22BB3AA28(v2138, v2139, v6462);
                    sub_22BB97DC0();
                    if (v165)
                    {
                      sub_22BB325EC(*(v14 + 2776), &qword_27D8E64D8, &qword_22BDCE3E0);
                    }

                    else
                    {
                      v16 = *(v14 + 3472);
                      v20 = *(v14 + 2784);
                      v62 = *(v14 + 2600);
                      sub_22BB3737C();
                      sub_22BB3A518(v2140, v16);
                      v2141 = sub_22BD65440();
                      sub_22BB75894(v2141, v2142);
                      v2143 = sub_22BBE6DE0(&qword_27D8E64C8, &qword_22BDCE3D0);
                      v2144 = sub_22BD63E44(v2143);
                      sub_22BD646A4(v2144);
                      sub_22BD61854();
                      sub_22BB32824();
                      sub_22BB34648();
                    }

                    v17 = v2131 != 1;
                    sub_22BD61390();
                    v6431 = *(v14 + 3216);
                    sub_22BD61308();
                    v6447 = v39;
                    sub_22BB95A24();
                    v6448 = v2187;
                    v6452 = v2188;
                    sub_22BD619BC();
                    v6422 = v2189;
                    MEMORY[0x23189FB80]();
                    sub_22BD63334();
                    sub_22BDB5DB4();
                    v16 += 13;
                    v2190 = sub_22BD636A4();
                    v2191(v2190);
                    sub_22BB97B18();
                    sub_22BDB5E14();
                    sub_22BBE6DE0(&qword_27D8E6470, &qword_22BDCE320);
                    v39 = v6422;
                    v37 = v6431;
                    sub_22BBC055C();
                    sub_22BDBAF34();
                    v2192 = sub_22BD6160C();
                    v2193(v2192);
                    (*(v62 + 8))(v6447, v6448);
                    v2194 = sub_22BB3ACA0();
                    v2195(v2194);
                    goto LABEL_96;
                  }

                  sub_22BD616CC(v2130);
                  sub_22BB322B0();
                  v2159 = swift_allocObject();
                  v2160 = sub_22BD5FB20(v2159);
                  v2161(v2160);
                  sub_22BD60E54();
                  v2162 = swift_allocObject();
                  v2163 = sub_22BD61D68(v2162);
                  (v45)(v2163);

                  v6463 = sub_22BDB77C4();
                  LODWORD(v6452) = sub_22BDBB114();
                  sub_22BD616A8();
                  v2164 = swift_allocObject();
                  sub_22BD61784(v2164);
                  sub_22BD616A8();
                  v2165 = swift_allocObject();
                  sub_22BD63308(v2165);
                  sub_22BB322B0();
                  v2166 = swift_allocObject();
                  sub_22BBBE7C0(v2166);
                  sub_22BB322B0();
                  v17 = swift_allocObject();
                  sub_22BB69C9C(v17);
                  sub_22BD616A8();
                  v20 = swift_allocObject();
                  sub_22BB6C06C(v20);
                  sub_22BD616A8();
                  v2167 = swift_allocObject();
                  sub_22BD64AC4(v2167);
                  sub_22BB322B0();
                  v2168 = swift_allocObject();
                  sub_22BD6039C(v2168);
                  sub_22BB322B0();
                  v2169 = swift_allocObject();
                  sub_22BB960B8(v2169);
                  v37 = sub_22BB97DF8();
                  sub_22BB34620(v37);
                  v2170[4] = v2171;
                  v2170[5] = v45;
                  v2170[6] = sub_22BB89C08;
                  v2170[7] = v14;
                  v2170[8] = sub_22BB89C7C;
                  v2170[9] = v17;
                  v2170[10] = sub_22BB89C08;
                  v2170[11] = v20;
                  v2170[12] = sub_22BB89C08;
                  v2170[13] = v6466;
                  v2170[14] = sub_22BB89C7C;
                  v2170[15] = v2169;

                  sub_22BD63C2C();

                  v2172 = sub_22BD624F4();
                  if (!os_log_type_enabled(v2172, v2173))
                  {
                    sub_22BD61ADC();

                    v2196 = sub_22BD60A40();
                    v2197(v2196);
                    v2198 = v39[1].isa;
                    ++v39;
                    v2198(v6452, v6448);
                    v2199 = sub_22BBC03B8();
                    v2200(v2199);
                    v14 = v13;
                    goto LABEL_96;
                  }

                  sub_22BB67968(22);
                  v2174 = sub_22BBBFF34();
                  v13[293] = 0;
                  v13[289] = v2174;
                  sub_22BBBEB6C();
                  sub_22BD60EBC(v2175);
                  v13[172] = v45;
                  sub_22BBBEAA0();
                  if (!v6466)
                  {

                    sub_22BB3B510();
                    *(v2176 + 1368) = v2177;
                    *(v2176 + 1376) = v14;
                    sub_22BD60E34(v2176);

                    sub_22BB70564();
                    *(v2178 + 1368) = v2179;
                    *(v2178 + 1376) = v17;
                    sub_22BD60E34(v2178);

                    sub_22BB3B510();
                    *(v2180 + 1368) = v2181;
                    *(v2180 + 1376) = v20;
                    sub_22BD60E34(v2180);

                    sub_22BB3B510();
                    *(v2182 + 1368) = v2183;
                    *(v2182 + 1376) = v6454;
                    sub_22BD60E34(v2182);

                    sub_22BB70564();
                    *(v2184 + 1368) = v2185;
                    *(v2184 + 1376) = v2169;
                    sub_22BD60E34(v2184);
                    sub_22BBC03A4();

                    sub_22BD61B3C();
                    sub_22BD636C8(&dword_22BB2C000, v6463, v2186, "[SessionCoordinator %{public}s] Unrecognized debugger event: %s.");
                    sub_22BD61EE4();
                    sub_22BB89BBC();
                    sub_22BB679C0();
                  }

LABEL_356:

                  goto LABEL_368;
                }

                v6445 = *(v14 + 4840);
                sub_22BB32468();
                v17 = *(v6465 + 2512);
                v13 = *(v6465 + 2504);
                v2100 = sub_22BB381B4();
                v2101(v2100);
                v2102 = sub_22BD601CC();
                v2103(v2102);
                sub_22BD63EF8();
                sub_22BD5FBE8();

                sub_22BD62270();
                MEMORY[0x23189FB40]();
              }

              v2104 = sub_22BD60C68();
              MEMORY[0x23189FD40](v2104);
              v2105 = sub_22BD62240();
              v2106(v2105, v6445, v6409);
              v39 = v6415;
              sub_22BB6FCB8();
              sub_22BDB5E14();
              sub_22BBE6DE0(&qword_27D8E6470, &qword_22BDCE320);
              sub_22BB70270();
              v2107 = sub_22BB8EAA8();
              v2108(v2107);
              v45 = v6466;
              v2109 = sub_22BD62FA4();
              v2110(v2109);
              v2111 = sub_22BD641B0();
              v2112(v2111);
              v6395 = v6466;
              goto LABEL_97;
            }

            sub_22BD64018();
            sub_22BD5FADC();
            sub_22BBE6DE0(&qword_27D8E63F8, &qword_22BDCE220);
            sub_22BD64960();
            sub_22BBE6DE0(&qword_27D8E6008, &qword_22BDCD538);
            v1923 = sub_22BD61330();
            sub_22BD5B890(v1923, 1);
            v1924 = sub_22BD60DDC();
            v1925(v1924);
            v1926 = sub_22BD63D10();
            sub_22BD74A58(v1926, v1927);
            v1928 = sub_22BD61CB4();
            v1929(v1928);
            sub_22BD61D54();
            swift_storeEnumTagMultiPayload();
            sub_22BD5F83C();
            swift_storeEnumTagMultiPayload();
            sub_22BB3630C();
            sub_22BD65290(v1930, v1931);
            sub_22BB35CBC();
            sub_22BB34648();
            v1932 = sub_22BD62FB4();
            v1933(v1932);
            v1849 = sub_22BD63194();
          }

          v1850(v1849);
          goto LABEL_96;
        }

        v1473 = sub_22BD60BB8();
        v1474(v1473);
        v1475 = sub_22BD60BA4();
        v1476(v1475);
        v1477 = sub_22BDB5C54();
        sub_22BBC0358(v1477);
        if (v6466)
        {

          sub_22BB8AEEC();
          sub_22BD654E8();
          sub_22BBE6DE0(qword_27D8E27F8, &unk_22BDBCE20);
          sub_22BD64D2C();
          v1944 = swift_dynamicCast();
          if (v1944)
          {
            sub_22BD654D0(v1944);
            sub_22BB322B0();
            v1945 = swift_allocObject();
            sub_22BD6002C(v1945);
            v39 = sub_22BDB77C4();
            v17 = sub_22BDBB114();
            sub_22BD616A8();
            v16 = swift_allocObject();
            sub_22BB97ED4(v16);
            sub_22BD616A8();
            v37 = swift_allocObject();
            sub_22BB6FB2C(v37);
            sub_22BB322B0();
            v1946 = swift_allocObject();
            sub_22BB97500(v1946);
            sub_22BB322B0();
            v20 = swift_allocObject();
            sub_22BD6076C(v20);
            v1947 = sub_22BD6374C();
            v1948 = sub_22BBC2570(v1947, xmmword_22BDC2F20);
            v1948[2].n128_u64[0] = v1949;
            v1948[2].n128_u64[1] = v16;
            v1948[3].n128_u64[0] = sub_22BB89C08;
            v1948[3].n128_u64[1] = v37;
            v1948[4].n128_u64[0] = sub_22BB89C7C;
            v1948[4].n128_u64[1] = v20;

            if (sub_22BB72E44())
            {
              sub_22BB67968(12);
              v1950 = sub_22BB38198();
              sub_22BB89B00(v1950);
              sub_22BB6BD50(v1946);
              *(v14 + 1200) = v16;
              v1951 = sub_22BD5FC64();
              sub_22BB67984(v1951, v1952, v1953, v1954);

              sub_22BD5F824();
              *(v14 + 1200) = v37;
              v1955 = sub_22BD5FC64();
              sub_22BB67984(v1955, v1956, v1957, v1958);

              sub_22BD5F80C();
              *(v14 + 1200) = v20;
              v1959 = sub_22BD5FC64();
              sub_22BB67984(v1959, v1960, v1961, v1962);
              sub_22BB96A7C();

              sub_22BB337EC(&dword_22BB2C000, v39, v17, "[SessionCoordinator %{public}s] | Injected events violate security policy.");
              sub_22BB30DDC();
              sub_22BB679C0();
            }

            sub_22BD624B8();

            v2062 = sub_22BB70554();
            v2063(v2062);
            sub_22BD62C34();
            sub_22BB3A738();
            sub_22BD60E9C();
            sub_22BB38BC4();
            sub_22BD62F94(v2064);
            sub_22BD60B7C();
            v6448 = v2065;
            v6452 = v2066;
            sub_22BB38E74();
            sub_22BB70778(v2067);
            MEMORY[0x23189FC10]();
            v2068 = sub_22BB6A0A0();
            v2069(v2068);
            sub_22BD60C68();
            sub_22BDB5D34();
            v2070 = sub_22BB70294();
            v2071(v2070);
            sub_22BBBFFBC();
            sub_22BDB5E14();
            sub_22BBE6DE0(&qword_27D8E6470, &qword_22BDCE320);
            sub_22BD617A4();
            sub_22BDBAF34();
            v2072 = sub_22BD60E8C();
            v2073(v2072);
            v2074 = sub_22BD63FA8();
            v2075(v2074);
            v2076 = sub_22BD60C18();
            v2077(v2076);
            v1866 = *(v14 + 2304);
LABEL_247:

LABEL_251:
            v45 = 0;
            goto LABEL_97;
          }

          sub_22BD654B8();
          sub_22BDB63E4();
          sub_22BB322B0();
          v16 = swift_allocObject();
          sub_22BB3CF50(v16);
          sub_22BB366B8();
          v1963 = swift_allocObject();
          sub_22BD62774(v1963);
          sub_22BD640C0();
          v1964 = v6466;
          v6466 = sub_22BDB77C4();
          LODWORD(v6456) = sub_22BDBB114();
          sub_22BD616A8();
          v13 = swift_allocObject();
          sub_22BB97ED4(v13);
          sub_22BD616A8();
          v1965 = swift_allocObject();
          sub_22BD61698(v1965);
          sub_22BB322B0();
          swift_allocObject();
          sub_22BB3E0C4();
          *(v1966 + 16) = v1967;
          *(v1966 + 24) = v16;
          sub_22BB322B0();
          v1711 = swift_allocObject();
          sub_22BB3DEE8(v1711);
          sub_22BD616A8();
          v1968 = swift_allocObject();
          sub_22BD61B1C(v1968);
          sub_22BD616A8();
          v1969 = swift_allocObject();
          sub_22BD63400(v1969);
          sub_22BB322B0();
          swift_allocObject();
          sub_22BBBEBAC();
          *(v1970 + 16) = v1971;
          *(v1970 + 24) = v37;
          sub_22BB322B0();
          v1972 = swift_allocObject();
          sub_22BB3FE28(v1972);
          sub_22BB322B0();
          v1973 = swift_allocObject();
          sub_22BB8E554(v1973);
          v1974 = sub_22BB97DF8();
          sub_22BB31444(v1974);
          v1975[4] = v1976;
          v1975[5] = v13;
          v1975[6] = sub_22BB89C08;
          v1975[7] = v62;
          v1975[8] = sub_22BB89C7C;
          v1975[9] = v1711;
          v1975[10] = sub_22BB89C08;
          v1975[11] = v17;
          v1975[12] = sub_22BB89C08;
          v1975[13] = v20;
          v1975[14] = sub_22BD5EBD8;
          v1975[15] = v1973;
          sub_22BD65470();

          if (sub_22BD62224())
          {
            sub_22BB67968(22);
            sub_22BD63820();
            v1977 = sub_22BD62730();
            sub_22BD64CE4(v1977);
            sub_22BD60DCC();
            *(v14 + 2272) = v1978;
            *(v14 + 1240) = sub_22BB89C08;
            *(v14 + 1248) = v37;
            v1979 = sub_22BB72E30();
            sub_22BB67984(v1979, v1980, v1981, v1982);

            sub_22BD6070C();
            *(v14 + 1248) = v62;
            v1983 = sub_22BB72E30();
            sub_22BB67984(v1983, v1984, v1985, v1986);

            sub_22BB73B04();
            *(v14 + 1248) = v1711;
            v1987 = sub_22BB72E30();
            sub_22BB67984(v1987, v1988, v1989, v1990);

            sub_22BD6070C();
            *(v14 + 1248) = v17;
            v1991 = sub_22BB72E30();
            sub_22BB67984(v1991, v1992, v1993, v1994);

            sub_22BD6070C();
            *(v14 + 1248) = v20;
            v1995 = sub_22BB72E30();
            sub_22BB67984(v1995, v1996, v1997, v1998);

            sub_22BD606F4();
            *(v14 + 1248) = v1973;
            v1999 = sub_22BB72E30();
            sub_22BB67984(v1999, v2000, v2001, v2002);
            sub_22BD61A18();

            sub_22BBD1A34();
            sub_22BB6F9C8();
            sub_22BD63EE0(v2003, v2004, v2005, "[SessionCoordinator %{public}s] | Failed to decode proto data from debugger: %{public}@");
            sub_22BB325EC(v16, &unk_27D8E6A70, &unk_22BDBCDB0);
            sub_22BB89BBC();
            sub_22BB35808();
            sub_22BB679C0();
          }

          sub_22BB89F08(*(v14 + 3848));
          sub_22BD651A0();

          v2078 = sub_22BD6268C();
          v2079(v2078, v13);
          sub_22BD62C34();
          LODWORD(v6385) = *(v14 + 4848);
          sub_22BB34150();
          sub_22BD60954(v2080);
          v6429 = *(v14 + 2648);
          sub_22BD64C58();
          v6442 = v2081;
          sub_22BD60AC0();
          sub_22BD647D4(v2082);
          MEMORY[0x23189FC10]();
LABEL_249:
          v1872 = sub_22BD64258();
          v1873(v1872, v6385, v1711);
          sub_22BD61F0C();
          sub_22BDB5D34();
          v1874 = sub_22BD62C28();
          v1875(v1874, v6409, v6391);
          sub_22BB6FCB8();
          sub_22BDB5E14();
          sub_22BBE6DE0(&qword_27D8E6470, &qword_22BDCE320);
          sub_22BD60A2C();
          v39 = v6404;
          sub_22BDBAF34();

          v1876 = sub_22BD61FA8();
          v1877(v1876, v6448);
          v1878 = *(v20 + 8);
          v20 += 8;
          v1878(v6429, v6442);
LABEL_250:
          v1879 = sub_22BD61EBC();
          v1880(v1879, v6456);
          goto LABEL_251;
        }

        sub_22BB701E8();
        sub_22BD5A87C(v16);
        v6395 = 0;
        sub_22BD63DA0();
        sub_22BDB96D4();
        sub_22BB3329C();
        if (!v165)
        {
          v17 = *(v14 + 4448);
          v13 = *(v14 + 3544);
          sub_22BB36E60();
          sub_22BD630B0();
          v6446 = *(v14 + 3200);
          v14 = *(v6465 + 3184);
          v2113 = *(v6465 + 3176);
          sub_22BD60B68();
          v6385 = *(v2114 + 2648);
          sub_22BD605D4();
          v6408 = v2115;

          v2116 = sub_22BD61510();
          v2117(v2116);
          sub_22BD62110();
          v2118 = sub_22BD614F8();
          v2119(v2118);
          v2120 = sub_22BD65260();
          v20 = v6385;
          MEMORY[0x23189FC10](v2120);
          sub_22BD653F8();
          v37 = v2113 + 104;
          v2121 = sub_22BD636A4();
          v2122(v2121);
          sub_22BB97B18();
          sub_22BDB5E14();
          sub_22BBE6DE0(&qword_27D8E6470, &qword_22BDCE320);
          sub_22BD60A2C();
          v39 = v6408;
          sub_22BDBAF34();
          v2123 = sub_22BB9607C();
          v2124(v2123, v6446);
          v2125 = sub_22BD632C4();
          v2126(v2125);
          v2127 = sub_22BD63394();
          v2128(v2127);
          goto LABEL_250;
        }

        v2083 = sub_22BD633E4();
        sub_22BB325EC(v2083, &qword_27D8E64D0, &qword_22BDCE3D8);
        sub_22BDB63E4();
        sub_22BB322B0();
        v2084 = swift_allocObject();
        sub_22BD60000(v2084);
        v39 = sub_22BDB77C4();
        v17 = sub_22BDBB114();
        sub_22BD616A8();
        v2085 = swift_allocObject();
        sub_22BB96D7C(v2085);
        sub_22BD616A8();
        v37 = swift_allocObject();
        sub_22BB6FB2C(v37);
        sub_22BB322B0();
        v2086 = swift_allocObject();
        sub_22BB97500(v2086);
        sub_22BB322B0();
        v20 = swift_allocObject();
        sub_22BBC0888(v20);
        v2087 = sub_22BD6374C();
        v2088 = sub_22BBC2570(v2087, xmmword_22BDC2F20);
        v2088[2].n128_u64[0] = v2089;
        v2088[2].n128_u64[1] = v62;
        v2088[3].n128_u64[0] = sub_22BB89C08;
        v2088[3].n128_u64[1] = v37;
        v2088[4].n128_u64[0] = sub_22BB89C7C;
        v2088[4].n128_u64[1] = v20;

        if (!sub_22BB72E44())
        {
          sub_22BD62CAC();

          v2145 = sub_22BB2F0E0();
          v2146(v2145);
          sub_22BD62C34();
          sub_22BB3A738();
          sub_22BD60E9C();
          sub_22BB38BC4();
          sub_22BD62F94(v2147);
          sub_22BD60B7C();
          v6448 = v2148;
          v6452 = v2149;
          sub_22BB38E74();
          sub_22BB70778(v2150);
          MEMORY[0x23189FC10]();
          v2151 = sub_22BB6A0A0();
          v2152(v2151);
          sub_22BD60C68();
          sub_22BDB5D34();
          v2153 = sub_22BB70294();
          v2154(v2153);
          sub_22BBBFFBC();
          sub_22BDB5E14();
          sub_22BBE6DE0(&qword_27D8E6470, &qword_22BDCE320);
          sub_22BD617A4();
          sub_22BDBAF34();
          v2155 = sub_22BD60E8C();
          v2156(v2155);
          v2157 = sub_22BD63FA8();
          v2158(v2157);
          goto LABEL_250;
        }

        sub_22BB67968(12);
        v2090 = sub_22BB6B650();
        sub_22BD5FB4C(v2090);
        if (!v2087)
        {

          sub_22BD61074();
          *(v14 + 1152) = v37;
          v2091 = sub_22BB938D8();
          sub_22BB67984(v2091, v2092, v2093, v2094);

          sub_22BD6105C();
          *(v14 + 1152) = v20;
          v2095 = sub_22BB938D8();
          sub_22BB67984(v2095, v2096, v2097, v2098);
          sub_22BD64324();

          sub_22BD63B54(&dword_22BB2C000, v39, v17, "[SessionCoordinator %{public}s] | Provided transcript had no events. Rejecting it.");
          sub_22BB35808();
          sub_22BB679C0();
        }

        goto LABEL_367;
      case 6u:
        v6464 = v102;
        sub_22BD63920();
        _s23IntelligenceFlowRuntime0aB6DaemonV6logger2os6LoggerVvgZ_0();
        sub_22BB322B0();
        v2212 = swift_allocObject();
        sub_22BD60000(v2212);
        v2213 = sub_22BDB77C4();
        sub_22BDBB134();
        sub_22BD616A8();
        v2214 = swift_allocObject();
        sub_22BB97ED4(v2214);
        sub_22BD616A8();
        v2215 = swift_allocObject();
        sub_22BB6FB2C(v2215);
        sub_22BB322B0();
        v2216 = swift_allocObject();
        sub_22BB97500(v2216);
        sub_22BB322B0();
        v2217 = swift_allocObject();
        sub_22BBC0888(v2217);
        v2218 = sub_22BD6374C();
        v2219 = sub_22BBC2570(v2218, xmmword_22BDC2F20);
        v2219[2].n128_u64[0] = v2220;
        v2219[2].n128_u64[1] = v2214;
        v2219[3].n128_u64[0] = sub_22BB89C08;
        v2219[3].n128_u64[1] = v2215;
        v2219[4].n128_u64[0] = sub_22BB89C7C;
        v2219[4].n128_u64[1] = v2217;

        if (sub_22BC54EF8())
        {
          sub_22BB67968(12);
          v2221 = sub_22BB6B650();
          sub_22BB3E0DC(v2221);
          sub_22BBC78A8(v2222);
          v6473 = v2223;
          v6474 = v2214;
          v2224 = sub_22BB58B08();
          sub_22BB67984(v2224, v2225, v2226, v2227);
          if (!v2218)
          {

            v3293 = sub_22BB542B0();
            sub_22BB67984(v3293, v3294, v3295, v3296);

            v6473 = sub_22BB89C7C;
            v6474 = v2217;
            v3297 = sub_22BB542B0();
            sub_22BB67984(v3297, v3298, v3299, v3300);
            sub_22BD62094();

            sub_22BB6FAD4(&dword_22BB2C000, v3301, v3302, "[SessionCoordinator %{public}s] Processed SIGTERM. Exiting.");
            sub_22BB35808();
            sub_22BB679C0();
          }

          goto LABEL_349;
        }

        v2228 = *(v14 + 4080);
        sub_22BD62094();

        (*(v17 + 8))(v2228, v2218);
        sub_22BB704B0();
        sub_22BBBE8EC();
        v2229 = *(v14 + 4352);
        v2230 = *(v14 + 4344);
        sub_22BBD2294();
        v5000 = v2232;
        v5151 = v2231;
        v5302 = v2214[534];
        v5453 = v2214[533];
        v5604 = v2214[532];
        v5755 = v2214[531];
        v5906 = v2214[530];
        v6057 = v2214[527];
        v6207 = v2214[526];
        v6208 = v2214[525];
        v6209 = v2214[524];
        v6210 = v2214[523];
        v6211 = v2214[522];
        v6212 = v2214[521];
        v6213 = v2214[518];
        v6214 = v2214[517];
        v6215 = v2214[516];
        v6216 = v2214[512];
        v6217 = v2214[511];
        v6218 = v2214[510];
        v6219 = v2214[509];
        v6220 = v2214[508];
        v6221 = v2214[507];
        v6222 = v2214[506];
        v6223 = v2214[505];
        v6224 = v2214[504];
        v6225 = v2214[503];
        v6226 = v2214[502];
        v6227 = v2214[501];
        v6228 = v2214[500];
        v6229 = v2214[499];
        v6230 = v2214[498];
        v6231 = v2214[497];
        v6232 = v2214[496];
        v6233 = v2214[495];
        v6234 = v2214[494];
        v6235 = v2214[493];
        v6236 = v2214[492];
        v6237 = v2214[491];
        v6238 = v2214[490];
        v6239 = v2214[489];
        v6240 = v2214[488];
        v6241 = v2214[487];
        v6242 = v2214[486];
        v6243 = v2214[485];
        v6244 = v2214[484];
        v6245 = v2214[483];
        v6246 = v2214[482];
        v6247 = v2214[481];
        v6248 = v2214[478];
        v6249 = v2214[477];
        v6250 = v2214[476];
        v6251 = v2214[475];
        v6252 = v2214[474];
        v6253 = v2214[473];
        v6254 = v2214[472];
        v6255 = v2214[471];
        v6256 = v2214[470];
        v6257 = v2214[469];
        v6258 = v2214[468];
        v6259 = v2214[467];
        v6260 = v2214[464];
        v6261 = v2214[461];
        v6262 = v2214[460];
        v6263 = v2214[459];
        v6264 = v2214[458];
        v6265 = v2214[457];
        v6266 = v2214[456];
        v6267 = v2214[455];
        v6268 = v2214[454];
        v6269 = v2214[453];
        v6270 = v2214[452];
        v6271 = v2214[448];
        v6272 = v2214[447];
        v6273 = v2214[446];
        v6274 = v2214[445];
        v6276 = v2214[444];
        v6278 = v2214[443];
        v6279 = v2214[440];
        v6281 = v2214[439];
        v6282 = v2214[438];
        v6284 = v2214[435];
        v6286 = v2214[434];
        v6288 = v2214[432];
        v6290 = v2214[431];
        v6291 = v2214[427];
        v6292 = v2214[426];
        v6294 = v2214[425];
        v6296 = v2214[424];
        v6298 = v2214[420];
        v6300 = v2214[419];
        v6303 = v2214[417];
        v6306 = v2214[416];
        v6309 = v2214[413];
        v6313 = v2214[412];
        v6315 = v2214[411];
        v6317 = v2214[410];
        v6318 = v2214[409];
        v6319 = v2214[408];
        v6321 = v2214[407];
        v6323 = v2214[406];
        v6326 = v2214[402];
        v6328 = v2214[399];
        v6329 = v2214[398];
        v6330 = v2214[395];
        v6331 = v2214[394];
        v6332 = v2214[391];
        v6333 = v2214[390];
        v6336 = v2214[387];
        v6338 = v2214[384];
        v6340 = v2214[383];
        v6344 = v2214[382];
        v6349 = v2214[379];
        v6351 = v2214[378];
        v6353 = v2214[377];
        v6356 = v2214[373];
        v6357 = v2214[372];
        v6359 = v2214[369];
        v6362 = v2214[368];
        v6363 = v2214[365];
        v6366 = v2214[364];
        v6373 = v2214[363];
        oslogb = v2214[360];
        v6382 = v2214[358];
        namea = v2214[357];
        v6390 = v2214[356];
        v6394 = v2214[353];
        v6397 = v2214[352];
        v6403 = v2214[351];
        sub_22BB898F4();
        sub_22BB35CBC();
        sub_22BB34648();

        v2233 = sub_22BD632B8();
        v2234(v2233, v2215);
        v2217, v2235, v2236, v2237, v2238, v2239, v2240, v2241, v3649, v3799, v3949, v4099, v4249, v4399, v4549, v4699, v4849, v5000, v5151, v5302, v5453, v5604, v5755, v5906, v6057;
        v17 + 8, v2242, v2243, v2244, v2245, v2246, v2247, v2248, v3650, v3800, v3950, v4100, v4250, v4400, v4550, v4700, v4850, v5001, v5152, v5303, v5454, v5605, v5756, v5907, v6058;
        v2229, v2249, v2250, v2251, v2252, v2253, v2254, v2255, v3651, v3801, v3951, v4101, v4251, v4401, v4551, v4701, v4851, v5002, v5153, v5304, v5455, v5606, v5757, v5908, v6059;
        v2230, v2256, v2257, v2258, v2259, v2260, v2261, v2262, v3652, v3802, v3952, v4102, v4252, v4402, v4552, v4702, v4852, v5003, v5154, v5305, v5456, v5607, v5758, v5909, v6060;
        v2228, v2263, v2264, v2265, v2266, v2267, v2268, v2269, v3653, v3803, v3953, v4103, v4253, v4403, v4553, v4703, v4853, v5004, v5155, v5306, v5457, v5608, v5759, v5910, v6061;
        v2213, v2270, v2271, v2272, v2273, v2274, v2275, v2276, v3654, v3804, v3954, v4104, v4254, v4404, v4554, v4704, v4854, v5005, v5156, v5307, v5458, v5609, v5760, v5911, v6062;
        v14, v2277, v2278, v2279, v2280, v2281, v2282, v2283, v3655, v3805, v3955, v4105, v4255, v4405, v4555, v4705, v4855, v5006, v5157, v5308, v5459, v5610, v5761, v5912, v6063;
        v5007, v2284, v2285, v2286, v2287, v2288, v2289, v2290, v3656, v3806, v3956, v4106, v4256, v4406, v4556, v4706, v4856, v5007, v5158, v5309, v5460, v5611, v5762, v5913, v6064;
        v5159, v2291, v2292, v2293, v2294, v2295, v2296, v2297, v3657, v3807, v3957, v4107, v4257, v4407, v4557, v4707, v4857, v5008, v5159, v5310, v5461, v5612, v5763, v5914, v6065;
        v5311, v2298, v2299, v2300, v2301, v2302, v2303, v2304, v3658, v3808, v3958, v4108, v4258, v4408, v4558, v4708, v4858, v5009, v5160, v5311, v5462, v5613, v5764, v5915, v6066;
        v5463, v2305, v2306, v2307, v2308, v2309, v2310, v2311, v3659, v3809, v3959, v4109, v4259, v4409, v4559, v4709, v4859, v5010, v5161, v5312, v5463, v5614, v5765, v5916, v6067;
        v5615, v2312, v2313, v2314, v2315, v2316, v2317, v2318, v3660, v3810, v3960, v4110, v4260, v4410, v4560, v4710, v4860, v5011, v5162, v5313, v5464, v5615, v5766, v5917, v6068;
        v5767, v2319, v2320, v2321, v2322, v2323, v2324, v2325, v3661, v3811, v3961, v4111, v4261, v4411, v4561, v4711, v4861, v5012, v5163, v5314, v5465, v5616, v5767, v5918, v6069;
        v5919, v2326, v2327, v2328, v2329, v2330, v2331, v2332, v3662, v3812, v3962, v4112, v4262, v4412, v4562, v4712, v4862, v5013, v5164, v5315, v5466, v5617, v5768, v5919, v6070;
        v6071, v2333, v2334, v2335, v2336, v2337, v2338, v2339, v3663, v3813, v3963, v4113, v4263, v4413, v4563, v4713, v4863, v5014, v5165, v5316, v5467, v5618, v5769, v5920, v6071;
        v6207, v2340, v2341, v2342, v2343, v2344, v2345, v2346, v3664, v3814, v3964, v4114, v4264, v4414, v4564, v4714, v4864, v5015, v5166, v5317, v5468, v5619, v5770, v5921, v6072;
        v6208, v2347, v2348, v2349, v2350, v2351, v2352, v2353, v3665, v3815, v3965, v4115, v4265, v4415, v4565, v4715, v4865, v5016, v5167, v5318, v5469, v5620, v5771, v5922, v6073;
        v6209, v2354, v2355, v2356, v2357, v2358, v2359, v2360, v3666, v3816, v3966, v4116, v4266, v4416, v4566, v4716, v4866, v5017, v5168, v5319, v5470, v5621, v5772, v5923, v6074;
        v6210, v2361, v2362, v2363, v2364, v2365, v2366, v2367, v3667, v3817, v3967, v4117, v4267, v4417, v4567, v4717, v4867, v5018, v5169, v5320, v5471, v5622, v5773, v5924, v6075;
        v6211, v2368, v2369, v2370, v2371, v2372, v2373, v2374, v3668, v3818, v3968, v4118, v4268, v4418, v4568, v4718, v4868, v5019, v5170, v5321, v5472, v5623, v5774, v5925, v6076;
        v6212, v2375, v2376, v2377, v2378, v2379, v2380, v2381, v3669, v3819, v3969, v4119, v4269, v4419, v4569, v4719, v4869, v5020, v5171, v5322, v5473, v5624, v5775, v5926, v6077;
        v6213, v2382, v2383, v2384, v2385, v2386, v2387, v2388, v3670, v3820, v3970, v4120, v4270, v4420, v4570, v4720, v4870, v5021, v5172, v5323, v5474, v5625, v5776, v5927, v6078;
        v6214, v2389, v2390, v2391, v2392, v2393, v2394, v2395, v3671, v3821, v3971, v4121, v4271, v4421, v4571, v4721, v4871, v5022, v5173, v5324, v5475, v5626, v5777, v5928, v6079;
        v6215, v2396, v2397, v2398, v2399, v2400, v2401, v2402, v3672, v3822, v3972, v4122, v4272, v4422, v4572, v4722, v4872, v5023, v5174, v5325, v5476, v5627, v5778, v5929, v6080;
        v6216, v2403, v2404, v2405, v2406, v2407, v2408, v2409, v3673, v3823, v3973, v4123, v4273, v4423, v4573, v4723, v4873, v5024, v5175, v5326, v5477, v5628, v5779, v5930, v6081;
        v6217, v2410, v2411, v2412, v2413, v2414, v2415, v2416, v3674, v3824, v3974, v4124, v4274, v4424, v4574, v4724, v4874, v5025, v5176, v5327, v5478, v5629, v5780, v5931, v6082;
        v6218, v2417, v2418, v2419, v2420, v2421, v2422, v2423, v3675, v3825, v3975, v4125, v4275, v4425, v4575, v4725, v4875, v5026, v5177, v5328, v5479, v5630, v5781, v5932, v6083;
        v6219, v2424, v2425, v2426, v2427, v2428, v2429, v2430, v3676, v3826, v3976, v4126, v4276, v4426, v4576, v4726, v4876, v5027, v5178, v5329, v5480, v5631, v5782, v5933, v6084;
        v6220, v2431, v2432, v2433, v2434, v2435, v2436, v2437, v3677, v3827, v3977, v4127, v4277, v4427, v4577, v4727, v4877, v5028, v5179, v5330, v5481, v5632, v5783, v5934, v6085;
        v6221, v2438, v2439, v2440, v2441, v2442, v2443, v2444, v3678, v3828, v3978, v4128, v4278, v4428, v4578, v4728, v4878, v5029, v5180, v5331, v5482, v5633, v5784, v5935, v6086;
        v6222, v2445, v2446, v2447, v2448, v2449, v2450, v2451, v3679, v3829, v3979, v4129, v4279, v4429, v4579, v4729, v4879, v5030, v5181, v5332, v5483, v5634, v5785, v5936, v6087;
        v6223, v2452, v2453, v2454, v2455, v2456, v2457, v2458, v3680, v3830, v3980, v4130, v4280, v4430, v4580, v4730, v4880, v5031, v5182, v5333, v5484, v5635, v5786, v5937, v6088;
        v6224, v2459, v2460, v2461, v2462, v2463, v2464, v2465, v3681, v3831, v3981, v4131, v4281, v4431, v4581, v4731, v4881, v5032, v5183, v5334, v5485, v5636, v5787, v5938, v6089;
        v6225, v2466, v2467, v2468, v2469, v2470, v2471, v2472, v3682, v3832, v3982, v4132, v4282, v4432, v4582, v4732, v4882, v5033, v5184, v5335, v5486, v5637, v5788, v5939, v6090;
        v6226, v2473, v2474, v2475, v2476, v2477, v2478, v2479, v3683, v3833, v3983, v4133, v4283, v4433, v4583, v4733, v4883, v5034, v5185, v5336, v5487, v5638, v5789, v5940, v6091;
        v6227, v2480, v2481, v2482, v2483, v2484, v2485, v2486, v3684, v3834, v3984, v4134, v4284, v4434, v4584, v4734, v4884, v5035, v5186, v5337, v5488, v5639, v5790, v5941, v6092;
        v6228, v2487, v2488, v2489, v2490, v2491, v2492, v2493, v3685, v3835, v3985, v4135, v4285, v4435, v4585, v4735, v4885, v5036, v5187, v5338, v5489, v5640, v5791, v5942, v6093;
        v6229, v2494, v2495, v2496, v2497, v2498, v2499, v2500, v3686, v3836, v3986, v4136, v4286, v4436, v4586, v4736, v4886, v5037, v5188, v5339, v5490, v5641, v5792, v5943, v6094;
        v6230, v2501, v2502, v2503, v2504, v2505, v2506, v2507, v3687, v3837, v3987, v4137, v4287, v4437, v4587, v4737, v4887, v5038, v5189, v5340, v5491, v5642, v5793, v5944, v6095;
        v6231, v2508, v2509, v2510, v2511, v2512, v2513, v2514, v3688, v3838, v3988, v4138, v4288, v4438, v4588, v4738, v4888, v5039, v5190, v5341, v5492, v5643, v5794, v5945, v6096;
        v6232, v2515, v2516, v2517, v2518, v2519, v2520, v2521, v3689, v3839, v3989, v4139, v4289, v4439, v4589, v4739, v4889, v5040, v5191, v5342, v5493, v5644, v5795, v5946, v6097;
        v6233, v2522, v2523, v2524, v2525, v2526, v2527, v2528, v3690, v3840, v3990, v4140, v4290, v4440, v4590, v4740, v4890, v5041, v5192, v5343, v5494, v5645, v5796, v5947, v6098;
        v6234, v2529, v2530, v2531, v2532, v2533, v2534, v2535, v3691, v3841, v3991, v4141, v4291, v4441, v4591, v4741, v4891, v5042, v5193, v5344, v5495, v5646, v5797, v5948, v6099;
        v6235, v2536, v2537, v2538, v2539, v2540, v2541, v2542, v3692, v3842, v3992, v4142, v4292, v4442, v4592, v4742, v4892, v5043, v5194, v5345, v5496, v5647, v5798, v5949, v6100;
        v6236, v2543, v2544, v2545, v2546, v2547, v2548, v2549, v3693, v3843, v3993, v4143, v4293, v4443, v4593, v4743, v4893, v5044, v5195, v5346, v5497, v5648, v5799, v5950, v6101;
        v6237, v2550, v2551, v2552, v2553, v2554, v2555, v2556, v3694, v3844, v3994, v4144, v4294, v4444, v4594, v4744, v4894, v5045, v5196, v5347, v5498, v5649, v5800, v5951, v6102;
        v6238, v2557, v2558, v2559, v2560, v2561, v2562, v2563, v3695, v3845, v3995, v4145, v4295, v4445, v4595, v4745, v4895, v5046, v5197, v5348, v5499, v5650, v5801, v5952, v6103;
        v6239, v2564, v2565, v2566, v2567, v2568, v2569, v2570, v3696, v3846, v3996, v4146, v4296, v4446, v4596, v4746, v4896, v5047, v5198, v5349, v5500, v5651, v5802, v5953, v6104;
        v6240, v2571, v2572, v2573, v2574, v2575, v2576, v2577, v3697, v3847, v3997, v4147, v4297, v4447, v4597, v4747, v4897, v5048, v5199, v5350, v5501, v5652, v5803, v5954, v6105;
        v6241, v2578, v2579, v2580, v2581, v2582, v2583, v2584, v3698, v3848, v3998, v4148, v4298, v4448, v4598, v4748, v4898, v5049, v5200, v5351, v5502, v5653, v5804, v5955, v6106;
        v6242, v2585, v2586, v2587, v2588, v2589, v2590, v2591, v3699, v3849, v3999, v4149, v4299, v4449, v4599, v4749, v4899, v5050, v5201, v5352, v5503, v5654, v5805, v5956, v6107;
        v6243, v2592, v2593, v2594, v2595, v2596, v2597, v2598, v3700, v3850, v4000, v4150, v4300, v4450, v4600, v4750, v4900, v5051, v5202, v5353, v5504, v5655, v5806, v5957, v6108;
        v6244, v2599, v2600, v2601, v2602, v2603, v2604, v2605, v3701, v3851, v4001, v4151, v4301, v4451, v4601, v4751, v4901, v5052, v5203, v5354, v5505, v5656, v5807, v5958, v6109;
        v6245, v2606, v2607, v2608, v2609, v2610, v2611, v2612, v3702, v3852, v4002, v4152, v4302, v4452, v4602, v4752, v4902, v5053, v5204, v5355, v5506, v5657, v5808, v5959, v6110;
        v6246, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v3703, v3853, v4003, v4153, v4303, v4453, v4603, v4753, v4903, v5054, v5205, v5356, v5507, v5658, v5809, v5960, v6111;
        v6247, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v3704, v3854, v4004, v4154, v4304, v4454, v4604, v4754, v4904, v5055, v5206, v5357, v5508, v5659, v5810, v5961, v6112;
        v6248, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v3705, v3855, v4005, v4155, v4305, v4455, v4605, v4755, v4905, v5056, v5207, v5358, v5509, v5660, v5811, v5962, v6113;
        v6249, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v3706, v3856, v4006, v4156, v4306, v4456, v4606, v4756, v4906, v5057, v5208, v5359, v5510, v5661, v5812, v5963, v6114;
        v6250, v2641, v2642, v2643, v2644, v2645, v2646, v2647, v3707, v3857, v4007, v4157, v4307, v4457, v4607, v4757, v4907, v5058, v5209, v5360, v5511, v5662, v5813, v5964, v6115;
        v6251, v2648, v2649, v2650, v2651, v2652, v2653, v2654, v3708, v3858, v4008, v4158, v4308, v4458, v4608, v4758, v4908, v5059, v5210, v5361, v5512, v5663, v5814, v5965, v6116;
        v6252, v2655, v2656, v2657, v2658, v2659, v2660, v2661, v3709, v3859, v4009, v4159, v4309, v4459, v4609, v4759, v4909, v5060, v5211, v5362, v5513, v5664, v5815, v5966, v6117;
        v6253, v2662, v2663, v2664, v2665, v2666, v2667, v2668, v3710, v3860, v4010, v4160, v4310, v4460, v4610, v4760, v4910, v5061, v5212, v5363, v5514, v5665, v5816, v5967, v6118;
        v6254, v2669, v2670, v2671, v2672, v2673, v2674, v2675, v3711, v3861, v4011, v4161, v4311, v4461, v4611, v4761, v4911, v5062, v5213, v5364, v5515, v5666, v5817, v5968, v6119;
        v6255, v2676, v2677, v2678, v2679, v2680, v2681, v2682, v3712, v3862, v4012, v4162, v4312, v4462, v4612, v4762, v4912, v5063, v5214, v5365, v5516, v5667, v5818, v5969, v6120;
        v6256, v2683, v2684, v2685, v2686, v2687, v2688, v2689, v3713, v3863, v4013, v4163, v4313, v4463, v4613, v4763, v4913, v5064, v5215, v5366, v5517, v5668, v5819, v5970, v6121;
        v6257, v2690, v2691, v2692, v2693, v2694, v2695, v2696, v3714, v3864, v4014, v4164, v4314, v4464, v4614, v4764, v4914, v5065, v5216, v5367, v5518, v5669, v5820, v5971, v6122;
        v6258, v2697, v2698, v2699, v2700, v2701, v2702, v2703, v3715, v3865, v4015, v4165, v4315, v4465, v4615, v4765, v4915, v5066, v5217, v5368, v5519, v5670, v5821, v5972, v6123;
        v6259, v2704, v2705, v2706, v2707, v2708, v2709, v2710, v3716, v3866, v4016, v4166, v4316, v4466, v4616, v4766, v4916, v5067, v5218, v5369, v5520, v5671, v5822, v5973, v6124;
        v6260, v2711, v2712, v2713, v2714, v2715, v2716, v2717, v3717, v3867, v4017, v4167, v4317, v4467, v4617, v4767, v4917, v5068, v5219, v5370, v5521, v5672, v5823, v5974, v6125;
        v6261, v2718, v2719, v2720, v2721, v2722, v2723, v2724, v3718, v3868, v4018, v4168, v4318, v4468, v4618, v4768, v4918, v5069, v5220, v5371, v5522, v5673, v5824, v5975, v6126;
        v6262, v2725, v2726, v2727, v2728, v2729, v2730, v2731, v3719, v3869, v4019, v4169, v4319, v4469, v4619, v4769, v4919, v5070, v5221, v5372, v5523, v5674, v5825, v5976, v6127;
        v6263, v2732, v2733, v2734, v2735, v2736, v2737, v2738, v3720, v3870, v4020, v4170, v4320, v4470, v4620, v4770, v4920, v5071, v5222, v5373, v5524, v5675, v5826, v5977, v6128;
        v6264, v2739, v2740, v2741, v2742, v2743, v2744, v2745, v3721, v3871, v4021, v4171, v4321, v4471, v4621, v4771, v4921, v5072, v5223, v5374, v5525, v5676, v5827, v5978, v6129;
        v6265, v2746, v2747, v2748, v2749, v2750, v2751, v2752, v3722, v3872, v4022, v4172, v4322, v4472, v4622, v4772, v4922, v5073, v5224, v5375, v5526, v5677, v5828, v5979, v6130;
        v6266, v2753, v2754, v2755, v2756, v2757, v2758, v2759, v3723, v3873, v4023, v4173, v4323, v4473, v4623, v4773, v4923, v5074, v5225, v5376, v5527, v5678, v5829, v5980, v6131;
        v6267, v2760, v2761, v2762, v2763, v2764, v2765, v2766, v3724, v3874, v4024, v4174, v4324, v4474, v4624, v4774, v4924, v5075, v5226, v5377, v5528, v5679, v5830, v5981, v6132;
        v6268, v2767, v2768, v2769, v2770, v2771, v2772, v2773, v3725, v3875, v4025, v4175, v4325, v4475, v4625, v4775, v4925, v5076, v5227, v5378, v5529, v5680, v5831, v5982, v6133;
        v6269, v2774, v2775, v2776, v2777, v2778, v2779, v2780, v3726, v3876, v4026, v4176, v4326, v4476, v4626, v4776, v4926, v5077, v5228, v5379, v5530, v5681, v5832, v5983, v6134;
        v6270, v2781, v2782, v2783, v2784, v2785, v2786, v2787, v3727, v3877, v4027, v4177, v4327, v4477, v4627, v4777, v4927, v5078, v5229, v5380, v5531, v5682, v5833, v5984, v6135;
        v6271, v2788, v2789, v2790, v2791, v2792, v2793, v2794, v3728, v3878, v4028, v4178, v4328, v4478, v4628, v4778, v4928, v5079, v5230, v5381, v5532, v5683, v5834, v5985, v6136;
        v6272, v2795, v2796, v2797, v2798, v2799, v2800, v2801, v3729, v3879, v4029, v4179, v4329, v4479, v4629, v4779, v4929, v5080, v5231, v5382, v5533, v5684, v5835, v5986, v6137;
        v6273, v2802, v2803, v2804, v2805, v2806, v2807, v2808, v3730, v3880, v4030, v4180, v4330, v4480, v4630, v4780, v4930, v5081, v5232, v5383, v5534, v5685, v5836, v5987, v6138;
        v6274, v2809, v2810, v2811, v2812, v2813, v2814, v2815, v3731, v3881, v4031, v4181, v4331, v4481, v4631, v4781, v4931, v5082, v5233, v5384, v5535, v5686, v5837, v5988, v6139;
        v6276, v2816, v2817, v2818, v2819, v2820, v2821, v2822, v3732, v3882, v4032, v4182, v4332, v4482, v4632, v4782, v4932, v5083, v5234, v5385, v5536, v5687, v5838, v5989, v6140;
        v6278, v2823, v2824, v2825, v2826, v2827, v2828, v2829, v3733, v3883, v4033, v4183, v4333, v4483, v4633, v4783, v4933, v5084, v5235, v5386, v5537, v5688, v5839, v5990, v6141;
        v6279, v2830, v2831, v2832, v2833, v2834, v2835, v2836, v3734, v3884, v4034, v4184, v4334, v4484, v4634, v4784, v4934, v5085, v5236, v5387, v5538, v5689, v5840, v5991, v6142;
        v6281, v2837, v2838, v2839, v2840, v2841, v2842, v2843, v3735, v3885, v4035, v4185, v4335, v4485, v4635, v4785, v4935, v5086, v5237, v5388, v5539, v5690, v5841, v5992, v6143;
        v6282, v2844, v2845, v2846, v2847, v2848, v2849, v2850, v3736, v3886, v4036, v4186, v4336, v4486, v4636, v4786, v4936, v5087, v5238, v5389, v5540, v5691, v5842, v5993, v6144;
        v6284, v2851, v2852, v2853, v2854, v2855, v2856, v2857, v3737, v3887, v4037, v4187, v4337, v4487, v4637, v4787, v4937, v5088, v5239, v5390, v5541, v5692, v5843, v5994, v6145;
        v6286, v2858, v2859, v2860, v2861, v2862, v2863, v2864, v3738, v3888, v4038, v4188, v4338, v4488, v4638, v4788, v4938, v5089, v5240, v5391, v5542, v5693, v5844, v5995, v6146;
        v6288, v2865, v2866, v2867, v2868, v2869, v2870, v2871, v3739, v3889, v4039, v4189, v4339, v4489, v4639, v4789, v4939, v5090, v5241, v5392, v5543, v5694, v5845, v5996, v6147;
        v6290, v2872, v2873, v2874, v2875, v2876, v2877, v2878, v3740, v3890, v4040, v4190, v4340, v4490, v4640, v4790, v4940, v5091, v5242, v5393, v5544, v5695, v5846, v5997, v6148;
        v6291, v2879, v2880, v2881, v2882, v2883, v2884, v2885, v3741, v3891, v4041, v4191, v4341, v4491, v4641, v4791, v4941, v5092, v5243, v5394, v5545, v5696, v5847, v5998, v6149;
        v6292, v2886, v2887, v2888, v2889, v2890, v2891, v2892, v3742, v3892, v4042, v4192, v4342, v4492, v4642, v4792, v4942, v5093, v5244, v5395, v5546, v5697, v5848, v5999, v6150;
        v6294, v2893, v2894, v2895, v2896, v2897, v2898, v2899, v3743, v3893, v4043, v4193, v4343, v4493, v4643, v4793, v4943, v5094, v5245, v5396, v5547, v5698, v5849, v6000, v6151;
        v6296, v2900, v2901, v2902, v2903, v2904, v2905, v2906, v3744, v3894, v4044, v4194, v4344, v4494, v4644, v4794, v4944, v5095, v5246, v5397, v5548, v5699, v5850, v6001, v6152;
        v6298, v2907, v2908, v2909, v2910, v2911, v2912, v2913, v3745, v3895, v4045, v4195, v4345, v4495, v4645, v4795, v4945, v5096, v5247, v5398, v5549, v5700, v5851, v6002, v6153;
        v6300, v2914, v2915, v2916, v2917, v2918, v2919, v2920, v3746, v3896, v4046, v4196, v4346, v4496, v4646, v4796, v4946, v5097, v5248, v5399, v5550, v5701, v5852, v6003, v6154;
        v6303, v2921, v2922, v2923, v2924, v2925, v2926, v2927, v3747, v3897, v4047, v4197, v4347, v4497, v4647, v4797, v4947, v5098, v5249, v5400, v5551, v5702, v5853, v6004, v6155;
        v6306, v2928, v2929, v2930, v2931, v2932, v2933, v2934, v3748, v3898, v4048, v4198, v4348, v4498, v4648, v4798, v4948, v5099, v5250, v5401, v5552, v5703, v5854, v6005, v6156;
        v6309, v2935, v2936, v2937, v2938, v2939, v2940, v2941, v3749, v3899, v4049, v4199, v4349, v4499, v4649, v4799, v4949, v5100, v5251, v5402, v5553, v5704, v5855, v6006, v6157;
        v6313, v2942, v2943, v2944, v2945, v2946, v2947, v2948, v3750, v3900, v4050, v4200, v4350, v4500, v4650, v4800, v4950, v5101, v5252, v5403, v5554, v5705, v5856, v6007, v6158;
        v6315, v2949, v2950, v2951, v2952, v2953, v2954, v2955, v3751, v3901, v4051, v4201, v4351, v4501, v4651, v4801, v4951, v5102, v5253, v5404, v5555, v5706, v5857, v6008, v6159;
        v6317, v2956, v2957, v2958, v2959, v2960, v2961, v2962, v3752, v3902, v4052, v4202, v4352, v4502, v4652, v4802, v4952, v5103, v5254, v5405, v5556, v5707, v5858, v6009, v6160;
        v6318, v2963, v2964, v2965, v2966, v2967, v2968, v2969, v3753, v3903, v4053, v4203, v4353, v4503, v4653, v4803, v4953, v5104, v5255, v5406, v5557, v5708, v5859, v6010, v6161;
        v6319, v2970, v2971, v2972, v2973, v2974, v2975, v2976, v3754, v3904, v4054, v4204, v4354, v4504, v4654, v4804, v4954, v5105, v5256, v5407, v5558, v5709, v5860, v6011, v6162;
        v6321, v2977, v2978, v2979, v2980, v2981, v2982, v2983, v3755, v3905, v4055, v4205, v4355, v4505, v4655, v4805, v4955, v5106, v5257, v5408, v5559, v5710, v5861, v6012, v6163;
        v6323, v2984, v2985, v2986, v2987, v2988, v2989, v2990, v3756, v3906, v4056, v4206, v4356, v4506, v4656, v4806, v4956, v5107, v5258, v5409, v5560, v5711, v5862, v6013, v6164;
        v6326, v2991, v2992, v2993, v2994, v2995, v2996, v2997, v3757, v3907, v4057, v4207, v4357, v4507, v4657, v4807, v4957, v5108, v5259, v5410, v5561, v5712, v5863, v6014, v6165;
        v6328, v2998, v2999, v3000, v3001, v3002, v3003, v3004, v3758, v3908, v4058, v4208, v4358, v4508, v4658, v4808, v4958, v5109, v5260, v5411, v5562, v5713, v5864, v6015, v6166;
        v6329, v3005, v3006, v3007, v3008, v3009, v3010, v3011, v3759, v3909, v4059, v4209, v4359, v4509, v4659, v4809, v4959, v5110, v5261, v5412, v5563, v5714, v5865, v6016, v6167;
        v6330, v3012, v3013, v3014, v3015, v3016, v3017, v3018, v3760, v3910, v4060, v4210, v4360, v4510, v4660, v4810, v4960, v5111, v5262, v5413, v5564, v5715, v5866, v6017, v6168;
        v6331, v3019, v3020, v3021, v3022, v3023, v3024, v3025, v3761, v3911, v4061, v4211, v4361, v4511, v4661, v4811, v4961, v5112, v5263, v5414, v5565, v5716, v5867, v6018, v6169;
        v6332, v3026, v3027, v3028, v3029, v3030, v3031, v3032, v3762, v3912, v4062, v4212, v4362, v4512, v4662, v4812, v4962, v5113, v5264, v5415, v5566, v5717, v5868, v6019, v6170;
        v6333, v3033, v3034, v3035, v3036, v3037, v3038, v3039, v3763, v3913, v4063, v4213, v4363, v4513, v4663, v4813, v4963, v5114, v5265, v5416, v5567, v5718, v5869, v6020, v6171;
        v6336, v3040, v3041, v3042, v3043, v3044, v3045, v3046, v3764, v3914, v4064, v4214, v4364, v4514, v4664, v4814, v4964, v5115, v5266, v5417, v5568, v5719, v5870, v6021, v6172;
        v6338, v3047, v3048, v3049, v3050, v3051, v3052, v3053, v3765, v3915, v4065, v4215, v4365, v4515, v4665, v4815, v4965, v5116, v5267, v5418, v5569, v5720, v5871, v6022, v6173;
        v6340, v3054, v3055, v3056, v3057, v3058, v3059, v3060, v3766, v3916, v4066, v4216, v4366, v4516, v4666, v4816, v4966, v5117, v5268, v5419, v5570, v5721, v5872, v6023, v6174;
        v6344, v3061, v3062, v3063, v3064, v3065, v3066, v3067, v3767, v3917, v4067, v4217, v4367, v4517, v4667, v4817, v4967, v5118, v5269, v5420, v5571, v5722, v5873, v6024, v6175;
        v6349, v3068, v3069, v3070, v3071, v3072, v3073, v3074, v3768, v3918, v4068, v4218, v4368, v4518, v4668, v4818, v4968, v5119, v5270, v5421, v5572, v5723, v5874, v6025, v6176;
        v6351, v3075, v3076, v3077, v3078, v3079, v3080, v3081, v3769, v3919, v4069, v4219, v4369, v4519, v4669, v4819, v4969, v5120, v5271, v5422, v5573, v5724, v5875, v6026, v6177;
        v6353, v3082, v3083, v3084, v3085, v3086, v3087, v3088, v3770, v3920, v4070, v4220, v4370, v4520, v4670, v4820, v4970, v5121, v5272, v5423, v5574, v5725, v5876, v6027, v6178;
        v6356, v3089, v3090, v3091, v3092, v3093, v3094, v3095, v3771, v3921, v4071, v4221, v4371, v4521, v4671, v4821, v4971, v5122, v5273, v5424, v5575, v5726, v5877, v6028, v6179;
        v6357, v3096, v3097, v3098, v3099, v3100, v3101, v3102, v3772, v3922, v4072, v4222, v4372, v4522, v4672, v4822, v4972, v5123, v5274, v5425, v5576, v5727, v5878, v6029, v6180;
        v6359, v3103, v3104, v3105, v3106, v3107, v3108, v3109, v3773, v3923, v4073, v4223, v4373, v4523, v4673, v4823, v4973, v5124, v5275, v5426, v5577, v5728, v5879, v6030, v6181;
        v6362, v3110, v3111, v3112, v3113, v3114, v3115, v3116, v3774, v3924, v4074, v4224, v4374, v4524, v4674, v4824, v4974, v5125, v5276, v5427, v5578, v5729, v5880, v6031, v6182;
        v6363, v3117, v3118, v3119, v3120, v3121, v3122, v3123, v3775, v3925, v4075, v4225, v4375, v4525, v4675, v4825, v4975, v5126, v5277, v5428, v5579, v5730, v5881, v6032, v6183;
        v6366, v3124, v3125, v3126, v3127, v3128, v3129, v3130, v3776, v3926, v4076, v4226, v4376, v4526, v4676, v4826, v4976, v5127, v5278, v5429, v5580, v5731, v5882, v6033, v6184;
        v6373, v3131, v3132, v3133, v3134, v3135, v3136, v3137, v3777, v3927, v4077, v4227, v4377, v4527, v4677, v4827, v4977, v5128, v5279, v5430, v5581, v5732, v5883, v6034, v6185;
        oslogb, v3138, v3139, v3140, v3141, v3142, v3143, v3144, v3778, v3928, v4078, v4228, v4378, v4528, v4678, v4828, v4978, v5129, v5280, v5431, v5582, v5733, v5884, v6035, v6186;
        v6382, v3145, v3146, v3147, v3148, v3149, v3150, v3151, v3779, v3929, v4079, v4229, v4379, v4529, v4679, v4829, v4979, v5130, v5281, v5432, v5583, v5734, v5885, v6036, v6187;
        namea, v3152, v3153, v3154, v3155, v3156, v3157, v3158, v3780, v3930, v4080, v4230, v4380, v4530, v4680, v4830, v4980, v5131, v5282, v5433, v5584, v5735, v5886, v6037, v6188;
        v6390, v3159, v3160, v3161, v3162, v3163, v3164, v3165, v3781, v3931, v4081, v4231, v4381, v4531, v4681, v4831, v4981, v5132, v5283, v5434, v5585, v5736, v5887, v6038, v6189;
        v6394, v3166, v3167, v3168, v3169, v3170, v3171, v3172, v3782, v3932, v4082, v4232, v4382, v4532, v4682, v4832, v4982, v5133, v5284, v5435, v5586, v5737, v5888, v6039, v6190;
        v6397, v3173, v3174, v3175, v3176, v3177, v3178, v3179, v3783, v3933, v4083, v4233, v4383, v4533, v4683, v4833, v4983, v5134, v5285, v5436, v5587, v5738, v5889, v6040, v6191;
        v6403, v3180, v3181, v3182, v3183, v3184, v3185, v3186, v3784, v3934, v4084, v4234, v4384, v4534, v4684, v4834, v4984, v5135, v5286, v5437, v5588, v5739, v5890, v6041, v6192;
        v6404, v3187, v3188, v3189, v3190, v3191, v3192, v3193, v3785, v3935, v4085, v4235, v4385, v4535, v4685, v4835, v4985, v5136, v5287, v5438, v5589, v5740, v5891, v6042, v6193;
        v6409, v3194, v3195, v3196, v3197, v3198, v3199, v3200, v3786, v3936, v4086, v4236, v4386, v4536, v4686, v4836, v4986, v5137, v5288, v5439, v5590, v5741, v5892, v6043, v6194;
        v6415, v3201, v3202, v3203, v3204, v3205, v3206, v3207, v3787, v3937, v4087, v4237, v4387, v4537, v4687, v4837, v4987, v5138, v5289, v5440, v5591, v5742, v5893, v6044, v6195;
        v6423, v3208, v3209, v3210, v3211, v3212, v3213, v3214, v3788, v3938, v4088, v4238, v4388, v4538, v4688, v4838, v4988, v5139, v5290, v5441, v5592, v5743, v5894, v6045, v6196;
        v6432, v3215, v3216, v3217, v3218, v3219, v3220, v3221, v3789, v3939, v4089, v4239, v4389, v4539, v4689, v4839, v4989, v5140, v5291, v5442, v5593, v5744, v5895, v6046, v6197;
        v6433, v3222, v3223, v3224, v3225, v3226, v3227, v3228, v3790, v3940, v4090, v4240, v4390, v4540, v4690, v4840, v4990, v5141, v5292, v5443, v5594, v5745, v5896, v6047, v6198;
        v6435, v3229, v3230, v3231, v3232, v3233, v3234, v3235, v3791, v3941, v4091, v4241, v4391, v4541, v4691, v4841, v4991, v5142, v5293, v5444, v5595, v5746, v5897, v6048, v6199;
        v6436, v3236, v3237, v3238, v3239, v3240, v3241, v3242, v3792, v3942, v4092, v4242, v4392, v4542, v4692, v4842, v4992, v5143, v5294, v5445, v5596, v5747, v5898, v6049, v6200;
        6, v3243, v3244, v3245, v3246, v3247, v3248, v3249, v3793, v3943, v4093, v4243, v4393, v4543, v4693, v4843, v4993, v5144, v5295, v5446, v5597, v5748, v5899, v6050, v6201;
        v6448, v3250, v3251, v3252, v3253, v3254, v3255, v3256, v3794, v3944, v4094, v4244, v4394, v4544, v4694, v4844, v4994, v5145, v5296, v5447, v5598, v5749, v5900, v6051, v6202;
        v6452, v3257, v3258, v3259, v3260, v3261, v3262, v3263, v3795, v3945, v4095, v4245, v4395, v4545, v4695, v4845, v4995, v5146, v5297, v5448, v5599, v5750, v5901, v6052, v6203;
        v6454, v3264, v3265, v3266, v3267, v3268, v3269, v3270, v3796, v3946, v4096, v4246, v4396, v4546, v4696, v4846, v4996, v5147, v5298, v5449, v5600, v5751, v5902, v6053, v6204;
        v6464, v3271, v3272, v3273, v3274, v3275, v3276, v3277, v3797, v3947, v4097, v4247, v4397, v4547, v4697, v4847, v4997, v5148, v5299, v5450, v5601, v5752, v5903, v6054, v6205;
        v6466, v3278, v3279, v3280, v3281, v3282, v3283, v3284, v3798, v3948, v4098, v4248, v4398, v4548, v4698, v4848, v4998, v5149, v5300, v5451, v5602, v5753, v5904, v6055, v6206;
        sub_22BB2F09C();
        sub_22BB33430();

        v3286(v3285, v3286, v3287, v3288, v3289, v3290, v3291, v3292, a9, a10, a11, a12);
        return;
      case 7u:
        sub_22BD63920();
        sub_22BDB63E4();
        sub_22BB322B0();
        v303 = swift_allocObject();
        sub_22BD60000(v303);
        v39 = sub_22BDB77C4();
        v304 = sub_22BDBB114();
        sub_22BD616A8();
        v305 = swift_allocObject();
        sub_22BD60E0C(v305);
        sub_22BD616A8();
        v306 = swift_allocObject();
        sub_22BB70358(v306);
        sub_22BB322B0();
        v307 = swift_allocObject();
        sub_22BB97500(v307);
        sub_22BB322B0();
        v308 = swift_allocObject();
        sub_22BD6040C(v308);
        v309 = sub_22BD6374C();
        v310 = sub_22BBC2570(v309, xmmword_22BDC2F20);
        v310[2].n128_u64[0] = v311;
        v310[2].n128_u64[1] = v20;
        v310[3].n128_u64[0] = sub_22BB89C08;
        v310[3].n128_u64[1] = v17;
        v310[4].n128_u64[0] = sub_22BB89C7C;
        v310[4].n128_u64[1] = v37;

        if (sub_22BC54EF8())
        {
          sub_22BB67968(12);
          v312 = sub_22BB38198();
          *(v14 + 2392) = 0;
          *(v14 + 2360) = v312;
          sub_22BD60D14(v307);
          *(v14 + 1456) = v20;
          v313 = sub_22BB6F9B4();
          sub_22BB67984(v313, v314, v315, v316);
          if (!v6466)
          {

            sub_22BBBE83C();
            *(v14 + 1456) = v17;
            v317 = sub_22BB6F9B4();
            sub_22BB67984(v317, v318, v319, v320);

            sub_22BD60FFC();
            *(v14 + 1456) = v37;
            v321 = sub_22BB6F9B4();
            sub_22BB67984(v321, v322, v323, v324);
            sub_22BD61A18();

            sub_22BB337EC(&dword_22BB2C000, v39, v304, "[SessionCoordinator %{public}s] | Detected failure in debugger handling. Disabling debug modes and terminating session.");
            sub_22BB30DDC();
            sub_22BB679C0();
          }

          goto LABEL_368;
        }

        sub_22BD64324();

        v536 = sub_22BB30AE4();
        v537(v536);
        v20 = *(v14 + 4792);
        v37 = *(v14 + 4344);
        v16 = *(v14 + 4304);
        v17 = *(v14 + 4104);
        v538 = *(v14 + 3144);
        v539 = *(v14 + 3128);
        sub_22BB96BBC();
        sub_22BBE6DE0(&qword_27D8E63F8, &qword_22BDCE220);
        sub_22BD64954();
        v540 = sub_22BBE6DE0(&qword_27D8E6008, &qword_22BDCD538);
        v541 = sub_22BD60FD4(v540);
        sub_22BD5B890(v541, 1);
        sub_22BD61630();
        v542(v539, v20, v307 + 4);
        sub_22BD74A58(v539, v538);
        v14 += 8;
        v543 = sub_22BD00E3C();
        v544(v543);
        sub_22BD614B8();
        sub_22BD5F854();
        sub_22BB37074();
        swift_storeEnumTagMultiPayload();
        sub_22BB3630C();
        sub_22BD64674(v545, v546);
        sub_22BB35CBC();
LABEL_90:
        sub_22BB34648();
        goto LABEL_96;
      default:
        sub_22BB89C84();
        sub_22BBE6DE0(&qword_27D8E63F8, &qword_22BDCE220);
        sub_22BB8D2E4();
        v187 = *v186;
        *(v14 + 4552) = *v186;
        v188 = v186[1];
        *(v14 + 4560) = v188;
        sub_22BBBE74C();
        sub_22BB3A518(v16, v102);
        sub_22BDB63E4();
        sub_22BB322B0();
        v189 = swift_allocObject();
        sub_22BB977E8(v189);
        v190 = sub_22BB3A9D4();
        sub_22BB335C0(v190, v191);
        sub_22BBC0328();
        v192 = swift_allocObject();
        sub_22BD650D0(v192);
        sub_22BB322B0();
        v193 = swift_allocObject();
        *(v193 + 16) = v187;
        *(v193 + 24) = v188;

        v6454 = sub_22BDB77C4();
        sub_22BDBB104();
        sub_22BD616A8();
        v6457 = swift_allocObject();
        sub_22BB97ED4(v6457);
        sub_22BD616A8();
        v194 = swift_allocObject();
        sub_22BD62CE4(v194);
        sub_22BB322B0();
        v195 = swift_allocObject();
        sub_22BBBDEB0(v195);
        sub_22BB322B0();
        swift_allocObject();
        sub_22BD5F74C();
        *(v196 + 16) = v197;
        *(v196 + 24) = v195;
        sub_22BD616A8();
        v6434 = swift_allocObject();
        *(v6434 + 16) = 32;
        sub_22BD616A8();
        v198 = swift_allocObject();
        *(v198 + 16) = v17;
        sub_22BB322B0();
        swift_allocObject();
        sub_22BD626B4();
        *(v199 + 16) = v201;
        *(v199 + 24) = v200;
        sub_22BB322B0();
        v202 = swift_allocObject();
        sub_22BB3AE40(v202);
        sub_22BD616A8();
        v203 = swift_allocObject();
        *(v203 + 16) = 32;
        sub_22BD616A8();
        v204 = swift_allocObject();
        sub_22BD64D98(v204);
        sub_22BB322B0();
        v205 = swift_allocObject();
        sub_22BD6055C(v205);
        sub_22BB322B0();
        v206 = swift_allocObject();
        sub_22BD626EC(v206);
        v207 = sub_22BD630D4();
        sub_22BBC96FC(v207, xmmword_22BDCE140);
        sub_22BD60544(v6457);
        sub_22BD62630();
        v207[4].n128_u64[1] = v45;
        v207[5].n128_u64[0] = sub_22BB89C08;
        sub_22BD62854();
        v207[6].n128_u64[1] = v198;
        v207[7].n128_u64[0] = sub_22BB89C7C;
        v207[7].n128_u64[1] = v39;
        v207[8].n128_u64[0] = sub_22BB89C08;
        v207[8].n128_u64[1] = v203;
        v207[9].n128_u64[0] = sub_22BB89C08;
        v207[9].n128_u64[1] = 32;
        v207[10].n128_u64[0] = sub_22BB89C7C;
        v207[10].n128_u64[1] = v17;

        HIDWORD(v6452) = 0;

        v208 = sub_22BD620A0();
        if (os_log_type_enabled(v208, v209))
        {
          v210 = sub_22BB67968(32);
          v211 = sub_22BD63AC4();
          *(v14 + 2408) = 0;
          *(v14 + 2416) = v211;
          *v210 = 770;
          *(v14 + 2400) = v210 + 1;
          *(v14 + 1528) = sub_22BB89C08;
          *(v14 + 1536) = v6457;
          v212 = sub_22BD5F978();
          sub_22BB67984(v212, v213, v214, v215);
          if (!v6466)
          {

            *(v14 + 1528) = sub_22BB89C08;
            *(v14 + 1536) = v205;
            v216 = sub_22BD5F978();
            sub_22BB67984(v216, v217, v218, v219);

            *(v14 + 1528) = sub_22BB89C7C;
            *(v14 + 1536) = v45;
            v220 = sub_22BD5F978();
            sub_22BB67984(v220, v221, v222, v223);

            *(v14 + 1528) = sub_22BB89C08;
            *(v14 + 1536) = v6434;
            v224 = sub_22BD5F978();
            sub_22BB67984(v224, v225, v226, v227);

            *(v14 + 1528) = sub_22BB89C08;
            *(v14 + 1536) = v198;
            v228 = sub_22BD5F978();
            sub_22BB67984(v228, v229, v230, v231);

            *(v14 + 1528) = sub_22BB89C7C;
            *(v14 + 1536) = v39;
            v232 = sub_22BD5F978();
            sub_22BB67984(v232, v233, v234, v235);

            *(v14 + 1528) = sub_22BB89C08;
            *(v14 + 1536) = v203;
            v236 = sub_22BD5F978();
            sub_22BB67984(v236, v237, v238, v239);

            *(v14 + 1528) = sub_22BB89C08;
            *(v14 + 1536) = 32;
            v240 = sub_22BD5F978();
            sub_22BB67984(v240, v241, v242, v243);

            *(v14 + 1528) = sub_22BB89C7C;
            *(v14 + 1536) = v17;
            v244 = sub_22BD5F978();
            sub_22BB67984(v244, v245, v246, v247);
            sub_22BD62624();

            sub_22BBBE830();
            sub_22BD63B3C(&dword_22BB2C000, v6454, v248, "[SessionCoordinator %{public}s] | Processing transaction request:\nContents: %s\nPostcondition: %s");
            sub_22BD62D3C();
            sub_22BB30458();
            sub_22BB679C0();
          }

          goto LABEL_330;
        }

        sub_22BD64E70();

        v377 = sub_22BD62258();
        v379 = v378(v377, 32);
        v387 = sub_22BD63524(v379, v380, v381, v382, v383, v384, v385, v386, v3649, v3799, v3949);
        HIDWORD(v6454) = v388;
        v6377 = v387;
        *(v14 + 4576) = v387;
        sub_22BD642C4();
        *(v14 + 4584) = v389;
        sub_22BD6480C();
        *(v14 + 4592) = v390;
        v391 = sub_22BB3E460();
        v6395 = v392;
        v6391 = v393;
        v393(v391);
        sub_22BDB96A4();
        *(v14 + 4600) = *(v45 + 8);
        sub_22BD63D50();
        *(v14 + 4608) = v394;
        v395 = sub_22BB2F324();
        v6385 = v396;
        v396(v395);
        v397 = sub_22BDB9744();
        v398 = MEMORY[0x28];
        *(v14 + 4616) = MEMORY[0x28];
        *(v14 + 4624) = 0x4F8000000000028;
        v399 = sub_22BB2F0E0();
        v398(v399);
        *(v14 + 1712) = v397;
        sub_22BBE6DE0(&qword_27D8E2F48, &unk_22BDBD950);
        sub_22BB31DE0();
        sub_22BD63468();
        sub_22BB899C0(v400, v401, v402);
        v403 = (v14 + 1712);
        sub_22BD62448();
        sub_22BDB90D4();

        v404 = sub_22BBE6DE0(&qword_27D8E6560, &qword_22BDCE740);
        if (sub_22BBD2268(v404) == 1)
        {
          sub_22BB325EC(*(v14 + 3576), &qword_27D8E6518, &unk_22BDCE420);
        }

        else
        {
          sub_22BD61658();
          v566 = sub_22BD64800();
          v567(v566);
        }

        sub_22BD61D40();
        v568 = sub_22BD64B6C();
        sub_22BB336D0(v568, v569, v570, v571);
        sub_22BB366B8();
        v572 = swift_allocObject();
        *(v14 + 4632) = v572;
        sub_22BD616A8();
        v573 = swift_allocObject();
        *(v14 + 4640) = v573;
        sub_22BD616A8();
        v273 = swift_allocObject();
        *(v14 + 4648) = v273;
        sub_22BD60084();
        sub_22BB37074();
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v575 = v207->n128_u64[0];
        v6448 = v572;
        v6432 = v273;
        name = v573;
        if (EnumCaseMultiPayload == 1)
        {
          v6354 = v398;
          sub_22BD61D2C();
          oslog = v576;
          v6411 = v577;
          v578 = sub_22BDB8404();
          v6433 = v579;
          v6435 = v578;
          v580 = sub_22BDB8404();
          sub_22BBBE80C(v580, v581);
          sub_22BB97C94();
          if (v355)
          {
            __break(1u);
LABEL_394:
            __break(1u);

            goto LABEL_349;
          }

          sub_22BD61914(v582);
          sub_22BB322B0();
          swift_allocObject();
          sub_22BB89DB4();
          *(v583 + 16) = v584;
          *(v583 + 24) = v273;
          sub_22BB366B8();
          v585 = swift_allocObject();
          sub_22BD64028(v585);
          sub_22BB322B0();
          v586 = swift_allocObject();
          sub_22BD60348(v586);
          sub_22BB366B8();
          v587 = swift_allocObject();
          sub_22BD645D4(v587);
          v6418 = v575;

          v6424 = sub_22BDB77C4();
          v6379 = sub_22BDBB134();
          sub_22BD616A8();
          v6459 = swift_allocObject();
          *(v6459 + 16) = 34;
          sub_22BD616A8();
          *(swift_allocObject() + 16) = 8;
          sub_22BB322B0();
          v588 = swift_allocObject();
          sub_22BB70160(v588);
          sub_22BB322B0();
          v589 = swift_allocObject();
          sub_22BB69C9C(v589);
          sub_22BD616A8();
          v590 = swift_allocObject();
          *(v590 + 16) = 34;
          sub_22BD616A8();
          v591 = swift_allocObject();
          *(v591 + 16) = 8;
          sub_22BB322B0();
          v592 = swift_allocObject();
          sub_22BBBE888(v592);
          sub_22BB322B0();
          v593 = swift_allocObject();
          sub_22BB69C9C(v593);
          sub_22BD616A8();
          v594 = swift_allocObject();
          sub_22BD62E7C(v594);
          sub_22BD616A8();
          v595 = swift_allocObject();
          *(v595 + 16) = 8;
          sub_22BB322B0();
          v596 = swift_allocObject();
          sub_22BD602E0(v596);
          sub_22BB322B0();
          v597 = swift_allocObject();
          sub_22BD606DC(v597);
          v598 = sub_22BD630D4();
          sub_22BB70434(v598, xmmword_22BDCE140);
          sub_22BB980A0();
          v598[4].n128_u64[1] = v589;
          v598[5].n128_u64[0] = sub_22BB89C08;
          v598[5].n128_u64[1] = v590;
          v598[6].n128_u64[0] = sub_22BB89C08;
          v598[6].n128_u64[1] = v591;
          v598[7].n128_u64[0] = sub_22BB89C7C;
          v598[7].n128_u64[1] = v593;
          v598[8].n128_u64[0] = sub_22BB89C08;
          v598[8].n128_u64[1] = v594;
          v598[9].n128_u64[0] = sub_22BB89C08;
          v598[9].n128_u64[1] = v595;
          v598[10].n128_u64[0] = sub_22BB70118;
          v598[10].n128_u64[1] = v597;

          v6364 = v590;

          if (os_log_type_enabled(v6424, v6379))
          {
            sub_22BB67968(32);
            v599 = sub_22BB3869C();
            *(v14 + 2288) = 0;
            *(v14 + 2296) = v599;
            *v588 = 770;
            *(v14 + 2280) = v588 + 1;
            sub_22BB70328();
            *(v14 + 1312) = v6459;
            v600 = sub_22BB58898();
            sub_22BB67984(v600, v601, v602, v603);
            if (!v6466)
            {

              sub_22BB70328();
              *(v14 + 1312) = v588;
              v604 = sub_22BB58898();
              sub_22BB67984(v604, v605, v606, v607);

              sub_22BB96CEC();
              *(v14 + 1312) = v589;
              v608 = sub_22BB58898();
              sub_22BB67984(v608, v609, v610, v611);

              sub_22BB70328();
              *(v14 + 1312) = v590;
              v612 = sub_22BB58898();
              sub_22BB67984(v612, v613, v614, v615);

              sub_22BB70328();
              *(v14 + 1312) = v591;
              v616 = sub_22BB58898();
              sub_22BB67984(v616, v617, v618, v619);

              sub_22BB96CEC();
              *(v14 + 1312) = v593;
              v620 = sub_22BB58898();
              sub_22BB67984(v620, v621, v622, v623);

              sub_22BB70328();
              *(v14 + 1312) = v594;
              v624 = sub_22BB58898();
              sub_22BB67984(v624, v625, v626, v627);

              sub_22BB70328();
              *(v14 + 1312) = v595;
              v628 = sub_22BB58898();
              sub_22BB67984(v628, v629, v630, v631);

              sub_22BD606C4();
              *(v14 + 1312) = v597;
              v632 = sub_22BB58898();
              sub_22BB67984(v632, v633, v634, v635);
              sub_22BD6256C();

              sub_22BD63B3C(&dword_22BB2C000, v6424, v6379, "[SessionCoordinator %{public}s] | [TX %{public}s] Client transaction turned in with %{public}ld events.");
              sub_22BB96A94(v636, v637, MEMORY[0x277D84F70] + 8);
              sub_22BB30458();
              sub_22BB679C0();
            }

            goto LABEL_368;
          }

          v884 = *(v14 + 3840);
          sub_22BD640F0();

          v886 = *(v884 + 8);
          v885 = v884 + 8;
          sub_22BD61DF4(v886);
          v887();
          sub_22BD60B30();
          if (v165)
          {
            sub_22BD615A0();
            v594 = *(v14 + 3192);
            sub_22BB75638();
            sub_22BDB8444();
            sub_22BD62408();
            sub_22BB8E9C4();
            sub_22BDB5D24();
            v888 = sub_22BD61CDC();
            v889(v888);
            sub_22BD63938();
            sub_22BDB5E14();
            sub_22BBE6DE0(&qword_27D8E6470, &qword_22BDCE320);
            sub_22BBBFFBC();
            sub_22BDBAF34();
            v890 = sub_22BD62DF4();
            v891(v890, v6466);
          }

          v892 = v6418;
          v6381 = sub_22BD46088(v6418);
          v894 = v893;

          v895 = sub_22BB31614();
          v897 = sub_22BB6F9D4(v895, v896, v6418);
          sub_22BD6471C(v897, v898, v899);
          sub_22BB2F1B0();

          v6371 = v894;
          if (v594 < 2)
          {
            v410 = &qword_22BDC1660;
            v942 = v6448;
            v943 = v6411;
          }

          else
          {
            sub_22BD62680();
            sub_22BDB63E4();
            sub_22BB322B0();
            v900 = swift_allocObject();
            sub_22BB977E8(v900);
            sub_22BB366B8();
            v901 = swift_allocObject();
            sub_22BD63080(v901);
            sub_22BB322B0();
            v902 = swift_allocObject();
            sub_22BD60A50(v902);
            v6426 = sub_22BDB77C4();
            sub_22BDBB114();
            sub_22BD616A8();
            v903 = swift_allocObject();
            sub_22BD623EC(v903);
            sub_22BD616A8();
            v904 = swift_allocObject();
            sub_22BD62E20(v904);
            sub_22BB322B0();
            v905 = swift_allocObject();
            sub_22BD60310(v905);
            sub_22BB322B0();
            v892 = swift_allocObject();
            sub_22BD60664(v892);
            sub_22BD616A8();
            v906 = swift_allocObject();
            sub_22BD636BC(v906);
            sub_22BD616A8();
            v907 = swift_allocObject();
            sub_22BD64DE0(v907);
            sub_22BB322B0();
            v908 = swift_allocObject();
            sub_22BD60364(v908);
            sub_22BB322B0();
            swift_allocObject();
            sub_22BD5F764();
            *(v909 + 16) = v910;
            *(v909 + 24) = v594;
            v911 = sub_22BB97DF8();
            sub_22BB34620(v911);
            v912[4] = v913;
            v912[5] = v6466;
            v912[6] = sub_22BB89C08;
            v912[7] = v904;
            v912[8] = sub_22BB89C7C;
            v912[9] = v892;
            v912[10] = sub_22BB89C08;
            v912[11] = v589;
            v912[12] = sub_22BB89C08;
            v912[13] = v885;
            v912[14] = sub_22BB89C7C;
            v912[15] = v901;
            sub_22BD6474C();

            sub_22BD63D04();
            if (os_log_type_enabled(v6426, v914))
            {
              sub_22BB67968(22);
              v915 = sub_22BBBFF34();
              sub_22BD64A74(v915);
              sub_22BBBEB6C();
              *(v14 + 2248) = v916;
              sub_22BB97DA8();
              *(v14 + 1296) = v594;
              v917 = sub_22BB8ABC0();
              sub_22BB67984(v917, v918, v919, v920);
              if (!v6466)
              {

                sub_22BB97DA8();
                *(v14 + 1296) = v904;
                v921 = sub_22BB8ABC0();
                sub_22BB67984(v921, v922, v923, v924);

                sub_22BD6064C();
                *(v14 + 1296) = v892;
                v925 = sub_22BB8ABC0();
                sub_22BB67984(v925, v926, v927, v928);

                sub_22BB97DA8();
                *(v14 + 1296) = v589;
                v929 = sub_22BB8ABC0();
                sub_22BB67984(v929, v930, v931, v932);

                sub_22BB97DA8();
                *(v14 + 1296) = v885;
                v933 = sub_22BB8ABC0();
                sub_22BB67984(v933, v934, v935, v936);

                *(v14 + 1288) = sub_22BB89C7C;
                *(v14 + 1296) = v901;
                v937 = sub_22BB8ABC0();
                sub_22BB67984(v937, v938, v939, v940);
                sub_22BD65030();
                sub_22BB39F58();
                sub_22BD636C8(&dword_22BB2C000, v6426, v941, "[SessionCoordinator %{public}s] | [TX %{public}s] A client transaction contains more than one query. Only the last one will be used as the current query.");
                sub_22BBBE7DC();
                sub_22BB32238();
                sub_22BB679C0();
              }

              goto LABEL_356;
            }

            v6364 = *(v14 + 3960);
            sub_22BD6256C();

            sub_22BB896A8();
            v1318();
            v410 = &qword_22BDC1660;
            v942 = v6448;
            v943 = v6411;
            v894 = v894;
          }

          v1319 = oslog;
          if (v894)
          {
            v13 = v6418;
          }

          else
          {
            if (v6381)
            {
              v1320 = *(v14 + 3952);
              sub_22BD62680();
              sub_22BDB63E4();
              sub_22BB322B0();
              swift_allocObject();
              sub_22BB758D8();
              *(v1321 + 16) = v1322;
              *(v1321 + 24) = v894;
              sub_22BB366B8();
              v1323 = swift_allocObject();
              sub_22BD63080(v1323);
              sub_22BB322B0();
              v1324 = swift_allocObject();
              sub_22BD5F71C(v1324);
              sub_22BB366B8();
              v1325 = swift_allocObject();
              sub_22BBC0200(v1325);
              v6427 = sub_22BDB77C4();
              sub_22BDBB114();
              sub_22BD616A8();
              v6459 = swift_allocObject();
              sub_22BD6250C(v6459);
              sub_22BD616A8();
              v6361 = swift_allocObject();
              sub_22BB6FB2C(v6361);
              v894 = 8;
              sub_22BB322B0();
              v1326 = swift_allocObject();
              sub_22BB31A44(v1326);
              sub_22BB322B0();
              v1327 = swift_allocObject();
              sub_22BB3DEE8(v1327);
              sub_22BD616A8();
              v1328 = swift_allocObject();
              sub_22BD64CC0(v1328);
              sub_22BD616A8();
              v1329 = swift_allocObject();
              sub_22BD64AF0(v1329);
              sub_22BB322B0();
              swift_allocObject();
              sub_22BD607B4();
              *(v1330 + 16) = v1331;
              *(v1330 + 24) = v1324;
              sub_22BB322B0();
              v1332 = swift_allocObject();
              sub_22BB72DE4(v1332);
              sub_22BD616A8();
              v1333 = swift_allocObject();
              sub_22BD6430C(v1333);
              sub_22BD616A8();
              v1334 = swift_allocObject();
              sub_22BB70358(v1334);
              sub_22BB322B0();
              v1335 = swift_allocObject();
              sub_22BD605A4(v1335);
              sub_22BB322B0();
              swift_allocObject();
              sub_22BD6079C();
              *(v1336 + 16) = v1337;
              *(v1336 + 24) = v1335;
              v1338 = sub_22BD630D4();
              v1338[2].n128_u64[1] = sub_22BB53DC8(v1338, xmmword_22BDCE140);
              v1338[3].n128_u64[0] = v1339;
              v410 = v6361;
              sub_22BB8E984();
              v1338[4].n128_u64[1] = v1327;
              v1338[5].n128_u64[0] = sub_22BB89C08;
              v1338[5].n128_u64[1] = v1320;
              v1338[6].n128_u64[0] = sub_22BB89C08;
              v1338[6].n128_u64[1] = v6381;
              v1338[7].n128_u64[0] = sub_22BB89C7C;
              v1338[7].n128_u64[1] = v1332;
              v1338[8].n128_u64[0] = sub_22BB89C08;
              v1338[8].n128_u64[1] = v594;
              v1338[9].n128_u64[0] = sub_22BB89C08;
              v1338[9].n128_u64[1] = 8;
              v1338[10].n128_u64[0] = sub_22BD5F64C;
              v1338[10].n128_u64[1] = v589;

              sub_22BD63D04();
              if (os_log_type_enabled(v6427, v1340))
              {
                sub_22BD643A0();
                v1341 = sub_22BBC01B4();
                *(v14 + 2224) = 0;
                *(v14 + 2232) = v1341;
                sub_22BD61FC0(v594);
                *(v14 + 2216) = v1342;
                sub_22BB6B120();
                *(v14 + 1280) = v6459;
                v1343 = sub_22BB33564();
                sub_22BB67984(v1343, v1344, v1345, v1346);
                if (!v6466)
                {

                  sub_22BB6B120();
                  *(v14 + 1280) = v1338;
                  v1347 = sub_22BB33564();
                  sub_22BB67984(v1347, v1348, v1349, v1350);

                  sub_22BBC0960();
                  *(v14 + 1280) = v1327;
                  v1351 = sub_22BB33564();
                  sub_22BB67984(v1351, v1352, v1353, v1354);

                  sub_22BB6B120();
                  *(v14 + 1280) = v1320;
                  v1355 = sub_22BB33564();
                  sub_22BB67984(v1355, v1356, v1357, v1358);

                  sub_22BB6B120();
                  *(v14 + 1280) = v6381;
                  v1359 = sub_22BB33564();
                  sub_22BB67984(v1359, v1360, v1361, v1362);

                  sub_22BBC0960();
                  *(v14 + 1280) = v6352;
                  v1363 = sub_22BB33564();
                  sub_22BB67984(v1363, v1364, v1365, v1366);

                  sub_22BB6B120();
                  *(v14 + 1280) = v589;
                  v1367 = sub_22BB33564();
                  sub_22BB67984(v1367, v1368, v1369, v1370);

                  sub_22BB6B120();
                  *(v14 + 1280) = 8;
                  v1371 = sub_22BB33564();
                  sub_22BB67984(v1371, v1372, v1373, v1374);

                  sub_22BD6058C();
                  *(v14 + 1280) = v6350;
                  v1375 = sub_22BB33564();
                  sub_22BB67984(v1375, v1376, v1377, v1378);
                  sub_22BD62624();

                  sub_22BB39F58();
                  sub_22BD63B3C(&dword_22BB2C000, v6427, v1379, "[SessionCoordinator %{public}s] | [TX %{public}s] A client transaction contains a query at index %ld. Queries should be the first event in their transaction. This may cause incorrect behavior.");
                  swift_arrayDestroy();
                  sub_22BB3A3D8();
                  sub_22BB679C0();
                }

LABEL_367:

                goto LABEL_368;
              }

              v6364 = *(v14 + 3952);
              sub_22BD6256C();

              sub_22BD61DF4(*(v6381 + 8));
              v1478();
            }

            sub_22BD63894();
            v6428 = v1479;
            sub_22BB96E08();
            v6440 = *(v14 + 3224);
            v6350 = *(v14 + 3160);
            sub_22BD61BF4();
            v6352 = v1480;
            sub_22BD61A40();
            v1481 = sub_22BD61410();
            (v6391)(v1481);
            sub_22BDB96A4();
            v1482 = sub_22BB2F324();
            v6385(v1482);
            v13 = v6418;
            sub_22BD446BC(v6381, v6418, v14);
            v1483 = sub_22BD63144();
            v1484(v1483);
            sub_22BB69550();
            sub_22BB34648();
            v1485 = sub_22BD63D44();
            MEMORY[0x2318A2C10](v1485);
            v1486 = sub_22BB3A84C();
            sub_22BD446BC(v1486, v1487, v1488);
            sub_22BD61C44();
            v1489(v410);
            sub_22BB97B18();
            sub_22BB34648();
            v594 = v6364;
            sub_22BBB797C();
            v1319 = oslog;
            v943 = v6411;
            v892 = v894;
            sub_22BDB9704();
            v1490 = sub_22BB35464();
            v1491(v1490);
            v6354(v894, v6428);
            v1492 = sub_22BB72084();
            sub_22BB336D0(v1492, v1493, v1494, v6440);
            sub_22BD6308C();
            v1495 = sub_22BB500C0();
            v410 = &qword_22BDC1660;
            sub_22BB385F4(v1495, v1496, &unk_27D8E69E0, &qword_22BDC1660);
            v942 = v6448;
            v894 = v6371;
          }

          sub_22BD618C4();
          v1497 = sub_22BB3627C();
          sub_22BB3CD70(v1497, v1498, &unk_27D8E69E0, &qword_22BDC1660);
          v1469 = swift_task_alloc();
          *(v1469 + 16) = v594;
          *(v1469 + 24) = v1319;
          *(v1469 + 32) = v943;
          *(v1469 + 40) = v892;
          v1499 = sub_22BB36C20();
          sub_22BB72184(v1499, v1500, v13);
          v1469, v1501, v1502, v1503, v1504, v1505, v1506, v1507, v3649, v3799, v3949, v4099, v4249, v4399, v4549, v4699, v4849, v4999, v5150, v5301, v5452, v5603, v5754, v5905, v6056;
          sub_22BD63F80();
          if (v894)
          {

            v1508 = sub_22BB37074();
            sub_22BB3CD70(v1508, v1509, &unk_27D8E69E0, &qword_22BDC1660);
            sub_22BB93908();
            if (v165)
            {
              sub_22BB325EC(v1510, &unk_27D8E69E0, &qword_22BDC1660);
              v1511 = sub_22BB36B68();
              sub_22BBC0340(v1511, v1512);
              v1417 = 0;
              v16 = 0;
              v879 = 0xE000000000000000;
            }

            else
            {
              v1537 = *(v14 + 3232);
              v1538 = sub_22BB97E2C();
              v1539(v1538);
              sub_22BDB8F24();
              v1417 = 1;
              v1540 = sub_22BB72084();
              sub_22BB336D0(v1540, v1541, v1542, v1469);
              v16 = sub_22BDB9A24();
              v879 = v1543;
              v13 = (v1537 + 8);
              v1544 = sub_22BB2F3F0();
              v1545(v1544);
            }

            goto LABEL_208;
          }

          v1513 = *(v14 + 3656);
          v1514 = sub_22BB37074();
          sub_22BB3CD70(v1514, v1515, &unk_27D8E69E0, &qword_22BDC1660);
          sub_22BB2F164(v1513);
          if (v165)
          {
            __break(1u);
          }

          else
          {
            sub_22BD64180();
            sub_22BB3B574(&v942[2], v14 + 616);
            sub_22BB93884();
            v1516 = sub_22BB8B49C();
            sub_22BB938EC(v1516, v1517);
            sub_22BD61A5C();
            sub_22BB35FA0();
            v1518();
            nullsub_1();
            swift_endAccess();
            v1519 = sub_22BB3AC54();
            sub_22BB3CD70(v1519, v1520, &unk_27D8E69E0, &qword_22BDC1660);
            v1521 = sub_22BB2F3FC();
            sub_22BB31814(v1521, v1522, v894);
            if (v165)
            {
LABEL_420:
              __break(1u);
              JUMPOUT(0x22BB883C8);
            }

            sub_22BD61450();
            v1523 = *(v14 + 3632);
            v1524 = *(v14 + 3312);
            v1525 = *(v14 + 3232);
            v1526 = *(v14 + 3224);
            sub_22BDB8F24();
            v13 = *(v1525 + 8);
            v1527 = sub_22BB2F3F0();
            (v13)(v1527);
            v1528 = sub_22BB72084();
            sub_22BB336D0(v1528, v1529, v1530, v1524);
            v1531 = sub_22BB500C0();
            sub_22BB6BEE0(v1531, v1532, &qword_27D8E3218, &qword_22BDBE390);
            sub_22BB3CD70(v6466, v1523, &unk_27D8E69E0, &qword_22BDC1660);
            v1533 = sub_22BB3A840();
            sub_22BB31814(v1533, v1534, v1526);
            if (!v165)
            {
              sub_22BD64174();

              v16 = sub_22BDB9A24();
              v879 = v1535;
              v1536 = sub_22BB53C48();
              (v13)(v1536);
              v1417 = 1;
              v942 = v6448;
LABEL_208:
              v273 = v6466;
              v1546 = *(v14 + 3664);
              v1471 = *(v14 + 2496);
              name[16] = v1417;
              *(v6432 + 16) = 1;
              sub_22BB325EC(v1546, &unk_27D8E69E0, &qword_22BDC1660);
              sub_22BD64CD8();
              sub_22BB705A8();
              goto LABEL_209;
            }
          }

          __break(1u);
          goto LABEL_420;
        }

        v638 = *(v14 + 4128);
        v6392 = *(v14 + 4056);
        v639 = *(v14 + 3800);
        sub_22BD63DC8();
        v6368 = *(v14 + 3680);
        sub_22BD61CF0();
        v6412 = v640;
        sub_22BD63FE8();
        v6388 = v641;
        sub_22BBE6DE0(&qword_27D8E6408, &qword_22BDCE240);
        sub_22BB31DC8();
        sub_22BB3A518(v638 + v642, v14 + 1712);
        v643 = *(v14 + 1728);
        v6435 = *(v14 + 1720);
        v644 = *v403;
        *(v572 + 16) = v575;
        v645 = *(v403 + *(v573 + 28) + 8);
        v646 = sub_22BD64C88();
        sub_22BB3CD70(v646, v639, &qword_27D8E3218, &qword_22BDBE390);
        v6433 = v643;

        v6335 = v645;

        sub_22BD459A4(v575, v6368);
        v6425 = v6466;

        sub_22BDB63E4();
        sub_22BB322B0();
        swift_allocObject();
        sub_22BB8AF40();
        *(v647 + 16) = v648;
        *(v647 + 24) = v6388;
        sub_22BB366B8();
        v649 = swift_allocObject();
        v6452 = v644;
        *(v649 + 16) = v644;
        sub_22BB322B0();
        swift_allocObject();
        sub_22BB89B58();
        *(v650 + 16) = v651;
        *(v650 + 24) = v649;
        sub_22BD639B0();
        sub_22BB3CD70(v652, v653, v654, v655);
        sub_22BD62264();
        sub_22BB6FB18();
        v6365 = swift_allocObject();
        sub_22BD639B0();
        sub_22BB6BEE0(v656, v657, v658, v659);
        sub_22BB3CD70(v6368, v6412, &unk_27D8E69E0, &qword_22BDC1660);
        sub_22BBC0328();
        v6369 = swift_allocObject();
        sub_22BB6BEE0(v6412, v6369 + v649, &unk_27D8E69E0, &qword_22BDC1660);

        v660 = v6392;
        oslog = sub_22BDB77C4();
        v6355 = sub_22BDBB134();
        sub_22BD616A8();
        v661 = swift_allocObject();
        sub_22BD62E44(v661);
        sub_22BD616A8();
        v6399 = swift_allocObject();
        sub_22BD612D8(v6399);
        sub_22BB322B0();
        swift_allocObject();
        sub_22BB3E0C4();
        *(v662 + 16) = v663;
        *(v662 + 24) = v572;
        sub_22BB322B0();
        v6396 = swift_allocObject();
        v6396[2] = sub_22BB89C80;
        v6396[3] = v6392;
        sub_22BD616A8();
        v6405 = swift_allocObject();
        *(v6405 + 16) = &qword_22BDBE390;
        sub_22BD616A8();
        v6419 = swift_allocObject();
        *(v6419 + 16) = v649;
        sub_22BB322B0();
        swift_allocObject();
        sub_22BB756B0();
        *(v664 + 16) = v665;
        *(v664 + 24) = v573;
        sub_22BB322B0();
        v666 = swift_allocObject();
        v667 = sub_22BD62B6C(v666);
        *(v667 + 16) = v668;
        *(v667 + 24) = v6392;
        sub_22BD616A8();
        v669 = swift_allocObject();
        sub_22BD62E7C(v669);
        sub_22BD616A8();
        v6393 = swift_allocObject();
        *(v6393 + 16) = v649;
        sub_22BB322B0();
        swift_allocObject();
        sub_22BD5F7F4();
        *(v670 + 16) = v671;
        *(v670 + 24) = v6448;
        sub_22BB322B0();
        v672 = swift_allocObject();
        v673 = sub_22BB96B4C(v672);
        *(v673 + 16) = v674;
        *(v673 + 24) = v660;
        sub_22BD616A8();
        v6467 = swift_allocObject();
        sub_22BD639BC(v6467);
        sub_22BD616A8();
        v6460 = swift_allocObject();
        *(v6460 + 16) = v649;
        sub_22BB322B0();
        swift_allocObject();
        sub_22BD5F7AC();
        *(v675 + 16) = v676;
        *(v675 + 24) = v6365;
        sub_22BB322B0();
        v677 = swift_allocObject();
        v678 = sub_22BB3DEE8(v677);
        sub_22BD616A8();
        v679 = swift_allocObject();
        *(v679 + 16) = &qword_22BDBE390;
        sub_22BD616A8();
        v680 = swift_allocObject();
        *(v680 + 16) = v649;
        v681 = v680;
        sub_22BB322B0();
        swift_allocObject();
        sub_22BD5F794();
        *(v682 + 16) = v683;
        *(v682 + 24) = v6377;
        sub_22BB322B0();
        v6380 = swift_allocObject();
        *(v6380 + 16) = sub_22BB89C80;
        *(v6380 + 24) = v660;
        sub_22BD616A8();
        v6350 = swift_allocObject();
        *(v6350 + 16) = &qword_22BDBE390;
        sub_22BD616A8();
        v6346 = swift_allocObject();
        *(v6346 + 16) = v649;
        sub_22BB322B0();
        swift_allocObject();
        sub_22BD5F884();
        *(v684 + 16) = v685;
        *(v684 + 24) = v6369;
        sub_22BB322B0();
        v686 = swift_allocObject();
        sub_22BB97474(v686);
        v687 = swift_allocObject();
        sub_22BB73BD0(v687);
        sub_22BD6274C();
        sub_22BB3FE84(v6399);
        sub_22BB8E9FC(v6396);
        v687[11] = v6405;
        v687[12] = sub_22BB89C08;
        sub_22BD60694();
        v687[15] = v688;
        v687[16] = sub_22BB89C08;
        v687[17] = v669;
        v687[18] = sub_22BB89C08;
        sub_22BB97130(v6393);
        v687[21] = v6388;
        v687[22] = sub_22BB89C08;
        sub_22BB3FC00(v6467);
        v687[27] = v678;
        v687[28] = sub_22BB89C08;
        v687[29] = v679;
        v687[30] = sub_22BB89C08;
        sub_22BD62B00();
        v687[33] = v6380;
        v687[34] = sub_22BB89C08;
        v687[35] = v6350;
        v687[36] = sub_22BB89C08;
        v687[37] = v6346;
        v687[38] = sub_22BB89C7C;
        v687[39] = v686;
        v6370 = v689;

        v6352 = v669;

        v6364 = v678;

        if (os_log_type_enabled(oslog, v6355))
        {
          sub_22BB67968(62);
          v690 = sub_22BD64704();
          *(v14 + 2376) = 0;
          *(v14 + 2384) = v690;
          sub_22BD62548();
          *(v14 + 1520) = v6370;
          v691 = sub_22BBDB8F4();
          v273 = v6425;
          sub_22BB67984(v691, v692, v693, v694);
          if (!v6425)
          {

            sub_22BB96A04();
            *(v14 + 1520) = v6399;
            v695 = sub_22BBDB8F4();
            sub_22BB67984(v695, v696, v697, v698);

            sub_22BB70204();
            *(v14 + 1520) = v6396;
            v699 = sub_22BBDB8F4();
            sub_22BB67984(v699, v700, v701, v702);

            sub_22BB96A04();
            *(v14 + 1520) = v6405;
            v703 = sub_22BBDB8F4();
            sub_22BB67984(v703, v704, v705, v706);

            sub_22BB96A04();
            *(v14 + 1520) = v6419;
            v707 = sub_22BBDB8F4();
            sub_22BB67984(v707, v708, v709, v710);

            sub_22BB70204();
            *(v14 + 1520) = v6412;
            v711 = sub_22BBDB8F4();
            sub_22BB67984(v711, v712, v713, v714);

            sub_22BB96A04();
            *(v14 + 1520) = v669;
            v715 = sub_22BBDB8F4();
            sub_22BB67984(v715, v716, v717, v718);

            *(v14 + 1512) = sub_22BB89C08;
            *(v14 + 1520) = v6393;
            v719 = sub_22BBDB8F4();
            sub_22BB67984(v719, v720, v721, v722);

            sub_22BD62B18();
            *(v14 + 1520) = v6388;
            v723 = sub_22BBDB8F4();
            sub_22BB67984(v723, v724, v725, v726);

            *(v14 + 1512) = sub_22BB89C08;
            *(v14 + 1520) = v6467;
            v727 = sub_22BBDB8F4();
            sub_22BB67984(v727, v728, v729, v730);

            *(v14 + 1512) = sub_22BB89C08;
            *(v14 + 1520) = v6460;
            v731 = sub_22BBDB8F4();
            sub_22BB67984(v731, v732, v733, v734);

            sub_22BB70204();
            *(v14 + 1520) = v678;
            v735 = sub_22BBDB8F4();
            sub_22BB67984(v735, v736, v737, v738);

            *(v14 + 1512) = sub_22BB89C08;
            *(v14 + 1520) = v679;
            v739 = sub_22BBDB8F4();
            sub_22BB67984(v739, v740, v741, v742);

            sub_22BB96A04();
            *(v14 + 1520) = v681;
            v743 = sub_22BBDB8F4();
            sub_22BB67984(v743, v744, v745, v746);

            sub_22BB70204();
            *(v14 + 1520) = v6380;
            v747 = sub_22BBDB8F4();
            sub_22BB67984(v747, v748, v749, v750);

            sub_22BB96A04();
            *(v14 + 1520) = v6350;
            v751 = sub_22BBDB8F4();
            sub_22BB67984(v751, v752, v753, v754);

            sub_22BB96A04();
            *(v14 + 1520) = v6346;
            v755 = sub_22BBDB8F4();
            sub_22BB67984(v755, v756, v757, v758);

            sub_22BB70204();
            *(v14 + 1520) = v686;
            v759 = sub_22BBDB8F4();
            sub_22BB67984(v759, v760, v761, v762);
            sub_22BB96A7C();

            sub_22BD63EC8(&dword_22BB2C000, oslog, v6355, "[SessionCoordinator %{public}s] | [TX %{public}s] Internal transaction turned in with %{public}ld events. originatingSpanQueryEventId: %s, latestQueryEventId: %s, newQueryEventId: %s");
            sub_22BB6FD00();
            sub_22BB30458();
            sub_22BB679C0();
          }

          goto LABEL_343;
        }

        sub_22BB96A7C();

        v854 = sub_22BB2F324();
        v855(v854);
        v856 = sub_22BD63944();
        sub_22BB3CD70(v856, v857, &qword_27D8E3218, &qword_22BDBE390);
        v858 = sub_22BB53C48();
        v860 = sub_22BD63AAC(v858, v859);
        sub_22BD6383C(v860, v14 + 448);
        v861 = sub_22BB3A190();
        if (!sub_22BB3AA28(v861, v862, v6380))
        {
          sub_22BDB8F24();
        }

        swift_endAccess();
        v863 = *(v14 + 3776);
        v273 = *(v14 + 3768);
        v864 = *(v14 + 3360);
        v865 = *(v14 + 3344);
        v866 = *(v14 + 3312);
        v867 = sub_22BB3A9D4();
        sub_22BB336D0(v867, v868, 1, v866);
        v869 = *(v865 + 48);
        v870 = sub_22BB31F54();
        sub_22BD63AAC(v870, v871);
        sub_22BD63AAC(v273, v864 + v869);
        v872 = sub_22BB3A190();
        v874 = sub_22BB3AA28(v872, v873, v866);
        v875 = *(v14 + 3312);
        if (v874 == 1)
        {
          sub_22BB325EC(*(v14 + 3768), &qword_27D8E3218, &qword_22BDBE390);
          v863 = &qword_22BDBE390;
          sub_22BD62A7C();
          sub_22BB325EC(v876, v877, v878);
          sub_22BBBFF9C(v864 + v869);
          v879 = name;
          if (v165)
          {
            sub_22BD62A7C();
            sub_22BB325EC(v880, v881, v882);
            v883 = 1;
LABEL_145:
            v1388 = v6432;
            goto LABEL_187;
          }
        }

        else
        {
          sub_22BD63AAC(*(v14 + 3360), *(v14 + 3760));
          sub_22BD618B8();
          sub_22BB3AA28(v944, v945, v946);
          sub_22BD64234();
          if (!v165)
          {
            v6470 = *(v14 + 3360);
            v1380 = *(v14 + 3320);
            v1381 = sub_22BBC0658();
            v1382(v1381);
            sub_22BB30DC4();
            v1384 = sub_22BB3B194(&unk_28142DD40, v1383);
            v883 = sub_22BB97518(v1384);
            v1385 = *(v1380 + 8);
            v1386 = sub_22BB32E04();
            v1385(v1386);
            sub_22BB325EC(v273, &qword_27D8E3218, v863);
            sub_22BB325EC(v865, &qword_27D8E3218, v863);
            v1387 = sub_22BD6220C();
            v1385(v1387);
            sub_22BB325EC(v6470, &qword_27D8E3218, v863);
            v1388 = v6432;
            v879 = name;
LABEL_187:
            *(v879 + 16) = v883 & 1;
            *(v1388 + 16) = v883 & 1;
            sub_22BDB8404();
            sub_22BB89B88();
            sub_22BBC03CC(v6435, v6433, v1389, v883);
            sub_22BD61FB4();

            if (v875)
            {
              v875 = *(v14 + 2496);
              sub_22BB707F8(v879 + 16, v14 + 568);
              v863 = 1;
              *(v879 + 16) = 1;
              sub_22BB707F8(v1388 + 16, v14 + 640);
              *(v1388 + 16) = 1;
              sub_22BD641A4();
              if (v355)
              {
                __break(1u);
                goto LABEL_403;
              }

              *(*(v14 + 2496) + *(v14 + 4504)) = v1390;
            }

            sub_22BD62768();
            sub_22BDB63E4();
            sub_22BB322B0();
            swift_allocObject();
            sub_22BBBEE48();
            *(v1391 + 16) = v1392;
            *(v1391 + 24) = v273;
            sub_22BB366B8();
            v1393 = swift_allocObject();
            sub_22BD63080(v1393);
            sub_22BB322B0();
            swift_allocObject();
            sub_22BBC0500();
            *(v1394 + 16) = v1395;
            *(v1394 + 24) = v1393;

            v6395 = sub_22BDB77C4();
            v6400 = sub_22BDBB134();
            sub_22BD616A8();
            v1396 = swift_allocObject();
            sub_22BD6250C(v1396);
            sub_22BD616A8();
            v6420 = swift_allocObject();
            sub_22BD62C10(v6420);
            sub_22BB322B0();
            swift_allocObject();
            sub_22BB3E0C4();
            *(v1397 + 16) = v1398;
            *(v1397 + 24) = v863;
            sub_22BB322B0();
            v1399 = swift_allocObject();
            v6413 = sub_22BB3DEE8(v1399);
            sub_22BD616A8();
            v6406 = swift_allocObject();
            *(v6406 + 16) = v273;
            sub_22BD616A8();
            v1400 = swift_allocObject();
            *(v1400 + 16) = v1388;
            sub_22BB322B0();
            swift_allocObject();
            sub_22BB756B0();
            *(v1401 + 16) = v1402;
            *(v1401 + 24) = v875;
            sub_22BB322B0();
            v1403 = swift_allocObject();
            v6454 = sub_22BB3DEE8(v1403);
            sub_22BD616A8();
            v6391 = swift_allocObject();
            *(v6391 + 16) = 0;
            sub_22BD616A8();
            v6385 = swift_allocObject();
            sub_22BBD19F8(v6385);
            sub_22BB322B0();
            swift_allocObject();
            sub_22BD5F7C4();
            *(v1404 + 16) = v1405;
            *(v1404 + 24) = v879;
            sub_22BB322B0();
            v1406 = swift_allocObject();
            sub_22BD5F670(v1406);
            sub_22BB322B0();
            v1407 = swift_allocObject();
            sub_22BB95B9C(v1407);
            sub_22BB322B0();
            v1408 = swift_allocObject();
            sub_22BD60574(v1408);
            sub_22BD616A8();
            v1409 = swift_allocObject();
            *(v1409 + 16) = 0;
            v1410 = v1409;
            sub_22BD616A8();
            v6459 = swift_allocObject();
            *(v6459 + 16) = v863;
            sub_22BB322B0();
            swift_allocObject();
            sub_22BD5F7C4();
            *(v1411 + 16) = v1412;
            *(v1411 + 24) = v6432;
            sub_22BB322B0();
            v1413 = swift_allocObject();
            sub_22BD5F68C(v1413);
            sub_22BB322B0();
            v1414 = swift_allocObject();
            sub_22BB53C68(v1414);
            sub_22BB322B0();
            v1415 = swift_allocObject();
            sub_22BB97728(v1415);
            v1416 = swift_allocObject();
            sub_22BB3E214(v1416);
            sub_22BD62790();
            v1416[7] = v6420;
            v1416[8] = sub_22BB89C7C;
            v1416[9] = v6413;
            v1416[10] = sub_22BB89C08;
            v1417 = v6406;
            sub_22BD6286C();
            v1416[13] = v1400;
            v1416[14] = sub_22BB89C7C;
            v1416[15] = v6454;
            v1416[16] = sub_22BB89C08;
            v1416[17] = v6391;
            v1416[18] = sub_22BB89C08;
            v410 = v6385;
            v1416[19] = v6385;
            v1416[20] = sub_22BD5F268;
            v1416[21] = v1408;
            v1416[22] = sub_22BB89C08;
            sub_22BD6280C();
            v1416[25] = v6459;
            v1416[26] = sub_22BD5F650;
            v1416[27] = v1415;
            v6432 = v1418;

            sub_22BD6474C();

            if (os_log_type_enabled(v6395, v6400))
            {
              sub_22BB67968(34);
              v1419 = sub_22BD619F0();
              *(v14 + 2328) = 0;
              *(v14 + 2336) = v1419;
              sub_22BD624D0(v1415);
              *(v14 + 1424) = v6432;
              v1420 = sub_22BB95784();
              sub_22BB67984(v1420, v1421, v1422, v1423);
              if (!v6425)
              {

                sub_22BB69C84();
                *(v14 + 1424) = v6420;
                v1424 = sub_22BB95784();
                sub_22BB67984(v1424, v1425, v1426, v1427);

                sub_22BD6289C();
                *(v14 + 1424) = v6413;
                v1428 = sub_22BB95784();
                sub_22BB67984(v1428, v1429, v1430, v1431);

                sub_22BB69C84();
                *(v14 + 1424) = v6406;
                v1432 = sub_22BB95784();
                sub_22BB67984(v1432, v1433, v1434, v1435);

                *(v14 + 1416) = sub_22BB89C08;
                *(v14 + 1424) = v1400;
                v1436 = sub_22BB95784();
                sub_22BB67984(v1436, v1437, v1438, v1439);

                *(v14 + 1416) = sub_22BB89C7C;
                *(v14 + 1424) = v6454;
                v1440 = sub_22BB95784();
                sub_22BB67984(v1440, v1441, v1442, v1443);

                *(v14 + 1416) = sub_22BB89C08;
                *(v14 + 1424) = v6420;
                v1444 = sub_22BB95784();
                sub_22BB67984(v1444, v1445, v1446, v1447);

                *(v14 + 1416) = sub_22BB89C08;
                *(v14 + 1424) = v6385;
                v1448 = sub_22BB95784();
                sub_22BB67984(v1448, v1449, v1450, v1451);

                sub_22BD62824();
                *(v14 + 1424) = v1408;
                v1452 = sub_22BB95784();
                sub_22BB67984(v1452, v1453, v1454, v1455);

                *(v14 + 1416) = sub_22BB89C08;
                *(v14 + 1424) = v1410;
                v1456 = sub_22BB95784();
                sub_22BB67984(v1456, v1457, v1458, v1459);

                sub_22BB69C84();
                *(v14 + 1424) = v6459;
                v1460 = sub_22BB95784();
                sub_22BB67984(v1460, v1461, v1462, v1463);

                sub_22BB8EA6C();
                *(v14 + 1424) = v1415;
                v1464 = sub_22BB95784();
                sub_22BB67984(v1464, v1465, v1466, v1467);
                sub_22BD630C0();
                sub_22BD65218();
                _os_log_impl(&dword_22BB2C000, v6395, v6400, "[SessionCoordinator %{public}s] | [TX %{public}s] workCausationAllowed: %{BOOL}d, allowedToSendToClient: %{BOOL}d", v1415, 0x22u);
                swift_arrayDestroy();
                sub_22BB2F194();
                sub_22BB679C0();
              }

              goto LABEL_368;
            }

            v1468 = *(v14 + 3840);
            v1469 = *(v14 + 3832);
            v6401 = *(v14 + 3800);
            name = *(v14 + 3680);
            v13 = *(v14 + 3416);

            sub_22BD61DF4(*(v1468 + 8));
            v1470();
            sub_22BB325EC(name, &unk_27D8E69E0, &qword_22BDC1660);
            sub_22BB325EC(v6401, &qword_27D8E3218, &qword_22BDBE390);
            sub_22BB33E70();
            sub_22BB34648();
            v273 = v6425;
            sub_22BD62CC4();
            v942 = v6448;
            v1471 = v6452;
            v16 = v6337;
            v879 = v6335;
LABEL_209:
            *(v14 + 4696) = v6433;
            *(v14 + 4688) = v6435;
            *(v14 + 4680) = v879;
            sub_22BB75860();
            if (v1471)
            {
              sub_22BB707F8(&v942[2], v14 + 664);

              v3303 = swift_task_alloc();
              v3304 = sub_22BB702D8(v3303);
              *v3304 = v3305;
              sub_22BB34F38(v3304);
              sub_22BB33430();

              sub_22BB95A50();
              return;
            }

            v1547 = *(v14 + 4632);
            sub_22BB31B88();
            swift_beginAccess();
            v1548 = sub_22BD64644();
            sub_22BD45DE8(v1548);
            sub_22BD61FB4();

            if (v1469)
            {
              v6452 = v273;
              v6471 = *(v14 + 4528);
              sub_22BD63BF4(v1549);
              sub_22BB322B0();
              swift_allocObject();
              sub_22BBC0284();
              *(v1550 + 16) = v1551;
              *(v1550 + 24) = v879;
              sub_22BB366B8();
              v1552 = swift_allocObject();
              sub_22BD64DEC(v1552);
              sub_22BB322B0();
              v16 = swift_allocObject();
              sub_22BD5F6EC(v16);

              v6448 = sub_22BDB77C4();
              sub_22BDBB0F4();
              sub_22BD616A8();
              v1553 = swift_allocObject();
              sub_22BD634DC(v1553);
              sub_22BD616A8();
              v1554 = swift_allocObject();
              sub_22BD61688(v1554);
              sub_22BB322B0();
              v879 = swift_allocObject();
              sub_22BBC0614(v879);
              sub_22BB322B0();
              v1555 = swift_allocObject();
              sub_22BD6052C(v1555);
              sub_22BD616A8();
              v1417 = swift_allocObject();
              *(v1417 + 16) = v1547;
              sub_22BD616A8();
              v1556 = swift_allocObject();
              *(v1556 + 16) = v1469;
              sub_22BB322B0();
              swift_allocObject();
              sub_22BB756B0();
              *(v1557 + 16) = v1558;
              *(v1557 + 24) = v16;
              sub_22BB322B0();
              v1559 = swift_allocObject();
              sub_22BB51370(v1559);
              v1560 = sub_22BB970B4(v6471);
              sub_22BB31444(v1560);
              v1561[4] = v1562;
              v1561[5] = v410;
              v1561[6] = sub_22BB89C08;
              v1561[7] = v13;
              v1561[8] = sub_22BB89C7C;
              v1561[9] = v1555;
              v1561[10] = sub_22BB89C08;
              v1561[11] = v1417;
              v1561[12] = sub_22BB89C08;
              v1561[13] = v1556;
              v1561[14] = sub_22BB89C7C;
              v1561[15] = v879;

              sub_22BB93DBC();
              if (os_log_type_enabled(v6448, v1563))
              {
                sub_22BB67968(22);
                v1564 = sub_22BBBFF34();
                sub_22BBB6144(v1564);
                sub_22BBBEB6C();
                *(v14 + 2128) = v1565;
                *(v14 + 1176) = sub_22BB89C08;
                *(v14 + 1184) = v410;
                v1566 = sub_22BB32E7C();
                sub_22BB67984(v1566, v1567, v1568, v1569);
                if (!v6452)
                {

                  sub_22BD604FC();
                  *(v14 + 1184) = v13;
                  v1570 = sub_22BB32E7C();
                  sub_22BB67984(v1570, v1571, v1572, v1573);

                  sub_22BD60514();
                  *(v14 + 1184) = v1555;
                  v1574 = sub_22BB32E7C();
                  sub_22BB67984(v1574, v1575, v1576, v1577);

                  sub_22BD604FC();
                  *(v14 + 1184) = v1417;
                  v1578 = sub_22BB32E7C();
                  sub_22BB67984(v1578, v1579, v1580, v1581);

                  sub_22BD604FC();
                  *(v14 + 1184) = v1556;
                  v1582 = sub_22BB32E7C();
                  sub_22BB67984(v1582, v1583, v1584, v1585);

                  *(v14 + 1176) = sub_22BB89C7C;
                  *(v14 + 1184) = v879;
                  v1586 = sub_22BB32E7C();
                  sub_22BB67984(v1586, v1587, v1588, v1589);
                  sub_22BD62094();

                  sub_22BB96D8C();
                  sub_22BD636C8(&dword_22BB2C000, v6448, v1590, "[SessionCoordinator %{public}s] | [TX %{public}s] Transaction is advisory.");
                  sub_22BD61EE4();
                  sub_22BB89BBC();
                  sub_22BB679C0();
                }

                goto LABEL_368;
              }

              sub_22BD62624();

              v1591 = sub_22BB3A9D4();
              (v6459)(v1591);
              v273 = v6452;
              v1592 = sub_22BB897B0();
              sub_22BB707F8(v1592, v14 + 760);
              sub_22BD62070();
              sub_22BD64288();
            }

            v1593 = sub_22BBC3B90();
            sub_22BD45220(v1593);
            sub_22BD61FB4();

            v6466 = v273;
            if (v1469)
            {
              sub_22BD61714();
              v1594 = *(v14 + 4024);
              sub_22BD62768();
              sub_22BDB63E4();
              sub_22BB322B0();
              v1595 = swift_allocObject();
              sub_22BB3E014(v1595);
              sub_22BB366B8();
              v1596 = swift_allocObject();
              sub_22BD63DE4(v1596);
              sub_22BB322B0();
              v1597 = swift_allocObject();
              sub_22BB89B20(v1597);
              v6454 = sub_22BDB77C4();
              sub_22BDBB0F4();
              sub_22BD616A8();
              v1598 = swift_allocObject();
              sub_22BB3CE80(v1598);
              sub_22BD616A8();
              v1599 = swift_allocObject();
              sub_22BD624C4(v1599);
              sub_22BB322B0();
              v1600 = swift_allocObject();
              sub_22BBBE860(v1600);
              sub_22BB322B0();
              v1601 = swift_allocObject();
              sub_22BB3AE40(v1601);
              sub_22BD616A8();
              v1602 = swift_allocObject();
              sub_22BD636BC(v1602);
              sub_22BD616A8();
              v1603 = swift_allocObject();
              sub_22BBD1A04(v1603);
              sub_22BB322B0();
              v1604 = swift_allocObject();
              sub_22BBBE888(v1604);
              sub_22BB322B0();
              v1605 = swift_allocObject();
              v1606 = sub_22BD60980(v1605);
              sub_22BB34620(v1606);
              v1607[4] = v1608;
              v1607[5] = v879;
              v1607[6] = sub_22BB89C08;
              v1607[7] = v1599;
              v1607[8] = sub_22BB89C7C;
              v1607[9] = v1594;
              v1607[10] = sub_22BB89C08;
              v1607[11] = v13;
              v1607[12] = sub_22BB89C08;
              v1607[13] = v410;
              v1607[14] = sub_22BB89C7C;
              v1607[15] = v16;
              sub_22BD6443C();

              v1417 = sub_22BD60DFC();
              if (os_log_type_enabled(v1417, v1609))
              {
                sub_22BB67968(22);
                v1610 = sub_22BBBFF34();
                sub_22BD5FA78(v1610);
                *(v14 + 1104) = v273;
                v1611 = sub_22BB71F54();
                sub_22BB67984(v1611, v1612, v1613, v1614);
                if (!v273)
                {

                  *(v14 + 1096) = sub_22BB89C08;
                  *(v14 + 1104) = v1599;
                  v1615 = sub_22BB71F54();
                  sub_22BB67984(v1615, v1616, v1617, v1618);

                  *(v14 + 1096) = sub_22BB89C7C;
                  *(v14 + 1104) = v1594;
                  v1619 = sub_22BB71F54();
                  sub_22BB67984(v1619, v1620, v1621, v1622);

                  sub_22BBD2250();
                  *(v14 + 1104) = v13;
                  v1623 = sub_22BB71F54();
                  sub_22BB67984(v1623, v1624, v1625, v1626);

                  sub_22BBD2250();
                  *(v14 + 1104) = v410;
                  v1627 = sub_22BB71F54();
                  sub_22BB67984(v1627, v1628, v1629, v1630);

                  *(v14 + 1096) = sub_22BB89C7C;
                  *(v14 + 1104) = v16;
                  v1631 = sub_22BB71F54();
                  sub_22BB67984(v1631, v1632, v1633, v1634);
                  sub_22BD643FC();
                  sub_22BD61B3C();
                  sub_22BD62590();
                  sub_22BD636C8(v1635, v1636, v1637, "[SessionCoordinator %{public}s] | [TX %{public}s] Transaction is work-allowing advisory.");
                  sub_22BBBE7DC();
                  sub_22BB32238();
                  sub_22BB679C0();
                }

                goto LABEL_327;
              }

              sub_22BD6204C();

              v1638 = sub_22BD61130();
              v1639(v1638);
              sub_22BD64BF8();
              v6466 = v1640;
              v1641 = sub_22BB897B0();
              sub_22BB707F8(v1641, v14 + 880);
              sub_22BD618EC();
              *(v1594 + 16) = v16;
            }

            else
            {
              v6395 = v273;
            }

            sub_22BB966A8();
            v1642 = sub_22BB94E5C();
            v1643(v1642);
            sub_22BDB96A4();
            v1644 = sub_22BB2F324();
            (v13)(v1644);
            v1645 = sub_22BB95A18();
            v45 = v6465;
            v1646 = (v14)(v1645);
            v1647 = sub_22BB2F0E0();
            v1648 = (v410)(v1647);
            if ((v1646 & 1) == 0)
            {
              sub_22BD62FC4();
              sub_22BDB63E4();
              sub_22BB322B0();
              v1649 = swift_allocObject();
              sub_22BB3CF50(v1649);
              sub_22BB366B8();
              v1650 = swift_allocObject();
              sub_22BD63DE4(v1650);
              sub_22BB322B0();
              swift_allocObject();
              sub_22BD60754();
              *(v1651 + 16) = v1652;
              *(v1651 + 24) = v879;

              v6454 = sub_22BDB77C4();
              LODWORD(v6452) = sub_22BDBB134();
              sub_22BD616A8();
              v1653 = swift_allocObject();
              v39 = v6465;
              sub_22BB3CE80(v1653);
              sub_22BD616A8();
              v1654 = swift_allocObject();
              sub_22BD61688(v1654);
              sub_22BB322B0();
              swift_allocObject();
              sub_22BB9710C();
              *(v1655 + 16) = v1656;
              *(v1655 + 24) = v1649;
              sub_22BB322B0();
              swift_allocObject();
              sub_22BD5F734();
              *(v1657 + 16) = v1658;
              *(v1657 + 24) = v273;
              sub_22BD616A8();
              v1659 = swift_allocObject();
              sub_22BD64C7C(v1659);
              sub_22BD616A8();
              v1660 = swift_allocObject();
              sub_22BBD1A04(v1660);
              sub_22BB322B0();
              v1661 = swift_allocObject();
              sub_22BBBE888(v1661);
              sub_22BB322B0();
              v1662 = swift_allocObject();
              v37 = sub_22BD60980(v1662);
              sub_22BB34620(v37);
              v1663[4] = v1664;
              v1663[5] = v879;
              v1663[6] = sub_22BB89C08;
              v1663[7] = v13;
              v1663[8] = sub_22BB89C7C;
              v1663[9] = v14;
              v1663[10] = sub_22BB89C08;
              v1663[11] = v6465;
              v1663[12] = sub_22BB89C08;
              v1663[13] = v410;
              v1663[14] = sub_22BB89C7C;
              v1663[15] = v16;
              sub_22BD6443C();

              v17 = sub_22BD60DFC();
              if (!os_log_type_enabled(v17, v1665))
              {
                sub_22BB3FB4C();
                v20 = *(v6465 + 3832);

                v1678 = sub_22BD61130();
                v1679(v1678);
                v14 = v6465;
                sub_22BD600DC();

                v1680 = sub_22BB97B18();
                sub_22BB325EC(v1680, &qword_27D8E3218, &qword_22BDBE390);
                sub_22BD5FA08();

                v1681 = sub_22BD00AA4();
                sub_22BB74044(v1681, v1682, v6465);

                sub_22BB35CBC();
                sub_22BB34648();
                LODWORD(v6432) = *(v6465 + 4924);
                LODWORD(v6435) = *(v6465 + 4920);
                LODWORD(v6433) = *(v6465 + 4916);
                v45 = v6466;
                continue;
              }

              sub_22BD64EB0();
              v1666 = sub_22BD62464();
              sub_22BB975AC(v1666);
              if (!v273)
              {

                *(v6465 + 1352) = sub_22BB89C08;
                *(v6465 + 1360) = v13;
                v1667 = sub_22BD6020C();
                sub_22BB67984(v1667, v1668, v1669, v1670);
                sub_22BD653E0();
                *(v6465 + 1352) = sub_22BB89C7C;
                *(v6465 + 1360) = v37;
                v1671 = sub_22BD6020C();
                sub_22BB67984(v1671, v1672, v1673, v1674);

                sub_22BD60444();

                sub_22BD60810();

                sub_22BB6FD50();
                sub_22BD624B8();

                sub_22BD61B3C();
                sub_22BD62590();
                sub_22BD63F58(v1675, v1676, v1677, "[SessionCoordinator %{public}s] | [TX %{public}s] Transaction postcondition FAILED. It will be skipped.");
                sub_22BD62500();
                swift_arrayDestroy();
                sub_22BB30458();
                sub_22BB679C0();
              }

              goto LABEL_362;
            }

            sub_22BD63228(v1648);
            sub_22BB322B0();
            v3307 = swift_allocObject();
            sub_22BB922D8(v3307);
            sub_22BB366B8();
            v3308 = swift_allocObject();
            sub_22BBBE07C(v3308);
            sub_22BB322B0();
            v3309 = swift_allocObject();
            sub_22BD60058(v3309);
            sub_22BDB77C4();
            LODWORD(v6454) = sub_22BDBB134();
            sub_22BD616A8();
            v3310 = swift_allocObject();
            sub_22BD62F80(v3310);
            sub_22BD616A8();
            v265 = swift_allocObject();
            sub_22BD61F00(v265);
            sub_22BB322B0();
            v3311 = swift_allocObject();
            sub_22BBC0614(v3311);
            sub_22BB322B0();
            swift_allocObject();
            sub_22BD5F74C();
            *(v3312 + 16) = v3313;
            *(v3312 + 24) = v3311;
            sub_22BD616A8();
            v3314 = swift_allocObject();
            sub_22BD64C40(v3314);
            sub_22BD616A8();
            v3315 = swift_allocObject();
            sub_22BB89CA8(v3315);
            sub_22BB322B0();
            v3316 = swift_allocObject();
            sub_22BBBD2AC(v3316);
            sub_22BB322B0();
            swift_allocObject();
            sub_22BD5F764();
            v3318 = sub_22BD620AC(v3317);
            sub_22BB348E0(v3318);
            v3319[4] = v3320;
            v3319[5] = v14;
            v3319[6] = sub_22BB89C08;
            v3319[7] = v265;
            v3319[8] = sub_22BB89C7C;
            v3319[9] = v6465;
            v3319[10] = sub_22BB89C08;
            v3319[11] = v1417;
            v3319[12] = sub_22BB89C08;
            v3319[13] = v16;
            v3319[14] = sub_22BB89C7C;
            v3319[15] = v879;

            sub_22BD62518();
            if (os_log_type_enabled(v3316, v3321))
            {
              sub_22BB67968(22);
              v3322 = sub_22BBC01B4();
              v410[255] = 0;
              v410[256] = v3322;
              sub_22BD60D8C();
              v410[254] = v3323;
              v410[131] = sub_22BB89C08;
              v410[132] = v14;
              v3324 = sub_22BD5FCD8();
              v273 = v6466;
              sub_22BB67984(v3324, v3325, v3326, v3327);
              if (v6466)
              {
LABEL_327:

                goto LABEL_367;
              }

              v410[131] = sub_22BB89C08;
              v410[132] = v265;
              v3398 = sub_22BD5FCD8();
              sub_22BB67984(v3398, v3399, v3400, v3401);

              v410[131] = sub_22BB89C7C;
              v410[132] = v6465;
              v3469 = sub_22BD5FCD8();
              sub_22BB67984(v3469, v3470, v3471, v3472);

              sub_22BD61044();
              v410[132] = v1417;
              v3535 = sub_22BD5FCD8();
              sub_22BB67984(v3535, v3536, v3537, v3538);

              sub_22BB3B510();
              *(v3579 + 1048) = v3580;
              *(v3579 + 1056) = v16;
              sub_22BB73B1C(v3579);
LABEL_403:

              sub_22BB70564();
              *(v3616 + 1048) = v3617;
              *(v3616 + 1056) = v879;
              sub_22BB73B1C(v3616);
              if (!v273)
              {
                sub_22BD63154();
                sub_22BB76660(&dword_22BB2C000, v3618, v3619, "[SessionCoordinator %{public}s] | [TX %{public}s] Transaction postcondition passed.");
                sub_22BD619D4();
                sub_22BD6193C();
                sub_22BB679C0();
              }

              goto LABEL_410;
            }

            sub_22BD631E4();

            v3328 = sub_22BD623D0();
            v3329(v3328);
            sub_22BD623C0();
            sub_22BB31B88();
            swift_beginAccess();
            sub_22BD64A14();
            sub_22BB31B88();
            swift_beginAccess();
            sub_22BD61A94();
            v14 = v410;
            if (v165)
            {
              if (v3331)
              {
                sub_22BD65368(v3330);
                sub_22BB322B0();
                v3332 = swift_allocObject();
                sub_22BB351E8(v3332);
                sub_22BB366B8();
                v3333 = swift_allocObject();
                sub_22BD6227C(v3333);
                sub_22BB322B0();
                v3334 = swift_allocObject();
                sub_22BB52D3C(v3334);
                v6453 = sub_22BDB77C4();
                sub_22BDBB134();
                sub_22BD616A8();
                v3335 = swift_allocObject();
                sub_22BD60C88(v3335);
                sub_22BD616A8();
                v3336 = swift_allocObject();
                sub_22BD60EF4(v3336);
                sub_22BB322B0();
                v3337 = swift_allocObject();
                sub_22BB70160(v3337);
                sub_22BB322B0();
                swift_allocObject();
                sub_22BB97CD8();
                *(v3338 + 16) = v3339;
                *(v3338 + 24) = v3337;
                sub_22BD616A8();
                v3340 = swift_allocObject();
                sub_22BBBEC2C(v3340);
                sub_22BD616A8();
                v3341 = swift_allocObject();
                sub_22BBB7560(v3341);
                sub_22BB322B0();
                v3342 = swift_allocObject();
                sub_22BD602C4(v3342);
                sub_22BB322B0();
                swift_allocObject();
                sub_22BD5F89C();
                v3344 = sub_22BD617F4(v3343);
                sub_22BB3602C(v3344);
                v3345[6] = sub_22BB89C08;
                v3345[7] = v6465;
                v3345[8] = sub_22BB89C7C;
                v3345[9] = v265;
                v3345[10] = sub_22BB89C08;
                v3345[11] = v16;
                v3345[12] = sub_22BB89C08;
                v3345[13] = v879;
                v3345[14] = sub_22BB89C7C;
                v3345[15] = v410;

                sub_22BBC0AE4();
                sub_22BBC23B0();

                if (sub_22BD61814())
                {
                  sub_22BB67968(22);
                  v3346 = sub_22BBC01B4();
                  v410[251] = 0;
                  v410[252] = v3346;
                  sub_22BD60D8C();
                  v410[250] = v3347;
                  v410[129] = sub_22BB89C08;
                  v410[130] = v1417;
                  v3348 = sub_22BD60178();
                  v273 = v6466;
                  sub_22BB67984(v3348, v3349, v3350, v3351);
                  if (!v6466)
                  {

                    v410[129] = sub_22BB89C08;
                    v410[130] = v6465;
                    v3352 = sub_22BD60178();
                    sub_22BB67984(v3352, v3353, v3354, v3355);

                    sub_22BB70564();
                    *(v3356 + 1032) = v3357;
                    *(v3356 + 1040) = v265;
                    sub_22BD611DC(v3356);

                    sub_22BB3B510();
                    *(v3358 + 1032) = v3359;
                    *(v3358 + 1040) = v6454;
                    sub_22BD611DC(v3358);

                    sub_22BB3B510();
                    *(v3360 + 1032) = v3361;
                    *(v3360 + 1040) = v6448;
                    sub_22BD611DC(v3360);

                    sub_22BB70564();
                    *(v3362 + 1032) = v3363;
                    *(v3362 + 1040) = v410;
                    sub_22BD611DC(v3362);
                    sub_22BD61A18();

                    v3366 = "[SessionCoordinator %{public}s] | [TX %{public}s] Transaction allowed to cause work and be sent to client.";
                    goto LABEL_414;
                  }

                  goto LABEL_362;
                }

                goto LABEL_369;
              }

              sub_22BD65308(v3330);
              sub_22BB322B0();
              v3402 = swift_allocObject();
              sub_22BB351E8(v3402);
              sub_22BB366B8();
              v3403 = swift_allocObject();
              sub_22BD6227C(v3403);
              sub_22BB322B0();
              v3404 = swift_allocObject();
              sub_22BB52D3C(v3404);
              v6453 = sub_22BDB77C4();
              sub_22BDBB134();
              sub_22BD616A8();
              v3405 = swift_allocObject();
              sub_22BD60C88(v3405);
              sub_22BD616A8();
              v3406 = swift_allocObject();
              sub_22BD60EF4(v3406);
              sub_22BB322B0();
              v3337 = swift_allocObject();
              sub_22BB70160(v3337);
              sub_22BB322B0();
              swift_allocObject();
              sub_22BB97CD8();
              *(v3407 + 16) = v3408;
              *(v3407 + 24) = v3337;
              sub_22BD616A8();
              v3409 = swift_allocObject();
              sub_22BBBEC2C(v3409);
              sub_22BD616A8();
              v3410 = swift_allocObject();
              sub_22BBB7560(v3410);
              sub_22BB322B0();
              v3411 = swift_allocObject();
              sub_22BD602C4(v3411);
              sub_22BB322B0();
              swift_allocObject();
              sub_22BD5F89C();
              v3413 = sub_22BD617F4(v3412);
              sub_22BB3602C(v3413);
              v3414[6] = sub_22BB89C08;
              v3414[7] = v6465;
              v3414[8] = sub_22BB89C7C;
              v3414[9] = v265;
              v3414[10] = sub_22BB89C08;
              v3414[11] = v16;
              v3414[12] = sub_22BB89C08;
              v3414[13] = v879;
              v3414[14] = sub_22BB89C7C;
              v3414[15] = v410;

              sub_22BBC0AE4();
              sub_22BBC23B0();

              if (!sub_22BD61814())
              {
                goto LABEL_369;
              }

              sub_22BB67968(22);
              v3415 = sub_22BBC01B4();
              v410[247] = 0;
              v410[248] = v3415;
              sub_22BD60D8C();
              v410[246] = v3416;
              v410[195] = sub_22BB89C08;
              v410[196] = v1417;
              v3417 = sub_22BD60150();
              v273 = v6466;
              sub_22BB67984(v3417, v3418, v3419, v3420);
              if (!v6466)
              {

                v410[195] = sub_22BB89C08;
                v410[196] = v6465;
                v3421 = sub_22BD60150();
                sub_22BB67984(v3421, v3422, v3423, v3424);

                sub_22BB70564();
                *(v3425 + 1560) = v3426;
                *(v3425 + 1568) = v265;
                sub_22BB97758(v3425);

                sub_22BB3B510();
                *(v3427 + 1560) = v3428;
                *(v3427 + 1568) = v6454;
                sub_22BB97758(v3427);

                sub_22BB3B510();
                *(v3429 + 1560) = v3430;
                *(v3429 + 1568) = v6448;
                sub_22BB97758(v3429);

                sub_22BB70564();
                *(v3431 + 1560) = v3432;
                *(v3431 + 1568) = v410;
                sub_22BB97758(v3431);
                sub_22BD61A18();

                v3366 = "[SessionCoordinator %{public}s] | [TX %{public}s] Transaction allowed to cause work, but will not be sent to client.";
                goto LABEL_414;
              }
            }

            else
            {
              if (v3331)
              {
                sub_22BD65320(v3330);
                sub_22BB322B0();
                v3367 = swift_allocObject();
                sub_22BB351E8(v3367);
                sub_22BB366B8();
                v3368 = swift_allocObject();
                sub_22BD6227C(v3368);
                sub_22BB322B0();
                v3369 = swift_allocObject();
                sub_22BB52D3C(v3369);
                v6453 = sub_22BDB77C4();
                sub_22BDBB134();
                sub_22BD616A8();
                v3370 = swift_allocObject();
                sub_22BD60C88(v3370);
                sub_22BD616A8();
                v3371 = swift_allocObject();
                sub_22BD60EF4(v3371);
                sub_22BB322B0();
                v3337 = swift_allocObject();
                sub_22BB70160(v3337);
                sub_22BB322B0();
                swift_allocObject();
                sub_22BB97CD8();
                *(v3372 + 16) = v3373;
                *(v3372 + 24) = v3337;
                sub_22BD616A8();
                v3374 = swift_allocObject();
                sub_22BBBEC2C(v3374);
                sub_22BD616A8();
                v3375 = swift_allocObject();
                sub_22BBB7560(v3375);
                sub_22BB322B0();
                v3376 = swift_allocObject();
                sub_22BD602C4(v3376);
                sub_22BB322B0();
                swift_allocObject();
                sub_22BD5F89C();
                v3378 = sub_22BD617F4(v3377);
                sub_22BB3602C(v3378);
                v3379[6] = sub_22BB89C08;
                v3379[7] = v6465;
                v3379[8] = sub_22BB89C7C;
                v3379[9] = v265;
                v3379[10] = sub_22BB89C08;
                v3379[11] = v16;
                v3379[12] = sub_22BB89C08;
                v3379[13] = v879;
                v3379[14] = sub_22BB89C7C;
                v3379[15] = v410;

                sub_22BBC0AE4();
                sub_22BBC23B0();

                if (sub_22BD61814())
                {
                  sub_22BB67968(22);
                  v3380 = sub_22BBC01B4();
                  v410[243] = 0;
                  v410[244] = v3380;
                  sub_22BD60D8C();
                  v410[242] = v3381;
                  v410[123] = sub_22BB89C08;
                  v410[124] = v1417;
                  v3382 = sub_22BD60164();
                  v273 = v6466;
                  sub_22BB67984(v3382, v3383, v3384, v3385);
                  if (!v6466)
                  {

                    v410[123] = sub_22BB89C08;
                    v410[124] = v6465;
                    v3386 = sub_22BD60164();
                    sub_22BB67984(v3386, v3387, v3388, v3389);

                    sub_22BB70564();
                    *(v3390 + 984) = v3391;
                    *(v3390 + 992) = v265;
                    sub_22BD611BC(v3390);

                    sub_22BB3B510();
                    *(v3392 + 984) = v3393;
                    *(v3392 + 992) = v6454;
                    sub_22BD611BC(v3392);

                    sub_22BB3B510();
                    *(v3394 + 984) = v3395;
                    *(v3394 + 992) = v6448;
                    sub_22BD611BC(v3394);

                    sub_22BB70564();
                    *(v3396 + 984) = v3397;
                    *(v3396 + 992) = v410;
                    sub_22BD611BC(v3396);
                    sub_22BD61A18();

                    v3366 = "[SessionCoordinator %{public}s] | [TX %{public}s] Transaction not allowed to cause work, but will be sent to client.";
                    goto LABEL_414;
                  }

                  goto LABEL_362;
                }

LABEL_369:
                v3473 = v410[480];

                v3474 = sub_22BB37074();
                (v6459)(v3474);
                v3475 = sub_22BB756F4(v6466);
                if (v3475 != v3476)
                {
                  sub_22BB97DE8();
                  if (v3477 != v355)
                  {
                    __break(1u);
                  }

                  else if (v3337 < v3473)
                  {
                    sub_22BB73FE8();
                    do
                    {
                      sub_22BD60880();
                      sub_22BD60D38();
                      nullsub_1();

                      sub_22BB93884();
                      sub_22BB52814();
                      sub_22BBBEC20();
                      sub_22BDB9AB4();
                      nullsub_1();
                      v3478 = sub_22BB97B18();
                      sub_22BB3CD70(v3478, v265, &qword_27D8E3218, &qword_22BDBE390);
                      sub_22BB93884();
                      sub_22BB52814();
                      sub_22BDB9974();
                      nullsub_1();
                      sub_22BD65278();
                      sub_22BB93884();
                      sub_22BB52814();
                      sub_22BD65230();
                      nullsub_1();
                      sub_22BD61C1C();
                    }

                    while (!v165);
                    swift_endAccess();
                    goto LABEL_376;
                  }

                  __break(1u);
                  goto LABEL_417;
                }

LABEL_376:
                sub_22BBE6DE0(&qword_27D8E6570, &qword_22BDCFBF0);
                sub_22BB97200();
                v3479 = sub_22BDBAB14();
                sub_22BD631C0(v3479);

                v3480 = swift_task_alloc();
                v3481 = sub_22BD64B78(v3480);
                *v3481 = v3482;
                sub_22BB34818(v3481);
                sub_22BD61554();
                sub_22BB33430();

                sub_22BD59BE8(v3483);
                return;
              }

              sub_22BD652F0(v3330);
              sub_22BB322B0();
              v3433 = swift_allocObject();
              sub_22BB351E8(v3433);
              sub_22BB366B8();
              v3434 = swift_allocObject();
              sub_22BD6227C(v3434);
              sub_22BB322B0();
              v3435 = swift_allocObject();
              sub_22BB52D3C(v3435);
              v6453 = sub_22BDB77C4();
              sub_22BDBB134();
              sub_22BD616A8();
              v3436 = swift_allocObject();
              sub_22BD60C88(v3436);
              sub_22BD616A8();
              v3437 = swift_allocObject();
              sub_22BD60EF4(v3437);
              sub_22BB322B0();
              v3337 = swift_allocObject();
              sub_22BB70160(v3337);
              sub_22BB322B0();
              swift_allocObject();
              sub_22BB97CD8();
              *(v3438 + 16) = v3439;
              *(v3438 + 24) = v3337;
              sub_22BD616A8();
              v3440 = swift_allocObject();
              sub_22BBBEC2C(v3440);
              sub_22BD616A8();
              v3441 = swift_allocObject();
              sub_22BBB7560(v3441);
              sub_22BB322B0();
              v3442 = swift_allocObject();
              sub_22BD602C4(v3442);
              sub_22BB322B0();
              swift_allocObject();
              sub_22BD5F89C();
              v3444 = sub_22BD617F4(v3443);
              sub_22BB3602C(v3444);
              v3445[6] = sub_22BB89C08;
              v3445[7] = v6465;
              v3445[8] = sub_22BB89C7C;
              v3445[9] = v265;
              v3445[10] = sub_22BB89C08;
              v3445[11] = v16;
              v3445[12] = sub_22BB89C08;
              v3445[13] = v879;
              v3445[14] = sub_22BB89C7C;
              v3445[15] = v410;

              sub_22BBC0AE4();
              sub_22BBC23B0();

              if (!sub_22BD61814())
              {
                goto LABEL_369;
              }

              sub_22BB67968(22);
              v3446 = sub_22BBC01B4();
              v410[239] = 0;
              v410[240] = v3446;
              sub_22BD60D8C();
              v410[238] = v3447;
              v410[127] = sub_22BB89C08;
              v410[128] = v1417;
              v3448 = sub_22BD6013C();
              v273 = v6466;
              sub_22BB67984(v3448, v3449, v3450, v3451);
              if (!v6466)
              {
LABEL_387:

                *(v14 + 1016) = sub_22BB89C08;
                *(v14 + 1024) = v45;
                v3564 = sub_22BD6013C();
                sub_22BB67984(v3564, v3565, v3566, v3567);
                if (v273)
                {

                  goto LABEL_368;
                }

                sub_22BB70564();
                *(v3581 + 1016) = v3582;
                *(v3581 + 1024) = v265;
                sub_22BD6119C(v3581);

                sub_22BB3B510();
                *(v3620 + 1016) = v3621;
                *(v3620 + 1024) = v6454;
                sub_22BD6119C(v3620);

                sub_22BB3B510();
                *(v3626 + 1016) = v3627;
                *(v3626 + 1024) = v6448;
                sub_22BD6119C(v3626);

                sub_22BB70564();
                *(v3634 + 1016) = v3635;
                *(v3634 + 1024) = v410;
                sub_22BD6119C(v3634);
                sub_22BD61A18();

                v3366 = "[SessionCoordinator %{public}s] | [TX %{public}s] Transaction not allowed to cause work or be sent to client.";
LABEL_414:
                sub_22BD632D4(&dword_22BB2C000, v3364, v3365, v3366);
                sub_22BD619D4();
                sub_22BD6193C();
                sub_22BB679C0();
              }
            }

LABEL_362:

            goto LABEL_368;
          }

          v947 = sub_22BD00E3C();
          sub_22BB325EC(v947, v948, v863);
          v949 = sub_22BB32E04();
          sub_22BB325EC(v949, v950, v863);
          v951 = sub_22BB3627C();
          v952(v951);
          v879 = name;
        }

        sub_22BB325EC(*(v14 + 3360), &qword_27D8E6510, &qword_22BDCE418);
        v883 = 0;
        goto LABEL_145;
    }
  }
}