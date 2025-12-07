uint64_t sub_22C7E3DB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a3)
  {

    v7 = sub_22C36CA88();
    sub_22C7DA844(v7, v8, a1, a2, v9);
    v11 = v10;
    v13 = v12;
    v15 = v14;
  }

  else
  {
    v17 = sub_22C36CA88();
    result = sub_22C7D9010(v17, v18, a1, a2);
    v11 = result;
    v13 = v19;
    v15 = 0;
  }

  *a4 = v11;
  *(a4 + 8) = v13 & 1;
  *(a4 + 16) = v15;
  return result;
}

uint64_t sub_22C7E3E80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RetrievedToolWithAttribution(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C7E3EE4()
{
  sub_22C36D5EC();
  v0 = swift_task_alloc();
  v1 = sub_22C36D860(v0);
  *v1 = v2;
  v1[1] = sub_22C382AF4;
  sub_22C7E47E4();
  sub_22C7E4EBC();

  return sub_22C7CD7C8(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_22C7E3FB0()
{
  sub_22C36D5EC();
  sub_22C7E4CB4();
  v0 = swift_task_alloc();
  v1 = sub_22C36D860(v0);
  *v1 = v2;
  v1[1] = sub_22C46BC08;
  sub_22C7E47E4();
  sub_22C7E4ED0();

  return sub_22C7C9354(v3, v4, v5, v6, v7);
}

uint64_t sub_22C7E406C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BAEC8, &unk_22C90D770);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_22C7E40DC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  if (a3)
  {

    v10 = sub_22C7DBD88(a4, a1, a2, (a3 + 16));
    v12 = v11;
    v14 = v13;
  }

  else
  {
    sub_22C7D9AE0();
    v10 = v15;
    v12 = v16;
    v14 = 0;
  }

  *a5 = v10;
  *(a5 + 8) = v12 & 1;
  *(a5 + 16) = v14;
}

uint64_t sub_22C7E4208(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C369A48();
  v4(v3);
  sub_22C36985C();
  v5 = sub_22C36BA00();
  v6(v5);
  return a2;
}

uint64_t sub_22C7E4260(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C369A48();
  v4(v3);
  sub_22C36985C();
  v5 = sub_22C36BA00();
  v6(v5);
  return a2;
}

uint64_t sub_22C7E42B8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_22C36985C();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_22C7E4310(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 sub_22C7E43B8()
{
  v1 = *(v0 - 208);
  *(v0 - 160) = *(v0 - 224);
  *(v0 - 144) = v1;
  result = *(v0 - 192);
  *(v0 - 128) = result;
  *(v0 - 112) = *(v0 - 176);
  return result;
}

uint64_t sub_22C7E4404(uint64_t a1)
{
  v3 = *(v1 - 128);
  *(v1 - 224) = *(v1 - 144);
  *(v1 - 208) = v3;
  *(v1 - 192) = *(v1 - 112);
  *(v1 - 176) = *(v1 - 96);

  return sub_22C90313C();
}

uint64_t sub_22C7E4434(uint64_t a1)
{
  v3 = *(v1 - 184);
  *(v1 - 144) = *(v1 - 200);
  *(v1 - 128) = v3;
  *(v1 - 112) = *(v1 - 168);
  *(v1 - 96) = *(v1 - 152);

  return sub_22C90313C();
}

unint64_t sub_22C7E44BC@<X0>(uint64_t a1@<X8>)
{

  return sub_22C36F9F4(0xD000000000000060, (a1 - 32) | 0x8000000000000000, (v1 - 80));
}

void sub_22C7E44E0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t sub_22C7E4500()
{

  return sub_22C90A0BC();
}

__n128 sub_22C7E4524@<Q0>(char a1@<W8>)
{
  v3 = *(v1 - 144);
  result = *(v1 - 128);
  *(v1 - 224) = *(v1 - 160);
  *(v1 - 208) = v3;
  *(v1 - 192) = result;
  *(v1 - 176) = a1;
  return result;
}

double sub_22C7E453C()
{

  swift_beginAccess();
  return result;
}

uint64_t sub_22C7E455C(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2080;
  return result;
}

uint64_t sub_22C7E457C()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

unint64_t sub_22C7E45B8()
{
  v2 = *(v0 - 320) | 0x8000000000000000;

  return sub_22C36F9F4(0xD00000000000003CLL, v2, (v0 - 160));
}

uint64_t sub_22C7E4618()
{
  v1 = *(v0 + 96);
  sub_22C374168((v0 + 72), v1);
  return v1;
}

uint64_t sub_22C7E4700(uint64_t a1)
{

  return sub_22C90312C();
}

uint64_t sub_22C7E4720()
{
  v4 = *(v2 - 288);

  return sub_22C370B74(v1 + v0, 3, v4);
}

uint64_t sub_22C7E4740(uint64_t a1)
{

  return sub_22C90378C();
}

uint64_t sub_22C7E4760()
{

  return sub_22C7E42B8(v0, type metadata accessor for PromptTreeIdentifier.ContextSubItem);
}

unint64_t sub_22C7E4810(uint64_t a1, unint64_t a2)
{

  return sub_22C36F9F4(0xD000000000000036, a2, (v2 - 152));
}

uint64_t sub_22C7E482C()
{

  return swift_slowAlloc();
}

void sub_22C7E4878()
{

  JUMPOUT(0x2318B0640);
}

uint64_t sub_22C7E4890()
{

  return sub_22C370B74(v1 + v0, 3, v2);
}

uint64_t sub_22C7E48AC()
{

  return swift_arrayDestroy();
}

uint64_t sub_22C7E48C8()
{

  return swift_arrayDestroy();
}

uint64_t sub_22C7E48FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{

  return sub_22C90B62C();
}

BOOL sub_22C7E4928(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_22C7E4944()
{
  v4 = *(v2 - 152);

  return sub_22C370B74(v0 + v1, 3, v4);
}

uint64_t sub_22C7E4988()
{
  v4 = *(v2 - 96);

  return sub_22C370B74(v1 + v0, 3, v4);
}

__n128 sub_22C7E49E8@<Q0>(char a1@<W8>)
{
  result = *(v1 - 128);
  *(v1 - 192) = result;
  *(v1 - 176) = a1;
  return result;
}

void sub_22C7E4A38()
{

  JUMPOUT(0x2318B0670);
}

void sub_22C7E4A60()
{
  *(v3 + 16) = v2;
  *(v3 + 8 * v4 + 32) = v1;
  *(v0 + 8) = v3;
}

BOOL sub_22C7E4AC0()
{

  return os_log_type_enabled(v0, v1);
}

unint64_t sub_22C7E4AD8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);

  return sub_22C36F9F4(0xD000000000000060, a2, va);
}

uint64_t sub_22C7E4AF4()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

void sub_22C7E4B18(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0x16u);
}

unint64_t sub_22C7E4B34(uint64_t a1, unint64_t a2)
{

  return sub_22C36F9F4(0xD000000000000057, a2, (v2 - 88));
}

uint64_t sub_22C7E4B50@<X0>(uint64_t a1@<X8>)
{

  return sub_22C7D5E18((a1 + 16), a1 + 32, v2, v1);
}

void sub_22C7E4B74()
{

  sub_22C7CED88();
}

uint64_t sub_22C7E4B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  return sub_22C4B87A4(v16, va);
}

uint64_t sub_22C7E4BB0(uint64_t a1, void (*a2)(void))
{
  v4 = *(v2 - 320);

  return sub_22C7E42B8(v4, a2);
}

unint64_t sub_22C7E4BC8(uint64_t a1, unint64_t a2)
{

  return sub_22C36F9F4(a1, a2, (v2 - 80));
}

void sub_22C7E4C5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 - 168) = a2;
  *(v3 - 160) = a3;
  *(v3 - 152) = 0;
}

uint64_t sub_22C7E4DBC(uint64_t a1)
{

  return sub_22C90311C();
}

void sub_22C7E4DDC(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_22C7E4DFC(uint64_t a1)
{

  return sub_22C90314C();
}

uint64_t sub_22C7E4E14()
{
  v3 = *(v1 - 256);

  return sub_22C7E42B8(v3, v0);
}

void sub_22C7E4E2C()
{

  RetrievedTool.Definition.toCandidateIdentifier()();
}

uint64_t sub_22C7E4E44()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_22C7E4E5C()
{
  v3 = *(v1 - 112);

  return sub_22C7E42B8(v3, v0);
}

uint64_t sub_22C7E4E74()
{
}

uint64_t sub_22C7E4E8C()
{
}

void sub_22C7E4EA4()
{

  RetrievedTool.Definition.toCandidateIdentifier()();
}

uint64_t QueryDecorationEntity.getValue()()
{
  sub_22C378808();
  sub_22C36B770();
  return sub_22C7E6F10();
}

void sub_22C7E4F60()
{
  sub_22C36BA7C();
  v2 = v1;
  v53 = v3;
  sub_22C9063DC();
  sub_22C369824();
  v47[2] = v5;
  v47[3] = v4;
  MEMORY[0x28223BE20](v4);
  sub_22C369838();
  v47[1] = v7 - v6;
  sub_22C90399C();
  sub_22C369824();
  v49 = v9;
  v50 = v8;
  MEMORY[0x28223BE20](v8);
  sub_22C369838();
  v12 = v11 - v10;
  v13 = sub_22C9039FC();
  sub_22C369824();
  v48 = v14;
  MEMORY[0x28223BE20](v15);
  sub_22C369838();
  v18 = v17 - v16;
  type metadata accessor for QueryDecorationEntityValue(0);
  sub_22C36985C();
  MEMORY[0x28223BE20](v19);
  sub_22C369838();
  sub_22C387210();
  v20 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = v47 - v21;
  v23 = sub_22C9093BC();
  sub_22C369824();
  v52 = v24;
  v26 = MEMORY[0x28223BE20](v25);
  v28 = v47 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v26);
  v31 = v47 - v30;
  MEMORY[0x28223BE20](v29);
  v54 = v47 - v32;
  sub_22C378808();
  sub_22C36B770();
  v51 = v2;
  sub_22C7E6F10();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v34 = v49;
      v35 = v0;
      v36 = v50;
      (*(v49 + 32))(v12, v35, v50);
      sub_22C90391C();
      (*(v34 + 8))(v12, v36);
    }

    else
    {
      sub_22C36C640(v22, 1, 1, v23);
    }
  }

  else
  {
    v37 = v48;
    (*(v48 + 32))(v18, v0, v13);
    sub_22C9039CC();
    (*(v37 + 8))(v18, v13);
  }

  v39 = v53;
  v38 = v54;
  if (sub_22C370B74(v22, 1, v23) == 1)
  {
    sub_22C36DD28(v22, &qword_27D9BB908, &qword_22C910960);
    *v39 = 0u;
    *(v39 + 16) = 0u;
    *(v39 + 32) = 0;
  }

  else
  {
    v40 = v22;
    v41 = v52;
    (*(v52 + 32))(v38, v40, v23);
    v42 = *(v41 + 16);
    v42(v31, v38, v23);
    v43 = sub_22C7E5520();
    v42(v28, v31, v23);
    JointResolution.CandidateIdentifier.init(typedValue:)(v28, &v55);
    v44 = *(v41 + 8);
    v44(v31, v23);
    v44(v38, v23);
    v45 = v56;
    v46 = v57;
    *v39 = v55;
    *(v39 + 16) = v45;
    *(v39 + 24) = v46;
    *(v39 + 32) = v43;
  }

  sub_22C36CC48();
}

uint64_t sub_22C7E5520()
{
  v1 = sub_22C90361C();
  sub_22C369824();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  sub_22C369838();
  sub_22C36BE24();
  v5 = sub_22C9039FC();
  sub_22C369824();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  sub_22C369838();
  v11 = v10 - v9;
  type metadata accessor for QueryDecorationEntityValue(0);
  sub_22C36985C();
  MEMORY[0x28223BE20](v12);
  sub_22C369838();
  v15 = v14 - v13;
  sub_22C378808();
  sub_22C36B770();
  sub_22C7E6F10();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_22C90399C();
      sub_22C36985C();
      (*(v17 + 8))(v15);
    }

    sub_22C5F8D4C();
    return sub_22C909F0C();
  }

  else
  {
    (*(v7 + 32))(v11, v15, v5);
    sub_22C3A5908(&qword_27D9C02E8, &unk_22C926BC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22C90F800;
    *(inited + 32) = 1;
    v20 = sub_22C9039DC();
    v21 = *(v20 + 16);
    if (v21)
    {
      v34 = v11;
      v38 = v1;
      v35 = v7;
      v36 = v5;
      v39 = MEMORY[0x277D84F90];
      sub_22C3B77B8(0, v21, 0);
      v22 = v39;
      v37 = *(v3 + 16);
      v23 = v3 + 16;
      v24 = v20 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
      v25 = *(v23 + 56);
      v26 = (v23 - 8);
      do
      {
        v37(v0, v24, v38);
        sub_22C90358C();
        v28 = v27;
        (*v26)(v0, v38);
        v30 = *(v39 + 16);
        v29 = *(v39 + 24);
        if (v30 >= v29 >> 1)
        {
          sub_22C3B77B8(v29 > 1, v30 + 1, 1);
        }

        *(v39 + 16) = v30 + 1;
        *(v39 + 4 * v30 + 32) = v28;
        v24 += v25;
        --v21;
      }

      while (v21);

      v7 = v35;
      v5 = v36;
      v11 = v34;
    }

    else
    {

      v22 = MEMORY[0x277D84F90];
    }

    v31 = sub_22C3D0E60(v22);

    if ((v31 & 0x100000000) != 0)
    {
      v32 = -1082130432;
    }

    else
    {
      v32 = v31;
    }

    *(inited + 36) = v32;
    sub_22C5F8D4C();
    v18 = sub_22C909F0C();
    (*(v7 + 8))(v11, v5);
  }

  return v18;
}

Swift::Int __swiftcall QueryDecorationEntity.getEntitySourceHashValue()()
{
  sub_22C378808();
  v0 = sub_22C7E5918();
  sub_22C37B5C8();
  MEMORY[0x2318B8B10](v0);
  return sub_22C90B66C();
}

uint64_t sub_22C7E5918()
{
  type metadata accessor for QueryDecorationEntityValue(0);
  sub_22C36985C();
  MEMORY[0x28223BE20](v1);
  sub_22C369838();
  sub_22C387210();
  sub_22C36B770();
  sub_22C7E6F10();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      return 2;
    }

    v3 = sub_22C90399C();
    v4 = 1;
  }

  else
  {
    v3 = sub_22C9039FC();
    v4 = 0;
  }

  (*(*(v3 - 8) + 8))(v0);
  return v4;
}

Swift::Bool __swiftcall QueryDecorationEntity.isEmpty()()
{
  type metadata accessor for QueryDecorationEntityValue(0);
  sub_22C36985C();
  MEMORY[0x28223BE20](v0);
  sub_22C369838();
  sub_22C387210();
  sub_22C378808();
  sub_22C36B770();
  sub_22C7E6F10();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_22C9039FC();
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_22C90399C();
LABEL_5:
    sub_22C36985C();
    (*(v2 + 8))();
    return 0;
  }

  return 1;
}

void QueryDecorationEntity.getTypedValue()()
{
  sub_22C36BA7C();
  v2 = v1;
  v3 = sub_22C90399C();
  sub_22C369824();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  sub_22C369838();
  sub_22C36BE24();
  v7 = sub_22C9039FC();
  sub_22C369824();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  sub_22C369838();
  v13 = v12 - v11;
  type metadata accessor for QueryDecorationEntityValue(0);
  sub_22C36985C();
  MEMORY[0x28223BE20](v14);
  sub_22C369838();
  v17 = v16 - v15;
  sub_22C378808();
  sub_22C36B770();
  sub_22C7E6F10();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v5 + 32))(v0, v17, v3);
      sub_22C90391C();
      (*(v5 + 8))(v0, v3);
    }

    else
    {
      v19 = sub_22C9093BC();
      sub_22C36C640(v2, 1, 1, v19);
    }
  }

  else
  {
    (*(v9 + 32))(v13, v17, v7);
    sub_22C9039CC();
    (*(v9 + 8))(v13, v7);
  }

  sub_22C36CC48();
}

void static QueryDecorationEntity.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    sub_22C36986C();
    sub_22C378808();

    static QueryDecorationEntityValue.== infix(_:_:)();
  }
}

void static QueryDecorationEntityValue.== infix(_:_:)()
{
  sub_22C36BA7C();
  sub_22C90399C();
  sub_22C369824();
  v28 = v3;
  v29 = v2;
  MEMORY[0x28223BE20](v2);
  sub_22C369838();
  v27 = (v5 - v4);
  v6 = sub_22C9039FC();
  sub_22C369824();
  v30 = v7;
  MEMORY[0x28223BE20](v8);
  sub_22C369838();
  v9 = sub_22C36BE24();
  type metadata accessor for QueryDecorationEntityValue(v9);
  sub_22C36985C();
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v27 - v14;
  v16 = sub_22C3A5908(&qword_27D9BAA78, &unk_22C90D110);
  MEMORY[0x28223BE20](v16 - 8);
  sub_22C387210();
  v18 = *(v17 + 56);
  sub_22C7E6F10();
  sub_22C7E6F10();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_22C36B770();
      sub_22C7E6F10();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v21 = v27;
        v20 = v28;
        v22 = v0 + v18;
        v23 = v29;
        (*(v28 + 32))(v27, v22, v29);
        sub_22C90393C();
        v24 = *(v20 + 8);
        v24(v21, v23);
        v24(v13, v23);
LABEL_12:
        sub_22C38C0F4();
        goto LABEL_13;
      }

      (*(v28 + 8))(v13, v29);
    }

    else if (swift_getEnumCaseMultiPayload() == 2)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v25 = v30;
    sub_22C36B770();
    sub_22C7E6F10();
    if (!swift_getEnumCaseMultiPayload())
    {
      (*(v25 + 32))(v1, v0 + v18, v6);
      sub_22C9039EC();
      v26 = *(v25 + 8);
      v26(v1, v6);
      v26(v15, v6);
      goto LABEL_12;
    }

    (*(v25 + 8))(v15, v6);
  }

  sub_22C36DD28(v0, &qword_27D9BAA78, &unk_22C90D110);
LABEL_13:
  sub_22C36CC48();
}

double sub_22C7E60B0@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_22C9036EC();
  sub_22C369824();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  sub_22C369838();
  v8 = v7 - v6;
  sub_22C3A5908(&qword_27D9C02E8, &unk_22C926BC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22C90F800;
  *(inited + 32) = 0;
  sub_22C90373C();
  v11 = v10;
  if ((~v10 & 0x7F800000) != 0 || (v12 = -1.0, (v11 & 0x7FFFFF) == 0))
  {
    sub_22C90373C();
  }

  *(inited + 36) = v12;
  sub_22C5F8D4C();
  v13 = sub_22C909F0C();
  sub_22C90371C();
  RetrievedTool.Definition.toCandidateIdentifier()();
  (*(v4 + 8))(v8, v2);
  result = *&v15;
  *a1 = v15;
  *(a1 + 16) = v16;
  *(a1 + 24) = v17;
  *(a1 + 32) = v13;
  return result;
}

uint64_t QueryDecorationTuple.init(tool:parameters:)()
{
  sub_22C36986C();
  v3 = v2;
  sub_22C9037EC();
  sub_22C36985C();
  (*(v4 + 32))(v3, v1);
  result = sub_22C3892BC();
  *(v3 + v6) = v0;
  return result;
}

void QueryDecorationTuple.hash(into:)()
{
  sub_22C3704C4();
  v0 = sub_22C9036EC();
  sub_22C369824();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  sub_22C369838();
  v6 = v5 - v4;
  sub_22C90371C();
  sub_22C371DE8();
  sub_22C7E6B18(v7, v8, MEMORY[0x277D1ED10]);
  sub_22C909F8C();
  (*(v2 + 8))(v6, v0);
  sub_22C3892BC();
  sub_22C7E6754();
}

void static QueryDecorationTuple.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C36986C();
  if (sub_22C90375C())
  {
    sub_22C3892BC();
    v29 = *(v21 + v28);
    v30 = *(v20 + v28);

    sub_22C5DB210(v29, v30, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
  }
}

uint64_t QueryDecorationTuple.hashValue.getter()
{
  v0 = sub_22C9036EC();
  sub_22C369824();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  sub_22C369838();
  v6 = v5 - v4;
  sub_22C90B62C();
  sub_22C90371C();
  sub_22C371DE8();
  sub_22C7E6B18(v7, v8, MEMORY[0x277D1ED10]);
  sub_22C909F8C();
  (*(v2 + 8))(v6, v0);
  sub_22C3892BC();
  sub_22C7E6754();
  return sub_22C90B66C();
}

uint64_t QueryDecorationTupleParameter.init(parameterDefinition:entity:)()
{
  sub_22C36986C();
  v3 = v2;
  sub_22C90981C();
  sub_22C36985C();
  (*(v4 + 32))(v3, v1);
  v5 = v3 + *(type metadata accessor for QueryDecorationTupleParameter(0) + 20);

  return sub_22C7E6A6C(v0, v5);
}

uint64_t QueryDecorationTupleParameter.hash(into:)(uint64_t a1)
{
  sub_22C9097DC();
  sub_22C909FFC();

  DecorationTupleParameter = type metadata accessor for QueryDecorationTupleParameter(0);
  MEMORY[0x2318B8B10](*(v1 + *(DecorationTupleParameter + 20)));
  sub_22C378808();
  v3 = sub_22C7E5918();
  sub_22C37B5C8();
  MEMORY[0x2318B8B10](v3);
  v4 = sub_22C90B66C();
  return MEMORY[0x2318B8B10](v4);
}

BOOL static QueryDecorationTupleParameter.== infix(_:_:)()
{
  sub_22C36986C();
  result = 0;
  if (sub_22C9097CC())
  {
    DecorationTupleParameter = type metadata accessor for QueryDecorationTupleParameter(0);
    if (*(v1 + *(DecorationTupleParameter + 20)) == *(v0 + *(DecorationTupleParameter + 20)))
    {
      sub_22C378808();
      static QueryDecorationEntityValue.== infix(_:_:)();
      if (v3)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t QueryDecorationTupleParameter.hashValue.getter()
{
  sub_22C37B5C8();
  QueryDecorationTupleParameter.hash(into:)(v1);
  return sub_22C90B66C();
}

uint64_t sub_22C7E6710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *))
{
  sub_22C90B62C();
  a4(v6);
  return sub_22C90B66C();
}

void sub_22C7E6754()
{
  sub_22C36BA7C();
  v3 = v2;
  v4 = sub_22C3704C4();
  type metadata accessor for QueryDecorationEntityValue(v4);
  sub_22C36985C();
  MEMORY[0x28223BE20](v5);
  sub_22C369838();
  v6 = sub_22C36BE24();
  DecorationTupleParameter = type metadata accessor for QueryDecorationTupleParameter(v6);
  sub_22C369824();
  MEMORY[0x28223BE20](v7);
  sub_22C369838();
  v10 = v9 - v8;
  memcpy(v24, v0, sizeof(v24));
  sub_22C90B66C();
  v11 = 1 << *(v3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v3 + 56);
  v14 = (v11 + 63) >> 6;

  v15 = 0;
  for (i = 0; v13; v15 ^= v22)
  {
LABEL_8:
    sub_22C7E6F10();
    sub_22C90B62C();
    sub_22C9097DC();
    sub_22C909FFC();

    MEMORY[0x2318B8B10](*(v10 + *(DecorationTupleParameter + 20)));
    sub_22C378808();
    sub_22C36B770();
    sub_22C7E6F10();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        v20 = EnumCaseMultiPayload;
        goto LABEL_14;
      }

      v19 = sub_22C90399C();
      v20 = 1;
    }

    else
    {
      v19 = sub_22C9039FC();
      v20 = 0;
    }

    (*(*(v19 - 8) + 8))(v1);
LABEL_14:
    v13 &= v13 - 1;
    sub_22C90B62C();
    MEMORY[0x2318B8B10](v20);
    v21 = sub_22C90B66C();
    MEMORY[0x2318B8B10](v21);
    v22 = sub_22C90B66C();
    sub_22C7E6F6C();
  }

  while (1)
  {
    v17 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v17 >= v14)
    {

      MEMORY[0x2318B8B10](v15);
      sub_22C36CC48();
      return;
    }

    v13 = *(v3 + 56 + 8 * v17);
    ++i;
    if (v13)
    {
      i = v17;
      goto LABEL_8;
    }
  }

  __break(1u);
}

uint64_t sub_22C7E6A6C(uint64_t a1, uint64_t a2)
{
  DecorationEntity = type metadata accessor for QueryDecorationEntity(0);
  (*(*(DecorationEntity - 8) + 32))(a2, a1, DecorationEntity);
  return a2;
}

uint64_t sub_22C7E6B18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22C7E6BD0(uint64_t a1)
{
  result = type metadata accessor for QueryDecorationEntityValue(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_22C7E6C4C(uint64_t a1)
{
  sub_22C7E6CF8(319, &qword_281435740, MEMORY[0x277D1EEB0]);
  if (v1 <= 0x3F)
  {
    sub_22C7E6CF8(319, &qword_281435758, MEMORY[0x277D1EE00]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_22C7E6CF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_22C7E6D98(uint64_t a1)
{
  if (!qword_28142F9D0)
  {
    type metadata accessor for QueryDecorationTupleParameter(255);
    sub_22C7E6B18(qword_281430F90, type metadata accessor for QueryDecorationTupleParameter, &protocol conformance descriptor for QueryDecorationTupleParameter);
    v1 = sub_22C90A8FC();
    if (!v2)
    {
      atomic_store(v1, &qword_28142F9D0);
    }
  }
}

uint64_t sub_22C7E6E80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319, a2, a3);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22C7E6F10()
{
  sub_22C36986C();
  v2(0);
  sub_22C36985C();
  (*(v3 + 16))(v0, v1);
  return v0;
}

uint64_t sub_22C7E6F6C()
{
  v1 = sub_22C3704C4();
  v2(v1);
  sub_22C36985C();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t (*sub_22C7E7054(uint64_t (*result)(unint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void)))(unint64_t)
{
  v7 = result;
  v8 = 0;
  v9 = *(a3 + 16);
  do
  {
    if (v9 == v8)
    {
      break;
    }

    v10 = *((a4)(0, a2) - 8);
    result = v7(a3 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v8++);
  }

  while (!v4);
  return result;
}

uint64_t sub_22C7E7128(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  if (v9)
  {
    while (1)
    {
      v13 = v12;
LABEL_8:
      v14 = *(*(a3 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v9)))));

      a1(&v14);
      if (v3)
      {
        break;
      }

      v9 &= v9 - 1;

      v12 = v13;
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v10)
      {
      }

      v9 = *(v6 + 8 * v13);
      ++v12;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_22C7E7254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C36BA7C();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v146 = v29;
  v31 = v30;
  v132 = v32;
  v141 = sub_22C9036EC();
  sub_22C369824();
  v128 = v33;
  MEMORY[0x28223BE20](v34);
  sub_22C3698E4();
  v140 = v35;
  sub_22C369930();
  MEMORY[0x28223BE20](v36);
  sub_22C36BA64();
  v139 = v37;
  sub_22C36BA0C();
  sub_22C9037EC();
  sub_22C369824();
  v143 = v38;
  v144 = v39;
  MEMORY[0x28223BE20](v38);
  sub_22C3698A8();
  v142 = v40;
  v41 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  sub_22C369914(v41);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v42);
  v44 = &v126 - v43;
  v131 = sub_22C9063DC();
  sub_22C369824();
  v130 = v45;
  MEMORY[0x28223BE20](v46);
  sub_22C3698A8();
  sub_22C36D234(v47);
  v48 = sub_22C3A5908(&qword_27D9C02F0, &unk_22C926C40);
  sub_22C369914(v48);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v49);
  v51 = (&v126 - v50);
  DecorationEntity = type metadata accessor for QueryDecorationEntity(0);
  sub_22C369824();
  v136 = v52;
  MEMORY[0x28223BE20](v53);
  sub_22C3698E4();
  v133 = v54;
  sub_22C369930();
  MEMORY[0x28223BE20](v55);
  sub_22C36BA58();
  v137 = v56;
  sub_22C369930();
  MEMORY[0x28223BE20](v57);
  sub_22C36BA58();
  v145 = v58;
  sub_22C369930();
  MEMORY[0x28223BE20](v59);
  sub_22C36BA64();
  v135 = v60;
  v148 = sub_22C3A5908(&qword_27D9C02F8, &unk_22C927B20);
  sub_22C36985C();
  MEMORY[0x28223BE20](v61);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v62);
  sub_22C37EBC0();
  MEMORY[0x28223BE20](v63);
  v65 = &v126 - v64;
  v66 = sub_22C3A5908(&qword_27D9C0300, &qword_22C926C50);
  sub_22C36985C();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v67);
  v69 = (&v126 - v68);
  v149 = v28;
  v150 = v24;
  v151 = v26;
  v70 = sub_22C7E7E04(v31);
  v71 = 0;
  v72 = 0;
  v73 = *(v70 + 16);
  v138 = MEMORY[0x277D84F90];
  while (v73 != v71)
  {
    if (v71 >= *(v70 + 16))
    {
      __break(1u);
LABEL_39:
      __break(1u);

      sub_22C36DD28(v69, &qword_27D9C0300, &qword_22C926C50);

      __break(1u);
      return;
    }

    sub_22C9039FC();
    sub_22C36985C();
    v75 = *(v74 + 16);
    v76 = v70 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v71;
    v77 = *(v66 + 48);
    *v69 = v71;
    v75(v69 + v77, v76);
    sub_22C7E81CC(v69, v151 & 1, v51);
    sub_22C36DD28(v69, &qword_27D9C0300, &qword_22C926C50);
    if (sub_22C370B74(v51, 1, DecorationEntity) == 1)
    {
      sub_22C36DD28(v51, &qword_27D9C02F0, &unk_22C926C40);
      ++v71;
    }

    else
    {
      sub_22C37F594();
      v134 = v78;
      sub_22C7F42A8();
      sub_22C7F42A8();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22C36D270();
        sub_22C5962A4();
        v138 = v81;
      }

      v79 = *(v138 + 16);
      v80 = v79 + 1;
      if (v79 >= *(v138 + 24) >> 1)
      {
        v134 = v79 + 1;
        v127 = v79;
        sub_22C5962A4();
        v80 = v134;
        v138 = v82;
      }

      ++v71;
      *(v138 + 16) = v80;
      sub_22C37054C();
      sub_22C37F594();
      sub_22C7F42A8();
    }
  }

  v127 = 0;

  v83 = 0;
  v84 = MEMORY[0x277D84F90];
  v145 = *(v146 + 16);
  v72 = &qword_27D9C02F8;
