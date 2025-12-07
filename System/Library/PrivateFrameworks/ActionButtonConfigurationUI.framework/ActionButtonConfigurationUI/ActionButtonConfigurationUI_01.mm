unint64_t sub_23DDDE7E4()
{
  v1 = *(v0 + OBJC_IVAR____TtC27ActionButtonConfigurationUI18ActionSelectorItem_sectionIdentifier);
  v2 = sub_23DE05A48();
  v4 = v3;
  if (v2 == sub_23DE05A48() && v4 == v5)
  {
    v9 = 0x616C732E6C6C6562;
LABEL_8:

    return v9;
  }

  v7 = sub_23DE06318();
  v8 = v1;

  if (v7)
  {
    v9 = 0x616C732E6C6C6562;

    return v9;
  }

  v11 = sub_23DE05A48();
  v13 = v12;
  if (v11 == sub_23DE05A48() && v13 == v14)
  {
    v9 = 0x6D726F6665766177;
LABEL_18:

    return v9;
  }

  v16 = sub_23DE06318();

  if (v16)
  {
    v9 = 0x6D726F6665766177;
LABEL_16:

    return v9;
  }

  v17 = sub_23DE05A48();
  v19 = v18;
  if (v17 == sub_23DE05A48() && v19 == v20)
  {
    v9 = 1852796781;

    return v9;
  }

  v21 = sub_23DE06318();

  if (v21)
  {
    v9 = 1852796781;

    return v9;
  }

  v22 = sub_23DE05A48();
  v24 = v23;
  if (v22 == sub_23DE05A48() && v24 == v25)
  {
    v9 = 0x6172656D6163;

    return v9;
  }

  v26 = sub_23DE06318();

  if (v26)
  {
    v9 = 0x6172656D6163;

    return v9;
  }

  v27 = sub_23DE05A48();
  v29 = v28;
  if (v27 == sub_23DE05A48() && v29 == v30)
  {
    v9 = 0x67696C6873616C66;

    goto LABEL_8;
  }

  v31 = sub_23DE06318();

  if (v31)
  {
    v9 = 0x67696C6873616C66;

    return v9;
  }

  v32 = sub_23DE05A48();
  v34 = v33;
  if (v32 == sub_23DE05A48() && v34 == v35)
  {
    v9 = 0x6269737365636361;

    goto LABEL_8;
  }

  v36 = sub_23DE06318();

  if (v36)
  {
    v9 = 0x6269737365636361;

    return v9;
  }

  v37 = sub_23DE05A48();
  v39 = v38;
  if (v37 == sub_23DE05A48() && v39 == v40)
  {
    v9 = 0x74616C736E617274;

    goto LABEL_8;
  }

  v41 = sub_23DE06318();

  if (v41)
  {
    v9 = 0x74616C736E617274;

    return v9;
  }

  v42 = sub_23DE05A48();
  v44 = v43;
  if (v42 == sub_23DE05A48() && v44 == v45)
  {

    return 0xD000000000000014;
  }

  v46 = sub_23DE06318();

  if (v46)
  {

    return 0xD000000000000014;
  }

  v47 = sub_23DE05A48();
  v49 = v48;
  if (v47 == sub_23DE05A48() && v49 == v50)
  {
    v9 = 0x322E686374697773;
    goto LABEL_18;
  }

  v51 = sub_23DE06318();

  if (v51)
  {
    v9 = 0x322E686374697773;
    goto LABEL_16;
  }

  v52 = sub_23DE05A48();
  v54 = v53;
  if (v52 == sub_23DE05A48() && v54 == v55)
  {
    v9 = 0x74732E322E707061;

    goto LABEL_8;
  }

  v56 = sub_23DE06318();

  if (v56)
  {
    v9 = 0x74732E322E707061;

    return v9;
  }

  v57 = sub_23DE05A48();
  v59 = v58;
  if (v57 == sub_23DE05A48() && v59 == v60)
  {
    v9 = 0x732E656C63726963;

    goto LABEL_8;
  }

  v61 = sub_23DE06318();

  if (v61)
  {
    v9 = 0x732E656C63726963;

    return v9;
  }

  v62 = sub_23DE05A48();
  v64 = v63;
  if (v62 == sub_23DE05A48() && v64 == v65)
  {

    return 0xD000000000000017;
  }

  v66 = sub_23DE06318();

  if (v66)
  {

    return 0xD000000000000017;
  }

  v67 = sub_23DE05A48();
  v69 = v68;
  if (v67 == sub_23DE05A48() && v69 == v70)
  {
  }

  else
  {
    v71 = sub_23DE06318();

    if ((v71 & 1) == 0)
    {
      return 0;
    }
  }

  return 0xD000000000000019;
}

unint64_t sub_23DDDF0B8()
{
  v1 = *v0;
  v2 = 0x656C746974;
  v3 = 0x656C746974627573;
  v4 = 0x6769666E6F437369;
  if (v1 != 3)
  {
    v4 = 0x6F6C6F43746E6974;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_23DDDF160@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_23DDE0468(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_23DDDF1A0(uint64_t a1)
{
  v2 = sub_23DDE0E30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DDDF1DC(uint64_t a1)
{
  v2 = sub_23DDE0E30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23DDDF27C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3264A8, &qword_23DE08828);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23DDE0E30();
  sub_23DE063E8();
  *&v11[0] = *(v3 + OBJC_IVAR____TtC27ActionButtonConfigurationUI18ActionSelectorItem_sectionIdentifier);
  v12 = 0;
  type metadata accessor for WFStaccatoActionSectionIdentifier(0);
  sub_23DDE0ED8(&qword_27E3264B0, &protocol conformance descriptor for WFStaccatoActionSectionIdentifier);
  sub_23DE062F8();
  if (!v2)
  {
    LOBYTE(v11[0]) = 1;
    sub_23DE062C8();
    LOBYTE(v11[0]) = 2;
    sub_23DE062C8();
    LOBYTE(v11[0]) = 3;
    sub_23DE062D8();
    v9 = *(v3 + OBJC_IVAR____TtC27ActionButtonConfigurationUI18ActionSelectorItem_tintColor + 16);
    v11[0] = *(v3 + OBJC_IVAR____TtC27ActionButtonConfigurationUI18ActionSelectorItem_tintColor);
    v11[1] = v9;
    v12 = 4;
    sub_23DDE0F1C();
    sub_23DE062F8();
  }

  return (*(v6 + 8))(v8, v5);
}

_BYTE *sub_23DDDF50C(void *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326488, &qword_23DE08820);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23DDE0E30();
  sub_23DE063D8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    type metadata accessor for WFStaccatoActionSectionIdentifier(0);
    v23 = 0;
    sub_23DDE0ED8(&qword_27E326498, &protocol conformance descriptor for WFStaccatoActionSectionIdentifier);
    sub_23DE062B8();
    *(v1 + OBJC_IVAR____TtC27ActionButtonConfigurationUI18ActionSelectorItem_sectionIdentifier) = v21;
    LOBYTE(v21) = 1;
    v10 = sub_23DE06288();
    v11 = (v1 + OBJC_IVAR____TtC27ActionButtonConfigurationUI18ActionSelectorItem_title);
    *v11 = v10;
    v11[1] = v12;
    LOBYTE(v21) = 2;
    v13 = sub_23DE06288();
    v14 = (v1 + OBJC_IVAR____TtC27ActionButtonConfigurationUI18ActionSelectorItem_subtitle);
    *v14 = v13;
    v14[1] = v15;
    LOBYTE(v21) = 3;
    *(v1 + OBJC_IVAR____TtC27ActionButtonConfigurationUI18ActionSelectorItem_isConfigured) = sub_23DE06298() & 1;
    v23 = 4;
    sub_23DDE0E84();
    sub_23DE062B8();
    v16 = (v1 + OBJC_IVAR____TtC27ActionButtonConfigurationUI18ActionSelectorItem_tintColor);
    v17 = v22;
    *v16 = v21;
    v16[1] = v17;
    v20.receiver = v1;
    v20.super_class = ObjectType;
    v3 = objc_msgSendSuper2(&v20, sel_init);
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v3;
}

uint64_t sub_23DDDF8A4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23DE05A48();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *sub_23DDDF8DC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v6 = objc_allocWithZone(v2);
  result = sub_23DDDF50C(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_23DDDF950(void *a1, double a2, double a3, double a4, double a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3264D8, &qword_23DE08838);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v16 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23DDE0F70();
  sub_23DE063E8();
  v18 = a2;
  v17 = 0;
  sub_23DDE1018();
  sub_23DE062F8();
  if (!v5)
  {
    v18 = a3;
    v17 = 1;
    sub_23DE062F8();
    v18 = a4;
    v17 = 2;
    sub_23DE062F8();
    v18 = a5;
    v17 = 3;
    sub_23DE062F8();
  }

  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_23DDDFB74()
{
  v1 = 6579570;
  v2 = 1702194274;
  if (*v0 != 2)
  {
    v2 = 0x6168706C61;
  }

  if (*v0)
  {
    v1 = 0x6E65657267;
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

uint64_t sub_23DDDFBD4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_23DDE062C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_23DDDFC08(uint64_t a1)
{
  v2 = sub_23DDE0F70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DDDFC44(uint64_t a1)
{
  v2 = sub_23DDE0F70();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_23DDDFC80(double *a1@<X8>, void *a2@<X0>)
{
  v4 = sub_23DDE0788(a2);
  if (!v2)
  {
    *a1 = v4;
    *(a1 + 1) = v5;
    *(a1 + 2) = v6;
    *(a1 + 3) = v7;
  }
}

uint64_t sub_23DDDFCD8()
{
  sub_23DE063A8();
  sub_23DE05A88();
  return sub_23DE063C8();
}

uint64_t sub_23DDDFD44(uint64_t a1)
{
  sub_23DE063A8();
  sub_23DE05A88();
  return sub_23DE063C8();
}

uint64_t sub_23DDDFD94@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_23DE06278();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_23DDDFE1C@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_23DE06278();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_23DDDFE74(uint64_t a1)
{
  v2 = sub_23DDE0BAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DDDFEB0(uint64_t a1)
{
  v2 = sub_23DDE0BAC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WFStaccatoActionSectionIdentifier.encode(to:)(void *a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3263D0, qword_23DE08530);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23DDE0BAC();
  sub_23DE063E8();
  sub_23DE05A48();
  sub_23DE062C8();
  (*(v4 + 8))(v6, v3);
}

uint64_t sub_23DDE0044@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_23DDE09EC(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

double sub_23DDE008C(void *a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  v3 = 0;
  v4 = 0;
  v2 = 0;
  [a1 getRed:v5 green:&v4 blue:&v3 alpha:&v2];
  return *v5;
}

id sub_23DDE0108(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v7 = a3;
  ObjectType = swift_getObjectType();
  if (v7 > 1u)
  {
    v11 = [a1 sectionIdentifier];
  }

  else
  {
    if (v7)
    {
      v11 = @"Shortcuts";
    }

    else
    {
      v11 = @"Controls";
    }

    v12 = v11;
  }

  *&v5[OBJC_IVAR____TtC27ActionButtonConfigurationUI18ActionSelectorItem_sectionIdentifier] = v11;
  v13 = sub_23DDFFA9C(a1, a2, v7);
  v14 = &v5[OBJC_IVAR____TtC27ActionButtonConfigurationUI18ActionSelectorItem_title];
  *v14 = v13;
  v14[1] = v15;
  v16 = sub_23DDFFC4C(a1, a2, v7);
  v17 = &v5[OBJC_IVAR____TtC27ActionButtonConfigurationUI18ActionSelectorItem_subtitle];
  *v17 = v16;
  v17[1] = v18;
  v19 = sub_23DDFFE34(a1, a2, v7);
  v20 = [v19 UIColor];

  v21 = sub_23DDE008C(v20);
  v23 = v22;
  v25 = v24;
  v27 = v26;

  v28 = &v5[OBJC_IVAR____TtC27ActionButtonConfigurationUI18ActionSelectorItem_tintColor];
  *v28 = v21;
  *(v28 + 1) = v23;
  *(v28 + 2) = v25;
  *(v28 + 3) = v27;
  v5[OBJC_IVAR____TtC27ActionButtonConfigurationUI18ActionSelectorItem_isConfigured] = a4 & 1;
  if (qword_2812185E8 != -1)
  {
    swift_once();
  }

  v29 = sub_23DE052B8();
  __swift_project_value_buffer(v29, qword_281218840);
  sub_23DDD6F58(a1, a2, v7);
  v30 = sub_23DE05298();
  v31 = sub_23DE05C38();
  sub_23DDD6FDC(a1, a2, v7);
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v41 = v33;
    *v32 = 136315394;
    if (v7 > 1u)
    {
      v34 = [a1 sectionIdentifier];
    }

    else
    {
      if (v7)
      {
        v34 = @"Shortcuts";
      }

      else
      {
        v34 = @"Controls";
      }

      v35 = v34;
    }

    v36 = sub_23DE05A48();
    v38 = v37;

    v39 = sub_23DDC8940(v36, v38, &v41);

    *(v32 + 4) = v39;
    *(v32 + 12) = 1024;
    *(v32 + 14) = a4 & 1;
    _os_log_impl(&dword_23DDC5000, v30, v31, "Creating item for %s, isConfigured: %{BOOL}d", v32, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v33);
    MEMORY[0x23EF014D0](v33, -1, -1);
    MEMORY[0x23EF014D0](v32, -1, -1);
  }

  v42.receiver = v5;
  v42.super_class = ObjectType;
  return objc_msgSendSuper2(&v42, sel_init);
}

uint64_t sub_23DDE0468(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x800000023DE0ADF0 == a2 || (sub_23DE06318() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_23DE06318() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_23DE06318() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6769666E6F437369 && a2 == 0xEC00000064657275 || (sub_23DE06318() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F6C6F43746E6974 && a2 == 0xE900000000000072)
  {

    return 4;
  }

  else
  {
    v5 = sub_23DE06318();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_23DDE062C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6579570 && a2 == 0xE300000000000000;
  if (v3 || (sub_23DE06318() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E65657267 && a2 == 0xE500000000000000 || (sub_23DE06318() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1702194274 && a2 == 0xE400000000000000 || (sub_23DE06318() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6168706C61 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_23DE06318();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

double sub_23DDE0788(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3264C0, &qword_23DE08830);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23DDE0F70();
  sub_23DE063D8();
  HIBYTE(v8) = 0;
  sub_23DDE0FC4();
  sub_23DE062B8();
  v6 = v9;
  HIBYTE(v8) = 1;
  sub_23DE062B8();
  HIBYTE(v8) = 2;
  sub_23DE062B8();
  HIBYTE(v8) = 3;
  sub_23DE062B8();
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v6;
}

uint64_t sub_23DDE09EC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3264E8, &qword_23DE08840);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23DDE0BAC();
  sub_23DE063D8();
  if (!v1)
  {
    sub_23DE06288();
    v7 = sub_23DE05A18();

    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_23DDE0BAC()
{
  result = qword_27E3263D8;
  if (!qword_27E3263D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3263D8);
  }

  return result;
}

uint64_t _s10CodingKeysOwet(unsigned int *a1, int a2)
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

_WORD *_s10CodingKeysOwst(_WORD *result, int a2, int a3)
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

unint64_t sub_23DDE0D20()
{
  result = qword_27E326470;
  if (!qword_27E326470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E326470);
  }

  return result;
}

unint64_t sub_23DDE0D84()
{
  result = qword_27E326478;
  if (!qword_27E326478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E326478);
  }

  return result;
}

unint64_t sub_23DDE0DDC()
{
  result = qword_27E326480;
  if (!qword_27E326480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E326480);
  }

  return result;
}

unint64_t sub_23DDE0E30()
{
  result = qword_27E326490;
  if (!qword_27E326490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E326490);
  }

  return result;
}

unint64_t sub_23DDE0E84()
{
  result = qword_27E3264A0;
  if (!qword_27E3264A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3264A0);
  }

  return result;
}

uint64_t sub_23DDE0ED8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for WFStaccatoActionSectionIdentifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23DDE0F1C()
{
  result = qword_27E3264B8;
  if (!qword_27E3264B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3264B8);
  }

  return result;
}

unint64_t sub_23DDE0F70()
{
  result = qword_27E3264C8;
  if (!qword_27E3264C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3264C8);
  }

  return result;
}

unint64_t sub_23DDE0FC4()
{
  result = qword_27E3264D0;
  if (!qword_27E3264D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3264D0);
  }

  return result;
}

unint64_t sub_23DDE1018()
{
  result = qword_27E3264E0;
  if (!qword_27E3264E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3264E0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Color.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Color.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for ActionSelectorItem.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ActionSelectorItem.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23DDE1310()
{
  result = qword_27E3264F0;
  if (!qword_27E3264F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3264F0);
  }

  return result;
}

unint64_t sub_23DDE1368()
{
  result = qword_27E3264F8;
  if (!qword_27E3264F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3264F8);
  }

  return result;
}

unint64_t sub_23DDE13C0()
{
  result = qword_27E326500;
  if (!qword_27E326500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E326500);
  }

  return result;
}

unint64_t sub_23DDE1418()
{
  result = qword_27E326508;
  if (!qword_27E326508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E326508);
  }

  return result;
}

unint64_t sub_23DDE1470()
{
  result = qword_27E326510;
  if (!qword_27E326510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E326510);
  }

  return result;
}

unint64_t sub_23DDE14C8()
{
  result = qword_27E326518;
  if (!qword_27E326518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E326518);
  }

  return result;
}

id sub_23DDE1534(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC27ActionButtonConfigurationUI11WelcomeView_stackView] = 0;
  *&v2[OBJC_IVAR____TtC27ActionButtonConfigurationUI11WelcomeView_labelContainerView] = 0;
  *&v2[OBJC_IVAR____TtC27ActionButtonConfigurationUI11WelcomeView_labelScrollView] = 0;
  *&v2[OBJC_IVAR____TtC27ActionButtonConfigurationUI11WelcomeView_spacerHeightConstraint] = 0;
  *&v2[OBJC_IVAR____TtC27ActionButtonConfigurationUI11WelcomeView_cancellableBag] = MEMORY[0x277D84FA0];
  *&v2[OBJC_IVAR____TtC27ActionButtonConfigurationUI11WelcomeView_customizeButtonViewModel] = a1;
  *&v2[OBJC_IVAR____TtC27ActionButtonConfigurationUI11WelcomeView_cancelButtonViewModel] = a2;
  v8.receiver = v2;
  v8.super_class = ObjectType;

  v6 = objc_msgSendSuper2(&v8, sel_initWithFrame_, 0.0, 0.0, 100.0, 100.0);
  sub_23DDE1630();

  return v6;
}

