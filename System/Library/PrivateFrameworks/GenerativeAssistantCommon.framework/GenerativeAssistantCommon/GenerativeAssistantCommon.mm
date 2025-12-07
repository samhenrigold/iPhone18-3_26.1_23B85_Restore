uint64_t static GenerativeAssistantProvider.shared.getter()
{
  type metadata accessor for GenerativeAssistantProvider();

  return swift_initStaticObject();
}

uint64_t sub_221C41B2C@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_221C41B90@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = off_27CFDF1E0;
  *a1 = qword_27CFDF1D8;
  a1[1] = v2;
}

uint64_t sub_221C41C10@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC25GenerativeAssistantCommon35CustomErrorWithLocalizedDescription_errorCode;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_221C41C68(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC25GenerativeAssistantCommon35CustomErrorWithLocalizedDescription_errorCode;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t UIImage.getPlatformData()()
{
  v1 = UIImagePNGRepresentation(v0);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_221C56D80();

  return v3;
}

id static UIImage.getPlatformImageFrom(data:)(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    sub_221C41EA8(a1, a2);
    v5 = sub_221C56D70();
    v6 = [v4 initWithData_];

    sub_221C41EFC(a1, a2);
    if (v6)
    {
      return v6;
    }
  }

  v8 = objc_allocWithZone(MEMORY[0x277D755B8]);

  return [v8 init];
}

id static UIImage.tryToGetPlatformImageFrom(data:)(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    return 0;
  }

  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_221C41EA8(a1, a2);
  v5 = sub_221C56D70();
  v6 = [v4 initWithData_];

  sub_221C41EFC(a1, a2);
  result = v6;
  if (!v6)
  {
    return 0;
  }

  return result;
}

void sub_221C41EA8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

void sub_221C41EFC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    sub_221C41F10(a1, a2);
  }
}

void sub_221C41F10(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

Swift::Int_optional __swiftcall UIImage.getFileSize()()
{
  v1 = UIImagePNGRepresentation(v0);
  v2 = v1;
  if (!v1)
  {
    goto LABEL_12;
  }

  v3 = sub_221C56D80();
  v5 = v4;

  v6 = v5;
  v7 = v5 >> 62;
  if ((v5 >> 62) > 1)
  {
    if (v7 != 2)
    {
      sub_221C41F10(v3, v5);
      v1 = 0;
      goto LABEL_12;
    }

    v9 = *(v3 + 16);
    v8 = *(v3 + 24);
    sub_221C41F10(v3, v6);
    v1 = v8 - v9;
    if (!__OFSUB__(v8, v9))
    {
      goto LABEL_12;
    }

    __break(1u);
  }

  else if (!v7)
  {
    sub_221C41F10(v3, v5);
    v1 = BYTE6(v5);
    goto LABEL_12;
  }

  sub_221C41F10(v3, v6);
  if (__OFSUB__(HIDWORD(v3), v3))
  {
    __break(1u);
    goto LABEL_14;
  }

  v1 = HIDWORD(v3) - v3;
LABEL_12:
  v10 = v2 == 0;
LABEL_14:
  result.value = v1;
  result.is_nil = v10;
  return result;
}

Swift::String_optional __swiftcall UIImage.getFileExtension()()
{
  v1 = [v0 CGImage];
  if (!v1)
  {
    goto LABEL_5;
  }

  v2 = v1;
  v3 = CGImageGetUTType(v1);
  if (!v3)
  {

    v1 = 0;
LABEL_5:
    v8 = 0;
    goto LABEL_6;
  }

  v4 = v3;
  v5 = sub_221C57090();
  v7 = v6;

  v8 = v7;
  v1 = v5;
LABEL_6:
  result.value._object = v8;
  result.value._countAndFlagsBits = v1;
  return result;
}

uint64_t sub_221C420B4()
{
  v0 = sub_221C56F90();
  __swift_allocate_value_buffer(v0, qword_27CFDEEF8);
  __swift_project_value_buffer(v0, qword_27CFDEEF8);
  return sub_221C56F80();
}

uint64_t static Logger.platformImage.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CFDEEF0 != -1)
  {
    swift_once();
  }

  v2 = sub_221C56F90();
  v3 = __swift_project_value_buffer(v2, qword_27CFDEEF8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_221C422DC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_221C422FC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

void sub_221C42338(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t GenerativeAssistantProvider.LLMProvider.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_221C57200();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_221C423FC()
{
  sub_221C572C0();
  sub_221C570B0();
  return sub_221C572E0();
}

uint64_t sub_221C42468(uint64_t a1)
{
  sub_221C572C0();
  sub_221C570B0();
  return sub_221C572E0();
}

uint64_t sub_221C424B8@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_221C57200();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_221C42528()
{
  type metadata accessor for GenerativeAssistantProvider();
  result = swift_initStaticObject();
  qword_27CFDEF70 = result;
  return result;
}

uint64_t sub_221C42580()
{
  sub_221C56DF0();
  v0 = v7;
  v1 = v8;
  v2 = __swift_project_boxed_opaque_existential_1(v6, v7);
  v5[3] = v0;
  v5[4] = *(v1 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v5);
  (*(*(v0 - 8) + 16))(boxed_opaque_existential_1, v2, v0);
  sub_221C56E40();
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_221C42718()
{
  v0 = sub_221C56E50();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_221C56DF0();
  v4 = v11;
  v5 = v12;
  v6 = __swift_project_boxed_opaque_existential_1(v10, v11);
  v9[3] = v4;
  v9[4] = *(v5 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_1, v6, v4);
  sub_221C56E40();
  __swift_destroy_boxed_opaque_existential_1(v10);
  sub_221C56FE0();
  return (*(v1 + 8))(v3, v0);
}

unint64_t sub_221C42884()
{
  result = qword_27CFDEF78;
  if (!qword_27CFDEF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFDEF78);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GenerativeAssistantProvider.LLMProvider(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for GenerativeAssistantProvider.LLMProvider(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t SupportedDocumentType.localizedDescription()()
{
  v0 = sub_221C56DA0();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_221C56D50();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_221C57070();
  MEMORY[0x28223BE20](v5 - 8);
  sub_221C57060();
  if (qword_27CFDEF38 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v1, qword_27CFE1130);
  (*(v2 + 16))(v4, v6, v1);
  sub_221C56D90();
  return sub_221C56D60();
}

Swift::String __swiftcall SupportedDocumentType.description()()
{
  v1 = 0xEC000000746E656DLL;
  v2 = 0x75636F4420464450;
  v3 = *v0;
  v4 = 0x75636F4420465452;
  if (v3 != 7)
  {
    v4 = 0x75636F4420545854;
  }

  v5 = 0x6F44207365676150;
  v6 = 0x8000000221C59230;
  if (v3 == 5)
  {
    v6 = 0xEE00746E656D7563;
  }

  else
  {
    v5 = 0xD000000000000014;
  }

  if (*v0 > 6u)
  {
    v7 = 0xEC000000746E656DLL;
  }

  else
  {
    v4 = v5;
    v7 = v6;
  }

  v8 = 0xE700000000000000;
  v9 = 0x65676170626557;
  if (v3 != 3)
  {
    v9 = 0xD000000000000013;
    v8 = 0x8000000221C59250;
  }

  if (v3 >= 2)
  {
    v2 = 0x6F44206567616D49;
    v1 = 0xEE00746E656D7563;
  }

  if (*v0 > 2u)
  {
    v2 = v9;
    v1 = v8;
  }

  if (*v0 <= 4u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v4;
  }

  if (*v0 <= 4u)
  {
    v11 = v1;
  }

  else
  {
    v11 = v7;
  }

  result._object = v11;
  result._countAndFlagsBits = v10;
  return result;
}

uint64_t sub_221C42E4C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x6D75636F44666470;
    v6 = 0x6F44736567616D69;
    if (a1 != 2)
    {
      v6 = 0x4165676170626577;
    }

    if (a1)
    {
      v5 = 0x4165676170626577;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x4465746F6E79656BLL;
    v2 = 0x7478655468636972;
    if (a1 != 7)
    {
      v2 = 0x7865546E69616C70;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x44737265626D756ELL;
    if (a1 != 4)
    {
      v3 = 0x636F447365676170;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_221C42FC0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_221C458B0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_221C43000(uint64_t a1)
{
  v2 = sub_221C44BDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_221C4303C(uint64_t a1)
{
  v2 = sub_221C44BDC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_221C43078(uint64_t a1)
{
  v2 = sub_221C44E28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_221C430B4(uint64_t a1)
{
  v2 = sub_221C44E28();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_221C430F0(uint64_t a1)
{
  v2 = sub_221C44CD8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_221C4312C(uint64_t a1)
{
  v2 = sub_221C44CD8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_221C43168(uint64_t a1)
{
  v2 = sub_221C44D80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_221C431A4(uint64_t a1)
{
  v2 = sub_221C44D80();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_221C431E0(uint64_t a1)
{
  v2 = sub_221C44D2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_221C4321C(uint64_t a1)
{
  v2 = sub_221C44D2C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_221C43258(uint64_t a1)
{
  v2 = sub_221C44ED0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_221C43294(uint64_t a1)
{
  v2 = sub_221C44ED0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_221C432D0(uint64_t a1)
{
  v2 = sub_221C44C30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_221C4330C(uint64_t a1)
{
  v2 = sub_221C44C30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_221C43348(uint64_t a1)
{
  v2 = sub_221C44C84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_221C43384(uint64_t a1)
{
  v2 = sub_221C44C84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_221C433C0(uint64_t a1)
{
  v2 = sub_221C44DD4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_221C433FC(uint64_t a1)
{
  v2 = sub_221C44DD4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_221C43438(uint64_t a1)
{
  v2 = sub_221C44E7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_221C43474(uint64_t a1)
{
  v2 = sub_221C44E7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SupportedDocumentType.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFDEF80, &qword_221C57A80);
  v64 = *(v4 - 8);
  v65 = v4;
  MEMORY[0x28223BE20](v4);
  v63 = &v47 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFDEF88, &qword_221C57A88);
  v61 = *(v6 - 8);
  v62 = v6;
  MEMORY[0x28223BE20](v6);
  v60 = &v47 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFDEF90, &qword_221C57A90);
  v58 = *(v8 - 8);
  v59 = v8;
  MEMORY[0x28223BE20](v8);
  v57 = &v47 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFDEF98, &qword_221C57A98);
  v55 = *(v10 - 8);
  v56 = v10;
  MEMORY[0x28223BE20](v10);
  v54 = &v47 - v11;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFDEFA0, &qword_221C57AA0);
  v52 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v51 = &v47 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFDEFA8, &qword_221C57AA8);
  v70 = *(v13 - 8);
  v71 = v13;
  MEMORY[0x28223BE20](v13);
  v69 = &v47 - v14;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFDEFB0, &qword_221C57AB0);
  v68 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v67 = &v47 - v15;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFDEFB8, &qword_221C57AB8);
  v66 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v17 = &v47 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFDEFC0, &qword_221C57AC0);
  v48 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v47 - v19;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFDEFC8, &qword_221C57AC8);
  v21 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v23 = &v47 - v22;
  v24 = *v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_221C44BDC();
  v72 = v23;
  sub_221C57300();
  v25 = (v21 + 8);
  if (v24 <= 3)
  {
    v64 = v18;
    v65 = (v21 + 8);
    v31 = v66;
    v32 = v67;
    v33 = v68;
    v34 = v69;
    v35 = v70;
    v36 = v71;
    if (v24 > 1)
    {
      if (v24 != 2)
      {
        v77 = 3;
        sub_221C44DD4();
        v44 = v34;
        v46 = v72;
        v45 = v73;
        sub_221C57240();
        (*(v35 + 8))(v44, v36);
        return (*v65)(v46, v45);
      }

      v76 = 2;
      sub_221C44E28();
      v38 = v72;
      v39 = v73;
      sub_221C57240();
      (*(v33 + 8))(v32, v50);
    }

    else
    {
      if (v24)
      {
        v75 = 1;
        sub_221C44E7C();
        v42 = v72;
        v43 = v73;
        sub_221C57240();
        (*(v31 + 8))(v17, v49);
        return (*v65)(v42, v43);
      }

      v74[0] = 0;
      sub_221C44ED0();
      v37 = v20;
      v38 = v72;
      v39 = v73;
      sub_221C57240();
      (*(v48 + 8))(v37, v64);
    }

    return (*v65)(v38, v39);
  }

  if (v24 > 5)
  {
    if (v24 == 6)
    {
      v80 = 6;
      sub_221C44CD8();
      v26 = v57;
      v27 = v72;
      v28 = v73;
      sub_221C57240();
      v30 = v58;
      v29 = v59;
    }

    else if (v24 == 7)
    {
      v81 = 7;
      sub_221C44C84();
      v26 = v60;
      v27 = v72;
      v28 = v73;
      sub_221C57240();
      v30 = v61;
      v29 = v62;
    }

    else
    {
      v82 = 8;
      sub_221C44C30();
      v26 = v63;
      v27 = v72;
      v28 = v73;
      sub_221C57240();
      v30 = v64;
      v29 = v65;
    }

    goto LABEL_19;
  }

  if (v24 != 4)
  {
    v79 = 5;
    sub_221C44D2C();
    v26 = v54;
    v27 = v72;
    v28 = v73;
    sub_221C57240();
    v30 = v55;
    v29 = v56;
LABEL_19:
    (*(v30 + 8))(v26, v29);
    return (*v25)(v27, v28);
  }

  v78 = 4;
  sub_221C44D80();
  v41 = v51;
  v27 = v72;
  v28 = v73;
  sub_221C57240();
  (*(v52 + 8))(v41, v53);
  return (*v25)(v27, v28);
}

uint64_t SupportedDocumentType.hashValue.getter()
{
  v1 = *v0;
  sub_221C572C0();
  MEMORY[0x223DA5430](v1);
  return sub_221C572E0();
}

uint64_t SupportedDocumentType.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v81 = a2;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFDF020, &qword_221C57AD0);
  v70 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v76 = &v52 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFDF028, &qword_221C57AD8);
  v71 = *(v4 - 8);
  v72 = v4;
  MEMORY[0x28223BE20](v4);
  v75 = &v52 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFDF030, &qword_221C57AE0);
  v68 = *(v6 - 8);
  v69 = v6;
  MEMORY[0x28223BE20](v6);
  v80 = &v52 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFDF038, &qword_221C57AE8);
  v66 = *(v8 - 8);
  v67 = v8;
  MEMORY[0x28223BE20](v8);
  v79 = &v52 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFDF040, &qword_221C57AF0);
  v11 = *(v10 - 8);
  v64 = v10;
  v65 = v11;
  MEMORY[0x28223BE20](v10);
  v78 = &v52 - v12;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFDF048, &qword_221C57AF8);
  v63 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v77 = &v52 - v13;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFDF050, &qword_221C57B00);
  v61 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v74 = &v52 - v14;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFDF058, &qword_221C57B08);
  v59 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v16 = &v52 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFDF060, &qword_221C57B10);
  v57 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v52 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFDF068, &qword_221C57B18);
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v52 - v22;
  v24 = a1[3];
  v83 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  sub_221C44BDC();
  v25 = v82;
  sub_221C572F0();
  if (v25)
  {
    goto LABEL_12;
  }

  v54 = v19;
  v53 = v17;
  v27 = v77;
  v26 = v78;
  v29 = v79;
  v28 = v80;
  v82 = v21;
  v55 = 0;
  v30 = v81;
  v31 = sub_221C57230();
  if (*(v31 + 16) == 1)
  {
    v56 = *(v31 + 32);
    if (v56 != 9)
    {
      if (v56 <= 3)
      {
        if (v56 <= 1)
        {
          if (v56)
          {
            v85 = 1;
            sub_221C44E7C();
            v46 = v55;
            sub_221C57210();
            if (!v46)
            {
              (*(v59 + 8))(v16, v58);
              (*(v82 + 8))(v23, v20);
              goto LABEL_41;
            }
          }

          else
          {
            v84 = 0;
            sub_221C44ED0();
            v39 = v54;
            v40 = v55;
            sub_221C57210();
            if (!v40)
            {
              (*(v57 + 8))(v39, v53);
              (*(v82 + 8))(v23, v20);
              goto LABEL_41;
            }
          }

LABEL_25:
          (*(v82 + 8))(v23, v20);
          goto LABEL_11;
        }

        if (v56 == 2)
        {
          v86 = 2;
          sub_221C44E28();
          v41 = v74;
          v42 = v55;
          sub_221C57210();
          v43 = v82;
          if (!v42)
          {
            (*(v61 + 8))(v41, v60);
LABEL_40:
            (*(v43 + 8))(v23, v20);
            goto LABEL_41;
          }
        }

        else
        {
          v87 = 3;
          sub_221C44DD4();
          v47 = v55;
          sub_221C57210();
          v43 = v82;
          if (!v47)
          {
            (*(v63 + 8))(v27, v62);
            goto LABEL_40;
          }
        }
      }

      else
      {
        if (v56 > 5)
        {
          if (v56 == 6)
          {
            v90 = 6;
            sub_221C44CD8();
            v45 = v55;
            sub_221C57210();
            if (!v45)
            {
              (*(v68 + 8))(v28, v69);
              (*(v82 + 8))(v23, v20);
              goto LABEL_41;
            }
          }

          else if (v56 == 7)
          {
            v91 = 7;
            sub_221C44C84();
            v32 = v75;
            v33 = v55;
            sub_221C57210();
            if (!v33)
            {
              (*(v71 + 8))(v32, v72);
              (*(v82 + 8))(v23, v20);
LABEL_41:
              swift_unknownObjectRelease();
              v37 = v83;
              goto LABEL_42;
            }
          }

          else
          {
            v48 = v30;
            v92 = 8;
            sub_221C44C30();
            v49 = v76;
            v50 = v55;
            sub_221C57210();
            if (!v50)
            {
              (*(v70 + 8))(v49, v73);
              (*(v82 + 8))(v23, v20);
              swift_unknownObjectRelease();
              v37 = v83;
              v30 = v48;
LABEL_42:
              *v30 = v56;
              return __swift_destroy_boxed_opaque_existential_1(v37);
            }
          }

          goto LABEL_25;
        }

        if (v56 == 4)
        {
          v88 = 4;
          sub_221C44D80();
          v44 = v55;
          sub_221C57210();
          v43 = v82;
          if (!v44)
          {
            (*(v65 + 8))(v26, v64);
            goto LABEL_40;
          }
        }

        else
        {
          v89 = 5;
          sub_221C44D2C();
          v51 = v55;
          sub_221C57210();
          v43 = v82;
          if (!v51)
          {
            (*(v66 + 8))(v29, v67);
            goto LABEL_40;
          }
        }
      }

      (*(v43 + 8))(v23, v20);
      goto LABEL_11;
    }
  }

  v34 = sub_221C571A0();
  swift_allocError();
  v36 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFDF070, &qword_221C57B20);
  *v36 = &type metadata for SupportedDocumentType;
  sub_221C57220();
  sub_221C57190();
  (*(*(v34 - 8) + 104))(v36, *MEMORY[0x277D84160], v34);
  swift_willThrow();
  (*(v82 + 8))(v23, v20);
LABEL_11:
  swift_unknownObjectRelease();
LABEL_12:
  v37 = v83;
  return __swift_destroy_boxed_opaque_existential_1(v37);
}

uint64_t sub_221C44AD8()
{
  v1 = *v0;
  sub_221C572C0();
  MEMORY[0x223DA5430](v1);
  return sub_221C572E0();
}

uint64_t sub_221C44B20(uint64_t a1)
{
  v2 = *v1;
  sub_221C572C0();
  MEMORY[0x223DA5430](v2);
  return sub_221C572E0();
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_221C44BDC()
{
  result = qword_27CFDEFD0;
  if (!qword_27CFDEFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFDEFD0);
  }

  return result;
}

unint64_t sub_221C44C30()
{
  result = qword_27CFDEFD8;
  if (!qword_27CFDEFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFDEFD8);
  }

  return result;
}

unint64_t sub_221C44C84()
{
  result = qword_27CFDEFE0;
  if (!qword_27CFDEFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFDEFE0);
  }

  return result;
}

unint64_t sub_221C44CD8()
{
  result = qword_27CFDEFE8;
  if (!qword_27CFDEFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFDEFE8);
  }

  return result;
}

unint64_t sub_221C44D2C()
{
  result = qword_27CFDEFF0;
  if (!qword_27CFDEFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFDEFF0);
  }

  return result;
}

unint64_t sub_221C44D80()
{
  result = qword_27CFDEFF8;
  if (!qword_27CFDEFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFDEFF8);
  }

  return result;
}

unint64_t sub_221C44DD4()
{
  result = qword_27CFDF000;
  if (!qword_27CFDF000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFDF000);
  }

  return result;
}

