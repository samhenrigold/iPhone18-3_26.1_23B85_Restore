uint64_t sub_225B5445C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DD90, &unk_225CD4950);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id IdentityBindingDetails.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id IdentityBindingDetails.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t IdentityBoundACLType.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

unint64_t sub_225B54680()
{
  result = qword_27D73DCB8;
  if (!qword_27D73DCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73DCB8);
  }

  return result;
}

uint64_t sub_225B546D4()
{
  v1 = *v0;
  sub_225CCFBD4();
  MEMORY[0x22AA6E420](v1);
  return sub_225CCFC24();
}

uint64_t sub_225B54748()
{
  v1 = *v0;
  sub_225CCFBD4();
  MEMORY[0x22AA6E420](v1);
  return sub_225CCFC24();
}

unint64_t *sub_225B5478C@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t PDF417ParsingConfig.aamvaHeader.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC13CoreIDVShared19PDF417ParsingConfig_aamvaHeader);

  return v1;
}

id PDF417ParsingConfig.__allocating_init(aamvaHeader:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR____TtC13CoreIDVShared19PDF417ParsingConfig_aamvaHeader];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_init);
}

id PDF417ParsingConfig.init(aamvaHeader:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR____TtC13CoreIDVShared19PDF417ParsingConfig_aamvaHeader];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v2;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t sub_225B548C4()
{
  sub_225CCFBD4();
  sub_225CCE5B4();
  return sub_225CCFC24();
}

uint64_t sub_225B54940()
{
  sub_225CCFBD4();
  sub_225CCE5B4();
  return sub_225CCFC24();
}

uint64_t sub_225B54998@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_225CCF5D4();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_225B54A30@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_225CCF5D4();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_225B54A88(uint64_t a1)
{
  v2 = sub_225B550B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B54AC4(uint64_t a1)
{
  v2 = sub_225B550B4();

  return MEMORY[0x2821FE720](a1, v2);
}

id PDF417ParsingConfig.__allocating_init(coder:)(void *a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v2);
  sub_2259D8718(0, &qword_281059A60, 0x277CCACA8);
  result = sub_225CCEF14();
  if (result)
  {
    v6 = result;
    v7 = sub_225CCE474();
    v9 = v8;

    v10 = &v4[OBJC_IVAR____TtC13CoreIDVShared19PDF417ParsingConfig_aamvaHeader];
    *v10 = v7;
    v10[1] = v9;
    v12.receiver = v4;
    v12.super_class = v2;
    v11 = objc_msgSendSuper2(&v12, sel_init);

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id PDF417ParsingConfig.init(coder:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  sub_2259D8718(0, &qword_281059A60, 0x277CCACA8);
  result = sub_225CCEF14();
  if (result)
  {
    v6 = result;
    v7 = sub_225CCE474();
    v9 = v8;

    v10 = &v2[OBJC_IVAR____TtC13CoreIDVShared19PDF417ParsingConfig_aamvaHeader];
    *v10 = v7;
    v10[1] = v9;
    v12.receiver = v2;
    v12.super_class = ObjectType;
    v11 = objc_msgSendSuper2(&v12, sel_init);

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall PDF417ParsingConfig.encode(with:)(NSCoder with)
{
  v2 = sub_225CCE444();
  v3 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v2 forKey:v3];
}

id PDF417ParsingConfig.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t PDF417ParsingConfig.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73DCD8, &qword_225CEF900);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225B550B4();
  sub_225CCFCE4();
  sub_225CCF784();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_225B550B4()
{
  result = qword_28105A550;
  if (!qword_28105A550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28105A550);
  }

  return result;
}

void *PDF417ParsingConfig.init(from:)(void *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCE8, &qword_225CEF908);
  v16 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225B550B4();
  sub_225CCFCA4();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v10 = v16;
    v11 = sub_225CCF684();
    v13 = &v3[OBJC_IVAR____TtC13CoreIDVShared19PDF417ParsingConfig_aamvaHeader];
    *v13 = v11;
    v13[1] = v14;
    v15.receiver = v3;
    v15.super_class = ObjectType;
    v9 = objc_msgSendSuper2(&v15, sel_init);
    (*(v10 + 8))(v8, v6);
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v9;
}

void *sub_225B55310@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v6 = objc_allocWithZone(v2);
  result = PDF417ParsingConfig.init(from:)(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_225B55360(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73DCD8, &qword_225CEF900);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225B550B4();
  sub_225CCFCE4();
  sub_225CCF784();
  return (*(v3 + 8))(v5, v2);
}

id sub_225B554B4()
{
  if (qword_27D739FA0 != -1)
  {
    swift_once();
  }

  v0 = qword_27D73FBD0;
  v1 = type metadata accessor for IdentityDocScanConfig();
  v2 = objc_allocWithZone(v1);
  *&v2[OBJC_IVAR____TtC13CoreIDVShared21IdentityDocScanConfig_pdf417ParsingConfigs] = v0;
  v2[OBJC_IVAR____TtC13CoreIDVShared21IdentityDocScanConfig_requiresPDF417] = 1;
  v2[OBJC_IVAR____TtC13CoreIDVShared21IdentityDocScanConfig_requiresAAMVACompliant] = 1;
  v2[OBJC_IVAR____TtC13CoreIDVShared21IdentityDocScanConfig_requiresStateMatch] = 1;
  v3 = &v2[OBJC_IVAR____TtC13CoreIDVShared21IdentityDocScanConfig_issuerIdentificationNumber];
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  *&v2[OBJC_IVAR____TtC13CoreIDVShared21IdentityDocScanConfig_crTimeout] = 10;
  *&v2[OBJC_IVAR____TtC13CoreIDVShared21IdentityDocScanConfig_crManualDelay] = 5;
  v4 = &v2[OBJC_IVAR____TtC13CoreIDVShared21IdentityDocScanConfig_maxRetakeCount];
  *v4 = 0;
  v4[8] = 1;
  v6.receiver = v2;
  v6.super_class = v1;

  result = objc_msgSendSuper2(&v6, sel_init);
  qword_27D73DCC0 = result;
  return result;
}

id IdentityDocScanConfig.__allocating_init(pdf417ParsingConfigs:requiresPDF417:requiresAAMVACompliant:requiresStateMatch:issuerIdentificationNumber:crTimeout:crManualDelay:maxRetakeCount:)(uint64_t a1, char a2, char a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  v18 = objc_allocWithZone(v10);
  *&v18[OBJC_IVAR____TtC13CoreIDVShared21IdentityDocScanConfig_pdf417ParsingConfigs] = a1;
  v18[OBJC_IVAR____TtC13CoreIDVShared21IdentityDocScanConfig_requiresPDF417] = a2;
  v18[OBJC_IVAR____TtC13CoreIDVShared21IdentityDocScanConfig_requiresAAMVACompliant] = a3;
  v18[OBJC_IVAR____TtC13CoreIDVShared21IdentityDocScanConfig_requiresStateMatch] = a4;
  v19 = &v18[OBJC_IVAR____TtC13CoreIDVShared21IdentityDocScanConfig_issuerIdentificationNumber];
  *v19 = a5;
  v19[1] = a6;
  *&v18[OBJC_IVAR____TtC13CoreIDVShared21IdentityDocScanConfig_crTimeout] = a7;
  *&v18[OBJC_IVAR____TtC13CoreIDVShared21IdentityDocScanConfig_crManualDelay] = a8;
  v20 = &v18[OBJC_IVAR____TtC13CoreIDVShared21IdentityDocScanConfig_maxRetakeCount];
  *v20 = a9;
  v20[8] = a10 & 1;
  v23.receiver = v18;
  v23.super_class = v10;
  return objc_msgSendSuper2(&v23, sel_init);
}

id static IdentityDocScanConfig.defaultConfig.getter()
{
  if (qword_27D739F98 != -1)
  {
    swift_once();
  }

  v1 = qword_27D73DCC0;

  return v1;
}

uint64_t IdentityDocScanConfig.issuerIdentificationNumber.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC13CoreIDVShared21IdentityDocScanConfig_issuerIdentificationNumber);

  return v1;
}

id IdentityDocScanConfig.init(pdf417ParsingConfigs:requiresPDF417:requiresAAMVACompliant:requiresStateMatch:issuerIdentificationNumber:crTimeout:crManualDelay:maxRetakeCount:)(uint64_t a1, char a2, char a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  ObjectType = swift_getObjectType();
  *&v10[OBJC_IVAR____TtC13CoreIDVShared21IdentityDocScanConfig_pdf417ParsingConfigs] = a1;
  v10[OBJC_IVAR____TtC13CoreIDVShared21IdentityDocScanConfig_requiresPDF417] = a2;
  v10[OBJC_IVAR____TtC13CoreIDVShared21IdentityDocScanConfig_requiresAAMVACompliant] = a3;
  v10[OBJC_IVAR____TtC13CoreIDVShared21IdentityDocScanConfig_requiresStateMatch] = a4;
  v19 = &v10[OBJC_IVAR____TtC13CoreIDVShared21IdentityDocScanConfig_issuerIdentificationNumber];
  *v19 = a5;
  v19[1] = a6;
  *&v10[OBJC_IVAR____TtC13CoreIDVShared21IdentityDocScanConfig_crTimeout] = a7;
  *&v10[OBJC_IVAR____TtC13CoreIDVShared21IdentityDocScanConfig_crManualDelay] = a8;
  v20 = &v10[OBJC_IVAR____TtC13CoreIDVShared21IdentityDocScanConfig_maxRetakeCount];
  *v20 = a9;
  v20[8] = a10 & 1;
  v23.receiver = v10;
  v23.super_class = ObjectType;
  return objc_msgSendSuper2(&v23, sel_init);
}

id IdentityDocScanConfig.__allocating_init(pdf417ParsingConfigs:requiresPDF417:requiresAAMVACompliant:requiresStateMatch:issuerIdentificationNumber:crTimeout:crManualDelay:maxRetakeCount:)(uint64_t a1, char a2, char a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, char a10, uint64_t a11, char a12)
{
  if (a1)
  {
    v26 = a1;
  }

  else
  {
    if (qword_27D739FA0 != -1)
    {
      swift_once();
    }

    v26 = qword_27D73FBD0;
  }

  if (a2 == 2)
  {
    if (qword_27D739F98 != -1)
    {
      swift_once();
    }

    a2 = *(qword_27D73DCC0 + OBJC_IVAR____TtC13CoreIDVShared21IdentityDocScanConfig_requiresPDF417);
  }

  if (a3 == 2)
  {
    if (qword_27D739F98 != -1)
    {
      swift_once();
    }

    a3 = *(qword_27D73DCC0 + OBJC_IVAR____TtC13CoreIDVShared21IdentityDocScanConfig_requiresAAMVACompliant);
  }

  if (a4 == 2)
  {
    if (qword_27D739F98 != -1)
    {
      swift_once();
    }

    a4 = *(qword_27D73DCC0 + OBJC_IVAR____TtC13CoreIDVShared21IdentityDocScanConfig_requiresStateMatch);
  }

  v27 = a2;
  if (a6)
  {
    v19 = a4;
    v20 = a5;
  }

  else
  {
    if (qword_27D739F98 != -1)
    {
      swift_once();
    }

    v19 = a4;
    v20 = *(qword_27D73DCC0 + OBJC_IVAR____TtC13CoreIDVShared21IdentityDocScanConfig_issuerIdentificationNumber);
    a6 = *(qword_27D73DCC0 + OBJC_IVAR____TtC13CoreIDVShared21IdentityDocScanConfig_issuerIdentificationNumber + 8);
  }

  if (a8)
  {
    if (qword_27D739F98 != -1)
    {
      swift_once();
    }

    a7 = *(qword_27D73DCC0 + OBJC_IVAR____TtC13CoreIDVShared21IdentityDocScanConfig_crTimeout);
  }

  if (a10)
  {
    if (qword_27D739F98 != -1)
    {
      swift_once();
    }

    a9 = *(qword_27D73DCC0 + OBJC_IVAR____TtC13CoreIDVShared21IdentityDocScanConfig_crManualDelay);
  }

  v22 = objc_allocWithZone(v28);
  *&v22[OBJC_IVAR____TtC13CoreIDVShared21IdentityDocScanConfig_pdf417ParsingConfigs] = v26;
  v22[OBJC_IVAR____TtC13CoreIDVShared21IdentityDocScanConfig_requiresPDF417] = v27 & 1;
  v22[OBJC_IVAR____TtC13CoreIDVShared21IdentityDocScanConfig_requiresAAMVACompliant] = a3 & 1;
  v22[OBJC_IVAR____TtC13CoreIDVShared21IdentityDocScanConfig_requiresStateMatch] = v19 & 1;
  v23 = &v22[OBJC_IVAR____TtC13CoreIDVShared21IdentityDocScanConfig_issuerIdentificationNumber];
  *v23 = v20;
  v23[1] = a6;
  *&v22[OBJC_IVAR____TtC13CoreIDVShared21IdentityDocScanConfig_crTimeout] = a7;
  *&v22[OBJC_IVAR____TtC13CoreIDVShared21IdentityDocScanConfig_crManualDelay] = a9;
  v24 = &v22[OBJC_IVAR____TtC13CoreIDVShared21IdentityDocScanConfig_maxRetakeCount];
  *v24 = a11;
  v24[8] = a12 & 1;
  v29.receiver = v22;
  v29.super_class = v28;
  return objc_msgSendSuper2(&v29, sel_init);
}

id IdentityDocScanConfig.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_225B5630C(a1);

  return v4;
}

id IdentityDocScanConfig.init(coder:)(void *a1)
{
  v2 = sub_225B5630C(a1);

  return v2;
}

Swift::Void __swiftcall IdentityDocScanConfig.encode(with:)(NSCoder with)
{
  v3 = sub_225CCD954();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *&v1[OBJC_IVAR____TtC13CoreIDVShared21IdentityDocScanConfig_pdf417ParsingConfigs];
  type metadata accessor for PDF417ParsingConfig();
  v8 = sub_225CCE7F4();
  v9 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v8 forKey:v9];

  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v10 = off_28105B918;
  v11 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v12 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v12));
  (*(v4 + 16))(v6, &v10[v11], v3);
  os_unfair_lock_unlock(&v10[v12]);
  v13 = v1;
  v14 = sub_225CCD934();
  v15 = sub_225CCED04();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 134217984;
    if (v7 >> 62)
    {
      v33 = v16;
      v17 = sub_225CCF144();
      v16 = v33;
    }

    else
    {
      v17 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v16 + 4) = v17;
    v18 = v16;

    _os_log_impl(&dword_2259A7000, v14, v15, "encode pdf417ParsingConfigs size = %ld", v18, 0xCu);
    MEMORY[0x22AA6F950](v18, -1, -1);
  }

  else
  {

    v14 = v13;
  }

  (*(v4 + 8))(v6, v3);
  v19 = *(&v13->isa + OBJC_IVAR____TtC13CoreIDVShared21IdentityDocScanConfig_requiresPDF417);
  v20 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeBool:v19 forKey:v20];

  v21 = *(&v13->isa + OBJC_IVAR____TtC13CoreIDVShared21IdentityDocScanConfig_requiresAAMVACompliant);
  v22 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeBool:v21 forKey:v22];

  v23 = *(&v13->isa + OBJC_IVAR____TtC13CoreIDVShared21IdentityDocScanConfig_requiresStateMatch);
  v24 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeBool:v23 forKey:v24];

  v25 = sub_225CCE444();
  v26 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v25 forKey:v26];

  v27 = *(&v13->isa + OBJC_IVAR____TtC13CoreIDVShared21IdentityDocScanConfig_crTimeout);
  v28 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeInteger:v27 forKey:v28];

  v29 = *(&v13->isa + OBJC_IVAR____TtC13CoreIDVShared21IdentityDocScanConfig_crManualDelay);
  v30 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeInteger:v29 forKey:v30];

  if ((*(&v13[1].isa + OBJC_IVAR____TtC13CoreIDVShared21IdentityDocScanConfig_maxRetakeCount) & 1) == 0)
  {
    v31 = sub_225CCF024();
    v32 = sub_225CCE444();
    [(objc_class *)with.super.isa encodeObject:v31 forKey:v32];
  }
}

id _s13CoreIDVShared19PDF417ParsingConfigCfD_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_225B5630C(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_225CCD954();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73DC80, &unk_225CEF7D0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_225CD4890;
  *(v8 + 32) = sub_2259D8718(0, &qword_281059AA0, 0x277CBEA60);
  *(v8 + 40) = type metadata accessor for PDF417ParsingConfig();
  v9 = v1;
  sub_225CCEF24();

  if (!v46)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    return result;
  }

  sub_2259B9624(&v45, &v47);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DD38, &unk_225CEFB20);
  swift_dynamicCast();
  v11 = OBJC_IVAR____TtC13CoreIDVShared21IdentityDocScanConfig_pdf417ParsingConfigs;
  *&v9[OBJC_IVAR____TtC13CoreIDVShared21IdentityDocScanConfig_pdf417ParsingConfigs] = v44;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v12 = off_28105B918;
  v13 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v14 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v14));
  (*(v5 + 16))(v7, &v12[v13], v4);
  os_unfair_lock_unlock(&v12[v14]);
  v15 = v9;
  v16 = sub_225CCD934();
  v17 = sub_225CCED04();
  if (os_log_type_enabled(v16, v17))
  {
    v42 = ObjectType;
    v18 = swift_slowAlloc();
    *v18 = 134217984;
    v19 = *&v9[v11];
    if (v19 >> 62)
    {
      v20 = sub_225CCF144();
    }

    else
    {
      v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v18 + 4) = v20;
    _os_log_impl(&dword_2259A7000, v16, v17, "decode pdf417ParsingConfigs size = %ld", v18, 0xCu);
    MEMORY[0x22AA6F950](v18, -1, -1);
    ObjectType = v42;
  }

  else
  {

    v16 = v15;
  }

  (*(v5 + 8))(v7, v4);
  v21 = sub_225CCE444();
  v22 = [a1 decodeBoolForKey_];

  *(&v15->isa + OBJC_IVAR____TtC13CoreIDVShared21IdentityDocScanConfig_requiresPDF417) = v22;
  v23 = sub_225CCE444();
  v24 = [a1 decodeBoolForKey_];

  *(&v15->isa + OBJC_IVAR____TtC13CoreIDVShared21IdentityDocScanConfig_requiresAAMVACompliant) = v24;
  v25 = sub_225CCE444();
  v26 = [a1 decodeBoolForKey_];

  *(&v15->isa + OBJC_IVAR____TtC13CoreIDVShared21IdentityDocScanConfig_requiresStateMatch) = v26;
  sub_2259D8718(0, &qword_281059A60, 0x277CCACA8);
  result = sub_225CCEF14();
  if (!result)
  {
    goto LABEL_16;
  }

  v27 = result;
  v28 = sub_225CCE474();
  v30 = v29;

  v31 = (v15 + OBJC_IVAR____TtC13CoreIDVShared21IdentityDocScanConfig_issuerIdentificationNumber);
  *v31 = v28;
  v31[1] = v30;
  v32 = sub_225CCE444();
  v33 = [a1 decodeIntegerForKey_];

  *(&v15->isa + OBJC_IVAR____TtC13CoreIDVShared21IdentityDocScanConfig_crTimeout) = v33;
  v34 = sub_225CCE444();
  v35 = [a1 decodeIntegerForKey_];

  *(&v15->isa + OBJC_IVAR____TtC13CoreIDVShared21IdentityDocScanConfig_crManualDelay) = v35;
  v36 = sub_225CCE444();
  LODWORD(v35) = [a1 containsValueForKey_];

  if (v35)
  {
    v37 = sub_225CCE444();
    v38 = [a1 decodeIntegerForKey_];

    v39 = v38 >> 63;
    v40 = v38 & ~(v38 >> 63);
  }

  else
  {
    v40 = 0;
    LOBYTE(v39) = 1;
  }

  v41 = v15 + OBJC_IVAR____TtC13CoreIDVShared21IdentityDocScanConfig_maxRetakeCount;
  *v41 = v40;
  v41[8] = v39;
  v43.receiver = v15;
  v43.super_class = ObjectType;
  return objc_msgSendSuper2(&v43, sel_init);
}

unint64_t sub_225B569F8()
{
  result = qword_27D73DD30;
  if (!qword_27D73DD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73DD30);
  }

  return result;
}

unint64_t sub_225B56A50()
{
  result = qword_28105A538;
  if (!qword_28105A538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28105A538);
  }

  return result;
}

unint64_t sub_225B56AA8()
{
  result = qword_28105A540;
  if (!qword_28105A540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28105A540);
  }

  return result;
}

uint64_t IdentityDocument.image.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC13CoreIDVShared16IdentityDocument_image);
  sub_2259CB6FC(v1, *(v0 + OBJC_IVAR____TtC13CoreIDVShared16IdentityDocument_image + 8));
  return v1;
}

void *IdentityDocument.scanMetrics.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC13CoreIDVShared16IdentityDocument_scanMetrics);
  v2 = v1;
  return v1;
}

void *IdentityDocument.imageMetrics.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC13CoreIDVShared16IdentityDocument_imageMetrics);
  v2 = v1;
  return v1;
}

uint64_t IdentityDocument.pdf417Data.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC13CoreIDVShared16IdentityDocument_pdf417Data);
  sub_2259CB6FC(v1, *(v0 + OBJC_IVAR____TtC13CoreIDVShared16IdentityDocument_pdf417Data + 8));
  return v1;
}

uint64_t IdentityDocument.mrz.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC13CoreIDVShared16IdentityDocument_mrz);

  return v1;
}

uint64_t IdentityDocument.nfcHash.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC13CoreIDVShared16IdentityDocument_nfcHash);
  sub_2259CB6FC(v1, *(v0 + OBJC_IVAR____TtC13CoreIDVShared16IdentityDocument_nfcHash + 8));
  return v1;
}

id IdentityDocument.__allocating_init(image:scanMetrics:imageMetrics:pdf417Data:mrz:nfcData:nfcHash:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v19 = objc_allocWithZone(v11);
  v20 = &v19[OBJC_IVAR____TtC13CoreIDVShared16IdentityDocument_image];
  *v20 = a1;
  *(v20 + 1) = a2;
  *&v19[OBJC_IVAR____TtC13CoreIDVShared16IdentityDocument_scanMetrics] = a3;
  *&v19[OBJC_IVAR____TtC13CoreIDVShared16IdentityDocument_imageMetrics] = a4;
  v21 = &v19[OBJC_IVAR____TtC13CoreIDVShared16IdentityDocument_pdf417Data];
  *v21 = a5;
  *(v21 + 1) = a6;
  v22 = &v19[OBJC_IVAR____TtC13CoreIDVShared16IdentityDocument_mrz];
  *v22 = a7;
  *(v22 + 1) = a8;
  *&v19[OBJC_IVAR____TtC13CoreIDVShared16IdentityDocument_nfcData] = a9;
  v23 = &v19[OBJC_IVAR____TtC13CoreIDVShared16IdentityDocument_nfcHash];
  *v23 = a10;
  *(v23 + 1) = a11;
  v26.receiver = v19;
  v26.super_class = v11;
  return objc_msgSendSuper2(&v26, sel_init);
}

id IdentityDocument.init(image:scanMetrics:imageMetrics:pdf417Data:mrz:nfcData:nfcHash:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  ObjectType = swift_getObjectType();
  v20 = &v11[OBJC_IVAR____TtC13CoreIDVShared16IdentityDocument_image];
  *v20 = a1;
  *(v20 + 1) = a2;
  *&v11[OBJC_IVAR____TtC13CoreIDVShared16IdentityDocument_scanMetrics] = a3;
  *&v11[OBJC_IVAR____TtC13CoreIDVShared16IdentityDocument_imageMetrics] = a4;
  v21 = &v11[OBJC_IVAR____TtC13CoreIDVShared16IdentityDocument_pdf417Data];
  *v21 = a5;
  *(v21 + 1) = a6;
  v22 = &v11[OBJC_IVAR____TtC13CoreIDVShared16IdentityDocument_mrz];
  *v22 = a7;
  *(v22 + 1) = a8;
  *&v11[OBJC_IVAR____TtC13CoreIDVShared16IdentityDocument_nfcData] = a9;
  v23 = &v11[OBJC_IVAR____TtC13CoreIDVShared16IdentityDocument_nfcHash];
  *v23 = a10;
  *(v23 + 1) = a11;
  v26.receiver = v11;
  v26.super_class = ObjectType;
  return objc_msgSendSuper2(&v26, sel_init);
}

id IdentityDocument.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_225B573D4();

  return v4;
}

id IdentityDocument.init(coder:)(void *a1)
{
  v2 = sub_225B573D4();

  return v2;
}

Swift::Void __swiftcall IdentityDocument.encode(with:)(NSCoder with)
{
  if (*(v1 + OBJC_IVAR____TtC13CoreIDVShared16IdentityDocument_image + 8) >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_225CCCF74();
  }

  v4 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];
  swift_unknownObjectRelease();

  v5 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared16IdentityDocument_scanMetrics);
  v6 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];

  v7 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared16IdentityDocument_imageMetrics);
  v8 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v7 forKey:v8];

  if (*(v1 + OBJC_IVAR____TtC13CoreIDVShared16IdentityDocument_pdf417Data + 8) >> 60 == 15)
  {
    v9 = 0;
  }

  else
  {
    v9 = sub_225CCCF74();
  }

  v10 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v9 forKey:v10];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR____TtC13CoreIDVShared16IdentityDocument_mrz + 8))
  {
    v11 = sub_225CCE444();
  }

  else
  {
    v11 = 0;
  }

  v12 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v11 forKey:v12];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR____TtC13CoreIDVShared16IdentityDocument_nfcData))
  {
    v13 = sub_225CCE2B4();
  }

  else
  {
    v13 = 0;
  }

  v14 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v13 forKey:v14];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR____TtC13CoreIDVShared16IdentityDocument_nfcHash + 8) >> 60 == 15)
  {
    v15 = 0;
  }

  else
  {
    v15 = sub_225CCCF74();
  }

  v16 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v15 forKey:v16];
  swift_unknownObjectRelease();
}

id IdentityDocument.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id IdentityDocument.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_225B573D4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_2259D8718(0, &qword_27D73DD80, 0x277CBEA90);
  v3 = sub_225CCEF14();
  if (v3)
  {
    v4 = v3;
    v5 = sub_225CCCFA4();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xF000000000000000;
  }

  v8 = &v0[OBJC_IVAR____TtC13CoreIDVShared16IdentityDocument_image];
  *v8 = v5;
  v8[1] = v7;
  type metadata accessor for IdentityImageQualityMetrics();
  *&v0[OBJC_IVAR____TtC13CoreIDVShared16IdentityDocument_scanMetrics] = sub_225CCEF14();
  *&v0[OBJC_IVAR____TtC13CoreIDVShared16IdentityDocument_imageMetrics] = sub_225CCEF14();
  v9 = sub_225CCEF14();
  if (v9)
  {
    v10 = v9;
    v11 = sub_225CCCFA4();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0xF000000000000000;
  }

  v14 = &v0[OBJC_IVAR____TtC13CoreIDVShared16IdentityDocument_pdf417Data];
  *v14 = v11;
  v14[1] = v13;
  v15 = sub_2259D8718(0, &qword_281059A60, 0x277CCACA8);
  v16 = sub_225CCEF14();
  if (v16)
  {
    v17 = v16;
    v18 = sub_225CCE474();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0;
  }

  v21 = &v0[OBJC_IVAR____TtC13CoreIDVShared16IdentityDocument_mrz];
  *v21 = v18;
  v21[1] = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73DC80, &unk_225CEF7D0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_225CD4890;
  *(v22 + 32) = sub_2259D8718(0, &unk_27D73E350, 0x277CBEAC0);
  *(v22 + 40) = v15;
  sub_225CCEF24();

  if (v35)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73E570, &qword_225CE53B8);
    v23 = swift_dynamicCast();
    v24 = v32;
    if (!v23)
    {
      v24 = 0;
    }
  }

  else
  {
    sub_225B5445C(v34);
    v24 = 0;
  }

  *&v0[OBJC_IVAR____TtC13CoreIDVShared16IdentityDocument_nfcData] = v24;
  v25 = sub_225CCEF14();
  if (v25)
  {
    v26 = v25;
    v27 = sub_225CCCFA4();
    v29 = v28;
  }

  else
  {
    v27 = 0;
    v29 = 0xF000000000000000;
  }

  v30 = &v1[OBJC_IVAR____TtC13CoreIDVShared16IdentityDocument_nfcHash];
  *v30 = v27;
  v30[1] = v29;
  v33.receiver = v1;
  v33.super_class = ObjectType;
  return objc_msgSendSuper2(&v33, sel_init);
}

uint64_t IdentityDocumentType.textReplacementKey.getter(uint64_t a1)
{
  v1 = 0x74726F7073736170;
  v2 = 0x636972656E6567;
  if (a1 == 1)
  {
    v2 = 0x64696574617473;
  }

  if (a1 != 3)
  {
    v1 = v2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 27748;
  }
}

uint64_t IdentityDocumentType.description.getter(uint64_t a1)
{
  v1 = 0x74726F7073736170;
  v2 = 0x636972656E6567;
  if (a1 == 1)
  {
    v2 = 25705;
  }

  if (a1 != 3)
  {
    v1 = v2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 27748;
  }
}

uint64_t IdentityDocumentType.init(pdf417Data:)(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(__srca, __src, sizeof(__srca));
  if (sub_225B57BE4(__srca) != 1)
  {
    sub_225B57BFC(__srca, &v9);
    sub_2259CB640(__dst, &qword_27D73DDA0, &qword_225CEFB78);
    memcpy(v10, __srca, sizeof(v10));
    if (sub_2259D061C(v10) != 1)
    {
      v2 = v10[0];
      v3 = v10[1];

      sub_2259CB640(__srca, &qword_27D73DD98, &qword_225CEFB70);
      v4 = HIBYTE(v3) & 0xF;
      if ((v3 & 0x2000000000000000) == 0)
      {
        v4 = v2 & 0xFFFFFFFFFFFFLL;
      }

      if (v4)
      {
        v5 = sub_225CCE514();
        v7 = v6;

        return _s13CoreIDVShared20IdentityDocumentTypeO08documentE6StringACSS_tcfC_0(v5, v7);
      }
    }
  }

  return 0;
}

uint64_t IdentityDocumentType.Category.hashValue.getter()
{
  v1 = *v0;
  sub_225CCFBD4();
  MEMORY[0x22AA6E420](v1);
  return sub_225CCFC24();
}

unint64_t IdentityDocumentType.category.getter@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v2 = 0x1000000u >> (8 * result);
  if (result >= 4)
  {
    LOBYTE(v2) = 2;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_225B57A1C()
{
  v1 = *v0;
  sub_225CCFBD4();
  MEMORY[0x22AA6E450](v1);
  return sub_225CCFC24();
}

uint64_t sub_225B57A64()
{
  v1 = *v0;
  sub_225CCFBD4();
  MEMORY[0x22AA6E450](v1);
  return sub_225CCFC24();
}

unint64_t sub_225B57AA8@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_225B57C6C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t _s13CoreIDVShared20IdentityDocumentTypeO08documentE6StringACSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 27748 && a2 == 0xE200000000000000;
  if (v3 || (sub_225CCF934() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (sub_225CCF934() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74726F7073736170 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_225CCF934();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_225B57BE4(uint64_t a1)
{
  v1 = *(a1 + 872);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_225B57BFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DD98, &qword_225CEFB70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_225B57C6C(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

unint64_t sub_225B57C80()
{
  result = qword_27D73DDA8;
  if (!qword_27D73DDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73DDA8);
  }

  return result;
}

unint64_t sub_225B57CD8()
{
  result = qword_27D73DDB0;
  if (!qword_27D73DDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73DDB0);
  }

  return result;
}

uint64_t IdentityImageQuality.frontScanSettings.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC13CoreIDVShared20IdentityImageQuality_frontScanSettings);
  sub_2259CB6FC(v1, *(v0 + OBJC_IVAR____TtC13CoreIDVShared20IdentityImageQuality_frontScanSettings + 8));
  return v1;
}

uint64_t IdentityImageQuality.backScanSettings.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC13CoreIDVShared20IdentityImageQuality_backScanSettings);
  sub_2259CB6FC(v1, *(v0 + OBJC_IVAR____TtC13CoreIDVShared20IdentityImageQuality_backScanSettings + 8));
  return v1;
}

uint64_t IdentityImageQuality.frontIDSettings.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC13CoreIDVShared20IdentityImageQuality_frontIDSettings);
  sub_2259CB6FC(v1, *(v0 + OBJC_IVAR____TtC13CoreIDVShared20IdentityImageQuality_frontIDSettings + 8));
  return v1;
}

uint64_t IdentityImageQuality.backIDSettings.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC13CoreIDVShared20IdentityImageQuality_backIDSettings);
  sub_2259CB6FC(v1, *(v0 + OBJC_IVAR____TtC13CoreIDVShared20IdentityImageQuality_backIDSettings + 8));
  return v1;
}

uint64_t IdentityImageQuality.selfieSettings.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC13CoreIDVShared20IdentityImageQuality_selfieSettings);
  sub_2259CB6FC(v1, *(v0 + OBJC_IVAR____TtC13CoreIDVShared20IdentityImageQuality_selfieSettings + 8));
  return v1;
}

uint64_t IdentityImageQuality.livenessSettings.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC13CoreIDVShared20IdentityImageQuality_livenessSettings);
  sub_2259CB6FC(v1, *(v0 + OBJC_IVAR____TtC13CoreIDVShared20IdentityImageQuality_livenessSettings + 8));
  return v1;
}

uint64_t IdentityImageQuality.passiveSettings.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC13CoreIDVShared20IdentityImageQuality_passiveSettings);
  sub_2259CB6FC(v1, *(v0 + OBJC_IVAR____TtC13CoreIDVShared20IdentityImageQuality_passiveSettings + 8));
  return v1;
}