LABEL_12:
  v85 = v148;
  while (v145 != v83)
  {
    v86 = sub_22C90399C();
    sub_22C369824();
    v88 = v87;
    v90 = v146 + ((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v89 + 72) * v83;
    v91 = *(v85 + 48);
    *v65 = v83;
    (*(v89 + 16))(&v65[v91], v90, v86);
    if ((v151 & 1) != 0 || (sub_22C3A7214(), v92 = *(v85 + 48), sub_22C90391C(), v93 = v20 + v92, v72 = &qword_27D9C02F8, (*(v88 + 8))(v93, v86), v94 = sub_22C9093BC(), v95 = sub_22C370B74(v44, 1, v94), sub_22C36DD28(v44, &qword_27D9BB908, &qword_22C910960), v96 = v95 == 1, v85 = v148, !v96))
    {
      v135 = v84;
      sub_22C5CAC28();
      sub_22C3A7214();
      v134 = *(v85 + 48);
      sub_22C36DD28(v65, &qword_27D9C02F8, &unk_22C927B20);
      v97 = v133;
      v98 = v84 + v134;
      v84 = v135;
      (*(v88 + 32))(v133 + *(DecorationEntity + 20), v98, v86);
      type metadata accessor for QueryDecorationEntityValue(0);
      swift_storeEnumTagMultiPayload();
      *v97 = v83;
      sub_22C37F594();
      sub_22C7F42A8();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22C36D270();
        sub_22C5962A4();
        v84 = v100;
      }

      v99 = *(v84 + 16);
      v72 = &qword_27D9C02F8;
      if (v99 >= *(v84 + 24) >> 1)
      {
        sub_22C5962A4();
        v84 = v101;
      }

      v83 = (v83 + 1);
      *(v84 + 16) = v99 + 1;
      sub_22C37054C();
      sub_22C37F594();
      sub_22C7F42A8();
      goto LABEL_12;
    }

    sub_22C36DD28(v65, &qword_27D9C02F8, &unk_22C927B20);
    v83 = (v83 + 1);
  }

  v152 = v138;
  sub_22C3CEF6C(v84);
  v102 = v152;
  v69 = v129;
  sub_22C90407C();

  sub_22C38B1DC(&a17);

  v103 = sub_22C9063CC();
  v104 = sub_22C90AACC();
  v105 = os_log_type_enabled(v103, v104);
  v148 = v102;
  if (v105)
  {
    v106 = swift_slowAlloc();
    v107 = swift_slowAlloc();
    v152 = v107;
    *v106 = 136315650;
    *(v106 + 4) = sub_22C36F9F4(0xD00000000000001BLL, 0x800000022C935EA0, &v152);
    *(v106 + 12) = 2048;
    *(v106 + 14) = *(v102 + 16);

    *(v106 + 22) = 2048;
    *(v106 + 24) = qword_27D9C0308;

    _os_log_impl(&dword_22C366000, v103, v104, "[%s] total entity count: %ld total tool count: %ld", v106, 0x20u);
    sub_22C36FF94(v107);
    MEMORY[0x2318B9880](v107, -1, -1);
    MEMORY[0x2318B9880](v106, -1, -1);
  }

  else
  {
  }

  (*(v130 + 8))(v69, v131);
  v108 = qword_27D9C0308;
  v109 = MEMORY[0x277D84F90];
  if (qword_27D9C0308)
  {
    v110 = *(v144 + 16);
    v111 = &qword_27D9C02F8 + ((*(v144 + 80) + 32) & ~*(v144 + 80));
    v146 = *(v144 + 72);
    DecorationEntity = v110;
    v145 = (v128 + 32);
    v138 = v128 + 88;
    LODWORD(v137) = *MEMORY[0x277D1ECD8];
    v112 = (v128 + 8);
    v144 += 16;
    v113 = (v144 - 8);
    v114 = v142;
    v72 = v143;
    do
    {
      (DecorationEntity)(v114, v111, v72);
      v115 = v139;
      sub_22C90371C();
      v116 = v140;
      v117 = v115;
      v118 = v141;
      (*v145)(v140, v117, v141);
      v119 = (*v138)(v116, v118);
      v120 = v119 != v137;
      (*v112)(v116, v118);
      v121 = sub_22C7E86DC(v114, v148, v120, v149, v151 & 1, v150);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22C36D270();
        sub_22C5961F0();
        v109 = v122;
      }

      v69 = *(v109 + 16);
      v72 = v143;
      if (v69 >= *(v109 + 24) >> 1)
      {
        sub_22C5961F0();
        v72 = v143;
        v109 = v123;
      }

      v114 = v142;
      (*v113)(v142, v72);
      *(v109 + 16) = v69 + 1;
      *(v109 + 8 * v69 + 32) = v121;
      v111 += v146;
      --v108;
    }

    while (v108);
  }

  v124 = 0;
  v152 = MEMORY[0x277D84F90];
  v125 = *(v109 + 16);
  while (v125 != v124)
  {
    if (v124 >= *(v109 + 16))
    {
      goto LABEL_39;
    }

    v72 = (v124 + 1);

    sub_22C3CEB98();
    v124 = v72;
  }

  sub_22C36CC48();
}

uint64_t sub_22C7E7E04(uint64_t a1)
{
  v2 = sub_22C9063DC();
  v32 = *(v2 - 8);
  v33 = v2;
  MEMORY[0x28223BE20](v2);
  v31 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22C9039FC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v36 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v30 - v8;
  v10 = 0;
  v38 = a1;
  v11 = *(a1 + 16);
  v35 = (v5 + 32);
  v37 = MEMORY[0x277D84F90];
  while (v11 != v10)
  {
    v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v13 = *(v5 + 72);
    (*(v5 + 16))(v9, v38 + v12 + v13 * v10, v4);
    v14 = *(sub_22C9039DC() + 16);

    if (v14)
    {
      v34 = *v35;
      v34(v36, v9, v4);
      v15 = v37;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v39 = v15;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22C3B73FC(0, *(v15 + 16) + 1, 1);
        v15 = v39;
      }

      v18 = *(v15 + 16);
      v17 = *(v15 + 24);
      v19 = v18 + 1;
      if (v18 >= v17 >> 1)
      {
        v37 = v18 + 1;
        v30 = v18;
        sub_22C3B73FC(v17 > 1, v18 + 1, 1);
        v19 = v37;
        v18 = v30;
        v15 = v39;
      }

      ++v10;
      *(v15 + 16) = v19;
      v37 = v15;
      v34((v15 + v12 + v18 * v13), v36, v4);
    }

    else
    {
      (*(v5 + 8))(v9, v4);
      ++v10;
    }
  }

  v20 = v37;
  v21 = *(v37 + 16);
  v22 = v11 <= v21;
  v23 = v11 - v21;
  if (!v22)
  {
    v24 = v31;
    sub_22C90407C();
    v25 = sub_22C9063CC();
    v26 = sub_22C90AADC();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v39 = v28;
      *v27 = 136315394;
      *(v27 + 4) = sub_22C36F9F4(0x70537265746C6966, 0xEF293A5F28736E61, &v39);
      *(v27 + 12) = 2048;
      *(v27 + 14) = v23;
      _os_log_impl(&dword_22C366000, v25, v26, "[%s] %ld Entity span objects had no matchMetadata. They will be filtered.", v27, 0x16u);
      sub_22C36FF94(v28);
      MEMORY[0x2318B9880](v28, -1, -1);
      MEMORY[0x2318B9880](v27, -1, -1);
    }

    (*(v32 + 8))(v24, v33);
  }

  return v20;
}

uint64_t sub_22C7E81CC@<X0>(uint64_t *a1@<X0>, char a2@<W2>, uint64_t *a3@<X8>)
{
  v55 = a3;
  v5 = sub_22C9063DC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v50[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v50[-v10];
  v12 = sub_22C3A5908(&qword_27D9C0300, &qword_22C926C50);
  v13 = MEMORY[0x28223BE20](v12);
  v54 = &v50[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v50[-v16];
  MEMORY[0x28223BE20](v15);
  v19 = &v50[-v18];
  if ((a2 & 1) != 0 || (sub_22C3A7214(), v53 = a1, v20 = v8, v21 = v6, v22 = v5, v23 = *(v12 + 48), sub_22C9039CC(), v24 = *(*(sub_22C9039FC() - 8) + 8), v25 = &v19[v23], v26 = v21, v27 = v20, a1 = v53, v24(v25), v28 = sub_22C9093BC(), v29 = sub_22C370B74(v11, 1, v28), sub_22C36DD28(v11, &qword_27D9BB908, &qword_22C910960), v29 != 1))
  {
    sub_22C3A7214();
    v40 = *(v12 + 48);
    v41 = *a1;
    DecorationEntity = type metadata accessor for QueryDecorationEntity(0);
    v43 = *(DecorationEntity + 20);
    v44 = sub_22C9039FC();
    v45 = v55;
    (*(*(v44 - 8) + 32))(v55 + v43, &v17[v40], v44);
    type metadata accessor for QueryDecorationEntityValue(0);
    swift_storeEnumTagMultiPayload();
    *v45 = v41;
    v46 = v45;
    v47 = 0;
    v48 = DecorationEntity;
  }

  else
  {
    v52 = v22;
    sub_22C90407C();
    v30 = v54;
    sub_22C3A7214();
    v31 = sub_22C9063CC();
    v32 = sub_22C90AADC();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v51 = v32;
      v34 = v33;
      v53 = swift_slowAlloc();
      v56 = v53;
      *v34 = 136315394;
      *(v34 + 4) = sub_22C36F9F4(0xD00000000000001BLL, 0x800000022C935EA0, &v56);
      *(v34 + 12) = 2080;
      sub_22C7F4358(&qword_27D9C0318, MEMORY[0x277D1EEB0], MEMORY[0x277D1EEB8]);
      v35 = sub_22C909F6C();
      v37 = v36;
      sub_22C36DD28(v30, &qword_27D9C0300, &qword_22C926C50);
      v38 = sub_22C36F9F4(v35, v37, &v56);

      *(v34 + 14) = v38;
      _os_log_impl(&dword_22C366000, v31, v51, "[%s] An entity span had no typedValue %s Will filter it and continue", v34, 0x16u);
      v39 = v53;
      swift_arrayDestroy();
      MEMORY[0x2318B9880](v39, -1, -1);
      MEMORY[0x2318B9880](v34, -1, -1);
    }

    else
    {

      sub_22C36DD28(v30, &qword_27D9C0300, &qword_22C926C50);
    }

    (*(v26 + 8))(v27, v52);
    v48 = type metadata accessor for QueryDecorationEntity(0);
    v46 = v55;
    v47 = 1;
  }

  return sub_22C36C640(v46, v47, 1, v48);
}

uint64_t sub_22C7E86DC(char *a1, uint64_t a2, int a3, char *a4, int a5, char *a6)
{
  v106 = a4;
  v107 = a6;
  v99 = a3;
  v100 = a5;
  v103 = a2;
  DecorationTuple = type metadata accessor for QueryDecorationTuple(0);
  v7 = MEMORY[0x28223BE20](DecorationTuple);
  v93 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v92 = &v85 - v9;
  v91 = sub_22C9037EC();
  v90 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v98 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_22C90981C();
  isa = v105[-1].isa;
  MEMORY[0x28223BE20](v105);
  v104 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22C9063DC();
  v95 = *(v12 - 8);
  v96 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v97 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v89 = &v85 - v15;
  v101 = sub_22C9099FC();
  v16 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v18 = &v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22C908EAC();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v85 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_22C9036EC();
  v24 = *(v23 - 8);
  v25 = MEMORY[0x28223BE20](v23);
  v85 = &v85 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v85 - v27;
  v29 = a1;
  sub_22C90371C();
  v30 = v23;
  v31 = v24;
  v32 = (*(v24 + 88))(v28, v30);
  v33 = v32 == *MEMORY[0x277D1ECE0];
  v87 = v30;
  if (v33)
  {
    (*(v24 + 96))(v28, v30);
    (*(v20 + 32))(v22, v28, v19);
    v34 = sub_22C908DCC();
    (*(v20 + 8))(v22, v19);
    v35 = v29;
    v37 = v104;
    v36 = v105;
LABEL_10:
    v40 = v99;
    v39 = v100;
    goto LABEL_11;
  }

  v35 = v29;
  if (v32 == *MEMORY[0x277D1ECE8])
  {
    (*(v31 + 96))(v28, v30);
    v38 = v101;
    (*(v16 + 32))(v18, v28, v101);
    v39 = v100;
    v34 = sub_22C7E92EC(v18);
    (*(v16 + 8))(v18, v38);
    v37 = v104;
    v36 = v105;
LABEL_6:
    v40 = v99;
    goto LABEL_11;
  }

  v37 = v104;
  if (v32 == *MEMORY[0x277D1ECD8] || v32 == *MEMORY[0x277D1ECD0])
  {
    (*(v31 + 96))(v28, v30);
    (*(v20 + 32))(v22, v28, v19);
    v34 = sub_22C908DCC();
    (*(v20 + 8))(v22, v19);
    v36 = v105;
    goto LABEL_10;
  }

  v39 = v100;
  if (v32 == *MEMORY[0x277D1ECF8])
  {
    (*(v31 + 8))(v28, v30);
    v34 = MEMORY[0x277D84F90];
    v36 = v105;
    goto LABEL_6;
  }

  v80 = v89;
  sub_22C90407C();
  v81 = sub_22C9063CC();
  v82 = sub_22C90AADC();
  if (os_log_type_enabled(v81, v82))
  {
    v83 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    v108[0] = v84;
    *v83 = 136315138;
    *(v83 + 4) = sub_22C36F9F4(0xD00000000000002FLL, 0x800000022C935EC0, v108);
    _os_log_impl(&dword_22C366000, v81, v82, "[%s] Unsupported RetrievedTool definition type found", v83, 0xCu);
    sub_22C36FF94(v84);
    MEMORY[0x2318B9880](v84, -1, -1);
    MEMORY[0x2318B9880](v83, -1, -1);
  }

  (*(v95 + 8))(v80, v96);
  v36 = v105;
  v40 = v99;
  (*(v31 + 8))(v28, v87);
  v34 = MEMORY[0x277D84F90];
LABEL_11:
  v41 = *(v34 + 16);
  v86 = v31;
  if (v41)
  {
    v89 = v35;
    v42 = isa + 16;
    isa = *(isa + 2);
    v43 = (v42[64] + 32) & ~v42[64];
    v88 = v34;
    v44 = v34 + v43;
    v101 = *(v42 + 7);
    v45 = v39 & 1;
    v46 = (v42 - 8);
    v47 = MEMORY[0x277D84F90];
    do
    {
      v48 = (isa)(v37, v44, v36);
      MEMORY[0x28223BE20](v48);
      v49 = v107;
      *(&v85 - 4) = v106;
      *(&v85 - 24) = v45;
      *(&v85 - 2) = v49;
      *(&v85 - 1) = v37;
      sub_22C7948E0();
      v51 = v50;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22C596074();
        v47 = v53;
      }

      v52 = *(v47 + 16);
      if (v52 >= *(v47 + 24) >> 1)
      {
        sub_22C596074();
        v47 = v54;
      }

      *(v47 + 16) = v52 + 1;
      *(v47 + 8 * v52 + 32) = v51;
      v37 = v104;
      v36 = v105;
      (*v46)(v104, v105);
      v44 += v101;
      --v41;
    }

    while (v41);

    v35 = v89;
    v55 = v98;
    v40 = v99;
  }

  else
  {

    v47 = MEMORY[0x277D84F90];
    v55 = v98;
  }

  v56 = sub_22C7E9A1C(v47, v106, 0, v40 & 1);
  v57 = MEMORY[0x277D84FA0];
  v110 = MEMORY[0x277D84FA0];
  MEMORY[0x28223BE20](v56);
  *(&v85 - 2) = &v110;
  *(&v85 - 1) = v35;
  sub_22C7E7128(sub_22C7EBD24, (&v85 - 4), v56);

  v58 = *(v56 + 16);

  if (!v58)
  {
    v59 = v97;
    sub_22C90407C();
    v60 = v90;
    v61 = *(v90 + 16);
    v62 = v91;
    v61(v55, v35, v91);
    v63 = sub_22C9063CC();
    LODWORD(v107) = sub_22C90AACC();
    if (os_log_type_enabled(v63, v107))
    {
      v64 = v60;
      v65 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      v109 = v106;
      *v65 = 136315394;
      *(v65 + 4) = sub_22C36F9F4(0xD00000000000002FLL, 0x800000022C935EC0, &v109);
      *(v65 + 12) = 2080;
      v105 = v63;
      v66 = v85;
      sub_22C90371C();
      RetrievedTool.Definition.toCandidateIdentifier()();
      (*(v86 + 8))(v66, v87);
      v67 = v55;
      v68 = v62;
      (*(v64 + 8))(v67, v62);
      v69 = v35;
      v70 = v108[0];
      v71 = v108[1];

      v72 = sub_22C36F9F4(v70, v71, &v109);
      v35 = v69;
      v57 = MEMORY[0x277D84FA0];

      *(v65 + 14) = v72;
      v73 = v105;
      _os_log_impl(&dword_22C366000, v105, v107, "QDRanker [%s] tool: %s No valid tuples found", v65, 0x16u);
      v74 = v106;
      swift_arrayDestroy();
      MEMORY[0x2318B9880](v74, -1, -1);
      MEMORY[0x2318B9880](v65, -1, -1);

      (*(v95 + 8))(v97, v96);
      v76 = v93;
      v75 = DecorationTuple;
      v77 = v92;
      v78 = v68;
    }

    else
    {

      (*(v60 + 8))(v55, v62);
      (*(v95 + 8))(v59, v96);
      v76 = v93;
      v75 = DecorationTuple;
      v78 = v62;
      v77 = v92;
    }

    v61(v76, v35, v78);
    *&v76[*(v75 + 20)] = v57;
    sub_22C6A5F0C();
    sub_22C7F4300(v77, type metadata accessor for QueryDecorationTuple);
  }

  return v110;
}

uint64_t sub_22C7E92EC(uint64_t a1)
{
  v2 = sub_22C3A5908(&qword_27D9C0308, &unk_22C926C58);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = sub_22C90847C();
  sub_22C605CA8(a1, v8);

  sub_22C3A7214();
  v9 = sub_22C908DAC();
  if (sub_22C370B74(v5, 1, v9) == 1)
  {
    sub_22C36DD28(v5, &qword_27D9C0308, &unk_22C926C58);
    sub_22C36DD28(v7, &qword_27D9C0308, &unk_22C926C58);
    return MEMORY[0x277D84F90];
  }

  else
  {
    v10 = sub_22C908D8C();
    sub_22C36DD28(v7, &qword_27D9C0308, &unk_22C926C58);
    (*(*(v9 - 8) + 8))(v5, v9);
  }

  return v10;
}

uint64_t sub_22C7E9488@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  LODWORD(v54) = a3;
  v55 = a1;
  v6 = sub_22C90941C();
  v52 = *(v6 - 8);
  v53 = v6;
  MEMORY[0x28223BE20](v6);
  v51 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22C90399C();
  v49 = *(v8 - 8);
  v50 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22C9039FC();
  v48 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  DecorationEntityValue = type metadata accessor for QueryDecorationEntityValue(0);
  MEMORY[0x28223BE20](DecorationEntityValue);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v46 - v18;
  v20 = sub_22C90952C();
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  v27 = &v46 - v26;
  if (v54)
  {
    v46 = v25;
    v47 = v24;
    type metadata accessor for QueryDecorationEntity(0);
    v54 = a2;
    sub_22C7F4250();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v30 = v49;
        v29 = v50;
        (*(v49 + 32))(v10, v16, v50);
        sub_22C90391C();
        (*(v30 + 8))(v10, v29);
      }

      else
      {
        v32 = sub_22C9093BC();
        sub_22C36C640(v19, 1, 1, v32);
      }
    }

    else
    {
      v31 = v48;
      (*(v48 + 32))(v13, v16, v11);
      sub_22C9039CC();
      (*(v31 + 8))(v13, v11);
    }

    v33 = sub_22C9093BC();
    if (sub_22C370B74(v19, 1, v33) == 1)
    {
      sub_22C36DD28(v19, &qword_27D9BB908, &qword_22C910960);
LABEL_11:
      DecorationTupleParameter = type metadata accessor for QueryDecorationTupleParameter(0);
      v42 = a4;
      v43 = 1;
      return sub_22C36C640(v42, v43, 1, DecorationTupleParameter);
    }

    sub_22C90935C();
    (*(*(v33 - 8) + 8))(v19, v33);
    v35 = v46;
    v34 = v47;
    v36 = (*(v46 + 32))(v27, v23, v47);
    v37 = v51;
    MEMORY[0x2318B6CE0](v36);
    sub_22C9093DC();
    (*(v52 + 8))(v37, v53);
    sub_22C5E94F0();
    v39 = v38;

    (*(v35 + 8))(v27, v34);
    if ((v39 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v40 = sub_22C90981C();
  (*(*(v40 - 8) + 16))(a4, v55, v40);
  v41 = type metadata accessor for QueryDecorationTupleParameter(0);
  sub_22C7F4250();
  v42 = a4;
  v43 = 0;
  DecorationTupleParameter = v41;
  return sub_22C36C640(v42, v43, 1, DecorationTupleParameter);
}

uint64_t sub_22C7E9A1C(uint64_t a1, uint64_t a2, int a3, int a4)
{
  HIDWORD(v202) = a3;
  v201 = a2;
  v257[9] = *MEMORY[0x277D85DE8];
  v254 = sub_22C9063DC();
  v251 = *(v254 - 8);
  v6 = MEMORY[0x28223BE20](v254);
  v8 = &v200 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v200 - v9;
  v239 = sub_22C90399C();
  v249 = *(v239 - 8);
  v11 = MEMORY[0x28223BE20](v239);
  v217 = &v200 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v214 = &v200 - v14;
  MEMORY[0x28223BE20](v13);
  v215 = &v200 - v15;
  v238 = sub_22C9039FC();
  v248 = *(v238 - 8);
  v16 = MEMORY[0x28223BE20](v238);
  v216 = &v200 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v212 = &v200 - v19;
  MEMORY[0x28223BE20](v18);
  v213 = &v200 - v20;
  v250 = sub_22C3A5908(&qword_27D9BAA78, &unk_22C90D110);
  v21 = MEMORY[0x28223BE20](v250);
  v23 = &v200 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  v245 = &v200 - v25;
  MEMORY[0x28223BE20](v24);
  v235 = &v200 - v26;
  DecorationEntityValue = type metadata accessor for QueryDecorationEntityValue(0);
  v27 = MEMORY[0x28223BE20](DecorationEntityValue);
  v230 = &v200 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v229 = &v200 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v226 = &v200 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v221 = &v200 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v37 = &v200 - v36;
  v38 = MEMORY[0x28223BE20](v35);
  v40 = &v200 - v39;
  MEMORY[0x28223BE20](v38);
  v224 = &v200 - v41;
  DecorationTupleParameter = type metadata accessor for QueryDecorationTupleParameter(0);
  v227 = *(DecorationTupleParameter - 8);
  v42 = MEMORY[0x28223BE20](DecorationTupleParameter);
  v44 = &v200 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x28223BE20](v42);
  v240 = &v200 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v244 = &v200 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v234 = &v200 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v242 = &v200 - v52;
  MEMORY[0x28223BE20](v51);
  v243 = &v200 - v53;
  sub_22C3A5908(&qword_27D9C0310, &qword_22C926C68);
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_22C90F800;
  *(v54 + 32) = MEMORY[0x277D84FA0];
  sub_22C5EB328(v54);
  v56 = v55;
  v57 = *(a1 + 16);
  HIDWORD(v204) = a4;
  if ((a4 & 1) == 0)
  {
    v71 = (a1 + 32);
    v72 = v57;
    do
    {
      if (!v72)
      {
        goto LABEL_2;
      }

      v73 = *v71++;
      --v72;
    }

    while (*(v73 + 16));

    sub_22C90400C();
    v74 = sub_22C9063CC();
    v75 = sub_22C90AADC();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      *v76 = 0;
      _os_log_impl(&dword_22C366000, v74, v75, "Tuple generation: Cannot generate full combinations when a sublist is empty.", v76, 2u);
      MEMORY[0x2318B9880](v76, -1, -1);
    }

    (*(v251 + 8))(v8, v254);
    return MEMORY[0x277D84FA0];
  }