unint64_t sub_221C44E28()
{
  result = qword_27CFDF008;
  if (!qword_27CFDF008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFDF008);
  }

  return result;
}

unint64_t sub_221C44E7C()
{
  result = qword_27CFDF010;
  if (!qword_27CFDF010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFDF010);
  }

  return result;
}

unint64_t sub_221C44ED0()
{
  result = qword_27CFDF018;
  if (!qword_27CFDF018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFDF018);
  }

  return result;
}

unint64_t sub_221C44F28()
{
  result = qword_27CFDF078;
  if (!qword_27CFDF078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFDF078);
  }

  return result;
}

uint64_t sub_221C44F98(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_221C45028(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_221C4517C()
{
  result = qword_27CFDF080;
  if (!qword_27CFDF080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFDF080);
  }

  return result;
}

unint64_t sub_221C451D4()
{
  result = qword_27CFDF088;
  if (!qword_27CFDF088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFDF088);
  }

  return result;
}

unint64_t sub_221C4522C()
{
  result = qword_27CFDF090;
  if (!qword_27CFDF090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFDF090);
  }

  return result;
}

unint64_t sub_221C45284()
{
  result = qword_27CFDF098;
  if (!qword_27CFDF098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFDF098);
  }

  return result;
}

unint64_t sub_221C452DC()
{
  result = qword_27CFDF0A0;
  if (!qword_27CFDF0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFDF0A0);
  }

  return result;
}

unint64_t sub_221C45334()
{
  result = qword_27CFDF0A8;
  if (!qword_27CFDF0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFDF0A8);
  }

  return result;
}

unint64_t sub_221C4538C()
{
  result = qword_27CFDF0B0;
  if (!qword_27CFDF0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFDF0B0);
  }

  return result;
}

unint64_t sub_221C453E4()
{
  result = qword_27CFDF0B8;
  if (!qword_27CFDF0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFDF0B8);
  }

  return result;
}

unint64_t sub_221C4543C()
{
  result = qword_27CFDF0C0;
  if (!qword_27CFDF0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFDF0C0);
  }

  return result;
}

unint64_t sub_221C45494()
{
  result = qword_27CFDF0C8;
  if (!qword_27CFDF0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFDF0C8);
  }

  return result;
}

unint64_t sub_221C454EC()
{
  result = qword_27CFDF0D0;
  if (!qword_27CFDF0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFDF0D0);
  }

  return result;
}

unint64_t sub_221C45544()
{
  result = qword_27CFDF0D8;
  if (!qword_27CFDF0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFDF0D8);
  }

  return result;
}

unint64_t sub_221C4559C()
{
  result = qword_27CFDF0E0;
  if (!qword_27CFDF0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFDF0E0);
  }

  return result;
}

unint64_t sub_221C455F4()
{
  result = qword_27CFDF0E8;
  if (!qword_27CFDF0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFDF0E8);
  }

  return result;
}

unint64_t sub_221C4564C()
{
  result = qword_27CFDF0F0;
  if (!qword_27CFDF0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFDF0F0);
  }

  return result;
}

unint64_t sub_221C456A4()
{
  result = qword_27CFDF0F8;
  if (!qword_27CFDF0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFDF0F8);
  }

  return result;
}

unint64_t sub_221C456FC()
{
  result = qword_27CFDF100;
  if (!qword_27CFDF100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFDF100);
  }

  return result;
}

unint64_t sub_221C45754()
{
  result = qword_27CFDF108;
  if (!qword_27CFDF108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFDF108);
  }

  return result;
}

unint64_t sub_221C457AC()
{
  result = qword_27CFDF110;
  if (!qword_27CFDF110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFDF110);
  }

  return result;
}

unint64_t sub_221C45804()
{
  result = qword_27CFDF118;
  if (!qword_27CFDF118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFDF118);
  }

  return result;
}

unint64_t sub_221C4585C()
{
  result = qword_27CFDF120;
  if (!qword_27CFDF120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFDF120);
  }

  return result;
}