void sub_23DDE1630()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326238, &unk_23DE08BA0);
  MEMORY[0x28223BE20](v2 - 8);
  v221 = &v214 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3261F0, &unk_23DE08AB0);
  MEMORY[0x28223BE20](v4 - 8);
  v246 = &v214 - v5;
  v242 = sub_23DE05EE8();
  v247 = *(v242 - 8);
  MEMORY[0x28223BE20](v242);
  v241 = &v214 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v240 = sub_23DE05E28();
  v238 = *(v240 - 8);
  MEMORY[0x28223BE20](v240);
  v239 = &v214 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v245 = sub_23DE05F68();
  v248 = *(v245 - 8);
  v8 = MEMORY[0x28223BE20](v245);
  v220 = &v214 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v222 = &v214 - v11;
  MEMORY[0x28223BE20](v10);
  v235 = &v214 - v12;
  v13 = sub_23DDCDA5C(1);
  if (qword_27E325AD8 != -1)
  {
    swift_once();
  }

  v14 = qword_27E326F08;
  v15 = sub_23DE05168();
  v17 = v16;

  if (qword_27E325AC0 != -1)
  {
    swift_once();
  }

  v250 = v13;
  sub_23DDCCEF0(v15, v17, qword_27E326ED8, byte_27E326EE0, 0, 1);

  v18 = sub_23DDCDC44(1);
  v255 = &type metadata for Features;
  v251 = sub_23DDCDEA8();
  v256 = v251;
  LOBYTE(aBlock) = 1;
  v19 = sub_23DE05238();
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v20 = qword_27E326F08;
  if (v19)
  {
    v21 = sub_23DE05168();
    v23 = v22;

    if (qword_27E325AC8 != -1)
    {
      swift_once();
    }

    v24 = qword_27E326EE8;
    v25 = byte_27E326EF0;
    if (qword_27E325AD0 != -1)
    {
      swift_once();
    }

    v26 = qword_27E326EF8;
    v27 = byte_27E326F00;
    v28 = v21;
    v29 = v23;
    v30 = v24;
    v31 = v25;
  }

  else
  {
    v32 = sub_23DE05168();
    v34 = v33;

    if (qword_27E325AC8 != -1)
    {
      swift_once();
    }

    v24 = qword_27E326EE8;
    v25 = byte_27E326EF0;
    v28 = v32;
    v29 = v34;
    v30 = qword_27E326EE8;
    v31 = byte_27E326EF0;
    v26 = 0;
    v27 = 1;
  }

  sub_23DDCCEF0(v28, v29, v30, v31, v26, v27);

  v255 = &type metadata for Features;
  v256 = v251;
  LOBYTE(aBlock) = 1;
  v35 = sub_23DE05238();
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  if (v35)
  {
    v36 = 0;
  }

  else
  {
    v249 = v18;
    v37 = sub_23DDCDC44(1);
    v38 = qword_27E326F08;
    v39 = v37;
    v40 = v37;
    v41 = v38;
    v42 = sub_23DE05168();
    v44 = v43;

    if (qword_27E325AC8 != -1)
    {
      swift_once();
    }

    sub_23DDCCEF0(v42, v44, v24, v25, 0, 1);

    v36 = v39;
    v18 = v249;
  }

  v45 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v46 = [v45 heightAnchor];
  v47 = [v46 constraintEqualToConstant_];

  v48 = *&v1[OBJC_IVAR____TtC27ActionButtonConfigurationUI11WelcomeView_spacerHeightConstraint];
  *&v1[OBJC_IVAR____TtC27ActionButtonConfigurationUI11WelcomeView_spacerHeightConstraint] = v47;
  v49 = v47;

  if (!v49)
  {
    __break(1u);
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  [v49 setActive_];

  v249 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E325FB0, &unk_23DE08060);
  v50 = swift_allocObject();
  v234 = xmmword_23DE08A60;
  *(v50 + 16) = xmmword_23DE08A60;
  v51 = v250;
  *(v50 + 32) = v45;
  *(v50 + 40) = v51;
  *(v50 + 48) = v18;
  v52 = objc_allocWithZone(MEMORY[0x277D75A68]);
  v53 = sub_23DDC91D0(0, &qword_27E326558, 0x277D75D18);
  v54 = v45;
  v55 = v18;
  v56 = v54;
  v237 = v51;
  v232 = v55;
  v233 = v53;
  v57 = sub_23DE05AE8();

  v58 = [v52 initWithArrangedSubviews_];

  if (v36)
  {
    [v58 addArrangedSubview_];
  }

  [v58 setAxis_];
  v255 = &type metadata for Features;
  v256 = v251;
  LOBYTE(aBlock) = 1;
  v59 = sub_23DE05238();
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  if ((v59 & 1) == 0)
  {
    [v58 setCustomSpacing:v237 afterView:8.0];
    [v58 setSpacing_];
  }

  v60 = v58;
  [v60 setTranslatesAutoresizingMaskIntoConstraints_];
  v61 = [v60 layer];
  [v61 setAllowsGroupOpacity_];

  v62 = [v60 layer];
  [v62 setAllowsGroupBlending_];

  v63 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v64 = OBJC_IVAR____TtC27ActionButtonConfigurationUI11WelcomeView_labelContainerView;
  v65 = *&v1[OBJC_IVAR____TtC27ActionButtonConfigurationUI11WelcomeView_labelContainerView];
  *&v1[OBJC_IVAR____TtC27ActionButtonConfigurationUI11WelcomeView_labelContainerView] = v63;
  v66 = v63;

  if (!v66)
  {
    goto LABEL_86;
  }

  [v66 addSubview_];

  v67 = *&v1[v64];
  if (!v67)
  {
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  [v67 setTranslatesAutoresizingMaskIntoConstraints_];
  v255 = &type metadata for Features;
  v256 = v251;
  LOBYTE(aBlock) = 1;
  v68 = sub_23DE05238();
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v69 = 0.0;
  if ((v68 & 1) == 0)
  {
    v70 = [v1 traitCollection];
    v71 = [v70 preferredContentSizeCategory];

    LOBYTE(v70) = sub_23DE05D38();
    if (v70)
    {
      v72 = 32.0;
    }

    else
    {
      v72 = 44.0;
    }

    if (qword_27E325AE8 != -1)
    {
      swift_once();
    }

    v69 = v72 - *&qword_27E326F10;
  }

  v231 = v56;
  v73 = swift_allocObject();
  v236 = xmmword_23DE08A70;
  *(v73 + 16) = xmmword_23DE08A70;
  v74 = [v60 topAnchor];
  v75 = *&v1[v64];
  if (!v75)
  {
    goto LABEL_88;
  }

  v76 = [v75 topAnchor];
  v77 = [v74 constraintEqualToAnchor_];

  *(v73 + 32) = v77;
  v78 = [v60 leadingAnchor];
  v79 = *&v1[v64];
  if (!v79)
  {
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  v80 = [v79 leadingAnchor];
  v81 = [v78 constraintEqualToAnchor:v80 constant:v69];

  *(v73 + 40) = v81;
  v82 = [v60 trailingAnchor];
  v83 = *&v1[v64];
  if (!v83)
  {
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  v84 = [v83 trailingAnchor];
  v85 = [v82 constraintEqualToAnchor:v84 constant:-v69];

  *(v73 + 48) = v85;
  v86 = [v60 bottomAnchor];

  v244 = v64;
  v87 = *&v1[v64];
  if (!v87)
  {
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v88 = objc_opt_self();
  v89 = [v87 bottomAnchor];
  v90 = [v86 constraintEqualToAnchor_];

  *(v73 + 56) = v90;
  v91 = v88;
  v243 = sub_23DDC91D0(0, &qword_27E326560, 0x277CCAAD0);
  v92 = sub_23DE05AE8();

  [v88 activateConstraints_];

  v93 = [objc_allocWithZone(MEMORY[0x277D759D8]) init];
  v94 = *&v1[OBJC_IVAR____TtC27ActionButtonConfigurationUI11WelcomeView_labelScrollView];
  v250 = OBJC_IVAR____TtC27ActionButtonConfigurationUI11WelcomeView_labelScrollView;
  *&v1[OBJC_IVAR____TtC27ActionButtonConfigurationUI11WelcomeView_labelScrollView] = v93;
  v95 = v93;

  if (!v95)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v96 = v244;
  if (!*&v1[v244])
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  [v95 addSubview_];

  v97 = *&v1[v250];
  if (!v97)
  {
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  [v97 setTranslatesAutoresizingMaskIntoConstraints_];
  v98 = swift_allocObject();
  *(v98 + 16) = v236;
  v99 = *&v1[v96];
  if (!v99)
  {
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  v100 = [v99 topAnchor];
  v101 = *&v1[v250];
  if (!v101)
  {
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  v102 = [v101 topAnchor];
  v103 = [v100 constraintEqualToAnchor_];

  *(v98 + 32) = v103;
  v104 = *&v1[v96];
  if (!v104)
  {
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  v105 = [v104 leftAnchor];
  v106 = *&v1[v250];
  if (!v106)
  {
LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  v107 = [v106 leftAnchor];
  v108 = [v105 constraintEqualToAnchor_];

  *(v98 + 40) = v108;
  v109 = *&v1[v96];
  if (!v109)
  {
LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  v110 = [v109 widthAnchor];
  v111 = *&v1[v250];
  if (!v111)
  {
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v112 = [v111 widthAnchor];
  v113 = [v110 constraintEqualToAnchor_];

  *(v98 + 48) = v113;
  v114 = *&v1[v96];
  if (!v114)
  {
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  v224 = v60;
  v115 = [v114 bottomAnchor];
  v116 = *&v1[v250];
  if (!v116)
  {
LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

  v117 = [v116 bottomAnchor];
  v118 = [v115 constraintEqualToAnchor:v117 constant:-16.0];

  *(v98 + 56) = v118;
  v119 = sub_23DE05AE8();

  [v91 activateConstraints_];

  v225 = *&v1[OBJC_IVAR____TtC27ActionButtonConfigurationUI11WelcomeView_customizeButtonViewModel];
  v120 = *(*(v225 + 16) + 24);
  v230 = v36;
  if (v120)
  {
  }

  v219 = objc_opt_self();
  v121 = [v219 whiteColor];
  v122 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v123 = type metadata accessor for HighlightAnimatingMenuButton(0);
  v124 = sub_23DDC91D0(0, &qword_27E326220, 0x277D750C8);
  v125 = swift_allocObject();
  *(v125 + 16) = sub_23DDE3D74;
  *(v125 + 24) = v122;
  swift_retain_n();
  v226 = v124;
  sub_23DE05DD8();
  v227 = v123;
  v126 = sub_23DE05F98();
  [v126 setRole_];
  LODWORD(v127) = 1148846080;
  [v126 setContentHuggingPriority:1 forAxis:v127];

  v255 = &type metadata for Features;
  v256 = v251;
  LOBYTE(aBlock) = 1;
  LOBYTE(v125) = sub_23DE05238();
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v128 = v235;
  if (v125)
  {
    sub_23DE05F48();
  }

  else
  {
    sub_23DE05F58();
  }

  sub_23DE05F38();
  v255 = &type metadata for Features;
  v256 = v251;
  LOBYTE(aBlock) = 1;
  v129 = sub_23DE05238();
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v223 = v91;
  if (v129)
  {
    v130 = *MEMORY[0x277D74FD8];
    v218 = *(v238 + 104);
    v218(v239, v130, v240);
    sub_23DE05E38();
    v131 = sub_23DE05DF8();
    sub_23DE052F8();
    v131(&aBlock, 0);
  }

  else
  {
    v132 = sub_23DE05DF8();
    sub_23DE052E8();
    v132(&aBlock, 0);
    v133 = *MEMORY[0x277D74FC0];
    v218 = *(v238 + 104);
    v218(v239, v133, v240);
    sub_23DE05E38();
  }

  v134 = *(v247 + 104);
  v217 = *MEMORY[0x277D75020];
  v247 += 104;
  v216 = v134;
  v134(v241);
  sub_23DE05E18();
  sub_23DE05EA8();
  v135 = swift_allocObject();
  v135[2] = 0;
  v135[3] = 0;
  v135[4] = v121;
  v135[5] = 0;
  v256 = sub_23DDE3DA0;
  v257 = v135;
  aBlock = MEMORY[0x277D85DD0];
  v253 = 1107296256;
  v254 = sub_23DDDCCE4;
  v255 = &block_descriptor_4;
  v136 = _Block_copy(&aBlock);
  v137 = v121;

  [v126 setConfigurationUpdateHandler_];
  _Block_release(v136);
  v138 = v248;
  v139 = *(v248 + 16);
  v141 = v245;
  v140 = v246;
  v229 = v248 + 16;
  v228 = v139;
  v139(v246, v128, v245);
  v142 = *(v138 + 56);
  *&v236 = v138 + 56;
  v235 = v142;
  (v142)(v140, 0, 1, v141);
  sub_23DE05F88();

  v143 = *(v138 + 8);
  v248 = v138 + 8;
  v143(v128, v141);

  sub_23DDD9E44(v225);
  v144 = OBJC_IVAR____TtC27ActionButtonConfigurationUI11WelcomeView_cancellableBag;
  swift_beginAccess();
  sub_23DE053D8();
  swift_endAccess();

  v255 = &type metadata for Features;
  v256 = v251;
  LOBYTE(aBlock) = 1;
  LOBYTE(v140) = sub_23DE05238();
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  if (v140)
  {
    v221 = *&v1[OBJC_IVAR____TtC27ActionButtonConfigurationUI11WelcomeView_cancelButtonViewModel];
    v145 = *(*(v221 + 2) + 24);
    v225 = v144;
    v215 = v143;
    if (v145)
    {
    }

    v152 = v222;
    v153 = v219;
    v222 = [v219 whiteColor];
    v154 = [v153 systemGray6Color];
    v155 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v156 = swift_allocObject();
    *(v156 + 16) = sub_23DDE3DBC;
    *(v156 + 24) = v155;
    swift_retain_n();
    sub_23DE05DD8();
    v157 = sub_23DE05F98();
    [v157 setRole_];
    LODWORD(v158) = 1148846080;
    [v157 setContentHuggingPriority:1 forAxis:v158];

    v255 = &type metadata for Features;
    v256 = v251;
    LOBYTE(aBlock) = 1;
    LOBYTE(v156) = sub_23DE05238();
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
    if (v156)
    {
      sub_23DE05F48();
    }

    else
    {
      sub_23DE05F58();
    }

    sub_23DE05F38();
    v255 = &type metadata for Features;
    v256 = v251;
    LOBYTE(aBlock) = 1;
    v159 = sub_23DE05238();
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
    if (v159)
    {
      v218(v239, *MEMORY[0x277D74FD8], v240);
      sub_23DE05E38();
      v160 = v154;
      v161 = sub_23DE05DF8();
      sub_23DE052F8();
      v161(&aBlock, 0);
    }

    else
    {
      v162 = sub_23DE05DF8();
      sub_23DE052E8();
      v162(&aBlock, 0);
      v218(v239, *MEMORY[0x277D74FC0], v240);
      sub_23DE05E38();
    }

    v216(v241, v217, v242);
    sub_23DE05E18();
    sub_23DE05EA8();
    v163 = swift_allocObject();
    v163[2] = v154;
    v163[3] = 0;
    v164 = v222;
    v163[4] = v222;
    v163[5] = 0;
    v256 = sub_23DDE3E88;
    v257 = v163;
    aBlock = MEMORY[0x277D85DD0];
    v253 = 1107296256;
    v254 = sub_23DDDCCE4;
    v255 = &block_descriptor_22;
    v165 = _Block_copy(&aBlock);
    v166 = v154;
    v167 = v164;

    [v157 setConfigurationUpdateHandler_];
    _Block_release(v165);
    v169 = v245;
    v168 = v246;
    v228(v246, v152, v245);
    (v235)(v168, 0, 1, v169);
    sub_23DE05F88();

    v215(v152, v169);

    v146 = v157;
    v151 = v230;
    v150 = v221;
  }

  else
  {
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_23DE05DD8();
    v146 = sub_23DE05F98();
    v147 = v220;
    sub_23DE05F18();
    swift_allocObject();
    swift_unknownObjectWeakInit();

    v148 = v221;
    sub_23DE05368();
    v149 = sub_23DE05358();
    (*(*(v149 - 8) + 56))(v148, 0, 1, v149);
    sub_23DE05ED8();
    v150 = *&v1[OBJC_IVAR____TtC27ActionButtonConfigurationUI11WelcomeView_cancelButtonViewModel];
    v151 = v230;
    if (*(*(v150 + 16) + 24))
    {
    }

    sub_23DE05F38();
    v171 = v245;
    v170 = v246;
    v228(v246, v147, v245);
    (v235)(v170, 0, 1, v171);
    sub_23DE05F88();
    v143(v147, v171);
  }

  v172 = v146;
  LODWORD(v173) = 1148846080;
  [v172 setContentHuggingPriority:1 forAxis:v173];
  LODWORD(v174) = 1148846080;
  [v172 setContentCompressionResistancePriority:1 forAxis:v174];
  sub_23DDD9E44(v150);

  swift_beginAccess();
  sub_23DE053D8();
  swift_endAccess();

  v175 = swift_allocObject();
  *(v175 + 16) = v234;
  v176 = *&v1[v250];
  if (!v176)
  {
    goto LABEL_103;
  }

  *(v175 + 32) = v176;
  *(v175 + 40) = v126;
  *(v175 + 48) = v172;
  v177 = objc_allocWithZone(MEMORY[0x277D75A68]);
  v178 = v126;
  v179 = v172;
  v180 = v176;
  v181 = sub_23DE05AE8();

  v182 = [v177 initWithArrangedSubviews_];

  v183 = OBJC_IVAR____TtC27ActionButtonConfigurationUI11WelcomeView_stackView;
  v184 = *&v1[OBJC_IVAR____TtC27ActionButtonConfigurationUI11WelcomeView_stackView];
  *&v1[OBJC_IVAR____TtC27ActionButtonConfigurationUI11WelcomeView_stackView] = v182;
  v185 = v182;

  if (!v185)
  {
LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  [v1 addSubview_];

  v186 = *&v1[v183];
  if (!v186)
  {
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  [v186 setAxis_];
  v187 = *&v1[v183];
  if (!v187)
  {
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  if (!*&v1[v244])
  {
LABEL_107:
    __break(1u);
    goto LABEL_108;
  }

  [v187 setCustomSpacing:34.0 afterView:?];
  v188 = *&v1[v183];
  if (!v188)
  {
LABEL_108:
    __break(1u);
LABEL_109:
    __break(1u);
    goto LABEL_110;
  }

  v189 = qword_27E325AF0;
  v190 = v188;
  if (v189 != -1)
  {
    swift_once();
  }

  [v190 setCustomSpacing:v178 afterView:*&qword_27E326F18];

  v191 = *&v1[v183];
  if (!v191)
  {
    goto LABEL_109;
  }

  [v191 setTranslatesAutoresizingMaskIntoConstraints_];
  v192 = swift_allocObject();
  *(v192 + 16) = xmmword_23DE08A80;
  v193 = *&v1[v183];
  if (!v193)
  {
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

  v194 = [v193 topAnchor];
  v195 = [v1 topAnchor];
  v196 = [v194 constraintEqualToAnchor_];

  *(v192 + 32) = v196;
  v197 = *&v1[v183];
  if (!v197)
  {
LABEL_111:
    __break(1u);
LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

  v198 = [v197 leadingAnchor];
  v199 = [v1 leadingAnchor];
  if (qword_27E325AE8 != -1)
  {
    swift_once();
  }

  v200 = *&qword_27E326F10;
  v201 = [v198 constraintEqualToAnchor:v199 constant:*&qword_27E326F10];

  *(v192 + 40) = v201;
  v202 = *&v1[v183];
  if (!v202)
  {
    goto LABEL_112;
  }

  v203 = [v202 trailingAnchor];
  v204 = [v1 trailingAnchor];
  v205 = [v203 constraintEqualToAnchor:v204 constant:-v200];

  *(v192 + 48) = v205;
  v206 = *&v1[v183];
  if (v206)
  {
    v207 = [v206 bottomAnchor];
    v208 = [v1 safeAreaLayoutGuide];
    v209 = [v208 bottomAnchor];

    v210 = [v207 constraintEqualToAnchor:v209 constant:-5.0];
    *(v192 + 56) = v210;
    v211 = [v179 heightAnchor];

    v212 = [v211 constraintEqualToConstant_];
    *(v192 + 64) = v212;
    v213 = sub_23DE05AE8();

    [v223 activateConstraints_];

    return;
  }

LABEL_113:
  __break(1u);
}

char *sub_23DDE3754(uint64_t a1, void *a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *&result[*a2];
    v5 = result;

    v6 = *(v4 + 16);
    v7 = v6[2];
    v8 = v6[3];
    v9 = v6[4];
    v10 = v6[5];
    v12 = v6[6];
    v11 = v6[7];
    v13 = v6[8];
    sub_23DDD9D80(v7, v8, v9, v10, v12, v11, v13);

    if (v8)
    {

      sub_23DDD9DE0(v7, v8, v9, v10, v12, v11, v13);
      v11();
    }
  }

  return result;
}

char *sub_23DDE3848(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *&result[OBJC_IVAR____TtC27ActionButtonConfigurationUI11WelcomeView_cancelButtonViewModel];
    v4 = result;

    v5 = *(v3 + 16);
    v6 = v5[2];
    v7 = v5[3];
    v8 = v5[4];
    v9 = v5[5];
    v11 = v5[6];
    v10 = v5[7];
    v12 = v5[8];
    sub_23DDD9D80(v6, v7, v8, v9, v11, v10, v12);

    if (v7)
    {

      sub_23DDD9DE0(v6, v7, v8, v9, v11, v10, v12);
      v10();
    }
  }

  return result;
}

uint64_t sub_23DDE393C@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = sub_23DE05178();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v10 = *(v6 + 16);
  if (!Strong)
  {
    return v10(a3, a1, v5);
  }

  v11 = Strong;
  v10(v8, a1, v5);
  v17 = sub_23DDCD930(*MEMORY[0x277D76918]);
  sub_23DDE3E30();
  sub_23DE05188();
  v12 = [objc_opt_self() whiteColor];
  v13 = [v11 isHighlighted];
  v14 = 1.0;
  if (v13)
  {
    v14 = 0.5;
  }

  v15 = [v12 colorWithAlphaComponent_];

  v17 = v15;
  sub_23DDDB288();
  sub_23DE05188();

  return (*(v6 + 32))(a3, v8, v5);
}

void sub_23DDE3B3C()
{
  v10.receiver = v0;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, sel_layoutSubviews);
  v1 = OBJC_IVAR____TtC27ActionButtonConfigurationUI11WelcomeView_labelScrollView;
  v2 = *&v0[OBJC_IVAR____TtC27ActionButtonConfigurationUI11WelcomeView_labelScrollView];
  if (!v2)
  {
    __break(1u);
    goto LABEL_9;
  }

  [v2 layoutIfNeeded];
  v3 = *&v0[OBJC_IVAR____TtC27ActionButtonConfigurationUI11WelcomeView_spacerHeightConstraint];
  if (!v3)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = *&v0[v1];
  if (!v4)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = v3;
  [v4 frame];
  Height = CGRectGetHeight(v11);
  v7 = *&v0[OBJC_IVAR____TtC27ActionButtonConfigurationUI11WelcomeView_labelContainerView];
  if (!v7)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v8 = Height;
  [v7 frame];
  v9 = v8 - CGRectGetHeight(v12) + -34.0;
  if (v9 <= 0.0)
  {
    v9 = 0.0;
  }

  [v5 setConstant_];
}

uint64_t objectdestroy_5Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

unint64_t sub_23DDE3E30()
{
  result = qword_27E326568;
  if (!qword_27E326568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E326568);
  }

  return result;
}

uint64_t sub_23DDE3E94(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_23DDE4000()
{
  memset(v4, 0, sizeof(v4));
  v1 = OBJC_IVAR___BCPreloader_resourceLoadToken;
  swift_beginAccess();
  sub_23DDC765C(v4, v0 + v1);
  swift_endAccess();
  v2 = OBJC_IVAR___BCPreloader_cancellableBag;
  swift_beginAccess();
  *(v0 + v2) = MEMORY[0x277D84FA0];
}

uint64_t sub_23DDE408C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E326590, &qword_23DE08AD0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v9 - v2 + 16;
  memset(v9, 0, sizeof(v9));
  v4 = OBJC_IVAR___BCPreloader_resourceLoadToken;
  swift_beginAccess();
  sub_23DDC765C(v9, v0 + v4);
  swift_endAccess();
  v5 = OBJC_IVAR___BCPreloader_cancellableBag;
  swift_beginAccess();
  *(v0 + v5) = MEMORY[0x277D84FA0];

  ABReleaseResources();
  v6 = sub_23DE051E8();
  (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
  sub_23DDE89A8(0xD000000000000013, 0x800000023DE0B1E0, v3);
  return sub_23DDC925C(v3, qword_27E326590, &qword_23DE08AD0);
}

id Preloader.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Preloader();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23DDE432C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23DDE43CC()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));

  return v0;
}

uint64_t sub_23DDE4458()
{
  sub_23DDE43CC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_23DDE44F8(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3261F0, &unk_23DE08AB0);
  MEMORY[0x28223BE20](v8 - 8);
  v43 = &v40 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326240, &qword_23DE08418);
  MEMORY[0x28223BE20](v10 - 8);
  v42 = &v40 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326238, &unk_23DE08BA0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v40 - v13;
  v41 = sub_23DE05F68();
  v15 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ConfigureButton();
  sub_23DDC91D0(0, &qword_27E326220, 0x277D750C8);
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;

  sub_23DE05DD8();
  v19 = sub_23DE05F98();
  v20 = [v19 layer];
  [v20 setAllowsGroupOpacity_];

  v21 = [v19 layer];
  [v21 setAllowsGroupBlending_];

  sub_23DE05F18();
  v22 = sub_23DDCD930(*MEMORY[0x277D76968]);
  v23 = [objc_opt_self() configurationWithFont_];

  sub_23DE05DE8();
  sub_23DE05E88();
  sub_23DE05E58();
  [*&v19[OBJC_IVAR____TtC27ActionButtonConfigurationUI15ConfigureButton_chevronView] bounds];
  CGRectGetWidth(v44);
  sub_23DE05E78();
  v24 = [v19 traitCollection];

  v25 = [v24 preferredContentSizeCategory];
  sub_23DE05D38();

  sub_23DE05EA8();
  v26 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v27 = swift_allocObject();
  *(v27 + 16) = v26;
  *(v27 + 24) = a1 & 1;
  *(v27 + 32) = v4;
  v28 = v19;
  sub_23DE05368();
  v29 = sub_23DE05358();
  (*(*(v29 - 8) + 56))(v14, 0, 1, v29);
  sub_23DE05ED8();
  v30 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v31 = swift_allocObject();
  *(v31 + 16) = v30;
  *(v31 + 24) = a1 & 1;
  v33 = v41;
  v32 = v42;
  *(v31 + 32) = v4;
  sub_23DE05348();
  v34 = sub_23DE05338();
  (*(*(v34 - 8) + 56))(v32, 0, 1, v34);
  sub_23DE05EC8();
  v35 = v43;
  (*(v15 + 16))(v43, v17, v33);
  (*(v15 + 56))(v35, 0, 1, v33);
  v36 = v28;
  sub_23DE05F88();
  if ((a1 & 1) == 0)
  {

LABEL_6:
    (*(v15 + 8))(v17, v33);
    return;
  }

  v37 = [v36 titleLabel];

  if (v37)
  {
    v38 = [v37 layer];

    [v38 setCompositingFilter_];
    v39 = v36[OBJC_IVAR____TtC27ActionButtonConfigurationUI15ConfigureButton_hidesChevron];
    v36[OBJC_IVAR____TtC27ActionButtonConfigurationUI15ConfigureButton_hidesChevron] = 1;
    if ((v39 & 1) == 0)
    {
      [v36 setNeedsLayout];
    }

    goto LABEL_6;
  }

  __break(1u);
}

void sub_23DDE4B54(uint64_t a1@<X0>, char a3@<W2>, uint64_t a4@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = sub_23DE05178();
    (*(*(v9 - 8) + 16))(a4, a1, v9);
    if (a3)
    {
      v10 = 0.6;
    }

    else
    {
      v10 = 1.0;
    }

    v11 = MEMORY[0x277D769D0];
    if ((a3 & 1) == 0)
    {
      v11 = MEMORY[0x277D76918];
    }

    v16 = sub_23DDCD930(*v11);
    sub_23DDE3E30();
    sub_23DE05188();
    if ([v8 isHighlighted])
    {
      v10 = v10 * 0.5;
    }

    v12 = [objc_opt_self() systemGray5Color];
    v13 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
    v14 = [v12 resolvedColorWithTraitCollection_];

    [v14 colorWithAlphaComponent_];
    sub_23DDDB288();
    sub_23DE05188();
  }

  else
  {
    v15 = sub_23DE05178();
    (*(*(v15 - 8) + 16))(a4, a1, v15);
  }
}

id sub_23DDE4D84(void *a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [Strong isHighlighted];
    v7 = 0.6;
    if ((a3 & 1) == 0)
    {
      v7 = 1.0;
    }

    if (v6)
    {
      v8 = v7 * 0.5;
    }

    else
    {
      v8 = v7;
    }

    v9 = [objc_opt_self() systemGray5Color];
    v10 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
    v11 = [v9 resolvedColorWithTraitCollection_];

    v12 = [v11 colorWithAlphaComponent_];
    return v12;
  }

  else
  {

    return a1;
  }
}

void sub_23DDE4F48()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3261F0, &unk_23DE08AB0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v56[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v7 = &v56[-v6];
  v8 = sub_23DE05F68();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v56[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_23DE05F78();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_23DDC925C(v7, &qword_27E3261F0, &unk_23DE08AB0);
    return;
  }

  (*(v9 + 32))(v11, v7, v8);
  v12 = sub_23DE05EF8();
  if (v12)
  {
    v13 = v12;
    v59 = sub_23DDCD930(*MEMORY[0x277D76968]);
    v14 = MEMORY[0x23EF00E40](v13);
    v15 = [v0 _imageView];
    v16 = v15;
    if (v15)
    {
      v17 = [v15 layer];
      if (v14)
      {
        v18 = *MEMORY[0x277CDA5E8];
      }

      else
      {
        v18 = 0;
      }

      [v17 setCompositingFilter_];

      swift_unknownObjectRelease();
    }

    v57 = v14;
    v58 = v16;
    v19 = MEMORY[0x23EF00E40](v13);
    v20 = v19 == 0;
    if (v19)
    {
      v21 = 32;
    }

    else
    {
      v21 = 8552674;
    }

    if (v20)
    {
      v22 = 0xA300000000000000;
    }

    else
    {
      v22 = 0xE100000000000000;
    }

    v23 = sub_23DDE5BA0(v21, v22);
    v25 = v24;
    v27 = v26;
    v29 = v28;

    v62.origin.x = v23;
    v62.origin.y = v25;
    v62.size.width = v27;
    v62.size.height = v29;
    v30 = ceil(CGRectGetWidth(v62));
    sub_23DE05E48();
    if (v30 == v31)
    {
      if (v57)
      {
LABEL_17:
        (*(v9 + 8))(v11, v8);

LABEL_30:
        return;
      }
    }

    else
    {
      v32 = MEMORY[0x23EF00E40](v13);
      v33 = v32 == 0;
      if (v32)
      {
        v34 = 32;
      }

      else
      {
        v34 = 8552674;
      }

      if (v33)
      {
        v35 = 0xA300000000000000;
      }

      else
      {
        v35 = 0xE100000000000000;
      }

      v36 = sub_23DDE5BA0(v34, v35);
      v38 = v37;
      v40 = v39;
      v42 = v41;

      v63.origin.x = v36;
      v63.origin.y = v38;
      v63.size.width = v40;
      v63.size.height = v42;
      CGRectGetWidth(v63);
      sub_23DE05E58();
      (*(v9 + 16))(v5, v11, v8);
      (*(v9 + 56))(v5, 0, 1, v8);
      sub_23DE05F88();
      if (v57)
      {
        goto LABEL_17;
      }
    }

    v43 = v59;
    [v59 lineHeight];
    v45 = v44;
    v46 = sub_23DE05F28();
    if (!v47)
    {
      (*(v9 + 8))(v11, v8);
      goto LABEL_29;
    }

    v48 = v46;
    v49 = v47;
    v50 = round(v45 * 1.15);
    [v13 size];
    if (v51 == v50)
    {
      (*(v9 + 8))(v11, v8);

LABEL_29:

      goto LABEL_30;
    }

    v60 = v48;
    v61 = v49;
    v52 = sub_23DE05BE8();
    MEMORY[0x23EF00420](v52);

    v53 = v60;
    v54 = v61;
    v55 = OBJC_IVAR____TtC27ActionButtonConfigurationUI15ConfigureButton_iconCache;
    swift_beginAccess();
    sub_23DDE54AC(&v1[v55], v53, v54, v50, v50);
    swift_endAccess();

    sub_23DE05F08();
    (*(v9 + 16))(v5, v11, v8);
    (*(v9 + 56))(v5, 0, 1, v8);
    sub_23DE05F88();
  }

  (*(v9 + 8))(v11, v8);
}

id sub_23DDE54AC(void *a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v6 = v5;
  v12 = *a1;
  if (*(*a1 + 16) && (v13 = sub_23DE016E8(a2, a3), (v14 & 1) != 0))
  {
    v15 = *(*(v12 + 56) + 8 * v13);

    return v15;
  }

  else
  {
    v17 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithSize_];
    v18 = swift_allocObject();
    *(v18 + 16) = v6;
    *(v18 + 24) = a4;
    *(v18 + 32) = a5;
    v19 = swift_allocObject();
    *(v19 + 16) = sub_23DDE6368;
    *(v19 + 24) = v18;
    v25[4] = sub_23DDE6384;
    v25[5] = v19;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 1107296256;
    v25[2] = sub_23DDE631C;
    v25[3] = &block_descriptor_6;
    v20 = _Block_copy(v25);
    v21 = v6;

    v22 = [v17 imageWithActions_];

    _Block_release(v20);
    LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

    if (v17)
    {
      __break(1u);
    }

    else
    {

      v23 = v22;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v25[0] = *a1;
      sub_23DDF508C(v23, a2, a3, isUniquelyReferenced_nonNull_native);

      *a1 = v25[0];
      return v23;
    }
  }

  return result;
}

uint64_t sub_23DDE5708()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3261F0, &unk_23DE08AB0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v40 - v6;
  v8 = sub_23DE05F68();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23DE05F78();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23DDC925C(v7, &qword_27E3261F0, &unk_23DE08AB0);
  }

  (*(v9 + 32))(v11, v7, v8);
  v13 = *&v0[OBJC_IVAR____TtC27ActionButtonConfigurationUI15ConfigureButton_chevronView];
  v14 = [v13 superview];
  if (v14)
  {
  }

  else
  {
    [v0 addSubview_];
  }

  if (([v0 isHidden] & 1) != 0 || !objc_msgSend(v0, sel_isEnabled))
  {
    v15 = 1;
  }

  else
  {
    v15 = v0[OBJC_IVAR____TtC27ActionButtonConfigurationUI15ConfigureButton_hidesChevron];
  }

  [v13 setHidden_];
  v16 = [objc_opt_self() whiteColor];
  v17 = [v1 isHighlighted];
  v18 = 0.35;
  if (v17)
  {
    v18 = 0.25;
  }

  v19 = [v16 colorWithAlphaComponent_];

  [v13 setTintColor_];
  sub_23DE05E68();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = 0.0;
  if (([v13 isHidden] & 1) == 0)
  {
    [v13 bounds];
    Width = CGRectGetWidth(v41);
    sub_23DE05E48();
    v26 = Width + v28;
  }

  sub_23DE05E68();
  if (v32 != v21 || v29 != v23 || v30 != v25 || v31 != v26)
  {
    sub_23DE05E78();
    (*(v9 + 16))(v5, v11, v8);
    (*(v9 + 56))(v5, 0, 1, v8);
    sub_23DE05F88();
  }

  [v13 sizeToFit];
  v33 = [v1 traitCollection];
  v34 = [v33 layoutDirection];

  v35 = 0.0;
  if (v34 != 1)
  {
    [v1 bounds];
    v36 = CGRectGetWidth(v42);
    [v13 bounds];
    v35 = v36 - CGRectGetWidth(v43);
  }

  [v1 bounds];
  Height = CGRectGetHeight(v44);
  [v13 bounds];
  v38 = (Height - CGRectGetHeight(v45)) * 0.5;
  [v13 bounds];
  v39 = CGRectGetWidth(v46);
  [v13 bounds];
  [v13 setFrame_];
  return (*(v9 + 8))(v11, v8);
}

double sub_23DDE5BA0(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  MEMORY[0x23EF00420](95, 0xE100000000000000);
  v4 = [v2 fontName];
  v5 = sub_23DE05A48();
  v7 = v6;

  MEMORY[0x23EF00420](v5, v7);

  MEMORY[0x23EF00420](95, 0xE100000000000000);
  [v2 pointSize];
  v8 = sub_23DE05BE8();
  MEMORY[0x23EF00420](v8);

  if (qword_27E325B00 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = qword_27E326F20;
  if (*(qword_27E326F20 + 16) && (v10 = sub_23DE016E8(a1, a2), (v11 & 1) != 0))
  {
    v12 = *(*(v9 + 56) + 32 * v10);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326630, &qword_23DE08B88);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23DE08B50;
    v14 = *MEMORY[0x277D740A8];
    *(inited + 32) = *MEMORY[0x277D740A8];
    *(inited + 64) = sub_23DDC91D0(0, &qword_27E326638, 0x277D74300);
    *(inited + 40) = v3;
    v15 = v14;
    v16 = v3;
    sub_23DDF6E38(inited);
    swift_setDeallocating();
    sub_23DDC925C(inited + 32, &unk_27E326640, &unk_23DE08B90);
    v17 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v18 = sub_23DE05A18();
    type metadata accessor for Key(0);
    sub_23DDE63AC();
    v19 = sub_23DE059E8();

    v20 = [v17 initWithString:v18 attributes:v19];

    [v20 boundingRectWithSize:3 options:0 context:{1.79769313e308, 1.79769313e308}];
    v12 = v21;
    v23 = v22;
    v25 = v24;
    v27 = v26;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = qword_27E326F20;
    qword_27E326F20 = 0x8000000000000000;
    sub_23DDF4F08(a1, a2, isUniquelyReferenced_nonNull_native, v12, v23, v25, v27);

    qword_27E326F20 = v30;
    swift_endAccess();
  }

  return v12;
}

id sub_23DDE5EF0(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC27ActionButtonConfigurationUI15ConfigureButton_chevronView;
  v10 = sub_23DDCD930(*MEMORY[0x277D76920]);
  v11 = [objc_opt_self() configurationWithFont_];

  v12 = sub_23DE05A18();
  v13 = [objc_opt_self() systemImageNamed:v12 withConfiguration:v11];

  v14 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
  *&v4[v9] = v14;
  v4[OBJC_IVAR____TtC27ActionButtonConfigurationUI15ConfigureButton_hidesChevron] = 0;
  v15 = OBJC_IVAR____TtC27ActionButtonConfigurationUI15ConfigureButton_iconCache;
  *&v4[v15] = sub_23DDF6F60(MEMORY[0x277D84F90]);
  v17.receiver = v4;
  v17.super_class = type metadata accessor for ConfigureButton();
  return objc_msgSendSuper2(&v17, sel_initWithFrame_, a1, a2, a3, a4);
}

id sub_23DDE6084(void *a1)
{
  v3 = OBJC_IVAR____TtC27ActionButtonConfigurationUI15ConfigureButton_chevronView;
  v4 = sub_23DDCD930(*MEMORY[0x277D76920]);
  v5 = [objc_opt_self() configurationWithFont_];

  v6 = sub_23DE05A18();
  v7 = [objc_opt_self() systemImageNamed:v6 withConfiguration:v5];

  v8 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
  *&v1[v3] = v8;
  v1[OBJC_IVAR____TtC27ActionButtonConfigurationUI15ConfigureButton_hidesChevron] = 0;
  v9 = OBJC_IVAR____TtC27ActionButtonConfigurationUI15ConfigureButton_iconCache;
  *&v1[v9] = sub_23DDF6F60(MEMORY[0x277D84F90]);
  v12.receiver = v1;
  v12.super_class = type metadata accessor for ConfigureButton();
  v10 = objc_msgSendSuper2(&v12, sel_initWithCoder_, a1);

  if (v10)
  {
  }

  return v10;
}

double sub_23DDE6210()
{

  return result;
}

id sub_23DDE6250(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ConfigureButton();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_23DDE62F4()
{
  result = sub_23DDF6D28(MEMORY[0x277D84F90]);
  qword_27E326F20 = result;
  return result;
}

void sub_23DDE631C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

unint64_t sub_23DDE63AC()
{
  result = qword_27E325C60;
  if (!qword_27E325C60)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E325C60);
  }

  return result;
}

uint64_t sub_23DDE644C(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC27ActionButtonConfigurationUI37ScreenViewModelTrackingViewController_viewModel) = a1;

  return (*(*a1 + 408))(v3);
}

void sub_23DDE64D8(void *a1)
{
  v2 = v1;
  if ([a1 presentationStyle])
  {
    if (*&v1[OBJC_IVAR____TtC27ActionButtonConfigurationUI37ScreenViewModelTrackingViewController_viewModel])
    {

      sub_23DE053E8();
    }

    v4 = [a1 presentedViewController];
    v5 = [v4 transitionCoordinator];

    if (v5)
    {
      v6 = swift_allocObject();
      *(v6 + 16) = v2;
      v9[4] = sub_23DDE7ED4;
      v9[5] = v6;
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 1107296256;
      v9[2] = sub_23DDE78C0;
      v9[3] = &block_descriptor_7;
      v7 = _Block_copy(v9);
      v8 = v2;

      [v5 animateAlongsideTransition:0 completion:v7];
      _Block_release(v7);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_23DDE6634()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3266B8, &qword_23DE08C68);
  v2 = *(v1 - 8);
  v77 = v1;
  v78 = v2;
  MEMORY[0x28223BE20](v1);
  v76 = v51 - v3;
  v4 = sub_23DE05D08();
  v5 = *(v4 - 8);
  v65 = v4;
  v66 = v5;
  MEMORY[0x28223BE20](v4);
  v61 = v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3266C0, &qword_23DE08C70);
  v7 = MEMORY[0x28223BE20](v75);
  v67 = v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v60 = v51 - v9;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3266C8, &qword_23DE08C78);
  v73 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v64 = v51 - v10;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3266D0, &qword_23DE08C80);
  v74 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v63 = v51 - v11;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3266D8, &qword_23DE08C88);
  v69 = *(v72 - 8);
  v12 = MEMORY[0x28223BE20](v72);
  v68 = v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v62 = v51 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3266E0, &qword_23DE08C90);
  v16 = MEMORY[0x28223BE20](v15);
  v53 = v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v19 = MEMORY[0x28223BE20](v18);
  v51[0] = v51 - v20;
  MEMORY[0x28223BE20](v19);
  v51[1] = v51 - v21;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3266E8, &qword_23DE08C98);
  v55 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v23 = v51 - v22;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3266F0, &qword_23DE08CA0);
  v58 = *(v59 - 8);
  v24 = MEMORY[0x28223BE20](v59);
  v57 = v51 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = v0[3];
  v79 = v51 - v27;
  v80 = v26;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3266F8, &qword_23DE08CA8);
  sub_23DDC7D28(&qword_27E326700, &qword_27E3266F8, &qword_23DE08CA8, MEMORY[0x277CBCE20]);
  sub_23DE054E8();

  v80 = v0[6];

  sub_23DE054E8();

  v28 = v0[9];
  v56 = v0;
  v80 = v28;

  sub_23DE054E8();

  v80 = v0[8];

  sub_23DE054E8();

  v52 = MEMORY[0x277CBCC08];
  sub_23DDC7D28(&qword_27E326708, &qword_27E3266E0, &qword_23DE08C90, MEMORY[0x277CBCC08]);
  sub_23DE053A8();
  sub_23DDC7D28(&qword_27E326710, &qword_27E3266E8, &qword_23DE08C98, MEMORY[0x277CBCCA0]);
  v29 = v54;
  sub_23DE055A8();
  (*(v55 + 8))(v23, v29);
  v30 = objc_opt_self();
  v31 = [v30 defaultCenter];
  v32 = v61;
  sub_23DE05D18();

  sub_23DDE7FF0();
  v33 = v65;
  sub_23DE054E8();
  v34 = *(v66 + 8);
  v34(v32, v33);
  v35 = [v30 defaultCenter];
  sub_23DE05D18();

  sub_23DE054E8();
  v34(v32, v33);
  sub_23DDC7D28(&qword_27E326720, &qword_27E3266C0, &qword_23DE08C70, v52);
  v36 = v64;
  sub_23DE05398();
  sub_23DDC7D28(&qword_27E326728, &qword_27E3266C8, &qword_23DE08C78, MEMORY[0x277CBCC60]);
  v37 = v63;
  v38 = v70;
  sub_23DE05558();
  (*(v73 + 8))(v36, v38);
  sub_23DDC7D28(&qword_27E326730, &qword_27E3266D0, &qword_23DE08C80, MEMORY[0x277CBCB40]);
  v39 = v62;
  v40 = v71;
  sub_23DE055A8();
  (*(v74 + 8))(v37, v40);
  v41 = v58;
  v42 = v59;
  (*(v58 + 16))(v57, v79, v59);
  v43 = v69;
  v44 = v72;
  (*(v69 + 16))(v68, v39, v72);
  v45 = MEMORY[0x277CBCBE0];
  sub_23DDC7D28(&qword_27E326738, &qword_27E3266F0, &qword_23DE08CA0, MEMORY[0x277CBCBE0]);
  sub_23DDC7D28(&qword_27E326740, &qword_27E3266D8, &qword_23DE08C88, v45);
  v46 = v76;
  sub_23DE05378();
  v47 = swift_allocObject();
  swift_weakInit();
  v48 = swift_allocObject();
  *(v48 + 16) = sub_23DDE8048;
  *(v48 + 24) = v47;
  sub_23DDC7D28(&qword_27E326748, &qword_27E3266B8, &qword_23DE08C68, MEMORY[0x277CBCAF0]);
  v49 = v77;
  sub_23DE055E8();

  (*(v78 + 8))(v46, v49);
  swift_beginAccess();
  sub_23DE053D8();
  swift_endAccess();

  (*(v43 + 8))(v39, v44);
  return (*(v41 + 8))(v79, v42);
}