LABEL_2:
  v58 = 0;
  v210 = a1 + 32;
  v59 = MEMORY[0x277D84F90];
  v211 = v57;
  v241 = v23;
  v220 = v37;
  v219 = v40;
  while (v57 != v58)
  {
    v60 = *(v210 + 8 * v58);
    v61 = *(v60 + 16);
    v23 = v59[2];
    if (__OFADD__(v23, v61))
    {
      __break(1u);
LABEL_160:
      __break(1u);
LABEL_161:
      __break(1u);
LABEL_162:
      __break(1u);
      while (1)
      {
        __break(1u);
LABEL_164:

        if (!swift_stdlib_isStackAllocationSafe())
        {
          break;
        }

LABEL_136:
        MEMORY[0x28223BE20](v182);
        v59 = (&v200 - ((v58 + 15) & 0x3FFFFFFFFFFFFFF0));
        sub_22C88FAFC(0, v10, v59);
        v185 = 0;
        v186 = 0;
        v188 = *(v23 + 7);
        v23 += 56;
        v187 = v188;
        v189 = 1 << *(v23 - 24);
        v190 = -1;
        if (v189 < 64)
        {
          v190 = ~(-1 << v189);
        }

        v191 = v190 & v187;
        v192 = (v189 + 63) >> 6;
        v193 = v211;
        while (v191)
        {
          v194 = __clz(__rbit64(v191));
          v191 &= v191 - 1;
          v195 = v194 | (v186 << 6);
LABEL_146:
          if (*(*(*(v56 + 48) + 8 * v195) + 16) == v193)
          {
            *(v59 + ((v195 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v195;
            v64 = __OFADD__(v185++, 1);
            if (v64)
            {
              __break(1u);
LABEL_150:
              v56 = sub_22C7ECEE4((&v200 - ((v58 + 15) & 0x3FFFFFFFFFFFFFF0)), v10, v185, v56);
              goto LABEL_151;
            }
          }
        }

        v196 = v186;
        while (1)
        {
          v186 = v196 + 1;
          if (__OFADD__(v196, 1))
          {
            break;
          }

          if (v186 >= v192)
          {
            goto LABEL_150;
          }

          v197 = *&v23[8 * v186];
          ++v196;
          if (v197)
          {
            v191 = (v197 - 1) & v197;
            v195 = __clz(__rbit64(v197)) | (v186 << 6);
            goto LABEL_146;
          }
        }
      }

      v199 = swift_slowAlloc();
      v56 = sub_22C7EBD40(v199, v10, v23, sub_22C7F4230, v59);

      MEMORY[0x2318B9880](v199, -1, -1);
LABEL_151:
      if ((v202 & 0x100000000) == 0 && *(v56 + 16) > v201)
      {
        sub_22C8125CC(v201, v56, v257);
        return sub_22C3AF068(v257);
      }

      return v56;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || &v23[v61] > (v59[3] >> 1))
    {
      sub_22C595FAC();
      v59 = v62;
    }

    v23 = v241;
    if (*(v60 + 16))
    {
      if (((v59[3] >> 1) - v59[2]) < v61)
      {
        goto LABEL_161;
      }

      swift_arrayInitWithCopy();

      v57 = v211;
      if (v61)
      {
        v63 = v59[2];
        v64 = __OFADD__(v63, v61);
        v65 = v63 + v61;
        if (v64)
        {
          goto LABEL_162;
        }

        v59[2] = v65;
      }
    }

    else
    {

      v57 = v211;
      if (v61)
      {
        goto LABEL_160;
      }
    }

    ++v58;
  }

  sub_22C3AE7B0();
  if ((v204 & 0x100000000) != 0)
  {

    v68 = v56;
    v69 = v211;
    v70 = v242;
    goto LABEL_28;
  }

  v77 = *(v66 + 16);

  v69 = v211;
  v78 = v77 >= v211;
  v68 = v56;
  v70 = v242;
  if (!v78)
  {

    sub_22C90400C();
    v79 = sub_22C9063CC();
    v80 = sub_22C90AADC();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      *v81 = 0;
      _os_log_impl(&dword_22C366000, v79, v80, "Tuple generation: Not enough unique elements to generate full combinations without duplicates.", v81, 2u);
      MEMORY[0x2318B9880](v81, -1, -1);
    }

    (*(v251 + 8))(v10, v254);
    return MEMORY[0x277D84FA0];
  }

LABEL_28:
  if (!v69)
  {
LABEL_134:
    if ((v204 & 0x100000000) == 0)
    {
      v182 = MEMORY[0x28223BE20](v67);
      v59 = &v200 - 4;
      *(&v200 - 2) = v183;
      v23 = v56;
      v184 = *(v56 + 32);
      v10 = ((1 << v184) + 63) >> 6;
      v58 = 8 * v10;
      if ((v184 & 0x3Fu) <= 0xD)
      {
        goto LABEL_136;
      }

      goto LABEL_164;
    }

    goto LABEL_151;
  }

  v82 = 0;
  v237 = (v249 + 8);
  v236 = (v248 + 8);
  v231 = (v249 + 32);
  v228 = (v248 + 32);
  v83 = v243;
LABEL_30:
  v84 = *(v210 + 8 * v82);
  v203 = v82 + 1;
  v256 = MEMORY[0x277D84FA0];
  v85 = *(v68 + 56);
  v207 = v68 + 56;
  v86 = 1 << *(v68 + 32);
  if (v86 < 64)
  {
    v87 = ~(-1 << v86);
  }

  else
  {
    v87 = -1;
  }

  v88 = v87 & v85;
  v206 = (v86 + 63) >> 6;

  v89 = 0;
  v205 = v68;
  v222 = v84;
  while (2)
  {
    if (v88)
    {
      goto LABEL_39;
    }

    do
    {
      v90 = v89 + 1;
      if (__OFADD__(v89, 1))
      {
        goto LABEL_157;
      }

      if (v90 >= v206)
      {

        v68 = v256;
        if ((v202 & 0x100000000) == 0 && *(v256 + 16) >= v201)
        {
          goto LABEL_158;
        }

        v82 = v203;
        if (v203 == v211)
        {
          v56 = v256;
          goto LABEL_134;
        }

        goto LABEL_30;
      }

      v88 = *(v207 + 8 * v90);
      ++v89;
    }

    while (!v88);
    v89 = v90;
LABEL_39:
    v208 = v88;
    v91 = *(v68 + 48);
    v209 = v89;
    v92 = *(v91 + ((v89 << 9) | (8 * __clz(__rbit64(v88)))));
    if ((v204 & 0x100000000) != 0)
    {
      swift_bridgeObjectRetain_n();
      sub_22C6A6204(v257, v92, v93, v94, v95, v96, v97, v98, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223);
      v83 = v243;
    }

    else
    {
    }

    v68 = v240;
    v225 = *(v84 + 16);
    if (!v225)
    {
LABEL_129:
      v88 = (v208 - 1) & v208;

      v68 = v205;
      v89 = v209;
      continue;
    }

    break;
  }

  v223 = v84 + ((*(v227 + 80) + 32) & ~*(v227 + 80));
  v254 = v92 + 56;

  v99 = 0;
  v249 = v92;
LABEL_44:
  if (v99 >= *(v84 + 16))
  {
    __break(1u);
LABEL_156:
    __break(1u);
LABEL_157:
    __break(1u);
LABEL_158:
    v56 = v68;
    goto LABEL_134;
  }

  v232 = v99;
  sub_22C7F4250();
  if (*(v92 + 16))
  {
    sub_22C90B62C();
    sub_22C9097DC();
    sub_22C909FFC();

    v100 = (v83 + *(DecorationTupleParameter + 20));
    v251 = *v100;
    MEMORY[0x2318B8B10]();
    DecorationEntity = type metadata accessor for QueryDecorationEntity(0);
    v101 = *(DecorationEntity + 20);
    v248 = v100;
    v246 = v101;
    sub_22C7F4250();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v103 = EnumCaseMultiPayload;
    if (EnumCaseMultiPayload)
    {
      v92 = v249;
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_51;
      }

      v104 = v237;
      v105 = v239;
      v103 = 1;
    }

    else
    {
      v104 = v236;
      v105 = v238;
      v92 = v249;
    }

    (*v104)(v224, v105);
LABEL_51:
    sub_22C90B62C();
    MEMORY[0x2318B8B10](v103);
    v106 = sub_22C90B66C();
    MEMORY[0x2318B8B10](v106);
    v107 = sub_22C90B66C();
    v108 = -1 << *(v92 + 32);
    v109 = v107 & ~v108;
    if ((*(v254 + ((v109 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v109))
    {
      v110 = ~v108;
      while (1)
      {
        sub_22C7F4250();
        if ((sub_22C9097CC() & 1) != 0 && *(v70 + *(DecorationTupleParameter + 20)) == v251)
        {
          break;
        }

        sub_22C7F4300(v70, type metadata accessor for QueryDecorationTupleParameter);
LABEL_68:
        v109 = (v109 + 1) & v110;
        if (((*(v254 + ((v109 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v109) & 1) == 0)
        {
          goto LABEL_72;
        }
      }

      v111 = *(v250 + 48);
      v112 = v235;
      sub_22C7F4250();
      sub_22C7F4250();
      v113 = swift_getEnumCaseMultiPayload();
      if (v113)
      {
        if (v113 == 1)
        {
          v114 = v220;
          sub_22C7F4250();
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v115 = v215;
            v116 = v239;
            (*v231)(v215, v112 + v111, v239);
            LODWORD(v233) = sub_22C90393C();
            v117 = *v237;
            (*v237)(v115, v116);
            sub_22C7F4300(v242, type metadata accessor for QueryDecorationTupleParameter);
            v117(v114, v116);
            if (v233)
            {
              v180 = v243;
              sub_22C7F4300(v243, type metadata accessor for QueryDecorationTupleParameter);
              v181 = v112;
              v83 = v180;
              v67 = sub_22C7F4300(v181, type metadata accessor for QueryDecorationEntityValue);
              v23 = v241;
              v68 = v240;
              goto LABEL_123;
            }

            sub_22C7F4300(v112, type metadata accessor for QueryDecorationEntityValue);
            v23 = v241;
            v68 = v240;
            v70 = v242;
            goto LABEL_67;
          }

          v70 = v242;
          sub_22C7F4300(v242, type metadata accessor for QueryDecorationTupleParameter);
          (*v237)(v114, v239);
        }

        else
        {
          v119 = v242;
          sub_22C7F4300(v242, type metadata accessor for QueryDecorationTupleParameter);
          v70 = v119;
          if (swift_getEnumCaseMultiPayload() == 2)
          {
            v178 = v243;
            sub_22C7F4300(v243, type metadata accessor for QueryDecorationTupleParameter);
            v179 = v112;
            v83 = v178;
            v67 = sub_22C7F4300(v179, type metadata accessor for QueryDecorationEntityValue);
            goto LABEL_124;
          }
        }
      }

      else
      {
        v118 = v219;
        sub_22C7F4250();
        if (!swift_getEnumCaseMultiPayload())
        {
          v120 = v213;
          v121 = v238;
          (*v228)(v213, v112 + v111, v238);
          LODWORD(v233) = sub_22C9039EC();
          v122 = *v236;
          (*v236)(v120, v121);
          v70 = v242;
          sub_22C7F4300(v242, type metadata accessor for QueryDecorationTupleParameter);
          v123 = v121;
          v68 = v240;
          v122(v118, v123);
          v23 = v241;
          sub_22C7F4300(v235, type metadata accessor for QueryDecorationEntityValue);
          v83 = v243;
          v92 = v249;
          if (v233)
          {
            v67 = sub_22C7F4300(v243, type metadata accessor for QueryDecorationTupleParameter);
            v84 = v222;
            goto LABEL_125;
          }

          goto LABEL_68;
        }

        v70 = v242;
        sub_22C7F4300(v242, type metadata accessor for QueryDecorationTupleParameter);
        (*v236)(v118, v238);
      }

      sub_22C36DD28(v112, &qword_27D9BAA78, &unk_22C90D110);
LABEL_67:
      v92 = v249;
      goto LABEL_68;
    }
  }

LABEL_72:
  v124 = v234;
  sub_22C7F4250();
  sub_22C90B62C();

  sub_22C9097DC();
  sub_22C909FFC();

  v125 = (v124 + *(DecorationTupleParameter + 20));
  v251 = *v125;
  MEMORY[0x2318B8B10]();
  v248 = type metadata accessor for QueryDecorationEntity(0);
  v126 = *(v248 + 20);
  DecorationEntity = v125;
  v246 = v126;
  v127 = sub_22C7E5918();
  sub_22C90B62C();
  MEMORY[0x2318B8B10](v127);
  v128 = sub_22C90B66C();
  MEMORY[0x2318B8B10](v128);
  v129 = sub_22C90B66C();
  v130 = -1 << *(v92 + 32);
  v131 = v129 & ~v130;
  if ((*(v254 + ((v131 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v131))
  {
    v132 = ~v130;
    do
    {
      sub_22C7F4250();
      if ((sub_22C9097CC() & 1) != 0 && *&v44[*(DecorationTupleParameter + 20)] == v251)
      {
        v133 = *(v250 + 48);
        sub_22C7F4250();
        sub_22C7F4250();
        v134 = swift_getEnumCaseMultiPayload();
        if (v134)
        {
          if (v134 == 1)
          {
            v135 = v230;
            sub_22C7F4250();
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              v136 = &v23[v133];
              v137 = v217;
              v138 = v239;
              (*v231)(v217, v136, v239);
              LODWORD(v233) = sub_22C90393C();
              v139 = v23;
              v140 = *v237;
              (*v237)(v137, v138);
              sub_22C7F4300(v44, type metadata accessor for QueryDecorationTupleParameter);
              v140(v135, v138);
              if (v233)
              {
                sub_22C7F4300(v234, type metadata accessor for QueryDecorationTupleParameter);
                sub_22C7F4300(v139, type metadata accessor for QueryDecorationEntityValue);
                v92 = v249;
                v23 = v139;
                v68 = v240;
LABEL_122:
                sub_22C6A6204(v257, v92, v172, v173, v174, v175, v176, v177, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223);

                v83 = v243;
                v67 = sub_22C7F4300(v243, type metadata accessor for QueryDecorationTupleParameter);
LABEL_123:
                v70 = v242;
LABEL_124:
                v84 = v222;
                v92 = v249;
LABEL_125:
                v99 = v232 + 1;
                if (v232 + 1 == v225)
                {

                  goto LABEL_129;
                }

                goto LABEL_44;
              }

              sub_22C7F4300(v139, type metadata accessor for QueryDecorationEntityValue);
              v23 = v139;
              v68 = v240;
              v124 = v234;
              goto LABEL_88;
            }

            sub_22C7F4300(v44, type metadata accessor for QueryDecorationTupleParameter);
            (*v237)(v135, v239);
          }

          else
          {
            sub_22C7F4300(v44, type metadata accessor for QueryDecorationTupleParameter);
            if (swift_getEnumCaseMultiPayload() == 2)
            {
              sub_22C7F4300(v124, type metadata accessor for QueryDecorationTupleParameter);
              sub_22C7F4300(v23, type metadata accessor for QueryDecorationEntityValue);
              v92 = v249;
              goto LABEL_122;
            }
          }

LABEL_87:
          sub_22C36DD28(v23, &qword_27D9BAA78, &unk_22C90D110);
LABEL_88:
          v92 = v249;
          goto LABEL_89;
        }

        v141 = v229;
        sub_22C7F4250();
        if (swift_getEnumCaseMultiPayload())
        {
          sub_22C7F4300(v44, type metadata accessor for QueryDecorationTupleParameter);
          (*v236)(v141, v238);
          goto LABEL_87;
        }

        v142 = &v23[v133];
        v143 = v216;
        v144 = v238;
        (*v228)(v216, v142, v238);
        LODWORD(v233) = sub_22C9039EC();
        v145 = *v236;
        (*v236)(v143, v144);
        sub_22C7F4300(v44, type metadata accessor for QueryDecorationTupleParameter);
        v68 = v240;
        v146 = v144;
        v124 = v234;
        v145(v141, v146);
        v23 = v241;
        sub_22C7F4300(v241, type metadata accessor for QueryDecorationEntityValue);
        v92 = v249;
        if (v233)
        {
          sub_22C7F4300(v124, type metadata accessor for QueryDecorationTupleParameter);
          goto LABEL_122;
        }
      }

      else
      {
        sub_22C7F4300(v44, type metadata accessor for QueryDecorationTupleParameter);
      }

LABEL_89:
      v131 = (v131 + 1) & v132;
    }

    while (((*(v254 + ((v131 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v131) & 1) != 0);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_22C7F4250();
  v255 = v92;
  if (*(v92 + 24) > *(v92 + 16))
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_22C5E2F48();
    }

    goto LABEL_120;
  }

  if (isUniquelyReferenced_nonNull_native)
  {
    sub_22C5E197C();
  }

  else
  {
    sub_22C5E58C0();
  }

  v148 = v255;
  sub_22C90B62C();
  v149 = v244;
  sub_22C9097DC();
  sub_22C909FFC();

  v150 = &v149[*(DecorationTupleParameter + 20)];
  v251 = *v150;
  MEMORY[0x2318B8B10]();
  v151 = *(v248 + 20);
  DecorationEntity = v150;
  v246 = v151;
  LOBYTE(v149) = sub_22C7E5918();
  sub_22C90B62C();
  MEMORY[0x2318B8B10](v149);
  v152 = sub_22C90B66C();
  MEMORY[0x2318B8B10](v152);
  v153 = sub_22C90B66C();
  v154 = v148 + 56;
  v155 = -1 << *(v148 + 32);
  v131 = v153 & ~v155;
  if (((*(v148 + 56 + ((v131 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v131) & 1) == 0)
  {
LABEL_120:
    v92 = v255;
    *(v255 + ((v131 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v131;
    sub_22C7F42A8();
    v67 = sub_22C7F4300(v234, type metadata accessor for QueryDecorationTupleParameter);
    v170 = *(v92 + 16);
    v64 = __OFADD__(v170, 1);
    v171 = v170 + 1;
    if (!v64)
    {
      *(v92 + 16) = v171;
      goto LABEL_122;
    }

    goto LABEL_156;
  }

  v156 = ~v155;
  v233 = v148;
  while (1)
  {
    sub_22C7F4250();
    if ((sub_22C9097CC() & 1) == 0 || *(v68 + *(DecorationTupleParameter + 20)) != v251)
    {
      sub_22C7F4300(v68, type metadata accessor for QueryDecorationTupleParameter);
      goto LABEL_116;
    }

    v157 = *(v250 + 48);
    sub_22C7F4250();
    sub_22C7F4250();
    v158 = swift_getEnumCaseMultiPayload();
    if (v158)
    {
      break;
    }

    v159 = v245;
    v165 = v221;
    sub_22C7F4250();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_22C7F4300(v68, type metadata accessor for QueryDecorationTupleParameter);
      (*v236)(v165, v238);
      goto LABEL_114;
    }

    v166 = v212;
    v167 = v238;
    (*v228)(v212, v159 + v157, v238);
    HIDWORD(v218) = sub_22C9039EC();
    v168 = *v236;
    (*v236)(v166, v167);
    sub_22C7F4300(v240, type metadata accessor for QueryDecorationTupleParameter);
    v169 = v167;
    v68 = v240;
    v168(v221, v169);
    sub_22C7F4300(v159, type metadata accessor for QueryDecorationEntityValue);
    v23 = v241;
    if ((v218 & 0x100000000) != 0)
    {
      goto LABEL_168;
    }

LABEL_116:
    v131 = (v131 + 1) & v156;
    if (((*(v154 + ((v131 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v131) & 1) == 0)
    {
      goto LABEL_120;
    }
  }

  if (v158 == 1)
  {
    v159 = v245;
    v160 = v226;
    sub_22C7F4250();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v161 = v214;
      v162 = v239;
      (*v231)(v214, v159 + v157, v239);
      HIDWORD(v218) = sub_22C90393C();
      v163 = *v237;
      (*v237)(v161, v162);
      v164 = v163;
      sub_22C7F4300(v240, type metadata accessor for QueryDecorationTupleParameter);
      v68 = v240;
      v164(v226, v162);
      if ((v218 & 0x100000000) != 0)
      {
        goto LABEL_167;
      }

      sub_22C7F4300(v159, type metadata accessor for QueryDecorationEntityValue);
      goto LABEL_115;
    }

    sub_22C7F4300(v68, type metadata accessor for QueryDecorationTupleParameter);
    (*v237)(v160, v239);
LABEL_114:
    sub_22C36DD28(v159, &qword_27D9BAA78, &unk_22C90D110);
LABEL_115:
    v23 = v241;
    goto LABEL_116;
  }

  sub_22C7F4300(v68, type metadata accessor for QueryDecorationTupleParameter);
  v159 = v245;
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    goto LABEL_114;
  }

LABEL_167:
  sub_22C7F4300(v159, type metadata accessor for QueryDecorationEntityValue);
LABEL_168:
  result = sub_22C90B53C();
  __break(1u);
  return result;
}

uint64_t sub_22C7EBBA8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  DecorationTuple = type metadata accessor for QueryDecorationTuple(0);
  v6 = DecorationTuple - 8;
  v7 = MEMORY[0x28223BE20](DecorationTuple);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v15 - v10;
  v12 = *a1;
  v13 = sub_22C9037EC();
  (*(*(v13 - 8) + 16))(v9, a3, v13);
  *&v9[*(v6 + 28)] = v12;

  sub_22C6A5F0C();
  return sub_22C7F4300(v11, type metadata accessor for QueryDecorationTuple);
}

unint64_t *sub_22C7EBD40(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *), uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v9 = sub_22C7ED840(v8, a2, a3, a4);

    return v9;
  }

  return result;
}

void sub_22C7EBDD0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (a3)
  {
    if (*(a4 + 16) != a3)
    {
      sub_22C3A5908(&qword_27D9BF0A0, &unk_22C922100);
      v7 = sub_22C37E8A8();
      v8 = v7;
      if (a2 < 1)
      {
        v9 = 0;
      }

      else
      {
        v9 = *a1;
      }

      v10 = 0;
      v11 = v7 + 56;
      v27 = v4;
      while (v9)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_16:
        v17 = (*(v4 + 48) + 16 * (v12 | (v10 << 6)));
        v18 = *v17;
        v19 = v17[1];
        sub_22C90B62C();

        sub_22C909FFC();
        sub_22C90B66C();
        sub_22C36C03C();
        sub_22C37AC88();
        if (v20)
        {
          sub_22C370840();
          while (1)
          {
            sub_22C36D130();
            if (v20)
            {
              if (v23)
              {
                goto LABEL_29;
              }
            }

            if (v22 == v24)
            {
              v22 = 0;
            }

            if (*(v11 + 8 * v22) != -1)
            {
              sub_22C36D900();
              goto LABEL_26;
            }
          }
        }

        sub_22C37F394();
LABEL_26:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v25 = (*(v8 + 48) + 16 * v21);
        *v25 = v18;
        v25[1] = v19;
        sub_22C386020();
        if (v26)
        {
          goto LABEL_30;
        }

        v4 = v27;
      }

      v13 = v10;
      while (1)
      {
        v10 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v10 >= a2)
        {
          goto LABEL_5;
        }

        sub_22C7F4828();
        if (v14)
        {
          sub_22C375A38();
          v9 = v16 & v15;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
    }
  }

  else
  {
LABEL_5:
  }
}

void sub_22C7EBF94()
{
  sub_22C36BA7C();
  v4 = v3;
  v5 = sub_22C388410();
  v6 = type metadata accessor for PromptTreeIdentifier.Label(v5);
  MEMORY[0x28223BE20](v6 - 8);
  if (!v0)
  {
LABEL_28:

LABEL_29:
    sub_22C36CC48();
    return;
  }

  if (*(v4 + 16) == v0)
  {
    goto LABEL_29;
  }

  sub_22C3A5908(&qword_27D9BF160, &qword_22C921FC8);
  v7 = sub_22C37E8A8();
  v8 = v7;
  if (v1 < 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = *v2;
  }

  v10 = 0;
  v11 = v7 + 56;
  while (v9)
  {
    sub_22C3D34C8();
LABEL_16:
    sub_22C7F4250();
    sub_22C90B62C();
    sub_22C48640C();
    sub_22C90B66C();
    sub_22C36C03C();
    sub_22C37AC88();
    if (v15)
    {
      sub_22C370840();
      while (1)
      {
        sub_22C36D130();
        if (v15)
        {
          if (v18)
          {
            goto LABEL_31;
          }
        }

        if (v17 == v19)
        {
          v17 = 0;
        }

        if (*(v11 + 8 * v17) != -1)
        {
          sub_22C36D900();
          goto LABEL_26;
        }
      }
    }

    sub_22C37F394();
LABEL_26:
    *(v11 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
    sub_22C7F42A8();
    ++*(v8 + 16);
    if (__OFSUB__(v0--, 1))
    {
      goto LABEL_32;
    }

    if (!v0)
    {
      goto LABEL_28;
    }
  }

  v12 = v10;
  while (1)
  {
    v10 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v10 >= v1)
    {
      goto LABEL_28;
    }

    ++v12;
    if (v2[v10])
    {
      sub_22C375A38();
      v9 = v14 & v13;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

void sub_22C7EC1E8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (a3)
  {
    if (*(a4 + 16) != a3)
    {
      sub_22C3A5908(&qword_27D9BF078, &unk_22C926CB0);
      v7 = sub_22C37E8A8();
      v8 = v7;
      if (a2 < 1)
      {
        v9 = 0;
      }

      else
      {
        v9 = *a1;
      }

      v10 = 0;
      v11 = v7 + 56;
      v12 = 24;
      v30 = v4;
      while (v9)
      {
        v13 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_16:
        v17 = *(v4 + 48) + (v13 | (v10 << 6)) * v12;
        v19 = *v17;
        v18 = *(v17 + 8);
        v20 = *(v17 + 16);
        sub_22C90B62C();
        MEMORY[0x2318B8B30](v19 >> 14);
        MEMORY[0x2318B8B30](v18 >> 14);
        MEMORY[0x2318B8B10](v20);
        sub_22C90B66C();
        sub_22C36C03C();
        sub_22C37AC88();
        if (v21)
        {
          sub_22C370840();
          while (1)
          {
            sub_22C36D130();
            if (v21)
            {
              if (v23)
              {
                goto LABEL_29;
              }
            }

            if (v22 == v24)
            {
              v22 = 0;
            }

            if (*(v11 + 8 * v22) != -1)
            {
              sub_22C36D900();
              goto LABEL_26;
            }
          }
        }

        sub_22C37F394();
LABEL_26:
        sub_22C36D914();
        *(v11 + v25) |= v26;
        v28 = *(v8 + 48) + 24 * v27;
        *v28 = v19;
        *(v28 + 8) = v18;
        *(v28 + 16) = v20;
        sub_22C386020();
        if (v29)
        {
          goto LABEL_30;
        }

        v4 = v30;
      }

      v14 = v10;
      while (1)
      {
        v10 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v10 >= a2)
        {
          goto LABEL_5;
        }

        ++v14;
        if (a1[v10])
        {
          sub_22C375A38();
          v9 = v16 & v15;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
    }
  }

  else
  {
LABEL_5:
  }
}

void sub_22C7EC3CC()
{
  sub_22C36BA7C();
  v4 = v3;
  sub_22C388410();
  sub_22C901FAC();
  sub_22C369824();
  MEMORY[0x28223BE20](v5);
  sub_22C3698A8();
  if (!v0)
  {
LABEL_23:

LABEL_24:
    sub_22C36CC48();
    return;
  }

  if (*(v4 + 16) == v0)
  {
    goto LABEL_24;
  }

  sub_22C3A5908(&qword_27D9BF120, &unk_22C926C80);
  sub_22C37E8A8();
  sub_22C3745DC();
  while (v6)
  {
    sub_22C3813F0();
LABEL_13:
    v11 = sub_22C37B7E4();
    v12(v11);
    sub_22C371E00();
    v14 = sub_22C7F4358(&qword_2814357B0, v13, MEMORY[0x277D1C348]);
    sub_22C7F4780(v14);
    sub_22C36C03C();
    sub_22C37AC88();
    if (v15)
    {
      sub_22C370840();
      while (1)
      {
        sub_22C36D130();
        if (v15)
        {
          if (v17)
          {
            goto LABEL_26;
          }
        }

        sub_22C5E7554();
        if (!v15)
        {
          sub_22C36D900();
          goto LABEL_21;
        }
      }
    }

    sub_22C37F394();
LABEL_21:
    v18 = sub_22C7F443C(v16);
    v19(v18);
    sub_22C7F455C();
    if (v20)
    {
      goto LABEL_27;
    }

    v6 = v21;
  }

  v7 = v2;
  while (1)
  {
    v2 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v2 >= v1)
    {
      goto LABEL_23;
    }

    sub_22C7F4828();
    if (v8)
    {
      sub_22C375A38();
      v21 = v10 & v9;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
}

void sub_22C7EC5C0()
{
  sub_22C36BA7C();
  v4 = v3;
  sub_22C388410();
  sub_22C90952C();
  sub_22C369824();
  MEMORY[0x28223BE20](v5);
  sub_22C3698A8();
  if (!v0)
  {
LABEL_23:

LABEL_24:
    sub_22C36CC48();
    return;
  }

  if (*(v4 + 16) == v0)
  {
    goto LABEL_24;
  }

  sub_22C3A5908(&qword_27D9BF0A8, &unk_22C921F20);
  sub_22C37E8A8();
  sub_22C3745DC();
  while (v6)
  {
    sub_22C3813F0();
LABEL_13:
    v11 = sub_22C37B7E4();
    v12(v11);
    v13 = sub_22C7F4358(&qword_28142FA80, MEMORY[0x277D72D58], MEMORY[0x277D72D68]);
    sub_22C7F4780(v13);
    sub_22C36C03C();
    sub_22C37AC88();
    if (v14)
    {
      sub_22C370840();
      while (1)
      {
        sub_22C36D130();
        if (v14)
        {
          if (v16)
          {
            goto LABEL_26;
          }
        }

        sub_22C5E7554();
        if (!v14)
        {
          sub_22C36D900();
          goto LABEL_21;
        }
      }
    }

    sub_22C37F394();
LABEL_21:
    v17 = sub_22C7F443C(v15);
    v18(v17);
    sub_22C7F455C();
    if (v19)
    {
      goto LABEL_27;
    }

    v6 = v20;
  }

  v7 = v2;
  while (1)
  {
    v2 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v2 >= v1)
    {
      goto LABEL_23;
    }

    sub_22C7F4828();
    if (v8)
    {
      sub_22C375A38();
      v20 = v10 & v9;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
}

void sub_22C7EC7C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C36BA7C();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v114 = sub_22C908C5C();
  sub_22C369824();
  v112 = v30;
  MEMORY[0x28223BE20](v31);
  sub_22C3698A8();
  v123 = v32;
  sub_22C36BA0C();
  v122 = sub_22C901FAC();
  sub_22C369824();
  v111 = v33;
  MEMORY[0x28223BE20](v34);
  sub_22C3698A8();
  sub_22C36D234(v35);
  v36 = sub_22C3A5908(&qword_27D9BF0F0, &qword_22C921F58);
  v37 = sub_22C369914(v36);
  MEMORY[0x28223BE20](v37);
  sub_22C369ABC();
  v40 = v38 - v39;
  MEMORY[0x28223BE20](v41);
  v43 = &v98 - v42;
  if (!v25)
  {
LABEL_33:

LABEL_34:
    sub_22C36CC48();
    return;
  }

  if (*(v23 + 16) == v25)
  {
    goto LABEL_34;
  }

  sub_22C3A5908(&qword_27D9BF0F8, &unk_22C921F60);
  v44 = sub_22C90AEFC();
  if (v27 < 1)
  {
    v45 = 0;
  }

  else
  {
    v45 = *v29;
  }

  v46 = 0;
  v109 = v111 + 16;
  v108 = v112 + 16;
  v47 = (v111 + 32);
  v120 = v112 + 32;
  v116 = v111 + 8;
  v115 = v112 + 8;
  v102 = v44 + 56;
  v100 = v27;
  v99 = v29;
  v119 = v40;
  v110 = v43;
  v107 = (v111 + 32);
  v101 = v23;
  v103 = v44;
  while (v45)
  {
    v106 = v25;
    v104 = (v45 - 1) & v45;
    v105 = v46;
    v48 = __clz(__rbit64(v45)) | (v46 << 6);
LABEL_16:
    v55 = *(*(v23 + 48) + 8 * v48);
    sub_22C90B62C();
    v56 = v55 + 64;
    v57 = 1 << *(v55 + 32);
    if (v57 < 64)
    {
      v58 = ~(-1 << v57);
    }

    else
    {
      v58 = -1;
    }

    v59 = v58 & *(v55 + 64);
    v118 = (v57 + 63) >> 6;
    v113 = v55;
    swift_bridgeObjectRetain_n();
    v60 = 0;
    v61 = 0;
    v62 = v114;
    for (i = v55 + 64; ; v56 = i)
    {
      v124 = v60;
      if (!v59)
      {
        v64 = v119;
        while (1)
        {
          v63 = v61 + 1;
          if (__OFADD__(v61, 1))
          {
            break;
          }

          if (v63 >= v118)
          {
            v93 = sub_22C3A5908(&qword_27D9BF100, &qword_22C922FE0);
            sub_22C374D84(v64, v94, v95, v93);
            v59 = 0;
            goto LABEL_28;
          }

          v59 = *(v56 + 8 * v63);
          ++v61;
          if (v59)
          {
            v61 = v63;
            goto LABEL_27;
          }
        }

        __break(1u);
        goto LABEL_36;
      }

      v63 = v61;
LABEL_27:
      v65 = __clz(__rbit64(v59));
      v59 &= v59 - 1;
      v66 = v65 | (v63 << 6);
      v67 = v113;
      v68 = v111;
      v69 = v121;
      v70 = v122;
      (*(v111 + 16))(v121, *(v113 + 48) + *(v111 + 72) * v66, v122);
      v71 = v112;
      v72 = v123;
      (*(v112 + 16))(v123, *(v67 + 56) + *(v112 + 72) * v66, v62);
      v73 = *(sub_22C3A5908(&qword_27D9BF100, &qword_22C922FE0) + 48);
      v74 = *(v68 + 32);
      v75 = v119;
      v76 = v69;
      v47 = v107;
      v74(v119, v76, v70);
      v77 = v75 + v73;
      v62 = v114;
      (*(v71 + 32))(v77, v72, v114);
      sub_22C633C54();
      sub_22C36C640(v78, v79, v80, v81);
      v43 = v110;
LABEL_28:
      sub_22C407C2C();
      v82 = sub_22C3A5908(&qword_27D9BF100, &qword_22C922FE0);
      sub_22C36D3E0(v43);
      if (v83)
      {
        break;
      }

      v84 = *(v82 + 48);
      v85 = v121;
      v86 = v122;
      (*v47)(v121, v43, v122);
      sub_22C36BA4C();
      v87 = v123;
      v88(v123, &v43[v84], v62);
      memcpy(v125, v126, sizeof(v125));
      sub_22C371E00();
      sub_22C7F4358(&qword_2814357B0, v89, MEMORY[0x277D1C348]);
      sub_22C909F8C();
      sub_22C36BA4C();
      v90(v85, v86);
      sub_22C380600();
      sub_22C7F4358(&qword_27D9BAA90, v91, MEMORY[0x277D1E970]);
      sub_22C909F8C();
      sub_22C36BA4C();
      v92(v87, v62);
      v60 = sub_22C90B66C() ^ v124;
    }

    sub_22C38B1DC(&a10);

    MEMORY[0x2318B8B10](v124);
    sub_22C90B66C();
    v96 = v103;
    sub_22C5CAC28();
    v97 = sub_22C90AE8C();
    *(&qword_27D9BF100 + ((v97 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v97;
    *(*(v96 + 48) + 8 * v97) = &qword_22C922FE0;
    ++*(v96 + 16);
    v25 = v106 - 1;
    if (__OFSUB__(v106, 1))
    {
      goto LABEL_37;
    }

    v23 = v101;
    v27 = v100;
    v29 = v99;
    v46 = v105;
    v45 = v104;
    if (v106 == 1)
    {
      goto LABEL_33;
    }
  }

  v49 = v46;
  while (1)
  {
    v50 = v49 + 1;
    if (__OFADD__(v49, 1))
    {
      break;
    }

    if (v50 >= v27)
    {
      goto LABEL_33;
    }

    ++v49;
    if (v29[v50])
    {
      v106 = v25;
      sub_22C375A38();
      v104 = v52 & v51;
      v105 = v53;
      v48 = v54 | (v53 << 6);
      goto LABEL_16;
    }
  }

LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
}

unint64_t sub_22C7ECEE4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_22C3A5908(&qword_27D9BF098, &unk_22C921F10);
  result = sub_22C90AEFC();
  v6 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = *(*(a4 + 48) + 8 * (v13 | (v11 << 6)));
    sub_22C90B62C();

    sub_22C7E6754();
    sub_22C90B66C();
    result = sub_22C90AE8C();
    *(v12 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    *(*(v6 + 48) + 8 * result) = v16;
    ++*(v6 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_21;
    }

    if (!v5)
    {
LABEL_18:

      return v6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_18;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void sub_22C7ED08C()
{
  sub_22C36BA7C();
  v4 = v3;
  sub_22C388410();
  sub_22C908EAC();
  sub_22C369824();
  MEMORY[0x28223BE20](v5);
  sub_22C3698A8();
  if (!v0)
  {
LABEL_23:

LABEL_24:
    sub_22C36CC48();
    return;
  }

  if (*(v4 + 16) == v0)
  {
    goto LABEL_24;
  }

  sub_22C3A5908(&qword_27D9BF0E0, &qword_22C921F50);
  sub_22C37E8A8();
  sub_22C3745DC();
  while (v6)
  {
    sub_22C3813F0();
LABEL_13:
    v11 = sub_22C37B7E4();
    v12(v11);
    v13 = sub_22C7F4358(&qword_27D9BAA80, MEMORY[0x277D72238], MEMORY[0x277D72248]);
    sub_22C7F4780(v13);
    sub_22C36C03C();
    sub_22C37AC88();
    if (v14)
    {
      sub_22C370840();
      while (1)
      {
        sub_22C36D130();
        if (v14)
        {
          if (v16)
          {
            goto LABEL_26;
          }
        }

        sub_22C5E7554();
        if (!v14)
        {
          sub_22C36D900();
          goto LABEL_21;
        }
      }
    }

    sub_22C37F394();
LABEL_21:
    v17 = sub_22C7F443C(v15);
    v18(v17);
    sub_22C7F455C();
    if (v19)
    {
      goto LABEL_27;
    }

    v6 = v20;
  }

  v7 = v2;
  while (1)
  {
    v2 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v2 >= v1)
    {
      goto LABEL_23;
    }

    sub_22C7F4828();
    if (v8)
    {
      sub_22C375A38();
      v20 = v10 & v9;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
}

void sub_22C7ED290(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (a3)
  {
    if (*(a4 + 16) != a3)
    {
      sub_22C3A5908(&qword_27D9BF0E8, &unk_22C926C70);
      v7 = sub_22C37E8A8();
      v8 = v7;
      if (a2 < 1)
      {
        v9 = 0;
      }

      else
      {
        v9 = *a1;
      }

      v10 = 0;
      v11 = v7 + 56;
      v12 = 24;
      v30 = v4;
      while (v9)
      {
        v13 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_16:
        v17 = *(v4 + 48) + (v13 | (v10 << 6)) * v12;
        v18 = *v17;
        v19 = *(v17 + 8);
        v20 = *(v17 + 16);
        sub_22C90B62C();

        sub_22C909FFC();
        sub_22C90B64C();
        sub_22C90B66C();
        sub_22C36C03C();
        sub_22C37AC88();
        if (v21)
        {
          sub_22C370840();
          while (1)
          {
            sub_22C36D130();
            if (v21)
            {
              if (v23)
              {
                goto LABEL_29;
              }
            }

            if (v22 == v24)
            {
              v22 = 0;
            }

            if (*(v11 + 8 * v22) != -1)
            {
              sub_22C36D900();
              goto LABEL_26;
            }
          }
        }

        sub_22C37F394();
LABEL_26:
        sub_22C36D914();
        *(v11 + v25) |= v26;
        v28 = *(v8 + 48) + 24 * v27;
        *v28 = v18;
        *(v28 + 8) = v19;
        *(v28 + 16) = v20;
        sub_22C386020();
        if (v29)
        {
          goto LABEL_30;
        }

        v4 = v30;
      }

      v14 = v10;
      while (1)
      {
        v10 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v10 >= a2)
        {
          goto LABEL_5;
        }

        ++v14;
        if (a1[v10])
        {
          sub_22C375A38();
          v9 = v16 & v15;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
    }
  }

  else
  {
LABEL_5:
  }
}

void sub_22C7ED470(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(__int128 *))
{
  v7 = 0;
  v8 = a3 + 56;
  sub_22C36D280();
  v11 = v10 & v9;
  v13 = (v12 + 63) >> 6;
  while (v11)
  {
    sub_22C3D34C8();
LABEL_9:
    v18 = v14 | (v7 << 6);
    v19 = *(a3 + 48) + 24 * v18;
    v20 = *(v19 + 16);
    v25 = *v19;
    v26 = v20;
    v21 = a4(&v25);
    if (v4)
    {
      return;
    }

    if (v21)
    {
      sub_22C36D180((v18 >> 3) & 0x1FFFFFFFFFFFFFF8);
      if (__OFADD__(v27++, 1))
      {
        __break(1u);
LABEL_14:

        sub_22C7EC1E8(a1, a2, v27, a3);
        return;
      }
    }
  }

  v15 = v7;
  while (1)
  {
    v7 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v7 >= v13)
    {
      goto LABEL_14;
    }

    ++v15;
    if (*(v8 + 8 * v7))
    {
      sub_22C375A38();
      v11 = v17 & v16;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_22C7ED624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *), uint64_t a5, uint64_t (*a6)(void), void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v35 = a2;
  v36 = a7;
  v42 = a4;
  v37 = a1;
  v45 = a6(0);
  sub_22C369824();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v9);
  v43 = a3;
  v44 = &v35 - v10;
  v11 = 0;
  v12 = a3 + 56;
  sub_22C36D280();
  v15 = v14 & v13;
  v17 = (v16 + 63) >> 6;
  v40 = v18 + 16;
  v41 = v18;
  v38 = 0;
  v39 = v18 + 8;
  while (v15)
  {
    v19 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v20 = v19 | (v11 << 6);
    v21 = v45;
    v22 = v44;
LABEL_9:
    (*(v41 + 16))(v22, *(v43 + 48) + *(v41 + 72) * v20, v21);
    v27 = v42(v22);
    if (v7)
    {
      v33 = sub_22C7F4814();
      v34(v33);
      return;
    }

    v28 = v27;
    v29 = sub_22C7F4814();
    v30(v29);
    if (v28)
    {
      sub_22C36D180((v20 >> 3) & 0x1FFFFFFFFFFFFFF8);
      if (__OFADD__(v38++, 1))
      {
        __break(1u);
LABEL_14:
        v32 = v43;

        v36(v37, v35, v38, v32);
        return;
      }
    }
  }

  v23 = v11;
  v21 = v45;
  v22 = v44;
  while (1)
  {
    v11 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v11 >= v17)
    {
      goto LABEL_14;
    }

    ++v23;
    if (*(v12 + 8 * v11))
    {
      sub_22C375A38();
      v15 = v25 & v24;
      v20 = v26 | (v11 << 6);
      goto LABEL_9;
    }
  }

  __break(1u);
}

unint64_t *sub_22C7ED840(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *))
{
  v19 = 0;
  v18 = result;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v22 = *(*(a3 + 48) + 8 * v14);

    v15 = a4(&v22);

    if (v4)
    {
      return result;
    }

    if (v15)
    {
      *(v18 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v19++, 1))
      {
        __break(1u);
LABEL_16:

        return sub_22C7ECEE4(v18, a2, v19, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void sub_22C7ED9B0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  v28 = a4;
  v25 = 0;
  v6 = 0;
  v7 = a3 + 56;
  sub_22C36D280();
  v10 = v9 & v8;
  v12 = (v11 + 63) >> 6;
  while (v10)
  {
    sub_22C3D34C8();
LABEL_9:
    v17 = v13 | (v6 << 6);
    v18 = *(a3 + 48) + 24 * v17;
    v20 = *v18;
    v19 = *(v18 + 8);
    LOBYTE(v18) = *(v18 + 16);
    v26[0] = v20;
    v26[1] = v19;
    v27 = v18;

    v21 = v28(v26);

    if (v4)
    {
      return;
    }

    if (v21)
    {
      sub_22C36D180((v17 >> 3) & 0x1FFFFFFFFFFFFFF8);
      if (__OFADD__(v25++, 1))
      {
        __break(1u);
LABEL_14:

        sub_22C7ED290(a1, a2, v25, a3);
        return;
      }
    }
  }

  v14 = v6;
  while (1)
  {
    v6 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v6 >= v12)
    {
      goto LABEL_14;
    }

    ++v14;
    if (*(v7 + 8 * v6))
    {
      sub_22C375A38();
      v10 = v16 & v15;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_22C7EDAF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C36BA7C();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v1017 = v24;
  v25 = sub_22C901FAC();
  sub_22C369824();
  v27 = v26;
  MEMORY[0x28223BE20](v28);
  sub_22C369ABC();
  v31 = (v29 - v30);
  MEMORY[0x28223BE20](v32);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v33);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v34);
  sub_22C36BA58();
  v1090[2] = v35;
  sub_22C369930();
  MEMORY[0x28223BE20](v36);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v37);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v38);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v39);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v40);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v41);
  sub_22C36BA64();
  v43 = sub_22C3698F8(v42);
  v1090[8] = type metadata accessor for SegmentedPrompt.DeferredReference.TypeIdentifierReference(v43);
  sub_22C36985C();
  MEMORY[0x28223BE20](v44);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v45);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v46);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v47);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v48);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v49);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v50);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v51);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v52);
  sub_22C36BA58();
  v1090[3] = v53;
  sub_22C369930();
  MEMORY[0x28223BE20](v54);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v55);
  sub_22C36BA64();
  sub_22C3698F8(v56);
  v1090[7] = sub_22C90069C();
  sub_22C369824();
  v58 = v57;
  MEMORY[0x28223BE20](v59);
  sub_22C3698A8();
  v1090[6] = v60;
  v61 = sub_22C36BA0C();
  v62 = type metadata accessor for SegmentedPrompt.DeferredReference(v61);
  sub_22C36985C();
  MEMORY[0x28223BE20](v63);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v64);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v65);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v66);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v67);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v68);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v69);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v70);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v71);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v72);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v73);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v74);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v75);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v76);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v77);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v78);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v79);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v80);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v81);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v82);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v83);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v84);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v85);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v86);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v87);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v88);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v89);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v90);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v91);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v92);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v93);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v94);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v95);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v96);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v97);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v98);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v99);
  sub_22C36BA58();
  v1092 = v100;
  sub_22C369930();
  MEMORY[0x28223BE20](v101);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v102);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v103);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v104);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v105);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v106);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v107);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v108);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v109);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v110);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v111);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v112);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v113);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v114);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v115);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v116);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v117);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v118);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v119);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v120);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v121);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v122);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v123);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v124);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v125);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v126);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v127);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v128);
  sub_22C36BA64();
  v130 = sub_22C3698F8(v129);
  v131 = type metadata accessor for SegmentedPrompt.SegmentPayload(v130);
  sub_22C36985C();
  MEMORY[0x28223BE20](v132);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v133);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v134);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v135);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v136);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v137);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v138);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v139);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v140);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v141);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v142);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v143);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v144);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v145);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v146);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v147);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v148);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v149);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v150);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v151);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v152);
  sub_22C36BA64();
  v154 = sub_22C3698F8(v153);
  v1051[1] = type metadata accessor for SegmentedPrompt.Segment(v154);
  sub_22C369824();
  v1008 = v155;
  MEMORY[0x28223BE20](v156);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v157);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v158);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v159);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v160);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v161);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v162);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v163);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v164);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v165);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v166);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v167);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v168);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v169);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v170);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v171);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v172);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v173);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v174);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v175);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v176);
  sub_22C36BA64();
  sub_22C3698F8(v177);
  v1021 = sub_22C90430C();
  sub_22C369824();
  v179 = v178;
  MEMORY[0x28223BE20](v180);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v181);
  sub_22C36BA64();
  sub_22C36D234(v182);
  v183 = sub_22C3A5908(&qword_27D9BFC70, &unk_22C926C90);
  v184 = sub_22C369914(v183);
  MEMORY[0x28223BE20](v184);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v185);
  sub_22C36BA64();
  sub_22C36D234(v186);
  sub_22C36D280();
  v1024 = v188 & v187;
  v1018 = (v189 + 63) >> 6;
  v1009 = v179 + 16;
  v1011 = v179;
  v1013 = v179 + 8;
  v1079 = v27;
  v1047 = (v27 + 8);
  v1090[4] = v58 + 8;
  v1090[5] = v58 + 32;
  v1012 = v23;
  v191 = v190;

  v192 = 0;
  v193 = 0;
  v1031 = v31;
  v1080 = v62;
  v1095 = v131;
  v1014 = v191;
  v1093 = v27 + 16;