uint64_t IdentityImageQuality.livenessBlockingCodes.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC13CoreIDVShared20IdentityImageQuality_livenessBlockingCodes);
  sub_2259CB6FC(v1, *(v0 + OBJC_IVAR____TtC13CoreIDVShared20IdentityImageQuality_livenessBlockingCodes + 8));
  return v1;
}

void *IdentityImageQuality.resizeDimensions.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC13CoreIDVShared20IdentityImageQuality_resizeDimensions);
  v2 = v1;
  return v1;
}

uint64_t IdentityImageQuality.passportSettings.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC13CoreIDVShared20IdentityImageQuality_passportSettings);
  sub_2259CB6FC(v1, *(v0 + OBJC_IVAR____TtC13CoreIDVShared20IdentityImageQuality_passportSettings + 8));
  return v1;
}

id IdentityImageQuality.__allocating_init(frontScanSettings:backScanSettings:frontIDSettings:backIDSettings:selfieSettings:livenessSettings:passiveSettings:livenessBlockingCodes:exploration:bufferSize:stableWindow:idScanFrameRate:videoFrameRate:maxRectTravel:resizeDimensions:passportSettings:passportFramerate:passportTimeout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, char a21, uint64_t a22, char a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, char a33)
{
  v38 = objc_allocWithZone(v33);
  v39 = &v38[OBJC_IVAR____TtC13CoreIDVShared20IdentityImageQuality_frontScanSettings];
  *v39 = a1;
  v39[1] = a2;
  v40 = &v38[OBJC_IVAR____TtC13CoreIDVShared20IdentityImageQuality_backScanSettings];
  *v40 = a3;
  v40[1] = a4;
  v41 = &v38[OBJC_IVAR____TtC13CoreIDVShared20IdentityImageQuality_frontIDSettings];
  *v41 = a5;
  v41[1] = a6;
  v42 = &v38[OBJC_IVAR____TtC13CoreIDVShared20IdentityImageQuality_backIDSettings];
  *v42 = a7;
  v42[1] = a8;
  v43 = &v38[OBJC_IVAR____TtC13CoreIDVShared20IdentityImageQuality_selfieSettings];
  *v43 = a9;
  v43[1] = a10;
  v44 = &v38[OBJC_IVAR____TtC13CoreIDVShared20IdentityImageQuality_livenessSettings];
  *v44 = a11;
  v44[1] = a12;
  v45 = &v38[OBJC_IVAR____TtC13CoreIDVShared20IdentityImageQuality_passiveSettings];
  *v45 = a13;
  v45[1] = a14;
  v46 = &v38[OBJC_IVAR____TtC13CoreIDVShared20IdentityImageQuality_livenessBlockingCodes];
  *v46 = a15;
  v46[1] = a16;
  v38[OBJC_IVAR____TtC13CoreIDVShared20IdentityImageQuality_exploration] = a17;
  v47 = &v38[OBJC_IVAR____TtC13CoreIDVShared20IdentityImageQuality_bufferSize];
  *v47 = a18;
  v47[8] = a19 & 1;
  v48 = &v38[OBJC_IVAR____TtC13CoreIDVShared20IdentityImageQuality_stableWindow];
  *v48 = a20;
  v48[8] = a21 & 1;
  v49 = &v38[OBJC_IVAR____TtC13CoreIDVShared20IdentityImageQuality_idScanFrameRate];
  *v49 = a22;
  v49[8] = a23 & 1;
  v50 = &v38[OBJC_IVAR____TtC13CoreIDVShared20IdentityImageQuality_videoFrameRate];
  *v50 = a24;
  v50[8] = a25 & 1;
  v51 = &v38[OBJC_IVAR____TtC13CoreIDVShared20IdentityImageQuality_maxRectTravel];
  *v51 = a26;
  v51[4] = BYTE4(a26) & 1;
  *&v38[OBJC_IVAR____TtC13CoreIDVShared20IdentityImageQuality_resizeDimensions] = a27;
  v52 = &v38[OBJC_IVAR____TtC13CoreIDVShared20IdentityImageQuality_passportSettings];
  *v52 = a28;
  v52[1] = a29;
  v53 = &v38[OBJC_IVAR____TtC13CoreIDVShared20IdentityImageQuality_passportFrameRate];
  *v53 = a30;
  v53[8] = a31 & 1;
  v54 = &v38[OBJC_IVAR____TtC13CoreIDVShared20IdentityImageQuality_passportTimeout];
  *v54 = a32;
  v54[8] = a33 & 1;
  v61.receiver = v38;
  v61.super_class = v60;
  return objc_msgSendSuper2(&v61, sel_init);
}

id IdentityImageQuality.init(frontScanSettings:backScanSettings:frontIDSettings:backIDSettings:selfieSettings:livenessSettings:passiveSettings:livenessBlockingCodes:exploration:bufferSize:stableWindow:idScanFrameRate:videoFrameRate:maxRectTravel:resizeDimensions:passportSettings:passportFramerate:passportTimeout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, char a21, uint64_t a22, char a23, uint64_t a24, char a25, int a26, int a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, char a35)
{
  v61.super_class = swift_getObjectType();
  v40 = &v35[OBJC_IVAR____TtC13CoreIDVShared20IdentityImageQuality_frontScanSettings];
  *v40 = a1;
  v40[1] = a2;
  v41 = &v35[OBJC_IVAR____TtC13CoreIDVShared20IdentityImageQuality_backScanSettings];
  *v41 = a3;
  v41[1] = a4;
  v42 = &v35[OBJC_IVAR____TtC13CoreIDVShared20IdentityImageQuality_frontIDSettings];
  *v42 = a5;
  v42[1] = a6;
  v43 = &v35[OBJC_IVAR____TtC13CoreIDVShared20IdentityImageQuality_backIDSettings];
  *v43 = a7;
  v43[1] = a8;
  v44 = &v35[OBJC_IVAR____TtC13CoreIDVShared20IdentityImageQuality_selfieSettings];
  *v44 = a9;
  v44[1] = a10;
  v45 = &v35[OBJC_IVAR____TtC13CoreIDVShared20IdentityImageQuality_livenessSettings];
  *v45 = a11;
  v45[1] = a12;
  v46 = &v35[OBJC_IVAR____TtC13CoreIDVShared20IdentityImageQuality_passiveSettings];
  *v46 = a13;
  v46[1] = a14;
  v47 = &v35[OBJC_IVAR____TtC13CoreIDVShared20IdentityImageQuality_livenessBlockingCodes];
  *v47 = a15;
  v47[1] = a16;
  v35[OBJC_IVAR____TtC13CoreIDVShared20IdentityImageQuality_exploration] = a17;
  v61.receiver = v35;
  v48 = &v35[OBJC_IVAR____TtC13CoreIDVShared20IdentityImageQuality_bufferSize];
  *v48 = a18;
  v48[8] = a19 & 1;
  v49 = &v35[OBJC_IVAR____TtC13CoreIDVShared20IdentityImageQuality_stableWindow];
  *v49 = a20;
  v49[8] = a21 & 1;
  v50 = &v35[OBJC_IVAR____TtC13CoreIDVShared20IdentityImageQuality_idScanFrameRate];
  *v50 = a22;
  v50[8] = a23 & 1;
  v51 = &v35[OBJC_IVAR____TtC13CoreIDVShared20IdentityImageQuality_videoFrameRate];
  *v51 = a24;
  v51[8] = a25 & 1;
  v52 = &v35[OBJC_IVAR____TtC13CoreIDVShared20IdentityImageQuality_maxRectTravel];
  *v52 = a27;
  v52[4] = a28 & 1;
  *&v35[OBJC_IVAR____TtC13CoreIDVShared20IdentityImageQuality_resizeDimensions] = a29;
  v53 = &v35[OBJC_IVAR____TtC13CoreIDVShared20IdentityImageQuality_passportSettings];
  *v53 = a30;
  v53[1] = a31;
  v54 = &v35[OBJC_IVAR____TtC13CoreIDVShared20IdentityImageQuality_passportFrameRate];
  *v54 = a32;
  v54[8] = a33 & 1;
  v55 = &v35[OBJC_IVAR____TtC13CoreIDVShared20IdentityImageQuality_passportTimeout];
  *v55 = a34;
  v55[8] = a35 & 1;
  return objc_msgSendSuper2(&v61, sel_init);
}

id IdentityImageQuality.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_225B590DC(a1);

  return v4;
}

id IdentityImageQuality.init(coder:)(void *a1)
{
  v2 = sub_225B590DC(a1);

  return v2;
}

Swift::Void __swiftcall IdentityImageQuality.encode(with:)(NSCoder with)
{
  if (*(v1 + OBJC_IVAR____TtC13CoreIDVShared20IdentityImageQuality_frontScanSettings + 8) >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_225CCCF74();
  }

  v4 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR____TtC13CoreIDVShared20IdentityImageQuality_backScanSettings + 8) >> 60 == 15)
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_225CCCF74();
  }

  v6 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR____TtC13CoreIDVShared20IdentityImageQuality_frontIDSettings + 8) >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v7 = sub_225CCCF74();
  }

  v8 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v7 forKey:v8];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR____TtC13CoreIDVShared20IdentityImageQuality_backIDSettings + 8) >> 60 == 15)
  {
    v9 = 0;
  }

  else
  {
    v9 = sub_225CCCF74();
  }

  v10 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v9 forKey:v10];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR____TtC13CoreIDVShared20IdentityImageQuality_selfieSettings + 8) >> 60 == 15)
  {
    v11 = 0;
  }

  else
  {
    v11 = sub_225CCCF74();
  }

  v12 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v11 forKey:v12];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR____TtC13CoreIDVShared20IdentityImageQuality_livenessSettings + 8) >> 60 == 15)
  {
    v13 = 0;
  }

  else
  {
    v13 = sub_225CCCF74();
  }

  v14 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v13 forKey:v14];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR____TtC13CoreIDVShared20IdentityImageQuality_passiveSettings + 8) >> 60 == 15)
  {
    v15 = 0;
  }

  else
  {
    v15 = sub_225CCCF74();
  }

  v16 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v15 forKey:v16];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR____TtC13CoreIDVShared20IdentityImageQuality_livenessBlockingCodes + 8) >> 60 == 15)
  {
    v17 = 0;
  }

  else
  {
    v17 = sub_225CCCF74();
  }

  v18 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v17 forKey:v18];
  swift_unknownObjectRelease();

  v19 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared20IdentityImageQuality_exploration);
  v20 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeBool:v19 forKey:v20];

  if (*(v1 + OBJC_IVAR____TtC13CoreIDVShared20IdentityImageQuality_bufferSize + 8))
  {
    v21 = 0;
  }

  else
  {
    v21 = sub_225CCEC44();
  }

  v22 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v21 forKey:v22];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR____TtC13CoreIDVShared20IdentityImageQuality_stableWindow + 8))
  {
    v23 = 0;
  }

  else
  {
    v23 = sub_225CCEC44();
  }

  v24 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v23 forKey:v24];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR____TtC13CoreIDVShared20IdentityImageQuality_idScanFrameRate + 8))
  {
    v25 = 0;
  }

  else
  {
    v25 = sub_225CCEC44();
  }

  v26 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v25 forKey:v26];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR____TtC13CoreIDVShared20IdentityImageQuality_videoFrameRate + 8))
  {
    v27 = 0;
  }

  else
  {
    v27 = sub_225CCEC44();
  }

  v28 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v27 forKey:v28];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR____TtC13CoreIDVShared20IdentityImageQuality_maxRectTravel + 4))
  {
    v29 = 0;
  }

  else
  {
    v29 = sub_225CCEB84();
  }

  v30 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v29 forKey:v30];
  swift_unknownObjectRelease();

  v31 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared20IdentityImageQuality_resizeDimensions);
  v32 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v31 forKey:v32];

  if (*(v1 + OBJC_IVAR____TtC13CoreIDVShared20IdentityImageQuality_passportSettings + 8) >> 60 == 15)
  {
    v33 = 0;
  }

  else
  {
    v33 = sub_225CCCF74();
  }

  v34 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v33 forKey:v34];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR____TtC13CoreIDVShared20IdentityImageQuality_passportFrameRate + 8))
  {
    v35 = 0;
  }

  else
  {
    v35 = sub_225CCEC44();
  }

  v36 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v35 forKey:v36];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR____TtC13CoreIDVShared20IdentityImageQuality_passportTimeout + 8))
  {
    v37 = 0;
  }

  else
  {
    v37 = sub_225CCEC44();
  }

  v38 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v37 forKey:v38];
  swift_unknownObjectRelease();
}

id IdentityImageQuality.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id IdentityImageQuality.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_225B590DC(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  sub_225B598E8();
  v5 = sub_225CCEF14();
  if (v5)
  {
    v6 = v5;
    v7 = sub_225CCCFA4();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0xF000000000000000;
  }

  v10 = &v2[OBJC_IVAR____TtC13CoreIDVShared20IdentityImageQuality_frontScanSettings];
  *v10 = v7;
  v10[1] = v9;
  v11 = sub_225CCEF14();
  if (v11)
  {
    v12 = v11;
    v13 = sub_225CCCFA4();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0xF000000000000000;
  }

  v16 = &v2[OBJC_IVAR____TtC13CoreIDVShared20IdentityImageQuality_backScanSettings];
  *v16 = v13;
  v16[1] = v15;
  v17 = sub_225CCEF14();
  if (v17)
  {
    v18 = v17;
    v19 = sub_225CCCFA4();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0xF000000000000000;
  }

  v22 = &v2[OBJC_IVAR____TtC13CoreIDVShared20IdentityImageQuality_frontIDSettings];
  *v22 = v19;
  v22[1] = v21;
  v23 = sub_225CCEF14();
  if (v23)
  {
    v24 = v23;
    v25 = sub_225CCCFA4();
    v27 = v26;
  }

  else
  {
    v25 = 0;
    v27 = 0xF000000000000000;
  }

  v28 = &v2[OBJC_IVAR____TtC13CoreIDVShared20IdentityImageQuality_backIDSettings];
  *v28 = v25;
  v28[1] = v27;
  v29 = sub_225CCEF14();
  if (v29)
  {
    v30 = v29;
    v31 = sub_225CCCFA4();
    v33 = v32;
  }

  else
  {
    v31 = 0;
    v33 = 0xF000000000000000;
  }

  v34 = &v2[OBJC_IVAR____TtC13CoreIDVShared20IdentityImageQuality_selfieSettings];
  *v34 = v31;
  v34[1] = v33;
  v35 = sub_225CCEF14();
  if (v35)
  {
    v36 = v35;
    v37 = sub_225CCCFA4();
    v39 = v38;
  }

  else
  {
    v37 = 0;
    v39 = 0xF000000000000000;
  }

  v40 = &v2[OBJC_IVAR____TtC13CoreIDVShared20IdentityImageQuality_livenessSettings];
  *v40 = v37;
  v40[1] = v39;
  v41 = sub_225CCEF14();
  if (v41)
  {
    v42 = v41;
    v43 = sub_225CCCFA4();
    v45 = v44;
  }

  else
  {
    v43 = 0;
    v45 = 0xF000000000000000;
  }

  v46 = &v2[OBJC_IVAR____TtC13CoreIDVShared20IdentityImageQuality_passiveSettings];
  *v46 = v43;
  v46[1] = v45;
  v47 = sub_225CCEF14();
  if (v47)
  {
    v48 = v47;
    v49 = sub_225CCCFA4();
    v51 = v50;
  }

  else
  {
    v49 = 0;
    v51 = 0xF000000000000000;
  }

  v52 = &v2[OBJC_IVAR____TtC13CoreIDVShared20IdentityImageQuality_livenessBlockingCodes];
  *v52 = v49;
  v52[1] = v51;
  v53 = sub_225CCE444();
  v54 = [a1 decodeBoolForKey_];

  v2[OBJC_IVAR____TtC13CoreIDVShared20IdentityImageQuality_exploration] = v54;
  v55 = sub_225CCE444();
  v56 = [a1 decodeIntegerForKey_];

  v57 = &v2[OBJC_IVAR____TtC13CoreIDVShared20IdentityImageQuality_bufferSize];
  *v57 = v56;
  v57[8] = 0;
  v58 = sub_225CCE444();
  v59 = [a1 decodeIntegerForKey_];

  v60 = &v2[OBJC_IVAR____TtC13CoreIDVShared20IdentityImageQuality_stableWindow];
  *v60 = v59;
  v60[8] = 0;
  v61 = sub_225CCE444();
  v62 = [a1 decodeIntegerForKey_];

  v63 = &v2[OBJC_IVAR____TtC13CoreIDVShared20IdentityImageQuality_idScanFrameRate];
  *v63 = v62;
  v63[8] = 0;
  v64 = sub_225CCE444();
  v65 = [a1 decodeIntegerForKey_];

  v66 = &v2[OBJC_IVAR____TtC13CoreIDVShared20IdentityImageQuality_videoFrameRate];
  *v66 = v65;
  v66[8] = 0;
  v67 = sub_225CCE444();
  [a1 decodeFloatForKey_];
  v69 = v68;

  v70 = &v2[OBJC_IVAR____TtC13CoreIDVShared20IdentityImageQuality_maxRectTravel];
  *v70 = v69;
  v70[4] = 0;
  type metadata accessor for IdentityProofingImageDimensions();
  *&v2[OBJC_IVAR____TtC13CoreIDVShared20IdentityImageQuality_resizeDimensions] = sub_225CCEF14();
  v71 = sub_225CCEF14();
  if (v71)
  {
    v72 = v71;
    v73 = sub_225CCCFA4();
    v75 = v74;
  }

  else
  {
    v73 = 0;
    v75 = 0xF000000000000000;
  }

  v76 = &v2[OBJC_IVAR____TtC13CoreIDVShared20IdentityImageQuality_passportSettings];
  *v76 = v73;
  v76[1] = v75;
  v77 = sub_225CCE444();
  v78 = [a1 decodeIntegerForKey_];

  v79 = &v2[OBJC_IVAR____TtC13CoreIDVShared20IdentityImageQuality_passportFrameRate];
  *v79 = v78;
  v79[8] = 0;
  v80 = sub_225CCE444();
  v81 = [a1 decodeIntegerForKey_];

  v82 = &v2[OBJC_IVAR____TtC13CoreIDVShared20IdentityImageQuality_passportTimeout];
  *v82 = v81;
  v82[8] = 0;
  v84.receiver = v2;
  v84.super_class = ObjectType;
  return objc_msgSendSuper2(&v84, sel_init);
}

uint64_t dispatch thunk of IdentityImageQuality.__allocating_init(frontScanSettings:backScanSettings:frontIDSettings:backIDSettings:selfieSettings:livenessSettings:passiveSettings:livenessBlockingCodes:exploration:bufferSize:stableWindow:idScanFrameRate:videoFrameRate:maxRectTravel:resizeDimensions:passportSettings:passportFramerate:passportTimeout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v25 = *(v24 + 224);

  return v25(a1, a2, a3, a4, a5);
}

unint64_t sub_225B598E8()
{
  result = qword_27D73DD80;
  if (!qword_27D73DD80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D73DD80);
  }

  return result;
}

uint64_t (*IdentityImageQualityMetrics.inlineMetrics.modify(void *a1))()
{
  v3 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared27IdentityImageQualityMetrics__inlineMetrics);
  a1[1] = v3;
  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);

  os_unfair_lock_unlock((v3 + 24));
  *a1 = v4;
  return sub_225B5BD04;
}

uint64_t (*IdentityImageQualityMetrics.captureMetrics.modify(void *a1))()
{
  v3 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared27IdentityImageQualityMetrics__captureMetrics);
  a1[1] = v3;
  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);

  os_unfair_lock_unlock((v3 + 24));
  *a1 = v4;
  return sub_225B5BD04;
}

void sub_225B59A68(uint64_t a1, void *a2)
{
  v2 = *(*a2 + OBJC_IVAR____TtC13CoreIDVShared27IdentityImageQualityMetrics__videoMetrics);
  os_unfair_lock_lock((v2 + 24));
  sub_225B5BCE4((v2 + 16));
  os_unfair_lock_unlock((v2 + 24));
}

uint64_t IdentityImageQualityMetrics.videoMetrics.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared27IdentityImageQualityMetrics__videoMetrics);
  os_unfair_lock_lock((v2 + 24));
  sub_225B59B34((v2 + 16));
  os_unfair_lock_unlock((v2 + 24));
}

uint64_t (*IdentityImageQualityMetrics.videoMetrics.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared27IdentityImageQualityMetrics__videoMetrics);
  a1[1] = v3;
  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);

  os_unfair_lock_unlock((v3 + 24));
  *a1 = v4;
  return sub_225B59BC0;
}

uint64_t sub_225B59BC0(uint64_t *a1, char a2)
{
  v2 = a1[1];
  if (a2)
  {

    os_unfair_lock_lock((v2 + 24));
    sub_225B5BCE4((v2 + 16));
    os_unfair_lock_unlock((v2 + 24));
  }

  else
  {
    os_unfair_lock_lock((v2 + 24));
    sub_225B5BCE4((v2 + 16));
    os_unfair_lock_unlock((v2 + 24));
  }
}

id IdentityImageQualityMetrics.init()()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC13CoreIDVShared27IdentityImageQualityMetrics__inlineMetrics;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DE68, &qword_225CEFD00);
  v3 = swift_allocObject();
  v4 = MEMORY[0x277D84F90];
  *(v3 + 24) = 0;
  *(v3 + 16) = v4;
  *&v0[v2] = v3;
  v5 = OBJC_IVAR____TtC13CoreIDVShared27IdentityImageQualityMetrics__captureMetrics;
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  *(v6 + 16) = v4;
  *&v0[v5] = v6;
  v7 = OBJC_IVAR____TtC13CoreIDVShared27IdentityImageQualityMetrics__videoMetrics;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73DE70, &qword_225CEFD08);
  v8 = swift_allocObject();
  *(v8 + 24) = 0;
  *(v8 + 16) = v4;
  *&v0[v7] = v8;
  v10.receiver = v0;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, sel_init);
}

char *IdentityImageQualityMetrics.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC13CoreIDVShared27IdentityImageQualityMetrics__inlineMetrics;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DE68, &qword_225CEFD00);
  v5 = swift_allocObject();
  v6 = MEMORY[0x277D84F90];
  *(v5 + 24) = 0;
  *(v5 + 16) = v6;
  *&v1[v4] = v5;
  v7 = OBJC_IVAR____TtC13CoreIDVShared27IdentityImageQualityMetrics__captureMetrics;
  v8 = swift_allocObject();
  *(v8 + 24) = 0;
  *(v8 + 16) = v6;
  *&v1[v7] = v8;
  v9 = OBJC_IVAR____TtC13CoreIDVShared27IdentityImageQualityMetrics__videoMetrics;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73DE70, &qword_225CEFD08);
  v10 = swift_allocObject();
  *(v10 + 24) = 0;
  *(v10 + 16) = v6;
  *&v1[v9] = v10;
  v28.receiver = v1;
  v28.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v28, sel_init);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73DC80, &unk_225CEF7D0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_225CD4890;
  v13 = sub_225B5A1D8();
  *(v12 + 32) = v13;
  v14 = type metadata accessor for ImageQualityMetrics();
  *(v12 + 40) = v14;
  v15 = v11;
  sub_225CCEF24();

  if (v27)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73DE88, &unk_225CEFD18);
    if (swift_dynamicCast())
    {
      v16 = v25;
      goto LABEL_6;
    }
  }

  else
  {
    sub_2259CB640(v26, &qword_27D73DD90, &unk_225CD4950);
  }

  v16 = MEMORY[0x277D84F90];
LABEL_6:
  v17 = *&v15[OBJC_IVAR____TtC13CoreIDVShared27IdentityImageQualityMetrics__inlineMetrics];
  os_unfair_lock_lock((v17 + 24));

  *(v17 + 16) = v16;
  os_unfair_lock_unlock((v17 + 24));
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_225CD4890;
  *(v18 + 32) = v13;
  *(v18 + 40) = v14;
  sub_225CCEF24();

  if (v27)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73DE88, &unk_225CEFD18);
    if (swift_dynamicCast())
    {
      v19 = v25;
      goto LABEL_11;
    }
  }

  else
  {
    sub_2259CB640(v26, &qword_27D73DD90, &unk_225CD4950);
  }

  v19 = MEMORY[0x277D84F90];
LABEL_11:
  v20 = *&v15[OBJC_IVAR____TtC13CoreIDVShared27IdentityImageQualityMetrics__captureMetrics];
  os_unfair_lock_lock((v20 + 24));

  *(v20 + 16) = v19;
  os_unfair_lock_unlock((v20 + 24));
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_225CD4890;
  *(v21 + 32) = v13;
  *(v21 + 40) = type metadata accessor for MetricsSequence();
  sub_225CCEF24();

  if (v27)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DE80, &qword_225CEFD10);
    v22 = swift_dynamicCast();
  }

  else
  {
    v22 = sub_2259CB640(v26, &qword_27D73DD90, &unk_225CD4950);
  }

  v23 = *&v15[OBJC_IVAR____TtC13CoreIDVShared27IdentityImageQualityMetrics__videoMetrics];
  MEMORY[0x28223BE20](v22);
  os_unfair_lock_lock((v23 + 24));
  sub_225B5BCE4((v23 + 16));
  os_unfair_lock_unlock((v23 + 24));

  return v15;
}

unint64_t sub_225B5A1D8()
{
  result = qword_281059AA0;
  if (!qword_281059AA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281059AA0);
  }

  return result;
}

Swift::Void __swiftcall IdentityImageQualityMetrics.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared27IdentityImageQualityMetrics__inlineMetrics);
  os_unfair_lock_lock(v3 + 6);

  os_unfair_lock_unlock(v3 + 6);
  type metadata accessor for ImageQualityMetrics();
  v4 = sub_225CCE7F4();

  v5 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v4 forKey:v5];

  v6 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared27IdentityImageQualityMetrics__captureMetrics);
  os_unfair_lock_lock(v6 + 6);

  os_unfair_lock_unlock(v6 + 6);
  v7 = sub_225CCE7F4();

  v8 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v7 forKey:v8];

  v9 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared27IdentityImageQualityMetrics__videoMetrics);
  os_unfair_lock_lock(v9 + 6);

  os_unfair_lock_unlock(v9 + 6);
  type metadata accessor for MetricsSequence();
  v10 = sub_225CCE7F4();

  v11 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v10 forKey:v11];
}

uint64_t IdentityImageQualityMetrics.addMetrics(metrics:isInline:)(char *a1, int a2)
{
  v3 = v2;
  LODWORD(v4) = a2;
  v6 = sub_225CCD954();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = &a1[OBJC_IVAR____TtC13CoreIDVShared19ImageQualityMetrics_modelDecision];
  swift_beginAccess();
  v11 = *(v10 + 1);
  if (v11)
  {
    v12 = &OBJC_IVAR____TtC13CoreIDVShared27IdentityImageQualityMetrics__inlineMetrics;
    v42 = *v10;
    if ((v4 & 1) == 0)
    {
      v12 = &OBJC_IVAR____TtC13CoreIDVShared27IdentityImageQualityMetrics__captureMetrics;
    }

    v13 = *(v3 + *v12);

    os_unfair_lock_lock((v13 + 24));
    v14 = *(v13 + 16);

    os_unfair_lock_unlock((v13 + 24));
    v43 = MEMORY[0x277D84F90];
    if (v14 >> 62)
    {
      goto LABEL_41;
    }

    for (i = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_225CCF144())
    {

      v16 = v42;
      if (!i)
      {
        break;
      }

      v39 = a1;
      v40 = v4;
      v41 = v3;
      v4 = 0;
      a1 = (v14 & 0xC000000000000001);
      v3 = v14 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (a1)
        {
          v17 = MEMORY[0x22AA6DA80](v4, v14);
        }

        else
        {
          if (v4 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_40;
          }

          v17 = *(v14 + 8 * v4 + 32);
        }

        v18 = v17;
        v19 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        v20 = &v17[OBJC_IVAR____TtC13CoreIDVShared19ImageQualityMetrics_modelDecision];
        swift_beginAccess();
        v21 = *(v20 + 1);
        if (v21 && (*v20 == v16 ? (v22 = v21 == v11) : (v22 = 0), v22 || (sub_225CCF934() & 1) != 0))
        {
        }

        else
        {
          sub_225CCF364();
          sub_225CCF3A4();
          v16 = v42;
          sub_225CCF3B4();
          sub_225CCF374();
        }

        ++v4;
        if (v19 == i)
        {
          v23 = v43;
          v3 = v41;
          LOBYTE(v4) = v40;
          a1 = v39;
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      ;
    }

    v23 = MEMORY[0x277D84F90];
LABEL_29:

    v43 = v23;
    if (v23 < 0 || (v23 & 0x4000000000000000) != 0)
    {
      v37 = sub_225CCF144();

      if (!v37 || sub_225CCF144() != 5)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v31 = *(v23 + 16);

      if (!v31 || *(v23 + 16) != 5)
      {
        goto LABEL_34;
      }
    }

    sub_225B5A9A4();

LABEL_34:
    v33 = a1;
    MEMORY[0x22AA6D020]();
    if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_225CCE844();
    }

    sub_225CCE884();
    v34 = v43;
    v35 = &OBJC_IVAR____TtC13CoreIDVShared27IdentityImageQualityMetrics__captureMetrics;
    if (v4)
    {
      v35 = &OBJC_IVAR____TtC13CoreIDVShared27IdentityImageQualityMetrics__inlineMetrics;
    }

    v36 = *(v3 + *v35);
    os_unfair_lock_lock((v36 + 24));

    *(v36 + 16) = v34;

    os_unfair_lock_unlock((v36 + 24));
  }

  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v24 = off_28105B918;
  v25 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v26 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v26));
  (*(v7 + 16))(v9, &v24[v25], v6);
  os_unfair_lock_unlock(&v24[v26]);
  v27 = sub_225CCD934();
  v28 = sub_225CCED14();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_2259A7000, v27, v28, "Image quality metrics did not contain a modelDecision so it could not be saved.", v29, 2u);
    MEMORY[0x22AA6F950](v29, -1, -1);
  }

  return (*(v7 + 8))(v9, v6);
}