uint64_t sub_23DDE729C(char a1, char a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(*(result + 16) + 16) = a1 & a2 & 1;

    sub_23DE05408();
  }

  return result;
}

void *ScreenViewModel.deinit()
{

  return v0;
}

uint64_t ScreenViewModel.__deallocating_deinit()
{
  ScreenViewModel.deinit();

  return MEMORY[0x2821FE8D8](v0, 96, 7);
}

void *sub_23DDE73DC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E3260C0, &qword_23DE08CB0);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326088, &unk_23DE091C0);
  swift_allocObject();
  *(v1 + 24) = sub_23DE05418();
  v0[2] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3266F8, &qword_23DE08CA8);
  swift_allocObject();
  v0[3] = sub_23DE053F8();
  swift_allocObject();
  v0[4] = sub_23DE053F8();
  swift_allocObject();
  v0[5] = sub_23DE053F8();
  swift_allocObject();
  v0[6] = sub_23DE053F8();
  swift_allocObject();
  v0[7] = sub_23DE053F8();
  swift_allocObject();
  v0[8] = sub_23DE053F8();
  swift_allocObject();
  v0[9] = sub_23DE053F8();
  swift_allocObject();
  v2 = sub_23DE053F8();
  v3 = MEMORY[0x277D84FA0];
  v0[10] = v2;
  v0[11] = v3;
  return v0;
}