LABEL_2:
  v194 = v1024;
  v1023 = v192;
  if (v1024)
  {
    v1022 = v193;
    v195 = v193;
    goto LABEL_8;
  }

  while (1)
  {
    v195 = v193 + 1;
    if (__OFADD__(v193, 1))
    {
      break;
    }

    if (v195 >= v1018)
    {
      v1022 = v193;
      v1003 = sub_22C36BA00();
      v1005 = sub_22C3A5908(v1003, v1004);
      sub_22C374D84(v1020, v1006, v1007, v1005);
      v1024 = 0;
      goto LABEL_9;
    }

    v194 = *(v191 + 8 * v195);
    ++v193;
    if (v194)
    {
      v1022 = v195;
LABEL_8:
      v1024 = (v194 - 1) & v194;
      v196 = __clz(__rbit64(v194)) | (v195 << 6);
      (*(v1011 + 16))(v1010, *(v1012 + 48) + *(v1011 + 72) * v196, v1021);
      v197 = *(*(v1012 + 56) + 8 * v196);
      v31 = &qword_22C925060;
      v198 = *(sub_22C3A5908(&qword_27D9BFC78, &qword_22C925060) + 48);
      v62 = v1020;
      (*(v1011 + 32))(v1020, v1010, v1021);
      *(v1020 + v198) = v197;
      sub_22C633C54();
      sub_22C36C640(v199, v200, v201, v202);

LABEL_9:
      sub_22C407C2C();
      v203 = sub_22C36BA00();
      v205 = sub_22C3A5908(v203, v204);
      if (sub_22C370B74(v1016, 1, v205) == 1)
      {

        MEMORY[0x2318B8B10](v1023);
        sub_22C36CC48();
        return;
      }

      v206 = *(v205 + 48);
      sub_22C36BA4C();
      v207 = v1016;
      v208 = v1021;
      v209(v1015, v1016, v1021);
      v210 = *(v1016 + v206);
      memcpy(v1096, v1017, sizeof(v1096));
      sub_22C7F4358(&qword_27D9BC810, MEMORY[0x277D85578], MEMORY[0x277D85588]);
      sub_22C7E4C18();
      sub_22C909F8C();
      sub_22C36BA4C();
      v211(v1015, v1021);
      MEMORY[0x2318B8B10](*(v210 + 16));
      v1030 = *(v210 + 16);
      if (v1030)
      {
        v212 = 0;
        sub_22C382968();
        v1029 = v213;
        sub_22C37054C();
        v1019 = v210;
        v1051[0] = v214;
        v1028 = v210 + v214;
        v216 = v1046;
        v1094 = *(v215 + 72);
        sub_22C38C4D8();
        while (1)
        {
          sub_22C7F43BC();
          sub_22C7F4250();
          sub_22C388A74();
          sub_22C5CAC28();
          sub_22C7F4250();
          v217 = sub_22C7F46B0();
          v1045 = v212;
          if (!v217)
          {
            break;
          }

          if (v217 == 1)
          {
            v1091 = sub_22C3A5908(&qword_27D9BC848, &unk_22C926CA0);
            sub_22C7F44E0();
            sub_22C7F4588();
            sub_22C373A64();
            sub_22C5CAC28();
            sub_22C7F42A8();
            sub_22C7F4614();
            sub_22C378824();
            sub_22C5CAC28();
            sub_22C7F4250();
            v218 = sub_22C7F45AC();
            if (!v218)
            {
              sub_22C3834A8();
              sub_22C377748();
              v686();
              MEMORY[0x2318B8B10](0);
              sub_22C38C11C();
              sub_22C7F4358(&qword_27D9BC858, v687, MEMORY[0x277CC9600]);
              sub_22C37A430();
              sub_22C909F8C();
              v688 = sub_22C375118();
              v689(v688);
              goto LABEL_553;
            }

            if (v218 == 1)
            {
              sub_22C36C47C();
              sub_22C5CAC28();
              sub_22C7F42A8();
              MEMORY[0x2318B8B10](1);
              sub_22C387CAC();
              v1052 = *(v216 + 16);
              if (!v1052)
              {
LABEL_170:
                sub_22C7F44FC(v219, v220, v221, v222, v223, v224, v1037, v1008, v1009, v1010, v1011, v1012, v1013, v1014, v1015, v1016, v1017, v1018, v1019);
                sub_22C7F4484();
                sub_22C7F43A0();
                sub_22C7F4358(&qword_27D9BC850, v443, MEMORY[0x277D72E20]);
                sub_22C7F441C();
                v444 = sub_22C36A3D0();
                sub_22C7F4300(v444, v445);
                goto LABEL_553;
              }

              sub_22C382968();
              sub_22C3892D8(v225);
              v1049 = v226;
              v227 = 0;
              while (2)
              {
                v1070 = v227;
                sub_22C7F43BC();
                sub_22C7F4250();
                sub_22C388A74();
                sub_22C5CAC28();
                sub_22C7F4250();
                v228 = sub_22C7F46B0();
                if (v228)
                {
                  if (v228 == 1)
                  {
                    sub_22C383E5C();
                    sub_22C7F44E0();
                    v1033 = *v229;
                    sub_22C7F4588();
                    v1034 = v230;
                    sub_22C373A64();
                    sub_22C5CAC28();
                    sub_22C7F42A8();
                    sub_22C7F4614();
                    sub_22C378824();
                    sub_22C5CAC28();
                    sub_22C7F4250();
                    v231 = sub_22C7F45AC();
                    if (v231)
                    {
                      if (v231 == 1)
                      {
                        sub_22C36C47C();
                        sub_22C5CAC28();
                        sub_22C7F42A8();
                        MEMORY[0x2318B8B10](1);
                        sub_22C387CAC();
                        sub_22C7F4518(*(v227 + 16));
                        if (v238)
                        {
                          sub_22C7F43EC();
                          do
                          {
                            sub_22C7F43BC();
                            sub_22C7F4250();
                            sub_22C388A74();
                            sub_22C5CAC28();
                            sub_22C7F4250();
                            v239 = sub_22C7F46B0();
                            if (v239)
                            {
                              if (v239 == 1)
                              {
                                sub_22C383E5C();
                                sub_22C7F44E0();
                                v208 = *v240;
                                v207 = v240[1];
                                sub_22C373A64();
                                sub_22C5CAC28();
                                sub_22C7F42A8();
                                sub_22C7F4614();
                                sub_22C378824();
                                sub_22C5CAC28();
                                sub_22C7F4250();
                                v241 = sub_22C7F45AC();
                                v1053 = v208;
                                if (v241)
                                {
                                  if (v241 == 1)
                                  {
                                    sub_22C36C47C();
                                    sub_22C37EDA0();
                                    MEMORY[0x2318B8B10](1);
                                    sub_22C7F45FC();
                                    sub_22C7F4594(v242, v243, v244, v245, v246, v247, v248, v249, v1008, v1009, v1010, v1011, v1012, v1013, v1014, v1015, v1016, v1017, v1018, v1019);
                                    sub_22C7F4484();
                                    sub_22C7F43A0();
                                    sub_22C7F4358(&qword_27D9BC850, v250, MEMORY[0x277D72E20]);
                                    sub_22C7F441C();
                                    v251 = sub_22C36A3D0();
                                    sub_22C7F4300(v251, v252);
                                  }

                                  else
                                  {
                                    sub_22C37B0F0();
                                    sub_22C7F47FC();
                                    if (v208)
                                    {
                                      sub_22C7F43D4();
                                      v62 = *(v273 + 72);
                                      sub_22C371E00();
                                      sub_22C7F4358(&qword_2814357B0, v274, MEMORY[0x277D1C348]);
                                      do
                                      {
                                        sub_22C376028();
                                        sub_22C909F8C();
                                        sub_22C7F475C();
                                      }

                                      while (!v275);
                                    }

                                    sub_22C7F44BC();
                                    sub_22C4706F0();

                                    sub_22C381838();
                                  }
                                }

                                else
                                {
                                  sub_22C3834A8();
                                  sub_22C377748();
                                  v265();
                                  MEMORY[0x2318B8B10](0);
                                  sub_22C38C11C();
                                  sub_22C7F4358(&qword_27D9BC858, v266, MEMORY[0x277CC9600]);
                                  sub_22C37A430();
                                  sub_22C909F8C();
                                  v267 = sub_22C375118();
                                  v268(v267);
                                }

                                sub_22C7F479C();

                                sub_22C36B788();
                                sub_22C7F4300(v1069[3], v276);
                                sub_22C7F46C8();
                              }

                              else
                              {
                                sub_22C376A28();
                                sub_22C7F44A0();
                              }
                            }

                            else
                            {
                              sub_22C373A64();
                              sub_22C5CAC28();
                              sub_22C7F42A8();
                              sub_22C7F462C();
                              sub_22C378824();
                              sub_22C5CAC28();
                              sub_22C7F4250();
                              v253 = sub_22C7F45AC();
                              if (v253)
                              {
                                if (v253 == 1)
                                {
                                  sub_22C36C47C();
                                  sub_22C37EDA0();
                                  MEMORY[0x2318B8B10](1);
                                  sub_22C7F45FC();
                                  sub_22C7F4594(v254, v255, v256, v257, v258, v259, v260, v261, v1008, v1009, v1010, v1011, v1012, v1013, v1014, v1015, v1016, v1017, v1018, v1019);
                                  sub_22C7F4484();
                                  sub_22C7F43A0();
                                  sub_22C7F4358(&qword_27D9BC850, v262, MEMORY[0x277D72E20]);
                                  sub_22C7F441C();
                                  v263 = sub_22C36A3D0();
                                  sub_22C7F4300(v263, v264);
                                }

                                else
                                {
                                  sub_22C3866A4();
                                  sub_22C7F45C4();
                                  sub_22C7F47E4();
                                  if (v208)
                                  {
                                    sub_22C7F43D4();
                                    sub_22C371E00();
                                    v62 = sub_22C7F4358(&qword_2814357B0, v277, MEMORY[0x277D1C348]);
                                    do
                                    {
                                      sub_22C376028();
                                      sub_22C909F8C();
                                      sub_22C7F4750();
                                    }

                                    while (!v275);
                                  }

                                  sub_22C7F44BC();
                                  sub_22C4706F0();

                                  sub_22C37B438();
                                }
                              }

                              else
                              {
                                sub_22C3834A8();
                                sub_22C377748();
                                v269();
                                MEMORY[0x2318B8B10](0);
                                sub_22C38C11C();
                                sub_22C7F4358(&qword_27D9BC858, v270, MEMORY[0x277CC9600]);
                                sub_22C37A430();
                                sub_22C909F8C();
                                v271 = sub_22C375118();
                                v272(v271);
                              }

                              sub_22C36B788();
                              sub_22C7F4300(v1069[1], v278);
                            }

                            sub_22C386394();
                            v279 = *(v208 + 16);
                            if (v279)
                            {
                              v208 += 32;
                              do
                              {
                                sub_22C7F4674();
                                --v279;
                              }

                              while (v279);
                            }

                            v31 = (v31 + 1);
                            sub_22C372DF0();
                            sub_22C7F4714(v280, &a13);
                            sub_22C7F44EC();
                          }

                          while (!v275);
                        }

                        sub_22C7F44FC(v232, v233, v234, v235, v236, v237, &v1043, v1008, v1009, v1010, v1011, v1012, v1013, v1014, v1015, v1016, v1017, v1018, v1019);
                        sub_22C7F4484();
                        sub_22C7F43A0();
                        sub_22C7F4358(&qword_27D9BC850, v281, MEMORY[0x277D72E20]);
                        sub_22C7F441C();
                        v282 = sub_22C36A3D0();
                        sub_22C7F4300(v282, v283);
                      }

                      else
                      {
                        sub_22C7F4524();
                        sub_22C7F46FC(v345);
                        MEMORY[0x2318B8B10](*(v227 + 16));
                        sub_22C7F457C(&v1046);
                        v31 = &qword_2814357B0;
                        if (v208)
                        {
                          sub_22C7F43D4();
                          sub_22C37BC60();
                          do
                          {
                            v346 = sub_22C7F4474();
                            (v62)(v346);
                            sub_22C371E00();
                            sub_22C7F4358(&qword_2814357B0, v347, MEMORY[0x277D1C348]);
                            sub_22C7E4C18();
                            sub_22C909F8C();
                            v348 = sub_22C37BFBC();
                            v349(v348);
                            sub_22C7F4570();
                          }

                          while (!v275);
                        }

                        sub_22C386DE8();
                        sub_22C7F4518(*(v227 + 16));
                        if (v350)
                        {
                          sub_22C7F43EC();
                          sub_22C38C4D8();
                          do
                          {
                            sub_22C7F43BC();
                            sub_22C7F4250();
                            sub_22C388A74();
                            sub_22C5CAC28();
                            sub_22C7F4250();
                            v351 = sub_22C7F46B0();
                            if (v351)
                            {
                              if (v351 == 1)
                              {
                                sub_22C383E5C();
                                sub_22C7F44E0();
                                v207 = *(v352 + 8);
                                sub_22C7F4668(*(v352 + 16));
                                sub_22C373A64();
                                sub_22C5CAC28();
                                sub_22C7F42A8();
                                sub_22C7F4614();
                                sub_22C378824();
                                sub_22C5CAC28();
                                sub_22C7F4250();
                                v353 = sub_22C7F45AC();
                                if (v353)
                                {
                                  if (v353 == 1)
                                  {
                                    sub_22C36C47C();
                                    sub_22C37EDA0();
                                    MEMORY[0x2318B8B10](1);
                                    sub_22C7F45FC();
                                    sub_22C7F4594(v354, v355, v356, v357, v358, v359, v360, v361, v1008, v1009, v1010, v1011, v1012, v1013, v1014, v1015, v1016, v1017, v1018, v1019);
                                    sub_22C7F4484();
                                    sub_22C7F43A0();
                                    sub_22C7F4358(&qword_27D9BC850, v362, MEMORY[0x277D72E20]);
                                    sub_22C7F441C();
                                    v363 = sub_22C36A3D0();
                                    sub_22C7F4300(v363, v364);
                                  }

                                  else
                                  {
                                    sub_22C37B0F0();
                                    sub_22C7F47FC();
                                    if (v208)
                                    {
                                      sub_22C7F43D4();
                                      v62 = *(v385 + 72);
                                      sub_22C371E00();
                                      sub_22C7F4358(&qword_2814357B0, v386, MEMORY[0x277D1C348]);
                                      do
                                      {
                                        sub_22C376028();
                                        sub_22C909F8C();
                                        sub_22C7F475C();
                                      }

                                      while (!v275);
                                    }

                                    sub_22C7F44BC();
                                    sub_22C4706F0();

                                    sub_22C381838();
                                  }
                                }

                                else
                                {
                                  sub_22C3834A8();
                                  sub_22C377748();
                                  v377();
                                  MEMORY[0x2318B8B10](0);
                                  sub_22C38C11C();
                                  sub_22C7F4358(&qword_27D9BC858, v378, MEMORY[0x277CC9600]);
                                  sub_22C37A430();
                                  sub_22C909F8C();
                                  v379 = sub_22C375118();
                                  v380(v379);
                                }

                                sub_22C7F46E0();
                                sub_22C7F472C();

                                sub_22C36B788();
                                sub_22C7F4300(v1059[0], v387);
                                sub_22C7F46C8();
                              }

                              else
                              {
                                sub_22C376A28();
                                sub_22C7F44A0();
                              }
                            }

                            else
                            {
                              sub_22C373A64();
                              sub_22C5CAC28();
                              sub_22C7F42A8();
                              sub_22C7F462C();
                              sub_22C378824();
                              sub_22C5CAC28();
                              sub_22C7F4250();
                              v365 = sub_22C7F45AC();
                              if (v365)
                              {
                                if (v365 == 1)
                                {
                                  sub_22C36C47C();
                                  sub_22C37EDA0();
                                  MEMORY[0x2318B8B10](1);
                                  sub_22C7F45FC();
                                  sub_22C7F4594(v366, v367, v368, v369, v370, v371, v372, v373, v1008, v1009, v1010, v1011, v1012, v1013, v1014, v1015, v1016, v1017, v1018, v1019);
                                  sub_22C7F4484();
                                  sub_22C7F43A0();
                                  sub_22C7F4358(&qword_27D9BC850, v374, MEMORY[0x277D72E20]);
                                  sub_22C7F441C();
                                  v375 = sub_22C36A3D0();
                                  sub_22C7F4300(v375, v376);
                                }

                                else
                                {
                                  sub_22C3866A4();
                                  sub_22C7F45C4();
                                  sub_22C7F47E4();
                                  if (v208)
                                  {
                                    sub_22C7F43D4();
                                    sub_22C371E00();
                                    v62 = sub_22C7F4358(&qword_2814357B0, v388, MEMORY[0x277D1C348]);
                                    do
                                    {
                                      sub_22C376028();
                                      sub_22C909F8C();
                                      sub_22C7F4750();
                                    }

                                    while (!v275);
                                  }

                                  sub_22C7F44BC();
                                  sub_22C4706F0();

                                  sub_22C37B438();
                                }
                              }

                              else
                              {
                                sub_22C3834A8();
                                sub_22C377748();
                                v381();
                                MEMORY[0x2318B8B10](0);
                                sub_22C38C11C();
                                sub_22C7F4358(&qword_27D9BC858, v382, MEMORY[0x277CC9600]);
                                sub_22C37A430();
                                sub_22C909F8C();
                                v383 = sub_22C375118();
                                v384(v383);
                              }

                              sub_22C36B788();
                              sub_22C7F4300(v1058[1], v389);
                            }

                            sub_22C386394();
                            v390 = *(v208 + 16);
                            if (v390)
                            {
                              v208 += 32;
                              do
                              {
                                sub_22C7F4674();
                                --v390;
                              }

                              while (v390);
                            }

                            v31 = (v31 + 1);
                            sub_22C372DF0();
                            sub_22C38155C(&v1096[64], v391);
                            sub_22C7F44EC();
                          }

                          while (!v275);
                        }

                        else
                        {

                          sub_22C38C4D8();
                        }
                      }
                    }

                    else
                    {
                      sub_22C3834A8();
                      sub_22C377748();
                      v337();
                      MEMORY[0x2318B8B10](0);
                      sub_22C38C11C();
                      sub_22C7F4358(&qword_27D9BC858, v338, MEMORY[0x277CC9600]);
                      sub_22C37A430();
                      sub_22C909F8C();
                      v339 = sub_22C375118();
                      v340(v339);
                    }

                    sub_22C3801EC();
                    sub_22C7F47CC();

                    sub_22C36B788();
                    v440 = v1061;
LABEL_164:
                    v335 = *(v440 - 32);
LABEL_165:
                    sub_22C7F4300(v335, v336);
                  }

                  else
                  {
                    sub_22C376A28();
                    sub_22C7F44A0();
                  }

                  sub_22C386394();
                  v441 = *(v208 + 16);
                  if (v441)
                  {
                    v208 += 32;
                    do
                    {
                      sub_22C7F4674();
                      --v441;
                    }

                    while (v441);
                  }

                  v227 = v1070 + 1;
                  sub_22C372DF0();
                  sub_22C7F4714(v442, &v1085);
                  if (v227 == v1052)
                  {
                    goto LABEL_170;
                  }

                  continue;
                }

                break;
              }

              sub_22C373A64();
              sub_22C5CAC28();
              sub_22C7F42A8();
              sub_22C7F462C();
              sub_22C378824();
              sub_22C5CAC28();
              sub_22C7F4250();
              v284 = sub_22C7F45AC();
              if (v284)
              {
                if (v284 == 1)
                {
                  sub_22C36C47C();
                  sub_22C5CAC28();
                  sub_22C7F42A8();
                  MEMORY[0x2318B8B10](1);
                  sub_22C387CAC();
                  sub_22C7F4518(*(v227 + 16));
                  if (v291)
                  {
                    sub_22C7F43EC();
                    do
                    {
                      sub_22C7F43BC();
                      sub_22C7F4250();
                      sub_22C388A74();
                      sub_22C5CAC28();
                      sub_22C7F4250();
                      v292 = sub_22C7F46B0();
                      if (v292)
                      {
                        if (v292 == 1)
                        {
                          sub_22C383E5C();
                          sub_22C7F44E0();
                          v207 = *(v293 + 8);
                          sub_22C7F4668(*(v293 + 16));
                          sub_22C373A64();
                          sub_22C5CAC28();
                          sub_22C7F42A8();
                          sub_22C7F4614();
                          sub_22C378824();
                          sub_22C5CAC28();
                          sub_22C7F4250();
                          v294 = sub_22C7F45AC();
                          if (v294)
                          {
                            if (v294 == 1)
                            {
                              sub_22C36C47C();
                              sub_22C37EDA0();
                              MEMORY[0x2318B8B10](1);
                              sub_22C7F45FC();
                              sub_22C7F4594(v295, v296, v297, v298, v299, v300, v301, v302, v1008, v1009, v1010, v1011, v1012, v1013, v1014, v1015, v1016, v1017, v1018, v1019);
                              sub_22C7F4484();
                              sub_22C7F43A0();
                              sub_22C7F4358(&qword_27D9BC850, v303, MEMORY[0x277D72E20]);
                              sub_22C7F441C();
                              v304 = sub_22C36A3D0();
                              sub_22C7F4300(v304, v305);
                            }

                            else
                            {
                              sub_22C37B0F0();
                              sub_22C7F47FC();
                              if (v208)
                              {
                                sub_22C7F43D4();
                                v62 = *(v326 + 72);
                                sub_22C371E00();
                                sub_22C7F4358(&qword_2814357B0, v327, MEMORY[0x277D1C348]);
                                do
                                {
                                  sub_22C376028();
                                  sub_22C909F8C();
                                  sub_22C7F475C();
                                }

                                while (!v275);
                              }

                              sub_22C7F44BC();
                              sub_22C4706F0();

                              sub_22C381838();
                            }
                          }

                          else
                          {
                            sub_22C3834A8();
                            sub_22C377748();
                            v318();
                            MEMORY[0x2318B8B10](0);
                            sub_22C38C11C();
                            sub_22C7F4358(&qword_27D9BC858, v319, MEMORY[0x277CC9600]);
                            sub_22C37A430();
                            sub_22C909F8C();
                            v320 = sub_22C375118();
                            v321(v320);
                          }

                          sub_22C7F46E0();
                          sub_22C7F472C();

                          sub_22C36B788();
                          sub_22C7F4300(v1066, v328);
                          sub_22C7F46C8();
                        }

                        else
                        {
                          sub_22C376A28();
                          sub_22C7F44A0();
                        }
                      }

                      else
                      {
                        sub_22C373A64();
                        sub_22C5CAC28();
                        sub_22C7F42A8();
                        sub_22C7F462C();
                        sub_22C378824();
                        sub_22C5CAC28();
                        sub_22C7F4250();
                        v306 = sub_22C7F45AC();
                        if (v306)
                        {
                          if (v306 == 1)
                          {
                            sub_22C36C47C();
                            sub_22C37EDA0();
                            MEMORY[0x2318B8B10](1);
                            sub_22C7F45FC();
                            sub_22C7F4594(v307, v308, v309, v310, v311, v312, v313, v314, v1008, v1009, v1010, v1011, v1012, v1013, v1014, v1015, v1016, v1017, v1018, v1019);
                            sub_22C7F4484();
                            sub_22C7F43A0();
                            sub_22C7F4358(&qword_27D9BC850, v315, MEMORY[0x277D72E20]);
                            sub_22C7F441C();
                            v316 = sub_22C36A3D0();
                            sub_22C7F4300(v316, v317);
                          }

                          else
                          {
                            sub_22C3866A4();
                            sub_22C7F45C4();
                            sub_22C7F47E4();
                            if (v208)
                            {
                              sub_22C7F43D4();
                              sub_22C371E00();
                              v62 = sub_22C7F4358(&qword_2814357B0, v329, MEMORY[0x277D1C348]);
                              do
                              {
                                sub_22C376028();
                                sub_22C909F8C();
                                sub_22C7F4750();
                              }

                              while (!v275);
                            }

                            sub_22C7F44BC();
                            sub_22C4706F0();

                            sub_22C37B438();
                          }
                        }

                        else
                        {
                          sub_22C3834A8();
                          sub_22C377748();
                          v322();
                          MEMORY[0x2318B8B10](0);
                          sub_22C38C11C();
                          sub_22C7F4358(&qword_27D9BC858, v323, MEMORY[0x277CC9600]);
                          sub_22C37A430();
                          sub_22C909F8C();
                          v324 = sub_22C375118();
                          v325(v324);
                        }

                        sub_22C36B788();
                        sub_22C7F4300(v1064, v330);
                      }

                      sub_22C386394();
                      v331 = *(v208 + 16);
                      if (v331)
                      {
                        v208 += 32;
                        do
                        {
                          sub_22C7F4674();
                          --v331;
                        }

                        while (v331);
                      }

                      v31 = (v31 + 1);
                      sub_22C372DF0();
                      sub_22C7F4714(v332, &a12);
                      sub_22C7F44EC();
                    }

                    while (!v275);
                  }

                  sub_22C7F44FC(v285, v286, v287, v288, v289, v290, &v1042, v1008, v1009, v1010, v1011, v1012, v1013, v1014, v1015, v1016, v1017, v1018, v1019);
                  sub_22C7F4484();
                  sub_22C7F43A0();
                  sub_22C7F4358(&qword_27D9BC850, v333, MEMORY[0x277D72E20]);
                  sub_22C7F441C();
                  sub_22C36B788();
                  sub_22C7F4300(v1037[3], v334);
                  v335 = sub_22C36A3D0();
                  goto LABEL_165;
                }

                sub_22C7F4524();
                sub_22C7F46FC(v392);
                MEMORY[0x2318B8B10](*(v227 + 16));
                sub_22C7F457C(&v1063);
                sub_22C36EE58();
                v31 = &qword_2814357B0;
                if (v208)
                {
                  sub_22C7F43D4();
                  sub_22C37BC60();
                  do
                  {
                    v393 = sub_22C7F4474();
                    (v62)(v393);
                    sub_22C371E00();
                    sub_22C7F4358(&qword_2814357B0, v394, MEMORY[0x277D1C348]);
                    v395 = sub_22C7E4C18();
                    sub_22C37DA38(v395);
                    v396 = sub_22C37BFBC();
                    v397(v396);
                    sub_22C7F4570();
                  }

                  while (!v275);
                }

                sub_22C386DE8();
                sub_22C7F4518(*(v227 + 16));
                if (v398)
                {
                  sub_22C7F43EC();
                  sub_22C3864F8();
                  sub_22C381BF8();
                  do
                  {
                    sub_22C7F43BC();
                    sub_22C7F4250();
                    sub_22C388A74();
                    sub_22C5CAC28();
                    sub_22C7F4250();
                    v399 = sub_22C7F46B0();
                    if (v399)
                    {
                      if (v399 == 1)
                      {
                        sub_22C383E5C();
                        sub_22C7F44E0();
                        v207 = *(v400 + 8);
                        sub_22C7F4668(*(v400 + 16));
                        sub_22C373A64();
                        sub_22C5CAC28();
                        sub_22C7F42A8();
                        sub_22C7F4614();
                        sub_22C378824();
                        sub_22C5CAC28();
                        sub_22C7F4250();
                        v401 = sub_22C7F45AC();
                        if (v401)
                        {
                          if (v401 == 1)
                          {
                            sub_22C36C47C();
                            sub_22C37EDA0();
                            MEMORY[0x2318B8B10](1);
                            sub_22C7F45FC();
                            sub_22C7F4594(v402, v403, v404, v405, v406, v407, v408, v409, v1008, v1009, v1010, v1011, v1012, v1013, v1014, v1015, v1016, v1017, v1018, v1019);
                            sub_22C7F4484();
                            sub_22C7F43A0();
                            sub_22C7F4358(&qword_27D9BC850, v410, MEMORY[0x277D72E20]);
                            sub_22C7F441C();
                            v411 = sub_22C36A3D0();
                            sub_22C7F4300(v411, v412);
                          }

                          else
                          {
                            sub_22C37B0F0();
                            sub_22C7F47FC();
                            if (v208)
                            {
                              sub_22C7F43D4();
                              v62 = *(v433 + 72);
                              sub_22C371E00();
                              sub_22C7F4358(&qword_2814357B0, v434, MEMORY[0x277D1C348]);
                              do
                              {
                                sub_22C376028();
                                sub_22C909F8C();
                                sub_22C7F475C();
                              }

                              while (!v275);
                            }

                            sub_22C7F44BC();
                            sub_22C4706F0();

                            sub_22C381838();
                          }
                        }

                        else
                        {
                          sub_22C3834A8();
                          sub_22C377748();
                          v425();
                          MEMORY[0x2318B8B10](0);
                          sub_22C38C11C();
                          sub_22C7F4358(&qword_27D9BC858, v426, MEMORY[0x277CC9600]);
                          sub_22C37A430();
                          sub_22C909F8C();
                          v427 = sub_22C375118();
                          v428(v427);
                        }

                        sub_22C7F46E0();
                        sub_22C7F472C();

                        sub_22C36B788();
                        sub_22C7F4300(v1058[0], v435);
                        sub_22C3864F8();
                      }

                      else
                      {
                        sub_22C376A28();
                        sub_22C7F44A0();

                        sub_22C3864F8();
                      }
                    }

                    else
                    {
                      sub_22C373A64();
                      sub_22C5CAC28();
                      sub_22C7F42A8();
                      sub_22C7F462C();
                      sub_22C378824();
                      sub_22C5CAC28();
                      sub_22C7F4250();
                      v413 = sub_22C7F45AC();
                      if (v413)
                      {
                        if (v413 == 1)
                        {
                          sub_22C36C47C();
                          sub_22C37EDA0();
                          MEMORY[0x2318B8B10](1);
                          sub_22C7F45FC();
                          sub_22C7F4594(v414, v415, v416, v417, v418, v419, v420, v421, v1008, v1009, v1010, v1011, v1012, v1013, v1014, v1015, v1016, v1017, v1018, v1019);
                          sub_22C7F4484();
                          sub_22C7F43A0();
                          sub_22C7F4358(&qword_27D9BC850, v422, MEMORY[0x277D72E20]);
                          sub_22C7F441C();
                          v423 = sub_22C36A3D0();
                          sub_22C7F4300(v423, v424);
                        }

                        else
                        {
                          sub_22C3866A4();
                          sub_22C7F45C4();
                          sub_22C7F47E4();
                          if (v208)
                          {
                            sub_22C7F43D4();
                            sub_22C371E00();
                            v62 = sub_22C7F4358(&qword_2814357B0, v436, MEMORY[0x277D1C348]);
                            do
                            {
                              sub_22C376028();
                              sub_22C909F8C();
                              sub_22C7F4750();
                            }

                            while (!v275);
                          }

                          sub_22C7F44BC();
                          sub_22C4706F0();

                          sub_22C37B438();
                        }
                      }

                      else
                      {
                        sub_22C3834A8();
                        sub_22C377748();
                        v429();
                        MEMORY[0x2318B8B10](0);
                        sub_22C38C11C();
                        sub_22C7F4358(&qword_27D9BC858, v430, MEMORY[0x277CC9600]);
                        sub_22C37A430();
                        sub_22C909F8C();
                        v431 = sub_22C375118();
                        v432(v431);
                      }

                      sub_22C36B788();
                      sub_22C7F4300(v1057[1], v437);
                      sub_22C3864F8();
                    }

                    sub_22C7F465C();
                    v208 = *(v227 + v438);
                    sub_22C7F468C();
                    v227 = *(v208 + 16);
                    if (v227)
                    {
                      v208 += 32;
                      do
                      {
                        sub_22C7F4674();
                        --v227;
                      }

                      while (v227);
                    }

                    v31 = (v31 + 1);
                    sub_22C372DF0();
                    sub_22C3864F8();
                    sub_22C7F4300(v227, v439);
                    sub_22C7F44EC();
                  }

                  while (!v275);
                  sub_22C7F47CC();
                }

                else
                {

                  sub_22C381BF8();
                }
              }

              else
              {
                sub_22C3834A8();
                sub_22C377748();
                v341();
                MEMORY[0x2318B8B10](0);
                sub_22C38C11C();
                sub_22C7F4358(&qword_27D9BC858, v342, MEMORY[0x277CC9600]);
                sub_22C37A430();
                sub_22C909F8C();
                v343 = sub_22C375118();
                v344(v343);
              }

              sub_22C36B788();
              v440 = v1060;
              goto LABEL_164;
            }

            sub_22C7F4524();
            sub_22C7F46FC(v694);
            MEMORY[0x2318B8B10](*(v216 + 16));
            sub_22C7F457C(&v1055);
            sub_22C36EE58();
            if (v208)
            {
              sub_22C7F43D4();
              sub_22C37BC60();
              do
              {
                v695 = sub_22C7F4474();
                (v62)(v695);
                sub_22C371E00();
                sub_22C7F4358(&qword_2814357B0, v696, MEMORY[0x277D1C348]);
                v697 = sub_22C7E4C18();
                sub_22C37DA38(v697);
                v698 = sub_22C37BFBC();
                v699(v698);
                sub_22C7F4570();
              }

              while (!v275);
            }

            sub_22C386DE8();
            v31 = v1031;
            v1052 = *(v216 + 16);
            if (v1052)
            {
              v700 = 0;
              sub_22C382968();
              sub_22C3892D8(v701);
              v1049 = v702;
              i = v1072;
              sub_22C38C4D8();
              while (1)
              {
                sub_22C7F43BC();
                sub_22C7F4250();
                sub_22C388A74();
                sub_22C5CAC28();
                sub_22C7F4250();
                v704 = sub_22C7F46B0();
                v1070 = v700;
                if (v704)
                {
                  if (v704 == 1)
                  {
                    sub_22C383E5C();
                    sub_22C7F44E0();
                    v706 = *(v705 + 8);
                    sub_22C7F4588();
                    v1076 = v707;
                    sub_22C373A64();
                    sub_22C5CAC28();
                    sub_22C7F42A8();
                    sub_22C7F4614();
                    sub_22C378824();
                    sub_22C5CAC28();
                    sub_22C7F4250();
                    v708 = sub_22C7F45AC();
                    v1077 = v706;
                    if (v708)
                    {
                      if (v708 == 1)
                      {
                        sub_22C36C47C();
                        sub_22C5CAC28();
                        sub_22C7F42A8();
                        MEMORY[0x2318B8B10](1);
                        sub_22C387CAC();
                        v715 = *(i + 16);
                        if (v715)
                        {
                          v31 = 0;
                          sub_22C7F44D4();
                          v717 = *(v716 + 20);
                          sub_22C382E28();
                          v62 = i + v718;
                          do
                          {
                            sub_22C7F43BC();
                            sub_22C7F4250();
                            sub_22C388A74();
                            sub_22C5CAC28();
                            sub_22C7F4250();
                            v719 = sub_22C7F46B0();
                            if (v719)
                            {
                              if (v719 != 1)
                              {
                                sub_22C376A28();
                                sub_22C7F44A0();

                                goto LABEL_348;
                              }

                              v720 = v1092;
                              sub_22C7F44E0();
                              v207 = *(v721 + 16);
                              sub_22C373A64();
                              sub_22C7F42A8();
                              sub_22C7F4614();
                              sub_22C57C528();
                              sub_22C7F44A0();

                              sub_22C36B788();
                              v723 = v720;
                              v131 = v1095;
                            }

                            else
                            {
                              sub_22C373A64();
                              sub_22C7F45E0();
                              sub_22C7F462C();
                              sub_22C7F46A4();
                              sub_22C57C528();
                              sub_22C36B788();
                              v723 = i;
                            }

                            sub_22C7F4300(v723, v722);
LABEL_348:
                            v724 = *(v1088 + v717);
                            sub_22C7F468C();
                            for (i = *(v724 + 16); i; --i)
                            {
                              sub_22C7F4674();
                            }

                            v31 = (v31 + 1);
                            sub_22C372DF0();
                            sub_22C7F4714(v725, &a15);
                          }

                          while (v31 != v715);
                        }

                        sub_22C7F44FC(v709, v710, v711, v712, v713, v714, &v1045, v1008, v1009, v1010, v1011, v1012, v1013, v1014, v1015, v1016, v1017, v1018, v1019);
                        sub_22C7F4484();
                        sub_22C7F43A0();
                        sub_22C7F4358(&qword_27D9BC850, v726, MEMORY[0x277D72E20]);
                        sub_22C7F441C();
                        v727 = sub_22C36A3D0();
                        sub_22C7F4300(v727, v728);
                        sub_22C7F4834();
LABEL_422:
                        sub_22C381BF8();
                      }

                      else
                      {
                        sub_22C7F4524();
                        sub_22C7F46FC(v792);
                        MEMORY[0x2318B8B10](*(i + 16));
                        sub_22C7F457C(&v1065);
                        if (v706)
                        {
                          sub_22C7F43D4();
                          sub_22C37BC60();
                          do
                          {
                            v793 = sub_22C7F4474();
                            (v62)(v793);
                            sub_22C371E00();
                            sub_22C7F4358(&qword_2814357B0, v794, MEMORY[0x277D1C348]);
                            sub_22C7E4C18();
                            sub_22C909F8C();
                            v795 = sub_22C37BFBC();
                            v796(v795);
                            sub_22C7F4570();
                          }

                          while (!v275);
                        }

                        sub_22C386DE8();
                        v31 = *(i + 16);
                        if (!v31)
                        {

                          sub_22C7F472C();
                          sub_22C7F4834();
                          goto LABEL_422;
                        }

                        v797 = 0;
                        sub_22C7F44D4();
                        v62 = *(v798 + 20);
                        sub_22C382E28();
                        v207 = (i + v799);
                        sub_22C385E20();
                        do
                        {
                          sub_22C7F43BC();
                          sub_22C7F4250();
                          sub_22C388A74();
                          sub_22C5CAC28();
                          sub_22C7F4250();
                          v800 = sub_22C7F484C();
                          if (v800)
                          {
                            if (v800 == 1)
                            {
                              v801 = v1092;
                              sub_22C7F44E0();
                              v706 = *(v802 + 8);
                              sub_22C373A64();
                              sub_22C7F42A8();
                              sub_22C7F4614();
                              sub_22C57C528();
                              sub_22C7F44A0();

                              sub_22C36B788();
                              sub_22C7F4300(v801, v803);
                            }

                            else
                            {
                              sub_22C7F44C8();
                              sub_22C7F4644();
                              sub_22C7F44A0();
                            }

                            sub_22C385E20();
                          }

                          else
                          {
                            sub_22C373A64();
                            sub_22C7F45E0();
                            sub_22C7F462C();
                            sub_22C7F46A4();
                            sub_22C57C528();
                            sub_22C36B788();
                            sub_22C7F4300(i, v804);
                          }

                          v706 = *(v706 + v62);
                          sub_22C7F468C();
                          i = *(v706 + 16);
                          if (i)
                          {
                            v706 += 32;
                            do
                            {
                              sub_22C7F4674();
                              --i;
                            }

                            while (i);
                          }

                          v797 = (v797 + 1);
                          sub_22C372DF0();
                          v805 = sub_22C38B1DC(v1090);
                          sub_22C7F4300(v805, v806);
                        }

                        while (v797 != v31);

                        sub_22C7F472C();
                        sub_22C7F4834();
                        sub_22C38C4D8();
                        v131 = v1095;
                      }
                    }

                    else
                    {
                      sub_22C3834A8();
                      sub_22C377748();
                      v783();
                      MEMORY[0x2318B8B10](0);
                      sub_22C38C11C();
                      sub_22C7F4358(&qword_27D9BC858, v784, MEMORY[0x277CC9600]);
                      sub_22C37A430();
                      sub_22C909F8C();
                      v785 = sub_22C375118();
                      v786(v785);
                    }

                    sub_22C3801EC();

                    sub_22C36B788();
                    sub_22C7F4300(v1043, v823);
LABEL_427:
                    v782 = v1072;
                    goto LABEL_428;
                  }

                  sub_22C376A28();
                  sub_22C7F44A0();

                  v782 = v1072;
                }

                else
                {
                  sub_22C373A64();
                  sub_22C5CAC28();
                  sub_22C7F42A8();
                  sub_22C7F462C();
                  sub_22C378824();
                  sub_22C5CAC28();
                  sub_22C7F4250();
                  v729 = sub_22C7F45AC();
                  if (v729)
                  {
                    if (v729 == 1)
                    {
                      sub_22C36C47C();
                      sub_22C5CAC28();
                      sub_22C7F42A8();
                      MEMORY[0x2318B8B10](1);
                      sub_22C387CAC();
                      sub_22C7F4518(*(i + 16));
                      if (v736)
                      {
                        sub_22C7F43EC();
                        do
                        {
                          sub_22C7F43BC();
                          sub_22C7F4250();
                          sub_22C388A74();
                          sub_22C5CAC28();
                          sub_22C7F4250();
                          v737 = sub_22C7F46B0();
                          if (v737)
                          {
                            if (v737 == 1)
                            {
                              sub_22C383E5C();
                              sub_22C7F44E0();
                              v207 = *(v738 + 8);
                              sub_22C7F4668(*(v738 + 16));
                              sub_22C373A64();
                              sub_22C5CAC28();
                              sub_22C7F42A8();
                              sub_22C7F4614();
                              sub_22C378824();
                              sub_22C5CAC28();
                              sub_22C7F4250();
                              v739 = sub_22C7F45AC();
                              if (v739)
                              {
                                if (v739 == 1)
                                {
                                  sub_22C36C47C();
                                  sub_22C37EDA0();
                                  MEMORY[0x2318B8B10](1);
                                  sub_22C7F45FC();
                                  sub_22C7F4594(v740, v741, v742, v743, v744, v745, v746, v747, v1008, v1009, v1010, v1011, v1012, v1013, v1014, v1015, v1016, v1017, v1018, v1019);
                                  sub_22C7F4484();
                                  sub_22C7F43A0();
                                  sub_22C7F4358(&qword_27D9BC850, v748, MEMORY[0x277D72E20]);
                                  sub_22C7F441C();
                                  v749 = sub_22C36A3D0();
                                  sub_22C7F4300(v749, v750);
                                }

                                else
                                {
                                  sub_22C37B0F0();
                                  sub_22C7F47FC();
                                  if (v208)
                                  {
                                    sub_22C7F43D4();
                                    v62 = *(v771 + 72);
                                    sub_22C371E00();
                                    sub_22C7F4358(&qword_2814357B0, v772, MEMORY[0x277D1C348]);
                                    do
                                    {
                                      sub_22C376028();
                                      sub_22C909F8C();
                                      sub_22C7F475C();
                                    }

                                    while (!v275);
                                  }

                                  sub_22C7F44BC();
                                  sub_22C4706F0();

                                  sub_22C381838();
                                }
                              }

                              else
                              {
                                sub_22C3834A8();
                                sub_22C377748();
                                v763();
                                MEMORY[0x2318B8B10](0);
                                sub_22C38C11C();
                                sub_22C7F4358(&qword_27D9BC858, v764, MEMORY[0x277CC9600]);
                                sub_22C37A430();
                                sub_22C909F8C();
                                v765 = sub_22C375118();
                                v766(v765);
                              }

                              sub_22C7F46E0();
                              sub_22C7F472C();

                              sub_22C36B788();
                              sub_22C7F4300(v1060[0], v773);
                              sub_22C7F46C8();
                            }

                            else
                            {
                              sub_22C376A28();
                              sub_22C7F44A0();
                            }
                          }

                          else
                          {
                            sub_22C373A64();
                            sub_22C5CAC28();
                            sub_22C7F42A8();
                            sub_22C7F462C();
                            sub_22C378824();
                            sub_22C5CAC28();
                            sub_22C7F4250();
                            v751 = sub_22C7F45AC();
                            if (v751)
                            {
                              if (v751 == 1)
                              {
                                sub_22C36C47C();
                                sub_22C37EDA0();
                                MEMORY[0x2318B8B10](1);
                                sub_22C7F45FC();
                                sub_22C7F4594(v752, v753, v754, v755, v756, v757, v758, v759, v1008, v1009, v1010, v1011, v1012, v1013, v1014, v1015, v1016, v1017, v1018, v1019);
                                sub_22C7F4484();
                                sub_22C7F43A0();
                                sub_22C7F4358(&qword_27D9BC850, v760, MEMORY[0x277D72E20]);
                                sub_22C7F441C();
                                v761 = sub_22C36A3D0();
                                sub_22C7F4300(v761, v762);
                              }

                              else
                              {
                                sub_22C3866A4();
                                sub_22C7F45C4();
                                sub_22C7F47E4();
                                if (v208)
                                {
                                  sub_22C7F43D4();
                                  sub_22C371E00();
                                  v62 = sub_22C7F4358(&qword_2814357B0, v774, MEMORY[0x277D1C348]);
                                  do
                                  {
                                    sub_22C376028();
                                    sub_22C909F8C();
                                    sub_22C7F4750();
                                  }

                                  while (!v275);
                                }

                                sub_22C7F44BC();
                                sub_22C4706F0();

                                sub_22C37B438();
                              }
                            }

                            else
                            {
                              sub_22C3834A8();
                              sub_22C377748();
                              v767();
                              MEMORY[0x2318B8B10](0);
                              sub_22C38C11C();
                              sub_22C7F4358(&qword_27D9BC858, v768, MEMORY[0x277CC9600]);
                              sub_22C37A430();
                              sub_22C909F8C();
                              v769 = sub_22C375118();
                              v770(v769);
                            }

                            sub_22C36B788();
                            sub_22C7F4300(v1059[1], v775);
                          }

                          sub_22C386394();
                          v776 = *(v208 + 16);
                          if (v776)
                          {
                            v208 += 32;
                            do
                            {
                              sub_22C7F4674();
                              --v776;
                            }

                            while (v776);
                          }

                          v31 = (v31 + 1);
                          sub_22C372DF0();
                          sub_22C7F4714(v777, &a14);
                          sub_22C7F44EC();
                        }

                        while (!v275);
                      }

                      sub_22C7F44FC(v730, v731, v732, v733, v734, v735, &v1044, v1008, v1009, v1010, v1011, v1012, v1013, v1014, v1015, v1016, v1017, v1018, v1019);
                      sub_22C7F4484();
                      sub_22C7F43A0();
                      sub_22C7F4358(&qword_27D9BC850, v778, MEMORY[0x277D72E20]);
                      sub_22C7F441C();
                      sub_22C36B788();
                      sub_22C7F4300(v1041, v779);
                      v780 = sub_22C36A3D0();
                    }

                    else
                    {
                      sub_22C7F4524();
                      sub_22C7F46FC(v807);
                      MEMORY[0x2318B8B10](*(i + 16));
                      sub_22C7F457C(&v1086);
                      v207 = v1047;
                      if (v208)
                      {
                        sub_22C7F43D4();
                        i = v1077 + v808;
                        v62 = *(v809 + 72);
                        v810 = *(v809 + 16);
                        do
                        {
                          v811 = sub_22C7F4474();
                          v810(v811);
                          sub_22C371E00();
                          sub_22C7F4358(&qword_2814357B0, v812, MEMORY[0x277D1C348]);
                          sub_22C7E4C18();
                          sub_22C909F8C();
                          (*v207)(v1026, v25);
                          i += v62;
                          --v208;
                        }

                        while (v208);
                      }

                      sub_22C386DE8();
                      v31 = *(i + 16);
                      if (v31)
                      {
                        v813 = 0;
                        sub_22C7F44D4();
                        v815 = *(v814 + 20);
                        sub_22C382E28();
                        v62 = i + v816;
                        sub_22C385E20();
                        do
                        {
                          sub_22C7F43BC();
                          sub_22C7F4250();
                          sub_22C388A74();
                          sub_22C5CAC28();
                          sub_22C7F4250();
                          v817 = sub_22C7F484C();
                          if (v817)
                          {
                            if (v817 == 1)
                            {
                              v207 = v1092;
                              sub_22C7F44E0();
                              v208 = *(v818 + 8);
                              sub_22C373A64();
                              sub_22C7F42A8();
                              sub_22C7F4614();
                              sub_22C57C528();
                              sub_22C7F44A0();

                              sub_22C36B788();
                              sub_22C7F4300(v207, v819);
                            }

                            else
                            {
                              sub_22C7F44C8();
                              sub_22C7F4644();
                              sub_22C7F44A0();
                            }

                            sub_22C385E20();
                          }

                          else
                          {
                            sub_22C373A64();
                            sub_22C7F45E0();
                            sub_22C7F462C();
                            sub_22C7F46A4();
                            sub_22C57C528();
                            sub_22C36B788();
                            sub_22C7F4300(i, v820);
                          }

                          v208 = *(v208 + v815);
                          sub_22C7F468C();
                          i = *(v208 + 16);
                          if (i)
                          {
                            v208 += 32;
                            do
                            {
                              sub_22C7F4674();
                              --i;
                            }

                            while (i);
                          }

                          v813 = (v813 + 1);
                          sub_22C372DF0();
                          v821 = sub_22C38B1DC(&v1089);
                          sub_22C7F4300(v821, v822);
                        }

                        while (v813 != v31);

                        sub_22C38C4D8();
                        v131 = v1095;
                      }

                      else
                      {

                        sub_22C381BF8();
                      }

                      sub_22C36B788();
                      v780 = v1041;
                    }

                    sub_22C7F4300(v780, v781);
                    sub_22C7F4834();
                    goto LABEL_427;
                  }

                  sub_22C3834A8();
                  sub_22C377748();
                  v787();
                  MEMORY[0x2318B8B10](0);
                  sub_22C38C11C();
                  sub_22C7F4358(&qword_27D9BC858, v788, MEMORY[0x277CC9600]);
                  sub_22C37A430();
                  sub_22C909F8C();
                  v789 = sub_22C36D400();
                  v782 = v1072;
                  v790(v789, i);
                  sub_22C36B788();
                  sub_22C7F4300(v1041, v791);
                }

LABEL_428:
                v208 = *(v782 + v1050);
                sub_22C7F468C();
                i = *(v208 + 16);
                if (i)
                {
                  v208 += 32;
                  do
                  {
                    sub_22C7F4674();
                    --i;
                  }

                  while (i);
                }

                v700 = v1070 + 1;
                sub_22C372DF0();
                sub_22C38155C(&v1083, v824);
                if (v700 == v1052)
                {

                  sub_22C7F47CC();
                  goto LABEL_553;
                }
              }
            }

            sub_22C7F47CC();
            sub_22C38C4D8();
LABEL_553:
            sub_22C3801EC();
            sub_22C36D438();

            sub_22C36B788();
            v1001 = v1051;
LABEL_557:
            v684 = *(v1001 - 32);
LABEL_558:
            sub_22C7F4300(v684, v685);
            goto LABEL_559;
          }

          sub_22C376A28();
          sub_22C7F44A0();

LABEL_559:
          sub_22C386394();
          v216 = *(v208 + 16);
          if (v216)
          {
            v208 += 32;
            do
            {
              sub_22C7F4674();
              --v216;
            }

            while (v216);
          }

          v212 = v1045 + 1;
          sub_22C372DF0();
          sub_22C38155C(&v1062, v1002);
          if (v212 == v1030)
          {
            goto LABEL_563;
          }
        }

        sub_22C373A64();
        sub_22C5CAC28();
        sub_22C7F42A8();
        sub_22C7F462C();
        sub_22C378824();
        sub_22C5CAC28();
        sub_22C7F4250();
        v446 = sub_22C7F45AC();
        if (v446)
        {
          if (v446 == 1)
          {
            sub_22C36C47C();
            sub_22C5CAC28();
            sub_22C7F42A8();
            MEMORY[0x2318B8B10](1);
            sub_22C387CAC();
            v1050 = *(v216 + 16);
            if (!v1050)
            {
LABEL_326:
              sub_22C7F44FC(v447, v448, v449, v450, v451, v452, &v1036, v1008, v1009, v1010, v1011, v1012, v1013, v1014, v1015, v1016, v1017, v1018, v1019);
              sub_22C7F4484();
              sub_22C7F43A0();
              sub_22C7F4358(&qword_27D9BC850, v682, MEMORY[0x277D72E20]);
              sub_22C7F441C();
              sub_22C36B788();
              sub_22C7F4300(v1027, v683);
              v684 = sub_22C36A3D0();
              goto LABEL_558;
            }

            sub_22C382968();
            sub_22C3892D8(v453);
            v1048 = v454;
            v455 = 0;
            while (2)
            {
              v1075 = v455;
              sub_22C7F43BC();
              sub_22C7F4250();
              sub_22C388A74();
              sub_22C5CAC28();
              sub_22C7F4250();
              v456 = sub_22C7F46B0();
              if (v456)
              {
                if (v456 == 1)
                {
                  v1070 = sub_22C3A5908(&qword_27D9BC848, &unk_22C926CA0);
                  sub_22C7F44E0();
                  v1032 = *v457;
                  sub_22C7F4588();
                  v1033 = v458;
                  sub_22C373A64();
                  sub_22C5CAC28();
                  sub_22C7F42A8();
                  sub_22C7F4614();
                  sub_22C378824();
                  sub_22C5CAC28();
                  sub_22C7F4250();
                  v459 = sub_22C7F45AC();
                  if (!v459)
                  {
                    sub_22C3834A8();
                    sub_22C377748();
                    v568();
                    MEMORY[0x2318B8B10](0);
                    sub_22C38C11C();
                    sub_22C7F4358(&qword_27D9BC858, v569, MEMORY[0x277CC9600]);
                    sub_22C37A430();
                    sub_22C909F8C();
                    v570 = sub_22C375118();
                    v571(v570);
                    goto LABEL_316;
                  }

                  if (v459 == 1)
                  {
                    sub_22C36C47C();
                    sub_22C5CAC28();
                    sub_22C7F42A8();
                    MEMORY[0x2318B8B10](1);
                    sub_22C387CAC();
                    sub_22C7F4840(*(v455 + 16));
                    if (!v466)
                    {
LABEL_209:
                      sub_22C7F44FC(v460, v461, v462, v463, v464, v465, &v1039, v1008, v1009, v1010, v1011, v1012, v1013, v1014, v1015, v1016, v1017, v1018, v1019);
                      sub_22C7F4484();
                      sub_22C7F43A0();
                      sub_22C7F4358(&qword_27D9BC850, v511, MEMORY[0x277D72E20]);
                      sub_22C7F441C();
                      v512 = sub_22C36A3D0();
                      sub_22C7F4300(v512, v513);
                      goto LABEL_316;
                    }

                    sub_22C3875E0();
                    while (2)
                    {
                      sub_22C7F465C();
                      sub_22C7F43BC();
                      sub_22C7F4250();
                      sub_22C388A74();
                      sub_22C5CAC28();
                      sub_22C7F4250();
                      v467 = sub_22C7F46B0();
                      if (v467)
                      {
                        if (v467 == 1)
                        {
                          sub_22C37E7F4();
                          sub_22C7F44E0();
                          v207 = *(v468 + 8);
                          sub_22C7F4588();
                          sub_22C7F4668(v469);
                          sub_22C373A64();
                          sub_22C5CAC28();
                          sub_22C7F42A8();
                          sub_22C7F4614();
                          sub_22C378824();
                          sub_22C5CAC28();
                          sub_22C7F4250();
                          v470 = sub_22C7F45AC();
                          if (v470)
                          {
                            if (v470 == 1)
                            {
                              sub_22C36C47C();
                              sub_22C37EDA0();
                              MEMORY[0x2318B8B10](1);
                              sub_22C7F45FC();
                              sub_22C7F4594(v471, v472, v473, v474, v475, v476, v477, v478, v1008, v1009, v1010, v1011, v1012, v1013, v1014, v1015, v1016, v1017, v1018, v1019);
                              sub_22C7F4484();
                              sub_22C7F43A0();
                              sub_22C7F4358(&qword_27D9BC850, v479, MEMORY[0x277D72E20]);
                              sub_22C7F441C();
                              v480 = sub_22C36A3D0();
                              sub_22C7F4300(v480, v481);
                            }

                            else
                            {
                              sub_22C7F44C8();
                              MEMORY[0x2318B8B10](2);
                              sub_22C7F47B4();
                              if (v131)
                              {
                                sub_22C7F43D4();
                                v503 = v455 + v502;
                                v505 = *(v504 + 72);
                                sub_22C371E00();
                                sub_22C7F4358(&qword_2814357B0, v506, MEMORY[0x277D1C348]);
                                do
                                {
                                  sub_22C376028();
                                  sub_22C909F8C();
                                  v503 += v505;
                                  --v131;
                                }

                                while (v131);
                              }

                              sub_22C38688C();
                              sub_22C4706F0();

                              sub_22C381838();
                            }
                          }

                          else
                          {
                            sub_22C3834A8();
                            sub_22C377748();
                            v494();
                            MEMORY[0x2318B8B10](0);
                            sub_22C38C11C();
                            sub_22C7F4358(&qword_27D9BC858, v495, MEMORY[0x277CC9600]);
                            sub_22C37A430();
                            sub_22C909F8C();
                            v496 = sub_22C375118();
                            v497(v496);
                          }

                          sub_22C7F479C();
                          sub_22C7F472C();

                          sub_22C36B788();
                          v508 = &v1074;
                          goto LABEL_203;
                        }

                        sub_22C376A28();
                        sub_22C7F44A0();
                      }

                      else
                      {
                        sub_22C373A64();
                        sub_22C5CAC28();
                        sub_22C7F42A8();
                        sub_22C7F462C();
                        sub_22C378824();
                        sub_22C5CAC28();
                        sub_22C7F4250();
                        v482 = sub_22C7F45AC();
                        if (v482)
                        {
                          if (v482 == 1)
                          {
                            sub_22C36C47C();
                            sub_22C37EDA0();
                            MEMORY[0x2318B8B10](1);
                            sub_22C7F45FC();
                            sub_22C7F4594(v483, v484, v485, v486, v487, v488, v489, v490, v1008, v1009, v1010, v1011, v1012, v1013, v1014, v1015, v1016, v1017, v1018, v1019);
                            sub_22C7F4484();
                            sub_22C7F43A0();
                            sub_22C7F4358(&qword_27D9BC850, v491, MEMORY[0x277D72E20]);
                            sub_22C7F441C();
                            v492 = sub_22C36A3D0();
                            sub_22C7F4300(v492, v493);
                          }

                          else
                          {
                            sub_22C3866A4();
                            sub_22C7F44C8();
                            MEMORY[0x2318B8B10](2);
                            sub_22C7F4768();
                            if (v207)
                            {
                              sub_22C7F43D4();
                              sub_22C371E00();
                              v62 = sub_22C7F4358(&qword_2814357B0, v509, MEMORY[0x277D1C348]);
                              do
                              {
                                sub_22C376028();
                                sub_22C909F8C();
                                sub_22C7F4744();
                              }

                              while (!v275);
                            }

                            sub_22C38688C();
                            sub_22C4706F0();

                            sub_22C37B438();
                          }
                        }

                        else
                        {
                          sub_22C3834A8();
                          sub_22C377748();
                          v498();
                          MEMORY[0x2318B8B10](0);
                          sub_22C38C11C();
                          sub_22C7F4358(&qword_27D9BC858, v499, MEMORY[0x277CC9600]);
                          sub_22C37A430();
                          sub_22C909F8C();
                          v500 = sub_22C375118();
                          v501(v500);
                        }

                        sub_22C36B788();
                        v508 = &v1073;
LABEL_203:
                        sub_22C7F4300(*(v508 - 32), v507);
                      }

                      sub_22C386394();
                      v455 = *(v208 + 16);
                      if (v455)
                      {
                        v208 += 32;
                        do
                        {
                          sub_22C7F4674();
                          --v455;
                        }

                        while (v455);
                      }

                      v31 = (v31 + 1);
                      sub_22C372DF0();
                      sub_22C7F4714(v510, &a9);
                      sub_22C7F46D4();
                      if (v275)
                      {
                        goto LABEL_209;
                      }

                      continue;
                    }
                  }

                  sub_22C7F4524();
                  sub_22C7F46FC(v576);
                  MEMORY[0x2318B8B10](*(v455 + 16));
                  sub_22C7F457C(&v1048);
                  sub_22C36EE58();
                  v31 = &qword_2814357B0;
                  if (v208)
                  {
                    sub_22C7F43D4();
                    sub_22C37BC60();
                    do
                    {
                      v577 = sub_22C7F4474();
                      (v62)(v577);
                      sub_22C371E00();
                      sub_22C7F4358(&qword_2814357B0, v578, MEMORY[0x277D1C348]);
                      sub_22C7E4C18();
                      sub_22C909F8C();
                      v579 = sub_22C37BFBC();
                      v580(v579);
                      sub_22C7F4570();
                    }

                    while (!v275);
                  }

                  sub_22C386DE8();
                  v1091 = *(v455 + 16);
                  if (v1091)
                  {
                    sub_22C3875E0();
                    v581 = v1082;
                    sub_22C38C4D8();
                    while (1)
                    {
                      sub_22C7F465C();
                      sub_22C7F43BC();
                      sub_22C7F4250();
                      sub_22C388A74();
                      sub_22C5CAC28();
                      sub_22C7F4250();
                      v582 = sub_22C7F46B0();
                      if (!v582)
                      {
                        break;
                      }

                      if (v582 == 1)
                      {
                        sub_22C37E7F4();
                        sub_22C7F44E0();
                        v207 = *(v583 + 8);
                        sub_22C7F4588();
                        sub_22C7F4668(v584);
                        sub_22C373A64();
                        sub_22C5CAC28();
                        sub_22C7F42A8();
                        sub_22C7F4614();
                        sub_22C378824();
                        sub_22C5CAC28();
                        sub_22C7F4250();
                        v585 = sub_22C7F45AC();
                        if (v585)
                        {
                          if (v585 == 1)
                          {
                            sub_22C36C47C();
                            sub_22C37EDA0();
                            MEMORY[0x2318B8B10](1);
                            sub_22C7F45FC();
                            sub_22C7F4594(v586, v587, v588, v589, v590, v591, v592, v593, v1008, v1009, v1010, v1011, v1012, v1013, v1014, v1015, v1016, v1017, v1018, v1019);
                            sub_22C7F4484();
                            sub_22C7F43A0();
                            sub_22C7F4358(&qword_27D9BC850, v594, MEMORY[0x277D72E20]);
                            sub_22C7F441C();
                            v595 = sub_22C36A3D0();
                            sub_22C7F4300(v595, v596);
                          }

                          else
                          {
                            sub_22C7F44C8();
                            MEMORY[0x2318B8B10](2);
                            sub_22C7F47B4();
                            if (v131)
                            {
                              sub_22C7F43D4();
                              v619 = v581 + v618;
                              v621 = *(v620 + 72);
                              sub_22C371E00();
                              sub_22C7F4358(&qword_2814357B0, v622, MEMORY[0x277D1C348]);
                              do
                              {
                                sub_22C376028();
                                sub_22C909F8C();
                                v619 += v621;
                                --v131;
                              }

                              while (v131);
                            }

                            sub_22C38688C();
                            sub_22C4706F0();

                            sub_22C381838();
                          }
                        }

                        else
                        {
                          sub_22C3834A8();
                          sub_22C377748();
                          v610();
                          MEMORY[0x2318B8B10](0);
                          sub_22C38C11C();
                          sub_22C7F4358(&qword_27D9BC858, v611, MEMORY[0x277CC9600]);
                          sub_22C37A430();
                          sub_22C909F8C();
                          v612 = sub_22C375118();
                          v613(v612);
                        }

                        sub_22C7F479C();
                        sub_22C7F472C();

                        sub_22C36B788();
                        v624 = v1069;
LABEL_273:
                        sub_22C7F4300(*(v624 - 32), v623);
                        v609 = v1082;
                        goto LABEL_274;
                      }

                      sub_22C376A28();
                      sub_22C7F44A0();

                      v609 = v1082;

LABEL_274:
                      v208 = *(v609 + v1077);
                      sub_22C7F468C();
                      v581 = *(v208 + 16);
                      if (v581)
                      {
                        v208 += 32;
                        do
                        {
                          sub_22C7F4674();
                          --v581;
                        }

                        while (v581);
                      }

                      v31 = (v31 + 1);
                      sub_22C372DF0();
                      sub_22C38155C(&v1096[48], v626);
                      sub_22C7F46D4();
                      if (v275)
                      {

                        sub_22C36D438();
                        goto LABEL_316;
                      }
                    }

                    sub_22C373A64();
                    sub_22C5CAC28();
                    sub_22C7F42A8();
                    sub_22C7F462C();
                    sub_22C378824();
                    sub_22C5CAC28();
                    sub_22C7F4250();
                    v597 = sub_22C7F45AC();
                    if (v597)
                    {
                      if (v597 == 1)
                      {
                        sub_22C36C47C();
                        sub_22C37EDA0();
                        MEMORY[0x2318B8B10](1);
                        sub_22C7F45FC();
                        sub_22C7F4594(v598, v599, v600, v601, v602, v603, v604, v605, v1008, v1009, v1010, v1011, v1012, v1013, v1014, v1015, v1016, v1017, v1018, v1019);
                        sub_22C7F4484();
                        sub_22C7F43A0();
                        sub_22C7F4358(&qword_27D9BC850, v606, MEMORY[0x277D72E20]);
                        sub_22C7F441C();
                        v607 = sub_22C36A3D0();
                        sub_22C7F4300(v607, v608);
                      }

                      else
                      {
                        sub_22C3866A4();
                        sub_22C7F44C8();
                        MEMORY[0x2318B8B10](2);
                        sub_22C7F4768();
                        if (v207)
                        {
                          sub_22C7F43D4();
                          sub_22C371E00();
                          v62 = sub_22C7F4358(&qword_2814357B0, v625, MEMORY[0x277D1C348]);
                          do
                          {
                            sub_22C376028();
                            sub_22C909F8C();
                            sub_22C7F4744();
                          }

                          while (!v275);
                        }

                        sub_22C38688C();
                        sub_22C4706F0();

                        sub_22C37B438();
                      }
                    }

                    else
                    {
                      sub_22C3834A8();
                      sub_22C377748();
                      v614();
                      MEMORY[0x2318B8B10](0);
                      sub_22C38C11C();
                      sub_22C7F4358(&qword_27D9BC858, v615, MEMORY[0x277CC9600]);
                      sub_22C37A430();
                      sub_22C909F8C();
                      v616 = sub_22C375118();
                      v617(v616);
                    }

                    sub_22C36B788();
                    v624 = &v1068;
                    goto LABEL_273;
                  }

                  sub_22C36D438();
                  sub_22C38C4D8();
LABEL_316:
                  sub_22C3801EC();

                  sub_22C36B788();
                  v679 = v1057;
LABEL_320:
                  v566 = *(v679 - 32);
LABEL_321:
                  sub_22C7F4300(v566, v567);
                }

                else
                {
                  sub_22C376A28();
                  sub_22C7F44A0();
                }

                sub_22C386394();
                v680 = *(v208 + 16);
                if (v680)
                {
                  v208 += 32;
                  do
                  {
                    sub_22C7F4674();
                    --v680;
                  }

                  while (v680);
                }

                v455 = v1075 + 1;
                sub_22C372DF0();
                sub_22C7F4714(v681, &v1084);
                if (v455 == v1050)
                {
                  goto LABEL_326;
                }

                continue;
              }

              break;
            }

            sub_22C373A64();
            sub_22C5CAC28();
            sub_22C7F42A8();
            sub_22C7F462C();
            sub_22C378824();
            sub_22C5CAC28();
            sub_22C7F4250();
            v514 = sub_22C7F45AC();
            if (v514)
            {
              if (v514 == 1)
              {
                sub_22C36C47C();
                sub_22C5CAC28();
                sub_22C7F42A8();
                MEMORY[0x2318B8B10](1);
                sub_22C387CAC();
                sub_22C7F4840(*(v455 + 16));
                if (v521)
                {
                  sub_22C3875E0();
                  do
                  {
                    sub_22C7F465C();
                    sub_22C7F43BC();
                    sub_22C7F4250();
                    sub_22C388A74();
                    sub_22C5CAC28();
                    sub_22C7F4250();
                    v522 = sub_22C7F46B0();
                    if (v522)
                    {
                      if (v522 == 1)
                      {
                        sub_22C3A5908(&qword_27D9BC848, &unk_22C926CA0);
                        sub_22C7F44E0();
                        v208 = *v523;
                        v207 = v523[1];
                        sub_22C373A64();
                        sub_22C5CAC28();
                        sub_22C7F42A8();
                        sub_22C7F4614();
                        sub_22C378824();
                        sub_22C5CAC28();
                        sub_22C7F4250();
                        v524 = sub_22C7F45AC();
                        v1070 = v208;
                        if (v524)
                        {
                          if (v524 == 1)
                          {
                            sub_22C36C47C();
                            sub_22C37EDA0();
                            MEMORY[0x2318B8B10](1);
                            sub_22C7F45FC();
                            sub_22C7F4594(v525, v526, v527, v528, v529, v530, v531, v532, v1008, v1009, v1010, v1011, v1012, v1013, v1014, v1015, v1016, v1017, v1018, v1019);
                            sub_22C7F4484();
                            sub_22C7F43A0();
                            sub_22C7F4358(&qword_27D9BC850, v533, MEMORY[0x277D72E20]);
                            sub_22C7F441C();
                            v534 = sub_22C36A3D0();
                            sub_22C7F4300(v534, v535);
                          }

                          else
                          {
                            sub_22C7F44C8();
                            MEMORY[0x2318B8B10](2);
                            sub_22C7F47B4();
                            if (v131)
                            {
                              sub_22C7F43D4();
                              v557 = v455 + v556;
                              v62 = *(v558 + 72);
                              sub_22C371E00();
                              sub_22C7F4358(&qword_2814357B0, v559, MEMORY[0x277D1C348]);
                              do
                              {
                                sub_22C376028();
                                sub_22C909F8C();
                                v557 += v62;
                                --v131;
                              }

                              while (v131);
                            }

                            sub_22C38688C();
                            sub_22C4706F0();

                            sub_22C381838();
                          }
                        }

                        else
                        {
                          sub_22C3834A8();
                          sub_22C377748();
                          v548();
                          MEMORY[0x2318B8B10](0);
                          sub_22C38C11C();
                          sub_22C7F4358(&qword_27D9BC858, v549, MEMORY[0x277CC9600]);
                          sub_22C37A430();
                          sub_22C909F8C();
                          v550 = sub_22C375118();
                          v551(v550);
                        }

                        sub_22C7F479C();

                        sub_22C36B788();
                        sub_22C7F4300(v1061[1], v560);
                        sub_22C7F46C8();
                      }

                      else
                      {
                        sub_22C376A28();
                        sub_22C7F44A0();
                      }
                    }

                    else
                    {
                      sub_22C373A64();
                      sub_22C5CAC28();
                      sub_22C7F42A8();
                      sub_22C7F462C();
                      sub_22C378824();
                      sub_22C5CAC28();
                      sub_22C7F4250();
                      v536 = sub_22C7F45AC();
                      if (v536)
                      {
                        if (v536 == 1)
                        {
                          sub_22C36C47C();
                          sub_22C37EDA0();
                          MEMORY[0x2318B8B10](1);
                          sub_22C7F45FC();
                          sub_22C7F4594(v537, v538, v539, v540, v541, v542, v543, v544, v1008, v1009, v1010, v1011, v1012, v1013, v1014, v1015, v1016, v1017, v1018, v1019);
                          sub_22C7F4484();
                          sub_22C7F43A0();
                          sub_22C7F4358(&qword_27D9BC850, v545, MEMORY[0x277D72E20]);
                          sub_22C7F441C();
                          v546 = sub_22C36A3D0();
                          sub_22C7F4300(v546, v547);
                        }

                        else
                        {
                          sub_22C3866A4();
                          sub_22C7F44C8();
                          MEMORY[0x2318B8B10](2);
                          sub_22C7F4768();
                          if (v207)
                          {
                            sub_22C7F43D4();
                            sub_22C371E00();
                            v62 = sub_22C7F4358(&qword_2814357B0, v561, MEMORY[0x277D1C348]);
                            do
                            {
                              sub_22C376028();
                              sub_22C909F8C();
                              sub_22C7F4744();
                            }

                            while (!v275);
                          }

                          sub_22C38688C();
                          sub_22C4706F0();

                          sub_22C37B438();
                        }
                      }

                      else
                      {
                        sub_22C3834A8();
                        sub_22C377748();
                        v552();
                        MEMORY[0x2318B8B10](0);
                        sub_22C38C11C();
                        sub_22C7F4358(&qword_27D9BC858, v553, MEMORY[0x277CC9600]);
                        sub_22C37A430();
                        sub_22C909F8C();
                        v554 = sub_22C375118();
                        v555(v554);
                      }

                      sub_22C36B788();
                      sub_22C7F4300(v1060[1], v562);
                    }

                    sub_22C386394();
                    v455 = *(v208 + 16);
                    if (v455)
                    {
                      v208 += 32;
                      do
                      {
                        sub_22C7F4674();
                        --v455;
                      }

                      while (v455);
                    }

                    v31 = (v31 + 1);
                    sub_22C372DF0();
                    sub_22C7F4714(v563, &v1097);
                    sub_22C7F46D4();
                  }

                  while (!v275);
                }

                sub_22C7F44FC(v515, v516, v517, v518, v519, v520, &v1038, v1008, v1009, v1010, v1011, v1012, v1013, v1014, v1015, v1016, v1017, v1018, v1019);
                sub_22C7F4484();
                sub_22C7F43A0();
                sub_22C7F4358(&qword_27D9BC850, v564, MEMORY[0x277D72E20]);
                sub_22C7F441C();
                sub_22C36B788();
                sub_22C7F4300(v1035, v565);
                v566 = sub_22C36A3D0();
                goto LABEL_321;
              }

              sub_22C7F4524();
              sub_22C7F46FC(v627);
              MEMORY[0x2318B8B10](*(v455 + 16));
              sub_22C7F457C(&v1064);
              sub_22C36EE58();
              v31 = &qword_2814357B0;
              if (v208)
              {
                sub_22C7F43D4();
                sub_22C37BC60();
                do
                {
                  v628 = sub_22C7F4474();
                  (v62)(v628);
                  sub_22C371E00();
                  sub_22C7F4358(&qword_2814357B0, v629, MEMORY[0x277D1C348]);
                  v630 = sub_22C7E4C18();
                  sub_22C37DA38(v630);
                  v631 = sub_22C37BFBC();
                  v632(v631);
                  sub_22C7F4570();
                }

                while (!v275);
              }

              sub_22C386DE8();
              v1091 = *(v455 + 16);
              if (v1091)
              {
                sub_22C3875E0();
                v633 = v1081;
                sub_22C381BF8();
                while (1)
                {
                  sub_22C7F465C();
                  sub_22C7F43BC();
                  sub_22C7F4250();
                  sub_22C388A74();
                  sub_22C5CAC28();
                  sub_22C7F4250();
                  v634 = sub_22C7F46B0();
                  if (!v634)
                  {
                    break;
                  }

                  if (v634 == 1)
                  {
                    sub_22C3A5908(&qword_27D9BC848, &unk_22C926CA0);
                    sub_22C7F44E0();
                    v207 = *(v635 + 8);
                    sub_22C7F4588();
                    v1070 = v636;
                    sub_22C373A64();
                    sub_22C5CAC28();
                    sub_22C7F42A8();
                    sub_22C7F4614();
                    sub_22C378824();
                    sub_22C5CAC28();
                    sub_22C7F4250();
                    v637 = sub_22C7F45AC();
                    if (v637)
                    {
                      if (v637 == 1)
                      {
                        sub_22C36C47C();
                        sub_22C37EDA0();
                        MEMORY[0x2318B8B10](1);
                        sub_22C7F45FC();
                        sub_22C7F4594(v638, v639, v640, v641, v642, v643, v644, v645, v1008, v1009, v1010, v1011, v1012, v1013, v1014, v1015, v1016, v1017, v1018, v1019);
                        sub_22C7F4484();
                        sub_22C7F43A0();
                        sub_22C7F4358(&qword_27D9BC850, v646, MEMORY[0x277D72E20]);
                        sub_22C7F441C();
                        v647 = sub_22C36A3D0();
                        sub_22C7F4300(v647, v648);
                      }

                      else
                      {
                        sub_22C7F44C8();
                        MEMORY[0x2318B8B10](2);
                        sub_22C7F47B4();
                        if (v131)
                        {
                          sub_22C7F43D4();
                          v671 = v633 + v670;
                          v673 = *(v672 + 72);
                          sub_22C371E00();
                          sub_22C7F4358(&qword_2814357B0, v674, MEMORY[0x277D1C348]);
                          do
                          {
                            sub_22C376028();
                            sub_22C909F8C();
                            v671 += v673;
                            --v131;
                          }

                          while (v131);
                        }

                        sub_22C38688C();
                        sub_22C4706F0();

                        sub_22C381838();
                      }
                    }

                    else
                    {
                      sub_22C3834A8();
                      sub_22C377748();
                      v662();
                      MEMORY[0x2318B8B10](0);
                      sub_22C38C11C();
                      sub_22C7F4358(&qword_27D9BC858, v663, MEMORY[0x277CC9600]);
                      sub_22C37A430();
                      sub_22C909F8C();
                      v664 = sub_22C375118();
                      v665(v664);
                    }

                    sub_22C7F479C();

                    sub_22C36B788();
                    v676 = &v1067;
LABEL_308:
                    sub_22C7F4300(*(v676 - 32), v675);
                    v661 = v1081;
                    goto LABEL_309;
                  }

                  sub_22C376A28();
                  sub_22C7F44A0();

                  v661 = v1081;

LABEL_309:
                  v208 = *(v661 + v1077);
                  sub_22C7F468C();
                  v633 = *(v208 + 16);
                  if (v633)
                  {
                    v208 += 32;
                    do
                    {
                      sub_22C7F4674();
                      --v633;
                    }

                    while (v633);
                  }

                  v31 = (v31 + 1);
                  sub_22C372DF0();
                  sub_22C38155C(&v1096[40], v678);
                  sub_22C7F46D4();
                  if (v275)
                  {
                    sub_22C7F47CC();
                    goto LABEL_318;
                  }
                }

                sub_22C373A64();
                sub_22C5CAC28();
                sub_22C7F42A8();
                sub_22C7F462C();
                sub_22C378824();
                sub_22C5CAC28();
                sub_22C7F4250();
                v649 = sub_22C7F45AC();
                if (v649)
                {
                  if (v649 == 1)
                  {
                    sub_22C36C47C();
                    sub_22C37EDA0();
                    MEMORY[0x2318B8B10](1);
                    sub_22C7F45FC();
                    sub_22C7F4594(v650, v651, v652, v653, v654, v655, v656, v657, v1008, v1009, v1010, v1011, v1012, v1013, v1014, v1015, v1016, v1017, v1018, v1019);
                    sub_22C7F4484();
                    sub_22C7F43A0();
                    sub_22C7F4358(&qword_27D9BC850, v658, MEMORY[0x277D72E20]);
                    sub_22C7F441C();
                    v659 = sub_22C36A3D0();
                    sub_22C7F4300(v659, v660);
                  }

                  else
                  {
                    sub_22C3866A4();
                    sub_22C7F44C8();
                    MEMORY[0x2318B8B10](2);
                    sub_22C7F4768();
                    if (v207)
                    {
                      sub_22C7F43D4();
                      sub_22C371E00();
                      v62 = sub_22C7F4358(&qword_2814357B0, v677, MEMORY[0x277D1C348]);
                      do
                      {
                        sub_22C376028();
                        sub_22C909F8C();
                        sub_22C7F4744();
                      }

                      while (!v275);
                    }

                    sub_22C38688C();
                    sub_22C4706F0();

                    sub_22C37B438();
                  }
                }

                else
                {
                  sub_22C3834A8();
                  sub_22C377748();
                  v666();
                  MEMORY[0x2318B8B10](0);
                  sub_22C38C11C();
                  sub_22C7F4358(&qword_27D9BC858, v667, MEMORY[0x277CC9600]);
                  sub_22C37A430();
                  sub_22C909F8C();
                  v668 = sub_22C375118();
                  v669(v668);
                }

                sub_22C36B788();
                v676 = &v1066;
                goto LABEL_308;
              }

              sub_22C381BF8();
LABEL_318:
            }

            else
            {
              sub_22C3834A8();
              sub_22C377748();
              v572();
              MEMORY[0x2318B8B10](0);
              sub_22C38C11C();
              sub_22C7F4358(&qword_27D9BC858, v573, MEMORY[0x277CC9600]);
              sub_22C37A430();
              sub_22C909F8C();
              v574 = sub_22C375118();
              v575(v574);
            }

            sub_22C36B788();
            v679 = v1056;
            goto LABEL_320;
          }

          sub_22C7F4524();
          sub_22C7F46FC(v825);
          MEMORY[0x2318B8B10](*(v216 + 16));
          sub_22C7F457C(&v1054);
          sub_22C36EE58();
          v31 = &qword_2814357B0;
          if (v208)
          {
            sub_22C7F43D4();
            sub_22C37BC60();
            do
            {
              v826 = sub_22C7F4474();
              (v62)(v826);
              sub_22C371E00();
              sub_22C7F4358(&qword_2814357B0, v827, MEMORY[0x277D1C348]);
              v828 = sub_22C7E4C18();
              sub_22C37DA38(v828);
              v829 = sub_22C37BFBC();
              v830(v829);
              sub_22C7F4570();
            }

            while (!v275);
          }

          sub_22C386DE8();
          sub_22C7F4668(*(v216 + 16));
          if (v831)
          {
            v832 = 0;
            sub_22C382968();
            sub_22C3892D8(v833);
            v1050 = v834;
            v835 = v1071;
            sub_22C381BF8();
            while (1)
            {
              sub_22C7F43BC();
              sub_22C7F4250();
              sub_22C388A74();
              sub_22C5CAC28();
              sub_22C7F4250();
              v836 = sub_22C7F46B0();
              v1075 = v832;
              if (v836)
              {
                if (v836 == 1)
                {
                  v1070 = sub_22C3A5908(&qword_27D9BC848, &unk_22C926CA0);
                  sub_22C7F44E0();
                  v1034 = *v837;
                  sub_22C7F4588();
                  v1048 = v838;
                  sub_22C373A64();
                  sub_22C5CAC28();
                  sub_22C7F42A8();
                  sub_22C7F4614();
                  sub_22C378824();
                  sub_22C5CAC28();
                  sub_22C7F4250();
                  v839 = sub_22C7F45AC();
                  if (v839)
                  {
                    if (v839 == 1)
                    {
                      sub_22C36C47C();
                      sub_22C5CAC28();
                      sub_22C7F42A8();
                      MEMORY[0x2318B8B10](1);
                      sub_22C387CAC();
                      sub_22C7F4840(*(v835 + 16));
                      if (v846)
                      {
                        sub_22C3875E0();
                        do
                        {
                          sub_22C7F465C();
                          sub_22C7F43BC();
                          sub_22C7F4250();
                          sub_22C388A74();
                          sub_22C5CAC28();
                          sub_22C7F4250();
                          v847 = sub_22C7F46B0();
                          if (v847)
                          {
                            if (v847 == 1)
                            {
                              sub_22C37E7F4();
                              sub_22C7F44E0();
                              v848 = v62;
                              v62 = *(v849 + 8);
                              v207 = *(v849 + 16);
                              sub_22C373A64();
                              v208 = v1057[0];
                              sub_22C7F42A8();
                              sub_22C7F4614();
                              sub_22C7F4250();
                              EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
                              if (EnumCaseMultiPayload)
                              {
                                if (EnumCaseMultiPayload == 1)
                                {
                                  sub_22C36C47C();
                                  sub_22C37EDA0();
                                  sub_22C7F4614();
                                  sub_22C7F45FC();
                                  sub_22C7F4594(v851, v852, v853, v854, v855, v856, v857, v858, v1008, v1009, v1010, v1011, v1012, v1013, v1014, v1015, v1016, v1017, v1018, v1019);
                                  sub_22C7F4484();
                                  sub_22C7F43A0();
                                  sub_22C7F4358(&qword_27D9BC850, v859, MEMORY[0x277D72E20]);
                                  sub_22C7F441C();
                                  v860 = sub_22C36A3D0();
                                  sub_22C7F4300(v860, v861);
                                }

                                else
                                {
                                  v1033 = v207;
                                  sub_22C7F44C8();
                                  sub_22C7F4644();
                                  sub_22C7F4768();
                                  if (v207)
                                  {
                                    sub_22C7F43D4();
                                    v883 = v848 + v882;
                                    v885 = *(v884 + 72);
                                    sub_22C371E00();
                                    sub_22C7F4358(&qword_2814357B0, v886, MEMORY[0x277D1C348]);
                                    do
                                    {
                                      sub_22C376028();
                                      sub_22C909F8C();
                                      v883 += v885;
                                      --v207;
                                    }

                                    while (v207);
                                  }

                                  sub_22C38688C();
                                  sub_22C4706F0();

                                  v207 = v1033;
                                }
                              }

                              else
                              {
                                sub_22C3834A8();
                                sub_22C377748();
                                v874();
                                sub_22C7F462C();
                                sub_22C38C11C();
                                sub_22C7F4358(&qword_27D9BC858, v875, MEMORY[0x277CC9600]);
                                sub_22C37A430();
                                sub_22C909F8C();
                                v876 = sub_22C375118();
                                v877(v876);
                              }

                              sub_22C909FFC();

                              sub_22C36B788();
                              sub_22C7F4300(v1057[0], v887);
                              sub_22C38C4D8();
                              v131 = v1095;
                            }

                            else
                            {
                              sub_22C376A28();
                              sub_22C7F44A0();
                            }
                          }

                          else
                          {
                            sub_22C373A64();
                            sub_22C5CAC28();
                            sub_22C7F42A8();
                            sub_22C7F462C();
                            sub_22C378824();
                            sub_22C5CAC28();
                            sub_22C7F4250();
                            v862 = sub_22C7F45AC();
                            if (v862)
                            {
                              if (v862 == 1)
                              {
                                sub_22C36C47C();
                                sub_22C37EDA0();
                                MEMORY[0x2318B8B10](1);
                                sub_22C7F45FC();
                                sub_22C7F4594(v863, v864, v865, v866, v867, v868, v869, v870, v1008, v1009, v1010, v1011, v1012, v1013, v1014, v1015, v1016, v1017, v1018, v1019);
                                sub_22C7F4484();
                                sub_22C7F43A0();
                                sub_22C7F4358(&qword_27D9BC850, v871, MEMORY[0x277D72E20]);
                                sub_22C7F441C();
                                v872 = sub_22C36A3D0();
                                sub_22C7F4300(v872, v873);
                              }

                              else
                              {
                                sub_22C3866A4();
                                sub_22C7F44C8();
                                MEMORY[0x2318B8B10](2);
                                v62 = *(v835 + 16);
                                MEMORY[0x2318B8B10](v62);
                                if (v62)
                                {
                                  sub_22C7F43D4();
                                  v889 = v835 + v888;
                                  v891 = *(v890 + 72);
                                  sub_22C371E00();
                                  v207 = sub_22C7F4358(&qword_2814357B0, v892, MEMORY[0x277D1C348]);
                                  do
                                  {
                                    sub_22C376028();
                                    sub_22C909F8C();
                                    v889 += v891;
                                    --v62;
                                  }

                                  while (v62);
                                }

                                sub_22C38688C();
                                sub_22C4706F0();

                                sub_22C37B438();
                              }
                            }

                            else
                            {
                              sub_22C3834A8();
                              sub_22C377748();
                              v878();
                              MEMORY[0x2318B8B10](0);
                              sub_22C38C11C();
                              sub_22C7F4358(&qword_27D9BC858, v879, MEMORY[0x277CC9600]);
                              sub_22C37A430();
                              sub_22C909F8C();
                              v880 = sub_22C375118();
                              v881(v880);
                            }

                            sub_22C36B788();
                            sub_22C7F4300(v1056[1], v893);
                          }

                          sub_22C386394();
                          v835 = *(v208 + 16);
                          if (v835)
                          {
                            v208 += 32;
                            do
                            {
                              sub_22C7F4674();
                              --v835;
                            }

                            while (v835);
                          }

                          v31 = (v31 + 1);
                          sub_22C372DF0();
                          sub_22C7F4714(v894, &a11);
                          sub_22C7F46D4();
                        }

                        while (!v275);
                      }

                      sub_22C7F44FC(v840, v841, v842, v843, v844, v845, &v1041, v1008, v1009, v1010, v1011, v1012, v1013, v1014, v1015, v1016, v1017, v1018, v1019);
                      sub_22C7F4484();
                      sub_22C7F43A0();
                      sub_22C7F4358(&qword_27D9BC850, v895, MEMORY[0x277D72E20]);
                      sub_22C7F441C();
                      v896 = sub_22C36A3D0();
                      sub_22C7F4300(v896, v897);
                    }

                    else
                    {
                      sub_22C7F4524();
                      sub_22C7F4518(v962);
                      MEMORY[0x2318B8B10](2);
                      MEMORY[0x2318B8B10](*(v835 + 16));
                      v1091 = v835;
                      v963 = *(v835 + 16);
                      sub_22C36EE58();
                      v31 = &qword_2814357B0;
                      if (v963)
                      {
                        sub_22C7F43D4();
                        v835 = v1091 + v964;
                        v207 = *(v965 + 72);
                        v62 = *(v965 + 16);
                        do
                        {
                          v966 = sub_22C7F4474();
                          (v62)(v966);
                          sub_22C371E00();
                          sub_22C7F4358(&qword_2814357B0, v967, MEMORY[0x277D1C348]);
                          v968 = sub_22C7E4C18();
                          sub_22C37DA38(v968);
                          v969 = sub_22C37BFBC();
                          v970(v969);
                          sub_22C7F4570();
                        }

                        while (!v275);
                      }

                      sub_22C386DE8();
                      v971 = *(v835 + 16);
                      if (v971)
                      {
                        v31 = 0;
                        sub_22C7F44D4();
                        v131 = *(v972 + 20);
                        sub_22C382E28();
                        v62 = v835 + v973;
                        v974 = v1078;
                        do
                        {
                          sub_22C7F43BC();
                          sub_22C7F4250();
                          sub_22C388A74();
                          sub_22C5CAC28();
                          sub_22C7F4250();
                          v975 = sub_22C7F484C();
                          if (v975)
                          {
                            if (v975 == 1)
                            {
                              sub_22C37E7F4();
                              sub_22C7F44E0();
                              v207 = *(v976 + 16);
                              sub_22C373A64();
                              v977 = v1092;
                              sub_22C7F42A8();
                              sub_22C7F4614();
                              sub_22C57C528();
                              sub_22C7F44A0();

                              sub_22C36B788();
                              sub_22C7F4300(v977, v978);
                            }

                            else
                            {
                              sub_22C376A28();
                              sub_22C7F44A0();
                            }

                            v974 = v1078;
                          }

                          else
                          {
                            sub_22C373A64();
                            sub_22C7F45E0();
                            sub_22C7F462C();
                            sub_22C7F46A4();
                            sub_22C57C528();
                            sub_22C36B788();
                            sub_22C7F4300(v835, v979);
                          }

                          v974 = *(v974 + v131);
                          sub_22C7F468C();
                          v835 = *(v974 + 16);
                          if (v835)
                          {
                            v974 += 32;
                            do
                            {
                              sub_22C7F4674();
                              --v835;
                            }

                            while (v835);
                          }

                          v31 = (v31 + 1);
                          sub_22C372DF0();
                          v980 = sub_22C38B1DC(&v1088);
                          sub_22C7F4300(v980, v981);
                        }

                        while (v31 != v971);

                        sub_22C381838();
                      }

                      else
                      {

                        sub_22C381BF8();
                      }
                    }
                  }

                  else
                  {
                    sub_22C3834A8();
                    sub_22C377748();
                    v953();
                    MEMORY[0x2318B8B10](0);
                    sub_22C38C11C();
                    sub_22C7F4358(&qword_27D9BC858, v954, MEMORY[0x277CC9600]);
                    sub_22C37A430();
                    sub_22C909F8C();
                    v955 = sub_22C375118();
                    v956(v955);
                  }

                  sub_22C3801EC();

                  sub_22C36B788();
                  v999 = v1059;
                  goto LABEL_545;
                }

                sub_22C376A28();
                sub_22C7F44A0();

                v952 = v1071;
              }

              else
              {
                sub_22C373A64();
                sub_22C5CAC28();
                sub_22C7F42A8();
                sub_22C7F462C();
                sub_22C378824();
                sub_22C5CAC28();
                sub_22C7F4250();
                v898 = sub_22C7F45AC();
                if (v898)
                {
                  if (v898 == 1)
                  {
                    sub_22C36C47C();
                    sub_22C5CAC28();
                    sub_22C7F42A8();
                    MEMORY[0x2318B8B10](1);
                    sub_22C387CAC();
                    sub_22C7F4840(*(v835 + 16));
                    if (v905)
                    {
                      sub_22C3875E0();
                      do
                      {
                        sub_22C7F465C();
                        sub_22C7F43BC();
                        sub_22C7F4250();
                        sub_22C388A74();
                        sub_22C5CAC28();
                        sub_22C7F4250();
                        v906 = sub_22C7F46B0();
                        if (v906)
                        {
                          if (v906 == 1)
                          {
                            sub_22C3A5908(&qword_27D9BC848, &unk_22C926CA0);
                            sub_22C7F44E0();
                            v208 = *v907;
                            v207 = v907[1];
                            sub_22C373A64();
                            sub_22C5CAC28();
                            sub_22C7F42A8();
                            sub_22C7F4614();
                            sub_22C378824();
                            sub_22C5CAC28();
                            sub_22C7F4250();
                            v908 = sub_22C7F45AC();
                            v1070 = v208;
                            if (v908)
                            {
                              if (v908 == 1)
                              {
                                sub_22C36C47C();
                                sub_22C37EDA0();
                                MEMORY[0x2318B8B10](1);
                                sub_22C7F45FC();
                                sub_22C7F4594(v909, v910, v911, v912, v913, v914, v915, v916, v1008, v1009, v1010, v1011, v1012, v1013, v1014, v1015, v1016, v1017, v1018, v1019);
                                sub_22C7F4484();
                                sub_22C7F43A0();
                                sub_22C7F4358(&qword_27D9BC850, v917, MEMORY[0x277D72E20]);
                                sub_22C7F441C();
                                v918 = sub_22C36A3D0();
                                sub_22C7F4300(v918, v919);
                              }

                              else
                              {
                                sub_22C7F44C8();
                                MEMORY[0x2318B8B10](2);
                                sub_22C7F47B4();
                                if (v131)
                                {
                                  sub_22C7F43D4();
                                  v941 = v835 + v940;
                                  v62 = *(v942 + 72);
                                  sub_22C371E00();
                                  sub_22C7F4358(&qword_2814357B0, v943, MEMORY[0x277D1C348]);
                                  do
                                  {
                                    sub_22C376028();
                                    sub_22C909F8C();
                                    v941 += v62;
                                    --v131;
                                  }

                                  while (v131);
                                }

                                sub_22C38688C();
                                sub_22C4706F0();

                                sub_22C381838();
                              }
                            }

                            else
                            {
                              sub_22C3834A8();
                              sub_22C377748();
                              v932();
                              MEMORY[0x2318B8B10](0);
                              sub_22C38C11C();
                              sub_22C7F4358(&qword_27D9BC858, v933, MEMORY[0x277CC9600]);
                              sub_22C37A430();
                              sub_22C909F8C();
                              v934 = sub_22C375118();
                              v935(v934);
                            }

                            sub_22C7F479C();

                            sub_22C36B788();
                            sub_22C7F4300(v1056[0], v944);
                            sub_22C7F46C8();
                          }

                          else
                          {
                            sub_22C376A28();
                            sub_22C7F44A0();
                          }
                        }

                        else
                        {
                          sub_22C373A64();
                          sub_22C5CAC28();
                          sub_22C7F42A8();
                          sub_22C7F462C();
                          sub_22C378824();
                          sub_22C5CAC28();
                          sub_22C7F4250();
                          v920 = sub_22C7F45AC();
                          if (v920)
                          {
                            if (v920 == 1)
                            {
                              sub_22C36C47C();
                              sub_22C37EDA0();
                              MEMORY[0x2318B8B10](1);
                              sub_22C7F45FC();
                              sub_22C7F4594(v921, v922, v923, v924, v925, v926, v927, v928, v1008, v1009, v1010, v1011, v1012, v1013, v1014, v1015, v1016, v1017, v1018, v1019);
                              sub_22C7F4484();
                              sub_22C7F43A0();
                              sub_22C7F4358(&qword_27D9BC850, v929, MEMORY[0x277D72E20]);
                              sub_22C7F441C();
                              v930 = sub_22C36A3D0();
                              sub_22C7F4300(v930, v931);
                            }

                            else
                            {
                              sub_22C3866A4();
                              sub_22C7F44C8();
                              MEMORY[0x2318B8B10](2);
                              sub_22C7F4768();
                              if (v207)
                              {
                                sub_22C7F43D4();
                                sub_22C371E00();
                                v62 = sub_22C7F4358(&qword_2814357B0, v945, MEMORY[0x277D1C348]);
                                do
                                {
                                  sub_22C376028();
                                  sub_22C909F8C();
                                  sub_22C7F4744();
                                }

                                while (!v275);
                              }

                              sub_22C38688C();
                              sub_22C4706F0();

                              sub_22C37B438();
                            }
                          }

                          else
                          {
                            sub_22C3834A8();
                            sub_22C377748();
                            v936();
                            MEMORY[0x2318B8B10](0);
                            sub_22C38C11C();
                            sub_22C7F4358(&qword_27D9BC858, v937, MEMORY[0x277CC9600]);
                            sub_22C37A430();
                            sub_22C909F8C();
                            v938 = sub_22C375118();
                            v939(v938);
                          }

                          sub_22C36B788();
                          sub_22C7F4300(v1055, v946);
                        }

                        sub_22C386394();
                        v835 = *(v208 + 16);
                        if (v835)
                        {
                          v208 += 32;
                          do
                          {
                            sub_22C7F4674();
                            --v835;
                          }

                          while (v835);
                        }

                        v31 = (v31 + 1);
                        sub_22C372DF0();
                        sub_22C7F4714(v947, &a10);
                        sub_22C7F46D4();
                      }

                      while (!v275);
                    }

                    sub_22C7F44FC(v899, v900, v901, v902, v903, v904, &v1040, v1008, v1009, v1010, v1011, v1012, v1013, v1014, v1015, v1016, v1017, v1018, v1019);
                    sub_22C7F4484();
                    sub_22C7F43A0();
                    sub_22C7F4358(&qword_27D9BC850, v948, MEMORY[0x277D72E20]);
                    sub_22C7F441C();
                    sub_22C36B788();
                    sub_22C7F4300(v1036, v949);
                    v950 = sub_22C36A3D0();
                    goto LABEL_546;
                  }

                  sub_22C7F4524();
                  sub_22C7F4518(v982);
                  MEMORY[0x2318B8B10](2);
                  MEMORY[0x2318B8B10](*(v835 + 16));
                  v1091 = v835;
                  v983 = *(v835 + 16);
                  v62 = v1047;
                  if (v983)
                  {
                    sub_22C7F43D4();
                    v835 = v1091 + v984;
                    v207 = *(v985 + 72);
                    v986 = *(v985 + 16);
                    do
                    {
                      v987 = sub_22C7F4474();
                      v986(v987);
                      sub_22C371E00();
                      sub_22C7F4358(&qword_2814357B0, v988, MEMORY[0x277D1C348]);
                      sub_22C7E4C18();
                      sub_22C909F8C();
                      (*v62)(v1025, v25);
                      sub_22C7F4570();
                    }

                    while (!v275);
                  }

                  sub_22C386DE8();
                  v31 = *(v835 + 16);
                  sub_22C38C4D8();
                  if (v31)
                  {
                    v989 = 0;
                    sub_22C7F44D4();
                    v991 = *(v990 + 20);
                    sub_22C382E28();
                    v207 = (v835 + v992);
                    sub_22C385E20();
                    do
                    {
                      sub_22C7F43BC();
                      sub_22C7F4250();
                      sub_22C388A74();
                      sub_22C5CAC28();
                      sub_22C7F4250();
                      v993 = sub_22C7F484C();
                      if (v993)
                      {
                        if (v993 == 1)
                        {
                          sub_22C3A5908(&qword_27D9BC848, &unk_22C926CA0);
                          sub_22C7F44E0();
                          v983 = *(v994 + 8);
                          sub_22C373A64();
                          v62 = v1092;
                          sub_22C7F42A8();
                          sub_22C7F4614();
                          sub_22C57C528();
                          sub_22C7F44A0();

                          sub_22C36B788();
                          sub_22C7F4300(v62, v995);
                        }

                        else
                        {
                          sub_22C7F44C8();
                          sub_22C7F4644();
                          sub_22C7F44A0();
                        }

                        sub_22C385E20();
                      }

                      else
                      {
                        sub_22C373A64();
                        sub_22C7F45E0();
                        sub_22C7F462C();
                        sub_22C7F46A4();
                        sub_22C57C528();
                        sub_22C36B788();
                        sub_22C7F4300(v835, v996);
                      }

                      v983 = *(v983 + v991);
                      sub_22C7F468C();
                      v835 = *(v983 + 16);
                      if (v835)
                      {
                        v983 += 32;
                        do
                        {
                          sub_22C7F4674();
                          --v835;
                        }

                        while (v835);
                      }

                      v989 = (v989 + 1);
                      sub_22C372DF0();
                      v997 = sub_22C38B1DC(&v1087);
                      sub_22C7F4300(v997, v998);
                    }

                    while (v989 != v31);

                    sub_22C38C4D8();
                    v131 = v1095;
                  }

                  else
                  {
                  }

                  sub_22C36B788();
                  v999 = v1058;
LABEL_545:
                  v950 = *(v999 - 32);
LABEL_546:
                  sub_22C7F4300(v950, v951);
                  v952 = v1071;
                  goto LABEL_547;
                }

                sub_22C3834A8();
                sub_22C377748();
                v957();
                MEMORY[0x2318B8B10](0);
                sub_22C38C11C();
                sub_22C7F4358(&qword_27D9BC858, v958, MEMORY[0x277CC9600]);
                sub_22C37A430();
                sub_22C909F8C();
                v959 = sub_22C36D400();
                v952 = v1071;
                v960(v959, v835);
                sub_22C36B788();
                sub_22C7F4300(v1036, v961);
              }

LABEL_547:
              v208 = *(v952 + v1052);
              sub_22C7F468C();
              v835 = *(v208 + 16);
              if (v835)
              {
                v208 += 32;
                do
                {
                  sub_22C7F4674();
                  --v835;
                }

                while (v835);
              }

              v832 = v1075 + 1;
              sub_22C372DF0();
              sub_22C38155C(&v1082, v1000);
              if (v832 == v1053)
              {
                sub_22C36D438();
                goto LABEL_555;
              }
            }
          }

          sub_22C381BF8();
LABEL_555:
        }

        else
        {
          sub_22C3834A8();
          sub_22C377748();
          v690();
          MEMORY[0x2318B8B10](0);
          sub_22C38C11C();
          sub_22C7F4358(&qword_27D9BC858, v691, MEMORY[0x277CC9600]);
          sub_22C37A430();
          sub_22C909F8C();
          v692 = sub_22C375118();
          v693(v692);
        }

        sub_22C36B788();
        v1001 = &v1049;
        goto LABEL_557;
      }

LABEL_563:

      v192 = sub_22C90B66C() ^ v1023;
      v191 = v1014;
      v193 = v1022;
      goto LABEL_2;
    }
  }

  __break(1u);
}