void sub_225B5A9A4()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (!v2)
  {
    if (*((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

    goto LABEL_10;
  }

  if (sub_225CCF144())
  {
    if (sub_225CCF144())
    {
LABEL_3:
      if ((v1 & 0xC000000000000001) == 0)
      {
        if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

        *(v1 + 32);
        if (!v2)
        {
          goto LABEL_6;
        }

        goto LABEL_12;
      }

LABEL_11:
      MEMORY[0x22AA6DA80](0, v1);
      if (!v2)
      {
LABEL_6:
        v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_13;
      }

LABEL_12:
      v3 = sub_225CCF144();
LABEL_13:
      if (v3)
      {
        sub_225B5BC0C(0, 1);
        return;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
}

void IdentityImageQualityMetrics.addVideoMetrics(metrics:index:)(char *a1, unint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC13CoreIDVShared27IdentityImageQualityMetrics__videoMetrics);
  while (1)
  {
    os_unfair_lock_lock((v5 + 24));
    v6 = *(v5 + 16);

    os_unfair_lock_unlock((v5 + 24));
    v7 = v6 >> 62 ? sub_225CCF144() : *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v7 > a2)
    {
      break;
    }

    [objc_allocWithZone(type metadata accessor for MetricsSequence()) init];
    os_unfair_lock_lock((v5 + 24));
    v8 = *(v5 + 16);

    os_unfair_lock_unlock((v5 + 24));
    MEMORY[0x22AA6D020]();
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_225CCE844();
    }

    v9 = sub_225CCE884();
    MEMORY[0x28223BE20](v9);
    os_unfair_lock_lock((v5 + 24));
    sub_225B5BCE4((v5 + 16));
    os_unfair_lock_unlock((v5 + 24));
  }

  os_unfair_lock_lock((v5 + 24));
  v10 = *(v5 + 16);

  os_unfair_lock_unlock((v5 + 24));
  if ((v10 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x22AA6DA80](a2, v10);
    goto LABEL_13;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v11 = *(v10 + 8 * a2 + 32);
LABEL_13:
    v12 = v11;

    MetricsSequence.addMetrics(_:)(a1);

    return;
  }

  __break(1u);
}

id MetricsSequence.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void MetricsSequence.addMetrics(_:)(char *a1)
{
  v5 = sub_225CCD954();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v47 - v10;
  v12 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared15MetricsSequence__sequence);
  os_unfair_lock_lock((v12 + 24));
  v13 = *(v12 + 16);

  os_unfair_lock_unlock((v12 + 24));
  if (v13 >> 62)
  {
    v16 = sub_225CCF144();
    if (v16)
    {
LABEL_3:
      v17 = __OFSUB__(v16, 1);
      v18 = v16 - 1;
      if (v17)
      {
        __break(1u);
      }

      else if ((v13 & 0xC000000000000001) == 0)
      {
        if ((v18 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else
        {
          v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v18 < v15)
          {
            v19 = *(v13 + 8 * v18 + 32);
LABEL_8:
            v20 = v19;

            v50 = v20;
            v21 = &v20[OBJC_IVAR____TtC13CoreIDVShared19ImageQualityMetrics_modelDecision];
            swift_beginAccess();
            v22 = *(v21 + 1);
            if (v22)
            {
              v23 = *v21;
              v24 = &a1[OBJC_IVAR____TtC13CoreIDVShared19ImageQualityMetrics_modelDecision];
              swift_beginAccess();
              v25 = *(v24 + 1);
              if (v25)
              {
                v26 = v23 == *v24 && v22 == v25;
                if (v26 || (sub_225CCF934() & 1) != 0)
                {
                }

                else
                {
                  os_unfair_lock_lock((v12 + 24));
                  v40 = *(v12 + 16);

                  os_unfair_lock_unlock((v12 + 24));
                  v51 = v40;
                  v41 = a1;
                  MEMORY[0x22AA6D020]();
                  v42 = v50;
                  if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    sub_225CCE844();
                  }

                  sub_225CCE884();
                  v43 = v51;
                  os_unfair_lock_lock((v12 + 24));

                  *(v12 + 16) = v43;

                  os_unfair_lock_unlock((v12 + 24));
                }

                return;
              }
            }

            v3 = 0x8000000225D1F160;
            v48 = v6;
            v49 = 0x8000000225D1F1A0;
            v27 = MEMORY[0x277D84F90];
            v28 = sub_225B2C248(MEMORY[0x277D84F90]);
            sub_2259CB5EC();
            v13 = swift_allocError();
            v2 = v29;
            v30 = sub_225CCE954();
            v31 = *(v30 - 8);
            (*(v31 + 56))(v11, 1, 1, v30);
            LODWORD(v30) = (*(v31 + 48))(v11, 1, v30);
            sub_2259CB640(v11, &unk_27D73B050, &unk_225CD3AD0);
            if (v30)
            {
              LOWORD(v11) = 357;
            }

            else
            {
              LOWORD(v11) = 23;
            }

            v32 = sub_225B2C374(v27);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v51 = v32;
            sub_225B2C4A0(v28, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v51);

            v1 = v51;
            v14 = sub_225B29AA0(0, 1, 1, v27);
            v12 = *(v14 + 2);
            v15 = *(v14 + 3);
            a1 = (v12 + 1);
            if (v12 < v15 >> 1)
            {
              goto LABEL_20;
            }

            goto LABEL_34;
          }
        }

        __break(1u);
LABEL_34:
        v14 = sub_225B29AA0((v15 > 1), a1, 1, v14);
LABEL_20:
        *(v14 + 2) = a1;
        v34 = &v14[56 * v12];
        *(v34 + 4) = 0xD00000000000003DLL;
        *(v34 + 5) = v3;
        v36 = v48;
        v35 = v49;
        *(v34 + 6) = 0xD00000000000002FLL;
        *(v34 + 7) = v35;
        strcpy(v34 + 64, "addMetrics(_:)");
        v34[79] = -18;
        *(v34 + 10) = 133;
        *v2 = v11;
        *(v2 + 8) = v14;
        *(v2 + 16) = 0xD00000000000003DLL;
        *(v2 + 24) = v3;
        *(v2 + 32) = v1;
        *(v2 + 40) = 0;
        if (qword_28105B910 != -1)
        {
          swift_once();
        }

        v37 = off_28105B918;
        v38 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
        v39 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
        os_unfair_lock_lock((off_28105B918 + v39));
        (*(v36 + 16))(v8, &v37[v38], v5);
        os_unfair_lock_unlock(&v37[v39]);
        DIPLogError(_:message:log:)(v13, 0, 0xE000000000000000);
        _s13CoreIDVShared9AnalyticsC9sendErroryys0E0_pFZ_0(v13);

        (*(v36 + 8))(v8, v5);
        return;
      }

      v19 = MEMORY[0x22AA6DA80](v18, v13);
      goto LABEL_8;
    }
  }

  else
  {
    v15 = v13 & 0xFFFFFFFFFFFFFF8;
    v16 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
      goto LABEL_3;
    }
  }

  os_unfair_lock_lock((v12 + 24));
  v44 = *(v12 + 16);

  os_unfair_lock_unlock((v12 + 24));
  v52[0] = v44;
  v45 = a1;
  MEMORY[0x22AA6D020]();
  if (*((v52[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_225CCE844();
  }

  sub_225CCE884();
  v46 = v52[0];
  os_unfair_lock_lock((v12 + 24));

  *(v12 + 16) = v46;
  os_unfair_lock_unlock((v12 + 24));
}

uint64_t sub_225B5B374(void *a1)
{
  v2 = *(v1 + *a1);
  os_unfair_lock_lock((v2 + 24));
  v3 = *(v2 + 16);

  os_unfair_lock_unlock((v2 + 24));
  return v3;
}

void sub_225B5B3B8(void *a1@<X0>, void *a2@<X3>, void *a3@<X8>)
{
  v4 = *(*a1 + *a2);
  os_unfair_lock_lock((v4 + 24));
  v5 = *(v4 + 16);

  os_unfair_lock_unlock((v4 + 24));
  *a3 = v5;
}

void sub_225B5B40C(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = *a1;
  v6 = *(*a2 + *a5);
  os_unfair_lock_lock((v6 + 24));

  *(v6 + 16) = v5;

  os_unfair_lock_unlock((v6 + 24));
}

void sub_225B5B474(uint64_t a1, void *a2)
{
  v4 = *(v2 + *a2);
  os_unfair_lock_lock((v4 + 24));

  *(v4 + 16) = a1;

  os_unfair_lock_unlock((v4 + 24));
}

uint64_t (*MetricsSequence.sequence.modify(void *a1))()
{
  v3 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared15MetricsSequence__sequence);
  a1[1] = v3;
  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);

  os_unfair_lock_unlock((v3 + 24));
  *a1 = v4;
  return sub_225B5B538;
}

void sub_225B5B53C(void *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {

    os_unfair_lock_lock((v3 + 24));

    *(v3 + 16) = v2;
    os_unfair_lock_unlock((v3 + 24));
  }

  else
  {
    os_unfair_lock_lock((v3 + 24));

    *(v3 + 16) = v2;

    os_unfair_lock_unlock((v3 + 24));
  }
}

id MetricsSequence.init()()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC13CoreIDVShared15MetricsSequence__sequence;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DE68, &qword_225CEFD00);
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  *(v3 + 16) = MEMORY[0x277D84F90];
  *&v0[v2] = v3;
  v5.receiver = v0;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

char *MetricsSequence.init(coder:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC13CoreIDVShared15MetricsSequence__sequence;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DE68, &qword_225CEFD00);
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  *(v6 + 16) = MEMORY[0x277D84F90];
  *&v2[v5] = v6;
  v16.receiver = v2;
  v16.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v16, sel_init);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73DC80, &unk_225CEF7D0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_225CD4890;
  *(v8 + 32) = sub_225B5A1D8();
  *(v8 + 40) = type metadata accessor for ImageQualityMetrics();
  v9 = v7;
  sub_225CCEF24();

  if (!v15)
  {
    sub_2259CB640(v14, &qword_27D73DD90, &unk_225CD4950);
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73DE88, &unk_225CEFD18);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v10 = MEMORY[0x277D84F90];
    goto LABEL_6;
  }

  v10 = v13;
LABEL_6:
  v11 = *&v9[OBJC_IVAR____TtC13CoreIDVShared15MetricsSequence__sequence];
  os_unfair_lock_lock((v11 + 24));

  *(v11 + 16) = v10;

  os_unfair_lock_unlock((v11 + 24));

  return v9;
}

Swift::Void __swiftcall MetricsSequence.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared15MetricsSequence__sequence);
  os_unfair_lock_lock(v3 + 6);

  os_unfair_lock_unlock(v3 + 6);
  type metadata accessor for ImageQualityMetrics();
  v4 = sub_225CCE7F4();

  v5 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v4 forKey:v5];
}

uint64_t sub_225B5BAA8(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_225CCF144();
LABEL_9:
  result = sub_225CCF254();
  *v2 = result;
  return result;
}

double sub_225B5BBC4(void *a1)
{
  v3 = *(v1 + 16);

  *a1 = v3;

  return result;
}

uint64_t sub_225B5BC0C(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v5 = a1;
    v6 = *v4;
    v7 = *v4 >> 62;
    if (!v7)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_225CCF144();
  if (result < v3)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v3, v5))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v5 - v3;
  if (__OFSUB__(0, v3 - v5))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v7)
  {
    v10 = sub_225CCF144();
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    goto LABEL_18;
  }

  sub_225B5BAA8(result, 1);

  return sub_225C00EBC(v5, v3, 0);
}

void *IdentityLivenessConfig.active.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC13CoreIDVShared22IdentityLivenessConfig_active);
  v2 = v1;
  return v1;
}

void *IdentityLivenessConfig.passive.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC13CoreIDVShared22IdentityLivenessConfig_passive);
  v2 = v1;
  return v1;
}

id IdentityLivenessConfig.__allocating_init(coder:)(void *a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v2);
  type metadata accessor for IdentityActiveLivenessConfig();
  *&v4[OBJC_IVAR____TtC13CoreIDVShared22IdentityLivenessConfig_active] = sub_225CCEF14();
  type metadata accessor for IdentityPassiveLivenessConfig();
  *&v4[OBJC_IVAR____TtC13CoreIDVShared22IdentityLivenessConfig_passive] = sub_225CCEF14();
  v7.receiver = v4;
  v7.super_class = v2;
  v5 = objc_msgSendSuper2(&v7, sel_init);

  return v5;
}

id IdentityLivenessConfig.init(coder:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  type metadata accessor for IdentityActiveLivenessConfig();
  *&v2[OBJC_IVAR____TtC13CoreIDVShared22IdentityLivenessConfig_active] = sub_225CCEF14();
  type metadata accessor for IdentityPassiveLivenessConfig();
  *&v2[OBJC_IVAR____TtC13CoreIDVShared22IdentityLivenessConfig_passive] = sub_225CCEF14();
  v7.receiver = v2;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, sel_init);

  return v5;
}

Swift::Void __swiftcall IdentityLivenessConfig.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared22IdentityLivenessConfig_active);
  v4 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];

  v5 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared22IdentityLivenessConfig_passive);
  v6 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];
}

id IdentityActiveLivenessConfig.__allocating_init(gestureSequence:minRequiredGestureCount:timeToSkipOption:timeToSkipAccessible:timeToAlert:timeToAlertAccessible:maxRetakeCount:sessionTimeout:faceOutOfBoundFrames:gestureCompletionDelay:tutorialVideoDelay:tutorialVideoDuration:tutorialResumeDelay:gestureDetectedSuccessDuration:lastGestureExtraFrameDuration:requiresGoodLux:enablePrintReplay:enableIDMatching:requireSelfie:enableAutoFlash:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, char a17, char a18, char a19, char a20)
{
  v28 = objc_allocWithZone(v20);
  *&v28[OBJC_IVAR____TtC13CoreIDVShared28IdentityActiveLivenessConfig_gestureSequence] = a1;
  *&v28[OBJC_IVAR____TtC13CoreIDVShared28IdentityActiveLivenessConfig_minRequiredGestureCount] = a2;
  *&v28[OBJC_IVAR____TtC13CoreIDVShared28IdentityActiveLivenessConfig_timeToSkipOption] = a3;
  *&v28[OBJC_IVAR____TtC13CoreIDVShared28IdentityActiveLivenessConfig_timeToSkipAccessible] = a4;
  *&v28[OBJC_IVAR____TtC13CoreIDVShared28IdentityActiveLivenessConfig_timeToAlert] = a5;
  *&v28[OBJC_IVAR____TtC13CoreIDVShared28IdentityActiveLivenessConfig_timeToAlertAccessible] = a6;
  *&v28[OBJC_IVAR____TtC13CoreIDVShared28IdentityActiveLivenessConfig_maxRetakeCount] = a7;
  *&v28[OBJC_IVAR____TtC13CoreIDVShared28IdentityActiveLivenessConfig_sessionTimeout] = a8;
  *&v28[OBJC_IVAR____TtC13CoreIDVShared28IdentityActiveLivenessConfig_faceOutOfBoundFrames] = a9;
  *&v28[OBJC_IVAR____TtC13CoreIDVShared28IdentityActiveLivenessConfig_gestureCompletionDelay] = a10;
  *&v28[OBJC_IVAR____TtC13CoreIDVShared28IdentityActiveLivenessConfig_tutorialVideoDelay] = a11;
  *&v28[OBJC_IVAR____TtC13CoreIDVShared28IdentityActiveLivenessConfig_tutorialVideoDuration] = a12;
  *&v28[OBJC_IVAR____TtC13CoreIDVShared28IdentityActiveLivenessConfig_tutorialResumeDelay] = a13;
  *&v28[OBJC_IVAR____TtC13CoreIDVShared28IdentityActiveLivenessConfig_gestureDetectedSuccessDuration] = a14;
  *&v28[OBJC_IVAR____TtC13CoreIDVShared28IdentityActiveLivenessConfig_lastGestureExtraFrameDuration] = a15;
  v28[OBJC_IVAR____TtC13CoreIDVShared28IdentityActiveLivenessConfig_requiresGoodLux] = a16;
  v28[OBJC_IVAR____TtC13CoreIDVShared28IdentityActiveLivenessConfig_enablePrintReplay] = a17;
  v28[OBJC_IVAR____TtC13CoreIDVShared28IdentityActiveLivenessConfig_enableIDMatching] = a18;
  v28[OBJC_IVAR____TtC13CoreIDVShared28IdentityActiveLivenessConfig_requireSelfie] = a19;
  v28[OBJC_IVAR____TtC13CoreIDVShared28IdentityActiveLivenessConfig_enableAutoFlash] = a20;
  v32.receiver = v28;
  v32.super_class = v31;
  return objc_msgSendSuper2(&v32, sel_init);
}

id IdentityActiveLivenessConfig.init(gestureSequence:minRequiredGestureCount:timeToSkipOption:timeToSkipAccessible:timeToAlert:timeToAlertAccessible:maxRetakeCount:sessionTimeout:faceOutOfBoundFrames:gestureCompletionDelay:tutorialVideoDelay:tutorialVideoDuration:tutorialResumeDelay:gestureDetectedSuccessDuration:lastGestureExtraFrameDuration:requiresGoodLux:enablePrintReplay:enableIDMatching:requireSelfie:enableAutoFlash:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, char a17, char a18, char a19, char a20)
{
  ObjectType = swift_getObjectType();
  *&v20[OBJC_IVAR____TtC13CoreIDVShared28IdentityActiveLivenessConfig_gestureSequence] = a1;
  *&v20[OBJC_IVAR____TtC13CoreIDVShared28IdentityActiveLivenessConfig_minRequiredGestureCount] = a2;
  *&v20[OBJC_IVAR____TtC13CoreIDVShared28IdentityActiveLivenessConfig_timeToSkipOption] = a3;
  *&v20[OBJC_IVAR____TtC13CoreIDVShared28IdentityActiveLivenessConfig_timeToSkipAccessible] = a4;
  *&v20[OBJC_IVAR____TtC13CoreIDVShared28IdentityActiveLivenessConfig_timeToAlert] = a5;
  *&v20[OBJC_IVAR____TtC13CoreIDVShared28IdentityActiveLivenessConfig_timeToAlertAccessible] = a6;
  *&v20[OBJC_IVAR____TtC13CoreIDVShared28IdentityActiveLivenessConfig_maxRetakeCount] = a7;
  *&v20[OBJC_IVAR____TtC13CoreIDVShared28IdentityActiveLivenessConfig_sessionTimeout] = a8;
  *&v20[OBJC_IVAR____TtC13CoreIDVShared28IdentityActiveLivenessConfig_faceOutOfBoundFrames] = a9;
  *&v20[OBJC_IVAR____TtC13CoreIDVShared28IdentityActiveLivenessConfig_gestureCompletionDelay] = a10;
  *&v20[OBJC_IVAR____TtC13CoreIDVShared28IdentityActiveLivenessConfig_tutorialVideoDelay] = a11;
  *&v20[OBJC_IVAR____TtC13CoreIDVShared28IdentityActiveLivenessConfig_tutorialVideoDuration] = a12;
  *&v20[OBJC_IVAR____TtC13CoreIDVShared28IdentityActiveLivenessConfig_tutorialResumeDelay] = a13;
  *&v20[OBJC_IVAR____TtC13CoreIDVShared28IdentityActiveLivenessConfig_gestureDetectedSuccessDuration] = a14;
  *&v20[OBJC_IVAR____TtC13CoreIDVShared28IdentityActiveLivenessConfig_lastGestureExtraFrameDuration] = a15;
  v20[OBJC_IVAR____TtC13CoreIDVShared28IdentityActiveLivenessConfig_requiresGoodLux] = a16;
  v20[OBJC_IVAR____TtC13CoreIDVShared28IdentityActiveLivenessConfig_enablePrintReplay] = a17;
  v20[OBJC_IVAR____TtC13CoreIDVShared28IdentityActiveLivenessConfig_enableIDMatching] = a18;
  v20[OBJC_IVAR____TtC13CoreIDVShared28IdentityActiveLivenessConfig_requireSelfie] = a19;
  v20[OBJC_IVAR____TtC13CoreIDVShared28IdentityActiveLivenessConfig_enableAutoFlash] = a20;
  v31.receiver = v20;
  v31.super_class = ObjectType;
  return objc_msgSendSuper2(&v31, sel_init);
}

id IdentityActiveLivenessConfig.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_225B5E318(a1);

  return v4;
}

id IdentityActiveLivenessConfig.init(coder:)(void *a1)
{
  v2 = sub_225B5E318(a1);

  return v2;
}

Swift::Void __swiftcall IdentityActiveLivenessConfig.encode(with:)(NSCoder with)
{
  type metadata accessor for IdentityGesture();
  v3 = sub_225CCE7F4();
  v4 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];

  v5 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared28IdentityActiveLivenessConfig_minRequiredGestureCount);
  v6 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeInteger:v5 forKey:v6];

  v7 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared28IdentityActiveLivenessConfig_timeToSkipOption);
  v8 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeInteger:v7 forKey:v8];

  v9 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared28IdentityActiveLivenessConfig_timeToSkipAccessible);
  v10 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeInteger:v9 forKey:v10];

  v11 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared28IdentityActiveLivenessConfig_timeToAlert);
  v12 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeInteger:v11 forKey:v12];

  v13 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared28IdentityActiveLivenessConfig_timeToAlertAccessible);
  v14 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeInteger:v13 forKey:v14];

  v15 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared28IdentityActiveLivenessConfig_maxRetakeCount);
  v16 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeInteger:v15 forKey:v16];

  v17 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared28IdentityActiveLivenessConfig_sessionTimeout);
  v18 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeInteger:v17 forKey:v18];

  v19 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared28IdentityActiveLivenessConfig_faceOutOfBoundFrames);
  v20 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeInteger:v19 forKey:v20];

  v21 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared28IdentityActiveLivenessConfig_gestureCompletionDelay);
  v22 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeInteger:v21 forKey:v22];

  v23 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared28IdentityActiveLivenessConfig_tutorialVideoDelay);
  v24 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeInteger:v23 forKey:v24];

  v25 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared28IdentityActiveLivenessConfig_tutorialVideoDuration);
  v26 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeInteger:v25 forKey:v26];

  v27 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared28IdentityActiveLivenessConfig_tutorialResumeDelay);
  v28 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeInteger:v27 forKey:v28];

  v29 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared28IdentityActiveLivenessConfig_gestureDetectedSuccessDuration);
  v30 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeInteger:v29 forKey:v30];

  v31 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared28IdentityActiveLivenessConfig_lastGestureExtraFrameDuration);
  v32 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeInteger:v31 forKey:v32];

  v33 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared28IdentityActiveLivenessConfig_requiresGoodLux);
  v34 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeBool:v33 forKey:v34];

  v35 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared28IdentityActiveLivenessConfig_enablePrintReplay);
  v36 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeBool:v35 forKey:v36];

  v37 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared28IdentityActiveLivenessConfig_enableIDMatching);
  v38 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeBool:v37 forKey:v38];

  v39 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared28IdentityActiveLivenessConfig_requireSelfie);
  v40 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeBool:v39 forKey:v40];

  v41 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared28IdentityActiveLivenessConfig_enableAutoFlash);
  v42 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeBool:v41 forKey:v42];
}

uint64_t IdentityActiveLivenessConfig.debugDescription.getter()
{
  sub_225CCF204();
  MEMORY[0x22AA6CE70](0xD000000000000019, 0x8000000225D1F450);
  sub_225A84D38();
  v1 = sub_225CCF094();
  MEMORY[0x22AA6CE70](v1);

  MEMORY[0x22AA6CE70](0xD000000000000013, 0x8000000225D1F470);
  v2 = sub_225CCF094();
  MEMORY[0x22AA6CE70](v2);

  MEMORY[0x22AA6CE70](0xD000000000000017, 0x8000000225D1F490);
  v3 = sub_225CCF824();
  MEMORY[0x22AA6CE70](v3);

  MEMORY[0x22AA6CE70](0x416F54656D69740ALL, 0xEE00203A7472656CLL);
  v4 = sub_225CCF094();
  MEMORY[0x22AA6CE70](v4);

  MEMORY[0x22AA6CE70](0xD000000000000018, 0x8000000225D1F4B0);
  v5 = sub_225CCF824();
  MEMORY[0x22AA6CE70](v5);

  MEMORY[0x22AA6CE70](0xD000000000000011, 0x8000000225D1F4D0);
  v6 = sub_225CCF094();
  MEMORY[0x22AA6CE70](v6);

  MEMORY[0x22AA6CE70](0xD000000000000011, 0x8000000225D1F4F0);
  v7 = sub_225CCF094();
  MEMORY[0x22AA6CE70](v7);

  MEMORY[0x22AA6CE70](0xD000000000000017, 0x8000000225D1F510);
  v8 = sub_225CCF094();
  MEMORY[0x22AA6CE70](v8);

  MEMORY[0x22AA6CE70](0xD000000000000019, 0x8000000225D1F530);
  v9 = sub_225CCF094();
  MEMORY[0x22AA6CE70](v9);

  MEMORY[0x22AA6CE70](0xD000000000000015, 0x8000000225D1F550);
  v10 = sub_225CCF824();
  MEMORY[0x22AA6CE70](v10);

  MEMORY[0x22AA6CE70](0xD000000000000018, 0x8000000225D1F570);
  v11 = sub_225CCF824();
  MEMORY[0x22AA6CE70](v11);

  MEMORY[0x22AA6CE70](0xD000000000000016, 0x8000000225D1F590);
  v12 = sub_225CCF824();
  MEMORY[0x22AA6CE70](v12);

  MEMORY[0x22AA6CE70](0xD000000000000021, 0x8000000225D1F5B0);
  v13 = sub_225CCF824();
  MEMORY[0x22AA6CE70](v13);

  MEMORY[0x22AA6CE70](0xD000000000000020, 0x8000000225D1F5E0);
  v14 = sub_225CCF824();
  MEMORY[0x22AA6CE70](v14);

  MEMORY[0x22AA6CE70](0xD000000000000012, 0x8000000225D1F610);
  if (*(v0 + OBJC_IVAR____TtC13CoreIDVShared28IdentityActiveLivenessConfig_requiresGoodLux))
  {
    v15 = 1702195828;
  }

  else
  {
    v15 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC13CoreIDVShared28IdentityActiveLivenessConfig_requiresGoodLux))
  {
    v16 = 0xE400000000000000;
  }

  else
  {
    v16 = 0xE500000000000000;
  }

  MEMORY[0x22AA6CE70](v15, v16);

  MEMORY[0x22AA6CE70](0xD000000000000014, 0x8000000225D1F630);
  if (*(v0 + OBJC_IVAR____TtC13CoreIDVShared28IdentityActiveLivenessConfig_enablePrintReplay))
  {
    v17 = 1702195828;
  }

  else
  {
    v17 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC13CoreIDVShared28IdentityActiveLivenessConfig_enablePrintReplay))
  {
    v18 = 0xE400000000000000;
  }

  else
  {
    v18 = 0xE500000000000000;
  }

  MEMORY[0x22AA6CE70](v17, v18);

  MEMORY[0x22AA6CE70](0xD000000000000013, 0x8000000225D1F650);
  if (*(v0 + OBJC_IVAR____TtC13CoreIDVShared28IdentityActiveLivenessConfig_enableIDMatching))
  {
    v19 = 1702195828;
  }

  else
  {
    v19 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC13CoreIDVShared28IdentityActiveLivenessConfig_enableIDMatching))
  {
    v20 = 0xE400000000000000;
  }

  else
  {
    v20 = 0xE500000000000000;
  }

  MEMORY[0x22AA6CE70](v19, v20);

  MEMORY[0x22AA6CE70](0xD000000000000010, 0x8000000225D1F670);
  if (*(v0 + OBJC_IVAR____TtC13CoreIDVShared28IdentityActiveLivenessConfig_requireSelfie))
  {
    v21 = 1702195828;
  }

  else
  {
    v21 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC13CoreIDVShared28IdentityActiveLivenessConfig_requireSelfie))
  {
    v22 = 0xE400000000000000;
  }

  else
  {
    v22 = 0xE500000000000000;
  }

  MEMORY[0x22AA6CE70](v21, v22);

  MEMORY[0x22AA6CE70](0xD000000000000012, 0x8000000225D1F690);
  if (*(v0 + OBJC_IVAR____TtC13CoreIDVShared28IdentityActiveLivenessConfig_enableAutoFlash))
  {
    v23 = 1702195828;
  }

  else
  {
    v23 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC13CoreIDVShared28IdentityActiveLivenessConfig_enableAutoFlash))
  {
    v24 = 0xE400000000000000;
  }

  else
  {
    v24 = 0xE500000000000000;
  }

  MEMORY[0x22AA6CE70](v23, v24);

  return 0;
}

id IdentityPassiveLivenessConfig.__allocating_init(maxRetakeCount:sessionTimeout:faceOutOfBoundFrames:totalFrameCount:minimumValidFrameCount:requiresGoodLux:enablePrintReplay:disableStitchDetection:enableAutoFlash:useAuxiliaryURL:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7, char a8, char a9, char a10)
{
  v18 = objc_allocWithZone(v10);
  *&v18[OBJC_IVAR____TtC13CoreIDVShared29IdentityPassiveLivenessConfig_maxRetakeCount] = a1;
  *&v18[OBJC_IVAR____TtC13CoreIDVShared29IdentityPassiveLivenessConfig_sessionTimeout] = a2;
  *&v18[OBJC_IVAR____TtC13CoreIDVShared29IdentityPassiveLivenessConfig_faceOutOfBoundFrames] = a3;
  *&v18[OBJC_IVAR____TtC13CoreIDVShared29IdentityPassiveLivenessConfig_totalFrameCount] = a4;
  *&v18[OBJC_IVAR____TtC13CoreIDVShared29IdentityPassiveLivenessConfig_minimumValidFrameCount] = a5;
  v18[OBJC_IVAR____TtC13CoreIDVShared29IdentityPassiveLivenessConfig_requiresGoodLux] = a6;
  v18[OBJC_IVAR____TtC13CoreIDVShared29IdentityPassiveLivenessConfig_enablePrintReplay] = a7;
  v18[OBJC_IVAR____TtC13CoreIDVShared29IdentityPassiveLivenessConfig_disableStitchDetection] = a8;
  v18[OBJC_IVAR____TtC13CoreIDVShared29IdentityPassiveLivenessConfig_enableAutoFlash] = a9;
  v18[OBJC_IVAR____TtC13CoreIDVShared29IdentityPassiveLivenessConfig_useAuxiliaryURL] = a10;
  v21.receiver = v18;
  v21.super_class = v10;
  return objc_msgSendSuper2(&v21, sel_init);
}

id IdentityPassiveLivenessConfig.init(maxRetakeCount:sessionTimeout:faceOutOfBoundFrames:totalFrameCount:minimumValidFrameCount:requiresGoodLux:enablePrintReplay:disableStitchDetection:enableAutoFlash:useAuxiliaryURL:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7, char a8, char a9, char a10)
{
  ObjectType = swift_getObjectType();
  *&v10[OBJC_IVAR____TtC13CoreIDVShared29IdentityPassiveLivenessConfig_maxRetakeCount] = a1;
  *&v10[OBJC_IVAR____TtC13CoreIDVShared29IdentityPassiveLivenessConfig_sessionTimeout] = a2;
  *&v10[OBJC_IVAR____TtC13CoreIDVShared29IdentityPassiveLivenessConfig_faceOutOfBoundFrames] = a3;
  *&v10[OBJC_IVAR____TtC13CoreIDVShared29IdentityPassiveLivenessConfig_totalFrameCount] = a4;
  *&v10[OBJC_IVAR____TtC13CoreIDVShared29IdentityPassiveLivenessConfig_minimumValidFrameCount] = a5;
  v10[OBJC_IVAR____TtC13CoreIDVShared29IdentityPassiveLivenessConfig_requiresGoodLux] = a6;
  v10[OBJC_IVAR____TtC13CoreIDVShared29IdentityPassiveLivenessConfig_enablePrintReplay] = a7;
  v10[OBJC_IVAR____TtC13CoreIDVShared29IdentityPassiveLivenessConfig_disableStitchDetection] = a8;
  v10[OBJC_IVAR____TtC13CoreIDVShared29IdentityPassiveLivenessConfig_enableAutoFlash] = a9;
  v10[OBJC_IVAR____TtC13CoreIDVShared29IdentityPassiveLivenessConfig_useAuxiliaryURL] = a10;
  v21.receiver = v10;
  v21.super_class = ObjectType;
  return objc_msgSendSuper2(&v21, sel_init);
}

id IdentityPassiveLivenessConfig.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_225B5E9A4(a1);

  return v4;
}

id IdentityPassiveLivenessConfig.init(coder:)(void *a1)
{
  v2 = sub_225B5E9A4(a1);

  return v2;
}

Swift::Void __swiftcall IdentityPassiveLivenessConfig.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared29IdentityPassiveLivenessConfig_maxRetakeCount);
  v4 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeInteger:v3 forKey:v4];

  v5 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared29IdentityPassiveLivenessConfig_sessionTimeout);
  v6 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeInteger:v5 forKey:v6];

  v7 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared29IdentityPassiveLivenessConfig_faceOutOfBoundFrames);
  v8 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeInteger:v7 forKey:v8];

  v9 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared29IdentityPassiveLivenessConfig_totalFrameCount);
  v10 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeInteger:v9 forKey:v10];

  v11 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared29IdentityPassiveLivenessConfig_minimumValidFrameCount);
  v12 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeInteger:v11 forKey:v12];

  v13 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared29IdentityPassiveLivenessConfig_requiresGoodLux);
  v14 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeBool:v13 forKey:v14];

  v15 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared29IdentityPassiveLivenessConfig_enablePrintReplay);
  v16 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeBool:v15 forKey:v16];

  v17 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared29IdentityPassiveLivenessConfig_disableStitchDetection);
  v18 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeBool:v17 forKey:v18];

  v19 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared29IdentityPassiveLivenessConfig_enableAutoFlash);
  v20 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeBool:v19 forKey:v20];

  v21 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared29IdentityPassiveLivenessConfig_useAuxiliaryURL);
  v22 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeBool:v21 forKey:v22];
}

id sub_225B5DD48(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v9 = objc_allocWithZone(v4);
  *&v9[*a3] = a1;
  *&v9[*a4] = a2;
  v11.receiver = v9;
  v11.super_class = v4;
  return objc_msgSendSuper2(&v11, sel_init);
}

id sub_225B5DDCC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  ObjectType = swift_getObjectType();
  *&v4[*a3] = a1;
  *&v4[*a4] = a2;
  v11.receiver = v4;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, sel_init);
}

id IdentityGesture.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_225CCE444();
  v5 = [a1 decodeIntegerForKey_];

  *&v3[OBJC_IVAR____TtC13CoreIDVShared15IdentityGesture_gesture] = v5;
  v6 = sub_225CCE444();
  v7 = [a1 decodeIntegerForKey_];

  *&v3[OBJC_IVAR____TtC13CoreIDVShared15IdentityGesture_type] = v7;
  v10.receiver = v3;
  v10.super_class = v1;
  v8 = objc_msgSendSuper2(&v10, sel_init);

  return v8;
}

id IdentityGesture.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_225CCE444();
  v5 = [a1 decodeIntegerForKey_];

  *&v1[OBJC_IVAR____TtC13CoreIDVShared15IdentityGesture_gesture] = v5;
  v6 = sub_225CCE444();
  v7 = [a1 decodeIntegerForKey_];

  *&v1[OBJC_IVAR____TtC13CoreIDVShared15IdentityGesture_type] = v7;
  v10.receiver = v1;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, sel_init);

  return v8;
}

Swift::Void __swiftcall IdentityGesture.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared15IdentityGesture_gesture);
  v4 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeInteger:v3 forKey:v4];

  v5 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared15IdentityGesture_type);
  v6 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeInteger:v5 forKey:v6];
}

id IdentityGesture.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_225B5E318(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73DC80, &unk_225CEF7D0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_225CD4890;
  *(v5 + 32) = sub_225B5A1D8();
  *(v5 + 40) = type metadata accessor for IdentityGesture();
  sub_225CCEF24();

  if (!v45)
  {
    sub_225B5445C(v44);
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73DFC0, &unk_225CEFE40);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v6 = MEMORY[0x277D84F90];
    goto LABEL_6;
  }

  v6 = v42;