id sub_23DDE756C(char a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for ScreenViewModelTrackingViewController();
  result = objc_msgSendSuper2(&v4, sel_viewIsAppearing_, a1 & 1);
  if (*&v1[OBJC_IVAR____TtC27ActionButtonConfigurationUI37ScreenViewModelTrackingViewController_viewModel])
  {

    sub_23DE053E8();
  }

  return result;
}

id sub_23DDE762C(char a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for ScreenViewModelTrackingViewController();
  result = objc_msgSendSuper2(&v4, sel_viewDidAppear_, a1 & 1);
  if (*&v1[OBJC_IVAR____TtC27ActionButtonConfigurationUI37ScreenViewModelTrackingViewController_viewModel])
  {

    sub_23DE053E8();
  }

  return result;
}

id sub_23DDE76EC(char a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for ScreenViewModelTrackingViewController();
  result = objc_msgSendSuper2(&v4, sel_viewWillDisappear_, a1 & 1);
  if (*&v1[OBJC_IVAR____TtC27ActionButtonConfigurationUI37ScreenViewModelTrackingViewController_viewModel])
  {

    sub_23DE053E8();
  }

  return result;
}

id sub_23DDE77AC(char a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for ScreenViewModelTrackingViewController();
  result = objc_msgSendSuper2(&v4, sel_viewDidDisappear_, a1 & 1);
  if (*&v1[OBJC_IVAR____TtC27ActionButtonConfigurationUI37ScreenViewModelTrackingViewController_viewModel])
  {

    sub_23DE053E8();
  }

  return result;
}

void sub_23DDE786C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + OBJC_IVAR____TtC27ActionButtonConfigurationUI37ScreenViewModelTrackingViewController_viewModel))
  {

    sub_23DE053E8();
  }
}

uint64_t sub_23DDE78C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

id sub_23DDE79A4(void *a1, uint64_t a2)
{
  result = [a1 isCancelled];
  if (*(a2 + OBJC_IVAR____TtC27ActionButtonConfigurationUI37ScreenViewModelTrackingViewController_viewModel))
  {

    sub_23DE053E8();
  }

  return result;
}

id ScreenViewModelTrackingViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_23DE05A18();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id ScreenViewModelTrackingViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3, __n128 a4)
{
  *&v4[OBJC_IVAR____TtC27ActionButtonConfigurationUI37ScreenViewModelTrackingViewController_viewModel] = 0;
  if (a2)
  {
    v6 = sub_23DE05A18();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v4;
  v9.super_class = type metadata accessor for ScreenViewModelTrackingViewController();
  v7 = objc_msgSendSuper2(&v9, sel_initWithNibName_bundle_, v6, a3);

  return v7;
}

id ScreenViewModelTrackingViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id ScreenViewModelTrackingViewController.init(coder:)(void *a1, __n128 a2)
{
  *&v2[OBJC_IVAR____TtC27ActionButtonConfigurationUI37ScreenViewModelTrackingViewController_viewModel] = 0;
  v6.receiver = v2;
  v6.super_class = type metadata accessor for ScreenViewModelTrackingViewController();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id ScreenViewModelTrackingViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScreenViewModelTrackingViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_23DDE7DC4(uint64_t a1, void *a2)
{
  if (a1)
  {
    v3 = v2;
    if (*&v2[OBJC_IVAR____TtC27ActionButtonConfigurationUI37ScreenViewModelTrackingViewController_viewModel])
    {

      sub_23DE053E8();
    }

    if (a2)
    {
      v5 = swift_allocObject();
      *(v5 + 16) = v2;
      v8[4] = sub_23DDE8084;
      v8[5] = v5;
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 1107296256;
      v8[2] = sub_23DDE78C0;
      v8[3] = &block_descriptor_50;
      v6 = _Block_copy(v8);
      v7 = v3;

      [a2 animateAlongsideTransition:0 completion:v6];
      _Block_release(v6);
    }
  }
}

unint64_t sub_23DDE7FF0()
{
  result = qword_27E326718;
  if (!qword_27E326718)
  {
    sub_23DE05D08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E326718);
  }

  return result;
}

id sub_23DDE82D8(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for MenuButton();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_23DDE8330()
{
  sub_23DE063A8();
  MEMORY[0x23EF00D40](0);
  return sub_23DE063C8();
}

uint64_t sub_23DDE839C(uint64_t a1)
{
  sub_23DE063A8();
  MEMORY[0x23EF00D40](0);
  return sub_23DE063C8();
}

uint64_t sub_23DDE83DC()
{
  v0 = sub_23DE05CA8();
  v11 = *(v0 - 8);
  v12 = v0;
  MEMORY[0x28223BE20](v0);
  v2 = &v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_23DE05C58();
  MEMORY[0x28223BE20](v3);
  v4 = sub_23DE059A8();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_23DE05988();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23DDE8E14();
  v10 = "onConfigurationUI10MenuButton";
  (*(v6 + 104))(v8, *MEMORY[0x277D851C8], v5);
  sub_23DE05CD8();
  (*(v6 + 8))(v8, v5);
  sub_23DE05998();
  v13 = MEMORY[0x277D84F90];
  sub_23DDE8E60();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326760, &qword_23DE08CC8);
  sub_23DDE8EB8();
  sub_23DE05FE8();
  (*(v11 + 104))(v2, *MEMORY[0x277D85260], v12);
  result = sub_23DE05CC8();
  qword_27E326750 = result;
  return result;
}

uint64_t sub_23DDE86B4@<X0>(uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E326590, &qword_23DE08AD0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v19 - v10;
  v12 = sub_23DE051E8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23DDE8938(a3, v9);
  v16 = *(v13 + 48);
  if (v16(v9, 1, v12) == 1)
  {
    sub_23DDE8C2C(v11);
    if (v16(v9, 1, v12) != 1)
    {
      sub_23DDE8DAC(v9);
    }
  }

  else
  {
    (*(v13 + 32))(v11, v9, v12);
    (*(v13 + 56))(v11, 0, 1, v12);
  }

  if (v16(v11, 1, v12) == 1)
  {
    sub_23DDE8DAC(v11);
    v17 = 1;
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    sub_23DE051D8();
    (*(v13 + 8))(v15, v12);
    v17 = 0;
  }

  return (*(v13 + 56))(a4, v17, 1, v12);
}

uint64_t sub_23DDE8938(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E326590, &qword_23DE08AD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23DDE89A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E326590, &qword_23DE08AD0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v18 - v5;
  v7 = sub_23DE051E8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23DDE86B4(a3, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_23DDE8DAC(v6);
    sub_23DDE8F1C();
    swift_allocError();
    return swift_willThrow();
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v12 = [objc_opt_self() defaultManager];
    v13 = sub_23DE051C8();
    v18[0] = 0;
    v14 = [v12 removeItemAtURL:v13 error:v18];

    if (v14)
    {
      v15 = *(v8 + 8);
      v16 = v18[0];
      return v15(v10, v7);
    }

    else
    {
      v17 = v18[0];
      sub_23DE05198();

      swift_willThrow();
      return (*(v8 + 8))(v10, v7);
    }
  }
}

uint64_t sub_23DDE8C2C@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() defaultManager];
  v3 = [v2 URLsForDirectory:9 inDomains:1];

  v4 = sub_23DE051E8();
  v5 = sub_23DE05AF8();

  if (*(v5 + 16))
  {
    v10 = *(v4 - 8);
    (*(v10 + 16))(a1, v5 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), v4);

    v6 = v10;
    v7 = 0;
  }

  else
  {

    v6 = *(v4 - 8);
    v7 = 1;
  }

  v8 = *(v6 + 56);

  return v8(a1, v7, 1, v4);
}

uint64_t sub_23DDE8DAC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E326590, &qword_23DE08AD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23DDE8E14()
{
  result = qword_281218508;
  if (!qword_281218508)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281218508);
  }

  return result;
}

unint64_t sub_23DDE8E60()
{
  result = qword_27E326758;
  if (!qword_27E326758)
  {
    sub_23DE05C58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E326758);
  }

  return result;
}

unint64_t sub_23DDE8EB8()
{
  result = qword_27E326768;
  if (!qword_27E326768)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E326760, &qword_23DE08CC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E326768);
  }

  return result;
}

unint64_t sub_23DDE8F1C()
{
  result = qword_27E326770;
  if (!qword_27E326770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E326770);
  }

  return result;
}

unint64_t sub_23DDE8F84()
{
  result = qword_27E326778;
  if (!qword_27E326778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E326778);
  }

  return result;
}

void sub_23DDE8FD8()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_23DE05A18();
  v2 = [v0 initWithSuiteName_];

  qword_27E326780 = v2;
}

uint64_t sub_23DDE9048()
{
  v1 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3268E8, &qword_23DE08F40);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - v4;
  *(swift_allocObject() + 16) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3268F0, &qword_23DE08F48);
  sub_23DDC7D28(&qword_27E3268F8, &qword_27E3268F0, &qword_23DE08F48, MEMORY[0x277CBCD90]);
  sub_23DE05488();
  sub_23DDC7D28(&qword_27E326900, &qword_27E3268E8, &qword_23DE08F40, MEMORY[0x277CBCEB8]);
  v6 = sub_23DE05498();
  (*(v3 + 8))(v5, v2);
  return v6;
}

uint64_t sub_23DDE921C@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326908, &qword_23DE08F50);
  v60 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v48 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326910, &qword_23DE08F58);
  v56 = *(v5 - 8);
  v57 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v48 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326918, &qword_23DE08F60);
  v58 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v48 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3267C8, &qword_23DE092B0);
  MEMORY[0x28223BE20](v11 - 8);
  v52 = &v48 - v12;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326920, &qword_23DE08F68);
  v51 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v49 = &v48 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326928, &qword_23DE08F70);
  v54 = *(v14 - 8);
  v55 = v14;
  MEMORY[0x28223BE20](v14);
  v50 = &v48 - v15;
  if (qword_2812185E8 != -1)
  {
    swift_once();
  }

  v16 = sub_23DE052B8();
  __swift_project_value_buffer(v16, qword_281218840);
  v17 = sub_23DE05298();
  v18 = sub_23DE05C38();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_23DDC5000, v17, v18, "Loading action data...", v19, 2u);
    MEMORY[0x23EF014D0](v19, -1, -1);
  }

  if (qword_27E325B10 != -1)
  {
    swift_once();
  }

  if (qword_27E326780)
  {
    v48 = v8;
    v59 = a1;
    v20 = qword_27E326780;
    v21 = sub_23DDFF590(v20);
    v34 = v22;
    v35 = v20;
    if (v22 == -1)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326938, &qword_23DE08F78);
      swift_allocObject();
      v61 = sub_23DE05478();
      sub_23DDC7D28(&qword_27E326940, &qword_27E326938, &qword_23DE08F78, MEMORY[0x277CBCEB0]);
      v40 = sub_23DE05498();

      v61 = v40;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326948, &qword_23DE08F80);
      sub_23DDC7D28(&qword_27E326950, &qword_27E326948, &qword_23DE08F80, MEMORY[0x277CBCD90]);
      v41 = v49;
      sub_23DE054E8();

      sub_23DDC91D0(0, &qword_281218508, 0x277D85C78);
      v42 = sub_23DE05CB8();
      v61 = v42;
      v43 = sub_23DE05C78();
      v44 = v52;
      (*(*(v43 - 8) + 56))(v52, 1, 1, v43);
      sub_23DDC7D28(&qword_27E326958, &qword_27E326920, &qword_23DE08F68, MEMORY[0x277CBCC08]);
      sub_23DDC9218(&qword_281218510, &qword_281218508, 0x277D85C78, MEMORY[0x277D85228]);
      v45 = v50;
      v46 = v53;
      sub_23DE05568();
      sub_23DDC925C(v44, &qword_27E3267C8, &qword_23DE092B0);

      (*(v51 + 8))(v41, v46);
      sub_23DDC7D28(&qword_27E326960, &qword_27E326928, &qword_23DE08F70, MEMORY[0x277CBCD60]);
      v47 = v55;
      v32 = sub_23DE05498();

      result = (*(v54 + 8))(v45, v47);
    }

    else
    {
      v36 = v21;
      v61 = v21;
      v62 = v22 & 1;
      v37 = v21;
      sub_23DE05458();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3267B8, &unk_23DE08E20);
      v38 = v57;
      sub_23DE05448();
      (*(v56 + 8))(v7, v38);
      sub_23DDC7D28(&qword_27E326968, &qword_27E326918, &qword_23DE08F60, MEMORY[0x277CBCF40]);
      v39 = v48;
      v32 = sub_23DE05498();

      sub_23DDEC340(v36, v34);
      result = (*(v58 + 8))(v10, v39);
    }

    a1 = v59;
  }

  else
  {
    sub_23DDEC29C();
    v23 = swift_allocError();
    swift_willThrow();
    v24 = v23;
    v25 = sub_23DE05298();
    v26 = sub_23DE05C38();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      v29 = v23;
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 4) = v30;
      *v28 = v30;
      _os_log_impl(&dword_23DDC5000, v25, v26, "Failed to load action data: %@", v27, 0xCu);
      sub_23DDC925C(v28, &unk_27E325FC0, &qword_23DE07BB0);
      MEMORY[0x23EF014D0](v28, -1, -1);
      MEMORY[0x23EF014D0](v27, -1, -1);
    }

    v61 = v23;
    v31 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3267B8, &unk_23DE08E20);
    sub_23DE05428();
    sub_23DDC7D28(&qword_27E326930, &qword_27E326908, &qword_23DE08F50, MEMORY[0x277CBCE70]);
    v32 = sub_23DE05498();

    result = (*(v60 + 8))(v4, v2);
  }

  *a1 = v32;
  return result;
}

id sub_23DDE9BD8@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  *(a2 + 8) = 0;
  return v2;
}

BOOL sub_23DDE9BE8(unint64_t *a1)
{
  if (*a1 >> 62)
  {
    v1 = sub_23DE06038();
  }

  else
  {
    v1 = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v1 != 0;
}

uint64_t sub_23DDE9C30(void *a1, int a2)
{
  v22 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326798, &qword_23DE08E00);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3267A0, &qword_23DE08E08);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v21[-v10];
  v12 = [a1 parameters];
  sub_23DDC91D0(0, &qword_2812184D0, 0x277D7A120);
  v13 = sub_23DE05AF8();

  if (!(v13 >> 62))
  {
    result = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3267B0, &unk_23DE091B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3267B8, &unk_23DE08E20);
    sub_23DE05468();
    sub_23DDC7D28(&qword_27E3267C0, &qword_27E326798, &qword_23DE08E00, MEMORY[0x277CBCE90]);
    v20 = sub_23DE05498();
    (*(v5 + 8))(v7, v4);
    return v20;
  }

  result = sub_23DE06038();
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v13 & 0xC000000000000001) != 0)
  {
    v15 = MEMORY[0x23EF00A60](0, v13);
    goto LABEL_6;
  }

  if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v15 = *(v13 + 32);
LABEL_6:
    v16 = v15;

    v17 = swift_allocObject();
    *(v17 + 16) = v22 & 1;
    *(v17 + 24) = v2;
    *(v17 + 32) = a1;
    *(v17 + 40) = v16;

    v18 = a1;
    v19 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3267A8, &unk_23DE08E10);
    sub_23DDC7D28(&qword_2812185E0, &qword_27E3267A8, &unk_23DE08E10, MEMORY[0x277CBCB60]);
    sub_23DE05488();
    sub_23DDC7D28(&qword_281218538, &qword_27E3267A0, &qword_23DE08E08, MEMORY[0x277CBCEB8]);
    v20 = sub_23DE05498();

    (*(v9 + 8))(v11, v8);
    return v20;
  }

  __break(1u);
  return result;
}

uint64_t sub_23DDEA000@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, unint64_t *a3@<X8>)
{
  v5 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326820, &qword_23DE08E80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23DE08B50;
  *(inited + 32) = a2;
  *(inited + 40) = v5;
  v7 = a2;

  v8 = sub_23DDF6F74(inited);
  swift_setDeallocating();
  result = sub_23DDC925C(inited + 32, &qword_27E326828, &qword_23DE08E88);
  *a3 = v8;
  return result;
}

uint64_t sub_23DDEA0B4(void *a1, uint64_t a2)
{
  if (!a2)
  {
    return 1;
  }

  v2 = a2;

  sub_23DE0135C(v3, v2);
  LOBYTE(v2) = v4;

  return (v2 ^ 1) & 1;
}

uint64_t sub_23DDEA110(uint64_t *a1, uint64_t a2, void *a3)
{
  v4 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    swift_beginAccess();
    v7 = a3;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v6 + 24);
    *(v6 + 24) = 0x8000000000000000;
    sub_23DDF5228(v4, v7, isUniquelyReferenced_nonNull_native);

    *(v6 + 24) = v9;
    swift_endAccess();
  }

  return result;
}

uint64_t sub_23DDEA1D8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326788, "\b_");
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23DE08DB0;
  *(inited + 32) = @"Focus";
  *(inited + 40) = 0xD000000000000031;
  *(inited + 48) = 0x800000023DE0B5E0;
  *(inited + 56) = @"Camera";
  *(inited + 64) = 0x746F685072616572;
  *(inited + 72) = 0xE90000000000006FLL;
  v2 = @"Focus";
  v3 = @"Camera";
  v4 = sub_23DDF6F9C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326790, &qword_23DE08DF8);
  swift_arrayDestroy();
  v5 = [v0 sectionIdentifier];
  v6 = v5;
  if (*(v4 + 16) && (v7 = sub_23DDCA864(v5), (v8 & 1) != 0))
  {
    v9 = *(*(v4 + 56) + 16 * v7);

    return v9;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_23DDEA338()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

void sub_23DDEA378(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = a3 + 64;
  v3 = 1 << *(a3 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a3 + 64);
  v31 = (v3 + 63) >> 6;

  v6 = 0;
  v7 = &selRef_setLineBreakStrategy_;
LABEL_4:
  while (v5)
  {
LABEL_9:
    v9 = *(*(a3 + 56) + ((v6 << 9) | (8 * __clz(__rbit64(v5)))));
    if (v9 >> 62)
    {
      v10 = sub_23DE06038();
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v5 &= v5 - 1;
    if (v10)
    {
      v11 = v9 & 0xC000000000000001;
      v29 = v9 + 32;
      v30 = v9 & 0xFFFFFFFFFFFFFF8;

      v12 = 0;
      v34 = v10;
      v35 = v9;
      v33 = v9 & 0xC000000000000001;
      while (1)
      {
        if (v11)
        {
          v13 = MEMORY[0x23EF00A60](v12, v9);
          v14 = __OFADD__(v12, 1);
          v15 = v12 + 1;
          if (v14)
          {
            goto LABEL_46;
          }
        }

        else
        {
          if (v12 >= *(v30 + 16))
          {
            goto LABEL_47;
          }

          v13 = *(v29 + 8 * v12);
          v14 = __OFADD__(v12, 1);
          v15 = v12 + 1;
          if (v14)
          {
            goto LABEL_46;
          }
        }

        v36 = v15;
        v38 = v13;
        v16 = [v13 v7[32]];
        sub_23DDC91D0(0, &qword_2812184C8, 0x277D7A128);
        v17 = sub_23DE05AF8();

        if (v17 >> 62)
        {
          v18 = sub_23DE06038();
          if (v18)
          {
LABEL_22:
            v19 = 0;
            while (1)
            {
              if ((v17 & 0xC000000000000001) != 0)
              {
                v20 = MEMORY[0x23EF00A60](v19, v17);
              }

              else
              {
                if (v19 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_44;
                }

                v20 = *(v17 + 8 * v19 + 32);
              }

              v21 = v20;
              v22 = v19 + 1;
              if (__OFADD__(v19, 1))
              {
                break;
              }

              v23 = [v20 identifier];
              v24 = sub_23DE05A48();
              v26 = v25;

              if (v24 == a1 && v26 == a2)
              {

LABEL_41:

                return;
              }

              v28 = sub_23DE06318();

              if (v28)
              {

                goto LABEL_41;
              }

              ++v19;
              if (v22 == v18)
              {
                goto LABEL_13;
              }
            }

            __break(1u);
LABEL_44:
            __break(1u);
            goto LABEL_45;
          }
        }

        else
        {
          v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v18)
          {
            goto LABEL_22;
          }
        }

LABEL_13:

        v9 = v35;
        v12 = v36;
        v7 = &selRef_setLineBreakStrategy_;
        v11 = v33;
        if (v36 == v34)
        {

          goto LABEL_4;
        }
      }
    }
  }

  while (1)
  {
    v8 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v8 >= v31)
    {

      return;
    }

    v5 = *(v32 + 8 * v8);
    ++v6;
    if (v5)
    {
      v6 = v8;
      goto LABEL_9;
    }
  }

LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
}