void sub_22C7F3AA8()
{
  sub_22C36BA7C();
  v4 = v3;
  v44 = v5;
  v48 = sub_22C908C5C();
  sub_22C369824();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  sub_22C3698A8();
  v47 = v9;
  sub_22C36BA0C();
  v46 = sub_22C9069BC();
  sub_22C369824();
  MEMORY[0x28223BE20](v10);
  sub_22C3698A8();
  v45 = v11;
  v12 = sub_22C3A5908(&qword_27D9BF108, &unk_22C921F70);
  v13 = sub_22C369914(v12);
  MEMORY[0x28223BE20](v13);
  sub_22C369ABC();
  sub_22C37EBC0();
  MEMORY[0x28223BE20](v14);
  v16 = (v43 - v15);
  sub_22C36D280();
  sub_22C386B70();
  v17 = 0;
  sub_22C36CB90();
  while (1)
  {
    v49 = v18;
    if (!v2)
    {
      break;
    }

LABEL_7:
    v20 = sub_22C37AD78();
    v21(v20);
    v22 = sub_22C7F4530();
    v23(v22);
    sub_22C3A5908(&qword_27D9BF110, &unk_22C922580);
    v24 = sub_22C388DBC();
    v25(v24);
    v16[4](v0 + v7, &qword_27D9BF110, v1);
    sub_22C633C54();
    sub_22C36C640(v26, v27, v28, v29);
    sub_22C375DA0();
LABEL_8:
    sub_22C407C2C();
    v30 = sub_22C36BA00();
    sub_22C3A5908(v30, v31);
    sub_22C36D3E0(v16);
    if (v32)
    {

      MEMORY[0x2318B8B10](v49);
      sub_22C36CC48();
      return;
    }

    v33 = sub_22C36D400();
    v1 = v46;
    v34(v33, v16, v46);
    v35 = sub_22C383C78();
    v36(v35);
    memcpy(v50, v44, sizeof(v50));
    sub_22C7F4358(&qword_27D9BAA98, MEMORY[0x277D1DCF0], MEMORY[0x277D1DCF8]);
    sub_22C37A430();
    sub_22C909F8C();
    v37 = sub_22C36D400();
    v38(v37, v1);
    sub_22C380600();
    sub_22C7F4358(&qword_27D9BAA90, v39, MEMORY[0x277D1E970]);
    sub_22C7E4C18();
    sub_22C909F8C();
    (*v43[10])(&qword_27D9BF110, v7);
    v18 = sub_22C90B66C() ^ v49;
  }

  while (1)
  {
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v19 >= v43[1])
    {
      v40 = sub_22C3A5908(&qword_27D9BF110, &unk_22C922580);
      sub_22C374D84(v0, v41, v42, v40);
      v2 = 0;
      goto LABEL_8;
    }

    v2 = *(v4 + 64 + 8 * v19);
    ++v17;
    if (v2)
    {
      v17 = v19;
      goto LABEL_7;
    }
  }

  __break(1u);
}