LABEL_6:
  *&v2[OBJC_IVAR____TtC13CoreIDVShared28IdentityActiveLivenessConfig_gestureSequence] = v6;
  v7 = sub_225CCE444();
  v8 = [a1 decodeIntegerForKey_];

  *&v2[OBJC_IVAR____TtC13CoreIDVShared28IdentityActiveLivenessConfig_minRequiredGestureCount] = v8;
  v9 = sub_225CCE444();
  v10 = [a1 decodeIntegerForKey_];

  *&v2[OBJC_IVAR____TtC13CoreIDVShared28IdentityActiveLivenessConfig_timeToSkipOption] = v10;
  v11 = sub_225CCE444();
  v12 = [a1 decodeIntegerForKey_];

  *&v2[OBJC_IVAR____TtC13CoreIDVShared28IdentityActiveLivenessConfig_timeToSkipAccessible] = v12;
  v13 = sub_225CCE444();
  v14 = [a1 decodeIntegerForKey_];

  *&v2[OBJC_IVAR____TtC13CoreIDVShared28IdentityActiveLivenessConfig_timeToAlert] = v14;
  v15 = sub_225CCE444();
  v16 = [a1 decodeIntegerForKey_];

  *&v2[OBJC_IVAR____TtC13CoreIDVShared28IdentityActiveLivenessConfig_timeToAlertAccessible] = v16;
  v17 = sub_225CCE444();
  v18 = [a1 decodeIntegerForKey_];

  *&v2[OBJC_IVAR____TtC13CoreIDVShared28IdentityActiveLivenessConfig_maxRetakeCount] = v18 & ~(v18 >> 63);
  v19 = sub_225CCE444();
  v20 = [a1 decodeIntegerForKey_];

  *&v2[OBJC_IVAR____TtC13CoreIDVShared28IdentityActiveLivenessConfig_sessionTimeout] = v20;
  v21 = sub_225CCE444();
  v22 = [a1 decodeIntegerForKey_];

  *&v2[OBJC_IVAR____TtC13CoreIDVShared28IdentityActiveLivenessConfig_faceOutOfBoundFrames] = v22;
  v23 = sub_225CCE444();
  v24 = [a1 decodeIntegerForKey_];

  *&v2[OBJC_IVAR____TtC13CoreIDVShared28IdentityActiveLivenessConfig_gestureCompletionDelay] = v24;
  v25 = sub_225CCE444();
  v26 = [a1 decodeIntegerForKey_];

  *&v2[OBJC_IVAR____TtC13CoreIDVShared28IdentityActiveLivenessConfig_tutorialVideoDelay] = v26;
  v27 = sub_225CCE444();
  v28 = [a1 decodeIntegerForKey_];

  *&v2[OBJC_IVAR____TtC13CoreIDVShared28IdentityActiveLivenessConfig_tutorialVideoDuration] = v28;
  v29 = sub_225CCE444();
  v30 = [a1 decodeIntegerForKey_];

  *&v2[OBJC_IVAR____TtC13CoreIDVShared28IdentityActiveLivenessConfig_tutorialResumeDelay] = v30;
  v31 = sub_225CCE444();
  v32 = [a1 decodeIntegerForKey_];

  *&v2[OBJC_IVAR____TtC13CoreIDVShared28IdentityActiveLivenessConfig_gestureDetectedSuccessDuration] = v32;
  v33 = sub_225CCE444();
  v34 = [a1 decodeIntegerForKey_];

  *&v2[OBJC_IVAR____TtC13CoreIDVShared28IdentityActiveLivenessConfig_lastGestureExtraFrameDuration] = v34;
  v35 = sub_225CCE444();
  LOBYTE(v34) = [a1 decodeBoolForKey_];

  v2[OBJC_IVAR____TtC13CoreIDVShared28IdentityActiveLivenessConfig_requiresGoodLux] = v34;
  v36 = sub_225CCE444();
  LOBYTE(v34) = [a1 decodeBoolForKey_];

  v2[OBJC_IVAR____TtC13CoreIDVShared28IdentityActiveLivenessConfig_enablePrintReplay] = v34;
  v37 = sub_225CCE444();
  LOBYTE(v34) = [a1 decodeBoolForKey_];

  v2[OBJC_IVAR____TtC13CoreIDVShared28IdentityActiveLivenessConfig_enableIDMatching] = v34;
  v38 = sub_225CCE444();
  LOBYTE(v34) = [a1 decodeBoolForKey_];

  v2[OBJC_IVAR____TtC13CoreIDVShared28IdentityActiveLivenessConfig_requireSelfie] = v34;
  v39 = sub_225CCE444();
  v40 = [a1 decodeBoolForKey_];

  v2[OBJC_IVAR____TtC13CoreIDVShared28IdentityActiveLivenessConfig_enableAutoFlash] = v40;
  v43.receiver = v2;
  v43.super_class = ObjectType;
  return objc_msgSendSuper2(&v43, sel_init);
}

id sub_225B5E9A4(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_225CCE444();
  v5 = [a1 decodeIntegerForKey_];

  *&v1[OBJC_IVAR____TtC13CoreIDVShared29IdentityPassiveLivenessConfig_maxRetakeCount] = v5;
  v6 = sub_225CCE444();
  v7 = [a1 decodeIntegerForKey_];

  *&v1[OBJC_IVAR____TtC13CoreIDVShared29IdentityPassiveLivenessConfig_sessionTimeout] = v7;
  v8 = sub_225CCE444();
  v9 = [a1 decodeIntegerForKey_];

  *&v1[OBJC_IVAR____TtC13CoreIDVShared29IdentityPassiveLivenessConfig_faceOutOfBoundFrames] = v9;
  v10 = sub_225CCE444();
  v11 = [a1 decodeIntegerForKey_];

  *&v1[OBJC_IVAR____TtC13CoreIDVShared29IdentityPassiveLivenessConfig_totalFrameCount] = v11;
  v12 = sub_225CCE444();
  v13 = [a1 decodeIntegerForKey_];

  *&v1[OBJC_IVAR____TtC13CoreIDVShared29IdentityPassiveLivenessConfig_minimumValidFrameCount] = v13;
  v14 = sub_225CCE444();
  LOBYTE(v13) = [a1 decodeBoolForKey_];

  v1[OBJC_IVAR____TtC13CoreIDVShared29IdentityPassiveLivenessConfig_requiresGoodLux] = v13;
  v15 = sub_225CCE444();
  LOBYTE(v13) = [a1 decodeBoolForKey_];

  v1[OBJC_IVAR____TtC13CoreIDVShared29IdentityPassiveLivenessConfig_enablePrintReplay] = v13;
  v16 = sub_225CCE444();
  LOBYTE(v13) = [a1 decodeBoolForKey_];

  v1[OBJC_IVAR____TtC13CoreIDVShared29IdentityPassiveLivenessConfig_disableStitchDetection] = v13;
  v17 = sub_225CCE444();
  LOBYTE(v13) = [a1 decodeBoolForKey_];

  v1[OBJC_IVAR____TtC13CoreIDVShared29IdentityPassiveLivenessConfig_enableAutoFlash] = v13;
  v18 = sub_225CCE444();
  LOBYTE(a1) = [a1 decodeBoolForKey_];

  v1[OBJC_IVAR____TtC13CoreIDVShared29IdentityPassiveLivenessConfig_useAuxiliaryURL] = a1;
  v20.receiver = v1;
  v20.super_class = ObjectType;
  return objc_msgSendSuper2(&v20, sel_init);
}

void *IdentityLivenessResults.activeMetrics.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC13CoreIDVShared23IdentityLivenessResults_activeMetrics);
  v2 = v1;
  return v1;
}

void *IdentityLivenessResults.passiveMetrics.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC13CoreIDVShared23IdentityLivenessResults_passiveMetrics);
  v2 = v1;
  return v1;
}

id IdentityLivenessResults.__allocating_init(livenessLabel:assessmentsFAC:timestampsFAC:assessmentTA:maxNccLow:maxNccHigh:ignoredStitches:assessmentsPRD:assessmentID:timestampsID:timestampsButtonPressed:luxValues:activeMetrics:passiveMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9, float a10, float a11, float a12, uint64_t a13, uint64_t a14)
{
  v26 = objc_allocWithZone(v14);
  *&v26[OBJC_IVAR____TtC13CoreIDVShared23IdentityLivenessResults_livenessLabel] = a1;
  *&v26[OBJC_IVAR____TtC13CoreIDVShared23IdentityLivenessResults_assessmentsFAC] = a2;
  *&v26[OBJC_IVAR____TtC13CoreIDVShared23IdentityLivenessResults_timestampsFAC] = a3;
  *&v26[OBJC_IVAR____TtC13CoreIDVShared23IdentityLivenessResults_assessmentTA] = a9;
  *&v26[OBJC_IVAR____TtC13CoreIDVShared23IdentityLivenessResults_maxNccLow] = a10;
  *&v26[OBJC_IVAR____TtC13CoreIDVShared23IdentityLivenessResults_maxNccHigh] = a11;
  *&v26[OBJC_IVAR____TtC13CoreIDVShared23IdentityLivenessResults_ignoredStitches] = a4;
  *&v26[OBJC_IVAR____TtC13CoreIDVShared23IdentityLivenessResults_assessmentsPRD] = a5;
  *&v26[OBJC_IVAR____TtC13CoreIDVShared23IdentityLivenessResults_assessmentID] = a12;
  *&v26[OBJC_IVAR____TtC13CoreIDVShared23IdentityLivenessResults_timestampsID] = a6;
  *&v26[OBJC_IVAR____TtC13CoreIDVShared23IdentityLivenessResults_timestampsButtonPressed] = a7;
  *&v26[OBJC_IVAR____TtC13CoreIDVShared23IdentityLivenessResults_luxValues] = a8;
  *&v26[OBJC_IVAR____TtC13CoreIDVShared23IdentityLivenessResults_activeMetrics] = a13;
  *&v26[OBJC_IVAR____TtC13CoreIDVShared23IdentityLivenessResults_passiveMetrics] = a14;
  v29.receiver = v26;
  v29.super_class = v14;
  return objc_msgSendSuper2(&v29, sel_init);
}

id IdentityLivenessResults.init(livenessLabel:assessmentsFAC:timestampsFAC:assessmentTA:maxNccLow:maxNccHigh:ignoredStitches:assessmentsPRD:assessmentID:timestampsID:timestampsButtonPressed:luxValues:activeMetrics:passiveMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9, float a10, float a11, float a12, uint64_t a13, uint64_t a14)
{
  ObjectType = swift_getObjectType();
  *&v14[OBJC_IVAR____TtC13CoreIDVShared23IdentityLivenessResults_livenessLabel] = a1;
  *&v14[OBJC_IVAR____TtC13CoreIDVShared23IdentityLivenessResults_assessmentsFAC] = a2;
  *&v14[OBJC_IVAR____TtC13CoreIDVShared23IdentityLivenessResults_timestampsFAC] = a3;
  *&v14[OBJC_IVAR____TtC13CoreIDVShared23IdentityLivenessResults_assessmentTA] = a9;
  *&v14[OBJC_IVAR____TtC13CoreIDVShared23IdentityLivenessResults_maxNccLow] = a10;
  *&v14[OBJC_IVAR____TtC13CoreIDVShared23IdentityLivenessResults_maxNccHigh] = a11;
  *&v14[OBJC_IVAR____TtC13CoreIDVShared23IdentityLivenessResults_ignoredStitches] = a4;
  *&v14[OBJC_IVAR____TtC13CoreIDVShared23IdentityLivenessResults_assessmentsPRD] = a5;
  *&v14[OBJC_IVAR____TtC13CoreIDVShared23IdentityLivenessResults_assessmentID] = a12;
  *&v14[OBJC_IVAR____TtC13CoreIDVShared23IdentityLivenessResults_timestampsID] = a6;
  *&v14[OBJC_IVAR____TtC13CoreIDVShared23IdentityLivenessResults_timestampsButtonPressed] = a7;
  *&v14[OBJC_IVAR____TtC13CoreIDVShared23IdentityLivenessResults_luxValues] = a8;
  *&v14[OBJC_IVAR____TtC13CoreIDVShared23IdentityLivenessResults_activeMetrics] = a13;
  *&v14[OBJC_IVAR____TtC13CoreIDVShared23IdentityLivenessResults_passiveMetrics] = a14;
  v29.receiver = v14;
  v29.super_class = ObjectType;
  return objc_msgSendSuper2(&v29, sel_init);
}

id IdentityLivenessResults.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_225B60B60(a1);

  return v4;
}

id IdentityLivenessResults.init(coder:)(void *a1)
{
  v2 = sub_225B60B60(a1);

  return v2;
}

uint64_t sub_225B5F2C8(unint64_t a1, unint64_t a2, void (*a3)(id, uint64_t *))
{
  v5 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_225CCF144())
  {
    v19 = MEMORY[0x277D84F90];
    (a2)(0, i & ~(i >> 63), 0);
    v7 = v19;
    if (v5)
    {
      break;
    }

    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      return v7;
    }

LABEL_7:
    v15 = a2;
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x22AA6DA80](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v10 = *(a1 + 8 * j + 32);
      }

      v11 = v10;
      v5 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v17 = 0;
      v18 = 1;
      a3(v10, &v17);

      if (v18)
      {

        return 0;
      }

      v12 = v17;
      v19 = v7;
      a2 = *(v7 + 16);
      v13 = *(v7 + 24);
      if (a2 >= v13 >> 1)
      {
        v15(v13 > 1, a2 + 1, 1);
        v7 = v19;
      }

      *(v7 + 16) = a2 + 1;
      *(v7 + 8 * a2 + 32) = v12;
      if (v5 == v8)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  v8 = sub_225CCF144();
  if (v8)
  {
    goto LABEL_7;
  }

  return v7;
}

Swift::Void __swiftcall IdentityLivenessResults.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared23IdentityLivenessResults_livenessLabel);
  v4 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeInteger:v3 forKey:v4];

  v5 = sub_225CCE7F4();
  v6 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];

  type metadata accessor for GestureTimestamps();
  v7 = sub_225CCE7F4();
  v8 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v7 forKey:v8];

  v9 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared23IdentityLivenessResults_assessmentTA);
  v10 = sub_225CCE444();
  LODWORD(v11) = v9;
  [(objc_class *)with.super.isa encodeFloat:v10 forKey:v11];

  v12 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared23IdentityLivenessResults_maxNccLow);
  v13 = sub_225CCE444();
  LODWORD(v14) = v12;
  [(objc_class *)with.super.isa encodeFloat:v13 forKey:v14];

  v15 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared23IdentityLivenessResults_maxNccHigh);
  v16 = sub_225CCE444();
  LODWORD(v17) = v15;
  [(objc_class *)with.super.isa encodeFloat:v16 forKey:v17];

  v18 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared23IdentityLivenessResults_ignoredStitches);
  v19 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeInteger:v18 forKey:v19];

  type metadata accessor for PRDMetadata();
  v20 = sub_225CCE7F4();
  v21 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v20 forKey:v21];

  v22 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared23IdentityLivenessResults_assessmentID);
  v23 = sub_225CCE444();
  LODWORD(v24) = v22;
  [(objc_class *)with.super.isa encodeFloat:v23 forKey:v24];

  v25 = sub_225CCE7F4();
  v26 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v25 forKey:v26];

  v27 = sub_225CCE7F4();
  v28 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v27 forKey:v28];

  v29 = sub_225CCE7F4();
  v30 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v29 forKey:v30];

  v31 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared23IdentityLivenessResults_activeMetrics);
  v32 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v31 forKey:v32];

  v33 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared23IdentityLivenessResults_passiveMetrics);
  v34 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v33 forKey:v34];
}

uint64_t IdentityLivenessResults.debugDescription.getter()
{
  v1 = v0;
  sub_225CCF204();
  MEMORY[0x22AA6CE70](0x7373656E6576696CLL, 0xEF203A6C6562614CLL);
  v2 = MEMORY[0x277D83B88];
  v3 = sub_225CCF824();
  MEMORY[0x22AA6CE70](v3);

  MEMORY[0x22AA6CE70](0xD000000000000011, 0x8000000225D1F950);
  v4 = MEMORY[0x22AA6D060](*(v0 + OBJC_IVAR____TtC13CoreIDVShared23IdentityLivenessResults_assessmentsFAC), v2);
  MEMORY[0x22AA6CE70](v4);

  MEMORY[0x22AA6CE70](0xD000000000000010, 0x8000000225D1F970);
  v5 = *(v0 + OBJC_IVAR____TtC13CoreIDVShared23IdentityLivenessResults_timestampsFAC);
  v6 = type metadata accessor for GestureTimestamps();
  v7 = MEMORY[0x22AA6D060](v5, v6);
  MEMORY[0x22AA6CE70](v7);

  MEMORY[0x22AA6CE70](0x6D7373657373610ALL, 0xEF203A4154746E65);
  sub_225CCEBD4();
  MEMORY[0x22AA6CE70](0x4C63634E78616D0ALL, 0xEC000000203A776FLL);
  sub_225CCEBD4();
  MEMORY[0x22AA6CE70](0x4863634E78616D0ALL, 0xED0000203A686769);
  sub_225CCEBD4();
  MEMORY[0x22AA6CE70](0xD000000000000012, 0x8000000225D1F990);
  v8 = sub_225CCF824();
  MEMORY[0x22AA6CE70](v8);

  MEMORY[0x22AA6CE70](0xD000000000000011, 0x8000000225D1F9B0);
  v9 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared23IdentityLivenessResults_assessmentsPRD);
  v10 = type metadata accessor for PRDMetadata();
  v11 = MEMORY[0x22AA6D090](v9, v10);
  MEMORY[0x22AA6CE70](v11);

  MEMORY[0x22AA6CE70](0x6D7373657373610ALL, 0xEF203A4449746E65);
  sub_225CCEBD4();
  MEMORY[0x22AA6CE70](0x617473656D69740ALL, 0xEF203A444973706DLL);
  v12 = MEMORY[0x277D84D38];
  v13 = MEMORY[0x22AA6D060](*(v1 + OBJC_IVAR____TtC13CoreIDVShared23IdentityLivenessResults_timestampsID), MEMORY[0x277D84D38]);
  MEMORY[0x22AA6CE70](v13);

  MEMORY[0x22AA6CE70](0xD00000000000001ALL, 0x8000000225D1F9D0);
  v14 = MEMORY[0x22AA6D060](*(v1 + OBJC_IVAR____TtC13CoreIDVShared23IdentityLivenessResults_timestampsButtonPressed), v12);
  MEMORY[0x22AA6CE70](v14);

  MEMORY[0x22AA6CE70](0x756C615678756C0ALL, 0xEC000000203A7365);
  v15 = MEMORY[0x22AA6D060](*(v1 + OBJC_IVAR____TtC13CoreIDVShared23IdentityLivenessResults_luxValues), v2);
  MEMORY[0x22AA6CE70](v15);

  MEMORY[0x22AA6CE70](0xD000000000000010, 0x8000000225D1F9F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E040, &qword_225CEFE50);
  v16 = sub_225CCEFB4();
  MEMORY[0x22AA6CE70](v16);

  MEMORY[0x22AA6CE70](0xD000000000000011, 0x8000000225D1FA10);
  v17 = sub_225CCEFB4();
  MEMORY[0x22AA6CE70](v17);

  return 0;
}

id GestureTimestamps.__allocating_init(timestamps:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC13CoreIDVShared17GestureTimestamps_timestamps] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id GestureTimestamps.init(timestamps:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC13CoreIDVShared17GestureTimestamps_timestamps] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

id GestureTimestamps.__allocating_init(coder:)(void *a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v2);
  sub_2259D8718(0, &qword_281059A70, 0x277CCABB0);
  v5 = sub_225CCEF34();
  if (!v5 || (v6 = sub_225B5F2C8(v5, sub_2259D5520, MEMORY[0x277CC9F98]), , !v6))
  {

    v6 = MEMORY[0x277D84F90];
  }

  *&v4[OBJC_IVAR____TtC13CoreIDVShared17GestureTimestamps_timestamps] = v6;
  v9.receiver = v4;
  v9.super_class = v2;
  v7 = objc_msgSendSuper2(&v9, sel_init);

  return v7;
}

id GestureTimestamps.init(coder:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  sub_2259D8718(0, &qword_281059A70, 0x277CCABB0);
  v5 = sub_225CCEF34();
  if (!v5 || (v6 = sub_225B5F2C8(v5, sub_2259D5520, MEMORY[0x277CC9F98]), , !v6))
  {

    v6 = MEMORY[0x277D84F90];
  }

  *&v2[OBJC_IVAR____TtC13CoreIDVShared17GestureTimestamps_timestamps] = v6;
  v9.receiver = v2;
  v9.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v9, sel_init);

  return v7;
}

Swift::Void __swiftcall GestureTimestamps.encode(with:)(NSCoder with)
{
  v2 = sub_225CCE7F4();
  v3 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v2 forKey:v3];
}

id PRDMetadata.__allocating_init(stage2:timestamp:)(uint64_t a1, float a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC13CoreIDVShared11PRDMetadata_stage2] = a2;
  *&v5[OBJC_IVAR____TtC13CoreIDVShared11PRDMetadata_timestamp] = a1;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id PRDMetadata.init(stage2:timestamp:)(uint64_t a1, float a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC13CoreIDVShared11PRDMetadata_stage2] = a2;
  *&v2[OBJC_IVAR____TtC13CoreIDVShared11PRDMetadata_timestamp] = a1;
  v7.receiver = v2;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

id PRDMetadata.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_225B6123C(a1);

  return v4;
}

id PRDMetadata.init(coder:)(void *a1)
{
  v2 = sub_225B6123C(a1);

  return v2;
}

Swift::Void __swiftcall PRDMetadata.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared11PRDMetadata_stage2);
  v4 = sub_225CCE444();
  LODWORD(v5) = v3;
  [(objc_class *)with.super.isa encodeFloat:v4 forKey:v5];

  v6 = sub_225CCFC44();
  v7 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v6 forKey:v7];
}

id sub_225B60964(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_225CCE444();

  return v5;
}

uint64_t PRDMetadata.debugDescription.getter()
{
  sub_225CCF204();

  v0 = sub_225CCEBA4();
  MEMORY[0x22AA6CE70](v0);

  MEMORY[0x22AA6CE70](0x7473656D6974202CLL, 0xED0000203A706D61);
  sub_225B61354();
  v1 = sub_225CCF094();
  MEMORY[0x22AA6CE70](v1);

  return 0x3A3265676174730ALL;
}

id PRDMetadata.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_225B60B60(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_225CCE444();
  v5 = [a1 decodeIntegerForKey_];

  *&v2[OBJC_IVAR____TtC13CoreIDVShared23IdentityLivenessResults_livenessLabel] = v5;
  sub_2259D8718(0, &qword_281059A70, 0x277CCABB0);
  v6 = sub_225CCEF34();
  if (!v6 || (v7 = sub_225B5F2C8(v6, sub_2259D5304, MEMORY[0x277CC9CA8]), , !v7))
  {

    v7 = MEMORY[0x277D84F90];
  }

  *&v2[OBJC_IVAR____TtC13CoreIDVShared23IdentityLivenessResults_assessmentsFAC] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73DC80, &unk_225CEF7D0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_225CD4890;
  v9 = sub_2259D8718(0, &qword_281059AA0, 0x277CBEA60);
  *(v8 + 32) = v9;
  *(v8 + 40) = type metadata accessor for GestureTimestamps();
  sub_225CCEF24();

  if (v38)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E078, &unk_225CEFEE0);
    if (swift_dynamicCast())
    {
      v10 = v35;
      goto LABEL_9;
    }
  }

  else
  {
    sub_225B5445C(v37);
  }

  v10 = MEMORY[0x277D84F90];
LABEL_9:
  *&v2[OBJC_IVAR____TtC13CoreIDVShared23IdentityLivenessResults_timestampsFAC] = v10;
  v11 = sub_225CCE444();
  [a1 decodeFloatForKey_];
  v13 = v12;

  *&v2[OBJC_IVAR____TtC13CoreIDVShared23IdentityLivenessResults_assessmentTA] = v13;
  v14 = sub_225CCE444();
  [a1 decodeFloatForKey_];
  v16 = v15;

  *&v2[OBJC_IVAR____TtC13CoreIDVShared23IdentityLivenessResults_maxNccLow] = v16;
  v17 = sub_225CCE444();
  [a1 decodeFloatForKey_];
  v19 = v18;

  *&v2[OBJC_IVAR____TtC13CoreIDVShared23IdentityLivenessResults_maxNccHigh] = v19;
  v20 = sub_225CCE444();
  v21 = [a1 decodeIntegerForKey_];

  *&v2[OBJC_IVAR____TtC13CoreIDVShared23IdentityLivenessResults_ignoredStitches] = v21;
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_225CD4890;
  *(v22 + 32) = v9;
  *(v22 + 40) = type metadata accessor for PRDMetadata();
  sub_225CCEF24();

  if (!v38)
  {
    sub_225B5445C(v37);
    goto LABEL_13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E070, &qword_225CEFED8);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    v23 = MEMORY[0x277D84F90];
    goto LABEL_14;
  }

  v23 = v35;
LABEL_14:
  *&v2[OBJC_IVAR____TtC13CoreIDVShared23IdentityLivenessResults_assessmentsPRD] = v23;
  v24 = sub_225CCE444();
  [a1 decodeFloatForKey_];
  v26 = v25;

  *&v2[OBJC_IVAR____TtC13CoreIDVShared23IdentityLivenessResults_assessmentID] = v26;
  v27 = sub_225CCEF34();
  if (!v27 || (v28 = sub_225B5F2C8(v27, sub_2259D5520, MEMORY[0x277CC9F98]), , !v28))
  {

    v28 = MEMORY[0x277D84F90];
  }

  *&v2[OBJC_IVAR____TtC13CoreIDVShared23IdentityLivenessResults_timestampsID] = v28;
  v29 = sub_225CCEF34();
  if (!v29 || (v30 = sub_225B5F2C8(v29, sub_2259D5520, MEMORY[0x277CC9F98]), , !v30))
  {

    v30 = MEMORY[0x277D84F90];
  }

  *&v2[OBJC_IVAR____TtC13CoreIDVShared23IdentityLivenessResults_timestampsButtonPressed] = v30;
  v31 = sub_225CCEF34();
  if (!v31 || (v32 = sub_225B5F2C8(v31, sub_2259D5304, MEMORY[0x277CC9CA8]), , !v32))
  {

    v32 = MEMORY[0x277D84F90];
  }

  *&v2[OBJC_IVAR____TtC13CoreIDVShared23IdentityLivenessResults_luxValues] = v32;
  type metadata accessor for IdentityImageQualityMetrics();
  *&v2[OBJC_IVAR____TtC13CoreIDVShared23IdentityLivenessResults_activeMetrics] = sub_225CCEF14();
  *&v2[OBJC_IVAR____TtC13CoreIDVShared23IdentityLivenessResults_passiveMetrics] = sub_225CCEF14();
  v36.receiver = v2;
  v36.super_class = ObjectType;
  return objc_msgSendSuper2(&v36, sel_init);
}

id sub_225B6123C(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_225CCE444();
  [a1 decodeFloatForKey_];
  v7 = v6;

  *&v2[OBJC_IVAR____TtC13CoreIDVShared11PRDMetadata_stage2] = v7;
  sub_2259D8718(0, &qword_281059A70, 0x277CCABB0);
  v8 = sub_225CCEF14();
  if (v8)
  {
    v11 = 0;
    v9 = v8;
    sub_225CCFC54();
  }

  *&v2[OBJC_IVAR____TtC13CoreIDVShared11PRDMetadata_timestamp] = 0;
  v12.receiver = v2;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, sel_init, v11);
}

unint64_t sub_225B61354()
{
  result = qword_27D73E068;
  if (!qword_27D73E068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73E068);
  }

  return result;
}

unint64_t IdentityProofingAvailability.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

unint64_t sub_225B614DC@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_225B645D0(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t IdentityProofingActionStatus.debugDescription.getter(uint64_t a1)
{
  result = 0x6550737574617473;
  switch(a1)
  {
    case 0:
      result = 0xD000000000000017;
      break;
    case 1:
      return result;
    case 2:
      result = 0x416F547964616572;
      break;
    case 3:
      result = 1701736302;
      break;
    case 4:
      v3 = 0x417265746E65;
      goto LABEL_13;
    case 5:
      result = 0x6464417972746572;
      break;
    case 6:
      result = 0xD000000000000016;
      break;
    case 7:
      result = 0x6441746F6E6E6163;
      break;
    case 8:
      result = 0x6F54656C62616E75;
      break;
    case 9:
      result = 0x46676E6974696177;
      break;
    case 10:
      v3 = 0x417972746572;
LABEL_13:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x7475000000000000;
      break;
    case 11:
      result = 0x64657269707865;
      break;
    case 12:
      result = 0x7373656E6576696CLL;
      break;
    default:
      result = sub_225CCFA84();
      __break(1u);
      break;
  }

  return result;
}

uint64_t IdentityTarget.init(rawValue:)(uint64_t result)
{
  if ((result - 3) < 0xFFFFFFFFFFFFFFFELL)
  {
    return 0;
  }

  return result;
}

uint64_t *sub_225B61714@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result - 3;
  v4 = __CFADD__(v3, 2);
  v5 = v3 < 0xFFFFFFFFFFFFFFFELL;
  if (!v4)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v5;
  return result;
}

uint64_t IdentityTarget.debugDescription.getter(uint64_t a1)
{
  if (a1 == 1)
  {
    return 0x656E6F6870;
  }

  if (a1 == 2)
  {
    return 0x6863746177;
  }

  result = sub_225CCFA84();
  __break(1u);
  return result;
}

uint64_t sub_225B617A0(uint64_t a1)
{
  if (*v1 == 1)
  {
    return 0x656E6F6870;
  }

  if (*v1 == 2)
  {
    return 0x6863746177;
  }

  result = sub_225CCFA84();
  __break(1u);
  return result;
}

unint64_t IdentityProofingPrecursorPassMessageActionType.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

unint64_t *sub_225B61820@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t IdentityProofingPrecursorPassMessageAction.title.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC13CoreIDVShared42IdentityProofingPrecursorPassMessageAction_title);

  return v1;
}

id IdentityProofingPrecursorPassMessageAction.__allocating_init(title:actionType:actionURL:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = &v9[OBJC_IVAR____TtC13CoreIDVShared42IdentityProofingPrecursorPassMessageAction_title];
  *v10 = a1;
  *(v10 + 1) = a2;
  *&v9[OBJC_IVAR____TtC13CoreIDVShared42IdentityProofingPrecursorPassMessageAction_actionType] = a3;
  sub_225A33B7C(a4, &v9[OBJC_IVAR____TtC13CoreIDVShared42IdentityProofingPrecursorPassMessageAction_actionURL]);
  v13.receiver = v9;
  v13.super_class = v4;
  v11 = objc_msgSendSuper2(&v13, sel_init);
  sub_2259CB640(a4, &unk_27D73E090, &qword_225CD8ED0);
  return v11;
}

id IdentityProofingPrecursorPassMessageAction.init(title:actionType:actionURL:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC13CoreIDVShared42IdentityProofingPrecursorPassMessageAction_title];
  *v10 = a1;
  *(v10 + 1) = a2;
  *&v4[OBJC_IVAR____TtC13CoreIDVShared42IdentityProofingPrecursorPassMessageAction_actionType] = a3;
  sub_225A33B7C(a4, &v4[OBJC_IVAR____TtC13CoreIDVShared42IdentityProofingPrecursorPassMessageAction_actionURL]);
  v13.receiver = v4;
  v13.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v13, sel_init);
  sub_2259CB640(a4, &unk_27D73E090, &qword_225CD8ED0);
  return v11;
}

Swift::Void __swiftcall IdentityProofingPrecursorPassMessageAction.encode(with:)(NSCoder with)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73E090, &qword_225CD8ED0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14 - v4;
  v6 = sub_225CCE444();
  v7 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v6 forKey:v7];

  v8 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared42IdentityProofingPrecursorPassMessageAction_actionType);
  v9 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeInt64:v8 forKey:v9];

  sub_225A33B7C(v1 + OBJC_IVAR____TtC13CoreIDVShared42IdentityProofingPrecursorPassMessageAction_actionURL, v5);
  v10 = sub_225CCCEA4();
  v11 = *(v10 - 8);
  v12 = 0;
  if ((*(v11 + 48))(v5, 1, v10) != 1)
  {
    v12 = sub_225CCCDF4();
    (*(v11 + 8))(v5, v10);
  }

  v13 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v12 forKey:v13];
  swift_unknownObjectRelease();
}

id IdentityProofingPrecursorPassMessageAction.init(coder:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73E090, &qword_225CD8ED0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v22 - v6;
  sub_2259D8718(0, &qword_281059A60, 0x277CCACA8);
  v8 = sub_225CCEF14();
  if (v8)
  {
    v22 = 0;
    v23 = 0;
    v9 = v8;
    sub_225CCE464();

    v10 = v23;
    if (v23)
    {
      v11 = v22;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  sub_2259D8718(0, &qword_281059A70, 0x277CCABB0);
  v12 = sub_225CCEF14();
  if (!v12)
  {
    if (v10)
    {
LABEL_13:

LABEL_15:
      swift_deallocPartialClassInstance();
      return 0;
    }

LABEL_14:

    goto LABEL_15;
  }

  v22 = 0;
  LOBYTE(v23) = 1;
  v13 = v12;
  sub_225CCFBB4();

  if (!v10)
  {
    goto LABEL_14;
  }

  if (v23)
  {
    goto LABEL_13;
  }

  v14 = v22;
  if (v22 >= 2)
  {
    goto LABEL_13;
  }

  v15 = &v2[OBJC_IVAR____TtC13CoreIDVShared42IdentityProofingPrecursorPassMessageAction_title];
  *v15 = v11;
  v15[1] = v10;
  *&v2[OBJC_IVAR____TtC13CoreIDVShared42IdentityProofingPrecursorPassMessageAction_actionType] = v14;
  sub_2259D8718(0, &unk_27D73E420, 0x277CBEBC0);
  v16 = sub_225CCEF14();
  if (v16)
  {
    v17 = v16;
    sub_225CCCE34();

    v18 = sub_225CCCEA4();
    (*(*(v18 - 8) + 56))(v7, 0, 1, v18);
  }

  else
  {
    v20 = sub_225CCCEA4();
    (*(*(v20 - 8) + 56))(v7, 1, 1, v20);
  }

  sub_225B645E0(v7, &v2[OBJC_IVAR____TtC13CoreIDVShared42IdentityProofingPrecursorPassMessageAction_actionURL]);
  v24.receiver = v2;
  v24.super_class = ObjectType;
  v21 = objc_msgSendSuper2(&v24, sel_init);

  return v21;
}

uint64_t IdentityProofingPrecursorPassMessageAction.description.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73E090, &qword_225CD8ED0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v12 - v2;
  v13 = 0;
  v14 = 0xE000000000000000;
  sub_225CCF204();

  v13 = 0x22203D656C746974;
  v14 = 0xE800000000000000;
  MEMORY[0x22AA6CE70](*(v0 + OBJC_IVAR____TtC13CoreIDVShared42IdentityProofingPrecursorPassMessageAction_title), *(v0 + OBJC_IVAR____TtC13CoreIDVShared42IdentityProofingPrecursorPassMessageAction_title + 8));
  MEMORY[0x22AA6CE70](0xD000000000000010, 0x8000000225D1FC40);
  v12[1] = *(v0 + OBJC_IVAR____TtC13CoreIDVShared42IdentityProofingPrecursorPassMessageAction_actionType);
  v4 = sub_225CCF824();
  MEMORY[0x22AA6CE70](v4);

  MEMORY[0x22AA6CE70](0x6E6F69746361202CLL, 0xEE00203D204C5255);
  sub_225A33B7C(v0 + OBJC_IVAR____TtC13CoreIDVShared42IdentityProofingPrecursorPassMessageAction_actionURL, v3);
  v5 = sub_225CCCEA4();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v3, 1, v5) == 1)
  {
    sub_2259CB640(v3, &unk_27D73E090, &qword_225CD8ED0);
    v7 = 0xE500000000000000;
    v8 = 0x3E6C696E3CLL;
  }

  else
  {
    v9 = sub_225CCCD94();
    v7 = v10;
    (*(v6 + 8))(v3, v5);
    v8 = v9;
  }

  MEMORY[0x22AA6CE70](v8, v7);

  return v13;
}