void sub_23DDEA6D8(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (v3)
    {
      if (a2 < 0)
      {
        v5 = a2;
      }

      else
      {
        v5 = a2 & 0xFFFFFFFFFFFFFF8;
      }

LABEL_43:
      MEMORY[0x2821FCF40](v5, v4);
      return;
    }

    v8 = v4;
    v7 = a2;
    goto LABEL_17;
  }

  if (v3)
  {
    v6 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v6 = a2;
    }

    v7 = a1;
    v8 = v6;
LABEL_17:

    sub_23DDEA950(v8, v7);
    return;
  }

  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v9 = a1 + 56;
    v10 = 1 << *(a1 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(a1 + 56);
    v5 = sub_23DDC91D0(0, &unk_2812184F8, 0x277D7A118);
    v13 = 0;
    v14 = (v10 + 63) >> 6;
    v15 = a2 + 56;
    v27 = v14;
    v16 = a1;
    if (!v12)
    {
LABEL_27:
      v18 = v13;
      while (1)
      {
        v13 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if (v13 >= v14)
        {
          return;
        }

        v19 = *(v9 + 8 * v13);
        ++v18;
        if (v19)
        {
          v17 = __clz(__rbit64(v19));
          v28 = (v19 - 1) & v19;
          goto LABEL_32;
        }
      }

      __break(1u);
      goto LABEL_43;
    }

    while (1)
    {
      v17 = __clz(__rbit64(v12));
      v28 = (v12 - 1) & v12;
LABEL_32:
      v20 = *(*(v16 + 48) + 8 * (v17 | (v13 << 6)));
      v21 = sub_23DE05DB8();
      v22 = -1 << *(a2 + 32);
      v23 = v21 & ~v22;
      if (((*(v15 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
      {
        break;
      }

      v24 = ~v22;
      while (1)
      {
        v25 = *(*(a2 + 48) + 8 * v23);
        v26 = sub_23DE05DC8();

        if (v26)
        {
          break;
        }

        v23 = (v23 + 1) & v24;
        if (((*(v15 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
        {
          goto LABEL_40;
        }
      }

      v14 = v27;
      v12 = v28;
      v16 = a1;
      if (!v28)
      {
        goto LABEL_27;
      }
    }

LABEL_40:
  }
}

void sub_23DDEA950(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == sub_23DE06038())
  {
    v4 = 0;
    v5 = 1 << *(a2 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_12:
      v12 = *(*(a2 + 48) + 8 * (v9 | (v4 << 6)));
      v13 = sub_23DE06078();

      if ((v13 & 1) == 0)
      {
        return;
      }
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a2 + 56 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_23DDEAA50(uint64_t *a1, void *a2)
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

    v9 = sub_23DE06048();

    if (v9)
    {

      sub_23DDC91D0(0, &unk_2812184F8, 0x277D7A118);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_23DE06038();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_23DDEAC88(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_23DDEAE78(v20 + 1);
    }

    v18 = v8;
    sub_23DDEB0A0(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_23DDC91D0(0, &unk_2812184F8, 0x277D7A118);
  v11 = sub_23DE05DB8();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_23DDEB124(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_23DE05DC8();

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

uint64_t sub_23DDEAC88(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3268E0, &qword_23DE08F38);
    v2 = sub_23DE060A8();
    v15 = v2;
    sub_23DE06028();
    if (sub_23DE06068())
    {
      sub_23DDC91D0(0, &unk_2812184F8, 0x277D7A118);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_23DDEAE78(v9 + 1);
        }

        v2 = v15;
        result = sub_23DE05DB8();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_23DE06068());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_23DDEAE78(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3268E0, &qword_23DE08F38);
  result = sub_23DE06098();
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
      result = sub_23DE05DB8();
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

    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_23DDEB0A0(uint64_t a1, uint64_t a2)
{
  sub_23DE05DB8();
  result = sub_23DE06018();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_23DDEB124(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_23DDEAE78(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_23DDEB294();
      goto LABEL_12;
    }

    sub_23DDEB3E4(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_23DE05DB8();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_23DDC91D0(0, &unk_2812184F8, 0x277D7A118);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_23DE05DC8();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_23DE06348();
  __break(1u);
}

id sub_23DDEB294()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3268E0, &qword_23DE08F38);
  v2 = *v0;
  v3 = sub_23DE06088();
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

uint64_t sub_23DDEB3E4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3268E0, &qword_23DE08F38);
  result = sub_23DE06098();
  v5 = result;
  if (*(v3 + 16))
  {
    v24 = v1;
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
      result = sub_23DE05DB8();
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

        v2 = v24;
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

void sub_23DDEB5F8(void *a1)
{
  if (qword_27E325B10 != -1)
  {
    swift_once();
  }

  if (qword_27E326780)
  {
    v3 = qword_27E326780;
    sub_23DDFEEAC(v3, a1, 1);

    if (!v1)
    {
      v4 = [objc_allocWithZone(MEMORY[0x277D79E38]) init];
      v5 = v3;
      sub_23DDFEEAC(v5, v4, 0);
    }
  }

  else
  {
    sub_23DDEC29C();
    swift_allocError();
    swift_willThrow();
  }
}

uint64_t sub_23DDEB71C(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_23DE06038())
  {
    v4 = sub_23DDC91D0(0, &unk_2812184F8, 0x277D7A118);
    v5 = sub_23DDC9218(&qword_27E3268D8, &unk_2812184F8, 0x277D7A118, MEMORY[0x277D85378]);
    result = MEMORY[0x23EF00580](i, v4, v5);
    v13 = result;
    if (v2)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    v9 = 0;
    v2 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x23EF00A60](v9, a1);
      }

      else
      {
        if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      sub_23DDEAA50(&v12, v10);

      ++v9;
      if (v11 == v7)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_23DE06038();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_23DDEB888(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return MEMORY[0x2822009F8](sub_23DDEB8A8, 0, 0);
}

uint64_t sub_23DDEB8A8()
{
  v69 = v0;
  if (qword_2812185E8 != -1)
  {
LABEL_42:
    swift_once();
  }

  v1 = v0[7];
  v2 = sub_23DE052B8();
  v0[9] = __swift_project_value_buffer(v2, qword_281218840);
  v3 = v1;

  v4 = sub_23DE05298();
  v5 = sub_23DE05C38();

  v66 = v0;
  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[7];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v68 = v9;
    *v7 = 138412546;
    *(v7 + 4) = v6;
    *v8 = v6;
    *(v7 + 12) = 2080;
    sub_23DDC91D0(0, &qword_2812184D0, 0x277D7A120);
    sub_23DDC91D0(0, &qword_2812184C8, 0x277D7A128);
    sub_23DDC9218(&qword_27E326840, &qword_2812184D0, 0x277D7A120, MEMORY[0x277D85378]);
    v10 = v6;
    v11 = sub_23DE05A08();
    v13 = sub_23DDC8940(v11, v12, &v68);

    *(v7 + 14) = v13;
    _os_log_impl(&dword_23DDC5000, v4, v5, "Configuring %@ with %s...", v7, 0x16u);
    sub_23DDC925C(v8, &unk_27E325FC0, &qword_23DE07BB0);
    MEMORY[0x23EF014D0](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x23EF014D0](v9, -1, -1);
    MEMORY[0x23EF014D0](v7, -1, -1);
  }

  v14 = v0[8];
  v15 = sub_23DDF709C(MEMORY[0x277D84F90]);
  v16 = v0[8];
  if ((v14 & 0xC000000000000001) != 0)
  {
    v17 = sub_23DE06168();
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v14 = v17 | 0x8000000000000000;
  }

  else
  {
    v18 = v16 + 64;
    v21 = -1 << *(v16 + 32);
    v19 = ~v21;
    v22 = -v21;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    else
    {
      v23 = -1;
    }

    v20 = v23 & *(v16 + 64);
  }

  v62 = v19;
  v24 = (v19 + 64) >> 6;

  v25 = 0;
  v64 = v24;
  v65 = v18;
  v63 = v14;
  while (1)
  {
    v0[10] = v15;
    if ((v14 & 0x8000000000000000) != 0)
    {
      v35 = sub_23DE061E8();
      if (!v35 || (v37 = v36, v0[4] = v35, sub_23DDC91D0(0, &qword_2812184D0, 0x277D7A120), swift_dynamicCast(), v33 = v0[3], v0[6] = v37, sub_23DDC91D0(0, &qword_2812184C8, 0x277D7A128), swift_dynamicCast(), v34 = v0[5], v30 = v25, !v33))
      {
LABEL_33:
        v56 = v0[7];
        sub_23DDEC288(v14);
        v57 = [objc_opt_self() standardClient];
        v0[11] = v57;
        v58 = swift_task_alloc();
        v0[12] = v58;
        v58[2] = v57;
        v58[3] = v56;
        v58[4] = v15;
        v59 = swift_task_alloc();
        v0[13] = v59;
        v60 = sub_23DDC91D0(0, &qword_27E326830, 0x277D79E50);
        *v59 = v0;
        v59[1] = sub_23DDEBF50;

        return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD00000000000003FLL, 0x800000023DE0B620, sub_23DDEC290, v58, v60);
      }
    }

    else
    {
      v28 = v25;
      v29 = v20;
      v30 = v25;
      if (!v20)
      {
        while (1)
        {
          v30 = v28 + 1;
          if (__OFADD__(v28, 1))
          {
            break;
          }

          if (v30 >= v24)
          {
            goto LABEL_33;
          }

          v29 = *(v18 + 8 * v30);
          ++v28;
          if (v29)
          {
            goto LABEL_18;
          }
        }

        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

LABEL_18:
      v20 = (v29 - 1) & v29;
      v31 = (v30 << 9) | (8 * __clz(__rbit64(v29)));
      v32 = *(*(v14 + 56) + v31);
      v33 = *(*(v14 + 48) + v31);
      v34 = v32;
      if (!v33)
      {
        goto LABEL_33;
      }
    }

    v67 = v20;
    v38 = v33;
    v39 = [v33 key];
    v40 = sub_23DE05A48();
    v0 = v41;

    v42 = v34;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v68 = v15;
    v45 = sub_23DE016E8(v40, v0);
    v46 = v15[2];
    v47 = (v44 & 1) == 0;
    v48 = v46 + v47;
    if (__OFADD__(v46, v47))
    {
      goto LABEL_40;
    }

    v49 = v44;
    if (v15[3] < v48)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      if (v44)
      {
        goto LABEL_11;
      }
    }

    else
    {
      sub_23DDF57E8();
      if (v49)
      {
LABEL_11:

        v15 = v68;
        v26 = v68[7];
        v27 = *(v26 + 8 * v45);
        *(v26 + 8 * v45) = v42;

        goto LABEL_12;
      }
    }

LABEL_29:
    v15 = v68;
    v68[(v45 >> 6) + 8] |= 1 << v45;
    v52 = (v15[6] + 16 * v45);
    *v52 = v40;
    v52[1] = v0;
    *(v15[7] + 8 * v45) = v42;

    v53 = v15[2];
    v54 = __OFADD__(v53, 1);
    v55 = v53 + 1;
    if (v54)
    {
      goto LABEL_41;
    }

    v15[2] = v55;
LABEL_12:
    v25 = v30;
    v0 = v66;
    v20 = v67;
    v14 = v63;
    v24 = v64;
    v18 = v65;
  }

  sub_23DDF47C8(v48, isUniquelyReferenced_nonNull_native);
  v50 = sub_23DE016E8(v40, v0);
  if ((v49 & 1) == (v51 & 1))
  {
    v45 = v50;
    if (v49)
    {
      goto LABEL_11;
    }

    goto LABEL_29;
  }

  return sub_23DE06358();
}

uint64_t sub_23DDEBF50()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_23DDEC214;
  }

  else
  {

    v2 = sub_23DDEC078;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23DDEC078()
{
  v1 = *(v0 + 16);
  v2 = sub_23DE05298();
  v3 = sub_23DE05C38();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_23DDC5000, v2, v3, "Successfully configured template action", v4, 2u);
    MEMORY[0x23EF014D0](v4, -1, -1);
  }

  if ((sub_23DE05BD8() & 1) == 0)
  {
    if (qword_27E325B10 != -1)
    {
      swift_once();
    }

    if (qword_27E326780)
    {
      v5 = *(v0 + 112);
      v6 = qword_27E326780;
      sub_23DDFEEAC(v6, v1, 0);
      if (v5)
      {

        v1 = v6;
      }

      else
      {
      }
    }

    else
    {
      sub_23DDEC29C();
      swift_allocError();
      swift_willThrow();
    }
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_23DDEC214()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2();
}

unint64_t sub_23DDEC29C()
{
  result = qword_27E326838;
  if (!qword_27E326838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E326838);
  }

  return result;
}

uint64_t objectdestroyTm_0()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void sub_23DDEC340(id a1, char a2)
{
  if (a2 != -1)
  {
  }
}

unint64_t sub_23DDEC368()
{
  result = qword_27E326970;
  if (!qword_27E326970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E326970);
  }

  return result;
}

unint64_t sub_23DDEC3BC(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_45;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v29 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v26 = isUniquelyReferenced_nonNull_bridgeObject;
    v28 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = MEMORY[0x277D84F90];
    v27 = v1;
    while (1)
    {
      if (v30)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x23EF00A60](v2, v26);
      }

      else
      {
        if (v2 >= *(v29 + 16))
        {
          goto LABEL_40;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v28 + 8 * v2);
      }

      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v5 = __OFADD__(v2, 1);
      v6 = v2 + 1;
      if (v5)
      {
        break;
      }

      v7 = [isUniquelyReferenced_nonNull_bridgeObject values];
      sub_23DDC91D0(0, &qword_2812184C8, 0x277D7A128);
      v8 = sub_23DE05AF8();

      v9 = v8 >> 62;
      if (v8 >> 62)
      {
        v10 = sub_23DE06038();
      }

      else
      {
        v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_23DE06038();
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
LABEL_38:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
          goto LABEL_38;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v31 = v6;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v11)
        {
          v13 = v3 & 0xFFFFFFFFFFFFFF8;
          if (v12 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

LABEL_19:
        sub_23DE06038();
        goto LABEL_20;
      }

      if (v11)
      {
        goto LABEL_19;
      }

LABEL_20:
      isUniquelyReferenced_nonNull_bridgeObject = sub_23DE060E8();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v13 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_21:
      v33 = v3;
      v14 = *(v13 + 16);
      v15 = *(v13 + 24);
      if (v9)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_23DE06038();
        v16 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_25:
          if (((v15 >> 1) - v14) < v10)
          {
            goto LABEL_42;
          }

          v17 = v13 + 8 * v14 + 32;
          if (v9)
          {
            if (v16 < 1)
            {
              goto LABEL_44;
            }

            sub_23DDC7D28(&qword_281218518, &qword_27E325CD8, &qword_23DE07BB8, MEMORY[0x277D83988]);
            for (i = 0; i != v16; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E325CD8, &qword_23DE07BB8);
              v19 = sub_23DDF692C(v32, i, v8);
              v21 = *v20;
              (v19)(v32, 0);
              *(v17 + 8 * i) = v21;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          v1 = v27;
          v3 = v33;
          if (v10 >= 1)
          {
            v22 = *(v13 + 16);
            v5 = __OFADD__(v22, v10);
            v23 = v22 + v10;
            if (v5)
            {
              goto LABEL_43;
            }

            *(v13 + 16) = v23;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v16 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v16)
        {
          goto LABEL_25;
        }
      }

      v3 = v33;
      if (v10 > 0)
      {
        goto LABEL_41;
      }

LABEL_5:
      v2 = v31;
      if (v31 == v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    v24 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_23DE06038();
    isUniquelyReferenced_nonNull_bridgeObject = v24;
  }

  return MEMORY[0x277D84F90];
}

void sub_23DDEC750(uint64_t a1)
{
  v1 = a1;
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  v38 = v6;
  v35 = v2;
  v36 = v7;
  while (v5)
  {
LABEL_10:
    v11 = *(*(v1 + 56) + ((v8 << 9) | (8 * __clz(__rbit64(v5)))));
    v12 = v11 >> 62;
    v13 = v11;
    if (v11 >> 62)
    {
      v14 = sub_23DE06038();
    }

    else
    {
      v14 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v15 = v9 >> 62;
    if (v9 >> 62)
    {
      v16 = sub_23DE06038();
    }

    else
    {
      v16 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v40 = v14;
    v17 = __OFADD__(v16, v14);
    v18 = v16 + v14;
    if (v17)
    {
      goto LABEL_40;
    }

    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v15)
      {
LABEL_21:
        sub_23DE06038();
      }

LABEL_22:
      v39 = sub_23DE060E8();
      v19 = v39 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_23;
    }

    if (v15)
    {
      goto LABEL_21;
    }

    v19 = v9 & 0xFFFFFFFFFFFFFF8;
    if (v18 > *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_22;
    }

    v39 = v9;
LABEL_23:
    v20 = *(v19 + 16);
    v21 = *(v19 + 24);
    v22 = v13;
    if (v12)
    {
      v24 = v19;
      v25 = sub_23DE06038();
      v19 = v24;
      v22 = v13;
      v23 = v25;
    }

    else
    {
      v23 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v5 &= v5 - 1;
    if (v23)
    {
      if (((v21 >> 1) - v20) < v40)
      {
        goto LABEL_42;
      }

      v26 = v19 + 8 * v20 + 32;
      v37 = v19;
      v42 = v22;
      if (v12)
      {
        if (v23 < 1)
        {
          goto LABEL_44;
        }

        sub_23DDC7D28(&qword_27E326A20, &qword_27E325E10, &unk_23DE091F0, MEMORY[0x277D83988]);
        v27 = 0;
        do
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E325E10, &unk_23DE091F0);
          v28 = v23;
          v29 = v26;
          v30 = sub_23DDF692C(v41, v27, v42);
          v32 = *v31;
          (v30)(v41, 0);
          v26 = v29;
          v23 = v28;
          *(v26 + 8 * v27++) = v32;
        }

        while (v28 != v27);
      }

      else
      {
        sub_23DDC91D0(0, &qword_2812184C0, 0x277D7A130);
        swift_arrayInitWithCopy();
      }

      v9 = v39;
      v2 = v35;
      v1 = v36;
      v6 = v38;
      if (v40 >= 1)
      {
        v33 = *(v37 + 16);
        v17 = __OFADD__(v33, v40);
        v34 = v33 + v40;
        if (v17)
        {
          goto LABEL_43;
        }

        *(v37 + 16) = v34;
      }
    }

    else
    {

      v9 = v39;
      v6 = v38;
      if (v40 > 0)
      {
        goto LABEL_41;
      }
    }
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return;
    }

    v5 = *(v2 + 8 * v10);
    ++v8;
    if (v5)
    {
      v8 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
}

void sub_23DDECAC0(uint64_t a1, void *a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_23DDF53A4(a1, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v12;
  }

  else
  {
    v6 = sub_23DDCA864(a2);
    if (v7)
    {
      v8 = v6;
      v9 = swift_isUniquelyReferenced_nonNull_native();
      v10 = *v2;
      v13 = *v3;
      if (!v9)
      {
        sub_23DDF5958();
        v10 = v13;
      }

      sub_23DDF4D40(v8, v10);

      *v3 = v10;
    }

    else
    {
    }
  }
}

uint64_t sub_23DDECBDC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3267C8, &qword_23DE092B0);
  MEMORY[0x28223BE20](v0 - 8);
  v79 = &v66 - v1;
  v81 = sub_23DE05C98();
  v78 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v73 = &v66 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326AC0, &qword_23DE092B8);
  v70 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v68 = &v66 - v3;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326AC8, &qword_23DE092C0);
  v74 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v69 = &v66 - v4;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326AD0, &qword_23DE092C8);
  v75 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v71 = &v66 - v5;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326AD8, &qword_23DE092D0);
  v82 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v80 = &v66 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326AE0, &qword_23DE092D8);
  v85 = *(v7 - 8);
  v86 = v7;
  MEMORY[0x28223BE20](v7);
  v83 = &v66 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326AE8, &qword_23DE092E0);
  v89 = *(v9 - 8);
  v90 = v9;
  MEMORY[0x28223BE20](v9);
  v88 = &v66 - v10;
  v11 = sub_23DE05D08();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v67 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v92 = &v66 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v66 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v66 - v20;
  v22 = objc_opt_self();
  v23 = [v22 defaultCenter];
  sub_23DE05D18();

  v24 = *(v12 + 16);
  v87 = v21;
  v25 = v11;
  v66 = v24;
  v24(v19, v21, v11);
  v26 = sub_23DDF39A4(0, 1, 1, MEMORY[0x277D84F90]);
  v28 = *(v26 + 2);
  v27 = *(v26 + 3);
  if (v28 >= v27 >> 1)
  {
    v26 = sub_23DDF39A4((v27 > 1), v28 + 1, 1, v26);
  }

  *(v26 + 2) = v28 + 1;
  v91 = v12;
  v30 = *(v12 + 32);
  v29 = v12 + 32;
  v31 = (*(v29 + 48) + 32) & ~*(v29 + 48);
  v32 = *(v29 + 40);
  v33 = &v26[v31 + v32 * v28];
  v34 = v25;
  v35 = v25;
  v36 = v30;
  v30(v33, v19, v35);
  v37 = [v22 defaultCenter];
  if (qword_27E325B20 != -1)
  {
    swift_once();
  }

  v38 = v92;
  sub_23DE05D18();

  v39 = v67;
  v66(v67, v38, v34);
  v41 = *(v26 + 2);
  v40 = *(v26 + 3);
  if (v41 >= v40 >> 1)
  {
    v26 = sub_23DDF39A4((v40 > 1), v41 + 1, 1, v26);
  }

  *(v26 + 2) = v41 + 1;
  v36(&v26[v31 + v41 * v32], v39, v34);
  v93 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326AF0, &qword_23DE092E8);
  sub_23DDE7FF0();
  sub_23DDC7D28(&qword_27E326AF8, &qword_27E326AF0, &qword_23DE092E8, MEMORY[0x277D83970]);
  v42 = v68;
  sub_23DE053B8();
  v43 = v73;
  sub_23DE05C88();
  sub_23DDC91D0(0, &qword_281218508, 0x277D85C78);
  v44 = sub_23DE05CB8();
  v93 = v44;
  v45 = sub_23DE05C78();
  v46 = v79;
  (*(*(v45 - 8) + 56))(v79, 1, 1, v45);
  sub_23DDC7D28(&qword_27E326B00, &qword_27E326AC0, &qword_23DE092B8, MEMORY[0x277CBCD48]);
  sub_23DDF74CC();
  v47 = v69;
  v48 = v72;
  sub_23DE05578();
  sub_23DDC925C(v46, &qword_27E3267C8, &qword_23DE092B0);

  (*(v78 + 8))(v43, v81);
  (*(v70 + 8))(v42, v48);
  sub_23DDC7D28(&qword_27E326B08, &qword_27E326AC8, &qword_23DE092C0, MEMORY[0x277CBCCF8]);
  v49 = v71;
  v50 = v76;
  sub_23DE054E8();
  (*(v74 + 8))(v47, v50);
  v51 = MEMORY[0x277CBCC08];
  sub_23DDC7D28(&qword_27E326B10, &qword_27E326AD0, &qword_23DE092C8, MEMORY[0x277CBCC08]);
  v52 = v80;
  v53 = v77;
  sub_23DE05558();
  (*(v75 + 8))(v49, v53);

  v54 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326B18, &unk_23DE092F0);
  sub_23DDC7D28(&qword_27E326B20, &qword_27E326AD8, &qword_23DE092D0, MEMORY[0x277CBCB40]);
  v56 = v83;
  v55 = v84;
  sub_23DE054E8();

  (*(v82 + 8))(v52, v55);
  v57 = sub_23DDC7D28(&qword_27E326B28, &qword_27E326AE0, &qword_23DE092D8, v51);
  v58 = sub_23DDC7D28(&qword_27E326B30, &qword_27E326B18, &unk_23DE092F0, MEMORY[0x277CBCAF0]);
  v59 = v88;
  v60 = v86;
  MEMORY[0x23EEFFF40](v86, v57, v58);
  (*(v85 + 8))(v56, v60);
  v61 = swift_allocObject();
  swift_weakInit();
  v62 = swift_allocObject();
  *(v62 + 16) = sub_23DDF753C;
  *(v62 + 24) = v61;
  sub_23DDC7D28(&qword_27E326B38, &qword_27E326AE8, &qword_23DE092E0, MEMORY[0x277CBCBB0]);
  v63 = v90;
  sub_23DE055E8();

  (*(v89 + 8))(v59, v63);
  swift_beginAccess();
  sub_23DE053D8();
  swift_endAccess();

  v64 = *(v91 + 8);
  v64(v92, v54);
  return (v64)(v87, v54);
}