uint64_t sub_221C458B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D75636F44666470 && a2 == 0xEB00000000746E65;
  if (v4 || (sub_221C57260() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4165676170626577 && a2 == 0xEC00000046445073 || (sub_221C57260() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F44736567616D69 && a2 == 0xEE00746E656D7563 || (sub_221C57260() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4165676170626577 && a2 == 0xED00006B6E694C73 || (sub_221C57260() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x44737265626D756ELL && a2 == 0xEF746E656D75636FLL || (sub_221C57260() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x636F447365676170 && a2 == 0xED0000746E656D75 || (sub_221C57260() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x4465746F6E79656BLL && a2 == 0xEF746E656D75636FLL || (sub_221C57260() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7478655468636972 && a2 == 0xEC000000656C6946 || (sub_221C57260() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7865546E69616C70 && a2 == 0xED0000656C694674)
  {

    return 8;
  }

  else
  {
    v6 = sub_221C57260();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

id sub_221C45BEC()
{
  result = [objc_allocWithZone(type metadata accessor for GMAvailabilityProvider(0)) init];
  qword_27CFDF128 = result;
  return result;
}

id GMAvailabilityProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static GMAvailabilityProvider.shared.getter()
{
  if (qword_27CFDEF18 != -1)
  {
    swift_once();
  }

  v1 = qword_27CFDF128;

  return v1;
}

uint64_t sub_221C45CB0@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v1 = sub_221C56F10();
  v18 = *(v1 - 8);
  v19 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_221C56E30();
  v4 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_221C56EF0();
  v7 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_221C56F60();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_221C56E00();
  sub_221C56E10();
  (*(v4 + 8))(v6, v16);
  (*(v18 + 104))(v3, *MEMORY[0x277D0E2B8], v19);
  sub_221C56EE0();
  sub_221C56F40();
  (*(v7 + 8))(v9, v17);
  sub_221C56F00();
  return (*(v11 + 8))(v13, v10);
}

BOOL sub_221C45F80()
{
  ObjectType = swift_getObjectType();
  v106 = sub_221C56EB0();
  v102 = *(v106 - 8);
  v0 = MEMORY[0x28223BE20](v106);
  v101 = &v101 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v0);
  v105 = &v101 - v2;
  v116 = sub_221C56E80();
  v104 = *(v116 - 8);
  v3 = MEMORY[0x28223BE20](v116);
  v103 = &v101 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v115 = &v101 - v5;
  v117 = sub_221C56F10();
  v112 = *(v117 - 1);
  MEMORY[0x28223BE20](v117);
  v111 = &v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_221C56E30();
  v7 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v9 = &v101 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_221C56EF0();
  v10 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v12 = &v101 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_221C56F60();
  v13 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v15 = &v101 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_221C56ED0();
  v17 = *(v16 - 8);
  v119 = v16;
  v120 = v17;
  v18 = MEMORY[0x28223BE20](v16);
  v114 = &v101 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v113 = &v101 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v101 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v101 - v25;
  sub_221C56E00();
  sub_221C56E10();
  (*(v7 + 8))(v9, v109);
  (*(v112 + 104))(v111, *MEMORY[0x277D0E2B8], v117);
  sub_221C56EE0();
  sub_221C56F40();
  (*(v10 + 8))(v12, v110);
  sub_221C56F00();
  (*(v13 + 8))(v15, v108);
  if (qword_27CFDEF20 != -1)
  {
    swift_once();
  }

  v27 = sub_221C56F90();
  v28 = __swift_project_value_buffer(v27, qword_27CFE1110);
  v30 = v119;
  v29 = v120;
  v31 = *(v120 + 16);
  v31(v24, v26, v119);
  v112 = v28;
  v32 = sub_221C56F70();
  v33 = sub_221C57110();
  v34 = os_log_type_enabled(v32, v33);
  v118 = v26;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v121[0] = v36;
    *v35 = 136446722;
    v37 = sub_221C57330();
    v39 = sub_221C471AC(v37, v38, v121);

    *(v35 + 4) = v39;
    *(v35 + 12) = 2082;
    *(v35 + 14) = sub_221C471AC(0x5274657373417369, 0xEE00292879646165, v121);
    *(v35 + 22) = 2082;
    sub_221C47EE0(&qword_27CFDF150, MEMORY[0x277D0E280], MEMORY[0x277D0E290]);
    v40 = sub_221C57250();
    v42 = v41;
    v117 = *(v120 + 8);
    v117(v24, v30);
    v43 = sub_221C471AC(v40, v42, v121);

    *(v35 + 24) = v43;
    _os_log_impl(&dword_221C40000, v32, v33, "%{public}s.%{public}s GM availability: %{public}s", v35, 0x20u);
    swift_arrayDestroy();
    v44 = v36;
    v29 = v120;
    MEMORY[0x223DA5860](v44, -1, -1);
    v45 = v35;
    v26 = v118;
    MEMORY[0x223DA5860](v45, -1, -1);
  }

  else
  {

    v117 = *(v29 + 8);
    v117(v24, v30);
  }

  v46 = v113;
  v47 = v114;
  v31(v113, v26, v30);
  v48 = *(v29 + 88);
  if (v48(v46, v30) != *MEMORY[0x277D0DFA8])
  {
    v65 = v46;
    v66 = v117;
    v117(v65, v30);
    v31(v47, v26, v30);
    if (v48(v47, v30) == *MEMORY[0x277D0DFB0])
    {
      v116 = v29 + 8;
      (*(v29 + 96))(v47, v30);
      v67 = v102;
      v68 = v105;
      v69 = v106;
      (*(v102 + 32))(v105, v47, v106);
      v70 = v101;
      (*(v67 + 16))(v101, v68, v69);
      v71 = sub_221C56F70();
      v72 = sub_221C57100();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        v121[0] = v74;
        *v73 = 136446722;
        v75 = sub_221C57330();
        v77 = sub_221C471AC(v75, v76, v121);

        *(v73 + 4) = v77;
        *(v73 + 12) = 2082;
        *(v73 + 14) = sub_221C471AC(0x5274657373417369, 0xEE00292879646165, v121);
        *(v73 + 22) = 2082;
        sub_221C47EE0(&qword_27CFDF138, MEMORY[0x277D0E238], MEMORY[0x277D0E240]);
        v78 = sub_221C57250();
        v80 = v79;
        v120 = *(v67 + 8);
        (v120)(v70, v69);
        v81 = sub_221C471AC(v78, v80, v121);

        *(v73 + 24) = v81;
        _os_log_impl(&dword_221C40000, v71, v72, "%{public}s.%{public}s GM unavailable with info: %{public}s", v73, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x223DA5860](v74, -1, -1);
        MEMORY[0x223DA5860](v73, -1, -1);
      }

      else
      {

        v120 = *(v67 + 8);
        (v120)(v70, v69);
      }

      v91 = v105;
      v92 = sub_221C56EA0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFDF130, &qword_221C58450);
      v93 = sub_221C56E90();
      v94 = *(v93 - 8);
      v95 = *(v94 + 72);
      v96 = (*(v94 + 80) + 32) & ~*(v94 + 80);
      v97 = swift_allocObject();
      *(v97 + 16) = xmmword_221C58430;
      v98 = v97 + v96;
      v99 = *(v94 + 104);
      v99(v98, *MEMORY[0x277D0E0E8], v93);
      v99(v98 + v95, *MEMORY[0x277D0E168], v93);
      v99(v98 + 2 * v95, *MEMORY[0x277D0E190], v93);
      LOBYTE(v94) = sub_221C47764(v97, v92);

      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      (v120)(v91, v106);
      v117(v118, v119);
      if ((v94 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      v66(v26, v30);
      v66(v47, v30);
    }

    return 1;
  }

  (*(v29 + 96))(v46, v30);
  v49 = v104;
  v50 = v115;
  v51 = v116;
  (*(v104 + 32))(v115, v46, v116);
  v52 = v103;
  (*(v49 + 16))(v103, v50, v51);
  v53 = sub_221C56F70();
  v54 = sub_221C57100();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v121[0] = v56;
    *v55 = 136446722;
    v57 = sub_221C57330();
    v59 = sub_221C471AC(v57, v58, v121);

    *(v55 + 4) = v59;
    *(v55 + 12) = 2082;
    *(v55 + 14) = sub_221C471AC(0x5274657373417369, 0xEE00292879646165, v121);
    *(v55 + 22) = 2082;
    sub_221C47EE0(&qword_27CFDF148, MEMORY[0x277D0E058], MEMORY[0x277D0E060]);
    v60 = sub_221C57250();
    v62 = v61;
    v63 = *(v49 + 8);
    v63(v52, v51);
    v64 = sub_221C471AC(v60, v62, v121);

    *(v55 + 24) = v64;
    _os_log_impl(&dword_221C40000, v53, v54, "%{public}s.%{public}s GM restricted with info: %{public}s", v55, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x223DA5860](v56, -1, -1);
    MEMORY[0x223DA5860](v55, -1, -1);
  }

  else
  {

    v63 = *(v49 + 8);
    v63(v52, v51);
  }

  v82 = v115;
  v83 = sub_221C56E70();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFDF140, &qword_221C58458);
  v84 = sub_221C56E60();
  v85 = *(v84 - 8);
  v86 = *(v85 + 72);
  v87 = (*(v85 + 80) + 32) & ~*(v85 + 80);
  v88 = swift_allocObject();
  *(v88 + 16) = xmmword_221C58440;
  v89 = v88 + v87;
  v90 = *(v85 + 104);
  v90(v89, *MEMORY[0x277D0DFD8], v84);
  v90(v89 + v86, *MEMORY[0x277D0E008], v84);
  LOBYTE(v85) = sub_221C47A40(v88, v83);

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v63(v82, v116);
  v117(v118, v119);
  return (v85 & 1) != 0;
}

id GMAvailabilityProvider.init()()
{
  sub_221C56DB0();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GMAvailabilityProvider(0);
  return objc_msgSendSuper2(&v2, sel_init);
}

id GMAvailabilityProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GMAvailabilityProvider(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_221C4701C()
{
  v0 = sub_221C56F90();
  __swift_allocate_value_buffer(v0, qword_27CFE1110);
  __swift_project_value_buffer(v0, qword_27CFE1110);
  return sub_221C56F80();
}

uint64_t sub_221C470A0(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_221C470EC(uint64_t (*a1)(void))
{
  a1();

  return sub_221C57330();
}

uint64_t sub_221C47150(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_221C471AC(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_221C471AC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_221C47278(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_221C47E80(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_221C47278(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_221C47384(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_221C571B0();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_221C47384(uint64_t a1, unint64_t a2)
{
  v3 = sub_221C473D0(a1, a2);
  sub_221C47500(&unk_2835237C0);
  return v3;
}

void *sub_221C473D0(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_221C475EC(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_221C571B0();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_221C570D0();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_221C475EC(v10, 0);
        result = sub_221C57160();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_221C47500(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_221C47660(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_221C475EC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFDF180, &qword_221C584C8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_221C47660(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFDF180, &qword_221C584C8);
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

_BYTE **sub_221C47754(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_221C47764(uint64_t a1, uint64_t a2)
{
  v4 = sub_221C56E90();
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v23 - v9;
  if (!*(a2 + 16))
  {
    return 1;
  }

  v23 = *(a1 + 16);
  if (!v23)
  {
    return 1;
  }

  v11 = a2;
  v12 = 0;
  v14 = *(v8 + 16);
  v13 = v8 + 16;
  v24 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
  v27 = *(v13 + 56);
  v28 = v14;
  v26 = v11 + 56;
  v15 = (v13 - 8);
  while (1)
  {
    v25 = v12;
    v28(v10, v24 + v27 * v12, v4);
    if (*(v11 + 16))
    {
      sub_221C47EE0(&qword_27CFDF188, MEMORY[0x277D0E218], MEMORY[0x277D0E220]);
      v16 = sub_221C57040();
      v17 = -1 << *(v11 + 32);
      v18 = v16 & ~v17;
      if ((*(v26 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
      {
        break;
      }
    }

LABEL_4:
    v12 = v25 + 1;
    (*v15)(v10, v4);
    if (v12 == v23)
    {
      return 1;
    }
  }

  v19 = ~v17;
  while (1)
  {
    v28(v7, *(v11 + 48) + v18 * v27, v4);
    sub_221C47EE0(&qword_27CFDF190, MEMORY[0x277D0E218], MEMORY[0x277D0E228]);
    v20 = sub_221C57050();
    v21 = *v15;
    (*v15)(v7, v4);
    if (v20)
    {
      break;
    }

    v18 = (v18 + 1) & v19;
    if (((*(v26 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  v21(v10, v4);
  return 0;
}

uint64_t sub_221C47A40(uint64_t a1, uint64_t a2)
{
  v4 = sub_221C56E60();
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v23 - v9;
  if (!*(a2 + 16))
  {
    return 1;
  }

  v23 = *(a1 + 16);
  if (!v23)
  {
    return 1;
  }

  v11 = a2;
  v12 = 0;
  v14 = *(v8 + 16);
  v13 = v8 + 16;
  v24 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
  v27 = *(v13 + 56);
  v28 = v14;
  v26 = v11 + 56;
  v15 = (v13 - 8);
  while (1)
  {
    v25 = v12;
    v28(v10, v24 + v27 * v12, v4);
    if (*(v11 + 16))
    {
      sub_221C47EE0(&qword_27CFDF170, MEMORY[0x277D0E038], MEMORY[0x277D0E040]);
      v16 = sub_221C57040();
      v17 = -1 << *(v11 + 32);
      v18 = v16 & ~v17;
      if ((*(v26 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
      {
        break;
      }
    }

LABEL_4:
    v12 = v25 + 1;
    (*v15)(v10, v4);
    if (v12 == v23)
    {
      return 1;
    }
  }

  v19 = ~v17;
  while (1)
  {
    v28(v7, *(v11 + 48) + v18 * v27, v4);
    sub_221C47EE0(&qword_27CFDF178, MEMORY[0x277D0E038], MEMORY[0x277D0E048]);
    v20 = sub_221C57050();
    v21 = *v15;
    (*v15)(v7, v4);
    if (v20)
    {
      break;
    }

    v18 = (v18 + 1) & v19;
    if (((*(v26 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  v21(v10, v4);
  return 0;
}

uint64_t type metadata accessor for GMAvailabilityProvider(uint64_t a1)
{
  result = qword_27CFDF160;
  if (!qword_27CFDF160)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_221C47D70(uint64_t a1, uint64_t a2)
{
  result = sub_221C56DC0();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_221C47E80(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_221C47EE0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_221C47F28()
{
  type metadata accessor for UNGenerativeModelsAvailabilityCache();
  swift_allocObject();
  result = sub_221C47F6C();
  qword_27CFE1128 = result;
  return result;
}

uint64_t sub_221C47F6C()
{
  *(v0 + 16) = MEMORY[0x277D84F98];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFDF1A8, &qword_221C58548);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v0 + 24) = v1;
  *(v0 + 32) = sub_221C57080();
  *(v0 + 40) = sub_221C47F64;
  v2 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v2, v0, *(v0 + 40), *(v0 + 32), 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  return v0;
}

uint64_t sub_221C48014()
{
  v1 = CFNotificationCenterGetDarwinNotifyCenter();
  v2 = v0[4];
  CFNotificationCenterRemoveObserver(v1, v0, v2, 0);

  return swift_deallocClassInstance();
}

uint64_t sub_221C480C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v29 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFDF198, &qword_221C58538);
  MEMORY[0x28223BE20](v7 - 8);
  v28 = v23 - v8;
  v27 = sub_221C56F10();
  v25 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_221C56EF0();
  v24 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_221C56F60();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v17 = *(a1 + 16);
  if (*(v17 + 16))
  {
    v23[1] = a1;

    v18 = sub_221C4E788(a2, a3);
    if (v19)
    {
      (*(v14 + 16))(v16, *(v17 + 56) + *(v14 + 72) * v18, v13);

      return (*(v14 + 32))(v29, v16, v13);
    }
  }

  (*(v25 + 104))(v10, *MEMORY[0x277D0E2D8], v27);

  sub_221C56EE0();
  v21 = v29;
  sub_221C56F40();
  (*(v24 + 8))(v12, v26);
  v22 = v28;
  (*(v14 + 16))(v28, v21, v13);
  (*(v14 + 56))(v22, 0, 1, v13);
  swift_beginAccess();

  sub_221C48470(v22, a2, a3);
  return swift_endAccess();
}

uint64_t sub_221C48470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFDF198, &qword_221C58538);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = sub_221C56F60();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_221C48628(a1);
    sub_221C48690(a2, a3, v9);

    return sub_221C48628(v9);
  }

  else
  {
    (*(v11 + 32))(v13, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_221C48D6C(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

uint64_t sub_221C48628(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFDF198, &qword_221C58538);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_221C48690@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_221C4E788(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_221C48F9C();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = sub_221C56F60();
    v19 = *(v12 - 8);
    (*(v19 + 32))(a3, v11 + *(v19 + 72) * v8, v12);
    sub_221C48B80(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = sub_221C56F60();
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_221C48800(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v45 = sub_221C56F60();
  v5 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFDF1A0, &qword_221C58540);
  v42 = v4;
  result = sub_221C571E0();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v38 = v2;
    v39 = (v5 + 16);
    v40 = v7;
    v41 = v5;
    v43 = (v5 + 32);
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = *(v41 + 72);
      v28 = v23 + v27 * v22;
      if (v42)
      {
        (*v43)(v44, v28, v45);
      }

      else
      {
        (*v39)(v44, v28, v45);
      }

      sub_221C572C0();
      sub_221C570B0();
      result = sub_221C572E0();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v26;
      v18[1] = v25;
      result = (*v43)(*(v9 + 56) + v27 * v17, v44, v45);
      ++*(v9 + 16);
      v7 = v40;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

unint64_t sub_221C48B80(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_221C57150() + 1) & ~v5;
    while (1)
    {
      sub_221C572C0();

      sub_221C570B0();
      v9 = sub_221C572E0();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(sub_221C56F60() - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_221C48D6C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_221C4E788(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_221C48F9C();
      goto LABEL_7;
    }

    sub_221C48800(v15, a4 & 1);
    v26 = sub_221C4E788(a2, a3);
    if ((v16 & 1) == (v27 & 1))
    {
      v12 = v26;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_221C57270();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_221C56F60();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_221C48EEC(v12, a2, a3, a1, v18);
}

uint64_t sub_221C48EEC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_221C56F60();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

char *sub_221C48F9C()
{
  v1 = v0;
  v35 = sub_221C56F60();
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFDF1A0, &qword_221C58540);
  v3 = *v0;
  v4 = sub_221C571D0();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = 16 * v18;
        v20 = (*(v3 + 48) + 16 * v18);
        v21 = *v20;
        v22 = v20[1];
        v23 = v37;
        v24 = *(v37 + 72) * v18;
        v25 = v34;
        v26 = v35;
        (*(v37 + 16))(v34, *(v3 + 56) + v24, v35);
        v27 = v36;
        v28 = (*(v36 + 48) + v19);
        *v28 = v21;
        v28[1] = v22;
        (*(v23 + 32))(*(v27 + 56) + v24, v25, v26);

        v13 = v38;
      }

      while (v38);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v30;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v31 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

uint64_t sub_221C4921C(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 24);

    MEMORY[0x28223BE20](v2);
    os_unfair_lock_lock(v1 + 4);
    sub_221C49314(v3);
    os_unfair_lock_unlock(v1 + 4);
  }

  return result;
}

uint64_t sub_221C492C0()
{
  swift_beginAccess();
  *(v0 + 16) = MEMORY[0x277D84F98];
}

uint64_t SiriFeatureFlagManager.isRemoteMontaraEnabled.getter()
{
  v2[3] = &type metadata for SiriFeatureFlags;
  v2[4] = sub_221C49384();
  v0 = sub_221C56DD0();
  __swift_destroy_boxed_opaque_existential_1(v2);
  return v0 & 1;
}

unint64_t sub_221C49384()
{
  result = qword_27CFDF1B0;
  if (!qword_27CFDF1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFDF1B0);
  }

  return result;
}

uint64_t SiriFeatureFlagManager.description.getter()
{
  v7[0] = 0;
  v7[1] = 0xE000000000000000;
  sub_221C57170();
  v0 = sub_221C57180();
  v2 = v1;

  v8 = v0;
  v9 = v2;
  MEMORY[0x223DA5220](0x6C62616E45736920, 0xEC000000203A6465);
  v7[3] = &type metadata for SiriFeatureFlags;
  v7[4] = sub_221C49384();
  v3 = sub_221C56DD0();
  __swift_destroy_boxed_opaque_existential_1(v7);
  if (v3)
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x223DA5220](v4, v5);

  return v8;
}

unint64_t sub_221C49508()
{
  result = qword_27CFDF1B8;
  if (!qword_27CFDF1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFDF1B8);
  }

  return result;
}

uint64_t sub_221C4955C()
{
  sub_221C572C0();
  MEMORY[0x223DA5430](0);
  return sub_221C572E0();
}

uint64_t sub_221C495C8(uint64_t a1)
{
  sub_221C572C0();
  MEMORY[0x223DA5430](0);
  return sub_221C572E0();
}

uint64_t static SessionPersistenceUtils.isBackToBackRequest(sessionId:)(uint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    if (qword_27CFDEF30 != -1)
    {
      swift_once();
    }

    v18 = sub_221C56F90();
    __swift_project_value_buffer(v18, qword_27CFDF1C0);
    v5 = sub_221C56F70();
    v19 = sub_221C57100();
    if (!os_log_type_enabled(v5, v19))
    {
      goto LABEL_23;
    }

    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v30 = v21;
    *v20 = 136315394;
    *(v20 + 4) = sub_221C471AC(0xD000000000000017, 0x8000000221C58660, &v30);
    *(v20 + 12) = 2080;
    *(v20 + 14) = sub_221C471AC(0xD00000000000001FLL, 0x8000000221C59420, &v30);
    v22 = "%s.%s sessionId is nil";
LABEL_22:
    _os_log_impl(&dword_221C40000, v5, v19, v22, v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DA5860](v21, -1, -1);
    MEMORY[0x223DA5860](v20, -1, -1);
LABEL_23:

    return 0;
  }

  v4 = _s25GenerativeAssistantCommon23SessionPersistenceUtilsV12userDefaults9forDomainSo06NSUserH0CSgSS_tFZ_0(0xD00000000000003FLL, 0x8000000221C591B0);
  if (!v4)
  {
    if (qword_27CFDEF30 != -1)
    {
      swift_once();
    }

    v23 = sub_221C56F90();
    __swift_project_value_buffer(v23, qword_27CFDF1C0);
    v5 = sub_221C56F70();
    v19 = sub_221C57100();
    if (!os_log_type_enabled(v5, v19))
    {
      goto LABEL_23;
    }

    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v30 = v21;
    *v20 = 136315394;
    *(v20 + 4) = sub_221C471AC(0xD000000000000017, 0x8000000221C58660, &v30);
    *(v20 + 12) = 2080;
    *(v20 + 14) = sub_221C471AC(0xD00000000000001FLL, 0x8000000221C59420, &v30);
    v22 = "%s.%s Cannot retrieve defaults from the extension domain";
    goto LABEL_22;
  }

  v5 = v4;
  v6 = sub_221C57080();
  v7 = [v5 stringForKey:v6];

  if (!v7)
  {
LABEL_9:
    if (qword_27CFDEF30 != -1)
    {
      swift_once();
    }

    v13 = sub_221C56F90();
    __swift_project_value_buffer(v13, qword_27CFDF1C0);
    v14 = sub_221C56F70();
    v15 = sub_221C570F0();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v30 = v17;
      *v16 = 136315394;
      *(v16 + 4) = sub_221C471AC(0xD000000000000017, 0x8000000221C58660, &v30);
      *(v16 + 12) = 2080;
      *(v16 + 14) = sub_221C471AC(0xD00000000000001FLL, 0x8000000221C59420, &v30);
      _os_log_impl(&dword_221C40000, v14, v15, "%s.%s sessionId didn't matched. We are NOT in the same session.", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DA5860](v17, -1, -1);
      MEMORY[0x223DA5860](v16, -1, -1);
    }

    goto LABEL_23;
  }

  v8 = sub_221C57090();
  v10 = v9;

  if (v8 == a1 && v10 == a2)
  {
  }

  else
  {
    v12 = sub_221C57260();

    if ((v12 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  if (qword_27CFDEF30 != -1)
  {
    swift_once();
  }

  v25 = sub_221C56F90();
  __swift_project_value_buffer(v25, qword_27CFDF1C0);

  v26 = sub_221C56F70();
  v27 = sub_221C570F0();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = v29;
    *v28 = 136315650;
    *(v28 + 4) = sub_221C471AC(0xD000000000000017, 0x8000000221C58660, &v30);
    *(v28 + 12) = 2080;
    *(v28 + 14) = sub_221C471AC(0xD00000000000001FLL, 0x8000000221C59420, &v30);
    *(v28 + 22) = 2080;
    *(v28 + 24) = sub_221C471AC(a1, a2, &v30);
    _os_log_impl(&dword_221C40000, v26, v27, "%s.%s sessionId matched. We are still in the same session %s", v28, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x223DA5860](v29, -1, -1);
    MEMORY[0x223DA5860](v28, -1, -1);
  }

  return 1;
}

uint64_t static SessionPersistenceUtils.didConfirmInSession(sessionId:)(uint64_t a1, uint64_t a2)
{
  v4 = _s25GenerativeAssistantCommon23SessionPersistenceUtilsV12userDefaults9forDomainSo06NSUserH0CSgSS_tFZ_0(0xD00000000000003FLL, 0x8000000221C591B0);
  if (v4)
  {
    v5 = v4;
    v6 = sub_221C57080();
    v7 = [v5 stringForKey_];

    if (!v7)
    {
LABEL_8:
      v13 = _s25GenerativeAssistantCommon23SessionPersistenceUtilsV017didConfirmInMediaD09sessionIdSbSS_tFZ_0(a1, a2);

      return v13 & 1;
    }

    v8 = sub_221C57090();
    v10 = v9;

    if (v8 == a1 && v10 == a2)
    {
    }

    else
    {
      v12 = sub_221C57260();

      if ((v12 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    if (qword_27CFDEF30 != -1)
    {
      swift_once();
    }

    v20 = sub_221C56F90();
    __swift_project_value_buffer(v20, qword_27CFDF1C0);
    v21 = sub_221C56F70();
    v22 = sub_221C570F0();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = v24;
      *v23 = 136315394;
      *(v23 + 4) = sub_221C471AC(0xD000000000000017, 0x8000000221C58660, &v25);
      *(v23 + 12) = 2080;
      *(v23 + 14) = sub_221C471AC(0xD00000000000001FLL, 0x8000000221C594C0, &v25);
      _os_log_impl(&dword_221C40000, v21, v22, "%s.%s text sessionId matched", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DA5860](v24, -1, -1);
      MEMORY[0x223DA5860](v23, -1, -1);
    }

    return 1;
  }

  else
  {
    if (qword_27CFDEF30 != -1)
    {
      swift_once();
    }

    v15 = sub_221C56F90();
    __swift_project_value_buffer(v15, qword_27CFDF1C0);
    v16 = sub_221C56F70();
    v17 = sub_221C57100();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v25 = v19;
      *v18 = 136315394;
      *(v18 + 4) = sub_221C471AC(0xD000000000000017, 0x8000000221C58660, &v25);
      *(v18 + 12) = 2080;
      *(v18 + 14) = sub_221C471AC(0xD00000000000001FLL, 0x8000000221C594C0, &v25);
      _os_log_impl(&dword_221C40000, v16, v17, "%s.%s Cannot retrieve defaults from the extension domain", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DA5860](v19, -1, -1);
      MEMORY[0x223DA5860](v18, -1, -1);
    }

    return 0;
  }
}

void static SessionPersistenceUtils.setConfirmation(forTextSession:)(uint64_t a1, uint64_t a2)
{
  v2 = _s25GenerativeAssistantCommon23SessionPersistenceUtilsV12userDefaults9forDomainSo06NSUserH0CSgSS_tFZ_0(0xD00000000000003FLL, 0x8000000221C591B0);
  if (v2)
  {
    v3 = v2;
    if (qword_27CFDEF30 != -1)
    {
      swift_once();
    }

    v4 = sub_221C56F90();
    __swift_project_value_buffer(v4, qword_27CFDF1C0);
    v5 = sub_221C56F70();
    v6 = sub_221C570F0();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v15 = v8;
      *v7 = 136315394;
      *(v7 + 4) = sub_221C471AC(0xD000000000000017, 0x8000000221C58660, &v15);
      *(v7 + 12) = 2080;
      *(v7 + 14) = sub_221C471AC(0xD000000000000020, 0x8000000221C59530, &v15);
      _os_log_impl(&dword_221C40000, v5, v6, "%s.%s", v7, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DA5860](v8, -1, -1);
      MEMORY[0x223DA5860](v7, -1, -1);
    }

    v9 = sub_221C57080();
    oslog = sub_221C57080();
    [v3 setObject:v9 forKey:oslog];
  }

  else
  {
    if (qword_27CFDEF30 != -1)
    {
      swift_once();
    }

    v10 = sub_221C56F90();
    __swift_project_value_buffer(v10, qword_27CFDF1C0);
    oslog = sub_221C56F70();
    v11 = sub_221C57100();
    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v15 = v13;
      *v12 = 136315394;
      *(v12 + 4) = sub_221C471AC(0xD000000000000017, 0x8000000221C58660, &v15);
      *(v12 + 12) = 2080;
      *(v12 + 14) = sub_221C471AC(0xD000000000000020, 0x8000000221C59530, &v15);
      _os_log_impl(&dword_221C40000, oslog, v11, "%s.%s Cannot retrieve defaults from the extension domain", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DA5860](v13, -1, -1);
      MEMORY[0x223DA5860](v12, -1, -1);
    }
  }
}

void static SessionPersistenceUtils.setConfirmation(forMediaSession:)(uint64_t a1, uint64_t a2)
{
  v2 = _s25GenerativeAssistantCommon23SessionPersistenceUtilsV12userDefaults9forDomainSo06NSUserH0CSgSS_tFZ_0(0xD00000000000003FLL, 0x8000000221C591B0);
  if (v2)
  {
    v3 = v2;
    if (qword_27CFDEF30 != -1)
    {
      swift_once();
    }

    v4 = sub_221C56F90();
    __swift_project_value_buffer(v4, qword_27CFDF1C0);
    v5 = sub_221C56F70();
    v6 = sub_221C570F0();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v15 = v8;
      *v7 = 136315394;
      *(v7 + 4) = sub_221C471AC(0xD000000000000017, 0x8000000221C58660, &v15);
      *(v7 + 12) = 2080;
      *(v7 + 14) = sub_221C471AC(0xD000000000000021, 0x8000000221C59560, &v15);
      _os_log_impl(&dword_221C40000, v5, v6, "%s.%s", v7, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DA5860](v8, -1, -1);
      MEMORY[0x223DA5860](v7, -1, -1);
    }

    v9 = sub_221C57080();
    oslog = sub_221C57080();
    [v3 setObject:v9 forKey:oslog];
  }

  else
  {
    if (qword_27CFDEF30 != -1)
    {
      swift_once();
    }

    v10 = sub_221C56F90();
    __swift_project_value_buffer(v10, qword_27CFDF1C0);
    oslog = sub_221C56F70();
    v11 = sub_221C57100();
    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v15 = v13;
      *v12 = 136315394;
      *(v12 + 4) = sub_221C471AC(0xD000000000000017, 0x8000000221C58660, &v15);
      *(v12 + 12) = 2080;
      *(v12 + 14) = sub_221C471AC(0xD000000000000021, 0x8000000221C59560, &v15);
      _os_log_impl(&dword_221C40000, oslog, v11, "%s.%s Cannot retrieve defaults from the extension domain", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DA5860](v13, -1, -1);
      MEMORY[0x223DA5860](v12, -1, -1);
    }
  }
}

uint64_t SessionPersistenceUtils.SessionStoredValues.visualIntelligenceImageData.getter()
{
  v1 = *(v0 + 8);
  sub_221C4D110(v1, *(v0 + 16));
  return v1;
}

void SessionPersistenceUtils.SessionStoredValues.visualIntelligenceImageData.setter(uint64_t a1, uint64_t a2)
{
  sub_221C41EFC(*(v2 + 8), *(v2 + 16));
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
}

void static SessionPersistenceUtils.storedValuesForSession(sessionId:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!a2)
  {
    if (qword_27CFDEF30 != -1)
    {
      swift_once();
    }

    v25 = sub_221C56F90();
    __swift_project_value_buffer(v25, qword_27CFDF1C0);
    v26 = sub_221C56F70();
    v27 = sub_221C57100();
    if (!os_log_type_enabled(v26, v27))
    {
      goto LABEL_27;
    }

    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v78 = v29;
    *v28 = 136315394;
    *(v28 + 4) = sub_221C471AC(0xD000000000000017, 0x8000000221C58660, &v78);
    *(v28 + 12) = 2080;
    *(v28 + 14) = sub_221C471AC(0xD000000000000022, 0x8000000221C595E0, &v78);
    v30 = "%s.%s Missing sessionId";
    goto LABEL_26;
  }

  v6 = _s25GenerativeAssistantCommon23SessionPersistenceUtilsV12userDefaults9forDomainSo06NSUserH0CSgSS_tFZ_0(0x6C7070612E6D6F63, 0xEE00697269732E65);
  if (v6)
  {
    v7 = v6;
    v8 = sub_221C57080();
    v9 = [v7 stringForKey_];

    if (!v9)
    {
      goto LABEL_14;
    }

    v10 = sub_221C57090();
    v12 = v11;

    if (v10 == a1 && v12 == a2)
    {
    }

    else
    {
      v14 = sub_221C57260();

      if ((v14 & 1) == 0)
      {
        if (qword_27CFDEF30 != -1)
        {
          swift_once();
        }

        v15 = sub_221C56F90();
        __swift_project_value_buffer(v15, qword_27CFDF1C0);
        v16 = sub_221C56F70();
        v17 = sub_221C570F0();
        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          v19 = swift_slowAlloc();
          v78 = v19;
          *v18 = 136315394;
          *(v18 + 4) = sub_221C471AC(0xD000000000000017, 0x8000000221C58660, &v78);
          *(v18 + 12) = 2080;
          *(v18 + 14) = sub_221C471AC(0xD000000000000022, 0x8000000221C595E0, &v78);
          _os_log_impl(&dword_221C40000, v16, v17, "%s.%s sessionId not matched for removeAttachmentKey", v18, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x223DA5860](v19, -1, -1);
          MEMORY[0x223DA5860](v18, -1, -1);
        }

LABEL_14:
        v20 = sub_221C57080();
        v21 = [v7 stringForKey_];

        if (v21)
        {
          v22 = sub_221C57090();
          v24 = v23;

          if (v22 == a1 && v24 == a2)
          {

LABEL_35:
            if (qword_27CFDEF30 != -1)
            {
              swift_once();
            }

            v42 = sub_221C56F90();
            __swift_project_value_buffer(v42, qword_27CFDF1C0);
            v43 = sub_221C56F70();
            v44 = sub_221C570F0();
            if (os_log_type_enabled(v43, v44))
            {
              v45 = swift_slowAlloc();
              v46 = swift_slowAlloc();
              v78 = v46;
              *v45 = 136315394;
              *(v45 + 4) = sub_221C471AC(0xD000000000000017, 0x8000000221C58660, &v78);
              *(v45 + 12) = 2080;
              *(v45 + 14) = sub_221C471AC(0xD000000000000022, 0x8000000221C595E0, &v78);
              _os_log_impl(&dword_221C40000, v43, v44, "%s.%s sessionId matched for selectAlternateAttachmentKey", v45, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x223DA5860](v46, -1, -1);
              MEMORY[0x223DA5860](v45, -1, -1);
            }

            v40 = 0;
            v39 = 1;
            goto LABEL_46;
          }

          v41 = sub_221C57260();

          if (v41)
          {
            goto LABEL_35;
          }

          if (qword_27CFDEF30 != -1)
          {
            swift_once();
          }

          v47 = sub_221C56F90();
          __swift_project_value_buffer(v47, qword_27CFDF1C0);
          v48 = sub_221C56F70();
          v49 = sub_221C570F0();
          if (os_log_type_enabled(v48, v49))
          {
            v50 = swift_slowAlloc();
            v51 = swift_slowAlloc();
            v78 = v51;
            *v50 = 136315394;
            *(v50 + 4) = sub_221C471AC(0xD000000000000017, 0x8000000221C58660, &v78);
            *(v50 + 12) = 2080;
            *(v50 + 14) = sub_221C471AC(0xD000000000000022, 0x8000000221C595E0, &v78);
            _os_log_impl(&dword_221C40000, v48, v49, "%s.%s sessionId not matched for selectAlternateAttachmentKey", v50, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x223DA5860](v51, -1, -1);
            MEMORY[0x223DA5860](v50, -1, -1);
          }
        }

        v39 = 0;
        v40 = 0;
        goto LABEL_46;
      }
    }

    if (qword_27CFDEF30 != -1)
    {
      swift_once();
    }

    v34 = sub_221C56F90();
    __swift_project_value_buffer(v34, qword_27CFDF1C0);
    v35 = sub_221C56F70();
    v36 = sub_221C570F0();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v78 = v38;
      *v37 = 136315394;
      *(v37 + 4) = sub_221C471AC(0xD000000000000017, 0x8000000221C58660, &v78);
      *(v37 + 12) = 2080;
      *(v37 + 14) = sub_221C471AC(0xD000000000000022, 0x8000000221C595E0, &v78);
      _os_log_impl(&dword_221C40000, v35, v36, "%s.%s sessionId matched for removeAttachmentKey", v37, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DA5860](v38, -1, -1);
      MEMORY[0x223DA5860](v37, -1, -1);
    }

    v39 = 0;
    v40 = 1;
LABEL_46:
    v52 = sub_221C57080();
    v53 = [v7 stringForKey_];

    if (v53)
    {
      v54 = v40;
      v55 = v39;
      v56 = sub_221C57090();
      v58 = v57;

      if (v56 == a1 && v58 == a2)
      {
      }

      else
      {
        v59 = sub_221C57260();

        if ((v59 & 1) == 0)
        {
          v39 = v55;
          if (qword_27CFDEF30 != -1)
          {
            swift_once();
          }

          v73 = sub_221C56F90();
          __swift_project_value_buffer(v73, qword_27CFDF1C0);
          v74 = sub_221C56F70();
          v75 = sub_221C570F0();
          v40 = v54;
          if (os_log_type_enabled(v74, v75))
          {
            v76 = swift_slowAlloc();
            v77 = swift_slowAlloc();
            v78 = v77;
            *v76 = 136315394;
            *(v76 + 4) = sub_221C471AC(0xD000000000000017, 0x8000000221C58660, &v78);
            *(v76 + 12) = 2080;
            *(v76 + 14) = sub_221C471AC(0xD000000000000022, 0x8000000221C595E0, &v78);
            _os_log_impl(&dword_221C40000, v74, v75, "%s.%s sessionId not matched for visual intelligence image data", v76, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x223DA5860](v77, -1, -1);
            MEMORY[0x223DA5860](v76, -1, -1);
          }

          _s25GenerativeAssistantCommon23SessionPersistenceUtilsV40clearStoredVisualIntelligenceImageValuesyyFZ_0();
          goto LABEL_67;
        }
      }

      v60 = sub_221C57080();
      v61 = [v7 dataForKey_];

      if (v61)
      {
        v32 = sub_221C56D80();
        v33 = v62;

        if (qword_27CFDEF30 != -1)
        {
          swift_once();
        }

        v63 = sub_221C56F90();
        __swift_project_value_buffer(v63, qword_27CFDF1C0);
        v64 = sub_221C56F70();
        v65 = sub_221C570F0();
        if (os_log_type_enabled(v64, v65))
        {
          v66 = swift_slowAlloc();
          v67 = swift_slowAlloc();
          v78 = v67;
          *v66 = 136315394;
          *(v66 + 4) = sub_221C471AC(0xD000000000000017, 0x8000000221C58660, &v78);
          *(v66 + 12) = 2080;
          *(v66 + 14) = sub_221C471AC(0xD000000000000022, 0x8000000221C595E0, &v78);
          _os_log_impl(&dword_221C40000, v64, v65, "%s.%s found visual intelligence image data", v66, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x223DA5860](v67, -1, -1);
          MEMORY[0x223DA5860](v66, -1, -1);
        }

        v39 = v55;
        sub_221C41EFC(0, 0xF000000000000000);
        v40 = v54;
        goto LABEL_68;
      }

      v39 = v55;
      if (qword_27CFDEF30 != -1)
      {
        swift_once();
      }

      v68 = sub_221C56F90();
      __swift_project_value_buffer(v68, qword_27CFDF1C0);
      v69 = sub_221C56F70();
      v70 = sub_221C570F0();
      v40 = v54;
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        v78 = v72;
        *v71 = 136315394;
        *(v71 + 4) = sub_221C471AC(0xD000000000000017, 0x8000000221C58660, &v78);
        *(v71 + 12) = 2080;
        *(v71 + 14) = sub_221C471AC(0xD000000000000022, 0x8000000221C595E0, &v78);
        _os_log_impl(&dword_221C40000, v69, v70, "%s.%s visual intelligence image data not found", v71, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DA5860](v72, -1, -1);
        MEMORY[0x223DA5860](v71, -1, -1);
      }
    }

LABEL_67:

    v32 = 0;
    v33 = 0xF000000000000000;
LABEL_68:
    *a3 = v40;
    *(a3 + 1) = v39;
    goto LABEL_69;
  }

  if (qword_27CFDEF30 != -1)
  {
    swift_once();
  }

  v31 = sub_221C56F90();
  __swift_project_value_buffer(v31, qword_27CFDF1C0);
  v26 = sub_221C56F70();
  v27 = sub_221C57100();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v78 = v29;
    *v28 = 136315394;
    *(v28 + 4) = sub_221C471AC(0xD000000000000017, 0x8000000221C58660, &v78);
    *(v28 + 12) = 2080;
    *(v28 + 14) = sub_221C471AC(0xD000000000000022, 0x8000000221C595E0, &v78);
    v30 = "%s.%s Cannot retrieve defaults from the Siri domain";
LABEL_26:
    _os_log_impl(&dword_221C40000, v26, v27, v30, v28, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DA5860](v29, -1, -1);
    MEMORY[0x223DA5860](v28, -1, -1);
  }

LABEL_27:

  v32 = 0;
  *a3 = 0;
  v33 = 0xF000000000000000;
LABEL_69:
  *(a3 + 8) = v32;
  *(a3 + 16) = v33;
}

void static SessionPersistenceUtils.setRemoveAttachment(forSession:)(uint64_t a1, uint64_t a2)
{
  if (qword_27CFDEF30 != -1)
  {
    swift_once();
  }

  v2 = sub_221C56F90();
  __swift_project_value_buffer(v2, qword_27CFDF1C0);
  v3 = sub_221C56F70();
  v4 = sub_221C570F0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_221C471AC(0xD000000000000017, 0x8000000221C58660, &v14);
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_221C471AC(0xD000000000000020, 0x8000000221C59750, &v14);
    _os_log_impl(&dword_221C40000, v3, v4, "%s.%s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DA5860](v6, -1, -1);
    MEMORY[0x223DA5860](v5, -1, -1);
  }

  v7 = _s25GenerativeAssistantCommon23SessionPersistenceUtilsV12userDefaults9forDomainSo06NSUserH0CSgSS_tFZ_0(0x6C7070612E6D6F63, 0xEE00697269732E65);
  if (v7)
  {
    v8 = v7;
    v9 = sub_221C57080();
    oslog = sub_221C57080();
    [v8 setObject:v9 forKey:oslog];
  }

  else
  {
    oslog = sub_221C56F70();
    v10 = sub_221C57100();
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v14 = v12;
      *v11 = 136315394;
      *(v11 + 4) = sub_221C471AC(0xD000000000000017, 0x8000000221C58660, &v14);
      *(v11 + 12) = 2080;
      *(v11 + 14) = sub_221C471AC(0xD000000000000020, 0x8000000221C59750, &v14);
      _os_log_impl(&dword_221C40000, oslog, v10, "%s.%s Cannot retrieve defaults from the Siri domain", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DA5860](v12, -1, -1);
      MEMORY[0x223DA5860](v11, -1, -1);
    }
  }
}

void static SessionPersistenceUtils.setDidSelectAlternateAttachment(_:forSession:)(char a1, uint64_t a2, uint64_t a3)
{
  if (qword_27CFDEF30 != -1)
  {
    swift_once();
  }

  v4 = sub_221C56F90();
  __swift_project_value_buffer(v4, qword_27CFDF1C0);
  v5 = sub_221C56F70();
  v6 = sub_221C570F0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_221C471AC(0xD000000000000017, 0x8000000221C58660, &v16);
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_221C471AC(0xD00000000000002ELL, 0x8000000221C59780, &v16);
    _os_log_impl(&dword_221C40000, v5, v6, "%s.%s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DA5860](v8, -1, -1);
    MEMORY[0x223DA5860](v7, -1, -1);
  }

  v9 = _s25GenerativeAssistantCommon23SessionPersistenceUtilsV12userDefaults9forDomainSo06NSUserH0CSgSS_tFZ_0(0x6C7070612E6D6F63, 0xEE00697269732E65);
  if (v9)
  {
    v10 = v9;
    if (a1)
    {
      v11 = sub_221C57080();
    }

    else
    {
      v11 = 0;
    }

    oslog = sub_221C57080();
    [v10 setObject:v11 forKey:oslog];

    swift_unknownObjectRelease();
  }

  else
  {
    oslog = sub_221C56F70();
    v12 = sub_221C57100();
    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v16 = v14;
      *v13 = 136315394;
      *(v13 + 4) = sub_221C471AC(0xD000000000000017, 0x8000000221C58660, &v16);
      *(v13 + 12) = 2080;
      *(v13 + 14) = sub_221C471AC(0xD00000000000002ELL, 0x8000000221C59780, &v16);
      _os_log_impl(&dword_221C40000, oslog, v12, "%s.%s Cannot retrieve defaults from the Siri domain", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DA5860](v14, -1, -1);
      MEMORY[0x223DA5860](v13, -1, -1);
    }
  }
}

void static SessionPersistenceUtils.setVisualIntelligenceImageData(_:forSession:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_27CFDEF30 != -1)
  {
    swift_once();
  }

  v6 = sub_221C56F90();
  __swift_project_value_buffer(v6, qword_27CFDF1C0);
  v7 = sub_221C56F70();
  v8 = sub_221C570F0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_221C471AC(0xD000000000000017, 0x8000000221C58660, &v21);
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_221C471AC(0xD00000000000002DLL, 0x8000000221C597B0, &v21);
    _os_log_impl(&dword_221C40000, v7, v8, "%s.%s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DA5860](v10, -1, -1);
    MEMORY[0x223DA5860](v9, -1, -1);
  }

  v11 = _s25GenerativeAssistantCommon23SessionPersistenceUtilsV12userDefaults9forDomainSo06NSUserH0CSgSS_tFZ_0(0x6C7070612E6D6F63, 0xEE00697269732E65);
  if (v11)
  {
    if (a2 >> 60 != 15)
    {
      v19 = v11;
      sub_221C41EA8(a1, a2);
      v12 = sub_221C57080();
      v13 = sub_221C57080();
      [v19 setObject:v12 forKey:v13];

      v14 = sub_221C56D70();
      v15 = sub_221C57080();
      [v19 setObject:v14 forKey:v15];

      sub_221C41EFC(a1, a2);
      return;
    }
  }

  else
  {
    v20 = sub_221C56F70();
    v16 = sub_221C57100();
    if (os_log_type_enabled(v20, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v21 = v18;
      *v17 = 136315394;
      *(v17 + 4) = sub_221C471AC(0xD000000000000017, 0x8000000221C58660, &v21);
      *(v17 + 12) = 2080;
      *(v17 + 14) = sub_221C471AC(0xD00000000000002DLL, 0x8000000221C597B0, &v21);
      _os_log_impl(&dword_221C40000, v20, v16, "%s.%s Cannot retrieve defaults from the Siri domain", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DA5860](v18, -1, -1);
      MEMORY[0x223DA5860](v17, -1, -1);
    }

    v11 = v20;
  }
}

void static SessionPersistenceUtils.clearStoredValuesForSession()()
{
  if (qword_27CFDEF30 != -1)
  {
    swift_once();
  }

  v0 = sub_221C56F90();
  __swift_project_value_buffer(v0, qword_27CFDF1C0);
  v1 = sub_221C56F70();
  v2 = sub_221C570F0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v12 = v4;
    *v3 = 136315394;
    *(v3 + 4) = sub_221C471AC(0xD000000000000017, 0x8000000221C58660, &v12);
    *(v3 + 12) = 2080;
    *(v3 + 14) = sub_221C471AC(0xD00000000000001DLL, 0x8000000221C597E0, &v12);
    _os_log_impl(&dword_221C40000, v1, v2, "%s.%s", v3, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DA5860](v4, -1, -1);
    MEMORY[0x223DA5860](v3, -1, -1);
  }

  v5 = _s25GenerativeAssistantCommon23SessionPersistenceUtilsV12userDefaults9forDomainSo06NSUserH0CSgSS_tFZ_0(0x6C7070612E6D6F63, 0xEE00697269732E65);
  if (v5)
  {
    v6 = v5;
    v7 = sub_221C57080();
    [v6 setURL:0 forKey:v7];

    oslog = sub_221C57080();
    [v6 setURL:0 forKey:oslog];
  }

  else
  {
    oslog = sub_221C56F70();
    v8 = sub_221C57100();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v12 = v10;
      *v9 = 136315394;
      *(v9 + 4) = sub_221C471AC(0xD000000000000017, 0x8000000221C58660, &v12);
      *(v9 + 12) = 2080;
      *(v9 + 14) = sub_221C471AC(0xD00000000000001DLL, 0x8000000221C597E0, &v12);
      _os_log_impl(&dword_221C40000, oslog, v8, "%s.%s Cannot retrieve defaults from the Siri domain", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DA5860](v10, -1, -1);
      MEMORY[0x223DA5860](v9, -1, -1);
    }
  }
}

uint64_t sub_221C4C410()
{
  v0 = sub_221C56F90();
  __swift_allocate_value_buffer(v0, qword_27CFDF1C0);
  __swift_project_value_buffer(v0, qword_27CFDF1C0);
  return sub_221C56F80();
}

uint64_t static Logger.sessionPersistenceUtils.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CFDEF30 != -1)
  {
    swift_once();
  }

  v2 = sub_221C56F90();
  v3 = __swift_project_value_buffer(v2, qword_27CFDF1C0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

id _s25GenerativeAssistantCommon23SessionPersistenceUtilsV12userDefaults9forDomainSo06NSUserH0CSgSS_tFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() mainBundle];
  v5 = [v4 bundleIdentifier];

  if (v5)
  {
    v6 = sub_221C57090();
    v8 = v7;

    if (v6 == a1 && v8 == a2)
    {
    }

    else
    {
      v10 = sub_221C57260();

      if ((v10 & 1) == 0)
      {
        v11 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
        v12 = sub_221C57080();
        v13 = [v11 initWithSuiteName_];

        return v13;
      }
    }

    return [objc_opt_self() standardUserDefaults];
  }

  else
  {
    if (qword_27CFDEF30 != -1)
    {
      swift_once();
    }

    v15 = sub_221C56F90();
    __swift_project_value_buffer(v15, qword_27CFDF1C0);
    v16 = sub_221C56F70();
    v17 = sub_221C57100();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = v19;
      *v18 = 136315394;
      *(v18 + 4) = sub_221C471AC(0xD000000000000017, 0x8000000221C58660, &v20);
      *(v18 + 12) = 2080;
      *(v18 + 14) = sub_221C471AC(0xD000000000000018, 0x8000000221C59890, &v20);
      _os_log_impl(&dword_221C40000, v16, v17, "%s.%s Cannot retrieve bundle id", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DA5860](v19, -1, -1);
      MEMORY[0x223DA5860](v18, -1, -1);
    }

    return 0;
  }
}

void _s25GenerativeAssistantCommon23SessionPersistenceUtilsV03setD0010forCurrentD00H3KeyySS_SStFZ_0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_27CFDEF30 != -1)
  {
    swift_once();
  }

  v6 = sub_221C56F90();
  __swift_project_value_buffer(v6, qword_27CFDF1C0);

  v7 = sub_221C56F70();
  v8 = sub_221C570F0();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136315650;
    *(v9 + 4) = sub_221C471AC(0xD000000000000017, 0x8000000221C58660, &v18);
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_221C471AC(0xD000000000000025, 0x8000000221C59860, &v18);
    *(v9 + 22) = 2080;
    *(v9 + 24) = sub_221C471AC(a1, a2, &v18);
    _os_log_impl(&dword_221C40000, v7, v8, "%s.%s Storing current session %s.", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x223DA5860](v10, -1, -1);
    MEMORY[0x223DA5860](v9, -1, -1);
  }

  v11 = _s25GenerativeAssistantCommon23SessionPersistenceUtilsV12userDefaults9forDomainSo06NSUserH0CSgSS_tFZ_0(0xD00000000000003FLL, 0x8000000221C591B0);
  if (v11)
  {
    v12 = v11;
    v13 = sub_221C57080();
    oslog = sub_221C57080();
    [v12 setObject:v13 forKey:oslog];
  }

  else
  {
    oslog = sub_221C56F70();
    v14 = sub_221C57100();
    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v18 = v16;
      *v15 = 136315394;
      *(v15 + 4) = sub_221C471AC(0xD000000000000017, 0x8000000221C58660, &v18);
      *(v15 + 12) = 2080;
      *(v15 + 14) = sub_221C471AC(0xD000000000000025, 0x8000000221C59860, &v18);
      _os_log_impl(&dword_221C40000, oslog, v14, "%s.%s Cannot retrieve defaults from the extension domain", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DA5860](v16, -1, -1);
      MEMORY[0x223DA5860](v15, -1, -1);
    }
  }
}

uint64_t _s25GenerativeAssistantCommon23SessionPersistenceUtilsV017didConfirmInMediaD09sessionIdSbSS_tFZ_0(uint64_t a1, uint64_t a2)
{
  if (qword_27CFDEF30 != -1)
  {
    swift_once();
  }

  v4 = sub_221C56F90();
  __swift_project_value_buffer(v4, qword_27CFDF1C0);
  v5 = sub_221C56F70();
  v6 = sub_221C570F0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v30 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_221C471AC(0xD000000000000017, 0x8000000221C58660, &v30);
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_221C471AC(0xD000000000000024, 0x8000000221C59830, &v30);
    _os_log_impl(&dword_221C40000, v5, v6, "%s.%s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DA5860](v8, -1, -1);
    MEMORY[0x223DA5860](v7, -1, -1);
  }

  v9 = _s25GenerativeAssistantCommon23SessionPersistenceUtilsV12userDefaults9forDomainSo06NSUserH0CSgSS_tFZ_0(0xD00000000000003FLL, 0x8000000221C591B0);
  if (!v9)
  {
    v10 = sub_221C56F70();
    v16 = sub_221C57100();
    if (os_log_type_enabled(v10, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v30 = v18;
      *v17 = 136315394;
      *(v17 + 4) = sub_221C471AC(0xD000000000000017, 0x8000000221C58660, &v30);
      *(v17 + 12) = 2080;
      *(v17 + 14) = sub_221C471AC(0xD000000000000024, 0x8000000221C59830, &v30);
      _os_log_impl(&dword_221C40000, v10, v16, "%s.%s Cannot retrieve defaults from the extension domain", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DA5860](v18, -1, -1);
      MEMORY[0x223DA5860](v17, -1, -1);
    }

    goto LABEL_22;
  }

  v10 = v9;
  v11 = sub_221C57080();
  v12 = [v10 stringForKey:v11];

  if (!v12)
  {
    v19 = sub_221C56F70();
    v20 = sub_221C570F0();
    if (!os_log_type_enabled(v19, v20))
    {
LABEL_21:

LABEL_22:
      return 0;
    }

    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v30 = v22;
    *v21 = 136315394;
    *(v21 + 4) = sub_221C471AC(0xD000000000000017, 0x8000000221C58660, &v30);
    *(v21 + 12) = 2080;
    *(v21 + 14) = sub_221C471AC(0xD000000000000024, 0x8000000221C59830, &v30);
    v23 = "%s.%s no media sessionId stored";
LABEL_20:
    _os_log_impl(&dword_221C40000, v19, v20, v23, v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DA5860](v22, -1, -1);
    MEMORY[0x223DA5860](v21, -1, -1);
    goto LABEL_21;
  }

  v13 = sub_221C57090();
  v15 = v14;

  if (v13 != a1 || v15 != a2)
  {
    v24 = sub_221C57260();

    if (v24)
    {
      goto LABEL_15;
    }

    v19 = sub_221C56F70();
    v20 = sub_221C570F0();
    if (!os_log_type_enabled(v19, v20))
    {
      goto LABEL_21;
    }

    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v30 = v22;
    *v21 = 136315394;
    *(v21 + 4) = sub_221C471AC(0xD000000000000017, 0x8000000221C58660, &v30);
    *(v21 + 12) = 2080;
    *(v21 + 14) = sub_221C471AC(0xD000000000000024, 0x8000000221C59830, &v30);
    v23 = "%s.%s sessionId not matched";
    goto LABEL_20;
  }

LABEL_15:
  v25 = sub_221C56F70();
  v26 = sub_221C570F0();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v30 = v28;
    *v27 = 136315394;
    *(v27 + 4) = sub_221C471AC(0xD000000000000017, 0x8000000221C58660, &v30);
    *(v27 + 12) = 2080;
    *(v27 + 14) = sub_221C471AC(0xD000000000000024, 0x8000000221C59830, &v30);
    _os_log_impl(&dword_221C40000, v25, v26, "%s.%s media sessionId matched", v27, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DA5860](v28, -1, -1);
    MEMORY[0x223DA5860](v27, -1, -1);
  }

  return 1;
}

void sub_221C4D110(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    sub_221C41EA8(a1, a2);
  }
}

void _s25GenerativeAssistantCommon23SessionPersistenceUtilsV40clearStoredVisualIntelligenceImageValuesyyFZ_0()
{
  if (qword_27CFDEF30 != -1)
  {
    swift_once();
  }

  v0 = sub_221C56F90();
  __swift_project_value_buffer(v0, qword_27CFDF1C0);
  v1 = sub_221C56F70();
  v2 = sub_221C570F0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v12 = v4;
    *v3 = 136315394;
    *(v3 + 4) = sub_221C471AC(0xD000000000000017, 0x8000000221C58660, &v12);
    *(v3 + 12) = 2080;
    *(v3 + 14) = sub_221C471AC(0xD00000000000002ALL, 0x8000000221C59800, &v12);
    _os_log_impl(&dword_221C40000, v1, v2, "%s.%s", v3, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DA5860](v4, -1, -1);
    MEMORY[0x223DA5860](v3, -1, -1);
  }

  v5 = _s25GenerativeAssistantCommon23SessionPersistenceUtilsV12userDefaults9forDomainSo06NSUserH0CSgSS_tFZ_0(0x6C7070612E6D6F63, 0xEE00697269732E65);
  if (v5)
  {
    v6 = v5;
    v7 = sub_221C57080();
    [v6 removeObjectForKey_];

    oslog = sub_221C57080();
    [v6 removeObjectForKey_];
  }

  else
  {
    oslog = sub_221C56F70();
    v8 = sub_221C57100();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v12 = v10;
      *v9 = 136315394;
      *(v9 + 4) = sub_221C471AC(0xD000000000000017, 0x8000000221C58660, &v12);
      *(v9 + 12) = 2080;
      *(v9 + 14) = sub_221C471AC(0xD00000000000002ALL, 0x8000000221C59800, &v12);
      _os_log_impl(&dword_221C40000, oslog, v8, "%s.%s Cannot retrieve defaults from the Siri domain", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DA5860](v10, -1, -1);
      MEMORY[0x223DA5860](v9, -1, -1);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
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

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_221C4D4AC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[24])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_221C4D500(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t static GATError.errorDomain.getter()
{
  swift_beginAccess();
  v0 = qword_27CFDF1D8;

  return v0;
}

uint64_t static GATError.errorDomain.setter(uint64_t a1, char *a2)
{
  swift_beginAccess();
  qword_27CFDF1D8 = a1;
  off_27CFDF1E0 = a2;
}

uint64_t sub_221C4D660(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  qword_27CFDF1D8 = v2;
  off_27CFDF1E0 = v1;
}

uint64_t GATError.errorCode.getter()
{
  result = *(v0 + 16);
  if (*(v0 + 16))
  {
    if (result == 1)
    {
      return 1;
    }

    else
    {
      return *v0 + 2;
    }
  }

  return result;
}

unint64_t GATError.errorUserInfo.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  if (*(v0 + 16) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFDF1E8, &qword_221C587D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_221C587A0;
    *(inited + 32) = 0xD000000000000012;
    v4 = inited + 32;
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = 0x8000000221C59900;
    *(inited + 48) = v2;
    *(inited + 56) = v1;
    v5 = v2;
    v6 = v1;
    v7 = 1;
    goto LABEL_5;
  }

  if (!*(v0 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFDF1E8, &qword_221C587D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_221C587A0;
    *(inited + 32) = 0xD000000000000010;
    v4 = inited + 32;
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = 0x8000000221C59920;
    *(inited + 48) = v2;
    *(inited + 56) = v1;
    v5 = v2;
    v6 = v1;
    v7 = 0;
LABEL_5:
    sub_221C4ECA4(v5, v6, v7);
    v8 = sub_221C4EB94(inited);
    swift_setDeallocating();
    sub_221C4ECE0(v4, &qword_27CFDF1F0, &qword_221C587D8);
    return v8;
  }

  v10 = MEMORY[0x277D84F90];

  return sub_221C4EB94(v10);
}

uint64_t static GATError.fromNSError(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 domain];
  v5 = sub_221C57090();
  v7 = v6;

  swift_beginAccess();
  if (v5 == qword_27CFDF1D8 && v7 == off_27CFDF1E0)
  {
  }

  else
  {
    v9 = sub_221C57260();

    if ((v9 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  result = [a1 code];
  if (result > 1)
  {
    switch(result)
    {
      case 2:
        *a2 = 0;
        *(a2 + 8) = 0;
LABEL_22:
        v16 = 2;
        goto LABEL_29;
      case 4:
        v11 = xmmword_221C587C0;
        goto LABEL_21;
      case 5:
        v11 = xmmword_221C587B0;
LABEL_21:
        *a2 = v11;
        goto LABEL_22;
    }

LABEL_28:
    *a2 = 0;
    *(a2 + 8) = 0;
    v16 = -1;
    goto LABEL_29;
  }

  if (!result)
  {
    v17 = [a1 userInfo];
    v18 = sub_221C57030();

    if (*(v18 + 16))
    {
      v19 = sub_221C4E788(0xD000000000000010, 0x8000000221C59920);
      if (v20)
      {
        sub_221C47E80(*(v18 + 56) + 32 * v19, v23);

        result = swift_dynamicCast();
        if (result)
        {
          *a2 = v21;
          *(a2 + 8) = v22;
          *(a2 + 16) = 0;
          return result;
        }

        goto LABEL_28;
      }
    }

    goto LABEL_27;
  }

  if (result != 1)
  {
    goto LABEL_28;
  }

  v12 = [a1 userInfo];
  v13 = sub_221C57030();

  if (!*(v13 + 16) || (v14 = sub_221C4E788(0xD000000000000012, 0x8000000221C59900), (v15 & 1) == 0))
  {
LABEL_27:

    goto LABEL_28;
  }

  sub_221C47E80(*(v13 + 56) + 32 * v14, v23);

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    goto LABEL_28;
  }

  *a2 = v21;
  *(a2 + 8) = v22;
  v16 = 1;
LABEL_29:
  *(a2 + 16) = v16;
  return result;
}

uint64_t sub_221C4DB1C()
{
  swift_beginAccess();
  v0 = qword_27CFDF1D8;

  return v0;
}

uint64_t sub_221C4DB70()
{
  result = *(v0 + 16);
  if (*(v0 + 16))
  {
    if (result == 1)
    {
      return 1;
    }

    else
    {
      return *v0 + 2;
    }
  }

  return result;
}

uint64_t sub_221C4DB9C(uint64_t a1)
{
  v2 = sub_221C4F154();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_221C4DBD8(uint64_t a1)
{
  v2 = sub_221C4F154();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_221C4DC94()
{
  v1 = OBJC_IVAR____TtC25GenerativeAssistantCommon35CustomErrorWithLocalizedDescription_errorCode;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_221C4DCD8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC25GenerativeAssistantCommon35CustomErrorWithLocalizedDescription_errorCode;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_221C4DD88(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (*a2 + *a5);
  swift_beginAccess();
  *v7 = v6;
  v7[1] = v5;
}

uint64_t sub_221C4DE08(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  *v6 = a1;
  v6[1] = a2;
}

id CustomErrorWithLocalizedDescription.init(domain:code:errorDescription:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = &v5[OBJC_IVAR____TtC25GenerativeAssistantCommon35CustomErrorWithLocalizedDescription_errorDomain];
  *v9 = a1;
  *(v9 + 1) = a2;
  *&v5[OBJC_IVAR____TtC25GenerativeAssistantCommon35CustomErrorWithLocalizedDescription_errorCode] = a3;
  v10 = &v5[OBJC_IVAR____TtC25GenerativeAssistantCommon35CustomErrorWithLocalizedDescription_errorDescription];
  *v10 = a4;
  *(v10 + 1) = a5;

  v11 = sub_221C57080();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFDF1E8, &qword_221C587D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_221C587A0;
  *(inited + 32) = sub_221C57090();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v13;
  *(inited + 48) = a4;
  *(inited + 56) = a5;
  sub_221C4EB94(inited);
  swift_setDeallocating();
  sub_221C4ECE0(inited + 32, &qword_27CFDF1F0, &qword_221C587D8);
  v14 = sub_221C57020();

  v17.receiver = v5;
  v17.super_class = type metadata accessor for CustomErrorWithLocalizedDescription();
  v15 = objc_msgSendSuper2(&v17, sel_initWithDomain_code_userInfo_, v11, a3, v14);

  return v15;
}

id CustomErrorWithLocalizedDescription.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id CustomErrorWithLocalizedDescription.init(coder:)(void *a1)
{
  v3 = sub_221C57080();
  v4 = [a1 decodeObjectForKey_];

  if (v4)
  {
    sub_221C57140();
    swift_unknownObjectRelease();
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
  }

  v22 = v20;
  v23 = v21;
  if (*(&v21 + 1))
  {
    if (swift_dynamicCast())
    {
      v6 = v17;
      v5 = v18;
      goto LABEL_9;
    }
  }

  else
  {
    sub_221C4ECE0(&v22, &qword_27CFDF210, &qword_221C587E0);
  }

  v5 = 0xE700000000000000;
  v6 = 0x6E776F6E6B6E55;
LABEL_9:
  v7 = &v1[OBJC_IVAR____TtC25GenerativeAssistantCommon35CustomErrorWithLocalizedDescription_errorDomain];
  *v7 = v6;
  v7[1] = v5;
  v8 = sub_221C57080();
  v9 = [a1 decodeIntegerForKey_];

  *&v1[OBJC_IVAR____TtC25GenerativeAssistantCommon35CustomErrorWithLocalizedDescription_errorCode] = v9;
  v10 = sub_221C57080();
  v11 = [a1 decodeObjectForKey_];

  if (v11)
  {
    sub_221C57140();
    swift_unknownObjectRelease();
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
  }

  v22 = v20;
  v23 = v21;
  if (*(&v21 + 1))
  {
    if (swift_dynamicCast())
    {
      v13 = v17;
      v12 = v18;
      goto LABEL_17;
    }
  }

  else
  {
    sub_221C4ECE0(&v22, &qword_27CFDF210, &qword_221C587E0);
  }

  v12 = 0xE700000000000000;
  v13 = 0x6E776F6E6B6E55;
LABEL_17:
  v14 = &v1[OBJC_IVAR____TtC25GenerativeAssistantCommon35CustomErrorWithLocalizedDescription_errorDescription];
  *v14 = v13;
  v14[1] = v12;
  v19.receiver = v1;
  v19.super_class = type metadata accessor for CustomErrorWithLocalizedDescription();
  v15 = objc_msgSendSuper2(&v19, sel_initWithCoder_, a1);

  if (v15)
  {
  }

  return v15;
}

uint64_t sub_221C4E384()
{
  swift_beginAccess();

  return sub_221C56D40();
}

uint64_t sub_221C4E46C(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;

  return v3;
}

id CustomErrorWithLocalizedDescription.__allocating_init(domain:code:userInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = sub_221C57080();

  if (a4)
  {
    v9 = sub_221C57020();
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_allocWithZone(v5) initWithDomain:v8 code:a3 userInfo:v9];

  return v10;
}

id CustomErrorWithLocalizedDescription.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CustomErrorWithLocalizedDescription();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_221C4E660()
{
  v1 = [*v0 helpAnchor];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_221C57090();

  return v3;
}

uint64_t sub_221C4E6CC()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC25GenerativeAssistantCommon35CustomErrorWithLocalizedDescription_errorCode;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t sub_221C4E718()
{
  swift_beginAccess();

  return sub_221C56D40();
}

unint64_t sub_221C4E788(uint64_t a1, uint64_t a2)
{
  sub_221C572C0();
  sub_221C570B0();
  v4 = sub_221C572E0();

  return sub_221C4E800(a1, a2, v4);
}

unint64_t sub_221C4E800(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_221C57260())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t _s25GenerativeAssistantCommon8GATErrorO2eeoiySbAC_ACtFZ_0(unint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = a2[1];
  v7 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (*(a2 + 16))
    {
      goto LABEL_10;
    }

    v16 = *a1;
    if (v3 != v6 || v2 != v5)
    {
      v9 = sub_221C57260();
      sub_221C4ECA4(v6, v5, 0);
      sub_221C4ECA4(v3, v2, 0);
      sub_221C4F1A8(v3, v2, 0);
      v10 = v6;
      v11 = v5;
      v12 = 0;
      goto LABEL_27;
    }

    sub_221C4ECA4(v16, v2, 0);
    sub_221C4ECA4(v3, v2, 0);
    sub_221C4F1A8(v3, v2, 0);
    v15 = v3;
    v18 = v2;
    v19 = 0;
    goto LABEL_39;
  }

  if (v4 != 1)
  {
    if (v3 > 1)
    {
      if (v3 ^ 2 | v2)
      {
        if (v7 != 2 || v6 != 3 || v5)
        {
          goto LABEL_10;
        }

        sub_221C4F1A8(*a1, v2, 2u);
        v15 = 3;
      }

      else
      {
        if (v7 != 2 || v6 != 2 || v5)
        {
          goto LABEL_10;
        }

        sub_221C4F1A8(*a1, v2, 2u);
        v15 = 2;
      }
    }

    else
    {
      if (v3 | v2)
      {
        if (v7 == 2 && v6 == 1 && !v5)
        {
          sub_221C4F1A8(*a1, v2, 2u);
          v13 = 1;
          sub_221C4F1A8(1, 0, 2u);
          return v13;
        }

        goto LABEL_10;
      }

      if (v7 != 2 || v5 | v6)
      {
LABEL_10:
        sub_221C4ECA4(*a2, a2[1], v7);
        sub_221C4ECA4(v3, v2, v4);
        sub_221C4F1A8(v3, v2, v4);
        sub_221C4F1A8(v6, v5, v7);
        return 0;
      }

      sub_221C4F1A8(*a1, v2, 2u);
      v15 = 0;
    }

    v18 = 0;
    v19 = 2;
LABEL_39:
    sub_221C4F1A8(v15, v18, v19);
    return 1;
  }

  if (v7 != 1)
  {
    goto LABEL_10;
  }

  if (v3 == v6 && v2 == v5)
  {
    v13 = 1;
    sub_221C4ECA4(*a1, v2, 1u);
    sub_221C4ECA4(v3, v2, 1u);
    sub_221C4F1A8(v3, v2, 1u);
    sub_221C4F1A8(v3, v2, 1u);
    return v13;
  }

  v9 = sub_221C57260();
  sub_221C4ECA4(v6, v5, 1u);
  sub_221C4ECA4(v3, v2, 1u);
  sub_221C4F1A8(v3, v2, 1u);
  v10 = v6;
  v11 = v5;
  v12 = 1;
LABEL_27:
  sub_221C4F1A8(v10, v11, v12);
  return v9 & 1;
}

unint64_t sub_221C4EB94(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFDF230, &qword_221C58A78);
    v3 = sub_221C571F0();
    v4 = a1 + 32;

    while (1)
    {
      sub_221C4F1C0(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_221C4E788(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_221C4F230(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_221C4ECA4(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_221C4ECE0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_221C4ED40()
{
  result = qword_27CFDF218;
  if (!qword_27CFDF218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFDF218);
  }

  return result;
}

unint64_t sub_221C4ED94()
{
  result = qword_27CFDF220;
  if (!qword_27CFDF220)
  {
    type metadata accessor for CustomErrorWithLocalizedDescription();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFDF220);
  }

  return result;
}

uint64_t keypath_get_2Tm@<X0>(void *a1@<X0>, void *a2@<X3>, void *a3@<X8>)
{
  v4 = (*a1 + *a2);
  swift_beginAccess();
  v5 = v4[1];
  *a3 = *v4;
  a3[1] = v5;
}

uint64_t get_enum_tag_for_layout_string_25GenerativeAssistantCommon8GATErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_221C4EE6C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_221C4EEB4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_221C4EEF8(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_221C4F154()
{
  result = qword_27CFDF228;
  if (!qword_27CFDF228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFDF228);
  }

  return result;
}

uint64_t sub_221C4F1A8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_221C4F1C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFDF1F0, &qword_221C587D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_221C4F230(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t DirectInvocationClientID.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_221C57200();

  *a3 = v4 != 0;
  return result;
}

unint64_t sub_221C4F2C8()
{
  result = qword_27CFDF238;
  if (!qword_27CFDF238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFDF238);
  }

  return result;
}

uint64_t sub_221C4F31C()
{
  sub_221C572C0();
  sub_221C570B0();
  return sub_221C572E0();
}

uint64_t sub_221C4F390(uint64_t a1)
{
  sub_221C572C0();
  sub_221C570B0();
  return sub_221C572E0();
}

uint64_t sub_221C4F3E4@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_221C57200();

  *a2 = v3 != 0;
  return result;
}

unint64_t sub_221C4F478()
{
  result = qword_280FA8C10;
  if (!qword_280FA8C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA8C10);
  }

  return result;
}

uint64_t sub_221C4F4E4(char a1)
{
  v4[3] = &type metadata for GenerativeAssistantFeatureFlags;
  v4[4] = sub_221C4F478();
  LOBYTE(v4[0]) = a1;
  v2 = sub_221C56DD0();
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v2 & 1;
}

uint64_t GenerativeAssistantFeatureFlagManager.description.getter()
{
  v16[0] = 0;
  v16[1] = 0xE000000000000000;
  sub_221C57170();
  v19 = 0;
  v20 = 0xE000000000000000;
  v0 = sub_221C57180();
  MEMORY[0x223DA5220](v0);

  MEMORY[0x223DA5220](0x6C62616E45736920, 0xEC000000203A6465);
  v17 = &type metadata for GenerativeAssistantFeatureFlags;
  v1 = sub_221C4F478();
  v18 = v1;
  v2 = sub_221C56DD0();
  __swift_destroy_boxed_opaque_existential_1(v16);
  if (v2)
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x223DA5220](v3, v4);

  MEMORY[0x223DA5220](2604, 0xE200000000000000);
  LOBYTE(v16[0]) = 2;
  sub_221C571C0();
  MEMORY[0x223DA5220](0x62616E4520736920, 0xED0000203A64656CLL);
  v17 = &type metadata for GenerativeAssistantFeatureFlags;
  v18 = v1;
  LOBYTE(v16[0]) = 2;
  v5 = sub_221C56DD0();
  __swift_destroy_boxed_opaque_existential_1(v16);
  if (v5)
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (v5)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x223DA5220](v6, v7);

  MEMORY[0x223DA5220](2604, 0xE200000000000000);
  LOBYTE(v16[0]) = 3;
  sub_221C571C0();
  MEMORY[0x223DA5220](0x62616E4520736920, 0xED0000203A64656CLL);
  v17 = &type metadata for GenerativeAssistantFeatureFlags;
  v18 = v1;
  LOBYTE(v16[0]) = 3;
  v8 = sub_221C56DD0();
  __swift_destroy_boxed_opaque_existential_1(v16);
  if (v8)
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if (v8)
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  MEMORY[0x223DA5220](v9, v10);

  MEMORY[0x223DA5220](2604, 0xE200000000000000);
  v11 = sub_221C57180();
  MEMORY[0x223DA5220](v11);

  MEMORY[0x223DA5220](0x6C62616E45736920, 0xEC000000203A6465);
  v17 = &type metadata for GenerativeAssistantFeatureFlags;
  v18 = v1;
  LOBYTE(v16[0]) = 1;
  v12 = sub_221C56DD0();
  __swift_destroy_boxed_opaque_existential_1(v16);
  if (v12)
  {
    v13 = 1702195828;
  }

  else
  {
    v13 = 0x65736C6166;
  }

  if (v12)
  {
    v14 = 0xE400000000000000;
  }

  else
  {
    v14 = 0xE500000000000000;
  }

  MEMORY[0x223DA5220](v13, v14);

  MEMORY[0x223DA5220](44, 0xE100000000000000);
  return v19;
}

uint64_t sub_221C4F884(uint64_t a1, uint64_t a2, char a3)
{
  v6[3] = &type metadata for GenerativeAssistantFeatureFlags;
  v6[4] = sub_221C4F478();
  LOBYTE(v6[0]) = a3;
  v4 = sub_221C56DD0();
  __swift_destroy_boxed_opaque_existential_1(v6);
  return v4 & 1;
}

uint64_t getEnumTagSinglePayload for GenerativeAssistantFeatureFlags(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GenerativeAssistantFeatureFlags(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_221C4FAA4()
{
  result = qword_27CFDF240;
  if (!qword_27CFDF240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFDF240);
  }

  return result;
}

const char *sub_221C4FB0C()
{
  v1 = "Boomerang";
  v2 = "MultiImageGeneration";
  if (*v0 != 2)
  {
    v2 = "TextContentStream";
  }

  if (*v0)
  {
    v1 = "DataDetector";
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

GenerativeAssistantCommon::Partner_optional __swiftcall Partner.init(requestedPartnerId:)(Swift::String_optional requestedPartnerId)
{
  v2 = v1;
  if (requestedPartnerId.value._object)
  {
    object = requestedPartnerId.value._object;
    if (sub_221C56DE0() == requestedPartnerId.value._countAndFlagsBits && v4 == object)
    {
    }

    else
    {
      v6 = sub_221C57260();

      if ((v6 & 1) == 0)
      {
        v5 = 1;
        goto LABEL_9;
      }
    }

    v5 = 0;
  }

  else
  {
    v5 = 2;
  }

LABEL_9:
  *v2 = v5;
  return requestedPartnerId.value._countAndFlagsBits;
}

uint64_t Partner.requestedPartnerId.getter()
{
  if (*v0)
  {
    return 0;
  }

  else
  {
    return sub_221C56DE0();
  }
}

uint64_t Partner.hashValue.getter()
{
  v1 = *v0;
  sub_221C572C0();
  MEMORY[0x223DA5430](v1);
  return sub_221C572E0();
}

unint64_t sub_221C4FCF8()
{
  result = qword_27CFDF248;
  if (!qword_27CFDF248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFDF248);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Partner(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Partner(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_221C4FEDC()
{
  v0 = sub_221C56D50();
  __swift_allocate_value_buffer(v0, qword_27CFE1130);
  v1 = __swift_project_value_buffer(v0, qword_27CFE1130);
  *v1 = type metadata accessor for ResourceBundleHelper();
  v2 = *MEMORY[0x277CC9120];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_221C4FF78(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = "com.apple.visualIntelligence";
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0xD00000000000001BLL;
    }

    else
    {
      v5 = 0xD00000000000001FLL;
    }

    if (v3)
    {
      v4 = "GenerativeAssistant.composition";
    }

    else
    {
      v4 = "com.apple.visualIntelligence";
    }
  }

  else if (a1 == 2)
  {
    v4 = "GenerativeAssistant.mediaQA";
    v5 = 0xD00000000000001DLL;
  }

  else if (a1 == 3)
  {
    v4 = "GenerativeAssistant.knowledge";
    v5 = 0xD000000000000025;
  }

  else
  {
    v4 = "ant.knowledgeFallback";
    v5 = 0xD00000000000002CLL;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0xD00000000000001BLL;
    }

    else
    {
      v6 = 0xD00000000000001FLL;
    }

    if (a2)
    {
      v2 = "GenerativeAssistant.composition";
    }
  }

  else if (a2 == 2)
  {
    v2 = "GenerativeAssistant.mediaQA";
    v6 = 0xD00000000000001DLL;
  }

  else if (a2 == 3)
  {
    v2 = "GenerativeAssistant.knowledge";
    v6 = 0xD000000000000025;
  }

  else
  {
    v2 = "ant.knowledgeFallback";
    v6 = 0xD00000000000002CLL;
  }

  if (v5 == v6 && (v4 | 0x8000000000000000) == (v2 | 0x8000000000000000))
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_221C57260();
  }

  return v7 & 1;
}

GenerativeAssistantCommon::GenerativeAssistantUseCase_optional __swiftcall GenerativeAssistantUseCase.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_221C57200();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t GenerativeAssistantUseCase.rawValue.getter()
{
  v1 = 0xD00000000000001BLL;
  v2 = *v0;
  v3 = 0xD00000000000001DLL;
  v4 = 0xD000000000000025;
  if (v2 != 3)
  {
    v4 = 0xD00000000000002CLL;
  }

  if (v2 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v1 = 0xD00000000000001FLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_221C501DC()
{
  result = qword_27CFDF250;
  if (!qword_27CFDF250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFDF250);
  }

  return result;
}

uint64_t sub_221C50230()
{
  sub_221C572C0();
  sub_221C570B0();

  return sub_221C572E0();
}

uint64_t sub_221C50304(uint64_t a1)
{
  sub_221C570B0();
}

uint64_t sub_221C503C4(uint64_t a1)
{
  sub_221C572C0();
  sub_221C570B0();

  return sub_221C572E0();
}

unint64_t sub_221C504A0@<X0>(unint64_t *a1@<X8>)
{
  v2 = 0xD00000000000001BLL;
  v3 = *v1;
  v4 = "GenerativeAssistant.mediaQA";
  v5 = 0xD00000000000001DLL;
  v6 = "GenerativeAssistant.knowledge";
  v7 = 0xD000000000000025;
  result = 0xD00000000000002CLL;
  if (v3 != 3)
  {
    v7 = 0xD00000000000002CLL;
    v6 = "ant.knowledgeFallback";
  }

  if (v3 != 2)
  {
    v5 = v7;
    v4 = v6;
  }

  if (*v1)
  {
    v9 = "GenerativeAssistant.composition";
  }

  else
  {
    v2 = 0xD00000000000001FLL;
    v9 = "com.apple.visualIntelligence";
  }

  if (*v1 <= 1u)
  {
    v10 = v9;
  }

  else
  {
    v2 = v5;
    v10 = v4;
  }

  *a1 = v2;
  a1[1] = v10 | 0x8000000000000000;
  return result;
}

uint64_t getEnumTagSinglePayload for GenerativeAssistantUseCase(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GenerativeAssistantUseCase(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_221C50684()
{
  v0 = sub_221C56F90();
  __swift_allocate_value_buffer(v0, qword_280FA8BF8);
  __swift_project_value_buffer(v0, qword_280FA8BF8);
  return sub_221C56F80();
}

uint64_t static Logger.restrictions.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_280FA8BF0 != -1)
  {
    swift_once();
  }

  v2 = sub_221C56F90();
  v3 = __swift_project_value_buffer(v2, qword_280FA8BF8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

id sub_221C507B0()
{
  v0 = objc_opt_self();
  result = [v0 sharedConnection];
  if (!result)
  {
    __break(1u);
    goto LABEL_28;
  }

  v2 = result;
  v3 = [result isExternalIntelligenceSignInAllowed];

  if (v3)
  {
    v4 = 0;
    if (AFMontaraRestricted())
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v4 = GenerativeAssistantRestrictionManager.isSignedIn.getter();
  if ((AFMontaraRestricted() & 1) == 0)
  {
LABEL_6:
    if (sub_221C55CA4())
    {
      goto LABEL_7;
    }

    if (sub_221C50E1C())
    {
      if ((GenerativeAssistantRestrictionManager.isSignedIn.getter() & 1) == 0)
      {
        goto LABEL_7;
      }

      GenerativeAssistantRestrictionManager.openAICredentialsWorkspaceId.getter();
      if (!v15)
      {
        goto LABEL_7;
      }

      v16 = GenerativeAssistantRestrictionManager.openAICredentialsWorkspaceId.getter();
      v18 = sub_221C51178(v16, v17);

      if (v4 & 1 | ((v18 & 1) == 0))
      {
        goto LABEL_7;
      }
    }

    else if (v4)
    {
      goto LABEL_7;
    }

    result = [v0 sharedConnection];
    if (result)
    {
      v19 = result;
      v5 = [result isExternalIntelligenceAllowed];

      goto LABEL_8;
    }

LABEL_28:
    __break(1u);
    return result;
  }

LABEL_7:
  v5 = 0;
LABEL_8:
  if (qword_280FA8BF0 != -1)
  {
    swift_once();
  }

  v6 = sub_221C56F90();
  __swift_project_value_buffer(v6, qword_280FA8BF8);
  v7 = sub_221C56F70();
  v8 = sub_221C570F0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67110144;
    *(v9 + 4) = v5;
    *(v9 + 8) = 1024;
    *(v9 + 10) = AFMontaraRestricted();
    *(v9 + 14) = 1024;
    *(v9 + 16) = sub_221C55CA4() & 1;
    *(v9 + 20) = 1024;
    v14 = 0;
    if (sub_221C50E1C())
    {
      if ((GenerativeAssistantRestrictionManager.isSignedIn.getter() & 1) == 0 || (GenerativeAssistantRestrictionManager.openAICredentialsWorkspaceId.getter(), !v10) || (, v11 = GenerativeAssistantRestrictionManager.openAICredentialsWorkspaceId.getter(), v13 = sub_221C51178(v11, v12), , (v13 & 1) == 0))
      {
        v14 = 1;
      }
    }

    *(v9 + 22) = v14;
    *(v9 + 26) = 1024;
    *(v9 + 28) = v4 & 1;
    _os_log_impl(&dword_221C40000, v7, v8, "Montara: isMontaraAllowed %{BOOL}d -- afMontaraRestricted %{BOOL}d isMisconfigured %{BOOL}d userNeedsToSignInToWorkspace %{BOOL}d userShouldBeAnonymous %{BOOL}d", v9, 0x20u);
    MEMORY[0x223DA5860](v9, -1, -1);
  }

  return v5;
}

uint64_t GenerativeAssistantRestrictions.isMontaraAllowed.getter(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v30[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v30[-v10];
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v30[-v13];
  if ((*(v15 + 96))(v12))
  {
    v16 = 0;
  }

  else
  {
    v16 = (*(a2 + 72))(a1, a2);
  }

  v32 = *(a2 + 32);
  v33 = (a2 + 32);
  if (v32(a1, a2) & 1) != 0 || (GenerativeAssistantRestrictions.isMisconfigured.getter(a1, a2) & 1) != 0 || (((*(a2 + 144))(a1, a2) | v16))
  {
    v17 = 0;
  }

  else
  {
    v17 = (*(a2 + 104))(a1, a2);
  }

  v34 = v16;
  v35 = v17;
  if (qword_280FA8BF0 != -1)
  {
    swift_once();
  }

  v18 = sub_221C56F90();
  __swift_project_value_buffer(v18, qword_280FA8BF8);
  v19 = *(v5 + 16);
  v19(v14, v2, a1);
  v19(v11, v2, a1);
  v19(v8, v2, a1);
  v20 = sub_221C56F70();
  v21 = sub_221C570F0();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 67110144;
    v23 = v35;
    *(v22 + 4) = v35 & 1;
    *(v22 + 8) = 1024;
    v31 = v21;
    v24 = v32(a1, a2) & 1;
    v33 = v20;
    v25 = *(v5 + 8);
    v25(v14, a1);
    *(v22 + 10) = v24;
    *(v22 + 14) = 1024;
    v26 = GenerativeAssistantRestrictions.isMisconfigured.getter(a1, a2) & 1;
    v25(v11, a1);
    *(v22 + 16) = v26;
    *(v22 + 20) = 1024;
    v27 = (*(a2 + 144))(a1, a2) & 1;
    v25(v8, a1);
    v20 = v33;
    *(v22 + 22) = v27;
    *(v22 + 26) = 1024;
    *(v22 + 28) = v34 & 1;
    _os_log_impl(&dword_221C40000, v20, v31, "Montara: isMontaraAllowed %{BOOL}d -- afMontaraRestricted %{BOOL}d isMisconfigured %{BOOL}d userNeedsToSignInToWorkspace %{BOOL}d userShouldBeAnonymous %{BOOL}d", v22, 0x20u);
    MEMORY[0x223DA5860](v22, -1, -1);
  }

  else
  {
    v28 = *(v5 + 8);
    v28(v8, a1);
    v28(v11, a1);
    v28(v14, a1);
    v23 = v35;
  }

  return v23 & 1;
}

BOOL sub_221C50E1C()
{
  sub_221C562A4(&v9);
  v1 = v9;
  v0 = v10;
  if (v10 == 1)
  {
    v2 = 1;
  }

  else
  {
    sub_221C565A8(v9, v10);
    v2 = v0;
  }

  sub_221C56594(v1, v2);
  sub_221C56594(0, 1uLL);
  sub_221C56594(v1, v2);
  if (qword_280FA8BF0 != -1)
  {
    swift_once();
  }

  v3 = sub_221C56F90();
  __swift_project_value_buffer(v3, qword_280FA8BF8);
  v4 = sub_221C56F70();
  v5 = sub_221C570F0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v9 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_221C471AC(0xD000000000000024, 0x8000000221C59B50, &v9);
    *(v6 + 12) = 1024;
    *(v6 + 14) = v0 != 1;
    _os_log_impl(&dword_221C40000, v4, v5, "%s: %{BOOL}d", v6, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x223DA5860](v7, -1, -1);
    MEMORY[0x223DA5860](v6, -1, -1);
  }

  return v0 != 1;
}

BOOL GenerativeAssistantRestrictions.isExternalIntelligenceSignInRequired.getter(uint64_t a1, uint64_t a2)
{
  GenerativeAssistantRestrictions.externalIntelligenceWorkspaceRestriction.getter(a1, a2, &v11);
  v3 = v11;
  v2 = v12;
  if (v12 == 1)
  {
    v4 = 1;
  }

  else
  {
    sub_221C565A8(v11, v12);
    v4 = v2;
  }

  sub_221C56594(v3, v4);
  sub_221C56594(0, 1uLL);
  sub_221C56594(v3, v4);
  if (qword_280FA8BF0 != -1)
  {
    swift_once();
  }

  v5 = sub_221C56F90();
  __swift_project_value_buffer(v5, qword_280FA8BF8);
  v6 = sub_221C56F70();
  v7 = sub_221C570F0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v11 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_221C471AC(0xD000000000000024, 0x8000000221C59B50, &v11);
    *(v8 + 12) = 1024;
    *(v8 + 14) = v2 != 1;
    _os_log_impl(&dword_221C40000, v6, v7, "%s: %{BOOL}d", v8, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x223DA5860](v9, -1, -1);
    MEMORY[0x223DA5860](v8, -1, -1);
  }

  return v2 != 1;
}

uint64_t sub_221C51178(uint64_t a1, uint64_t a2)
{
  v3 = sub_221C56CD0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_221C562A4(&v41);
  v7 = v42;
  if (!v42)
  {
    if (qword_280FA8BF0 != -1)
    {
      swift_once();
    }

    v13 = sub_221C56F90();
    __swift_project_value_buffer(v13, qword_280FA8BF8);
    v14 = sub_221C56F70();
    v15 = sub_221C57100();
    if (!os_log_type_enabled(v14, v15))
    {
      goto LABEL_28;
    }

    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v40[0] = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_221C471AC(0xD00000000000001ELL, 0x8000000221C59B80, v40);
    v18 = "%s: an empty value for allowedExternalIntelligenceWorkspaceIDs was provided, unable to validate any credentials.";
    goto LABEL_27;
  }

  if (v42 != 1)
  {
    v19 = v41;
    if (a2)
    {
      v40[0] = sub_221C570A0();
      v40[1] = v20;
      sub_221C56CC0();
      sub_221C565BC();
      v21 = sub_221C57130();
      v23 = v22;
      (*(v4 + 8))(v6, v3);

      if (v19 == v21 && v7 == v23)
      {
        sub_221C56594(v19, v7);
      }

      else
      {
        v25 = sub_221C57260();
        sub_221C56594(v19, v7);
        if ((v25 & 1) == 0)
        {
          if (qword_280FA8BF0 != -1)
          {
            swift_once();
          }

          v26 = sub_221C56F90();
          __swift_project_value_buffer(v26, qword_280FA8BF8);

          v27 = sub_221C56F70();
          v28 = sub_221C57100();

          if (os_log_type_enabled(v27, v28))
          {
            v29 = swift_slowAlloc();
            v30 = swift_slowAlloc();
            v40[0] = v30;
            *v29 = 136315394;
            *(v29 + 4) = sub_221C471AC(0xD00000000000001ELL, 0x8000000221C59B80, v40);
            *(v29 + 12) = 2080;
            v31 = sub_221C471AC(v21, v23, v40);

            *(v29 + 14) = v31;
            _os_log_impl(&dword_221C40000, v27, v28, "%s: %s is not allowed", v29, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x223DA5860](v30, -1, -1);
            MEMORY[0x223DA5860](v29, -1, -1);
          }

          else
          {
          }

          return 0;
        }
      }

      if (qword_280FA8BF0 != -1)
      {
        swift_once();
      }

      v34 = sub_221C56F90();
      __swift_project_value_buffer(v34, qword_280FA8BF8);

      v35 = sub_221C56F70();
      v36 = sub_221C570F0();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v40[0] = v38;
        *v37 = 136315394;
        *(v37 + 4) = sub_221C471AC(0xD00000000000001ELL, 0x8000000221C59B80, v40);
        *(v37 + 12) = 2080;
        v39 = sub_221C471AC(v21, v23, v40);

        *(v37 + 14) = v39;
        _os_log_impl(&dword_221C40000, v35, v36, "%s: workspace id %s matched. User signed in with an accepted workspace.", v37, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DA5860](v38, -1, -1);
        MEMORY[0x223DA5860](v37, -1, -1);
      }

      else
      {
      }

      return 1;
    }

    sub_221C56594(v41, v42);
    if (qword_280FA8BF0 != -1)
    {
      swift_once();
    }

    v32 = sub_221C56F90();
    __swift_project_value_buffer(v32, qword_280FA8BF8);
    v14 = sub_221C56F70();
    v15 = sub_221C57100();
    if (!os_log_type_enabled(v14, v15))
    {
LABEL_28:

      return 0;
    }

    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v40[0] = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_221C471AC(0xD00000000000001ELL, 0x8000000221C59B80, v40);
    v18 = "%s: a workspace is required, but the credentials have none";
LABEL_27:
    _os_log_impl(&dword_221C40000, v14, v15, v18, v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x223DA5860](v17, -1, -1);
    MEMORY[0x223DA5860](v16, -1, -1);
    goto LABEL_28;
  }

  if (qword_280FA8BF0 != -1)
  {
    swift_once();
  }

  v8 = sub_221C56F90();
  __swift_project_value_buffer(v8, qword_280FA8BF8);
  v9 = sub_221C56F70();
  v10 = sub_221C570F0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v40[0] = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_221C471AC(0xD00000000000001ELL, 0x8000000221C59B80, v40);
    _os_log_impl(&dword_221C40000, v9, v10, "%s: no workspace restriction", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x223DA5860](v12, -1, -1);
    MEMORY[0x223DA5860](v11, -1, -1);
  }

  return 1;
}

Swift::Bool __swiftcall GenerativeAssistantRestrictions.workspaceAllowed(workspaceId:)(Swift::String_optional workspaceId)
{
  v3 = v2;
  v4 = v1;
  object = workspaceId.value._object;
  v6 = sub_221C56CD0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  GenerativeAssistantRestrictions.externalIntelligenceWorkspaceRestriction.getter(v4, v3, &v44);
  v10 = v45;
  if (!v45)
  {
    if (qword_280FA8BF0 != -1)
    {
      swift_once();
    }

    v17 = sub_221C56F90();
    __swift_project_value_buffer(v17, qword_280FA8BF8);
    v18 = sub_221C56F70();
    v19 = sub_221C57100();
    if (!os_log_type_enabled(v18, v19))
    {
      goto LABEL_28;
    }

    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v43[0] = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_221C471AC(0xD00000000000001ELL, 0x8000000221C59B80, v43);
    v22 = "%s: an empty value for allowedExternalIntelligenceWorkspaceIDs was provided, unable to validate any credentials.";
    goto LABEL_27;
  }

  if (v45 == 1)
  {
    if (qword_280FA8BF0 != -1)
    {
      swift_once();
    }

    v11 = sub_221C56F90();
    __swift_project_value_buffer(v11, qword_280FA8BF8);
    v12 = sub_221C56F70();
    v13 = sub_221C570F0();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v43[0] = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_221C471AC(0xD00000000000001ELL, 0x8000000221C59B80, v43);
      _os_log_impl(&dword_221C40000, v12, v13, "%s: no workspace restriction", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x223DA5860](v15, -1, -1);
      MEMORY[0x223DA5860](v14, -1, -1);
    }

    return 1;
  }

  v23 = v44;
  if (object)
  {
    v43[0] = sub_221C570A0();
    v43[1] = v24;
    sub_221C56CC0();
    sub_221C565BC();
    v25 = sub_221C57130();
    v27 = v26;
    (*(v7 + 8))(v9, v6);

    if (v23 == v25 && v10 == v27)
    {
      sub_221C56594(v23, v10);
    }

    else
    {
      v29 = sub_221C57260();
      sub_221C56594(v23, v10);
      if ((v29 & 1) == 0)
      {
        if (qword_280FA8BF0 != -1)
        {
          swift_once();
        }

        v30 = sub_221C56F90();
        __swift_project_value_buffer(v30, qword_280FA8BF8);

        v31 = sub_221C56F70();
        v32 = sub_221C57100();

        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          v43[0] = v34;
          *v33 = 136315394;
          *(v33 + 4) = sub_221C471AC(0xD00000000000001ELL, 0x8000000221C59B80, v43);
          *(v33 + 12) = 2080;
          v35 = sub_221C471AC(v25, v27, v43);

          *(v33 + 14) = v35;
          _os_log_impl(&dword_221C40000, v31, v32, "%s: %s is not allowed", v33, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x223DA5860](v34, -1, -1);
          MEMORY[0x223DA5860](v33, -1, -1);
        }

        else
        {
        }

        return 0;
      }
    }

    if (qword_280FA8BF0 != -1)
    {
      swift_once();
    }

    v37 = sub_221C56F90();
    __swift_project_value_buffer(v37, qword_280FA8BF8);

    v38 = sub_221C56F70();
    v39 = sub_221C570F0();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v43[0] = v41;
      *v40 = 136315394;
      *(v40 + 4) = sub_221C471AC(0xD00000000000001ELL, 0x8000000221C59B80, v43);
      *(v40 + 12) = 2080;
      v42 = sub_221C471AC(v25, v27, v43);

      *(v40 + 14) = v42;
      _os_log_impl(&dword_221C40000, v38, v39, "%s: workspace id %s matched. User signed in with an accepted workspace.", v40, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DA5860](v41, -1, -1);
      MEMORY[0x223DA5860](v40, -1, -1);
    }

    else
    {
    }

    return 1;
  }

  sub_221C56594(v44, v45);
  if (qword_280FA8BF0 != -1)
  {
    swift_once();
  }

  v36 = sub_221C56F90();
  __swift_project_value_buffer(v36, qword_280FA8BF8);
  v18 = sub_221C56F70();
  v19 = sub_221C57100();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v43[0] = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_221C471AC(0xD00000000000001ELL, 0x8000000221C59B80, v43);
    v22 = "%s: a workspace is required, but the credentials have none";
LABEL_27:
    _os_log_impl(&dword_221C40000, v18, v19, v22, v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x223DA5860](v21, -1, -1);
    MEMORY[0x223DA5860](v20, -1, -1);
  }

LABEL_28:

  return 0;
}

uint64_t sub_221C52030(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221C520D4;

  return GenerativeAssistantRestrictions.signOutIfRestricted()(a1, a2);
}

uint64_t sub_221C520D4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

id sub_221C521E4()
{
  v16 = v0;
  if ((GenerativeAssistantRestrictionManager.isSignedIn.getter() & 1) == 0)
  {
LABEL_5:
    v8 = *(v0 + 8);

    return v8();
  }

  v1 = GenerativeAssistantRestrictionManager.openAICredentialsWorkspaceId.getter();
  v3 = v2;
  result = [objc_opt_self() sharedConnection];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v5 = result;
  v6 = [result isExternalIntelligenceSignInAllowed];

  if (v6)
  {
    v7 = sub_221C51178(v1, v3);

    if (v7)
    {
      goto LABEL_5;
    }
  }

  else
  {
  }

  if (qword_280FA8BF0 != -1)
  {
    swift_once();
  }

  v9 = sub_221C56F90();
  __swift_project_value_buffer(v9, qword_280FA8BF8);
  v10 = sub_221C56F70();
  v11 = sub_221C570F0();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v15 = v13;
    *v12 = 136315394;
    *(v12 + 4) = sub_221C471AC(0xD000000000000025, 0x8000000221C59010, &v15);
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_221C471AC(0xD000000000000015, 0x8000000221C59BA0, &v15);
    _os_log_impl(&dword_221C40000, v10, v11, "%s.%s External intelligence sign in is restricted -- signing out.", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DA5860](v13, -1, -1);
    MEMORY[0x223DA5860](v12, -1, -1);
  }

  v14 = swift_task_alloc();
  *(v0 + 16) = v14;
  *v14 = v0;
  v14[1] = sub_221C52484;

  return GenerativeAssistantRestrictionManager.openAIAuthenticatorSignOut()();
}

uint64_t sub_221C52484()
{
  *(*v1 + 24) = v0;

  if (v0)
  {
    v2 = sub_221C525B0;
  }

  else
  {
    v2 = sub_221C52598;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t GenerativeAssistantRestrictions.signOutIfRestricted()(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_221C525EC, 0, 0);
}

uint64_t sub_221C525EC()
{
  v22 = v0;
  if (((*(v0[3] + 72))(v0[2]) & 1) == 0)
  {
LABEL_4:
    v7 = v0[1];

    return v7();
  }

  v1 = v0[3];
  v2 = v0[2];
  v3 = (*(v1 + 80))(v2, v1);
  v5 = v4;
  if ((*(v1 + 96))(v2, v1))
  {
    v6 = (*(v0[3] + 128))(v3, v5, v0[2]);

    if (v6)
    {
      goto LABEL_4;
    }
  }

  else
  {
  }

  if (qword_280FA8BF0 != -1)
  {
    swift_once();
  }

  v9 = sub_221C56F90();
  __swift_project_value_buffer(v9, qword_280FA8BF8);
  v10 = sub_221C56F70();
  v11 = sub_221C570F0();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v21 = v13;
    *v12 = 136315394;
    v14 = sub_221C57330();
    v16 = sub_221C471AC(v14, v15, &v21);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_221C471AC(0xD000000000000015, 0x8000000221C59BA0, &v21);
    _os_log_impl(&dword_221C40000, v10, v11, "%s.%s External intelligence sign in is restricted -- signing out.", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DA5860](v13, -1, -1);
    MEMORY[0x223DA5860](v12, -1, -1);
  }

  v20 = (*(v0[3] + 88) + **(v0[3] + 88));
  v17 = swift_task_alloc();
  v0[5] = v17;
  *v17 = v0;
  v17[1] = sub_221C52948;
  v18 = v0[3];
  v19 = v0[2];

  return v20(v19, v18);
}

uint64_t sub_221C52948()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_221C52A40()
{
  if (sub_221C50E1C())
  {
    if ((GenerativeAssistantRestrictionManager.isSignedIn.getter() & 1) != 0 && (GenerativeAssistantRestrictionManager.openAICredentialsWorkspaceId.getter(), v0))
    {

      v1 = GenerativeAssistantRestrictionManager.openAICredentialsWorkspaceId.getter();
      v3 = sub_221C51178(v1, v2);

      v4 = v3 ^ 1;
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t GenerativeAssistantRestrictions.userNeedsToSignInToWorkspace.getter(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 112))())
  {
    if (((*(a2 + 72))(a1, a2) & 1) != 0 && (v4 = *(a2 + 80), v4(a1, a2), v5))
    {

      v6 = v4(a1, a2);
      v7 = (*(a2 + 128))(v6);

      v8 = v7 ^ 1;
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_221C52B9C()
{
  v0 = sub_221C56E30();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_221C56E20();
  v4 = sub_221C56E10();
  v6 = v5;
  result = (*(v1 + 8))(v3, v0);
  qword_27CFDF258 = v4;
  unk_27CFDF260 = v6;
  return result;
}

uint64_t static GenerativeAssistantRestrictionManager.useCase.getter()
{
  if (qword_27CFDEF40 != -1)
  {
    swift_once();
  }

  v0 = qword_27CFDF258;

  return v0;
}

Swift::Bool __swiftcall GenerativeAssistantRestrictionManager.isUseCaseAvailable(useCase:)(GenerativeAssistantCommon::GenerativeAssistantUseCase useCase)
{
  v1 = useCase;
  v2 = sub_221C56ED0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v27 - v7;
  v9 = sub_221C56F60();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v1;
  if (qword_27CFDEF28 != -1)
  {
    v26 = v11;
    swift_once();
    v11 = v26;
  }

  v28 = v11;
  v29 = v2;
  if (v14 <= 1)
  {
    if (v14)
    {
      v15 = "GenerativeAssistant.composition";
    }

    else
    {
      v15 = "com.apple.visualIntelligence";
    }
  }

  else if (v14 == 2)
  {
    v15 = "GenerativeAssistant.mediaQA";
  }

  else if (v14 == 3)
  {
    v15 = "GenerativeAssistant.knowledge";
  }

  else
  {
    v15 = "ant.knowledgeFallback";
  }

  v16 = v15 | 0x8000000000000000;
  v17 = *(qword_27CFE1128 + 24);
  v18 = MEMORY[0x28223BE20](v11);
  *(&v27 - 4) = v20;
  *(&v27 - 3) = v19;
  *(&v27 - 2) = v16;
  MEMORY[0x28223BE20](v18);
  *(&v27 - 2) = sub_221C56610;
  *(&v27 - 1) = v21;
  os_unfair_lock_lock(v17 + 4);
  sub_221C56630();
  os_unfair_lock_unlock(v17 + 4);

  sub_221C56F00();
  (*(v10 + 8))(v13, v28);
  v22 = v29;
  (*(v3 + 104))(v6, *MEMORY[0x277D0E278], v29);
  v23 = sub_221C56EC0();
  v24 = *(v3 + 8);
  v24(v6, v22);
  v24(v8, v22);
  return v23 & 1;
}

Swift::Bool __swiftcall GenerativeAssistantRestrictionManager.isUseCaseUnavailableInRegion(useCase:)(GenerativeAssistantCommon::GenerativeAssistantUseCase useCase)
{
  v1 = useCase;
  v2 = sub_221C56E90();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_221C56ED0();
  v49 = *(v6 - 8);
  v50 = v6;
  MEMORY[0x28223BE20](v6);
  v48 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_221C56EB0();
  v43 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v42 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFDF270, &qword_221C58F58);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v42 - v11;
  v13 = sub_221C56F60();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_221C56F30();
  v17 = *(v52 - 8);
  v18 = MEMORY[0x28223BE20](v52);
  v51 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *v1;
  if (qword_27CFDEF28 != -1)
  {
    v18 = swift_once();
  }

  v46 = v3;
  v47 = v2;
  v44 = v8;
  v45 = v5;
  if (v20 <= 1)
  {
    if (v20)
    {
      v21 = "GenerativeAssistant.composition";
    }

    else
    {
      v21 = "com.apple.visualIntelligence";
    }
  }

  else if (v20 == 2)
  {
    v21 = "GenerativeAssistant.mediaQA";
  }

  else if (v20 == 3)
  {
    v21 = "GenerativeAssistant.knowledge";
  }

  else
  {
    v21 = "ant.knowledgeFallback";
  }

  v22 = v21 | 0x8000000000000000;
  v23 = *(qword_27CFE1128 + 24);
  v24 = MEMORY[0x28223BE20](v18);
  *(&v42 - 4) = v26;
  *(&v42 - 3) = v25;
  *(&v42 - 2) = v22;
  MEMORY[0x28223BE20](v24);
  *(&v42 - 2) = sub_221C56C90;
  *(&v42 - 1) = v27;
  os_unfair_lock_lock(v23 + 4);
  sub_221C56CA8();
  os_unfair_lock_unlock(v23 + 4);

  sub_221C56F50();
  (*(v14 + 8))(v16, v13);
  v28 = v52;
  if ((*(v17 + 48))(v12, 1, v52) == 1)
  {
    sub_221C4ECE0(v12, &qword_27CFDF270, &qword_221C58F58);
  }

  else
  {
    v29 = v51;
    (*(v17 + 32))(v51, v12, v28);
    v30 = v48;
    sub_221C56F20();
    v32 = v49;
    v31 = v50;
    if ((*(v49 + 88))(v30, v50) == *MEMORY[0x277D0DFB0])
    {
      (*(v32 + 96))(v30, v31);
      v34 = v42;
      v33 = v43;
      v35 = v44;
      (*(v43 + 32))(v42, v30, v44);
      v36 = sub_221C56EA0();
      v38 = v45;
      v37 = v46;
      v39 = v47;
      (*(v46 + 104))(v45, *MEMORY[0x277D0E200], v47);
      v40 = sub_221C53658(v38, v36);

      (*(v37 + 8))(v38, v39);
      (*(v33 + 8))(v34, v35);
      (*(v17 + 8))(v51, v28);
      if (v40)
      {
        return 1;
      }
    }

    else
    {
      (*(v17 + 8))(v29, v28);
      (*(v32 + 8))(v30, v31);
    }
  }

  return 0;
}

uint64_t sub_221C53658(uint64_t a1, uint64_t a2)
{
  v3 = sub_221C56E90();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_221C56C44(&qword_27CFDF188, MEMORY[0x277D0E218], MEMORY[0x277D0E220]), v7 = sub_221C57040(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_221C56C44(&qword_27CFDF190, MEMORY[0x277D0E218], MEMORY[0x277D0E228]);
      v15 = sub_221C57050();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_221C53870(uint64_t a1, uint64_t a2)
{
  v3 = sub_221C56E60();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_221C56C44(&qword_27CFDF170, MEMORY[0x277D0E038], MEMORY[0x277D0E040]), v7 = sub_221C57040(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_221C56C44(&qword_27CFDF178, MEMORY[0x277D0E038], MEMORY[0x277D0E048]);
      v15 = sub_221C57050();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

Swift::Bool __swiftcall GenerativeAssistantRestrictionManager.isUseCaseRestrictedInRegion(useCase:)(GenerativeAssistantCommon::GenerativeAssistantUseCase useCase)
{
  v1 = useCase;
  v2 = sub_221C56E60();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_221C56ED0();
  v49 = *(v6 - 8);
  v50 = v6;
  MEMORY[0x28223BE20](v6);
  v48 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_221C56E80();
  v43 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v42 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFDF270, &qword_221C58F58);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v42 - v11;
  v13 = sub_221C56F60();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_221C56F30();
  v17 = *(v52 - 8);
  v18 = MEMORY[0x28223BE20](v52);
  v51 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *v1;
  if (qword_27CFDEF28 != -1)
  {
    v18 = swift_once();
  }

  v46 = v3;
  v47 = v2;
  v44 = v8;
  v45 = v5;
  if (v20 <= 1)
  {
    if (v20)
    {
      v21 = "GenerativeAssistant.composition";
    }

    else
    {
      v21 = "com.apple.visualIntelligence";
    }
  }

  else if (v20 == 2)
  {
    v21 = "GenerativeAssistant.mediaQA";
  }

  else if (v20 == 3)
  {
    v21 = "GenerativeAssistant.knowledge";
  }

  else
  {
    v21 = "ant.knowledgeFallback";
  }

  v22 = v21 | 0x8000000000000000;
  v23 = *(qword_27CFE1128 + 24);
  v24 = MEMORY[0x28223BE20](v18);
  *(&v42 - 4) = v26;
  *(&v42 - 3) = v25;
  *(&v42 - 2) = v22;
  MEMORY[0x28223BE20](v24);
  *(&v42 - 2) = sub_221C56C90;
  *(&v42 - 1) = v27;
  os_unfair_lock_lock(v23 + 4);
  sub_221C56CA8();
  os_unfair_lock_unlock(v23 + 4);

  sub_221C56F50();
  (*(v14 + 8))(v16, v13);
  v28 = v52;
  if ((*(v17 + 48))(v12, 1, v52) == 1)
  {
    sub_221C4ECE0(v12, &qword_27CFDF270, &qword_221C58F58);
  }

  else
  {
    v29 = v51;
    (*(v17 + 32))(v51, v12, v28);
    v30 = v48;
    sub_221C56F20();
    v32 = v49;
    v31 = v50;
    if ((*(v49 + 88))(v30, v50) == *MEMORY[0x277D0DFA8])
    {
      (*(v32 + 96))(v30, v31);
      v34 = v42;
      v33 = v43;
      v35 = v44;
      (*(v43 + 32))(v42, v30, v44);
      v36 = sub_221C56E70();
      v38 = v45;
      v37 = v46;
      v39 = v47;
      (*(v46 + 104))(v45, *MEMORY[0x277D0E028], v47);
      v40 = sub_221C53870(v38, v36);

      (*(v37 + 8))(v38, v39);
      (*(v33 + 8))(v34, v35);
      (*(v17 + 8))(v51, v28);
      if (v40)
      {
        return 1;
      }
    }

    else
    {
      (*(v17 + 8))(v29, v28);
      (*(v32 + 8))(v30, v31);
    }
  }

  return 0;
}

uint64_t GenerativeAssistantRestrictionManager.isMontaraHardDisabled.getter()
{
  v0 = sub_221C56E60();
  v74 = *(v0 - 8);
  v75 = v0;
  MEMORY[0x28223BE20](v0);
  v73 = &v65 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_221C56E80();
  v78 = *(v2 - 8);
  v79 = v2;
  MEMORY[0x28223BE20](v2);
  v77 = &v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_221C56E90();
  v69 = *(v4 - 8);
  v70 = v4;
  MEMORY[0x28223BE20](v4);
  v68 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_221C56EB0();
  v72 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v71 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_221C56F60();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_221C56ED0();
  v11 = *(v80 - 8);
  v12 = MEMORY[0x28223BE20](v80);
  v14 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v65 - v16;
  if (qword_27CFDEF28 != -1)
  {
    v15 = swift_once();
  }

  v18 = qword_27CFE1128;
  if (qword_27CFDEF40 != -1)
  {
    v15 = swift_once();
  }

  v19 = *(v18 + 24);
  v20 = MEMORY[0x28223BE20](v15);
  *(&v65 - 4) = v18;
  *(&v65 - 3) = v21;
  v66 = v22;
  v67 = v21;
  *(&v65 - 2) = v22;
  MEMORY[0x28223BE20](v20);
  *(&v65 - 2) = sub_221C56C90;
  *(&v65 - 1) = v23;
  os_unfair_lock_lock(v19 + 4);
  sub_221C56CA8();
  os_unfair_lock_unlock(v19 + 4);
  v24 = v17;
  sub_221C56F00();
  (*(v8 + 8))(v10, v7);
  v25 = v11;
  v26 = v80;
  (*(v11 + 16))(v14, v24, v80);
  v27 = (*(v11 + 88))(v14, v26);
  if (v27 != *MEMORY[0x277D0DFA8])
  {
    if (v27 == *MEMORY[0x277D0DFB0])
    {
      (*(v11 + 96))(v14, v26);
      v47 = v71;
      v48 = v72;
      (*(v72 + 32))(v71, v14, v76);
      v49 = sub_221C56EA0();
      v51 = v68;
      v50 = v69;
      v52 = v70;
      (*(v69 + 104))(v68, *MEMORY[0x277D0E0F0], v70);
      v53 = sub_221C53658(v51, v49);

      (*(v50 + 8))(v51, v52);
      if (v53)
      {
        v54 = v48;
        v55 = v76;
        if (qword_280FA8BF0 != -1)
        {
          swift_once();
        }

        v56 = sub_221C56F90();
        __swift_project_value_buffer(v56, qword_280FA8BF8);
        v57 = sub_221C56F70();
        v58 = sub_221C57100();
        v59 = v47;
        if (os_log_type_enabled(v57, v58))
        {
          v60 = v24;
          v61 = swift_slowAlloc();
          v62 = swift_slowAlloc();
          v81[0] = v62;
          *v61 = 136446210;
          *(v61 + 4) = sub_221C471AC(v67, v66, v81);
          _os_log_impl(&dword_221C40000, v57, v58, "GenerativeAssistantRestrictionManager: use case %{public}s is unavailable(useCaseDisabled)", v61, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v62);
          MEMORY[0x223DA5860](v62, -1, -1);
          MEMORY[0x223DA5860](v61, -1, -1);

          (*(v54 + 8))(v59, v55);
          (*(v25 + 8))(v60, v26);
        }

        else
        {

          (*(v54 + 8))(v47, v55);
          (*(v25 + 8))(v24, v26);
        }

        return 1;
      }

      (*(v48 + 8))(v47, v76);
      (*(v25 + 8))(v24, v26);
    }

    else
    {
      v63 = *(v11 + 8);
      v63(v24, v26);
      v63(v14, v26);
    }

    return 0;
  }

  v76 = v24;
  (*(v11 + 96))(v14, v26);
  v28 = v78;
  v29 = v79;
  v30 = v26;
  v31 = v77;
  (*(v78 + 32))(v77, v14, v79);
  v32 = sub_221C56E70();
  v34 = v73;
  v33 = v74;
  v35 = v75;
  (*(v74 + 104))(v73, *MEMORY[0x277D0DFE0], v75);
  v36 = sub_221C53870(v34, v32);

  (*(v33 + 8))(v34, v35);
  if ((v36 & 1) == 0)
  {
    (*(v28 + 8))(v31, v29);
    (*(v25 + 8))(v76, v30);
    return 0;
  }

  v37 = v30;
  if (qword_280FA8BF0 != -1)
  {
    swift_once();
  }

  v38 = sub_221C56F90();
  __swift_project_value_buffer(v38, qword_280FA8BF8);
  v39 = sub_221C56F70();
  v40 = sub_221C57100();
  v41 = os_log_type_enabled(v39, v40);
  v42 = v29;
  v43 = v31;
  v44 = v76;
  if (v41)
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v81[0] = v46;
    *v45 = 136446210;
    *(v45 + 4) = sub_221C471AC(v67, v66, v81);
    _os_log_impl(&dword_221C40000, v39, v40, "GenerativeAssistantRestrictionManager: use case %{public}s is restricted(useCaseDisabled)", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v46);
    MEMORY[0x223DA5860](v46, -1, -1);
    MEMORY[0x223DA5860](v45, -1, -1);
  }

  (*(v28 + 8))(v43, v42);
  (*(v25 + 8))(v44, v37);
  return 1;
}

uint64_t GenerativeAssistantRestrictionManager.isMontaraAvailable.getter()
{
  if (AFMontaraRestricted())
  {
    v0 = 0;
  }

  else
  {
    v0 = GenerativeAssistantRestrictionManager.isMontaraHardDisabled.getter() ^ 1;
  }

  return v0 & 1;
}

BOOL GenerativeAssistantRestrictionManager.isAppleIntelligenceDoneDownloading.getter()
{
  if (qword_27CFDEF18 != -1)
  {
    swift_once();
  }

  return sub_221C45F80();
}

id sub_221C54AD4(SEL *a1)
{
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v3 = result;
    v4 = [result *a1];

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t GenerativeAssistantRestrictionManager.isSignedIn.getter()
{
  v0 = sub_221C56E50();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFDF278, &qword_221C58F60);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFDF280, &qword_221C58F68);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v20 - v8;
  if (qword_27CFDEF10 != -1)
  {
    swift_once();
  }

  sub_221C56DF0();
  v10 = v22;
  v11 = v23;
  v12 = __swift_project_boxed_opaque_existential_1(v21, v22);
  v20[3] = v10;
  v20[4] = *(v11 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v20);
  (*(*(v10 - 8) + 16))(boxed_opaque_existential_1, v12, v10);
  sub_221C56E40();
  __swift_destroy_boxed_opaque_existential_1(v21);
  sub_221C56FE0();
  (*(v1 + 8))(v3, v0);
  v14 = sub_221C57010();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v6, 1, v14) == 1)
  {
    sub_221C4ECE0(v6, &qword_27CFDF278, &qword_221C58F60);
    v16 = sub_221C56FD0();
    (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
LABEL_6:
    v18 = 0;
    goto LABEL_7;
  }

  sub_221C56FF0();
  (*(v15 + 8))(v6, v14);
  v17 = sub_221C56FD0();
  v18 = 1;
  if ((*(*(v17 - 8) + 48))(v9, 1, v17) == 1)
  {
    goto LABEL_6;
  }

LABEL_7:
  sub_221C4ECE0(v9, &qword_27CFDF280, &qword_221C58F68);
  return v18;
}

uint64_t GenerativeAssistantRestrictionManager.openAICredentialsWorkspaceId.getter()
{
  v0 = sub_221C56FB0();
  v27 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v2 = &v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_221C56E50();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFDF278, &qword_221C58F60);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFDF280, &qword_221C58F68);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v26 - v11;
  if (qword_27CFDEF10 != -1)
  {
    swift_once();
  }

  sub_221C56DF0();
  v13 = v30;
  v14 = v31;
  v15 = __swift_project_boxed_opaque_existential_1(v29, v30);
  v28[3] = v13;
  v28[4] = *(v14 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28);
  (*(*(v13 - 8) + 16))(boxed_opaque_existential_1, v15, v13);
  sub_221C56E40();
  __swift_destroy_boxed_opaque_existential_1(v29);
  sub_221C56FE0();
  (*(v4 + 8))(v6, v3);
  v17 = sub_221C57010();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v9, 1, v17) == 1)
  {
    v19 = &qword_27CFDF278;
    v20 = &qword_221C58F60;
    v21 = v9;
LABEL_7:
    sub_221C4ECE0(v21, v19, v20);
    return 0;
  }

  sub_221C56FF0();
  (*(v18 + 8))(v9, v17);
  v22 = sub_221C56FD0();
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v12, 1, v22) == 1)
  {
    v19 = &qword_27CFDF280;
    v20 = &qword_221C58F68;
    v21 = v12;
    goto LABEL_7;
  }

  sub_221C56FC0();
  (*(v23 + 8))(v12, v22);
  v25 = sub_221C56FA0();
  (*(v27 + 8))(v2, v0);
  return v25;
}

uint64_t GenerativeAssistantRestrictionManager.openAIAuthenticatorSignOut()()
{
  v1 = sub_221C56E50();
  v0[12] = v1;
  v0[13] = *(v1 - 8);
  v0[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFDF278, &qword_221C58F60);
  v0[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221C5537C, 0, 0);
}

uint64_t sub_221C5537C()
{
  if (qword_27CFDEF10 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[12];
  v4 = v0[13];
  sub_221C56DF0();
  v5 = v0[5];
  v6 = v0[6];
  v7 = __swift_project_boxed_opaque_existential_1(v0 + 2, v5);
  v0[10] = v5;
  v0[11] = *(v6 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 7);
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_1, v7, v5);
  sub_221C56E40();
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  sub_221C56FE0();
  (*(v4 + 8))(v1, v3);
  v9 = sub_221C57010();
  v0[16] = v9;
  v10 = *(v9 - 8);
  v0[17] = v10;
  if ((*(v10 + 48))(v2, 1, v9) == 1)
  {
    sub_221C4ECE0(v0[15], &qword_27CFDF278, &qword_221C58F60);

    v11 = v0[1];

    return v11();
  }

  else
  {
    v13 = swift_task_alloc();
    v0[18] = v13;
    *v13 = v0;
    v13[1] = sub_221C555BC;

    return MEMORY[0x28213D120]();
  }
}

uint64_t sub_221C555BC()
{
  v2 = *v1;
  v2[19] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_221C5571C, 0, 0);
  }

  else
  {
    (*(v2[17] + 8))(v2[15], v2[16]);

    v3 = v2[1];

    return v3();
  }
}

uint64_t sub_221C5571C()
{
  (*(v0[17] + 8))(v0[15], v0[16]);

  v1 = v0[1];

  return v1();
}

id GenerativeAssistantRestrictionManager.allowedExternalIntelligenceWorkspaceIDs.getter()
{
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v1 = result;
    v2 = [result allowedExternalIntelligenceWorkspaceIDs];

    if (v2)
    {
      v3 = sub_221C570E0();
    }

    else
    {
      v3 = 0;
    }

    v4 = qword_280FA8BF0;

    if (v4 != -1)
    {
      swift_once();
    }

    v5 = sub_221C56F90();
    __swift_project_value_buffer(v5, qword_280FA8BF8);
    v6 = sub_221C56F70();
    v7 = sub_221C570F0();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v13 = v9;
      *v8 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFDF288, &qword_221C58F78);
      v10 = sub_221C57120();
      v12 = sub_221C471AC(v10, v11, &v13);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_221C40000, v6, v7, "allowedExternalIntelligenceWorkspaceIDs %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x223DA5860](v9, -1, -1);
      MEMORY[0x223DA5860](v8, -1, -1);
    }

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_221C55A14()
{
  if (AFMontaraRestricted())
  {
    v0 = 0;
  }

  else
  {
    v0 = GenerativeAssistantRestrictionManager.isMontaraHardDisabled.getter() ^ 1;
  }

  return v0 & 1;
}

BOOL sub_221C55A44()
{
  if (qword_27CFDEF18 != -1)
  {
    swift_once();
  }

  return sub_221C45F80();
}

uint64_t sub_221C55AD4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_221C56C8C;

  return GenerativeAssistantRestrictionManager.openAIAuthenticatorSignOut()();
}

id sub_221C55B78(uint64_t a1, uint64_t a2, SEL *a3)
{
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v5 = result;
    v6 = [result *a3];

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_221C55BF8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_221C56C8C;

  return sub_221C521C8();
}

uint64_t sub_221C55CA4()
{
  sub_221C562A4(&v15);
  v0 = v16;
  if (v16)
  {
    sub_221C56594(v15, v16);
    sub_221C56594(0, 0);
  }

  else
  {
    sub_221C56594(v15, 0);
    sub_221C56594(0, 0);
    if (qword_280FA8BF0 != -1)
    {
      swift_once();
    }

    v1 = sub_221C56F90();
    __swift_project_value_buffer(v1, qword_280FA8BF8);
    v2 = sub_221C56F70();
    v3 = sub_221C57100();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v15 = v5;
      *v4 = 136315138;
      *(v4 + 4) = sub_221C471AC(0x6E6F6373694D7369, 0xEF64657275676966, &v15);
      _os_log_impl(&dword_221C40000, v2, v3, "%s: allowedExternalIntelligenceWorkspaceIDs is set but empty.", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v5);
      MEMORY[0x223DA5860](v5, -1, -1);
      MEMORY[0x223DA5860](v4, -1, -1);
    }
  }

  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v7 = result;
    v8 = [result isExternalIntelligenceSignInAllowed];

    if ((v8 & 1) != 0 || !sub_221C50E1C())
    {
      v14 = 0;
    }

    else
    {
      if (qword_280FA8BF0 != -1)
      {
        swift_once();
      }

      v9 = sub_221C56F90();
      __swift_project_value_buffer(v9, qword_280FA8BF8);
      v10 = sub_221C56F70();
      v11 = sub_221C57100();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v15 = v13;
        *v12 = 136315138;
        *(v12 + 4) = sub_221C471AC(0x6E6F6373694D7369, 0xEF64657275676966, &v15);
        _os_log_impl(&dword_221C40000, v10, v11, "%s: allowExternalIntelligenceIntegrationsSignIn does not allow sign in, but allowedExternalIntelligenceWorkspaceIDs requires it.", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v13);
        MEMORY[0x223DA5860](v13, -1, -1);
        MEMORY[0x223DA5860](v12, -1, -1);
      }

      v14 = 1;
    }

    if (v0)
    {
      return v14;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t GenerativeAssistantRestrictions.isMisconfigured.getter(uint64_t a1, uint64_t a2)
{
  GenerativeAssistantRestrictions.externalIntelligenceWorkspaceRestriction.getter(a1, a2, &v17);
  v4 = v18;
  if (v18)
  {
    sub_221C56594(v17, v18);
    sub_221C56594(0, 0);
  }

  else
  {
    sub_221C56594(v17, 0);
    sub_221C56594(0, 0);
    if (qword_280FA8BF0 != -1)
    {
      swift_once();
    }

    v5 = sub_221C56F90();
    __swift_project_value_buffer(v5, qword_280FA8BF8);
    v6 = sub_221C56F70();
    v7 = sub_221C57100();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v17 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_221C471AC(0x6E6F6373694D7369, 0xEF64657275676966, &v17);
      _os_log_impl(&dword_221C40000, v6, v7, "%s: allowedExternalIntelligenceWorkspaceIDs is set but empty.", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x223DA5860](v9, -1, -1);
      MEMORY[0x223DA5860](v8, -1, -1);
    }
  }

  if (((*(a2 + 96))(a1, a2) & 1) != 0 || ((*(a2 + 112))(a1, a2) & 1) == 0)
  {
    v15 = 0;
  }

  else
  {
    if (qword_280FA8BF0 != -1)
    {
      swift_once();
    }

    v10 = sub_221C56F90();
    __swift_project_value_buffer(v10, qword_280FA8BF8);
    v11 = sub_221C56F70();
    v12 = sub_221C57100();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v17 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_221C471AC(0x6E6F6373694D7369, 0xEF64657275676966, &v17);
      _os_log_impl(&dword_221C40000, v11, v12, "%s: allowExternalIntelligenceIntegrationsSignIn does not allow sign in, but allowedExternalIntelligenceWorkspaceIDs requires it.", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x223DA5860](v14, -1, -1);
      MEMORY[0x223DA5860](v13, -1, -1);
    }

    v15 = 1;
  }

  if (v4)
  {
    return v15;
  }

  else
  {
    return 1;
  }
}

