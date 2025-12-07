void sub_22BB4F9D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_22BBE6DE0(&qword_27D8E64E8, &qword_22BDCE3F0);
  sub_22BB2F0C8(v6);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - v8;
  v10 = type metadata accessor for SpanMetadata(0);
  sub_22BB30444();
  MEMORY[0x28223BE20](v11);
  sub_22BB30574();
  v14 = v13 - v12;
  v15 = sub_22BB3A190();
  if (sub_22BB3AA28(v15, v16, v10) == 1)
  {
    sub_22BB58728(a1, &qword_27D8E64E8, &qword_22BDCE3F0);
    sub_22BB4FC1C(a2);
    if (v17)
    {
      swift_isUniquelyReferenced_nonNull_native();
      v22 = *v3;
      sub_22BBE6DE0(&qword_27D8E67F8, &qword_22BDCF4C0);
      sub_22BDBB4A4();
      v18 = v22;
      sub_22BB5005C();
      sub_22BB6B7B8();
      sub_22BDBB4C4();
      v19 = 0;
      *v3 = v18;
    }

    else
    {
      v19 = 1;
    }

    sub_22BB336D0(v9, v19, 1, v10);
    sub_22BB58728(v9, &qword_27D8E64E8, &qword_22BDCE3F0);
  }

  else
  {
    sub_22BB5005C();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    sub_22BB4FF14(v14, a2, isUniquelyReferenced_nonNull_native);
    *v3 = v22;
  }
}

unint64_t sub_22BB4FC1C(uint64_t a1)
{
  sub_22BB6B7B8();
  v2 = sub_22BDBABA4();
  return sub_22BB4FDD0(a1, v2);
}

uint64_t sub_22BB4FC9C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_22BBE6DE0(&qword_27D8E3218, &qword_22BDBE390);
    v8 = v5 + *(a4 + 24);

    return sub_22BB336D0(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22BB4FD3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_22BBE6DE0(&qword_27D8E3218, &qword_22BDBE390);
    v9 = a1 + *(a3 + 24);

    return sub_22BB3AA28(v9, a2, v8);
  }
}

unint64_t sub_22BB4FDD0(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    sub_22BB96A28();
    if (sub_22BDBABD4())
    {
      break;
    }
  }

  return i;
}

void sub_22BB4FEA0()
{
  sub_22BB3FE60();
  v5 = sub_22BB34428(v1, v2, v3, v4);
  *(*(v6 + 48) + 8 * v5) = v7;
  v8 = type metadata accessor for SpanMetadata(0);
  sub_22BB2F0C8(v8);
  sub_22BB312A4();
  sub_22BB38958();
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

void sub_22BB4FF14(uint64_t a1, uint64_t a2, char a3)
{
  v5 = *v3;
  sub_22BB4FC1C(a2);
  if (__OFADD__(*(v5 + 16), (v6 & 1) == 0))
  {
    __break(1u);
LABEL_10:
    sub_22BDBB744();
    __break(1u);
    return;
  }

  v7 = v6;
  sub_22BBE6DE0(&qword_27D8E67F8, &qword_22BDCF4C0);
  if (sub_22BDBB4A4())
  {
    sub_22BB4FC1C(a2);
    if ((v7 & 1) != (v8 & 1))
    {
      goto LABEL_10;
    }
  }

  if (v7)
  {
    type metadata accessor for SpanMetadata(0);
    sub_22BD85988();
  }

  else
  {

    sub_22BB4FEA0();
  }
}

uint64_t sub_22BB5005C()
{
  sub_22BB35F54();
  v1(0);
  sub_22BB2F330();
  v2 = sub_22BB31F54();
  v3(v2);
  return v0;
}

void sub_22BB500E4()
{
  v2 = *(v0 + 3488);
  *(v1 - 160) = *(v0 + 3520);
  *(v1 - 152) = v2;
}

uint64_t type metadata accessor for SnippetStreamingRouter.Scoped(uint64_t a1)
{
  result = qword_28142A190;
  if (!qword_28142A190)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SnippetStreamingRouter.Scoped.init(base:)(uint64_t a1)
{
  v3 = type metadata accessor for SnippetStreamingRouter.ScopeID(0);
  v4 = sub_22BB2F0C8(v3);
  MEMORY[0x28223BE20](v4);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + 16) = a1;
  sub_22BDB43D4();
  sub_22BB501FC(v6, v1 + OBJC_IVAR____TtCC23IntelligenceFlowRuntime22SnippetStreamingRouter6Scoped_scope);
  return v1;
}

uint64_t sub_22BB501FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SnippetStreamingRouter.ScopeID(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BB50260(uint64_t a1, uint64_t a2)
{
  sub_22BB6B9D0();
  sub_22BB30F5C();
  v2 = swift_task_alloc();
  v3 = sub_22BB31BAC(v2);
  *v3 = v4;
  v3[1] = sub_22BB3C48C;
  sub_22BB35FA0();
  sub_22BB3A1C0();

  return v10(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_22BB50318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_22BB6AB00;

  return sub_22BB503D0(a2, a3, a4, a5);
}

uint64_t sub_22BB503D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[55] = a3;
  v4[56] = a4;
  v4[53] = a1;
  v4[54] = a2;
  v5 = sub_22BBE6DE0(&qword_27D8E6600, &qword_22BDCE578);
  v4[57] = v5;
  v4[58] = *(v5 - 8);
  v4[59] = swift_task_alloc();
  v6 = *(_s24StandardSessionResourcesVMa(0) - 8);
  v4[60] = v6;
  v4[61] = *(v6 + 64);
  v4[62] = swift_task_alloc();
  v7 = *(sub_22BDB5664() - 8);
  v4[63] = v7;
  v4[64] = *(v7 + 64);
  v4[65] = swift_task_alloc();
  sub_22BBE6DE0(&qword_27D8E2978, &qword_22BDBD020);
  v4[66] = swift_task_alloc();
  v4[67] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BB505A4, 0, 0);
}

uint64_t sub_22BB505A4()
{
  v57 = v0;
  v1 = *(v0 + 488);
  v50 = *(v0 + 480);
  v51 = *(v0 + 504);
  v2 = *(v0 + 432);
  v56 = 0;
  memset(v55, 0, sizeof(v55));
  v52 = *(v2 + 16);
  v3 = sub_22BB50C38(v55, v52);
  v4 = 0;
  v47 = v3;
  v48 = v2 + 32;
  v49 = v1 + 7;
  v5 = &qword_27D8E2978;
  while (1)
  {
    v6 = v52;
    v7 = 0uLL;
    v8 = 0uLL;
    v9 = 0uLL;
    if (v4 != v52)
    {
      if (v4 >= v52)
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v6 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_21;
      }

      *(v0 + 64) = v4;
      sub_22BB690EC(v48 + 40 * v4, v0 + 72);
      v7 = *(v0 + 64);
      v8 = *(v0 + 80);
      v9 = *(v0 + 96);
    }

    *(v0 + 16) = v7;
    *(v0 + 32) = v8;
    *(v0 + 48) = v9;
    if (!v9)
    {
      break;
    }

    v54 = v6;
    v10 = *(v0 + 520);
    v11 = *(v0 + 512);
    v12 = *(v0 + 496);
    v13 = *(v0 + 440);
    v53 = v7;
    v14 = sub_22BDBAEF4();
    v15 = sub_22BB3A190();
    sub_22BB336D0(v15, v16, 1, v14);
    sub_22BB382E8((v0 + 24), v0 + 320);
    sub_22BB32CE8();
    sub_22BB335C0(v13, v10);
    v17 = sub_22BB96020();
    sub_22BB335C0(v17, v18);
    v19 = v5;
    v20 = (*(v51 + 80) + 72) & ~*(v51 + 80);
    v21 = (v11 + *(v50 + 80) + v20) & ~*(v50 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = 0;
    v23 = (v22 + 16);
    *(v22 + 24) = 0;
    sub_22BB382E8((v0 + 320), v22 + 32);
    sub_22BB2F5B0();
    v24 = v22 + v20;
    v5 = v19;
    sub_22BB3A518(v10, v24);
    sub_22BB3A518(v12, v22 + v21);
    *(v22 + ((v49 + v21) & 0xFFFFFFFFFFFFFFF8)) = v53;
    sub_22BD63468();
    sub_22BB3CD70(v25, v26, v27, &qword_22BDBD020);
    v28 = sub_22BB3A190();
    if (sub_22BB3AA28(v28, v29, v14) == 1)
    {
      v30 = sub_22BB2F3F0();
      sub_22BB325EC(v30, v31, &qword_22BDBD020);
    }

    else
    {
      sub_22BDBAEE4();
      sub_22BB30474();
      v32 = sub_22BB2F324();
      v33(v32);
    }

    v34 = *v23;
    if (*v23)
    {
      v35 = *(v22 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v36 = v34;
      sub_22BB3FBBC();
      sub_22BDBAE44();
      sub_22BD63450();
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = 0;
      v35 = 0;
    }

    v37 = **(v0 + 424);

    sub_22BBE6DE0(&qword_27D8E65E8, &qword_22BDCE548);
    v38 = v35 | v36;
    if (v35 | v36)
    {
      v38 = v0 + 360;
      *(v0 + 360) = 0;
      *(v0 + 368) = 0;
      *(v0 + 376) = v36;
      *(v0 + 384) = v35;
    }

    *(v0 + 392) = 1;
    *(v0 + 400) = v38;
    *(v0 + 408) = v37;
    swift_task_create();

    v39 = sub_22BB2F3F0();
    sub_22BB325EC(v39, v40, &qword_22BDBD020);
    v4 = v54;
  }

  sub_22BBE6DE0(&qword_27D8E65E8, &qword_22BDCE548);
  sub_22BBE6DE0(qword_27D8E27F8, &unk_22BDBCE20);
  sub_22BB30AE4();
  sub_22BDBB014();
  v6 = v47;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    goto LABEL_17;
  }

LABEL_22:
  sub_22BD7DEC0(v6);
  v6 = v45;
LABEL_17:
  *(v0 + 544) = v6;
  swift_task_alloc();
  sub_22BB30B34();
  *(v0 + 552) = v41;
  *v41 = v42;
  v41[1] = sub_22BB6A264;
  sub_22BB9743C();
  sub_22BD6421C();

  return MEMORY[0x2822004E8](v43);
}

uint64_t sub_22BB50A00()
{
  sub_22BB30F94();
  v2 = *(sub_22BDB5664() - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  _s24StandardSessionResourcesVMa(0);
  sub_22BB3A75C();
  v6 = (((v3 + 72) & ~v3) + v4 + *(v5 + 80)) & ~*(v5 + 80);
  swift_unknownObjectRelease();
  sub_22BB32FA4((v1 + 32));
  sub_22BDB43E4();
  sub_22BB2F330();
  v8 = *(v7 + 8);
  v9 = sub_22BB3B69C();
  v8(v9);

  v10 = sub_22BB2F0E0();
  v8(v10);

  v11 = *(v0 + 32);
  sub_22BDB7F64();
  sub_22BB31F70();
  (*(v12 + 8))(v1 + v6 + v11);

  v13 = *(v0 + 40);
  sub_22BDB9C14();
  sub_22BB31F70();
  (*(v14 + 8))(v1 + v6 + v13);

  sub_22BB314EC();

  return MEMORY[0x2821FE8E8](v15);
}

uint64_t sub_22BB50C08()
{
  if (MEMORY[0x277D85020])
  {
    return sub_22BBE6DE0(&qword_27D8E68A0, &qword_22BDCFA10);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_22BB50C38(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v3 = result;
    if (a2)
    {
      sub_22BBE6DE0(&qword_27D8E6608, &qword_22BDCE580);
      v4 = sub_22BDBADC4();
      *(v4 + 16) = v2;
      v5 = v4 + 32;
      do
      {
        sub_22BB3CD70(v3, v5, &qword_27D8E6608, &qword_22BDCE580);
        v5 += 40;
        --v2;
      }

      while (v2);
    }

    else
    {
      v4 = MEMORY[0x277D84F90];
    }

    sub_22BB325EC(v3, &qword_27D8E6608, &qword_22BDCE580);
    return v4;
  }

  return result;
}

uint64_t sub_22BB50CF4(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_22BBBFEB0(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_22BB50D0C(uint64_t a1, uint64_t a2)
{
  v5 = sub_22BDB5F24();
  v6 = sub_22BB2F0C8(v5);
  MEMORY[0x28223BE20](v6);
  sub_22BB30574();
  sub_22BB36858();
  v7 = sub_22BDB9B54();
  sub_22BB30444();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  sub_22BB30574();
  sub_22BB3ABC8();
  sub_22BDB9904();
  sub_22BB2F330();
  MEMORY[0x28223BE20](v11);
  sub_22BB30574();
  sub_22BB33230();
  (*(v9 + 16))(v3, a2, v7);
  sub_22BDB99B4();
  sub_22BDB98F4();
  sub_22BDB47A4();
  sub_22BB366F4();
  v12 = sub_22BB3AAD8();
  sub_22BB388FC(v12, v13);
  sub_22BDB4374();
  sub_22BDB43E4();
  sub_22BB31F70();
  (*(v14 + 8))(v2);
  v15 = MEMORY[0x277D1E688];
  sub_22BB6914C(&qword_281428970, MEMORY[0x277D1E688], MEMORY[0x277D1E698]);
  sub_22BB6914C(&qword_281428978, v15, MEMORY[0x277D1E690]);
  sub_22BDB4784();

  return sub_22BB698E8();
}

uint64_t sub_22BB50F4C()
{
  v0 = swift_task_alloc();
  v1 = sub_22BB31BAC(v0);
  *v1 = v2;
  v3 = sub_22BB31BBC(v1);

  return v4(v3);
}

void sub_22BB51160()
{
  sub_22BB30F94();
  sub_22BB3B168(v2, v3, v4, v5, v6, v7, v8);
  sub_22BB30444();
  MEMORY[0x28223BE20](v9);
  sub_22BB34948();
  v10 = sub_22BBE6DE0(&qword_27D8E2978, &qword_22BDBD020);
  sub_22BB2F0C8(v10);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v11);
  v12 = sub_22BB89D6C();
  sub_22BB31B08(v1, v13, v14, v12);
  sub_22BB322B0();
  v15 = swift_allocObject();
  v16 = sub_22BB6BDD0(v15);
  v17(v16);
  v18 = swift_allocObject();
  *(v18 + 16) = v0;
  v19 = sub_22BB3E514(v18);
  v20(v19);
  sub_22BB33F68();

  v21 = v0;
  sub_22BB3AC10();

  sub_22BB325EC(v1, &qword_27D8E2978, &qword_22BDBD020);
  sub_22BB314EC();
}

uint64_t sub_22BB512F8@<X0>(uint64_t a1@<X8>)
{

  return sub_22BB690EC(a1 + v1, v2 + 16);
}

uint64_t sub_22BB51370(uint64_t result)
{
  *(result + 16) = sub_22BB89C80;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BB513A8()
{
  sub_22BB2F35C();
  sub_22BB35760();
  v0 = sub_22BDB43E4();
  sub_22BB2F0C8(v0);
  v1 = swift_task_alloc();
  v2 = sub_22BB31BAC(v1);
  *v2 = v3;
  v2[1] = sub_22BBF90EC;
  v4 = sub_22BB2F6E8();

  return sub_22BB51470(v4, v5, v6);
}

uint64_t sub_22BB51470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_22BDB5154();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_22BDB43E4();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v6 = sub_22BDB5764();
  v3[11] = v6;
  v3[12] = *(v6 - 8);
  v3[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BB515EC, 0, 0);
}

uint64_t sub_22BB515EC()
{
  sub_22BB30F5C();
  v1 = v0[7];
  v2 = v0[5];
  v3 = v0[6];
  (*(v0[9] + 16))(v0[10], v0[4], v0[8]);
  sub_22BDB5144();
  (*(v3 + 104))(v1, *MEMORY[0x277D1C8C0], v2);
  sub_22BB31B20();
  sub_22BDB5744();
  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sub_22BB53F38;
  sub_22BB3487C(v0[13]);

  return sub_22BB516FC();
}

uint64_t sub_22BB516FC()
{
  sub_22BB2F35C();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_22BDB52C4();
  sub_22BB2F0C8(v3);
  v1[4] = sub_22BB30ACC();
  v4 = sub_22BDB43E4();
  sub_22BB2F0C8(v4);
  v1[5] = sub_22BB30ACC();
  v5 = sub_22BDB5F24();
  sub_22BB2F0C8(v5);
  v1[6] = sub_22BB30ACC();
  if (qword_28142A928 != -1)
  {
    sub_22BB36324(&qword_28142A928);
  }

  v1[7] = qword_28142F3F0;
  type metadata accessor for SessionControlActor();
  sub_22BB96094();
  sub_22BB3B194(v6, v7);
  sub_22BD63964();

  sub_22BB30AE4();
  sub_22BDBAE44();
  sub_22BD64CF0();
  v1[8] = v8;
  v1[9] = v9;
  v10 = sub_22BD649DC();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_22BB51864()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_22BB518C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v27 = *(v25 + 112);

  return v27, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25;
}

uint64_t sub_22BB518E8(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t sub_22BB5190C(uint64_t a1, uint64_t a2)
{
  v5 = sub_22BBE6DE0(&qword_27D8E67E8, &qword_22BDCF4B0);
  sub_22BB2F0C8(v5);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v6);
  sub_22BB3721C();
  v7 = type metadata accessor for SessionSwitchboard.SessionInfo(0);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v8);
  sub_22BB30574();
  sub_22BB345CC();
  sub_22BB51A9C();
  if (v2)
  {
    return v9;
  }

  sub_22BB89970();
  swift_beginAccess();
  sub_22BB52A38();
  sub_22BB35204();
  sub_22BB31814(v11, v12, v13);
  if (v14)
  {
    sub_22BB58728(v3, &qword_27D8E67E8, &qword_22BDCF4B0);
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
    v10 = *(v4 + *(v7 + 32));

    sub_22BB33EB8();
    sub_22BB34698();
  }

  return v10;
}

void sub_22BB51A9C()
{
  sub_22BB31014();
  v142 = v1;
  v3 = v0;
  v5 = v4;
  v6 = sub_22BDB5F24();
  v7 = sub_22BB2F0C8(v6);
  MEMORY[0x28223BE20](v7);
  sub_22BB30C74();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  sub_22BB2F384();
  v141 = v12;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v13);
  sub_22BB2F384();
  v137 = v14;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v15);
  sub_22BB2F39C();
  v134[2] = v16;
  sub_22BB2F120();
  v143 = sub_22BDB52C4();
  sub_22BB2F330();
  MEMORY[0x28223BE20](v17);
  sub_22BB30C74();
  sub_22BB34360();
  MEMORY[0x28223BE20](v18);
  sub_22BB2F384();
  v139 = v19;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v20);
  sub_22BB2F384();
  v136 = v21;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v22);
  sub_22BB2F39C();
  v134[1] = v23;
  sub_22BB2F120();
  v144 = sub_22BDB77D4();
  sub_22BB30444();
  MEMORY[0x28223BE20](v24);
  sub_22BB30C74();
  v27 = v25 - v26;
  MEMORY[0x28223BE20](v28);
  sub_22BB2F384();
  v140 = v29;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v30);
  sub_22BB2F384();
  v138 = v31;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v32);
  sub_22BB2F39C();
  v135 = v33;
  v34 = sub_22BBE6DE0(&qword_27D8E67E8, &qword_22BDCF4B0);
  sub_22BB2F0C8(v34);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v35);
  v37 = v134 - v36;
  v38 = type metadata accessor for SessionSwitchboard.SessionInfo(0);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v39);
  sub_22BB30574();
  v42 = v41 - v40;
  sub_22BB89970();
  swift_beginAccess();
  sub_22BB52A38();
  v43 = sub_22BB3A190();
  sub_22BB31814(v43, v44, v38);
  if (!v45)
  {
    sub_22BB31E54();
    sub_22BB345A8();
    sub_22BB38958();
    swift_endAccess();
    v57 = sub_22BDB43B4();
    if (v57)
    {
      goto LABEL_6;
    }

    sub_22BB89970();
    swift_beginAccess();
    if (*(*(v3 + 24) + 16) && (sub_22BB3CB98(), (v59 & 1) != 0))
    {
      v139 = v5;
      v141 = v42;
      sub_22BB3711C();
      v61 = *(v60 + 8);
      v62 = *(v60 + 24);
      v63 = *(v60 + 32);
      v64 = *(v60 + 40);
      v65 = *(v60 + 48);
      swift_endAccess();
      sub_22BB89970();
      swift_beginAccess();
      v66 = *(v3 + 24);
      v67 = v62;
      v68 = *(v66 + 16);

      v140 = v61;

      if (v68 && (sub_22BB3CB98(), (v69 & 1) != 0))
      {
        v137 = v65;
        v134[0] = v64;
        sub_22BB3711C();
        v71 = *(v70 + 8);
        v72 = *(v70 + 24);
        swift_endAccess();
        if (v72)
        {
          v138 = v71;
          v73 = v135;
          if (v67)
          {

            swift_bridgeObjectRetain_n();

            v74 = sub_22BDB4E44();

            if (v74)
            {

LABEL_37:

              goto LABEL_38;
            }
          }

          else
          {
          }
        }

        else
        {

          v114 = v71;
          v73 = v135;
          if (!v67)
          {

            goto LABEL_37;
          }

          v138 = v114;
        }

        if (v63)
        {

          v140 = v72;
LABEL_38:

LABEL_6:
          sub_22BB33EB8();
          sub_22BB34698();
          goto LABEL_26;
        }

        sub_22BDB63E4();
        sub_22BB32564();
        sub_22BB33618();
        sub_22BB36720();
        sub_22BB33618();
        v115 = sub_22BDB77C4();
        v116 = sub_22BDBB114();
        if (os_log_type_enabled(v115, v116))
        {
          v117 = sub_22BB3B778();
          v142 = v67;
          v118 = v117;
          v139 = sub_22BB3E490();
          v145 = v139;
          *v118 = 136446466;
          sub_22BB32D54();
          sub_22BB3CC60(v119, v120, MEMORY[0x277D1CB40]);
          LODWORD(v136) = v116;
          v121 = sub_22BDBB684();
          v123 = v122;
          sub_22BB35D94();
          sub_22BB34698();
          v124 = sub_22BB6BD90();
          sub_22BB32EE0(v124, v123, v125);
          sub_22BB36C3C();

          *(v118 + 4) = v121;
          *(v118 + 12) = 2082;
          v127 = MEMORY[0x23189FEB0](v126);
          v129 = v128;
          sub_22BB309FC();
          sub_22BB34698();
          v130 = sub_22BB6BD90();
          sub_22BB32EE0(v130, v129, v131);
          sub_22BB36C3C();

          *(v118 + 14) = v127;
          _os_log_impl(&dword_22BB2C000, v115, v136, "SessionClient %{public}s is not allowed to observe session %{public}s.", v118, 0x16u);
          swift_arrayDestroy();
          sub_22BB2F368();
          MEMORY[0x2318A6080]();
          sub_22BB2F368();
          MEMORY[0x2318A6080]();

          sub_22BB3AB38();
          v133 = v135;
        }

        else
        {

          sub_22BB309FC();
          sub_22BB34698();
          sub_22BB35D94();
          sub_22BB34698();
          sub_22BB3AB38();
          v133 = v73;
        }

        v132(v133, v144);
        LOBYTE(v145) = 4;
        sub_22BBB7088();
        swift_willThrowTypedImpl();

        sub_22BB33EB8();
      }

      else
      {
        swift_endAccess();
        v95 = v138;
        sub_22BDB63E4();
        sub_22BB32564();
        v96 = v136;
        sub_22BB33618();
        sub_22BB36720();
        v97 = v137;
        sub_22BB33618();
        v98 = sub_22BDB77C4();
        sub_22BDBB114();
        sub_22BB3E2A4();
        if (os_log_type_enabled(v98, v99))
        {
          v100 = sub_22BB3B778();
          v134[0] = v64;
          v101 = v100;
          v145 = sub_22BB3E490();
          *v101 = 136446466;
          sub_22BB32D54();
          sub_22BB3CC60(v102, v103, MEMORY[0x277D1CB40]);
          sub_22BDBB684();
          sub_22BB36C3C();
          v105 = v104;
          sub_22BB35D94();
          sub_22BB34698();
          v106 = sub_22BB6BD90();
          sub_22BB32EE0(v106, v105, v107);
          sub_22BB313B4();

          *(v101 + 4) = v96;
          *(v101 + 12) = 2082;
          MEMORY[0x23189FEB0](v108);
          sub_22BB3E440();
          sub_22BB309FC();
          sub_22BB34698();
          v109 = sub_22BB6BD90();
          sub_22BB32EE0(v109, v105, v110);
          sub_22BB313B4();

          *(v101 + 14) = v97;
          _os_log_impl(&dword_22BB2C000, v98, v61, "SessionClient %{public}s is not allowed to observe session %{public}s because it has an unknown owning SessionClient.", v101, 0x16u);
          swift_arrayDestroy();
          v111 = sub_22BB6BC10();
          MEMORY[0x2318A6080](v111);
          sub_22BB2F368();
          MEMORY[0x2318A6080]();

          sub_22BB3AB38();
          v113 = v138;
        }

        else
        {

          sub_22BB309FC();
          sub_22BB34698();
          sub_22BB35D94();
          sub_22BB34698();
          sub_22BB3AB38();
          v113 = v95;
        }

        v112(v113, v144);
        LOBYTE(v145) = 1;
        sub_22BBB7088();
        swift_willThrowTypedImpl();

        sub_22BB33EB8();
      }
    }

    else
    {
      swift_endAccess();
      v75 = v140;
      sub_22BDB63E4();
      sub_22BB32564();
      v76 = v139;
      sub_22BB33618();
      sub_22BB36720();
      sub_22BB33618();
      v77 = sub_22BDB77C4();
      v78 = sub_22BDBB114();
      if (os_log_type_enabled(v77, v78))
      {
        sub_22BB3B778();
        v145 = sub_22BB3E030();
        *v10 = 136446466;
        sub_22BB32D54();
        sub_22BB3CC60(v79, v80, MEMORY[0x277D1CB40]);
        sub_22BDBB684();
        sub_22BB36C3C();
        v82 = v81;
        sub_22BB35D94();
        sub_22BB34698();
        v83 = sub_22BB6BD90();
        sub_22BB32EE0(v83, v82, v84);
        sub_22BB3935C();

        *(v10 + 4) = v76;
        *(v10 + 12) = 2082;
        v86 = MEMORY[0x23189FEB0](v85);
        v88 = v87;
        sub_22BB309FC();
        sub_22BB34698();
        v89 = sub_22BB6BD90();
        sub_22BB32EE0(v89, v88, v90);
        sub_22BB3935C();

        *(v10 + 14) = v86;
        sub_22BB3942C(&dword_22BB2C000, v91, v78, "Unknown SessionClient %{public}s is not allowed to observe session %{public}s.");
        swift_arrayDestroy();
        v92 = sub_22BB94EFC();
        MEMORY[0x2318A6080](v92);
        v93 = sub_22BB6BC10();
        MEMORY[0x2318A6080](v93);
      }

      else
      {

        sub_22BB309FC();
        sub_22BB34698();
        sub_22BB35D94();
        sub_22BB34698();
      }

      sub_22BB3AB38();
      v94(v75, v144);
      LOBYTE(v145) = 1;
      sub_22BBB7088();
      swift_willThrowTypedImpl();
      sub_22BB33EB8();
    }

    sub_22BB34698();
    goto LABEL_26;
  }

  sub_22BB58728(v37, &qword_27D8E67E8, &qword_22BDCF4B0);
  swift_endAccess();
  sub_22BDB63E4();
  sub_22BB32564();
  sub_22BB33618();
  sub_22BB36720();
  sub_22BB33618();
  v46 = sub_22BDB77C4();
  v47 = sub_22BDBB114();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = sub_22BB3B778();
    v145 = sub_22BB3E490();
    *v48 = 136446466;
    sub_22BB32D54();
    sub_22BB3CC60(v49, v50, MEMORY[0x277D1CB40]);
    sub_22BDBB684();
    v52 = v51;
    sub_22BB35D94();
    sub_22BB34698();
    v53 = sub_22BB6BD90();
    sub_22BB32EE0(v53, v52, v54);
    sub_22BB36C3C();

    sub_22BB8DCFC();
    MEMORY[0x23189FEB0]();
    sub_22BB3E440();
    sub_22BB309FC();
    sub_22BB34698();
    v55 = sub_22BB6BD90();
    sub_22BB32EE0(v55, v2, v56);
    sub_22BB313B4();

    *(v48 + 14) = v10;
    _os_log_impl(&dword_22BB2C000, v46, v47, "SessionClient %{public}s is not allowed to observe non-existent session %{public}s.", v48, 0x16u);
    sub_22BB8ABD4();
    sub_22BB2F368();
    MEMORY[0x2318A6080]();
    sub_22BB2F368();
    MEMORY[0x2318A6080]();
  }

  else
  {

    sub_22BB309FC();
    sub_22BB34698();
    sub_22BB35D94();
    sub_22BB34698();
  }

  sub_22BB3AB38();
  v58(v27, v144);
  LOBYTE(v145) = 0;
  sub_22BBB7088();
  swift_willThrowTypedImpl();
LABEL_26:
  sub_22BB376A8();
}

uint64_t type metadata accessor for SessionSwitchboard.SessionInfo(uint64_t a1)
{
  result = qword_28142ABE8;
  if (!qword_28142ABE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22BB527CC()
{
  v2 = *(v0 + 96);

  return sub_22BB690EC(v2, v0 + 16);
}

uint64_t sub_22BB5283C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  a1[7] = a2;
  a1[4] = v3;
  a1[5] = v2;

  return MEMORY[0x2821FE398]();
}

uint64_t sub_22BB52878(uint64_t a1, uint64_t a2)
{

  return swift_dynamicCast();
}

unint64_t sub_22BB528B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);

  return sub_22BB32EE0(v19, v18, va);
}

void sub_22BB528CC(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t sub_22BB528EC(uint64_t a1)
{
  *(a1 + 8) = v1;
  v6 = *(v3 + 64);
  result = *(v3 + 16);
  v5[3] = v2;
  v5[4] = v4;
  v5[2] = v6;
  return result;
}

uint64_t sub_22BB52938()
{
  result = v0;
  *(v1 - 536) = *(*(v1 - 440) + 8);
  return result;
}

uint64_t sub_22BB5295C(uint64_t a1)
{

  return sub_22BDBB4A4();
}

uint64_t sub_22BB52994(uint64_t a1)
{

  return sub_22BDBB4A4();
}

uint64_t sub_22BB529B4()
{
  *(v2 - 112) = v1 + v0;
}

uint64_t sub_22BB52A38()
{
  sub_22BB5431C();
  if (v1 && (sub_22BB67B60(v0, MEMORY[0x277D1D2C0], sub_22BB67BE0), (v2 & 1) != 0))
  {
    type metadata accessor for SessionSwitchboard.SessionInfo(0);
    sub_22BB2F330();
    sub_22BB67A00();
    v3 = sub_22BB36764();
  }

  else
  {
    type metadata accessor for SessionSwitchboard.SessionInfo(0);
    v3 = sub_22BB31CB0();
  }

  return sub_22BB336D0(v3, v4, v5, v6);
}

uint64_t sub_22BB52B00(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_22BB2F330();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_22BB52D3C(uint64_t a1)
{
  *(a1 + 16) = sub_22BB8AE80;
  *(a1 + 24) = v1;
}

uint64_t sub_22BB52D90(unint64_t *a1)
{

  return sub_22BC52D98(a1);
}

void sub_22BB52DE4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t sub_22BB52E20()
{

  return sub_22BB58728(v2, v0, v1);
}

uint64_t sub_22BB52E3C(uint64_t a1, uint64_t a2)
{

  return sub_22BCAD538(a1, a2, _s23StatementStepEvaluationOMa);
}

uint64_t sub_22BB52ED4()
{

  return swift_task_alloc();
}

uint64_t sub_22BB52F20()
{

  return sub_22BDBB684();
}

uint64_t sub_22BB52F5C()
{
  sub_22BB2F0D4();
  v1[11] = v2;
  v1[12] = v0;
  v3 = sub_22BDB9B14();
  v1[13] = v3;
  sub_22BB30434(v3);
  v1[14] = v4;
  v1[15] = sub_22BB30ACC();
  v5 = sub_22BDB43E4();
  v1[16] = v5;
  sub_22BB30434(v5);
  v1[17] = v6;
  v1[18] = sub_22BB30ACC();
  v7 = sub_22BDB6714();
  v1[19] = v7;
  sub_22BB30434(v7);
  v1[20] = v8;
  v1[21] = sub_22BB30ACC();
  v9 = sub_22BDB9B04();
  v1[22] = v9;
  sub_22BB30434(v9);
  v1[23] = v10;
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v11 = sub_22BBE6DE0(&qword_27D8E63E8, &unk_22BDCE210);
  sub_22BB2F0C8(v11);
  v1[26] = sub_22BB30ACC();
  v12 = type metadata accessor for EventPayloadWithPreassignedID(0);
  v1[27] = v12;
  sub_22BB30434(v12);
  v1[28] = v13;
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v14 = sub_22BDB5764();
  v1[32] = v14;
  sub_22BB30434(v14);
  v1[33] = v15;
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v16 = sub_22BDB77D4();
  v1[36] = v16;
  sub_22BB30434(v16);
  v1[37] = v17;
  v1[38] = sub_22BB30ACC();
  v18 = sub_22BDB9C14();
  v1[39] = v18;
  sub_22BB30434(v18);
  v1[40] = v19;
  v1[41] = sub_22BB30ACC();
  v20 = sub_22BDB96E4();
  v1[42] = v20;
  sub_22BB30434(v20);
  v1[43] = v21;
  v1[44] = sub_22BB30ACC();
  v22 = type metadata accessor for SessionCoordinatorCommand(0);
  v1[45] = v22;
  sub_22BB2F0C8(v22);
  v1[46] = sub_22BB30ACC();
  v23 = sub_22BBE6DE0(&qword_27D8E63F0, &qword_22BDCEE10);
  v1[47] = v23;
  sub_22BB30434(v23);
  v1[48] = v24;
  v1[49] = sub_22BB30ACC();
  v25 = sub_22BDB5154();
  v1[50] = v25;
  sub_22BB30434(v25);
  v1[51] = v26;
  v1[52] = sub_22BB30ACC();
  v27 = sub_22BDB5D14();
  v1[53] = v27;
  sub_22BB30434(v27);
  v1[54] = v28;
  v1[55] = sub_22BB30ACC();
  v29 = sub_22BB355F0();

  return MEMORY[0x2822009F8](v29, v30, v31);
}

uint64_t sub_22BB53508(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22BDBAA14();
  sub_22BB30444();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  sub_22BB30574();
  v10 = v9 - v8;
  v23 = sub_22BDBAA44();
  sub_22BB30444();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  sub_22BB30574();
  v16 = v15 - v14;
  v17 = swift_allocObject();
  *(v17 + 16) = v2;
  *(v17 + 24) = a1;
  sub_22BB33C94(v17);
  sub_22BB32B78(COERCE_DOUBLE(1107296256));
  v25 = v18;
  v26 = &unk_283F76308;
  v19 = _Block_copy(aBlock);

  sub_22BDBAA34();
  sub_22BB322BC();
  sub_22BB6B80C(v20, v21, MEMORY[0x277D851A0]);
  sub_22BBE6DE0(&qword_27D8E3C50, &unk_22BDC0D90);
  sub_22BB6B854(&qword_2814287F0, &qword_27D8E3C50, &unk_22BDC0D90);
  sub_22BB31C54();
  sub_22BDBB2B4();
  MEMORY[0x2318A5160](0, v16, v10, v19);
  _Block_release(v19);
  (*(v6 + 8))(v10, v4);
  (*(v12 + 8))(v16, v23);

  return sub_22BDB9E14();
}

uint64_t sub_22BB53764()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_22BB537A4(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v3 = swift_task_alloc();
  v4 = sub_22BB31BAC(v3);
  *v4 = v5;
  v4[1] = sub_22BBBD184;

  return v7(a1);
}

uint64_t type metadata accessor for SessionCoordinatorResponseCallback(uint64_t a1)
{
  result = qword_281428CE8;
  if (!qword_281428CE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22BB53C68(uint64_t result)
{
  *(result + 16) = sub_22BD5F664;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BB53CA0()
{
  v1[53] = v2;
  v1[54] = v0;
  return v1[30];
}

void sub_22BB53D24()
{

  JUMPOUT(0x2318A4C40);
}

uint64_t sub_22BB53D50(uint64_t a1)
{

  return sub_22BB336D0(v1, 0, 1, a1);
}

unint64_t sub_22BB53D88()
{

  return sub_22BB32EE0(v0, v1, (v2 - 96));
}

uint64_t sub_22BB53DC8(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = sub_22BB89C08;
  return *(v2 - 152);
}

uint64_t sub_22BB53E14(uint64_t a1)
{

  return sub_22BBBE62C(v2, a1 + v1, v3, v4);
}

void sub_22BB53E50(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_22BB53E88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 2;

  return swift_willThrow();
}

uint64_t type metadata accessor for SessionCoordinatorConversions.ConversionContext(uint64_t a1)
{
  result = qword_2814295E8;
  if (!qword_2814295E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22BB54328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *a2 = v9;
  *(a2 + 8) = v10;
  *(a2 + 16) = 0;

  return swift_willThrow();
}

uint64_t sub_22BB54390()
{

  return sub_22BDB43E4();
}

uint64_t sub_22BB543B0()
{
  v482 = v0;
  v1 = v0[12];
  v2 = *v1;
  if (*(v1 + *(*v1 + 152)) == 1)
  {
    sub_22BDB5734();
    v3 = sub_22BB30AE4();
    if (v4(v3) == *MEMORY[0x277D1C748])
    {
      v6 = v0[48];
      v5 = v0[49];
      v438 = v0[47];
      v7 = sub_22BC54A3C();
      v8(v7);
      v9 = sub_22BB31F54();
      v10(v9);
      v11 = sub_22BC5448C();
      v12(v11);
      sub_22BB35464();
      swift_storeEnumTagMultiPayload();
      sub_22BBE6DE0(&qword_27D8E6400, &unk_22BDCF250);
      sub_22BDBAF34();
      (*(v6 + 8))(v5, v438);
      v13 = sub_22BB30AE4();
      v14(v13);
      v22 = MEMORY[0x277D84F90];
      goto LABEL_28;
    }

    v23 = v0[12];
    (*(v0[51] + 8))(v0[52], v0[50]);
    v2 = *v23;
  }

  v25 = v459[43];
  v24 = v459[44];
  v26 = v459[41];
  v27 = v459[42];
  v28 = v459[39];
  v29 = v459[40];
  v439 = v459[11];
  v477 = MEMORY[0x277D84F90];
  v30 = *(v2 + 128);
  sub_22BB31B88();
  v32 = v31;
  swift_beginAccess();
  v292 = v25 + 16;
  v255 = *(v25 + 16);
  v255(v24, v32 + v30, v27);
  v33 = *(*v32 + 200);
  v34 = v32 + *(_s24StandardSessionResourcesVMa(0) + 32) + v33;
  v35 = v459;
  (*(v29 + 16))(v26, v34, v28);
  v36 = type metadata accessor for SessionCoordinatorConversions.ConversionContext(0);
  sub_22BB34ED4(v36);
  v37 = sub_22BB2F324();
  v39 = sub_22BB5501C(v37, v38);
  sub_22BB3B574(v32 + v30, (v459 + 5));
  v310 = v32;
  v274 = v30;
  v365 = v39;
  sub_22BB550D0(v439, v39, &v477, v32 + v30);
  swift_endAccess();
  v40 = v477;
LABEL_9:
  v329 = (v35 + 8);
  v49 = *(v40 + 16);
  v50 = MEMORY[0x277D84F90];
  v347 = v40;
  if (v49)
  {
    v440 = v35[27];
    v51 = v35[14];
    v478 = MEMORY[0x277D84F90];
    v52 = sub_22BB3B700();
    sub_22BB580B4(v52, v53, v54);
    v55 = *(v51 + 16);
    v50 = v478;
    sub_22BB2F390();
    v57 = v40 + v56;
    v58 = *(v51 + 72);
    do
    {
      v55(v35[29] + *(v440 + 20), v57, v35[13]);
      sub_22BDB43D4();
      v478 = v50;
      v59 = *(v50 + 16);
      v60 = *(v50 + 24);
      if (v59 >= v60 >> 1)
      {
        sub_22BB2F158(v60);
        sub_22BD63494();
        sub_22BB580B4(v63, v64, v65);
        v50 = v478;
      }

      *(v50 + 16) = v59 + 1;
      sub_22BB2F390();
      sub_22BD628CC();
      sub_22BB3A518(v61, v62);
      v57 += v58;
      --v49;
    }

    while (v49);
  }

  v419 = v50;
  v441 = v35[28];
  v401 = v35[27];
  v66 = v35[23];
  v35[8] = v50;
  v67 = *(v50 + 16);
  LODWORD(log) = *MEMORY[0x277D1E7E8];
  v68 = (v66 + 104);
  v69 = (v66 + 8);
  do
  {
    v70 = v67;
    if (!v67)
    {
      break;
    }

    if (v67 > *(v419 + 16))
    {
      __break(1u);
      sub_22BB305BC();
      sub_22BB57F30();
      v40 = v252;
      v42 = *(v252 + 16);
      v41 = *(v252 + 24);
      if (v42 >= v41 >> 1)
      {
        sub_22BB2F138(v41);
        sub_22BB57F30();
        v40 = v253;
      }

      v44 = v459[14];
      v43 = v459[15];
      v45 = v459[13];

      *(v40 + 16) = v42 + 1;
      sub_22BD62BA8();
      v47 = v40 + v46 + *(v44 + 72) * v42;
      v35 = v459;
      v48(v47, v43, v45);
      v477 = v40;
      goto LABEL_9;
    }

    v71 = v459[30];
    v72 = v459[24];
    v73 = v459[22];
    --v67;
    sub_22BB2F390();
    sub_22BD628B4();
    sub_22BB335C0(v74, v71);
    sub_22BDB9AD4();
    (*v68)(v72, log, v73);
    sub_22BB2F12C();
    v75 = sub_22BDB9AF4();
    v76 = *v69;
    (*v69)(v72, v73);
    v77 = sub_22BB94E38();
    v76(v77);
    sub_22BB6FCE8();
    sub_22BB34648();
  }

  while ((v75 & 1) == 0);
  v78 = v459;
  v79 = v459[26];
  v80 = swift_task_alloc();
  *(v80 + 16) = v329;
  sub_22BB5817C(sub_22BD5EA48, v67, v70 == 0, type metadata accessor for EventPayloadWithPreassignedID, v79, v80);
  v80, v81, v82, v83, v84, v85, v86, v87, v255, v274, v292, v310, v329, v347, v365, log, v401, v419, v441, v459, v477, v478, v479, v480, v481;
  sub_22BB36B74(v79);
  if (v88)
  {
    sub_22BB325EC(v78[26], &qword_27D8E63E8, &unk_22BDCE210);
  }

  else
  {
    v89 = v78[44];
    v90 = v78[42];
    v91 = v78[31];
    v92 = v459[19];
    sub_22BD628CC();
    sub_22BB3A518(v93, v91);
    v254(v89, v311 + v273, v90);
    sub_22BDB5724();
    sub_22BC54D78();
    sub_22BDB93F4();
    sub_22BDB93E4();

    v94 = sub_22BB970E8();
    v95(v94, v92);
    v78 = v459;
    v96 = sub_22BB35464();
    v97(v96);
    sub_22BB6FCE8();
    sub_22BB34648();
  }

  v98 = v78[46];
  v99 = (v98 + *(sub_22BBE6DE0(&qword_27D8E63F8, &qword_22BDCE220) + 48));

  v100 = sub_22BDB5724();
  *v98 = v420;
  v98[1] = v100;
  v98[2] = v101;
  type metadata accessor for SessionCoordinatorCommand.TransactionRequestPayload(0);
  sub_22BD64B6C();
  swift_storeEnumTagMultiPayload();
  *v99 = sub_22BB70024;
  v99[1] = 0;
  sub_22BB6BE18();
  swift_storeEnumTagMultiPayload();
  sub_22BBE6DE0(&qword_27D8E6400, &unk_22BDCF250);
  sub_22BDBAF34();
  v102 = sub_22BD00E3C();
  v103(v102);
  v104 = *(v420 + 16);
  if (v104)
  {
    v105 = v459[17];
    v478 = MEMORY[0x277D84F90];
    v106 = sub_22BB3B700();
    sub_22BB5838C(v106, v107, v108);
    v22 = v478;
    sub_22BB2F390();
    v110 = v420 + v109;
    v112 = *(v111 + 72);
    v0 = v459;
    do
    {
      sub_22BD628B4();
      v113 = sub_22BC5448C();
      sub_22BB335C0(v113, v114);
      v115 = sub_22BB6BE18();
      v116(v115);
      sub_22BB6FCE8();
      sub_22BB34648();
      v478 = v22;
      v118 = *(v22 + 16);
      v117 = *(v22 + 24);
      if (v118 >= v117 >> 1)
      {
        sub_22BB2F158(v117);
        sub_22BD63494();
        sub_22BB5838C(v120, v121, v122);
        v22 = v478;
      }

      *(v22 + 16) = v118 + 1;
      sub_22BB2F390();
      (*(v105 + 32))(v22 + v119 + *(v105 + 72) * v118);
      v110 += v112;
      --v104;
    }

    while (v104);
  }

  else
  {

    v22 = MEMORY[0x277D84F90];
    v0 = v459;
  }

LABEL_28:
  v123 = v0[52];
  v124 = v0[49];
  v125 = v0[46];
  v126 = v0[44];
  v127 = v0[41];
  v128 = v0[38];
  v130 = v0[34];
  v129 = v0[35];
  v0[55], v15, v16, v17, v18, v19, v20, v21, v254, v273, v0[31], v0[30], v0[29], v0[26], v0[25], v0[24], v0[21], v0[18], v0[15], v459, v477, v478, v479, v480, v481;
  v123, v131, v132, v133, v134, v135, v136, v137, v256, v275, v293, v312, v330, v348, v366, loga, v402, v421, v442, v460, v477, v478, v479, v480, v481;
  v124, v138, v139, v140, v141, v142, v143, v144, v257, v276, v294, v313, v331, v349, v367, logb, v403, v422, v443, v461, v477, v478, v479, v480, v481;
  v125, v145, v146, v147, v148, v149, v150, v151, v258, v277, v295, v314, v332, v350, v368, logc, v404, v423, v444, v462, v477, v478, v479, v480, v481;
  v126, v152, v153, v154, v155, v156, v157, v158, v259, v278, v296, v315, v333, v351, v369, logd, v405, v424, v445, v463, v477, v478, v479, v480, v481;
  v127, v159, v160, v161, v162, v163, v164, v165, v260, v279, v297, v316, v334, v352, v370, loge, v406, v425, v446, v464, v477, v478, v479, v480, v481;
  v128, v166, v167, v168, v169, v170, v171, v172, v261, v280, v298, v317, v335, v353, v371, logf, v407, v426, v447, v465, v477, v478, v479, v480, v481;
  v129, v173, v174, v175, v176, v177, v178, v179, v262, v281, v299, v318, v336, v354, v372, logg, v408, v427, v448, v466, v477, v478, v479, v480, v481;
  v130, v180, v181, v182, v183, v184, v185, v186, v263, v282, v300, v319, v337, v355, v373, logh, v409, v428, v449, v467, v477, v478, v479, v480, v481;
  v301, v187, v188, v189, v190, v191, v192, v193, v264, v283, v301, v320, v338, v356, v374, logi, v410, v429, v450, v468, v477, v478, v479, v480, v481;
  v321, v194, v195, v196, v197, v198, v199, v200, v265, v284, v302, v321, v339, v357, v375, logj, v411, v430, v451, v469, v477, v478, v479, v480, v481;
  v340, v201, v202, v203, v204, v205, v206, v207, v266, v285, v303, v322, v340, v358, v376, logk, v412, v431, v452, v470, v477, v478, v479, v480, v481;
  v359, v208, v209, v210, v211, v212, v213, v214, v267, v286, v304, v323, v341, v359, v377, logl, v413, v432, v453, v471, v477, v478, v479, v480, v481;
  v378, v215, v216, v217, v218, v219, v220, v221, v268, v287, v305, v324, v342, v360, v378, logm, v414, v433, v454, v472, v477, v478, v479, v480, v481;
  logn, v222, v223, v224, v225, v226, v227, v228, v269, v288, v306, v325, v343, v361, v379, logn, v415, v434, v455, v473, v477, v478, v479, v480, v481;
  v416, v229, v230, v231, v232, v233, v234, v235, v270, v289, v307, v326, v344, v362, v380, logo, v416, v435, v456, v474, v477, v478, v479, v480, v481;
  v436, v236, v237, v238, v239, v240, v241, v242, v271, v290, v308, v327, v345, v363, v381, logp, v417, v436, v457, v475, v477, v478, v479, v480, v481;
  v458, v243, v244, v245, v246, v247, v248, v249, v272, v291, v309, v328, v346, v364, v382, logq, v418, v437, v458, v476, v477, v478, v479, v480, v481;
  sub_22BB39738();

  return v250(v22);
}

uint64_t sub_22BB5501C(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtCO23IntelligenceFlowRuntime29SessionCoordinatorConversions17ConversionContext_sessionState;
  sub_22BDB96E4();
  sub_22BB2F330();
  (*(v6 + 32))(v2 + v5, a1);
  v7 = OBJC_IVAR____TtCO23IntelligenceFlowRuntime29SessionCoordinatorConversions17ConversionContext_toolbox;
  sub_22BDB9C14();
  sub_22BB2F330();
  (*(v8 + 32))(v2 + v7, a2);
  *(v2 + OBJC_IVAR____TtCO23IntelligenceFlowRuntime29SessionCoordinatorConversions17ConversionContext_statementIdIsInert) = 0;
  return v2;
}

uint64_t sub_22BB550D0(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4)
{
  v506[1] = a4;
  v517 = a3;
  v489 = a2;
  v5 = sub_22BDB5E64();
  v6 = sub_22BB33DA0(v5, &v485);
  v459 = v7;
  MEMORY[0x28223BE20](v6);
  sub_22BB305A8();
  sub_22BB30B8C(v8);
  v9 = sub_22BDB50F4();
  v10 = sub_22BB33DA0(v9, v468);
  v442 = v11;
  MEMORY[0x28223BE20](v10);
  sub_22BB305A8();
  sub_22BB30B8C(v12);
  v13 = sub_22BDB5064();
  v14 = sub_22BB33DA0(v13, v470);
  v444 = v15;
  MEMORY[0x28223BE20](v14);
  sub_22BB305A8();
  sub_22BB30B8C(v16);
  v17 = sub_22BDB5084();
  v18 = sub_22BB33DA0(v17, v473);
  v448 = v19;
  MEMORY[0x28223BE20](v18);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v20);
  sub_22BB2F39C();
  sub_22BB30B8C(v21);
  v22 = sub_22BDB5764();
  v23 = sub_22BB33DA0(v22, v531);
  v498 = v24;
  MEMORY[0x28223BE20](v23);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v25);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v26);
  sub_22BB2F39C();
  sub_22BB2F14C(v27);
  v28 = sub_22BBE6DE0(&qword_27D8E2F60, &unk_22BDBD960);
  sub_22BB2F0C8(v28);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v29);
  sub_22BB30BA8();
  sub_22BB30B8C(v30);
  v31 = sub_22BDB5404();
  v32 = sub_22BB2F0C8(v31);
  MEMORY[0x28223BE20](v32);
  sub_22BB305A8();
  sub_22BB30B8C(v33);
  v34 = sub_22BDB90B4();
  v35 = sub_22BB2F0C8(v34);
  MEMORY[0x28223BE20](v35);
  sub_22BB305A8();
  sub_22BB2F14C(v36);
  v37 = sub_22BBE6DE0(&qword_27D8E3218, &qword_22BDBE390);
  sub_22BB2F0C8(v37);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v38);
  sub_22BB30BA8();
  sub_22BB30B8C(v39);
  v40 = sub_22BDB81A4();
  v41 = sub_22BB33DA0(v40, &v490);
  v463 = v42;
  MEMORY[0x28223BE20](v41);
  sub_22BB305A8();
  sub_22BB30B8C(v43);
  v44 = sub_22BDB9774();
  v45 = sub_22BB33DA0(v44, &v502);
  v474 = v46;
  MEMORY[0x28223BE20](v45);
  sub_22BB305A8();
  sub_22BB2F14C(v47);
  v48 = sub_22BBE6DE0(&unk_27D8E69E0, &qword_22BDC1660);
  sub_22BB2F0C8(v48);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v49);
  sub_22BB30BA8();
  sub_22BB30B8C(v50);
  v51 = sub_22BDB9B54();
  v52 = sub_22BB33DA0(v51, &v505);
  v461 = v53;
  MEMORY[0x28223BE20](v52);
  sub_22BB305A8();
  sub_22BB30B8C(v54);
  v55 = sub_22BDB5004();
  v56 = sub_22BB33DA0(v55, v506);
  v478 = v57;
  MEMORY[0x28223BE20](v56);
  sub_22BB305A8();
  sub_22BB30B8C(v58);
  v59 = sub_22BDB9924();
  v60 = sub_22BB33DA0(v59, &v476);
  v451 = v61;
  MEMORY[0x28223BE20](v60);
  sub_22BB305A8();
  sub_22BB30B8C(v62);
  v63 = sub_22BDB9954();
  v64 = sub_22BB33DA0(v63, &v480);
  v454 = v65;
  MEMORY[0x28223BE20](v64);
  sub_22BB305A8();
  sub_22BB30B8C(v66);
  v67 = sub_22BDB96E4();
  v68 = sub_22BB33DA0(v67, &v496);
  v469 = v69;
  MEMORY[0x28223BE20](v68);
  sub_22BB305A8();
  sub_22BB30B8C(v70);
  v71 = sub_22BDB9C14();
  v72 = sub_22BB33DA0(v71, &v493);
  v466 = v73;
  MEMORY[0x28223BE20](v72);
  sub_22BB305A8();
  sub_22BB30B8C(v74);
  v75 = sub_22BDB7C34();
  v76 = sub_22BB33DA0(v75, &v499);
  v470[1] = v77;
  MEMORY[0x28223BE20](v76);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v78);
  sub_22BB2F39C();
  sub_22BB30B8C(v79);
  v80 = sub_22BDB8CE4();
  v81 = sub_22BB33DA0(v80, &v509);
  v482 = v82;
  MEMORY[0x28223BE20](v81);
  sub_22BB305A8();
  sub_22BB30B8C(v83);
  v84 = sub_22BDB5EB4();
  v85 = sub_22BB33DA0(v84, &v507);
  v480 = v86;
  MEMORY[0x28223BE20](v85);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v87);
  sub_22BB2F39C();
  sub_22BB2F14C(v88);
  v89 = sub_22BBE6DE0(&qword_27D8E67B0, &qword_22BDCEF48);
  sub_22BB2F0C8(v89);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v90);
  sub_22BB30BA8();
  sub_22BB30B8C(v91);
  v92 = sub_22BDB86F4();
  v93 = sub_22BB2F0C8(v92);
  MEMORY[0x28223BE20](v93);
  sub_22BB305A8();
  sub_22BB30B8C(v94);
  sub_22BDB77D4();
  sub_22BB30444();
  v511 = v96;
  v512 = v95;
  MEMORY[0x28223BE20](v95);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v97);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v98);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v99);
  sub_22BB2F39C();
  sub_22BB30B8C(v100);
  v101 = sub_22BDB4FA4();
  v102 = sub_22BB33DA0(v101, v528);
  v496 = v103;
  MEMORY[0x28223BE20](v102);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v104);
  sub_22BB2F39C();
  sub_22BB30B8C(v105);
  v525 = sub_22BDB8304();
  sub_22BB30444();
  v504 = v106;
  MEMORY[0x28223BE20](v107);
  sub_22BB305A8();
  v524 = v108;
  sub_22BB2F120();
  v523 = sub_22BDB4C34();
  sub_22BB30444();
  i = v109;
  MEMORY[0x28223BE20](v110);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v111);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v112);
  sub_22BB2F39C();
  v522 = v113;
  v114 = sub_22BBE6DE0(&qword_27D8E27B8, &unk_22BDBD9D0);
  sub_22BB2F0C8(v114);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v115);
  sub_22BB30BA8();
  sub_22BB30B8C(v116);
  v519 = sub_22BDB86E4();
  sub_22BB30444();
  v508 = v117;
  MEMORY[0x28223BE20](v118);
  sub_22BB305A8();
  v521 = v119;
  sub_22BB2F120();
  v120 = sub_22BDBA594();
  v121 = sub_22BB33DA0(v120, &v532);
  v505 = v122;
  MEMORY[0x28223BE20](v121);
  sub_22BB30560();
  v520 = v123;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v124);
  sub_22BB2F39C();
  v513 = v125;
  v126 = sub_22BBE6DE0(&qword_27D8E27D8, &qword_22BDC0640);
  v127 = sub_22BB2F0C8(v126);
  MEMORY[0x28223BE20](v127);
  sub_22BB30560();
  v515 = v128;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v129);
  sub_22BB2F39C();
  v514 = v130;
  sub_22BB2F120();
  v131 = sub_22BDB5124();
  v132 = sub_22BB33DA0(v131, &v516);
  v486 = v133;
  MEMORY[0x28223BE20](v132);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v134);
  sub_22BB2F39C();
  sub_22BB30B8C(v135);
  v136 = sub_22BDB4FB4();
  sub_22BB30444();
  v138 = v137;
  MEMORY[0x28223BE20](v139);
  sub_22BB30560();
  v141 = v140;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v142);
  sub_22BB2F39C();
  v144 = v143;
  sub_22BB2F120();
  v526 = sub_22BDB9B14();
  sub_22BB30444();
  v509 = v145;
  MEMORY[0x28223BE20](v146);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v147);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v148);
  sub_22BB2F384();
  v516 = v149;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v150);
  sub_22BB2F384();
  v518 = v151;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v152);
  sub_22BB2F384();
  v154 = v153;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v155);
  sub_22BB2F39C();
  sub_22BB30B8C(v156);
  v157 = sub_22BDB5154();
  sub_22BB30444();
  v159 = v158;
  MEMORY[0x28223BE20](v160);
  v162 = &v438 - ((v161 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BDB5734();
  v163 = (*(v159 + 88))(v162, v157);
  if (v163 == *MEMORY[0x277D1C6E8])
  {
    v164 = sub_22BB69374();
    v165(v164, v157);
    v166 = v136;
    (v138[4])(v144, v162, v136);
    (v138[2])(v141, v144, v136);
    v529 = type metadata accessor for SessionCoordinatorConversions.ConversionContext(0);
    sub_22BB30E3C();
    v169 = sub_22BB94F70(v167, v168, &unk_22BDCEF00);
    sub_22BB34180(v169);
    v170 = v490;
    sub_22BDB8914();
    if (v170)
    {
LABEL_3:
      v171 = sub_22BB3ADA8();
      return v172(v171);
    }

    sub_22BB38C00();
    sub_22BBDB938();
    v241();
    v177 = v517;
    sub_22BB5410C();
    sub_22BB37E2C();
    v242 = sub_22BB3ADA8();
    v243(v242);
    sub_22BB2F600();
    sub_22BB3670C();
    result = v245(v136 + v244 + *(v136 + 40) * v162, v154, v154);
    goto LABEL_44;
  }

  v439 = v162;
  if (v163 == *MEMORY[0x277D1C890])
  {
    v174 = sub_22BB373DC();
    v175(v174, v157);
    v166 = v487;
    (*(v486 + 32))(v488, v162, v487);
    v176 = sub_22BDB5114();
    v178 = v516;
    v177 = v517;
    v179 = v490;
    v180 = v526;
    if (!v176)
    {
LABEL_28:
      v246 = sub_22BB52F00();
      v247(v246, v488, v166);
      v529 = type metadata accessor for SessionCoordinatorConversions.ConversionContext(0);
      sub_22BB30E3C();
      v250 = sub_22BB94F70(v248, v249, &unk_22BDCEF00);
      sub_22BB34180(v250);
      sub_22BDB95F4();
      if (v179)
      {
        goto LABEL_3;
      }

      sub_22BB3A950();
      (*(v267 + 104))(v178);
      sub_22BB5410C();
      sub_22BB37E2C();
      v268 = sub_22BB3ADA8();
      v269(v268);
      sub_22BB2F600();
      result = (v138[4])(v166 + ((*(v138 + 80) + 32) & ~*(v138 + 80)), v178, v180);
LABEL_44:
      *v177 = v166;
      return result;
    }

    v181 = 0;
    v491 = v176;
    v184 = *(v176 + 64);
    v182 = v176 + 64;
    v183 = v184;
    v185 = 1 << *(v182 - 32);
    v186 = -1;
    if (v185 < 64)
    {
      v186 = ~(-1 << v185);
    }

    v187 = v186 & v183;
    v188 = (v185 + 63) >> 6;
    v511 = v505 + 16;
    v510 = (v505 + 32);
    v502 = i + 16;
    v501 = (v508 + 16);
    v500 = v504 + 16;
    LODWORD(v499) = *MEMORY[0x277D1E708];
    v498 = v509 + 13;
    v497 = v504 + 8;
    v496 = i + 8;
    v495 = v508 + 8;
    v494 = v505 + 8;
    v493 = v509 + 4;
    v189 = &qword_27D8E27E8;
    v492 = xmmword_22BDBCBD0;
    v190 = v507;
    v504 = v182;
    for (i = v188; ; v188 = i)
    {
      v191 = v514;
      v192 = v515;
      if (!v187)
      {
        break;
      }

      v193 = v181;
LABEL_15:
      v194 = __clz(__rbit64(v187));
      v187 &= v187 - 1;
      v195 = v194 | (v193 << 6);
      v196 = (*(v491 + 48) + 16 * v195);
      v198 = *v196;
      v197 = v196[1];
      v199 = v505;
      v200 = v513;
      (*(v505 + 16))(v513, *(v491 + 56) + *(v505 + 72) * v195, v190);
      v138 = &qword_22BDBF4C0;
      v201 = sub_22BBE6DE0(&qword_27D8E27E8, &qword_22BDBF4C0);
      v202 = *(v201 + 48);
      v203 = v515;
      *v515 = v198;
      *(v203 + 1) = v197;
      v192 = v203;
      (*(v199 + 32))(&v203[v202], v200, v190);
      sub_22BB336D0(v192, 0, 1, v201);

      v178 = v516;
      v177 = v517;
      v191 = v514;
LABEL_16:
      sub_22BBF1708(v192, v191);
      v204 = sub_22BBE6DE0(&qword_27D8E27E8, &qword_22BDBF4C0);
      if (sub_22BB3AA28(v191, 1, v204) == 1)
      {

        v179 = v490;
        v180 = v526;
        v166 = v487;
        goto LABEL_28;
      }

      v512 = *v191;
      v205 = v191 + *(v204 + 48);
      v206 = v520;
      (*v510)(v520, v205, v190);
      sub_22BB94F70(&qword_28142DD18, MEMORY[0x277D1C338], MEMORY[0x277D1C348]);
      v207 = v190;
      v208 = v523;
      sub_22BDBAB14();
      (*v511)(v513, v206, v207);
      v209 = sub_22BDB4BB4();
      sub_22BB3922C(v209, v210, v211, v209);
      v212 = v521;
      sub_22BDB86C4();
      sub_22BB38838();
      sub_22BDB98E4();

      v213 = v522;
      v177 = v517;
      sub_22BDB4C14();
      sub_22BB30F88();
      v214 = v208;
      v215 = v519;
      v216(v506[0], v213, v214);
      sub_22BBE6DE0(&qword_27D8E67C0, &unk_22BDCEF50);
      v217 = v508;
      v218 = (*(v508 + 80) + 32) & ~*(v508 + 80);
      v219 = swift_allocObject();
      *(v219 + 16) = v492;
      (*(v217 + 16))(v219 + v218, v212, v215);
      v220 = v524;
      sub_22BDB82E4();
      sub_22BB30F88();
      v221 = v518;
      v222(v518, v220, v525);
      sub_22BB30F88();
      v223(v221, v499, v526);
      v224 = *v177;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22BB57F30();
        v224 = v233;
      }

      v225 = *(v224 + 16);
      v190 = v507;
      v189 = &qword_27D8E27E8;
      if (v225 >= *(v224 + 24) >> 1)
      {
        sub_22BB57F30();
        v224 = v234;
      }

      sub_22BB30F88();
      v226(v524, v525);
      sub_22BB30F88();
      v227(v522, v523);
      sub_22BB30F88();
      v228(v521, v519);
      sub_22BB30F88();
      v229(v520, v190);
      *(v224 + 16) = v225 + 1;
      (v509[4])(v224 + ((*(v509 + 80) + 32) & ~*(v509 + 80)) + v509[9] * v225, v518, v526);
      *v177 = v224;
      v178 = v516;
      v182 = v504;
    }

    while (1)
    {
      v193 = v181 + 1;
      if (__OFADD__(v181, 1))
      {
        break;
      }

      if (v193 >= v188)
      {
        v138 = &qword_22BDBF4C0;
        v230 = sub_22BBE6DE0(&qword_27D8E27E8, &qword_22BDBF4C0);
        sub_22BB3922C(v230, v231, v232, v230);
        v187 = 0;
        goto LABEL_16;
      }

      v187 = *(v182 + 8 * v193);
      ++v181;
      if (v187)
      {
        v181 = v193;
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_65;
  }

  if (v163 == *MEMORY[0x277D1C8C0])
  {
    sub_22BB38C00();
    v235 = v510;
    sub_22BBDB938();
    v236();
    v237 = v517;
    sub_22BB5410C();
    sub_22BB37E2C();
    v238 = *v237;
    *(*v237 + 16) = v162 + 1;
    sub_22BB3670C();
    v240(v238 + v239 + *(v136 + 40) * v162, v235, v154);
    *v237 = v238;
    return (*(v159 + 8))(v439, v157);
  }

  v253 = v163 == *MEMORY[0x277D1C8B8] || v163 == *MEMORY[0x277D1C870] || v163 == *MEMORY[0x277D1C888] || v163 == *MEMORY[0x277D1C860];
  v254 = v512;
  v255 = v502;
  if (v253)
  {
    goto LABEL_41;
  }

  if (v163 == *MEMORY[0x277D1C6D8])
  {
    v270 = sub_22BB373DC();
    v271(v270);
    (*(v496 + 32))(v501, v162, v499);
    sub_22BB588C4();
    _s23IntelligenceFlowRuntime0aB6DaemonV6logger2os6LoggerVvgZ_0();
    v272 = sub_22BDB77C4();
    v273 = sub_22BDBB134();
    if (os_log_type_enabled(v272, v273))
    {
      v159 = swift_slowAlloc();
      *v159 = 0;
      _os_log_impl(&dword_22BB2C000, v272, v273, "Running prescribed plan. Ignoring any configured planner override", v159, 2u);
      sub_22BB30AF0();
    }

    v274 = *(v511 + 8);
    v511 += 8;
    v523 = v274;
    v274(v255, v254);
    sub_22BB38838();
    sub_22BB3E368();
    sub_22BDB98D4();

    sub_22BB33404();
    sub_22BDB95E4();
    v275 = v510;
    sub_22BDB95D4();
    v276 = v509;
    v277 = v509 + 13;
    v524 = v509[13];
    sub_22BBDB938();
    v278();
    v279 = v517;
    sub_22BB5410C();
    sub_22BB37E2C();
    sub_22BB2F600();
    v280 = v276[4];
    v276 += 4;
    v525 = v280;
    v178 = (*(v276 + 48) + 32) & ~*(v276 + 48);
    v281 = v276[5];
    (v280)(v159 + v178 + v281 * v272, v275, v154);
    *v279 = v159;
    v282 = sub_22BDB6324();
    v192 = v485;
    sub_22BB3922C(v282, v283, v284, v282);
    v285 = sub_22BDB8F84();
    sub_22BDB8F94();
    sub_22BDB8F74();
    v286 = *MEMORY[0x277D1E808];
    v521 = v277;
    v524(v275, v286, v154);
    sub_22BB5410C();
    sub_22BB37E2C();
    sub_22BB2F600();
    v522 = v281;
    v287 = v192 + v178 + v285 * v281;
    v189 = v276;
    v190 = v154;
    (v525)(v287, v275, v154);
    *v279 = v192;
    sub_22BDB4F94();
    v289 = v288;
    v181 = v492;
    v290 = v490;
    sub_22BDB9574();
    v191 = v290;
    if (v290)
    {

      v291 = v493;
LABEL_67:
      sub_22BB33404();
      _s23IntelligenceFlowRuntime0aB6DaemonV6logger2os6LoggerVvgZ_0();
      v312 = v496;
      v313 = v499;
      (*(v496 + 16))(v291, v501, v499);
      v314 = v191;
      v315 = sub_22BDB77C4();
      v316 = sub_22BDBB114();

      if (os_log_type_enabled(v315, v316))
      {
        v317 = swift_slowAlloc();
        v525 = swift_slowAlloc();
        v526 = swift_slowAlloc();
        v527 = v526;
        *v317 = 136315394;
        v318 = sub_22BDB4F94();
        v319 = v291;
        v321 = v320;
        v322 = *(v312 + 8);
        v322(v319, v499);
        v323 = sub_22BB32EE0(v318, v321, &v527);

        *(v317 + 4) = v323;
        *(v317 + 12) = 2112;
        v324 = v191;
        v325 = _swift_stdlib_bridgeErrorToNSError();
        *(v317 + 14) = v325;
        v326 = v525;
        *v525 = v325;
        _os_log_impl(&dword_22BB2C000, v315, v316, "Prescribed plan failed to parse: %s): %@", v317, 0x16u);
        sub_22BB58728(v326, &unk_27D8E6A70, &unk_22BDBCDB0);
        sub_22BB30AF0();
        sub_22BB32FA4(v526);
        sub_22BB30AF0();
        v313 = v499;
        sub_22BB30AF0();

        v327 = v495;
      }

      else
      {

        v322 = *(v312 + 8);
        v322(v291, v313);
        v327 = v289;
      }

      v523(v327, v512);
      sub_22BD77168();
      swift_allocError();
      *v328 = 1;
      swift_willThrow();

      return (v322)(v501, v313);
    }

LABEL_65:
    v520 = v178;
    v509 = v189;

    sub_22BB38838();
    sub_22BB3A210();
    sub_22BDB8CC4();
    v289 = v192;
    sub_22BDB8CD4();
    v291 = v493;
    if (!v191)
    {
      v344 = v489;
      (*(v466 + 16))(v467, v489 + OBJC_IVAR____TtCO23IntelligenceFlowRuntime29SessionCoordinatorConversions17ConversionContext_toolbox, v468[0]);
      (*(v469 + 16))(v468[1], v344 + OBJC_IVAR____TtCO23IntelligenceFlowRuntime29SessionCoordinatorConversions17ConversionContext_sessionState, v470[0]);
      v345 = v471;
      sub_22BDB7C24();
      sub_22BB2F2E0();
      v347 = v472;
      (*(v346 + 16))(v465, v345, v472);
      sub_22BDB7C14();
      v375 = v501;
      v523 = sub_22BDB4F94();
      v519 = v376;
      (*(v451 + 104))(v453, *MEMORY[0x277D1E6A8], v452);
      sub_22BB33404();
      sub_22BDB9944();
      v437 = v375;
      sub_22BB3A950();
      sub_22BDB9934();
      v377 = v510;
      (*(v454 + 16))(v510, v347, v455);
      v378 = v190;
      v524(v377, *MEMORY[0x277D1E6F8], v190);
      v379 = v517;
      sub_22BB5410C();
      sub_22BB37E2C();
      v380 = sub_22BB3B488();
      v381(v380);
      (*(v178 + 8))(v471, v472);
      sub_22BB34EAC();
      v382 = sub_22BB37108();
      v383(v382);
      sub_22BB34EAC();
      v384(v492, v481);
      sub_22BB34EAC();
      v385(v501, v499);
      v386 = *v379;
      *(v386 + 16) = v377 + 1;
      result = (v525)(v386 + v520 + v377 * v522, v510, v378);
      *v379 = v386;
      return result;
    }

    sub_22BB34EAC();
    v310(v192, v483);
    sub_22BB34EAC();
    v311(v181, v481);
    goto LABEL_67;
  }

  v292 = v163 == *MEMORY[0x277D1C768] || v163 == *MEMORY[0x277D1C858];
  v293 = v292 || v163 == *MEMORY[0x277D1C760];
  if (v293 || v163 == *MEMORY[0x277D1C690])
  {
LABEL_41:
    (*(v159 + 8))(v439, v157);
    sub_22BB2F2E0();
    sub_22BDB63E4();
    v256 = v498;
    v257 = v498[2];
    v258 = v497;
    v257(v497, a1, v255);
    v259 = sub_22BDB77C4();
    v260 = sub_22BDBB124();
    if (os_log_type_enabled(v259, v260))
    {
      v261 = swift_slowAlloc();
      v526 = swift_slowAlloc();
      v527 = v526;
      *v261 = 136315138;
      v262 = sub_22BB3B488();
      (v257)(v262);
      v263 = sub_22BDBAC14();
      v265 = v264;
      (v256[1])(v258, v255);
      v266 = sub_22BB32EE0(v263, v265, &v527);

      *(v261 + 4) = v266;
      _os_log_impl(&dword_22BB2C000, v259, v260, "Client is not expected to post message %s", v261, 0xCu);
      sub_22BB32FA4(v526);
      sub_22BB30AF0();
      sub_22BB30AF0();

      return (*(v511 + 8))(v500, v512);
    }

    else
    {

      (v256[1])(v258, v255);
      return (*(v511 + 8))(v157, v254);
    }
  }

  if (v163 != *MEMORY[0x277D1C728])
  {
    if (v163 != *MEMORY[0x277D1C6D0])
    {
      v329 = v489;
      if (v163 == *MEMORY[0x277D1C880])
      {
        v330 = sub_22BB373DC();
        v331(v330);
        sub_22BB588C4();
        v333 = v457;
        v334 = v162;
        v335 = v460;
        (*(v332 + 32))(v457, v334, v460);
        v336 = sub_22BB52F00();
        v337(v336, v333, v335);
        sub_22BB38C00();
        sub_22BBDB938();
        v338();
        v339 = v517;
        sub_22BB5410C();
        v340 = *(*v339 + 16);
        sub_22BB58054(v340);
        (*(v255 + 8))(v333, v335);
        v341 = *v339;
        *(*v339 + 16) = v340 + 1;
        sub_22BB3670C();
        result = v343(v341 + v342 + *(v136 + 40) * v340, v329, v154);
        *v339 = v341;
        return result;
      }

      v366 = v517;
      v367 = v510;
      v368 = v509;
      if (v163 != *MEMORY[0x277D1C720])
      {
        v387 = v439;
        if (v163 == *MEMORY[0x277D1C778])
        {
          v388 = sub_22BB69374();
          v389(v388);
          sub_22BB3E368();
          v391 = v447;
          v392 = v449;
          (*(v390 + 32))(v447);
          v387[2](v446, v391, v392);
          v529 = type metadata accessor for SessionCoordinatorConversions.ConversionContext(0);
          sub_22BB30E3C();
          v530 = sub_22BB94F70(v393, v394, &unk_22BDCEF00);
          v527 = v329;

          sub_22BB3A950();
          v395 = v490;
          sub_22BDB8D94();
          if (v395)
          {
            return (v387[1])(v391, v392);
          }

          v423 = v526;
          (v368[13])(v329, *MEMORY[0x277D1E7C8], v526);
          sub_22BB5410C();
          sub_22BB36EAC(*v366);
          (v387[1])(v391, v392);
          v424 = sub_22BB32538();
          result = v425(v424, v450, v423);
          *v366 = v366;
          return result;
        }

        if (v163 == *MEMORY[0x277D1C770])
        {
          v396 = sub_22BB69374();
          v397(v396);
          sub_22BB2F2E0();
          v398 = sub_22BB52F00();
          v399(v398, v387, v445);
          sub_22BB38838();
          sub_22BB3E368();
          sub_22BDB98D4();

          sub_22BB3A210();
          sub_22BDB5044();
          sub_22BDB5054();
          sub_22BDB8D64();
          v400 = sub_22BB38EE4();
          v401 = v526;
          v402(v400);
          v403 = v366;
          sub_22BB5410C();
          sub_22BB36EAC(*v366);
          v404 = sub_22BB3B488();
          v405(v404);
          v406 = sub_22BB32538();
          v408 = v367;
          v409 = v401;
        }

        else
        {
          if (v163 != *MEMORY[0x277D1C878])
          {
            if (v163 != *MEMORY[0x277D1C748])
            {
              sub_22BB3E368();
              sub_22BDB63E4();
              v426 = v498[2];
              v426(v441, a1, v502);
              v427 = sub_22BDB77C4();
              LODWORD(v526) = sub_22BDBB124();
              if (os_log_type_enabled(v427, v526))
              {
                v428 = swift_slowAlloc();
                v525 = swift_slowAlloc();
                v527 = v525;
                *v428 = 136315138;
                v429 = v441;
                v430 = v502;
                v426(v494, v441, v502);
                v431 = sub_22BDBAC14();
                v433 = v432;
                sub_22BB34EAC();
                v434(v429, v430);
                v435 = sub_22BB32EE0(v431, v433, &v527);

                *(v428 + 4) = v435;
                _os_log_impl(&dword_22BB2C000, v427, v526, "Client posted unknown message %s", v428, 0xCu);
                sub_22BB32FA4(v525);
                sub_22BB30AF0();
                sub_22BB30AF0();
              }

              else
              {

                sub_22BB34EAC();
                v436(v441, v502);
              }

              (*(v511 + 8))(v440, v512);
            }

            return (*(v159 + 8))(v439, v157);
          }

          v410 = sub_22BB69374();
          v411(v410);
          sub_22BB3A210();
          v412 = sub_22BB52F00();
          v413(v412, v387, v443);
          v414 = sub_22BDB50D4();
          v416 = v415;
          v417 = MEMORY[0x23189F0B0]();
          MEMORY[0x2318A3400](v414, v416, v417);
          v418 = sub_22BB38EE4();
          v419 = v526;
          v420(v418);
          v403 = v366;
          sub_22BB5410C();
          sub_22BB36EAC(*v366);
          v421 = sub_22BB3B488();
          v422(v421);
          v406 = sub_22BB32538();
          v408 = v367;
          v409 = v419;
        }

        result = v407(v406, v408, v409);
        *v366 = v403;
        return result;
      }

      sub_22BDB8BD4();
      v369 = sub_22BB38EE4();
      v370 = v526;
      v371(v369);
      sub_22BB5410C();
      sub_22BB36EAC(*v366);
      v372 = sub_22BB32538();
      v373(v372, v367, v370);
      *v366 = v366;
      return (*(v159 + 8))(v439, v157);
    }

    goto LABEL_41;
  }

  v295 = sub_22BB373DC();
  v296(v295);
  sub_22BB2F2E0();
  v298 = v479;
  (*(v297 + 32))(v484, v162, v479);
  sub_22BB3E368();
  sub_22BDB96A4();
  v299 = v162;
  v300 = sub_22BDB9744();
  sub_22BB34EAC();
  v302 = v301(v162, v475);
  MEMORY[0x28223BE20](v302);
  v527 = v300;
  v303 = sub_22BD76D2C(sub_22BD77110, (&v438 - 4), v300);
  MEMORY[0x28223BE20](v303);
  v437 = &v527;
  sub_22BB33404();
  sub_22BD5DE2C(v304, v305, v306, v307, v308);

  v309 = v477;
  if (sub_22BB3AA28(v299, 1, v477) == 1)
  {
    sub_22BB58728(v299, &unk_27D8E69E0, &qword_22BDC1660);
  }

  else
  {
    sub_22BB3A210();
    (*(v348 + 32))(v476, v299, v309);
    sub_22BB588C4();
    sub_22BDB9B24();
    sub_22BB38C00();
    v350 = v526;
    if ((*(v349 + 88))(v300, v526) == *MEMORY[0x277D1E7A0])
    {
      (*(v136 + 96))(v300, v350);
      v351 = v456;
      (*(v463 + 32))(v456, v300, v464);
      v352 = sub_22BDB43E4();
      sub_22BB336D0(v462, 1, 1, v352);
      v353 = sub_22BDB8194();
      v524 = v354;
      v525 = v353;
      sub_22BB3E368();
      sub_22BDB4FE4();
      v355 = sub_22BDB53F4();
      sub_22BB336D0(v458, 1, 1, v355);
      sub_22BB3A210();
      sub_22BDB90A4();
      sub_22BB38838();
      sub_22BB3E368();
      sub_22BDB98D4();

      sub_22BB3A950();
      sub_22BDB8174();
      sub_22BB588C4();
      sub_22BDB87C4();
      v356 = sub_22BB38EE4();
      v357 = v526;
      v358(v356);
      v359 = v517;
      sub_22BB5410C();
      v360 = *(*v359 + 16);
      sub_22BB58054(v360);
      sub_22BB34EAC();
      v361(v351, v464);
      (v439)(v476, v477);
      v362 = *v359;
      *(*v359 + 16) = v360 + 1;
      sub_22BB3670C();
      v364(v362 + v363 + *(v136 + 40) * v360, v300, v357);
      *v359 = v362;
      sub_22BB34EAC();
      return v365(v484, v479);
    }

    (v439)(v476, v309);
    (*(v136 + 8))(v300, v350);
  }

  sub_22BD77168();
  swift_allocError();
  *v374 = 0;
  swift_willThrow();
  return (*(v157 + 8))(v484, v298);
}

void sub_22BB57F30()
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

  sub_22BB36EDC(v2, v5, &qword_27D8E66C0, &qword_22BDCE790);
  sub_22BB38F5C();
  sub_22BDB9B14();
  sub_22BB314BC();
  sub_22BB2F390();
  if (v1)
  {
    v9 = sub_22BB32D98(v8);
    sub_22BD279B8(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BB32594();
  }
}

uint64_t sub_22BB57FF8(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t sub_22BB5806C(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

uint64_t sub_22BB5811C(uint64_t result)
{
  *(result + 16) = sub_22BB89C80;
  *(result + 24) = v1;
  return result;
}

void sub_22BB58138()
{

  sub_22BD454DC();
}

void *sub_22BB5817C@<X0>(void *(*a1)(void *__return_ptr, uint64_t *)@<X0>, uint64_t a2@<X2>, char a3@<W3>, void (*a4)(void)@<X5>, void *a5@<X8>, uint64_t a6@<X1>)
{
  if (a3)
  {
    (a4)(0, a6, a2);
    v8 = sub_22BB36B68();
    return sub_22BB336D0(v8, v9, 1, v10);
  }

  else
  {
    v16 = a2;
    result = a1(a5, &v16);
    if (v6)
    {
      __break(1u);
    }

    else
    {
      a4(0);
      v12 = sub_22BB72084();
      return sub_22BB336D0(v12, v13, v14, v15);
    }
  }

  return result;
}

uint64_t sub_22BB58238(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_22BB30F68();
  sub_22BDB43E4();
  sub_22BB314BC();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v4;
  }

  else
  {
    v10 = sub_22BDB9B14();
    v11 = v4 + *(a4 + 20);
  }

  return sub_22BB336D0(v11, a2, a2, v10);
}

uint64_t sub_22BB582E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22BB30F68();
  sub_22BDB43E4();
  sub_22BB314BC();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = v3;
  }

  else
  {
    v8 = sub_22BDB9B14();
    v9 = v3 + *(a3 + 20);
  }

  return sub_22BB3AA28(v9, a2, v8);
}

void sub_22BB5837C()
{
  v3 = *(v0 + 48);
  *(v2 - 176) = v1;
  *(v2 - 168) = v3;
}

uint64_t sub_22BB583E4()
{
  v1 = OBJC_IVAR____TtCO23IntelligenceFlowRuntime29SessionCoordinatorConversions17ConversionContext_sessionState;
  sub_22BDB96E4();
  sub_22BB2F330();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtCO23IntelligenceFlowRuntime29SessionCoordinatorConversions17ConversionContext_toolbox;
  sub_22BDB9C14();
  sub_22BB2F330();
  (*(v4 + 8))(v0 + v3);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

uint64_t sub_22BB586D8(uint64_t result)
{
  *(result + 16) = sub_22BB8AE88;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BB58728(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_22BBE6DE0(a2, a3);
  sub_22BB2F330();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_22BB58780(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_22BBE6DE0(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_22BB58810()
{

  return sub_22BC55A68(v0, v1 - 88);
}

uint64_t sub_22BB588F4(uint64_t a1)
{

  return sub_22BB336D0(v1, 1, 1, a1);
}

uint64_t sub_22BB58924(uint64_t a1)
{

  return swift_allocError();
}

uint64_t sub_22BB58954@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v25 = v12[207];
  v26 = v12[206];
  v27 = v12[205];
  v28 = v12[204];
  v29 = v12[203];
  v30 = v12[202];
  v31 = v12[201];
  v32 = v12[200];
  v33 = v12[199];
  v34 = v12[198];
  v35 = v12[197];
  v36 = v12[196];
  v37 = v12[195];
  v15 = v12[167];
  *(v13 - 216) = v12[170];
  *(v13 - 208) = v15;
  v16 = v12[161];
  *(v13 - 200) = v12[164];
  *(v13 - 192) = v16;
  v17 = v12[159];
  *(v13 - 184) = v12[160];
  *(v13 - 176) = v17;
  v18 = v12[155];
  *(v13 - 168) = v12[156];
  *(v13 - 160) = v18;
  v19 = v12[151];
  *(v13 - 152) = v12[154];
  *(v13 - 144) = v19;
  v20 = v12[149];
  *(v13 - 136) = v12[150];
  *(v13 - 128) = v20;
  v21 = v12[145];
  *(v13 - 120) = v12[146];
  *(v13 - 112) = v21;
  v22 = v12[139];
  *(v13 - 104) = v12[142];
  *(v13 - 96) = v22;

  return a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, v11, a9, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37;
}

uint64_t sub_22BB58A70(uint64_t a1, uint64_t a2)
{
  v3 = sub_22BB69FEC((v2 - 88), a2);

  return sub_22BB69088(v3, v2 - 128);
}

void sub_22BB58A9C()
{
  *(v0 - 232) = 0;
  *(v0 - 280) = 0;
  *(v0 - 320) = 0;
}

uint64_t sub_22BB58BA4(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_22BB58BC0()
{

  return swift_beginAccess();
}

uint64_t sub_22BB58C0C@<X0>(uint64_t a1@<X8>)
{
  if (*(*v1 + 24) < 1)
  {
    v7 = type metadata accessor for SessionCoordinatorCommand(0);
    v5 = a1;
    v6 = 1;
  }

  else
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22BD5E440(type metadata accessor for SessionCoordinatorCommand, &qword_27D8E6590, &qword_22BDCE490, type metadata accessor for SessionCoordinatorCommand);
    }

    v3 = *v1;
    v4 = type metadata accessor for SessionCoordinatorCommand(0);
    sub_22BB89A2C((v3 + 16), v3 + ((*(*(v4 - 8) + 80) + 40) & ~*(*(v4 - 8) + 80)), a1);
    v5 = a1;
    v6 = 0;
    v7 = v4;
  }

  return sub_22BB336D0(v5, v6, 1, v7);
}

uint64_t sub_22BB58D74()
{
  sub_22BB35760();
  v1 = sub_22BDB5664();
  v2 = sub_22BB2F0C8(v1);
  MEMORY[0x28223BE20](v2);
  sub_22BB30574();
  v5 = v4 - v3;
  v0();
  sub_22BDB5624();
  sub_22BB3A788();
  sub_22BB6B8A8(v5);
  return sub_22BB31F54();
}

void sub_22BB58E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22BB36BC0();
  sub_22BB35458();
  v17 = v13;
  sub_22BD631D0();
  v18 = *(v13 + 4304);
  v19 = *(v13 + 4288);
  sub_22BB2F164(v19);
  v6438 = v13;
  if (v149)
  {
    v15 = *(v13 + 4892);
    v30 = *(v13 + 4344);
    v12 = *(v17 + 4104);
    v20 = *(v17 + 3128);
    v21 = *(v17 + 3112);
    v14 = *(v17 + 3104);
    sub_22BB325EC(v19, &qword_27D8E6520, &qword_22BDCE430);
    v22 = (v30 + *(sub_22BBE6DE0(&qword_27D8E63F8, &qword_22BDCE220) + 48));
    v23 = sub_22BBE6DE0(&qword_27D8E6008, &qword_22BDCD538);
    v24 = sub_22BD60FD4(v23);
    v25 = sub_22BD5B890(v24, 1);
    v27 = v26;
    (*(v21 + 104))(v20, v15, v14);
    sub_22BD74A58(v20, v27);
    v16 = (v21 + 8);
    v28 = sub_22BB2F0E0();
    v29(v28);
    v30->n128_u64[0] = v25;
    v30->n128_u64[1] = 0;
    v30[1].n128_u64[0] = 0xE000000000000000;
    sub_22BB37074();
    swift_storeEnumTagMultiPayload();
    *v22 = sub_22BB70024;
    v22[1] = 0;
    v17 = v6438;
    sub_22BB3627C();
    v33 = swift_storeEnumTagMultiPayload();
  }

  else
  {
    v30 = *(v13 + 4336);
    v31 = sub_22BB362AC();
    v33 = sub_22BB3A518(v31, v32);
  }

  sub_22BD64674(v33, sub_22BB896B4);
  sub_22BB35CBC();
  sub_22BB34648();
  v34 = *(v17 + 4520);
LABEL_5:
  sub_22BD61A24();
  while (2)
  {
    sub_22BD61A78();
    *(v17 + 4520) = v34;
    sub_22BD62D9C();
    sub_22BBBFF9C(v12);
    if (v149)
    {
      sub_22BB325EC(*(v17 + 4296), &qword_27D8E6520, &qword_22BDCE430);
      v2180 = swift_task_alloc();
      v2181 = sub_22BB980E8(v2180);
      *v2181 = v2182;
      sub_22BB6BE8C(v2181);
      sub_22BD63350();
      sub_22BB33430();

      MEMORY[0x2822003F0](v2183, v2184, v2185, v2186, v2187, v2188, v2189, v2190, a9, a10, a11, a12);
      return;
    }

    v35 = sub_22BD61F60();
    sub_22BB3A518(v35, v30);
    sub_22BDB6124();
    sub_22BB322B0();
    swift_allocObject();
    sub_22BB758D8();
    *(v36 + 16) = v37;
    *(v36 + 24) = v15;
    v38 = sub_22BB3B69C();
    sub_22BB335C0(v38, v39);
    sub_22BD62438();
    swift_allocObject();
    sub_22BD64D5C();
    v40 = sub_22BD64D74();
    sub_22BB3A518(v40, v41);

    sub_22BDB7724();
    v6429 = sub_22BDB7744();
    LODWORD(v6427) = sub_22BDBB1D4();
    sub_22BD616A8();
    v15 = swift_allocObject();
    sub_22BD6250C(v15);
    sub_22BD616A8();
    v42 = swift_allocObject();
    sub_22BBC0370(v42);
    sub_22BB322B0();
    swift_allocObject();
    sub_22BD5F7DC();
    *(v43 + 16) = v44;
    *(v43 + 24) = v12;
    sub_22BB322B0();
    v45 = swift_allocObject();
    sub_22BB3CEDC(v45);
    sub_22BD616A8();
    v46 = swift_allocObject();
    sub_22BD62B48(v46);
    sub_22BD616A8();
    v47 = swift_allocObject();
    sub_22BD64CFC(v47);
    sub_22BB322B0();
    v48 = swift_allocObject();
    sub_22BD601AC(v48);
    sub_22BB322B0();
    v34 = swift_allocObject();
    sub_22BB69C9C(v34);
    v49 = sub_22BBE6DE0(&qword_27D8E6548, &qword_22BDCE458);
    *(v17 + 4528) = v49;
    v6410 = v49;
    v30 = sub_22BB970B4(v49);
    sub_22BB3B5F8(v30);
    v50[4] = v51;
    v50[5] = v15;
    v50[6] = sub_22BB89C08;
    v50[7] = v16;
    v50[8] = sub_22BB89C68;
    v50[9] = v45;
    v50[10] = sub_22BB89C08;
    v50[11] = v14;
    v50[12] = sub_22BB89C08;
    v50[13] = v12;
    v50[14] = sub_22BB89C7C;
    v50[15] = v34;

    if (sub_22BDBB244())
    {
      sub_22BB73F58("CommandProcess", &v6447);
      sub_22BD62384();
      v52 = sub_22BD619F0();
      sub_22BD5F9D4(v52);
      *(v17 + 1440) = v15;
      v53 = sub_22BB39404();
      sub_22BB67984(v53, v54, v55, v56);
      if (!v6439)
      {
        *(v17 + 1432) = sub_22BB89C08;
        *(v17 + 1440) = v16;
        v57 = sub_22BB39404();
        sub_22BB67984(v57, v58, v59, v60);
        *(v17 + 1432) = sub_22BB89C68;
        *(v17 + 1440) = v45;
        v61 = sub_22BB39404();
        sub_22BB67984(v61, v62, v63, v64);
        *(v17 + 1432) = sub_22BB89C08;
        *(v17 + 1440) = v14;
        v65 = sub_22BB39404();
        sub_22BB67984(v65, v66, v67, v68);
        *(v17 + 1432) = sub_22BB89C08;
        *(v17 + 1440) = v12;
        v69 = sub_22BB39404();
        sub_22BB67984(v69, v70, v71, v72);
        *(v17 + 1432) = sub_22BB89C7C;
        *(v17 + 1440) = v34;
        v73 = sub_22BB39404();
        sub_22BB67984(v73, v74, v75, v76);
        sub_22BD63C54();

        sub_22BDB7714();
        sub_22BD61E34();
        sub_22BD62418();
        sub_22BD65380(v77, v78, v79, v80, v81, "[SessionCoordinator %{public}s] | Begin processing command %{public}s.");
        sub_22BD619D4();
        sub_22BD6193C();
        sub_22BB679C0();
      }

      goto LABEL_402;
    }

    sub_22BD61C8C();
    v82 = sub_22BBC49A8();
    sub_22BB92AA4();
    sub_22BD62218();
    v6387 = v83;
    v6382 = v84;
    v84();
    sub_22BB2F3FC();
    v6392 = v82;
    v85 = sub_22BDB7784();
    *(v17 + 4544) = v85;
    v86 = sub_22BD61AB0();
    v6397 = v87;
    v6404 = v12;
    (v87)(v86);
    v88 = *(v14 + 8);
    v14 += 8;
    v18 = v88;
    v89 = sub_22BB32E04();
    (v88)(v89);
    v90 = sub_22BB39368();
    sub_22BB335C0(v90, v30);
    sub_22BD63410();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        sub_22BD63900();
        v170 = sub_22BBE6DE0(&qword_27D8E6538, &qword_22BDCE448);
        v171 = (v85 + *(v170 + 80));
        v6295 = *v171;
        v6297 = v171[1];
        v172 = sub_22BD63110(*(v170 + 64));
        sub_22BB6BEE0(v172, v173, &qword_27D8E3218, &qword_22BDBE390);
        sub_22BDB63E4();
        sub_22BB322B0();
        v174 = swift_allocObject();
        sub_22BD5F704(v174);
        sub_22BB366B8();
        v175 = swift_allocObject();
        v6303 = v15;
        *(v175 + 16) = v15;
        sub_22BB322B0();
        swift_allocObject();
        sub_22BBC0500();
        *(v176 + 16) = v177;
        *(v176 + 24) = v175;

        v6430 = sub_22BDB77C4();
        LODWORD(v6427) = sub_22BDBB134();
        sub_22BD616A8();
        v178 = swift_allocObject();
        sub_22BD623EC(v178);
        sub_22BD616A8();
        v179 = swift_allocObject();
        sub_22BB97EE0(v179);
        sub_22BB322B0();
        swift_allocObject();
        sub_22BB3E0C4();
        *(v180 + 16) = v181;
        *(v180 + 24) = v174;
        sub_22BB322B0();
        swift_allocObject();
        sub_22BD648D8();
        sub_22BB3DEE8(v182);
        sub_22BD616A8();
        v183 = swift_allocObject();
        sub_22BD64C7C(v183);
        sub_22BD616A8();
        v184 = swift_allocObject();
        *(v184 + 16) = v16;
        sub_22BB322B0();
        swift_allocObject();
        sub_22BD5F77C();
        *(v185 + 16) = v186;
        *(v185 + 24) = v30;
        sub_22BB322B0();
        v187 = swift_allocObject();
        sub_22BB3DEE8(v187);
        v188 = sub_22BBCCA6C();
        sub_22BB31444(v188);
        v189[4] = v190;
        v189[5] = v175;
        v189[6] = sub_22BB89C08;
        v189[7] = v179;
        v189[8] = sub_22BB89C7C;
        v189[9] = v17;
        v189[10] = sub_22BB89C08;
        v189[11] = v34;
        v189[12] = sub_22BB89C08;
        v189[13] = v184;
        v189[14] = sub_22BB89C7C;
        v189[15] = v187;
        sub_22BD640D8();

        v191 = sub_22BD612E8();
        if (os_log_type_enabled(v191, v192))
        {
          sub_22BB67968(22);
          v193 = sub_22BD62BD8();
          sub_22BD63440(v193);
          sub_22BD5FC78(v191);
          *(v15 + 1472) = v30;
          v194 = sub_22BD5F8D0();
          v195 = v6439;
          sub_22BB67984(v194, v196, v197, v198);
          if (!v6439)
          {

            sub_22BB6F924();
            *(v15 + 1472) = v179;
            v199 = sub_22BD5F8D0();
            sub_22BB67984(v199, v200, v201, v202);

            sub_22BB6FCD0();
            *(v15 + 1472) = v17;
            v203 = sub_22BD5F8D0();
            sub_22BB67984(v203, v204, v205, v206);

            sub_22BB6F924();
            *(v15 + 1472) = v34;
            v207 = sub_22BD5F8D0();
            sub_22BB67984(v207, v208, v209, v210);

            sub_22BB6F924();
            *(v15 + 1472) = v184;
            v211 = sub_22BD5F8D0();
            sub_22BB67984(v211, v212, v213, v214);

            sub_22BD60848();
            sub_22BD62094();

            sub_22BD61E34();
            sub_22BD62CB8();
            sub_22BD636C8(v215, v216, v217, "[SessionCoordinator %{public}s] | [TX %{public}s] Begin commit of transaction.");
            sub_22BD61EC8();
            sub_22BB77E48();
            sub_22BB679C0();
          }

          goto LABEL_323;
        }

        sub_22BB75884();

        v301 = sub_22BD633D4();
        v6305 = v302;
        (v302)(v301);
        v17 = v15;
        sub_22BD609DC();
        v6368 = v303;
        v304 = sub_22BD60CF4();
        v179(v304);
        sub_22BDB96A4();
        v307 = *(v184 + 8);
        v306 = v184 + 8;
        v305 = v307;
        v308 = sub_22BB393C4();
        (v307)(v308);
        v309 = v175;
        sub_22BDB9744();
        v310 = sub_22BB89BAC();
        v195 = v6368;
        (v191)(v310, v6368);
        v6338 = sub_22BB954F8(v309);

        v311 = sub_22BD613BC();
        v6331 = v179;
        v179(v311);
        sub_22BBBE690();
        sub_22BDB96A4();
        v312 = sub_22BB393C4();
        v6316 = v307;
        (v307)(v312);
        v313 = sub_22BDB9744();
        v314 = sub_22BB30AE4();
        v6318 = v34;
        v6313 = v191;
        (v191)(v314);
        sub_22BB954F8(v313);
        sub_22BD63F10();
        v6358 = v307;
        if (v307 < v6338)
        {
          __break(1u);
          goto LABEL_390;
        }

        v316 = sub_22BB721E4();
        v6329 = v315;
        do
        {
          v6374 = v316;
          if (v315 == v316)
          {
            goto LABEL_65;
          }

          if (v315 < v316)
          {
            __break(1u);
LABEL_346:
            __break(1u);
LABEL_347:
            __break(1u);
LABEL_348:

            goto LABEL_414;
          }

          if (v316 >= v315)
          {
            goto LABEL_346;
          }

          sub_22BD62F70();
          v6369 = v317;
          sub_22BB500E4();
          sub_22BB971BC(v318);
          sub_22BD62C40();
          sub_22BDB9694();
          sub_22BD63698();
          sub_22BDB9734();
          v319 = sub_22BB70784();
          v320 = v6344;
          v6344 = v321;
          v321(v319, v320);
          v322 = sub_22BB97E58();
          v179(v322);
          swift_endAccess();
          v323 = sub_22BB97B0C();
          sub_22BB929E0(v323, v324, v325);
          sub_22BBE6DE0(&qword_27D8E6488, &qword_22BDCE338);
          v179 = v6358;
          sub_22BBB797C();
          sub_22BDBAF34();
          v326 = sub_22BB970E8();
          v327(v326, name);
          sub_22BD62F60();
          v195 = v6369;
          sub_22BD63B88();
          v328();
          sub_22BD63388();
          sub_22BDB96A4();
          v329 = sub_22BB30AE4();
          (v6316)(v329);
          v313 = v305;
          sub_22BDB9744();
          v330 = sub_22BD619C8();
          (v6313)(v330, v6430);
          sub_22BB954F8(v305);
          sub_22BD63F10();
          v6358 = v305;
          if (v305 < v6338)
          {
            goto LABEL_347;
          }

          sub_22BD60F34(v316);
          sub_22BDB9B24();
          v331 = sub_22BB53C48();
          (v6344)(v331);
          v306 += 88;
          v332 = sub_22BB30AE4();
          v333(v332);
          v334 = sub_22BD615B8();
          v335(v334);
          v315 = v6329;
        }

        while (v305 != v15);
        sub_22BD636E0();
        sub_22BD61894();
        sub_22BB53C48();
        sub_22BB9741C();
        sub_22BB71DA0();
        v6425 = v336;
LABEL_65:
        v337 = sub_22BD62F50() + 64;
        sub_22BB8EA20();
        v340 = v339 & v338;
        sub_22BD63CF8();
        v342 = (v341 >> 6);
        v6324 = v343;

        v344 = 0;
        v6346 = v337;
        v6344 = v342;
        if (!v340)
        {
          goto LABEL_67;
        }

LABEL_71:
        sub_22BD62F40();
        sub_22BD62F2C();
        v6367 = v340;
        v195 = *(*(v6324 + 48) + 8 * (v347 | (v346 << 6)));
        sub_22BB366A0();
        sub_22BB335C0(v348, v313);
        v349 = &qword_27D8E6568;
        v340 = sub_22BBE6DE0(&qword_27D8E6568, &unk_22BDCE460);
        *v305 = v195;
        sub_22BB31DC8();
        sub_22BD64614(v350);
        v351 = sub_22BD6108C();
        sub_22BB336D0(v351, v352, v353, v340);
LABEL_72:
        v354 = sub_22BB8EA40();
        sub_22BB6BEE0(v354, v355, &qword_27D8E64F8, &qword_22BDCE400);
        v356 = sub_22BB331D4();
        v313 = sub_22BBE6DE0(v356, v357);
        sub_22BB3329C();
        if (v149)
        {

          v6431 = sub_22BB954F8(v6425);
          if (v6431)
          {
            v337 = 0;
            while (1)
            {
              sub_22BD63A1C();
              isa = v195[2].isa;
              v459 = &v195[2];
              v340 = isa;
              v461 = v459[64];
              v462 = sub_22BB95BF8();
              isa(v462);
              v6367 = (v337 + 1);
              if (__OFADD__(v337, 1))
              {
                break;
              }

              v463 = sub_22BB707CC();
              v464(v463);
              sub_22BD636FC();
              sub_22BD63990();
              if (v465)
              {
                oslog = *(v344 + 3936);
                v466 = sub_22BB3AAD8();
                (v340)(v466);
                sub_22BB702C8();
                v467 = swift_allocObject();
                v468 = sub_22BB89B94(v467);
                v469(v468);
                sub_22BD63888();
                sub_22BDB63E4();
                sub_22BB322B0();
                swift_allocObject();
                sub_22BB758D8();
                *(v470 + 16) = v471;
                *(v470 + 24) = v337;
                sub_22BB322B0();
                swift_allocObject();
                sub_22BD60784();
                *(v472 + 16) = v473;
                *(v472 + 24) = v459;

                v6346 = v459;

                v6427 = sub_22BDB77C4();
                LODWORD(v6421) = sub_22BDBB134();
                sub_22BD616A8();
                v474 = swift_allocObject();
                sub_22BD61784(v474);
                sub_22BD616A8();
                v337 = swift_allocObject();
                sub_22BD62E20(v337);
                sub_22BB322B0();
                v475 = swift_allocObject();
                sub_22BBBE7C0(v475);
                sub_22BB322B0();
                v349 = swift_allocObject();
                sub_22BB69C9C(v349);
                sub_22BD616A8();
                v313 = swift_allocObject();
                sub_22BB6C06C(v313);
                sub_22BD616A8();
                v340 = swift_allocObject();
                *(v340 + 16) = v461;
                sub_22BB322B0();
                v476 = swift_allocObject();
                sub_22BBBEB28(v476);
                sub_22BB322B0();
                v477 = swift_allocObject();
                sub_22BB69C9C(v477);
                v478 = sub_22BBCCA6C();
                sub_22BB348E0(v478);
                v479[4] = v480;
                v479[5] = v342;
                v479[6] = sub_22BB89C08;
                v479[7] = v337;
                v479[8] = sub_22BB89C7C;
                v479[9] = v349;
                v479[10] = sub_22BB89C08;
                v479[11] = v313;
                v479[12] = sub_22BB89C08;
                v479[13] = v340;
                v479[14] = sub_22BB89C7C;
                v479[15] = v477;

                v195 = sub_22BD620A0();
                if (os_log_type_enabled(v195, v481))
                {
                  sub_22BB67968(22);
                  v482 = sub_22BBBFF34();
                  *(v344 + 1608) = 0;
                  *(v344 + 1616) = v482;
                  sub_22BBBEB6C();
                  *(v344 + 1600) = v483;
                  *(v344 + 968) = sub_22BB89C08;
                  *(v344 + 976) = v342;
                  v484 = sub_22BD602FC();
                  sub_22BB67984(v484, v485, v486, v487);
                  if (!v6439)
                  {

                    *(v344 + 968) = sub_22BB89C08;
                    *(v344 + 976) = v337;
                    v488 = sub_22BD602FC();
                    sub_22BB67984(v488, v489, v490, v491);

                    *(v344 + 968) = sub_22BB89C7C;
                    *(v344 + 976) = v349;
                    v492 = sub_22BD602FC();
                    sub_22BB67984(v492, v493, v494, v495);

                    *(v344 + 968) = sub_22BB89C08;
                    *(v344 + 976) = v313;
                    v496 = sub_22BD602FC();
                    sub_22BB67984(v496, v497, v498, v499);

                    *(v344 + 968) = sub_22BB89C08;
                    *(v344 + 976) = v340;
                    v500 = sub_22BD602FC();
                    sub_22BB67984(v500, v501, v502, v503);

                    *(v344 + 968) = sub_22BB89C7C;
                    *(v344 + 976) = v477;
                    v504 = sub_22BD602FC();
                    sub_22BB67984(v504, v505, v506, v507);
                    sub_22BD63A4C();
                    sub_22BBBE830();
                    sub_22BD636C8(&dword_22BB2C000, v6427, v508, "[SessionCoordinator %{public}s] Event: %s");
                    sub_22BD62500();
                    swift_arrayDestroy();
                    sub_22BB30458();
                    sub_22BB679C0();
                  }

                  goto LABEL_413;
                }

                sub_22BD63594();

                v6305(v6344, v6324);
                (*(v461 + 8))(v6421, oslog);
              }

              else
              {
                sub_22BDB63E4();
                sub_22BB322B0();
                v509 = swift_allocObject();
                v510 = sub_22BD62AA0(v509);
                *(v510 + 16) = v511;
                *(v510 + 24) = v337;
                v512 = sub_22BB3AAD8();
                (v340)(v512);
                sub_22BD63970();
                v195 = swift_allocObject();
                sub_22BD63324(v195);
                sub_22BD64B28();
                (v305)();
                sub_22BB322B0();
                v513 = swift_allocObject();
                v514 = sub_22BD62A88(v513);
                *(v514 + 16) = v515;
                *(v514 + 24) = v195;
                v516 = sub_22BBBEC20();
                (v340)(v516);
                v6320 = swift_allocObject();
                v517 = sub_22BD63324(v6320);
                (v305)(v517);

                oslog = sub_22BDB77C4();
                LODWORD(v6346) = sub_22BDBB134();
                sub_22BD616A8();
                v518 = swift_allocObject();
                sub_22BB973E4(v518);
                sub_22BD616A8();
                v6421 = swift_allocObject();
                sub_22BD62CE4(v6421);
                sub_22BB322B0();
                swift_allocObject();
                sub_22BB9710C();
                *(v519 + 16) = v520;
                *(v519 + 24) = v6324;
                sub_22BB322B0();
                v521 = swift_allocObject();
                sub_22BB69C9C(v521);
                sub_22BD616A8();
                v522 = swift_allocObject();
                sub_22BD64AAC(v522);
                sub_22BD616A8();
                v313 = swift_allocObject();
                *(v313 + 16) = v349;
                sub_22BB322B0();
                swift_allocObject();
                sub_22BD6067C();
                *(v523 + 16) = v524;
                *(v523 + 24) = v6344;
                sub_22BB322B0();
                v342 = swift_allocObject();
                sub_22BB69C9C(v342);
                sub_22BD616A8();
                v525 = swift_allocObject();
                sub_22BD63D38(v525);
                sub_22BD616A8();
                v526 = swift_allocObject();
                *(v526 + 16) = v349;
                sub_22BB322B0();
                swift_allocObject();
                sub_22BD6073C();
                *(v527 + 16) = v528;
                *(v527 + 24) = v6320;
                sub_22BB322B0();
                v349 = swift_allocObject();
                sub_22BB960B8(v349);
                v529 = sub_22BD61958();
                sub_22BB2F294(v529, xmmword_22BDCE140);
                v529[4].n128_u64[1] = v521;
                v529[5].n128_u64[0] = sub_22BB89C08;
                v529[5].n128_u64[1] = v17;
                v529[6].n128_u64[0] = sub_22BB89C08;
                v529[6].n128_u64[1] = v313;
                v529[7].n128_u64[0] = sub_22BB89C7C;
                v529[7].n128_u64[1] = v342;
                v529[8].n128_u64[0] = sub_22BB89C08;
                v529[8].n128_u64[1] = v195;
                v529[9].n128_u64[0] = sub_22BB89C08;
                v529[9].n128_u64[1] = v526;
                v529[10].n128_u64[0] = sub_22BB89C7C;
                v529[10].n128_u64[1] = v349;

                v6344 = v521;

                LODWORD(v340) = v17;

                sub_22BD64B08();
                if (os_log_type_enabled(oslog, v530))
                {
                  sub_22BB73FA4();
                  v531 = sub_22BB70090();
                  *(v344 + 1592) = 0;
                  *(v344 + 2456) = v531;
                  sub_22BB75908();
                  *(v344 + 1624) = v313;
                  *(v344 + 952) = sub_22BB89C08;
                  *(v344 + 960) = v6427;
                  v532 = sub_22BB971A8();
                  sub_22BB67984(v532, v533, v534, v535);
                  if (!v6439)
                  {

                    *(v344 + 952) = sub_22BB89C08;
                    *(v344 + 960) = v521;
                    v536 = sub_22BB971A8();
                    sub_22BB67984(v536, v537, v538, v539);

                    *(v344 + 952) = sub_22BB89C7C;
                    *(v344 + 960) = v529;
                    sub_22BD6122C();

                    *(v344 + 952) = sub_22BB89C08;
                    *(v344 + 960) = v17;
                    sub_22BD6122C();

                    *(v344 + 952) = sub_22BB89C08;
                    *(v344 + 960) = v6320;
                    sub_22BD6122C();

                    *(v344 + 952) = sub_22BB89C7C;
                    *(v344 + 960) = v342;
                    sub_22BD6122C();

                    *(v344 + 952) = sub_22BB89C08;
                    *(v344 + 960) = v6379;
                    sub_22BD6122C();

                    *(v344 + 952) = sub_22BB89C08;
                    *(v344 + 960) = v6324;
                    sub_22BD6122C();

                    *(v344 + 952) = sub_22BB89C7C;
                    *(v344 + 960) = v6318;
                    sub_22BD6122C();
                    sub_22BD63768();
                    sub_22BD6427C();
                    sub_22BD63B3C(&dword_22BB2C000, 0, v540, "[SessionCoordinator %{public}s] Event ID: %{public}s is %{public}s");
                    sub_22BD62500();
                    swift_arrayDestroy();
                    sub_22BB30458();
                    sub_22BB679C0();
                  }

                  goto LABEL_361;
                }

                sub_22BD6355C();

                v541 = v529->n128_u64[1];
                v305 = &v529->n128_i64[1];
                v6305 = v541;
                v541(v6320, v313);
                v542 = *(v521 + 8);
                v337 = v521 + 8;
                v542(v6346, v6324);
              }

              v17 = v344;
              v543 = v6439;
              sub_22BBC04D0();
              if (v149)
              {
                goto LABEL_119;
              }
            }

            __break(1u);

LABEL_408:

            goto LABEL_414;
          }

          v543 = v6439;
LABEL_119:
          v6259 = sub_22BB954F8(*(v17 + 2464));
          if (v6259)
          {
            sub_22BD64B90();
            v6268 = v550;
            v195 = &qword_27D8E6038;
            v6257 = v344;
            while (1)
            {
              sub_22BD632A8();
              sub_22BD618B8();
              sub_22BB954F0(v551);
              sub_22BB75920();
              sub_22BB3CD70(v552, v553, v554, &qword_22BDD0300);
              v6276 = v337 + 1;
              if (__OFADD__(v337, 1))
              {
                goto LABEL_397;
              }

              v555 = sub_22BB6FFCC();
              v557 = v313 + v556;
              sub_22BB970CC(v555);
              v558(v557, v344 + v6268, v305);
              v559 = sub_22BD60A8C();
              v561 = v560(v559);
              v305 = v562;
              if (*(v6301 + 16))
              {
                v563 = v6301;
                sub_22BB72B1C(v561, v562);
                sub_22BD63E60();
                if (v6301)
                {
                  v6266 = v337;
                  v6440 = v543;
                  goto LABEL_128;
                }
              }

              else
              {
              }

              v564 = sub_22BD60CC4(*(v17 + 3024));
              v565(v564);
              sub_22BB366B8();
              v305 = swift_allocObject();
              *(v305 + 16) = v6301;
              v566 = sub_22BBC05B4();
              sub_22BD63CDC(v566);

              v313 = v17 + 80;
              v6316 = sub_22BBBFFC8();
              v344 = v567;
              sub_22BD620D0();

              if (v340)
              {
                break;
              }

              v344 = v6257;
LABEL_143:
              v195 = &qword_27D8E6038;
              v349 = &qword_22BDD0300;
              sub_22BB325EC(*(v17 + 3024), &qword_27D8E6038, &qword_22BDD0300);
              ++v337;
              if (v6276 == v6259)
              {
                goto LABEL_144;
              }
            }

            v6266 = v337;
            v6440 = v543;
            v563 = v6316;
            v568 = sub_22BB3CB04();
            sub_22BD5EC9C(v568, v569, v570);
            sub_22BD6201C();
LABEL_128:
            v571 = sub_22BD61FCC();
            v6316 = v573;
            v6264 = v574;
            sub_22BB97FF0(v571, v573, v574, v572 & 1, v6301);
            sub_22BD62B9C();
            v575 = v543[175].isa;
            sub_22BDB63E4();
            sub_22BB322B0();
            v576 = swift_allocObject();
            v577 = sub_22BD62A04(v576);
            *(v577 + 16) = v578;
            *(v577 + 24) = v344;
            sub_22BB366B8();
            v579 = swift_allocObject();
            sub_22BD60D9C(v579);
            sub_22BB322B0();
            v580 = swift_allocObject();
            v581 = sub_22BD629EC(v580);
            *(v581 + 16) = v582;
            *(v581 + 24) = v543;
            v583 = sub_22BD00E3C();
            sub_22BB3CD70(v583, v584, &qword_27D8E6038, &qword_22BDD0300);
            sub_22BD63CB4();
            swift_allocObject();
            sub_22BD64AFC();
            sub_22BD63CD0();
            sub_22BB6BEE0(v585, v586, v587, v588);
            sub_22BB322B0();
            v589 = swift_allocObject();
            sub_22BB976A8(v589);
            sub_22BB322B0();
            v590 = swift_allocObject();
            v6344 = v563;
            *(v590 + 16) = v563;
            *(v590 + 24) = v305;
            sub_22BB322B0();
            v591 = swift_allocObject();
            sub_22BB97D80(v591);
            sub_22BB366B8();
            v6306 = v575;
            *(swift_allocObject() + 16) = v575;
            sub_22BB322B0();
            v592 = swift_allocObject();
            sub_22BD60634(v592);
            sub_22BB3CD70(oslog, v6346, &qword_27D8E3218, &qword_22BDBE390);
            sub_22BD62264();
            sub_22BB92A98();
            v593 = swift_allocObject();
            sub_22BB9741C();
            sub_22BB6BEE0(v594, v595, v596, v597);

            v6280 = sub_22BDB77C4();
            v6274 = sub_22BDBB134();
            sub_22BD616A8();
            v6347 = swift_allocObject();
            LOBYTE(v6347[2].isa) = 34;
            sub_22BD616A8();
            osloga = swift_allocObject();
            sub_22BB6FB2C(osloga);
            sub_22BB322B0();
            swift_allocObject();
            sub_22BB96B64();
            *(v598 + 16) = v599;
            *(v598 + 24) = v6421;
            sub_22BB322B0();
            v600 = swift_allocObject();
            v601 = sub_22BD629BC(v600);
            *(v601 + 16) = v602;
            *(v601 + 24) = &qword_27D8E3218;
            sub_22BD616A8();
            v6422 = swift_allocObject();
            *(v6422 + 16) = 34;
            sub_22BD616A8();
            v6370 = swift_allocObject();
            *(v6370 + 16) = 8;
            sub_22BB322B0();
            swift_allocObject();
            sub_22BB97D10();
            *(v603 + 16) = v604;
            *(v603 + 24) = v6427;
            sub_22BB322B0();
            v605 = swift_allocObject();
            v606 = sub_22BD629A4(v605);
            *(v606 + 16) = v607;
            *(v606 + 24) = v305;
            sub_22BD616A8();
            v6291 = swift_allocObject();
            *(v6291 + 16) = 34;
            sub_22BD616A8();
            v6288 = swift_allocObject();
            *(v6288 + 16) = 8;
            sub_22BB322B0();
            swift_allocObject();
            sub_22BB3AC60();
            *(v608 + 16) = v609;
            *(v608 + 24) = v589;
            sub_22BB322B0();
            v610 = swift_allocObject();
            sub_22BBC45B4(v610);
            sub_22BD616A8();
            v611 = swift_allocObject();
            *(v611 + 16) = 34;
            sub_22BD616A8();
            v612 = swift_allocObject();
            *(v612 + 16) = 8;
            sub_22BB322B0();
            swift_allocObject();
            sub_22BD5F86C();
            *(v613 + 16) = v614;
            *(v613 + 24) = v591;
            sub_22BB322B0();
            v615 = swift_allocObject();
            v6270 = sub_22BB8AEF8(v615);
            sub_22BD616A8();
            v6285 = swift_allocObject();
            *(v6285 + 16) = 34;
            sub_22BD616A8();
            v6325 = swift_allocObject();
            *(v6325 + 16) = 8;
            sub_22BB322B0();
            swift_allocObject();
            sub_22BB97D10();
            *(v616 + 16) = v617;
            *(v616 + 24) = v592;
            sub_22BB322B0();
            v618 = swift_allocObject();
            sub_22BB97474(v618);
            sub_22BD616A8();
            v6278 = swift_allocObject();
            *(v6278 + 16) = 34;
            sub_22BD616A8();
            v6282 = swift_allocObject();
            *(v6282 + 16) = 8;
            v619 = v611;
            v6321 = v611;
            sub_22BB322B0();
            swift_allocObject();
            sub_22BB97EBC();
            *(v620 + 16) = v621;
            *(v620 + 24) = v593;
            sub_22BB322B0();
            v622 = swift_allocObject();
            sub_22BB97474(v622);
            v623 = sub_22BD62608();
            sub_22BB73BD0(v623);
            sub_22BD60544(v6347);
            sub_22BB3FE84(osloga);
            v623[9] = name;
            v623[10] = sub_22BB89C08;
            v623[11] = v6422;
            v623[12] = sub_22BB89C08;
            sub_22BD6061C(v6370);
            sub_22BD625EC();
            sub_22BD62974();
            sub_22BBC052C();
            v623[23] = v611;
            v623[24] = sub_22BB89C08;
            v623[25] = v612;
            v623[26] = sub_22BB89C7C;
            v623[27] = v591;
            v623[28] = sub_22BB89C08;
            sub_22BD61974();
            sub_22BD62914();
            sub_22BD62EF4(v624);

            sub_22BD65338();

            v625 = v622;

            if (os_log_type_enabled(v6280, v6274))
            {
              sub_22BB67968(62);
              v626 = sub_22BD6449C();
              v6438[205].isa = 0;
              v6438[204].isa = v626;
              *v6278 = 1538;
              v6438[209].isa = (v6278 + 2);
              sub_22BB6B724();
              v6438[194].isa = v6347;
              v627 = sub_22BB39218();
              sub_22BB67984(v627, v628, v629, v630);
              if (!v6440)
              {

                sub_22BB6B724();
                v6438[194].isa = osloga;
                v631 = sub_22BB39218();
                sub_22BB67984(v631, v632, v633, v634);

                sub_22BB37EF8();
                v6438[194].isa = name;
                v635 = sub_22BB39218();
                sub_22BB67984(v635, v636, v637, v638);

                sub_22BB6B724();
                v6438[194].isa = v6422;
                v639 = sub_22BB39218();
                sub_22BB67984(v639, v640, v641, v642);

                sub_22BB6B724();
                v6438[194].isa = v6370;
                v643 = sub_22BB39218();
                sub_22BB67984(v643, v644, v645, v646);

                sub_22BB37EF8();
                v6438[194].isa = v6427;
                v647 = sub_22BB39218();
                sub_22BB67984(v647, v648, v649, v650);

                sub_22BB6B724();
                v6438[194].isa = v6291;
                v651 = sub_22BB39218();
                sub_22BB67984(v651, v652, v653, v654);

                sub_22BB6B724();
                v6438[194].isa = v6288;
                v655 = sub_22BB39218();
                sub_22BB67984(v655, v656, v657, v658);

                sub_22BB37EF8();
                v6438[194].isa = 34;
                v659 = sub_22BB39218();
                sub_22BB67984(v659, v660, v661, v662);

                sub_22BB6B724();
                v6438[194].isa = v6321;
                v663 = sub_22BB39218();
                sub_22BB67984(v663, v664, v665, v666);

                sub_22BB6B724();
                v6438[194].isa = v612;
                v667 = sub_22BB39218();
                sub_22BB67984(v667, v668, v669, v670);

                sub_22BB37EF8();
                v6438[194].isa = v6270;
                v671 = sub_22BB39218();
                sub_22BB67984(v671, v672, v673, v674);

                sub_22BB6B724();
                v6438[194].isa = v6285;
                v675 = sub_22BB39218();
                sub_22BB67984(v675, v676, v677, v678);

                sub_22BB6B724();
                v6438[194].isa = v6325;
                v679 = sub_22BB39218();
                sub_22BB67984(v679, v680, v681, v682);

                sub_22BB37EF8();
                v6438[194].isa = v619;
                v683 = sub_22BB39218();
                sub_22BB67984(v683, v684, v685, v686);

                v6438[193].isa = sub_22BB89C08;
                v6438[194].isa = v6278;
                v687 = sub_22BB39218();
                sub_22BB67984(v687, v688, v689, v690);

                v6438[193].isa = sub_22BB89C08;
                v6438[194].isa = v6282;
                v691 = sub_22BB39218();
                sub_22BB67984(v691, v692, v693, v694);

                sub_22BB37EF8();
                v6438[194].isa = v622;
                v695 = sub_22BB39218();
                sub_22BB67984(v695, v696, v697, v698);
                sub_22BD62624();

                sub_22BD63EC8(&dword_22BB2C000, v6280, v6274, "[SessionCoordinator %{public}s] | [TX %{public}s] %{public}s (as %{public}s) notified. Span %{public}s spawned with request ID %{public}s.");
                swift_arrayDestroy();
                sub_22BB30458();
                sub_22BB679C0();
              }

              goto LABEL_414;
            }

            sub_22BB70000();

            v699 = sub_22BD00AA4();
            v700(v699);
            v701 = sub_22BD5FC9C();
            v6322 = v702;
            v702(v701);
            sub_22BD60604();
            sub_22BB335C0(v6282 + v622, v623);
            sub_22BDB6104();
            v703 = sub_22BB3AC54();
            sub_22BB335C0(v703, v704);
            sub_22BB58DFC();
            swift_allocObject();
            sub_22BB2F5B0();
            sub_22BD652D8(v705);
            sub_22BB322B0();
            v706 = swift_allocObject();
            sub_22BB3E2EC(v706);
            sub_22BB366B8();
            v707 = swift_allocObject();
            *(v707 + 16) = v6306;
            sub_22BB322B0();
            v708 = swift_allocObject();
            sub_22BD5F71C(v708);
            sub_22BB322B0();
            v709 = swift_allocObject();
            sub_22BD64ADC(v709);
            sub_22BB322B0();
            v710 = swift_allocObject();
            sub_22BB8ADD4(v710);
            sub_22BDB7724();
            v6423 = sub_22BDB7744();
            sub_22BDBB1D4();
            sub_22BD616A8();
            v711 = swift_allocObject();
            sub_22BD63318(v711);
            sub_22BD616A8();
            v712 = swift_allocObject();
            sub_22BB97EE0(v712);
            sub_22BB322B0();
            v713 = swift_allocObject();
            sub_22BB586D8(v713);
            sub_22BB322B0();
            v714 = swift_allocObject();
            v6428 = sub_22BB3DEE8(v714);
            sub_22BD616A8();
            oslog = swift_allocObject();
            LOBYTE(oslog[2].isa) = v625;
            sub_22BD616A8();
            v6346 = swift_allocObject();
            LOBYTE(v6346[2].isa) = v6282;
            sub_22BB322B0();
            swift_allocObject();
            sub_22BB756B0();
            *(v715 + 16) = v716;
            *(v715 + 24) = v708;
            sub_22BB322B0();
            v717 = swift_allocObject();
            sub_22BB3DEE8(v717);
            sub_22BD616A8();
            v718 = swift_allocObject();
            *(v718 + 16) = v625;
            sub_22BD616A8();
            v719 = swift_allocObject();
            sub_22BD64300(v719);
            sub_22BB322B0();
            swift_allocObject();
            sub_22BD60724();
            *(v720 + 16) = v721;
            *(v720 + 24) = v707;
            sub_22BB322B0();
            v722 = swift_allocObject();
            sub_22BB960B8(v722);
            v723 = sub_22BD61958();
            v724 = sub_22BBC2570(v723, xmmword_22BDCE140);
            v724[2].n128_u64[0] = v725;
            v724[2].n128_u64[1] = v711;
            v724[3].n128_u64[0] = sub_22BB89C08;
            v724[3].n128_u64[1] = v712;
            v724[4].n128_u64[0] = sub_22BB89C7C;
            v724[4].n128_u64[1] = v6428;
            v724[5].n128_u64[0] = sub_22BB89C08;
            v724[5].n128_u64[1] = oslog;
            v724[6].n128_u64[0] = sub_22BB89C08;
            v724[6].n128_u64[1] = v6346;
            v724[7].n128_u64[0] = sub_22BB89C7C;
            v724[7].n128_u64[1] = v717;
            v724[8].n128_u64[0] = sub_22BB89C08;
            v724[8].n128_u64[1] = v718;
            v724[9].n128_u64[0] = sub_22BB89C08;
            v724[9].n128_u64[1] = v619;
            v724[10].n128_u64[0] = sub_22BB89C7C;
            v724[10].n128_u64[1] = v722;

            name = v712;

            sub_22BD652C0();

            if (sub_22BDBB244())
            {
              v6292 = v717;
              sub_22BB73F58("Span", &v6447);
              v6283 = v6447;
              sub_22BB67968(32);
              v726 = sub_22BB70090();
              sub_22BD641EC(v726);
              sub_22BB35530(v6423);
              v727 = sub_22BB3A2F8(v711);
              sub_22BB67984(v727, v728, v729, v730);
              if (!v6440)
              {
                sub_22BB73F80();
                MEMORY[0x5F2] = v712;
                v731 = sub_22BB69324();
                sub_22BB67984(v731, v732, v733, v734);
                sub_22BB6F960();
                v735 = sub_22BB3A2F8(v6428);
                sub_22BB67984(v735, v736, v737, v738);
                sub_22BB73F80();
                MEMORY[0x5F2] = oslog;
                v739 = sub_22BB69324();
                sub_22BB67984(v739, v740, v741, v742);
                sub_22BB73F80();
                MEMORY[0x5F2] = oslog;
                v743 = sub_22BB69324();
                sub_22BB67984(v743, v744, v745, v746);
                sub_22BB6F960();
                v747 = sub_22BB3A2F8(v6292);
                sub_22BB67984(v747, v748, v749, v750);
                sub_22BB73F80();
                MEMORY[0x5F2] = v718;
                v751 = sub_22BB69324();
                sub_22BB67984(v751, v752, v753, v754);
                sub_22BB73F80();
                MEMORY[0x5F2] = v619;
                v755 = sub_22BB69324();
                sub_22BB67984(v755, v756, v757, v758);
                sub_22BB6F960();
                MEMORY[0x5F2] = v722;
                v759 = sub_22BB69324();
                sub_22BB67984(v759, v760, v761, v762);
                sub_22BD643E0();

                sub_22BDB7714();
                sub_22BD64840();
                sub_22BD63C7C(v763, v764, v765, v766, v6283, "[SessionCoordinator %{public}s] - Span %{public}s - Part: %{public}s");
                sub_22BD64420();
                sub_22BB2F194();
                sub_22BB679C0();
              }

              goto LABEL_402;
            }

            sub_22BB897F0();
            v6293 = v767;
            v768 = MEMORY[0xD62];
            sub_22BD64DA4();
            v6367 = v769;
            sub_22BB4FE90();
            v6289 = v770;
            sub_22BD631B0();
            v6286 = v771;
            v17 = v6438[365].isa;
            sub_22BB89508(v6438[364].isa);
            v772 = sub_22BB313A8();
            (v6382)(v772);
            sub_22BB3A190();
            v773 = sub_22BDB7784();
            v774 = sub_22BB362AC();
            (v6397)(v774);
            sub_22BB3FBBC();
            sub_22BD61C58();
            v775();
            v776 = sub_22BB96DFC();
            sub_22BB3CD70(v776, v777, &qword_27D8E3218, &qword_22BDBE390);
            sub_22BB9766C();
            *v778 = v6295;
            v778[1] = v6297;
            sub_22BD64070(SLODWORD(oslog[4].isa));
            sub_22BB3B410();
            sub_22BB335C0(v6286, v17);
            sub_22BB366A0();
            sub_22BB335C0(v768, v6293);
            v779 = sub_22BBC01E4();
            v6322(v779);

            sub_22BB35FA0();
            v6421 = v773;
            v783 = sub_22BBBED88(v780, v781, v782, v773);
            sub_22BB8B6A4();
            sub_22BD64FF0();
            sub_22BD63888();
            sub_22BB94F54(v6425, v784);
            v785 = sub_22BB3A190();
            v6427 = v783;
            if (sub_22BB3AA28(v785, v786, v6367) == 1)
            {
              sub_22BB325EC(v6438[453].isa, &unk_27D8E69E0, &qword_22BDC1660);
            }

            else
            {
              sub_22BDB9AA4();
              sub_22BD63450();
              v787 = sub_22BB3AC54();
              v788(v787);
              if (v6289)
              {
LABEL_139:
                sub_22BB6FA98();
                sub_22BB7581C();
                sub_22BD6264C();
                v6326 = *(v17 + 2864);
                v789 = sub_22BD641D4();
                SessionPersistenceManager.write(initiatedParticipant:initiatedSpanId:postingParticipant:postingSpanId:)(v789, v790, v6306, v791, v6289, v6303);

                sub_22BB387B8();
                sub_22BB34648();
                sub_22BD63B88();
                v792();
                sub_22BD6379C();
                swift_storeEnumTagMultiPayload();

                sub_22BDBAF34();
                v793 = sub_22BD632B8();
                v794(v793, v6322);
                sub_22BB366A0();
                sub_22BB335C0(v6346, v6326);
                sub_22BB331C8();
                sub_22BB336D0(v795, v796, v797, oslog);
                sub_22BB3B574(v783 + v712, v17 + 544);
                sub_22BD63D1C();
                swift_endAccess();
                if (*(&v6367->isa + v783) == 1)
                {
                  v798 = *(v17 + 4896);
                  name = *(v17 + 3216);
                  sub_22BB96D9C();
                  sub_22BB70244(v799);
                  sub_22BD61744();
                  v801 = *(v800 + 3168);
                  sub_22BD63ADC();
                  sub_22BD63804();
                  sub_22BD61528();
                  sub_22BDB5D24();
                  v802 = sub_22BD639D4();
                  v803(v802, v798, v801);
                  sub_22BB93D50();
                  sub_22BDB5E14();
                  sub_22BBE6DE0(&qword_27D8E6470, &qword_22BDCE320);
                  sub_22BBBFFBC();
                  sub_22BDBAF34();
                  v804 = sub_22BB721D8();
                  v805 = sub_22BD6147C(v804, v6264);
                  sub_22BBBFEB0(v805, v6264, v806);

                  (*(v17 + 8))(name, v6367);
                  v17 = v6438;
                }

                else
                {
                  v807 = sub_22BB721D8();
                  v808 = sub_22BD6147C(v807, v6264);
                  sub_22BBBFEB0(v808, v6264, v809);
                }

                v543 = v6440;
                v337 = v6266;
                v344 = v6257;
                v313 = *(v17 + 2984);
                v305 = *(v17 + 2960);
                v340 = *(v17 + 2952);
                sub_22BB33E70();
                sub_22BB34648();
                sub_22BB3093C();
                sub_22BB34648();
                v810 = sub_22BBB4C24();
                v811(v810);
                goto LABEL_143;
              }
            }

            sub_22BDB83A4();
            sub_22BD63450();

            goto LABEL_139;
          }

LABEL_144:
          v6439 = v543;
          v812 = *(v17 + 4272);
          sub_22BD62768();
          sub_22BDB6124();
          sub_22BB322B0();
          v813 = swift_allocObject();
          sub_22BB3E014(v813);
          sub_22BB366B8();
          v814 = swift_allocObject();
          sub_22BD60D9C(v814);
          sub_22BB322B0();
          v815 = swift_allocObject();
          sub_22BD601E4(v815);
          sub_22BDB7724();
          v6427 = sub_22BDB7744();
          LODWORD(v6421) = sub_22BDBB1D4();
          sub_22BD616A8();
          v816 = swift_allocObject();
          sub_22BB97E20(v816);
          sub_22BD616A8();
          v817 = swift_allocObject();
          sub_22BBC0370(v817);
          sub_22BB322B0();
          v818 = swift_allocObject();
          sub_22BB89D30(v818);
          sub_22BB322B0();
          v819 = swift_allocObject();
          sub_22BB3DEE8(v819);
          sub_22BD616A8();
          swift_allocObject();
          sub_22BD648D8();
          *(v820 + 16) = v195;
          sub_22BD616A8();
          v821 = swift_allocObject();
          sub_22BB7564C(v821);
          sub_22BB322B0();
          v822 = swift_allocObject();
          sub_22BD6018C(v822);
          sub_22BB322B0();
          v823 = swift_allocObject();
          sub_22BD60264(v823);
          v824 = sub_22BBCCA6C();
          sub_22BB34620(v824);
          v825[4] = v826;
          v825[5] = v816;
          v825[6] = sub_22BB89C08;
          v825[7] = v344;
          v825[8] = sub_22BB89C7C;
          v825[9] = v819;
          v825[10] = sub_22BB89C08;
          v825[11] = v17;
          v825[12] = sub_22BB89C08;
          v825[13] = v349;
          v825[14] = sub_22BB89C7C;
          v825[15] = v823;

          if (sub_22BDBB244())
          {
            sub_22BB73F58("InstrumentationSend", &v6447);
            sub_22BD65428();
            v827 = sub_22BD619F0();
            sub_22BD5F9A0(v827);
            v543[174].isa = v195;
            v828 = sub_22BB3CE1C();
            sub_22BB67984(v828, v829, v830, v831);
            if (!v543)
            {
              sub_22BB70508();
              MEMORY[0x570] = v344;
              v832 = sub_22BB3CE1C();
              sub_22BB67984(v832, v833, v834, v835);
              MEMORY[0x568] = sub_22BB89C7C;
              MEMORY[0x570] = v819;
              v836 = sub_22BB3CE1C();
              sub_22BB67984(v836, v837, v838, v839);
              sub_22BB70508();
              MEMORY[0x570] = v17;
              v840 = sub_22BB3CE1C();
              sub_22BB67984(v840, v841, v842, v843);
              sub_22BD60234();
              MEMORY[0x570] = v349;
              v844 = sub_22BB3CE1C();
              sub_22BB67984(v844, v845, v846, v847);
              sub_22BD602A8();
              MEMORY[0x570] = v823;
              v848 = sub_22BB3CE1C();
              sub_22BB67984(v848, v849, v850, v851);

              sub_22BDB7714();
              sub_22BBBE830();
              sub_22BD62590();
              sub_22BD65410(v852, v853, v854, v855, v824, "[SessionCoordinator %s] | [TX %s] Begin dispatch to instrumentation.");
              sub_22BD62D7C();
              sub_22BD6193C();
              sub_22BB679C0();
            }

            goto LABEL_402;
          }

          v985 = sub_22BD609B4();
          (v6382)(v985);
          sub_22BB3A190();
          v543[596].isa = sub_22BDB7784();
          v986 = sub_22BB2F0E0();
          (v6397)(v986);
          sub_22BB37074();
          sub_22BD61C58();
          v987();
          sub_22BD648C0();
          if (v988)
          {
            if (v988 < 1)
            {
              __break(1u);
              goto LABEL_411;
            }

            sub_22BD60DAC();
            oslog = *(v989 + 16);
            do
            {
              sub_22BD60928();
              name = v990;
              sub_22BD61C78();
              sub_22BB70244(v991);
              v543 = *(v992 + 4400);
              sub_22BB720E0();
              sub_22BD634D0();
              (oslog)();
              sub_22BD62C60();
              v993 = sub_22BD615E4();
              v994(v993);
              v995 = sub_22BD62454();
              v816(v995);
              v996 = sub_22BDB9C74();
              sub_22BD654A0(v996);

              sub_22BB6FB0C();
            }

            while (!v149);
          }

          sub_22BD60B30();
          if (v149)
          {
            v997 = sub_22BD635CC();
            v998 = v6439;
            sub_22BD44098(v997);
            v6379 = v6439;
            if (v6439)
            {
              sub_22BD63BBC();
              sub_22BDB63E4();
              sub_22BB322B0();
              v999 = swift_allocObject();
              sub_22BD6049C(v999);
              sub_22BB366B8();
              v1000 = swift_allocObject();
              sub_22BD61A0C(v1000);
              sub_22BB322B0();
              v1001 = swift_allocObject();
              sub_22BD60348(v1001);
              sub_22BB366B8();
              v1002 = swift_allocObject();
              sub_22BBC0200(v1002);
              v1003 = v6439;
              v6427 = sub_22BDB77C4();
              LODWORD(v6425) = sub_22BDBB114();
              sub_22BD616A8();
              v1004 = swift_allocObject();
              sub_22BD63B94(v1004);
              sub_22BD616A8();
              v6431 = swift_allocObject();
              sub_22BD612D8(v6431);
              sub_22BB322B0();
              v1005 = swift_allocObject();
              sub_22BB96D60(v1005);
              sub_22BB322B0();
              swift_allocObject();
              sub_22BD5F74C();
              *(v1006 + 16) = v1007;
              *(v1006 + 24) = v543;
              sub_22BD616A8();
              v1008 = swift_allocObject();
              *(v1008 + 16) = v349;
              sub_22BD616A8();
              v6442 = swift_allocObject();
              *(v6442 + 16) = v998;
              sub_22BB322B0();
              v1009 = swift_allocObject();
              sub_22BBBE888(v1009);
              sub_22BB322B0();
              v1010 = swift_allocObject();
              sub_22BD6032C(v1010);
              sub_22BD616A8();
              v1011 = swift_allocObject();
              sub_22BD61B1C(v1011);
              sub_22BD616A8();
              v819 = swift_allocObject();
              sub_22BB6FB2C(v819);
              sub_22BB322B0();
              v1012 = swift_allocObject();
              sub_22BD60380(v1012);
              sub_22BB322B0();
              v1013 = swift_allocObject();
              sub_22BD603F0(v1013);
              sub_22BB322B0();
              v1014 = swift_allocObject();
              sub_22BD603B8(v1014);
              v1015 = sub_22BD61958();
              v1016 = sub_22BBC2570(v1015, xmmword_22BDCE140);
              v1016[2].n128_u64[0] = v1017;
              v1016[2].n128_u64[1] = v1004;
              v1016[3].n128_u64[0] = sub_22BB89C08;
              v1016[3].n128_u64[1] = v6431;
              v1016[4].n128_u64[0] = sub_22BB89C7C;
              v1016[4].n128_u64[1] = v999;
              v1016[5].n128_u64[0] = sub_22BB89C08;
              v1016[5].n128_u64[1] = v1008;
              v1016[6].n128_u64[0] = sub_22BB89C08;
              v1016[6].n128_u64[1] = v6442;
              v1016[7].n128_u64[0] = sub_22BB89C7C;
              v1016[7].n128_u64[1] = v543;
              v1016[8].n128_u64[0] = sub_22BB89C08;
              v1016[8].n128_u64[1] = v349;
              v1016[9].n128_u64[0] = sub_22BB89C08;
              v1016[9].n128_u64[1] = v819;
              v1016[10].n128_u64[0] = sub_22BD5F648;
              v1016[10].n128_u64[1] = v816;
              v6367 = v1004;

              v6421 = v1008;

              v1018 = sub_22BD60DFC();
              if (os_log_type_enabled(v1018, v1019))
              {
                sub_22BB67968(32);
                v1020 = sub_22BD63820();
                v1021 = sub_22BB3E490();
                *(v17 + 1784) = v1020;
                *(v17 + 1776) = v1021;
                sub_22BB75908();
                *(v17 + 1800) = v6442;
                sub_22BB3A8C8();
                *(v17 + 1328) = v6367;
                v1022 = sub_22BB397F4();
                sub_22BB67984(v1022, v1023, v1024, v1025);

                sub_22BB3A8C8();
                *(v17 + 1328) = v6431;
                v1026 = sub_22BB397F4();
                sub_22BB67984(v1026, v1027, v1028, v1029);

                *(v17 + 1320) = sub_22BB89C7C;
                *(v17 + 1328) = v999;
                v1030 = sub_22BB397F4();
                sub_22BB67984(v1030, v1031, v1032, v1033);

                sub_22BB3A8C8();
                *(v17 + 1328) = v1008;
                v1034 = sub_22BB397F4();
                sub_22BB67984(v1034, v1035, v1036, v1037);

                sub_22BB3A8C8();
                *(v17 + 1328) = v6442;
                v1038 = sub_22BB397F4();
                sub_22BB67984(v1038, v1039, v1040, v1041);

                sub_22BD5F6D4();
                *(v17 + 1328) = v543;
                v1042 = sub_22BB397F4();
                sub_22BB67984(v1042, v1043, v1044, v1045);

                sub_22BB3A8C8();
                *(v17 + 1328) = v349;
                v1046 = sub_22BB397F4();
                sub_22BB67984(v1046, v1047, v1048, v1049);

                sub_22BB3A8C8();
                *(v17 + 1328) = v819;
                v1050 = sub_22BB397F4();
                sub_22BB67984(v1050, v1051, v1052, v1053);

                sub_22BB70C3C();
                *(v17 + 1328) = v816;
                v1054 = sub_22BB397F4();
                sub_22BB67984(v1054, v1055, v1056, v1057);
                sub_22BD62094();

                sub_22BD61B3C();
                sub_22BD64A08();
                sub_22BD646EC(v1058, v1059, v1060, "[SessionCoordinator %{public}s] | [TX %{public}s] Failed to encode to proto data for debugger: %{public}@");
                sub_22BB325EC(v1020, &unk_27D8E6A70, &unk_22BDBCDB0);
                sub_22BB38680();
                sub_22BD619D4();
                sub_22BD6193C();
                sub_22BB679C0();
              }

              sub_22BD64098();

              (*(v6442 + 8))(v6425, name);
            }

            else
            {
              sub_22BD61E00();
              name = v1168;
              sub_22BB97628();
              v6367 = v1169;
              sub_22BD619BC();
              sub_22BD65170(v1170);
              sub_22BD65248();
              sub_22BD600B0();
              sub_22BD62EA8();
              v1171 = sub_22BD62428();
              sub_22BD594F8(v1171, v1172, v1173);
              sub_22BB3CD70(name, v344, &qword_27D8E3218, &qword_22BDBE390);
              sub_22BB7583C();
              v1174 = sub_22BD633F4();
              v1175(v1174);
              sub_22BD63650();
              sub_22BDB5E14();
              sub_22BBE6DE0(&qword_27D8E6470, &qword_22BDCE320);
              sub_22BD62448();
              sub_22BDBAF34();
              v1176 = sub_22BBD1A5C();
              v1177(v1176);
              v17 = v6438;
            }

            v6439 = 0;
          }

          else
          {
          }

          sub_22BD62680();
          sub_22BDB6124();
          sub_22BB322B0();
          v1240 = swift_allocObject();
          sub_22BB977E8(v1240);
          sub_22BB366B8();
          v1241 = swift_allocObject();
          sub_22BD60D9C(v1241);
          sub_22BB322B0();
          v1242 = swift_allocObject();
          sub_22BB77E74(v1242);

          v1243 = sub_22BDB7744();
          sub_22BB96D04(v1243);
          sub_22BDB7774();
          LODWORD(v6425) = sub_22BDBB1C4();
          sub_22BD616A8();
          v14 = swift_allocObject();
          sub_22BB97E20(v14);
          sub_22BD616A8();
          v1244 = swift_allocObject();
          sub_22BD62C10(v1244);
          sub_22BB322B0();
          swift_allocObject();
          sub_22BB3E0C4();
          *(v1245 + 16) = v1246;
          *(v1245 + 24) = v816;
          sub_22BB322B0();
          v16 = swift_allocObject();
          sub_22BB3DEE8(v16);
          sub_22BD616A8();
          v1247 = swift_allocObject();
          sub_22BD64D08(v1247);
          sub_22BD616A8();
          v15 = swift_allocObject();
          *(v15 + 16) = v819;
          sub_22BB322B0();
          swift_allocObject();
          sub_22BB756B0();
          *(v1248 + 16) = v1249;
          *(v1248 + 24) = v1242;
          sub_22BB322B0();
          v1250 = swift_allocObject();
          sub_22BB3DEE8(v1250);
          v1251 = sub_22BBCCA6C();
          sub_22BB31444(v1251);
          v1252[4] = v1253;
          v1252[5] = v14;
          v1252[6] = sub_22BB89C08;
          v1252[7] = v1244;
          v1252[8] = sub_22BB89C7C;
          v1252[9] = v16;
          v1252[10] = sub_22BB89C08;
          v1252[11] = v816;
          v1252[12] = sub_22BB89C08;
          v1252[13] = v15;
          v1252[14] = sub_22BB89C7C;
          v1252[15] = v1250;

          if (sub_22BDBB244())
          {
            sub_22BD63674();
            sub_22BB73F58("InstrumentationSend", v1254);
            sub_22BD64F90();
            sub_22BDB77B4();

            v1255 = sub_22BB53C48();
            if (v1256(v1255) != v6431)
            {
              v1259 = sub_22BD61D04();
              v1260(v1259);
            }

            sub_22BB67968(22);
            v1261 = sub_22BD62464();
            sub_22BD64CB4(v1261);
            sub_22BD63FF8();
            *(v17 + 1848) = v1262;
            *(v17 + 1256) = sub_22BB89C08;
            *(v17 + 1264) = v6427;
            v1263 = sub_22BD5F6A8();
            sub_22BB67984(v1263, v1264, v1265, v1266);
            if (!v6439)
            {
              sub_22BBC3C0C();
              *(v17 + 1264) = v1244;
              v1267 = sub_22BD5F6A8();
              sub_22BB67984(v1267, v1268, v1269, v1270);
              sub_22BD606AC();
              *(v17 + 1264) = v16;
              v1271 = sub_22BD5F6A8();
              sub_22BB67984(v1271, v1272, v1273, v1274);
              sub_22BBC3C0C();
              *(v17 + 1264) = v6421;
              v1275 = sub_22BD5F6A8();
              sub_22BB67984(v1275, v1276, v1277, v1278);
              sub_22BBC3C0C();
              *(v17 + 1264) = v15;
              v1279 = sub_22BD5F6A8();
              sub_22BB67984(v1279, v1280, v1281, v1282);
              sub_22BD606AC();
              *(v17 + 1264) = v6367;
              v1283 = sub_22BD5F6A8();
              sub_22BB67984(v1283, v1284, v1285, v1286);
              sub_22BD63A7C();

              sub_22BDB7714();
              sub_22BD61B3C();
              sub_22BD64048(&dword_22BB2C000, v1287, v1288, v1289);
              sub_22BBBE764();
              sub_22BB2F194();
              sub_22BB679C0();
            }

            goto LABEL_402;
          }

          sub_22BD61D18();

          v1257 = sub_22BB313A8();
          (v6397)(v1257);
          sub_22BD61C58();
          v1258();
          v34 = v6439;
          v12 = &qword_27D8E3218;
          v195 = v6301;
          if (v6329 == v6374)
          {
            v18 = *(v17 + 3824);
            v30 = *(v17 + 2496);

            sub_22BBC02E4();
            sub_22BB705A8();
            v1290 = sub_22BB2F324();
            sub_22BB325EC(v1290, v1291, &qword_22BDBE390);
            goto LABEL_97;
          }

          sub_22BD62768();
          sub_22BDB63E4();
          sub_22BB322B0();
          v3431 = swift_allocObject();
          sub_22BD603D4(v3431);
          sub_22BB366B8();
          v3432 = swift_allocObject();
          sub_22BD61A0C(v3432);
          sub_22BB322B0();
          v3433 = swift_allocObject();
          sub_22BBC02FC(v3433);
          sub_22BDB77C4();
          sub_22BDBB134();
          sub_22BD616A8();
          v3434 = swift_allocObject();
          sub_22BD632F8(v3434);
          sub_22BD616A8();
          v3435 = swift_allocObject();
          sub_22BBC0370(v3435);
          sub_22BB322B0();
          v3436 = swift_allocObject();
          sub_22BBBE7C0(v3436);
          sub_22BB322B0();
          v3437 = swift_allocObject();
          sub_22BB69C9C(v3437);
          sub_22BD616A8();
          v3438 = swift_allocObject();
          sub_22BD64D14(v3438);
          sub_22BD616A8();
          v3439 = swift_allocObject();
          *(v3439 + 16) = v6439;
          sub_22BB322B0();
          v3440 = swift_allocObject();
          sub_22BD602C4(v3440);
          sub_22BB322B0();
          v823 = swift_allocObject();
          sub_22BB69C9C(v823);
          v3441 = sub_22BBCCA6C();
          sub_22BB72F5C(v3441);
          v3442[6] = sub_22BB89C08;
          v3442[7] = v16;
          v3442[8] = sub_22BB89C7C;
          v3442[9] = v3437;
          v3442[10] = sub_22BB89C08;
          v3442[11] = &qword_27D8E3218;
          v3442[12] = sub_22BB89C08;
          v3442[13] = v3439;
          v3442[14] = sub_22BB89C7C;
          v3442[15] = v823;

          if (!sub_22BD63B1C())
          {
            sub_22BD63270();

            v3465 = sub_22BD61704();
            v3467 = v3466(v3465);
            sub_22BD63AFC(v3467);
            sub_22BB322B0();
            v3468 = swift_allocObject();
            sub_22BB977E8(v3468);
            sub_22BB366B8();
            v3469 = swift_allocObject();
            sub_22BD60D9C(v3469);
            sub_22BB322B0();
            v3470 = swift_allocObject();
            sub_22BD60A50(v3470);
            sub_22BDB7724();
            v3471 = sub_22BDB7744();
            sub_22BDBB1D4();
            sub_22BD616A8();
            v3472 = swift_allocObject();
            *(v3472 + 16) = 32;
            sub_22BD616A8();
            v3473 = swift_allocObject();
            sub_22BD631A4(v3473);
            sub_22BB322B0();
            swift_allocObject();
            sub_22BB3E0C4();
            *(v3474 + 16) = v3475;
            *(v3474 + 24) = &qword_27D8E3218;
            sub_22BB322B0();
            v3476 = swift_allocObject();
            sub_22BB3DEE8(v3476);
            sub_22BD616A8();
            v3477 = swift_allocObject();
            sub_22BB96A88(v3477);
            sub_22BD616A8();
            v3478 = swift_allocObject();
            sub_22BB894FC(v3478);
            sub_22BB322B0();
            swift_allocObject();
            sub_22BB756B0();
            *(v3479 + 16) = v3480;
            *(v3479 + 24) = v1250;
            sub_22BB322B0();
            v3481 = swift_allocObject();
            sub_22BB3DEE8(v3481);
            v3482 = sub_22BBCCA6C();
            sub_22BB31444(v3482);
            v3483[4] = v3484;
            v3483[5] = v3472;
            v3483[6] = sub_22BB89C08;
            v3483[7] = v3473;
            v3483[8] = sub_22BB89C7C;
            v3483[9] = v3476;
            v3483[10] = sub_22BB89C08;
            v3483[11] = v17;
            v3483[12] = sub_22BB89C08;
            v3483[13] = v3439;
            v3483[14] = sub_22BB89C7C;
            v3483[15] = v3481;

            if (sub_22BDBB244())
            {
              sub_22BD63EB0("ODPWait");
              sub_22BD62384();
              v3485 = sub_22BBBFF34();
              sub_22BB3ADEC(v3485);
              v6447 = v3486;
              v6448 = v3472;
              v3487 = sub_22BB58B08();
              sub_22BB67984(v3487, v3488, v3489, v3490);
              if (!v6301)
              {
                v3491 = sub_22BB542B0();
                sub_22BB67984(v3491, v3492, v3493, v3494);
                v3495 = sub_22BB542B0();
                sub_22BB67984(v3495, v3496, v3497, v3498);
                v3499 = sub_22BB542B0();
                sub_22BB67984(v3499, v3500, v3501, v3502);
                v3503 = sub_22BB542B0();
                sub_22BB67984(v3503, v3504, v3505, v3506);
                v6447 = sub_22BB89C7C;
                v6448 = v3481;
                v3507 = sub_22BB542B0();
                sub_22BB67984(v3507, v3508, v3509, v3510);
                sub_22BB3E564();

                v3511 = sub_22BDB7714();
                sub_22BB40F38(&dword_22BB2C000, v3512, v3513, v3511, v3514, "[SessionCoordinator %s] | [TX %s] Notifying ODP about session end.");
                sub_22BD623A0();
                sub_22BB77E48();
                sub_22BB679C0();
              }

              goto LABEL_402;
            }

            sub_22BD6153C();
            v3519 = *(v6301 + 4400);
            sub_22BD61CA0();
            v3520 = sub_22BBBEAD0();
            (v6382)(v3520);
            sub_22BB3A190();
            v3521 = sub_22BDB7784();
            v3522 = sub_22BBBEBC4(v3521);
            (v6397)(v3522);
            sub_22BB757A0();
            sub_22BD61C58();
            v3523();
            v3476(v3519, *MEMORY[0x277D1DE98], v3473);
            v3524 = sub_22BDB9C74();
            sub_22BD65518(v3524);

            sub_22BD65200(v3525);
            sub_22BB322B0();
            swift_allocObject();
            sub_22BD60428();
            *(v3526 + 16) = v3527;
            *(v3526 + 24) = v3471;
            sub_22BB366B8();
            v3528 = swift_allocObject();
            sub_22BD61A0C(v3528);
            sub_22BB322B0();
            v3529 = swift_allocObject();
            sub_22BB6FEDC(v3529);

            v3530 = sub_22BDB7744();
            sub_22BB755A0(v3530);
            sub_22BDBB1C4();
            sub_22BD616A8();
            v3531 = swift_allocObject();
            sub_22BD63D94(v3531);
            sub_22BD616A8();
            v3532 = swift_allocObject();
            sub_22BD631A4(v3532);
            sub_22BB322B0();
            swift_allocObject();
            sub_22BB3E0C4();
            *(v3533 + 16) = v3534;
            *(v3533 + 24) = v3473;
            sub_22BB322B0();
            v3535 = swift_allocObject();
            sub_22BB3DEE8(v3535);
            sub_22BD616A8();
            v3536 = swift_allocObject();
            sub_22BD64AB8(v3536);
            sub_22BD616A8();
            v3537 = swift_allocObject();
            sub_22BB894FC(v3537);
            sub_22BB322B0();
            swift_allocObject();
            sub_22BB756B0();
            *(v3538 + 16) = v3539;
            *(v3538 + 24) = v3529;
            sub_22BB322B0();
            v3540 = swift_allocObject();
            sub_22BB8DCE0(v3540);
            v3541 = sub_22BBCCA6C();
            sub_22BB6B6F0(v3541);
            v3542[6] = sub_22BB89C08;
            v3542[7] = v3532;
            v3542[8] = sub_22BB89C7C;
            v3542[9] = v3535;
            v3542[10] = sub_22BB89C08;
            v3542[11] = v17;
            v3542[12] = sub_22BB89C08;
            v3542[13] = v3439;
            v3542[14] = sub_22BB89C7C;
            v3542[15] = v3529;

            if ((sub_22BDBB244() & 1) == 0)
            {
              sub_22BBC251C();

              v3554 = sub_22BD00E3C();
              (v6397)(v3554);
              sub_22BB53C48();
              sub_22BD61C58();
              v3555();
              sub_22BD615F8();
              v3556 = swift_task_alloc();
              v3557 = sub_22BD624A8(v3556);
              *v3557 = v3558;
              sub_22BB37558(v3557);
              sub_22BB33430();

              sub_22BB75AA8();
              return;
            }

            sub_22BD614E4();
            sub_22BD63EB0("ODPWait");
            sub_22BB96BE8();
            sub_22BDB77B4();

            v3543 = sub_22BB53C48();
            if (v3544(v3543) != *MEMORY[0x277D85B00])
            {
              v3568 = sub_22BD60E1C();
              v3569(v3568);
              sub_22BD647E0("[SessionCoordinator %s] | [TX %s] Finished notifying ODP about session end.");
            }

            sub_22BB67968(22);
            v3570 = sub_22BB97DCC();
            sub_22BD64B60(v3570);
            sub_22BB756D4();
            v6447 = sub_22BB89C08;
            v6448 = v3471;
            v3571 = sub_22BB58B08();
            sub_22BB67984(v3571, v3572, v3573, v3574);
            if (v6301 == -88)
            {
              v3575 = sub_22BB542B0();
              sub_22BB67984(v3575, v3576, v3577, v3578);
              v3579 = sub_22BB542B0();
              sub_22BB67984(v3579, v3580, v3581, v3582);
              v3583 = sub_22BB542B0();
              sub_22BB67984(v3583, v3584, v3585, v3586);
              v3587 = sub_22BB542B0();
              sub_22BB67984(v3587, v3588, v3589, v3590);
              v6447 = sub_22BB89C7C;
              v6448 = v3529;
              v3591 = sub_22BB542B0();
              sub_22BB67984(v3591, v3592, v3593, v3594);
              goto LABEL_421;
            }

LABEL_402:
            sub_22BB33430();

            return;
          }

          sub_22BB67968(22);
          v3443 = sub_22BD619F0();
          sub_22BD62E2C(v3443);
          sub_22BD641F8(v3444);
          v6447 = sub_22BB89C08;
          v6448 = v17;
          v3445 = sub_22BB58B08();
          sub_22BB67984(v3445, v3446, v3447, v3448);
          if (v6301)
          {
            goto LABEL_331;
          }

          v3549 = sub_22BB542B0();
          sub_22BB67984(v3549, v3550, v3551, v3552);

          v3564 = sub_22BB542B0();
          sub_22BB67984(v3564, v3565, v3566, v3567);

          v6447 = sub_22BB89C08;
          v6448 = &qword_27D8E3218;
          v3603 = sub_22BB542B0();
          sub_22BB67984(v3603, v3604, v3605, v3606);
LABEL_411:

          sub_22BB704E4();
          v6447 = v3610;
          v6448 = v3609;
          v3611 = sub_22BB542B0();
          sub_22BB67984(v3611, v3612, v3613, v3614);
          if (!v195)
          {

            v6447 = sub_22BB89C7C;
            v6448 = v823;
            v3618 = sub_22BB542B0();
            sub_22BB67984(v3618, v3619, v3620, v3621);
            sub_22BD6324C();
            sub_22BD63120(&dword_22BB2C000, v3622, v3623, "[SessionCoordinator %{public}s] | [TX %{public}s] Terminate was encountered. Begin cleanup of session.");
            sub_22BD61EC8();
            sub_22BB77E48();
            sub_22BB679C0();
          }

          goto LABEL_408;
        }

        name = v344;
        sub_22BD62F1C();
        oslog = v358;
        sub_22BB31DC8();
        sub_22BB3A518(v359 + v360, v361);
        v6421 = sub_22BB954F8(v6425);
        v344 = 0;
        v195 = v6379;
        do
        {
          if (v6421 == v344)
          {
            v17 = v6438;
            sub_22BD634C0();
LABEL_86:
            v340 = v6367;
            sub_22BB33E70();
            sub_22BB34648();
            if (v6367)
            {
              goto LABEL_71;
            }

            while (1)
            {
LABEL_67:
              v345 = v344 + 1;
              if (__OFADD__(v344, 1))
              {
                __break(1u);

                goto LABEL_414;
              }

              if (v345 >= v342)
              {
                break;
              }

              v340 = *(v337 + 8 * v345);
              ++v344;
              if (v340)
              {
                v344 = v345;
                goto LABEL_71;
              }
            }

            v349 = &qword_27D8E6568;
            sub_22BBE6DE0(&qword_27D8E6568, &unk_22BDCE460);
            v427 = sub_22BB3A190();
            sub_22BB336D0(v427, v428, 1, v429);
            v6367 = 0;
            goto LABEL_72;
          }

          sub_22BB97C84();
          if (v362)
          {
            __break(1u);
            goto LABEL_323;
          }

          sub_22BD61B54();
          sub_22BB704CC();
          v364 = *(v363 + 3048);
          sub_22BB966E8(v363);
          v365 = sub_22BD61CC8();
          v367 = v366(v365);
          ++v344;
          sub_22BD63B6C(v367);
          ++v349;
          v368 = sub_22BB2F3F0();
          v369(v368);
          sub_22BB71FB0();
          sub_22BDB9AC4();
          v370 = sub_22BB58D10();
          v371(v370);
          v313 = swift_task_alloc();
          *(v313 + 16) = v340;
          v372 = sub_22BD5FBA4();
          sub_22BD65500(v372, v373, v374, v375, v376, v377, v378, v379, v3630, v3780, v3930, v4080, v4230, v4380, v4530, v4680, v4830, v4980, v5131, v5282, v5433, v5584, v5735, v5886, v6037);
          v380 = v364 + 8;
          v381 = sub_22BD62E38();
          v383 = v382(v381);
          v6439 = v6379;
        }

        while ((&unk_22BDCE460 & 1) == 0);
        sub_22BD61364(v383);
        sub_22BBCBF94();
        sub_22BB335C0(v340, v305);
        v344 = *(v349 + 80);
        sub_22BD61350();
        swift_allocObject();
        sub_22BB3E408();
        sub_22BB3A518(v305, v384 + v380);
        sub_22BB322B0();
        v385 = swift_allocObject();
        sub_22BD5F6BC(v385);
        v386 = sub_22BB500C0();
        sub_22BB335C0(v386, v387);
        sub_22BD62C1C();
        v388 = swift_allocObject();
        sub_22BD62E88(v388);
        sub_22BB322B0();
        v389 = swift_allocObject();
        sub_22BB96620(v389);
        LODWORD(v6427) = sub_22BDBB104();
        sub_22BD616A8();
        v390 = swift_allocObject();
        sub_22BB97E20(v390);
        sub_22BD616A8();
        v391 = swift_allocObject();
        sub_22BD62C10(v391);
        sub_22BB322B0();
        swift_allocObject();
        sub_22BB756B0();
        *(v392 + 16) = v393;
        *(v392 + 24) = v385;
        sub_22BB322B0();
        v394 = swift_allocObject();
        sub_22BB3DEE8(v394);
        sub_22BD616A8();
        v395 = swift_allocObject();
        sub_22BB75830(v395);
        sub_22BD616A8();
        v396 = swift_allocObject();
        sub_22BB96A88(v396);
        sub_22BB322B0();
        swift_allocObject();
        sub_22BB500CC();
        *(v397 + 16) = v398;
        *(v397 + 24) = v305;
        sub_22BB322B0();
        v337 = swift_allocObject();
        sub_22BB3DEE8(v337);
        v399 = sub_22BBCCA6C();
        sub_22BB31444(v399);
        v400[4] = v401;
        v400[5] = v390;
        v400[6] = sub_22BB89C08;
        v400[7] = v391;
        v400[8] = sub_22BB89C7C;
        v400[9] = v394;
        v400[10] = sub_22BB89C08;
        v400[11] = v344;
        v400[12] = sub_22BB89C08;
        v400[13] = v380;
        v400[14] = sub_22BB89C7C;
        v400[15] = v337;
        sub_22BD64764();

        v402 = sub_22BD612E8();
        if (!os_log_type_enabled(v402, v403))
        {
          sub_22BD62028();

          v417 = sub_22BD62FF8();
          (v6305)(v417);
          v17 = v342;
          sub_22BD61DCC();
          sub_22BD634C0();
          v6439 = v418;
          if (v419)
          {
            sub_22BDBAFD4();
          }

          v313 = v342[312];
          sub_22BBC45D0(v6336);
          v420 = sub_22BD61D7C();
          v421 = sub_22BBC463C(v420, oslog);
          if (!sub_22BD6341C(v421, v422))
          {
            sub_22BD634B0();
            *(&v6379->isa + v423) = v424;
          }

          v425 = sub_22BD63DBC();
          (v313)(v425);
          v426 = sub_22BD64D68();
          (v305)(v426);
          goto LABEL_86;
        }

        sub_22BB67968(22);
        v404 = sub_22BB3E030();
        sub_22BD64E04(v404);
        sub_22BB897E4(v402);
        v342[206] = v405;
        sub_22BB384C8();
        v342[188] = v305;
        v406 = sub_22BD607FC();
        sub_22BB67984(v406, v407, v408, v409);
        if (!v6379)
        {
          sub_22BB75658();
          sub_22BB384C8();
          v342[188] = v391;
          v410 = sub_22BD607FC();
          sub_22BB67984(v410, v411, v412, v413);

          sub_22BD608D0();

          sub_22BD607E4();
          *(v380 + 1504) = v344;
          sub_22BD611FC();

          sub_22BD607E4();
          *(v380 + 1504) = v380;
          sub_22BD611FC();

          sub_22BD607CC();
          *(v380 + 1504) = v337;
          sub_22BD611FC();
          sub_22BD62094();

          sub_22BB96D8C();
          sub_22BD62CB8();
          sub_22BD636C8(v414, v415, v416, "SessionCoordinator found ongoing span to be terminated: %s for participant: %s", v3630, v3780);
          sub_22BD61EC8();
          sub_22BB77E48();
          sub_22BB679C0();
        }

LABEL_323:

LABEL_361:

LABEL_414:
        sub_22BB33430();

        return;
      case 2u:
        sub_22BD649A0();
        sub_22BD62190();
        v6411 = v91;
        v92 = sub_22BBE6DE0(&qword_27D8E6540, &qword_22BDCE450);
        v93 = sub_22BD6362C(v92);
        v94(v93);
        sub_22BB6BEE0(v18 + v85, v6411, &qword_27D8E3218, &qword_22BDBE390);
        v95 = sub_22BD61AC0();
        v96(v95);
        sub_22BD64294();
        sub_22BDB96A4();
        v97 = sub_22BB38518();
        v98(v97);
        v99 = sub_22BDB9744();
        v14 += 8;
        v100 = sub_22BB97B18();
        v101(v100, v6425);
        *(v17 + 1872) = v99;
        v12 = sub_22BBE6DE0(&qword_27D8E2F48, &unk_22BDBD950);
        sub_22BB31DE0();
        sub_22BB69260();
        sub_22BB899C0(v102, v103, v104);
        v30 = v6427;
        sub_22BBBFFBC();
        sub_22BDB90D4();

        sub_22BBE6DE0(&qword_27D8E6560, &qword_22BDCE740);
        sub_22BB3329C();
        if (v149)
        {
          v112 = sub_22BB325EC(*(v17 + 3584), &qword_27D8E6518, &unk_22BDCE420);
          v113 = 1;
        }

        else
        {
          v110 = sub_22BB8EAD8();
          v112 = v111(v110);
          v113 = 0;
        }

        v114 = sub_22BB96DB0(v112, v113);
        v18 = &unk_27D8E69E0;
        sub_22BB3CD70(v114, v115, &unk_27D8E69E0, &qword_22BDC1660);
        v116 = sub_22BB36B74(v6427);
        if (v149)
        {
          sub_22BD6201C();
          v129 = sub_22BB325EC(v124, v125, v126);
          v130 = 1;
        }

        else
        {
          sub_22BB93D70(v116, v117, v118, v119, v120, v121, v122, v123, v3630);
          v127 = sub_22BD60A7C();
          v129 = v128(v127);
          v130 = 0;
        }

        v131 = sub_22BD60C28(v129, v130);
        v16 = &qword_22BDBE390;
        sub_22BB3CD70(v131, v132, &qword_27D8E3218, &qword_22BDBE390);
        v133 = sub_22BBBE174();
        sub_22BD63AAC(v133, v134);
        v135 = sub_22BB3A190();
        sub_22BB31814(v135, v136, v99);
        if (v149)
        {
          sub_22BD6493C();
          sub_22BB8E9F0();
          sub_22BB325EC(v137, v138, v139);
          sub_22BBBFF9C(&unk_27D8E69E0 + v34);
          if (!v149)
          {
            goto LABEL_28;
          }

          sub_22BB8E9F0();
          sub_22BB325EC(v140, v141, v142);
        }

        else
        {
          v143 = sub_22BD630F0();
          sub_22BD63AAC(v143, v144);
          sub_22BD618B8();
          sub_22BB3AA28(v145, v146, v147);
          v148 = *(v17 + 3744);
          sub_22BD64930();
          if (v149)
          {
            sub_22BD64924();
            v150 = sub_22BD00E3C();
            sub_22BB325EC(v150, v151, &qword_22BDBE390);
            ++v12;
            v152 = sub_22BB3627C();
            v153(v152);
LABEL_28:
            sub_22BB325EC(*(v17 + 3352), &qword_27D8E6510, &qword_22BDCE418);
LABEL_30:
            sub_22BD63100();
            v165 = sub_22BB6C8E0();
            sub_22BB325EC(v165, &unk_27D8E69E0, &qword_22BDC1660);
            v166 = sub_22BD6220C();
            sub_22BB325EC(v166, v167, &qword_22BDBE390);
            v168 = sub_22BB97688();
            v169(v168);
            v108 = sub_22BC54704();
            goto LABEL_31;
          }

          v12 = *(v17 + 3352);
          v15 = *(v17 + 3336);
          v154 = *(v17 + 3320);
          v155 = sub_22BBC0658();
          v156(v155);
          sub_22BB30DC4();
          v158 = sub_22BB3B194(&unk_28142DD40, v157);
          v18 = sub_22BB97518(v158);
          v159 = *(v154 + 8);
          v14 = v154 + 8;
          v160 = sub_22BB32E04();
          v159(v160);
          sub_22BB325EC(v148, &qword_27D8E3218, &qword_22BDBE390);
          v161 = sub_22BD6220C();
          v159(v161);
          sub_22BB8E9F0();
          sub_22BB325EC(v162, v163, v164);
          if ((v18 & 1) == 0)
          {
            goto LABEL_30;
          }
        }

        v271 = sub_22BD613E8();
        sub_22BB3CD70(v271, v272, &qword_27D8E3218, &qword_22BDBE390);
        sub_22BDB97E4();
        sub_22BDB9804();
        v12 = sub_22BB954F8(v12);
        v14 = 0;
        v34 = v6439;
        v16 = &qword_22BDC1660;
        v6425 = v12;
        while (1)
        {
          if (v14 == v12)
          {
            sub_22BD642AC();
          }

          else
          {
            v275 = *(v17 + 3000);
            v18 = *(v17 + 2816);
            v30 = *(v17 + 2464);
            v276 = sub_22BD617C4();
            sub_22BB954F0(v276);
            v277 = sub_22BD60908();
            v273 = sub_22BB3CD70(v277, v278, &qword_27D8E6038, &qword_22BDD0300);
            v279 = __OFADD__(v14++, 1);
            if (v279)
            {
              __break(1u);

              goto LABEL_332;
            }

            v274 = 0;
          }

          v280 = sub_22BD6124C(v273, v274);
          sub_22BB6BEE0(v280, v281, &qword_27D8E64E0, &qword_22BDCE3E8);
          sub_22BB3329C();
          if (v149)
          {
            break;
          }

          v282 = sub_22BD60AE8();
          v283(v282);
          sub_22BD651E8();
          sub_22BBE6DE0(&qword_27D8E64C0, &qword_22BDCE3C8);
          v284 = sub_22BB30F68();
          v285 = type metadata accessor for XPCClientAvatar(v284);
          if (sub_22BB6FAB0(v285))
          {
            sub_22BB97548();
            v286 = sub_22BB679CC();
            v287(v286);
            v12 = v6425;
            sub_22BB35464();
            swift_storeEnumTagMultiPayload();
            v288 = sub_22BB96D40();
            sub_22BBC11B4(v288);
            v289 = sub_22BD61F9C();
            v290(v289, v6429);
            v291 = sub_22BD63620();
            v16 = &qword_22BDC1660;
            v292 = v17;
            v17 = v6438;
            v34 = v6439;
            v293(v291, v292);
          }

          else
          {
            v294 = sub_22BD61BCC();
            v295(v294);
          }
        }

        v296 = sub_22BD613D0();
        sub_22BB325EC(v296, &unk_27D8E69E0, &qword_22BDC1660);
        v297 = sub_22BB313A8();
        sub_22BB325EC(v297, v298, &qword_22BDBE390);
        v299 = sub_22BD60A40();
        v300(v299);
LABEL_97:
        sub_22BB6FC94();
LABEL_98:

        sub_22BB35CBC();
        sub_22BB34648();
        continue;
      case 3u:
        v18 = (*(v17 + 2496) + *(v17 + 4440));
        sub_22BB3737C();
        sub_22BB3A518(v247, v248);
        sub_22BD612B0();
        sub_22BD6233C();
        sub_22BD6462C();
        sub_22BD643C4();
        sub_22BD61FB4();

        sub_22BD6486C();
        if (v30)
        {
          sub_22BD62314();
          v6344 = v249;
          sub_22BB6FFE8();
          v250 = sub_22BD60B0C();
          (v15)(v250);
          sub_22BD5FFD4();
          v251 = sub_22BD6108C();
          sub_22BB336D0(v251, v252, v253, v45);
          sub_22BB3B69C();
          sub_22BD80A04();
          v6374 = sub_22BDB8444();
          v6367 = v254;
          v255 = sub_22BDB8444();
          v257 = sub_22BD63008(v255, v256);
          (v15)(v257);
          sub_22BD60F68();

          v258 = sub_22BB53C48();
          sub_22BB352C4(v258, v259);

          sub_22BD61C08();
          sub_22BBBEBD8();
          v260 = sub_22BD62FE8();
          v261(v260);
          sub_22BD64360();
          sub_22BBE6DE0(&qword_27D8E6470, &qword_22BDCE320);
          sub_22BB6C5A8();
          sub_22BD61E28();
          v262(v30);
          sub_22BB32824();
          goto LABEL_90;
        }

        v30 = *(v17 + 4352);
        v14 = v85;
        sub_22BD61670();
        v441 = sub_22BBE6DE0(&qword_27D8E64C8, &qword_22BDCE3D0);
        sub_22BD63E28(v441);
        sub_22BB32824();
        sub_22BB34648();
        v442 = sub_22BB39478();
        sub_22BB74044(v442, v443, v30);
        v34 = v6439;
        goto LABEL_98;
      case 4u:
        sub_22BB96D4C();
        v18 = v218[1];
        v12 = v218[2];
        v30 = v218[3];
        v15 = v218[4];
        sub_22BB5837C();
        v14 = *(v219 + 80);
        sub_22BD61468();
        v221 = *(v220 + 8);
        sub_22BB71D80();
        sub_22BD6232C();
        if (v149)
        {
          v223 = 0;
        }

        v224 = v222 | v223;

        LODWORD(v6420) = v224;
        LOBYTE(v224) = sub_22BD7577C(v224, v221);

        if ((v224 & 1) == 0)
        {
          sub_22BB93D44();

          sub_22BB3531C(v6427, v6429);
          goto LABEL_16;
        }

        v1061 = sub_22BD622A0();
        sub_22BB89ADC(v1061, v1062);
        sub_22BD636B0();

        v15 = v14;

        sub_22BD635CC();

        v14 = v6429;
        v1063 = sub_22BD63E7C();
        sub_22BB352C4(v1063, v1064);
        sub_22BB93D90();
        sub_22BDB5D94();
        v1065 = sub_22BB96CC0();
        v1066(v1065);
        sub_22BDB5E14();
        sub_22BBE6DE0(&qword_27D8E6470, &qword_22BDCE320);
        v30 = v6382;
        sub_22BD61B48();
        v18 = v6367;
        sub_22BDBAF34();

        v1067 = sub_22BD63E7C();
        sub_22BB3531C(v1067, v1068);
        v1069 = sub_22BB9607C();
        v1070(v1069);
        v17 = v85;
        goto LABEL_96;
      case 5u:
        v105 = sub_22BB758A0();
        (v34)(v105);
        sub_22BD64948();
        if (v106)
        {
          sub_22BB7021C();
          v14 += 88;
          v263 = sub_22BB37074();
          if (v264(v263) == v85)
          {
            sub_22BB36924();
            sub_22BB955CC();
            sub_22BB31234();
            sub_22BD61BE0();
            v16 = *(v265 + 2728);
            sub_22BB707B8();
            v6398 = v266;
            v267 = sub_22BD61400();
            v268(v267);
            v269 = sub_22BD60280();
            v270(v269);
            *(v34 + 2) = 1;
            sub_22BD62270();
            MEMORY[0x23189FC60]();
            goto LABEL_95;
          }

          sub_22BD64D38();
          if (v149)
          {
            sub_22BB36924();
            sub_22BB955CC();
            sub_22BB31234();
            sub_22BB3E550();
            v16 = *(v444 + 2704);
            sub_22BB707B8();
            v6398 = v445;
            v446 = sub_22BD61400();
            v447(v446);
            v448 = sub_22BD60280();
            v449(v448);
            *(v34 + 2) = 0;
            sub_22BD62270();
            MEMORY[0x23189FC80]();
LABEL_95:
            v450 = sub_22BB5810C();
            MEMORY[0x23189FDB0](v450);
            v451 = sub_22BD63484();
            v452(v451);
            sub_22BDB5E14();
            sub_22BBE6DE0(&qword_27D8E6470, &qword_22BDCE320);
            sub_22BD61B2C();
            v18 = v6398;
            sub_22BDBAF34();
            v453 = sub_22BD61754();
            v454(v453);
            v455 = sub_22BD62DE8();
            v456(v455, v16);
            v457 = sub_22BD62480();
            v458(v457);
            goto LABEL_96;
          }

          sub_22BD64A80();
          if (v544)
          {
            sub_22BD60EAC();
            v545 = *(v17 + 2688);
            v12 = *(v17 + 2680);
            v546 = sub_22BC54A3C();
            v547(v546);
            v14 = v545 + 32;
            v548 = sub_22BD60F04();
            v549(v548);
            v30 = sub_22BDB5BE4();
            sub_22BD44210(v30);
            if (!v6439)
            {
              sub_22BB701E8();
              sub_22BD5A87C(v12);
              sub_22BD64DC8();
              sub_22BBE6DE0(&qword_27D8E6558, &unk_22BDCFC00);
              sub_22BB97200();
              v1137 = sub_22BDBAB14();
              if (sub_22BD63E94(v1137))
              {
                sub_22BD64C10();
                do
                {
                  sub_22BD618B8();
                  sub_22BB954F0(v1138);
                  sub_22BD65530();
                  v1139 = sub_22BD60F9C();
                  v1140(v1139);
                  sub_22BD62E50();
                  if (v45)
                  {
                    sub_22BBC066C();
                    sub_22BD62584();
                    sub_22BD80B94(v1141);
                  }

                  sub_22BB954F8(v30);
                  sub_22BBD1A4C();
                }

                while (!v149);
              }

              sub_22BD61DB8();
              name = v1142;
              sub_22BB36E60();
              v6367 = *(v17 + 3336);
              sub_22BBC0934();
              sub_22BD64D8C();
              sub_22BD64D80();
              sub_22BD61280();
              v16 = sub_22BDB95A4();
              v1143 = sub_22BDB5C04();
              sub_22BD63E0C(v1143);
              sub_22BB702A8();

              sub_22BD46274(v15);
              sub_22BD64CA8();
              sub_22BBE6DE0(&qword_27D8E6538, &qword_22BDCE448);
              sub_22BB976D0();
              MEMORY[0] = sub_22BDB5BF4();
              MEMORY[8] = v1144;
              sub_22BD44F8C(v15);
              sub_22BD65488();
              sub_22BD634A0();
              swift_storeEnumTagMultiPayload();
              sub_22BB370B8();
              sub_22BD652A8(v1145, v1146);
              sub_22BB35CBC();
              sub_22BB34648();
              v12 = v6367;
              sub_22BD65398();
              v1147 = sub_22BB6FCB8();
              MEMORY[0x23189FDA0](v1147);
              v1148 = sub_22BD61DA4();
              v1149(v1148);
              sub_22BB6FCB8();
              sub_22BDB5E14();
              sub_22BBE6DE0(&qword_27D8E6470, &qword_22BDCE320);
              sub_22BD60A2C();
              v18 = v6392;
              sub_22BDBAF34();
              v1150 = sub_22BB9607C();
              v1151(v1150, v6425);
              v1152 = sub_22BD61D90();
              v1153(v1152);
              v1154 = sub_22BD60C18();
              v1155(v1154);

              v6379 = v34;
              goto LABEL_97;
            }

            sub_22BB8AEEC();
            sub_22BD651D0();
            sub_22BBE6DE0(qword_27D8E27F8, &unk_22BDBCE20);
            sub_22BB76654();
            v917 = swift_dynamicCast();
            if (!v917)
            {
              sub_22BD65188();
              sub_22BDB63E4();
              sub_22BB322B0();
              v12 = swift_allocObject();
              sub_22BB3CF50(v12);
              sub_22BB366B8();
              v940 = swift_allocObject();
              sub_22BD62774(v940);
              sub_22BD640C0();
              v941 = v6439;
              v6439 = sub_22BDB77C4();
              LODWORD(v6429) = sub_22BDBB114();
              sub_22BD616A8();
              v16 = swift_allocObject();
              sub_22BB97ED4(v16);
              sub_22BD616A8();
              v942 = swift_allocObject();
              sub_22BD61698(v942);
              sub_22BB322B0();
              swift_allocObject();
              sub_22BB3E0C4();
              *(v943 + 16) = v944;
              *(v943 + 24) = v12;
              sub_22BB322B0();
              v945 = swift_allocObject();
              sub_22BB3DEE8(v945);
              sub_22BD616A8();
              v946 = swift_allocObject();
              sub_22BD61B1C(v946);
              sub_22BD616A8();
              v947 = swift_allocObject();
              sub_22BD63400(v947);
              sub_22BB322B0();
              swift_allocObject();
              sub_22BBBEBAC();
              *(v948 + 16) = v949;
              *(v948 + 24) = v30;
              sub_22BB322B0();
              v950 = swift_allocObject();
              sub_22BB3965C(v950);
              sub_22BB322B0();
              v951 = swift_allocObject();
              sub_22BB69760(v951);
              v952 = sub_22BBCCA6C();
              sub_22BB31444(v952);
              v953[4] = v954;
              v953[5] = v16;
              v953[6] = sub_22BB89C08;
              v953[7] = v45;
              v953[8] = sub_22BB89C7C;
              v953[9] = v945;
              v953[10] = sub_22BB89C08;
              v953[11] = v14;
              v953[12] = sub_22BB89C08;
              v953[13] = v15;
              v953[14] = sub_22BD5F648;
              v953[15] = v951;
              sub_22BD65470();

              if (sub_22BD62224())
              {
                v6424 = v14;
                v955 = sub_22BB67968(22);
                sub_22BD63870();
                v956 = sub_22BD62730();
                sub_22BD64038(v956);
                sub_22BB897E4(v955);
                *(v17 + 2024) = v957;
                *(v17 + 1000) = sub_22BB89C08;
                *(v17 + 1008) = v30;
                v958 = sub_22BB72008();
                sub_22BB67984(v958, v959, v960, v961);

                sub_22BD604CC();
                *(v17 + 1008) = v45;
                v962 = sub_22BB72008();
                sub_22BB67984(v962, v963, v964, v965);

                sub_22BD604E4();
                *(v17 + 1008) = v945;
                v966 = sub_22BB72008();
                sub_22BB67984(v966, v967, v968, v969);

                sub_22BD604CC();
                *(v17 + 1008) = v6424;
                v970 = sub_22BB72008();
                sub_22BB67984(v970, v971, v972, v973);

                sub_22BD604CC();
                *(v17 + 1008) = v15;
                v974 = sub_22BB72008();
                sub_22BB67984(v974, v975, v976, v977);

                sub_22BD604B4();
                *(v17 + 1008) = v951;
                v978 = sub_22BB72008();
                sub_22BB67984(v978, v979, v980, v981);
                sub_22BD61A18();

                sub_22BBD1A34();
                sub_22BB6F9C8();
                sub_22BD636C8(v982, v983, v984, "[SessionCoordinator %{public}s] | Failed to decode proto data from debugger: %{public}@");
                sub_22BB325EC(v12, &unk_27D8E6A70, &unk_22BDBCDB0);
                sub_22BB89BBC();
                sub_22BB35808();
                sub_22BB679C0();
              }

              sub_22BB89F08(*(v17 + 3880));
              sub_22BD651A0();

              v1102 = sub_22BD6268C();
              v1103(v1102, v16);
              sub_22BD62C34();
              LODWORD(v6367) = *(v17 + 4848);
              sub_22BB34150();
              sub_22BD60954(v1104);
              v1105 = *(v17 + 2696);
              sub_22BD6477C();
              v6405 = v1105;
              v6413 = v1106;
              sub_22BD60AC0();
              sub_22BD647D4(v1107);
              MEMORY[0x23189FBE0]();
              goto LABEL_179;
            }

            sub_22BD651B8(v917);
            sub_22BB322B0();
            v918 = swift_allocObject();
            sub_22BD6002C(v918);
            v919 = sub_22BDB77C4();
            v14 = sub_22BDBB114();
            sub_22BD616A8();
            v920 = swift_allocObject();
            sub_22BD60E0C(v920);
            sub_22BD616A8();
            v921 = swift_allocObject();
            sub_22BD617B4(v921);
            sub_22BB322B0();
            v922 = swift_allocObject();
            sub_22BB97500(v922);
            sub_22BB322B0();
            v923 = swift_allocObject();
            sub_22BD6040C(v923);
            v924 = sub_22BB6F8FC();
            v925 = sub_22BBC2570(v924, xmmword_22BDC2F20);
            v925[2].n128_u64[0] = v926;
            v925[2].n128_u64[1] = v15;
            v925[3].n128_u64[0] = sub_22BB89C08;
            v925[3].n128_u64[1] = v12;
            v925[4].n128_u64[0] = sub_22BB89C7C;
            v925[4].n128_u64[1] = v30;

            if (sub_22BB72E44())
            {
              sub_22BB67968(12);
              v927 = sub_22BB38198();
              sub_22BD64138(v927);
              sub_22BB3A9B0(v922);
              *(v17 + 1072) = v15;
              v928 = sub_22BD5FBD4();
              sub_22BB67984(v928, v929, v930, v931);

              sub_22BB385A8();
              *(v17 + 1072) = v12;
              v932 = sub_22BD5FBD4();
              sub_22BB67984(v932, v933, v934, v935);

              sub_22BBCC154();
              *(v17 + 1072) = v30;
              v936 = sub_22BD5FBD4();
              sub_22BB67984(v936, v937, v938, v939);
              sub_22BBD1A28();

              sub_22BB337EC(&dword_22BB2C000, v919, v14, "[SessionCoordinator %{public}s] | Injected events violate security policy.");
              sub_22BB30DDC();
              sub_22BB679C0();
            }

            sub_22BD624B8();

            v1086 = sub_22BB70554();
            v1087(v1086);
            sub_22BD62C34();
            sub_22BB3A738();
            sub_22BD60E9C();
            sub_22BB38BC4();
            v18 = v6438[337].isa;
            sub_22BD61C64();
            v6421 = v1088;
            v6425 = v1089;
            sub_22BB38E74();
            sub_22BB70778(v1090);
            MEMORY[0x23189FBE0]();
            v1091 = sub_22BB6A0A0();
            v1092(v1091);
            sub_22BD60C68();
            sub_22BDB5D34();
            v1093 = sub_22BB70294();
            v1094(v1093);
            sub_22BBBFFBC();
            sub_22BDB5E14();
            sub_22BBE6DE0(&qword_27D8E6470, &qword_22BDCE320);
            sub_22BD617A4();
            sub_22BDBAF34();
            v1095 = sub_22BD60E8C();
            v1096(v1095);
            v1097 = sub_22BB97FE0();
            v1098(v1097);
            v1099 = sub_22BD60C18();
            v1100(v1099);
            v1101 = *(v17 + 2056);
LABEL_177:

            goto LABEL_181;
          }

          sub_22BD649AC();
          if (v856)
          {
            v857 = sub_22BD5F900();
            v858(v857);
            v859 = sub_22BB6FF74();
            v860(v859);
            v861 = sub_22BB8ADB4();
            v862(v861);
            sub_22BDB96A4();
            v863 = sub_22BB53C48();
            v864(v863);
            sub_22BDB9744();
            v865 = sub_22BD6161C();
            v866(v865);
            sub_22BD64734();
            v6379 = v6439;
            if (v6439)
            {
              sub_22BD63C38();
              sub_22BDB63E4();
              sub_22BB322B0();
              v867 = swift_allocObject();
              sub_22BB977E8(v867);
              sub_22BB366B8();
              v868 = swift_allocObject();
              sub_22BBC0200(v868);
              v869 = v6439;
              v870 = v15;
              v6441 = sub_22BDB77C4();
              sub_22BDBB114();
              sub_22BD616A8();
              v871 = swift_allocObject();
              sub_22BD60E0C(v871);
              sub_22BD616A8();
              v872 = swift_allocObject();
              sub_22BD61698(v872);
              sub_22BB322B0();
              v873 = swift_allocObject();
              sub_22BB31A44(v873);
              sub_22BB322B0();
              v874 = swift_allocObject();
              sub_22BB3DEE8(v874);
              sub_22BD616A8();
              v17 = swift_allocObject();
              sub_22BD61EB0(v17);
              sub_22BD616A8();
              v875 = swift_allocObject();
              sub_22BD62B48(v875);
              v12 = v6441;
              sub_22BB322B0();
              swift_allocObject();
              sub_22BBBEBAC();
              *(v876 + 16) = v877;
              *(v876 + 24) = v30;
              sub_22BB322B0();
              v878 = swift_allocObject();
              sub_22BB3965C(v878);
              sub_22BB322B0();
              v879 = swift_allocObject();
              sub_22BB69760(v879);
              v880 = sub_22BBCCA6C();
              sub_22BB31444(v880);
              v881[4] = v882;
              v881[5] = v15;
              v881[6] = sub_22BB89C08;
              v881[7] = v45;
              v881[8] = sub_22BB89C7C;
              v881[9] = v874;
              v881[10] = sub_22BB89C08;
              v881[11] = v17;
              v881[12] = sub_22BB89C08;
              v881[13] = v14;
              v881[14] = sub_22BD5F648;
              v881[15] = v879;
              sub_22BD64764();

              if (sub_22BD62224())
              {
                sub_22BB67968(22);
                sub_22BBB5D38();
                v883 = sub_22BD62BF4();
                v16[259] = v15;
                v16[258] = v883;
                sub_22BD62374();
                v16[263] = v879;
                v16[135] = sub_22BB89C08;
                v16[136] = v30;
                v884 = sub_22BB6C714();
                sub_22BB67984(v884, v885, v886, v887);

                sub_22BB96064();
                v16[136] = v45;
                v888 = sub_22BB6C714();
                sub_22BB67984(v888, v889, v890, v891);

                sub_22BD605BC();
                v16[136] = v874;
                v892 = sub_22BB6C714();
                sub_22BB67984(v892, v893, v894, v895);

                v16[135] = sub_22BB89C08;
                v16[136] = v17;
                v896 = sub_22BB6C714();
                sub_22BB67984(v896, v897, v898, v899);

                sub_22BB96064();
                v16[136] = v14;
                v900 = sub_22BB6C714();
                sub_22BB67984(v900, v901, v902, v903);

                v16[135] = sub_22BD5F648;
                v16[136] = v879;
                v904 = sub_22BB6C714();
                sub_22BB67984(v904, v905, v906, v907);
                sub_22BD62CF0();
                sub_22BBD1A34();
                sub_22BD64B84();
                sub_22BD636C8(v908, v909, v910, "[SessionCoordinator %{public}s] Failed to encode to proto data for debugger: %{public}@");
                sub_22BB325EC(v15, &unk_27D8E6A70, &unk_22BDBCDB0);
                sub_22BB77E48();
                sub_22BB32FA4(v883);
                sub_22BB89BBC();
                sub_22BB679C0();
              }

              sub_22BD61E14();
              v15 = v16[479];

              v1126 = sub_22BD6268C();
              v1127(v1126, v15);
              v6439 = v6379;
              LODWORD(v6374) = *(v16 + 1217);
              v6388 = *(v16 + 1213);
              sub_22BB9666C();
              sub_22BB9664C();
              v6383 = v1128;
              v18 = v16[334];
              sub_22BD64DD4();
              v6415 = v1129;
              sub_22BD6116C();
              MEMORY[0x23189FC40]();
              sub_22BB6FC88();
              sub_22BD64AA0();
              v1130();
              sub_22BD63938();
              sub_22BDB5D34();
              v1131 = sub_22BD62C28();
              v1132(v1131, v6388, v6383);
              sub_22BBBFFBC();
              sub_22BDB5E14();
              sub_22BBE6DE0(&qword_27D8E6470, &qword_22BDCE320);
              sub_22BD61834();

              v1133 = sub_22BB96A1C();
              v1134(v1133, v6421);
              (*(v45 + 8))(v18, v6415);
              v1135 = sub_22BB6B714();
              v1136(v1135);
              v34 = 0;
              sub_22BD64BF8();
            }

            else
            {
              sub_22BD64C4C();
              v6399 = v1117;
              sub_22BD6109C();
              v30 = v16[399];
              v6393 = v16[396];
              v12 = v16[333];
              v6421 = v16[332];
              v6425 = v16[400];
              v6406 = v16[310];
              v6414 = v16[402];

              sub_22BD646D4();
              sub_22BB3FBBC();
              sub_22BDB5D64();
              v1118 = sub_22BD64DF8();
              v1119(v1118, v6399, v6393);
              sub_22BD62724();
              sub_22BDB5E14();
              sub_22BBE6DE0(&qword_27D8E6470, &qword_22BDCE320);
              v18 = v6406;
              v14 = v6414;
              sub_22BDBAF34();
              v1120 = sub_22BD633C4();
              v1121(v1120);
              v1122 = sub_22BB70264();
              v1123(v1122, v6421);
              v1124 = sub_22BD60C18();
              v1125(v1124);
              v34 = 0;
              v17 = v16;
            }

            goto LABEL_97;
          }

          sub_22BBC01F4();
          if (!v911)
          {
            sub_22BD647A8();
            if (v1071)
            {
              sub_22BD5FA30();
              sub_22BB58D38();
              v6412 = v1072;
              v1073 = sub_22BC54A3C();
              v1074(v1073);
              v1075 = sub_22BD60294();
              v1076(v1075);
              sub_22BD653C8();
              v1077 = sub_22BBC055C();
              MEMORY[0x23189FDC0](v1077);
              v1078 = sub_22BD63484();
              v1079(v1078);
              sub_22BD642A0();
              sub_22BDB5E14();
              sub_22BBE6DE0(&qword_27D8E6470, &qword_22BDCE320);
              v30 = v6421;
              sub_22BB5810C();
              v18 = v6412;
              sub_22BDBAF34();
              v1080 = sub_22BD6160C();
              v1081(v1080);
              ++v12;
              v1082 = sub_22BB35464();
              v1083(v1082);
              v1084 = sub_22BD649D0();
            }

            else
            {
              sub_22BD64D50();
              if (!v1156)
              {
                sub_22BD64C9C();
                if (v1292)
                {
                  sub_22BB32468();
                  v14 = v6438[317].isa;
                  v16 = v6438[316].isa;
                  v1293 = sub_22BB381B4();
                  v1294(v1293);
                  v1295 = sub_22BD601CC();
                  v1296(v1295);
                  sub_22BD63EF8();
                  sub_22BD5FC18();

                  sub_22BD62270();
                  MEMORY[0x23189FB20]();
                }

                else
                {
                  sub_22BD64C34();
                  if (!v1335)
                  {
                    sub_22BD64C1C();
                    if (v1364)
                    {
                      v6432 = *(v17 + 3464);
                      sub_22BB96B90();
                      v1366 = *(v17 + 2488);
                      v1367 = sub_22BC54A3C();
                      v1368(v1367);
                      v1369 = sub_22BB70250();
                      v1370(v1369);
                      sub_22BB71FB0();
                      sub_22BDB5BA4();
                      sub_22BD644B8();
                      v1371 = sub_22BD61590();
                      v1372(v1371);
                      v1373 = sub_22BB3A840();
                      sub_22BB3AA28(v1373, v1374, v6432);
                      sub_22BB97DC0();
                      if (v149)
                      {
                        sub_22BB325EC(*(v17 + 2776), &qword_27D8E64D8, &qword_22BDCE3E0);
                      }

                      else
                      {
                        v12 = *(v17 + 3472);
                        v15 = *(v17 + 2784);
                        sub_22BB3737C();
                        sub_22BB3A518(v1375, v12);
                        v1376 = sub_22BD65440();
                        sub_22BB75894(v1376, v1377);
                        v1378 = sub_22BBE6DE0(&qword_27D8E64C8, &qword_22BDCE3D0);
                        v1379 = sub_22BD63E44(v1378);
                        sub_22BD646A4(v1379);
                        sub_22BD61854();
                        sub_22BB32824();
                        sub_22BB34648();
                      }

                      v14 = v1366 != 1;
                      sub_22BD61390();
                      sub_22BD61308();
                      v6407 = v1422;
                      sub_22BB95A24();
                      v6421 = v1423;
                      v6425 = v1424;
                      sub_22BD619BC();
                      v6400 = v1425;
                      MEMORY[0x23189FB80]();
                      sub_22BD63334();
                      sub_22BDB5DB4();
                      v12 += 13;
                      v1426 = sub_22BD636A4();
                      v1427(v1426);
                      sub_22BB97B18();
                      sub_22BDB5E14();
                      sub_22BBE6DE0(&qword_27D8E6470, &qword_22BDCE320);
                      v18 = v6400;
                      v30 = v6407;
                      sub_22BBC055C();
                      sub_22BDBAF34();
                      v1428 = sub_22BD6160C();
                      v1429(v1428);
                      v1430 = sub_22BD62578();
                      v1431(v1430);
                      v1432 = sub_22BB3ACA0();
                      v1433(v1432);
                    }

                    else
                    {
                      sub_22BD616CC(v1365);
                      sub_22BB322B0();
                      v1394 = swift_allocObject();
                      v1395 = sub_22BD5FB20(v1394);
                      v1396(v1395);
                      sub_22BD60E54();
                      v1397 = swift_allocObject();
                      v1398 = sub_22BD61D68(v1397);
                      (v34)(v1398);

                      v6433 = sub_22BDB77C4();
                      LODWORD(v6425) = sub_22BDBB114();
                      sub_22BD616A8();
                      v1399 = swift_allocObject();
                      sub_22BD61784(v1399);
                      sub_22BD616A8();
                      v1400 = swift_allocObject();
                      sub_22BD63308(v1400);
                      sub_22BB322B0();
                      v1401 = swift_allocObject();
                      sub_22BBBE7C0(v1401);
                      sub_22BB322B0();
                      v14 = swift_allocObject();
                      sub_22BB69C9C(v14);
                      sub_22BD616A8();
                      v15 = swift_allocObject();
                      sub_22BB6C06C(v15);
                      sub_22BD616A8();
                      v1402 = swift_allocObject();
                      sub_22BD64AC4(v1402);
                      sub_22BB322B0();
                      v1403 = swift_allocObject();
                      sub_22BD6039C(v1403);
                      sub_22BB322B0();
                      v1404 = swift_allocObject();
                      sub_22BB960B8(v1404);
                      v30 = sub_22BBCCA6C();
                      sub_22BB34620(v30);
                      v1405[4] = v1406;
                      v1405[5] = v34;
                      v1405[6] = sub_22BB89C08;
                      v1405[7] = v17;
                      v1405[8] = sub_22BB89C7C;
                      v1405[9] = v14;
                      v1405[10] = sub_22BB89C08;
                      v1405[11] = v15;
                      v1405[12] = sub_22BB89C08;
                      v1405[13] = v6439;
                      v1405[14] = sub_22BB89C7C;
                      v1405[15] = v1404;

                      sub_22BD63C2C();

                      v1407 = sub_22BD624F4();
                      if (os_log_type_enabled(v1407, v1408))
                      {
                        sub_22BB67968(22);
                        v1409 = sub_22BBBFF34();
                        v16[293] = 0;
                        v16[289] = v1409;
                        sub_22BBBEB6C();
                        sub_22BD60EBC(v1410);
                        v16[172] = v34;
                        sub_22BBBEAA0();
                        if (!v6439)
                        {

                          sub_22BB3B510();
                          *(v1411 + 1368) = v1412;
                          *(v1411 + 1376) = v17;
                          sub_22BD60E34(v1411);

                          sub_22BB70564();
                          *(v1413 + 1368) = v1414;
                          *(v1413 + 1376) = v14;
                          sub_22BD60E34(v1413);

                          sub_22BB3B510();
                          *(v1415 + 1368) = v1416;
                          *(v1415 + 1376) = v15;
                          sub_22BD60E34(v1415);

                          sub_22BB3B510();
                          *(v1417 + 1368) = v1418;
                          *(v1417 + 1376) = v6427;
                          sub_22BD60E34(v1417);

                          sub_22BB70564();
                          *(v1419 + 1368) = v1420;
                          *(v1419 + 1376) = v1404;
                          sub_22BD60E34(v1419);
                          sub_22BBC03A4();

                          sub_22BD61B3C();
                          sub_22BD636C8(&dword_22BB2C000, v6433, v1421, "[SessionCoordinator %{public}s] Unrecognized debugger event: %s.");
                          sub_22BD61EE4();
                          sub_22BB89BBC();
                          sub_22BB679C0();
                        }

LABEL_413:

                        goto LABEL_408;
                      }

                      sub_22BD61ADC();

                      v1434 = sub_22BD60A40();
                      v1435(v1434);
                      v1436 = v18[1].isa;
                      ++v18;
                      v1436(v6425, v6421);
                      v1437 = sub_22BBC03B8();
                      v1438(v1437);
                      v17 = v16;
                    }

LABEL_96:
                    v34 = v6439;
                    goto LABEL_97;
                  }

                  sub_22BB32468();
                  v14 = v6438[314].isa;
                  v16 = v6438[313].isa;
                  v1336 = sub_22BB381B4();
                  v1337(v1336);
                  v1338 = sub_22BD601CC();
                  v1339(v1338);
                  sub_22BD63EF8();
                  sub_22BD5FBE8();

                  sub_22BD62270();
                  MEMORY[0x23189FB40]();
                }

                v1340 = sub_22BD60C68();
                MEMORY[0x23189FD40](v1340);
                sub_22BD62240();
                sub_22BD64994();
                v1341();
                v18 = v6397;
                sub_22BB6FCB8();
                sub_22BDB5E14();
                sub_22BBE6DE0(&qword_27D8E6470, &qword_22BDCE320);
                sub_22BB70270();
                v1342 = sub_22BB8EAA8();
                v1343(v1342);
                v34 = v6439;
                v1344 = sub_22BD62FA4();
                v1345(v1344);
                v1346 = sub_22BD641B0();
                v1347(v1346);
                v6379 = v6439;
                goto LABEL_97;
              }

              sub_22BD5FADC();
              sub_22BBE6DE0(&qword_27D8E63F8, &qword_22BDCE220);
              sub_22BD64960();
              sub_22BBE6DE0(&qword_27D8E6008, &qword_22BDCD538);
              v1157 = sub_22BD61330();
              sub_22BD5B890(v1157, 1);
              v1158 = sub_22BD60DDC();
              v1159(v1158);
              v1160 = sub_22BD63D10();
              sub_22BD74A58(v1160, v1161);
              v1162 = sub_22BD61CB4();
              v1163(v1162);
              sub_22BD61D54();
              swift_storeEnumTagMultiPayload();
              sub_22BD5F83C();
              sub_22BD645B8();
              sub_22BB3630C();
              sub_22BD65290(v1164, v1165);
              sub_22BB35CBC();
              sub_22BB34648();
              v1166 = sub_22BD62FB4();
              v1167(v1166);
              v1084 = sub_22BD63194();
            }

            v1085(v1084);
            goto LABEL_96;
          }

          v912 = sub_22BD60BB8();
          v913(v912);
          v914 = sub_22BD60BA4();
          v915(v914);
          v916 = sub_22BDB5C54();
          sub_22BBC0358(v916);
          if (v6439)
          {

            sub_22BB8AEEC();
            sub_22BD654E8();
            sub_22BBE6DE0(qword_27D8E27F8, &unk_22BDBCE20);
            sub_22BD64D2C();
            v1178 = swift_dynamicCast();
            if (v1178)
            {
              sub_22BD654D0(v1178);
              sub_22BB322B0();
              v1179 = swift_allocObject();
              sub_22BD6002C(v1179);
              v18 = sub_22BDB77C4();
              v14 = sub_22BDBB114();
              sub_22BD616A8();
              v12 = swift_allocObject();
              sub_22BB97ED4(v12);
              sub_22BD616A8();
              v30 = swift_allocObject();
              sub_22BB6FB2C(v30);
              sub_22BB322B0();
              v1180 = swift_allocObject();
              sub_22BB97500(v1180);
              sub_22BB322B0();
              v15 = swift_allocObject();
              sub_22BD6076C(v15);
              v1181 = sub_22BB6F8FC();
              v1182 = sub_22BBC2570(v1181, xmmword_22BDC2F20);
              v1182[2].n128_u64[0] = v1183;
              v1182[2].n128_u64[1] = v12;
              v1182[3].n128_u64[0] = sub_22BB89C08;
              v1182[3].n128_u64[1] = v30;
              v1182[4].n128_u64[0] = sub_22BB89C7C;
              v1182[4].n128_u64[1] = v15;

              if (sub_22BB72E44())
              {
                sub_22BB67968(12);
                v1184 = sub_22BB38198();
                sub_22BB89B00(v1184);
                sub_22BB6BD50(v1180);
                *(v17 + 1200) = v12;
                v1185 = sub_22BD5FC64();
                sub_22BB67984(v1185, v1186, v1187, v1188);

                sub_22BD5F824();
                *(v17 + 1200) = v30;
                v1189 = sub_22BD5FC64();
                sub_22BB67984(v1189, v1190, v1191, v1192);

                sub_22BD5F80C();
                *(v17 + 1200) = v15;
                v1193 = sub_22BD5FC64();
                sub_22BB67984(v1193, v1194, v1195, v1196);
                sub_22BB96A7C();

                sub_22BB337EC(&dword_22BB2C000, v18, v14, "[SessionCoordinator %{public}s] | Injected events violate security policy.");
                sub_22BB30DDC();
                sub_22BB679C0();
              }

              sub_22BD624B8();

              v1297 = sub_22BB70554();
              v1298(v1297);
              sub_22BD62C34();
              sub_22BB3A738();
              sub_22BD60E9C();
              sub_22BB38BC4();
              sub_22BD62F94(v1299);
              sub_22BD60B7C();
              v6421 = v1300;
              v6425 = v1301;
              sub_22BB38E74();
              sub_22BB70778(v1302);
              MEMORY[0x23189FC10]();
              v1303 = sub_22BB6A0A0();
              v1304(v1303);
              sub_22BD60C68();
              sub_22BDB5D34();
              v1305 = sub_22BB70294();
              v1306(v1305);
              sub_22BBBFFBC();
              sub_22BDB5E14();
              sub_22BBE6DE0(&qword_27D8E6470, &qword_22BDCE320);
              sub_22BD617A4();
              sub_22BDBAF34();
              v1307 = sub_22BD60E8C();
              v1308(v1307);
              v1309 = sub_22BB97FE0();
              v1310(v1309);
              v1311 = sub_22BD60C18();
              v1312(v1311);
              v1101 = *(v17 + 2304);
              goto LABEL_177;
            }

            sub_22BD654B8();
            sub_22BDB63E4();
            sub_22BB322B0();
            v12 = swift_allocObject();
            sub_22BB3CF50(v12);
            sub_22BB366B8();
            v1197 = swift_allocObject();
            sub_22BD62774(v1197);
            sub_22BD640C0();
            v1198 = v6439;
            v6439 = sub_22BDB77C4();
            LODWORD(v6429) = sub_22BDBB114();
            sub_22BD616A8();
            v16 = swift_allocObject();
            sub_22BB97ED4(v16);
            sub_22BD616A8();
            v1199 = swift_allocObject();
            sub_22BD61698(v1199);
            sub_22BB322B0();
            swift_allocObject();
            sub_22BB3E0C4();
            *(v1200 + 16) = v1201;
            *(v1200 + 24) = v12;
            sub_22BB322B0();
            v945 = swift_allocObject();
            sub_22BB3DEE8(v945);
            sub_22BD616A8();
            v1202 = swift_allocObject();
            sub_22BD61B1C(v1202);
            sub_22BD616A8();
            v1203 = swift_allocObject();
            sub_22BD63400(v1203);
            sub_22BB322B0();
            swift_allocObject();
            sub_22BBBEBAC();
            *(v1204 + 16) = v1205;
            *(v1204 + 24) = v30;
            sub_22BB322B0();
            v1206 = swift_allocObject();
            sub_22BB3FE28(v1206);
            sub_22BB322B0();
            v1207 = swift_allocObject();
            sub_22BB8E554(v1207);
            v1208 = sub_22BBCCA6C();
            sub_22BB31444(v1208);
            v1209[4] = v1210;
            v1209[5] = v16;
            v1209[6] = sub_22BB89C08;
            v1209[7] = v45;
            v1209[8] = sub_22BB89C7C;
            v1209[9] = v945;
            v1209[10] = sub_22BB89C08;
            v1209[11] = v14;
            v1209[12] = sub_22BB89C08;
            v1209[13] = v15;
            v1209[14] = sub_22BD5EBD8;
            v1209[15] = v1207;
            sub_22BD65470();

            if (sub_22BD62224())
            {
              sub_22BB67968(22);
              sub_22BD63820();
              v1211 = sub_22BD62730();
              sub_22BD64CE4(v1211);
              sub_22BD60DCC();
              *(v17 + 2272) = v1212;
              *(v17 + 1240) = sub_22BB89C08;
              *(v17 + 1248) = v30;
              v1213 = sub_22BB72E30();
              sub_22BB67984(v1213, v1214, v1215, v1216);

              sub_22BD6070C();
              *(v17 + 1248) = v45;
              v1217 = sub_22BB72E30();
              sub_22BB67984(v1217, v1218, v1219, v1220);

              sub_22BB73B04();
              *(v17 + 1248) = v945;
              v1221 = sub_22BB72E30();
              sub_22BB67984(v1221, v1222, v1223, v1224);

              sub_22BD6070C();
              *(v17 + 1248) = v14;
              v1225 = sub_22BB72E30();
              sub_22BB67984(v1225, v1226, v1227, v1228);

              sub_22BD6070C();
              *(v17 + 1248) = v15;
              v1229 = sub_22BB72E30();
              sub_22BB67984(v1229, v1230, v1231, v1232);

              sub_22BD606F4();
              *(v17 + 1248) = v1207;
              v1233 = sub_22BB72E30();
              sub_22BB67984(v1233, v1234, v1235, v1236);
              sub_22BD61A18();

              sub_22BBD1A34();
              sub_22BB6F9C8();
              sub_22BD63EE0(v1237, v1238, v1239, "[SessionCoordinator %{public}s] | Failed to decode proto data from debugger: %{public}@");
              sub_22BB325EC(v12, &unk_27D8E6A70, &unk_22BDBCDB0);
              sub_22BB89BBC();
              sub_22BB35808();
              sub_22BB679C0();
            }

            sub_22BB89F08(*(v17 + 3848));
            sub_22BD651A0();

            v1313 = sub_22BD6268C();
            v1314(v1313, v16);
            sub_22BD62C34();
            LODWORD(v6367) = *(v17 + 4848);
            sub_22BB34150();
            sub_22BD60954(v1315);
            v1316 = *(v17 + 2648);
            sub_22BD64C58();
            v6405 = v1316;
            v6413 = v1317;
            sub_22BD60AC0();
            sub_22BD647D4(v1318);
            MEMORY[0x23189FC10]();
LABEL_179:
            v1108 = sub_22BD64258();
            v1109(v1108, v6367, v945);
            sub_22BD61F0C();
            sub_22BDB5D34();
            v1110 = sub_22BD62C28();
            v1111(v1110, v6392, v6374);
            sub_22BB6FCB8();
            sub_22BDB5E14();
            sub_22BBE6DE0(&qword_27D8E6470, &qword_22BDCE320);
            sub_22BD60A2C();
            v18 = v6387;
            sub_22BDBAF34();

            v1112 = sub_22BD61FA8();
            v1113(v1112, v6421);
            v1114 = *(v15 + 8);
            v15 += 8;
            v1114(v6405, v6413);
LABEL_180:
            v1115 = sub_22BD61EBC();
            v1116(v1115, v6429);
LABEL_181:
            v34 = 0;
            goto LABEL_97;
          }

          sub_22BB701E8();
          sub_22BD5A87C(v12);
          v6379 = 0;
          sub_22BD63DA0();
          sub_22BDB96D4();
          sub_22BB3329C();
          if (!v149)
          {
            v14 = *(v17 + 4448);
            v16 = *(v17 + 3544);
            sub_22BB36E60();
            sub_22BD630B0();
            sub_22BD63F70();
            v17 = v6438[398].isa;
            v1348 = v6438[397].isa;
            sub_22BD60B68();
            v6367 = *(v1349 + 2648);
            sub_22BD605D4();
            v6389 = v1350;

            v1351 = sub_22BD61510();
            v1352(v1351);
            sub_22BD62110();
            v1353 = sub_22BD614F8();
            v1354(v1353);
            v1355 = sub_22BD65260();
            v15 = v6367;
            MEMORY[0x23189FC10](v1355);
            sub_22BD653F8();
            v30 = (v1348 + 104);
            v1356 = sub_22BD636A4();
            v1357(v1356);
            sub_22BB97B18();
            sub_22BDB5E14();
            sub_22BBE6DE0(&qword_27D8E6470, &qword_22BDCE320);
            sub_22BD60A2C();
            v18 = v6389;
            sub_22BDBAF34();
            v1358 = sub_22BB9607C();
            v1359(v1358);
            v1360 = sub_22BD632C4();
            v1361(v1360);
            v1362 = sub_22BD63394();
            v1363(v1362);
            goto LABEL_180;
          }

          v1319 = sub_22BD633E4();
          sub_22BB325EC(v1319, &qword_27D8E64D0, &qword_22BDCE3D8);
          sub_22BDB63E4();
          sub_22BB322B0();
          v1320 = swift_allocObject();
          sub_22BD60000(v1320);
          v18 = sub_22BDB77C4();
          v14 = sub_22BDBB114();
          sub_22BD616A8();
          v1321 = swift_allocObject();
          sub_22BB96D7C(v1321);
          sub_22BD616A8();
          v30 = swift_allocObject();
          sub_22BB6FB2C(v30);
          sub_22BB322B0();
          v1322 = swift_allocObject();
          sub_22BB97500(v1322);
          sub_22BB322B0();
          v15 = swift_allocObject();
          sub_22BBC0888(v15);
          v1323 = sub_22BB6F8FC();
          v1324 = sub_22BBC2570(v1323, xmmword_22BDC2F20);
          v1324[2].n128_u64[0] = v1325;
          v1324[2].n128_u64[1] = v45;
          v1324[3].n128_u64[0] = sub_22BB89C08;
          v1324[3].n128_u64[1] = v30;
          v1324[4].n128_u64[0] = sub_22BB89C7C;
          v1324[4].n128_u64[1] = v15;

          if (!sub_22BB72E44())
          {
            sub_22BD62CAC();

            v1380 = sub_22BB2F0E0();
            v1381(v1380);
            sub_22BD62C34();
            sub_22BB3A738();
            sub_22BD60E9C();
            sub_22BB38BC4();
            sub_22BD62F94(v1382);
            sub_22BD60B7C();
            v6421 = v1383;
            v6425 = v1384;
            sub_22BB38E74();
            sub_22BB70778(v1385);
            MEMORY[0x23189FC10]();
            v1386 = sub_22BB6A0A0();
            v1387(v1386);
            sub_22BD60C68();
            sub_22BDB5D34();
            v1388 = sub_22BB70294();
            v1389(v1388);
            sub_22BBBFFBC();
            sub_22BDB5E14();
            sub_22BBE6DE0(&qword_27D8E6470, &qword_22BDCE320);
            sub_22BD617A4();
            sub_22BDBAF34();
            v1390 = sub_22BD60E8C();
            v1391(v1390);
            v1392 = sub_22BB97FE0();
            v1393(v1392);
            goto LABEL_180;
          }

          sub_22BB67968(12);
          v1326 = sub_22BB6B650();
          sub_22BD5FB4C(v1326);
          if (!v1323)
          {

            sub_22BD61074();
            *(v17 + 1152) = v30;
            v1327 = sub_22BB938D8();
            sub_22BB67984(v1327, v1328, v1329, v1330);

            sub_22BD6105C();
            *(v17 + 1152) = v15;
            v1331 = sub_22BB938D8();
            sub_22BB67984(v1331, v1332, v1333, v1334);
            sub_22BD64324();

            sub_22BD63B54(&dword_22BB2C000, v18, v14, "[SessionCoordinator %{public}s] | Provided transcript had no events. Rejecting it.");
            sub_22BB35808();
            sub_22BB679C0();
          }

LABEL_332:

          goto LABEL_408;
        }

        sub_22BD614A0();
        v107();
LABEL_16:
        v108 = sub_22BB3A9D4();
LABEL_31:
        sub_22BB74044(v108, v109, v18);

        sub_22BB35CBC();
        sub_22BB34648();
        v34 = v6439;
        continue;
      case 6u:
        v6437 = v85;
        sub_22BD63920();
        _s23IntelligenceFlowRuntime0aB6DaemonV6logger2os6LoggerVvgZ_0();
        sub_22BB322B0();
        v2191 = swift_allocObject();
        sub_22BD60000(v2191);
        v2192 = sub_22BDB77C4();
        sub_22BDBB134();
        sub_22BD616A8();
        v2193 = swift_allocObject();
        sub_22BB97ED4(v2193);
        sub_22BD616A8();
        v2194 = swift_allocObject();
        sub_22BB6FB2C(v2194);
        sub_22BB322B0();
        v2195 = swift_allocObject();
        sub_22BB97500(v2195);
        sub_22BB322B0();
        v2196 = swift_allocObject();
        sub_22BBC0888(v2196);
        v2197 = sub_22BB6F8FC();
        v2198 = sub_22BBC2570(v2197, xmmword_22BDC2F20);
        v2198[2].n128_u64[0] = v2199;
        v2198[2].n128_u64[1] = v2193;
        v2198[3].n128_u64[0] = sub_22BB89C08;
        v2198[3].n128_u64[1] = v2194;
        v2198[4].n128_u64[0] = sub_22BB89C7C;
        v2198[4].n128_u64[1] = v2196;

        if (sub_22BC54EF8())
        {
          sub_22BB67968(12);
          v2200 = sub_22BB6B650();
          sub_22BB3E0DC(v2200);
          sub_22BBC78A8(v2201);
          v6447 = v2202;
          v6448 = v2193;
          v2203 = sub_22BB58B08();
          sub_22BB67984(v2203, v2204, v2205, v2206);
          if (!v2197)
          {

            v3272 = sub_22BB542B0();
            sub_22BB67984(v3272, v3273, v3274, v3275);

            v6447 = sub_22BB89C7C;
            v6448 = v2196;
            v3276 = sub_22BB542B0();
            sub_22BB67984(v3276, v3277, v3278, v3279);
            sub_22BD62094();

            sub_22BB6FAD4(&dword_22BB2C000, v3280, v3281, "[SessionCoordinator %{public}s] Processed SIGTERM. Exiting.");
            sub_22BB35808();
            sub_22BB679C0();
          }

          goto LABEL_361;
        }

        v2207 = *(v17 + 4080);
        sub_22BD62094();

        (*(v14 + 8))(v2207, v2197);
        sub_22BB704B0();
        sub_22BBBE8EC();
        v2208 = *(v17 + 4352);
        v2209 = *(v17 + 4344);
        sub_22BBD2294();
        v4981 = v2211;
        v5132 = v2210;
        v5283 = v2193[534];
        v5434 = v2193[533];
        v5585 = v2193[532];
        v5736 = v2193[531];
        v5887 = v2193[530];
        v6038 = v2193[527];
        v6188 = v2193[526];
        v6189 = v2193[525];
        v6190 = v2193[524];
        v6191 = v2193[523];
        v6192 = v2193[522];
        v6193 = v2193[521];
        v6194 = v2193[518];
        v6195 = v2193[517];
        v6196 = v2193[516];
        v6197 = v2193[512];
        v6198 = v2193[511];
        v6199 = v2193[510];
        v6200 = v2193[509];
        v6201 = v2193[508];
        v6202 = v2193[507];
        v6203 = v2193[506];
        v6204 = v2193[505];
        v6205 = v2193[504];
        v6206 = v2193[503];
        v6207 = v2193[502];
        v6208 = v2193[501];
        v6209 = v2193[500];
        v6210 = v2193[499];
        v6211 = v2193[498];
        v6212 = v2193[497];
        v6213 = v2193[496];
        v6214 = v2193[495];
        v6215 = v2193[494];
        v6216 = v2193[493];
        v6217 = v2193[492];
        v6218 = v2193[491];
        v6219 = v2193[490];
        v6220 = v2193[489];
        v6221 = v2193[488];
        v6222 = v2193[487];
        v6223 = v2193[486];
        v6224 = v2193[485];
        v6225 = v2193[484];
        v6226 = v2193[483];
        v6227 = v2193[482];
        v6228 = v2193[481];
        v6229 = v2193[478];
        v6230 = v2193[477];
        v6231 = v2193[476];
        v6232 = v2193[475];
        v6233 = v2193[474];
        v6234 = v2193[473];
        v6235 = v2193[472];
        v6236 = v2193[471];
        v6237 = v2193[470];
        v6238 = v2193[469];
        v6239 = v2193[468];
        v6240 = v2193[467];
        v6241 = v2193[464];
        v6242 = v2193[461];
        v6243 = v2193[460];
        v6244 = v2193[459];
        v6245 = v2193[458];
        v6246 = v2193[457];
        v6247 = v2193[456];
        v6248 = v2193[455];
        v6249 = v2193[454];
        v6250 = v2193[453];
        v6251 = v2193[452];
        v6252 = v2193[448];
        v6253 = v2193[447];
        v6254 = v2193[446];
        v6255 = v2193[445];
        v6256 = v2193[444];
        v6258 = v2193[443];
        v6260 = v2193[440];
        v6261 = v2193[439];
        v6262 = v2193[438];
        v6263 = v2193[435];
        v6265 = v2193[434];
        v6267 = v2193[432];
        v6269 = v2193[431];
        v6271 = v2193[427];
        v6272 = v2193[426];
        v6273 = v2193[425];
        v6275 = v2193[424];
        v6277 = v2193[420];
        v6279 = v2193[419];
        v6281 = v2193[417];
        v6284 = v2193[416];
        v6287 = v2193[413];
        v6290 = v2193[412];
        v6294 = v2193[411];
        v6296 = v2193[410];
        v6298 = v2193[409];
        v6299 = v2193[408];
        v6300 = v2193[407];
        v6302 = v2193[406];
        v6304 = v2193[402];
        v6307 = v2193[399];
        v6308 = v2193[398];
        v6309 = v2193[395];
        v6310 = v2193[394];
        v6311 = v2193[391];
        v6312 = v2193[390];
        v6315 = v2193[387];
        v6317 = v2193[384];
        v6319 = v2193[383];
        v6323 = v2193[382];
        v6328 = v2193[379];
        v6330 = v2193[378];
        v6332 = v2193[377];
        v6334 = v2193[373];
        v6335 = v2193[372];
        v6337 = v2193[369];
        v6342 = v2193[368];
        v6343 = v2193[365];
        v6345 = v2193[364];
        v6352 = v2193[363];
        oslogd = v2193[360];
        v6364 = v2193[358];
        namea = v2193[357];
        v6373 = v2193[356];
        v6378 = v2193[353];
        v6381 = v2193[352];
        v6386 = v2193[351];
        sub_22BB898F4();
        sub_22BB35CBC();
        sub_22BB34648();

        v2212 = sub_22BD632B8();
        v2213(v2212, v2194);
        v2196, v2214, v2215, v2216, v2217, v2218, v2219, v2220, v3630, v3780, v3930, v4080, v4230, v4380, v4530, v4680, v4830, v4981, v5132, v5283, v5434, v5585, v5736, v5887, v6038;
        v14 + 8, v2221, v2222, v2223, v2224, v2225, v2226, v2227, v3631, v3781, v3931, v4081, v4231, v4381, v4531, v4681, v4831, v4982, v5133, v5284, v5435, v5586, v5737, v5888, v6039;
        v2208, v2228, v2229, v2230, v2231, v2232, v2233, v2234, v3632, v3782, v3932, v4082, v4232, v4382, v4532, v4682, v4832, v4983, v5134, v5285, v5436, v5587, v5738, v5889, v6040;
        v2209, v2235, v2236, v2237, v2238, v2239, v2240, v2241, v3633, v3783, v3933, v4083, v4233, v4383, v4533, v4683, v4833, v4984, v5135, v5286, v5437, v5588, v5739, v5890, v6041;
        v2207, v2242, v2243, v2244, v2245, v2246, v2247, v2248, v3634, v3784, v3934, v4084, v4234, v4384, v4534, v4684, v4834, v4985, v5136, v5287, v5438, v5589, v5740, v5891, v6042;
        v2192, v2249, v2250, v2251, v2252, v2253, v2254, v2255, v3635, v3785, v3935, v4085, v4235, v4385, v4535, v4685, v4835, v4986, v5137, v5288, v5439, v5590, v5741, v5892, v6043;
        v17, v2256, v2257, v2258, v2259, v2260, v2261, v2262, v3636, v3786, v3936, v4086, v4236, v4386, v4536, v4686, v4836, v4987, v5138, v5289, v5440, v5591, v5742, v5893, v6044;
        v4988, v2263, v2264, v2265, v2266, v2267, v2268, v2269, v3637, v3787, v3937, v4087, v4237, v4387, v4537, v4687, v4837, v4988, v5139, v5290, v5441, v5592, v5743, v5894, v6045;
        v5140, v2270, v2271, v2272, v2273, v2274, v2275, v2276, v3638, v3788, v3938, v4088, v4238, v4388, v4538, v4688, v4838, v4989, v5140, v5291, v5442, v5593, v5744, v5895, v6046;
        v5292, v2277, v2278, v2279, v2280, v2281, v2282, v2283, v3639, v3789, v3939, v4089, v4239, v4389, v4539, v4689, v4839, v4990, v5141, v5292, v5443, v5594, v5745, v5896, v6047;
        v5444, v2284, v2285, v2286, v2287, v2288, v2289, v2290, v3640, v3790, v3940, v4090, v4240, v4390, v4540, v4690, v4840, v4991, v5142, v5293, v5444, v5595, v5746, v5897, v6048;
        v5596, v2291, v2292, v2293, v2294, v2295, v2296, v2297, v3641, v3791, v3941, v4091, v4241, v4391, v4541, v4691, v4841, v4992, v5143, v5294, v5445, v5596, v5747, v5898, v6049;
        v5748, v2298, v2299, v2300, v2301, v2302, v2303, v2304, v3642, v3792, v3942, v4092, v4242, v4392, v4542, v4692, v4842, v4993, v5144, v5295, v5446, v5597, v5748, v5899, v6050;
        v5900, v2305, v2306, v2307, v2308, v2309, v2310, v2311, v3643, v3793, v3943, v4093, v4243, v4393, v4543, v4693, v4843, v4994, v5145, v5296, v5447, v5598, v5749, v5900, v6051;
        v6052, v2312, v2313, v2314, v2315, v2316, v2317, v2318, v3644, v3794, v3944, v4094, v4244, v4394, v4544, v4694, v4844, v4995, v5146, v5297, v5448, v5599, v5750, v5901, v6052;
        v6188, v2319, v2320, v2321, v2322, v2323, v2324, v2325, v3645, v3795, v3945, v4095, v4245, v4395, v4545, v4695, v4845, v4996, v5147, v5298, v5449, v5600, v5751, v5902, v6053;
        v6189, v2326, v2327, v2328, v2329, v2330, v2331, v2332, v3646, v3796, v3946, v4096, v4246, v4396, v4546, v4696, v4846, v4997, v5148, v5299, v5450, v5601, v5752, v5903, v6054;
        v6190, v2333, v2334, v2335, v2336, v2337, v2338, v2339, v3647, v3797, v3947, v4097, v4247, v4397, v4547, v4697, v4847, v4998, v5149, v5300, v5451, v5602, v5753, v5904, v6055;
        v6191, v2340, v2341, v2342, v2343, v2344, v2345, v2346, v3648, v3798, v3948, v4098, v4248, v4398, v4548, v4698, v4848, v4999, v5150, v5301, v5452, v5603, v5754, v5905, v6056;
        v6192, v2347, v2348, v2349, v2350, v2351, v2352, v2353, v3649, v3799, v3949, v4099, v4249, v4399, v4549, v4699, v4849, v5000, v5151, v5302, v5453, v5604, v5755, v5906, v6057;
        v6193, v2354, v2355, v2356, v2357, v2358, v2359, v2360, v3650, v3800, v3950, v4100, v4250, v4400, v4550, v4700, v4850, v5001, v5152, v5303, v5454, v5605, v5756, v5907, v6058;
        v6194, v2361, v2362, v2363, v2364, v2365, v2366, v2367, v3651, v3801, v3951, v4101, v4251, v4401, v4551, v4701, v4851, v5002, v5153, v5304, v5455, v5606, v5757, v5908, v6059;
        v6195, v2368, v2369, v2370, v2371, v2372, v2373, v2374, v3652, v3802, v3952, v4102, v4252, v4402, v4552, v4702, v4852, v5003, v5154, v5305, v5456, v5607, v5758, v5909, v6060;
        v6196, v2375, v2376, v2377, v2378, v2379, v2380, v2381, v3653, v3803, v3953, v4103, v4253, v4403, v4553, v4703, v4853, v5004, v5155, v5306, v5457, v5608, v5759, v5910, v6061;
        v6197, v2382, v2383, v2384, v2385, v2386, v2387, v2388, v3654, v3804, v3954, v4104, v4254, v4404, v4554, v4704, v4854, v5005, v5156, v5307, v5458, v5609, v5760, v5911, v6062;
        v6198, v2389, v2390, v2391, v2392, v2393, v2394, v2395, v3655, v3805, v3955, v4105, v4255, v4405, v4555, v4705, v4855, v5006, v5157, v5308, v5459, v5610, v5761, v5912, v6063;
        v6199, v2396, v2397, v2398, v2399, v2400, v2401, v2402, v3656, v3806, v3956, v4106, v4256, v4406, v4556, v4706, v4856, v5007, v5158, v5309, v5460, v5611, v5762, v5913, v6064;
        v6200, v2403, v2404, v2405, v2406, v2407, v2408, v2409, v3657, v3807, v3957, v4107, v4257, v4407, v4557, v4707, v4857, v5008, v5159, v5310, v5461, v5612, v5763, v5914, v6065;
        v6201, v2410, v2411, v2412, v2413, v2414, v2415, v2416, v3658, v3808, v3958, v4108, v4258, v4408, v4558, v4708, v4858, v5009, v5160, v5311, v5462, v5613, v5764, v5915, v6066;
        v6202, v2417, v2418, v2419, v2420, v2421, v2422, v2423, v3659, v3809, v3959, v4109, v4259, v4409, v4559, v4709, v4859, v5010, v5161, v5312, v5463, v5614, v5765, v5916, v6067;
        v6203, v2424, v2425, v2426, v2427, v2428, v2429, v2430, v3660, v3810, v3960, v4110, v4260, v4410, v4560, v4710, v4860, v5011, v5162, v5313, v5464, v5615, v5766, v5917, v6068;
        v6204, v2431, v2432, v2433, v2434, v2435, v2436, v2437, v3661, v3811, v3961, v4111, v4261, v4411, v4561, v4711, v4861, v5012, v5163, v5314, v5465, v5616, v5767, v5918, v6069;
        v6205, v2438, v2439, v2440, v2441, v2442, v2443, v2444, v3662, v3812, v3962, v4112, v4262, v4412, v4562, v4712, v4862, v5013, v5164, v5315, v5466, v5617, v5768, v5919, v6070;
        v6206, v2445, v2446, v2447, v2448, v2449, v2450, v2451, v3663, v3813, v3963, v4113, v4263, v4413, v4563, v4713, v4863, v5014, v5165, v5316, v5467, v5618, v5769, v5920, v6071;
        v6207, v2452, v2453, v2454, v2455, v2456, v2457, v2458, v3664, v3814, v3964, v4114, v4264, v4414, v4564, v4714, v4864, v5015, v5166, v5317, v5468, v5619, v5770, v5921, v6072;
        v6208, v2459, v2460, v2461, v2462, v2463, v2464, v2465, v3665, v3815, v3965, v4115, v4265, v4415, v4565, v4715, v4865, v5016, v5167, v5318, v5469, v5620, v5771, v5922, v6073;
        v6209, v2466, v2467, v2468, v2469, v2470, v2471, v2472, v3666, v3816, v3966, v4116, v4266, v4416, v4566, v4716, v4866, v5017, v5168, v5319, v5470, v5621, v5772, v5923, v6074;
        v6210, v2473, v2474, v2475, v2476, v2477, v2478, v2479, v3667, v3817, v3967, v4117, v4267, v4417, v4567, v4717, v4867, v5018, v5169, v5320, v5471, v5622, v5773, v5924, v6075;
        v6211, v2480, v2481, v2482, v2483, v2484, v2485, v2486, v3668, v3818, v3968, v4118, v4268, v4418, v4568, v4718, v4868, v5019, v5170, v5321, v5472, v5623, v5774, v5925, v6076;
        v6212, v2487, v2488, v2489, v2490, v2491, v2492, v2493, v3669, v3819, v3969, v4119, v4269, v4419, v4569, v4719, v4869, v5020, v5171, v5322, v5473, v5624, v5775, v5926, v6077;
        v6213, v2494, v2495, v2496, v2497, v2498, v2499, v2500, v3670, v3820, v3970, v4120, v4270, v4420, v4570, v4720, v4870, v5021, v5172, v5323, v5474, v5625, v5776, v5927, v6078;
        v6214, v2501, v2502, v2503, v2504, v2505, v2506, v2507, v3671, v3821, v3971, v4121, v4271, v4421, v4571, v4721, v4871, v5022, v5173, v5324, v5475, v5626, v5777, v5928, v6079;
        v6215, v2508, v2509, v2510, v2511, v2512, v2513, v2514, v3672, v3822, v3972, v4122, v4272, v4422, v4572, v4722, v4872, v5023, v5174, v5325, v5476, v5627, v5778, v5929, v6080;
        v6216, v2515, v2516, v2517, v2518, v2519, v2520, v2521, v3673, v3823, v3973, v4123, v4273, v4423, v4573, v4723, v4873, v5024, v5175, v5326, v5477, v5628, v5779, v5930, v6081;
        v6217, v2522, v2523, v2524, v2525, v2526, v2527, v2528, v3674, v3824, v3974, v4124, v4274, v4424, v4574, v4724, v4874, v5025, v5176, v5327, v5478, v5629, v5780, v5931, v6082;
        v6218, v2529, v2530, v2531, v2532, v2533, v2534, v2535, v3675, v3825, v3975, v4125, v4275, v4425, v4575, v4725, v4875, v5026, v5177, v5328, v5479, v5630, v5781, v5932, v6083;
        v6219, v2536, v2537, v2538, v2539, v2540, v2541, v2542, v3676, v3826, v3976, v4126, v4276, v4426, v4576, v4726, v4876, v5027, v5178, v5329, v5480, v5631, v5782, v5933, v6084;
        v6220, v2543, v2544, v2545, v2546, v2547, v2548, v2549, v3677, v3827, v3977, v4127, v4277, v4427, v4577, v4727, v4877, v5028, v5179, v5330, v5481, v5632, v5783, v5934, v6085;
        v6221, v2550, v2551, v2552, v2553, v2554, v2555, v2556, v3678, v3828, v3978, v4128, v4278, v4428, v4578, v4728, v4878, v5029, v5180, v5331, v5482, v5633, v5784, v5935, v6086;
        v6222, v2557, v2558, v2559, v2560, v2561, v2562, v2563, v3679, v3829, v3979, v4129, v4279, v4429, v4579, v4729, v4879, v5030, v5181, v5332, v5483, v5634, v5785, v5936, v6087;
        v6223, v2564, v2565, v2566, v2567, v2568, v2569, v2570, v3680, v3830, v3980, v4130, v4280, v4430, v4580, v4730, v4880, v5031, v5182, v5333, v5484, v5635, v5786, v5937, v6088;
        v6224, v2571, v2572, v2573, v2574, v2575, v2576, v2577, v3681, v3831, v3981, v4131, v4281, v4431, v4581, v4731, v4881, v5032, v5183, v5334, v5485, v5636, v5787, v5938, v6089;
        v6225, v2578, v2579, v2580, v2581, v2582, v2583, v2584, v3682, v3832, v3982, v4132, v4282, v4432, v4582, v4732, v4882, v5033, v5184, v5335, v5486, v5637, v5788, v5939, v6090;
        v6226, v2585, v2586, v2587, v2588, v2589, v2590, v2591, v3683, v3833, v3983, v4133, v4283, v4433, v4583, v4733, v4883, v5034, v5185, v5336, v5487, v5638, v5789, v5940, v6091;
        v6227, v2592, v2593, v2594, v2595, v2596, v2597, v2598, v3684, v3834, v3984, v4134, v4284, v4434, v4584, v4734, v4884, v5035, v5186, v5337, v5488, v5639, v5790, v5941, v6092;
        v6228, v2599, v2600, v2601, v2602, v2603, v2604, v2605, v3685, v3835, v3985, v4135, v4285, v4435, v4585, v4735, v4885, v5036, v5187, v5338, v5489, v5640, v5791, v5942, v6093;
        v6229, v2606, v2607, v2608, v2609, v2610, v2611, v2612, v3686, v3836, v3986, v4136, v4286, v4436, v4586, v4736, v4886, v5037, v5188, v5339, v5490, v5641, v5792, v5943, v6094;
        v6230, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v3687, v3837, v3987, v4137, v4287, v4437, v4587, v4737, v4887, v5038, v5189, v5340, v5491, v5642, v5793, v5944, v6095;
        v6231, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v3688, v3838, v3988, v4138, v4288, v4438, v4588, v4738, v4888, v5039, v5190, v5341, v5492, v5643, v5794, v5945, v6096;
        v6232, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v3689, v3839, v3989, v4139, v4289, v4439, v4589, v4739, v4889, v5040, v5191, v5342, v5493, v5644, v5795, v5946, v6097;
        v6233, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v3690, v3840, v3990, v4140, v4290, v4440, v4590, v4740, v4890, v5041, v5192, v5343, v5494, v5645, v5796, v5947, v6098;
        v6234, v2641, v2642, v2643, v2644, v2645, v2646, v2647, v3691, v3841, v3991, v4141, v4291, v4441, v4591, v4741, v4891, v5042, v5193, v5344, v5495, v5646, v5797, v5948, v6099;
        v6235, v2648, v2649, v2650, v2651, v2652, v2653, v2654, v3692, v3842, v3992, v4142, v4292, v4442, v4592, v4742, v4892, v5043, v5194, v5345, v5496, v5647, v5798, v5949, v6100;
        v6236, v2655, v2656, v2657, v2658, v2659, v2660, v2661, v3693, v3843, v3993, v4143, v4293, v4443, v4593, v4743, v4893, v5044, v5195, v5346, v5497, v5648, v5799, v5950, v6101;
        v6237, v2662, v2663, v2664, v2665, v2666, v2667, v2668, v3694, v3844, v3994, v4144, v4294, v4444, v4594, v4744, v4894, v5045, v5196, v5347, v5498, v5649, v5800, v5951, v6102;
        v6238, v2669, v2670, v2671, v2672, v2673, v2674, v2675, v3695, v3845, v3995, v4145, v4295, v4445, v4595, v4745, v4895, v5046, v5197, v5348, v5499, v5650, v5801, v5952, v6103;
        v6239, v2676, v2677, v2678, v2679, v2680, v2681, v2682, v3696, v3846, v3996, v4146, v4296, v4446, v4596, v4746, v4896, v5047, v5198, v5349, v5500, v5651, v5802, v5953, v6104;
        v6240, v2683, v2684, v2685, v2686, v2687, v2688, v2689, v3697, v3847, v3997, v4147, v4297, v4447, v4597, v4747, v4897, v5048, v5199, v5350, v5501, v5652, v5803, v5954, v6105;
        v6241, v2690, v2691, v2692, v2693, v2694, v2695, v2696, v3698, v3848, v3998, v4148, v4298, v4448, v4598, v4748, v4898, v5049, v5200, v5351, v5502, v5653, v5804, v5955, v6106;
        v6242, v2697, v2698, v2699, v2700, v2701, v2702, v2703, v3699, v3849, v3999, v4149, v4299, v4449, v4599, v4749, v4899, v5050, v5201, v5352, v5503, v5654, v5805, v5956, v6107;
        v6243, v2704, v2705, v2706, v2707, v2708, v2709, v2710, v3700, v3850, v4000, v4150, v4300, v4450, v4600, v4750, v4900, v5051, v5202, v5353, v5504, v5655, v5806, v5957, v6108;
        v6244, v2711, v2712, v2713, v2714, v2715, v2716, v2717, v3701, v3851, v4001, v4151, v4301, v4451, v4601, v4751, v4901, v5052, v5203, v5354, v5505, v5656, v5807, v5958, v6109;
        v6245, v2718, v2719, v2720, v2721, v2722, v2723, v2724, v3702, v3852, v4002, v4152, v4302, v4452, v4602, v4752, v4902, v5053, v5204, v5355, v5506, v5657, v5808, v5959, v6110;
        v6246, v2725, v2726, v2727, v2728, v2729, v2730, v2731, v3703, v3853, v4003, v4153, v4303, v4453, v4603, v4753, v4903, v5054, v5205, v5356, v5507, v5658, v5809, v5960, v6111;
        v6247, v2732, v2733, v2734, v2735, v2736, v2737, v2738, v3704, v3854, v4004, v4154, v4304, v4454, v4604, v4754, v4904, v5055, v5206, v5357, v5508, v5659, v5810, v5961, v6112;
        v6248, v2739, v2740, v2741, v2742, v2743, v2744, v2745, v3705, v3855, v4005, v4155, v4305, v4455, v4605, v4755, v4905, v5056, v5207, v5358, v5509, v5660, v5811, v5962, v6113;
        v6249, v2746, v2747, v2748, v2749, v2750, v2751, v2752, v3706, v3856, v4006, v4156, v4306, v4456, v4606, v4756, v4906, v5057, v5208, v5359, v5510, v5661, v5812, v5963, v6114;
        v6250, v2753, v2754, v2755, v2756, v2757, v2758, v2759, v3707, v3857, v4007, v4157, v4307, v4457, v4607, v4757, v4907, v5058, v5209, v5360, v5511, v5662, v5813, v5964, v6115;
        v6251, v2760, v2761, v2762, v2763, v2764, v2765, v2766, v3708, v3858, v4008, v4158, v4308, v4458, v4608, v4758, v4908, v5059, v5210, v5361, v5512, v5663, v5814, v5965, v6116;
        v6252, v2767, v2768, v2769, v2770, v2771, v2772, v2773, v3709, v3859, v4009, v4159, v4309, v4459, v4609, v4759, v4909, v5060, v5211, v5362, v5513, v5664, v5815, v5966, v6117;
        v6253, v2774, v2775, v2776, v2777, v2778, v2779, v2780, v3710, v3860, v4010, v4160, v4310, v4460, v4610, v4760, v4910, v5061, v5212, v5363, v5514, v5665, v5816, v5967, v6118;
        v6254, v2781, v2782, v2783, v2784, v2785, v2786, v2787, v3711, v3861, v4011, v4161, v4311, v4461, v4611, v4761, v4911, v5062, v5213, v5364, v5515, v5666, v5817, v5968, v6119;
        v6255, v2788, v2789, v2790, v2791, v2792, v2793, v2794, v3712, v3862, v4012, v4162, v4312, v4462, v4612, v4762, v4912, v5063, v5214, v5365, v5516, v5667, v5818, v5969, v6120;
        v6256, v2795, v2796, v2797, v2798, v2799, v2800, v2801, v3713, v3863, v4013, v4163, v4313, v4463, v4613, v4763, v4913, v5064, v5215, v5366, v5517, v5668, v5819, v5970, v6121;
        v6258, v2802, v2803, v2804, v2805, v2806, v2807, v2808, v3714, v3864, v4014, v4164, v4314, v4464, v4614, v4764, v4914, v5065, v5216, v5367, v5518, v5669, v5820, v5971, v6122;
        v6260, v2809, v2810, v2811, v2812, v2813, v2814, v2815, v3715, v3865, v4015, v4165, v4315, v4465, v4615, v4765, v4915, v5066, v5217, v5368, v5519, v5670, v5821, v5972, v6123;
        v6261, v2816, v2817, v2818, v2819, v2820, v2821, v2822, v3716, v3866, v4016, v4166, v4316, v4466, v4616, v4766, v4916, v5067, v5218, v5369, v5520, v5671, v5822, v5973, v6124;
        v6262, v2823, v2824, v2825, v2826, v2827, v2828, v2829, v3717, v3867, v4017, v4167, v4317, v4467, v4617, v4767, v4917, v5068, v5219, v5370, v5521, v5672, v5823, v5974, v6125;
        v6263, v2830, v2831, v2832, v2833, v2834, v2835, v2836, v3718, v3868, v4018, v4168, v4318, v4468, v4618, v4768, v4918, v5069, v5220, v5371, v5522, v5673, v5824, v5975, v6126;
        v6265, v2837, v2838, v2839, v2840, v2841, v2842, v2843, v3719, v3869, v4019, v4169, v4319, v4469, v4619, v4769, v4919, v5070, v5221, v5372, v5523, v5674, v5825, v5976, v6127;
        v6267, v2844, v2845, v2846, v2847, v2848, v2849, v2850, v3720, v3870, v4020, v4170, v4320, v4470, v4620, v4770, v4920, v5071, v5222, v5373, v5524, v5675, v5826, v5977, v6128;
        v6269, v2851, v2852, v2853, v2854, v2855, v2856, v2857, v3721, v3871, v4021, v4171, v4321, v4471, v4621, v4771, v4921, v5072, v5223, v5374, v5525, v5676, v5827, v5978, v6129;
        v6271, v2858, v2859, v2860, v2861, v2862, v2863, v2864, v3722, v3872, v4022, v4172, v4322, v4472, v4622, v4772, v4922, v5073, v5224, v5375, v5526, v5677, v5828, v5979, v6130;
        v6272, v2865, v2866, v2867, v2868, v2869, v2870, v2871, v3723, v3873, v4023, v4173, v4323, v4473, v4623, v4773, v4923, v5074, v5225, v5376, v5527, v5678, v5829, v5980, v6131;
        v6273, v2872, v2873, v2874, v2875, v2876, v2877, v2878, v3724, v3874, v4024, v4174, v4324, v4474, v4624, v4774, v4924, v5075, v5226, v5377, v5528, v5679, v5830, v5981, v6132;
        v6275, v2879, v2880, v2881, v2882, v2883, v2884, v2885, v3725, v3875, v4025, v4175, v4325, v4475, v4625, v4775, v4925, v5076, v5227, v5378, v5529, v5680, v5831, v5982, v6133;
        v6277, v2886, v2887, v2888, v2889, v2890, v2891, v2892, v3726, v3876, v4026, v4176, v4326, v4476, v4626, v4776, v4926, v5077, v5228, v5379, v5530, v5681, v5832, v5983, v6134;
        v6279, v2893, v2894, v2895, v2896, v2897, v2898, v2899, v3727, v3877, v4027, v4177, v4327, v4477, v4627, v4777, v4927, v5078, v5229, v5380, v5531, v5682, v5833, v5984, v6135;
        v6281, v2900, v2901, v2902, v2903, v2904, v2905, v2906, v3728, v3878, v4028, v4178, v4328, v4478, v4628, v4778, v4928, v5079, v5230, v5381, v5532, v5683, v5834, v5985, v6136;
        v6284, v2907, v2908, v2909, v2910, v2911, v2912, v2913, v3729, v3879, v4029, v4179, v4329, v4479, v4629, v4779, v4929, v5080, v5231, v5382, v5533, v5684, v5835, v5986, v6137;
        v6287, v2914, v2915, v2916, v2917, v2918, v2919, v2920, v3730, v3880, v4030, v4180, v4330, v4480, v4630, v4780, v4930, v5081, v5232, v5383, v5534, v5685, v5836, v5987, v6138;
        v6290, v2921, v2922, v2923, v2924, v2925, v2926, v2927, v3731, v3881, v4031, v4181, v4331, v4481, v4631, v4781, v4931, v5082, v5233, v5384, v5535, v5686, v5837, v5988, v6139;
        v6294, v2928, v2929, v2930, v2931, v2932, v2933, v2934, v3732, v3882, v4032, v4182, v4332, v4482, v4632, v4782, v4932, v5083, v5234, v5385, v5536, v5687, v5838, v5989, v6140;
        v6296, v2935, v2936, v2937, v2938, v2939, v2940, v2941, v3733, v3883, v4033, v4183, v4333, v4483, v4633, v4783, v4933, v5084, v5235, v5386, v5537, v5688, v5839, v5990, v6141;
        v6298, v2942, v2943, v2944, v2945, v2946, v2947, v2948, v3734, v3884, v4034, v4184, v4334, v4484, v4634, v4784, v4934, v5085, v5236, v5387, v5538, v5689, v5840, v5991, v6142;
        v6299, v2949, v2950, v2951, v2952, v2953, v2954, v2955, v3735, v3885, v4035, v4185, v4335, v4485, v4635, v4785, v4935, v5086, v5237, v5388, v5539, v5690, v5841, v5992, v6143;
        v6300, v2956, v2957, v2958, v2959, v2960, v2961, v2962, v3736, v3886, v4036, v4186, v4336, v4486, v4636, v4786, v4936, v5087, v5238, v5389, v5540, v5691, v5842, v5993, v6144;
        v6302, v2963, v2964, v2965, v2966, v2967, v2968, v2969, v3737, v3887, v4037, v4187, v4337, v4487, v4637, v4787, v4937, v5088, v5239, v5390, v5541, v5692, v5843, v5994, v6145;
        v6304, v2970, v2971, v2972, v2973, v2974, v2975, v2976, v3738, v3888, v4038, v4188, v4338, v4488, v4638, v4788, v4938, v5089, v5240, v5391, v5542, v5693, v5844, v5995, v6146;
        v6307, v2977, v2978, v2979, v2980, v2981, v2982, v2983, v3739, v3889, v4039, v4189, v4339, v4489, v4639, v4789, v4939, v5090, v5241, v5392, v5543, v5694, v5845, v5996, v6147;
        v6308, v2984, v2985, v2986, v2987, v2988, v2989, v2990, v3740, v3890, v4040, v4190, v4340, v4490, v4640, v4790, v4940, v5091, v5242, v5393, v5544, v5695, v5846, v5997, v6148;
        v6309, v2991, v2992, v2993, v2994, v2995, v2996, v2997, v3741, v3891, v4041, v4191, v4341, v4491, v4641, v4791, v4941, v5092, v5243, v5394, v5545, v5696, v5847, v5998, v6149;
        v6310, v2998, v2999, v3000, v3001, v3002, v3003, v3004, v3742, v3892, v4042, v4192, v4342, v4492, v4642, v4792, v4942, v5093, v5244, v5395, v5546, v5697, v5848, v5999, v6150;
        v6311, v3005, v3006, v3007, v3008, v3009, v3010, v3011, v3743, v3893, v4043, v4193, v4343, v4493, v4643, v4793, v4943, v5094, v5245, v5396, v5547, v5698, v5849, v6000, v6151;
        v6312, v3012, v3013, v3014, v3015, v3016, v3017, v3018, v3744, v3894, v4044, v4194, v4344, v4494, v4644, v4794, v4944, v5095, v5246, v5397, v5548, v5699, v5850, v6001, v6152;
        v6315, v3019, v3020, v3021, v3022, v3023, v3024, v3025, v3745, v3895, v4045, v4195, v4345, v4495, v4645, v4795, v4945, v5096, v5247, v5398, v5549, v5700, v5851, v6002, v6153;
        v6317, v3026, v3027, v3028, v3029, v3030, v3031, v3032, v3746, v3896, v4046, v4196, v4346, v4496, v4646, v4796, v4946, v5097, v5248, v5399, v5550, v5701, v5852, v6003, v6154;
        v6319, v3033, v3034, v3035, v3036, v3037, v3038, v3039, v3747, v3897, v4047, v4197, v4347, v4497, v4647, v4797, v4947, v5098, v5249, v5400, v5551, v5702, v5853, v6004, v6155;
        v6323, v3040, v3041, v3042, v3043, v3044, v3045, v3046, v3748, v3898, v4048, v4198, v4348, v4498, v4648, v4798, v4948, v5099, v5250, v5401, v5552, v5703, v5854, v6005, v6156;
        v6328, v3047, v3048, v3049, v3050, v3051, v3052, v3053, v3749, v3899, v4049, v4199, v4349, v4499, v4649, v4799, v4949, v5100, v5251, v5402, v5553, v5704, v5855, v6006, v6157;
        v6330, v3054, v3055, v3056, v3057, v3058, v3059, v3060, v3750, v3900, v4050, v4200, v4350, v4500, v4650, v4800, v4950, v5101, v5252, v5403, v5554, v5705, v5856, v6007, v6158;
        v6332, v3061, v3062, v3063, v3064, v3065, v3066, v3067, v3751, v3901, v4051, v4201, v4351, v4501, v4651, v4801, v4951, v5102, v5253, v5404, v5555, v5706, v5857, v6008, v6159;
        v6334, v3068, v3069, v3070, v3071, v3072, v3073, v3074, v3752, v3902, v4052, v4202, v4352, v4502, v4652, v4802, v4952, v5103, v5254, v5405, v5556, v5707, v5858, v6009, v6160;
        v6335, v3075, v3076, v3077, v3078, v3079, v3080, v3081, v3753, v3903, v4053, v4203, v4353, v4503, v4653, v4803, v4953, v5104, v5255, v5406, v5557, v5708, v5859, v6010, v6161;
        v6337, v3082, v3083, v3084, v3085, v3086, v3087, v3088, v3754, v3904, v4054, v4204, v4354, v4504, v4654, v4804, v4954, v5105, v5256, v5407, v5558, v5709, v5860, v6011, v6162;
        v6342, v3089, v3090, v3091, v3092, v3093, v3094, v3095, v3755, v3905, v4055, v4205, v4355, v4505, v4655, v4805, v4955, v5106, v5257, v5408, v5559, v5710, v5861, v6012, v6163;
        v6343, v3096, v3097, v3098, v3099, v3100, v3101, v3102, v3756, v3906, v4056, v4206, v4356, v4506, v4656, v4806, v4956, v5107, v5258, v5409, v5560, v5711, v5862, v6013, v6164;
        v6345, v3103, v3104, v3105, v3106, v3107, v3108, v3109, v3757, v3907, v4057, v4207, v4357, v4507, v4657, v4807, v4957, v5108, v5259, v5410, v5561, v5712, v5863, v6014, v6165;
        v6352, v3110, v3111, v3112, v3113, v3114, v3115, v3116, v3758, v3908, v4058, v4208, v4358, v4508, v4658, v4808, v4958, v5109, v5260, v5411, v5562, v5713, v5864, v6015, v6166;
        oslogd, v3117, v3118, v3119, v3120, v3121, v3122, v3123, v3759, v3909, v4059, v4209, v4359, v4509, v4659, v4809, v4959, v5110, v5261, v5412, v5563, v5714, v5865, v6016, v6167;
        v6364, v3124, v3125, v3126, v3127, v3128, v3129, v3130, v3760, v3910, v4060, v4210, v4360, v4510, v4660, v4810, v4960, v5111, v5262, v5413, v5564, v5715, v5866, v6017, v6168;
        namea, v3131, v3132, v3133, v3134, v3135, v3136, v3137, v3761, v3911, v4061, v4211, v4361, v4511, v4661, v4811, v4961, v5112, v5263, v5414, v5565, v5716, v5867, v6018, v6169;
        v6373, v3138, v3139, v3140, v3141, v3142, v3143, v3144, v3762, v3912, v4062, v4212, v4362, v4512, v4662, v4812, v4962, v5113, v5264, v5415, v5566, v5717, v5868, v6019, v6170;
        v6378, v3145, v3146, v3147, v3148, v3149, v3150, v3151, v3763, v3913, v4063, v4213, v4363, v4513, v4663, v4813, v4963, v5114, v5265, v5416, v5567, v5718, v5869, v6020, v6171;
        v6381, v3152, v3153, v3154, v3155, v3156, v3157, v3158, v3764, v3914, v4064, v4214, v4364, v4514, v4664, v4814, v4964, v5115, v5266, v5417, v5568, v5719, v5870, v6021, v6172;
        v6386, v3159, v3160, v3161, v3162, v3163, v3164, v3165, v3765, v3915, v4065, v4215, v4365, v4515, v4665, v4815, v4965, v5116, v5267, v5418, v5569, v5720, v5871, v6022, v6173;
        v6387, v3166, v3167, v3168, v3169, v3170, v3171, v3172, v3766, v3916, v4066, v4216, v4366, v4516, v4666, v4816, v4966, v5117, v5268, v5419, v5570, v5721, v5872, v6023, v6174;
        v6392, v3173, v3174, v3175, v3176, v3177, v3178, v3179, v3767, v3917, v4067, v4217, v4367, v4517, v4667, v4817, v4967, v5118, v5269, v5420, v5571, v5722, v5873, v6024, v6175;
        v6397, v3180, v3181, v3182, v3183, v3184, v3185, v3186, v3768, v3918, v4068, v4218, v4368, v4518, v4668, v4818, v4968, v5119, v5270, v5421, v5572, v5723, v5874, v6025, v6176;
        v6404, v3187, v3188, v3189, v3190, v3191, v3192, v3193, v3769, v3919, v4069, v4219, v4369, v4519, v4669, v4819, v4969, v5120, v5271, v5422, v5573, v5724, v5875, v6026, v6177;
        v6410, v3194, v3195, v3196, v3197, v3198, v3199, v3200, v3770, v3920, v4070, v4220, v4370, v4520, v4670, v4820, v4970, v5121, v5272, v5423, v5574, v5725, v5876, v6027, v6178;
        v6417, v3201, v3202, v3203, v3204, v3205, v3206, v3207, v3771, v3921, v4071, v4221, v4371, v4521, v4671, v4821, v4971, v5122, v5273, v5424, v5575, v5726, v5877, v6028, v6179;
        v6418, v3208, v3209, v3210, v3211, v3212, v3213, v3214, v3772, v3922, v4072, v4222, v4372, v4522, v4672, v4822, v4972, v5123, v5274, v5425, v5576, v5727, v5878, v6029, v6180;
        v6420, v3215, v3216, v3217, v3218, v3219, v3220, v3221, v3773, v3923, v4073, v4223, v4373, v4523, v4673, v4823, v4973, v5124, v5275, v5426, v5577, v5728, v5879, v6030, v6181;
        6, v3222, v3223, v3224, v3225, v3226, v3227, v3228, v3774, v3924, v4074, v4224, v4374, v4524, v4674, v4824, v4974, v5125, v5276, v5427, v5578, v5729, v5880, v6031, v6182;
        v6421, v3229, v3230, v3231, v3232, v3233, v3234, v3235, v3775, v3925, v4075, v4225, v4375, v4525, v4675, v4825, v4975, v5126, v5277, v5428, v5579, v5730, v5881, v6032, v6183;
        v6425, v3236, v3237, v3238, v3239, v3240, v3241, v3242, v3776, v3926, v4076, v4226, v4376, v4526, v4676, v4826, v4976, v5127, v5278, v5429, v5580, v5731, v5882, v6033, v6184;
        v6427, v3243, v3244, v3245, v3246, v3247, v3248, v3249, v3777, v3927, v4077, v4227, v4377, v4527, v4677, v4827, v4977, v5128, v5279, v5430, v5581, v5732, v5883, v6034, v6185;
        v6437, v3250, v3251, v3252, v3253, v3254, v3255, v3256, v3778, v3928, v4078, v4228, v4378, v4528, v4678, v4828, v4978, v5129, v5280, v5431, v5582, v5733, v5884, v6035, v6186;
        v6439, v3257, v3258, v3259, v3260, v3261, v3262, v3263, v3779, v3929, v4079, v4229, v4379, v4529, v4679, v4829, v4979, v5130, v5281, v5432, v5583, v5734, v5885, v6036, v6187;
        sub_22BB2F09C();
        sub_22BB33430();

        v3265(v3264, v3265, v3266, v3267, v3268, v3269, v3270, v3271, a9, a10, a11, a12);
        return;
      case 7u:
        sub_22BD63920();
        sub_22BDB63E4();
        sub_22BB322B0();
        v225 = swift_allocObject();
        sub_22BD60000(v225);
        v18 = sub_22BDB77C4();
        v226 = sub_22BDBB114();
        sub_22BD616A8();
        v227 = swift_allocObject();
        sub_22BD60E0C(v227);
        sub_22BD616A8();
        v228 = swift_allocObject();
        sub_22BB70358(v228);
        sub_22BB322B0();
        v229 = swift_allocObject();
        sub_22BB97500(v229);
        sub_22BB322B0();
        v230 = swift_allocObject();
        sub_22BD6040C(v230);
        v231 = sub_22BB6F8FC();
        v232 = sub_22BBC2570(v231, xmmword_22BDC2F20);
        v232[2].n128_u64[0] = v233;
        v232[2].n128_u64[1] = v15;
        v232[3].n128_u64[0] = sub_22BB89C08;
        v232[3].n128_u64[1] = v14;
        v232[4].n128_u64[0] = sub_22BB89C7C;
        v232[4].n128_u64[1] = v30;

        if (sub_22BC54EF8())
        {
          sub_22BB67968(12);
          v234 = sub_22BB38198();
          *(v17 + 2392) = 0;
          *(v17 + 2360) = v234;
          sub_22BD60D14(v229);
          *(v17 + 1456) = v15;
          v235 = sub_22BB6F9B4();
          sub_22BB67984(v235, v236, v237, v238);
          if (!v6439)
          {

            sub_22BBBE83C();
            *(v17 + 1456) = v14;
            v239 = sub_22BB6F9B4();
            sub_22BB67984(v239, v240, v241, v242);

            sub_22BD60FFC();
            *(v17 + 1456) = v30;
            v243 = sub_22BB6F9B4();
            sub_22BB67984(v243, v244, v245, v246);
            sub_22BD61A18();

            sub_22BB337EC(&dword_22BB2C000, v18, v226, "[SessionCoordinator %{public}s] | Detected failure in debugger handling. Disabling debug modes and terminating session.");
            sub_22BB30DDC();
            sub_22BB679C0();
          }

          goto LABEL_408;
        }

        sub_22BD64324();

        v430 = sub_22BB30AE4();
        v431(v430);
        v15 = *(v17 + 4792);
        v30 = *(v17 + 4344);
        v12 = *(v17 + 4304);
        v14 = *(v17 + 4104);
        v432 = *(v17 + 3144);
        v433 = *(v17 + 3128);
        sub_22BB96BBC();
        sub_22BBE6DE0(&qword_27D8E63F8, &qword_22BDCE220);
        sub_22BD64954();
        v434 = sub_22BBE6DE0(&qword_27D8E6008, &qword_22BDCD538);
        v435 = sub_22BD60FD4(v434);
        sub_22BD5B890(v435, 1);
        sub_22BD61630();
        v436(v433, v15, v229 + 4);
        sub_22BD74A58(v433, v432);
        v17 += 8;
        v437 = sub_22BD00E3C();
        v438(v437);
        sub_22BD614B8();
        sub_22BD5F854();
        sub_22BB37074();
        swift_storeEnumTagMultiPayload();
        sub_22BB3630C();
        sub_22BD64674(v439, v440);
        sub_22BB35CBC();
LABEL_90:
        sub_22BB34648();
        goto LABEL_96;
      default:
        sub_22BB89C84();
        sub_22BBE6DE0(&qword_27D8E63F8, &qword_22BDCE220);
        sub_22BB8D2E4();
        v1440 = *v1439;
        *(v17 + 4552) = *v1439;
        v1441 = v1439[1];
        *(v17 + 4560) = v1441;
        sub_22BBBE74C();
        sub_22BB3A518(v12, v85);
        sub_22BDB63E4();
        sub_22BB322B0();
        v1442 = swift_allocObject();
        sub_22BB977E8(v1442);
        v1443 = sub_22BB3A9D4();
        sub_22BB335C0(v1443, v1444);
        sub_22BBC0328();
        v1445 = swift_allocObject();
        sub_22BD650D0(v1445);
        sub_22BB322B0();
        v1446 = swift_allocObject();
        *(v1446 + 16) = v1440;
        *(v1446 + 24) = v1441;

        v6427 = sub_22BDB77C4();
        sub_22BDBB104();
        sub_22BD616A8();
        v6434 = swift_allocObject();
        sub_22BB97ED4(v6434);
        sub_22BD616A8();
        v1447 = swift_allocObject();
        sub_22BD62CE4(v1447);
        sub_22BB322B0();
        v1448 = swift_allocObject();
        sub_22BBBDEB0(v1448);
        sub_22BB322B0();
        swift_allocObject();
        sub_22BD5F74C();
        *(v1449 + 16) = v1450;
        *(v1449 + 24) = v1448;
        sub_22BD616A8();
        v6419 = swift_allocObject();
        *(v6419 + 16) = 32;
        sub_22BD616A8();
        v1451 = swift_allocObject();
        *(v1451 + 16) = v14;
        sub_22BB322B0();
        swift_allocObject();
        sub_22BD626B4();
        *(v1452 + 16) = v1454;
        *(v1452 + 24) = v1453;
        sub_22BB322B0();
        v1455 = swift_allocObject();
        sub_22BB3AE40(v1455);
        sub_22BD616A8();
        v1456 = swift_allocObject();
        *(v1456 + 16) = 32;
        sub_22BD616A8();
        v1457 = swift_allocObject();
        sub_22BD64D98(v1457);
        sub_22BB322B0();
        v1458 = swift_allocObject();
        sub_22BD6055C(v1458);
        sub_22BB322B0();
        v1459 = swift_allocObject();
        sub_22BD626EC(v1459);
        v1460 = sub_22BD61958();
        sub_22BBC96FC(v1460, xmmword_22BDCE140);
        sub_22BD60544(v6434);
        sub_22BD62630();
        v1460[4].n128_u64[1] = v34;
        v1460[5].n128_u64[0] = sub_22BB89C08;
        sub_22BD62854();
        v1460[6].n128_u64[1] = v1451;
        v1460[7].n128_u64[0] = sub_22BB89C7C;
        v1460[7].n128_u64[1] = v18;
        v1460[8].n128_u64[0] = sub_22BB89C08;
        v1460[8].n128_u64[1] = v1456;
        v1460[9].n128_u64[0] = sub_22BB89C08;
        v1460[9].n128_u64[1] = 32;
        v1460[10].n128_u64[0] = sub_22BB89C7C;
        v1460[10].n128_u64[1] = v14;

        HIDWORD(v6425) = 0;

        v1461 = sub_22BD620A0();
        if (os_log_type_enabled(v1461, v1462))
        {
          v1463 = sub_22BB67968(32);
          v1464 = sub_22BD63AC4();
          *(v17 + 2408) = 0;
          *(v17 + 2416) = v1464;
          *v1463 = 770;
          *(v17 + 2400) = v1463 + 1;
          *(v17 + 1528) = sub_22BB89C08;
          *(v17 + 1536) = v6434;
          v1465 = sub_22BD5F978();
          sub_22BB67984(v1465, v1466, v1467, v1468);
          if (!v6439)
          {

            *(v17 + 1528) = sub_22BB89C08;
            *(v17 + 1536) = v1458;
            v1469 = sub_22BD5F978();
            sub_22BB67984(v1469, v1470, v1471, v1472);

            *(v17 + 1528) = sub_22BB89C7C;
            *(v17 + 1536) = v34;
            v1473 = sub_22BD5F978();
            sub_22BB67984(v1473, v1474, v1475, v1476);

            *(v17 + 1528) = sub_22BB89C08;
            *(v17 + 1536) = v6419;
            v1477 = sub_22BD5F978();
            sub_22BB67984(v1477, v1478, v1479, v1480);

            *(v17 + 1528) = sub_22BB89C08;
            *(v17 + 1536) = v1451;
            v1481 = sub_22BD5F978();
            sub_22BB67984(v1481, v1482, v1483, v1484);

            *(v17 + 1528) = sub_22BB89C7C;
            *(v17 + 1536) = v18;
            v1485 = sub_22BD5F978();
            sub_22BB67984(v1485, v1486, v1487, v1488);

            *(v17 + 1528) = sub_22BB89C08;
            *(v17 + 1536) = v1456;
            v1489 = sub_22BD5F978();
            sub_22BB67984(v1489, v1490, v1491, v1492);

            *(v17 + 1528) = sub_22BB89C08;
            *(v17 + 1536) = 32;
            v1493 = sub_22BD5F978();
            sub_22BB67984(v1493, v1494, v1495, v1496);

            *(v17 + 1528) = sub_22BB89C7C;
            *(v17 + 1536) = v14;
            v1497 = sub_22BD5F978();
            sub_22BB67984(v1497, v1498, v1499, v1500);
            sub_22BD62624();

            sub_22BBBE830();
            sub_22BD63B3C(&dword_22BB2C000, v6427, v1501, "[SessionCoordinator %{public}s] | Processing transaction request:\nContents: %s\nPostcondition: %s");
            sub_22BD62D3C();
            sub_22BB30458();
            sub_22BB679C0();
          }

          goto LABEL_414;
        }

        sub_22BD64E70();

        v1502 = sub_22BD62258();
        v1504 = v1503(v1502, 32);
        v1512 = sub_22BD63524(v1504, v1505, v1506, v1507, v1508, v1509, v1510, v1511, v3630, v3780, v3930);
        HIDWORD(v6427) = v1513;
        oslogb = v1512;
        *(v17 + 4576) = v1512;
        sub_22BD642C4();
        *(v17 + 4584) = v1514;
        sub_22BD6480C();
        *(v17 + 4592) = v1515;
        v1516 = sub_22BB3E460();
        v6379 = v1517;
        (v1517)(v1516);
        sub_22BDB96A4();
        *(v17 + 4600) = *(v34 + 8);
        sub_22BD63D50();
        *(v17 + 4608) = v1518;
        v1519 = sub_22BB2F324();
        v6374 = v1520;
        v1520(v1519);
        v1521 = sub_22BDB9744();
        v1522 = MEMORY[0x28];
        *(v17 + 4616) = MEMORY[0x28];
        *(v17 + 4624) = 0x4F8000000000028;
        v1523 = sub_22BB2F0E0();
        v1522(v1523);
        *(v17 + 1712) = v1521;
        sub_22BBE6DE0(&qword_27D8E2F48, &unk_22BDBD950);
        sub_22BB31DE0();
        sub_22BD63468();
        sub_22BB899C0(v1524, v1525, v1526);
        v1527 = (v17 + 1712);
        sub_22BD62448();
        sub_22BDB90D4();

        v1528 = sub_22BBE6DE0(&qword_27D8E6560, &qword_22BDCE740);
        if (sub_22BBD2268(v1528) == 1)
        {
          sub_22BB325EC(*(v17 + 3576), &qword_27D8E6518, &unk_22BDCE420);
        }

        else
        {
          sub_22BD61658();
          v1529 = sub_22BD64800();
          v1530(v1529);
        }

        sub_22BD61D40();
        v1531 = sub_22BD64B6C();
        sub_22BB336D0(v1531, v1532, v1533, v1534);
        sub_22BB366B8();
        v1535 = swift_allocObject();
        *(v17 + 4632) = v1535;
        v195 = &unk_283F7E048;
        sub_22BD616A8();
        v1536 = swift_allocObject();
        *(v17 + 4640) = v1536;
        sub_22BD616A8();
        v6418 = swift_allocObject();
        *(v17 + 4648) = v6418;
        sub_22BD60084();
        sub_22BB37074();
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v1538 = v1460->n128_u64[0];
        v6417 = v1535;
        name = v1536;
        if (EnumCaseMultiPayload == 1)
        {
          v6333 = v1522;
          sub_22BD61D2C();
          oslog = v1539;
          v6394 = v1540;
          v6421 = sub_22BDB8404();
          v6420 = v1541;
          v1542 = sub_22BDB8404();
          sub_22BBBE80C(v1542, v1543);
          sub_22BB97C94();
          if (v279)
          {
            __break(1u);
LABEL_397:
            __break(1u);

            goto LABEL_361;
          }

          sub_22BD61914(v1544);
          sub_22BB322B0();
          swift_allocObject();
          sub_22BB89DB4();
          *(v1545 + 16) = v1546;
          *(v1545 + 24) = &unk_283F7E048;
          sub_22BB366B8();
          v1547 = swift_allocObject();
          sub_22BD64028(v1547);
          sub_22BB322B0();
          v1548 = swift_allocObject();
          sub_22BD60348(v1548);
          sub_22BB366B8();
          *(swift_allocObject() + 16) = v1538;

          v6401 = v1538;

          v6359 = sub_22BDB77C4();
          v6371 = sub_22BDBB134();
          sub_22BD616A8();
          v6435 = swift_allocObject();
          sub_22BD63B94(v6435);
          sub_22BD616A8();
          v6339 = swift_allocObject();
          sub_22BB97EE0(v6339);
          sub_22BB322B0();
          v1549 = swift_allocObject();
          sub_22BB70160(v1549);
          sub_22BB322B0();
          v1550 = swift_allocObject();
          sub_22BB69C9C(v1550);
          sub_22BD616A8();
          v1551 = swift_allocObject();
          *(v1551 + 16) = v1536;
          sub_22BD616A8();
          v1552 = swift_allocObject();
          *(v1552 + 16) = v1538;
          sub_22BB322B0();
          v1553 = swift_allocObject();
          sub_22BBBE888(v1553);
          sub_22BB322B0();
          v1554 = swift_allocObject();
          sub_22BB69C9C(v1554);
          sub_22BD616A8();
          v1555 = swift_allocObject();
          sub_22BD62E7C(v1555);
          sub_22BD616A8();
          v1556 = swift_allocObject();
          *(v1556 + 16) = v1538;
          sub_22BB322B0();
          v1557 = swift_allocObject();
          sub_22BD602E0(v1557);
          sub_22BB322B0();
          v1558 = swift_allocObject();
          sub_22BD606DC(v1558);
          v1559 = sub_22BD61958();
          sub_22BB70434(v1559, xmmword_22BDCE140);
          sub_22BB980A0();
          v1559[4].n128_u64[1] = v1550;
          v1559[5].n128_u64[0] = sub_22BB89C08;
          v1559[5].n128_u64[1] = v1551;
          v1559[6].n128_u64[0] = sub_22BB89C08;
          v1559[6].n128_u64[1] = v1552;
          v1559[7].n128_u64[0] = sub_22BB89C7C;
          v1559[7].n128_u64[1] = v1554;
          v1559[8].n128_u64[0] = sub_22BB89C08;
          v1559[8].n128_u64[1] = v1555;
          v1559[9].n128_u64[0] = sub_22BB89C08;
          v1559[9].n128_u64[1] = v1556;
          v1559[10].n128_u64[0] = sub_22BB70118;
          v1559[10].n128_u64[1] = v1558;

          v6344 = v1552;

          if (os_log_type_enabled(v6359, v6371))
          {
            sub_22BB67968(32);
            v1560 = sub_22BB3869C();
            *(v17 + 2288) = 0;
            *(v17 + 2296) = v1560;
            *v1549 = 770;
            *(v17 + 2280) = v1549 + 1;
            sub_22BB70328();
            *(v17 + 1312) = v6435;
            v1561 = sub_22BB58898();
            sub_22BB67984(v1561, v1562, v1563, v1564);
            if (!v6439)
            {

              sub_22BB70328();
              *(v17 + 1312) = v1549;
              v1565 = sub_22BB58898();
              sub_22BB67984(v1565, v1566, v1567, v1568);

              sub_22BB96CEC();
              *(v17 + 1312) = v1550;
              v1569 = sub_22BB58898();
              sub_22BB67984(v1569, v1570, v1571, v1572);

              sub_22BB70328();
              *(v17 + 1312) = v1551;
              v1573 = sub_22BB58898();
              sub_22BB67984(v1573, v1574, v1575, v1576);

              sub_22BB70328();
              *(v17 + 1312) = v1552;
              v1577 = sub_22BB58898();
              sub_22BB67984(v1577, v1578, v1579, v1580);

              sub_22BB96CEC();
              *(v17 + 1312) = v1554;
              v1581 = sub_22BB58898();
              sub_22BB67984(v1581, v1582, v1583, v1584);

              sub_22BB70328();
              *(v17 + 1312) = v1555;
              v1585 = sub_22BB58898();
              sub_22BB67984(v1585, v1586, v1587, v1588);

              sub_22BB70328();
              *(v17 + 1312) = v1556;
              v1589 = sub_22BB58898();
              sub_22BB67984(v1589, v1590, v1591, v1592);

              sub_22BD606C4();
              *(v17 + 1312) = v1558;
              v1593 = sub_22BB58898();
              sub_22BB67984(v1593, v1594, v1595, v1596);
              sub_22BD6256C();

              sub_22BD63B3C(&dword_22BB2C000, v6359, v6371, "[SessionCoordinator %{public}s] | [TX %{public}s] Client transaction turned in with %{public}ld events.");
              sub_22BB96A94(v1597, v1598, MEMORY[0x277D84F70] + 8);
              sub_22BB30458();
              sub_22BB679C0();
            }

            goto LABEL_408;
          }

          v6367 = *(v17 + 4064);
          v1758 = *(v17 + 3840);
          sub_22BD640F0();

          v1760 = *(v1758 + 8);
          v1759 = v1758 + 8;
          sub_22BD61DF4(v1760);
          v1761();
          v16 = &qword_22BDC1660;
          v1762 = v6439;
          sub_22BD60B30();
          if (v149)
          {
            sub_22BD615A0();
            v1555 = *(v17 + 3192);
            sub_22BB75638();
            sub_22BD64B48();
            sub_22BDB8444();
            sub_22BD62408();
            sub_22BB8E9C4();
            sub_22BDB5D24();
            v1763 = sub_22BD61CDC();
            v1764(v1763);
            v16 = &qword_22BDC1660;
            sub_22BD63938();
            sub_22BDB5E14();
            sub_22BBE6DE0(&qword_27D8E6470, &qword_22BDCE320);
            sub_22BBBFFBC();
            sub_22BDBAF34();
            v1765 = sub_22BD62DF4();
            v1766(v1765, v6439);
          }

          v1767 = v6401;
          v6444 = sub_22BD46088(v6401);
          v1769 = v1768;

          v1770 = sub_22BB31614();
          v1772 = sub_22BB6F9D4(v1770, v1771, v6401);
          sub_22BD6471C(v1772, v1773, v1774);
          sub_22BB2F1B0();

          v6362 = v1769;
          if (v1555 < 2)
          {
            v1817 = v6394;
          }

          else
          {
            v6367 = v1762;
            sub_22BD62680();
            sub_22BDB63E4();
            sub_22BB322B0();
            v1775 = swift_allocObject();
            sub_22BB977E8(v1775);
            sub_22BB366B8();
            v1776 = swift_allocObject();
            sub_22BD63080(v1776);
            sub_22BB322B0();
            v1777 = swift_allocObject();
            sub_22BD60A50(v1777);
            v6349 = sub_22BDB77C4();
            sub_22BDBB114();
            sub_22BD616A8();
            v1778 = swift_allocObject();
            sub_22BD623EC(v1778);
            sub_22BD616A8();
            v1779 = swift_allocObject();
            sub_22BD62E20(v1779);
            sub_22BB322B0();
            v1780 = swift_allocObject();
            sub_22BD60310(v1780);
            sub_22BB322B0();
            v1767 = swift_allocObject();
            sub_22BD60664(v1767);
            sub_22BD616A8();
            v1781 = swift_allocObject();
            sub_22BD636BC(v1781);
            sub_22BD616A8();
            v1782 = swift_allocObject();
            sub_22BD64DE0(v1782);
            sub_22BB322B0();
            v1783 = swift_allocObject();
            sub_22BD60364(v1783);
            sub_22BB322B0();
            swift_allocObject();
            sub_22BD5F764();
            *(v1784 + 16) = v1785;
            *(v1784 + 24) = v1555;
            v1786 = sub_22BBCCA6C();
            sub_22BB34620(v1786);
            v1787[4] = v1788;
            v1787[5] = v1762;
            v1787[6] = sub_22BB89C08;
            v1787[7] = v1779;
            v1787[8] = sub_22BB89C7C;
            v1787[9] = v1767;
            v1787[10] = sub_22BB89C08;
            v1787[11] = &qword_22BDC1660;
            v1787[12] = sub_22BB89C08;
            v1787[13] = v1759;
            v1787[14] = sub_22BB89C7C;
            v1787[15] = v1776;
            sub_22BD6474C();

            sub_22BD63D04();
            if (os_log_type_enabled(v6349, v1789))
            {
              sub_22BB67968(22);
              v1790 = sub_22BBBFF34();
              sub_22BD64A74(v1790);
              sub_22BBBEB6C();
              *(v17 + 2248) = v1791;
              sub_22BB97DA8();
              *(v17 + 1296) = v1555;
              v1792 = sub_22BB8ABC0();
              sub_22BB67984(v1792, v1793, v1794, v1795);
              if (!v1762)
              {

                sub_22BB97DA8();
                *(v17 + 1296) = v1779;
                v1796 = sub_22BB8ABC0();
                sub_22BB67984(v1796, v1797, v1798, v1799);

                sub_22BD6064C();
                *(v17 + 1296) = v1767;
                v1800 = sub_22BB8ABC0();
                sub_22BB67984(v1800, v1801, v1802, v1803);

                sub_22BB97DA8();
                *(v17 + 1296) = &qword_22BDC1660;
                v1804 = sub_22BB8ABC0();
                sub_22BB67984(v1804, v1805, v1806, v1807);

                sub_22BB97DA8();
                *(v17 + 1296) = v1759;
                v1808 = sub_22BB8ABC0();
                sub_22BB67984(v1808, v1809, v1810, v1811);

                *(v17 + 1288) = sub_22BB89C7C;
                *(v17 + 1296) = v1776;
                v1812 = sub_22BB8ABC0();
                sub_22BB67984(v1812, v1813, v1814, v1815);
                sub_22BD65030();
                sub_22BB39F58();
                sub_22BD636C8(&dword_22BB2C000, v6349, v1816, "[SessionCoordinator %{public}s] | [TX %{public}s] A client transaction contains more than one query. Only the last one will be used as the current query.");
                sub_22BBBE7DC();
                sub_22BB32238();
                sub_22BB679C0();
              }

              goto LABEL_414;
            }

            v6344 = *(v17 + 3960);
            sub_22BD6256C();

            sub_22BB896A8();
            v1827();
            v16 = &qword_22BDC1660;
            v1817 = v6394;
            v1769 = v1769;
          }

          v306 = oslog;
          if (v1769)
          {
            v1753 = v6401;
          }

          else
          {
            v6367 = v1762;
            v1828 = v6444;
            if (v6444)
            {
              v1829 = *(v17 + 3952);
              sub_22BD62680();
              sub_22BDB63E4();
              sub_22BB322B0();
              swift_allocObject();
              sub_22BB758D8();
              *(v1830 + 16) = v1831;
              *(v1830 + 24) = v1769;
              sub_22BB366B8();
              v1832 = swift_allocObject();
              sub_22BD63080(v1832);
              sub_22BB322B0();
              v1833 = swift_allocObject();
              sub_22BD5F71C(v1833);
              sub_22BB366B8();
              v1834 = swift_allocObject();
              sub_22BBC0200(v1834);
              v6350 = sub_22BDB77C4();
              sub_22BDBB114();
              sub_22BD616A8();
              v6435 = swift_allocObject();
              sub_22BD6250C(v6435);
              sub_22BD616A8();
              v6340 = swift_allocObject();
              sub_22BB6FB2C(v6340);
              v1769 = 8;
              sub_22BB322B0();
              v1835 = swift_allocObject();
              sub_22BB31A44(v1835);
              sub_22BB322B0();
              v1836 = swift_allocObject();
              sub_22BB3DEE8(v1836);
              sub_22BD616A8();
              v1837 = swift_allocObject();
              sub_22BD64CC0(v1837);
              sub_22BD616A8();
              v1838 = swift_allocObject();
              sub_22BD64AF0(v1838);
              sub_22BB322B0();
              swift_allocObject();
              sub_22BD607B4();
              *(v1839 + 16) = v1840;
              *(v1839 + 24) = v1833;
              sub_22BB322B0();
              v1841 = swift_allocObject();
              sub_22BB72DE4(v1841);
              sub_22BD616A8();
              v1842 = swift_allocObject();
              sub_22BD6430C(v1842);
              sub_22BD616A8();
              v1843 = swift_allocObject();
              sub_22BB70358(v1843);
              sub_22BB322B0();
              v1844 = swift_allocObject();
              sub_22BD605A4(v1844);
              sub_22BB322B0();
              swift_allocObject();
              sub_22BD6079C();
              *(v1845 + 16) = v1846;
              *(v1845 + 24) = v1844;
              v1847 = sub_22BD61958();
              v1847[2].n128_u64[1] = sub_22BB53DC8(v1847, xmmword_22BDCE140);
              v1847[3].n128_u64[0] = v1848;
              sub_22BB8E984();
              v1847[4].n128_u64[1] = v1836;
              v1847[5].n128_u64[0] = sub_22BB89C08;
              v1847[5].n128_u64[1] = v1829;
              v1847[6].n128_u64[0] = sub_22BB89C08;
              v1847[6].n128_u64[1] = v6444;
              v1847[7].n128_u64[0] = sub_22BB89C7C;
              v1847[7].n128_u64[1] = v1841;
              v1847[8].n128_u64[0] = sub_22BB89C08;
              v1847[8].n128_u64[1] = v1555;
              v1847[9].n128_u64[0] = sub_22BB89C08;
              v1847[9].n128_u64[1] = 8;
              v1847[10].n128_u64[0] = sub_22BD5F64C;
              v1847[10].n128_u64[1] = &qword_22BDC1660;

              sub_22BD63D04();
              if (os_log_type_enabled(v6350, v1849))
              {
                sub_22BD643A0();
                v1850 = sub_22BBC01B4();
                *(v17 + 2224) = 0;
                *(v17 + 2232) = v1850;
                sub_22BD61FC0(v1555);
                *(v17 + 2216) = v1851;
                sub_22BB6B120();
                *(v17 + 1280) = v6435;
                v1852 = sub_22BB33564();
                sub_22BB67984(v1852, v1853, v1854, v1855);
                if (!v6367)
                {

                  sub_22BB6B120();
                  *(v17 + 1280) = v1847;
                  v1856 = sub_22BB33564();
                  sub_22BB67984(v1856, v1857, v1858, v1859);

                  sub_22BBC0960();
                  *(v17 + 1280) = v1836;
                  v1860 = sub_22BB33564();
                  sub_22BB67984(v1860, v1861, v1862, v1863);

                  sub_22BB6B120();
                  *(v17 + 1280) = v1829;
                  v1864 = sub_22BB33564();
                  sub_22BB67984(v1864, v1865, v1866, v1867);

                  sub_22BB6B120();
                  *(v17 + 1280) = v6444;
                  v1868 = sub_22BB33564();
                  sub_22BB67984(v1868, v1869, v1870, v1871);

                  sub_22BBC0960();
                  *(v17 + 1280) = v6331;
                  v1872 = sub_22BB33564();
                  sub_22BB67984(v1872, v1873, v1874, v1875);

                  sub_22BB6B120();
                  *(v17 + 1280) = &qword_22BDC1660;
                  v1876 = sub_22BB33564();
                  sub_22BB67984(v1876, v1877, v1878, v1879);

                  sub_22BB6B120();
                  *(v17 + 1280) = 8;
                  v1880 = sub_22BB33564();
                  sub_22BB67984(v1880, v1881, v1882, v1883);

                  sub_22BD6058C();
                  *(v17 + 1280) = v6329;
                  v1884 = sub_22BB33564();
                  sub_22BB67984(v1884, v1885, v1886, v1887);
                  sub_22BD62624();

                  sub_22BB39F58();
                  sub_22BD63B3C(&dword_22BB2C000, v6350, v1888, "[SessionCoordinator %{public}s] | [TX %{public}s] A client transaction contains a query at index %ld. Queries should be the first event in their transaction. This may cause incorrect behavior.");
                  swift_arrayDestroy();
                  sub_22BB3A3D8();
                  sub_22BB679C0();
                }

                goto LABEL_332;
              }

              v6344 = *(v17 + 3952);
              sub_22BD6256C();

              v1828 = v6444 + 8;
              sub_22BD61DF4(*(v6444 + 8));
              v1979();
            }

            sub_22BD63894();
            v6351 = v1980;
            sub_22BB96E08();
            v6416 = *(v17 + 3224);
            v6329 = *(v17 + 3160);
            sub_22BD61BF4();
            v6331 = v1981;
            v1982 = v6438[391].isa;
            v6341 = v6438[388].isa;
            v1983 = sub_22BD61410();
            (v6379)(v1983);
            sub_22BDB96A4();
            sub_22BB2F324();
            sub_22BBB65DC();
            v1984();
            v1753 = v6401;
            sub_22BD446BC(v6444, v6401, v17);
            v1985 = sub_22BD63144();
            v1986(v1985);
            sub_22BB69550();
            sub_22BB34648();
            MEMORY[0x2318A2C10](v1828);
            v1987 = sub_22BB31B54();
            sub_22BD446BC(v1987, v1988, v1989);
            sub_22BD61C44();
            v1990(v1982);
            sub_22BB97B18();
            sub_22BB34648();
            v1555 = v6344;
            v306 = oslog;
            v1817 = v6394;
            v1767 = v1769;
            sub_22BDB9704();
            v1991 = sub_22BD63620();
            v1992(v1991, v6341);
            v6333(v1769, v6351);
            v1993 = sub_22BB72084();
            sub_22BB336D0(v1993, v1994, v1995, v6416);
            sub_22BD6308C();
            v1996 = sub_22BB500C0();
            v16 = &qword_22BDC1660;
            sub_22BB385F4(v1996, v1997, &unk_27D8E69E0, &qword_22BDC1660);
            v1769 = v6362;
            v1762 = v6367;
          }

          sub_22BD618C4();
          v1998 = sub_22BB3627C();
          sub_22BB3CD70(v1998, v1999, &unk_27D8E69E0, &qword_22BDC1660);
          v2000 = swift_task_alloc();
          v2000[2] = v1555;
          v2000[3] = v306;
          v2000[4] = v1817;
          v2000[5] = v1767;
          v2001 = sub_22BB36C20();
          v2003 = sub_22BB72184(v2001, v2002, v1753);
          v6409 = v1762;
          v2000, v2004, v2005, v2006, v2007, v2008, v2009, v2010, v3630, v3780, v3930, v4080, v4230, v4380, v4530, v4680, v4830, v4980, v5131, v5282, v5433, v5584, v5735, v5886, v6037;
          *(v6417 + 16) = v2003;
          v1925 = *(v17 + 3664);
          if (v1769)
          {
            v12 = *(v17 + 3648);

            v2011 = sub_22BB37074();
            sub_22BB3CD70(v2011, v2012, &unk_27D8E69E0, &qword_22BDC1660);
            sub_22BB93908();
            if (v149)
            {
              sub_22BB325EC(v2013, &unk_27D8E69E0, &qword_22BDC1660);
              v2014 = sub_22BB36B68();
              sub_22BBC0340(v2014, v2015);
              v1927 = 0;
              v12 = 0;
              v306 = 0xE000000000000000;
            }

            else
            {
              v2035 = *(v17 + 3232);
              v2036 = sub_22BB97E2C();
              v2037(v2036);
              sub_22BDB8F24();
              v1927 = 1;
              v2038 = sub_22BB72084();
              sub_22BB336D0(v2038, v2039, v2040, v1925);
              sub_22BDB9A24();
              sub_22BD64D20();
              v1753 = v2035 + 8;
              v2041 = sub_22BB2F3F0();
              v2042(v2041);
            }
          }

          else
          {
            v12 = *(v17 + 3656);
            v2016 = sub_22BB37074();
            sub_22BB3CD70(v2016, v2017, &unk_27D8E69E0, &qword_22BDC1660);
            sub_22BB2F164(v12);
            if (v149)
            {
              __break(1u);
LABEL_423:
              __break(1u);
LABEL_424:
              __break(1u);
              JUMPOUT(0x22BB67928);
            }

            sub_22BD64180();
            sub_22BB3B574(v6417 + 16, v17 + 616);
            sub_22BB93884();
            sub_22BB938EC(v6444, *(v6417 + 16));
            sub_22BD61A5C();
            sub_22BB35FA0();
            v2018();
            nullsub_1();
            swift_endAccess();
            v2019 = sub_22BB3AC54();
            sub_22BB3CD70(v2019, v2020, &unk_27D8E69E0, &qword_22BDC1660);
            v2021 = sub_22BB2F3FC();
            sub_22BB31814(v2021, v2022, v1769);
            if (v149)
            {
              goto LABEL_424;
            }

            sub_22BD61450();
            v2023 = *(v17 + 3632);
            v1753 = *(v17 + 3312);
            v2024 = *(v17 + 3232);
            v306 = *(v17 + 3224);
            sub_22BDB8F24();
            v2025 = *(v2024 + 8);
            v2026 = sub_22BB313A8();
            v2025(v2026);
            v2027 = sub_22BB72084();
            sub_22BB336D0(v2027, v2028, v2029, v1753);
            v2030 = sub_22BB500C0();
            sub_22BB6BEE0(v2030, v2031, &qword_27D8E3218, &qword_22BDBE390);
            sub_22BB3CD70(v6444, v2023, &unk_27D8E69E0, &qword_22BDC1660);
            v2032 = sub_22BB3A840();
            sub_22BB31814(v2032, v2033, v306);
            if (v149)
            {
              goto LABEL_423;
            }

            sub_22BD64174();

            sub_22BDB9A24();
            sub_22BD64D20();
            v2034 = sub_22BB53C48();
            v2025(v2034);
            v1927 = 1;
          }

          v195 = v6409;
          v2043 = *(v17 + 3664);
          v1978 = *(v17 + 2496);
          name[16] = v1927;
          *(v6418 + 16) = 1;
          sub_22BB325EC(v2043, &unk_27D8E69E0, &qword_22BDC1660);
          sub_22BD64CD8();
          sub_22BB705A8();
          goto LABEL_295;
        }

        v1599 = *(v17 + 4128);
        v6375 = *(v17 + 4056);
        v1600 = *(v17 + 3800);
        sub_22BD63DC8();
        sub_22BD61CF0();
        v6395 = v1601;
        sub_22BD63FE8();
        v6372 = v1602;
        sub_22BBE6DE0(&qword_27D8E6408, &qword_22BDCE240);
        sub_22BB31DC8();
        sub_22BB3A518(v1599 + v1603, v17 + 1712);
        v1604 = *(v17 + 1728);
        v6421 = *(v17 + 1720);
        v1605 = *v1527;
        *(v1535 + 16) = v1538;
        v1606 = *(v1527 + *(v1536 + 28) + 8);
        v1607 = sub_22BD64C88();
        sub_22BB3CD70(v1607, v1600, &qword_27D8E3218, &qword_22BDBE390);
        v6420 = v1604;

        v6314 = v1606;

        v1608 = sub_22BD64198();
        sub_22BD459A4(v1608, v1609);
        v6408 = v6439;

        sub_22BDB63E4();
        sub_22BB322B0();
        swift_allocObject();
        sub_22BB8AF40();
        *(v1610 + 16) = v1611;
        *(v1610 + 24) = v6372;
        sub_22BB366B8();
        v1612 = swift_allocObject();
        v6425 = v1605;
        *(v1612 + 16) = v1605;
        sub_22BB322B0();
        swift_allocObject();
        sub_22BB89B58();
        *(v1613 + 16) = v1614;
        *(v1613 + 24) = v1612;
        sub_22BD639B0();
        sub_22BB3CD70(v1615, v1616, v1617, v1618);
        sub_22BD62264();
        sub_22BB6FB18();
        v6360 = swift_allocObject();
        sub_22BD639B0();
        sub_22BB6BEE0(v1619, v1620, v1621, v1622);
        sub_22BB3CD70(v1600, v6395, &unk_27D8E69E0, &qword_22BDC1660);
        sub_22BBC0328();
        swift_allocObject();
        v1623 = sub_22BD63964();
        sub_22BB6BEE0(v1623, v1624, &unk_27D8E69E0, &qword_22BDC1660);

        v1625 = v6375;
        v6348 = sub_22BDB77C4();
        LODWORD(v6331) = sub_22BDBB134();
        sub_22BD616A8();
        v1626 = swift_allocObject();
        sub_22BD62E44(v1626);
        sub_22BD616A8();
        v6390 = swift_allocObject();
        *(v6390 + 16) = 8;
        sub_22BB322B0();
        swift_allocObject();
        sub_22BB3E0C4();
        *(v1627 + 16) = v1628;
        *(v1627 + 24) = v1538;
        sub_22BB322B0();
        v6384 = swift_allocObject();
        *(v6384 + 16) = sub_22BB89C80;
        *(v6384 + 24) = v6375;
        sub_22BD616A8();
        v6380 = swift_allocObject();
        v6380[16] = &qword_22BDBE390;
        sub_22BD616A8();
        v6402 = swift_allocObject();
        *(v6402 + 16) = 8;
        sub_22BB322B0();
        swift_allocObject();
        sub_22BB756B0();
        *(v1629 + 16) = v1630;
        *(v1629 + 24) = v1606;
        sub_22BB322B0();
        v1631 = swift_allocObject();
        v1632 = sub_22BD62B6C(v1631);
        *(v1632 + 16) = v1633;
        *(v1632 + 24) = v6375;
        sub_22BD616A8();
        v1634 = swift_allocObject();
        sub_22BD62E7C(v1634);
        sub_22BD616A8();
        v6376 = swift_allocObject();
        *(v6376 + 16) = 8;
        sub_22BB322B0();
        swift_allocObject();
        sub_22BD5F7F4();
        *(v1635 + 16) = v1636;
        *(v1635 + 24) = v1535;
        sub_22BB322B0();
        v1637 = swift_allocObject();
        v1638 = sub_22BB96B4C(v1637);
        *(v1638 + 16) = v1639;
        *(v1638 + 24) = v1625;
        sub_22BD616A8();
        v6443 = swift_allocObject();
        sub_22BD639BC(v6443);
        sub_22BD616A8();
        v6436 = swift_allocObject();
        *(v6436 + 16) = 8;
        sub_22BB322B0();
        swift_allocObject();
        sub_22BD5F7AC();
        *(v1640 + 16) = v1641;
        *(v1640 + 24) = v6360;
        sub_22BB322B0();
        v1642 = swift_allocObject();
        sub_22BB3DEE8(v1642);
        sub_22BD616A8();
        v1643 = swift_allocObject();
        sub_22BD63D94(v1643);
        sub_22BD616A8();
        v6361 = swift_allocObject();
        LOBYTE(v6361[2].isa) = 8;
        sub_22BB322B0();
        swift_allocObject();
        sub_22BD5F794();
        *(v1644 + 16) = v1645;
        *(v1644 + 24) = oslogb;
        sub_22BB322B0();
        v1646 = swift_allocObject();
        sub_22BD60ED8(v1646);
        sub_22BD616A8();
        v6327 = swift_allocObject();
        *(v6327 + 16) = &qword_22BDBE390;
        sub_22BD616A8();
        v6344 = swift_allocObject();
        *(v6344 + 16) = 8;
        sub_22BB322B0();
        swift_allocObject();
        sub_22BD5F884();
        *(v1647 + 16) = v1648;
        *(v1647 + 24) = v1612;
        sub_22BB322B0();
        v1649 = swift_allocObject();
        sub_22BB97474(v1649);
        v1650 = sub_22BD62608();
        sub_22BB73BD0(v1650);
        sub_22BD6274C();
        sub_22BB3FE84(v6390);
        sub_22BB8E9FC(v6384);
        v1650[11] = v6380;
        v1650[12] = sub_22BB89C08;
        sub_22BD60694();
        v1650[15] = v1651;
        v1650[16] = sub_22BB89C08;
        v1650[17] = v1634;
        v1650[18] = sub_22BB89C08;
        sub_22BB97130(v6376);
        v1650[21] = v6372;
        v1650[22] = sub_22BB89C08;
        sub_22BB3FC00(v6443);
        v1650[27] = v1642;
        v1650[28] = sub_22BB89C08;
        v1650[29] = v1606;
        v1650[30] = sub_22BB89C08;
        v1650[31] = v6361;
        v1650[32] = sub_22BB89C7C;
        sub_22BB758F0();
        sub_22BB6F990();
        sub_22BB97190();
        v1650[39] = v1649;
        oslogc = v1652;

        v6329 = v1634;

        if (os_log_type_enabled(v6348, v6331))
        {
          sub_22BB67968(62);
          v1653 = sub_22BD64704();
          *(v17 + 2376) = 0;
          *(v17 + 2384) = v1653;
          sub_22BD62548();
          *(v17 + 1520) = oslogc;
          v1654 = sub_22BBDB8F4();
          v195 = v6408;
          sub_22BB67984(v1654, v1655, v1656, v1657);
          if (!v6408)
          {

            sub_22BB96A04();
            *(v17 + 1520) = v6390;
            v1658 = sub_22BBDB8F4();
            sub_22BB67984(v1658, v1659, v1660, v1661);

            sub_22BB70204();
            *(v17 + 1520) = v6384;
            v1662 = sub_22BBDB8F4();
            sub_22BB67984(v1662, v1663, v1664, v1665);

            sub_22BB96A04();
            *(v17 + 1520) = v6380;
            v1666 = sub_22BBDB8F4();
            sub_22BB67984(v1666, v1667, v1668, v1669);

            sub_22BB96A04();
            *(v17 + 1520) = v6402;
            v1670 = sub_22BBDB8F4();
            sub_22BB67984(v1670, v1671, v1672, v1673);

            sub_22BB70204();
            *(v17 + 1520) = v6395;
            v1674 = sub_22BBDB8F4();
            sub_22BB67984(v1674, v1675, v1676, v1677);

            sub_22BB96A04();
            *(v17 + 1520) = v1634;
            v1678 = sub_22BBDB8F4();
            sub_22BB67984(v1678, v1679, v1680, v1681);

            *(v17 + 1512) = sub_22BB89C08;
            *(v17 + 1520) = v6376;
            v1682 = sub_22BBDB8F4();
            sub_22BB67984(v1682, v1683, v1684, v1685);

            sub_22BD62B18();
            *(v17 + 1520) = v6372;
            v1686 = sub_22BBDB8F4();
            sub_22BB67984(v1686, v1687, v1688, v1689);

            *(v17 + 1512) = sub_22BB89C08;
            *(v17 + 1520) = v6443;
            v1690 = sub_22BBDB8F4();
            sub_22BB67984(v1690, v1691, v1692, v1693);

            *(v17 + 1512) = sub_22BB89C08;
            *(v17 + 1520) = v6436;
            v1694 = sub_22BBDB8F4();
            sub_22BB67984(v1694, v1695, v1696, v1697);

            sub_22BB70204();
            *(v17 + 1520) = v1642;
            v1698 = sub_22BBDB8F4();
            sub_22BB67984(v1698, v1699, v1700, v1701);

            *(v17 + 1512) = sub_22BB89C08;
            *(v17 + 1520) = v1606;
            v1702 = sub_22BBDB8F4();
            sub_22BB67984(v1702, v1703, v1704, v1705);

            sub_22BB96A04();
            *(v17 + 1520) = v6361;
            v1706 = sub_22BBDB8F4();
            sub_22BB67984(v1706, v1707, v1708, v1709);

            sub_22BB70204();
            *(v17 + 1520) = v1625;
            v1710 = sub_22BBDB8F4();
            sub_22BB67984(v1710, v1711, v1712, v1713);

            sub_22BB96A04();
            *(v17 + 1520) = v6327;
            v1714 = sub_22BBDB8F4();
            sub_22BB67984(v1714, v1715, v1716, v1717);

            sub_22BB96A04();
            *(v17 + 1520) = v6344;
            v1718 = sub_22BBDB8F4();
            sub_22BB67984(v1718, v1719, v1720, v1721);

            sub_22BB70204();
            *(v17 + 1520) = v1649;
            v1722 = sub_22BBDB8F4();
            sub_22BB67984(v1722, v1723, v1724, v1725);
            sub_22BB96A7C();

            sub_22BD63EC8(&dword_22BB2C000, v6348, v6331, "[SessionCoordinator %{public}s] | [TX %{public}s] Internal transaction turned in with %{public}ld events. originatingSpanQueryEventId: %s, latestQueryEventId: %s, newQueryEventId: %s");
            sub_22BD64FB0();
            sub_22BB30458();
            sub_22BB679C0();
          }

          goto LABEL_348;
        }

        v1726 = *(v17 + 4056);
        sub_22BD6256C();

        v1727 = sub_22BB500C0();
        v1728(v1727);
        v1729 = sub_22BD63944();
        v1730 = &qword_27D8E3218;
        sub_22BB3CD70(v1729, v1731, &qword_27D8E3218, &qword_22BDBE390);
        v1732 = sub_22BB53C48();
        v1734 = sub_22BD63AAC(v1732, v1733);
        sub_22BD6383C(v1734, v17 + 448);
        v1735 = sub_22BB3A190();
        if (!sub_22BB3AA28(v1735, v1736, v1726))
        {
          sub_22BDB8F24();
        }

        swift_endAccess();
        v1737 = *(v17 + 3776);
        v195 = *(v17 + 3768);
        v1738 = *(v17 + 3360);
        v1739 = *(v17 + 3344);
        v1740 = *(v17 + 3312);
        v1741 = sub_22BB3A9D4();
        sub_22BB336D0(v1741, v1742, 1, v1740);
        v1743 = *(v1739 + 48);
        v1744 = sub_22BB31F54();
        sub_22BD63AAC(v1744, v1745);
        sub_22BD63AAC(v195, v1738 + v1743);
        v1746 = sub_22BB3A190();
        v1748 = sub_22BB3AA28(v1746, v1747, v1740);
        v1749 = *(v17 + 3312);
        if (v1748 == 1)
        {
          sub_22BB325EC(*(v17 + 3768), &qword_27D8E3218, &qword_22BDBE390);
          v1737 = &qword_22BDBE390;
          sub_22BD62A7C();
          sub_22BB325EC(v1750, v1751, v1752);
          sub_22BBBFF9C(v1738 + v1743);
          v1753 = v6418;
          if (v149)
          {
            sub_22BD62A7C();
            sub_22BB325EC(v1754, v1755, v1756);
            v1757 = 1;
            goto LABEL_277;
          }
        }

        else
        {
          sub_22BD63AAC(*(v17 + 3360), *(v17 + 3760));
          sub_22BD618B8();
          sub_22BB3AA28(v1818, v1819, v1820);
          sub_22BD64234();
          if (!v149)
          {
            v6445 = *(v17 + 3360);
            v1889 = *(v17 + 3320);
            v1730 = *(v17 + 3312);
            v1890 = sub_22BBC0658();
            v1891(v1890);
            sub_22BB30DC4();
            v1893 = sub_22BB3B194(&unk_28142DD40, v1892);
            v1757 = sub_22BB97518(v1893);
            v1894 = *(v1889 + 8);
            v1895 = sub_22BB32E04();
            v1894(v1895);
            sub_22BB325EC(v195, &qword_27D8E3218, v1737);
            sub_22BB325EC(v1739, &qword_27D8E3218, v1737);
            v1896 = sub_22BD6220C();
            v1894(v1896);
            sub_22BB325EC(v6445, &qword_27D8E3218, v1737);
            v1753 = v6418;
            goto LABEL_277;
          }

          v1821 = sub_22BD00E3C();
          sub_22BB325EC(v1821, v1822, v1737);
          v1823 = sub_22BB32E04();
          sub_22BB325EC(v1823, v1824, v1737);
          v1825 = sub_22BB3627C();
          v1826(v1825);
          v1753 = v6418;
        }

        sub_22BB325EC(*(v17 + 3360), &qword_27D8E6510, &qword_22BDCE418);
        v1757 = 0;
LABEL_277:
        name[16] = v1757 & 1;
        *(v1753 + 16) = v1757 & 1;
        sub_22BDB8404();
        sub_22BB89B88();
        v1897 = sub_22BD64B48();
        sub_22BBC03CC(v1897, v1898, v1899, v1757);
        sub_22BD61FB4();

        if (v1749)
        {
          v1749 = *(v17 + 2496);
          sub_22BB707F8((name + 16), v17 + 568);
          v1737 = 1;
          name[16] = 1;
          sub_22BB707F8(v1753 + 16, v17 + 640);
          *(v1753 + 16) = 1;
          sub_22BD641A4();
          if (v279)
          {
            __break(1u);
            goto LABEL_406;
          }

          *(*(v17 + 2496) + *(v17 + 4504)) = v1900;
        }

        sub_22BD62768();
        sub_22BDB63E4();
        sub_22BB322B0();
        swift_allocObject();
        sub_22BBBEE48();
        *(v1901 + 16) = v1902;
        *(v1901 + 24) = v195;
        sub_22BB366B8();
        v1903 = swift_allocObject();
        sub_22BD63080(v1903);
        sub_22BB322B0();
        swift_allocObject();
        sub_22BBC0500();
        *(v1904 + 16) = v1905;
        *(v1904 + 24) = v1903;

        v6396 = sub_22BDB77C4();
        v6377 = sub_22BDBB134();
        sub_22BD616A8();
        v6427 = swift_allocObject();
        sub_22BD6250C(v6427);
        sub_22BD616A8();
        v1906 = swift_allocObject();
        v1907 = sub_22BD62C10(v1906);
        sub_22BB322B0();
        swift_allocObject();
        sub_22BB3E0C4();
        *(v1908 + 16) = v1909;
        *(v1908 + 24) = v1737;
        sub_22BB322B0();
        v1910 = swift_allocObject();
        v6403 = sub_22BB3DEE8(v1910);
        sub_22BD616A8();
        v6367 = swift_allocObject();
        LOBYTE(v6367[2].isa) = v195;
        sub_22BD616A8();
        v1911 = swift_allocObject();
        *(v1911 + 16) = v1730;
        sub_22BB322B0();
        swift_allocObject();
        sub_22BB756B0();
        *(v1912 + 16) = v1913;
        *(v1912 + 24) = v1749;
        sub_22BB322B0();
        v1914 = swift_allocObject();
        sub_22BB3DEE8(v1914);
        sub_22BD616A8();
        v6379 = swift_allocObject();
        LOBYTE(v6379[2].isa) = 0;
        sub_22BD616A8();
        v6363 = swift_allocObject();
        sub_22BBD19F8(v6363);
        sub_22BB322B0();
        swift_allocObject();
        sub_22BD5F7C4();
        *(v1915 + 16) = v1916;
        *(v1915 + 24) = name;
        sub_22BB322B0();
        v1917 = swift_allocObject();
        sub_22BD5F670(v1917);
        sub_22BB322B0();
        v1918 = swift_allocObject();
        sub_22BB95B9C(v1918);
        sub_22BB322B0();
        v1919 = swift_allocObject();
        v6435 = sub_22BD60574(v1919);
        sub_22BD616A8();
        v6391 = swift_allocObject();
        *(v6391 + 16) = 0;
        sub_22BD616A8();
        v6385 = swift_allocObject();
        *(v6385 + 16) = v1737;
        sub_22BB322B0();
        swift_allocObject();
        sub_22BD5F7C4();
        *(v1920 + 16) = v1921;
        *(v1920 + 24) = v6418;
        sub_22BB322B0();
        v1922 = swift_allocObject();
        sub_22BD5F68C(v1922);
        sub_22BB322B0();
        v1923 = swift_allocObject();
        sub_22BB53C68(v1923);
        sub_22BB322B0();
        v1924 = swift_allocObject();
        sub_22BB97728(v1924);
        v1925 = sub_22BD63C10();
        sub_22BB3E214(v1925);
        sub_22BD60544(v6427);
        v1926 = v1907;
        *(v1925 + 56) = v1907;
        *(v1925 + 64) = sub_22BB89C7C;
        *(v1925 + 72) = v1910;
        *(v1925 + 80) = sub_22BB89C08;
        v1927 = v6367;
        sub_22BD6286C();
        *(v1925 + 104) = v1911;
        *(v1925 + 112) = sub_22BB89C7C;
        *(v1925 + 120) = v1914;
        *(v1925 + 128) = sub_22BB89C08;
        v1753 = v6379;
        *(v1925 + 136) = v6379;
        *(v1925 + 144) = sub_22BB89C08;
        *(v1925 + 152) = v6363;
        *(v1925 + 160) = sub_22BD5F268;
        *(v1925 + 168) = v1919;
        *(v1925 + 176) = sub_22BB89C08;
        *(v1925 + 184) = v6391;
        *(v1925 + 192) = sub_22BB89C08;
        *(v1925 + 200) = v6385;
        *(v1925 + 208) = sub_22BD5F650;
        *(v1925 + 216) = v1924;

        v6418 = v1914;

        if (os_log_type_enabled(v6396, v6377))
        {
          sub_22BB67968(34);
          v1928 = sub_22BD62464();
          *(v17 + 2328) = 0;
          *(v17 + 2336) = v1928;
          sub_22BD624D0(v6385);
          *(v17 + 1424) = v6427;
          v1929 = sub_22BB95784();
          sub_22BB67984(v1929, v1930, v1931, v1932);
          if (!v6408)
          {

            sub_22BB69C84();
            *(v17 + 1424) = v1926;
            v1933 = sub_22BB95784();
            sub_22BB67984(v1933, v1934, v1935, v1936);

            sub_22BD6289C();
            *(v17 + 1424) = v6403;
            v1937 = sub_22BB95784();
            sub_22BB67984(v1937, v1938, v1939, v1940);

            sub_22BB69C84();
            *(v17 + 1424) = v6367;
            v1941 = sub_22BB95784();
            sub_22BB67984(v1941, v1942, v1943, v1944);

            *(v17 + 1416) = sub_22BB89C08;
            *(v17 + 1424) = v1911;
            v1945 = sub_22BB95784();
            sub_22BB67984(v1945, v1946, v1947, v1948);

            *(v17 + 1416) = sub_22BB89C7C;
            *(v17 + 1424) = v1914;
            v1949 = sub_22BB95784();
            sub_22BB67984(v1949, v1950, v1951, v1952);

            *(v17 + 1416) = sub_22BB89C08;
            *(v17 + 1424) = v6379;
            v1953 = sub_22BB95784();
            sub_22BB67984(v1953, v1954, v1955, v1956);

            *(v17 + 1416) = sub_22BB89C08;
            *(v17 + 1424) = v6363;
            v1957 = sub_22BB95784();
            sub_22BB67984(v1957, v1958, v1959, v1960);

            sub_22BD62824();
            *(v17 + 1424) = v6435;
            v1961 = sub_22BB95784();
            sub_22BB67984(v1961, v1962, v1963, v1964);

            *(v17 + 1416) = sub_22BB89C08;
            *(v17 + 1424) = v6391;
            v1965 = sub_22BB95784();
            sub_22BB67984(v1965, v1966, v1967, v1968);

            sub_22BB69C84();
            *(v17 + 1424) = v6385;
            v1969 = sub_22BB95784();
            sub_22BB67984(v1969, v1970, v1971, v1972);

            sub_22BB8EA6C();
            *(v17 + 1424) = v1924;
            v1973 = sub_22BB95784();
            sub_22BB67984(v1973, v1974, v1975, v1976);
            sub_22BD630C0();
            sub_22BD65218();
            sub_22BD65458(&dword_22BB2C000, v6396, v6377, "[SessionCoordinator %{public}s] | [TX %{public}s] workCausationAllowed: %{BOOL}d, allowedToSendToClient: %{BOOL}d");
            swift_arrayDestroy();
            sub_22BB2F194();
            sub_22BB679C0();
          }

          goto LABEL_361;
        }

        v16 = *(v17 + 4048);
        sub_22BD6256C();
        name = *(v17 + 3800);
        oslog = *(v17 + 3680);
        v6374 = *(v17 + 3416);

        sub_22BD61DF4(v6363[1].isa);
        v1977();
        sub_22BB325EC(oslog, &unk_27D8E69E0, &qword_22BDC1660);
        sub_22BB325EC(name, &qword_27D8E3218, &qword_22BDBE390);
        sub_22BB33E70();
        sub_22BB34648();
        v195 = v6408;
        sub_22BD62CC4();
        v1978 = v6425;
        v12 = v6316;
        v306 = v6314;
LABEL_295:
        *(v17 + 4696) = v6420;
        *(v17 + 4688) = v6421;
        *(v17 + 4680) = v306;
        sub_22BB75860();
        if (v1978)
        {
          sub_22BB707F8(v6417 + 16, v17 + 664);

          v3282 = swift_task_alloc();
          v3283 = sub_22BB702D8(v3282);
          *v3283 = v3284;
          sub_22BB34F38(v3283);
          sub_22BB33430();

          sub_22BB95A50();
          return;
        }

        v2044 = *(v17 + 4632);
        sub_22BB31B88();
        swift_beginAccess();
        v2045 = sub_22BD64644();
        sub_22BD45DE8(v2045);
        sub_22BD61FB4();

        if (v1925)
        {
          v6425 = v195;
          v6446 = *(v17 + 4528);
          sub_22BD63BF4(v2046);
          sub_22BB322B0();
          swift_allocObject();
          sub_22BBC0284();
          *(v2047 + 16) = v2048;
          *(v2047 + 24) = v1753;
          sub_22BB366B8();
          v2049 = swift_allocObject();
          sub_22BD64DEC(v2049);
          sub_22BB322B0();
          v12 = swift_allocObject();
          sub_22BD5F6EC(v12);

          v6421 = sub_22BDB77C4();
          sub_22BDBB0F4();
          sub_22BD616A8();
          v2050 = swift_allocObject();
          sub_22BD634DC(v2050);
          sub_22BD616A8();
          v2051 = swift_allocObject();
          sub_22BD61688(v2051);
          sub_22BB322B0();
          v1753 = swift_allocObject();
          sub_22BBC0614(v1753);
          sub_22BB322B0();
          v2052 = swift_allocObject();
          sub_22BD6052C(v2052);
          sub_22BD616A8();
          v1927 = swift_allocObject();
          *(v1927 + 16) = v2044;
          sub_22BD616A8();
          v2053 = swift_allocObject();
          *(v2053 + 16) = v1925;
          sub_22BB322B0();
          swift_allocObject();
          sub_22BB756B0();
          *(v2054 + 16) = v2055;
          *(v2054 + 24) = v12;
          sub_22BB322B0();
          v2056 = swift_allocObject();
          sub_22BB51370(v2056);
          v2057 = sub_22BB970B4(v6446);
          sub_22BB31444(v2057);
          v2058[4] = v2059;
          v2058[5] = v306;
          v2058[6] = sub_22BB89C08;
          v2058[7] = v16;
          v2058[8] = sub_22BB89C7C;
          v2058[9] = v2052;
          v2058[10] = sub_22BB89C08;
          v2058[11] = v1927;
          v2058[12] = sub_22BB89C08;
          v2058[13] = v2053;
          v2058[14] = sub_22BB89C7C;
          v2058[15] = v1753;

          sub_22BB93DBC();
          if (os_log_type_enabled(v6421, v2060))
          {
            sub_22BB67968(22);
            v2061 = sub_22BBBFF34();
            sub_22BBB6144(v2061);
            sub_22BBBEB6C();
            *(v17 + 2128) = v2062;
            *(v17 + 1176) = sub_22BB89C08;
            *(v17 + 1184) = v306;
            v2063 = sub_22BB32E7C();
            sub_22BB67984(v2063, v2064, v2065, v2066);
            if (!v6425)
            {

              sub_22BD604FC();
              *(v17 + 1184) = v16;
              v2067 = sub_22BB32E7C();
              sub_22BB67984(v2067, v2068, v2069, v2070);

              sub_22BD60514();
              *(v17 + 1184) = v2052;
              v2071 = sub_22BB32E7C();
              sub_22BB67984(v2071, v2072, v2073, v2074);

              sub_22BD604FC();
              *(v17 + 1184) = v1927;
              v2075 = sub_22BB32E7C();
              sub_22BB67984(v2075, v2076, v2077, v2078);

              sub_22BD604FC();
              *(v17 + 1184) = v2053;
              v2079 = sub_22BB32E7C();
              sub_22BB67984(v2079, v2080, v2081, v2082);

              *(v17 + 1176) = sub_22BB89C7C;
              *(v17 + 1184) = v1753;
              v2083 = sub_22BB32E7C();
              sub_22BB67984(v2083, v2084, v2085, v2086);
              sub_22BD62094();

              sub_22BB96D8C();
              sub_22BD636C8(&dword_22BB2C000, v6421, v2087, "[SessionCoordinator %{public}s] | [TX %{public}s] Transaction is advisory.");
              sub_22BD61EE4();
              sub_22BB89BBC();
              sub_22BB679C0();
            }

            goto LABEL_408;
          }

          sub_22BD62624();

          v2088 = sub_22BB3A9D4();
          v6435(v2088);
          v195 = v6425;
          v2089 = sub_22BB897B0();
          sub_22BB707F8(v2089, v17 + 760);
          sub_22BD62070();
          sub_22BD64288();
        }

        v2090 = sub_22BBC3B90();
        sub_22BD45220(v2090);
        sub_22BD61FB4();

        v6439 = v195;
        if (v1925)
        {
          sub_22BD61714();
          v2091 = *(v17 + 4024);
          sub_22BD62768();
          sub_22BDB63E4();
          sub_22BB322B0();
          v2092 = swift_allocObject();
          sub_22BB3E014(v2092);
          sub_22BB366B8();
          v2093 = swift_allocObject();
          sub_22BD63DE4(v2093);
          sub_22BB322B0();
          v2094 = swift_allocObject();
          sub_22BB89B20(v2094);
          v6427 = sub_22BDB77C4();
          sub_22BDBB0F4();
          sub_22BD616A8();
          v2095 = swift_allocObject();
          sub_22BB3CE80(v2095);
          sub_22BD616A8();
          v2096 = swift_allocObject();
          sub_22BD624C4(v2096);
          sub_22BB322B0();
          v2097 = swift_allocObject();
          sub_22BBBE860(v2097);
          sub_22BB322B0();
          v2098 = swift_allocObject();
          sub_22BB3AE40(v2098);
          sub_22BD616A8();
          v2099 = swift_allocObject();
          sub_22BD636BC(v2099);
          sub_22BD616A8();
          v2100 = swift_allocObject();
          sub_22BBD1A04(v2100);
          sub_22BB322B0();
          v2101 = swift_allocObject();
          sub_22BBBE888(v2101);
          sub_22BB322B0();
          v2102 = swift_allocObject();
          v2103 = sub_22BD60980(v2102);
          sub_22BB34620(v2103);
          v2104[4] = v2105;
          v2104[5] = v1753;
          v2104[6] = sub_22BB89C08;
          v2104[7] = v2096;
          v2104[8] = sub_22BB89C7C;
          v2104[9] = v2091;
          v2104[10] = sub_22BB89C08;
          v2104[11] = v16;
          v2104[12] = sub_22BB89C08;
          v2104[13] = v306;
          v2104[14] = sub_22BB89C7C;
          v2104[15] = v12;
          sub_22BD6443C();

          v1927 = sub_22BD60DFC();
          if (os_log_type_enabled(v1927, v2106))
          {
            sub_22BB67968(22);
            v2107 = sub_22BBBFF34();
            sub_22BD5FA78(v2107);
            *(v17 + 1104) = v195;
            v2108 = sub_22BB71F54();
            sub_22BB67984(v2108, v2109, v2110, v2111);
            if (!v195)
            {

              *(v17 + 1096) = sub_22BB89C08;
              *(v17 + 1104) = v2096;
              v2112 = sub_22BB71F54();
              sub_22BB67984(v2112, v2113, v2114, v2115);

              *(v17 + 1096) = sub_22BB89C7C;
              *(v17 + 1104) = v2091;
              v2116 = sub_22BB71F54();
              sub_22BB67984(v2116, v2117, v2118, v2119);

              sub_22BBD2250();
              *(v17 + 1104) = v16;
              v2120 = sub_22BB71F54();
              sub_22BB67984(v2120, v2121, v2122, v2123);

              sub_22BBD2250();
              *(v17 + 1104) = v306;
              v2124 = sub_22BB71F54();
              sub_22BB67984(v2124, v2125, v2126, v2127);

              *(v17 + 1096) = sub_22BB89C7C;
              *(v17 + 1104) = v12;
              v2128 = sub_22BB71F54();
              sub_22BB67984(v2128, v2129, v2130, v2131);
              sub_22BD643FC();
              sub_22BD61B3C();
              sub_22BD62590();
              sub_22BD636C8(v2132, v2133, v2134, "[SessionCoordinator %{public}s] | [TX %{public}s] Transaction is work-allowing advisory.");
              sub_22BBBE7DC();
              sub_22BB32238();
              sub_22BB679C0();
            }

            goto LABEL_367;
          }

          sub_22BD6204C();

          v2135 = sub_22BD61130();
          v2136(v2135);
          sub_22BD64BF8();
          v6439 = v2137;
          v2138 = sub_22BB897B0();
          sub_22BB707F8(v2138, v17 + 880);
          sub_22BD618EC();
          *(v2091 + 16) = v12;
        }

        else
        {
          v6379 = v195;
        }

        sub_22BB966A8();
        v2139 = sub_22BB94E5C();
        v2140(v2139);
        sub_22BDB96A4();
        v2141 = sub_22BB2F324();
        (v16)(v2141);
        v2142 = sub_22BB95A18();
        v34 = v6438;
        v2143 = (v17)(v2142);
        v2144 = sub_22BB2F0E0();
        v2145 = (v306)(v2144);
        if (v2143)
        {
          sub_22BD63228(v2145);
          sub_22BB322B0();
          v3286 = swift_allocObject();
          sub_22BB922D8(v3286);
          sub_22BB366B8();
          v3287 = swift_allocObject();
          sub_22BBBE07C(v3287);
          sub_22BB322B0();
          v3288 = swift_allocObject();
          sub_22BD60058(v3288);
          sub_22BDB77C4();
          LODWORD(v6427) = sub_22BDBB134();
          sub_22BD616A8();
          v3289 = swift_allocObject();
          sub_22BD62F80(v3289);
          sub_22BD616A8();
          v187 = swift_allocObject();
          sub_22BD61F00(v187);
          sub_22BB322B0();
          v3290 = swift_allocObject();
          sub_22BBC0614(v3290);
          sub_22BB322B0();
          swift_allocObject();
          sub_22BD5F74C();
          *(v3291 + 16) = v3292;
          *(v3291 + 24) = v3290;
          sub_22BD616A8();
          v3293 = swift_allocObject();
          sub_22BD64C40(v3293);
          sub_22BD616A8();
          v3294 = swift_allocObject();
          sub_22BB89CA8(v3294);
          sub_22BB322B0();
          v3295 = swift_allocObject();
          sub_22BBBD2AC(v3295);
          sub_22BB322B0();
          swift_allocObject();
          sub_22BD5F764();
          v3297 = sub_22BD620AC(v3296);
          sub_22BB348E0(v3297);
          v3298[4] = v3299;
          v3298[5] = v17;
          v3298[6] = sub_22BB89C08;
          v3298[7] = v187;
          v3298[8] = sub_22BB89C7C;
          v3298[9] = v6438;
          v3298[10] = sub_22BB89C08;
          v3298[11] = v1927;
          v3298[12] = sub_22BB89C08;
          v3298[13] = v12;
          v3298[14] = sub_22BB89C7C;
          v3298[15] = v1753;

          sub_22BD62518();
          if (os_log_type_enabled(v3295, v3300))
          {
            sub_22BB67968(22);
            v3301 = sub_22BBC01B4();
            *(v306 + 2040) = 0;
            *(v306 + 2048) = v3301;
            sub_22BD60D8C();
            *(v306 + 2032) = v3302;
            *(v306 + 1048) = sub_22BB89C08;
            *(v306 + 1056) = v17;
            v3303 = sub_22BD5FCD8();
            v195 = v6439;
            sub_22BB67984(v3303, v3304, v3305, v3306);
            if (v6439)
            {
LABEL_331:

              goto LABEL_332;
            }

            *(v306 + 1048) = sub_22BB89C08;
            *(v306 + 1056) = v187;
            v3377 = sub_22BD5FCD8();
            sub_22BB67984(v3377, v3378, v3379, v3380);

            *(v306 + 1048) = sub_22BB89C7C;
            *(v306 + 1056) = v6438;
            v3449 = sub_22BD5FCD8();
            sub_22BB67984(v3449, v3450, v3451, v3452);

            sub_22BD61044();
            *(v306 + 1056) = v1927;
            v3515 = sub_22BD5FCD8();
            sub_22BB67984(v3515, v3516, v3517, v3518);

            sub_22BB3B510();
            *(v3560 + 1048) = v3561;
            *(v3560 + 1056) = v12;
            sub_22BB73B1C(v3560);
LABEL_406:

            sub_22BB70564();
            *(v3597 + 1048) = v3598;
            *(v3597 + 1056) = v1753;
            sub_22BB73B1C(v3597);
            if (!v195)
            {
              sub_22BD63154();
              sub_22BB76660(&dword_22BB2C000, v3599, v3600, "[SessionCoordinator %{public}s] | [TX %{public}s] Transaction postcondition passed.");
              sub_22BD619D4();
              sub_22BD6193C();
              sub_22BB679C0();
            }

            goto LABEL_414;
          }

          sub_22BD631E4();

          v3307 = sub_22BD623D0();
          v3308(v3307);
          sub_22BD623C0();
          sub_22BB31B88();
          swift_beginAccess();
          sub_22BD64A14();
          sub_22BB31B88();
          swift_beginAccess();
          sub_22BD61A94();
          v17 = v306;
          if (!v149)
          {
            if (v3310)
            {
              sub_22BD65320(v3309);
              sub_22BB322B0();
              v3346 = swift_allocObject();
              sub_22BB351E8(v3346);
              sub_22BB366B8();
              v3347 = swift_allocObject();
              sub_22BD6227C(v3347);
              sub_22BB322B0();
              v3348 = swift_allocObject();
              sub_22BB52D3C(v3348);
              v6426 = sub_22BDB77C4();
              sub_22BDBB134();
              sub_22BD616A8();
              v3349 = swift_allocObject();
              sub_22BD60C88(v3349);
              sub_22BD616A8();
              v3350 = swift_allocObject();
              sub_22BD60EF4(v3350);
              sub_22BB322B0();
              v3316 = swift_allocObject();
              sub_22BB70160(v3316);
              sub_22BB322B0();
              swift_allocObject();
              sub_22BB97CD8();
              *(v3351 + 16) = v3352;
              *(v3351 + 24) = v3316;
              sub_22BD616A8();
              v3353 = swift_allocObject();
              sub_22BBBEC2C(v3353);
              sub_22BD616A8();
              v3354 = swift_allocObject();
              sub_22BBB7560(v3354);
              sub_22BB322B0();
              v3355 = swift_allocObject();
              sub_22BD602C4(v3355);
              sub_22BB322B0();
              swift_allocObject();
              sub_22BD5F89C();
              v3357 = sub_22BD617F4(v3356);
              sub_22BB3602C(v3357);
              v3358[6] = sub_22BB89C08;
              v3358[7] = v6438;
              v3358[8] = sub_22BB89C7C;
              v3358[9] = v187;
              v3358[10] = sub_22BB89C08;
              v3358[11] = v12;
              v3358[12] = sub_22BB89C08;
              v3358[13] = v1753;
              v3358[14] = sub_22BB89C7C;
              v3358[15] = v306;

              sub_22BBC0AE4();
              sub_22BBC23B0();

              if (sub_22BD61814())
              {
                sub_22BB67968(22);
                v3359 = sub_22BBC01B4();
                *(v306 + 1944) = 0;
                *(v306 + 1952) = v3359;
                sub_22BD60D8C();
                *(v306 + 1936) = v3360;
                *(v306 + 984) = sub_22BB89C08;
                *(v306 + 992) = v1927;
                v3361 = sub_22BD60164();
                v195 = v6439;
                sub_22BB67984(v3361, v3362, v3363, v3364);
                if (!v6439)
                {

                  *(v306 + 984) = sub_22BB89C08;
                  *(v306 + 992) = v6438;
                  v3365 = sub_22BD60164();
                  sub_22BB67984(v3365, v3366, v3367, v3368);

                  sub_22BB70564();
                  *(v3369 + 984) = v3370;
                  *(v3369 + 992) = v187;
                  sub_22BD611BC(v3369);

                  sub_22BB3B510();
                  *(v3371 + 984) = v3372;
                  *(v3371 + 992) = v6427;
                  sub_22BD611BC(v3371);

                  sub_22BB3B510();
                  *(v3373 + 984) = v3374;
                  *(v3373 + 992) = v6421;
                  sub_22BD611BC(v3373);

                  sub_22BB70564();
                  *(v3375 + 984) = v3376;
                  *(v3375 + 992) = v306;
                  sub_22BD611BC(v3375);
                  sub_22BD61A18();

                  v3345 = "[SessionCoordinator %{public}s] | [TX %{public}s] Transaction not allowed to cause work, but will be sent to client.";
                  goto LABEL_418;
                }

LABEL_367:

                goto LABEL_408;
              }

              goto LABEL_372;
            }

            sub_22BD652F0(v3309);
            sub_22BB322B0();
            v3412 = swift_allocObject();
            sub_22BB351E8(v3412);
            sub_22BB366B8();
            v3413 = swift_allocObject();
            sub_22BD6227C(v3413);
            sub_22BB322B0();
            v3414 = swift_allocObject();
            sub_22BB52D3C(v3414);
            v6426 = sub_22BDB77C4();
            sub_22BDBB134();
            sub_22BD616A8();
            v3415 = swift_allocObject();
            sub_22BD60C88(v3415);
            sub_22BD616A8();
            v3416 = swift_allocObject();
            sub_22BD60EF4(v3416);
            sub_22BB322B0();
            v3316 = swift_allocObject();
            sub_22BB70160(v3316);
            sub_22BB322B0();
            swift_allocObject();
            sub_22BB97CD8();
            *(v3417 + 16) = v3418;
            *(v3417 + 24) = v3316;
            sub_22BD616A8();
            v3419 = swift_allocObject();
            sub_22BBBEC2C(v3419);
            sub_22BD616A8();
            v3420 = swift_allocObject();
            sub_22BBB7560(v3420);
            sub_22BB322B0();
            v3421 = swift_allocObject();
            sub_22BD602C4(v3421);
            sub_22BB322B0();
            swift_allocObject();
            sub_22BD5F89C();
            v3423 = sub_22BD617F4(v3422);
            sub_22BB3602C(v3423);
            v3424[6] = sub_22BB89C08;
            v3424[7] = v6438;
            v3424[8] = sub_22BB89C7C;
            v3424[9] = v187;
            v3424[10] = sub_22BB89C08;
            v3424[11] = v12;
            v3424[12] = sub_22BB89C08;
            v3424[13] = v1753;
            v3424[14] = sub_22BB89C7C;
            v3424[15] = v306;

            sub_22BBC0AE4();
            sub_22BBC23B0();

            if (!sub_22BD61814())
            {
              goto LABEL_372;
            }

            sub_22BB67968(22);
            v3425 = sub_22BBC01B4();
            *(v306 + 1912) = 0;
            *(v306 + 1920) = v3425;
            sub_22BD60D8C();
            *(v306 + 1904) = v3426;
            *(v306 + 1016) = sub_22BB89C08;
            *(v306 + 1024) = v1927;
            v3427 = sub_22BD6013C();
            v195 = v6439;
            sub_22BB67984(v3427, v3428, v3429, v3430);
            if (v6439)
            {
              goto LABEL_367;
            }

LABEL_390:

            *(v17 + 1016) = sub_22BB89C08;
            *(v17 + 1024) = v34;
            v3545 = sub_22BD6013C();
            sub_22BB67984(v3545, v3546, v3547, v3548);
            if (v195)
            {

              goto LABEL_408;
            }

            sub_22BB70564();
            *(v3562 + 1016) = v3563;
            *(v3562 + 1024) = v187;
            sub_22BD6119C(v3562);

            sub_22BB3B510();
            *(v3601 + 1016) = v3602;
            *(v3601 + 1024) = v6427;
            sub_22BD6119C(v3601);

            sub_22BB3B510();
            *(v3607 + 1016) = v3608;
            *(v3607 + 1024) = v6421;
            sub_22BD6119C(v3607);

            sub_22BB70564();
            *(v3615 + 1016) = v3616;
            *(v3615 + 1024) = v306;
            sub_22BD6119C(v3615);
            sub_22BD61A18();

            v3345 = "[SessionCoordinator %{public}s] | [TX %{public}s] Transaction not allowed to cause work or be sent to client.";
LABEL_418:
            sub_22BD632D4(&dword_22BB2C000, v3343, v3344, v3345);
            sub_22BD619D4();
            sub_22BD6193C();
            sub_22BB679C0();
          }

          if ((v3310 & 1) == 0)
          {
            sub_22BD65308(v3309);
            sub_22BB322B0();
            v3381 = swift_allocObject();
            sub_22BB351E8(v3381);
            sub_22BB366B8();
            v3382 = swift_allocObject();
            sub_22BD6227C(v3382);
            sub_22BB322B0();
            v3383 = swift_allocObject();
            sub_22BB52D3C(v3383);
            v6426 = sub_22BDB77C4();
            sub_22BDBB134();
            sub_22BD616A8();
            v3384 = swift_allocObject();
            sub_22BD60C88(v3384);
            sub_22BD616A8();
            v3385 = swift_allocObject();
            sub_22BD60EF4(v3385);
            sub_22BB322B0();
            v3316 = swift_allocObject();
            sub_22BB70160(v3316);
            sub_22BB322B0();
            swift_allocObject();
            sub_22BB97CD8();
            *(v3386 + 16) = v3387;
            *(v3386 + 24) = v3316;
            sub_22BD616A8();
            v3388 = swift_allocObject();
            sub_22BBBEC2C(v3388);
            sub_22BD616A8();
            v3389 = swift_allocObject();
            sub_22BBB7560(v3389);
            sub_22BB322B0();
            v3390 = swift_allocObject();
            sub_22BD602C4(v3390);
            sub_22BB322B0();
            swift_allocObject();
            sub_22BD5F89C();
            v3392 = sub_22BD617F4(v3391);
            sub_22BB3602C(v3392);
            v3393[6] = sub_22BB89C08;
            v3393[7] = v6438;
            v3393[8] = sub_22BB89C7C;
            v3393[9] = v187;
            v3393[10] = sub_22BB89C08;
            v3393[11] = v12;
            v3393[12] = sub_22BB89C08;
            v3393[13] = v1753;
            v3393[14] = sub_22BB89C7C;
            v3393[15] = v306;

            sub_22BBC0AE4();
            sub_22BBC23B0();

            if (!sub_22BD61814())
            {
              goto LABEL_372;
            }

            sub_22BB67968(22);
            v3394 = sub_22BBC01B4();
            *(v306 + 1976) = 0;
            *(v306 + 1984) = v3394;
            sub_22BD60D8C();
            *(v306 + 1968) = v3395;
            *(v306 + 1560) = sub_22BB89C08;
            *(v306 + 1568) = v1927;
            v3396 = sub_22BD60150();
            v195 = v6439;
            sub_22BB67984(v3396, v3397, v3398, v3399);
            if (v6439)
            {
              goto LABEL_367;
            }

            *(v306 + 1560) = sub_22BB89C08;
            *(v306 + 1568) = v6438;
            v3400 = sub_22BD60150();
            sub_22BB67984(v3400, v3401, v3402, v3403);

            sub_22BB70564();
            *(v3404 + 1560) = v3405;
            *(v3404 + 1568) = v187;
            sub_22BB97758(v3404);

            sub_22BB3B510();
            *(v3406 + 1560) = v3407;
            *(v3406 + 1568) = v6427;
            sub_22BB97758(v3406);

            sub_22BB3B510();
            *(v3408 + 1560) = v3409;
            *(v3408 + 1568) = v6421;
            sub_22BB97758(v3408);

            sub_22BB70564();
            *(v3410 + 1560) = v3411;
            *(v3410 + 1568) = v306;
            sub_22BB97758(v3410);
            sub_22BD61A18();

            v3345 = "[SessionCoordinator %{public}s] | [TX %{public}s] Transaction allowed to cause work, but will not be sent to client.";
            goto LABEL_418;
          }

          sub_22BD65368(v3309);
          sub_22BB322B0();
          v3311 = swift_allocObject();
          sub_22BB351E8(v3311);
          sub_22BB366B8();
          v3312 = swift_allocObject();
          sub_22BD6227C(v3312);
          sub_22BB322B0();
          v3313 = swift_allocObject();
          sub_22BB52D3C(v3313);
          v6426 = sub_22BDB77C4();
          sub_22BDBB134();
          sub_22BD616A8();
          v3314 = swift_allocObject();
          sub_22BD60C88(v3314);
          sub_22BD616A8();
          v3315 = swift_allocObject();
          sub_22BD60EF4(v3315);
          sub_22BB322B0();
          v3316 = swift_allocObject();
          sub_22BB70160(v3316);
          sub_22BB322B0();
          swift_allocObject();
          sub_22BB97CD8();
          *(v3317 + 16) = v3318;
          *(v3317 + 24) = v3316;
          sub_22BD616A8();
          v3319 = swift_allocObject();
          sub_22BBBEC2C(v3319);
          sub_22BD616A8();
          v3320 = swift_allocObject();
          sub_22BBB7560(v3320);
          sub_22BB322B0();
          v3321 = swift_allocObject();
          sub_22BD602C4(v3321);
          sub_22BB322B0();
          swift_allocObject();
          sub_22BD5F89C();
          v3323 = sub_22BD617F4(v3322);
          sub_22BB3602C(v3323);
          v3324[6] = sub_22BB89C08;
          v3324[7] = v6438;
          v3324[8] = sub_22BB89C7C;
          v3324[9] = v187;
          v3324[10] = sub_22BB89C08;
          v3324[11] = v12;
          v3324[12] = sub_22BB89C08;
          v3324[13] = v1753;
          v3324[14] = sub_22BB89C7C;
          v3324[15] = v306;

          sub_22BBC0AE4();
          sub_22BBC23B0();

          if (sub_22BD61814())
          {
            sub_22BB67968(22);
            v3325 = sub_22BBC01B4();
            *(v306 + 2008) = 0;
            *(v306 + 2016) = v3325;
            sub_22BD60D8C();
            *(v306 + 2000) = v3326;
            *(v306 + 1032) = sub_22BB89C08;
            *(v306 + 1040) = v1927;
            v3327 = sub_22BD60178();
            v195 = v6439;
            sub_22BB67984(v3327, v3328, v3329, v3330);
            if (!v6439)
            {

              *(v306 + 1032) = sub_22BB89C08;
              *(v306 + 1040) = v6438;
              v3331 = sub_22BD60178();
              sub_22BB67984(v3331, v3332, v3333, v3334);

              sub_22BB70564();
              *(v3335 + 1032) = v3336;
              *(v3335 + 1040) = v187;
              sub_22BD611DC(v3335);

              sub_22BB3B510();
              *(v3337 + 1032) = v3338;
              *(v3337 + 1040) = v6427;
              sub_22BD611DC(v3337);

              sub_22BB3B510();
              *(v3339 + 1032) = v3340;
              *(v3339 + 1040) = v6421;
              sub_22BD611DC(v3339);

              sub_22BB70564();
              *(v3341 + 1032) = v3342;
              *(v3341 + 1040) = v306;
              sub_22BD611DC(v3341);
              sub_22BD61A18();

              v3345 = "[SessionCoordinator %{public}s] | [TX %{public}s] Transaction allowed to cause work and be sent to client.";
              goto LABEL_418;
            }

            goto LABEL_367;
          }

LABEL_372:
          v3453 = *(v306 + 3840);

          v3454 = sub_22BB37074();
          v6435(v3454);
          v3455 = sub_22BB756F4(v6439);
          if (v3455 == v3456)
          {
LABEL_379:
            sub_22BBE6DE0(&qword_27D8E6570, &qword_22BDCFBF0);
            sub_22BB97200();
            v3459 = sub_22BDBAB14();
            sub_22BD631C0(v3459);

            v3460 = swift_task_alloc();
            v3461 = sub_22BD64B78(v3460);
            *v3461 = v3462;
            sub_22BB34818(v3461);
            sub_22BD61554();
            sub_22BB33430();

            sub_22BD59BE8(v3463);
            return;
          }

          sub_22BB97DE8();
          if (v3457 != v279)
          {
            __break(1u);
          }

          else if (v3316 < v3453)
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
              v3458 = sub_22BB97B18();
              sub_22BB3CD70(v3458, v187, &qword_27D8E3218, &qword_22BDBE390);
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

            while (!v149);
            swift_endAccess();
            goto LABEL_379;
          }

          __break(1u);
LABEL_421:
          sub_22BB757D4();

          sub_22BDB7714();
          sub_22BD61424();
          sub_22BD6465C(v3624, v3625, v3626, v3627, v3628, v3629);

          sub_22BD619D4();
          sub_22BD6193C();
          sub_22BB679C0();
        }

        sub_22BD62FC4();
        sub_22BDB63E4();
        sub_22BB322B0();
        v2146 = swift_allocObject();
        sub_22BB3CF50(v2146);
        sub_22BB366B8();
        v2147 = swift_allocObject();
        sub_22BD63DE4(v2147);
        sub_22BB322B0();
        swift_allocObject();
        sub_22BD60754();
        *(v2148 + 16) = v2149;
        *(v2148 + 24) = v1753;

        v6427 = sub_22BDB77C4();
        LODWORD(v6425) = sub_22BDBB134();
        sub_22BD616A8();
        v2150 = swift_allocObject();
        v18 = v6438;
        sub_22BB3CE80(v2150);
        sub_22BD616A8();
        v2151 = swift_allocObject();
        sub_22BD61688(v2151);
        sub_22BB322B0();
        swift_allocObject();
        sub_22BB9710C();
        *(v2152 + 16) = v2153;
        *(v2152 + 24) = v2146;
        sub_22BB322B0();
        swift_allocObject();
        sub_22BD5F734();
        *(v2154 + 16) = v2155;
        *(v2154 + 24) = v195;
        sub_22BD616A8();
        v2156 = swift_allocObject();
        sub_22BD64C7C(v2156);
        sub_22BD616A8();
        v2157 = swift_allocObject();
        sub_22BBD1A04(v2157);
        sub_22BB322B0();
        v2158 = swift_allocObject();
        sub_22BBBE888(v2158);
        sub_22BB322B0();
        v2159 = swift_allocObject();
        v30 = sub_22BD60980(v2159);
        sub_22BB34620(v30);
        v2160[4] = v2161;
        v2160[5] = v1753;
        v2160[6] = sub_22BB89C08;
        v2160[7] = v16;
        v2160[8] = sub_22BB89C7C;
        v2160[9] = v17;
        v2160[10] = sub_22BB89C08;
        v2160[11] = v6438;
        v2160[12] = sub_22BB89C08;
        v2160[13] = v306;
        v2160[14] = sub_22BB89C7C;
        v2160[15] = v12;
        sub_22BD6443C();

        v14 = sub_22BD60DFC();
        if (os_log_type_enabled(v14, v2162))
        {
          sub_22BD64EB0();
          v2163 = sub_22BD62464();
          sub_22BB975AC(v2163);
          if (!v195)
          {

            v6438[169].isa = sub_22BB89C08;
            v6438[170].isa = v16;
            v2164 = sub_22BD6020C();
            sub_22BB67984(v2164, v2165, v2166, v2167);
            sub_22BD653E0();
            v6438[169].isa = sub_22BB89C7C;
            v6438[170].isa = v30;
            v2168 = sub_22BD6020C();
            sub_22BB67984(v2168, v2169, v2170, v2171);

            sub_22BD60444();

            sub_22BD60810();

            sub_22BB6FD50();
            sub_22BD624B8();

            sub_22BD61B3C();
            sub_22BD62590();
            sub_22BD63F58(v2172, v2173, v2174, "[SessionCoordinator %{public}s] | [TX %{public}s] Transaction postcondition FAILED. It will be skipped.");
            sub_22BD62500();
            swift_arrayDestroy();
            sub_22BB30458();
            sub_22BB679C0();
          }

          goto LABEL_367;
        }

        sub_22BB3FB4C();
        v15 = v6438[479].isa;

        v2175 = sub_22BD61130();
        v2176(v2175);
        v17 = v6438;
        sub_22BD600DC();

        v2177 = sub_22BB97B18();
        sub_22BB325EC(v2177, &qword_27D8E3218, &qword_22BDBE390);
        sub_22BD5FA08();

        v2178 = sub_22BD00AA4();
        sub_22BB74044(v2178, v2179, v6438);

        sub_22BB35CBC();
        sub_22BB34648();
        v34 = v6439;
        goto LABEL_5;
    }
  }
}