void sub_23DDED81C(void *a1, void *a2, uint64_t a3, unint64_t a4)
{
  v5 = *(*(v4 + 16) + 16);
  if (!v5)
  {
    return;
  }

  v6 = v4;
  if (a3 > 1u)
  {

    v11 = [a1 sectionIdentifier];
  }

  else
  {
    if (a3)
    {

      v11 = @"Shortcuts";
    }

    else
    {

      v11 = @"Controls";
    }

    v12 = v11;
  }

  sub_23DDF3688(v11);
  v14 = v13;
  data = v15;

  if ((data & 1) == 0)
  {
    if ((v14 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v14 < *(v5 + 16))
    {
      v41 = a4;
      a4 = 24 * v14;
      v17 = v5 + 24 * v14;
      v18 = *(v17 + 32);
      v19 = *(v17 + 40);
      v20 = *(v17 + 48);
      sub_23DDD6F58(v18, v19, v20);
      v42 = a1;
      v21 = a1;
      a1 = a2;
      sub_23DE01C28(v18, v19, v20, v21, a2, a3);
      v23 = v22;
      sub_23DDD6FDC(v18, v19, v20);
      if (v23)
      {

        v24 = a1;
        v25 = v42;
        if (v41)
        {
          goto LABEL_41;
        }

        goto LABEL_21;
      }

      v11 = *(v6 + 16);
      data = v11->data;
      if (!data)
      {
LABEL_47:
        __break(1u);
        return;
      }

      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_19:
        if (v14 < *(data + 16))
        {
          v26 = data + a4;
          v27 = *(data + a4 + 32);
          v28 = *(data + a4 + 40);
          v24 = a1;
          v25 = v42;
          *(v26 + 32) = v42;
          *(v26 + 40) = v24;
          v29 = *(v26 + 48);
          *(v26 + 48) = a3;
          sub_23DDD6F58(v42, v24, a3);
          sub_23DDD6FDC(v27, v28, v29);
          v11->data = data;

          sub_23DE05408();

          if (v41)
          {
LABEL_41:
            sub_23DDF0BF4(v25, v24, a3);
            return;
          }

LABEL_21:
          if (a3 > 1u)
          {
            v30 = [v25 sectionIdentifier];
          }

          else
          {
            if (a3)
            {
              v30 = @"Shortcuts";
            }

            else
            {
              v30 = @"Controls";
            }

            v31 = v30;
          }

          v32 = *(v6 + 24);
          v33 = *(v32 + 32);
          if (v33 <= 1)
          {
            if (*(v32 + 32))
            {
              v34 = @"Shortcuts";
            }

            else
            {
              v34 = @"Controls";
            }

            v35 = v34;
          }

          else
          {
            if (v33 != 2 && v33 != 3)
            {

              return;
            }

            v34 = [*(v32 + 16) sectionIdentifier];
          }

          v36 = sub_23DE05A48();
          v38 = v37;
          if (v36 == sub_23DE05A48() && v38 == v39)
          {

            v25 = v42;
          }

          else
          {
            v40 = sub_23DE06318();

            v25 = v42;
            if ((v40 & 1) == 0)
            {
              return;
            }
          }

          goto LABEL_41;
        }

        __break(1u);
        goto LABEL_47;
      }

LABEL_45:
      data = sub_23DDF5ABC(data);
      goto LABEL_19;
    }

    __break(1u);
    goto LABEL_45;
  }
}

void sub_23DDEDC44(void *a1, char a2)
{
  v3 = *(*(v2 + 16) + 16);
  if (!v3)
  {
    return;
  }

  v4 = v2;

  v7 = [a1 sectionIdentifier];
  sub_23DDF3688(v7);
  v9 = v8;
  v11 = v10;

  if (v11)
  {

    return;
  }

  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_49;
  }

  if (v9 >= *(v3 + 16))
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v12 = v3 + 24 * v9;
  v7 = *(v12 + 32);
  v13 = *(v12 + 40);
  v14 = *(v12 + 48);
  sub_23DDD6F58(v7, v13, *(v12 + 48));

  if (v14 > 1)
  {
    if (v14 != 2)
    {
      v50 = v7;
      sub_23DDED81C(v7, v13, 3, a2 & 1);
      sub_23DDD6FDC(v7, v13, 3u);

      sub_23DDD6FDC(v7, v13, 3u);
      return;
    }

    v29 = [v7 parameters];
    sub_23DDC91D0(0, &qword_2812184D0, 0x277D7A120);
    v9 = sub_23DE05AF8();

    if (!(v9 >> 62))
    {
      if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_40;
      }

      goto LABEL_20;
    }

LABEL_50:
    if (!sub_23DE06038())
    {
      goto LABEL_40;
    }

LABEL_20:
    if ((v9 & 0xC000000000000001) != 0)
    {
      v30 = MEMORY[0x23EF00A60](0, v9);
    }

    else
    {
      if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_54;
      }

      v30 = *(v9 + 32);
    }

    v31 = v30;

    objc_opt_self();
    v32 = swift_dynamicCastObjCClass();
    if (!v32)
    {

LABEL_41:
      v62 = v7;
      v61 = sub_23DDF71AC(MEMORY[0x277D84F90]);
      sub_23DDED81C(v7, v61, 2, a2 & 1);

      goto LABEL_45;
    }

    v33 = v32;
    v34 = a1;
    v35 = [v33 templateParameterValues];
    sub_23DDC91D0(0, &qword_2812184C8, 0x277D7A128);
    v36 = sub_23DE059F8();

    v37 = [v31 key];
    v38 = sub_23DE05A48();
    v40 = v39;

    if (*(v36 + 16))
    {
      v41 = sub_23DE016E8(v38, v40);
      v43 = v42;

      if (v43)
      {
        v44 = *(*(v36 + 56) + 8 * v41);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326980, &qword_23DE09140);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_23DE08B50;
        *(inited + 32) = v31;
        *(inited + 40) = v44;
        v46 = v44;
        v47 = v7;
        v48 = v31;
        v49 = sub_23DDF71AC(inited);
        swift_setDeallocating();
        sub_23DDC925C(inited + 32, &qword_27E326988, &unk_23DE09148);
        sub_23DDED81C(v7, v49, 2, a2 & 1);

        return;
      }
    }

    else
    {
    }

LABEL_40:

    goto LABEL_41;
  }

  if (!v14)
  {
    sub_23DDD6FDC(v7, v13, 0);
    objc_opt_self();
    v62 = swift_dynamicCastObjCClass();
    if (v62)
    {
      v15 = a1;
      if (a2)
      {
        v16 = v15;
        v17 = [v62 controlType];
        v18 = [v17 unsignedIntegerValue];

        v19 = sub_23DDD9150();
        v20 = v19;
        v21 = *(v4 + 104);
        v22 = v21[8];
        if (v22)
        {
          v23 = v22 + OBJC_IVAR____TtC27ActionButtonConfigurationUIP33_71488BF1F1CBF40E6211521E328CAE4615ControlObserver_control;
          v24 = *v23;
          v25 = *(v23 + 8);
          sub_23DDC91D0(0, &qword_27E326168, 0x277D82BB8);
          v26 = v24;
          if (sub_23DE05DC8())
          {

            if (v18 == v25)
            {
              v27 = v21[3];
              if (v27)
              {
                v28 = v21[2];
                sub_23DDD904C(v28, v21[3], v21[4], v21[5], v21[6], v21[7]);
                v62 = sub_23DDD984C(v28, v27);

                sub_23DDED81C(v62, 0, 0, a2 & 1);
LABEL_45:

                return;
              }
            }
          }

          else
          {
          }
        }

        else
        {
        }
      }

      sub_23DDED81C(v62, 0, 0, a2 & 1);
      goto LABEL_45;
    }

    if (qword_2812185E8 == -1)
    {
LABEL_34:
      v51 = sub_23DE052B8();
      __swift_project_value_buffer(v51, qword_281218840);
      v52 = a1;
      v62 = sub_23DE05298();
      v53 = sub_23DE05C18();

      if (os_log_type_enabled(v62, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v63 = v56;
        *v54 = 136315394;
        sub_23DDC91D0(0, &qword_27E3263C8, 0x277D79E60);
        v57 = sub_23DE06418();
        v59 = sub_23DDC8940(v57, v58, &v63);

        *(v54 + 4) = v59;
        *(v54 + 12) = 2112;
        *(v54 + 14) = v52;
        *v55 = v52;
        v60 = v52;
        _os_log_impl(&dword_23DDC5000, v62, v53, "Invalid action type. Expected: %s, got: %@", v54, 0x16u);
        sub_23DDC925C(v55, &unk_27E325FC0, &qword_23DE07BB0);
        MEMORY[0x23EF014D0](v55, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v56);
        MEMORY[0x23EF014D0](v56, -1, -1);
        MEMORY[0x23EF014D0](v54, -1, -1);

        return;
      }

      goto LABEL_45;
    }

LABEL_54:
    swift_once();
    goto LABEL_34;
  }

  sub_23DDD6FDC(v7, v13, 1u);

  sub_23DDED81C(a1, 0, 1, a2 & 1);
}

void sub_23DDEE3EC(void *a1, void *a2, char a3)
{
  v6 = [a1 parameters];
  sub_23DDC91D0(0, &qword_2812184D0, 0x277D7A120);
  v7 = sub_23DE05AF8();

  if (v7 >> 62)
  {
    if (sub_23DE06038())
    {
      goto LABEL_3;
    }

LABEL_8:

    return;
  }

  if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v7 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x23EF00A60](0, v7);
    goto LABEL_6;
  }

  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v8 = *(v7 + 32);
LABEL_6:
    v9 = v8;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326980, &qword_23DE09140);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23DE08B50;
    *(inited + 32) = v9;
    *(inited + 40) = a2;
    v11 = a1;
    v12 = v9;
    v13 = a2;
    v14 = sub_23DDF71AC(inited);
    swift_setDeallocating();
    sub_23DDC925C(inited + 32, &qword_27E326988, &unk_23DE09148);
    sub_23DDED81C(v11, v14, 2, a3 & 1);

    return;
  }

  __break(1u);
}

void sub_23DDEE5A8()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + 32);
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      return;
    }

    goto LABEL_6;
  }

  v3 = *(v1 + 16);
  if (v2 < 2)
  {
    if (v3)
    {
      return;
    }

    goto LABEL_6;
  }

  v8 = *(v1 + 24);
  sub_23DDD6F58(*(v1 + 16), v8, 2u);
  v9 = [v3 parameters];
  sub_23DDC91D0(0, &qword_2812184D0, 0x277D7A120);
  v10 = sub_23DE05AF8();

  if (v10 >> 62)
  {
    v11 = sub_23DE06038();
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v11)
  {
    v20 = v3;
    v21 = v8;
    v22 = 2;
    goto LABEL_29;
  }

  if ((v8 & 0xC000000000000001) != 0)
  {
    v12 = sub_23DE06038();
  }

  else
  {
    v12 = *(v8 + 16);
  }

  sub_23DDF72B8(v3, v8, 2u);
  if (!v12)
  {
LABEL_6:
    v5 = *(v0 + 48);
    v4 = *(v0 + 56);
    v6 = *(v0 + 64);
    if (v6 <= 1)
    {
      sub_23DDD6F58(*(v0 + 48), *(v0 + 56), v6 != 0);
      if (!v5)
      {
        goto LABEL_28;
      }
    }

    else
    {
      if (v6 != 2)
      {
        if (v6 != 3)
        {
          return;
        }

        v7 = v5;
        goto LABEL_23;
      }

      sub_23DDD6F58(*(v0 + 48), *(v0 + 56), 2u);
      v13 = [v5 parameters];
      sub_23DDC91D0(0, &qword_2812184D0, 0x277D7A120);
      v14 = sub_23DE05AF8();

      if (v14 >> 62)
      {
        v15 = sub_23DE06038();
      }

      else
      {
        v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v15)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          if (!sub_23DE06038())
          {
LABEL_28:
            v20 = v5;
            v21 = v4;
            v22 = v6;
LABEL_29:

            sub_23DDF72B8(v20, v21, v22);
            return;
          }
        }

        else if (!*(v4 + 16))
        {
          goto LABEL_28;
        }
      }
    }

LABEL_23:
    if (qword_2812185E8 != -1)
    {
      swift_once();
    }

    v16 = sub_23DE052B8();
    __swift_project_value_buffer(v16, qword_281218840);
    v17 = sub_23DE05298();
    v18 = sub_23DE05C18();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_23DDC5000, v17, v18, "Session is exiting, but current action is invalid. Restoring saved action from before session began.", v19, 2u);
      MEMORY[0x23EF014D0](v19, -1, -1);
    }

    sub_23DDEE8E0(v5, v4, v6);
    goto LABEL_28;
  }
}

void sub_23DDEE8E0(void *a1, uint64_t a2, unsigned __int8 a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326A48, &qword_23DE09218);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v43 - v8;
  if (qword_2812186B8 != -1)
  {
    swift_once();
  }

  v10 = qword_281218858;
  v11 = a1;
  if (a3 >= 2u)
  {
    if (a3 != 2)
    {
      if (qword_27E325B10 != -1)
      {
        swift_once();
      }

      if (qword_27E326780)
      {
        v18 = qword_27E326780;
        sub_23DDFEEAC(v18, a1, 0);

        return;
      }

      sub_23DDEC29C();
      v23 = swift_allocError();
      swift_willThrow();
      goto LABEL_44;
    }

    v15 = [a1 parameters];
    sub_23DDC91D0(0, &qword_2812184D0, 0x277D7A120);
    v16 = sub_23DE05AF8();

    if (v16 >> 62)
    {
      v17 = sub_23DE06038();
    }

    else
    {
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v17)
    {
      goto LABEL_25;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v11 = sub_23DE06038();
    }

    else
    {
      v11 = *(a2 + 16);
    }
  }

  if (!v11)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        v19 = [a1 sectionIdentifier];
        goto LABEL_38;
      }

      v19 = @"Shortcuts";
    }

    else
    {
      v19 = @"Controls";
    }

    v28 = v19;
LABEL_38:
    sub_23DDEB5F8(v19);

    return;
  }

  if (!a3)
  {
    if (!a1)
    {
      return;
    }

    v20 = qword_27E325B10;
    v21 = a1;
    if (v20 != -1)
    {
      swift_once();
    }

    if (qword_27E326780)
    {
      v22 = qword_27E326780;
      sub_23DDFEEAC(v22, a1, 0);

      v40 = a1;
      v41 = a2;
      v42 = 0;
      goto LABEL_53;
    }

    sub_23DDEC29C();
    v23 = swift_allocError();
    swift_willThrow();
    v29 = a1;
    v30 = a2;
    v31 = 0;
    goto LABEL_43;
  }

  if (a3 != 1)
  {
LABEL_25:
    if (*(v3 + 80))
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3267B8, &unk_23DE08E20);
      sub_23DE05BC8();
    }

    else
    {
    }

    v24 = sub_23DE05BB8();
    (*(*(v24 - 8) + 56))(v9, 1, 1, v24);
    v25 = swift_allocObject();
    swift_weakInit();
    v26 = swift_allocObject();
    v26[2] = 0;
    v26[3] = 0;
    v26[4] = v10;
    v26[5] = a1;
    v26[6] = a2;
    v26[7] = v25;

    v27 = a1;
    *(v3 + 80) = sub_23DDF33DC(0, 0, v9, &unk_23DE09228, v26);

    return;
  }

  if (!a1)
  {
    return;
  }

  v12 = qword_27E325B10;
  v13 = a1;
  if (v12 != -1)
  {
    swift_once();
  }

  if (qword_27E326780)
  {
    v14 = qword_27E326780;
    sub_23DDFEEAC(v14, a1, 0);

    v40 = a1;
    v41 = a2;
    v42 = 1;
LABEL_53:

    sub_23DDD6FDC(v40, v41, v42);
    return;
  }

  sub_23DDEC29C();
  v23 = swift_allocError();
  swift_willThrow();
  v29 = a1;
  v30 = a2;
  v31 = 1;
LABEL_43:
  sub_23DDD6FDC(v29, v30, v31);
LABEL_44:
  if (qword_2812185E8 != -1)
  {
    swift_once();
  }

  v32 = sub_23DE052B8();
  __swift_project_value_buffer(v32, qword_281218840);
  v33 = v23;
  v43 = sub_23DE05298();
  v34 = sub_23DE05C18();

  if (os_log_type_enabled(v43, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v35 = 138412290;
    v37 = v23;
    v38 = _swift_stdlib_bridgeErrorToNSError();
    *(v35 + 4) = v38;
    *v36 = v38;
    _os_log_impl(&dword_23DDC5000, v43, v34, "Failed to save action: %@", v35, 0xCu);
    sub_23DDC925C(v36, &unk_27E325FC0, &qword_23DE07BB0);
    MEMORY[0x23EF014D0](v36, -1, -1);
    MEMORY[0x23EF014D0](v35, -1, -1);

    v39 = v43;
  }

  else
  {

    v39 = v23;
  }
}

uint64_t sub_23DDEEFC8@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a2;
  v51 = a3;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326B40, &qword_23DE09308);
  v45 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v44 = &v37 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326B48, &unk_23DE09310);
  v49 = *(v5 - 8);
  v50 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v46 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v47 = &v37 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326848, &qword_23DE08EA0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v37 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326B50, &qword_23DE09320);
  v38 = *(v13 - 8);
  v39 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v37 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326B58, &qword_23DE09328);
  v42 = *(v16 - 8);
  v43 = v16;
  v17 = MEMORY[0x28223BE20](v16);
  v40 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v37 - v19;
  v21 = *a1;
  if (qword_2812186B8 != -1)
  {
    swift_once();
  }

  v22 = qword_281218858;
  v23 = swift_allocObject();
  *(v23 + 16) = v21;
  *(v23 + 24) = v22;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326860, &unk_23DE09330);
  sub_23DDC7D28(&qword_2812185D8, &qword_27E326860, &unk_23DE09330, MEMORY[0x277CBCB60]);
  sub_23DE05488();
  sub_23DDC7D28(&qword_281218530, &qword_27E326848, &qword_23DE08EA0, MEMORY[0x277CBCEB8]);
  v24 = sub_23DE05498();
  (*(v10 + 8))(v12, v9);
  v52 = v24;
  v54 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326868, &unk_23DE08EC0);
  v25 = MEMORY[0x277CBCD90];
  sub_23DDC7D28(&qword_281218560, &qword_27E326868, &unk_23DE08EC0, MEMORY[0x277CBCD90]);
  sub_23DE054D8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326B60, &unk_23DE09340);
  v26 = MEMORY[0x277CBCB78];
  sub_23DDC7D28(&qword_27E326B68, &qword_27E326B50, &qword_23DE09320, MEMORY[0x277CBCB78]);
  v27 = v39;
  sub_23DE054E8();

  (*(v38 + 8))(v15, v27);
  v52 = sub_23DDE9048();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3268F0, &qword_23DE08F48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326B70, &qword_23DE09350);
  sub_23DDC7D28(&qword_27E3268F8, &qword_27E3268F0, &qword_23DE08F48, v25);
  v28 = v44;
  sub_23DE054E8();

  v52 = 0;
  v53 = -1;
  v29 = MEMORY[0x277CBCC08];
  sub_23DDC7D28(&qword_27E326B78, &qword_27E326B40, &qword_23DE09308, MEMORY[0x277CBCC08]);
  v31 = v47;
  v30 = v48;
  sub_23DE054D8();
  (*(v45 + 8))(v28, v30);
  v33 = v42;
  v32 = v43;
  (*(v42 + 16))(v40, v20, v43);
  v35 = v49;
  v34 = v50;
  (*(v49 + 16))(v46, v31, v50);
  sub_23DDC7D28(&qword_27E326B80, &qword_27E326B58, &qword_23DE09328, v29);
  sub_23DDC7D28(&qword_27E326B88, &qword_27E326B48, &unk_23DE09310, v26);
  sub_23DE05378();
  (*(v35 + 8))(v31, v34);
  return (*(v33 + 8))(v20, v32);
}

