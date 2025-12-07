uint64_t sub_232BB28D8()
{
  v2 = *(v0 + 144);

  v3 = *(v0 + 184);
  v5 = *(v0 + 144);
  v4 = *(v0 + 152);
  sub_232BB2CCC();
  sub_232B4A95C();
  sub_232B4ACD4();
  v6 = swift_allocError();
  *v7 = 0xD000000000000038;
  *(v7 + 8) = v1;
  *(v7 + 16) = 0;

  v8 = *(v0 + 8);

  return v8(v6, 1);
}

uint64_t sub_232BB2A24(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_232BB2AC0;

  return sub_232BB1E0C();
}

uint64_t sub_232BB2AC0(uint64_t a1, char a2)
{
  sub_232B26C70();
  v6 = *(v5 + 16);
  v7 = *v2;
  sub_232B26B3C();
  *v8 = v7;

  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  v9 = *(v7 + 8);

  return v9();
}

uint64_t sub_232BB2BD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_232B124A8(&qword_27DDC6F98, &unk_232CF7CA0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_232BB2C48()
{
  result = qword_27DDC6FB8;
  if (!qword_27DDC6FB8)
  {
    sub_232B27EEC(&qword_27DDC6FB0, &unk_232CF8840);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC6FB8);
  }

  return result;
}

uint64_t sub_232BB2CAC(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_232BB2D38(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F7250656C797473 && a2 == 0xEF73656974726570;
  if (v4 || (sub_232CEA750() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000015 && 0x8000000232D03FB0 == a2;
    if (v6 || (sub_232CEA750() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000013 && 0x8000000232D03E80 == a2;
      if (v7 || (sub_232CEA750() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x65676E6172 && a2 == 0xE500000000000000;
        if (v8 || (sub_232CEA750() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 1954047348 && a2 == 0xE400000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_232CEA750();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_232BB2EF0(unsigned __int8 a1)
{
  sub_232CEA820();
  MEMORY[0x2383925C0](a1);
  return sub_232CEA850();
}

unint64_t sub_232BB2F44(char a1)
{
  result = 0x6F7250656C797473;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000015;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0x65676E6172;
      break;
    case 4:
      result = 1954047348;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_232BB2FFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_232BB2D38(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_232BB3044@<X0>(_BYTE *a1@<X8>)
{
  result = sub_232BB2EE8();
  *a1 = result;
  return result;
}

uint64_t sub_232BB306C(uint64_t a1)
{
  v2 = sub_232BB6304();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_232BB30A8(uint64_t a1)
{
  v2 = sub_232BB6304();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_232BB30E4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_232B124A8(&qword_27DDC75F8, &unk_232CFA5D8);
  sub_232B48F0C();
  MEMORY[0x28223BE20](v5);
  sub_232B203C8(a1, a1[3]);
  sub_232BB6304();
  sub_232CEA870();
  if (v2)
  {
    return sub_232B2040C(a1);
  }

  sub_232B124A8(&qword_27DDC6908, &unk_232CF64D0);
  sub_232BB6358(&qword_27DDC7608, &qword_27DDC6908, &unk_232CF64D0);
  sub_232BB65C8();
  sub_232CEA6D0();
  sub_232B124A8(&qword_27DDC75C0, &qword_232CFCB20);
  sub_232BB6358(&qword_27DDC7610, &qword_27DDC75C0, &qword_232CFCB20);
  sub_232BB6618();
  sub_232CEA690();
  sub_232BB65C8();
  sub_232CEA6D0();
  sub_232BB6618();
  sub_232CEA6D0();
  v6 = sub_232CEA6A0();
  v8 = v7;
  v9 = sub_232BB65B8();
  v10(v9);
  result = sub_232B2040C(a1);
  *a2 = v12;
  a2[1] = v12;
  a2[2] = v12;
  a2[3] = v12;
  a2[4] = v6;
  a2[5] = v8;
  return result;
}

double sub_232BB3440@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_232BB30E4(a1, v6);
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

id sub_232BB3484()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 16);
  }

  else
  {
    v3 = [objc_allocWithZone(PageContentFetcher) init];
    v4 = *(v0 + 16);
    *(v0 + 16) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t sub_232BB34F0@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for DUFoundInEventHTMLPreprocessingSpecification();
  result = swift_allocObject();
  a1[3] = v2;
  a1[4] = &off_281931E60;
  *a1 = result;
  return result;
}

void sub_232BB3538(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_232C237B8(v3);
    v3 = v10;
  }

  v4 = v3[2];
  if (!v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = v3[4];
  v6 = __OFADD__(v5, a2);
  v7 = v5 + a2;
  if (v6)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3[4] = v7;
  if (v4 == 1)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = v3[5];
  v6 = __OFADD__(v8, a2);
  v9 = v8 + a2;
  if (!v6)
  {
    v3[5] = v9;
    return;
  }

LABEL_11:
  __break(1u);
}

char *sub_232BB35C0(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(type metadata accessor for DUDocumentUIElement()) init];
  v5 = (a1 + OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_headline);
  sub_232B13F74(v5, v20);
  v7 = *v5;
  v6 = v5[1];
  v8 = &v4[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_text];
  sub_232B13F5C(&v4[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_text], v19);
  *v8 = v7;
  *(v8 + 1) = v6;

  v9 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_superviewClassNames;
  sub_232B13F5C(&v4[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_superviewClassNames], v18);
  *&v4[v9] = &unk_28480CE58;

  v10 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_superviewClassIndices;
  sub_232B13F5C(&v4[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_superviewClassIndices], v17);
  *&v4[v10] = &unk_28480CE88;

  v11 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_styleProperties;
  sub_232B13F5C(&v4[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_styleProperties], v16);
  *&v4[v11] = MEMORY[0x277D84F90];

  sub_232B124A8(&qword_27DDC6B80, &qword_232CF89B0);
  result = swift_allocObject();
  *(result + 1) = xmmword_232CF5E60;
  *(result + 4) = 0;
  if (__OFSUB__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    v13 = result;
    *(result + 5) = a2 - 1;
    v14 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_range;
    sub_232B13F5C(&v4[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_range], &v15);
    *&v4[v14] = v13;

    return v4;
  }

  return result;
}

uint64_t sub_232BB375C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v27 = a5;
  v28 = a6;
  v11 = sub_232CE9AA0();
  sub_232B48F0C();
  v31 = v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_232CE9AD0();
  sub_232B48F0C();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_232BB6128();
  v29 = sub_232CEA230();
  v21 = swift_allocObject();
  v21[2] = v6;
  v21[3] = a1;
  v21[4] = a2;
  v21[5] = a3;
  v22 = v27;
  v21[6] = a4;
  v21[7] = v22;
  v21[8] = v28;
  aBlock[4] = sub_232BB616C;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_232BB4000;
  aBlock[3] = &unk_284811C00;
  v23 = _Block_copy(aBlock);

  sub_232CE9AC0();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_232BB6198();
  sub_232B124A8(&qword_27DDC75E8, qword_232CFA540);
  sub_232BB61F0();
  sub_232CEA440();
  v24 = v29;
  MEMORY[0x238391FD0](0, v20, v15, v23);
  _Block_release(v23);

  (*(v31 + 8))(v15, v11);
  return (*(v17 + 8))(v20, v30);
}

void sub_232BB3A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = sub_232BB3484();
  v10 = sub_232CE9D20();
  v11 = sub_232CE9D20();
  v12 = swift_allocObject();
  *(v12 + 16) = a6;
  *(v12 + 24) = a7;
  v14[4] = sub_232BB6254;
  v14[5] = v12;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_232BB4044;
  v14[3] = &unk_284811C50;
  v13 = _Block_copy(v14);

  [v9 runJavaScriptOnHTML:v10 javaScript:v11 completionHandler:v13];
  _Block_release(v13);
}

uint64_t sub_232BB3B54(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v39 = a1;
  v7 = sub_232CE9AA0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_232CE9AD0();
  v40 = *(v11 - 8);
  v41 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_232CE9A30();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v37 = a3;
    v38 = v8;
    v18 = a2;
    sub_232CE9A20();
    v19 = a2;
    v20 = sub_232CE9A00();
    v21 = sub_232CEA1C0();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v35 = a4;
      v23 = v22;
      v24 = swift_slowAlloc();
      v36 = v7;
      v25 = v24;
      *v23 = 138412290;
      v26 = a2;
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 4) = v27;
      *v25 = v27;
      _os_log_impl(&dword_232B02000, v20, v21, "Error evaluating Javascript: %@", v23, 0xCu);
      sub_232BA4D50(v25, &qword_27DDC6FD0, &unk_232CFA240);
      v28 = v25;
      v7 = v36;
      MEMORY[0x238393870](v28, -1, -1);
      v29 = v23;
      a4 = v35;
      MEMORY[0x238393870](v29, -1, -1);
    }

    else
    {
    }

    (*(v15 + 8))(v17, v14);
    a3 = v37;
    v8 = v38;
  }

  sub_232BB6128();
  v30 = sub_232CEA230();
  v31 = swift_allocObject();
  v31[2] = a3;
  v31[3] = a4;
  v31[4] = v39;
  aBlock[4] = sub_232BB625C;
  aBlock[5] = v31;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_232BB4000;
  aBlock[3] = &unk_284811CA0;
  v32 = _Block_copy(aBlock);

  sub_232CE9AC0();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_232BB6198();
  sub_232B124A8(&qword_27DDC75E8, qword_232CFA540);
  sub_232BB61F0();
  sub_232CEA440();
  MEMORY[0x238391FD0](0, v13, v10, v32);
  _Block_release(v32);

  (*(v8 + 8))(v10, v7);
  return (*(v40 + 8))(v13, v41);
}

uint64_t sub_232BB3F9C(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_232BC2D04(a3);
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  a1(v5);
}

uint64_t sub_232BB4000(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_232BB4044(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_232CE9C40();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

uint64_t sub_232BB40F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return sub_232B512BC();
}

uint64_t sub_232BB410C()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v8 = *(v0 + 32);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  *(v4 + 32) = v8;
  *(v4 + 48) = v2;
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  v6 = sub_232B124A8(&qword_27DDC75C8, &qword_232CFA530);
  *v5 = v0;
  v5[1] = sub_232BB4234;

  return MEMORY[0x2822007B8](v0 + 16, 0, 0, 0xD00000000000001CLL, 0x8000000232D064F0, sub_232BB609C, v4, v6);
}

uint64_t sub_232BB4234()
{
  sub_232B26C44();
  v1 = *v0;
  sub_232B26B3C();
  *v2 = v1;

  return MEMORY[0x2822009F8](sub_232BB4340, 0, 0);
}

uint64_t sub_232BB4358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v19 = a6;
  v10 = sub_232B124A8(&qword_27DDC75D0, &qword_232CFA538);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v18 - v13;
  (*(v11 + 16))(&v18 - v13, a1, v10, v12);
  v15 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v16 = swift_allocObject();
  (*(v11 + 32))(v16 + v15, v14, v10);
  sub_232BB375C(a3, a4, a5, v19, sub_232BB60AC, v16);
}

uint64_t sub_232BB44CC(uint64_t a1)
{

  sub_232B124A8(&qword_27DDC75D0, &qword_232CFA538);
  return sub_232CEA060();
}

uint64_t sub_232BB451C()
{
  sub_232B26C44();
  v1[75] = v0;
  v1[74] = v2;
  v3 = sub_232CE9A30();
  v1[76] = v3;
  v1[77] = *(v3 - 8);
  v1[78] = swift_task_alloc();
  v1[79] = swift_task_alloc();
  v4 = sub_232CE9DA0();
  v1[80] = v4;
  v1[81] = *(v4 - 8);
  v1[82] = swift_task_alloc();
  v1[83] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232BB467C, 0, 0);
}

uint64_t sub_232BB467C()
{
  v1 = v0[74];
  v2 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_documentHTMLData;
  sub_232B13F5C(v1 + OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_documentHTMLData, (v0 + 32));
  v3 = *(v1 + v2);
  v0[84] = v3;
  if (v3)
  {
    v4 = &v3[OBJC_IVAR____TtC21DocumentUnderstanding18DUDocumentHTMLData_htmlString];
    sub_232B13F74(&v3[OBJC_IVAR____TtC21DocumentUnderstanding18DUDocumentHTMLData_htmlString], (v0 + 35));
    v5 = *v4;
    v6 = v4[1];
    v0[85] = v6;
    if (v6)
    {
      v7 = OBJC_IVAR____TtC21DocumentUnderstanding18DUDocumentHTMLData_documentEmailData;
      sub_232B13F74(&v3[OBJC_IVAR____TtC21DocumentUnderstanding18DUDocumentHTMLData_documentEmailData], (v0 + 38));
      v8 = *&v3[v7];
      v0[86] = v8;
      if (v8)
      {
        v9 = v5;
        v10 = objc_allocWithZone(type metadata accessor for DUDocumentHTMLData());
        v11 = v8;
        v39 = v3;

        v12 = [v10 init];
        v0[87] = v12;
        v13 = &v12[OBJC_IVAR____TtC21DocumentUnderstanding18DUDocumentHTMLData_htmlString];
        sub_232B13F5C(&v12[OBJC_IVAR____TtC21DocumentUnderstanding18DUDocumentHTMLData_htmlString], (v0 + 41));
        v40 = v9;
        *v13 = v9;
        v13[1] = v6;
        v38 = v6;

        v14 = OBJC_IVAR____TtC21DocumentUnderstanding18DUDocumentHTMLData_documentEmailData;
        sub_232B13F5C(&v12[OBJC_IVAR____TtC21DocumentUnderstanding18DUDocumentHTMLData_documentEmailData], (v0 + 44));
        v15 = *&v12[v14];
        *&v12[v14] = v8;
        v16 = v11;

        v17 = *(v1 + v2);
        *(v1 + v2) = v3;
        v18 = v39;

        type metadata accessor for DUFoundInEventHTMLPreprocessingImplementation();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v20 = [objc_opt_self() bundleForClass_];
        v0[88] = v20;
        sub_232BD8000(0xD000000000000010, 0x8000000232D06410, 29546, 0xE200000000000000, v20);
        if (v21)
        {
          sub_232CE9D90();
          sub_232BB6644();
          v34 = sub_232CE9D10();
          v36 = v35;
        }

        else
        {
          sub_232CE9A20();
          v27 = sub_232CE9A00();
          v28 = sub_232CEA1C0();
          v29 = os_log_type_enabled(v27, v28);
          v30 = v0[78];
          v31 = v0[77];
          v32 = v0[76];
          if (v29)
          {
            v33 = swift_slowAlloc();
            *v33 = 0;
            _os_log_impl(&dword_232B02000, v27, v28, "Error accessing file", v33, 2u);
            MEMORY[0x238393870](v33, -1, -1);
          }

          (*(v31 + 8))(v30, v32);
          v34 = 0;
          v36 = 0xE000000000000000;
        }

        v0[90] = v36;
        v0[89] = 0;
        v37 = swift_task_alloc();
        v0[91] = v37;
        *v37 = v0;
        v37[1] = sub_232BB4C08;

        return sub_232BB40F0(v40, v38, v34, v36);
      }

      v22 = 0x8000000232D063F0;
      sub_232B4A95C();
      sub_232B4EC24(&type metadata for DUProcessingPhaseImplementationBaseError);
      v24 = 0xD00000000000001BLL;
    }

    else
    {
      v22 = 0x8000000232D063D0;
      sub_232B4A95C();
      sub_232B4EC24(&type metadata for DUProcessingPhaseImplementationBaseError);
      v24 = 0xD00000000000001CLL;
    }
  }

  else
  {
    v22 = 0x8000000232D063B0;
    sub_232B4A95C();
    sub_232B4EC24(&type metadata for DUProcessingPhaseImplementationBaseError);
    v24 = 0xD00000000000001ELL;
  }

  *v23 = v24;
  *(v23 + 8) = v22;
  *(v23 + 16) = 0;
  swift_willThrow();
  sub_232BB6650();

  v25 = v0[1];

  return v25();
}

uint64_t sub_232BB4C08()
{
  sub_232B26C7C();
  v1 = *v0;
  sub_232B26B3C();
  *v2 = v1;
  *(v4 + 736) = v3;

  return MEMORY[0x2822009F8](sub_232BB4D6C, 0, 0);
}

uint64_t sub_232BB4D6C()
{
  v1 = *(v0 + 736);
  if (!v1)
  {
    *(v0 + 112) = 0u;
    *(v0 + 128) = 0u;
    goto LABEL_10;
  }

  sub_232B1E16C(1954047348, 0xE400000000000000, v1);

  if (!*(v0 + 136))
  {
LABEL_10:
    sub_232BA4D50(v0 + 112, &qword_27DDC68C8, &qword_232CF6210);
    v3 = 0;
    v4 = 0;
    goto LABEL_11;
  }

  v2 = swift_dynamicCast();
  if (v2)
  {
    v3 = *(v0 + 520);
  }

  else
  {
    v3 = 0;
  }

  if (v2)
  {
    v4 = *(v0 + 528);
  }

  else
  {
    v4 = 0;
  }

LABEL_11:
  v5 = *(v0 + 592);
  v6 = (v5 + OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_text);
  sub_232B13F5C(v5 + OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_text, v0 + 376);
  *v6 = v3;
  v6[1] = v4;

  v7 = (v5 + OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_headline);
  sub_232B13F74(v5 + OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_headline, v0 + 400);
  v8 = v7[1];
  v92 = v8;
  if (!v8)
  {
    v90 = 0;
    if (v1)
    {
      goto LABEL_20;
    }

LABEL_36:
    *(v0 + 144) = 0u;
    *(v0 + 160) = 0u;
    goto LABEL_37;
  }

  v9 = *v7;

  v10 = sub_232CE9E60();
  v90 = v10 + 1;
  if (__OFADD__(v10, 1))
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v100 = v9;
  v101 = v8;

  MEMORY[0x238391C30](32, 0xE100000000000000);

  v11 = v6[1];
  if (v11)
  {
    v12 = *v6;
  }

  else
  {
    v12 = 0;
  }

  if (v11)
  {
    v13 = v6[1];
  }

  else
  {
    v13 = 0xE000000000000000;
  }

  MEMORY[0x238391C30](v12, v13);

  *v6 = v9;
  v6[1] = v8;

  if (!v1)
  {
    goto LABEL_36;
  }

LABEL_20:
  sub_232B1E16C(0xD000000000000012, 0x8000000232D03580, *(v0 + 736));

  if (!*(v0 + 168))
  {
LABEL_37:
    sub_232BA4D50(v0 + 144, &qword_27DDC68C8, &qword_232CF6210);
    goto LABEL_38;
  }

  sub_232B124A8(&qword_27DDC75A8, &qword_232CFA518);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_38:
    v48 = *(v0 + 704);
    v49 = *(v0 + 696);
    v50 = *(v0 + 688);
    v51 = *(v0 + 672);
    sub_232B4A95C();
    sub_232B4EC24(&type metadata for DUProcessingPhaseImplementationBaseError);
    *v52 = 0xD000000000000044;
    *(v52 + 8) = 0x8000000232D06430;
    *(v52 + 16) = 0;
    swift_willThrow();

    goto LABEL_39;
  }

  v14 = 0;
  v15 = MEMORY[0x277D84F90];
  v16 = *(v0 + 552);
  v99 = MEMORY[0x277D84F90];
  v88 = *(v16 + 16);
  v89 = v16;
  v17 = v16 + 32;
  v87 = (*(v0 + 648) + 8);
  v18 = *(v0 + 712);
  v19 = v8;
  while (1)
  {
    if (v88 == v14)
    {

      if (v19)
      {
        v63 = sub_232BB35C0(*(v0 + 592), v90);
        sub_232BB5E3C(0, v15);
        if (sub_232B25E10(v15) < 0)
        {
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
        }

        if (__OFADD__(sub_232B26B10(), 1))
        {
          goto LABEL_57;
        }

        sub_232C61858();
        sub_232BB5E94(0, 0, 1, v63);
        v64 = v99;
      }

      else
      {
        v64 = v15;
      }

      v78 = *(v0 + 704);
      v79 = *(v0 + 696);
      v80 = *(v0 + 688);
      v81 = *(v0 + 672);
      v82 = *(v0 + 592);
      v83 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_documentUIElements;
      sub_232B13F5C(&v82[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_documentUIElements], v0 + 232);
      *&v82[v83] = v64;

      v84 = objc_allocWithZone(type metadata accessor for DUDocument());
      v85 = DUDocument.init(rawDocument:maxLength:)(v82, 100000);

      v86 = *(v0 + 8);

      return v86(v85);
    }

    if (v14 >= *(v89 + 16))
    {
      __break(1u);
      goto LABEL_55;
    }

    sub_232B204B4(v17, v0 + 176);
    v20 = objc_opt_self();
    sub_232B203C8((v0 + 176), *(v0 + 200));
    v21 = sub_232CEA740();
    *(v0 + 568) = 0;
    v22 = [v20 dataWithJSONObject:v21 options:1 error:v0 + 568];
    swift_unknownObjectRelease();
    v23 = *(v0 + 568);
    if (!v22)
    {
      v65 = *(v0 + 704);
      v66 = *(v0 + 696);
      v67 = *(v0 + 688);
      v68 = *(v0 + 672);
      v69 = v23;

      v70 = sub_232CE8B30();

      swift_willThrow();

      sub_232BB6608();
      sub_232CEA4F0();
      *(v0 + 536) = v100;
      *(v0 + 544) = v101;
      MEMORY[0x238391C30](0xD000000000000014, 0x8000000232D06480);
      sub_232CEA5B0();
      MEMORY[0x238391C30](0x4E4F534A20736120, 0xED00006174616420);
      sub_232B4A95C();
      v71 = sub_232B4EC24(&type metadata for DUProcessingPhaseImplementationBaseError);
      sub_232BB65E8(v71, v72);

      goto LABEL_49;
    }

    v93 = v14;
    v95 = v17;
    v24 = v23;
    v25 = sub_232CE8C80();
    v27 = v26;

    sub_232CE9D90();
    v98 = v25;
    sub_232CE9D70();
    if (!v28 || (v29 = *(v0 + 656), v30 = *(v0 + 640), sub_232CE9D90(), v31 = sub_232CE9D60(), v33 = v32, , (*v87)(v29, v30), v33 >> 60 == 15))
    {
      v55 = *(v0 + 704);
      v56 = *(v0 + 696);
      v57 = *(v0 + 688);
      v96 = *(v0 + 672);

      sub_232BB6608();
      sub_232CEA4F0();

      sub_232BB6630();
      sub_232BB6644();
      v58 = sub_232CE8C30();
      MEMORY[0x238391C30](v58);

      sub_232B4A95C();
      v59 = sub_232B4EC24(&type metadata for DUProcessingPhaseImplementationBaseError);
      sub_232BB65E8(v59, v60);

      v61 = sub_232BB6644();
      sub_232B41BEC(v61, v62);

      goto LABEL_49;
    }

    sub_232CE8940();
    swift_allocObject();
    sub_232CE8930();
    sub_232BB5FC4();
    sub_232CE8920();
    if (v18)
    {
      break;
    }

    v91 = v27;

    v34 = *(v0 + 80);
    *(v0 + 16) = *(v0 + 64);
    *(v0 + 32) = v34;
    *(v0 + 48) = *(v0 + 96);
    v35 = [objc_allocWithZone(type metadata accessor for DUDocumentUIElement()) init];
    v37 = *(v0 + 48);
    v36 = *(v0 + 56);
    v38 = &v35[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_text];
    sub_232B13F5C(&v35[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_text], v0 + 448);
    *v38 = v37;
    *(v38 + 1) = v36;

    v39 = *(v0 + 32);
    v40 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_superviewClassNames;
    sub_232B13F5C(&v35[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_superviewClassNames], v0 + 472);
    *&v35[v40] = v39;

    *(v0 + 576) = *(v0 + 24);
    v41 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_superviewClassIndices;
    sub_232B13F5C(&v35[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_superviewClassIndices], v0 + 496);
    *&v35[v41] = *(v0 + 576);
    sub_232BB602C(v0 + 576, v0 + 560);

    v42 = *(v0 + 16);
    v43 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_styleProperties;
    sub_232B13F5C(&v35[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_styleProperties], v0 + 208);
    *&v35[v43] = v42;
    v19 = v92;

    if (v92)
    {
      sub_232BB3538(v0 + 16, v90);
      v45 = v44;

      sub_232BA4D50(v0 + 576, &qword_27DDC75B8, &unk_232CFA520);

      *(v0 + 584) = *(v0 + 40);
      sub_232BA4D50(v0 + 584, &qword_27DDC75C0, &qword_232CFCB20);
    }

    else
    {
      v45 = *(v0 + 40);

      sub_232BA4D50(v0 + 576, &qword_27DDC75B8, &unk_232CFA520);
    }

    v46 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_range;
    sub_232B13F5C(&v35[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_range], v0 + 424);
    *&v35[v46] = v45;

    v47 = v35;
    MEMORY[0x238391D50]();
    if (*((v99 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v99 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_232CEA000();
    }

    sub_232CEA020();
    sub_232BB6018(v31, v33);
    sub_232B41BEC(v98, v91);

    v15 = v99;
    sub_232B2040C((v0 + 176));
    v18 = 0;
    v17 = v95 + 32;
    v14 = v93 + 1;
  }

  v73 = *(v0 + 704);
  v74 = *(v0 + 688);
  v94 = *(v0 + 696);
  v97 = *(v0 + 672);

  sub_232BB6608();
  sub_232CEA4F0();

  sub_232BB6630();
  v75 = sub_232CE8C30();
  MEMORY[0x238391C30](v75);

  sub_232B4A95C();
  v76 = sub_232B4EC24(&type metadata for DUProcessingPhaseImplementationBaseError);
  sub_232BB65E8(v76, v77);

  sub_232BB6018(v31, v33);
  sub_232B41BEC(v25, v27);

LABEL_49:
  sub_232B2040C((v0 + 176));
LABEL_39:
  sub_232BB6650();

  v53 = *(v0 + 8);

  return v53();
}

uint64_t sub_232BB58E0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_232B512BC();
}

uint64_t sub_232BB58F4()
{
  sub_232B26C7C();
  v1 = *(v0[2] + 24);
  if (v1 && (v2 = v1, v3 = sub_232B591FC(), v0[4] = v3, v2, v3))
  {
    v4 = swift_task_alloc();
    v0[5] = v4;
    *v4 = v0;
    v4[1] = sub_232BB5A24;

    return sub_232BB451C();
  }

  else
  {
    sub_232B4A95C();
    v6 = sub_232B4EC24(&type metadata for DUProcessingPhaseImplementationBaseError);
    *v7 = 0xD000000000000024;
    *(v7 + 8) = 0x8000000232D06380;
    *(v7 + 16) = 0;
    v8 = v0[1];

    return v8(v6, 1);
  }
}

uint64_t sub_232BB5A24()
{
  sub_232B26C7C();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  sub_232B26B3C();
  *v6 = v5;
  *(v4 + 48) = v0;

  if (v0)
  {
    v7 = sub_232BB5BA4;
  }

  else
  {
    *(v4 + 56) = v3;
    v7 = sub_232BB5B40;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_232BB5B40()
{
  sub_232B26C44();

  v1 = *(v0 + 56);
  v2 = *(v0 + 8);

  return v2(v1, 0);
}

uint64_t sub_232BB5BA4()
{
  sub_232B26C44();

  v1 = *(v0 + 48);
  v2 = *(v0 + 8);

  return v2(v1, 1);
}

uint64_t sub_232BB5C08()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_232BB5C88(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_232BB5D24;

  return sub_232BB58E0(a2);
}

uint64_t sub_232BB5D24()
{
  sub_232B26C7C();
  v2 = v1;
  v4 = v3;
  v5 = *(*v0 + 16);
  v6 = *v0;
  sub_232B26B3C();
  *v7 = v6;

  *v5 = v4;
  *(v5 + 8) = v2 & 1;
  v8 = *(v6 + 8);

  return v8();
}

uint64_t sub_232BB5E3C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    result = sub_232CEA610();
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < a1)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1 < 0)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

void sub_232BB5E94(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v4 = a3;
  v6 = a2;
  v15 = a4;
  v11 = *v5;
  v7 = *v5 & 0xFFFFFFFFFFFFFF8;
  v8 = v7 + 32;
  v5 = (v7 + 32 + 8 * a1);
  type metadata accessor for DUDocumentUIElement();
  swift_arrayDestroy();
  v12 = __OFSUB__(v4, v10);
  v10 = v4 - v10;
  if (v12)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (!v10)
  {
    goto LABEL_12;
  }

  v9 = v11 >> 62;
  if (!(v11 >> 62))
  {
    v13 = *(v7 + 16);
    goto LABEL_6;
  }

LABEL_20:
  v13 = sub_232CEA610();
LABEL_6:
  if (__OFSUB__(v13, v6))
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  sub_232B37A20(v8 + 8 * v6, &v13[-v6], &v5[v4]);
  if (v9)
  {
    v13 = sub_232CEA610();
  }

  else
  {
    v13 = *(v7 + 16);
  }

  if (__OFADD__(v13, v10))
  {
    goto LABEL_22;
  }

  *(v7 + 16) = &v13[v10];
LABEL_12:
  v13 = v15;
  if (v4 >= 1)
  {
    *v5 = v15;
    if (v4 == 1)
    {
      return;
    }

LABEL_23:
    v14 = v13;
    __break(1u);
    return;
  }
}

unint64_t sub_232BB5FC4()
{
  result = qword_27DDC75B0;
  if (!qword_27DDC75B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC75B0);
  }

  return result;
}

uint64_t sub_232BB6018(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_232B41BEC(result, a2);
  }

  return result;
}

uint64_t sub_232BB602C(uint64_t a1, uint64_t a2)
{
  v4 = sub_232B124A8(&qword_27DDC75B8, &unk_232CFA520);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_232BB60AC(uint64_t a1)
{
  sub_232B124A8(&qword_27DDC75D0, &qword_232CFA538);

  return sub_232BB44CC(a1);
}

unint64_t sub_232BB6128()
{
  result = qword_27DDC75D8;
  if (!qword_27DDC75D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DDC75D8);
  }

  return result;
}

uint64_t sub_232BB6180(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_232BB6198()
{
  result = qword_27DDC75E0;
  if (!qword_27DDC75E0)
  {
    sub_232CE9AA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC75E0);
  }

  return result;
}

unint64_t sub_232BB61F0()
{
  result = qword_27DDC75F0;
  if (!qword_27DDC75F0)
  {
    sub_232B27EEC(&qword_27DDC75E8, qword_232CFA540);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC75F0);
  }

  return result;
}