void *sub_221C562A4@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_221C56CD0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = GenerativeAssistantRestrictionManager.allowedExternalIntelligenceWorkspaceIDs.getter();
  if (result)
  {
    if (result[2])
    {
      v11[0] = sub_221C570A0();
      v11[1] = v7;
      sub_221C56CC0();
      sub_221C565BC();
      v8 = sub_221C57130();
      v10 = v9;

      (*(v3 + 8))(v5, v2);

      *a1 = v8;
      a1[1] = v10;
    }

    else
    {

      *a1 = 0;
      a1[1] = 0;
    }
  }

  else
  {
    *a1 = xmmword_221C58F40;
  }

  return result;
}

void *GenerativeAssistantRestrictions.externalIntelligenceWorkspaceRestriction.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_221C56CD0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(a2 + 120))(a1, a2);
  if (result)
  {
    if (result[2])
    {
      v15[0] = sub_221C570A0();
      v15[1] = v11;
      sub_221C56CC0();
      sub_221C565BC();
      v12 = sub_221C57130();
      v14 = v13;

      (*(v7 + 8))(v9, v6);

      *a3 = v12;
      a3[1] = v14;
    }

    else
    {

      *a3 = 0;
      a3[1] = 0;
    }
  }

  else
  {
    *a3 = xmmword_221C58F40;
  }

  return result;
}