void sub_23DDEF738(unint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  if (*a1 >> 62)
  {
    v6 = sub_23DE06038();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v36 = MEMORY[0x277D84F90];
    v7 = &v36;
    sub_23DDF3DBC(0, v6 & ~(v6 >> 63), 0);
    if (v6 < 0)
    {
      __break(1u);
LABEL_30:
      v7 = sub_23DDF3B7C(0, *(v7 + 2) + 1, 1, v7);
      goto LABEL_18;
    }

    v35 = a3;
    v7 = v36;
    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = 0;
      v9 = MEMORY[0x277D84F98];
      do
      {
        v10 = MEMORY[0x23EF00A60](v8, v5);
        v36 = v7;
        v12 = *(v7 + 2);
        v11 = *(v7 + 3);
        if (v12 >= v11 >> 1)
        {
          v34 = v10;
          sub_23DDF3DBC((v11 > 1), v12 + 1, 1);
          v10 = v34;
          v7 = v36;
        }

        ++v8;
        *(v7 + 2) = v12 + 1;
        v13 = &v7[24 * v12];
        *(v13 + 4) = v10;
        *(v13 + 5) = v9;
        v13[48] = 2;
      }

      while (v6 != v8);
    }

    else
    {
      v14 = (v5 + 32);
      v15 = MEMORY[0x277D84F98];
      do
      {
        v16 = *v14;
        v36 = v7;
        v18 = *(v7 + 2);
        v17 = *(v7 + 3);
        v19 = v16;
        if (v18 >= v17 >> 1)
        {
          v21 = v17 > 1;
          v22 = v19;
          sub_23DDF3DBC(v21, v18 + 1, 1);
          v19 = v22;
          v7 = v36;
        }

        *(v7 + 2) = v18 + 1;
        v20 = &v7[24 * v18];
        *(v20 + 4) = v19;
        *(v20 + 5) = v15;
        v20[48] = 2;
        ++v14;
        --v6;
      }

      while (v6);
    }

    a3 = v35;
  }

  if ((*(a2 + 120) & 1) == 0)
  {
    goto LABEL_21;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_18:
  v24 = *(v7 + 2);
  v23 = *(v7 + 3);
  if (v24 >= v23 >> 1)
  {
    v7 = sub_23DDF3B7C((v23 > 1), v24 + 1, 1, v7);
  }

  *(v7 + 2) = v24 + 1;
  v25 = &v7[24 * v24];
  *(v25 + 4) = 0;
  *(v25 + 5) = 0;
  v25[48] = 0;
LABEL_21:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_23DDF3B7C(0, *(v7 + 2) + 1, 1, v7);
  }

  v27 = *(v7 + 2);
  v26 = *(v7 + 3);
  if (v27 >= v26 >> 1)
  {
    v7 = sub_23DDF3B7C((v26 > 1), v27 + 1, 1, v7);
  }

  *(v7 + 2) = v27 + 1;
  v28 = &v7[24 * v27];
  *(v28 + 4) = 0;
  *(v28 + 5) = 0;
  v28[48] = 1;
  v29 = [objc_allocWithZone(MEMORY[0x277D79E38]) init];
  v31 = *(v7 + 2);
  v30 = *(v7 + 3);
  if (v31 >= v30 >> 1)
  {
    v33 = v29;
    v7 = sub_23DDF3B7C((v30 > 1), v31 + 1, 1, v7);
    v29 = v33;
  }

  *(v7 + 2) = v31 + 1;
  v32 = &v7[24 * v31];
  *(v32 + 4) = v29;
  *(v32 + 5) = 0;
  v32[48] = 3;
  v36 = v7;

  sub_23DDF5AD0(&v36);

  *a3 = v36;
}

id sub_23DDEFA84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  *a2 = *a1;
  *(a2 + 8) = v3;
  return v2;
}

uint64_t sub_23DDEFA98(unsigned __int8 *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_23DDEFB14(a1, a2, v4);
  }

  return result;
}

void sub_23DDEFB14(unsigned __int8 *a1, void *a2, char a3)
{
  v4 = v3;
  LOBYTE(v5) = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326878, &qword_23DE08ED0);
  v141 = *(v8 - 8);
  v142 = v8;
  MEMORY[0x28223BE20](v8);
  v139 = &v131 - v9;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326998, &unk_23DE09160);
  v10 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v134 = &v131 - v11;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326870, &qword_23DE09300);
  v138 = *(v140 - 8);
  MEMORY[0x28223BE20](v140);
  v137 = &v131 - v12;
  if (qword_2812185E8 != -1)
  {
LABEL_71:
    swift_once();
  }

  v13 = sub_23DE052B8();
  v14 = __swift_project_value_buffer(v13, qword_281218840);
  v15 = sub_23DE05298();
  v16 = sub_23DE05C38();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_23DDC5000, v15, v16, "Resetting the store", v17, 2u);
    MEMORY[0x23EF014D0](v17, -1, -1);
  }

  v18 = *(v4 + 40);
  LOBYTE(v154) = 1;
  *(v18 + 16) = 1;

  sub_23DE05408();

  v19 = *(v4 + 32);
  v154 = MEMORY[0x277D84F98];
  *(v19 + 16) = MEMORY[0x277D84F98];

  sub_23DE05408();

  sub_23DDF7578(v20);

  v21 = *(v4 + 112);
  v149 = v14;
  if (v21)
  {
    v22 = v21;
    sub_23DDF0A14(v22);
    if (v25 != 0xFF)
    {
      v26 = v23;
      v27 = v24;
      v28 = v25;
      sub_23DDF0BF4(v23, v24, v25);

      sub_23DDF72B8(v26, v27, v28);
      v29 = *(v4 + 112);
      *(v4 + 112) = 0;

      goto LABEL_14;
    }
  }

  if (v5 != 0xFF)
  {
    v30 = a2;
    if (v5)
    {
      sub_23DDF0A14(v30);
      if (v33 != 0xFF)
      {
        v34 = v31;
        v35 = v32;
        v36 = v33;
        sub_23DDED81C(v31, v32, v33, 1uLL);
        sub_23DDEC340(a2, v5);
        sub_23DDF72B8(v34, v35, v36);
        goto LABEL_14;
      }
    }

    else
    {
      sub_23DDEDC44(v30, 1);
    }

    sub_23DDEC340(a2, v5);
  }

LABEL_14:
  v37 = *(v4 + 24);
  v38 = *(v37 + 32);
  if (v38 <= 1)
  {
    if (*(v37 + 32))
    {
      v39 = @"Shortcuts";
    }

    else
    {
      v39 = @"Controls";
    }

    v40 = v39;
  }

  else
  {
    if (v38 != 2 && v38 != 3)
    {
      goto LABEL_25;
    }

    v39 = [*(v37 + 16) sectionIdentifier];
  }

  sub_23DDF0A14(v39);
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v47 = ~v45;

  if (v47)
  {
    sub_23DDF72B8(v42, v44, v46);
    goto LABEL_30;
  }

LABEL_25:
  sub_23DDF0A14(@"Nothing");
  if (v50 == 0xFF)
  {
    if (!*(a1 + 2))
    {
      __break(1u);
      return;
    }

    v51 = *(a1 + 4);
    v52 = *(a1 + 5);
    v53 = a1[48];
    sub_23DDD6F58(v51, v52, a1[48]);
  }

  else
  {
    v51 = v48;
    v52 = v49;
    v53 = v50;
  }

  sub_23DDF0BF4(v51, v52, v53);
  sub_23DDD6FDC(v51, v52, v53);
LABEL_30:
  v54 = *(v4 + 24);
  v55 = *(v54 + 16);
  v56 = *(v54 + 24);
  v57 = *(v4 + 48);
  v58 = *(v4 + 56);
  v59 = *(v54 + 32);
  *(v4 + 48) = v55;
  *(v4 + 56) = v56;
  v60 = *(v4 + 64);
  *(v4 + 64) = v59;
  sub_23DDF72A4(v55, v56, v59);
  sub_23DDF72B8(v57, v58, v60);

  v61 = sub_23DE05298();
  v62 = sub_23DE05C08();

  v63 = os_log_type_enabled(v61, v62);
  v144 = v4;
  if (v63)
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v152[0] = v65;
    *v64 = 136315138;
    v66 = *(v4 + 64);
    if (v66 == 255)
    {
      v71 = 0;
      v73 = 0;
    }

    else
    {
      v151 = a1;
      v67 = v10;
      v70 = v4 + 48;
      v68 = *(v4 + 48);
      v69 = *(v70 + 8);
      sub_23DDD6F58(v68, v69, v66);
      v71 = sub_23DDFFA9C(v68, v69, v66);
      v73 = v72;
      v74 = v69;
      v10 = v67;
      a1 = v151;
      sub_23DDF72B8(v68, v74, v66);
    }

    v154 = v71;
    v155 = v73;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E3261D0, &qword_23DE07DD0);
    v75 = sub_23DE05A68();
    v77 = sub_23DDC8940(v75, v76, v152);

    *(v64 + 4) = v77;
    _os_log_impl(&dword_23DDC5000, v61, v62, "Saved action from last session was %s", v64, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v65);
    MEMORY[0x23EF014D0](v65, -1, -1);
    MEMORY[0x23EF014D0](v64, -1, -1);

    v4 = v144;
  }

  else
  {
  }

  swift_weakInit();
  v78 = MEMORY[0x277D84F90];
  v156 = MEMORY[0x277D84F90];
  a2 = *(a1 + 2);
  swift_beginAccess();
  if (a2)
  {
    v5 = 0;
    v146 = 0x800000023DE0B5E0;
    v133 = (v10 + 8);
    v80 = a1 + 48;
    *&v79 = 136315138;
    v143 = v79;
    v145 = a2;
    v132 = a1 + 48;
    while (1)
    {
      v136 = v78;
      v81 = &v80[24 * v5];
      v82 = v5;
      v4 = v146;
      while (1)
      {
        if (v82 >= a2)
        {
          __break(1u);
LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
LABEL_68:
          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
          goto LABEL_71;
        }

        v5 = v82 + 1;
        if (__OFADD__(v82, 1))
        {
          goto LABEL_66;
        }

        a1 = *(v81 - 2);
        v83 = *(v81 - 1);
        v84 = *v81;
        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          break;
        }

LABEL_40:
        ++v82;
        v81 += 24;
        if (v5 == a2)
        {
          v4 = v144;
          v78 = v136;
          goto LABEL_64;
        }
      }

      v10 = Strong;
      if (v84 != 2)
      {
        break;
      }

      sub_23DDD6F58(a1, v83, 2u);
      v151 = a1;
      v86 = [v151 parameters];
      sub_23DDC91D0(0, &qword_2812184D0, 0x277D7A120);
      v87 = sub_23DE05AF8();

      v150 = v83;
      if (v87 >> 62)
      {
        v88 = sub_23DE06038();
      }

      else
      {
        v88 = *((v87 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v88 >= 2)
      {
        v89 = v151;
        v90 = sub_23DE05298();
        v91 = sub_23DE05C18();

        if (os_log_type_enabled(v90, v91))
        {
          v92 = swift_slowAlloc();
          v147 = v91;
          v93 = v92;
          v148 = swift_slowAlloc();
          v153 = v148;
          *v93 = v143;
          v94 = [v89 actionIdentifier];
          v95 = sub_23DE05A48();
          v97 = v96;

          v98 = v95;
          a2 = v145;
          v99 = sub_23DDC8940(v98, v97, &v153);
          v4 = v146;

          *(v93 + 4) = v99;
          _os_log_impl(&dword_23DDC5000, v90, v147, "%s has multiple parameters; will only displaying first parameter", v93, 0xCu);
          v100 = v148;
          __swift_destroy_boxed_opaque_existential_1(v148);
          MEMORY[0x23EF014D0](v100, -1, -1);
          MEMORY[0x23EF014D0](v93, -1, -1);
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326880, &qword_23DE08ED8);
      v101 = sub_23DE06258();
      v102 = @"Focus";
      v103 = @"Focus";
      v104 = @"Camera";
      v105 = sub_23DDCA864(@"Focus");
      if (v106)
      {
        goto LABEL_67;
      }

      *(v101 + ((v105 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v105;
      *(v101[6] + 8 * v105) = @"Focus";
      v107 = (v101[7] + 16 * v105);
      *v107 = 0xD000000000000031;
      v107[1] = v4;
      v108 = v101[2];
      v109 = __OFADD__(v108, 1);
      v110 = v108 + 1;
      if (v109)
      {
        goto LABEL_68;
      }

      v101[2] = v110;

      v111 = sub_23DDCA864(@"Camera");
      if (v112)
      {
        goto LABEL_69;
      }

      *(v101 + ((v111 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v111;
      *(v101[6] + 8 * v111) = @"Camera";
      v113 = (v101[7] + 16 * v111);
      *v113 = 0x746F685072616572;
      v113[1] = 0xE90000000000006FLL;
      v114 = v101[2];
      v109 = __OFADD__(v114, 1);
      v115 = v114 + 1;
      if (v109)
      {
        goto LABEL_70;
      }

      v101[2] = v115;
      v116 = v151;
      v117 = [v151 sectionIdentifier];
      v118 = v117;
      if (!v101[2] || (sub_23DDCA864(v117), (v119 & 1) == 0))
      {

        sub_23DDD6FDC(a1, v150, 2u);

        goto LABEL_40;
      }

      v120 = swift_allocObject();
      swift_weakInit();
      v121 = swift_allocObject();
      *(v121 + 16) = v120;
      *(v121 + 24) = v116;
      v122 = v116;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326890, &unk_23DE09170);
      sub_23DDC7D28(&qword_281218568, &qword_27E326890, &unk_23DE09170, MEMORY[0x277CBCD90]);
      v123 = v134;
      sub_23DE05488();
      sub_23DDC7D28(&qword_27E3269A0, &qword_27E326998, &unk_23DE09160, MEMORY[0x277CBCEB8]);
      v124 = v135;
      sub_23DE05498();
      sub_23DDD6FDC(a1, v150, 2u);

      v125 = (*v133)(v123, v124);
      MEMORY[0x23EF00460](v125);
      if (*(v156 + 16) >= *(v156 + 24) >> 1)
      {
        sub_23DE05B18();
      }

      sub_23DE05B38();
      v78 = v156;
      v4 = v144;
      a2 = v145;
      v80 = v132;
      if (v5 == v145)
      {
        goto LABEL_64;
      }
    }

    goto LABEL_40;
  }

LABEL_64:
  swift_weakDestroy();
  v152[0] = v78;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326888, &unk_23DE08EE0);
  sub_23DDC7D28(&qword_281218528, &qword_27E326888, &unk_23DE08EE0, MEMORY[0x277D83970]);
  v126 = v139;
  sub_23DE05AC8();

  sub_23DE053C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326890, &unk_23DE09170);
  sub_23DDC7D28(&qword_281218580, &qword_27E326878, &qword_23DE08ED0, MEMORY[0x277CBCD18]);
  sub_23DDC7D28(&qword_281218568, &qword_27E326890, &unk_23DE09170, MEMORY[0x277CBCD90]);
  v127 = v137;
  v128 = v142;
  sub_23DE055F8();
  (*(v141 + 8))(v126, v128);
  sub_23DDC7D28(&qword_281218590, &qword_27E326870, &qword_23DE09300, MEMORY[0x277CBCCE0]);
  v129 = v140;
  sub_23DE054F8();
  (*(v138 + 8))(v127, v129);
  swift_beginAccess();
  sub_23DE053D8();
  swift_endAccess();

  v130 = *(v4 + 40);
  LOBYTE(v152[0]) = 0;
  *(v130 + 16) = 0;

  sub_23DE05408();
}

void sub_23DDF0A14(uint64_t a1)
{
  v2 = *(*(v1 + 16) + 16);
  if (v2)
  {
    v3 = *(v2 + 16);

    v20 = v3;
    if (v3)
    {
      v4 = 0;
      v5 = (v2 + 48);
      while (v4 < *(v2 + 16))
      {
        v6 = *(v5 - 2);
        v7 = *(v5 - 1);
        v8 = *v5;
        if (v8 > 1)
        {
          if (v8 == 2)
          {
            v12 = v6;

            v13 = [v12 sectionIdentifier];
          }

          else
          {
            v13 = [v6 sectionIdentifier];
          }

          v11 = v13;
        }

        else
        {
          v9 = *(v5 - 2);
          v10 = *(v5 - 1);
          if (*v5)
          {
            sub_23DDD6F58(v9, v10, 1u);
            v11 = @"Shortcuts";
          }

          else
          {
            sub_23DDD6F58(v9, v10, 0);
            v11 = @"Controls";
          }

          v14 = v11;
        }

        v15 = sub_23DE05A48();
        v17 = v16;
        if (v15 == sub_23DE05A48() && v17 == v18)
        {

LABEL_21:

          return;
        }

        v19 = sub_23DE06318();

        if (v19)
        {
          goto LABEL_21;
        }

        ++v4;
        sub_23DDD6FDC(v6, v7, v8);
        v5 += 24;
        if (v20 == v4)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_18:
    }
  }
}

void sub_23DDF0BF4(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326998, &unk_23DE09160);
  v50 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v43 - v9;
  v11 = *(v3 + 24);
  v12 = *(v11 + 32);
  if (v12 != 255)
  {
    v14 = *(v11 + 16);
    v13 = *(v11 + 24);
    sub_23DDF72A4(v14, v13, *(v11 + 32));
    sub_23DE01C28(v14, v13, v12, a1, a2, v5);
    v16 = v15;
    sub_23DDF72B8(v14, v13, v12);
    if (v16)
    {
      return;
    }

    v11 = *(v4 + 24);
    v12 = *(v11 + 32);
  }

  v17 = *(v11 + 16);
  v18 = *(v11 + 24);
  v52 = a1;
  v53 = a2;
  v54 = v5;
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *(v11 + 32) = v5;
  sub_23DDD6F58(a1, a2, v5);
  sub_23DDD6F58(a1, a2, v5);
  sub_23DDD6F58(a1, a2, v5);

  sub_23DDF72A4(v17, v18, v12);
  v51 = v12;
  sub_23DDF72B8(v17, v18, v12);

  sub_23DE05408();

  sub_23DDD6FDC(a1, a2, v5);

  sub_23DDD6FDC(a1, a2, v5);
  v19 = *(v4 + 24);
  v20 = *(v19 + 16);
  v21 = *(v19 + 24);
  v22 = *(v19 + 32);
  if (v22)
  {
    if (v22 == 2)
    {
      sub_23DDF72A4(v20, v21, 2u);
      v45 = v20;
      v44 = v20;
      v47 = [v44 sectionIdentifier];
      v48 = v17;
      v49 = v18;
      v46 = v21;
      if (v51 <= 1)
      {
        if (v51)
        {
          v32 = @"Shortcuts";
        }

        else
        {
          v32 = @"Controls";
        }

        v33 = v32;
      }

      else
      {
        if (v51 != 2 && v51 != 3)
        {

LABEL_30:
          v39 = swift_allocObject();
          swift_weakInit();
          v40 = swift_allocObject();
          v41 = v44;
          *(v40 + 16) = v39;
          *(v40 + 24) = v41;
          v47 = v41;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326890, &unk_23DE09170);
          sub_23DDC7D28(&qword_281218568, &qword_27E326890, &unk_23DE09170, MEMORY[0x277CBCD90]);
          sub_23DE05488();
          sub_23DDC7D28(&qword_27E3269A0, &qword_27E326998, &unk_23DE09160, MEMORY[0x277CBCEB8]);
          v42 = sub_23DE05498();
          v50[1](v10, v8);
          v52 = v42;
          v31 = sub_23DE054F8();
          sub_23DDF72B8(v45, v46, 2u);

          goto LABEL_31;
        }

        v32 = [v17 sectionIdentifier];
      }

      v34 = sub_23DE05A48();
      v36 = v35;
      if (v34 == sub_23DE05A48() && v36 == v37)
      {

LABEL_29:

        sub_23DDF72B8(v45, v46, 2u);
LABEL_32:
        v17 = v48;
        v18 = v49;
        goto LABEL_33;
      }

      v38 = sub_23DE06318();

      if (v38)
      {
        goto LABEL_29;
      }

      goto LABEL_30;
    }

    *(v4 + 96) = 0;

LABEL_33:
    sub_23DDEE8E0(a1, a2, v5);
    v29 = v51;
    goto LABEL_34;
  }

  if (!v20)
  {
    goto LABEL_33;
  }

  v48 = v17;
  v49 = v18;
  if (v51)
  {
    sub_23DDF72A4(v20, v21, 0);
    sub_23DDD6F58(v20, v21, 0);
    goto LABEL_18;
  }

  v23 = v49;
  if (!v17)
  {
    sub_23DDF72A4(v20, v21, 0);
    sub_23DDF72A4(0, v23, 0);
    sub_23DDF72A4(v20, v21, 0);
    goto LABEL_18;
  }

  sub_23DDF72A4(v20, v21, 0);
  sub_23DDF72A4(v17, v23, 0);
  v46 = v21;
  sub_23DDF72A4(v20, v21, 0);
  v24 = [v20 controlType];
  v50 = [v24 unsignedIntegerValue];

  v45 = v20;
  v25 = sub_23DDD9150();
  v26 = [v17 controlType];
  v27 = [v26 unsignedIntegerValue];

  v28 = sub_23DDD9150();
  sub_23DDC91D0(0, &qword_27E326168, 0x277D82BB8);
  LOBYTE(v26) = sub_23DE05DC8();
  sub_23DDF72B8(v17, v49, 0);
  if ((v26 & 1) == 0)
  {

    v20 = v45;
    v21 = v46;
    goto LABEL_18;
  }

  v20 = v45;
  v21 = v46;
  if (v50 != v27)
  {
LABEL_18:
    v30 = v20;
    v52 = sub_23DDF2E1C(v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326180, &qword_23DE08258);
    sub_23DDC7D28(&qword_27E326188, &qword_27E326180, &qword_23DE08258, MEMORY[0x277CBCD90]);
    v31 = sub_23DE054F8();
    sub_23DDF72B8(v30, v21, 0);
    sub_23DDF72B8(v30, v21, 0);

LABEL_31:
    *(v4 + 96) = v31;

    goto LABEL_32;
  }

  sub_23DDF72B8(v45, v46, 0);
  sub_23DDF72B8(v20, v21, 0);
  v29 = 0;
  v17 = v48;
  v18 = v49;
LABEL_34:
  sub_23DDF72B8(v17, v18, v29);
}

void sub_23DDF137C(void *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326798, &qword_23DE08E00);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v90 - v7;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3269A8, &qword_23DE09180);
  v98 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v95 = &v90 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3269B0, &qword_23DE09188);
  v104 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v103 = &v90 - v11;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3269B8, &qword_23DE09190);
  v97 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v94 = &v90 - v12;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3269C0, &qword_23DE09198);
  v99 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v96 = &v90 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3269C8, &qword_23DE091A0);
  v91 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v90 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3269D0, &qword_23DE091A8);
  v92 = *(v17 - 1);
  v93 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v90 - v18;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_14;
  }

  v21 = Strong;
  v90 = v10;
  v105 = a3;
  v22 = a2;
  v23 = [a2 parameters];
  sub_23DDC91D0(0, &qword_2812184D0, 0x277D7A120);
  v24 = sub_23DE05AF8();

  if (v24 >> 62)
  {
    v25 = sub_23DE06038();
  }

  else
  {
    v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v26 = v105;
  if (!v25)
  {

    a3 = v26;
LABEL_14:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3267B0, &unk_23DE091B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3267B8, &unk_23DE08E20);
    sub_23DE05468();
    sub_23DDC7D28(&qword_27E3267C0, &qword_27E326798, &qword_23DE08E00, MEMORY[0x277CBCE90]);
    v45 = sub_23DE05498();
    (*(v6 + 8))(v8, v5);
    goto LABEL_30;
  }

  v27 = *(v21[4] + 16);
  if (*(v27 + 16))
  {

    v28 = sub_23DE01698(v22);
    if (v29)
    {
      v30 = *(*(v27 + 56) + 8 * v28);

      if (*(v30 + 16))
      {
        if (qword_2812185E8 != -1)
        {
          swift_once();
        }

        v31 = sub_23DE052B8();
        __swift_project_value_buffer(v31, qword_281218840);
        v32 = v22;
        v33 = sub_23DE05298();
        v34 = sub_23DE05C38();

        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          v103 = v35;
          v104 = swift_slowAlloc();
          v107[0] = v104;
          *v35 = 136315138;
          v36 = [v32 sectionIdentifier];
          v37 = sub_23DE05A48();
          v39 = v38;

          v40 = sub_23DDC8940(v37, v39, v107);

          v41 = v103;
          *(v103 + 4) = v40;
          v42 = v41;
          _os_log_impl(&dword_23DDC5000, v33, v34, "Already have cached sections for %s", v41, 0xCu);
          v43 = v104;
          __swift_destroy_boxed_opaque_existential_1(v104);
          MEMORY[0x23EF014D0](v43, -1, -1);
          MEMORY[0x23EF014D0](v42, -1, -1);
        }

        a3 = v105;
        v107[0] = v30;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3267B0, &unk_23DE091B0);
        sub_23DE05458();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3267B8, &unk_23DE08E20);
        sub_23DE05448();
        (*(v91 + 8))(v16, v14);
        sub_23DDC7D28(&qword_27E326A08, &qword_27E3269D0, &qword_23DE091A8, MEMORY[0x277CBCF40]);
        v44 = v93;
        v45 = sub_23DE05498();

        (*(v92 + 8))(v19, v44);
        goto LABEL_30;
      }
    }
  }

  v46 = [v22 sectionIdentifier];
  swift_beginAccess();
  v47 = v21[11];
  if (*(v47 + 16) && (v48 = sub_23DDCA864(v46), (v49 & 1) != 0))
  {
    v45 = *(*(v47 + 56) + 8 * v48);

    swift_endAccess();

    if (qword_2812185E8 != -1)
    {
      swift_once();
    }

    v50 = sub_23DE052B8();
    __swift_project_value_buffer(v50, qword_281218840);
    v51 = v22;
    v52 = sub_23DE05298();
    v53 = sub_23DE05C38();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v107[0] = v55;
      *v54 = 136315138;
      v56 = [v51 sectionIdentifier];
      v57 = sub_23DE05A48();
      v59 = v58;

      v60 = sub_23DDC8940(v57, v59, v107);

      *(v54 + 4) = v60;
      _os_log_impl(&dword_23DDC5000, v52, v53, "Section request for %s is still running", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v55);
      MEMORY[0x23EF014D0](v55, -1, -1);
      MEMORY[0x23EF014D0](v54, -1, -1);
    }

    a3 = v26;
  }

  else
  {

    swift_endAccess();
    if (qword_2812185E8 != -1)
    {
      swift_once();
    }

    v61 = sub_23DE052B8();
    __swift_project_value_buffer(v61, qword_281218840);
    v62 = v22;
    v63 = sub_23DE05298();
    v64 = sub_23DE05C38();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v107[0] = v66;
      *v65 = 136315138;
      v67 = [v62 sectionIdentifier];
      v68 = sub_23DE05A48();
      v70 = v69;

      v71 = sub_23DDC8940(v68, v70, v107);

      *(v65 + 4) = v71;
      _os_log_impl(&dword_23DDC5000, v63, v64, "Starting section request for %s", v65, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v66);
      MEMORY[0x23EF014D0](v66, -1, -1);
      MEMORY[0x23EF014D0](v65, -1, -1);
    }

    if (qword_2812186B8 != -1)
    {
      swift_once();
    }

    v107[0] = sub_23DDE9C30(v62, 0);
    v72 = swift_allocObject();
    swift_weakInit();
    v73 = swift_allocObject();
    *(v73 + 16) = v72;
    *(v73 + 24) = v62;
    v74 = swift_allocObject();
    swift_weakInit();
    v75 = swift_allocObject();
    *(v75 + 16) = v74;
    *(v75 + 24) = v62;
    v76 = swift_allocObject();
    swift_weakInit();
    v77 = swift_allocObject();
    *(v77 + 16) = v76;
    *(v77 + 24) = v62;
    v93 = v62;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326890, &unk_23DE09170);
    v78 = MEMORY[0x277CBCD90];
    sub_23DDC7D28(&qword_281218568, &qword_27E326890, &unk_23DE09170, MEMORY[0x277CBCD90]);
    v79 = v94;
    sub_23DE054B8();

    v107[0] = *(v21[5] + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326088, &unk_23DE091C0);
    sub_23DDC7D28(&qword_27E326090, &qword_27E326088, &unk_23DE091C0, MEMORY[0x277CBCE48]);
    v107[0] = sub_23DE05498();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326098, &qword_23DE080E0);
    sub_23DDC7D28(&qword_27E3260A0, &qword_27E326098, &qword_23DE080E0, v78);
    v80 = v95;
    sub_23DE05588();

    sub_23DDC7D28(&qword_27E3269D8, &qword_27E3269A8, &qword_23DE09180, MEMORY[0x277CBCC18]);
    v81 = v103;
    v82 = v101;
    sub_23DE05528();
    (*(v98 + 8))(v80, v82);
    sub_23DDC7D28(&qword_27E3269E0, &qword_27E3269B8, &qword_23DE09190, MEMORY[0x277CBCB60]);
    sub_23DDC7D28(&qword_27E3269E8, &qword_27E3269B0, &qword_23DE09188, MEMORY[0x277CBCC90]);
    v83 = v96;
    v84 = v100;
    v85 = v90;
    sub_23DE05538();
    (v104[1])(v81, v85);
    (*(v97 + 8))(v79, v84);
    sub_23DDC7D28(&qword_27E3269F0, &qword_27E3269C0, &qword_23DE09198, MEMORY[0x277CBCBF0]);
    v86 = v102;
    v87 = sub_23DE05518();
    (*(v99 + 8))(v83, v86);
    v107[0] = v87;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3269F8, &qword_23DE091D0);
    sub_23DDC7D28(&qword_27E326A00, &qword_27E3269F8, &qword_23DE091D0, MEMORY[0x277CBCC78]);
    v45 = sub_23DE05498();

    v88 = [v93 sectionIdentifier];
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v106 = v21[11];
    v21[11] = 0x8000000000000000;
    sub_23DDF53A4(v45, v88, isUniquelyReferenced_nonNull_native);

    v21[11] = v106;
    swift_endAccess();

    a3 = v105;
  }