uint64_t IdentityProofingPrecursorPassMessage.title.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC13CoreIDVShared36IdentityProofingPrecursorPassMessage_title);

  return v1;
}

uint64_t IdentityProofingPrecursorPassMessage.message.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC13CoreIDVShared36IdentityProofingPrecursorPassMessage_message);

  return v1;
}

id IdentityProofingPrecursorPassMessage.__allocating_init(title:message:actions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = &v11[OBJC_IVAR____TtC13CoreIDVShared36IdentityProofingPrecursorPassMessage_title];
  *v12 = a1;
  *(v12 + 1) = a2;
  v13 = &v11[OBJC_IVAR____TtC13CoreIDVShared36IdentityProofingPrecursorPassMessage_message];
  *v13 = a3;
  *(v13 + 1) = a4;
  *&v11[OBJC_IVAR____TtC13CoreIDVShared36IdentityProofingPrecursorPassMessage_actions] = a5;
  v15.receiver = v11;
  v15.super_class = v5;
  return objc_msgSendSuper2(&v15, sel_init);
}

id IdentityProofingPrecursorPassMessage.init(title:message:actions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v12 = &v5[OBJC_IVAR____TtC13CoreIDVShared36IdentityProofingPrecursorPassMessage_title];
  *v12 = a1;
  *(v12 + 1) = a2;
  v13 = &v5[OBJC_IVAR____TtC13CoreIDVShared36IdentityProofingPrecursorPassMessage_message];
  *v13 = a3;
  *(v13 + 1) = a4;
  *&v5[OBJC_IVAR____TtC13CoreIDVShared36IdentityProofingPrecursorPassMessage_actions] = a5;
  v15.receiver = v5;
  v15.super_class = ObjectType;
  return objc_msgSendSuper2(&v15, sel_init);
}

Swift::Void __swiftcall IdentityProofingPrecursorPassMessage.encode(with:)(NSCoder with)
{
  if (*(v1 + OBJC_IVAR____TtC13CoreIDVShared36IdentityProofingPrecursorPassMessage_title + 8))
  {
    v3 = sub_225CCE444();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR____TtC13CoreIDVShared36IdentityProofingPrecursorPassMessage_message + 8))
  {
    v5 = sub_225CCE444();
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];
  swift_unknownObjectRelease();

  v7 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared36IdentityProofingPrecursorPassMessage_actions);
  if (v7)
  {
    type metadata accessor for IdentityProofingPrecursorPassMessageAction(0);
    v7 = sub_225CCE7F4();
  }

  v8 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v7 forKey:v8];
  swift_unknownObjectRelease();
}

id IdentityProofingPrecursorPassMessage.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_225B6469C();

  return v4;
}

id IdentityProofingPrecursorPassMessage.init(coder:)(void *a1)
{
  v2 = sub_225B6469C();

  return v2;
}

char *IdentityProofingPrecursorPassMessage.description.getter()
{
  v1 = 0x3E6C696E3CLL;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73E090, &qword_225CD8ED0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v33 - v3;
  v41 = 0;
  v42 = 0xE000000000000000;
  sub_225CCF204();

  v41 = 0x203A656C746974;
  v42 = 0xE700000000000000;
  if (*(v0 + OBJC_IVAR____TtC13CoreIDVShared36IdentityProofingPrecursorPassMessage_title + 8))
  {
    v5 = *(v0 + OBJC_IVAR____TtC13CoreIDVShared36IdentityProofingPrecursorPassMessage_title);
    v6 = *(v0 + OBJC_IVAR____TtC13CoreIDVShared36IdentityProofingPrecursorPassMessage_title + 8);
  }

  else
  {
    v6 = 0xE500000000000000;
    v5 = 0x3E6C696E3CLL;
  }

  MEMORY[0x22AA6CE70](v5, v6);

  MEMORY[0x22AA6CE70](0x6567617373656D0ALL, 0xEA0000000000203ALL);
  if (*(v0 + OBJC_IVAR____TtC13CoreIDVShared36IdentityProofingPrecursorPassMessage_message + 8))
  {
    v7 = *(v0 + OBJC_IVAR____TtC13CoreIDVShared36IdentityProofingPrecursorPassMessage_message);
    v8 = *(v0 + OBJC_IVAR____TtC13CoreIDVShared36IdentityProofingPrecursorPassMessage_message + 8);
  }

  else
  {
    v8 = 0xE500000000000000;
    v7 = 0x3E6C696E3CLL;
  }

  MEMORY[0x22AA6CE70](v7, v8);

  MEMORY[0x22AA6CE70](0x736E6F697463610ALL, 0xEE00202020200A3ALL);
  v9 = *(v0 + OBJC_IVAR____TtC13CoreIDVShared36IdentityProofingPrecursorPassMessage_actions);
  if (!v9)
  {
    v30 = 0xE500000000000000;
    goto LABEL_24;
  }

  if (v9 >> 62)
  {
    v31 = *(v0 + OBJC_IVAR____TtC13CoreIDVShared36IdentityProofingPrecursorPassMessage_actions);
    v32 = sub_225CCF144();
    v9 = v31;
    v10 = v32;
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = MEMORY[0x277D84F90];
  if (!v10)
  {
LABEL_22:
    v38 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0, &unk_225CD76A0);
    sub_2259CB764();
    v1 = sub_225CCE384();
    v30 = v29;

LABEL_24:
    MEMORY[0x22AA6CE70](v1, v30);

    return v41;
  }

  v12 = v9;
  v40 = MEMORY[0x277D84F90];
  result = sub_2259D52A4(0, v10 & ~(v10 >> 63), 0);
  if ((v10 & 0x8000000000000000) == 0)
  {
    v14 = 0;
    v11 = v40;
    v15 = v12;
    v34 = "actionRequestedByIssuer";
    v35 = v12 & 0xC000000000000001;
    v36 = v10;
    do
    {
      if (v35)
      {
        v16 = MEMORY[0x22AA6DA80](v14, v15);
      }

      else
      {
        v16 = *(v15 + 8 * v14 + 32);
      }

      v17 = v16;
      v38 = 0;
      v39 = 0xE000000000000000;
      sub_225CCF204();

      v38 = 0x22203D656C746974;
      v39 = 0xE800000000000000;
      MEMORY[0x22AA6CE70](*&v17[OBJC_IVAR____TtC13CoreIDVShared42IdentityProofingPrecursorPassMessageAction_title], *&v17[OBJC_IVAR____TtC13CoreIDVShared42IdentityProofingPrecursorPassMessageAction_title + 8]);
      MEMORY[0x22AA6CE70](0xD000000000000010, v34 | 0x8000000000000000);
      v37 = *&v17[OBJC_IVAR____TtC13CoreIDVShared42IdentityProofingPrecursorPassMessageAction_actionType];
      v18 = sub_225CCF824();
      MEMORY[0x22AA6CE70](v18);

      MEMORY[0x22AA6CE70](0x6E6F69746361202CLL, 0xEE00203D204C5255);
      sub_225A33B7C(&v17[OBJC_IVAR____TtC13CoreIDVShared42IdentityProofingPrecursorPassMessageAction_actionURL], v4);
      v19 = sub_225CCCEA4();
      v20 = *(v19 - 8);
      if ((*(v20 + 48))(v4, 1, v19) == 1)
      {
        sub_2259CB640(v4, &unk_27D73E090, &qword_225CD8ED0);
        v21 = 0xE500000000000000;
        v22 = 0x3E6C696E3CLL;
      }

      else
      {
        v22 = sub_225CCCD94();
        v21 = v23;
        (*(v20 + 8))(v4, v19);
      }

      MEMORY[0x22AA6CE70](v22, v21);

      v24 = v38;
      v25 = v39;
      v40 = v11;
      v27 = *(v11 + 16);
      v26 = *(v11 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_2259D52A4((v26 > 1), v27 + 1, 1);
        v11 = v40;
      }

      ++v14;
      *(v11 + 16) = v27 + 1;
      v28 = v11 + 16 * v27;
      *(v28 + 32) = v24;
      *(v28 + 40) = v25;
      v15 = v12;
    }

    while (v36 != v14);
    goto LABEL_22;
  }

  __break(1u);
  return result;
}

uint64_t IdentityProofingConfiguration.state.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC13CoreIDVShared29IdentityProofingConfiguration_state);

  return v1;
}

uint64_t IdentityProofingConfiguration.country.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC13CoreIDVShared29IdentityProofingConfiguration_country);

  return v1;
}

uint64_t IdentityProofingConfiguration.credentialIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC13CoreIDVShared29IdentityProofingConfiguration_credentialIdentifier);

  return v1;
}

uint64_t IdentityProofingConfiguration.productIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC13CoreIDVShared29IdentityProofingConfiguration_productIdentifier);

  return v1;
}

uint64_t IdentityProofingConfiguration.accountKeyIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC13CoreIDVShared29IdentityProofingConfiguration_accountKeyIdentifier);

  return v1;
}

uint64_t IdentityProofingConfiguration.extendedReviewURLString.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC13CoreIDVShared29IdentityProofingConfiguration_extendedReviewURLString);

  return v1;
}

uint64_t IdentityProofingConfiguration.learnMoreURLString.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC13CoreIDVShared29IdentityProofingConfiguration_learnMoreURLString);

  return v1;
}

uint64_t IdentityProofingConfiguration.supplementalProvisioningData.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC13CoreIDVShared29IdentityProofingConfiguration_supplementalProvisioningData);
  sub_2259CB6FC(v1, *(v0 + OBJC_IVAR____TtC13CoreIDVShared29IdentityProofingConfiguration_supplementalProvisioningData + 8));
  return v1;
}

void *IdentityProofingConfiguration.proofingErrorMessage.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC13CoreIDVShared29IdentityProofingConfiguration_proofingErrorMessage);
  v2 = v1;
  return v1;
}

uint64_t IdentityProofingConfiguration.piiTokenIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC13CoreIDVShared29IdentityProofingConfiguration_piiTokenIdentifier);

  return v1;
}

id IdentityProofingConfiguration.__allocating_init(state:country:targetDevice:actionStatus:credentialIdentifier:productIdentifier:axSettings:accountKeyIdentifier:extendedReviewURLString:learnMoreURLString:supplementalProvisioningData:documentType:isPairedWatchUnsupported:proofingErrorMessage:piiTokenIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  v33 = objc_allocWithZone(v26);
  v34 = &v33[OBJC_IVAR____TtC13CoreIDVShared29IdentityProofingConfiguration_state];
  *v34 = a1;
  v34[1] = a2;
  v35 = &v33[OBJC_IVAR____TtC13CoreIDVShared29IdentityProofingConfiguration_country];
  *v35 = a3;
  v35[1] = a4;
  v36 = &v33[OBJC_IVAR____TtC13CoreIDVShared29IdentityProofingConfiguration_targetDevice];
  *v36 = a5;
  v36[8] = a6 & 1;
  v37 = &v33[OBJC_IVAR____TtC13CoreIDVShared29IdentityProofingConfiguration_actionStatus];
  *v37 = a7;
  v37[8] = a8 & 1;
  v38 = &v33[OBJC_IVAR____TtC13CoreIDVShared29IdentityProofingConfiguration_credentialIdentifier];
  *v38 = a9;
  v38[1] = a10;
  v39 = &v33[OBJC_IVAR____TtC13CoreIDVShared29IdentityProofingConfiguration_productIdentifier];
  *v39 = a11;
  v39[1] = a12;
  *&v33[OBJC_IVAR____TtC13CoreIDVShared29IdentityProofingConfiguration_axSettings] = a13;
  v40 = &v33[OBJC_IVAR____TtC13CoreIDVShared29IdentityProofingConfiguration_accountKeyIdentifier];
  *v40 = a14;
  v40[1] = a15;
  v41 = &v33[OBJC_IVAR____TtC13CoreIDVShared29IdentityProofingConfiguration_extendedReviewURLString];
  *v41 = a16;
  v41[1] = a17;
  v42 = &v33[OBJC_IVAR____TtC13CoreIDVShared29IdentityProofingConfiguration_learnMoreURLString];
  *v42 = a18;
  v42[1] = a19;
  v43 = &v33[OBJC_IVAR____TtC13CoreIDVShared29IdentityProofingConfiguration_supplementalProvisioningData];
  *v43 = a20;
  v43[1] = a21;
  *&v33[OBJC_IVAR____TtC13CoreIDVShared29IdentityProofingConfiguration_documentType] = a22;
  v33[OBJC_IVAR____TtC13CoreIDVShared29IdentityProofingConfiguration_isPairedWatchUnsupported] = a23;
  *&v33[OBJC_IVAR____TtC13CoreIDVShared29IdentityProofingConfiguration_proofingErrorMessage] = a24;
  v44 = &v33[OBJC_IVAR____TtC13CoreIDVShared29IdentityProofingConfiguration_piiTokenIdentifier];
  *v44 = a25;
  v44[1] = a26;
  v49.receiver = v33;
  v49.super_class = v48;
  return objc_msgSendSuper2(&v49, sel_init);
}

id IdentityProofingConfiguration.init(state:country:targetDevice:actionStatus:credentialIdentifier:productIdentifier:axSettings:accountKeyIdentifier:extendedReviewURLString:learnMoreURLString:supplementalProvisioningData:documentType:isPairedWatchUnsupported:proofingErrorMessage:piiTokenIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  ObjectType = swift_getObjectType();
  v33 = &v26[OBJC_IVAR____TtC13CoreIDVShared29IdentityProofingConfiguration_state];
  *v33 = a1;
  v33[1] = a2;
  v34 = &v26[OBJC_IVAR____TtC13CoreIDVShared29IdentityProofingConfiguration_country];
  *v34 = a3;
  v34[1] = a4;
  v35 = &v26[OBJC_IVAR____TtC13CoreIDVShared29IdentityProofingConfiguration_targetDevice];
  *v35 = a5;
  v35[8] = a6 & 1;
  v36 = &v26[OBJC_IVAR____TtC13CoreIDVShared29IdentityProofingConfiguration_actionStatus];
  *v36 = a7;
  v36[8] = a8 & 1;
  v37 = &v26[OBJC_IVAR____TtC13CoreIDVShared29IdentityProofingConfiguration_credentialIdentifier];
  *v37 = a9;
  v37[1] = a10;
  v38 = &v26[OBJC_IVAR____TtC13CoreIDVShared29IdentityProofingConfiguration_productIdentifier];
  *v38 = a11;
  v38[1] = a12;
  *&v26[OBJC_IVAR____TtC13CoreIDVShared29IdentityProofingConfiguration_axSettings] = a13;
  v39 = &v26[OBJC_IVAR____TtC13CoreIDVShared29IdentityProofingConfiguration_accountKeyIdentifier];
  *v39 = a14;
  v39[1] = a15;
  v40 = &v26[OBJC_IVAR____TtC13CoreIDVShared29IdentityProofingConfiguration_extendedReviewURLString];
  *v40 = a16;
  v40[1] = a17;
  v41 = &v26[OBJC_IVAR____TtC13CoreIDVShared29IdentityProofingConfiguration_learnMoreURLString];
  *v41 = a18;
  v41[1] = a19;
  v42 = &v26[OBJC_IVAR____TtC13CoreIDVShared29IdentityProofingConfiguration_supplementalProvisioningData];
  *v42 = a20;
  v42[1] = a21;
  *&v26[OBJC_IVAR____TtC13CoreIDVShared29IdentityProofingConfiguration_documentType] = a22;
  v26[OBJC_IVAR____TtC13CoreIDVShared29IdentityProofingConfiguration_isPairedWatchUnsupported] = a23;
  *&v26[OBJC_IVAR____TtC13CoreIDVShared29IdentityProofingConfiguration_proofingErrorMessage] = a24;
  v43 = &v26[OBJC_IVAR____TtC13CoreIDVShared29IdentityProofingConfiguration_piiTokenIdentifier];
  *v43 = a25;
  v43[1] = a26;
  v48.receiver = v26;
  v48.super_class = ObjectType;
  return objc_msgSendSuper2(&v48, sel_init);
}

Swift::Void __swiftcall IdentityProofingConfiguration.encode(with:)(NSCoder with)
{
  if (*(v1 + OBJC_IVAR____TtC13CoreIDVShared29IdentityProofingConfiguration_state + 8))
  {
    v3 = sub_225CCE444();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR____TtC13CoreIDVShared29IdentityProofingConfiguration_country + 8))
  {
    v5 = sub_225CCE444();
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR____TtC13CoreIDVShared29IdentityProofingConfiguration_targetDevice + 8))
  {
    v7 = 0;
  }

  else
  {
    v7 = sub_225CCF924();
  }

  v8 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v7 forKey:v8];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR____TtC13CoreIDVShared29IdentityProofingConfiguration_actionStatus + 8))
  {
    v9 = 0;
  }

  else
  {
    v9 = sub_225CCF924();
  }

  v10 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v9 forKey:v10];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR____TtC13CoreIDVShared29IdentityProofingConfiguration_credentialIdentifier + 8))
  {
    v11 = sub_225CCE444();
  }

  else
  {
    v11 = 0;
  }

  v12 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v11 forKey:v12];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR____TtC13CoreIDVShared29IdentityProofingConfiguration_productIdentifier + 8))
  {
    v13 = sub_225CCE444();
  }

  else
  {
    v13 = 0;
  }

  v14 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v13 forKey:v14];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR____TtC13CoreIDVShared29IdentityProofingConfiguration_axSettings))
  {
    v15 = sub_225CCE7F4();
  }

  else
  {
    v15 = 0;
  }

  v16 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v15 forKey:v16];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR____TtC13CoreIDVShared29IdentityProofingConfiguration_accountKeyIdentifier + 8))
  {
    v17 = sub_225CCE444();
  }

  else
  {
    v17 = 0;
  }

  v18 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v17 forKey:v18];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR____TtC13CoreIDVShared29IdentityProofingConfiguration_extendedReviewURLString + 8))
  {
    v19 = sub_225CCE444();
  }

  else
  {
    v19 = 0;
  }

  v20 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v19 forKey:v20];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR____TtC13CoreIDVShared29IdentityProofingConfiguration_learnMoreURLString + 8))
  {
    v21 = sub_225CCE444();
  }

  else
  {
    v21 = 0;
  }

  v22 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v21 forKey:v22];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR____TtC13CoreIDVShared29IdentityProofingConfiguration_supplementalProvisioningData + 8) >> 60 == 15)
  {
    v23 = 0;
  }

  else
  {
    v23 = sub_225CCCF74();
  }

  v24 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v23 forKey:v24];
  swift_unknownObjectRelease();

  v25 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared29IdentityProofingConfiguration_documentType);
  v26 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeInt64:v25 forKey:v26];

  v27 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared29IdentityProofingConfiguration_isPairedWatchUnsupported);
  v28 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeBool:v27 forKey:v28];

  v29 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared29IdentityProofingConfiguration_proofingErrorMessage);
  v30 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v29 forKey:v30];

  if (*(v1 + OBJC_IVAR____TtC13CoreIDVShared29IdentityProofingConfiguration_piiTokenIdentifier + 8))
  {
    v31 = sub_225CCE444();
  }

  else
  {
    v31 = 0;
  }

  v32 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v31 forKey:v32];
  swift_unknownObjectRelease();
}

id IdentityProofingConfiguration.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_225B648B0(a1);

  return v4;
}

id IdentityProofingConfiguration.init(coder:)(void *a1)
{
  v2 = sub_225B648B0(a1);

  return v2;
}

id sub_225B63BEC(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_225CCE444();

  return v5;
}

uint64_t IdentityProofingConfiguration.description.getter()
{
  sub_225CCF204();
  MEMORY[0x22AA6CE70](0x203A6574617473, 0xE700000000000000);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E130, &qword_225CEFF10);
  v1 = sub_225CCE504();
  MEMORY[0x22AA6CE70](v1);

  MEMORY[0x22AA6CE70](0x746E756F63202D20, 0xEC000000203A7972);

  v2 = sub_225CCE504();
  MEMORY[0x22AA6CE70](v2);

  MEMORY[0x22AA6CE70](0xD000000000000010, 0x8000000225D1FE30);
  if ((*(v0 + OBJC_IVAR____TtC13CoreIDVShared29IdentityProofingConfiguration_targetDevice + 8) & 1) != 0 || (v3 = *(v0 + OBJC_IVAR____TtC13CoreIDVShared29IdentityProofingConfiguration_targetDevice), v3 == 1) || v3 == 2)
  {
    v4 = sub_225CCE504();
    MEMORY[0x22AA6CE70](v4);

    MEMORY[0x22AA6CE70](0xD000000000000011, 0x8000000225D1FE50);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E138, &qword_225CEFF18);
    v5 = sub_225CCE504();
    MEMORY[0x22AA6CE70](v5);

    MEMORY[0x22AA6CE70](0xD000000000000010, 0x8000000225D1FE70);
    v6 = *(v0 + OBJC_IVAR____TtC13CoreIDVShared29IdentityProofingConfiguration_documentType);
    if (v6 == 3)
    {
      v7 = 0xE800000000000000;
      v8 = 0x74726F7073736170;
    }

    else if (v6 == 1)
    {
      v7 = 0xE200000000000000;
      v8 = 25705;
    }

    else if (v6)
    {
      v7 = 0xE700000000000000;
      v8 = 0x636972656E6567;
    }

    else
    {
      v7 = 0xE200000000000000;
      v8 = 27748;
    }

    MEMORY[0x22AA6CE70](v8, v7);

    MEMORY[0x22AA6CE70](8233, 0xE200000000000000);
    return 0;
  }

  else
  {
    result = sub_225CCFA84();
    __break(1u);
  }

  return result;
}

id IdentityProofingConfiguration.withProofingErrorMessage(_:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v37 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared29IdentityProofingConfiguration_state + 8);
  v38 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared29IdentityProofingConfiguration_state);
  v2 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared29IdentityProofingConfiguration_country + 8);
  v35 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared29IdentityProofingConfiguration_targetDevice);
  v36 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared29IdentityProofingConfiguration_country);
  v34 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared29IdentityProofingConfiguration_targetDevice + 8);
  v33 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared29IdentityProofingConfiguration_axSettings);
  v32 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared29IdentityProofingConfiguration_documentType);
  v31 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared29IdentityProofingConfiguration_isPairedWatchUnsupported);
  v3 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared29IdentityProofingConfiguration_actionStatus);
  v4 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared29IdentityProofingConfiguration_actionStatus + 8);
  v5 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared29IdentityProofingConfiguration_credentialIdentifier + 8);
  v24 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared29IdentityProofingConfiguration_credentialIdentifier);
  v6 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared29IdentityProofingConfiguration_productIdentifier + 8);
  v25 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared29IdentityProofingConfiguration_productIdentifier);
  v7 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared29IdentityProofingConfiguration_accountKeyIdentifier + 8);
  v26 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared29IdentityProofingConfiguration_accountKeyIdentifier);
  v8 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared29IdentityProofingConfiguration_extendedReviewURLString + 8);
  v27 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared29IdentityProofingConfiguration_extendedReviewURLString);
  v29 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared29IdentityProofingConfiguration_learnMoreURLString);
  v28 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared29IdentityProofingConfiguration_learnMoreURLString + 8);
  v9 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared29IdentityProofingConfiguration_supplementalProvisioningData);
  v30 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared29IdentityProofingConfiguration_supplementalProvisioningData + 8);
  v10 = objc_allocWithZone(ObjectType);
  v11 = &v10[OBJC_IVAR____TtC13CoreIDVShared29IdentityProofingConfiguration_state];
  *v11 = v38;
  v11[1] = v37;
  v12 = &v10[OBJC_IVAR____TtC13CoreIDVShared29IdentityProofingConfiguration_country];
  *v12 = v36;
  v12[1] = v2;
  v13 = &v10[OBJC_IVAR____TtC13CoreIDVShared29IdentityProofingConfiguration_targetDevice];
  *v13 = v35;
  v13[8] = v34;
  v14 = &v10[OBJC_IVAR____TtC13CoreIDVShared29IdentityProofingConfiguration_actionStatus];
  *v14 = v3;
  v14[8] = v4;
  v15 = &v10[OBJC_IVAR____TtC13CoreIDVShared29IdentityProofingConfiguration_credentialIdentifier];
  *v15 = v24;
  v15[1] = v5;
  v16 = &v10[OBJC_IVAR____TtC13CoreIDVShared29IdentityProofingConfiguration_productIdentifier];
  *v16 = v25;
  v16[1] = v6;
  *&v10[OBJC_IVAR____TtC13CoreIDVShared29IdentityProofingConfiguration_axSettings] = v33;
  v17 = &v10[OBJC_IVAR____TtC13CoreIDVShared29IdentityProofingConfiguration_accountKeyIdentifier];
  *v17 = v26;
  v17[1] = v7;
  v18 = &v10[OBJC_IVAR____TtC13CoreIDVShared29IdentityProofingConfiguration_extendedReviewURLString];
  *v18 = v27;
  v18[1] = v8;
  v19 = &v10[OBJC_IVAR____TtC13CoreIDVShared29IdentityProofingConfiguration_learnMoreURLString];
  *v19 = v29;
  v19[1] = v28;
  v20 = &v10[OBJC_IVAR____TtC13CoreIDVShared29IdentityProofingConfiguration_supplementalProvisioningData];
  *v20 = v9;
  v20[1] = v30;
  *&v10[OBJC_IVAR____TtC13CoreIDVShared29IdentityProofingConfiguration_documentType] = v32;
  v10[OBJC_IVAR____TtC13CoreIDVShared29IdentityProofingConfiguration_isPairedWatchUnsupported] = v31;
  *&v10[OBJC_IVAR____TtC13CoreIDVShared29IdentityProofingConfiguration_proofingErrorMessage] = a1;
  v21 = &v10[OBJC_IVAR____TtC13CoreIDVShared29IdentityProofingConfiguration_piiTokenIdentifier];
  *v21 = 0;
  v21[1] = 0;

  sub_2259CB6FC(v9, v30);
  v41.receiver = v10;
  v41.super_class = ObjectType;
  v22 = a1;
  return objc_msgSendSuper2(&v41, sel_init);
}

id IdentityProofingStatus.__allocating_init(activeConfigurations:availability:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC13CoreIDVShared22IdentityProofingStatus_activeConfigurations] = a1;
  *&v5[OBJC_IVAR____TtC13CoreIDVShared22IdentityProofingStatus_availability] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id IdentityProofingStatus.init(activeConfigurations:availability:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC13CoreIDVShared22IdentityProofingStatus_activeConfigurations] = a1;
  *&v2[OBJC_IVAR____TtC13CoreIDVShared22IdentityProofingStatus_availability] = a2;
  v7.receiver = v2;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

id IdentityProofingStatus.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_225B64EC8(a1);

  return v4;
}

id IdentityProofingStatus.init(coder:)(void *a1)
{
  v2 = sub_225B64EC8(a1);

  return v2;
}

Swift::Void __swiftcall IdentityProofingStatus.encode(with:)(NSCoder with)
{
  type metadata accessor for IdentityProofingConfiguration();
  v3 = sub_225CCE7F4();
  v4 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];

  v5 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared22IdentityProofingStatus_availability);
  v6 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeInt64:v5 forKey:v6];
}

id IdentityProofingStatus.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

unint64_t sub_225B645D0(unint64_t result)
{
  if (result > 0xC)
  {
    return 0;
  }

  return result;
}

uint64_t sub_225B645E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73E090, &qword_225CD8ED0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for IdentityProofingPrecursorPassMessageAction(uint64_t a1)
{
  result = qword_27D73E178;
  if (!qword_27D73E178)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_225B6469C()
{
  ObjectType = swift_getObjectType();
  sub_2259D8718(0, &qword_281059A60, 0x277CCACA8);
  v2 = sub_225CCEF14();
  if (v2)
  {
    v3 = v2;
    v4 = sub_225CCE474();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = &v0[OBJC_IVAR____TtC13CoreIDVShared36IdentityProofingPrecursorPassMessage_title];
  *v7 = v4;
  v7[1] = v6;
  v8 = sub_225CCEF14();
  if (v8)
  {
    v9 = v8;
    v10 = sub_225CCE474();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v13 = &v0[OBJC_IVAR____TtC13CoreIDVShared36IdentityProofingPrecursorPassMessage_message];
  *v13 = v10;
  v13[1] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73DC80, &unk_225CEF7D0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_225CD4890;
  *(v14 + 32) = sub_2259D8718(0, &qword_281059AA0, 0x277CBEA60);
  *(v14 + 40) = type metadata accessor for IdentityProofingPrecursorPassMessageAction(0);
  sub_225CCEF24();

  if (v21)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73E1A0, &unk_225CF0390);
    v15 = swift_dynamicCast();
    v16 = v18;
    if (!v15)
    {
      v16 = 0;
    }
  }

  else
  {
    sub_2259CB640(v20, &qword_27D73DD90, &unk_225CD4950);
    v16 = 0;
  }

  *&v0[OBJC_IVAR____TtC13CoreIDVShared36IdentityProofingPrecursorPassMessage_actions] = v16;
  v19.receiver = v0;
  v19.super_class = ObjectType;
  return objc_msgSendSuper2(&v19, sel_init);
}

id sub_225B648B0(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_2259D8718(0, &qword_281059A60, 0x277CCACA8);
  v6 = sub_225CCEF14();
  if (v6)
  {
    v7 = v6;
    v8 = sub_225CCE474();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v11 = &v2[OBJC_IVAR____TtC13CoreIDVShared29IdentityProofingConfiguration_state];
  *v11 = v8;
  v11[1] = v10;
  v12 = sub_225CCEF14();
  if (v12)
  {
    v13 = v12;
    v14 = sub_225CCE474();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  v17 = &v2[OBJC_IVAR____TtC13CoreIDVShared29IdentityProofingConfiguration_country];
  *v17 = v14;
  v17[1] = v16;
  v18 = sub_225CCE444();
  v19 = [a1 decodeInt64ForKey_];

  if ((v19 - 3) >= 0xFFFFFFFFFFFFFFFELL)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  v21 = &v2[OBJC_IVAR____TtC13CoreIDVShared29IdentityProofingConfiguration_targetDevice];
  *v21 = v20;
  v21[8] = (v19 - 3) < 0xFFFFFFFFFFFFFFFELL;
  v22 = sub_225CCE444();
  v23 = [a1 decodeInt64ForKey_];

  v24 = sub_225B645D0(v23);
  v25 = &v2[OBJC_IVAR____TtC13CoreIDVShared29IdentityProofingConfiguration_actionStatus];
  *v25 = v24;
  v25[8] = v26 & 1;
  v27 = sub_225CCEF14();
  if (v27)
  {
    v28 = v27;
    v29 = sub_225CCE474();
    v31 = v30;
  }

  else
  {
    v29 = 0;
    v31 = 0;
  }

  v32 = &v2[OBJC_IVAR____TtC13CoreIDVShared29IdentityProofingConfiguration_credentialIdentifier];
  *v32 = v29;
  v32[1] = v31;
  v33 = sub_225CCEF14();
  if (v33)
  {
    v34 = v33;
    v35 = sub_225CCE474();
    v37 = v36;
  }

  else
  {
    v35 = 0;
    v37 = 0;
  }

  v38 = &v2[OBJC_IVAR____TtC13CoreIDVShared29IdentityProofingConfiguration_productIdentifier];
  *v38 = v35;
  v38[1] = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73DC80, &unk_225CEF7D0);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_225CD4890;
  *(v39 + 32) = sub_2259D8718(0, &qword_281059AA0, 0x277CBEA60);
  *(v39 + 40) = v5;
  sub_225CCEF24();

  if (v83)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0, &unk_225CD76A0);
    v40 = swift_dynamicCast();
    v41 = v80;
    if (!v40)
    {
      v41 = 0;
    }
  }

  else
  {
    sub_2259CB640(v82, &qword_27D73DD90, &unk_225CD4950);
    v41 = 0;
  }

  *&v2[OBJC_IVAR____TtC13CoreIDVShared29IdentityProofingConfiguration_axSettings] = v41;
  v42 = sub_225CCEF14();
  if (v42)
  {
    v43 = v42;
    v44 = sub_225CCE474();
    v46 = v45;
  }

  else
  {
    v44 = 0;
    v46 = 0;
  }

  v47 = &v2[OBJC_IVAR____TtC13CoreIDVShared29IdentityProofingConfiguration_accountKeyIdentifier];
  *v47 = v44;
  v47[1] = v46;
  v48 = sub_225CCEF14();
  if (v48)
  {
    v49 = v48;
    v50 = sub_225CCE474();
    v52 = v51;
  }

  else
  {
    v50 = 0;
    v52 = 0;
  }

  v53 = &v2[OBJC_IVAR____TtC13CoreIDVShared29IdentityProofingConfiguration_extendedReviewURLString];
  *v53 = v50;
  v53[1] = v52;
  v54 = sub_225CCEF14();
  if (v54)
  {
    v55 = v54;
    v56 = sub_225CCE474();
    v58 = v57;
  }

  else
  {
    v56 = 0;
    v58 = 0;
  }

  v59 = &v2[OBJC_IVAR____TtC13CoreIDVShared29IdentityProofingConfiguration_learnMoreURLString];
  *v59 = v56;
  v59[1] = v58;
  sub_2259D8718(0, &qword_27D73DD80, 0x277CBEA90);
  v60 = sub_225CCEF14();
  if (v60)
  {
    v61 = v60;
    v62 = sub_225CCCFA4();
    v64 = v63;
  }

  else
  {
    v62 = 0;
    v64 = 0xF000000000000000;
  }

  v65 = &v2[OBJC_IVAR____TtC13CoreIDVShared29IdentityProofingConfiguration_supplementalProvisioningData];
  *v65 = v62;
  v65[1] = v64;
  v66 = sub_225CCE444();
  v67 = [a1 decodeInt64ForKey_];

  v68 = sub_225B57C6C(v67);
  v70 = 2;
  if ((v69 & 1) == 0)
  {
    v70 = v68;
  }

  *&v2[OBJC_IVAR____TtC13CoreIDVShared29IdentityProofingConfiguration_documentType] = v70;
  v71 = sub_225CCE444();
  v72 = [a1 decodeBoolForKey_];

  v2[OBJC_IVAR____TtC13CoreIDVShared29IdentityProofingConfiguration_isPairedWatchUnsupported] = v72;
  type metadata accessor for IdentityProofingPrecursorPassMessage();
  *&v2[OBJC_IVAR____TtC13CoreIDVShared29IdentityProofingConfiguration_proofingErrorMessage] = sub_225CCEF14();
  v73 = sub_225CCEF14();
  if (v73)
  {
    v74 = v73;
    v75 = sub_225CCE474();
    v77 = v76;
  }

  else
  {
    v75 = 0;
    v77 = 0;
  }

  v78 = &v2[OBJC_IVAR____TtC13CoreIDVShared29IdentityProofingConfiguration_piiTokenIdentifier];
  *v78 = v75;
  v78[1] = v77;
  v81.receiver = v2;
  v81.super_class = ObjectType;
  return objc_msgSendSuper2(&v81, sel_init);
}