uint64_t sub_232BB6268(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_232BB62A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_232BB6304()
{
  result = qword_27DDC7600;
  if (!qword_27DDC7600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7600);
  }

  return result;
}

uint64_t sub_232BB6358(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_232B27EEC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DUDocumentFoundInUIElements.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_232BB64A0()
{
  result = qword_27DDC7618;
  if (!qword_27DDC7618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7618);
  }

  return result;
}

unint64_t sub_232BB64F8()
{
  result = qword_27DDC7620;
  if (!qword_27DDC7620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7620);
  }

  return result;
}

unint64_t sub_232BB6550()
{
  result = qword_27DDC7628;
  if (!qword_27DDC7628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7628);
  }

  return result;
}

uint64_t sub_232BB65E8(uint64_t a1, uint64_t a2)
{
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = 0;

  return swift_willThrow();
}

uint64_t sub_232BB6650()
{
}

uint64_t static DUFoundInEventLLMImplementationError.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = a2[1];
  v7 = *(a2 + 16);
  switch(v4)
  {
    case 1u:
      if (v7 != 1)
      {
        goto LABEL_84;
      }

      if (v3 != v6 || v2 != v5)
      {
        v33 = sub_232B5EFF4();
        v10 = sub_232BB7D84(v33, v34);
        v35 = sub_232BAE188();
        v37 = sub_232BB7D68(v35, v36, 1u);
        v39 = sub_232BB7D68(v37, v38, 1u);
        sub_232BB6A10(v39, v40, 1u);
        v17 = sub_232BAE188();
        v19 = 1;
        goto LABEL_27;
      }

      v48 = 1;
      v49 = sub_232B5EFF4();
      v51 = sub_232BB7D68(v49, v50, 1u);
      v53 = sub_232BB7D68(v51, v52, 1u);
      sub_232BB6A10(v53, v54, 1u);
      v55 = sub_232B5EFF4();
      v57 = 1;
LABEL_30:
      sub_232BB6A10(v55, v56, v57);
      return v48;
    case 2u:
      if (v7 != 2)
      {
        goto LABEL_84;
      }

      v20 = *a1;
      if (v3 != v6 || v2 != v5)
      {
        v10 = sub_232BB7D84(v20, v2);
        v22 = sub_232BAE188();
        v24 = sub_232BB7D68(v22, v23, 2u);
        v26 = sub_232BB7D68(v24, v25, 2u);
        sub_232BB6A10(v26, v27, 2u);
        v17 = sub_232BAE188();
        v19 = 2;
        goto LABEL_27;
      }

      v42 = sub_232BB7D68(v20, v2, 2u);
      v44 = sub_232BB7D68(v42, v43, 2u);
      sub_232BB6A10(v44, v45, 2u);
      v31 = sub_232B5EFF4();
      v47 = 2;
      goto LABEL_87;
    case 3u:
      switch(v3)
      {
        case 1:
          if (v7 != 3 || v6 != 1 || v5 != 0)
          {
            goto LABEL_84;
          }

          v76 = sub_232B5EFF4();
          sub_232BB6A10(v76, v77, 3u);
          v48 = 1;
          v55 = 1;
          v56 = 0;
          v57 = 3;
          goto LABEL_30;
        case 2:
          if (v7 != 3 || v6 != 2 || v5 != 0)
          {
            goto LABEL_84;
          }

          v68 = sub_232B5EFF4();
          sub_232BB6A10(v68, v69, 3u);
          v31 = 2;
          break;
        case 3:
          if (v7 != 3 || v6 != 3 || v5 != 0)
          {
            goto LABEL_84;
          }

          v72 = sub_232B5EFF4();
          sub_232BB6A10(v72, v73, 3u);
          v31 = 3;
          break;
        case 4:
          if (v7 != 3 || v6 != 4 || v5 != 0)
          {
            goto LABEL_84;
          }

          v64 = sub_232B5EFF4();
          sub_232BB6A10(v64, v65, 3u);
          v31 = 4;
          break;
        case 5:
          if (v7 != 3 || v6 != 5 || v5 != 0)
          {
            goto LABEL_84;
          }

          v80 = sub_232B5EFF4();
          sub_232BB6A10(v80, v81, 3u);
          v31 = 5;
          break;
        case 6:
          if (v7 != 3 || v6 != 6 || v5 != 0)
          {
            goto LABEL_84;
          }

          v92 = sub_232B5EFF4();
          sub_232BB6A10(v92, v93, 3u);
          v31 = 6;
          break;
        default:
          if (v7 != 3 || (v5 | v6) != 0)
          {
            goto LABEL_84;
          }

          v29 = sub_232B5EFF4();
          sub_232BB6A10(v29, v30, 3u);
          v31 = 0;
          break;
      }

      v46 = 0;
      v47 = 3;
      goto LABEL_87;
    default:
      if (*(a2 + 16))
      {
LABEL_84:
        v84 = sub_232BAE188();
        v86 = sub_232BB7D68(v84, v85, v7);
        v88 = sub_232BB7D68(v86, v87, v4);
        sub_232BB6A10(v88, v89, v4);
        v90 = sub_232BAE188();
        sub_232BB6A10(v90, v91, v7);
        return 0;
      }

      v8 = *a1;
      if (v3 == v6 && v2 == v5)
      {
        v58 = sub_232BB7D68(v8, v2, 0);
        v60 = sub_232BB7D68(v58, v59, 0);
        sub_232BB6A10(v60, v61, 0);
        v31 = sub_232B5EFF4();
        v47 = 0;
LABEL_87:
        sub_232BB6A10(v31, v46, v47);
        return 1;
      }

      v10 = sub_232BB7D84(v8, v2);
      v11 = sub_232BAE188();
      v13 = sub_232BB7D68(v11, v12, 0);
      v15 = sub_232BB7D68(v13, v14, 0);
      sub_232BB6A10(v15, v16, 0);
      v17 = sub_232BAE188();
      v19 = 0;
LABEL_27:
      sub_232BB6A10(v17, v18, v19);
      return v10 & 1;
  }
}

double sub_232BB69F8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t sub_232BB6A10(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t sub_232BB6A2C(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 160) = a3;
  *(v4 + 16) = a1;
  sub_232B124A8(&qword_27DDC7398, &unk_232CF9070);
  *(v4 + 40) = swift_task_alloc();
  v5 = sub_232CE8E10();
  *(v4 + 48) = v5;
  *(v4 + 56) = *(v5 - 8);
  *(v4 + 64) = swift_task_alloc();
  *(v4 + 72) = swift_task_alloc();
  v6 = sub_232CE9A30();
  *(v4 + 80) = v6;
  *(v4 + 88) = *(v6 - 8);
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 104) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232BB6BA0, 0, 0);
}

uint64_t sub_232BB6BA0()
{
  v49 = v0;
  sub_232CE9810();
  if (sub_232CE97C0())
  {
    v1 = DULLMInput.constructModelInput()();
    countAndFlagsBits = v1._countAndFlagsBits;
    object = v1._object;
    *(v0 + 112) = v1._object;
    sub_232CE9A20();

    v4 = sub_232CE9A00();
    v5 = sub_232CEA1B0();

    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 104);
    v9 = *(v0 + 80);
    v8 = *(v0 + 88);
    if (v6)
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v48[0] = v11;
      *v10 = 136642819;
      *(v10 + 4) = sub_232BAD2D4(v1._countAndFlagsBits, v1._object, v48);
      _os_log_impl(&dword_232B02000, v4, v5, "DUFoundInEventLLMImplementation: calling LLM extraction with %{sensitive}s", v10, 0xCu);
      sub_232B2040C(v11);
      sub_232BA6A84();
      sub_232BA6A84();
    }

    v46 = *(v8 + 8);
    v46(v7, v9);
    v13 = *(v0 + 64);
    v12 = *(v0 + 72);
    v15 = *(v0 + 48);
    v14 = *(v0 + 56);
    type metadata accessor for DUFoundInEventLLMImplementation();
    sub_232BB7438();
    sub_232CE9A20();
    v47 = *(v14 + 16);
    v47(v13, v12, v15);
    v16 = sub_232CE9A00();
    v17 = sub_232CEA1B0();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 96);
    v20 = *(v0 + 80);
    v21 = *(v0 + 56);
    if (v18)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v48[0] = v23;
      *v22 = 136315138;
      sub_232BB7C34();
      v44 = v19;
      v45 = v20;
      v24 = sub_232CEA720();
      v26 = v25;
      v43 = v17;
      v27 = *(v21 + 8);
      v28 = sub_232B5EFF4();
      v27(v28);
      v29 = sub_232BAD2D4(v24, v26, v48);

      *(v22 + 4) = v29;
      _os_log_impl(&dword_232B02000, v16, v43, "DUFoundInEventLLMImplementation: preferredLocale %s", v22, 0xCu);
      sub_232B2040C(v23);
      object = v1._object;
      sub_232BA6A84();
      countAndFlagsBits = v1._countAndFlagsBits;
      sub_232BA6A84();

      v30 = v44;
      v31 = v45;
    }

    else
    {

      v27 = *(v21 + 8);
      v35 = sub_232B5EFF4();
      v27(v35);
      v30 = v19;
      v31 = v20;
    }

    v46(v30, v31);
    *(v0 + 120) = v27;
    v36 = *(v0 + 72);
    v38 = *(v0 + 40);
    v37 = *(v0 + 48);
    v39 = *(v0 + 160);
    v40 = *(v0 + 24);
    type metadata accessor for DUModelRunner();
    LOBYTE(v48[0]) = 0;
    *(v0 + 128) = DUModelRunner.__allocating_init(extractionCategory:pid:)(v48, v40, v39 & 1);
    v47(v38, v36, v37);
    sub_232B12504(v38, 0, 1, v37);
    v41 = swift_task_alloc();
    *(v0 + 136) = v41;
    *v41 = v0;
    v41[1] = sub_232BB7010;
    v42 = *(v0 + 40);

    return sub_232BDE050(countAndFlagsBits, object, v42);
  }

  else
  {
    sub_232BB7B64();
    swift_allocError();
    *v32 = 0;
    *(v32 + 8) = 0;
    *(v32 + 16) = 3;
    swift_willThrow();

    v33 = *(v0 + 8);

    return v33();
  }
}

uint64_t sub_232BB7010(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 40);
  *(v3 + 144) = a1;
  *(v3 + 152) = v1;

  sub_232BB7BB8(v4);

  if (v1)
  {
    v5 = sub_232BB7380;
  }

  else
  {
    v5 = sub_232BB7184;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_232BB7184()
{
  v18 = v0;
  v1 = sub_232BB7650(v16, *(v0 + 144), **(v0 + 16));
  v3 = v16[0];
  v2 = v16[1];
  v4 = v17;
  if (v1)
  {
    (*(v0 + 120))(*(v0 + 72), *(v0 + 48));
    sub_232BB7C20(v3, v2, v4);

    v5 = *(v0 + 8);
    v6 = *(v0 + 144);

    return v5(v6);
  }

  else
  {
    v8 = *(v0 + 120);
    v9 = *(v0 + 72);
    v10 = *(v0 + 48);

    sub_232BB7B64();
    swift_allocError();
    v12 = 0x8000000232D06610;
    v13 = 0xD000000000000029;
    if (v4 == 255)
    {
      v14 = 2;
    }

    else
    {
      v13 = v3;
      v12 = v2;
      v14 = v4;
    }

    *v11 = v13;
    *(v11 + 8) = v12;
    *(v11 + 16) = v14;
    swift_willThrow();
    v8(v9, v10);

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_232BB7380()
{
  (*(v0 + 120))(*(v0 + 72), *(v0 + 48));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_232BB7438()
{
  v0 = sub_232CE9A30();
  sub_232B48F0C();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_opt_self();
  v7 = sub_232BB8098(&unk_28480FFD0);
  v8 = sub_232CE8D90();
  v9 = sub_232BB8098(v8);

  v10 = sub_232BB7C8C(v7, v9, 2, 1, v6);
  if (v11)
  {
    v16[4] = v10;
    v16[5] = v11;
    v16[2] = 95;
    v16[3] = 0xE100000000000000;
    v16[0] = 45;
    v16[1] = 0xE100000000000000;
    sub_232B48080();
    sub_232CEA3B0();
  }

  else
  {
    sub_232CE9A20();
    v12 = sub_232CE9A00();
    v13 = sub_232CEA1E0();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_232B02000, v12, v13, "DUFoundInEventImplementation: Preferred language not found, defaulting to en_US", v14, 2u);
      sub_232BA6A84();
    }

    (*(v2 + 8))(v5, v0);
  }

  return sub_232CE8D50();
}

uint64_t sub_232BB7650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37[0] = a3;
  sub_232CE9A30();
  sub_232B48F0C();
  v39 = v6;
  v40 = v5;
  MEMORY[0x28223BE20](v5);
  v41 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_232B124A8(&qword_27DDC6B30, &unk_232CF8960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_232CF5E60;
  *(inited + 32) = sub_232CE9D50();
  *(inited + 40) = v9;
  *(inited + 48) = sub_232CE9D50();
  *(inited + 56) = v10;
  v11 = sub_232C0D410(inited);
  v12 = *(a2 + 16);
  if (v12)
  {
    v13 = 0;
    v14 = a2 + 32;
    v15 = *MEMORY[0x277D06578];
    v38 = a1;
    v37[1] = v15;
    while (1)
    {
      v16 = *(v14 + 8 * v13);
      v17 = *(v16 + 16);

      if (v17)
      {
        sub_232B20540();
        if (*(v16 + 16))
        {
          v18 = sub_232B20540();
          if (v19)
          {
            v20 = (*(v16 + 56) + 16 * v18);
            v22 = *v20;
            v21 = v20[1];

            if (*(v11 + 16))
            {
              break;
            }
          }
        }
      }

LABEL_16:
      if (++v13 == v12)
      {
        goto LABEL_20;
      }
    }

    sub_232CEA820();
    sub_232CE9E40();
    v23 = sub_232CEA850();
    v24 = ~(-1 << *(v11 + 32));
    do
    {
      v25 = v23 & v24;
      if (((*(v11 + 56 + (((v23 & v24) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v23 & v24)) & 1) == 0)
      {

        a1 = v38;
        goto LABEL_16;
      }

      v26 = (*(v11 + 48) + 16 * v25);
      if (*v26 == v22 && v26[1] == v21)
      {
        break;
      }

      v28 = sub_232CEA750();
      v23 = v25 + 1;
    }

    while ((v28 & 1) == 0);

    v30 = v41;
    sub_232CE9A20();

    v31 = sub_232CE9A00();
    v32 = sub_232CEA1C0();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v42 = v34;
      *v33 = 136315394;
      *(v33 + 4) = sub_232BAD2D4(v22, v21, &v42);
      *(v33 + 12) = 2048;
      *(v33 + 14) = v37[0];
      _os_log_impl(&dword_232B02000, v31, v32, "(DUFoundInEventLLMImplementation): Unsupported Event Status: %s, documentType: %ld", v33, 0x16u);
      sub_232B2040C(v34);
      sub_232BA6A84();
      sub_232BA6A84();
    }

    (*(v39 + 8))(v30, v40);
    v35 = v38;
    v42 = 0;
    v43 = 0xE000000000000000;
    sub_232CEA4F0();

    v42 = 0xD000000000000025;
    v43 = 0x8000000232D06640;
    MEMORY[0x238391C30](v22, v21);

    result = 0;
    v36 = v43;
    *v35 = v42;
    *(v35 + 8) = v36;
    *(v35 + 16) = 2;
  }

  else
  {
LABEL_20:

    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = -1;
    return 1;
  }

  return result;
}

uint64_t sub_232BB7A4C(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 sub_232BB7A68(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_232BB7A7C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 17))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 3)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_232BB7ABC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_232BB7B00(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_232BB7B64()
{
  result = qword_2814E0598[0];
  if (!qword_2814E0598[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2814E0598);
  }

  return result;
}

uint64_t sub_232BB7BB8(uint64_t a1)
{
  v2 = sub_232B124A8(&qword_27DDC7398, &unk_232CF9070);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_232BB7C20(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_232BB6A10(a1, a2, a3);
  }

  return a1;
}

unint64_t sub_232BB7C34()
{
  result = qword_27DDC7630;
  if (!qword_27DDC7630)
  {
    sub_232CE8E10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7630);
  }

  return result;
}

uint64_t sub_232BB7C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_232CE9FD0();

  v9 = sub_232CE9FD0();

  v10 = [a5 mostPreferredLanguageOf:v8 withPreferredLanguages:v9 forUsage:a3 options:a4];

  if (!v10)
  {
    return 0;
  }

  v11 = sub_232CE9D50();

  return v11;
}

uint64_t sub_232BB7D84(uint64_t a1, uint64_t a2)
{

  return sub_232CEA750();
}

void sub_232BB7DA0(uint64_t result, uint64_t a2, unint64_t a3, uint64_t *a4, uint64_t a5)
{
  for (i = result; ; ++i)
  {
    if (a2 == i)
    {
LABEL_7:

      return;
    }

    if (a2 < result)
    {
      break;
    }

    if (i >= a2)
    {
      goto LABEL_9;
    }

    v12 = i;
    sub_232BBC42C(&v12, a3, a4, a5);
    if (v5)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_9:
  __break(1u);
}

uint64_t sub_232BB7E50(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *(a1 + 16);
  v7 = (a1 + 40);
  if (v6)
  {
    while (1)
    {
      v8 = *v7;
      v10[0] = *(v7 - 1);
      v10[1] = v8;

      sub_232BB8F58(v10, a2, a3);
      if (v3)
      {
        break;
      }

      v7 += 2;
      if (!--v6)
      {
      }
    }
  }
}

uint64_t sub_232BB7EFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_232B124A8(&qword_27DDC6900, &unk_232CF6480);
  v5 = sub_232B4EC24(v4);
  *v6 = a2;

  return MEMORY[0x282200958](a1, v5);
}

void sub_232BB7F84(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < a1 || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {

    return;
  }

LABEL_10:
  __break(1u);
}

uint64_t sub_232BB7FF0(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v5 = MEMORY[0x277D84F90];
    sub_232CEA580();
    v4 = a1 + 32;
    do
    {
      v4 += 8;
      sub_232CEA0B0();
      sub_232CEA560();
      sub_232CEA590();
      sub_232CEA5A0();
      sub_232CEA570();
      --v2;
    }

    while (v2);
    return v5;
  }

  return result;
}

uint64_t sub_232BB8098(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v14 = MEMORY[0x277D84F90];
    v4 = sub_232BC1D78();
    sub_232B64B60(v4, v5, v6);
    v2 = v14;
    v7 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v14 = v2;
      v8 = *(v2 + 16);
      if (v8 >= *(v2 + 24) >> 1)
      {
        sub_232BC1E24();
        sub_232B64B60(v9, v10, v11);
        v2 = v14;
      }

      *(v2 + 16) = v8 + 1;
      sub_232B20510(&v13, (v2 + 32 * v8 + 32));
      v7 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_232BB818C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v12 = MEMORY[0x277D84F90];
    v4 = sub_232BC1D78();
    sub_232B64CC8(v4, v5, v6);
    v7 = a1 + 32;
    v2 = v12;
    do
    {

      sub_232B124A8(&qword_27DDC6C58, &qword_232CF89A0);
      sub_232B124A8(&qword_27DDC72C8, &qword_232CFF860);
      swift_dynamicCast();
      v9 = *(v12 + 16);
      v8 = *(v12 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_232B64CC8((v8 > 1), v9 + 1, 1);
      }

      *(v12 + 16) = v9 + 1;
      *(v12 + 8 * v9 + 32) = v11;
      v7 += 8;
      --v1;
    }

    while (v1);
  }

  return v2;
}