LABEL_30:
  *a3 = v45;
}

void sub_23DDF23A8(uint64_t *a1, uint64_t a2, void *a3)
{
  v4 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v6 = Strong;
  if (qword_2812185E8 != -1)
  {
    swift_once();
  }

  v7 = sub_23DE052B8();
  v8 = __swift_project_value_buffer(v7, qword_281218840);
  v9 = a3;

  v10 = sub_23DE05298();
  v11 = sub_23DE05C38();

  if (os_log_type_enabled(v10, v11))
  {
    v72 = v11;
    log = v10;
    v12 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v77 = v70;
    *v12 = 136315394;
    v13 = [v9 sectionIdentifier];
    v14 = sub_23DE05A48();
    v16 = v15;

    v17 = sub_23DDC8940(v14, v16, &v77);

    *(v12 + 4) = v17;
    buf = v12;
    *(v12 + 12) = 2080;
    sub_23DDEC750(v4);
    v19 = sub_23DDEC3BC(v18);

    if (v19 >> 62)
    {
      v20 = sub_23DE06038();
      if (v20)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v20)
      {
LABEL_7:
        v67 = v9;
        v68 = v4;
        v69 = v8;
        v76 = MEMORY[0x277D84F90];
        sub_23DDF3DDC(0, v20 & ~(v20 >> 63), 0);
        if (v20 < 0)
        {
          __break(1u);
          return;
        }

        v21 = 0;
        v22 = v76;
        do
        {
          if ((v19 & 0xC000000000000001) != 0)
          {
            v23 = MEMORY[0x23EF00A60](v21, v19);
          }

          else
          {
            v23 = *(v19 + 8 * v21 + 32);
          }

          v24 = v23;
          v25 = [v23 identifier];
          v26 = sub_23DE05A48();
          v28 = v27;

          v30 = *(v76 + 16);
          v29 = *(v76 + 24);
          if (v30 >= v29 >> 1)
          {
            sub_23DDF3DDC((v29 > 1), v30 + 1, 1);
          }

          ++v21;
          *(v76 + 16) = v30 + 1;
          v31 = v76 + 16 * v30;
          *(v31 + 32) = v26;
          *(v31 + 40) = v28;
        }

        while (v20 != v21);

        v9 = v67;
        v4 = v68;
        goto LABEL_18;
      }
    }

    v22 = MEMORY[0x277D84F90];
LABEL_18:
    v32 = MEMORY[0x23EF00490](v22, MEMORY[0x277D837D0]);
    v34 = v33;

    v35 = sub_23DDC8940(v32, v34, &v77);

    *(buf + 14) = v35;
    v10 = log;
    _os_log_impl(&dword_23DDC5000, log, v72, "Caching sections for %s: %s", buf, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EF014D0](v70, -1, -1);
    MEMORY[0x23EF014D0](buf, -1, -1);
  }

  v36 = *(v6 + 32);
  v37 = *(v36 + 16);
  v38 = v9;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v77 = v37;
  sub_23DDF5228(v4, v38, isUniquelyReferenced_nonNull_native);

  *(v36 + 16) = v77;

  sub_23DE05408();

  v40 = sub_23DDEA1D8();
  if (!v41)
  {
    goto LABEL_25;
  }

  sub_23DDEA378(v40, v41, v4);
  v43 = v42;

  if (!v43)
  {
    goto LABEL_25;
  }

  v44 = [v38 sectionIdentifier];
  sub_23DDF0A14(v44);
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v51 = ~v49;

  if (!v51)
  {

LABEL_25:

    return;
  }

  if (sub_23DE00554(v46, v48, v50))
  {

    sub_23DDF72B8(v46, v48, v50);
  }

  else
  {
    v52 = v38;
    v53 = v43;
    v54 = sub_23DE05298();
    v55 = sub_23DE05C38();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v77 = v73;
      *v56 = 136315394;
      loga = v52;
      v57 = [v52 sectionIdentifier];
      v58 = sub_23DE05A48();
      v60 = v59;

      v61 = sub_23DDC8940(v58, v60, &v77);

      *(v56 + 4) = v61;
      *(v56 + 12) = 2080;
      v62 = [v53 identifier];
      v63 = sub_23DE05A48();
      v65 = v64;

      v66 = sub_23DDC8940(v63, v65, &v77);

      *(v56 + 14) = v66;
      v52 = loga;
      _os_log_impl(&dword_23DDC5000, v54, v55, "Pre-configuring %s with %s", v56, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EF014D0](v73, -1, -1);
      MEMORY[0x23EF014D0](v56, -1, -1);
    }

    sub_23DDEE3EC(v52, v53, 0);

    sub_23DDF72B8(v46, v48, v50);
  }
}

uint64_t sub_23DDF2A1C(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (qword_2812185E8 != -1)
    {
      swift_once();
    }

    v5 = sub_23DE052B8();
    __swift_project_value_buffer(v5, qword_281218840);
    v6 = a3;
    v7 = sub_23DE05298();
    v8 = sub_23DE05C38();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v17[0] = v10;
      *v9 = 136315138;
      v11 = [v6 sectionIdentifier];
      v12 = sub_23DE05A48();
      v14 = v13;

      v15 = sub_23DDC8940(v12, v14, v17);

      *(v9 + 4) = v15;
      _os_log_impl(&dword_23DDC5000, v7, v8, "Completing section request for %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x23EF014D0](v10, -1, -1);
      MEMORY[0x23EF014D0](v9, -1, -1);
    }

    v16 = [v6 sectionIdentifier];
    swift_beginAccess();
    sub_23DDECAC0(0, v16);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_23DDF2C1C(uint64_t a1, void *a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (qword_2812185E8 != -1)
    {
      swift_once();
    }

    v4 = sub_23DE052B8();
    __swift_project_value_buffer(v4, qword_281218840);
    v5 = a2;
    v6 = sub_23DE05298();
    v7 = sub_23DE05C38();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v16[0] = v9;
      *v8 = 136315138;
      v10 = [v5 sectionIdentifier];
      v11 = sub_23DE05A48();
      v13 = v12;

      v14 = sub_23DDC8940(v11, v13, v16);

      *(v8 + 4) = v14;
      _os_log_impl(&dword_23DDC5000, v6, v7, "Cancelling section request for %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x23EF014D0](v9, -1, -1);
      MEMORY[0x23EF014D0](v8, -1, -1);
    }

    v15 = [v5 sectionIdentifier];
    swift_beginAccess();
    sub_23DDECAC0(0, v15);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_23DDF2E1C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326A38, &qword_23DE09210);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v11 - v4;
  v6 = [a1 controlType];
  v7 = [v6 unsignedIntegerValue];

  v8 = sub_23DDD9150();
  v11[1] = sub_23DDD7B90(v8, v7);
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326180, &qword_23DE08258);
  sub_23DDC7D28(&qword_27E326188, &qword_27E326180, &qword_23DE08258, MEMORY[0x277CBCD90]);
  sub_23DE054B8();

  sub_23DDC7D28(&qword_27E326A40, &qword_27E326A38, &qword_23DE09210, MEMORY[0x277CBCB60]);
  v9 = sub_23DE05498();

  (*(v3 + 8))(v5, v2);
  return v9;
}

void sub_23DDF305C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + 24);
    if (*(v5 + 32))
    {
LABEL_3:

      return;
    }

    v6 = *(v5 + 16);
    v7 = *(v5 + 24);
    if (!v6)
    {
      sub_23DDF72A4(0, *(v5 + 24), 0);
      goto LABEL_3;
    }

    sub_23DDF72A4(*(v5 + 16), *(v5 + 24), 0);
    sub_23DDF72A4(v6, v7, 0);
    v8 = sub_23DDD984C(v2, v3);
    sub_23DDEDC44(v8, 0);

    sub_23DDF72B8(v6, v7, 0);
    sub_23DDF72B8(v6, v7, 0);
  }
}

uint64_t sub_23DDF3160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 40) = a7;
  v10 = swift_task_alloc();
  *(v7 + 48) = v10;
  *v10 = v7;
  v10[1] = sub_23DDF3218;

  return sub_23DDEB888(a5, a6);
}

uint64_t sub_23DDF3218()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_23DDF3348, 0, 0);
  }
}

uint64_t sub_23DDF3348()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + 80) = 0;
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23DDF33DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326A48, &qword_23DE09218);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_23DDD2850(a3, v22 - v9, &qword_27E326A48, &qword_23DE09218);
  v11 = sub_23DE05BB8();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_23DDC925C(v10, &qword_27E326A48, &qword_23DE09218);
  }

  else
  {
    sub_23DE05BA8();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_23DE05B58();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_23DE05A78() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_23DDC925C(a3, &qword_27E326A48, &qword_23DE09218);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_23DDC925C(a3, &qword_27E326A48, &qword_23DE09218);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

void sub_23DDF3688(uint64_t a1)
{
  v2 = *(*(v1 + 16) + 16);
  if (v2)
  {
    v19 = *(v2 + 16);
    if (v19)
    {

      v3 = 0;
      v4 = (v2 + 48);
      while (v3 < *(v2 + 16))
      {
        v5 = *(v4 - 2);
        v6 = *(v4 - 1);
        v7 = *v4;
        if (v7 > 1)
        {
          if (v7 == 2)
          {
            v11 = v5;

            v12 = [v11 sectionIdentifier];
          }

          else
          {
            v12 = [v5 sectionIdentifier];
          }

          v10 = v12;
        }

        else
        {
          v8 = *(v4 - 2);
          v9 = *(v4 - 1);
          if (*v4)
          {
            sub_23DDD6F58(v8, v9, 1u);
            v10 = @"Shortcuts";
          }

          else
          {
            sub_23DDD6F58(v8, v9, 0);
            v10 = @"Controls";
          }

          v13 = v10;
        }

        v14 = sub_23DE05A48();
        v16 = v15;
        if (v14 == sub_23DE05A48() && v16 == v17)
        {

          sub_23DDD6FDC(v5, v6, v7);

LABEL_21:

          return;
        }

        v18 = sub_23DE06318();

        sub_23DDD6FDC(v5, v6, v7);

        if ((v18 & 1) == 0)
        {
          ++v3;
          v4 += 24;
          if (v19 != v3)
          {
            continue;
          }
        }

        goto LABEL_21;
      }

      __break(1u);
    }
  }
}

uint64_t sub_23DDF3870()
{

  sub_23DDF72B8(*(v0 + 48), *(v0 + 56), *(v0 + 64));

  return v0;
}

uint64_t sub_23DDF38E4()
{
  sub_23DDF3870();

  return MEMORY[0x2821FE8D8](v0, 121, 7);
}

unint64_t sub_23DDF3950()
{
  result = qword_27E326978;
  if (!qword_27E326978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E326978);
  }

  return result;
}

void *sub_23DDF39A4(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326B98, &unk_23DE09360);
  v10 = *(sub_23DE05D08() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_23DE05D08() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_23DDF3B7C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326A58, &qword_23DE09238);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_23DDF3C98(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326B90, &qword_23DE09358);
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

void *sub_23DDF3D9C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23DDF3E1C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_23DDF3DBC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23DDF3F64(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_23DDF3DDC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23DDF4080(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_23DDF3DFC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23DDF418C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_23DDF3E1C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326A80, &qword_23DE09268);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326A88, &qword_23DE09270);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_23DDF3F64(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326A58, &qword_23DE09238);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_23DDF4080(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326A18, &unk_23DE091E0);
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

char *sub_23DDF418C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326A60, &qword_23DE09240);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_23DDF42AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326A70, &qword_23DE09250);
  v34 = v4;
  result = sub_23DE06248();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      v35 = v25[1];
      v36 = *v25;
      if ((v34 & 1) == 0)
      {
      }

      sub_23DE063A8();
      sub_23DE05A88();
      result = sub_23DE063C8();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = (*(v7 + 56) + 32 * v15);
      *v17 = v36;
      v17[1] = v35;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}