id sub_225B64EC8(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73DC80, &unk_225CEF7D0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_225CD4890;
  *(v5 + 32) = sub_2259D8718(0, &qword_281059AA0, 0x277CBEA60);
  *(v5 + 40) = type metadata accessor for IdentityProofingConfiguration();
  sub_225CCEF24();

  if (v14)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73E190, &qword_225CF0388);
    if (swift_dynamicCast())
    {
      v6 = v11;
      goto LABEL_6;
    }
  }

  else
  {
    sub_2259CB640(v13, &qword_27D73DD90, &unk_225CD4950);
  }

  v6 = MEMORY[0x277D84F90];
LABEL_6:
  *&v2[OBJC_IVAR____TtC13CoreIDVShared22IdentityProofingStatus_activeConfigurations] = v6;
  v7 = sub_225CCE444();
  v8 = [a1 decodeInt64ForKey_];

  v9 = 2;
  if (v8 < 2)
  {
    v9 = v8;
  }

  *&v2[OBJC_IVAR____TtC13CoreIDVShared22IdentityProofingStatus_availability] = v9;
  v12.receiver = v2;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, sel_init);
}

unint64_t sub_225B65090()
{
  result = qword_27D73E150;
  if (!qword_27D73E150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73E150);
  }

  return result;
}

unint64_t sub_225B650E8()
{
  result = qword_27D73E158;
  if (!qword_27D73E158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73E158);
  }

  return result;
}

unint64_t sub_225B65140()
{
  result = qword_27D73E160;
  if (!qword_27D73E160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73E160);
  }

  return result;
}

unint64_t sub_225B65198()
{
  result = qword_27D73E168;
  if (!qword_27D73E168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73E168);
  }

  return result;
}

void sub_225B65234(uint64_t a1)
{
  sub_225A372C0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t IdentityProofingConsentType.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

uint64_t IdentityProofingConsentType.debugDescription.getter(uint64_t a1)
{
  if (!a1)
  {
    return 0x7374617473646566;
  }

  if (a1 == 1)
  {
    return 0x7373656E6576696CLL;
  }

  result = sub_225CCFA84();
  __break(1u);
  return result;
}

unint64_t sub_225B65538()
{
  result = qword_27D73E1B0;
  if (!qword_27D73E1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73E1B0);
  }

  return result;
}

uint64_t sub_225B6558C(uint64_t a1)
{
  if (!*v1)
  {
    return 0x7374617473646566;
  }

  if (*v1 == 1)
  {
    return 0x7373656E6576696CLL;
  }

  result = sub_225CCFA84();
  __break(1u);
  return result;
}

unint64_t IdentityProofingDataSharingUserConsent.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

uint64_t IdentityProofingDataSharingUserConsent.debugDescription.getter(uint64_t a1)
{
  if (!a1)
  {
    return 0x6572616873;
  }

  if (a1 == 1)
  {
    return 0x68732074276E6F64;
  }

  result = sub_225CCFA84();
  __break(1u);
  return result;
}

unint64_t sub_225B65698()
{
  result = qword_27D73E1B8;
  if (!qword_27D73E1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73E1B8);
  }

  return result;
}

uint64_t sub_225B656EC(uint64_t a1)
{
  if (!*v1)
  {
    return 0x6572616873;
  }

  if (*v1 == 1)
  {
    return 0x68732074276E6F64;
  }

  result = sub_225CCFA84();
  __break(1u);
  return result;
}

uint64_t sub_225B65784(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000014;
  }

  else
  {
    v3 = 0xD000000000000013;
  }

  if (v2)
  {
    v4 = "aamvaHeader";
  }

  else
  {
    v4 = "manualReviewEnabled";
  }

  if (*a2)
  {
    v5 = 0xD000000000000014;
  }

  else
  {
    v5 = 0xD000000000000013;
  }

  if (*a2)
  {
    v6 = "manualReviewEnabled";
  }

  else
  {
    v6 = "aamvaHeader";
  }

  if (v3 == v5 && (v4 | 0x8000000000000000) == (v6 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_225CCF934();
  }

  return v8 & 1;
}

uint64_t sub_225B6582C()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225B658A8(uint64_t a1)
{
  sub_225CCE5B4();
}

uint64_t sub_225B65910()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225B65988@<X0>(char *a2@<X8>)
{
  v3 = sub_225CCF5D4();

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

void sub_225B659E8(unint64_t *a1@<X8>)
{
  v2 = "manualReviewEnabled";
  v3 = 0xD000000000000013;
  if (*v1)
  {
    v3 = 0xD000000000000014;
  }

  else
  {
    v2 = "aamvaHeader";
  }

  *a1 = v3;
  a1[1] = v2 | 0x8000000000000000;
}

unint64_t sub_225B65A24()
{
  if (*v0)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_225B65A5C@<X0>(char *a3@<X8>)
{
  v4 = sub_225CCF5D4();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_225B65AC0(uint64_t a1)
{
  v2 = sub_225B68BB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B65AFC(uint64_t a1)
{
  v2 = sub_225B68BB4();

  return MEMORY[0x2821FE720](a1, v2);
}

id IdentityProofingConsentFlow.__allocating_init(manualReviewEnabled:manualReviewDisabled:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC13CoreIDVShared27IdentityProofingConsentFlow_manualReviewEnabled] = a1;
  *&v5[OBJC_IVAR____TtC13CoreIDVShared27IdentityProofingConsentFlow_manualReviewDisabled] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id IdentityProofingConsentFlow.init(manualReviewEnabled:manualReviewDisabled:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC13CoreIDVShared27IdentityProofingConsentFlow_manualReviewEnabled] = a1;
  *&v2[OBJC_IVAR____TtC13CoreIDVShared27IdentityProofingConsentFlow_manualReviewDisabled] = a2;
  v7.receiver = v2;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

Swift::Void __swiftcall IdentityProofingConsentFlow.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared27IdentityProofingConsentFlow_manualReviewEnabled);
  if (v3)
  {
    type metadata accessor for IdentityProofingConsentFlowItem();
    v3 = sub_225CCE2B4();
  }

  v4 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];
  swift_unknownObjectRelease();

  v5 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared27IdentityProofingConsentFlow_manualReviewDisabled);
  if (v5)
  {
    type metadata accessor for IdentityProofingConsentFlowItem();
    v5 = sub_225CCE2B4();
  }

  v6 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];
  swift_unknownObjectRelease();
}

id IdentityProofingConsentFlow.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_225B68988();

  return v4;
}

id IdentityProofingConsentFlow.init(coder:)(void *a1)
{
  v2 = sub_225B68988();

  return v2;
}

void *sub_225B65EE8(void *a1, uint64_t a2)
{
  v3 = *(v2 + *a1);
  if (!v3)
  {
    return 0;
  }

  if (!*(v3 + 16))
  {
    return 0;
  }

  v4 = sub_2259F18D4(a2, 0xE800000000000000);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(v3 + 56) + 8 * v4);
  v7 = v6;
  return v6;
}

uint64_t IdentityProofingConsentFlow.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E1D0, "D");
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225B68BB4();
  sub_225CCFCE4();
  v11 = *(v3 + OBJC_IVAR____TtC13CoreIDVShared27IdentityProofingConsentFlow_manualReviewEnabled);
  HIBYTE(v10) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E1E0, &qword_225CF0598);
  sub_225B68C08();
  sub_225CCF774();
  if (!v2)
  {
    v11 = *(v3 + OBJC_IVAR____TtC13CoreIDVShared27IdentityProofingConsentFlow_manualReviewDisabled);
    HIBYTE(v10) = 1;
    sub_225CCF774();
  }

  return (*(v6 + 8))(v8, v5);
}

void *IdentityProofingConsentFlow.init(from:)(void *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E1F8, &qword_225CF05A0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225B68BB4();
  sub_225CCFCA4();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E1E0, &qword_225CF0598);
    v13 = 0;
    sub_225B68CB0();
    sub_225CCF674();
    v10[1] = OBJC_IVAR____TtC13CoreIDVShared27IdentityProofingConsentFlow_manualReviewEnabled;
    *(v1 + OBJC_IVAR____TtC13CoreIDVShared27IdentityProofingConsentFlow_manualReviewEnabled) = v14;
    v13 = 1;
    sub_225CCF674();
    *(v1 + OBJC_IVAR____TtC13CoreIDVShared27IdentityProofingConsentFlow_manualReviewDisabled) = v14;
    v12.receiver = v1;
    v12.super_class = ObjectType;
    v3 = objc_msgSendSuper2(&v12, sel_init);
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v3;
}

uint64_t sub_225B664E0()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225B665AC(uint64_t a1)
{
  sub_225CCE5B4();
}

uint64_t sub_225B66664()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

unint64_t sub_225B6672C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_225B68D98(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_225B6675C(unint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x65766973736170;
  v4 = 0xE600000000000000;
  v5 = 0x79636167656CLL;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000016;
    v4 = 0x8000000225D0C5C0;
  }

  if (*v1)
  {
    v3 = 0x7453656E696C6E69;
    v2 = 0xEC00000070557065;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_225B667E4()
{
  v1 = 0x65766973736170;
  v2 = 0x79636167656CLL;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000016;
  }

  if (*v0)
  {
    v1 = 0x7453656E696C6E69;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_225B66868@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_225B68D98(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_225B66890(uint64_t a1)
{
  v2 = sub_225B68F48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B668CC(uint64_t a1)
{
  v2 = sub_225B68F48();

  return MEMORY[0x2821FE720](a1, v2);
}

Swift::Void __swiftcall IdentityProofingConsentFlowItem.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared31IdentityProofingConsentFlowItem_passive);
  v4 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeBool:v3 forKey:v4];

  v5 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared31IdentityProofingConsentFlowItem_inlineStepUp);
  v6 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeBool:v5 forKey:v6];

  v7 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared31IdentityProofingConsentFlowItem_legacy);
  v8 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeBool:v7 forKey:v8];

  v9 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared31IdentityProofingConsentFlowItem_pushNotificationStepUp);
  v10 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeBool:v9 forKey:v10];
}

id IdentityProofingConsentFlowItem.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_225B68DE4(a1);

  return v4;
}

id IdentityProofingConsentFlowItem.init(coder:)(void *a1)
{
  v2 = sub_225B68DE4(a1);

  return v2;
}

id IdentityProofingConsentFlowItem.__allocating_init(passive:inlineStepUp:legacy:pushNotificationStepUp:)(char a1, char a2, char a3, char a4)
{
  v9 = objc_allocWithZone(v4);
  v9[OBJC_IVAR____TtC13CoreIDVShared31IdentityProofingConsentFlowItem_passive] = a1;
  v9[OBJC_IVAR____TtC13CoreIDVShared31IdentityProofingConsentFlowItem_inlineStepUp] = a2;
  v9[OBJC_IVAR____TtC13CoreIDVShared31IdentityProofingConsentFlowItem_legacy] = a3;
  v9[OBJC_IVAR____TtC13CoreIDVShared31IdentityProofingConsentFlowItem_pushNotificationStepUp] = a4;
  v11.receiver = v9;
  v11.super_class = v4;
  return objc_msgSendSuper2(&v11, sel_init);
}

id IdentityProofingConsentFlowItem.init(passive:inlineStepUp:legacy:pushNotificationStepUp:)(char a1, char a2, char a3, char a4)
{
  ObjectType = swift_getObjectType();
  v4[OBJC_IVAR____TtC13CoreIDVShared31IdentityProofingConsentFlowItem_passive] = a1;
  v4[OBJC_IVAR____TtC13CoreIDVShared31IdentityProofingConsentFlowItem_inlineStepUp] = a2;
  v4[OBJC_IVAR____TtC13CoreIDVShared31IdentityProofingConsentFlowItem_legacy] = a3;
  v4[OBJC_IVAR____TtC13CoreIDVShared31IdentityProofingConsentFlowItem_pushNotificationStepUp] = a4;
  v11.receiver = v4;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, sel_init);
}

uint64_t IdentityProofingConsentFlowItem.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E230, &qword_225CF05A8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225B68F48();
  sub_225CCFCE4();
  v8[15] = 0;
  sub_225CCF794();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_225CCF794();
  v8[13] = 2;
  sub_225CCF794();
  v8[12] = 3;
  sub_225CCF794();
  return (*(v4 + 8))(v6, v3);
}

void *IdentityProofingConsentFlowItem.init(from:)(void *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E240, &qword_225CF05B0);
  v6 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v8 = &v12 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225B68F48();
  sub_225CCFCA4();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v15 = 0;
    v10 = v13;
    v3[OBJC_IVAR____TtC13CoreIDVShared31IdentityProofingConsentFlowItem_passive] = sub_225CCF694() & 1;
    v15 = 1;
    v3[OBJC_IVAR____TtC13CoreIDVShared31IdentityProofingConsentFlowItem_inlineStepUp] = sub_225CCF694() & 1;
    v15 = 2;
    v3[OBJC_IVAR____TtC13CoreIDVShared31IdentityProofingConsentFlowItem_legacy] = sub_225CCF694() & 1;
    v15 = 3;
    v3[OBJC_IVAR____TtC13CoreIDVShared31IdentityProofingConsentFlowItem_pushNotificationStepUp] = sub_225CCF694() & 1;
    v14.receiver = v3;
    v14.super_class = ObjectType;
    v9 = objc_msgSendSuper2(&v14, sel_init);
    (*(v6 + 8))(v8, v10);
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v9;
}

uint64_t sub_225B671E8@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X3>, uint64_t *a3@<X8>)
{
  v8 = objc_allocWithZone(v3);
  result = a2(a1);
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

id IdentityProofingNFCConfig.__allocating_init(minimumReadTimeThreshold:readRetryInterval:readyCheckEnabled:isChipIntegrityCheckFailureTerminal:isDeviceCrossCheckEnabled:)(uint64_t a1, char a2, uint64_t a3, char a4, char a5, char a6, char a7)
{
  v15 = objc_allocWithZone(v7);
  v16 = &v15[OBJC_IVAR____TtC13CoreIDVShared25IdentityProofingNFCConfig_minimumReadTimeThreshold];
  *v16 = a1;
  v16[8] = a2 & 1;
  v17 = &v15[OBJC_IVAR____TtC13CoreIDVShared25IdentityProofingNFCConfig_readRetryInterval];
  *v17 = a3;
  v17[8] = a4 & 1;
  v15[OBJC_IVAR____TtC13CoreIDVShared25IdentityProofingNFCConfig_readyCheckEnabled] = a5;
  v15[OBJC_IVAR____TtC13CoreIDVShared25IdentityProofingNFCConfig_isChipIntegrityCheckFailureTerminal] = a6;
  v15[OBJC_IVAR____TtC13CoreIDVShared25IdentityProofingNFCConfig_isDeviceCrossCheckEnabled] = a7;
  v19.receiver = v15;
  v19.super_class = v7;
  return objc_msgSendSuper2(&v19, sel_init);
}

id IdentityProofingNFCConfig.init(minimumReadTimeThreshold:readRetryInterval:readyCheckEnabled:isChipIntegrityCheckFailureTerminal:isDeviceCrossCheckEnabled:)(uint64_t a1, char a2, uint64_t a3, char a4, char a5, char a6, char a7)
{
  ObjectType = swift_getObjectType();
  v16 = &v7[OBJC_IVAR____TtC13CoreIDVShared25IdentityProofingNFCConfig_minimumReadTimeThreshold];
  *v16 = a1;
  v16[8] = a2 & 1;
  v17 = &v7[OBJC_IVAR____TtC13CoreIDVShared25IdentityProofingNFCConfig_readRetryInterval];
  *v17 = a3;
  v17[8] = a4 & 1;
  v7[OBJC_IVAR____TtC13CoreIDVShared25IdentityProofingNFCConfig_readyCheckEnabled] = a5;
  v7[OBJC_IVAR____TtC13CoreIDVShared25IdentityProofingNFCConfig_isChipIntegrityCheckFailureTerminal] = a6;
  v7[OBJC_IVAR____TtC13CoreIDVShared25IdentityProofingNFCConfig_isDeviceCrossCheckEnabled] = a7;
  v19.receiver = v7;
  v19.super_class = ObjectType;
  return objc_msgSendSuper2(&v19, sel_init);
}

id IdentityProofingNFCConfig.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_225B68F9C(a1);

  return v4;
}

id IdentityProofingNFCConfig.init(coder:)(void *a1)
{
  v2 = sub_225B68F9C(a1);

  return v2;
}

Swift::Void __swiftcall IdentityProofingNFCConfig.encode(with:)(NSCoder with)
{
  if (*(v1 + OBJC_IVAR____TtC13CoreIDVShared25IdentityProofingNFCConfig_minimumReadTimeThreshold + 8))
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_225CCEC44();
  }

  v4 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR____TtC13CoreIDVShared25IdentityProofingNFCConfig_readRetryInterval + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_225CCEC44();
  }

  v6 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR____TtC13CoreIDVShared25IdentityProofingNFCConfig_readyCheckEnabled) == 2)
  {
    v7 = 0;
  }

  else
  {
    v7 = sub_225CCE8E4();
  }

  v8 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v7 forKey:v8];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR____TtC13CoreIDVShared25IdentityProofingNFCConfig_isChipIntegrityCheckFailureTerminal) == 2)
  {
    v9 = 0;
  }

  else
  {
    v9 = sub_225CCE8E4();
  }

  v10 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v9 forKey:v10];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR____TtC13CoreIDVShared25IdentityProofingNFCConfig_isDeviceCrossCheckEnabled) == 2)
  {
    v11 = 0;
  }

  else
  {
    v11 = sub_225CCE8E4();
  }

  v12 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v11 forKey:v12];
  swift_unknownObjectRelease();
}

id IdentityProofingNFCConfig.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void *IdentityProofingFeatureEnablementConfig.manualReviewEnabledLivenessConsentFlowItem.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC13CoreIDVShared39IdentityProofingFeatureEnablementConfig_manualReviewEnabledLivenessConsentFlowItem);
  v2 = v1;
  return v1;
}

void *IdentityProofingFeatureEnablementConfig.manualReviewEnabledFedStatsConsentFlowItem.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC13CoreIDVShared39IdentityProofingFeatureEnablementConfig_manualReviewEnabledFedStatsConsentFlowItem);
  v2 = v1;
  return v1;
}

void *IdentityProofingFeatureEnablementConfig.manualReviewDisabledFedStatsConsentFlowItem.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC13CoreIDVShared39IdentityProofingFeatureEnablementConfig_manualReviewDisabledFedStatsConsentFlowItem);
  v2 = v1;
  return v1;
}

id IdentityProofingFeatureEnablementConfig.__allocating_init(manualReviewEnabledLivenessConsentFlowItem:manualReviewEnabledFedStatsConsentFlowItem:manualReviewDisabledFedStatsConsentFlowItem:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  *&v7[OBJC_IVAR____TtC13CoreIDVShared39IdentityProofingFeatureEnablementConfig_manualReviewEnabledLivenessConsentFlowItem] = a1;
  *&v7[OBJC_IVAR____TtC13CoreIDVShared39IdentityProofingFeatureEnablementConfig_manualReviewEnabledFedStatsConsentFlowItem] = a2;
  *&v7[OBJC_IVAR____TtC13CoreIDVShared39IdentityProofingFeatureEnablementConfig_manualReviewDisabledFedStatsConsentFlowItem] = a3;
  v9.receiver = v7;
  v9.super_class = v3;
  return objc_msgSendSuper2(&v9, sel_init);
}

id IdentityProofingFeatureEnablementConfig.init(manualReviewEnabledLivenessConsentFlowItem:manualReviewEnabledFedStatsConsentFlowItem:manualReviewDisabledFedStatsConsentFlowItem:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC13CoreIDVShared39IdentityProofingFeatureEnablementConfig_manualReviewEnabledLivenessConsentFlowItem] = a1;
  *&v3[OBJC_IVAR____TtC13CoreIDVShared39IdentityProofingFeatureEnablementConfig_manualReviewEnabledFedStatsConsentFlowItem] = a2;
  *&v3[OBJC_IVAR____TtC13CoreIDVShared39IdentityProofingFeatureEnablementConfig_manualReviewDisabledFedStatsConsentFlowItem] = a3;
  v9.receiver = v3;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, sel_init);
}

id IdentityProofingFeatureEnablementConfig.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_225B69284();

  return v4;
}

id IdentityProofingFeatureEnablementConfig.init(coder:)(void *a1)
{
  v2 = sub_225B69284();

  return v2;
}

Swift::Void __swiftcall IdentityProofingFeatureEnablementConfig.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared39IdentityProofingFeatureEnablementConfig_manualReviewEnabledLivenessConsentFlowItem);
  v4 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];

  v5 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared39IdentityProofingFeatureEnablementConfig_manualReviewEnabledFedStatsConsentFlowItem);
  v6 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];

  v7 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared39IdentityProofingFeatureEnablementConfig_manualReviewDisabledFedStatsConsentFlowItem);
  v8 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v7 forKey:v8];
}

void *IdentityProofingDisplayInfo.docScan.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC13CoreIDVShared27IdentityProofingDisplayInfo_docScan);
  v2 = v1;
  return v1;
}

uint64_t IdentityProofingDisplayInfo.attributeConfig.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC13CoreIDVShared27IdentityProofingDisplayInfo_attributeConfig);
  sub_2259CB6FC(v1, *(v0 + OBJC_IVAR____TtC13CoreIDVShared27IdentityProofingDisplayInfo_attributeConfig + 8));
  return v1;
}

uint64_t IdentityProofingDisplayInfo.learnMoreURL.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC13CoreIDVShared27IdentityProofingDisplayInfo_learnMoreURL);

  return v1;
}

void *IdentityProofingDisplayInfo.featureEnablementConfig.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC13CoreIDVShared27IdentityProofingDisplayInfo_featureEnablementConfig);
  v2 = v1;
  return v1;
}

void *IdentityProofingDisplayInfo.livenessStepUpConfig.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC13CoreIDVShared27IdentityProofingDisplayInfo_livenessStepUpConfig);
  v2 = v1;
  return v1;
}

void *IdentityProofingDisplayInfo.livenessStepUpIQSettings.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC13CoreIDVShared27IdentityProofingDisplayInfo_livenessStepUpIQSettings);
  v2 = v1;
  return v1;
}

void *IdentityProofingDisplayInfo.nfcConfig.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC13CoreIDVShared27IdentityProofingDisplayInfo_nfcConfig);
  v2 = v1;
  return v1;
}

id IdentityProofingDisplayInfo.__allocating_init(proofingUI:docScan:attributeConfig:learnMoreURL:waitingForWiFiAlertDataThresholdInBytes:lowDataModeAlertDataThresholdInBytes:documentType:featureEnablementConfig:supportedRegions:livenessStepUpConfig:livenessStepUpIQSettings:shouldPreFetchLivenessConfig:minimumAge:nfcConfig:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18)
{
  v26 = objc_allocWithZone(v18);
  *&v26[OBJC_IVAR____TtC13CoreIDVShared27IdentityProofingDisplayInfo_proofingUI] = a1;
  *&v26[OBJC_IVAR____TtC13CoreIDVShared27IdentityProofingDisplayInfo_docScan] = a2;
  v27 = &v26[OBJC_IVAR____TtC13CoreIDVShared27IdentityProofingDisplayInfo_attributeConfig];
  *v27 = a3;
  v27[1] = a4;
  v28 = &v26[OBJC_IVAR____TtC13CoreIDVShared27IdentityProofingDisplayInfo_learnMoreURL];
  *v28 = a5;
  v28[1] = a6;
  v29 = &v26[OBJC_IVAR____TtC13CoreIDVShared27IdentityProofingDisplayInfo_waitingForWiFiAlertDataThresholdInBytes];
  *v29 = a7;
  v29[8] = a8 & 1;
  v30 = &v26[OBJC_IVAR____TtC13CoreIDVShared27IdentityProofingDisplayInfo_lowDataModeAlertDataThresholdInBytes];
  *v30 = a9;
  v30[8] = a10 & 1;
  *&v26[OBJC_IVAR____TtC13CoreIDVShared27IdentityProofingDisplayInfo_documentType] = a11;
  *&v26[OBJC_IVAR____TtC13CoreIDVShared27IdentityProofingDisplayInfo_featureEnablementConfig] = a12;
  *&v26[OBJC_IVAR____TtC13CoreIDVShared27IdentityProofingDisplayInfo_supportedRegions] = a13;
  *&v26[OBJC_IVAR____TtC13CoreIDVShared27IdentityProofingDisplayInfo_livenessStepUpConfig] = a14;
  *&v26[OBJC_IVAR____TtC13CoreIDVShared27IdentityProofingDisplayInfo_livenessStepUpIQSettings] = a15;
  v26[OBJC_IVAR____TtC13CoreIDVShared27IdentityProofingDisplayInfo_shouldPreFetchLivenessConfig] = a16;
  *&v26[OBJC_IVAR____TtC13CoreIDVShared27IdentityProofingDisplayInfo_minimumAge] = a17;
  *&v26[OBJC_IVAR____TtC13CoreIDVShared27IdentityProofingDisplayInfo_nfcConfig] = a18;
  v34.receiver = v26;
  v34.super_class = v33;
  return objc_msgSendSuper2(&v34, sel_init);
}

id IdentityProofingDisplayInfo.init(proofingUI:docScan:attributeConfig:learnMoreURL:waitingForWiFiAlertDataThresholdInBytes:lowDataModeAlertDataThresholdInBytes:documentType:featureEnablementConfig:supportedRegions:livenessStepUpConfig:livenessStepUpIQSettings:shouldPreFetchLivenessConfig:minimumAge:nfcConfig:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18)
{
  ObjectType = swift_getObjectType();
  *&v18[OBJC_IVAR____TtC13CoreIDVShared27IdentityProofingDisplayInfo_proofingUI] = a1;
  *&v18[OBJC_IVAR____TtC13CoreIDVShared27IdentityProofingDisplayInfo_docScan] = a2;
  v26 = &v18[OBJC_IVAR____TtC13CoreIDVShared27IdentityProofingDisplayInfo_attributeConfig];
  *v26 = a3;
  v26[1] = a4;
  v27 = &v18[OBJC_IVAR____TtC13CoreIDVShared27IdentityProofingDisplayInfo_learnMoreURL];
  *v27 = a5;
  v27[1] = a6;
  v28 = &v18[OBJC_IVAR____TtC13CoreIDVShared27IdentityProofingDisplayInfo_waitingForWiFiAlertDataThresholdInBytes];
  *v28 = a7;
  v28[8] = a8 & 1;
  v29 = &v18[OBJC_IVAR____TtC13CoreIDVShared27IdentityProofingDisplayInfo_lowDataModeAlertDataThresholdInBytes];
  *v29 = a9;
  v29[8] = a10 & 1;
  *&v18[OBJC_IVAR____TtC13CoreIDVShared27IdentityProofingDisplayInfo_documentType] = a11;
  *&v18[OBJC_IVAR____TtC13CoreIDVShared27IdentityProofingDisplayInfo_featureEnablementConfig] = a12;
  *&v18[OBJC_IVAR____TtC13CoreIDVShared27IdentityProofingDisplayInfo_supportedRegions] = a13;
  *&v18[OBJC_IVAR____TtC13CoreIDVShared27IdentityProofingDisplayInfo_livenessStepUpConfig] = a14;
  *&v18[OBJC_IVAR____TtC13CoreIDVShared27IdentityProofingDisplayInfo_livenessStepUpIQSettings] = a15;
  v18[OBJC_IVAR____TtC13CoreIDVShared27IdentityProofingDisplayInfo_shouldPreFetchLivenessConfig] = a16;
  *&v18[OBJC_IVAR____TtC13CoreIDVShared27IdentityProofingDisplayInfo_minimumAge] = a17;
  *&v18[OBJC_IVAR____TtC13CoreIDVShared27IdentityProofingDisplayInfo_nfcConfig] = a18;
  v33.receiver = v18;
  v33.super_class = ObjectType;
  return objc_msgSendSuper2(&v33, sel_init);
}

id IdentityProofingDisplayInfo.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_225B69378(a1);

  return v4;
}

id IdentityProofingDisplayInfo.init(coder:)(void *a1)
{
  v2 = sub_225B69378(a1);

  return v2;
}

Swift::Void __swiftcall IdentityProofingDisplayInfo.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared27IdentityProofingDisplayInfo_proofingUI);
  if (v3)
  {
    type metadata accessor for IdentityProofingUIConfig();
    v3 = sub_225CCE7F4();
  }

  v4 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];
  swift_unknownObjectRelease();

  v5 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared27IdentityProofingDisplayInfo_docScan);
  v6 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];

  if (*(v1 + OBJC_IVAR____TtC13CoreIDVShared27IdentityProofingDisplayInfo_attributeConfig + 8) >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v7 = sub_225CCCF74();
  }

  v8 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v7 forKey:v8];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR____TtC13CoreIDVShared27IdentityProofingDisplayInfo_learnMoreURL + 8))
  {
    v9 = sub_225CCE444();
  }

  else
  {
    v9 = 0;
  }

  v10 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v9 forKey:v10];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR____TtC13CoreIDVShared27IdentityProofingDisplayInfo_waitingForWiFiAlertDataThresholdInBytes + 8))
  {
    v11 = 0;
  }

  else
  {
    v11 = sub_225CCEC44();
  }

  v12 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v11 forKey:v12];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR____TtC13CoreIDVShared27IdentityProofingDisplayInfo_lowDataModeAlertDataThresholdInBytes + 8))
  {
    v13 = 0;
  }

  else
  {
    v13 = sub_225CCEC44();
  }

  v14 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v13 forKey:v14];
  swift_unknownObjectRelease();

  v15 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared27IdentityProofingDisplayInfo_documentType);
  v16 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeInt64:v15 forKey:v16];

  v17 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared27IdentityProofingDisplayInfo_featureEnablementConfig);
  v18 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v17 forKey:v18];

  v19 = sub_225CCE7F4();
  v20 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v19 forKey:v20];

  v21 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared27IdentityProofingDisplayInfo_livenessStepUpConfig);
  v22 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v21 forKey:v22];

  v23 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared27IdentityProofingDisplayInfo_livenessStepUpIQSettings);
  v24 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v23 forKey:v24];

  if (*(v1 + OBJC_IVAR____TtC13CoreIDVShared27IdentityProofingDisplayInfo_shouldPreFetchLivenessConfig) == 2)
  {
    v25 = 0;
  }

  else
  {
    v25 = sub_225CCE8E4();
  }

  v26 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v25 forKey:v26];
  swift_unknownObjectRelease();

  type metadata accessor for RegionMinimumAge();
  v27 = sub_225CCE7F4();
  v28 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v27 forKey:v28];

  v29 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared27IdentityProofingDisplayInfo_nfcConfig);
  v30 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v29 forKey:v30];
}