uint64_t sub_221C56594(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_221C565A8(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

unint64_t sub_221C565BC()
{
  result = qword_27CFDF268;
  if (!qword_27CFDF268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFDF268);
  }

  return result;
}

uint64_t _s25GenerativeAssistantCommon40ExternalIntelligenceWorkspaceRestrictionO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = *(a2 + 8);
  if (!v3)
  {
    if (v5)
    {
      goto LABEL_8;
    }

    sub_221C56594(*a1, 0);
    v7 = v4;
    v8 = 0;
LABEL_15:
    sub_221C56594(v7, v8);
    return 1;
  }

  if (v3 != 1)
  {
    if (v5 < 2)
    {
      goto LABEL_8;
    }

    v9 = *a1;
    if (v2 != v4 || v3 != v5)
    {
      v11 = sub_221C57260();
      sub_221C565A8(v4, v5);
      sub_221C565A8(v2, v3);
      sub_221C56594(v2, v3);
      sub_221C56594(v4, v5);
      return v11 & 1;
    }

    sub_221C565A8(v9, v3);
    sub_221C565A8(v2, v3);
    sub_221C56594(v2, v3);
    v7 = v2;
    v8 = v3;
    goto LABEL_15;
  }

  if (v5 != 1)
  {
LABEL_8:
    sub_221C565A8(*a2, *(a2 + 8));
    sub_221C565A8(v2, v3);
    sub_221C56594(v2, v3);
    sub_221C56594(v4, v5);
    return 0;
  }

  v6 = 1;
  sub_221C56594(*a1, 1uLL);
  sub_221C56594(v4, 1uLL);
  return v6;
}

uint64_t dispatch thunk of GenerativeAssistantRestrictions.openAIAuthenticatorSignOut()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 88) + **(a2 + 88));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221C56C8C;

  return v7(a1, a2);
}

uint64_t dispatch thunk of GenerativeAssistantRestrictions.signOutIfRestricted()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 136) + **(a2 + 136));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221C520D4;

  return v7(a1, a2);
}

uint64_t get_enum_tag_for_layout_string_25GenerativeAssistantCommon40ExternalIntelligenceWorkspaceRestrictionO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_221C56B64(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_221C56BB8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_221C56C14(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_221C56C44(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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