void sub_22C7F3E64()
{
  sub_22C36BA7C();
  v4 = v3;
  v45 = v5;
  v49 = sub_22C908C5C();
  sub_22C369824();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  sub_22C3698A8();
  v48 = v9;
  sub_22C36BA0C();
  v47 = sub_22C901FAC();
  sub_22C369824();
  MEMORY[0x28223BE20](v10);
  sub_22C3698A8();
  v46 = v11;
  v12 = sub_22C3A5908(&qword_27D9BF0F0, &qword_22C921F58);
  v13 = sub_22C369914(v12);
  MEMORY[0x28223BE20](v13);
  sub_22C369ABC();
  sub_22C37EBC0();
  MEMORY[0x28223BE20](v14);
  v16 = (v44 - v15);
  sub_22C36D280();
  sub_22C386B70();
  v17 = 0;
  sub_22C36CB90();
  while (1)
  {
    v50 = v18;
    if (!v2)
    {
      break;
    }

LABEL_7:
    v20 = sub_22C37AD78();
    v21(v20);
    v22 = sub_22C7F4530();
    v23(v22);
    sub_22C3A5908(&qword_27D9BF100, &qword_22C922FE0);
    v24 = sub_22C388DBC();
    v25(v24);
    v16[4](v0 + v7, &qword_27D9BF100, v1);
    sub_22C633C54();
    sub_22C36C640(v26, v27, v28, v29);
    sub_22C375DA0();
LABEL_8:
    sub_22C407C2C();
    v30 = sub_22C36BA00();
    sub_22C3A5908(v30, v31);
    sub_22C36D3E0(v16);
    if (v32)
    {

      MEMORY[0x2318B8B10](v50);
      sub_22C36CC48();
      return;
    }

    v33 = sub_22C36D400();
    v1 = v47;
    v34(v33, v16, v47);
    v35 = sub_22C383C78();
    v36(v35);
    memcpy(v51, v45, sizeof(v51));
    sub_22C371E00();
    sub_22C7F4358(&qword_2814357B0, v37, MEMORY[0x277D1C348]);
    sub_22C37A430();
    sub_22C909F8C();
    v38 = sub_22C36D400();
    v39(v38, v1);
    sub_22C380600();
    sub_22C7F4358(&qword_27D9BAA90, v40, MEMORY[0x277D1E970]);
    sub_22C7E4C18();
    sub_22C909F8C();
    (*v44[10])(&qword_27D9BF100, v7);
    v18 = sub_22C90B66C() ^ v50;
  }

  while (1)
  {
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v19 >= v44[1])
    {
      v41 = sub_22C3A5908(&qword_27D9BF100, &qword_22C922FE0);
      sub_22C374D84(v0, v42, v43, v41);
      v2 = 0;
      goto LABEL_8;
    }

    v2 = *(v4 + 64 + 8 * v19);
    ++v17;
    if (v2)
    {
      v17 = v19;
      goto LABEL_7;
    }
  }

  __break(1u);
}