id sub_225B68988()
{
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73DC80, &unk_225CEF7D0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_225CD73B0;
  v3 = sub_2259D8718(0, &unk_27D73E350, 0x277CBEAC0);
  *(v2 + 32) = v3;
  v4 = sub_2259D8718(0, &qword_281059A60, 0x277CCACA8);
  *(v2 + 40) = v4;
  v5 = type metadata accessor for IdentityProofingConsentFlowItem();
  *(v2 + 48) = v5;
  sub_225CCEF24();

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E1E0, &qword_225CF0598);
    v6 = swift_dynamicCast();
    v7 = v12;
    if (!v6)
    {
      v7 = 0;
    }
  }

  else
  {
    sub_225B5445C(v14);
    v7 = 0;
  }

  *&v0[OBJC_IVAR____TtC13CoreIDVShared27IdentityProofingConsentFlow_manualReviewEnabled] = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_225CD73B0;
  *(v8 + 32) = v3;
  *(v8 + 40) = v4;
  *(v8 + 48) = v5;
  sub_225CCEF24();

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E1E0, &qword_225CF0598);
    v9 = swift_dynamicCast();
    v10 = v12;
    if (!v9)
    {
      v10 = 0;
    }
  }

  else
  {
    sub_225B5445C(v14);
    v10 = 0;
  }

  *&v0[OBJC_IVAR____TtC13CoreIDVShared27IdentityProofingConsentFlow_manualReviewDisabled] = v10;
  v13.receiver = v0;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, sel_init, 3, 6);
}

unint64_t sub_225B68BB4()
{
  result = qword_27D73E1D8;
  if (!qword_27D73E1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73E1D8);
  }

  return result;
}

unint64_t sub_225B68C08()
{
  result = qword_27D73E1E8;
  if (!qword_27D73E1E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73E1E0, &qword_225CF0598);
    sub_225B68D58(&qword_27D73E1F0, &protocol conformance descriptor for IdentityProofingConsentFlowItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73E1E8);
  }

  return result;
}

unint64_t sub_225B68CB0()
{
  result = qword_27D73E200;
  if (!qword_27D73E200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73E1E0, &qword_225CF0598);
    sub_225B68D58(&qword_27D73E208, &protocol conformance descriptor for IdentityProofingConsentFlowItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73E200);
  }

  return result;
}

uint64_t sub_225B68D58(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IdentityProofingConsentFlowItem();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_225B68D98(uint64_t a1, uint64_t a2)
{
  v2 = sub_225CCF5D4();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

id sub_225B68DE4(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_225CCE444();
  v5 = [a1 decodeBoolForKey_];

  v1[OBJC_IVAR____TtC13CoreIDVShared31IdentityProofingConsentFlowItem_passive] = v5;
  v6 = sub_225CCE444();
  v7 = [a1 decodeBoolForKey_];

  v1[OBJC_IVAR____TtC13CoreIDVShared31IdentityProofingConsentFlowItem_inlineStepUp] = v7;
  v8 = sub_225CCE444();
  v9 = [a1 decodeBoolForKey_];

  v1[OBJC_IVAR____TtC13CoreIDVShared31IdentityProofingConsentFlowItem_legacy] = v9;
  v10 = sub_225CCE444();
  LOBYTE(a1) = [a1 decodeBoolForKey_];

  v1[OBJC_IVAR____TtC13CoreIDVShared31IdentityProofingConsentFlowItem_pushNotificationStepUp] = a1;
  v12.receiver = v1;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, sel_init);
}

unint64_t sub_225B68F48()
{
  result = qword_27D73E238;
  if (!qword_27D73E238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73E238);
  }

  return result;
}

id sub_225B68F9C(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_225CCE444();
  v5 = [a1 containsValueForKey_];

  if (v5)
  {
    v6 = sub_225CCE444();
    v7 = [a1 decodeIntegerForKey_];
  }

  else
  {
    v7 = 0;
  }

  v8 = &v1[OBJC_IVAR____TtC13CoreIDVShared25IdentityProofingNFCConfig_minimumReadTimeThreshold];
  *v8 = v7;
  v8[8] = v5 ^ 1;
  v9 = sub_225CCE444();
  v10 = [a1 containsValueForKey_];

  if (v10)
  {
    v11 = sub_225CCE444();
    v12 = [a1 decodeIntegerForKey_];
  }

  else
  {
    v12 = 0;
  }

  v13 = &v1[OBJC_IVAR____TtC13CoreIDVShared25IdentityProofingNFCConfig_readRetryInterval];
  *v13 = v12;
  v13[8] = v10 ^ 1;
  v14 = sub_225CCE444();
  v15 = [a1 containsValueForKey_];

  if (v15)
  {
    v16 = sub_225CCE444();
    v17 = [a1 decodeBoolForKey_];
  }

  else
  {
    v17 = 2;
  }

  v1[OBJC_IVAR____TtC13CoreIDVShared25IdentityProofingNFCConfig_readyCheckEnabled] = v17;
  v18 = sub_225CCE444();
  v19 = [a1 containsValueForKey_];

  if (v19)
  {
    v20 = sub_225CCE444();
    v21 = [a1 decodeBoolForKey_];
  }

  else
  {
    v21 = 2;
  }

  v1[OBJC_IVAR____TtC13CoreIDVShared25IdentityProofingNFCConfig_isChipIntegrityCheckFailureTerminal] = v21;
  v22 = sub_225CCE444();
  v23 = [a1 containsValueForKey_];

  if (v23)
  {
    v24 = sub_225CCE444();
    v25 = [a1 decodeBoolForKey_];
  }

  else
  {
    v25 = 2;
  }

  v1[OBJC_IVAR____TtC13CoreIDVShared25IdentityProofingNFCConfig_isDeviceCrossCheckEnabled] = v25;
  v27.receiver = v1;
  v27.super_class = ObjectType;
  return objc_msgSendSuper2(&v27, sel_init);
}

id sub_225B69284()
{
  ObjectType = swift_getObjectType();
  type metadata accessor for IdentityProofingConsentFlowItem();
  *&v0[OBJC_IVAR____TtC13CoreIDVShared39IdentityProofingFeatureEnablementConfig_manualReviewEnabledLivenessConsentFlowItem] = sub_225CCEF14();
  *&v0[OBJC_IVAR____TtC13CoreIDVShared39IdentityProofingFeatureEnablementConfig_manualReviewEnabledFedStatsConsentFlowItem] = sub_225CCEF14();
  *&v0[OBJC_IVAR____TtC13CoreIDVShared39IdentityProofingFeatureEnablementConfig_manualReviewDisabledFedStatsConsentFlowItem] = sub_225CCEF14();
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_init);
}

id sub_225B69378(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73DC80, &unk_225CEF7D0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_225CD4890;
  v6 = sub_2259D8718(0, &qword_281059AA0, 0x277CBEA60);
  *(v5 + 32) = v6;
  *(v5 + 40) = type metadata accessor for IdentityProofingUIConfig();
  sub_225CCEF24();

  if (v43)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E348, &unk_225CF0A00);
    v7 = swift_dynamicCast();
    v8 = v40;
    if (!v7)
    {
      v8 = 0;
    }
  }

  else
  {
    sub_225B5445C(v42);
    v8 = 0;
  }

  *&v2[OBJC_IVAR____TtC13CoreIDVShared27IdentityProofingDisplayInfo_proofingUI] = v8;
  type metadata accessor for IdentityDocScanConfig();
  *&v2[OBJC_IVAR____TtC13CoreIDVShared27IdentityProofingDisplayInfo_docScan] = sub_225CCEF14();
  sub_2259D8718(0, &qword_27D73DD80, 0x277CBEA90);
  v9 = sub_225CCEF14();
  if (v9)
  {
    v10 = v9;
    v11 = sub_225CCCFA4();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0xF000000000000000;
  }

  v14 = &v2[OBJC_IVAR____TtC13CoreIDVShared27IdentityProofingDisplayInfo_attributeConfig];
  *v14 = v11;
  v14[1] = v13;
  v15 = sub_2259D8718(0, &qword_281059A60, 0x277CCACA8);
  v16 = sub_225CCEF14();
  if (v16)
  {
    v17 = v16;
    v18 = sub_225CCE474();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0;
  }

  v21 = &v2[OBJC_IVAR____TtC13CoreIDVShared27IdentityProofingDisplayInfo_learnMoreURL];
  *v21 = v18;
  v21[1] = v20;
  v22 = sub_225CCE444();
  v23 = [a1 decodeIntegerForKey_];

  v24 = &v2[OBJC_IVAR____TtC13CoreIDVShared27IdentityProofingDisplayInfo_waitingForWiFiAlertDataThresholdInBytes];
  *v24 = v23;
  v24[8] = 0;
  v25 = sub_225CCE444();
  v26 = [a1 decodeIntegerForKey_];

  v27 = &v2[OBJC_IVAR____TtC13CoreIDVShared27IdentityProofingDisplayInfo_lowDataModeAlertDataThresholdInBytes];
  *v27 = v26;
  v27[8] = 0;
  v28 = sub_225CCE444();
  v29 = [a1 decodeInt64ForKey_];

  v30 = sub_225B57C6C(v29);
  v32 = 2;
  if ((v31 & 1) == 0)
  {
    v32 = v30;
  }

  *&v2[OBJC_IVAR____TtC13CoreIDVShared27IdentityProofingDisplayInfo_documentType] = v32;
  type metadata accessor for IdentityProofingFeatureEnablementConfig();
  *&v2[OBJC_IVAR____TtC13CoreIDVShared27IdentityProofingDisplayInfo_featureEnablementConfig] = sub_225CCEF14();
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_225CD4890;
  *(v33 + 32) = v6;
  *(v33 + 40) = v15;
  sub_225CCEF24();

  if (v43)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0, &unk_225CD76A0);
    if (swift_dynamicCast())
    {
      v34 = v40;
      goto LABEL_19;
    }
  }

  else
  {
    sub_225B5445C(v42);
  }

  v34 = MEMORY[0x277D84F90];
LABEL_19:
  *&v2[OBJC_IVAR____TtC13CoreIDVShared27IdentityProofingDisplayInfo_supportedRegions] = v34;
  type metadata accessor for IdentityLivenessConfig();
  *&v2[OBJC_IVAR____TtC13CoreIDVShared27IdentityProofingDisplayInfo_livenessStepUpConfig] = sub_225CCEF14();
  type metadata accessor for IdentityImageQuality();
  *&v2[OBJC_IVAR____TtC13CoreIDVShared27IdentityProofingDisplayInfo_livenessStepUpIQSettings] = sub_225CCEF14();
  v35 = sub_225CCE444();
  v36 = [a1 decodeBoolForKey_];

  v2[OBJC_IVAR____TtC13CoreIDVShared27IdentityProofingDisplayInfo_shouldPreFetchLivenessConfig] = v36;
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_225CD4890;
  *(v37 + 32) = v6;
  *(v37 + 40) = type metadata accessor for RegionMinimumAge();
  sub_225CCEF24();

  if (!v43)
  {
    sub_225B5445C(v42);
    goto LABEL_23;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73E338, &unk_225CF09F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_23:
    v38 = MEMORY[0x277D84F90];
    goto LABEL_24;
  }

  v38 = v40;
LABEL_24:
  *&v2[OBJC_IVAR____TtC13CoreIDVShared27IdentityProofingDisplayInfo_minimumAge] = v38;
  type metadata accessor for IdentityProofingNFCConfig();
  *&v2[OBJC_IVAR____TtC13CoreIDVShared27IdentityProofingDisplayInfo_nfcConfig] = sub_225CCEF14();
  v41.receiver = v2;
  v41.super_class = ObjectType;
  return objc_msgSendSuper2(&v41, sel_init);
}

unint64_t sub_225B69BE8()
{
  result = qword_27D73E300;
  if (!qword_27D73E300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73E300);
  }

  return result;
}

unint64_t sub_225B69C40()
{
  result = qword_27D73E308;
  if (!qword_27D73E308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73E308);
  }

  return result;
}

unint64_t sub_225B69C98()
{
  result = qword_27D73E310;
  if (!qword_27D73E310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73E310);
  }

  return result;
}

unint64_t sub_225B69CF0()
{
  result = qword_27D73E318;
  if (!qword_27D73E318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73E318);
  }

  return result;
}

unint64_t sub_225B69D48()
{
  result = qword_27D73E320;
  if (!qword_27D73E320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73E320);
  }

  return result;
}

unint64_t sub_225B69DA0()
{
  result = qword_27D73E328;
  if (!qword_27D73E328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73E328);
  }

  return result;
}

uint64_t IdentityProofingDisplayMessage.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t IdentityProofingDisplayMessage.primaryButtonTitle.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t IdentityProofingDisplayMessage.secondaryButtonTitle.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t IdentityProofingDisplayMessage.learnMoreTitle.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t IdentityProofingDisplayMessage.url.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t IdentityProofingDisplayMessage.learnMoreURL.getter()
{
  v1 = *(v0 + 88);

  return v1;
}

void __swiftcall IdentityProofingDisplayMessage.init(title:messages:primaryButtonTitle:secondaryButtonTitle:learnMoreTitle:url:learnMoreURL:)(CoreIDVShared::IdentityProofingDisplayMessage *__return_ptr retstr, Swift::String title, Swift::OpaquePointer messages, Swift::String_optional primaryButtonTitle, Swift::String_optional secondaryButtonTitle, Swift::String_optional learnMoreTitle, Swift::String_optional url, Swift::String_optional learnMoreURL)
{
  retstr->title = title;
  retstr->messages = messages;
  retstr->primaryButtonTitle = primaryButtonTitle;
  retstr->secondaryButtonTitle = secondaryButtonTitle;
  retstr->learnMoreTitle.value._countAndFlagsBits = learnMoreTitle.value._countAndFlagsBits;
  *&retstr->learnMoreTitle.value._object = *&learnMoreTitle.value._object;
  *&retstr->url.value._object = *(&learnMoreURL - 8);
  retstr->learnMoreURL.value._object = learnMoreURL.value._object;
}

uint64_t sub_225B69F60()
{
  v1 = *v0;
  v2 = 0x656C746974;
  v3 = 7107189;
  if (v1 != 5)
  {
    v3 = 0x726F4D6E7261656CLL;
  }

  v4 = 0xD000000000000014;
  if (v1 != 3)
  {
    v4 = 0x726F4D6E7261656CLL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x736567617373656DLL;
  if (v1 != 1)
  {
    v5 = 0xD000000000000012;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_225B6A050@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_225B6AC10(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_225B6A078(uint64_t a1)
{
  v2 = sub_225B6A3BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B6A0B4(uint64_t a1)
{
  v2 = sub_225B6A3BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IdentityProofingDisplayMessage.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E360, &unk_225CF0A10);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v16 - v5;
  v7 = v1[2];
  v16[10] = v1[3];
  v17 = v7;
  v8 = v1[4];
  v16[8] = v1[5];
  v16[9] = v8;
  v9 = v1[6];
  v10 = v1[7];
  v11 = v1[9];
  v16[6] = v1[8];
  v16[7] = v9;
  v16[3] = v11;
  v12 = v1[11];
  v16[4] = v1[10];
  v16[5] = v10;
  v13 = v1[12];
  v16[1] = v12;
  v16[2] = v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225B6A3BC();
  sub_225CCFCE4();
  v26 = 0;
  v14 = v18;
  sub_225CCF784();
  if (!v14)
  {
    v19 = v17;
    v25 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0, &unk_225CD76A0);
    sub_225A325B0(&qword_281059B28, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    sub_225CCF7E4();
    v24 = 2;
    sub_225CCF734();
    v23 = 3;
    sub_225CCF734();
    v22 = 4;
    sub_225CCF734();
    v21 = 5;
    sub_225CCF734();
    v20 = 6;
    sub_225CCF734();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_225B6A3BC()
{
  result = qword_27D73E368;
  if (!qword_27D73E368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73E368);
  }

  return result;
}

uint64_t IdentityProofingDisplayMessage.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E370, &qword_225CF0A20);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v27 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225B6A3BC();
  sub_225CCFCA4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v45[0]) = 0;
  v9 = sub_225CCF684();
  v37 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0, &unk_225CD76A0);
  LOBYTE(v38) = 1;
  sub_225A325B0(&qword_281059B18, MEMORY[0x277D83808], MEMORY[0x277D83978]);
  sub_225CCF6E4();
  v36 = v45[0];
  LOBYTE(v45[0]) = 2;
  v33 = sub_225CCF624();
  v35 = v11;
  LOBYTE(v45[0]) = 3;
  v12 = sub_225CCF624();
  v34 = v13;
  v30 = v12;
  LOBYTE(v45[0]) = 4;
  v29 = sub_225CCF624();
  v32 = v14;
  LOBYTE(v45[0]) = 5;
  v28 = sub_225CCF624();
  v31 = v15;
  v46 = 6;
  v16 = sub_225CCF624();
  v18 = v17;
  v19 = v16;
  (*(v6 + 8))(v8, v5);
  *&v38 = v9;
  *(&v38 + 1) = v37;
  v20 = v36;
  *&v39 = v36;
  *(&v39 + 1) = v33;
  v21 = v35;
  *&v40 = v35;
  v22 = v34;
  *(&v40 + 1) = v30;
  *&v41 = v34;
  *(&v41 + 1) = v29;
  *&v42 = v32;
  *(&v42 + 1) = v28;
  *&v43 = v31;
  *(&v43 + 1) = v19;
  v44 = v18;
  *(a2 + 96) = v18;
  v23 = v43;
  *(a2 + 64) = v42;
  *(a2 + 80) = v23;
  v24 = v39;
  *a2 = v38;
  *(a2 + 16) = v24;
  v25 = v41;
  *(a2 + 32) = v40;
  *(a2 + 48) = v25;
  sub_225B6A9B0(&v38, v45);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v45[0] = v9;
  v45[1] = v37;
  v45[2] = v20;
  v45[3] = v33;
  v45[4] = v21;
  v45[5] = v30;
  v45[6] = v22;
  v45[7] = v29;
  v45[8] = v32;
  v45[9] = v28;
  v45[10] = v31;
  v45[11] = v19;
  v45[12] = v18;
  return sub_225B6A9E8(v45);
}

uint64_t sub_225B6AA48(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_225B6AA90(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_225B6AB0C()
{
  result = qword_27D73E378;
  if (!qword_27D73E378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73E378);
  }

  return result;
}

unint64_t sub_225B6AB64()
{
  result = qword_27D73E380;
  if (!qword_27D73E380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73E380);
  }

  return result;
}

unint64_t sub_225B6ABBC()
{
  result = qword_27D73E388;
  if (!qword_27D73E388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73E388);
  }

  return result;
}

uint64_t sub_225B6AC10(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_225CCF934() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736567617373656DLL && a2 == 0xE800000000000000 || (sub_225CCF934() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000225D204F0 == a2 || (sub_225CCF934() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000225D20510 == a2 || (sub_225CCF934() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x726F4D6E7261656CLL && a2 == 0xEE00656C74695465 || (sub_225CCF934() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (sub_225CCF934() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x726F4D6E7261656CLL && a2 == 0xEC0000004C525565)
  {

    return 6;
  }

  else
  {
    v6 = sub_225CCF934();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

void *IdentityProofingDocuments.frontID.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC13CoreIDVShared25IdentityProofingDocuments_frontID);
  v2 = v1;
  return v1;
}

void *IdentityProofingDocuments.backID.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC13CoreIDVShared25IdentityProofingDocuments_backID);
  v2 = v1;
  return v1;
}

void *IdentityProofingDocuments.selfie.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC13CoreIDVShared25IdentityProofingDocuments_selfie);
  v2 = v1;
  return v1;
}

void *IdentityProofingDocuments.liveness.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC13CoreIDVShared25IdentityProofingDocuments_liveness);
  v2 = v1;
  return v1;
}

void *IdentityProofingDocuments.nfc.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC13CoreIDVShared25IdentityProofingDocuments_nfc);
  v2 = v1;
  return v1;
}

id IdentityProofingDocuments.__allocating_init(frontID:backID:selfie:liveness:nfc:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  *&v11[OBJC_IVAR____TtC13CoreIDVShared25IdentityProofingDocuments_frontID] = a1;
  *&v11[OBJC_IVAR____TtC13CoreIDVShared25IdentityProofingDocuments_backID] = a2;
  *&v11[OBJC_IVAR____TtC13CoreIDVShared25IdentityProofingDocuments_selfie] = a3;
  *&v11[OBJC_IVAR____TtC13CoreIDVShared25IdentityProofingDocuments_liveness] = a4;
  *&v11[OBJC_IVAR____TtC13CoreIDVShared25IdentityProofingDocuments_nfc] = a5;
  v13.receiver = v11;
  v13.super_class = v5;
  return objc_msgSendSuper2(&v13, sel_init);
}

id IdentityProofingDocuments.init(frontID:backID:selfie:liveness:nfc:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  *&v5[OBJC_IVAR____TtC13CoreIDVShared25IdentityProofingDocuments_frontID] = a1;
  *&v5[OBJC_IVAR____TtC13CoreIDVShared25IdentityProofingDocuments_backID] = a2;
  *&v5[OBJC_IVAR____TtC13CoreIDVShared25IdentityProofingDocuments_selfie] = a3;
  *&v5[OBJC_IVAR____TtC13CoreIDVShared25IdentityProofingDocuments_liveness] = a4;
  *&v5[OBJC_IVAR____TtC13CoreIDVShared25IdentityProofingDocuments_nfc] = a5;
  v13.receiver = v5;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, sel_init);
}

Swift::Void __swiftcall IdentityProofingDocuments.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared25IdentityProofingDocuments_frontID);
  v4 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];

  v5 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared25IdentityProofingDocuments_backID);
  v6 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];

  v7 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared25IdentityProofingDocuments_selfie);
  v8 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v7 forKey:v8];

  v9 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared25IdentityProofingDocuments_liveness);
  v10 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v9 forKey:v10];

  v11 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared25IdentityProofingDocuments_nfc);
  v12 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v11 forKey:v12];
}

id IdentityProofingDocuments.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_225B6B478();

  return v4;
}

id IdentityProofingDocuments.init(coder:)(void *a1)
{
  v2 = sub_225B6B478();

  return v2;
}

id IdentityProofingDocuments.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id IdentityProofingDocuments.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_225B6B478()
{
  ObjectType = swift_getObjectType();
  type metadata accessor for IdentityDocument();
  *&v0[OBJC_IVAR____TtC13CoreIDVShared25IdentityProofingDocuments_frontID] = sub_225CCEF14();
  *&v0[OBJC_IVAR____TtC13CoreIDVShared25IdentityProofingDocuments_backID] = sub_225CCEF14();
  *&v0[OBJC_IVAR____TtC13CoreIDVShared25IdentityProofingDocuments_selfie] = sub_225CCEF14();
  type metadata accessor for IdentityLivenessResults();
  *&v0[OBJC_IVAR____TtC13CoreIDVShared25IdentityProofingDocuments_liveness] = sub_225CCEF14();
  *&v0[OBJC_IVAR____TtC13CoreIDVShared25IdentityProofingDocuments_nfc] = sub_225CCEF14();
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_init);
}

void *IdentityProofingImageDimensions.idFront.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC13CoreIDVShared31IdentityProofingImageDimensions_idFront);
  v2 = v1;
  return v1;
}

void *IdentityProofingImageDimensions.idBack.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC13CoreIDVShared31IdentityProofingImageDimensions_idBack);
  v2 = v1;
  return v1;
}

void *IdentityProofingImageDimensions.selfie.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC13CoreIDVShared31IdentityProofingImageDimensions_selfie);
  v2 = v1;
  return v1;
}

id IdentityProofingImageDimensions.__allocating_init(idFront:idBack:selfie:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  *&v7[OBJC_IVAR____TtC13CoreIDVShared31IdentityProofingImageDimensions_idFront] = a1;
  *&v7[OBJC_IVAR____TtC13CoreIDVShared31IdentityProofingImageDimensions_idBack] = a2;
  *&v7[OBJC_IVAR____TtC13CoreIDVShared31IdentityProofingImageDimensions_selfie] = a3;
  v9.receiver = v7;
  v9.super_class = v3;
  return objc_msgSendSuper2(&v9, sel_init);
}

id IdentityProofingImageDimensions.init(idFront:idBack:selfie:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC13CoreIDVShared31IdentityProofingImageDimensions_idFront] = a1;
  *&v3[OBJC_IVAR____TtC13CoreIDVShared31IdentityProofingImageDimensions_idBack] = a2;
  *&v3[OBJC_IVAR____TtC13CoreIDVShared31IdentityProofingImageDimensions_selfie] = a3;
  v9.receiver = v3;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, sel_init);
}

id IdentityProofingImageDimensions.__allocating_init(coder:)(void *a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v2);
  type metadata accessor for IdentityImageDimension();
  *&v4[OBJC_IVAR____TtC13CoreIDVShared31IdentityProofingImageDimensions_idFront] = sub_225CCEF14();
  *&v4[OBJC_IVAR____TtC13CoreIDVShared31IdentityProofingImageDimensions_idBack] = sub_225CCEF14();
  *&v4[OBJC_IVAR____TtC13CoreIDVShared31IdentityProofingImageDimensions_selfie] = sub_225CCEF14();
  v7.receiver = v4;
  v7.super_class = v2;
  v5 = objc_msgSendSuper2(&v7, sel_init);

  return v5;
}

id IdentityProofingImageDimensions.init(coder:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  type metadata accessor for IdentityImageDimension();
  *&v2[OBJC_IVAR____TtC13CoreIDVShared31IdentityProofingImageDimensions_idFront] = sub_225CCEF14();
  *&v2[OBJC_IVAR____TtC13CoreIDVShared31IdentityProofingImageDimensions_idBack] = sub_225CCEF14();
  *&v2[OBJC_IVAR____TtC13CoreIDVShared31IdentityProofingImageDimensions_selfie] = sub_225CCEF14();
  v7.receiver = v2;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, sel_init);

  return v5;
}

Swift::Void __swiftcall IdentityProofingImageDimensions.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared31IdentityProofingImageDimensions_idFront);
  v4 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];

  v5 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared31IdentityProofingImageDimensions_idBack);
  v6 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];

  v7 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared31IdentityProofingImageDimensions_selfie);
  v8 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v7 forKey:v8];
}

uint64_t IdentityProofingImageDimensions.debugDescription.getter()
{
  v1 = 7104878;
  sub_225CCF204();

  if (*(v0 + OBJC_IVAR____TtC13CoreIDVShared31IdentityProofingImageDimensions_idFront))
  {
    v2 = IdentityImageDimension.debugDescription.getter();
    v4 = v3;
  }

  else
  {
    v4 = 0xE300000000000000;
    v2 = 7104878;
  }

  MEMORY[0x22AA6CE70](v2, v4);

  MEMORY[0x22AA6CE70](0x44496B6361422029, 0xE900000000000028);
  if (*(v0 + OBJC_IVAR____TtC13CoreIDVShared31IdentityProofingImageDimensions_idBack))
  {
    v5 = IdentityImageDimension.debugDescription.getter();
    v7 = v6;
  }

  else
  {
    v7 = 0xE300000000000000;
    v5 = 7104878;
  }

  MEMORY[0x22AA6CE70](v5, v7);

  MEMORY[0x22AA6CE70](0x6569666C65532029, 0xE900000000000028);
  if (*(v0 + OBJC_IVAR____TtC13CoreIDVShared31IdentityProofingImageDimensions_selfie))
  {
    v1 = IdentityImageDimension.debugDescription.getter();
    v9 = v8;
  }

  else
  {
    v9 = 0xE300000000000000;
  }

  MEMORY[0x22AA6CE70](v1, v9);

  MEMORY[0x22AA6CE70](41, 0xE100000000000000);
  return 0x284449746E6F7246;
}

uint64_t IdentityImageDimension.debugDescription.getter()
{
  v6 = sub_225CCF824();
  MEMORY[0x22AA6CE70](2127904, 0xE300000000000000);
  v1 = sub_225CCF824();
  MEMORY[0x22AA6CE70](v1);

  MEMORY[0x22AA6CE70](10272, 0xE200000000000000);
  if (*(v0 + OBJC_IVAR____TtC13CoreIDVShared22IdentityImageDimension_scale + 8))
  {
    v2 = 0xE700000000000000;
    v3 = 0x746C7561666564;
  }

  else
  {
    v3 = sub_225CCEB74();
    v2 = v4;
  }

  MEMORY[0x22AA6CE70](v3, v2);

  MEMORY[0x22AA6CE70](10616, 0xE200000000000000);
  return v6;
}

id IdentityImageDimension.__allocating_init(height:width:scale:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = objc_allocWithZone(v4);
  *&v9[OBJC_IVAR____TtC13CoreIDVShared22IdentityImageDimension_height] = a1;
  *&v9[OBJC_IVAR____TtC13CoreIDVShared22IdentityImageDimension_width] = a2;
  v10 = &v9[OBJC_IVAR____TtC13CoreIDVShared22IdentityImageDimension_scale];
  *v10 = a3;
  v10[8] = a4 & 1;
  v12.receiver = v9;
  v12.super_class = v4;
  return objc_msgSendSuper2(&v12, sel_init);
}

id IdentityImageDimension.init(height:width:scale:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC13CoreIDVShared22IdentityImageDimension_height] = a1;
  *&v4[OBJC_IVAR____TtC13CoreIDVShared22IdentityImageDimension_width] = a2;
  v10 = &v4[OBJC_IVAR____TtC13CoreIDVShared22IdentityImageDimension_scale];
  *v10 = a3;
  v10[8] = a4 & 1;
  v12.receiver = v4;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, sel_init);
}

id IdentityImageDimension.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_225B6C3FC(a1);

  return v4;
}

id IdentityImageDimension.init(coder:)(void *a1)
{
  v2 = sub_225B6C3FC(a1);

  return v2;
}

Swift::Void __swiftcall IdentityImageDimension.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared22IdentityImageDimension_height);
  v4 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeInteger:v3 forKey:v4];

  v5 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared22IdentityImageDimension_width);
  v6 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeInteger:v5 forKey:v6];

  if (*(v1 + OBJC_IVAR____TtC13CoreIDVShared22IdentityImageDimension_scale + 8))
  {
    v7 = 0;
  }

  else
  {
    v7 = sub_225CCEB54();
  }

  v8 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v7 forKey:v8];
  swift_unknownObjectRelease();
}

id sub_225B6C2F4(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_225CCE444();

  return v5;
}

id IdentityImageDimension.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_225B6C3FC(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_225CCE444();
  v6 = [a1 decodeIntegerForKey_];

  *&v2[OBJC_IVAR____TtC13CoreIDVShared22IdentityImageDimension_height] = v6;
  v7 = sub_225CCE444();
  v8 = [a1 decodeIntegerForKey_];

  *&v2[OBJC_IVAR____TtC13CoreIDVShared22IdentityImageDimension_width] = v8;
  sub_225B6C5E0();
  v9 = sub_225CCEF14();
  v10 = 1;
  if (v9)
  {
    v15 = 0;
    v16 = 1;
    v11 = v9;
    MEMORY[0x22AA6D3A0](v9, &v15);

    v12 = v15;
    v10 = v16;
  }

  else
  {
    v12 = 0;
  }

  v13 = &v2[OBJC_IVAR____TtC13CoreIDVShared22IdentityImageDimension_scale];
  *v13 = v12;
  v13[8] = v10;
  v17.receiver = v2;
  v17.super_class = ObjectType;
  return objc_msgSendSuper2(&v17, sel_init);
}

unint64_t sub_225B6C5E0()
{
  result = qword_281059A70;
  if (!qword_281059A70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281059A70);
  }

  return result;
}

void *IdentityProofingLivenessVideoURL.fileHandle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC13CoreIDVShared32IdentityProofingLivenessVideoURL_fileHandle);
  v2 = v1;
  return v1;
}

void *IdentityProofingLivenessVideoURL.auxiliaryFileHandle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC13CoreIDVShared32IdentityProofingLivenessVideoURL_auxiliaryFileHandle);
  v2 = v1;
  return v1;
}

char *IdentityProofingLivenessVideoURL.init(url:auxiliary:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v35 = a2;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73E090, &qword_225CD8ED0);
  MEMORY[0x28223BE20](v5 - 8);
  v31 = v27 - v6;
  v7 = sub_225CCCEA4();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v29 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v28 = v27 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = v27 - v13;
  v15 = OBJC_IVAR____TtC13CoreIDVShared32IdentityProofingLivenessVideoURL_url;
  v16 = *(v8 + 16);
  v16(&v2[OBJC_IVAR____TtC13CoreIDVShared32IdentityProofingLivenessVideoURL_url], a1, v7);
  (*(v8 + 56))(&v2[v15], 0, 1, v7);
  v30 = OBJC_IVAR____TtC13CoreIDVShared32IdentityProofingLivenessVideoURL_auxiliaryURL;
  sub_225A33B7C(v35, &v2[OBJC_IVAR____TtC13CoreIDVShared32IdentityProofingLivenessVideoURL_auxiliaryURL]);
  v17 = sub_2259D8718(0, &unk_27D73E3F8, 0x277CCA9F8);
  v16(v14, a1, v7);
  v18 = v32;
  v19 = sub_225B6CB2C(v14);
  if (v18)
  {
    sub_225B6CC84(v35);
    (*(v8 + 8))(a1, v7);
    sub_225B6CC84(&v3[v15]);
    sub_225B6CC84(&v3[v30]);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v27[0] = v15;
    v27[1] = v17;
    v20 = v29;
    v32 = a1;
    *&v3[OBJC_IVAR____TtC13CoreIDVShared32IdentityProofingLivenessVideoURL_fileHandle] = v19;
    v21 = v31;
    sub_225A33B7C(v35, v31);
    if ((*(v8 + 48))(v21, 1, v7) == 1)
    {
      sub_225B6CC84(v31);
      v22 = 0;
    }

    else
    {
      v23 = v28;
      (*(v8 + 32))(v28, v31, v7);
      v16(v20, v23, v7);
      v22 = sub_225B6CB2C(v20);
      (*(v8 + 8))(v23, v7);
    }

    v24 = v35;
    *&v3[OBJC_IVAR____TtC13CoreIDVShared32IdentityProofingLivenessVideoURL_auxiliaryFileHandle] = v22;
    v25 = v32;
    v34.receiver = v3;
    v34.super_class = ObjectType;
    v3 = objc_msgSendSuper2(&v34, sel_init);
    sub_225B6CC84(v24);
    (*(v8 + 8))(v25, v7);
  }

  return v3;
}