id sub_232BB82CC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_232CE9D20();
  }

  else
  {
    v2 = 0;
  }

  v3 = [swift_getObjCClassFromMetadata() contextualEmbeddingWithIdentifier_];

  return v3;
}

uint64_t sub_232BB833C@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for DUFoundInEventSpecification();
  result = swift_allocObject();
  a1[3] = v2;
  a1[4] = &off_281932028;
  *a1 = result;
  return result;
}

_BYTE *sub_232BB8384(uint64_t a1, void *a2)
{
  LOBYTE(v5) = 105;
  type metadata accessor for DUFoundInEventsPostprocessing();
  sub_232BC1ECC();
  swift_allocObject();
  v6 = sub_232BCE8BC(a2);
  v7 = objc_allocWithZone(type metadata accessor for DUFoundInEventResult());
  v8 = a2;
  v9 = [v7 init];
  v10 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_detectedEventPolarity;
  sub_232B13F5C(v9 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_detectedEventPolarity, v134);
  *(v9 + v10) = 1;
  sub_232BCE960();
  if (v13)
  {
    sub_232BC1EC0();
    if (!v17)
    {
      sub_232BC1DC4(v14, v15, v16);
      v5 = (v9 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_reservationId);
      sub_232B13F5C(v9 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_reservationId, v133);
      *v5 = v6;
      v5[1] = v2;

      goto LABEL_8;
    }

    v18 = sub_232BC1B94();
    v20 = 0;
  }

  else
  {
    sub_232BC1F98(v11, 0, v12);
    if ((v3 & 1) == 0)
    {
      goto LABEL_8;
    }

    v18 = sub_232BC1B94();
    v20 = 1;
  }

  static DUFoundInEventResult.getErrorForField(field:errorCode:)(v18, v19, v20);
  v21 = sub_232BC1D98();
  sub_232B13F5C(v21, v133);
  sub_232BC1D60();
LABEL_8:
  sub_232BCF130();
  if (v22 == 1)
  {
    v23 = sub_232BC1CD0();
    static DUFoundInEventResult.getErrorForField(field:errorCode:)(v23, v24, 0);
    v25 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_startAddressError;
LABEL_10:
    sub_232B13F5C(v25 + v9, v132);
    sub_232BC1D60();
    goto LABEL_19;
  }

  sub_232BC1DF4();
  if (v26)
  {
    v27 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_startAddressComponents;
    sub_232B13F5C(v9 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_startAddressComponents, v119);
    *(v9 + v27) = v6;

    if (!v2)
    {
      goto LABEL_18;
    }
  }

  else if (!v2)
  {
LABEL_18:

    goto LABEL_19;
  }

  v28 = v9 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_startAddress;
  sub_232B13F5C(v9 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_startAddress, v120);
  *v28 = v3;
  v28[1] = v2;

  if (!v6)
  {
    goto LABEL_18;
  }

  if (v5)
  {
    v29 = sub_232BC1CD0();
    static DUFoundInEventResult.getErrorForField(field:errorCode:)(v29, v30, 1);
    v25 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_startAddressError;
    goto LABEL_10;
  }

LABEL_19:
  sub_232BCF130();
  if (v31 == 1)
  {
    v32 = sub_232BC1EA0();
    static DUFoundInEventResult.getErrorForField(field:errorCode:)(v32, 0xEA00000000007373, 0);
    v33 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_endAddressError;
LABEL_21:
    sub_232B13F5C(v33 + v9, v131);
    sub_232BC1D60();
    goto LABEL_30;
  }

  sub_232BC1DF4();
  if (v35)
  {
    v36 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_endAddressComponents;
    sub_232B13F5C(v9 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_endAddressComponents, v121);
    *(v9 + v36) = v6;

    if (!v2)
    {
      goto LABEL_29;
    }
  }

  else if (!v2)
  {
LABEL_29:

    goto LABEL_30;
  }

  v37 = v9 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_endAddress;
  sub_232BC1C58(v34, v122);
  *v37 = v3;
  v37[1] = v2;

  if (!v6)
  {
    goto LABEL_29;
  }

  if (v5)
  {
    v38 = sub_232BC1EA0();
    static DUFoundInEventResult.getErrorForField(field:errorCode:)(v38, 0xEA00000000007373, 1);
    v33 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_endAddressError;
    goto LABEL_21;
  }

LABEL_30:
  sub_232BCF408();
  if (!v40)
  {
    v2 = v42;

    if ((v2 & 1) == 0)
    {
      goto LABEL_37;
    }

    v44 = sub_232BC1D10();
    v46 = 1;
    goto LABEL_35;
  }

  v43 = v40;
  if (v40 == 1)
  {
    v44 = sub_232BC1D10();
    v46 = 0;
LABEL_35:
    static DUFoundInEventResult.getErrorForField(field:errorCode:)(v44, v45, v46);
    v47 = sub_232BC1D98();
    sub_232B13F5C(v47, v130);
    sub_232BC1D60();
    goto LABEL_37;
  }

  v48 = sub_232BC1DC4(v39, v40, v41);
  v49 = (v9 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_startDate);
  sub_232BC1C58(v48, v130);
  *v49 = v6;
  v49[1] = v43;

LABEL_37:
  sub_232BCF408();
  if (!v51)
  {
    v2 = v53;

    if ((v2 & 1) == 0)
    {
      goto LABEL_44;
    }

    v55 = sub_232BC1DDC();
    v57 = 1;
    goto LABEL_42;
  }

  v54 = v51;
  if (v51 == 1)
  {
    v55 = sub_232BC1DDC();
    v57 = 0;
LABEL_42:
    static DUFoundInEventResult.getErrorForField(field:errorCode:)(v55, v56, v57);
    v58 = sub_232BC1D98();
    sub_232B13F5C(v58, v129);
    sub_232BC1D60();
    goto LABEL_44;
  }

  v59 = sub_232BC1DC4(v50, v51, v52);
  v60 = (v9 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_endDate);
  sub_232BC1C58(v59, v129);
  *v60 = v6;
  v60[1] = v54;

LABEL_44:
  sub_232BA61D4();
  sub_232BCE960();
  if (v63)
  {
    sub_232BC1EC0();
    if (!v17)
    {
      v68 = sub_232BC1DC4(v64, v65, v66);
      v69 = (v9 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_startPlace);
      sub_232BC1C58(v68, v128);
      *v69 = v6;
      v69[1] = v2;

      goto LABEL_51;
    }

    v67 = 0;
  }

  else
  {
    sub_232BC1F98(v61, 0, v62);
    if ((v3 & 1) == 0)
    {
      goto LABEL_51;
    }

    v67 = 1;
  }

  static DUFoundInEventResult.getErrorForField(field:errorCode:)(0x616C507472617473, 0xEA00000000006563, v67);
  sub_232B13F5C(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_startPlaceError + v9, v128);
  sub_232BC1D60();
LABEL_51:
  sub_232BA61D4();
  sub_232BCE960();
  if (v72)
  {
    sub_232BC1EC0();
    if (!v17)
    {
      v77 = sub_232BC1DC4(v73, v74, v75);
      v78 = (v9 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_endPlace);
      sub_232BC1C58(v77, v127);
      *v78 = v6;
      v78[1] = v2;

      goto LABEL_58;
    }

    v76 = 0;
  }

  else
  {
    sub_232BC1F98(v70, 0, v71);
    if ((v3 & 1) == 0)
    {
      goto LABEL_58;
    }

    v76 = 1;
  }

  static DUFoundInEventResult.getErrorForField(field:errorCode:)(0x6563616C50646E65, 0xE800000000000000, v76);
  sub_232B13F5C(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_endPlaceError + v9, v127);
  sub_232BC1D60();
LABEL_58:
  sub_232BCE960();
  if (v81)
  {
    sub_232BC1EC0();
    if (!v17)
    {
      v88 = sub_232BC1DC4(v82, v83, v84);
      v89 = (v9 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_reservationName);
      sub_232BC1C58(v88, v126);
      *v89 = v6;
      v89[1] = v2;

      goto LABEL_65;
    }

    v85 = sub_232BC1B94();
    v87 = 0;
  }

  else
  {
    sub_232BC1F98(v79, 0, v80);
    if ((v3 & 1) == 0)
    {
      goto LABEL_65;
    }

    v85 = sub_232BC1B94();
    v87 = 1;
  }

  static DUFoundInEventResult.getErrorForField(field:errorCode:)(v85, v86, v87);
  sub_232B13F5C(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_reservationNameError + v9, v126);
  sub_232BC1D60();
LABEL_65:
  sub_232BCE960();
  if (!v91)
  {
    v96 = v93;

    if ((v96 & 1) == 0)
    {
      goto LABEL_72;
    }

    v95 = 1;
    goto LABEL_70;
  }

  v94 = v91;
  if (v91 == 1)
  {
    v95 = 0;
LABEL_70:
    static DUFoundInEventResult.getErrorForField(field:errorCode:)(0xD000000000000013, 0x8000000232D06F20, v95);
    sub_232B13F5C(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_hotelNameError + v9, v125);
    sub_232BC1D60();
    goto LABEL_72;
  }

  sub_232BC1DC4(v90, v91, v92);
  v97 = (v9 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_hotelName);
  sub_232B13F5C(v9 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_hotelName, v125);
  *v97 = v6;
  v97[1] = v94;

LABEL_72:
  sub_232BCE960();
  if (!v99)
  {
    v104 = v101;

    if ((v104 & 1) == 0)
    {
      goto LABEL_79;
    }

    v103 = 1;
    goto LABEL_77;
  }

  v102 = v99;
  if (v99 == 1)
  {
    v103 = 0;
LABEL_77:
    static DUFoundInEventResult.getErrorForField(field:errorCode:)(0x6D614E7473657567, 0xE900000000000065, v103);
    sub_232B13F5C(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_guestNameError + v9, v124);
    sub_232BC1D60();
    goto LABEL_79;
  }

  v105 = sub_232BC1DC4(v98, v99, v100);
  v106 = (v9 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_guestName);
  sub_232BC1C58(v105, v124);
  *v106 = v6;
  v106[1] = v102;

LABEL_79:
  sub_232BA61D4();
  sub_232BCE960();
  if (v108)
  {
    v110 = v108;
    if (v108 != 1)
    {
      v116 = v107;

      v117 = v9 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_movieName;
      sub_232B13F5C(v9 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_movieName, v123);
      *v117 = v116;
      v117[1] = v110;

      return v9;
    }

    v111 = 0;
  }

  else
  {
    v112 = v109;

    if ((v112 & 1) == 0)
    {

      return v9;
    }

    v111 = 1;
  }

  v113 = static DUFoundInEventResult.getErrorForField(field:errorCode:)(0x6369546569766F6DLL, 0xEF656D614E74656BLL, v111);

  v114 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_movieNameError;
  sub_232B13F5C(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_movieNameError + v9, v123);
  v115 = *&v114[v9];
  *&v114[v9] = v113;

  return v9;
}