uint64_t sub_22C7F4250()
{
  sub_22C36986C();
  v1(0);
  sub_22C36985C();
  v2 = sub_22C36BA00();
  v3(v2);
  return v0;
}

uint64_t sub_22C7F42A8()
{
  sub_22C36986C();
  v1(0);
  sub_22C36985C();
  v2 = sub_22C36BA00();
  v3(v2);
  return v0;
}

uint64_t sub_22C7F4300(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_22C36985C();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_22C7F4358(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22C7F441C()
{

  return sub_22C909F8C();
}

uint64_t sub_22C7F4484()
{

  return sub_22C90963C();
}

uint64_t sub_22C7F44A0()
{

  return sub_22C909FFC();
}

void sub_22C7F44FC(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v21 = *(*(a7 - 256) + 8);

  sub_22C7EDAF8(v19 - 160, v21, a1, a2, a3, a4, a5, a6, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19);
}

void sub_22C7F4594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v23 = *(v20 + 8);

  sub_22C7EDAF8(v21 - 160, v23, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_22C7F45AC()
{

  return swift_getEnumCaseMultiPayload();
}

void sub_22C7F45C4()
{

  JUMPOUT(0x2318B8B10);
}

uint64_t sub_22C7F45E0()
{

  return sub_22C7F42A8();
}

void sub_22C7F45FC()
{

  sub_22C4706F0();
}

void sub_22C7F4614()
{

  JUMPOUT(0x2318B8B10);
}

void sub_22C7F462C()
{

  JUMPOUT(0x2318B8B10);
}

void sub_22C7F4644()
{

  JUMPOUT(0x2318B8B10);
}

void sub_22C7F4674()
{

  JUMPOUT(0x2318B8B10);
}

void sub_22C7F468C()
{

  JUMPOUT(0x2318B8B10);
}

uint64_t sub_22C7F46B0()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t sub_22C7F46E0()
{

  return sub_22C909FFC();
}

void sub_22C7F46FC(uint64_t a1@<X8>)
{
  *(v1 - 256) = a1;

  JUMPOUT(0x2318B8B10);
}

uint64_t sub_22C7F4714@<X0>(void (*a1)(void)@<X1>, uint64_t a2@<X8>)
{
  v3 = *(a2 - 256);

  return sub_22C7F4300(v3, a1);
}

uint64_t sub_22C7F472C()
{
}

void sub_22C7F4768()
{

  JUMPOUT(0x2318B8B10);
}

uint64_t sub_22C7F4780(uint64_t a1)
{

  return sub_22C909F7C();
}

uint64_t sub_22C7F479C()
{

  return sub_22C909FFC();
}

void sub_22C7F47B4()
{

  JUMPOUT(0x2318B8B10);
}

uint64_t sub_22C7F47CC()
{
}

void sub_22C7F47E4()
{

  JUMPOUT(0x2318B8B10);
}

void sub_22C7F47FC()
{

  JUMPOUT(0x2318B8B10);
}

uint64_t sub_22C7F484C()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t sub_22C7F4864()
{
  sub_22C36FF94((v0 + 16));

  sub_22C36FF94((v0 + 64));
  return v0;
}

uint64_t sub_22C7F4894()
{
  sub_22C7F4864();

  return swift_deallocClassInstance();
}

uint64_t sub_22C7F48EC()
{
  sub_22C3B0E80();
  sub_22C7FDC08();
  sub_22C7FB64C(v6, v7, v8, v9, v10, v11, v12);
  sub_22C7FDD30();
  if (!v37)
  {
    if ((v2 & 0x8000000000000000) != 0)
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    sub_22C633A28();
    sub_22C37B448();
    if (v5)
    {
      sub_22C90B50C();
      sub_22C386898();
      v19 = swift_dynamicCastClass();
      if (!v19)
      {
        swift_unknownObjectRelease();
        v19 = MEMORY[0x277D84F90];
      }

      v20 = *(v19 + 16);

      if (__OFSUB__(v5 >> 1, v4))
      {
        goto LABEL_35;
      }

      if (v20 != (v5 >> 1) - v4)
      {
        goto LABEL_36;
      }

      v18 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      if (v18)
      {
        goto LABEL_12;
      }

      v18 = MEMORY[0x277D84F90];
      goto LABEL_11;
    }

    while (1)
    {
      v13 = sub_22C3759D0();
      sub_22C46FFFC(v13, v14, v15, v16);
      v18 = v17;
LABEL_11:
      swift_unknownObjectRelease();
LABEL_12:
      v42 = v18;
      if (v1 >= v2)
      {
        break;
      }

LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      swift_unknownObjectRelease();
    }

    sub_22C633A28();
    sub_22C7FDCA0();

    v21 = v18 >> 1;
    while (1)
    {
LABEL_14:
      if (v3 == v21)
      {
        swift_unknownObjectRelease();

        return sub_22C36BA00();
      }

      if (v3 >= v21)
      {
        __break(1u);
        goto LABEL_33;
      }

      v22 = (v2 + 16 * v3);
      v24 = *v22;
      v23 = v22[1];
      ++v3;
      v25 = *(v42 + 16);
      if (!v0)
      {
        break;
      }

      v26 = sub_22C371510();
      sub_22C7DA844(v26, v27, v28, v25, v29);
      v31 = v30;
      v33 = v32;

      if (v31)
      {
        goto LABEL_29;
      }

LABEL_30:
    }

    v34 = (v42 + 40);
    v35 = v25 + 1;
    while (--v35)
    {
      v36 = v34 + 2;
      v37 = *(v34 - 1) == v24 && *v34 == v23;
      if (!v37)
      {
        v38 = sub_22C90B4FC();
        v34 = v36;
        if ((v38 & 1) == 0)
        {
          continue;
        }
      }

      goto LABEL_14;
    }

    v33 = 0;
LABEL_29:
    v39 = sub_22C371510();
    sub_22C7D4160(v39, v40, v33);
    goto LABEL_30;
  }

  return sub_22C36BA00();
}

void sub_22C7F4B3C()
{
  sub_22C36BA7C();
  sub_22C369A48();
  sub_22C90644C();
  sub_22C369824();
  MEMORY[0x28223BE20](v7);
  sub_22C36993C();
  MEMORY[0x28223BE20](v8);
  sub_22C370404();
  sub_22C3B0E80();
  sub_22C7FDC08();
  sub_22C7FB714(v9, v10, v11, v12, v13, v14, v15, v16);
  sub_22C370A78();
  if (!v17)
  {
    if (v4 < 0)
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v18 = sub_22C380618();
    sub_22C606094(v18, v19, v20);
    sub_22C37B814();
    if (v6)
    {
      sub_22C7FDDB8(v21, v22, v23);
      v28 = sub_22C3745F8();
      if (!sub_22C7FDDA0(v28))
      {
        swift_unknownObjectRelease();
      }

      sub_22C37BC74();
      if (v36)
      {
        goto LABEL_32;
      }

      sub_22C7FDD04();
      if (!v17)
      {
        goto LABEL_33;
      }

      swift_dynamicCastClass();
      sub_22C7FDDD0();
      if (v6)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    while (1)
    {
      v24 = sub_22C37E804();
      sub_22C4700CC(v24, v25, v26, v27);
LABEL_11:
      swift_unknownObjectRelease();
LABEL_12:
      sub_22C7FDCF8();
      if (v29)
      {
        break;
      }

LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      swift_unknownObjectRelease();
      sub_22C7FDCC4();
    }

    v30 = sub_22C3855B8();
    v33 = sub_22C606094(v30, v31, v32);
    sub_22C380078(v33, v34);

    sub_22C38C134();
    while (1)
    {
      sub_22C386BD4();
      if (v17)
      {
        swift_unknownObjectRelease();

        goto LABEL_29;
      }

      if (v35 == v36)
      {
        __break(1u);
        goto LABEL_30;
      }

      v37 = sub_22C7FDBD0();
      v5(v37);
      sub_22C372E08();
      if (!v3)
      {
        break;
      }

      sub_22C7FDBF8();
      sub_22C7DA91C();
      sub_22C7FDC74();
      if (v0)
      {
        goto LABEL_26;
      }

LABEL_27:
      v42 = sub_22C36C494();
      v43(v42);
    }

    v3 = v2 + 1;
    while (--v3)
    {
      v38 = sub_22C37512C();
      v5(v38);
      v39 = sub_22C7FB604(&qword_27D9C02E0, MEMORY[0x277D1D8A0], MEMORY[0x277D1D8B0]);
      sub_22C36DB90(v39);
      v40 = sub_22C3892EC();
      v41(v40);
      v0 = v1;
      if (v2)
      {
        goto LABEL_27;
      }
    }

    v2 = 0;
LABEL_26:
    sub_22C37FB0C();
    sub_22C7D4268();
    goto LABEL_27;
  }

LABEL_29:
  sub_22C379B84();
  sub_22C36CC48();
}

uint64_t sub_22C7F4DE0(uint64_t a1)
{
  v4 = sub_22C3B0E80();
  v5 = sub_22C7FB714(&v24, a1, 0, 1, v4, type metadata accessor for _PromptToolData, sub_22C7FCD04, sub_22C7FBD94);
  v6 = *(a1 + 16);
  v7 = v24;
  if (v24 != v6)
  {
    if ((v24 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_16;
    }

    sub_22C6060AC(0, v24, a1);
    sub_22C37B448();
    if (v2)
    {
      sub_22C90B50C();
      sub_22C386898();
      v14 = swift_dynamicCastClass();
      if (!v14)
      {
        swift_unknownObjectRelease();
        v14 = MEMORY[0x277D84F90];
      }

      v15 = *(v14 + 16);

      if (__OFSUB__(v2 >> 1, v1))
      {
        goto LABEL_17;
      }

      if (v15 != (v2 >> 1) - v1)
      {
        goto LABEL_18;
      }

      v13 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      if (v13)
      {
        goto LABEL_12;
      }

      v13 = MEMORY[0x277D84F90];
      goto LABEL_11;
    }

    while (1)
    {
      v8 = sub_22C3759D0();
      sub_22C4700F8(v8, v9, v10, v11);
      v13 = v12;
LABEL_11:
      swift_unknownObjectRelease();
LABEL_12:
      v25 = v5;
      v26 = v13;
      if (v6 >= v7)
      {
        break;
      }

LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      swift_unknownObjectRelease();
    }

    v16 = sub_22C6060AC(v7, v6, a1);
    v18 = v17;
    v20 = v19;
    v22 = v21;

    sub_22C4A78F8(v16, v18, v20, v22);
    swift_unknownObjectRelease();

    return v25;
  }

  return v5;
}

void sub_22C7F4FB4()
{
  sub_22C36BA7C();
  sub_22C369A48();
  sub_22C90430C();
  sub_22C369824();
  MEMORY[0x28223BE20](v7);
  sub_22C36993C();
  MEMORY[0x28223BE20](v8);
  sub_22C370404();
  sub_22C3B0E80();
  sub_22C7FDC08();
  sub_22C7FB714(v9, v10, v11, v12, v13, v14, v15, v16);
  sub_22C370A78();
  if (!v17)
  {
    if (v4 < 0)
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v18 = sub_22C380618();
    sub_22C6060F4(v18, v19, v20);
    sub_22C37B814();
    if (v6)
    {
      sub_22C7FDDB8(v21, v22, v23);
      v28 = sub_22C3745F8();
      if (!sub_22C7FDDA0(v28))
      {
        swift_unknownObjectRelease();
      }

      sub_22C37BC74();
      if (v36)
      {
        goto LABEL_32;
      }

      sub_22C7FDD04();
      if (!v17)
      {
        goto LABEL_33;
      }

      swift_dynamicCastClass();
      sub_22C7FDDD0();
      if (v6)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    while (1)
    {
      v24 = sub_22C37E804();
      sub_22C470150(v24, v25, v26, v27);
LABEL_11:
      swift_unknownObjectRelease();
LABEL_12:
      sub_22C7FDCF8();
      if (v29)
      {
        break;
      }

LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      swift_unknownObjectRelease();
      sub_22C7FDCC4();
    }

    v30 = sub_22C3855B8();
    v33 = sub_22C6060F4(v30, v31, v32);
    sub_22C380078(v33, v34);

    sub_22C38C134();
    while (1)
    {
      sub_22C386BD4();
      if (v17)
      {
        swift_unknownObjectRelease();

        goto LABEL_29;
      }

      if (v35 == v36)
      {
        __break(1u);
        goto LABEL_30;
      }

      v37 = sub_22C7FDBD0();
      v5(v37);
      sub_22C372E08();
      if (!v3)
      {
        break;
      }

      sub_22C7FDBF8();
      sub_22C7DB73C();
      sub_22C7FDC74();
      if (v0)
      {
        goto LABEL_26;
      }

LABEL_27:
      v42 = sub_22C36C494();
      v43(v42);
    }

    v3 = v2 + 1;
    while (--v3)
    {
      v38 = sub_22C37512C();
      v5(v38);
      v39 = sub_22C7FB604(&qword_27D9BC808, MEMORY[0x277D85578], MEMORY[0x277D85590]);
      sub_22C36DB90(v39);
      v40 = sub_22C3892EC();
      v41(v40);
      v0 = v1;
      if (v2)
      {
        goto LABEL_27;
      }
    }

    v2 = 0;
LABEL_26:
    sub_22C37FB0C();
    sub_22C7D4BE0();
    goto LABEL_27;
  }

LABEL_29:
  sub_22C379B84();
  sub_22C36CC48();
}