id sub_225B6CB2C(uint64_t a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v2 = sub_225CCCDF4();
  v11[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() fileHandleForUpdatingURL:v2 error:v11];

  v4 = v11[0];
  if (v3)
  {
    v5 = sub_225CCCEA4();
    v6 = *(*(v5 - 8) + 8);
    v7 = v4;
    v6(a1, v5);
  }

  else
  {
    v8 = v11[0];
    sub_225CCCCC4();

    swift_willThrow();
    v9 = sub_225CCCEA4();
    (*(*(v9 - 8) + 8))(a1, v9);
  }

  return v3;
}

uint64_t sub_225B6CC84(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73E090, &qword_225CD8ED0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Void __swiftcall IdentityProofingLivenessVideoURL.encode(with:)(NSCoder with)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73E090, &qword_225CD8ED0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - v8;
  sub_225A33B7C(v2 + OBJC_IVAR____TtC13CoreIDVShared32IdentityProofingLivenessVideoURL_url, &v23 - v8);
  v10 = sub_225CCCEA4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (v12(v9, 1, v10) != 1)
  {
    v13 = sub_225CCCDF4();
    (*(v11 + 8))(v9, v10);
    v14 = v13;
    v15 = sub_225CCE444();
    [(objc_class *)with.super.isa encodeObject:v14 forKey:v15];
  }

  v16 = *(v2 + OBJC_IVAR____TtC13CoreIDVShared32IdentityProofingLivenessVideoURL_fileHandle);
  v17 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v16 forKey:v17];

  sub_225A33B7C(v2 + OBJC_IVAR____TtC13CoreIDVShared32IdentityProofingLivenessVideoURL_auxiliaryURL, v7);
  if (v12(v7, 1, v10) != 1)
  {
    v18 = sub_225CCCDF4();
    (*(v11 + 8))(v7, v10);
    v19 = v18;
    v20 = sub_225CCE444();
    [(objc_class *)with.super.isa encodeObject:v19 forKey:v20];
  }

  v21 = *(v2 + OBJC_IVAR____TtC13CoreIDVShared32IdentityProofingLivenessVideoURL_auxiliaryFileHandle);
  v22 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v21 forKey:v22];
}

id IdentityProofingLivenessVideoURL.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_225B6D1EC();

  return v4;
}

id IdentityProofingLivenessVideoURL.init(coder:)(void *a1)
{
  v2 = sub_225B6D1EC();

  return v2;
}

id IdentityProofingLivenessVideoURL.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id IdentityProofingLivenessVideoURL.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_225B6D1EC()
{
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73E090, &qword_225CD8ED0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - v6;
  sub_2259D8718(0, &unk_27D73E420, 0x277CBEBC0);
  v8 = sub_225CCEF14();
  if (v8)
  {
    v9 = v8;
    sub_225CCCE34();

    v10 = sub_225CCCEA4();
    (*(*(v10 - 8) + 56))(v7, 0, 1, v10);
  }

  else
  {
    v11 = sub_225CCCEA4();
    (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  }

  sub_225B645E0(v7, &v0[OBJC_IVAR____TtC13CoreIDVShared32IdentityProofingLivenessVideoURL_url]);
  sub_2259D8718(0, &unk_27D73E3F8, 0x277CCA9F8);
  *&v0[OBJC_IVAR____TtC13CoreIDVShared32IdentityProofingLivenessVideoURL_fileHandle] = sub_225CCEF14();
  v12 = sub_225CCEF14();
  if (v12)
  {
    v13 = v12;
    sub_225CCCE34();

    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = sub_225CCCEA4();
  (*(*(v15 - 8) + 56))(v5, v14, 1, v15);
  sub_225B645E0(v5, &v0[OBJC_IVAR____TtC13CoreIDVShared32IdentityProofingLivenessVideoURL_auxiliaryURL]);
  *&v0[OBJC_IVAR____TtC13CoreIDVShared32IdentityProofingLivenessVideoURL_auxiliaryFileHandle] = sub_225CCEF14();
  v17.receiver = v0;
  v17.super_class = ObjectType;
  return objc_msgSendSuper2(&v17, sel_init);
}

uint64_t type metadata accessor for IdentityProofingLivenessVideoURL(uint64_t a1)
{
  result = qword_27D73E408;
  if (!qword_27D73E408)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_225B6D4F0(uint64_t a1)
{
  sub_225A372C0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t IdentityProofingOptions.debugDescription.getter(uint64_t a1)
{
  v1 = 0x6E6120656E6F6850;
  v2 = 1701736270;
  if (a1 == 2)
  {
    v2 = 0x6863746157;
  }

  if (a1 != 3)
  {
    v1 = v2;
  }

  if (a1 == 1)
  {
    return 0x656E6F6850;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_225B6D654()
{
  v1 = *v0;
  v2 = 0x656E6F6850;
  if (*v0 != 1)
  {
    v2 = 1701736270;
  }

  if (v1 == 2)
  {
    v2 = 0x6863746157;
  }

  if (v1 == 3)
  {
    return 0x6E6120656E6F6850;
  }

  else
  {
    return v2;
  }
}

uint64_t IdentityProofingAssetData.twoX.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC13CoreIDVShared25IdentityProofingAssetData_twoX);
  sub_2259CB6FC(v1, *(v0 + OBJC_IVAR____TtC13CoreIDVShared25IdentityProofingAssetData_twoX + 8));
  return v1;
}

uint64_t IdentityProofingAssetData.threeX.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC13CoreIDVShared25IdentityProofingAssetData_threeX);
  sub_2259CB6FC(v1, *(v0 + OBJC_IVAR____TtC13CoreIDVShared25IdentityProofingAssetData_threeX + 8));
  return v1;
}

uint64_t IdentityProofingAssetData.assetID.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC13CoreIDVShared25IdentityProofingAssetData_assetID);

  return v1;
}

id IdentityProofingAssetData.__allocating_init(twoX:threeX:assetId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = objc_allocWithZone(v6);
  v14 = &v13[OBJC_IVAR____TtC13CoreIDVShared25IdentityProofingAssetData_twoX];
  *v14 = a1;
  *(v14 + 1) = a2;
  v15 = &v13[OBJC_IVAR____TtC13CoreIDVShared25IdentityProofingAssetData_threeX];
  *v15 = a3;
  *(v15 + 1) = a4;
  v16 = &v13[OBJC_IVAR____TtC13CoreIDVShared25IdentityProofingAssetData_assetID];
  *v16 = a5;
  *(v16 + 1) = a6;
  v18.receiver = v13;
  v18.super_class = v6;
  return objc_msgSendSuper2(&v18, sel_init);
}

id IdentityProofingAssetData.init(twoX:threeX:assetId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();
  v14 = &v6[OBJC_IVAR____TtC13CoreIDVShared25IdentityProofingAssetData_twoX];
  *v14 = a1;
  *(v14 + 1) = a2;
  v15 = &v6[OBJC_IVAR____TtC13CoreIDVShared25IdentityProofingAssetData_threeX];
  *v15 = a3;
  *(v15 + 1) = a4;
  v16 = &v6[OBJC_IVAR____TtC13CoreIDVShared25IdentityProofingAssetData_assetID];
  *v16 = a5;
  *(v16 + 1) = a6;
  v18.receiver = v6;
  v18.super_class = ObjectType;
  return objc_msgSendSuper2(&v18, sel_init);
}

Swift::Void __swiftcall IdentityProofingAssetData.encode(with:)(NSCoder with)
{
  if (*(v1 + OBJC_IVAR____TtC13CoreIDVShared25IdentityProofingAssetData_twoX + 8) >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_225CCCF74();
  }

  v4 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR____TtC13CoreIDVShared25IdentityProofingAssetData_threeX + 8) >> 60 == 15)
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_225CCCF74();
  }

  v6 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR____TtC13CoreIDVShared25IdentityProofingAssetData_assetID + 8))
  {
    v7 = sub_225CCE444();
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v7 forKey:v8];
  swift_unknownObjectRelease();
}

id IdentityProofingAssetData.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_225B6EF74();

  return v4;
}

id IdentityProofingAssetData.init(coder:)(void *a1)
{
  v2 = sub_225B6EF74();

  return v2;
}

uint64_t IdentityProofingUIConfig.view.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC13CoreIDVShared24IdentityProofingUIConfig_view);

  return v1;
}

uint64_t IdentityProofingUIConfig.title.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC13CoreIDVShared24IdentityProofingUIConfig_title);

  return v1;
}

uint64_t IdentityProofingUIConfig.subTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC13CoreIDVShared24IdentityProofingUIConfig_subTitle);

  return v1;
}

uint64_t IdentityProofingUIConfig.url.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC13CoreIDVShared24IdentityProofingUIConfig_url);

  return v1;
}

uint64_t IdentityProofingUIConfig.primaryButtonTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC13CoreIDVShared24IdentityProofingUIConfig_primaryButtonTitle);

  return v1;
}

uint64_t IdentityProofingUIConfig.secondaryButtonTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC13CoreIDVShared24IdentityProofingUIConfig_secondaryButtonTitle);

  return v1;
}

uint64_t IdentityProofingUIConfig.tertiaryButtonTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC13CoreIDVShared24IdentityProofingUIConfig_tertiaryButtonTitle);

  return v1;
}

uint64_t IdentityProofingUIConfig.privacyLinkButtonTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC13CoreIDVShared24IdentityProofingUIConfig_privacyLinkButtonTitle);

  return v1;
}

uint64_t IdentityProofingUIConfig.caption.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC13CoreIDVShared24IdentityProofingUIConfig_caption);

  return v1;
}

uint64_t IdentityProofingUIConfig.placeholder.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC13CoreIDVShared24IdentityProofingUIConfig_placeholder);

  return v1;
}

uint64_t IdentityProofingUIConfig.displayName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC13CoreIDVShared24IdentityProofingUIConfig_displayName);

  return v1;
}

uint64_t IdentityProofingUIConfig.privacyLinkIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC13CoreIDVShared24IdentityProofingUIConfig_privacyLinkIdentifier);

  return v1;
}

id IdentityProofingUIConfig.__allocating_init(view:title:subTitle:url:primaryButtonTitle:secondaryButtonTitle:tertiaryButtonTitle:privacyLinktButtonTitle:messages:fields:caption:minLength:maxLength:placeholder:displayName:imageAssetsData:options:isUIEnabled:privacyLinkIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33)
{
  v38 = objc_allocWithZone(v33);
  v39 = &v38[OBJC_IVAR____TtC13CoreIDVShared24IdentityProofingUIConfig_view];
  *v39 = a1;
  v39[1] = a2;
  v40 = &v38[OBJC_IVAR____TtC13CoreIDVShared24IdentityProofingUIConfig_title];
  *v40 = a3;
  v40[1] = a4;
  v41 = &v38[OBJC_IVAR____TtC13CoreIDVShared24IdentityProofingUIConfig_subTitle];
  *v41 = a5;
  v41[1] = a6;
  v42 = &v38[OBJC_IVAR____TtC13CoreIDVShared24IdentityProofingUIConfig_url];
  *v42 = a7;
  v42[1] = a8;
  v43 = &v38[OBJC_IVAR____TtC13CoreIDVShared24IdentityProofingUIConfig_primaryButtonTitle];
  *v43 = a9;
  v43[1] = a10;
  v44 = &v38[OBJC_IVAR____TtC13CoreIDVShared24IdentityProofingUIConfig_secondaryButtonTitle];
  *v44 = a11;
  v44[1] = a12;
  v45 = &v38[OBJC_IVAR____TtC13CoreIDVShared24IdentityProofingUIConfig_tertiaryButtonTitle];
  *v45 = a13;
  v45[1] = a14;
  v46 = &v38[OBJC_IVAR____TtC13CoreIDVShared24IdentityProofingUIConfig_privacyLinkButtonTitle];
  *v46 = a15;
  v46[1] = a16;
  *&v38[OBJC_IVAR____TtC13CoreIDVShared24IdentityProofingUIConfig_messages] = a17;
  *&v38[OBJC_IVAR____TtC13CoreIDVShared24IdentityProofingUIConfig_fields] = a18;
  v47 = &v38[OBJC_IVAR____TtC13CoreIDVShared24IdentityProofingUIConfig_caption];
  *v47 = a19;
  v47[1] = a20;
  v48 = &v38[OBJC_IVAR____TtC13CoreIDVShared24IdentityProofingUIConfig_minLength];
  *v48 = a21;
  v48[8] = a22 & 1;
  v49 = &v38[OBJC_IVAR____TtC13CoreIDVShared24IdentityProofingUIConfig_maxLength];
  *v49 = a23;
  v49[8] = a24 & 1;
  v50 = &v38[OBJC_IVAR____TtC13CoreIDVShared24IdentityProofingUIConfig_placeholder];
  *v50 = a25;
  v50[1] = a26;
  v51 = &v38[OBJC_IVAR____TtC13CoreIDVShared24IdentityProofingUIConfig_displayName];
  *v51 = a27;
  v51[1] = a28;
  *&v38[OBJC_IVAR____TtC13CoreIDVShared24IdentityProofingUIConfig_imageAssetsData] = a29;
  *&v38[OBJC_IVAR____TtC13CoreIDVShared24IdentityProofingUIConfig_options] = a30;
  v38[OBJC_IVAR____TtC13CoreIDVShared24IdentityProofingUIConfig_isUIEnabled] = a31;
  v52 = &v38[OBJC_IVAR____TtC13CoreIDVShared24IdentityProofingUIConfig_privacyLinkIdentifier];
  *v52 = a32;
  v52[1] = a33;
  v59.receiver = v38;
  v59.super_class = v58;
  return objc_msgSendSuper2(&v59, sel_init);
}

id IdentityProofingUIConfig.init(view:title:subTitle:url:primaryButtonTitle:secondaryButtonTitle:tertiaryButtonTitle:privacyLinktButtonTitle:messages:fields:caption:minLength:maxLength:placeholder:displayName:imageAssetsData:options:isUIEnabled:privacyLinkIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33)
{
  v57.super_class = swift_getObjectType();
  v38 = &v33[OBJC_IVAR____TtC13CoreIDVShared24IdentityProofingUIConfig_view];
  *v38 = a1;
  *(v38 + 1) = a2;
  v39 = &v33[OBJC_IVAR____TtC13CoreIDVShared24IdentityProofingUIConfig_title];
  *v39 = a3;
  *(v39 + 1) = a4;
  v40 = &v33[OBJC_IVAR____TtC13CoreIDVShared24IdentityProofingUIConfig_subTitle];
  *v40 = a5;
  *(v40 + 1) = a6;
  v41 = &v33[OBJC_IVAR____TtC13CoreIDVShared24IdentityProofingUIConfig_url];
  *v41 = a7;
  *(v41 + 1) = a8;
  v42 = &v33[OBJC_IVAR____TtC13CoreIDVShared24IdentityProofingUIConfig_primaryButtonTitle];
  *v42 = a9;
  *(v42 + 1) = a10;
  v43 = &v33[OBJC_IVAR____TtC13CoreIDVShared24IdentityProofingUIConfig_secondaryButtonTitle];
  *v43 = a11;
  *(v43 + 1) = a12;
  v44 = &v33[OBJC_IVAR____TtC13CoreIDVShared24IdentityProofingUIConfig_tertiaryButtonTitle];
  *v44 = a13;
  *(v44 + 1) = a14;
  v45 = &v33[OBJC_IVAR____TtC13CoreIDVShared24IdentityProofingUIConfig_privacyLinkButtonTitle];
  *v45 = a15;
  *(v45 + 1) = a16;
  *&v33[OBJC_IVAR____TtC13CoreIDVShared24IdentityProofingUIConfig_messages] = a17;
  *&v33[OBJC_IVAR____TtC13CoreIDVShared24IdentityProofingUIConfig_fields] = a18;
  v46 = &v33[OBJC_IVAR____TtC13CoreIDVShared24IdentityProofingUIConfig_caption];
  *v46 = a19;
  *(v46 + 1) = a20;
  v47 = &v33[OBJC_IVAR____TtC13CoreIDVShared24IdentityProofingUIConfig_minLength];
  *v47 = a21;
  v47[8] = a22 & 1;
  v48 = &v33[OBJC_IVAR____TtC13CoreIDVShared24IdentityProofingUIConfig_maxLength];
  *v48 = a23;
  v48[8] = a24 & 1;
  v49 = &v33[OBJC_IVAR____TtC13CoreIDVShared24IdentityProofingUIConfig_placeholder];
  *v49 = a25;
  *(v49 + 1) = a26;
  v50 = &v33[OBJC_IVAR____TtC13CoreIDVShared24IdentityProofingUIConfig_displayName];
  *v50 = a27;
  *(v50 + 1) = a28;
  *&v33[OBJC_IVAR____TtC13CoreIDVShared24IdentityProofingUIConfig_imageAssetsData] = a29;
  *&v33[OBJC_IVAR____TtC13CoreIDVShared24IdentityProofingUIConfig_options] = a30;
  v57.receiver = v33;
  v33[OBJC_IVAR____TtC13CoreIDVShared24IdentityProofingUIConfig_isUIEnabled] = a31;
  v51 = &v33[OBJC_IVAR____TtC13CoreIDVShared24IdentityProofingUIConfig_privacyLinkIdentifier];
  *v51 = a32;
  *(v51 + 1) = a33;
  return objc_msgSendSuper2(&v57, sel_init);
}

Swift::Void __swiftcall IdentityProofingUIConfig.encode(with:)(NSCoder with)
{
  v3 = sub_225CCE444();
  v4 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];

  if (*(v1 + OBJC_IVAR____TtC13CoreIDVShared24IdentityProofingUIConfig_title + 8))
  {
    v5 = sub_225CCE444();
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR____TtC13CoreIDVShared24IdentityProofingUIConfig_subTitle + 8))
  {
    v7 = sub_225CCE444();
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v7 forKey:v8];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR____TtC13CoreIDVShared24IdentityProofingUIConfig_url + 8))
  {
    v9 = sub_225CCE444();
  }

  else
  {
    v9 = 0;
  }

  v10 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v9 forKey:v10];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR____TtC13CoreIDVShared24IdentityProofingUIConfig_primaryButtonTitle + 8))
  {
    v11 = sub_225CCE444();
  }

  else
  {
    v11 = 0;
  }

  v12 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v11 forKey:v12];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR____TtC13CoreIDVShared24IdentityProofingUIConfig_secondaryButtonTitle + 8))
  {
    v13 = sub_225CCE444();
  }

  else
  {
    v13 = 0;
  }

  v14 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v13 forKey:v14];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR____TtC13CoreIDVShared24IdentityProofingUIConfig_tertiaryButtonTitle + 8))
  {
    v15 = sub_225CCE444();
  }

  else
  {
    v15 = 0;
  }

  v16 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v15 forKey:v16];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR____TtC13CoreIDVShared24IdentityProofingUIConfig_privacyLinkButtonTitle + 8))
  {
    v17 = sub_225CCE444();
  }

  else
  {
    v17 = 0;
  }

  v18 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v17 forKey:v18];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR____TtC13CoreIDVShared24IdentityProofingUIConfig_messages))
  {
    v19 = sub_225CCE7F4();
  }

  else
  {
    v19 = 0;
  }

  v20 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v19 forKey:v20];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR____TtC13CoreIDVShared24IdentityProofingUIConfig_fields))
  {
    v21 = sub_225CCE7F4();
  }

  else
  {
    v21 = 0;
  }

  v22 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v21 forKey:v22];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR____TtC13CoreIDVShared24IdentityProofingUIConfig_caption + 8))
  {
    v23 = sub_225CCE444();
  }

  else
  {
    v23 = 0;
  }

  v24 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v23 forKey:v24];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR____TtC13CoreIDVShared24IdentityProofingUIConfig_minLength + 8))
  {
    v25 = 0;
  }

  else
  {
    v25 = sub_225CCEC44();
  }

  v26 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v25 forKey:v26];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR____TtC13CoreIDVShared24IdentityProofingUIConfig_maxLength + 8))
  {
    v27 = 0;
  }

  else
  {
    v27 = sub_225CCEC44();
  }

  v28 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v27 forKey:v28];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR____TtC13CoreIDVShared24IdentityProofingUIConfig_placeholder + 8))
  {
    v29 = sub_225CCE444();
  }

  else
  {
    v29 = 0;
  }

  v30 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v29 forKey:v30];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR____TtC13CoreIDVShared24IdentityProofingUIConfig_displayName + 8))
  {
    v31 = sub_225CCE444();
  }

  else
  {
    v31 = 0;
  }

  v32 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v31 forKey:v32];
  swift_unknownObjectRelease();

  v33 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared24IdentityProofingUIConfig_imageAssetsData);
  if (v33)
  {
    type metadata accessor for IdentityProofingAssetData();
    v33 = sub_225CCE7F4();
  }

  v34 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v33 forKey:v34];
  swift_unknownObjectRelease();

  v35 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared24IdentityProofingUIConfig_options);
  if (v35)
  {
    type metadata accessor for IdentityProofingUnorderedUIElementOption();
    v35 = sub_225CCE7F4();
  }

  v36 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v35 forKey:v36];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR____TtC13CoreIDVShared24IdentityProofingUIConfig_isUIEnabled) == 2)
  {
    v37 = 0;
  }

  else
  {
    v37 = sub_225CCE8E4();
  }

  v38 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v37 forKey:v38];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR____TtC13CoreIDVShared24IdentityProofingUIConfig_privacyLinkIdentifier + 8))
  {
    v39 = sub_225CCE444();
  }

  else
  {
    v39 = 0;
  }

  v40 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v39 forKey:v40];
  swift_unknownObjectRelease();
}

id IdentityProofingUIConfig.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_225B6F118(a1);

  return v4;
}

id IdentityProofingUIConfig.init(coder:)(void *a1)
{
  v2 = sub_225B6F118(a1);

  return v2;
}

id IdentityProofingUIConfig.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_225B6EF74()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_2259D8718(0, &qword_27D73DD80, 0x277CBEA90);
  v3 = sub_225CCEF14();
  if (v3)
  {
    v4 = v3;
    v5 = sub_225CCCFA4();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xF000000000000000;
  }

  v8 = &v0[OBJC_IVAR____TtC13CoreIDVShared25IdentityProofingAssetData_twoX];
  *v8 = v5;
  v8[1] = v7;
  v9 = sub_225CCEF14();
  if (v9)
  {
    v10 = v9;
    v11 = sub_225CCCFA4();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0xF000000000000000;
  }

  v14 = &v0[OBJC_IVAR____TtC13CoreIDVShared25IdentityProofingAssetData_threeX];
  *v14 = v11;
  v14[1] = v13;
  sub_2259D8718(0, &qword_281059A60, 0x277CCACA8);
  v15 = sub_225CCEF14();
  if (v15)
  {
    v16 = v15;
    v17 = sub_225CCE474();
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0;
  }

  v20 = &v1[OBJC_IVAR____TtC13CoreIDVShared25IdentityProofingAssetData_assetID];
  *v20 = v17;
  v20[1] = v19;
  v22.receiver = v1;
  v22.super_class = ObjectType;
  return objc_msgSendSuper2(&v22, sel_init);
}

id sub_225B6F118(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_2259D8718(0, &qword_281059A60, 0x277CCACA8);
  result = sub_225CCEF14();
  if (result)
  {
    v7 = result;
    v8 = sub_225CCE474();
    v10 = v9;

    v11 = &v2[OBJC_IVAR____TtC13CoreIDVShared24IdentityProofingUIConfig_view];
    *v11 = v8;
    v11[1] = v10;
    v12 = sub_225CCEF14();
    if (v12)
    {
      v13 = v12;
      v14 = sub_225CCE474();
      v16 = v15;
    }

    else
    {
      v14 = 0;
      v16 = 0;
    }

    v17 = &v2[OBJC_IVAR____TtC13CoreIDVShared24IdentityProofingUIConfig_title];
    *v17 = v14;
    v17[1] = v16;
    v18 = sub_225CCEF14();
    if (v18)
    {
      v19 = v18;
      v20 = sub_225CCE474();
      v22 = v21;
    }

    else
    {
      v20 = 0;
      v22 = 0;
    }

    v23 = &v2[OBJC_IVAR____TtC13CoreIDVShared24IdentityProofingUIConfig_subTitle];
    *v23 = v20;
    v23[1] = v22;
    v24 = sub_225CCEF14();
    if (v24)
    {
      v25 = v24;
      v26 = sub_225CCE474();
      v28 = v27;
    }

    else
    {
      v26 = 0;
      v28 = 0;
    }

    v29 = &v2[OBJC_IVAR____TtC13CoreIDVShared24IdentityProofingUIConfig_url];
    *v29 = v26;
    v29[1] = v28;
    v30 = sub_225CCEF14();
    if (v30)
    {
      v31 = v30;
      v32 = sub_225CCE474();
      v34 = v33;
    }

    else
    {
      v32 = 0;
      v34 = 0;
    }

    v35 = &v2[OBJC_IVAR____TtC13CoreIDVShared24IdentityProofingUIConfig_primaryButtonTitle];
    *v35 = v32;
    v35[1] = v34;
    v36 = sub_225CCEF14();
    if (v36)
    {
      v37 = v36;
      v38 = sub_225CCE474();
      v40 = v39;
    }

    else
    {
      v38 = 0;
      v40 = 0;
    }

    v41 = &v2[OBJC_IVAR____TtC13CoreIDVShared24IdentityProofingUIConfig_secondaryButtonTitle];
    *v41 = v38;
    v41[1] = v40;
    v42 = sub_225CCEF14();
    if (v42)
    {
      v43 = v42;
      v44 = sub_225CCE474();
      v46 = v45;
    }

    else
    {
      v44 = 0;
      v46 = 0;
    }

    v47 = &v2[OBJC_IVAR____TtC13CoreIDVShared24IdentityProofingUIConfig_tertiaryButtonTitle];
    *v47 = v44;
    v47[1] = v46;
    v48 = sub_225CCEF14();
    if (v48)
    {
      v49 = v48;
      v50 = sub_225CCE474();
      v52 = v51;
    }

    else
    {
      v50 = 0;
      v52 = 0;
    }

    v53 = &v2[OBJC_IVAR____TtC13CoreIDVShared24IdentityProofingUIConfig_privacyLinkButtonTitle];
    *v53 = v50;
    v53[1] = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73DC80, &unk_225CEF7D0);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_225CD4890;
    v55 = sub_2259D8718(0, &qword_281059AA0, 0x277CBEA60);
    *(v54 + 32) = v55;
    *(v54 + 40) = v5;
    sub_225CCEF24();

    if (v102)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0, &unk_225CD76A0);
      v56 = swift_dynamicCast();
      v57 = v99;
      if (!v56)
      {
        v57 = 0;
      }
    }

    else
    {
      sub_225B5445C(v101);
      v57 = 0;
    }

    *&v2[OBJC_IVAR____TtC13CoreIDVShared24IdentityProofingUIConfig_messages] = v57;
    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_225CD4890;
    *(v58 + 32) = v55;
    *(v58 + 40) = v5;
    sub_225CCEF24();

    if (v102)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0, &unk_225CD76A0);
      v59 = swift_dynamicCast();
      v60 = v99;
      if (!v59)
      {
        v60 = 0;
      }
    }

    else
    {
      sub_225B5445C(v101);
      v60 = 0;
    }

    *&v2[OBJC_IVAR____TtC13CoreIDVShared24IdentityProofingUIConfig_fields] = v60;
    v61 = sub_225CCEF14();
    if (v61)
    {
      v62 = v61;
      v63 = sub_225CCE474();
      v65 = v64;
    }

    else
    {
      v63 = 0;
      v65 = 0;
    }

    v66 = &v2[OBJC_IVAR____TtC13CoreIDVShared24IdentityProofingUIConfig_caption];
    *v66 = v63;
    v66[1] = v65;
    v67 = sub_225CCE444();
    v68 = [a1 decodeIntegerForKey_];

    v69 = &v2[OBJC_IVAR____TtC13CoreIDVShared24IdentityProofingUIConfig_minLength];
    *v69 = v68;
    v69[8] = 0;
    v70 = sub_225CCE444();
    v71 = [a1 decodeIntegerForKey_];

    v72 = &v2[OBJC_IVAR____TtC13CoreIDVShared24IdentityProofingUIConfig_maxLength];
    *v72 = v71;
    v72[8] = 0;
    v73 = sub_225CCEF14();
    if (v73)
    {
      v74 = v73;
      v75 = sub_225CCE474();
      v77 = v76;
    }

    else
    {
      v75 = 0;
      v77 = 0;
    }

    v78 = &v2[OBJC_IVAR____TtC13CoreIDVShared24IdentityProofingUIConfig_placeholder];
    *v78 = v75;
    v78[1] = v77;
    v79 = sub_225CCEF14();
    if (v79)
    {
      v80 = v79;
      v81 = sub_225CCE474();
      v83 = v82;
    }

    else
    {
      v81 = 0;
      v83 = 0;
    }

    v84 = &v2[OBJC_IVAR____TtC13CoreIDVShared24IdentityProofingUIConfig_displayName];
    *v84 = v81;
    v84[1] = v83;
    v85 = swift_allocObject();
    *(v85 + 16) = xmmword_225CD4890;
    *(v85 + 32) = v55;
    *(v85 + 40) = type metadata accessor for IdentityProofingAssetData();
    sub_225CCEF24();

    if (v102)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E4E8, &qword_225CF0DD8);
      v86 = swift_dynamicCast();
      v87 = v99;
      if (!v86)
      {
        v87 = 0;
      }
    }

    else
    {
      sub_225B5445C(v101);
      v87 = 0;
    }

    *&v2[OBJC_IVAR____TtC13CoreIDVShared24IdentityProofingUIConfig_imageAssetsData] = v87;
    v88 = swift_allocObject();
    *(v88 + 16) = xmmword_225CD4890;
    *(v88 + 32) = v55;
    *(v88 + 40) = type metadata accessor for IdentityProofingUnorderedUIElementOption();
    sub_225CCEF24();

    if (v102)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E4E0, &qword_225CF0DD0);
      v89 = swift_dynamicCast();
      v90 = v99;
      if (!v89)
      {
        v90 = 0;
      }
    }

    else
    {
      sub_225B5445C(v101);
      v90 = 0;
    }

    *&v2[OBJC_IVAR____TtC13CoreIDVShared24IdentityProofingUIConfig_options] = v90;
    v91 = sub_225CCE444();
    v92 = [a1 decodeBoolForKey_];

    v2[OBJC_IVAR____TtC13CoreIDVShared24IdentityProofingUIConfig_isUIEnabled] = v92;
    v93 = sub_225CCEF14();
    if (v93)
    {
      v94 = v93;
      v95 = sub_225CCE474();
      v97 = v96;
    }

    else
    {
      v95 = 0;
      v97 = 0;
    }

    v98 = &v2[OBJC_IVAR____TtC13CoreIDVShared24IdentityProofingUIConfig_privacyLinkIdentifier];
    *v98 = v95;
    v98[1] = v97;
    v100.receiver = v2;
    v100.super_class = ObjectType;
    return objc_msgSendSuper2(&v100, sel_init, 2, 4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t dispatch thunk of IdentityProofingUIConfig.__allocating_init(view:title:subTitle:url:primaryButtonTitle:secondaryButtonTitle:tertiaryButtonTitle:privacyLinktButtonTitle:messages:fields:caption:minLength:maxLength:placeholder:displayName:imageAssetsData:options:isUIEnabled:privacyLinkIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v25 = *(v23 + 232);
  LOBYTE(a22) = a22 & 1;

  return v25(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23);
}

uint64_t sub_225B6FAB4(unsigned __int8 a1)
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225B6FBBC(unsigned __int8 a1)
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225B6FCD0(unsigned __int8 a1)
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225B6FDE8(uint64_t a1, unsigned __int8 a2)
{
  sub_225CCE5B4();
}

uint64_t sub_225B6FF8C(uint64_t a1, unsigned __int8 a2)
{
  sub_225CCE5B4();
}

uint64_t sub_225B70114(uint64_t a1, unsigned __int8 a2)
{
  sub_225CCE5B4();
}

uint64_t sub_225B7029C(uint64_t a1, unsigned __int8 a2)
{
  sub_225CCE5B4();
}

uint64_t sub_225B70400(uint64_t a1, unsigned __int8 a2)
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225B70578(uint64_t a1, unsigned __int8 a2)
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225B70698(uint64_t a1, unsigned __int8 a2)
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225B707AC(uint64_t a1, unsigned __int8 a2)
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225B708B0(uint64_t a1, unsigned __int8 a2)
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225B709B4(uint64_t a1, unsigned __int8 a2)
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225B70ABC(uint64_t a1, unsigned __int8 a2)
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225B70C04(uint64_t a1, unsigned __int8 a2)
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225B70C58(uint64_t a1, unsigned __int8 a2)
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225B70D8C(uint64_t a1, unsigned __int8 a2)
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225B70EA4(uint64_t a1, unsigned __int8 a2)
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225B70FE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65726564726F6E75 && a2 == 0xEB00000000495564)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_225CCF934();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_225B71070(uint64_t a1)
{
  v2 = sub_225B71294();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B710AC(uint64_t a1)
{
  v2 = sub_225B71294();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IdentityProofingUnorderedUI.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E4F0, &qword_225CF0DE0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225B71294();

  sub_225CCFCE4();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E500, &qword_225CF0DE8);
  sub_225B714F4(&qword_27D73E508, sub_225B712E8, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
  sub_225CCF774();

  return (*(v4 + 8))(v6, v3);
}