uint64_t sub_232BB8CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v6 = a4;
    v43 = MEMORY[0x277D84F90];
    sub_232B649D4(0, v4, 0);
    v7 = v43;
    result = sub_232B66AD8();
    v11 = result;
    v12 = 0;
    v13 = v6 + 64;
    v34 = v9;
    v35 = v4;
    v33 = v6 + 72;
    v36 = v6 + 64;
    while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(v6 + 32))
    {
      v14 = v11 >> 6;
      if ((*(v13 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
      {
        goto LABEL_26;
      }

      if (*(v6 + 36) != v9)
      {
        goto LABEL_27;
      }

      v39 = v12;
      v40 = v9;
      v38 = v10;
      v15 = (*(v6 + 48) + 16 * v11);
      v16 = v15[1];
      v41 = *v15;
      v17 = *(*(v6 + 56) + 8 * v11);
      v42 = v5;
      swift_bridgeObjectRetain_n();

      sub_232BB7E50(a3, v17, &v42);

      v18 = v42;
      v43 = v7;
      v19 = v6;
      v21 = *(v7 + 16);
      v20 = *(v7 + 24);
      if (v21 >= v20 >> 1)
      {
        v32 = sub_232BC1BBC(v20);
        result = sub_232B649D4(v32, v21 + 1, 1);
        v7 = v43;
      }

      *(v7 + 16) = v21 + 1;
      v22 = (v7 + 24 * v21);
      v22[4] = v41;
      v22[5] = v16;
      v22[6] = v18;
      v23 = 1 << *(v19 + 32);
      if (v11 >= v23)
      {
        goto LABEL_28;
      }

      v13 = v36;
      v24 = *(v36 + 8 * v14);
      if ((v24 & (1 << v11)) == 0)
      {
        goto LABEL_29;
      }

      v6 = v19;
      if (*(v19 + 36) != v40)
      {
        goto LABEL_30;
      }

      v25 = v24 & (-2 << (v11 & 0x3F));
      if (v25)
      {
        v23 = __clz(__rbit64(v25)) | v11 & 0x7FFFFFFFFFFFFFC0;
        v26 = v35;
      }

      else
      {
        v27 = v14 << 6;
        v28 = v14 + 1;
        v29 = (v33 + 8 * v14);
        v26 = v35;
        while (v28 < (v23 + 63) >> 6)
        {
          v31 = *v29++;
          v30 = v31;
          v27 += 64;
          ++v28;
          if (v31)
          {
            result = sub_232B48E94(v11, v40, v38 & 1);
            v23 = __clz(__rbit64(v30)) + v27;
            goto LABEL_19;
          }
        }

        result = sub_232B48E94(v11, v40, v38 & 1);
      }

LABEL_19:
      v10 = 0;
      v12 = v39 + 1;
      v11 = v23;
      v9 = v34;
      v5 = MEMORY[0x277D84F90];
      if (v39 + 1 == v26)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
LABEL_22:

    return sub_232B63200(v7);
  }

  return result;
}

uint64_t sub_232BB8F58(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  sub_232BAD8B0();
  sub_232BC1AB8();
  if (sub_232CE9CB0())
  {
    v13 = a3;
    if (*(sub_232CE9CA0() + 16))
    {
    }

    else
    {

      sub_232CEA370();
    }

    v7 = *(a2 + 16);
    v8 = (a2 + 40);
    if (v7)
    {
      while (1)
      {
        v6 = *(v8 - 1);
        v5 = *v8;
        sub_232B48080();
        sub_232BC1B0C();

        if (sub_232CEA3F0())
        {
          break;
        }

        v8 += 2;
        if (!--v7)
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
LABEL_9:
      v5 = 0xE400000000000000;
      v6 = 1162760014;
    }

    a3 = v13;
  }

  else
  {
    v5 = 0xE400000000000000;
    v6 = 1162760014;
  }

  sub_232BAD03C();
  v9 = *(*a3 + 16);
  result = sub_232BAD188(v9);
  v11 = *a3;
  *(v11 + 16) = v9 + 1;
  v12 = v11 + 16 * v9;
  *(v12 + 32) = v6;
  *(v12 + 40) = v5;
  return result;
}

uint64_t sub_232BB914C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = MEMORY[0x277D84F90];
  v26 = MEMORY[0x277D84F90];
  v23 = MEMORY[0x277D84F90];
  v24 = MEMORY[0x277D84F90];
  v22 = 0;
  v6 = sub_232B26B10();
  v13 = v6;
  for (i = 0; v13 != i; ++i)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x2383922C0](i, a3);
      v15 = v6;
    }

    else
    {
      if (i >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v15 = *(a3 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return MEMORY[0x2821D8B78](v6, v7, v8, v9, v10, v11, v12);
    }

    v21 = v15;
    sub_232BB9288(&v21, &v26, &v22, &v23, &v25, &v24);
  }

  v17 = v25;
  v16 = v26;
  v19 = v23;
  v18 = v24;

  v6 = v16;
  v7 = v17;
  v8 = v18;
  v9 = v19;
  v10 = a1;
  v11 = a2;

  return MEMORY[0x2821D8B78](v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_232BB9288(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v11 = *a1;
  v12 = *a3;
  sub_232BAD084();
  v13 = *(*a2 + 16);
  sub_232BAD1D0(v13);
  v14 = *a2;
  *(v14 + 16) = v13 + 1;
  *(v14 + 4 * v13 + 32) = v12;
  v15 = *a3;
  sub_232BAD054();
  v16 = *(*a4 + 16);
  sub_232BAD1A0(v16);
  v17 = *a4;
  *(v17 + 16) = v16 + 1;
  *(v17 + 8 * v16 + 32) = v15;
  sub_232BAD084();
  v18 = *(*a5 + 16);
  sub_232BAD1D0(v18);
  v19 = *a5;
  *(v19 + 16) = v18 + 1;
  *(v19 + 4 * v18 + 32) = 0;
  result = swift_beginAccess();
  v21 = *(v11 + 32);
  v22 = v21[2];
  if (!v22)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v22 == 1)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v24 = v21[4];
  v23 = v21[5];
  v25 = v23 - v24;
  if (__OFSUB__(v23, v24))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_232BAD06C();
  v26 = *(*a6 + 16);
  result = sub_232BAD1B8(v26);
  v27 = *a6;
  *(v27 + 16) = v26 + 1;
  v28 = v27 + 16 * v26;
  *(v28 + 32) = v24;
  *(v28 + 40) = v25;
  if (!__OFADD__(*a3, 1))
  {
    ++*a3;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_232BB9400()
{
  sub_232B26C44();
  v1[21] = v2;
  v1[22] = v0;
  v1[20] = v3;
  v4 = sub_232CE9A30();
  v1[23] = v4;
  sub_232B27FBC(v4);
  v1[24] = v5;
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  sub_232B48304();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_232BB94EC()
{
  v1 = v0[20];
  v0[12] = v1;
  *(v0 + 4) = 0u;
  v2 = MEMORY[0x277D84F90];
  v0[14] = MEMORY[0x277D84F90];
  v71 = v0 + 14;
  v0[15] = v2;
  v72 = v0 + 15;
  *(v0 + 8) = 0u;
  v3 = v0 + 16;
  v4 = v0[21];
  v5 = v0[22];
  v6 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v6 = v1;
  }

  v7 = ((v4 >> 60) & ((v1 & 0x800000000000000) == 0)) == 0;
  v8 = 7;
  if (!v7)
  {
    v8 = 11;
  }

  v0[10] = 15;
  v0[18] = 0;
  v70 = v0 + 18;
  v0[11] = v8 | (v6 << 16);
  v0[13] = v4;

  sub_232B124A8(&qword_27DDC7680, &qword_232CFA998);
  sub_232B48E4C(&qword_27DDC7688, &qword_27DDC7680, &qword_232CFA998, MEMORY[0x277D83D30]);
  sub_232B48080();
  sub_232BC1E48();
  v9 = sub_232CEA320();
  v11 = *(v5 + 16);
  if (v11)
  {
    v67 = v10;
    v68 = v9;
    v69 = v0 + 17;
    v12 = qword_27DDC6390;
    v13 = v11;
    if (v12 != -1)
    {
      sub_232BC1B74(&qword_27DDC6390);
    }

    v15 = v0[20];
    v14 = v0[21];
    v16 = qword_27DDC7638;
    v17 = swift_allocObject();
    v17[2] = v69;
    v17[3] = v3;
    v17[4] = v70;
    v17[5] = v0 + 8;
    v17[6] = v71;
    v17[7] = v15;
    v17[8] = v14;
    v17[9] = v72;
    v18 = swift_allocObject();
    *(v18 + 16) = sub_232BC1A54;
    *(v18 + 24) = v17;
    v0[6] = sub_232BC1A90;
    v0[7] = v18;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_232BB9C44;
    v0[5] = &unk_284811FE0;
    v19 = _Block_copy(v0 + 2);

    v0[19] = 0;
    v20 = sub_232BC14F8(v15, v14, v16, v68, v67, (v0 + 19), v19, v13);
    _Block_release(v19);
    v21 = v0[19];
    v22 = v13;
    if ((v20 & 1) == 0)
    {
      v46 = v21;
      v47 = sub_232CE8B30();

      swift_willThrow();
      sub_232CE9A20();
      v48 = v47;
      v49 = sub_232CE9A00();
      v50 = sub_232CEA1C0();

      if (os_log_type_enabled(v49, v50))
      {
        v51 = sub_232BC1F80();
        v52 = swift_slowAlloc();
        *v51 = 138412290;
        v53 = v47;
        v54 = _swift_stdlib_bridgeErrorToNSError();
        *(v51 + 4) = v54;
        *v52 = v54;
        _os_log_impl(&dword_232B02000, v49, v50, "DUFoundInEventMultilingualBERTImplementation: error enumerateTokens in NLContextualEmbedding %@", v51, 0xCu);
        sub_232BA4D50(v52, &qword_27DDC6FD0, &unk_232CFA240);
        sub_232BA6A84();
        sub_232B26D28();
      }

      else
      {
      }

      (*(v0[24] + 8))(v0[25], v0[23]);
      goto LABEL_29;
    }

    if (*v69 == 2 || !*v3)
    {
      v55 = v21;

LABEL_26:

LABEL_29:
      v45 = sub_232BC1A54;
      goto LABEL_30;
    }

    v23 = v0[8];
    v24 = v0[9];
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      __break(1u);
    }

    else
    {
      v26 = v21;
      v21 = sub_232CE9E30();
      v25 = v27;
      v28 = v0[14];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v0[14] = v28;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_13:
        v31 = *(v28 + 16);
        v30 = *(v28 + 24);
        if (v31 >= v30 >> 1)
        {
          sub_232BC1BBC(v30);
          sub_232B35ECC();
          v28 = v60;
        }

        *(v28 + 16) = v31 + 1;
        v32 = v28 + 16 * v31;
        *(v32 + 32) = v21;
        *(v32 + 40) = v25;
        *v71 = v28;
        v33 = *v70;
        v34 = *v72;
        v35 = swift_isUniquelyReferenced_nonNull_native();
        *v72 = v34;
        if ((v35 & 1) == 0)
        {
          v61 = sub_232BA57A8();
          sub_232B36150(v61, v62, v63, v34);
          v34 = v64;
          *v72 = v64;
        }

        v37 = *(v34 + 16);
        v36 = *(v34 + 24);
        if (v37 >= v36 >> 1)
        {
          v65 = sub_232BC1BBC(v36);
          sub_232B36150(v65, v37 + 1, 1, v34);
          *v72 = v66;
        }

        v38 = *v72;
        *(v38 + 16) = v37 + 1;
        *(v38 + 8 * v37 + 32) = v33;
        *v72 = v38;
        goto LABEL_26;
      }
    }

    sub_232BA57A8();
    sub_232B35ECC();
    v28 = v59;
    *v71 = v59;
    goto LABEL_13;
  }

  sub_232CE9A20();
  v39 = sub_232CE9A00();
  v40 = sub_232CEA1C0();
  if (sub_232BC1E54(v40))
  {
    *sub_232BA73DC() = 0;
    sub_232B28888(&dword_232B02000, v41, v42, "DUFoundInEventMultilingualBERTImplementation: NLContextualEmbedding not available");
    sub_232BA6A84();
  }

  v43 = sub_232BA5FEC();
  v44(v43);
  v45 = 0;
  v17 = 0;
LABEL_30:

  sub_232B0D210(v45, v17);

  sub_232BB189C();
  v56 = sub_232BC1E48();

  return v57(v56);
}

uint64_t sub_232BB9B40(uint64_t result, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t a9, uint64_t a10, uint64_t *a11)
{
  if (*a4 != 2)
  {
    v13 = *a5;
    if (!*a5)
    {
      *a6 = result;
      v13 = *a5;
    }

    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      __break(1u);
    }

    else
    {
      *a5 = v15;
      *a7 = result;
      a7[1] = a2;
      if (*a5 != 255)
      {
        return result;
      }

      if (!__OFADD__(*a4, 1))
      {
        ++*a4;
        *a5 = 0;
        if (!__OFADD__(result, a2))
        {
          v16 = sub_232CE9E30();
          v18 = v17;
          sub_232BAD03C();
          v19 = *(*a8 + 16);
          sub_232BAD188(v19);
          v20 = *a8;
          *(v20 + 16) = v19 + 1;
          v21 = v20 + 16 * v19;
          *(v21 + 32) = v16;
          *(v21 + 40) = v18;
          v22 = *a6;
          sub_232BAD054();
          v23 = *(*a11 + 16);
          result = sub_232BAD1A0(v23);
          v24 = *a11;
          *(v24 + 16) = v23 + 1;
          *(v24 + 8 * v23 + 32) = v22;
          return result;
        }

LABEL_12:
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_232BB9C78()
{
  sub_232B26C44();
  v1[21] = v2;
  v1[22] = v0;
  v1[20] = v3;
  v4 = sub_232CE9A30();
  v1[23] = v4;
  sub_232B27FBC(v4);
  v1[24] = v5;
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  sub_232B48304();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_232BB9D68(uint64_t a1)
{
  v2 = *(v1[22] + 16);
  v1[31] = v2;
  if (v2)
  {
    v3 = v2;
    if ([v3 hasAvailableAssets])
    {
      v4 = swift_task_alloc();
      v1[32] = v4;
      *v4 = v1;
      v4[1] = sub_232BB9FAC;
      sub_232BC1EF8(v1[20]);

      return sub_232BB9400();
    }

    sub_232CE9A20();
    v15 = sub_232CE9A00();
    v16 = sub_232CEA1C0();
    v17 = sub_232BC1E54(v16);
    v18 = v1[30];
    v19 = v1[23];
    v20 = v1[24];
    if (v17)
    {
      v21 = sub_232BA73DC();
      *v21 = 0;
      _os_log_impl(&dword_232B02000, v15, v16, "DUFoundInEventMultilingualBERTImplementation: embedding assets not available", v21, 2u);
      sub_232BA6A84();
    }

    (*(v20 + 8))(v18, v19);
  }

  else
  {
    sub_232CE9A20();
    v6 = sub_232CE9A00();
    v7 = sub_232CEA1C0();
    if (sub_232BC1E54(v7))
    {
      *sub_232BA73DC() = 0;
      sub_232BC1CB8();
      _os_log_impl(v8, v9, v10, v11, v12, 2u);
      sub_232B26D28();
    }

    v13 = sub_232BA5FEC();
    v14(v13);
  }

  sub_232BB189C();

  return v22(0, 0);
}

uint64_t sub_232BB9FAC()
{
  sub_232B26C44();
  sub_232B26C70();
  sub_232BC1BAC();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 264) = v3;
  *(v1 + 272) = v4;

  sub_232B48304();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_232BBA098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_232BC1F04();
  a21 = v23;
  a22 = v24;
  a20 = v22;
  v25 = *(v22 + 264);
  if (v25)
  {
    v26 = MEMORY[0x277D84F90];
    v27 = *(v22 + 272);
    *(v22 + 144) = MEMORY[0x277D84F90];
    v28 = *(v25 + 16);
    *(v22 + 288) = 0;
    *(v22 + 296) = v26;
    *(v22 + 280) = v28;
    if (v28)
    {
      if (*(v25 + 16))
      {

        *(v22 + 304) = sub_232CE9D20();

        if (qword_27DDC6390 == -1)
        {
LABEL_5:
          *(v22 + 16) = v22;
          sub_232BC1C00();
          v29 = sub_232B124A8(&qword_27DDC7678, &unk_232CFA988);
          sub_232BC1BE0(v29);
          *(v22 + 88) = 1107296256;
          sub_232BC1BC8(qword_284811F68);
          sub_232BC1F40(v30, sel_requestEmbeddingResultForString_language_completionHandler_);
          sub_232B26CB4();

          return MEMORY[0x282200938](v31);
        }
      }

      else
      {
        __break(1u);
      }

      sub_232BC1B74(&qword_27DDC6390);
      goto LABEL_5;
    }

    if (sub_232B26B10() == *(v27 + 16))
    {
    }

    else
    {
      sub_232CE9A20();

      v44 = sub_232CE9A00();
      v45 = sub_232CEA1C0();

      v46 = os_log_type_enabled(v44, v45);
      v47 = *(v22 + 272);
      v48 = *(v22 + 248);
      v49 = *(v22 + 224);
      v51 = *(v22 + 184);
      v50 = *(v22 + 192);
      if (v46)
      {
        a10 = *(v22 + 224);
        v52 = swift_slowAlloc();
        a9 = v51;
        v53 = swift_slowAlloc();
        a11 = v53;
        *v52 = 134218242;
        v54 = MEMORY[0x277D84F90];
        v55 = sub_232B26B10();

        *(v52 + 4) = v55;

        *(v52 + 12) = 2080;
        MEMORY[0x238391D80](v47, MEMORY[0x277D83B88]);
        sub_232BA6298();

        v56 = sub_232BAD2D4(v54, v55, &a11);

        *(v52 + 14) = v56;
        sub_232BC1CB8();
        _os_log_impl(v57, v58, v59, v60, v61, 0x16u);
        sub_232B2040C(v53);
        sub_232BA6A84();
        sub_232B26D28();

        (*(v50 + 8))(a10, a9);
      }

      else
      {
        swift_bridgeObjectRelease_n();

        (*(v50 + 8))(v49, v51);
      }
    }
  }

  else
  {
    sub_232CE9A20();
    v33 = sub_232CE9A00();
    v34 = sub_232CEA1C0();
    v35 = sub_232BC1E54(v34);
    v36 = *(v22 + 248);
    if (v35)
    {
      *sub_232BA73DC() = 0;
      sub_232BC1CB8();
      _os_log_impl(v37, v38, v39, v40, v41, 2u);
      sub_232B26D28();
    }

    else
    {
    }

    v42 = sub_232BA5FEC();
    v43(v42);
  }

  sub_232BB189C();
  sub_232B26CB4();

  return v65(v62, v63, v64, v65, v66, v67, v68, v69, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_232BBA490()
{
  sub_232B26C44();
  sub_232BC1BAC();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 312) = v4;
  if (v4)
  {
  }

  sub_232B48304();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_232BBA5AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_232BC1F04();
  a21 = v23;
  a22 = v24;
  a20 = v22;
  v25 = *(v22 + 152);
  v26 = *(v22 + 304);
  if (!v25)
  {

    sub_232CE9A20();
    v33 = sub_232CE9A00();
    v34 = sub_232CEA1C0();
    if (sub_232BC1E54(v34))
    {
      *sub_232BA73DC() = 0;
      sub_232B28888(&dword_232B02000, v35, v36, "DUFoundInEventMultilingualBERTImplementation: fail to requestResult from NLContextualEmbedding");
      sub_232BA6A84();
    }

    v37 = *(v22 + 248);

    v38 = sub_232BA5FEC();
    v39(v38);
    goto LABEL_18;
  }

  v27 = v25;
  MEMORY[0x238391D50]();
  v28 = *((*(v22 + 144) & 0xFFFFFFFFFFFFFF8) + 0x18);
  if (*((*(v22 + 144) & 0xFFFFFFFFFFFFFF8) + 0x10) >= v28 >> 1)
  {
    sub_232BC1BBC(v28);
    sub_232CEA000();
  }

  sub_232CEA020();

  v29 = *(v22 + 144);
  v30 = *(v22 + 280);
  v31 = *(v22 + 288) + 1;
  *(v22 + 288) = v31;
  *(v22 + 296) = v29;
  if (v31 == v30)
  {
    v32 = *(v22 + 272);

    if (sub_232B26B10() == *(v32 + 16))
    {
    }

    else
    {
      sub_232CE9A20();

      v44 = sub_232CE9A00();
      v45 = sub_232CEA1C0();

      v46 = os_log_type_enabled(v44, v45);
      v47 = *(v22 + 272);
      v48 = *(v22 + 248);
      v49 = *(v22 + 224);
      v51 = *(v22 + 184);
      v50 = *(v22 + 192);
      if (v46)
      {
        a10 = *(v22 + 224);
        v52 = swift_slowAlloc();
        a9 = v51;
        v53 = swift_slowAlloc();
        a11 = v53;
        *v52 = 134218242;
        v54 = sub_232B26B10();

        *(v52 + 4) = v54;

        *(v52 + 12) = 2080;
        v55 = MEMORY[0x238391D80](v47, MEMORY[0x277D83B88]);
        v57 = v56;

        v58 = sub_232BAD2D4(v55, v57, &a11);

        *(v52 + 14) = v58;
        _os_log_impl(&dword_232B02000, v44, v45, "DUFoundInEventMultilingualBERTImplementation: number of embeddingResults %ld is not consistent with number of shiftedStartLocations %s", v52, 0x16u);
        sub_232B2040C(v53);
        sub_232BA6A84();
        sub_232BA6A84();

        (*(v50 + 8))(a10, a9);
      }

      else
      {
        swift_bridgeObjectRelease_n();

        (*(v50 + 8))(v49, v51);
      }
    }

LABEL_18:

    sub_232BB189C();
    sub_232B26CB4();

    return v62(v59, v60, v61, v62, v63, v64, v65, v66, a9, a10, a11, a12, a13, a14);
  }

  if (v31 >= *(*(v22 + 264) + 16))
  {
    __break(1u);
    goto LABEL_22;
  }

  *(v22 + 304) = sub_232CE9D20();

  if (qword_27DDC6390 != -1)
  {
LABEL_22:
    sub_232BC1B74(&qword_27DDC6390);
  }

  *(v22 + 16) = v22;
  sub_232BC1C00();
  v40 = sub_232B124A8(&qword_27DDC7678, &unk_232CFA988);
  sub_232BC1BE0(v40);
  *(v22 + 88) = 1107296256;
  sub_232BC1BC8(qword_284811F68);
  sub_232BC1F40(v41, sel_requestEmbeddingResultForString_language_completionHandler_);
  sub_232B26CB4();

  return MEMORY[0x282200938](v42);
}

uint64_t sub_232BBAA04()
{
  v2 = v0[38];
  v1 = v0[39];
  swift_willThrow();

  sub_232CE9A20();
  v3 = v1;
  v4 = sub_232CE9A00();
  v5 = sub_232CEA1C0();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[39];
  v8 = v0[31];
  if (v6)
  {
    v9 = sub_232BC1F80();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v7;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_232B02000, v4, v5, "DUFoundInEventMultilingualBERTImplementation: Fail to obtain NLContextualEmbeddingResult with error: %@", v9, 0xCu);
    sub_232BA4D50(v10, &qword_27DDC6FD0, &unk_232CFA240);
    sub_232B26D28();
    sub_232BA6A84();
  }

  else
  {
  }

  (*(v0[24] + 8))(v0[25], v0[23]);

  sub_232BB189C();

  return v13(0, 0);
}

uint64_t sub_232BBABC4(uint64_t a1, void *a2, void *a3)
{
  v5 = *sub_232B203C8((a1 + 32), *(a1 + 56));
  if (a3)
  {
    return sub_232BB7EFC(v5, a3);
  }

  v7 = a2;
  return sub_232BB7F64(v5, a2);
}

uint64_t sub_232BBAC28(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v26 = MEMORY[0x277D84F90];
  sub_232B64A58(0, v6, 0);
  result = v26;
  v24 = a2;
  v25 = v4;
  v23 = a1;
  if (!v6)
  {
    v12 = v5;
    goto LABEL_13;
  }

  v8 = (a1 + 32);
  v9 = (a2 + 32);
  v10 = v6;
  v11 = v5;
  v12 = v5;
  while (v4)
  {
    if (!v11)
    {
      goto LABEL_23;
    }

    v13 = *v8;
    v14 = *v9;
    v27 = result;
    v16 = *(result + 16);
    v15 = *(result + 24);
    if (v16 >= v15 >> 1)
    {
      v22 = v12;
      sub_232B64A58(v15 > 1, v16 + 1, 1);
      v12 = v22;
      result = v27;
    }

    --v11;
    *(result + 16) = v16 + 1;
    *(result + 8 * v16 + 32) = v13 + v14;
    --v4;
    ++v9;
    ++v8;
    if (!--v10)
    {
LABEL_13:
      while (v25 != v6)
      {
        if (v6 >= v25)
        {
          goto LABEL_24;
        }

        if (__OFADD__(v6, 1))
        {
          goto LABEL_25;
        }

        if (v12 == v6)
        {
          return result;
        }

        if (v6 >= v12)
        {
          goto LABEL_26;
        }

        v17 = *(v23 + 32 + 8 * v6);
        v18 = *(v24 + 32 + 8 * v6);
        v28 = result;
        v20 = *(result + 16);
        v19 = *(result + 24);
        if (v20 >= v19 >> 1)
        {
          v21 = v12;
          sub_232B64A58(v19 > 1, v20 + 1, 1);
          v12 = v21;
          result = v28;
        }

        *(result + 16) = v20 + 1;
        *(result + 8 * v20 + 32) = v17 + v18;
        ++v6;
      }

      return result;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_232BBADFC()
{
  sub_232B35110();
  v3 = v2;
  v5 = v4;
  sub_232B48080();
  v6 = sub_232BC1F20();
  if (sub_232BC1F20() >> 14 >= v6 >> 14)
  {
    v7 = sub_232B26B10();
    for (i = 0; ; ++i)
    {
      if (v7 == i)
      {
        sub_232B20A00();
        return;
      }

      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x2383922C0](i, v5);
      }

      else
      {
        if (i >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v9 = *(v5 + 8 * i + 32);
      }

      v10 = v9;
      if (__OFADD__(i, 1))
      {
        break;
      }

      v11 = sub_232BC1E6C();
      sub_232CE9D50();
      sub_232BA6298();

      sub_232CE9E90();

      v12 = sub_232BC1E6C();
      sub_232CE9D50();
      sub_232BA6298();

      sub_232BC1580(v0, v1, v3);
      v13 = sub_232BC1E6C();
      sub_232CE9D50();
      sub_232BA6298();

      MEMORY[0x28223BE20](v14);
      sub_232CEA2E0();
    }

    __break(1u);
LABEL_12:
    __break(1u);
  }

  __break(1u);
}

void sub_232BBB064(int a1, uint64_t a2, uint64_t a3, id a4, uint64_t a5, uint64_t a6, unint64_t a7, void *a8)
{
  v8 = [a4 string];
  sub_232CE9D50();

  v9 = sub_232CE9FB0();
  v11 = v10;
  v13 = v12;
  v15 = v14;

  MEMORY[0x238391B80](v9, v11, v13, v15);

  v16 = sub_232CEA010();
  *(v16 + 16) = 512;
  bzero((v16 + 32), 0x1000uLL);
  sub_232CEA2A0();
}

uint64_t sub_232BBB4EC(uint64_t result, unint64_t a2, unint64_t a3, void *a4, uint64_t *a5, void *a6, uint64_t *a7)
{
  v9 = result;
  if ((*a4 ^ a2) >> 14 || (a4[1] ^ a3) >> 14 || (v10 = *a5) != 0)
  {
    if (__OFADD__(*a6, 1))
    {
      goto LABEL_9;
    }

    ++*a6;
    v11 = *a7;

    v12 = sub_232BBAC28(v11, v9);

    *a7 = v12;

    v10 = *a5;
  }

  v13 = __OFADD__(v10, 1);
  v14 = v10 + 1;
  if (!v13)
  {
    *a5 = v14;
    return 1;
  }

  __break(1u);
LABEL_9:
  __break(1u);
  return result;
}

void sub_232BBB5C4()
{
  sub_232B35110();
  v1 = v0;
  v2 = type metadata accessor for FoundInEventDataDetectorsOutput(0);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x277D84F90];
  v6 = *(v1 + 16);
  if (!v6)
  {
LABEL_20:
    sub_232B20A00();
    return;
  }

  v7 = &v5[v2[19]];
  v8 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v9 = *(v3 + 72);
  v28 = 0x8000000232D06E80;
  v29 = 0x8000000232D06E60;
  v27 = 0x8000000232D06EA0;
  v32 = xmmword_232CF6460;
  v31 = xmmword_232CF5E60;
  v30 = v9;
  while (1)
  {
    sub_232BC1980(v8, v5);
    if ((v7[8] & 1) == 0)
    {
      v10 = &v5[v2[20]];
      if ((v10[8] & 1) == 0)
      {
        break;
      }
    }

    sub_232BC1C74();
LABEL_19:
    v8 += v9;
    if (!--v6)
    {
      goto LABEL_20;
    }
  }

  v11 = *v7;
  v12 = *v10;
  v35 = 3;
  sub_232B124A8(&qword_27DDC6B30, &unk_232CF8960);
  v13 = swift_allocObject();
  *(v13 + 16) = v32;
  v14 = v2;
  v15 = v5[v2[8]] - 2;
  v16 = 0x6374614D44444753;
  v17 = 0xED00006574614468;
  switch(v15)
  {
    case 0:
      v18 = 0x656E6F685068;
      goto LABEL_9;
    case 1:
      v17 = 0xED00006B6E694C68;
      break;
    case 2:
      v16 = 0xD000000000000016;
      v17 = v27;
      break;
    case 3:
      break;
    case 6:
      v16 = 0xD000000000000015;
      v17 = v28;
      break;
    case 7:
      v17 = 0xEF746867696C4668;
      break;
    case 8:
      v16 = 0xD000000000000011;
      v17 = v29;
      break;
    default:
      v16 = 0x6374614D44444753;
      v18 = 0x726568744F68;
LABEL_9:
      v17 = v18 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
      break;
  }

  v33 = 24388;
  v34 = 0xE200000000000000;
  MEMORY[0x238391C30](v16, v17);

  v19 = v34;
  *(v13 + 32) = v33;
  *(v13 + 40) = v19;
  sub_232B124A8(&qword_27DDC6B68, &qword_232CF6EF0);
  v20 = swift_allocObject();
  *(v20 + 16) = v31;
  *(v20 + 32) = v11;
  if (!__OFADD__(v11, v12))
  {
    v21 = v20;
    *(v20 + 40) = v11 + v12;
    v22 = &v5[v14[18]];
    v23 = *v22;
    v24 = v22[1];
    type metadata accessor for TaggedCharacterRange();
    swift_allocObject();
    sub_232C6A8CC(&v35, v13, v21, v23, v24, MEMORY[0x277D84F90]);

    v25 = sub_232BC1C74();
    MEMORY[0x238391D50](v25);
    v26 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18);
    if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v26 >> 1)
    {
      sub_232BC1BBC(v26);
      sub_232CEA000();
    }

    sub_232CEA020();
    v2 = v14;
    v9 = v30;
    goto LABEL_19;
  }

  __break(1u);
}

uint64_t sub_232BBB968(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v13 = 0;
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_232CEA610())
  {
    result = MEMORY[0x277D84F90];
    if (!i)
    {
      break;
    }

    v12 = MEMORY[0x277D84F90];
    sub_232CEA580();
    if (i < 0)
    {
      __break(1u);

      __break(1u);
      return result;
    }

    for (j = 0; ; ++j)
    {
      v7 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if ((a3 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x2383922C0](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v8 = *(a3 + 8 * j + 32);
      }

      v9 = v8;
      v10 = v8;
      sub_232BBBAC0(&v10, &v13, &v11);

      sub_232CEA560();
      sub_232CEA590();
      sub_232CEA5A0();
      sub_232CEA570();
      if (v7 == i)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return result;
}

void sub_232BBBAC0(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = (*a1 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_text);
  swift_beginAccess();
  if (v6[1])
  {

    v7 = sub_232CE9E60();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
    goto LABEL_25;
  }

  v9 = __OFADD__(*a2, v8);
  v10 = *a2 + v8;
  if (v9)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  *a2 = v10;
  v31 = 1;
  v11 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_styleProperties;
  swift_beginAccess();
  v12 = *(v5 + v11);
  if (v12)
  {
    v13 = *(v12 + 16);
    v14 = MEMORY[0x277D84F90];
    if (v13)
    {
      v29 = a3;
      v30 = MEMORY[0x277D84F90];

      sub_232B649F4(0, v13, 0);
      v14 = v30;
      v15 = (v12 + 40);
      do
      {
        v16 = *(v15 - 1);
        v17 = *v15;

        MEMORY[0x238391C30](v16, v17);

        v19 = *(v30 + 16);
        v18 = *(v30 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_232B649F4(v18 > 1, v19 + 1, 1);
        }

        *(v30 + 16) = v19 + 1;
        v20 = v30 + 16 * v19;
        *(v20 + 32) = 24387;
        *(v20 + 40) = 0xE200000000000000;
        v15 += 2;
        --v13;
      }

      while (v13);

      a3 = v29;
    }
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  sub_232B124A8(&qword_27DDC6B68, &qword_232CF6EF0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_232CF5E60;
  v22 = *a2;
  if (v6[1])
  {

    v23 = sub_232CE9E60();
  }

  else
  {
    v23 = 0;
  }

  v24 = v22 - v23;
  if (__OFSUB__(v22, v23))
  {
    goto LABEL_26;
  }

  v9 = __OFSUB__(v24, 1);
  v25 = v24 - 1;
  if (v9)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  *(v21 + 32) = v25;
  if (__OFSUB__(*a2, 1))
  {
LABEL_28:
    __break(1u);
    return;
  }

  *(v21 + 40) = *a2 - 1;
  v26 = v6[1];
  if (v26)
  {
    v27 = *v6;
    v28 = v26;
  }

  else
  {
    v27 = 0;
    v28 = 0xE000000000000000;
  }

  type metadata accessor for TaggedCharacterRange();
  swift_allocObject();
  *a3 = sub_232C6A8CC(&v31, v14, v21, v27, v28, MEMORY[0x277D84F90]);
}

void sub_232BBBDA0()
{
  sub_232B35110();
  v1 = v0;
  v3 = v2;
  sub_232CE9A30();
  sub_232B48F0C();
  MEMORY[0x28223BE20](v4);
  sub_232B20704();
  v5 = *(v3 + 16);
  if (v5)
  {
    v6 = sub_232CEA010();
    *(v6 + 16) = v5;
    v7 = 8 * v5;
    v8 = v6;
    bzero((v6 + 32), v7);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v9 = *(v1 + 16);
  if (!v9)
  {
LABEL_20:
    sub_232B20A00();
    return;
  }

  v28 = v8 + 32;
  v10 = (v1 + 40);
  v27 = v8;
  while (1)
  {
    v12 = *(v10 - 1);
    v11 = *v10;
    v13 = sub_232BC1EB4();
    v15 = sub_232BBC048(v13, v14, v3);
    if (v16)
    {
      if (v12 != 0x676761544C4E5F4CLL || v11 != 0xEF6E656B6F547265)
      {
        sub_232BC1EB4();
        if ((sub_232CEA750() & 1) == 0)
        {

          sub_232CE9A20();

          v18 = sub_232CE9A00();
          v19 = sub_232CEA1C0();

          if (os_log_type_enabled(v18, v19))
          {
            v20 = sub_232BC1F80();
            v29 = swift_slowAlloc();
            *v20 = 136315138;
            v21 = sub_232BC1EB4();
            v24 = sub_232BAD2D4(v21, v22, v23);

            *(v20 + 4) = v24;
            _os_log_impl(&dword_232B02000, v18, v19, "DUFoundInEventMultilingualBERTImplementation: unexpected multihot feature %s", v20, 0xCu);
            sub_232B2040C(v29);
            v8 = v27;
            sub_232BA6A84();
            sub_232BA6A84();
          }

          else
          {
          }

          v25 = sub_232BC1E48();
          v26(v25);
        }
      }

      goto LABEL_19;
    }

    if ((v15 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v15 >= *(v8 + 16))
    {
      goto LABEL_22;
    }

    *(v28 + 8 * v15) = 0x3FF0000000000000;
LABEL_19:
    v10 += 2;
    if (!--v9)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
}

uint64_t sub_232BBC048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = *(a3 + 16);
  v7 = (a3 + 40);
  while (v6 != v5)
  {
    v8 = *(v7 - 1) == a1 && *v7 == a2;
    if (v8 || (sub_232CEA750() & 1) != 0)
    {
      return v5;
    }

    ++v5;
    v7 += 2;
  }

  return 0;
}

uint64_t sub_232BBC0D4(uint64_t a1, double a2)
{
  for (i = 0; ; ++i)
  {
    if (*(a1 + 16) == i)
    {
      return 0;
    }

    if (*(a1 + 32 + 8 * i) == a2)
    {
      break;
    }
  }

  return i;
}

void *sub_232BBC114(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_27;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_232CEA610())
  {
    v3 = MEMORY[0x277D84F90];
    if (!i)
    {
      return v3;
    }

    v24 = MEMORY[0x277D84F90];
    result = sub_232B64A9C(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v5 = 0;
    v3 = v24;
    v21 = v1 & 0xC000000000000001;
    v6 = v1;
    while (1)
    {
      if (v21)
      {
        v7 = MEMORY[0x2383922C0](v5, v1);
      }

      else
      {
        v7 = *(v1 + 8 * v5 + 32);
      }

      sub_232B13F74(v7 + 56, v23);
      v8 = *(v7 + 56);
      sub_232B13F74(v7 + 24, v22);

      sub_232BBBDA0();
      v10 = v9;

      v11 = *(v10 + 16);
      v1 = *(v8 + 16);
      if (__OFADD__(v1, v11))
      {
        break;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || (v12 = *(v8 + 24) >> 1, v12 < (v1 + v11)))
      {
        sub_232B35ABC();
        v8 = v13;
        v12 = *(v13 + 24) >> 1;
      }

      if (*(v10 + 16))
      {
        v14 = *(v8 + 16);
        if (v12 - v14 < v11)
        {
          goto LABEL_25;
        }

        memcpy((v8 + 8 * v14 + 32), (v10 + 32), 8 * v11);

        if (v11)
        {
          v15 = *(v8 + 16);
          v16 = __OFADD__(v15, v11);
          v17 = v15 + v11;
          if (v16)
          {
            goto LABEL_26;
          }

          *(v8 + 16) = v17;
        }
      }

      else
      {

        if (v11)
        {
          goto LABEL_24;
        }
      }

      v24 = v3;
      v19 = *(v3 + 16);
      v18 = *(v3 + 24);
      if (v19 >= v18 >> 1)
      {
        v20 = sub_232BC1BBC(v18);
        sub_232B64A9C(v20, v19 + 1, 1);
        v3 = v24;
      }

      ++v5;
      *(v3 + 16) = v19 + 1;
      *(v3 + 8 * v19 + 32) = v8;
      v1 = v6;
      if (i == v5)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    ;
  }

  __break(1u);
  return result;
}

uint64_t sub_232BBC34C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_232BBC3E4(a2);
  if (!v7)
  {
    v6 = 79;
    v7 = 0xE100000000000000;
  }

  result = sub_232BCA52C(v6, v7, a3);
  v9 = result;
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {

    sub_232BB7DA0(0, a3, a1, &v9, a2);
    return v9;
  }

  return result;
}

uint64_t sub_232BBC3E4(uint64_t a1)
{
  v3 = *(a1 + 16);
  v1 = a1 + 16;
  v2 = v3;
  if (!v3)
  {
    return 0;
  }

  v4 = *(v1 + 16 * v2);

  return v4;
}

void sub_232BBC42C(unint64_t *a1, unint64_t a2, uint64_t *a3, int64_t a4)
{
  v10 = sub_232CE9A30();
  MEMORY[0x28223BE20](v10);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = *a1;
  v18 = 12 * *a1;
  if ((*a1 * 12) >> 64 != v18 >> 63)
  {
    __break(1u);
    goto LABEL_30;
  }

  v19 = 12 * (v17 + 1);
  if (((v17 + 1) * 12) >> 64 != v19 >> 63)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v19 < v18)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v47 = a4;
  v48 = a3;
  v49 = &v46 - v14;
  v50 = v16;
  v51 = v15;
  sub_232BB7F84(v18, v19, a2);
  a4 = v20;
  v4 = v21;
  v5 = v22;
  a2 = v23;
  if ((v23 & 1) == 0)
  {
LABEL_5:
    sub_232BD32A4(a4, v4, v5, a2);
    v25 = v24;
    goto LABEL_12;
  }

  sub_232CEA770();
  swift_unknownObjectRetain_n();
  v26 = swift_dynamicCastClass();
  if (!v26)
  {
    swift_unknownObjectRelease();
    v26 = MEMORY[0x277D84F90];
  }

  v27 = *(v26 + 16);

  if (__OFSUB__(a2 >> 1, v5))
  {
    goto LABEL_32;
  }

  if (v27 != (a2 >> 1) - v5)
  {
LABEL_33:
    swift_unknownObjectRelease();
    goto LABEL_5;
  }

  v25 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (v25)
  {
    goto LABEL_13;
  }

  v25 = MEMORY[0x277D84F90];
LABEL_12:
  swift_unknownObjectRelease();
LABEL_13:
  v28 = sub_232B61ED8(v25);
  if (v29)
  {

    sub_232CE9A20();
    v30 = sub_232CE9A00();
    v31 = sub_232CEA1C0();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 134217984;
      *(v32 + 4) = v17;
      _os_log_impl(&dword_232B02000, v30, v31, "DUFoundInEventMultilingualBERTImplementation: cannot find max value element for token %ld", v32, 0xCu);
      MEMORY[0x238393870](v32, -1, -1);
    }

    (*(v50 + 8))(v12, v51);
    return;
  }

  v33 = *&v28;
  v34 = sub_232BBC0D4(v25, *&v28);
  v36 = v35;

  if ((v36 & 1) == 0)
  {
    if (v33 <= 0.0)
    {
      return;
    }

    if ((v34 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v36 = v48;
      if (v34 < *(v47 + 16))
      {
        v41 = v47 + 16 * v34;
        v34 = *(v41 + 32);
        v25 = *(v41 + 40);
        v42 = *v48;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v36 = v42;
        if (isUniquelyReferenced_nonNull_native)
        {
          if ((v17 & 0x8000000000000000) == 0)
          {
            goto LABEL_27;
          }

          goto LABEL_37;
        }

LABEL_36:
        sub_232C237E0();
        v42 = v45;
        *v36 = v45;
        if ((v17 & 0x8000000000000000) == 0)
        {
LABEL_27:
          if (v17 < *(v42 + 16))
          {
            v44 = v42 + 16 * v17;
            *(v44 + 32) = v34;
            *(v44 + 40) = v25;

            return;
          }

          goto LABEL_38;
        }

LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        return;
      }
    }

    __break(1u);
    goto LABEL_36;
  }

  v37 = v49;
  sub_232CE9A20();
  v38 = sub_232CE9A00();
  v39 = sub_232CEA1C0();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_232B02000, v38, v39, "DUFoundInEventMultilingualBERTImplementation: cannot find matched max value element for token prediction", v40, 2u);
    MEMORY[0x238393870](v40, -1, -1);
  }

  (*(v50 + 8))(v37, v51);
}

void sub_232BBC834(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_232CE9A30();
  sub_232B48F0C();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v41 - v13;
  if (!is_mul_ok(a3, 0x29DuLL))
  {
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  v15 = *(a2 + 16);
  if (v15 == 669 * a3)
  {
    v16 = sub_232BB7FF0(a2);
    v17 = sub_232BC15E4(v16, 669, 12, a3, a1);
    if (v17)
    {
      v18 = v17;
      v19 = sub_232B26B10();
      if (!v19)
      {
LABEL_13:

        return;
      }

      v20 = v19;
      v42 = MEMORY[0x277D84F90];
      sub_232B64A58(0, v19 & ~(v19 >> 63), 0);
      if ((v20 & 0x8000000000000000) == 0)
      {
        v21 = 0;
        v22 = v42;
        do
        {
          if ((v18 & 0xC000000000000001) != 0)
          {
            v23 = MEMORY[0x2383922C0](v21, v18);
          }

          else
          {
            v23 = *(v18 + 8 * v21 + 32);
          }

          v24 = v23;
          sub_232CEA0A0();
          v26 = v25;

          v42 = v22;
          v28 = *(v22 + 16);
          v27 = *(v22 + 24);
          if (v28 >= v27 >> 1)
          {
            v29 = sub_232BC1BBC(v27);
            sub_232B64A58(v29, v28 + 1, 1);
            v22 = v42;
          }

          ++v21;
          *(v22 + 16) = v28 + 1;
          *(v22 + 8 * v28 + 32) = v26;
        }

        while (v20 != v21);
        goto LABEL_13;
      }

      goto LABEL_23;
    }

    sub_232CE9A20();
    v38 = sub_232CE9A00();
    v39 = sub_232CEA1C0();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = sub_232BA73DC();
      *v40 = 0;
      _os_log_impl(&dword_232B02000, v38, v39, "DUFoundInEventMultilingualBERTImplementation: Fail to run lstmPredictions with modelHeadWrapper", v40, 2u);
      sub_232BA6A84();
    }

    (*(v8 + 8))(v11, v6);
  }

  else
  {
    sub_232CE9A20();

    v30 = sub_232CE9A00();
    v31 = sub_232CEA1C0();
    if (sub_232BC1E54(v31))
    {
      v32 = sub_232BC1F80();
      *v32 = 134217984;
      *(v32 + 4) = v15;

      sub_232BC1CB8();
      _os_log_impl(v33, v34, v35, v36, v37, 0xCu);
      sub_232B26D28();
    }

    else
    {
    }

    (*(v8 + 8))(v14, v6);
  }
}

void sub_232BBCB44()
{
  sub_232B35110();
  v1 = sub_232CE9A30();
  sub_232B48F0C();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  sub_232B20704();
  v7 = v6 - v5;
  v8 = sub_232B124A8(&qword_27DDC68A8, &qword_232CFA960);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v35 - v9;
  sub_232CE8E10();
  sub_232B48F0C();
  MEMORY[0x28223BE20](v11);
  sub_232B20704();
  v16 = v15 - v14;
  v17 = *(v0 + 16);
  if (!v17)
  {
    sub_232CE9A20();
    v32 = sub_232CE9A00();
    v33 = sub_232CEA1C0();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = sub_232BA73DC();
      *v34 = 0;
      _os_log_impl(&dword_232B02000, v32, v33, "DUFoundInEventMultilingualBERTImplementation: NLContextualEmbedding not available", v34, 2u);
      sub_232BA6A84();
    }

    (*(v3 + 8))(v7, v1);
    goto LABEL_10;
  }

  v35 = v10;
  v37 = v13;
  v38 = v12;
  v36 = v17;
  sub_232BDB73C(v36);
  if (v18)
  {
    sub_232CE8D50();
    sub_232BC1ECC();
    v19 = swift_allocObject();
    *(v19 + 16) = 0;
    v20 = swift_allocObject();
    *(v20 + 16) = 0;
    v21 = (v20 + 16);
    v22 = swift_allocObject();
    *(v22 + 16) = 0;
    v23 = sub_232CE8DA0();
    sub_232BC1E0C();
    v24 = swift_allocObject();
    v24[2] = v19;
    v24[3] = v22;
    v24[4] = v20;
    v41[4] = sub_232BC16E4;
    v41[5] = v24;
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 1107296256;
    v41[2] = sub_232BDAEC8;
    v41[3] = &unk_284811EF0;
    v25 = _Block_copy(v41);

    LDEnumerateAssetDataItems();
    _Block_release(v25);

    sub_232B13F74(v22 + 16, v41);
    if (*(v22 + 16) == 1 && (sub_232B13F74(v21, &v40), (*v21 & 1) != 0))
    {
      (*(v37 + 8))(v16, v38);

      sub_232B13F74(v19 + 16, &v39);
      v26 = *(v19 + 16);
    }

    else
    {
      v27 = sub_232CEA090();
      v28 = v35;
      sub_232B12504(v35, 1, 1, v27);
      sub_232BC1E0C();
      v29 = swift_allocObject();
      v29[2] = 0;
      v29[3] = 0;
      v30 = v36;
      v29[4] = v36;
      v31 = v30;
      sub_232BBD6CC(0, 0, v28, &unk_232CFA970, v29);

      (*(v37 + 8))(v16, v38);
    }

LABEL_10:
    sub_232B20A00();
    return;
  }

  __break(1u);
}

void sub_232BBCF90(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = sub_232B124A8(&qword_27DDC6AD8, &unk_232CF82F0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v48 - v14;
  v16 = sub_232CE8C00();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v48 - v21;
  MEMORY[0x28223BE20](v23);
  v29 = &v48 - v28;
  if (a4)
  {
    v48 = a6;
    v49 = a7;
    v51 = v15;
    v52 = v24;
    v50 = a8;
    type metadata accessor for CFString(0, v25, v26, v27);
    v30 = a4;
    v31 = sub_232CE9D20();
    sub_232BC1928(v31, v32, v33, v34);
    v35 = sub_232CE8F80();

    if ((v35 & 1) != 0 && a1)
    {
      sub_232CE8BB0();
      v36 = v22;
      v37 = v52;
      (*(v17 + 32))(v29, v36, v52);
      sub_232BA4DEC(0, &qword_2814DF8C8, 0x277CCA8D8);
      (*(v17 + 16))(v19, v29, v37);
      v38 = sub_232BBD328(v19);

      (*(v17 + 8))(v29, v37);
      v39 = v48;
      swift_beginAccess();
      v40 = *(v39 + 16);
      *(v39 + 16) = v38;

      v41 = v49;
      swift_beginAccess();
      *(v41 + 16) = 1;
    }

    else
    {
    }

    v42 = v30;
    v43 = sub_232CE9D20();
    v44 = sub_232CE8F80();

    if (v44)
    {
      if (a1)
      {
        v45 = v51;
        sub_232CE8BB0();

        sub_232B12504(v45, 0, 1, v52);
        sub_232BA4D50(v45, &qword_27DDC6AD8, &unk_232CF82F0);
        v46 = v50;
        swift_beginAccess();
        *(v46 + 16) = 1;
      }

      else
      {

        v47 = v51;
        sub_232B12504(v51, 1, 1, v52);
        sub_232BA4D50(v47, &qword_27DDC6AD8, &unk_232CF82F0);
      }
    }

    else
    {
    }
  }
}

id sub_232BBD328(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_232CE8B90();
  v4 = [v2 initWithURL_];

  sub_232CE8C00();
  sub_232BA5190();
  (*(v5 + 8))(a1);
  return v4;
}

uint64_t sub_232BBD3D8()
{
  sub_232B26C7C();
  v1 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_232BBD4F0;
  v2 = swift_continuation_init();
  v0[17] = sub_232B124A8(&qword_27DDC7670, &unk_232CFA978);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_232BBD66C;
  v0[13] = &unk_284811F40;
  v0[14] = v2;
  [v1 requestAssetsWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_232BBD4F0()
{
  sub_232B26C44();
  sub_232B26C70();
  sub_232BC1BAC();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 160) = *(v3 + 48);
  sub_232B48304();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_232BBD604()
{
  sub_232B26C7C();
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_232BBD66C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_232B203C8((a1 + 32), *(a1 + 56));
  if (a3)
  {
    return sub_232BB7EFC(*v5, a3);
  }

  else
  {
    return sub_232BB7F64(*v5, a2);
  }
}

uint64_t sub_232BBD6CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_232B124A8(&qword_27DDC68A8, &qword_232CFA960);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v21 - v9;
  sub_232BC18A0(a3, v21 - v9);
  v11 = sub_232CEA090();
  v12 = sub_232B12480(v10, 1, v11);

  if (v12 == 1)
  {
    sub_232BA4D50(v10, &qword_27DDC68A8, &qword_232CFA960);
  }

  else
  {
    sub_232CEA080();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  v13 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v13)
  {
    swift_getObjectType();
    v14 = sub_232CEA050();
    v16 = v15;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v17 = sub_232CE9DE0() + 32;

      if (v16 | v14)
      {
        v22[0] = 0;
        v22[1] = 0;
        v18 = v22;
        v22[2] = v14;
        v22[3] = v16;
      }

      else
      {
        v18 = 0;
      }

      v21[1] = 7;
      v21[2] = v18;
      v21[3] = v17;
      v19 = swift_task_create();

      sub_232BA4D50(a3, &qword_27DDC68A8, &qword_232CFA960);

      return v19;
    }
  }

  else
  {
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_232BA4D50(a3, &qword_27DDC68A8, &qword_232CFA960);
  if (v16 | v14)
  {
    v22[4] = 0;
    v22[5] = 0;
    v22[6] = v14;
    v22[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_232BBD94C()
{
  sub_232B26C44();
  v1[50] = v2;
  v1[51] = v0;
  v3 = sub_232CE9A30();
  v1[52] = v3;
  sub_232B27FBC(v3);
  v1[53] = v4;
  v1[54] = swift_task_alloc();
  v1[55] = type metadata accessor for FoundInEventModelOutput(0);
  v1[56] = swift_task_alloc();
  v5 = sub_232CE9700();
  v1[57] = v5;
  sub_232B27FBC(v5);
  v1[58] = v6;
  v1[59] = swift_task_alloc();
  v1[60] = swift_task_alloc();
  v7 = sub_232CE8C00();
  v1[61] = v7;
  sub_232B27FBC(v7);
  v1[62] = v8;
  v1[63] = swift_task_alloc();
  sub_232B48304();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_232BBDB0C()
{
  v1 = 0xD000000000000043;
  sub_232CE9810();
  if (sub_232CE97B0())
  {
    if (*(v0[50] + 24))
    {
      type metadata accessor for DUFoundInEventHTMLPreprocessingSpecification();
      v0[64] = swift_allocObject();
      v2 = swift_task_alloc();
      v0[65] = v2;
      *v2 = v0;
      v2[1] = sub_232BBDCE0;
      v3 = sub_232BC1EF8(v0[50]);

      return v4(v3);
    }

    v6 = "undInModels are disabled";
  }

  else
  {
    v6 = "mentation";
    v1 = 0xD000000000000048;
  }

  v7 = v6 | 0x8000000000000000;
  sub_232B4A95C();
  sub_232B4EC24(&type metadata for DUProcessingPhaseImplementationBaseError);
  *v8 = v1;
  *(v8 + 8) = v7;
  *(v8 + 16) = 0;
  sub_232BC1CF0();

  sub_232BB189C();
  v9 = sub_232B5F000();

  return v10(v9);
}

uint64_t sub_232BBDCE0()
{
  sub_232B26C44();
  sub_232BC1BAC();
  *v2 = v1;
  v3 = *v0;
  sub_232B482C0();
  *v4 = v3;
  *(v6 + 528) = v5;

  sub_232B48304();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_232BBDE18()
{
  v1 = *(v0 + 528);
  if (!v1)
  {
    sub_232B4A95C();
    sub_232B4EC24(&type metadata for DUProcessingPhaseImplementationBaseError);
    *v24 = 0xD000000000000020;
    *(v24 + 8) = 0x8000000232D06770;
    *(v24 + 16) = 0;
    goto LABEL_15;
  }

  v2 = *(v0 + 400);
  v3 = *(v2 + 24);
  *(v2 + 24) = v1;
  v4 = v1;

  if (*(v2 + 24) && (*(v0 + 536) = sub_232B5821C(), (*(v0 + 544) = v5) != 0))
  {
    sub_232BBCB44();
    *(v0 + 552) = v6;
    if (v6)
    {
      v7 = v6;
      v8 = [objc_allocWithZone(MRLNeuralNetworkWrapper) init];
      *(v0 + 560) = v8;
      v9 = sub_232CE9D20();
      v10 = sub_232CE9D20();
      v11 = [v7 pathForResource:v9 ofType:v10];

      if (v11)
      {
        v12 = [v8 load_];

        if (v12)
        {
          sub_232BC1F60();
          v13 = sub_232BC1D2C();
          v14 = sub_232BC1ED8();
          v16 = [v14 v15];

          if (!v16)
          {

            sub_232BC1D48();
            sub_232B4EC24(&type metadata for DUProcessingPhaseImplementationBaseError);
            sub_232BC1C9C(v29, 0xD000000000000049);

            goto LABEL_15;
          }

          v17 = sub_232CE9D50();
          v19 = v18;

          sub_232BA4DEC(0, &qword_2814DF930, 0x277CBEAC0);
          v20 = sub_232BD748C(v17, v19);
          *(v0 + 568) = v20;
          if (v20)
          {
            v91 = v8;
            *(v0 + 304) = 67;
            *(v0 + 312) = 0xE100000000000000;
            v21 = [v20 __swift_objectForKeyedSubscript_];
            swift_unknownObjectRelease();
            if (v21)
            {
              sub_232CEA420();
              swift_unknownObjectRelease();
            }

            else
            {
              v92 = 0u;
              v93 = 0u;
            }

            *(v0 + 16) = v92;
            *(v0 + 32) = v93;
            if (*(v0 + 40))
            {
              sub_232B124A8(&qword_27DDC7640, &qword_232CFA938);
              if (swift_dynamicCast())
              {
                *(v0 + 576) = *(v0 + 352);
                *(v0 + 320) = 68;
                *(v0 + 328) = 0xE100000000000000;
                v90 = v20;
                v30 = [v20 __swift_objectForKeyedSubscript_];
                swift_unknownObjectRelease();
                if (v30)
                {
                  sub_232CEA420();
                  swift_unknownObjectRelease();
                }

                else
                {
                  v92 = 0u;
                  v93 = 0u;
                }

                *(v0 + 48) = v92;
                *(v0 + 64) = v93;
                if (*(v0 + 72))
                {
                  if (swift_dynamicCast())
                  {
                    *(v0 + 584) = *(v0 + 360);
                    sub_232CE9D20();
                    v32 = sub_232BC1D2C();
                    v33 = sub_232BC1ED8();
                    v35 = [v33 v34];

                    if (v35)
                    {
                      v36 = sub_232CE9D50();
                      v38 = v37;

                      v89 = sub_232BD748C(v36, v38);
                      *(v0 + 592) = v89;
                      sub_232BC1F60();
                      v39 = sub_232BC1D2C();
                      v40 = sub_232BC1ED8();
                      v42 = [v40 v41];

                      if (v42)
                      {
                        v43 = sub_232CE9D50();
                        v45 = v44;

                        v46 = sub_232BD748C(v43, v45);
                        *(v0 + 600) = v46;
                        sub_232CE9D20();
                        v47 = sub_232BC1D2C();
                        v48 = sub_232BC1ED8();
                        v50 = [v48 v49];

                        if (v50)
                        {
                          v88 = v46;
                          sub_232CE9D50();

                          sub_232CE8B70();

                          sub_232CE8C20();
                          v51 = v91;
                          v59 = v58;
                          v60 = sub_232BC1E48();
                          v62 = v61;
                          v63(v60);
                          v64 = objc_opt_self();
                          v86 = v62;
                          v87 = v59;
                          sub_232BC1E18();
                          v65 = sub_232CE8C50();
                          *(v0 + 376) = 0;
                          v66 = [v64 propertyListWithData:v65 options:0 format:0 error:v0 + 376];

                          v67 = *(v0 + 376);
                          if (!v66)
                          {
                            v70 = v67;
                            v71 = sub_232CE8B30();

                            v85 = v71;
                            swift_willThrow();
                            sub_232CE9A20();
                            v72 = sub_232CE9A00();
                            v73 = sub_232CEA1C0();
                            v74 = sub_232BC1E54(v73);
                            v75 = *(v0 + 424);
                            v83 = *(v0 + 416);
                            v84 = *(v0 + 432);
                            if (v74)
                            {
                              v76 = sub_232BA73DC();
                              *v76 = 0;
                              _os_log_impl(&dword_232B02000, v72, v73, "DUFoundInEventMultilingualBERTImplementation: error parsing tokenOutputMapping", v76, 2u);
                              sub_232BA6A84();
                            }

                            sub_232B41BEC(v86, v87);

                            (*(v75 + 8))(v84, v83);
                            v52 = MEMORY[0x277D84F90];
LABEL_62:
                            v77 = v90;
                            *(v0 + 616) = v52;
                            *(v0 + 608) = 0;
                            if (v89)
                            {
                              *(v0 + 336) = 0x6E656B6F74;
                              *(v0 + 344) = 0xE500000000000000;
                              v78 = [v89 __swift_objectForKeyedSubscript_];
                              swift_unknownObjectRelease();
                              if (v78)
                              {
                                sub_232CEA420();
                                swift_unknownObjectRelease();
                              }

                              else
                              {
                                v92 = 0u;
                                v93 = 0u;
                              }

                              *(v0 + 80) = v92;
                              *(v0 + 96) = v93;
                              if (*(v0 + 104))
                              {
                                sub_232B124A8(&qword_27DDC7648, &unk_232CFA940);
                                if (swift_dynamicCast())
                                {
                                  *(v0 + 624) = *(v0 + 368);
                                  type metadata accessor for DUFoundInEventDDSpecification();
                                  *(v0 + 632) = swift_allocObject();
                                  v79 = swift_task_alloc();
                                  *(v0 + 640) = v79;
                                  *v79 = v0;
                                  v79[1] = sub_232BBEB90;
                                  sub_232BC1EF8(*(v0 + 400));
                                  sub_232BC1DA8();

                                  __asm { BR              X1 }
                                }

                                v77 = v90;
                                goto LABEL_75;
                              }

                              v77 = v90;
                            }

                            else
                            {

                              *(v0 + 80) = 0u;
                              *(v0 + 96) = 0u;
                            }

                            sub_232BA4D50(v0 + 80, &qword_27DDC68C8, &qword_232CF6210);
LABEL_75:
                            sub_232BC1D48();
                            sub_232B4EC24(&type metadata for DUProcessingPhaseImplementationBaseError);
                            sub_232BC1C9C(v82, 0xD000000000000086);

                            v54 = v88;
                            goto LABEL_44;
                          }

                          v68 = v67;
                          sub_232CEA420();
                          swift_unknownObjectRelease();
                          sub_232B124A8(&qword_27DDC7668, &unk_232CFA950);
                          if (swift_dynamicCast())
                          {
                            v69 = *(v0 + 384);
                          }

                          else
                          {
                            v69 = sub_232CE9C60();
                          }

                          sub_232B1E16C(0xD000000000000022, 0x8000000232D06DD0, v69);

                          if (*(v0 + 200))
                          {
                            sub_232B124A8(&qword_27DDC6908, &unk_232CF64D0);
                            if (swift_dynamicCast())
                            {
                              v52 = *(v0 + 392);
                              sub_232B41BEC(v86, v59);
LABEL_61:
                              v51 = v91;
                              goto LABEL_62;
                            }
                          }

                          else
                          {
                            sub_232BA4D50(v0 + 176, &qword_27DDC68C8, &qword_232CF6210);
                          }

                          sub_232B41BEC(v86, v59);
                          v52 = MEMORY[0x277D84F90];
                          goto LABEL_61;
                        }

                        sub_232BC1D48();
                        sub_232B4EC24(&type metadata for DUProcessingPhaseImplementationBaseError);
                        sub_232BC1C9C(v57, 0xD000000000000053);
                      }

                      else
                      {

                        sub_232BC1D48();
                        sub_232B4EC24(&type metadata for DUProcessingPhaseImplementationBaseError);
                        sub_232BC1C9C(v56, 0xD000000000000050);
                      }

                      v54 = v89;
LABEL_44:

LABEL_15:
                      sub_232BC1CF0();

                      sub_232BB189C();
                      sub_232B5F000();
                      sub_232BC1DA8();

                      __asm { BRAA            X3, X16 }
                    }

                    sub_232BC1D48();
                    sub_232B4EC24(&type metadata for DUProcessingPhaseImplementationBaseError);
                    sub_232BC1C9C(v55, 0xD00000000000004ALL);

LABEL_43:
                    v54 = v20;
                    goto LABEL_44;
                  }
                }

                else
                {

                  sub_232BA4D50(v0 + 48, &qword_27DDC68C8, &qword_232CF6210);
                }

                sub_232BC1D48();
                sub_232B4EC24(&type metadata for DUProcessingPhaseImplementationBaseError);
                sub_232BC1C9C(v53, 0xD00000000000004ALL);

                goto LABEL_43;
              }

LABEL_32:
              sub_232BC1D48();
              sub_232B4EC24(&type metadata for DUProcessingPhaseImplementationBaseError);
              sub_232BC1C9C(v31, 0xD00000000000004BLL);

              goto LABEL_15;
            }
          }

          else
          {

            *(v0 + 16) = 0u;
            *(v0 + 32) = 0u;
          }

          sub_232BA4D50(v0 + 16, &qword_27DDC68C8, &qword_232CF6210);
          goto LABEL_32;
        }

        sub_232BC1D48();
        sub_232B4EC24(&type metadata for DUProcessingPhaseImplementationBaseError);
        v28 = 0xD000000000000053;
      }

      else
      {

        sub_232BC1D48();
        sub_232B4EC24(&type metadata for DUProcessingPhaseImplementationBaseError);
        v28 = 0xD000000000000054;
      }

      sub_232BC1C9C(v27, v28);

LABEL_13:
      goto LABEL_15;
    }

    sub_232BC1D48();
    sub_232B4EC24(&type metadata for DUProcessingPhaseImplementationBaseError);
    v23 = 0xD00000000000005ELL;
  }

  else
  {
    sub_232BC1D48();
    sub_232B4EC24(&type metadata for DUProcessingPhaseImplementationBaseError);
    v23 = 0xD000000000000048;
  }

  sub_232BC1C9C(v22, v23);
  goto LABEL_13;
}

uint64_t sub_232BBEB90()
{
  sub_232B26C44();
  sub_232BC1BAC();
  *v2 = v1;
  v3 = *v0;
  sub_232B482C0();
  *v4 = v3;
  *(v6 + 648) = v5;

  sub_232B48304();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_232BBECC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_232BC1F04();
  v33 = *MEMORY[0x277D85DE8];
  if (v14[81])
  {
    v15 = swift_task_alloc();
    v14[82] = v15;
    *v15 = v14;
    v15[1] = sub_232BBEEB8;
    sub_232BC1EF8(v14[67]);
    sub_232B26CB4();

    return sub_232BB9C78();
  }

  else
  {
    v32 = v14[75];
    v18 = v14[74];
    v19 = v14[71];
    v20 = v14[70];
    v21 = v14[69];
    v22 = v14[66];

    sub_232B4A95C();
    sub_232B4EC24(&type metadata for DUProcessingPhaseImplementationBaseError);
    *v23 = 0xD000000000000049;
    *(v23 + 8) = 0x8000000232D06C20;
    *(v23 + 16) = 0;

    sub_232BC1CF0();

    sub_232BB189C();
    sub_232B5F000();
    sub_232B26CB4();

    return v27(v24, v25, v26, v27, v28, v29, v30, v31, a9, v32, v33, a12, a13, a14);
  }
}

uint64_t sub_232BBEEB8()
{
  sub_232B26C44();
  sub_232BC1BAC();
  *v2 = v1;
  v1[35] = v0;
  v1[36] = v3;
  v1[37] = v4;
  *v2 = *v0;
  v1[83] = v3;

  sub_232B48304();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

void sub_232BBEFDC()
{
  v247 = v1;
  v2 = v1;
  v246 = *MEMORY[0x277D85DE8];
  if (!v1[83])
  {
    sub_232BC1EE4();
    v13 = v1[74];
    v230 = v1[71];
    v236 = v14;
    v15 = v1[70];
    v16 = v1[69];
    v17 = v1[66];

    sub_232BC1FB0();
    sub_232B4EC24(&type metadata for DUProcessingPhaseImplementationBaseError);
    sub_232BC1CA8();
    *v19 = v18 - 48;
    *(v19 + 8) = v0;
    *(v19 + 16) = 0;

    goto LABEL_7;
  }

  v213 = v1;
  v3 = v1[50];
  sub_232BA4DEC(0, &qword_27DDC7650, 0x277CD89D8);
  sub_232B124A8(&qword_27DDC7658, &qword_232CFB6D0);
  sub_232BC1E0C();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_232CF6460;
  v5 = *MEMORY[0x277CD8978];
  *(v4 + 32) = *MEMORY[0x277CD8978];
  v6 = v5;
  v212 = sub_232BED070(v4);
  sub_232BBADFC();
  v8 = v7;

  sub_232BBB5C4();
  v235 = v9;
  v11 = MEMORY[0x277D84F90];
  if (*(v3 + 24))
  {
    v9 = sub_232B586E8();
    if (v9)
    {
      v12 = v9;
    }

    else
    {
      v12 = v11;
    }
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v22 = (v2 + 14);
  sub_232BBB968(v9, v10, v12);

  v23 = *(v8 + 16);
  if (v23)
  {
    v24 = sub_232BC1D78();
    sub_232B64ADC(v24, v25, v26);
    type metadata accessor for TaggedCharacterRange();
    v27 = 32;
    v28 = v11;
    do
    {
      v29 = v8;
      v30 = *(v8 + v27);
      v244 = v235;

      sub_232C5E334(v31);
      sub_232C6A93C(v30, v235);
      v33 = v32;

      v35 = *(v28 + 16);
      v34 = *(v28 + 24);
      if (v35 >= v34 >> 1)
      {
        v36 = sub_232BC1BBC(v34);
        sub_232B64ADC(v36, v35 + 1, 1);
      }

      *(v28 + 16) = v35 + 1;
      *(v28 + 8 * v35 + 32) = v33;
      v27 += 8;
      --v23;
      v8 = v29;
    }

    while (v23);
  }

  else
  {

    v28 = MEMORY[0x277D84F90];
  }

  v37 = 0;
  v38 = MEMORY[0x277D84F90];
  v223 = *(v28 + 16);
  v227 = v28;
  v39 = v28 + 32;
  v214 = v28 + 32;
  while (v37 != v223)
  {
    if (v37 >= *(v28 + 16))
    {
      __break(1u);
LABEL_112:
      __break(1u);
LABEL_113:
      __break(1u);
LABEL_114:
      v166 = *(v37 + 648);
      v240 = *(v37 + 600);
      v167 = *(v37 + 592);
      v168 = *(v37 + 568);
      v169 = *(v37 + 560);
      v170 = *(v37 + 552);
      v171 = *(v37 + 528);

      sub_232BC1FB0();
      sub_232B4EC24(&type metadata for DUProcessingPhaseImplementationBaseError);
      sub_232BC1CA8();
      *v172 = v173;
      *(v172 + 8) = v166;
      *(v172 + 16) = 0;

      goto LABEL_7;
    }

    v40 = *(v39 + 8 * v37);
    if (v40 >> 62)
    {
      v41 = sub_232CEA610();
    }

    else
    {
      v41 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v42 = v38 >> 62;
    if (v38 >> 62)
    {
      v43 = sub_232CEA610();
    }

    else
    {
      v43 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v44 = v43 + v41;
    if (__OFADD__(v43, v41))
    {
      goto LABEL_112;
    }

    v231 = v41;
    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v42)
      {
LABEL_31:
        sub_232CEA610();
      }

LABEL_32:
      v38 = sub_232CEA540();
      v45 = v38 & 0xFFFFFFFFFFFFFF8;
      v46 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
      goto LABEL_33;
    }

    if (v42)
    {
      goto LABEL_31;
    }

    v45 = v38 & 0xFFFFFFFFFFFFFF8;
    v46 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
    if (v46 < v44)
    {
      goto LABEL_32;
    }

LABEL_33:
    v237 = (v37 + 1);
    v47 = *(v45 + 16);
    v48 = v46 - v47;
    v49 = v45 + 8 * v47;
    if (v40 >> 62)
    {
      v51 = sub_232CEA610();
      if (v51)
      {
        v52 = v51;
        v53 = sub_232CEA610();
        if (v48 < v53)
        {
          goto LABEL_136;
        }

        if (v52 < 1)
        {
          goto LABEL_137;
        }

        v216 = v53;
        v219 = v45;
        v221 = v38;
        v54 = v49 + 32;
        sub_232B48E4C(&qword_27DDC7660, &qword_27DDC6B60, &qword_232CF8970, MEMORY[0x277D83988]);
        for (i = 0; i != v52; ++i)
        {
          sub_232B124A8(&qword_27DDC6B60, &qword_232CF8970);
          v56 = sub_232B4D044(v22, i, v40);
          v58 = *v57;

          v56(v22, 0);
          *(v54 + 8 * i) = v58;
        }

        v39 = v214;
        v50 = v216;
        v38 = v221;
        goto LABEL_43;
      }

LABEL_47:

      v28 = v227;
      v37 = v237;
      if (v231 > 0)
      {
        goto LABEL_113;
      }
    }

    else
    {
      v50 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v50)
      {
        goto LABEL_47;
      }

      if (v48 < v50)
      {
        goto LABEL_135;
      }

      type metadata accessor for TaggedCharacterRange();
      swift_arrayInitWithCopy();
LABEL_43:

      v28 = v227;
      v37 = v237;
      if (v50 < v231)
      {
        goto LABEL_113;
      }

      if (v50 > 0)
      {
        v59 = *(v45 + 16);
        v60 = __OFADD__(v59, v50);
        v61 = v59 + v50;
        if (v60)
        {
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

        *(v45 + 16) = v61;
      }
    }
  }

  v62 = v213[76];
  v63 = v213[72];
  sub_232BC1C4C();
  swift_bridgeObjectRetain_n();
  v244 = sub_232BD3120(v63);
  sub_232BC0550(&v244, v63);
  if (!v62)
  {
    swift_bridgeObjectRelease_n();
    v64 = v244;
    v65 = *(v244 + 16);
    v222 = v38;
    if (v65)
    {
      v241 = MEMORY[0x277D84F90];
      v66 = sub_232BC1D88();
      sub_232B649F4(v66, v67, v68);
      v69 = v241;
      v70 = v64 + 40;
      do
      {
        v244 = 24387;
        v245 = 0xE200000000000000;

        sub_232BC1E84();

        v71 = v244;
        v72 = v245;
        v74 = *(v241 + 16);
        v73 = *(v241 + 24);
        if (v74 >= v73 >> 1)
        {
          sub_232BC1BBC(v73);
          sub_232BC1E24();
          sub_232B649F4(v76, v77, v78);
        }

        *(v241 + 16) = v74 + 1;
        v75 = v241 + 16 * v74;
        *(v75 + 32) = v71;
        *(v75 + 40) = v72;
        v70 += 16;
        --v65;
      }

      while (v65);

      v38 = v222;
      v39 = v214;
    }

    else
    {

      v69 = MEMORY[0x277D84F90];
    }

    v79 = v213[73];
    sub_232BC1C4C();
    swift_bridgeObjectRetain_n();
    v244 = sub_232BD3120(v79);
    sub_232BC0550(&v244, v79);
    swift_bridgeObjectRelease_n();
    v80 = v244;
    v81 = *(v244 + 16);
    if (v81)
    {
      v242 = MEMORY[0x277D84F90];
      v82 = sub_232BC1D88();
      sub_232B649F4(v82, v83, v84);
      v85 = v242;
      v86 = v80 + 40;
      do
      {
        v244 = 24388;
        v245 = 0xE200000000000000;

        sub_232BC1E84();

        v88 = v244;
        v87 = v245;
        v90 = *(v242 + 16);
        v89 = *(v242 + 24);
        if (v90 >= v89 >> 1)
        {
          sub_232BC1BBC(v89);
          sub_232BC1E24();
          sub_232B649F4(v92, v93, v94);
        }

        *(v242 + 16) = v90 + 1;
        v91 = v242 + 16 * v90;
        *(v91 + 32) = v88;
        *(v91 + 40) = v87;
        v86 += 16;
        --v81;
      }

      while (v81);

      v38 = v222;
      v39 = v214;
    }

    else
    {

      v85 = MEMORY[0x277D84F90];
    }

    v244 = v69;
    sub_232C5E194(v85);
    v95 = *(v227 + 16);
    if (v95)
    {
      v244 = MEMORY[0x277D84F90];
      v96 = sub_232BC1D88();
      sub_232B64ABC(v96, v97, v98);
      v99 = v244;
      do
      {

        v101 = sub_232BBC114(v100);

        v244 = v99;
        v103 = *(v99 + 16);
        v102 = *(v99 + 24);
        if (v103 >= v102 >> 1)
        {
          v104 = sub_232BC1BBC(v102);
          sub_232B64ABC(v104, v103 + 1, 1);
          v99 = v244;
        }

        *(v99 + 16) = v103 + 1;
        *(v99 + 8 * v103 + 32) = v101;
        v39 += 8;
        --v95;
      }

      while (v95);
    }

    else
    {

      v99 = MEMORY[0x277D84F90];
    }

    v105 = *(v99 + 16);
    if (v105)
    {
      v244 = MEMORY[0x277D84F90];
      sub_232B64A9C(0, v105, 0);
      v106 = 0;
      v107 = v244;
      v232 = (v99 + 32);
      v224 = v105;
      do
      {
        v238 = v106 + 1;
        v108 = sub_232B5F000();
        sub_232B25DCC(v108, v109, v99);
        v110 = v232[v106];
        v111 = *(v110 + 16);

        v112 = 0;
        v113 = MEMORY[0x277D84F90];
        while (v111 != v112)
        {
          if (v112 >= *(v110 + 16))
          {
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
            goto LABEL_118;
          }

          v114 = *(v110 + 8 * v112 + 32);
          v115 = *(v114 + 16);
          v116 = *(v113 + 16);
          if (__OFADD__(v116, v115))
          {
            goto LABEL_116;
          }

          if (!swift_isUniquelyReferenced_nonNull_native() || v116 + v115 > *(v113 + 24) >> 1)
          {
            sub_232B35ABC();
            v113 = v117;
          }

          if (*(v114 + 16))
          {
            v118 = *(v113 + 16);
            if ((*(v113 + 24) >> 1) - v118 < v115)
            {
              __break(1u);
LABEL_120:
              v219 = v110;
              if (v118)
              {
                v182 = v222;
                v183 = sub_232B26B10();

                v184 = 0;
                v185 = v238 + 40;
                while (v183 != v184)
                {
                  if ((v222 & 0xC000000000000001) != 0)
                  {
                    v186 = MEMORY[0x2383922C0](v184, v182);
                  }

                  else
                  {
                    if (v184 >= *((v222 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      goto LABEL_145;
                    }

                    v186 = *(v182 + 8 * v184 + 32);
                  }

                  if (v184 >= *(v238 + 16))
                  {
                    goto LABEL_144;
                  }

                  v244 = 24397;
                  v245 = 0xE200000000000000;

                  sub_232BC1E84();

                  v187 = v244;
                  v188 = v245;
                  swift_beginAccess();
                  v189 = *(v186 + 24);
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  *(v186 + 24) = v189;
                  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                  {
                    sub_232BA57A8();
                    sub_232B35ECC();
                    v189 = v194;
                    *(v186 + 24) = v194;
                  }

                  v192 = *(v189 + 16);
                  v191 = *(v189 + 24);
                  if (v192 >= v191 >> 1)
                  {
                    sub_232BC1BBC(v191);
                    sub_232BC1E24();
                    sub_232B35ECC();
                    v189 = v195;
                  }

                  *(v189 + 16) = v192 + 1;
                  v193 = v189 + 16 * v192;
                  *(v193 + 32) = v187;
                  *(v193 + 40) = v188;
                  *(v186 + 24) = v189;
                  swift_endAccess();

                  v185 += 16;
                  ++v184;
                  v182 = v222;
                }

                v202 = v213[75];
                v203 = v213[74];
                v204 = v213[71];
                v205 = v213[69];
                v218 = v213[67];
                v206 = v213[66];
                v207 = v213[60];
                v208 = v213[57];
                v229 = v213[68];
                v234 = v213[56];

                v219(v207, v208);

                v209 = &v107[OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_text];
                sub_232B13F5C(&v107[OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_text], (v213 + 29));
                *v209 = v218;
                v209[1] = v229;

                v210 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_tags;
                sub_232B13F5C(&v107[OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_tags], (v213 + 32));
                *&v107[v210] = v182;

                sub_232BC1C34();
                sub_232BC19E4(v234, v211);
LABEL_7:

                sub_232BB189C();
                sub_232BC1DA8();

                __asm { BRAA            X3, X16 }
              }

LABEL_138:
              v153 = v213[75];
              v196 = v213[74];
              v197 = v213[71];
              v198 = v213[70];
              v199 = v213[69];
              v200 = v213[66];
              v159 = v213[56];
              v219(v213[60], v213[57]);

LABEL_139:

              sub_232BC1C34();
              sub_232BC19E4(v159, v201);

              goto LABEL_7;
            }

            memcpy((v113 + 8 * v118 + 32), (v114 + 32), 8 * v115);

            if (v115)
            {
              v119 = *(v113 + 16);
              v60 = __OFADD__(v119, v115);
              v120 = v119 + v115;
              if (v60)
              {
                goto LABEL_134;
              }

              *(v113 + 16) = v120;
            }
          }

          else
          {

            if (v115)
            {
              goto LABEL_117;
            }
          }

          ++v112;
        }

        v244 = v107;
        v122 = *(v107 + 2);
        v121 = *(v107 + 3);
        if (v122 >= v121 >> 1)
        {
          sub_232BC1BBC(v121);
          sub_232BC1E24();
          sub_232B64A9C(v123, v124, v125);
          v107 = v244;
        }

        *(v107 + 2) = v122 + 1;
        *&v107[8 * v122 + 32] = v113;
        v106 = v238;
      }

      while (v238 != v224);

      v38 = v222;
    }

    else
    {

      v107 = MEMORY[0x277D84F90];
    }

    v243 = MEMORY[0x277D84F90];
    v126 = -*(v107 + 2);
    for (j = 4; v126 + j != 4; ++j)
    {
      if ((j - 4) >= *(v107 + 2))
      {
        __break(1u);
LABEL_142:
        __break(1u);
LABEL_143:
        __break(1u);
LABEL_144:
        __break(1u);
LABEL_145:
        __break(1u);
      }

      if ((j - 4) >= *(v227 + 16))
      {
        goto LABEL_142;
      }

      v128 = *&v107[8 * j];
      v129 = *(v227 + 8 * j);
      if (v129 >> 62)
      {
        v134 = sub_232CEA610();
        if (v134 < 0)
        {
          goto LABEL_143;
        }

        v130 = v134;
      }

      else
      {
        v130 = *((v129 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v131 = v213[70];

      sub_232BBC834(v131, v128, v130);
      v133 = v132;

      if (!v133)
      {
        sub_232BC1EE4();
        v160 = v213[74];
        v161 = v213[71];
        v233 = v213[70];
        v239 = v162;
        v226 = v213[69];
        v163 = v213[66];

        sub_232BC1FB0();
        sub_232B4EC24(&type metadata for DUProcessingPhaseImplementationBaseError);
        sub_232BC1CA8();
        *v165 = v164 - 33;
        *(v165 + 8) = v128;
        *(v165 + 16) = 1;

        goto LABEL_7;
      }

      sub_232C5E268(v133);
    }

    v37 = v213;
    v135 = v213[77];

    v136 = sub_232B26B10();
    v137 = sub_232BBC34C(v243, v135, v136);

    if (v137)
    {
      v140 = sub_232BB8CBC(v138, v139, v137, v213[78]);

      v228 = v213[81];
      v232 = v213[75];
      v111 = v213;
      if (v140)
      {
        v238 = v137;
        v141 = v38;
        v143 = v213[59];
        v142 = v213[60];
        v144 = v213[58];
        v145 = v213[56];
        v217 = v213[57];
        v220 = v213[55];
        v225 = v213[50];
        sub_232BB914C(v213[67], v213[68], v141);
        v215 = sub_232CE96B0();
        v147 = v146;
        sub_232B124A8(&qword_27DDC6908, &unk_232CF64D0);
        v148 = sub_232CE9C60();
        v149 = *(v144 + 16);
        v149(v143, v142, v217);
        *v145 = v215;
        v145[1] = v147;
        v145[2] = v228;
        v145[3] = v148;
        v145[4] = v140;
        v149(v145 + *(v220 + 32), v143, v217);
        v150 = v144;
        v151 = swift_task_alloc();
        *(v151 + 16) = v143;

        v152 = sub_232BCDEA4(sub_232BC16B4, v151, v140);

        v110 = *(v150 + 8);
        (v110)(v143, v217);

        v145[4] = v152;
        v107 = sub_232BB8384(v145, v232);
        LODWORD(v118) = *(v225 + 40);
        if (v118 != 2)
        {
          goto LABEL_120;
        }

        v153 = v213[75];
        v154 = v213[74];
        v155 = v213[71];
        v156 = v213[70];
        v157 = v213[69];
        v158 = v213[66];
        v159 = v213[56];
        (v110)(v213[60], v213[57]);

        goto LABEL_139;
      }

LABEL_118:
      v174 = v111[74];
      v175 = v111[71];
      v176 = v111[70];
      v177 = v111[69];
      v178 = v111[68];
      v179 = v111[66];

      sub_232BC1FB0();
      sub_232B4EC24(&type metadata for DUProcessingPhaseImplementationBaseError);
      sub_232BC1CA8();
      *v180 = v181;
      *(v180 + 8) = v178;
      *(v180 + 16) = 0;

      goto LABEL_7;
    }

    goto LABEL_114;
  }

  sub_232BC1DA8();
}

uint64_t sub_232BC02CC()
{
  sub_232BC1ECC();

  return MEMORY[0x2821FE8D8](v1, v2, v3);
}

uint64_t sub_232BC0324()
{
  sub_232BA4DEC(0, &qword_27DDC76A0, 0x277CD89A8);
  *(v0 + 16) = sub_232BB82CC(0xD000000000000024, 0x8000000232D06F40);
  return v0;
}

uint64_t sub_232BC039C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_232BC0438;

  return sub_232BBD94C();
}

uint64_t sub_232BC0438()
{
  sub_232B26C7C();
  v2 = v1;
  v4 = v3;
  sub_232B26C70();
  v6 = *(v5 + 16);
  v7 = *v0;
  sub_232B482C0();
  *v8 = v7;

  *v6 = v4;
  *(v6 + 8) = v2 & 1;
  v9 = *(v7 + 8);

  return v9();
}

uint64_t sub_232BC0550(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_232BC16D0(v4);
    v4 = v5;
  }

  v6 = *(v4 + 16);
  v8[0] = v4 + 32;
  v8[1] = v6;

  sub_232BC05EC(v8, a2);
  *a1 = v4;
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_232BC05EC(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  swift_bridgeObjectRetain_n();
  result = sub_232CEA710();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        v8 = sub_232CEA010();
        *(v8 + 16) = v7;
      }

      v9[0] = (v8 + 32);
      v9[1] = v7;

      sub_232BC0884(v9, v10, a1, v6, a2);
      *(v8 + 16) = 0;
      swift_bridgeObjectRelease_n();
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    sub_232BC0720(0, v4, 1, a1, a2);
    sub_232BC1C4C();
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_232BC0720(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 != a2)
  {
    v6 = *a4;
    v7 = (*a4 + 16 * a3);
    v8 = result - a3;
    while (2)
    {
      v24 = a3;
      v9 = *(v6 + 16 * a3 + 8);
      v22 = v8;
      v23 = v7;
      do
      {
        v10 = *(v7 - 2);
        if (*(a5 + 16))
        {
          v11 = *(v7 - 1);
          v12 = *v7;

          v13 = sub_232B1F160(v12, v9);
          if (v14 & 1) != 0 && *(a5 + 16) && (v15 = *(*(a5 + 56) + 8 * v13), v16 = sub_232B1F160(v10, v11), (v17))
          {
            v18 = *(*(a5 + 56) + 8 * v16);

            if (v15 >= v18)
            {
              break;
            }
          }

          else
          {
          }
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        v19 = *v7;
        v9 = v7[1];
        *v7 = *(v7 - 1);
        *(v7 - 1) = v9;
        *(v7 - 2) = v19;
        v7 -= 2;
      }

      while (!__CFADD__(v8++, 1));
      a3 = v24 + 1;
      v7 = v23 + 2;
      v8 = v22 - 1;
      if (v24 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }
}

uint64_t sub_232BC0884(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    sub_232BC1C4C();
    swift_bridgeObjectRetain_n();
    v8 = MEMORY[0x277D84F90];
LABEL_111:
    v132 = *a1;
    if (*a1)
    {
      sub_232BC1C4C();
      swift_bridgeObjectRetain_n();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_148;
      }

      goto LABEL_113;
    }

    goto LABEL_154;
  }

  sub_232BC1C4C();
  swift_bridgeObjectRetain_n();
  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v134 = a5;
  while (1)
  {
    v9 = v7++;
    v123 = v9;
    if (v7 >= v6)
    {
      goto LABEL_35;
    }

    v124 = v8;
    v10 = (*a3 + 16 * v9);
    if (*(a5 + 16))
    {
      v11 = v7;
      v13 = *v10;
      v12 = v10[1];

      v14 = sub_232BC1E18();
      v16 = sub_232B1F160(v14, v15);
      if ((v17 & 1) != 0 && *(a5 + 16))
      {
        v18 = v6;
        v19 = *(*(a5 + 56) + 8 * v16);
        v20 = sub_232B1F160(v13, v12);
        if (v21)
        {
          v22 = *(*(a5 + 56) + 8 * v20);

          v23 = v19 < v22;
        }

        else
        {

          v23 = 1;
        }

        LODWORD(v132) = v23;
        v7 = v11;
        v6 = v18;
      }

      else
      {

        LODWORD(v132) = 1;
        v7 = v11;
      }
    }

    else
    {
      LODWORD(v132) = 1;
    }

    v24 = 0;
    v25 = 16 * v123;
    v26 = v10 + 3;
    v128 = v6;
    while (1)
    {
      if (v7 + 1 >= v6)
      {
LABEL_24:
        if (!v132)
        {
LABEL_32:
          ++v7;
          goto LABEL_34;
        }

        if (v7 + 1 >= v123)
        {
          if (v123 <= v7)
          {
            v35 = 0;
            v36 = 16 * v123;
            do
            {
              if (v123 + v35 != v123 + v24 + 1)
              {
                v37 = *a3;
                if (!*a3)
                {
                  goto LABEL_152;
                }

                v38 = (v37 + v36);
                v39 = v37 + v25;
                v40 = *v38;
                v41 = v38[1];
                *v38 = *(v39 + 16);
                *(v39 + 16) = v40;
                *(v39 + 24) = v41;
              }

              --v24;
              ++v35;
              v25 -= 16;
              v36 += 16;
            }

            while (v35 + v123 < v123 + v24 + 2);
          }

          goto LABEL_32;
        }

        __break(1u);
LABEL_150:
        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_151:

        __break(1u);
LABEL_152:
        sub_232BC1C4C();
        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_153:
        sub_232BC1C4C();
        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_154:
        sub_232BC1C4C();
        result = swift_bridgeObjectRelease_n();
        __break(1u);
        return result;
      }

      if (!*(a5 + 16))
      {
        goto LABEL_22;
      }

      v27 = sub_232BC1E18();
      sub_232B1F160(v27, v28);
      a5 = v134;
      if ((v29 & 1) == 0)
      {
        break;
      }

      if (!*(v134 + 16))
      {
        break;
      }

      v30 = sub_232BC1E30();
      v32 = sub_232B1F160(v30, v31);
      a5 = v134;
      if ((v33 & 1) == 0)
      {
        break;
      }

      v34 = *(*(v134 + 56) + 8 * v32);

      v6 = v128;
      if (v132 == v127 >= v34)
      {
        goto LABEL_24;
      }

LABEL_23:
      v26 += 2;
      ++v7;
      ++v24;
      v25 += 16;
    }

    v6 = v128;
LABEL_22:
    if (v132)
    {
      goto LABEL_23;
    }

    ++v7;
LABEL_34:
    v8 = v124;
LABEL_35:
    v42 = a3[1];
    if (v7 < v42)
    {
      if (__OFSUB__(v7, v123))
      {
        goto LABEL_144;
      }

      if (v7 - v123 < a4)
      {
        break;
      }
    }

LABEL_57:
    if (v7 < v123)
    {
      goto LABEL_143;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v104 = sub_232BA57A8();
      sub_232B36234(v104, v105, v106, v8);
      v8 = v107;
    }

    v59 = *(v8 + 2);
    v58 = *(v8 + 3);
    v60 = v59 + 1;
    if (v59 >= v58 >> 1)
    {
      sub_232B36234(v58 > 1, v59 + 1, 1, v8);
      v8 = v108;
    }

    *(v8 + 2) = v60;
    v61 = v8 + 32;
    v62 = &v8[16 * v59 + 32];
    *v62 = v123;
    *(v62 + 1) = v7;
    v130 = *a1;
    if (!*a1)
    {
      goto LABEL_153;
    }

    if (v59)
    {
      v132 = v7;
      v127 = v8 + 32;
      while (1)
      {
        v63 = v60 - 1;
        v64 = &v61[16 * v60 - 16];
        v65 = &v8[16 * v60];
        if (v60 >= 4)
        {
          break;
        }

        if (v60 == 3)
        {
          v66 = *(v8 + 4);
          v67 = *(v8 + 5);
          v76 = __OFSUB__(v67, v66);
          v68 = v67 - v66;
          v69 = v76;
LABEL_78:
          if (v69)
          {
            goto LABEL_130;
          }

          v81 = *v65;
          v80 = *(v65 + 1);
          v82 = __OFSUB__(v80, v81);
          v83 = v80 - v81;
          v84 = v82;
          if (v82)
          {
            goto LABEL_133;
          }

          v85 = *(v64 + 1);
          v86 = v85 - *v64;
          if (__OFSUB__(v85, *v64))
          {
            goto LABEL_136;
          }

          if (__OFADD__(v83, v86))
          {
            goto LABEL_138;
          }

          if (v83 + v86 >= v68)
          {
            if (v68 < v86)
            {
              v63 = v60 - 2;
            }

            goto LABEL_100;
          }

          goto LABEL_93;
        }

        if (v60 < 2)
        {
          goto LABEL_132;
        }

        v88 = *v65;
        v87 = *(v65 + 1);
        v76 = __OFSUB__(v87, v88);
        v83 = v87 - v88;
        v84 = v76;
LABEL_93:
        if (v84)
        {
          goto LABEL_135;
        }

        v90 = *v64;
        v89 = *(v64 + 1);
        v76 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v76)
        {
          goto LABEL_137;
        }

        if (v91 < v83)
        {
          goto LABEL_107;
        }

LABEL_100:
        if (v63 - 1 >= v60)
        {
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
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
          goto LABEL_146;
        }

        if (!*a3)
        {
          goto LABEL_150;
        }

        v95 = v8;
        v96 = &v61[16 * v63 - 16];
        v8 = *v96;
        v97 = v63;
        v98 = &v61[16 * v63];
        v99 = *(v98 + 1);
        v100 = (*a3 + 16 * v99);
        a5 = v134;

        v101 = sub_232BC1E18();
        sub_232BC10F4(v101, v102, v100, v130, v134);
        if (v133)
        {
          sub_232BC1C4C();
          swift_bridgeObjectRelease_n();
        }

        if (v99 < v8)
        {
          goto LABEL_125;
        }

        v103 = *(v95 + 2);
        if (v97 > v103)
        {
          goto LABEL_126;
        }

        *v96 = v8;
        *(v96 + 1) = v99;
        if (v97 >= v103)
        {
          goto LABEL_127;
        }

        v60 = v103 - 1;
        memmove(v98, v98 + 16, 16 * (v103 - 1 - v97));
        v8 = v95;
        *(v95 + 2) = v103 - 1;
        v7 = v132;
        v61 = v127;
        a5 = v134;
        if (v103 <= 2)
        {
          goto LABEL_107;
        }
      }

      v70 = &v61[16 * v60];
      v71 = *(v70 - 8);
      v72 = *(v70 - 7);
      v76 = __OFSUB__(v72, v71);
      v73 = v72 - v71;
      if (v76)
      {
        goto LABEL_128;
      }

      v75 = *(v70 - 6);
      v74 = *(v70 - 5);
      v76 = __OFSUB__(v74, v75);
      v68 = v74 - v75;
      v69 = v76;
      if (v76)
      {
        goto LABEL_129;
      }

      v77 = *(v65 + 1);
      v78 = v77 - *v65;
      if (__OFSUB__(v77, *v65))
      {
        goto LABEL_131;
      }

      v76 = __OFADD__(v68, v78);
      v79 = v68 + v78;
      if (v76)
      {
        goto LABEL_134;
      }

      if (v79 >= v73)
      {
        v93 = *v64;
        v92 = *(v64 + 1);
        v76 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v76)
        {
          goto LABEL_142;
        }

        if (v68 < v94)
        {
          v63 = v60 - 2;
        }

        goto LABEL_100;
      }

      goto LABEL_78;
    }

LABEL_107:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_111;
    }
  }

  v43 = v123 + a4;
  if (__OFADD__(v123, a4))
  {
    goto LABEL_145;
  }

  if (v43 >= v42)
  {
    v43 = a3[1];
  }

  if (v43 >= v123)
  {
    if (v7 != v43)
    {
      v125 = v8;
      v44 = *a3;
      v45 = (*a3 + 16 * v7);
      v8 = (v123 - v7);
      v122 = v43;
      do
      {
        v132 = v7;
        v46 = *(v44 + 16 * v7 + 8);
        v127 = v8;
        v129 = v45;
        do
        {
          if (*(a5 + 16))
          {
            v47 = *v45;

            v48 = sub_232B1F160(v47, v46);
            a5 = v134;
            if (v49 & 1) != 0 && *(v134 + 16) && (v50 = *(*(v134 + 56) + 8 * v48), v51 = sub_232BC1EB4(), v53 = sub_232B1F160(v51, v52), a5 = v134, (v54))
            {
              v55 = *(*(v134 + 56) + 8 * v53);

              if (v50 >= v55)
              {
                break;
              }
            }

            else
            {
            }
          }

          if (!v44)
          {
            goto LABEL_147;
          }

          v56 = *v45;
          v46 = v45[1];
          *v45 = *(v45 - 1);
          *(v45 - 1) = v46;
          *(v45 - 2) = v56;
          v45 -= 2;
        }

        while (!__CFADD__(v8++, 1));
        v7 = (v132 + 1);
        v45 = v129 + 2;
        v8 = v127 - 1;
      }

      while (v132 + 1 != v122);
      v7 = v122;
      v8 = v125;
    }

    goto LABEL_57;
  }

LABEL_146:
  __break(1u);
LABEL_147:
  sub_232BC1C4C();
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_148:
  v8 = sub_232BC13B8(v8);
LABEL_113:
  v110 = v8 + 16;
  v109 = *(v8 + 2);
  for (i = v8; ; v8 = i)
  {
    if (v109 < 2)
    {

      return swift_bridgeObjectRelease_n();
    }

    v111 = *a3;
    if (!*a3)
    {
      goto LABEL_151;
    }

    v112 = &v8[16 * v109];
    v8 = *v112;
    v113 = v110;
    v114 = &v110[16 * v109];
    v115 = *(v114 + 1);
    v116 = (v111 + 16 * *v112);
    v117 = (v111 + 16 * *v114);
    v135 = (v111 + 16 * v115);

    sub_232BC10F4(v116, v117, v135, v132, a5);
    if (v133)
    {
      break;
    }

    if (v115 < v8)
    {
      goto LABEL_139;
    }

    if (v109 - 2 >= *v113)
    {
      goto LABEL_140;
    }

    v110 = v113;
    *v112 = v8;
    *(v112 + 1) = v115;
    v118 = *v113 - v109;
    if (*v113 < v109)
    {
      goto LABEL_141;
    }

    v109 = *v113 - 1;
    memmove(v114, v114 + 16, 16 * v118);
    *v113 = v109;
  }

  swift_bridgeObjectRelease_n();
}

uint64_t sub_232BC10F4(char *a1, char *a2, char *a3, char *a4, uint64_t a5)
{
  v6 = a4;
  v7 = a3;
  v8 = a2;
  v9 = a1;
  v10 = (a2 - a1) / 16;
  v11 = (a3 - a2) / 16;
  if (v10 < v11)
  {
    v12 = sub_232BA61D4();
    sub_232B377A4(v12, v13, v6);
    v14 = &v6[16 * v10];
    while (1)
    {
      if (v6 >= v14 || v8 >= v7)
      {
        v28 = v9;
        goto LABEL_38;
      }

      if (!*(a5 + 16))
      {
        goto LABEL_16;
      }

      v16 = v14;

      v17 = sub_232BC1E18();
      sub_232B1F160(v17, v18);
      if ((v19 & 1) == 0)
      {
        break;
      }

      if (!*(a5 + 16))
      {
        break;
      }

      v20 = sub_232BC1E30();
      v22 = sub_232B1F160(v20, v21);
      if ((v23 & 1) == 0)
      {
        break;
      }

      v24 = v8;
      v25 = *(*(a5 + 56) + 8 * v22);

      v29 = v49 < v25;
      v8 = v24;
      v14 = v16;
      if (v29)
      {
        goto LABEL_16;
      }

      v26 = v6;
      v27 = v9 == v6;
      v6 += 16;
      if (!v27)
      {
        goto LABEL_17;
      }

LABEL_18:
      v9 += 16;
    }

    v14 = v16;
LABEL_16:
    v26 = v8;
    v27 = v9 == v8;
    v8 += 16;
    if (v27)
    {
      goto LABEL_18;
    }

LABEL_17:
    *v9 = *v26;
    goto LABEL_18;
  }

  sub_232B377A4(a2, (a3 - a2) / 16, a4);
  v14 = &v6[16 * v11];
  v48 = v9;
LABEL_20:
  v28 = v8;
  v7 -= 16;
  v47 = v8 - 16;
  while (1)
  {
    v29 = v14 > v6 && v28 > v9;
    if (!v29)
    {
      break;
    }

    if (!*(a5 + 16))
    {
      goto LABEL_35;
    }

    v50 = v7;
    v30 = v6;
    v31 = v14 - 16;
    v32 = v14;
    v33 = *(v14 - 1);
    v34 = *(v28 - 2);
    v35 = *(v28 - 1);
    v36 = v28;
    v37 = *(v14 - 2);

    v38 = sub_232B1F160(v37, v33);
    if ((v39 & 1) == 0 || !*(a5 + 16) || (v40 = *(*(a5 + 56) + 8 * v38), v41 = sub_232B1F160(v34, v35), (v42 & 1) == 0))
    {

      v6 = v30;
      v9 = v48;
      v7 = v50;
      v14 = v32;
      v28 = v36;
LABEL_35:
      v8 = v47;
      if (v7 + 16 != v28)
      {
        *v7 = *v47;
      }

      goto LABEL_20;
    }

    v43 = *(*(a5 + 56) + 8 * v41);

    v29 = v40 < v43;
    v6 = v30;
    v9 = v48;
    v7 = v50;
    v14 = v32;
    v28 = v36;
    if (v29)
    {
      goto LABEL_35;
    }

    if (v32 != v50 + 16)
    {
      *v50 = *v31;
    }

    v7 = v50 - 16;
    v14 = v31;
  }

LABEL_38:
  v44 = (v14 - v6) / 16;
  if (v28 != v6 || v28 >= &v6[16 * v44])
  {
    memmove(v28, v6, 16 * v44);
  }

  return 1;
}

char *sub_232BC13CC(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_232BC13F8(char *result, int64_t a2, char a3, char *a4)
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
    sub_232B124A8(&qword_27DDC6B50, &qword_232CF6ED8);
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
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

id sub_232BC14F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v14 = sub_232CE9D20();
  v15 = [a8 enumerateTokensForString:v14 language:a3 inRange:a4 error:a5 usingBlock:{a6, a7}];

  return v15;
}

void sub_232BC1580(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_232CE9D20();

  [a3 setString_];
}

uint64_t sub_232BC15E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_232BA4DEC(0, &qword_2814DF8C0, 0x277CCABB0);
  v9 = sub_232CE9FD0();

  v10 = [a5 lstmPredictions:v9 embeddingDimension:a2 classSize:a3 seqLen:a4];

  if (!v10)
  {
    return 0;
  }

  v11 = sub_232CE9FE0();

  return v11;
}

uint64_t sub_232BC16F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_232BC1708()
{
  sub_232B26C7C();
  v3 = v2;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_232BC17B8;

  return sub_232BBD3B8(v3, v4, v5, v6);
}

uint64_t sub_232BC17B8()
{
  sub_232B26C44();
  sub_232B26C70();
  v1 = *v0;
  sub_232B482C0();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_232BC18A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_232B124A8(&qword_27DDC68A8, &qword_232CFA960);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_232BC1928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = qword_2814DF958;
  if (!qword_2814DF958)
  {
    type metadata accessor for CFString(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814DF958);
  }

  return result;
}

uint64_t sub_232BC1980(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FoundInEventDataDetectorsOutput(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_232BC19E4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_232BA5190();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_232BC1AB8()
{
  result = qword_27DDC7690;
  if (!qword_27DDC7690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7690);
  }

  return result;
}

unint64_t sub_232BC1B0C()
{
  result = qword_27DDC7698;
  if (!qword_27DDC7698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7698);
  }

  return result;
}

uint64_t sub_232BC1B74(uint64_t a1)
{

  return swift_once();
}

void sub_232BC1BC8(uint64_t a1@<X8>)
{
  v1[12] = sub_232BBABC4;
  v1[13] = a1;
  v1[14] = v2;
}

uint64_t sub_232BC1BE0(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = MEMORY[0x277D85DD0];
  return result;
}

uint64_t sub_232BC1C00()
{
  *(v0 + 56) = v1;
  *(v0 + 24) = sub_232BBA490;

  return swift_continuation_init();
}

uint64_t sub_232BC1C58(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t sub_232BC1C74()
{

  return sub_232BC19E4(v0, type metadata accessor for FoundInEventDataDetectorsOutput);
}

void sub_232BC1C9C(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a1 = a2;
  *(a1 + 8) = v2;
  *(a1 + 16) = 0;
}

uint64_t sub_232BC1CF0()
{
}

uint64_t sub_232BC1D2C()
{

  return sub_232CE9D20();
}

unint64_t sub_232BC1D48()
{

  return sub_232B4A95C();
}

void sub_232BC1D60()
{
  v4 = *(v0 + v2);
  *(v0 + v2) = v1;
}

uint64_t sub_232BC1DC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
}

BOOL sub_232BC1E54(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

id sub_232BC1E6C()
{

  return [v1 (v0 + 376)];
}

void sub_232BC1E84()
{

  JUMPOUT(0x238391C30);
}

uint64_t sub_232BC1F20()
{

  return MEMORY[0x2821FBDC8](0, v2 - 104, v1, v0);
}

id sub_232BC1F40(uint64_t a1, const char *a2)
{

  return [v4 a2];
}

uint64_t sub_232BC1F60()
{

  return sub_232CE9D20();
}

uint64_t sub_232BC1F80()
{

  return swift_slowAlloc();
}

uint64_t sub_232BC1F98(uint64_t a1, uint64_t a2, uint64_t a3)
{
}

unint64_t sub_232BC1FB0()
{

  return sub_232B4A95C();
}

void sub_232BC1FC8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_232B124A8(&qword_27DDC77B0, &qword_232CFAA28);
    v2 = sub_232CEA650();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
    v8 = v7;
LABEL_12:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v12 = *v10;
    v11 = v10[1];

    swift_dynamicCast();
    sub_232B20510(&v22, v24);
    sub_232B20510(v24, v25);
    sub_232B20510(v25, &v23);
    v13 = sub_232B1F160(v12, v11);
    v14 = v13;
    if (v15)
    {
      v16 = (v2[6] + 16 * v13);
      *v16 = v12;
      v16[1] = v11;

      v17 = (v2[7] + 32 * v14);
      sub_232B2040C(v17);
      sub_232B20510(&v23, v17);
      v7 = v8;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v13;
      v18 = (v2[6] + 16 * v13);
      *v18 = v12;
      v18[1] = v11;
      sub_232B20510(&v23, (v2[7] + 32 * v13));
      v19 = v2[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_20;
      }

      v2[2] = v21;
      v7 = v8;
    }
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v8);
    ++v7;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
}

void sub_232BC2214(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_232B124A8(&qword_27DDC77E0, &qword_232CFAA60);
    sub_232B13ED0();
    v1 = sub_232CEA650();
  }

  else
  {
    v1 = MEMORY[0x277D84F98];
  }

  sub_232BCA124();
  v4 = v3 & v2;
  v6 = (v5 + 63) >> 6;
  v7 = v1 + 64;

  v8 = 0;
  if (!v4)
  {
    goto LABEL_5;
  }

  do
  {
LABEL_9:
    sub_232BCA4AC();
    v11 = v10;

    sub_232B124A8(&qword_27DDC77E8, &qword_232CFAA68);
    swift_dynamicCast();
    sub_232CE9D50();
    sub_232CEA820();
    sub_232CE9E40();
    v12 = sub_232CEA850();

    sub_232BCA36C();
    if (((v14 << (v12 & ~v13)) & ~*(v7 + 8 * ((v12 & ~v13) >> 6))) == 0)
    {
      sub_232BCA250();
      while (++v15 != v17 || (v16 & 1) == 0)
      {
        v18 = v15 == v17;
        if (v15 == v17)
        {
          v15 = 0;
        }

        v16 |= v18;
        if (*(v7 + 8 * v15) != -1)
        {
          sub_232BCA23C();
          goto LABEL_18;
        }
      }

      goto LABEL_22;
    }

    sub_232BCA264();
LABEL_18:
    v4 &= v4 - 1;
    sub_232BCA498();
    *(v7 + v19) |= v20;
    *(*(v1 + 48) + 8 * v21) = v11;
    v22 = (*(v1 + 56) + 16 * v21);
    *v22 = v24;
    v22[1] = v25;
    sub_232BCA35C();
  }

  while (v4);
LABEL_5:
  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return;
    }

    v4 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v4)
    {
      v8 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
}

void sub_232BC243C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, uint64_t a14, uint64_t a15, __int128 a16, __int128 a17, uint64_t a18, uint64_t a19, __int128 a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  sub_232BCA4F0();
  a33 = v36;
  a34 = v37;
  sub_232BCA464();
  if (v35)
  {
    sub_232B124A8(&qword_27DDC77B0, &qword_232CFAA28);
    sub_232B13ED0();
    v38 = sub_232CEA650();
  }

  else
  {
    v38 = MEMORY[0x277D84F98];
  }

  sub_232BCA144();
  v41 = v40 & v39;
  v43 = (v42 + 63) >> 6;

  v44 = 0;
  while (v41)
  {
    v45 = v44;
LABEL_10:
    v46 = __clz(__rbit64(v41));
    v41 &= v41 - 1;
    v47 = (*(v34 + 48) + 16 * (v46 | (v45 << 6)));
    v49 = *v47;
    v48 = v47[1];

    swift_dynamicCast();
    sub_232B20510(&a13, &a17);
    sub_232B20510(&a17, &a20);
    sub_232B20510(&a20, &a16);
    v50 = sub_232B1F160(v49, v48);
    v51 = v50;
    if (v52)
    {
      v53 = (v38[6] + 16 * v50);
      *v53 = v49;
      v53[1] = v48;

      v54 = (v38[7] + 32 * v51);
      sub_232B2040C(v54);
      sub_232B20510(&a16, v54);
      v44 = v45;
    }

    else
    {
      if (v38[2] >= v38[3])
      {
        goto LABEL_17;
      }

      *(v38 + ((v50 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v50;
      v55 = (v38[6] + 16 * v50);
      *v55 = v49;
      v55[1] = v48;
      sub_232B20510(&a16, (v38[7] + 32 * v50));
      v56 = v38[2];
      v57 = __OFADD__(v56, 1);
      v58 = v56 + 1;
      if (v57)
      {
        goto LABEL_18;
      }

      v38[2] = v58;
      v44 = v45;
    }
  }

  while (1)
  {
    v45 = v44 + 1;
    if (__OFADD__(v44, 1))
    {
      break;
    }

    if (v45 >= v43)
    {

      sub_232BCA4D4();
      return;
    }

    v41 = *(v34 + 64 + 8 * v45);
    ++v44;
    if (v41)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
}

void sub_232BC263C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, uint64_t a14, uint64_t a15, __int128 a16, __int128 a17, uint64_t a18, uint64_t a19, __int128 a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  sub_232BCA4F0();
  a33 = v36;
  a34 = v37;
  sub_232BCA464();
  if (v35)
  {
    sub_232B124A8(&qword_27DDC77B0, &qword_232CFAA28);
    sub_232B13ED0();
    v38 = sub_232CEA650();
  }

  else
  {
    v38 = MEMORY[0x277D84F98];
  }

  sub_232BCA144();
  v41 = v40 & v39;
  v43 = (v42 + 63) >> 6;

  v44 = 0;
  while (v41)
  {
    v45 = v44;
LABEL_10:
    v46 = __clz(__rbit64(v41));
    v41 &= v41 - 1;
    v47 = (*(v34 + 48) + 16 * (v46 | (v45 << 6)));
    v49 = *v47;
    v48 = v47[1];

    sub_232B124A8(&qword_27DDC6700, &qword_232CF5D48);
    swift_dynamicCast();
    sub_232B20510(&a13, &a17);
    sub_232B20510(&a17, &a20);
    sub_232B20510(&a20, &a16);
    v50 = sub_232B1F160(v49, v48);
    v51 = v50;
    if (v52)
    {
      v53 = (v38[6] + 16 * v50);
      *v53 = v49;
      v53[1] = v48;

      v54 = (v38[7] + 32 * v51);
      sub_232B2040C(v54);
      sub_232B20510(&a16, v54);
      v44 = v45;
    }

    else
    {
      if (v38[2] >= v38[3])
      {
        goto LABEL_17;
      }

      sub_232BCA4C0((v50 >> 3) & 0x1FFFFFFFFFFFFFF8);
      v56 = (v55 + 16 * v51);
      *v56 = v49;
      v56[1] = v48;
      sub_232B20510(&a16, (v38[7] + 32 * v51));
      v57 = v38[2];
      v58 = __OFADD__(v57, 1);
      v59 = v57 + 1;
      if (v58)
      {
        goto LABEL_18;
      }

      v38[2] = v59;
      v44 = v45;
    }
  }

  while (1)
  {
    v45 = v44 + 1;
    if (__OFADD__(v44, 1))
    {
      break;
    }

    if (v45 >= v43)
    {

      sub_232BCA4D4();
      return;
    }

    v41 = *(v34 + 64 + 8 * v45);
    ++v44;
    if (v41)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
}

void sub_232BC2848(uint64_t a1)
{
  sub_232BCA464();
  if (v2)
  {
    sub_232B124A8(&qword_27DDC77C8, &unk_232CFAA40);
    sub_232B13ED0();
    v3 = sub_232CEA650();
  }

  else
  {
    v3 = MEMORY[0x277D84F98];
  }

  sub_232BCA124();
  v6 = v5 & v4;
  v8 = (v7 + 63) >> 6;
  v9 = v3 + 64;

  v10 = 0;
  if (!v6)
  {
    goto LABEL_5;
  }

  do
  {
LABEL_9:
    v12 = (*(v1 + 48) + ((v10 << 10) | (16 * __clz(__rbit64(v6)))));
    v13 = v12[1];
    *&v33[0] = *v12;
    *(&v33[0] + 1) = v13;

    swift_dynamicCast();
    swift_dynamicCast();
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_232B20510(&v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_232B20510(v32, v33);
    sub_232CEA470();
    sub_232BCA36C();
    if (((v16 << (v14 & ~v15)) & ~*(v9 + 8 * ((v14 & ~v15) >> 6))) == 0)
    {
      sub_232BCA250();
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        if (*(v9 + 8 * v17) != -1)
        {
          sub_232BCA23C();
          goto LABEL_18;
        }
      }

      goto LABEL_22;
    }

    sub_232BCA264();
LABEL_18:
    v6 &= v6 - 1;
    sub_232BCA498();
    *(v9 + v21) |= v22;
    v24 = *(v3 + 48) + 40 * v23;
    *v24 = v25;
    *(v24 + 16) = v26;
    *(v24 + 32) = v27;
    sub_232B20510(v33, (*(v3 + 56) + 32 * v23));
    sub_232BCA35C();
  }

  while (v6);
LABEL_5:
  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v8)
    {

      return;
    }

    v6 = *(v1 + 64 + 8 * v11);
    ++v10;
    if (v6)
    {
      v10 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
}

void sub_232BC2AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int128 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int128 a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  sub_232BCA4F0();
  a35 = v36;
  a36 = v37;
  v59 = v38;
  v39 = *(v38 + 16);
  if (v39)
  {
    sub_232B124A8(&qword_27DDC77C0, &qword_232CFAA38);
    sub_232B13ED0();
    v40 = sub_232CEA650();
  }

  else
  {
    v40 = MEMORY[0x277D84F98];
  }

  sub_232BCA124();
  v43 = v42 & v41;
  v45 = (v44 + 63) >> 6;
  v46 = v40 + 64;

  v47 = 0;
  if (!v43)
  {
    goto LABEL_5;
  }

  do
  {
LABEL_9:
    sub_232BCA4AC();
    a19 = v49;
    a20 = v39;
    v51 = v50;

    swift_dynamicCast();
    sub_232B20510((&a21 + 8), &a12);
    sub_232B20510(&a12, &a21);
    sub_232CE9D50();
    sub_232CEA820();
    sub_232CE9E40();
    v39 = sub_232CEA850();

    sub_232BCA36C();
    if (((v53 << (v39 & ~v52)) & ~*(v46 + 8 * ((v39 & ~v52) >> 6))) == 0)
    {
      sub_232BCA250();
      while (++v55 != v57 || (v56 & 1) == 0)
      {
        v58 = v55 == v57;
        if (v55 == v57)
        {
          v55 = 0;
        }

        v56 |= v58;
        if (*(v46 + 8 * v55) != -1)
        {
          sub_232BCA23C();
          goto LABEL_18;
        }
      }

      goto LABEL_22;
    }

    sub_232BCA264();
LABEL_18:
    *(v46 + ((v54 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v54;
    v43 &= v43 - 1;
    *(*(v40 + 48) + 8 * v54) = v51;
    sub_232B20510(&a21, (*(v40 + 56) + 32 * v54));
    sub_232BCA35C();
  }

  while (v43);
LABEL_5:
  while (1)
  {
    v48 = v47 + 1;
    if (__OFADD__(v47, 1))
    {
      break;
    }

    if (v48 >= v45)
    {

      sub_232BCA4D4();
      return;
    }

    v43 = *(v59 + 64 + 8 * v48);
    ++v47;
    if (v43)
    {
      v47 = v48;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
}

id DUFoundInEventResult.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_232BC2D04(uint64_t a1)
{
  sub_232BCA464();
  if (v2)
  {
    sub_232B124A8(&qword_27DDC77B0, &qword_232CFAA28);
    sub_232B13ED0();
    v3 = sub_232CEA650();
  }

  else
  {
    v3 = MEMORY[0x277D84F98];
  }

  sub_232BCA144();
  v6 = v5 & v4;
  v8 = (v7 + 63) >> 6;

  v9 = 0;
  while (v6)
  {
    v10 = v9;
LABEL_10:
    v11 = __clz(__rbit64(v6)) | (v10 << 6);
    sub_232B1FA04(*(v1 + 48) + 40 * v11, __src);
    sub_232B204B4(*(v1 + 56) + 32 * v11, &__src[40]);
    memcpy(__dst, __src, sizeof(__dst));
    sub_232B1FA04(__dst, v22);
    if (!swift_dynamicCast())
    {
      sub_232B13790(__dst, &qword_27DDC77B8, &qword_232CFAA30);

      return;
    }

    v6 &= v6 - 1;
    sub_232B204B4(&__dst[40], v23);
    sub_232B13790(__dst, &qword_27DDC77B8, &qword_232CFAA30);
    v24 = v21;
    sub_232B20510(v23, v25);
    v12 = v24;
    sub_232B20510(v25, v26);
    sub_232B20510(v26, &v24);
    v13 = sub_232B1F160(v12, *(&v12 + 1));
    v14 = v13;
    if (v15)
    {
      *(v3[6] + 16 * v13) = v12;

      v16 = (v3[7] + 32 * v14);
      sub_232B2040C(v16);
      sub_232B20510(&v24, v16);
      v9 = v10;
    }

    else
    {
      if (v3[2] >= v3[3])
      {
        goto LABEL_19;
      }

      sub_232BCA4C0((v13 >> 3) & 0x1FFFFFFFFFFFFFF8);
      *(v17 + 16 * v14) = v12;
      sub_232B20510(&v24, (v3[7] + 32 * v14));
      v18 = v3[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_20;
      }

      v3[2] = v20;
      v9 = v10;
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {

      return;
    }

    v6 = *(v1 + 64 + 8 * v10);
    ++v9;
    if (v6)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
}

void sub_232BC2F8C(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16))
  {
    sub_232B124A8(&qword_27DDC77D0, &unk_232CFAA50);
    v2 = sub_232CEA650();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = v1 + 64;
  v4 = 1 << *(v1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v1 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  v21 = v1;
  if (v6)
  {
    while (1)
    {
      v9 = v8;
LABEL_11:
      v10 = __clz(__rbit64(v6)) | (v9 << 6);
      sub_232B1FA04(*(v1 + 48) + 40 * v10, __src);
      sub_232B204B4(*(v1 + 56) + 32 * v10, &__src[40]);
      memcpy(__dst, __src, sizeof(__dst));
      sub_232B1FA04(__dst, v24);
      if (!swift_dynamicCast())
      {
        sub_232B13790(__dst, &qword_27DDC77B8, &qword_232CFAA30);

        goto LABEL_23;
      }

      sub_232B204B4(&__dst[40], v24);
      sub_232B13790(__dst, &qword_27DDC77B8, &qword_232CFAA30);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v6 &= v6 - 1;
      v11 = sub_232B1F160(v22, v23);
      v12 = v11;
      if (v13)
      {
        v14 = (v2[6] + 16 * v11);
        *v14 = v22;
        v14[1] = v23;

        v15 = (v2[7] + 16 * v12);
        *v15 = v22;
        v15[1] = v23;
      }

      else
      {
        if (v2[2] >= v2[3])
        {
          goto LABEL_25;
        }

        *(v2 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v11;
        v16 = (v2[6] + 16 * v11);
        *v16 = v22;
        v16[1] = v23;
        v17 = (v2[7] + 16 * v11);
        *v17 = v22;
        v17[1] = v23;
        v18 = v2[2];
        v19 = __OFADD__(v18, 1);
        v20 = v18 + 1;
        if (v19)
        {
          goto LABEL_26;
        }

        v2[2] = v20;
      }

      v8 = v9;
      v1 = v21;
      if (!v6)
      {
        goto LABEL_8;
      }
    }

LABEL_23:
  }

  else
  {
LABEL_8:
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v9 >= v7)
      {
        goto LABEL_23;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }
}

id static DUFoundInEventResult.getErrorForField(field:errorCode:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for DUFoundInEventResult();
  v6 = sub_232BC526C(a1, a2, a3);
  sub_232BC1FC8(v6);
  v8 = v7;

  v9 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  return sub_232BC8980(0xD000000000000031, 0x8000000232D06F70, a3, v8);
}

uint64_t sub_232BC3310()
{
  result = sub_232CE9C60();
  qword_27DDC76A8 = result;
  return result;
}

uint64_t sub_232BC3378(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_detectedEventPolarity;
  sub_232B26BFC(a1);
  return *(v1 + v2);
}

uint64_t sub_232BC33D4(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_detectedEventPolarity;
  result = sub_232B26C50(a1);
  *(v1 + v3) = v2;
  return result;
}

void *sub_232BC3494(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_reservationIdError;
  sub_232B26BFC(a1);
  v3 = *&v2[v1];
  v4 = v3;
  return v3;
}

void sub_232BC356C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_232BC352C(v1);
}

void *sub_232BC36B0(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_reservationNameError;
  sub_232B26BFC(a1);
  v3 = *&v2[v1];
  v4 = v3;
  return v3;
}

void sub_232BC3788(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_232BC3748(v1);
}

id sub_232BC381C(void *a1, uint64_t a2, void (*a3)(void *, uint64_t))
{
  v3 = a1;
  a3(a1, a2);
  if (v4)
  {
    sub_232CE9D20();
    sub_232B26CE8();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_232BC3898(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  if (a3)
  {
    sub_232CE9D50();
    sub_232BA5EAC();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v8 = a1;
  a4(v4, v5);
}

uint64_t sub_232BC3928(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

void *sub_232BC39F0(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_hotelNameError;
  sub_232B26BFC(a1);
  v3 = *&v2[v1];
  v4 = v3;
  return v3;
}

void sub_232BC3AC8(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_232BC3A88(v1);
}

void *sub_232BC3C0C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_guestNameError;
  sub_232B26BFC(a1);
  v3 = *&v2[v1];
  v4 = v3;
  return v3;
}

void sub_232BC3CE4(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_232BC3CA4(v1);
}

void *sub_232BC3E28(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_movieNameError;
  sub_232B26BFC(a1);
  v3 = *&v2[v1];
  v4 = v3;
  return v3;
}

void sub_232BC3F00(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_232BC3EC0(v1);
}

void *sub_232BC4044(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_startAddressError;
  sub_232B26BFC(a1);
  v3 = *&v2[v1];
  v4 = v3;
  return v3;
}

void sub_232BC411C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_232BC40DC(v1);
}

void *sub_232BC4320(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_endAddressError;
  sub_232B26BFC(a1);
  v3 = *&v2[v1];
  v4 = v3;
  return v3;
}

void sub_232BC43F8(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_232BC43B8(v1);
}

id sub_232BC4520(void *a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t))
{
  v3 = a1;
  if (a3(a1, a2))
  {
    sub_232CE9C20();
    sub_232B26CE8();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_232BC45B0(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  if (a3)
  {
    v6 = sub_232CE9C40();
  }

  else
  {
    v6 = 0;
  }

  v7 = a1;
  a4(v6);
}

void *sub_232BC46F8(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_startPlaceError;
  sub_232B26BFC(a1);
  v3 = *&v2[v1];
  v4 = v3;
  return v3;
}

void sub_232BC47D0(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_232BC4790(v1);
}

void *sub_232BC4914(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_endPlaceError;
  sub_232B26BFC(a1);
  v3 = *&v2[v1];
  v4 = v3;
  return v3;
}

void sub_232BC49EC(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_232BC49AC(v1);
}

void *sub_232BC4B30(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_startDateError;
  sub_232B26BFC(a1);
  v3 = *&v2[v1];
  v4 = v3;
  return v3;
}

void sub_232BC4C08(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_232BC4BC8(v1);
}

void *sub_232BC4D4C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_endDateError;
  sub_232B26BFC(a1);
  v3 = *&v2[v1];
  v4 = v3;
  return v3;
}

void sub_232BC4E24(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_232BC4DE4(v1);
}

double sub_232BC5000(uint64_t *a1)
{
  sub_232B26BFC(a1);

  return result;
}

uint64_t sub_232BC5040(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  sub_232B26C50(a1);
  *(v2 + v4) = a1;
}

id DUFoundInEventResult.init()()
{
  *(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_reservationIdError + v0) = 0;
  sub_232B35214(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_reservationId);
  *(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_reservationNameError + v0) = 0;
  sub_232B35214(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_reservationName);
  *(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_hotelNameError + v0) = 0;
  sub_232B35214(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_hotelName);
  *(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_guestNameError + v0) = 0;
  sub_232B35214(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_guestName);
  *(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_movieNameError + v0) = 0;
  sub_232B35214(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_movieName);
  *(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_startAddressError + v0) = 0;
  sub_232B35214(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_startAddress);
  *&v0[OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_startAddressComponents] = 0;
  *(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_endAddressError + v0) = 0;
  sub_232B35214(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_endAddress);
  *&v0[OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_endAddressComponents] = 0;
  *(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_startPlaceError + v0) = 0;
  sub_232B35214(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_startPlace);
  *(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_endPlaceError + v0) = 0;
  sub_232B35214(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_endPlace);
  *(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_startDateError + v0) = 0;
  sub_232B35214(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_startDate);
  *(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_endDateError + v0) = 0;
  sub_232B35214(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_endDate);
  sub_232B35214(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_text);
  *&v0[OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_tags] = 0;
  v0[OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_detectedEventPolarity] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DUFoundInEventResult();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t sub_232BC526C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_232B124A8(&qword_27DDC77D8, &unk_232CFD930);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_232CF6460;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  v7 = qword_27DDC6398;

  if (v7 != -1)
  {
    swift_once();
  }

  v8 = sub_232B1E08C(a3, qword_27DDC76A8);
  v10 = 0x8000000232D07380;
  v11 = 0xD00000000000001CLL;
  if (v9)
  {
    v11 = v8;
    v10 = v9;
  }

  *(inited + 48) = v11;
  *(inited + 56) = v10;
  return sub_232CE9C60();
}

void sub_232BC5434()
{
  sub_232B35110();
  v2 = v1;
  v3 = type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventResult(0);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  sub_232B20704();
  v7 = v6 - v5;
  v69 = v2;
  sub_232BCA034(v2, v6 - v5);
  v8 = [objc_allocWithZone(v0) init];
  v70 = v7;
  v9 = *(v7 + *(v4 + 28));
  sub_232B13F74(v9 + 16, &v122);
  LOBYTE(v7) = *(v9 + 16);
  v10 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_detectedEventPolarity;
  sub_232B13F5C(&v8[OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_detectedEventPolarity], &v121);
  v8[v10] = v7;
  sub_232B13F74(v9 + 24, &v120);
  if (*(v9 + 33))
  {
    v11 = 0;
  }

  else
  {
    v11 = *(v9 + 24);
  }

  v12 = v8;
  sub_232BCA470();
  v14 = sub_232BC526C(0x7461767265736572, v13, v11);
  sub_232BC1FC8(v14);
  v16 = v15;

  v17 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  sub_232BC8980(0xD000000000000031, 0x8000000232D06F70, v11, v16);
  v18 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_reservationIdError;
  sub_232B13F5C(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_reservationIdError + v12, &v119);
  sub_232BCA2E4();
  v19 = sub_232B13F74(v9 + 40, &v118);
  v20 = *(v9 + 48);
  if (v20)
  {
    v18 = *(v9 + 40);
    v2 = *(v9 + 48);
  }

  else
  {
    sub_232BCA224();
  }

  v21 = &v12[OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_reservationId];
  sub_232B2D0EC(v19, &v117);
  *v21 = v18;
  *(v21 + 1) = v2;

  sub_232B13F74(v9 + 56, &v116);
  sub_232BCA1A0();
  sub_232BCA484();
  v23 = sub_232BC526C(0x7461767265736572, v22, v20);
  sub_232BC1FC8(v23);
  sub_232BCA32C();
  v24 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  sub_232BCA098();
  sub_232B13F5C(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_reservationNameError + v12, &v115);
  sub_232BCA2E4();
  v25 = sub_232B13F74(v9 + 72, &v114);
  if (!*(v9 + 80))
  {
    sub_232BCA224();
  }

  sub_232BC1C58(v25, &v113);
  sub_232BCA1D4();

  sub_232B13F74(v9 + 296, &v112);
  sub_232BCA1A0();
  v26 = sub_232BCA174(0x4E6C65746F68);
  sub_232BC1FC8(v26);
  sub_232BCA32C();
  v27 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  sub_232BCA098();
  sub_232B13F5C(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_hotelNameError + v12, &v111);
  sub_232BCA2E4();
  v28 = sub_232B13F74(v9 + 312, &v110);
  if (!*(v9 + 320))
  {
    sub_232BCA224();
  }

  sub_232BC1C58(v28, &v109);
  sub_232BCA1D4();

  sub_232B13F74(v9 + 328, &v108);
  sub_232BCA1A0();
  v29 = sub_232BCA174(0x4E7473657567);
  sub_232BC1FC8(v29);
  sub_232BCA32C();
  v30 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  sub_232BCA098();
  sub_232B13F5C(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_guestNameError + v12, &v107);
  sub_232BCA2E4();
  v31 = sub_232B13F74(v9 + 344, &v106);
  if (!*(v9 + 352))
  {
    sub_232BCA224();
  }

  sub_232BC1C58(v31, &v105);
  sub_232BCA1D4();

  sub_232B13F74(v9 + 360, &v104);
  sub_232BCA1A0();
  v32 = sub_232BCA174(0x4E6569766F6DLL);
  sub_232BC1FC8(v32);
  sub_232BCA32C();
  v33 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  sub_232BCA098();
  sub_232B13F5C(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_movieNameError + v12, &v103);
  sub_232BCA2E4();
  v34 = sub_232B13F74(v9 + 376, &v102);
  if (!*(v9 + 384))
  {
    sub_232BCA224();
  }

  sub_232BC1C58(v34, &v101);
  sub_232BCA1D4();

  sub_232B13F74(v9 + 88, &v100);
  v35 = sub_232BCA0F0();
  v36 = sub_232BCA37C(v35);
  sub_232BC1FC8(v36);
  sub_232BCA32C();
  v37 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  sub_232BCA098();
  sub_232B13F5C(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_startAddressError + v12, &v99);
  sub_232BCA2E4();
  v38 = sub_232B13F74(v9 + 104, &v98);
  if (!*(v9 + 112))
  {
    sub_232BCA224();
  }

  sub_232BC1C58(v38, &v97);
  sub_232BCA1D4();

  sub_232B13F74(v9 + 120, &v96);
  v39 = *(v9 + 120);
  v40 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_startAddressComponents;
  sub_232B13F5C(&v12[OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_startAddressComponents], &v95);
  *&v12[v40] = v39;

  sub_232B13F74(v9 + 128, &v94);
  v41 = sub_232BCA164();
  v42 = sub_232BC526C(v41 | 0x6572646441640000, 0xEA00000000007373, v39);
  sub_232BC1FC8(v42);
  sub_232BCA32C();
  v43 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  sub_232BCA098();
  sub_232B13F5C(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_endAddressError + v12, &v93);
  sub_232BCA2E4();
  v44 = sub_232B13F74(v9 + 144, &v92);
  if (!*(v9 + 152))
  {
    sub_232BCA224();
  }

  sub_232BC1C58(v44, &v91);
  sub_232BCA1D4();

  sub_232B13F74(v9 + 160, &v90);
  v45 = *(v9 + 160);
  v46 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_endAddressComponents;
  sub_232B13F5C(&v12[OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_endAddressComponents], &v89);
  *&v12[v46] = v45;

  sub_232B13F74(v9 + 168, &v88);
  v47 = sub_232BCA0F0();
  v48 = sub_232BCA440(v47);
  sub_232BC1FC8(v48);
  sub_232BCA32C();
  v49 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  sub_232BCA098();
  sub_232B13F5C(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_startPlaceError + v12, &v87);
  sub_232BCA2E4();
  v50 = sub_232B13F74(v9 + 184, &v86);
  if (!*(v9 + 192))
  {
    sub_232BCA224();
  }

  sub_232BC1C58(v50, &v85);
  sub_232BCA1D4();

  sub_232B13F74(v9 + 200, &v84);
  v51 = sub_232BCA164();
  v52 = sub_232BCA41C(v51);
  sub_232BC1FC8(v52);
  sub_232BCA32C();
  v53 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  sub_232BCA098();
  sub_232B13F5C(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_endPlaceError + v12, &v83);
  sub_232BCA2E4();
  v54 = sub_232B13F74(v9 + 216, &v82);
  if (!*(v9 + 224))
  {
    sub_232BCA224();
  }

  sub_232BC1C58(v54, &v81);
  sub_232BCA1D4();

  sub_232B13F74(v9 + 232, &v80);
  v55 = sub_232BCA0F0();
  v56 = sub_232BCA3F8(v55);
  sub_232BC1FC8(v56);
  sub_232BCA32C();
  v57 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  sub_232BCA098();
  sub_232B13F5C(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_startDateError + v12, &v79);
  sub_232BCA2E4();
  v58 = sub_232B13F74(v9 + 248, &v78);
  if (!*(v9 + 256))
  {
    sub_232BCA224();
  }

  sub_232BC1C58(v58, &v77);
  sub_232BCA1D4();

  sub_232B13F74(v9 + 264, &v76);
  v59 = sub_232BCA164();
  v60 = sub_232BCA3D4(v59);
  sub_232BC1FC8(v60);
  sub_232BCA32C();
  v61 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  sub_232BCA098();
  sub_232BC8A30(v69);
  sub_232B13F5C(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_endDateError + v12, &v75);
  sub_232BCA2E4();
  v62 = sub_232B13F74(v9 + 280, &v74);
  if (*(v9 + 288))
  {
    v63 = *(v9 + 280);
    v64 = *(v9 + 288);
  }

  else
  {
    v63 = 0;
    v64 = 0xE000000000000000;
  }

  v65 = &v12[OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_endDate];
  sub_232B13F08(v62, &v73);
  *v65 = v63;
  *(v65 + 1) = v64;

  sub_232B13F74(v9 + 392, &v72);
  if (*(v9 + 400))
  {
    v66 = *(v9 + 392);
    v67 = *(v9 + 400);
  }

  else
  {
    v66 = 0;
    v67 = 0xE000000000000000;
  }

  sub_232BC8A30(v70);
  v68 = &v12[OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_text];
  sub_232B13F5C(&v12[OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_text], &v71);
  *v68 = v66;
  *(v68 + 1) = v67;

  sub_232B20A00();
}